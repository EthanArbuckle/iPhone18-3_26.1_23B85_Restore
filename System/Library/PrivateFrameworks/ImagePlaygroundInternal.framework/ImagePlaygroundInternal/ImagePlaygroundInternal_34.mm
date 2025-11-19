uint64_t sub_1D2636D0C()
{

  v1 = *(v0 + 224);
  v2 = *(v0 + 232);

  return MEMORY[0x1EEE6DFA0](sub_1D2636D84, v1, v2);
}

uint64_t sub_1D2636D84()
{

  v1 = v0[36];
  sub_1D28724A8();
  v2 = sub_1D2873CA8();
  v3 = sub_1D2878A18();
  v4 = os_log_type_enabled(v2, v3);
  v6 = v0[13];
  v5 = v0[14];
  v7 = v0[12];
  if (v4)
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_1D226E000, v2, v3, "Can't generate shareableImageData for photo asset", v8, 2u);
    MEMORY[0x1D38A3520](v8, -1, -1);
  }

  (*(v6 + 8))(v5, v7);

  v9 = v0[1];

  return v9(0, 0xF000000000000000);
}

uint64_t sub_1D2636EFC()
{
  v2 = *v1;
  *(*v1 + 312) = v0;

  v3 = *(v2 + 232);
  v4 = *(v2 + 224);
  if (v0)
  {
    v5 = sub_1D26372F0;
  }

  else
  {
    v5 = sub_1D2637050;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1D2637050()
{
  v1 = v0[10];
  v2 = v0[11];

  sub_1D22BD1D0(v2, v1, &unk_1EC6DE5A0);
  v3 = type metadata accessor for PlaygroundImage();
  v4 = (*(*(v3 - 8) + 48))(v1, 1, v3);
  v6 = v0[24];
  v5 = v0[25];
  v8 = v0[22];
  v7 = v0[23];
  v10 = v0[20];
  v9 = v0[21];
  if (v4 == 1)
  {
    v11 = v0[10];
    sub_1D22BD238(v0[11], &unk_1EC6DE5A0);
    (*(v9 + 8))(v8, v10);
    (*(v6 + 8))(v5, v7);
    sub_1D22BD238(v11, &unk_1EC6DE5A0);
    v12 = 0;
    v13 = 0xF000000000000000;
  }

  else
  {
    v23 = v0[25];
    v14 = v0[17];
    v15 = v0[18];
    v16 = v0[15];
    v17 = v0[10];
    v22 = v0[11];
    (*(v15 + 16))(v16, v0[8], v14);
    (*(v15 + 56))(v16, 0, 1, v14);
    v18 = _s23ImagePlaygroundInternal0bA0V9imageData3for24ensureRegionalCompliance10Foundation0E0VSg22UniformTypeIdentifiers6UTTypeVSg_SbtF_0(v16);
    v13 = v19;
    sub_1D22BD238(v16, &qword_1EC6DAE70);
    sub_1D22BD238(v22, &unk_1EC6DE5A0);
    (*(v9 + 8))(v8, v10);
    v12 = v18;
    (*(v6 + 8))(v23, v7);
    sub_1D263A5A4(v17, type metadata accessor for PlaygroundImage);
  }

  v20 = v0[1];

  return v20(v12, v13);
}

uint64_t sub_1D26372F0()
{
  v2 = v0[24];
  v1 = v0[25];
  v4 = v0[22];
  v3 = v0[23];
  v5 = v0[20];
  v6 = v0[21];

  (*(v6 + 8))(v4, v5);
  (*(v2 + 8))(v1, v3);
  v7 = v0[39];
  sub_1D28724A8();
  v8 = sub_1D2873CA8();
  v9 = sub_1D2878A18();
  v10 = os_log_type_enabled(v8, v9);
  v12 = v0[13];
  v11 = v0[14];
  v13 = v0[12];
  if (v10)
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_1D226E000, v8, v9, "Can't generate shareableImageData for photo asset", v14, 2u);
    MEMORY[0x1D38A3520](v14, -1, -1);
  }

  (*(v12 + 8))(v11, v13);

  v15 = v0[1];

  return v15(0, 0xF000000000000000);
}

uint64_t sub_1D26374A4()
{
  v0 = sub_1D2873AA8();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v16 - v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAE60);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1D287F550;
  sub_1D2873A08();
  v8 = sub_1D28739E8();
  v10 = v9;
  v11 = *(v1 + 8);
  v11(v6, v0);
  *(v7 + 32) = v8;
  *(v7 + 40) = v10;
  sub_1D2873A28();
  v12 = sub_1D28739E8();
  v14 = v13;
  result = (v11)(v3, v0);
  *(v7 + 48) = v12;
  *(v7 + 56) = v14;
  qword_1EC6DF5B0 = v7;
  return result;
}

uint64_t static PhotoAssetItemProviderWriting.writableTypeIdentifiersForItemProvider.getter()
{
  if (qword_1EC6D8D60 != -1)
  {
    swift_once();
  }

  return sub_1D2870F68();
}

id PhotoAssetItemProviderWriting.init(asset:)(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC23ImagePlaygroundInternal29PhotoAssetItemProviderWriting_asset] = a1;
  v5.receiver = v1;
  v5.super_class = ObjectType;
  return objc_msgSendSuper2(&v5, sel_init);
}

uint64_t PhotoAssetItemProviderWriting.loadData(withTypeIdentifier:forItemProviderCompletionHandler:)(uint64_t a1, uint64_t a2, char *a3, char *a4)
{
  v36 = a3;
  v37 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAE70);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v35 = &v35 - v7;
  v8 = sub_1D2873AA8();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v35 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v35 - v16;
  sub_1D2873A88();
  v18 = sub_1D28739E8();
  v20 = v19;
  v21 = *(v9 + 8);
  v21(v17, v8);
  if (v18 == a1 && v20 == a2)
  {

    goto LABEL_16;
  }

  v23 = sub_1D2879618();

  if (v23)
  {
LABEL_16:
    sub_1D2637A28(1, v36, v37);
    return 0;
  }

  sub_1D2873A28();
  v24 = sub_1D28739E8();
  v26 = v25;
  v21(v14, v8);
  if (v24 == a1 && v26 == a2)
  {
LABEL_13:

    goto LABEL_14;
  }

  v28 = sub_1D2879618();

  if ((v28 & 1) == 0)
  {
    sub_1D2873A08();
    v29 = sub_1D28739E8();
    v31 = v30;
    v21(v11, v8);
    if (v29 != a1 || v31 != a2)
    {
      v34 = sub_1D2879618();

      if ((v34 & 1) == 0)
      {
        (v36)(0, 0xF000000000000000, 0);
        return 0;
      }

      goto LABEL_14;
    }

    goto LABEL_13;
  }

LABEL_14:
  sub_1D2870F68();
  v32 = v35;
  sub_1D2873AB8();
  sub_1D2637C18(v32, v36, v37);
  sub_1D22BD238(v32, &qword_1EC6DAE70);
  return 0;
}

uint64_t sub_1D2637A28(char a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8E60);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v17[-v8];
  if ([objc_opt_self() isMainThread])
  {
    v10 = sub_1D2878568();
    MEMORY[0x1EEE9AC00](v10);
    *&v17[-32] = v3;
    v17[-24] = a1 & 1;
    *&v17[-16] = a2;
    *&v17[-8] = a3;
    return sub_1D239DDE8(sub_1D263A340, &v17[-48]);
  }

  else
  {
    v12 = sub_1D28785F8();
    (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
    sub_1D2878568();
    v13 = v3;
    sub_1D2870F78();
    v14 = sub_1D2878558();
    v15 = swift_allocObject();
    v16 = MEMORY[0x1E69E85E0];
    *(v15 + 16) = v14;
    *(v15 + 24) = v16;
    *(v15 + 32) = v13;
    *(v15 + 40) = a1 & 1;
    *(v15 + 48) = a2;
    *(v15 + 56) = a3;
    sub_1D22AE01C(0, 0, v9, &unk_1D289A1E0, v15);
  }
}

uint64_t sub_1D2637C18(uint64_t a1, char *a2, char *a3)
{
  v33 = a2;
  v34 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8E60);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v32 = &v32 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAE70);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v32 - v8;
  v10 = sub_1D2873AA8();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v32 - v15;
  sub_1D22BD1D0(a1, v9, &qword_1EC6DAE70);
  v17 = *(v11 + 48);
  if (v17(v9, 1, v10) == 1)
  {
    if (qword_1ED8A5308 != -1)
    {
      swift_once();
    }

    v18 = __swift_project_value_buffer(v10, qword_1ED8A5310);
    (*(v11 + 16))(v16, v18, v10);
    if (v17(v9, 1, v10) != 1)
    {
      sub_1D22BD238(v9, &qword_1EC6DAE70);
    }
  }

  else
  {
    (*(v11 + 32))(v16, v9, v10);
  }

  if ([objc_opt_self() isMainThread])
  {
    v19 = sub_1D2878568();
    MEMORY[0x1EEE9AC00](v19);
    v21 = v33;
    v20 = v34;
    *(&v32 - 4) = v3;
    *(&v32 - 3) = v21;
    *(&v32 - 2) = v20;
    *(&v32 - 1) = v16;
    sub_1D239DDE8(sub_1D263A4A0, (&v32 - 6));
  }

  else
  {
    v22 = sub_1D28785F8();
    (*(*(v22 - 8) + 56))(v32, 1, 1, v22);
    (*(v11 + 16))(v13, v16, v10);
    sub_1D2878568();
    v23 = v3;
    v24 = v34;
    sub_1D2870F78();
    v25 = sub_1D2878558();
    v26 = (*(v11 + 80) + 40) & ~*(v11 + 80);
    v27 = swift_allocObject();
    v28 = MEMORY[0x1E69E85E0];
    *(v27 + 2) = v25;
    *(v27 + 3) = v28;
    *(v27 + 4) = v23;
    (*(v11 + 32))(&v27[v26], v13, v10);
    v29 = &v27[(v12 + v26 + 7) & 0xFFFFFFFFFFFFFFF8];
    v30 = v32;
    *v29 = v33;
    v29[1] = v24;
    sub_1D22AE01C(0, 0, v30, &unk_1D289A1F8, v27);
  }

  return (*(v11 + 8))(v16, v10);
}

void sub_1D2638108(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 >> 60 == 15)
  {
    v6 = 0;
    if (a3)
    {
LABEL_3:
      v7 = sub_1D28714A8();
      goto LABEL_6;
    }
  }

  else
  {
    v6 = sub_1D28716D8();
    if (a3)
    {
      goto LABEL_3;
    }
  }

  v7 = 0;
LABEL_6:
  v8 = v7;
  (*(a4 + 16))(a4, v6);
}

void sub_1D26381A0(uint64_t a1, int a2, void (*a3)(void), uint64_t a4)
{
  v7 = *(a1 + OBJC_IVAR____TtC23ImagePlaygroundInternal29PhotoAssetItemProviderWriting_asset);
  sub_1D2870F78();
  v8 = sub_1D26422B8(a2, v7, a3, a4);
}

void sub_1D2638210(uint64_t a1, void (*a2)(void))
{
  v4 = sub_1D28716B8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAE30);
  MEMORY[0x1EEE9AC00](v8);
  v10 = (&v16 - v9);
  sub_1D22BD1D0(a1, &v16 - v9, &qword_1EC6DAE30);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = *v10;
    v12 = *v10;
    (a2)(0, 0xF000000000000000, v11);
  }

  else
  {
    (*(v5 + 32))(v7, v10, v4);
    v13 = sub_1D28715A8();
    v15 = v14;
    a2();
    sub_1D22D6D60(v13, v15);
    (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_1D26383F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 24) = a6;
  *(v7 + 32) = a7;
  *(v7 + 160) = a5;
  *(v7 + 16) = a4;
  v8 = sub_1D28716B8();
  *(v7 + 40) = v8;
  *(v7 + 48) = *(v8 - 8);
  *(v7 + 56) = swift_task_alloc();
  *(v7 + 64) = sub_1D2878568();
  *(v7 + 72) = sub_1D2878558();
  v10 = sub_1D28784F8();
  *(v7 + 80) = v10;
  *(v7 + 88) = v9;

  return MEMORY[0x1EEE6DFA0](sub_1D26384F4, v10, v9);
}

uint64_t sub_1D26384F4()
{
  v0[12] = *(v0[2] + OBJC_IVAR____TtC23ImagePlaygroundInternal29PhotoAssetItemProviderWriting_asset);
  v0[13] = sub_1D2878558();
  v2 = sub_1D28784F8();
  v0[14] = v2;
  v0[15] = v1;

  return MEMORY[0x1EEE6DFA0](sub_1D2638594, v2, v1);
}

uint64_t sub_1D2638594()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 160);
  v3 = sub_1D2878558();
  *(v0 + 128) = v3;
  v4 = swift_task_alloc();
  *(v0 + 136) = v4;
  *(v4 + 16) = v1;
  *(v4 + 24) = v2;
  *(v4 + 25) = 1;
  v5 = swift_task_alloc();
  *(v0 + 144) = v5;
  *v5 = v0;
  v5[1] = sub_1D26386B4;
  v6 = *(v0 + 56);
  v7 = *(v0 + 40);
  v8 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6DE38](v6, v3, v8, 0xD00000000000003FLL, 0x80000001D28B57A0, sub_1D23F564C, v4, v7);
}

uint64_t sub_1D26386B4()
{
  v2 = *v1;
  *(*v1 + 152) = v0;

  if (v0)
  {
    v3 = *(v2 + 112);
    v4 = *(v2 + 120);
    v5 = sub_1D263890C;
  }

  else
  {

    v3 = *(v2 + 112);
    v4 = *(v2 + 120);
    v5 = sub_1D26387D8;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

uint64_t sub_1D26387D8()
{

  v1 = *(v0 + 80);
  v2 = *(v0 + 88);

  return MEMORY[0x1EEE6DFA0](sub_1D263883C, v1, v2);
}

uint64_t sub_1D263883C()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];
  v4 = v0[3];

  v5 = sub_1D28715A8();
  v7 = v6;
  v4();
  sub_1D22D6D60(v5, v7);
  (*(v2 + 8))(v1, v3);

  v8 = v0[1];

  return v8();
}

uint64_t sub_1D263890C()
{

  v1 = *(v0 + 80);
  v2 = *(v0 + 88);

  return MEMORY[0x1EEE6DFA0](sub_1D2638984, v1, v2);
}

uint64_t sub_1D2638984()
{
  v1 = v0[19];
  v2 = v0[3];

  v3 = v1;
  v2(0, 0xF000000000000000, v1);

  v4 = v0[1];

  return v4();
}

void sub_1D2638A28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v50 = a2;
  v49 = sub_1D2878A88();
  MEMORY[0x1EEE9AC00](v49);
  v48 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1D2877B68();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v47 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1D2878AA8();
  v44 = *(v10 - 1);
  v45 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v46 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAE30);
  MEMORY[0x1EEE9AC00](v51);
  v13 = (&v40 - v12);
  v14 = sub_1D2873AA8();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x1EEE9AC00](v14);
  v18 = *(a1 + OBJC_IVAR____TtC23ImagePlaygroundInternal29PhotoAssetItemProviderWriting_asset);
  (*(v15 + 16))(&v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), a4, v14, v17);
  v19 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = v50;
  *(v20 + 24) = a3;
  (*(v15 + 32))(v20 + v19, &v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), v14);
  v52 = sub_1D22BCFD0(0, &qword_1EC6D74E0);
  v53 = &protocol witness table for PHAsset;
  swift_getKeyPath();
  aBlock[0] = v18;
  sub_1D22BB9D8(&qword_1EC6DAE20, &unk_1EC6DE550);
  sub_1D2870F78();
  sub_1D28719E8();

  v21 = (v18 + *(*v18 + 216));
  v22 = *v21;
  v23 = v21[1];
  v24 = swift_allocObject();
  *(v24 + 16) = v18;
  *(v24 + 24) = v22;
  *(v24 + 32) = v23;
  *(v24 + 40) = 1;
  *(v24 + 48) = sub_1D263A4C0;
  *(v24 + 56) = v20;
  swift_beginAccess();
  v25 = v18[10];
  if (v25)
  {
    sub_1D22BCFD0(0, &unk_1EC6DF5C0);
    v50 = v23;
    swift_bridgeObjectRetain_n();
    swift_retain_n();
    swift_retain_n();
    v26 = v25;
    v27 = v55;
    v28 = sub_1D233F280(v26);
    if (v27)
    {
      *v13 = v27;
      swift_storeEnumTagMultiPayload();
      v29 = v27;
      sub_1D233A5C4(v13, v18, v22, v50, 1, sub_1D263A4C0, v20);

      sub_1D22BD238(v13, &qword_1EC6DAE30);

      v30 = 0;
    }

    else
    {
      v51 = v28;
      v41 = [objc_allocWithZone(MEMORY[0x1E69786B0]) init];
      [v41 setVariant_];
      v33 = sub_1D22BCFD0(0, &qword_1ED89CD50);
      v42 = "shareableImage()";
      v43 = v33;
      (*(v44 + 104))(v46, *MEMORY[0x1E69E8098], v45);
      sub_1D2877B58();
      aBlock[0] = MEMORY[0x1E69E7CC0];
      sub_1D263A534();
      v55 = 0;
      v45 = v26;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DAE50);
      sub_1D22BB9D8(&qword_1ED89CE80, &unk_1EC6DAE50);
      sub_1D2879088();
      v34 = sub_1D2878AD8();
      v35 = v41;
      [v41 setResultHandlerQueue_];

      v36 = swift_allocObject();
      *(v36 + 16) = sub_1D233F26C;
      *(v36 + 24) = v24;
      aBlock[4] = sub_1D233F344;
      aBlock[5] = v36;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1D23372C0;
      aBlock[3] = &block_descriptor_30;
      v37 = _Block_copy(aBlock);
      sub_1D2870F78();

      v38 = v51;
      [v51 exportWithOptions:v35 completionHandler:v37];
      _Block_release(v37);
      v39 = v38;
      v30 = [v38 progress];
    }
  }

  else
  {
    sub_1D233F184();
    v31 = swift_allocError();
    *v32 = 0;
    *v13 = v31;
    swift_storeEnumTagMultiPayload();
    swift_bridgeObjectRetain_n();
    swift_retain_n();
    swift_retain_n();
    sub_1D233A5C4(v13, v18, v22, v23, 1, sub_1D263A4C0, v20);
    sub_1D22BD238(v13, &qword_1EC6DAE30);

    v30 = 0;
  }
}

uint64_t sub_1D263923C(uint64_t a1, void (*a2)(uint64_t, unint64_t, void), uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAE70);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v20 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE5A0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v20 - v11;
  sub_1D22BD1D0(a1, &v20 - v11, &unk_1EC6DE5A0);
  v13 = type metadata accessor for PlaygroundImage();
  if ((*(*(v13 - 8) + 48))(v12, 1, v13) == 1)
  {
    sub_1D22BD238(v12, &unk_1EC6DE5A0);
    v14 = 0;
    v15 = 0xF000000000000000;
  }

  else
  {
    v16 = sub_1D2873AA8();
    v17 = *(v16 - 8);
    (*(v17 + 16))(v9, a4, v16);
    (*(v17 + 56))(v9, 0, 1, v16);
    v14 = _s23ImagePlaygroundInternal0bA0V9imageData3for24ensureRegionalCompliance10Foundation0E0VSg22UniformTypeIdentifiers6UTTypeVSg_SbtF_0(v9);
    v15 = v18;
    sub_1D22BD238(v9, &qword_1EC6DAE70);
    sub_1D263A5A4(v12, type metadata accessor for PlaygroundImage);
  }

  a2(v14, v15, 0);
  return sub_1D22D6D4C(v14, v15);
}

uint64_t sub_1D2639498(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  sub_1D2878568();
  v7[6] = sub_1D2878558();
  v9 = sub_1D28784F8();
  v7[7] = v9;
  v7[8] = v8;

  return MEMORY[0x1EEE6DFA0](sub_1D2639534, v9, v8);
}

uint64_t sub_1D2639534()
{
  v1 = swift_task_alloc();
  *(v0 + 72) = v1;
  *v1 = v0;
  v1[1] = sub_1D26395F0;
  v2 = *(v0 + 24);

  return sub_1D263623C(v2, 1);
}

uint64_t sub_1D26395F0(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 80) = a1;
  *(v4 + 88) = a2;

  v5 = *(v3 + 64);
  v6 = *(v3 + 56);

  return MEMORY[0x1EEE6DFA0](sub_1D2639718, v6, v5);
}

uint64_t sub_1D2639718()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[4];

  v3(v2, v1, 0);
  sub_1D22D6D4C(v2, v1);
  v4 = v0[1];

  return v4();
}

id PhotoAssetItemProviderWriting.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id PhotoAssetItemProviderWriting.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1D26398D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[8] = a4;
  v5[9] = v4;
  v5[6] = a2;
  v5[7] = a3;
  v5[5] = a1;
  v6 = sub_1D2872438();
  v5[10] = v6;
  v5[11] = *(v6 - 8);
  v5[12] = swift_task_alloc();
  v5[13] = sub_1D2878568();
  v5[14] = sub_1D2878558();
  v5[15] = sub_1D2878558();
  v8 = sub_1D28784F8();
  v5[16] = v8;
  v5[17] = v7;

  return MEMORY[0x1EEE6DFA0](sub_1D26399E0, v8, v7);
}

uint64_t sub_1D26399E0()
{
  v1 = v0[9];
  swift_beginAccess();
  v2 = *(v1 + 80);
  v0[18] = v2;
  if (v2)
  {
    __swift_project_boxed_opaque_existential_1((v0[9] + 16), *(v0[9] + 40));
    v3 = v2;
    v4 = swift_task_alloc();
    v0[19] = v4;
    *v4 = v0;
    v4[1] = sub_1D2639B50;
    v5 = v0[12];

    return sub_1D23E4308(v5, v3);
  }

  else
  {

    sub_1D233F184();
    v7 = swift_allocError();
    *v8 = 0;
    swift_willThrow();
    v0[21] = v7;
    v10 = sub_1D28784F8();

    return MEMORY[0x1EEE6DFA0](sub_1D2639E88, v10, v9);
  }
}

uint64_t sub_1D2639B50()
{
  v2 = *v1;
  *(*v1 + 160) = v0;

  v3 = *(v2 + 136);
  v4 = *(v2 + 128);
  if (v0)
  {
    v5 = sub_1D2639DF8;
  }

  else
  {
    v5 = sub_1D2639C8C;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1D2639C8C()
{
  v1 = *(v0 + 144);

  v3 = sub_1D28784F8();

  return MEMORY[0x1EEE6DFA0](sub_1D2639D20, v3, v2);
}

uint64_t sub_1D2639D20()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[10];
  v5 = v0[7];
  v4 = v0[8];
  v7 = v0[5];
  v6 = v0[6];

  v8 = sub_1D263A720();
  sub_1D233AB5C(v6, v5, v4, v8 & 1, v7);
  (*(v2 + 8))(v1, v3);

  v9 = v0[1];

  return v9();
}

uint64_t sub_1D2639DF8()
{
  v1 = v0[18];

  v0[21] = v0[20];
  v3 = sub_1D28784F8();

  return MEMORY[0x1EEE6DFA0](sub_1D2639E88, v3, v2);
}

uint64_t sub_1D2639E88()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D2639EF8(uint64_t a1, uint64_t a2, uint64_t a3, const void *a4)
{
  v40 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAE70);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v39 = &v37 - v8;
  v9 = sub_1D2873AA8();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v38 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v37 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v37 - v16;
  v18 = swift_allocObject();
  *(v18 + 16) = a4;
  v37 = a4;
  _Block_copy(a4);
  sub_1D2873A88();
  v19 = sub_1D28739E8();
  v21 = v20;
  v22 = *(v10 + 8);
  v22(v17, v9);
  if (v19 == a1 && v21 == a2)
  {

    goto LABEL_16;
  }

  v24 = sub_1D2879618();

  if (v24)
  {
LABEL_16:
    sub_1D2637A28(1, sub_1D263A260, v18);
    goto LABEL_17;
  }

  sub_1D2873A28();
  v25 = sub_1D28739E8();
  v27 = v26;
  v22(v14, v9);
  if (v25 == a1 && v27 == a2)
  {
LABEL_13:

    goto LABEL_14;
  }

  v29 = sub_1D2879618();

  if ((v29 & 1) == 0)
  {
    v30 = v38;
    sub_1D2873A08();
    v31 = sub_1D28739E8();
    v33 = v32;
    v22(v30, v9);
    if (v31 != a1 || v33 != a2)
    {
      v36 = sub_1D2879618();

      if ((v36 & 1) == 0)
      {
        (*(v37 + 2))(v37, 0, 0);
        goto LABEL_17;
      }

      goto LABEL_14;
    }

    goto LABEL_13;
  }

LABEL_14:
  sub_1D2870F68();
  v34 = v39;
  sub_1D2873AB8();
  sub_1D2637C18(v34, sub_1D263A260, v18);
  sub_1D22BD238(v34, &qword_1EC6DAE70);
LABEL_17:

  return 0;
}

uint64_t sub_1D263A268(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v9 = *(v1 + 48);
  v8 = *(v1 + 56);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1D22BDFF8;

  return sub_1D26383F4(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_1D263A364(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_1D2873AA8() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = (v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_1D22BC8FC;

  return sub_1D2639498(a1, v7, v8, v9, v1 + v6, v11, v12);
}

uint64_t sub_1D263A4C0(uint64_t a1)
{
  v3 = *(sub_1D2873AA8() - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  return sub_1D263923C(a1, v4, v5, v6);
}

unint64_t sub_1D263A534()
{
  result = qword_1ED89CD60;
  if (!qword_1ED89CD60)
  {
    sub_1D2878A88();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89CD60);
  }

  return result;
}

uint64_t block_copy_helper_30(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1D2870F78();
}

uint64_t sub_1D263A5A4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t _PhotoAsset.creationDate.getter@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  sub_1D263DB80();

  v3 = *(*v1 + 184);
  swift_beginAccess();
  v4 = sub_1D2871798();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t sub_1D263A6E8()
{
  v0 = sub_1D2642160();
  sub_1D2870F68();
  return v0;
}

uint64_t sub_1D263A720()
{
  v0 = sub_1D2872008();
  v31 = *(v0 - 8);
  v32 = v0;
  MEMORY[0x1EEE9AC00](v0);
  v29 = &v25 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v30 = &v25 - v3;
  v4 = sub_1D2872278();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1D2872428();
  v27 = *(v8 - 8);
  v28 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v26 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_1D28722E8();
  v11 = result;
  v12 = *(result + 16);
  if (v12)
  {
    v13 = 0;
    v14 = *MEMORY[0x1E696E458];
    while (1)
    {
      if (v13 >= *(v11 + 16))
      {
        __break(1u);
        return result;
      }

      (*(v5 + 16))(v7, v11 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v13, v4);
      if ((*(v5 + 88))(v7, v4) == v14)
      {
        break;
      }

      ++v13;
      result = (*(v5 + 8))(v7, v4);
      if (v12 == v13)
      {
        goto LABEL_6;
      }
    }

    (*(v5 + 96))(v7, v4);
    v17 = v26;
    v16 = v27;
    v18 = v28;
    (*(v27 + 32))(v26, v7, v28);
    sub_1D2872418();
    v19 = v30;
    sub_1D2871EA8();
    v20 = v29;
    sub_1D2871FC8();
    v21 = MEMORY[0x1D389AA00](v19, v20);
    v22 = *(v31 + 8);
    v23 = v20;
    v24 = v32;
    v22(v23, v32);
    if (v21)
    {
      v15 = 1;
    }

    else
    {
      v15 = sub_1D2871F78();
    }

    v22(v19, v24);
    (*(v16 + 8))(v17, v18);
  }

  else
  {
LABEL_6:

    v15 = 0;
  }

  return v15 & 1;
}

uint64_t _PhotoAsset.shareableImageMakeURL(mostCompatible:ensureRegionalCompliance:)(uint64_t a1, char a2, char a3)
{
  *(v4 + 97) = a3;
  *(v4 + 96) = a2;
  *(v4 + 16) = a1;
  *(v4 + 24) = v3;
  *(v4 + 32) = sub_1D2878568();
  *(v4 + 40) = sub_1D2878558();
  v6 = sub_1D28784F8();
  *(v4 + 48) = v6;
  *(v4 + 56) = v5;

  return MEMORY[0x1EEE6DFA0](sub_1D263AB34, v6, v5);
}

uint64_t sub_1D263AB34()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 97);
  v3 = *(v0 + 96);
  v4 = sub_1D2878558();
  *(v0 + 64) = v4;
  v5 = swift_task_alloc();
  *(v0 + 72) = v5;
  *(v5 + 16) = v1;
  *(v5 + 24) = v3;
  *(v5 + 25) = v2;
  v6 = swift_task_alloc();
  *(v0 + 80) = v6;
  v7 = sub_1D28716B8();
  *v6 = v0;
  v6[1] = sub_1D263AC58;
  v8 = *(v0 + 16);
  v9 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6DE38](v8, v4, v9, 0xD00000000000003FLL, 0x80000001D28B57A0, sub_1D263EA98, v5, v7);
}

uint64_t sub_1D263AC58()
{
  v2 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v3 = *(v2 + 48);
    v4 = *(v2 + 56);
    v5 = sub_1D263ADE0;
  }

  else
  {

    v3 = *(v2 + 48);
    v4 = *(v2 + 56);
    v5 = sub_1D263AD7C;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

uint64_t sub_1D263AD7C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D263ADE0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t _PhotoAsset.loadImageIfNeeded(type:forceReload:)(uint64_t a1, _BYTE *a2, char a3)
{
  v5 = v3;
  *(v4 + 83) = a3;
  *(v4 + 16) = a1;
  *(v4 + 24) = v5;
  *(v4 + 32) = *v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE5A0);
  *(v4 + 40) = swift_task_alloc();
  *(v4 + 84) = *a2;
  sub_1D2878568();
  *(v4 + 48) = sub_1D2878558();
  v8 = sub_1D28784F8();
  *(v4 + 56) = v8;
  *(v4 + 64) = v7;

  return MEMORY[0x1EEE6DFA0](sub_1D263AF60, v8, v7);
}

uint64_t sub_1D263AF60()
{
  v16 = v0;
  v1 = *(v0 + 84);
  if (*(v0 + 83) != 1)
  {
    v2 = *(v0 + 40);
    v3 = *(v0 + 24);
    v4 = *(*v3 + 160);
    v15 = *(v0 + 84);
    sub_1D262A534(v3 + v4, &v15, v2);
    v5 = type metadata accessor for PlaygroundImage();
    v6 = *(v5 - 8);
    if ((*(v6 + 48))(v2, 1, v5) != 1)
    {
      v12 = *(v0 + 40);
      v13 = *(v0 + 16);

      sub_1D23EEBD4(v12, v13);
      (*(v6 + 56))(v13, 0, 1, v5);
      goto LABEL_10;
    }

    sub_1D22BD238(*(v0 + 40), &unk_1EC6DE5A0);
  }

  sub_1D26421EC();
  *(v0 + 81) = v1;
  type metadata accessor for _PhotoAsset.ImageType();
  type metadata accessor for _PhotoAsset.ImageStatus();
  sub_1D2870F68();
  swift_getWitnessTable();
  sub_1D2877ED8();

  if (*(v0 + 80) == 1)
  {
    v7 = *(v0 + 16);

    v8 = type metadata accessor for PlaygroundImage();
    (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
LABEL_10:

    v14 = *(v0 + 8);

    return v14();
  }

  *(v0 + 82) = v1;
  v9 = swift_task_alloc();
  *(v0 + 72) = v9;
  *v9 = v0;
  v9[1] = sub_1D263B228;
  v10 = *(v0 + 16);

  return sub_1D263EC58(v10, (v0 + 82));
}

uint64_t sub_1D263B228()
{
  v1 = *v0;

  v2 = *(v1 + 64);
  v3 = *(v1 + 56);

  return MEMORY[0x1EEE6DFA0](sub_1D263B348, v3, v2);
}

uint64_t sub_1D263B348()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t _PhotoAsset.imageData(for:for:forceReload:ensureRegionalCompliance:)(char *a1, uint64_t a2, char a3)
{
  *(v3 + 16) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAE70);
  *(v3 + 24) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE5A0);
  v6 = swift_task_alloc();
  *(v3 + 32) = v6;
  v7 = *a1;
  *(v3 + 40) = sub_1D2878568();
  *(v3 + 48) = sub_1D2878558();
  *(v3 + 64) = v7;
  v8 = swift_task_alloc();
  *(v3 + 56) = v8;
  *v8 = v3;
  v8[1] = sub_1D263B508;

  return _PhotoAsset.loadImageIfNeeded(type:forceReload:)(v6, (v3 + 64), a3);
}

uint64_t sub_1D263B508()
{

  v1 = sub_1D28784F8();

  return MEMORY[0x1EEE6DFA0](sub_1D263B644, v1, v0);
}

uint64_t sub_1D263B644()
{
  v1 = v0[4];

  v2 = type metadata accessor for PlaygroundImage();
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    sub_1D22BD238(v0[4], &unk_1EC6DE5A0);
    v3 = 0;
    v4 = 0xF000000000000000;
  }

  else
  {
    v6 = v0[3];
    v5 = v0[4];
    v7 = v0[2];
    v8 = sub_1D2873AA8();
    v9 = *(v8 - 8);
    (*(v9 + 16))(v6, v7, v8);
    (*(v9 + 56))(v6, 0, 1, v8);
    v3 = _s23ImagePlaygroundInternal0bA0V9imageData3for24ensureRegionalCompliance10Foundation0E0VSg22UniformTypeIdentifiers6UTTypeVSg_SbtF_0(v6);
    v4 = v10;
    sub_1D22BD238(v6, &qword_1EC6DAE70);
    sub_1D23D4DFC(v5);
  }

  v11 = v0[1];

  return v11(v3, v4);
}

uint64_t _PhotoAsset.cachedImage(type:)@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(*v2 + 160);
  v5 = *a1;
  return sub_1D262A534(v2 + v3, &v5, a2);
}

uint64_t sub_1D263B83C()
{
  swift_getKeyPath();
  sub_1D263DB80();

  return *(v0 + *(*v0 + 208));
}

