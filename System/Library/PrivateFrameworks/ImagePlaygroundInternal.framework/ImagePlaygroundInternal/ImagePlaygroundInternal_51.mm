uint64_t sub_1D280A33C()
{
  v1 = __swift_project_boxed_opaque_existential_1((v0[28] + 88), *(v0[28] + 112));
  v2 = *v1;
  v3 = *v1 + OBJC_IVAR____TtCV23ImagePlaygroundInternal15ImageGeneration7Manager__selectedGenerator;
  swift_beginAccess();
  if (*(v3 + 24))
  {
    sub_1D22D7044(v3, (v0 + 2));
    v4 = v0[5];
    v5 = v0[6];
    __swift_project_boxed_opaque_existential_1(v0 + 2, v4);
    (*(v5 + 112))(v4, v5);
    __swift_destroy_boxed_opaque_existential_0((v0 + 2));
  }

  v6 = v0[46];
  v7 = v0[39];
  v9 = v0[37];
  v8 = v0[38];
  v10 = swift_task_alloc();
  *(v10 + 16) = v2;
  *(v10 + 24) = v6;
  (*(v8 + 104))(v7, *MEMORY[0x1E69E8790], v9);
  sub_1D2878778();

  sub_1D2878658();
  v0[58] = OBJC_IVAR____TtC23ImagePlaygroundInternal14MagicViewModel___observationRegistrar;
  swift_beginAccess();
  v11 = sub_1D2878558();
  v0[59] = v11;
  v12 = swift_task_alloc();
  v0[60] = v12;
  *v12 = v0;
  v12[1] = sub_1D280A550;
  v13 = v0[33];
  v14 = v0[34];
  v15 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6DB90](v13, v11, v15, v14, v0 + 23);
}

uint64_t sub_1D280A550()
{
  v2 = *v1;
  *(*v1 + 488) = v0;

  v3 = *(v2 + 424);
  v4 = *(v2 + 432);
  if (v0)
  {
    v5 = sub_1D280ADF8;
  }

  else
  {
    v5 = sub_1D280A674;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

uint64_t sub_1D280A674()
{
  v1 = v0[33];
  if ((*(v0[31] + 48))(v1, 1, v0[30]) == 1)
  {
    v3 = v0[41];
    v2 = v0[42];
    v4 = v0[40];
    v6 = v0[35];
    v5 = v0[36];
    v7 = v0[34];

    (*(v6 + 8))(v5, v7);
    (*(v3 + 8))(v2, v4);
    v8 = sub_1D280551C(&OBJC_IVAR____TtC23ImagePlaygroundInternal14MagicViewModel____lazy_storage___animatedEffectsViewModel, sub_1D28083D8);
    v9 = swift_allocObject();
    *(v9 + 16) = 0;
    sub_1D2758420(v8, sub_1D23418C4, v9);

    v10 = sub_1D280551C(&OBJC_IVAR____TtC23ImagePlaygroundInternal14MagicViewModel____lazy_storage___previewsViewModel, sub_1D28078D0);
    if (*(v10 + 20) == 1)
    {
      v11 = v10;
      swift_getKeyPath();
      v12 = swift_task_alloc();
      *(v12 + 16) = v11;
      *(v12 + 24) = 0;
      v0[25] = v11;
      sub_1D28719D8();
    }

    else
    {
      *(v10 + 20) = 0;
    }

    v17 = v0[49];
    v16 = v0[50];
    v18 = v0[48];
    sub_1D2815E30(v0[46], type metadata accessor for ImageGeneration.PreviewImage);
    (*(v17 + 8))(v16, v18);

    v19 = v0[1];

    return v19();
  }

  else
  {
    sub_1D28159F0(v1, v0[32], type metadata accessor for ImageGeneration.FinalImageStatus);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v14 = v0[32];
    if (EnumCaseMultiPayload == 1)
    {
      v15 = type metadata accessor for ImageGeneration.FinalImageStatus;
    }

    else
    {
      sub_1D28159F0(v14, v0[29], type metadata accessor for PlaygroundImage);
      v21 = sub_1D23C7CA8();
      v22 = sub_1D2878068();
      v23 = sub_1D2878068();
      v24 = sub_1D25D7060(MEMORY[0x1E69E7CC0]);
      if (*(v21 + 48))
      {
        sub_1D2870F68();
        v25 = sub_1D2878068();

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        sub_1D24E8054(v25, 0x444974706D6F7250, 0xE800000000000000, isUniquelyReferenced_nonNull_native);
      }

      v27 = sub_1D2878068();
      v28 = sub_1D2418030(v24);

      if (v28)
      {
        type metadata accessor for IAPayloadKey(0);
        sub_1D22BCFD0(0, &qword_1ED89CC48);
        sub_1D2816278(&qword_1ED89CDD0, type metadata accessor for IAPayloadKey);
        v29 = sub_1D2877E78();
      }

      else
      {
        v29 = 0;
      }

      v30 = v0[28];
      [objc_opt_self() asyncSendSignal:v23 toChannel:v22 withNullableUniqueStringID:v27 withPayload:v29];

      if (*(v30 + 152))
      {
        v31 = v0[28];
        swift_getKeyPath();
        v32 = swift_task_alloc();
        *(v32 + 16) = v31;
        *(v32 + 24) = 0;
        v0[27] = v31;
        sub_1D2816278(&qword_1EC6DCC48, type metadata accessor for MagicViewModel);
        sub_1D28719D8();
      }

      else
      {
        *(v0[28] + 152) = 0;
      }

      v33 = v0[28];
      if (*(v33 + 153))
      {
        swift_getKeyPath();
        v34 = swift_task_alloc();
        *(v34 + 16) = v33;
        *(v34 + 24) = 0;
        v0[26] = v33;
        sub_1D2816278(&qword_1EC6DCC48, type metadata accessor for MagicViewModel);
        sub_1D28719D8();
      }

      else
      {
        *(v33 + 153) = 0;
      }

      if (swift_unknownObjectWeakLoadStrong())
      {
        v36 = v0[28];
        v35 = v0[29];
        v37 = *(v36 + 64);
        ObjectType = swift_getObjectType();
        (*(v37 + 32))(v36, v35, 0, ObjectType, v37);
        swift_unknownObjectRelease();
      }

      v14 = v0[29];
      v15 = type metadata accessor for PlaygroundImage;
    }

    sub_1D2815E30(v14, v15);
    v39 = sub_1D2878558();
    v0[59] = v39;
    v40 = swift_task_alloc();
    v0[60] = v40;
    *v40 = v0;
    v40[1] = sub_1D280A550;
    v41 = v0[33];
    v42 = v0[34];
    v43 = MEMORY[0x1E69E85E0];

    return MEMORY[0x1EEE6DB90](v41, v39, v43, v42, v0 + 23);
  }
}

uint64_t sub_1D280ADF8()
{
  v2 = v0[41];
  v1 = v0[42];
  v3 = v0[40];
  v5 = v0[35];
  v4 = v0[36];
  v6 = v0[34];

  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v1, v3);
  v7 = sub_1D280551C(&OBJC_IVAR____TtC23ImagePlaygroundInternal14MagicViewModel____lazy_storage___animatedEffectsViewModel, sub_1D28083D8);
  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  sub_1D2758420(v7, sub_1D23418C4, v8);

  v9 = sub_1D280551C(&OBJC_IVAR____TtC23ImagePlaygroundInternal14MagicViewModel____lazy_storage___previewsViewModel, sub_1D28078D0);
  if (*(v9 + 20) == 1)
  {
    v10 = v9;
    swift_getKeyPath();
    v11 = swift_task_alloc();
    *(v11 + 16) = v10;
    *(v11 + 24) = 0;
    v0[24] = v10;
    sub_1D28719D8();
  }

  else
  {
    *(v9 + 20) = 0;
  }

  v12 = v0[49];
  v13 = v0[50];
  v14 = v0[48];
  sub_1D2815E30(v0[46], type metadata accessor for ImageGeneration.PreviewImage);
  (*(v12 + 8))(v13, v14);

  v15 = v0[1];

  return v15();
}

uint64_t sub_1D280B0A4()
{
  swift_getKeyPath();
  sub_1D2816278(&qword_1EC6DCC48, type metadata accessor for MagicViewModel);
  sub_1D28719E8();

  return sub_1D2870F78();
}

uint64_t sub_1D280B150@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D2816278(&qword_1EC6DCC48, type metadata accessor for MagicViewModel);
  sub_1D28719E8();

  *a2 = *(v3 + OBJC_IVAR____TtC23ImagePlaygroundInternal14MagicViewModel__loadRecipeTask);
  return sub_1D2870F78();
}

uint64_t type metadata accessor for MagicViewModel()
{
  result = qword_1EC6E2A90;
  if (!qword_1EC6E2A90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D280B250(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC23ImagePlaygroundInternal14MagicViewModel__loadRecipeTask;
  if (!*(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal14MagicViewModel__loadRecipeTask))
  {
    if (!a1)
    {
      goto LABEL_7;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D2816278(&qword_1EC6DCC48, type metadata accessor for MagicViewModel);
    sub_1D28719D8();
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_1D2870F78();
  v4 = sub_1D2878698();

  if ((v4 & 1) == 0)
  {
    goto LABEL_6;
  }

LABEL_7:
  *(v1 + v3) = a1;
}

uint64_t sub_1D280B3E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[17] = a4;
  v5[18] = a5;
  v6 = sub_1D2873CB8();
  v5[19] = v6;
  v5[20] = *(v6 - 8);
  v5[21] = swift_task_alloc();
  sub_1D2878568();
  v5[22] = sub_1D2878558();
  v8 = sub_1D28784F8();
  v5[23] = v8;
  v5[24] = v7;

  return MEMORY[0x1EEE6DFA0](sub_1D280B4D4, v8, v7);
}

uint64_t sub_1D280B4D4()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[25] = Strong;
  if (!Strong)
  {
LABEL_6:

    v5 = v0[1];

    return v5();
  }

  v2 = Strong;
  v3 = OBJC_IVAR____TtC23ImagePlaygroundInternal14MagicViewModel__isLoadingRecipe;
  v0[26] = OBJC_IVAR____TtC23ImagePlaygroundInternal14MagicViewModel___observationRegistrar;
  v0[27] = v3;
  swift_getKeyPath();
  v0[11] = v2;
  v4 = sub_1D2816278(&qword_1EC6DCC48, type metadata accessor for MagicViewModel);
  sub_1D28719E8();

  if ((*(v2 + v3) & 1) != 0 && (sub_1D28786D8() & 1) == 0)
  {
    v16 = swift_task_alloc();
    v0[28] = v16;
    *v16 = v0;
    v16[1] = sub_1D280B85C;

    return MEMORY[0x1EEE6DA78]();
  }

  else
  {
    v0[29] = v4;
    if (sub_1D28786D8())
    {

      goto LABEL_6;
    }

    v7 = v0[25];
    v8 = v0[18];
    sub_1D28033F4(1);
    sub_1D2870F78();
    sub_1D26742D0();

    swift_getKeyPath();
    v0[12] = v7;
    sub_1D28719E8();

    v9 = *(v7 + OBJC_IVAR____TtC23ImagePlaygroundInternal14MagicViewModel__creationViewStyle);
    v10 = swift_allocObject();
    swift_weakInit();
    v11 = sub_1D2803FA4();
    v12 = sub_1D2804320();
    type metadata accessor for LoadGPRecipeInContextOperation();
    v13 = swift_allocObject();
    v0[30] = v13;
    *(v13 + 72) = 0u;
    *(v13 + 88) = 0u;
    *(v13 + 104) = 0u;
    *(v13 + 120) = 0;
    *(v13 + 128) = 1;
    *(v13 + 16) = v8;
    *(v13 + 24) = v9;
    *(v13 + 32) = sub_1D2816088;
    *(v13 + 40) = v10;
    *(v13 + 48) = 0;
    *(v13 + 56) = v11;
    *(v13 + 64) = v12;
    v14 = v8;
    sub_1D2340EEC(0);
    v0[31] = *(v7 + 128);
    sub_1D2870F78();
    sub_1D2870F78();
    v15 = swift_task_alloc();
    v0[32] = v15;
    *v15 = v0;
    v15[1] = sub_1D280BCC8;

    return sub_1D27F9C50(v13, &off_1EEC2DB40);
  }
}

uint64_t sub_1D280B85C()
{
  v1 = *v0;

  v2 = *(v1 + 192);
  v3 = *(v1 + 184);

  return MEMORY[0x1EEE6DFA0](sub_1D280B97C, v3, v2);
}

uint64_t sub_1D280B97C()
{
  v1 = v0[27];
  v2 = v0[25];
  swift_getKeyPath();
  v0[11] = v2;
  v3 = sub_1D2816278(&qword_1EC6DCC48, type metadata accessor for MagicViewModel);
  sub_1D28719E8();

  if (*(v2 + v1) == 1 && (sub_1D28786D8() & 1) == 0)
  {
    v15 = swift_task_alloc();
    v0[28] = v15;
    *v15 = v0;
    v15[1] = sub_1D280B85C;

    return MEMORY[0x1EEE6DA78]();
  }

  else
  {
    v0[29] = v3;
    if (sub_1D28786D8())
    {

      v4 = v0[1];

      return v4();
    }

    else
    {
      v6 = v0[25];
      v7 = v0[18];
      sub_1D28033F4(1);
      sub_1D2870F78();
      sub_1D26742D0();

      swift_getKeyPath();
      v0[12] = v6;
      sub_1D28719E8();

      v8 = *(v6 + OBJC_IVAR____TtC23ImagePlaygroundInternal14MagicViewModel__creationViewStyle);
      v9 = swift_allocObject();
      swift_weakInit();
      v10 = sub_1D2803FA4();
      v11 = sub_1D2804320();
      type metadata accessor for LoadGPRecipeInContextOperation();
      v12 = swift_allocObject();
      v0[30] = v12;
      *(v12 + 72) = 0u;
      *(v12 + 88) = 0u;
      *(v12 + 104) = 0u;
      *(v12 + 120) = 0;
      *(v12 + 128) = 1;
      *(v12 + 16) = v7;
      *(v12 + 24) = v8;
      *(v12 + 32) = sub_1D2816088;
      *(v12 + 40) = v9;
      *(v12 + 48) = 0;
      *(v12 + 56) = v10;
      *(v12 + 64) = v11;
      v13 = v7;
      sub_1D2340EEC(0);
      v0[31] = *(v6 + 128);
      sub_1D2870F78();
      sub_1D2870F78();
      v14 = swift_task_alloc();
      v0[32] = v14;
      *v14 = v0;
      v14[1] = sub_1D280BCC8;

      return sub_1D27F9C50(v12, &off_1EEC2DB40);
    }
  }
}

uint64_t sub_1D280BCC8()
{
  v2 = *v1;
  *(*v1 + 264) = v0;

  if (v0)
  {
    v3 = *(v2 + 184);
    v4 = *(v2 + 192);
    v5 = sub_1D280C0E0;
  }

  else
  {

    v3 = *(v2 + 184);
    v4 = *(v2 + 192);
    v5 = sub_1D280BDEC;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

uint64_t sub_1D280BDEC()
{

  sub_1D28033F4(0);
  if (sub_1D28786D8())
  {

LABEL_12:

    goto LABEL_14;
  }

  v1 = *(v0[25] + 72);
  v2 = OBJC_IVAR____TtC23ImagePlaygroundInternal15CreationContext_prompts;
  swift_beginAccess();
  v3 = *(*(v1 + v2) + 16);
  v4 = v0[25];
  if (!v3 && *(*(v4 + OBJC_IVAR____TtC23ImagePlaygroundInternal14MagicViewModel____lazy_storage___creationContextFactory) + 16) == 1)
  {
    swift_getKeyPath();
    v0[14] = v4;
    sub_1D28719E8();

    v0[15] = v4;
    swift_getKeyPath();
    sub_1D2871A08();

    v5 = OBJC_IVAR____TtC23ImagePlaygroundInternal14MagicViewModel__pendingDisclosures;
    swift_beginAccess();
    v6 = *(v4 + v5);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v4 + v5) = v6;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v6 = sub_1D27CE5D0(0, *(v6 + 2) + 1, 1, v6);
      *(v4 + v5) = v6;
    }

    v9 = *(v6 + 2);
    v8 = *(v6 + 3);
    v10 = v9 + 1;
    if (v9 >= v8 >> 1)
    {
      v6 = sub_1D27CE5D0((v8 > 1), v9 + 1, 1, v6);
    }

    v11 = v0[25];
    *(v6 + 2) = v10;
    *(v4 + v5) = v6;
    swift_endAccess();
    v0[16] = v11;
    swift_getKeyPath();
    sub_1D28719F8();

    v4 = v0[25];
  }

  if (*(v4 + 154) == 1)
  {

    *(v4 + 154) = 1;
    goto LABEL_12;
  }

  swift_getKeyPath();
  v12 = swift_task_alloc();
  *(v12 + 16) = v4;
  *(v12 + 24) = 1;
  v0[13] = v4;
  sub_1D28719D8();

LABEL_14:

  v13 = v0[1];

  return v13();
}

uint64_t sub_1D280C0E0()
{
  v1 = v0[33];

  sub_1D28724E8();
  v2 = v1;
  v3 = sub_1D2873CA8();
  v4 = sub_1D2878A18();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[33];
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_1D226E000, v3, v4, "Could not load GP recipe with error: %@", v7, 0xCu);
    sub_1D22BD238(v8, qword_1EC6DA930);
    MEMORY[0x1D38A3520](v8, -1, -1);
    MEMORY[0x1D38A3520](v7, -1, -1);
  }

  else
  {
  }

  (*(v0[20] + 8))(v0[21], v0[19]);
  sub_1D28033F4(0);
  if (sub_1D28786D8())
  {

LABEL_15:

    goto LABEL_17;
  }

  v11 = *(v0[25] + 72);
  v12 = OBJC_IVAR____TtC23ImagePlaygroundInternal15CreationContext_prompts;
  swift_beginAccess();
  v13 = *(*(v11 + v12) + 16);
  v14 = v0[25];
  if (!v13 && *(*(v14 + OBJC_IVAR____TtC23ImagePlaygroundInternal14MagicViewModel____lazy_storage___creationContextFactory) + 16) == 1)
  {
    swift_getKeyPath();
    v0[14] = v14;
    sub_1D28719E8();

    v0[15] = v14;
    swift_getKeyPath();
    sub_1D2871A08();

    v15 = OBJC_IVAR____TtC23ImagePlaygroundInternal14MagicViewModel__pendingDisclosures;
    swift_beginAccess();
    v16 = *(v14 + v15);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v14 + v15) = v16;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v16 = sub_1D27CE5D0(0, *(v16 + 2) + 1, 1, v16);
      *(v14 + v15) = v16;
    }

    v19 = *(v16 + 2);
    v18 = *(v16 + 3);
    v20 = v19 + 1;
    if (v19 >= v18 >> 1)
    {
      v16 = sub_1D27CE5D0((v18 > 1), v19 + 1, 1, v16);
    }

    v21 = v0[25];
    *(v16 + 2) = v20;
    *(v14 + v15) = v16;
    swift_endAccess();
    v0[16] = v21;
    swift_getKeyPath();
    sub_1D28719F8();

    v14 = v0[25];
  }

  if (*(v14 + 154) == 1)
  {

    *(v14 + 154) = 1;
    goto LABEL_15;
  }

  swift_getKeyPath();
  v22 = swift_task_alloc();
  *(v22 + 16) = v14;
  *(v22 + 24) = 1;
  v0[13] = v14;
  sub_1D28719D8();

LABEL_17:

  v23 = v0[1];

  return v23();
}

uint64_t sub_1D280C4F8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1D22BDFF8;

  return sub_1D280B3E0(a1, v4, v5, v7, v6);
}

uint64_t sub_1D280C5B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  v4[6] = sub_1D2878568();
  v4[7] = sub_1D2878558();
  v5 = swift_task_alloc();
  v4[8] = v5;
  *v5 = v4;
  v5[1] = sub_1D280C668;

  return sub_1D2809854();
}

uint64_t sub_1D280C668()
{
  *(*v1 + 72) = v0;

  v3 = sub_1D28784F8();
  if (v0)
  {
    v4 = sub_1D280C7C4;
  }

  else
  {
    v4 = sub_1D2562CC4;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, v2);
}

uint64_t sub_1D280C7C4()
{

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v2 = v0[9];
  if (Strong)
  {
    v3 = v0[5];
    v4 = *(v3 + 64);
    ObjectType = swift_getObjectType();
    (*(v4 + 24))(v3, ObjectType, v4);
    swift_unknownObjectRelease();
  }

  v6 = v0[1];

  return v6();
}

uint64_t sub_1D280C894()
{
  v1 = v0;
  v2 = sub_1D23C7CA8();
  v3 = sub_1D2878068();
  v4 = sub_1D2878068();
  v5 = sub_1D25D7060(MEMORY[0x1E69E7CC0]);
  if (*(v2 + 48))
  {
    sub_1D2870F68();
    v6 = sub_1D2878068();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1D24E8054(v6, 0x444974706D6F7250, 0xE800000000000000, isUniquelyReferenced_nonNull_native);
  }

  v8 = sub_1D2878068();
  v9 = sub_1D2418030(v5);

  if (v9)
  {
    type metadata accessor for IAPayloadKey(0);
    sub_1D22BCFD0(0, &qword_1ED89CC48);
    sub_1D2816278(&qword_1ED89CDD0, type metadata accessor for IAPayloadKey);
    v10 = sub_1D2877E78();
  }

  else
  {
    v10 = 0;
  }

  [objc_opt_self() asyncSendSignal:v4 toChannel:v3 withNullableUniqueStringID:v8 withPayload:v10];

  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v12 = *(v1 + 64);
    ObjectType = swift_getObjectType();
    (*(v12 + 24))(v1, ObjectType, v12);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1D280CAD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[7] = a4;
  v5 = sub_1D2873CB8();
  v4[8] = v5;
  v4[9] = *(v5 - 8);
  v4[10] = swift_task_alloc();
  sub_1D2878568();
  v4[11] = sub_1D2878558();
  v7 = sub_1D28784F8();
  v4[12] = v7;
  v4[13] = v6;

  return MEMORY[0x1EEE6DFA0](sub_1D280CBC8, v7, v6);
}

uint64_t sub_1D280CBC8()
{
  v1 = sub_1D23C7CA8();
  v2 = sub_1D2878068();
  v3 = sub_1D2878068();
  v4 = sub_1D25D7060(MEMORY[0x1E69E7CC0]);
  if (*(v1 + 48))
  {
    sub_1D2870F68();
    v5 = sub_1D2878068();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1D24E8054(v5, 0x444974706D6F7250, 0xE800000000000000, isUniquelyReferenced_nonNull_native);
  }

  v7 = sub_1D2878068();
  v8 = sub_1D2418030(v4);

  if (v8)
  {
    type metadata accessor for IAPayloadKey(0);
    sub_1D22BCFD0(0, &qword_1ED89CC48);
    sub_1D2816278(&qword_1ED89CDD0, type metadata accessor for IAPayloadKey);
    v9 = sub_1D2877E78();
  }

  else
  {
    v9 = 0;
  }

  [objc_opt_self() asyncSendSignal:v3 toChannel:v2 withNullableUniqueStringID:v7 withPayload:v9];

  v10 = swift_task_alloc();
  *(v0 + 112) = v10;
  *v10 = v0;
  v10[1] = sub_1D280CE28;

  return sub_1D2809854();
}

uint64_t sub_1D280CE28()
{
  v2 = *v1;
  *(*v1 + 120) = v0;

  v3 = *(v2 + 104);
  v4 = *(v2 + 96);
  if (v0)
  {
    v5 = sub_1D280CFCC;
  }

  else
  {
    v5 = sub_1D280CF64;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1D280CF64()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D280CFCC()
{
  v1 = *(v0 + 120);

  sub_1D2872658();
  v2 = v1;
  v3 = sub_1D2873CA8();
  v4 = sub_1D2878A18();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 120);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v5;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_1D226E000, v3, v4, "Upscaling failed with error: %@", v6, 0xCu);
    sub_1D22BD238(v7, qword_1EC6DA930);
    MEMORY[0x1D38A3520](v7, -1, -1);
    MEMORY[0x1D38A3520](v6, -1, -1);
  }

  v10 = *(v0 + 120);
  v12 = *(v0 + 72);
  v11 = *(v0 + 80);
  v14 = *(v0 + 56);
  v13 = *(v0 + 64);

  (*(v12 + 8))(v11, v13);
  *(v0 + 40) = v10;
  v15 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D94B0);
  v16 = swift_dynamicCast();
  if (v16)
  {
    v17 = *(v0 + 16);
  }

  else
  {
    v17 = 0;
  }

  if (v16)
  {
    v18 = *(v0 + 24);
  }

  else
  {
    v18 = 0;
  }

  if (v16)
  {
    v19 = *(v0 + 32);
  }

  else
  {
    v19 = -4;
  }

  swift_getKeyPath();
  v20 = swift_task_alloc();
  *(v20 + 16) = v14;
  *(v20 + 24) = v17;
  *(v20 + 32) = v18;
  *(v20 + 40) = v19;
  *(v0 + 48) = v14;
  sub_1D2816278(&qword_1EC6DCC48, type metadata accessor for MagicViewModel);
  sub_1D28719D8();

  sub_1D2415B64(v17, v18, v19);

  v21 = *(v0 + 8);

  return v21();
}

uint64_t sub_1D280D288()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6E1D40);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v11 - v2;
  v4 = sub_1D2805AB0();
  if (v6 == 0xFF)
  {
    swift_getKeyPath();
    v12 = v0;
    sub_1D2816278(&qword_1EC6DCC48, type metadata accessor for MagicViewModel);
    sub_1D28719E8();

    if (*(v0 + 154) == 1)
    {
      swift_getKeyPath();
      v12 = v0;
      sub_1D28719E8();

      v8 = OBJC_IVAR____TtC23ImagePlaygroundInternal14MagicViewModel__onBoardingDescription;
      swift_beginAccess();
      sub_1D22BD1D0(v0 + v8, v3, &unk_1EC6E1D40);
      v9 = sub_1D2871318();
      v10 = (*(*(v9 - 8) + 48))(v3, 1, v9) != 1;
      sub_1D22BD238(v3, &unk_1EC6E1D40);
      return v10;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_1D22FD918(v4, v5, v6);
    return 1;
  }
}

uint64_t sub_1D280D474@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D2816278(&qword_1EC6DCC48, type metadata accessor for MagicViewModel);
  sub_1D28719E8();

  *a2 = *(v3 + OBJC_IVAR____TtC23ImagePlaygroundInternal14MagicViewModel__creationViewStyle);
  return result;
}

__n128 sub_1D280D524@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D2816278(&qword_1EC6DCC48, type metadata accessor for MagicViewModel);
  sub_1D28719E8();

  v4 = *(v3 + OBJC_IVAR____TtC23ImagePlaygroundInternal14MagicViewModel__state + 32);
  result = *(v3 + OBJC_IVAR____TtC23ImagePlaygroundInternal14MagicViewModel__state);
  v6 = *(v3 + OBJC_IVAR____TtC23ImagePlaygroundInternal14MagicViewModel__state + 16);
  *a2 = result;
  *(a2 + 16) = v6;
  *(a2 + 32) = v4;
  return result;
}

uint64_t sub_1D280D5E0(uint64_t a1, __int128 *a2)
{
  v3 = (a1 + OBJC_IVAR____TtC23ImagePlaygroundInternal14MagicViewModel__state);
  v4 = a2[1];
  *v3 = *a2;
  v3[1] = v4;
  *(v3 + 32) = *(a2 + 32);
  swift_getKeyPath();
  *&v12 = a1;
  sub_1D2816278(&qword_1EC6DCC48, type metadata accessor for MagicViewModel);
  sub_1D28719E8();

  v5 = *(v3 + 32);
  v6 = v3[1];
  v12 = *v3;
  v13 = v6;
  v14 = v5;
  sub_1D24F62E8(v10);
  v8[0] = v10[0];
  v8[1] = v10[1];
  v9 = v11;
  return sub_1D28027A0(v8);
}

uint64_t sub_1D280D6E0()
{
  swift_getKeyPath();
  sub_1D2816278(&qword_1EC6DCC48, type metadata accessor for MagicViewModel);
  sub_1D28719E8();

  return *(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal14MagicViewModel__latestEffectViewSize);
}

__n128 sub_1D280D790@<Q0>(uint64_t *a1@<X0>, __n128 *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D2816278(&qword_1EC6DCC48, type metadata accessor for MagicViewModel);
  sub_1D28719E8();

  v4 = *(v3 + OBJC_IVAR____TtC23ImagePlaygroundInternal14MagicViewModel__latestEffectViewSize + 16);
  result = *(v3 + OBJC_IVAR____TtC23ImagePlaygroundInternal14MagicViewModel__latestEffectViewSize);
  *a2 = result;
  a2[1].n128_u8[0] = v4;
  return result;
}

double sub_1D280D84C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1D2872278();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    (*(v5 + 16))(v7, a1, v4);
    if ((*(v5 + 88))(v7, v4) == *MEMORY[0x1E696E460])
    {
      sub_1D2801344(1);
    }

    (*(v5 + 8))(v7, v4);
  }

  *(a2 + 32) = 0;
  result = 0.0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  return result;
}

id sub_1D280D9B0()
{
  v0 = sub_1D23C7998()[4];

  return v0;
}

uint64_t sub_1D280DA04@<X0>(uint64_t *a1@<X0>, void *a2@<X4>, _BYTE *a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  sub_1D2816278(&qword_1EC6DCC48, type metadata accessor for MagicViewModel);
  sub_1D28719E8();

  *a3 = *(v5 + *a2);
  return result;
}

uint64_t sub_1D280DAE0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v17[0] = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8F70);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v17 - v4;
  v6 = sub_1D2871818();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1D280551C(&OBJC_IVAR____TtC23ImagePlaygroundInternal14MagicViewModel____lazy_storage___previewsViewModel, sub_1D28078D0);
  swift_getKeyPath();
  v17[5] = v10;
  sub_1D2816278(&qword_1ED8A2D20, type metadata accessor for PreviewsViewModel);
  sub_1D28719E8();

  v11 = OBJC_IVAR____TtC23ImagePlaygroundInternal17PreviewsViewModel__visiblePreviewID;
  swift_beginAccess();
  sub_1D22BD1D0(v10 + v11, v5, &qword_1EC6D8F70);

  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_1D22BD238(v5, &qword_1EC6D8F70);
    v12 = type metadata accessor for ImageGeneration.PreviewImage(0);
    return (*(*(v12 - 8) + 56))(v17[0], 1, 1, v12);
  }

  else
  {
    (*(v7 + 32))(v9, v5, v6);
    v14 = *(v2 + OBJC_IVAR____TtC23ImagePlaygroundInternal14MagicViewModel_previewsStore);
    swift_getKeyPath();
    v17[2] = v14;
    sub_1D2816278(&qword_1ED8A0FD0, type metadata accessor for GeneratedPreviewsStore);
    sub_1D28719E8();

    v15 = swift_beginAccess();
    v16 = *(v14 + 16);
    MEMORY[0x1EEE9AC00](v15);
    v17[-2] = v9;
    sub_1D2870F68();
    sub_1D274B9EC(sub_1D25BA3EC, v16, v17[0]);

    return (*(v7 + 8))(v9, v6);
  }
}

uint64_t sub_1D280DE70(uint64_t a1)
{
  v1[2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE5A0);
  v2 = swift_task_alloc();
  v1[3] = v2;
  v1[4] = sub_1D2878568();
  v1[5] = sub_1D2878558();
  v3 = swift_task_alloc();
  v1[6] = v3;
  *v3 = v1;
  v3[1] = sub_1D280DF6C;

  return sub_1D280E1E4(v2);
}

uint64_t sub_1D280DF6C()
{

  v1 = sub_1D28784F8();

  return MEMORY[0x1EEE6DFA0](sub_1D280E0A8, v1, v0);
}

uint64_t sub_1D280E0A8()
{
  v1 = v0[3];

  v2 = type metadata accessor for PlaygroundImage();
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    sub_1D22BD238(v0[3], &unk_1EC6DE5A0);
    sub_1D233E200();
    swift_allocError();
    *v3 = 0;
    swift_willThrow();
  }

  else
  {
    sub_1D28159F0(v0[3], v0[2], type metadata accessor for PlaygroundImage);
  }

  v4 = v0[1];

  return v4();
}

uint64_t sub_1D280E1E4(uint64_t a1)
{
  v2[9] = a1;
  v2[10] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9490);
  v2[11] = swift_task_alloc();
  v3 = type metadata accessor for ImageGeneration.PreviewImage(0);
  v2[12] = v3;
  v2[13] = *(v3 - 8);
  v2[14] = swift_task_alloc();
  sub_1D2878568();
  v2[15] = sub_1D2878558();
  v5 = sub_1D28784F8();
  v2[16] = v5;
  v2[17] = v4;

  return MEMORY[0x1EEE6DFA0](sub_1D280E310, v5, v4);
}

uint64_t sub_1D280E310()
{
  v1 = *(v0[10] + OBJC_IVAR____TtC23ImagePlaygroundInternal14MagicViewModel_previewsStore);
  swift_getKeyPath();
  v0[5] = v1;
  sub_1D2816278(&qword_1ED8A0FD0, type metadata accessor for GeneratedPreviewsStore);
  sub_1D28719E8();

  swift_beginAccess();
  if (!*(*(v1 + 16) + 16))
  {

    goto LABEL_5;
  }

  v2 = v0[12];
  v3 = v0[13];
  v4 = v0[11];
  sub_1D280DAE0(v4);
  v5 = (*(v3 + 48))(v4, 1, v2);
  v6 = v0[11];
  if (v5 == 1)
  {

    sub_1D22BD238(v6, &qword_1EC6D9490);
LABEL_5:
    if (qword_1EC6D8968 != -1)
    {
      swift_once();
    }

    v7 = v0[9];
    sub_1D233E200();
    v8 = swift_allocError();
    *v9 = 0;
    sub_1D25428EC(v8);

    v10 = type metadata accessor for PlaygroundImage();
    (*(*(v10 - 8) + 56))(v7, 1, 1, v10);

    v11 = v0[1];

    return v11();
  }

  v13 = v0[10];
  sub_1D28159F0(v0[11], v0[14], type metadata accessor for ImageGeneration.PreviewImage);
  v14 = OBJC_IVAR____TtC23ImagePlaygroundInternal14MagicViewModel__currentlyUpscalingInBackground;
  v0[18] = OBJC_IVAR____TtC23ImagePlaygroundInternal14MagicViewModel__currentlyUpscalingInBackground;
  if (*(v13 + v14) == 1)
  {
    *(v13 + v14) = 1;
  }

  else
  {
    v15 = v0[10];
    swift_getKeyPath();
    v16 = swift_task_alloc();
    *(v16 + 16) = v15;
    *(v16 + 24) = 1;
    v0[6] = v15;
    sub_1D2816278(&qword_1EC6DCC48, type metadata accessor for MagicViewModel);
    sub_1D28719D8();
  }

  v17 = swift_task_alloc();
  v0[19] = v17;
  *v17 = v0;
  v17[1] = sub_1D280E6B4;
  v18 = v0[14];
  v19 = v0[9];

  return sub_1D280FA44(v19, v18);
}

uint64_t sub_1D280E6B4()
{
  v2 = *v1;
  *(*v1 + 160) = v0;

  v3 = *(v2 + 136);
  v4 = *(v2 + 128);
  if (v0)
  {
    v5 = sub_1D280E9D4;
  }

  else
  {
    v5 = sub_1D280E7F0;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1D280E7F0()
{
  v1 = v0[18];
  v2 = v0[9];
  v3 = v0[10];

  v4 = type metadata accessor for PlaygroundImage();
  (*(*(v4 - 8) + 56))(v2, 0, 1, v4);
  if (*(v3 + v1) == 1)
  {
    v5 = v0[14];
    v6 = v0[10];
    swift_getKeyPath();
    v7 = swift_task_alloc();
    *(v7 + 16) = v6;
    *(v7 + 24) = 0;
    v0[8] = v6;
    sub_1D2816278(&qword_1EC6DCC48, type metadata accessor for MagicViewModel);
    sub_1D28719D8();

    sub_1D2815E30(v5, type metadata accessor for ImageGeneration.PreviewImage);
  }

  else
  {
    v8 = v0[18];
    v9 = v0[10];
    sub_1D2815E30(v0[14], type metadata accessor for ImageGeneration.PreviewImage);
    *(v9 + v8) = 0;
  }

  v10 = v0[1];

  return v10();
}

uint64_t sub_1D280E9D4()
{

  if (qword_1EC6D8968 != -1)
  {
    swift_once();
  }

  v1 = v0[20];
  v2 = v0[18];
  v3 = v0[9];
  v4 = v0[10];
  sub_1D25428EC(v1);

  v5 = type metadata accessor for PlaygroundImage();
  (*(*(v5 - 8) + 56))(v3, 1, 1, v5);
  if (*(v4 + v2) == 1)
  {
    v6 = v0[14];
    v7 = v0[10];
    swift_getKeyPath();
    v8 = swift_task_alloc();
    *(v8 + 16) = v7;
    *(v8 + 24) = 0;
    v0[7] = v7;
    sub_1D2816278(&qword_1EC6DCC48, type metadata accessor for MagicViewModel);
    sub_1D28719D8();

    sub_1D2815E30(v6, type metadata accessor for ImageGeneration.PreviewImage);
  }

  else
  {
    v9 = v0[18];
    v10 = v0[10];
    sub_1D2815E30(v0[14], type metadata accessor for ImageGeneration.PreviewImage);
    *(v10 + v9) = 0;
  }

  v11 = v0[1];

  return v11();
}

uint64_t sub_1D280EBF8(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE5A0);
  v2[4] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9490);
  v2[5] = swift_task_alloc();
  v3 = type metadata accessor for ImageGeneration.PreviewImage(0);
  v2[6] = v3;
  v2[7] = *(v3 - 8);
  v2[8] = swift_task_alloc();
  sub_1D2878568();
  v2[9] = sub_1D2878558();
  v5 = sub_1D28784F8();

  return MEMORY[0x1EEE6DFA0](sub_1D280ED5C, v5, v4);
}

uint64_t sub_1D280ED5C()
{
  v1 = v0[6];
  v2 = v0[7];
  v3 = v0[5];

  sub_1D280DAE0(v3);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v4 = v0[5];
    v5 = &qword_1EC6D9490;
LABEL_8:
    sub_1D22BD238(v4, v5);
    sub_1D233E200();
    swift_allocError();
    *v15 = 0;
    swift_willThrow();

    v16 = v0[1];
    goto LABEL_10;
  }

  v6 = v0[8];
  v7 = v0[6];
  sub_1D28159F0(v0[5], v6, type metadata accessor for ImageGeneration.PreviewImage);
  v8 = *(v6 + *(v7 + 28));
  v9 = *(v8 + 16);
  v10 = type metadata accessor for PlaygroundImage();
  v11 = *(v10 - 8);
  if (v9)
  {
    sub_1D2815DC8(v8 + ((*(*(v10 - 8) + 80) + 32) & ~*(*(v10 - 8) + 80)), v0[4], type metadata accessor for PlaygroundImage);
    v12 = 0;
  }

  else
  {
    v12 = 1;
  }

  v13 = v0[8];
  v14 = v0[4];
  (*(v11 + 56))(v14, v12, 1, v10);
  sub_1D2815E30(v13, type metadata accessor for ImageGeneration.PreviewImage);
  if ((*(v11 + 48))(v14, 1, v10) == 1)
  {
    v4 = v0[4];
    v5 = &unk_1EC6DE5A0;
    goto LABEL_8;
  }

  sub_1D28159F0(v0[4], v0[2], type metadata accessor for PlaygroundImage);

  v16 = v0[1];
LABEL_10:

  return v16();
}

uint64_t sub_1D280EFDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[9] = a4;
  v5[10] = a5;
  v7 = sub_1D2871818();
  v5[11] = v7;
  v5[12] = *(v7 - 8);
  v5[13] = swift_task_alloc();
  type metadata accessor for PlaygroundImage();
  v8 = swift_task_alloc();
  v5[14] = v8;
  v5[15] = sub_1D2878568();
  v5[16] = sub_1D2878558();
  v9 = swift_task_alloc();
  v5[17] = v9;
  *v9 = v5;
  v9[1] = sub_1D280F130;

  return sub_1D280FA44(v8, a5);
}

uint64_t sub_1D280F130()
{
  v2 = *v1;
  v2[18] = v0;

  if (v0)
  {
    v4 = sub_1D28784F8();

    return MEMORY[0x1EEE6DFA0](sub_1D280F6F4, v4, v3);
  }

  else
  {
    v5 = swift_task_alloc();
    v2[19] = v5;
    *v5 = v2;
    v5[1] = sub_1D280F2BC;
    v6 = v2[14];

    return sub_1D28108DC(v6);
  }
}

uint64_t sub_1D280F2BC(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[20] = a1;
  v4[21] = a2;
  v4[22] = v2;

  v6 = sub_1D28784F8();
  if (v2)
  {
    v7 = sub_1D280F88C;
  }

  else
  {
    v7 = sub_1D280F420;
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, v5);
}

uint64_t sub_1D280F420()
{
  v1 = v0[21];

  if (v1)
  {
    v2 = v0[20];
    v3 = v0[13];
    v10 = v0[21];
    v11 = v0[14];
    v4 = v0[9];
    (*(v0[12] + 16))(v3, v0[10], v0[11]);
    swift_getKeyPath();
    v0[6] = v4;
    sub_1D2816278(&qword_1EC6DCC48, type metadata accessor for MagicViewModel);
    sub_1D28719E8();

    v0[7] = v4;
    swift_getKeyPath();
    sub_1D2871A08();

    swift_beginAccess();
    sub_1D25D004C(v2, v10, v3);
    swift_endAccess();
    v0[8] = v4;
    swift_getKeyPath();
    sub_1D28719F8();

    v5 = v11;
  }

  else
  {
    v5 = v0[14];
  }

  sub_1D2815E30(v5, type metadata accessor for PlaygroundImage);
  v6 = v0[9];
  if (*(v6 + OBJC_IVAR____TtC23ImagePlaygroundInternal14MagicViewModel__currentlyUpscalingInBackground))
  {
    swift_getKeyPath();
    v7 = swift_task_alloc();
    *(v7 + 16) = v6;
    *(v7 + 24) = 0;
    v0[5] = v6;
    sub_1D2816278(&qword_1EC6DCC48, type metadata accessor for MagicViewModel);
    sub_1D28719D8();
  }

  else
  {
    *(v6 + OBJC_IVAR____TtC23ImagePlaygroundInternal14MagicViewModel__currentlyUpscalingInBackground) = 0;
  }

  v8 = v0[1];

  return v8();
}

uint64_t sub_1D280F6F4()
{

  v1 = v0[18];
  if (qword_1EC6D8968 != -1)
  {
    swift_once();
  }

  sub_1D25428EC(v1);

  v2 = v0[9];
  if (*(v2 + OBJC_IVAR____TtC23ImagePlaygroundInternal14MagicViewModel__currentlyUpscalingInBackground))
  {
    swift_getKeyPath();
    v3 = swift_task_alloc();
    *(v3 + 16) = v2;
    *(v3 + 24) = 0;
    v0[5] = v2;
    sub_1D2816278(&qword_1EC6DCC48, type metadata accessor for MagicViewModel);
    sub_1D28719D8();
  }

  else
  {
    *(v2 + OBJC_IVAR____TtC23ImagePlaygroundInternal14MagicViewModel__currentlyUpscalingInBackground) = 0;
  }

  v4 = v0[1];

  return v4();
}

uint64_t sub_1D280F88C()
{
  v1 = v0[14];

  sub_1D2815E30(v1, type metadata accessor for PlaygroundImage);
  v2 = v0[22];
  if (qword_1EC6D8968 != -1)
  {
    swift_once();
  }

  sub_1D25428EC(v2);

  v3 = v0[9];
  if (*(v3 + OBJC_IVAR____TtC23ImagePlaygroundInternal14MagicViewModel__currentlyUpscalingInBackground))
  {
    swift_getKeyPath();
    v4 = swift_task_alloc();
    *(v4 + 16) = v3;
    *(v4 + 24) = 0;
    v0[5] = v3;
    sub_1D2816278(&qword_1EC6DCC48, type metadata accessor for MagicViewModel);
    sub_1D28719D8();
  }

  else
  {
    *(v3 + OBJC_IVAR____TtC23ImagePlaygroundInternal14MagicViewModel__currentlyUpscalingInBackground) = 0;
  }

  v5 = v0[1];

  return v5();
}

uint64_t sub_1D280FA44(uint64_t a1, uint64_t a2)
{
  v3[12] = a2;
  v3[13] = v2;
  v3[11] = a1;
  v4 = type metadata accessor for ImageGeneration.FinalImageStatus(0);
  v3[14] = v4;
  v3[15] = *(v4 - 8);
  v3[16] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DDA10);
  v3[17] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA178);
  v3[18] = v5;
  v3[19] = *(v5 - 8);
  v3[20] = swift_task_alloc();
  v6 = sub_1D2873CB8();
  v3[21] = v6;
  v3[22] = *(v6 - 8);
  v3[23] = swift_task_alloc();
  v3[24] = swift_task_alloc();
  v3[25] = swift_task_alloc();
  v3[26] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DDA20);
  v3[27] = v7;
  v3[28] = *(v7 - 8);
  v3[29] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA180);
  v3[30] = v8;
  v3[31] = *(v8 - 8);
  v3[32] = swift_task_alloc();
  v3[33] = sub_1D2878568();
  v3[34] = sub_1D2878558();
  v10 = sub_1D28784F8();
  v3[35] = v10;
  v3[36] = v9;

  return MEMORY[0x1EEE6DFA0](sub_1D280FD30, v10, v9);
}

uint64_t sub_1D280FD30()
{
  v1 = __swift_project_boxed_opaque_existential_1((v0[13] + 88), *(v0[13] + 112));
  v2 = *v1;
  v3 = *v1 + OBJC_IVAR____TtCV23ImagePlaygroundInternal15ImageGeneration7Manager__selectedGenerator;
  swift_beginAccess();
  if (*(v3 + 24))
  {
    sub_1D22D7044(v3, (v0 + 2));
    v4 = v0[5];
    v5 = v0[6];
    __swift_project_boxed_opaque_existential_1(v0 + 2, v4);
    (*(v5 + 112))(v4, v5);
    __swift_destroy_boxed_opaque_existential_0((v0 + 2));
  }

  v7 = v0[28];
  v6 = v0[29];
  v8 = v0[27];
  v9 = v0[12];
  v10 = swift_task_alloc();
  *(v10 + 16) = v2;
  *(v10 + 24) = v9;
  (*(v7 + 104))(v6, *MEMORY[0x1E69E8790], v8);
  sub_1D2878778();

  sub_1D2872658();
  v11 = sub_1D2873CA8();
  v12 = sub_1D2878A08();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_1D226E000, v11, v12, "upscaling - will start listening to stream", v13, 2u);
    MEMORY[0x1D38A3520](v13, -1, -1);
  }

  v14 = v0[26];
  v15 = v0[21];
  v16 = v0[22];

  v17 = *(v16 + 8);
  v0[37] = v17;
  v17(v14, v15);
  sub_1D2878658();
  v18 = sub_1D2878558();
  v0[38] = v18;
  v19 = swift_task_alloc();
  v0[39] = v19;
  *v19 = v0;
  v19[1] = sub_1D280FFBC;
  v20 = v0[17];
  v21 = v0[18];
  v22 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6DB90](v20, v18, v22, v21, v0 + 10);
}

uint64_t sub_1D280FFBC()
{
  v2 = *v1;

  v3 = *(v2 + 280);
  v4 = *(v2 + 288);
  if (v0)
  {
    v5 = sub_1D28107BC;
  }

  else
  {
    v5 = sub_1D28100DC;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

uint64_t sub_1D28100DC()
{
  v1 = v0[17];
  if ((*(v0[15] + 48))(v1, 1, v0[14]) == 1)
  {
    (*(v0[19] + 8))(v0[20], v0[18]);

    sub_1D2872658();
    v2 = sub_1D2873CA8();
    v3 = sub_1D2878A08();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_1D226E000, v2, v3, "upscaling - did stop listening to stream", v4, 2u);
      MEMORY[0x1D38A3520](v4, -1, -1);
    }

    v5 = v0[37];
    v7 = v0[31];
    v6 = v0[32];
    v8 = v0[30];
    v9 = v0[23];
    v10 = v0[21];

    v5(v9, v10);
    sub_1D233E200();
    swift_allocError();
    *v11 = 3;
    swift_willThrow();
    (*(v7 + 8))(v6, v8);

    v12 = v0[1];
LABEL_19:

    return v12();
  }

  sub_1D28159F0(v1, v0[16], type metadata accessor for ImageGeneration.FinalImageStatus);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v14 = v0[16];
  if (EnumCaseMultiPayload != 1)
  {
    v26 = v0[11];

    sub_1D28159F0(v14, v26, type metadata accessor for PlaygroundImage);
    v27 = sub_1D23C7CA8();
    v28 = sub_1D2878068();
    v29 = sub_1D2878068();
    v30 = sub_1D25D7060(MEMORY[0x1E69E7CC0]);
    if (*(v27 + 48))
    {
      sub_1D2870F68();
      v31 = sub_1D2878068();

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      sub_1D24E8054(v31, 0x444974706D6F7250, 0xE800000000000000, isUniquelyReferenced_nonNull_native);
    }

    v33 = sub_1D2878068();
    v34 = sub_1D2418030(v30);

    if (v34)
    {
      type metadata accessor for IAPayloadKey(0);
      sub_1D22BCFD0(0, &qword_1ED89CC48);
      sub_1D2816278(&qword_1ED89CDD0, type metadata accessor for IAPayloadKey);
      v35 = sub_1D2877E78();
    }

    else
    {
      v35 = 0;
    }

    [objc_opt_self() asyncSendSignal:v29 toChannel:v28 withNullableUniqueStringID:v33 withPayload:v35];

    sub_1D2872658();
    v36 = sub_1D2873CA8();
    v37 = sub_1D2878A08();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&dword_1D226E000, v36, v37, "upscaling - did imageGenerationManager", v38, 2u);
      MEMORY[0x1D38A3520](v38, -1, -1);
    }

    v39 = v0[37];
    v41 = v0[31];
    v40 = v0[32];
    v49 = v0[30];
    v42 = v0[25];
    v43 = v0[21];
    v44 = v36;
    v46 = v0[19];
    v45 = v0[20];
    v47 = v0[18];

    v39(v42, v43);
    (*(v46 + 8))(v45, v47);
    (*(v41 + 8))(v40, v49);

    v12 = v0[1];
    goto LABEL_19;
  }

  sub_1D2815E30(v0[16], type metadata accessor for ImageGeneration.FinalImageStatus);
  sub_1D2872658();
  v15 = sub_1D2873CA8();
  v16 = sub_1D28789F8();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_1D226E000, v15, v16, "upscaling - retrying after a failure", v17, 2u);
    MEMORY[0x1D38A3520](v17, -1, -1);
  }

  v18 = v0[37];
  v19 = v0[24];
  v20 = v0[21];

  v18(v19, v20);
  v21 = sub_1D2878558();
  v0[38] = v21;
  v22 = swift_task_alloc();
  v0[39] = v22;
  *v22 = v0;
  v22[1] = sub_1D280FFBC;
  v23 = v0[17];
  v24 = v0[18];
  v25 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6DB90](v23, v21, v25, v24, v0 + 10);
}

uint64_t sub_1D28107BC()
{
  v2 = v0[31];
  v1 = v0[32];
  v3 = v0[30];
  v5 = v0[19];
  v4 = v0[20];
  v6 = v0[18];

  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v1, v3);

  v7 = v0[1];

  return v7();
}

uint64_t sub_1D28108DC(uint64_t a1)
{
  v2[27] = a1;
  v2[28] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAE70);
  v2[29] = swift_task_alloc();
  sub_1D2878568();
  v2[30] = sub_1D2878558();
  v4 = sub_1D28784F8();
  v2[31] = v4;
  v2[32] = v3;

  return MEMORY[0x1EEE6DFA0](sub_1D28109AC, v4, v3);
}

uint64_t sub_1D28109AC()
{
  sub_1D23C6CA0();
  v1 = _SystemPhotoLibrary.photoLibrary.getter();
  v0[33] = v1;

  if (v1)
  {
    v2 = v0[29];
    v3 = sub_1D2873AA8();
    (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
    v4 = _s23ImagePlaygroundInternal0bA0V9imageData3for24ensureRegionalCompliance10Foundation0E0VSg22UniformTypeIdentifiers6UTTypeVSg_SbtF_0(v2);
    v6 = v5;
    v0[34] = v4;
    v0[35] = v5;
    sub_1D22BD238(v2, &qword_1EC6DAE70);
    if (v6 >> 60 == 15)
    {

      sub_1D23ED0E0();
      swift_allocError();
      *v7 = 4;
      swift_willThrow();
LABEL_12:

      v19 = v0[1];

      return v19();
    }

    v10 = objc_allocWithZone(MEMORY[0x1E69DCAB8]);
    sub_1D22D6CF8(v4, v6);
    v11 = sub_1D28716D8();
    v12 = [v10 initWithData_];
    v0[36] = v12;

    sub_1D22D6D4C(v4, v6);
    if (!v12)
    {

      sub_1D23ED0E0();
      swift_allocError();
      *v18 = 3;
      swift_willThrow();
      sub_1D22D6D4C(v4, v6);
      goto LABEL_12;
    }

    v13 = swift_allocObject();
    v0[37] = v13;
    *(v13 + 16) = 0;
    *(v13 + 24) = 0;
    v14 = swift_allocObject();
    *(v14 + 16) = v12;
    *(v14 + 24) = v13;
    v0[22] = sub_1D28161AC;
    v0[23] = v14;
    v0[18] = MEMORY[0x1E69E9820];
    v0[19] = 1107296256;
    v0[20] = sub_1D23DFBA8;
    v0[21] = &block_descriptor_56;
    v15 = _Block_copy(v0 + 18);
    v0[38] = v15;
    v16 = v12;
    sub_1D2870F78();

    v0[2] = v0;
    v0[3] = sub_1D2810DB4;
    v17 = swift_continuation_init();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DAD48);
    v0[10] = MEMORY[0x1E69E9820];
    v0[11] = 1107296256;
    v0[12] = sub_1D23DFFA8;
    v0[13] = &block_descriptor_259;
    v0[14] = v17;
    [v1 performChanges:v15 completionHandler:v0 + 10];

    return MEMORY[0x1EEE6DEC8](v0 + 2);
  }

  else
  {

    v8 = v0[1];

    return v8(0, 0);
  }
}

uint64_t sub_1D2810DB4()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 312) = v2;
  v3 = *(v1 + 256);
  v4 = *(v1 + 248);
  if (v2)
  {
    v5 = sub_1D2810FB4;
  }

  else
  {
    v5 = sub_1D2810EE4;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1D2810EE4()
{
  v1 = v0[37];
  v2 = v0[38];
  v3 = v0[36];
  v4 = v0[33];
  sub_1D22D6D4C(v0[34], v0[35]);

  _Block_release(v2);
  swift_beginAccess();
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  sub_1D2870F68();

  v7 = v0[1];

  return v7(v5, v6);
}

uint64_t sub_1D2810FB4()
{
  v1 = v0[38];
  v2 = v0[36];
  v4 = v0[34];
  v3 = v0[35];
  v5 = v0[33];

  swift_willThrow();
  sub_1D22D6D4C(v4, v3);

  _Block_release(v1);

  v6 = v0[1];

  return v6();
}

uint64_t sub_1D2811070(uint64_t a1, uint64_t a2)
{
  sub_1D22BCFD0(0, &qword_1EC6E2AB0);
  v4 = [swift_getObjCClassFromMetadata() creationRequestForAssetFromImage_];
  v5 = [v4 placeholderForCreatedAsset];
  if (v5)
  {
    v6 = v5;
    v7 = [v5 localIdentifier];

    v8 = sub_1D28780A8();
    v10 = v9;
  }

  else
  {

    v8 = 0;
    v10 = 0;
  }

  swift_beginAccess();
  *(a2 + 16) = v8;
  *(a2 + 24) = v10;
}

uint64_t sub_1D2811164()
{
  sub_1D23C7998();

  v6 = &type metadata for FeedbackFeatures;
  v7 = sub_1D233EEC8();
  v0 = sub_1D2871AA8();
  __swift_destroy_boxed_opaque_existential_0(v5);
  if ((v0 & 1) == 0)
  {
    return 0;
  }

  result = os_variant_has_internal_ui();
  if (result)
  {
    if (qword_1ED8A4928 != -1)
    {
      swift_once();
    }

    sub_1D22BCFD0(0, &qword_1ED89CDA0);
    v2 = sub_1D2878A58();
    v3 = sub_1D2878068();
    v4 = [v2 BOOLForKey_];

    return v4 ^ 1;
  }

  return result;
}

uint64_t sub_1D2811280()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DDE30);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v136 = &v122 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E1D50);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v133 = (&v122 - v4);
  v127 = sub_1D2873CB8();
  v126 = *(v127 - 8);
  MEMORY[0x1EEE9AC00](v127);
  v131 = &v122 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAE70);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v124 = &v122 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE5A0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v125 = &v122 - v9;
  v149 = sub_1D2871818();
  v10 = *(v149 - 8);
  MEMORY[0x1EEE9AC00](v149);
  v138 = &v122 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D94F0);
  MEMORY[0x1EEE9AC00](v146);
  v13 = &v122 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8F70);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v122 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v147 = &v122 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v151 = &v122 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v122 - v22;
  v24 = type metadata accessor for ImageGeneration.PreviewImage(0);
  v25 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v152 = (&v122 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9490);
  MEMORY[0x1EEE9AC00](v27 - 8);
  v128 = &v122 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v132 = &v122 - v30;
  MEMORY[0x1EEE9AC00](v31);
  v130 = &v122 - v32;
  MEMORY[0x1EEE9AC00](v33);
  v129 = &v122 - v34;
  MEMORY[0x1EEE9AC00](v35);
  v37 = &v122 - v36;
  v150 = v0;
  v38 = *(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal14MagicViewModel_previewsStore);
  swift_getKeyPath();
  *&v160 = v38;
  sub_1D2816278(&qword_1ED8A0FD0, type metadata accessor for GeneratedPreviewsStore);
  sub_1D28719E8();

  swift_beginAccess();
  v39 = *(v38 + 16);
  v145 = *(v39 + 16);
  v135 = v16;
  v134 = v10;
  if (!v145)
  {
    v56 = 1;
LABEL_16:
    (*(v25 + 56))(v37, v56, 1, v24);
    v57 = v129;
    sub_1D22BD1D0(v37, v129, &qword_1EC6D9490);
    v152 = *(v25 + 48);
    if (v152(v57, 1, v24) == 1)
    {
      sub_1D22BD238(v57, &qword_1EC6D9490);
      v58 = v131;
    }

    else
    {
      v59 = *(v57 + *(v24 + 28));
      v60 = *(v59 + 16);
      v61 = type metadata accessor for PlaygroundImage();
      v62 = *(v61 - 8);
      if (v60)
      {
        v63 = v59 + ((*(*(v61 - 8) + 80) + 32) & ~*(*(v61 - 8) + 80));
        v64 = v125;
        sub_1D2815DC8(v63, v125, type metadata accessor for PlaygroundImage);
        v65 = 0;
      }

      else
      {
        v65 = 1;
        v64 = v125;
      }

      (*(v62 + 56))(v64, v65, 1, v61);
      sub_1D2815E30(v57, type metadata accessor for ImageGeneration.PreviewImage);
      v66 = (*(v62 + 48))(v64, 1, v61);
      v58 = v131;
      if (v66 == 1)
      {
        sub_1D22BD238(v64, &unk_1EC6DE5A0);
      }

      else
      {
        v67 = sub_1D2873AA8();
        v68 = v124;
        (*(*(v67 - 8) + 56))(v124, 1, 1, v67);
        v69 = _s23ImagePlaygroundInternal0bA0V9imageData3for24ensureRegionalCompliance10Foundation0E0VSg22UniformTypeIdentifiers6UTTypeVSg_SbtF_0(v68);
        v71 = v70;
        sub_1D22BD238(v68, &qword_1EC6DAE70);
        sub_1D2815E30(v64, type metadata accessor for PlaygroundImage);
        if (v71 >> 60 != 15)
        {
          v147 = v71;
          v148 = v69;
          v75 = 1;
          goto LABEL_27;
        }
      }
    }

    sub_1D28726D8();
    v72 = sub_1D2873CA8();
    v73 = sub_1D28789F8();
    if (os_log_type_enabled(v72, v73))
    {
      v74 = swift_slowAlloc();
      *v74 = 0;
      _os_log_impl(&dword_1D226E000, v72, v73, "No image data found when building FeedbackInput", v74, 2u);
      MEMORY[0x1D38A3520](v74, -1, -1);
    }

    (*(v126 + 8))(v58, v127);
    v148 = 0;
    v147 = 0;
    v75 = 255;
LABEL_27:
    LODWORD(v151) = v75;
    v76 = v150[9];
    v146 = v150[10];
    sub_1D2870F78();
    v145 = v76;
    sub_1D2870F78();
    sub_1D280551C(&OBJC_IVAR____TtC23ImagePlaygroundInternal14MagicViewModel____lazy_storage___descriptionFieldWithSuggestionsViewModel, sub_1D28089F4);
    v77 = sub_1D2740188();

    swift_getKeyPath();
    *&v160 = v77;
    sub_1D2816278(&qword_1ED8A38E0, type metadata accessor for PromptViewModel);
    sub_1D28719E8();

    v78 = OBJC_IVAR____TtC23ImagePlaygroundInternal15PromptViewModel__prompt;
    swift_beginAccess();
    v79 = v77 + v78;
    v80 = v133;
    sub_1D22BD1D0(v79, v133, &qword_1EC6E1D50);

    v81 = v80[1];
    v142 = *v80;
    v143 = v81;
    sub_1D2870F68();
    sub_1D22BD238(v80, &qword_1EC6E1D50);
    v82 = v130;
    sub_1D22BD1D0(v37, v130, &qword_1EC6D9490);
    v83 = v152;
    if (v152(v82, 1, v24) == 1)
    {
      sub_1D22BD238(v82, &qword_1EC6D9490);
      v140 = 0;
      v144 = 0;
    }

    else
    {
      sub_1D22D7044(v82 + *(v24 + 24), &v160);
      sub_1D2815E30(v82, type metadata accessor for ImageGeneration.PreviewImage);
      v84 = *(&v161 + 1);
      v85 = v162;
      __swift_project_boxed_opaque_existential_1(&v160, *(&v161 + 1));
      v140 = (*(v85 + 32))(v84, v85);
      v144 = v86;
      __swift_destroy_boxed_opaque_existential_0(&v160);
    }

    v87 = v24;
    sub_1D2870F78();
    v88 = sub_1D2740188();

    swift_getKeyPath();
    *&v160 = v88;
    sub_1D28719E8();

    v89 = *(v88 + OBJC_IVAR____TtC23ImagePlaygroundInternal15PromptViewModel__state);

    LOBYTE(v160) = v89;
    v90 = sub_1D2878118();
    v92 = v91;
    v93 = v132;
    sub_1D22BD1D0(v37, v132, &qword_1EC6D9490);
    if (v83(v93, 1, v87) == 1)
    {
      sub_1D22BD238(v93, &qword_1EC6D9490);
      v94 = 1;
      v95 = v149;
      v96 = v134;
      v97 = v135;
    }

    else
    {
      v96 = v134;
      v97 = v135;
      v95 = v149;
      (*(v134 + 16))(v135, v93, v149);
      sub_1D2815E30(v93, type metadata accessor for ImageGeneration.PreviewImage);
      v94 = 0;
    }

    (*(v96 + 56))(v97, v94, 1, v95);
    v98 = sub_1D2872438();
    (*(*(v98 - 8) + 56))(v136, 1, 1, v98);
    v99 = *__swift_project_boxed_opaque_existential_1(v150 + 11, v150[14]);
    v100 = OBJC_IVAR____TtCV23ImagePlaygroundInternal15ImageGeneration7Manager__selectedGenerator;
    swift_beginAccess();
    sub_1D22BD1D0(v99 + v100, &v160, &qword_1EC6D9A08);
    v141 = v92;
    if (*(&v161 + 1))
    {
      v101 = v90;
      sub_1D227268C(&v160, &v157);
    }

    else
    {
      sub_1D22BD238(&v160, &qword_1EC6D9A08);
      result = sub_1D23B7984();
      if (!*(result + 16))
      {
        goto LABEL_49;
      }

      v101 = v90;
      sub_1D22D7044(result + 32, &v157);
    }

    v103 = v158;
    v102 = v159;
    v104 = __swift_project_boxed_opaque_existential_1(&v157, v158);
    *(&v161 + 1) = v103;
    v162 = *(v102 + 8);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v160);
    (*(*(v103 - 8) + 16))(boxed_opaque_existential_1, v104, v103);
    v106 = v128;
    sub_1D22BD1D0(v37, v128, &qword_1EC6D9490);
    if (v83(v106, 1, v87) == 1)
    {
      sub_1D22BD238(v106, &qword_1EC6D9490);
      v107 = 0;
    }

    else
    {
      v107 = *(v106 + *(v87 + 32));
      sub_1D2870F68();
      sub_1D2815E30(v106, type metadata accessor for ImageGeneration.PreviewImage);
    }

    sub_1D2805284(v155);
    sub_1D22BD238(v37, &qword_1EC6D9490);
    v108 = v155[0];
    v109 = v155[1];
    v110 = v156;
    type metadata accessor for FeedbackInput();
    v111 = swift_allocObject();
    v112 = OBJC_IVAR____TtC23ImagePlaygroundInternal13FeedbackInput_featureDomain;
    v113 = *MEMORY[0x1E699C2C8];
    v114 = sub_1D2871CD8();
    (*(*(v114 - 8) + 104))(v111 + v112, v113, v114);
    v115 = v111 + OBJC_IVAR____TtC23ImagePlaygroundInternal13FeedbackInput_generationStateProvider;
    *v115 = 0u;
    *(v115 + 16) = 0u;
    *(v115 + 32) = 0;
    v116 = v145;
    *(v111 + 16) = v146;
    *(v111 + 24) = v116;
    v117 = v147;
    *(v111 + 32) = v148;
    *(v111 + 40) = v117;
    *(v111 + 48) = v151;
    v118 = v143;
    *(v111 + 56) = v142;
    *(v111 + 64) = v118;
    v119 = v141;
    *(v111 + 88) = v101;
    *(v111 + 96) = v119;
    sub_1D22EC9BC(v97, v111 + OBJC_IVAR____TtC23ImagePlaygroundInternal13FeedbackInput_id, &qword_1EC6D8F70);
    sub_1D22EC9BC(v136, v111 + OBJC_IVAR____TtC23ImagePlaygroundInternal13FeedbackInput_recipe, &unk_1EC6DDE30);
    swift_beginAccess();
    sub_1D22D7384(&v160, v115, &qword_1EC6DA1F0);
    swift_endAccess();
    *(v111 + OBJC_IVAR____TtC23ImagePlaygroundInternal13FeedbackInput_isSaved) = 2;
    *(v111 + OBJC_IVAR____TtC23ImagePlaygroundInternal13FeedbackInput_diffusionModelSpecification) = v107;
    v120 = v111 + OBJC_IVAR____TtC23ImagePlaygroundInternal13FeedbackInput_error;
    *v120 = v108;
    *(v120 + 8) = v109;
    *(v120 + 16) = v110;
    v153[1] = v161;
    v153[0] = v160;
    v154 = v162;
    if (*(&v161 + 1))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DDE40);
      _s22OnDeviceImageGeneratorCMa(0);
      if (swift_dynamicCast())
      {

        v121 = v144;
        *(v111 + 72) = v140;
        *(v111 + 80) = v121;
LABEL_46:
        __swift_destroy_boxed_opaque_existential_0(&v157);
        return v111;
      }
    }

    else
    {

      sub_1D22BD238(v153, &qword_1EC6DA1F0);
    }

    *(v111 + 72) = 0;
    *(v111 + 80) = 0;
    goto LABEL_46;
  }

  v122 = v37;
  v123 = v24;
  v148 = v25;
  v143 = v39 + ((*(v25 + 80) + 32) & ~*(v25 + 80));
  v142 = (v10 + 16);
  v141 = (v10 + 56);
  v40 = (v10 + 48);
  v137 = (v10 + 32);
  v140 = (v10 + 8);
  result = sub_1D2870F68();
  v42 = 0;
  v43 = v149;
  v144 = v39;
  while (v42 < *(v39 + 16))
  {
    v45 = v152;
    sub_1D2815DC8(v143 + *(v148 + 72) * v42, v152, type metadata accessor for ImageGeneration.PreviewImage);
    (*v142)(v23, v45, v43);
    (*v141)(v23, 0, 1, v43);
    v46 = sub_1D280551C(&OBJC_IVAR____TtC23ImagePlaygroundInternal14MagicViewModel____lazy_storage___previewsViewModel, sub_1D28078D0);
    swift_getKeyPath();
    *&v160 = v46;
    sub_1D2816278(&qword_1ED8A2D20, type metadata accessor for PreviewsViewModel);
    sub_1D28719E8();

    v47 = OBJC_IVAR____TtC23ImagePlaygroundInternal17PreviewsViewModel__visiblePreviewID;
    swift_beginAccess();
    v48 = v23;
    v49 = v151;
    sub_1D22BD1D0(v46 + v47, v151, &qword_1EC6D8F70);
    v43 = v149;

    v50 = *(v146 + 48);
    sub_1D22BD1D0(v48, v13, &qword_1EC6D8F70);
    sub_1D22BD1D0(v49, &v13[v50], &qword_1EC6D8F70);
    v51 = *v40;
    if ((*v40)(v13, 1, v43) == 1)
    {
      sub_1D22BD238(v49, &qword_1EC6D8F70);
      sub_1D22BD238(v48, &qword_1EC6D8F70);
      v44 = v51(&v13[v50], 1, v43);
      v23 = v48;
      v39 = v144;
      if (v44 == 1)
      {
        sub_1D22BD238(v13, &qword_1EC6D8F70);
LABEL_15:

        v37 = v122;
        sub_1D28159F0(v152, v122, type metadata accessor for ImageGeneration.PreviewImage);
        v56 = 0;
        v24 = v123;
        v25 = v148;
        goto LABEL_16;
      }

      goto LABEL_4;
    }

    v52 = v147;
    sub_1D22BD1D0(v13, v147, &qword_1EC6D8F70);
    if (v51(&v13[v50], 1, v43) == 1)
    {
      sub_1D22BD238(v151, &qword_1EC6D8F70);
      v53 = v52;
      v23 = v48;
      sub_1D22BD238(v48, &qword_1EC6D8F70);
      (*v140)(v53, v43);
      v39 = v144;
LABEL_4:
      sub_1D22BD238(v13, &qword_1EC6D94F0);
      goto LABEL_5;
    }

    v54 = v138;
    (*v137)(v138, &v13[v50], v43);
    sub_1D2816278(&unk_1ED8A6CA0, MEMORY[0x1E69695A8]);
    v139 = sub_1D2877F98();
    v55 = *v140;
    (*v140)(v54, v43);
    sub_1D22BD238(v151, &qword_1EC6D8F70);
    v23 = v48;
    sub_1D22BD238(v48, &qword_1EC6D8F70);
    v55(v147, v43);
    sub_1D22BD238(v13, &qword_1EC6D8F70);
    v39 = v144;
    if (v139)
    {
      goto LABEL_15;
    }

LABEL_5:
    ++v42;
    result = sub_1D2815E30(v152, type metadata accessor for ImageGeneration.PreviewImage);
    if (v145 == v42)
    {

      v56 = 1;
      v24 = v123;
      v25 = v148;
      v37 = v122;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_49:
  __break(1u);
  return result;
}

uint64_t sub_1D28128E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  *(v8 + 280) = a8;
  *(v8 + 168) = a6;
  *(v8 + 176) = a7;
  *(v8 + 152) = a4;
  *(v8 + 160) = a5;
  v9 = sub_1D2871CD8();
  *(v8 + 184) = v9;
  *(v8 + 192) = *(v9 - 8);
  *(v8 + 200) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DDE30);
  *(v8 + 208) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8F70);
  *(v8 + 216) = swift_task_alloc();
  v10 = sub_1D2872438();
  *(v8 + 224) = v10;
  *(v8 + 232) = *(v10 - 8);
  *(v8 + 240) = swift_task_alloc();
  sub_1D2878568();
  *(v8 + 248) = sub_1D2878558();
  v12 = sub_1D28784F8();
  *(v8 + 256) = v12;
  *(v8 + 264) = v11;

  return MEMORY[0x1EEE6DFA0](sub_1D2812AAC, v12, v11);
}

uint64_t sub_1D2812AAC()
{
  v1 = v0[19];
  type metadata accessor for GenerationRecipeFactory();
  v2 = *(v1 + 72);
  v3 = swift_task_alloc();
  v0[34] = v3;
  *v3 = v0;
  v3[1] = sub_1D2812B58;
  v4 = v0[30];

  return sub_1D2462694(v4, v2);
}

uint64_t sub_1D2812B58()
{
  v1 = *v0;

  v2 = *(v1 + 264);
  v3 = *(v1 + 256);

  return MEMORY[0x1EEE6DFA0](sub_1D2812C78, v3, v2);
}

uint64_t sub_1D2812C78()
{
  v42 = v0;
  v2 = *(v0 + 224);
  v1 = *(v0 + 232);
  v31 = *(v0 + 208);
  v32 = *(v0 + 240);
  v29 = *(v0 + 216);
  v30 = *(v0 + 192);
  v37 = *(v0 + 184);
  v3 = *(v0 + 176);
  v4 = *(v0 + 152);
  v34 = *(v0 + 160);
  v35 = *(v0 + 168);

  v39 = *(v4 + 80);
  v5 = (v3 + *(type metadata accessor for ImageGeneration.PreviewImage(0) + 24));
  v6 = v5[3];
  v7 = v5[4];
  __swift_project_boxed_opaque_existential_1(v5, v6);
  v8 = *(v7 + 32);
  sub_1D2870F78();
  v28 = v8(v6, v7);
  v36 = v9;
  v10 = sub_1D2871818();
  v11 = *(v10 - 8);
  (*(v11 + 16))(v29, v3, v10);
  (*(v11 + 56))(v29, 0, 1, v10);
  (*(v1 + 16))(v31, v32, v2);
  (*(v1 + 56))(v31, 0, 1, v2);
  *(v0 + 16) = 0u;
  *(v0 + 48) = 0;
  *(v0 + 32) = 0u;
  sub_1D2805284(v40);
  v12 = v40[0];
  v33 = v40[1];
  LOBYTE(v32) = v41;
  type metadata accessor for FeedbackInput();
  v13 = swift_allocObject();
  v14 = v37;
  v38 = *(v30 + 104);
  v38(v13 + OBJC_IVAR____TtC23ImagePlaygroundInternal13FeedbackInput_featureDomain, *MEMORY[0x1E699C2C8], v14);
  v15 = v13 + OBJC_IVAR____TtC23ImagePlaygroundInternal13FeedbackInput_generationStateProvider;
  *v15 = 0u;
  *(v15 + 16) = 0u;
  *(v15 + 32) = 0;
  *(v13 + 16) = v39;
  *(v13 + 24) = 0;
  *(v13 + 32) = v34;
  *(v13 + 40) = v35;
  *(v13 + 48) = 1;
  *(v13 + 56) = 0;
  *(v13 + 64) = 0;
  *(v13 + 88) = 0;
  *(v13 + 96) = 0;
  sub_1D22EC9BC(v29, v13 + OBJC_IVAR____TtC23ImagePlaygroundInternal13FeedbackInput_id, &qword_1EC6D8F70);
  sub_1D22EC9BC(v31, v13 + OBJC_IVAR____TtC23ImagePlaygroundInternal13FeedbackInput_recipe, &unk_1EC6DDE30);
  swift_beginAccess();
  sub_1D22D6CF8(v34, v35);
  sub_1D22D7384(v0 + 16, v15, &qword_1EC6DA1F0);
  swift_endAccess();
  *(v13 + OBJC_IVAR____TtC23ImagePlaygroundInternal13FeedbackInput_isSaved) = 2;
  *(v13 + OBJC_IVAR____TtC23ImagePlaygroundInternal13FeedbackInput_diffusionModelSpecification) = 0;
  v16 = *(v0 + 16);
  *(v0 + 72) = *(v0 + 32);
  v17 = v13 + OBJC_IVAR____TtC23ImagePlaygroundInternal13FeedbackInput_error;
  *v17 = v12;
  *(v17 + 8) = v33;
  *(v17 + 16) = v32;
  *(v0 + 56) = v16;
  *(v0 + 88) = *(v0 + 48);
  if (*(v0 + 80))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DDE40);
    _s22OnDeviceImageGeneratorCMa(0);
    if (swift_dynamicCast())
    {

      *(v13 + 72) = v28;
      *(v13 + 80) = v36;
      goto LABEL_7;
    }
  }

  else
  {

    sub_1D22BD238(v0 + 56, &qword_1EC6DA1F0);
  }

  *(v13 + 72) = 0;
  *(v13 + 80) = 0;
LABEL_7:
  v19 = *(v0 + 232);
  v18 = *(v0 + 240);
  v20 = *(v0 + 224);
  v21 = *(v0 + 200);
  v22 = *(v0 + 184);
  v23 = *(v0 + 192);
  v24 = *(v0 + 280);
  v38(v21, *MEMORY[0x1E699C258], v22);
  v25 = OBJC_IVAR____TtC23ImagePlaygroundInternal13FeedbackInput_featureDomain;
  swift_beginAccess();
  (*(v23 + 40))(v13 + v25, v21, v22);
  swift_endAccess();
  sub_1D23C7998();
  sub_1D24038A0(v13, v24);

  (*(v19 + 8))(v18, v20);

  v26 = *(v0 + 8);

  return v26();
}

uint64_t sub_1D2813144(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[26] = a4;
  v5 = type metadata accessor for ImageGenerationPerson();
  v4[27] = v5;
  v4[28] = *(v5 - 8);
  v4[29] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8F80);
  v4[30] = swift_task_alloc();
  sub_1D2878568();
  v4[31] = sub_1D2878558();
  v7 = sub_1D28784F8();
  v4[32] = v7;
  v4[33] = v6;

  return MEMORY[0x1EEE6DFA0](sub_1D2813270, v7, v6);
}

uint64_t sub_1D2813270()
{
  if (sub_1D281388C())
  {

LABEL_5:

    v7 = *(v0 + 8);

    return v7();
  }

  v1 = *(v0 + 240);
  v2 = *(v0 + 216);
  v3 = *(v0 + 224);
  v4 = *(v0 + 208);
  swift_getKeyPath();
  *(v0 + 200) = v4;
  sub_1D2816278(&qword_1EC6DCC48, type metadata accessor for MagicViewModel);
  sub_1D28719E8();

  v5 = OBJC_IVAR____TtC23ImagePlaygroundInternal14MagicViewModel__selectedPerson;
  swift_beginAccess();
  sub_1D22BD1D0(v4 + v5, v1, &qword_1EC6D8F80);
  if ((*(v3 + 48))(v1, 1, v2))
  {
    v6 = *(v0 + 240);

    sub_1D22BD238(v6, &qword_1EC6D8F80);
    *(v0 + 56) = 0u;
    *(v0 + 72) = 0u;
    *(v0 + 88) = 0;
    sub_1D22BD238(v0 + 56, &unk_1EC6E1D30);
    goto LABEL_5;
  }

  v9 = *(v0 + 240);
  sub_1D2815DC8(v9, *(v0 + 232), type metadata accessor for ImageGenerationPerson);
  sub_1D22BD238(v9, &qword_1EC6D8F80);
  v10 = sub_1D23C7314();
  *(v0 + 272) = v10;
  *(v0 + 120) = type metadata accessor for _PeopleRetrieval();
  *(v0 + 128) = &off_1F4DCA8A8;
  *(v0 + 96) = sub_1D23C6DDC();
  v11 = swift_task_alloc();
  *(v0 + 280) = v11;
  *v11 = v0;
  v11[1] = sub_1D2813518;

  return sub_1D2353BA4(v0 + 56, v10, v0 + 96);
}

uint64_t sub_1D2813518()
{
  v1 = *v0;
  v2 = *(*v0 + 232);

  sub_1D2815E30(v2, type metadata accessor for ImageGenerationPerson);
  __swift_destroy_boxed_opaque_existential_0(v1 + 96);
  v3 = *(v1 + 264);
  v4 = *(v1 + 256);

  return MEMORY[0x1EEE6DFA0](sub_1D2813698, v4, v3);
}

uint64_t sub_1D2813698()
{

  if (*(v0 + 80))
  {
    v1 = *(v0 + 208);
    sub_1D227268C((v0 + 56), v0 + 16);
    v2 = type metadata accessor for AddImageConditioningRepresentationOperation();
    sub_1D22D7044(v0 + 16, v0 + 136);
    v3 = sub_1D2803FA4();
    v4 = *(v0 + 160);
    v5 = *(v0 + 168);
    v6 = __swift_mutable_project_boxed_opaque_existential_1(v0 + 136, v4);
    v7 = *(v4 - 8);
    v8 = swift_task_alloc();
    (*(v7 + 16))(v8, v6, v4);
    v9 = sub_1D27FDCE0(v8, v3, 0, v2, v4, v5);
    __swift_destroy_boxed_opaque_existential_0(v0 + 136);

    v10 = *(v1 + 128);
    sub_1D2870F78();
    sub_1D27FDB14();
    sub_1D27DF058(v9, v10);

    __swift_destroy_boxed_opaque_existential_0(v0 + 16);
  }

  else
  {
    sub_1D22BD238(v0 + 56, &unk_1EC6E1D30);
  }

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_1D281388C()
{
  v1 = v0;
  v2 = type metadata accessor for ImageGenerationPerson();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v21 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA348);
  v6 = v5 - 8;
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v21 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8F80);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v21 - v13;
  sub_1D2813E74(&v21 - v13);
  swift_getKeyPath();
  v22 = v0;
  sub_1D2816278(&qword_1EC6DCC48, type metadata accessor for MagicViewModel);
  sub_1D28719E8();

  v15 = OBJC_IVAR____TtC23ImagePlaygroundInternal14MagicViewModel__selectedPerson;
  swift_beginAccess();
  v16 = *(v6 + 56);
  sub_1D22BD1D0(v14, v8, &qword_1EC6D8F80);
  sub_1D22BD1D0(v1 + v15, &v8[v16], &qword_1EC6D8F80);
  v17 = *(v3 + 48);
  if (v17(v8, 1, v2) != 1)
  {
    sub_1D22BD1D0(v8, v11, &qword_1EC6D8F80);
    if (v17(&v8[v16], 1, v2) != 1)
    {
      v19 = v21;
      sub_1D28159F0(&v8[v16], v21, type metadata accessor for ImageGenerationPerson);
      v18 = _s23ImagePlaygroundInternal0A16GenerationPersonV2eeoiySbAC_ACtFZ_0(v11, v19);
      sub_1D2815E30(v19, type metadata accessor for ImageGenerationPerson);
      sub_1D22BD238(v14, &qword_1EC6D8F80);
      sub_1D2815E30(v11, type metadata accessor for ImageGenerationPerson);
      sub_1D22BD238(v8, &qword_1EC6D8F80);
      return v18 & 1;
    }

    sub_1D22BD238(v14, &qword_1EC6D8F80);
    sub_1D2815E30(v11, type metadata accessor for ImageGenerationPerson);
    goto LABEL_6;
  }

  sub_1D22BD238(v14, &qword_1EC6D8F80);
  if (v17(&v8[v16], 1, v2) != 1)
  {
LABEL_6:
    sub_1D22BD238(v8, &qword_1EC6DA348);
    v18 = 0;
    return v18 & 1;
  }

  sub_1D22BD238(v8, &qword_1EC6D8F80);
  v18 = 1;
  return v18 & 1;
}

void sub_1D2813C78(void *a1)
{
  v2 = sub_1D2873CB8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v6 = a1;
    sub_1D28726B8();
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
      _os_log_impl(&dword_1D226E000, v8, v9, "Cannot select person with error: %@", v10, 0xCu);
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

uint64_t sub_1D2813E74@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8F80);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v19 = &v18 - v4;
  v5 = type metadata accessor for ImageGenerationPerson();
  v6 = *(*(v5 - 8) + 56);
  v20 = a1;
  v6(a1, 1, 1, v5);
  swift_getKeyPath();
  *&v23[0] = v1;
  sub_1D2816278(&qword_1EC6DCC48, type metadata accessor for MagicViewModel);
  sub_1D28719E8();

  v7 = *(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal14MagicViewModel__representations);
  v8 = *(v7 + 16);
  result = sub_1D2870F68();
  if (v8)
  {
    v10 = 0;
    v11 = v7 + 32;
    while (1)
    {
      if (v10 >= *(v7 + 16))
      {
        __break(1u);
        return result;
      }

      sub_1D22D7044(v11, v23);
      sub_1D22D7044(v23, v22);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9A10);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9A28);
      if (swift_dynamicCast())
      {
        break;
      }

      ++v10;
      result = __swift_destroy_boxed_opaque_existential_0(v23);
      v11 += 40;
      if (v8 == v10)
      {
        goto LABEL_6;
      }
    }

    __swift_destroy_boxed_opaque_existential_0(v21);
    sub_1D227268C(v23, v27);
    if ((swift_dynamicCast() & 1) == 0)
    {
      v26 = 0;
      v25 = 0u;
      v24 = 0u;
      return sub_1D22BD238(&v24, &qword_1EC6D9A58);
    }

    if (!*(&v25 + 1))
    {
      return sub_1D22BD238(&v24, &qword_1EC6D9A58);
    }

    sub_1D227268C(&v24, v27);
    v13 = v28;
    v12 = v29;
    v14 = __swift_project_boxed_opaque_existential_1(v27, v28);
    *(&v25 + 1) = v13;
    v26 = *(v12 + 8);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v24);
    (*(*(v13 - 8) + 16))(boxed_opaque_existential_1, v14, v13);
    v16 = v19;
    sub_1D2352940(&v24, v19);
    v17 = v20;
    sub_1D22BD238(v20, &qword_1EC6D8F80);
    sub_1D22EC9BC(v16, v17, &qword_1EC6D8F80);
    return __swift_destroy_boxed_opaque_existential_0(v27);
  }

  else
  {
LABEL_6:

    v24 = 0u;
    v25 = 0u;
    v26 = 0;
    return sub_1D22BD238(&v24, &qword_1EC6D9A58);
  }
}

uint64_t MagicViewModel.deinit()
{
  sub_1D22729C0(v0 + 56);

  __swift_destroy_boxed_opaque_existential_0(v0 + 88);

  sub_1D22BD238(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal14MagicViewModel__onBoardingDescription, &unk_1EC6E1D40);

  sub_1D22FD918(*(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal14MagicViewModel__currentHittedLimitation), *(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal14MagicViewModel__currentHittedLimitation + 8), *(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal14MagicViewModel__currentHittedLimitation + 16));
  sub_1D2415B64(*(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal14MagicViewModel__currentLocalizedGenerationUpscalingError), *(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal14MagicViewModel__currentLocalizedGenerationUpscalingError + 8), *(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal14MagicViewModel__currentLocalizedGenerationUpscalingError + 16));
  sub_1D22BD238(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal14MagicViewModel__selectedPerson, &qword_1EC6D8F80);

  sub_1D233EE24(*(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal14MagicViewModel__effectLoadingState));

  v1 = OBJC_IVAR____TtC23ImagePlaygroundInternal14MagicViewModel___observationRegistrar;
  v2 = sub_1D2871A28();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t MagicViewModel.__deallocating_deinit()
{
  MagicViewModel.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1D2814408()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9A30);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v26 = &v24 - v2;
  v3 = sub_1D2872008();
  v27 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v24 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v25 = &v24 - v6;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v24 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8F80);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v24 - v11;
  v13 = *(sub_1D2803FA4() + 32);
  sub_1D2870F68();

  swift_getKeyPath();
  v28 = v0;
  v29 = v13;
  *&v32[0] = v0;
  sub_1D2816278(&qword_1EC6DCC48, type metadata accessor for MagicViewModel);
  sub_1D28719D8();

  if ((sub_1D281388C() & 1) == 0)
  {
    sub_1D2813E74(v12);
    sub_1D2806E44(v12);
  }

  swift_getKeyPath();
  *&v32[0] = v0;
  sub_1D28719E8();

  v14 = *(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal14MagicViewModel__representations);
  v15 = *(v14 + 16);
  result = sub_1D2870F68();
  if (!v15)
  {
  }

  v17 = 0;
  for (i = v14 + 32; ; i += 40)
  {
    if (v17 >= *(v14 + 16))
    {
      __break(1u);
      return result;
    }

    sub_1D22D7044(i, v32);
    sub_1D22D7044(v32, v30);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9A10);
    if (swift_dynamicCast())
    {
      break;
    }

    ++v17;
    result = __swift_destroy_boxed_opaque_existential_0(v32);
    if (v15 == v17)
    {
    }
  }

  v19 = v27;
  v20 = *(v27 + 8);
  v20(v9, v3);
  sub_1D227268C(v32, v31);
  sub_1D227268C(v31, v32);
  sub_1D22D7044(v32, v31);
  v21 = v26;
  if (swift_dynamicCast())
  {
    (*(v19 + 56))(v21, 0, 1, v3);
    v22 = v25;
    (*(v19 + 32))(v25, v21, v3);
    sub_1D280551C(&OBJC_IVAR____TtC23ImagePlaygroundInternal14MagicViewModel____lazy_storage___previewsViewModel, sub_1D28078D0);
    v23 = v24;
    (*(v19 + 16))(v24, v22, v3);
    sub_1D25AB650(v23);

    v20(v22, v3);
    return __swift_destroy_boxed_opaque_existential_0(v32);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0(v32);
    (*(v19 + 56))(v21, 1, 1, v3);
    return sub_1D22BD238(v21, &qword_1EC6D9A30);
  }
}

void sub_1D28148F4(uint64_t a1, unint64_t a2, uint64_t a3, char a4)
{
  if (a4 == 6)
  {
    if (a2 != 1 || a3)
    {
      if (__PAIR128__((a2 >= 3) + a3 - 1, a2 - 3) < 5)
      {
        return;
      }
    }

    else if (sub_1D27D8C8C())
    {
      return;
    }
  }

  v8 = v4 + OBJC_IVAR____TtC23ImagePlaygroundInternal14MagicViewModel__currentHittedLimitation;
  v9 = *(v4 + OBJC_IVAR____TtC23ImagePlaygroundInternal14MagicViewModel__currentHittedLimitation + 16);
  if (v9 == 255 || (v10 = *v8, v11 = *(v8 + 8), (sub_1D23DA32C(*v8, v11, *(v4 + OBJC_IVAR____TtC23ImagePlaygroundInternal14MagicViewModel__currentHittedLimitation + 16), a2, a3, a4) & 1) == 0))
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D2816278(&qword_1EC6DCC48, type metadata accessor for MagicViewModel);
    sub_1D28719D8();
  }

  else
  {
    *v8 = a2;
    *(v8 + 8) = a3;
    *(v8 + 16) = a4;
    sub_1D233E9E8(a2, a3, a4);

    sub_1D22FD918(v10, v11, v9);
  }
}

uint64_t sub_1D2814AE4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ImageGenerationPerson();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8F80);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v20 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA348);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v20 - v12;
  v15 = *(v14 + 56);
  sub_1D22BD1D0(a1, &v20 - v12, &qword_1EC6D8F80);
  sub_1D22BD1D0(a2, &v13[v15], &qword_1EC6D8F80);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) != 1)
  {
    sub_1D22BD1D0(v13, v10, &qword_1EC6D8F80);
    if (v16(&v13[v15], 1, v4) != 1)
    {
      sub_1D28159F0(&v13[v15], v7, type metadata accessor for ImageGenerationPerson);
      v18 = _s23ImagePlaygroundInternal0A16GenerationPersonV2eeoiySbAC_ACtFZ_0(v10, v7);
      sub_1D2815E30(v7, type metadata accessor for ImageGenerationPerson);
      sub_1D2815E30(v10, type metadata accessor for ImageGenerationPerson);
      sub_1D22BD238(v13, &qword_1EC6D8F80);
      v17 = v18 ^ 1;
      return v17 & 1;
    }

    sub_1D2815E30(v10, type metadata accessor for ImageGenerationPerson);
    goto LABEL_6;
  }

  if (v16(&v13[v15], 1, v4) != 1)
  {
LABEL_6:
    sub_1D22BD238(v13, &qword_1EC6DA348);
    v17 = 1;
    return v17 & 1;
  }

  sub_1D22BD238(v13, &qword_1EC6D8F80);
  v17 = 0;
  return v17 & 1;
}

uint64_t sub_1D2814E58(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1D22BDFF8;

  return sub_1D280C5B8(a1, v4, v5, v6);
}

void sub_1D2814F8C()
{
  sub_1D28151C4(319, &qword_1ED8A6CD8, MEMORY[0x1E6968848]);
  if (v0 <= 0x3F)
  {
    sub_1D28151C4(319, &qword_1ED8A5CA8, type metadata accessor for ImageGenerationPerson);
    if (v1 <= 0x3F)
    {
      sub_1D2871A28();
      if (v2 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_1D28151C4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D2878F18();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_1D281522C()
{
  result = qword_1EC6E2AA0;
  if (!qword_1EC6E2AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E2AA0);
  }

  return result;
}

uint64_t sub_1D2815280(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D2871318();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6E1D40);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v21 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E2AA8);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v21 - v12;
  v15 = *(v14 + 56);
  sub_1D22BD1D0(a1, &v21 - v12, &unk_1EC6E1D40);
  sub_1D22BD1D0(a2, &v13[v15], &unk_1EC6E1D40);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) != 1)
  {
    sub_1D22BD1D0(v13, v10, &unk_1EC6E1D40);
    if (v16(&v13[v15], 1, v4) != 1)
    {
      (*(v5 + 32))(v7, &v13[v15], v4);
      sub_1D2816278(&qword_1ED8A6CE0, MEMORY[0x1E6968848]);
      v18 = sub_1D2877F98();
      v19 = *(v5 + 8);
      v19(v7, v4);
      v19(v10, v4);
      sub_1D22BD238(v13, &unk_1EC6E1D40);
      v17 = v18 ^ 1;
      return v17 & 1;
    }

    (*(v5 + 8))(v10, v4);
    goto LABEL_6;
  }

  if (v16(&v13[v15], 1, v4) != 1)
  {
LABEL_6:
    sub_1D22BD238(v13, &qword_1EC6E2AA8);
    v17 = 1;
    return v17 & 1;
  }

  sub_1D22BD238(v13, &unk_1EC6E1D40);
  v17 = 0;
  return v17 & 1;
}

uint64_t sub_1D28155F4()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal14MagicViewModel__didAppear);
  *(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal14MagicViewModel__didAppear) = *(v0 + 24);
  return sub_1D2805F60(v2);
}

uint64_t sub_1D2815658(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1D22BDFF8;

  return sub_1D2813144(a1, v4, v5, v6);
}

uint64_t sub_1D2815728(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1D22BC8FC;

  return sub_1D2813144(a1, v4, v5, v6);
}

uint64_t sub_1D2815814()
{
  v1 = v0;
  swift_getKeyPath();
  sub_1D2816278(&qword_1EC6DCC48, type metadata accessor for MagicViewModel);
  sub_1D28719E8();

  swift_getKeyPath();
  sub_1D2871A08();

  v2 = OBJC_IVAR____TtC23ImagePlaygroundInternal14MagicViewModel__pendingDisclosures;
  swift_beginAccess();
  v3 = *(v0 + v2);
  if (!*(v3 + 16))
  {
    v7 = 0;
    goto LABEL_9;
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  *(v1 + v2) = v3;
  if ((result & 1) == 0)
  {
    result = sub_1D278BE5C(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  v6 = v5 - 1;
  if (v5 <= 1)
  {
    v5 = 1;
  }

  if (v6 <= v5 - 1)
  {
    *(v1 + v2) = v3;
    v7 = *(v3 + 16);
LABEL_9:
    sub_1D278F0D8(0, v7);
    swift_endAccess();
    swift_getKeyPath();
    sub_1D28719F8();
  }

  __break(1u);
  return result;
}

uint64_t sub_1D28159F0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t (*sub_1D2815A74())()
{
  swift_allocObject();
  swift_weakInit();
  return sub_1D2815B80;
}

uint64_t sub_1D2815ACC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1D22BDFF8;

  return sub_1D280404C(a1, v4, v5, v6);
}

uint64_t sub_1D2815B88(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1D22BDFF8;

  return sub_1D28056A8(a1, v4, v5, v6);
}

void sub_1D2815C3C()
{
  sub_1D2805284(v3);
  v0 = v3[0];
  v1 = v3[1];
  v2 = v4;

  sub_1D2415B64(v0, v1, v2);
}

uint64_t keypath_set_122Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(_OWORD *))
{
  v5 = *(a1 + 32);
  v6 = *(a1 + 16);
  v8[0] = *a1;
  v8[1] = v6;
  v9 = v5;
  return a5(v8);
}

uint64_t sub_1D2815CBC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + 48);
  v4 = *(v1 + 16);
  v5 = *(v1 + 32);
  v6 = *(v2 + 32);
  v7 = *(v2 + 16);
  *(v1 + 16) = *v2;
  *(v1 + 32) = v7;
  *(v1 + 48) = v6;
  v9[0] = v4;
  v9[1] = v5;
  v10 = v3;
  return sub_1D2802110(v9);
}

__n128 sub_1D2815D3C()
{
  v1 = *(v0 + 40);
  v2 = (*(v0 + 16) + OBJC_IVAR____TtC23ImagePlaygroundInternal14MagicViewModel__latestEffectViewSize);
  result = *(v0 + 24);
  *v2 = result;
  v2[1].n128_u8[0] = v1;
  return result;
}

void *sub_1D2815D60()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[2] + OBJC_IVAR____TtC23ImagePlaygroundInternal14MagicViewModel__effectLoadingState;
  v4 = *v3;
  *v3 = v1;
  *(v3 + 8) = v2;
  sub_1D233EDE0(v1);
  return sub_1D233EE24(v4);
}

uint64_t sub_1D2815DC8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D2815E30(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D2815EC4(uint64_t a1)
{
  v4 = *(type metadata accessor for ImageGeneration.PreviewImage(0) - 8);
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v8 = v1[5];
  v9 = v1[6];
  v10 = v1 + ((*(v4 + 80) + 56) & ~*(v4 + 80));
  v11 = *(v10 + *(v4 + 64));
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_1D22BC8FC;

  return sub_1D28128E4(a1, v5, v6, v7, v8, v9, v10, v11);
}

uint64_t sub_1D2816044()
{
  *(*(v0 + 16) + OBJC_IVAR____TtC23ImagePlaygroundInternal14MagicViewModel__loadRecipeTask) = *(v0 + 24);
  sub_1D2870F78();
}

uint64_t sub_1D28160B4(uint64_t a1)
{
  v4 = *(type metadata accessor for ImageGeneration.PreviewImage(0) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1D22BDFF8;

  return sub_1D280EFDC(a1, v6, v7, v8, v1 + v5);
}

uint64_t block_copy_helper_56(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1D2870F78();
}

uint64_t sub_1D28161F8(void *a1, void (*a2)(uint64_t), uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  v6 = *(v3 + 24);
  v7 = *(v3 + 32);
  v8 = (*(v3 + 16) + *a1);
  v9 = *v8;
  v10 = v8[1];
  v11 = *(v3 + 40);
  *v8 = v6;
  v8[1] = v7;
  v12 = *(v8 + 16);
  *(v8 + 16) = v11;
  a2(v6);
  return a3(v9, v10, v12);
}

uint64_t sub_1D2816278(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D28163B8()
{
  v1 = v0;
  v21 = sub_1D28740C8();
  v2 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D2878E38();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1D2878EA8();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v20 - v14;
  sub_1D2878E98();
  (*(v6 + 104))(v8, *MEMORY[0x1E69DC508], v5);
  sub_1D2878E48();
  v16 = sub_1D2878068();
  v17 = [objc_opt_self() systemImageNamed_];

  sub_1D2878E88();
  if (*(v1 + 16))
  {
    sub_1D22BCFD0(0, &unk_1ED89CC80);
    swift_retain_n();
    sub_1D2878D08();
    sub_1D2878E58();
  }

  sub_1D28740E8();
  (*(v10 + 16))(v12, v15, v9);
  sub_1D22BCFD0(0, &unk_1ED89CC30);
  sub_1D2870F78();
  sub_1D2878DF8();
  v18 = sub_1D2878EB8();
  (*(v2 + 104))(v4, *MEMORY[0x1E69DC060], v21);
  sub_1D28740D8();
  (*(v10 + 8))(v15, v9);
  return v18;
}

id sub_1D281672C(void *a1, double a2)
{
  LODWORD(a2) = 1144750080;
  [a1 setContentHuggingPriority:1 forAxis:a2];
  LODWORD(v3) = 1144750080;

  return [a1 setContentHuggingPriority:0 forAxis:v3];
}

uint64_t sub_1D2816794(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D2816884();

  return MEMORY[0x1EEDDAA28](a1, a2, a3, v6);
}

uint64_t sub_1D28167F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D2816884();

  return MEMORY[0x1EEDDA9B8](a1, a2, a3, v6);
}

void sub_1D281685C()
{
  sub_1D2816884();
  sub_1D2875A98();
  __break(1u);
}

unint64_t sub_1D2816884()
{
  result = qword_1EC6E2AB8;
  if (!qword_1EC6E2AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E2AB8);
  }

  return result;
}

unint64_t sub_1D28168E0()
{
  result = qword_1EC6E2AC0;
  if (!qword_1EC6E2AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E2AC0);
  }

  return result;
}

uint64_t sub_1D2816968()
{
  v1[2] = v0;
  v2 = sub_1D2872008();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v1[6] = swift_task_alloc();
  v1[7] = swift_task_alloc();
  v1[8] = swift_task_alloc();
  v1[9] = sub_1D2878568();
  v1[10] = sub_1D2878558();
  v1[11] = sub_1D2878558();
  v3 = sub_1D28784F8();
  v1[12] = v3;
  v1[13] = v4;

  return MEMORY[0x1EEE6DFA0](sub_1D2816AC4, v3, v4);
}

uint64_t sub_1D2816AC4()
{
  *(v0 + 112) = sub_1D28175F0();
  v1 = swift_task_alloc();
  *(v0 + 120) = v1;
  *v1 = v0;
  v1[1] = sub_1D2816B8C;

  return sub_1D274BE84();
}

uint64_t sub_1D2816B8C()
{
  v1 = *v0;

  v2 = *(v1 + 104);
  v3 = *(v1 + 96);

  return MEMORY[0x1EEE6DFA0](sub_1D2816CFC, v3, v2);
}

uint64_t sub_1D2816CFC()
{

  v1 = sub_1D28784F8();

  return MEMORY[0x1EEE6DFA0](sub_1D2816DB4, v1, v0);
}

uint64_t sub_1D2816DB4()
{
  v1 = v0[2];

  v41 = v1;
  sub_1D2817568();
  v2 = sub_1D23B5D64();

  v40 = *(v2 + 16);
  if (v40)
  {
    v3 = 0;
    v4 = v0[4];
    v42 = (v4 + 32);
    v37 = MEMORY[0x1E69E7CC0];
    v39 = v4;
    v45 = (v4 + 8);
    v38 = v2;
    while (1)
    {
      if (v3 >= *(v2 + 16))
      {
        goto LABEL_30;
      }

      v6 = *(v39 + 80);
      v7 = (v6 + 32) & ~v6;
      v8 = *(v39 + 72);
      v9 = *(v39 + 16);
      v9(v0[8], v2 + v7 + v8 * v3, v0[3]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAC80);
      v10 = v7 + 2 * v8;
      v11 = swift_allocObject();
      *(v11 + 16) = xmmword_1D287F550;
      sub_1D2871FC8();
      v46 = v8;
      sub_1D2871F48();
      if (*(*(v41 + 32) + 56) == 1)
      {
        v12 = v0[7];
        v13 = v0[3];
        sub_1D2871EC8();
        v11 = sub_1D27CC780(1uLL, 3, 1, v11);
        *(v11 + 16) = 3;
        (*v42)(v11 + v10, v12, v13);
      }

      v43 = (v6 + 32) & ~v6;
      v44 = v3 + 1;
      v14 = v11 + v7;
      v15 = -*(v11 + 16);
      v16 = -1;
      while (1)
      {
        if (v15 + v16 == -1)
        {
          v26 = v0[8];
          v27 = v0[5];
          v28 = v0[3];

          v29 = *v42;
          (*v42)(v27, v26, v28);
          v30 = v37;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_1D23D885C(0, *(v37 + 16) + 1, 1);
            v30 = v37;
          }

          v2 = v38;
          v3 = v44;
          v32 = *(v30 + 16);
          v31 = *(v30 + 24);
          if (v32 >= v31 >> 1)
          {
            sub_1D23D885C(v31 > 1, v32 + 1, 1);
            v30 = v37;
          }

          v33 = v0[5];
          v34 = v0[3];
          *(v30 + 16) = v32 + 1;
          v37 = v30;
          v29(v30 + v43 + v32 * v46, v33, v34);
          goto LABEL_6;
        }

        if (++v16 >= *(v11 + 16))
        {
          __break(1u);
LABEL_30:
          __break(1u);
        }

        v9(v0[6], v14, v0[3]);
        v17 = sub_1D2871F98();
        v19 = v18;
        if (v17 == sub_1D2871F98() && v19 == v20)
        {
          break;
        }

        v22 = sub_1D2879618();

        if (v22)
        {
          goto LABEL_4;
        }

        v14 += v46;
        v23 = v0[6];
        v24 = v0[3];
        v25 = sub_1D2871E88();
        v5 = *v45;
        (*v45)(v23, v24);
        if (v25)
        {

          goto LABEL_5;
        }
      }

LABEL_4:

      v5 = *v45;
      (*v45)(v0[6], v0[3]);
LABEL_5:
      v5(v0[8], v0[3]);
      v2 = v38;
      v3 = v44;
LABEL_6:
      if (v3 == v40)
      {
        goto LABEL_26;
      }
    }
  }

  v37 = MEMORY[0x1E69E7CC0];
LABEL_26:

  v35 = v0[1];

  return v35(v37);
}

uint64_t sub_1D2817234(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1D2818194;

  return sub_1D281775C(a1);
}

uint64_t sub_1D28172DC(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_1D260DBC0;

  return sub_1D2817DA0();
}

unint64_t sub_1D2817384()
{
  result = qword_1EC6E2AC8;
  if (!qword_1EC6E2AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E2AC8);
  }

  return result;
}

unint64_t sub_1D2817410()
{
  result = qword_1EC6E2AD0;
  if (!qword_1EC6E2AD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E2AD8);
    sub_1D27BB7A4(&qword_1EC6E1EA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E2AD0);
  }

  return result;
}

uint64_t sub_1D28174B0(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_1D27BAA20();
  *v5 = v2;
  v5[1] = sub_1D22BC8FC;

  return MEMORY[0x1EEDB2ED8](a1, a2, v6);
}

uint64_t sub_1D2817568()
{
  if (*(v0 + 24))
  {
    v1 = *(v0 + 24);
  }

  else
  {
    v2 = sub_1D2817664();
    _s7ManagerCMa();
    swift_allocObject();
    v1 = sub_1D239E2B0(v2, 3);
    *(v0 + 24) = v1;
    sub_1D2870F78();
  }

  sub_1D2870F78();
  return v1;
}

uint64_t sub_1D28175F0()
{
  if (*(v0 + 32))
  {
    v1 = *(v0 + 32);
  }

  else
  {
    sub_1D2817664();
    v1 = sub_1D23C6B54();

    *(v0 + 32) = v1;
    sub_1D2870F78();
  }

  sub_1D2870F78();
  return v1;
}

uint64_t sub_1D2817664()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 16);
  }

  else
  {
    type metadata accessor for ServicesFetcher();
    v1 = swift_allocObject();
    *(v1 + 16) = sub_1D25D6570(MEMORY[0x1E69E7CC0]);
    *(v0 + 16) = v1;
    sub_1D2870F78();
  }

  sub_1D2870F78();
  return v1;
}

uint64_t sub_1D28176E0()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1D281775C(uint64_t a1)
{
  v1[2] = a1;
  v1[3] = *(type metadata accessor for ImagePlaygroundStyleEntity() - 8);
  v1[4] = swift_task_alloc();
  v2 = sub_1D2872008();
  v1[5] = v2;
  v1[6] = *(v2 - 8);
  v1[7] = swift_task_alloc();
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();
  type metadata accessor for ImagePlaygroundStyleSource();
  swift_initStaticObject();
  v3 = swift_task_alloc();
  v1[10] = v3;
  *v3 = v1;
  v3[1] = sub_1D28178D0;

  return sub_1D2816968();
}

uint64_t sub_1D28178D0(uint64_t a1)
{
  *(*v1 + 88) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D28179D0, 0, 0);
}

uint64_t sub_1D28179D0()
{
  v1 = v0[2];
  v40 = *(v1 + 16);
  if (v40)
  {
    v2 = 0;
    v3 = v0[6];
    v43 = v0[11];
    v38 = (v3 + 32);
    v39 = v1 + 32;
    v41 = MEMORY[0x1E69E7CC0];
    do
    {
      v42 = v2;
      v5 = (v39 + 16 * v2);
      v7 = *v5;
      v6 = v5[1];
      v8 = *(v43 + 16);
      result = sub_1D2870F68();
      if (v8)
      {
        v10 = 0;
        while (1)
        {
          if (v10 >= *(v43 + 16))
          {
            __break(1u);
            return result;
          }

          v11 = (*(v3 + 80) + 32) & ~*(v3 + 80);
          v12 = *(v3 + 72);
          (*(v3 + 16))(v0[7], v0[11] + v11 + v12 * v10, v0[5]);
          if (sub_1D2871F98() == v7 && v13 == v6)
          {
            break;
          }

          v15 = sub_1D2879618();

          if (v15)
          {
            goto LABEL_16;
          }

          ++v10;
          result = (*(v3 + 8))(v0[7], v0[5]);
          if (v8 == v10)
          {
            goto LABEL_3;
          }
        }

LABEL_16:
        v17 = v0[8];
        v16 = v0[9];
        v18 = v0[7];
        v19 = v0[5];

        v20 = *v38;
        (*v38)(v17, v18, v19);
        v20(v16, v17, v19);
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v21 = v41;
        }

        else
        {
          v21 = sub_1D27CC780(0, v41[2] + 1, 1, v41);
        }

        v4 = v42;
        v23 = v21[2];
        v22 = v21[3];
        if (v23 >= v22 >> 1)
        {
          v21 = sub_1D27CC780(v22 > 1, v23 + 1, 1, v21);
        }

        v24 = v0[9];
        v25 = v0[5];
        v21[2] = v23 + 1;
        v41 = v21;
        v20(v21 + v11 + v23 * v12, v24, v25);
      }

      else
      {
LABEL_3:

        v4 = v42;
      }

      v2 = v4 + 1;
    }

    while (v2 != v40);
  }

  else
  {
    v41 = MEMORY[0x1E69E7CC0];
  }

  v26 = v41[2];
  if (v26)
  {
    v27 = v0[6];
    v28 = v0[3];
    v44 = MEMORY[0x1E69E7CC0];
    sub_1D23D8D38(0, v26, 0);
    v30 = *(v27 + 16);
    v27 += 16;
    v29 = v30;
    v31 = v44;
    v32 = v41 + ((*(v27 + 64) + 32) & ~*(v27 + 64));
    v33 = *(v27 + 56);
    do
    {
      v29(v0[4], v32, v0[5]);
      v35 = *(v44 + 16);
      v34 = *(v44 + 24);
      if (v35 >= v34 >> 1)
      {
        sub_1D23D8D38(v34 > 1, v35 + 1, 1);
      }

      v36 = v0[4];
      *(v44 + 16) = v35 + 1;
      sub_1D2818130(v36, v44 + ((*(v28 + 80) + 32) & ~*(v28 + 80)) + *(v28 + 72) * v35);
      v32 += v33;
      --v26;
    }

    while (v26);
  }

  else
  {

    v31 = MEMORY[0x1E69E7CC0];
  }

  v37 = v0[1];

  return v37(v31);
}

uint64_t sub_1D2817DA0()
{
  v0[2] = *(type metadata accessor for ImagePlaygroundStyleEntity() - 8);
  v0[3] = swift_task_alloc();
  type metadata accessor for ImagePlaygroundStyleSource();
  swift_initStaticObject();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_1D2817E9C;

  return sub_1D2816968();
}

uint64_t sub_1D2817E9C(uint64_t a1)
{
  *(*v1 + 40) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D2817F9C, 0, 0);
}

uint64_t sub_1D2817F9C()
{
  v1 = v0[5];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v0[2];
    v15 = MEMORY[0x1E69E7CC0];
    sub_1D23D8D38(0, v2, 0);
    v4 = v15;
    v14 = sub_1D2872008();
    v5 = *(v14 - 8);
    v6 = *(v5 + 16);
    v7 = v1 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v8 = *(v5 + 72);
    do
    {
      v6(v0[3], v7, v14);
      v10 = *(v15 + 16);
      v9 = *(v15 + 24);
      if (v10 >= v9 >> 1)
      {
        sub_1D23D8D38(v9 > 1, v10 + 1, 1);
      }

      v11 = v0[3];
      *(v15 + 16) = v10 + 1;
      sub_1D2818130(v11, v15 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v10);
      v7 += v8;
      --v2;
    }

    while (v2);
  }

  else
  {

    v4 = MEMORY[0x1E69E7CC0];
  }

  v12 = v0[1];

  return v12(v4);
}

uint64_t sub_1D2818130(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ImagePlaygroundStyleEntity();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D2818198@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D281917C(&qword_1EC6DCC48, type metadata accessor for MagicViewModel);
  sub_1D28719E8();

  *a2 = *(v3 + 155);
  return result;
}

uint64_t sub_1D2818268(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[31] = a5;
  v6[32] = a6;
  v6[30] = a4;
  v6[33] = sub_1D28712C8();
  v6[34] = swift_task_alloc();
  v7 = sub_1D2871318();
  v6[35] = v7;
  v6[36] = *(v7 - 8);
  v6[37] = swift_task_alloc();
  v6[38] = swift_task_alloc();
  v8 = sub_1D2871798();
  v6[39] = v8;
  v6[40] = *(v8 - 8);
  v6[41] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6E1D40);
  v6[42] = swift_task_alloc();
  v6[43] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8E60);
  v6[44] = swift_task_alloc();
  v6[45] = type metadata accessor for Prompt(0);
  v6[46] = swift_task_alloc();
  v6[47] = swift_task_alloc();
  v6[48] = sub_1D2878568();
  v6[49] = sub_1D2878558();
  v10 = sub_1D28784F8();
  v6[50] = v10;
  v6[51] = v9;

  return MEMORY[0x1EEE6DFA0](sub_1D28184B4, v10, v9);
}

uint64_t sub_1D28184B4()
{
  v1 = v0[44];
  v2 = v0[31];
  v3 = v0[30];
  v4 = sub_1D2804570();
  v5 = sub_1D28785F8();
  (*(*(v5 - 8) + 56))(v1, 1, 1, v5);
  sub_1D2870F78();
  sub_1D2870F68();
  v6 = sub_1D2878558();
  v7 = swift_allocObject();
  v8 = MEMORY[0x1E69E85E0];
  v7[2] = v6;
  v7[3] = v8;
  v7[4] = v4;
  v7[5] = v3;
  v7[6] = v2;
  v9 = sub_1D22AE630(0, 0, v1, &unk_1D2883730, v7);
  v0[52] = v9;

  v10 = swift_task_alloc();
  v0[53] = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D93A8);
  *v10 = v0;
  v10[1] = sub_1D281864C;

  return MEMORY[0x1EEE6DA40](v0 + 28, v9, v11);
}

uint64_t sub_1D281864C()
{
  v1 = *v0;

  v2 = *(v1 + 408);
  v3 = *(v1 + 400);

  return MEMORY[0x1EEE6DFA0](sub_1D2818790, v3, v2);
}

uint64_t sub_1D2818790()
{
  v1 = v0[42];
  v2 = v0[43];
  v3 = v0[35];
  v4 = v0[36];

  v56 = v0[28];
  (*(v4 + 56))(v2, 1, 1, v3);
  sub_1D2871778();
  sub_1D281910C(v2, v1);
  if ((*(v4 + 48))(v1, 1, v3) == 1)
  {
    sub_1D22BD238(v0[42], &unk_1EC6E1D40);
    if (qword_1ED89CD48 != -1)
    {
      swift_once();
    }

    v5 = v0[46];
    v6 = v0[30];
    v7 = v0[31];
    *(v5 + 24) = sub_1D24B63AC(qword_1ED8B0010, v6, v7);
    *(v5 + 32) = v8 & 1;
    v9 = sub_1D27E1420(v6, v7);
    v11 = v10;
  }

  else
  {
    (*(v0[36] + 32))(v0[38], v0[42], v0[35]);
    if (qword_1ED89CD48 != -1)
    {
      swift_once();
    }

    v12 = v0[37];
    v13 = v0[38];
    v14 = v0[35];
    v15 = v0[36];
    v16 = qword_1ED8B0010;
    sub_1D28712B8();
    sub_1D281917C(&qword_1ED8A6CF0, MEMORY[0x1E6968678]);
    v0[22] = sub_1D28782D8();
    v0[23] = v17;
    v0[24] = 12369903;
    v0[25] = 0xA300000000000000;
    v0[26] = 0;
    v0[27] = 0xE000000000000000;
    v52 = sub_1D22BD06C();
    v51 = MEMORY[0x1E69E6158];
    v18 = sub_1D2878FA8();
    v20 = v19;

    v21 = sub_1D24B63AC(v16, v18, v20);
    v23 = v22;

    v0[29] = v21;
    sub_1D2436B40();
    (*(v15 + 16))(v12, v13, v14);
    v24 = sub_1D2878AE8();
    v25 = *MEMORY[0x1E69DB5F0];
    v26 = [v24 length];
    v27 = swift_allocObject();
    *(v27 + 16) = v0 + 29;
    v28 = swift_allocObject();
    *(v28 + 16) = sub_1D2436B8C;
    *(v28 + 24) = v27;
    v0[12] = sub_1D2436B94;
    v0[13] = v28;
    v0[8] = MEMORY[0x1E69E9820];
    v0[9] = 1107296256;
    v0[10] = sub_1D267502C;
    v0[11] = &block_descriptor_57;
    v29 = _Block_copy(v0 + 8);
    sub_1D2870F78();

    [v24 enumerateAttribute:v25 inRange:0 options:v26 usingBlock:{0, v29}];

    _Block_release(v29);
    LOBYTE(v29) = swift_isEscapingClosureAtFileLocation();

    if (v29)
    {
      __break(1u);
      return result;
    }

    v31 = v0[46];
    v32 = v0[38];
    v33 = v0[35];
    v34 = v0[36];
    v35 = v0[29];

    *(v31 + 24) = v35;
    *(v31 + 32) = v23 & 1;
    v36 = sub_1D27E0DA0();
    v9 = sub_1D27E1420(v36, v37);
    v11 = v38;

    (*(v34 + 8))(v32, v33);
  }

  v39 = v0[46];
  v40 = v0[45];
  v53 = v0[43];
  v41 = v0[40];
  v42 = v0[41];
  v43 = v0[39];
  v54 = v0[32];
  v55 = v0[47];
  v39[1] = v9;
  v39[2] = v11;
  v39[5] = v56;
  (*(v41 + 16))(v39 + *(v40 + 36), v42, v43);
  *(v39 + *(v40 + 40)) = 0;
  sub_1D2879838();
  sub_1D2877F38();
  v44 = sub_1D2879818();
  (*(v41 + 8))(v42, v43);
  sub_1D22BD238(v53, &unk_1EC6E1D40);
  *v39 = v44;
  sub_1D27DF5A0(v39, v55);
  v45 = sub_1D2803FA4();
  v0[17] = v40;
  v0[18] = sub_1D281917C(&unk_1ED89E418, type metadata accessor for Prompt);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 14);
  sub_1D27DF604(v55, boxed_opaque_existential_1);
  type metadata accessor for AddImageConditioningRepresentationOperation();
  v47 = swift_allocObject();
  *(v47 + 32) = 0u;
  *(v47 + 48) = 0u;
  *(v47 + 64) = 0u;
  *(v47 + 80) = 0u;
  *(v47 + 96) = 0u;
  *(v47 + 16) = 0u;
  *(v47 + 112) = 1;
  *(v47 + 114) = 1;
  sub_1D22D79FC(v0 + 7, (v0 + 2));
  v0[7] = v45;
  swift_beginAccess();
  sub_1D22D3E98((v0 + 2), v47 + 16);
  swift_endAccess();
  *(v47 + 113) = 0;
  v48 = *(v54 + 128);
  sub_1D27FDB14();
  sub_1D27DF058(v47, v48);
  v49 = v0[47];

  sub_1D27DF668(v49);

  v50 = v0[1];

  return v50();
}

void sub_1D2818E70(void *a1)
{
  v2 = sub_1D2873CB8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v6 = a1;
    sub_1D28726B8();
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
      _os_log_impl(&dword_1D226E000, v8, v9, "Cannot add image conditioning representation with error: %@", v10, 0xCu);
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

uint64_t sub_1D281906C()
{
  swift_getKeyPath();
  sub_1D281917C(&qword_1EC6DCC48, type metadata accessor for MagicViewModel);
  sub_1D28719E8();

  return *(v0 + 155);
}

uint64_t sub_1D281910C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6E1D40);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D281917C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t block_copy_helper_57(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1D2870F78();
}

uint64_t sub_1D28191DC(uint64_t a1)
{
  swift_getKeyPath();
  sub_1D281B544(&qword_1EC6D8960, type metadata accessor for GPAlertStack);
  sub_1D28719E8();

  swift_beginAccess();
  v2 = *(a1 + 16);
  if (*(v2 + 16))
  {
    v3 = *(v2 + 32);
    swift_getErrorValue();
    v4 = v3;
    sub_1D2879748();
  }

  sub_1D2878568();
  sub_1D2870F78();
  v5 = sub_1D2878558();
  v6 = swift_allocObject();
  v7 = MEMORY[0x1E69E85E0];
  v6[2] = v5;
  v6[3] = v7;
  v6[4] = a1;
  sub_1D2870F78();
  v8 = sub_1D2878558();
  v9 = swift_allocObject();
  v9[2] = v8;
  v9[3] = v7;
  v9[4] = a1;
  sub_1D2877528();
  swift_getKeyPath();
  sub_1D28719E8();

  v10 = *(a1 + 16);
  if (*(v10 + 16))
  {
    v11 = *(v10 + 32);
    v12 = v11;
  }

  else
  {
    v11 = 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAAC8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DE6C0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAAD0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D94B0);
  sub_1D282DFBC();
  sub_1D22BD06C();
  sub_1D22BB9D8(&qword_1ED89D158, &qword_1EC6DE6C0);
  sub_1D23D4398();
  sub_1D2876DE8();
}

uint64_t sub_1D2819578(uint64_t a1)
{
  swift_getKeyPath();
  sub_1D281B544(&qword_1EC6D8960, type metadata accessor for GPAlertStack);
  sub_1D28719E8();

  swift_beginAccess();
  v2 = *(a1 + 16);
  if (*(v2 + 16))
  {
    v3 = *(v2 + 32);
    swift_getErrorValue();
    v4 = v3;
    sub_1D2879748();
  }

  sub_1D2878568();
  sub_1D2870F78();
  v5 = sub_1D2878558();
  v6 = swift_allocObject();
  v7 = MEMORY[0x1E69E85E0];
  v6[2] = v5;
  v6[3] = v7;
  v6[4] = a1;
  sub_1D2870F78();
  v8 = sub_1D2878558();
  v9 = swift_allocObject();
  v9[2] = v8;
  v9[3] = v7;
  v9[4] = a1;
  sub_1D2877528();
  swift_getKeyPath();
  sub_1D28719E8();

  v10 = *(a1 + 16);
  if (*(v10 + 16))
  {
    v11 = *(v10 + 32);
    v12 = v11;
  }

  else
  {
    v11 = 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E2BB0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DE6C0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAAD0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D94B0);
  sub_1D282CE68();
  sub_1D22BD06C();
  sub_1D22BB9D8(&qword_1ED89D158, &qword_1EC6DE6C0);
  sub_1D23D4398();
  sub_1D2876DE8();
}

uint64_t sub_1D2819940@<X0>(_BYTE *a1@<X8>)
{
  sub_1D26D8AA4();
  result = sub_1D2875638();
  *a1 = v3;
  return result;
}

uint64_t MagicView.init(magicViewModel:)@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for MagicView(0);
  v3 = a1 + v2[5];
  sub_1D28772F8();
  *v3 = v8;
  *(v3 + 16) = v9;
  *(a1 + v2[6]) = 0;
  v4 = v2[7];
  if (qword_1EC6D8968 != -1)
  {
    swift_once();
  }

  *(a1 + v4) = qword_1EC6E3B98;
  v5 = (a1 + v2[8]);
  type metadata accessor for ComposingFocusState();
  *(swift_allocObject() + 16) = 3;
  sub_1D2870F78();
  sub_1D2871A18();
  sub_1D28772F8();
  *v5 = v8;
  v6 = a1 + v2[9];
  sub_1D28772F8();
  *v6 = v8;
  *(v6 + 8) = *(&v8 + 1);
  type metadata accessor for MagicViewModel();
  sub_1D281B544(&qword_1EC6DCC48, type metadata accessor for MagicViewModel);
  return sub_1D2877638();
}

uint64_t sub_1D2819BAC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D281B544(&qword_1EC6DCC48, type metadata accessor for MagicViewModel);
  sub_1D28719E8();

  *a2 = *(v3 + 152);
  return result;
}

uint64_t sub_1D2819C7C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D281B544(&qword_1EC6DCC48, type metadata accessor for MagicViewModel);
  sub_1D28719E8();

  *a2 = *(v3 + 153);
  return result;
}

uint64_t sub_1D2819D4C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D281B544(&qword_1EC6DCC48, type metadata accessor for MagicViewModel);
  sub_1D28719E8();

  *a2 = *(v3 + 154);
  return result;
}

uint64_t sub_1D2819E1C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D281B544(&qword_1EC6DCC48, type metadata accessor for MagicViewModel);
  sub_1D28719E8();

  v4 = OBJC_IVAR____TtC23ImagePlaygroundInternal14MagicViewModel__pendingDisclosures;
  swift_beginAccess();
  *a2 = *(v3 + v4);
  return sub_1D2870F68();
}

uint64_t sub_1D2819F60@<X0>(uint64_t *a1@<X0>, void *a2@<X4>, _BYTE *a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  sub_1D281B544(&qword_1EC6DCC48, type metadata accessor for MagicViewModel);
  sub_1D28719E8();

  *a3 = *(v5 + *a2);
  return result;
}

uint64_t sub_1D281A03C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D281B544(&qword_1EC6DCC48, type metadata accessor for MagicViewModel);
  sub_1D28719E8();

  v4 = OBJC_IVAR____TtC23ImagePlaygroundInternal14MagicViewModel__selectedPerson;
  swift_beginAccess();
  return sub_1D22BD1D0(v3 + v4, a2, &qword_1EC6D8F80);
}

uint64_t sub_1D281A114(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8F80);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v6 - v3;
  sub_1D22BD1D0(a1, &v6 - v3, &qword_1EC6D8F80);
  return sub_1D2806E44(v4);
}

uint64_t MagicView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v46 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E2AE8);
  v4 = *(v3 - 8);
  v44 = v3;
  v45 = v4;
  MEMORY[0x1EEE9AC00](v3);
  v42 = &v38 - v5;
  v6 = type metadata accessor for MagicView(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E2AF0);
  v11 = *(v10 - 8);
  v39 = v10;
  v40 = v11;
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v38 - v12;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E2AF8);
  v43 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v15 = &v38 - v14;
  v38 = v2;
  sub_1D282A9C0(v2, v9, type metadata accessor for MagicView);
  v16 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v17 = swift_allocObject();
  sub_1D282AA28(v9, v17 + v16, type metadata accessor for MagicView);
  KeyPath = swift_getKeyPath();
  v48 = sub_1D281B354;
  v49 = v17;
  LOBYTE(v50) = 1;
  v51 = 0xD000000000000028;
  v52 = 0x80000001D28AFF80;
  v53 = KeyPath;
  v54 = 0;
  v19 = type metadata accessor for HomeAnimationCoordinator();
  v20 = swift_allocObject();
  v21 = OBJC_IVAR____TtC23ImagePlaygroundInternal24HomeAnimationCoordinator__animatedAssetID;
  v22 = sub_1D2871818();
  (*(*(v22 - 8) + 56))(v20 + v21, 1, 1, v22);
  *(v20 + OBJC_IVAR____TtC23ImagePlaygroundInternal24HomeAnimationCoordinator__transitionFlow) = 0;
  v23 = (v20 + OBJC_IVAR____TtC23ImagePlaygroundInternal24HomeAnimationCoordinator__detailViewDidAppear);
  *v23 = 0;
  v23[1] = 0;
  v24 = (v20 + OBJC_IVAR____TtC23ImagePlaygroundInternal24HomeAnimationCoordinator_upscalingMatchedTransitionID);
  *v24 = 0xD000000000000025;
  v24[1] = 0x80000001D28B37F0;
  sub_1D2871A18();
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E2B00);
  v26 = sub_1D281B3D4();
  v27 = sub_1D281B544(&qword_1ED89FD50, type metadata accessor for HomeAnimationCoordinator);
  sub_1D28767E8();

  v28 = sub_1D28779E8();
  v29 = type metadata accessor for ComposingAnimationCoordinator();
  swift_allocObject();
  sub_1D245EBCC(v28);
  v48 = v25;
  v49 = v19;
  v50 = v26;
  v51 = v27;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v31 = sub_1D281B544(&qword_1ED89F308, type metadata accessor for ComposingAnimationCoordinator);
  v32 = v39;
  sub_1D28767E8();

  (*(v40 + 8))(v13, v32);
  v33 = v42;
  v34 = v44;
  sub_1D2877628();
  swift_getKeyPath();
  sub_1D2877648();

  (*(v45 + 8))(v33, v34);
  v35 = v47;
  v48 = v32;
  v49 = v29;
  v50 = OpaqueTypeConformance2;
  v51 = v31;
  swift_getOpaqueTypeConformance2();
  v36 = v41;
  sub_1D28766E8();

  return (*(v43 + 8))(v15, v36);
}

uint64_t sub_1D281A7D0@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v82 = a2;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E2DD0);
  v73 = *(v84 - 8);
  MEMORY[0x1EEE9AC00](v84);
  v72 = &v70 - v3;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E2DD8);
  MEMORY[0x1EEE9AC00](v79);
  v80 = (&v70 - v4);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E2DE0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v85 = &v70 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v87 = &v70 - v8;
  v9 = type metadata accessor for MagicView(0);
  v75 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  *&v76 = v10;
  *&v77 = &v70 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E2DE8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v70 - v12;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E2DF0);
  v78 = *(v83 - 8);
  MEMORY[0x1EEE9AC00](v83);
  v81 = &v70 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v86 = &v70 - v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E2AE8);
  sub_1D2877618();
  v17 = v101;
  swift_getKeyPath();
  *&v101 = v17;
  v74 = sub_1D281B544(&qword_1EC6DCC48, type metadata accessor for MagicViewModel);
  sub_1D28719E8();

  v18 = *(v17 + 16);
  v70 = *(v17 + 32);
  v71 = v18;
  v19 = *(v17 + 48);

  if (v19)
  {
    LOBYTE(v94[0]) = 1;
    LOBYTE(v88) = 0;
    *&v96 = 0;
    BYTE8(v96) = 1;
    HIBYTE(v100) = 0;
  }

  else
  {
    v20 = sub_1D28779E8();
    sub_1D2877618();
    v21 = v101;
    sub_1D28749D8();
    v23 = v22;
    *&v96 = 0;
    sub_1D28772F8();
    v24 = v101;
    v25 = sub_1D2877098();
    v26 = sub_1D2876338();
    LOBYTE(v94[0]) = 1;
    *&v96 = v20;
    *(&v96 + 1) = v21;
    v97 = v71;
    v98 = v70;
    *v99 = v23;
    *&v99[8] = v24;
    *&v99[24] = v25;
    LOBYTE(v100) = v26;
    HIBYTE(v100) = 1;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E2DF8);
  sub_1D282DBA8();
  sub_1D2875AF8();
  sub_1D2877618();
  sub_1D27FE818();

  type metadata accessor for AbstractEffectViewModel();
  sub_1D281B544(&qword_1ED8A0CA8, type metadata accessor for AbstractEffectViewModel);
  sub_1D2877638();
  v27 = type metadata accessor for EffectView();
  v28 = v27[5];
  *&v13[v28] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6E1C40);
  swift_storeEnumTagMultiPayload();
  v29 = v27[6];
  *&v13[v29] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE690);
  swift_storeEnumTagMultiPayload();
  v30 = &v13[v27[7]];
  *v30 = swift_getKeyPath();
  v30[8] = 0;
  v31 = v27[8];
  *&v13[v31] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E1C50);
  swift_storeEnumTagMultiPayload();
  v32 = &v13[v27[9]];
  *v32 = swift_getKeyPath();
  v32[8] = 0;
  v33 = a1 + *(v9 + 36);
  v34 = *v33;
  v35 = *(v33 + 8);
  LOBYTE(v96) = v34;
  *(&v96 + 1) = v35;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE890);
  sub_1D2877308();
  LOBYTE(v32) = v94[0];
  v36 = &v13[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0488) + 36)];
  *v36 = v32;
  v37 = *(type metadata accessor for BlurredEffectBackgroundViewModifier() + 20);
  *&v36[v37] = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v38 = sub_1D2874F98();
  v39 = sub_1D2876338();
  v40 = &v13[*(v11 + 36)];
  *v40 = v38;
  v40[8] = v39;
  sub_1D2877618();
  v41 = sub_1D280D288();

  LOBYTE(v96) = v41 & 1;
  v42 = v77;
  sub_1D282A9C0(a1, v77, type metadata accessor for MagicView);
  v43 = (*(v75 + 80) + 16) & ~*(v75 + 80);
  v44 = swift_allocObject();
  sub_1D282AA28(v42, v44 + v43, type metadata accessor for MagicView);
  sub_1D282DE1C();
  sub_1D2876F58();

  sub_1D22BD238(v13, &qword_1EC6E2DE8);
  sub_1D2877618();
  v45 = v96;
  swift_getKeyPath();
  *&v96 = v45;
  sub_1D28719E8();

  v46 = *(v45 + 16);
  v76 = *(v45 + 32);
  v77 = v46;
  LOBYTE(v43) = *(v45 + 48);

  if (v43)
  {
    v48 = v80;
    *v80 = 0;
    *(v48 + 8) = 1;
    swift_storeEnumTagMultiPayload();
    sub_1D22BB9D8(&qword_1EC6E2E30, &qword_1EC6E2DD0);
    v49 = v87;
    sub_1D2875AF8();
  }

  else
  {
    MEMORY[0x1EEE9AC00](v47);
    *(&v70 - 6) = a1;
    v50 = v77;
    *(&v70 - 24) = v76;
    *(&v70 - 40) = v50;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E2E18);
    sub_1D282DEB8();
    v51 = v72;
    sub_1D2875B28();
    v52 = v73;
    v53 = v84;
    (*(v73 + 16))(v80, v51, v84);
    swift_storeEnumTagMultiPayload();
    sub_1D22BB9D8(&qword_1EC6E2E30, &qword_1EC6E2DD0);
    v49 = v87;
    sub_1D2875AF8();
    (*(v52 + 8))(v51, v53);
  }

  v90 = v103;
  v91 = v104;
  v92 = v105;
  v93 = v106;
  v88 = v101;
  v89 = v102;
  v54 = v78;
  v55 = *(v78 + 16);
  v56 = v81;
  v57 = v86;
  v58 = v83;
  v55(v81, v86, v83);
  v59 = v49;
  v60 = v85;
  sub_1D22BD1D0(v59, v85, &qword_1EC6E2DE0);
  v61 = v91;
  v94[2] = v90;
  v94[3] = v91;
  v62 = v92;
  v94[4] = v92;
  v63 = v93;
  v95 = v93;
  v64 = v88;
  v65 = v89;
  v94[0] = v88;
  v94[1] = v89;
  v66 = v82;
  *(v82 + 32) = v90;
  *(v66 + 48) = v61;
  *(v66 + 64) = v62;
  *(v66 + 80) = v63;
  *v66 = v64;
  *(v66 + 16) = v65;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E2E38);
  v55((v66 + *(v67 + 48)), v56, v58);
  sub_1D22BD1D0(v60, v66 + *(v67 + 64), &qword_1EC6E2DE0);
  sub_1D22BD1D0(v94, &v96, &qword_1EC6E2E40);
  sub_1D22BD238(v87, &qword_1EC6E2DE0);
  v68 = *(v54 + 8);
  v68(v57, v58);
  sub_1D22BD238(v60, &qword_1EC6E2DE0);
  v68(v56, v58);
  v98 = v90;
  *v99 = v91;
  *&v99[16] = v92;
  v100 = v93;
  v96 = v88;
  v97 = v89;
  return sub_1D22BD238(&v96, &qword_1EC6E2E40);
}

uint64_t sub_1D281B354@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MagicView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_1D281A7D0(v4, a1);
}

unint64_t sub_1D281B3D4()
{
  result = qword_1EC6E2B08;
  if (!qword_1EC6E2B08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E2B00);
    sub_1D281B48C();
    sub_1D22BB9D8(&qword_1ED89D348, &unk_1EC6E1DF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E2B08);
  }

  return result;
}

unint64_t sub_1D281B48C()
{
  result = qword_1EC6E2B10;
  if (!qword_1EC6E2B10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E2B18);
    sub_1D22BB9D8(&qword_1EC6E2B20, &qword_1EC6E2B28);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E2B10);
  }

  return result;
}

uint64_t sub_1D281B544(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D281B58C()
{
  sub_1D2877938();
  sub_1D2874BE8();
}

uint64_t sub_1D281B5F8()
{
  type metadata accessor for MagicView(0);
  sub_1D2870F78();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE890);
  sub_1D2877308();
  sub_1D2877318();
}

uint64_t sub_1D281B6B4@<X0>(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>, double a5@<D3>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E2AE8);
  sub_1D2877618();
  type metadata accessor for MagicViewModel();
  sub_1D281B544(&qword_1EC6DCC48, type metadata accessor for MagicViewModel);
  sub_1D2877638();
  v10 = type metadata accessor for MagicEditViewForeground(0);
  v11 = (a1 + v10[5]);
  *v11 = a2;
  v11[1] = a3;
  v11[2] = a4;
  v11[3] = a5;
  v12 = a1 + v10[6];
  sub_1D28772F8();
  *v12 = v19;
  *(v12 + 16) = v20;
  v13 = v10[7];
  *(a1 + v13) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE690);
  swift_storeEnumTagMultiPayload();
  v14 = v10[8];
  if (qword_1EC6D8968 != -1)
  {
    swift_once();
  }

  *(a1 + v14) = qword_1EC6E3B98;
  sub_1D2870F78();
  v15 = sub_1D2877098();
  v16 = sub_1D2876338();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E2E18);
  v18 = a1 + *(result + 36);
  *v18 = v15;
  *(v18 + 8) = v16;
  return result;
}

uint64_t sub_1D281B87C@<X0>(void *a1@<X8>)
{
  v2 = sub_1D23C7998()[4];

  *a1 = v2;
  return result;
}

void sub_1D281B8CC(void **a1)
{
  v1 = *a1;
  v2 = sub_1D23C7998();
  v4 = v2[4];
  v2[4] = v1;
  v3 = v1;
}

void sub_1D281B980()
{
  sub_1D282E2A4(319, &qword_1EC6E2B40, type metadata accessor for MagicViewModel, MEMORY[0x1E6981AA0]);
  if (v0 <= 0x3F)
  {
    sub_1D28311AC(319, &qword_1ED89D1A0, MEMORY[0x1E69E6158], MEMORY[0x1E6981790]);
    if (v1 <= 0x3F)
    {
      type metadata accessor for GPAlertStack();
      if (v2 <= 0x3F)
      {
        sub_1D282E2A4(319, &qword_1EC6E2B48, type metadata accessor for ComposingFocusState, MEMORY[0x1E6981790]);
        if (v3 <= 0x3F)
        {
          sub_1D28311AC(319, &qword_1ED89D190, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1D281BB44()
{
  sub_1D282E2A4(319, &qword_1EC6E2B40, type metadata accessor for MagicViewModel, MEMORY[0x1E6981AA0]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for CGRect(319);
    if (v1 <= 0x3F)
    {
      sub_1D28311AC(319, &qword_1ED89D1A0, MEMORY[0x1E69E6158], MEMORY[0x1E6981790]);
      if (v2 <= 0x3F)
      {
        sub_1D22EAE8C();
        if (v3 <= 0x3F)
        {
          type metadata accessor for GPAlertStack();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_1D281BC64(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D281BCAC(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_1D281BD28@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = *(sub_1D28054FC() + OBJC_IVAR____TtC23ImagePlaygroundInternal17PreviewsViewModel_previewsStore);
  swift_getKeyPath();
  sub_1D281B544(&qword_1ED8A0FD0, type metadata accessor for GeneratedPreviewsStore);
  sub_1D28719E8();

  swift_beginAccess();
  v5 = *(v4 + 16);
  sub_1D2870F68();

  v6 = *(v5 + 16);

  if (v6)
  {
    sub_1D28778D8();
    v7 = sub_1D28778B8();
  }

  else
  {
    v7 = 0;
  }

  if (qword_1EC6D8D98 != -1)
  {
    swift_once();
  }

  *a1 = qword_1EC6E2AE0;
  *(a1 + 8) = 0x403E000000000000;
  *(a1 + 16) = 0;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E2D10);
  sub_1D281BEC0(v2, v7, a1 + *(v8 + 44));
}

uint64_t sub_1D281BEC0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v87 = a2;
  v86 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E2D18);
  v5 = v4 - 8;
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v79 - v6;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E2D20);
  MEMORY[0x1EEE9AC00](v80);
  v9 = &v79 - v8;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E2D28);
  MEMORY[0x1EEE9AC00](v82);
  v85 = &v79 - v10;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E2D30);
  MEMORY[0x1EEE9AC00](v84);
  v83 = &v79 - v11;
  v12 = *a1;
  v81 = a1[1];
  v79 = sub_1D28054FC();
  v13 = *(a1 + 2);
  v14 = *(a1 + 3);
  v15 = *(a1 + 4);
  v16 = *(a1 + 5);
  v94.origin.x = v13;
  v94.origin.y = v14;
  v94.size.width = v15;
  v94.size.height = v16;
  Width = CGRectGetWidth(v94);
  v18 = a1[6];
  v89 = *(a1 + 7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA708);
  sub_1D2877328();
  v19 = v91;
  v20 = v92;
  v21 = type metadata accessor for MagicPaperPreviewsView();
  v22 = &v7[v21[5]];
  *v22 = swift_getKeyPath();
  v22[8] = 0;
  v23 = &v7[v21[6]];
  *v23 = swift_getKeyPath();
  v23[8] = 0;
  v24 = &v7[v21[7]];
  type metadata accessor for HomeAnimationCoordinator();
  sub_1D281B544(&qword_1ED89FD50, type metadata accessor for HomeAnimationCoordinator);
  *v24 = sub_1D28744C8();
  v24[8] = v25 & 1;
  v26 = &v7[v21[9]];
  *&v89 = 0;
  sub_1D28772F8();
  v27 = *(&v91 + 1);
  *v26 = v91;
  *(v26 + 1) = v27;
  v28 = &v7[v21[10]];
  *&v89 = 0;
  sub_1D28772F8();
  v29 = *(&v91 + 1);
  *v28 = v91;
  *(v28 + 1) = v29;
  v30 = &v7[v21[11]];
  LOBYTE(v89) = 0;
  sub_1D28772F8();
  v31 = *(&v91 + 1);
  *v30 = v91;
  *(v30 + 1) = v31;
  v32 = &v7[v21[12]];
  v33 = type metadata accessor for KeyboardEventListener();
  v34 = objc_allocWithZone(v33);
  v35 = &v34[OBJC_IVAR____TtC23ImagePlaygroundInternal21KeyboardEventListener_keyboardWillShow];
  *v35 = 0;
  *(v35 + 1) = 0;
  v36 = &v34[OBJC_IVAR____TtC23ImagePlaygroundInternal21KeyboardEventListener_keyboardWillHide];
  *v36 = 0;
  *(v36 + 1) = 0;
  v37 = &v34[OBJC_IVAR____TtC23ImagePlaygroundInternal21KeyboardEventListener_keyboardDidShow];
  *v37 = 0;
  *(v37 + 1) = 0;
  v38 = &v34[OBJC_IVAR____TtC23ImagePlaygroundInternal21KeyboardEventListener_keyboardDidHide];
  *v38 = 0;
  *(v38 + 1) = 0;
  *&v34[OBJC_IVAR____TtC23ImagePlaygroundInternal21KeyboardEventListener_targetsOfInterest] = 1;
  v90.receiver = v34;
  v90.super_class = v33;
  *&v89 = objc_msgSendSuper2(&v90, sel_init);
  sub_1D28772F8();
  v39 = *(&v91 + 1);
  *v32 = v91;
  *(v32 + 1) = v39;
  *&v7[v21[13]] = v12;
  type metadata accessor for PreviewsViewModel(0);
  sub_1D281B544(&qword_1ED8A2D20, type metadata accessor for PreviewsViewModel);
  sub_1D2877638();
  *&v7[v21[14]] = v18;
  v7[v21[15]] = 0;
  *&v7[v21[16]] = Width;
  v40 = &v7[v21[8]];
  *v40 = v19;
  *(v40 + 2) = v20;
  v7[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E2D38) + 36)] = 0;
  v95.origin.x = v13;
  v95.origin.y = v14;
  v95.size.width = v15;
  v95.size.height = v16;
  CGRectGetWidth(v95);
  v96.origin.x = v13;
  v96.origin.y = v14;
  v96.size.width = v15;
  v96.size.height = v16;
  CGRectGetHeight(v96);
  sub_1D2877848();
  sub_1D28748C8();
  v41 = &v7[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E2D40) + 36)];
  v42 = v92;
  *v41 = v91;
  *(v41 + 1) = v42;
  *(v41 + 2) = v93;
  v43 = sub_1D28777F8();
  v45 = v44;
  v46 = &v7[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E2D48) + 36)];
  sub_1D281C77C(v46);
  v47 = (v46 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E2D50) + 36));
  *v47 = v43;
  v47[1] = v45;
  LOBYTE(v21) = sub_1D2876368();
  v97.origin.x = v13;
  v97.origin.y = v14;
  v97.size.width = v15;
  v97.size.height = v16;
  CGRectGetMinX(v97);
  sub_1D2874298();
  v49 = v48;
  v51 = v50;
  v53 = v52;
  v55 = v54;
  v56 = &v7[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E2D58) + 36)];
  *v56 = v21;
  *(v56 + 1) = v49;
  *(v56 + 2) = v51;
  *(v56 + 3) = v53;
  *(v56 + 4) = v55;
  v56[40] = 0;
  LOBYTE(v21) = sub_1D2876348();
  v98.origin.x = v13;
  v98.origin.y = v14;
  v98.size.width = v15;
  v98.size.height = v16;
  CGRectGetMinY(v98);
  sub_1D2874298();
  v57 = &v7[*(v5 + 44)];
  *v57 = v21;
  *(v57 + 1) = v58;
  *(v57 + 2) = v59;
  *(v57 + 3) = v60;
  *(v57 + 4) = v61;
  v57[40] = 0;
  LOBYTE(v21) = sub_1D2876328();
  v62 = sub_1D2876378();
  sub_1D2876378();
  if (sub_1D2876378() != v21)
  {
    v62 = sub_1D2876378();
  }

  v63 = sub_1D2874F98();
  sub_1D22EC9BC(v7, v9, &qword_1EC6E2D18);
  v64 = &v9[*(v80 + 36)];
  *v64 = v63;
  v64[8] = v62;
  v65 = OBJC_IVAR____TtC23ImagePlaygroundInternal14MagicViewModel____lazy_storage___previewsViewModel;
  v66 = v81;
  v67 = *(*(v81 + OBJC_IVAR____TtC23ImagePlaygroundInternal14MagicViewModel____lazy_storage___previewsViewModel) + OBJC_IVAR____TtC23ImagePlaygroundInternal17PreviewsViewModel_previewsStore);
  swift_getKeyPath();
  *&v89 = v67;
  sub_1D281B544(&qword_1ED8A0FD0, type metadata accessor for GeneratedPreviewsStore);
  sub_1D2870F78();
  sub_1D28719E8();

  swift_beginAccess();
  v68 = *(v67 + 16);
  sub_1D2870F68();

  v69 = *(v68 + 16);

  if (v69)
  {
    v70 = 1.0;
  }

  else
  {
    v70 = 0.0;
  }

  v71 = v9;
  v72 = v85;
  sub_1D22EC9BC(v71, v85, &qword_1EC6E2D20);
  *(v72 + *(v82 + 36)) = v70;
  v73 = *(*(v66 + v65) + OBJC_IVAR____TtC23ImagePlaygroundInternal17PreviewsViewModel_previewsStore);
  swift_getKeyPath();
  v88 = v73;
  sub_1D2870F78();
  sub_1D28719E8();

  swift_beginAccess();
  v74 = *(v73 + 16);
  sub_1D2870F68();

  v75 = *(v74 + 16);

  v76 = v83;
  sub_1D22EC9BC(v72, v83, &qword_1EC6E2D28);
  v77 = v76 + *(v84 + 36);
  *v77 = v87;
  *(v77 + 8) = v75 != 0;
  sub_1D22EC9BC(v76, v86, &qword_1EC6E2D30);
  return sub_1D2870F78();
}

uint64_t sub_1D281C77C@<X0>(uint64_t a1@<X8>)
{
  v48 = a1;
  v2 = sub_1D2873998();
  v45 = *(v2 - 8);
  v46 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v44 = &v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1D28750E8();
  v40 = *(v4 - 8);
  v41 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v39 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E2D60);
  v37 = *(v6 - 8);
  v38 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v36 - v7;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E2D68);
  v9 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47);
  v43 = &v36 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9490);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v36 - v12;
  v14 = type metadata accessor for ImageGeneration.PreviewImage(0);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v42 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = v1;
  v17 = *(sub_1D28054FC() + OBJC_IVAR____TtC23ImagePlaygroundInternal17PreviewsViewModel_previewsStore);
  swift_getKeyPath();
  v49 = v17;
  sub_1D281B544(&qword_1ED8A0FD0, type metadata accessor for GeneratedPreviewsStore);
  sub_1D28719E8();

  swift_beginAccess();
  v18 = *(v17 + 16);
  sub_1D2870F68();

  v19 = *(v18 + 16);

  if (!v19)
  {
    v20 = sub_1D2805AB0();
    if (v22 == 0xFF)
    {
      goto LABEL_5;
    }

    sub_1D22FD918(v20, v21, v22);
  }

  if (sub_1D2811164())
  {
    return (*(v9 + 56))(v48, 1, 1, v47);
  }

LABEL_5:
  sub_1D280DAE0(v13);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_1D22BD238(v13, &qword_1EC6D9490);
    return (*(v9 + 56))(v48, 1, 1, v47);
  }

  v24 = v42;
  v25 = sub_1D282AA28(v13, v42, type metadata accessor for ImageGeneration.PreviewImage);
  MEMORY[0x1EEE9AC00](v25);
  *(&v36 - 2) = v36;
  *(&v36 - 1) = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E2D70);
  type metadata accessor for ContextualMenuItems();
  sub_1D282D71C();
  sub_1D281B544(&qword_1EC6E2DB8, type metadata accessor for ContextualMenuItems);
  sub_1D2876528();
  v26 = v39;
  sub_1D28750D8();
  sub_1D22BB9D8(&qword_1EC6E2DC0, &qword_1EC6E2D60);
  sub_1D281B544(&qword_1ED89D748, MEMORY[0x1E697C248]);
  v27 = v43;
  v28 = v38;
  v29 = v41;
  sub_1D28767A8();
  (*(v40 + 8))(v26, v29);
  (*(v37 + 8))(v8, v28);
  if (qword_1ED8A6B68 != -1)
  {
    swift_once();
  }

  v30 = v46;
  v31 = __swift_project_value_buffer(v46, qword_1ED8B02B8);
  (*(v45 + 16))(v44, v31, v30);
  v32 = sub_1D2877108();
  v33 = v27 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E2DC8) + 36);
  *v33 = v32;
  *(v33 + 8) = 256;
  v34 = v47;
  *(v27 + *(v47 + 36)) = xmmword_1D28AA310;
  sub_1D2875798();

  if (qword_1ED89E0E8 != -1)
  {
    swift_once();
  }

  v35 = v48;
  sub_1D22EC9BC(v27, v48, &qword_1EC6E2D68);
  (*(v9 + 56))(v35, 0, 1, v34);
  return sub_1D282E9F8(v24, type metadata accessor for ImageGeneration.PreviewImage);
}

uint64_t sub_1D281CEFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = *(a1 + 8);
  v7 = type metadata accessor for ContextualMenuItems();
  sub_1D282A9C0(a2, a3 + v7[5], type metadata accessor for ImageGeneration.PreviewImage);
  v8 = swift_allocObject();
  v9 = *(a1 + 48);
  *(v8 + 48) = *(a1 + 32);
  *(v8 + 64) = v9;
  *(v8 + 80) = *(a1 + 64);
  v10 = *(a1 + 16);
  *(v8 + 16) = *a1;
  *(v8 + 32) = v10;
  *a3 = v6;
  v11 = (a3 + v7[6]);
  *v11 = sub_1D282DACC;
  v11[1] = v8;
  v12 = a3 + v7[7];
  *v12 = swift_getKeyPath();
  v12[8] = 0;
  sub_1D2870F78();
  return sub_1D282DAD4(a1, v14);
}

uint64_t sub_1D281CFEC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8E60);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v11 - v3;
  v5 = *(a1 + 8);
  v6 = sub_1D28785F8();
  (*(*(v6 - 8) + 56))(v4, 1, 1, v6);
  sub_1D2878568();
  swift_retain_n();
  v7 = sub_1D2878558();
  v8 = swift_allocObject();
  v9 = MEMORY[0x1E69E85E0];
  v8[2] = v7;
  v8[3] = v9;
  v8[4] = &unk_1D28AABF0;
  v8[5] = v5;
  sub_1D22AE01C(0, 0, v4, &unk_1D28820B0, v8);
}

uint64_t sub_1D281D130@<X0>(uint64_t a1@<X8>)
{
  v46 = a1;
  v1 = sub_1D2874E88();
  v44 = *(v1 - 8);
  v45 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v43 = &v39 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1D2875718();
  v40 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E2D98);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v39 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E2D90);
  v41 = *(v9 - 8);
  v42 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v39 - v10;
  v12 = sub_1D2875798();
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  if (qword_1ED89E0E8 != -1)
  {
    v12 = swift_once();
  }

  MEMORY[0x1EEE9AC00](v12);
  *(&v39 - 8) = v13;
  *(&v39 - 7) = v15;
  *(&v39 - 48) = v17 & 1;
  *(&v39 - 5) = v19;
  *(&v39 - 4) = 0;
  *(&v39 - 3) = 0;
  *(&v39 - 2) = v20;
  MEMORY[0x1EEE9AC00](v21);
  *(&v39 - 2) = 0x73697370696C6C65;
  *(&v39 - 1) = 0xE800000000000000;
  sub_1D2877248();

  v22 = sub_1D2876498();
  KeyPath = swift_getKeyPath();
  v24 = &v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E2DB0) + 36)];
  *v24 = KeyPath;
  v24[1] = v22;
  v25 = &v8[*(v6 + 36)];
  v26 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9FE8) + 28);
  v27 = *MEMORY[0x1E69816C0];
  v28 = sub_1D2877218();
  (*(*(v28 - 8) + 104))(v25 + v26, v27, v28);
  *v25 = swift_getKeyPath();
  sub_1D2875708();
  v29 = sub_1D282D930();
  v30 = sub_1D281B544(&qword_1ED89D6B0, MEMORY[0x1E697C4E8]);
  sub_1D2876768();
  (*(v40 + 8))(v5, v3);
  sub_1D22BD238(v8, &qword_1EC6E2D98);
  v32 = v43;
  v31 = v44;
  v33 = v45;
  (*(v44 + 104))(v43, *MEMORY[0x1E697E6F8], v45);
  *&v47 = v6;
  *(&v47 + 1) = v3;
  *&v48 = v29;
  *(&v48 + 1) = v30;
  swift_getOpaqueTypeConformance2();
  v34 = v46;
  v35 = v42;
  sub_1D28769A8();
  (*(v31 + 8))(v32, v33);
  (*(v41 + 8))(v11, v35);
  sub_1D2877848();
  sub_1D28748C8();
  v36 = (v34 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E2D88) + 36));
  v37 = v48;
  *v36 = v47;
  v36[1] = v37;
  v36[2] = v49;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E2D70);
  *(v34 + *(result + 36)) = 0;
  return result;
}

uint64_t sub_1D281D6C4(uint64_t a1)
{
  v1[2] = sub_1D2878568();
  v1[3] = sub_1D2878558();
  v3 = swift_task_alloc();
  v1[4] = v3;
  *v3 = v1;
  v3[1] = sub_1D281D784;

  return sub_1D280E1E4(a1);
}

uint64_t sub_1D281D784()
{

  v1 = sub_1D28784F8();

  return MEMORY[0x1EEE6DFA0](sub_1D22ADFBC, v1, v0);
}

uint64_t sub_1D281D920@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for MagicEditViewForeground(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  if (qword_1EC6D8D98 != -1)
  {
    swift_once();
  }

  *a1 = qword_1EC6E2AE0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E2B60);
  sub_1D281DC30(v1, a1 + *(v7 + 44));
  v8 = sub_1D2874F98();
  v9 = sub_1D2876338();
  v10 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E2B68) + 36);
  *v10 = v8;
  *(v10 + 8) = v9;
  KeyPath = swift_getKeyPath();
  v12 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E2B70) + 36);
  *v12 = KeyPath;
  *(v12 + 8) = 1;
  v13 = MEMORY[0x1D38A0390](0.5, 1.0, 0.0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E2AE8);
  sub_1D2877618();
  v14 = sub_1D2805AB0();
  v16 = v15;
  v18 = v17;

  v19 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E2B78) + 36);
  *v19 = v13;
  *(v19 + 8) = v14;
  *(v19 + 16) = v16;
  *(v19 + 24) = v18;
  sub_1D282A9C0(v2, &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for MagicEditViewForeground);
  v20 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v21 = swift_allocObject();
  sub_1D282AA28(&v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v21 + v20, type metadata accessor for MagicEditViewForeground);
  v22 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E2B80) + 36));
  *v22 = sub_1D282AA90;
  v22[1] = v21;
  v22[2] = 0;
  v22[3] = 0;
  sub_1D282A9C0(v2, &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for MagicEditViewForeground);
  v23 = swift_allocObject();
  sub_1D282AA28(&v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v23 + v20, type metadata accessor for MagicEditViewForeground);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E2B88);
  v25 = (a1 + *(result + 36));
  *v25 = 0;
  v25[1] = 0;
  v25[2] = sub_1D282AC9C;
  v25[3] = v23;
  return result;
}

uint64_t sub_1D281DC30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v59 = a2;
  v3 = type metadata accessor for MagicEditViewForegroundBottomViews(0);
  v53 = *(v3 - 8);
  v54 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v52 = &v50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E2B90);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v58 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v60 = &v50 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E2B98);
  v56 = *(v9 - 8);
  v57 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v55 = &v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v61 = &v50 - v12;
  v13 = type metadata accessor for MagicEditViewForegroundTopViews(0);
  v14 = *(v13 - 1);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E2BA0);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v62 = &v50 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v50 - v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E2AE8);
  sub_1D2877618();
  v22 = v64;
  swift_getKeyPath();
  v64 = v22;
  sub_1D281B544(&qword_1EC6DCC48, type metadata accessor for MagicViewModel);
  sub_1D28719E8();

  v23 = *(v22 + 152);

  if (v23 == 1)
  {
    sub_1D2877618();
    v24 = (a1 + *(type metadata accessor for MagicEditViewForeground(0) + 20));
    type metadata accessor for MagicViewModel();
    v25 = *v24;
    v50 = v24[1];
    v51 = v25;
    sub_1D2877638();
    v26 = &v16[v13[5]];
    v27 = v50;
    *v26 = v51;
    *(v26 + 1) = v27;
    v28 = &v16[v13[6]];
    v63 = 0;
    sub_1D28772F8();
    v29 = v65;
    *v28 = v64;
    *(v28 + 1) = v29;
    v30 = v13[7];
    *&v16[v30] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE690);
    swift_storeEnumTagMultiPayload();
    v31 = v13[8];
    *&v16[v31] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6E1C40);
    swift_storeEnumTagMultiPayload();
    sub_1D282AA28(v16, v21, type metadata accessor for MagicEditViewForegroundTopViews);
    v32 = 0;
  }

  else
  {
    v32 = 1;
  }

  v33 = 1;
  (*(v14 + 56))(v21, v32, 1, v13);
  sub_1D281E344(v61);
  sub_1D2877618();
  v34 = v64;
  swift_getKeyPath();
  v64 = v34;
  sub_1D28719E8();

  v35 = *(v34 + 152);

  if (v35 == 1)
  {
    sub_1D2877618();
    v36 = type metadata accessor for MagicEditViewForeground(0);
    v37 = v52;
    sub_1D281EFBC(v52, *(a1 + *(v36 + 20)), *(a1 + *(v36 + 20) + 8), *(a1 + *(v36 + 20) + 16), *(a1 + *(v36 + 20) + 24));
    sub_1D282AA28(v37, v60, type metadata accessor for MagicEditViewForegroundBottomViews);
    v33 = 0;
  }

  v38 = v60;
  (*(v53 + 56))(v60, v33, 1, v54);
  v39 = v62;
  sub_1D22BD1D0(v21, v62, &qword_1EC6E2BA0);
  v41 = v55;
  v40 = v56;
  v54 = v21;
  v42 = *(v56 + 16);
  v43 = v61;
  v44 = v57;
  v42(v55, v61, v57);
  v45 = v58;
  sub_1D22BD1D0(v38, v58, &qword_1EC6E2B90);
  v46 = v59;
  sub_1D22BD1D0(v39, v59, &qword_1EC6E2BA0);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E2BA8);
  v42((v46 + *(v47 + 48)), v41, v44);
  sub_1D22BD1D0(v45, v46 + *(v47 + 64), &qword_1EC6E2B90);
  sub_1D22BD238(v38, &qword_1EC6E2B90);
  v48 = *(v40 + 8);
  v48(v43, v44);
  sub_1D22BD238(v54, &qword_1EC6E2BA0);
  sub_1D22BD238(v45, &qword_1EC6E2B90);
  v48(v41, v44);
  return sub_1D22BD238(v62, &qword_1EC6E2BA0);
}

uint64_t sub_1D281E344@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v116 = a1;
  v112 = sub_1D28764E8();
  v111 = *(v112 - 8);
  MEMORY[0x1EEE9AC00](v112);
  v110 = &v99 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA2E0);
  v114 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v119 = &v99 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v124 = &v99 - v7;
  v115 = v8;
  MEMORY[0x1EEE9AC00](v9);
  v120 = &v99 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E2AE8);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v99 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v99 - v16;
  v18 = sub_1D2872008();
  v122 = *(v18 - 8);
  v123 = v18;
  MEMORY[0x1EEE9AC00](v18);
  v117 = &v99 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v121 = &v99 - v21;
  v109 = v22;
  MEMORY[0x1EEE9AC00](v23);
  v118 = &v99 - v24;
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E2BB0);
  MEMORY[0x1EEE9AC00](v113);
  v26 = &v99 - v25;
  v27 = sub_1D2877098();
  v28 = sub_1D2877848();
  v30 = v29;
  v31 = &v26[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E2BB8) + 36)];
  sub_1D281FDD0(v2, v31);
  v32 = (v31 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E2BC0) + 36));
  *v32 = v28;
  v32[1] = v30;
  *v26 = v27;
  v26[8] = 0;
  if (qword_1EC6D8D98 != -1)
  {
    swift_once();
  }

  v33 = qword_1EC6E2AE0;
  v34 = &v26[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E2BC8) + 36)];
  *v34 = v33;
  v34[1] = sub_1D2831E08;
  v34[2] = 0;
  v108 = type metadata accessor for MagicEditViewForeground(0);
  v35 = (v2 + *(v108 + 20));
  v36 = *v35;
  v37 = v35[1];
  v38 = v35[2];
  v39 = v35[3];
  v133.origin.x = *v35;
  v133.origin.y = v37;
  v133.size.width = v38;
  v133.size.height = v39;
  CGRectGetWidth(v133);
  v134.origin.x = v36;
  v134.origin.y = v37;
  v134.size.width = v38;
  v134.size.height = v39;
  CGRectGetHeight(v134);
  sub_1D2877848();
  sub_1D28748C8();
  v40 = &v26[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E2BD0) + 36)];
  v41 = v130;
  *v40 = v129;
  *(v40 + 1) = v41;
  *(v40 + 2) = v131;
  LOBYTE(v33) = sub_1D2876368();
  v135.origin.x = v36;
  v135.origin.y = v37;
  v135.size.width = v38;
  v135.size.height = v39;
  CGRectGetMinX(v135);
  sub_1D2874298();
  v43 = v42;
  v45 = v44;
  v47 = v46;
  v49 = v48;
  v50 = &v26[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E2BD8) + 36)];
  v106 = v26;
  *v50 = v33;
  *(v50 + 1) = v43;
  *(v50 + 2) = v45;
  *(v50 + 3) = v47;
  *(v50 + 4) = v49;
  v50[40] = 0;
  v51 = v118;
  sub_1D2871FD8();
  sub_1D2877628();
  swift_getKeyPath();
  sub_1D2877648();

  v52 = *(v12 + 8);
  v52(v17, v11);
  v103 = v126;
  v102 = v127;
  v101 = v128;
  sub_1D2877628();
  swift_getKeyPath();
  v53 = v120;
  sub_1D2877648();

  v52(v14, v11);
  sub_1D2877618();
  v105 = *(v125 + 128);
  sub_1D2870F78();

  sub_1D2877618();
  v104 = sub_1D2803FA4();

  v132 = 1;
  v107 = v2;
  v54 = *(v122 + 16);
  v99 = v122 + 16;
  v100 = v54;
  v54(v121, v51, v123);
  sub_1D22BD1D0(v53, v124, &qword_1EC6DA2E0);
  v55 = &v26[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E2BE0) + 36)];
  v56 = type metadata accessor for PeoplePickerSheetViewModifier();
  v57 = &v55[v56[10]];
  *v57 = swift_getKeyPath();
  v57[8] = 0;
  v58 = &v55[v56[11]];
  *v58 = swift_getKeyPath();
  v58[8] = 0;
  v59 = &v55[v56[12]];
  *v59 = swift_getKeyPath();
  *(v59 + 1) = 0;
  v59[16] = 0;
  v60 = &v55[v56[13]];
  *v60 = swift_getKeyPath();
  *(v60 + 4) = 0;
  v61 = &v55[v56[14]];
  *v61 = swift_getKeyPath();
  v61[8] = 0;
  v62 = &v55[v56[15]];
  *v62 = swift_getKeyPath();
  v62[8] = 0;
  v63 = v56[16];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9AB8);
  v64 = sub_1D2875808();
  v65 = *(v64 - 8);
  v66 = (*(v65 + 80) + 32) & ~*(v65 + 80);
  v67 = swift_allocObject();
  *(v67 + 16) = xmmword_1D287F500;
  sub_1D28757E8();
  v68 = sub_1D2400610(v67);
  swift_setDeallocating();
  (*(v65 + 8))(v67 + v66, v64);
  swift_deallocClassInstance();
  *&v55[v63] = v68;
  v69 = &v55[v56[17]];
  *v69 = swift_getKeyPath();
  v69[40] = 0;
  v125 = 0x4074A00000000000;
  v70 = *MEMORY[0x1E6980EF8];
  v71 = *(v111 + 104);
  v72 = v110;
  v73 = v112;
  v71(v110, v70, v112);
  sub_1D22BFBB8();
  sub_1D2874748();
  v125 = 0x4075E00000000000;
  v71(v72, v70, v73);
  sub_1D2874748();
  v74 = v56[20];
  *&v55[v74] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE690);
  swift_storeEnumTagMultiPayload();
  v75 = &v55[v56[7]];
  v76 = v102;
  *v75 = v103;
  *(v75 + 1) = v76;
  v75[16] = v101;
  v77 = v124;
  sub_1D22BD1D0(v124, &v55[v56[8]], &qword_1EC6DA2E0);
  *v55 = 0;
  v78 = v121;
  v79 = v123;
  v80 = v100;
  v100(&v55[v56[6]], v121, v123);
  v80(v117, v78, v79);
  sub_1D22BD1D0(v77, v119, &qword_1EC6DA2E0);
  v81 = v122;
  v82 = (*(v122 + 80) + 16) & ~*(v122 + 80);
  v83 = v82 + v109;
  v84 = (*(v114 + 80) + v82 + v109 + 1) & ~*(v114 + 80);
  v85 = (v115 + v84 + 7) & 0xFFFFFFFFFFFFFFF8;
  v86 = (v85 + 15) & 0xFFFFFFFFFFFFFFF8;
  v87 = swift_allocObject();
  v88 = *(v81 + 32);
  v89 = v123;
  v88(v87 + v82, v117, v123);
  *(v87 + v83) = 0;
  sub_1D22EC9BC(v119, v87 + v84, &qword_1EC6DA2E0);
  *(v87 + v85) = v105;
  *(v87 + v86) = v104;
  v90 = v87 + ((v86 + 11) & 0xFFFFFFFFFFFFFFF8);
  *v90 = 0u;
  *(v90 + 16) = 0u;
  *(v90 + 32) = v132;
  type metadata accessor for PeoplePickerInternalCoordinator();
  sub_1D2874328();
  sub_1D22BD238(v124, &qword_1EC6DA2E0);
  v91 = *(v122 + 8);
  v91(v121, v89);
  sub_1D22BD238(v120, &qword_1EC6DA2E0);
  v91(v118, v89);
  KeyPath = swift_getKeyPath();
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E2BE8);
  v94 = v106;
  v95 = &v106[*(v93 + 36)];
  *v95 = KeyPath;
  *(v95 + 8) = xmmword_1D28AA320;
  v96 = swift_getKeyPath();
  v97 = v94 + *(v113 + 36);
  *v97 = v96;
  *(v97 + 8) = 0;
  sub_1D2819578(*(v107 + *(v108 + 32)));
  return sub_1D22BD238(v94, &qword_1EC6E2BB0);
}

uint64_t sub_1D281EFBC@<X0>(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>, double a5@<D3>)
{
  v10 = sub_1D28764E8();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for MagicViewModel();
  sub_1D281B544(&qword_1EC6DCC48, type metadata accessor for MagicViewModel);
  sub_1D2877638();
  v14 = type metadata accessor for MagicEditViewForegroundBottomViews(0);
  v15 = (a1 + v14[5]);
  *v15 = a2;
  v15[1] = a3;
  v15[2] = a4;
  v15[3] = a5;
  v16 = v14[6];
  *(a1 + v16) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6E1C40);
  swift_storeEnumTagMultiPayload();
  v17 = v14[7];
  *(a1 + v17) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE690);
  swift_storeEnumTagMultiPayload();
  v18 = v14[8];
  *(a1 + v18) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DBE98);
  swift_storeEnumTagMultiPayload();
  v19 = a1 + v14[9];
  *v19 = swift_getKeyPath();
  *(v19 + 8) = 0;
  v27 = 0x3FF0000000000000;
  (*(v11 + 104))(v13, *MEMORY[0x1E6980F00], v10);
  sub_1D2459314();
  sub_1D2874748();
  v20 = a1 + v14[11];
  v26 = 0;
  sub_1D28772F8();
  v21 = v28;
  *v20 = v27;
  *(v20 + 8) = v21;
  v22 = a1 + v14[12];
  v26 = 0;
  result = sub_1D28772F8();
  v24 = v28;
  *v22 = v27;
  *(v22 + 8) = v24;
  return result;
}

void sub_1D281F274()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E2AE8);
  sub_1D2877618();
  v0 = sub_1D23C7998();

  v1 = v0[4];

  LOBYTE(v0) = sub_1D2877BD8();

  if ((v0 & 1) == 0)
  {
    MEMORY[0x1D38A0390](0.5, 1.0, 0.0);
    sub_1D28778B8();

    MEMORY[0x1EEE9AC00](v2);
    sub_1D2874BE8();

    sub_1D2877618();
    if (*(v4 + OBJC_IVAR____TtC23ImagePlaygroundInternal14MagicViewModel__didAppear) == 1)
    {
      *(v4 + OBJC_IVAR____TtC23ImagePlaygroundInternal14MagicViewModel__didAppear) = 1;
      sub_1D2805F60(1);
    }

    else
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath);
      sub_1D281B544(&qword_1EC6DCC48, type metadata accessor for MagicViewModel);
      sub_1D28719D8();
    }
  }
}

uint64_t sub_1D281F4A8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E2AE8);
  sub_1D2877618();
  v0 = v6;
  if (*(v6 + 152) == 1)
  {
    *(v6 + 152) = 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v5[1] = v5;
    MEMORY[0x1EEE9AC00](KeyPath);
    v6 = v0;
    sub_1D281B544(&qword_1EC6DCC48, type metadata accessor for MagicViewModel);
    sub_1D28719D8();
  }

  sub_1D2877618();
  v2 = v6;
  if (*(v6 + 153) == 1)
  {
    *(v6 + 153) = 1;
  }

  else
  {
    v4 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v4);
    v6 = v2;
    sub_1D281B544(&qword_1EC6DCC48, type metadata accessor for MagicViewModel);
    sub_1D28719D8();
  }
}

void sub_1D281F720()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E2AE8);
  sub_1D2877618();
  v0 = sub_1D23C7998();

  v1 = v0[4];

  LOBYTE(v0) = sub_1D2877BD8();

  if ((v0 & 1) == 0)
  {
    sub_1D2877618();
    v2 = OBJC_IVAR____TtC23ImagePlaygroundInternal14MagicViewModel__didAppear;
    if (*(v4 + OBJC_IVAR____TtC23ImagePlaygroundInternal14MagicViewModel__didAppear))
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath);
      sub_1D281B544(&qword_1EC6DCC48, type metadata accessor for MagicViewModel);
      sub_1D28719D8();
    }

    else
    {
      *(v4 + OBJC_IVAR____TtC23ImagePlaygroundInternal14MagicViewModel__didAppear) = 0;
      swift_getKeyPath();
      sub_1D281B544(&qword_1EC6DCC48, type metadata accessor for MagicViewModel);
      sub_1D28719E8();

      if (*(v4 + v2) == 1)
      {
        sub_1D28060DC();
      }

      else
      {
        swift_getKeyPath();
        sub_1D28719E8();
      }
    }
  }
}

uint64_t sub_1D281F978()
{
  v0 = sub_1D2875E18();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v24 = &v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0DB0);
  v4 = v3 - 8;
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v23 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D99B8);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v23 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v23 - v14;
  type metadata accessor for MagicEditViewForeground(0);
  sub_1D24CC0C4(v15);
  (*(v1 + 104))(v12, *MEMORY[0x1E697FF40], v0);
  (*(v1 + 56))(v12, 0, 1, v0);
  v16 = *(v4 + 56);
  sub_1D22BD1D0(v15, v6, &qword_1EC6D99B8);
  sub_1D22BD1D0(v12, &v6[v16], &qword_1EC6D99B8);
  v17 = *(v1 + 48);
  if (v17(v6, 1, v0) != 1)
  {
    sub_1D22BD1D0(v6, v9, &qword_1EC6D99B8);
    if (v17(&v6[v16], 1, v0) != 1)
    {
      v19 = &v6[v16];
      v20 = v24;
      (*(v1 + 32))(v24, v19, v0);
      sub_1D281B544(&qword_1ED89D3D0, MEMORY[0x1E697FF50]);
      v21 = sub_1D2877F98();
      v22 = *(v1 + 8);
      v22(v20, v0);
      sub_1D22BD238(v12, &qword_1EC6D99B8);
      sub_1D22BD238(v15, &qword_1EC6D99B8);
      v22(v9, v0);
      sub_1D22BD238(v6, &qword_1EC6D99B8);
      if (v21)
      {
        return sub_1D28763D8();
      }

      return sub_1D28764A8();
    }

    sub_1D22BD238(v12, &qword_1EC6D99B8);
    sub_1D22BD238(v15, &qword_1EC6D99B8);
    (*(v1 + 8))(v9, v0);
LABEL_6:
    sub_1D22BD238(v6, &qword_1EC6E0DB0);
    return sub_1D28764A8();
  }

  sub_1D22BD238(v12, &qword_1EC6D99B8);
  sub_1D22BD238(v15, &qword_1EC6D99B8);
  if (v17(&v6[v16], 1, v0) != 1)
  {
    goto LABEL_6;
  }

  sub_1D22BD238(v6, &qword_1EC6D99B8);
  return sub_1D28763D8();
}

uint64_t sub_1D281FDD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v160 = a2;
  v133 = sub_1D2875E18();
  v140 = *(v133 - 8);
  MEMORY[0x1EEE9AC00](v133);
  v128 = &v127 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0DB0);
  MEMORY[0x1EEE9AC00](v134);
  v135 = &v127 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D99B8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v129 = &v127 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v138 = &v127 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v139 = &v127 - v10;
  *(&v158 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE860);
  MEMORY[0x1EEE9AC00](*(&v158 + 1));
  v136 = &v127 - v11;
  *&v158 = type metadata accessor for CreationFloatingBubblesView();
  MEMORY[0x1EEE9AC00](v158);
  v141 = (&v127 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v157 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E2C40);
  v132 = *(v157 - 8);
  MEMORY[0x1EEE9AC00](v157);
  v131 = &v127 - v13;
  v154 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E2C48);
  MEMORY[0x1EEE9AC00](v154);
  v130 = (&v127 - v14);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6E1D40);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v144 = &v127 - v16;
  v142 = sub_1D2871318();
  v143 = *(v142 - 8);
  MEMORY[0x1EEE9AC00](v142);
  v137 = &v127 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v155 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E2C50);
  MEMORY[0x1EEE9AC00](v155);
  v159 = &v127 - v18;
  v151 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E2C58);
  MEMORY[0x1EEE9AC00](v151);
  v150 = &v127 - v19;
  v156 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E2C60);
  MEMORY[0x1EEE9AC00](v156);
  v153 = &v127 - v20;
  v21 = type metadata accessor for MagicEditViewForeground(0);
  v145 = *(v21 - 8);
  v22 = *(v145 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v146 = &v127 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v149 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E2C68);
  v148 = *(v149 - 8);
  MEMORY[0x1EEE9AC00](v149);
  v147 = &v127 - v23;
  v152 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E2C70);
  MEMORY[0x1EEE9AC00](v152);
  v25 = &v127 - v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E2AE8);
  v26 = a1;
  sub_1D2877618();
  v27 = sub_1D2805AB0();
  v29 = v28;
  v31 = v30;
  v32 = ~v30;

  if (!v32)
  {
    v66 = v144;
    v67 = v143;
    sub_1D2877618();
    v68 = v161;
    swift_getKeyPath();
    *&v161 = v68;
    sub_1D281B544(&qword_1EC6DCC48, type metadata accessor for MagicViewModel);
    sub_1D28719E8();

    v69 = *(v68 + 154);

    v149 = v21;
    if (v69)
    {
      sub_1D2877618();
      v70 = v161;
      swift_getKeyPath();
      *&v161 = v70;
      sub_1D28719E8();

      v71 = OBJC_IVAR____TtC23ImagePlaygroundInternal14MagicViewModel__onBoardingDescription;
      swift_beginAccess();
      sub_1D22BD1D0(v70 + v71, v66, &unk_1EC6E1D40);

      v72 = v142;
      if ((*(v67 + 48))(v66, 1, v142) != 1)
      {
        v100 = v137;
        (*(v67 + 32))(v137, v66, v72);
        v101 = sub_1D2875918();
        v102 = v130;
        *v130 = v101;
        *(v102 + 8) = 0;
        *(v102 + 16) = 1;
        v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E2CC0);
        sub_1D2821A0C(v100, v26, v102 + *(v103 + 44));
        v104 = v67;
        sub_1D22BD1D0(v102, v150, &qword_1EC6E2C48);
        swift_storeEnumTagMultiPayload();
        sub_1D282D42C();
        sub_1D22BB9D8(&qword_1EC6E2CB8, &qword_1EC6E2C48);
        v105 = v153;
        sub_1D2875AF8();
        sub_1D22BD1D0(v105, v159, &qword_1EC6E2C60);
        swift_storeEnumTagMultiPayload();
        sub_1D282D374();
        v106 = sub_1D281B544(&qword_1ED89F7A0, type metadata accessor for CreationFloatingBubblesView);
        v107 = sub_1D22BB9D8(&qword_1ED89CBF0, &unk_1EC6DE860);
        v161 = v158;
        v162 = v106;
        v163 = v107;
        swift_getOpaqueTypeConformance2();
        v108 = v160;
        sub_1D2875AF8();
        sub_1D22BD238(v105, &qword_1EC6E2C60);
        sub_1D22BD238(v102, &qword_1EC6E2C48);
        v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E2C78);
        (*(*(v109 - 8) + 56))(v108, 0, 1, v109);
        return (*(v104 + 8))(v137, v142);
      }

      sub_1D22BD238(v66, &unk_1EC6E1D40);
    }

    sub_1D2877618();
    v73 = v161;
    swift_getKeyPath();
    *&v161 = v73;
    sub_1D28719E8();

    v74 = *(v73 + 153);

    if (v74 != 1)
    {
      v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E2C78);
      return (*(*(v99 - 8) + 56))(v160, 1, 1, v99);
    }

    sub_1D2877618();
    sub_1D28016A4();

    KeyPath = swift_getKeyPath();
    v76 = v141;
    *v141 = KeyPath;
    *(v76 + 8) = 0;
    v76[2] = swift_getKeyPath();
    *(v76 + 24) = 0;
    v164 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF9B0);
    sub_1D28772F8();
    *(v76 + 2) = v161;
    LOBYTE(v164) = 0;
    sub_1D28772F8();
    v77 = *(&v161 + 1);
    *(v76 + 48) = v161;
    v76[7] = v77;
    v164 = 0;
    v165 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8F48);
    sub_1D28772F8();
    v78 = v162;
    *(v76 + 4) = v161;
    v76[10] = v78;
    v79 = v158;
    type metadata accessor for FloatingBubblesViewModel();
    sub_1D281B544(&qword_1ED89FEC8, type metadata accessor for FloatingBubblesViewModel);
    sub_1D2877638();
    v80 = v76 + v79[10];
    *v80 = swift_getKeyPath();
    v80[8] = 0;
    v81 = v76 + v79[11];
    type metadata accessor for ComposingAnimationCoordinator();
    sub_1D281B544(&qword_1ED89F308, type metadata accessor for ComposingAnimationCoordinator);
    *v81 = sub_1D28744C8();
    v81[8] = v82 & 1;
    *(v76 + v79[12]) = 0;
    *(v76 + v79[13]) = 0;
    *(v76 + v79[14]) = 0;
    v83 = v79[15];
    *(v76 + v83) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE690);
    swift_storeEnumTagMultiPayload();
    v84 = v76 + v79[16];
    *v84 = swift_getKeyPath();
    v84[8] = 0;
    v85 = v79[17];
    *(v76 + v85) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E1C50);
    swift_storeEnumTagMultiPayload();
    v86 = v76 + v79[18];
    type metadata accessor for CGSize(0);
    v164 = 0;
    v165 = 0;
    sub_1D28772F8();
    v87 = v162;
    *v86 = v161;
    *(v86 + 2) = v87;
    v88 = (v76 + v79[19]);
    *v88 = xmmword_1D289E250;
    v88[1] = xmmword_1D289E260;
    v89 = v139;
    sub_1D24CC0C4(v139);
    v90 = v140;
    v91 = v138;
    v92 = v133;
    (*(v140 + 104))(v138, *MEMORY[0x1E697FF38], v133);
    (*(v90 + 56))(v91, 0, 1, v92);
    v93 = *(v134 + 48);
    v94 = v135;
    sub_1D22BD1D0(v89, v135, &qword_1EC6D99B8);
    sub_1D22BD1D0(v91, v94 + v93, &qword_1EC6D99B8);
    v95 = *(v90 + 48);
    if (v95(v94, 1, v92) == 1)
    {
      sub_1D22BD238(v91, &qword_1EC6D99B8);
      sub_1D22BD238(v89, &qword_1EC6D99B8);
      v96 = v95(v94 + v93, 1, v92) == 1;
      v97 = v94;
      v98 = *(&v158 + 1);
      v94 = v159;
      if (v96)
      {
        sub_1D22BD238(v97, &qword_1EC6D99B8);
        v93 = v136;
LABEL_21:
        v118 = *MEMORY[0x1E697E6C0];
        v119 = sub_1D2874E88();
        (*(*(v119 - 8) + 104))(v93, v118, v119);
        sub_1D281B544(&qword_1ED89DE70, MEMORY[0x1E697E730]);
        result = sub_1D2877F98();
        if ((result & 1) == 0)
        {
          __break(1u);
          return result;
        }

        goto LABEL_22;
      }
    }

    else
    {
      v91 = v129;
      sub_1D22BD1D0(v94, v129, &qword_1EC6D99B8);
      v110 = v95(v94 + v93, 1, v92);
      v98 = *(&v158 + 1);
      if (v110 != 1)
      {
        goto LABEL_20;
      }

      sub_1D22BD238(v138, &qword_1EC6D99B8);
      sub_1D22BD238(v139, &qword_1EC6D99B8);
      (*(v140 + 8))(v91, v92);
      v97 = v94;
      v94 = v159;
    }

    sub_1D22BD238(v97, &qword_1EC6E0DB0);
    v93 = v136;
    while (1)
    {
      v111 = *MEMORY[0x1E697E6D0];
      v112 = sub_1D2874E88();
      (*(*(v112 - 8) + 104))(v93, v111, v112);
      sub_1D281B544(&qword_1ED89DE70, MEMORY[0x1E697E730]);
      if (sub_1D2877F98())
      {
        break;
      }

      __break(1u);
LABEL_20:
      v113 = v140;
      v114 = v94 + v93;
      v115 = v128;
      (*(v140 + 32))(v128, v114, v92);
      sub_1D281B544(&qword_1ED89D3D0, MEMORY[0x1E697FF50]);
      v116 = sub_1D2877F98();
      v117 = *(v113 + 8);
      v117(v115, v92);
      sub_1D22BD238(v138, &qword_1EC6D99B8);
      sub_1D22BD238(v139, &qword_1EC6D99B8);
      v117(v91, v92);
      sub_1D22BD238(v94, &qword_1EC6D99B8);
      v94 = v159;
      v93 = v136;
      if (v116)
      {
        goto LABEL_21;
      }
    }

LABEL_22:
    v120 = sub_1D281B544(&qword_1ED89F7A0, type metadata accessor for CreationFloatingBubblesView);
    v121 = sub_1D22BB9D8(&qword_1ED89CBF0, &unk_1EC6DE860);
    v122 = v131;
    v123 = v141;
    sub_1D28769B8();
    sub_1D22BD238(v93, &unk_1EC6DE860);
    sub_1D282E9F8(v123, type metadata accessor for CreationFloatingBubblesView);
    v124 = v132;
    v125 = v157;
    (*(v132 + 16))(v94, v122, v157);
    swift_storeEnumTagMultiPayload();
    sub_1D282D374();
    *&v161 = v79;
    *(&v161 + 1) = v98;
    v162 = v120;
    v163 = v121;
    swift_getOpaqueTypeConformance2();
    v126 = v160;
    sub_1D2875AF8();
    (*(v124 + 8))(v122, v125);
    v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E2C78);
    v63 = *(*(v62 - 8) + 56);
    v64 = v126;
    return v63(v64, 0, 1, v62);
  }

  v33 = sub_1D23D646C(v27, v29, v31);
  v35 = v34;
  sub_1D22FD918(v27, v29, v31);
  *&v161 = v33;
  *(&v161 + 1) = v35;
  sub_1D22BD06C();
  v36 = sub_1D2876698();
  v38 = v37;
  v40 = v39;
  v42 = v41;
  sub_1D2877618();
  v43 = sub_1D280D288();

  v44 = &v25[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E2C98) + 36)];
  *v44 = v43 & 1;
  v45 = *(type metadata accessor for MagicPaperCoachingTextEffect() + 20);
  *&v44[v45] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE690);
  swift_storeEnumTagMultiPayload();
  *v25 = v36;
  *(v25 + 1) = v38;
  v25[16] = v40 & 1;
  *(v25 + 3) = v42;
  v144 = sub_1D2877838();
  v143 = v46;
  v47 = &v25[*(v152 + 36)];
  v48 = v146;
  sub_1D282A9C0(v26, v146, type metadata accessor for MagicEditViewForeground);
  v49 = (*(v145 + 80) + 16) & ~*(v145 + 80);
  v50 = swift_allocObject();
  v51 = sub_1D282AA28(v48, v50 + v49, type metadata accessor for MagicEditViewForeground);
  MEMORY[0x1EEE9AC00](v51);
  *(&v127 - 2) = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9F50);
  sub_1D282EE78(&qword_1EC6E2CC8, &qword_1EC6D9F50, &unk_1D28805F0, sub_1D22F5CDC);
  v52 = v147;
  sub_1D2877368();
  sub_1D22BB9D8(&qword_1EC6E2CD0, &qword_1EC6E2C68);
  sub_1D282D5D4();
  v53 = v149;
  sub_1D28767B8();
  (*(v148 + 8))(v52, v53);
  v54 = sub_1D2875698();
  v55 = &v47[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E2CE0) + 36)];
  *v55 = v54;
  v55[1] = sub_1D28219DC;
  v55[2] = 0;
  v56 = &v47[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E2CB0) + 36)];
  v57 = v143;
  *v56 = v144;
  *(v56 + 1) = v57;
  sub_1D22BD1D0(v25, v150, &qword_1EC6E2C70);
  swift_storeEnumTagMultiPayload();
  sub_1D282D42C();
  sub_1D22BB9D8(&qword_1EC6E2CB8, &qword_1EC6E2C48);
  v58 = v153;
  sub_1D2875AF8();
  sub_1D22BD1D0(v58, v159, &qword_1EC6E2C60);
  swift_storeEnumTagMultiPayload();
  sub_1D282D374();
  v59 = sub_1D281B544(&qword_1ED89F7A0, type metadata accessor for CreationFloatingBubblesView);
  v60 = sub_1D22BB9D8(&qword_1ED89CBF0, &unk_1EC6DE860);
  v161 = v158;
  v162 = v59;
  v163 = v60;
  swift_getOpaqueTypeConformance2();
  v61 = v160;
  sub_1D2875AF8();
  sub_1D22BD238(v58, &qword_1EC6E2C60);
  sub_1D22BD238(v25, &qword_1EC6E2C70);
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E2C78);
  v63 = *(*(v62 - 8) + 56);
  v64 = v61;
  return v63(v64, 0, 1, v62);
}

uint64_t sub_1D2821748()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E2AE8);
  sub_1D2877618();
  v0 = *(*(v2 + 128) + 16);
  if (v0)
  {
    [v0 undo];
  }
}

double sub_1D28217B0@<D0>(uint64_t a1@<X8>)
{
  sub_1D2875798();
  if (qword_1ED89E0E8 != -1)
  {
    swift_once();
  }

  v2 = qword_1ED8B0058;
  v3 = sub_1D2876668();
  v5 = v4;
  v7 = v6;
  sub_1D281F978();
  v8 = sub_1D2876658();
  v10 = v9;
  v12 = v11;

  sub_1D22ED6E0(v3, v5, v7 & 1);

  sub_1D2876438();
  v13 = sub_1D2876568();
  v15 = v14;
  LOBYTE(v5) = v16;
  v18 = v17;
  sub_1D22ED6E0(v8, v10, v12 & 1);

  sub_1D2739754(1, 1, &v23);
  v27 = v5 & 1;
  *&v28 = v13;
  *(&v28 + 1) = v15;
  LOBYTE(v29) = v5 & 1;
  v30 = v23;
  v31 = v24;
  v32 = v25;
  *(&v29 + 1) = v18;
  v33 = v26;
  v34[0] = v13;
  v34[1] = v15;
  v35 = v5 & 1;
  v36 = v18;
  v40 = v26;
  v38 = v24;
  v39 = v25;
  v37 = v23;
  sub_1D22BD1D0(&v28, v22, &qword_1EC6D9F50);
  sub_1D22BD238(v34, &qword_1EC6D9F50);
  v19 = v31;
  *(a1 + 32) = v30;
  *(a1 + 48) = v19;
  *(a1 + 64) = v32;
  *(a1 + 80) = v33;
  result = *&v28;
  v21 = v29;
  *a1 = v28;
  *(a1 + 16) = v21;
  return result;
}

uint64_t sub_1D2821A0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v77 = a3;
  v5 = type metadata accessor for MagicEditViewForeground(0);
  v69 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v70 = v6;
  v71 = &v65 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D28718F8();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v68 = &v65 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1D2878048();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v67 = &v65 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E2CE8);
  v12 = *(v11 - 8);
  v74 = v11;
  v75 = v12;
  MEMORY[0x1EEE9AC00](v11);
  v66 = (&v65 - v13);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E2CF0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v76 = &v65 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v72 = &v65 - v17;
  v18 = sub_1D2871318();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v65 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E2C98);
  v23 = v22 - 8;
  MEMORY[0x1EEE9AC00](v22);
  v73 = &v65 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x1EEE9AC00](v25);
  v28 = &v65 - v27;
  (*(v19 + 16))(v21, a1, v18, v26);
  v29 = sub_1D2876678();
  v31 = v30;
  v33 = v32;
  v35 = v34;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E2AE8);
  v36 = a2;
  sub_1D2877618();
  LOBYTE(a2) = sub_1D280D288();

  v37 = &v28[*(v23 + 44)];
  *v37 = a2 & 1;
  v38 = *(type metadata accessor for MagicPaperCoachingTextEffect() + 20);
  *&v37[v38] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE690);
  swift_storeEnumTagMultiPayload();
  *v28 = v29;
  *(v28 + 1) = v31;
  v28[16] = v33 & 1;
  *(v28 + 3) = v35;
  sub_1D2877618();
  v39 = v78;
  swift_getKeyPath();
  *&v78 = v39;
  sub_1D281B544(&qword_1EC6DCC48, type metadata accessor for MagicViewModel);
  sub_1D28719E8();

  v40 = OBJC_IVAR____TtC23ImagePlaygroundInternal14MagicViewModel__pendingDisclosures;
  swift_beginAccess();
  v41 = *(*(v39 + v40) + 16);

  v42 = 1;
  if (v41)
  {
    sub_1D2877FE8();
    sub_1D28718C8();
    v43 = sub_1D28780E8();
    v45 = v44;
    v46 = v71;
    sub_1D282A9C0(v36, v71, type metadata accessor for MagicEditViewForeground);
    v47 = (*(v69 + 80) + 16) & ~*(v69 + 80);
    v48 = swift_allocObject();
    sub_1D282AA28(v46, v48 + v47, type metadata accessor for MagicEditViewForeground);
    KeyPath = swift_getKeyPath();
    v50 = v66;
    *v66 = KeyPath;
    swift_storeEnumTagMultiPayload();
    v51 = type metadata accessor for ActionablePill();
    v52 = (v50 + v51[5]);
    *v52 = v43;
    v52[1] = v45;
    *(v50 + v51[6]) = 1;
    v53 = (v50 + v51[7]);
    *v53 = sub_1D282D628;
    v53[1] = v48;
    sub_1D2874908();
    sub_1D2874938();
    v54 = sub_1D28748E8();

    *(v50 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E2CF8) + 36)) = v54;
    sub_1D2877848();
    sub_1D28748C8();
    v55 = v74;
    v56 = (v50 + *(v74 + 36));
    v57 = v79;
    *v56 = v78;
    v56[1] = v57;
    v56[2] = v80;
    v58 = v72;
    sub_1D22EC9BC(v50, v72, &qword_1EC6E2CE8);
    v42 = 0;
    v59 = v55;
  }

  else
  {
    v59 = v74;
    v58 = v72;
  }

  (*(v75 + 56))(v58, v42, 1, v59);
  v60 = v73;
  sub_1D22BD1D0(v28, v73, &qword_1EC6E2C98);
  v61 = v76;
  sub_1D22BD1D0(v58, v76, &qword_1EC6E2CF0);
  v62 = v77;
  sub_1D22BD1D0(v60, v77, &qword_1EC6E2C98);
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E2D00);
  sub_1D22BD1D0(v61, v62 + *(v63 + 48), &qword_1EC6E2CF0);
  sub_1D22BD238(v58, &qword_1EC6E2CF0);
  sub_1D22BD238(v28, &qword_1EC6E2C98);
  sub_1D22BD238(v61, &qword_1EC6E2CF0);
  return sub_1D22BD238(v60, &qword_1EC6E2C98);
}

uint64_t sub_1D28221C4@<X0>(uint64_t a1@<X8>)
{
  v85 = a1;
  v90 = sub_1D2875E18();
  v89 = *(v90 - 8);
  MEMORY[0x1EEE9AC00](v90);
  v81 = &v80 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0DB0);
  MEMORY[0x1EEE9AC00](v87);
  v88 = &v80 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D99B8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v82 = &v80 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v86 = &v80 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v92 = &v80 - v9;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE860);
  MEMORY[0x1EEE9AC00](v84);
  v91 = &v80 - v10;
  v11 = type metadata accessor for MagicEditViewForegroundTopViews(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E3110);
  MEMORY[0x1EEE9AC00](v93);
  v15 = &v80 - v14;
  *v15 = sub_1D2875918();
  *(v15 + 1) = 0;
  v15[16] = 1;
  v16 = &v15[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E3118) + 44)];
  *v16 = sub_1D28756A8();
  *(v16 + 1) = 0;
  v16[16] = 1;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E3120);
  sub_1D2822D50(v1, &v16[*(v17 + 44)]);
  sub_1D282A9C0(v1, &v80 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for MagicEditViewForegroundTopViews);
  v18 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v19 = swift_allocObject();
  sub_1D282AA28(&v80 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v19 + v18, type metadata accessor for MagicEditViewForegroundTopViews);
  v20 = &v15[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E3128) + 36)];
  *v20 = sub_1D2831E10;
  *(v20 + 1) = 0;
  *(v20 + 2) = sub_1D283053C;
  *(v20 + 3) = v19;
  sub_1D282A9C0(v1, &v80 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for MagicEditViewForegroundTopViews);
  v21 = swift_allocObject();
  sub_1D282AA28(&v80 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v21 + v18, type metadata accessor for MagicEditViewForegroundTopViews);
  v22 = &v15[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E3130) + 36)];
  *v22 = sub_1D2831E0C;
  *(v22 + 1) = 0;
  *(v22 + 2) = sub_1D283082C;
  *(v22 + 3) = v21;
  if (qword_1EC6D8D98 != -1)
  {
    swift_once();
  }

  v23 = qword_1EC6E2AE0;
  v24 = &v15[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E3138) + 36)];
  *v24 = v23;
  v24[1] = sub_1D2831E08;
  v24[2] = 0;
  v25 = (v1 + *(v11 + 20));
  v26 = *v25;
  v27 = v25[1];
  v28 = v25[2];
  v29 = v25[3];
  v99.origin.x = *v25;
  v99.origin.y = v27;
  v99.size.width = v28;
  v99.size.height = v29;
  CGRectGetWidth(v99);
  sub_1D2877848();
  sub_1D28748C8();
  v30 = &v15[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E3140) + 36)];
  v31 = v97;
  *v30 = v96;
  *(v30 + 1) = v31;
  *(v30 + 2) = v98;
  LOBYTE(v23) = sub_1D2876368();
  v100.origin.x = v26;
  v100.origin.y = v27;
  v100.size.width = v28;
  v100.size.height = v29;
  CGRectGetMinX(v100);
  sub_1D2874298();
  v33 = v32;
  v35 = v34;
  v37 = v36;
  v39 = v38;
  v40 = &v15[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E3148) + 36)];
  *v40 = v23;
  *(v40 + 1) = v33;
  *(v40 + 2) = v35;
  *(v40 + 3) = v37;
  *(v40 + 4) = v39;
  v40[40] = 0;
  LOBYTE(v23) = sub_1D2876348();
  v101.origin.x = v26;
  v101.origin.y = v27;
  v101.size.width = v28;
  v101.size.height = v29;
  CGRectGetMinY(v101);
  v41 = (v1 + *(v11 + 24));
  v42 = *v41;
  v43 = v41[1];
  v94 = v42;
  v95 = v43;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DBD30);
  sub_1D2877308();
  sub_1D2874298();
  v45 = v44;
  v47 = v46;
  v49 = v48;
  v51 = v50;
  v52 = &v15[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E3150) + 36)];
  *v52 = v23;
  *(v52 + 1) = v45;
  *(v52 + 2) = v47;
  *(v52 + 3) = v49;
  *(v52 + 4) = v51;
  v52[40] = 0;
  LOBYTE(v23) = sub_1D2876358();
  sub_1D2874298();
  v53 = *(v93 + 36);
  v83 = v15;
  v54 = &v15[v53];
  *v54 = v23;
  *(v54 + 1) = v55;
  *(v54 + 2) = v56;
  *(v54 + 3) = v57;
  *(v54 + 4) = v58;
  v54[40] = 0;
  v59 = v92;
  sub_1D24CC0C4(v92);
  v60 = v89;
  v61 = v86;
  v62 = v90;
  (*(v89 + 104))(v86, *MEMORY[0x1E697FF38], v90);
  (*(v60 + 56))(v61, 0, 1, v62);
  v63 = *(v87 + 48);
  v64 = v88;
  sub_1D22BD1D0(v59, v88, &qword_1EC6D99B8);
  sub_1D22BD1D0(v61, v64 + v63, &qword_1EC6D99B8);
  v65 = *(v60 + 48);
  if (v65(v64, 1, v62) != 1)
  {
    v68 = v82;
    sub_1D22BD1D0(v64, v82, &qword_1EC6D99B8);
    if (v65(v64 + v63, 1, v62) != 1)
    {
      goto LABEL_11;
    }

    v63 = v68;
    sub_1D22BD238(v61, &qword_1EC6D99B8);
    sub_1D22BD238(v92, &qword_1EC6D99B8);
    v69 = *(v60 + 8);
    v60 += 8;
    v69(v68, v62);
    v67 = v91;
LABEL_8:
    sub_1D22BD238(v64, &qword_1EC6E0DB0);
    while (1)
    {
      v68 = *MEMORY[0x1E697E6E0];
      v70 = sub_1D2874E88();
      (*(*(v70 - 8) + 104))(v67, v68, v70);
      sub_1D281B544(&qword_1ED89DE70, MEMORY[0x1E697E730]);
      if (sub_1D2877F98())
      {
        goto LABEL_13;
      }

      __break(1u);
LABEL_11:
      v71 = (v64 + v63);
      v72 = v81;
      (*(v60 + 32))(v81, v71, v62);
      sub_1D281B544(&qword_1ED89D3D0, MEMORY[0x1E697FF50]);
      v73 = v68;
      v74 = sub_1D2877F98();
      v75 = *(v60 + 8);
      v60 += 8;
      v75(v72, v62);
      v63 = &unk_1D287E890;
      sub_1D22BD238(v61, &qword_1EC6D99B8);
      sub_1D22BD238(v92, &qword_1EC6D99B8);
      v75(v73, v62);
      sub_1D22BD238(v64, &qword_1EC6D99B8);
      v67 = v91;
      if (v74)
      {
        goto LABEL_12;
      }
    }
  }

  sub_1D22BD238(v61, &qword_1EC6D99B8);
  sub_1D22BD238(v59, &qword_1EC6D99B8);
  v66 = v65(v64 + v63, 1, v62);
  v67 = v91;
  if (v66 != 1)
  {
    goto LABEL_8;
  }

  sub_1D22BD238(v64, &qword_1EC6D99B8);
LABEL_12:
  v76 = *MEMORY[0x1E697E720];
  v77 = sub_1D2874E88();
  (*(*(v77 - 8) + 104))(v67, v76, v77);
  sub_1D281B544(&qword_1ED89DE70, MEMORY[0x1E697E730]);
  result = sub_1D2877F98();
  if (result)
  {
LABEL_13:
    sub_1D28308E0();
    sub_1D22BB9D8(&qword_1ED89CBF0, &unk_1EC6DE860);
    v79 = v83;
    sub_1D28769B8();
    sub_1D22BD238(v67, &unk_1EC6DE860);
    return sub_1D22BD238(v79, &qword_1EC6E3110);
  }

  __break(1u);
  return result;
}

uint64_t sub_1D2822D50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v62 = a2;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E31B0);
  MEMORY[0x1EEE9AC00](v64);
  v63 = v59 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E31B8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v69 = v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v68 = v59 - v7;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE860);
  MEMORY[0x1EEE9AC00](v60);
  v9 = v59 - v8;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E31C0);
  v66 = *(v67 - 8);
  MEMORY[0x1EEE9AC00](v67);
  v65 = v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v72 = v59 - v12;
  v13 = type metadata accessor for MagicEditViewForegroundTopViews(0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = v59 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1D2874288();
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = v59 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E31C8);
  v21 = v20 - 8;
  MEMORY[0x1EEE9AC00](v20);
  v71 = v59 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v25 = v59 - v24;
  sub_1D2874268();
  sub_1D282A9C0(a1, v16, type metadata accessor for MagicEditViewForegroundTopViews);
  v26 = (*(v14 + 80) + 16) & ~*(v14 + 80);
  v27 = swift_allocObject();
  sub_1D282AA28(v16, v27 + v26, type metadata accessor for MagicEditViewForegroundTopViews);
  MEMORY[0x1D389FDF0](v19, sub_1D2830D38, v27);
  v28 = *(v21 + 44);
  *&v25[v28] = swift_getKeyPath();
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6E1C40);
  v70 = v25;
  v59[2] = v29;
  swift_storeEnumTagMultiPayload();
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E2AE8);
  v61 = a1;
  sub_1D2877618();
  v31 = sub_1D2808DA4();

  sub_1D2521858(v75);
  v73 = v31;
  LOBYTE(v74) = 1;
  *(&v74 + 1) = 0;
  v32 = *MEMORY[0x1E697E728];
  v33 = sub_1D2874E88();
  (*(*(v33 - 8) + 104))(v9, v32, v33);
  sub_1D281B544(&qword_1ED89DE70, MEMORY[0x1E697E730]);
  result = sub_1D2877F98();
  if (result)
  {
    sub_1D2830D64();
    v59[1] = v30;
    sub_1D22BB9D8(&qword_1ED89CBF0, &unk_1EC6DE860);
    sub_1D28769B8();
    sub_1D22BD238(v9, &unk_1EC6DE860);
    v77[4] = v75[2];
    *v78 = v76[0];
    *&v78[9] = *(v76 + 9);
    v77[0] = v73;
    v77[1] = v74;
    v77[2] = v75[0];
    v77[3] = v75[1];
    sub_1D2830DB8(v77);
    sub_1D2874278();
    sub_1D282A9C0(v61, v59 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for MagicEditViewForegroundTopViews);
    v35 = swift_allocObject();
    sub_1D282AA28(v16, v35 + v26, type metadata accessor for MagicEditViewForegroundTopViews);
    v36 = v63;
    MEMORY[0x1D389FDF0](v19, sub_1D2830E0C, v35);
    v37 = (v36 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E31D8) + 36));
    *v37 = swift_getKeyPath();
    swift_storeEnumTagMultiPayload();
    v38 = v37 + *(type metadata accessor for DoneMagicViewButtonStyle(0) + 20);
    *v38 = swift_getKeyPath();
    v38[8] = 0;
    sub_1D2877618();
    v39 = sub_1D28054FC();

    v40 = *(v39 + OBJC_IVAR____TtC23ImagePlaygroundInternal17PreviewsViewModel_previewsStore);
    swift_getKeyPath();
    *&v73 = v40;
    sub_1D281B544(&qword_1ED8A0FD0, type metadata accessor for GeneratedPreviewsStore);
    sub_1D28719E8();

    swift_beginAccess();
    v41 = *(v40 + 16);
    sub_1D2870F68();

    v42 = *(v41 + 16);

    LOBYTE(v41) = v42 == 0;
    KeyPath = swift_getKeyPath();
    v44 = swift_allocObject();
    *(v44 + 16) = v41;
    v45 = (v36 + *(v64 + 36));
    *v45 = KeyPath;
    v45[1] = sub_1D22C03D8;
    v45[2] = v44;
    sub_1D2830E58();
    v46 = v68;
    sub_1D2876CC8();
    sub_1D22BD238(v36, &qword_1EC6E31B0);
    v47 = v71;
    sub_1D22BD1D0(v70, v71, &qword_1EC6E31C8);
    v48 = v66;
    v49 = *(v66 + 16);
    v50 = v65;
    v51 = v67;
    v49(v65, v72, v67);
    v52 = v69;
    sub_1D22BD1D0(v46, v69, &qword_1EC6E31B8);
    v53 = v47;
    v54 = v62;
    sub_1D22BD1D0(v53, v62, &qword_1EC6E31C8);
    v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E31F8);
    v56 = v54 + v55[12];
    *v56 = 0;
    *(v56 + 8) = 1;
    v49((v54 + v55[16]), v50, v51);
    v57 = v54 + v55[20];
    *v57 = 0;
    *(v57 + 8) = 1;
    sub_1D22BD1D0(v52, v54 + v55[24], &qword_1EC6E31B8);
    sub_1D22BD238(v46, &qword_1EC6E31B8);
    v58 = *(v48 + 8);
    v58(v72, v51);
    sub_1D22BD238(v70, &qword_1EC6E31C8);
    sub_1D22BD238(v52, &qword_1EC6E31B8);
    v58(v50, v51);
    return sub_1D22BD238(v71, &qword_1EC6E31C8);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D28237A0(uint64_t a1, void (*a2)(uint64_t))
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E2AE8);
  v3 = sub_1D2877618();
  a2(v3);
}

uint64_t sub_1D28237FC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8E60);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = v9 - v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E2AE8);
  sub_1D2877618();
  v3 = v9[1];
  v4 = sub_1D28785F8();
  (*(*(v4 - 8) + 56))(v2, 1, 1, v4);
  sub_1D2878568();
  sub_1D2870F78();
  v5 = sub_1D2878558();
  v6 = swift_allocObject();
  v7 = MEMORY[0x1E69E85E0];
  v6[2] = v5;
  v6[3] = v7;
  v6[4] = v3;
  sub_1D22AE01C(0, 0, v2, &unk_1D28AB270, v6);
}

uint64_t sub_1D282394C()
{
  type metadata accessor for MagicEditViewForegroundTopViews(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DBD30);
  return sub_1D2877318();
}

uint64_t sub_1D28239C4(_OWORD *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E2AE8);
  sub_1D2877618();
  v2 = (v5 + OBJC_IVAR____TtC23ImagePlaygroundInternal14MagicViewModel_magicViewTopButtonsFrame);
  v3 = a1[1];
  *v2 = *a1;
  v2[1] = v3;
}

uint64_t sub_1D2823A30@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v214 = a2;
  v211 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E2F20);
  MEMORY[0x1EEE9AC00](v211);
  v215 = &v167 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v213 = (&v167 - v5);
  v6 = sub_1D2875F68();
  v188 = *(v6 - 8);
  v189 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v187 = &v167 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E2F28);
  v208 = *(v8 - 8);
  v209 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v186 = &v167 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E2F30);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v212 = &v167 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v217 = &v167 - v13;
  v14 = sub_1D28764E8();
  v182 = *(v14 - 8);
  v183 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v181 = &v167 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E2F38);
  v206 = *(v16 - 8);
  v207 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v184 = (&v167 - v17);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E2F40);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v210 = &v167 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v220 = &v167 - v21;
  v179 = sub_1D2875E18();
  v185 = *(v179 - 8);
  MEMORY[0x1EEE9AC00](v179);
  v167 = &v167 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v178 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0DB0);
  MEMORY[0x1EEE9AC00](v178);
  v190 = &v167 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D99B8);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v168 = &v167 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v197 = &v167 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v198 = &v167 - v29;
  v176 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE860);
  MEMORY[0x1EEE9AC00](v176);
  v180 = &v167 - v30;
  v173 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E2F48);
  MEMORY[0x1EEE9AC00](v173);
  v195 = &v167 - v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E2F50);
  v174 = *(v32 - 8);
  v175 = v32;
  MEMORY[0x1EEE9AC00](v32);
  v172 = &v167 - v33;
  v193 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E2F58);
  MEMORY[0x1EEE9AC00](v193);
  v171 = &v167 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35);
  v177 = &v167 - v36;
  v199 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E2F60);
  MEMORY[0x1EEE9AC00](v199);
  v201 = (&v167 - v37);
  v191 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E2F68);
  MEMORY[0x1EEE9AC00](v191);
  v192 = (&v167 - v38);
  v200 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E2F70);
  MEMORY[0x1EEE9AC00](v200);
  v194 = &v167 - v39;
  v196 = type metadata accessor for MagicEditViewForegroundBottomViews(0);
  v169 = *(v196 - 8);
  v40 = *(v169 + 64);
  MEMORY[0x1EEE9AC00](v196);
  v170 = &v167 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E2F78);
  MEMORY[0x1EEE9AC00](v41 - 8);
  v216 = &v167 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v43);
  v219 = &v167 - v44;
  sub_1D2877848();
  sub_1D28748C8();
  v204 = v230;
  v205 = v228;
  v202 = v233;
  v203 = v232;
  v241 = 1;
  v240 = v229;
  v239 = v231;
  v218 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E2AE8);
  v45 = a1;
  sub_1D2877618();
  v46 = *(sub_1D28054FC() + OBJC_IVAR____TtC23ImagePlaygroundInternal17PreviewsViewModel_previewsStore);
  swift_getKeyPath();
  *&v227[0] = v46;
  sub_1D281B544(&qword_1ED8A0FD0, type metadata accessor for GeneratedPreviewsStore);
  sub_1D28719E8();

  swift_beginAccess();
  v47 = *(v46 + 16);
  sub_1D2870F68();

  v48 = *(v47 + 16);

  if (!v48)
  {
    v49 = sub_1D2805AB0();
    if (v51 == 0xFF)
    {

      goto LABEL_10;
    }

    sub_1D22FD918(v49, v50, v51);
  }

  v52 = sub_1D2811164();

  if ((v52 & 1) == 0)
  {
    sub_1D2877618();
    v53 = sub_1D2805AB0();
    v55 = v54;
    v57 = v56;
    v58 = ~v56;

    if (v58)
    {
      sub_1D22FD918(v53, v55, v57);
      sub_1D2875798();
      if (qword_1ED89E0E8 != -1)
      {
        swift_once();
      }

      v59 = qword_1ED8B0058;
      v60 = sub_1D2876668();
      v62 = v61;
      v64 = v63;
      sub_1D28764C8();
      v197 = sub_1D2876658();
      v198 = v65;
      v67 = v66;
      v69 = v68;

      sub_1D22ED6E0(v60, v62, v64 & 1);

      v70 = v170;
      sub_1D282A9C0(a1, v170, type metadata accessor for MagicEditViewForegroundBottomViews);
      v71 = (*(v169 + 80) + 16) & ~*(v169 + 80);
      v72 = v45;
      v73 = swift_allocObject();
      sub_1D282AA28(v70, v73 + v71, type metadata accessor for MagicEditViewForegroundBottomViews);
      v69 &= 1u;
      LOBYTE(v221) = v69;
      v74 = v192;
      v75 = v197;
      *v192 = v197;
      v74[1] = v67;
      v195 = v67;
      *(v74 + 16) = v69;
      *(v74 + 17) = v227[0];
      *(v74 + 5) = *(v227 + 3);
      v74[3] = v198;
      v74[4] = 0xD00000000000002ALL;
      v74[5] = 0x80000001D28AFE50;
      v74[6] = sub_1D282F6D8;
      v74[7] = v73;
      swift_storeEnumTagMultiPayload();
      sub_1D22BBFAC(v75, v67, v69);
      sub_1D2870F68();
      sub_1D2870F78();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E2F98);
      sub_1D282EE78(&qword_1EC6E2F90, &qword_1EC6E2F98, &unk_1D28AAF20, sub_1D2341E80);
      sub_1D282EEFC();
      v76 = v194;
      sub_1D2875AF8();
      sub_1D22BD1D0(v76, v201, &qword_1EC6E2F70);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E2F80);
      sub_1D282EDC0();
      sub_1D282F654();
      sub_1D2875AF8();
      sub_1D22ED6E0(v197, v195, v69);

      sub_1D22BD238(v76, &qword_1EC6E2F70);
      v77 = v227;
      goto LABEL_27;
    }
  }

LABEL_10:
  v72 = a1;
  sub_1D2877618();
  v78 = *(sub_1D28054FC() + OBJC_IVAR____TtC23ImagePlaygroundInternal17PreviewsViewModel_previewsStore);
  swift_getKeyPath();
  *&v227[0] = v78;
  sub_1D28719E8();

  swift_beginAccess();
  v79 = *(v78 + 16);
  sub_1D2870F68();

  v80 = *(v79 + 16);

  v77 = v227;
  v81 = v197;
  v82 = v198;
  if (!v80)
  {
    v83 = sub_1D2805AB0();
    if (v85 == 0xFF)
    {
LABEL_22:

      goto LABEL_23;
    }

    sub_1D22FD918(v83, v84, v85);
  }

  v86 = sub_1D2811164();

  if (v86)
  {
    sub_1D2825890(v195);
    sub_1D24CC0C4(v82);
    v87 = v185;
    v77 = v179;
    (*(v185 + 104))(v81, *MEMORY[0x1E697FF38], v179);
    (*(v87 + 56))(v81, 0, 1, v77);
    v88 = *(v178 + 48);
    v89 = v190;
    sub_1D22BD1D0(v82, v190, &qword_1EC6D99B8);
    sub_1D22BD1D0(v81, v89 + v88, &qword_1EC6D99B8);
    v90 = *(v87 + 48);
    if (v90(v89, 1, v77) == 1)
    {
      sub_1D22BD238(v81, &qword_1EC6D99B8);
      v91 = v190;
      sub_1D22BD238(v82, &qword_1EC6D99B8);
      v92 = v90(v91 + v88, 1, v77);
      v93 = v180;
      if (v92 == 1)
      {
        sub_1D22BD238(v91, &qword_1EC6D99B8);
        goto LABEL_25;
      }
    }

    else
    {
      v94 = v168;
      sub_1D22BD1D0(v89, v168, &qword_1EC6D99B8);
      if (v90(v89 + v88, 1, v77) != 1)
      {
        v102 = v185;
        v103 = v167;
        (*(v185 + 32))(v167, v89 + v88, v77);
        sub_1D281B544(&qword_1ED89D3D0, MEMORY[0x1E697FF50]);
        v104 = sub_1D2877F98();
        v105 = *(v102 + 8);
        v105(v103, v77);
        sub_1D22BD238(v197, &qword_1EC6D99B8);
        sub_1D22BD238(v198, &qword_1EC6D99B8);
        v105(v94, v77);
        sub_1D22BD238(v89, &qword_1EC6D99B8);
        v93 = v180;
        if (v104)
        {
LABEL_25:
          v106 = *MEMORY[0x1E697E720];
          v107 = sub_1D2874E88();
          (*(*(v107 - 8) + 104))(v93, v106, v107);
          sub_1D281B544(&qword_1ED89DE70, MEMORY[0x1E697E730]);
          result = sub_1D2877F98();
          if ((result & 1) == 0)
          {
            __break(1u);
            return result;
          }

          goto LABEL_26;
        }

        goto LABEL_20;
      }

      sub_1D22BD238(v197, &qword_1EC6D99B8);
      v91 = v190;
      sub_1D22BD238(v198, &qword_1EC6D99B8);
      (*(v185 + 8))(v94, v77);
      v93 = v180;
    }

    sub_1D22BD238(v91, &qword_1EC6E0DB0);
LABEL_20:
    v95 = *MEMORY[0x1E697E6E0];
    v96 = sub_1D2874E88();
    (*(*(v96 - 8) + 104))(v93, v95, v96);
    sub_1D281B544(&qword_1ED89DE70, MEMORY[0x1E697E730]);
    if (sub_1D2877F98())
    {
LABEL_26:
      sub_1D282F024();
      sub_1D22BB9D8(&qword_1ED89CBF0, &unk_1EC6DE860);
      v109 = v172;
      v110 = v195;
      sub_1D28769B8();
      sub_1D22BD238(v93, &unk_1EC6DE860);
      sub_1D22BD238(v110, &qword_1EC6E2F48);
      LOBYTE(v110) = sub_1D2876338();
      v111 = v171;
      (*(v174 + 32))(v171, v109, v175);
      v112 = &v111[*(v193 + 36)];
      *v112 = v110;
      *(v112 + 1) = 0;
      *(v112 + 2) = 0;
      *(v112 + 24) = xmmword_1D28AA330;
      v112[40] = 0;
      v113 = v111;
      v114 = v177;
      sub_1D22EC9BC(v113, v177, &qword_1EC6E2F58);
      sub_1D22BD1D0(v114, v192, &qword_1EC6E2F58);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E2F98);
      sub_1D282EE78(&qword_1EC6E2F90, &qword_1EC6E2F98, &unk_1D28AAF20, sub_1D2341E80);
      sub_1D282EEFC();
      v115 = v194;
      sub_1D2875AF8();
      sub_1D22BD1D0(v115, v201, &qword_1EC6E2F70);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E2F80);
      sub_1D282EDC0();
      sub_1D282F654();
      v77 = v227;
      sub_1D2875AF8();
      sub_1D22BD238(v115, &qword_1EC6E2F70);
      sub_1D22BD238(v114, &qword_1EC6E2F58);
      goto LABEL_27;
    }

    __break(1u);
    goto LABEL_22;
  }

LABEL_23:
  sub_1D2877848();
  sub_1D28748C8();
  v97 = v234;
  v98 = v235;
  v99 = v236;
  v100 = v237;
  LOBYTE(v227[0]) = 1;
  LOBYTE(v221) = v235;
  v238 = v237;
  v101 = v201;
  *v201 = 0;
  *(v101 + 8) = 1;
  v101[2] = v97;
  *(v101 + 24) = v98;
  v101[4] = v99;
  *(v101 + 40) = v100;
  *(v101 + 3) = *(v77 + 200);
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E2F80);
  sub_1D282EDC0();
  sub_1D282F654();
  sub_1D2875AF8();
LABEL_27:
  sub_1D2877618();
  v116 = sub_1D2805AB0();
  v118 = v117;
  v120 = v119;
  v121 = ~v119;

  if (v121)
  {
    sub_1D22FD918(v116, v118, v120);
    v122 = 1;
    v123 = v207;
  }

  else
  {
    sub_1D2877618();
    v124 = sub_1D2801504();

    v125 = v184;
    *v184 = v124;
    v126 = *(type metadata accessor for DescriptionFieldWithSuggestions() + 20);
    *(v125 + v126) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6E1C40);
    swift_storeEnumTagMultiPayload();
    *&v227[0] = 0x4045000000000000;
    (*(v182 + 104))(v181, *MEMORY[0x1E6980F00], v183);
    sub_1D2459314();
    sub_1D2874748();
    CGRectGetWidth(*(v72 + *(v196 + 20)));
    sub_1D2877848();
    sub_1D28748C8();
    v127 = (v125 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E3030) + 36));
    v128 = *(v77 + 232);
    *v127 = *(v77 + 216);
    v127[1] = v128;
    v127[2] = *(v77 + 248);
    v123 = v207;
    v129 = (v125 + *(v207 + 36));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E28E0);
    sub_1D2875268();
    *v129 = swift_getKeyPath();
    sub_1D22EC9BC(v125, v220, &qword_1EC6E2F38);
    v122 = 0;
  }

  (*(v206 + 56))(v220, v122, 1, v123);
  v130 = sub_1D2826640();
  v131 = v217;
  if (v130)
  {
    sub_1D2877618();
    v132 = sub_1D280594C();

    KeyPath = swift_getKeyPath();
    v226 = 0;
    v134 = swift_getKeyPath();
    v225 = 0;
    v135 = swift_getKeyPath();
    v224 = 0;
    *&v221 = v132;
    type metadata accessor for ErrorViewModel();
    sub_1D28772F8();
    v221 = v227[0];
    *&v222 = KeyPath;
    BYTE8(v222) = v226;
    *&v223[0] = v134;
    BYTE8(v223[0]) = v225;
    *&v223[1] = v135;
    BYTE8(v223[1]) = v224;
    v136 = v187;
    sub_1D2875F58();
    sub_1D26ECF8C();
    v137 = v186;
    v138 = v189;
    sub_1D2876958();
    (*(v188 + 8))(v136, v138);
    v227[0] = v221;
    v227[1] = v222;
    v227[2] = v223[0];
    *(v77 + 41) = *(v223 + 9);
    sub_1D26ECFE0(v227);
    v139 = v209;
    *(v137 + *(v209 + 36)) = xmmword_1D28AA340;
    sub_1D22EC9BC(v137, v131, &qword_1EC6E2F28);
    (*(v208 + 56))(v131, 0, 1, v139);
  }

  else
  {
    (*(v208 + 56))(v217, 1, 1, v209);
  }

  v140 = sub_1D2877848();
  v141 = v213;
  *v213 = v140;
  *(v141 + 8) = v142;
  v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E3038);
  sub_1D28269D8(v141 + *(v143 + 44));
  v144 = sub_1D2876348();
  sub_1D2874298();
  v146 = v145;
  v148 = v147;
  v150 = v149;
  v152 = v151;
  v153 = v141 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E3040) + 36);
  *v153 = v144;
  *(v153 + 8) = v146;
  *(v153 + 16) = v148;
  *(v153 + 24) = v150;
  *(v153 + 32) = v152;
  *(v153 + 40) = 0;
  v154 = MEMORY[0x1D38A0390](0.5, 1.0, 0.0);
  sub_1D2877618();
  v155 = *&v227[0];
  swift_getKeyPath();
  *&v227[0] = v155;
  sub_1D281B544(&qword_1EC6DCC48, type metadata accessor for MagicViewModel);
  sub_1D28719E8();

  v156 = OBJC_IVAR____TtC23ImagePlaygroundInternal14MagicViewModel__onBoardingDescription;
  swift_beginAccess();
  v157 = (v141 + *(v211 + 36));
  v158 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E3048);
  sub_1D22BD1D0(v155 + v156, v157 + *(v158 + 36), &unk_1EC6E1D40);

  *v157 = v154;
  LOBYTE(v157) = v241;
  LOBYTE(v156) = v240;
  LOBYTE(v154) = v239;
  v159 = v216;
  sub_1D22BD1D0(v219, v216, &qword_1EC6E2F78);
  v160 = v210;
  sub_1D22BD1D0(v220, v210, &qword_1EC6E2F40);
  v161 = v212;
  sub_1D22BD1D0(v131, v212, &qword_1EC6E2F30);
  v162 = v215;
  sub_1D22BD1D0(v141, v215, &qword_1EC6E2F20);
  v163 = v214;
  *v214 = 0;
  *(v163 + 8) = v157;
  v164 = v204;
  v163[2] = v205;
  *(v163 + 24) = v156;
  v163[4] = v164;
  *(v163 + 40) = v154;
  v165 = v202;
  v163[6] = v203;
  v163[7] = v165;
  v166 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E3050);
  sub_1D22BD1D0(v159, v163 + v166[12], &qword_1EC6E2F78);
  sub_1D22BD1D0(v160, v163 + v166[16], &qword_1EC6E2F40);
  sub_1D22BD1D0(v161, v163 + v166[20], &qword_1EC6E2F30);
  sub_1D22BD1D0(v162, v163 + v166[24], &qword_1EC6E2F20);
  sub_1D22BD238(v141, &qword_1EC6E2F20);
  sub_1D22BD238(v217, &qword_1EC6E2F30);
  sub_1D22BD238(v220, &qword_1EC6E2F40);
  sub_1D22BD238(v219, &qword_1EC6E2F78);
  sub_1D22BD238(v162, &qword_1EC6E2F20);
  sub_1D22BD238(v161, &qword_1EC6E2F30);
  sub_1D22BD238(v160, &qword_1EC6E2F40);
  return sub_1D22BD238(v216, &qword_1EC6E2F78);
}

void sub_1D2825738(char a1)
{
  v2 = sub_1D2871CA8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v6 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E2AE8);
    sub_1D2877618();
    sub_1D2877618();
    sub_1D28054FC();

    (*(v3 + 104))(v5, *MEMORY[0x1E699C1D8], v2);
    sub_1D27FF854(v5);

    (*(v3 + 8))(v5, v2);
  }
}

uint64_t sub_1D2825890@<X0>(uint64_t a1@<X8>)
{
  v104 = a1;
  v102 = sub_1D2877548();
  MEMORY[0x1EEE9AC00](v102);
  v101 = &v78 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1D2877158();
  v99 = *(v3 - 8);
  v100 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v97 = &v78 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v96 = &v78 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9D40);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v95 = &v78 - v8;
  v93 = sub_1D2877B28();
  v92 = *(v93 - 8);
  MEMORY[0x1EEE9AC00](v93);
  v87 = &v78 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = sub_1D2877B08();
  v90 = *(v89 - 8);
  MEMORY[0x1EEE9AC00](v89);
  v85 = &v78 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = sub_1D2875718();
  v84 = *(v83 - 8);
  MEMORY[0x1EEE9AC00](v83);
  v79 = &v78 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1D28750E8();
  v80 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v78 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E3018);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v78 - v16;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E3010);
  v82 = *(v81 - 8);
  MEMORY[0x1EEE9AC00](v81);
  v19 = &v78 - v18;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E2FD0);
  MEMORY[0x1EEE9AC00](v88);
  v78 = &v78 - v20;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E2FC8) - 8;
  MEMORY[0x1EEE9AC00](v94);
  v91 = &v78 - v21;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E2FB8);
  MEMORY[0x1EEE9AC00](v98);
  v103 = &v78 - v22;
  *v17 = sub_1D28756A8();
  *(v17 + 1) = 0;
  v17[16] = 0;
  v23 = &v17[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E3058) + 44)];
  v86 = v1;
  sub_1D282738C(v1, v23);
  sub_1D28750D8();
  v24 = sub_1D22BB9D8(&qword_1EC6E3020, &qword_1EC6E3018);
  v25 = sub_1D281B544(&qword_1ED89D748, MEMORY[0x1E697C248]);
  sub_1D28767A8();
  (*(v80 + 8))(v14, v12);
  sub_1D22BD238(v17, &qword_1EC6E3018);
  v26 = v79;
  sub_1D2875708();
  *&v107 = v15;
  *(&v107 + 1) = v12;
  *&v108 = v24;
  *(&v108 + 1) = v25;
  swift_getOpaqueTypeConformance2();
  sub_1D281B544(&qword_1ED89D6B0, MEMORY[0x1E697C4E8]);
  v27 = v78;
  v28 = v81;
  v29 = v83;
  sub_1D2876768();
  (*(v84 + 8))(v26, v29);
  (*(v82 + 8))(v19, v28);
  v30 = v85;
  sub_1D2877AF8();
  v31 = v87;
  sub_1D2877B18();
  v32 = (v27 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E3008) + 36));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E28E0);
  sub_1D281B544(&qword_1ED89CFE8, MEMORY[0x1E6982178]);
  v33 = v89;
  sub_1D2875278();
  (*(v92 + 8))(v31, v93);
  (*(v90 + 8))(v30, v33);
  *v32 = swift_getKeyPath();
  v34 = sub_1D28763F8();
  v35 = v95;
  (*(*(v34 - 8) + 56))(v95, 1, 1, v34);
  v36 = sub_1D2876448();
  sub_1D22BD238(v35, &qword_1EC6D9D40);
  KeyPath = swift_getKeyPath();
  v38 = (v27 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E2FF8) + 36));
  *v38 = KeyPath;
  v38[1] = v36;
  sub_1D2877848();
  sub_1D28748C8();
  v39 = (v27 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E2FE8) + 36));
  v40 = v108;
  *v39 = v107;
  v39[1] = v40;
  v39[2] = v109;
  v41 = sub_1D2876338();
  v42 = v27 + *(v88 + 36);
  *v42 = v41;
  __asm { FMOV            V0.2D, #4.0 }

  *(v42 + 8) = _Q0;
  *(v42 + 24) = _Q0;
  *(v42 + 40) = 0;
  v48 = v97;
  sub_1D2877138();
  v49 = v96;
  MEMORY[0x1D389FBC0](1);
  v50 = v100;
  v51 = *(v99 + 8);
  v51(v48, v100);
  v52 = *MEMORY[0x1E697F468];
  v53 = sub_1D2875868();
  v54 = v101;
  (*(*(v53 - 8) + 104))(v101, v52, v53);
  sub_1D282F280();
  sub_1D281B544(&qword_1EC6D9F18, MEMORY[0x1E6981998]);
  v55 = v91;
  sub_1D2876808();
  sub_1D282E9F8(v54, MEMORY[0x1E6981998]);
  v51(v49, v50);
  sub_1D22BD238(v27, &qword_1EC6E2FD0);
  v56 = v55 + *(v94 + 44);
  *v56 = 1;
  *(v56 + 8) = 0xD000000000000028;
  *(v56 + 16) = 0x80000001D28AFF80;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E2AE8);
  sub_1D2877618();
  v57 = *(sub_1D28054FC() + OBJC_IVAR____TtC23ImagePlaygroundInternal17PreviewsViewModel_previewsStore);
  swift_getKeyPath();
  v106 = v57;
  sub_1D281B544(&qword_1ED8A0FD0, type metadata accessor for GeneratedPreviewsStore);
  sub_1D28719E8();

  swift_beginAccess();
  v58 = *(v57 + 16);
  sub_1D2870F68();

  v59 = *(v58 + 16);

  if (!v59)
  {
    v60 = sub_1D2805AB0();
    if (v62 == 0xFF)
    {

      v64 = 0.0;
      goto LABEL_7;
    }

    sub_1D22FD918(v60, v61, v62);
  }

  v63 = sub_1D2811164();

  if (v63)
  {
    v64 = 1.0;
  }

  else
  {
    v64 = 0.0;
  }

LABEL_7:
  v65 = v103;
  v66 = sub_1D22EC9BC(v55, v103, &qword_1EC6E2FC8);
  *(v65 + *(v98 + 36)) = v64;
  v67 = MEMORY[0x1D38A0390](v66, 0.5, 1.0, 0.0);
  sub_1D2877618();
  v68 = *(sub_1D28054FC() + OBJC_IVAR____TtC23ImagePlaygroundInternal17PreviewsViewModel_previewsStore);
  swift_getKeyPath();
  v105 = v68;
  sub_1D28719E8();

  swift_beginAccess();
  v69 = *(v68 + 16);
  sub_1D2870F68();

  v70 = *(v69 + 16);

  if (!v70)
  {
    v71 = sub_1D2805AB0();
    if (v73 == 0xFF)
    {
      v74 = 0;
      goto LABEL_11;
    }

    sub_1D22FD918(v71, v72, v73);
  }

  v74 = sub_1D2811164();
LABEL_11:

  v75 = v104;
  sub_1D22EC9BC(v65, v104, &qword_1EC6E2FB8);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E2F48);
  v77 = v75 + *(result + 36);
  *v77 = v67;
  *(v77 + 8) = v74 & 1;
  return result;
}

uint64_t sub_1D2826640()
{
  v1 = v0;
  v2 = sub_1D2875628();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v16[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = os_variant_has_internal_ui();
  if (result)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E2AE8);
    sub_1D2877618();
    v7 = sub_1D280594C();

    swift_getKeyPath();
    v16[0] = v7;
    sub_1D281B544(&qword_1ED8A4480, type metadata accessor for ErrorViewModel);
    sub_1D28719E8();

    v8 = v7[24];

    if (v8)
    {
      return 0;
    }

    v9 = v1 + *(type metadata accessor for MagicEditViewForegroundBottomViews(0) + 36);
    if (*(v9 + 8) == 1)
    {
      v16[0] = *v9;
      sub_1D2870F78();
    }

    else
    {
      sub_1D2870F78();
      sub_1D2878A28();
      v10 = sub_1D28762E8();
      sub_1D2873BE8();

      sub_1D2875618();
      swift_getAtKeyPath();

      (*(v3 + 8))(v5, v2);
    }

    swift_getKeyPath();
    if (qword_1ED8A4928 != -1)
    {
      swift_once();
    }

    v16[0] = off_1ED8A4930;
    sub_1D281B544(&qword_1ED8A4920, type metadata accessor for DebugSettings);
    sub_1D28719E8();
    sub_1D23B7BB8();
    sub_1D2870F78();
    v11 = sub_1D2878A58();
    v12 = sub_1D2878068();
    v13 = [v11 BOOLForKey_];

    if (v13)
    {
      return 0;
    }

    else
    {
      sub_1D2877618();
      sub_1D2805284(v16);

      result = v17 < 0xFCu;
      if (v17 <= 0xFBu)
      {
        v14 = v17 < 0xFCu;
        sub_1D2415B64(v16[0], v16[1], v17);
        return v14;
      }
    }
  }

  return result;
}

uint64_t sub_1D28269D8@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1D2875C28();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v58 = &v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v57 = &v48 - v6;
  v7 = sub_1D2875C48();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v59 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v60 = &v48 - v11;
  v55 = sub_1D2874E88();
  v54 = *(v55 - 8);
  MEMORY[0x1EEE9AC00](v55);
  v53 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1D2871318();
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E30C8);
  v61 = *(v62 - 8);
  MEMORY[0x1EEE9AC00](v62);
  v56 = &v48 - v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E2AE8);
  sub_1D2877618();
  v17 = sub_1D28054FC();

  v18 = *(v17 + OBJC_IVAR____TtC23ImagePlaygroundInternal17PreviewsViewModel_previewsStore);
  swift_getKeyPath();
  *&v69[0] = v18;
  sub_1D281B544(&qword_1ED8A0FD0, type metadata accessor for GeneratedPreviewsStore);
  sub_1D28719E8();

  swift_beginAccess();
  v19 = *(v18 + 16);
  sub_1D2870F68();

  v20 = *(v19 + 16);

  if (!v20)
  {
    return (*(v61 + 56))(a1, 1, 1, v62);
  }

  v21 = sub_1D28756A8();
  sub_1D2343B7C(v15);
  v22 = sub_1D2876678();
  v24 = v23;
  v26 = v25;
  v51 = v8;
  v49 = v2;
  v28 = v27;
  v29 = sub_1D28764C8();
  KeyPath = swift_getKeyPath();
  v50 = v7;
  v31 = KeyPath;
  LOBYTE(v69[0]) = 1;
  v52 = a1;
  v32 = v26 & 1;
  LOBYTE(v63) = v26 & 1;
  v33 = swift_getKeyPath();
  v34 = sub_1D2875DA8();
  v63 = v21;
  LOBYTE(v64) = 1;
  *(&v64 + 1) = v22;
  *&v65 = v24;
  BYTE8(v65) = v32;
  *&v66 = v28;
  *(&v66 + 1) = v31;
  *&v67 = v29;
  *(&v67 + 1) = v33;
  LOBYTE(v68) = 1;
  HIDWORD(v68) = v34;
  v35 = v54;
  v36 = v53;
  v37 = v55;
  (*(v54 + 104))(v53, *MEMORY[0x1E697E6F8], v55);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E30D0);
  sub_1D28302E8();
  v38 = v56;
  sub_1D28769A8();
  (*(v35 + 8))(v36, v37);
  v69[3] = v66;
  v69[4] = v67;
  v70 = v68;
  v69[0] = v63;
  v69[1] = v64;
  v69[2] = v65;
  sub_1D22BD238(v69, &qword_1EC6E30D0);
  v39 = v57;
  sub_1D2875C18();
  v40 = v49;
  (*(v3 + 16))(v58, v39, v49);
  v41 = v60;
  sub_1D2875C38();
  (*(v3 + 8))(v39, v40);
  v42 = v51;
  v43 = v50;
  (*(v51 + 16))(v59, v41, v50);
  sub_1D281B544(&qword_1ED89D4C8, MEMORY[0x1E697FBD0]);
  v44 = sub_1D2874988();
  (*(v42 + 8))(v41, v43);
  v45 = v62;
  *(v38 + *(v62 + 36)) = v44;
  v46 = v52;
  sub_1D22EC9BC(v38, v52, &qword_1EC6E30C8);
  return (*(v61 + 56))(v46, 0, 1, v45);
}

uint64_t sub_1D28270E4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v7 = *(a2 + *(type metadata accessor for MagicEditViewForegroundBottomViews(0) + 20));
  v3 = v2 + CGRectGetHeight(v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E2AE8);
  sub_1D2877618();
  v4 = *(v6 + OBJC_IVAR____TtC23ImagePlaygroundInternal14MagicViewModel_magicViewFullHeightForKeyboardScrolling);

  if (v4 != v3)
  {
    sub_1D2877618();
    *(v6 + OBJC_IVAR____TtC23ImagePlaygroundInternal14MagicViewModel_magicViewFullHeightForKeyboardScrolling) = v3;
  }

  return result;
}

uint64_t sub_1D282719C@<X0>(void *a1@<X8>)
{
  v2 = sub_1D2875C58();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D2875E78();
  sub_1D28749E8();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  result = (*(v3 + 8))(v5, v2);
  *a1 = v7;
  a1[1] = v9;
  a1[2] = v11;
  a1[3] = v13;
  return result;
}

uint64_t sub_1D28272A8(CGFloat *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E2AE8);
  sub_1D2877618();
  v5 = *(v11 + OBJC_IVAR____TtC23ImagePlaygroundInternal14MagicViewModel_magicViewTextFieldFrame);
  v6 = *(v11 + OBJC_IVAR____TtC23ImagePlaygroundInternal14MagicViewModel_magicViewTextFieldFrame + 8);
  v7 = *(v11 + OBJC_IVAR____TtC23ImagePlaygroundInternal14MagicViewModel_magicViewTextFieldFrame + 16);
  v8 = *(v11 + OBJC_IVAR____TtC23ImagePlaygroundInternal14MagicViewModel_magicViewTextFieldFrame + 24);

  v12.origin.x = v5;
  v12.origin.y = v6;
  v12.size.width = v7;
  v12.size.height = v8;
  v13.origin.x = v1;
  v13.origin.y = v2;
  v13.size.width = v3;
  v13.size.height = v4;
  result = CGRectEqualToRect(v12, v13);
  if ((result & 1) == 0)
  {
    sub_1D2877618();
    v10 = (v11 + OBJC_IVAR____TtC23ImagePlaygroundInternal14MagicViewModel_magicViewTextFieldFrame);
    *v10 = v1;
    v10[1] = v2;
    v10[2] = v3;
    v10[3] = v4;
  }

  return result;
}

uint64_t sub_1D282738C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v87 = a2;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E3060);
  MEMORY[0x1EEE9AC00](v84);
  v83 = &v72 - v3;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E3068);
  v86 = *(v88 - 8);
  MEMORY[0x1EEE9AC00](v88);
  v85 = &v72 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v98 = &v72 - v6;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E28F8);
  MEMORY[0x1EEE9AC00](v82);
  v99 = &v72 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v97 = &v72 - v9;
  v10 = sub_1D2874518();
  v91 = *(v10 - 8);
  v92 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v81 = &v72 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = type metadata accessor for MagicEditViewForegroundBottomViews(0);
  v12 = *(v90 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v90);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E2908);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v72 - v16;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E2910);
  MEMORY[0x1EEE9AC00](v89);
  v96 = &v72 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v95 = &v72 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v94 = &v72 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v72 - v24;
  sub_1D282A9C0(a1, &v72 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for MagicEditViewForegroundBottomViews);
  v26 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v75 = v26 + v13;
  v27 = swift_allocObject();
  v77 = v26;
  v78 = &v72 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D282AA28(v78, v27 + v26, type metadata accessor for MagicEditViewForegroundBottomViews);
  v100 = a1;
  v28 = a1;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E2918);
  sub_1D27F6DDC();
  v76 = v29;
  sub_1D2877368();
  v74 = sub_1D22BB9D8(&qword_1ED89D168, &qword_1EC6E2908);
  sub_1D2876DA8();
  v30 = *(v15 + 8);
  v79 = v14;
  v80 = v15 + 8;
  v73 = v30;
  v30(v17, v14);
  v31 = a1 + *(v90 + 44);
  v32 = *v31;
  v33 = *(v31 + 8);
  v102 = v32;
  v103 = v33;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE890);
  sub_1D2877308();
  LOBYTE(v29) = v101;
  v34 = *(v89 + 36);
  v93 = v25;
  v35 = &v25[v34];
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D90B0);
  v37 = *(v91 + 56);
  v37(&v35[*(v36 + 36)], 1, 1, v92);
  *&v35[*(v36 + 40)] = 0;
  *v35 = (v29 & 1) == 0;
  sub_1D2875798();

  if (qword_1ED89E0E8 != -1)
  {
    swift_once();
  }

  v38 = v78;
  sub_1D282A9C0(a1, v78, type metadata accessor for MagicEditViewForegroundBottomViews);
  v39 = swift_allocObject();
  v40 = sub_1D282AA28(v38, v39 + v77, type metadata accessor for MagicEditViewForegroundBottomViews);
  MEMORY[0x1EEE9AC00](v40);
  *(&v72 - 2) = a1;
  sub_1D2877368();
  v41 = v81;
  sub_1D28744F8();
  v42 = v92;
  (*(v91 + 8))(v41, v92);
  v43 = v94;
  v44 = v79;
  sub_1D2876DA8();
  v73(v17, v44);
  v45 = v28 + *(v90 + 48);
  v46 = *v45;
  v47 = *(v45 + 8);
  v102 = v46;
  v103 = v47;
  sub_1D2877308();
  LOBYTE(v41) = v101;
  v48 = (v43 + *(v89 + 36));
  v49 = v43;
  v37(&v48[*(v36 + 36)], 1, 1, v42);
  *&v48[*(v36 + 40)] = 0;
  *v48 = (v41 & 1) == 0;
  sub_1D2875798();

  v50 = v97;
  sub_1D2877558();
  v51 = sub_1D2876398();
  sub_1D2874298();
  v52 = v50 + *(v82 + 36);
  *v52 = v51;
  *(v52 + 8) = v53;
  *(v52 + 16) = v54;
  *(v52 + 24) = v55;
  *(v52 + 32) = v56;
  *(v52 + 40) = 0;
  v57 = v83;
  sub_1D2829814(v83);
  sub_1D282F7B0();
  v58 = v98;
  sub_1D2876DA8();
  sub_1D22BD238(v57, &qword_1EC6E3060);
  v59 = v95;
  sub_1D22BD1D0(v93, v95, &qword_1EC6E2910);
  v60 = v96;
  sub_1D22BD1D0(v49, v96, &qword_1EC6E2910);
  sub_1D22BD1D0(v50, v99, &qword_1EC6E28F8);
  v61 = v86;
  v62 = *(v86 + 16);
  v63 = v85;
  v64 = v58;
  v65 = v88;
  v62(v85, v64, v88);
  v66 = v59;
  v67 = v87;
  sub_1D22BD1D0(v66, v87, &qword_1EC6E2910);
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E30B0);
  sub_1D22BD1D0(v60, v67 + v68[12], &qword_1EC6E2910);
  v69 = v99;
  sub_1D22BD1D0(v99, v67 + v68[16], &qword_1EC6E28F8);
  v62((v67 + v68[20]), v63, v65);
  v70 = *(v61 + 8);
  v70(v98, v65);
  sub_1D22BD238(v97, &qword_1EC6E28F8);
  sub_1D22BD238(v94, &qword_1EC6E2910);
  sub_1D22BD238(v93, &qword_1EC6E2910);
  v70(v63, v65);
  sub_1D22BD238(v69, &qword_1EC6E28F8);
  sub_1D22BD238(v96, &qword_1EC6E2910);
  return sub_1D22BD238(v95, &qword_1EC6E2910);
}

uint64_t sub_1D2827E4C(uint64_t a1)
{
  v2 = type metadata accessor for MagicEditViewForegroundBottomViews(0);
  v3 = v2 - 8;
  v4 = *(v2 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v23[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8E60);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v23[-v8];
  v10 = sub_1D2871CA8();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v23[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E2AE8);
  sub_1D2877618();
  (*(v11 + 104))(v13, *MEMORY[0x1E699C1F0], v10);
  sub_1D27FF854(v13);

  (*(v11 + 8))(v13, v10);
  v14 = a1 + *(v3 + 52);
  v15 = *v14;
  v16 = *(v14 + 8);
  v23[16] = v15;
  v24 = v16;
  v23[15] = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE890);
  sub_1D2877318();
  v17 = sub_1D28785F8();
  (*(*(v17 - 8) + 56))(v9, 1, 1, v17);
  sub_1D282A9C0(a1, v6, type metadata accessor for MagicEditViewForegroundBottomViews);
  sub_1D2878568();
  v18 = sub_1D2878558();
  v19 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v20 = swift_allocObject();
  v21 = MEMORY[0x1E69E85E0];
  *(v20 + 16) = v18;
  *(v20 + 24) = v21;
  sub_1D282AA28(v6, v20 + v19, type metadata accessor for MagicEditViewForegroundBottomViews);
  sub_1D22AE01C(0, 0, v9, &unk_1D28AB0C8, v20);
}

uint64_t sub_1D2828174(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a4;
  v5 = sub_1D2879328();
  v4[5] = v5;
  v4[6] = *(v5 - 8);
  v4[7] = swift_task_alloc();
  sub_1D2878568();
  v4[8] = sub_1D2878558();
  v7 = sub_1D28784F8();
  v4[9] = v7;
  v4[10] = v6;

  return MEMORY[0x1EEE6DFA0](sub_1D2828268, v7, v6);
}

uint64_t sub_1D2828268()
{
  sub_1D2879718();
  v1 = swift_task_alloc();
  *(v0 + 88) = v1;
  *v1 = v0;
  v1[1] = sub_1D2828334;

  return sub_1D233BA38(2000000000000000000, 0, 0, 0, 1);
}

uint64_t sub_1D2828334()
{
  v3 = *v1;
  v2 = *v1;

  v4 = v2[7];
  v5 = v2[6];
  v6 = v2[5];
  if (v0)
  {

    (*(v5 + 8))(v4, v6);
    v7 = v3[9];
    v8 = v3[10];
    v9 = sub_1D2831DF8;
  }

  else
  {
    (*(v5 + 8))(v4, v6);
    v7 = v3[9];
    v8 = v3[10];
    v9 = sub_1D28284C8;
  }

  return MEMORY[0x1EEE6DFA0](v9, v7, v8);
}

uint64_t sub_1D28284C8()
{
  v1 = *(v0 + 32);

  v2 = (v1 + *(type metadata accessor for MagicEditViewForegroundBottomViews(0) + 44));
  v3 = *v2;
  v4 = *(v2 + 1);
  *(v0 + 16) = v3;
  *(v0 + 24) = v4;
  *(v0 + 96) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE890);
  sub_1D2877318();

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1D2828588@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v45 = a2;
  v3 = sub_1D2874518();
  v43 = *(v3 - 8);
  v44 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1D2871CA8();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D99E8);
  v48 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v47 = &v35 - v11;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E2920);
  MEMORY[0x1EEE9AC00](v46);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v35 - v15;
  v38 = sub_1D2875798();
  v18 = v17;
  v37 = v19;
  v40 = v20;
  if (qword_1ED89E0E8 != -1)
  {
    swift_once();
  }

  v36 = qword_1ED8B0058;
  v21 = (a1 + *(type metadata accessor for MagicEditViewForegroundBottomViews(0) + 44));
  v22 = *v21;
  v23 = *(v21 + 1);
  v41 = v22;
  LOBYTE(v51) = v22;
  v42 = v23;
  *(&v51 + 1) = v23;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE890);
  v24 = sub_1D2877308();
  if (v49)
  {
    v25 = 0xE90000000000006BLL;
    v26 = 0x72616D6B63656863;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E2AE8);
    sub_1D2877618();
    sub_1D28054FC();
    v35 = v16;

    sub_1D23C7998();

    sub_1D2877C58();
    (*(v7 + 104))(v9, *MEMORY[0x1E699C1F0], v6);
    v26 = MEMORY[0x1D38A0680](v9, 1);
    v25 = v27;
    v16 = v35;

    v24 = (*(v7 + 8))(v9, v6);
  }

  MEMORY[0x1EEE9AC00](v24);
  *(&v35 - 8) = v38;
  *(&v35 - 7) = v18;
  *(&v35 - 48) = v37 & 1;
  *(&v35 - 5) = v40;
  *(&v35 - 4) = 0;
  v28 = v36;
  *(&v35 - 3) = 0;
  *(&v35 - 2) = v28;
  MEMORY[0x1EEE9AC00](v29);
  *(&v35 - 2) = v26;
  *(&v35 - 1) = v25;
  v30 = v47;
  sub_1D2877248();

  sub_1D2877848();
  sub_1D28748C8();
  (*(v48 + 32))(v13, v30, v10);
  v31 = &v13[*(v46 + 36)];
  v32 = v52;
  *v31 = v51;
  *(v31 + 1) = v32;
  *(v31 + 2) = v53;
  v49 = v41;
  v50 = v42;
  sub_1D2877308();
  sub_1D28744F8();
  (*(v43 + 8))(v5, v44);
  sub_1D22EC9BC(v13, v16, &qword_1EC6E2920);
  v33 = v45;
  sub_1D22EC9BC(v16, v45, &qword_1EC6E2920);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E2918);
  *(v33 + *(result + 36)) = 0;
  return result;
}

uint64_t sub_1D2828B30(uint64_t a1)
{
  v2 = type metadata accessor for MagicEditViewForegroundBottomViews(0);
  v3 = v2 - 8;
  v4 = *(v2 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v23[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8E60);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v23[-v8];
  v10 = sub_1D2871CA8();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v23[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E2AE8);
  sub_1D2877618();
  (*(v11 + 104))(v13, *MEMORY[0x1E699C1C8], v10);
  sub_1D27FF854(v13);

  (*(v11 + 8))(v13, v10);
  v14 = a1 + *(v3 + 56);
  v15 = *v14;
  v16 = *(v14 + 8);
  v23[16] = v15;
  v24 = v16;
  v23[15] = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE890);
  sub_1D2877318();
  v17 = sub_1D28785F8();
  (*(*(v17 - 8) + 56))(v9, 1, 1, v17);
  sub_1D282A9C0(a1, v6, type metadata accessor for MagicEditViewForegroundBottomViews);
  sub_1D2878568();
  v18 = sub_1D2878558();
  v19 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v20 = swift_allocObject();
  v21 = MEMORY[0x1E69E85E0];
  *(v20 + 16) = v18;
  *(v20 + 24) = v21;
  sub_1D282AA28(v6, v20 + v19, type metadata accessor for MagicEditViewForegroundBottomViews);
  sub_1D22AE01C(0, 0, v9, &unk_1D28AB0B8, v20);
}

uint64_t sub_1D2828E58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a4;
  v5 = sub_1D2879328();
  v4[5] = v5;
  v4[6] = *(v5 - 8);
  v4[7] = swift_task_alloc();
  sub_1D2878568();
  v4[8] = sub_1D2878558();
  v7 = sub_1D28784F8();
  v4[9] = v7;
  v4[10] = v6;

  return MEMORY[0x1EEE6DFA0](sub_1D2828F4C, v7, v6);
}

uint64_t sub_1D2828F4C()
{
  sub_1D2879718();
  v1 = swift_task_alloc();
  *(v0 + 88) = v1;
  *v1 = v0;
  v1[1] = sub_1D2829018;

  return sub_1D233BA38(2000000000000000000, 0, 0, 0, 1);
}

uint64_t sub_1D2829018()
{
  v3 = *v1;
  v2 = *v1;

  v4 = v2[7];
  v5 = v2[6];
  v6 = v2[5];
  if (v0)
  {

    (*(v5 + 8))(v4, v6);
    v7 = v3[9];
    v8 = v3[10];
    v9 = sub_1D2831DFC;
  }

  else
  {
    (*(v5 + 8))(v4, v6);
    v7 = v3[9];
    v8 = v3[10];
    v9 = sub_1D28291AC;
  }

  return MEMORY[0x1EEE6DFA0](v9, v7, v8);
}

uint64_t sub_1D28291AC()
{
  v1 = *(v0 + 32);

  v2 = (v1 + *(type metadata accessor for MagicEditViewForegroundBottomViews(0) + 48));
  v3 = *v2;
  v4 = *(v2 + 1);
  *(v0 + 16) = v3;
  *(v0 + 24) = v4;
  *(v0 + 96) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE890);
  sub_1D2877318();

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1D282926C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1D2874518();
  v51 = *(v4 - 8);
  v52 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v50 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1D2871CA8();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D99E8);
  v47 = *(v10 - 8);
  v48 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v39 - v11;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E2920);
  MEMORY[0x1EEE9AC00](v46);
  v14 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v49 = &v39 - v16;
  v41 = sub_1D2875798();
  v45 = v17;
  v40 = v18;
  v42 = v19;
  if (qword_1ED89E0E8 != -1)
  {
    swift_once();
  }

  v39 = qword_1ED8B0058;
  v44 = type metadata accessor for MagicEditViewForegroundBottomViews(0);
  v20 = (a1 + *(v44 + 48));
  v21 = *v20;
  v22 = *(v20 + 1);
  LOBYTE(v55) = v21;
  *(&v55 + 1) = v22;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE890);
  v23 = sub_1D2877308();
  if (v53)
  {
    v24 = 0xE90000000000006BLL;
    v25 = 0x72616D6B63656863;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E2AE8);
    sub_1D2877618();
    sub_1D28054FC();

    sub_1D23C7998();

    sub_1D2877C58();
    (*(v7 + 104))(v9, *MEMORY[0x1E699C1C8], v6);
    v25 = MEMORY[0x1D38A0680](v9, 1);
    v24 = v26;

    v23 = (*(v7 + 8))(v9, v6);
  }

  MEMORY[0x1EEE9AC00](v23);
  v27 = v42;
  v28 = v45;
  *(&v39 - 8) = v41;
  *(&v39 - 7) = v28;
  *(&v39 - 48) = v40 & 1;
  *(&v39 - 5) = v27;
  *(&v39 - 4) = 0;
  v29 = v39;
  *(&v39 - 3) = 0;
  *(&v39 - 2) = v29;
  MEMORY[0x1EEE9AC00](v30);
  *(&v39 - 2) = v25;
  *(&v39 - 1) = v24;
  sub_1D2877248();

  sub_1D2877848();
  sub_1D28748C8();
  (*(v47 + 32))(v14, v12, v48);
  v31 = &v14[*(v46 + 36)];
  v32 = v56;
  *v31 = v55;
  *(v31 + 1) = v32;
  *(v31 + 2) = v57;
  v33 = (a1 + *(v44 + 44));
  v34 = *v33;
  v35 = *(v33 + 1);
  v53 = v34;
  v54 = v35;
  sub_1D2877308();
  v36 = v50;
  sub_1D28744F8();
  (*(v51 + 8))(v36, v52);
  v37 = v49;
  sub_1D22EC9BC(v14, v49, &qword_1EC6E2920);
  sub_1D22EC9BC(v37, a2, &qword_1EC6E2920);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E2918);
  *(a2 + *(result + 36)) = 0;
  return result;
}

uint64_t sub_1D2829814@<X0>(uint64_t a1@<X8>)
{
  v34 = a1;
  v2 = sub_1D2875E08();
  v31 = *(v2 - 8);
  v32 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E3088);
  MEMORY[0x1EEE9AC00](v30);
  v6 = &v28 - v5;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E3080);
  v7 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v9 = &v28 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9490);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for ImageGeneration.PreviewImage(0);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E2AE8);
  sub_1D2877618();
  sub_1D280DAE0(v12);

  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_1D22BD238(v12, &qword_1EC6D9490);
    return (*(v7 + 56))(v34, 1, 1, v33);
  }

  else
  {
    v29 = v7;
    v18 = sub_1D282AA28(v12, v16, type metadata accessor for ImageGeneration.PreviewImage);
    MEMORY[0x1EEE9AC00](v18);
    *(&v28 - 2) = v1;
    *(&v28 - 1) = v16;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E30B8);
    type metadata accessor for ContextualMenuItems();
    sub_1D282FA64();
    sub_1D281B544(&qword_1EC6E2DB8, type metadata accessor for ContextualMenuItems);
    sub_1D2876528();
    KeyPath = swift_getKeyPath();
    v20 = &v6[*(v30 + 36)];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E30A8);
    sub_1D28779C8();
    *v20 = KeyPath;
    sub_1D2875DF8();
    sub_1D282F978();
    sub_1D281B544(&qword_1ED89D3D8, MEMORY[0x1E697C848]);
    v21 = v32;
    sub_1D2876768();
    (*(v31 + 8))(v4, v21);
    sub_1D22BD238(v6, &qword_1EC6E3088);
    v22 = v33;
    v23 = &v9[*(v33 + 36)];
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D90B0);
    v25 = *(v24 + 36);
    v26 = sub_1D2874518();
    (*(*(v26 - 8) + 56))(&v23[v25], 1, 1, v26);
    *&v23[*(v24 + 40)] = 0;
    *v23 = 1;
    sub_1D2875798();

    if (qword_1ED89E0E8 != -1)
    {
      swift_once();
    }

    v27 = v34;
    sub_1D22EC9BC(v9, v34, &qword_1EC6E3080);
    (*(v29 + 56))(v27, 0, 1, v22);
    return sub_1D282E9F8(v16, type metadata accessor for ImageGeneration.PreviewImage);
  }
}

uint64_t sub_1D2829DFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = type metadata accessor for MagicEditViewForegroundBottomViews(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E2AE8);
  sub_1D2877618();
  v9 = v16[1];
  v10 = type metadata accessor for ContextualMenuItems();
  sub_1D282A9C0(a2, a3 + v10[5], type metadata accessor for ImageGeneration.PreviewImage);
  sub_1D282A9C0(a1, v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for MagicEditViewForegroundBottomViews);
  v11 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v12 = swift_allocObject();
  sub_1D282AA28(v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v12 + v11, type metadata accessor for MagicEditViewForegroundBottomViews);
  *a3 = v9;
  v13 = (a3 + v10[6]);
  *v13 = sub_1D282FC68;
  v13[1] = v12;
  v14 = a3 + v10[7];
  result = swift_getKeyPath();
  *v14 = result;
  v14[8] = 0;
  return result;
}

uint64_t sub_1D2829FA4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8E60);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = v9 - v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E2AE8);
  sub_1D2877618();
  v3 = v9[1];
  v4 = sub_1D28785F8();
  (*(*(v4 - 8) + 56))(v2, 1, 1, v4);
  sub_1D2878568();
  sub_1D2870F78();
  v5 = sub_1D2878558();
  v6 = swift_allocObject();
  v7 = MEMORY[0x1E69E85E0];
  v6[2] = v5;
  v6[3] = v7;
  v6[4] = &unk_1D28AB0A0;
  v6[5] = v3;
  sub_1D22AE01C(0, 0, v2, &unk_1D28AB0A8, v6);
}

uint64_t sub_1D282A104@<X0>(uint64_t a1@<X8>)
{
  v27 = a1;
  v1 = sub_1D2874518();
  v25 = *(v1 - 8);
  v26 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1D2875718();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D99E8);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v24 - v10;
  v12 = sub_1D2875798();
  v14 = v13;
  v16 = v15;
  if (qword_1ED89E0E8 != -1)
  {
    v24 = v12;
    swift_once();
    v12 = v24;
  }

  MEMORY[0x1EEE9AC00](v12);
  *(&v24 - 8) = v17;
  *(&v24 - 7) = v14;
  *(&v24 - 48) = v18 & 1;
  *(&v24 - 5) = v16;
  *(&v24 - 4) = 0;
  *(&v24 - 3) = 0;
  *(&v24 - 2) = v19;
  MEMORY[0x1EEE9AC00](v17);
  *(&v24 - 2) = 0x73697370696C6C65;
  *(&v24 - 1) = 0xE800000000000000;
  sub_1D2877248();

  sub_1D2875708();
  sub_1D22BB9D8(&qword_1ED89D200, &qword_1EC6D99E8);
  sub_1D281B544(&qword_1ED89D6B0, MEMORY[0x1E697C4E8]);
  v20 = v27;
  sub_1D2876768();
  (*(v5 + 8))(v7, v4);
  (*(v9 + 8))(v11, v8);
  sub_1D2877848();
  sub_1D28748C8();
  v21 = (v20 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E30C0) + 36));
  v22 = v29;
  *v21 = v28;
  v21[1] = v22;
  v21[2] = v30;
  sub_1D28744F8();
  (*(v25 + 8))(v3, v26);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E30B8);
  *(v20 + *(result + 36)) = 0;
  return result;
}

uint64_t sub_1D282A58C(uint64_t a1)
{
  v1[2] = sub_1D2878568();
  v1[3] = sub_1D2878558();
  v3 = swift_task_alloc();
  v1[4] = v3;
  *v3 = v1;
  v3[1] = sub_1D282A64C;

  return sub_1D280E1E4(a1);
}

uint64_t sub_1D282A64C()
{

  v1 = sub_1D28784F8();

  return MEMORY[0x1EEE6DFA0](sub_1D22BE034, v1, v0);
}

uint64_t sub_1D282A788@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](a1 - 8);
  *a2 = sub_1D2875918();
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E2F08);
  sub_1D2823A30(v2, (a2 + *(v6 + 44)));
  sub_1D282A9C0(v2, &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for MagicEditViewForegroundBottomViews);
  v7 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v8 = swift_allocObject();
  sub_1D282AA28(&v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7, type metadata accessor for MagicEditViewForegroundBottomViews);
  v9 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E2F10) + 36));
  *v9 = sub_1D2831E10;
  v9[1] = 0;
  v9[2] = sub_1D282EA58;
  v9[3] = v8;
  sub_1D282A9C0(v2, &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for MagicEditViewForegroundBottomViews);
  v10 = swift_allocObject();
  sub_1D282AA28(&v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v7, type metadata accessor for MagicEditViewForegroundBottomViews);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E2F18);
  v12 = (a2 + *(result + 36));
  *v12 = sub_1D2831E0C;
  v12[1] = 0;
  v12[2] = sub_1D282ED94;
  v12[3] = v10;
  return result;
}

uint64_t sub_1D282A990()
{
  sub_1D282D6C0();
  result = sub_1D2875948();
  qword_1EC6E2AE0 = result;
  return result;
}

uint64_t sub_1D282A9C0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D282AA28(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t objectdestroy_28Tm()
{
  v1 = type metadata accessor for MagicEditViewForeground(0);
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E2AE8);
  (*(*(v3 - 8) + 8))(v2, v3);

  v4 = *(v1 + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE690);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_1D2875E18();
    v6 = *(v5 - 8);
    if (!(*(v6 + 48))(v2 + v4, 1, v5))
    {
      (*(v6 + 8))(v2 + v4, v5);
    }
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1D282ACC8(uint64_t (*a1)(void), uint64_t (*a2)(uint64_t))
{
  v3 = *(a1(0) - 8);
  v4 = v2 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return a2(v4);
}

uint64_t sub_1D282AE04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v68 = a2;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE860);
  MEMORY[0x1EEE9AC00](v67);
  v84 = &v64 - v3;
  v4 = sub_1D2874AE8();
  v82 = *(v4 - 8);
  v83 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v81 = &v64 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = sub_1D2877158();
  v73 = *(v78 - 8);
  MEMORY[0x1EEE9AC00](v78);
  v7 = &v64 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v72 = &v64 - v9;
  v10 = sub_1D2875718();
  v71 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v64 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E32E0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v64 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E32E8);
  v17 = *(v16 - 8);
  v75 = v16;
  v76 = v17;
  MEMORY[0x1EEE9AC00](v16);
  v69 = &v64 - v18;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E32F0);
  MEMORY[0x1EEE9AC00](v77);
  v20 = &v64 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E32F8);
  v22 = *(v21 - 8);
  v79 = v21;
  v80 = v22;
  MEMORY[0x1EEE9AC00](v21);
  v74 = &v64 - v23;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E3300);
  v65 = *(v66 - 8);
  MEMORY[0x1EEE9AC00](v66);
  v70 = &v64 - v24;
  v25 = sub_1D2876338();
  sub_1D2874298();
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E3308);
  (*(*(v34 - 8) + 16))(v15, a1, v34);
  v35 = &v15[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E3310) + 36)];
  *v35 = v25;
  *(v35 + 1) = v27;
  *(v35 + 2) = v29;
  *(v35 + 3) = v31;
  *(v35 + 4) = v33;
  v35[40] = 0;
  v36 = sub_1D28770D8();
  KeyPath = swift_getKeyPath();
  v38 = &v15[*(v13 + 36)];
  *v38 = KeyPath;
  v38[1] = v36;
  sub_1D2875708();
  v39 = sub_1D2831A48();
  v40 = sub_1D281B544(&qword_1ED89D6B0, MEMORY[0x1E697C4E8]);
  sub_1D2876768();
  (*(v71 + 8))(v12, v10);
  sub_1D22BD238(v15, &qword_1EC6E32E0);
  sub_1D2877138();
  v41 = v72;
  MEMORY[0x1D389FBC0](1);
  v42 = *(v73 + 8);
  v43 = v7;
  v44 = v78;
  v42(v43, v78);
  v85 = v13;
  v86 = v10;
  v87 = v39;
  v88 = v40;
  swift_getOpaqueTypeConformance2();
  sub_1D22ED498();
  v45 = v75;
  v46 = v69;
  sub_1D2876808();
  v42(v41, v44);
  (*(v76 + 8))(v46, v45);
  v47 = &v20[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E3330) + 36)];
  *v47 = 1;
  *(v47 + 1) = 0xD000000000000028;
  *(v47 + 2) = 0x80000001D28AFF80;
  v48 = sub_1D2876468();
  v49 = swift_getKeyPath();
  v50 = v77;
  v51 = &v20[*(v77 + 36)];
  *v51 = v49;
  v51[1] = v48;
  sub_1D2876418();
  v52 = sub_1D2831BB8();
  v53 = v74;
  sub_1D2876758();
  sub_1D22BD238(v20, &qword_1EC6E32F0);
  v54 = v81;
  sub_1D2874AB8();
  sub_1D2874C58();
  v85 = v50;
  v86 = v52;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v56 = v70;
  v57 = v79;
  sub_1D2876A18();
  (*(v82 + 8))(v54, v83);
  v58 = v53;
  v59 = v84;
  (*(v80 + 8))(v58, v57);
  v60 = *MEMORY[0x1E697E720];
  v61 = sub_1D2874E88();
  (*(*(v61 - 8) + 104))(v59, v60, v61);
  sub_1D281B544(&qword_1ED89DE70, MEMORY[0x1E697E730]);
  result = sub_1D2877F98();
  if (result)
  {
    v85 = v57;
    v86 = OpaqueTypeConformance2;
    swift_getOpaqueTypeConformance2();
    sub_1D22BB9D8(&qword_1ED89CBF0, &unk_1EC6DE860);
    v63 = v66;
    sub_1D28769B8();
    sub_1D22BD238(v59, &unk_1EC6DE860);
    return (*(v65 + 8))(v56, v63);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D282B75C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v86 = a2;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE860);
  MEMORY[0x1EEE9AC00](v85);
  v114 = &v82 - v4;
  v5 = sub_1D2874AE8();
  v112 = *(v5 - 8);
  v113 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v111 = &v82 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = sub_1D2877158();
  v93 = *(v110 - 8);
  MEMORY[0x1EEE9AC00](v110);
  v89 = &v82 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v91 = &v82 - v9;
  v88 = sub_1D2875718();
  v87 = *(v88 - 8);
  MEMORY[0x1EEE9AC00](v88);
  v11 = &v82 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1D2875628();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v82 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E3250);
  v17 = v16 - 8;
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v82 - v18;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E3258);
  MEMORY[0x1EEE9AC00](v92);
  v94 = &v82 - v20;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E3260);
  v96 = *(v99 - 8);
  MEMORY[0x1EEE9AC00](v99);
  v90 = &v82 - v21;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E3268);
  MEMORY[0x1EEE9AC00](v102);
  v103 = &v82 - v22;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E3270);
  v101 = *(v104 - 8);
  MEMORY[0x1EEE9AC00](v104);
  v98 = &v82 - v23;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E3278);
  MEMORY[0x1EEE9AC00](v95);
  v97 = &v82 - v24;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E3280);
  MEMORY[0x1EEE9AC00](v106);
  v100 = &v82 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E3288);
  v107 = *(v26 - 8);
  v108 = v26;
  MEMORY[0x1EEE9AC00](v26);
  v105 = &v82 - v27;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E3290);
  v83 = *(v84 - 8);
  MEMORY[0x1EEE9AC00](v84);
  v109 = &v82 - v28;
  v29 = sub_1D2876338();
  sub_1D2874298();
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v37 = v36;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E3298);
  (*(*(v38 - 8) + 16))(v19, a1, v38);
  v39 = &v19[*(v17 + 44)];
  *v39 = v29;
  *(v39 + 1) = v31;
  *(v39 + 2) = v33;
  *(v39 + 3) = v35;
  *(v39 + 4) = v37;
  v39[40] = 0;
  v40 = v2;
  v41 = v2 + *(type metadata accessor for DoneMagicViewButtonStyle(0) + 20);
  v42 = *v41;
  if (*(v41 + 8) == 1)
  {
    if ((v42 & 1) == 0)
    {
LABEL_3:
      v43 = sub_1D28770E8();
      goto LABEL_6;
    }
  }

  else
  {
    sub_1D2870F78();
    sub_1D2878A28();
    v44 = v12;
    v45 = sub_1D28762E8();
    sub_1D2873BE8();

    sub_1D2875618();
    swift_getAtKeyPath();
    sub_1D22EE66C(v42, 0);
    (*(v13 + 8))(v15, v44);
    if (v115 != 1)
    {
      goto LABEL_3;
    }
  }

  v43 = sub_1D28770A8();
LABEL_6:
  v46 = v43;
  KeyPath = swift_getKeyPath();
  v48 = v94;
  sub_1D22EC9BC(v19, v94, &qword_1EC6E3250);
  v49 = (v48 + *(v92 + 36));
  *v49 = KeyPath;
  v49[1] = v46;
  sub_1D2875708();
  sub_1D28315F8();
  sub_1D281B544(&qword_1ED89D6B0, MEMORY[0x1E697C4E8]);
  v50 = v90;
  v51 = v88;
  sub_1D2876768();
  (*(v87 + 8))(v11, v51);
  sub_1D22BD238(v48, &qword_1EC6E3258);
  v52 = sub_1D2877848();
  v54 = v53;
  sub_1D282C44C(v40, &v115);
  v55 = v115;
  v56 = v116;
  LOBYTE(v46) = BYTE1(v116);
  v57 = v103;
  (*(v96 + 32))(v103, v50, v99);
  v58 = v57 + *(v102 + 36);
  *v58 = v55;
  *(v58 + 8) = v56;
  *(v58 + 9) = v46;
  *(v58 + 16) = v52;
  *(v58 + 24) = v54;
  v59 = v89;
  sub_1D2877138();
  v60 = v91;
  MEMORY[0x1D389FBC0](1);
  v61 = *(v93 + 8);
  v62 = v110;
  v61(v59, v110);
  sub_1D2831768();
  sub_1D22ED498();
  v63 = v98;
  sub_1D2876808();
  v61(v60, v62);
  sub_1D22BD238(v57, &qword_1EC6E3268);
  v64 = v97;
  (*(v101 + 32))(v97, v63, v104);
  v65 = v64 + *(v95 + 36);
  *v65 = 1;
  *(v65 + 8) = 0xD000000000000028;
  *(v65 + 16) = 0x80000001D28AFF80;
  v66 = sub_1D2876468();
  v67 = swift_getKeyPath();
  v68 = v100;
  sub_1D22EC9BC(v64, v100, &qword_1EC6E3278);
  v69 = v106;
  v70 = (v68 + *(v106 + 36));
  *v70 = v67;
  v70[1] = v66;
  sub_1D2876418();
  v71 = sub_1D28318AC();
  v72 = v105;
  sub_1D2876758();
  sub_1D22BD238(v68, &qword_1EC6E3280);
  v73 = v111;
  sub_1D2874AC8();
  sub_1D2874C58();
  v115 = v69;
  v116 = v71;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v75 = v108;
  v76 = v109;
  sub_1D2876A18();
  (*(v112 + 8))(v73, v113);
  (*(v107 + 8))(v72, v75);
  v77 = *MEMORY[0x1E697E720];
  v78 = sub_1D2874E88();
  v79 = v114;
  (*(*(v78 - 8) + 104))(v114, v77, v78);
  sub_1D281B544(&qword_1ED89DE70, MEMORY[0x1E697E730]);
  result = sub_1D2877F98();
  if (result)
  {
    v115 = v75;
    v116 = OpaqueTypeConformance2;
    swift_getOpaqueTypeConformance2();
    sub_1D22BB9D8(&qword_1ED89CBF0, &unk_1EC6DE860);
    v81 = v84;
    sub_1D28769B8();
    sub_1D22BD238(v79, &unk_1EC6DE860);
    return (*(v83 + 8))(v76, v81);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D282C44C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1D2875628();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v19[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = (a1 + *(type metadata accessor for DoneMagicViewButtonStyle(0) + 20));
  v9 = *v8;
  v10 = *(v8 + 8);
  if (v10 == 1)
  {
    if ((v9 & 1) == 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    sub_1D2870F78();
    sub_1D2878A28();
    v11 = sub_1D28762E8();
    sub_1D2873BE8();

    sub_1D2875618();
    swift_getAtKeyPath();
    sub_1D22EE66C(v9, 0);
    (*(v5 + 8))(v7, v4);
    if (v19[15] != 1)
    {
LABEL_3:
      sub_1D28770E8();
      if (v10)
      {
        goto LABEL_10;
      }

      goto LABEL_9;
    }
  }

  v12 = sub_1D2878068();
  v13 = objc_opt_self();
  v14 = [v13 colorNamed_];

  if (!v14)
  {
    v15 = [v13 tintColor];
  }

  sub_1D2877128();
  if (!v10)
  {
LABEL_9:
    sub_1D2870F78();
    sub_1D2878A28();
    v16 = sub_1D28762E8();
    sub_1D2873BE8();

    sub_1D2875618();
    swift_getAtKeyPath();
    sub_1D22EE66C(v9, 0);
    (*(v5 + 8))(v7, v4);
  }

LABEL_10:
  v17 = sub_1D28770C8();

  *a2 = v17;
  *(a2 + 8) = 256;
  return result;
}

uint64_t sub_1D282C71C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v39 = a1;
  v40 = a2;
  v2 = sub_1D2877548();
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D2877158();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v39 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E2EC0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v39 - v13;
  sub_1D2875F38();
  v15 = sub_1D2876328();
  v16 = &v14[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E2EC8) + 36)];
  *v16 = v15;
  *(v16 + 8) = 0u;
  *(v16 + 24) = 0u;
  v16[40] = 1;
  v17 = sub_1D2876398();
  sub_1D2874298();
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v26 = &v14[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E2ED0) + 36)];
  *v26 = v17;
  *(v26 + 1) = v19;
  *(v26 + 2) = v21;
  *(v26 + 3) = v23;
  *(v26 + 4) = v25;
  v26[40] = 0;
  sub_1D2877848();
  sub_1D28748C8();
  v27 = &v14[*(v12 + 36)];
  v28 = v42;
  *v27 = v41;
  *(v27 + 1) = v28;
  *(v27 + 2) = v43;
  sub_1D2877138();
  MEMORY[0x1D389FBC0](1);
  v29 = *(v6 + 8);
  v29(v8, v5);
  v30 = *MEMORY[0x1E697F468];
  v31 = sub_1D2875868();
  (*(*(v31 - 8) + 104))(v4, v30, v31);
  sub_1D282E824();
  sub_1D281B544(&qword_1EC6D9F18, MEMORY[0x1E6981998]);
  v32 = v40;
  sub_1D2876808();
  sub_1D282E9F8(v4, MEMORY[0x1E6981998]);
  v29(v11, v5);
  sub_1D22BD238(v14, &qword_1EC6E2EC0);
  v33 = sub_1D2877848();
  v35 = v34;
  v36 = v32 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E2EF0) + 36);
  sub_1D282CAF4(v36);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E2EF8);
  v38 = (v36 + *(result + 36));
  *v38 = v33;
  v38[1] = v35;
  return result;
}

double sub_1D282CAF4@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_1D2877548();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0BD0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = v16 - v6;
  v8 = *MEMORY[0x1E697F468];
  v9 = sub_1D2875868();
  (*(*(v9 - 8) + 104))(v4, v8, v9);
  if (sub_1D2875F48())
  {
    v10 = sub_1D2877098();
  }

  else
  {
    v11 = [objc_opt_self() systemFillColor];
    v10 = sub_1D2877128();
  }

  v12 = v10;
  sub_1D282AA28(v4, v7, MEMORY[0x1E6981998]);
  *&v7[*(v5 + 52)] = v12;
  *&v7[*(v5 + 56)] = 256;
  sub_1D2877848();
  sub_1D28748C8();
  sub_1D22EC9BC(v7, a1, &qword_1EC6E0BD0);
  v13 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E2F00) + 36));
  v14 = v16[1];
  *v13 = v16[0];
  v13[1] = v14;
  result = *&v17;
  v13[2] = v17;
  return result;
}

uint64_t sub_1D282CD8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(char *))
{
  v8 = a5(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v13 - v9;
  (*(v11 + 16))(&v13 - v9, a1);
  return a6(v10);
}

unint64_t sub_1D282CE68()
{
  result = qword_1EC6E2BF0;
  if (!qword_1EC6E2BF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E2BB0);
    sub_1D282CF20();
    sub_1D22BB9D8(&qword_1ED89D2C0, &qword_1EC6D9CD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E2BF0);
  }

  return result;
}

unint64_t sub_1D282CF20()
{
  result = qword_1EC6E2BF8;
  if (!qword_1EC6E2BF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E2BE8);
    sub_1D282CFD8();
    sub_1D22BB9D8(&qword_1EC6DAEF8, &qword_1EC6DAEF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E2BF8);
  }

  return result;
}

unint64_t sub_1D282CFD8()
{
  result = qword_1EC6E2C00;
  if (!qword_1EC6E2C00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E2BE0);
    sub_1D282D094();
    sub_1D281B544(&qword_1EC6DAED8, type metadata accessor for PeoplePickerSheetViewModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E2C00);
  }

  return result;
}

unint64_t sub_1D282D094()
{
  result = qword_1EC6E2C08;
  if (!qword_1EC6E2C08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E2BD8);
    sub_1D282D120();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E2C08);
  }

  return result;
}

unint64_t sub_1D282D120()
{
  result = qword_1EC6E2C10;
  if (!qword_1EC6E2C10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E2BD0);
    sub_1D282D1AC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E2C10);
  }

  return result;
}

unint64_t sub_1D282D1AC()
{
  result = qword_1EC6E2C18;
  if (!qword_1EC6E2C18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E2BC8);
    sub_1D282D238();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E2C18);
  }

  return result;
}

unint64_t sub_1D282D238()
{
  result = qword_1EC6E2C20;
  if (!qword_1EC6E2C20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E2BB8);
    sub_1D282D2F0();
    sub_1D22BB9D8(&qword_1EC6E2C38, &qword_1EC6E2BC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E2C20);
  }

  return result;
}

unint64_t sub_1D282D2F0()
{
  result = qword_1EC6E2C28;
  if (!qword_1EC6E2C28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E2C30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E2C28);
  }

  return result;
}

unint64_t sub_1D282D374()
{
  result = qword_1EC6E2C80;
  if (!qword_1EC6E2C80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E2C60);
    sub_1D282D42C();
    sub_1D22BB9D8(&qword_1EC6E2CB8, &qword_1EC6E2C48);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E2C80);
  }

  return result;
}

unint64_t sub_1D282D42C()
{
  result = qword_1EC6E2C88;
  if (!qword_1EC6E2C88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E2C70);
    sub_1D282D4E4();
    sub_1D22BB9D8(&qword_1EC6E2CA8, &qword_1EC6E2CB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E2C88);
  }

  return result;
}

unint64_t sub_1D282D4E4()
{
  result = qword_1EC6E2C90;
  if (!qword_1EC6E2C90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E2C98);
    sub_1D281B544(&qword_1EC6E2CA0, type metadata accessor for MagicPaperCoachingTextEffect);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E2C90);
  }

  return result;
}

unint64_t sub_1D282D5D4()
{
  result = qword_1EC6E2CD8;
  if (!qword_1EC6E2CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E2CD8);
  }

  return result;
}

unint64_t sub_1D282D6C0()
{
  result = qword_1EC6E2D08;
  if (!qword_1EC6E2D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E2D08);
  }

  return result;
}

unint64_t sub_1D282D71C()
{
  result = qword_1EC6E2D78;
  if (!qword_1EC6E2D78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E2D70);
    sub_1D282D7D4();
    sub_1D22BB9D8(&qword_1EC6DF3A8, &qword_1EC6DF3B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E2D78);
  }

  return result;
}

unint64_t sub_1D282D7D4()
{
  result = qword_1EC6E2D80;
  if (!qword_1EC6E2D80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E2D88);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E2D90);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E2D98);
    sub_1D2875718();
    sub_1D282D930();
    sub_1D281B544(&qword_1ED89D6B0, MEMORY[0x1E697C4E8]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E2D80);
  }

  return result;
}

unint64_t sub_1D282D930()
{
  result = qword_1EC6E2DA0;
  if (!qword_1EC6E2DA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E2D98);
    sub_1D282D9E8();
    sub_1D22BB9D8(&qword_1ED89D2D0, &qword_1EC6D9FE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E2DA0);
  }

  return result;
}

unint64_t sub_1D282D9E8()
{
  result = qword_1EC6E2DA8;
  if (!qword_1EC6E2DA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E2DB0);
    sub_1D22BB9D8(&qword_1ED89D200, &qword_1EC6D99E8);
    sub_1D22BB9D8(&qword_1ED89D2E8, &unk_1EC6E1030);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E2DA8);
  }

  return result;
}

uint64_t sub_1D282DB0C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1D22BDFF8;

  return sub_1D281D6C4(a1);
}

unint64_t sub_1D282DBA8()
{
  result = qword_1EC6E2E00;
  if (!qword_1EC6E2E00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E2DF8);
    sub_1D282DC60();
    sub_1D22BB9D8(&qword_1EC6D77C0, &qword_1EC6DE738);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E2E00);
  }

  return result;
}

unint64_t sub_1D282DC60()
{
  result = qword_1EC6E2E08;
  if (!qword_1EC6E2E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E2E08);
  }

  return result;
}

uint64_t objectdestroyTm_42()
{
  v1 = *(type metadata accessor for MagicView(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E2AE8);
  (*(*(v3 - 8) + 8))(v0 + v2, v3);

  return swift_deallocObject();
}

unint64_t sub_1D282DE1C()
{
  result = qword_1EC6E2E10;
  if (!qword_1EC6E2E10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E2DE8);
    sub_1D26EED04();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E2E10);
  }

  return result;
}

unint64_t sub_1D282DEB8()
{
  result = qword_1EC6E2E20;
  if (!qword_1EC6E2E20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E2E18);
    sub_1D281B544(&qword_1EC6E2E28, type metadata accessor for MagicEditViewForeground);
    sub_1D22BB9D8(&qword_1EC6D77C0, &qword_1EC6DE738);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E2E20);
  }

  return result;
}

unint64_t sub_1D282DFBC()
{
  result = qword_1EC6D7DC8;
  if (!qword_1EC6D7DC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DAAC8);
    sub_1D23D4344();
    sub_1D22BB9D8(&qword_1ED89D348, &unk_1EC6E1DF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6D7DC8);
  }

  return result;
}

void sub_1D282E0AC()
{
  sub_1D282E2A4(319, &qword_1EC6E2B40, type metadata accessor for MagicViewModel, MEMORY[0x1E6981AA0]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for CGRect(319);
    if (v1 <= 0x3F)
    {
      sub_1D282E2A4(319, &qword_1ED89DFE8, MEMORY[0x1E697DBD0], MEMORY[0x1E697DCC0]);
      if (v2 <= 0x3F)
      {
        sub_1D22EAE8C();
        if (v3 <= 0x3F)
        {
          sub_1D282E2A4(319, &qword_1ED89DFD8, MEMORY[0x1E697E730], MEMORY[0x1E697DCC0]);
          if (v4 <= 0x3F)
          {
            sub_1D282E2A4(319, &qword_1ED89E028, type metadata accessor for ObservableDebugSettings, MEMORY[0x1E697DCC0]);
            if (v5 <= 0x3F)
            {
              sub_1D247E504();
              if (v6 <= 0x3F)
              {
                sub_1D28311AC(319, &qword_1ED89D190, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
                if (v7 <= 0x3F)
                {
                  swift_cvw_initStructMetadataWithLayoutString();
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_1D282E2A4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1D282E340()
{
  sub_1D282E2A4(319, &qword_1EC6E2B40, type metadata accessor for MagicViewModel, MEMORY[0x1E6981AA0]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for CGRect(319);
    if (v1 <= 0x3F)
    {
      sub_1D28311AC(319, &qword_1ED89D1F0, MEMORY[0x1E69E7DE0], MEMORY[0x1E6981790]);
      if (v2 <= 0x3F)
      {
        sub_1D22EAE8C();
        if (v3 <= 0x3F)
        {
          sub_1D282E2A4(319, &qword_1ED89DFE8, MEMORY[0x1E697DBD0], MEMORY[0x1E697DCC0]);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

unint64_t sub_1D282E490()
{
  result = qword_1EC6E2E68;
  if (!qword_1EC6E2E68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E2B88);
    sub_1D282E51C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E2E68);
  }

  return result;
}

unint64_t sub_1D282E51C()
{
  result = qword_1EC6E2E70;
  if (!qword_1EC6E2E70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E2B80);
    sub_1D282E5A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E2E70);
  }

  return result;
}

unint64_t sub_1D282E5A8()
{
  result = qword_1EC6E2E78;
  if (!qword_1EC6E2E78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E2B78);
    sub_1D282E660();
    sub_1D22BB9D8(&qword_1EC6E2EA0, &qword_1EC6E2EA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E2E78);
  }

  return result;
}

unint64_t sub_1D282E660()
{
  result = qword_1EC6E2E80;
  if (!qword_1EC6E2E80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E2B70);
    sub_1D282E718();
    sub_1D22BB9D8(&qword_1ED89D350, &qword_1EC6DFAA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E2E80);
  }

  return result;
}

unint64_t sub_1D282E718()
{
  result = qword_1EC6E2E88;
  if (!qword_1EC6E2E88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E2B68);
    sub_1D22BB9D8(&qword_1EC6E2E90, &qword_1EC6E2E98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E2E88);
  }

  return result;
}

unint64_t sub_1D282E824()
{
  result = qword_1EC6E2ED8;
  if (!qword_1EC6E2ED8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E2EC0);
    sub_1D282E8B0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E2ED8);
  }

  return result;
}

unint64_t sub_1D282E8B0()
{
  result = qword_1EC6E2EE0;
  if (!qword_1EC6E2EE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E2ED0);
    sub_1D282E93C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E2EE0);
  }

  return result;
}

unint64_t sub_1D282E93C()
{
  result = qword_1EC6E2EE8;
  if (!qword_1EC6E2EE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E2EC8);
    sub_1D281B544(&qword_1ED89D398, MEMORY[0x1E697C8D0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E2EE8);
  }

  return result;
}

uint64_t sub_1D282E9F8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t objectdestroy_205Tm()
{
  v1 = type metadata accessor for MagicEditViewForegroundBottomViews(0);
  v2 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E2AE8);
  (*(*(v3 - 8) + 8))(v2, v3);
  v4 = v1[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6E1C40);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_1D2874438();
    (*(*(v5 - 8) + 8))(v2 + v4, v5);
  }

  else
  {
  }

  v6 = v1[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE690);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_1D2875E18();
    v8 = *(v7 - 8);
    if (!(*(v8 + 48))(v2 + v6, 1, v7))
    {
      (*(v8 + 8))(v2 + v6, v7);
    }
  }

  else
  {
  }

  v9 = v1[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DBE98);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = sub_1D2874E88();
    (*(*(v10 - 8) + 8))(v2 + v9, v10);
  }

  else
  {
  }

  v11 = v1[10];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DBFE0);
  (*(*(v12 - 8) + 8))(v2 + v11, v12);

  return swift_deallocObject();
}

unint64_t sub_1D282EDC0()
{
  result = qword_1EC6E2F88;
  if (!qword_1EC6E2F88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E2F70);
    sub_1D282EE78(&qword_1EC6E2F90, &qword_1EC6E2F98, &unk_1D28AAF20, sub_1D2341E80);
    sub_1D282EEFC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E2F88);
  }

  return result;
}

uint64_t sub_1D282EE78(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D282EEFC()
{
  result = qword_1EC6E2FA0;
  if (!qword_1EC6E2FA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E2F58);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E2F48);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC6DE860);
    sub_1D282F024();
    sub_1D22BB9D8(&qword_1ED89CBF0, &unk_1EC6DE860);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E2FA0);
  }

  return result;
}

unint64_t sub_1D282F024()
{
  result = qword_1EC6E2FA8;
  if (!qword_1EC6E2FA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E2F48);
    sub_1D282F0DC();
    sub_1D22BB9D8(&qword_1ED89D680, &qword_1EC6DA080);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E2FA8);
  }

  return result;
}

unint64_t sub_1D282F0DC()
{
  result = qword_1EC6E2FB0;
  if (!qword_1EC6E2FB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E2FB8);
    sub_1D282F168();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E2FB0);
  }

  return result;
}

unint64_t sub_1D282F168()
{
  result = qword_1EC6E2FC0;
  if (!qword_1EC6E2FC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E2FC8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E2FD0);
    sub_1D2877548();
    sub_1D282F280();
    sub_1D281B544(&qword_1EC6D9F18, MEMORY[0x1E6981998]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E2FC0);
  }

  return result;
}

unint64_t sub_1D282F280()
{
  result = qword_1EC6E2FD8;
  if (!qword_1EC6E2FD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E2FD0);
    sub_1D282F30C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E2FD8);
  }

  return result;
}

unint64_t sub_1D282F30C()
{
  result = qword_1EC6E2FE0;
  if (!qword_1EC6E2FE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E2FE8);
    sub_1D282F398();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E2FE0);
  }

  return result;
}

unint64_t sub_1D282F398()
{
  result = qword_1EC6E2FF0;
  if (!qword_1EC6E2FF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E2FF8);
    sub_1D282F450();
    sub_1D22BB9D8(&qword_1ED89D2E8, &unk_1EC6E1030);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E2FF0);
  }

  return result;
}

unint64_t sub_1D282F450()
{
  result = qword_1EC6E3000;
  if (!qword_1EC6E3000)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E3008);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E3010);
    sub_1D2875718();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E3018);
    sub_1D28750E8();
    sub_1D22BB9D8(&qword_1EC6E3020, &qword_1EC6E3018);
    sub_1D281B544(&qword_1ED89D748, MEMORY[0x1E697C248]);
    swift_getOpaqueTypeConformance2();
    sub_1D281B544(&qword_1ED89D6B0, MEMORY[0x1E697C4E8]);
    swift_getOpaqueTypeConformance2();
    sub_1D22BB9D8(&qword_1ED89D300, &qword_1EC6E28E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E3000);
  }

  return result;
}

unint64_t sub_1D282F654()
{
  result = qword_1EC6E3028;
  if (!qword_1EC6E3028)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E2F80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E3028);
  }

  return result;
}

void sub_1D282F6D8(char a1)
{
  type metadata accessor for MagicEditViewForegroundBottomViews(0);

  sub_1D2825738(a1);
}

unint64_t sub_1D282F7B0()
{
  result = qword_1EC6E3070;
  if (!qword_1EC6E3070)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E3060);
    sub_1D282F834();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E3070);
  }

  return result;
}

unint64_t sub_1D282F834()
{
  result = qword_1EC6E3078;
  if (!qword_1EC6E3078)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E3080);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E3088);
    sub_1D2875E08();
    sub_1D282F978();
    sub_1D281B544(&qword_1ED89D3D8, MEMORY[0x1E697C848]);
    swift_getOpaqueTypeConformance2();
    sub_1D22BB9D8(&qword_1ED8A4300, &qword_1EC6D90B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E3078);
  }

  return result;
}

unint64_t sub_1D282F978()
{
  result = qword_1EC6E3090;
  if (!qword_1EC6E3090)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E3088);
    sub_1D22BB9D8(&qword_1EC6E3098, &qword_1EC6E30A0);
    sub_1D22BB9D8(&qword_1ED89D2C8, &qword_1EC6E30A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E3090);
  }

  return result;
}

unint64_t sub_1D282FA64()
{
  result = qword_1ED89DA68;
  if (!qword_1ED89DA68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E30B8);
    sub_1D282FB1C();
    sub_1D22BB9D8(&qword_1ED89D4A8, &qword_1EC6DA6F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89DA68);
  }

  return result;
}

unint64_t sub_1D282FB1C()
{
  result = qword_1ED89DCD0;
  if (!qword_1ED89DCD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E30C0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6D99E8);
    sub_1D2875718();
    sub_1D22BB9D8(&qword_1ED89D200, &qword_1EC6D99E8);
    sub_1D281B544(&qword_1ED89D6B0, MEMORY[0x1E697C4E8]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89DCD0);
  }

  return result;
}

uint64_t sub_1D282FC94(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1D22BDFF8;

  return sub_1D282A58C(a1);
}

uint64_t sub_1D282FD30(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1D22BC8FC;

  return sub_1D27F746C(a1, v4, v5, v7, v6);
}

uint64_t sub_1D282FDF0(uint64_t a1)
{
  v4 = *(type metadata accessor for MagicEditViewForegroundBottomViews(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1D22BDFF8;

  return sub_1D2828E58(a1, v6, v7, v1 + v5);
}

uint64_t objectdestroy_248Tm()
{
  v1 = type metadata accessor for MagicEditViewForegroundBottomViews(0);
  v2 = (*(*(v1 - 1) + 80) + 32) & ~*(*(v1 - 1) + 80);
  swift_unknownObjectRelease();
  v3 = v0 + v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E2AE8);
  (*(*(v4 - 8) + 8))(v0 + v2, v4);
  v5 = v1[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6E1C40);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_1D2874438();
    (*(*(v6 - 8) + 8))(v3 + v5, v6);
  }

  else
  {
  }

  v7 = v1[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE690);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_1D2875E18();
    v9 = *(v8 - 8);
    if (!(*(v9 + 48))(v3 + v7, 1, v8))
    {
      (*(v9 + 8))(v3 + v7, v8);
    }
  }

  else
  {
  }

  v10 = v1[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DBE98);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1D2874E88();
    (*(*(v11 - 8) + 8))(v3 + v10, v11);
  }

  else
  {
  }

  v12 = v1[10];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DBFE0);
  (*(*(v13 - 8) + 8))(v3 + v12, v13);

  return swift_deallocObject();
}

uint64_t sub_1D28301F8(uint64_t a1)
{
  v4 = *(type metadata accessor for MagicEditViewForegroundBottomViews(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1D22BDFF8;

  return sub_1D2828174(a1, v6, v7, v1 + v5);
}

unint64_t sub_1D28302E8()
{
  result = qword_1EC6E30D8;
  if (!qword_1EC6E30D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E30D0);
    sub_1D28303A0();
    sub_1D22BB9D8(&qword_1ED89D388, &unk_1EC6DE930);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E30D8);
  }

  return result;
}

unint64_t sub_1D28303A0()
{
  result = qword_1EC6E30E0;
  if (!qword_1EC6E30E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E30E8);
    sub_1D2830458();
    sub_1D22BB9D8(&qword_1ED89D310, &qword_1EC6DA0F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E30E0);
  }

  return result;
}

unint64_t sub_1D2830458()
{
  result = qword_1EC6E30F0;
  if (!qword_1EC6E30F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E30F8);
    sub_1D22BB9D8(&qword_1EC6E3100, &qword_1EC6E3108);
    sub_1D22BB9D8(&qword_1ED89D2E8, &unk_1EC6E1030);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E30F0);
  }

  return result;
}

uint64_t sub_1D2830568(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(uint64_t, uint64_t))
{
  v5 = *(a2(0) - 8);
  v6 = v3 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return a3(a1, v6);
}

uint64_t objectdestroy_272Tm()
{
  v1 = type metadata accessor for MagicEditViewForegroundTopViews(0);
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E2AE8);
  (*(*(v3 - 8) + 8))(v2, v3);

  v4 = *(v1 + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE690);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_1D2875E18();
    v6 = *(v5 - 8);
    if (!(*(v6 + 48))(v2 + v4, 1, v5))
    {
      (*(v6 + 8))(v2 + v4, v5);
    }
  }

  else
  {
  }

  v7 = *(v1 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6E1C40);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_1D2874438();
    (*(*(v8 - 8) + 8))(v2 + v7, v8);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1D2830858(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(uint64_t, uint64_t))
{
  v5 = *(a2(0) - 8);
  v6 = v3 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return a3(a1, v6);
}

unint64_t sub_1D28308E0()
{
  result = qword_1EC6E3158;
  if (!qword_1EC6E3158)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E3110);
    sub_1D283096C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E3158);
  }

  return result;
}

unint64_t sub_1D283096C()
{
  result = qword_1EC6E3160;
  if (!qword_1EC6E3160)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E3150);
    sub_1D28309F8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E3160);
  }

  return result;
}

unint64_t sub_1D28309F8()
{
  result = qword_1EC6E3168;
  if (!qword_1EC6E3168)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E3148);
    sub_1D2830A84();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E3168);
  }

  return result;
}

unint64_t sub_1D2830A84()
{
  result = qword_1EC6E3170;
  if (!qword_1EC6E3170)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E3140);
    sub_1D2830B10();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E3170);
  }

  return result;
}

unint64_t sub_1D2830B10()
{
  result = qword_1EC6E3178;
  if (!qword_1EC6E3178)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E3138);
    sub_1D2830B9C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E3178);
  }

  return result;
}

unint64_t sub_1D2830B9C()
{
  result = qword_1EC6E3180;
  if (!qword_1EC6E3180)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E3130);
    sub_1D2830C54();
    sub_1D22BB9D8(&qword_1EC6E31A0, &qword_1EC6E31A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E3180);
  }

  return result;
}

unint64_t sub_1D2830C54()
{
  result = qword_1EC6E3188;
  if (!qword_1EC6E3188)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E3128);
    sub_1D22BB9D8(&qword_1EC6E3190, &qword_1EC6E3198);
    sub_1D22BB9D8(&qword_1ED89D3A0, &qword_1EC6DA6F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E3188);
  }

  return result;
}

unint64_t sub_1D2830D64()
{
  result = qword_1EC6E31D0;
  if (!qword_1EC6E31D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E31D0);
  }

  return result;
}

unint64_t sub_1D2830E58()
{
  result = qword_1EC6E31E0;
  if (!qword_1EC6E31E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E31B0);
    sub_1D2830F10();
    sub_1D22BB9D8(&unk_1ED89D2A0, &qword_1EC6DEB70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E31E0);
  }

  return result;
}

unint64_t sub_1D2830F10()
{
  result = qword_1EC6E31E8;
  if (!qword_1EC6E31E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E31D8);
    sub_1D22BB9D8(&qword_1EC6D7700, &qword_1EC6D9D30);
    sub_1D281B544(&qword_1EC6E31F0, type metadata accessor for DoneMagicViewButtonStyle);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E31E8);
  }

  return result;
}

uint64_t sub_1D2830FF8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1D22BDFF8;

  return sub_1D280CAD4(a1, v4, v5, v6);
}

void sub_1D28310D4()
{
  sub_1D282E2A4(319, &qword_1ED89DFE8, MEMORY[0x1E697DBD0], MEMORY[0x1E697DCC0]);
  if (v0 <= 0x3F)
  {
    sub_1D28311AC(319, &qword_1ED89DFB0, MEMORY[0x1E69E6370], MEMORY[0x1E697DCC0]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1D28311AC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1D2831244()
{
  sub_1D282E2A4(319, &qword_1ED89DFE8, MEMORY[0x1E697DBD0], MEMORY[0x1E697DCC0]);
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

unint64_t sub_1D28312E0()
{
  result = qword_1EC6E3220;
  if (!qword_1EC6E3220)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E2EF0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E2EC0);
    sub_1D2877548();
    sub_1D282E824();
    sub_1D281B544(&qword_1EC6D9F18, MEMORY[0x1E6981998]);
    swift_getOpaqueTypeConformance2();
    sub_1D22BB9D8(&qword_1EC6E3228, &qword_1EC6E2EF8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E3220);
  }

  return result;
}

unint64_t sub_1D2831424()
{
  result = qword_1EC6E3230;
  if (!qword_1EC6E3230)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E2F18);
    sub_1D28314DC();
    sub_1D22BB9D8(&qword_1EC6E31A0, &qword_1EC6E31A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E3230);
  }

  return result;
}

unint64_t sub_1D28314DC()
{
  result = qword_1EC6E3238;
  if (!qword_1EC6E3238)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E2F10);
    sub_1D22BB9D8(&qword_1EC6E3240, &qword_1EC6E3248);
    sub_1D22BB9D8(&qword_1ED89D3A0, &qword_1EC6DA6F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E3238);
  }

  return result;
}

unint64_t sub_1D28315F8()
{
  result = qword_1EC6E32A0;
  if (!qword_1EC6E32A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E3258);
    sub_1D28316B0();
    sub_1D22BB9D8(&qword_1ED89D2D8, &qword_1EC6DA278);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E32A0);
  }

  return result;
}

unint64_t sub_1D28316B0()
{
  result = qword_1EC6E32A8;
  if (!qword_1EC6E32A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E3250);
    sub_1D22BB9D8(&qword_1EC6E32B0, &qword_1EC6E3298);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E32A8);
  }

  return result;
}

unint64_t sub_1D2831768()
{
  result = qword_1EC6E32B8;
  if (!qword_1EC6E32B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E3268);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E3258);
    sub_1D2875718();
    sub_1D28315F8();
    sub_1D281B544(&qword_1ED89D6B0, MEMORY[0x1E697C4E8]);
    swift_getOpaqueTypeConformance2();
    sub_1D22BB9D8(&qword_1EC6E32C0, &qword_1EC6E32C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E32B8);
  }

  return result;
}

unint64_t sub_1D28318AC()
{
  result = qword_1EC6E32D0;
  if (!qword_1EC6E32D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E3280);
    sub_1D2831964();
    sub_1D22BB9D8(&qword_1ED89D2E8, &unk_1EC6E1030);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E32D0);
  }

  return result;
}

unint64_t sub_1D2831964()
{
  result = qword_1EC6E32D8;
  if (!qword_1EC6E32D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E3278);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E3268);
    sub_1D2831768();
    sub_1D22ED498();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E32D8);
  }

  return result;
}

unint64_t sub_1D2831A48()
{
  result = qword_1EC6E3318;
  if (!qword_1EC6E3318)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E32E0);
    sub_1D2831B00();
    sub_1D22BB9D8(&qword_1ED89D2D8, &qword_1EC6DA278);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E3318);
  }

  return result;
}

unint64_t sub_1D2831B00()
{
  result = qword_1EC6E3320;
  if (!qword_1EC6E3320)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E3310);
    sub_1D22BB9D8(&qword_1EC6E3328, &qword_1EC6E3308);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E3320);
  }

  return result;
}

unint64_t sub_1D2831BB8()
{
  result = qword_1EC6E3338;
  if (!qword_1EC6E3338)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E32F0);
    sub_1D2831C70();
    sub_1D22BB9D8(&qword_1ED89D2E8, &unk_1EC6E1030);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E3338);
  }

  return result;
}

unint64_t sub_1D2831C70()
{
  result = qword_1EC6E3340;
  if (!qword_1EC6E3340)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E3330);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E32E8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E32E0);
    sub_1D2875718();
    sub_1D2831A48();
    sub_1D281B544(&qword_1ED89D6B0, MEMORY[0x1E697C4E8]);
    swift_getOpaqueTypeConformance2();
    sub_1D22ED498();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E3340);
  }

  return result;
}

uint64_t sub_1D2831E14(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 24))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 16) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 16) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1D2831E68(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 13;
    if (a3 >= 0xD)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 8) = 0;
      *(result + 16) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

uint64_t sub_1D2831EC8()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1D2831F60@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v40 = a4;
  v41 = a3;
  v52 = a2;
  v50 = a1;
  v58 = a5;
  v7 = sub_1D2873998();
  v56 = *(v7 - 8);
  v57 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v55 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1D28750E8();
  v49 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E2D70);
  v43 = v12;
  v42 = sub_1D282D71C();
  v68 = v12;
  v69 = a3;
  v70 = v42;
  v71 = a4;
  v13 = sub_1D2876538();
  v44 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v39 - v14;
  WitnessTable = swift_getWitnessTable();
  v17 = sub_1D2833A20(&qword_1ED89D748, MEMORY[0x1E697C248]);
  v68 = v13;
  v69 = v9;
  v70 = WitnessTable;
  v71 = v17;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v47 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v20 = &v39 - v19;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E3348);
  v51 = OpaqueTypeMetadata2;
  v21 = sub_1D2874F68();
  v53 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v46 = &v39 - v22;
  v23 = sub_1D2874F68();
  v54 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v45 = &v39 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v48 = &v39 - v26;
  v59 = v41;
  v60 = v40;
  v61 = v50;
  v62 = v52;
  sub_1D2876528();
  sub_1D28750D8();
  v52 = v20;
  sub_1D28767A8();
  (*(v49 + 8))(v11, v9);
  (*(v44 + 8))(v15, v13);
  if (qword_1ED8A6B68 != -1)
  {
    swift_once();
  }

  v27 = v57;
  v28 = __swift_project_value_buffer(v57, qword_1ED8B02B8);
  (*(v56 + 16))(v55, v28, v27);
  v67 = sub_1D2877108();
  v68 = v13;
  v69 = v9;
  v70 = WitnessTable;
  v71 = v17;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_1D28338CC();
  v30 = v46;
  v31 = v51;
  v32 = v52;
  sub_1D2876738();

  (*(v47 + 8))(v32, v31);
  v33 = sub_1D22BB9D8(&qword_1EC6E3358, &qword_1EC6E3348);
  v65 = OpaqueTypeConformance2;
  v66 = v33;
  v34 = swift_getWitnessTable();
  v35 = v45;
  sub_1D2876E58();
  (*(v53 + 8))(v30, v21);
  v63 = v34;
  v64 = MEMORY[0x1E697E270];
  swift_getWitnessTable();
  v36 = v48;
  sub_1D245980C(v35);
  v37 = *(v54 + 8);
  v37(v35, v23);
  sub_1D245980C(v36);
  return (v37)(v36, v23);
}

uint64_t sub_1D28326E0@<X0>(uint64_t a1@<X8>)
{
  v46 = a1;
  v1 = sub_1D2874E88();
  v44 = *(v1 - 8);
  v45 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v43 = &v39 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1D2875718();
  v40 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E2D98);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v39 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E2D90);
  v41 = *(v9 - 8);
  v42 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v39 - v10;
  v12 = sub_1D2875798();
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  if (qword_1ED89E0E8 != -1)
  {
    v12 = swift_once();
  }

  MEMORY[0x1EEE9AC00](v12);
  *(&v39 - 8) = v13;
  *(&v39 - 7) = v15;
  *(&v39 - 48) = v17 & 1;
  *(&v39 - 5) = v19;
  *(&v39 - 4) = 0;
  *(&v39 - 3) = 0;
  *(&v39 - 2) = v20;
  MEMORY[0x1EEE9AC00](v21);
  *(&v39 - 2) = 0x73697370696C6C65;
  *(&v39 - 1) = 0xE800000000000000;
  sub_1D2877248();

  v22 = sub_1D2876498();
  KeyPath = swift_getKeyPath();
  v24 = &v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E2DB0) + 36)];
  *v24 = KeyPath;
  v24[1] = v22;
  v25 = &v8[*(v6 + 36)];
  v26 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9FE8) + 28);
  v27 = *MEMORY[0x1E69816C0];
  v28 = sub_1D2877218();
  (*(*(v28 - 8) + 104))(v25 + v26, v27, v28);
  *v25 = swift_getKeyPath();
  sub_1D2875708();
  v29 = sub_1D282D930();
  v30 = sub_1D2833A20(&qword_1ED89D6B0, MEMORY[0x1E697C4E8]);
  sub_1D2876768();
  (*(v40 + 8))(v5, v3);
  sub_1D2833920(v8);
  v32 = v43;
  v31 = v44;
  v33 = v45;
  (*(v44 + 104))(v43, *MEMORY[0x1E697E6F8], v45);
  *&v47 = v6;
  *(&v47 + 1) = v3;
  *&v48 = v29;
  *(&v48 + 1) = v30;
  swift_getOpaqueTypeConformance2();
  v34 = v46;
  v35 = v42;
  sub_1D28769A8();
  (*(v31 + 8))(v32, v33);
  (*(v41 + 8))(v11, v35);
  sub_1D2877848();
  sub_1D28748C8();
  v36 = (v34 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E2D88) + 36));
  v37 = v48;
  *v36 = v47;
  v36[1] = v37;
  v36[2] = v49;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E2D70);
  *(v34 + *(result + 36)) = 0;
  return result;
}

uint64_t sub_1D2832C74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v52 = a4;
  v60 = a2;
  v59 = a1;
  v65 = a5;
  v7 = sub_1D2875E08();
  v44 = v7;
  v64 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v63 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1D28779D8();
  v61 = *(v9 - 8);
  v62 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v58 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E30B8);
  v54 = v11;
  v53 = sub_1D282FA64();
  v74 = v11;
  v75 = a3;
  v76 = v53;
  v77 = a4;
  v12 = sub_1D2876538();
  v56 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v40 - v13;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E30A8);
  v47 = v12;
  v15 = sub_1D2874F68();
  v55 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v49 = &v40 - v16;
  WitnessTable = swift_getWitnessTable();
  v46 = WitnessTable;
  v18 = sub_1D22BB9D8(&qword_1ED89D2C8, &qword_1EC6E30A8);
  v72 = WitnessTable;
  v73 = v18;
  v57 = MEMORY[0x1E697E858];
  v19 = swift_getWitnessTable();
  v43 = v19;
  v42 = sub_1D2833A20(&qword_1ED89D3D8, MEMORY[0x1E697C848]);
  v74 = v15;
  v75 = v7;
  v76 = v19;
  v77 = v42;
  v48 = MEMORY[0x1E697CD70];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v50 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v21 = &v40 - v20;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6D90B0);
  v22 = sub_1D2874F68();
  v51 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v40 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v45 = &v40 - v26;
  v66 = a3;
  v67 = v52;
  v68 = v59;
  v69 = v60;
  sub_1D2876528();
  swift_getKeyPath();
  v27 = v58;
  sub_1D28779C8();
  v28 = v49;
  v29 = v47;
  sub_1D28767F8();

  (*(v61 + 8))(v27, v62);
  (*(v56 + 8))(v14, v29);
  v30 = v63;
  sub_1D2875DF8();
  v31 = v44;
  v32 = v43;
  v33 = v42;
  sub_1D2876768();
  (*(v64 + 8))(v30, v31);
  (*(v55 + 8))(v28, v15);
  v74 = v15;
  v75 = v31;
  v76 = v32;
  v77 = v33;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v35 = OpaqueTypeMetadata2;
  sub_1D24D142C(1, OpaqueTypeMetadata2, OpaqueTypeConformance2);
  (*(v50 + 8))(v21, v35);
  v36 = sub_1D22BB9D8(&qword_1ED8A4300, &qword_1EC6D90B0);
  v70 = OpaqueTypeConformance2;
  v71 = v36;
  swift_getWitnessTable();
  v37 = v45;
  sub_1D245980C(v24);
  v38 = *(v51 + 8);
  v38(v24, v22);
  sub_1D245980C(v37);
  return (v38)(v37, v22);
}

uint64_t sub_1D28333E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 - 8);
  v5 = MEMORY[0x1EEE9AC00](a1);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = &v13 - v9;
  v8();
  sub_1D245980C(v7);
  v11 = *(v4 + 8);
  v11(v7, a3);
  sub_1D245980C(v10);
  return (v11)(v10, a3);
}

uint64_t sub_1D283351C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1D2875718();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D99E8);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v21 - v8;
  v10 = sub_1D2875798();
  v12 = v11;
  v14 = v13;
  if (qword_1ED89E0E8 != -1)
  {
    v22 = v10;
    swift_once();
    v10 = v22;
  }

  MEMORY[0x1EEE9AC00](v10);
  *(&v21 - 8) = v15;
  *(&v21 - 7) = v12;
  *(&v21 - 48) = v16 & 1;
  *(&v21 - 5) = v14;
  *(&v21 - 4) = 0;
  *(&v21 - 3) = 0;
  *(&v21 - 2) = v17;
  MEMORY[0x1EEE9AC00](v15);
  *(&v21 - 2) = 0x73697370696C6C65;
  *(&v21 - 1) = 0xE800000000000000;
  sub_1D2877248();

  sub_1D2875708();
  sub_1D22BB9D8(&qword_1ED89D200, &qword_1EC6D99E8);
  sub_1D2833A20(&qword_1ED89D6B0, MEMORY[0x1E697C4E8]);
  sub_1D2876768();
  (*(v3 + 8))(v5, v2);
  (*(v7 + 8))(v9, v6);
  sub_1D2877848();
  sub_1D28748C8();
  v18 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E30C0) + 36));
  v19 = v24;
  *v18 = v23;
  v18[1] = v19;
  v18[2] = v25;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E30B8);
  *(a1 + *(result + 36)) = 0;
  return result;
}

unint64_t sub_1D28338CC()
{
  result = qword_1EC6E3350;
  if (!qword_1EC6E3350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E3350);
  }

  return result;
}

uint64_t sub_1D2833920(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E2D98);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D2833988()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1D2833A20(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D2833A94()
{
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_1D2833AF0(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 40) = a5;
  *(v6 + 48) = a6;
  *(v6 + 160) = a4;
  v7 = sub_1D2873CB8();
  *(v6 + 56) = v7;
  *(v6 + 64) = *(v7 - 8);
  *(v6 + 72) = swift_task_alloc();
  *(v6 + 80) = swift_task_alloc();
  v8 = sub_1D2872008();
  *(v6 + 88) = v8;
  *(v6 + 96) = *(v8 - 8);
  *(v6 + 104) = swift_task_alloc();
  sub_1D2878568();
  *(v6 + 112) = sub_1D2878558();
  v10 = sub_1D28784F8();
  *(v6 + 120) = v10;
  *(v6 + 128) = v9;

  return MEMORY[0x1EEE6DFA0](sub_1D2833C50, v10, v9);
}

uint64_t sub_1D2833C50()
{
  if (*(v0 + 160) & 1) == 0 && (sub_1D27D8D5C() & 1) != 0 && (v2 = *(v0 + 96), v1 = *(v0 + 104), v3 = *(v0 + 88), v4 = *(v0 + 40), v5 = OBJC_IVAR____TtC23ImagePlaygroundInternal15CreationContext_style, swift_beginAccess(), (*(v2 + 16))(v1, v4 + v5, v3), LOBYTE(v4) = sub_1D2871F78(), (*(v2 + 8))(v1, v3), (v4) && (sub_1D2673120())
  {
    v6 = swift_task_alloc();
    *(v0 + 136) = v6;
    *v6 = v0;
    v6[1] = sub_1D2833DD8;

    return sub_1D28341E4();
  }

  else
  {

    v8 = *(v0 + 8);

    return v8();
  }
}

uint64_t sub_1D2833DD8(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 144) = v1;

  if (v1)
  {
    v5 = v4[15];
    v6 = v4[16];
    v7 = sub_1D2834040;
  }

  else
  {
    v4[19] = a1;
    v5 = v4[15];
    v6 = v4[16];
    v7 = sub_1D2833F00;
  }

  return MEMORY[0x1EEE6DFA0](v7, v5, v6);
}

uint64_t sub_1D2833F00()
{
  v1 = v0[19];
  v2 = v0[6];

  v3 = *(v2 + OBJC_IVAR____TtCV23ImagePlaygroundInternal15ImageGeneration30ExternalProviderImageGenerator_currentBackgroundTask);
  *(v2 + OBJC_IVAR____TtCV23ImagePlaygroundInternal15ImageGeneration30ExternalProviderImageGenerator_currentBackgroundTask) = v1;

  sub_1D28725B8();
  v4 = sub_1D2873CA8();
  v5 = sub_1D2878A38();
  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[10];
  v8 = v0[7];
  v9 = v0[8];
  if (v6)
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_1D226E000, v4, v5, "EXTERNAL background task requested during prewarm", v10, 2u);
    MEMORY[0x1D38A3520](v10, -1, -1);
  }

  (*(v9 + 8))(v7, v8);

  v11 = v0[1];

  return v11();
}

uint64_t sub_1D2834040()
{
  v1 = v0[18];

  sub_1D28725B8();
  v2 = v1;
  v3 = sub_1D2873CA8();
  v4 = sub_1D2878A18();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[18];
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_1D226E000, v3, v4, "EXTERNAL failed to request background task during prewarm: %@", v7, 0xCu);
    sub_1D22BD238(v8, qword_1EC6DA930);
    MEMORY[0x1D38A3520](v8, -1, -1);
    MEMORY[0x1D38A3520](v7, -1, -1);
  }

  else
  {
  }

  (*(v0[8] + 8))(v0[9], v0[7]);

  v11 = v0[1];

  return v11();
}

uint64_t sub_1D28341E4()
{
  v1[3] = v0;
  v1[4] = sub_1D2878568();
  v1[5] = sub_1D2878558();
  v3 = sub_1D28784F8();
  v1[6] = v3;
  v1[7] = v2;

  return MEMORY[0x1EEE6DFA0](sub_1D2834280, v3, v2);
}

uint64_t sub_1D2834280()
{
  v1 = sub_1D2878558();
  v0[8] = v1;
  v2 = swift_task_alloc();
  v0[9] = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E3370);
  *v2 = v0;
  v2[1] = sub_1D2834384;
  v4 = v0[3];
  v5 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6DE38](v0 + 2, v1, v5, 0xD000000000000017, 0x80000001D28C4E90, sub_1D283FEA0, v4, v3);
}

uint64_t sub_1D2834384()
{
  v2 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v3 = *(v2 + 48);
    v4 = *(v2 + 56);
    v5 = sub_1D2834508;
  }

  else
  {

    v3 = *(v2 + 48);
    v4 = *(v2 + 56);
    v5 = sub_1D28344A0;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

uint64_t sub_1D28344A0()
{

  v1 = *(v0 + 16);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1D2834508()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_1D2834578(uint64_t a1)
{
  v331 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E33A8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v316 = v276 - v3;
  v317 = sub_1D2872E48();
  v315 = *(v317 - 8);
  MEMORY[0x1EEE9AC00](v317);
  v314 = v276 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E3390);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v318 = v276 - v6;
  v313 = sub_1D2873CB8();
  v312 = *(v313 - 8);
  MEMORY[0x1EEE9AC00](v313);
  v321 = v276 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6E33B0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v311 = v276 - v9;
  v332 = sub_1D2873718();
  v319 = *(v332 - 8);
  MEMORY[0x1EEE9AC00](v332);
  v320 = v276 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9D58);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v310 = v276 - v12;
  v333 = sub_1D28736F8();
  v306 = *(v333 - 8);
  MEMORY[0x1EEE9AC00](v333);
  v283 = v276 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v324 = v276 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v323 = v276 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v322 = v276 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6E33C0);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v302 = (v276 - v21);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA560);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v282 = v276 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v303 = v276 - v25;
  v305 = sub_1D28737A8();
  v304 = *(v305 - 1);
  MEMORY[0x1EEE9AC00](v305);
  v281 = v276 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE5A0);
  MEMORY[0x1EEE9AC00](v27 - 8);
  v292 = v276 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v284 = v276 - v30;
  MEMORY[0x1EEE9AC00](v31);
  v294 = v276 - v32;
  MEMORY[0x1EEE9AC00](v33);
  v285 = v276 - v34;
  MEMORY[0x1EEE9AC00](v35);
  v295 = v276 - v36;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA510);
  MEMORY[0x1EEE9AC00](v37 - 8);
  v299 = (v276 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v39);
  v296 = (v276 - v40);
  MEMORY[0x1EEE9AC00](v41);
  v297 = (v276 - v42);
  v43 = sub_1D2873758();
  v328 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43);
  v278 = v276 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v45);
  v279 = v276 - v46;
  MEMORY[0x1EEE9AC00](v47);
  v280 = v276 - v48;
  MEMORY[0x1EEE9AC00](v49);
  v277 = v276 - v50;
  MEMORY[0x1EEE9AC00](v51);
  v286 = v276 - v52;
  MEMORY[0x1EEE9AC00](v53);
  v287 = v276 - v54;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E33D0);
  MEMORY[0x1EEE9AC00](v55 - 8);
  v57 = v276 - v56;
  v327 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA4A8);
  v329 = *(v327 - 1);
  MEMORY[0x1EEE9AC00](v327);
  v301 = v276 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v59);
  v300 = v276 - v60;
  MEMORY[0x1EEE9AC00](v61);
  v298 = v276 - v62;
  MEMORY[0x1EEE9AC00](v63);
  v293 = v276 - v64;
  MEMORY[0x1EEE9AC00](v65);
  v326 = v276 - v66;
  v309 = sub_1D28736E8();
  v308 = *(v309 - 8);
  MEMORY[0x1EEE9AC00](v309);
  v68 = v276 - ((v67 + 15) & 0xFFFFFFFFFFFFFFF0);
  v330 = sub_1D2873068();
  v307 = *(v330 - 8);
  MEMORY[0x1EEE9AC00](v330);
  v70 = v276 - ((v69 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = sub_1D2873298();
  v72 = *(v71 - 8);
  MEMORY[0x1EEE9AC00](v71);
  v74 = v276 - ((v73 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v75);
  v78 = v276 - v77;
  if (!*(*(v1 + OBJC_IVAR____TtCV23ImagePlaygroundInternal15ImageGeneration30ExternalProviderImageGenerator_providerInfoManager) + 40))
  {
    return;
  }

  v325 = v43;
  v79 = v76;
  sub_1D2870F78();
  sub_1D2873228();

  v289 = v72;
  v80 = *(v72 + 32);
  v288 = v78;
  v290 = v79;
  v80(v78, v74, v79);
  sub_1D2836C9C();
  sub_1D2873058();
  v334 = v68;
  sub_1D28736D8();
  v81 = v331;
  sub_1D2870F68();
  sub_1D2872FC8();
  sub_1D2870F68();
  sub_1D2872FE8();
  v82 = type metadata accessor for ImageGeneration.GenerationParameters();
  sub_1D22BD1D0(v81 + *(v82 + 64), v57, &qword_1EC6E33D0);
  v83 = v327;
  v84 = (*(v329 + 6))(v57, 1, v327);
  v329 = v70;
  v291 = v1;
  if (v84 == 1)
  {
    v85 = v81;
    sub_1D22BD238(v57, &qword_1EC6E33D0);
    v86 = v294;
    sub_1D22BD1D0(v81 + *(v82 + 56), v294, &unk_1EC6DE5A0);
    v87 = type metadata accessor for PlaygroundImage();
    v88 = *(*(v87 - 8) + 48);
    if (v88(v86, 1, v87) == 1)
    {
      v89 = v332;
      v90 = v299;
    }

    else
    {
      v100 = v86;
      v86 = v285;
      sub_1D262A994(v285);
      sub_1D2840058(v100, type metadata accessor for PlaygroundImage);
      v101 = v88(v86, 1, v87);
      v89 = v332;
      v90 = v299;
      if (v101 != 1)
      {
        v108 = v86;
        v102 = v296;
        sub_1D262C1D0(v296);
        sub_1D2840058(v108, type metadata accessor for PlaygroundImage);
        v109 = v328[6](v102, 1, v325);
        v85 = v331;
        if (v109 != 1)
        {
          v110 = v328;
          v111 = v328[4];
          v112 = v277;
          v113 = v325;
          v111(v277, v102, v325);
          v110[2](v280, v112, v113);
          v114 = sub_1D2873698();
          v116 = v115;
          v117 = *v115;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *v116 = v117;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v117 = sub_1D27CCDB0(0, v117[2] + 1, 1, v117);
            *v116 = v117;
          }

          v120 = v117[2];
          v119 = v117[3];
          if (v120 >= v119 >> 1)
          {
            v117 = sub_1D27CCDB0(v119 > 1, v120 + 1, 1, v117);
            *v116 = v117;
          }

          v117[2] = v120 + 1;
          v121 = v328;
          v122 = v117 + ((*(v121 + 80) + 32) & ~*(v121 + 80)) + v328[9] * v120;
          v123 = v325;
          v111(v122, v280, v325);
          v114(v335, 0);
          (v121[1])(v112, v123);
          goto LABEL_91;
        }

LABEL_10:
        sub_1D22BD238(v102, &qword_1EC6DA510);
        v103 = v292;
        sub_1D22BD1D0(v85 + *(v82 + 60), v292, &unk_1EC6DE5A0);
        if (v88(v103, 1, v87) == 1 || (v104 = v103, v103 = v284, sub_1D262A994(v284), sub_1D2840058(v104, type metadata accessor for PlaygroundImage), v88(v103, 1, v87) == 1))
        {
          v105 = v328;
          sub_1D22BD238(v103, &unk_1EC6DE5A0);
          (v105[7])(v90, 1, 1, v325);
LABEL_13:
          sub_1D22BD238(v90, &qword_1EC6DA510);
LABEL_92:
          v158 = v334;
          goto LABEL_93;
        }

        sub_1D262C1D0(v90);
        sub_1D2840058(v103, type metadata accessor for PlaygroundImage);
        v234 = v328;
        v235 = v325;
        if (v328[6](v90, 1, v325) == 1)
        {
          goto LABEL_13;
        }

        v236 = v234[4];
        v237 = v279;
        v236(v279, v90, v235);
        v234[2](v278, v237, v235);
        v238 = sub_1D2873698();
        v240 = v239;
        v241 = *v239;
        v242 = swift_isUniquelyReferenced_nonNull_native();
        *v240 = v241;
        if ((v242 & 1) == 0)
        {
          v241 = sub_1D27CCDB0(0, v241[2] + 1, 1, v241);
          *v240 = v241;
        }

        v244 = v241[2];
        v243 = v241[3];
        if (v244 >= v243 >> 1)
        {
          v241 = sub_1D27CCDB0(v243 > 1, v244 + 1, 1, v241);
          *v240 = v241;
        }

        v241[2] = v244 + 1;
        v245 = v328;
        v246 = v241 + ((*(v245 + 80) + 32) & ~*(v245 + 80)) + v328[9] * v244;
        v247 = v325;
        v236(v246, v278, v325);
        v238(v335, 0);
        (v245[1])(v279, v247);
LABEL_91:
        v89 = v332;
        goto LABEL_92;
      }

      v85 = v331;
    }

    sub_1D22BD238(v86, &unk_1EC6DE5A0);
    v102 = v296;
    (v328[7])(v296, 1, 1, v325);
    goto LABEL_10;
  }

  v91 = v83;
  v92 = v326;
  sub_1D22EC9BC(v57, v326, &qword_1EC6DA4A8);
  v93 = v293;
  sub_1D22BD1D0(v92, v293, &qword_1EC6DA4A8);
  v94 = v83[12];
  v95 = v83[24];
  sub_1D238D058(*(v93 + v91[28]));
  v96 = v93 + v94;
  v97 = v295;
  sub_1D22EC9BC(v96, v295, &unk_1EC6DE5A0);
  v98 = type metadata accessor for PlaygroundImage();
  if ((*(*(v98 - 8) + 48))(v97, 1, v98) == 1)
  {
    sub_1D22BD238(v93 + v95, &unk_1EC6E33C0);
    sub_1D22BD238(v93, &qword_1EC6D8F70);
    sub_1D22BD238(v97, &unk_1EC6DE5A0);
    v99 = v297;
    (v328[7])(v297, 1, 1, v325);
LABEL_15:
    sub_1D22BD238(v99, &qword_1EC6DA510);
    goto LABEL_26;
  }

  v99 = v297;
  sub_1D262C1D0(v297);
  sub_1D2840058(v97, type metadata accessor for PlaygroundImage);
  sub_1D22BD238(v93 + v95, &unk_1EC6E33C0);
  sub_1D22BD238(v93, &qword_1EC6D8F70);
  v106 = v328;
  v107 = v325;
  if (v328[6](v99, 1, v325) == 1)
  {
    goto LABEL_15;
  }

  v124 = v106[4];
  v125 = v287;
  (v124)(v287, v99, v107);
  v106[2](v286, v125, v107);
  v126 = sub_1D2873698();
  v128 = v127;
  v129 = *v127;
  v130 = swift_isUniquelyReferenced_nonNull_native();
  *v128 = v129;
  if ((v130 & 1) == 0)
  {
LABEL_116:
    v129 = sub_1D27CCDB0(0, v129[2] + 1, 1, v129);
    *v128 = v129;
  }

  v132 = v129[2];
  v131 = v129[3];
  if (v132 >= v131 >> 1)
  {
    v129 = sub_1D27CCDB0(v131 > 1, v132 + 1, 1, v129);
    *v128 = v129;
  }

  v129[2] = v132 + 1;
  v133 = v328;
  v134 = v129 + ((*(v133 + 80) + 32) & ~*(v133 + 80)) + v328[9] * v132;
  v135 = v325;
  (v124)(v134, v286, v325);
  (v126)(v335, 0);
  (v133[1])(v287, v135);
  v92 = v326;
  v91 = v327;
LABEL_26:
  v136 = v298;
  sub_1D22BD1D0(v92, v298, &qword_1EC6DA4A8);
  v137 = v91[12];
  v138 = *(v136 + v91[20]);
  v139 = v91[24];
  sub_1D238D058(*(v136 + v91[28]));
  sub_1D22BD238(v136 + v139, &unk_1EC6E33C0);
  sub_1D22BD238(v136 + v137, &unk_1EC6DE5A0);
  sub_1D22BD238(v136, &qword_1EC6D8F70);
  if ((v138 - 3) >= 2u)
  {
    sub_1D2872FA8();
  }

  v276[1] = v82;
  v140 = v300;
  sub_1D22BD1D0(v92, v300, &qword_1EC6DA4A8);
  v141 = v91[12];
  v142 = v91[24];
  sub_1D238D058(*(v140 + v91[28]));
  v143 = v302;
  sub_1D22EC9BC(v140 + v142, v302, &unk_1EC6E33C0);
  v144 = type metadata accessor for ImageGenerationPerson.SkinTone();
  v145 = (*(*(v144 - 8) + 48))(v143, 1, v144);
  v89 = v332;
  if (v145 == 1)
  {
    sub_1D22BD238(v140 + v141, &unk_1EC6DE5A0);
    sub_1D22BD238(v140, &qword_1EC6D8F70);
    sub_1D22BD238(v143, &unk_1EC6E33C0);
    v146 = v303;
    (v304[7])(v303, 1, 1, v305);
  }

  else
  {
    v147 = v304;
    v146 = v303;
    v148 = v332;
    v149 = v140;
    v150 = v305;
    v328 = v304[2];
    (v328)(v303, v143, v305);
    sub_1D2840058(v143, type metadata accessor for ImageGenerationPerson.SkinTone);
    v151 = v147[7];
    (v151)(v146, 0, 1, v150);
    v152 = v149 + v141;
    v153 = v147;
    sub_1D22BD238(v152, &unk_1EC6DE5A0);
    v154 = v149;
    v89 = v148;
    sub_1D22BD238(v154, &qword_1EC6D8F70);
    if ((v147[6])(v146, 1, v150) != 1)
    {
      v155 = v147[4];
      v156 = v281;
      v155(v281, v146, v150);
      v157 = v282;
      (v328)(v282, v156, v150);
      (v151)(v157, 0, 1, v150);
      sub_1D2872FB8();
      (v153[1])(v156, v150);
      goto LABEL_33;
    }
  }

  sub_1D22BD238(v146, &qword_1EC6DA560);
LABEL_33:
  v158 = v334;
  v159 = v326;
  v160 = v301;
  sub_1D22BD1D0(v326, v301, &qword_1EC6DA4A8);
  v161 = v327[12];
  v162 = v327[24];
  v163 = (v160 + v327[28]);
  v124 = *v163;
  if (!*v163)
  {
    sub_1D22BD238(v159, &qword_1EC6DA4A8);
    sub_1D22BD238(v160 + v162, &unk_1EC6E33C0);
    sub_1D22BD238(v160 + v161, &unk_1EC6DE5A0);
    sub_1D22BD238(v160, &qword_1EC6D8F70);
    goto LABEL_93;
  }

  v165 = v163[1];
  v164 = v163[2];
  v295 = v165;
  v296 = v164;
  sub_1D22BD238(v160 + v162, &unk_1EC6E33C0);
  sub_1D22BD238(v160 + v161, &unk_1EC6DE5A0);
  sub_1D22BD238(v160, &qword_1EC6D8F70);
  v166 = (v124 + 64);
  v167 = 1 << *(v124 + 32);
  v168 = -1;
  if (v167 < 64)
  {
    v168 = ~(-1 << v167);
  }

  v169 = v168 & *(v124 + 64);
  v170 = (v167 + 63) >> 6;
  LODWORD(v299) = *MEMORY[0x1E69E00D0];
  v171 = (v306 + 104);
  v301 = v306 + 16;
  v305 = (v306 + 8);
  LODWORD(v298) = *MEMORY[0x1E69E00C8];
  LODWORD(v297) = *MEMORY[0x1E69E00E0];
  v325 = v124;
  sub_1D2870F68();
  v172 = 0;
  v304 = v171;
  v303 = v170;
  while (v169)
  {
LABEL_46:
    v175 = __clz(__rbit64(v169)) | (v172 << 6);
    v176 = *(*(v325 + 48) + v175);
    v177 = (*(v325 + 56) + 32 * v175);
    v124 = *v177;
    v178 = v177[1];
    v179 = v177[3];
    v180 = *v171;
    v328 = v179;
    if (v176)
    {
      v327 = v124;
      if (v176 == 1)
      {
        v126 = v323;
        v180(v323, v298, v333);
        v124 = v178;
        swift_bridgeObjectRetain_n();
        sub_1D2870F68();
        v302 = sub_1D28736A8();
        v128 = v181;
        v82 = swift_isUniquelyReferenced_nonNull_native();
        v336 = *v128;
        v129 = v336;
        *v128 = 0x8000000000000000;
        v182 = sub_1D25D0C88(v126);
        v184 = v129[2];
        v185 = (v183 & 1) == 0;
        v186 = __OFADD__(v184, v185);
        v187 = v184 + v185;
        if (v186)
        {
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
          goto LABEL_116;
        }

        v188 = v183;
        if (v129[3] < v187)
        {
          sub_1D24E2728(v187, v82);
          v182 = sub_1D25D0C88(v323);
          if ((v188 & 1) != (v189 & 1))
          {
            goto LABEL_117;
          }

LABEL_63:
          v129 = v336;
          if ((v188 & 1) == 0)
          {
            goto LABEL_64;
          }

LABEL_37:
          v173 = (v129[7] + 16 * v182);
          *v173 = v327;
          v173[1] = v124;

          (*v305)(v323, v333);
LABEL_38:
          v158 = v334;
LABEL_39:
          *v128 = v129;

          v302(v335, 0);
          v89 = v332;
          goto LABEL_40;
        }

        if (v82)
        {
          goto LABEL_63;
        }

        v222 = v182;
        sub_1D24ED870();
        v182 = v222;
        v129 = v336;
        if (v188)
        {
          goto LABEL_37;
        }

LABEL_64:
        v129[(v182 >> 6) + 8] |= 1 << v182;
        v126 = v306;
        v213 = v129[6] + *(v306 + 72) * v182;
        v214 = *(v306 + 16);
        v300 = v182;
        v215 = v323;
        v82 = v333;
        v214(v213, v323, v333);
        v216 = (v129[7] + 16 * v300);
        *v216 = v327;
        v216[1] = v124;
        (*(v126 + 8))(v215, v82);
        v217 = v129[2];
        v186 = __OFADD__(v217, 1);
        v218 = v217 + 1;
        if (v186)
        {
          goto LABEL_114;
        }

LABEL_80:
        v129[2] = v218;
        v158 = v334;
        goto LABEL_39;
      }

      v126 = v324;
      v180(v324, v299, v333);
      v124 = v178;
      swift_bridgeObjectRetain_n();
      sub_1D2870F68();
      v302 = sub_1D28736A8();
      v128 = v205;
      v82 = swift_isUniquelyReferenced_nonNull_native();
      v336 = *v128;
      v129 = v336;
      *v128 = 0x8000000000000000;
      v206 = sub_1D25D0C88(v126);
      v208 = v129[2];
      v209 = (v207 & 1) == 0;
      v186 = __OFADD__(v208, v209);
      v210 = v208 + v209;
      if (v186)
      {
        goto LABEL_112;
      }

      v211 = v207;
      if (v129[3] >= v210)
      {
        if (v82)
        {
          goto LABEL_72;
        }

        v223 = v206;
        sub_1D24ED870();
        v206 = v223;
        v129 = v336;
        if (v211)
        {
LABEL_73:
          v221 = (v129[7] + 16 * v206);
          *v221 = v327;
          v221[1] = v124;

          (*v305)(v324, v333);
          goto LABEL_38;
        }
      }

      else
      {
        sub_1D24E2728(v210, v82);
        v206 = sub_1D25D0C88(v324);
        if ((v211 & 1) != (v212 & 1))
        {
LABEL_117:
          sub_1D28796E8();
          __break(1u);
          return;
        }

LABEL_72:
        v129 = v336;
        if (v211)
        {
          goto LABEL_73;
        }
      }

      v129[(v206 >> 6) + 8] |= 1 << v206;
      v126 = v306;
      v224 = v129[6] + *(v306 + 72) * v206;
      v225 = *(v306 + 16);
      v300 = v206;
      v226 = v324;
      v82 = v333;
      v225(v224, v324, v333);
      v227 = (v129[7] + 16 * v300);
      *v227 = v327;
      v227[1] = v124;
      (*(v126 + 8))(v226, v82);
      v228 = v129[2];
      v186 = __OFADD__(v228, 1);
      v218 = v228 + 1;
      if (v186)
      {
        goto LABEL_115;
      }

      goto LABEL_80;
    }

    v126 = v322;
    v180(v322, v297, v333);
    v302 = v178;
    swift_bridgeObjectRetain_n();
    sub_1D2870F68();
    v300 = sub_1D28736A8();
    v128 = v190;
    v82 = swift_isUniquelyReferenced_nonNull_native();
    v336 = *v128;
    v129 = v336;
    *v128 = 0x8000000000000000;
    v192 = sub_1D25D0C88(v126);
    v193 = v129[2];
    v194 = (v191 & 1) == 0;
    v195 = v193 + v194;
    if (__OFADD__(v193, v194))
    {
      goto LABEL_111;
    }

    v196 = v191;
    if (v129[3] >= v195)
    {
      if (v82)
      {
        v129 = v336;
        if ((v191 & 1) == 0)
        {
          goto LABEL_56;
        }
      }

      else
      {
        sub_1D24ED870();
        v129 = v336;
        if ((v196 & 1) == 0)
        {
          goto LABEL_56;
        }
      }
    }

    else
    {
      sub_1D24E2728(v195, v82);
      v197 = sub_1D25D0C88(v322);
      if ((v196 & 1) != (v198 & 1))
      {
        goto LABEL_117;
      }

      v192 = v197;
      v129 = v336;
      if ((v196 & 1) == 0)
      {
LABEL_56:
        v129[(v192 >> 6) + 8] |= 1 << v192;
        v82 = v306;
        v199 = v129[6] + *(v306 + 72) * v192;
        v200 = *(v306 + 16);
        v327 = v124;
        v124 = v322;
        v126 = v333;
        v200(v199, v322, v333);
        v201 = (v129[7] + 16 * v192);
        v202 = v302;
        *v201 = v327;
        v201[1] = v202;
        (*(v82 + 8))(v124, v126);
        v203 = v129[2];
        v186 = __OFADD__(v203, 1);
        v204 = v203 + 1;
        if (v186)
        {
          goto LABEL_113;
        }

        v129[2] = v204;
        v89 = v332;
        v158 = v334;
        goto LABEL_70;
      }
    }

    v219 = (v129[7] + 16 * v192);
    v220 = v302;
    *v219 = v124;
    v219[1] = v220;

    (*v305)(v322, v333);
    v89 = v332;
    v158 = v334;
LABEL_70:
    v124 = v300;
    *v128 = v129;

    (v124)(v335, 0);
LABEL_40:
    v169 &= v169 - 1;

    v171 = v304;
    v170 = v303;
  }

  while (1)
  {
    v174 = v172 + 1;
    if (__OFADD__(v172, 1))
    {
      __break(1u);
      goto LABEL_109;
    }

    if (v174 >= v170)
    {
      break;
    }

    v169 = *&v166[8 * v174];
    ++v172;
    if (v169)
    {
      v172 = v174;
      goto LABEL_46;
    }
  }

  v229 = v325;

  v230 = v296;
  if (v296)
  {
    sub_1D2870F68();
    v231 = v295;
    sub_1D238D058(v229);
    v232 = v283;
    (*v171)(v283, *MEMORY[0x1E69E00D8], v333);
    v233 = sub_1D28736A8();
    sub_1D25CECC4(v231, v230, v232);
    v233(v335, 0);
    sub_1D22BD238(v326, &qword_1EC6DA4A8);
  }

  else
  {
    sub_1D22BD238(v326, &qword_1EC6DA4A8);
    sub_1D238D058(v229);
  }

LABEL_93:
  v248 = v310;
  sub_1D2871F58();
  v249 = v248;
  v250 = sub_1D2871F38();
  v251 = *(v250 - 8);
  if ((*(v251 + 48))(v249, 1, v250) == 1)
  {
    sub_1D22BD238(v249, &qword_1EC6D9D58);
    v166 = v321;
    v124 = v319;
  }

  else
  {
    sub_1D2871F18();
    v253 = v252;
    v158 = v334;
    (*(v251 + 8))(v249, v250);
    v166 = v321;
    v124 = v319;
    if (v253)
    {
      sub_1D28736C8();
    }
  }

  if (qword_1ED8A4928 != -1)
  {
LABEL_109:
    swift_once();
  }

  sub_1D22BCFD0(0, &qword_1ED89CDA0);
  v254 = sub_1D2878A58();
  v255 = sub_1D2878068();
  v256 = [v254 stringForKey_];

  if (v256)
  {
    sub_1D28780A8();
  }

  v257 = v311;
  sub_1D2873708();
  v258 = *(v124 + 48);
  if (v258(v257, 1, v89) == 1)
  {
    (*(v124 + 104))(v320, *MEMORY[0x1E69E0100], v89);
    v259 = v258(v257, 1, v89);
    v158 = v334;
    if (v259 != 1)
    {
      sub_1D22BD238(v257, &unk_1EC6E33B0);
    }
  }

  else
  {
    (*(v124 + 32))(v320, v257, v89);
  }

  sub_1D28736B8();
  sub_1D28725B8();
  v260 = sub_1D2873CA8();
  v261 = sub_1D2878A38();
  if (os_log_type_enabled(v260, v261))
  {
    v262 = swift_slowAlloc();
    *v262 = 0;
    _os_log_impl(&dword_1D226E000, v260, v261, "EXTERNAL configuring generator using generation parameters", v262, 2u);
    MEMORY[0x1D38A3520](v262, -1, -1);
  }

  (*(v312 + 8))(v166, v313);
  v263 = v307;
  v264 = v314;
  (*(v307 + 16))(v314, v329, v330);
  v265 = v315;
  v266 = v317;
  (*(v315 + 104))(v264, *MEMORY[0x1E69DFF08], v317);
  v267 = v308;
  v268 = v316;
  v269 = v158;
  v270 = v309;
  (*(v308 + 16))(v316, v269, v309);
  (*(v267 + 56))(v268, 0, 1, v270);
  v271 = v318;
  v272 = v288;
  sub_1D2872B88();
  sub_1D22BD238(v268, &qword_1EC6E33A8);
  (*(v265 + 8))(v264, v266);
  (*(v267 + 8))(v334, v270);
  (*(v263 + 8))(v329, v330);
  (*(v289 + 8))(v272, v290);
  v273 = sub_1D2873728();
  (*(*(v273 - 8) + 56))(v271, 0, 1, v273);
  v274 = OBJC_IVAR____TtCV23ImagePlaygroundInternal15ImageGeneration30ExternalProviderImageGenerator_externalConfiguration;
  v275 = v291;
  swift_beginAccess();
  sub_1D22BD298(v271, v275 + v274, &qword_1EC6E3390);
  swift_endAccess();
}

uint64_t sub_1D2836C9C()
{
  v1 = v0;
  v2 = sub_1D2873C28();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v19 - v7;
  v23 = sub_1D2873C48();
  v9 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D2836F84(0xD00000000000001CLL, 0x80000001D28B2560);
  sub_1D28720E8();
  sub_1D2873C38();
  sub_1D2873BF8();
  v22 = *(v0 + 16);
  v12 = *(v0 + 32);
  v13 = sub_1D2873C38();
  v21 = sub_1D2878BB8();
  result = sub_1D2878EE8();
  if ((result & 1) == 0)
  {
    goto LABEL_10;
  }

  v20 = v0;
  if ((v12 & 1) == 0)
  {
    v15 = v22;
    if (v22)
    {
LABEL_9:
      v16 = swift_slowAlloc();
      *v16 = 0;
      v17 = sub_1D2873C08();
      _os_signpost_emit_with_name_impl(&dword_1D226E000, v13, v21, v17, v15, "Image Generator Configured", v16, 2u);
      MEMORY[0x1D38A3520](v16, -1, -1);
      v1 = v20;
LABEL_10:

      (*(v3 + 16))(v5, v8, v2);
      sub_1D2873C88();
      swift_allocObject();
      v18 = sub_1D2873C78();
      (*(v3 + 8))(v8, v2);
      (*(v9 + 8))(v11, v23);
      *(v1 + 40) = v18;
    }

    __break(1u);
  }

  if (v22 >> 32)
  {
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if ((v22 & 0xFFFFF800) != 0xD800)
  {
    if (v22 >> 16 <= 0x10)
    {
      v15 = &v24;
      goto LABEL_9;
    }

    goto LABEL_12;
  }

LABEL_13:
  __break(1u);
  return result;
}

void sub_1D2836F84(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = sub_1D2873C58();
  v38 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1D2873C28();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1D2873C48();
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v3 + 40))
  {
    v32 = v6;
    v33 = a1;
    v34 = v15;
    v35 = v14;
    v36 = v10;
    v37 = v9;
    sub_1D2870F78();
    sub_1D28720E8();
    v18 = *(v3 + 16);
    v19 = *(v3 + 32);
    sub_1D2870F68();
    v20 = sub_1D2873C38();
    sub_1D2873C68();
    v31 = sub_1D2878BA8();
    if ((sub_1D2878EE8() & 1) == 0)
    {

LABEL_15:

      (*(v36 + 8))(v12, v37);
      (*(v34 + 8))(v17, v35);
      *(v3 + 40) = 0;

      return;
    }

    v30 = a2;
    if (v19)
    {
      if (!(v18 >> 32))
      {
        v22 = v38;
        if ((v18 & 0xFFFFF800) == 0xD800)
        {
LABEL_20:
          __break(1u);
          return;
        }

        if (v18 >> 16 <= 0x10)
        {

          v21 = &v39;
          goto LABEL_11;
        }

LABEL_19:
        __break(1u);
        goto LABEL_20;
      }
    }

    else
    {

      if (v18)
      {
        v21 = v18;
        v22 = v38;
LABEL_11:
        v23 = v20;
        sub_1D2870F78();
        sub_1D2873C98();

        v24 = v32;
        if ((*(v22 + 11))(v8, v32) == *MEMORY[0x1E69E93E8])
        {
          v25 = 0;
          v26 = 0;
          v38 = "[Error] Interval already ended";
        }

        else
        {
          (*(v22 + 1))(v8, v24);
          v38 = "%s";
          v26 = 2;
          v25 = 1;
        }

        v27 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        v39 = v28;
        *v27 = v26;
        *(v27 + 1) = v25;
        *(v27 + 2) = 2080;
        *(v27 + 4) = sub_1D23D7C84(v33, v30, &v39);
        v29 = sub_1D2873C08();
        _os_signpost_emit_with_name_impl(&dword_1D226E000, v23, v31, v29, v21, v38, v27, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v28);
        MEMORY[0x1D38A3520](v28, -1, -1);
        MEMORY[0x1D38A3520](v27, -1, -1);

        goto LABEL_15;
      }

      __break(1u);
    }

    __break(1u);
    goto LABEL_19;
  }
}

uint64_t sub_1D283738C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[16] = a6;
  v7[17] = v6;
  v7[14] = a4;
  v7[15] = a5;
  v7[12] = a2;
  v7[13] = a3;
  v7[11] = a1;
  v8 = sub_1D2878538();
  v7[18] = v8;
  v7[19] = *(v8 - 8);
  v7[20] = swift_task_alloc();
  v9 = sub_1D2873C48();
  v7[21] = v9;
  v7[22] = *(v9 - 8);
  v7[23] = swift_task_alloc();
  v10 = sub_1D2873C28();
  v7[24] = v10;
  v7[25] = *(v10 - 8);
  v7[26] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E3390);
  v7[27] = swift_task_alloc();
  v11 = sub_1D2873728();
  v7[28] = v11;
  v7[29] = *(v11 - 8);
  v7[30] = swift_task_alloc();
  v12 = sub_1D2873CB8();
  v7[31] = v12;
  v7[32] = *(v12 - 8);
  v7[33] = swift_task_alloc();
  v7[34] = swift_task_alloc();
  v7[35] = swift_task_alloc();
  v13 = sub_1D2873298();
  v7[36] = v13;
  v7[37] = *(v13 - 8);
  v7[38] = swift_task_alloc();
  v7[39] = swift_task_alloc();
  v14 = sub_1D2872128();
  v7[40] = v14;
  v7[41] = *(v14 - 8);
  v7[42] = swift_task_alloc();
  v7[43] = swift_task_alloc();
  v7[44] = sub_1D2878568();
  v7[45] = sub_1D2878558();
  v16 = sub_1D28784F8();
  v7[46] = v16;
  v7[47] = v15;

  return MEMORY[0x1EEE6DFA0](sub_1D2837720, v16, v15);
}

uint64_t sub_1D2837720()
{
  v2 = v0[42];
  v1 = v0[43];
  v3 = v0[40];
  v4 = v0[41];
  sub_1D2872188();
  sub_1D2872148();
  (*(v4 + 104))(v2, *MEMORY[0x1E696E410], v3);
  v5 = sub_1D2872118();
  v6 = *(v4 + 8);
  v6(v2, v3);
  v6(v1, v3);
  v7 = v0[17];
  if ((v5 & 1) != 0 && *(*(v7 + OBJC_IVAR____TtCV23ImagePlaygroundInternal15ImageGeneration30ExternalProviderImageGenerator_providerInfoManager) + 40))
  {
    v9 = v0[38];
    v8 = v0[39];
    v10 = v0[36];
    v11 = v0[37];
    sub_1D2870F78();
    sub_1D2873228();

    (*(v11 + 32))(v8, v9, v10);
    sub_1D28725B8();
    v12 = sub_1D2873CA8();
    v13 = sub_1D2878A18();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_1D226E000, v12, v13, "EXTERNAL canceling generation because partner use is restricted", v14, 2u);
      MEMORY[0x1D38A3520](v14, -1, -1);
    }

    v15 = v0[39];
    v16 = v0[36];
    v17 = v0[37];
    v18 = v0[35];
    v19 = v0[31];
    v20 = v0[32];

    (*(v20 + 8))(v18, v19);
    sub_1D2838950();
    v21 = sub_1D274F788();
    v23 = v22;
    sub_1D22BCE64();
    swift_allocError();
    *v24 = v21;
    *(v24 + 8) = v23;
    v25 = -112;
LABEL_16:
    *(v24 + 16) = v25;
    swift_willThrow();
    (*(v17 + 8))(v15, v16);

    v45 = v0[1];

    return v45();
  }

  v26 = v0[28];
  v27 = v0[29];
  v28 = v0[27];
  v29 = OBJC_IVAR____TtCV23ImagePlaygroundInternal15ImageGeneration30ExternalProviderImageGenerator_externalConfiguration;
  swift_beginAccess();
  sub_1D22BD1D0(v7 + v29, v28, &qword_1EC6E3390);
  v30 = (*(v27 + 48))(v28, 1, v26);
  v31 = v0[27];
  if (v30 == 1)
  {

    sub_1D22BD238(v31, &qword_1EC6E3390);
    sub_1D28725B8();
    v32 = sub_1D2873CA8();
    v33 = sub_1D2878A18();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&dword_1D226E000, v32, v33, "EXTERNAL trying to generate from empty configuration", v34, 2u);
      MEMORY[0x1D38A3520](v34, -1, -1);
    }

    (*(v0[32] + 8))(v0[33], v0[31]);

    v35 = v0[1];
    v36 = MEMORY[0x1E69E7CC0];

    return v35(v36);
  }

  else
  {
    v38 = v0[17];
    (*(v0[29] + 32))(v0[30], v0[27], v0[28]);
    if (*(v38 + OBJC_IVAR____TtCV23ImagePlaygroundInternal15ImageGeneration30ExternalProviderImageGenerator_shouldCancelUpcomingGeneration))
    {

      sub_1D28725B8();
      v39 = sub_1D2873CA8();
      v40 = sub_1D2878A18();
      if (os_log_type_enabled(v39, v40))
      {
        v41 = swift_slowAlloc();
        *v41 = 0;
        _os_log_impl(&dword_1D226E000, v39, v40, "EXTERNAL canceling upcoming generation as previously requested", v41, 2u);
        MEMORY[0x1D38A3520](v41, -1, -1);
      }

      v42 = v0[34];
      v43 = v0[31];
      v44 = v0[32];
      v17 = v0[29];
      v15 = v0[30];
      v16 = v0[28];

      (*(v44 + 8))(v42, v43);
      sub_1D2838950();
      sub_1D22BCE64();
      swift_allocError();
      *v24 = xmmword_1D28AB700;
      v25 = -96;
      goto LABEL_16;
    }

    v46 = v0[30];
    v47 = v0[26];
    v49 = v0[22];
    v48 = v0[23];
    v50 = v0[21];
    v51 = v0[17];
    sub_1D28720E8();
    sub_1D2873C38();
    sub_1D2873BF8();
    (*(v49 + 8))(v48, v50);
    v52 = sub_1D2878558();
    v0[48] = v52;
    v53 = swift_task_alloc();
    v0[49] = v53;
    *(v53 + 16) = v51;
    *(v53 + 24) = "generateImages";
    *(v53 + 32) = 14;
    *(v53 + 40) = 2;
    *(v53 + 48) = v47;
    *(v53 + 56) = v46;
    v54 = swift_task_alloc();
    v0[50] = v54;
    v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA498);
    *v54 = v0;
    v54[1] = sub_1D2837E60;
    v56 = MEMORY[0x1E69E85E0];

    return MEMORY[0x1EEE6DE38](v0 + 8, v52, v56, 0xD000000000000051, 0x80000001D28C4F50, sub_1D283FEA8, v53, v55);
  }
}

uint64_t sub_1D2837E60()
{
  v2 = *v1;
  *(*v1 + 408) = v0;

  if (v0)
  {
    v3 = *(v2 + 368);
    v4 = *(v2 + 376);
    v5 = sub_1D28380D4;
  }

  else
  {

    v3 = *(v2 + 368);
    v4 = *(v2 + 376);
    v5 = sub_1D2837F84;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

uint64_t sub_1D2837F84()
{
  v2 = v0[25];
  v1 = v0[26];
  v3 = v0[24];

  v6 = v0[8];
  (*(v2 + 8))(v1, v3);
  (*(v0[29] + 8))(v0[30], v0[28]);

  v4 = v0[1];

  return v4(v6);
}

void sub_1D28380D4()
{
  v41 = v0;
  v1 = *(v0 + 408);

  *(v0 + 72) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D94B0);
  if (!swift_dynamicCast())
  {
    v10 = *(v0 + 232);
    v9 = *(v0 + 240);
    v11 = *(v0 + 224);
    v13 = *(v0 + 200);
    v12 = *(v0 + 208);
    v14 = *(v0 + 192);

    (*(v13 + 8))(v12, v14);
    (*(v10 + 8))(v9, v11);
LABEL_24:

    v36 = *(v0 + 8);

    v36();
    return;
  }

  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  *(v0 + 416) = v3;
  *(v0 + 424) = v4;
  v5 = *(v0 + 56);
  *(v0 + 57) = v5;
  if (sub_1D27D8D5C())
  {
    v37 = v4;
    v6 = *(v0 + 136);
    v7 = OBJC_IVAR____TtCV23ImagePlaygroundInternal15ImageGeneration30ExternalProviderImageGenerator_progressTimer;
    if (*(v6 + OBJC_IVAR____TtCV23ImagePlaygroundInternal15ImageGeneration30ExternalProviderImageGenerator_progressTimer))
    {
      swift_getObjectType();
      sub_1D2870F78();
      sub_1D2878B88();
    }

    v8 = *(v0 + 136);
    *(v6 + v7) = 0;

    v15 = OBJC_IVAR____TtCV23ImagePlaygroundInternal15ImageGeneration30ExternalProviderImageGenerator_currentBackgroundTask;
    v16 = *(v8 + OBJC_IVAR____TtCV23ImagePlaygroundInternal15ImageGeneration30ExternalProviderImageGenerator_currentBackgroundTask);
    if (v16)
    {
      [v16 setTaskCompletedWithSuccess_];
      v17 = *(v8 + v15);
    }

    else
    {
      v17 = 0;
    }

    v4 = v37;
    *(v8 + v15) = 0;
  }

  if ((v5 & 0xF0) == 0x70)
  {
    v18 = *(v0 + 232);
    v19 = *(v0 + 240);
    v20 = *(v0 + 224);
    v21 = *(v0 + 200);
    v22 = *(v0 + 208);
    v23 = *(v0 + 192);

LABEL_23:
    sub_1D22BCE64();
    swift_allocError();
    *v35 = v3;
    *(v35 + 8) = v4;
    *(v35 + 16) = v5;
    swift_willThrow();

    (*(v21 + 8))(v22, v23);
    (*(v18 + 8))(v19, v20);
    goto LABEL_24;
  }

  v24 = *(v0 + 120);
  v25 = v24 - 1;
  if (__OFSUB__(v24, 1))
  {
    __break(1u);
    return;
  }

  if (v25 < 1)
  {
LABEL_22:

    v18 = *(v0 + 232);
    v19 = *(v0 + 240);
    v20 = *(v0 + 224);
    v21 = *(v0 + 200);
    v22 = *(v0 + 208);
    v23 = *(v0 + 192);
    goto LABEL_23;
  }

  if (v5 <= 0x4F)
  {
    *(v0 + 80) = v3;
    sub_1D233E72C(v3, v4, v5);
    if (swift_dynamicCast())
    {
      (*(*(v0 + 152) + 8))(*(v0 + 160), *(v0 + 144));
      goto LABEL_22;
    }
  }

  v26 = *(v0 + 104);
  if (v26)
  {
    sub_1D22BCE64();
    v27 = swift_allocError();
    *v28 = v3;
    *(v28 + 8) = v4;
    *(v28 + 16) = v5;
    v38 = v27;
    v39 = 0;
    v40 = 64;
    sub_1D233E72C(v3, v4, v5);
    v26(&v38);
    sub_1D22BCDC4(v38, v39, v40);
  }

  v29 = swift_task_alloc();
  *(v0 + 432) = v29;
  *v29 = v0;
  v29[1] = sub_1D2838550;
  v30 = *(v0 + 128);
  v31 = *(v0 + 104);
  v32 = *(v0 + 112);
  v34 = *(v0 + 88);
  v33 = *(v0 + 96);

  sub_1D283738C(v34, v33, v31, v32, v25, v30);
}

uint64_t sub_1D2838550(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 440) = v1;

  if (v1)
  {
    v5 = v4[46];
    v6 = v4[47];
    v7 = sub_1D28387E4;
  }

  else
  {
    v4[56] = a1;
    v5 = v4[46];
    v6 = v4[47];
    v7 = sub_1D2838678;
  }

  return MEMORY[0x1EEE6DFA0](v7, v5, v6);
}

uint64_t sub_1D2838678()
{
  v1 = *(v0 + 416);
  v2 = *(v0 + 424);
  v4 = *(v0 + 200);
  v3 = *(v0 + 208);
  v5 = *(v0 + 192);
  v6 = *(v0 + 57);

  sub_1D22BCDC4(v1, v2, v6);

  (*(v4 + 8))(v3, v5);
  v9 = *(v0 + 448);
  (*(*(v0 + 232) + 8))(*(v0 + 240), *(v0 + 224));

  v7 = *(v0 + 8);

  return v7(v9);
}

uint64_t sub_1D28387E4()
{
  v1 = *(v0 + 416);
  v2 = *(v0 + 424);
  v4 = *(v0 + 232);
  v3 = *(v0 + 240);
  v5 = *(v0 + 224);
  v7 = *(v0 + 200);
  v6 = *(v0 + 208);
  v8 = *(v0 + 192);
  v9 = *(v0 + 57);

  sub_1D22BCDC4(v1, v2, v9);

  (*(v7 + 8))(v6, v8);
  (*(v4 + 8))(v3, v5);

  v10 = *(v0 + 8);

  return v10();
}

void sub_1D2838950()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6E3378);
  v3 = MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v47 = &v44 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6E3360);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v44 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E3388);
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  v45 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v48 = &v44 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA4A0);
  v49 = *(v15 - 8);
  v50 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v46 = &v44 - v16;
  v17 = sub_1D2873CB8();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v44 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D28725B8();
  v21 = sub_1D2873CA8();
  v22 = sub_1D2878A38();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v44 = v5;
    v24 = v1;
    v25 = v10;
    v26 = v8;
    v27 = v7;
    v28 = v23;
    *v23 = 0;
    _os_log_impl(&dword_1D226E000, v21, v22, "EXTERNAL cancel generation.", v23, 2u);
    v29 = v28;
    v7 = v27;
    v8 = v26;
    v10 = v25;
    v1 = v24;
    v5 = v44;
    MEMORY[0x1D38A3520](v29, -1, -1);
  }

  (*(v18 + 8))(v20, v17);
  *(v1 + OBJC_IVAR____TtCV23ImagePlaygroundInternal15ImageGeneration30ExternalProviderImageGenerator_shouldCancelUpcomingGeneration) = 0;
  if (*(v1 + 48))
  {
    sub_1D2870F78();
    sub_1D28786B8();
  }

  v31 = v49;
  v30 = v50;
  v32 = v48;
  *(v1 + 48) = 0;

  v33 = OBJC_IVAR____TtCV23ImagePlaygroundInternal15ImageGeneration30ExternalProviderImageGenerator_currentGenerationTaskContinuation;
  swift_beginAccess();
  sub_1D22BD1D0(v1 + v33, v32, &qword_1EC6E3388);
  if ((*(v31 + 48))(v32, 1, v30) == 1)
  {
    sub_1D22BD238(v32, &qword_1EC6E3388);
    if ((sub_1D27D8D5C() & 1) == 0)
    {
      return;
    }
  }

  else
  {
    v34 = v46;
    (*(v31 + 32))(v46, v32, v30);
    v35 = v45;
    (*(v31 + 56))(v45, 1, 1, v30);
    swift_beginAccess();
    sub_1D22BD298(v35, v1 + v33, &qword_1EC6E3388);
    swift_endAccess();
    sub_1D2878538();
    sub_1D28400D8(&unk_1ED89CFC0, MEMORY[0x1E69E8550]);
    v36 = swift_allocError();
    sub_1D2877E68();
    v52 = v36;
    sub_1D2878508();
    (*(v31 + 8))(v34, v30);
    if ((sub_1D27D8D5C() & 1) == 0)
    {
      return;
    }
  }

  v37 = OBJC_IVAR____TtCV23ImagePlaygroundInternal15ImageGeneration30ExternalProviderImageGenerator_progressTimer;
  if (*(v1 + OBJC_IVAR____TtCV23ImagePlaygroundInternal15ImageGeneration30ExternalProviderImageGenerator_progressTimer))
  {
    swift_getObjectType();
    sub_1D2870F78();
    sub_1D2878B88();
  }

  *(v1 + v37) = 0;

  v38 = OBJC_IVAR____TtCV23ImagePlaygroundInternal15ImageGeneration30ExternalProviderImageGenerator_backgroundTaskContinuation;
  swift_beginAccess();
  v39 = v47;
  sub_1D22BD1D0(v1 + v38, v47, &unk_1EC6E3378);
  if ((*(v8 + 48))(v39, 1, v7) == 1)
  {
    sub_1D22BD238(v39, &unk_1EC6E3378);
  }

  else
  {
    (*(v8 + 32))(v10, v39, v7);
    (*(v8 + 56))(v5, 1, 1, v7);
    swift_beginAccess();
    sub_1D22BD298(v5, v1 + v38, &unk_1EC6E3378);
    swift_endAccess();
    sub_1D2878538();
    sub_1D28400D8(&unk_1ED89CFC0, MEMORY[0x1E69E8550]);
    v40 = swift_allocError();
    sub_1D2877E68();
    v51 = v40;
    sub_1D2878508();
    (*(v8 + 8))(v10, v7);
  }

  v41 = OBJC_IVAR____TtCV23ImagePlaygroundInternal15ImageGeneration30ExternalProviderImageGenerator_currentBackgroundTask;
  v42 = *(v1 + OBJC_IVAR____TtCV23ImagePlaygroundInternal15ImageGeneration30ExternalProviderImageGenerator_currentBackgroundTask);
  if (v42)
  {
    [v42 setTaskCompletedWithSuccess_];
    v43 = *(v1 + v41);
  }

  else
  {
    v43 = 0;
  }

  *(v1 + v41) = 0;
}

uint64_t sub_1D28390B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7)
{
  v43 = a6;
  v44 = a7;
  v48 = a5;
  v46 = a3;
  v47 = a4;
  v40 = a1;
  v8 = sub_1D2873728();
  v41 = *(v8 - 8);
  v42 = v8;
  v45 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = v10;
  v11 = sub_1D2873C28();
  v37 = v11;
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8E60);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v36 - v15;
  v39 = &v36 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E3388);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v36 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA4A0);
  v21 = *(v20 - 8);
  (*(v21 + 16))(v19, v40, v20);
  (*(v21 + 56))(v19, 0, 1, v20);
  v22 = OBJC_IVAR____TtCV23ImagePlaygroundInternal15ImageGeneration30ExternalProviderImageGenerator_currentGenerationTaskContinuation;
  swift_beginAccess();
  sub_1D22BD298(v19, a2 + v22, &qword_1EC6E3388);
  swift_endAccess();
  v23 = sub_1D28785F8();
  (*(*(v23 - 8) + 56))(v16, 1, 1, v23);
  v24 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v24, v43, v11);
  v25 = v41;
  v26 = v10;
  v27 = v42;
  (*(v41 + 16))(v26, v44, v42);
  sub_1D2878568();
  sub_1D2870F78();
  v28 = sub_1D2878558();
  v29 = (*(v12 + 80) + 49) & ~*(v12 + 80);
  v30 = (v13 + v29 + 7) & 0xFFFFFFFFFFFFFFF8;
  v31 = (*(v25 + 80) + v30 + 8) & ~*(v25 + 80);
  v32 = swift_allocObject();
  v33 = MEMORY[0x1E69E85E0];
  *(v32 + 16) = v28;
  *(v32 + 24) = v33;
  v34 = v47;
  *(v32 + 32) = v46;
  *(v32 + 40) = v34;
  *(v32 + 48) = v48;
  (*(v12 + 32))(v32 + v29, v24, v37);
  *(v32 + v30) = a2;
  (*(v25 + 32))(v32 + v31, v38, v27);
  *(a2 + 48) = sub_1D22AE01C(0, 0, v39, &unk_1D28AB8C0, v32);
}

uint64_t sub_1D28394E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 112) = a8;
  *(v8 + 120) = v18;
  *(v8 + 400) = a6;
  *(v8 + 96) = a4;
  *(v8 + 104) = a7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E3388);
  *(v8 + 128) = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA4A0);
  *(v8 + 136) = v9;
  *(v8 + 144) = *(v9 - 8);
  *(v8 + 152) = swift_task_alloc();
  v10 = sub_1D2873C58();
  *(v8 + 160) = v10;
  *(v8 + 168) = *(v10 - 8);
  *(v8 + 176) = swift_task_alloc();
  v11 = sub_1D2873C28();
  *(v8 + 184) = v11;
  *(v8 + 192) = *(v11 - 8);
  *(v8 + 200) = swift_task_alloc();
  *(v8 + 208) = swift_task_alloc();
  v12 = sub_1D2873C48();
  *(v8 + 216) = v12;
  *(v8 + 224) = *(v12 - 8);
  *(v8 + 232) = swift_task_alloc();
  *(v8 + 240) = swift_task_alloc();
  v13 = sub_1D2873CB8();
  *(v8 + 248) = v13;
  *(v8 + 256) = *(v13 - 8);
  *(v8 + 264) = swift_task_alloc();
  *(v8 + 272) = swift_task_alloc();
  *(v8 + 280) = swift_task_alloc();
  sub_1D2878568();
  *(v8 + 288) = sub_1D2878558();
  v15 = sub_1D28784F8();
  *(v8 + 296) = v15;
  *(v8 + 304) = v14;

  return MEMORY[0x1EEE6DFA0](sub_1D28397C8, v15, v14);
}

uint64_t sub_1D28397C8()
{
  sub_1D28725B8();
  v1 = sub_1D2873CA8();
  v2 = sub_1D2878A38();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_1D226E000, v1, v2, "EXTERNAL will generate previews", v3, 2u);
    MEMORY[0x1D38A3520](v3, -1, -1);
  }

  v4 = *(v0 + 280);
  v5 = *(v0 + 248);
  v6 = *(v0 + 256);

  v7 = *(v6 + 8);
  *(v0 + 312) = v7;
  v7(v4, v5);
  sub_1D28720E8();
  v8 = sub_1D2873C38();
  v9 = sub_1D2878BB8();
  result = sub_1D2878EE8();
  if ((result & 1) == 0)
  {
    goto LABEL_12;
  }

  v11 = *(v0 + 96);
  if (*(v0 + 400))
  {
LABEL_7:
    if (v11 >> 32)
    {
      __break(1u);
    }

    else
    {
      if ((v11 & 0xFFFFF800) == 0xD800)
      {
LABEL_22:
        __break(1u);
        return result;
      }

      if (v11 >> 16 <= 0x10)
      {
        v11 = (v0 + 88);
        goto LABEL_11;
      }
    }

    __break(1u);
    goto LABEL_22;
  }

  if (!v11)
  {
    __break(1u);
    goto LABEL_7;
  }

LABEL_11:
  v12 = swift_slowAlloc();
  *v12 = 0;
  v13 = sub_1D2873C08();
  _os_signpost_emit_with_name_impl(&dword_1D226E000, v8, v9, v13, v11, "", v12, 2u);
  MEMORY[0x1D38A3520](v12, -1, -1);
LABEL_12:

  v14 = *(v0 + 240);
  v15 = *(v0 + 216);
  v16 = *(v0 + 224);
  (*(*(v0 + 192) + 16))(*(v0 + 208), *(v0 + 104), *(v0 + 184));
  sub_1D2873C88();
  swift_allocObject();
  *(v0 + 320) = sub_1D2873C78();
  v17 = *(v16 + 8);
  *(v0 + 328) = v17;
  *(v0 + 336) = (v16 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v17(v14, v15);
  if ((sub_1D27D8D5C() & 1) != 0 && (v18 = *(v0 + 112), v19 = OBJC_IVAR____TtCV23ImagePlaygroundInternal15ImageGeneration30ExternalProviderImageGenerator_currentBackgroundTask, *(v0 + 344) = OBJC_IVAR____TtCV23ImagePlaygroundInternal15ImageGeneration30ExternalProviderImageGenerator_currentBackgroundTask, !*(v18 + v19)))
  {
    v22 = swift_task_alloc();
    *(v0 + 352) = v22;
    *v22 = v0;
    v22[1] = sub_1D2839AE0;

    return sub_1D28341E4();
  }

  else
  {
    v20 = swift_task_alloc();
    *(v0 + 376) = v20;
    *v20 = v0;
    v20[1] = sub_1D2839CB4;
    v21 = *(v0 + 120);

    return sub_1D283AFDC(v21);
  }
}

uint64_t sub_1D2839AE0(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 360) = v1;

  if (v1)
  {
    v5 = v4[37];
    v6 = v4[38];
    v7 = sub_1D283A434;
  }

  else
  {
    v4[46] = a1;
    v5 = v4[37];
    v6 = v4[38];
    v7 = sub_1D2839C08;
  }

  return MEMORY[0x1EEE6DFA0](v7, v5, v6);
}

uint64_t sub_1D2839C08()
{
  v1 = v0[43];
  v2 = v0[14];
  v3 = *(v2 + v1);
  *(v2 + v1) = v0[46];

  v4 = swift_task_alloc();
  v0[47] = v4;
  *v4 = v0;
  v4[1] = sub_1D2839CB4;
  v5 = v0[15];

  return sub_1D283AFDC(v5);
}

uint64_t sub_1D2839CB4(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 384) = v1;

  if (v1)
  {
    v5 = v4[37];
    v6 = v4[38];
    v7 = sub_1D283AA08;
  }

  else
  {
    v4[49] = a1;
    v5 = v4[37];
    v6 = v4[38];
    v7 = sub_1D2839DDC;
  }

  return MEMORY[0x1EEE6DFA0](v7, v5, v6);
}

uint64_t sub_1D2839DDC()
{
  if (sub_1D27D8D5C())
  {
    v1 = *(v0 + 112);
    v2 = OBJC_IVAR____TtCV23ImagePlaygroundInternal15ImageGeneration30ExternalProviderImageGenerator_progressTimer;
    if (*(v1 + OBJC_IVAR____TtCV23ImagePlaygroundInternal15ImageGeneration30ExternalProviderImageGenerator_progressTimer))
    {
      swift_getObjectType();
      sub_1D2870F78();
      sub_1D2878B88();
    }

    v3 = *(v0 + 112);
    *(v1 + v2) = 0;

    v5 = OBJC_IVAR____TtCV23ImagePlaygroundInternal15ImageGeneration30ExternalProviderImageGenerator_currentBackgroundTask;
    v6 = *(v3 + OBJC_IVAR____TtCV23ImagePlaygroundInternal15ImageGeneration30ExternalProviderImageGenerator_currentBackgroundTask);
    if (v6)
    {
      v7 = [v6 progress];
      v8 = *(v3 + v5);
      if (v8)
      {
        v9 = [v8 progress];
        v10 = [v9 totalUnitCount];
      }

      else
      {
        v10 = 0;
      }

      [v7 setCompletedUnitCount_];

      v12 = *(v3 + v5);
      v4 = *(v0 + 392);
      if (v12)
      {
        [v12 setTaskCompletedWithSuccess_];
        v11 = *(v3 + v5);
      }

      else
      {
        v11 = 0;
      }
    }

    else
    {
      v11 = 0;
      v4 = *(v0 + 392);
    }

    *(v3 + v5) = 0;
  }

  else
  {
    v4 = *(v0 + 392);
  }

  sub_1D28720E8();
  v13 = sub_1D2873C38();
  sub_1D2873C68();
  v14 = sub_1D2878BA8();
  result = sub_1D2878EE8();
  if ((result & 1) == 0)
  {

    goto LABEL_27;
  }

  if (*(v0 + 400))
  {
    v18 = *(v0 + 96);
    if (!HIDWORD(v18))
    {
      if ((*(v0 + 96) & 0xFFFFF800) == 0xD800)
      {
LABEL_44:
        __break(1u);
        return result;
      }

      if (v18 >> 16 <= 0x10)
      {
        v17 = (v0 + 80);

        goto LABEL_23;
      }

LABEL_43:
      __break(1u);
      goto LABEL_44;
    }

LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v16 = *(v0 + 96);

  if (!v16)
  {
    __break(1u);
    goto LABEL_42;
  }

  v17 = *(v0 + 96);
LABEL_23:
  v20 = *(v0 + 168);
  v19 = *(v0 + 176);
  v21 = *(v0 + 160);
  sub_1D2870F78();
  sub_1D2873C98();

  if ((*(v20 + 88))(v19, v21) == *MEMORY[0x1E69E93E8])
  {
    v22 = "[Error] Interval already ended";
  }

  else
  {
    (*(*(v0 + 168) + 8))(*(v0 + 176), *(v0 + 160));
    v22 = "";
  }

  v23 = swift_slowAlloc();
  *v23 = 0;
  v24 = sub_1D2873C08();
  _os_signpost_emit_with_name_impl(&dword_1D226E000, v13, v14, v24, v17, v22, v23, 2u);
  MEMORY[0x1D38A3520](v23, -1, -1);
LABEL_27:

  v25 = *(v0 + 328);
  v26 = *(v0 + 232);
  v27 = *(v0 + 216);
  (*(*(v0 + 192) + 8))(*(v0 + 200), *(v0 + 184));
  v25(v26, v27);
  sub_1D2836F84(0xD000000000000016, 0x80000001D28B2410);
  if ((sub_1D28786D8() & 1) == 0)
  {
    v32 = *(v0 + 136);
    v33 = *(v0 + 144);
    v34 = *(v0 + 112);
    v35 = OBJC_IVAR____TtCV23ImagePlaygroundInternal15ImageGeneration30ExternalProviderImageGenerator_currentGenerationTaskContinuation;
    swift_beginAccess();
    if (!(*(v33 + 48))(v34 + v35, 1, v32))
    {
      v36 = *(v0 + 144);
      (*(v36 + 16))(*(v0 + 152), v34 + v35, *(v0 + 136));
      v37 = *(v0 + 152);
      v38 = *(v0 + 136);
      *(v0 + 72) = v4;
      sub_1D2870F68();
      sub_1D2878518();
      (*(v36 + 8))(v37, v38);
    }

    v28 = (v0 + 264);
    v39 = *(v0 + 128);
    v40 = *(v0 + 112);
    (*(*(v0 + 144) + 56))(v39, 1, 1, *(v0 + 136));
    swift_beginAccess();
    sub_1D22BD298(v39, v34 + v35, &qword_1EC6E3388);
    swift_endAccess();
    *(v40 + 48) = 0;

    sub_1D28725B8();
    v29 = sub_1D2873CA8();
    v41 = sub_1D2878A38();
    if (os_log_type_enabled(v29, v41))
    {
      v42 = swift_slowAlloc();
      *v42 = 0;
      _os_log_impl(&dword_1D226E000, v29, v41, "EXTERNAL exited generation task", v42, 2u);
      MEMORY[0x1D38A3520](v42, -1, -1);

      sub_1D284004C(v4, 0);
      goto LABEL_34;
    }

    sub_1D284004C(v4, 0);

LABEL_37:

    goto LABEL_38;
  }

  v28 = (v0 + 272);
  sub_1D28725B8();
  v29 = sub_1D2873CA8();
  v30 = sub_1D2878A38();
  if (!os_log_type_enabled(v29, v30))
  {

    sub_1D284004C(v4, 0);
    goto LABEL_37;
  }

  v31 = swift_slowAlloc();
  *v31 = 0;
  _os_log_impl(&dword_1D226E000, v29, v30, "EXTERNAL exited generation task (cancelled)", v31, 2u);
  MEMORY[0x1D38A3520](v31, -1, -1);
  sub_1D284004C(v4, 0);

LABEL_34:

LABEL_38:
  (*(v0 + 312))(*v28, *(v0 + 248));

  v43 = *(v0 + 8);

  return v43();
}

uint64_t sub_1D283A434()
{
  v1 = *(v0 + 360);
  if (sub_1D27D8D5C())
  {
    v2 = *(v0 + 112);
    v3 = OBJC_IVAR____TtCV23ImagePlaygroundInternal15ImageGeneration30ExternalProviderImageGenerator_progressTimer;
    if (*(v2 + OBJC_IVAR____TtCV23ImagePlaygroundInternal15ImageGeneration30ExternalProviderImageGenerator_progressTimer))
    {
      swift_getObjectType();
      sub_1D2870F78();
      sub_1D2878B88();
    }

    v4 = *(v0 + 112);
    *(v2 + v3) = 0;

    v5 = OBJC_IVAR____TtCV23ImagePlaygroundInternal15ImageGeneration30ExternalProviderImageGenerator_currentBackgroundTask;
    v6 = *(v4 + OBJC_IVAR____TtCV23ImagePlaygroundInternal15ImageGeneration30ExternalProviderImageGenerator_currentBackgroundTask);
    if (v6)
    {
      [v6 setTaskCompletedWithSuccess_];
      v7 = *(v4 + v5);
    }

    else
    {
      v7 = 0;
    }

    *(v4 + v5) = 0;
  }

  sub_1D28720E8();
  v8 = sub_1D2873C38();
  sub_1D2873C68();
  v9 = sub_1D2878BA8();
  result = sub_1D2878EE8();
  if ((result & 1) == 0)
  {

    goto LABEL_21;
  }

  if (*(v0 + 400))
  {
    v13 = *(v0 + 96);
    if (!HIDWORD(v13))
    {
      if ((*(v0 + 96) & 0xFFFFF800) == 0xD800)
      {
LABEL_38:
        __break(1u);
        return result;
      }

      if (v13 >> 16 <= 0x10)
      {
        v12 = (v0 + 80);

        goto LABEL_17;
      }

LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v11 = *(v0 + 96);

  if (!v11)
  {
    __break(1u);
    goto LABEL_36;
  }

  v12 = *(v0 + 96);
LABEL_17:
  v15 = *(v0 + 168);
  v14 = *(v0 + 176);
  v16 = *(v0 + 160);
  sub_1D2870F78();
  sub_1D2873C98();

  if ((*(v15 + 88))(v14, v16) == *MEMORY[0x1E69E93E8])
  {
    v17 = "[Error] Interval already ended";
  }

  else
  {
    (*(*(v0 + 168) + 8))(*(v0 + 176), *(v0 + 160));
    v17 = "";
  }

  v18 = swift_slowAlloc();
  *v18 = 0;
  v19 = sub_1D2873C08();
  _os_signpost_emit_with_name_impl(&dword_1D226E000, v8, v9, v19, v12, v17, v18, 2u);
  MEMORY[0x1D38A3520](v18, -1, -1);
LABEL_21:

  v20 = *(v0 + 328);
  v21 = *(v0 + 232);
  v22 = *(v0 + 216);
  (*(*(v0 + 192) + 8))(*(v0 + 200), *(v0 + 184));
  v20(v21, v22);
  sub_1D2836F84(0xD000000000000016, 0x80000001D28B2410);
  if ((sub_1D28786D8() & 1) == 0)
  {
    v27 = *(v0 + 136);
    v28 = *(v0 + 144);
    v29 = *(v0 + 112);
    v30 = OBJC_IVAR____TtCV23ImagePlaygroundInternal15ImageGeneration30ExternalProviderImageGenerator_currentGenerationTaskContinuation;
    swift_beginAccess();
    if (!(*(v28 + 48))(v29 + v30, 1, v27))
    {
      v31 = *(v0 + 144);
      (*(v31 + 16))(*(v0 + 152), v29 + v30, *(v0 + 136));
      v32 = *(v0 + 152);
      v33 = *(v0 + 136);
      *(v0 + 64) = v1;
      v34 = v1;
      sub_1D2878508();
      (*(v31 + 8))(v32, v33);
    }

    v23 = (v0 + 264);
    v35 = *(v0 + 128);
    v36 = *(v0 + 112);
    (*(*(v0 + 144) + 56))(v35, 1, 1, *(v0 + 136));
    swift_beginAccess();
    sub_1D22BD298(v35, v29 + v30, &qword_1EC6E3388);
    swift_endAccess();
    *(v36 + 48) = 0;

    sub_1D28725B8();
    v24 = sub_1D2873CA8();
    v37 = sub_1D2878A38();
    if (os_log_type_enabled(v24, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&dword_1D226E000, v24, v37, "EXTERNAL exited generation task", v38, 2u);
      MEMORY[0x1D38A3520](v38, -1, -1);

      sub_1D284004C(v1, 1);
      goto LABEL_28;
    }

    sub_1D284004C(v1, 1);

LABEL_31:

    goto LABEL_32;
  }

  v23 = (v0 + 272);
  sub_1D28725B8();
  v24 = sub_1D2873CA8();
  v25 = sub_1D2878A38();
  if (!os_log_type_enabled(v24, v25))
  {

    sub_1D284004C(v1, 1);
    goto LABEL_31;
  }

  v26 = swift_slowAlloc();
  *v26 = 0;
  _os_log_impl(&dword_1D226E000, v24, v25, "EXTERNAL exited generation task (cancelled)", v26, 2u);
  MEMORY[0x1D38A3520](v26, -1, -1);
  sub_1D284004C(v1, 1);

LABEL_28:

LABEL_32:
  (*(v0 + 312))(*v23, *(v0 + 248));

  v39 = *(v0 + 8);

  return v39();
}

uint64_t sub_1D283AA08()
{
  v1 = *(v0 + 384);
  if (sub_1D27D8D5C())
  {
    v2 = *(v0 + 112);
    v3 = OBJC_IVAR____TtCV23ImagePlaygroundInternal15ImageGeneration30ExternalProviderImageGenerator_progressTimer;
    if (*(v2 + OBJC_IVAR____TtCV23ImagePlaygroundInternal15ImageGeneration30ExternalProviderImageGenerator_progressTimer))
    {
      swift_getObjectType();
      sub_1D2870F78();
      sub_1D2878B88();
    }

    v4 = *(v0 + 112);
    *(v2 + v3) = 0;

    v5 = OBJC_IVAR____TtCV23ImagePlaygroundInternal15ImageGeneration30ExternalProviderImageGenerator_currentBackgroundTask;
    v6 = *(v4 + OBJC_IVAR____TtCV23ImagePlaygroundInternal15ImageGeneration30ExternalProviderImageGenerator_currentBackgroundTask);
    if (v6)
    {
      [v6 setTaskCompletedWithSuccess_];
      v7 = *(v4 + v5);
    }

    else
    {
      v7 = 0;
    }

    *(v4 + v5) = 0;
  }

  sub_1D28720E8();
  v8 = sub_1D2873C38();
  sub_1D2873C68();
  v9 = sub_1D2878BA8();
  result = sub_1D2878EE8();
  if ((result & 1) == 0)
  {

    goto LABEL_21;
  }

  if (*(v0 + 400))
  {
    v13 = *(v0 + 96);
    if (!HIDWORD(v13))
    {
      if ((*(v0 + 96) & 0xFFFFF800) == 0xD800)
      {
LABEL_38:
        __break(1u);
        return result;
      }

      if (v13 >> 16 <= 0x10)
      {
        v12 = (v0 + 80);

        goto LABEL_17;
      }

LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v11 = *(v0 + 96);

  if (!v11)
  {
    __break(1u);
    goto LABEL_36;
  }

  v12 = *(v0 + 96);
LABEL_17:
  v15 = *(v0 + 168);
  v14 = *(v0 + 176);
  v16 = *(v0 + 160);
  sub_1D2870F78();
  sub_1D2873C98();

  if ((*(v15 + 88))(v14, v16) == *MEMORY[0x1E69E93E8])
  {
    v17 = "[Error] Interval already ended";
  }

  else
  {
    (*(*(v0 + 168) + 8))(*(v0 + 176), *(v0 + 160));
    v17 = "";
  }

  v18 = swift_slowAlloc();
  *v18 = 0;
  v19 = sub_1D2873C08();
  _os_signpost_emit_with_name_impl(&dword_1D226E000, v8, v9, v19, v12, v17, v18, 2u);
  MEMORY[0x1D38A3520](v18, -1, -1);
LABEL_21:

  v20 = *(v0 + 328);
  v21 = *(v0 + 232);
  v22 = *(v0 + 216);
  (*(*(v0 + 192) + 8))(*(v0 + 200), *(v0 + 184));
  v20(v21, v22);
  sub_1D2836F84(0xD000000000000016, 0x80000001D28B2410);
  if ((sub_1D28786D8() & 1) == 0)
  {
    v27 = *(v0 + 136);
    v28 = *(v0 + 144);
    v29 = *(v0 + 112);
    v30 = OBJC_IVAR____TtCV23ImagePlaygroundInternal15ImageGeneration30ExternalProviderImageGenerator_currentGenerationTaskContinuation;
    swift_beginAccess();
    if (!(*(v28 + 48))(v29 + v30, 1, v27))
    {
      v31 = *(v0 + 144);
      (*(v31 + 16))(*(v0 + 152), v29 + v30, *(v0 + 136));
      v32 = *(v0 + 152);
      v33 = *(v0 + 136);
      *(v0 + 64) = v1;
      v34 = v1;
      sub_1D2878508();
      (*(v31 + 8))(v32, v33);
    }

    v23 = (v0 + 264);
    v35 = *(v0 + 128);
    v36 = *(v0 + 112);
    (*(*(v0 + 144) + 56))(v35, 1, 1, *(v0 + 136));
    swift_beginAccess();
    sub_1D22BD298(v35, v29 + v30, &qword_1EC6E3388);
    swift_endAccess();
    *(v36 + 48) = 0;

    sub_1D28725B8();
    v24 = sub_1D2873CA8();
    v37 = sub_1D2878A38();
    if (os_log_type_enabled(v24, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&dword_1D226E000, v24, v37, "EXTERNAL exited generation task", v38, 2u);
      MEMORY[0x1D38A3520](v38, -1, -1);

      sub_1D284004C(v1, 1);
      goto LABEL_28;
    }

    sub_1D284004C(v1, 1);

LABEL_31:

    goto LABEL_32;
  }

  v23 = (v0 + 272);
  sub_1D28725B8();
  v24 = sub_1D2873CA8();
  v25 = sub_1D2878A38();
  if (!os_log_type_enabled(v24, v25))
  {

    sub_1D284004C(v1, 1);
    goto LABEL_31;
  }

  v26 = swift_slowAlloc();
  *v26 = 0;
  _os_log_impl(&dword_1D226E000, v24, v25, "EXTERNAL exited generation task (cancelled)", v26, 2u);
  MEMORY[0x1D38A3520](v26, -1, -1);
  sub_1D284004C(v1, 1);

LABEL_28:

LABEL_32:
  (*(v0 + 312))(*v23, *(v0 + 248));

  v39 = *(v0 + 8);

  return v39();
}

uint64_t sub_1D283AFDC(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = sub_1D2873298();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E3398);
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();
  v4 = sub_1D2872A98();
  v2[10] = v4;
  v2[11] = *(v4 - 8);
  v2[12] = swift_task_alloc();
  v5 = sub_1D2872AA8();
  v2[13] = v5;
  v2[14] = *(v5 - 8);
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();
  v2[20] = swift_task_alloc();
  v6 = sub_1D2873CB8();
  v2[21] = v6;
  v2[22] = *(v6 - 8);
  v2[23] = swift_task_alloc();
  v2[24] = swift_task_alloc();
  v2[25] = swift_task_alloc();
  v2[26] = swift_task_alloc();
  v2[27] = swift_task_alloc();
  sub_1D2878568();
  v2[28] = sub_1D2878558();
  v8 = sub_1D28784F8();
  v2[29] = v8;
  v2[30] = v7;

  return MEMORY[0x1EEE6DFA0](sub_1D283B294, v8, v7);
}

uint64_t sub_1D283B294()
{
  sub_1D283D490();
  v1 = sub_1D283D24C(0);
  v0[31] = v1;
  v2 = v0[28];
  sub_1D2870F78();
  v3 = swift_task_alloc();
  v0[32] = v3;
  *v3 = v0;
  v3[1] = sub_1D283BFFC;
  v4 = v0[3];
  v5 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE4F408](v2, v5, v1, v4);
}

uint64_t sub_1D283BFFC(uint64_t a1)
{
  v3 = *v2;
  v3[33] = a1;
  v3[34] = v1;

  if (v1)
  {
    v4 = v3[29];
    v5 = v3[30];
    v6 = sub_1D283C3B4;
  }

  else
  {

    v4 = v3[29];
    v5 = v3[30];
    v6 = sub_1D283C130;
  }

  return MEMORY[0x1EEE6DFA0](v6, v4, v5);
}

uint64_t sub_1D283C130()
{

  sub_1D28725B8();
  sub_1D2870F68();
  v1 = sub_1D2873CA8();
  v2 = sub_1D2878A38();
  v3 = os_log_type_enabled(v1, v2);
  v4 = v0[33];
  if (v3)
  {
    v5 = swift_slowAlloc();
    *v5 = 134217984;
    *(v5 + 4) = *(v4 + 16);

    _os_log_impl(&dword_1D226E000, v1, v2, "EXTERNAL did generate %ld images", v5, 0xCu);
    MEMORY[0x1D38A3520](v5, -1, -1);
  }

  else
  {
  }

  (*(v0[22] + 8))(v0[27], v0[21]);
  if (qword_1ED8A4928 != -1)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v6 = off_1ED8A4930;
    if ((sub_1D23D0268() & 1) == 0)
    {
      break;
    }

    v7 = v6[3];
    while (!__OFADD__(v7, 1))
    {
      v8 = v7;
      atomic_compare_exchange_strong_explicit(v6 + 3, &v8, v7 + 1, memory_order_relaxed, memory_order_relaxed);
      v9 = v8 == v7;
      v7 = v8;
      if (v9)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_14:
    swift_once();
  }

LABEL_10:
  v12 = sub_1D2679904(v0[33]);

  v10 = v0[1];

  return v10(v12);
}

uint64_t sub_1D283C3B4()
{

  v1 = *(v0 + 272);
  *(v0 + 16) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D94B0);
  if (swift_dynamicCast())
  {
    v4 = *(v0 + 152);
    v3 = *(v0 + 160);
    v5 = *(v0 + 144);
    v6 = *(v0 + 104);
    v7 = *(v0 + 112);

    (*(v7 + 32))(v4, v3, v6);
    v8 = *(v7 + 16);
    v8(v5, v4, v6);
    v9 = (*(v7 + 88))(v5, v6);
    v10 = *(v0 + 144);
    v11 = *(v0 + 104);
    v12 = *(v0 + 112);
    if (v9 != *MEMORY[0x1E69DFCC8])
    {
      (*(v12 + 8))(*(v0 + 144), v11);
      goto LABEL_10;
    }

    v14 = *(v0 + 88);
    v13 = *(v0 + 96);
    v16 = *(v0 + 72);
    v15 = *(v0 + 80);
    (*(v12 + 96))(*(v0 + 144), v11);
    (*(v14 + 32))(v13, v10, v15);
    sub_1D2872A68();
    v17 = sub_1D2872A58();
    v18 = *(v17 - 8);
    if ((*(v18 + 48))(v16, 1, v17) == 1)
    {
      (*(*(v0 + 88) + 8))(*(v0 + 96), *(v0 + 80));
LABEL_5:
      sub_1D22BD238(*(v0 + 72), &qword_1EC6E3398);
LABEL_10:
      v30 = *(v0 + 152);
      v31 = *(v0 + 120);
      v32 = *(v0 + 104);
      sub_1D28725B8();
      v8(v31, v30, v32);
      v33 = sub_1D2873CA8();
      v34 = sub_1D2878A18();
      v35 = os_log_type_enabled(v33, v34);
      v36 = v8;
      v38 = *(v0 + 112);
      v37 = *(v0 + 120);
      v39 = *(v0 + 104);
      if (v35)
      {
        v102 = swift_slowAlloc();
        v104 = swift_slowAlloc();
        *v102 = 138412290;
        sub_1D28400D8(&qword_1EC6E33A0, MEMORY[0x1E69DFCE0]);
        swift_allocError();
        v36(v40, v37, v39);
        v41 = _swift_stdlib_bridgeErrorToNSError();
        v42 = *(v38 + 8);
        v42(v37, v39);
        *(v102 + 4) = v41;
        *v104 = v41;
        _os_log_impl(&dword_1D226E000, v33, v34, "EXTERNAL failed to generate with error: %@", v102, 0xCu);
        sub_1D22BD238(v104, qword_1EC6DA930);
        MEMORY[0x1D38A3520](v104, -1, -1);
        MEMORY[0x1D38A3520](v102, -1, -1);
      }

      else
      {

        v42 = *(v38 + 8);
        v42(v37, v39);
      }

      v43 = *(v0 + 152);
      v44 = *(v0 + 104);
      (*(*(v0 + 176) + 8))(*(v0 + 192), *(v0 + 168));
      sub_1D28400D8(&qword_1EC6E33A0, MEMORY[0x1E69DFCE0]);
      v45 = swift_allocError();
      v36(v46, v43, v44);
      sub_1D22BCE64();
      swift_allocError();
      *v47 = v45;
      *(v47 + 8) = 0;
      *(v47 + 16) = 16;
      swift_willThrow();
      v42(v43, v44);
      goto LABEL_14;
    }

    v50 = *(v0 + 64);
    sub_1D22BD1D0(*(v0 + 72), v50, &qword_1EC6E3398);
    v51 = (*(v18 + 88))(v50, v17);
    if (v51 == *MEMORY[0x1E69DFCD8])
    {
      v52 = *(v0 + 152);
      v53 = *(v0 + 136);
      v54 = *(v0 + 104);
      sub_1D28725B8();
      v8(v53, v52, v54);
      v55 = sub_1D2873CA8();
      v56 = sub_1D2878A18();
      v57 = os_log_type_enabled(v55, v56);
      v58 = *(v0 + 136);
      v59 = v8;
      v60 = *(v0 + 104);
      v61 = *(v0 + 112);
      v105 = v17;
      if (v57)
      {
        v106 = v59;
        v62 = swift_slowAlloc();
        v99 = swift_slowAlloc();
        *v62 = 138412290;
        sub_1D28400D8(&qword_1EC6E33A0, MEMORY[0x1E69DFCE0]);
        swift_allocError();
        v106(v63, v58, v60);
        v64 = _swift_stdlib_bridgeErrorToNSError();
        v103 = *(v61 + 8);
        v103(v58, v60);
        *(v62 + 4) = v64;
        *v99 = v64;
        _os_log_impl(&dword_1D226E000, v55, v56, "EXTERNAL failed to generate due to rate limit hit: %@", v62, 0xCu);
        sub_1D22BD238(v99, qword_1EC6DA930);
        MEMORY[0x1D38A3520](v99, -1, -1);
        MEMORY[0x1D38A3520](v62, -1, -1);
      }

      else
      {

        v103 = *(v61 + 8);
        v103(v58, v60);
      }

      v78 = *(v0 + 96);
      v96 = *(v0 + 104);
      v97 = *(v0 + 152);
      v79 = *(v0 + 88);
      v95 = *(v0 + 80);
      v98 = *(v0 + 64);
      v101 = *(v0 + 72);
      v80 = *(v0 + 48);
      v81 = *(v0 + 56);
      v82 = *(v0 + 40);
      (*(*(v0 + 176) + 8))(*(v0 + 208), *(v0 + 168));
      sub_1D2872A88();
      v83 = sub_1D274F788();
      v85 = v84;
      (*(v80 + 8))(v81, v82);
      sub_1D22BCE64();
      swift_allocError();
      *v86 = v83;
      *(v86 + 8) = v85;
      v87 = 112;
    }

    else
    {
      if (v51 != *MEMORY[0x1E69DFCD0])
      {
        v88 = *(v0 + 64);
        (*(*(v0 + 88) + 8))(*(v0 + 96), *(v0 + 80));
        (*(v18 + 8))(v88, v17);
        goto LABEL_5;
      }

      v65 = *(v0 + 152);
      v66 = *(v0 + 128);
      v67 = *(v0 + 104);
      sub_1D28725B8();
      v8(v66, v65, v67);
      v68 = sub_1D2873CA8();
      v69 = sub_1D2878A18();
      v70 = os_log_type_enabled(v68, v69);
      v71 = *(v0 + 128);
      v72 = v8;
      v73 = *(v0 + 104);
      v74 = *(v0 + 112);
      v105 = v17;
      if (v70)
      {
        v107 = v72;
        v75 = swift_slowAlloc();
        v100 = swift_slowAlloc();
        *v75 = 138412290;
        sub_1D28400D8(&qword_1EC6E33A0, MEMORY[0x1E69DFCE0]);
        swift_allocError();
        v107(v76, v71, v73);
        v77 = _swift_stdlib_bridgeErrorToNSError();
        v103 = *(v74 + 8);
        v103(v71, v73);
        *(v75 + 4) = v77;
        *v100 = v77;
        _os_log_impl(&dword_1D226E000, v68, v69, "EXTERNAL failed to generate due to network failure: %@", v75, 0xCu);
        sub_1D22BD238(v100, qword_1EC6DA930);
        MEMORY[0x1D38A3520](v100, -1, -1);
        MEMORY[0x1D38A3520](v75, -1, -1);
      }

      else
      {

        v103 = *(v74 + 8);
        v103(v71, v73);
      }

      v78 = *(v0 + 96);
      v96 = *(v0 + 104);
      v97 = *(v0 + 152);
      v79 = *(v0 + 88);
      v95 = *(v0 + 80);
      v98 = *(v0 + 64);
      v101 = *(v0 + 72);
      v89 = *(v0 + 48);
      v90 = *(v0 + 56);
      v91 = *(v0 + 40);
      (*(*(v0 + 176) + 8))(*(v0 + 200), *(v0 + 168));
      sub_1D2872A88();
      v92 = sub_1D274F788();
      v94 = v93;
      (*(v89 + 8))(v90, v91);
      sub_1D22BCE64();
      swift_allocError();
      *v86 = v92;
      *(v86 + 8) = v94;
      v87 = 0x80;
    }

    *(v86 + 16) = v87;
    swift_willThrow();
    (*(v79 + 8))(v78, v95);
    v103(v97, v96);
    (*(v18 + 8))(v98, v105);
    sub_1D22BD238(v101, &qword_1EC6E3398);
LABEL_14:

    goto LABEL_15;
  }

  sub_1D28725B8();
  v19 = v1;
  v20 = sub_1D2873CA8();
  v21 = sub_1D2878A18();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    *v22 = 138412290;
    v24 = v1;
    v25 = _swift_stdlib_bridgeErrorToNSError();
    *(v22 + 4) = v25;
    *v23 = v25;
    _os_log_impl(&dword_1D226E000, v20, v21, "EXTERNAL failed to generate with error: %@", v22, 0xCu);
    sub_1D22BD238(v23, qword_1EC6DA930);
    MEMORY[0x1D38A3520](v23, -1, -1);
    MEMORY[0x1D38A3520](v22, -1, -1);
  }

  v27 = *(v0 + 176);
  v26 = *(v0 + 184);
  v28 = *(v0 + 168);

  (*(v27 + 8))(v26, v28);
  sub_1D22BCE64();
  swift_allocError();
  *v29 = v1;
  *(v29 + 8) = 0;
  *(v29 + 16) = 16;
  swift_willThrow();
LABEL_15:

  v48 = *(v0 + 8);

  return v48();
}

uint64_t sub_1D283D04C()
{
  v0 = sub_1D2873CB8();
  MEMORY[0x1EEE9AC00](v0);
  sub_1D283D24C(1);
}

uint64_t sub_1D283D24C(char a1)
{
  v3 = v1;
  v5 = sub_1D2873298();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v18 - v10;
  v12 = *(*(v1 + OBJC_IVAR____TtCV23ImagePlaygroundInternal15ImageGeneration30ExternalProviderImageGenerator_providerInfoManager) + 40);
  if (!v12)
  {
    sub_1D22BCE64();
    swift_allocError();
    *v14 = xmmword_1D28AB710;
    *(v14 + 16) = -96;
    swift_willThrow();
    return v12;
  }

  sub_1D2870F78();
  sub_1D2873228();

  (*(v6 + 32))(v11, v8, v5);
  if ((a1 & 1) == 0)
  {
    v12 = *(v3 + OBJC_IVAR____TtCV23ImagePlaygroundInternal15ImageGeneration30ExternalProviderImageGenerator_session);
    if (v12)
    {
      goto LABEL_8;
    }
  }

  v12 = sub_1D28728E8();
  v13 = sub_1D28728D8();
  if (!v2)
  {
    *(v3 + OBJC_IVAR____TtCV23ImagePlaygroundInternal15ImageGeneration30ExternalProviderImageGenerator_session) = v13;

    v12 = *(v3 + OBJC_IVAR____TtCV23ImagePlaygroundInternal15ImageGeneration30ExternalProviderImageGenerator_session);
    if (!v12)
    {
      sub_1D22BCE64();
      swift_allocError();
      *v17 = xmmword_1D28AB710;
      *(v17 + 16) = -96;
      swift_willThrow();
      goto LABEL_5;
    }

LABEL_8:
    v15 = *(v6 + 8);
    sub_1D2870F78();
    v15(v11, v5);
    return v12;
  }

LABEL_5:
  (*(v6 + 8))(v11, v5);
  return v12;
}

void sub_1D283D490()
{
  v1 = sub_1D2873298();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = v15 - v6;
  if (qword_1ED8A4928 != -1)
  {
    swift_once();
  }

  v8 = off_1ED8A4930;
  if (sub_1D23D0268())
  {
    v9 = v8[3];
    sub_1D23D0370();
    if (v9 >= v10)
    {
      if (*(*(v0 + OBJC_IVAR____TtCV23ImagePlaygroundInternal15ImageGeneration30ExternalProviderImageGenerator_providerInfoManager) + 40))
      {
        sub_1D2870F78();
        sub_1D2873228();

        (*(v2 + 32))(v7, v4, v1);
        v11 = sub_1D274F788();
        v13 = v12;
        sub_1D22BCE64();
        swift_allocError();
        *v14 = v11;
        *(v14 + 8) = v13;
        *(v14 + 16) = 112;
        swift_willThrow();
        (*(v2 + 8))(v7, v1);
      }
    }
  }
}

void sub_1D283D664()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA4A0);
  v42 = *(v2 - 8);
  v43 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v38 = &v37 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6E3360);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v37 = &v37 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E3388);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v41 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v37 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6E3378);
  v13 = MEMORY[0x1EEE9AC00](v12 - 8);
  v39 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v37 - v15;
  v17 = OBJC_IVAR____TtCV23ImagePlaygroundInternal15ImageGeneration30ExternalProviderImageGenerator_progressTimer;
  if (*(v0 + OBJC_IVAR____TtCV23ImagePlaygroundInternal15ImageGeneration30ExternalProviderImageGenerator_progressTimer))
  {
    swift_getObjectType();
    sub_1D2870F78();
    sub_1D2878B88();
  }

  *(v0 + v17) = 0;

  v18 = OBJC_IVAR____TtCV23ImagePlaygroundInternal15ImageGeneration30ExternalProviderImageGenerator_backgroundTaskContinuation;
  swift_beginAccess();
  sub_1D22BD1D0(v0 + v18, v16, &unk_1EC6E3378);
  v40 = v5;
  v19 = *(v5 + 48);
  v20 = v4;
  v21 = v19(v16, 1, v4);
  sub_1D22BD238(v16, &unk_1EC6E3378);
  if (v21 == 1 && (v22 = OBJC_IVAR____TtCV23ImagePlaygroundInternal15ImageGeneration30ExternalProviderImageGenerator_currentGenerationTaskContinuation, swift_beginAccess(), sub_1D22BD1D0(v0 + v22, v11, &qword_1EC6E3388), LODWORD(v22) = (*(v42 + 48))(v11, 1, v43), sub_1D22BD238(v11, &qword_1EC6E3388), v22 == 1))
  {
    sub_1D2838950();
    *(v0 + OBJC_IVAR____TtCV23ImagePlaygroundInternal15ImageGeneration30ExternalProviderImageGenerator_shouldCancelUpcomingGeneration) = 1;
  }

  else
  {
    v23 = v20;
    v24 = v19((v0 + v18), 1, v20);
    v25 = v40;
    if (!v24)
    {
      v26 = v37;
      (*(v40 + 16))(v37, v1 + v18, v23);
      sub_1D22BCE64();
      v27 = swift_allocError();
      *v28 = xmmword_1D28AB700;
      *(v28 + 16) = -96;
      v45 = v27;
      sub_1D2878508();
      (*(v25 + 8))(v26, v23);
    }

    v29 = v39;
    (*(v25 + 56))(v39, 1, 1, v23);
    swift_beginAccess();
    sub_1D22BD298(v29, v1 + v18, &unk_1EC6E3378);
    swift_endAccess();
    v30 = OBJC_IVAR____TtCV23ImagePlaygroundInternal15ImageGeneration30ExternalProviderImageGenerator_currentGenerationTaskContinuation;
    swift_beginAccess();
    v32 = v42;
    v31 = v43;
    if (!(*(v42 + 48))(v1 + v30, 1, v43))
    {
      v33 = v38;
      (*(v32 + 16))(v38, v1 + v30, v31);
      sub_1D22BCE64();
      v34 = swift_allocError();
      *v35 = xmmword_1D28AB700;
      *(v35 + 16) = -96;
      v44 = v34;
      sub_1D2878508();
      (*(v32 + 8))(v33, v31);
    }

    v36 = v41;
    (*(v32 + 56))(v41, 1, 1, v31);
    swift_beginAccess();
    sub_1D22BD298(v36, v1 + v30, &qword_1EC6E3388);
    swift_endAccess();
    sub_1D2838950();
  }
}

uint64_t sub_1D283DC28(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6E3378);
  v3 = MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1EEE9AC00](v3);
  v8 = &v30 - v7;
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v30 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6E3360);
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v30 - v16;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v19 = result;
    objc_opt_self();
    v20 = swift_dynamicCastObjCClass();
    if (v20)
    {
      v21 = v20;
      v31 = v5;
      v22 = a1;
      sub_1D283E12C(v21);
      v23 = swift_allocObject();
      swift_weakInit();
      aBlock[4] = sub_1D28400B8;
      aBlock[5] = v23;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1D23DFBA8;
      aBlock[3] = &block_descriptor_58;
      v24 = _Block_copy(aBlock);
      v25 = v22;

      [v21 setExpirationHandler_];
      _Block_release(v24);

      v26 = OBJC_IVAR____TtCV23ImagePlaygroundInternal15ImageGeneration30ExternalProviderImageGenerator_backgroundTaskContinuation;
      swift_beginAccess();
      sub_1D22BD1D0(v19 + v26, v8, &unk_1EC6E3378);
      if ((*(v12 + 48))(v8, 1, v11) == 1)
      {

        return sub_1D22BD238(v8, &unk_1EC6E3378);
      }

      else
      {
        (*(v12 + 32))(v15, v8, v11);
        v28 = v31;
        (*(v12 + 56))(v31, 1, 1, v11);
        swift_beginAccess();
        v29 = v25;
        sub_1D22BD298(v28, v19 + v26, &unk_1EC6E3378);
        swift_endAccess();
        v33 = v21;
        sub_1D2878518();

        return (*(v12 + 8))(v15, v11);
      }
    }

    else
    {
      v27 = OBJC_IVAR____TtCV23ImagePlaygroundInternal15ImageGeneration30ExternalProviderImageGenerator_backgroundTaskContinuation;
      swift_beginAccess();
      sub_1D22BD1D0(v19 + v27, v10, &unk_1EC6E3378);
      if ((*(v12 + 48))(v10, 1, v11) == 1)
      {

        return sub_1D22BD238(v10, &unk_1EC6E3378);
      }

      else
      {
        (*(v12 + 32))(v17, v10, v11);
        (*(v12 + 56))(v5, 1, 1, v11);
        swift_beginAccess();
        sub_1D22BD298(v5, v19 + v27, &unk_1EC6E3378);
        swift_endAccess();
        v33 = 0;
        sub_1D2878518();

        return (*(v12 + 8))(v17, v11);
      }
    }
  }

  return result;
}

void sub_1D283E12C(void *a1)
{
  v2 = v1;
  v4 = sub_1D2877B38();
  v65 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v64 = (&v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_1D2877BA8();
  v62 = *(v6 - 8);
  v63 = v6;
  v7 = MEMORY[0x1EEE9AC00](v6);
  v60 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v61 = &v51 - v9;
  v10 = sub_1D2877B48();
  v58 = *(v10 - 8);
  v59 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v56 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = sub_1D2877B68();
  v55 = *(v57 - 8);
  MEMORY[0x1EEE9AC00](v57);
  v54 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1D2878AF8();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v51 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1D2872008();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v51 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D2871EC8();
  v21 = sub_1D2777B18(v20);
  (*(v18 + 8))(v20, v17);
  if (qword_1ED8A4928 != -1)
  {
    swift_once();
  }

  sub_1D23CDDAC();
  v23 = v22;
  sub_1D23CE124();
  if (__OFADD__(v23, v24))
  {
    __break(1u);
    goto LABEL_12;
  }

  v25 = v21 + (v23 + v24);
  v26 = [a1 progress];
  v27 = v25 * 10.0;
  if (COERCE__INT64(fabs(v25 * 10.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (v27 <= -9.22337204e18)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (v27 >= 9.22337204e18)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v28 = v26;
  [v26 setTotalUnitCount_];

  v29 = [a1 progress];
  [v29 setCompletedUnitCount_];

  v30 = [a1 progress];
  v31 = [v30 totalUnitCount];

  v32 = v31 * 0.8;
  if (COERCE__INT64(fabs(v32)) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v32 <= -9.22337204e18)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v32 < 9.22337204e18)
  {
    v53 = v4;
    v33 = v32;
    sub_1D22BCFD0(0, &unk_1ED89CD20);
    sub_1D22BCFD0(0, &qword_1ED89CD50);
    v34 = a1;
    v35 = sub_1D2878AB8();
    aBlock[0] = MEMORY[0x1E69E7CC0];
    sub_1D28400D8(&unk_1ED89CD30, MEMORY[0x1E69E80B0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6E10E0);
    sub_1D256F450();
    v52 = v2;
    sub_1D2879088();
    v36 = sub_1D2878B08();

    (*(v14 + 8))(v16, v13);
    ObjectType = swift_getObjectType();
    v38 = swift_allocObject();
    *(v38 + 16) = v34;
    *(v38 + 24) = v33;
    aBlock[4] = sub_1D2840120;
    aBlock[5] = v38;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1D23DFBA8;
    aBlock[3] = &block_descriptor_34_0;
    v39 = _Block_copy(aBlock);
    v40 = v34;
    v41 = v54;
    sub_1D27A17E4();
    v42 = v56;
    sub_1D27A17E8();
    sub_1D2878B78();
    _Block_release(v39);
    (*(v58 + 8))(v42, v59);
    (*(v55 + 8))(v41, v57);

    v43 = v60;
    sub_1D2877B88();
    v44 = v61;
    sub_1D2877BC8();
    v45 = v63;
    v46 = *(v62 + 8);
    v46(v43, v63);
    v48 = v64;
    v47 = v65;
    *v64 = 0;
    v49 = v53;
    (*(v47 + 104))(v48, *MEMORY[0x1E69E7F28], v53);
    MEMORY[0x1D38A16F0](v44, v48, ObjectType, 0.1);
    (*(v47 + 8))(v48, v49);
    v46(v44, v45);
    sub_1D2878B98();

    type metadata accessor for TimerWrapper();
    v50 = swift_allocObject();
    *(v50 + 16) = v36;
    *(v52 + OBJC_IVAR____TtCV23ImagePlaygroundInternal15ImageGeneration30ExternalProviderImageGenerator_progressTimer) = v50;

    return;
  }

LABEL_17:
  __break(1u);
}

uint64_t sub_1D283E938()
{
  v0 = sub_1D2873CB8();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    if (*(Strong + OBJC_IVAR____TtCV23ImagePlaygroundInternal15ImageGeneration30ExternalProviderImageGenerator_progressTimer))
    {
      sub_1D2870F78();

      swift_getObjectType();
      sub_1D2878B88();
    }
  }

  swift_beginAccess();
  v5 = swift_weakLoadStrong();
  if (v5)
  {
    *(v5 + OBJC_IVAR____TtCV23ImagePlaygroundInternal15ImageGeneration30ExternalProviderImageGenerator_progressTimer) = 0;
  }

  sub_1D28725B8();
  v6 = sub_1D2873CA8();
  v7 = sub_1D2878A18();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_1D226E000, v6, v7, "EXTERNAL background task expired, canceling generation and UI flow", v8, 2u);
    MEMORY[0x1D38A3520](v8, -1, -1);
  }

  (*(v1 + 8))(v3, v0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1D283D664();
  }

  return result;
}

void sub_1D283EB44(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D2873CB8();
  v11[0] = *(v4 - 8);
  v11[1] = v4;
  MEMORY[0x1EEE9AC00](v4);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6E3378);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v11 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6E3360);
  v9 = *(v8 - 8);
  (*(v9 + 16))(v7, a1, v8);
  (*(v9 + 56))(v7, 0, 1, v8);
  v10 = OBJC_IVAR____TtCV23ImagePlaygroundInternal15ImageGeneration30ExternalProviderImageGenerator_backgroundTaskContinuation;
  swift_beginAccess();
  sub_1D22BD298(v7, a2 + v10, &unk_1EC6E3378);
  swift_endAccess();
  sub_1D283EEB0();
}

void sub_1D283EEB0()
{
  v32[1] = *MEMORY[0x1E69E9840];
  v2 = sub_1D2878028();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v3 = sub_1D28718F8();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v31 = v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D2878048();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = sub_1D2873298();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v27 - v12;
  if (*(*(v0 + OBJC_IVAR____TtCV23ImagePlaygroundInternal15ImageGeneration30ExternalProviderImageGenerator_providerInfoManager) + 40))
  {
    v27[0] = v1;
    v14 = v11;
    sub_1D2870F78();
    sub_1D2873228();

    v29 = v7;
    v30 = v14;
    (*(v7 + 32))(v13, v9, v14);
    sub_1D274F788();
    v15 = *(v0 + OBJC_IVAR____TtCV23ImagePlaygroundInternal15ImageGeneration30ExternalProviderImageGenerator_backgroundTaskIdentifier);
    v27[1] = *(v0 + OBJC_IVAR____TtCV23ImagePlaygroundInternal15ImageGeneration30ExternalProviderImageGenerator_backgroundTaskIdentifier + 8);
    v27[2] = v15;
    sub_1D2877FE8();
    v28 = v13;
    if (qword_1ED89E0E8 != -1)
    {
      swift_once();
    }

    v16 = qword_1ED8B0058;
    sub_1D28718C8();
    v17 = v16;
    sub_1D28780E8();
    sub_1D2878018();
    sub_1D2878008();
    sub_1D2877FF8();

    sub_1D2878008();
    sub_1D2878038();
    sub_1D28718C8();
    sub_1D28780E8();
    v18 = objc_allocWithZone(MEMORY[0x1E695A9C0]);
    v19 = sub_1D2878068();
    v20 = sub_1D2878068();

    v21 = sub_1D2878068();

    v22 = [v18 initWithIdentifier:v19 title:v20 subtitle:v21];

    [v22 setStrategy_];
    v23 = [objc_opt_self() sharedScheduler];
    v32[0] = 0;
    LODWORD(v21) = [v23 submitTaskRequest:v22 error:v32];

    if (v21)
    {
      v24 = *(v29 + 8);
      v25 = v32[0];
      v24(v28, v30);
    }

    else
    {
      v26 = v32[0];
      sub_1D28714B8();

      swift_willThrow();
      (*(v29 + 8))(v28, v30);
    }
  }
}

void sub_1D283F394(void *a1, uint64_t a2)
{
  v4 = [a1 progress];
  v5 = [v4 completedUnitCount];

  v6 = [a1 progress];
  v7 = [v6 totalUnitCount];

  if (v5 >= a2)
  {
    v10 = v7 - v5;
    if (__OFSUB__(v7, v5))
    {
      __break(1u);
    }

    else
    {
      if (v10 < 1)
      {
        return;
      }

      v11 = v10 * 0.05;
      if (v11 != INFINITY)
      {
        if (v11 > -9.22337204e18)
        {
          if (v11 < 9.22337204e18)
          {
            if (v11 >= 1)
            {
              v12 = 1;
            }

            else
            {
              v12 = v11;
            }

            v8 = [a1 progress];
            v9 = &v5[v12];
            if (!__OFADD__(v5, v12))
            {
              goto LABEL_12;
            }

LABEL_20:
            __break(1u);
            return;
          }

LABEL_19:
          __break(1u);
          goto LABEL_20;
        }

LABEL_18:
        __break(1u);
        goto LABEL_19;
      }
    }

    __break(1u);
    goto LABEL_18;
  }

  v8 = [a1 progress];
  v9 = v5 + 1;
LABEL_12:
  v13 = v8;
  [v8 setCompletedUnitCount_];
}

uint64_t sub_1D283F524()
{

  sub_1D22BD238(v0 + OBJC_IVAR____TtCV23ImagePlaygroundInternal15ImageGeneration30ExternalProviderImageGenerator_currentGenerationTaskContinuation, &qword_1EC6E3388);

  sub_1D22BD238(v0 + OBJC_IVAR____TtCV23ImagePlaygroundInternal15ImageGeneration30ExternalProviderImageGenerator_externalConfiguration, &qword_1EC6E3390);

  sub_1D22BD238(v0 + OBJC_IVAR____TtCV23ImagePlaygroundInternal15ImageGeneration30ExternalProviderImageGenerator_backgroundTaskContinuation, &unk_1EC6E3378);

  return v0;
}

uint64_t sub_1D283F610()
{
  sub_1D283F524();

  return swift_deallocClassInstance();
}

uint64_t _s30ExternalProviderImageGeneratorCMa()
{
  result = qword_1ED8A63B0;
  if (!qword_1ED8A63B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D283F6BC()
{
  sub_1D283F884(319, &qword_1ED89CE60, &qword_1EC6DA4A0);
  if (v0 <= 0x3F)
  {
    sub_1D283F82C();
    if (v1 <= 0x3F)
    {
      sub_1D283F884(319, &qword_1ED89CE58, &unk_1EC6E3360);
      if (v2 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_1D283F82C()
{
  if (!qword_1ED8A6BA0)
  {
    sub_1D2873728();
    v0 = sub_1D2878F18();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED8A6BA0);
    }
  }
}

void sub_1D283F884(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3);
    v4 = sub_1D2878F18();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1D283F914(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_1D23891A0;

  return sub_1D283738C(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_1D283F9EC(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  sub_1D2878568();
  v2[4] = sub_1D2878558();
  v4 = sub_1D28784F8();

  return MEMORY[0x1EEE6DFA0](sub_1D283FA84, v4, v3);
}

uint64_t sub_1D283FA84()
{
  v1 = v0[3];

  v2 = *(v1 + *(type metadata accessor for ImageGeneration.PreviewImage(0) + 28));
  if (*(v2 + 16))
  {
    v3 = v0[2];
    v4 = *(type metadata accessor for PlaygroundImage() - 8);
    sub_1D239A330(v2 + ((*(v4 + 80) + 32) & ~*(v4 + 80)), v3);
  }

  else
  {
    sub_1D239AE8C();
    swift_allocError();
    swift_willThrow();
  }

  v5 = v0[1];

  return v5();
}

uint64_t sub_1D283FBCC(uint64_t a1, char a2)
{
  *(v3 + 56) = a2;
  *(v3 + 16) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8E60);
  v4 = swift_task_alloc();
  v5 = *v2;
  *(v3 + 24) = v4;
  *(v3 + 32) = v5;
  *(v3 + 40) = sub_1D2878568();
  *(v3 + 48) = sub_1D2878558();
  v7 = sub_1D28784F8();

  return MEMORY[0x1EEE6DFA0](sub_1D283FCA8, v7, v6);
}

uint64_t sub_1D283FCA8()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = *(v0 + 56);
  v4 = *(v0 + 16);

  v5 = sub_1D28785F8();
  (*(*(v5 - 8) + 56))(v1, 1, 1, v5);
  sub_1D2870F78();
  sub_1D2870F78();
  v6 = sub_1D2878558();
  v7 = swift_allocObject();
  v8 = MEMORY[0x1E69E85E0];
  *(v7 + 16) = v6;
  *(v7 + 24) = v8;
  *(v7 + 32) = v3;
  *(v7 + 40) = v4;
  *(v7 + 48) = v2;
  sub_1D22AE01C(0, 0, v1, &unk_1D28AB878, v7);

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_1D283FDD8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v8 = *(v1 + 40);
  v7 = *(v1 + 48);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1D22BC8FC;

  return sub_1D2833AF0(a1, v4, v5, v6, v8, v7);
}

uint64_t sub_1D283FEBC(uint64_t a1)
{
  v3 = *(sub_1D2873C28() - 8);
  v4 = (*(v3 + 80) + 49) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_1D2873728();
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + 32);
  v9 = *(v1 + 40);
  v10 = *(v1 + v5);
  v11 = *(v1 + 48);
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_1D22BDFF8;

  return sub_1D28394E0(a1, v6, v7, v8, v9, v11, v1 + v4, v10);
}

void sub_1D284004C(id a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

uint64_t sub_1D2840058(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t block_copy_helper_58(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1D2870F78();
}

uint64_t sub_1D28400D8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for BubbleActionButtonStyle()
{
  result = qword_1ED8A09A8;
  if (!qword_1ED8A09A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D28401A4()
{
  sub_1D24BFA5C();
  if (v0 <= 0x3F)
  {
    sub_1D26AA228(319, &qword_1ED89E028, type metadata accessor for ObservableDebugSettings);
    if (v1 <= 0x3F)
    {
      sub_1D26AA228(319, &qword_1ED89DFE8, MEMORY[0x1E697DBD0]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1D28402AC@<X0>(uint64_t a1@<X8>)
{
  v55 = a1;
  v57 = type metadata accessor for BubbleActionButtonStyle() - 8;
  MEMORY[0x1EEE9AC00](v57);
  v58 = &v49 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_1D2874E88();
  v53 = *(v2 - 8);
  v54 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v52 = &v49 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9D40);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v49 - v5;
  v51 = sub_1D28764E8();
  v49 = *(v51 - 8);
  MEMORY[0x1EEE9AC00](v51);
  v8 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1D2875718();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1D2875F28();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E33D8);
  MEMORY[0x1EEE9AC00](v50);
  v18 = &v49 - v17;
  sub_1D2875F38();
  sub_1D2875708();
  sub_1D2841BCC(&qword_1ED89D398, MEMORY[0x1E697C8D0]);
  sub_1D2841BCC(&qword_1ED89D6B0, MEMORY[0x1E697C4E8]);
  sub_1D2876768();
  (*(v10 + 8))(v12, v9);
  (*(v14 + 8))(v16, v13);
  v19 = v49;
  v20 = v51;
  (*(v49 + 104))(v8, *MEMORY[0x1E6980EF8], v51);
  v21 = *MEMORY[0x1E6980E28];
  v22 = sub_1D28763F8();
  v23 = *(v22 - 8);
  (*(v23 + 104))(v6, v21, v22);
  (*(v23 + 56))(v6, 0, 1, v22);
  sub_1D2876408();
  v24 = sub_1D2876458();
  sub_1D22BD238(v6, &qword_1EC6D9D40);
  (*(v19 + 8))(v8, v20);
  KeyPath = swift_getKeyPath();
  v26 = &v18[*(v50 + 36)];
  *v26 = KeyPath;
  v26[1] = v24;
  v28 = v52;
  v27 = v53;
  v29 = v54;
  (*(v53 + 104))(v52, *MEMORY[0x1E697E6F8], v54);
  sub_1D2841738();
  v30 = v55;
  sub_1D28769A8();
  (*(v27 + 8))(v28, v29);
  sub_1D22A35E8(v18);
  v31 = v56;
  v32 = sub_1D28409B0();
  v33 = swift_getKeyPath();
  v34 = (v30 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E33E0) + 36));
  v35 = v30;
  *v34 = v33;
  v34[1] = v32;
  sub_1D2877848();
  sub_1D28748C8();
  v36 = (v30 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E33E8) + 36));
  v37 = v60;
  *v36 = v59;
  v36[1] = v37;
  v36[2] = v61;
  v38 = v58;
  sub_1D28418A0(v31, v58);
  v39 = sub_1D2877848();
  v41 = v40;
  v42 = v35 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E33F0) + 36);
  sub_1D2840B48(v42);
  v43 = (v42 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E33F8) + 36));
  *v43 = v39;
  v43[1] = v41;
  sub_1D2841904(v38);
  v44 = (v35 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E3400) + 36));
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9E38);
  v46 = *(v45 + 36);
  v47 = sub_1D2874518();
  result = (*(*(v47 - 8) + 56))(&v44[v46], 1, 1, v47);
  v44[*(v45 + 40)] = 0;
  *v44 = 1;
  return result;
}

uint64_t sub_1D28409B0()
{
  v1 = sub_1D2875628();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  if (*(v0 + 8) != 1)
  {
    sub_1D2870F78();
    sub_1D2878A28();
    v7 = sub_1D28762E8();
    sub_1D2873BE8();

    sub_1D2875618();
    swift_getAtKeyPath();
    sub_1D22EE66C(v5, 0);
    (*(v2 + 8))(v4, v1);
    if (v9)
    {
      goto LABEL_3;
    }

    return sub_1D28770A8();
  }

  v9 = *v0;
  if (!v5)
  {
    return sub_1D28770A8();
  }

LABEL_3:
  if (qword_1ED89D260 != -1)
  {
    swift_once();
  }

  return sub_1D2870F78();
}

uint64_t sub_1D2840B48@<X0>(uint64_t a1@<X8>)
{
  v55 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E3408);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v43 - v3;
  v5 = sub_1D2874438();
  v51 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v47 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v46 = &v43 - v8;
  v9 = sub_1D2877988();
  v49 = *(v9 - 8);
  v50 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v45 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E3410);
  MEMORY[0x1EEE9AC00](v44);
  v52 = &v43 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E3418);
  MEMORY[0x1EEE9AC00](v12);
  v48 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v53 = &v43 - v15;
  v16 = sub_1D2875628();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v43 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *v1;
  v54 = v1;
  if (*(v1 + 8) == 1)
  {
    v21 = v20;
    v56 = v20;
  }

  else
  {
    sub_1D2870F78();
    sub_1D2878A28();
    v22 = sub_1D28762E8();
    sub_1D2873BE8();

    sub_1D2875618();
    swift_getAtKeyPath();
    sub_1D22EE66C(v20, 0);
    (*(v17 + 8))(v19, v16);
    v21 = v56;
  }

  v23 = sub_1D28411F4();
  v24 = v23;
  if (v21)
  {
    *v4 = v23;
    *(v4 + 4) = 256;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E3420);
    sub_1D2841960();
    sub_1D22BB9D8(&qword_1ED89E090, &qword_1EC6E3420);
    return sub_1D2875AF8();
  }

  else
  {
    type metadata accessor for BubbleActionButtonStyle();
    v26 = v46;
    sub_1D24CC0E8(v46);
    v27 = v51;
    v28 = v47;
    (*(v51 + 104))(v47, *MEMORY[0x1E697DBA8], v5);
    v29 = sub_1D2874428();
    v30 = *(v27 + 8);
    v30(v28, v5);
    v30(v26, v5);
    v32 = v49;
    v31 = v50;
    v33 = MEMORY[0x1E6981E00];
    if ((v29 & 1) == 0)
    {
      v33 = MEMORY[0x1E6981E10];
    }

    v34 = v45;
    (*(v49 + 104))(v45, *v33, v50);
    v35 = v52;
    (*(v32 + 32))(&v52[*(v44 + 36)], v34, v31);
    *v35 = v24;
    *(v35 + 8) = 256;
    *(v35 + 16) = 0x3FE999999999999ALL;
    v36 = v48;
    v37 = &v48[*(v12 + 36)];
    sub_1D28777A8();
    *&v37[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DD650) + 56)] = 256;
    v38 = sub_1D2877848();
    v40 = v39;
    v41 = &v37[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E3450) + 36)];
    *v41 = v38;
    v41[1] = v40;
    sub_1D22EC9BC(v35, v36, &qword_1EC6E3410);
    v42 = v53;
    sub_1D22EC9BC(v36, v53, &qword_1EC6E3418);
    sub_1D2841B5C(v42, v4);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E3420);
    sub_1D2841960();
    sub_1D22BB9D8(&qword_1ED89E090, &qword_1EC6E3420);
    sub_1D2875AF8();
    return sub_1D22BD238(v42, &qword_1EC6E3418);
  }
}

uint64_t sub_1D28411F4()
{
  v1 = sub_1D2873998();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D2875628();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v0;
  if (*(v0 + 8) == 1)
  {
    v14 = *v0;
    if (v9)
    {
LABEL_3:
      if (qword_1ED8A6B90 != -1)
      {
        swift_once();
      }

      v10 = __swift_project_value_buffer(v1, qword_1ED8B0318);
      (*(v2 + 16))(v4, v10, v1);
      v13 = sub_1D2877108();
      return sub_1D28748D8();
    }
  }

  else
  {
    sub_1D2870F78();
    sub_1D2878A28();
    v11 = sub_1D28762E8();
    sub_1D2873BE8();

    sub_1D2875618();
    swift_getAtKeyPath();
    sub_1D22EE66C(v9, 0);
    (*(v6 + 8))(v8, v5);
    if (v14)
    {
      goto LABEL_3;
    }
  }

  if (qword_1EC6D8D78 != -1)
  {
    swift_once();
  }

  v13 = qword_1EC6E3FD0;
  sub_1D2870F78();
  return sub_1D28748D8();
}

uint64_t sub_1D2841498@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1D2875E08();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1D2875F28();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D2875F38();
  sub_1D2875DF8();
  sub_1D2841BCC(&qword_1ED89D398, MEMORY[0x1E697C8D0]);
  sub_1D2841BCC(&qword_1ED89D3D8, MEMORY[0x1E697C848]);
  sub_1D2876768();
  (*(v3 + 8))(v5, v2);
  (*(v7 + 8))(v9, v6);
  v10 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E3458) + 36));
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D90B0);
  v12 = *(v11 + 36);
  v13 = sub_1D2874518();
  result = (*(*(v13 - 8) + 56))(&v10[v12], 1, 1, v13);
  *&v10[*(v11 + 40)] = 0;
  *v10 = 1;
  return result;
}

unint64_t sub_1D2841738()
{
  result = qword_1ED89DCD8;
  if (!qword_1ED89DCD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E33D8);
    sub_1D2875F28();
    sub_1D2875718();
    sub_1D2841BCC(&qword_1ED89D398, MEMORY[0x1E697C8D0]);
    sub_1D2841BCC(&qword_1ED89D6B0, MEMORY[0x1E697C4E8]);
    swift_getOpaqueTypeConformance2();
    sub_1D22BB9D8(&qword_1ED89D2E8, &unk_1EC6E1030);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89DCD8);
  }

  return result;
}

uint64_t sub_1D28418A0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BubbleActionButtonStyle();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D2841904(uint64_t a1)
{
  v2 = type metadata accessor for BubbleActionButtonStyle();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1D2841960()
{
  result = qword_1EC6E3428;
  if (!qword_1EC6E3428)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E3418);
    sub_1D2841A18();
    sub_1D22BB9D8(&qword_1EC6E3448, &qword_1EC6E3450);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E3428);
  }

  return result;
}

unint64_t sub_1D2841A18()
{
  result = qword_1EC6E3430;
  if (!qword_1EC6E3430)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E3410);
    sub_1D2841AA4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E3430);
  }

  return result;
}

unint64_t sub_1D2841AA4()
{
  result = qword_1EC6E3438;
  if (!qword_1EC6E3438)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E3440);
    sub_1D22BB9D8(&qword_1ED89E090, &qword_1EC6E3420);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E3438);
  }

  return result;
}

uint64_t sub_1D2841B5C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E3418);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D2841BCC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1D2841C14()
{
  result = qword_1EC6E3460;
  if (!qword_1EC6E3460)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E3400);
    sub_1D2841CCC();
    sub_1D22BB9D8(qword_1ED8A4310, &qword_1EC6D9E38);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E3460);
  }

  return result;
}

unint64_t sub_1D2841CCC()
{
  result = qword_1EC6E3468;
  if (!qword_1EC6E3468)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E33F0);
    sub_1D2841D84();
    sub_1D22BB9D8(&qword_1EC6E3470, &qword_1EC6E33F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E3468);
  }

  return result;
}

unint64_t sub_1D2841D84()
{
  result = qword_1ED89DA40;
  if (!qword_1ED89DA40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E33E8);
    sub_1D2841E10();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89DA40);
  }

  return result;
}

unint64_t sub_1D2841E10()
{
  result = qword_1ED89DC90;
  if (!qword_1ED89DC90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E33E0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E33D8);
    sub_1D2841738();
    swift_getOpaqueTypeConformance2();
    sub_1D22BB9D8(&qword_1ED89D2D8, &qword_1EC6DA278);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89DC90);
  }

  return result;
}

unint64_t sub_1D2841F04()
{
  result = qword_1EC6E3478;
  if (!qword_1EC6E3478)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E3458);
    sub_1D2875F28();
    sub_1D2875E08();
    sub_1D2841BCC(&qword_1ED89D398, MEMORY[0x1E697C8D0]);
    sub_1D2841BCC(&qword_1ED89D3D8, MEMORY[0x1E697C848]);
    swift_getOpaqueTypeConformance2();
    sub_1D22BB9D8(&qword_1ED8A4300, &qword_1EC6D90B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E3478);
  }

  return result;
}

uint64_t sub_1D284206C()
{
  sub_1D25CD71C();

  return sub_1D2875638();
}

ImagePlaygroundInternal::CreationViewStyle_optional __swiftcall CreationViewStyle.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 7;
  if (rawValue < 7)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

unint64_t sub_1D28420EC()
{
  result = qword_1EC6E3480;
  if (!qword_1EC6E3480)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E3488);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E3480);
  }

  return result;
}

uint64_t sub_1D2842180(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1D22EBCFC();

  return MEMORY[0x1EEDDEA00](a1, a2, a3, a4, v8);
}

uint64_t sub_1D28421E4(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 32) = a2;
  *(v4 + 40) = v3;
  *(v4 + 352) = a3;
  *(v4 + 24) = a1;
  v5 = sub_1D2872B68();
  *(v4 + 48) = v5;
  *(v4 + 56) = *(v5 - 8);
  *(v4 + 64) = swift_task_alloc();
  v6 = sub_1D2873128();
  *(v4 + 72) = v6;
  *(v4 + 80) = *(v6 - 8);
  *(v4 + 88) = swift_task_alloc();
  v7 = sub_1D2872E48();
  *(v4 + 96) = v7;
  *(v4 + 104) = *(v7 - 8);
  *(v4 + 112) = swift_task_alloc();
  v8 = sub_1D2873068();
  *(v4 + 120) = v8;
  *(v4 + 128) = *(v8 - 8);
  *(v4 + 136) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA510);
  *(v4 + 144) = swift_task_alloc();
  *(v4 + 152) = swift_task_alloc();
  v9 = sub_1D2873758();
  *(v4 + 160) = v9;
  *(v4 + 168) = *(v9 - 8);
  *(v4 + 176) = swift_task_alloc();
  v10 = sub_1D2873C28();
  *(v4 + 184) = v10;
  *(v4 + 192) = *(v10 - 8);
  *(v4 + 200) = swift_task_alloc();
  *(v4 + 208) = swift_task_alloc();
  v11 = sub_1D2873C48();
  *(v4 + 216) = v11;
  *(v4 + 224) = *(v11 - 8);
  *(v4 + 232) = swift_task_alloc();
  sub_1D2878568();
  *(v4 + 240) = sub_1D2878558();
  v13 = sub_1D28784F8();
  *(v4 + 248) = v13;
  *(v4 + 256) = v12;

  return MEMORY[0x1EEE6DFA0](sub_1D2842558, v13, v12);
}

uint64_t sub_1D2842558()
{
  sub_1D28720E8();
  sub_1D2873C18();
  v1 = sub_1D2873C38();
  v2 = sub_1D2878BB8();
  if (sub_1D2878EE8())
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    v4 = sub_1D2873C08();
    _os_signpost_emit_with_name_impl(&dword_1D226E000, v1, v2, v4, "ConditioningImageFactory.personalizationFaceRectData", "", v3, 2u);
    MEMORY[0x1D38A3520](v3, -1, -1);
  }

  v5 = v0[28];
  v6 = v0[26];
  v21 = v0[27];
  v22 = v0[29];
  v8 = v0[24];
  v7 = v0[25];
  v9 = v0[23];
  v10 = v0[21];
  v23 = v0[20];
  v11 = v0[19];

  (*(v8 + 16))(v7, v6, v9);
  sub_1D2873C88();
  swift_allocObject();
  v0[33] = sub_1D2873C78();
  (*(v8 + 8))(v6, v9);
  (*(v5 + 8))(v22, v21);
  sub_1D262C1D0(v11);
  if ((*(v10 + 48))(v11, 1, v23) == 1)
  {
    v12 = v0[19];

    sub_1D22BD238(v12, &qword_1EC6DA510);
    sub_1D2844A4C("ConditioningImageFactory.personalizationFaceRectData", 52, 2);

    v13 = v0[3];

    *v13 = 0u;
    *(v13 + 16) = 0u;
    *(v13 + 32) = 1;
    *(v13 + 40) = 0;
    *(v13 + 48) = 0;
    v14 = v0[1];

    return v14();
  }

  else
  {
    v17 = v0[21];
    v16 = v0[22];
    v18 = v0[20];
    v19 = v0[18];
    (*(v17 + 32))(v16, v0[19], v18);
    sub_1D2873058();
    (*(v17 + 16))(v19, v16, v18);
    (*(v17 + 56))(v19, 0, 1, v18);
    sub_1D2873028();
    v20 = swift_task_alloc();
    v0[34] = v20;
    *v20 = v0;
    v20[1] = sub_1D28428F8;

    return sub_1D2844688();
  }
}

uint64_t sub_1D28428F8(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 280) = a1;
  *(v4 + 288) = v1;

  v5 = *(v3 + 256);
  v6 = *(v3 + 248);
  if (v1)
  {
    v7 = sub_1D2843260;
  }

  else
  {
    v7 = sub_1D2842A3C;
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, v5);
}

uint64_t sub_1D2842A3C()
{
  v1 = v0[14];
  v2 = v0[12];
  v3 = v0[13];
  (*(v0[16] + 16))(v1, v0[17], v0[15]);
  (*(v3 + 104))(v1, *MEMORY[0x1E69DFF08], v2);
  v4 = swift_task_alloc();
  v0[37] = v4;
  *v4 = v0;
  v4[1] = sub_1D2842B24;
  v5 = v0[14];

  return MEMORY[0x1EEE4F728](v5);
}

uint64_t sub_1D2842B24()
{
  v2 = *v1;
  v3 = *v1;
  v2[38] = v0;

  v4 = v2[14];
  v5 = v2[13];
  v6 = v2[12];
  if (v0)
  {
    (*(v5 + 8))(v4, v6);

    v7 = v2[31];
    v8 = v2[32];

    return MEMORY[0x1EEE6DFA0](sub_1D28434B8, v7, v8);
  }

  else
  {
    (*(v5 + 8))(v4, v6);

    v9 = swift_task_alloc();
    v2[39] = v9;
    *v9 = v3;
    v9[1] = sub_1D2842D24;

    return sub_1D2844688();
  }
}

uint64_t sub_1D2842D24(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  *(*v2 + 320) = v1;

  if (v1)
  {
    v6 = v4[31];
    v7 = v4[32];

    return MEMORY[0x1EEE6DFA0](sub_1D2843710, v6, v7);
  }

  else
  {
    v4[41] = a1;
    v8 = swift_task_alloc();
    v4[42] = v8;
    *v8 = v5;
    v8[1] = sub_1D2842EA8;

    return MEMORY[0x1EEE4F6D0]();
  }
}

uint64_t sub_1D2842EA8(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 344) = a1;

  v3 = *(v2 + 256);
  v4 = *(v2 + 248);

  return MEMORY[0x1EEE6DFA0](sub_1D2842FF4, v4, v3);
}

uint64_t sub_1D2842FF4()
{
  v1 = v0[43];

  if (v1)
  {
    v2 = v0[43];
    if (*(v2 + 16))
    {
      v3 = v0[21];
      v23 = v0[20];
      v25 = v0[22];
      v4 = v0[16];
      v5 = v0[17];
      v6 = v0[15];
      v8 = v0[10];
      v7 = v0[11];
      v9 = v0[9];
      (*(v8 + 16))(v7, v2 + ((*(v8 + 80) + 32) & ~*(v8 + 80)), v9);
      sub_1D2873118();
      v27 = v11;
      v29 = v10;
      v21 = v13;
      v22 = v12;
      (*(v4 + 8))(v5, v6);
      (*(v3 + 8))(v25, v23);
      (*(v8 + 8))(v7, v9);
      *&v14 = v27;
      *(&v14 + 1) = v21;
      v28 = v14;
      *&v14 = v29;
      *(&v14 + 1) = v22;
      v30 = v14;
      v26 = *(v2 + 16);

      v24 = 0;
      goto LABEL_6;
    }
  }

  v16 = v0[21];
  v15 = v0[22];
  v17 = v0[20];
  (*(v0[16] + 8))(v0[17], v0[15]);
  (*(v16 + 8))(v15, v17);
  v26 = 0;
  v28 = 0u;
  v30 = 0u;
  v24 = 1;
LABEL_6:
  sub_1D2844A4C("ConditioningImageFactory.personalizationFaceRectData", 52, 2);

  v18 = v0[3];

  *v18 = v30;
  *(v18 + 16) = v28;
  *(v18 + 32) = v24;
  *(v18 + 40) = v26;
  *(v18 + 48) = 0;
  v19 = v0[1];

  return v19();
}

uint64_t sub_1D2843260()
{
  v1 = *(v0 + 288);
  v3 = *(v0 + 168);
  v2 = *(v0 + 176);
  v4 = *(v0 + 160);
  v6 = *(v0 + 128);
  v5 = *(v0 + 136);
  v7 = *(v0 + 120);

  (*(v6 + 8))(v5, v7);
  (*(v3 + 8))(v2, v4);
  *(v0 + 16) = v1;
  v8 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D94B0);
  if (swift_dynamicCast())
  {
    if ((*(*(v0 + 56) + 88))(*(v0 + 64), *(v0 + 48)) == *MEMORY[0x1E69DFD18])
    {

      sub_1D2844A4C("ConditioningImageFactory.personalizationFaceRectData", 52, 2);

      v12 = *(v0 + 352);
      goto LABEL_6;
    }

    (*(*(v0 + 56) + 8))(*(v0 + 64), *(v0 + 48));
  }

  sub_1D2844A4C("ConditioningImageFactory.personalizationFaceRectData", 52, 2);

  v12 = 0;
LABEL_6:
  v9 = *(v0 + 24);

  *v9 = 0u;
  *(v9 + 16) = 0u;
  *(v9 + 32) = 1;
  *(v9 + 40) = 0;
  *(v9 + 48) = v12;
  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_1D28434B8()
{
  v1 = *(v0 + 304);
  v3 = *(v0 + 168);
  v2 = *(v0 + 176);
  v4 = *(v0 + 160);
  v6 = *(v0 + 128);
  v5 = *(v0 + 136);
  v7 = *(v0 + 120);

  (*(v6 + 8))(v5, v7);
  (*(v3 + 8))(v2, v4);
  *(v0 + 16) = v1;
  v8 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D94B0);
  if (swift_dynamicCast())
  {
    if ((*(*(v0 + 56) + 88))(*(v0 + 64), *(v0 + 48)) == *MEMORY[0x1E69DFD18])
    {

      sub_1D2844A4C("ConditioningImageFactory.personalizationFaceRectData", 52, 2);

      v12 = *(v0 + 352);
      goto LABEL_6;
    }

    (*(*(v0 + 56) + 8))(*(v0 + 64), *(v0 + 48));
  }

  sub_1D2844A4C("ConditioningImageFactory.personalizationFaceRectData", 52, 2);

  v12 = 0;
LABEL_6:
  v9 = *(v0 + 24);

  *v9 = 0u;
  *(v9 + 16) = 0u;
  *(v9 + 32) = 1;
  *(v9 + 40) = 0;
  *(v9 + 48) = v12;
  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_1D2843710()
{
  v1 = *(v0 + 320);
  v3 = *(v0 + 168);
  v2 = *(v0 + 176);
  v4 = *(v0 + 160);
  v6 = *(v0 + 128);
  v5 = *(v0 + 136);
  v7 = *(v0 + 120);

  (*(v6 + 8))(v5, v7);
  (*(v3 + 8))(v2, v4);
  *(v0 + 16) = v1;
  v8 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D94B0);
  if (swift_dynamicCast())
  {
    if ((*(*(v0 + 56) + 88))(*(v0 + 64), *(v0 + 48)) == *MEMORY[0x1E69DFD18])
    {

      sub_1D2844A4C("ConditioningImageFactory.personalizationFaceRectData", 52, 2);

      v12 = *(v0 + 352);
      goto LABEL_6;
    }

    (*(*(v0 + 56) + 8))(*(v0 + 64), *(v0 + 48));
  }

  sub_1D2844A4C("ConditioningImageFactory.personalizationFaceRectData", 52, 2);

  v12 = 0;
LABEL_6:
  v9 = *(v0 + 24);

  *v9 = 0u;
  *(v9 + 16) = 0u;
  *(v9 + 32) = 1;
  *(v9 + 40) = 0;
  *(v9 + 48) = v12;
  v10 = *(v0 + 8);

  return v10();
}

uint64_t _ConditioningImageFactory.assignConditioningImage(from:to:)(uint64_t a1, uint64_t a2)
{
  v3[28] = a2;
  v3[29] = v2;
  v3[27] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA2C8);
  v3[30] = swift_task_alloc();
  v4 = type metadata accessor for SceneConditioningImage();
  v3[31] = v4;
  v3[32] = *(v4 - 8);
  v3[33] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9A40);
  v3[34] = swift_task_alloc();
  v5 = type metadata accessor for PersonConditioningImage();
  v3[35] = v5;
  v3[36] = *(v5 - 8);
  v3[37] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DDDC0);
  v3[38] = swift_task_alloc();
  v3[39] = type metadata accessor for PlaygroundImage();
  v3[40] = swift_task_alloc();
  v6 = sub_1D2872008();
  v3[41] = v6;
  v3[42] = *(v6 - 8);
  v3[43] = swift_task_alloc();
  v3[44] = sub_1D2878568();
  v3[45] = sub_1D2878558();
  v8 = sub_1D28784F8();
  v3[46] = v8;
  v3[47] = v7;

  return MEMORY[0x1EEE6DFA0](sub_1D2843BF4, v8, v7);
}

uint64_t sub_1D2843BF4()
{
  v1 = *(v0 + 344);
  v2 = *(v0 + 328);
  v3 = *(v0 + 336);
  v4 = *(v0 + 224);
  v5 = OBJC_IVAR____TtC23ImagePlaygroundInternal15CreationContext_style;
  swift_beginAccess();
  (*(v3 + 16))(v1, v4 + v5, v2);
  v6 = sub_1D2871F78();
  *(v0 + 65) = v6 & 1;
  (*(v3 + 8))(v1, v2);
  *(v0 + 384) = sub_1D2878558();
  v7 = swift_task_alloc();
  *(v0 + 392) = v7;
  *v7 = v0;
  v7[1] = sub_1D2843D28;
  v8 = *(v0 + 216);

  return sub_1D28421E4(v0 + 16, v8, (v6 & 1) == 0);
}

uint64_t sub_1D2843D28()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 32);
  *(v2 + 400) = *(v2 + 16);
  *(v2 + 416) = v3;
  *(v2 + 66) = *(v2 + 48);
  *(v2 + 432) = *(v1 + 56);
  *(v2 + 67) = *(v2 + 64);

  *(v2 + 440) = sub_1D2878558();
  v5 = sub_1D28784F8();
  *(v2 + 448) = v5;
  *(v2 + 456) = v4;

  return MEMORY[0x1EEE6DFA0](sub_1D2843E98, v5, v4);
}

uint64_t sub_1D2843E98()
{
  v1 = *(v0 + 66);
  sub_1D23C7044();
  v2 = sub_1D27ED8C8();

  if (v2 & 1) == 0 || (v1)
  {
    v10 = *(v0 + 67);
    v11 = *(v0 + 66);
    v12 = *(v0 + 248);
    v13 = *(v0 + 216);

    sub_1D23C7044();
    v14 = sub_1D27ED8C8();

    if (v10)
    {
      v15 = 1;
    }

    else
    {
      v15 = 2;
    }

    if ((v14 | (v11 & ~v10)))
    {
      v16 = v15;
    }

    else
    {
      v16 = 0;
    }

    *(v0 + 96) = v12;
    *(v0 + 104) = sub_1D2846C54(&qword_1EC6D9A88, type metadata accessor for SceneConditioningImage);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 72));
    sub_1D2846C9C(v13, boxed_opaque_existential_1, type metadata accessor for PlaygroundImage);
    *(boxed_opaque_existential_1 + *(v12 + 20)) = v16;
    goto LABEL_13;
  }

  v3 = *(v0 + 65);
  sub_1D2846C9C(*(v0 + 216), *(v0 + 320), type metadata accessor for PlaygroundImage);
  if (v3)
  {
    if (*(v0 + 432) != 1)
    {
      v4 = *(v0 + 304);

      v5 = type metadata accessor for PhotosPersonAsset();
      (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
      v6 = *(v0 + 320);
      v7 = *(v0 + 304);
      v8 = *(v0 + 280);
      *(v0 + 96) = v8;
      *(v0 + 104) = sub_1D2846C54(&qword_1EC6D9A90, type metadata accessor for PersonConditioningImage);
      v9 = __swift_allocate_boxed_opaque_existential_1((v0 + 72));
      sub_1D2846204(v6, v9 + *(v8 + 20), type metadata accessor for PlaygroundImage);
      sub_1D22D6E50(v7, v9);
LABEL_13:
      v18 = sub_1D28784F8();
      v20 = v19;
      v21 = sub_1D284435C;
      goto LABEL_16;
    }
  }

  else
  {
    v22 = *(v0 + 416);
    v23 = *(v0 + 424);
    v24 = *(v0 + 312);
    v25 = *(v0 + 320);
    v29.origin.x = *(v0 + 400) - v22 * 0.5;
    v29.origin.y = *(v0 + 408) - v23 * 0.5;
    v29.size.width = v22 + v22;
    v29.size.height = v23 + v23;
    v30.origin.x = 0.0;
    v30.origin.y = 0.0;
    v30.size.width = 1.0;
    v30.size.height = 1.0;
    *(v25 + *(v24 + 36)) = CGRectIntersection(v29, v30);
  }

  *(v0 + 464) = sub_1D2878558();
  v18 = sub_1D28784F8();
  v20 = v26;
  v21 = sub_1D28441A4;
LABEL_16:

  return MEMORY[0x1EEE6DFA0](v21, v18, v20);
}

uint64_t sub_1D28441A4()
{
  v1 = v0[38];

  v2 = type metadata accessor for PhotosPersonAsset();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v3 = v0[56];
  v4 = v0[57];

  return MEMORY[0x1EEE6DFA0](sub_1D284424C, v3, v4);
}

uint64_t sub_1D284424C()
{

  v1 = v0[40];
  v2 = v0[38];
  v3 = v0[35];
  v0[12] = v3;
  v0[13] = sub_1D2846C54(&qword_1EC6D9A90, type metadata accessor for PersonConditioningImage);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 9);
  sub_1D2846204(v1, boxed_opaque_existential_1 + *(v3 + 20), type metadata accessor for PlaygroundImage);
  sub_1D22D6E50(v2, boxed_opaque_existential_1);
  v6 = sub_1D28784F8();

  return MEMORY[0x1EEE6DFA0](sub_1D284435C, v6, v5);
}

uint64_t sub_1D284435C()
{

  v1 = *(v0 + 368);
  v2 = *(v0 + 376);

  return MEMORY[0x1EEE6DFA0](sub_1D28443C0, v1, v2);
}

uint64_t sub_1D28443C0()
{
  v1 = v0[36];

  sub_1D22D7044((v0 + 9), (v0 + 14));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA3F0);
  v2 = swift_dynamicCast();
  v3 = *(v1 + 56);
  if (v2)
  {
    v4 = v0[37];
    v5 = v0[34];
    v6 = v0[28];
    v3(v5, 0, 1, v0[35]);
    sub_1D2846204(v5, v4, type metadata accessor for PersonConditioningImage);
    sub_1D2844E3C(v4, v6);
    v7 = type metadata accessor for PersonConditioningImage;
    v8 = v4;
LABEL_5:
    sub_1D284626C(v8, v7);
    __swift_destroy_boxed_opaque_existential_0((v0 + 9));
    goto LABEL_7;
  }

  v9 = v0[34];
  v10 = v0[32];
  v3(v9, 1, 1, v0[35]);
  sub_1D22BD238(v9, &qword_1EC6D9A40);
  sub_1D22D7044((v0 + 9), (v0 + 19));
  v11 = swift_dynamicCast();
  v12 = *(v10 + 56);
  if (v11)
  {
    v13 = v0[33];
    v14 = v0[30];
    v12(v14, 0, 1, v0[31]);
    sub_1D2846204(v14, v13, type metadata accessor for SceneConditioningImage);
    sub_1D2676930(v13);
    v7 = type metadata accessor for SceneConditioningImage;
    v8 = v13;
    goto LABEL_5;
  }

  v15 = v0[30];
  v12(v15, 1, 1, v0[31]);
  __swift_destroy_boxed_opaque_existential_0((v0 + 9));
  sub_1D22BD238(v15, &qword_1EC6DA2C8);
LABEL_7:

  v16 = v0[1];

  return v16();
}

uint64_t _ConditioningImageFactory.__allocating_init(servicesFetcher:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = 0;
  return result;
}

uint64_t _ConditioningImageFactory.init(servicesFetcher:)(uint64_t a1)
{
  *(v1 + 16) = a1;
  *(v1 + 24) = 0;
  return v1;
}

uint64_t sub_1D2844688()
{
  v1[2] = v0;
  sub_1D2878568();
  v1[3] = sub_1D2878558();
  v3 = sub_1D28784F8();
  v1[4] = v3;
  v1[5] = v2;

  return MEMORY[0x1EEE6DFA0](sub_1D2844720, v3, v2);
}

uint64_t sub_1D2844720()
{
  v1 = *(v0[2] + 24);
  if (v1)
  {
    sub_1D2870F78();

    v2 = v0[1];

    return v2(v1);
  }

  else
  {
    v0[6] = sub_1D23C6F18();
    v4 = swift_task_alloc();
    v0[7] = v4;
    *v4 = v0;
    v4[1] = sub_1D2844818;

    return sub_1D2459838(5);
  }
}

uint64_t sub_1D2844818(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 64) = v1;

  if (v1)
  {
    v5 = v4[4];
    v6 = v4[5];
    v7 = sub_1D28449DC;
  }

  else
  {
    v4[9] = a1;
    v5 = v4[4];
    v6 = v4[5];
    v7 = sub_1D2844940;
  }

  return MEMORY[0x1EEE6DFA0](v7, v5, v6);
}

uint64_t sub_1D2844940()
{
  v1 = v0[9];
  v2 = v0[2];

  *(v2 + 24) = v1;
  sub_1D2870F78();
  v3 = v0[9];

  v4 = v0[1];

  return v4(v3);
}

uint64_t sub_1D28449DC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D2844A4C(const char *a1, uint64_t a2, int a3)
{
  v26 = a3;
  v27 = a1;
  v3 = sub_1D2873C58();
  v24 = *(v3 - 8);
  v25 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1D2873C28();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1D2873C48();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D28720E8();
  v14 = sub_1D2873C38();
  sub_1D2873C68();
  v23 = sub_1D2878BA8();
  result = sub_1D2878EE8();
  if ((result & 1) == 0)
  {
LABEL_13:

    (*(v7 + 8))(v9, v6);
    return (*(v11 + 8))(v13, v10);
  }

  v22 = v10;
  if ((v26 & 1) == 0)
  {
    if (v27)
    {
LABEL_9:
      sub_1D2870F78();
      sub_1D2873C98();

      v17 = v24;
      v16 = v25;
      if ((*(v24 + 88))(v5, v25) == *MEMORY[0x1E69E93E8])
      {
        v18 = "[Error] Interval already ended";
      }

      else
      {
        (*(v17 + 8))(v5, v16);
        v18 = "";
      }

      v19 = swift_slowAlloc();
      *v19 = 0;
      v20 = sub_1D2873C08();
      _os_signpost_emit_with_name_impl(&dword_1D226E000, v14, v23, v20, v27, v18, v19, 2u);
      MEMORY[0x1D38A3520](v19, -1, -1);
      v10 = v22;
      goto LABEL_13;
    }

    __break(1u);
  }

  if (v27 >> 32)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if ((v27 & 0xFFFFF800) != 0xD800)
  {
    if (v27 >> 16 <= 0x10)
    {
      v27 = &v28;
      goto LABEL_9;
    }

    goto LABEL_15;
  }

LABEL_16:
  __break(1u);
  return result;
}

uint64_t _ConditioningImageFactory.deinit()
{

  return v0;
}

uint64_t _ConditioningImageFactory.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1D2844DF8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = 0;
  *a2 = result;
  return result;
}

uint64_t sub_1D2844E3C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DDDC0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v61 = v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v63 = v58 - v7;
  v65 = type metadata accessor for PhotosPersonAsset();
  v62 = *(v65 - 8);
  MEMORY[0x1EEE9AC00](v65);
  v60 = (v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v9);
  v64 = v58 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9A40);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = v58 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = v58 - v18;
  v20 = type metadata accessor for PersonConditioningImage();
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v23 = v58 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v26 = v58 - v25;
  MEMORY[0x1EEE9AC00](v27);
  v67 = v58 - v28;
  v70[3] = v29;
  v70[4] = sub_1D2846C54(&qword_1EC6D9A50, type metadata accessor for PersonConditioningImage);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v70);
  sub_1D2846C9C(a1, boxed_opaque_existential_1, type metadata accessor for PersonConditioningImage);
  v66 = OBJC_IVAR____TtC23ImagePlaygroundInternal15CreationContext_shouldResetSession;
  if (*(a2 + OBJC_IVAR____TtC23ImagePlaygroundInternal15CreationContext_shouldResetSession))
  {
    goto LABEL_17;
  }

  v31 = OBJC_IVAR____TtC23ImagePlaygroundInternal15CreationContext_activePerson;
  swift_beginAccess();
  sub_1D23DC8D8(a2 + v31, v68);
  v32 = v69;
  sub_1D22BD238(v68, &qword_1EC6D9A58);
  if (!v32)
  {
    goto LABEL_17;
  }

  sub_1D23DC8D8(a2 + v31, v68);
  if (!v69)
  {
    sub_1D22BD238(v68, &qword_1EC6D9A58);
    (*(v21 + 56))(v16, 1, 1, v20);
    goto LABEL_8;
  }

  v58[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9A28);
  v33 = swift_dynamicCast();
  v59 = *(v21 + 56);
  v59(v16, v33 ^ 1u, 1, v20);
  if ((*(v21 + 48))(v16, 1, v20) == 1)
  {
LABEL_8:
    v37 = v16;
    goto LABEL_9;
  }

  sub_1D2846204(v16, v26, type metadata accessor for PersonConditioningImage);
  sub_1D22D7044(v70, v68);
  if (!swift_dynamicCast())
  {
    sub_1D284626C(v26, type metadata accessor for PersonConditioningImage);
    v59(v13, 1, 1, v20);
    v37 = v13;
LABEL_9:
    sub_1D22BD238(v37, &qword_1EC6D9A40);
    sub_1D23DC8D8(a2 + v31, v68);
    v38 = v62;
    v39 = (v62 + 56);
    v40 = v64;
    v41 = v65;
    v42 = v63;
    if (v69)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9A28);
      v43 = swift_dynamicCast();
      v59 = *(v38 + 56);
      v59(v42, v43 ^ 1u, 1, v41);
      if ((*(v38 + 48))(v42, 1, v41) != 1)
      {
        sub_1D2846204(v42, v40, type metadata accessor for PhotosPersonAsset);
        sub_1D22D7044(v70, v68);
        v44 = v61;
        if (!swift_dynamicCast())
        {
          sub_1D284626C(v40, type metadata accessor for PhotosPersonAsset);
          v47 = 1;
          v59(v44, 1, 1, v41);
          sub_1D22BD238(v44, &unk_1EC6DDDC0);
          goto LABEL_16;
        }

        v59(v44, 0, 1, v41);
        v45 = v44;
        v46 = v60;
        sub_1D2846204(v45, v60, type metadata accessor for PhotosPersonAsset);
        v34 = _s23ImagePlaygroundInternal17PhotosPersonAssetV2eeoiySbAC_ACtFZ_0(v40, v46);
        sub_1D284626C(v46, type metadata accessor for PhotosPersonAsset);
        v35 = v40;
        v36 = type metadata accessor for PhotosPersonAsset;
        goto LABEL_13;
      }
    }

    else
    {
      sub_1D22BD238(v68, &qword_1EC6D9A58);
      (*v39)(v42, 1, 1, v41);
    }

    sub_1D22BD238(v42, &unk_1EC6DDDC0);
    v47 = 1;
    goto LABEL_16;
  }

  v59(v13, 0, 1, v20);
  sub_1D2846204(v13, v23, type metadata accessor for PersonConditioningImage);
  v34 = sub_1D26B94BC(v26, v23);
  sub_1D284626C(v23, type metadata accessor for PersonConditioningImage);
  v35 = v26;
  v36 = type metadata accessor for PersonConditioningImage;
LABEL_13:
  sub_1D284626C(v35, v36);
  v47 = v34 ^ 1;
LABEL_16:
  *(a2 + v66) = v47 & 1;
LABEL_17:
  sub_1D22D7044(v70, v68);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9A28);
  v48 = swift_dynamicCast();
  v49 = *(v21 + 56);
  if (v48)
  {
    v49(v19, 0, 1, v20);
    v50 = v19;
    v51 = v67;
    sub_1D2846204(v50, v67, type metadata accessor for PersonConditioningImage);
    v52 = OBJC_IVAR____TtC23ImagePlaygroundInternal15CreationContext_drawOnImageRecipe;
    swift_beginAccess();
    v53 = *(a2 + v52);
    if (v53)
    {
      swift_endAccess();
      v54 = v53;
      v55 = sub_1D262AD28();
      [v54 setBaseImage_];

      sub_1D284626C(v51, type metadata accessor for PersonConditioningImage);
    }

    else
    {
      sub_1D284626C(v51, type metadata accessor for PersonConditioningImage);
      swift_endAccess();
    }
  }

  else
  {
    v49(v19, 1, 1, v20);
    sub_1D22BD238(v19, &qword_1EC6D9A40);
  }

  sub_1D22D7044(v70, v68);
  v56 = OBJC_IVAR____TtC23ImagePlaygroundInternal15CreationContext_activePerson;
  swift_beginAccess();
  sub_1D2846194(v68, a2 + v56);
  swift_endAccess();
  return __swift_destroy_boxed_opaque_existential_0(v70);
}

uint64_t sub_1D284580C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DDDC0);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v60 = v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v62 = v57 - v7;
  v64 = type metadata accessor for PhotosPersonAsset();
  v61 = *(v64 - 8);
  v8 = MEMORY[0x1EEE9AC00](v64);
  v59 = (v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v8);
  v63 = v57 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9A40);
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = v57 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = v57 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v19 = v57 - v18;
  v20 = type metadata accessor for PersonConditioningImage();
  v21 = *(v20 - 8);
  v22 = MEMORY[0x1EEE9AC00](v20);
  v24 = v57 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x1EEE9AC00](v22);
  v27 = v57 - v26;
  MEMORY[0x1EEE9AC00](v25);
  v66 = v57 - v28;
  v69[3] = type metadata accessor for CharacterAsset();
  v69[4] = sub_1D2846C54(&qword_1EC6D9A68, type metadata accessor for CharacterAsset);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v69);
  sub_1D2846C9C(a1, boxed_opaque_existential_1, type metadata accessor for CharacterAsset);
  v65 = OBJC_IVAR____TtC23ImagePlaygroundInternal15CreationContext_shouldResetSession;
  if (*(a2 + OBJC_IVAR____TtC23ImagePlaygroundInternal15CreationContext_shouldResetSession))
  {
    goto LABEL_17;
  }

  v30 = OBJC_IVAR____TtC23ImagePlaygroundInternal15CreationContext_activePerson;
  swift_beginAccess();
  sub_1D23DC8D8(a2 + v30, v67);
  v31 = v68;
  sub_1D22BD238(v67, &qword_1EC6D9A58);
  if (!v31)
  {
    goto LABEL_17;
  }

  sub_1D23DC8D8(a2 + v30, v67);
  if (!v68)
  {
    sub_1D22BD238(v67, &qword_1EC6D9A58);
    (*(v21 + 56))(v17, 1, 1, v20);
    goto LABEL_8;
  }

  v57[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9A28);
  v32 = swift_dynamicCast();
  v58 = *(v21 + 56);
  v58(v17, v32 ^ 1u, 1, v20);
  if ((*(v21 + 48))(v17, 1, v20) == 1)
  {
LABEL_8:
    v36 = v17;
    goto LABEL_9;
  }

  sub_1D2846204(v17, v27, type metadata accessor for PersonConditioningImage);
  sub_1D22D7044(v69, v67);
  if (!swift_dynamicCast())
  {
    sub_1D284626C(v27, type metadata accessor for PersonConditioningImage);
    v58(v14, 1, 1, v20);
    v36 = v14;
LABEL_9:
    sub_1D22BD238(v36, &qword_1EC6D9A40);
    sub_1D23DC8D8(a2 + v30, v67);
    v37 = v61;
    v38 = (v61 + 56);
    v39 = v63;
    v40 = v64;
    v41 = v62;
    if (v68)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9A28);
      v42 = swift_dynamicCast();
      v58 = *(v37 + 56);
      v58(v41, v42 ^ 1u, 1, v40);
      if ((*(v37 + 48))(v41, 1, v40) != 1)
      {
        sub_1D2846204(v41, v39, type metadata accessor for PhotosPersonAsset);
        sub_1D22D7044(v69, v67);
        v43 = v60;
        if (!swift_dynamicCast())
        {
          sub_1D284626C(v39, type metadata accessor for PhotosPersonAsset);
          v46 = 1;
          v58(v43, 1, 1, v40);
          sub_1D22BD238(v43, &unk_1EC6DDDC0);
          goto LABEL_16;
        }

        v58(v43, 0, 1, v40);
        v44 = v43;
        v45 = v59;
        sub_1D2846204(v44, v59, type metadata accessor for PhotosPersonAsset);
        v33 = _s23ImagePlaygroundInternal17PhotosPersonAssetV2eeoiySbAC_ACtFZ_0(v39, v45);
        sub_1D284626C(v45, type metadata accessor for PhotosPersonAsset);
        v34 = v39;
        v35 = type metadata accessor for PhotosPersonAsset;
        goto LABEL_13;
      }
    }

    else
    {
      sub_1D22BD238(v67, &qword_1EC6D9A58);
      (*v38)(v41, 1, 1, v40);
    }

    sub_1D22BD238(v41, &unk_1EC6DDDC0);
    v46 = 1;
    goto LABEL_16;
  }

  v58(v14, 0, 1, v20);
  sub_1D2846204(v14, v24, type metadata accessor for PersonConditioningImage);
  v33 = sub_1D26B94BC(v27, v24);
  sub_1D284626C(v24, type metadata accessor for PersonConditioningImage);
  v34 = v27;
  v35 = type metadata accessor for PersonConditioningImage;
LABEL_13:
  sub_1D284626C(v34, v35);
  v46 = v33 ^ 1;
LABEL_16:
  *(a2 + v65) = v46 & 1;
LABEL_17:
  sub_1D22D7044(v69, v67);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9A28);
  v47 = swift_dynamicCast();
  v48 = *(v21 + 56);
  if (v47)
  {
    v48(v19, 0, 1, v20);
    v49 = v19;
    v50 = v66;
    sub_1D2846204(v49, v66, type metadata accessor for PersonConditioningImage);
    v51 = OBJC_IVAR____TtC23ImagePlaygroundInternal15CreationContext_drawOnImageRecipe;
    swift_beginAccess();
    v52 = *(a2 + v51);
    if (v52)
    {
      swift_endAccess();
      v53 = v52;
      v54 = sub_1D262AD28();
      [v53 setBaseImage_];

      sub_1D284626C(v50, type metadata accessor for PersonConditioningImage);
    }

    else
    {
      sub_1D284626C(v50, type metadata accessor for PersonConditioningImage);
      swift_endAccess();
    }
  }

  else
  {
    v48(v19, 1, 1, v20);
    sub_1D22BD238(v19, &qword_1EC6D9A40);
  }

  sub_1D22D7044(v69, v67);
  v55 = OBJC_IVAR____TtC23ImagePlaygroundInternal15CreationContext_activePerson;
  swift_beginAccess();
  sub_1D2846194(v67, a2 + v55);
  swift_endAccess();
  return __swift_destroy_boxed_opaque_existential_0(v69);
}

uint64_t sub_1D2846194(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9A58);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D2846204(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D284626C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D28462CC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DDDC0);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v63 = v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v65 = v60 - v7;
  v8 = type metadata accessor for PhotosPersonAsset();
  v64 = *(v8 - 8);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v62 = (v60 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v9);
  v66 = v60 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9A40);
  v13 = MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = v60 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = v60 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v20 = v60 - v19;
  v21 = type metadata accessor for PersonConditioningImage();
  v22 = *(v21 - 8);
  v23 = MEMORY[0x1EEE9AC00](v21);
  v25 = v60 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x1EEE9AC00](v23);
  v28 = v60 - v27;
  MEMORY[0x1EEE9AC00](v26);
  v69 = v60 - v29;
  v67 = v8;
  v72[3] = v8;
  v72[4] = sub_1D2846C54(&qword_1EC6D9A60, type metadata accessor for PhotosPersonAsset);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v72);
  sub_1D2846C9C(a1, boxed_opaque_existential_1, type metadata accessor for PhotosPersonAsset);
  v68 = OBJC_IVAR____TtC23ImagePlaygroundInternal15CreationContext_shouldResetSession;
  if (*(a2 + OBJC_IVAR____TtC23ImagePlaygroundInternal15CreationContext_shouldResetSession))
  {
    goto LABEL_17;
  }

  v31 = OBJC_IVAR____TtC23ImagePlaygroundInternal15CreationContext_activePerson;
  swift_beginAccess();
  sub_1D23DC8D8(a2 + v31, v70);
  v32 = v71;
  sub_1D22BD238(v70, &qword_1EC6D9A58);
  if (!v32)
  {
    goto LABEL_17;
  }

  sub_1D23DC8D8(a2 + v31, v70);
  if (!v71)
  {
    sub_1D22BD238(v70, &qword_1EC6D9A58);
    (*(v22 + 56))(v18, 1, 1, v21);
    goto LABEL_8;
  }

  v60[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9A28);
  v33 = swift_dynamicCast();
  v61 = *(v22 + 56);
  v61(v18, v33 ^ 1u, 1, v21);
  if ((*(v22 + 48))(v18, 1, v21) == 1)
  {
LABEL_8:
    v37 = v18;
    goto LABEL_9;
  }

  sub_1D2846204(v18, v28, type metadata accessor for PersonConditioningImage);
  sub_1D22D7044(v72, v70);
  if (!swift_dynamicCast())
  {
    sub_1D284626C(v28, type metadata accessor for PersonConditioningImage);
    v61(v15, 1, 1, v21);
    v37 = v15;
LABEL_9:
    sub_1D22BD238(v37, &qword_1EC6D9A40);
    sub_1D23DC8D8(a2 + v31, v70);
    v38 = v64;
    v39 = (v64 + 56);
    v40 = v66;
    v41 = v67;
    v42 = v65;
    if (v71)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9A28);
      v43 = swift_dynamicCast();
      v61 = *(v38 + 56);
      v61(v42, v43 ^ 1u, 1, v41);
      if ((*(v38 + 48))(v42, 1, v41) != 1)
      {
        v44 = v42;
        v45 = v40;
        sub_1D2846204(v44, v40, type metadata accessor for PhotosPersonAsset);
        sub_1D22D7044(v72, v70);
        v46 = v63;
        if (!swift_dynamicCast())
        {
          sub_1D284626C(v45, type metadata accessor for PhotosPersonAsset);
          v49 = 1;
          v61(v46, 1, 1, v41);
          sub_1D22BD238(v46, &unk_1EC6DDDC0);
          goto LABEL_16;
        }

        v61(v46, 0, 1, v41);
        v47 = v46;
        v48 = v62;
        sub_1D2846204(v47, v62, type metadata accessor for PhotosPersonAsset);
        v34 = _s23ImagePlaygroundInternal17PhotosPersonAssetV2eeoiySbAC_ACtFZ_0(v45, v48);
        sub_1D284626C(v48, type metadata accessor for PhotosPersonAsset);
        v35 = v45;
        v36 = type metadata accessor for PhotosPersonAsset;
        goto LABEL_13;
      }
    }

    else
    {
      sub_1D22BD238(v70, &qword_1EC6D9A58);
      (*v39)(v42, 1, 1, v41);
    }

    sub_1D22BD238(v42, &unk_1EC6DDDC0);
    v49 = 1;
    goto LABEL_16;
  }

  v61(v15, 0, 1, v21);
  sub_1D2846204(v15, v25, type metadata accessor for PersonConditioningImage);
  v34 = sub_1D26B94BC(v28, v25);
  sub_1D284626C(v25, type metadata accessor for PersonConditioningImage);
  v35 = v28;
  v36 = type metadata accessor for PersonConditioningImage;
LABEL_13:
  sub_1D284626C(v35, v36);
  v49 = v34 ^ 1;
LABEL_16:
  *(a2 + v68) = v49 & 1;
LABEL_17:
  sub_1D22D7044(v72, v70);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9A28);
  v50 = swift_dynamicCast();
  v51 = *(v22 + 56);
  if (v50)
  {
    v51(v20, 0, 1, v21);
    v52 = v20;
    v53 = v69;
    sub_1D2846204(v52, v69, type metadata accessor for PersonConditioningImage);
    v54 = OBJC_IVAR____TtC23ImagePlaygroundInternal15CreationContext_drawOnImageRecipe;
    swift_beginAccess();
    v55 = *(a2 + v54);
    if (v55)
    {
      swift_endAccess();
      v56 = v55;
      v57 = sub_1D262AD28();
      [v56 setBaseImage_];

      sub_1D284626C(v53, type metadata accessor for PersonConditioningImage);
    }

    else
    {
      sub_1D284626C(v53, type metadata accessor for PersonConditioningImage);
      swift_endAccess();
    }
  }

  else
  {
    v51(v20, 1, 1, v21);
    sub_1D22BD238(v20, &qword_1EC6D9A40);
  }

  sub_1D22D7044(v72, v70);
  v58 = OBJC_IVAR____TtC23ImagePlaygroundInternal15CreationContext_activePerson;
  swift_beginAccess();
  sub_1D2846194(v70, a2 + v58);
  swift_endAccess();
  return __swift_destroy_boxed_opaque_existential_0(v72);
}

uint64_t sub_1D2846C54(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D2846C9C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D2846D6C()
{
  result = type metadata accessor for Bubble.BubbleType(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1D2846DD8()
{
  result = sub_1D2872008();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for CuratedPrompt();
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for CharacterAsset();
      if (v3 <= 0x3F)
      {
        result = type metadata accessor for PhotosPersonAsset();
        if (v4 <= 0x3F)
        {
          result = type metadata accessor for Prompt(319);
          if (v5 <= 0x3F)
          {
            result = type metadata accessor for PersonConditioningImage();
            if (v6 <= 0x3F)
            {
              result = type metadata accessor for SceneConditioningImage();
              if (v7 <= 0x3F)
              {
                result = type metadata accessor for SketchConditioningImage();
                if (v8 <= 0x3F)
                {
                  result = type metadata accessor for PlaygroundImage();
                  if (v9 <= 0x3F)
                  {
                    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
                    return 0;
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_1D2846EE0()
{
  v50 = type metadata accessor for PlaygroundImage();
  MEMORY[0x1EEE9AC00](v50);
  v49 = &v45 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = type metadata accessor for PhotosPersonAsset();
  MEMORY[0x1EEE9AC00](v47);
  v48 = &v45 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = type metadata accessor for CharacterAsset();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v46 = &v45 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for SketchConditioningImage();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for SceneConditioningImage();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for PersonConditioningImage();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Prompt(0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = (&v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = sub_1D2872008();
  v45 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v45 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for Bubble.BubbleType(0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = (&v45 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = type metadata accessor for CuratedPrompt();
  MEMORY[0x1EEE9AC00](v22 - 8);
  v24 = &v45 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D284914C(v51, v21);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 5)
  {
    v28 = v49;
    if (EnumCaseMultiPayload <= 7)
    {
      if (EnumCaseMultiPayload == 6)
      {
        sub_1D28491B0(v21, v12, type metadata accessor for PersonConditioningImage);
        v26 = sub_1D28717B8();
        v37 = type metadata accessor for PersonConditioningImage;
        v38 = v12;
      }

      else
      {
        sub_1D28491B0(v21, v9, type metadata accessor for SceneConditioningImage);
        v26 = sub_1D28717B8();
        v37 = type metadata accessor for SceneConditioningImage;
        v38 = v9;
      }

      goto LABEL_30;
    }

    if (EnumCaseMultiPayload == 8)
    {
      sub_1D28491B0(v21, v6, type metadata accessor for SketchConditioningImage);
      v26 = sub_1D28717B8();
      v37 = type metadata accessor for SketchConditioningImage;
      v38 = v6;
    }

    else
    {
      if (EnumCaseMultiPayload == 9)
      {
        v29 = *v21;
        v30 = v21[1];
        v52 = 0x2D676E6964616F6CLL;
        *&v53 = 0xE800000000000000;
        MEMORY[0x1D38A0C50](v29, v30);

        return v52;
      }

      sub_1D28491B0(v21, v49, type metadata accessor for PlaygroundImage);
      v26 = sub_1D28717B8();
      v37 = type metadata accessor for PlaygroundImage;
      v38 = v28;
    }

LABEL_30:
    sub_1D2849218(v38, v37);
    return v26;
  }

  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      v40 = v46;
      sub_1D28491B0(v21, v46, type metadata accessor for CharacterAsset);
      v26 = CharacterAsset.id.getter();
      v37 = type metadata accessor for CharacterAsset;
      v38 = v40;
    }

    else
    {
      if (EnumCaseMultiPayload == 4)
      {
        v24 = v48;
        sub_1D28491B0(v21, v48, type metadata accessor for PhotosPersonAsset);
        v32 = *(v24 + 2);
        v31 = *(v24 + 3);
        if (*(v24 + 4))
        {
          v52 = *(v24 + 4);
          v53 = *(v24 + 40);
          v33 = sub_1D24FBD9C();
          if (v34)
          {
            v35 = v33;
          }

          else
          {
            v35 = 0;
          }

          if (v34)
          {
            v36 = v34;
          }

          else
          {
            v36 = 0xE000000000000000;
          }

          v52 = v32;
          *&v53 = v31;
          sub_1D2870F68();
          MEMORY[0x1D38A0C50](v35, v36);

          v32 = v52;
          v31 = v53;
        }

        else
        {
          sub_1D2870F68();
        }

        v41 = &v24[*(v47 + 20)];
        v42 = *v41;
        v43 = *(v41 + 1);
        v52 = v32;
        *&v53 = v31;
        sub_1D2870F68();
        MEMORY[0x1D38A0C50](v42, v43);

        v26 = v52;
        v27 = type metadata accessor for PhotosPersonAsset;
        goto LABEL_29;
      }

      sub_1D28491B0(v21, v15, type metadata accessor for Prompt);
      v52 = *v15;
      v26 = sub_1D28795C8();
      v37 = type metadata accessor for Prompt;
      v38 = v15;
    }

    goto LABEL_30;
  }

  if ((EnumCaseMultiPayload - 1) < 2)
  {
    sub_1D28491B0(v21, v24, type metadata accessor for CuratedPrompt);
    v26 = *v24;
    sub_1D2870F68();
    v27 = type metadata accessor for CuratedPrompt;
LABEL_29:
    v37 = v27;
    v38 = v24;
    goto LABEL_30;
  }

  v39 = v45;
  (*(v45 + 32))(v18, v21, v16);
  v26 = sub_1D2871F98();
  (*(v39 + 8))(v18, v16);
  return v26;
}

uint64_t sub_1D2847634()
{
  v1 = type metadata accessor for PhotosPersonAsset();
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Bubble.BubbleType(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for CuratedPrompt();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = (v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D284914C(v0, v6);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if ((EnumCaseMultiPayload - 1) < 2)
  {
    sub_1D28491B0(v6, v9, type metadata accessor for CuratedPrompt);
    v14 = *v9;
    v13 = v9[1];
    sub_1D2870F68();
    sub_1D2849218(v9, type metadata accessor for CuratedPrompt);
    v16[0] = v14;
    v16[1] = v13;
    return sub_1D28782E8();
  }

  else if (EnumCaseMultiPayload == 9)
  {
    return *v6;
  }

  else if (EnumCaseMultiPayload == 4)
  {
    sub_1D28491B0(v6, v3, type metadata accessor for PhotosPersonAsset);
    v11 = *(v3 + 2);
    sub_1D2870F68();
    sub_1D2849218(v3, type metadata accessor for PhotosPersonAsset);
    return v11;
  }

  else
  {
    v15 = sub_1D2846EE0();
    sub_1D2849218(v6, type metadata accessor for Bubble.BubbleType);
    return v15;
  }
}

uint64_t sub_1D284786C@<X0>(uint64_t *a1@<X8>)
{
  v50 = a1;
  v48 = type metadata accessor for SketchConditioningImage();
  MEMORY[0x1EEE9AC00](v48);
  v47 = &v39 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = type metadata accessor for SceneConditioningImage();
  MEMORY[0x1EEE9AC00](v46);
  v45 = &v39 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for PersonConditioningImage();
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = type metadata accessor for Prompt(0);
  MEMORY[0x1EEE9AC00](v43);
  v44 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = type metadata accessor for PhotosPersonAsset();
  MEMORY[0x1EEE9AC00](v41);
  v42 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for CharacterAsset();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for CuratedPrompt();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1D2872008();
  v40 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for Bubble.BubbleType(0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v39 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D284914C(v49, v19);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 5)
  {
    v25 = v46;
    v13 = v47;
    v26 = v48;
    if (EnumCaseMultiPayload > 8)
    {
      result = sub_1D2849218(v19, type metadata accessor for Bubble.BubbleType);
      v33 = v50;
      *v50 = 0u;
      *(v33 + 1) = 0u;
      v33[4] = 0;
      return result;
    }

    if (EnumCaseMultiPayload == 6)
    {
      v34 = v3;
      v21 = type metadata accessor for PersonConditioningImage;
      v13 = v5;
      sub_1D28491B0(v19, v5, type metadata accessor for PersonConditioningImage);
      v22 = v50;
      v50[3] = v34;
      v23 = &unk_1EC6DFBB0;
      v24 = type metadata accessor for PersonConditioningImage;
    }

    else if (EnumCaseMultiPayload == 7)
    {
      v21 = type metadata accessor for SceneConditioningImage;
      v13 = v45;
      sub_1D28491B0(v19, v45, type metadata accessor for SceneConditioningImage);
      v22 = v50;
      v50[3] = v25;
      v23 = &qword_1EC6DF7E0;
      v24 = type metadata accessor for SceneConditioningImage;
    }

    else
    {
      v21 = type metadata accessor for SketchConditioningImage;
      sub_1D28491B0(v19, v47, type metadata accessor for SketchConditioningImage);
      v22 = v50;
      v50[3] = v26;
      v23 = &qword_1EC6DF7D8;
      v24 = type metadata accessor for SketchConditioningImage;
    }

    goto LABEL_18;
  }

  if (EnumCaseMultiPayload <= 2)
  {
    if (!EnumCaseMultiPayload)
    {
      v35 = *(v40 + 32);
      v35(v16, v19, v14);
      v36 = v50;
      v50[3] = v14;
      v36[4] = sub_1D284A0F8(&qword_1ED8A6C20, MEMORY[0x1E696E310]);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v36);
      return (v35)(boxed_opaque_existential_1, v16, v14);
    }

    v21 = type metadata accessor for CuratedPrompt;
    sub_1D28491B0(v19, v13, type metadata accessor for CuratedPrompt);
    v22 = v50;
    v50[3] = v11;
    v23 = &qword_1ED8A4A40;
    v24 = type metadata accessor for CuratedPrompt;
    goto LABEL_18;
  }

  if (EnumCaseMultiPayload == 3)
  {
    v21 = type metadata accessor for CharacterAsset;
    sub_1D28491B0(v19, v10, type metadata accessor for CharacterAsset);
    v38 = v50;
    v50[3] = v8;
    v38[4] = sub_1D284A0F8(&qword_1EC6D9A78, type metadata accessor for CharacterAsset);
    v29 = __swift_allocate_boxed_opaque_existential_1(v38);
    v30 = v10;
LABEL_19:
    v31 = v21;
    return sub_1D28491B0(v30, v29, v31);
  }

  if (EnumCaseMultiPayload != 4)
  {
    v21 = type metadata accessor for Prompt;
    v13 = v44;
    sub_1D28491B0(v19, v44, type metadata accessor for Prompt);
    v22 = v50;
    v50[3] = v43;
    v23 = &unk_1ED89E418;
    v24 = type metadata accessor for Prompt;
LABEL_18:
    v22[4] = sub_1D284A0F8(v23, v24);
    v29 = __swift_allocate_boxed_opaque_existential_1(v22);
    v30 = v13;
    goto LABEL_19;
  }

  v27 = v42;
  sub_1D28491B0(v19, v42, type metadata accessor for PhotosPersonAsset);
  v28 = v50;
  v50[3] = v41;
  v28[4] = sub_1D284A0F8(&qword_1EC6D8780, type metadata accessor for PhotosPersonAsset);
  v29 = __swift_allocate_boxed_opaque_existential_1(v28);
  v30 = v27;
  v31 = type metadata accessor for PhotosPersonAsset;
  return sub_1D28491B0(v30, v29, v31);
}

uint64_t sub_1D2847FA8@<X0>(__int128 *a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t a3@<X8>)
{
  v116 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA200);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v90 = &v85 - v6;
  v89 = type metadata accessor for SketchConditioningImage();
  v88 = *(v89 - 8);
  MEMORY[0x1EEE9AC00](v89);
  v86 = &v85 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA2C8);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v94 = &v85 - v9;
  v93 = type metadata accessor for SceneConditioningImage();
  v92 = *(v93 - 8);
  MEMORY[0x1EEE9AC00](v93);
  v87 = &v85 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9A40);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v98 = &v85 - v12;
  v97 = type metadata accessor for PersonConditioningImage();
  v96 = *(v97 - 8);
  MEMORY[0x1EEE9AC00](v97);
  v91 = &v85 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DDDC0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v105 = &v85 - v15;
  v16 = type metadata accessor for PhotosPersonAsset();
  v103 = *(v16 - 8);
  v104 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v100 = &v85 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DDDA0);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v112 = &v85 - v19;
  v20 = type metadata accessor for CharacterAsset();
  v110 = *(v20 - 8);
  v111 = v20;
  MEMORY[0x1EEE9AC00](v20);
  v102 = &v85 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6E1D20);
  v23 = MEMORY[0x1EEE9AC00](v22 - 8);
  v99 = &v85 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v106 = &v85 - v25;
  v26 = type metadata accessor for Prompt(0);
  v107 = *(v26 - 8);
  v108 = v26;
  v27 = MEMORY[0x1EEE9AC00](v26);
  v95 = &v85 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v101 = &v85 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9A30);
  MEMORY[0x1EEE9AC00](v30 - 8);
  v32 = &v85 - v31;
  v33 = sub_1D2872008();
  v34 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v109 = &v85 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA210);
  MEMORY[0x1EEE9AC00](v36 - 8);
  v38 = &v85 - v37;
  v39 = type metadata accessor for CuratedPrompt();
  v40 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39);
  v42 = &v85 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = type metadata accessor for Bubble(0);
  v114 = *(v43 - 8);
  v115 = v43;
  MEMORY[0x1EEE9AC00](v43);
  v113 = &v85 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = *a2;
  sub_1D22D7044(a1, v117);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9A10);
  v46 = swift_dynamicCast();
  v47 = *(v40 + 56);
  if (v46)
  {
    v47(v38, 0, 1, v39);
    sub_1D28491B0(v38, v42, type metadata accessor for CuratedPrompt);
    if ((v45 - 5) <= 1)
    {
      __swift_destroy_boxed_opaque_existential_0(a1);
      v48 = v42;
      v49 = v113;
      sub_1D28491B0(v48, v113, type metadata accessor for CuratedPrompt);
      goto LABEL_19;
    }

    if (*&v42[*(v39 + 48) + 8])
    {
      sub_1D22D79FC(a1, v117);
      v53 = v106;
      v54 = v108;
      if (swift_dynamicCast())
      {
        sub_1D2849218(v42, type metadata accessor for CuratedPrompt);
        (*(v107 + 56))(v53, 0, 1, v54);
        v55 = v53;
        v56 = v101;
LABEL_18:
        sub_1D28491B0(v55, v56, type metadata accessor for Prompt);
        v49 = v113;
        sub_1D28491B0(v56, v113, type metadata accessor for Prompt);
        goto LABEL_19;
      }

      (*(v107 + 56))(v53, 1, 1, v54);
      sub_1D22BD238(v53, &unk_1EC6E1D20);
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_0(a1);
    }

    v65 = v42;
    v49 = v113;
    sub_1D28491B0(v65, v113, type metadata accessor for CuratedPrompt);
    goto LABEL_19;
  }

  v47(v38, 1, 1, v39);
  sub_1D22BD238(v38, &qword_1EC6DA210);
  sub_1D22D7044(a1, v117);
  v50 = a1;
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
    (*(v34 + 56))(v32, 0, 1, v33);
    v51 = *(v34 + 32);
    v52 = v109;
    v51(v109, v32, v33);
    v49 = v113;
    v51(v113, v52, v33);
    goto LABEL_19;
  }

  (*(v34 + 56))(v32, 1, 1, v33);
  sub_1D22BD238(v32, &qword_1EC6D9A30);
  sub_1D22D7044(a1, v117);
  v57 = v111;
  v58 = v112;
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_0(v50);
    (*(v110 + 56))(v58, 0, 1, v57);
    v59 = v58;
    v60 = v102;
    sub_1D28491B0(v59, v102, type metadata accessor for CharacterAsset);
    v49 = v113;
    sub_1D28491B0(v60, v113, type metadata accessor for CharacterAsset);
    goto LABEL_19;
  }

  (*(v110 + 56))(v58, 1, 1, v57);
  sub_1D22BD238(v58, &unk_1EC6DDDA0);
  sub_1D22D7044(v50, v117);
  v61 = v104;
  v62 = v105;
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_0(v50);
    (*(v103 + 56))(v62, 0, 1, v61);
    v63 = v62;
    v64 = v100;
    sub_1D28491B0(v63, v100, type metadata accessor for PhotosPersonAsset);
    v49 = v113;
    sub_1D28491B0(v64, v113, type metadata accessor for PhotosPersonAsset);
    goto LABEL_19;
  }

  (*(v103 + 56))(v62, 1, 1, v61);
  sub_1D22BD238(v62, &unk_1EC6DDDC0);
  sub_1D22D7044(v50, v117);
  v66 = v99;
  v67 = v108;
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_0(v50);
    (*(v107 + 56))(v66, 0, 1, v67);
    v55 = v66;
    v56 = v95;
    goto LABEL_18;
  }

  (*(v107 + 56))(v66, 1, 1, v67);
  sub_1D22BD238(v66, &unk_1EC6E1D20);
  sub_1D22D7044(v50, v117);
  v71 = v98;
  v72 = v97;
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_0(v50);
    (*(v96 + 56))(v71, 0, 1, v72);
    v73 = v71;
    v74 = v91;
    sub_1D28491B0(v73, v91, type metadata accessor for PersonConditioningImage);
    v49 = v113;
    sub_1D28491B0(v74, v113, type metadata accessor for PersonConditioningImage);
  }

  else
  {
    (*(v96 + 56))(v71, 1, 1, v72);
    sub_1D22BD238(v71, &qword_1EC6D9A40);
    sub_1D22D7044(v50, v117);
    v75 = v94;
    v76 = v93;
    if (swift_dynamicCast())
    {
      __swift_destroy_boxed_opaque_existential_0(v50);
      (*(v92 + 56))(v75, 0, 1, v76);
      v77 = v75;
      v78 = v87;
      sub_1D28491B0(v77, v87, type metadata accessor for SceneConditioningImage);
      v49 = v113;
      sub_1D28491B0(v78, v113, type metadata accessor for SceneConditioningImage);
    }

    else
    {
      (*(v92 + 56))(v75, 1, 1, v76);
      sub_1D22BD238(v75, &qword_1EC6DA2C8);
      sub_1D22D79FC(v50, v117);
      v79 = v90;
      v80 = v89;
      v81 = swift_dynamicCast();
      v82 = *(v88 + 56);
      if ((v81 & 1) == 0)
      {
        v82(v79, 1, 1, v80);
        sub_1D22BD238(v79, &qword_1EC6DA200);
        v69 = 1;
        v68 = v116;
        return (*(v114 + 56))(v68, v69, 1, v115);
      }

      v82(v79, 0, 1, v80);
      v83 = v79;
      v84 = v86;
      sub_1D28491B0(v83, v86, type metadata accessor for SketchConditioningImage);
      v49 = v113;
      sub_1D28491B0(v84, v113, type metadata accessor for SketchConditioningImage);
    }
  }

LABEL_19:
  type metadata accessor for Bubble.BubbleType(0);
  swift_storeEnumTagMultiPayload();
  v68 = v116;
  sub_1D28491B0(v49, v116, type metadata accessor for Bubble);
  v69 = 0;
  return (*(v114 + 56))(v68, v69, 1, v115);
}

uint64_t sub_1D2849020@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D2846EE0();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1D2849048()
{
  sub_1D28797D8();
  sub_1D2846EE0();
  sub_1D2877F38();

  return sub_1D2879828();
}

uint64_t sub_1D28490A4()
{
  sub_1D2846EE0();
  sub_1D2877F38();
}

uint64_t sub_1D28490F4()
{
  sub_1D28797D8();
  sub_1D2846EE0();
  sub_1D2877F38();

  return sub_1D2879828();
}

uint64_t sub_1D284914C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Bubble.BubbleType(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D28491B0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D2849218(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D2849278(uint64_t a1, uint64_t a2)
{
  v134 = a1;
  v129 = type metadata accessor for PlaygroundImage();
  MEMORY[0x1EEE9AC00](v129);
  v121 = (&v113 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = type metadata accessor for SketchConditioningImage();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v120 = (&v113 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v114 = type metadata accessor for SceneConditioningImage();
  MEMORY[0x1EEE9AC00](v114);
  v119 = &v113 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for PersonConditioningImage();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v118 = &v113 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = type metadata accessor for PhotosPersonAsset();
  MEMORY[0x1EEE9AC00](v117);
  v115 = (&v113 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = type metadata accessor for CharacterAsset();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v116 = (&v113 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = type metadata accessor for CuratedPrompt();
  v13 = MEMORY[0x1EEE9AC00](v12 - 8);
  v133 = &v113 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v132 = &v113 - v15;
  v122 = sub_1D2872008();
  v131 = *(v122 - 8);
  MEMORY[0x1EEE9AC00](v122);
  v130 = &v113 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for Bubble.BubbleType(0);
  v18 = MEMORY[0x1EEE9AC00](v17);
  v127 = (&v113 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = MEMORY[0x1EEE9AC00](v18);
  v124 = (&v113 - v21);
  v22 = MEMORY[0x1EEE9AC00](v20);
  v126 = (&v113 - v23);
  v24 = MEMORY[0x1EEE9AC00](v22);
  v128 = (&v113 - v25);
  v26 = MEMORY[0x1EEE9AC00](v24);
  v125 = (&v113 - v27);
  v28 = MEMORY[0x1EEE9AC00](v26);
  v123 = (&v113 - v29);
  v30 = MEMORY[0x1EEE9AC00](v28);
  v32 = (&v113 - v31);
  v33 = MEMORY[0x1EEE9AC00](v30);
  v35 = &v113 - v34;
  v36 = MEMORY[0x1EEE9AC00](v33);
  v38 = &v113 - v37;
  v39 = MEMORY[0x1EEE9AC00](v36);
  v41 = &v113 - v40;
  MEMORY[0x1EEE9AC00](v39);
  v43 = &v113 - v42;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E3490);
  v45 = MEMORY[0x1EEE9AC00](v44 - 8);
  v47 = &v113 - v46;
  v48 = &v113 + *(v45 + 56) - v46;
  sub_1D284914C(v134, &v113 - v46);
  v49 = a2;
  v50 = v48;
  sub_1D284914C(v49, v48);
  v51 = v47;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 4)
  {
    v59 = v35;
    v60 = v41;
    v61 = v38;
    v62 = v130;
    v63 = v131;
    v64 = v132;
    v65 = v133;
    if (EnumCaseMultiPayload <= 1)
    {
      v70 = v50;
      if (!EnumCaseMultiPayload)
      {
        sub_1D284914C(v47, v43);
        if (!swift_getEnumCaseMultiPayload())
        {
          v101 = v63;
          v102 = *(v63 + 32);
          v103 = v122;
          v102(v62, v70, v122);
          v55 = MEMORY[0x1D389AA00](v43, v62);
          v104 = *(v101 + 8);
          v104(v62, v103);
          v104(v43, v103);
          goto LABEL_51;
        }

        (*(v63 + 8))(v43, v122);
        goto LABEL_61;
      }

      v53 = v60;
      sub_1D284914C(v47, v60);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_1D28491B0(v50, v64, type metadata accessor for CuratedPrompt);
        if (*v53 == *v64 && v53[1] == v64[1])
        {
          sub_1D2849218(v64, type metadata accessor for CuratedPrompt);
          v71 = v53;
          v72 = type metadata accessor for CuratedPrompt;
          goto LABEL_76;
        }

        v106 = sub_1D2879618();
        sub_1D2849218(v64, type metadata accessor for CuratedPrompt);
        sub_1D2849218(v53, type metadata accessor for CuratedPrompt);
        if ((v106 & 1) == 0)
        {
          goto LABEL_86;
        }

LABEL_77:
        sub_1D2849218(v51, type metadata accessor for Bubble.BubbleType);
        v55 = 1;
        return v55 & 1;
      }
    }

    else
    {
      if (EnumCaseMultiPayload != 2)
      {
        if (EnumCaseMultiPayload == 3)
        {
          v53 = v59;
          sub_1D284914C(v47, v59);
          if (swift_getEnumCaseMultiPayload() != 3)
          {
            v93 = type metadata accessor for CharacterAsset;
            goto LABEL_60;
          }

          v66 = v50;
          v50 = v116;
          sub_1D28491B0(v66, v116, type metadata accessor for CharacterAsset);
          v55 = _s23ImagePlaygroundInternal14CharacterAssetV2eeoiySbAC_ACtFZ_0(v53, v50);
          v56 = type metadata accessor for CharacterAsset;
          goto LABEL_49;
        }

        v53 = v32;
        sub_1D284914C(v47, v32);
        if (swift_getEnumCaseMultiPayload() != 4)
        {
          v93 = type metadata accessor for PhotosPersonAsset;
          goto LABEL_60;
        }

        v74 = v115;
        sub_1D28491B0(v50, v115, type metadata accessor for PhotosPersonAsset);
        v75 = v32[1];
        v144[0] = *v32;
        v144[1] = v75;
        v76 = v32[3];
        v78 = *v32;
        v77 = v32[1];
        v144[2] = v32[2];
        v144[3] = v76;
        v140 = v78;
        v141 = v77;
        v79 = v32[3];
        v142 = v32[2];
        v143 = v79;
        v80 = *v74;
        v81 = v74[1];
        v82 = v74[3];
        v145[2] = v74[2];
        v145[3] = v82;
        v83 = v74[1];
        v84 = v74[2];
        v85 = *v74;
        v145[0] = v80;
        v145[1] = v83;
        v136 = v85;
        v137 = v81;
        v86 = v74[3];
        v138 = v84;
        v139 = v86;
        sub_1D22D63B0(v144, v135);
        sub_1D22D63B0(v145, v135);
        v87 = _s23ImagePlaygroundInternal12PhotosPersonV2eeoiySbAC_ACtFZ_0(&v140, &v136);
        v146[0] = v136;
        v146[1] = v137;
        v146[2] = v138;
        v146[3] = v139;
        sub_1D22D640C(v146);
        v147[0] = v140;
        v147[1] = v141;
        v147[2] = v142;
        v147[3] = v143;
        sub_1D22D640C(v147);
        v88 = v117;
        if (v87)
        {
          if (v89 = *(v117 + 20), v90 = v53 + v89, v91 = v74 + v89, *(v53 + v89) == *(v74 + v89)) && *(v53 + v89 + 8) == *(v74 + v89 + 8) || (sub_1D2879618())
          {
            v92 = v91[24];
            if (v90[24])
            {
              if (!v91[24])
              {
                goto LABEL_84;
              }
            }

            else
            {
              if (*(v90 + 2) != *(v91 + 2))
              {
                v92 = 1;
              }

              if (v92)
              {
                goto LABEL_84;
              }
            }

            type metadata accessor for PhotosPersonImage();
            if (_s23ImagePlaygroundInternal0A10GenerationV07PreviewA0V2eeoiySbAE_AEtFZ_0())
            {
              v110 = *(v88 + 24);
              v111 = *(v53 + v110);
              v112 = *(v74 + v110);
              sub_1D2849218(v74, type metadata accessor for PhotosPersonAsset);
              sub_1D2849218(v53, type metadata accessor for PhotosPersonAsset);
              if (v111 == v112)
              {
                goto LABEL_77;
              }

LABEL_86:
              sub_1D2849218(v51, type metadata accessor for Bubble.BubbleType);
              goto LABEL_62;
            }
          }
        }

LABEL_84:
        sub_1D2849218(v74, type metadata accessor for PhotosPersonAsset);
        v109 = v53;
        v108 = type metadata accessor for PhotosPersonAsset;
LABEL_85:
        sub_1D2849218(v109, v108);
        goto LABEL_86;
      }

      v53 = v61;
      sub_1D284914C(v47, v61);
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        sub_1D28491B0(v50, v65, type metadata accessor for CuratedPrompt);
        if (*v53 == *v65 && v53[1] == v65[1])
        {
          sub_1D2849218(v65, type metadata accessor for CuratedPrompt);
          v71 = v53;
          v72 = type metadata accessor for CuratedPrompt;
LABEL_76:
          sub_1D2849218(v71, v72);
          goto LABEL_77;
        }

        v105 = sub_1D2879618();
        sub_1D2849218(v65, type metadata accessor for CuratedPrompt);
        sub_1D2849218(v53, type metadata accessor for CuratedPrompt);
        if ((v105 & 1) == 0)
        {
          goto LABEL_86;
        }

        goto LABEL_77;
      }
    }

    v93 = type metadata accessor for CuratedPrompt;
    goto LABEL_60;
  }

  if (EnumCaseMultiPayload > 7)
  {
    if (EnumCaseMultiPayload == 8)
    {
      v53 = v126;
      sub_1D284914C(v47, v126);
      if (swift_getEnumCaseMultiPayload() == 8)
      {
        v73 = v50;
        v50 = v120;
        sub_1D28491B0(v73, v120, type metadata accessor for SketchConditioningImage);
        v55 = _s23ImagePlaygroundInternal0A10GenerationV07PreviewA0V2eeoiySbAE_AEtFZ_0();
        v56 = type metadata accessor for SketchConditioningImage;
        goto LABEL_49;
      }

      v93 = type metadata accessor for SketchConditioningImage;
      goto LABEL_60;
    }

    if (EnumCaseMultiPayload == 9)
    {
      v67 = v124;
      sub_1D284914C(v47, v124);
      v69 = *v67;
      v68 = v67[1];
      if (swift_getEnumCaseMultiPayload() != 9)
      {

LABEL_61:
        sub_1D22BD238(v47, &qword_1EC6E3490);
LABEL_62:
        v55 = 0;
        return v55 & 1;
      }

      if (v69 == *v50 && v68 == v50[1])
      {
      }

      else
      {
        v107 = sub_1D2879618();

        if ((v107 & 1) == 0)
        {
          goto LABEL_86;
        }
      }

      goto LABEL_77;
    }

    v53 = v127;
    sub_1D284914C(v47, v127);
    if (swift_getEnumCaseMultiPayload() != 10)
    {
      v93 = type metadata accessor for PlaygroundImage;
      goto LABEL_60;
    }

    v99 = v50;
    v50 = v121;
    sub_1D28491B0(v99, v121, type metadata accessor for PlaygroundImage);
    v55 = _s23ImagePlaygroundInternal0A10GenerationV07PreviewA0V2eeoiySbAE_AEtFZ_0();
    v56 = type metadata accessor for PlaygroundImage;
LABEL_49:
    v57 = v56;
    v58 = v50;
    goto LABEL_50;
  }

  if (EnumCaseMultiPayload == 5)
  {
    v53 = v123;
    sub_1D284914C(v47, v123);
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      v55 = *v53 == *v50;
      v56 = type metadata accessor for Prompt;
      goto LABEL_49;
    }

    v93 = type metadata accessor for Prompt;
LABEL_60:
    sub_1D2849218(v53, v93);
    goto LABEL_61;
  }

  if (EnumCaseMultiPayload != 6)
  {
    v53 = v128;
    sub_1D284914C(v47, v128);
    if (swift_getEnumCaseMultiPayload() != 7)
    {
      v93 = type metadata accessor for SceneConditioningImage;
      goto LABEL_60;
    }

    v94 = v50;
    v95 = v119;
    sub_1D28491B0(v94, v119, type metadata accessor for SceneConditioningImage);
    if (_s23ImagePlaygroundInternal0A10GenerationV07PreviewA0V2eeoiySbAE_AEtFZ_0())
    {
      v96 = *(v114 + 20);
      v97 = *(v53 + v96);
      v98 = *(v95 + v96);
      sub_1D2849218(v95, type metadata accessor for SceneConditioningImage);
      if (v97 == 2)
      {
        if (v98 == 2)
        {
LABEL_75:
          v72 = type metadata accessor for SceneConditioningImage;
          v71 = v53;
          goto LABEL_76;
        }
      }

      else if (v98 != 2 && ((v98 ^ v97) & 1) == 0)
      {
        goto LABEL_75;
      }
    }

    else
    {
      sub_1D2849218(v95, type metadata accessor for SceneConditioningImage);
    }

    v108 = type metadata accessor for SceneConditioningImage;
    v109 = v53;
    goto LABEL_85;
  }

  v53 = v125;
  sub_1D284914C(v47, v125);
  if (swift_getEnumCaseMultiPayload() != 6)
  {
    v93 = type metadata accessor for PersonConditioningImage;
    goto LABEL_60;
  }

  v54 = v118;
  sub_1D28491B0(v50, v118, type metadata accessor for PersonConditioningImage);
  v55 = sub_1D26B94BC(v53, v54);
  v56 = type metadata accessor for PersonConditioningImage;
  v57 = type metadata accessor for PersonConditioningImage;
  v58 = v54;
LABEL_50:
  sub_1D2849218(v58, v56);
  sub_1D2849218(v53, v57);
LABEL_51:
  sub_1D2849218(v51, type metadata accessor for Bubble.BubbleType);
  return v55 & 1;
}

uint64_t sub_1D284A0F8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for CuratedPrompt()
{
  result = qword_1ED8A4A20;
  if (!qword_1ED8A4A20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D284A1B8()
{
  type metadata accessor for CuratedPromptCategory();
  if (v0 <= 0x3F)
  {
    sub_1D22D0510();
    if (v1 <= 0x3F)
    {
      sub_1D22F3EA0(319, qword_1ED8A6D28);
      if (v2 <= 0x3F)
      {
        sub_1D22F3EA0(319, &qword_1ED89CF70);
        if (v3 <= 0x3F)
        {
          sub_1D284A32C();
          if (v4 <= 0x3F)
          {
            sub_1D22F3EA0(319, &qword_1ED8A4A68);
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

unint64_t sub_1D284A32C()
{
  result = qword_1ED89CC60;
  if (!qword_1ED89CC60)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ED89CC60);
  }

  return result;
}

__n128 __swift_memcpy49_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1D284A3A0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 49))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 48);
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

uint64_t sub_1D284A3E8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 48) = -a2;
    }
  }

  return result;
}

unint64_t sub_1D284A45C()
{
  result = qword_1EC6E3498;
  if (!qword_1EC6E3498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E3498);
  }

  return result;
}

uint64_t sub_1D284A4B0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = sub_1D2872008();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D2871FC8();
  sub_1D284CB68(&qword_1ED8A6C08, MEMORY[0x1E696E310]);
  v9 = sub_1D2877F98();
  (*(v6 + 8))(v8, v5);
  if ((v9 & 1) == 0)
  {
    v19 = type metadata accessor for CuratedPrompt();
    if (a2)
    {
      v18 = *(v19 + 56);
    }

    else
    {
      v18 = *(v19 + 60);
    }

    goto LABEL_15;
  }

  if (a2)
  {
    sub_1D284BEE0();
    if (!v11)
    {
      v12 = type metadata accessor for CuratedPrompt();
      v13 = (v3 + *(v12 + 68));
      v14 = v13[1];
      if (v14)
      {
        v15 = *v13;
        v16 = HIBYTE(v14) & 0xF;
        if ((v14 & 0x2000000000000000) == 0)
        {
          v16 = v15 & 0xFFFFFFFFFFFFLL;
        }

        if (v16)
        {
          goto LABEL_16;
        }
      }

      sub_1D284BDC4();
      if (!v17)
      {
        v18 = *(v12 + 56);
LABEL_15:
        v15 = *(v3 + v18);
LABEL_16:
        sub_1D2870F68();
        return v15;
      }
    }
  }

  else
  {
    sub_1D284BEE0();
    if (!v20)
    {
      v22 = type metadata accessor for CuratedPrompt();
      v23 = (v3 + *(v22 + 72));
      v24 = v23[1];
      if (v24)
      {
        v15 = *v23;
        v25 = HIBYTE(v24) & 0xF;
        if ((v24 & 0x2000000000000000) == 0)
        {
          v25 = v15 & 0xFFFFFFFFFFFFLL;
        }

        if (v25)
        {
          goto LABEL_16;
        }
      }

      sub_1D284BDC4();
      if (!v26)
      {
        v18 = *(v22 + 60);
        goto LABEL_15;
      }
    }
  }

  return v10;
}

uint64_t sub_1D284A6E0()
{
  sub_1D2877F38();
}

uint64_t sub_1D284A814@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D284CE80();
  *a1 = result;
  return result;
}

void sub_1D284A844(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE200000000000000;
  v4 = 25705;
  v5 = 0xD000000000000013;
  v6 = 0x80000001D28AF120;
  if (v2 != 5)
  {
    v5 = 0xD000000000000015;
    v6 = 0x80000001D28AF140;
  }

  v7 = 0xEF656D614E64657ALL;
  v8 = 0x696C61636F6C6E75;
  if (v2 != 3)
  {
    v8 = 0x656C69466E6F6369;
    v7 = 0xEC000000656D616ELL;
  }

  if (*v1 <= 4u)
  {
    v5 = v8;
    v6 = v7;
  }

  v9 = 0xED00005F454C4241;
  v10 = 0x5A494C41434F4C5FLL;
  if (v2 != 1)
  {
    v10 = 0x79726F6765746163;
    v9 = 0xEA00000000004449;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  v13 = __OFSUB__(v2, 2);
  v11 = v2 == 2;
  v12 = v2 - 2 < 0;
  if (*v1 <= 2u)
  {
    v14 = v4;
  }

  else
  {
    v14 = v5;
  }

  if (!(v12 ^ v13 | v11))
  {
    v3 = v6;
  }

  *a1 = v14;
  a1[1] = v3;
}

unint64_t sub_1D284A940()
{
  v1 = *v0;
  v2 = 25705;
  v3 = 0xD000000000000013;
  if (v1 != 5)
  {
    v3 = 0xD000000000000015;
  }

  v4 = 0x696C61636F6C6E75;
  if (v1 != 3)
  {
    v4 = 0x656C69466E6F6369;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x5A494C41434F4C5FLL;
  if (v1 != 1)
  {
    v5 = 0x79726F6765746163;
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

uint64_t sub_1D284AA38@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D284CE80();
  *a1 = result;
  return result;
}

uint64_t sub_1D284AA60(uint64_t a1)
{
  v2 = sub_1D284CA40();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D284AA9C(uint64_t a1)
{
  v2 = sub_1D284CA40();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1D284AAD8(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v144 = a2;
  v145 = a3;
  v137 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE5A0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v135 = &v111 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v136 = &v111 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v134 = &v111 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E34A0);
  v138 = *(v11 - 8);
  v139 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v146 = &v111 - v12;
  v13 = type metadata accessor for CuratedPrompt();
  MEMORY[0x1EEE9AC00](v13);
  v15 = (&v111 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = *(v16 + 32);
  v18 = type metadata accessor for PlaygroundImage();
  v133 = *(v18 - 8);
  v20 = v133 + 56;
  v19 = *(v133 + 56);
  v142 = v17;
  v19(v15 + v17, 1, 1, v18);
  v141 = v13[9];
  v132 = v19;
  v19(v15 + v141, 1, 1, v18);
  v21 = (v15 + v13[11]);
  *v21 = 0;
  v21[1] = 0;
  v22 = (v15 + v13[12]);
  *v22 = 0;
  v22[1] = 0;
  v23 = v15 + v13[23];
  *(v23 + 1) = 0u;
  *(v23 + 2) = 0u;
  *v23 = 0u;
  v23[48] = -1;
  v24 = (v15 + v13[24]);
  *v24 = 0;
  v24[1] = 0;
  *(v15 + v13[25]) = 0;
  *(v15 + v13[26]) = 0;
  v25 = a1;
  v26 = a1[3];
  v140 = v25;
  __swift_project_boxed_opaque_existential_1(v25, v26);
  sub_1D284CA40();
  v27 = v143;
  sub_1D2879868();
  v28 = v27;
  if (v27)
  {

    __swift_destroy_boxed_opaque_existential_0(v140);
    v32 = 0;
    v33 = 0;
    goto LABEL_4;
  }

  v143 = v21;
  v130 = v18;
  v131 = v22;
  v129 = v20;
  v29 = v144;
  *(v15 + v13[22]) = v144;
  LOBYTE(v148) = 0;
  v30 = v29;
  v31 = sub_1D2879518();
  v144 = 0;
  v148 = v31;
  *v15 = sub_1D28795C8();
  v15[1] = v34;
  LOBYTE(v148) = 3;
  v35 = sub_1D28794E8();
  v127 = v15 + 1;
  v128 = v30;
  v15[4] = v35;
  v15[5] = v36;
  LOBYTE(v148) = 4;
  v37 = sub_1D28794C8();
  v33 = 1;
  v38 = (v15 + v13[13]);
  v39 = v37;
  *v38 = v37;
  v38[1] = v40;
  LOBYTE(v148) = 6;
  v41 = v40;
  v42 = sub_1D28794F8();
  v126 = v41;
  *(v15 + v13[20]) = v42 & 1;
  LOBYTE(v148) = 5;
  v43 = sub_1D28794C8();
  v45 = v143;
  v125 = v39;
  if (v44)
  {
    v46 = v44;
    if ((v44 & 0x2000000000000000) != 0)
    {
      v47 = HIBYTE(v44) & 0xF;
    }

    else
    {
      v47 = v43 & 0xFFFFFFFFFFFFLL;
    }

    if (v47)
    {
      if ((v44 & 0x2000000000000000) != 0)
      {
        v48 = v131;
        if ((v44 & 0xF00000000000000) != 0)
        {
LABEL_25:
          v131 = 0;
          v143 = 0;
          *v48 = v43;
          v48[1] = v46;
          goto LABEL_26;
        }
      }

      else
      {
        if ((v43 & 0xFFFFFFFFFFFFLL) != 0)
        {
          v48 = v131;
          if ((v43 & 0x1000000000000000) == 0)
          {
            v49 = sub_1D23BE880();
            v51 = v50;

            v48 = v131;
            v43 = v49;
            v46 = v51;
          }

          goto LABEL_25;
        }

        __break(1u);
      }

      __break(1u);
      goto LABEL_59;
    }
  }

  v52 = v126;
  *v45 = v39;
  v45[1] = v52;
  v53 = sub_1D2870F68();
  v46 = 0;
  v131 = v39;
  v143 = v53;
LABEL_26:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA2D0);
  v147 = 1;
  sub_1D25A3CD4();
  sub_1D2879528();
  v54 = v148;
  v55 = *(v148 + 16);
  v124 = v46;
  if (!v55)
  {
    goto LABEL_45;
  }

  v56 = sub_1D25D0410(0xD000000000000014, 0x80000001D28BB640);
  if ((v57 & 1) == 0 || !*(v54 + 16))
  {
    goto LABEL_45;
  }

  v58 = (*(v54 + 56) + 16 * v56);
  v59 = *v58;
  v60 = v58[1];
  sub_1D2870F68();
  v61 = sub_1D25D0410(0xD000000000000012, 0x80000001D28C5030);
  if ((v62 & 1) == 0 || !*(v54 + 16))
  {

LABEL_45:

LABEL_46:
    LOBYTE(v148) = 1;
    sub_1D28791F8();
    swift_allocError();
    sub_1D284CA94();
    v100 = v146;
    v101 = v139;
    sub_1D28791D8();
    swift_willThrow();

    v32 = 0;
LABEL_47:
    v102 = v138;

    (*(v102 + 8))(v100, v101);
    __swift_destroy_boxed_opaque_existential_0(v140);

    v28 = v144;
    if (v32)
    {
      v32 = 1;
    }

LABEL_4:
    sub_1D25042E8(v15 + v142);
    sub_1D25042E8(v15 + v141);

    if (v33)
    {

      if (!v32)
      {
LABEL_6:
        if (v28)
        {
          return;
        }

LABEL_10:

        return;
      }
    }

    else if (!v32)
    {
      goto LABEL_6;
    }

    if (v28)
    {
      return;
    }

    goto LABEL_10;
  }

  v123 = v15;
  v122 = v13;
  v63 = (*(v54 + 56) + 16 * v61);
  v64 = *v63;
  v65 = v63[1];
  sub_1D2870F68();
  v66 = sub_1D25D0410(0xD000000000000015, 0x80000001D28C5050);
  if ((v67 & 1) == 0 || !*(v54 + 16))
  {
    goto LABEL_55;
  }

  v68 = (*(v54 + 56) + 16 * v66);
  v69 = v68[1];
  v120 = *v68;
  v121 = v69;
  sub_1D2870F68();
  v70 = sub_1D25D0410(0xD000000000000024, 0x80000001D28C5070);
  if ((v71 & 1) == 0 || !*(v54 + 16))
  {
LABEL_54:

LABEL_55:

    v13 = v122;
    v15 = v123;
    goto LABEL_46;
  }

  v72 = (*(v54 + 56) + 16 * v70);
  v73 = v72[1];
  v118 = *v72;
  v119 = v73;
  sub_1D2870F68();
  sub_1D25D0410(0x616C707369447369, 0xEB00000000646579);
  if ((v74 & 1) == 0 || (sub_1D2870F68(), v75 = sub_1D2878068(), , v117 = [v75 BOOLValue], v75, !*(v54 + 16)) || (v76 = sub_1D25D0410(0xD000000000000019, 0x80000001D28C50A0), (v77 & 1) == 0) || !*(v54 + 16))
  {
LABEL_53:

    goto LABEL_54;
  }

  v78 = (*(v54 + 56) + 16 * v76);
  v79 = v78[1];
  v115 = *v78;
  v116 = v79;
  sub_1D2870F68();
  v80 = sub_1D25D0410(0xD00000000000001CLL, 0x80000001D28C50C0);
  if ((v81 & 1) == 0 || !*(v54 + 16))
  {
LABEL_60:

    goto LABEL_53;
  }

  v82 = (*(v54 + 56) + 16 * v80);
  v83 = v82[1];
  v113 = *v82;
  v114 = v83;
  sub_1D2870F68();
  v84 = sub_1D25D0410(0xD00000000000002BLL, 0x80000001D28C50E0);
  if ((v85 & 1) == 0 || !*(v54 + 16))
  {
LABEL_59:

    goto LABEL_60;
  }

  v86 = (*(v54 + 56) + 16 * v84);
  v87 = v86[1];
  v111 = *v86;
  v112 = v87;
  sub_1D2870F68();
  sub_1D25D0410(0xD000000000000025, 0x80000001D28C5110);
  if ((v88 & 1) == 0)
  {

    goto LABEL_59;
  }

  sub_1D2870F68();

  v89 = sub_1D2878068();

  v90 = [v89 BOOLValue];

  v91 = v123;
  v123[2] = v59;
  v91[3] = v60;
  v92 = v122;
  v93 = (v91 + v122[14]);
  *v93 = v64;
  v93[1] = v65;
  v94 = (v91 + v92[15]);
  *v94 = v120;
  v94[1] = v121;
  v95 = (v91 + v92[16]);
  *v95 = v118;
  v95[1] = v119;
  v96 = (v91 + v92[17]);
  *v96 = v115;
  v96[1] = v116;
  v97 = (v91 + v92[18]);
  *v97 = v113;
  v97[1] = v114;
  v98 = (v91 + v92[19]);
  *v98 = v111;
  v98[1] = v112;
  *(v91 + v92[21]) = v117;
  *(v91 + v92[10]) = v90;
  LOBYTE(v148) = 2;
  v99 = sub_1D2879508();
  if (!*(v145 + 16) || (v103 = sub_1D25D0574(v99), (v104 & 1) == 0))
  {
    LOBYTE(v148) = 2;
    sub_1D28791F8();
    swift_allocError();
    sub_1D284CA94();
    v100 = v146;
    v101 = v139;
    sub_1D28791D8();
    swift_willThrow();

    v32 = 1;
    v13 = v122;
    v15 = v123;
    goto LABEL_47;
  }

  v123[6] = *(*(v145 + 56) + 8 * v103);
  sub_1D2870F78();
  if (!v124)
  {
    v105 = v134;
    v106 = v123;
    sub_1D284BA28(v131, v143, 1, v134);
    sub_1D284CAF8(v105, v106 + v141);
  }

  v107 = v135;
  sub_1D284BA28(v125, v126, 0, v135);

  (*(v138 + 8))(v146, v139);
  v108 = *(v133 + 48);
  if (v108(v107, 1, v130) == 1)
  {
    sub_1D247E07C(v123 + v141, v136);
    if (v108(v135, 1, v130) != 1)
    {
      sub_1D25042E8(v135);
    }
  }

  else
  {
    v109 = v136;
    sub_1D23EEBD4(v135, v136);
    v132(v109, 0, 1, v130);
  }

  v110 = v123;
  sub_1D284CAF8(v136, v123 + v142);
  sub_1D26D643C(v110, v137);
  __swift_destroy_boxed_opaque_existential_0(v140);
  sub_1D284CBB0(v110, type metadata accessor for CuratedPrompt);
}

uint64_t sub_1D284BA28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v10 = sub_1D2873CB8();
  v11 = MEMORY[0x1EEE9AC00](v10);
  if (a2)
  {
    if (a3)
    {
      v12 = 0x696A6F6D45;
    }

    else
    {
      v12 = 0;
    }

    if (a3)
    {
      v13 = 0xE500000000000000;
    }

    else
    {
      v13 = 0xE000000000000000;
    }

    MEMORY[0x1D38A0C50](v12, v13, v11);

    MEMORY[0x1D38A0C50](0x2F73656C62627542, 0xE800000000000000);
    MEMORY[0x1D38A0C50](a1, a2);
    v14 = *(v5 + *(type metadata accessor for CuratedPrompt() + 88));
    sub_1D2870F68();
    sub_1D262D084(0, 0xE000000000000000, v14, a4);
    v18 = type metadata accessor for PlaygroundImage();
    (*(*(v18 - 8) + 56))(a4, 0, 1, v18);
  }

  else
  {
    v15 = type metadata accessor for PlaygroundImage();
    v16 = *(*(v15 - 8) + 56);

    return v16(a4, 1, 1, v15);
  }
}

void sub_1D284BDC4()
{
  if (*(v0 + *(type metadata accessor for CuratedPrompt() + 48) + 8))
  {
    if (qword_1ED89CD48 != -1)
    {
      swift_once();
    }

    v1 = qword_1ED8B0010;
    v2 = sub_1D2878068();
    v3 = [objc_opt_self() emojiTokenWithString:v2 localeData:v1];

    if (v3)
    {
      v4 = [v3 nameForType_];
      if (v4)
      {
        v5 = v4;
        sub_1D28780A8();
      }

      else
      {
      }
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_1D284BEE0()
{
  if (*(v0 + *(type metadata accessor for CuratedPrompt() + 48) + 8))
  {
    if (qword_1ED89CD48 != -1)
    {
      swift_once();
    }

    v1 = qword_1ED8B0010;
    v2 = sub_1D2878068();
    v3 = [objc_opt_self() emojiTokenWithString:v2 localeData:v1];

    if (v3)
    {
      if ([v3 emojiTokenRef] && (v4 = CEMEmojiTokenCopyGenmojiDescription()) != 0)
      {
        v5 = v4;
        sub_1D28780A8();
      }

      else
      {
      }
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_1D284C004()
{
  v1 = type metadata accessor for PlaygroundImage();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE5A0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v17 - v9;
  sub_1D2877F38();
  sub_1D2877F38();
  sub_1D2877F38();
  MEMORY[0x1D38A2260](*(*(v0 + 48) + 16));
  v11 = type metadata accessor for CuratedPrompt();
  sub_1D247E07C(v0 + v11[8], v10);
  v12 = *(v2 + 48);
  if (v12(v10, 1, v1) == 1)
  {
    sub_1D28797F8();
  }

  else
  {
    sub_1D23EEBD4(v10, v4);
    sub_1D28797F8();
    sub_1D2871818();
    sub_1D284CB68(&qword_1ED8A6CB0, MEMORY[0x1E69695A8]);
    sub_1D2877F08();
    sub_1D284CBB0(v4, type metadata accessor for PlaygroundImage);
  }

  sub_1D247E07C(v0 + v11[9], v7);
  if (v12(v7, 1, v1) == 1)
  {
    sub_1D28797F8();
  }

  else
  {
    sub_1D23EEBD4(v7, v4);
    sub_1D28797F8();
    sub_1D2871818();
    sub_1D284CB68(&qword_1ED8A6CB0, MEMORY[0x1E69695A8]);
    sub_1D2877F08();
    sub_1D284CBB0(v4, type metadata accessor for PlaygroundImage);
  }

  sub_1D28797F8();
  if (*(v0 + v11[11] + 8))
  {
    sub_1D28797F8();
    sub_1D2877F38();
  }

  else
  {
    sub_1D28797F8();
  }

  if (*(v0 + v11[12] + 8))
  {
    sub_1D28797F8();
    sub_1D2877F38();
  }

  else
  {
    sub_1D28797F8();
  }

  if (*(v0 + v11[13] + 8))
  {
    sub_1D28797F8();
    sub_1D2877F38();
  }

  else
  {
    sub_1D28797F8();
  }

  sub_1D2877F38();
  sub_1D2877F38();
  if (*(v0 + v11[16] + 8))
  {
    sub_1D28797F8();
    sub_1D2877F38();
  }

  else
  {
    sub_1D28797F8();
  }

  if (*(v0 + v11[17] + 8))
  {
    sub_1D28797F8();
    sub_1D2877F38();
  }

  else
  {
    sub_1D28797F8();
  }

  if (*(v0 + v11[18] + 8))
  {
    sub_1D28797F8();
    sub_1D2877F38();
  }

  else
  {
    sub_1D28797F8();
  }

  if (*(v0 + v11[19] + 8))
  {
    sub_1D28797F8();
    sub_1D2877F38();
  }

  else
  {
    sub_1D28797F8();
  }

  sub_1D28797F8();
  sub_1D28797F8();
  sub_1D2878D88();
  v13 = v0 + v11[23];
  v14 = *(v13 + 48);
  if (v14 == 255)
  {
    sub_1D28797F8();
  }

  else
  {
    v15 = *(v13 + 16);
    v17[0] = *v13;
    v17[1] = v15;
    v17[2] = *(v13 + 32);
    v18 = v14 & 1;
    sub_1D28797F8();
    sub_1D284C750();
  }

  if (*(v0 + v11[24] + 8))
  {
    sub_1D28797F8();
    sub_1D2877F38();
  }

  else
  {
    sub_1D28797F8();
  }

  sub_1D28797F8();
  return sub_1D28797F8();
}

uint64_t sub_1D284C5E8()
{
  v1 = *(v0 + 16);
  sub_1D2870F68();
  return v1;
}

uint64_t sub_1D284C628()
{
  v1 = *(*(v0 + 48) + 24);
  swift_bridgeObjectRetain_n();
  return v1;
}

uint64_t sub_1D284C6D0()
{
  sub_1D28797D8();
  sub_1D284C004();
  return sub_1D2879828();
}

uint64_t sub_1D284C714()
{
  sub_1D28797D8();
  sub_1D284C004();
  return sub_1D2879828();
}

uint64_t sub_1D284C750()
{
  v1 = *(v0 + 8);
  if (*(v0 + 48))
  {
    v2 = *(v0 + 24);
    MEMORY[0x1D38A2260](1);
    if (v1)
    {
      sub_1D28797F8();
      sub_1D2877F38();
      if (v2)
      {
LABEL_4:
        sub_1D28797F8();
        sub_1D2877F38();
        goto LABEL_8;
      }
    }

    else
    {
      sub_1D28797F8();
      if (v2)
      {
        goto LABEL_4;
      }
    }

    sub_1D28797F8();
  }

  else
  {
    MEMORY[0x1D38A2260](0);
  }

LABEL_8:

  return sub_1D2877F38();
}

uint64_t sub_1D284C840(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v5[2] = *(a1 + 32);
  v6 = *(a1 + 48);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v7[2] = *(a2 + 32);
  v8 = *(a2 + 48);
  return sub_1D284CC10(v5, v7) & 1;
}

uint64_t sub_1D284C89C()
{
  sub_1D28797D8();
  sub_1D284C750();
  return sub_1D2879828();
}

uint64_t sub_1D284C8E0()
{
  sub_1D28797D8();
  sub_1D284C750();
  return sub_1D2879828();
}

uint64_t sub_1D284C964(uint64_t a1)
{
  result = sub_1D284CB68(&qword_1ED8A4A48, type metadata accessor for CuratedPrompt);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D284C9BC(uint64_t a1)
{
  *(a1 + 8) = sub_1D284CB68(&unk_1ED8A4A30, type metadata accessor for CuratedPrompt);
  result = sub_1D284CB68(&qword_1ED8A4A58, type metadata accessor for CuratedPrompt);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1D284CA40()
{
  result = qword_1ED8A4A80[0];
  if (!qword_1ED8A4A80[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED8A4A80);
  }

  return result;
}

unint64_t sub_1D284CA94()
{
  result = qword_1EC6E34A8;
  if (!qword_1EC6E34A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E34A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E34A8);
  }

  return result;
}

uint64_t sub_1D284CAF8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE5A0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D284CB68(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D284CBB0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D284CC10(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v5 = a1[1];
  if ((a1[6] & 1) == 0)
  {
    if ((*(a2 + 48) & 1) == 0)
    {
      if (v4 == *a2 && v5 == *(a2 + 8))
      {
        return 1;
      }

      goto LABEL_15;
    }

    return 0;
  }

  if ((*(a2 + 48) & 1) == 0)
  {
    return 0;
  }

  v6 = a1[2];
  v7 = a1[3];
  v8 = a1[4];
  v9 = a1[5];
  v10 = *(a2 + 8);
  v11 = *(a2 + 16);
  v13 = *(a2 + 24);
  v12 = *(a2 + 32);
  v14 = *(a2 + 40);
  if (v5)
  {
    if (!v10 || (v4 != *a2 || v5 != v10) && (sub_1D2879618() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v10)
  {
    return 0;
  }

  if (!v7)
  {
    if (!v13)
    {
      goto LABEL_26;
    }

    return 0;
  }

  if (!v13 || (v6 != v11 || v7 != v13) && (sub_1D2879618() & 1) == 0)
  {
    return 0;
  }

LABEL_26:
  if (v8 == v12 && v9 == v14)
  {
    return 1;
  }

LABEL_15:

  return sub_1D2879618();
}

unint64_t sub_1D284CD7C()
{
  result = qword_1EC6E34B0;
  if (!qword_1EC6E34B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E34B0);
  }

  return result;
}

unint64_t sub_1D284CDD4()
{
  result = qword_1ED8A4A70;
  if (!qword_1ED8A4A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8A4A70);
  }

  return result;
}

unint64_t sub_1D284CE2C()
{
  result = qword_1ED8A4A78;
  if (!qword_1ED8A4A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8A4A78);
  }

  return result;
}

uint64_t sub_1D284CE80()
{
  v0 = sub_1D2879488();

  if (v0 >= 7)
  {
    return 7;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1D284CECC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v55 = a3;
  v5 = sub_1D2873CB8();
  v51 = *(v5 - 8);
  v52 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v53 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9D40);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v50 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E34B8);
  v11 = v10 - 8;
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v50 - v12;
  v56 = a1;
  v57 = a2;
  sub_1D22BD06C();
  sub_1D2870F68();
  v14 = sub_1D2876698();
  v16 = v15;
  v18 = v17;
  v54 = v19;
  KeyPath = swift_getKeyPath();
  v21 = &v13[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF2F8) + 36)];
  v22 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF300) + 28);
  v23 = *MEMORY[0x1E697E6F8];
  v24 = sub_1D2874E88();
  (*(*(v24 - 8) + 104))(v21 + v22, v23, v24);
  *v21 = KeyPath;
  *v13 = v14;
  *(v13 + 1) = v16;
  v13[16] = v18 & 1;
  *(v13 + 3) = v54;
  v25 = sub_1D28763F8();
  (*(*(v25 - 8) + 56))(v9, 1, 1, v25);
  v26 = sub_1D2876448();
  sub_1D26AA3D4(v9);
  v27 = swift_getKeyPath();
  v28 = &v13[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF308) + 36)];
  *v28 = v27;
  v28[1] = v26;
  LOBYTE(v26) = sub_1D2876338();
  sub_1D2874298();
  v29 = &v13[*(v11 + 44)];
  *v29 = v26;
  *(v29 + 1) = v30;
  *(v29 + 2) = v31;
  *(v29 + 3) = v32;
  *(v29 + 4) = v33;
  v29[40] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E34C0);
  swift_allocObject();
  MEMORY[0x1D389D4C0](v13);
  sub_1D2874A18();
  v34 = sub_1D28749F8();
  if (v34)
  {
    v35 = v34;
    v36 = type metadata accessor for PlaygroundImage();
    v37 = v55;
    v38 = (v55 + v36[9]);
    *v38 = 0u;
    v38[1] = 0u;
    *(v37 + v36[10]) = xmmword_1D28809A0;
    v39 = v36[11];
    v40 = sub_1D2873AA8();
    (*(*(v40 - 8) + 56))(v37 + v39, 1, 1, v40);
    *v37 = v35;
    *(v37 + 8) = 0;
    *(v37 + 24) = 1;
    *(v37 + 16) = 0;
    *(v37 + 32) = 0;
    *(v37 + 40) = 0;
    *(v37 + v36[12]) = 1;
    sub_1D2871808();

    return (*(*(v36 - 1) + 56))(v37, 0, 1, v36);
  }

  else
  {
    v43 = v51;
    v42 = v52;
    v44 = v55;
    v45 = v53;
    sub_1D2872708();
    v46 = sub_1D2873CA8();
    v47 = sub_1D2878A18();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      *v48 = 0;
      _os_log_impl(&dword_1D226E000, v46, v47, "Can not render emoji", v48, 2u);
      MEMORY[0x1D38A3520](v48, -1, -1);
    }

    (*(v43 + 8))(v45, v42);
    v49 = type metadata accessor for PlaygroundImage();
    return (*(*(v49 - 8) + 56))(v44, 1, 1, v49);
  }
}

uint64_t type metadata accessor for CharacterRecipe()
{
  result = qword_1ED8A4158;
  if (!qword_1ED8A4158)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D284D478()
{
  result = type metadata accessor for ImageGenerationPerson.SkinTone();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1D284D4F4(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E34D0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D284E0C8();
  sub_1D2879888();
  v10[15] = *v3;
  v10[14] = 0;
  sub_1D284E11C();
  sub_1D2879598();
  if (!v2)
  {
    type metadata accessor for CharacterRecipe();
    v10[13] = 1;
    type metadata accessor for ImageGenerationPerson.SkinTone();
    sub_1D284E22C(&qword_1EC6E34E8, type metadata accessor for ImageGenerationPerson.SkinTone);
    sub_1D2879598();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1D284D6C4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v4 = type metadata accessor for ImageGenerationPerson.SkinTone();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E34F0);
  v23 = *(v7 - 8);
  v24 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v20 - v8;
  v10 = type metadata accessor for CharacterRecipe();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a1[3];
  v25 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v13);
  sub_1D284E0C8();
  sub_1D2879868();
  if (!v2)
  {
    v14 = v12;
    v15 = v23;
    v27 = 0;
    sub_1D284E170();
    v16 = v24;
    sub_1D2879528();
    v21 = v14;
    *v14 = v28;
    v26 = 1;
    sub_1D284E22C(&qword_1EC6E3500, type metadata accessor for ImageGenerationPerson.SkinTone);
    sub_1D2879528();
    (*(v15 + 8))(v9, v16);
    v17 = *(v10 + 20);
    v18 = v21;
    sub_1D284E1C4(v6, &v21[v17], type metadata accessor for ImageGenerationPerson.SkinTone);
    sub_1D284E1C4(v18, v22, type metadata accessor for CharacterRecipe);
  }

  return __swift_destroy_boxed_opaque_existential_0(v25);
}

uint64_t sub_1D284D9B0()
{
  if (*v0)
  {
    return 0x656E6F546E696B73;
  }

  else
  {
    return 0x6E61726165707061;
  }
}

uint64_t sub_1D284D9F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6E61726165707061 && a2 == 0xEA00000000006563;
  if (v6 || (sub_1D2879618() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x656E6F546E696B73 && a2 == 0xE800000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1D2879618();

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

uint64_t sub_1D284DAD4(uint64_t a1)
{
  v2 = sub_1D284E0C8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D284DB10(uint64_t a1)
{
  v2 = sub_1D284E0C8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D284DB7C(_BYTE *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  if (*a1 == 3)
  {
    if (v2 == 3)
    {
      goto LABEL_13;
    }

LABEL_5:
    v3 = 0;
    return v3 & 1;
  }

  if (v2 == 3)
  {
    goto LABEL_5;
  }

  v4 = sub_1D2873768();
  v6 = v5;
  if (v4 == sub_1D2873768() && v6 == v7)
  {

    goto LABEL_13;
  }

  v9 = sub_1D2879618();

  if ((v9 & 1) == 0)
  {
    goto LABEL_5;
  }

LABEL_13:
  sub_1D28737A8();
  sub_1D284E22C(&qword_1EC6D8BA8, MEMORY[0x1E69E01B8]);
  sub_1D2878368();
  sub_1D2878368();
  if (v13 == v11 && v14 == v12)
  {
    v3 = 1;
  }

  else
  {
    v3 = sub_1D2879618();
  }

  return v3 & 1;
}

uint64_t sub_1D284DD10()
{
  sub_1D28797D8();
  if (*v0 == 3)
  {
    sub_1D28797F8();
  }

  else
  {
    sub_1D28797F8();
    sub_1D2873768();
    sub_1D2877F38();
  }

  sub_1D28737A8();
  sub_1D284E22C(&qword_1EC6DC168, MEMORY[0x1E69E01B8]);
  sub_1D2877F08();
  return sub_1D2879828();
}

uint64_t sub_1D284DDFC()
{
  if (*v0 == 3)
  {
    sub_1D28797F8();
  }

  else
  {
    sub_1D28797F8();
    sub_1D2873768();
    sub_1D2877F38();
  }

  sub_1D28737A8();
  sub_1D284E22C(&qword_1EC6DC168, MEMORY[0x1E69E01B8]);
  return sub_1D2877F08();
}

uint64_t sub_1D284DEDC()
{
  sub_1D28797D8();
  if (*v0 == 3)
  {
    sub_1D28797F8();
  }

  else
  {
    sub_1D28797F8();
    sub_1D2873768();
    sub_1D2877F38();
  }

  sub_1D28737A8();
  sub_1D284E22C(&qword_1EC6DC168, MEMORY[0x1E69E01B8]);
  sub_1D2877F08();
  return sub_1D2879828();
}

uint64_t sub_1D284DFC4@<X0>(uint64_t *a1@<X8>)
{
  if (*v1 == 3)
  {
    v3 = 0xEB00000000646569;
    v4 = 0x6669636570736E75;
  }

  else
  {
    v4 = sub_1D2873768();
    v3 = v5;
  }

  v6 = _s23ImagePlaygroundInternal0A16GenerationPersonV8SkinToneV2idSSvg_0();
  v8 = v7;
  sub_1D2870F68();
  MEMORY[0x1D38A0C50](v6, v8);

  *a1 = v4;
  a1[1] = v3;
  return result;
}

unint64_t sub_1D284E0C8()
{
  result = qword_1EC6E34D8;
  if (!qword_1EC6E34D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E34D8);
  }

  return result;
}

unint64_t sub_1D284E11C()
{
  result = qword_1EC6E34E0;
  if (!qword_1EC6E34E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E34E0);
  }

  return result;
}

unint64_t sub_1D284E170()
{
  result = qword_1EC6E34F8;
  if (!qword_1EC6E34F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E34F8);
  }

  return result;
}

uint64_t sub_1D284E1C4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D284E22C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D284E274(_BYTE *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  if (*a1 == 3)
  {
    if (v2 == 3)
    {
      goto LABEL_13;
    }

LABEL_5:
    v3 = 0;
    return v3 & 1;
  }

  if (v2 == 3)
  {
    goto LABEL_5;
  }

  v4 = sub_1D2873768();
  v6 = v5;
  if (v4 == sub_1D2873768() && v6 == v7)
  {

    goto LABEL_13;
  }

  v9 = sub_1D2879618();

  if ((v9 & 1) == 0)
  {
    goto LABEL_5;
  }

LABEL_13:
  type metadata accessor for CharacterRecipe();
  sub_1D28737A8();
  sub_1D284E22C(&qword_1EC6D8BA8, MEMORY[0x1E69E01B8]);
  sub_1D2878368();
  sub_1D2878368();
  if (v13 == v11 && v14 == v12)
  {
    v3 = 1;
  }

  else
  {
    v3 = sub_1D2879618();
  }

  return v3 & 1;
}

unint64_t sub_1D284E418()
{
  result = qword_1EC6E3508;
  if (!qword_1EC6E3508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E3508);
  }

  return result;
}

unint64_t sub_1D284E470()
{
  result = qword_1EC6E3510;
  if (!qword_1EC6E3510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E3510);
  }

  return result;
}

unint64_t sub_1D284E4C8()
{
  result = qword_1EC6E3518;
  if (!qword_1EC6E3518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E3518);
  }

  return result;
}

uint64_t sub_1D284E51C@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v28 = a3;
  v29 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE5A0);
  v6 = MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v27 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v27 - v12;
  v14 = type metadata accessor for PlaygroundImage();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v27 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v27 - v19;
  swift_beginAccess();
  v21 = *(v3 + 16);
  if (*(v21 + 16) && (v22 = sub_1D25D05B0(v29, a2), (v23 & 1) != 0))
  {
    sub_1D239A330(*(v21 + 56) + *(v15 + 72) * v22, v20);
    v24 = v20;
    v25 = v28;
    sub_1D23EEBD4(v24, v28);
    swift_endAccess();
    return (*(v15 + 56))(v25, 0, 1, v14);
  }

  else
  {
    swift_endAccess();
    sub_1D284E808(v29, a2, v13, 320.0);
    sub_1D247E07C(v13, v11);
    if ((*(v15 + 48))(v11, 1, v14) == 1)
    {
      sub_1D22BD238(v11, &unk_1EC6DE5A0);
    }

    else
    {
      sub_1D23EEBD4(v11, v18);
      sub_1D239A330(v18, v8);
      (*(v15 + 56))(v8, 0, 1, v14);
      swift_beginAccess();
      sub_1D2870F68();
      sub_1D25CE748(v8, v29, a2);
      swift_endAccess();
      sub_1D23D4DFC(v18);
    }

    return sub_1D268B6D8(v13, v28);
  }
}

CGColorSpace *sub_1D284E808@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  v117 = a2;
  v119 = a1;
  v115 = a3;
  v106 = sub_1D2873C58();
  v105 = *(v106 - 8);
  MEMORY[0x1EEE9AC00](v106);
  v104 = v102 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = sub_1D2873CB8();
  v113 = *(v114 - 8);
  v6 = MEMORY[0x1EEE9AC00](v114);
  v109 = v102 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v102[0] = v102 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE5A0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v102 - v10;
  v12 = sub_1D2873C48();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v110 = v102 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = v102 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v20 = v102 - v19;
  v123 = sub_1D2873C28();
  v21 = *(v123 - 8);
  v22 = MEMORY[0x1EEE9AC00](v123);
  v118 = v102 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x1EEE9AC00](v22);
  v26 = v102 - v25;
  MEMORY[0x1EEE9AC00](v24);
  v28 = v102 - v27;
  sub_1D28720E8();
  sub_1D2873C38();
  sub_1D2873BF8();
  v121 = *(v13 + 8);
  v120 = v13 + 8;
  v121(v20, v12);
  v29 = "renderEmojiNativeDescription";
  if (a4 > 160.0)
  {
    v29 = "renderEmojiUpscaledDescription";
  }

  v112 = v29;
  sub_1D28720E8();
  v30 = sub_1D2873C38();
  v31 = sub_1D2878BB8();
  v32 = sub_1D2878EE8();
  v122 = v28;
  if (v32)
  {
    v33 = swift_slowAlloc();
    *v33 = 0;
    v34 = sub_1D2873C08();
    _os_signpost_emit_with_name_impl(&dword_1D226E000, v30, v31, v34, v112, "", v33, 2u);
    v35 = v33;
    v28 = v122;
    MEMORY[0x1D38A3520](v35, -1, -1);
  }

  (*(v21 + 16))(v26, v28, v123);
  sub_1D2873C88();
  swift_allocObject();
  v108 = sub_1D2873C78();
  v121(v18, v12);
  v36 = type metadata accessor for PlaygroundImage();
  v37 = *(v36 - 1);
  v103 = *(v37 + 56);
  v102[1] = v37 + 56;
  v103(v115, 1, 1, v36);
  v111 = v12;
  if (a4 <= 160.0)
  {
    sub_1D25D75B8(MEMORY[0x1E69E7CC0]);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E3528);
    inited = swift_initStackObject();
    v39 = MEMORY[0x1E6965778];
    *(inited + 16) = xmmword_1D287F500;
    v40 = *v39;
    *(inited + 32) = v40;
    *(inited + 40) = 0;
    v41 = v40;
    sub_1D25D75B8(inited);
    swift_setDeallocating();
    sub_1D22BD238(inited + 32, &qword_1EC6E3530);
  }

  v42 = v117;
  type metadata accessor for CFString(0);
  sub_1D284F770(&qword_1EC6D7570, type metadata accessor for CFString);
  v43 = sub_1D2877E78();

  v44 = CTFontDescriptorCreateWithAttributes(v43);

  v45 = CTFontCreateWithFontDescriptor(v44, a4 * 0.86, 0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E3520);
  v46 = swift_initStackObject();
  *(v46 + 16) = xmmword_1D287F500;
  v47 = *MEMORY[0x1E69DB648];
  *(v46 + 32) = *MEMORY[0x1E69DB648];
  type metadata accessor for CTFont(0);
  *(v46 + 64) = v48;
  *(v46 + 40) = v45;
  v49 = v47;
  v107 = v45;
  v50 = sub_1D25D76A4(v46);
  swift_setDeallocating();
  sub_1D22BD238(v46 + 32, &qword_1EC6DEC18);
  v51 = sub_1D2878068();
  type metadata accessor for Key(0);
  sub_1D284F770(&qword_1EC6D7520, type metadata accessor for Key);
  v116 = v50;
  v52 = sub_1D2877E78();
  [v51 sizeWithAttributes_];
  v54 = v53;
  v56 = v55;

  result = CGColorSpaceCreateWithName(*MEMORY[0x1E695F1C0]);
  v58 = v21;
  if (!result)
  {
    goto LABEL_27;
  }

  if ((*&a4 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_43;
  }

  if (a4 <= -9.22337204e18)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  if (a4 >= 9.22337204e18)
  {
LABEL_44:
    __break(1u);
    return result;
  }

  v59 = result;
  v60 = CGBitmapContextCreate(0, a4, a4, 8uLL, 0, result, 1u);
  if (v60)
  {
    v61 = v60;
    UIGraphicsPushContext(v60);
    CGContextScaleCTM(v61, 1.0, -1.0);
    CGContextTranslateCTM(v61, 0.0, -a4);
    v62 = sub_1D2878068();
    v63 = sub_1D2877E78();
    [v62 drawAtPoint:v63 withAttributes:{(a4 - v54) * 0.5, (a4 - v56) * -0.5}];

    Image = CGBitmapContextCreateImage(v61);
    if (Image)
    {
      v65 = Image;
      v66 = &v11[v36[9]];
      *v66 = 0u;
      *(v66 + 1) = 0u;
      *&v11[v36[10]] = xmmword_1D28809A0;
      v67 = v36[11];
      v68 = sub_1D2873AA8();
      (*(*(v68 - 8) + 56))(&v11[v67], 1, 1, v68);
      *v11 = v65;
      v11[8] = 0;
      *(v11 + 6) = 1;
      *(v11 + 2) = 0;
      *(v11 + 4) = 0;
      *(v11 + 5) = 0;
      v11[v36[12]] = 0;
      sub_1D2871808();
      v69 = v115;
      sub_1D22BD238(v115, &unk_1EC6DE5A0);
      v103(v11, 0, 1, v36);
      sub_1D268B6D8(v11, v69);
    }

    else
    {
      v70 = v102[0];
      sub_1D28725A8();
      v71 = sub_1D2873CA8();
      v72 = sub_1D2878A18();
      if (os_log_type_enabled(v71, v72))
      {
        v73 = swift_slowAlloc();
        v74 = swift_slowAlloc();
        v124 = v74;
        *v73 = 136315138;
        if (a4 <= 160.0)
        {
          v75 = 0x65766974616ELL;
        }

        else
        {
          v75 = 0x64656C6163737075;
        }

        if (a4 <= 160.0)
        {
          v76 = 0xE600000000000000;
        }

        else
        {
          v76 = 0xE800000000000000;
        }

        v77 = sub_1D23D7C84(v75, v76, &v124);

        *(v73 + 4) = v77;
        _os_log_impl(&dword_1D226E000, v71, v72, "Could not create %s image from emoji", v73, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v74);
        MEMORY[0x1D38A3520](v74, -1, -1);
        MEMORY[0x1D38A3520](v73, -1, -1);

        (*(v113 + 8))(v102[0], v114);
      }

      else
      {

        (*(v113 + 8))(v70, v114);
      }
    }

    v42 = v117;
    UIGraphicsPopContext();
  }

  else
  {
    v61 = v59;
  }

LABEL_27:
  v117 = v58;
  v78 = v109;
  sub_1D28725A8();
  sub_1D2870F68();
  v79 = sub_1D2873CA8();
  v80 = sub_1D2878A08();

  if (os_log_type_enabled(v79, v80))
  {
    v81 = swift_slowAlloc();
    v82 = swift_slowAlloc();
    v124 = v82;
    *v81 = 136315906;
    if (a4 <= 160.0)
    {
      v83 = 0x7265646E6572;
    }

    else
    {
      v83 = 0x656C6163737075;
    }

    if (a4 <= 160.0)
    {
      v84 = 0xE600000000000000;
    }

    else
    {
      v84 = 0xE700000000000000;
    }

    v85 = v42;
    v86 = sub_1D23D7C84(v83, v84, &v124);

    *(v81 + 4) = v86;
    *(v81 + 12) = 2080;
    *(v81 + 14) = sub_1D23D7C84(v119, v85, &v124);
    *(v81 + 22) = 2048;
    *(v81 + 24) = a4;
    *(v81 + 32) = 2048;
    *(v81 + 34) = a4;
    _os_log_impl(&dword_1D226E000, v79, v80, "Did %s emoji %s at size %fx%f", v81, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x1D38A3520](v82, -1, -1);
    MEMORY[0x1D38A3520](v81, -1, -1);
  }

  (*(v113 + 8))(v78, v114);
  v87 = v110;
  v88 = v118;
  sub_1D28720E8();
  v89 = sub_1D2873C38();
  sub_1D2873C68();
  v90 = sub_1D2878BA8();
  if (sub_1D2878EE8())
  {

    sub_1D2870F78();
    v91 = v104;
    sub_1D2873C98();

    v92 = v105;
    v93 = v106;
    if ((*(v105 + 88))(v91, v106) == *MEMORY[0x1E69E93E8])
    {
      v94 = "[Error] Interval already ended";
    }

    else
    {
      (*(v92 + 8))(v91, v93);
      v94 = "";
    }

    v95 = v111;
    v96 = swift_slowAlloc();
    *v96 = 0;
    v97 = v118;
    v98 = sub_1D2873C08();
    v99 = v94;
    v88 = v97;
    _os_signpost_emit_with_name_impl(&dword_1D226E000, v89, v90, v98, v112, v99, v96, 2u);
    MEMORY[0x1D38A3520](v96, -1, -1);
  }

  else
  {

    v95 = v111;
  }

  v100 = *(v117 + 8);
  v101 = v123;
  v100(v88, v123);
  v121(v87, v95);
  return (v100)(v122, v101);
}

uint64_t sub_1D284F6B0()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1D284F70C@<X0>(uint64_t *a1@<X8>)
{
  v2 = swift_allocObject();
  v3 = sub_1D25D73C8(MEMORY[0x1E69E7CC0]);

  *(v2 + 16) = v3;
  *(v2 + 24) = 0x4074000000000000;
  *a1 = v2;
  return result;
}

uint64_t sub_1D284F770(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t EnvironmentValues.extensionState.getter()
{
  sub_1D284F7F4();
  sub_1D2875638();
  return v1;
}

unint64_t sub_1D284F7F4()
{
  result = qword_1ED89D6E8;
  if (!qword_1ED89D6E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89D6E8);
  }

  return result;
}

uint64_t sub_1D284F848@<X0>(void *a1@<X8>)
{
  sub_1D284F7F4();
  result = sub_1D2875638();
  *a1 = v3;
  return result;
}

uint64_t sub_1D284F898()
{
  sub_1D284F7F4();
  sub_1D2870F78();
  return sub_1D2875648();
}

uint64_t sub_1D284F934()
{
  swift_getKeyPath();
  sub_1D2851F2C(&qword_1EC6DBE60, type metadata accessor for GPUIExtensionState);
  sub_1D28719E8();

  return *(v0 + 16);
}

uint64_t sub_1D284F9D4(uint64_t result)
{
  if (*(v1 + 16) == (result & 1))
  {
    *(v1 + 16) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D2851F2C(&qword_1EC6DBE60, type metadata accessor for GPUIExtensionState);
    sub_1D28719D8();
  }

  return result;
}

Swift::Void __swiftcall GPUIExtensionState.noteDidAppear()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DAE40);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v9[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v9[-v5];
  sub_1D2871778();
  v7 = sub_1D2871798();
  (*(*(v7 - 8) + 56))(v6, 0, 1, v7);
  v8 = OBJC_IVAR____TtC23ImagePlaygroundInternal18GPUIExtensionState_initialTimeAppeared;
  swift_beginAccess();
  sub_1D2422408(v0 + v8, v3);
  swift_beginAccess();
  sub_1D284FC50(v6, v0 + v8);
  swift_endAccess();
  sub_1D2850188(v3);
  sub_1D22BD238(v3, &unk_1EC6DAE40);
  sub_1D22BD238(v6, &unk_1EC6DAE40);
}

uint64_t sub_1D284FC50(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DAE40);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

Swift::Void __swiftcall GPUIExtensionState.stateDidChange()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8E60);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v36 - v3;
  v5 = sub_1D2873CB8();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v36 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DAE40);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v36 - v13;
  v15 = OBJC_IVAR____TtC23ImagePlaygroundInternal18GPUIExtensionState_hasStartedQuietPeriod;
  if ((*(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal18GPUIExtensionState_hasStartedQuietPeriod) & 1) != 0 || *(v1 + 17) != 1 || (v16 = OBJC_IVAR____TtC23ImagePlaygroundInternal18GPUIExtensionState_initialTimeAppeared, swift_beginAccess(), sub_1D2422408(v1 + v16, v14), v17 = sub_1D2871798(), LODWORD(v16) = (*(*(v17 - 8) + 48))(v14, 1, v17), sub_1D22BD238(v14, &unk_1EC6DAE40), v16 == 1))
  {
    sub_1D2872578();
    sub_1D2870F78();
    v18 = sub_1D2873CA8();
    v19 = sub_1D2878A38();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v38 = v21;
      *v20 = 136315138;
      v22 = sub_1D28504A4();
      v24 = sub_1D23D7C84(v22, v23, &v38);

      *(v20 + 4) = v24;
      _os_log_impl(&dword_1D226E000, v18, v19, "Extension state did change (current state: %s)", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v21);
      MEMORY[0x1D38A3520](v21, -1, -1);
      MEMORY[0x1D38A3520](v20, -1, -1);
    }

    (*(v6 + 8))(v8, v5);
  }

  else
  {
    *(v1 + v15) = 1;
    sub_1D2872578();
    sub_1D2870F78();
    v25 = sub_1D2873CA8();
    v26 = sub_1D2878A38();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v38 = v37;
      *v27 = 136315138;
      v28 = sub_1D28504A4();
      v30 = sub_1D23D7C84(v28, v29, &v38);

      *(v27 + 4) = v30;
      _os_log_impl(&dword_1D226E000, v25, v26, "Extension has entered 'Quiet Period' (current state: %s)", v27, 0xCu);
      v31 = v37;
      __swift_destroy_boxed_opaque_existential_0(v37);
      MEMORY[0x1D38A3520](v31, -1, -1);
      MEMORY[0x1D38A3520](v27, -1, -1);
    }

    (*(v6 + 8))(v11, v5);
    v32 = sub_1D28785F8();
    (*(*(v32 - 8) + 56))(v4, 1, 1, v32);
    sub_1D2878568();
    sub_1D2870F78();
    v33 = sub_1D2878558();
    v34 = swift_allocObject();
    v35 = MEMORY[0x1E69E85E0];
    v34[2] = v33;
    v34[3] = v35;
    v34[4] = v1;
    sub_1D23C8994(0, 0, v4, &unk_1D28AC4A8, v34);
  }
}

void sub_1D2850188(uint64_t a1)
{
  v3 = sub_1D2871798();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DAE40);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v19 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E1D58);
  v11 = v10 - 8;
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v19 - v12;
  v14 = OBJC_IVAR____TtC23ImagePlaygroundInternal18GPUIExtensionState_initialTimeAppeared;
  swift_beginAccess();
  v15 = *(v11 + 56);
  sub_1D2422408(v1 + v14, v13);
  sub_1D2422408(a1, &v13[v15]);
  v16 = *(v4 + 48);
  if (v16(v13, 1, v3) == 1)
  {
    if (v16(&v13[v15], 1, v3) == 1)
    {
      sub_1D22BD238(v13, &unk_1EC6DAE40);
      return;
    }

    goto LABEL_6;
  }

  sub_1D2422408(v13, v9);
  if (v16(&v13[v15], 1, v3) == 1)
  {
    (*(v4 + 8))(v9, v3);
LABEL_6:
    sub_1D22BD238(v13, &qword_1EC6E1D58);
LABEL_7:
    GPUIExtensionState.stateDidChange()();
    return;
  }

  (*(v4 + 32))(v6, &v13[v15], v3);
  sub_1D2851F2C(&qword_1EC6D8BD0, MEMORY[0x1E6969530]);
  v17 = sub_1D2877F98();
  v18 = *(v4 + 8);
  v18(v6, v3);
  v18(v9, v3);
  sub_1D22BD238(v13, &unk_1EC6DAE40);
  if ((v17 & 1) == 0)
  {
    goto LABEL_7;
  }
}

unint64_t sub_1D28504A4()
{
  v1 = v0;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DAE40);
  MEMORY[0x1EEE9AC00](v19);
  v18 = &v17 - v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAE60);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1D28838F0;
  v20 = 0;
  v21 = 0xE000000000000000;
  sub_1D2879168();

  v20 = 0xD000000000000019;
  v21 = 0x80000001D28C5320;
  swift_getKeyPath();
  v22 = v0;
  sub_1D2851F2C(&qword_1EC6DBE60, type metadata accessor for GPUIExtensionState);
  sub_1D28719E8();

  if (*(v0 + 16))
  {
    v4 = 1702195828;
  }

  else
  {
    v4 = 0x65736C6166;
  }

  if (*(v0 + 16))
  {
    v5 = 0xE400000000000000;
  }

  else
  {
    v5 = 0xE500000000000000;
  }

  MEMORY[0x1D38A0C50](v4, v5);

  v6 = v21;
  *(v3 + 32) = v20;
  *(v3 + 40) = v6;
  v20 = 0;
  v21 = 0xE000000000000000;
  sub_1D2879168();

  v20 = 0xD00000000000001ALL;
  v21 = 0x80000001D28C5340;
  if (*(v0 + 17))
  {
    v7 = 1702195828;
  }

  else
  {
    v7 = 0x65736C6166;
  }

  if (*(v0 + 17))
  {
    v8 = 0xE400000000000000;
  }

  else
  {
    v8 = 0xE500000000000000;
  }

  MEMORY[0x1D38A0C50](v7, v8);

  v9 = v21;
  *(v3 + 48) = v20;
  *(v3 + 56) = v9;
  v20 = 0;
  v21 = 0xE000000000000000;
  sub_1D2879168();

  v22 = 0xD000000000000015;
  v23 = 0x80000001D28C5360;
  v10 = OBJC_IVAR____TtC23ImagePlaygroundInternal18GPUIExtensionState_initialTimeAppeared;
  swift_beginAccess();
  sub_1D2422408(v1 + v10, v18);
  v11 = sub_1D2878118();
  MEMORY[0x1D38A0C50](v11);

  v12 = v23;
  *(v3 + 64) = v22;
  *(v3 + 72) = v12;
  v22 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA358);
  sub_1D22BB9D8(&qword_1ED89CE98, &qword_1EC6DA358);
  v13 = sub_1D2877F68();
  v15 = v14;

  v22 = 0;
  v23 = 0xE000000000000000;
  sub_1D2879168();

  v22 = 0xD000000000000014;
  v23 = 0x80000001D28C5380;
  MEMORY[0x1D38A0C50](v13, v15);

  MEMORY[0x1D38A0C50](10528, 0xE200000000000000);
  return v22;
}

uint64_t sub_1D2850810(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a4;
  v5 = sub_1D2873CB8();
  v4[4] = v5;
  v4[5] = *(v5 - 8);
  v4[6] = swift_task_alloc();
  v6 = sub_1D2879328();
  v4[7] = v6;
  v4[8] = *(v6 - 8);
  v4[9] = swift_task_alloc();
  sub_1D2878568();
  v4[10] = sub_1D2878558();
  v8 = sub_1D28784F8();
  v4[11] = v8;
  v4[12] = v7;

  return MEMORY[0x1EEE6DFA0](sub_1D2850960, v8, v7);
}

uint64_t sub_1D2850960()
{
  v1 = sub_1D2879908();
  v3 = v2;
  sub_1D2879718();
  v4 = swift_task_alloc();
  *(v0 + 104) = v4;
  *v4 = v0;
  v4[1] = sub_1D2850A3C;

  return sub_1D233BA38(v1, v3, 0, 0, 1);
}

uint64_t sub_1D2850A3C()
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v4 = *(*v1 + 64);
  v5 = *(*v1 + 56);
  *(*v1 + 112) = v0;

  (*(v4 + 8))(v3, v5);
  v6 = *(v2 + 96);
  v7 = *(v2 + 88);
  if (v0)
  {
    v8 = sub_1D2850E50;
  }

  else
  {
    v8 = sub_1D2850BD4;
  }

  return MEMORY[0x1EEE6DFA0](v8, v7, v6);
}

uint64_t sub_1D2850BD4()
{
  v17 = v0;
  v1 = v0[3];
  if (*(v1 + 16) == 1)
  {

    *(v1 + 16) = 1;
  }

  else
  {
    swift_getKeyPath();
    v2 = swift_task_alloc();
    *(v2 + 16) = v1;
    *(v2 + 24) = 1;
    v0[2] = v1;
    sub_1D2851F2C(&qword_1EC6DBE60, type metadata accessor for GPUIExtensionState);
    sub_1D28719D8();
  }

  sub_1D2872578();
  sub_1D2870F78();
  v3 = sub_1D2873CA8();
  v4 = sub_1D2878A38();

  v5 = os_log_type_enabled(v3, v4);
  v7 = v0[5];
  v6 = v0[6];
  v8 = v0[4];
  if (v5)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v16 = v10;
    *v9 = 136315138;
    v11 = sub_1D28504A4();
    v13 = sub_1D23D7C84(v11, v12, &v16);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_1D226E000, v3, v4, "Extension has finished 'Quiet Period' (current state: %s)", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x1D38A3520](v10, -1, -1);
    MEMORY[0x1D38A3520](v9, -1, -1);
  }

  (*(v7 + 8))(v6, v8);

  v14 = v0[1];

  return v14();
}

uint64_t sub_1D2850E50()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t GPUIExtensionState.deinit()
{
  sub_1D22BD238(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal18GPUIExtensionState_initialTimeAppeared, &unk_1EC6DAE40);
  v1 = OBJC_IVAR____TtC23ImagePlaygroundInternal18GPUIExtensionState___observationRegistrar;
  v2 = sub_1D2871A28();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t GPUIExtensionState.__deallocating_deinit()
{
  sub_1D22BD238(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal18GPUIExtensionState_initialTimeAppeared, &unk_1EC6DAE40);
  v1 = OBJC_IVAR____TtC23ImagePlaygroundInternal18GPUIExtensionState___observationRegistrar;
  v2 = sub_1D2871A28();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t View.extensionState(_:)()
{
  swift_getKeyPath();
  sub_1D2870F78();
  sub_1D28767F8();
}

uint64_t (*EnvironmentValues.extensionState.modify(uint64_t a1))(void *a1, char a2)
{
  *(a1 + 16) = v1;
  *(a1 + 24) = sub_1D284F7F4();
  sub_1D2875638();
  return sub_1D28510EC;
}

uint64_t sub_1D28510EC(void *a1, char a2)
{
  a1[1] = *a1;
  if ((a2 & 1) == 0)
  {
    return sub_1D2875648();
  }

  sub_1D2870F78();
  sub_1D2875648();
}

uint64_t sub_1D28511EC@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t)@<X1>, void *a3@<X8>)
{
  *a3 = *(*(a1 + 16) + 16);
  type metadata accessor for ExtensionStateTrackingContentView();
  v4 = sub_1D2870F78();
  a2(v4);
}

uint64_t sub_1D2851270@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  v4 = *(a1 - 8);
  v28 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v27 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v6 + 16);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E3538);
  v8 = sub_1D2874F68();
  v30 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v25 - v9;
  v11 = sub_1D2874F68();
  v31 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v26 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v29 = &v25 - v14;
  v15 = *(a1 + 24);
  View.extensionState(_:)();
  v16 = v27;
  (*(v4 + 16))(v27, v2, a1);
  v17 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = v7;
  *(v18 + 24) = v15;
  (*(v4 + 32))(v18 + v17, v16, a1);
  v19 = sub_1D22BB9D8(qword_1EC6E3540, &qword_1EC6E3538);
  v35 = v15;
  v36 = v19;
  WitnessTable = swift_getWitnessTable();
  v21 = v26;
  sub_1D2876F38();

  (*(v30 + 8))(v10, v8);
  v33 = WitnessTable;
  v34 = MEMORY[0x1E69805D0];
  swift_getWitnessTable();
  v22 = v29;
  sub_1D245980C(v21);
  v23 = *(v31 + 8);
  v23(v21, v11);
  sub_1D245980C(v22);
  return (v23)(v22, v11);
}

uint64_t sub_1D285162C(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DAE40);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v12[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v12[-v6];
  v8 = *a1;
  sub_1D2871778();
  v9 = sub_1D2871798();
  (*(*(v9 - 8) + 56))(v7, 0, 1, v9);
  v10 = OBJC_IVAR____TtC23ImagePlaygroundInternal18GPUIExtensionState_initialTimeAppeared;
  swift_beginAccess();
  sub_1D2422408(v8 + v10, v4);
  swift_beginAccess();
  sub_1D284FC50(v7, v8 + v10);
  swift_endAccess();
  sub_1D2850188(v4);
  sub_1D22BD238(v4, &unk_1EC6DAE40);
  return sub_1D22BD238(v7, &unk_1EC6DAE40);
}

uint64_t sub_1D28517A4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1D22BC8FC;

  return sub_1D2850810(a1, v4, v5, v6);
}

uint64_t type metadata accessor for GPUIExtensionState()
{
  result = qword_1ED8A21C8;
  if (!qword_1ED8A21C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D28518E0()
{
  sub_1D27C37D0();
  if (v0 <= 0x3F)
  {
    sub_1D2871A28();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_1D28519F8()
{
  result = type metadata accessor for GPUIExtensionState();
  if (v1 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1D2851A80(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_26;
  }

  v9 = ((v6 + 8) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
  v10 = 8 * v9;
  if (v9 <= 3)
  {
    v13 = ((v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v13))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 < 2)
    {
LABEL_26:
      if ((v5 & 0x80000000) != 0)
      {
        return (*(v4 + 48))((a1 + v6 + 8) & ~v6);
      }

      v15 = *a1;
      if (*a1 >= 0xFFFFFFFFuLL)
      {
        LODWORD(v15) = -1;
      }

      return (v15 + 1);
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_26;
  }

LABEL_15:
  v14 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v14 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    if (v9 > 2)
    {
      if (v9 == 3)
      {
        LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v9) = *a1;
      }
    }

    else if (v9 == 1)
    {
      LODWORD(v9) = *a1;
    }

    else
    {
      LODWORD(v9) = *a1;
    }
  }

  return v7 + (v9 | v14) + 1;
}

void sub_1D2851C04(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = ((v9 + 8) & ~v9) + *(*(*(a4 + 16) - 8) + 64);
  v11 = a3 >= v8;
  v12 = a3 - v8;
  if (v12 != 0 && v11)
  {
    if (v10 <= 3)
    {
      v16 = ((v12 + ~(-1 << (8 * v10))) >> (8 * v10)) + 1;
      if (HIWORD(v16))
      {
        v13 = 4;
      }

      else
      {
        if (v16 < 0x100)
        {
          v17 = 1;
        }

        else
        {
          v17 = 2;
        }

        if (v16 >= 2)
        {
          v13 = v17;
        }

        else
        {
          v13 = 0;
        }
      }
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a2)
  {
    v14 = ~v8 + a2;
    if (v10 < 4)
    {
      v15 = (v14 >> (8 * v10)) + 1;
      if (v10)
      {
        v18 = v14 & ~(-1 << (8 * v10));
        bzero(a1, v10);
        if (v10 != 3)
        {
          if (v10 == 2)
          {
            *a1 = v18;
            if (v13 > 1)
            {
LABEL_47:
              if (v13 == 2)
              {
                *&a1[v10] = v15;
              }

              else
              {
                *&a1[v10] = v15;
              }

              return;
            }
          }

          else
          {
            *a1 = v14;
            if (v13 > 1)
            {
              goto LABEL_47;
            }
          }

          goto LABEL_44;
        }

        *a1 = v18;
        a1[2] = BYTE2(v18);
      }

      if (v13 > 1)
      {
        goto LABEL_47;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_47;
      }
    }

LABEL_44:
    if (v13)
    {
      a1[v10] = v15;
    }

    return;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *&a1[v10] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v10] = 0;
  }

  else if (v13)
  {
    a1[v10] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  if ((v7 & 0x80000000) != 0)
  {
    v20 = *(v6 + 56);
    v21 = &a1[v9 + 8] & ~v9;

    v20(v21);
  }

  else
  {
    if ((a2 & 0x80000000) != 0)
    {
      v19 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v19 = a2 - 1;
    }

    *a1 = v19;
  }
}

uint64_t sub_1D2851EA8()
{
  v1 = *(type metadata accessor for ExtensionStateTrackingContentView() - 8);
  v2 = (v0 + ((*(v1 + 80) + 32) & ~*(v1 + 80)));

  return sub_1D285162C(v2);
}

uint64_t sub_1D2851F2C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t GPUIExtension.configuration.getter(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x1EEE9AC00](a1);
  (*(v4 + 16))(&v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v7, a1, v6);
  v8 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  (*(v4 + 32))(v9 + v8, &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  return sub_1D2871A68();
}

void *sub_1D2852160()
{
  type metadata accessor for GPUIExtensionState();
  v1 = swift_allocObject();
  *(v1 + 16) = 0;
  v2 = OBJC_IVAR____TtC23ImagePlaygroundInternal18GPUIExtensionState_initialTimeAppeared;
  v3 = sub_1D2871798();
  (*(*(v3 - 8) + 56))(v1 + v2, 1, 1, v3);
  *(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal18GPUIExtensionState_minimumPostAppearanceQuietPeriod) = 0x4000000000000000;
  *(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal18GPUIExtensionState_hasStartedQuietPeriod) = 0;
  sub_1D2871A18();
  v0[2] = v1;
  v0[3] = 0;
  v4 = MEMORY[0x1E69E7CC0];
  v0[4] = 0;
  v0[5] = v4;
  return v0;
}

uint64_t sub_1D2852228(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 24) = v2;
  sub_1D2870F78();

  return sub_1D285228C();
}

uint64_t sub_1D285228C()
{
  v1 = v0;
  v2 = sub_1D2873CB8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v15[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  if (*(v1 + 24))
  {
    swift_beginAccess();
    v6 = *(v1 + 40);
    v7 = *(v6 + 16);
    if (v7)
    {
      sub_1D2870F68();
      v8 = v6 + 40;
      do
      {
        v9 = *(v8 - 8);
        v10 = sub_1D2870F78();
        v9(v10);

        v8 += 16;
        --v7;
      }

      while (v7);
    }

    *(v1 + 40) = MEMORY[0x1E69E7CC0];
  }

  else
  {
    sub_1D2872578();
    v12 = sub_1D2873CA8();
    v13 = sub_1D2878A18();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_1D226E000, v12, v13, "Did not find any composingViewModel", v14, 2u);
      MEMORY[0x1D38A3520](v14, -1, -1);
    }

    return (*(v3 + 8))(v5, v2);
  }
}

uint64_t sub_1D2852494(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 24) = a1;
  sub_1D2870F78();

  sub_1D285228C();
}

uint64_t (*sub_1D28524FC(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1D2852550;
}

uint64_t sub_1D2852568()
{
  swift_beginAccess();
  v1 = *(v0 + 32);
  if (v1)
  {
    v2 = *(v1 + 16);
    sub_1D2870F78();
  }

  else
  {
    v2 = 0;
  }

  swift_beginAccess();
  *(v0 + 24) = v2;
  sub_1D2870F78();

  sub_1D285228C();
}

uint64_t (*sub_1D2852618(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1D285266C;
}

uint64_t sub_1D2852688()
{
  v1 = v0;
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
  v7[2] = v6;
  v7[3] = v8;
  v7[4] = v1;
  sub_1D22AE01C(0, 0, v4, &unk_1D28AC670, v7);
}

uint64_t sub_1D28527AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  sub_1D2878568();
  *(v4 + 24) = sub_1D2878558();
  v6 = sub_1D28784F8();

  return MEMORY[0x1EEE6DFA0](sub_1D2852844, v6, v5);
}

uint64_t sub_1D2852844()
{
  v1 = *(v0 + 16);

  v2 = *(v1 + 16);
  v3 = *(v2 + 17);
  *(v2 + 17) = 1;
  if ((v3 & 1) == 0)
  {
    GPUIExtensionState.stateDidChange()();
  }

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1D28528BC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1D22BDFF8;

  return sub_1D28527AC(a1, v4, v5, v6);
}

void sub_1D2852B60(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v5 = sub_1D2872038();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v22 - v10;
  if (a3 >> 62)
  {
    v12 = sub_1D2879368();
  }

  else
  {
    v12 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v12)
  {
LABEL_15:
    sub_1D22BCFD0(0, &qword_1EC6E0720);
    v21 = sub_1D2878D28();
    ComposingViewModel.load(fromAPIRecipe:)(v21);

    return;
  }

  v23 = MEMORY[0x1E69E7CC0];
  sub_1D23D84C4(0, v12 & ~(v12 >> 63), 0);
  if ((v12 & 0x8000000000000000) == 0)
  {
    v22 = a1;
    v13 = v23;
    if ((a3 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v12; ++i)
      {
        MEMORY[0x1D38A1C30](i, a3);
        sub_1D2872048();
        v23 = v13;
        v16 = *(v13 + 16);
        v15 = *(v13 + 24);
        if (v16 >= v15 >> 1)
        {
          sub_1D23D84C4(v15 > 1, v16 + 1, 1);
          v13 = v23;
        }

        *(v13 + 16) = v16 + 1;
        (*(v6 + 32))(v13 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v16, v11, v5);
      }
    }

    else
    {
      v17 = (a3 + 32);
      do
      {
        v18 = *v17;
        sub_1D2872048();
        v23 = v13;
        v20 = *(v13 + 16);
        v19 = *(v13 + 24);
        if (v20 >= v19 >> 1)
        {
          sub_1D23D84C4(v19 > 1, v20 + 1, 1);
          v13 = v23;
        }

        *(v13 + 16) = v20 + 1;
        (*(v6 + 32))(v13 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v20, v8, v5);
        ++v17;
        --v12;
      }

      while (v12);
    }

    goto LABEL_15;
  }

  __break(1u);
}

uint64_t sub_1D2852ED0(unint64_t a1)
{
  if (a1 >> 62)
  {
    result = sub_1D2879368();
    if (!result)
    {
      return result;
    }
  }

  else
  {
    result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }
  }

  v3 = swift_allocObject();
  *(v3 + 16) = a1;
  sub_1D2870F68();
  sub_1D2855B38(sub_1D2852F9C, 0, sub_1D285D1FC, v3);
}

uint64_t sub_1D2852FA8(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v18 = a1;
  v21 = sub_1D2872008();
  v4 = *(v21 - 8);
  v5 = MEMORY[0x1EEE9AC00](v21);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1D2879368())
  {
    v9 = 0;
    v19 = a3 & 0xFFFFFFFFFFFFFF8;
    v20 = a3 & 0xC000000000000001;
    v10 = MEMORY[0x1E69E7CC0];
    v11 = a3;
    while (1)
    {
      if (v20)
      {
        v12 = MEMORY[0x1D38A1C30](v9, a3, v5);
      }

      else
      {
        if (v9 >= *(v19 + 16))
        {
          goto LABEL_17;
        }

        v12 = *(a3 + 8 * v9 + 32);
      }

      v13 = v12;
      a3 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      sub_1D28780A8();
      sub_1D2871EA8();

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v10 = sub_1D27CC780(0, v10[2] + 1, 1, v10);
      }

      v15 = v10[2];
      v14 = v10[3];
      if (v15 >= v14 >> 1)
      {
        v10 = sub_1D27CC780(v14 > 1, v15 + 1, 1, v10);
      }

      v10[2] = v15 + 1;
      (*(v4 + 32))(v10 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v15, v7, v21);
      ++v9;
      v16 = a3 == i;
      a3 = v11;
      if (v16)
      {
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  v10 = MEMORY[0x1E69E7CC0];
LABEL_20:
  sub_1D231D22C(v10);
}

uint64_t sub_1D2853328()
{
  v0 = sub_1D2872008();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D28780A8();
  sub_1D2871EA8();
  sub_1D231C938(v3);
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_1D285343C(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6D94A0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v17 - v3;
  v5 = sub_1D2871E18();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v10 = MEMORY[0x1EEE9AC00](v9).n128_u64[0];
  v12 = &v17 - v11;
  [a1 integerValue];
  sub_1D2871E08();
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    return sub_1D22BD238(v4, &unk_1EC6D94A0);
  }

  v14 = *(v6 + 32);
  v14(v12, v4, v5);
  (*(v6 + 16))(v8, v12, v5);
  v15 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v16 = swift_allocObject();
  v14((v16 + v15), v8, v5);
  sub_1D2855B38(sub_1D2853690, 0, sub_1D285D20C, v16);

  return (*(v6 + 8))(v12, v5);
}

uint64_t sub_1D28536B4(char a1)
{
  v2 = swift_allocObject();
  *(v2 + 16) = a1;
  sub_1D2855B38(sub_1D2853740, 0, sub_1D285D238, v2);
}

uint64_t sub_1D285374C(uint64_t a1, uint64_t a2, char a3)
{
  v4 = *(a1 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__isLoading);
  if (v4 == (a3 & 1))
  {
    *(a1 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__isLoading) = a3 & 1;
    return sub_1D23068A8(v4);
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D285F80C(&qword_1ED8A2520, type metadata accessor for ComposingViewModel);
    sub_1D28719D8();
  }
}

uint64_t sub_1D285390C(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    v2 = result;
    v4 = swift_allocObject();
    *(v4 + 16) = v2;
    *(v4 + 24) = a2;
    sub_1D22D6CE4(v2, a2);
    sub_1D22D6CF8(v2, a2);
    sub_1D2855B38(sub_1D28539E0, 0, sub_1D285D240, v4);

    return sub_1D22D6D4C(v2, a2);
  }

  return result;
}

uint64_t sub_1D28539EC()
{
  v0 = sub_1D2873CB8();
  MEMORY[0x1EEE9AC00](v0);
  v1 = sub_1D2872438();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = objc_allocWithZone(MEMORY[0x1E696E4F8]);
  v6 = sub_1D28716D8();
  v7 = [v5 initWithUnderlyingData_];

  sub_1D2878C38();
  sub_1D23177D0(v4);

  return (*(v2 + 8))(v4, v1);
}

uint64_t sub_1D2853DBC(void *a1)
{
  v2 = swift_allocObject();
  *(v2 + 16) = a1;
  v3 = a1;
  sub_1D2855B38(sub_1D2853E4C, 0, sub_1D285D248, v2);
}

uint64_t sub_1D2853E58(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = type metadata accessor for PlaygroundImage();
  v6 = *(v5 - 1);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v35 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE5A0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v35 - v16;
  if (a3)
  {
    v18 = a3;
    v19 = sub_1D2871D78();
    v36 = a1;
    v20 = v19;
    *(v17 + 4) = 0;
    *(v17 + 5) = 0;
    v21 = &v17[v5[9]];
    *v21 = 0u;
    *(v21 + 1) = 0u;
    *&v17[v5[10]] = xmmword_1D28809A0;
    v22 = v6;
    v23 = v5[11];
    v24 = sub_1D2873AA8();
    v25 = &v17[v23];
    v6 = v22;
    (*(*(v24 - 8) + 56))(v25, 1, 1, v24);
    *v17 = v20;
    a1 = v36;
    v17[8] = 3;
    *(v17 + 6) = 1;
    *(v17 + 2) = 0;
    v17[v5[12]] = 0;
    sub_1D2871808();

    (*(v22 + 56))(v17, 0, 1, v5);
  }

  else
  {
    (*(v6 + 56))(&v35 - v16, 1, 1, v5);
  }

  sub_1D247E07C(v17, v14);
  if ((*(v6 + 48))(v14, 1, v5) == 1)
  {
    sub_1D22BD238(v17, &unk_1EC6DE5A0);
    v17 = v14;
  }

  else
  {
    sub_1D23EEBD4(v14, v11);
    v36 = sub_1D28717B8();
    v27 = v26;
    sub_1D239A330(v11, v8);
    sub_1D2878568();
    sub_1D2870F78();
    v28 = sub_1D2878558();
    v29 = (*(v6 + 80) + 40) & ~*(v6 + 80);
    v30 = swift_allocObject();
    v31 = MEMORY[0x1E69E85E0];
    v30[2] = v28;
    v30[3] = v31;
    v30[4] = a1;
    sub_1D23EEBD4(v8, v30 + v29);
    swift_getKeyPath();
    v37 = a1;
    sub_1D285F80C(&qword_1ED8A2520, type metadata accessor for ComposingViewModel);
    sub_1D28719E8();

    if (*(a1 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__importingImageTask))
    {
      KeyPath = swift_getKeyPath();
      v35 = &v35;
      MEMORY[0x1EEE9AC00](KeyPath);
      v33 = v36;
      *(&v35 - 6) = a1;
      *(&v35 - 5) = v33;
      *(&v35 - 4) = v27;
      *(&v35 - 3) = &unk_1D28ACF20;
      *(&v35 - 2) = v30;
      v37 = a1;
      sub_1D2870F78();
      sub_1D2870F68();
      sub_1D2870F78();
      sub_1D28719D8();

      sub_1D28786B8();
    }

    else
    {
      sub_1D230EA90(v36, v27, &unk_1D28ACF20, v30);
    }

    sub_1D23D4DFC(v11);
  }

  return sub_1D22BD238(v17, &unk_1EC6DE5A0);
}

uint64_t sub_1D285436C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a3;
  v4[3] = a4;
  v4[4] = sub_1D2878568();
  v4[5] = sub_1D2878558();
  v4[6] = sub_1D2878558();
  v6 = sub_1D28784F8();
  v4[7] = v6;
  v4[8] = v5;

  return MEMORY[0x1EEE6DFA0](sub_1D2854414, v6, v5);
}

uint64_t sub_1D2854414()
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

  return MEMORY[0x1EEE6DDE0](v3, v1, v4, 0xD000000000000014, 0x80000001D28B0BB0, sub_1D23D4DF4, v2, v5);
}

uint64_t sub_1D28545D4(void *a1)
{
  v2 = sub_1D2871DD8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v7 = MEMORY[0x1EEE9AC00](v6).n128_u64[0];
  v9 = &v13 - v8;
  [a1 floatValue];
  sub_1D2871DB8();
  (*(v3 + 16))(v5, v9, v2);
  v10 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v11 = swift_allocObject();
  (*(v3 + 32))(v11 + v10, v5, v2);
  sub_1D2855B38(sub_1D285477C, 0, sub_1D285D250, v11);

  return (*(v3 + 8))(v9, v2);
}

uint64_t sub_1D2854788(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1D2871DD8();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = v18 - v11;
  v13 = *(v6 + 16);
  (v13)(v18 - v11, a3, v5, v10);
  v14 = OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__previewAspectRatio;
  swift_beginAccess();
  v13(v8, a1 + v14, v5);
  sub_1D285F80C(&qword_1EC6DA1B0, MEMORY[0x1E696E290]);
  LOBYTE(v14) = sub_1D2877F98();
  v15 = *(v6 + 8);
  v15(v8, v5);
  if (v14)
  {
    v13(v8, v12, v5);
    sub_1D22FCBA0(v8);
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v18[-2] = a1;
    v18[-1] = v12;
    v18[2] = a1;
    sub_1D285F80C(&qword_1ED8A2520, type metadata accessor for ComposingViewModel);
    sub_1D28719D8();
  }

  return (v15)(v12, v5);
}

uint64_t sub_1D2854C30(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE5A0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v17[-1] - v3;
  v5 = type metadata accessor for PlaygroundImage();
  v6 = *(v5 - 1);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v17[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1D2871D78();
  *(v8 + 4) = 0;
  *(v8 + 5) = 0;
  v10 = &v8[v5[9]];
  *v10 = 0u;
  *(v10 + 1) = 0u;
  *&v8[v5[10]] = xmmword_1D28809A0;
  v11 = v5[11];
  v12 = sub_1D2873AA8();
  (*(*(v12 - 8) + 56))(&v8[v11], 1, 1, v12);
  *v8 = v9;
  v8[8] = 3;
  *(v8 + 6) = 1;
  *(v8 + 2) = 0;
  v8[v5[12]] = 0;
  sub_1D2871808();
  __swift_project_boxed_opaque_existential_1((a1 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel_imageGenerationManager), *(a1 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel_imageGenerationManager + 24));
  v17[3] = v5;
  v17[4] = &protocol witness table for PlaygroundImage;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v17);
  sub_1D239A330(v8, boxed_opaque_existential_1);
  sub_1D2673418();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA1D0);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1D287F500;
  sub_1D22D7044(v17, v14 + 32);
  sub_1D2398E1C(v14);

  __swift_destroy_boxed_opaque_existential_0(v17);
  sub_1D239A330(v8, v4);
  (*(v6 + 56))(v4, 0, 1, v5);
  sub_1D22F95C0(v4);
  return sub_1D23D4DFC(v8);
}

uint64_t sub_1D2854F10(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E07B8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v17 - v3;
  v5 = sub_1D2872088();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v10 = MEMORY[0x1EEE9AC00](v9).n128_u64[0];
  v12 = &v17 - v11;
  [a1 integerValue];
  sub_1D2872078();
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    return sub_1D22BD238(v4, &qword_1EC6E07B8);
  }

  v14 = *(v6 + 32);
  v14(v12, v4, v5);
  (*(v6 + 16))(v8, v12, v5);
  v15 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v16 = swift_allocObject();
  v14((v16 + v15), v8, v5);
  sub_1D2855B38(sub_1D2855164, 0, sub_1D285D25C, v16);

  return (*(v6 + 8))(v12, v5);
}

uint64_t sub_1D2855188(uint64_t a1, uint64_t a2, void *a3, void (*a4)(id))
{
  v5 = a3;
  sub_1D2870F78();
  a4(v5);
}

uint64_t sub_1D2855228(uint64_t a1)
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

uint64_t sub_1D28553BC(uint64_t a1)
{
  v2 = swift_allocObject();
  *(v2 + 16) = a1;
  sub_1D2855B38(sub_1D2855448, 0, sub_1D285D300, v2);
}

uint64_t sub_1D2855454(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    if (a3)
    {
      if (a3 != 1)
      {
        return result;
      }

      v3 = 1;
    }

    else
    {
      v3 = 0;
    }

    sub_1D2870F78();
    sub_1D2342864(v3);
  }

  return result;
}

uint64_t sub_1D2855618(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  v8 = a1;
  sub_1D2855B38(a3, 0, a4, v7);
}

void sub_1D28556A0(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  if (a2)
  {
    sub_1D2870F78();
    PlaygroundHomeViewModel.photoGridViewModel.getter();
    v5 = sub_1D28780A8();
    a4(v5);
  }
}

uint64_t sub_1D2855758(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = swift_allocObject();
  *(v9 + 16) = a3;
  v10 = a3;
  sub_1D2870F78();
  sub_1D2855B38(a5, 0, a6, v9);
}

uint64_t sub_1D285582C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  sub_1D2870F68();
  sub_1D2855B38(a3, 0, a4, v7);
}

uint64_t sub_1D28558B8(const char *a1)
{
  v2 = sub_1D2873CB8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D2872578();
  v6 = sub_1D2873CA8();
  v7 = sub_1D28789F8();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_1D226E000, v6, v7, a1, v8, 2u);
    MEMORY[0x1D38A3520](v8, -1, -1);
  }

  return (*(v3 + 8))(v5, v2);
}

void sub_1D28559F4(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a2)
  {
    sub_1D2870F78();
    PlaygroundHomeViewModel.photoGridViewModel.getter();
    v4 = sub_1D267A454(a3);
    sub_1D257BB30(v4);
  }
}

uint64_t sub_1D2855B38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8E60);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v20 - v11;
  v13 = swift_allocObject();
  swift_weakInit();
  v14 = swift_allocObject();
  v14[2] = v13;
  v14[3] = a1;
  v14[4] = a2;
  v14[5] = a3;
  v14[6] = a4;
  v15 = sub_1D28785F8();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  sub_1D2878568();
  swift_retain_n();
  swift_retain_n();
  sub_1D2870F78();
  sub_1D2870F78();
  v16 = sub_1D2878558();
  v17 = swift_allocObject();
  v18 = MEMORY[0x1E69E85E0];
  v17[2] = v16;
  v17[3] = v18;
  v17[4] = v5;
  v17[5] = a1;
  v17[6] = a2;
  v17[7] = sub_1D285F940;
  v17[8] = v14;
  v17[9] = a3;
  v17[10] = a4;
  sub_1D22AE01C(0, 0, v12, &unk_1D28ACFA8, v17);
}

uint64_t sub_1D2855D08(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t a3, void (*a4)(uint64_t, uint64_t))
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    swift_beginAccess();
    if (*(v7 + 24))
    {
      swift_beginAccess();
      v8 = *(v7 + 32);
      sub_1D2870F78();
      v9 = sub_1D2870F78();
      a4(v9, v8);
    }
  }

  return a2(Strong);
}

uint64_t sub_1D2855DF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[13] = v13;
  v8[14] = v14;
  v8[11] = a7;
  v8[12] = a8;
  v8[9] = a5;
  v8[10] = a6;
  v8[8] = a4;
  sub_1D2878568();
  v8[15] = sub_1D2878558();
  v10 = sub_1D28784F8();

  return MEMORY[0x1EEE6DFA0](sub_1D2855EA0, v10, v9);
}

uint64_t sub_1D2855EA0()
{
  v1 = *(v0 + 64);

  v2 = swift_beginAccess();
  if (*(v1 + 24))
  {
    v3 = *(v0 + 104);
    v4 = *(v0 + 64);
    swift_beginAccess();
    v5 = *(v4 + 32);
    sub_1D2870F78();
    v6 = sub_1D2870F78();
    v3(v6, v5);
  }

  else
  {
    v7 = *(v0 + 88);
    v8 = *(v0 + 96);
    v9 = *(v0 + 64);
    (*(v0 + 72))(v2);
    v10 = swift_allocObject();
    *(v10 + 16) = v7;
    *(v10 + 24) = v8;
    swift_beginAccess();
    v11 = *(v9 + 40);
    sub_1D2870F78();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v9 + 40) = v11;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v11 = sub_1D27CE6C4(0, v11[2] + 1, 1, v11);
      *(v9 + 40) = v11;
    }

    v14 = v11[2];
    v13 = v11[3];
    if (v14 >= v13 >> 1)
    {
      v11 = sub_1D27CE6C4((v13 > 1), v14 + 1, 1, v11);
    }

    v11[2] = v14 + 1;
    v15 = &v11[2 * v14];
    v15[4] = sub_1D22D5EBC;
    v15[5] = v10;
    *(v9 + 40) = v11;
    swift_endAccess();
  }

  v16 = *(v0 + 8);

  return v16();
}

uint64_t GPServiceSideExportedObject.deinit()
{

  return v0;
}

uint64_t GPServiceSideExportedObject.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

Swift::Bool __swiftcall ServiceSideConnectionManager.shouldAccept(connection:)(NSXPCConnection connection)
{
  v3 = sub_1D2872448();
  [(objc_class *)connection.super.isa setRemoteObjectInterface:v3];

  v4 = sub_1D2872468();
  [(objc_class *)connection.super.isa setExportedInterface:v4];

  [(objc_class *)connection.super.isa setExportedObject:*(v1 + 16)];
  v5 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v19 = sub_1D285D370;
  v20 = v5;
  isa = MEMORY[0x1E69E9820];
  v16 = 1107296256;
  v17 = sub_1D23DFBA8;
  v18 = &block_descriptor_59;
  v6 = _Block_copy(&isa);

  [(objc_class *)connection.super.isa setInterruptionHandler:v6];
  _Block_release(v6);
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(v8 + 24) = v1;
  v19 = sub_1D285D390;
  v20 = v8;
  isa = MEMORY[0x1E69E9820];
  v16 = 1107296256;
  v17 = sub_1D23DFBA8;
  v18 = &block_descriptor_56;
  v9 = _Block_copy(&isa);
  sub_1D2870F78();

  [(objc_class *)connection.super.isa setInvalidationHandler:v9];
  _Block_release(v9);
  v10 = *(v1 + 24);
  os_unfair_lock_lock((v10 + 24));
  [*(v10 + 16) invalidate];
  v11 = *(v10 + 16);
  *(v10 + 16) = connection;
  v12 = connection.super.isa;

  os_unfair_lock_unlock((v10 + 24));
  isa = connection.super.isa;
  v16 = 0;
  v17 = 0;
  v18 = 0;
  LOBYTE(v19) = 0;
  v13 = v12;
  _s23ImagePlaygroundInternal16ExecutionContextV17setClientIdentityyyAC08GPClientH0OFZ_0(&isa);
  sub_1D253CD98(isa, v16, v17, v18, v19);
  [(objc_class *)v13 resume];
  return 1;
}

uint64_t sub_1D285635C()
{
  v0 = sub_1D2873CB8();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D2872578();
  sub_1D2870F78();
  v4 = sub_1D2873CA8();
  v5 = sub_1D2878A18();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    *(v6 + 4) = Strong;
    *v7 = Strong;
    _os_log_impl(&dword_1D226E000, v4, v5, "Connection %@ interrupted", v6, 0xCu);
    sub_1D22BD238(v7, qword_1EC6DA930);
    MEMORY[0x1D38A3520](v7, -1, -1);
    MEMORY[0x1D38A3520](v6, -1, -1);
  }

  return (*(v1 + 8))(v3, v0);
}

void sub_1D2856514(uint64_t a1, uint64_t a2)
{
  v3 = sub_1D2873CB8();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v13[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1D2872578();
  sub_1D2870F78();
  v7 = sub_1D2873CA8();
  v8 = sub_1D2878A18();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    *(v9 + 4) = Strong;
    *v10 = Strong;
    _os_log_impl(&dword_1D226E000, v7, v8, "Connection %@ invalidated", v9, 0xCu);
    sub_1D22BD238(v10, qword_1EC6DA930);
    MEMORY[0x1D38A3520](v10, -1, -1);
    MEMORY[0x1D38A3520](v9, -1, -1);
  }

  (*(v4 + 8))(v6, v3);
  v12 = *(a2 + 24);
  os_unfair_lock_lock((v12 + 24));
  sub_1D28566FC((v12 + 16));
  os_unfair_lock_unlock((v12 + 24));
}

void sub_1D28566FC(void **a1)
{
  v2 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v4 = Strong;
  if (!v2)
  {
    if (Strong)
    {

      return;
    }

    goto LABEL_7;
  }

  if (Strong)
  {
    sub_1D22BCFD0(0, &qword_1EC6E3988);
    v5 = v2;
    v6 = sub_1D2878D78();

    if (v6)
    {

LABEL_7:
      *a1 = 0;
    }
  }
}

void sub_1D28567C0(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  sub_1D2870F78();
  v4 = a2;
  v3();
}

uint64_t sub_1D285686C(void *a1)
{
  v2 = sub_1D2873CB8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D2872578();
  v6 = a1;
  v7 = sub_1D2873CA8();
  v8 = sub_1D2878A18();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    v11 = a1;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v12;
    *v10 = v12;
    _os_log_impl(&dword_1D226E000, v7, v8, "Error communicating back with host: %@", v9, 0xCu);
    sub_1D22BD238(v10, qword_1EC6DA930);
    MEMORY[0x1D38A3520](v10, -1, -1);
    MEMORY[0x1D38A3520](v9, -1, -1);
  }

  return (*(v3 + 8))(v5, v2);
}

uint64_t ServiceSideConnectionManager.composingViewModel(_:didSave:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8E60);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v13 - v6;
  v8 = sub_1D28785F8();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  sub_1D2878568();
  sub_1D2870F78();
  sub_1D2870F78();
  v9 = sub_1D2878558();
  v10 = swift_allocObject();
  v11 = MEMORY[0x1E69E85E0];
  v10[2] = v9;
  v10[3] = v11;
  v10[4] = v3;
  v10[5] = a2;
  sub_1D22AE01C(0, 0, v7, &unk_1D28AC690, v10);
}

uint64_t sub_1D2856BC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[16] = a4;
  v5[17] = a5;
  v6 = sub_1D2873CB8();
  v5[18] = v6;
  v5[19] = *(v6 - 8);
  v5[20] = swift_task_alloc();
  sub_1D2878568();
  v5[21] = sub_1D2878558();
  v8 = sub_1D28784F8();
  v5[22] = v8;
  v5[23] = v7;

  return MEMORY[0x1EEE6DFA0](sub_1D2856CBC, v8, v7);
}

uint64_t sub_1D2856CBC()
{
  v1 = *(v0[16] + 24);
  os_unfair_lock_lock((v1 + 24));
  v2 = *(v1 + 16);
  v3 = v2;
  os_unfair_lock_unlock((v1 + 24));
  if (v2)
  {
    v0[6] = sub_1D285FB3C;
    v0[7] = 0;
    v0[2] = MEMORY[0x1E69E9820];
    v0[3] = 1107296256;
    v0[4] = sub_1D28567C0;
    v0[5] = &block_descriptor_332;
    v4 = _Block_copy(v0 + 2);

    v5 = [v3 remoteObjectProxyWithErrorHandler_];
    _Block_release(v4);
    sub_1D2879008();
    swift_unknownObjectRelease();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E3980);
    swift_dynamicCast();
    v6 = v0[15];
    v0[24] = v6;
    if (v6)
    {
      v7 = swift_task_alloc();
      v0[25] = v7;
      *v7 = v0;
      v7[1] = sub_1D2856FFC;
      v8 = v0[17];

      return sub_1D23F4380(v8);
    }
  }

  else
  {

    sub_1D285F514();
    v10 = swift_allocError();
    sub_1D2872578();
    v11 = v10;
    v12 = sub_1D2873CA8();
    v13 = sub_1D2878A18();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      *v14 = 138412290;
      v16 = v10;
      v17 = _swift_stdlib_bridgeErrorToNSError();
      *(v14 + 4) = v17;
      *v15 = v17;
      _os_log_impl(&dword_1D226E000, v12, v13, "Error communicating back with host: %@", v14, 0xCu);
      sub_1D22BD238(v15, qword_1EC6DA930);
      MEMORY[0x1D38A3520](v15, -1, -1);
      MEMORY[0x1D38A3520](v14, -1, -1);
    }

    v19 = v0[19];
    v18 = v0[20];
    v20 = v0[18];

    (*(v19 + 8))(v18, v20);
  }

  v21 = v0[1];

  return v21();
}

uint64_t sub_1D2856FFC(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 208) = a1;

  v3 = *(v2 + 184);
  v4 = *(v2 + 176);

  return MEMORY[0x1EEE6DFA0](sub_1D2857124, v4, v3);
}

uint64_t sub_1D2857124()
{
  v1 = v0[26];
  if (v1)
  {
    v2 = v0[24];
    v3 = v0[17];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6E3A10);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_1D28809B0;
    *(v4 + 32) = v1;
    sub_1D2878C28();
    v5 = v1;
    v6 = sub_1D28783C8();

    [v2 editorDidGenerateAssets_];

    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_1D28809B0;
    *(v7 + 32) = v5;
    v8 = v5;
    v9 = sub_1D28783C8();

    [v2 pickerDidSelectAssets_];

    swift_beginAccess();
    v10 = *(v3 + 80);
    if (v10 && ([v10 isHidden] & 1) != 0)
    {
      v11 = swift_task_alloc();
      v0[27] = v11;
      *v11 = v0;
      v11[1] = sub_1D2857384;

      return sub_1D2329478();
    }
  }

  else
  {
    v13 = v0[24];

    [v13 editorDidCancelWithRequiresShowingGrid_];
    [v13 pickerDidCancel];
  }

  swift_unknownObjectRelease();

  v14 = v0[1];

  return v14();
}

uint64_t sub_1D2857384()
{
  v1 = *v0;

  v2 = *(v1 + 184);
  v3 = *(v1 + 176);

  return MEMORY[0x1EEE6DFA0](sub_1D28574A4, v3, v2);
}

uint64_t sub_1D28574A4()
{
  v1 = *(v0 + 208);

  swift_unknownObjectRelease();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1D28575D8(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v6 = *a1;
  v7 = *a2;
  swift_beginAccess();
  *(v7 + 32) = v6;
  sub_1D2870F78();

  return a5(v8);
}

uint64_t sub_1D285765C(uint64_t a1, void (*a2)(uint64_t))
{
  swift_beginAccess();
  *(v2 + 32) = a1;
  sub_1D2870F78();

  a2(v5);
}

uint64_t sub_1D28576CC()
{
  v1 = v0;
  v2 = *(v0 + 16);
  swift_beginAccess();
  v3 = *(v1 + 32);
  swift_beginAccess();
  *(v2 + 32) = v3;
  swift_retain_n();

  sub_1D2852568();
  v4 = v1;

  v5 = *(v1 + 32);
  if (v5)
  {
    v6 = *(v5 + 16);
    sub_1D2870F78();
  }

  else
  {
    v6 = 0;
  }

  swift_beginAccess();
  *(v4 + 40) = v6;
  sub_1D2870F78();

  sub_1D285791C();
}

uint64_t ServiceSideConnectionManager.composingViewModel.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 40) = a1;
  sub_1D2870F78();

  sub_1D285791C();
}

uint64_t (*ServiceSideConnectionManager.playgroundHomeViewModel.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1D2857868;
}

uint64_t sub_1D28578B8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 40) = v2;
  sub_1D2870F78();

  return sub_1D285791C();
}

uint64_t sub_1D285791C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8E60);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v16[-v3];
  v5 = *(v0 + 16);
  swift_beginAccess();
  v6 = *(v1 + 40);
  swift_beginAccess();
  *(v5 + 24) = v6;
  swift_retain_n();

  sub_1D285228C();

  v7 = *(v1 + 40);
  v8 = MEMORY[0x1E69E85E0];
  if (v7)
  {
    v9 = sub_1D28785F8();
    (*(*(v9 - 8) + 56))(v4, 1, 1, v9);
    sub_1D2878568();
    swift_retain_n();
    sub_1D2870F78();
    v10 = sub_1D2878558();
    v11 = swift_allocObject();
    v11[2] = v10;
    v11[3] = v8;
    v11[4] = v7;
    v11[5] = v1;
    sub_1D22AE01C(0, 0, v4, &unk_1D28ACE78, v11);
  }

  v12 = sub_1D28785F8();
  (*(*(v12 - 8) + 56))(v4, 1, 1, v12);
  sub_1D2878568();
  sub_1D2870F78();
  v13 = sub_1D2878558();
  v14 = swift_allocObject();
  v14[2] = v13;
  v14[3] = v8;
  v14[4] = v1;
  sub_1D22AE01C(0, 0, v4, &unk_1D28ACE68, v14);
}

uint64_t (*ServiceSideConnectionManager.composingViewModel.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1D2857BB8;
}

uint64_t sub_1D2857BD0(uint64_t a1, char a2, uint64_t (*a3)(uint64_t))
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return a3(result);
  }

  return result;
}

uint64_t sub_1D2857C14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  sub_1D2878568();
  v5[5] = sub_1D2878558();
  v7 = sub_1D28784F8();

  return MEMORY[0x1EEE6DFA0](sub_1D2857CB0, v7, v6);
}

uint64_t sub_1D2857CB0()
{

  sub_1D28719C8();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D2857DD0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8E60);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v38 - v2;
  v4 = sub_1D2873CB8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v9 = result;
    swift_beginAccess();
    v10 = *(v9 + 40);
    if (v10)
    {
      v41 = v0;
      v11 = *(v9 + 24);
      sub_1D2870F78();
      os_unfair_lock_lock((v11 + 24));
      v12 = *(v11 + 16);
      v13 = v12;
      os_unfair_lock_unlock((v11 + 24));
      if (v12)
      {
        aBlock[4] = sub_1D285FB3C;
        aBlock[5] = 0;
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_1D28567C0;
        aBlock[3] = &block_descriptor_299_0;
        v14 = _Block_copy(aBlock);

        v15 = [v13 remoteObjectProxyWithErrorHandler_];
        _Block_release(v14);
        sub_1D2879008();

        swift_unknownObjectRelease();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E3980);
        swift_dynamicCast();
        v16 = aBlock[13];
      }

      else
      {
        sub_1D285F514();
        v17 = swift_allocError();
        sub_1D2872578();
        v18 = v17;
        v19 = sub_1D2873CA8();
        v20 = sub_1D2878A18();

        if (os_log_type_enabled(v19, v20))
        {
          v21 = swift_slowAlloc();
          v40 = v19;
          v22 = v21;
          v39 = swift_slowAlloc();
          *v22 = 138412290;
          v23 = v17;
          v24 = _swift_stdlib_bridgeErrorToNSError();
          v25 = v22;
          *(v22 + 4) = v24;
          v27 = v39;
          v26 = v40;
          *v39 = v24;
          v28 = v20;
          v29 = v25;
          _os_log_impl(&dword_1D226E000, v26, v28, "Error communicating back with host: %@", v25, 0xCu);
          sub_1D22BD238(v27, qword_1EC6DA930);
          MEMORY[0x1D38A3520](v27, -1, -1);
          v19 = v40;
          MEMORY[0x1D38A3520](v29, -1, -1);
        }

        (*(v5 + 8))(v7, v4);
        v16 = 0;
      }

      v30 = *(v9 + 40);
      v31 = MEMORY[0x1E69E85E0];
      if (v30)
      {
        v32 = sub_1D28785F8();
        (*(*(v32 - 8) + 56))(v3, 1, 1, v32);
        sub_1D2878568();
        swift_retain_n();
        sub_1D2870F78();
        v33 = sub_1D2878558();
        v34 = swift_allocObject();
        v34[2] = v33;
        v34[3] = v31;
        v34[4] = v30;
        v34[5] = v9;
        sub_1D22AE01C(0, 0, v3, &unk_1D28ACE98, v34);
      }

      v35 = sub_1D28785F8();
      (*(*(v35 - 8) + 56))(v3, 1, 1, v35);
      sub_1D2878568();
      swift_unknownObjectRetain();
      sub_1D2870F78();
      v36 = sub_1D2878558();
      v37 = swift_allocObject();
      v37[2] = v36;
      v37[3] = v31;
      v37[4] = v10;
      v37[5] = v16;
      sub_1D22AE01C(0, 0, v3, &unk_1D28ACE90, v37);

      swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_1D2858304(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
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

  return MEMORY[0x1EEE6DFA0](sub_1D28583F8, v8, v7);
}

uint64_t sub_1D28583F8()
{

  sub_1D2872578();
  sub_1D2870F78();
  v1 = sub_1D2873CA8();
  v2 = sub_1D28789F8();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 67109120;
    *(v3 + 4) = sub_1D23006FC() & 1;

    _os_log_impl(&dword_1D226E000, v1, v2, "didChangeCanStartUpscaling %{BOOL}d", v3, 8u);
    MEMORY[0x1D38A3520](v3, -1, -1);
  }

  else
  {
  }

  v4 = *(v0 + 24);
  (*(*(v0 + 40) + 8))(*(v0 + 48), *(v0 + 32));
  if (v4)
  {
    [*(v0 + 24) editorDidChangeCanStartUpscaling_];
  }

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1D285854C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a4;
  sub_1D2878568();
  v4[4] = sub_1D2878558();
  v6 = sub_1D28784F8();

  return MEMORY[0x1EEE6DFA0](sub_1D28585E4, v6, v5);
}

uint64_t sub_1D28585E4()
{

  sub_1D28719C8();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D285868C(uint64_t a1)
{
  result = swift_beginAccess();
  if (*(a1 + 40))
  {
    sub_1D2870F78();
    sub_1D22F7DF4();

    swift_getKeyPath();
    sub_1D285F80C(&qword_1ED8A0230, type metadata accessor for ComposingFooterViewModel);
    sub_1D28719E8();
  }

  return result;
}

uint64_t sub_1D28587D4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8E60);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v34 - v2;
  v4 = sub_1D2873CB8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v9 = result;
    swift_beginAccess();
    v10 = *(v9 + 40);
    if (v10)
    {
      v37 = v0;
      v11 = *(v9 + 24);
      sub_1D2870F78();
      os_unfair_lock_lock((v11 + 24));
      v12 = *(v11 + 16);
      v13 = v12;
      os_unfair_lock_unlock((v11 + 24));
      if (v12)
      {
        aBlock[4] = sub_1D285FB3C;
        aBlock[5] = 0;
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_1D28567C0;
        aBlock[3] = &block_descriptor_307_0;
        v14 = _Block_copy(aBlock);

        v15 = [v13 remoteObjectProxyWithErrorHandler_];
        _Block_release(v14);
        sub_1D2879008();

        swift_unknownObjectRelease();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E3980);
        swift_dynamicCast();
        v16 = aBlock[13];
      }

      else
      {
        sub_1D285F514();
        v17 = swift_allocError();
        sub_1D2872578();
        v18 = v17;
        v19 = sub_1D2873CA8();
        v20 = sub_1D2878A18();

        if (os_log_type_enabled(v19, v20))
        {
          v21 = swift_slowAlloc();
          v36 = v19;
          v22 = v21;
          v35 = swift_slowAlloc();
          *v22 = 138412290;
          v23 = v17;
          v24 = _swift_stdlib_bridgeErrorToNSError();
          v25 = v22;
          *(v22 + 4) = v24;
          v27 = v35;
          v26 = v36;
          *v35 = v24;
          v28 = v20;
          v29 = v25;
          _os_log_impl(&dword_1D226E000, v26, v28, "Error communicating back with host: %@", v25, 0xCu);
          sub_1D22BD238(v27, qword_1EC6DA930);
          MEMORY[0x1D38A3520](v27, -1, -1);
          v19 = v36;
          MEMORY[0x1D38A3520](v29, -1, -1);
        }

        (*(v5 + 8))(v7, v4);
        v16 = 0;
      }

      v30 = sub_1D28785F8();
      (*(*(v30 - 8) + 56))(v3, 1, 1, v30);
      sub_1D2878568();
      swift_unknownObjectRetain();
      sub_1D2870F78();
      sub_1D2870F78();
      v31 = sub_1D2878558();
      v32 = swift_allocObject();
      v33 = MEMORY[0x1E69E85E0];
      v32[2] = v31;
      v32[3] = v33;
      v32[4] = v10;
      v32[5] = v16;
      v32[6] = v9;
      sub_1D22AE01C(0, 0, v3, &unk_1D28ACEB8, v32);

      swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_1D2858C54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a5;
  v6[5] = a6;
  v6[3] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8E60);
  v6[6] = swift_task_alloc();
  v7 = sub_1D2873CB8();
  v6[7] = v7;
  v6[8] = *(v7 - 8);
  v6[9] = swift_task_alloc();
  v6[10] = sub_1D2878568();
  v6[11] = sub_1D2878558();
  v9 = sub_1D28784F8();

  return MEMORY[0x1EEE6DFA0](sub_1D2858D88, v9, v8);
}

uint64_t sub_1D2858D88()
{

  v1 = sub_1D22F7DF4();
  swift_getKeyPath();
  *(v0 + 16) = v1;
  sub_1D285F80C(&qword_1ED8A0230, type metadata accessor for ComposingFooterViewModel);
  sub_1D28719E8();

  v2 = *(v1 + 129);

  sub_1D2872578();
  v3 = sub_1D2873CA8();
  v4 = sub_1D28789F8();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 67109120;
    *(v5 + 4) = v2;
    _os_log_impl(&dword_1D226E000, v3, v4, "editorShouldChangeToolbarVisibility isHidden: %{BOOL}d", v5, 8u);
    MEMORY[0x1D38A3520](v5, -1, -1);
  }

  v7 = *(v0 + 64);
  v6 = *(v0 + 72);
  v8 = *(v0 + 56);
  v9 = *(v0 + 32);

  (*(v7 + 8))(v6, v8);
  if (v9)
  {
    [*(v0 + 32) editorDidChangeToolbarVisibility_];
  }

  v11 = *(v0 + 40);
  v10 = *(v0 + 48);
  v12 = sub_1D28785F8();
  (*(*(v12 - 8) + 56))(v10, 1, 1, v12);
  sub_1D2870F78();
  v13 = sub_1D2878558();
  v14 = swift_allocObject();
  v15 = MEMORY[0x1E69E85E0];
  v14[2] = v13;
  v14[3] = v15;
  v14[4] = v11;
  sub_1D22AE01C(0, 0, v10, &unk_1D28ACEE8, v14);

  v16 = *(v0 + 8);

  return v16();
}

uint64_t ServiceSideConnectionManager.deinit()
{

  return v0;
}

uint64_t ServiceSideConnectionManager.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1D2859108(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8E60);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v13 - v6;
  v8 = sub_1D28785F8();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  sub_1D2878568();
  sub_1D2870F78();
  sub_1D2870F78();
  v9 = sub_1D2878558();
  v10 = swift_allocObject();
  v11 = MEMORY[0x1E69E85E0];
  v10[2] = v9;
  v10[3] = v11;
  v10[4] = v3;
  v10[5] = a2;
  sub_1D22AE01C(0, 0, v7, &unk_1D28ACE00, v10);
}

uint64_t sub_1D2859340@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v10 = sub_1D2878F18();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v14 - v11;
  type metadata accessor for DeferredView();
  (*(*(a4 - 8) + 56))(v12, 1, 1, a4);
  result = sub_1D285BA54(v12);
  *a5 = a1;
  a5[1] = a2;
  a5[2] = a3;
  return result;
}

uint64_t sub_1D285943C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  sub_1D2878568();
  *(v4 + 24) = sub_1D2878558();
  v6 = sub_1D28784F8();

  return MEMORY[0x1EEE6DFA0](sub_1D28594D4, v6, v5);
}

uint64_t sub_1D28594D4()
{
  v1 = *(v0 + 16);

  *(v1 + 32) = 1;
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = *(v1 + 24);
    v4 = sub_1D2870F78();
    v2(v4);
    sub_1D22D7900(v2, v3);
    v5 = *(v1 + 16);
  }

  else
  {
    v5 = 0;
  }

  v6 = *(v1 + 24);
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  sub_1D22D7900(v5, v6);
  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_1D28595D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  sub_1D2878568();
  *(v4 + 24) = sub_1D2878558();
  v6 = sub_1D28784F8();

  return MEMORY[0x1EEE6DFA0](sub_1D285FBA4, v6, v5);
}

uint64_t sub_1D2859714@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned int *a3@<X4>, uint64_t *a4@<X8>)
{
  v8 = sub_1D2871E48();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = (*(v9 + 104))(v12, *a3, v8, v10);
  v14 = MEMORY[0x1D389A8B0](v13);
  v16 = v15;
  (*(v9 + 8))(v12, v8);
  *a4 = v14;
  a4[1] = v16;
  type metadata accessor for ServiceSideConnectionManager();
  v17 = swift_allocObject();
  type metadata accessor for GPServiceSideExportedObject();
  v18 = swift_allocObject();
  sub_1D2852160();
  v17[2] = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EC6E35C8);
  v19 = swift_allocObject();
  *(v19 + 24) = 0;
  *(v19 + 16) = 0;
  v17[4] = 0;
  v17[5] = 0;
  v17[3] = v19;
  a4[4] = v17;
  type metadata accessor for Notifier();
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 32) = 0;
  a4[5] = result;
  a4[2] = a1;
  a4[3] = a2;
  return result;
}

uint64_t sub_1D28598E4(uint64_t a1)
{
  v3 = v1[1];
  v9[0] = *v1;
  v9[1] = v3;
  v10 = v1[2];
  v4 = swift_allocObject();
  v5 = *(a1 + 24);
  *(v4 + 16) = *(a1 + 16);
  *(v4 + 24) = v5;
  v6 = v1[1];
  *(v4 + 32) = *v1;
  *(v4 + 48) = v6;
  *(v4 + 64) = v1[2];
  *(swift_allocObject() + 16) = v10;
  sub_1D2870F68();
  (*(*(a1 - 8) + 16))(v8, v9, a1);
  type metadata accessor for DeferredView();
  sub_1D2870F78();
  sub_1D2870F78();
  swift_getWitnessTable();
  return sub_1D2871A58();
}

uint64_t sub_1D2859A34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(void, uint64_t, uint64_t)@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v23[0] = a5;
  v23[1] = a6;
  v10 = type metadata accessor for DeferredView();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = v23 - v15;
  v17 = *(a1 + 40);
  v18 = swift_allocObject();
  *(v18 + 16) = a2;
  *(v18 + 24) = a3;
  v19 = *(a1 + 16);
  *(v18 + 32) = *a1;
  *(v18 + 48) = v19;
  *(v18 + 64) = *(a1 + 32);
  sub_1D2870F78();
  v20 = a4(0, a2, a3);
  (*(*(v20 - 8) + 16))(v24, a1, v20);
  sub_1D2859340(v17, v23[0], v18, a2, v13);
  swift_getWitnessTable();
  sub_1D245980C(v13);
  v21 = *(v11 + 8);
  v21(v13, v10);
  sub_1D245980C(v16);
  return v21(v16, v10);
}

uint64_t sub_1D2859C34(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 - 8);
  v4 = MEMORY[0x1EEE9AC00](a1);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v12 - v8;
  (*(v7 + 16))(*(v7 + 32));
  sub_1D245980C(v6);
  v10 = *(v3 + 8);
  v10(v6, a2);
  sub_1D245980C(v9);
  return (v10)(v9, a2);
}

uint64_t sub_1D2859D6C(NSXPCConnection a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8E60);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v16 - v9;
  ServiceSideConnectionManager.shouldAccept(connection:)(a1);
  v11 = sub_1D28785F8();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  sub_1D2878568();
  sub_1D2870F78();
  v12 = sub_1D2878558();
  v13 = swift_allocObject();
  v14 = MEMORY[0x1E69E85E0];
  v13[2] = v12;
  v13[3] = v14;
  v13[4] = a3;
  sub_1D22AE01C(0, 0, v10, a5, v13);

  return 1;
}

uint64_t static GPSceneBuilder.buildBlock<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (**a4)@<X0>(uint64_t a1@<X8>)@<X8>)
{
  v7 = *(a2 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](a1);
  v10 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v10, v9);
  v11 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = a2;
  *(v12 + 24) = a3;
  result = (*(v7 + 32))(v12 + v11, v10, a2);
  *a4 = sub_1D285D818;
  a4[1] = v12;
  return result;
}

uint64_t static GPSceneBuilder.buildBlock<A, B>(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t (**a7)@<X0>(uint64_t *a1@<X8>)@<X8>)
{
  v25 = a5;
  v26 = a6;
  v11 = *(a4 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v18 = MEMORY[0x1EEE9AC00](v17);
  v19 = &v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v19, v18);
  (*(v11 + 16))(v13, a2, a4);
  v20 = (*(v15 + 80) + 48) & ~*(v15 + 80);
  v21 = (v16 + *(v11 + 80) + v20) & ~*(v11 + 80);
  v22 = swift_allocObject();
  *(v22 + 2) = a3;
  *(v22 + 3) = a4;
  v23 = v26;
  *(v22 + 4) = v25;
  *(v22 + 5) = v23;
  (*(v15 + 32))(&v22[v20], v19, a3);
  result = (*(v11 + 32))(&v22[v21], v13, a4);
  *a7 = sub_1D285D858;
  a7[1] = v22;
  return result;
}

uint64_t sub_1D285A1D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  v22 = a7;
  v23 = a6;
  v20 = a5;
  v21 = a2;
  v10 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v20 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E3970);
  sub_1D2871A98();
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1D287F550;
  (*(v14 + 16))(v17, a1, a3);
  sub_1D2871A88();
  (*(v10 + 16))(v12, v21, a4);
  result = sub_1D2871A88();
  *v22 = v18;
  return result;
}

uint64_t static GPSceneBuilder.buildBlock<A, B, C>(_:_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t (**a8)@<X0>(uint64_t *a1@<X8>)@<X8>, uint64_t a9)
{
  v39 = a6;
  v40 = a7;
  v36 = a5;
  v37 = a3;
  v35 = a2;
  v41 = a8;
  v10 = *(a5 - 8);
  v11 = *(v10 + 64);
  v38 = a9;
  MEMORY[0x1EEE9AC00](a1);
  v34 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v32 = v16;
  v33 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v20 = MEMORY[0x1EEE9AC00](v19);
  v21 = &v32 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v17 + 16))(v21, v20);
  (*(v13 + 16))(&v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v35, a4);
  v22 = v36;
  (*(v10 + 16))(&v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v37, v36);
  v23 = (*(v17 + 80) + 64) & ~*(v17 + 80);
  v24 = (v18 + *(v13 + 80) + v23) & ~*(v13 + 80);
  v25 = (v14 + *(v10 + 80) + v24) & ~*(v10 + 80);
  v26 = swift_allocObject();
  *(v26 + 2) = v32;
  *(v26 + 3) = a4;
  v27 = v39;
  v28 = v40;
  *(v26 + 4) = v22;
  *(v26 + 5) = v27;
  v29 = v38;
  *(v26 + 6) = v28;
  *(v26 + 7) = v29;
  (*(v17 + 32))(&v26[v23], v21);
  (*(v13 + 32))(&v26[v24], v33, a4);
  result = (*(v10 + 32))(&v26[v25], v34, v22);
  v31 = v41;
  *v41 = sub_1D285D8F4;
  v31[1] = v26;
  return result;
}

uint64_t sub_1D285A6D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>, uint64_t a10)
{
  v31 = a6;
  v32 = a8;
  v27 = a7;
  v28 = a2;
  v25 = a5;
  v26 = a1;
  v33 = a3;
  v34 = a9;
  v29 = *(a6 - 8);
  v30 = a10;
  MEMORY[0x1EEE9AC00](a1);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v25 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E3970);
  sub_1D2871A98();
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_1D28838F0;
  (*(v19 + 16))(v22, v26, a4);
  sub_1D2871A88();
  (*(v14 + 16))(v17, v28, v25);
  sub_1D2871A88();
  (*(v29 + 16))(v12, v33, v31);
  result = sub_1D2871A88();
  *v34 = v23;
  return result;
}

uint64_t static GPSceneBuilder.buildBlock<A, B, C, D>(_:_:_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t (**a8)@<X0>(uint64_t *a1@<X8>)@<X8>, __int128 a9, uint64_t a10, uint64_t a11)
{
  v48 = a7;
  v49 = a4;
  v46 = a2;
  v47 = a3;
  v54 = a8;
  v52 = a10;
  v53 = a11;
  v55 = *(a7 - 8);
  v50 = *(v55 + 64);
  v51 = a9;
  MEMORY[0x1EEE9AC00](a1);
  v56 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v14 - 8);
  v45 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = v18;
  v40 = v19;
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v43 = &v39 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = v23;
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  v27 = MEMORY[0x1EEE9AC00](v26);
  v42 = &v39 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v24 + 16))(v27);
  (*(v20 + 16))(&v39 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0), v46, a5);
  v39 = v15;
  (*(v15 + 16))(v18, v47, a6);
  v28 = v55;
  v29 = v48;
  (*(v55 + 16))(v56, v49, v48);
  v30 = (*(v24 + 80) + 80) & ~*(v24 + 80);
  v31 = (v25 + *(v20 + 80) + v30) & ~*(v20 + 80);
  v32 = (v21 + *(v15 + 80) + v31) & ~*(v15 + 80);
  v33 = (v45 + *(v28 + 80) + v32) & ~*(v28 + 80);
  v34 = swift_allocObject();
  v35 = v40;
  *(v34 + 16) = v41;
  *(v34 + 24) = v35;
  *(v34 + 32) = a6;
  *(v34 + 40) = v29;
  *(v34 + 48) = v51;
  v36 = v53;
  *(v34 + 64) = v52;
  *(v34 + 72) = v36;
  (*(v24 + 32))(v34 + v30, v42);
  (*(v20 + 32))(v34 + v31, v43, v35);
  (*(v39 + 32))(v34 + v32, v44, a6);
  result = (*(v55 + 32))(v34 + v33, v56, v29);
  v38 = v54;
  *v54 = sub_1D285DA0C;
  v38[1] = v34;
  return result;
}

uint64_t sub_1D285AD7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v41 = a8;
  v42 = a4;
  v33 = a1;
  v34 = a7;
  v32[0] = a6;
  v36 = a2;
  v44 = a9;
  v43 = a13;
  v39 = a3;
  v40 = a12;
  v38 = *(a8 - 8);
  v35 = a11;
  v32[1] = a10;
  MEMORY[0x1EEE9AC00](a1);
  v37 = v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v19 = v32 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v24 = v32 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v29 = v32 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E3970);
  sub_1D2871A98();
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_1D28800F0;
  (*(v26 + 16))(v29, v33, a5);
  sub_1D2871A88();
  (*(v21 + 16))(v24, v36, v32[0]);
  sub_1D2871A88();
  (*(v16 + 16))(v19, v39, v34);
  sub_1D2871A88();
  (*(v38 + 16))(v37, v42, v41);
  result = sub_1D2871A88();
  *v44 = v30;
  return result;
}

uint64_t static GPSceneBuilder.buildBlock<A, B, C, D, E>(_:_:_:_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t (**a8)@<X0>(uint64_t *a1@<X8>)@<X8>, uint64_t a9, uint64_t a10, __int128 a11, __int128 a12, uint64_t a13)
{
  v62 = a4;
  v63 = a5;
  v58 = a2;
  v68 = a8;
  v67 = a13;
  v57 = a9;
  v60 = a3;
  v61 = a10;
  v71 = *(a10 - 8);
  v64 = *(v71 + 64);
  v65 = a11;
  v66 = a12;
  MEMORY[0x1EEE9AC00](a1);
  v70 = &v47 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(v16 - 8);
  v59 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v69 = &v47 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = v20;
  v21 = *(v20 - 8);
  v56 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v47 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = v24;
  v51 = v25;
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v28);
  v54 = &v47 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = v29;
  v30 = *(v29 - 8);
  v31 = *(v30 + 64);
  v33 = MEMORY[0x1EEE9AC00](v32);
  v53 = &v47 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v30 + 16))(v33);
  (*(v26 + 16))(&v47 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0), v58, a6);
  v48 = v21;
  (*(v21 + 16))(v24, v60, a7);
  v49 = v17;
  v34 = v57;
  (*(v17 + 16))(v69, v62, v57);
  v35 = v71;
  v36 = v61;
  (*(v71 + 16))(v70, v63, v61);
  v37 = (*(v30 + 80) + 96) & ~*(v30 + 80);
  v38 = (v31 + *(v26 + 80) + v37) & ~*(v26 + 80);
  v39 = (v27 + *(v21 + 80) + v38) & ~*(v21 + 80);
  v40 = (v56 + *(v17 + 80) + v39) & ~*(v17 + 80);
  v62 = (v59 + *(v35 + 80) + v40) & ~*(v35 + 80);
  v63 = v40;
  v41 = swift_allocObject();
  v42 = v51;
  *(v41 + 16) = v52;
  *(v41 + 24) = v42;
  v43 = v50;
  *(v41 + 32) = v50;
  *(v41 + 40) = v34;
  *(v41 + 48) = v36;
  v44 = v66;
  *(v41 + 56) = v65;
  *(v41 + 72) = v44;
  *(v41 + 88) = v67;
  (*(v30 + 32))(v41 + v37, v53);
  (*(v26 + 32))(v41 + v38, v54, v42);
  (*(v48 + 32))(v41 + v39, v55, v43);
  (*(v49 + 32))(v41 + v63, v69, v34);
  result = (*(v71 + 32))(v41 + v62, v70, v36);
  v46 = v68;
  *v68 = sub_1D285DB84;
  v46[1] = v41;
  return result;
}

uint64_t sub_1D285B5FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v40 = a8;
  v38 = a7;
  v43 = a1;
  v57 = a9;
  v55 = a5;
  v56 = a16;
  v52 = a4;
  v53 = a15;
  v49 = a3;
  v50 = a14;
  v46 = a2;
  v47 = a10;
  v54 = a11;
  v51 = *(a11 - 8);
  v44 = a13;
  v41 = a12;
  MEMORY[0x1EEE9AC00](a1);
  v48 = &v37 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v42 = &v37 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v37 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v37 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v37 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E3970);
  sub_1D2871A98();
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_1D2880100;
  (*(v31 + 16))(v34, v43, a6);
  sub_1D2871A88();
  (*(v26 + 16))(v29, v46, v38);
  sub_1D2871A88();
  (*(v39 + 16))(v24, v49, v40);
  sub_1D2871A88();
  (*(v45 + 16))(v42, v52, v47);
  sub_1D2871A88();
  (*(v51 + 16))(v48, v55, v54);
  result = sub_1D2871A88();
  *v57 = v35;
  return result;
}

uint64_t sub_1D285BA54(uint64_t a1)
{
  v2 = sub_1D2878F18();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  sub_1D28772F8();
  return (*(v3 + 8))(a1, v2);
}

uint64_t sub_1D285BB48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v47 = a2;
  v44 = a1;
  v2 = a1 - 8;
  v41 = *(a1 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v38 = v3;
  v39 = &v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E3960);
  MEMORY[0x1EEE9AC00](v4);
  v40 = &v36 - v5;
  v6 = *(v2 + 24);
  v7 = sub_1D2878F18();
  v37 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v36 - v8;
  v10 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v36 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v36 - v18;
  v46 = v4;
  v43 = sub_1D2875B08();
  v45 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43);
  v21 = &v36 - v20;
  sub_1D2877338();
  v22 = v42;
  sub_1D2877308();
  if ((*(v10 + 48))(v9, 1, v6) == 1)
  {
    (*(v37 + 8))(v9, v7);
    v23 = v40;
    sub_1D2874738();
    v24 = v41;
    v25 = v39;
    v26 = v44;
    (*(v41 + 16))(v39, v22, v44);
    v27 = (*(v24 + 80) + 32) & ~*(v24 + 80);
    v28 = swift_allocObject();
    v29 = *(v26 + 24);
    *(v28 + 16) = v6;
    *(v28 + 24) = v29;
    (*(v24 + 32))(v28 + v27, v25, v26);
    v30 = v46;
    v31 = (v23 + *(v46 + 36));
    *v31 = sub_1D285EB10;
    v31[1] = v28;
    sub_1D285EB28();
    v31[2] = 0;
    v31[3] = 0;
    sub_1D24CB7CC(v23, v6, v30);
    sub_1D22BD238(v23, &qword_1EC6E3960);
  }

  else
  {
    (*(v10 + 32))(v19, v9, v6);
    v29 = *(v44 + 24);
    sub_1D245980C(v19);
    sub_1D245980C(v16);
    sub_1D285EB28();
    sub_1D24CB6D4(v13, v6);
    v32 = *(v10 + 8);
    v32(v13, v6);
    v32(v16, v6);
    v32(v19, v6);
  }

  v33 = sub_1D285EB28();
  v48 = v29;
  v49 = v33;
  v34 = v43;
  swift_getWitnessTable();
  sub_1D245980C(v21);
  return (*(v45 + 8))(v21, v34);
}

uint64_t sub_1D285C060(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v23 = a3;
  v5 = type metadata accessor for DeferredView();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v22 - v11;
  v13 = *a1;
  v14 = *(v6 + 16);
  (v14)(&v22 - v11, a1, v5, v10);
  v14(v8, v12, v5);
  v15 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v16 = a2;
  v17 = v23;
  v18 = swift_allocObject();
  *(v18 + 16) = v16;
  *(v18 + 24) = v17;
  (*(v6 + 32))(v18 + v15, v12, v5);
  if (*(v13 + 32) == 1)
  {
    sub_1D285C230(v8, v16);
  }

  else
  {
    v19 = *(v13 + 16);
    v20 = *(v13 + 24);
    *(v13 + 16) = sub_1D285ED34;
    *(v13 + 24) = v18;
    sub_1D22D7900(v19, v20);
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1D285C230(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D2878F18();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v13 - v10;
  (*(a1 + 8))(v9);
  (*(*(a2 - 8) + 56))(v11, 0, 1, a2);
  type metadata accessor for DeferredView();
  (*(v5 + 16))(v7, v11, v4);
  sub_1D2877338();
  sub_1D2877318();
  return (*(v5 + 8))(v11, v4);
}

uint64_t sub_1D285C3C0()
{
  sub_1D22D7900(*(v0 + 16), *(v0 + 24));

  return swift_deallocClassInstance();
}

void sub_1D285C3F8(char a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  v9 = sub_1D2873CB8();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v4 + 24);
  os_unfair_lock_lock((v13 + 24));
  v14 = *(v13 + 16);
  v15 = v14;
  os_unfair_lock_unlock((v13 + 24));
  if (v14)
  {
    aBlock[4] = a2;
    aBlock[5] = 0;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1D28567C0;
    aBlock[3] = a3;
    v16 = _Block_copy(aBlock);

    v17 = [v15 remoteObjectProxyWithErrorHandler_];
    _Block_release(v16);
    sub_1D2879008();

    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E3980);
    swift_dynamicCast();
    if (v27)
    {
      [v27 *a4];
      swift_unknownObjectRelease();
    }
  }

  else
  {
    sub_1D285F514();
    v18 = swift_allocError();
    sub_1D2872578();
    v19 = v18;
    v20 = sub_1D2873CA8();
    v21 = sub_1D2878A18();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      *v22 = 138412290;
      v24 = v18;
      v25 = _swift_stdlib_bridgeErrorToNSError();
      *(v22 + 4) = v25;
      *v23 = v25;
      _os_log_impl(&dword_1D226E000, v20, v21, "Error communicating back with host: %@", v22, 0xCu);
      sub_1D22BD238(v23, qword_1EC6DA930);
      MEMORY[0x1D38A3520](v23, -1, -1);
      MEMORY[0x1D38A3520](v22, -1, -1);
    }

    (*(v10 + 8))(v12, v9);
  }
}

uint64_t sub_1D285C6F4(char a1)
{
  v3 = sub_1D2873CB8();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = swift_allocObject();
  *(v7 + 16) = 0;
  v8 = *(v1 + 24);
  os_unfair_lock_lock((v8 + 24));
  v9 = *(v8 + 16);
  v10 = v9;
  os_unfair_lock_unlock((v8 + 24));
  if (v9)
  {
    v31 = sub_1D285FB3C;
    v32 = 0;
    aBlock = MEMORY[0x1E69E9820];
    v28 = 1107296256;
    v29 = sub_1D28567C0;
    v30 = &block_descriptor_326;
    v11 = _Block_copy(&aBlock);

    v12 = [v10 synchronousRemoteObjectProxyWithErrorHandler_];
    _Block_release(v11);
    sub_1D2879008();

    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E3980);
    swift_dynamicCast();
    v13 = v26;
    if (v26)
    {
      v31 = sub_1D285F7CC;
      v32 = v7;
      aBlock = MEMORY[0x1E69E9820];
      v28 = 1107296256;
      v29 = sub_1D27BC4E0;
      v30 = &block_descriptor_329;
      v14 = _Block_copy(&aBlock);
      sub_1D2870F78();

      [v13 pickerWantsToStartCreationWithIsTransitionSupported:a1 & 1 replyHandler:v14];
      swift_unknownObjectRelease();
      _Block_release(v14);
    }
  }

  else
  {
    sub_1D285F514();
    v15 = swift_allocError();
    sub_1D2872578();
    v16 = v15;
    v17 = sub_1D2873CA8();
    v18 = sub_1D2878A18();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      *v19 = 138412290;
      v21 = v15;
      v22 = _swift_stdlib_bridgeErrorToNSError();
      *(v19 + 4) = v22;
      *v20 = v22;
      _os_log_impl(&dword_1D226E000, v17, v18, "Error communicating back with host: %@", v19, 0xCu);
      sub_1D22BD238(v20, qword_1EC6DA930);
      MEMORY[0x1D38A3520](v20, -1, -1);
      MEMORY[0x1D38A3520](v19, -1, -1);
    }

    (*(v4 + 8))(v6, v3);
  }

  swift_beginAccess();
  v23 = *(v7 + 16);

  return v23;
}

void sub_1D285CAC8()
{
  v1 = sub_1D2873CB8();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + 24);
  os_unfair_lock_lock((v5 + 24));
  v6 = *(v5 + 16);
  v7 = v6;
  os_unfair_lock_unlock((v5 + 24));
  if (v6)
  {
    aBlock[4] = sub_1D285FB3C;
    aBlock[5] = 0;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1D28567C0;
    aBlock[3] = &block_descriptor_346;
    v8 = _Block_copy(aBlock);

    v9 = [v7 remoteObjectProxyWithErrorHandler_];
    _Block_release(v8);
    sub_1D2879008();

    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E3980);
    swift_dynamicCast();
    v10 = v21;
    if (v21)
    {
      sub_1D2878C28();
      v11 = sub_1D28783C8();
      [v10 pickerDidSelectAssets_];

      swift_unknownObjectRelease();
    }
  }

  else
  {
    sub_1D285F514();
    v12 = swift_allocError();
    sub_1D2872578();
    v13 = v12;
    v14 = sub_1D2873CA8();
    v15 = sub_1D2878A18();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      *v16 = 138412290;
      v18 = v12;
      v19 = _swift_stdlib_bridgeErrorToNSError();
      *(v16 + 4) = v19;
      *v17 = v19;
      _os_log_impl(&dword_1D226E000, v14, v15, "Error communicating back with host: %@", v16, 0xCu);
      sub_1D22BD238(v17, qword_1EC6DA930);
      MEMORY[0x1D38A3520](v17, -1, -1);
      MEMORY[0x1D38A3520](v16, -1, -1);
    }

    (*(v2 + 8))(v4, v1);
  }
}

void sub_1D285CDE8(uint64_t a1, uint64_t a2, SEL *a3)
{
  v7 = sub_1D2873CB8();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v3 + 24);
  os_unfair_lock_lock((v11 + 24));
  v12 = *(v11 + 16);
  v13 = v12;
  os_unfair_lock_unlock((v11 + 24));
  if (v12)
  {
    aBlock[4] = a1;
    aBlock[5] = 0;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1D28567C0;
    aBlock[3] = a2;
    v14 = _Block_copy(aBlock);

    v15 = [v13 remoteObjectProxyWithErrorHandler_];
    _Block_release(v14);
    sub_1D2879008();

    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E3980);
    swift_dynamicCast();
    if (v25)
    {
      [v25 *a3];
      swift_unknownObjectRelease();
    }
  }

  else
  {
    sub_1D285F514();
    v16 = swift_allocError();
    sub_1D2872578();
    v17 = v16;
    v18 = sub_1D2873CA8();
    v19 = sub_1D2878A18();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      *v20 = 138412290;
      v22 = v16;
      v23 = _swift_stdlib_bridgeErrorToNSError();
      *(v20 + 4) = v23;
      *v21 = v23;
      _os_log_impl(&dword_1D226E000, v18, v19, "Error communicating back with host: %@", v20, 0xCu);
      sub_1D22BD238(v21, qword_1EC6DA930);
      MEMORY[0x1D38A3520](v21, -1, -1);
      MEMORY[0x1D38A3520](v20, -1, -1);
    }

    (*(v8 + 8))(v10, v7);
  }
}

void sub_1D285D0DC(uint64_t a1, uint64_t a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = [objc_opt_self() currentConnection];
  if (v4)
  {
    v5 = v4;
    [v4 auditToken];
    v6 = SecTaskCreateWithAuditToken(0, &token);
    if (!v6)
    {
LABEL_5:

      return;
    }

    v7 = v6;
    if (sub_1D27E25E4(v6))
    {
      *token.val = a1;
      *&token.val[2] = a2;
      sub_1D285FA44();
      sub_1D2871168();
      memset(&token, 0, sizeof(token));
      v9 = 2;
      _s23ImagePlaygroundInternal16ExecutionContextV17setClientIdentityyyAC08GPClientH0OFZ_0(&token);

      goto LABEL_5;
    }
  }
}

uint64_t block_copy_helper_59(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1D2870F78();
}

uint64_t sub_1D285D398(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1D22BDFF8;

  return sub_1D2856BC8(a1, v4, v5, v7, v6);
}

uint64_t objectdestroyTm_43()
{
  (*(*(*(v0 + 16) - 8) + 8))(v0 + ((*(*(*(v0 + 16) - 8) + 80) + 32) & ~*(*(*(v0 + 16) - 8) + 80)));

  return swift_deallocObject();
}

uint64_t sub_1D285D858@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[3];
  v3 = *(*(v1[2] - 8) + 80);
  return sub_1D285A1D8(v1 + ((v3 + 48) & ~v3), v1 + ((((v3 + 48) & ~v3) + *(*(v1[2] - 8) + 64) + *(*(v2 - 8) + 80)) & ~*(*(v2 - 8) + 80)), v1[2], v2, *(v1[4] + 8), *(v1[5] + 8), a1);
}

uint64_t sub_1D285D8F4@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[3];
  v3 = (*(*(v1[2] - 8) + 80) + 64) & ~*(*(v1[2] - 8) + 80);
  v4 = *(*(v2 - 8) + 80);
  v5 = (v3 + *(*(v1[2] - 8) + 64) + v4) & ~v4;
  return sub_1D285A6D8(v1 + v3, v1 + v5, v1 + ((v5 + *(*(v2 - 8) + 64) + *(*(v1[4] - 8) + 80)) & ~*(*(v1[4] - 8) + 80)), v1[2], v2, v1[4], *(v1[5] + 8), *(v1[6] + 8), a1, *(v1[7] + 8));
}

uint64_t sub_1D285DA0C@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[3];
  v3 = v1[4];
  v4 = v1[5];
  v5 = (*(*(v1[2] - 8) + 80) + 80) & ~*(*(v1[2] - 8) + 80);
  v6 = (v5 + *(*(v1[2] - 8) + 64) + *(*(v2 - 8) + 80)) & ~*(*(v2 - 8) + 80);
  v7 = (v6 + *(*(v2 - 8) + 64) + *(*(v3 - 8) + 80)) & ~*(*(v3 - 8) + 80);
  return sub_1D285AD7C(v1 + v5, v1 + v6, v1 + v7, v1 + ((v7 + *(*(v3 - 8) + 64) + *(*(v4 - 8) + 80)) & ~*(*(v4 - 8) + 80)), v1[2], v2, v3, v4, a1, *(v1[6] + 8), *(v1[7] + 8), *(v1[8] + 8), *(v1[9] + 8));
}

uint64_t sub_1D285DB84@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[3];
  v3 = v1[4];
  v4 = v1[5];
  v5 = v1[6];
  v6 = (*(*(v1[2] - 8) + 80) + 96) & ~*(*(v1[2] - 8) + 80);
  v7 = (v6 + *(*(v1[2] - 8) + 64) + *(*(v2 - 8) + 80)) & ~*(*(v2 - 8) + 80);
  v8 = (v7 + *(*(v2 - 8) + 64) + *(*(v3 - 8) + 80)) & ~*(*(v3 - 8) + 80);
  v9 = (v8 + *(*(v3 - 8) + 64) + *(*(v4 - 8) + 80)) & ~*(*(v4 - 8) + 80);
  return sub_1D285B5FC(v1 + v6, v1 + v7, v1 + v8, v1 + v9, v1 + ((v9 + *(*(v4 - 8) + 64) + *(*(v5 - 8) + 80)) & ~*(*(v5 - 8) + 80)), v1[2], v2, v3, a1, v4, v5, *(v1[7] + 8), *(v1[8] + 8), *(v1[9] + 8), *(v1[10] + 8), *(v1[11] + 8));
}

uint64_t keypath_get_106Tm@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 32);
  return sub_1D2870F78();
}

uint64_t sub_1D285E370()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1D285E3C4()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1D285E418()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1D285E46C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1D285E4C0()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1D285E53C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

unint64_t sub_1D285E578()
{
  result = type metadata accessor for Notifier();
  if (v1 <= 0x3F)
  {
    result = sub_1D22BFAB4();
    if (v2 <= 0x3F)
    {
      sub_1D2878F18();
      result = sub_1D2877338();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1D285E624(uint64_t *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (v5)
  {
    v6 = v5 - 1;
  }

  else
  {
    v6 = 0;
  }

  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = v6;
  }

  if (v5)
  {
    v8 = 7;
  }

  else
  {
    v8 = 8;
  }

  if (!a2)
  {
    return 0;
  }

  v9 = *(v4 + 80) & 0xF8;
  v10 = v9 | 7;
  if (v7 >= a2)
  {
    goto LABEL_34;
  }

  v11 = ((v8 + *(*(*(a3 + 16) - 8) + 64)) & 0xFFFFFFFFFFFFFFF8) + ((v9 + 31) & ~v10) + 8;
  v12 = a2 - v7;
  v13 = v11 & 0xFFFFFFF8;
  if ((v11 & 0xFFFFFFF8) != 0)
  {
    v14 = 2;
  }

  else
  {
    v14 = v12 + 1;
  }

  if (v14 >= 0x10000)
  {
    v15 = 4;
  }

  else
  {
    v15 = 2;
  }

  if (v14 < 0x100)
  {
    v15 = 1;
  }

  if (v14 >= 2)
  {
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  if (v16 > 1)
  {
    if (v16 == 2)
    {
      v17 = *(a1 + v11);
      if (!v17)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v17 = *(a1 + v11);
      if (!v17)
      {
        goto LABEL_34;
      }
    }
  }

  else if (!v16 || (v17 = *(a1 + v11)) == 0)
  {
LABEL_34:
    if ((v6 & 0x80000000) != 0)
    {
      v21 = (*(v4 + 48))((((a1 + 15) & 0xFFFFFFFFFFFFFFF8) + v10 + 16) & ~v10);
      if (v21 >= 2)
      {
        return v21 - 1;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      v20 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v20) = -1;
      }

      return (v20 + 1);
    }
  }

  v19 = v17 - 1;
  if (v13)
  {
    v19 = 0;
    LODWORD(v13) = *a1;
  }

  return v7 + (v13 | v19) + 1;
}

void sub_1D285E7B0(void *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = 0;
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  v8 = v7 - 1;
  if (!v7)
  {
    v8 = 0;
  }

  if (v8 <= 0x7FFFFFFE)
  {
    v9 = 2147483646;
  }

  else
  {
    v9 = v8;
  }

  if (v8 <= 0x7FFFFFFF)
  {
    v10 = 0x7FFFFFFF;
  }

  else
  {
    v10 = v8;
  }

  v11 = *(v6 + 80) & 0xF8;
  v12 = v11 | 7;
  v13 = (v11 + 31) & ~(v11 | 7);
  v14 = *(*(*(a4 + 16) - 8) + 64);
  if (!v7)
  {
    ++v14;
  }

  v15 = ((v14 + 7) & 0xFFFFFFFFFFFFFFF8) + v13 + 8;
  if (v10 < a3)
  {
    v16 = a3 - v10;
    if (((v14 + 7) & 0xFFFFFFF8) + v13 == -8)
    {
      v17 = v16 + 1;
    }

    else
    {
      v17 = 2;
    }

    if (v17 >= 0x10000)
    {
      v18 = 4;
    }

    else
    {
      v18 = 2;
    }

    if (v17 < 0x100)
    {
      v18 = 1;
    }

    if (v17 >= 2)
    {
      v5 = v18;
    }

    else
    {
      v5 = 0;
    }
  }

  if (a2 > v10)
  {
    if (((v14 + 7) & 0xFFFFFFF8) + v13 == -8)
    {
      v19 = a2 - v10;
    }

    else
    {
      v19 = 1;
    }

    if (((v14 + 7) & 0xFFFFFFF8) + v13 != -8)
    {
      v20 = ~v10 + a2;
      v21 = a1;
      bzero(a1, v15);
      a1 = v21;
      *v21 = v20;
    }

    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(a1 + v15) = v19;
      }

      else
      {
        *(a1 + v15) = v19;
      }
    }

    else if (v5)
    {
      *(a1 + v15) = v19;
    }

    return;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(a1 + v15) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_41;
    }

    *(a1 + v15) = 0;
LABEL_40:
    if (!a2)
    {
      return;
    }

    goto LABEL_41;
  }

  if (!v5)
  {
    goto LABEL_40;
  }

  *(a1 + v15) = 0;
  if (!a2)
  {
    return;
  }

LABEL_41:
  if ((v8 & 0x80000000) != 0)
  {
    v23 = (((a1 + 15) & 0xFFFFFFFFFFFFFFF8) + v12 + 16) & ~v12;
    if (v9 >= a2)
    {
      if (v8 >= a2)
      {
        v29 = *(v6 + 56);
        v30 = a2 + 1;
        v31 = (((a1 + 15) & 0xFFFFFFFFFFFFFFF8) + v12 + 16) & ~v12;

        v29(v31, v30);
      }

      else
      {
        if (v14 <= 3)
        {
          v26 = ~(-1 << (8 * v14));
        }

        else
        {
          v26 = -1;
        }

        if (v14)
        {
          v27 = v26 & (~v8 + a2);
          if (v14 <= 3)
          {
            v28 = v14;
          }

          else
          {
            v28 = 4;
          }

          bzero(((((a1 + 15) & 0xFFFFFFFFFFFFFFF8) + v12 + 16) & ~v12), v14);
          if (v28 > 2)
          {
            if (v28 == 3)
            {
              *v23 = v27;
              *(v23 + 2) = BYTE2(v27);
            }

            else
            {
              *v23 = v27;
            }
          }

          else if (v28 == 1)
          {
            *v23 = v27;
          }

          else
          {
            *v23 = v27;
          }
        }
      }
    }

    else
    {
      v24 = ((v14 + 7) & 0xFFFFFFF8) + 8;
      if (v24)
      {
        v25 = ~v9 + a2;
        bzero(((((a1 + 15) & 0xFFFFFFFFFFFFFFF8) + v12 + 16) & ~v12), v24);
        *v23 = v25;
      }
    }
  }

  else
  {
    if ((a2 & 0x80000000) != 0)
    {
      v22 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v22 = a2 - 1;
    }

    *a1 = v22;
  }
}

unint64_t sub_1D285EB28()
{
  result = qword_1EC6E3968;
  if (!qword_1EC6E3968)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E3960);
    sub_1D22BB9D8(&qword_1EC6D7E88, &qword_1EC6DE5B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E3968);
  }

  return result;
}

uint64_t objectdestroy_179Tm()
{
  v1 = *(v0 + 16);
  v2 = (type metadata accessor for DeferredView() - 8);
  v3 = v0 + ((*(*v2 + 80) + 32) & ~*(*v2 + 80));

  v4 = v3 + v2[12];
  v5 = *(v1 - 8);
  if (!(*(v5 + 48))(v4, 1, v1))
  {
    (*(v5 + 8))(v4, v1);
  }

  sub_1D2878F18();
  sub_1D2877338();

  return swift_deallocObject();
}

uint64_t sub_1D285ED4C(uint64_t (*a1)(uint64_t, uint64_t, uint64_t))
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(type metadata accessor for DeferredView() - 8);
  v5 = v1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));

  return a1(v5, v2, v3);
}

uint64_t objectdestroy_15Tm(uint64_t (*a1)(void))
{
  v2 = a1(0);
  (*(*(v2 - 8) + 8))(v1 + ((*(*(v2 - 8) + 80) + 16) & ~*(*(v2 - 8) + 80)), v2);

  return swift_deallocObject();
}

uint64_t sub_1D285EE74(uint64_t a1, uint64_t a2)
{
  v5 = *(sub_1D2871DD8() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_1D2854788(a1, a2, v6);
}

uint64_t objectdestroy_21Tm()
{
  sub_1D22D6D60(*(v0 + 16), *(v0 + 24));

  return swift_deallocObject();
}

uint64_t sub_1D285EF2C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1D22BDFF8;

  return sub_1D28595D4(a1, v4, v5, v6);
}

uint64_t sub_1D285EFE0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1D22BDFF8;

  return sub_1D28595D4(a1, v4, v5, v6);
}

uint64_t sub_1D285F094(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1D22BDFF8;

  return sub_1D28595D4(a1, v4, v5, v6);
}

uint64_t sub_1D285F148(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1D22BDFF8;

  return sub_1D28595D4(a1, v4, v5, v6);
}

uint64_t sub_1D285F1FC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1D22BC8FC;

  return sub_1D285943C(a1, v4, v5, v6);
}

uint64_t objectdestroy_62Tm()
{

  return swift_deallocObject();
}

uint64_t sub_1D285F320(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1D22BDFF8;

  return sub_1D285854C(a1, v4, v5, v6);
}

uint64_t sub_1D285F3D4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1D22BDFF8;

  return sub_1D2857C14(a1, v4, v5, v7, v6);
}

uint64_t (*sub_1D285F498())()
{
  swift_allocObject();
  swift_weakInit();
  return sub_1D285F4F0;
}

unint64_t sub_1D285F514()
{
  result = qword_1EC6E3978;
  if (!qword_1EC6E3978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E3978);
  }

  return result;
}

uint64_t sub_1D285F568(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1D22BDFF8;

  return sub_1D2858304(a1, v4, v5, v7, v6);
}

uint64_t objectdestroy_58Tm_0(void (*a1)(void))
{
  swift_unknownObjectRelease();

  a1(*(v1 + 40));

  return swift_deallocObject();
}

uint64_t (*sub_1D285F688())()
{
  swift_allocObject();
  swift_weakInit();
  return sub_1D285F6E0;
}

uint64_t sub_1D285F704(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1D22BDFF8;

  return sub_1D2858C54(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1D285F7CC(char a1)
{
  result = swift_beginAccess();
  *(v1 + 16) = a1;
  return result;
}

uint64_t sub_1D285F80C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D285F854()
{
  v2 = *(type metadata accessor for PlaygroundImage() - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_1D22BDFF8;

  return sub_1D285436C(v4, v5, v6, v0 + v3);
}

uint64_t sub_1D285F950(uint64_t a1)
{
  v4 = v1[3];
  v12 = v1[2];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = v1[7];
  v9 = v1[8];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1D22BDFF8;

  return sub_1D2855DF4(a1, v12, v4, v5, v6, v7, v8, v9);
}

unint64_t sub_1D285FA44()
{
  result = qword_1EC6E3990;
  if (!qword_1EC6E3990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E3990);
  }

  return result;
}

unint64_t sub_1D285FAAC()
{
  result = qword_1EC6E3998;
  if (!qword_1EC6E3998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E3998);
  }

  return result;
}

void sub_1D285FBB0()
{
  sub_1D2878F18();
  sub_1D2877538();
  if (v0 <= 0x3F)
  {
    sub_1D28784C8();
    if (v1 <= 0x3F)
    {
      sub_1D28600A4();
      if (v2 <= 0x3F)
      {
        sub_1D22BFAB4();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_1D285FC7C(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 24) - 8);
  v5 = *(v4 + 84);
  if (v5)
  {
    v6 = v5 - 1;
  }

  else
  {
    v6 = 0;
  }

  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(v4 + 80);
  v9 = 7;
  if (!v5)
  {
    v9 = 8;
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_33;
  }

  v10 = ((((((v9 + *(*(*(a3 + 24) - 8) + 64) + ((v8 + 16) & ~v8)) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  v11 = a2 - v7;
  v12 = v10 & 0xFFFFFFF8;
  if ((v10 & 0xFFFFFFF8) != 0)
  {
    v13 = 2;
  }

  else
  {
    v13 = v11 + 1;
  }

  if (v13 >= 0x10000)
  {
    v14 = 4;
  }

  else
  {
    v14 = 2;
  }

  if (v13 < 0x100)
  {
    v14 = 1;
  }

  if (v13 >= 2)
  {
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  if (v15 > 1)
  {
    if (v15 == 2)
    {
      v16 = *(a1 + v10);
      if (!v16)
      {
        goto LABEL_33;
      }
    }

    else
    {
      v16 = *(a1 + v10);
      if (!v16)
      {
        goto LABEL_33;
      }
    }
  }

  else if (!v15 || (v16 = *(a1 + v10)) == 0)
  {
LABEL_33:
    v19 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
    if ((v6 & 0x80000000) != 0)
    {
      v21 = (*(v4 + 48))((v19 + v8 + 8) & ~v8);
      if (v21 >= 2)
      {
        return v21 - 1;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      v20 = *v19;
      if (v20 >= 0xFFFFFFFF)
      {
        LODWORD(v20) = -1;
      }

      return (v20 + 1);
    }
  }

  v18 = v16 - 1;
  if (v12)
  {
    v18 = 0;
    LODWORD(v12) = *a1;
  }

  return v7 + (v12 | v18) + 1;
}

void sub_1D285FE14(_DWORD *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = 0;
  v6 = *(*(a4 + 24) - 8);
  v7 = *(v6 + 84);
  v8 = v7 - 1;
  if (!v7)
  {
    v8 = 0;
  }

  if (v8 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = v8;
  }

  v10 = *(v6 + 80);
  v11 = *(*(*(a4 + 24) - 8) + 64);
  if (!v7)
  {
    ++v11;
  }

  v12 = ((((((v11 + ((v10 + 16) & ~v10) + 7) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v9 < a3)
  {
    v13 = a3 - v9;
    if (((((((v11 + ((v10 + 16) & ~v10) + 7) & 0xFFFFFFF8) + 31) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v14 = v13 + 1;
    }

    else
    {
      v14 = 2;
    }

    if (v14 >= 0x10000)
    {
      v15 = 4;
    }

    else
    {
      v15 = 2;
    }

    if (v14 < 0x100)
    {
      v15 = 1;
    }

    if (v14 >= 2)
    {
      v5 = v15;
    }

    else
    {
      v5 = 0;
    }
  }

  if (a2 > v9)
  {
    if (((((((v11 + ((v10 + 16) & ~v10) + 7) & 0xFFFFFFF8) + 31) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v16 = a2 - v9;
    }

    else
    {
      v16 = 1;
    }

    if (((((((v11 + ((v10 + 16) & ~v10) + 7) & 0xFFFFFFF8) + 31) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      v17 = ~v9 + a2;
      v18 = a1;
      bzero(a1, v12);
      a1 = v18;
      *v18 = v17;
    }

    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(a1 + v12) = v16;
      }

      else
      {
        *(a1 + v12) = v16;
      }
    }

    else if (v5)
    {
      *(a1 + v12) = v16;
    }

    return;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(a1 + v12) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_38;
    }

    *(a1 + v12) = 0;
LABEL_37:
    if (!a2)
    {
      return;
    }

    goto LABEL_38;
  }

  if (!v5)
  {
    goto LABEL_37;
  }

  *(a1 + v12) = 0;
  if (!a2)
  {
    return;
  }

LABEL_38:
  v19 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
  if ((v8 & 0x80000000) != 0)
  {
    v21 = ((v19 + v10 + 8) & ~v10);
    if (v8 >= a2)
    {
      v25 = *(v6 + 56);
      v26 = a2 + 1;

      v25((v19 + v10 + 8) & ~v10, v26);
    }

    else
    {
      if (v11 <= 3)
      {
        v22 = ~(-1 << (8 * v11));
      }

      else
      {
        v22 = -1;
      }

      if (v11)
      {
        v23 = v22 & (~v8 + a2);
        if (v11 <= 3)
        {
          v24 = v11;
        }

        else
        {
          v24 = 4;
        }

        bzero(v21, v11);
        if (v24 > 2)
        {
          if (v24 == 3)
          {
            *v21 = v23;
            v21[2] = BYTE2(v23);
          }

          else
          {
            *v21 = v23;
          }
        }

        else if (v24 == 1)
        {
          *v21 = v23;
        }

        else
        {
          *v21 = v23;
        }
      }
    }
  }

  else
  {
    if ((a2 & 0x80000000) != 0)
    {
      v20 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v20 = a2 - 1;
    }

    *v19 = v20;
  }
}

void sub_1D28600A4()
{
  if (!qword_1ED8A6C30)
  {
    v0 = sub_1D2878F18();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED8A6C30);
    }
  }
}

uint64_t sub_1D2860138@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v19 = *(a1 + 24);
  sub_1D28784C8();
  v21 = a1;
  v20 = *(a1 + 16);
  v24 = *(a1 + 32);
  swift_getAssociatedTypeWitness();
  sub_1D28773A8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DA6F8);
  v3 = sub_1D2874F68();
  v4 = sub_1D28750E8();
  WitnessTable = swift_getWitnessTable();
  v37 = sub_1D2861774();
  v18 = MEMORY[0x1E697E858];
  v5 = swift_getWitnessTable();
  v6 = sub_1D28617D8(&qword_1ED89D748, MEMORY[0x1E697C248]);
  swift_getOpaqueTypeMetadata2();
  sub_1D2876248();
  sub_1D2874F68();
  swift_getWitnessTable();
  v7 = v19;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  sub_1D2877598();
  v31 = v3;
  v32 = v4;
  v33 = v5;
  v34 = v6;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v30 = sub_1D28617D8(&qword_1ED89D2B0, MEMORY[0x1E697CBE8]);
  v28 = swift_getWitnessTable();
  swift_getWitnessTable();
  v8 = sub_1D28773C8();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v18 - v13;
  *&v15 = v20;
  *(&v15 + 1) = v7;
  v25 = v15;
  v26 = v24;
  v27 = v22;
  sub_1D28756A8();
  sub_1D28773B8();
  swift_getWitnessTable();
  sub_1D245980C(v11);
  v16 = *(v9 + 8);
  v16(v11, v8);
  sub_1D245980C(v14);
  return (v16)(v14, v8);
}

uint64_t sub_1D286057C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v59 = a1;
  v60 = a6;
  v65 = a2;
  v66 = a3;
  v54 = a2;
  v55 = a4;
  v67 = a4;
  v68 = a5;
  v8 = type metadata accessor for VariantSelectorView();
  v9 = *(v8 - 8);
  v58 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v57 = &v41 - v10;
  v11 = sub_1D28784C8();
  v43 = a5;
  v42 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1D28773A8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DA6F8);
  v13 = sub_1D2874F68();
  v14 = sub_1D28750E8();
  v48 = v14;
  WitnessTable = swift_getWitnessTable();
  v16 = sub_1D2861774();
  v70 = WitnessTable;
  v71 = v16;
  v56 = MEMORY[0x1E697E858];
  v17 = v13;
  v49 = v13;
  v18 = swift_getWitnessTable();
  v47 = v18;
  v46 = sub_1D28617D8(&qword_1ED89D748, MEMORY[0x1E697C248]);
  v65 = v17;
  v66 = v14;
  v67 = v18;
  v68 = v46;
  v45 = MEMORY[0x1E697CDB0];
  swift_getOpaqueTypeMetadata2();
  sub_1D2876248();
  v19 = sub_1D2874F68();
  v44 = v19;
  v53 = v11;
  v20 = swift_getWitnessTable();
  v51 = v20;
  v52 = AssociatedTypeWitness;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v65 = v11;
  v66 = AssociatedTypeWitness;
  v67 = v19;
  v68 = v20;
  v69 = AssociatedConformanceWitness;
  v22 = sub_1D2877598();
  v50 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v41 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x1EEE9AC00](v25);
  v28 = &v41 - v27;
  v29 = v8;
  v64 = *(v59 + *(v8 + 52));
  v30 = v9;
  v31 = v57;
  (*(v9 + 16))(v57, v26);
  v32 = (*(v9 + 80) + 48) & ~*(v9 + 80);
  v33 = swift_allocObject();
  v34 = v42;
  *(v33 + 2) = v54;
  *(v33 + 3) = v34;
  v35 = v43;
  *(v33 + 4) = v55;
  *(v33 + 5) = v35;
  (*(v30 + 32))(&v33[v32], v31, v29);
  sub_1D2870F68();
  v65 = v49;
  v66 = v48;
  v67 = v47;
  v68 = v46;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v37 = sub_1D28617D8(&qword_1ED89D2B0, MEMORY[0x1E697CBE8]);
  v62 = OpaqueTypeConformance2;
  v63 = v37;
  v38 = swift_getWitnessTable();
  sub_1D2877588();
  v61 = v38;
  swift_getWitnessTable();
  sub_1D245980C(v24);
  v39 = *(v50 + 8);
  v39(v24, v22);
  sub_1D245980C(v28);
  return (v39)(v28, v22);
}

uint64_t sub_1D2860AE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v93 = a6;
  v105 = a7;
  v13 = sub_1D28750E8();
  v84 = v13;
  v104 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v103 = &v74 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = *(a4 - 8);
  v94 = *(v92 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v90 = &v74 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = a3;
  v117 = a4;
  v118 = a5;
  v119 = a6;
  v89 = a5;
  v17 = type metadata accessor for VariantSelectorView();
  v18 = *(v17 - 8);
  v87 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v74 - v19;
  v75 = &v74 - v19;
  v21 = sub_1D28773A8();
  v96 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v91 = &v74 - v22;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DA6F8);
  v86 = v21;
  v23 = sub_1D2874F68();
  v95 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v88 = &v74 - v24;
  WitnessTable = swift_getWitnessTable();
  v85 = WitnessTable;
  v26 = sub_1D2861774();
  v114 = WitnessTable;
  v115 = v26;
  v27 = v23;
  v80 = v23;
  v28 = swift_getWitnessTable();
  v83 = v28;
  v82 = sub_1D28617D8(&qword_1ED89D748, MEMORY[0x1E697C248]);
  v116 = v27;
  v117 = v13;
  v118 = v28;
  v119 = v82;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v98 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v78 = &v74 - v30;
  sub_1D2876248();
  v100 = OpaqueTypeMetadata2;
  v102 = sub_1D2874F68();
  v101 = *(v102 - 8);
  MEMORY[0x1EEE9AC00](v102);
  v97 = &v74 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = MEMORY[0x1EEE9AC00](v32);
  v99 = &v74 - v34;
  v74 = v17;
  v35 = *(v17 + 60);
  v77 = a2;
  v36 = *(a2 + v35);
  v76 = a1;
  v81 = v36(a1, v33);
  v79 = v37;
  v38 = v18;
  (*(v18 + 16))(v20, a2, v17);
  v39 = v92;
  v40 = v90;
  v41 = a4;
  (*(v92 + 16))(v90, a1, a4);
  v42 = (*(v18 + 80) + 48) & ~*(v18 + 80);
  v43 = (v87 + *(v39 + 80) + v42) & ~*(v39 + 80);
  v44 = swift_allocObject();
  v45 = a3;
  *(v44 + 2) = a3;
  *(v44 + 3) = v41;
  v46 = v89;
  v47 = v93;
  *(v44 + 4) = v89;
  *(v44 + 5) = v47;
  (*(v38 + 32))(&v44[v42], v75, v74);
  v48 = &v44[v43];
  v49 = v80;
  (*(v39 + 32))(v48, v40, v41);
  v50 = v78;
  v106 = v45;
  v107 = v41;
  v51 = v82;
  v108 = v46;
  v109 = v47;
  v110 = v77;
  v111 = v76;
  v52 = v83;
  v53 = v91;
  sub_1D2877368();
  sub_1D250D594();
  v54 = v88;
  v55 = v86;
  sub_1D2876888();
  (*(v96 + 8))(v53, v55);
  v56 = v103;
  sub_1D28750D8();
  v57 = v84;
  sub_1D28767A8();
  v58 = v57;
  (*(v104 + 8))(v56, v57);
  (*(v95 + 8))(v54, v49);
  v59 = v79;
  if (v79 >= 2)
  {
    v60 = v81;
  }

  else
  {
    sub_1D2861A10(v81, v79);
    v60 = 0;
    v59 = 0xE000000000000000;
  }

  v116 = v60;
  v117 = v59;
  sub_1D22BD06C();
  v61 = sub_1D2876698();
  v63 = v62;
  v65 = v64;
  v116 = v49;
  v117 = v58;
  v118 = v52;
  v119 = v51;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v67 = v97;
  v68 = v100;
  sub_1D2876AB8();
  sub_1D22ED6E0(v61, v63, v65 & 1);

  (*(v98 + 8))(v50, v68);
  v69 = sub_1D28617D8(&qword_1ED89D2B0, MEMORY[0x1E697CBE8]);
  v112 = OpaqueTypeConformance2;
  v113 = v69;
  v70 = v102;
  swift_getWitnessTable();
  v71 = v99;
  sub_1D245980C(v67);
  v72 = *(v101 + 8);
  v72(v67, v70);
  sub_1D245980C(v71);
  return (v72)(v71, v70);
}

uint64_t sub_1D2861460(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_1D2878F18();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = v16 - v12;
  v14 = *(a4 - 8);
  (*(v14 + 16))(v16 - v12, a2, a4, v11);
  (*(v14 + 56))(v13, 0, 1, a4);
  (*(v7 + 16))(v9, v13, v6);
  sub_1D2877538();
  sub_1D28774F8();
  return (*(v7 + 8))(v13, v6);
}

uint64_t sub_1D2861608(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v19 - v10;
  v19[0] = v12;
  v19[1] = v13;
  v19[2] = v14;
  v19[3] = v15;
  v16 = type metadata accessor for VariantSelectorView();
  (*(a1 + *(v16 + 64)))(a2);
  sub_1D245980C(v8);
  v17 = *(v6 + 8);
  v17(v8, a3);
  sub_1D245980C(v11);
  return (v17)(v11, a3);
}

unint64_t sub_1D2861774()
{
  result = qword_1ED89D4A8;
  if (!qword_1ED89D4A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DA6F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89D4A8);
  }

  return result;
}

uint64_t sub_1D28617D8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D2861830@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = v2[2];
  v6 = v2[3];
  v7 = v2[4];
  v8 = v2[5];
  v9 = *(type metadata accessor for VariantSelectorView() - 8);
  v10 = v2 + ((*(v9 + 80) + 48) & ~*(v9 + 80));

  return sub_1D2860AE0(a1, v10, v5, v6, v7, v8, a2);
}

uint64_t sub_1D2861A10(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t sub_1D2861A48()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t type metadata accessor for BubbleButton()
{
  result = qword_1ED8A4DA0;
  if (!qword_1ED8A4DA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D2861B10()
{
  type metadata accessor for PlaygroundImage();
  if (v0 <= 0x3F)
  {
    sub_1D22BFAB4();
    if (v1 <= 0x3F)
    {
      sub_1D24BFA5C();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1D2861BF0@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = sub_1D2877848();
  v41 = v4;
  v42 = v3;
  sub_1D2862130(a1, &v56);
  v75 = v60;
  v76 = v61;
  v77 = v62;
  v71 = v56;
  v72 = v57;
  v74 = v59;
  v73 = v58;
  v78[1] = v57;
  v78[0] = v56;
  v78[2] = v58;
  v78[3] = v59;
  v78[4] = v60;
  v78[5] = v61;
  v78[6] = v62;
  sub_1D22BD1D0(&v71, v44, &qword_1EC6E39B8);
  sub_1D22BD238(v78, &qword_1EC6E39B8);
  v83 = v75;
  v84 = v76;
  v85 = v77;
  v79 = v71;
  v80 = v72;
  v81 = v73;
  v82 = v74;
  LOBYTE(v56) = 1;
  sub_1D28626EC();
  sub_1D28626EC();
  sub_1D2877848();
  sub_1D28748C8();
  *&v70[3] = *&v70[27];
  *&v70[11] = *&v70[35];
  *&v70[19] = *&v70[43];
  if (*(a1 + *(type metadata accessor for BubbleButton() + 24)))
  {
    v38 = 0;
    v39 = 0;
    KeyPath = 0;
    v37 = 0;
    v5 = 0;
    v35 = 0;
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 0;
  }

  else
  {
    v12 = *a1;
    v13 = a1[1];
    *&v56 = v12;
    *(&v56 + 1) = v13;
    sub_1D22BD06C();
    sub_1D2870F68();
    v14 = sub_1D2876698();
    v16 = v15;
    v18 = v17;
    sub_1D28764C8();
    v19 = sub_1D2876658();
    v21 = v20;
    v23 = v22;

    sub_1D22ED6E0(v14, v16, v18 & 1);

    if (qword_1ED89D260 != -1)
    {
      swift_once();
    }

    *&v56 = qword_1ED8B0018;
    sub_1D2870F78();
    v24 = sub_1D2876648();
    v38 = v25;
    v39 = v24;
    v27 = v26;
    v37 = v28;
    sub_1D22ED6E0(v19, v21, v23 & 1);

    KeyPath = swift_getKeyPath();
    v35 = swift_getKeyPath();
    LOBYTE(v44[0]) = v27 & 1;
    LOBYTE(v54[0]) = 0;
    v7 = v27 & 1;
    v29 = sub_1D2876348();
    sub_1D2874298();
    v8 = v30;
    v9 = v31;
    v10 = v32;
    v11 = v33;
    LOBYTE(v56) = 0;
    v6 = v29;
    v5 = 1;
  }

  *&v44[0] = v42;
  *(&v44[0] + 1) = v41;
  v44[5] = v83;
  v44[6] = v84;
  v44[7] = v85;
  v44[1] = v79;
  v44[2] = v80;
  v44[3] = v81;
  v44[4] = v82;
  *v45 = 0;
  *&v45[8] = 257;
  *&v45[56] = *&v70[23];
  *&v45[42] = *&v70[16];
  *&v45[26] = *&v70[8];
  *&v45[10] = *v70;
  __src[4] = v82;
  __src[5] = v83;
  __src[2] = v80;
  __src[3] = v81;
  __src[0] = v44[0];
  __src[1] = v79;
  __src[6] = v84;
  __src[7] = v85;
  __src[10] = *&v45[32];
  __src[11] = *&v45[48];
  __src[8] = *v45;
  __src[9] = *&v45[16];
  *&v46 = v39;
  *(&v46 + 1) = v38;
  *&v47 = v7;
  *(&v47 + 1) = v37;
  *&v48 = KeyPath;
  *(&v48 + 1) = v5;
  *&v49 = 0;
  *(&v49 + 1) = v35;
  *&v50 = v5;
  *(&v50 + 1) = v6;
  *&v51 = v8;
  *(&v51 + 1) = v9;
  *&v52 = v10;
  *(&v52 + 1) = v11;
  v53 = 0;
  LOBYTE(__src[19]) = 0;
  __src[16] = v50;
  __src[17] = v51;
  __src[18] = v52;
  __src[14] = v48;
  __src[15] = v49;
  __src[12] = v46;
  __src[13] = v47;
  memcpy(a2, __src, 0x131uLL);
  v54[0] = v39;
  v54[1] = v38;
  v54[2] = v7;
  v54[3] = v37;
  v54[4] = KeyPath;
  v54[5] = v5;
  v54[6] = 0;
  v54[7] = v35;
  v54[8] = v5;
  v54[9] = v6;
  v54[10] = v8;
  v54[11] = v9;
  v54[12] = v10;
  v54[13] = v11;
  v55 = 0;
  sub_1D22BD1D0(v44, &v56, &qword_1EC6E39C0);
  sub_1D22BD1D0(&v46, &v56, &qword_1EC6E39C8);
  sub_1D22BD238(v54, &qword_1EC6E39C8);
  *&v56 = v42;
  *(&v56 + 1) = v41;
  v61 = v83;
  v62 = v84;
  v63 = v85;
  v57 = v79;
  v58 = v80;
  v59 = v81;
  v60 = v82;
  v64 = 0;
  v65 = 1;
  v66 = 1;
  v67 = *v70;
  v68 = *&v70[8];
  *v69 = *&v70[16];
  *&v69[14] = *&v70[23];
  return sub_1D22BD238(&v56, &qword_1EC6E39C0);
}

uint64_t sub_1D2862130@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v40 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DD5F8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v39 = &v35 - v4;
  v5 = sub_1D28771B8();
  v36 = *(v5 - 8);
  v37 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1D28771C8();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1D2873998();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1ED8A6B70 != -1)
  {
    swift_once();
  }

  v16 = __swift_project_value_buffer(v12, qword_1ED8B02D0);
  (*(v13 + 16))(v15, v16, v12);
  v38 = sub_1D2877108();
  v35 = type metadata accessor for BubbleButton();
  sub_1D262D4E8();
  sub_1D2877188();
  sub_1D28771A8();

  (*(v9 + 104))(v11, *MEMORY[0x1E6981648], v8);
  sub_1D28771D8();

  (*(v9 + 8))(v11, v8);
  v18 = v36;
  v17 = v37;
  (*(v36 + 104))(v7, *MEMORY[0x1E6981630], v37);
  sub_1D2877228();

  (*(v18 + 8))(v7, v17);
  v19 = *MEMORY[0x1E6981698];
  v20 = sub_1D2877208();
  v21 = *(v20 - 8);
  v22 = v39;
  (*(v21 + 104))(v39, v19, v20);
  (*(v21 + 56))(v22, 0, 1, v20);
  v23 = sub_1D28771E8();

  sub_1D22BD238(v22, &qword_1EC6DD5F8);
  v24 = v35;
  v25 = v40;
  v26 = *(v40 + *(v35 + 28));
  sub_1D2870F78();
  sub_1D2877848();
  sub_1D28748C8();
  v54 = 1;
  *&v53[38] = v57;
  *&v53[22] = v56;
  *&v53[6] = v55;
  v27 = 3.0;
  if (!*(v25 + *(v24 + 24)))
  {
    v27 = 0.0;
  }

  v28 = -2.0;
  if (!*(v25 + *(v24 + 24)))
  {
    v28 = 0.0;
  }

  *&v43 = v23;
  *(&v43 + 1) = v26;
  *&v44[0] = 0;
  WORD4(v44[0]) = 257;
  *(&v44[3] + 1) = *&v53[46];
  *(v44 + 10) = *v53;
  *(&v44[1] + 10) = *&v53[16];
  *(&v44[2] + 10) = *&v53[32];
  *&v45 = v27;
  *(&v45 + 1) = v28;
  *&v42[22] = v44[0];
  *&v42[6] = v43;
  *&v42[86] = v45;
  *&v42[70] = v44[3];
  *&v42[54] = v44[2];
  *&v42[38] = v44[1];
  *a2 = v38;
  *(a2 + 8) = 256;
  v29 = *v42;
  v30 = *&v42[16];
  v31 = *&v42[48];
  *(a2 + 42) = *&v42[32];
  *(a2 + 26) = v30;
  *(a2 + 10) = v29;
  v32 = *&v42[64];
  v33 = *&v42[80];
  *(a2 + 104) = *&v42[94];
  *(a2 + 90) = v33;
  *(a2 + 74) = v32;
  *(a2 + 58) = v31;
  v46[0] = v23;
  v46[1] = v26;
  v46[2] = 0;
  v47 = 257;
  *&v50[14] = *&v53[46];
  *v50 = *&v53[32];
  v49 = *&v53[16];
  v48 = *v53;
  v51 = v27;
  v52 = v28;
  sub_1D2870F78();
  sub_1D22BD1D0(&v43, &v41, &qword_1EC6E39D0);
  sub_1D22BD238(v46, &qword_1EC6E39D0);
}

double sub_1D28626EC()
{
  v1 = sub_1D2875628();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v10[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = (v0 + *(type metadata accessor for BubbleButton() + 36));
  v6 = *v5;
  if (*(v5 + 8) == 1)
  {
    v7 = *v5;
  }

  else
  {
    sub_1D2870F78();
    sub_1D2878A28();
    v8 = sub_1D28762E8();
    sub_1D2873BE8();

    sub_1D2875618();
    swift_getAtKeyPath();
    sub_1D22EE66C(v6, 0);
    (*(v2 + 8))(v4, v1);
    v7 = v10[15];
  }

  result = 54.0;
  if (v7 == 6)
  {
    return 40.0;
  }

  return result;
}

uint64_t sub_1D2862860()
{
  v1 = sub_1D2875918();
  v5 = 0;
  sub_1D2861BF0(v0, __src);
  memcpy(__dst, __src, 0x131uLL);
  memcpy(v7, __src, 0x131uLL);
  sub_1D22BD1D0(__dst, v3, &qword_1EC6E39A0);
  sub_1D22BD238(v7, &qword_1EC6E39A0);
  memcpy(&v4[7], __dst, 0x131uLL);
  v3[0] = v1;
  v3[1] = 0;
  LOBYTE(v3[2]) = v5;
  memcpy(&v3[2] + 1, v4, 0x138uLL);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E39A8);
  sub_1D28629B4();
  sub_1D2876908();
  memcpy(__src, v3, 0x149uLL);
  return sub_1D22BD238(__src, &qword_1EC6E39A8);
}

unint64_t sub_1D28629B4()
{
  result = qword_1EC6E39B0;
  if (!qword_1EC6E39B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E39A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E39B0);
  }

  return result;
}

double sub_1D2862A38(uint64_t a1, int a2, uint64_t a3, int a4, uint64_t a5, double a6, double a7)
{
  v48 = a4;
  v49 = a3;
  v46 = a2;
  v47 = *&a1;
  v9 = sub_1D2874B38();
  v50 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v53 = &v44 - v13;
  v14 = sub_1D2874C68();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v44 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DCA08);
  v19 = v18 - 8;
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v44 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E39D8);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v45 = &v44 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x1EEE9AC00](v24);
  v44 = &v44 - v26;
  (*(v15 + 16))(v17, a5, v14, v25);
  sub_1D24DB6A0(&qword_1ED89DEA8);
  sub_1D2878318();
  v27 = *(v19 + 44);
  v28 = v9;
  sub_1D24DB6A0(&qword_1ED89DEA0);
  sub_1D2878868();
  if (*&v21[v27] == v55[0])
  {
LABEL_2:
    sub_1D22BD238(v21, &qword_1EC6DCA08);
    v29 = 1;
    v30 = v44;
  }

  else
  {
    v51 = (v50 + 16);
    v52 = (v50 + 32);
    v34 = (v50 + 8);
    v35 = v53;
    while (1)
    {
      v36 = sub_1D28788B8();
      (*v51)(v35);
      v36(v55, 0);
      sub_1D2878878();
      v37 = v28;
      v38 = *v52;
      v39 = v11;
      v40 = v11;
      v41 = v37;
      (*v52)(v39, v35);
      sub_1D286371C();
      sub_1D2874B48();
      if (LOBYTE(v55[0]) != 2 && (v55[0] & 1) != 0)
      {
        break;
      }

      v28 = v41;
      v11 = v40;
      (*v34)(v40, v28);
      sub_1D2878868();
      if (*&v21[v27] == v55[0])
      {
        goto LABEL_2;
      }
    }

    sub_1D22BD238(v21, &qword_1EC6DCA08);
    v30 = v44;
    (v38)(v44, v40, v41);
    v28 = v41;
    v29 = 0;
  }

  v31 = v50;
  (*(v50 + 56))(v30, v29, 1, v28);
  v32 = v45;
  sub_1D2863770(v30, v45);
  if ((*(v31 + 48))(v32, 1, v28) == 1)
  {
    sub_1D22BD238(v30, &qword_1EC6E39D8);
    sub_1D22BD238(v32, &qword_1EC6E39D8);
    if (v46)
    {
      v33 = 10.0;
    }

    else
    {
      v33 = v47;
    }
  }

  else
  {
    LOBYTE(v55[0]) = v46 & 1;
    v54 = v48 & 1;
    sub_1D2874B08();
    v33 = v42;
    sub_1D22BD238(v30, &qword_1EC6E39D8);
    (*(v31 + 8))(v32, v28);
  }

  return v33 * a7;
}

void (*sub_1D2862FF0(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1D2874228();
  return sub_1D24DA5F4;
}

unint64_t sub_1D286307C()
{
  result = qword_1ED8A1D30[0];
  if (!qword_1ED8A1D30[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED8A1D30);
  }

  return result;
}

uint64_t sub_1D28630D0(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, double a5)
{
  v10 = sub_1D2873CB8();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D286371C();
  sub_1D2874B48();
  v14 = v24;
  if (v24 == 2)
  {
    sub_1D2872658();
    v15 = sub_1D2873CA8();
    v16 = sub_1D2878A18();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_1D226E000, v15, v16, "Missing layout value for subview", v17, 2u);
      MEMORY[0x1D38A3520](v17, -1, -1);
    }

    return (*(v11 + 8))(v13, v10);
  }

  else
  {
    *&v19[1] = a5;
    v25.origin.x = a1;
    v25.origin.y = a2;
    v25.size.width = a3;
    v25.size.height = a4;
    *&v19[2] = CGRectGetWidth(v25) * 0.5 + a1;
    v26.origin.x = a1;
    v26.origin.y = a2;
    v26.size.width = a3;
    v26.size.height = a4;
    CGRectGetHeight(v26);
    v27.origin.x = a1;
    v27.origin.y = a2;
    v27.size.width = a3;
    v27.size.height = a4;
    CGRectGetHeight(v27);
    v28.origin.x = a1;
    v28.origin.y = a2;
    v28.size.width = a3;
    v28.size.height = a4;
    CGRectGetWidth(v28);
    v29.origin.x = a1;
    v29.origin.y = a2;
    v29.size.width = a3;
    v29.size.height = a4;
    CGRectGetHeight(v29);
    v30.origin.x = a1;
    v30.origin.y = a2;
    v30.size.width = a3;
    v30.size.height = a4;
    CGRectGetWidth(v30);
    sub_1D2877AE8();
    if (v14)
    {
      v23 = 0;
      v22 = 0;
    }

    else
    {
      v21 = 0;
      v20 = 0;
    }

    return sub_1D2874B18();
  }
}

uint64_t sub_1D28633B0(uint64_t a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, double a6)
{
  v12 = sub_1D2874B38();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v30[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = sub_1D2874C68();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v30[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DCA08);
  v21 = v20 - 8;
  v22 = MEMORY[0x1EEE9AC00](v20);
  v24 = &v30[-v23];
  (*(v17 + 16))(v19, a1, v16, v22);
  sub_1D24DB6A0(&qword_1ED89DEA8);
  sub_1D2878318();
  v25 = *(v21 + 44);
  sub_1D24DB6A0(&qword_1ED89DEA0);
  sub_1D2878868();
  if (*&v24[v25] != v31[0])
  {
    v26 = (v13 + 16);
    v27 = (v13 + 8);
    do
    {
      v28 = sub_1D28788B8();
      (*v26)(v15);
      v28(v31, 0);
      sub_1D2878878();
      sub_1D28630D0(a2, a3, a4, a5, a6);
      (*v27)(v15, v12);
      sub_1D2878868();
    }

    while (*&v24[v25] != v31[0]);
  }

  return sub_1D22BD238(v24, &qword_1EC6DCA08);
}

unint64_t sub_1D286371C()
{
  result = qword_1ED89F6B0;
  if (!qword_1ED89F6B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89F6B0);
  }

  return result;
}

uint64_t sub_1D2863770(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E39D8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1D28637F4()
{
  result = qword_1EC6E39E0;
  if (!qword_1EC6E39E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E39E0);
  }

  return result;
}

uint64_t PhotosPersonAsset.id.getter()
{
  v1 = *(v0 + 16);
  if (*(v0 + 32))
  {
    v2 = sub_1D24FBD9C();
    if (v3)
    {
      v4 = v2;
    }

    else
    {
      v4 = 0;
    }

    if (v3)
    {
      v5 = v3;
    }

    else
    {
      v5 = 0xE000000000000000;
    }

    sub_1D2870F68();
    MEMORY[0x1D38A0C50](v4, v5);
  }

  else
  {
    sub_1D2870F68();
  }

  v6 = (v0 + *(type metadata accessor for PhotosPersonAsset() + 20));
  v7 = *v6;
  v8 = v6[1];
  sub_1D2870F68();
  MEMORY[0x1D38A0C50](v7, v8);

  return v1;
}

uint64_t type metadata accessor for PhotosPersonAsset()
{
  result = qword_1ED8A2F28;
  if (!qword_1ED8A2F28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t PhotosPersonAsset.hash(into:)(uint64_t a1)
{
  PhotosPerson.hash(into:)(a1);
  v2 = v1 + *(type metadata accessor for PhotosPersonAsset() + 20);
  sub_1D2877F38();
  if (*(v2 + 24) == 1)
  {
    sub_1D28797F8();
  }

  else
  {
    v3 = *(v2 + 16);
    sub_1D28797F8();
    MEMORY[0x1D38A2260](v3);
  }

  type metadata accessor for PhotosPersonImage();
  type metadata accessor for PlaygroundImage();
  sub_1D2871818();
  sub_1D2864210(&qword_1ED8A6CB0, MEMORY[0x1E69695A8]);
  sub_1D2877F08();
  return sub_1D28797F8();
}

uint64_t PhotosPersonAsset.hashValue.getter()
{
  sub_1D28797D8();
  PhotosPerson.hash(into:)(v4);
  v1 = v0 + *(type metadata accessor for PhotosPersonAsset() + 20);
  sub_1D2877F38();
  if (*(v1 + 24) == 1)
  {
    sub_1D28797F8();
  }

  else
  {
    v2 = *(v1 + 16);
    sub_1D28797F8();
    MEMORY[0x1D38A2260](v2);
  }

  type metadata accessor for PhotosPersonImage();
  type metadata accessor for PlaygroundImage();
  sub_1D2871818();
  sub_1D2864210(&qword_1ED8A6CB0, MEMORY[0x1E69695A8]);
  sub_1D2877F08();
  sub_1D28797F8();
  return sub_1D2879828();
}

uint64_t sub_1D2863BE4(uint64_t a1, uint64_t a2)
{
  sub_1D28797D8();
  PhotosPerson.hash(into:)(v7);
  v4 = v2 + *(a2 + 20);
  sub_1D2877F38();
  if (*(v4 + 24) == 1)
  {
    sub_1D28797F8();
  }

  else
  {
    v5 = *(v4 + 16);
    sub_1D28797F8();
    MEMORY[0x1D38A2260](v5);
  }

  type metadata accessor for PhotosPersonImage();
  type metadata accessor for PlaygroundImage();
  sub_1D2871818();
  sub_1D2864210(&qword_1ED8A6CB0, MEMORY[0x1E69695A8]);
  sub_1D2877F08();
  sub_1D28797F8();
  return sub_1D2879828();
}

uint64_t sub_1D2863D18@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = PhotosPerson.id.getter();
  v6 = (v2 + *(a1 + 20));
  v7 = *v6;
  v8 = v6[1];
  v11 = v5;
  v12 = v9;
  sub_1D2870F68();
  MEMORY[0x1D38A0C50](v7, v8);

  *a2 = v11;
  a2[1] = v12;
  return result;
}

uint64_t sub_1D2863DAC()
{
  if (v0[1])
  {
    v1 = *v0;
  }

  else
  {
    v1 = 0;
  }

  sub_1D2870F68();
  return v1;
}

uint64_t sub_1D2863DF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = v2 + *(a1 + 20);
  v5 = type metadata accessor for PhotosPersonImage();
  sub_1D239A330(v4 + *(v5 + 24), a2);
  v6 = type metadata accessor for PlaygroundImage();
  v7 = *(*(v6 - 8) + 56);

  return v7(a2, 0, 1, v6);
}

uint64_t sub_1D2863E7C(uint64_t a1)
{
  v3 = PhotosPerson.id.getter();
  v4 = (v1 + *(a1 + 20));
  v5 = *v4;
  v6 = v4[1];
  v8 = v3;
  sub_1D2870F68();
  MEMORY[0x1D38A0C50](v5, v6);

  return v8;
}

uint64_t _s23ImagePlaygroundInternal17PhotosPersonAssetV2eeoiySbAC_ACtFZ_0(_OWORD *a1, _OWORD *a2)
{
  v4 = a1[1];
  v31[0] = *a1;
  v31[1] = v4;
  v5 = a1[3];
  v7 = *a1;
  v6 = a1[1];
  v31[2] = a1[2];
  v31[3] = v5;
  v27 = v7;
  v28 = v6;
  v8 = a1[3];
  v29 = a1[2];
  v30 = v8;
  v9 = *a2;
  v10 = a2[1];
  v11 = a2[3];
  v32[2] = a2[2];
  v32[3] = v11;
  v12 = a2[1];
  v13 = a2[2];
  v14 = *a2;
  v32[0] = v9;
  v32[1] = v12;
  v23 = v14;
  v24 = v10;
  v15 = a2[3];
  v25 = v13;
  v26 = v15;
  sub_1D22D63B0(v31, v34);
  sub_1D22D63B0(v32, v34);
  v16 = _s23ImagePlaygroundInternal12PhotosPersonV2eeoiySbAC_ACtFZ_0(&v27, &v23);
  v33[0] = v23;
  v33[1] = v24;
  v33[2] = v25;
  v33[3] = v26;
  sub_1D22D640C(v33);
  v34[0] = v27;
  v34[1] = v28;
  v34[2] = v29;
  v34[3] = v30;
  sub_1D22D640C(v34);
  if (!v16)
  {
    goto LABEL_13;
  }

  v17 = type metadata accessor for PhotosPersonAsset();
  v18 = *(v17 + 20);
  v19 = a1 + v18;
  v20 = a2 + v18;
  if ((*(a1 + v18) != *(a2 + v18) || *(a1 + v18 + 8) != *(a2 + v18 + 8)) && (sub_1D2879618() & 1) == 0)
  {
    goto LABEL_13;
  }

  v21 = v20[24];
  if ((v19[24] & 1) == 0)
  {
    if (*(v19 + 2) != *(v20 + 2))
    {
      v21 = 1;
    }

    if (v21)
    {
      goto LABEL_13;
    }

    goto LABEL_11;
  }

  if (v20[24])
  {
LABEL_11:
    type metadata accessor for PhotosPersonImage();
    type metadata accessor for PlaygroundImage();
    if (_s23ImagePlaygroundInternal0A10GenerationV07PreviewA0V2eeoiySbAE_AEtFZ_0())
    {
      v21 = *(a1 + *(v17 + 24)) ^ *(a2 + *(v17 + 24)) ^ 1;
      return v21 & 1;
    }

LABEL_13:
    v21 = 0;
  }

  return v21 & 1;
}

uint64_t sub_1D28640DC(uint64_t a1)
{
  result = sub_1D2864210(&qword_1EC6D8780, type metadata accessor for PhotosPersonAsset);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D2864134(uint64_t a1)
{
  *(a1 + 8) = sub_1D2864210(&qword_1EC6D8778, type metadata accessor for PhotosPersonAsset);
  result = sub_1D2864210(&qword_1EC6D8798, type metadata accessor for PhotosPersonAsset);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1D28641B8(uint64_t a1)
{
  result = sub_1D2864210(&qword_1EC6D8788, type metadata accessor for PhotosPersonAsset);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D2864210(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D2864280()
{
  result = type metadata accessor for PhotosPersonImage();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1D286430C(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;
      sub_1D2870F68();
      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_1D28643B8(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 56);
    do
    {
      v8 = *(v7 - 1);
      v9 = *v7;
      v10 = *(v7 - 2);
      v14[0] = *(v7 - 3);
      v14[1] = v10;
      v14[2] = v8;
      v14[3] = v9;
      sub_1D2870F68();
      sub_1D2870F68();
      v11 = a1(v14);

      if (v3)
      {
        break;
      }

      v12 = v6-- == 0;
      v7 += 4;
    }

    while (((v11 | v12) & 1) == 0);
  }

  else
  {
    LOBYTE(v11) = 0;
  }

  return v11 & 1;
}

uint64_t sub_1D286447C(uint64_t (*a1)(uint64_t *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_15;
  }

  v4 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4)
  {
    do
    {
      v5 = 0;
      v14 = a3 & 0xC000000000000001;
      v6 = a3 & 0xFFFFFFFFFFFFFF8;
      while (v14)
      {
        v7 = a3;
        v8 = MEMORY[0x1D38A1C30](v5, a3);
        v9 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          goto LABEL_13;
        }

LABEL_7:
        v16 = v8;
        v10 = a1(&v16);

        if (!v3 && (v10 & 1) == 0)
        {
          ++v5;
          a3 = v7;
          if (v9 != v4)
          {
            continue;
          }
        }

        return v10 & 1;
      }

      if (v5 >= *(v6 + 16))
      {
        goto LABEL_14;
      }

      v7 = a3;
      v8 = *(a3 + 8 * v5 + 32);
      sub_1D2870F78();
      v9 = v5 + 1;
      if (!__OFADD__(v5, 1))
      {
        goto LABEL_7;
      }

LABEL_13:
      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      v11 = a3;
      v12 = sub_1D2879368();
      a3 = v11;
      v4 = v12;
    }

    while (v12);
  }

  v10 = 0;
  return v10 & 1;
}

void *sub_1D28645B8(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 16);
  if (!v3)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v5 = MEMORY[0x1E69E7CC0];
  for (i = (a1 + 40); ; i += 2)
  {
    v7 = *i;
    v14[0] = *(i - 1);
    v14[1] = v7;
    sub_1D2870F68();
    sub_1D2864734(v14, a2, &v11);
    if (v2)
    {
      break;
    }

    if (v12)
    {
      sub_1D227268C(&v11, v13);
      sub_1D227268C(v13, &v11);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v5 = sub_1D27CD3C4(0, v5[2] + 1, 1, v5);
      }

      v9 = v5[2];
      v8 = v5[3];
      if (v9 >= v8 >> 1)
      {
        v5 = sub_1D27CD3C4((v8 > 1), v9 + 1, 1, v5);
      }

      v5[2] = v9 + 1;
      sub_1D227268C(&v11, &v5[5 * v9 + 4]);
    }

    else
    {
      sub_1D22BD238(&v11, &unk_1EC6E3A00);
    }

    if (!--v3)
    {
      return v5;
    }
  }

  return v5;
}

uint64_t sub_1D2864734@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v31 = a3;
  v5 = type metadata accessor for CharacterAsset();
  v33 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v30 = &v29 - v9;
  v10 = *a1;
  v38 = a1[1];
  v11 = *a2;
  v12 = *(*a2 + 16);
  result = sub_1D2870F68();
  v32 = v12;
  if (v12)
  {
    v14 = 0;
    while (v14 < *(v11 + 16))
    {
      sub_1D2626740(v11 + ((*(v33 + 80) + 32) & ~*(v33 + 80)) + *(v33 + 72) * v14, v7);
      v36 = 0;
      v37 = 0xE000000000000000;
      v15 = v5;
      if (v7[*(v5 + 24)] == 3)
      {
        v16 = 0x6669636570736E75;
        v17 = 0xEB00000000646569;
      }

      else
      {
        v16 = sub_1D2873768();
        v17 = v18;
      }

      type metadata accessor for CharacterRecipe();
      v19 = _s23ImagePlaygroundInternal0A16GenerationPersonV8SkinToneV2idSSvg_0();
      v21 = v20;
      v34 = v16;
      v35 = v17;
      sub_1D2870F68();
      MEMORY[0x1D38A0C50](v19, v21);

      MEMORY[0x1D38A0C50](v34, v35);

      MEMORY[0x1D38A0C50](45, 0xE100000000000000);
      v5 = v15;
      if (v7[*(v15 + 28)])
      {
        v22 = 1702195828;
      }

      else
      {
        v22 = 0x65736C6166;
      }

      if (v7[*(v15 + 28)])
      {
        v23 = 0xE400000000000000;
      }

      else
      {
        v23 = 0xE500000000000000;
      }

      MEMORY[0x1D38A0C50](v22, v23);

      if (v36 == v10 && v37 == v38)
      {

LABEL_19:

        v26 = v30;
        sub_1D286BFD0(v7, v30);
        v27 = v31;
        v31[3] = v15;
        v27[4] = &off_1F4DCE510;
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v27);
        return sub_1D286BFD0(v26, boxed_opaque_existential_1);
      }

      v24 = sub_1D2879618();

      if (v24)
      {
        goto LABEL_19;
      }

      ++v14;
      result = sub_1D286C034(v7);
      if (v32 == v14)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_17:

    v25 = v31;
    v31[4] = 0;
    *v25 = 0u;
    *(v25 + 1) = 0u;
  }

  return result;
}

void sub_1D2864A30(void **a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v49 = sub_1D2873CB8();
  v47 = *(v49 - 8);
  MEMORY[0x1EEE9AC00](v49);
  v8 = v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8F70);
  *&v10 = MEMORY[0x1EEE9AC00](v9 - 8).n128_u64[0];
  v12 = v42 - v11;
  v13 = *a1;
  v14 = [v13 localIdentifier];
  if (!v14)
  {
    sub_1D28780A8();
    v14 = sub_1D2878068();
  }

  v15 = [objc_opt_self() uuidFromLocalIdentifier_];

  if (v15)
  {
    sub_1D28780A8();

    sub_1D28717A8();

    v46 = v12;
    if (a2)
    {
      sub_1D2610058(v12, 0, v48);
      v44 = v48[1];
      v45 = v48[0];
      v43 = v48[2];
    }

    else
    {
      v44 = 0;
      v45 = 0;
      v43 = 0;
    }

    sub_1D2872528();
    v16 = v13;
    v17 = sub_1D2873CA8();
    v18 = sub_1D2878A38();
    if (!os_log_type_enabled(v17, v18))
    {

      (*(v47 + 8))(v8, v49);
LABEL_14:
      a3[4] = 0;
      a3[5] = 0;
      a3[6] = 0;
      v32 = v16;
      v33 = [v32 localIdentifier];
      v34 = sub_1D28780A8();
      v36 = v35;

      a3[2] = v34;
      a3[3] = v36;
      v37 = [v32 px_localizedName];
      v38 = sub_1D28780A8();
      v40 = v39;

      sub_1D22BD238(v46, &qword_1EC6D8F70);
      *a3 = v38;
      a3[1] = v40;
      a3[7] = v32;
      sub_1D238D058(0);
      v41 = v44;
      a3[4] = v45;
      a3[5] = v41;
      a3[6] = v43;
      return;
    }

    v42[1] = v3;
    v19 = swift_slowAlloc();
    v42[0] = swift_slowAlloc();
    v48[0] = v42[0];
    *v19 = 136315394;
    v20 = [v16 name];
    if (v20)
    {
      v21 = v20;
      v22 = sub_1D28780A8();
      v24 = v23;
    }

    else
    {
      v22 = 0;
      v24 = 0xE000000000000000;
    }

    v25 = sub_1D23D7C84(v22, v24, v48);

    *(v19 + 4) = v25;
    *(v19 + 12) = 2080;
    v26 = [v16 uuid];

    if (v26)
    {
      v27 = sub_1D28780A8();
      v29 = v28;

      v30 = sub_1D23D7C84(v27, v29, v48);

      *(v19 + 14) = v30;
      _os_log_impl(&dword_1D226E000, v17, v18, "Logging fetched person (suggestion) with name: %s, UUID: %s", v19, 0x16u);
      v31 = v42[0];
      swift_arrayDestroy();
      MEMORY[0x1D38A3520](v31, -1, -1);
      MEMORY[0x1D38A3520](v19, -1, -1);

      (*(v47 + 8))(v8, v49);
      goto LABEL_14;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_1D2864E98(void **a1@<X0>, uint64_t a2@<X1>, const char *a3@<X3>, void *a4@<X8>)
{
  v50 = a3;
  v57 = a4;
  v7 = sub_1D2873CB8();
  v54 = *(v7 - 8);
  v55 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8F70);
  *&v11 = MEMORY[0x1EEE9AC00](v10 - 8).n128_u64[0];
  v13 = &v47 - v12;
  v14 = *a1;
  v15 = [v14 localIdentifier];
  if (!v15)
  {
    sub_1D28780A8();
    v15 = sub_1D2878068();
  }

  v16 = [objc_opt_self() uuidFromLocalIdentifier_];

  if (v16)
  {
    sub_1D28780A8();

    sub_1D28717A8();

    v53 = v13;
    if (a2)
    {
      sub_1D2610058(v13, 0, v56);
      v17 = v56[0];
      v51 = v56[2];
      v52 = v56[1];
    }

    else
    {
      v17 = 0;
      v51 = 0;
      v52 = 0;
    }

    sub_1D2872528();
    v18 = v14;
    v19 = sub_1D2873CA8();
    v20 = sub_1D2878A38();
    if (!os_log_type_enabled(v19, v20))
    {

      (*(v54 + 8))(v9, v55);
LABEL_14:
      v34 = v57;
      v57[3] = &type metadata for PhotosPerson;
      v34[4] = &off_1F4DCE508;
      v35 = swift_allocObject();
      *v34 = v35;
      v35[7] = 0;
      v35[8] = 0;
      v35[6] = 0;
      v36 = v18;
      v37 = [v36 localIdentifier];
      v38 = sub_1D28780A8();
      v40 = v39;

      v35[4] = v38;
      v35[5] = v40;
      v41 = [v36 px_localizedName];
      v42 = sub_1D28780A8();
      v44 = v43;

      v35[2] = v42;
      v35[3] = v44;
      v35[9] = v36;
      sub_1D238D058(v35[6]);
      v45 = v51;
      v46 = v52;
      v35[6] = v17;
      v35[7] = v46;
      v35[8] = v45;
      sub_1D22BD238(v53, &qword_1EC6D8F70);
      return;
    }

    v48 = v17;
    v49 = v4;
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v56[0] = v22;
    *v21 = 136315394;
    v23 = [v18 name];
    if (v23)
    {
      v24 = v23;
      v25 = sub_1D28780A8();
      v27 = v26;
    }

    else
    {
      v25 = 0;
      v27 = 0xE000000000000000;
    }

    v28 = sub_1D23D7C84(v25, v27, v56);

    *(v21 + 4) = v28;
    *(v21 + 12) = 2080;
    v29 = [v18 uuid];

    if (v29)
    {
      v30 = sub_1D28780A8();
      v32 = v31;

      v33 = sub_1D23D7C84(v30, v32, v56);

      *(v21 + 14) = v33;
      _os_log_impl(&dword_1D226E000, v19, v20, v50, v21, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1D38A3520](v22, -1, -1);
      MEMORY[0x1D38A3520](v21, -1, -1);

      (*(v54 + 8))(v9, v55);
      v17 = v48;
      goto LABEL_14;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1D2865318(void *a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  if (a4 >> 62)
  {
LABEL_23:
    v21 = a4 & 0xFFFFFFFFFFFFFF8;
    v23 = sub_1D2879368();
  }

  else
  {
    v21 = a4 & 0xFFFFFFFFFFFFFF8;
    v23 = *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  for (i = 0; v23 != i; ++i)
  {
    if ((a4 & 0xC000000000000001) != 0)
    {
      v9 = MEMORY[0x1D38A1C30](i, a4);
    }

    else
    {
      if (i >= *(v21 + 16))
      {
        goto LABEL_22;
      }

      v9 = *(a4 + 8 * i + 32);
    }

    v10 = v9;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

    v11 = [v9 localIdentifier];
    v12 = sub_1D28780A8();
    v14 = v13;

    v15 = [a1 localIdentifier];
    v16 = sub_1D28780A8();
    v18 = v17;

    if (v12 == v16 && v14 == v18)
    {
    }

    v7 = sub_1D2879618();

    if (v7)
    {
      return result;
    }
  }

  swift_beginAccess();
  v19 = a1;
  MEMORY[0x1D38A0E30]();
  if (*((*(a5 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a5 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1D2878428();
  }

  sub_1D2878488();
  return swift_endAccess();
}

uint64_t sub_1D2865554(void *a1, void *a2, uint64_t a3)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v5 = sub_1D2879608();
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  v6 = sub_1D2879608();
  v7 = (*(a3 + 16))(a3, v5, v6);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v7;
}

id sub_1D28655E4()
{
  result = [objc_allocWithZone(MEMORY[0x1E695CE18]) init];
  qword_1EC6E39F0 = result;
  return result;
}

uint64_t sub_1D286563C(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_1D287015C(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_1D28656B8(v6);
  return sub_1D2879238();
}

void sub_1D28656B8(unint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_1D28795B8();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        sub_1D22BCFD0(0, &unk_1EC6D74F0);
        v6 = sub_1D2878468();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = ((v6 & 0xFFFFFFFFFFFFFF8) + 32);
      v8[1] = v5;
      sub_1D286591C(v8, v9, a1, v4);
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
    sub_1D28657CC(0, v2, 1, a1);
  }
}

void sub_1D28657CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v5 = *a4;
    v6 = *a4 + 8 * a3 - 8;
    v7 = a1 - a3;
LABEL_5:
    v8 = *(v5 + 8 * v4);
    v9 = v7;
    v24 = v6;
    while (1)
    {
      v10 = *v6;
      v11 = v8;
      v12 = v10;
      [v11 centerX];
      v14 = v13 + -0.5;
      [v11 centerY];
      v16 = v15 + -0.5;
      [v12 centerX];
      v18 = v17 + -0.5;
      [v12 centerY];
      v20 = v19;

      if (v14 * v14 + v16 * v16 >= v18 * v18 + (v20 + -0.5) * (v20 + -0.5))
      {
LABEL_4:
        ++v4;
        v6 = v24 + 8;
        --v7;
        if (v4 == a2)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v5)
      {
        break;
      }

      v21 = *v6;
      v8 = *(v6 + 8);
      *v6 = v8;
      *(v6 + 8) = v21;
      v6 -= 8;
      if (__CFADD__(v9++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_1D286591C(void ***a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  v5 = a3[1];
  if (v5 < 1)
  {
    v7 = MEMORY[0x1E69E7CC0];
LABEL_87:
    v5 = *a1;
    if (!*a1)
    {
      goto LABEL_125;
    }

    v4 = v118;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_119:
      v7 = sub_1D269163C(v7);
    }

    v106 = *(v7 + 2);
    if (v106 >= 2)
    {
      while (*a3)
      {
        v107 = *&v7[16 * v106];
        v108 = *&v7[16 * v106 + 24];
        sub_1D2866054((*a3 + 8 * v107), (*a3 + 8 * *&v7[16 * v106 + 16]), (*a3 + 8 * v108), v5);
        if (v4)
        {
          goto LABEL_97;
        }

        if (v108 < v107)
        {
          goto LABEL_112;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v7 = sub_1D269163C(v7);
        }

        if (v106 - 2 >= *(v7 + 2))
        {
          goto LABEL_113;
        }

        v109 = &v7[16 * v106];
        *v109 = v107;
        *(v109 + 1) = v108;
        sub_1D26915B0(v106 - 1);
        v106 = *(v7 + 2);
        if (v106 <= 1)
        {
          goto LABEL_97;
        }
      }

      goto LABEL_123;
    }

LABEL_97:

    return;
  }

  v6 = 0;
  v7 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v8 = v6++;
    if (v6 < v5)
    {
      v4 = v8;
      v115 = 8 * v8;
      v9 = (*a3 + 8 * v8);
      v11 = *v9;
      v10 = v9 + 2;
      v12 = *(*a3 + 8 * v6);
      v13 = v11;
      [v12 centerX];
      v15 = v14 + -0.5;
      [v12 centerY];
      v17 = v16 + -0.5;
      [v13 centerX];
      v19 = v18 + -0.5;
      [v13 centerY];
      v21 = v20;

      v22 = v15 * v15 + v17 * v17;
      v23 = v19 * v19 + (v21 + -0.5) * (v21 + -0.5);
      v111 = v4;
      v24 = (v4 + 2);
      while (v5 != v24)
      {
        v25 = *(v10 - 1);
        v26 = *v10;
        v27 = v25;
        v4 = &off_1E83FF000;
        [v26 centerX];
        v29 = v28 + -0.5;
        [v26 centerY];
        v31 = v30 + -0.5;
        [v27 centerX];
        v33 = v32 + -0.5;
        [v27 centerY];
        v35 = v34;

        v24 = (v24 + 1);
        ++v10;
        if (v22 < v23 == v29 * v29 + v31 * v31 >= v33 * v33 + (v35 + -0.5) * (v35 + -0.5))
        {
          v5 = v24 - 1;
          break;
        }
      }

      v8 = v111;
      v36 = v115;
      if (v22 < v23)
      {
        if (v5 < v111)
        {
          goto LABEL_116;
        }

        if (v111 < v5)
        {
          v37 = 8 * v5 - 8;
          v38 = v5;
          v39 = v111;
          do
          {
            v38 = (v38 - 1);
            if (v39 != v38)
            {
              v41 = *a3;
              if (!*a3)
              {
                goto LABEL_122;
              }

              v40 = *(v41 + v36);
              *(v41 + v36) = *(v41 + v37);
              *(v41 + v37) = v40;
            }

            v39 = (v39 + 1);
            v37 -= 8;
            v36 += 8;
          }

          while (v39 < v38);
        }
      }

      v6 = v5;
    }

    v42 = a3[1];
    if (v6 < v42)
    {
      if (__OFSUB__(v6, v8))
      {
        goto LABEL_115;
      }

      if (v6 - v8 < a4)
      {
        v43 = v8 + a4;
        if (__OFADD__(v8, a4))
        {
          goto LABEL_117;
        }

        if (v43 >= v42)
        {
          v43 = a3[1];
        }

        if (v43 < v8)
        {
LABEL_118:
          __break(1u);
          goto LABEL_119;
        }

        if (v6 != v43)
        {
          break;
        }
      }
    }

LABEL_36:
    if (v6 < v8)
    {
      goto LABEL_114;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v7 = sub_1D2691650(0, *(v7 + 2) + 1, 1, v7);
    }

    v62 = *(v7 + 2);
    v61 = *(v7 + 3);
    v4 = v62 + 1;
    if (v62 >= v61 >> 1)
    {
      v7 = sub_1D2691650((v61 > 1), v62 + 1, 1, v7);
    }

    *(v7 + 2) = v4;
    v63 = &v7[16 * v62];
    *(v63 + 4) = v8;
    *(v63 + 5) = v6;
    v64 = *a1;
    if (!*a1)
    {
      goto LABEL_124;
    }

    if (v62)
    {
      while (1)
      {
        v65 = v4 - 1;
        if (v4 >= 4)
        {
          break;
        }

        if (v4 == 3)
        {
          v66 = *(v7 + 4);
          v67 = *(v7 + 5);
          v76 = __OFSUB__(v67, v66);
          v68 = v67 - v66;
          v69 = v76;
LABEL_56:
          if (v69)
          {
            goto LABEL_103;
          }

          v82 = &v7[16 * v4];
          v84 = *v82;
          v83 = *(v82 + 1);
          v85 = __OFSUB__(v83, v84);
          v86 = v83 - v84;
          v87 = v85;
          if (v85)
          {
            goto LABEL_106;
          }

          v88 = &v7[16 * v65 + 32];
          v90 = *v88;
          v89 = *(v88 + 1);
          v76 = __OFSUB__(v89, v90);
          v91 = v89 - v90;
          if (v76)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v86, v91))
          {
            goto LABEL_110;
          }

          if (v86 + v91 >= v68)
          {
            if (v68 < v91)
            {
              v65 = v4 - 2;
            }

            goto LABEL_77;
          }

          goto LABEL_70;
        }

        v92 = &v7[16 * v4];
        v94 = *v92;
        v93 = *(v92 + 1);
        v76 = __OFSUB__(v93, v94);
        v86 = v93 - v94;
        v87 = v76;
LABEL_70:
        if (v87)
        {
          goto LABEL_105;
        }

        v95 = &v7[16 * v65];
        v97 = *(v95 + 4);
        v96 = *(v95 + 5);
        v76 = __OFSUB__(v96, v97);
        v98 = v96 - v97;
        if (v76)
        {
          goto LABEL_108;
        }

        if (v98 < v86)
        {
          goto LABEL_3;
        }

LABEL_77:
        v103 = v65 - 1;
        if (v65 - 1 >= v4)
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
          goto LABEL_118;
        }

        if (!*a3)
        {
          goto LABEL_121;
        }

        v104 = *&v7[16 * v103 + 32];
        v5 = *&v7[16 * v65 + 40];
        sub_1D2866054((*a3 + 8 * v104), (*a3 + 8 * *&v7[16 * v65 + 32]), (*a3 + 8 * v5), v64);
        v4 = v118;
        if (v118)
        {
          goto LABEL_97;
        }

        if (v5 < v104)
        {
          goto LABEL_99;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v7 = sub_1D269163C(v7);
        }

        if (v103 >= *(v7 + 2))
        {
          goto LABEL_100;
        }

        v105 = &v7[16 * v103];
        *(v105 + 4) = v104;
        *(v105 + 5) = v5;
        v118 = 0;
        sub_1D26915B0(v65);
        v4 = *(v7 + 2);
        if (v4 <= 1)
        {
          goto LABEL_3;
        }
      }

      v70 = &v7[16 * v4 + 32];
      v71 = *(v70 - 64);
      v72 = *(v70 - 56);
      v76 = __OFSUB__(v72, v71);
      v73 = v72 - v71;
      if (v76)
      {
        goto LABEL_101;
      }

      v75 = *(v70 - 48);
      v74 = *(v70 - 40);
      v76 = __OFSUB__(v74, v75);
      v68 = v74 - v75;
      v69 = v76;
      if (v76)
      {
        goto LABEL_102;
      }

      v77 = &v7[16 * v4];
      v79 = *v77;
      v78 = *(v77 + 1);
      v76 = __OFSUB__(v78, v79);
      v80 = v78 - v79;
      if (v76)
      {
        goto LABEL_104;
      }

      v76 = __OFADD__(v68, v80);
      v81 = v68 + v80;
      if (v76)
      {
        goto LABEL_107;
      }

      if (v81 >= v73)
      {
        v99 = &v7[16 * v65 + 32];
        v101 = *v99;
        v100 = *(v99 + 1);
        v76 = __OFSUB__(v100, v101);
        v102 = v100 - v101;
        if (v76)
        {
          goto LABEL_111;
        }

        if (v68 < v102)
        {
          v65 = v4 - 2;
        }

        goto LABEL_77;
      }

      goto LABEL_56;
    }

LABEL_3:
    v5 = a3[1];
    if (v6 >= v5)
    {
      goto LABEL_87;
    }
  }

  v4 = *a3;
  v44 = *a3 + 8 * v6 - 8;
  v112 = v8;
  v5 = v8 - v6;
  v114 = v43;
LABEL_29:
  v116 = v6;
  v45 = *(v4 + 8 * v6);
  v46 = v5;
  v47 = v44;
  while (1)
  {
    v48 = *v47;
    v49 = v45;
    v50 = v48;
    [v49 centerX];
    v52 = v51 + -0.5;
    [v49 centerY];
    v54 = v53 + -0.5;
    [v50 centerX];
    v56 = v55 + -0.5;
    [v50 centerY];
    v58 = v57;

    if (v52 * v52 + v54 * v54 >= v56 * v56 + (v58 + -0.5) * (v58 + -0.5))
    {
LABEL_28:
      ++v6;
      v44 += 8;
      --v5;
      if (v116 + 1 != v114)
      {
        goto LABEL_29;
      }

      v6 = v114;
      v8 = v112;
      goto LABEL_36;
    }

    if (!v4)
    {
      break;
    }

    v59 = *v47;
    v45 = *(v47 + 8);
    *v47 = v45;
    *(v47 + 8) = v59;
    v47 -= 8;
    v60 = __CFADD__(v46, 1);
    v46 = (v46 + 1);
    if (v60)
    {
      goto LABEL_28;
    }
  }

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
}

uint64_t sub_1D2866054(void **__src, id *__dst, id *a3, void **a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __dst;
  v7 = __src;
  v8 = __dst - __src;
  v9 = __dst - __src + 7;
  if (__dst - __src >= 0)
  {
    v9 = __dst - __src;
  }

  v10 = v9 >> 3;
  v11 = a3 - __dst;
  v12 = a3 - __dst + 7;
  if (a3 - __dst >= 0)
  {
    v12 = a3 - __dst;
  }

  v13 = v12 >> 3;
  if (v10 < v12 >> 3)
  {
    if (a4 != __src || &__src[v10] <= a4)
    {
      memmove(a4, __src, 8 * v10);
    }

    v14 = &v4[v10];
    if (v8 < 8 || v6 >= v5)
    {
      v6 = v7;
      goto LABEL_38;
    }

    while (1)
    {
      v15 = *v4;
      v16 = *v6;
      v17 = v15;
      [v16 centerX];
      v19 = v18 + -0.5;
      [v16 centerY];
      v21 = v20 + -0.5;
      [v17 centerX];
      v23 = v22 + -0.5;
      [v17 centerY];
      v25 = v24;

      if (v19 * v19 + v21 * v21 >= v23 * v23 + (v25 + -0.5) * (v25 + -0.5))
      {
        break;
      }

      v26 = v6;
      v27 = v7 == v6++;
      if (!v27)
      {
        goto LABEL_16;
      }

LABEL_17:
      ++v7;
      if (v4 >= v14 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_38;
      }
    }

    v26 = v4;
    v27 = v7 == v4++;
    if (v27)
    {
      goto LABEL_17;
    }

LABEL_16:
    *v7 = *v26;
    goto LABEL_17;
  }

  if (a4 != __dst || &__dst[v13] <= a4)
  {
    memmove(a4, __dst, 8 * v13);
  }

  v14 = &v4[v13];
  if (v11 >= 8 && v6 > v7)
  {
    v47 = v7;
    do
    {
      v28 = v6 - 1;
      v29 = v5 - 1;
      v30 = v14;
      while (1)
      {
        v31 = v6;
        v32 = v29;
        v33 = v29 + 1;
        v34 = *--v30;
        v6 = v28;
        v35 = *v28;
        v36 = v34;
        v37 = v35;
        [v36 centerX];
        v39 = v38 + -0.5;
        [v36 centerY];
        v41 = v40 + -0.5;
        [v37 centerX];
        v43 = v42 + -0.5;
        [v37 centerY];
        v45 = v44;

        if (v39 * v39 + v41 * v41 < v43 * v43 + (v45 + -0.5) * (v45 + -0.5))
        {
          break;
        }

        if (v33 != v14)
        {
          *v32 = *v30;
        }

        v29 = v32 - 1;
        v14 = v30;
        v28 = v6;
        v6 = v31;
        if (v30 <= v4)
        {
          v14 = v30;
          goto LABEL_38;
        }
      }

      v27 = v33 == v31;
      v5 = v32;
      if (!v27)
      {
        *v32 = *v6;
      }
    }

    while (v14 > v4 && v6 > v47);
  }

LABEL_38:
  if (v6 != v4 || v6 >= (v4 + ((v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v6, v4, 8 * (v14 - v4));
  }

  return 1;
}

uint64_t sub_1D28663C4(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1D2879618() & 1;
  }
}

id sub_1D286641C(uint64_t a1, void *a2)
{
  v4 = sub_1D2871818();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1D2873CB8();
  v33 = *(v8 - 8);
  v34 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D22BCFD0(0, &qword_1ED89CC40);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  sub_1D28717B8();
  v12 = sub_1D2878068();

  v13 = [ObjCClassFromMetadata localIdentifierWithUUID_];

  if (!v13 || (v14 = sub_1D28780A8(), v16 = v15, v13, v17 = objc_opt_self(), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAE60), v18 = swift_allocObject(), *(v18 + 16) = xmmword_1D287F500, *(v18 + 32) = v14, *(v18 + 40) = v16, v19 = sub_1D28783C8(), , v20 = [a2 librarySpecificFetchOptions], v21 = objc_msgSend(v17, sel_fetchPersonsWithLocalIdentifiers_options_, v19, v20), v19, v20, v22 = objc_msgSend(v21, sel_firstObject), v21, (result = v22) == 0))
  {
    sub_1D2872528();
    (*(v5 + 16))(v7, a1, v4);
    v24 = sub_1D2873CA8();
    v25 = sub_1D2878A38();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v35 = v27;
      *v26 = 136315138;
      sub_1D2407368();
      v28 = sub_1D28795C8();
      v30 = v29;
      (*(v5 + 8))(v7, v4);
      v31 = sub_1D23D7C84(v28, v30, &v35);

      *(v26 + 4) = v31;
      _os_log_impl(&dword_1D226E000, v24, v25, "No person for uuid %s", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v27);
      MEMORY[0x1D38A3520](v27, -1, -1);
      MEMORY[0x1D38A3520](v26, -1, -1);
    }

    else
    {

      (*(v5 + 8))(v7, v4);
    }

    (*(v33 + 8))(v10, v34);
    return 0;
  }

  return result;
}

uint64_t sub_1D28667F0(unint64_t a1, id a2, void *a3)
{
  v81 = sub_1D2873CB8();
  v6 = *(v81 - 8);
  MEMORY[0x1EEE9AC00](v81);
  v8 = &v72 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = (&v72 - v10);
  MEMORY[0x1EEE9AC00](v12);
  v77 = &v72 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v80 = &v72 - v15;
  v16 = objc_opt_self();
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAE60);
  v17 = swift_allocObject();
  v78 = xmmword_1D287F500;
  *(v17 + 16) = xmmword_1D287F500;
  *(v17 + 32) = a1;
  *(v17 + 40) = a2;
  sub_1D2870F68();
  v18 = sub_1D28783C8();

  v19 = [a3 librarySpecificFetchOptions];
  v20 = [v16 fetchAssetsWithLocalIdentifiers:v18 options:v19];

  v21 = [v20 firstObject];
  if (!v21)
  {
    sub_1D2872528();
    sub_1D2870F68();
    v34 = sub_1D2873CA8();
    v35 = sub_1D2878A38();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v83 = v37;
      *v36 = 136315138;
      *(v36 + 4) = sub_1D23D7C84(a1, a2, &v83);
      _os_log_impl(&dword_1D226E000, v34, v35, "No asset for identifier %s while trying to update person key face using imported image", v36, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v37);
      MEMORY[0x1D38A3520](v37, -1, -1);
      MEMORY[0x1D38A3520](v36, -1, -1);
    }

    (*(v6 + 8))(v8, v81);
    return 0;
  }

  v22 = objc_opt_self();
  v23 = [a3 librarySpecificFetchOptions];
  v82 = v21;
  v24 = [v22 fetchFacesInAsset:v21 options:v23];

  v25 = [v24 fetchedObjects];
  if (!v25)
  {
    goto LABEL_38;
  }

  sub_1D22BCFD0(0, &unk_1EC6D74F0);
  v26 = sub_1D28783E8();

  if (v26 >> 62)
  {
    goto LABEL_34;
  }

  v27 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v27)
  {
LABEL_37:

LABEL_38:
    sub_1D2872528();
    sub_1D2870F68();
    v63 = sub_1D2873CA8();
    v64 = sub_1D2878A38();

    if (os_log_type_enabled(v63, v64))
    {
      v65 = swift_slowAlloc();
      v66 = swift_slowAlloc();
      v83 = v66;
      *v65 = 136315138;
      *(v65 + 4) = sub_1D23D7C84(a1, a2, &v83);
      _os_log_impl(&dword_1D226E000, v63, v64, "No face found in asset with identifier %s while trying to update person key face using imported image", v65, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v66);
      MEMORY[0x1D38A3520](v66, -1, -1);
      MEMORY[0x1D38A3520](v65, -1, -1);
    }

    (*(v6 + 8))(v11, v81);
    return 0;
  }

  v73 = a3;
  v74 = a1;
  v75 = a2;
  v76 = v6;
  v83 = MEMORY[0x1E69E7CC0];
  do
  {
    v28 = 0;
    a1 = v26 & 0xC000000000000001;
    a2 = v82;
    while (1)
    {
      if (a1)
      {
        v29 = MEMORY[0x1D38A1C30](v28, v26);
      }

      else
      {
        if (v28 >= *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_33;
        }

        v29 = *(v26 + 8 * v28 + 32);
      }

      a3 = v29;
      v6 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        break;
      }

      v30 = [a2 pixelWidth];
      [a3 size];
      v32 = v31 * v30;
      v11 = [a2 pixelHeight];
      [a3 size];
      if (v32 <= 128.0 || v33 * v11 <= 128.0)
      {
      }

      else
      {
        v11 = &v83;
        sub_1D2879228();
        sub_1D2879268();
        a2 = v82;
        sub_1D2879278();
        sub_1D2879238();
      }

      ++v28;
      if (v6 == v27)
      {
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    if (sub_1D2879368() <= 0)
    {
      goto LABEL_37;
    }

    v73 = a3;
    v74 = a1;
    v75 = a2;
    v76 = v6;
    v11 = MEMORY[0x1E69E7CC0];
    v83 = MEMORY[0x1E69E7CC0];
    v27 = sub_1D2879368();
  }

  while (v27);
LABEL_20:
  v38 = sub_1D2870F78();
  v83 = sub_1D2581958(v38);
  sub_1D286563C(&v83);
  v40 = v75;
  v39 = v76;
  v42 = v80;
  v41 = v81;
  v43 = v74;

  v44 = v83;
  if (v83 < 0 || (v83 & 0x4000000000000000) != 0)
  {
    if (sub_1D2879368())
    {
      goto LABEL_23;
    }

LABEL_43:

    v67 = v77;
    sub_1D2872528();
    sub_1D2870F68();
    v68 = sub_1D2873CA8();
    v69 = sub_1D2878A38();

    if (os_log_type_enabled(v68, v69))
    {
      v70 = swift_slowAlloc();
      v71 = swift_slowAlloc();
      v83 = v71;
      *v70 = 136315138;
      *(v70 + 4) = sub_1D23D7C84(v43, v40, &v83);
      _os_log_impl(&dword_1D226E000, v68, v69, "No face found in asset with identifier %s while trying to update person key face using imported image", v70, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v71);
      MEMORY[0x1D38A3520](v71, -1, -1);
      MEMORY[0x1D38A3520](v70, -1, -1);
    }

    (*(v39 + 8))(v67, v41);
    return 0;
  }

  if (!*(v83 + 16))
  {
    goto LABEL_43;
  }

LABEL_23:
  if ((v44 & 0xC000000000000001) != 0)
  {
    v45 = MEMORY[0x1D38A1C30](0, v44);
  }

  else
  {
    if (!*(v44 + 16))
    {
      __break(1u);

      __break(1u);
      return result;
    }

    v45 = *(v44 + 32);
  }

  v46 = v45;

  v47 = [v46 personLocalIdentifier];
  if (v47)
  {
    v48 = v47;
    v49 = sub_1D28780A8();
    v51 = v50;

    v52 = objc_opt_self();
    v53 = swift_allocObject();
    *(v53 + 16) = v78;
    *(v53 + 32) = v49;
    *(v53 + 40) = v51;
    v54 = sub_1D28783C8();

    v55 = [v73 librarySpecificFetchOptions];
    v56 = [v52 fetchPersonsWithLocalIdentifiers:v54 options:v55];

    v57 = [v56 firstObject];
    if (v57)
    {

      return v57;
    }
  }

  sub_1D2872528();
  sub_1D2870F68();
  v59 = sub_1D2873CA8();
  v60 = sub_1D2878A38();

  if (os_log_type_enabled(v59, v60))
  {
    v61 = swift_slowAlloc();
    v62 = swift_slowAlloc();
    v83 = v62;
    *v61 = 136315138;
    *(v61 + 4) = sub_1D23D7C84(v43, v40, &v83);
    _os_log_impl(&dword_1D226E000, v59, v60, "No person found in asset with identifier %s while trying to update person key face using imported image", v61, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v62);
    MEMORY[0x1D38A3520](v62, -1, -1);
    MEMORY[0x1D38A3520](v61, -1, -1);
  }

  (*(v39 + 8))(v42, v41);
  return 0;
}

uint64_t sub_1D2867170(uint64_t a1)
{
  v1[2] = a1;
  v2 = sub_1D2873CB8();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v1[6] = swift_task_alloc();
  v1[7] = swift_task_alloc();
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8F70);
  v1[11] = swift_task_alloc();
  v3 = sub_1D2871818();
  v1[12] = v3;
  v1[13] = *(v3 - 8);
  v1[14] = swift_task_alloc();
  v1[15] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6E3A40);
  v1[16] = swift_task_alloc();
  v4 = sub_1D2873908();
  v1[17] = v4;
  v1[18] = *(v4 - 8);
  v1[19] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D28673A0, 0, 0);
}

uint64_t sub_1D28673A0()
{
  v109 = v0;
  if (qword_1ED8A2F58 != -1)
  {
    swift_once();
  }

  if (!qword_1ED8B0198)
  {
    sub_1D2872528();
    v11 = sub_1D2873CA8();
    v12 = sub_1D2878A18();
    v13 = os_log_type_enabled(v11, v12);
    isa = v0[4].isa;
    v14 = v0[5].isa;
    v16 = v0[3].isa;
    if (v13)
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_1D226E000, v11, v12, "Failed to access visual understanding service needed to fetch the me person", v17, 2u);
      MEMORY[0x1D38A3520](v17, -1, -1);
    }

    (*(isa + 1))(v14, v16);
    goto LABEL_20;
  }

  v1 = v0[17].isa;
  v2 = v0[18].isa;
  v3 = v0[16].isa;
  sub_1D2870F78();
  sub_1D2873918();
  if ((*(v2 + 6))(v3, 1, v1) == 1)
  {
    sub_1D22BD238(v0[16].isa, &unk_1EC6E3A40);
    sub_1D2872528();
    v4 = sub_1D2873CA8();
    v5 = sub_1D2878A18();
    v6 = os_log_type_enabled(v4, v5);
    v7 = v0[6].isa;
    v8 = v0[3].isa;
    v9 = v0[4].isa;
    if (v6)
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_1D226E000, v4, v5, "No inferred device owner in VU gallery", v10, 2u);
      MEMORY[0x1D38A3520](v10, -1, -1);
    }

    (*(v9 + 1))(v7, v8);
    goto LABEL_20;
  }

  v18 = v0[12].isa;
  v19 = v0[13].isa;
  v20 = v0[11].isa;
  (*(v0[18].isa + 4))(v0[19].isa, v0[16].isa, v0[17].isa);
  sub_1D28738F8();
  if ((*(v19 + 6))(v20, 1, v18) == 1)
  {
    sub_1D22BD238(v0[11].isa, &qword_1EC6D8F70);
    sub_1D2872528();
    v21 = sub_1D2873CA8();
    v22 = sub_1D2878A18();
    v23 = os_log_type_enabled(v21, v22);
    v24 = v0[18].isa;
    v25 = v0[19].isa;
    v26 = v0[17].isa;
    v27 = v0[7].isa;
    v28 = v0[3].isa;
    v29 = v0[4].isa;
    if (v23)
    {
      v105 = v0[19].isa;
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&dword_1D226E000, v21, v22, "No UUID tag for inferred device owner in VU gallery", v30, 2u);
      MEMORY[0x1D38A3520](v30, -1, -1);

      (*(v29 + 1))(v27, v28);
      (*(v24 + 1))(v105, v26);
    }

    else
    {

      (*(v29 + 1))(v27, v28);
      (*(v24 + 1))(v25, v26);
    }

LABEL_20:
    v106 = 0;
    goto LABEL_21;
  }

  (*(v0[13].isa + 4))(v0[15].isa, v0[11].isa, v0[12].isa);
  sub_1D22BCFD0(0, &qword_1ED89CC40);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  sub_1D28717B8();
  v32 = sub_1D2878068();

  v33 = [ObjCClassFromMetadata localIdentifierWithUUID_];

  if (v33)
  {
    v34 = v0[2].isa;
    v35 = sub_1D28780A8();
    v37 = v36;

    v38 = objc_opt_self();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAE60);
    v39 = swift_allocObject();
    *(v39 + 16) = xmmword_1D287F500;
    *(v39 + 32) = v35;
    *(v39 + 40) = v37;
    v40 = sub_1D28783C8();

    v41 = [(objc_class *)v34 librarySpecificFetchOptions];
    v42 = [v38 fetchPersonsWithLocalIdentifiers:v40 options:v41];

    v43 = [v42 firstObject];
    if (v43)
    {
      v45 = v0[14].isa;
      v44 = v0[15].isa;
      v47 = v0[12].isa;
      v46 = v0[13].isa;
      sub_1D2872528();
      (*(v46 + 2))(v45, v44, v47);
      v48 = v43;
      v49 = sub_1D2873CA8();
      v50 = sub_1D2878A38();

      v106 = v43;
      if (os_log_type_enabled(v49, v50))
      {
        v51 = swift_slowAlloc();
        v100 = swift_slowAlloc();
        v108 = v100;
        *v51 = 136315394;
        v52 = [v48 name];
        log = v49;
        v92 = v50;
        if (v52)
        {
          v53 = v52;
          v54 = sub_1D28780A8();
          v56 = v55;
        }

        else
        {
          v54 = 0;
          v56 = 0xE000000000000000;
        }

        v96 = v0[17].isa;
        v99 = v0[19].isa;
        v80 = v0[14].isa;
        v93 = v0[15].isa;
        v94 = v0[18].isa;
        v82 = v0[12].isa;
        v81 = v0[13].isa;
        v91 = v0[10].isa;
        v83 = v0[4].isa;
        v90 = v0[3].isa;
        v84 = sub_1D23D7C84(v54, v56, &v108);

        *(v51 + 4) = v84;
        *(v51 + 12) = 2080;
        v85 = sub_1D28717B8();
        v87 = v86;
        v88 = *(v81 + 1);
        v88(v80, v82);
        v89 = sub_1D23D7C84(v85, v87, &v108);

        *(v51 + 14) = v89;
        _os_log_impl(&dword_1D226E000, log, v92, "Found a device owner with name: %s, UUID: %s", v51, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1D38A3520](v100, -1, -1);
        MEMORY[0x1D38A3520](v51, -1, -1);

        (*(v83 + 1))(v91, v90);
        v88(v93, v82);
        (*(v94 + 1))(v99, v96);
      }

      else
      {
        v72 = v0[18].isa;
        v98 = v0[17].isa;
        v102 = v0[19].isa;
        v73 = v0[14].isa;
        v95 = v0[15].isa;
        v75 = v0[12].isa;
        v74 = v0[13].isa;
        v76 = v0[10].isa;
        v78 = v0[3].isa;
        v77 = v0[4].isa;

        v79 = *(v74 + 1);
        v79(v73, v75);
        (*(v77 + 1))(v76, v78);
        v79(v95, v75);
        (*(v72 + 1))(v102, v98);
      }

      goto LABEL_21;
    }

    sub_1D2872528();
    v59 = sub_1D2873CA8();
    v60 = sub_1D2878A18();
    v71 = os_log_type_enabled(v59, v60);
    v63 = v0[18].isa;
    v62 = v0[19].isa;
    loga = v0;
    v107 = v0[17].isa;
    v64 = v0[13].isa;
    v97 = v0[12].isa;
    v101 = v0[15].isa;
    v65 = v0[9].isa;
    v67 = v0[3].isa;
    v66 = v0[4].isa;
    if (v71)
    {
      v68 = v0[19].isa;
      v69 = swift_slowAlloc();
      *v69 = 0;
      v70 = "No person for PHPerson corresponding to inferred device owner";
      goto LABEL_28;
    }

LABEL_29:

    (*(v66 + 1))(v65, v67);
    (*(v64 + 1))(v101, v97);
    (*(v63 + 1))(v62, v107);
    goto LABEL_30;
  }

  sub_1D2872528();
  v59 = sub_1D2873CA8();
  v60 = sub_1D2878A18();
  v61 = os_log_type_enabled(v59, v60);
  v63 = v0[18].isa;
  v62 = v0[19].isa;
  loga = v0;
  v107 = v0[17].isa;
  v64 = v0[13].isa;
  v97 = v0[12].isa;
  v101 = v0[15].isa;
  v65 = v0[8].isa;
  v67 = v0[3].isa;
  v66 = v0[4].isa;
  if (!v61)
  {
    goto LABEL_29;
  }

  v68 = v0[19].isa;
  v69 = swift_slowAlloc();
  *v69 = 0;
  v70 = "No PHPerson identifier for inferred device owner";
LABEL_28:
  _os_log_impl(&dword_1D226E000, v59, v60, v70, v69, 2u);
  MEMORY[0x1D38A3520](v69, -1, -1);

  (*(v66 + 1))(v65, v67);
  (*(v64 + 1))(v101, v97);
  (*(v63 + 1))(v68, v107);
LABEL_30:
  v106 = 0;
  v0 = loga;
LABEL_21:

  v57 = v0[1].isa;

  return v57(v106);
}

id sub_1D2867D84(uint64_t a1, unint64_t a2)
{
  v37[1] = *MEMORY[0x1E69E9840];
  v4 = sub_1D2873CB8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6E3A10);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1D2885990;
  v9 = *MEMORY[0x1E695C208];
  v10 = *MEMORY[0x1E695C330];
  *(v8 + 32) = *MEMORY[0x1E695C208];
  *(v8 + 40) = v10;
  v11 = objc_allocWithZone(MEMORY[0x1E695CD78]);
  v12 = v9;
  v13 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E3AC0);
  v14 = sub_1D28783C8();

  v15 = [v11 initWithKeysToFetch_];

  v16 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAE60);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1D287F500;
  *(v17 + 32) = a1;
  *(v17 + 40) = a2;
  sub_1D2870F68();
  v18 = sub_1D28783C8();

  v19 = [v16 predicateForContactsMatchingHandleStrings_];

  [v15 setPredicate_];
  if (qword_1EC6D8DA0 != -1)
  {
    swift_once();
  }

  v37[0] = 0;
  v20 = [qword_1EC6E39F0 executeFetchRequest:v15 error:v37];
  if (!v20)
  {
    v30 = v37[0];
    v31 = sub_1D28714B8();

    swift_willThrow();
LABEL_16:
    sub_1D28726E8();
    sub_1D2870F68();
    v32 = sub_1D2873CA8();
    v33 = sub_1D28789F8();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v37[0] = v35;
      *v34 = 136315138;
      *(v34 + 4) = sub_1D23D7C84(a1, a2, v37);
      _os_log_impl(&dword_1D226E000, v32, v33, "Unable to fetch contact for handle string from context: %s", v34, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v35);
      MEMORY[0x1D38A3520](v35, -1, -1);
      MEMORY[0x1D38A3520](v34, -1, -1);
    }

    else
    {
    }

    (*(v5 + 8))(v7, v4);
    return 0;
  }

  v21 = v20;
  v22 = v37[0];
  v37[0] = [v21 value];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E3AC8);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_15:

    goto LABEL_16;
  }

  v23 = v36;
  if (!*(v36 + 16))
  {
    goto LABEL_14;
  }

  v24 = sub_1D25D0410(a1, a2);
  if ((v25 & 1) == 0)
  {
    goto LABEL_14;
  }

  v26 = *(*(v23 + 56) + 8 * v24);
  sub_1D2870F68();

  if (v26 >> 62)
  {
    if (sub_1D2879368())
    {
      goto LABEL_9;
    }

    goto LABEL_14;
  }

  if (!*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_14:

    goto LABEL_15;
  }

LABEL_9:
  if ((v26 & 0xC000000000000001) != 0)
  {
    v27 = MEMORY[0x1D38A1C30](0, v26);
  }

  else
  {
    if (!*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
    }

    v27 = *(v26 + 32);
  }

  v28 = v27;

  return v28;
}

id sub_1D2868268(uint64_t a1, unint64_t a2, void *a3)
{
  v6 = sub_1D2873CB8();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAE60);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1D287F500;
  *(v11 + 32) = a1;
  *(v11 + 40) = a2;
  sub_1D2870F68();
  v12 = sub_1D28783C8();

  v13 = [a3 librarySpecificFetchOptions];
  v14 = [v10 fetchPersonsForContactIdentifiers:v12 options:v13];

  v15 = [v14 firstObject];
  if (v15)
  {
  }

  else
  {
    sub_1D2872528();
    sub_1D2870F68();
    v16 = sub_1D2873CA8();
    v17 = sub_1D2878A18();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v22 = v7;
      v19 = v18;
      v20 = swift_slowAlloc();
      v23 = v20;
      *v19 = 136315138;
      *(v19 + 4) = sub_1D23D7C84(a1, a2, &v23);
      _os_log_impl(&dword_1D226E000, v16, v17, "No person for contact identifier: %s", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v20);
      MEMORY[0x1D38A3520](v20, -1, -1);
      MEMORY[0x1D38A3520](v19, -1, -1);

      (*(v22 + 8))(v9, v6);
    }

    else
    {

      (*(v7 + 8))(v9, v6);
    }
  }

  return v15;
}

id sub_1D2868520(uint64_t a1, unint64_t a2, void *a3)
{
  v6 = sub_1D2873CB8();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D22BCFD0(0, &qword_1EC6DF880);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6E3A50);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1D287F500;
  *(v10 + 56) = MEMORY[0x1E69E6158];
  *(v10 + 64) = sub_1D26BB9B4();
  *(v10 + 32) = a1;
  *(v10 + 40) = a2;
  sub_1D2870F68();
  v11 = sub_1D2878968();
  v12 = [a3 librarySpecificFetchOptions];
  v13 = [objc_opt_self() sortDescriptorsForManualSort];
  if (!v13)
  {
    sub_1D22BCFD0(0, &qword_1EC6DF7E8);
    sub_1D28783E8();
    v13 = sub_1D28783C8();
  }

  [v12 setSortDescriptors_];

  [v12 setPersonContext_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6E3A10);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1D28809B0;
  *(v14 + 32) = sub_1D2879798();
  sub_1D22BCFD0(0, &qword_1ED89CC58);
  v15 = sub_1D28783C8();

  [v12 setIncludedDetectionTypes_];

  [v12 setPredicate_];
  [v12 setFetchLimit_];
  v16 = [objc_opt_self() fetchPersonsWithOptions_];

  v17 = [v16 firstObject];
  if (v17)
  {
  }

  else
  {
    sub_1D2872528();
    sub_1D2870F68();
    v18 = sub_1D2873CA8();
    v19 = sub_1D2878A18();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v28 = v9;
      v21 = v7;
      v22 = v20;
      v23 = swift_slowAlloc();
      v27 = v6;
      v24 = v23;
      v29 = v23;
      *v22 = 136315138;
      *(v22 + 4) = sub_1D23D7C84(a1, a2, &v29);
      _os_log_impl(&dword_1D226E000, v18, v19, "Unable to find PHPerson for person named: %s", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v24);
      MEMORY[0x1D38A3520](v24, -1, -1);
      MEMORY[0x1D38A3520](v22, -1, -1);

      (*(v21 + 8))(v28, v27);
    }

    else
    {

      (*(v7 + 8))(v9, v6);
    }
  }

  return v17;
}

uint64_t sub_1D2868958(uint64_t a1, uint64_t a2)
{
  v2[12] = a1;
  v2[13] = a2;
  v3 = sub_1D28721C8();
  v2[14] = v3;
  v2[15] = *(v3 - 8);
  v2[16] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D2868A18, 0, 0);
}

uint64_t sub_1D2868A18()
{
  v1 = *(v0 + 96);
  v37 = MEMORY[0x1E69E7CC0];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = *(v0 + 120);
    v4 = *(v3 + 16);
    v3 += 16;
    v5 = v1 + ((*(v3 + 64) + 32) & ~*(v3 + 64));
    v35 = *(v3 + 56);
    v36 = v4;
    v6 = (v3 - 8);
    v4(*(v0 + 128), v5, *(v0 + 112));
    while (1)
    {
      v8 = sub_1D2872198();
      v10 = sub_1D2867D84(v8, v9);

      if (v10 && (v11 = *(v0 + 104), v12 = [v10 identifier], v13 = sub_1D28780A8(), v15 = v14, v12, v16 = sub_1D2868268(v13, v15, v11), v10, , v16))
      {
        v7 = (*v6)(*(v0 + 128), *(v0 + 112));
      }

      else
      {
        v17 = *(v0 + 128);
        v18 = *(v0 + 104);
        v19 = *(v0 + 112);
        v20 = sub_1D28721B8();
        v22 = sub_1D2868520(v20, v21, v18);

        v7 = (*v6)(v17, v19);
        if (!v22)
        {
          goto LABEL_7;
        }
      }

      MEMORY[0x1D38A0E30](v7);
      if (*((v37 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v37 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1D2878428();
      }

      sub_1D2878488();
LABEL_7:
      v5 += v35;
      if (!--v2)
      {
        break;
      }

      v36(*(v0 + 128), v5, *(v0 + 112));
    }
  }

  v23 = sub_1D2870F68();
  sub_1D2679E20(v23);

  v24 = objc_allocWithZone(MEMORY[0x1E695DFB8]);
  v25 = sub_1D28783C8();

  v26 = [v24 initWithArray_];

  v27 = [v26 array];
  v28 = sub_1D28783E8();

  v38 = MEMORY[0x1E69E7CC0];
  v29 = *(v28 + 16);
  if (v29)
  {
    v30 = v28 + 32;
    v31 = MEMORY[0x1E69E7CC0];
    do
    {
      sub_1D23C3EE4(v30, v0 + 16);
      sub_1D23C3FAC((v0 + 16), (v0 + 48));
      sub_1D22BCFD0(0, &qword_1ED89CC40);
      if ((swift_dynamicCast() & 1) != 0 && *(v0 + 88))
      {
        MEMORY[0x1D38A0E30]();
        if (*((v38 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v38 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1D2878428();
        }

        sub_1D2878488();
        v31 = v38;
      }

      v30 += 32;
      --v29;
    }

    while (v29);
  }

  else
  {

    v31 = MEMORY[0x1E69E7CC0];
  }

  *(v0 + 136) = v31;
  *(v0 + 80) = v31;
  v32 = swift_task_alloc();
  *(v0 + 144) = v32;
  *v32 = v0;
  v32[1] = sub_1D2868E30;
  v33 = *(v0 + 104);

  return sub_1D2867170(v33);
}

uint64_t sub_1D2868E30(uint64_t a1)
{
  *(*v1 + 152) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D2868F30, 0, 0);
}

uint64_t sub_1D2868F30()
{
  v1 = (v0 + 17);
  v27 = v0[19];
  if (v27)
  {
    v2 = *v1;
    v22 = v0 + 17;
    if (*v1 >> 62)
    {
LABEL_28:
      v25 = v2 & 0xFFFFFFFFFFFFFF8;
      v26 = sub_1D2879368();
      v3 = *v1;
    }

    else
    {
      v25 = v2 & 0xFFFFFFFFFFFFFF8;
      v26 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v3 = *v1;
    }

    v4 = 0;
    v5 = v2 & 0xC000000000000001;
    v2 = v3 + 32;
    while (v26 != v4)
    {
      if (v5)
      {
        v6 = MEMORY[0x1D38A1C30](v4, *v22);
      }

      else
      {
        if (v4 >= *(v25 + 16))
        {
          __break(1u);
LABEL_27:
          __break(1u);
          goto LABEL_28;
        }

        v6 = *(v2 + 8 * v4);
      }

      v7 = v6;
      v8 = [v6 localIdentifier];
      v9 = sub_1D28780A8();
      v11 = v10;

      v12 = [v27 localIdentifier];
      v13 = sub_1D28780A8();
      v15 = v14;

      if (v9 == v13 && v11 == v15)
      {

LABEL_20:
        break;
      }

      v1 = sub_1D2879618();

      if (v1)
      {
        goto LABEL_20;
      }

      if (__OFADD__(v4++, 1))
      {
        goto LABEL_27;
      }
    }

    v18 = v24;
    if (*v24 >> 62)
    {
      result = sub_1D2879368();
      if (result < 0)
      {
        __break(1u);
        return result;
      }
    }

    sub_1D278DFCC(0, 0, v27);

    v0 = v23;
  }

  else
  {
    v18 = v0 + 17;
  }

  v19 = *v18;

  v20 = v0[1];

  return v20(v19);
}

uint64_t sub_1D2869178(void **__src, void **__dst, void **a3, char *a4, uint64_t (*a5)(void *, void *))
{
  v51 = a5;
  v5 = a3;
  v6 = __dst;
  v7 = __src;
  v8 = __dst - __src;
  v9 = __dst - __src + 7;
  if (__dst - __src >= 0)
  {
    v9 = __dst - __src;
  }

  v10 = v9 >> 3;
  v11 = a3 - __dst;
  v12 = a3 - __dst + 7;
  if (a3 - __dst >= 0)
  {
    v12 = a3 - __dst;
  }

  v13 = v12 >> 3;
  if (v10 >= v12 >> 3)
  {
    if (a4 != __dst || &__dst[v13] <= a4)
    {
      v27 = a4;
      memmove(a4, __dst, 8 * v13);
      v6 = __dst;
      a4 = v27;
    }

    v46 = a4;
    v16 = &a4[8 * v13];
    if (v11 < 8)
    {
      v14 = a4;
      v40 = v6;
      goto LABEL_40;
    }

    v29 = v6;
    v14 = a4;
    if (v6 <= v7)
    {
      v40 = v6;
      goto LABEL_40;
    }

    v42 = v7;
    v44 = sub_1D22BCFD0(0, &qword_1ED89CC40);
    do
    {
      v43 = v29;
      v30 = v29 - 1;
      --v5;
      v31 = v16;
      while (1)
      {
        v32 = *--v31;
        v33 = (v5 + 1);
        v7 = v30;
        v34 = *v30;
        v50 = v44;
        v48 = v44;
        v49[0] = v32;
        v47[0] = v34;
        v35 = v32;
        v36 = v34;
        v37 = v35;
        v38 = v36;
        v39 = v51(v49, v47);
        __swift_destroy_boxed_opaque_existential_0(v47);
        __swift_destroy_boxed_opaque_existential_0(v49);

        if (v39 == -1)
        {
          break;
        }

        if (v33 != v16)
        {
          *v5 = *v31;
        }

        --v5;
        v16 = v31;
        v14 = v46;
        v30 = v7;
        if (v31 <= v46)
        {
          v16 = v31;
          v40 = v43;
          goto LABEL_40;
        }
      }

      if (v33 != v43)
      {
        *v5 = *v7;
      }

      v14 = v46;
      if (v16 <= v46)
      {
        break;
      }

      v29 = v7;
    }

    while (v7 > v42);
  }

  else
  {
    v14 = a4;
    if (a4 != __src || &__src[v10] <= a4)
    {
      memmove(a4, __src, 8 * v10);
      v6 = __dst;
    }

    v16 = &v14[v10];
    if (v8 >= 8 && v6 < v5)
    {
      v17 = v6;
      v45 = sub_1D22BCFD0(0, &qword_1ED89CC40);
      while (1)
      {
        v18 = *v17;
        v19 = *v14;
        v50 = v45;
        v48 = v45;
        v49[0] = v18;
        v47[0] = v19;
        v20 = v18;
        v21 = v19;
        v22 = v20;
        v23 = v21;
        v24 = v51(v49, v47);
        __swift_destroy_boxed_opaque_existential_0(v47);
        __swift_destroy_boxed_opaque_existential_0(v49);

        if (v24 != -1)
        {
          break;
        }

        v25 = v17;
        v26 = v7 == v17++;
        if (!v26)
        {
          goto LABEL_14;
        }

LABEL_15:
        ++v7;
        if (v14 >= v16 || v17 >= v5)
        {
          goto LABEL_36;
        }
      }

      v25 = v14;
      v26 = v7 == v14++;
      if (v26)
      {
        goto LABEL_15;
      }

LABEL_14:
      *v7 = *v25;
      goto LABEL_15;
    }
  }

LABEL_36:
  v40 = v7;
LABEL_40:
  if (v40 != v14 || v40 >= (v14 + ((v16 - v14 + (v16 - v14 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v40, v14, 8 * ((v16 - v14) / 8));
  }

  return 1;
}

uint64_t sub_1D28694E4(void **a1, char *a2, uint64_t *a3, uint64_t (*a4)(void *, void *))
{
  v5 = v4;
  v6 = a1;
  v7 = *a1;
  sub_1D2870F78();
  v25 = v7;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_15:
    v25 = sub_1D269163C(v25);
  }

  v21 = v6;
  *v6 = v25;
  v8 = v25 + 16;
  v9 = *(v25 + 2);
  if (v9 < 2)
  {
LABEL_9:

    *v21 = v25;
    return 1;
  }

  else
  {
    while (1)
    {
      v10 = *a3;
      if (!*a3)
      {
        break;
      }

      v11 = v5;
      v12 = &v25[16 * v9];
      v13 = *v12;
      v14 = v8;
      v15 = &v8[16 * v9];
      v16 = *(v15 + 1);
      __src = (v10 + 8 * *v12);
      v17 = (v10 + 8 * *v15);
      v6 = (v10 + 8 * v16);
      sub_1D2870F78();
      sub_1D2869178(__src, v17, v6, a2, a4);
      v5 = v11;

      if (v11)
      {
        *v21 = v25;

        return 1;
      }

      if (v16 < v13)
      {
        __break(1u);
LABEL_13:
        __break(1u);
LABEL_14:
        __break(1u);
        goto LABEL_15;
      }

      v18 = *v14;
      if (v9 - 2 >= *v14)
      {
        goto LABEL_13;
      }

      *v12 = v13;
      *(v12 + 1) = v16;
      v19 = v18 - v9;
      if (v18 < v9)
      {
        goto LABEL_14;
      }

      v8 = v14;
      v9 = v18 - 1;
      memmove(v15, v15 + 16, 16 * v19);
      *v14 = v9;
      if (v9 <= 1)
      {
        goto LABEL_9;
      }
    }

    *v21 = v25;
    __break(1u);
  }

  return result;
}

uint64_t sub_1D286968C(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(void *, void *))
{
  v6 = v5;
  v131 = MEMORY[0x1E69E7CC0];
  v7 = a3[1];
  if (v7 >= 1)
  {
    swift_retain_n();
    v8 = 0;
    v9 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v10 = v8;
      v11 = v8 + 1;
      if (v8 + 1 < v7)
      {
        v112 = v6;
        v12 = *(*a3 + 8 * v11);
        v13 = 8 * v8;
        v14 = (*a3 + 8 * v8);
        v16 = *v14;
        v15 = v14 + 2;
        v115 = v8;
        v17 = sub_1D22BCFD0(0, &qword_1ED89CC40);
        v130 = v17;
        v129[0] = v12;
        v128 = v17;
        v127[0] = v16;
        v18 = v12;
        v19 = v16;
        v20 = v18;
        v21 = v19;
        v122 = a5(v129, v127);
        __swift_destroy_boxed_opaque_existential_0(v127);
        __swift_destroy_boxed_opaque_existential_0(v129);

        v22 = v115 + 2;
        while (1)
        {
          v23 = v7;
          if (v7 == v22)
          {
            break;
          }

          v25 = *(v15 - 1);
          v24 = *v15;
          v130 = v17;
          v129[0] = v24;
          v128 = v17;
          v127[0] = v25;
          v26 = v24;
          v27 = v25;
          v28 = v26;
          v29 = v27;
          v30 = a5(v129, v127);
          __swift_destroy_boxed_opaque_existential_0(v127);
          __swift_destroy_boxed_opaque_existential_0(v129);

          ++v22;
          ++v15;
          if ((v122 == -1) == (v30 != -1))
          {
            v23 = v22 - 1;
            break;
          }
        }

        v6 = v112;
        v10 = v115;
        if (v122 == -1)
        {
          if (v23 < v115)
          {
            goto LABEL_119;
          }

          if (v115 < v23)
          {
            v31 = 8 * v23 - 8;
            v32 = v23;
            v33 = v115;
            do
            {
              if (v33 != --v32)
              {
                v35 = *a3;
                if (!*a3)
                {
                  goto LABEL_122;
                }

                v34 = *(v35 + v13);
                *(v35 + v13) = *(v35 + v31);
                *(v35 + v31) = v34;
              }

              ++v33;
              v31 -= 8;
              v13 += 8;
            }

            while (v33 < v32);
          }
        }

        v11 = v23;
      }

      v36 = a3[1];
      if (v11 < v36)
      {
        v37 = v11;
        v56 = __OFSUB__(v11, v10);
        v38 = v11 - v10;
        if (v56)
        {
          goto LABEL_116;
        }

        if (v38 < a4)
        {
          if (__OFADD__(v10, a4))
          {
            goto LABEL_117;
          }

          if (v10 + a4 >= v36)
          {
            v39 = a3[1];
          }

          else
          {
            v39 = v10 + a4;
          }

          if (v39 < v10)
          {
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
            goto LABEL_124;
          }

          if (v37 != v39)
          {
            v113 = v6;
            v94 = *a3;
            v95 = sub_1D22BCFD0(0, &qword_1ED89CC40);
            v96 = v94 + 8 * v37 - 8;
            v97 = v37;
            v116 = v10;
            v118 = v39;
            v98 = v10 - v37;
            do
            {
              v124 = v97;
              v99 = *(v94 + 8 * v97);
              v100 = v98;
              v120 = v96;
              do
              {
                v101 = *v96;
                v130 = v95;
                v129[0] = v99;
                v128 = v95;
                v127[0] = v101;
                v102 = v99;
                v103 = v101;
                v104 = v102;
                v105 = v103;
                v106 = a5(v129, v127);
                __swift_destroy_boxed_opaque_existential_0(v127);
                __swift_destroy_boxed_opaque_existential_0(v129);

                if (v106 != -1)
                {
                  break;
                }

                if (!v94)
                {
                  goto LABEL_120;
                }

                v107 = *v96;
                v99 = *(v96 + 8);
                *v96 = v99;
                *(v96 + 8) = v107;
                v96 -= 8;
              }

              while (!__CFADD__(v100++, 1));
              v97 = v124 + 1;
              v96 = v120 + 8;
              --v98;
            }

            while (v124 + 1 != v118);
            v11 = v118;
            v6 = v113;
            v10 = v116;
            if (v118 < v116)
            {
              goto LABEL_115;
            }

            goto LABEL_30;
          }
        }

        v11 = v37;
      }

      if (v11 < v10)
      {
        goto LABEL_115;
      }

LABEL_30:
      v123 = v11;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v9 = sub_1D2691650(0, *(v9 + 2) + 1, 1, v9);
      }

      v41 = *(v9 + 2);
      v40 = *(v9 + 3);
      v42 = v41 + 1;
      if (v41 >= v40 >> 1)
      {
        v9 = sub_1D2691650((v40 > 1), v41 + 1, 1, v9);
      }

      *(v9 + 2) = v42;
      v43 = v9 + 32;
      v44 = &v9[16 * v41 + 32];
      *v44 = v10;
      *(v44 + 1) = v123;
      v119 = *a1;
      if (!*a1)
      {
        goto LABEL_123;
      }

      if (v41)
      {
        v117 = v9 + 32;
        v121 = v9;
        while (1)
        {
          v45 = v42 - 1;
          if (v42 >= 4)
          {
            break;
          }

          if (v42 == 3)
          {
            v46 = *(v9 + 4);
            v47 = *(v9 + 5);
            v56 = __OFSUB__(v47, v46);
            v48 = v47 - v46;
            v49 = v56;
LABEL_50:
            if (v49)
            {
              goto LABEL_105;
            }

            v62 = &v9[16 * v42];
            v64 = *v62;
            v63 = *(v62 + 1);
            v65 = __OFSUB__(v63, v64);
            v66 = v63 - v64;
            v67 = v65;
            if (v65)
            {
              goto LABEL_107;
            }

            v68 = &v43[16 * v45];
            v70 = *v68;
            v69 = *(v68 + 1);
            v56 = __OFSUB__(v69, v70);
            v71 = v69 - v70;
            if (v56)
            {
              goto LABEL_110;
            }

            if (__OFADD__(v66, v71))
            {
              goto LABEL_112;
            }

            if (v66 + v71 >= v48)
            {
              if (v48 < v71)
              {
                v45 = v42 - 2;
              }

              goto LABEL_72;
            }

            goto LABEL_65;
          }

          if (v42 < 2)
          {
            goto LABEL_113;
          }

          v72 = &v9[16 * v42];
          v74 = *v72;
          v73 = *(v72 + 1);
          v56 = __OFSUB__(v73, v74);
          v66 = v73 - v74;
          v67 = v56;
LABEL_65:
          if (v67)
          {
            goto LABEL_109;
          }

          v75 = &v43[16 * v45];
          v77 = *v75;
          v76 = *(v75 + 1);
          v56 = __OFSUB__(v76, v77);
          v78 = v76 - v77;
          if (v56)
          {
            goto LABEL_111;
          }

          if (v78 < v66)
          {
            goto LABEL_3;
          }

LABEL_72:
          if (v45 - 1 >= v42)
          {
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
            goto LABEL_118;
          }

          v83 = *a3;
          if (!*a3)
          {
            goto LABEL_121;
          }

          v84 = v6;
          v85 = &v43[16 * v45 - 16];
          v86 = *v85;
          v87 = v45;
          v88 = &v43[16 * v45];
          v89 = *(v88 + 1);
          v90 = (v83 + 8 * *v85);
          v91 = (v83 + 8 * *v88);
          v92 = (v83 + 8 * v89);
          sub_1D2870F78();
          sub_1D2869178(v90, v91, v92, v119, a5);
          v6 = v84;
          if (v84)
          {

            v131 = v121;
            goto LABEL_95;
          }

          v9 = v121;
          if (v89 < v86)
          {
            goto LABEL_100;
          }

          v93 = *(v121 + 2);
          if (v87 > v93)
          {
            goto LABEL_101;
          }

          *v85 = v86;
          *(v85 + 1) = v89;
          if (v87 >= v93)
          {
            goto LABEL_102;
          }

          v42 = v93 - 1;
          memmove(v88, v88 + 16, 16 * (v93 - 1 - v87));
          *(v121 + 2) = v93 - 1;
          v43 = v117;
          if (v93 <= 2)
          {
            goto LABEL_3;
          }
        }

        v50 = &v43[16 * v42];
        v51 = *(v50 - 8);
        v52 = *(v50 - 7);
        v56 = __OFSUB__(v52, v51);
        v53 = v52 - v51;
        if (v56)
        {
          goto LABEL_103;
        }

        v55 = *(v50 - 6);
        v54 = *(v50 - 5);
        v56 = __OFSUB__(v54, v55);
        v48 = v54 - v55;
        v49 = v56;
        if (v56)
        {
          goto LABEL_104;
        }

        v57 = &v9[16 * v42];
        v59 = *v57;
        v58 = *(v57 + 1);
        v56 = __OFSUB__(v58, v59);
        v60 = v58 - v59;
        if (v56)
        {
          goto LABEL_106;
        }

        v56 = __OFADD__(v48, v60);
        v61 = v48 + v60;
        if (v56)
        {
          goto LABEL_108;
        }

        if (v61 >= v53)
        {
          v79 = &v43[16 * v45];
          v81 = *v79;
          v80 = *(v79 + 1);
          v56 = __OFSUB__(v80, v81);
          v82 = v80 - v81;
          if (v56)
          {
            goto LABEL_114;
          }

          if (v48 < v82)
          {
            v45 = v42 - 2;
          }

          goto LABEL_72;
        }

        goto LABEL_50;
      }

LABEL_3:
      v8 = v123;
      v7 = a3[1];
      if (v123 >= v7)
      {
        v131 = v9;
        goto LABEL_92;
      }
    }
  }

  swift_retain_n();
LABEL_92:
  v109 = *a1;
  if (*a1)
  {
    sub_1D2870F78();
    sub_1D28694E4(&v131, v109, a3, a5);
    if (v6)
    {

LABEL_95:
    }

    else
    {
    }
  }

  else
  {
LABEL_124:

    __break(1u);
  }

  return result;
}

void sub_1D2869DFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t (*a5)(void *, void *))
{
  if (a3 != a2)
  {
    v6 = a3;
    v8 = *a4;
    v9 = sub_1D22BCFD0(0, &qword_1ED89CC40);
    v10 = v8 + 8 * v6 - 8;
    v11 = a1 - v6;
LABEL_5:
    v27 = v6;
    v12 = *(v8 + 8 * v6);
    v23 = v11;
    v24 = v10;
    v13 = v10;
    while (1)
    {
      v14 = *v13;
      v26[3] = v9;
      v25[3] = v9;
      v26[0] = v12;
      v25[0] = v14;
      v15 = v12;
      v16 = v14;
      v17 = v15;
      v18 = v16;
      v19 = a5(v26, v25);
      __swift_destroy_boxed_opaque_existential_0(v25);
      __swift_destroy_boxed_opaque_existential_0(v26);

      if (v19 != -1)
      {
LABEL_4:
        v6 = v27 + 1;
        v10 = v24 + 8;
        v11 = v23 - 1;
        if (v27 + 1 == a2)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v8)
      {
        break;
      }

      v20 = *v13;
      v12 = *(v13 + 8);
      *v13 = v12;
      *(v13 + 8) = v20;
      v13 -= 8;
      if (__CFADD__(v11++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

uint64_t sub_1D2869F40(uint64_t *a1, uint64_t (*a2)(void *, void *))
{
  v4 = a1[1];
  swift_retain_n();
  result = sub_1D28795B8();
  if (result < v4)
  {
    if (v4 >= -1)
    {
      v6 = result;
      v7 = v4 / 2;
      if (v4 <= 1)
      {
        v8 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        sub_1D22BCFD0(0, &qword_1ED89CC40);
        v8 = sub_1D2878468();
        *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) = v7;
      }

      v9[0] = ((v8 & 0xFFFFFFFFFFFFFF8) + 32);
      v9[1] = v7;
      sub_1D2870F78();
      sub_1D286968C(v9, v10, a1, v6, a2);

      *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v4 < 0)
  {
    goto LABEL_12;
  }

  if (v4)
  {
    sub_1D2870F78();
    sub_1D2869DFC(0, v4, 1, a1, a2);
  }
}

uint64_t sub_1D286A0B8(uint64_t *a1, uint64_t (*a2)(void *, void *))
{
  v4 = *a1;
  swift_retain_n();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v4;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v4 = sub_1D287015C(v4);
    *a1 = v4;
  }

  v6 = *(v4 + 16);
  v8[0] = v4 + 32;
  v8[1] = v6;
  sub_1D2870F78();
  sub_1D2869F40(v8, a2);

  sub_1D2879238();
}

uint64_t sub_1D286A174(void *a1, uint64_t a2)
{
  v2 = MEMORY[0x1E69E7CC0];
  if (a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v2;
    v6 = swift_allocObject();
    *(v6 + 16) = a2;
    *(v6 + 24) = v5;
    aBlock[4] = sub_1D286C100;
    aBlock[5] = v6;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1D23E9EDC;
    aBlock[3] = &block_descriptor_60;
    v7 = _Block_copy(aBlock);
    v8 = a1;
    sub_1D2870F68();
    sub_1D2870F78();

    [v8 enumerateObjectsUsingBlock_];
    _Block_release(v7);
    v9 = [objc_opt_self() comparatorByPeopleHomeSortingType_];
    *(swift_allocObject() + 16) = v9;
    swift_beginAccess();
    v10 = *(v5 + 16);
    swift_bridgeObjectRetain_n();
    sub_1D2870F78();
    v12 = sub_1D25819B0(v10);
    sub_1D286A0B8(&v12, sub_1D286C120);

    return v12;
  }

  return v2;
}

uint64_t sub_1D286A380(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 840) = a7;
  *(v7 + 832) = a6;
  *(v7 + 824) = a5;
  *(v7 + 816) = a4;
  *(v7 + 808) = a3;
  *(v7 + 281) = a2;
  *(v7 + 800) = a1;
  v8 = sub_1D2873CB8();
  *(v7 + 848) = v8;
  *(v7 + 856) = *(v8 - 8);
  *(v7 + 864) = swift_task_alloc();
  *(v7 + 872) = swift_task_alloc();
  *(v7 + 880) = *(type metadata accessor for CharacterAsset() - 8);
  *(v7 + 888) = swift_task_alloc();
  *(v7 + 896) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D286A4C8, 0, 0);
}

uint64_t sub_1D286A4C8()
{
  v1 = v0[103];
  if (!v1)
  {
    sub_1D2872528();
    v4 = sub_1D2873CA8();
    v5 = sub_1D2878A18();
    v6 = os_log_type_enabled(v4, v5);
    v7 = v0[108];
    v8 = v0[107];
    v9 = v0[106];
    if (v6)
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_1D226E000, v4, v5, "Failed to access user's photo library while fetching persons", v10, 2u);
      MEMORY[0x1D38A3520](v10, -1, -1);
    }

    (*(v8 + 8))(v7, v9);
    v11 = 0;
    v12 = 0;
    goto LABEL_48;
  }

  v56 = v0[103];
  if (v0[104])
  {
    v2 = v1;
    v3 = sub_1D26217A0();
  }

  else
  {
    v13 = v1;
    v3 = MEMORY[0x1E69E7CC0];
  }

  v0[113] = v3;
  v14 = v0[101];
  v0[99] = v3;
  v15 = 0;
  v16 = sub_1D28645B8(v14, v0 + 99);
  v17 = v16;
  v0[114] = v16;
  v18 = MEMORY[0x1E69E7CC0];
  v59 = v3[2];
  if (v59)
  {
    v55 = v16;
    v19 = 0;
    v60 = v0;
    v57 = v0[110];
    v58 = v0 + 97;
    while (v19 < v3[2])
    {
      v0 = v60;
      v20 = v60[101];
      v21 = (*(v57 + 80) + 32) & ~*(v57 + 80);
      v22 = v3;
      v23 = v3 + v21;
      v24 = *(v57 + 72);
      sub_1D2626740(&v23[v24 * v19], v60[112]);
      v60[97] = CharacterAsset.id.getter();
      v60[98] = v25;
      v26 = swift_task_alloc();
      *(v26 + 16) = v58;
      LOBYTE(v20) = sub_1D286430C(sub_1D26783EC, v26, v20);

      v27 = v60[112];
      if (v20)
      {
        sub_1D286C034(v27);
      }

      else
      {
        sub_1D286BFD0(v27, v60[111]);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1D23D8938(0, *(v18 + 16) + 1, 1);
        }

        v29 = *(v18 + 16);
        v28 = *(v18 + 24);
        if (v29 >= v28 >> 1)
        {
          sub_1D23D8938(v28 > 1, v29 + 1, 1);
        }

        v30 = v60[111];
        *(v18 + 16) = v29 + 1;
        sub_1D286BFD0(v30, v18 + v21 + v29 * v24);
      }

      ++v19;
      v3 = v22;
      if (v59 == v19)
      {
        v0 = v60;
        v17 = v55;
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_53:
    v15 = sub_1D27CD3C4(0, v15[2] + 1, 1, v15);
    goto LABEL_24;
  }

LABEL_20:
  v0[115] = 0;
  v31 = sub_1D2679E34(v18);
  v0[116] = v31;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E39F8);
  v32 = swift_allocObject();
  v18 = v32;
  if (v17[2])
  {
    sub_1D22D7044((v17 + 4), (v0 + 54));
    sub_1D227268C(v0 + 27, v18 + 32);
  }

  else
  {
    v0[58] = 0;
    *(v0 + 27) = 0u;
    *(v0 + 28) = 0u;
    if (*(v31 + 16))
    {
      sub_1D22D7044(v31 + 32, v32 + 32);
      if (v0[57])
      {
        sub_1D22BD238((v0 + 54), &unk_1EC6E3A00);
      }
    }

    else
    {
      *(v32 + 64) = 0;
      *(v32 + 32) = 0uLL;
      *(v32 + 48) = 0uLL;
    }
  }

  sub_1D286C090(v18 + 32, (v0 + 59));
  v0[73] = v0[63];
  v33 = *(v0 + 61);
  *(v0 + 69) = *(v0 + 59);
  *(v0 + 71) = v33;
  if (!v0[72])
  {
    sub_1D22BD238((v0 + 69), &unk_1EC6E3A00);
    v15 = MEMORY[0x1E69E7CC0];
    goto LABEL_31;
  }

  sub_1D227268C((v0 + 69), (v0 + 64));
  v15 = MEMORY[0x1E69E7CC0];
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_53;
  }

LABEL_24:
  v35 = v15[2];
  v34 = v15[3];
  if (v35 >= v34 >> 1)
  {
    v15 = sub_1D27CD3C4((v34 > 1), v35 + 1, 1, v15);
  }

  v15[2] = v35 + 1;
  sub_1D227268C(v0 + 32, &v15[5 * v35 + 4]);
LABEL_31:
  v0[117] = v15;
  swift_setDeallocating();
  sub_1D22BD238(v18 + 32, &unk_1EC6E3A00);
  swift_deallocClassInstance();
  v36 = v56;
  if (sub_1D27D8C8C())
  {
    v0[87] = &type metadata for NotesFeatures;
    v0[88] = sub_1D22D7288();
    *(v0 + 672) = 0;
    v37 = sub_1D2871AA8();
    __swift_destroy_boxed_opaque_existential_0((v0 + 84));
    if ((v37 & 1) == 0)
    {
LABEL_33:

      sub_1D2872528();
      v38 = sub_1D2873CA8();
      v39 = sub_1D2878A18();
      if (os_log_type_enabled(v38, v39))
      {
        v40 = swift_slowAlloc();
        *v40 = 0;
        _os_log_impl(&dword_1D226E000, v38, v39, "Photos people are unavailable; either the system photo library is inaccessible, or people are disabled via debug settings and/or feature flags.", v40, 2u);
        MEMORY[0x1D38A3520](v40, -1, -1);
      }

      v41 = v0[109];
      v42 = v0[107];
      v43 = v0[106];

      (*(v42 + 8))(v41, v43);
      v44 = v15[2];
      if (v44)
      {
        v61 = MEMORY[0x1E69E7CC0];
        sub_1D23D88A0(0, v44, 0);
        v11 = v61;
        v45 = (v15 + 4);
        do
        {
          sub_1D22D7044(v45, (v0 + 30));
          *(v0 + 280) = 0;
          v47 = *(v61 + 16);
          v46 = *(v61 + 24);
          if (v47 >= v46 >> 1)
          {
            sub_1D23D88A0((v46 > 1), v47 + 1, 1);
          }

          *(v61 + 16) = v47 + 1;
          v48 = (v61 + 48 * v47);
          v49 = *(v0 + 15);
          v50 = *(v0 + 16);
          *(v48 + 57) = *(v0 + 265);
          v48[2] = v49;
          v48[3] = v50;
          v45 += 40;
          --v44;
        }

        while (v44);
      }

      else
      {

        v11 = MEMORY[0x1E69E7CC0];
      }

      v12 = MEMORY[0x1E69E7CC0];
LABEL_48:

      v54 = v0[1];

      return v54(v11, v12);
    }
  }

  else if (qword_1ED8A4928 == -1)
  {
    if ((sub_1D23CD0E4() & 1) == 0)
    {
      goto LABEL_33;
    }
  }

  else
  {
    swift_once();
    if ((sub_1D23CD0E4() & 1) == 0)
    {
      goto LABEL_33;
    }
  }

  v51 = swift_task_alloc();
  v0[118] = v51;
  *v51 = v0;
  v51[1] = sub_1D286AC38;
  v52 = v0[102];

  return sub_1D2868958(v52, v36);
}

uint64_t sub_1D286AC38(uint64_t a1)
{
  *(*v1 + 952) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D286AD38, 0, 0);
}

id sub_1D286AD38()
{
  v145 = v0;
  v6 = v0[119];
  if (v6 >> 62)
  {
    goto LABEL_63;
  }

  v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  if (v7)
  {
    v139 = MEMORY[0x1E69E7CC0];
    sub_1D23D8918(0, v7 & ~(v7 >> 63), 0);
    if (v7 < 0)
    {
      goto LABEL_136;
    }

    v9 = 0;
    v10 = v139;
    i = v6 & 0xC000000000000001;
    v2 = v6 & 0xFFFFFFFFFFFFFF8;
    v3 = v0[119] + 32;
    v6 = v0[115];
    v4 = v7 - 1;
    while (1)
    {
      if (i)
      {
        v11 = v10;
        v12 = MEMORY[0x1D38A1C30](v9, v0[119]);
      }

      else
      {
        if (v9 >= *(v2 + 16))
        {
          goto LABEL_61;
        }

        v11 = v10;
        v12 = *(v3 + 8 * v9);
      }

      v13 = v12;
      v14 = v0[105];
      v143 = v12;
      sub_1D2864A30(&v143, v14, &v140);

      v10 = v11;
      v5 = *(v11 + 16);
      v15 = *(v11 + 24);
      if (v5 >= v15 >> 1)
      {
        sub_1D23D8918((v15 > 1), v5 + 1, 1);
        v10 = v11;
      }

      *(v10 + 16) = v5 + 1;
      v16 = (v10 + (v5 << 6));
      v17 = v140;
      v18 = *v141;
      v19 = v142;
      v16[4] = *&v141[16];
      v16[5] = v19;
      v16[2] = v17;
      v16[3] = v18;
      if (v4 == v9)
      {
        break;
      }

      if (__OFADD__(++v9, 1))
      {
        goto LABEL_60;
      }
    }

    v20 = v10;

    v22 = v20;
  }

  else
  {

    v6 = v0[115];
    v22 = MEMORY[0x1E69E7CC0];
  }

  v137 = v22;
  v23 = *(v22 + 16);
  v124 = v23;
  if (*(v0 + 281))
  {
    v3 = v0[100];
  }

  else
  {
    v24 = v0[100];
    v25 = *(v0[113] + 16);
    v26 = __OFSUB__(v24, v25);
    v27 = v24 - v25;
    if (v26)
    {
      __break(1u);
LABEL_141:
      __break(1u);
      goto LABEL_142;
    }

    v3 = v27 - v23;
    if (__OFSUB__(v27, v23))
    {
LABEL_142:
      __break(1u);
      return result;
    }
  }

  v5 = [v0[103] librarySpecificFetchOptions];
  v4 = objc_opt_self();
  v28 = [v4 sortDescriptorsForManualSort];
  if (!v28)
  {
    sub_1D22BCFD0(0, &qword_1EC6DF7E8);
    sub_1D28783E8();
    v28 = sub_1D28783C8();
  }

  v29 = *(v0 + 281);
  [v5 setSortDescriptors_];

  [v5 setPersonContext_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6E3A10);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_1D28809B0;
  *(v30 + 32) = sub_1D2879798();
  v2 = sub_1D22BCFD0(0, &qword_1ED89CC58);
  v31 = sub_1D28783C8();

  [v5 setIncludedDetectionTypes_];

  [v5 setPredicate_];
  if ((v29 & 1) == 0)
  {
    [v5 setFetchLimit_];
  }

  v32 = *(v0 + 281);
  v33 = objc_opt_self();
  v34 = [v33 fetchPersonsWithType:1 options:v5];

  v123 = v34;
  if (v32)
  {
    v3 = [v0[103] librarySpecificFetchOptions];
    v35 = [v4 sortDescriptorsForManualSort];
    if (!v35)
    {
      sub_1D22BCFD0(0, &qword_1EC6DF7E8);
      v4 = sub_1D28783E8();
      v35 = sub_1D28783C8();
    }

    [v3 setSortDescriptors_];

    [v3 setPersonContext_];
    v36 = swift_allocObject();
    *(v36 + 16) = xmmword_1D28809B0;
    *(v36 + 32) = sub_1D2879798();
    v37 = sub_1D28783C8();

    [v3 setIncludedDetectionTypes_];

    [v3 setPredicate_];
    goto LABEL_35;
  }

  result = [v34 count];
  v38 = v3 - result;
  if (__OFSUB__(v3, result))
  {
    goto LABEL_141;
  }

  if (v38 < 1)
  {
    v125 = 0;
    goto LABEL_36;
  }

  v3 = [v0[103] librarySpecificFetchOptions];
  v4 = [v4 sortDescriptorsForManualSort];
  if (!v4)
  {
    sub_1D22BCFD0(0, &qword_1EC6DF7E8);
    v5 = sub_1D28783E8();
    v4 = sub_1D28783C8();
  }

  [v3 setSortDescriptors_];

  [v3 setPersonContext_];
  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_1D28809B0;
  *(v39 + 32) = sub_1D2879798();
  v2 = sub_1D28783C8();

  [v3 setIncludedDetectionTypes_];

  [v3 setPredicate_];
  [v3 setFetchLimit_];
LABEL_35:
  v40 = [v33 fetchPersonsWithType:0 options:v3];

  v125 = v40;
  v41 = v40;
LABEL_36:
  v7 = 0;
  v119 = (v0 + 36);
  v129 = (v0 + 42);
  v126 = (v0 + 48);
  i = MEMORY[0x1E69E7CC0];
  *&v140 = MEMORY[0x1E69E7CC0];
LABEL_37:
  v42 = (v7 << 6) + 88;
  while (v124 != v7)
  {
    if (v7 >= *(v137 + 16))
    {
      __break(1u);
LABEL_59:
      __break(1u);
LABEL_60:
      __break(1u);
LABEL_61:
      __break(1u);
LABEL_62:
      __break(1u);
LABEL_63:
      v7 = sub_1D2879368();
      goto LABEL_3;
    }

    v43 = *(v137 + v42);
    v42 += 64;
    ++v7;
    if (v43)
    {
      v44 = v43;
      MEMORY[0x1D38A0E30]();
      if (*((v140 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v140 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1D2878428();
      }

      sub_1D2878488();
      i = v140;
      goto LABEL_37;
    }
  }

  v122 = v123;
  v45 = sub_1D286A174(v123, i);
  v2 = v45;
  v138 = v0;
  if (v45 >> 62)
  {
    v4 = sub_1D2879368();
    if (v4)
    {
LABEL_46:
      v143 = MEMORY[0x1E69E7CC0];
      sub_1D23D88D8(0, v4 & ~(v4 >> 63), 0);
      if (v4 < 0)
      {
        goto LABEL_137;
      }

      v120 = i;
      v7 = 0;
      v46 = v143;
      v132 = v2;
      v134 = v2 & 0xC000000000000001;
      v127 = v2 & 0xFFFFFFFFFFFFFF8;
      v130 = v4;
      do
      {
        v3 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          goto LABEL_59;
        }

        if (v134)
        {
          v47 = MEMORY[0x1D38A1C30](v7, v2);
        }

        else
        {
          if (v7 >= *(v127 + 16))
          {
            goto LABEL_62;
          }

          v47 = *(v2 + 8 * v7 + 32);
        }

        v48 = v47;
        v0 = v138;
        v49 = v138[105];
        *&v140 = v47;
        sub_1D2864E98(&v140, v49, "Logging fetched person (favorite) with name: %s, UUID: %s", v138 + 74);

        v143 = v46;
        v5 = v46[2];
        v50 = v46[3];
        if (v5 >= v50 >> 1)
        {
          sub_1D23D88D8((v50 > 1), v5 + 1, 1);
        }

        v51 = v138[77];
        v52 = v138[78];
        v53 = __swift_mutable_project_boxed_opaque_existential_1((v138 + 74), v51);
        v54 = *(v51 - 8);
        v55 = swift_task_alloc();
        v56 = *(v54 + 16);
        i = v54 + 16;
        v56(v55, v53, v51);
        sub_1D2564390(v5, v55, &v143, v51, v52);
        __swift_destroy_boxed_opaque_existential_0((v138 + 74));

        v46 = v143;
        ++v7;
        v4 = v130;
        v2 = v132;
      }

      while (v3 != v130);

      i = v120;
      v0 = v138;
      goto LABEL_66;
    }
  }

  else
  {
    v4 = *((v45 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
      goto LABEL_46;
    }
  }

  v46 = MEMORY[0x1E69E7CC0];
LABEL_66:
  v2 = sub_1D286A174(v125, i);

  v121 = v46;
  if (v2 >> 62)
  {
    goto LABEL_81;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1D2879368())
  {
    v143 = MEMORY[0x1E69E7CC0];
    sub_1D23D88D8(0, i & ~(i >> 63), 0);
    if ((i & 0x8000000000000000) != 0)
    {
      goto LABEL_138;
    }

    v5 = 0;
    v7 = v143;
    v133 = v2;
    v135 = v2 & 0xC000000000000001;
    v128 = v2 & 0xFFFFFFFFFFFFFF8;
    v131 = i;
    while (1)
    {
      v3 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if (v135)
      {
        v57 = MEMORY[0x1D38A1C30](v5, v2);
      }

      else
      {
        if (v5 >= *(v128 + 16))
        {
          goto LABEL_80;
        }

        v57 = *(v2 + 8 * v5 + 32);
      }

      v58 = v57;
      v0 = v138;
      v59 = v138[105];
      *&v140 = v57;
      sub_1D2864E98(&v140, v59, "Logging fetched person (ordinary) with name: %s, UUID: %s", v138 + 79);

      v143 = v7;
      v4 = *(v7 + 16);
      v60 = *(v7 + 24);
      if (v4 >= v60 >> 1)
      {
        sub_1D23D88D8((v60 > 1), v4 + 1, 1);
      }

      v61 = v138[82];
      v62 = v138[83];
      v63 = __swift_mutable_project_boxed_opaque_existential_1((v138 + 79), v61);
      v64 = *(v61 - 8);
      v65 = swift_task_alloc();
      (*(v64 + 16))(v65, v63, v61);
      sub_1D2564390(v4, v65, &v143, v61, v62);
      __swift_destroy_boxed_opaque_existential_0((v138 + 79));

      v7 = v143;
      ++v5;
      i = v131;
      v2 = v133;
      if (v3 == v131)
      {

        v0 = v138;
        goto LABEL_83;
      }
    }

    __break(1u);
LABEL_80:
    __break(1u);
LABEL_81:
    ;
  }

  v7 = MEMORY[0x1E69E7CC0];
LABEL_83:
  v66 = v0[117];
  v67 = *(v66 + 16);
  if (v67)
  {
    *&v140 = MEMORY[0x1E69E7CC0];
    sub_1D23D88A0(0, v67, 0);
    v5 = v140;
    v68 = v66 + 32;
    v3 = 48;
    v69 = v119;
    do
    {
      sub_1D22D7044(v68, v69);
      *(v0 + 328) = 0;
      *&v140 = v5;
      i = *(v5 + 16);
      v70 = *(v5 + 24);
      v2 = i + 1;
      if (i >= v70 >> 1)
      {
        sub_1D23D88A0((v70 > 1), i + 1, 1);
        v69 = v119;
        v5 = v140;
      }

      *(v5 + 16) = v2;
      v71 = (v5 + 48 * i);
      v72 = *v69;
      v73 = v69[1];
      *(v71 + 57) = *(v69 + 25);
      v71[2] = v72;
      v71[3] = v73;
      v68 += 40;
      --v67;
    }

    while (v67);
  }

  else
  {

    v5 = MEMORY[0x1E69E7CC0];
  }

  v74 = *(v137 + 16);
  if (v74)
  {
    v143 = MEMORY[0x1E69E7CC0];
    sub_1D23D88A0(0, v74, 0);
    v75 = v137;
    v6 = v143;
    v76 = v74 - 1;
    for (j = 32; ; j += 64)
    {
      v78 = (v75 + j);
      v79 = *(v75 + j);
      v80 = *(v75 + j + 16);
      v81 = *(v75 + j + 48);
      *(v0 + 3) = *(v75 + j + 32);
      *(v0 + 4) = v81;
      *(v0 + 1) = v79;
      *(v0 + 2) = v80;
      v2 = swift_allocObject();
      v82 = v78[3];
      v84 = *v78;
      v83 = v78[1];
      *(v2 + 48) = v78[2];
      *(v2 + 64) = v82;
      *(v2 + 16) = v84;
      *(v2 + 32) = v83;
      sub_1D22D63B0((v0 + 2), (v0 + 10));
      v143 = v6;
      i = *(v6 + 16);
      v85 = *(v6 + 24);
      v3 = i + 1;
      if (i >= v85 >> 1)
      {
        sub_1D23D88A0((v85 > 1), i + 1, 1);
        v6 = v143;
      }

      *(v6 + 16) = v3;
      v86 = v6 + 48 * i;
      *(v86 + 32) = v2;
      *(v86 + 40) = v140;
      *(v86 + 56) = &type metadata for PhotosPerson;
      *(v86 + 64) = &off_1F4DCE508;
      *(v86 + 72) = 1;
      if (!v76)
      {
        break;
      }

      --v76;
      v75 = v137;
    }
  }

  else
  {

    v6 = MEMORY[0x1E69E7CC0];
  }

  *&v140 = v121;
  sub_1D274E700(v7);
  v7 = v140;
  v4 = *(v140 + 16);
  if (v4)
  {
    *&v140 = MEMORY[0x1E69E7CC0];
    sub_1D23D88A0(0, v4, 0);
    v8 = *(v7 + 16);
    v137 = v8;
    if (!v8)
    {
      goto LABEL_134;
    }

    v87 = v140;
    sub_1D22D7044(v7 + 32, (v0 + 19));
    v0[24] = 0;
    sub_1D227268C((v0 + 19), (v0 + 25));
    i = v129;
    sub_1D22D7044((v0 + 25), v129);
    *(v0 + 376) = v124 == 0;
    sub_1D22BD238((v0 + 24), &qword_1EC6E3A20);
    v3 = *(v87 + 16);
    v8 = *(v87 + 24);
    v2 = v3 + 1;
    if (v3 >= v8 >> 1)
    {
      goto LABEL_139;
    }

    while (1)
    {
      *(v87 + 16) = v2;
      v88 = (v87 + 48 * v3);
      v89 = *i;
      v90 = *(i + 16);
      *(v88 + 57) = *(i + 25);
      v88[2] = v89;
      v88[3] = v90;
      if (v4 == 1)
      {
        break;
      }

      v2 = v7 + 72;
      v3 = 1;
      v136 = v7;
      while (1)
      {
        v8 = v137;
        if (v137 == v3)
        {
          break;
        }

        v8 = *(v7 + 16);
        if (v3 >= v8)
        {
          goto LABEL_135;
        }

        sub_1D22D7044(v2, (v0 + 19));
        v0[24] = v3;
        sub_1D227268C((v0 + 19), (v0 + 25));
        v114 = v129;
        sub_1D22D7044((v0 + 25), v129);
        *(v0 + 376) = 0;
        sub_1D22BD238((v0 + 24), &qword_1EC6E3A20);
        *&v140 = v87;
        i = *(v87 + 16);
        v115 = *(v87 + 24);
        if (i >= v115 >> 1)
        {
          sub_1D23D88A0((v115 > 1), i + 1, 1);
          v114 = v129;
          v87 = v140;
        }

        ++v3;
        *(v87 + 16) = i + 1;
        v116 = (v87 + 48 * i);
        v117 = *v114;
        v118 = v114[1];
        *(v116 + 57) = *(v114 + 25);
        v116[2] = v117;
        v116[3] = v118;
        v2 += 40;
        v7 = v136;
        if (v4 == v3)
        {
          goto LABEL_102;
        }
      }

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
      sub_1D23D88A0((v8 > 1), v2, 1);
      v87 = v140;
    }

LABEL_102:
  }

  else
  {

    v87 = MEMORY[0x1E69E7CC0];
  }

  v144 = v5;
  sub_1D274E608(v6);
  sub_1D274E608(v87);
  sub_1D267A004(v144);

  v91 = objc_allocWithZone(MEMORY[0x1E695DFB8]);
  v92 = sub_1D28783C8();

  v93 = [v91 initWithArray_];

  v94 = [v93 array];
  v95 = sub_1D28783E8();

  v96 = *(v95 + 16);
  if (!v96)
  {

    v98 = MEMORY[0x1E69E7CC0];
    goto LABEL_118;
  }

  v97 = v95 + 32;
  v98 = MEMORY[0x1E69E7CC0];
  v99 = v126;
  do
  {
    sub_1D23C3EE4(v97, (v0 + 89));
    sub_1D23C3FAC(v0 + 89, v0 + 93);
    if ((swift_dynamicCast() & 1) == 0)
    {
      *(v99 + 25) = 0u;
      *v99 = 0u;
      v99[1] = 0u;
LABEL_107:
      sub_1D22BD238(v99, &qword_1EC6E3A28);
      goto LABEL_108;
    }

    if (!v0[51])
    {
      goto LABEL_107;
    }

    v100 = v99[1];
    v140 = *v99;
    *v141 = v100;
    *&v141[9] = *(v99 + 25);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v98 = sub_1D27CD3A8(0, *(v98 + 2) + 1, 1, v98);
    }

    v102 = *(v98 + 2);
    v101 = *(v98 + 3);
    if (v102 >= v101 >> 1)
    {
      v98 = sub_1D27CD3A8((v101 > 1), v102 + 1, 1, v98);
    }

    *(v98 + 2) = v102 + 1;
    v103 = &v98[48 * v102];
    v104 = v140;
    v105 = *v141;
    *(v103 + 57) = *&v141[9];
    *(v103 + 2) = v104;
    *(v103 + 3) = v105;
    v99 = v126;
LABEL_108:
    v97 += 32;
    --v96;
  }

  while (v96);

LABEL_118:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E3A30);
  v106 = swift_allocObject();
  v107 = 0;
  *(v106 + 32) = v123;
  *(v106 + 40) = v125;
  v108 = MEMORY[0x1E69E7CC0];
  *&v140 = MEMORY[0x1E69E7CC0];
  while (v107 != 2)
  {
    v109 = *(v106 + 8 * v107++ + 32);
    if (v109)
    {
      v110 = v109;
      MEMORY[0x1D38A0E30]();
      if (*((v140 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v140 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1D2878428();
      }

      sub_1D2878488();
      v108 = v140;
    }
  }

  v111 = v0[103];
  v112 = v108;

  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E3A38);
  swift_arrayDestroy();
  swift_deallocClassInstance();

  v113 = v0[1];

  return v113(v98, v112);
}

uint64_t sub_1D286BFD0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CharacterAsset();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D286C034(uint64_t a1)
{
  v2 = type metadata accessor for CharacterAsset();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D286C090(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6E3A00);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t block_copy_helper_60(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1D2870F78();
}

unint64_t sub_1D286C128()
{
  v1 = sub_1D23B8344(15);
  v2 = *(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal19AppearanceViewModel_firstRowAppearanceCellModels);
  v31 = v2 >> 62;
  if (v2 >> 62)
  {
    goto LABEL_70;
  }

  v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (1)
  {
    v0 = *(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal19AppearanceViewModel_secondRowAppearanceCellModels);
    v32 = v0 >> 62;
    if (v0 >> 62)
    {
      v30 = v1;
      v41 = sub_1D2879368();
      v1 = v30;
    }

    else
    {
      v41 = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v38 = v2;
    v39 = v0;
    v35 = v2 & 0xC000000000000001;
    v36 = v0 & 0xC000000000000001;
    v33 = (v2 + 32);
    v34 = (v0 + 32);
    v4 = MEMORY[0x1E69E7CC0];
    v40 = v3;
LABEL_6:
    v37 = v1;
    if (v3)
    {
      if (v3 < 1)
      {
        __break(1u);
        goto LABEL_69;
      }

      if (v35)
      {
        v5 = 0;
        do
        {
          v2 = MEMORY[0x1D38A1C30](v5, v38);
          swift_getKeyPath();
          v42 = v2;
          sub_1D28700CC(&qword_1EC6D83A8, type metadata accessor for AppearanceCellViewModel);
          sub_1D28719E8();

          v6 = *(v2 + OBJC_IVAR____TtC23ImagePlaygroundInternal23AppearanceCellViewModel__activeIndex);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v4 = sub_1D27CCD74(0, *(v4 + 2) + 1, 1, v4);
          }

          v8 = *(v4 + 2);
          v7 = *(v4 + 3);
          v0 = v8 + 1;
          if (v8 >= v7 >> 1)
          {
            v4 = sub_1D27CCD74((v7 > 1), v8 + 1, 1, v4);
          }

          ++v5;
          v1 = swift_unknownObjectRelease();
          *(v4 + 2) = v0;
          *&v4[8 * v8 + 32] = v6;
        }

        while (v40 != v5);
      }

      else
      {
        v9 = v33;
        do
        {
          v10 = *v9;
          swift_getKeyPath();
          v42 = v10;
          sub_1D28700CC(&qword_1EC6D83A8, type metadata accessor for AppearanceCellViewModel);
          sub_1D2870F78();
          sub_1D28719E8();

          v2 = *(v10 + OBJC_IVAR____TtC23ImagePlaygroundInternal23AppearanceCellViewModel__activeIndex);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v4 = sub_1D27CCD74(0, *(v4 + 2) + 1, 1, v4);
          }

          v12 = *(v4 + 2);
          v11 = *(v4 + 3);
          v0 = v12 + 1;
          if (v12 >= v11 >> 1)
          {
            v4 = sub_1D27CCD74((v11 > 1), v12 + 1, 1, v4);
          }

          *(v4 + 2) = v0;
          *&v4[8 * v12 + 32] = v2;
          ++v9;
          --v3;
        }

        while (v3);
      }
    }

    v13 = v41;
    if (!v41)
    {
      v0 = *(v4 + 2);
      goto LABEL_33;
    }

    if (v41 >= 1)
    {
      break;
    }

LABEL_69:
    __break(1u);
LABEL_70:
    v29 = v1;
    v3 = sub_1D2879368();
    v1 = v29;
  }

  if (v36)
  {
    v14 = 0;
    do
    {
      v2 = MEMORY[0x1D38A1C30](v14, v39);
      swift_getKeyPath();
      v42 = v2;
      sub_1D28700CC(&qword_1EC6D83A8, type metadata accessor for AppearanceCellViewModel);
      sub_1D28719E8();

      v15 = *(v2 + OBJC_IVAR____TtC23ImagePlaygroundInternal23AppearanceCellViewModel__activeIndex);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v4 = sub_1D27CCD74(0, *(v4 + 2) + 1, 1, v4);
      }

      v17 = *(v4 + 2);
      v16 = *(v4 + 3);
      v0 = v17 + 1;
      if (v17 >= v16 >> 1)
      {
        v4 = sub_1D27CCD74((v16 > 1), v17 + 1, 1, v4);
      }

      ++v14;
      swift_unknownObjectRelease();
      *(v4 + 2) = v0;
      *&v4[8 * v17 + 32] = v15;
    }

    while (v41 != v14);
  }

  else
  {
    v20 = v34;
    do
    {
      v21 = *v20;
      swift_getKeyPath();
      v42 = v21;
      sub_1D28700CC(&qword_1EC6D83A8, type metadata accessor for AppearanceCellViewModel);
      sub_1D2870F78();
      sub_1D28719E8();

      v2 = *(v21 + OBJC_IVAR____TtC23ImagePlaygroundInternal23AppearanceCellViewModel__activeIndex);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v4 = sub_1D27CCD74(0, *(v4 + 2) + 1, 1, v4);
      }

      v23 = *(v4 + 2);
      v22 = *(v4 + 3);
      v0 = v23 + 1;
      if (v23 >= v22 >> 1)
      {
        v4 = sub_1D27CCD74((v22 > 1), v23 + 1, 1, v4);
      }

      *(v4 + 2) = v0;
      *&v4[8 * v23 + 32] = v2;
      ++v20;
      --v13;
    }

    while (v13);
  }

LABEL_33:
  v18 = 32;
  while (v0)
  {
    v19 = *&v4[v18];
    v18 += 8;
    --v0;
    if (v19 == v37)
    {

      v42 = 0;
      MEMORY[0x1D38A3540](&v42, 8);
      v1 = (v42 * 0xFuLL) >> 64;
      v3 = v40;
      v4 = MEMORY[0x1E69E7CC0];
      if (16 * v42 == v42)
      {
        do
        {
          v42 = 0;
          MEMORY[0x1D38A3540](&v42, 8);
        }

        while (16 * v42 == v42);
        v1 = (v42 * 0xFuLL) >> 64;
      }

      goto LABEL_6;
    }
  }

  if (sub_1D23B8344(2))
  {
    if (!v32)
    {
      v24 = v39;
      result = *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_52;
    }

    v24 = v39;
    result = sub_1D2879368();
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
LABEL_52:
      if (result)
      {
        result = sub_1D23B8344(result);
        if (!v36)
        {
          if ((result & 0x8000000000000000) != 0)
          {
            __break(1u);
          }

          else if (result < *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            v26 = v34[result];
            sub_1D2870F78();
            goto LABEL_57;
          }

          __break(1u);
LABEL_77:
          __break(1u);
          goto LABEL_78;
        }

LABEL_74:
        v26 = MEMORY[0x1D38A1C30](result, v24);
LABEL_57:
        v27 = OBJC_IVAR____TtC23ImagePlaygroundInternal23AppearanceCellViewModel__activeIndex;
        if (*(v26 + OBJC_IVAR____TtC23ImagePlaygroundInternal23AppearanceCellViewModel__activeIndex) != v37)
        {
LABEL_67:
          KeyPath = swift_getKeyPath();
          MEMORY[0x1EEE9AC00](KeyPath);
          v42 = v26;
          sub_1D28700CC(&qword_1EC6D83A8, type metadata accessor for AppearanceCellViewModel);
          sub_1D28719D8();
        }

LABEL_66:
        sub_1D26294E0();
        *(v26 + v27) = v37;
      }
    }

    __break(1u);
    goto LABEL_74;
  }

  if (v31)
  {
    v24 = v38;
    result = sub_1D2879368();
    if ((result & 0x8000000000000000) != 0)
    {
      goto LABEL_77;
    }
  }

  else
  {
    v24 = v38;
    result = *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!result)
  {
LABEL_78:
    __break(1u);
    goto LABEL_79;
  }

  result = sub_1D23B8344(result);
  if (v35)
  {
LABEL_79:
    v26 = MEMORY[0x1D38A1C30](result, v24);
LABEL_65:
    v27 = OBJC_IVAR____TtC23ImagePlaygroundInternal23AppearanceCellViewModel__activeIndex;
    if (*(v26 + OBJC_IVAR____TtC23ImagePlaygroundInternal23AppearanceCellViewModel__activeIndex) != v37)
    {
      goto LABEL_67;
    }

    goto LABEL_66;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result < *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v26 = v33[result];
    sub_1D2870F78();
    goto LABEL_65;
  }

  __break(1u);
  return result;
}

uint64_t sub_1D286C9B8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D28700CC(&qword_1EC6D83A8, type metadata accessor for AppearanceCellViewModel);
  sub_1D28719E8();

  v4 = OBJC_IVAR____TtC23ImagePlaygroundInternal23AppearanceCellViewModel__skinTone;
  swift_beginAccess();
  return sub_1D24912B8(v3 + v4, a2);
}

uint64_t sub_1D286CAE8@<X0>(uint64_t *a1@<X0>, void *a2@<X4>, void *a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  sub_1D28700CC(&qword_1EC6D83A8, type metadata accessor for AppearanceCellViewModel);
  sub_1D28719E8();

  *a3 = *(v5 + *a2);
  return result;
}

uint64_t sub_1D286CBC4(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6E33C0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v10 - v4;
  v6 = OBJC_IVAR____TtC23ImagePlaygroundInternal19AppearanceViewModel__skinTone;
  swift_beginAccess();
  sub_1D24912B8(v1 + v6, v5);
  v7 = sub_1D286FDA0(v5, a1);
  sub_1D22BD238(v5, &unk_1EC6E33C0);
  if (v7)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v10[-2] = v1;
    v10[-1] = a1;
    v10[2] = v1;
    sub_1D28700CC(&qword_1EC6D8640, type metadata accessor for AppearanceViewModel);
    sub_1D28719D8();
  }

  else
  {
    sub_1D24912B8(a1, v5);
    swift_beginAccess();
    sub_1D262963C(v5, v1 + v6);
    swift_endAccess();
    sub_1D286CE6C();
    sub_1D22BD238(v5, &unk_1EC6E33C0);
  }

  return sub_1D22BD238(a1, &unk_1EC6E33C0);
}

uint64_t *sub_1D286CDD0(uint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a2)
  {
LABEL_15:
    a3 = 0;
LABEL_16:
    v8 = a4;
LABEL_19:
    *result = a4;
    result[1] = a5;
    result[2] = v8;
    return a3;
  }

  if (!a3)
  {
    goto LABEL_16;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v5 = 0;
    if (a5 <= a4)
    {
      v6 = a4;
    }

    else
    {
      v6 = a5;
    }

    v7 = a4 - v6;
    while (1)
    {
      if (!(a4 - a5 + v5))
      {
        v8 = a5;
        a3 = a5 - a4;
        goto LABEL_19;
      }

      if (a5 < a4)
      {
        break;
      }

      if (!(v7 + v5))
      {
        goto LABEL_21;
      }

      *(a2 + 8 * v5) = a4 + v5;
      if (a3 - 1 == v5)
      {
        v8 = a4 + v5 + 1;
        goto LABEL_19;
      }

      if (__OFADD__(++v5, 1))
      {
        __break(1u);
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1D286CE6C()
{
  v1 = type metadata accessor for ImageGenerationPerson.SkinTone();
  v62 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v63 = &v62 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v64 = &v62 - v4;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC108);
  MEMORY[0x1EEE9AC00](v78);
  v6 = &v62 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v62 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6E33C0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v62 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v62 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v76 = &v62 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v66 = &v62 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v62 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v82 = &v62 - v24;
  v79 = v0;
  v25 = *(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal19AppearanceViewModel_firstRowAppearanceCellModels);
  if (v25 >> 62)
  {
    v26 = sub_1D2879368();
  }

  else
  {
    v26 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v81 = v1;
  v65 = v12;
  v75 = v15;
  v73 = v6;
  if (v26)
  {
    if (v26 >= 1)
    {
      v70 = OBJC_IVAR____TtC23ImagePlaygroundInternal19AppearanceViewModel___observationRegistrar;
      v68 = v25 & 0xC000000000000001;
      v69 = OBJC_IVAR____TtC23ImagePlaygroundInternal19AppearanceViewModel__skinTone;
      swift_beginAccess();
      v27 = 0;
      v80 = 0;
      v67 = (v62 + 48);
      v74 = v22;
      v72 = v25;
      v71 = v26;
      while (1)
      {
        v77 = v27;
        if (v68)
        {
          v29 = MEMORY[0x1D38A1C30](v27, v25);
        }

        else
        {
          v29 = *(v25 + 8 * v27 + 32);
          sub_1D2870F78();
        }

        swift_getKeyPath();
        v30 = v79;
        v89 = v79;
        sub_1D28700CC(&qword_1EC6D8640, type metadata accessor for AppearanceViewModel);
        sub_1D28719E8();

        v31 = v82;
        sub_1D24912B8(v30 + v69, v82);
        v32 = OBJC_IVAR____TtC23ImagePlaygroundInternal23AppearanceCellViewModel__skinTone;
        swift_beginAccess();
        sub_1D24912B8(v29 + v32, v22);
        v33 = *(v78 + 48);
        sub_1D24912B8(v22, v9);
        sub_1D24912B8(v31, &v9[v33]);
        v34 = v22;
        v35 = *v67;
        v36 = v81;
        if ((*v67)(v9, 1, v81) == 1)
        {
          break;
        }

        v37 = v66;
        sub_1D24912B8(v9, v66);
        if (v35(&v9[v33], 1, v36) == 1)
        {
          sub_1D22BD238(v74, &unk_1EC6E33C0);
          sub_1D24917E0(v37);
LABEL_18:
          sub_1D22BD238(v9, &qword_1EC6DC108);
LABEL_19:
          KeyPath = swift_getKeyPath();
          MEMORY[0x1EEE9AC00](KeyPath);
          v39 = v82;
          *(&v62 - 2) = v29;
          *(&v62 - 1) = v39;
          v89 = v29;
          sub_1D28700CC(&qword_1EC6D83A8, type metadata accessor for AppearanceCellViewModel);
          v40 = v80;
          sub_1D28719D8();
          v80 = v40;
          v28 = v76;

          v25 = v72;
          goto LABEL_9;
        }

        sub_1D249183C(&v9[v33], v64);
        sub_1D28737A8();
        sub_1D28700CC(&qword_1EC6D8BA8, MEMORY[0x1E69E01B8]);
        sub_1D2878368();
        sub_1D2878368();
        if (v89 == v87 && v90 == v88)
        {
          sub_1D24917E0(v64);
          sub_1D22BD238(v74, &unk_1EC6E33C0);

          sub_1D24917E0(v66);
LABEL_7:
          sub_1D22BD238(v9, &unk_1EC6E33C0);
          goto LABEL_8;
        }

        v41 = sub_1D2879618();
        sub_1D24917E0(v64);
        sub_1D22BD238(v74, &unk_1EC6E33C0);

        sub_1D24917E0(v66);
        sub_1D22BD238(v9, &unk_1EC6E33C0);
        if ((v41 & 1) == 0)
        {
          goto LABEL_19;
        }

LABEL_8:
        swift_beginAccess();
        sub_1D262963C(v82, v29 + v32);
        swift_endAccess();

        v25 = v72;
        v28 = v76;
LABEL_9:
        v27 = v77 + 1;
        sub_1D22BD238(v82, &unk_1EC6E33C0);
        v1 = v81;
        v15 = v75;
        v22 = v74;
        if (v71 == v27)
        {
          goto LABEL_25;
        }
      }

      sub_1D22BD238(v34, &unk_1EC6E33C0);
      if (v35(&v9[v33], 1, v36) != 1)
      {
        goto LABEL_18;
      }

      goto LABEL_7;
    }

    __break(1u);
    goto LABEL_51;
  }

  v80 = 0;
  v28 = v76;
LABEL_25:
  v42 = *(v79 + OBJC_IVAR____TtC23ImagePlaygroundInternal19AppearanceViewModel_secondRowAppearanceCellModels);
  if (v42 >> 62)
  {
    v43 = sub_1D2879368();
    if (v43)
    {
      goto LABEL_27;
    }
  }

  else
  {
    v43 = *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v43)
    {
LABEL_27:
      if (v43 < 1)
      {
LABEL_51:
        __break(1u);
        return;
      }

      v71 = OBJC_IVAR____TtC23ImagePlaygroundInternal19AppearanceViewModel___observationRegistrar;
      v69 = v42 & 0xC000000000000001;
      v70 = OBJC_IVAR____TtC23ImagePlaygroundInternal19AppearanceViewModel__skinTone;
      swift_beginAccess();
      v44 = 0;
      v45 = (v62 + 48);
      v74 = v42;
      v68 = v62 + 48;
      v72 = v43;
      while (1)
      {
        v82 = v44;
        if (v69)
        {
          v49 = MEMORY[0x1D38A1C30](v44, v42);
        }

        else
        {
          v49 = *(v42 + 8 * v44 + 32);
          sub_1D2870F78();
        }

        swift_getKeyPath();
        v50 = v79;
        v85 = v79;
        sub_1D28700CC(&qword_1EC6D8640, type metadata accessor for AppearanceViewModel);
        sub_1D28719E8();

        sub_1D24912B8(v50 + v70, v28);
        v51 = OBJC_IVAR____TtC23ImagePlaygroundInternal23AppearanceCellViewModel__skinTone;
        swift_beginAccess();
        sub_1D24912B8(v49 + v51, v15);
        v52 = *(v78 + 48);
        v53 = v73;
        sub_1D24912B8(v15, v73);
        sub_1D24912B8(v28, v53 + v52);
        v54 = *v45;
        if ((*v45)(v53, 1, v1) == 1)
        {
          break;
        }

        v56 = v65;
        sub_1D24912B8(v53, v65);
        if (v54(v53 + v52, 1, v1) == 1)
        {
          v57 = v75;
          sub_1D22BD238(v75, &unk_1EC6E33C0);
          v58 = v56;
          v15 = v57;
          sub_1D24917E0(v58);
          v47 = v28;
          v46 = v53;
LABEL_41:
          sub_1D22BD238(v46, &qword_1EC6DC108);
LABEL_42:
          v59 = swift_getKeyPath();
          MEMORY[0x1EEE9AC00](v59);
          *(&v62 - 2) = v49;
          *(&v62 - 1) = v47;
          v85 = v49;
          sub_1D28700CC(&qword_1EC6D83A8, type metadata accessor for AppearanceCellViewModel);
          v60 = v80;
          sub_1D28719D8();
          v80 = v60;
          v47 = v76;

          goto LABEL_32;
        }

        v77 = v51;
        sub_1D249183C(v53 + v52, v63);
        sub_1D28737A8();
        sub_1D28700CC(&qword_1EC6D8BA8, MEMORY[0x1E69E01B8]);
        sub_1D2878368();
        sub_1D2878368();
        if (v85 == v83 && v86 == v84)
        {
          sub_1D24917E0(v63);
          v15 = v75;
          sub_1D22BD238(v75, &unk_1EC6E33C0);

          sub_1D24917E0(v65);
          v46 = v53;
          v47 = v76;
LABEL_30:
          sub_1D22BD238(v46, &unk_1EC6E33C0);
          goto LABEL_31;
        }

        v61 = sub_1D2879618();
        sub_1D24917E0(v63);
        v15 = v75;
        sub_1D22BD238(v75, &unk_1EC6E33C0);

        sub_1D24917E0(v65);
        sub_1D22BD238(v53, &unk_1EC6E33C0);
        v47 = v76;
        if ((v61 & 1) == 0)
        {
          goto LABEL_42;
        }

LABEL_31:
        v48 = v77;
        swift_beginAccess();
        sub_1D262963C(v47, v49 + v48);
        swift_endAccess();

LABEL_32:
        v42 = v74;
        v44 = v82 + 1;
        v28 = v47;
        sub_1D22BD238(v47, &unk_1EC6E33C0);
        v1 = v81;
        v45 = v68;
        if (v72 == v44)
        {
          return;
        }
      }

      v77 = v51;
      sub_1D22BD238(v15, &unk_1EC6E33C0);
      v55 = v54(v53 + v52, 1, v1) == 1;
      v47 = v28;
      v46 = v53;
      if (!v55)
      {
        goto LABEL_41;
      }

      goto LABEL_30;
    }
  }
}

uint64_t sub_1D286DC8C@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_1D28700CC(&qword_1EC6D8640, type metadata accessor for AppearanceViewModel);
  sub_1D28719E8();

  v3 = OBJC_IVAR____TtC23ImagePlaygroundInternal19AppearanceViewModel__skinTone;
  swift_beginAccess();
  return sub_1D24912B8(v5 + v3, a1);
}

uint64_t sub_1D286DD54@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D28700CC(&qword_1EC6D8640, type metadata accessor for AppearanceViewModel);
  sub_1D28719E8();

  v4 = OBJC_IVAR____TtC23ImagePlaygroundInternal19AppearanceViewModel__skinTone;
  swift_beginAccess();
  return sub_1D24912B8(v3 + v4, a2);
}

uint64_t sub_1D286DE1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(char *))
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6E33C0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v11 - v8;
  sub_1D24912B8(a1, &v11 - v8);
  return a5(v9);
}

uint64_t sub_1D286DEB8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6E33C0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v9 - v5;
  sub_1D24912B8(a2, &v9 - v5);
  v7 = OBJC_IVAR____TtC23ImagePlaygroundInternal19AppearanceViewModel__skinTone;
  swift_beginAccess();
  sub_1D262963C(v6, a1 + v7);
  swift_endAccess();
  sub_1D286CE6C();
  return sub_1D22BD238(v6, &unk_1EC6E33C0);
}

uint64_t sub_1D286DFA4()
{
  swift_getKeyPath();
  sub_1D28700CC(&qword_1EC6D8640, type metadata accessor for AppearanceViewModel);
  sub_1D28719E8();

  v1 = *(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal19AppearanceViewModel__snapshotAppearanceViewBlock);
  sub_1D23415B4(v1, *(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal19AppearanceViewModel__snapshotAppearanceViewBlock + 8));
  return v1;
}

uint64_t sub_1D286E064(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = (a1 + OBJC_IVAR____TtC23ImagePlaygroundInternal19AppearanceViewModel__snapshotAppearanceViewBlock);
  v4 = *(a1 + OBJC_IVAR____TtC23ImagePlaygroundInternal19AppearanceViewModel__snapshotAppearanceViewBlock);
  v5 = *(a1 + OBJC_IVAR____TtC23ImagePlaygroundInternal19AppearanceViewModel__snapshotAppearanceViewBlock + 8);
  *v3 = a2;
  v3[1] = a3;
  sub_1D23415B4(a2, a3);
  return sub_1D22D7900(v4, v5);
}

void sub_1D286E0BC(unsigned __int8 *a1, uint64_t a2)
{
  v5 = type metadata accessor for ImageGenerationPerson.SkinTone();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v91 = &v89 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v92 = &v89 - v9;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC108);
  v10 = MEMORY[0x1EEE9AC00](v107);
  v98 = &v89 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v89 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6E33C0);
  v15 = MEMORY[0x1EEE9AC00](v14 - 8);
  v97 = &v89 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v102 = &v89 - v18;
  v19 = MEMORY[0x1EEE9AC00](v17);
  v110 = &v89 - v20;
  v21 = MEMORY[0x1EEE9AC00](v19);
  v96 = &v89 - v22;
  v23 = MEMORY[0x1EEE9AC00](v21);
  v93 = &v89 - v24;
  v25 = MEMORY[0x1EEE9AC00](v23);
  v113 = &v89 - v26;
  v27 = MEMORY[0x1EEE9AC00](v25);
  v109 = (&v89 - v28);
  v29 = MEMORY[0x1EEE9AC00](v27);
  v108 = &v89 - v30;
  MEMORY[0x1EEE9AC00](v29);
  v32 = &v89 - v31;
  v33 = *a1;
  v34 = OBJC_IVAR____TtC23ImagePlaygroundInternal19AppearanceViewModel__skinTone;
  v35 = *(v6 + 56);
  v111 = v5;
  v105 = v6 + 56;
  v104 = v35;
  v35(v2 + OBJC_IVAR____TtC23ImagePlaygroundInternal19AppearanceViewModel__skinTone, 1, 1, v5);
  *(v2 + OBJC_IVAR____TtC23ImagePlaygroundInternal19AppearanceViewModel_maxSamples) = 15;
  v36 = (v2 + OBJC_IVAR____TtC23ImagePlaygroundInternal19AppearanceViewModel__snapshotAppearanceViewBlock);
  *v36 = 0;
  v36[1] = 0;
  sub_1D2871A18();
  v106 = v33;
  *(v2 + 16) = v33;
  v112 = a2;
  sub_1D24912B8(a2, v32);
  sub_1D22BD238(v2 + v34, &unk_1EC6E33C0);
  v90 = v2;
  sub_1D24397D8(v32, v2 + v34);
  v121 = MEMORY[0x1E69E7CC0];
  v122 = MEMORY[0x1E69E7CC0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAB90);
  v37 = swift_allocObject();
  v38 = _swift_stdlib_malloc_size(v37);
  v39 = v38 - 32;
  if (v38 < 32)
  {
    v39 = v38 - 25;
  }

  *(v37 + 16) = 15;
  *(v37 + 24) = 2 * (v39 >> 3);
  *(v37 + 32) = xmmword_1D2891EF0;
  *(v37 + 48) = xmmword_1D28AD5D0;
  *(v37 + 64) = xmmword_1D28AD5E0;
  *(v37 + 80) = xmmword_1D28AD5F0;
  *(v37 + 96) = xmmword_1D28AD600;
  *(v37 + 112) = xmmword_1D28AD610;
  *(v37 + 128) = xmmword_1D28AD620;
  *(v37 + 144) = 14;
  v120 = v37;
  sub_1D286F5EC();
  if (*(v120 + 16) < 2uLL)
  {
    goto LABEL_55;
  }

  v40 = 0;
  v41 = 0;
  v95 = v120;
  v94 = v120 + 32;
  v42 = (v6 + 48);
  v43 = v111;
  v99 = (v6 + 48);
  do
  {
    v103 = v40;
    v44 = v108;
    sub_1D24912B8(v112, v108);
    v45 = *(v94 + 8 * v41);
    v101 = type metadata accessor for AppearanceCellViewModel();
    v46 = swift_allocObject();
    v104(v46 + OBJC_IVAR____TtC23ImagePlaygroundInternal23AppearanceCellViewModel__skinTone, 1, 1, v43);
    *(v46 + OBJC_IVAR____TtC23ImagePlaygroundInternal23AppearanceCellViewModel__activeIndex) = 0;
    *(v46 + OBJC_IVAR____TtC23ImagePlaygroundInternal23AppearanceCellViewModel__previousActiveindex) = 0;
    sub_1D2871A18();
    *(v46 + 16) = v106;
    v47 = v109;
    sub_1D24912B8(v44, v109);
    v48 = OBJC_IVAR____TtC23ImagePlaygroundInternal23AppearanceCellViewModel__skinTone;
    swift_beginAccess();
    v49 = v113;
    sub_1D24912B8(v46 + v48, v113);
    v50 = *(v107 + 48);
    sub_1D24912B8(v49, v13);
    sub_1D24912B8(v47, &v13[v50]);
    v51 = *v42;
    v52 = (*v42)(v13, 1, v43);
    v100 = v51;
    if (v52 == 1)
    {
      if (v51(&v13[v50], 1, v43) != 1)
      {
        goto LABEL_10;
      }

      goto LABEL_15;
    }

    v53 = v93;
    sub_1D24912B8(v13, v93);
    if (v51(&v13[v50], 1, v43) == 1)
    {
      sub_1D24917E0(v53);
LABEL_10:
      sub_1D22BD238(v13, &qword_1EC6DC108);
      sub_1D22BD238(v113, &unk_1EC6E33C0);
LABEL_11:
      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath);
      v55 = v109;
      *(&v89 - 2) = v46;
      *(&v89 - 1) = v55;
      v118 = v46;
      sub_1D28700CC(&qword_1EC6D83A8, type metadata accessor for AppearanceCellViewModel);
      sub_1D28719D8();
      v56 = v55;

      goto LABEL_17;
    }

    sub_1D249183C(&v13[v50], v92);
    sub_1D28737A8();
    sub_1D28700CC(&qword_1EC6D8BA8, MEMORY[0x1E69E01B8]);
    sub_1D2878368();
    sub_1D2878368();
    if (v118 == v116 && v119 == v117)
    {
      sub_1D24917E0(v92);

      sub_1D24917E0(v93);
LABEL_15:
      sub_1D22BD238(v13, &unk_1EC6E33C0);
      sub_1D22BD238(v113, &unk_1EC6E33C0);
      goto LABEL_16;
    }

    v65 = sub_1D2879618();
    sub_1D24917E0(v92);

    sub_1D24917E0(v93);
    sub_1D22BD238(v13, &unk_1EC6E33C0);
    sub_1D22BD238(v113, &unk_1EC6E33C0);
    if ((v65 & 1) == 0)
    {
      goto LABEL_11;
    }

LABEL_16:
    swift_beginAccess();
    v56 = v109;
    sub_1D262963C(v109, v46 + v48);
    swift_endAccess();
LABEL_17:
    sub_1D22BD238(v56, &unk_1EC6E33C0);
    v57 = OBJC_IVAR____TtC23ImagePlaygroundInternal23AppearanceCellViewModel__activeIndex;
    v58 = *(v46 + OBJC_IVAR____TtC23ImagePlaygroundInternal23AppearanceCellViewModel__activeIndex);
    v59 = swift_getKeyPath();
    if (v58 == v45)
    {
      v118 = v46;
      sub_1D28700CC(&qword_1EC6D83A8, type metadata accessor for AppearanceCellViewModel);
      sub_1D28719E8();

      v60 = *(v46 + v57);
      v61 = OBJC_IVAR____TtC23ImagePlaygroundInternal23AppearanceCellViewModel__previousActiveindex;
      if (*(v46 + OBJC_IVAR____TtC23ImagePlaygroundInternal23AppearanceCellViewModel__previousActiveindex) == v60)
      {
        sub_1D22BD238(v108, &unk_1EC6E33C0);
        *(v46 + v61) = v60;
      }

      else
      {
        v63 = swift_getKeyPath();
        MEMORY[0x1EEE9AC00](v63);
        *(&v89 - 2) = v46;
        *(&v89 - 1) = v60;
        v118 = v46;
        sub_1D28719D8();

        sub_1D22BD238(v108, &unk_1EC6E33C0);
        v42 = v99;
      }

      *(v46 + v57) = v45;
    }

    else
    {
      MEMORY[0x1EEE9AC00](v59);
      *(&v89 - 2) = v46;
      *(&v89 - 1) = v62;
      v118 = v46;
      sub_1D28700CC(&qword_1EC6D83A8, type metadata accessor for AppearanceCellViewModel);
      sub_1D28719D8();

      sub_1D22BD238(v108, &unk_1EC6E33C0);
      v42 = v99;
    }

    v43 = v111;
    v64 = sub_1D2870F78();
    MEMORY[0x1D38A0E30](v64);
    if (*((v122 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v122 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1D2878428();
    }

    sub_1D2878488();

    v40 = 1;
    v41 = 1;
  }

  while ((v103 & 1) == 0);
  v66 = 6;
  v108 = v122;
  v67 = v98;
  v68 = v97;
  v69 = v110;
  v70 = v96;
  while (1)
  {
    sub_1D24912B8(v112, v70);
    if ((v66 - 4) >= *(v95 + 16))
    {
      break;
    }

    v113 = *(v95 + 8 * v66);
    v71 = swift_allocObject();
    v104(v71 + OBJC_IVAR____TtC23ImagePlaygroundInternal23AppearanceCellViewModel__skinTone, 1, 1, v43);
    *(v71 + OBJC_IVAR____TtC23ImagePlaygroundInternal23AppearanceCellViewModel__activeIndex) = 0;
    *(v71 + OBJC_IVAR____TtC23ImagePlaygroundInternal23AppearanceCellViewModel__previousActiveindex) = 0;
    sub_1D2871A18();
    *(v71 + 16) = v106;
    sub_1D24912B8(v70, v69);
    v72 = OBJC_IVAR____TtC23ImagePlaygroundInternal23AppearanceCellViewModel__skinTone;
    swift_beginAccess();
    v73 = v102;
    sub_1D24912B8(v71 + v72, v102);
    v74 = *(v107 + 48);
    sub_1D24912B8(v73, v67);
    sub_1D24912B8(v69, v67 + v74);
    v75 = v100;
    if (v100(v67, 1, v43) == 1)
    {
      if (v75((v67 + v74), 1, v43) == 1)
      {
        goto LABEL_40;
      }

      goto LABEL_35;
    }

    sub_1D24912B8(v67, v68);
    if (v75((v67 + v74), 1, v43) == 1)
    {
      sub_1D24917E0(v68);
LABEL_35:
      sub_1D22BD238(v67, &qword_1EC6DC108);
      sub_1D22BD238(v102, &unk_1EC6E33C0);
      goto LABEL_36;
    }

    sub_1D249183C(v67 + v74, v91);
    sub_1D28737A8();
    sub_1D28700CC(&qword_1EC6D8BA8, MEMORY[0x1E69E01B8]);
    sub_1D2878368();
    sub_1D2878368();
    if (v116 == v114 && v117 == v115)
    {
      sub_1D24917E0(v91);

      sub_1D24917E0(v97);
      v67 = v98;
LABEL_40:
      sub_1D22BD238(v67, &unk_1EC6E33C0);
      sub_1D22BD238(v102, &unk_1EC6E33C0);
LABEL_41:
      swift_beginAccess();
      v77 = v110;
      sub_1D262963C(v110, v71 + v72);
      swift_endAccess();
      goto LABEL_42;
    }

    v86 = sub_1D2879618();
    sub_1D24917E0(v91);

    sub_1D24917E0(v97);
    sub_1D22BD238(v98, &unk_1EC6E33C0);
    sub_1D22BD238(v102, &unk_1EC6E33C0);
    if (v86)
    {
      goto LABEL_41;
    }

LABEL_36:
    v76 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v76);
    v77 = v110;
    *(&v89 - 2) = v71;
    *(&v89 - 1) = v77;
    v116 = v71;
    sub_1D28700CC(&qword_1EC6D83A8, type metadata accessor for AppearanceCellViewModel);
    sub_1D28719D8();

LABEL_42:
    v70 = v96;
    sub_1D22BD238(v77, &unk_1EC6E33C0);
    v78 = OBJC_IVAR____TtC23ImagePlaygroundInternal23AppearanceCellViewModel__activeIndex;
    v79 = *(v71 + OBJC_IVAR____TtC23ImagePlaygroundInternal23AppearanceCellViewModel__activeIndex);
    v80 = swift_getKeyPath();
    if (v79 == v113)
    {
      v116 = v71;
      sub_1D28700CC(&qword_1EC6D83A8, type metadata accessor for AppearanceCellViewModel);
      sub_1D28719E8();

      v81 = *(v71 + v78);
      v82 = OBJC_IVAR____TtC23ImagePlaygroundInternal23AppearanceCellViewModel__previousActiveindex;
      if (*(v71 + OBJC_IVAR____TtC23ImagePlaygroundInternal23AppearanceCellViewModel__previousActiveindex) == v81)
      {
        sub_1D22BD238(v70, &unk_1EC6E33C0);
        *(v71 + v82) = v81;
      }

      else
      {
        v84 = swift_getKeyPath();
        v109 = &v89;
        MEMORY[0x1EEE9AC00](v84);
        *(&v89 - 2) = v71;
        *(&v89 - 1) = v81;
        v116 = v71;
        sub_1D28719D8();

        sub_1D22BD238(v70, &unk_1EC6E33C0);
      }

      *(v71 + v78) = v113;
    }

    else
    {
      MEMORY[0x1EEE9AC00](v80);
      *(&v89 - 2) = v71;
      *(&v89 - 1) = v83;
      v116 = v71;
      sub_1D28700CC(&qword_1EC6D83A8, type metadata accessor for AppearanceCellViewModel);
      sub_1D28719D8();

      sub_1D22BD238(v70, &unk_1EC6E33C0);
    }

    v43 = v111;
    v85 = sub_1D2870F78();
    MEMORY[0x1D38A0E30](v85);
    v67 = v98;
    v68 = v97;
    v69 = v110;
    if (*((v121 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v121 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1D2878428();
      v69 = v110;
    }

    sub_1D2878488();

    if (++v66 == 9)
    {
      v87 = v121;
      sub_1D22BD238(v112, &unk_1EC6E33C0);

      v88 = v90;
      *(v90 + OBJC_IVAR____TtC23ImagePlaygroundInternal19AppearanceViewModel_firstRowAppearanceCellModels) = v108;
      *(v88 + OBJC_IVAR____TtC23ImagePlaygroundInternal19AppearanceViewModel_secondRowAppearanceCellModels) = v87;
      return;
    }
  }

  __break(1u);
LABEL_55:
  __break(1u);
}

uint64_t sub_1D286F3AC()
{
  sub_1D22BD238(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal19AppearanceViewModel__skinTone, &unk_1EC6E33C0);
  sub_1D22D7900(*(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal19AppearanceViewModel__snapshotAppearanceViewBlock), *(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal19AppearanceViewModel__snapshotAppearanceViewBlock + 8));

  v1 = OBJC_IVAR____TtC23ImagePlaygroundInternal19AppearanceViewModel___observationRegistrar;
  v2 = sub_1D2871A28();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for AppearanceViewModel()
{
  result = qword_1EC6D8630;
  if (!qword_1EC6D8630)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D286F4F0()
{
  sub_1D2491788();
  if (v0 <= 0x3F)
  {
    sub_1D2871A28();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_1D286F5EC()
{
  v1 = *v0;
  v2 = *(*v0 + 2);
  v3 = v2 - 2;
  if (v2 >= 2)
  {
    v4 = 0;
    while (1)
    {
      v13 = 0;
      MEMORY[0x1D38A3540](&v13, 8);
      v6 = (v13 * v2) >> 64;
      if (v2 > v13 * v2)
      {
        v7 = -v2 % v2;
        if (v7 > v13 * v2)
        {
          do
          {
            v13 = 0;
            MEMORY[0x1D38A3540](&v13, 8);
          }

          while (v7 > v13 * v2);
          v6 = (v13 * v2) >> 64;
        }
      }

      v8 = v4 + v6;
      if (__OFADD__(v4, v6))
      {
        break;
      }

      if (v4 != v8)
      {
        v9 = *(v1 + 2);
        if (v4 >= v9)
        {
          goto LABEL_19;
        }

        if (v8 >= v9)
        {
          goto LABEL_20;
        }

        v10 = *&v1[8 * v4 + 32];
        v11 = *&v1[8 * v8 + 32];
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v1 = sub_1D286FD28(v1);
        }

        v12 = *(v1 + 2);
        if (v4 >= v12)
        {
          goto LABEL_21;
        }

        *&v1[8 * v4 + 32] = v11;
        if (v8 >= v12)
        {
          goto LABEL_22;
        }

        *&v1[8 * v8 + 32] = v10;
        *v0 = v1;
      }

      --v2;
      if (v4++ == v3)
      {
        return;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
  }
}

void sub_1D286F76C()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  v3 = v2 - 2;
  if (v2 >= 2)
  {
    v4 = 0;
    while (1)
    {
      *&v12[0] = 0;
      MEMORY[0x1D38A3540](v12, 8);
      v6 = (*&v12[0] * v2) >> 64;
      if (v2 > *&v12[0] * v2)
      {
        v7 = -v2 % v2;
        if (v7 > *&v12[0] * v2)
        {
          do
          {
            *&v12[0] = 0;
            MEMORY[0x1D38A3540](v12, 8);
          }

          while (v7 > *&v12[0] * v2);
          v6 = (*&v12[0] * v2) >> 64;
        }
      }

      v8 = v4 + v6;
      if (__OFADD__(v4, v6))
      {
        break;
      }

      if (v4 != v8)
      {
        v9 = v1[2];
        if (v4 >= v9)
        {
          goto LABEL_19;
        }

        sub_1D22D7044(&v1[5 * v4 + 4], v12);
        if (v8 >= v9)
        {
          goto LABEL_20;
        }

        sub_1D22D7044(&v1[5 * v8 + 4], v11);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v1 = sub_1D286FD3C(v1);
        }

        if (v4 >= v1[2])
        {
          goto LABEL_21;
        }

        v10 = v1 + 4;
        __swift_destroy_boxed_opaque_existential_0(&v1[5 * v4 + 4]);
        sub_1D22D79FC(v11, &v1[5 * v4 + 4]);
        if (v8 >= v1[2])
        {
          goto LABEL_22;
        }

        __swift_destroy_boxed_opaque_existential_0(&v10[5 * v8]);
        sub_1D22D79FC(v12, &v10[5 * v8]);
        *v0 = v1;
      }

      --v2;
      if (v4++ == v3)
      {
        return;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
  }
}

void sub_1D286F8FC()
{
  v1 = sub_1D2873758();
  v26 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v29 = &v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = MEMORY[0x1EEE9AC00](v3);
  v30 = &v22 - v5;
  v25 = v0;
  v6 = *v0;
  v7 = *(*v0 + 2);
  v8 = v7 - 2;
  if (v7 >= 2)
  {
    v9 = 0;
    v22 = v7 - 2;
    v23 = (v26 + 40);
    v24 = v26 + 16;
    while (1)
    {
      v31 = 0;
      MEMORY[0x1D38A3540](&v31, 8, v4);
      v11 = (v31 * v7) >> 64;
      if (v7 > v31 * v7)
      {
        v12 = -v7 % v7;
        if (v12 > v31 * v7)
        {
          do
          {
            v31 = 0;
            MEMORY[0x1D38A3540](&v31, 8);
          }

          while (v12 > v31 * v7);
          v11 = (v31 * v7) >> 64;
        }
      }

      v13 = v9 + v11;
      if (__OFADD__(v9, v11))
      {
        break;
      }

      if (v9 != v13)
      {
        v14 = *(v6 + 2);
        if (v9 >= v14)
        {
          goto LABEL_19;
        }

        v15 = v1;
        v28 = (*(v26 + 80) + 32) & ~*(v26 + 80);
        v16 = &v6[v28];
        v17 = *(v26 + 72);
        v18 = *(v26 + 16);
        v27 = v17 * v9;
        v18(v30, &v6[v28 + v17 * v9], v15);
        if (v13 >= v14)
        {
          goto LABEL_20;
        }

        v19 = v17 * v13;
        v18(v29, &v16[v17 * v13], v15);
        v1 = v15;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v6 = sub_1D286FD64(v6);
        }

        if (v9 >= *(v6 + 2))
        {
          goto LABEL_21;
        }

        v20 = &v6[v28];
        v21 = *v23;
        (*v23)(&v6[v28 + v27], v29, v15);
        if (v13 >= *(v6 + 2))
        {
          goto LABEL_22;
        }

        v21(&v20[v19], v30, v15);
        *v25 = v6;
        v8 = v22;
      }

      --v7;
      if (v9++ == v8)
      {
        return;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
  }
}

void sub_1D286FBA0()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  v3 = v2 - 2;
  if (v2 < 2)
  {
    return;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_21:
    v1 = sub_1D278BE34();
  }

  v4 = 0;
  v5 = v1 + 32;
  while (1)
  {
    v13 = 0;
    MEMORY[0x1D38A3540](&v13, 8);
    v7 = (v13 * v2) >> 64;
    if (v2 > v13 * v2)
    {
      v8 = -v2 % v2;
      if (v8 > v13 * v2)
      {
        do
        {
          v13 = 0;
          MEMORY[0x1D38A3540](&v13, 8);
        }

        while (v8 > v13 * v2);
        v7 = (v13 * v2) >> 64;
      }
    }

    v9 = v4 + v7;
    if (__OFADD__(v4, v7))
    {
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
      goto LABEL_21;
    }

    if (v4 != v9)
    {
      break;
    }

LABEL_5:
    --v2;
    if (v4++ == v3)
    {
      goto LABEL_16;
    }
  }

  v10 = *(v1 + 16);
  if (v4 >= v10)
  {
    goto LABEL_19;
  }

  if (v9 >= v10)
  {
    goto LABEL_20;
  }

  v11 = *(v5 + 8 * v4);
  *(v5 + 8 * v4) = *(v5 + 8 * v9);
  v12 = *(v1 + 16);
  sub_1D2870F78();
  if (v9 < v12)
  {
    *(v5 + 8 * v9) = v11;

    goto LABEL_5;
  }

  __break(1u);
LABEL_16:
  *v0 = v1;
}

uint64_t sub_1D286FDA0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ImageGenerationPerson.SkinTone();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6E33C0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v19 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC108);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = v19 - v12;
  v15 = *(v14 + 56);
  sub_1D24912B8(a1, v19 - v12);
  sub_1D24912B8(a2, &v13[v15]);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) == 1)
  {
    if (v16(&v13[v15], 1, v4) == 1)
    {
      sub_1D22BD238(v13, &unk_1EC6E33C0);
      v17 = 0;
      return v17 & 1;
    }

LABEL_6:
    sub_1D22BD238(v13, &qword_1EC6DC108);
    v17 = 1;
    return v17 & 1;
  }

  sub_1D24912B8(v13, v10);
  if (v16(&v13[v15], 1, v4) == 1)
  {
    sub_1D24917E0(v10);
    goto LABEL_6;
  }

  sub_1D249183C(&v13[v15], v7);
  sub_1D28737A8();
  sub_1D28700CC(&qword_1EC6D8BA8, MEMORY[0x1E69E01B8]);
  sub_1D2878368();
  sub_1D2878368();
  if (v19[2] == v19[0] && v19[3] == v19[1])
  {
    v17 = 0;
  }

  else
  {
    v17 = sub_1D2879618() ^ 1;
  }

  sub_1D24917E0(v7);

  sub_1D24917E0(v10);
  sub_1D22BD238(v13, &unk_1EC6E33C0);
  return v17 & 1;
}

uint64_t sub_1D28700CC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t ImageXPCWrapper.playgroundImage.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1D2871D78();
  v3 = type metadata accessor for PlaygroundImage();
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  v4 = (a1 + v3[9]);
  *v4 = 0u;
  v4[1] = 0u;
  *(a1 + v3[10]) = xmmword_1D28809A0;
  v5 = v3[11];
  v6 = sub_1D2873AA8();
  (*(*(v6 - 8) + 56))(a1 + v5, 1, 1, v6);
  *a1 = v2;
  *(a1 + 8) = 3;
  *(a1 + 24) = 1;
  *(a1 + 16) = 0;
  *(a1 + v3[12]) = 0;
  return sub_1D2871808();
}

id sub_1D2870270()
{
  type metadata accessor for ResourceBundleClass();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass_];
  qword_1ED8A42F0 = result;
  return result;
}

uint64_t sub_1D2870320()
{
  v0 = sub_1D2873998();
  __swift_allocate_value_buffer(v0, qword_1ED8B02D0);
  __swift_project_value_buffer(v0, qword_1ED8B02D0);
  if (qword_1ED8A42E8 != -1)
  {
    swift_once();
  }

  v1 = qword_1ED8A42F0;
  return sub_1D2873988();
}

uint64_t sub_1D28703C8()
{
  v0 = sub_1D2873998();
  __swift_allocate_value_buffer(v0, qword_1ED8B02B8);
  __swift_project_value_buffer(v0, qword_1ED8B02B8);
  if (qword_1ED8A42E8 != -1)
  {
    swift_once();
  }

  v1 = qword_1ED8A42F0;
  return sub_1D2873988();
}

uint64_t sub_1D28704C4()
{
  v0 = sub_1D2873998();
  __swift_allocate_value_buffer(v0, qword_1EC6E3BC0);
  __swift_project_value_buffer(v0, qword_1EC6E3BC0);
  if (qword_1ED8A42E8 != -1)
  {
    swift_once();
  }

  v1 = qword_1ED8A42F0;
  return sub_1D2873988();
}

uint64_t sub_1D287056C()
{
  v0 = sub_1D2873998();
  __swift_allocate_value_buffer(v0, qword_1EC6E3BA8);
  __swift_project_value_buffer(v0, qword_1EC6E3BA8);
  if (qword_1ED8A42E8 != -1)
  {
    swift_once();
  }

  v1 = qword_1ED8A42F0;
  return sub_1D2873988();
}

uint64_t sub_1D28706BC(uint64_t a1, uint64_t *a2)
{
  v3 = sub_1D2873998();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  if (qword_1ED8A42E8 != -1)
  {
    swift_once();
  }

  v4 = qword_1ED8A42F0;
  return sub_1D2873988();
}

uint64_t __isPlatformVersionAtLeast(uint64_t a1, int a2, int a3, int a4)
{
  if (qword_1ED8A7378 == -1)
  {
    if (qword_1ED8A7380)
    {
      return _availability_version_check();
    }
  }

  else
  {
    v5 = a4;
    v6 = a3;
    v7 = a2;
    __isPlatformVersionAtLeast_cold_1();
    a2 = v7;
    a3 = v6;
    a4 = v5;
    if (qword_1ED8A7380)
    {
      return _availability_version_check();
    }
  }

  if (qword_1ED8A7370 != -1)
  {
    v9 = a4;
    v10 = a3;
    v11 = a2;
    __isPlatformVersionAtLeast_cold_2();
    a3 = v10;
    a4 = v9;
    v8 = _MergedGlobals < v11;
    if (_MergedGlobals > v11)
    {
      return 1;
    }

LABEL_7:
    if (!v8)
    {
      if (dword_1ED8A7364 > a3)
      {
        return 1;
      }

      if (dword_1ED8A7364 >= a3)
      {
        return dword_1ED8A7368 >= a4;
      }
    }

    return 0;
  }

  v8 = _MergedGlobals < a2;
  if (_MergedGlobals <= a2)
  {
    goto LABEL_7;
  }

  return 1;
}

uint64_t _initializeAvailabilityCheck(uint64_t result)
{
  v29 = *MEMORY[0x1E69E9840];
  v1 = qword_1ED8A7380;
  if (qword_1ED8A7380)
  {
    v2 = result == 0;
  }

  else
  {
    v2 = 0;
  }

  if (!v2)
  {
    if (MEMORY[0x1EEE9AC60])
    {
      v1 = MEMORY[0x1EEE9AC60];
      qword_1ED8A7380 = MEMORY[0x1EEE9AC60];
    }

    if (v1)
    {
      v3 = result == 0;
    }

    else
    {
      v3 = 0;
    }

    if (!v3)
    {
      result = dlsym(0xFFFFFFFFFFFFFFFELL, "kCFAllocatorNull");
      if (result)
      {
        v4 = *result;
        result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDataCreateWithBytesNoCopy");
        if (result)
        {
          v5 = result;
          v6 = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateWithData");
          result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateFromXMLData");
          if (v6 | result)
          {
            v7 = result;
            result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringCreateWithCStringNoCopy");
            if (result)
            {
              v8 = result;
              result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDictionaryGetValue");
              if (result)
              {
                v9 = result;
                result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFGetTypeID");
                if (result)
                {
                  v10 = result;
                  result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetTypeID");
                  if (result)
                  {
                    v11 = result;
                    result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetCString");
                    v27 = result;
                    if (result)
                    {
                      result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFRelease");
                      if (result)
                      {
                        v12 = result;
                        result = fopen("/System/Library/CoreServices/SystemVersion.plist", "r");
                        if (result)
                        {
                          v13 = result;
                          v26 = v12;
                          fseek(result, 0, 2);
                          v14 = MEMORY[0x1D38A2B80](v13);
                          if (v14 < 0)
                          {
                            v16 = 0;
                          }

                          else
                          {
                            v15 = v14;
                            rewind(v13);
                            v16 = malloc(v15);
                            if (v16)
                            {
                              v25 = v16;
                              if (fread(v16, 1uLL, v15, v13) == v15 && (v17 = v5(0, v25, v15, v4)) != 0)
                              {
                                v18 = v17;
                                if (v6)
                                {
                                  v19 = (v6)(0, v17, 0, 0, 0);
                                }

                                else
                                {
                                  v19 = v7(0, v17, 0, 0);
                                }

                                v20 = v19;
                                if (v19)
                                {
                                  v21 = v8(0, "ProductVersion", 1536, v4);
                                  if (v21)
                                  {
                                    v22 = v21;
                                    v23 = v9(v20, v21);
                                    (v26)(v22);
                                    if (v23)
                                    {
                                      v24 = v10(v23);
                                      if (v24 == v11())
                                      {
                                        if (v27(v23, v28, 32, 134217984))
                                        {
                                          sscanf(v28, "%d.%d.%d", &_MergedGlobals, &dword_1ED8A7364, &dword_1ED8A7368);
                                        }
                                      }
                                    }
                                  }

                                  (v26)(v20);
                                }

                                (v26)(v18);
                                v16 = v25;
                              }

                              else
                              {
                                v16 = v25;
                              }
                            }
                          }

                          free(v16);
                          return fclose(v13);
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
  }

  return result;
}

CGPoint CGPointApplyAffineTransform(CGPoint point, CGAffineTransform *t)
{
  MEMORY[0x1EEDBAD70](t, point, *&point.y);
  result.y = v3;
  result.x = v2;
  return result;
}

CGRect CGRectApplyAffineTransform(CGRect rect, CGAffineTransform *t)
{
  MEMORY[0x1EEDBAD98](t, rect.origin, *&rect.origin.y, rect.size, *&rect.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

CGRect CGRectIntersection(CGRect r1, CGRect r2)
{
  MEMORY[0x1EEDBAE40](r1.origin, *&r1.origin.y, r1.size, *&r1.size.height, r2.origin, *&r2.origin.y, r2.size, *&r2.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

__double2 __sincos_stret(double a1)
{
  MEMORY[0x1EEE73570](a1);
  result.__cosval = v2;
  result.__sinval = v1;
  return result;
}

__float2 __sincosf_stret(float a1)
{
  MEMORY[0x1EEE73578](a1);
  result.__cosval = v2;
  result.__sinval = v1;
  return result;
}