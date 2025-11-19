uint64_t objectdestroy_2493Tm()
{

  return swift_deallocObject();
}

uint64_t objectdestroyTm_16(void (*a1)(void, void, void))
{
  a1(*(v1 + 16), *(v1 + 24), *(v1 + 32));

  return swift_deallocObject();
}

uint64_t objectdestroyTm_17()
{
  v1 = *(v0 + 16);
  v2 = (type metadata accessor for DebugFormatFileTreePopoverView() - 8);
  v3 = v0 + ((*(*v2 + 80) + 32) & ~*(*v2 + 80));

  (*(*(v1 - 8) + 8))(v3 + v2[11], v1);

  return swift_deallocObject();
}

uint64_t objectdestroyTm_18()
{
  v1 = type metadata accessor for FeedHeadline(0);
  v2 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v3 = v1[10];
  v4 = v2 + v3 + *(type metadata accessor for FeedHeadline.State(0) + 24);
  v5 = type metadata accessor for SharedItem();
  if (!(*(*(v5 - 8) + 48))(v4, 1, v5))
  {
    v6 = sub_1D725891C();
    (*(*(v6 - 8) + 8))(v4, v6);

    v7 = *(v5 + 28);
    v8 = sub_1D72585BC();
    (*(*(v8 - 8) + 8))(v4 + v7, v8);
  }

  v9 = v1[11];
  v10 = sub_1D726045C();
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(v2 + v9, 1, v10))
  {
    (*(v11 + 8))(v2 + v9, v10);
  }

  if (*(v2 + v1[12] + 8) >= 0x12uLL)
  {
  }

  if (*(v2 + v1[13]) >= 3uLL)
  {
    swift_unknownObjectRelease();
  }

  return swift_deallocObject();
}

uint64_t objectdestroyTm_19()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t objectdestroyTm_20()
{
  sub_1D5B54790(0, &qword_1EDF45B40, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  v2 = (*(*(v1 - 8) + 80) + 24) & ~*(*(v1 - 8) + 80);
  swift_unknownObjectRelease();
  v3 = sub_1D72585BC();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(v0 + v2, 1, v3))
  {
    (*(v4 + 8))(v0 + v2, v3);
  }

  return swift_deallocObject();
}

uint64_t objectdestroyTm_21()
{
  v1 = type metadata accessor for DebugFormatWorkspaceCanvasSection();
  v49 = *(*(v1 - 8) + 80);
  swift_unknownObjectRelease();

  v47 = v0 + ((v49 + 40) & ~v49);
  v48 = v1;
  v2 = v47 + *(v1 + 28);

  v3 = v2 + *(type metadata accessor for FormatWorkspaceGroup() + 24);

  v4 = type metadata accessor for FormatContentSubgroup();
  v5 = v3 + *(v4 + 20);
  sub_1D5C2AD34(0, qword_1EDF40220, type metadata accessor for FormatFileReference);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {

    if (*(v5 + 168) >= 3uLL)
    {
    }

    v44 = type metadata accessor for FormatPackage();
    v16 = v5 + v44[23];

    v17 = type metadata accessor for FormatCompilerOptions(0);
    v18 = v16 + *(v17 + 24);
    if (*(v18 + 8) != 1)
    {
    }

    v19 = *(type metadata accessor for FormatCompilerOptions.Newsroom(0) + 20);
    v20 = sub_1D725B76C();
    v45 = *(v20 - 8);
    v46 = *(v45 + 48);
    if (!v46(v18 + v19, 1, v20))
    {
      (*(v45 + 8))(v18 + v19, v20);
    }

    v43 = v4;
    v21 = *(v17 + 28);
    if (!v46(v16 + v21, 1, v20))
    {
      (*(v45 + 8))(v16 + v21, v20);
    }

    v22 = v44[24];
    v23 = sub_1D725BD1C();
    v24 = *(v23 - 8);
    v25 = *(v24 + 8);
    v25(v5 + v22, v23);
    v26 = v44[25];
    if (!v46(v5 + v26, 1, v20))
    {
      (*(v45 + 8))(v5 + v26, v20);
    }

    sub_1D61F531C(0, &unk_1EC88B470, type metadata accessor for FormatPackage);
    v28 = v5 + *(v27 + 48);

    v29 = type metadata accessor for FormatMetadata();
    v25(v28 + v29[5], v23);
    v25(v28 + v29[6], v23);
    v30 = v29[7];
    if (!(*(v24 + 48))(v28 + v30, 1, v23))
    {
      v25(v28 + v30, v23);
    }

    v4 = v43;
  }

  else
  {
    if (EnumCaseMultiPayload)
    {
      goto LABEL_20;
    }

    v7 = sub_1D72585BC();
    (*(*(v7 - 8) + 8))(v5, v7);
    sub_1D61F531C(0, &qword_1EDF45B30, MEMORY[0x1E6968FB0]);
    v9 = v5 + *(v8 + 48);

    v10 = type metadata accessor for FormatMetadata();
    v11 = v10[5];
    v12 = sub_1D725BD1C();
    v13 = *(v12 - 8);
    v14 = *(v13 + 8);
    v14(v9 + v11, v12);
    v14(v9 + v10[6], v12);
    v15 = v10[7];
    if (!(*(v13 + 48))(v9 + v15, 1, v12))
    {
      v14(v9 + v15, v12);
    }
  }

LABEL_20:
  sub_1D5C2AD34(0, qword_1EDF43E00, type metadata accessor for FormatLatestCompatibleFileReference);

  v31 = v3 + *(v4 + 40);

  v32 = type metadata accessor for FormatMetadata();
  v33 = v32[5];
  v34 = sub_1D725BD1C();
  v35 = *(v34 - 8);
  v36 = *(v35 + 8);
  v36(v31 + v33, v34);
  v36(v31 + v32[6], v34);
  v37 = v32[7];
  if (!(*(v35 + 48))(v31 + v37, 1, v34))
  {
    v36(v31 + v37, v34);
  }

  type metadata accessor for DebugFormatWorkspaceGroup();

  v38 = *(v48 + 32);
  v39 = sub_1D7259F5C();
  (*(*(v39 - 8) + 8))(v47 + v38, v39);
  v40 = *(v48 + 36);
  v41 = sub_1D7259CFC();
  (*(*(v41 - 8) + 8))(v47 + v40, v41);

  return swift_deallocObject();
}

uint64_t objectdestroy_2Tm()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t objectdestroyTm_22()
{

  return swift_deallocObject();
}

uint64_t objectdestroyTm_23()
{

  if (*(v0 + 24))
  {
    swift_unknownObjectRelease();
  }

  return swift_deallocObject();
}

uint64_t objectdestroyTm_24(void (*a1)(void))
{
  a1(*(v1 + 16));

  return swift_deallocObject();
}

uint64_t objectdestroyTm_25()
{

  return swift_deallocObject();
}

uint64_t objectdestroyTm_26(void (*a1)(void, void, void))
{
  a1(*(v1 + 16), *(v1 + 24), *(v1 + 32));

  return swift_deallocObject();
}

uint64_t objectdestroyTm_27()
{
  v1 = sub_1D725CCCC();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t objectdestroyTm_28()
{
  if (*(v0 + 16))
  {
  }

  return swift_deallocObject();
}

uint64_t objectdestroyTm_29()
{

  sub_1D6A8CE7C(*(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56));

  return swift_deallocObject();
}

uint64_t objectdestroyTm_30()
{

  v1 = *(v0 + 56);
  if (v1 != 255)
  {
    sub_1D6ADCDFC(*(v0 + 48), v1 & 1);
  }

  return swift_deallocObject();
}

uint64_t objectdestroyTm_31()
{
  v1 = *(v0 + 16);
  v2 = (type metadata accessor for DebugFormatInspectorPopoverView() - 8);
  v3 = v0 + ((*(*v2 + 80) + 32) & ~*(*v2 + 80));

  (*(*(v1 - 8) + 8))(v3 + v2[13], v1);

  return swift_deallocObject();
}

uint64_t objectdestroy_68Tm()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + 24);

  return swift_deallocObject();
}

uint64_t objectdestroyTm_32()
{
  (*(*(*(v0 + 24) - 8) + 8))(v0 + ((*(*(*(v0 + 24) - 8) + 80) + 40) & ~*(*(*(v0 + 24) - 8) + 80)));

  return swift_deallocObject();
}

uint64_t objectdestroyTm_33()
{

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t objectdestroy_19Tm()
{

  swift_unknownObjectRelease();

  if (*(v0 + 104) != 1)
  {

    if (*(v0 + 136))
    {
      __swift_destroy_boxed_opaque_existential_1(v0 + 112);
    }
  }

  return swift_deallocObject();
}

uint64_t objectdestroyTm_34()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t objectdestroyTm_35()
{

  return swift_deallocObject();
}

uint64_t objectdestroyTm_36()
{
  (*(*(*(v0 + 32) - 8) + 8))(v0 + ((*(*(*(v0 + 32) - 8) + 80) + 48) & ~*(*(*(v0 + 32) - 8) + 80)));

  return swift_deallocObject();
}

uint64_t objectdestroyTm_37()
{
  v1 = (type metadata accessor for DebugTaxtAttachementList() - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));

  v3 = v1[7];
  sub_1D708C054(0, &qword_1EC893EB8, MEMORY[0x1E697DCB8]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_1D7260F1C();
    (*(*(v4 - 8) + 8))(v2 + v3, v4);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t objectdestroyTm_38()
{

  v1 = *(v0 + 64);
  if (v1 != 255)
  {
    sub_1D7106450(*(v0 + 48), *(v0 + 56), v1 & 1);
  }

  sub_1D6BB3158(*(v0 + 88), *(v0 + 96));

  return swift_deallocObject();
}

uint64_t objectdestroyTm_39()
{
  v1 = type metadata accessor for DebugFormatBindingRequest();
  v44 = *(*(v1 - 8) + 80);

  v42 = v0 + ((v44 + 24) & ~v44);
  v43 = v1;
  v2 = v42 + *(v1 + 20);

  v3 = type metadata accessor for FormatContentSubgroup();
  v4 = v2 + *(v3 + 20);
  sub_1D5C2AE3C(0, qword_1EDF40220, type metadata accessor for FormatFileReference);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {

    if (*(v4 + 168) >= 3uLL)
    {
    }

    v15 = type metadata accessor for FormatPackage();
    v16 = v4 + v15[23];

    v17 = type metadata accessor for FormatCompilerOptions(0);
    v18 = v16 + *(v17 + 24);
    if (*(v18 + 8) != 1)
    {
    }

    v19 = *(type metadata accessor for FormatCompilerOptions.Newsroom(0) + 20);
    v20 = sub_1D725B76C();
    v40 = *(v20 - 8);
    v41 = *(v40 + 48);
    if (!v41(v18 + v19, 1, v20))
    {
      (*(v40 + 8))(v18 + v19, v20);
    }

    v21 = *(v17 + 28);
    if (!v41(v16 + v21, 1, v20))
    {
      (*(v40 + 8))(v16 + v21, v20);
    }

    v22 = v15[24];
    v23 = sub_1D725BD1C();
    v39 = *(v23 - 8);
    v24 = *(v39 + 8);
    v24(v4 + v22, v23);
    v25 = v15[25];
    if (!v41(v4 + v25, 1, v20))
    {
      (*(v40 + 8))(v4 + v25, v20);
    }

    sub_1D61F531C(0, &unk_1EC88B470, type metadata accessor for FormatPackage);
    v27 = v4 + *(v26 + 48);

    v28 = type metadata accessor for FormatMetadata();
    v24(v27 + v28[5], v23);
    v24(v27 + v28[6], v23);
    v29 = v28[7];
    if (!(*(v39 + 48))(v27 + v29, 1, v23))
    {
      v24(v27 + v29, v23);
    }
  }

  else
  {
    if (EnumCaseMultiPayload)
    {
      goto LABEL_19;
    }

    v6 = sub_1D72585BC();
    (*(*(v6 - 8) + 8))(v4, v6);
    sub_1D61F531C(0, &qword_1EDF45B30, MEMORY[0x1E6968FB0]);
    v8 = v4 + *(v7 + 48);

    v9 = type metadata accessor for FormatMetadata();
    v10 = v9[5];
    v11 = sub_1D725BD1C();
    v12 = *(v11 - 8);
    v13 = *(v12 + 8);
    v13(v8 + v10, v11);
    v13(v8 + v9[6], v11);
    v14 = v9[7];
    if (!(*(v12 + 48))(v8 + v14, 1, v11))
    {
      v13(v8 + v14, v11);
    }
  }

LABEL_19:
  sub_1D5C2AE3C(0, qword_1EDF43E00, type metadata accessor for FormatLatestCompatibleFileReference);

  v30 = v2 + *(v3 + 40);

  v31 = type metadata accessor for FormatMetadata();
  v32 = v31[5];
  v33 = sub_1D725BD1C();
  v34 = *(v33 - 8);
  v35 = *(v34 + 8);
  v35(v30 + v32, v33);
  v35(v30 + v31[6], v33);
  v36 = v31[7];
  if (!(*(v34 + 48))(v30 + v36, 1, v33))
  {
    v35(v30 + v36, v33);
  }

  v37 = (v42 + *(v43 + 28));
  if (v37[1])
  {

    if (v37[17] >= 3uLL)
    {
    }

    swift_unknownObjectRelease();

    if (v37[30] >= 0x12uLL)
    {
    }
  }

  return swift_deallocObject();
}

uint64_t objectdestroyTm_40()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 8))(v0 + ((*(*(AssociatedTypeWitness - 8) + 80) + 32) & ~*(*(AssociatedTypeWitness - 8) + 80)), AssociatedTypeWitness);

  return swift_deallocObject();
}

uint64_t sub_1D5BAE9EC()
{
  v2 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v3 = *(v2 + 40);
    v4 = *(v2 + 48);
    v5 = sub_1D6EF0CC4;
  }

  else
  {

    v3 = *(v2 + 40);
    v4 = *(v2 + 48);
    v5 = sub_1D5BAEF38;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

void sub_1D5BAEB80(char a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    if (a1)
    {
      v4 = objc_opt_self();
      v5 = swift_allocObject();
      swift_unknownObjectWeakInit();
      aBlock[4] = sub_1D5C3BF6C;
      aBlock[5] = v5;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1D5C3BF64;
      aBlock[3] = &block_descriptor_65_0;
      v6 = _Block_copy(aBlock);

      [v4 fetchMostFrequentLocationWithCompletion_];
      _Block_release(v6);
    }

    else
    {
      if (qword_1EDF29DF0 != -1)
      {
        swift_once();
      }

      sub_1D7262EDC();
      sub_1D725C30C();

      sub_1D725B96C();

      v7 = aBlock[0];
      if (aBlock[0])
      {
        v8 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v9 = swift_allocObject();
        *(v9 + 16) = 0;
        *(v9 + 24) = v8;

        sub_1D725BFFC();

        v3 = v7;
      }
    }
  }
}

void sub_1D5BAEDBC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v4 = Strong;
  v5 = OBJC_IVAR____TtC8NewsFeed24LocationDetectionManager_observers;
  swift_beginAccess();
  v6 = *&v4[v5];
  if (v6 >> 62)
  {
    v7 = sub_1D7263BFC();
    if (v7)
    {
      goto LABEL_4;
    }

LABEL_17:

    return;
  }

  v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v7)
  {
    goto LABEL_17;
  }

LABEL_4:
  v8 = v7 - 1;
  if (v7 < 1)
  {
    __break(1u);
    return;
  }

  for (i = 0; ; ++i)
  {
    if ((v6 & 0xC000000000000001) != 0)
    {
      MEMORY[0x1DA6FB460](i, v6);
    }

    else
    {
    }

    v10 = swift_unknownObjectWeakLoadStrong();
    if (!v10)
    {
      break;
    }

    v11 = v10;
    v12 = v4;
    [v11 locationDetectionManager:v12 didChangeAuthorizationStatus:a2];

    swift_unknownObjectRelease();
    if (v8 == i)
    {

      goto LABEL_15;
    }

LABEL_7:
    ;
  }

  if (v8 != i)
  {
    goto LABEL_7;
  }

LABEL_15:
}

uint64_t sub_1D5BAEF38()
{
  v1 = v0[2];
  v2 = v0[3];
  v0[10] = v1;
  v3 = [v1 puzzlesConfig];
  v0[11] = v3;
  v4 = *(v2 + OBJC_IVAR____TtC8NewsFeed20PuzzleHistoryService_puzzleHistory);
  v0[12] = v4;
  [v4 setAllowLowerProgressOnCompletedPuzzles_];
  v5 = (v2 + OBJC_IVAR____TtC8NewsFeed20PuzzleHistoryService_puzzleService);
  v6 = *(v2 + OBJC_IVAR____TtC8NewsFeed20PuzzleHistoryService_puzzleService + 24);
  v7 = v5[4];
  __swift_project_boxed_opaque_existential_1(v5, v6);
  v8 = [v3 puzzleTypes];
  v9 = sub_1D726267C();
  v0[13] = v9;

  v12 = (*(v7 + 104) + **(v7 + 104));
  v10 = swift_task_alloc();
  v0[14] = v10;
  *v10 = v0;
  v10[1] = sub_1D5BAFDD4;

  return v12(v9, v6, v7);
}

uint64_t PuzzleService.puzzleTypes(for:)(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1D5BAB5C0, 0, 0);
}

uint64_t sub_1D5BAF144()
{
  swift_getObjectType();

  return sub_1D725B1CC();
}

uint64_t sub_1D5BAF180()
{
  swift_getObjectType();

  return sub_1D725B1BC();
}

uint64_t sub_1D5BAF200(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1D5B64680;

  return sub_1D5BAF2B4(a1, v4, v5, v6);
}

uint64_t sub_1D5BAF2B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  v5 = swift_task_alloc();
  *(v4 + 24) = v5;
  *v5 = v4;
  v5[1] = sub_1D5BAF348;

  return sub_1D5B73F60();
}

uint64_t sub_1D5BAF348(char a1)
{
  v2 = *(*v1 + 16);
  *(*v1 + 48) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D5C41EF0, v2, 0);
}

uint64_t sub_1D5BAF460(uint64_t a1, uint64_t a2, void *a3, unint64_t *a4)
{
  v5 = a2;
  v6 = *(a1 + 32);
  if (a2)
  {
    sub_1D5B5534C(0, a4);
    v5 = sub_1D7261D3C();
  }

  v7 = a3;
  v6(v5, a3);
}

uint64_t sub_1D5BAF520(uint64_t a1, id a2)
{
  if (a2)
  {
    v10 = a2;
    v2 = a2;
LABEL_3:
    sub_1D5BAB764(0, &qword_1EDF1ADB8, &unk_1EDF1AE60, &qword_1EDF3C700);
    return sub_1D726286C();
  }

  if (!a1)
  {
LABEL_8:
    sub_1D5F75098();
    v8 = swift_allocError();
    *v9 = 2;
    v10 = v8;
    goto LABEL_3;
  }

  v4 = *(a1 + 16);
  if (v4)
  {
    v6 = sub_1D5C38490(*(a1 + 16), 0);
    v7 = sub_1D5C38498(&v10, v6 + 32, v4, a1);

    sub_1D5B87E38();
    if (v7 != v4)
    {
      __break(1u);
      goto LABEL_8;
    }
  }

  else
  {
    v6 = MEMORY[0x1E69E7CC0];
  }

  v10 = v6;
  sub_1D5BAB764(0, &qword_1EDF1ADB8, &unk_1EDF1AE60, &qword_1EDF3C700);
  return sub_1D726287C();
}