uint64_t sub_1D263B8C4@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  sub_1D263DB80();

  v3 = *(*v1 + 200);
  swift_beginAccess();
  return sub_1D22BD1D0(v1 + v3, a1, &unk_1EC6DE5A0);
}

id sub_1D263B984@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DAE40);
  v4 = MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v16 - v7;
  swift_beginAccess();
  v9 = *(v1 + 80);
  if (v9)
  {
    result = [v9 curationProperties];
    if (!result)
    {
      __break(1u);
      return result;
    }

    v11 = result;
    v12 = [result addedDate];

    if (v12)
    {
      sub_1D2871768();

      v13 = 0;
    }

    else
    {
      v13 = 1;
    }

    v14 = sub_1D2871798();
    v15 = *(v14 - 8);
    (*(v15 + 56))(v6, v13, 1, v14);
    sub_1D22EC9BC(v6, v8, &unk_1EC6DAE40);
    if ((*(v15 + 48))(v8, 1, v14) != 1)
    {
      return (*(v15 + 32))(a1, v8, v14);
    }
  }

  else
  {
    v14 = sub_1D2871798();
    (*(*(v14 - 8) + 56))(v8, 1, 1, v14);
  }

  sub_1D2871778();
  sub_1D2871798();
  result = (*(*(v14 - 8) + 48))(v8, 1, v14);
  if (result != 1)
  {
    return sub_1D22BD238(v8, &unk_1EC6DAE40);
  }

  return result;
}

uint64_t sub_1D263BC24(unsigned __int8 a1)
{
  v1 = 0x4C6F547964616572;
  v2 = 0x676E6964616F6CLL;
  if (a1 != 2)
  {
    v2 = 0x726F727265;
  }

  if (a1)
  {
    v1 = 0x65426F5474696177;
  }

  if (a1 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1D263BCE8(unsigned __int8 a1)
{
  sub_1D28797D8();
  MEMORY[0x1D38A2260](a1);
  return sub_1D2879828();
}

uint64_t sub_1D263BD40()
{
  sub_1D28797D8();
  sub_1D263BCC0(v2, *v0);
  return sub_1D2879828();
}

uint64_t _PhotoAsset.ImageType.description.getter()
{
  if (*v0)
  {
    return 0x696665446C6C7566;
  }

  else
  {
    return 0x69616E626D756874;
  }
}

uint64_t static _PhotoAsset.ImageType.allCases.getter()
{
  type metadata accessor for _PhotoAsset.ImageType();
  sub_1D28795D8();
  swift_allocObject();
  v0 = sub_1D2878408();
  *v1 = 256;
  sub_1D28784C8();
  return v0;
}

uint64_t _PhotoAsset.ImageType.hashValue.getter()
{
  v1 = *v0;
  sub_1D28797D8();
  MEMORY[0x1D38A2260](v1);
  return sub_1D2879828();
}

uint64_t sub_1D263BEE4()
{
  sub_1D28797D8();
  _PhotoAsset.ImageType.hash(into:)();
  return sub_1D2879828();
}

uint64_t sub_1D263BF20@<X0>(uint64_t *a1@<X8>)
{
  result = static _PhotoAsset.ImageType.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t _PhotoAsset.asset.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*v1 + 120);
  swift_beginAccess();
  v4 = sub_1D2878F18();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t sub_1D263C000()
{
  v1 = *v0;
  v2 = *v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF658);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v16 - v4;
  v6 = *(v1 + 136);
  if (*(v0 + v6))
  {
    v7 = *(v0 + v6);
  }

  else
  {
    v8 = swift_allocObject();
    swift_weakInit();
    v9 = swift_allocObject();
    v9[2] = *(v2 + 80);
    v9[3] = *(v2 + 88);
    v9[4] = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF660);
    v7 = swift_allocObject();
    v10 = (v7 + *(*v7 + 104));
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAE08);
    (*(*(v11 - 8) + 56))(v5, 1, 1, v11);
    v12 = v3[7];
    *&v5[v12] = sub_1D25D92F4(MEMORY[0x1E69E7CC0]);
    *&v5[v3[8]] = 0;
    v5[v3[9]] = 0;
    *v10 = 0;
    v13 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF668) + 28);
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF670);
    bzero(v10 + v13, *(*(v14 - 8) + 64));
    sub_1D22EC9BC(v5, v10 + v13, &qword_1EC6DF658);
    *(v7 + 16) = &unk_1D289A658;
    *(v7 + 24) = v9;
    *(v7 + 32) = 0;
    *(v0 + v6) = v7;
    sub_1D2870F78();
  }

  sub_1D2870F78();
  return v7;
}

uint64_t sub_1D263C278(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[9] = a2;
  v3[10] = a3;
  v3[8] = a1;
  v5 = sub_1D2872438();
  v3[11] = v5;
  v3[12] = *(v5 - 8);
  v3[13] = swift_task_alloc();
  v6 = sub_1D2878F18();
  v3[14] = v6;
  v3[15] = *(v6 - 8);
  v3[16] = swift_task_alloc();
  v3[17] = *(a3 - 8);
  v3[18] = swift_task_alloc();
  v3[19] = sub_1D2878568();
  v3[20] = sub_1D2878558();
  v8 = sub_1D28784F8();
  v3[21] = v8;
  v3[22] = v7;

  return MEMORY[0x1EEE6DFA0](sub_1D263C428, v8, v7);
}

uint64_t sub_1D263C428()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[23] = Strong;
  if (!Strong)
  {

    goto LABEL_5;
  }

  v2 = Strong;
  v3 = v0[16];
  v4 = v0[17];
  v5 = v0[14];
  v6 = v0[15];
  v7 = v0[10];
  v8 = *(*Strong + 120);
  swift_beginAccess();
  (*(v6 + 16))(v3, v2 + v8, v5);
  if ((*(v4 + 48))(v3, 1, v7) == 1)
  {
    v10 = v0[15];
    v9 = v0[16];
    v11 = v0[14];

    (*(v10 + 8))(v9, v11);
LABEL_5:
    sub_1D233F184();
    swift_allocError();
    *v12 = 0;
    swift_willThrow();

    v13 = v0[1];

    return v13();
  }

  v15 = v0[18];
  (*(v0[17] + 32))(v15, v0[16], v0[10]);
  __swift_project_boxed_opaque_existential_1((v2 + 16), *(v2 + 40));
  v16 = [objc_allocWithZone(MEMORY[0x1E6978868]) init];
  v0[24] = v16;
  [v16 setNetworkAccessAllowed_];
  [v16 setDeliveryMode_];
  [v16 setSynchronous_];
  v17 = *v15;
  v0[25] = v17;
  v0[26] = sub_1D2878558();
  v18 = swift_task_alloc();
  v0[27] = v18;
  *v18 = v0;
  v18[1] = sub_1D263C6DC;
  v19 = v0[13];

  return sub_1D23E4308(v19, v17);
}

uint64_t sub_1D263C6DC()
{
  v2 = *v1;
  *(*v1 + 224) = v0;

  v3 = sub_1D28784F8();
  if (v0)
  {
    v5 = sub_1D263CB38;
  }

  else
  {
    *(v2 + 232) = v3;
    *(v2 + 240) = v4;
    v5 = sub_1D263C840;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

uint64_t sub_1D263C840()
{
  v2 = *(v0 + 192);
  v1 = *(v0 + 200);
  v3 = sub_1D263A720();
  *(v0 + 296) = 0;
  *(v0 + 300) = 1;
  v4 = swift_task_alloc();
  *(v0 + 248) = v4;
  v4[1].i64[0] = v0 + 296;
  v4[1].i64[1] = v1;
  v4[2] = vdupq_n_s64(0x4080000000000000uLL);
  v4[3].i64[0] = v2;
  v4[3].i8[8] = v3 & 1;
  v5 = swift_task_alloc();
  *(v0 + 256) = v5;
  *(v5 + 16) = v0 + 296;
  v6 = sub_1D2878558();
  *(v0 + 264) = v6;
  v7 = swift_task_alloc();
  *(v0 + 272) = v7;
  v8 = type metadata accessor for PlaygroundImage();
  *v7 = v0;
  v7[1] = sub_1D263C9A4;
  v9 = *(v0 + 64);
  v10 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6DE18](v9, &unk_1D289A680, v4, sub_1D2643374, v5, v6, v10, v8);
}

uint64_t sub_1D263C9A4()
{
  v2 = *v1;
  *(*v1 + 280) = v0;

  v3 = *(v2 + 240);
  v4 = *(v2 + 232);
  if (v0)
  {
    v5 = sub_1D263CD04;
  }

  else
  {
    v5 = sub_1D263CBB0;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1D263CB38()
{

  *(v0 + 288) = *(v0 + 224);
  v1 = *(v0 + 168);
  v2 = *(v0 + 176);

  return MEMORY[0x1EEE6DFA0](sub_1D263CDA0, v1, v2);
}

uint64_t sub_1D263CBB0()
{
  v1 = v0[24];
  v3 = v0[12];
  v2 = v0[13];
  v4 = v0[11];

  (*(v3 + 8))(v2, v4);
  v5 = v0[21];
  v6 = v0[22];

  return MEMORY[0x1EEE6DFA0](sub_1D263CC44, v5, v6);
}

uint64_t sub_1D263CC44()
{
  v2 = v0[17];
  v1 = v0[18];
  v3 = v0[10];

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1D263CD04()
{
  v1 = v0[24];
  v3 = v0[12];
  v2 = v0[13];
  v4 = v0[11];

  (*(v3 + 8))(v2, v4);
  v0[36] = v0[35];
  v5 = v0[21];
  v6 = v0[22];

  return MEMORY[0x1EEE6DFA0](sub_1D263CDA0, v5, v6);
}

uint64_t sub_1D263CDA0()
{
  v2 = v0[17];
  v1 = v0[18];
  v3 = v0[10];

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1D263CE58()
{
  v1 = *v0;
  v2 = *v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF658);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v16 - v4;
  v6 = *(v1 + 144);
  if (*(v0 + v6))
  {
    v7 = *(v0 + v6);
  }

  else
  {
    v8 = swift_allocObject();
    swift_weakInit();
    v9 = swift_allocObject();
    v9[2] = *(v2 + 80);
    v9[3] = *(v2 + 88);
    v9[4] = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF660);
    v7 = swift_allocObject();
    v10 = (v7 + *(*v7 + 104));
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAE08);
    (*(*(v11 - 8) + 56))(v5, 1, 1, v11);
    v12 = v3[7];
    *&v5[v12] = sub_1D25D92F4(MEMORY[0x1E69E7CC0]);
    *&v5[v3[8]] = 0;
    v5[v3[9]] = 0;
    *v10 = 0;
    v13 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF668) + 28);
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF670);
    bzero(v10 + v13, *(*(v14 - 8) + 64));
    sub_1D22EC9BC(v5, v10 + v13, &qword_1EC6DF658);
    *(v7 + 16) = &unk_1D289A690;
    *(v7 + 24) = v9;
    *(v7 + 32) = 0;
    *(v0 + v6) = v7;
    sub_1D2870F78();
  }

  sub_1D2870F78();
  return v7;
}

uint64_t sub_1D263D0D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[9] = a2;
  v3[10] = a3;
  v3[8] = a1;
  v5 = sub_1D2878F18();
  v3[11] = v5;
  v3[12] = *(v5 - 8);
  v3[13] = swift_task_alloc();
  v3[14] = *(a3 - 8);
  v3[15] = swift_task_alloc();
  sub_1D2878568();
  v3[16] = sub_1D2878558();
  v7 = sub_1D28784F8();
  v3[17] = v7;
  v3[18] = v6;

  return MEMORY[0x1EEE6DFA0](sub_1D263D220, v7, v6);
}

uint64_t sub_1D263D220()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[19] = Strong;
  if (!Strong)
  {

    goto LABEL_5;
  }

  v2 = Strong;
  v3 = v0[13];
  v4 = v0[14];
  v5 = v0[11];
  v6 = v0[12];
  v7 = v0[10];
  v8 = *(*Strong + 120);
  swift_beginAccess();
  (*(v6 + 16))(v3, v2 + v8, v5);
  if ((*(v4 + 48))(v3, 1, v7) == 1)
  {
    v10 = v0[12];
    v9 = v0[13];
    v11 = v0[11];

    (*(v10 + 8))(v9, v11);
LABEL_5:
    sub_1D233F184();
    swift_allocError();
    *v12 = 0;
    swift_willThrow();

    v13 = v0[1];

    return v13();
  }

  v15 = v0[15];
  (*(v0[14] + 32))(v15, v0[13], v0[10]);
  __swift_project_boxed_opaque_existential_1((v2 + 16), *(v2 + 40));
  v16 = [objc_allocWithZone(MEMORY[0x1E6978868]) init];
  v0[20] = v16;
  [v16 setNetworkAccessAllowed_];
  [v16 setDeliveryMode_];
  [v16 setSynchronous_];
  v17 = *v15;
  v18 = swift_task_alloc();
  v0[21] = v18;
  *v18 = v0;
  v18[1] = sub_1D263D4BC;
  v19 = v0[8];

  return sub_1D23E3EFC(v19, v17, v16);
}

uint64_t sub_1D263D4BC()
{
  v2 = *v1;
  *(*v1 + 176) = v0;

  v3 = *(v2 + 144);
  v4 = *(v2 + 136);
  if (v0)
  {
    v5 = sub_1D263D6C0;
  }

  else
  {
    v5 = sub_1D263D610;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1D263D610()
{
  v1 = v0[15];
  v2 = v0[14];
  v3 = v0[10];

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1D263D6C0()
{
  v1 = v0[15];
  v2 = v0[14];
  v3 = v0[10];

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t _PhotoAsset.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*v1 + 160);
  v4 = sub_1D2871818();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_1D263D814(uint64_t a1)
{
  v2 = sub_1D2871798();
  v3 = MEMORY[0x1EEE9AC00](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v5, a1, v3);
  return _PhotoAsset.creationDate.setter(v5);
}

uint64_t _PhotoAsset.creationDate.setter(char *a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = sub_1D2871798();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v4 + 184);
  swift_beginAccess();
  (*(v6 + 16))(v8, &v1[v9], v5);
  v15[0] = *(v4 + 80);
  sub_1D2643544(&qword_1EC6D8BD0, MEMORY[0x1E6969530]);
  v10 = sub_1D2877F98();
  v11 = *(v6 + 8);
  v12 = v11(v8, v5);
  if (v10)
  {
    swift_beginAccess();
    (*(v6 + 24))(&v2[v9], a1, v5);
    swift_endAccess();
  }

  else
  {
    MEMORY[0x1EEE9AC00](v12);
    v15[-1] = v15[0];
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    *&v15[-1] = v2;
    *(&v15[-1] + 1) = a1;
    sub_1D263DC20();
  }

  return v11(a1, v5);
}

uint64_t (*_PhotoAsset.creationDate.modify(void *a1))()
{
  a1[3] = v1;
  swift_getKeyPath();
  sub_1D263DB80();

  *a1 = v1;
  swift_getKeyPath();
  swift_getWitnessTable();
  sub_1D2871A08();

  swift_beginAccess();
  return sub_1D263DE68;
}

uint64_t sub_1D263DE9C()
{
  sub_1D26421EC();

  return sub_1D2870F68();
}

uint64_t sub_1D263DEC4(uint64_t a1)
{
  v3 = *(*v1 + 192);
  swift_beginAccess();
  type metadata accessor for _PhotoAsset.ImageType();
  type metadata accessor for _PhotoAsset.ImageStatus();
  swift_getWitnessTable();
  sub_1D2877EC8();
  swift_getWitnessTable();
  swift_getWitnessTable();
  v4 = sub_1D2877F98();
  if (v4)
  {
    *(v1 + v3) = a1;
  }

  else
  {
    MEMORY[0x1EEE9AC00](v4);
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D263DC20();
  }
}

uint64_t sub_1D263E0CC(uint64_t a1, uint64_t a2)
{
  v4 = *(*a1 + 192);
  swift_beginAccess();
  *(a1 + v4) = a2;
  sub_1D2870F68();
}

uint64_t sub_1D263E148()
{
  swift_getKeyPath();
  swift_getWitnessTable();
  sub_1D28719F8();
}

uint64_t sub_1D263E210(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE5A0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = v13 - v6;
  v8 = *(v4 + 200);
  swift_beginAccess();
  sub_1D22BD1D0(v1 + v8, v7, &unk_1EC6DE5A0);
  v13[0] = *(v4 + 80);
  sub_1D2643490();
  v9 = sub_1D2877F98();
  v10 = sub_1D22BD238(v7, &unk_1EC6DE5A0);
  if (v9)
  {
    swift_beginAccess();
    sub_1D23EFB0C(a1, v2 + v8);
    swift_endAccess();
  }

  else
  {
    MEMORY[0x1EEE9AC00](v10);
    v13[-1] = v13[0];
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    *&v13[-1] = v2;
    *(&v13[-1] + 1) = a1;
    sub_1D263DC20();
  }

  return sub_1D22BD238(a1, &unk_1EC6DE5A0);
}

uint64_t sub_1D263E440(char a1)
{
  v2 = *(*v1 + 208);
  v3 = a1 & 1;
  result = sub_1D2877F98();
  if (result)
  {
    *(v1 + v2) = v3;
  }

  else
  {
    MEMORY[0x1EEE9AC00](result);
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D263DC20();
  }

  return result;
}

uint64_t sub_1D263E5A0(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(*v2 + 216));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8F48);
  sub_1D22BB118();
  v6 = sub_1D2877F98();
  if (v6)
  {
    *v5 = a1;
    v5[1] = a2;
  }

  else
  {
    MEMORY[0x1EEE9AC00](v6);
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D263DC20();
  }
}

uint64_t sub_1D263E72C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE5A0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = v15 - v3;
  v5 = type metadata accessor for PlaygroundImage();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v15 - v10;
  sub_1D22BD1D0(a1, v4, &unk_1EC6DE5A0);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_1D22BD238(v4, &unk_1EC6DE5A0);
    sub_1D233F184();
    v12 = swift_allocError();
    *v13 = 1;
    v15[1] = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DADD0);
    return sub_1D2878508();
  }

  else
  {
    sub_1D23EEBD4(v4, v11);
    sub_1D239A330(v11, v8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DADD0);
    sub_1D2878518();
    return sub_1D23D4DFC(v11);
  }
}

void sub_1D263E940(uint64_t a1, uint64_t a2, int a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAED0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v13 - v8;
  (*(v6 + 16))(&v13 - v8, a1, v5, v7);
  v10 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v11 = swift_allocObject();
  (*(v6 + 32))(v11 + v10, v9, v5);
  v12 = sub_1D264280C(a3, sub_1D23F565C, v11);
}

uint64_t sub_1D263EAA8(uint64_t a1)
{
  v2 = sub_1D28716B8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAE30);
  MEMORY[0x1EEE9AC00](v6);
  v8 = (v10 - v7);
  sub_1D22BD1D0(a1, v10 - v7, &qword_1EC6DAE30);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10[1] = *v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAED0);
    return sub_1D2878508();
  }

  else
  {
    (*(v3 + 32))(v5, v8, v2);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAED0);
    return sub_1D2878518();
  }
}

uint64_t sub_1D263EC58(uint64_t a1, _BYTE *a2)
{
  *(v3 + 176) = a1;
  *(v3 + 184) = v2;
  *(v3 + 192) = *v2;
  v5 = *v2;
  *(v3 + 200) = *v2;
  v6 = sub_1D2878538();
  *(v3 + 208) = v6;
  *(v3 + 216) = *(v6 - 8);
  *(v3 + 224) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE5A0);
  *(v3 + 232) = swift_task_alloc();
  v7 = sub_1D2871818();
  *(v3 + 240) = v7;
  *(v3 + 248) = *(v7 - 8);
  *(v3 + 256) = swift_task_alloc();
  v8 = type metadata accessor for PlaygroundImage();
  *(v3 + 264) = v8;
  *(v3 + 272) = *(v8 - 8);
  *(v3 + 280) = swift_task_alloc();
  *(v3 + 288) = swift_task_alloc();
  *(v3 + 296) = swift_task_alloc();
  *(v3 + 304) = *(v5 + 80);
  v9 = sub_1D2878F18();
  *(v3 + 312) = v9;
  *(v3 + 320) = *(v9 - 8);
  *(v3 + 328) = swift_task_alloc();
  v10 = sub_1D2873CB8();
  *(v3 + 336) = v10;
  *(v3 + 344) = *(v10 - 8);
  *(v3 + 352) = swift_task_alloc();
  *(v3 + 360) = swift_task_alloc();
  *(v3 + 368) = swift_task_alloc();
  *(v3 + 376) = swift_task_alloc();
  *(v3 + 384) = swift_task_alloc();
  *(v3 + 520) = *a2;
  sub_1D2878568();
  *(v3 + 392) = sub_1D2878558();
  v12 = sub_1D28784F8();
  *(v3 + 400) = v12;
  *(v3 + 408) = v11;

  return MEMORY[0x1EEE6DFA0](sub_1D263EFBC, v12, v11);
}

uint64_t sub_1D263EFBC()
{
  v73 = v0;
  sub_1D28724F8();
  sub_1D2870F78();
  v1 = sub_1D2873CA8();
  v2 = sub_1D2878A08();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = *(v0 + 520);
    v4 = *(v0 + 344);
    v65 = *(v0 + 336);
    v68 = *(v0 + 384);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v72 = v6;
    *v5 = 136315394;
    sub_1D2643544(&qword_1ED8A6C90, MEMORY[0x1E69695A8]);
    v7 = sub_1D28795C8();
    v9 = v8;

    v10 = sub_1D23D7C84(v7, v9, &v72);

    *(v5 + 4) = v10;
    *(v5 + 12) = 2080;
    if (v3)
    {
      v11 = 0x696665446C6C7566;
    }

    else
    {
      v11 = 0x69616E626D756874;
    }

    if (v3)
    {
      v12 = 0xEE006E6F6974696ELL;
    }

    else
    {
      v12 = 0xE90000000000006CLL;
    }

    v13 = sub_1D23D7C84(v11, v12, &v72);

    *(v5 + 14) = v13;
    _os_log_impl(&dword_1D226E000, v1, v2, "Will load image with id: %s, type: %s", v5, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1D38A3520](v6, -1, -1);
    MEMORY[0x1D38A3520](v5, -1, -1);

    v14 = *(v4 + 8);
    v14(v68, v65);
  }

  else
  {
    v15 = *(v0 + 384);
    v16 = *(v0 + 336);
    v17 = *(v0 + 344);

    v14 = *(v17 + 8);
    v14(v15, v16);
  }

  *(v0 + 416) = v14;
  v19 = *(v0 + 320);
  v18 = *(v0 + 328);
  v21 = *(v0 + 304);
  v20 = *(v0 + 312);
  v22 = *(v0 + 184);
  v23 = *(*v22 + 120);
  swift_beginAccess();
  (*(v19 + 16))(v18, v22 + v23, v20);
  v24 = (*(*(v21 - 8) + 48))(v18, 1, v21);
  v26 = *(v0 + 320);
  v25 = *(v0 + 328);
  v27 = *(v0 + 312);
  if (v24 == 1)
  {

    (*(v26 + 8))(v25, v27);
    sub_1D28724F8();
    sub_1D2870F78();
    v28 = sub_1D2873CA8();
    v29 = sub_1D2878A08();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = *(v0 + 520);
      v66 = *(v0 + 336);
      v69 = *(v0 + 376);
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v72 = v32;
      *v31 = 136315394;
      sub_1D2643544(&qword_1ED8A6C90, MEMORY[0x1E69695A8]);
      v33 = sub_1D28795C8();
      v35 = v34;

      v36 = sub_1D23D7C84(v33, v35, &v72);

      *(v31 + 4) = v36;
      *(v31 + 12) = 2080;
      if (v30)
      {
        v37 = 0x696665446C6C7566;
      }

      else
      {
        v37 = 0x69616E626D756874;
      }

      if (v30)
      {
        v38 = 0xEE006E6F6974696ELL;
      }

      else
      {
        v38 = 0xE90000000000006CLL;
      }

      v39 = sub_1D23D7C84(v37, v38, &v72);

      *(v31 + 14) = v39;
      _os_log_impl(&dword_1D226E000, v28, v29, "Asset unavailable with id: %s, type: %s", v31, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1D38A3520](v32, -1, -1);
      MEMORY[0x1D38A3520](v31, -1, -1);

      v40 = v66;
      v41 = v69;
    }

    else
    {
      v51 = *(v0 + 376);
      v52 = *(v0 + 336);

      v41 = v51;
      v40 = v52;
    }

    v14(v41, v40);
    v53 = *(v0 + 520);
    v54 = *(v0 + 304);
    v55 = *(v0 + 272);
    v56 = *(v0 + 200);
    v57 = *(v0 + 184);
    v67 = *(v0 + 176);
    v71 = *(v0 + 264);
    *(v0 + 512) = 1;
    *(v0 + 513) = v53;
    v58 = swift_task_alloc();
    *v58 = v54;
    v59 = *(v56 + 88);
    v58[1] = v59;
    swift_getKeyPath();

    sub_1D263DB80();

    *(v0 + 136) = v57;
    v60 = swift_task_alloc();
    *v60 = v54;
    v60[1] = v59;
    swift_getKeyPath();

    swift_getWitnessTable();
    sub_1D2871A08();

    swift_beginAccess();
    type metadata accessor for _PhotoAsset.ImageType();
    type metadata accessor for _PhotoAsset.ImageStatus();
    swift_getWitnessTable();
    sub_1D2877EC8();
    sub_1D2877EE8();
    swift_endAccess();
    sub_1D263E148();
    (*(v55 + 56))(v67, 1, 1, v71);

    v61 = *(v0 + 8);

    return v61();
  }

  else
  {
    v70 = *(v0 + 392);
    v42 = *(v0 + 520);
    v43 = *(v0 + 304);
    v44 = *(v0 + 200);
    v45 = *(v0 + 184);
    (*(v26 + 8))(v25, v27);
    *(v0 + 514) = 2;
    *(v0 + 515) = v42;
    v46 = swift_task_alloc();
    *v46 = v43;
    v47 = *(v44 + 88);
    *(v0 + 424) = v47;
    v46[1] = v47;
    swift_getKeyPath();

    sub_1D263DB80();

    *(v0 + 432) = *(*v45 + 224);
    *(v0 + 144) = v45;
    v48 = swift_task_alloc();
    *v48 = v43;
    v48[1] = v47;
    swift_getKeyPath();

    *(v0 + 440) = swift_getWitnessTable();
    sub_1D2871A08();

    *(v0 + 448) = *(*v45 + 192);
    swift_beginAccess();
    type metadata accessor for _PhotoAsset.ImageType();
    type metadata accessor for _PhotoAsset.ImageStatus();
    swift_getWitnessTable();
    *(v0 + 456) = sub_1D2877EC8();
    sub_1D2877EE8();
    swift_endAccess();
    sub_1D263E148();
    if (v42)
    {
      *(v0 + 488) = sub_1D263CE58();
      sub_1D2870F78();
      v49 = swift_task_alloc();
      *(v0 + 496) = v49;
      *v49 = v0;
      v49[1] = sub_1D2640040;
      v50 = *(v0 + 280);
    }

    else
    {
      *(v0 + 464) = sub_1D263C000();
      sub_1D2870F78();
      v63 = swift_task_alloc();
      *(v0 + 472) = v63;
      *v63 = v0;
      v63[1] = sub_1D263FA34;
      v50 = *(v0 + 288);
    }

    v64 = MEMORY[0x1E69E85E0];

    return (sub_1D271066C)(v50, v70, v64);
  }
}

uint64_t sub_1D263FA34()
{
  v2 = *v1;
  *(*v1 + 480) = v0;

  if (v0)
  {
    v3 = *(v2 + 400);
    v4 = *(v2 + 408);
    v5 = sub_1D2640654;
  }

  else
  {

    v3 = *(v2 + 400);
    v4 = *(v2 + 408);
    v5 = sub_1D263FB5C;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

uint64_t sub_1D263FB5C()
{
  v43 = v0;
  v1 = *(v0 + 288);
  v2 = *(v0 + 296);

  sub_1D23EEBD4(v1, v2);
  sub_1D28724F8();
  sub_1D2870F78();
  v3 = sub_1D2873CA8();
  v4 = sub_1D2878A08();
  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 416);
  if (v5)
  {
    v7 = *(v0 + 520);
    v37 = *(v0 + 336);
    v39 = *(v0 + 368);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v42 = v9;
    *v8 = 136315394;
    sub_1D2643544(&qword_1ED8A6C90, MEMORY[0x1E69695A8]);
    v10 = sub_1D28795C8();
    v12 = v11;

    v13 = sub_1D23D7C84(v10, v12, &v42);

    *(v8 + 4) = v13;
    *(v8 + 12) = 2080;
    if (v7)
    {
      v14 = 0x696665446C6C7566;
    }

    else
    {
      v14 = 0x69616E626D756874;
    }

    if (v7)
    {
      v15 = 0xEE006E6F6974696ELL;
    }

    else
    {
      v15 = 0xE90000000000006CLL;
    }

    v16 = sub_1D23D7C84(v14, v15, &v42);

    *(v8 + 14) = v16;
    _os_log_impl(&dword_1D226E000, v3, v4, "Did load asset with id: %s, type: %s", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1D38A3520](v9, -1, -1);
    MEMORY[0x1D38A3520](v8, -1, -1);

    v17 = v37;
    v18 = v39;
  }

  else
  {
    v19 = *(v0 + 368);
    v20 = *(v0 + 336);

    v18 = v19;
    v17 = v20;
  }

  v6(v18, v17);
  v21 = *(v0 + 424);
  v22 = *(v0 + 520);
  v36 = v22;
  v23 = *(v0 + 304);
  v24 = *(v0 + 272);
  v25 = *(v0 + 248);
  v34 = *(v0 + 256);
  v35 = *(v0 + 296);
  v26 = *(v0 + 232);
  v33 = *(v0 + 240);
  v27 = *(v0 + 184);
  v38 = *(v0 + 264);
  v40 = *(v0 + 176);
  *(v0 + 518) = 0;
  *(v0 + 519) = v22;
  v28 = swift_task_alloc();
  *v28 = v23;
  v28[1] = v21;
  swift_getKeyPath();

  sub_1D263DB80();

  *(v0 + 168) = v27;
  v29 = swift_task_alloc();
  *v29 = v23;
  v29[1] = v21;
  swift_getKeyPath();

  sub_1D2871A08();

  swift_beginAccess();
  sub_1D2877EE8();
  swift_endAccess();
  sub_1D263E148();
  (*(v25 + 16))(v34, v27 + *(*v27 + 160), v33);
  sub_1D239A330(v35, v26);
  v30 = *(v24 + 56);
  v30(v26, 0, 1, v38);
  v41 = v36;
  sub_1D2629F60(v26, v34, &v41);
  sub_1D23EEBD4(v35, v40);
  v30(v40, 0, 1, v38);

  v31 = *(v0 + 8);

  return v31();
}

uint64_t sub_1D2640040()
{
  v2 = *v1;
  *(*v1 + 504) = v0;

  if (v0)
  {
    v3 = *(v2 + 400);
    v4 = *(v2 + 408);
    v5 = sub_1D2640DF0;
  }

  else
  {

    v3 = *(v2 + 400);
    v4 = *(v2 + 408);
    v5 = sub_1D2640168;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

uint64_t sub_1D2640168()
{
  v43 = v0;
  v1 = *(v0 + 280);
  v2 = *(v0 + 296);

  sub_1D23EEBD4(v1, v2);
  sub_1D28724F8();
  sub_1D2870F78();
  v3 = sub_1D2873CA8();
  v4 = sub_1D2878A08();
  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 416);
  if (v5)
  {
    v7 = *(v0 + 520);
    v37 = *(v0 + 336);
    v39 = *(v0 + 368);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v42 = v9;
    *v8 = 136315394;
    sub_1D2643544(&qword_1ED8A6C90, MEMORY[0x1E69695A8]);
    v10 = sub_1D28795C8();
    v12 = v11;

    v13 = sub_1D23D7C84(v10, v12, &v42);

    *(v8 + 4) = v13;
    *(v8 + 12) = 2080;
    if (v7)
    {
      v14 = 0x696665446C6C7566;
    }

    else
    {
      v14 = 0x69616E626D756874;
    }

    if (v7)
    {
      v15 = 0xEE006E6F6974696ELL;
    }

    else
    {
      v15 = 0xE90000000000006CLL;
    }

    v16 = sub_1D23D7C84(v14, v15, &v42);

    *(v8 + 14) = v16;
    _os_log_impl(&dword_1D226E000, v3, v4, "Did load asset with id: %s, type: %s", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1D38A3520](v9, -1, -1);
    MEMORY[0x1D38A3520](v8, -1, -1);

    v17 = v37;
    v18 = v39;
  }

  else
  {
    v19 = *(v0 + 368);
    v20 = *(v0 + 336);

    v18 = v19;
    v17 = v20;
  }

  v6(v18, v17);
  v21 = *(v0 + 424);
  v22 = *(v0 + 520);
  v36 = v22;
  v23 = *(v0 + 304);
  v24 = *(v0 + 272);
  v25 = *(v0 + 248);
  v34 = *(v0 + 256);
  v35 = *(v0 + 296);
  v26 = *(v0 + 232);
  v33 = *(v0 + 240);
  v27 = *(v0 + 184);
  v38 = *(v0 + 264);
  v40 = *(v0 + 176);
  *(v0 + 518) = 0;
  *(v0 + 519) = v22;
  v28 = swift_task_alloc();
  *v28 = v23;
  v28[1] = v21;
  swift_getKeyPath();

  sub_1D263DB80();

  *(v0 + 168) = v27;
  v29 = swift_task_alloc();
  *v29 = v23;
  v29[1] = v21;
  swift_getKeyPath();

  sub_1D2871A08();

  swift_beginAccess();
  sub_1D2877EE8();
  swift_endAccess();
  sub_1D263E148();
  (*(v25 + 16))(v34, v27 + *(*v27 + 160), v33);
  sub_1D239A330(v35, v26);
  v30 = *(v24 + 56);
  v30(v26, 0, 1, v38);
  v41 = v36;
  sub_1D2629F60(v26, v34, &v41);
  sub_1D23EEBD4(v35, v40);
  v30(v40, 0, 1, v38);

  v31 = *(v0 + 8);

  return v31();
}

uint64_t sub_1D2640654()
{
  v61 = v0;
  v1 = *(v0 + 480);

  *(v0 + 152) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D94B0);
  if (swift_dynamicCast())
  {

    sub_1D28724F8();
    sub_1D2870F78();
    v3 = sub_1D2873CA8();
    v4 = sub_1D2878A08();
    v5 = os_log_type_enabled(v3, v4);
    v6 = *(v0 + 416);
    if (v5)
    {
      v7 = *(v0 + 520);
      v56 = *(v0 + 336);
      v59 = *(v0 + 360);
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v60 = v9;
      *v8 = 136315394;
      sub_1D2643544(&qword_1ED8A6C90, MEMORY[0x1E69695A8]);
      v10 = sub_1D28795C8();
      v12 = v11;

      v13 = sub_1D23D7C84(v10, v12, &v60);

      *(v8 + 4) = v13;
      *(v8 + 12) = 2080;
      if (v7)
      {
        v14 = 0x696665446C6C7566;
      }

      else
      {
        v14 = 0x69616E626D756874;
      }

      if (v7)
      {
        v15 = 0xEE006E6F6974696ELL;
      }

      else
      {
        v15 = 0xE90000000000006CLL;
      }

      v16 = sub_1D23D7C84(v14, v15, &v60);

      *(v8 + 14) = v16;
      _os_log_impl(&dword_1D226E000, v3, v4, "Image request cancelled with id: %s, type: %s", v8, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1D38A3520](v9, -1, -1);
      MEMORY[0x1D38A3520](v8, -1, -1);

      v17 = v56;
      v18 = v59;
    }

    else
    {
      v35 = *(v0 + 360);
      v36 = *(v0 + 336);

      v18 = v35;
      v17 = v36;
    }

    v6(v18, v17);
    v38 = *(v0 + 216);
    v37 = *(v0 + 224);
    v39 = *(v0 + 208);
    (*(*(v0 + 272) + 56))(*(v0 + 176), 1, 1, *(v0 + 264));
    (*(v38 + 8))(v37, v39);
  }

  else
  {

    sub_1D28724F8();
    sub_1D2870F78();
    v19 = v1;
    v20 = sub_1D2873CA8();
    v21 = sub_1D2878A18();

    v22 = os_log_type_enabled(v20, v21);
    v23 = *(v0 + 416);
    if (v22)
    {
      v51 = *(v0 + 520);
      v54 = *(v0 + 336);
      v57 = *(v0 + 352);
      v24 = swift_slowAlloc();
      v53 = v23;
      v25 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v60 = v52;
      *v24 = 136315650;
      sub_1D2643544(&qword_1ED8A6C90, MEMORY[0x1E69695A8]);
      v26 = sub_1D28795C8();
      v28 = v27;

      v29 = sub_1D23D7C84(v26, v28, &v60);

      *(v24 + 4) = v29;
      *(v24 + 12) = 2080;
      if (v51)
      {
        v30 = 0x696665446C6C7566;
      }

      else
      {
        v30 = 0x69616E626D756874;
      }

      if (v51)
      {
        v31 = 0xEE006E6F6974696ELL;
      }

      else
      {
        v31 = 0xE90000000000006CLL;
      }

      v32 = sub_1D23D7C84(v30, v31, &v60);

      *(v24 + 14) = v32;
      *(v24 + 22) = 2112;
      v33 = v1;
      v34 = _swift_stdlib_bridgeErrorToNSError();
      *(v24 + 24) = v34;
      *v25 = v34;
      _os_log_impl(&dword_1D226E000, v20, v21, "Image request failed with id: %s, type: %s, error: %@", v24, 0x20u);
      sub_1D22BD238(v25, qword_1EC6DA930);
      MEMORY[0x1D38A3520](v25, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x1D38A3520](v52, -1, -1);
      MEMORY[0x1D38A3520](v24, -1, -1);

      v53(v57, v54);
    }

    else
    {
      v40 = *(v0 + 352);
      v41 = *(v0 + 336);

      v23(v40, v41);
    }

    v42 = *(v0 + 424);
    v43 = *(v0 + 520);
    v44 = *(v0 + 304);
    v45 = *(v0 + 272);
    v58 = *(v0 + 264);
    v46 = *(v0 + 184);
    v55 = *(v0 + 176);
    *(v0 + 516) = 3;
    *(v0 + 517) = v43;
    v47 = swift_task_alloc();
    *v47 = v44;
    v47[1] = v42;
    swift_getKeyPath();

    sub_1D263DB80();

    *(v0 + 160) = v46;
    v48 = swift_task_alloc();
    *v48 = v44;
    v48[1] = v42;
    swift_getKeyPath();

    sub_1D2871A08();

    swift_beginAccess();
    sub_1D2877EE8();
    swift_endAccess();
    sub_1D263E148();

    (*(v45 + 56))(v55, 1, 1, v58);
  }

  v49 = *(v0 + 8);

  return v49();
}

uint64_t sub_1D2640DF0()
{
  v61 = v0;
  v1 = *(v0 + 504);

  *(v0 + 152) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D94B0);
  if (swift_dynamicCast())
  {

    sub_1D28724F8();
    sub_1D2870F78();
    v3 = sub_1D2873CA8();
    v4 = sub_1D2878A08();
    v5 = os_log_type_enabled(v3, v4);
    v6 = *(v0 + 416);
    if (v5)
    {
      v7 = *(v0 + 520);
      v56 = *(v0 + 336);
      v59 = *(v0 + 360);
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v60 = v9;
      *v8 = 136315394;
      sub_1D2643544(&qword_1ED8A6C90, MEMORY[0x1E69695A8]);
      v10 = sub_1D28795C8();
      v12 = v11;

      v13 = sub_1D23D7C84(v10, v12, &v60);

      *(v8 + 4) = v13;
      *(v8 + 12) = 2080;
      if (v7)
      {
        v14 = 0x696665446C6C7566;
      }

      else
      {
        v14 = 0x69616E626D756874;
      }

      if (v7)
      {
        v15 = 0xEE006E6F6974696ELL;
      }

      else
      {
        v15 = 0xE90000000000006CLL;
      }

      v16 = sub_1D23D7C84(v14, v15, &v60);

      *(v8 + 14) = v16;
      _os_log_impl(&dword_1D226E000, v3, v4, "Image request cancelled with id: %s, type: %s", v8, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1D38A3520](v9, -1, -1);
      MEMORY[0x1D38A3520](v8, -1, -1);

      v17 = v56;
      v18 = v59;
    }

    else
    {
      v35 = *(v0 + 360);
      v36 = *(v0 + 336);

      v18 = v35;
      v17 = v36;
    }

    v6(v18, v17);
    v38 = *(v0 + 216);
    v37 = *(v0 + 224);
    v39 = *(v0 + 208);
    (*(*(v0 + 272) + 56))(*(v0 + 176), 1, 1, *(v0 + 264));
    (*(v38 + 8))(v37, v39);
  }

  else
  {

    sub_1D28724F8();
    sub_1D2870F78();
    v19 = v1;
    v20 = sub_1D2873CA8();
    v21 = sub_1D2878A18();

    v22 = os_log_type_enabled(v20, v21);
    v23 = *(v0 + 416);
    if (v22)
    {
      v51 = *(v0 + 520);
      v54 = *(v0 + 336);
      v57 = *(v0 + 352);
      v24 = swift_slowAlloc();
      v53 = v23;
      v25 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v60 = v52;
      *v24 = 136315650;
      sub_1D2643544(&qword_1ED8A6C90, MEMORY[0x1E69695A8]);
      v26 = sub_1D28795C8();
      v28 = v27;

      v29 = sub_1D23D7C84(v26, v28, &v60);

      *(v24 + 4) = v29;
      *(v24 + 12) = 2080;
      if (v51)
      {
        v30 = 0x696665446C6C7566;
      }

      else
      {
        v30 = 0x69616E626D756874;
      }

      if (v51)
      {
        v31 = 0xEE006E6F6974696ELL;
      }

      else
      {
        v31 = 0xE90000000000006CLL;
      }

      v32 = sub_1D23D7C84(v30, v31, &v60);

      *(v24 + 14) = v32;
      *(v24 + 22) = 2112;
      v33 = v1;
      v34 = _swift_stdlib_bridgeErrorToNSError();
      *(v24 + 24) = v34;
      *v25 = v34;
      _os_log_impl(&dword_1D226E000, v20, v21, "Image request failed with id: %s, type: %s, error: %@", v24, 0x20u);
      sub_1D22BD238(v25, qword_1EC6DA930);
      MEMORY[0x1D38A3520](v25, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x1D38A3520](v52, -1, -1);
      MEMORY[0x1D38A3520](v24, -1, -1);

      v53(v57, v54);
    }

    else
    {
      v40 = *(v0 + 352);
      v41 = *(v0 + 336);

      v23(v40, v41);
    }

    v42 = *(v0 + 424);
    v43 = *(v0 + 520);
    v44 = *(v0 + 304);
    v45 = *(v0 + 272);
    v58 = *(v0 + 264);
    v46 = *(v0 + 184);
    v55 = *(v0 + 176);
    *(v0 + 516) = 3;
    *(v0 + 517) = v43;
    v47 = swift_task_alloc();
    *v47 = v44;
    v47[1] = v42;
    swift_getKeyPath();

    sub_1D263DB80();

    *(v0 + 160) = v46;
    v48 = swift_task_alloc();
    *v48 = v44;
    v48[1] = v42;
    swift_getKeyPath();

    sub_1D2871A08();

    swift_beginAccess();
    sub_1D2877EE8();
    swift_endAccess();
    sub_1D263E148();

    (*(v45 + 56))(v55, 1, 1, v58);
  }

  v49 = *(v0 + 8);

  return v49();
}

uint64_t _PhotoAsset.deinit()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 16);

  v1 = *(*v0 + 120);
  v2 = sub_1D2878F18();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = *(*v0 + 160);
  v4 = sub_1D2871818();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = *(*v0 + 184);
  v6 = sub_1D2871798();
  (*(*(v6 - 8) + 8))(v0 + v5, v6);

  sub_1D22BD238(v0 + *(*v0 + 200), &unk_1EC6DE5A0);

  v7 = *(*v0 + 224);
  v8 = sub_1D2871A28();
  (*(*(v8 - 8) + 8))(v0 + v7, v8);
  return v0;
}

uint64_t _PhotoAsset.__deallocating_deinit()
{
  _PhotoAsset.deinit();

  return swift_deallocClassInstance();
}

uint64_t _PhotoAsset<>.hash(into:)()
{
  sub_1D2871818();
  sub_1D2643544(&qword_1ED8A6CB0, MEMORY[0x1E69695A8]);
  return sub_1D2877F08();
}

uint64_t _PhotoAsset<>.hashValue.getter()
{
  sub_1D28797D8();
  sub_1D2871818();
  sub_1D2643544(&qword_1ED8A6CB0, MEMORY[0x1E69695A8]);
  sub_1D2877F08();
  return sub_1D2879828();
}

uint64_t sub_1D26419EC()
{
  sub_1D28797D8();
  sub_1D2871818();
  sub_1D2643544(&qword_1ED8A6CB0, MEMORY[0x1E69695A8]);
  sub_1D2877F08();
  return sub_1D2879828();
}

uint64_t sub_1D2641A98()
{
  sub_1D2871818();
  sub_1D2643544(&qword_1ED8A6CB0, MEMORY[0x1E69695A8]);
  return sub_1D2877F08();
}

uint64_t sub_1D2641B2C()
{
  sub_1D28797D8();
  sub_1D2871818();
  sub_1D2643544(&qword_1ED8A6CB0, MEMORY[0x1E69695A8]);
  sub_1D2877F08();
  return sub_1D2879828();
}

uint64_t sub_1D2641BD4(uint64_t *a1, uint64_t *a2)
{
  v57 = sub_1D2871798();
  v4 = *(v57 - 8);
  v5 = MEMORY[0x1EEE9AC00](v57);
  v56 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v58 = &v44 - v7;
  v8 = *a1;
  v9 = *a2;
  v10 = sub_1D22BCFD0(0, &qword_1EC6D74E0);
  v61 = v10;
  v62 = &protocol witness table for PHAsset;
  swift_getKeyPath();
  v11 = *(*v8 + 224);
  v64 = v8;
  v12 = sub_1D22BB9D8(&qword_1EC6DAE20, &unk_1EC6DE550);
  v49 = v11;
  sub_1D28719E8();

  v13 = *(*v8 + 184);
  swift_beginAccess();
  v14 = *(v4 + 16);
  v55 = v8;
  v48 = v13;
  v15 = v8 + v13;
  v16 = v57;
  v14(v58, v15, v57);
  v52 = v10;
  v59 = v10;
  v60 = &protocol witness table for PHAsset;
  swift_getKeyPath();
  v17 = *(*v9 + 224);
  v63 = v9;
  v47 = v17;
  v51 = v12;
  sub_1D28719E8();

  v18 = *(*v9 + 184);
  swift_beginAccess();
  v54 = v9;
  v46 = v18;
  v19 = v56;
  v20 = v16;
  v50 = v14;
  v14(v56, v9 + v18, v16);
  v21 = v58;
  LOBYTE(v18) = sub_1D2871738();
  v22 = *(v4 + 8);
  v22(v19, v20);
  v53 = v4 + 8;
  v23 = (v22)(v21, v20);
  if (v18)
  {
    goto LABEL_2;
  }

  MEMORY[0x1EEE9AC00](v23);
  v45 = v22;
  v25 = v52;
  *(&v44 - 2) = v52;
  *(&v44 - 1) = &protocol witness table for PHAsset;
  swift_getKeyPath();
  v26 = v55;
  v65 = v55;
  sub_1D28719E8();

  v27 = v26 + v48;
  v28 = v57;
  v29 = v58;
  v30 = v50;
  v31 = (v50)(v58, v27, v57);
  MEMORY[0x1EEE9AC00](v31);
  *(&v44 - 2) = v25;
  *(&v44 - 1) = &protocol witness table for PHAsset;
  swift_getKeyPath();
  v32 = v54;
  v65 = v54;
  sub_1D28719E8();

  v33 = v32 + v46;
  v34 = v45;
  v35 = v56;
  v30(v56, v33, v28);
  v36 = sub_1D2871748();
  v34(v35, v28);
  v34(v29, v28);
  if (v36)
  {
LABEL_4:
    v24 = 0;
    return v24 & 1;
  }

  v38 = v58;
  sub_1D263B984(v58);
  sub_1D263B984(v35);
  v39 = sub_1D2871738();
  v40 = v57;
  v34(v35, v57);
  v34(v38, v40);
  if ((v39 & 1) == 0)
  {
    v41 = v58;
    sub_1D263B984(v58);
    sub_1D263B984(v35);
    v42 = sub_1D2871748();
    v43 = v57;
    v34(v35, v57);
    v34(v41, v43);
    if ((v42 & 1) == 0)
    {
      v24 = MEMORY[0x1D389A250](v55 + *(*v55 + 160), v54 + *(*v54 + 160));
      return v24 & 1;
    }

    goto LABEL_4;
  }

LABEL_2:
  v24 = 1;
  return v24 & 1;
}

uint64_t sub_1D2642160()
{
  swift_getKeyPath();
  sub_1D263DB80();

  return *(v0 + *(*v0 + 216));
}

uint64_t sub_1D26421EC()
{
  swift_getKeyPath();
  sub_1D263DB80();

  v1 = *(*v0 + 192);
  swift_beginAccess();
  return *(v0 + v1);
}

id sub_1D26422B8(int a1, uint64_t a2, void (*a3)(void), uint64_t a4)
{
  v30 = a1;
  v32 = sub_1D2878A88();
  MEMORY[0x1EEE9AC00](v32);
  v31 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1D2877B68();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v9 = sub_1D2878AA8();
  v29 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAE30);
  MEMORY[0x1EEE9AC00](v12);
  v14 = (&v28 - v13);
  v15 = swift_allocObject();
  *(v15 + 16) = a3;
  *(v15 + 24) = a4;
  swift_beginAccess();
  v16 = *(a2 + 80);
  if (v16)
  {
    sub_1D22BCFD0(0, &unk_1EC6DF5C0);
    sub_1D2870F78();
    v33 = v16;
    v28 = sub_1D233F280(v33);
    v20 = [objc_allocWithZone(MEMORY[0x1E69786B0]) init];
    v21 = v20;
    if (v30)
    {
      v22 = 2;
    }

    else
    {
      v22 = 1;
    }

    [v20 setVariant_];
    sub_1D22BCFD0(0, &qword_1ED89CD50);
    (*(v29 + 104))(v11, *MEMORY[0x1E69E8098], v9);
    sub_1D2877B58();
    aBlock[0] = MEMORY[0x1E69E7CC0];
    sub_1D2643544(&qword_1ED89CD60, MEMORY[0x1E69E8030]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DAE50);
    sub_1D22BB9D8(&qword_1ED89CE80, &unk_1EC6DAE50);
    sub_1D2879088();
    v23 = sub_1D2878AD8();
    [v21 setResultHandlerQueue_];

    v24 = swift_allocObject();
    *(v24 + 16) = sub_1D2643470;
    *(v24 + 24) = v15;
    aBlock[4] = sub_1D233F344;
    aBlock[5] = v24;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1D23372C0;
    aBlock[3] = &block_descriptor_31;
    v25 = _Block_copy(aBlock);
    sub_1D2870F78();

    v26 = v28;
    [v28 exportWithOptions:v21 completionHandler:v25];
    _Block_release(v25);
    v27 = [v26 progress];

    return v27;
  }

  else
  {
    sub_1D233F184();
    v17 = swift_allocError();
    *v18 = 0;
    *v14 = v17;
    swift_storeEnumTagMultiPayload();
    sub_1D2870F78();
    sub_1D2638210(v14, a3);
    sub_1D22BD238(v14, &qword_1EC6DAE30);

    return 0;
  }
}

id sub_1D264280C(int a1, void (*a2)(uint64_t *), uint64_t a3)
{
  v46 = a2;
  v47 = a3;
  LODWORD(v41) = a1;
  v4 = *v3;
  v45 = sub_1D2878A88();
  MEMORY[0x1EEE9AC00](v45);
  v44 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1D2877B68();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v43 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1D2878AA8();
  v39 = *(v8 - 8);
  v40 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v42 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAE30);
  MEMORY[0x1EEE9AC00](v10);
  v12 = (&v37 - v11);
  v13 = *(v4 + 80);
  v14 = sub_1D2878F18();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v37 - v16;
  v18 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v21 = (&v37 - v20);
  v22 = *(v4 + 120);
  swift_beginAccess();
  (*(v15 + 16))(v17, &v3[v22], v14);
  if ((*(v18 + 48))(v17, 1, v13) == 1)
  {
    (*(v15 + 8))(v17, v14);
    sub_1D233F184();
    v23 = swift_allocError();
    *v24 = 0;
    *v12 = v23;
    swift_storeEnumTagMultiPayload();
    v46(v12);
    sub_1D22BD238(v12, &qword_1EC6DAE30);
    return 0;
  }

  else
  {
    (*(v18 + 32))(v21, v17, v13);
    v25 = *v21;
    sub_1D22BCFD0(0, &unk_1EC6DF5C0);
    v26 = v25;
    v27 = sub_1D233F280(v26);

    v29 = [objc_allocWithZone(MEMORY[0x1E69786B0]) init];
    v38 = v29;
    if (v41)
    {
      v30 = 2;
    }

    else
    {
      v30 = 1;
    }

    [v29 setVariant_];
    v41 = sub_1D22BCFD0(0, &qword_1ED89CD50);
    v37 = "shareableImage()";
    (*(v39 + 104))(v42, *MEMORY[0x1E69E8098], v40);
    sub_1D2877B58();
    aBlock[0] = MEMORY[0x1E69E7CC0];
    sub_1D2643544(&qword_1ED89CD60, MEMORY[0x1E69E8030]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DAE50);
    sub_1D22BB9D8(&qword_1ED89CE80, &unk_1EC6DAE50);
    sub_1D2879088();
    v31 = sub_1D2878AD8();
    v32 = v38;
    [v38 setResultHandlerQueue_];

    v33 = swift_allocObject();
    v34 = v47;
    *(v33 + 16) = v46;
    *(v33 + 24) = v34;
    aBlock[4] = sub_1D2643590;
    aBlock[5] = v33;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1D23372C0;
    aBlock[3] = &block_descriptor_64;
    v35 = _Block_copy(aBlock);
    sub_1D2870F78();

    [v27 exportWithOptions:v32 completionHandler:v35];
    _Block_release(v35);
    v36 = [v27 progress];

    (*(v18 + 8))(v21, v13);
    return v36;
  }
}

void sub_1D2642FAC()
{
  sub_1D2878F18();
  if (v0 <= 0x3F)
  {
    sub_1D2871818();
    if (v1 <= 0x3F)
    {
      sub_1D2871798();
      if (v2 <= 0x3F)
      {
        sub_1D22D0510();
        if (v3 <= 0x3F)
        {
          sub_1D2871A28();
          if (v4 <= 0x3F)
          {
            swift_initClassMetadata2();
          }
        }
      }
    }
  }
}

uint64_t sub_1D26431E8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 32);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1D22BDFF8;

  return sub_1D263C278(a1, v5, v4);
}

uint64_t sub_1D264329C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = *(v1 + 56);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1D22BC8FC;

  return sub_1D23E77CC(a1, v4, v5, v8, v9, v6, v7);
}

uint64_t sub_1D264337C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 32);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1D22BDFF8;

  return sub_1D263D0D0(a1, v5, v4);
}

uint64_t block_copy_helper_31(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1D2870F78();
}

unint64_t sub_1D2643490()
{
  result = qword_1EC6DF678;
  if (!qword_1EC6DF678)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC6DE5A0);
    sub_1D2643544(&qword_1EC6DF510, type metadata accessor for PlaygroundImage);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DF678);
  }

  return result;
}

uint64_t sub_1D2643544(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1D26435AC()
{
  result = qword_1EC6DF680;
  if (!qword_1EC6DF680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DF680);
  }

  return result;
}

uint64_t sub_1D2643600(char a1)
{
  v2 = a1 & 1;
  v3 = *(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal20StylePickerViewModel__shouldShowStylesPopover);
  if (v3 == v2)
  {
    *(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal20StylePickerViewModel__shouldShowStylesPopover) = v2;

    return sub_1D264698C(v3);
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D264BDB4(qword_1EC6D8488, type metadata accessor for StylePickerViewModel);
    sub_1D28719D8();
  }
}

uint64_t sub_1D2643750(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1D2872008();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC23ImagePlaygroundInternal20StylePickerViewModel__defaultStyle;
  swift_beginAccess();
  v9 = *(v5 + 16);
  v9(v7, v2 + v8, v4);
  sub_1D264BDB4(&qword_1ED8A6C08, MEMORY[0x1E696E310]);
  v14[0] = a1;
  LOBYTE(a1) = sub_1D2877F98();
  v10 = *(v5 + 8);
  v10(v7, v4);
  if (a1)
  {
    v9(v7, v14[0], v4);
    swift_beginAccess();
    (*(v5 + 24))(v2 + v8, v7, v4);
    swift_endAccess();
    sub_1D2645FD4();
    v10(v7, v4);
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v12 = v14[0];
    v14[-2] = v2;
    v14[-1] = v12;
    v14[1] = v2;
    sub_1D264BDB4(qword_1EC6D8488, type metadata accessor for StylePickerViewModel);
    sub_1D28719D8();
  }

  return (v10)(v14[0], v4);
}

uint64_t sub_1D2643A0C(uint64_t a1)
{
  v2 = sub_1D2870F68();
  v3 = sub_1D233851C(v2, a1);

  if (v3)
  {

    return sub_1D2646654(a1);
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D264BDB4(qword_1EC6D8488, type metadata accessor for StylePickerViewModel);
    sub_1D28719D8();
  }
}

uint64_t sub_1D2643B64()
{
  v1 = v0;
  v2 = sub_1D2872008();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v24 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9A30);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v22 - v9;
  swift_getKeyPath();
  v11 = OBJC_IVAR____TtC23ImagePlaygroundInternal20StylePickerViewModel___observationRegistrar;
  v27 = v1;
  sub_1D264BDB4(qword_1EC6D8488, type metadata accessor for StylePickerViewModel);
  v25 = v11;
  sub_1D28719E8();

  v12 = OBJC_IVAR____TtC23ImagePlaygroundInternal20StylePickerViewModel__defaultStyle;
  swift_beginAccess();
  v23 = *(v3 + 16);
  v23(v7, v1 + v12, v2);
  (*(v3 + 56))(v7, 0, 1, v2);
  sub_1D2647710(v7, v10);
  sub_1D22BD238(v7, &qword_1EC6D9A30);
  if ((*(v3 + 48))(v10, 1, v2) == 1)
  {
    sub_1D22BD238(v10, &qword_1EC6D9A30);
LABEL_8:
    v20 = 0;
    return v20 & 1;
  }

  v13 = sub_1D2871F78();
  v14 = *(v3 + 8);
  v14(v10, v2);
  if ((v13 & 1) == 0)
  {
    goto LABEL_8;
  }

  if ((sub_1D2643F7C() & 1) == 0 && (sub_1D264A47C(type metadata accessor for SketchConditioningImage, type metadata accessor for SketchConditioningImage) & 1) == 0)
  {
    swift_getKeyPath();
    v26 = v1;
    sub_1D28719E8();

    sub_1D2870F78();
    v15 = sub_1D23C6B54();

    v16 = *(v15 + 56);

    if (v16 != 1)
    {
      goto LABEL_8;
    }
  }

  swift_getKeyPath();
  v26 = v1;
  sub_1D28719E8();

  v17 = OBJC_IVAR____TtC23ImagePlaygroundInternal20StylePickerViewModel__selectedItem;
  swift_beginAccess();
  v18 = v1 + v17;
  v19 = v24;
  v23(v24, v18, v2);
  LOBYTE(v17) = sub_1D2871F78();
  v14(v19, v2);
  v20 = v17 ^ 1;
  return v20 & 1;
}

uint64_t sub_1D2643F7C()
{
  v1 = type metadata accessor for PhotosPersonAsset();
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v13[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v4 = type metadata accessor for SketchConditioningImage();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v13[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v7 = *(*(v0 + 56) + 32);
  v8 = *(v7 + 16);
  if (!v8)
  {
    return 0;
  }

  v9 = v7 + 32;
  result = sub_1D2870F68();
  v11 = 0;
  while (v11 < *(v7 + 16))
  {
    sub_1D22D7044(v9, v15);
    sub_1D22D7044(v15, v14);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9A10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA3F0);
    if (swift_dynamicCast())
    {
      __swift_destroy_boxed_opaque_existential_0(v13);
      sub_1D22D7044(v15, v14);
      if (!swift_dynamicCast())
      {

        __swift_destroy_boxed_opaque_existential_0(v15);
        return 1;
      }

      sub_1D264BE1C(v6, type metadata accessor for SketchConditioningImage);
    }

    sub_1D22D79FC(v15, v14);
    result = swift_dynamicCast();
    if (result)
    {

      sub_1D264BE1C(v3, type metadata accessor for PhotosPersonAsset);
      return 1;
    }

    ++v11;
    v9 += 40;
    if (v8 == v11)
    {

      return 0;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D26441D0(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_1D264BDB4(qword_1EC6D8488, type metadata accessor for StylePickerViewModel);
  sub_1D28719E8();

  return *(v2 + *a2);
}

int *sub_1D2644270@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  LODWORD(v31) = a2;
  v34 = a1;
  v5 = sub_1D2872008();
  v32 = v5;
  v6 = *(v5 - 8);
  v40 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v37 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = swift_allocObject();
  swift_weakInit();
  v33 = *(v6 + 16);
  v33(a3, a1, v5);
  v9 = sub_1D264A138();
  v38 = v10;
  v39 = v9;
  v36 = sub_1D264A47C(type metadata accessor for PersonConditioningImage, type metadata accessor for PersonConditioningImage);
  v35 = sub_1D2643F7C();
  v11 = swift_allocObject();
  swift_weakInit();
  sub_1D2878568();
  sub_1D2870F78();
  v12 = sub_1D2878558();
  v13 = swift_allocObject();
  v14 = MEMORY[0x1E69E85E0];
  *(v13 + 16) = v12;
  *(v13 + 24) = v14;
  *(v13 + 32) = v11;
  LOBYTE(v5) = v31;
  *(v13 + 40) = v31;

  v15 = swift_allocObject();
  swift_weakInit();
  sub_1D2870F78();
  sub_1D2870F78();
  v16 = sub_1D2878558();
  v17 = swift_allocObject();
  *(v17 + 16) = v16;
  *(v17 + 24) = MEMORY[0x1E69E85E0];
  *(v17 + 32) = v15;
  *(v17 + 40) = v5;
  *(v17 + 48) = sub_1D264BFD4;
  *(v17 + 56) = v8;

  sub_1D2877528();

  v18 = v42;
  v31 = v41;
  LOBYTE(v12) = v43;
  v19 = swift_allocObject();
  swift_weakInit();
  v20 = v37;
  v21 = v32;
  v33(v37, v34, v32);
  v22 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = v19;
  (*(v6 + 32))(v23 + v22, v20, v21);
  result = type metadata accessor for PhotoSharingConfirmationParams(0);
  v25 = (a3 + result[5]);
  v26 = v38;
  *v25 = v39;
  v25[1] = v26;
  v27 = v35;
  *(a3 + result[6]) = v36 & 1;
  *(a3 + result[7]) = (v27 & 1) == 0;
  v28 = a3 + result[8];
  *v28 = v31;
  *(v28 + 8) = v18;
  *(v28 + 16) = v12;
  v29 = (a3 + result[9]);
  *v29 = sub_1D264C000;
  v29[1] = v23;
  v30 = (a3 + result[10]);
  *v30 = 0;
  v30[1] = 0;
  return result;
}

uint64_t sub_1D2644628()
{
  swift_getKeyPath();
  sub_1D264BDB4(qword_1EC6D8488, type metadata accessor for StylePickerViewModel);
  sub_1D28719E8();

  return sub_1D2870F68();
}

uint64_t sub_1D26446D4()
{
  v1 = sub_1D2872008();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v37 = v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v31 = v29 - v5;
  MEMORY[0x1EEE9AC00](v6);
  v8 = v29 - v7;
  sub_1D2871FE8();
  v29[3] = v44;
  v29[2] = v43;
  v29[1] = __swift_project_boxed_opaque_existential_1(v42, v43);
  v9 = *(v0 + 40);
  v38 = v0;
  __swift_project_boxed_opaque_existential_1((v0 + 16), v9);
  result = sub_1D23B5D64();
  v11 = result;
  v36 = *(result + 16);
  if (!v36)
  {
    v13 = MEMORY[0x1E69E7CC0];
LABEL_21:

    v23 = sub_1D233DB78(v13);

    v24 = *(v23 + 16);
    if (v24)
    {
      v25 = sub_1D27CE888(*(v23 + 16), 0);
      sub_1D260D710(&v41, (v25 + ((*(v2 + 80) + 32) & ~*(v2 + 80))), v24, v23);
      v27 = v26;
      sub_1D23EEDB0();
      if (v27 == v24)
      {
LABEL_25:
        v41 = v25;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAB70);
        sub_1D249AF34(&qword_1EC6D75A0, &qword_1EC6DAB70);
        v28 = sub_1D2878308();

        __swift_destroy_boxed_opaque_existential_0(v42);
        return v28;
      }

      __break(1u);
    }

    v25 = MEMORY[0x1E69E7CC0];
    goto LABEL_25;
  }

  v12 = 0;
  v34 = v2 + 16;
  v32 = (v2 + 8);
  v13 = MEMORY[0x1E69E7CC0];
  v33 = (v2 + 32);
  v35 = v2;
  v30 = result;
  while (v12 < *(v11 + 16))
  {
    v40 = (*(v2 + 80) + 32) & ~*(v2 + 80);
    v39 = *(v2 + 72);
    (*(v2 + 16))(v8, v11 + v40 + v39 * v12, v1);
    v15 = sub_1D26474F0(v8);
    if (qword_1ED8A4928 == -1)
    {
      if (sub_1D23CF768())
      {
        goto LABEL_9;
      }
    }

    else
    {
      swift_once();
      if (sub_1D23CF768())
      {
LABEL_9:
        if (v15)
        {
          goto LABEL_14;
        }

        v14 = *v32;
        goto LABEL_4;
      }
    }

    v16 = v8;
    v17 = v31;
    sub_1D2871FD8();
    sub_1D264BDB4(&qword_1ED8A6C08, MEMORY[0x1E696E310]);
    v18 = sub_1D2877F98();
    v14 = *v32;
    (*v32)(v17, v1);
    v8 = v16;
    if (v15)
    {
      v11 = v30;
      if ((v18 & 1) == 0)
      {
LABEL_14:
        v19 = *v33;
        (*v33)(v37, v8, v1);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v41 = v13;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1D23D885C(0, *(v13 + 16) + 1, 1);
          v13 = v41;
        }

        v22 = *(v13 + 16);
        v21 = *(v13 + 24);
        if (v22 >= v21 >> 1)
        {
          sub_1D23D885C(v21 > 1, v22 + 1, 1);
          v13 = v41;
        }

        *(v13 + 16) = v22 + 1;
        result = (v19)(v13 + v40 + v22 * v39, v37, v1);
        goto LABEL_5;
      }
    }

    else
    {
      v11 = v30;
    }

LABEL_4:
    result = v14(v8, v1);
LABEL_5:
    ++v12;
    v2 = v35;
    if (v36 == v12)
    {
      goto LABEL_21;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D2644B70(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9A30);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v26 - v8;
  v10 = sub_1D2872008();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = v26 - v15;
  sub_1D2647710(a1, v9);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    return sub_1D22BD238(v9, &qword_1EC6D9A30);
  }

  (*(v11 + 32))(v16, v9, v10);
  if ((sub_1D2871F78() & 1) == 0)
  {
    v20 = *(v11 + 16);
    goto LABEL_8;
  }

  swift_getKeyPath();
  v18 = OBJC_IVAR____TtC23ImagePlaygroundInternal20StylePickerViewModel___observationRegistrar;
  v28 = v2;
  v26[1] = sub_1D264BDB4(qword_1EC6D8488, type metadata accessor for StylePickerViewModel);
  v26[2] = v18;
  sub_1D28719E8();

  v19 = OBJC_IVAR____TtC23ImagePlaygroundInternal20StylePickerViewModel__selectedItem;
  swift_beginAccess();
  v20 = *(v11 + 16);
  v20(v14, v2 + v19, v10);
  LOBYTE(v19) = sub_1D2871F78();
  v21 = v14;
  v22 = *(v11 + 8);
  v22(v21, v10);
  if ((v19 & 1) != 0 || (sub_1D2643F7C() & 1) == 0 && (sub_1D264A47C(type metadata accessor for SketchConditioningImage, type metadata accessor for SketchConditioningImage) & 1) == 0)
  {
    if (sub_1D2647D00(v16))
    {
      return (v22)(v16, v10);
    }

LABEL_8:
    v20(v7, v16, v10);
    (*(v11 + 56))(v7, 0, 1, v10);
    sub_1D26483DC(v7);
    sub_1D22BD238(v7, &qword_1EC6D9A30);
    return (*(v11 + 8))(v16, v10);
  }

  swift_getKeyPath();
  v27 = v2;
  sub_1D28719E8();

  if (*(*(v2 + OBJC_IVAR____TtC23ImagePlaygroundInternal20StylePickerViewModel__allowedStyles) + 16) == 1)
  {
    swift_getKeyPath();
    v27 = v2;
    sub_1D28719E8();

    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      sub_1D23370A0(Strong);
      swift_unknownObjectRelease();
    }

    return (v22)(v16, v10);
  }

  v24 = OBJC_IVAR____TtC23ImagePlaygroundInternal20StylePickerViewModel__shouldShowPhotoSharingConfirmation;
  if (*(v2 + OBJC_IVAR____TtC23ImagePlaygroundInternal20StylePickerViewModel__shouldShowPhotoSharingConfirmation) == 1)
  {
    result = (v22)(v16, v10);
    *(v2 + v24) = 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v26[-2] = v2;
    LOBYTE(v26[-1]) = 1;
    v27 = v2;
    sub_1D28719D8();

    return (v22)(v16, v10);
  }

  return result;
}

uint64_t sub_1D2645074(uint64_t result, void *a2)
{
  if (*(v2 + *a2) == (result & 1))
  {
    *(v2 + *a2) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D264BDB4(qword_1EC6D8488, type metadata accessor for StylePickerViewModel);
    sub_1D28719D8();
  }

  return result;
}

uint64_t sub_1D2645178(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9A30);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v10 - v4;
  v6 = OBJC_IVAR____TtC23ImagePlaygroundInternal20StylePickerViewModel__externalStyleToSwitchAfterOnboarding;
  swift_beginAccess();
  sub_1D22BD1D0(v1 + v6, v5, &qword_1EC6D9A30);
  v7 = sub_1D264B8F0(v5, a1);
  sub_1D22BD238(v5, &qword_1EC6D9A30);
  if (v7)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v10[-2] = v1;
    v10[-1] = a1;
    v10[2] = v1;
    sub_1D264BDB4(qword_1EC6D8488, type metadata accessor for StylePickerViewModel);
    sub_1D28719D8();
  }

  else
  {
    swift_beginAccess();
    sub_1D264BC10(a1, v1 + v6);
    swift_endAccess();
  }

  return sub_1D22BD238(a1, &qword_1EC6D9A30);
}