uint64_t sub_1D5BAF728()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_1D5F68BBC;
  }

  else
  {

    v2 = sub_1D5BAFD68;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D5BAF844(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

uint64_t type metadata accessor for FeedEngagementBanner()
{
  result = qword_1EDF37CC8;
  if (!qword_1EDF37CC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata accessor for FeedLayoutCacheDynamicKey()
{
  result = qword_1EDF36180;
  if (!qword_1EDF36180)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata accessor for FeedLayoutCacheFastPathResult()
{
  result = qword_1EDF35728;
  if (!qword_1EDF35728)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D5BAFA28(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_1D5BB0F34(255, a2, a3, type metadata accessor for HeadlineView);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t type metadata accessor for VideoView()
{
  result = qword_1EDF1B9F8;
  if (!qword_1EDF1B9F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1D5BAFAD8()
{
  result = qword_1EDF1A660;
  if (!qword_1EDF1A660)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDF1A660);
  }

  return result;
}

_OWORD *sub_1D5BAFB24(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1D5B69D90(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_1D5C06BE0();
      v11 = v19;
      goto LABEL_8;
    }

    sub_1D5BAFF10(v16, a4 & 1);
    v11 = sub_1D5B69D90(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = sub_1D726493C();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 32 * v11);
    __swift_destroy_boxed_opaque_existential_1(v22);

    return sub_1D5B7C390(a1, v22);
  }

  else
  {
    sub_1D5BABA3C(v11, a2, a3, a1, v21);
  }
}

uint64_t objectdestroy_194Tm()
{
  sub_1D5BAB764(0, &qword_1EDF1ADB8, &unk_1EDF1AE60, &qword_1EDF3C700);
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_1D5BAFD68()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1D5BAFDD4(uint64_t a1)
{
  v3 = *v2;
  v3[15] = a1;
  v3[16] = v1;

  if (v1)
  {
    v4 = v3[5];
    v5 = v3[6];
    v6 = sub_1D6EF0E68;
  }

  else
  {

    v4 = v3[5];
    v5 = v3[6];
    v6 = sub_1D5BB03CC;
  }

  return MEMORY[0x1EEE6DFA0](v6, v4, v5);
}

uint64_t sub_1D5BAFF10(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_1D5BB0CE0();
  v33 = a2;
  result = sub_1D726410C();
  v7 = result;
  if (*(v5 + 16))
  {
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
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = (*(v5 + 56) + 32 * v20);
      if (v33)
      {
        sub_1D5B7C390(v24, v34);
      }

      else
      {
        sub_1D5B76B10(v24, v34);
      }

      sub_1D7264A0C();
      sub_1D72621EC();
      result = sub_1D7264A5C();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
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
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      result = sub_1D5B7C390(v34, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_1D5BB01BC()
{
  v0 = sub_1D726207C();
  v2 = v1;
  if (v0 == sub_1D726207C() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_1D72646CC();
  }

  return v5 & 1;
}

uint64_t sub_1D5BB0244(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

void sub_1D5BB028C(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t), unint64_t *a5)
{
  if (!*a2)
  {
    sub_1D6A559EC(255, a3, a4, type metadata accessor for HeadlineView);
    sub_1D6A55A50(a5, a3, a4);
    v9 = sub_1D725DC4C();
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_1D5BB032C(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t), unint64_t *a5)
{
  if (!*a2)
  {
    sub_1D5BB0F34(255, a3, a4, type metadata accessor for HeadlineView);
    sub_1D5BAFA28(a5, a3, a4);
    v9 = sub_1D725DC4C();
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void *sub_1D5BB03CC()
{
  v26 = v0;
  v1 = v0[15];

  if (v1 >> 62)
  {
    v2 = sub_1D7263BFC();
    if (v2)
    {
LABEL_3:
      v25 = MEMORY[0x1E69E7CC0];
      result = sub_1D5C4223C(0, v2 & ~(v2 >> 63), 0);
      if (v2 < 0)
      {
        __break(1u);
        return result;
      }

      v4 = 0;
      v5 = v1 & 0xC000000000000001;
      v23 = v0[15] + 32;
      v24 = v0;
      v6 = v25;
      do
      {
        if (v5)
        {
          v7 = MEMORY[0x1DA6FB460](v4, v24[15]);
        }

        else
        {
          v7 = *(v23 + 8 * v4);
          swift_unknownObjectRetain();
        }

        swift_getObjectType();
        v8 = [v7 identifier];
        v9 = sub_1D726207C();
        v11 = v10;

        v12 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedInteger_];
        swift_unknownObjectRelease();
        v25 = v6;
        v14 = *(v6 + 16);
        v13 = *(v6 + 24);
        if (v14 >= v13 >> 1)
        {
          sub_1D5C4223C((v13 > 1), v14 + 1, 1);
          v6 = v25;
        }

        ++v4;
        *(v6 + 16) = v14 + 1;
        v15 = (v6 + 24 * v14);
        v15[4] = v9;
        v15[5] = v11;
        v15[6] = v12;
      }

      while (v2 != v4);
      v0 = v24;

      if (*(v6 + 16))
      {
        goto LABEL_12;
      }

      goto LABEL_15;
    }
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
      goto LABEL_3;
    }
  }

  if (*(MEMORY[0x1E69E7CC0] + 16))
  {
LABEL_12:
    sub_1D5C426D8();
    v16 = sub_1D726412C();
    goto LABEL_16;
  }

LABEL_15:
  v16 = MEMORY[0x1E69E7CC8];
LABEL_16:
  v17 = v0[16];
  v25 = v16;

  sub_1D5BB06E0(v18, 1, &v25);
  if (v17)
  {

    return swift_unexpectedError();
  }

  else
  {
    v20 = v0[11];
    v19 = v0[12];

    sub_1D5B5A498(0, &qword_1EDF1A660);
    v21 = sub_1D7261D2C();

    [v19 setPuzzleTypeTraits_];

    swift_unknownObjectRelease();
    v22 = v0[1];

    return v22();
  }
}

void sub_1D5BB06E0(void *a1, char a2, void *a3)
{
  v39 = a1[2];
  if (!v39)
  {
    goto LABEL_21;
  }

  LOBYTE(v5) = a2;
  v7 = a1[4];
  v6 = a1[5];
  v8 = a1[6];
  v9 = *a3;

  v10 = v8;
  v11 = sub_1D5B69D90(v7, v6);
  v13 = v9[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v17 = v12;
  if (v9[3] < v16)
  {
    sub_1D6D6F5E4(v16, v5 & 1);
    v11 = sub_1D5B69D90(v7, v6);
    if ((v17 & 1) == (v18 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    v11 = sub_1D726493C();
    __break(1u);
  }

  if (v5)
  {
LABEL_7:
    if (v17)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  v21 = v11;
  sub_1D6D831E4();
  v11 = v21;
  if (v17)
  {
LABEL_8:
    v19 = swift_allocError();
    swift_willThrow();
    v20 = v19;
    sub_1D5BA6EF4();
    if ((swift_dynamicCast() & 1) == 0)
    {

      return;
    }

    goto LABEL_26;
  }

LABEL_11:
  v22 = *a3;
  *(*a3 + 8 * (v11 >> 6) + 64) |= 1 << v11;
  v23 = (v22[6] + 16 * v11);
  *v23 = v7;
  v23[1] = v6;
  *(v22[7] + 8 * v11) = v10;
  v24 = v22[2];
  v15 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v15)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    sub_1D7263D4C();
    MEMORY[0x1DA6F9910](0xD00000000000001BLL, 0x80000001D73F65C0);
    sub_1D7263F9C();
    MEMORY[0x1DA6F9910](39, 0xE100000000000000);
    sub_1D726402C();
    __break(1u);
    return;
  }

  v22[2] = v25;
  if (v39 != 1)
  {
    v5 = (a1 + 9);
    v26 = 1;
    while (v26 < a1[2])
    {
      v7 = *(v5 - 2);
      v6 = *(v5 - 1);
      v27 = *v5;
      v28 = *a3;

      v10 = v27;
      v29 = sub_1D5B69D90(v7, v6);
      v31 = v28[2];
      v32 = (v30 & 1) == 0;
      v15 = __OFADD__(v31, v32);
      v33 = v31 + v32;
      if (v15)
      {
        goto LABEL_23;
      }

      v17 = v30;
      if (v28[3] < v33)
      {
        sub_1D6D6F5E4(v33, 1);
        v29 = sub_1D5B69D90(v7, v6);
        if ((v17 & 1) != (v34 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v17)
      {
        goto LABEL_8;
      }

      v35 = *a3;
      *(*a3 + 8 * (v29 >> 6) + 64) |= 1 << v29;
      v36 = (v35[6] + 16 * v29);
      *v36 = v7;
      v36[1] = v6;
      *(v35[7] + 8 * v29) = v10;
      v37 = v35[2];
      v15 = __OFADD__(v37, 1);
      v38 = v37 + 1;
      if (v15)
      {
        goto LABEL_24;
      }

      ++v26;
      v35[2] = v38;
      v5 += 3;
      if (v39 == v26)
      {
        goto LABEL_21;
      }
    }

    goto LABEL_25;
  }

LABEL_21:
}

uint64_t sub_1D5BB0A7C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

unint64_t sub_1D5BB0AB8()
{
  result = qword_1EDF3C840;
  if (!qword_1EDF3C840)
  {
    sub_1D5B5D2B4(255, &qword_1EDF43BA0, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF3C840);
  }

  return result;
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
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

void *sub_1D5BB0B48(void *result, int64_t a2, char a3, void *a4, unint64_t *a5, uint64_t (*a6)(uint64_t))
{
  v7 = result;
  if (a3)
  {
    v8 = a4[3];
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = a4[2];
  if (v9 <= v10)
  {
    v11 = a4[2];
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    sub_1D5B5AB24(0, a5, a6, MEMORY[0x1E69E6F90]);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 17;
    }

    v12[2] = v10;
    v12[3] = 2 * (v14 >> 4);
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  if (v7)
  {
    if (v12 != a4 || v12 + 4 >= &a4[2 * v10 + 4])
    {
      memmove(v12 + 4, a4 + 4, 16 * v10);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1D5B5D9E0();
    swift_arrayInitWithCopy();
  }

  return v12;
}

uint64_t sub_1D5BB0C80()
{
  sub_1D5BAA2FC();
  swift_allocObject();
  result = sub_1D7264C2C();
  qword_1EDFFCEE0 = result;
  return result;
}

void sub_1D5BB0CE0()
{
  if (!qword_1EDF1A300)
  {
    v0 = sub_1D726413C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF1A300);
    }
  }
}

void sub_1D5BB0D44()
{
  if (!qword_1EDF1A788)
  {
    type metadata accessor for AttributeName(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDF1A788);
    }
  }
}

void sub_1D5BB0DB0()
{
  if (!qword_1EDF1B790)
  {
    v0 = sub_1D7261E1C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF1B790);
    }
  }
}

void sub_1D5BB0E14()
{
  if (!qword_1EDF1A2C0)
  {
    type metadata accessor for AttributeName(255);
    sub_1D5BABC90(&qword_1EDF1A790, type metadata accessor for AttributeName);
    v0 = sub_1D726413C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF1A2C0);
    }
  }
}

uint64_t type metadata accessor for FeedLayoutCacheKey()
{
  result = qword_1EDF38788;
  if (!qword_1EDF38788)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D5BB0F34(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1D5BB0F98()
{
  v0 = sub_1D72597FC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D72597EC();
  MEMORY[0x1EEE9AC00](v5, v6);
  (*(v8 + 104))(v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x1E69D6E90]);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6EA0], v0);
  v10[1] = 0x3FD999999999999ALL;
  sub_1D5B6E12C(0, &qword_1EDF3C208);
  swift_allocObject();
  result = sub_1D725987C();
  qword_1EDF3C368 = result;
  return result;
}

uint64_t sub_1D5BB1170@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B49474(0, qword_1EDF20A88);
  result = sub_1D725AACC();
  if (v19)
  {
    v4 = __swift_mutable_project_boxed_opaque_existential_1(v18, v19);
    MEMORY[0x1EEE9AC00](v4, v4);
    v6 = (v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v7 + 16))(v6);
    v8 = *v6;
    v9 = type metadata accessor for EngagementBannerViewStyler();
    v17[3] = v9;
    v17[4] = &off_1F519C300;
    v17[0] = v8;
    v10 = type metadata accessor for EngagementBannerViewRenderer();
    v11 = swift_allocObject();
    v12 = __swift_mutable_project_boxed_opaque_existential_1(v17, v9);
    MEMORY[0x1EEE9AC00](v12, v12);
    v14 = (v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v15 + 16))(v14);
    v16 = *v14;
    v11[5] = v9;
    v11[6] = &off_1F519C300;
    v11[2] = v16;
    __swift_destroy_boxed_opaque_existential_1(v17);
    result = __swift_destroy_boxed_opaque_existential_1(v18);
    a2[3] = v10;
    a2[4] = &protocol witness table for EngagementBannerViewRenderer;
    *a2 = v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1D5BB13E4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D726393C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1D5BB1438(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1D5BB149C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D726393C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1D5BB14F0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1D5BB1554(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D726393C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1D5BB15A8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1D5BB160C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1D5BB1670(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1D5BB16D4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1D5BB1738()
{
  if (!qword_1EDF3AA18)
  {
    sub_1D72609CC();
    sub_1D7260A0C();
    sub_1D7260A9C();
    sub_1D5B48988(&qword_1EDF43930, 255, MEMORY[0x1E69B41B0]);
    v0 = sub_1D72606FC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF3AA18);
    }
  }
}

uint64_t sub_1D5BB1834(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4)
{
  v8 = type metadata accessor for HiddenContentPlacardViewLayoutAttributesFactory();
  v32[3] = v8;
  v32[4] = &off_1F51A66D8;
  v32[0] = a1;
  v9 = type metadata accessor for HiddenContentPlacardViewStyler();
  v30 = v9;
  v31 = &off_1F519BAF0;
  v29[0] = a2;
  type metadata accessor for HiddenContentPlacardViewRenderer();
  v10 = swift_allocObject();
  v11 = __swift_mutable_project_boxed_opaque_existential_1(v32, v8);
  MEMORY[0x1EEE9AC00](v11, v11);
  v13 = (&v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v14 + 16))(v13);
  v15 = __swift_mutable_project_boxed_opaque_existential_1(v29, v30);
  MEMORY[0x1EEE9AC00](v15, v15);
  v17 = (&v22 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v18 + 16))(v17);
  v19 = *v13;
  v20 = *v17;
  v27 = v8;
  v28 = &off_1F51A66D8;
  v25 = &off_1F519BAF0;
  *&v26 = v19;
  v24 = v9;
  *&v23 = v20;
  sub_1D72596FC();
  sub_1D72596DC();
  if (qword_1EDF3C360 != -1)
  {
    swift_once();
  }

  sub_1D72596CC();

  *(v10 + 144) = v22;
  sub_1D5B63F14(&v26, v10 + 16);
  sub_1D5B63F14(&v23, v10 + 56);
  sub_1D5B63F14(a3, v10 + 96);
  *(v10 + 136) = a4;
  __swift_destroy_boxed_opaque_existential_1(v29);
  __swift_destroy_boxed_opaque_existential_1(v32);
  return v10;
}

unint64_t sub_1D5BB1ABC@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for EngagementBannerViewStyler();
  v3 = swift_allocObject();
  result = sub_1D5BB8CF8(MEMORY[0x1E69E7CC0]);
  *(v3 + 16) = result;
  a1[3] = v2;
  a1[4] = &off_1F519C300;
  *a1 = v3;
  return result;
}

uint64_t sub_1D5BB1B68(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_1D5BB1BB0(uint64_t a1, void *a2)
{
  sub_1D725960C();
  v3 = sub_1D72596AC();

  if (v3)
  {
    sub_1D725960C();
    sub_1D72595FC();

    type metadata accessor for AdsAssembly();
    sub_1D5B48988(&unk_1EC895578, v4, type metadata accessor for AdsAssembly);
    sub_1D725964C();

    return v8;
  }

  else
  {
    __swift_project_boxed_opaque_existential_1(a2, a2[3]);
    sub_1D5BBDE04();
    result = sub_1D725AABC();
    if (result)
    {
      v6 = [result possiblyUnfetchedAppConfiguration];
      swift_unknownObjectRelease();
      if ([v6 respondsToSelector_])
      {
        v7 = [v6 feedAdScreenfulsToPrefetch];
        swift_unknownObjectRelease();
        return v7;
      }

      else
      {
        swift_unknownObjectRelease();
        return 3;
      }
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1D5BB1D1C(void *a1)
{
  sub_1D726076C();
  MEMORY[0x1EEE9AC00]();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B483C4(0, &qword_1EDF3A9D0);
  result = sub_1D725AACC();
  if (!v4)
  {
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B483C4(0, &qword_1EDF3AA98);
  result = sub_1D725AACC();
  if (!v3)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5BB96DC();
  result = sub_1D725AABC();
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B48C54();
  result = sub_1D725AABC();
  if (result)
  {
    sub_1D726075C();
    sub_1D5BB1738();
    swift_allocObject();
    return sub_1D72606EC();
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_1D5BB1EF8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5BB1FE4();
  sub_1D72621FC();
  v3 = sub_1D725AA7C();

  if (v3)
  {
    v5 = type metadata accessor for AdPolicyViewportEnvironmentProvider();
    v6 = swift_allocObject();
    *(v6 + 16) = v3;
    a2[3] = v5;
    result = sub_1D5B48988(&qword_1EDF1DBD0, 255, type metadata accessor for AdPolicyViewportEnvironmentProvider);
    a2[4] = result;
    *a2 = v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1D5BB1FE4()
{
  result = qword_1EDF1ABF0;
  if (!qword_1EDF1ABF0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDF1ABF0);
  }

  return result;
}

id FeedBannerAdIntegrator.init(pipeline:blueprintProvider:policyValidator:layoutCollectionProvider:journal:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *v5;
  v8 = *MEMORY[0x1E69E7D40];
  v9 = sub_1D5BB20BC(a1, a2, a3, a4, a5);
  (*(*(*((v8 & v7) + 0x50) - 8) + 8))(a2);
  return v9;
}

id sub_1D5BB20BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v36 = a5;
  v33 = a3;
  v34 = a4;
  v31 = a1;
  v32 = a2;
  ObjectType = swift_getObjectType();
  v28 = *v5;
  v7 = v28;
  v29 = *MEMORY[0x1E69E7D40];
  v8 = v29;
  v30 = sub_1D726307C();
  v9 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30, v10);
  v12 = v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1D726304C();
  MEMORY[0x1EEE9AC00](v13, v14);
  v15 = sub_1D7261B2C();
  MEMORY[0x1EEE9AC00](v15 - 8, v16);
  v27 = *((v8 & v7) + 0xA8);
  v17 = sub_1D5B5DA7C();
  v26[1] = "NewsFeed.FeedBannerAdIntegrator";
  v26[2] = v17;
  sub_1D7261B1C();
  v38 = MEMORY[0x1E69E7CC0];
  sub_1D5B73830(&qword_1EDF1AA50, MEMORY[0x1E69E8030]);
  v18 = MEMORY[0x1E69E8030];
  sub_1D5B5E220(0, &unk_1EDF1AE90, MEMORY[0x1E69E8030], MEMORY[0x1E69E62F8]);
  sub_1D5B6D530(&qword_1EDF1AE80, &unk_1EDF1AE90, v18);
  sub_1D7263B6C();
  (*(v9 + 104))(v12, *MEMORY[0x1E69E8090], v30);
  *&v5[v27] = sub_1D72630BC();
  v19 = MEMORY[0x1E69E7D40];
  v5[*((*MEMORY[0x1E69E7D40] & *v5) + 0xB0)] = 0;
  *&v5[*((*v19 & *v5) + 0xB8)] = MEMORY[0x1E69E7CC0];
  v20 = v32;
  *&v5[*((*v19 & *v5) + 0x80)] = v31;
  v21 = v19;
  (*(*(*((v29 & v28) + 0x50) - 8) + 16))(&v6[*((*v19 & *v6) + 0x88)], v20);
  v22 = v33;
  sub_1D5B68374(v33, &v6[*((*v21 & *v6) + 0x90)]);
  v23 = v34;
  sub_1D5B68374(v34, &v6[*((*v21 & *v6) + 0x98)]);
  *&v6[*((*v21 & *v6) + 0xA0)] = v36;
  v37.receiver = v6;
  v37.super_class = ObjectType;
  v24 = objc_msgSendSuper2(&v37, sel_init);
  __swift_destroy_boxed_opaque_existential_1(v23);
  __swift_destroy_boxed_opaque_existential_1(v22);
  return v24;
}

void sub_1D5BB2500(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1D5BB2564()
{
  sub_1D5BB2500(319, qword_1EDF1F920, type metadata accessor for FormatMicaSectionDecorationItem, MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1D5BB26FC(uint64_t a1)
{
  sub_1D5B53C80(0, &unk_1EDF31BF8, &qword_1EDF412B0, &protocol descriptor for TagServiceType, MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D5BB27A8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B483C4(0, qword_1EDF3FEB8);
  result = sub_1D725AACC();
  if (!v48)
  {
    __break(1u);
    goto LABEL_19;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B483C4(0, qword_1EDF3EFA0);
  result = sub_1D725AACC();
  v5 = v45;
  if (!v45)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B483C4(0, &qword_1EDF3FFC0);
  result = sub_1D725AACC();
  v6 = v43;
  if (!v43)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B483C4(0, &qword_1EDF3EA78);
  result = sub_1D725AACC();
  v7 = v41;
  if (!v41)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v19 = v42;
  v20 = v44;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B483C4(0, &qword_1EDF3A998);
  result = sub_1D725AACC();
  if (!v40)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B483C4(0, qword_1EDF3EA80);
  result = sub_1D725AACC();
  v8 = v37;
  if (!v37)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v17 = v38;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B483C4(0, qword_1EDF3E738);
  result = sub_1D725AACC();
  v18 = v35;
  if (!v35)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v15 = v36;
  v16 = v46;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B483C4(0, qword_1EDF3E5E0);
  result = sub_1D725AACC();
  if (!v33)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v13 = v34;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B48420();
  result = sub_1D725AABC();
  v14 = result;
  if (!result)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B483C4(0, qword_1EDF3D838);
  result = sub_1D725AACC();
  if (!v32)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B483C4(0, &unk_1EDF3F3C0);
  result = sub_1D725AACC();
  if (!v30)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B483C4(0, &qword_1EDF3D810);
  result = sub_1D725AACC();
  if (!v28)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B483C4(0, &qword_1EDF3B868);
  result = sub_1D725AACC();
  if (!v26)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v12 = v33;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D725F43C();
  v21 = sub_1D725AABC();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B483C4(0, qword_1EDF42838);
  result = sub_1D725AACC();
  if (!v24)
  {
LABEL_31:
    __break(1u);
    return result;
  }

  type metadata accessor for FeedItemRenderer();
  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *(v9 + 24) = 0;
  *(v9 + 432) = MEMORY[0x1E69E7CD0];
  *(v9 + 440) = 0;
  *(v9 + 448) = 0;
  sub_1D5B68374(v47, v9 + 32);
  sub_1D5B68374(v47, v22);
  type metadata accessor for FeedItemCellSelectionRenderer();
  v10 = swift_allocObject();
  sub_1D5B63F14(v22, v10 + 16);
  *(v9 + 72) = v10;
  *(v9 + 80) = v5;
  *(v9 + 88) = v16;
  *(v9 + 96) = v6;
  *(v9 + 104) = v20;
  *(v9 + 112) = v7;
  *(v9 + 120) = v19;
  sub_1D5B68374(v39, v9 + 128);
  *(v9 + 168) = v8;
  *(v9 + 176) = v17;
  *(v9 + 184) = v18;
  *(v9 + 192) = v15;
  *(v9 + 200) = v12;
  *(v9 + 208) = v13;
  *(v9 + 216) = v14;
  sub_1D5B68374(v31, v9 + 224);
  sub_1D5B68374(v29, v9 + 264);
  sub_1D5B68374(v27, v9 + 304);
  sub_1D5B68374(v25, v9 + 344);
  *(v9 + 424) = v21;
  sub_1D5B68374(v23, v9 + 384);
  v11 = qword_1EDF3C2D0;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();

  if (v11 != -1)
  {
    swift_once();
  }

  swift_allocObject();
  swift_weakInit();
  sub_1D5B471E8(qword_1EDF392F0, 255, type metadata accessor for FeedItemRenderer);
  sub_1D725965C();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1(v23);
  __swift_destroy_boxed_opaque_existential_1(v25);
  __swift_destroy_boxed_opaque_existential_1(v27);
  __swift_destroy_boxed_opaque_existential_1(v29);
  __swift_destroy_boxed_opaque_existential_1(v31);
  __swift_destroy_boxed_opaque_existential_1(v39);
  result = __swift_destroy_boxed_opaque_existential_1(v47);
  *(v9 + 440) = v22[0];
  *a2 = v9;
  a2[1] = &protocol witness table for FeedItemRenderer;
  return result;
}

uint64_t sub_1D5BB2F38()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1D5BB2F74@<X0>(void (*a1)(void)@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  a1(0);
  result = swift_allocObject();
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t sub_1D5BB2FD8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for FeedItemRendererTool();
  result = sub_1D725AABC();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  v5 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B483C4(0, &qword_1EDF3EA70);
  result = sub_1D725AACC();
  if (!v10)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B483C4(0, &qword_1EDF439E0);
  result = sub_1D725AACC();
  if (!v8)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D725A60C();
  result = sub_1D725AABC();
  if (result)
  {
    sub_1D5B471E8(&qword_1EDF3BED0, 255, MEMORY[0x1E698AAC8]);
    sub_1D725E83C();
    swift_allocObject();
    v6 = sub_1D725E81C();
    type metadata accessor for CoverIssueViewRenderer();
    v7 = swift_allocObject();
    result = sub_1D5B63F14(&v9, v7 + 24);
    *(v7 + 16) = v5;
    *(v7 + 64) = v6;
    *a2 = v7;
    a2[1] = &off_1F51F30E0;
    return result;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_1D5BB31D8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B483C4(0, qword_1EDF3FEB8);
  result = sub_1D725AACC();
  if (*(&v10 + 1))
  {
    sub_1D5B63F14(&v9, v11);
    v4 = v12;
    v5 = v13;
    __swift_project_boxed_opaque_existential_1(v11, v12);
    (*(v5 + 32))(&v9, v4, v5);
    v6 = type metadata accessor for IssueCoverViewStyler();
    v7 = swift_allocObject();
    v8 = v10;
    *(v7 + 16) = v9;
    *(v7 + 32) = v8;
    a2[3] = v6;
    a2[4] = &off_1F51F46C0;
    *a2 = v7;
    return __swift_destroy_boxed_opaque_existential_1(v11);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D5BB32CC()
{
  type metadata accessor for LayeredMediaLayerRenderableProvider();

  return swift_allocObject();
}

uint64_t sub_1D5BB3300@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B483C4(0, qword_1EDF3DBC8);
  result = sub_1D725AACC();
  if (v21)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1D5B541F8();
    result = sub_1D725AABC();
    if (result)
    {
      v5 = result;
      v6 = __swift_mutable_project_boxed_opaque_existential_1(v20, v21);
      MEMORY[0x1EEE9AC00](v6, v6);
      v8 = (v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v9 + 16))(v8);
      v10 = *v8;
      v11 = type metadata accessor for LayeredMediaVariantFactory();
      v19[3] = v11;
      v19[4] = &off_1F5132ED8;
      v19[0] = v10;
      v12 = type metadata accessor for LayeredMediaLayerProviderFactory();
      v13 = swift_allocObject();
      v14 = __swift_mutable_project_boxed_opaque_existential_1(v19, v11);
      MEMORY[0x1EEE9AC00](v14, v14);
      v16 = (v19 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v17 + 16))(v16);
      v18 = *v16;
      v13[5] = v11;
      v13[6] = &off_1F5132ED8;
      v13[2] = v18;
      v13[7] = v5;
      __swift_destroy_boxed_opaque_existential_1(v19);
      result = __swift_destroy_boxed_opaque_existential_1(v20);
      a2[3] = v12;
      a2[4] = &protocol witness table for LayeredMediaLayerProviderFactory;
      *a2 = v13;
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

uint64_t sub_1D5BB359C(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B483C4(0, &unk_1EDF3D500);
  result = sub_1D725AACC();
  if (!v23)
  {
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B483C4(0, &unk_1EDF3D200);
  result = sub_1D725AACC();
  if (!v21)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B483C4(0, &qword_1EDF3D820);
  result = sub_1D725AACC();
  if (!v19)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B483C4(0, &qword_1EDF439F8);
  result = sub_1D725AA8C();
  if (v17)
  {
    v3 = __swift_mutable_project_boxed_opaque_existential_1(v22, v23);
    MEMORY[0x1EEE9AC00](v3, v3);
    v5 = (&v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v6 + 16))(v5);
    v7 = __swift_mutable_project_boxed_opaque_existential_1(v20, v21);
    MEMORY[0x1EEE9AC00](v7, v7);
    v9 = (&v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v10 + 16))(v9);
    v11 = __swift_mutable_project_boxed_opaque_existential_1(v18, v19);
    MEMORY[0x1EEE9AC00](v11, v11);
    v13 = (&v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v14 + 16))(v13);
    v15 = sub_1D5BB7DD0(*v5, *v9, *v13, &v16);
    __swift_destroy_boxed_opaque_existential_1(v18);
    __swift_destroy_boxed_opaque_existential_1(v20);
    __swift_destroy_boxed_opaque_existential_1(v22);
    return v15;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_1D5BB3948@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B483C4(0, &qword_1EDF3D820);
  result = sub_1D725AACC();
  if (v19)
  {
    v4 = __swift_mutable_project_boxed_opaque_existential_1(v18, v19);
    MEMORY[0x1EEE9AC00](v4, v4);
    v6 = (v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v7 + 16))(v6);
    v8 = *v6;
    v9 = type metadata accessor for LayeredMediaVariantSelector();
    v17[3] = v9;
    v17[4] = &off_1F5143A50;
    v17[0] = v8;
    v10 = type metadata accessor for LayeredMediaImageVariantSelector();
    v11 = swift_allocObject();
    v12 = __swift_mutable_project_boxed_opaque_existential_1(v17, v9);
    MEMORY[0x1EEE9AC00](v12, v12);
    v14 = (v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v15 + 16))(v14);
    v16 = *v14;
    v11[5] = v9;
    v11[6] = &off_1F5143A50;
    v11[2] = v16;
    __swift_destroy_boxed_opaque_existential_1(v17);
    result = __swift_destroy_boxed_opaque_existential_1(v18);
    a2[3] = v10;
    a2[4] = &off_1F51A0330;
    *a2 = v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D5BB3C78@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for FeedItemRendererTool();
  result = sub_1D725AABC();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  v5 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B483C4(0, &qword_1EDF439F8);
  result = sub_1D725AA8C();
  if (!v10)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B483C4(0, &qword_1EDF439E0);
  result = sub_1D725AACC();
  if (!v8)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D725A60C();
  result = sub_1D725AABC();
  if (result)
  {
    sub_1D5B471E8(&qword_1EDF3BED0, 255, MEMORY[0x1E698AAC8]);
    sub_1D725E83C();
    swift_allocObject();
    v6 = sub_1D725E81C();
    type metadata accessor for CoverChannelViewRenderer();
    v7 = swift_allocObject();
    *(v7 + 16) = v5;
    result = sub_1D5B63F14(&v9, v7 + 24);
    *(v7 + 64) = v6;
    *a2 = v7;
    a2[1] = &off_1F51E0590;
    return result;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_1D5BB3EA0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B5534C(0, &qword_1EDF439C0);
  result = sub_1D725AABC();
  if (result)
  {
    sub_1D725D0FC();
    swift_allocObject();
    sub_1D725D0EC();
    sub_1D725D41C();
    swift_allocObject();
    sub_1D725D40C();
    v4 = sub_1D725CA3C();
    swift_allocObject();
    result = sub_1D725CA2C();
    v5 = MEMORY[0x1E69D7580];
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

uint64_t sub_1D5BB3FD4@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v4 = sub_1D5B483C4(0, &qword_1EDF3F6B0);
  result = sub_1D725AACC();
  if (!v149)
  {
    __break(1u);
    goto LABEL_37;
  }

  v136 = v4;
  v129 = a2;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v131 = sub_1D5B483C4(0, qword_1EDF3FBE8);
  result = sub_1D725AACC();
  if (!v146)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v6 = __swift_mutable_project_boxed_opaque_existential_1(&v148, v149);
  v135 = &v111;
  MEMORY[0x1EEE9AC00](v6, v6);
  v8 = (&v111 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v9 + 16))(v8);
  v10 = __swift_mutable_project_boxed_opaque_existential_1(&v145, v146);
  v134 = &v111;
  MEMORY[0x1EEE9AC00](v10, v10);
  v12 = (&v111 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v13 + 16))(v12);
  v14 = *v8;
  v15 = *v12;
  v16 = type metadata accessor for FormatImageRenderer();
  v143 = v16;
  v144 = &off_1F5198910;
  *&v142 = v14;
  v17 = type metadata accessor for FormatMicaRenderer();
  v140 = v17;
  v141 = &off_1F51A2C78;
  v138 = v15;
  type metadata accessor for FormatViewNodeRenderer();
  v18 = swift_allocObject();
  v19 = __swift_mutable_project_boxed_opaque_existential_1(&v142, v16);
  v20 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19, v19);
  v22 = *(v21 + 16);
  v133 = (v21 + 16);
  v132 = v22;
  v22(&v111 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = __swift_mutable_project_boxed_opaque_existential_1(&v138, v140);
  MEMORY[0x1EEE9AC00](v23, v23);
  v25 = (&v111 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v26 + 16))(v25);
  v27 = *(&v111 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v28 = *v25;
  v18[5] = v16;
  v18[6] = &off_1F5198910;
  v18[2] = v27;
  v130 = v17;
  v18[10] = v17;
  v18[11] = &off_1F51A2C78;
  v128 = v18;
  v18[7] = v28;
  __swift_destroy_boxed_opaque_existential_1(&v138);
  __swift_destroy_boxed_opaque_existential_1(&v142);
  __swift_destroy_boxed_opaque_existential_1(&v145);
  __swift_destroy_boxed_opaque_existential_1(&v148);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B483C4(0, &qword_1EDF439E0);
  result = sub_1D725AACC();
  v29 = v148;
  if (!v148)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v30 = *(&v148 + 1);
  type metadata accessor for FormatTextNodeRenderer();
  v31 = swift_allocObject();
  v31[2] = v29;
  v31[3] = v30;
  type metadata accessor for FormatComputedContext();
  v32 = swift_allocObject();
  *(v32 + 16) = v29;
  *(v32 + 24) = v30;
  v135 = v31;
  v31[4] = v32;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  swift_unknownObjectRetain();
  result = sub_1D725AACC();
  if (!v149)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v33 = __swift_mutable_project_boxed_opaque_existential_1(&v148, v149);
  MEMORY[0x1EEE9AC00](v33, v33);
  v35 = (&v111 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v36 + 16))(v35);
  v37 = *v35;
  v146 = v16;
  v147 = &off_1F5198910;
  *&v145 = v37;
  type metadata accessor for FormatImageNodeRenderer();
  v38 = swift_allocObject();
  v39 = __swift_mutable_project_boxed_opaque_existential_1(&v145, v16);
  MEMORY[0x1EEE9AC00](v39, v39);
  v132(&v111 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v40 = *(&v111 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v38[5] = v16;
  v38[6] = &off_1F5198910;
  v38[2] = v40;
  __swift_destroy_boxed_opaque_existential_1(&v145);
  __swift_destroy_boxed_opaque_existential_1(&v148);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  result = sub_1D725AACC();
  v41 = v138;
  if (!v138)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v42 = v139;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v43 = sub_1D725A60C();
  result = sub_1D725AABC();
  if (!result)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v44 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B483C4(0, &unk_1EDF3D120);
  result = sub_1D725AACC();
  if (!v149)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v133 = v38;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v134 = sub_1D725CAFC();
  result = sub_1D725AABC();
  if (!result)
  {
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  v45 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B483C4(0, qword_1EDF36190);
  sub_1D725AACC();
  if (v143)
  {
    sub_1D5B63F14(&v142, &v145);
  }

  else
  {
    v46 = type metadata accessor for EmptyFeedDismissingManager();
    v47 = swift_allocObject();
    v146 = v46;
    v147 = &protocol witness table for EmptyFeedDismissingManager;
    *&v145 = v47;
  }

  type metadata accessor for FormatButtonNodeRenderer();
  v48 = swift_allocObject();
  *(v48 + 2) = v41;
  *(v48 + 3) = v42;
  *(v48 + 4) = v44;
  sub_1D5B63F14(&v148, v48 + 40);
  *(v48 + 10) = v45;
  sub_1D5B63F14(&v145, v48 + 88);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  result = sub_1D725AACC();
  v49 = v148;
  if (!v148)
  {
    goto LABEL_44;
  }

  v50 = *(&v148 + 1);
  type metadata accessor for FormatStateViewNodeRenderer();
  v51 = swift_allocObject();
  *(v51 + 16) = v49;
  *(v51 + 24) = v50;
  type metadata accessor for FormatCustomNodeRenderer();
  v52 = swift_allocObject();
  type metadata accessor for FormatGroupNodeRenderer();
  v53 = swift_allocObject();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for WebEmbedImageGenerator();
  result = sub_1D725AABC();
  if (!result)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  v54 = result;
  v126 = v53;
  v127 = v52;
  v132 = v48;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  result = sub_1D725AACC();
  v55 = v148;
  if (!v148)
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  v56 = *(&v148 + 1);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  result = sub_1D725AABC();
  if (!result)
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  v57 = result;
  type metadata accessor for FormatWebEmbedNodeRenderer();
  v58 = swift_allocObject();
  sub_1D5E01E20(0, &unk_1EDF3BAD8, type metadata accessor for WebEmbedViewController, sub_1D5BB60D4, MEMORY[0x1E69D6820]);
  swift_allocObject();
  v58[2] = sub_1D725B4BC();
  v58[3] = v54;
  v58[4] = v55;
  v58[5] = v56;
  v58[6] = v57;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for WebEmbedManager();
  result = sub_1D725AABC();
  if (!result)
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  v59 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for FormatAdMetricsNodeRenderer();
  result = sub_1D725AABC();
  if (!result)
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  v60 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  result = sub_1D725AACC();
  if (!v149)
  {
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  v131 = v51;
  v123 = v60;
  v124 = v59;
  v125 = v58;
  v136 = v43;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for FormatRunModeRunner();
  result = sub_1D725AABC();
  if (!result)
  {
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  v61 = result;
  v62 = __swift_mutable_project_boxed_opaque_existential_1(&v148, v149);
  MEMORY[0x1EEE9AC00](v62, v62);
  v64 = (&v111 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v65 + 16))(v64);
  v66 = *v64;
  v67 = v130;
  v146 = v130;
  v147 = &off_1F51A2C78;
  *&v145 = v66;
  type metadata accessor for FormatMicaNodeRenderer();
  v68 = swift_allocObject();
  v69 = __swift_mutable_project_boxed_opaque_existential_1(&v145, v67);
  MEMORY[0x1EEE9AC00](v69, v69);
  v71 = (&v111 - ((v70 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v72 + 16))(v71);
  v73 = *v71;
  v68[5] = v67;
  v68[6] = &off_1F51A2C78;
  v68[2] = v73;
  v68[7] = v61;
  __swift_destroy_boxed_opaque_existential_1(&v145);
  __swift_destroy_boxed_opaque_existential_1(&v148);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for FormatLayeredMediaNodeRenderer();
  result = sub_1D725AABC();
  if (!result)
  {
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  v74 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for FormatVideoNodeRenderer();
  result = sub_1D725AABC();
  v130 = result;
  if (!result)
  {
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for FormatIssueCoverNodeRenderer();
  result = sub_1D725AABC();
  if (!result)
  {
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  v75 = result;
  type metadata accessor for FormatGroupNodeMaskRenderer();
  v122 = swift_allocObject();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for FormatShareAttributionNodeRenderer();
  result = sub_1D725AABC();
  v121 = result;
  if (!result)
  {
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for ShareAttributionViewReuseManager();
  result = sub_1D725AABC();
  v120 = result;
  if (!result)
  {
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for FormatVideoPlayerNodeRenderer();
  result = sub_1D725AABC();
  v119 = result;
  if (!result)
  {
LABEL_57:
    __break(1u);
    goto LABEL_58;
  }

  v118 = v75;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for FormatProgressViewNodeRenderer();
  result = sub_1D725AABC();
  v117 = result;
  if (!result)
  {
LABEL_58:
    __break(1u);
    goto LABEL_59;
  }

  type metadata accessor for FormatPuzzleEmbedNodeRenderer();
  v116 = swift_allocObject();
  sub_1D5B68374(a1, &v148);
  type metadata accessor for FormatPuzzleEmbedViewControllerFactory();
  v76 = swift_allocObject();
  sub_1D5B63F14(&v148, v76 + 16);
  *&v148 = v76;
  sub_1D5BB6CF8();
  swift_allocObject();
  v115 = sub_1D725DD5C();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v77 = type metadata accessor for FormatSponsoredBannerNodeRenderer();
  result = sub_1D725AABC();
  if (!result)
  {
LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

  v149 = v77;
  v150 = &off_1F511BF98;
  *&v148 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for FeedItemRendererTool();
  result = sub_1D725AABC();
  v114 = result;
  if (!result)
  {
LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  result = sub_1D725AACC();
  v78 = v138;
  if (!v138)
  {
LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

  v113 = v139;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  result = sub_1D725AABC();
  if (!result)
  {
LABEL_62:
    __break(1u);
    goto LABEL_63;
  }

  v79 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  result = sub_1D725AABC();
  if (!result)
  {
LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

  v80 = result;
  v136 = v78;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for FormatLayoutResizingProvider();
  result = sub_1D725AABC();
  if (!result)
  {
LABEL_64:
    __break(1u);
    goto LABEL_65;
  }

  v81 = result;
  v112 = v74;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for FormatLayoutViewRouter();
  result = sub_1D725AABC();
  if (!result)
  {
LABEL_65:
    __break(1u);
    goto LABEL_66;
  }

  v82 = result;
  v111 = v79;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  result = sub_1D725AABC();
  if (result)
  {
    v83 = result;
    v84 = __swift_mutable_project_boxed_opaque_existential_1(&v148, v149);
    v134 = &v111;
    MEMORY[0x1EEE9AC00](v84, v84);
    v86 = (&v111 - ((v85 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v87 + 16))(v86);
    v88 = *v86;
    v146 = v77;
    v147 = &off_1F511BF98;
    *&v145 = v88;
    type metadata accessor for FormatLayoutViewRenderer();
    v89 = swift_allocObject();
    v90 = __swift_mutable_project_boxed_opaque_existential_1(&v145, v77);
    MEMORY[0x1EEE9AC00](v90, v90);
    v92 = (&v111 - ((v91 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v93 + 16))(v92);
    v94 = *v92;
    v143 = v77;
    v144 = &off_1F511BF98;
    *&v142 = v94;
    swift_unknownObjectWeakInit();
    v89[4] = 0;
    swift_unknownObjectWeakInit();
    type metadata accessor for FormatLayoutViewDebugger();
    v95 = swift_allocObject();
    v95[4] = sub_1D5BEE8B4;
    v95[5] = 0;
    v95[6] = sub_1D5BEE8B4;
    v95[7] = 0;
    v95[2] = sub_1D5BEE8B4;
    v95[3] = 0;
    v89[5] = v95;
    type metadata accessor for FormatTimer();
    v96 = swift_allocObject();
    v97 = MEMORY[0x1E69E7CC8];
    *(v96 + 16) = MEMORY[0x1E69E7CC8];
    *(v96 + 24) = v97;
    v89[38] = v96;
    type metadata accessor for FormatVisibilityRenderer();
    v89[39] = swift_allocObject();
    v98 = v135;
    v89[6] = v128;
    v89[7] = v98;
    v99 = v132;
    v89[8] = v133;
    v89[9] = v99;
    v100 = v127;
    v89[10] = v131;
    v89[11] = v100;
    v101 = v125;
    v89[12] = v126;
    v89[13] = v101;
    v102 = v123;
    v89[14] = v124;
    v89[15] = v102;
    v103 = v112;
    v89[16] = v68;
    v89[17] = v103;
    v89[18] = v130;
    type metadata accessor for FormatVideoPlayerViewControllerFactory();
    v137 = swift_allocObject();
    sub_1D5BB71E8();
    swift_allocObject();
    v104 = sub_1D725DD5C();
    v105 = v122;
    v89[19] = v118;
    v89[20] = v105;
    v106 = v120;
    v89[21] = v121;
    v89[22] = v106;
    v89[23] = v119;
    v89[24] = v104;
    v107 = v116;
    v89[25] = v117;
    v89[26] = v115;
    v89[27] = v107;
    sub_1D5B63F14(&v142, (v89 + 28));
    v108 = v136;
    v89[33] = v114;
    v89[34] = v108;
    v109 = v111;
    v89[36] = v80;
    v89[37] = v109;
    v89[35] = v113;
    v89[40] = v81;
    v89[41] = v82;
    v89[42] = v83;
    __swift_destroy_boxed_opaque_existential_1(&v145);
    result = __swift_destroy_boxed_opaque_existential_1(&v148);
    v110 = v129;
    *v129 = v89;
    v110[1] = &protocol witness table for FormatLayoutViewRenderer;
    return result;
  }

LABEL_66:
  __break(1u);
  return result;
}

uint64_t sub_1D5BB546C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B483C4(0, &qword_1EDF439F8);
  result = sub_1D725AA8C();
  if (!v12)
  {
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B5A498(0, &qword_1EDF1AB10);
  result = sub_1D725AABC();
  if (!result)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v5 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for FeedItemRendererTool();
  result = sub_1D725AABC();
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v6 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B483C4(0, &qword_1EDF439E0);
  result = sub_1D725AACC();
  if (v9)
  {
    v7 = type metadata accessor for FormatImageRenderer();
    v8 = swift_allocObject();
    result = sub_1D5B63F14(&v11, (v8 + 2));
    v8[7] = v6;
    v8[8] = v5;
    v8[9] = v9;
    v8[10] = v10;
    a2[3] = v7;
    a2[4] = &off_1F5198910;
    *a2 = v8;
    return result;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_1D5BB5668@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B5A498(0, &qword_1EDF1AB10);
  result = sub_1D725AABC();
  if (result)
  {
    v4 = result;
    v5 = type metadata accessor for FormatMicaRenderer();
    result = swift_allocObject();
    *(result + 16) = v4;
    a2[3] = v5;
    a2[4] = &off_1F51A2C78;
    *a2 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D5BB57B4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B483C4(0, qword_1EDF28CF8);
  result = sub_1D725AACC();
  if (!v24)
  {
    __break(1u);
    goto LABEL_10;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B483C4(0, &qword_1EDF20E40);
  result = sub_1D725AACC();
  if (!v22)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B483C4(0, &qword_1EDF3CFC0);
  result = sub_1D725AACC();
  if (!v20)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B483C4(0, &qword_1EDF3CFD0);
  result = sub_1D725AACC();
  if (!v18)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B483C4(0, qword_1EDF3F7F0);
  result = sub_1D725AACC();
  if (!v16)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B483C4(0, &qword_1EDF3CDC0);
  result = sub_1D725AACC();
  if (!v14)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B483C4(0, qword_1EDF25870);
  sub_1D725AACC();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B483C4(0, &unk_1EDF3F6D0);
  result = sub_1D725AACC();
  if (v9)
  {
    v5 = type metadata accessor for ActivityItemsConfigurationFactory();
    v6 = swift_allocObject();
    sub_1D5B63F14(&v23, v6 + 16);
    sub_1D5B63F14(&v21, v6 + 56);
    sub_1D5B63F14(&v19, v6 + 96);
    sub_1D5B63F14(&v17, v6 + 136);
    sub_1D5B63F14(&v15, v6 + 176);
    sub_1D5B63F14(&v13, v6 + 216);
    v7 = v11;
    *(v6 + 256) = v10;
    *(v6 + 272) = v7;
    *(v6 + 288) = v12;
    result = sub_1D5B63F14(&v8, v6 + 296);
    a2[3] = v5;
    a2[4] = &protocol witness table for ActivityItemsConfigurationFactory;
    *a2 = v6;
    return result;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_1D5BB5B18@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = sub_1D725A79C();
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B483C4(0, &qword_1EDF35958);
  result = sub_1D725AACC();
  if (v10)
  {
    v7 = type metadata accessor for FeedDismissingManager();
    v8 = swift_allocObject();
    v8[7] = 0;
    v8[8] = 0;
    v8[9] = MEMORY[0x1E69E7CC0];
    sub_1D725A78C();
    sub_1D725A7BC();
    swift_allocObject();
    v8[10] = sub_1D725A7AC();
    sub_1D5B63F14(&v9, (v8 + 2));
    v8[7] = 0;
    v8[8] = 0;

    a2[3] = v7;
    a2[4] = &protocol witness table for FeedDismissingManager;
    *a2 = v8;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_1D5BB5C68@<X0>(void *a1@<X8>)
{
  v2 = type metadata accessor for FileBasedDismissalStorage();
  swift_allocObject();
  result = sub_1D5BB5CE4();
  a1[3] = v2;
  a1[4] = &off_1F51A5248;
  *a1 = result;
  return result;
}

void *sub_1D5BB5CE4()
{
  v1 = sub_1D726304C();
  MEMORY[0x1EEE9AC00](v1, v2);
  v3 = sub_1D7261B2C();
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v5 = sub_1D726307C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v0[2] = 0xD000000000000015;
  v0[3] = 0x80000001D73DFD40;
  sub_1D5BB5F9C();
  v10 = swift_allocObject();
  *(v10 + 24) = 0;
  *(v10 + 16) = 0;
  v0[4] = v10;
  v13[0] = sub_1D5B5DA7C();
  (*(v6 + 104))(v9, *MEMORY[0x1E69E8098], v5);
  sub_1D7261AEC();
  v13[1] = MEMORY[0x1E69E7CC0];
  sub_1D5B710E8(&qword_1EDF1AA50, MEMORY[0x1E69E8030]);
  v11 = MEMORY[0x1E69E8030];
  sub_1D5B6D3A0(0, &unk_1EDF1AE90, MEMORY[0x1E69E8030], MEMORY[0x1E69E62F8]);
  sub_1D5B632D0(&qword_1EDF1AE80, &unk_1EDF1AE90, v11);
  sub_1D7263B6C();
  v0[5] = sub_1D72630BC();
  return v0;
}

void sub_1D5BB5F9C()
{
  if (!qword_1EDF1A578)
  {
    type metadata accessor for os_unfair_lock_s(255);
    v0 = sub_1D7263E4C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF1A578);
    }
  }
}

void sub_1D5BB60D4()
{
  if (!qword_1EDF3C3D0)
  {
    sub_1D5BB6168(255, &qword_1EDF45B40, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDF3C3D0);
    }
  }
}

void sub_1D5BB6168(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void *WebEmbedManager.init(resolver:)(__int128 *a1)
{
  v1[3] = 0;
  swift_unknownObjectWeakInit();
  type metadata accessor for WebEmbedCache();
  v3 = swift_allocObject();
  v4 = MEMORY[0x1E69E7CC8];
  v5 = MEMORY[0x1E69E7CC0];
  *(v3 + 16) = MEMORY[0x1E69E7CC8];
  *(v3 + 24) = v5;
  *(v3 + 64) = 0;
  *(v3 + 32) = xmmword_1D7315D80;
  *(v3 + 48) = 27;
  *(v3 + 56) = 1;
  v1[9] = v3;
  v6 = swift_allocObject();
  *(v6 + 16) = v4;
  *(v6 + 24) = v5;
  *(v6 + 64) = 0;
  *(v6 + 40) = 0;
  *(v6 + 48) = 0;
  *(v6 + 32) = 2;
  *(v6 + 56) = 0;
  v1[10] = v6;
  v7 = swift_allocObject();
  *(v7 + 16) = v4;
  *(v7 + 24) = v5;
  *(v7 + 64) = 0;
  *(v7 + 40) = 0;
  *(v7 + 48) = 0;
  *(v7 + 32) = 1;
  *(v7 + 56) = 0;
  v1[11] = v7;
  v8 = swift_allocObject();
  *(v8 + 16) = v4;
  *(v8 + 24) = v5;
  *(v8 + 64) = 0;
  *(v8 + 40) = 0;
  *(v8 + 48) = 0;
  *(v8 + 32) = 2;
  *(v8 + 56) = 0;
  v1[12] = v8;
  v9 = swift_allocObject();
  *(v9 + 16) = v4;
  *(v9 + 24) = v5;
  *(v9 + 64) = 0;
  *(v9 + 40) = 0;
  *(v9 + 48) = 0;
  *(v9 + 32) = 1;
  *(v9 + 56) = 0;
  v1[13] = v9;
  v10 = swift_allocObject();
  *(v10 + 16) = v4;
  *(v10 + 24) = v5;
  *(v10 + 64) = 0;
  *(v10 + 40) = 0;
  *(v10 + 48) = 0;
  *(v10 + 32) = 2;
  *(v10 + 56) = 0;
  v1[14] = v10;
  v11 = swift_allocObject();
  *(v11 + 16) = v4;
  *(v11 + 24) = v5;
  *(v11 + 64) = 0;
  *(v11 + 40) = 0;
  *(v11 + 48) = 0;
  *(v11 + 32) = 2;
  *(v11 + 56) = 0;
  v1[15] = v11;
  v12 = swift_allocObject();
  *(v12 + 16) = v4;
  *(v12 + 24) = v5;
  *(v12 + 64) = 0;
  *(v12 + 40) = 0;
  *(v12 + 48) = 0;
  *(v12 + 32) = 2;
  *(v12 + 56) = 0;
  v13 = MEMORY[0x1E69E7CD0];
  v1[16] = v12;
  v1[17] = v13;
  v1[18] = v4;
  sub_1D5B63F14(a1, (v1 + 4));
  return v1;
}

void *sub_1D5BB63C0()
{
  type metadata accessor for FormatAdMetricsNodeRenderer();
  v0 = swift_allocObject();
  v0[2] = 0;
  v0[3] = 0;
  swift_unknownObjectWeakInit();
  type metadata accessor for AdPresentationDelegateProvider();
  v1 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *(v1 + 24) = 1;
  v0[5] = v1;
  return v0;
}

void *sub_1D5BB6438(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5BB89FC(0, &qword_1EDF3BB70, sub_1D5BB6634);
  v1 = sub_1D725AABC();
  type metadata accessor for FormatRunModeRunner();
  v2 = swift_allocObject();
  v3 = MEMORY[0x1E69E7CD0];
  v2[2] = MEMORY[0x1E69E7CD0];
  v2[3] = v3;
  v2[4] = v3;
  if (v1)
  {
    sub_1D5BC624C();
    swift_allocObject();

    sub_1D725B59C();
    swift_allocObject();
    swift_weakInit();
    sub_1D725B5BC();

    sub_1D725AB0C();
  }

  v4 = [objc_opt_self() defaultCenter];
  v5 = qword_1EDF1A9C8;

  if (v5 != -1)
  {
    swift_once();
  }

  [v4 addObserver:v2 selector:sel_debugClearRunModeCache name:qword_1EDFFC808 object:0];

  return v2;
}

unint64_t sub_1D5BB6634()
{
  result = qword_1EDF39098[0];
  if (!qword_1EDF39098[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDF39098);
  }

  return result;
}

uint64_t sub_1D5BB66AC(uint64_t a1, __int128 *a2)
{
  v14 = a1;
  v15 = a2;
  v13 = sub_1D726307C();
  v3 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v4);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D726304C();
  MEMORY[0x1EEE9AC00](v7, v8);
  v9 = sub_1D7261B2C();
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  sub_1D5B5A498(0, &qword_1EDF1AA30);
  sub_1D7261AFC();
  v16 = MEMORY[0x1E69E7CC0];
  sub_1D5B70FC8(&qword_1EDF1AA50, MEMORY[0x1E69E8030]);
  sub_1D5B6D220(0, &unk_1EDF1AE90, MEMORY[0x1E69E8030], MEMORY[0x1E69E62F8]);
  sub_1D5B71208();
  sub_1D7263B6C();
  (*(v3 + 104))(v6, *MEMORY[0x1E69E8090], v13);
  *(v2 + 64) = sub_1D72630BC();
  v11 = v15;
  *(v2 + 16) = v14;
  sub_1D5B63F14(v11, v2 + 24);
  return v2;
}

void sub_1D5BB6930()
{
  if (!qword_1EDF3B590)
  {
    type metadata accessor for ShareAttributionViewReuseFactory();
    sub_1D5B471E8(qword_1EDF1EAE8, 255, type metadata accessor for ShareAttributionViewReuseFactory);
    v0 = sub_1D725DD7C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF3B590);
    }
  }
}

uint64_t sub_1D5BB69C8(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B483C4(0, &qword_1EDF3F6B0);
  result = sub_1D725AACC();
  if (v21)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1D5B483C4(0, qword_1EDF3D518);
    result = sub_1D725AACC();
    v3 = v18;
    if (v18)
    {
      v4 = v19;
      v5 = __swift_mutable_project_boxed_opaque_existential_1(v20, v21);
      MEMORY[0x1EEE9AC00](v5, v5);
      v7 = (v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v8 + 16))(v7);
      v9 = *v7;
      v10 = type metadata accessor for FormatImageRenderer();
      v17[3] = v10;
      v17[4] = &off_1F5198910;
      v17[0] = v9;
      type metadata accessor for FormatVideoPlayerNodeRenderer();
      v11 = swift_allocObject();
      v12 = __swift_mutable_project_boxed_opaque_existential_1(v17, v10);
      MEMORY[0x1EEE9AC00](v12, v12);
      v14 = (v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v15 + 16))(v14);
      v16 = *v14;
      v11[5] = v10;
      v11[6] = &off_1F5198910;
      v11[2] = v16;
      v11[7] = v3;
      v11[8] = v4;
      __swift_destroy_boxed_opaque_existential_1(v17);
      __swift_destroy_boxed_opaque_existential_1(v20);
      return v11;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1D5BB6C40(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B483C4(0, &qword_1EDF439E0);
  result = sub_1D725AACC();
  if (v2)
  {
    type metadata accessor for FormatProgressViewNodeRenderer();
    result = swift_allocObject();
    *(result + 16) = v2;
    *(result + 24) = v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1D5BB6CF8()
{
  if (!qword_1EDF3B588)
  {
    type metadata accessor for FormatPuzzleEmbedViewControllerFactory();
    sub_1D5B471E8(qword_1EDF1CAB0, 255, type metadata accessor for FormatPuzzleEmbedViewControllerFactory);
    v0 = sub_1D725DD7C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF3B588);
    }
  }
}

uint64_t sub_1D5BB6D90()
{
  type metadata accessor for FormatSponsoredBannerNodeRenderer();

  return swift_allocObject();
}

void *sub_1D5BB6DC4()
{
  v0 = sub_1D725A79C();
  MEMORY[0x1EEE9AC00](v0, v1);
  type metadata accessor for FormatLayoutResizingProvider();
  v2 = swift_allocObject();
  sub_1D5B85F00(&qword_1EDF3BDF0, MEMORY[0x1E69D6388]);
  v3 = MEMORY[0x1E69D6388];
  sub_1D5BB6F50(0, &qword_1EDF1B5D0, MEMORY[0x1E69D6388], MEMORY[0x1E69E62F8]);
  sub_1D5BB82E8(&qword_1EDF1B5C0, &qword_1EDF1B5D0, v3);
  sub_1D7263B6C();
  sub_1D725A7BC();
  swift_allocObject();
  v4 = sub_1D725A7AC();
  v5 = MEMORY[0x1E69E7CC8];
  v2[2] = v4;
  v2[3] = v5;
  v2[4] = 0;
  v2[5] = 0;
  return v2;
}

void sub_1D5BB6F50(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1D5BB6FB4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1D5BB7018(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B483C4(0, &qword_1EDF439E0);
  result = sub_1D725AACC();
  if (v7)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1D725A60C();
    result = sub_1D725AABC();
    if (result)
    {
      v3 = result;
      __swift_project_boxed_opaque_existential_1(a1, a1[3]);
      sub_1D5B483C4(0, &qword_1EDF23300);
      sub_1D725AACC();
      type metadata accessor for FormatLayoutViewRouter();
      result = swift_allocObject();
      *(result + 16) = v7;
      *(result + 24) = v8;
      *(result + 32) = v3;
      *(result + 40) = v4;
      *(result + 56) = v5;
      *(result + 72) = v6;
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

void sub_1D5BB71E8()
{
  if (!qword_1EDF3B578)
  {
    type metadata accessor for FormatVideoPlayerViewControllerFactory();
    sub_1D5B471E8(&qword_1EDF1C9E0, 255, type metadata accessor for FormatVideoPlayerViewControllerFactory);
    v0 = sub_1D725DD7C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF3B578);
    }
  }
}

uint64_t sub_1D5BB72F4@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B483C4(0, &qword_1EDF3A9D0);
  result = sub_1D725AACC();
  if (!v14)
  {
    __break(1u);
    goto LABEL_8;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B483C4(0, &unk_1EDF3FFB0);
  result = sub_1D725AACC();
  if (!v12)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B483C4(0, &qword_1EDF3AA98);
  result = sub_1D725AACC();
  if (!v10)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B47230();
  result = sub_1D725AABC();
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v5 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B485E4();
  result = sub_1D725AABC();
  if (result)
  {
    v6 = result;
    v7 = type metadata accessor for NativeAdService();
    v8 = swift_allocObject();
    v8[19] = MEMORY[0x1E69E7CC8];
    sub_1D5B63F14(&v13, (v8 + 2));
    sub_1D5B63F14(&v11, (v8 + 7));
    result = sub_1D5B63F14(&v9, (v8 + 12));
    v8[17] = v5;
    v8[18] = v6;
    a2[3] = v7;
    a2[4] = &protocol witness table for NativeAdService;
    *a2 = v8;
    return result;
  }

LABEL_11:
  __break(1u);
  return result;
}

void sub_1D5BB74EC()
{
  if (!qword_1EDF3A950)
  {
    sub_1D726067C();
    sub_1D72607CC();
    sub_1D5B48988(&qword_1EDF43968, 255, MEMORY[0x1E69B3FF0]);
    v0 = sub_1D7260D2C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF3A950);
    }
  }
}

uint64_t sub_1D5BB75AC()
{
  v0 = sub_1D72597EC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v10[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_1D72597FC();
  MEMORY[0x1EEE9AC00](v5, v6);
  (*(v8 + 104))(&v10[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)], *MEMORY[0x1E69D6EA0]);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E88], v0);
  v10[15] = 0;
  sub_1D5B6E12C(0, &qword_1EDF45BA8);
  swift_allocObject();
  result = sub_1D725987C();
  qword_1EDF3C2D8 = result;
  return result;
}

uint64_t sub_1D5BB77DC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B483C4(0, &qword_1EDF3EF98);
  result = sub_1D725AACC();
  if (!v27)
  {
    __break(1u);
    goto LABEL_8;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B483C4(0, &qword_1EDF439F8);
  result = sub_1D725AA8C();
  if (!v25)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for LayeredMediaViewProvider();
  result = sub_1D725AABC();
  if (!result)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v5 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B483C4(0, &qword_1EDF3D1F8);
  result = sub_1D725AACC();
  if (!v23)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for LayeredMediaViewRenderer();
  result = sub_1D725AABC();
  if (result)
  {
    v6 = result;
    v7 = __swift_mutable_project_boxed_opaque_existential_1(v26, v27);
    MEMORY[0x1EEE9AC00](v7, v7);
    v9 = (&v21[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v10 + 16))(v9);
    v11 = *v9;
    v12 = type metadata accessor for IssueCoverViewStyler();
    v21[3] = v12;
    v21[4] = &off_1F51F46C0;
    v21[0] = v11;
    v13 = type metadata accessor for IssueCoverViewRenderer();
    v14 = swift_allocObject();
    v15 = __swift_mutable_project_boxed_opaque_existential_1(v21, v12);
    MEMORY[0x1EEE9AC00](v15, v15);
    v17 = (&v21[-1] - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v18 + 16))(v17);
    v19 = *v17;
    *(v14 + 80) = v12;
    *(v14 + 88) = &off_1F51F46C0;
    *(v14 + 16) = 0u;
    *(v14 + 32) = 0u;
    *(v14 + 48) = 0;
    *(v14 + 56) = v19;
    sub_1D5B63F14(&v24, v14 + 96);
    *(v14 + 136) = v5;
    sub_1D5B63F14(&v22, v14 + 144);
    *(v14 + 184) = v6;
    __swift_destroy_boxed_opaque_existential_1(v21);
    result = __swift_destroy_boxed_opaque_existential_1(v26);
    a2[3] = v13;
    a2[4] = &off_1F511CE08;
    *a2 = v14;
    return result;
  }

LABEL_11:
  __break(1u);
  return result;
}

void sub_1D5BB7B68()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithWhite:0.9 alpha:1.0];
  v1 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithWhite:0.1 alpha:1.0];
  v2 = objc_opt_self();
  v3 = [v2 blackColor];
  v4 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithWhite:0.0 alpha:0.1];
  v5 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithWhite:1.0 alpha:0.1];
  v6 = [v2 ts:v4 dynamicColor:v5 withDarkStyleVariant:?];

  qword_1EDF27BE8 = v0;
  unk_1EDF27BF0 = v1;
  qword_1EDF27BF8 = v3;
  unk_1EDF27C00 = v6;
}

uint64_t sub_1D5BB7CD8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B483C4(0, &unk_1EDF3FCE8);
  result = sub_1D725AACC();
  if (v7)
  {
    v4 = type metadata accessor for LayeredMediaVariantFactory();
    v5 = swift_allocObject();
    result = sub_1D5B63F14(&v6, v5 + 16);
    a2[3] = v4;
    a2[4] = &off_1F5132ED8;
    *a2 = v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D5BB7D8C(uint64_t a1, void (*a2)(void), uint64_t (*a3)(void))
{
  a2(0);
  swift_allocObject();
  return a3();
}

void *sub_1D5BB7DD0(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4)
{
  v8 = type metadata accessor for LayeredMediaConditionValidator();
  v35[3] = v8;
  v35[4] = &off_1F51D4218;
  v35[0] = a1;
  v9 = type metadata accessor for LayeredMediaImageVariantSelector();
  v33 = v9;
  v34 = &off_1F51A0330;
  v32[0] = a2;
  v10 = type metadata accessor for LayeredMediaVariantSelector();
  v30 = v10;
  v31 = &off_1F5143A50;
  v29[0] = a3;
  type metadata accessor for LayeredMediaLayerRenderer();
  v11 = swift_allocObject();
  v12 = __swift_mutable_project_boxed_opaque_existential_1(v35, v8);
  MEMORY[0x1EEE9AC00](v12, v12);
  v14 = (&v29[-1] - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v15 + 16))(v14);
  v16 = __swift_mutable_project_boxed_opaque_existential_1(v32, v33);
  MEMORY[0x1EEE9AC00](v16, v16);
  v18 = (&v29[-1] - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v19 + 16))(v18);
  v20 = __swift_mutable_project_boxed_opaque_existential_1(v29, v30);
  MEMORY[0x1EEE9AC00](v20, v20);
  v22 = (&v29[-1] - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v23 + 16))(v22);
  v24 = *v14;
  v25 = *v18;
  v26 = *v22;
  v11[5] = v8;
  v11[6] = &off_1F51D4218;
  v11[2] = v24;
  v11[10] = v9;
  v11[11] = &off_1F51A0330;
  v11[12] = v26;
  v11[7] = v25;
  v11[15] = v10;
  v11[16] = &off_1F5143A50;
  sub_1D5B63F14(a4, (v11 + 17));
  __swift_destroy_boxed_opaque_existential_1(v29);
  __swift_destroy_boxed_opaque_existential_1(v32);
  __swift_destroy_boxed_opaque_existential_1(v35);
  return v11;
}

uint64_t sub_1D5BB80B4()
{
  result = sub_1D726203C();
  qword_1EDFFC808 = result;
  return result;
}

uint64_t sub_1D5BB80EC(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for LayeredMediaViewRenderer();
  result = sub_1D725AABC();
  if (result)
  {
    v2 = result;
    type metadata accessor for FormatLayeredMediaNodeRenderer();
    result = swift_allocObject();
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *(result + 48) = 0;
    *(result + 56) = v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D5BB8164(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B5A498(0, &qword_1EDF1AB10);
  result = sub_1D725AABC();
  if (result)
  {
    v3 = result;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1D5B483C4(0, &qword_1EDF439F8);
    result = sub_1D725AA8C();
    if (v5)
    {
      type metadata accessor for FormatVideoNodeRenderer();
      swift_allocObject();
      return sub_1D5BB66AC(v3, &v4);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1D5BB82E8(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_1D5BB6F50(255, a2, a3, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D5BB834C(void *a1)
{
  sub_1D726076C();
  MEMORY[0x1EEE9AC00]();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B483C4(0, &qword_1EDF3AA98);
  result = sub_1D725AACC();
  if (!v5)
  {
    __break(1u);
    goto LABEL_8;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5BB96DC();
  result = sub_1D725AABC();
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B483C4(0, &qword_1EDF3A9A0);
  result = sub_1D725AACC();
  if (!v4)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B48C54();
  result = sub_1D725AABC();
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B483C4(0, &qword_1EC895588);
  result = sub_1D725AACC();
  if (v3)
  {
    sub_1D726075C();
    sub_1D5B48420();
    swift_allocObject();
    return sub_1D726099C();
  }

LABEL_11:
  __break(1u);
  return result;
}

uint64_t sub_1D5BB85F4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B483C4(0, &qword_1EDF439F8);
  result = sub_1D725AA8C();
  if (!v11)
  {
    __break(1u);
    goto LABEL_6;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  result = sub_1D725AA8C();
  if (!v9)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for FeedItemRendererTool();
  result = sub_1D725AABC();
  if (result)
  {
    v5 = result;
    type metadata accessor for HeadlineViewRenderer();
    v6 = swift_allocObject();
    swift_unknownObjectWeakInit();
    type metadata accessor for AdPresentationDelegateProvider();
    v7 = swift_allocObject();
    swift_unknownObjectWeakInit();
    *(v7 + 24) = 1;
    *(v6 + 24) = v7;
    sub_1D5B63F14(&v10, v6 + 32);
    result = sub_1D5B63F14(&v8, v6 + 72);
    *(v6 + 112) = v5;
    *a2 = v6;
    a2[1] = &off_1F51B25D8;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_1D5BB87C8()
{
  type metadata accessor for FeedItemDebugColors();
  result = swift_allocObject();
  *(result + 16) = MEMORY[0x1E69E7CC8];
  *(result + 24) = 0;
  qword_1EDFFCF70 = result;
  return result;
}

uint64_t sub_1D5BB88B4@<X0>(uint64_t *a1@<X8>)
{
  v2 = [objc_opt_self() mainBundle];
  v7 = sub_1D5B5A498(0, &qword_1EDF1A680);
  v8 = MEMORY[0x1E69D88C0];
  *&v6 = v2;
  v3 = type metadata accessor for LayeredMediaConditionValidator();
  v4 = swift_allocObject();
  result = sub_1D5B63F14(&v6, v4 + 16);
  a1[3] = v3;
  a1[4] = &off_1F51D4218;
  *a1 = v4;
  return result;
}

uint64_t sub_1D5BB898C@<X0>(uint64_t (*a1)(void)@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v5 = a1(0);
  result = swift_allocObject();
  a3[3] = v5;
  a3[4] = a2;
  *a3 = result;
  return result;
}

void sub_1D5BB89FC(uint64_t a1, unint64_t *a2, void (*a3)(void))
{
  if (!*a2)
  {
    a3();
    v4 = sub_1D725AB7C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1D5BB8A88()
{
  type metadata accessor for FormatVideoPlayerReuseManagerCache();
  result = swift_allocObject();
  *(result + 16) = MEMORY[0x1E69E7CC8];
  qword_1EDFFC8D8 = result;
  return result;
}

uint64_t sub_1D5BB8B08@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B48C54();
  result = sub_1D725AABC();
  if (result)
  {
    v4 = result;
    v5 = type metadata accessor for FeedBannerAdFactory();
    result = swift_allocObject();
    *(result + 16) = v4;
    a2[3] = v5;
    a2[4] = &off_1F51E0E08;
    *a2 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D5BB8C28@<X0>(void *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>, double a5@<D0>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B483C4(0, qword_1EDF3FEB8);
  result = sub_1D725AACC();
  if (v13)
  {
    v10 = a2(0);
    v11 = swift_allocObject();
    *(v11 + 16) = a5;
    result = sub_1D5B63F14(&v12, v11 + 24);
    a4[3] = v10;
    a4[4] = a3;
    *a4 = v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1D5BB8CF8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1D5BBDECC(0, &qword_1EC895990, &type metadata for EngagementBannerViewStyle, MEMORY[0x1E69E6EC8]);
    v3 = sub_1D726412C();

    for (i = a1 + 48; ; i += 72)
    {
      v23 = v1;
      v5 = *(i - 16);
      v6 = *(i - 8);
      v7 = *i;
      v8 = *(i + 8);
      v9 = *(i + 16);
      v10 = *(i + 24);
      v11 = *(i + 32);
      v24 = *(i + 40);
      v12 = *(i + 48);
      v13 = v12;

      v14 = v7;
      v15 = v8;
      result = sub_1D5B69D90(v5, v6);
      if (v17)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v18 = (v3[6] + 16 * result);
      *v18 = v5;
      v18[1] = v6;
      v19 = v3[7] + 56 * result;
      *v19 = v7;
      *(v19 + 8) = v8;
      *(v19 + 16) = v9;
      *(v19 + 24) = v10;
      *(v19 + 32) = v11;
      *(v19 + 40) = v24;
      *(v19 + 48) = v12;
      v20 = v3[2];
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        goto LABEL_10;
      }

      v3[2] = v22;
      v1 = v23 - 1;
      if (v23 == 1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t sub_1D5BB8E70(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B48420();
  result = sub_1D725AABC();
  if (result)
  {
    v3 = result;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1D5B483C4(0, &qword_1EDF42900);
    result = sub_1D725AACC();
    if (v6)
    {
      type metadata accessor for FeedItemPrefetcher();
      v4 = swift_allocObject();
      *(v4 + 16) = v3;
      sub_1D5B63F14(&v5, v4 + 24);
      return v4;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1D5BB8F58(uint64_t a1, uint64_t a2)
{
  v10 = a1;
  v11 = a2;
  v9 = sub_1D726307C();
  v3 = *(v9 - 8);
  MEMORY[0x1EEE9AC00]();
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D726304C();
  MEMORY[0x1EEE9AC00]();
  sub_1D7261B2C();
  MEMORY[0x1EEE9AC00]();
  sub_1D5B5DA7C();
  *(v2 + 16) = 0;
  *(v2 + 24) = 0;
  sub_1D7261B1C();
  v13 = MEMORY[0x1E69E7CC0];
  sub_1D5B73758(&qword_1EDF1AA50, MEMORY[0x1E69E8030]);
  sub_1D5B631E8(0);
  sub_1D5B73758(&qword_1EDF1AE80, sub_1D5B631E8);
  sub_1D7263B6C();
  (*(v3 + 104))(v5, *MEMORY[0x1E69E8090], v9);
  *(v2 + 40) = sub_1D72630BC();
  sub_1D5BB922C();
  swift_allocObject();
  *(v2 + 48) = sub_1D725AC8C();
  *(v2 + 56) = MEMORY[0x1E69E7CC0];
  *(v2 + 72) = 0u;
  *(v2 + 88) = 0u;
  v12 = 0;
  sub_1D5BBA394();
  swift_allocObject();
  *(v2 + 104) = sub_1D725B94C();
  v6 = v11;
  *(v2 + 32) = v10;
  *(v2 + 64) = v6;
  return v2;
}

void sub_1D5BB922C()
{
  if (!qword_1EDF3BB58)
  {
    v0 = sub_1D725AC9C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF3BB58);
    }
  }
}

uint64_t sub_1D5BB9284@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7260CAC();
  result = sub_1D725AA7C();
  if (result)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1D5B483C4(0, &qword_1EDF43900);
    result = sub_1D725AA8C();
    if (v7)
    {
      v5 = sub_1D7260BEC();
      swift_allocObject();
      result = sub_1D7260BDC();
      v6 = MEMORY[0x1E69B42E8];
      a2[3] = v5;
      a2[4] = v6;
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

uint64_t sub_1D5BB93E0(uint64_t *a1, void *a2)
{
  v3 = *a1;
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_1D5B5A498(0, &qword_1EDF1ABF0);
  sub_1D72621FC();
  v4 = sub_1D725AA7C();

  if (v4)
  {
    __swift_project_boxed_opaque_existential_1(a2, a2[3]);
    sub_1D5B483C4(0, &qword_1EDF3B4F8);
    *(swift_allocObject() + 16) = v4;
    v6 = v4;
    sub_1D725AAAC();

    swift_beginAccess();
    sub_1D5BBA640(v7, v3 + 16);
    return swift_endAccess();
  }

  return result;
}

void sub_1D5BB95B0()
{
  if (!qword_1EDF3B4E0)
  {
    sub_1D725E94C();
    v0 = sub_1D726393C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF3B4E0);
    }
  }
}

uint64_t sub_1D5BB9608(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for GapView();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1D5BB9648()
{
  if (!qword_1EDF3B600)
  {
    type metadata accessor for GapOfflineView();
    sub_1D5BBADA4(&qword_1EDF31C90, type metadata accessor for GapOfflineView);
    v0 = sub_1D725DC4C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF3B600);
    }
  }
}

void sub_1D5BB96DC()
{
  if (!qword_1EDF3AA60)
  {
    sub_1D72609CC();
    sub_1D7260A9C();
    sub_1D5B48988(&qword_1EDF43930, 255, MEMORY[0x1E69B41B0]);
    v0 = sub_1D726050C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF3AA60);
    }
  }
}

uint64_t sub_1D5BB979C()
{
  sub_1D5BB1738();
  sub_1D725B52C();

  type metadata accessor for FeedBannerAdRequester();

  sub_1D725B52C();

  sub_1D725A6FC();

  sub_1D7260CAC();
  sub_1D725B52C();

  sub_1D5BB96DC();
  sub_1D725B52C();
}

uint64_t sub_1D5BB992C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B483C4(0, &unk_1EDF3FCD8);
  result = sub_1D725AACC();
  if (!v14)
  {
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B483C4(0, &qword_1EDF439F8);
  result = sub_1D725AA8C();
  if (!v12)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B483C4(0, &qword_1EDF40840);
  result = sub_1D725AACC();
  if (!v10)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B483C4(0, &unk_1EDF3F6D0);
  result = sub_1D725AACC();
  if (v8)
  {
    v5 = type metadata accessor for CategoryViewRenderer();
    v6 = swift_allocObject();
    *(v6 + 176) = 0;
    *(v6 + 184) = 1;
    sub_1D5B63F14(&v13, v6 + 16);
    sub_1D5B63F14(&v11, v6 + 56);
    sub_1D5B63F14(&v9, v6 + 96);
    result = sub_1D5B63F14(&v7, v6 + 136);
    a2[3] = v5;
    a2[4] = &protocol witness table for CategoryViewRenderer;
    *a2 = v6;
    return result;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_1D5BB9B94()
{
  sub_1D5B49474(0, qword_1EDF20A88);
  sub_1D725B53C();
}

uint64_t sub_1D5BB9C4C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B483C4(0, qword_1EDF3FEB8);
  result = sub_1D725AACC();
  if (!v12)
  {
    __break(1u);
    goto LABEL_6;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B483C4(0, qword_1EDF3E5E0);
  result = sub_1D725AACC();
  if (!v9)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B483C4(0, qword_1EDF3DED8);
  result = sub_1D725AACC();
  if (v7)
  {
    v5 = type metadata accessor for FeedItemSupplementaryRenderer();
    swift_allocObject();
    v6 = sub_1D5BBA0C4(v11, v9, v10, v7, v8);
    swift_unknownObjectRelease();
    result = swift_unknownObjectRelease();
    a2[3] = v5;
    a2[4] = &protocol witness table for FeedItemSupplementaryRenderer;
    *a2 = v6;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

void *sub_1D5BB9DE0@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for FeedItemRendererTool();
  result = sub_1D725AABC();
  if (result)
  {
    v5 = result;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1D5B53C80(0, &qword_1EDF1B4D8, &qword_1EDF37780, &protocol descriptor for FeedGroupDebuggerType, MEMORY[0x1E69E62F8]);
    sub_1D725AACC();
    if (qword_1EDF43B30 != -1)
    {
      swift_once();
    }

    sub_1D5B471E8(qword_1EDF2FA10, v6, type metadata accessor for RendererAssembly);
    sub_1D725964C();
    if (v10 > 3u)
    {
      if (v10 > 5u)
      {
        v7 = 0xE500000000000000;
        if (v10 == 6)
        {
          v8 = 0x316F6D6564;
        }

        else
        {
          v8 = 0x326F6D6564;
        }
      }

      else if (v10 == 4)
      {
        v7 = 0xE500000000000000;
        v8 = 0x6C65766564;
      }

      else
      {
        v7 = 0xE700000000000000;
        v8 = 0x786F62646E6173;
      }
    }

    else if (v10 > 1u)
    {
      if (v10 == 2)
      {
        v7 = 0xE200000000000000;
        v8 = 24945;
      }

      else
      {
        v7 = 0xE400000000000000;
        v8 = 1953719668;
      }
    }

    else if (v10)
    {
      v7 = 0xE700000000000000;
      v8 = 0x676E6967617473;
    }

    else
    {
      v7 = 0xEA00000000006E6FLL;
      v8 = 0x69746375646F7270;
    }

    type metadata accessor for InternalErrorViewRenderer();
    result = swift_allocObject();
    v9 = MEMORY[0x1E69E7CC0];
    if (v11)
    {
      v9 = v11;
    }

    result[2] = v5;
    result[3] = v9;
    result[4] = v8;
    result[5] = v7;
    *a2 = result;
    a2[1] = &off_1F51A1BD0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D5BBA0C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = MEMORY[0x1E69E7CD0];
  *(v5 + 88) = MEMORY[0x1E69E7CD0];
  *(v5 + 96) = v11;
  *(v5 + 104) = 0;
  *(v5 + 112) = 0;
  sub_1D5B68374(a1, v5 + 16);
  *(v5 + 56) = a2;
  *(v5 + 64) = a3;
  *(v5 + 72) = a4;
  *(v5 + 80) = a5;
  v12 = qword_1EDF3C2D0;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  if (v12 != -1)
  {
    swift_once();
  }

  swift_allocObject();
  swift_weakInit();
  sub_1D5BB1B68(qword_1EDF35830, v13, type metadata accessor for FeedItemSupplementaryRenderer);
  sub_1D725965C();

  __swift_destroy_boxed_opaque_existential_1(a1);
  *(v5 + 104) = v15;
  return v5;
}

uint64_t sub_1D5BBA248()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1D5BBA280@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v3 = type metadata accessor for FeedBannerAdRequester();
  result = sub_1D725AABC();
  if (result)
  {
    a2[3] = v3;
    a2[4] = &protocol witness table for FeedBannerAdRequester;
    *a2 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D5BBA2F4(void *a1, uint64_t a2)
{
  v3 = sub_1D5BB1BB0(a2, a1);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5BB1738();
  result = sub_1D725AABC();
  if (result)
  {
    v5 = result;
    type metadata accessor for FeedBannerAdRequester();
    swift_allocObject();
    return sub_1D5BB8F58(v5, v3);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1D5BBA394()
{
  if (!qword_1EDF3B9E0)
  {
    v0 = sub_1D725B98C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF3B9E0);
    }
  }
}

uint64_t sub_1D5BBA408(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_1D5B483C4(0, &unk_1EDF3BAC8);
  result = sub_1D725AACC();
  if (v4)
  {
    sub_1D5B63F14(&v3, v5);
    __swift_project_boxed_opaque_existential_1(v5, v5[3]);
    sub_1D5B471E8(qword_1EDF25D98, 255, type metadata accessor for FormatLayoutViewRenderer);
    sub_1D725B54C();
    __swift_destroy_boxed_opaque_existential_1(&v3);
    return __swift_destroy_boxed_opaque_existential_1(v5);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D5BBA54C(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B5A498(0, &qword_1EDF1ABF0);
  sub_1D72621FC();
  sub_1D725A86C();
}

uint64_t sub_1D5BBA604()
{

  return swift_deallocObject();
}

uint64_t sub_1D5BBA640(uint64_t a1, uint64_t a2)
{
  sub_1D5B53C80(0, &qword_1EDF3B4F0, &qword_1EDF3B4F8, MEMORY[0x1E69D7F40], MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D5BBA6D0(uint64_t *a1, void *a2)
{
  v2 = *a1;
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_1D5B483C4(0, qword_1EDF36588);
  sub_1D725AACC();
  *(v2 + 16) = v4;
  return swift_unknownObjectRelease();
}

uint64_t type metadata accessor for FormatMicaSectionDecorationItem()
{
  result = qword_1EDF1F958;
  if (!qword_1EDF1F958)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D5BBA7A0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1D725A79C();
  MEMORY[0x1EEE9AC00]();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B483C4(0, &qword_1EDF3FFA8);
  result = sub_1D725AACC();
  if (v10)
  {
    v5 = type metadata accessor for FeedNativeAdManager();
    v6 = swift_allocObject();
    *(v6 + 64) = MEMORY[0x1E69E7CC0];
    sub_1D725A78C();
    sub_1D725A7BC();
    swift_allocObject();
    v7 = sub_1D725A7AC();
    v8 = MEMORY[0x1E69E7CD0];
    *(v6 + 72) = v7;
    *(v6 + 80) = v8;
    *(v6 + 88) = 0;
    result = sub_1D5B63F14(&v9, v6 + 16);
    *(v6 + 56) = 0;
    a2[3] = v5;
    a2[4] = &protocol witness table for FeedNativeAdManager;
    *a2 = v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D5BBA8F0(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for FeedBannerAdRequester();
  result = sub_1D725AABC();
  if (!result)
  {
    __break(1u);
    goto LABEL_9;
  }

  v3 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for FeedPrerollAdRequester();
  result = sub_1D725AABC();
  if (!result)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v4 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B483C4(0, qword_1EDF429C0);
  result = sub_1D725AACC();
  if (!v11)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7260CAC();
  result = sub_1D725AA7C();
  if (!result)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v5 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B483C4(0, &qword_1EDF3B4F8);
  result = sub_1D725AACC();
  if (!v9)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B48C54();
  result = sub_1D725AABC();
  if (result)
  {
    v6 = result;
    type metadata accessor for FeedAdPipelineProcessor();
    v7 = swift_allocObject();
    v7[3] = 0;
    swift_unknownObjectWeakInit();
    v7[4] = v3;
    v7[5] = v4;
    sub_1D5B63F14(&v10, (v7 + 6));
    v7[11] = v5;
    sub_1D5B63F14(&v8, (v7 + 12));
    v7[17] = v6;
    return v7;
  }

LABEL_13:
  __break(1u);
  return result;
}

Swift::Void __swiftcall FeedItemRenderer.register(view:)(UICollectionView *view)
{
  sub_1D5BB032C(0, &qword_1EDF3B5B8, &qword_1EDF33570, MEMORY[0x1E69D8868], qword_1EDF33578);
  sub_1D7262FAC();
  sub_1D5BB032C(0, &qword_1EDF3B5B0, &qword_1EDF33558, type metadata accessor for VideoView, &unk_1EDF33560);
  sub_1D7262FAC();
  sub_1D5BBACEC();
  sub_1D7262FAC();
  sub_1D5BB9648();
  sub_1D7262FAC();
  sub_1D5BBAEB8();
  sub_1D7262FAC();
  sub_1D5BBAFE4();
  sub_1D7262FAC();
  sub_1D5BBB110();
  sub_1D7262FAC();
  sub_1D5BBB23C();
  sub_1D7262FAC();
  sub_1D5BBB368();
  sub_1D7262FAC();
  sub_1D5BBB3D0();
  sub_1D7262FAC();
  sub_1D5BBB4FC();
  sub_1D7262FAC();
  *(v1 + 448) = sub_1D7262F5C();
}

void sub_1D5BBACEC()
{
  if (!qword_1EDF3B5D0)
  {
    type metadata accessor for GapView();
    sub_1D5BBADA4(&qword_1EDF1BB58, type metadata accessor for GapView);
    v0 = sub_1D725DC4C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF3B5D0);
    }
  }
}

uint64_t sub_1D5BBADA4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D5BBAE78(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for GapOfflineView();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1D5BBAEB8()
{
  if (!qword_1EDF3B5A0)
  {
    type metadata accessor for FeedBannerAdView();
    sub_1D5BBADA4(&qword_1EDF394C0, type metadata accessor for FeedBannerAdView);
    v0 = sub_1D725DC4C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF3B5A0);
    }
  }
}

uint64_t sub_1D5BBAF70(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for FeedBannerAdView();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1D5BBAFE4()
{
  if (!qword_1EDF3B5C0)
  {
    type metadata accessor for CategoryView();
    sub_1D5BBADA4(&qword_1EDF33BC8, type metadata accessor for CategoryView);
    v0 = sub_1D725DC4C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF3B5C0);
    }
  }
}

uint64_t sub_1D5BBB0D0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CategoryView();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1D5BBB110()
{
  if (!qword_1EDF3B608)
  {
    type metadata accessor for CoverIssueView();
    sub_1D5BBADA4(&qword_1EDF329B0, type metadata accessor for CoverIssueView);
    v0 = sub_1D725DC4C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF3B608);
    }
  }
}

uint64_t sub_1D5BBB1FC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CoverIssueView();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1D5BBB23C()
{
  if (!qword_1EDF3B5F8)
  {
    type metadata accessor for CoverChannelView();
    sub_1D5BBADA4(&qword_1EDF30BF0, type metadata accessor for CoverChannelView);
    v0 = sub_1D725DC4C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF3B5F8);
    }
  }
}

uint64_t sub_1D5BBB2F4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CoverChannelView();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1D5BBB368()
{
  if (!qword_1EDF3B808)
  {
    sub_1D5B5A498(255, &qword_1EDF1AA80);
    v0 = sub_1D725C95C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF3B808);
    }
  }
}

void sub_1D5BBB3D0()
{
  if (!qword_1EDF3B5E0)
  {
    type metadata accessor for EngagementBannerView();
    sub_1D5BBADA4(&unk_1EDF2B6B8, type metadata accessor for EngagementBannerView);
    v0 = sub_1D725DC4C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF3B5E0);
    }
  }
}

uint64_t sub_1D5BBB4BC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for EngagementBannerView();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1D5BBB4FC()
{
  if (!qword_1EDF3B5E8)
  {
    type metadata accessor for FormatLayoutView();
    sub_1D5BBADA4(&unk_1EDF30340, type metadata accessor for FormatLayoutView);
    v0 = sub_1D725DC4C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF3B5E8);
    }
  }
}

uint64_t type metadata accessor for FormatLayoutView()
{
  result = qword_1EDF30328;
  if (!qword_1EDF30328)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D5BBB5DC()
{
  sub_1D5BB160C(319, qword_1EDF34EF0, type metadata accessor for FeedItem, MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1D5BBB700()
{
  result = type metadata accessor for FeedBannerAd();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for FeedHeadline(319);
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for FeedWebEmbed();
      if (v3 <= 0x3F)
      {
        result = type metadata accessor for FeedCustomItem();
        if (v4 <= 0x3F)
        {
          result = type metadata accessor for FeedEngagementBanner();
          if (v5 <= 0x3F)
          {
            result = sub_1D725CC1C();
            if (v6 <= 0x3F)
            {
              result = type metadata accessor for FeedRecipe();
              if (v7 <= 0x3F)
              {
                result = type metadata accessor for FeedPuzzleStatistic();
                if (v8 <= 0x3F)
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

  return result;
}

uint64_t sub_1D5BBB890(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D5BBB8D8(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_1D5BBB934()
{
  v1 = sub_1D725EF8C();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v0;
  sub_1D5BBBAC8();
  v7 = *(v2 + 104);
  v7(v5, *MEMORY[0x1E69D8470], v1);
  sub_1D7262F9C();
  v8 = *(v2 + 8);
  v8(v5, v1);
  sub_1D5BBBB28();
  v7(v5, *MEMORY[0x1E69D8478], v1);
  sub_1D7262F9C();
  v8(v5, v1);
  *(v6 + 112) = sub_1D7262F5C();
}

void sub_1D5BBBAC8()
{
  if (!qword_1EDF3B500)
  {
    sub_1D725CFFC();
    v0 = sub_1D725E2EC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF3B500);
    }
  }
}

void sub_1D5BBBB28()
{
  if (!qword_1EDF3B508)
  {
    type metadata accessor for InternalErrorView();
    sub_1D5BB1B68(&qword_1EDF2EC08, 255, type metadata accessor for InternalErrorView);
    v0 = sub_1D725E2EC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF3B508);
    }
  }
}

uint64_t sub_1D5BBBC18(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for EmptyView();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

UIColor __swiftcall UIColor.init(hex:)(Swift::String hex)
{
  v1 = sub_1D5BBC164(hex._countAndFlagsBits, hex._object);
  v3 = v2;

  v5 = HIBYTE(v3) & 0xF;
  v6 = v1 & 0xFFFFFFFFFFFFLL;
  if ((v3 & 0x2000000000000000) != 0)
  {
    v7 = HIBYTE(v3) & 0xF;
  }

  else
  {
    v7 = v1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v7)
  {

    goto LABEL_90;
  }

  if ((v3 & 0x1000000000000000) != 0)
  {
    LODWORD(v1) = sub_1D5FD15E0(v1, v3, 16);
    v27 = v31;
    goto LABEL_89;
  }

  if ((v3 & 0x2000000000000000) != 0)
  {
    aBlock = v1;
    v33 = v3 & 0xFFFFFFFFFFFFFFLL;
    if (v1 == 43)
    {
      if (v5)
      {
        if (--v5)
        {
          v1 = 0;
          v19 = &aBlock + 1;
          while (1)
          {
            v20 = *v19;
            v21 = v20 - 48;
            if ((v20 - 48) >= 0xA)
            {
              if ((v20 - 65) < 6)
              {
                v21 = v20 - 55;
              }

              else
              {
                if ((v20 - 97) > 5)
                {
                  goto LABEL_87;
                }

                v21 = v20 - 87;
              }
            }

            if ((v1 - 0x800000000000000) >> 60 != 15)
            {
              break;
            }

            v12 = __OFADD__(16 * v1, v21);
            v1 = 16 * v1 + v21;
            if (v12)
            {
              break;
            }

            ++v19;
            if (!--v5)
            {
              goto LABEL_88;
            }
          }
        }

        goto LABEL_87;
      }

LABEL_98:
      __break(1u);
      return result;
    }

    if (v1 != 45)
    {
      if (v5)
      {
        v1 = 0;
        p_aBlock = &aBlock;
        while (1)
        {
          v25 = *p_aBlock;
          v26 = v25 - 48;
          if ((v25 - 48) >= 0xA)
          {
            if ((v25 - 65) < 6)
            {
              v26 = v25 - 55;
            }

            else
            {
              if ((v25 - 97) > 5)
              {
                goto LABEL_87;
              }

              v26 = v25 - 87;
            }
          }

          if ((v1 - 0x800000000000000) >> 60 != 15)
          {
            break;
          }

          v12 = __OFADD__(16 * v1, v26);
          v1 = 16 * v1 + v26;
          if (v12)
          {
            break;
          }

          p_aBlock = (p_aBlock + 1);
          if (!--v5)
          {
            goto LABEL_88;
          }
        }
      }

      goto LABEL_87;
    }

    if (v5)
    {
      if (--v5)
      {
        v1 = 0;
        v13 = &aBlock + 1;
        while (1)
        {
          v14 = *v13;
          v15 = v14 - 48;
          if ((v14 - 48) >= 0xA)
          {
            if ((v14 - 65) < 6)
            {
              v15 = v14 - 55;
            }

            else
            {
              if ((v14 - 97) > 5)
              {
                goto LABEL_87;
              }

              v15 = v14 - 87;
            }
          }

          if ((v1 - 0x800000000000000) >> 60 != 15)
          {
            break;
          }

          v12 = __OFSUB__(16 * v1, v15);
          v1 = 16 * v1 - v15;
          if (v12)
          {
            break;
          }

          ++v13;
          if (!--v5)
          {
            goto LABEL_88;
          }
        }
      }

      goto LABEL_87;
    }

    goto LABEL_96;
  }

  if ((v1 & 0x1000000000000000) != 0)
  {
    result.super.isa = ((v3 & 0xFFFFFFFFFFFFFFFLL) + 32);
  }

  else
  {
    result.super.isa = sub_1D7263E5C();
  }

  v8 = *result.super.isa;
  if (v8 == 43)
  {
    if (v6 < 1)
    {
LABEL_97:
      __break(1u);
      goto LABEL_98;
    }

    v5 = v6 - 1;
    if (v6 != 1)
    {
      if (result.super.isa)
      {
        v1 = 0;
        v16 = result.super.isa + 1;
        while (1)
        {
          v17 = *v16;
          v18 = v17 - 48;
          if ((v17 - 48) >= 0xA)
          {
            if ((v17 - 65) < 6)
            {
              v18 = v17 - 55;
            }

            else
            {
              if ((v17 - 97) > 5)
              {
                goto LABEL_87;
              }

              v18 = v17 - 87;
            }
          }

          if ((v1 - 0x800000000000000) >> 60 != 15)
          {
            goto LABEL_87;
          }

          v12 = __OFADD__(16 * v1, v18);
          v1 = 16 * v1 + v18;
          if (v12)
          {
            goto LABEL_87;
          }

          ++v16;
          if (!--v5)
          {
            goto LABEL_88;
          }
        }
      }

      goto LABEL_75;
    }

LABEL_87:
    LODWORD(v1) = 0;
    LOBYTE(v5) = 1;
    goto LABEL_88;
  }

  if (v8 != 45)
  {
    if (v6)
    {
      if (result.super.isa)
      {
        v1 = 0;
        while (1)
        {
          v22 = *result.super.isa;
          v23 = v22 - 48;
          if ((v22 - 48) >= 0xA)
          {
            if ((v22 - 65) < 6)
            {
              v23 = v22 - 55;
            }

            else
            {
              if ((v22 - 97) > 5)
              {
                goto LABEL_87;
              }

              v23 = v22 - 87;
            }
          }

          if ((v1 - 0x800000000000000) >> 60 != 15)
          {
            goto LABEL_87;
          }

          v12 = __OFADD__(16 * v1, v23);
          v1 = 16 * v1 + v23;
          if (v12)
          {
            goto LABEL_87;
          }

          ++result.super.isa;
          if (!--v6)
          {
            LOBYTE(v5) = 0;
            goto LABEL_88;
          }
        }
      }

      goto LABEL_75;
    }

    goto LABEL_87;
  }

  if (v6 < 1)
  {
    __break(1u);
LABEL_96:
    __break(1u);
    goto LABEL_97;
  }

  v5 = v6 - 1;
  if (v6 == 1)
  {
    goto LABEL_87;
  }

  if (result.super.isa)
  {
    v1 = 0;
    v9 = result.super.isa + 1;
    while (1)
    {
      v10 = *v9;
      v11 = v10 - 48;
      if ((v10 - 48) >= 0xA)
      {
        if ((v10 - 65) < 6)
        {
          v11 = v10 - 55;
        }

        else
        {
          if ((v10 - 97) > 5)
          {
            goto LABEL_87;
          }

          v11 = v10 - 87;
        }
      }

      if ((v1 - 0x800000000000000) >> 60 != 15)
      {
        goto LABEL_87;
      }

      v12 = __OFSUB__(16 * v1, v11);
      v1 = 16 * v1 - v11;
      if (v12)
      {
        goto LABEL_87;
      }

      ++v9;
      if (!--v5)
      {
        goto LABEL_88;
      }
    }
  }

LABEL_75:
  LODWORD(v1) = 0;
  LOBYTE(v5) = 0;
LABEL_88:
  v38 = v5;
  v27 = v5;
LABEL_89:

  if (v27)
  {
LABEL_90:
    v28 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    v36 = sub_1D68C0480;
    v37 = 0;
    aBlock = MEMORY[0x1E69E9820];
    v33 = 1107296256;
    v34 = sub_1D6E0CD34;
    v35 = &block_descriptor_52;
    v29 = _Block_copy(&aBlock);
    v30 = [v28 initWithDynamicProvider_];
    _Block_release(v29);
    return v30;
  }

  return [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithRed:BYTE3(v1) / 255.0 green:BYTE2(v1) / 255.0 blue:BYTE1(v1) / 255.0 alpha:v1 / 255.0];
}

uint64_t sub_1D5BBC164(uint64_t a1, unint64_t a2)
{
  v4 = sub_1D726230C();

  if (v4)
  {
    v5 = sub_1D5FD24A4(1uLL, a1, a2);
    v7 = v6;
    v9 = v8;
    v11 = v10;

    a1 = MEMORY[0x1DA6F97E0](v5, v7, v9, v11);
  }

  if (sub_1D726221C() != 8)
  {
    if (sub_1D726221C() == 6)
    {
      v13 = a1;
    }

    else
    {
      if (sub_1D726221C() == 4)
      {
        sub_1D726225C();
        sub_1D726233C();
        sub_1D726225C();
        sub_1D726233C();
        sub_1D726225C();
        sub_1D726233C();
        sub_1D726225C();
        sub_1D726233C();

        v13 = 0;
        sub_1D7263D4C();
        sub_1D7261EDC();
        sub_1D7261EDC();

        sub_1D7261EDC();
        sub_1D7261EDC();

        sub_1D7261EDC();
        sub_1D7261EDC();

        sub_1D7261EDC();
        sub_1D7261EDC();

        return v13;
      }

      if (sub_1D726221C() != 3)
      {
        return a1;
      }

      sub_1D726225C();
      sub_1D726233C();
      sub_1D726225C();
      sub_1D726233C();
      sub_1D726225C();
      sub_1D726233C();

      v13 = 0;
      sub_1D7261EDC();
      sub_1D7261EDC();

      sub_1D7261EDC();
      sub_1D7261EDC();

      sub_1D7261EDC();
      sub_1D7261EDC();
    }

    MEMORY[0x1DA6F9910](17990, 0xE200000000000000);
    return v13;
  }

  return a1;
}

uint64_t sub_1D5BBC58C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1D5BBC604(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t SharingActivityProviderFactoryWithTracker.init(tracker:factory:)(uint64_t a1, __int128 *a2)
{
  *(v2 + 16) = a1;
  sub_1D5B63F14(a2, v2 + 24);
  return v2;
}

uint64_t sub_1D5BBC68C(void *a1, void *a2)
{
  v4 = sub_1D726095C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00]();
  v7 = &v11[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_1D5BBDE04();
  result = sub_1D725AABC();
  if (result)
  {
    v9 = result;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    *(swift_allocObject() + 16) = v9;
    v12 = sub_1D7260ABC();
    v13 = MEMORY[0x1E69B4200];
    __swift_allocate_boxed_opaque_existential_1(v11);
    swift_unknownObjectRetain();
    sub_1D7260AAC();
    sub_1D7260C7C();
    __swift_destroy_boxed_opaque_existential_1(v11);
    *(swift_allocObject() + 16) = v9;
    (*(v5 + 104))(v7, *MEMORY[0x1E69B4128], v4);
    v12 = sub_1D7260B4C();
    v13 = MEMORY[0x1E69B4288];
    __swift_allocate_boxed_opaque_existential_1(v11);
    swift_unknownObjectRetain();
    sub_1D7260B3C();
    sub_1D7260C7C();
    __swift_destroy_boxed_opaque_existential_1(v11);
    v12 = sub_1D72606CC();
    v13 = MEMORY[0x1E69B4030];
    __swift_allocate_boxed_opaque_existential_1(v11);
    sub_1D72606BC();
    sub_1D7260C7C();
    __swift_destroy_boxed_opaque_existential_1(v11);
    v12 = sub_1D7260B7C();
    v13 = MEMORY[0x1E69B42C0];
    __swift_allocate_boxed_opaque_existential_1(v11);
    sub_1D7260B6C();
    sub_1D7260C7C();
    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_1(v11);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D5BBC944()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1D5BBC980@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B483C4(0, qword_1EDF402D0);
  result = sub_1D725AACC();
  if (!v16)
  {
    __break(1u);
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B483C4(0, qword_1EDF3FEB8);
  result = sub_1D725AACC();
  if (!v14)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for CategoryViewLayoutAttributesFactory();
  result = sub_1D725AABC();
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v5 = result;
  type metadata accessor for IssueCoverViewLayoutAttributesFactory();
  v6 = swift_allocObject();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7260CBC();
  result = sub_1D725AABC();
  if (!result)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v7 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for EngagementBannerViewLayoutAttributesFactory();
  result = sub_1D725AABC();
  if (!result)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v8 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for LayeredMediaRenderedViewModelFactory();
  result = sub_1D725AABC();
  if (result)
  {
    v9 = result;
    type metadata accessor for FeedLayoutAttributesFactoryProvider();
    v10 = swift_allocObject();
    v10[2] = v5;
    v10[3] = v6;
    v10[4] = v7;
    v10[5] = v8;
    v10[6] = v9;
    v11 = type metadata accessor for FeedLayoutContextFactory();
    v12 = swift_allocObject();
    sub_1D5B63F14(&v15, v12 + 56);
    result = sub_1D5B63F14(&v13, v12 + 16);
    *(v12 + 96) = v10;
    a2[3] = v11;
    a2[4] = &protocol witness table for FeedLayoutContextFactory;
    *a2 = v12;
    return result;
  }

LABEL_13:
  __break(1u);
  return result;
}

void sub_1D5BBCC2C()
{
  type metadata accessor for CGPoint(319);
  if (v0 <= 0x3F)
  {
    sub_1D725A19C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_1D5BBCCCC()
{
  result = qword_1EDF35ED0;
  if (!qword_1EDF35ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF35ED0);
  }

  return result;
}

void sub_1D5BBCD24()
{
  if (!qword_1EDF3BA28)
  {
    sub_1D5BBCD88();
    v0 = sub_1D725B84C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF3BA28);
    }
  }
}

unint64_t sub_1D5BBCD88()
{
  result = qword_1EDF35EC0;
  if (!qword_1EDF35EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF35EC0);
  }

  return result;
}

unint64_t sub_1D5BBCDDC()
{
  result = qword_1EDF35EB0;
  if (!qword_1EDF35EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF35EB0);
  }

  return result;
}

uint64_t sub_1D5BBCE30(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5BFCB14();
  result = sub_1D725AABC();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  v3 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for FormatSystemFactory();
  result = sub_1D725AABC();
  if (!result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v4 = result;
  sub_1D72596FC();
  sub_1D72596DC();
  if (qword_1EDF43B30 != -1)
  {
    swift_once();
  }

  sub_1D72596CC();

  type metadata accessor for FormatDecorationProviderFactory();
  result = swift_allocObject();
  *(result + 16) = v3;
  *(result + 24) = v4;
  *(result + 32) = 0;
  *(result + 33) = v5;
  *(result + 40) = 0u;
  *(result + 56) = 0u;
  *(result + 72) = 0u;
  *(result + 88) = 0u;
  *(result + 104) = 0u;
  return result;
}

unint64_t sub_1D5BBCFA0()
{
  result = qword_1EDF1ADC0;
  if (!qword_1EDF1ADC0)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_1EDF1ADC0);
  }

  return result;
}

void sub_1D5BBCFEC(uint64_t *a1, void *a2)
{
  v3 = *a1;
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_1D5B483C4(0, &qword_1EDF36A38);
  sub_1D725AACC();
  swift_beginAccess();
  *(v3 + 16) = v7;
  *(v3 + 24) = v8;
  swift_unknownObjectRelease();
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_1D725E80C();
  v4 = sub_1D725AABC();
  if (v4)
  {
    v5 = v4;
    __swift_project_boxed_opaque_existential_1(a2, a2[3]);
    sub_1D5BB1FE4();
    sub_1D72621FC();
    v6 = sub_1D725AA7C();

    if (v6)
    {
      sub_1D5B48988(&unk_1EC895568, 255, type metadata accessor for FeedBannerAdRequester);
      sub_1D725E7CC();

      sub_1D725B97C();
    }

    else
    {
    }
  }
}

uint64_t static FeedGroupDecoration.register(in:)()
{
  sub_1D725EB9C();
  sub_1D726322C();
  sub_1D725EE2C();
  sub_1D726322C();
  sub_1D725F3FC();
  sub_1D726322C();
  sub_1D725ED6C();
  sub_1D726322C();
  type metadata accessor for FormatMicaSectionDecorationItem();
  sub_1D5BBDC40();
  return sub_1D726322C();
}

void sub_1D5BBD244()
{
  sub_1D5BBDC0C(319);
  if (v0 <= 0x3F)
  {
    sub_1D725F3DC();
    if (v1 <= 0x3F)
    {
      sub_1D725F15C();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1D5BBD2F0()
{
  if (qword_1EDF1F980 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return qword_1EDF1F978;
}

void FeedLayoutDebugging<>.setupDebugging(in:reloadBlock:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v35 = a1;
  v13 = sub_1D7259D1C();
  v15 = MEMORY[0x1EEE9AC00](v13, v14);
  (*(v17 + 104))(&v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x1E69D7110], v15);
  v18 = objc_allocWithZone(sub_1D725A03C());
  v19 = sub_1D725A01C();
  if (qword_1EDF3C2D0 != -1)
  {
    swift_once();
  }

  v20 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v21 = swift_allocObject();
  v21[2] = a4;
  v21[3] = a5;
  v21[4] = a6;
  v21[5] = v20;
  v21[6] = v19;
  v21[7] = a2;
  v21[8] = a3;
  v22 = v19;

  sub_1D725961C();

  if (v36 != 1)
  {
    goto LABEL_6;
  }

  v23 = v22;
  v24 = [v7 view];
  if (v24)
  {
    v25 = v24;
    [v24 bounds];
    v27 = v26;
    v29 = v28;
    v31 = v30;
    v33 = v32;

    [v23 setFrame_];
    [v23 setAutoresizingMask_];

    v34 = sub_1D6F14B78(v35, v7);
    [v34 addSubview_];

LABEL_6:
    return;
  }

  __break(1u);
}

uint64_t sub_1D5BBD62C()
{
  MEMORY[0x1DA6FD660](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1D5BBD664()
{

  return swift_deallocObject();
}

void sub_1D5BBD6AC()
{
  if (!qword_1EDF3C210)
  {
    sub_1D725A19C();
    sub_1D5B46248(&qword_1EDF3BFB8, MEMORY[0x1E69D7280]);
    v0 = sub_1D725986C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF3C210);
    }
  }
}

void sub_1D5BBD740()
{
  if (!qword_1EDF3C218)
  {
    sub_1D725A19C();
    sub_1D5BBE0F8(&qword_1EDF3BFB8);
    v0 = sub_1D725976C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF3C218);
    }
  }
}

uint64_t sub_1D5BBD7C0(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B483C4(0, &qword_1EDF3D1F8);
  result = sub_1D725AACC();
  if (!v7)
  {
    __break(1u);
    goto LABEL_6;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for LayeredMediaViewModelFactory();
  result = sub_1D725AABC();
  if (!result)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v3 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for LayeredMediaViewModelRenderer();
  result = sub_1D725AABC();
  if (result)
  {
    v4 = result;
    type metadata accessor for LayeredMediaRenderedViewModelFactory();
    v5 = swift_allocObject();
    sub_1D5B63F14(&v6, v5 + 16);
    *(v5 + 56) = v3;
    *(v5 + 64) = v4;
    return v5;
  }

LABEL_7:
  __break(1u);
  return result;
}

unint64_t sub_1D5BBD8E0()
{
  result = qword_1EDF35EC8;
  if (!qword_1EDF35EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF35EC8);
  }

  return result;
}

uint64_t FeedDismissingManager.addRebuild<A>(target:closure:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1D725A76C();
  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v9 = swift_allocObject();
  swift_weakInit();
  v10 = swift_allocObject();
  v10[2] = a4;
  v10[3] = v8;
  v10[4] = a2;
  v10[5] = a3;
  v10[6] = v9;
  swift_beginAccess();
  v11 = *(v4 + 72);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v4 + 72) = v11;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v11 = sub_1D5BBCF80(0, v11[2] + 1, 1, v11);
    *(v4 + 72) = v11;
  }

  v14 = v11[2];
  v13 = v11[3];
  if (v14 >= v13 >> 1)
  {
    v11 = sub_1D5BBCF80((v13 > 1), v14 + 1, 1, v11);
  }

  v11[2] = v14 + 1;
  v15 = &v11[2 * v14];
  v15[4] = sub_1D6066468;
  v15[5] = v10;
  *(v4 + 72) = v11;
  swift_endAccess();

  return sub_1D725A77C();
}

uint64_t sub_1D5BBDAF0()
{
  MEMORY[0x1DA6FD660](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1D5BBDB28()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1D5BBDB60()
{

  return swift_deallocObject();
}

void sub_1D5BBDBA8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_1D5BBDC40()
{
  result = qword_1EDF1F970;
  if (!qword_1EDF1F970)
  {
    type metadata accessor for FormatMicaSectionDecorationItem();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF1F970);
  }

  return result;
}

uint64_t sub_1D5BBDC98()
{
  result = type metadata accessor for FormatMicaSectionDecorationView();
  qword_1EDF1F978 = result;
  return result;
}

uint64_t type metadata accessor for FormatMicaSectionDecorationView()
{
  result = qword_1EDF1F8B0;
  if (!qword_1EDF1F8B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D5BBDD08()
{
  type metadata accessor for FeedScalingManager();
  v0 = swift_allocObject();
  if (qword_1EDF3C308 != -1)
  {
    swift_once();
  }

  sub_1D5BBD740();
  swift_allocObject();

  result = sub_1D725977C();
  *(v0 + 16) = result;
  off_1EDF386F0 = v0;
  return result;
}

unint64_t sub_1D5BBDE04()
{
  result = qword_1EDF1A7A0;
  if (!qword_1EDF1A7A0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EDF1A7A0);
  }

  return result;
}

uint64_t sub_1D5BBDE68(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for InternalErrorView();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1D5BBDECC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, void, uint64_t, void))
{
  if (!*a2)
  {
    v5 = a4(0, MEMORY[0x1E69E6158], a3, MEMORY[0x1E69E6168]);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1D5BBDF2C()
{
  if (!qword_1EDF3BA30)
  {
    type metadata accessor for FeedLayoutCacheFastPathResult();
    sub_1D5BBCCCC();
    v0 = sub_1D725B84C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF3BA30);
    }
  }
}

uint64_t sub_1D5BBDF98@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for FormatLayoutResizingProvider();
  result = sub_1D725AABC();
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  v5 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for FormatSystemFactory();
  result = sub_1D725AABC();
  if (!result)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v6 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B483C4(0, qword_1EDF42D80);
  result = sub_1D725AACC();
  if (v8)
  {
    *a2 = v5;
    a2[1] = v6;
    return sub_1D5B63F14(&v7, (a2 + 2));
  }

LABEL_7:
  __break(1u);
  return result;
}

void sub_1D5BBE0A8()
{
  if (!qword_1EDF43BA0)
  {
    v0 = sub_1D72627FC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF43BA0);
    }
  }
}

uint64_t sub_1D5BBE0F8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1D725A19C();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D5BBE13C(uint64_t a1)
{
  v2 = sub_1D5BBE0F8(&qword_1EDF3BFA0);
  v3 = MEMORY[0x1E69D6EE0];

  return MEMORY[0x1EEE45770](a1, v2, v3);
}

uint64_t sub_1D5BBE1CC(uint64_t a1, uint64_t (*a2)(char *), uint64_t a3)
{
  v31 = a2;
  v32 = a3;
  v30 = type metadata accessor for FeedBannerAdRequester.ScheduledRequest();
  v4 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30, v5);
  v29 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v26 - v9;
  swift_beginAccess();
  v27 = a1;
  v11 = *(a1 + 56);
  v12 = *(v11 + 16);

  v28 = v12;
  if (v12)
  {
    v14 = 0;
    v15 = MEMORY[0x1E69E7CC0];
    v26 = xmmword_1D7273AE0;
    while (v14 < *(v11 + 16))
    {
      v18 = (*(v4 + 80) + 32) & ~*(v4 + 80);
      v19 = *(v4 + 72);
      sub_1D5C3ABB0(v11 + v18 + v19 * v14, v10, type metadata accessor for FeedBannerAdRequester.ScheduledRequest);
      if (v31(&v10[*(v30 + 20)]))
      {
        if (qword_1EDF1BB68 != -1)
        {
          swift_once();
        }

        sub_1D5B5E1BC(0, &qword_1EDF3C5E0, sub_1D5B8EA84, MEMORY[0x1E69E6F90]);
        v20 = swift_allocObject();
        *(v20 + 16) = v26;
        v21 = sub_1D7260A8C();
        v23 = v22;
        *(v20 + 56) = MEMORY[0x1E69E6158];
        *(v20 + 64) = sub_1D5B7E2C0();
        *(v20 + 32) = v21;
        *(v20 + 40) = v23;
        sub_1D7262EDC();
        sub_1D725C30C();

        v33 = sub_1D7260A8C();
        v34 = v24;
        sub_1D725AC6C();

        result = sub_1D5FCBA70(v10, type metadata accessor for FeedBannerAdRequester.ScheduledRequest);
      }

      else
      {
        sub_1D5C3AC18(v10, v29, type metadata accessor for FeedBannerAdRequester.ScheduledRequest);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v35 = v15;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1D6998534(0, *(v15 + 16) + 1, 1);
          v15 = v35;
        }

        v17 = *(v15 + 16);
        v16 = *(v15 + 24);
        if (v17 >= v16 >> 1)
        {
          sub_1D6998534(v16 > 1, v17 + 1, 1);
          v15 = v35;
        }

        *(v15 + 16) = v17 + 1;
        result = sub_1D5C3AC18(v29, v15 + v18 + v17 * v19, type metadata accessor for FeedBannerAdRequester.ScheduledRequest);
      }

      if (v28 == ++v14)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    v15 = MEMORY[0x1E69E7CC0];
LABEL_15:

    *(v27 + 56) = v15;
  }

  return result;
}

void sub_1D5BBE590()
{
  type metadata accessor for FeedBannerAd();
  if (v0 <= 0x3F)
  {
    sub_1D7260A9C();
    if (v1 <= 0x3F)
    {
      type metadata accessor for CGPoint(319);
      if (v2 <= 0x3F)
      {
        sub_1D5B5D9E0();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_1D5BBE654(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  sub_1D5BE1514();
  v10 = *(v9 - 8);
  v76 = v9;
  v77 = v10;
  MEMORY[0x1EEE9AC00](v9, v11);
  v73 = &v66 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v75 = &v66 - v15;
  v83 = type metadata accessor for FeedBannerAdRequester.ScheduledRequest();
  v81 = *(v83 - 8);
  MEMORY[0x1EEE9AC00](v83, v16);
  v18 = (&v66 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D5BE0218();
  v20 = v19;
  v82 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19, v21);
  v80 = (&v66 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D5B5E1BC(0, &qword_1EDF1ACE8, sub_1D5BE0218, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v23 - 8, v24);
  v26 = &v66 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27, v28);
  v30 = &v66 - v29;
  v31 = sub_1D7258C9C();
  v72 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31, v32);
  v78 = &v66 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_1D7261B9C();
  v35 = *(v34 - 8);
  v37 = MEMORY[0x1EEE9AC00](v34, v36);
  v39 = (&v66 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0));
  v40 = *(v4 + 5);
  *v39 = v40;
  (*(v35 + 104))(v39, *MEMORY[0x1E69E8020], v34, v37);
  v41 = v40;
  LOBYTE(v40) = sub_1D7261BBC();
  (*(v35 + 8))(v39, v34);
  if ((v40 & 1) == 0)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v71 = v31;
  if (qword_1EDF1BB68 != -1)
  {
LABEL_23:
    swift_once();
  }

  sub_1D5B5E1BC(0, &qword_1EDF3C5E0, sub_1D5B8EA84, MEMORY[0x1E69E6F90]);
  v42 = swift_allocObject();
  *(v42 + 16) = xmmword_1D7273AE0;
  v84 = a1;
  v85 = a2;
  v86 = a3;
  v87 = a4;
  type metadata accessor for CGRect(0);
  v43 = sub_1D72620FC();
  v45 = v44;
  *(v42 + 56) = MEMORY[0x1E69E6158];
  *(v42 + 64) = sub_1D5B7E2C0();
  *(v42 + 32) = v43;
  *(v42 + 40) = v45;
  sub_1D7262EDC();
  sub_1D725C30C();

  sub_1D7258C8C();
  swift_beginAccess();
  v74 = v4;
  v46 = *(v4 + 7);
  v47 = (v82 + 56);
  v48 = *(v46 + 16);
  v49 = (v82 + 48);
  v70 = (v77 + 16);
  v69 = v77 + 32;
  v68 = v77 + 8;
  v82 = v46;

  v50 = 0;
  v79 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    if (v50 == v48)
    {
      v52 = 1;
      v50 = v48;
    }

    else
    {
      if ((v50 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_21:
        __break(1u);
        goto LABEL_22;
      }

      if (v50 >= *(v82 + 16))
      {
        goto LABEL_21;
      }

      v4 = (v50 + 1);
      v53 = v80;
      v54 = v82 + ((*(v81 + 80) + 32) & ~*(v81 + 80)) + *(v81 + 72) * v50;
      v55 = *(v20 + 48);
      *v80 = v50;
      sub_1D5C3ABB0(v54, v53 + v55, type metadata accessor for FeedBannerAdRequester.ScheduledRequest);
      sub_1D5C3AC18(v53, v26, sub_1D5BE0218);
      v52 = 0;
      ++v50;
    }

    (*v47)(v26, v52, 1, v20);
    sub_1D5BE03A0(v26, v30);
    if ((*v49)(v30, 1, v20) == 1)
    {
      break;
    }

    sub_1D5C3AC18(&v30[*(v20 + 48)], v18, type metadata accessor for FeedBannerAdRequester.ScheduledRequest);
    v88.origin.x = a1;
    v88.origin.y = a2;
    v88.size.width = a3;
    v88.size.height = a4;
    if (CGRectContainsPoint(v88, *(v18 + *(v83 + 24))))
    {
      sub_1D5FCA344(v18, v75);
      (*v70)(v73, v75, v76);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v79 = sub_1D5C38FA4(0, v79[2] + 1, 1, v79);
      }

      v57 = v79[2];
      v56 = v79[3];
      v58 = v57 + 1;
      if (v57 >= v56 >> 1)
      {
        v67 = v57 + 1;
        v59 = sub_1D5C38FA4(v56 > 1, v57 + 1, 1, v79);
        v58 = v67;
        v79 = v59;
      }

      v51 = v79;
      v79[2] = v58;
      (*(v77 + 32))(v51 + ((*(v77 + 80) + 32) & ~*(v77 + 80)) + *(v77 + 72) * v57, v73, v76);
      v4 = v78;
      sub_1D7258C6C();
      (*(v77 + 8))(v75, v76);
    }

    sub_1D5FCBA70(v18, type metadata accessor for FeedBannerAdRequester.ScheduledRequest);
  }

  v60 = v74;
  swift_beginAccess();
  sub_1D5BBEFC4(0);
  sub_1D5B73758(&qword_1EDF1B4E8, sub_1D5BBEFC4);
  sub_1D5B73758(&qword_1EDF1B4E0, sub_1D5BBEFC4);
  v61 = v78;
  sub_1D7262D3C();
  swift_endAccess();
  swift_beginAccess();
  if (*(v60 + 2))
  {
    v62 = *(v60 + 3);
    swift_endAccess();
    ObjectType = swift_getObjectType();
    v64 = *(v62 + 8);
    swift_unknownObjectRetain();
    v64(v79, ObjectType, v62);
    swift_unknownObjectRelease();

    return (*(v72 + 8))(v61, v71);
  }

  else
  {
    (*(v72 + 8))(v61, v71);
    swift_endAccess();
  }
}

uint64_t sub_1D5BBF010(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for FeedHeadlineFactory();
  result = sub_1D725AABC();
  if (!result)
  {
    __break(1u);
    goto LABEL_12;
  }

  v3 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for FeedIssueFactory();
  result = sub_1D725AABC();
  if (!result)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v4 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for FeedTagFactory();
  result = sub_1D725AABC();
  if (!result)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v5 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for FeedWebEmbedFactory();
  result = sub_1D725AABC();
  if (!result)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v6 = result;
  type metadata accessor for FeedCustomItemFactory();
  v7 = swift_allocObject();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B483C4(0, qword_1EDF42B98);
  result = sub_1D725AACC();
  if (!v17)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v15 = v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for FeedPuzzleFactory();
  result = sub_1D725AABC();
  if (!result)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = result;
  v9 = v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for FeedPuzzleTypeFactory();
  result = sub_1D725AABC();
  if (!result)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v10 = result;
  v11 = v3;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for FeedPuzzleStatisticFactory();
  result = sub_1D725AABC();
  if (!result)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v12 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for FeedRecipeFactory();
  result = sub_1D725AABC();
  if (result)
  {
    v13 = result;
    type metadata accessor for FeedModelFactory();
    v14 = swift_allocObject();
    v14[2] = v11;
    v14[3] = v9;
    v14[4] = v15;
    v14[5] = v6;
    v14[6] = v7;
    sub_1D5B63F14(&v16, (v14 + 7));
    v14[12] = v8;
    v14[13] = v10;
    v14[14] = v12;
    v14[15] = v13;
    return v14;
  }

LABEL_19:
  __break(1u);
  return result;
}

uint64_t sub_1D5BBF2F0()
{
  sub_1D5B483C4(0, &qword_1EDF1E400);
  sub_1D725B53C();
}

uint64_t sub_1D5BBF364()
{
  type metadata accessor for FeedHeadlineFactory();
  sub_1D725B52C();

  type metadata accessor for FeedIssueFactory();
  sub_1D725B52C();

  type metadata accessor for FeedTagFactory();
  sub_1D725B52C();

  type metadata accessor for FeedWebEmbedFactory();
  sub_1D725B52C();

  type metadata accessor for FeedPuzzleFactory();
  sub_1D725B52C();

  type metadata accessor for FeedPuzzleTypeFactory();
  sub_1D725B52C();

  type metadata accessor for FeedPuzzleStatisticFactory();
  sub_1D725B52C();

  type metadata accessor for FeedRecipeFactory();
  sub_1D725B52C();
}

uint64_t sub_1D5BBF62C(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B5A498(0, &qword_1EDF1AA98);
  result = sub_1D725AABC();
  if (!result)
  {
    __break(1u);
    goto LABEL_9;
  }

  v3 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B5A498(0, &qword_1EDF1AB40);
  result = sub_1D725AABC();
  if (!result)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v4 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B5A498(0, &qword_1EDF1A9D8);
  result = sub_1D725AABC();
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v5 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B5534C(0, &unk_1EDF1A850);
  result = sub_1D725AABC();
  if (!result)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v6 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B483C4(0, &qword_1EDF3FD10);
  result = sub_1D725AACC();
  if (!v11)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B483C4(0, &unk_1EDF3FFB0);
  result = sub_1D725AACC();
  if (v9)
  {
    type metadata accessor for FeedHeadlineFactory();
    v7 = swift_allocObject();
    v7[2] = v3;
    v7[3] = v4;
    v7[4] = v5;
    v7[5] = v6;
    sub_1D5B63F14(&v10, (v7 + 6));
    sub_1D5B63F14(&v8, (v7 + 11));
    return v7;
  }

LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_1D5BBF864(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B5A498(0, &unk_1EDF1A8E8);
  result = sub_1D725AABC();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  v3 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B483C4(0, qword_1EDF35540);
  result = sub_1D725AACC();
  if (!v11)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B5A498(0, &unk_1EDF1A820);
  result = sub_1D725AABC();
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v4 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B5534C(0, &unk_1EDF1A850);
  result = sub_1D725AABC();
  if (result)
  {
    v5 = result;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1D5B483C4(0, qword_1EDF35970);
    sub_1D725AACC();
    type metadata accessor for FeedIssueFactory();
    v6 = swift_allocObject();
    *(v6 + 16) = v3;
    sub_1D5B63F14(&v10, v6 + 24);
    *(v6 + 64) = v4;
    *(v6 + 72) = v5;
    *(v6 + 80) = v7;
    *(v6 + 96) = v8;
    *(v6 + 112) = v9;
    return v6;
  }

LABEL_9:
  __break(1u);
  return result;
}

void *sub_1D5BBFA4C(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B5A498(0, &unk_1EDF1A820);
  result = sub_1D725AABC();
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  v3 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B5A498(0, &unk_1EDF1AAB0);
  result = sub_1D725AABC();
  if (!result)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v4 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B5A498(0, &unk_1EDF1A880);
  result = sub_1D725AABC();
  if (result)
  {
    v5 = result;
    type metadata accessor for FeedTagFactory();
    result = swift_allocObject();
    result[2] = v3;
    result[3] = v4;
    result[4] = v5;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_1D5BBFB6C(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for FeedHeadlineFactory();
  result = sub_1D725AABC();
  if (result)
  {
    v2 = result;
    type metadata accessor for FeedWebEmbedFactory();
    result = swift_allocObject();
    *(result + 16) = v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D5BBFC00(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B483C4(0, qword_1EDF3EE30);
  result = sub_1D725AACC();
  if (!v11)
  {
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B483C4(0, &unk_1EDF3EE20);
  result = sub_1D725AACC();
  if (!v9)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B483C4(0, &qword_1EDF3CFD0);
  result = sub_1D725AACC();
  if (!v7)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B483C4(0, qword_1EDF3F7F0);
  result = sub_1D725AACC();
  if (v5)
  {
    type metadata accessor for FeedPuzzleFactory();
    v3 = swift_allocObject();
    sub_1D5B63F14(&v10, v3 + 16);
    sub_1D5B63F14(&v8, v3 + 56);
    sub_1D5B63F14(&v6, v3 + 96);
    sub_1D5B63F14(&v4, v3 + 136);
    return v3;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_1D5BBFDB8()
{
  type metadata accessor for FeedPuzzleTypeFactory();

  return swift_allocObject();
}

uint64_t sub_1D5BBFDEC()
{
  type metadata accessor for FeedPuzzleStatisticFactory();

  return swift_allocObject();
}

uint64_t sub_1D5BBFE20(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B483C4(0, &unk_1EDF3EE08);
  result = sub_1D725AACC();
  if (!v17)
  {
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B483C4(0, &qword_1EDF3CFC0);
  result = sub_1D725AACC();
  if (!v13)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  sub_1D5B63F14(&v12, v14);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B5A498(0, &qword_1EDF1A9D8);
  result = sub_1D725AABC();
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v3 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B483C4(0, qword_1EDF25870);
  sub_1D725AACC();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B483C4(0, &unk_1EDF3F6D0);
  result = sub_1D725AACC();
  if (v8)
  {
    type metadata accessor for FeedRecipeFactory();
    v4 = swift_allocObject();
    sub_1D5B63F14(&v16, v4 + 16);
    v5 = v14[1];
    *(v4 + 56) = v14[0];
    *(v4 + 72) = v5;
    *(v4 + 88) = v15;
    *(v4 + 96) = v3;
    v6 = v10;
    *(v4 + 104) = v9;
    *(v4 + 120) = v6;
    *(v4 + 136) = v11;
    sub_1D5B63F14(&v7, v4 + 144);
    return v4;
  }

LABEL_9:
  __break(1u);
  return result;
}

void *sub_1D5BC0038(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B48DD4();
  result = sub_1D725AABC();
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  v3 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B48F68();
  result = sub_1D725AABC();
  if (!result)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v4 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B48EAC();
  result = sub_1D725AABC();
  if (result)
  {
    v5 = result;
    type metadata accessor for FeedPrerollAdRequester();
    swift_allocObject();
    return sub_1D5BC01D0(v3, v4, v5);
  }

LABEL_7:
  __break(1u);
  return result;
}

void *sub_1D5BC01D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1D725A79C();
  MEMORY[0x1EEE9AC00]();
  v7 = MEMORY[0x1E69E7CC0];
  v3[2] = MEMORY[0x1E69E7CD0];
  v3[3] = v7;
  v8 = MEMORY[0x1E69D6388];
  sub_1D5B679FC(0, &unk_1EDF19B40, MEMORY[0x1E69D6388], MEMORY[0x1E69E6F90]);
  *(swift_allocObject() + 16) = xmmword_1D7273AE0;
  sub_1D725A78C();
  sub_1D5B473C8(&qword_1EDF3BDF0, MEMORY[0x1E69D6388]);
  sub_1D5B679FC(0, &qword_1EDF1B5D0, v8, MEMORY[0x1E69E62F8]);
  sub_1D5B89968();
  sub_1D7263B6C();
  sub_1D725A7BC();
  swift_allocObject();
  v9 = sub_1D725A7AC();
  v3[4] = a1;
  v3[5] = a2;
  v3[6] = a3;
  v3[7] = v9;
  return v3;
}

uint64_t sub_1D5BC0408(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 40) = a1;
}

uint64_t FormatLayoutViewDebugger.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1D5BC04A8(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  result = sub_1D725AACC();
  if (!v27)
  {
    __break(1u);
    goto LABEL_11;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B483C4(0, &qword_1EDF42830);
  result = sub_1D725AACC();
  if (!v26)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v3 = type metadata accessor for FeedLayoutCache();
  v4 = swift_allocObject();
  sub_1D5BC10E0();
  swift_allocObject();
  v4[2] = sub_1D725B83C();
  sub_1D5BBDF2C();
  swift_allocObject();
  v4[3] = sub_1D725B83C();
  sub_1D5BBCD24();
  swift_allocObject();
  v4[4] = sub_1D725B83C();
  v23 = v3;
  v24 = &protocol witness table for FeedLayoutCache;
  *&v22 = v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B483C4(0, qword_1EDF42D80);
  result = sub_1D725AACC();
  if (!v21)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v5 = type metadata accessor for FeedModelFactory();
  result = sub_1D725AABC();
  if (!result)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v18 = v5;
  v19 = &protocol witness table for FeedModelFactory;
  *&v17 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B483C4(0, &unk_1EDF42D70);
  result = sub_1D725AACC();
  v6 = v15;
  if (!v15)
  {
LABEL_14:
    __break(1u);
    return result;
  }

  v7 = v16;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B483C4(0, qword_1EDF36190);
  sub_1D725AACC();
  if (v11)
  {
    sub_1D5B63F14(&v10, &v12);
  }

  else
  {
    v13 = type metadata accessor for EmptyFeedDismissingManager();
    v14 = &protocol witness table for EmptyFeedDismissingManager;
    *&v12 = swift_allocObject();
  }

  sub_1D5B53EDC(0, qword_1EDF43358, &type metadata for GroupLayoutInventory, &protocol witness table for GroupLayoutInventory, type metadata accessor for FeedLayoutSolver);
  v8 = swift_allocObject();
  v9 = v28;
  *(v8 + 16) = v27;
  *(v8 + 32) = v9;
  *(v8 + 48) = v29;
  *(v8 + 64) = v30;
  sub_1D5B63F14(&v22, v8 + 72);
  sub_1D5B63F14(&v25, v8 + 112);
  sub_1D5B63F14(&v20, v8 + 152);
  sub_1D5B63F14(&v17, v8 + 192);
  *(v8 + 232) = v6;
  *(v8 + 240) = v7;
  sub_1D5B63F14(&v12, v8 + 248);
  return v8;
}

uint64_t sub_1D5BC0810(void *a1)
{
  v2 = sub_1D725BD1C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B483C4(0, qword_1EDF43260);
  result = sub_1D725AACC();
  if (!v23)
  {
    __break(1u);
    goto LABEL_11;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B483C4(0, &unk_1EDF3F6D0);
  result = sub_1D725AACC();
  if (!v21)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B483C4(0, qword_1EDF42928);
  result = sub_1D725AACC();
  if (!v19)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B5534C(0, &qword_1EDF1A770);
  result = sub_1D725AABC();
  if (!result)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v8 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B53EDC(0, qword_1EDF412B8, &type metadata for FormatOfflineModel, &off_1F51C0A00, type metadata accessor for OfflineManager);
  result = sub_1D725AABC();
  if (!result)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v9 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B483C4(0, &unk_1EDF3F3D0);
  result = sub_1D725AACC();
  if (!v17)
  {
LABEL_15:
    __break(1u);
    return result;
  }

  if (qword_1EDF3CA50 != -1)
  {
    swift_once();
  }

  v10 = __swift_project_value_buffer(v2, qword_1EDF3CA58);
  v11 = *(v3 + 16);
  v11(v6, v10, v2);
  v12 = type metadata accessor for FormatSystemFactory();
  v13 = objc_allocWithZone(v12);
  sub_1D5B68374(v22, &v13[OBJC_IVAR____TtC8NewsFeed19FormatSystemFactory_userInfo]);
  sub_1D5B68374(v20, &v13[OBJC_IVAR____TtC8NewsFeed19FormatSystemFactory_featureAvailability]);
  sub_1D5B68374(v18, &v13[OBJC_IVAR____TtC8NewsFeed19FormatSystemFactory_appConfigManager]);
  *&v13[OBJC_IVAR____TtC8NewsFeed19FormatSystemFactory_bundleSubscriptionManager] = v8;
  v11(&v13[OBJC_IVAR____TtC8NewsFeed19FormatSystemFactory_formatVersion], v6, v2);
  *&v13[OBJC_IVAR____TtC8NewsFeed19FormatSystemFactory_offlineManager] = v9;
  sub_1D5B68374(v16, &v13[OBJC_IVAR____TtC8NewsFeed19FormatSystemFactory_bundleSessionManager]);
  v15.receiver = v13;
  v15.super_class = v12;
  v14 = objc_msgSendSuper2(&v15, sel_init);
  (*(v3 + 8))(v6, v2);
  __swift_destroy_boxed_opaque_existential_1(v16);
  __swift_destroy_boxed_opaque_existential_1(v18);
  __swift_destroy_boxed_opaque_existential_1(v20);
  __swift_destroy_boxed_opaque_existential_1(v22);
  return v14;
}

uint64_t sub_1D5BC0C0C(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5BC0D34();
  result = sub_1D725AACC();
  if (v16)
  {
    sub_1D5B4F970();
    v3 = v2;
    v4 = objc_allocWithZone(v2);
    v5 = &v4[qword_1EC894F50];
    *v5 = 0;
    *(v5 + 1) = 0;
    sub_1D5B68374(v15, &v4[qword_1EC894F58]);
    v14.receiver = v4;
    v14.super_class = v3;
    v6 = objc_msgSendSuper2(&v14, sel_init);
    sub_1D5B68374(v6 + qword_1EC894F58, v11);
    v7 = v12;
    v8 = v13;
    __swift_project_boxed_opaque_existential_1(v11, v12);
    v9 = *(v8 + 16);
    v10 = v6;
    v9(v6, v7, v8);

    __swift_destroy_boxed_opaque_existential_1(v15);
    __swift_destroy_boxed_opaque_existential_1(v11);
    return v10;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1D5BC0D34()
{
  result = qword_1EDF40840;
  if (!qword_1EDF40840)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EDF40840);
  }

  return result;
}

uint64_t sub_1D5BC0D98@<X0>(uint64_t (*a1)(void)@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v5 = a1(0);
  result = swift_allocObject();
  a3[3] = v5;
  a3[4] = a2;
  *a3 = result;
  return result;
}

uint64_t sub_1D5BC0E2C(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B49474(0, qword_1EDF20A88);
  result = sub_1D725AACC();
  if (v20)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1D5B49474(0, &qword_1EDF3B870);
    result = sub_1D725AACC();
    if (v18)
    {
      v3 = __swift_mutable_project_boxed_opaque_existential_1(v19, v20);
      MEMORY[0x1EEE9AC00](v3, v3);
      v5 = (&v16[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v6 + 16))(v5);
      v7 = *v5;
      v8 = type metadata accessor for EngagementBannerViewStyler();
      v16[3] = v8;
      v16[4] = &off_1F519C300;
      v16[0] = v7;
      type metadata accessor for EngagementBannerViewLayoutAttributesFactory();
      v9 = swift_allocObject();
      v10 = __swift_mutable_project_boxed_opaque_existential_1(v16, v8);
      MEMORY[0x1EEE9AC00](v10, v10);
      v12 = (&v16[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v13 + 16))(v12);
      v14 = *v12;
      v9[5] = v8;
      v9[6] = &off_1F519C300;
      v9[2] = v14;
      sub_1D5B63F14(&v17, (v9 + 7));
      __swift_destroy_boxed_opaque_existential_1(v16);
      __swift_destroy_boxed_opaque_existential_1(v19);
      return v9;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1D5BC10E0()
{
  if (!qword_1EDF3BA20)
  {
    type metadata accessor for FeedLayoutCacheKey();
    sub_1D5BBC604(&qword_1EDF387A0, type metadata accessor for FeedLayoutCacheKey);
    v0 = sub_1D725B84C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF3BA20);
    }
  }
}

uint64_t sub_1D5BC117C()
{
  result = type metadata accessor for FeedLayoutCacheDynamicKey();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1D5BC1248(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D5BC1290()
{
  result = type metadata accessor for FeedLayoutCacheKey();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1D5BC1328(uint64_t *a1, void *a2)
{
  v2 = *a1;
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_1D5B483C4(0, &qword_1EDF36A38);
  sub_1D725AACC();
  *(v2 + 24) = v4;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

uint64_t sub_1D5BC13B8()
{
  v0 = sub_1D72597EC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D72597FC();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1D725A19C();
  v12 = MEMORY[0x1EEE9AC00](v10, v11);
  (*(v14 + 104))(&v16 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x1E69D7278], v12);
  (*(v6 + 104))(v9, *MEMORY[0x1E69D6EA0], v5);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E88], v0);
  sub_1D5BBD6AC();
  swift_allocObject();
  result = sub_1D725987C();
  qword_1EDF3C310 = result;
  return result;
}

uint64_t sub_1D5BC1620(int *a1, int a2)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v4 = *(swift_getAssociatedTypeWitness() - 8);
  v5 = *(v4 + 64);
  if (v5 <= ((v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 32)
  {
    v5 = ((v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 32;
  }

  if (v5 <= 0x10)
  {
    v5 = 16;
  }

  if ((v5 & 0xFFFFFFFFFFFFFFF8) + 48 > v5)
  {
    v5 = (v5 & 0xFFFFFFFFFFFFFFF8) + 48;
  }

  if (!a2)
  {
    return 0;
  }

  v6 = *(v4 + 80) & 0xF8;
  v7 = v6 | 7;
  if ((a2 & 0x80000000) == 0)
  {
    goto LABEL_9;
  }

  v10 = ((v6 + 31) & ~v7) + (((((((v5 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 49) & 0xFFFFFFFFFFFFFFF8) + 8;
  v11 = v10 & 0xFFFFFFF8;
  v12 = a2 - 2147483646;
  if ((v10 & 0xFFFFFFF8) != 0)
  {
    v12 = 2;
  }

  if (v12 >= 0x10000)
  {
    v13 = 4;
  }

  else
  {
    v13 = 2;
  }

  if (v12 < 0x100)
  {
    v14 = 1;
  }

  else
  {
    v14 = v13;
  }

  if (v14 == 4)
  {
    v15 = *(a1 + v10);
    if (!v15)
    {
      goto LABEL_9;
    }
  }

  else if (v14 == 2)
  {
    v15 = *(a1 + v10);
    if (!v15)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v15 = *(a1 + v10);
    if (!v15)
    {
LABEL_9:
      v8 = *((((((((a1 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + v7 + 8) & ~v7) + v5 + 8) & 0xFFFFFFFFFFFFFFF8);
      if (v8 >= 0xFFFFFFFF)
      {
        LODWORD(v8) = -1;
      }

      return (v8 + 1);
    }
  }

  v16 = v15 - 1;
  if (v11)
  {
    v16 = 0;
    v17 = *a1;
  }

  else
  {
    v17 = 0;
  }

  return (v17 | v16) ^ 0x80000000;
}

uint64_t sub_1D5BC184C()
{
  v160 = v0;
  v127 = *(v0 + 488);
  v1 = *(v0 + 472);
  v2 = *(v0 + 440);
  v3 = *(v0 + 416);
  v4 = *(v0 + 408);
  v134 = *(v0 + 344);
  v142 = v4;
  v144 = *(v0 + 320);
  v138 = *(v0 + 352);
  v140 = *(v0 + 192);
  v152 = *(v0 + 184);
  v136 = *(v0 + 176);
  v5 = *(v0 + 64);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1D7279970;
  *(v6 + 56) = MEMORY[0x1E69E6158];
  *(v6 + 64) = v2;
  *(v6 + 32) = v4;
  *(v6 + 40) = v3;
  v130 = v3;

  v7 = sub_1D7261DDC();
  v8 = MEMORY[0x1E69E6530];
  v9 = MEMORY[0x1E69E65A8];
  *(v6 + 96) = MEMORY[0x1E69E6530];
  *(v6 + 104) = v9;
  v10 = v8;
  v11 = v9;
  *(v6 + 72) = v7;
  v12 = sub_1D726279C();
  *(v6 + 136) = v10;
  *(v6 + 144) = v11;
  *(v6 + 112) = v12;
  sub_1D7262EDC();
  sub_1D725C30C();

  *(v0 + 512) = 0;
  *(v0 + 72) = v1;
  v13 = swift_task_alloc();
  v13[2] = v140;
  v13[3] = v152;
  v13[4] = v5;
  v13[5] = v0 + 512;
  v14 = sub_1D72627FC();
  WitnessTable = swift_getWitnessTable();
  v17 = sub_1D5B874E4(sub_1D617CED0, v13, v14, v127, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v16);

  v18 = swift_task_alloc();
  *(v18 + 16) = v140;
  *(v18 + 24) = v152;
  v19 = sub_1D726269C();

  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_1D7270C10;
  v21 = v19 > 1;
  v22 = MEMORY[0x1E69E6158];
  *(v20 + 56) = MEMORY[0x1E69E6158];
  *(v20 + 64) = v2;
  *(v20 + 32) = v142;
  *(v20 + 40) = v3;
  v23 = 1702195828;
  if (v19 <= 1)
  {
    v23 = 0x65736C6166;
  }

  v24 = 0xE500000000000000;
  if (v19 > 1)
  {
    v24 = 0xE400000000000000;
  }

  *(v20 + 96) = v22;
  *(v20 + 104) = v2;
  *(v20 + 72) = v23;
  *(v20 + 80) = v24;

  sub_1D7262EDC();
  sub_1D725C30C();

  *(v0 + 80) = v17;
  v25 = swift_task_alloc();
  *(v25 + 16) = v136;
  *(v25 + 24) = v21;
  *(v25 + 32) = v142;
  *(v25 + 40) = v3;
  v26 = sub_1D72627FC();
  v27 = swift_getWitnessTable();
  v29 = sub_1D5B874E4(sub_1D617CEFC, v25, v26, v144, MEMORY[0x1E69E73E0], v27, MEMORY[0x1E69E7410], v28);

  *(v0 + 88) = v29;
  v30 = swift_task_alloc();
  *(v30 + 16) = v140;
  *(v30 + 24) = v152;
  v31 = sub_1D72627FC();
  swift_getWitnessTable();
  v32 = sub_1D72624AC();

  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_1D7279970;
  v34 = MEMORY[0x1E69E6158];
  *(v33 + 56) = MEMORY[0x1E69E6158];
  *(v33 + 64) = v2;
  *(v33 + 32) = v142;
  *(v33 + 40) = v130;
  v35 = v34;

  v36 = sub_1D726279C();
  *(v33 + 96) = MEMORY[0x1E69E6530];
  *(v33 + 104) = MEMORY[0x1E69E65A8];
  *(v33 + 72) = v36;
  v157 = 0;
  v158 = 0xE000000000000000;
  *(v0 + 96) = v32;
  swift_getWitnessTable();
  sub_1D726466C();
  v37 = v157;
  v38 = v158;
  *(v33 + 136) = v35;
  *(v33 + 144) = v2;
  *(v33 + 112) = v37;
  *(v33 + 120) = v38;
  sub_1D7262EDC();
  sub_1D725C30C();

  v39 = v32;
  *(v0 + 104) = v32;
  v40 = swift_task_alloc();
  *(v40 + 16) = v140;
  *(v40 + 24) = v152;
  sub_1D726246C();

  if ((*(v138 + 48))(v134, 1, v144) != 1)
  {
    v48 = MEMORY[0x1E69E6158];
    v49 = *(v0 + 440);
    v50 = *(v0 + 416);
    v51 = *(v0 + 408);
    v145 = *(v0 + 192);
    v143 = *(v0 + 184);
    v153 = (*(v0 + 352) + 32);
    v147 = *(v0 + 152);
    v150 = *v153;
    (*v153)(*(v0 + 392), *(v0 + 344), *(v0 + 320));
    v52 = swift_allocObject();
    *(v52 + 16) = xmmword_1D7270C10;
    *(v52 + 56) = v48;
    *(v52 + 64) = v49;
    *(v52 + 32) = v51;
    *(v52 + 40) = v50;
    v157 = 0;
    v158 = 0xE000000000000000;

    swift_getWitnessTable();
    sub_1D726466C();
    *(v52 + 96) = v48;
    *(v52 + 104) = v49;
    *(v52 + 72) = 0;
    *(v52 + 80) = 0xE000000000000000;
    sub_1D7262EDC();
    sub_1D725C30C();

    v121 = sub_1D5C02C68(v39, v145, v143);
    v122 = v53;
    v156 = *(v147 + qword_1EDFFCF28);

    v54 = v39;
    if (!sub_1D726279C())
    {
LABEL_28:
      v86 = *(v0 + 392);
      v87 = *(v0 + 320);
      v88 = *(v0 + 304);
      v89 = *(v0 + 280);
      v154 = *(v0 + 264);
      v149 = *(v0 + 272);
      v151 = *(v0 + 256);
      v90 = *(v0 + 240);
      v91 = *(v0 + 248);
      v92 = *(v0 + 232);
      v93 = *(v0 + 216);

      (*(v90 + 16))(v91, v86 + *(v87 + 44), v92);
      sub_1D5C03764(v91, v93, v89);
      LODWORD(v87) = (*(v88 + 48))(v89, 1, v151);
      v94 = *(v149 + 8);
      v94(v89, v154);
      if (v87 != 1)
      {
        v95 = *(v0 + 288);
        v96 = *(v0 + 264);
        *(v0 + 16) = sub_1D5C0BA9C();
        *(v0 + 24) = v97;
        sub_1D7261E1C();
        sub_1D7261D5C();

        v94(v95, v96);
      }

      v131 = *(v0 + 416);
      v133 = *(v0 + 440);
      v129 = *(v0 + 408);
      v98 = *(v0 + 400);
      v99 = *(v0 + 392);
      v100 = *(v0 + 368);
      v101 = *(v0 + 352);
      v102 = *(v0 + 320);
      v103 = *(v0 + 168);
      v104 = *(v0 + 160);
      v105 = *(v0 + 136);
      (*(v101 + 16))(v100, v99, v102);

      v157 = v121;
      v158 = v104;
      v159 = (CACurrentMediaTime() - v103) * 1000.0;
      sub_1D5C03BF0(v100, &v157, v122, v156, v105);
      v106 = swift_allocObject();
      *(v106 + 16) = xmmword_1D7270C10;
      *(v106 + 56) = MEMORY[0x1E69E6158];
      *(v106 + 64) = v133;
      *(v106 + 32) = v129;
      *(v106 + 40) = v131;
      v107 = CACurrentMediaTime();
      v108 = MEMORY[0x1E69E6438];
      *(v106 + 96) = MEMORY[0x1E69E63B0];
      *(v106 + 104) = v108;
      *(v106 + 72) = (v107 - v98) * 1000.0;
      sub_1D7262EDC();
      sub_1D725C30C();

      (*(v101 + 8))(v99, v102);

      v109 = *(v0 + 8);
      goto LABEL_33;
    }

    v55 = 0;
    v56 = *(v0 + 352);
    v120 = *(v0 + 360);
    v57 = *(v0 + 304);
    v141 = *(v0 + 320);
    v148 = (v56 + 16);
    v135 = (*(v0 + 240) + 16);
    v137 = v54;
    v132 = (v57 + 48);
    v126 = (v57 + 16);
    v128 = (v57 + 32);
    v124 = (v57 + 8);
    v125 = (v57 + 56);
    v146 = v56;
    v139 = (v56 + 8);
    v123 = (*(v0 + 272) + 8);
    while (1)
    {
      v58 = sub_1D726277C();
      sub_1D726271C();
      if (v58)
      {
        (*(v146 + 16))(*(v0 + 384), v54 + ((*(v146 + 80) + 32) & ~*(v146 + 80)) + *(v146 + 72) * v55, *(v0 + 320));
        v59 = v55 + 1;
        if (__OFADD__(v55, 1))
        {
          goto LABEL_27;
        }
      }

      else
      {
        result = sub_1D7263DBC();
        if (v120 != 8)
        {
          __break(1u);
          return result;
        }

        v84 = *(v0 + 384);
        v85 = *(v0 + 320);
        *(v0 + 128) = result;
        (*v148)(v84, v0 + 128, v85);
        swift_unknownObjectRelease();
        v59 = v55 + 1;
        if (__OFADD__(v55, 1))
        {
LABEL_27:
          __break(1u);
          goto LABEL_28;
        }
      }

      v60 = *(v0 + 376);
      v150(v60, *(v0 + 384), *(v0 + 320));
      v61 = v60 + *(v141 + 44);
      v62 = sub_1D5C0BA9C();
      v64 = v63;
      if (v62 == sub_1D5C0BA9C() && v64 == v65)
      {
      }

      else
      {
        v67 = sub_1D72646CC();

        if ((v67 & 1) == 0)
        {
          v68 = *(v0 + 296);
          v70 = *(v0 + 248);
          v69 = *(v0 + 256);
          v71 = *(v0 + 216);
          (*v135)(v70, v61, *(v0 + 232));
          sub_1D5C03764(v70, v71, v68);
          v72 = (*v132)(v68, 1, v69);
          v73 = *(v0 + 376);
          v74 = *(v0 + 320);
          if (v72 == 1)
          {
            v75 = *(v0 + 296);
            v76 = *(v0 + 264);
            (*v139)(*(v0 + 376), *(v0 + 320));
            (*v123)(v75, v76);
          }

          else
          {
            v77 = *(v0 + 312);
            v78 = *(v0 + 288);
            v79 = *(v0 + 256);
            (*v128)(v77, *(v0 + 296), v79);
            v80 = sub_1D5C0BA9C();
            v82 = v81;
            (*v126)(v78, v77, v79);
            (*v125)(v78, 0, 1, v79);
            *(v0 + 32) = v80;
            *(v0 + 40) = v82;
            sub_1D7261E1C();
            sub_1D7261E4C();
            (*v124)(v77, v79);
            (*v139)(v73, v74);
          }

          v54 = v137;
          goto LABEL_12;
        }
      }

      (*v139)(*(v0 + 376), *(v0 + 320));
LABEL_12:
      ++v55;
      if (v59 == sub_1D726279C())
      {
        goto LABEL_28;
      }
    }
  }

  v42 = *(v0 + 336);
  v41 = *(v0 + 344);
  v43 = *(v0 + 328);

  (*(v42 + 8))(v41, v43);
  v44 = v39;
  *(v0 + 112) = v39;
  v45 = swift_getWitnessTable();
  if (sub_1D7262CCC())
  {
    v46 = *(v0 + 144);

    type metadata accessor for FeedServiceError();
    swift_getWitnessTable();
    swift_allocError();
    *v47 = v46;
    *(v47 + 8) = 0;
    *(v47 + 16) = 0;
    *(v47 + 24) = 0;
    *(v47 + 32) = 0;
  }

  else
  {
    v110 = *(v0 + 448);
    v112 = *(v0 + 184);
    v111 = *(v0 + 192);
    v113 = *(v0 + 168);
    v114 = *(v0 + 160);
    v155 = sub_1D5C02C68(v44, v111, v112);

    v115 = (CACurrentMediaTime() - v113) * 1000.0;
    *(v0 + 120) = v44;
    v116 = swift_task_alloc();
    *(v116 + 16) = v111;
    *(v116 + 24) = v112;
    v118 = sub_1D5B874E4(sub_1D617CF48, v116, v31, v110, MEMORY[0x1E69E73E0], v45, MEMORY[0x1E69E7410], v117);

    type metadata accessor for FeedServiceError();
    swift_getWitnessTable();
    swift_allocError();
    *v119 = v155;
    *(v119 + 8) = v114;
    *(v119 + 16) = v115;
    *(v119 + 24) = v118;
    *(v119 + 32) = 1;
  }

  swift_willThrow();

  v109 = *(v0 + 8);
LABEL_33:

  return v109();
}

uint64_t sub_1D5BC2898@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v26 = a3;
  v24[1] = a2;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v5 = AssociatedTypeWitness;
  v6 = type metadata accessor for FeedGroupEmitterOutput();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = v24 - v9;
  v11 = type metadata accessor for FeedScoredResult();
  v24[2] = a1;
  v25 = v11;
  v12 = a1 + *(v11 + 44);
  (*(v7 + 16))(v10, v12, v6);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if ((EnumCaseMultiPayload - 4) < 2)
    {
      goto LABEL_5;
    }

    if (EnumCaseMultiPayload == 3)
    {
      (*(v7 + 8))(v10, v6);
LABEL_15:
      v27 = *(v12 + *(type metadata accessor for FeedGroupEmitTaskResult() + 36));
      type metadata accessor for FeedGroupEmitter();
      sub_1D72627FC();

      sub_1D72627BC();
      return sub_1D5BC2D98(v25, v26);
    }

    v18 = type metadata accessor for FeedGroupEmitterEmbeddedOutput();
    sub_1D5B49474(255, qword_1EDF37D80);
    v19 = *(swift_getTupleTypeMetadata2() + 48);
    v20 = swift_getEnumCaseMultiPayload();
    if (v20)
    {
      if (v20 != 1)
      {
        (*(*(v18 - 8) + 8))(v10, v18);
        __swift_destroy_boxed_opaque_existential_1(&v10[v19]);
        goto LABEL_15;
      }

      (*(*(v18 - 8) + 8))(v10, v18);
    }

    else
    {
      v21 = MEMORY[0x1E69E7CA0];
      v22 = MEMORY[0x1E69E6720];
      sub_1D5BEE1B8(255, &qword_1EDF43B70, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720]);
      TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
      sub_1D5B88AA0(&v10[*(TupleTypeMetadata2 + 48)], &qword_1EDF43B70, v21 + 8, v22, sub_1D5BEE1B8);
      (*(*(v5 - 8) + 8))(v10, v5);
    }

    __swift_destroy_boxed_opaque_existential_1(&v10[v19]);
    return sub_1D5BC2D98(v25, v26);
  }

  if (EnumCaseMultiPayload > 1)
  {
LABEL_5:
    (*(v7 + 8))(v10, v6);
    return sub_1D5BC2D98(v25, v26);
  }

  v14 = MEMORY[0x1E69E7CA0];
  v15 = MEMORY[0x1E69E6720];
  sub_1D5BEE1B8(255, &qword_1EDF43B70, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720]);
  v16 = swift_getTupleTypeMetadata2();
  sub_1D5B88AA0(&v10[*(v16 + 48)], &qword_1EDF43B70, v14 + 8, v15, sub_1D5BEE1B8);
  (*(*(v5 - 8) + 8))(v10, v5);
  return sub_1D5BC2D98(v25, v26);
}

uint64_t sub_1D5BC2D98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1D5C02DB8(v56, &v50, v2);
  v42 = *(&v50 + 1);
  v43 = v50;
  v41 = v51;
  v5 = v2 + *(a1 + 44);
  v6 = type metadata accessor for FeedGroupEmitTaskResult();
  v7 = *&v5[v6[9]];
  v8 = type metadata accessor for FeedGroupEmitter();
  v55[3] = v8;
  v55[4] = swift_getWitnessTable();
  v55[0] = v7;
  v9 = *&v5[v6[10]];
  v10 = &v5[v6[11]];
  v39 = *v10;
  v38 = v10[8];
  v37 = *(v10 + 2);
  v36 = v10[24];
  v35 = *(v10 + 4);
  v11 = v10[40];
  v33 = v10[41];
  v34 = v11;
  sub_1D5C034F0(v56, &v50);
  v12 = *&v5[v6[12]];

  v40 = v9;

  v13 = FeedJournalGroupResultOutput.identifier.getter();
  if (v14)
  {
    v15 = v14;
    v32 = v13;
  }

  else
  {
    v32 = sub_1D5C0BA9C();
    v15 = v16;
  }

  __swift_project_boxed_opaque_existential_1(v55, v8);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v31[1] = v31;
  v18 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness, v19);
  v21 = v31 - v20;
  sub_1D5C0354C();
  swift_getAssociatedConformanceWitness();
  v22 = sub_1D725AA4C();
  v24 = v23;
  (*(v18 + 8))(v21, AssociatedTypeWitness);
  sub_1D5BC3420(v56);
  sub_1D5B68374(v55, a2 + 32);
  sub_1D5C034F0(&v50, a2 + 128);
  v47 = v52;
  v48 = v53;
  v49 = v54;
  v45 = v50;
  v46 = v51;
  sub_1D5B68374(v55, v44);
  v25 = swift_allocObject();
  v26 = v48;
  *(v25 + 48) = v47;
  *(v25 + 64) = v26;
  *(v25 + 80) = v49;
  v27 = v46;
  *(v25 + 16) = v45;
  *(v25 + 32) = v27;
  sub_1D5B63F14(v44, v25 + 88);
  *a2 = v32;
  *(a2 + 8) = v15;
  *(a2 + 16) = v22;
  *(a2 + 24) = v24;
  v28 = v39;
  *(a2 + 72) = v40;
  *(a2 + 80) = v28;
  *(a2 + 88) = v38;
  *(a2 + 96) = v37;
  *(a2 + 104) = v36;
  *(a2 + 112) = v35;
  LOBYTE(v28) = v33;
  *(a2 + 120) = v34;
  *(a2 + 121) = v28;
  v29 = v42;
  *(a2 + 200) = v43;
  *(a2 + 208) = v29;
  *(a2 + 216) = v41;
  *(a2 + 224) = v12;
  *(a2 + 232) = sub_1D617CF68;
  *(a2 + 240) = v25;
  return __swift_destroy_boxed_opaque_existential_1(v55);
}

uint64_t sub_1D5BC31E4()
{
  v1 = *(v0 + 80);
  if (v1 <= 2)
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 16);
    goto LABEL_12;
  }

  if (*(v0 + 80) <= 4u)
  {
    if (v1 == 3)
    {
      __swift_destroy_boxed_opaque_existential_1(v0 + 16);
    }

    else if (v1 != 4)
    {
      goto LABEL_12;
    }

LABEL_11:

    goto LABEL_12;
  }

  if (v1 == 5 || v1 == 6)
  {
    goto LABEL_11;
  }

LABEL_12:
  __swift_destroy_boxed_opaque_existential_1(v0 + 88);

  return swift_deallocObject();
}

uint64_t FeedJournalGroupResultOutput.identifier.getter()
{
  sub_1D5C034F0(v0, &v3);
  if (v6 >= 3u)
  {
    if (v6 - 4 < 3)
    {
      sub_1D5BC3420(&v3);
      v3 = 0u;
      v4 = 0u;
      v5 = 0;
      goto LABEL_7;
    }
  }

  sub_1D5B63F14(&v3, v7);
  sub_1D5B63F14(v7, &v3);
  if (*(&v4 + 1))
  {
    __swift_project_boxed_opaque_existential_1(&v3, *(&v4 + 1));
    v1 = sub_1D725AA4C();
    __swift_destroy_boxed_opaque_existential_1(&v3);
    return v1;
  }

LABEL_7:
  sub_1D68370E0(&v3);
  return 0;
}

uint64_t FeedGroupConfig.identifier.getter()
{
  v0 = sub_1D5C036AC();

  return v0;
}

uint64_t sub_1D5BC34D0()
{

  sub_1D725B97C();
}

Swift::Void __swiftcall SportsEmbedConfigurationManager.sceneWillEnterForeground()()
{

  sub_1D725B96C();

  if (v1 != 255)
  {
    if (v1)
    {
      sub_1D6718004(v0, v1);
    }

    else
    {

      sub_1D725B97C();
    }
  }

  sub_1D725B96C();

  if (v1 != 255)
  {
    if (v1)
    {
      sub_1D6718004(v0, v1);
    }

    else
    {

      sub_1D725B97C();
    }
  }

  sub_1D725B96C();

  if (v1 != 255)
  {
    if (v1)
    {
      sub_1D6718004(v0, v1);
    }

    else
    {

      sub_1D725B97C();
    }
  }

  sub_1D725B96C();

  if (v1 != 255)
  {
    if (v1)
    {
      sub_1D6718004(v0, v1);
    }

    else
    {

      sub_1D725B97C();
    }
  }

  sub_1D725B96C();

  if (v1 != 255)
  {
    if (v1)
    {
      sub_1D6718004(v0, v1);
    }

    else
    {

      sub_1D725B97C();
    }
  }

  sub_1D725B96C();

  if (v1 != 255)
  {
    if (v1)
    {
      sub_1D6718004(v0, v1);
    }

    else
    {

      sub_1D725B97C();
    }
  }
}

uint64_t sub_1D5BC37A4()
{
  v0 = sub_1D72597FC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D72597EC();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B6E12C(0, &qword_1EDF3C208);
  v12[1] = v10;
  v14 = 0;
  (*(v6 + 104))(v9, *MEMORY[0x1E69D6E90], v5);
  sub_1D5BC3BE8(0, &qword_1EDF02418, &qword_1EDF181A0);
  sub_1D5BC3C40(0, &qword_1EDF181A0);
  *(swift_allocObject() + 16) = xmmword_1D727E3C0;
  v13 = 0;
  sub_1D725980C();
  v13 = 0x404E000000000000;
  sub_1D725980C();
  v13 = 0x4066800000000000;
  sub_1D725980C();
  v13 = 0x4072C00000000000;
  sub_1D725980C();
  v13 = 0x4082C00000000000;
  sub_1D725980C();
  v13 = 0x408C200000000000;
  sub_1D725980C();
  v13 = 0x40AC200000000000;
  sub_1D725980C();
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6EA0], v0);
  result = sub_1D725982C();
  qword_1EDF18228 = result;
  return result;
}

void sub_1D5BC3BE8(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  if (!*a2)
  {
    sub_1D5BC3C40(255, a3);
    v4 = sub_1D72644CC();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1D5BC3C40(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_1D725981C();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t PuzzleStatsServiceType.updateStats()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 8) + **(a2 + 8));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1D5B64680;

  return v7(0, a1, a2);
}

uint64_t sub_1D5BC3DA8(char a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1D5B64680;

  return sub_1D5BC3E40(a1);
}

uint64_t sub_1D5BC3E40(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 64) = a1;
  sub_1D5BC3F04(0, &qword_1EDF1ADB0, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  *(v2 + 24) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D5BC3F68, v1, 0);
}

void sub_1D5BC3F04(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1D5BC3F68()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 304);
  *(v0 + 32) = v2;
  if (v2)
  {

    v3 = swift_task_alloc();
    *(v0 + 40) = v3;
    *v3 = v0;
    v4 = sub_1D603757C;
  }

  else
  {
    v5 = *(v0 + 24);
    v6 = *(v0 + 64);
    v7 = sub_1D726294C();
    (*(*(v7 - 8) + 56))(v5, 1, 1, v7);
    v9 = sub_1D5BC4174(&qword_1EDF0FE90, v8, type metadata accessor for PuzzleStatsService);
    v10 = swift_allocObject();
    *(v10 + 16) = v1;
    *(v10 + 24) = v9;
    *(v10 + 32) = v1;
    *(v10 + 40) = v6;
    swift_retain_n();
    v11 = sub_1D6BD1334(0, 0, v5, &unk_1D7291E50, v10);
    *(v0 + 48) = v11;
    *(v1 + 304) = v11;

    v3 = swift_task_alloc();
    *(v0 + 56) = v3;
    *v3 = v0;
    v4 = sub_1D5D1BADC;
  }

  v3[1] = v4;

  return MEMORY[0x1EEE6DA40]();
}

uint64_t sub_1D5BC4174(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_1D5BC41C8(uint64_t a1)
{
  v2 = type metadata accessor for FeedLoadingGate.Seal(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D5BC4224(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1D5B64680;

  return sub_1D5BC42E8(a1, v4, v5, v6, v7);
}

uint64_t sub_1D5BC42E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 532) = a5;
  *(v5 + 272) = a4;
  sub_1D5B5B2A0();
  *(v5 + 280) = swift_task_alloc();
  *(v5 + 288) = type metadata accessor for PuzzleStatsService.StatsResult();
  *(v5 + 296) = swift_task_alloc();
  sub_1D5BC4580(0);
  *(v5 + 304) = swift_task_alloc();
  v7 = type metadata accessor for PuzzleStatsState();
  *(v5 + 312) = v7;
  *(v5 + 320) = *(v7 - 8);
  *(v5 + 328) = swift_task_alloc();
  *(v5 + 336) = swift_task_alloc();
  v8 = sub_1D725891C();
  *(v5 + 344) = v8;
  *(v5 + 352) = *(v8 - 8);
  *(v5 + 360) = swift_task_alloc();
  *(v5 + 368) = swift_task_alloc();
  *(v5 + 376) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D5BC45B4, a4, 0);
}

uint64_t type metadata accessor for PuzzleStatsService.StatsResult()
{
  result = qword_1EDF0FEF8;
  if (!qword_1EDF0FEF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D5BC4504()
{
  sub_1D5B5B2A0();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_1D5BC45B4()
{
  if (qword_1EDF3B838 != -1)
  {
    swift_once();
  }

  v1 = sub_1D725C42C();
  v0[48] = __swift_project_value_buffer(v1, qword_1EDFFCFA8);
  v2 = sub_1D725C3FC();
  v3 = sub_1D7262EDC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1D5B42000, v2, v3, "PuzzleStatsService: updating stats...", v4, 2u);
    MEMORY[0x1DA6FD500](v4, -1, -1);
  }

  v5 = v0[34];

  v6 = v5[17];
  v7 = v5[18];
  __swift_project_boxed_opaque_existential_1(v5 + 14, v6);
  if ((*(v7 + 72))(v6, v7))
  {
    v8 = sub_1D725C3FC();
    v9 = sub_1D7262EDC();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_1D5B42000, v8, v9, "PuzzleStatsService: empty puzzle history, exiting.", v10, 2u);
      MEMORY[0x1DA6FD500](v10, -1, -1);
    }
  }

  v11 = swift_task_alloc();
  v0[49] = v11;
  *v11 = v0;
  v11[1] = sub_1D5BC51CC;
  v12 = v0[47];

  return sub_1D5BC47DC(v12);
}

uint64_t sub_1D5BC47DC(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = swift_getObjectType();
  v3 = sub_1D725891C();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D5BC48D8, v1, 0);
}

uint64_t sub_1D5BC48D8(uint64_t a1, uint64_t a2)
{
  v56 = v2;
  if (qword_1EDF181E8 != -1)
  {
    swift_once();
  }

  sub_1D5BC4174(qword_1EDF0FE98, a2, type metadata accessor for PuzzleStatsService);
  sub_1D725964C();
  if (*(v2 + 128) == 1)
  {
    if (qword_1EDF3B838 != -1)
    {
      swift_once();
    }

    v3 = sub_1D725C42C();
    __swift_project_value_buffer(v3, qword_1EDFFCFA8);
    v4 = sub_1D725C3FC();
    v5 = sub_1D7262EDC();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_1D5B42000, v4, v5, "PuzzleStatsService: ignoring stored stats starting date.", v6, 2u);
      MEMORY[0x1DA6FD500](v6, -1, -1);
    }

    sub_1D72587BC();
LABEL_20:

    v49 = *(v2 + 8);

    return v49();
  }

  v7 = *(*(v2 + 24) + 296);
  *(v2 + 96) = v7;
  v8 = [v7 puzzleStatsStartDate];
  if (v8)
  {
    v9 = v8;
    sub_1D72588BC();

    if (qword_1EDF3B838 != -1)
    {
      swift_once();
    }

    v10 = *(v2 + 72);
    v11 = *(v2 + 80);
    v12 = *(v2 + 40);
    v13 = *(v2 + 48);
    v14 = sub_1D725C42C();
    __swift_project_value_buffer(v14, qword_1EDFFCFA8);
    (*(v13 + 16))(v10, v11, v12);
    v15 = sub_1D725C3FC();
    v16 = sub_1D7262EDC();
    v17 = os_log_type_enabled(v15, v16);
    v18 = *(v2 + 72);
    v19 = *(v2 + 40);
    v20 = *(v2 + 48);
    if (v17)
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v55 = v22;
      *v21 = 136315138;
      sub_1D5BC4174(&qword_1EDF3C3B0, 255, MEMORY[0x1E6969530]);
      v23 = sub_1D72644BC();
      v25 = v24;
      (*(v20 + 8))(v18, v19);
      v26 = sub_1D5BC5100(v23, v25, &v55);

      *(v21 + 4) = v26;
      _os_log_impl(&dword_1D5B42000, v15, v16, "PuzzleStatsService: using a stats starting date of %s.", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v22);
      MEMORY[0x1DA6FD500](v22, -1, -1);
      MEMORY[0x1DA6FD500](v21, -1, -1);
    }

    else
    {

      (*(v20 + 8))(v18, v19);
    }

    v48 = *(*(v2 + 48) + 32);
    v48(*(v2 + 88), *(v2 + 80), *(v2 + 40));
    v48(*(v2 + 16), *(v2 + 88), *(v2 + 40));
    goto LABEL_20;
  }

  sub_1D72588CC();
  if (qword_1EDF3B838 != -1)
  {
    swift_once();
  }

  v27 = *(v2 + 56);
  v28 = *(v2 + 64);
  v29 = *(v2 + 40);
  v30 = *(v2 + 48);
  v31 = sub_1D725C42C();
  __swift_project_value_buffer(v31, qword_1EDFFCFA8);
  v32 = *(v30 + 16);
  v32(v27, v28, v29);
  v33 = sub_1D725C3FC();
  v34 = sub_1D7262EDC();
  v35 = os_log_type_enabled(v33, v34);
  v37 = *(v2 + 48);
  v36 = *(v2 + 56);
  v38 = *(v2 + 40);
  if (v35)
  {
    buf = swift_slowAlloc();
    v54 = swift_slowAlloc();
    v55 = v54;
    *buf = 136315138;
    sub_1D5BC4174(&qword_1EDF3C3B0, 255, MEMORY[0x1E6969530]);
    v39 = v32;
    v40 = sub_1D72644BC();
    v42 = v41;
    v52 = v34;
    v45 = *(v37 + 8);
    v44 = v37 + 8;
    v43 = v45;
    v45(v36, v38);
    v46 = v40;
    v32 = v39;
    v47 = sub_1D5BC5100(v46, v42, &v55);

    *(buf + 4) = v47;
    _os_log_impl(&dword_1D5B42000, v33, v52, "PuzzleStatsService: setting stats starting date to %s.", buf, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v54);
    MEMORY[0x1DA6FD500](v54, -1, -1);
    MEMORY[0x1DA6FD500](buf, -1, -1);
  }

  else
  {

    v51 = *(v37 + 8);
    v44 = v37 + 8;
    v43 = v51;
    v51(v36, v38);
  }

  *(v2 + 104) = v44;
  *(v2 + 112) = v43;
  v32(*(v2 + 88), *(v2 + 64), *(v2 + 40));

  return MEMORY[0x1EEE6DFA0](sub_1D6037EF4, 0, 0);
}

uint64_t sub_1D5BC4F34()
{
  v0 = sub_1D72597FC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_1D72597EC();
  v7 = MEMORY[0x1EEE9AC00](v5, v6);
  (*(v9 + 104))(&v11[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)], *MEMORY[0x1E69D6E90], v7);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6EA0], v0);
  v11[15] = 0;
  sub_1D5B6E12C(0, &qword_1EDF45BA8);
  swift_allocObject();
  result = sub_1D725987C();
  qword_1EDF181F0 = result;
  return result;
}

unint64_t sub_1D5BC5100(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1D5C4229C(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x1E69E6A18];
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
    sub_1D5B76B10(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

uint64_t sub_1D5BC51CC()
{
  v1 = *(*v0 + 272);

  return MEMORY[0x1EEE6DFA0](sub_1D5BC52DC, v1, 0);
}

uint64_t sub_1D5BC52DC()
{
  ObjectType = swift_getObjectType();
  v2 = swift_task_alloc();
  *(v0 + 400) = v2;
  *v2 = v0;
  v2[1] = sub_1D5BC5548;

  return FCNewsAppConfigurationManager.fetchConfiguration(cachedOnly:)(0, ObjectType);
}

uint64_t FCNewsAppConfigurationManager.fetchConfiguration(cachedOnly:)(char a1, uint64_t a2)
{
  *(v3 + 24) = a2;
  *(v3 + 32) = v2;
  *(v3 + 64) = a1;
  return MEMORY[0x1EEE6DFA0](sub_1D5BC53AC, 0, 0);
}

uint64_t sub_1D5BC53AC()
{
  if ([*(v0 + 32) respondsToSelector_])
  {
    v1 = [*(v0 + 32) fetchedAppConfiguration];
    if (v1)
    {
LABEL_5:
      v2 = *(v0 + 8);

      return v2(v1);
    }
  }

  if (*(v0 + 64) == 1)
  {
    v1 = [*(v0 + 32) possiblyUnfetchedAppConfiguration];
    goto LABEL_5;
  }

  v4 = swift_task_alloc();
  *(v0 + 40) = v4;
  *(v4 + 16) = *(v0 + 24);
  v5 = swift_task_alloc();
  *(v0 + 48) = v5;
  v6 = sub_1D5B5534C(0, &qword_1EDF1A890);
  *v5 = v0;
  v5[1] = sub_1D611E160;

  return MEMORY[0x1EEE6DE38](v0 + 16, 0, 0, 0xD00000000000001FLL, 0x80000001D73CA350, sub_1D611E5DC, v4, v6);
}

uint64_t sub_1D5BC5548(uint64_t a1)
{
  v4 = *v2;
  v4[51] = v1;

  v5 = v4[34];
  if (v1)
  {
    v6 = sub_1D60376F4;
  }

  else
  {
    v4[52] = a1;
    v6 = sub_1D5BC5684;
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

uint64_t sub_1D5BC5684()
{
  v1 = *(v0 + 272);
  v2 = [*(v0 + 416) puzzlesConfig];
  swift_unknownObjectRelease();
  v3 = [v2 puzzleTypes];

  v4 = sub_1D726267C();
  *(v0 + 424) = v4;

  v5 = v1[23];
  v6 = v1[24];
  __swift_project_boxed_opaque_existential_1(v1 + 20, v5);
  v9 = (*(v6 + 104) + **(v6 + 104));
  v7 = swift_task_alloc();
  *(v0 + 432) = v7;
  *v7 = v0;
  v7[1] = sub_1D5C43704;

  return v9(v4, v5, v6);
}