uint64_t sub_1D2645364(uint64_t a1)
{
  if (*(v1 + 72) == a1)
  {
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D264BDB4(qword_1EC6D8488, type metadata accessor for StylePickerViewModel);
    sub_1D28719D8();
  }
}

uint64_t sub_1D26454B4(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v17[0] = a4;
  v6 = v4;
  v8 = sub_1D2872008();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a2;
  swift_beginAccess();
  (*(v9 + 16))(v11, v4 + v12, v8);
  sub_1D264BDB4(&qword_1ED8A6C08, MEMORY[0x1E696E310]);
  v13 = sub_1D2877F98();
  v14 = *(v9 + 8);
  v14(v11, v8);
  if (v13)
  {
    swift_beginAccess();
    (*(v9 + 24))(v6 + v12, a1, v8);
    swift_endAccess();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v17[-2] = v6;
    v17[-1] = a1;
    v17[1] = v6;
    sub_1D264BDB4(qword_1EC6D8488, type metadata accessor for StylePickerViewModel);
    sub_1D28719D8();
  }

  return (v14)(a1, v8);
}

uint64_t sub_1D2645728()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9A30);
  v3 = MEMORY[0x1EEE9AC00](v2 - 8);
  v39 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v38 = &v30 - v5;
  v6 = sub_1D2872008();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v30 - v11;
  swift_getKeyPath();
  v13 = OBJC_IVAR____TtC23ImagePlaygroundInternal20StylePickerViewModel___observationRegistrar;
  v43 = v0;
  v14 = sub_1D264BDB4(qword_1EC6D8488, type metadata accessor for StylePickerViewModel);
  sub_1D28719E8();

  v15 = OBJC_IVAR____TtC23ImagePlaygroundInternal20StylePickerViewModel__selectedItem;
  swift_beginAccess();
  v40 = *(v7 + 16);
  v41 = v7 + 16;
  v40(v12, v0 + v15, v6);
  v16 = sub_1D2871F78();
  v37 = *(v7 + 8);
  v37(v12, v6);
  if ((v16 & 1) == 0 || (swift_getKeyPath(), v42 = v1, sub_1D28719E8(), , sub_1D2870F78(), v17 = sub_1D23C6B54(), , v18 = *(v17 + 56), , v18 != 1))
  {
    swift_getKeyPath();
    v42 = v1;
    sub_1D28719E8();

    v28 = v39;
    v40(v39, v1 + v15, v6);
    (*(v7 + 56))(v28, 0, 1, v6);
LABEL_14:
    sub_1D2644B70(v28);
    return sub_1D22BD238(v28, &qword_1EC6D9A30);
  }

  v36 = v14;
  v39 = v13;
  __swift_project_boxed_opaque_existential_1((v1 + 16), *(v1 + 40));
  result = sub_1D23B5D64();
  v32 = *(result + 16);
  if (!v32)
  {
LABEL_11:

    v29 = 1;
    v28 = v38;
LABEL_13:
    (*(v7 + 56))(v28, v29, 1, v6);
    goto LABEL_14;
  }

  v20 = 0;
  v21 = OBJC_IVAR____TtC23ImagePlaygroundInternal20StylePickerViewModel__allowedStyles;
  v34 = result;
  v35 = v7;
  v31 = OBJC_IVAR____TtC23ImagePlaygroundInternal20StylePickerViewModel__allowedStyles;
  while (v20 < *(result + 16))
  {
    v22 = (*(v7 + 80) + 32) & ~*(v7 + 80);
    v23 = *(v7 + 72);
    v33 = v20 + 1;
    v40(v10, result + v22 + v23 * v20, v6);
    swift_getKeyPath();
    v42 = v1;
    sub_1D28719E8();

    v24 = *(v1 + v21);
    v25 = *(v24 + 16);
    v26 = v24 + v22;
    sub_1D2870F68();
    v27 = v25 + 1;
    while (--v27)
    {
      sub_1D264BDB4(&qword_1ED8A6C08, MEMORY[0x1E696E310]);
      v26 += v23;
      if (sub_1D2877F98())
      {

        v7 = v35;
        v28 = v38;
        (*(v35 + 32))(v38, v10, v6);
        v29 = 0;
        goto LABEL_13;
      }
    }

    v37(v10, v6);
    v20 = v33;
    result = v34;
    v7 = v35;
    v21 = v31;
    if (v33 == v32)
    {
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D2645C30()
{
  swift_getKeyPath();
  sub_1D264BDB4(qword_1EC6D8488, type metadata accessor for StylePickerViewModel);
  sub_1D28719E8();

  return sub_1D2870F78();
}

uint64_t sub_1D2645CD4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D264BDB4(qword_1EC6D8488, type metadata accessor for StylePickerViewModel);
  sub_1D28719E8();

  *a2 = *(v3 + 72);
  return sub_1D2870F78();
}

uint64_t sub_1D2645DAC()
{
  swift_getKeyPath();
  sub_1D264BDB4(qword_1EC6D8488, type metadata accessor for StylePickerViewModel);
  sub_1D28719E8();

  return swift_unknownObjectWeakLoadStrong();
}

uint64_t sub_1D2645E54@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D264BDB4(qword_1EC6D8488, type metadata accessor for StylePickerViewModel);
  sub_1D28719E8();

  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 88);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_1D2645F04()
{
  swift_getKeyPath();
  sub_1D264BDB4(qword_1EC6D8488, type metadata accessor for StylePickerViewModel);
  sub_1D28719D8();
}

uint64_t sub_1D2645FD4()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9A30);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v21 = &v18 - v3;
  v4 = sub_1D2872008();
  v22 = *(v4 - 8);
  v5 = v22;
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v18 - v9;
  swift_getKeyPath();
  v11 = OBJC_IVAR____TtC23ImagePlaygroundInternal20StylePickerViewModel___observationRegistrar;
  v25 = v0;
  sub_1D264BDB4(qword_1EC6D8488, type metadata accessor for StylePickerViewModel);
  sub_1D28719E8();

  v12 = OBJC_IVAR____TtC23ImagePlaygroundInternal20StylePickerViewModel__defaultStyle;
  swift_beginAccess();
  v13 = *(v5 + 16);
  v19 = v12;
  v13(v10, v1 + v12, v4);
  swift_getKeyPath();
  v24 = v1;
  v20 = v11;
  sub_1D28719E8();

  v14 = OBJC_IVAR____TtC23ImagePlaygroundInternal20StylePickerViewModel__selectedItem;
  swift_beginAccess();
  v13(v8, v1 + v14, v4);
  sub_1D264BDB4(&qword_1ED8A6C08, MEMORY[0x1E696E310]);
  LOBYTE(v14) = sub_1D2877F98();
  v15 = *(v22 + 8);
  v15(v8, v4);
  result = (v15)(v10, v4);
  if ((v14 & 1) == 0)
  {
    swift_getKeyPath();
    v23 = v1;
    sub_1D28719E8();

    v17 = v21;
    v13(v21, v1 + v19, v4);
    (*(v22 + 56))(v17, 0, 1, v4);
    sub_1D2644B70(v17);
    return sub_1D22BD238(v17, &qword_1EC6D9A30);
  }

  return result;
}

uint64_t sub_1D2646354@<X0>(uint64_t *a1@<X1>, uint64_t a2@<X8>)
{
  swift_getKeyPath();
  v8 = v2;
  sub_1D264BDB4(qword_1EC6D8488, type metadata accessor for StylePickerViewModel);
  sub_1D28719E8();

  v5 = *a1;
  swift_beginAccess();
  v6 = sub_1D2872008();
  return (*(*(v6 - 8) + 16))(a2, v8 + v5, v6);
}

uint64_t sub_1D264644C(uint64_t a1)
{
  v2 = sub_1D2872008();
  v3 = MEMORY[0x1EEE9AC00](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v5, a1, v3);
  return sub_1D2643750(v5);
}

uint64_t sub_1D2646518(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D2872008();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7, a2, v4);
  v8 = OBJC_IVAR____TtC23ImagePlaygroundInternal20StylePickerViewModel__defaultStyle;
  swift_beginAccess();
  (*(v5 + 24))(a1 + v8, v7, v4);
  swift_endAccess();
  sub_1D2645FD4();
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_1D2646654(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9A30);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v11 - v5;
  *(v2 + OBJC_IVAR____TtC23ImagePlaygroundInternal20StylePickerViewModel__allowedStyles) = a1;

  swift_getKeyPath();
  v11[1] = v2;
  sub_1D264BDB4(qword_1EC6D8488, type metadata accessor for StylePickerViewModel);
  sub_1D28719E8();

  v7 = OBJC_IVAR____TtC23ImagePlaygroundInternal20StylePickerViewModel__defaultStyle;
  swift_beginAccess();
  v8 = sub_1D2872008();
  v9 = *(v8 - 8);
  (*(v9 + 16))(v6, v2 + v7, v8);
  (*(v9 + 56))(v6, 0, 1, v8);
  sub_1D2644B70(v6);
  return sub_1D22BD238(v6, &qword_1EC6D9A30);
}

uint64_t sub_1D2646868@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X4>, uint64_t a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  sub_1D264BDB4(qword_1EC6D8488, type metadata accessor for StylePickerViewModel);
  sub_1D28719E8();

  v6 = *a2;
  swift_beginAccess();
  v7 = sub_1D2872008();
  return (*(*(v7 - 8) + 16))(a3, v5 + v6, v7);
}

uint64_t sub_1D264698C(char a1)
{
  v2 = v1;
  v44 = type metadata accessor for SketchConditioningImage();
  MEMORY[0x1EEE9AC00](v44);
  v5 = v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = type metadata accessor for SceneConditioningImage();
  MEMORY[0x1EEE9AC00](v45);
  v46 = v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for PersonConditioningImage();
  MEMORY[0x1EEE9AC00](v7);
  v48 = v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = type metadata accessor for PhotosPersonAsset();
  MEMORY[0x1EEE9AC00](v47);
  v10 = v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1D2872008();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  if (a1)
  {
    v41[5] = v7;
    v50[0] = v2;
    v15 = OBJC_IVAR____TtC23ImagePlaygroundInternal20StylePickerViewModel___observationRegistrar;
    v16 = sub_1D264BDB4(qword_1EC6D8488, type metadata accessor for StylePickerViewModel);
    sub_1D28719E8();

    if ((*(v2 + OBJC_IVAR____TtC23ImagePlaygroundInternal20StylePickerViewModel__shouldShowStylesPopover) & 1) == 0)
    {
      swift_getKeyPath();
      v50[0] = v2;
      sub_1D28719E8();

      v18 = *(v2 + OBJC_IVAR____TtC23ImagePlaygroundInternal20StylePickerViewModel__isPendingResetToInternalStyle) == 1;
      v41[4] = v15;
      if (v18)
      {
        v43 = v5;
        KeyPath = swift_getKeyPath();
        v42 = v41;
        MEMORY[0x1EEE9AC00](KeyPath);
        v41[-2] = v2;
        LOBYTE(v41[-1]) = 0;
        v50[0] = v2;
        sub_1D28719D8();
        v41[3] = 0;

        swift_getKeyPath();
        v50[0] = v2;
        sub_1D28719E8();

        v20 = OBJC_IVAR____TtC23ImagePlaygroundInternal20StylePickerViewModel__selectedItem;
        swift_beginAccess();
        (*(v12 + 16))(v14, v2 + v20, v11);
        LOBYTE(v20) = sub_1D2871F78();
        (*(v12 + 8))(v14, v11);
        if (v20)
        {
          swift_getKeyPath();
          v50[0] = v2;
          sub_1D28719E8();

          Strong = swift_unknownObjectWeakLoadStrong();
          if (Strong)
          {
            v22 = Strong;
            v23 = *(sub_1D22FC2DC() + 32);
            sub_1D2870F68();

            v24 = *(v23 + 16);
            if (v24)
            {
              v25 = v22;
              v41[2] = v16;
              v42 = OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel____lazy_storage___imageConditioningRepresentationsManager;
              v41[1] = v23;
              v26 = v23 + 32;
              v27 = v43;
              v28 = v46;
              do
              {
                sub_1D22D7044(v26, v50);
                sub_1D22D7044(v50, v49);
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9A10);
                v29 = swift_dynamicCast();
                v30 = v48;
                if (v29)
                {
                  v31 = type metadata accessor for PhotosPersonAsset;
                  v32 = v10;
                }

                else
                {
                  sub_1D22D7044(v50, v49);
                  if (swift_dynamicCast())
                  {
                    v31 = type metadata accessor for PersonConditioningImage;
                    v32 = v30;
                  }

                  else
                  {
                    sub_1D22D7044(v50, v49);
                    if (swift_dynamicCast())
                    {
                      v31 = type metadata accessor for SceneConditioningImage;
                      v32 = v28;
                    }

                    else
                    {
                      sub_1D22D7044(v50, v49);
                      if (!swift_dynamicCast())
                      {
                        __swift_destroy_boxed_opaque_existential_0(v50);
                        goto LABEL_18;
                      }

                      v31 = type metadata accessor for SketchConditioningImage;
                      v32 = v27;
                    }
                  }
                }

                sub_1D264BE1C(v32, v31);
                v33 = *(v42 + v25);
                v35 = v51;
                v34 = v52;
                v36 = __swift_project_boxed_opaque_existential_1(v50, v51);
                sub_1D2870F78();
                sub_1D2685CE8(v36, v33, v35, v34);

                __swift_destroy_boxed_opaque_existential_0(v50);
                v27 = v43;
                v28 = v46;
LABEL_18:
                v26 += 40;
                --v24;
              }

              while (v24);
            }

            swift_unknownObjectRelease();
          }
        }
      }

      swift_getKeyPath();
      v50[0] = v2;
      sub_1D28719E8();

      result = swift_unknownObjectWeakLoadStrong();
      if (result)
      {
        v37 = result;
        v38 = sub_1D22FECC4();
        swift_getKeyPath();
        v50[0] = v38;
        sub_1D28719E8();

        v39 = *(v38 + OBJC_IVAR____TtC23ImagePlaygroundInternal20StylePickerViewModel__isPendingResetToInternalStyle);

        if ((v39 & 1) == 0)
        {
          if (*(v37 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__holdExternalProviderGenerationTask))
          {
            v40 = swift_getKeyPath();
            MEMORY[0x1EEE9AC00](v40);
            v41[-2] = v37;
            LOBYTE(v41[-1]) = 0;
            v50[0] = v37;
            sub_1D264BDB4(&qword_1ED8A2520, type metadata accessor for ComposingViewModel);
            sub_1D28719D8();
          }

          else
          {
            *(v37 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__holdExternalProviderGenerationTask) = 0;
          }
        }

        swift_getKeyPath();
        v50[0] = v37;
        sub_1D264BDB4(&qword_1ED8A2520, type metadata accessor for ComposingViewModel);
        sub_1D28719E8();

        if (*(v37 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__externalProviderGenerationPendingStart) == 1)
        {
          swift_getKeyPath();
          v50[0] = v37;
          sub_1D28719E8();

          if ((*(v37 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__holdExternalProviderGenerationTask) & 1) == 0)
          {
            sub_1D232F828();
          }
        }

        return swift_unknownObjectRelease();
      }
    }
  }

  else
  {
    v50[0] = v2;
    sub_1D264BDB4(qword_1EC6D8488, type metadata accessor for StylePickerViewModel);
    sub_1D28719E8();

    if (*(v2 + OBJC_IVAR____TtC23ImagePlaygroundInternal20StylePickerViewModel__shouldShowStylesPopover) == 1)
    {
      swift_getKeyPath();
      v50[0] = v2;
      sub_1D28719E8();

      result = swift_unknownObjectWeakLoadStrong();
      if (result)
      {
        sub_1D23322C0();
        return swift_unknownObjectRelease();
      }
    }
  }

  return result;
}

uint64_t sub_1D264730C(uint64_t a1, char a2)
{
  v3 = *(a1 + OBJC_IVAR____TtC23ImagePlaygroundInternal20StylePickerViewModel__shouldShowStylesPopover);
  *(a1 + OBJC_IVAR____TtC23ImagePlaygroundInternal20StylePickerViewModel__shouldShowStylesPopover) = a2;
  return sub_1D264698C(v3);
}

uint64_t sub_1D264736C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t a7)
{
  v11 = sub_1D2872008();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v13, a1);
  return sub_1D26454B4(v13, a5, a6, a7);
}

uint64_t sub_1D2647458(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = *a3;
  swift_beginAccess();
  v6 = sub_1D2872008();
  (*(*(v6 - 8) + 24))(a1 + v5, a2, v6);
  return swift_endAccess();
}

uint64_t sub_1D26474F0(uint64_t a1)
{
  v3 = sub_1D2872008();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v14 = v1;
  sub_1D264BDB4(qword_1EC6D8488, type metadata accessor for StylePickerViewModel);
  sub_1D28719E8();

  v7 = *(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal20StylePickerViewModel__allowedStyles);
  v13 = *(v7 + 16);
  v8 = (v4 + 8);
  result = sub_1D2870F68();
  v10 = 0;
  while (1)
  {
    v11 = v10;
    if (v13 == v10)
    {
LABEL_6:

      return v13 != v11;
    }

    if (v10 >= *(v7 + 16))
    {
      break;
    }

    (*(v4 + 16))(v6, v7 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v10, v3);
    if (MEMORY[0x1D389AA00](v6, a1))
    {

      (*v8)(v6, v3);
      return v13 != v11;
    }

    ++v10;
    v12 = sub_1D2871E88();
    result = (*v8)(v6, v3);
    if (v12)
    {
      goto LABEL_6;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D2647710@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v32 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9A30);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v29 - v6;
  v8 = sub_1D2872008();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v30 = &v29 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v29 - v15;
  sub_1D22BD1D0(a1, v7, &qword_1EC6D9A30);
  v17 = *(v9 + 48);
  if (v17(v7, 1, v8) == 1)
  {
    swift_getKeyPath();
    v34 = v3;
    sub_1D264BDB4(qword_1EC6D8488, type metadata accessor for StylePickerViewModel);
    sub_1D28719E8();

    v18 = OBJC_IVAR____TtC23ImagePlaygroundInternal20StylePickerViewModel__defaultStyle;
    swift_beginAccess();
    (*(v9 + 16))(v16, v3 + v18, v8);
    v19 = v16;
    if (v17(v7, 1, v8) != 1)
    {
      sub_1D22BD238(v7, &qword_1EC6D9A30);
    }
  }

  else
  {
    (*(v9 + 32))(v16, v7, v8);
    v19 = v16;
  }

  if ((sub_1D26474F0(v19) & 1) == 0)
  {
    swift_getKeyPath();
    v33 = v3;
    sub_1D264BDB4(qword_1EC6D8488, type metadata accessor for StylePickerViewModel);
    sub_1D28719E8();

    v21 = *(v3 + OBJC_IVAR____TtC23ImagePlaygroundInternal20StylePickerViewModel__allowedStyles);
    if (*(v21 + 16))
    {
      v20 = v32;
      (*(v9 + 16))(v32, v21 + ((*(v9 + 80) + 32) & ~*(v9 + 80)), v8);
      (*(v9 + 8))(v19, v8);
      return (*(v9 + 56))(v20, 0, 1, v8);
    }

    (*(v9 + 8))(v19, v8);
    return (*(v9 + 56))(v32, 1, 1, v8);
  }

  if (sub_1D2649140(v19))
  {
    v20 = v32;
    (*(v9 + 32))(v32, v19, v8);
    return (*(v9 + 56))(v20, 0, 1, v8);
  }

  swift_getKeyPath();
  v33 = v3;
  sub_1D264BDB4(qword_1EC6D8488, type metadata accessor for StylePickerViewModel);
  sub_1D28719E8();

  v23 = OBJC_IVAR____TtC23ImagePlaygroundInternal20StylePickerViewModel__selectedItem;
  swift_beginAccess();
  v24 = v30;
  v31 = *(v9 + 16);
  v31(v30, v3 + v23, v8);
  LOBYTE(v23) = sub_1D2649140(v24);
  v25 = *(v9 + 8);
  v25(v24, v8);
  if (v23)
  {
    v25(v19, v8);
    return (*(v9 + 56))(v32, 1, 1, v8);
  }

  v29 = v19;
  v30 = v25;
  __swift_project_boxed_opaque_existential_1((v3 + 16), *(v3 + 40));
  result = sub_1D23B5D64();
  v26 = result;
  v27 = *(result + 16);
  if (!v27)
  {
LABEL_20:
    (v30)(v29, v8);

    return (*(v9 + 56))(v32, 1, 1, v8);
  }

  v28 = 0;
  while (v28 < *(v26 + 16))
  {
    v31(v12, v26 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v28, v8);
    if (sub_1D26474F0(v12))
    {
      (v30)(v29, v8);

      v20 = v32;
      (*(v9 + 32))(v32, v12, v8);
      return (*(v9 + 56))(v20, 0, 1, v8);
    }

    ++v28;
    result = (v30)(v12, v8);
    if (v27 == v28)
    {
      goto LABEL_20;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D2647D00(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9A30);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v34 - v5;
  v7 = sub_1D2877B48();
  v44 = *(v7 - 8);
  v45 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v41 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1D2877B68();
  v42 = *(v9 - 8);
  v43 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v40 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_1D2877BA8();
  v39 = *(v46 - 8);
  v11 = MEMORY[0x1EEE9AC00](v46);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v34 - v14;
  swift_getKeyPath();
  aBlock[0] = v1;
  sub_1D264BDB4(qword_1EC6D8488, type metadata accessor for StylePickerViewModel);
  sub_1D28719E8();

  v16 = sub_1D2870F78();
  v17 = sub_1D23C6B54(v16);

  v18 = *(v17 + 56);

  if (v18 == 1)
  {
    v36 = 1;
    v38 = a1;
    swift_getKeyPath();
    aBlock[0] = v2;
    sub_1D28719E8();

    v19 = OBJC_IVAR____TtC23ImagePlaygroundInternal20StylePickerViewModel__shouldShowStylesPopover;
    v20 = v2[OBJC_IVAR____TtC23ImagePlaygroundInternal20StylePickerViewModel__shouldShowStylesPopover];
    v37 = v6;
    if (v20)
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath);
      *(&v34 - 2) = v2;
      *(&v34 - 8) = 0;
      aBlock[0] = v2;
      sub_1D28719D8();
    }

    else
    {
      v2[OBJC_IVAR____TtC23ImagePlaygroundInternal20StylePickerViewModel__shouldShowStylesPopover] = 0;
      swift_getKeyPath();
      aBlock[0] = v2;
      sub_1D28719E8();

      if (v2[v19] == 1)
      {
        swift_getKeyPath();
        aBlock[0] = v2;
        sub_1D28719E8();

        if (swift_unknownObjectWeakLoadStrong())
        {
          sub_1D23322C0();
          swift_unknownObjectRelease();
        }
      }
    }

    sub_1D24614C4();
    v35 = sub_1D2878AB8();
    sub_1D2877B88();
    v34 = v15;
    sub_1D2877BC8();
    v39 = *(v39 + 8);
    (v39)(v13, v46);
    v22 = swift_allocObject();
    swift_weakInit();
    v23 = swift_allocObject();
    *(v23 + 16) = v22;
    *(v23 + 24) = v20;
    aBlock[4] = sub_1D264B8B4;
    aBlock[5] = v23;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1D23DFBA8;
    aBlock[3] = &block_descriptor_32;
    v24 = _Block_copy(aBlock);
    sub_1D2870F78();
    v25 = v40;
    sub_1D2877B58();
    v47 = MEMORY[0x1E69E7CC0];
    sub_1D264BDB4(&qword_1ED89CFE0, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DAE80);
    sub_1D249AF34(&qword_1ED89CEB0, &unk_1EC6DAE80);
    v26 = v41;
    v27 = v45;
    sub_1D2879088();
    v29 = v34;
    v28 = v35;
    MEMORY[0x1D38A1510](v34, v25, v26, v24);
    _Block_release(v24);

    (*(v44 + 8))(v26, v27);
    (*(v42 + 8))(v25, v43);
    (v39)(v29, v46);

    v30 = sub_1D2872008();
    v31 = *(v30 - 8);
    v32 = v37;
    (*(v31 + 16))(v37, v38, v30);
    (*(v31 + 56))(v32, 0, 1, v30);
    sub_1D2645178(v32);
    return v36;
  }

  return v18;
}

uint64_t sub_1D26483DC(uint64_t a1)
{
  v88 = sub_1D2871F38();
  v3 = *(v88 - 8);
  MEMORY[0x1EEE9AC00](v88);
  v83 = &v74 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DCB60);
  MEMORY[0x1EEE9AC00](v85);
  v86 = &v74 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9D58);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v84 = &v74 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v91 = &v74 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v90 = &v74 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9A30);
  v13 = MEMORY[0x1EEE9AC00](v12 - 8);
  v95 = &v74 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v74 - v16;
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v74 - v19;
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v74 - v21;
  v23 = sub_1D2872008();
  v24 = *(v23 - 8);
  v25 = MEMORY[0x1EEE9AC00](v23);
  v94 = &v74 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x1EEE9AC00](v25);
  v96 = &v74 - v28;
  v29 = MEMORY[0x1EEE9AC00](v27);
  v92 = &v74 - v30;
  MEMORY[0x1EEE9AC00](v29);
  v32 = &v74 - v31;
  sub_1D2647710(a1, v22);
  v33 = v24[6];
  if (v33(v22, 1, v23) == 1)
  {
    return sub_1D22BD238(v22, &qword_1EC6D9A30);
  }

  v77 = v3;
  v93 = v24 + 6;
  v35 = v24[4];
  v35(v32, v22, v23);
  v97 = v24;
  v98 = v20;
  v36 = v24[7];
  v76 = v24 + 7;
  v75 = v36;
  v36(v20, 1, 1, v23);
  v37 = *(v1 + 40);
  v78 = v1;
  __swift_project_boxed_opaque_existential_1((v1 + 16), v37);
  v38 = sub_1D23B5D64();
  MEMORY[0x1EEE9AC00](v38);
  *(&v74 - 2) = v32;
  sub_1D274B77C(sub_1D264BD08, v38, v17);
  v82 = 0;

  v81 = v33;
  v39 = v33(v17, 1, v23);
  v80 = v24 + 4;
  v79 = v35;
  v89 = v32;
  v87 = v23;
  if (v39 != 1)
  {
    v35(v92, v17, v23);
    v42 = v90;
    sub_1D2871F58();
    v43 = v91;
    sub_1D2871F58();
    v44 = *(v85 + 48);
    v45 = v86;
    sub_1D22BD1D0(v42, v86, &qword_1EC6D9D58);
    sub_1D22BD1D0(v43, v45 + v44, &qword_1EC6D9D58);
    v46 = *(v77 + 48);
    v47 = v88;
    if (v46(v45, 1, v88) == 1)
    {
      sub_1D22BD238(v43, &qword_1EC6D9D58);
      sub_1D22BD238(v42, &qword_1EC6D9D58);
      v48 = v46(v45 + v44, 1, v47);
      v49 = v98;
      v50 = v79;
      v23 = v87;
      v41 = v78;
      if (v48 == 1)
      {
        sub_1D22BD238(v45, &qword_1EC6D9D58);
        v40 = v97;
LABEL_13:
        (v40[1])(v92, v23);
        goto LABEL_14;
      }
    }

    else
    {
      v51 = v84;
      sub_1D22BD1D0(v45, v84, &qword_1EC6D9D58);
      v52 = v46(v45 + v44, 1, v47);
      v49 = v98;
      v41 = v78;
      if (v52 != 1)
      {
        v53 = v77;
        v54 = v83;
        (*(v77 + 32))(v83, v45 + v44, v47);
        sub_1D264BDB4(&qword_1EC6DCB68, MEMORY[0x1E696E300]);
        v55 = sub_1D2877F98();
        v56 = *(v53 + 8);
        v56(v54, v47);
        sub_1D22BD238(v91, &qword_1EC6D9D58);
        sub_1D22BD238(v90, &qword_1EC6D9D58);
        v56(v84, v47);
        sub_1D22BD238(v45, &qword_1EC6D9D58);
        v40 = v97;
        v50 = v79;
        v23 = v87;
        if (v55)
        {
          goto LABEL_13;
        }

LABEL_11:
        sub_1D22BD238(v49, &qword_1EC6D9A30);
        v50(v49, v92, v23);
        v75(v49, 0, 1, v23);
        goto LABEL_14;
      }

      sub_1D22BD238(v91, &qword_1EC6D9D58);
      sub_1D22BD238(v42, &qword_1EC6D9D58);
      (*(v77 + 8))(v51, v47);
      v50 = v79;
      v23 = v87;
    }

    sub_1D22BD238(v45, &qword_1EC6DCB60);
    v40 = v97;
    goto LABEL_11;
  }

  sub_1D22BD238(v17, &qword_1EC6D9A30);
  v40 = v97;
  v41 = v78;
LABEL_14:
  swift_getKeyPath();
  v57 = OBJC_IVAR____TtC23ImagePlaygroundInternal20StylePickerViewModel___observationRegistrar;
  v99[0] = v41;
  sub_1D264BDB4(qword_1EC6D8488, type metadata accessor for StylePickerViewModel);
  v92 = v57;
  sub_1D28719E8();

  v58 = OBJC_IVAR____TtC23ImagePlaygroundInternal20StylePickerViewModel__selectedItem;
  swift_beginAccess();
  v59 = v40[2];
  v60 = v96;
  v59(v96, v41 + v58, v23);
  sub_1D26454B4(v60, &OBJC_IVAR____TtC23ImagePlaygroundInternal20StylePickerViewModel__previousStyle, &unk_1D289AA58, sub_1D264BD44);
  v61 = v95;
  sub_1D22BD1D0(v98, v95, &qword_1EC6D9A30);
  v62 = v81;
  if (v81(v61, 1, v23) == 1)
  {
    v63 = v94;
    v59(v94, v89, v23);
    if (v62(v61, 1, v23) != 1)
    {
      sub_1D22BD238(v61, &qword_1EC6D9A30);
    }
  }

  else
  {
    v63 = v94;
    v79(v94, v61, v23);
  }

  sub_1D26454B4(v63, &OBJC_IVAR____TtC23ImagePlaygroundInternal20StylePickerViewModel__selectedItem, &unk_1D289A930, sub_1D264BCE4);
  v64 = v97;
  if (*(v41 + OBJC_IVAR____TtC23ImagePlaygroundInternal20StylePickerViewModel_shouldSaveStyle))
  {
    swift_getKeyPath();
    v99[0] = v41;
    sub_1D28719E8();
    v64 = v97;

    v65 = v96;
    v59(v96, v41 + v58, v87);
    sub_1D24F06A4(v65);
    swift_getKeyPath();
    v99[0] = v41;
    v23 = v87;
    sub_1D28719E8();

    v59(v65, v41 + v58, v23);
    sub_1D2643750(v65);
  }

  swift_getKeyPath();
  v99[0] = v41;
  sub_1D28719E8();

  v66 = *(v41 + 56);
  v101 = v23;
  v102 = sub_1D264BDB4(&qword_1ED8A6C20, MEMORY[0x1E696E310]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v100);
  v59(boxed_opaque_existential_1, v41 + v58, v23);
  type metadata accessor for AddImageConditioningRepresentationOperation();
  v68 = swift_allocObject();
  *(v68 + 32) = 0u;
  *(v68 + 48) = 0u;
  *(v68 + 64) = 0u;
  *(v68 + 80) = 0u;
  *(v68 + 96) = 0u;
  *(v68 + 16) = 0u;
  *(v68 + 112) = 1;
  *(v68 + 114) = 1;
  sub_1D22D79FC(&v100, v99);
  v99[5] = v66;
  swift_beginAccess();
  sub_1D2870F78();
  sub_1D22D3E98(v99, v68 + 16);
  swift_endAccess();
  *(v68 + 113) = 0;
  v69 = *(v41 + 64);
  v70 = v82;
  sub_1D27FDB14();
  if (v70)
  {
    v71 = v70;
    sub_1D2649AB8(v70);
  }

  else
  {
    sub_1D27DF058(v68, v69);
  }

  v72 = v98;
  v73 = v89;

  sub_1D22BD238(v72, &qword_1EC6D9A30);
  return (v64[1])(v73, v23);
}

uint64_t sub_1D2649140(uint64_t a1)
{
  v16[2] = a1;
  v2 = sub_1D2872008();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1((v1 + 16), *(v1 + 40));
  result = sub_1D23B5D64();
  v7 = result;
  v8 = 0;
  v17 = *(result + 16);
  v16[1] = v3 + 16;
  v9 = (v3 + 8);
  while (1)
  {
    v11 = v8;
    if (v17 == v8)
    {
      goto LABEL_8;
    }

    if (v8 >= *(v7 + 16))
    {
      break;
    }

    (*(v3 + 16))(v5, v7 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v8, v2);
    v12 = sub_1D2871F98();
    v14 = v13;
    if (v12 == sub_1D2871F98() && v14 == v15)
    {

      (*v9)(v5, v2);
LABEL_8:

      return v17 != v11;
    }

    ++v8;
    v10 = sub_1D2879618();

    result = (*v9)(v5, v2);
    if (v10)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D264933C(uint64_t a1, char a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9A30);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v15 - v4;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v7 = result;
    swift_getKeyPath();
    v16 = v7;
    sub_1D264BDB4(qword_1EC6D8488, type metadata accessor for StylePickerViewModel);
    sub_1D28719E8();

    v8 = sub_1D2870F78();
    v9 = sub_1D23C6B54(v8);

    v10 = *(v9 + 56);

    if (v10 == 1)
    {
      swift_getKeyPath();
      v16 = v7;
      sub_1D28719E8();

      if (swift_unknownObjectWeakLoadStrong())
      {
        v11 = swift_allocObject();
        swift_weakInit();
        v12 = swift_allocObject();
        *(v12 + 16) = v11;
        *(v12 + 24) = a2 & 1;
        sub_1D2870F78();
        sub_1D230B27C();

LABEL_7:
        swift_unknownObjectRelease();
      }
    }

    else
    {
      swift_getKeyPath();
      v16 = v7;
      sub_1D28719E8();

      v13 = OBJC_IVAR____TtC23ImagePlaygroundInternal20StylePickerViewModel__externalStyleToSwitchAfterOnboarding;
      swift_beginAccess();
      sub_1D22BD1D0(v7 + v13, v5, &qword_1EC6D9A30);
      sub_1D26483DC(v5);
      sub_1D22BD238(v5, &qword_1EC6D9A30);
      v14 = sub_1D2872008();
      (*(*(v14 - 8) + 56))(v5, 1, 1, v14);
      sub_1D2645178(v5);
      swift_getKeyPath();
      v15[1] = v7;
      sub_1D28719E8();

      if (swift_unknownObjectWeakLoadStrong())
      {
        sub_1D2336D48();
        goto LABEL_7;
      }
    }
  }

  return result;
}

uint64_t sub_1D2649678@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_1D264BDB4(qword_1EC6D8488, type metadata accessor for StylePickerViewModel);
  sub_1D28719E8();

  v3 = OBJC_IVAR____TtC23ImagePlaygroundInternal20StylePickerViewModel__externalStyleToSwitchAfterOnboarding;
  swift_beginAccess();
  return sub_1D22BD1D0(v5 + v3, a1, &qword_1EC6D9A30);
}

uint64_t sub_1D2649750(char a1, uint64_t a2, char a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9A30);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v13 - v6;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v9 = result;
    if (a1)
    {
      swift_getKeyPath();
      v13[0] = v9;
      sub_1D264BDB4(qword_1EC6D8488, type metadata accessor for StylePickerViewModel);
      sub_1D28719E8();

      v10 = OBJC_IVAR____TtC23ImagePlaygroundInternal20StylePickerViewModel__externalStyleToSwitchAfterOnboarding;
      swift_beginAccess();
      sub_1D22BD1D0(v9 + v10, v7, &qword_1EC6D9A30);
      sub_1D26483DC(v7);
      sub_1D22BD238(v7, &qword_1EC6D9A30);
    }

    v11 = sub_1D2872008();
    (*(*(v11 - 8) + 56))(v7, 1, 1, v11);
    sub_1D2645178(v7);
    if ((a3 & 1) == 0)
    {
    }

    if (*(v9 + OBJC_IVAR____TtC23ImagePlaygroundInternal20StylePickerViewModel__shouldShowStylesPopover) == 1)
    {
      *(v9 + OBJC_IVAR____TtC23ImagePlaygroundInternal20StylePickerViewModel__shouldShowStylesPopover) = 1;
      sub_1D264698C(1);
    }

    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v13[-2] = v9;
    LOBYTE(v13[-1]) = 1;
    v13[4] = v9;
    sub_1D264BDB4(qword_1EC6D8488, type metadata accessor for StylePickerViewModel);
    sub_1D28719D8();
  }

  return result;
}

uint64_t sub_1D2649A1C()
{
  v0 = sub_1D2871F98();
  v2 = v1;
  if (v0 == sub_1D2871F98() && v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_1D2879618();
  }

  return v4 & 1;
}

void sub_1D2649AB8(void *a1)
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

uint64_t sub_1D2649CC8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D264BDB4(qword_1EC6D8488, type metadata accessor for StylePickerViewModel);
  sub_1D28719E8();

  *a2 = *(v3 + OBJC_IVAR____TtC23ImagePlaygroundInternal20StylePickerViewModel__shouldShowPhotoSharingConfirmation);
  return result;
}

uint64_t sub_1D2649D78@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D264BDB4(qword_1EC6D8488, type metadata accessor for StylePickerViewModel);
  sub_1D28719E8();

  v4 = OBJC_IVAR____TtC23ImagePlaygroundInternal20StylePickerViewModel__externalStyleToSwitchAfterOnboarding;
  swift_beginAccess();
  return sub_1D22BD1D0(v3 + v4, a2, &qword_1EC6D9A30);
}

uint64_t sub_1D2649E50(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9A30);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v6 - v3;
  sub_1D22BD1D0(a1, &v6 - v3, &qword_1EC6D9A30);
  return sub_1D2645178(v4);
}

uint64_t sub_1D2649EFC(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC23ImagePlaygroundInternal20StylePickerViewModel__externalStyleToSwitchAfterOnboarding;
  swift_beginAccess();
  sub_1D264BC10(a2, a1 + v4);
  return swift_endAccess();
}

uint64_t sub_1D2649F68()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (*(result + OBJC_IVAR____TtC23ImagePlaygroundInternal20StylePickerViewModel__shouldShowPhotoSharingConfirmation))
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath);
      sub_1D264BDB4(qword_1EC6D8488, type metadata accessor for StylePickerViewModel);
      sub_1D28719D8();
    }

    else
    {
      *(result + OBJC_IVAR____TtC23ImagePlaygroundInternal20StylePickerViewModel__shouldShowPhotoSharingConfirmation) = 0;
    }

    swift_getKeyPath();
    sub_1D264BDB4(qword_1EC6D8488, type metadata accessor for StylePickerViewModel);
    sub_1D28719E8();

    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_1D2336D48();

      return swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_1D264A138()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DDDC0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = v22 - v2;
  v4 = type metadata accessor for PhotosPersonAsset();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = (v22 - v9);
  v11 = *(*(v0 + 56) + 32);
  v12 = *(v11 + 16);
  if (v12)
  {
    v22[1] = v11;
    v23 = v22 - v9;
    v13 = v11 + 32;
    v14 = (v5 + 56);
    v15 = (v5 + 48);
    sub_1D2870F68();
    v16 = MEMORY[0x1E69E7CC0];
    v24 = v5;
    do
    {
      sub_1D22D7044(v13, v26);
      sub_1D22D79FC(v26, v25);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9A10);
      v17 = swift_dynamicCast();
      (*v14)(v3, v17 ^ 1u, 1, v4);
      if ((*v15)(v3, 1, v4) == 1)
      {
        sub_1D22BD238(v3, &unk_1EC6DDDC0);
      }

      else
      {
        sub_1D23DBC5C(v3, v7);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v16 = sub_1D27CC868(0, v16[2] + 1, 1, v16);
        }

        v19 = v16[2];
        v18 = v16[3];
        if (v19 >= v18 >> 1)
        {
          v16 = sub_1D27CC868(v18 > 1, v19 + 1, 1, v16);
        }

        v16[2] = v19 + 1;
        v5 = v24;
        sub_1D23DBC5C(v7, v16 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v24 + 72) * v19);
      }

      v13 += 40;
      --v12;
    }

    while (v12);

    v10 = v23;
    if (v16[2])
    {
      goto LABEL_12;
    }

LABEL_15:

    return 0;
  }

  v16 = MEMORY[0x1E69E7CC0];
  if (!*(MEMORY[0x1E69E7CC0] + 16))
  {
    goto LABEL_15;
  }

LABEL_12:
  sub_1D24A35A4(v16 + ((*(v5 + 80) + 32) & ~*(v5 + 80)), v10);

  if (v10[1])
  {
    v20 = *v10;
  }

  else
  {
    v20 = 0;
  }

  sub_1D2870F68();
  sub_1D264BE1C(v10, type metadata accessor for PhotosPersonAsset);
  return v20;
}

uint64_t sub_1D264A47C(uint64_t (*a1)(void), uint64_t (*a2)(void))
{
  v4 = a1(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v12[-v5];
  v7 = *(*(v2 + 56) + 32);
  v8 = *(v7 + 16);
  result = sub_1D2870F68();
  if (v8)
  {
    v10 = 0;
    v11 = v7 + 32;
    while (v10 < *(v7 + 16))
    {
      sub_1D22D7044(v11, v13);
      sub_1D22D79FC(v13, v12);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9A10);
      result = swift_dynamicCast();
      if (result)
      {

        sub_1D264BE1C(v6, a2);
        return 1;
      }

      ++v10;
      v11 += 40;
      if (v8 == v10)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_6:

    return 0;
  }

  return result;
}

uint64_t sub_1D264A5CC@<X0>(char a1@<W3>, _BYTE *a2@<X8>)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v5 = result;
    swift_getKeyPath();
    sub_1D264BDB4(qword_1EC6D8488, type metadata accessor for StylePickerViewModel);
    sub_1D28719E8();

    v6 = *(v5 + OBJC_IVAR____TtC23ImagePlaygroundInternal20StylePickerViewModel__shouldShowPhotoSharingConfirmation);

    v7 = v6 & a1 & 1;
  }

  else
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

uint64_t sub_1D264A6C4(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, void (*a6)(uint64_t))
{
  v8 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v10 = result;
    if ((v8 & 1) == 0)
    {
      swift_getKeyPath();
      sub_1D264BDB4(qword_1EC6D8488, type metadata accessor for StylePickerViewModel);
      sub_1D28719E8();

      if (*(v10 + OBJC_IVAR____TtC23ImagePlaygroundInternal20StylePickerViewModel__shouldShowPhotoSharingConfirmation) == 1 && (a5 & 1) != 0)
      {
        a6(v11);
      }
    }
  }

  return result;
}

uint64_t sub_1D264A7CC(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9A30);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v11[-v4];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v7 = result;
    if (*(result + OBJC_IVAR____TtC23ImagePlaygroundInternal20StylePickerViewModel__shouldShowPhotoSharingConfirmation))
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath);
      *&v11[-16] = v7;
      v11[-8] = 0;
      v12 = v7;
      sub_1D264BDB4(qword_1EC6D8488, type metadata accessor for StylePickerViewModel);
      sub_1D28719D8();
    }

    else
    {
      *(result + OBJC_IVAR____TtC23ImagePlaygroundInternal20StylePickerViewModel__shouldShowPhotoSharingConfirmation) = 0;
    }

    if ((sub_1D2647D00(a2) & 1) == 0)
    {
      v9 = sub_1D2872008();
      v10 = *(v9 - 8);
      (*(v10 + 16))(v5, a2, v9);
      (*(v10 + 56))(v5, 0, 1, v9);
      sub_1D26483DC(v5);
      sub_1D22BD238(v5, &qword_1EC6D9A30);
      swift_getKeyPath();
      v12 = v7;
      sub_1D264BDB4(qword_1EC6D8488, type metadata accessor for StylePickerViewModel);
      sub_1D28719E8();

      if (swift_unknownObjectWeakLoadStrong())
      {
        sub_1D2336D48();
        swift_unknownObjectRelease();
      }
    }
  }

  return result;
}

uint64_t sub_1D264AAA8(uint64_t a1)
{
  __swift_project_boxed_opaque_existential_1((a1 + 16), *(a1 + 40));
  sub_1D23B5D64();
}

uint64_t (*sub_1D264AAE8())()
{
  swift_allocObject();
  swift_weakInit();
  return sub_1D264BE7C;
}

uint64_t sub_1D264AB44(uint64_t a1)
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
  v7[2] = v6;
  v7[3] = v8;
  v7[4] = a1;
  sub_1D22AE01C(0, 0, v4, &unk_1D289AB18, v7);
}

uint64_t sub_1D264AC68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a4;
  sub_1D2878568();
  *(v4 + 48) = sub_1D2878558();
  v6 = sub_1D28784F8();

  return MEMORY[0x1EEE6DFA0](sub_1D264AD00, v6, v5);
}

uint64_t sub_1D264AD00()
{

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_1D2645728();
    sub_1D28719C8();
  }

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D264ADD0()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 16);

  sub_1D22729C0(v0 + 80);
  v1 = OBJC_IVAR____TtC23ImagePlaygroundInternal20StylePickerViewModel__defaultStyle;
  v2 = sub_1D2872008();
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);

  v3(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal20StylePickerViewModel__selectedItem, v2);
  v3(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal20StylePickerViewModel__previousStyle, v2);
  sub_1D22BD238(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal20StylePickerViewModel__externalStyleToSwitchAfterOnboarding, &qword_1EC6D9A30);
  v4 = OBJC_IVAR____TtC23ImagePlaygroundInternal20StylePickerViewModel___observationRegistrar;
  v5 = sub_1D2871A28();
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  return v0;
}

uint64_t sub_1D264AF14()
{
  sub_1D264ADD0();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for StylePickerViewModel()
{
  result = qword_1ED8A1620;
  if (!qword_1ED8A1620)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D264AFC0()
{
  sub_1D2872008();
  if (v0 <= 0x3F)
  {
    sub_1D264B11C();
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

void sub_1D264B11C()
{
  if (!qword_1ED8A6BF0)
  {
    sub_1D2872008();
    v0 = sub_1D2878F18();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED8A6BF0);
    }
  }
}

uint64_t sub_1D264B174()
{
  v1 = v0;
  v2 = sub_1D2872008();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v48 = v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v49 = v45 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9A30);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v47 = v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v45 - v10;
  v12 = *(*(v0 + 56) + 32);
  v13 = *(v12 + 16);
  v50 = v3;
  if (v13)
  {
    v46 = v1;
    v14 = v3;
    v15 = v12 + 32;
    v16 = (v14 + 56);
    result = sub_1D2870F68();
    v18 = 0;
    while (v18 < *(v12 + 16))
    {
      sub_1D22D7044(v15, &v56);
      sub_1D22D7044(&v56, &v53);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9A10);
      v19 = v2;
      if (swift_dynamicCast())
      {
        (*v16)(v11, 0, 1, v2);
        sub_1D22BD238(v11, &qword_1EC6D9A30);

        sub_1D22D79FC(&v56, &v53);
        sub_1D22D79FC(&v53, &v56);
        v1 = v46;
        goto LABEL_10;
      }

      ++v18;
      (*v16)(v11, 1, 1, v2);
      sub_1D22BD238(v11, &qword_1EC6D9A30);
      result = __swift_destroy_boxed_opaque_existential_0(&v56);
      v15 += 40;
      if (v13 == v18)
      {

        v1 = v46;
        v3 = v50;
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_7:
    v55 = 0;
    v53 = 0u;
    v54 = 0u;
    v19 = v2;
    v57 = v2;
    v58 = sub_1D264BDB4(&qword_1ED8A6C20, MEMORY[0x1E696E310]);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v56);
    swift_getKeyPath();
    v52 = v1;
    sub_1D264BDB4(qword_1EC6D8488, type metadata accessor for StylePickerViewModel);
    sub_1D28719E8();

    v21 = OBJC_IVAR____TtC23ImagePlaygroundInternal20StylePickerViewModel__defaultStyle;
    swift_beginAccess();
    (*(v3 + 16))(boxed_opaque_existential_1, v1 + v21, v2);
    if (*(&v54 + 1))
    {
      sub_1D22BD238(&v53, &unk_1EC6E1D30);
    }

LABEL_10:
    v23 = v57;
    v22 = v58;
    __swift_project_boxed_opaque_existential_1(&v56, v57);
    v24 = (*(*(v22 + 8) + 16))(v23);
    v26 = v25;
    swift_getKeyPath();
    v27 = OBJC_IVAR____TtC23ImagePlaygroundInternal20StylePickerViewModel___observationRegistrar;
    *&v53 = v1;
    v28 = sub_1D264BDB4(qword_1EC6D8488, type metadata accessor for StylePickerViewModel);
    v46 = v27;
    v45[1] = v28;
    sub_1D28719E8();

    v29 = OBJC_IVAR____TtC23ImagePlaygroundInternal20StylePickerViewModel__selectedItem;
    swift_beginAccess();
    v30 = v50;
    v31 = *(v50 + 16);
    v32 = v1 + v29;
    v33 = v49;
    v31(v49, v32, v19);
    v34 = sub_1D2871F98();
    v36 = v35;
    (*(v30 + 8))(v33, v19);
    if (v24 == v34 && v26 == v36)
    {
    }

    else
    {
      v37 = sub_1D2879618();

      if ((v37 & 1) == 0)
      {
        sub_1D22D7044(&v56, &v53);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9A10);
        v38 = v47;
        v39 = swift_dynamicCast();
        v40 = v50;
        v41 = *(v50 + 56);
        if (v39)
        {
          v41(v38, 0, 1, v19);
          v42 = v48;
          (*(v40 + 32))(v48, v38, v19);
        }

        else
        {
          v41(v38, 1, 1, v19);
          swift_getKeyPath();
          v51 = v1;
          sub_1D28719E8();

          v43 = OBJC_IVAR____TtC23ImagePlaygroundInternal20StylePickerViewModel__defaultStyle;
          swift_beginAccess();
          v44 = v1 + v43;
          v42 = v48;
          v31(v48, v44, v19);
          if ((*(v40 + 48))(v38, 1, v19) != 1)
          {
            sub_1D22BD238(v38, &qword_1EC6D9A30);
          }
        }

        sub_1D26454B4(v42, &OBJC_IVAR____TtC23ImagePlaygroundInternal20StylePickerViewModel__selectedItem, &unk_1D289A930, sub_1D264BCE4);
      }
    }

    return __swift_destroy_boxed_opaque_existential_0(&v56);
  }

  return result;
}

uint64_t block_copy_helper_32(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1D2870F78();
}

uint64_t sub_1D264B8F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D2872008();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9A30);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v21 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6E1D60);
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v21 - v13;
  v15 = *(v12 + 56);
  sub_1D22BD1D0(a1, &v21 - v13, &qword_1EC6D9A30);
  sub_1D22BD1D0(a2, &v14[v15], &qword_1EC6D9A30);
  v16 = *(v5 + 48);
  if (v16(v14, 1, v4) != 1)
  {
    sub_1D22BD1D0(v14, v10, &qword_1EC6D9A30);
    if (v16(&v14[v15], 1, v4) != 1)
    {
      (*(v5 + 32))(v7, &v14[v15], v4);
      sub_1D264BDB4(&qword_1ED8A6C08, MEMORY[0x1E696E310]);
      v18 = sub_1D2877F98();
      v19 = *(v5 + 8);
      v19(v7, v4);
      v19(v10, v4);
      sub_1D22BD238(v14, &qword_1EC6D9A30);
      v17 = v18 ^ 1;
      return v17 & 1;
    }

    (*(v5 + 8))(v10, v4);
    goto LABEL_6;
  }

  if (v16(&v14[v15], 1, v4) != 1)
  {
LABEL_6:
    sub_1D22BD238(v14, &unk_1EC6E1D60);
    v17 = 1;
    return v17 & 1;
  }

  sub_1D22BD238(v14, &qword_1EC6D9A30);
  v17 = 0;
  return v17 & 1;
}

uint64_t sub_1D264BC10(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9A30);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D264BCA8()
{
  *(*(v0 + 16) + 72) = *(v0 + 24);
  sub_1D2870F78();
}

uint64_t sub_1D264BDB4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D264BE1C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D264BE84(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1D22BC8FC;

  return sub_1D264AC68(a1, v4, v5, v6);
}

uint64_t (*sub_1D264BF38())()
{
  swift_allocObject();
  swift_weakInit();
  return sub_1D264BE7C;
}

uint64_t sub_1D264BF90()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal20StylePickerViewModel__shouldShowStylesPopover);
  *(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal20StylePickerViewModel__shouldShowStylesPopover) = *(v0 + 24);
  return sub_1D264698C(v2);
}

uint64_t sub_1D264C000()
{
  v1 = *(sub_1D2872008() - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  return sub_1D264A7CC(v2, v3);
}

uint64_t sub_1D264C0C4(uint64_t a1, uint64_t a2, unsigned int *a3)
{
  v4 = sub_1D2871CA8();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 104))(v8, *a3, v4, v6);
  sub_1D2333D2C(v8);
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_1D264C1B0()
{
  result = sub_1D264C1D0();
  qword_1ED8B0198 = result;
  return result;
}

uint64_t sub_1D264C1D0()
{
  v20[1] = *MEMORY[0x1E69E9840];
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA1B8);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v19[-v1];
  v3 = sub_1D2873938();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v19[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_1D28716B8();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v19[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_1ED8A2F40 != -1)
  {
    swift_once();
  }

  v20[0] = 0;
  v11 = [qword_1ED8A2F48 requestVUIndexURLForSystemPhotosLibraryWithError_];
  v12 = v20[0];
  if (v11)
  {
    v13 = v11;
    sub_1D2871638();
    v14 = v12;

    (*(v4 + 104))(v6, *MEMORY[0x1E69E0608], v3);
    (*(v8 + 16))(v2, v10, v7);
    (*(v8 + 56))(v2, 0, 1, v7);
    sub_1D2873948();
    swift_allocObject();
    v17 = sub_1D2873928();
    (*(v8 + 8))(v10, v7);
    return v17;
  }

  else
  {
    v15 = v20[0];
    v16 = sub_1D28714B8();

    swift_willThrow();
    return 0;
  }
}

id sub_1D264C4F4()
{
  result = [objc_opt_self() service];
  qword_1ED8A2F48 = result;
  return result;
}

uint64_t sub_1D264C564@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v50 = a1;
  v3 = type metadata accessor for ImageGenerationPerson.SkinTone();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1D2873CB8();
  v47 = *(v6 - 8);
  v48 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1D28718F8();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v49 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1D2878048();
  MEMORY[0x1EEE9AC00](v11 - 8);
  v12 = sub_1D2873998();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1D28737A8();
  v17 = *(v16 - 8);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v20 = &v46 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v17 + 16))(v20, v2, v16, v18);
  v21 = (*(v17 + 88))(v20, v16);
  if (v21 == *MEMORY[0x1E69E0170])
  {
    if (qword_1EC6D8B58 != -1)
    {
      swift_once();
    }

    v22 = __swift_project_value_buffer(v12, qword_1EC6E3BA8);
    (*(v13 + 16))(v15, v22, v12);
    v23 = sub_1D2877108();
    sub_1D2877FE8();
    if (qword_1ED89E0E8 != -1)
    {
      swift_once();
    }

    v24 = qword_1ED8B0058;
    sub_1D28718C8();
    result = sub_1D28780E8();
    v27 = 0;
    v28 = 0xE000000000000000;
    goto LABEL_18;
  }

  if (v21 == *MEMORY[0x1E69E01A0] || v21 == *MEMORY[0x1E69E01B0])
  {
    if (qword_1EC6D8B68 != -1)
    {
      swift_once();
    }

    v30 = __swift_project_value_buffer(v12, qword_1EC6E3BD8);
    (*(v13 + 16))(v15, v30, v12);
    v23 = sub_1D2877108();
    sub_1D2877FE8();
    if (qword_1ED89E0E8 == -1)
    {
      goto LABEL_17;
    }

LABEL_42:
    swift_once();
LABEL_17:
    v31 = qword_1ED8B0058;
    sub_1D28718C8();
    v32 = v31;
    v27 = sub_1D28780E8();
    v28 = v33;
    sub_1D2877FE8();
    sub_1D28718C8();
    result = sub_1D28780E8();
LABEL_18:
    v34 = v50;
    goto LABEL_19;
  }

  if (v21 == *MEMORY[0x1E69E0188])
  {
    if (qword_1EC6D8B90 != -1)
    {
      swift_once();
    }

    v29 = __swift_project_value_buffer(v12, qword_1EC6E3C20);
    (*(v13 + 16))(v15, v29, v12);
    v23 = sub_1D2877108();
    sub_1D2877FE8();
    if (qword_1ED89E0E8 == -1)
    {
      goto LABEL_17;
    }

    goto LABEL_42;
  }

  if (v21 == *MEMORY[0x1E69E0178])
  {
    if (qword_1EC6D8B88 != -1)
    {
      swift_once();
    }

    v35 = __swift_project_value_buffer(v12, qword_1EC6E3C08);
    (*(v13 + 16))(v15, v35, v12);
    v23 = sub_1D2877108();
    sub_1D2877FE8();
    if (qword_1ED89E0E8 == -1)
    {
      goto LABEL_17;
    }

    goto LABEL_42;
  }

  if (v21 == *MEMORY[0x1E69E0190] || v21 == *MEMORY[0x1E69E0168])
  {
    if (qword_1EC6D8BA0 != -1)
    {
      swift_once();
    }

    v44 = __swift_project_value_buffer(v12, qword_1EC6E3C38);
    (*(v13 + 16))(v15, v44, v12);
    v23 = sub_1D2877108();
    sub_1D2877FE8();
    if (qword_1ED89E0E8 == -1)
    {
      goto LABEL_17;
    }

    goto LABEL_42;
  }

  if (v21 == *MEMORY[0x1E69E0180] || v21 == *MEMORY[0x1E69E01A8] || v21 == *MEMORY[0x1E69E0198])
  {
    if (qword_1EC6D8B78 != -1)
    {
      swift_once();
    }

    v45 = __swift_project_value_buffer(v12, qword_1EC6E3BF0);
    (*(v13 + 16))(v15, v45, v12);
    v23 = sub_1D2877108();
    sub_1D2877FE8();
    if (qword_1ED89E0E8 == -1)
    {
      goto LABEL_17;
    }

    goto LABEL_42;
  }

  sub_1D2872708();
  sub_1D264D23C(v2, v5);
  v36 = sub_1D2873CA8();
  v37 = sub_1D2878A18();
  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v51 = v49;
    *v38 = 136315138;
    v39 = _s23ImagePlaygroundInternal0A16GenerationPersonV8SkinToneV2idSSvg_0();
    v41 = v40;
    sub_1D24917E0(v5);
    v42 = sub_1D23D7C84(v39, v41, &v51);

    *(v38 + 4) = v42;
    _os_log_impl(&dword_1D226E000, v36, v37, "Unexpected ImageGenerationPerson.SkinTone: %s", v38, 0xCu);
    v43 = v49;
    __swift_destroy_boxed_opaque_existential_0(v49);
    MEMORY[0x1D38A3520](v43, -1, -1);
    MEMORY[0x1D38A3520](v38, -1, -1);
  }

  else
  {

    sub_1D24917E0(v5);
  }

  (*(v47 + 8))(v8, v48);
  v34 = v50;
  (*(v17 + 8))(v20, v16);
  v23 = 0;
  v27 = 0;
  v28 = 0;
  result = 0;
  v26 = 0;
LABEL_19:
  *v34 = v23;
  v34[1] = v27;
  v34[2] = v28;
  v34[3] = result;
  v34[4] = v26;
  return result;
}

uint64_t sub_1D264D23C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ImageGenerationPerson.SkinTone();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D264D2A0()
{
  v0 = sub_1D2873CB8();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1D28737A8();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 104))(v8, *MEMORY[0x1E69E0170], v4, v6);
  sub_1D2439848();
  sub_1D2878368();
  sub_1D2878368();
  if (*v15 == v17)
  {
    (*(v5 + 8))(v8, v4);

LABEL_4:
    sub_1D2872658();
    v10 = sub_1D2873CA8();
    v11 = sub_1D2878A28();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_1D226E000, v10, v11, "WARNING: bright yellow emoji color should never be showin in the person picker", v12, 2u);
      MEMORY[0x1D38A3520](v12, -1, -1);
    }

    (*(v1 + 8))(v3, v0);
    return 0;
  }

  v9 = sub_1D2879618();
  (*(v5 + 8))(v8, v4);

  if (v9)
  {
    goto LABEL_4;
  }

  sub_1D264C564(v15);
  if (!v15[0])
  {
    return 0;
  }

  v14 = v15[1];
  v16 = v15[0];
  sub_1D2620860(&v16);
  v17 = *&v15[3];
  sub_1D22BD018(&v17);
  return v14;
}

uint64_t sub_1D264D5B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>)
{
  *a2 = sub_1D2875918();
  *(a2 + 8) = 0x4000000000000000;
  *(a2 + 16) = 0;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF690);
  sub_1D264D7A4(a1, a2 + *(v8 + 44), a3, a4);
  v9 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF698) + 36));
  v10 = *(sub_1D2875188() + 20);
  v11 = *MEMORY[0x1E697F468];
  v12 = sub_1D2875868();
  (*(*(v12 - 8) + 104))(v9 + v10, v11, v12);
  *v9 = a4;
  v9[1] = a4;
  *(v9 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC410) + 36)) = 256;
  v13 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF6A0) + 36);
  *v13 = 0x3FF0000000000000;
  *(v13 + 8) = 0;
  v14 = swift_allocObject();
  *(v14 + 16) = a3;
  *(v14 + 24) = a4;
  *(v14 + 32) = a1;
  v15 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF6A8) + 36));
  *v15 = sub_1D264E370;
  v15[1] = v14;
  v15[2] = 0;
  v15[3] = 0;
  v16 = swift_allocObject();
  *(v16 + 16) = a3;
  *(v16 + 24) = a4;
  *(v16 + 32) = a1;
  v17 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF6B0) + 36));
  *v17 = 0;
  v17[1] = 0;
  v17[2] = sub_1D264E37C;
  v17[3] = v16;
  return swift_retain_n();
}

uint64_t sub_1D264D7A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>)
{
  v28 = a2;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF6C0) - 8;
  MEMORY[0x1EEE9AC00](v26);
  v27 = v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v24 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF6C8);
  v12 = v11 - 8;
  MEMORY[0x1EEE9AC00](v11);
  v25 = v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = v24 - v15;
  *v16 = sub_1D28756A8();
  *(v16 + 1) = 0x4000000000000000;
  v16[16] = 0;
  v24[2] = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF6D0) + 44);
  v29 = *(a1 + OBJC_IVAR____TtC23ImagePlaygroundInternal19AppearanceViewModel_firstRowAppearanceCellModels);
  v17 = swift_allocObject();
  *(v17 + 16) = a3;
  *(v17 + 24) = a4;
  *(v17 + 32) = a1;
  sub_1D2870F68();
  sub_1D2870F78();
  v24[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF6D8);
  v24[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF6E0);
  sub_1D22BB9D8(&qword_1EC6DF6E8, &qword_1EC6DF6D8);
  sub_1D264E584(&qword_1EC6DF6F0, &qword_1EC6DF6E0, &unk_1D289ACD8, sub_1D264E3C0);
  sub_1D264E530(&qword_1EC6DF738, type metadata accessor for AppearanceCellViewModel);
  sub_1D2877588();
  *&v16[*(v12 + 44)] = 0x4000000000000000;
  *v10 = sub_1D28756A8();
  *(v10 + 1) = 0x4000000000000000;
  v10[16] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF740);
  v29 = *(a1 + OBJC_IVAR____TtC23ImagePlaygroundInternal19AppearanceViewModel_secondRowAppearanceCellModels);
  v18 = swift_allocObject();
  *(v18 + 16) = a3;
  *(v18 + 24) = a4;
  *(v18 + 32) = a1;
  sub_1D2870F78();
  sub_1D2870F68();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF748);
  sub_1D264E584(&qword_1EC6DF750, &qword_1EC6DF748, &unk_1D289AD08, sub_1D264E634);
  sub_1D2877588();
  v19 = v25;
  *&v10[*(v26 + 44)] = 0x3FF0000000000000;
  sub_1D22BD1D0(v16, v19, &qword_1EC6DF6C8);
  v20 = v27;
  sub_1D22BD1D0(v10, v27, &qword_1EC6DF6C0);
  v21 = v28;
  sub_1D22BD1D0(v19, v28, &qword_1EC6DF6C8);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF760);
  sub_1D22BD1D0(v20, v21 + *(v22 + 48), &qword_1EC6DF6C0);
  sub_1D22BD238(v10, &qword_1EC6DF6C0);
  sub_1D22BD238(v16, &qword_1EC6DF6C8);
  sub_1D22BD238(v20, &qword_1EC6DF6C0);
  return sub_1D22BD238(v19, &qword_1EC6DF6C8);
}

uint64_t sub_1D264DC5C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v5 = *a1;
  v6 = sub_1D2877098();
  v7 = sub_1D2877848();
  v9 = v8;
  v10 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF6E0) + 36));
  v11 = *(sub_1D2875188() + 20);
  v12 = *MEMORY[0x1E697F468];
  v13 = sub_1D2875868();
  (*(*(v13 - 8) + 104))(v10 + v11, v12, v13);
  *v10 = a3;
  v10[1] = a3;
  *(v10 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC410) + 36)) = 256;
  *a2 = v6;
  *(a2 + 8) = v5;
  *(a2 + 16) = v7;
  *(a2 + 24) = v9;
  *(a2 + 32) = 0;

  return sub_1D2870F78();
}

uint64_t sub_1D264DD6C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>, double a3@<D0>)
{
  v5 = *a1;
  v6 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF748) + 36));
  v7 = *(sub_1D2875188() + 20);
  v8 = *MEMORY[0x1E697F468];
  v9 = sub_1D2875868();
  (*(*(v9 - 8) + 104))(v6 + v7, v8, v9);
  *v6 = a3;
  v6[1] = a3;
  *(v6 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC410) + 36)) = 256;
  *a2 = v5;

  return sub_1D2870F78();
}

uint64_t sub_1D264DE58(uint64_t a1, double a2, double a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  *(v6 + 32) = a1;
  swift_getKeyPath();
  sub_1D264E530(&qword_1EC6D8640, type metadata accessor for AppearanceViewModel);
  sub_1D2870F78();
  sub_1D28719D8();
}

uint64_t sub_1D264DF80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>)
{
  v8 = sub_1D2873CB8();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v26[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D2877848();
  sub_1D28748C8();
  sub_1D2870F78();
  v12 = sub_1D2877088();
  v13 = sub_1D2876338();
  *v26 = a3;
  *&v26[1] = a4;
  v26[2] = a1;
  v26[9] = v12;
  v27 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF6B8);
  swift_allocObject();
  MEMORY[0x1D389D4C0](v26);
  sub_1D2874A18();
  v14 = sub_1D28749F8();
  if (v14)
  {
    v15 = v14;
    v16 = type metadata accessor for PlaygroundImage();
    v17 = (a2 + v16[9]);
    *v17 = 0u;
    v17[1] = 0u;
    *(a2 + v16[10]) = xmmword_1D28809A0;
    v18 = v16[11];
    v19 = sub_1D2873AA8();
    (*(*(v19 - 8) + 56))(a2 + v18, 1, 1, v19);
    *a2 = v15;
    *(a2 + 8) = 0;
    *(a2 + 24) = 1;
    *(a2 + 16) = 0;
    *(a2 + 32) = 0;
    *(a2 + 40) = 0;
    *(a2 + v16[12]) = 0;
    sub_1D2871808();

    return (*(*(v16 - 1) + 56))(a2, 0, 1, v16);
  }

  else
  {
    sub_1D2872708();
    v21 = sub_1D2873CA8();
    v22 = sub_1D2878A18();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_1D226E000, v21, v22, "Can not render appearance", v23, 2u);
      MEMORY[0x1D38A3520](v23, -1, -1);
    }

    (*(v9 + 8))(v11, v8);
    v24 = type metadata accessor for PlaygroundImage();
    return (*(*(v24 - 8) + 56))(a2, 1, 1, v24);
  }
}

uint64_t sub_1D264E298()
{
  swift_getKeyPath();
  sub_1D264E530(&qword_1EC6D8640, type metadata accessor for AppearanceViewModel);
  sub_1D28719D8();
}

unint64_t sub_1D264E3C0()
{
  result = qword_1EC6DF6F8;
  if (!qword_1EC6DF6F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DF700);
    sub_1D264E478();
    sub_1D22BB9D8(&qword_1EC6DF728, &qword_1EC6DF730);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DF6F8);
  }

  return result;
}

unint64_t sub_1D264E478()
{
  result = qword_1EC6DF708;
  if (!qword_1EC6DF708)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DF710);
    sub_1D22BB9D8(&qword_1EC6DF718, &qword_1EC6DF720);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DF708);
  }

  return result;
}

uint64_t sub_1D264E530(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D264E584(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    sub_1D22BB9D8(&qword_1EC6DC408, &qword_1EC6DC410);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D264E634()
{
  result = qword_1EC6DF758;
  if (!qword_1EC6DF758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DF758);
  }

  return result;
}

unint64_t sub_1D264E698()
{
  result = qword_1EC6DF768;
  if (!qword_1EC6DF768)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DF6B0);
    sub_1D264E724();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DF768);
  }

  return result;
}

unint64_t sub_1D264E724()
{
  result = qword_1EC6DF770;
  if (!qword_1EC6DF770)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DF6A8);
    sub_1D264E7B0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DF770);
  }

  return result;
}

unint64_t sub_1D264E7B0()
{
  result = qword_1EC6DF778;
  if (!qword_1EC6DF778)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DF6A0);
    sub_1D264E83C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DF778);
  }

  return result;
}

unint64_t sub_1D264E83C()
{
  result = qword_1EC6DF780;
  if (!qword_1EC6DF780)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DF698);
    sub_1D22BB9D8(&qword_1EC6DF788, &qword_1EC6DF790);
    sub_1D22BB9D8(&qword_1EC6DC408, &qword_1EC6DC410);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DF780);
  }

  return result;
}

uint64_t PhotosPerson.id.getter()
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

  return v1;
}

void PhotosPerson.hash(into:)(uint64_t a1)
{
  v3 = v1[4];
  v4 = v1[6];
  v5 = v1[7];
  if (v1[1])
  {
    sub_1D28797F8();
    sub_1D2877F38();
  }

  else
  {
    sub_1D28797F8();
  }

  sub_1D2877F38();
  if (!v3)
  {
    sub_1D28797F8();
    if (v5)
    {
      goto LABEL_7;
    }

LABEL_11:
    sub_1D28797F8();
    return;
  }

  sub_1D28797F8();
  sub_1D2870F68();
  sub_1D2870F68();
  sub_1D24FE258(a1, v3);
  if (!v4)
  {
    sub_1D28797F8();
    sub_1D238D058(v3);
    if (v5)
    {
      goto LABEL_7;
    }

    goto LABEL_11;
  }

  sub_1D28797F8();
  sub_1D2877F38();
  sub_1D238D058(v3);
  if (!v5)
  {
    goto LABEL_11;
  }

LABEL_7:
  sub_1D28797F8();
  v6 = v5;
  sub_1D2878D88();
}

uint64_t PhotosPerson.hashValue.getter()
{
  sub_1D28797D8();
  PhotosPerson.hash(into:)(v1);
  return sub_1D2879828();
}

uint64_t sub_1D264EBB0@<X0>(uint64_t *a1@<X8>)
{
  result = PhotosPerson.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1D264EBDC()
{
  sub_1D28797D8();
  PhotosPerson.hash(into:)(v1);
  return sub_1D2879828();
}

uint64_t sub_1D264EC20()
{
  sub_1D28797D8();
  PhotosPerson.hash(into:)(v1);
  return sub_1D2879828();
}

BOOL _s23ImagePlaygroundInternal12PhotosPersonV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v3 = a1[1];
  v4 = a1[2];
  v6 = a1[3];
  v5 = a1[4];
  v8 = a1[5];
  v7 = a1[6];
  v9 = a2[1];
  v10 = a2[2];
  v12 = a2[3];
  v11 = a2[4];
  v13 = a2[5];
  v14 = a2[6];
  if (v3)
  {
    if (!v9)
    {
      return 0;
    }

    v22 = a2[7];
    v23 = a1[7];
    if ((*a1 != *a2 || v3 != v9) && (sub_1D2879618() & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    v22 = a2[7];
    v23 = a1[7];
    if (v9)
    {
      return 0;
    }
  }

  if ((v4 != v10 || v6 != v12) && (sub_1D2879618() & 1) == 0)
  {
    return 0;
  }

  if (!v5)
  {
    sub_1D2396784(0);
    if (!v11)
    {
      sub_1D2396784(0);
      v5 = 0;
LABEL_32:
      sub_1D238D058(v5);
      goto LABEL_33;
    }

    sub_1D2396784(v11);
    goto LABEL_22;
  }

  if (!v11)
  {
    sub_1D2396784(v5);
    sub_1D2396784(0);
    sub_1D2396784(v5);

LABEL_22:
    sub_1D238D058(v5);
    v16 = v11;
LABEL_26:
    sub_1D238D058(v16);
    return 0;
  }

  sub_1D2396784(v5);
  sub_1D2396784(v11);
  sub_1D2396784(v5);
  if ((sub_1D25559F4(v11, v5) & 1) == 0)
  {
    goto LABEL_25;
  }

  if (!v7)
  {
    if (!v14)
    {
      v15 = v11;
      goto LABEL_31;
    }

    goto LABEL_25;
  }

  if (!v14)
  {
LABEL_25:
    sub_1D238D058(v11);

    v16 = v5;
    goto LABEL_26;
  }

  if (v8 == v13 && v7 == v14)
  {
    v15 = v11;
LABEL_31:
    sub_1D238D058(v15);

    goto LABEL_32;
  }

  v18 = sub_1D2879618();
  sub_1D238D058(v11);

  sub_1D238D058(v5);
  if ((v18 & 1) == 0)
  {
    return 0;
  }

LABEL_33:
  if (v23)
  {
    if (v22)
    {
      sub_1D2564F80();
      v19 = v22;
      v20 = v23;
      v21 = sub_1D2878D78();

      if (v21)
      {
        return 1;
      }
    }

    return 0;
  }

  return !v22;
}

unint64_t sub_1D264EF50()
{
  result = qword_1EC6D8948;
  if (!qword_1EC6D8948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6D8948);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_23ImagePlaygroundInternal16PersonAttributesVSg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1D264EFBC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D264F004(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1D264F064()
{
  v1 = v0;
  v2 = type metadata accessor for ImageGenerationPerson.SkinTone();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6E33C0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v17 - v7;
  swift_getKeyPath();
  v20 = v0;
  sub_1D2653E64(&qword_1EC6D8360, type metadata accessor for CharacterEditingViewModel);
  sub_1D28719E8();

  v9 = *(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal25CharacterEditingViewModel__selectedAppearance);
  if (v9 == 3)
  {
    v10 = 0xEB00000000646569;
    v17 = 0x6669636570736E75;
  }

  else if (v9 == 4)
  {
    v17 = 0;
    v10 = 0xE000000000000000;
  }

  else
  {
    v17 = sub_1D2873768();
    v10 = v11;
  }

  swift_getKeyPath();
  v20 = v0;
  sub_1D28719E8();

  v12 = OBJC_IVAR____TtC23ImagePlaygroundInternal25CharacterEditingViewModel__selectedSkinTone;
  swift_beginAccess();
  sub_1D22BD1D0(v1 + v12, v8, &unk_1EC6E33C0);
  if ((*(v3 + 48))(v8, 1, v2))
  {
    sub_1D22BD238(v8, &unk_1EC6E33C0);
    v13 = 0;
    v14 = 0xE000000000000000;
  }

  else
  {
    sub_1D2654910(v8, v5, type metadata accessor for ImageGenerationPerson.SkinTone);
    sub_1D22BD238(v8, &unk_1EC6E33C0);
    v13 = _s23ImagePlaygroundInternal0A16GenerationPersonV8SkinToneV2idSSvg_0();
    v14 = v15;
    sub_1D2653778(v5, type metadata accessor for ImageGenerationPerson.SkinTone);
  }

  v18 = v17;
  v19 = v10;
  sub_1D2870F68();
  MEMORY[0x1D38A0C50](v13, v14);

  return v18;
}

uint64_t sub_1D264F37C(char a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6E33C0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v11 - v4;
  if ((a1 & 1) == 0)
  {
    sub_1D26512F8();
  }

  if (*(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal25CharacterEditingViewModel__selectedAppearance) != 4)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    *(&v11 - 2) = v1;
    *(&v11 - 8) = 4;
    v12 = v1;
    sub_1D2653E64(&qword_1EC6D8360, type metadata accessor for CharacterEditingViewModel);
    sub_1D28719D8();
  }

  v7 = type metadata accessor for ImageGenerationPerson.SkinTone();
  (*(*(v7 - 8) + 56))(v5, 1, 1, v7);
  sub_1D265053C(v5);
  swift_getKeyPath();
  v12 = v1;
  sub_1D2653E64(&qword_1EC6D8360, type metadata accessor for CharacterEditingViewModel);
  sub_1D28719E8();

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v9 = *(v1 + 24);
    ObjectType = swift_getObjectType();
    (*(v9 + 8))(v1, a1 & 1, ObjectType, v9);
    return swift_unknownObjectRelease();
  }

  return result;
}

BOOL sub_1D264F5EC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6E33C0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v7 - v2;
  swift_getKeyPath();
  v8 = v0;
  sub_1D2653E64(&qword_1EC6D8360, type metadata accessor for CharacterEditingViewModel);
  sub_1D28719E8();

  if (*(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal25CharacterEditingViewModel__selectedAppearance) == 4)
  {
    return 0;
  }

  swift_getKeyPath();
  v8 = v0;
  sub_1D28719E8();

  v4 = OBJC_IVAR____TtC23ImagePlaygroundInternal25CharacterEditingViewModel__selectedSkinTone;
  swift_beginAccess();
  sub_1D22BD1D0(v0 + v4, v3, &unk_1EC6E33C0);
  v5 = type metadata accessor for ImageGenerationPerson.SkinTone();
  LODWORD(v4) = (*(*(v5 - 8) + 48))(v3, 1, v5);
  sub_1D22BD238(v3, &unk_1EC6E33C0);
  if (v4 == 1)
  {
    return 0;
  }

  swift_getKeyPath();
  v7 = v0;
  sub_1D28719E8();

  return *(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal25CharacterEditingViewModel__emojiString + 8) != 0;
}

uint64_t sub_1D264F814(char a1)
{
  v2 = OBJC_IVAR____TtC23ImagePlaygroundInternal25CharacterEditingViewModel__shouldShowCreationTips;
  if (*(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal25CharacterEditingViewModel__shouldShowCreationTips) == (a1 & 1))
  {
    *(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal25CharacterEditingViewModel__shouldShowCreationTips) = a1 & 1;
    swift_getKeyPath();
    sub_1D2653E64(&qword_1EC6D8360, type metadata accessor for CharacterEditingViewModel);
    sub_1D28719E8();

    if (*(v1 + v2) == 1)
    {
      swift_getKeyPath();
      sub_1D28719E8();

      result = swift_unknownObjectWeakLoadStrong();
      if (result)
      {
        v5 = *(v1 + 24);
        ObjectType = swift_getObjectType();
        (*(v5 + 24))(v1, ObjectType, v5);
        return swift_unknownObjectRelease();
      }
    }
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D2653E64(&qword_1EC6D8360, type metadata accessor for CharacterEditingViewModel);
    sub_1D28719D8();
  }

  return result;
}

uint64_t sub_1D264FA1C@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  sub_1D2653E64(&qword_1EC6D8360, type metadata accessor for CharacterEditingViewModel);
  sub_1D28719E8();

  *a1 = *(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal25CharacterEditingViewModel__selectedAppearance);
  return result;
}

uint64_t sub_1D264FACC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D2653E64(&qword_1EC6D8360, type metadata accessor for CharacterEditingViewModel);
  sub_1D28719E8();

  *a2 = *(v3 + OBJC_IVAR____TtC23ImagePlaygroundInternal25CharacterEditingViewModel__selectedAppearance);
  return result;
}

uint64_t sub_1D264FBB4(char *a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR____TtC23ImagePlaygroundInternal25CharacterEditingViewModel__selectedAppearance;
  result = sub_1D2653128(*(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal25CharacterEditingViewModel__selectedAppearance), *a1);
  if (result)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D2653E64(&qword_1EC6D8360, type metadata accessor for CharacterEditingViewModel);
    sub_1D28719D8();
  }

  else
  {
    *(v1 + v3) = v2;
  }

  return result;
}

uint64_t sub_1D264FCD0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6E33C0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v15[-v1];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF3F8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v15[-v4];
  v6 = type metadata accessor for CharacterRecipe();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v15[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1D2650FD0(v5);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    return sub_1D22BD238(v5, &qword_1EC6DF3F8);
  }

  sub_1D2653710(v5, v9, type metadata accessor for CharacterRecipe);
  sub_1D23C75E0();
  v16 = *v9;
  sub_1D2654910(&v9[*(v6 + 20)], v2, type metadata accessor for ImageGenerationPerson.SkinTone);
  v11 = type metadata accessor for ImageGenerationPerson.SkinTone();
  (*(*(v11 - 8) + 56))(v2, 0, 1, v11);
  v12 = sub_1D2437618(&v16, v2);
  v14 = v13;

  sub_1D22BD238(v2, &unk_1EC6E33C0);
  sub_1D2650750(v12, v14);
  sub_1D26512F8();
  return sub_1D2653778(v9, type metadata accessor for CharacterRecipe);
}

uint64_t sub_1D264FF58@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_1D2653E64(&qword_1EC6D8360, type metadata accessor for CharacterEditingViewModel);
  sub_1D28719E8();

  v3 = OBJC_IVAR____TtC23ImagePlaygroundInternal25CharacterEditingViewModel__selectedSkinTone;
  swift_beginAccess();
  return sub_1D22BD1D0(v5 + v3, a1, &unk_1EC6E33C0);
}

uint64_t sub_1D2650030()
{
  v1 = sub_1D28737A8();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ImageGenerationPerson.SkinTone();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v29 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v23 - v9;
  v11 = *(v0 + 32);
  v12 = sub_1D23C75E0()[3];
  sub_1D2870F68();

  if (v11)
  {
    return v12;
  }

  v24 = v12;
  v28 = *(v12 + 16);
  if (v28)
  {
    v14 = 0;
    v27 = *MEMORY[0x1E69E0170];
    v25 = (v2 + 8);
    v26 = (v2 + 104);
    v15 = MEMORY[0x1E69E7CC0];
    v23 = v6;
    v16 = v24;
    while (v14 < *(v16 + 16))
    {
      v17 = (*(v6 + 80) + 32) & ~*(v6 + 80);
      v18 = *(v6 + 72);
      sub_1D2654910(v16 + v17 + v18 * v14, v10, type metadata accessor for ImageGenerationPerson.SkinTone);
      (*v26)(v4, v27, v1);
      sub_1D2653E64(&qword_1EC6DDC10, MEMORY[0x1E69E01B8]);
      v19 = sub_1D2877F98();
      (*v25)(v4, v1);
      if (v19)
      {
        result = sub_1D2653778(v10, type metadata accessor for ImageGenerationPerson.SkinTone);
      }

      else
      {
        sub_1D2653710(v10, v29, type metadata accessor for ImageGenerationPerson.SkinTone);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v30 = v15;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1D23D8A9C(0, *(v15 + 16) + 1, 1);
          v15 = v30;
        }

        v22 = *(v15 + 16);
        v21 = *(v15 + 24);
        if (v22 >= v21 >> 1)
        {
          sub_1D23D8A9C(v21 > 1, v22 + 1, 1);
          v15 = v30;
        }

        *(v15 + 16) = v22 + 1;
        result = sub_1D2653710(v29, v15 + v17 + v22 * v18, type metadata accessor for ImageGenerationPerson.SkinTone);
        v6 = v23;
        v16 = v24;
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

    return v15;
  }

  return result;
}

uint64_t sub_1D26503B8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D2653E64(&qword_1EC6D8360, type metadata accessor for CharacterEditingViewModel);
  sub_1D28719E8();

  v4 = OBJC_IVAR____TtC23ImagePlaygroundInternal25CharacterEditingViewModel__selectedSkinTone;
  swift_beginAccess();
  return sub_1D22BD1D0(v3 + v4, a2, &unk_1EC6E33C0);
}

uint64_t sub_1D2650490(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6E33C0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v6 - v3;
  sub_1D22BD1D0(a1, &v6 - v3, &unk_1EC6E33C0);
  return sub_1D265053C(v4);
}

uint64_t sub_1D265053C(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6E33C0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v10 - v4;
  v6 = OBJC_IVAR____TtC23ImagePlaygroundInternal25CharacterEditingViewModel__selectedSkinTone;
  swift_beginAccess();
  sub_1D22BD1D0(v1 + v6, v5, &unk_1EC6E33C0);
  v7 = sub_1D2653218(v5, a1);
  sub_1D22BD238(v5, &unk_1EC6E33C0);
  if (v7)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v10[-2] = v1;
    v10[-1] = a1;
    v10[2] = v1;
    sub_1D2653E64(&qword_1EC6D8360, type metadata accessor for CharacterEditingViewModel);
    sub_1D28719D8();
  }

  else
  {
    sub_1D22BD1D0(a1, v5, &unk_1EC6E33C0);
    swift_beginAccess();
    sub_1D262963C(v5, v1 + v6);
    swift_endAccess();
    sub_1D2650AE8();
    sub_1D22BD238(v5, &unk_1EC6E33C0);
  }

  return sub_1D22BD238(a1, &unk_1EC6E33C0);
}

uint64_t sub_1D2650750(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC23ImagePlaygroundInternal25CharacterEditingViewModel__emojiString);
  v6 = *(v2 + OBJC_IVAR____TtC23ImagePlaygroundInternal25CharacterEditingViewModel__emojiString + 8);
  if (v6)
  {
    if (a2)
    {
      v7 = *v5 == a1 && v6 == a2;
      if (v7 || (sub_1D2879618() & 1) != 0)
      {
        goto LABEL_8;
      }
    }

LABEL_12:
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D2653E64(&qword_1EC6D8360, type metadata accessor for CharacterEditingViewModel);
    sub_1D28719D8();
  }

  if (a2)
  {
    goto LABEL_12;
  }

LABEL_8:
  *v5 = a1;
  v5[1] = a2;
}

uint64_t sub_1D26508CC()
{
  swift_getKeyPath();
  sub_1D2653E64(&qword_1EC6D8360, type metadata accessor for CharacterEditingViewModel);
  sub_1D28719E8();

  return swift_unknownObjectWeakLoadStrong();
}

uint64_t sub_1D2650974()
{
  swift_getKeyPath();
  sub_1D2653E64(&qword_1EC6D8360, type metadata accessor for CharacterEditingViewModel);
  sub_1D28719E8();

  v1 = *(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal25CharacterEditingViewModel__emojiString);
  sub_1D2870F68();
  return v1;
}

uint64_t sub_1D2650A30@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D2653E64(&qword_1EC6D8360, type metadata accessor for CharacterEditingViewModel);
  sub_1D28719E8();

  v4 = *(v3 + OBJC_IVAR____TtC23ImagePlaygroundInternal25CharacterEditingViewModel__emojiString + 8);
  *a2 = *(v3 + OBJC_IVAR____TtC23ImagePlaygroundInternal25CharacterEditingViewModel__emojiString);
  a2[1] = v4;
  return sub_1D2870F68();
}

uint64_t sub_1D2650AE8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6E33C0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v6 - v2;
  swift_getKeyPath();
  v7 = v0;
  sub_1D2653E64(&qword_1EC6D8360, type metadata accessor for CharacterEditingViewModel);
  sub_1D28719E8();

  v4 = OBJC_IVAR____TtC23ImagePlaygroundInternal25CharacterEditingViewModel__selectedSkinTone;
  swift_beginAccess();
  sub_1D22BD1D0(v0 + v4, v3, &unk_1EC6E33C0);
  sub_1D286CBC4(v3);
  swift_getKeyPath();
  v6 = v0;
  sub_1D28719E8();

  sub_1D22BD1D0(v0 + v4, v3, &unk_1EC6E33C0);
  sub_1D286CBC4(v3);
  swift_getKeyPath();
  v6 = v0;
  sub_1D28719E8();

  sub_1D22BD1D0(v0 + v4, v3, &unk_1EC6E33C0);
  return sub_1D286CBC4(v3);
}

uint64_t sub_1D2650CFC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6E33C0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v9 - v5;
  sub_1D22BD1D0(a2, &v9 - v5, &unk_1EC6E33C0);
  v7 = OBJC_IVAR____TtC23ImagePlaygroundInternal25CharacterEditingViewModel__selectedSkinTone;
  swift_beginAccess();
  sub_1D262963C(v6, a1 + v7);
  swift_endAccess();
  sub_1D2650AE8();
  return sub_1D22BD238(v6, &unk_1EC6E33C0);
}

uint64_t sub_1D2650DF0()
{
  swift_getKeyPath();
  sub_1D2653E64(&qword_1EC6D8360, type metadata accessor for CharacterEditingViewModel);
  sub_1D28719E8();

  return *(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal25CharacterEditingViewModel__shouldShowCreationTips);
}

uint64_t sub_1D2650E98(uint64_t a1, char a2)
{
  v3 = OBJC_IVAR____TtC23ImagePlaygroundInternal25CharacterEditingViewModel__shouldShowCreationTips;
  *(a1 + OBJC_IVAR____TtC23ImagePlaygroundInternal25CharacterEditingViewModel__shouldShowCreationTips) = a2;
  swift_getKeyPath();
  sub_1D2653E64(&qword_1EC6D8360, type metadata accessor for CharacterEditingViewModel);
  sub_1D28719E8();

  if (*(a1 + v3) == 1)
  {
    swift_getKeyPath();
    sub_1D28719E8();

    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v5 = *(a1 + 24);
      ObjectType = swift_getObjectType();
      (*(v5 + 24))(a1, ObjectType, v5);
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_1D2650FD0@<X0>(_BYTE *a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6E33C0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v18 - v5;
  v20 = type metadata accessor for ImageGenerationPerson.SkinTone();
  v7 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v19 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v18 - v10;
  swift_getKeyPath();
  v21 = v1;
  sub_1D2653E64(&qword_1EC6D8360, type metadata accessor for CharacterEditingViewModel);
  sub_1D28719E8();

  v12 = *(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal25CharacterEditingViewModel__selectedAppearance);
  if (v12 == 4)
  {
    goto LABEL_4;
  }

  swift_getKeyPath();
  v21 = v1;
  sub_1D28719E8();

  v13 = OBJC_IVAR____TtC23ImagePlaygroundInternal25CharacterEditingViewModel__selectedSkinTone;
  swift_beginAccess();
  sub_1D22BD1D0(v2 + v13, v6, &unk_1EC6E33C0);
  if ((*(v7 + 48))(v6, 1, v20) == 1)
  {
    sub_1D22BD238(v6, &unk_1EC6E33C0);
LABEL_4:
    v14 = type metadata accessor for CharacterRecipe();
    return (*(*(v14 - 8) + 56))(a1, 1, 1, v14);
  }

  sub_1D2653710(v6, v11, type metadata accessor for ImageGenerationPerson.SkinTone);
  v16 = v19;
  sub_1D2653710(v11, v19, type metadata accessor for ImageGenerationPerson.SkinTone);
  *a1 = v12;
  v17 = type metadata accessor for CharacterRecipe();
  sub_1D2653710(v16, &a1[*(v17 + 20)], type metadata accessor for ImageGenerationPerson.SkinTone);
  return (*(*(v17 - 8) + 56))(a1, 0, 1, v17);
}

uint64_t sub_1D26512F8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA120);
  v25 = *(v1 - 8);
  v26 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v23 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DDDA0);
  v24 = *(v4 - 8);
  v5 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v23 - v8;
  v10 = type metadata accessor for CharacterAsset();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v23 - v15;
  sub_1D2651AEC(v9);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    return sub_1D22BD238(v9, &unk_1EC6DDDA0);
  }

  sub_1D2653710(v9, v16, type metadata accessor for CharacterAsset);
  v18 = OBJC_IVAR____TtC23ImagePlaygroundInternal25CharacterEditingViewModel_originalCharacter;
  v23 = *(v0 + 48);
  sub_1D2654910(v16, v13, type metadata accessor for CharacterAsset);
  sub_1D22BD1D0(v0 + v18, v6, &unk_1EC6DDDA0);
  v19 = (*(v11 + 80) + 24) & ~*(v11 + 80);
  v20 = (v12 + *(v24 + 80) + v19) & ~*(v24 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = v0;
  sub_1D2653710(v13, v21 + v19, type metadata accessor for CharacterAsset);
  sub_1D22EC9BC(v6, v21 + v20, &unk_1EC6DDDA0);
  v22 = swift_allocObject();
  *(v22 + 16) = &unk_1D289B040;
  *(v22 + 24) = v21;
  v27 = &unk_1D2883570;
  v28 = v22;
  sub_1D2870F78();
  sub_1D2870F78();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DDE60);
  sub_1D2878638();

  (*(v25 + 8))(v3, v26);
  return sub_1D2653778(v16, type metadata accessor for CharacterAsset);
}

uint64_t sub_1D26516C4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA120);
  v28 = *(v1 - 8);
  v29 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v27 = v25 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DDDA0);
  v26 = *(v3 - 8);
  v4 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v25 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = v25 - v10;
  v12 = type metadata accessor for CharacterAsset();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = v25 - v17;
  sub_1D22BD1D0(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal25CharacterEditingViewModel_originalCharacter, v11, &unk_1EC6DDDA0);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    return sub_1D22BD238(v11, &unk_1EC6DDDA0);
  }

  sub_1D2653710(v11, v18, type metadata accessor for CharacterAsset);
  sub_1D2651AEC(v8);
  v25[1] = *(v0 + 48);
  sub_1D2654910(v18, v15, type metadata accessor for CharacterAsset);
  sub_1D22BD1D0(v8, v5, &unk_1EC6DDDA0);
  v20 = (*(v13 + 80) + 24) & ~*(v13 + 80);
  v21 = (v14 + *(v26 + 80) + v20) & ~*(v26 + 80);
  v22 = swift_allocObject();
  *(v22 + 16) = v0;
  sub_1D2653710(v15, v22 + v20, type metadata accessor for CharacterAsset);
  sub_1D22EC9BC(v5, v22 + v21, &unk_1EC6DDDA0);
  v23 = swift_allocObject();
  *(v23 + 16) = &unk_1D289B088;
  *(v23 + 24) = v22;
  v30 = &unk_1D289B090;
  v31 = v23;
  sub_1D2870F78();
  sub_1D2870F78();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DDE60);
  v24 = v27;
  sub_1D2878638();

  (*(v28 + 8))(v24, v29);
  sub_1D22BD238(v8, &unk_1EC6DDDA0);
  return sub_1D2653778(v18, type metadata accessor for CharacterAsset);
}

uint64_t sub_1D2651AEC@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE5A0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v57 = &v51 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v58 = &v51 - v6;
  MEMORY[0x1EEE9AC00](v7);
  v56 = &v51 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v51 - v10;
  v12 = type metadata accessor for PlaygroundImage();
  v59 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v55 = &v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v51 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF3F8);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v51 - v18;
  v20 = type metadata accessor for CharacterRecipe();
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v54 = &v51 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v51 - v24;
  if (!sub_1D264F5EC())
  {
    goto LABEL_4;
  }

  v53 = a1;
  sub_1D2650FD0(v19);
  if ((*(v21 + 48))(v19, 1, v20) != 1)
  {
    sub_1D2653710(v19, v25, type metadata accessor for CharacterRecipe);
    swift_getKeyPath();
    v60 = v1;
    sub_1D2653E64(&qword_1EC6D8360, type metadata accessor for CharacterEditingViewModel);
    sub_1D28719E8();

    v30 = *(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal25CharacterEditingViewModel__emojiString + 8);
    if (!v30)
    {
      sub_1D2653778(v25, type metadata accessor for CharacterRecipe);
      goto LABEL_11;
    }

    v31 = *(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal25CharacterEditingViewModel__emojiString);
    type metadata accessor for EmojiImageRenderer();
    swift_initStackObject();
    sub_1D2870F68();
    sub_1D284CECC(v31, v30, v11);

    v32 = v59 + 48;
    v33 = *(v59 + 48);
    if (v33(v11, 1, v12) == 1)
    {
      sub_1D2653778(v25, type metadata accessor for CharacterRecipe);
      sub_1D22BD238(v11, &unk_1EC6DE5A0);
LABEL_11:
      v34 = v53;
LABEL_12:
      v26 = type metadata accessor for CharacterAsset();
      v27 = *(*(v26 - 8) + 56);
      v28 = v34;
      return v27(v28, 1, 1, v26);
    }

    sub_1D2653710(v11, v16, type metadata accessor for PlaygroundImage);
    swift_getKeyPath();
    v60 = v1;
    sub_1D28719E8();

    v35 = *(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal25CharacterEditingViewModel__selectedAppearance);
    if (v35 <= 1)
    {
      v51 = v33;
      v52 = v32;
      v36 = v58;
      if (v35)
      {
        v37 = &OBJC_IVAR____TtC23ImagePlaygroundInternal25CharacterEditingViewModel_firstAppearanceViewModel;
      }

      else
      {
        v37 = &OBJC_IVAR____TtC23ImagePlaygroundInternal25CharacterEditingViewModel_thirdAppearanceViewModel;
      }
    }

    else
    {
      v36 = v58;
      if (v35 - 2 >= 2)
      {
        v34 = v53;
        sub_1D2653778(v16, type metadata accessor for PlaygroundImage);
        sub_1D2653778(v25, type metadata accessor for CharacterRecipe);
        goto LABEL_12;
      }

      v51 = v33;
      v52 = v32;
      v37 = &OBJC_IVAR____TtC23ImagePlaygroundInternal25CharacterEditingViewModel_secondAppearanceViewModel;
    }

    v38 = *(v1 + *v37);
    swift_getKeyPath();
    v60 = v38;
    sub_1D2653E64(&qword_1EC6D8640, type metadata accessor for AppearanceViewModel);
    sub_1D2870F78();
    sub_1D28719E8();

    v39 = *(v38 + OBJC_IVAR____TtC23ImagePlaygroundInternal19AppearanceViewModel__snapshotAppearanceViewBlock);
    if (v39)
    {
      v40 = sub_1D2870F78();
      v39(v40);
      sub_1D22A576C(v39);
      v41 = v51;
      v42 = v51(v36, 1, v12);
      v43 = v56;
      if (v42 != 1)
      {

        sub_1D2653710(v36, v43, type metadata accessor for PlaygroundImage);
        (*(v59 + 56))(v43, 0, 1, v12);
LABEL_26:
        v44 = v55;
        sub_1D2653710(v16, v55, type metadata accessor for PlaygroundImage);
        v45 = v57;
        sub_1D22EC9BC(v43, v57, &unk_1EC6DE5A0);
        v46 = v54;
        sub_1D2653710(v25, v54, type metadata accessor for CharacterRecipe);
        v47 = *(v1 + 32);
        v48 = v44;
        v49 = v53;
        sub_1D2653710(v48, v53, type metadata accessor for PlaygroundImage);
        v50 = type metadata accessor for CharacterAsset();
        sub_1D22EC9BC(v45, v49 + v50[5], &unk_1EC6DE5A0);
        sub_1D2653710(v46, v49 + v50[6], type metadata accessor for CharacterRecipe);
        *(v49 + v50[7]) = v47;
        return (*(*(v50 - 1) + 56))(v49, 0, 1, v50);
      }
    }

    else
    {
      (*(v59 + 56))(v36, 1, 1, v12);
      v43 = v56;
      v41 = v51;
    }

    type metadata accessor for AppearanceImageRenderer();
    swift_initStackObject();
    sub_1D268BD98(v25, v43);

    if (v41(v36, 1, v12) != 1)
    {
      sub_1D22BD238(v36, &unk_1EC6DE5A0);
    }

    goto LABEL_26;
  }

  sub_1D22BD238(v19, &qword_1EC6DF3F8);
  a1 = v53;
LABEL_4:
  v26 = type metadata accessor for CharacterAsset();
  v27 = *(*(v26 - 8) + 56);
  v28 = a1;
  return v27(v28, 1, 1, v26);
}

uint64_t sub_1D2652340(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_1D22BDFF8;

  return sub_1D26523EC(a2, a3);
}

uint64_t sub_1D26523EC(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  v4 = sub_1D2873CB8();
  v3[6] = v4;
  v3[7] = *(v4 - 8);
  v3[8] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DDDA0);
  v3[9] = swift_task_alloc();
  v5 = type metadata accessor for CharacterAsset();
  v3[10] = v5;
  v3[11] = *(v5 - 8);
  v3[12] = swift_task_alloc();
  sub_1D2878568();
  v3[13] = sub_1D2878558();
  v7 = sub_1D28784F8();
  v3[14] = v7;
  v3[15] = v6;

  return MEMORY[0x1EEE6DFA0](sub_1D2652578, v7, v6);
}

uint64_t sub_1D2652578()
{
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[9];
  sub_1D22BD1D0(v0[4], v3, &unk_1EC6DDDA0);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_1D22BD238(v0[9], &unk_1EC6DDDA0);
  }

  else
  {
    v4 = v0[12];
    sub_1D2653710(v0[9], v4, type metadata accessor for CharacterAsset);
    sub_1D23C7FA8();
    sub_1D2622204(v4);

    sub_1D2653778(v4, type metadata accessor for CharacterAsset);
  }

  v0[16] = sub_1D23C7FA8();
  v5 = swift_task_alloc();
  v0[17] = v5;
  *v5 = v0;
  v5[1] = sub_1D26526E0;
  v6 = v0[3];

  return sub_1D2624C0C(v6);
}

uint64_t sub_1D26526E0()
{
  v2 = *v1;
  *(*v1 + 144) = v0;

  if (v0)
  {
    v3 = *(v2 + 112);
    v4 = *(v2 + 120);
    v5 = sub_1D2652940;
  }

  else
  {

    v3 = *(v2 + 112);
    v4 = *(v2 + 120);
    v5 = sub_1D26527FC;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

uint64_t sub_1D26527FC()
{
  v1 = v0[5];

  swift_getKeyPath();
  v0[2] = v1;
  sub_1D2653E64(&qword_1EC6D8360, type metadata accessor for CharacterEditingViewModel);
  sub_1D28719E8();

  if (swift_unknownObjectWeakLoadStrong())
  {
    v2 = v0[5];
    v3 = v0[3];
    v4 = *(v2 + 24);
    ObjectType = swift_getObjectType();
    (*(v4 + 16))(v2, v3, ObjectType, v4);
    swift_unknownObjectRelease();
  }

  v6 = v0[1];

  return v6();
}

uint64_t sub_1D2652940()
{
  v1 = v0[18];

  sub_1D2872708();
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
    _os_log_impl(&dword_1D226E000, v3, v4, "Failed to store character: %@", v7, 0xCu);
    sub_1D22BD238(v8, qword_1EC6DA930);
    MEMORY[0x1D38A3520](v8, -1, -1);
    MEMORY[0x1D38A3520](v7, -1, -1);
  }

  else
  {
  }

  (*(v0[7] + 8))(v0[8], v0[6]);

  v11 = v0[1];

  return v11();
}

uint64_t sub_1D2652AF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_1D22BC8FC;

  return sub_1D26523EC(a2, a3);
}

uint64_t sub_1D2652BA0()
{
  sub_1D22729C0(v0 + 16);

  sub_1D22BD238(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal25CharacterEditingViewModel_originalCharacter, &unk_1EC6DDDA0);

  sub_1D22BD238(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal25CharacterEditingViewModel__selectedSkinTone, &unk_1EC6E33C0);

  v1 = OBJC_IVAR____TtC23ImagePlaygroundInternal25CharacterEditingViewModel___observationRegistrar;
  v2 = sub_1D2871A28();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t sub_1D2652C9C()
{
  sub_1D2652BA0();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for CharacterEditingViewModel()
{
  result = qword_1ED89FB20;
  if (!qword_1ED89FB20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D2652D48()
{
  sub_1D2652ED0(319, qword_1ED8A4598, type metadata accessor for CharacterAsset);
  if (v0 <= 0x3F)
  {
    sub_1D2652ED0(319, &qword_1ED8A6E30, type metadata accessor for ImageGenerationPerson.SkinTone);
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

void sub_1D2652ED0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

uint64_t sub_1D2652F24()
{
  v1 = v0[4];
  v2 = (v0[2] + OBJC_IVAR____TtC23ImagePlaygroundInternal25CharacterEditingViewModel__emojiString);
  *v2 = v0[3];
  v2[1] = v1;
  sub_1D2870F68();
}

uint64_t sub_1D2652F70@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D2653E64(&qword_1EC6D8640, type metadata accessor for AppearanceViewModel);
  sub_1D28719E8();

  v4 = *(v3 + OBJC_IVAR____TtC23ImagePlaygroundInternal19AppearanceViewModel__snapshotAppearanceViewBlock);
  if (v4)
  {
    v5 = *(v3 + OBJC_IVAR____TtC23ImagePlaygroundInternal19AppearanceViewModel__snapshotAppearanceViewBlock + 8);
  }

  else
  {
    v5 = 0;
  }

  *a2 = v4;
  a2[1] = v5;
  return sub_1D22A58B8(v4);
}

uint64_t sub_1D2653030(uint64_t *a1)
{
  v1 = *a1;
  swift_getKeyPath();
  sub_1D22A58B8(v1);
  sub_1D2653E64(&qword_1EC6D8640, type metadata accessor for AppearanceViewModel);
  sub_1D28719D8();
  sub_1D22A576C(v1);
}

BOOL sub_1D2653128(char a1, char a2)
{
  if (a1 == 4)
  {
    return a2 != 4;
  }

  if (a2 == 4)
  {
    return 1;
  }

  if (a1 == 3)
  {
    return a2 != 3;
  }

  if (a2 == 3)
  {
    return 1;
  }

  v3 = sub_1D2873768();
  v5 = v4;
  if (v3 == sub_1D2873768() && v5 == v6)
  {
  }

  else
  {
    v7 = sub_1D2879618();

    if ((v7 & 1) == 0)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_1D2653218(uint64_t a1, uint64_t a2)
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
  sub_1D22BD1D0(a1, v19 - v12, &unk_1EC6E33C0);
  sub_1D22BD1D0(a2, &v13[v15], &unk_1EC6E33C0);
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

  sub_1D22BD1D0(v13, v10, &unk_1EC6E33C0);
  if (v16(&v13[v15], 1, v4) == 1)
  {
    sub_1D2653778(v10, type metadata accessor for ImageGenerationPerson.SkinTone);
    goto LABEL_6;
  }

  sub_1D2653710(&v13[v15], v7, type metadata accessor for ImageGenerationPerson.SkinTone);
  sub_1D28737A8();
  sub_1D2653E64(&qword_1EC6D8BA8, MEMORY[0x1E69E01B8]);
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

  sub_1D2653778(v7, type metadata accessor for ImageGenerationPerson.SkinTone);

  sub_1D2653778(v10, type metadata accessor for ImageGenerationPerson.SkinTone);
  sub_1D22BD238(v13, &unk_1EC6E33C0);
  return v17 & 1;
}

uint64_t sub_1D26535D0()
{
  v2 = *(type metadata accessor for CharacterAsset() - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = v3 + *(v2 + 64);
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DDDA0) - 8);
  v6 = (v4 + *(v5 + 80)) & ~*(v5 + 80);
  v7 = *(v0 + 16);
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_1D22BDFF8;

  return sub_1D2652340(v7, v0 + v3, v0 + v6);
}

uint64_t sub_1D2653710(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D2653778(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t objectdestroyTm_26()
{
  v1 = type metadata accessor for CharacterAsset();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = v3 + *(v2 + 64);
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DDDA0) - 8) + 80);

  v38 = v0;
  v6 = v0 + v3;

  v7 = type metadata accessor for PlaygroundImage();
  v8 = v7[8];
  v9 = sub_1D2871818();
  v37 = *(*(v9 - 8) + 8);
  v37(v6 + v8, v9);
  v10 = (v6 + v7[10]);
  v11 = v10[1];
  if (v11 >> 60 != 15)
  {
    sub_1D22D6D60(*v10, v11);
  }

  v12 = v4 + v5;
  v13 = v7[11];
  v14 = sub_1D2873AA8();
  v15 = *(v14 - 8);
  v36 = *(v15 + 48);
  if (!v36(v6 + v13, 1, v14))
  {
    (*(v15 + 8))(v6 + v13, v14);
  }

  v39 = v12 & ~v5;
  v16 = (v6 + *(v1 + 20));
  v34 = *(*(v7 - 1) + 48);
  if (!v34(v16, 1, v7))
  {

    v37(v16 + v7[8], v9);
    v17 = (v16 + v7[10]);
    v18 = v17[1];
    if (v18 >> 60 != 15)
    {
      sub_1D22D6D60(*v17, v18);
    }

    v19 = v7[11];
    if (!v36(v16 + v19, 1, v14))
    {
      (*(v15 + 8))(v16 + v19, v14);
    }
  }

  v35 = v14;
  v20 = *(v1 + 24);
  v21 = type metadata accessor for CharacterRecipe();
  v22 = v20 + *(v21 + 20);
  v23 = sub_1D28737A8();
  v24 = *(*(v23 - 8) + 8);
  v24(v6 + v22, v23);
  v25 = (v38 + v39);
  if (!(*(v2 + 48))(v38 + v39, 1, v1))
  {

    v37(v25 + v7[8], v9);
    v26 = (v25 + v7[10]);
    v27 = v26[1];
    if (v27 >> 60 != 15)
    {
      sub_1D22D6D60(*v26, v27);
    }

    v28 = v7[11];
    if (!v36(v25 + v28, 1, v35))
    {
      (*(v15 + 8))(v25 + v28, v35);
    }

    v29 = (v25 + *(v1 + 20));
    if (!v34(v29, 1, v7))
    {

      v37(v29 + v7[8], v9);
      v30 = (v29 + v7[10]);
      v31 = v30[1];
      if (v31 >> 60 != 15)
      {
        sub_1D22D6D60(*v30, v31);
      }

      v32 = v7[11];
      if (!v36(v29 + v32, 1, v35))
      {
        (*(v15 + 8))(v29 + v32, v35);
      }
    }

    v24(v25 + *(v1 + 24) + *(v21 + 20), v23);
  }

  return swift_deallocObject();
}

uint64_t sub_1D2653D24()
{
  v2 = *(type metadata accessor for CharacterAsset() - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = v3 + *(v2 + 64);
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DDDA0) - 8);
  v6 = (v4 + *(v5 + 80)) & ~*(v5 + 80);
  v7 = *(v0 + 16);
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_1D22BDFF8;

  return sub_1D2652AF4(v7, v0 + v3, v0 + v6);
}

uint64_t sub_1D2653E64(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D2653EAC(uint64_t a1, uint64_t a2, int a3, int a4)
{
  v95 = a4;
  LODWORD(v88) = a3;
  v97 = a2;
  v83 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8E60);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v96 = &v77 - v6;
  v79 = type metadata accessor for CharacterRecipe();
  MEMORY[0x1EEE9AC00](v79);
  v78 = &v77 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DDDA0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v86 = (&v77 - v9);
  v10 = type metadata accessor for CharacterAsset();
  v11 = *(v10 - 8);
  v84 = v10;
  v85 = v11;
  MEMORY[0x1EEE9AC00](v10);
  v87 = &v77 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6E33C0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v82 = &v77 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA598);
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v77 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DDE60);
  v80 = *(v19 - 8);
  v81 = v19;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v77 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA5A0);
  v23 = *(v22 - 8);
  v92 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v77 - v24;
  *(v4 + 24) = 0;
  swift_unknownObjectWeakInit();
  type metadata accessor for AsyncClosureQueue();
  v26 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA5A8);
  (*(v16 + 104))(v18, *MEMORY[0x1E69E8650], v15);
  sub_1D2878608();
  v27 = v18;
  v28 = v83;
  v29 = v15;
  v30 = v4;
  (*(v16 + 8))(v27, v29);
  v91 = v23;
  v31 = *(v23 + 32);
  v93 = v25;
  v94 = v22;
  v32 = v25;
  v33 = v82;
  v89 = v31;
  v90 = v23 + 32;
  v31(v26 + OBJC_IVAR____TtC23ImagePlaygroundInternal17AsyncClosureQueue_stream, v32, v22);
  (*(v80 + 32))(v26 + OBJC_IVAR____TtC23ImagePlaygroundInternal17AsyncClosureQueue_continuation, v21, v81);
  *(v4 + 48) = v26;
  v34 = (v4 + OBJC_IVAR____TtC23ImagePlaygroundInternal25CharacterEditingViewModel__emojiString);
  *v34 = 0;
  v34[1] = 0;
  *(v4 + OBJC_IVAR____TtC23ImagePlaygroundInternal25CharacterEditingViewModel__selectedAppearance) = 4;
  v35 = OBJC_IVAR____TtC23ImagePlaygroundInternal25CharacterEditingViewModel__selectedSkinTone;
  v36 = type metadata accessor for ImageGenerationPerson.SkinTone();
  v37 = *(v36 - 8);
  v38 = *(v37 + 56);
  v39 = v37 + 56;
  v38(v30 + v35, 1, 1, v36);
  v40 = OBJC_IVAR____TtC23ImagePlaygroundInternal25CharacterEditingViewModel_firstAppearanceViewModel;
  v98[0] = 1;
  v38(v33, 1, 1, v36);
  type metadata accessor for AppearanceViewModel();
  swift_allocObject();
  sub_1D286E0BC(v98, v33);
  *(v30 + v40) = v41;
  v42 = OBJC_IVAR____TtC23ImagePlaygroundInternal25CharacterEditingViewModel_secondAppearanceViewModel;
  v98[0] = 2;
  v38(v33, 1, 1, v36);
  swift_allocObject();
  sub_1D286E0BC(v98, v33);
  *(v30 + v42) = v43;
  v44 = OBJC_IVAR____TtC23ImagePlaygroundInternal25CharacterEditingViewModel_thirdAppearanceViewModel;
  v98[0] = 0;
  v81 = v38;
  v38(v33, 1, 1, v36);
  v45 = v84;
  swift_allocObject();
  sub_1D286E0BC(v98, v33);
  *(v30 + v44) = v46;
  *(v30 + OBJC_IVAR____TtC23ImagePlaygroundInternal25CharacterEditingViewModel__shouldShowCreationTips) = 0;
  sub_1D2871A18();
  *(v30 + 40) = v28;
  *(v30 + 32) = v88;
  v47 = v97;
  sub_1D22BD1D0(v97, v30 + OBJC_IVAR____TtC23ImagePlaygroundInternal25CharacterEditingViewModel_originalCharacter, &unk_1EC6DDDA0);
  v48 = v47;
  v49 = v86;
  sub_1D22BD1D0(v48, v86, &unk_1EC6DDDA0);
  if ((*(v85 + 48))(v49, 1, v45) == 1)
  {
    sub_1D2870F78();
    sub_1D22BD238(v49, &unk_1EC6DDDA0);
  }

  else
  {
    v50 = v87;
    sub_1D2653710(v49, v87, type metadata accessor for CharacterAsset);
    v88 = *(v45 + 24);
    v51 = *(v50 + v88);
    v52 = OBJC_IVAR____TtC23ImagePlaygroundInternal25CharacterEditingViewModel__selectedAppearance;
    v53 = *(v30 + OBJC_IVAR____TtC23ImagePlaygroundInternal25CharacterEditingViewModel__selectedAppearance);
    sub_1D2870F78();
    v54 = sub_1D2653128(v53, v51);
    v80 = v39;
    v77 = v36;
    if (v54)
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath);
      *(&v77 - 2) = v30;
      *(&v77 - 8) = v51;
      *v98 = v30;
      sub_1D2653E64(&qword_1EC6D8360, type metadata accessor for CharacterEditingViewModel);
      sub_1D28719D8();
    }

    else
    {
      *(v30 + v52) = v51;
    }

    v86 = type metadata accessor for CharacterRecipe;
    v56 = v88;
    v57 = v78;
    sub_1D2654910(v50 + v88, v78, type metadata accessor for CharacterRecipe);
    v58 = v79;
    sub_1D2653710(v57 + *(v79 + 20), v33, type metadata accessor for ImageGenerationPerson.SkinTone);
    v59 = v77;
    v60 = v81;
    v81(v33, 0, 1, v77);
    sub_1D265053C(v33);
    sub_1D23C75E0();
    v98[0] = *(v87 + v56);
    v61 = v87 + v56;
    v62 = v87;
    sub_1D2654910(v61, v57, v86);
    sub_1D2653710(v57 + *(v58 + 20), v33, type metadata accessor for ImageGenerationPerson.SkinTone);
    v60(v33, 0, 1, v59);
    v63 = sub_1D2437618(v98, v33);
    v65 = v64;

    sub_1D22BD238(v33, &unk_1EC6E33C0);
    sub_1D2650750(v63, v65);
    sub_1D2653778(v62, type metadata accessor for CharacterAsset);
  }

  v66 = *(sub_1D23C7FA8() + 16);
  os_unfair_lock_lock((v66 + 20));
  *(v66 + 16) = v95 & 1;
  os_unfair_lock_unlock((v66 + 20));

  v67 = *(v30 + 48);
  v68 = OBJC_IVAR____TtC23ImagePlaygroundInternal17AsyncClosureQueue_stream;
  v69 = sub_1D28785F8();
  v70 = v96;
  (*(*(v69 - 8) + 56))(v96, 1, 1, v69);
  v71 = v91 + 16;
  v73 = v93;
  v72 = v94;
  (*(v91 + 16))(v93, v67 + v68, v94);
  v74 = (*(v71 + 64) + 32) & ~*(v71 + 64);
  v75 = swift_allocObject();
  *(v75 + 16) = 0;
  *(v75 + 24) = 0;
  v89(v75 + v74, v73, v72);
  sub_1D22AE01C(0, 0, v70, &unk_1D28838A0, v75);

  sub_1D22BD238(v97, &unk_1EC6DDDA0);
  return v30;
}

uint64_t sub_1D2654910(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t type metadata accessor for CreateCharacterPickerItem()
{
  result = qword_1ED89FA00;
  if (!qword_1ED89FA00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D2654A04()
{
  sub_1D2871818();
  if (v0 <= 0x3F)
  {
    sub_1D238DF94();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1D2654AE0()
{
  v0 = sub_1D28718F8();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v1 = sub_1D2878048();
  MEMORY[0x1EEE9AC00](v1 - 8);
  sub_1D2877FE8();
  if (qword_1ED89E0E8 != -1)
  {
    swift_once();
  }

  v2 = qword_1ED8B0058;
  sub_1D28718C8();
  return sub_1D28780E8();
}

uint64_t sub_1D2654C6C(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 24));
  sub_1D2870F68();
  return v2;
}

uint64_t sub_1D2654CA4@<X0>(void *a1@<X8>)
{
  *a1 = 0xD000000000000013;
  a1[1] = 0x80000001D28B54A0;
  v2 = type metadata accessor for GridPickerItemImage(0);
  swift_storeEnumTagMultiPayload();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 0, 1, v2);
}

uint64_t sub_1D2654D40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = sub_1D2871818();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1D2654DB4(uint64_t a1)
{
  result = sub_1D2654E0C(qword_1ED89FA18, type metadata accessor for CreateCharacterPickerItem);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D2654E0C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D2654E54(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v19 = a1;
  v20 = a2;
  v6 = type metadata accessor for IdentifiedEntity(0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a3 + 16);
  v11 = MEMORY[0x1E69E7CC0];
  if (!v10)
  {
    return v11;
  }

  v21 = MEMORY[0x1E69E7CC0];
  sub_1D23D82C0(0, v10, 0);
  v11 = v21;
  v12 = *(sub_1D28723C8() - 8);
  v13 = a3 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
  v18 = *(v12 + 72);
  while (1)
  {
    v19(v13);
    if (v4)
    {
      break;
    }

    v4 = 0;
    v21 = v11;
    v15 = *(v11 + 16);
    v14 = *(v11 + 24);
    if (v15 >= v14 >> 1)
    {
      sub_1D23D82C0(v14 > 1, v15 + 1, 1);
      v11 = v21;
    }

    *(v11 + 16) = v15 + 1;
    sub_1D2672F28(v9, v11 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v15, type metadata accessor for IdentifiedEntity);
    v13 += v18;
    if (!--v10)
    {
      return v11;
    }
  }

  __break(1u);
  return result;
}

void sub_1D2655050(uint64_t a1)
{
  v3 = type metadata accessor for PromptElementConceptExtractor.Concept();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = (v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(a1 + 16);
  if (!v7)
  {
    v19 = MEMORY[0x1E69E7CC0];
    return;
  }

  v8 = 0;
  v18[1] = v1;
  v19 = MEMORY[0x1E69E7CC0];
  v22 = v4;
  v20 = v3;
  do
  {
    for (i = v8; ; ++i)
    {
      if (i >= v7)
      {
        __break(1u);
LABEL_20:
        __break(1u);
        return;
      }

      v8 = i + 1;
      if (__OFADD__(i, 1))
      {
        goto LABEL_20;
      }

      sub_1D2672EC0(a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * i, v6, type metadata accessor for PromptElementConceptExtractor.Concept);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        break;
      }

      sub_1D2672F90(v6, type metadata accessor for PromptElementConceptExtractor.Concept);
LABEL_5:
      if (v8 == v7)
      {
        return;
      }
    }

    v10 = a1;
    v12 = *v6;
    v11 = v6[1];
    sub_1D2870F68();
    v13 = sub_1D25B5F28(&v21, v12, v11);

    if ((v13 & 1) == 0)
    {

      a1 = v10;
      v4 = v22;
      goto LABEL_5;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v19 = sub_1D27CC674(0, *(v19 + 2) + 1, 1, v19);
    }

    v15 = *(v19 + 2);
    v14 = *(v19 + 3);
    if (v15 >= v14 >> 1)
    {
      v19 = sub_1D27CC674((v14 > 1), v15 + 1, 1, v19);
    }

    v16 = v19;
    *(v19 + 2) = v15 + 1;
    v17 = &v16[16 * v15];
    *(v17 + 4) = v12;
    *(v17 + 5) = v11;
    a1 = v10;
    v4 = v22;
  }

  while (v8 != v7);
}

uint64_t sub_1D26552B8()
{
  if (*(v0 + 40))
  {
    v1 = *(v0 + 40);
  }

  else
  {
    v2 = *(v0 + 24);
    type metadata accessor for PromptConceptAnalyzer();
    v1 = swift_allocObject();
    *(v1 + 16) = 0;
    *(v1 + 24) = v2;
    *(v0 + 40) = v1;
    sub_1D2870F78();
    sub_1D2870F78();
  }

  sub_1D2870F78();
  return v1;
}

uint64_t sub_1D2655328(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 1896) = v5;
  *(v6 + 329) = a5;
  *(v6 + 1888) = a4;
  *(v6 + 1880) = a3;
  *(v6 + 1872) = a2;
  *(v6 + 1864) = a1;
  *(v6 + 1904) = type metadata accessor for PersonConditioningImage();
  *(v6 + 1912) = swift_task_alloc();
  *(v6 + 1920) = type metadata accessor for PlaygroundImage();
  *(v6 + 1928) = swift_task_alloc();
  *(v6 + 1936) = swift_task_alloc();
  v7 = sub_1D2872248();
  *(v6 + 1944) = v7;
  *(v6 + 1952) = *(v7 - 8);
  *(v6 + 1960) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9A30);
  *(v6 + 1968) = swift_task_alloc();
  v8 = sub_1D2872008();
  *(v6 + 1976) = v8;
  *(v6 + 1984) = *(v8 - 8);
  *(v6 + 1992) = swift_task_alloc();
  *(v6 + 2000) = swift_task_alloc();
  *(v6 + 2008) = swift_task_alloc();
  v9 = sub_1D2872428();
  *(v6 + 2016) = v9;
  *(v6 + 2024) = *(v9 - 8);
  *(v6 + 2032) = swift_task_alloc();
  *(v6 + 2040) = swift_task_alloc();
  v10 = type metadata accessor for PhotosPersonAsset();
  *(v6 + 2048) = v10;
  *(v6 + 2056) = *(v10 - 8);
  *(v6 + 2064) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DDDC0);
  *(v6 + 2072) = swift_task_alloc();
  *(v6 + 2080) = swift_task_alloc();
  *(v6 + 2088) = swift_task_alloc();
  v11 = sub_1D28722C8();
  *(v6 + 2096) = v11;
  *(v6 + 2104) = *(v11 - 8);
  *(v6 + 2112) = swift_task_alloc();
  *(v6 + 2120) = swift_task_alloc();
  v12 = sub_1D2872208();
  *(v6 + 2128) = v12;
  *(v6 + 2136) = *(v12 - 8);
  *(v6 + 2144) = swift_task_alloc();
  *(v6 + 2152) = swift_task_alloc();
  *(v6 + 2160) = sub_1D28712C8();
  *(v6 + 2168) = swift_task_alloc();
  v13 = sub_1D2871318();
  *(v6 + 2176) = v13;
  *(v6 + 2184) = *(v13 - 8);
  *(v6 + 2192) = swift_task_alloc();
  *(v6 + 2200) = swift_task_alloc();
  v14 = sub_1D2871798();
  *(v6 + 2208) = v14;
  *(v6 + 2216) = *(v14 - 8);
  *(v6 + 2224) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6E1D40);
  *(v6 + 2232) = swift_task_alloc();
  *(v6 + 2240) = swift_task_alloc();
  v15 = sub_1D28723E8();
  *(v6 + 2248) = v15;
  *(v6 + 2256) = *(v15 - 8);
  *(v6 + 2264) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA210);
  *(v6 + 2272) = swift_task_alloc();
  v16 = type metadata accessor for CuratedPrompt();
  *(v6 + 2280) = v16;
  *(v6 + 2288) = *(v16 - 8);
  *(v6 + 2296) = swift_task_alloc();
  v17 = sub_1D2879328();
  *(v6 + 2304) = v17;
  *(v6 + 2312) = *(v17 - 8);
  *(v6 + 2320) = swift_task_alloc();
  v18 = sub_1D2873CB8();
  *(v6 + 2328) = v18;
  *(v6 + 2336) = *(v18 - 8);
  *(v6 + 2344) = swift_task_alloc();
  *(v6 + 2352) = swift_task_alloc();
  *(v6 + 2360) = swift_task_alloc();
  *(v6 + 2368) = swift_task_alloc();
  *(v6 + 2376) = swift_task_alloc();
  *(v6 + 2384) = swift_task_alloc();
  *(v6 + 2392) = swift_task_alloc();
  v19 = sub_1D2879308();
  *(v6 + 2400) = v19;
  *(v6 + 2408) = *(v19 - 8);
  *(v6 + 2416) = swift_task_alloc();
  *(v6 + 2424) = swift_task_alloc();
  *(v6 + 2432) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6E1D20);
  *(v6 + 2440) = swift_task_alloc();
  v20 = type metadata accessor for Prompt(0);
  *(v6 + 2448) = v20;
  *(v6 + 2456) = *(v20 - 8);
  *(v6 + 2464) = swift_task_alloc();
  *(v6 + 2472) = swift_task_alloc();
  *(v6 + 2480) = swift_task_alloc();
  *(v6 + 2488) = swift_task_alloc();
  v21 = sub_1D2872278();
  *(v6 + 2496) = v21;
  *(v6 + 2504) = *(v21 - 8);
  *(v6 + 2512) = swift_task_alloc();
  *(v6 + 2520) = swift_task_alloc();
  *(v6 + 2528) = swift_task_alloc();
  *(v6 + 2536) = sub_1D2878568();
  *(v6 + 2544) = sub_1D2878558();
  v23 = sub_1D28784F8();
  *(v6 + 2552) = v23;
  *(v6 + 2560) = v22;

  return MEMORY[0x1EEE6DFA0](sub_1D2655BFC, v23, v22);
}

uint64_t sub_1D2655BFC()
{
  v392 = v0;
  v1 = sub_1D28722E8();
  *(v0 + 2568) = v1;
  v3 = *(v1 + 16);
  *(v0 + 2576) = v3;
  if (!v3)
  {
LABEL_109:

    v312 = *(v0 + 8);
    goto LABEL_110;
  }

  v4 = 0;
  v5 = 0;
  v6 = 0;
  v361 = (v0 + 744);
  v7 = MEMORY[0x1E696E450];
  v8 = MEMORY[0x1E696E468];
  v9 = MEMORY[0x1E696E470];
  v10 = MEMORY[0x1E696E448];
  v11 = MEMORY[0x1E696E460];
  v12 = MEMORY[0x1E696E458];
  v13 = MEMORY[0x1E69DB5F0];
  *(v0 + 332) = *(*(v0 + 2504) + 80);
  *(v0 + 1772) = *v7;
  *(v0 + 2864) = *v8;
  *(v0 + 2868) = *v9;
  *(v0 + 2872) = *v10;
  *(v0 + 2876) = *v11;
  *(v0 + 2880) = *v12;
  *(v0 + 2584) = *v13;
  while (1)
  {
    *(v0 + 2600) = v6;
    *(v0 + 330) = v5 & 1;
    *(v0 + 2592) = v4;
    v14 = *(v0 + 2568);
    if (v6 >= *(v14 + 16))
    {
      break;
    }

    v384 = v4;
    LODWORD(v382) = v5;
    v15 = *(v0 + 2504);
    v16 = *(v15 + 16);
    v17 = *(v0 + 1872);
    v377 = *(v15 + 72);
    v16(*(v0 + 2528), v14 + ((*(v0 + 332) + 32) & ~*(v0 + 332)) + v377 * v6, *(v0 + 2496));
    v18 = *(v17 + 32);
    v19 = *(v18 + 16);
    if (v19)
    {
      v20 = v18 + 32;
      sub_1D2870F68();
      v21 = MEMORY[0x1E69E7CC0];
      do
      {
        v22 = *(v0 + 2456);
        v23 = *(v0 + 2448);
        v24 = *(v0 + 2440);
        sub_1D22D7044(v20, v0 + 1104);
        sub_1D227268C((v0 + 1104), v0 + 384);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9A10);
        v25 = swift_dynamicCast();
        (*(v22 + 56))(v24, v25 ^ 1u, 1, v23);
        if ((*(v22 + 48))(v24, 1, v23) == 1)
        {
          sub_1D22BD238(*(v0 + 2440), &unk_1EC6E1D20);
        }

        else
        {
          sub_1D2672F28(*(v0 + 2440), *(v0 + 2488), type metadata accessor for Prompt);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v21 = sub_1D27CC840(0, v21[2] + 1, 1, v21);
          }

          v27 = v21[2];
          v26 = v21[3];
          if (v27 >= v26 >> 1)
          {
            v21 = sub_1D27CC840(v26 > 1, v27 + 1, 1, v21);
          }

          v28 = *(v0 + 2488);
          v29 = *(v0 + 2456);
          v21[2] = v27 + 1;
          sub_1D2672F28(v28, v21 + ((*(v29 + 80) + 32) & ~*(v29 + 80)) + *(v29 + 72) * v27, type metadata accessor for Prompt);
        }

        v20 += 40;
        --v19;
      }

      while (v19);
    }

    else
    {
      v21 = MEMORY[0x1E69E7CC0];
    }

    v30 = *(v0 + 1772);
    v31 = *(v0 + 2520);
    v32 = *(v0 + 2504);
    v33 = *(v0 + 2496);
    v16(v31, *(v0 + 2528), v33);
    v34 = *(v32 + 88);
    v35 = v34(v31, v33);
    if (v35 == v30)
    {
      v36 = *(v0 + 2520);
      v37 = *(v0 + 2504);
      v38 = *(v0 + 2496);
      v39 = *(v0 + 1896);

      (*(v37 + 96))(v36, v38);
      *(v0 + 2608) = *v36;
      *(v0 + 2616) = v36[1];
      sub_1D28792C8();
      v40 = *(v39 + 24);
      *(v0 + 2624) = v40;
      *(v0 + 2632) = type metadata accessor for _CuratedPromptsManager();
      swift_beginAccess();
      v41 = *(v40 + 16);
      if (*(v41 + 16) && (v42 = sub_1D25D0574(*(v0 + 2632)), (v43 & 1) != 0))
      {
        sub_1D22D7044(*(v41 + 56) + 40 * v42, v0 + 1624);
        swift_endAccess();
        sub_1D227268C((v0 + 1624), v0 + 824);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA520);
        swift_dynamicCast();
        v44 = *(v0 + 1840);
      }

      else
      {
        v61 = *(v0 + 2632);
        swift_endAccess();
        swift_allocObject();
        v62 = sub_1D2870F78();
        v44 = sub_1D26D5DB8(v62);

        *(v0 + 448) = v61;
        *(v0 + 456) = &protocol witness table for _CuratedPromptsManager;
        *(v0 + 424) = v44;
        swift_beginAccess();
        sub_1D2870F78();
        sub_1D25CDC34(v0 + 424, v61);
        swift_endAccess();
      }

      v63 = *(v44 + 88);

      if ((v63 & 1) == 0)
      {
        v64 = *(v0 + 2424);
        v65 = *(v0 + 2408);
        v66 = *(v0 + 2400);
        sub_1D28792C8();
        sub_1D28792F8();
        v67 = *(v65 + 8);
        *(v0 + 2640) = v67;
        *(v0 + 2648) = (v65 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        v67(v64, v66);
        if (sub_1D28798E8())
        {
          sub_1D2872658();
          v314 = sub_1D2873CA8();
          v315 = sub_1D28789F8();
          if (os_log_type_enabled(v314, v315))
          {
            v316 = swift_slowAlloc();
            *v316 = 0;
            _os_log_impl(&dword_1D226E000, v314, v315, "Curated prompts have not been loaded yet, waiting to parse recipe", v316, 2u);
            MEMORY[0x1D38A3520](v316, -1, -1);
          }

          v317 = *(v0 + 2384);
          v318 = *(v0 + 2336);
          v319 = *(v0 + 2328);

          (*(v318 + 8))(v317, v319);
          v320 = sub_1D2879908();
          v322 = v321;
          sub_1D2879718();
          *(v0 + 1824) = v320;
          *(v0 + 1832) = v322;
          *(v0 + 1752) = 0u;
          *(v0 + 1768) = 1;
          v133 = sub_1D2658A58;
          v134 = 0;
          v135 = 0;
LABEL_117:

          return MEMORY[0x1EEE6DFA0](v133, v134, v135);
        }

        sub_1D2872658();
        v68 = sub_1D2873CA8();
        v69 = sub_1D2878A18();
        v70 = os_log_type_enabled(v68, v69);
        v71 = *(v0 + 2392);
        v72 = *(v0 + 2336);
        v73 = *(v0 + 2328);
        if (v70)
        {
          v74 = swift_slowAlloc();
          v75 = swift_slowAlloc();
          *&v390[0] = v75;
          *v74 = 136315138;
          v76 = sub_1D28798D8();
          v78 = sub_1D23D7C84(v76, v77, v390);

          *(v74 + 4) = v78;
          _os_log_impl(&dword_1D226E000, v68, v69, "Timeout waiting for promptManager to be ready after %s. Exiting wait loop.", v74, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v75);
          MEMORY[0x1D38A3520](v75, -1, -1);
          MEMORY[0x1D38A3520](v74, -1, -1);
        }

        (*(v72 + 8))(v71, v73);
      }

      v79 = *(sub_1D23C7858() + 88);

      if (v79 != 1)
      {
        goto LABEL_37;
      }

      v80 = *(v0 + 2616);
      v81 = *(v0 + 2608);
      v82 = *(v0 + 2288);
      v83 = *(v0 + 2280);
      v84 = *(v0 + 2272);
      sub_1D23C7858();
      sub_1D26D06B4(v81, v80, v84);

      if ((*(v82 + 48))(v84, 1, v83) == 1)
      {
        sub_1D22BD238(*(v0 + 2272), &qword_1EC6DA210);
LABEL_37:
        v85 = *(sub_1D23C7858() + 88);

        if (v85)
        {
          sub_1D2872658();
          sub_1D2870F68();
          v86 = sub_1D2873CA8();
          v87 = sub_1D2878A18();

          v88 = os_log_type_enabled(v86, v87);
          v89 = *(v0 + 2616);
          if (v88)
          {
            v90 = *(v0 + 2608);
            v91 = *(v0 + 2368);
            v92 = *(v0 + 2336);
            v93 = *(v0 + 2328);
            v94 = swift_slowAlloc();
            v95 = swift_slowAlloc();
            *&v390[0] = v95;
            *v94 = 136315138;
            v96 = sub_1D23D7C84(v90, v89, v390);

            *(v94 + 4) = v96;
            v97 = v87;
            v98 = v86;
            v99 = "Cannot decode curated prompt from string: %s";
            goto LABEL_45;
          }

          v200 = *(v0 + 2368);
LABEL_68:
          v201 = *(v0 + 2336);
          v202 = *(v0 + 2328);

          (*(v201 + 8))(v200, v202);
        }

        else
        {
          sub_1D2872658();
          sub_1D2870F68();
          v86 = sub_1D2873CA8();
          v111 = sub_1D2878A18();

          v112 = os_log_type_enabled(v86, v111);
          v113 = *(v0 + 2616);
          if (!v112)
          {
            v200 = *(v0 + 2376);
            goto LABEL_68;
          }

          v114 = *(v0 + 2608);
          v91 = *(v0 + 2376);
          v92 = *(v0 + 2336);
          v93 = *(v0 + 2328);
          v94 = swift_slowAlloc();
          v95 = swift_slowAlloc();
          *&v390[0] = v95;
          *v94 = 136315138;
          v115 = sub_1D23D7C84(v114, v113, v390);

          *(v94 + 4) = v115;
          v97 = v111;
          v98 = v86;
          v99 = "PromptManager not ready after timeout, cannot decode curated prompt from string: %s";
LABEL_45:
          _os_log_impl(&dword_1D226E000, v98, v97, v99, v94, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v95);
          MEMORY[0x1D38A3520](v95, -1, -1);
          MEMORY[0x1D38A3520](v94, -1, -1);

          (*(v92 + 8))(v91, v93);
        }

        v4 = v384;
        (*(v0 + 1880))(*(v0 + 2528));
        v203 = *(v0 + 2528);
        v204 = *(v0 + 2504);
        v205 = *(v0 + 2496);
        v206 = *(v0 + 2432);
        v207 = *(v0 + 2408);
        v208 = *(v0 + 2400);
        if (*(v0 + 1528))
        {
          sub_1D227268C((v0 + 1504), v0 + 1584);
          sub_1D267A600(v0 + 1584, 1, v0 + 1464);
          sub_1D22BD238(v0 + 1464, &unk_1EC6E1D30);
          __swift_destroy_boxed_opaque_existential_0(v0 + 1584);
          (*(v207 + 8))(v206, v208);
          v1 = (*(v204 + 8))(v203, v205);
        }

        else
        {
          (*(v207 + 8))(*(v0 + 2432), *(v0 + 2400));
          (*(v204 + 8))(v203, v205);
          v1 = sub_1D22BD238(v0 + 1504, &unk_1EC6E1D30);
        }

        v5 = *(v0 + 330);
        goto LABEL_5;
      }

      v383 = *(v0 + 2528);
      v191 = *(v0 + 2504);
      v192 = *(v0 + 2496);
      v193 = *(v0 + 2432);
      v194 = *(v0 + 2408);
      v195 = *(v0 + 2400);
      v196 = *(v0 + 2296);
      v197 = *(v0 + 2280);
      v198 = *(v0 + 2272);

      sub_1D2672F28(v198, v196, type metadata accessor for CuratedPrompt);
      *(v0 + 1408) = v197;
      *(v0 + 1416) = sub_1D2672E78(&qword_1ED8A4A40, type metadata accessor for CuratedPrompt);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 1384));
      sub_1D2672EC0(v196, boxed_opaque_existential_1, type metadata accessor for CuratedPrompt);
      sub_1D267A600(v0 + 1384, 1, v0 + 1424);
      sub_1D22BD238(v0 + 1424, &unk_1EC6E1D30);
      sub_1D2672F90(v196, type metadata accessor for CuratedPrompt);
      (*(v194 + 8))(v193, v195);
      (*(v191 + 8))(v383, v192);
      v1 = __swift_destroy_boxed_opaque_existential_0(v0 + 1384);
      v5 = *(v0 + 330);
      v4 = v384;
    }

    else
    {
      if (v35 == *(v0 + 2864))
      {
        v45 = *(v0 + 2520);
        v46 = *(v0 + 2264);
        v47 = *(v0 + 2256);
        v48 = *(v0 + 2248);
        v49 = *(v0 + 2240);
        v50 = *(v0 + 2232);
        v51 = *(v0 + 2184);
        v52 = *(v0 + 2176);
        (*(*(v0 + 2504) + 96))(v45, *(v0 + 2496));
        (*(v47 + 32))(v46, v45, v48);
        v365 = sub_1D2872368();
        v369 = v53;
        (*(v51 + 56))(v49, 1, 1, v52);
        v54 = sub_1D28723D8();
        v55 = swift_task_alloc();
        *(v55 + 16) = v46;
        v363 = sub_1D2654E54(sub_1D2672DEC, v55, v54);
        v374 = v384;

        sub_1D2871778();
        sub_1D22BD1D0(v49, v50, &unk_1EC6E1D40);
        if ((*(v51 + 48))(v50, 1, v52) == 1)
        {
          sub_1D22BD238(*(v0 + 2232), &unk_1EC6E1D40);
          if (qword_1ED89CD48 != -1)
          {
            swift_once();
          }

          v56 = *(v0 + 2472);
          *(v56 + 24) = sub_1D24B63AC(qword_1ED8B0010, v365, v369);
          *(v56 + 32) = v57 & 1;
          v58 = sub_1D27E1420(v365, v369);
          v60 = v59;
        }

        else
        {
          (*(*(v0 + 2184) + 32))(*(v0 + 2200), *(v0 + 2232), *(v0 + 2176));
          if (qword_1ED89CD48 != -1)
          {
            swift_once();
          }

          v385 = *(v0 + 2584);
          v116 = *(v0 + 2200);
          v117 = *(v0 + 2192);
          v118 = *(v0 + 2184);
          v119 = *(v0 + 2176);
          v120 = qword_1ED8B0010;
          sub_1D28712B8();
          sub_1D2672E78(&qword_1ED8A6CF0, MEMORY[0x1E6968678]);
          *(v0 + 1808) = sub_1D28782D8();
          *(v0 + 1816) = v121;
          *(v0 + 1792) = 12369903;
          *(v0 + 1800) = 0xA300000000000000;
          *(v0 + 1776) = 0;
          *(v0 + 1784) = 0xE000000000000000;
          v360 = sub_1D22BD06C();
          v359 = MEMORY[0x1E69E6158];
          v122 = sub_1D2878FA8();
          v124 = v123;

          v125 = sub_1D24B63AC(v120, v122, v124);
          v127 = v126;

          *(v0 + 1848) = v125;
          sub_1D22BCFD0(0, &qword_1ED89CD40);
          (*(v118 + 16))(v117, v116, v119);
          v128 = sub_1D2878AE8();
          v129 = [v128 length];
          v130 = swift_allocObject();
          *(v130 + 16) = v0 + 1848;
          v131 = swift_allocObject();
          *(v131 + 16) = sub_1D2436B8C;
          *(v131 + 24) = v130;
          *(v0 + 368) = sub_1D2436B94;
          *(v0 + 376) = v131;
          *(v0 + 336) = MEMORY[0x1E69E9820];
          *(v0 + 344) = 1107296256;
          *(v0 + 352) = sub_1D267502C;
          *(v0 + 360) = &block_descriptor_33;
          v132 = _Block_copy((v0 + 336));
          sub_1D2870F78();

          [v128 enumerateAttribute:v385 inRange:0 options:v129 usingBlock:{0, v132}];

          _Block_release(v132);
          LOBYTE(v128) = swift_isEscapingClosureAtFileLocation();

          if (v128)
          {
            __break(1u);
            return MEMORY[0x1EEE6DFA0](v133, v134, v135);
          }

          v136 = *(v0 + 2472);
          v137 = *(v0 + 2200);
          v138 = *(v0 + 2184);
          v139 = *(v0 + 2176);
          v140 = *(v0 + 1848);

          *(v136 + 24) = v140;
          *(v136 + 32) = v127 & 1;
          v141 = sub_1D27E0DA0();
          v143 = sub_1D27E1420(v141, v142);
          v60 = v144;

          (*(v138 + 8))(v137, v139);
          v58 = v143;
        }

        v378 = *(v0 + 2480);
        v145 = *(v0 + 2472);
        v146 = *(v0 + 2448);
        v370 = *(v0 + 2240);
        v147 = *(v0 + 2224);
        v148 = *(v0 + 2216);
        v149 = *(v0 + 2208);
        v145[1] = v58;
        v145[2] = v60;
        v145[5] = v363;
        (*(v148 + 16))(v145 + *(v146 + 36), v147, v149);
        *(v145 + *(v146 + 40)) = 0;
        sub_1D2879838();
        sub_1D2877F38();

        v150 = v390[3];
        *(v0 + 48) = v390[2];
        *(v0 + 64) = v150;
        *(v0 + 80) = v391;
        v151 = v390[1];
        *(v0 + 16) = v390[0];
        *(v0 + 32) = v151;
        v152 = sub_1D2879818();
        (*(v148 + 8))(v147, v149);
        sub_1D22BD238(v370, &unk_1EC6E1D40);
        *v145 = v152;
        sub_1D2672F28(v145, v378, type metadata accessor for Prompt);
        v153 = 0;
        v154 = v21[2];
        v5 = v382;
        while (v154 != v153)
        {
          if (v153 >= v21[2])
          {
            __break(1u);
            goto LABEL_131;
          }

          v155 = *(v0 + 2480);
          v156 = *(v0 + 2464);
          sub_1D2672EC0(v21 + ((*(*(v0 + 2456) + 80) + 32) & ~*(*(v0 + 2456) + 80)) + *(*(v0 + 2456) + 72) * v153, v156, type metadata accessor for Prompt);
          v157 = *(v156 + 8);
          v158 = *(v156 + 16);
          v159 = *(v0 + 2464);
          if (v157 == *(v155 + 8) && v158 == *(v155 + 16))
          {
            sub_1D2672F90(*(v0 + 2464), type metadata accessor for Prompt);
LABEL_76:
            (*(*(v0 + 2504) + 8))(*(v0 + 2528), *(v0 + 2496));

            v4 = v374;
LABEL_77:
            v217 = *(v0 + 2264);
            v218 = *(v0 + 2256);
            v219 = *(v0 + 2248);
            sub_1D2672F90(*(v0 + 2480), type metadata accessor for Prompt);
            v1 = (*(v218 + 8))(v217, v219);
            goto LABEL_5;
          }

          ++v153;
          v161 = sub_1D2879618();
          sub_1D2672F90(v159, type metadata accessor for Prompt);
          if (v161)
          {
            goto LABEL_76;
          }
        }

        v209 = *(v0 + 329);

        v4 = v374;
        if ((v209 & 1) == 0)
        {
LABEL_74:
          v212 = *(v0 + 2528);
          v213 = *(v0 + 2504);
          v214 = *(v0 + 2496);
          v215 = *(v0 + 2480);
          *(v0 + 1368) = *(v0 + 2448);
          *(v0 + 1376) = sub_1D2672E78(&unk_1ED89E418, type metadata accessor for Prompt);
          v216 = __swift_allocate_boxed_opaque_existential_1((v0 + 1344));
          sub_1D2672EC0(v215, v216, type metadata accessor for Prompt);
          sub_1D267A600(v0 + 1344, 1, v0 + 1304);
          sub_1D22BD238(v0 + 1304, &unk_1EC6E1D30);
          (*(v213 + 8))(v212, v214);
          __swift_destroy_boxed_opaque_existential_0(v0 + 1344);
          goto LABEL_77;
        }

        if ((sub_1D267E554(*(v0 + 2480)) & 1) == 0)
        {

          goto LABEL_74;
        }

        v339 = v210;
        v389 = v211;

        sub_1D2872658();
        v340 = sub_1D2873CA8();
        v341 = sub_1D28789F8();
        if (os_log_type_enabled(v340, v341))
        {
          v342 = swift_slowAlloc();
          *v342 = 0;
          _os_log_impl(&dword_1D226E000, v340, v341, "Blocking name to photo substitution when loading context from GenerationRecipe", v342, 2u);
          MEMORY[0x1D38A3520](v342, -1, -1);
        }

        v343 = *(v0 + 2528);
        v344 = *(v0 + 2504);
        v345 = *(v0 + 2496);
        v346 = *(v0 + 2480);
        v347 = *(v0 + 2360);
        v348 = *(v0 + 2336);
        v349 = *(v0 + 2328);

        (*(v348 + 8))(v347, v349);
        sub_1D2672E0C();
        swift_allocError();
        *v350 = v339;
        v350[1] = v389;
        swift_willThrow();
        (*(v344 + 8))(v343, v345);
        sub_1D2672F90(v346, type metadata accessor for Prompt);
        (*(*(v0 + 2256) + 8))();

        v312 = *(v0 + 8);
LABEL_110:

        return v312();
      }

      if (v35 != *(v0 + 2868))
      {
        if (v35 == *(v0 + 2872))
        {
          v162 = *(v0 + 2520);
          v163 = *(v0 + 1960);
          v164 = *(v0 + 1952);
          v165 = *(v0 + 1944);
          v386 = (*(v0 + 2504) + 96);
          v375 = *v386;
          (*v386)(v162, *(v0 + 2496));
          (*(v164 + 32))(v163, v162, v165);
          v166 = sub_1D2872238();
          *(v0 + 2752) = v166;
          *(v0 + 2760) = v167;
          if (v167 >> 60 == 15)
          {
            return sub_1D2879398();
          }

          v168 = v166;
          v169 = v167;

          v170 = objc_allocWithZone(MEMORY[0x1E69DCAB8]);
          sub_1D22D6CF8(v168, v169);
          sub_1D22D6CF8(v168, v169);
          v171 = sub_1D28716D8();
          v172 = [v170 initWithData_];

          sub_1D22D6D4C(v168, v169);
          if (v172)
          {
            v325 = *(v0 + 1936);
            v367 = *(v0 + 1920);
            v372 = sub_1D2630BC0();
            v326 = (v325 + v367[9]);
            *v326 = 0u;
            v326[1] = 0u;
            *(v325 + v367[10]) = xmmword_1D28809A0;
            v327 = v367[11];
            v328 = sub_1D2873AA8();
            (*(*(v328 - 8) + 56))(v325 + v327, 1, 1, v328);
            *v325 = v172;
            *(v325 + 8) = 2;
            [v172 imageOrientation];
            *(v325 + 24) = sub_1D2878C88();
            *(v325 + 16) = v372;
            *(v325 + 32) = 0;
            *(v325 + 40) = 0;
            *(v325 + v367[12]) = 0;
            sub_1D2871808();
            sub_1D22D6D4C(v168, v169);
            v329 = sub_1D28722E8();
            v330 = *(v329 + 16);
            if (v330)
            {
              LOBYTE(v382) = 0;
              v331 = v329 + ((*(v0 + 332) + 32) & ~*(v0 + 332));
              do
              {
                v334 = *(v0 + 2880);
                v335 = *(v0 + 2512);
                v336 = *(v0 + 2496);
                v16(v335, v331, v336);
                v337 = v34(v335, v336);
                v338 = *(v0 + 2512);
                if (v337 == v334)
                {
                  v332 = *(v0 + 2032);
                  v333 = *(v0 + 2024);
                  v382 = *(v0 + 2016);
                  v362 = *(v0 + 1992);
                  v368 = *(v0 + 1984);
                  v373 = *(v0 + 1976);
                  v375(v338, *(v0 + 2496));
                  v364 = v332;
                  (*(v333 + 32))(v332, v338, v382);
                  sub_1D2872418();
                  sub_1D2871EA8();
                  LOBYTE(v332) = sub_1D2871F78();
                  (*(v368 + 8))(v362, v373);
                  (*(v333 + 8))(v364, v382);
                  LOBYTE(v382) = v332 ^ 1;
                }

                else
                {
                  (*(*(v0 + 2504) + 8))(*(v0 + 2512), *(v0 + 2496));
                }

                v331 += v377;
                --v330;
              }

              while (v330);
LABEL_131:

              v351 = v382;
            }

            else
            {

              v351 = 0;
            }

            v352 = v351 & 1;
            *(v0 + 331) = v351 & 1;
            *(v0 + 2768) = sub_1D23C7314();
            *(v0 + 2776) = sub_1D2878558();
            v353 = swift_task_alloc();
            *(v0 + 2784) = v353;
            *v353 = v0;
            v353[1] = sub_1D26620A4;
            v354 = *(v0 + 1936);

            return sub_1D28421E4(v0 + 280, v354, v352);
          }

          sub_1D22D6D4C(v168, v169);
          sub_1D23EE050();
          v173 = swift_allocError();
          *v174 = 0;
          swift_willThrow();
          sub_1D22D6D4C(v168, v169);
          sub_1D2872658();
          v175 = v173;
          v176 = sub_1D2873CA8();
          v177 = sub_1D2878A18();

          if (os_log_type_enabled(v176, v177))
          {
            v178 = swift_slowAlloc();
            v179 = swift_slowAlloc();
            *v178 = 138412290;
            v180 = v173;
            v181 = _swift_stdlib_bridgeErrorToNSError();
            *(v178 + 4) = v181;
            *v179 = v181;
            _os_log_impl(&dword_1D226E000, v176, v177, "Could not decode image from recipe with error: %@", v178, 0xCu);
            sub_1D22BD238(v179, qword_1EC6DA930);
            MEMORY[0x1D38A3520](v179, -1, -1);
            MEMORY[0x1D38A3520](v178, -1, -1);
          }

          v387 = *(v0 + 2528);
          v182 = *(v0 + 2504);
          v183 = *(v0 + 2496);
          v184 = *(v0 + 2344);
          v185 = v176;
          v186 = *(v0 + 2336);
          v187 = *(v0 + 2328);
          v188 = *(v0 + 1960);
          v189 = *(v0 + 1952);
          v190 = *(v0 + 1944);

          (*(v186 + 8))(v184, v187);
          (*(v189 + 8))(v188, v190);
          v1 = (*(v182 + 8))(v387, v183);
          v4 = 0;
          goto LABEL_108;
        }

        if (v35 != *(v0 + 2876))
        {
          v4 = v384;
          if (v35 == *(v0 + 2880))
          {
            v234 = *(v0 + 2520);
            v235 = *(v0 + 2504);
            v236 = *(v0 + 2496);
            v237 = *(v0 + 2040);
            v238 = *(v0 + 2024);
            v239 = *(v0 + 2016);

            (*(v235 + 96))(v234, v236);
            (*(v238 + 32))(v237, v234, v239);
            sub_1D2872418();
            sub_1D2871EA8();
            if (sub_1D2871F78())
            {
              v240 = *(v0 + 2008);
              v241 = *(v0 + 1984);
              v242 = *(v0 + 1976);
              v243 = *(v0 + 1968);
              v244 = *(sub_1D23C6B54() + 64);
              sub_1D2870F68();

              *(swift_task_alloc() + 16) = v240;
              sub_1D274B77C(sub_1D264BD08, v244, v243);

              if ((*(v241 + 48))(v243, 1, v242) == 1)
              {
                sub_1D22BD238(*(v0 + 1968), &qword_1EC6D9A30);
                goto LABEL_89;
              }

              v294 = *(v0 + 2504);
              v376 = *(v0 + 2496);
              v381 = *(v0 + 2528);
              v295 = *(v0 + 2040);
              v296 = *(v0 + 2024);
              v297 = *(v0 + 2016);
              v298 = *(v0 + 2000);
              v299 = *(v0 + 1984);
              v300 = *(v0 + 1976);
              (*(v299 + 32))(v298, *(v0 + 1968), v300);
              *(v0 + 688) = v300;
              *(v0 + 696) = sub_1D2672E78(&qword_1ED8A6C20, MEMORY[0x1E696E310]);
              v301 = __swift_allocate_boxed_opaque_existential_1((v0 + 664));
              (*(v299 + 16))(v301, v298, v300);
              sub_1D267A600(v0 + 664, 1, v0 + 624);
              sub_1D22BD238(v0 + 624, &unk_1EC6E1D30);
              v302 = *(v299 + 8);
              v302(v298, v300);
              (*(v296 + 8))(v295, v297);
              (*(v294 + 8))(v381, v376);
              v4 = v384;
              __swift_destroy_boxed_opaque_existential_0(v0 + 664);
              v1 = (v302)(*(v0 + 2008), *(v0 + 1976));
            }

            else
            {
LABEL_89:
              v245 = *(v0 + 2008);
              v246 = MEMORY[0x1D389AA30]();
              LOBYTE(v245) = sub_1D22D19B8(v245, v246);

              if (v245)
              {
                v379 = *(v0 + 2528);
                v247 = *(v0 + 2504);
                v248 = *(v0 + 2496);
                v249 = *(v0 + 2040);
                v250 = *(v0 + 2024);
                v251 = *(v0 + 2016);
                v252 = *(v0 + 2008);
                v253 = *(v0 + 1984);
                v254 = *(v0 + 1976);
                *(v0 + 608) = v254;
                *(v0 + 616) = sub_1D2672E78(&qword_1ED8A6C20, MEMORY[0x1E696E310]);
                v255 = __swift_allocate_boxed_opaque_existential_1((v0 + 584));
                (*(v253 + 16))(v255, v252, v254);
                sub_1D267A600(v0 + 584, 1, v0 + 544);
                sub_1D22BD238(v0 + 544, &unk_1EC6E1D30);
                (*(v250 + 8))(v249, v251);
                (*(v247 + 8))(v379, v248);
                v4 = v384;
                __swift_destroy_boxed_opaque_existential_0(v0 + 584);
                v1 = (*(v253 + 8))(*(v0 + 2008), *(v0 + 1976));
              }

              else
              {
                v283 = *(v0 + 2008);
                v284 = *(v0 + 1992);
                v285 = *(v0 + 1984);
                v286 = *(v0 + 1976);
                sub_1D2871F48();
                LOBYTE(v283) = MEMORY[0x1D389AA00](v283, v284);
                v287 = *(v285 + 8);
                v287(v284, v286);
                v288 = *(v0 + 2528);
                v289 = *(v0 + 2504);
                v290 = *(v0 + 2496);
                v291 = *(v0 + 2040);
                v292 = *(v0 + 2024);
                v293 = *(v0 + 2016);
                if (v283)
                {
                  *(v0 + 528) = *(v0 + 1976);
                  *(v0 + 536) = sub_1D2672E78(&qword_1ED8A6C20, MEMORY[0x1E696E310]);
                  __swift_allocate_boxed_opaque_existential_1((v0 + 504));
                  MEMORY[0x1D389AA70]();
                  sub_1D267A600(v0 + 504, 1, v0 + 464);
                  sub_1D22BD238(v0 + 464, &unk_1EC6E1D30);
                  (*(v292 + 8))(v291, v293);
                  (*(v289 + 8))(v288, v290);
                  __swift_destroy_boxed_opaque_existential_0(v0 + 504);
                }

                else
                {
                  (*(v292 + 8))(*(v0 + 2040), *(v0 + 2016));
                  (*(v289 + 8))(v288, v290);
                }

                v1 = (v287)(*(v0 + 2008), *(v0 + 1976));
              }
            }
          }

          else
          {
            v256 = *(v0 + 2520);
            v257 = *(v0 + 2496);
            v258 = *(*(v0 + 2504) + 8);
            v258(*(v0 + 2528), v257);

            v1 = v258(v256, v257);
          }

LABEL_108:
          v5 = v382;
          goto LABEL_5;
        }

        v220 = *(v0 + 2520);
        v221 = *(v0 + 2504);
        v222 = *(v0 + 2496);
        v223 = *(v0 + 2120);
        v224 = *(v0 + 2104);
        v225 = *(v0 + 2096);

        (*(v221 + 96))(v220, v222);
        (*(v224 + 32))(v223, v220, v225);
        v226 = sub_1D23C6DDC();
        *(v0 + 1856) = v226;
        v227 = off_1F4DCA918[0];
        type metadata accessor for _PeopleRetrieval();
        v228 = v227();

        *(swift_task_alloc() + 16) = v223;
        sub_1D274BE58(sub_1D2672DCC, v228, v0 + 784);
        *(v0 + 2720) = v384;

        if (*(v0 + 808))
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAC08);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9A28);
          if (swift_dynamicCast())
          {
            v229 = v0 + 744;
            if (*(v0 + 768))
            {
              sub_1D227268C(v361, v0 + 704);
              sub_1D22D7044(v0 + 704, v0 + 984);
              if (swift_dynamicCast())
              {
                v230 = *(v0 + 2088);
                (*(*(v0 + 2056) + 56))(v230, 0, 1, *(v0 + 2048));
                v231 = *v230;
                v232 = v230[1];
                v233 = v230[2];
                *(v0 + 136) = v230[3];
                *(v0 + 120) = v233;
                *(v0 + 104) = v232;
                *(v0 + 88) = v231;
                sub_1D22D63B0(v0 + 88, v0 + 152);
                sub_1D2672F90(v230, type metadata accessor for PhotosPersonAsset);
                v1 = sub_1D2872298();
                *(v0 + 2728) = v2;
                if (v2)
                {
                  goto LABEL_137;
                }

                sub_1D22D640C(v0 + 88);
              }

              else
              {
                v303 = *(v0 + 2088);
                (*(*(v0 + 2056) + 56))(v303, 1, 1, *(v0 + 2048));
                sub_1D22BD238(v303, &unk_1EC6DDDC0);
              }

              v304 = *(v0 + 2528);
              v305 = *(v0 + 2504);
              v306 = *(v0 + 2496);
              v307 = *(v0 + 728);
              v308 = *(v0 + 736);
              v309 = __swift_project_boxed_opaque_existential_1((v0 + 704), v307);
              *(v0 + 1088) = v307;
              *(v0 + 1096) = *(v308 + 8);
              v310 = __swift_allocate_boxed_opaque_existential_1((v0 + 1064));
              (*(*(v307 - 8) + 16))(v310, v309, v307);
              v5 = 1;
              sub_1D267A600(v0 + 1064, 1, v0 + 1024);
              sub_1D22BD238(v0 + 1024, &unk_1EC6E1D30);
              (*(v305 + 8))(v304, v306);
              __swift_destroy_boxed_opaque_existential_0(v0 + 1064);
              v311 = *(v0 + 2104);
              __swift_destroy_boxed_opaque_existential_0(v0 + 704);
              v277 = *(v311 + 8);
              goto LABEL_105;
            }
          }

          else
          {
            *(v0 + 776) = 0;
            *v361 = 0u;
            *(v0 + 760) = 0u;
            v229 = v0 + 744;
          }
        }

        else
        {
          sub_1D22BD238(v0 + 784, &qword_1EC6DAD30);
          v229 = v0 + 744;
          *v361 = 0u;
          *(v0 + 760) = 0u;
          *(v0 + 776) = 0;
        }

        v259 = *(v0 + 2120);
        v260 = *(v0 + 2112);
        v261 = *(v0 + 2104);
        v262 = *(v0 + 2096);
        sub_1D22BD238(v229, &qword_1EC6D9A58);
        sub_1D2872658();
        (*(v261 + 16))(v260, v259, v262);
        v263 = sub_1D2873CA8();
        v264 = sub_1D2878A18();
        v265 = os_log_type_enabled(v263, v264);
        v266 = *(v0 + 2352);
        v267 = *(v0 + 2336);
        v268 = *(v0 + 2328);
        v269 = *(v0 + 2112);
        v270 = *(v0 + 2104);
        v271 = *(v0 + 2096);
        if (v265)
        {
          v272 = swift_slowAlloc();
          v388 = v268;
          *&v390[0] = swift_slowAlloc();
          v273 = *&v390[0];
          *v272 = 136315138;
          v366 = sub_1D28722B8();
          v380 = v266;
          v275 = v274;
          v371 = v264;
          v276 = *(v270 + 8);
          v276(v269, v271);
          v277 = v276;
          v278 = sub_1D23D7C84(v366, v275, v390);

          *(v272 + 4) = v278;
          _os_log_impl(&dword_1D226E000, v263, v371, "Cannot find person face with id: %s", v272, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v273);
          MEMORY[0x1D38A3520](v273, -1, -1);
          MEMORY[0x1D38A3520](v272, -1, -1);

          (*(v267 + 8))(v380, v388);
        }

        else
        {

          v279 = *(v270 + 8);
          v279(v269, v271);
          v277 = v279;
          (*(v267 + 8))(v266, v268);
        }

        v5 = v382;
        (*(v0 + 1880))(*(v0 + 2528));
        v280 = *(v0 + 2528);
        v281 = *(v0 + 2504);
        v282 = *(v0 + 2496);
        if (*(v0 + 928))
        {
          sub_1D227268C((v0 + 904), v0 + 864);
          v5 = 1;
          sub_1D267A600(v0 + 864, 1, v0 + 944);
          sub_1D22BD238(v0 + 944, &unk_1EC6E1D30);
          __swift_destroy_boxed_opaque_existential_0(v0 + 864);
          (*(v281 + 8))(v280, v282);
        }

        else
        {
          (*(v281 + 8))(*(v0 + 2528), *(v0 + 2496));
          sub_1D22BD238(v0 + 904, &unk_1EC6E1D30);
        }

LABEL_105:
        v1 = (v277)(*(v0 + 2120), *(v0 + 2096));
        v4 = *(v0 + 2720);
        goto LABEL_5;
      }

      v100 = *(v0 + 2520);
      v101 = *(v0 + 2504);
      v102 = *(v0 + 2496);
      v103 = *(v0 + 2152);
      v104 = *(v0 + 2144);
      v105 = *(v0 + 2136);
      v106 = *(v0 + 2128);

      (*(v101 + 96))(v100, v102);
      (*(v105 + 32))(v103, v100, v106);
      sub_1D2878C18();
      (*(v105 + 16))(v104, v103, v106);
      v107 = sub_1D2878BD8();
      *(v0 + 2672) = v107;
      if (v107)
      {
        *(v0 + 2680) = sub_1D23C7314();
        *(v0 + 2688) = sub_1D2878558();
        v323 = sub_1D28784F8();
        v135 = v324;
        *(v0 + 2696) = v323;
        *(v0 + 2704) = v324;
        v133 = sub_1D265BF5C;
        v134 = v323;
        goto LABEL_117;
      }

      v108 = *(v0 + 2528);
      v109 = *(v0 + 2504);
      v110 = *(v0 + 2496);
      (*(*(v0 + 2136) + 8))(*(v0 + 2152), *(v0 + 2128));
      v1 = (*(v109 + 8))(v108, v110);
      v5 = *(v0 + 330);
      v4 = *(v0 + 2592);
    }

LABEL_5:
    v6 = *(v0 + 2600) + 1;
    if (v6 == *(v0 + 2576))
    {
      goto LABEL_109;
    }
  }

  __break(1u);
LABEL_137:
  v355 = v1;
  v356 = v2;
  *(v0 + 2736) = sub_1D23C6DDC();
  *(v0 + 216) = *(v0 + 88);
  *(v0 + 232) = *(v0 + 104);
  *(v0 + 248) = *(v0 + 120);
  *(v0 + 264) = *(v0 + 136);
  v357 = swift_task_alloc();
  *(v0 + 2744) = v357;
  *v357 = v0;
  v357[1] = sub_1D265EFD8;
  v358 = *(v0 + 2080);

  return sub_1D255FA4C(v358, v355, v356, v0 + 216);
}