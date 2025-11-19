uint64_t sub_1D2489FF0(char a1)
{
  v2 = *v1;
  *(*v1 + 368) = a1;

  v3 = *(v2 + 264);
  v4 = *(v2 + 256);

  return MEMORY[0x1EEE6DFA0](sub_1D248A118, v4, v3);
}

uint64_t sub_1D248A118()
{
  v46 = v0;
  v2 = *(v0 + 296);
  v1 = *(v0 + 304);
  v3 = *(v0 + 200);
  v4 = sub_1D23C6DDC();
  swift_getKeyPath();
  *(v0 + 152) = v3;
  v5 = (v3 + v2);
  sub_1D28719E8();

  v6 = v5[1];
  v45[0] = *v5;
  v45[1] = v6;
  v7 = v5[3];
  v45[2] = v5[2];
  v45[3] = v7;
  v8 = sub_1D26134C8(v45);
  if (v8 == *(v3 + v1))
  {
    v12 = *(v0 + 304);
    v13 = *(v0 + 200);

    *(v13 + v12) = v8;
    v9 = *(v0 + 320);
  }

  else
  {
    v9 = *(v0 + 320);
    v10 = *(v0 + 200);
    swift_getKeyPath();
    v11 = swift_task_alloc();
    *(v11 + 16) = v10;
    *(v11 + 24) = v8;
    *(v0 + 160) = v10;
    sub_1D28719D8();
  }

  *(v0 + 352) = v9;
  if (sub_1D28786D8())
  {
    sub_1D24902A4(*(v0 + 240), type metadata accessor for CarouselFace);
    goto LABEL_6;
  }

  if (*(v0 + 368) == 1)
  {
    sub_1D28724C8();
    v19 = sub_1D2873CA8();
    v20 = sub_1D28789F8();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = *(v0 + 336);
      v22 = swift_slowAlloc();
      *v22 = 134217984;
      *(v22 + 4) = v21;
      _os_log_impl(&dword_1D226E000, v19, v20, "Asking face generation at index %ld.", v22, 0xCu);
      MEMORY[0x1D38A3520](v22, -1, -1);
    }

    v24 = *(v0 + 216);
    v23 = *(v0 + 224);
    v25 = *(v0 + 208);

    (*(v24 + 8))(v23, v25);
    v26 = swift_task_alloc();
    *(v0 + 360) = v26;
    *v26 = v0;
    v26[1] = sub_1D248A8EC;
    v27 = *(v0 + 240);

    return sub_1D248B558(v27);
  }

  v28 = *(v0 + 312);
  v29 = *(v0 + 200);
  if (*(v29 + v28) == 1)
  {
    *(v29 + v28) = 1;
  }

  else
  {
    swift_getKeyPath();
    v30 = swift_task_alloc();
    *(v30 + 16) = v29;
    *(v30 + 24) = 1;
    *(v0 + 168) = v29;
    sub_1D28719D8();
  }

  v31 = *(v0 + 240);
  v32 = sub_1D28786D8();
  sub_1D24902A4(v31, type metadata accessor for CarouselFace);
  if (v32)
  {
LABEL_6:

    if (sub_1D28786D8())
    {
LABEL_8:

      v17 = *(v0 + 8);

      return v17();
    }

LABEL_7:
    v14 = *(v0 + 200);
    v15 = v14 + *(v0 + 280);
    swift_getKeyPath();
    *(v0 + 176) = v14;
    sub_1D28719E8();

    *(v0 + 184) = v14;
    swift_getKeyPath();
    sub_1D2871A08();

    v16 = MEMORY[0x1E69E7CC0];
    *v15 = 0;
    *(v15 + 8) = v16;
    *(v15 + 16) = 0;
    *(v15 + 24) = 1;

    *(v0 + 192) = v14;
    swift_getKeyPath();
    sub_1D28719F8();

    goto LABEL_8;
  }

  v33 = *(v0 + 200);
  v34 = v33 + *(v0 + 280);
  swift_getKeyPath();
  *(v0 + 88) = v33;
  v35 = sub_1D2490324(&qword_1EC6D9A38, type metadata accessor for FacePickerCarouselViewModel);
  sub_1D28719E8();

  if (!*(*(v34 + 8) + 16))
  {

    if (sub_1D28786D8())
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  *(v0 + 320) = v9;
  *(v0 + 328) = v35;
  v36 = *(v0 + 200);
  v44 = v36 + *(v0 + 280);
  swift_getKeyPath();
  *(v0 + 96) = v36;
  sub_1D28719E8();

  *(v0 + 104) = v36;
  swift_getKeyPath();
  sub_1D2871A08();

  v37 = *(v44 + 8);
  if (!*(v37 + 16))
  {
    __break(1u);
    goto LABEL_31;
  }

  v38 = *(v0 + 200);
  v39 = v38 + *(v0 + 280);
  v43 = *(v37 + 32);
  *(v0 + 336) = v43;
  sub_1D278D144(0, 1);
  *(v0 + 112) = v38;
  swift_getKeyPath();
  sub_1D28719F8();

  swift_getKeyPath();
  *(v0 + 120) = v38;
  sub_1D28719E8();

  *(v0 + 128) = v38;
  swift_getKeyPath();
  sub_1D2871A08();

  *(v39 + 16) = v43;
  *(v39 + 24) = 0;
  *(v0 + 136) = v38;
  swift_getKeyPath();
  sub_1D28719F8();

  swift_getKeyPath();
  *(v0 + 144) = v38;
  sub_1D28719E8();

  if ((v43 & 0x8000000000000000) != 0)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v40 = *(v38 + 48);
  if (v43 >= *(v40 + 16))
  {
LABEL_32:
    __break(1u);
    return result;
  }

  sub_1D249023C(v40 + ((*(*(v0 + 232) + 80) + 32) & ~*(*(v0 + 232) + 80)) + *(*(v0 + 232) + 72) * v43, *(v0 + 240), type metadata accessor for CarouselFace);
  v41 = swift_task_alloc();
  *(v0 + 344) = v41;
  *v41 = v0;
  v41[1] = sub_1D2489FF0;
  v42 = *(v0 + 240);

  return sub_1D248AE8C(v42);
}

uint64_t sub_1D248A8EC()
{
  v1 = *v0;

  v2 = *(v1 + 264);
  v3 = *(v1 + 256);

  return MEMORY[0x1EEE6DFA0](sub_1D248AA0C, v3, v2);
}

uint64_t sub_1D248AA0C()
{
  v1 = v0[44];
  v2 = v0[30];
  v3 = sub_1D28786D8();
  sub_1D24902A4(v2, type metadata accessor for CarouselFace);
  if (v3)
  {

    if (sub_1D28786D8())
    {
LABEL_4:

      v7 = v0[1];

      return v7();
    }

LABEL_3:
    v4 = v0[25];
    v5 = v4 + v0[35];
    swift_getKeyPath();
    v0[22] = v4;
    sub_1D28719E8();

    v0[23] = v4;
    swift_getKeyPath();
    sub_1D2871A08();

    v6 = MEMORY[0x1E69E7CC0];
    *v5 = 0;
    *(v5 + 8) = v6;
    *(v5 + 16) = 0;
    *(v5 + 24) = 1;

    v0[24] = v4;
    swift_getKeyPath();
    sub_1D28719F8();

    goto LABEL_4;
  }

  v9 = v0[25];
  v10 = v9 + v0[35];
  swift_getKeyPath();
  v0[11] = v9;
  v11 = sub_1D2490324(&qword_1EC6D9A38, type metadata accessor for FacePickerCarouselViewModel);
  sub_1D28719E8();

  if (!*(*(v10 + 8) + 16))
  {

    if (sub_1D28786D8())
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v0[40] = v1;
  v0[41] = v11;
  v12 = v0[25];
  v13 = v12 + v0[35];
  swift_getKeyPath();
  v0[12] = v12;
  sub_1D28719E8();

  v0[13] = v12;
  swift_getKeyPath();
  sub_1D2871A08();

  v14 = *(v13 + 8);
  if (!*(v14 + 16))
  {
    __break(1u);
    goto LABEL_17;
  }

  v15 = v0[25];
  v16 = v15 + v0[35];
  v17 = *(v14 + 32);
  v0[42] = v17;
  sub_1D278D144(0, 1);
  v0[14] = v15;
  swift_getKeyPath();
  sub_1D28719F8();

  swift_getKeyPath();
  v0[15] = v15;
  sub_1D28719E8();

  v0[16] = v15;
  swift_getKeyPath();
  sub_1D2871A08();

  *(v16 + 16) = v17;
  *(v16 + 24) = 0;
  v0[17] = v15;
  swift_getKeyPath();
  sub_1D28719F8();

  swift_getKeyPath();
  v0[18] = v15;
  sub_1D28719E8();

  if ((v17 & 0x8000000000000000) != 0)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v18 = *(v15 + 48);
  if (v17 >= *(v18 + 16))
  {
LABEL_18:
    __break(1u);
    return result;
  }

  sub_1D249023C(v18 + ((*(v0[29] + 80) + 32) & ~*(v0[29] + 80)) + *(v0[29] + 72) * v17, v0[30], type metadata accessor for CarouselFace);
  v19 = swift_task_alloc();
  v0[43] = v19;
  *v19 = v0;
  v19[1] = sub_1D2489FF0;
  v20 = v0[30];

  return sub_1D248AE8C(v20);
}

uint64_t sub_1D248AE8C(uint64_t a1)
{
  v2[2] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC0F0);
  v4 = swift_task_alloc();
  v2[3] = v4;
  v5 = type metadata accessor for FacePickerPersistentStorage.GeneratedPreviewArchive(0);
  v2[4] = v5;
  v2[5] = *(v5 - 8);
  v2[6] = swift_task_alloc();
  v2[7] = sub_1D2878568();
  v2[8] = sub_1D2878558();
  v6 = swift_task_alloc();
  v2[9] = v6;
  *v6 = v2;
  v6[1] = sub_1D248AFEC;

  return sub_1D24886D4(v4, a1);
}

uint64_t sub_1D248AFEC()
{
  v1 = *v0;

  v3 = sub_1D28784F8();
  *(v1 + 80) = v3;
  *(v1 + 88) = v2;

  return MEMORY[0x1EEE6DFA0](sub_1D248B130, v3, v2);
}

uint64_t sub_1D248B130()
{
  v1 = v0[3];
  if ((*(v0[5] + 48))(v1, 1, v0[4]) == 1)
  {

    sub_1D22BD238(v1, &qword_1EC6DC0F0);

    v2 = v0[1];

    return v2(1);
  }

  else
  {
    sub_1D249006C(v1, v0[6], type metadata accessor for FacePickerPersistentStorage.GeneratedPreviewArchive);
    v0[12] = sub_1D23C8400();
    v0[13] = sub_1D2878558();
    v5 = sub_1D28784F8();
    v0[14] = v5;
    v0[15] = v4;

    return MEMORY[0x1EEE6DFA0](sub_1D248B28C, v5, v4);
  }
}

uint64_t sub_1D248B28C()
{
  v1 = *(*(v0 + 96) + 32);
  v2 = swift_task_alloc();
  *(v0 + 128) = v2;
  *v2 = v0;
  v2[1] = sub_1D248B328;

  return sub_1D2496DB0(v1);
}

uint64_t sub_1D248B328(char a1)
{
  v2 = *v1;
  *(*v1 + 136) = a1;

  v3 = *(v2 + 120);
  v4 = *(v2 + 112);

  return MEMORY[0x1EEE6DFA0](sub_1D248B450, v4, v3);
}

uint64_t sub_1D248B450()
{

  v1 = *(v0 + 80);
  v2 = *(v0 + 88);

  return MEMORY[0x1EEE6DFA0](sub_1D248B4BC, v1, v2);
}

uint64_t sub_1D248B4BC()
{
  v1 = *(v0 + 48);

  sub_1D24902A4(v1, type metadata accessor for FacePickerPersistentStorage.GeneratedPreviewArchive);
  v2 = *(v0 + 136);

  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_1D248B558(uint64_t a1)
{
  v2[35] = a1;
  v2[36] = v1;
  v3 = sub_1D2873CB8();
  v2[37] = v3;
  v2[38] = *(v3 - 8);
  v2[39] = swift_task_alloc();
  v4 = sub_1D2878538();
  v2[40] = v4;
  v2[41] = *(v4 - 8);
  v2[42] = swift_task_alloc();
  type metadata accessor for GeneratedPreviewOptions(0);
  v2[43] = swift_task_alloc();
  sub_1D2878568();
  v2[44] = sub_1D2878558();
  v6 = sub_1D28784F8();
  v2[45] = v6;
  v2[46] = v5;

  return MEMORY[0x1EEE6DFA0](sub_1D248B6D4, v6, v5);
}

uint64_t sub_1D248B6D4()
{
  sub_1D2488474(*(v0 + 344));
  *(v0 + 376) = sub_1D23C8400();
  v1 = swift_task_alloc();
  *(v0 + 384) = v1;
  *v1 = v0;
  v1[1] = sub_1D248B794;
  v2 = *(v0 + 344);
  v3 = *(v0 + 280);

  return sub_1D25F8358(v0 + 16, v3, v2);
}

uint64_t sub_1D248B794()
{
  v2 = *v1;
  *(*v1 + 392) = v0;

  v3 = *(v2 + 368);
  v4 = *(v2 + 360);
  if (v0)
  {
    v5 = sub_1D248BDAC;
  }

  else
  {
    v5 = sub_1D248B8E8;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

void sub_1D248B8E8()
{
  v2 = v0[35];
  v1 = v0[36];

  swift_getKeyPath();
  v0[28] = v1;
  v25 = (v0 + 2);
  sub_1D2490324(&qword_1EC6D9A38, type metadata accessor for FacePickerCarouselViewModel);
  sub_1D28719E8();

  swift_beginAccess();
  v3 = *(v1 + 48);
  v4 = swift_task_alloc();
  *(v4 + 16) = v2;
  sub_1D2870F68();
  v5 = sub_1D25A6234(sub_1D2490030, v4, v3);
  v7 = v6;

  if ((v7 & 1) == 0)
  {
    v8 = v0[36];
    v23 = (v0 + 7);
    sub_1D22D7044(v25, (v0 + 7));
    swift_getKeyPath();
    v0[32] = v8;
    sub_1D28719E8();

    v0[33] = v8;
    swift_getKeyPath();
    sub_1D2871A08();

    swift_beginAccess();
    v9 = *(v1 + 48);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v1 + 48) = v9;
    v11 = v1;
    if (isUniquelyReferenced_nonNull_native)
    {
      v12 = v5;
      if ((v5 & 0x8000000000000000) == 0)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v9 = sub_1D278BD1C(v9);
      *(v1 + 48) = v9;
      v12 = v5;
      if ((v5 & 0x8000000000000000) == 0)
      {
LABEL_4:
        if (v12 < v9[2])
        {
          v13 = v0[43];
          v14 = v0[36];
          type metadata accessor for CarouselFace();
          sub_1D252FAD0(v23, v13);
          sub_1D22BD238(v23, &qword_1EC6DA470);
          *(v11 + 48) = v9;
          swift_endAccess();
          v0[34] = v14;
          swift_getKeyPath();
          sub_1D28719F8();

          goto LABEL_6;
        }

LABEL_12:
        __break(1u);
        goto LABEL_13;
      }
    }

    __break(1u);
    goto LABEL_12;
  }

LABEL_6:
  type metadata accessor for PhotosPersonAsset();
  v15 = objc_opt_self();
  v16 = sub_1D2878068();
  v17 = [v15 uuidFromLocalIdentifier_];

  if (!v17)
  {
LABEL_13:
    __break(1u);
    return;
  }

  v24 = v0[43];
  v18 = v0[36];
  v19 = sub_1D28780A8();
  v21 = v20;

  swift_getKeyPath();
  v0[29] = v18;
  sub_1D28719E8();

  v0[30] = v18;
  swift_getKeyPath();
  sub_1D2871A08();

  swift_beginAccess();
  sub_1D25CFE48(0, v19, v21);
  swift_endAccess();
  sub_1D2484650();
  v0[31] = v18;
  swift_getKeyPath();
  sub_1D28719F8();

  __swift_destroy_boxed_opaque_existential_0(v25);
  sub_1D24902A4(v24, type metadata accessor for GeneratedPreviewOptions);

  v22 = v0[1];

  v22();
}

void sub_1D248BDAC()
{
  v1 = v0[49];
  sub_1D24902A4(v0[43], type metadata accessor for GeneratedPreviewOptions);
  v0[24] = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D94B0);
  if (swift_dynamicCast())
  {
    v3 = v0[49];
    v5 = v0[41];
    v4 = v0[42];
    v6 = v0[40];

    (*(v5 + 8))(v4, v6);
  }

  else
  {
    type metadata accessor for PhotosPersonAsset();
    v7 = objc_opt_self();
    v8 = sub_1D2878068();
    v9 = [v7 uuidFromLocalIdentifier_];

    if (!v9)
    {
      __break(1u);
      return;
    }

    v10 = v0[49];
    v11 = v0[36];

    v26 = sub_1D28780A8();
    v13 = v12;

    swift_getKeyPath();
    v0[25] = v11;
    v14 = v10;
    sub_1D2490324(&qword_1EC6D9A38, type metadata accessor for FacePickerCarouselViewModel);
    sub_1D28719E8();

    v0[26] = v11;
    swift_getKeyPath();
    sub_1D2871A08();

    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = *(v11 + 56);
    *(v11 + 56) = 0x8000000000000000;
    sub_1D24E9C84(v10, v26, v13, isUniquelyReferenced_nonNull_native);

    *(v11 + 56) = v27;
    swift_endAccess();
    sub_1D2484650();
    v0[27] = v11;
    swift_getKeyPath();
    sub_1D28719F8();

    sub_1D28724C8();
    v16 = v10;
    v17 = sub_1D2873CA8();
    v18 = sub_1D2878A18();

    v19 = os_log_type_enabled(v17, v18);
    v20 = v0[49];
    if (v19)
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      *v21 = 138412290;
      v23 = v20;
      v24 = _swift_stdlib_bridgeErrorToNSError();
      *(v21 + 4) = v24;
      *v22 = v24;
      _os_log_impl(&dword_1D226E000, v17, v18, "Failed to generate face preview with error: %@", v21, 0xCu);
      sub_1D22BD238(v22, qword_1EC6DA930);
      MEMORY[0x1D38A3520](v22, -1, -1);
      MEMORY[0x1D38A3520](v21, -1, -1);
    }

    else
    {
    }

    (*(v0[38] + 8))(v0[39], v0[37]);
  }

  v25 = v0[1];

  v25();
}

uint64_t sub_1D248C1C0()
{
  v1 = v0;
  v19 = type metadata accessor for PhotosPersonAsset();
  MEMORY[0x1EEE9AC00](v19);
  v3 = &v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1D23C6DDC();
  swift_getKeyPath();
  v5 = OBJC_IVAR____TtC23ImagePlaygroundInternal27FacePickerCarouselViewModel___observationRegistrar;
  v26 = v0;
  v6 = sub_1D2490324(&qword_1EC6D9A38, type metadata accessor for FacePickerCarouselViewModel);
  sub_1D28719E8();

  v7 = (v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal27FacePickerCarouselViewModel__initiallySelectedPersonAsset);
  swift_beginAccess();
  v24 = v3;
  sub_1D249023C(v7, v3, type metadata accessor for PhotosPersonAsset);
  swift_getKeyPath();
  v25 = v0;
  v22 = v6;
  v23 = v5;
  sub_1D28719E8();

  v18 = v7[2];
  v9 = v7[3];
  v8 = v7[4];
  v10 = v7[7];
  swift_getKeyPath();
  v25 = v4;
  sub_1D2870F68();
  sub_1D2870F68();
  v21 = v8;
  sub_1D2396784(v8);
  sub_1D2490324(&qword_1ED8A3208, type metadata accessor for _PeopleRetrieval);
  v20 = v10;
  sub_1D28719E8();

  if (swift_weakLoadStrong() && (sub_1D23C6CA0(), , v11 = _SystemPhotoLibrary.photoLibrary.getter(), , v11))
  {
    v12 = v24;
    sub_1D2613084(*&v24[*(v19 + 20)], *&v24[*(v19 + 20) + 8], v18, v9);

    v4 = v11;
  }

  else
  {

    v12 = v24;
  }

  sub_1D238D058(v21);
  sub_1D24902A4(v12, type metadata accessor for PhotosPersonAsset);
  swift_getKeyPath();
  v25 = v1;
  sub_1D28719E8();

  if (v1[4])
  {
    v13 = v1[5];
    ObjectType = swift_getObjectType();
    v15 = *(v13 + 16);
    swift_unknownObjectRetain();
    v15(ObjectType, v13);
    swift_unknownObjectRelease();
  }

  sub_1D248C544();
  return sub_1D248C868();
}

uint64_t sub_1D248C544()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9A30);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v19 - v3;
  swift_getKeyPath();
  v20 = v0;
  sub_1D2490324(&qword_1EC6D9A38, type metadata accessor for FacePickerCarouselViewModel);
  sub_1D28719E8();

  v6 = OBJC_IVAR____TtC23ImagePlaygroundInternal27FacePickerCarouselViewModel__didLogAppearanceAnalytics;
  if ((*(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal27FacePickerCarouselViewModel__didLogAppearanceAnalytics) & 1) == 0)
  {
    swift_getKeyPath();
    v20 = v0;
    sub_1D28719E8();

    v7 = *(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal27FacePickerCarouselViewModel__creationViewStyle);
    if (v7 != 7)
    {
      if (*(v0 + v6) == 1)
      {
        *(v0 + v6) = 1;
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

      swift_getKeyPath();
      v20 = v0;
      sub_1D28719E8();

      v9 = *(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal27FacePickerCarouselViewModel__hadGeneratedBeforeAppearing);
      swift_getKeyPath();
      v20 = v0;
      sub_1D28719E8();

      v10 = *(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal27FacePickerCarouselViewModel__didSelectLookBeforeAppearing);
      v11 = dword_1D288B554[v7];
      v12 = OBJC_IVAR____TtC23ImagePlaygroundInternal27FacePickerCarouselViewModel_defaultStyle;
      v13 = sub_1D2872008();
      v14 = *(v13 - 8);
      (*(v14 + 16))(v4, v1 + v12, v13);
      (*(v14 + 56))(v4, 0, 1, v13);
      v15 = sub_1D24198DC(v4);
      if (v10)
      {
        v16 = 0x10000;
      }

      else
      {
        v16 = 0;
      }

      v17 = v16 | (v15 << 24);
      if (v9)
      {
        v18 = 256;
      }

      else
      {
        v18 = 0;
      }

      return sub_1D279C210(v17 | v18 | v11);
    }
  }

  return result;
}

uint64_t sub_1D248C868()
{
  swift_getKeyPath();
  sub_1D2490324(&qword_1EC6D9A38, type metadata accessor for FacePickerCarouselViewModel);
  sub_1D28719E8();

  swift_getKeyPath();
  sub_1D2871A08();

  v1 = v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal27FacePickerCarouselViewModel__generationTaskContext;
  swift_beginAccess();
  if (*v1)
  {
    sub_1D28786B8();
  }

  v2 = MEMORY[0x1E69E7CC0];
  *v1 = 0;
  *(v1 + 8) = v2;
  *(v1 + 16) = 0;
  *(v1 + 24) = 1;
  swift_endAccess();

  swift_getKeyPath();
  sub_1D28719F8();
}

void sub_1D248C9F0()
{
  v1 = v0;
  v2 = type metadata accessor for PhotosPersonImage();
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v25[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v25[-v6];
  v8 = type metadata accessor for CarouselFace();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v25[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = type metadata accessor for PhotosPersonAsset();
  v12 = v11 - 8;
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v25[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1D24864FC(v10);
  sub_1D249023C(v10, v14, type metadata accessor for PhotosPersonAsset);
  sub_1D24902A4(v10, type metadata accessor for CarouselFace);
  sub_1D249023C(&v14[*(v12 + 28)], v7, type metadata accessor for PhotosPersonImage);
  sub_1D24902A4(v14, type metadata accessor for PhotosPersonAsset);
  swift_getKeyPath();
  v27 = v0;
  sub_1D2490324(&qword_1EC6D9A38, type metadata accessor for FacePickerCarouselViewModel);
  sub_1D28719E8();

  v15 = v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal27FacePickerCarouselViewModel__initiallySelectedPersonAsset;
  swift_beginAccess();
  sub_1D249023C(v15 + *(v12 + 28), v4, type metadata accessor for PhotosPersonImage);
  v16 = *v7 == *v4 && *(v7 + 1) == *(v4 + 1);
  if (!v16 && (sub_1D2879618() & 1) == 0)
  {
    goto LABEL_8;
  }

  v17 = v4[24];
  if (v7[24])
  {
    if (!v4[24])
    {
LABEL_8:
      v18 = 1;
      goto LABEL_13;
    }
  }

  else
  {
    if (*(v7 + 2) != *(v4 + 2))
    {
      v17 = 1;
    }

    if (v17)
    {
      goto LABEL_8;
    }
  }

  type metadata accessor for PlaygroundImage();
  v18 = _s23ImagePlaygroundInternal0A10GenerationV07PreviewA0V2eeoiySbAE_AEtFZ_0() ^ 1;
LABEL_13:
  sub_1D24902A4(v4, type metadata accessor for PhotosPersonImage);
  sub_1D24902A4(v7, type metadata accessor for PhotosPersonImage);
  swift_getKeyPath();
  v26 = v0;
  sub_1D28719E8();

  v20 = *(v15 + 16);
  v19 = *(v15 + 24);
  sub_1D2870F68();
  v21 = sub_1D2613014(v20, v19);
  if (v21)
  {
    v22 = *(v21 + 16);

    v23 = v22 == 0;
  }

  else
  {

    v23 = 1;
  }

  if (sub_1D2871F78() & 1) != 0 && ((v18 | v23))
  {
    if (*(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal27FacePickerCarouselViewModel__shouldPresentPhotoSharingConfirmation) == 1)
    {
      *(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal27FacePickerCarouselViewModel__shouldPresentPhotoSharingConfirmation) = 1;
    }

    else
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath);
      *&v25[-16] = v1;
      v25[-8] = 1;
      v26 = v1;
      sub_1D28719D8();
    }
  }

  else
  {
    sub_1D248CE40();
  }
}

void sub_1D248CE40()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8F70);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v42 - v3;
  v44 = type metadata accessor for PhotosPersonAsset();
  MEMORY[0x1EEE9AC00](v44);
  v45 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = (&v42 - v7);
  MEMORY[0x1EEE9AC00](v9);
  v53 = &v42 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v13 = (&v42 - v12);
  v14 = type metadata accessor for CarouselFace();
  MEMORY[0x1EEE9AC00](v14 - 8);
  v52 = &v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v42 - v17;
  v19 = type metadata accessor for PersonAttributesPickerViewModel();
  MEMORY[0x1EEE9AC00](v19 - 8);
  v21 = &v42 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = *(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal27FacePickerCarouselViewModel_servicesFetcher);
  v48 = sub_1D23C7F70();
  swift_getKeyPath();
  v22 = OBJC_IVAR____TtC23ImagePlaygroundInternal27FacePickerCarouselViewModel___observationRegistrar;
  v56 = v1;
  v50 = sub_1D2490324(&qword_1EC6D9A38, type metadata accessor for FacePickerCarouselViewModel);
  v51 = v22;
  sub_1D28719E8();

  v23 = OBJC_IVAR____TtC23ImagePlaygroundInternal27FacePickerCarouselViewModel__attributesViewModel;
  swift_beginAccess();
  sub_1D249023C(v1 + v23, v21, type metadata accessor for PersonAttributesPickerViewModel);
  sub_1D24FBFBC(&v56);
  sub_1D24902A4(v21, type metadata accessor for PersonAttributesPickerViewModel);
  v54 = v56;
  v55 = v57;
  sub_1D24864FC(v18);
  sub_1D249023C(v18, v13, type metadata accessor for PhotosPersonAsset);
  sub_1D24902A4(v18, type metadata accessor for CarouselFace);
  v24 = v13[4];
  v26 = v13[5];
  v25 = v13[6];
  v27 = v13[7];
  sub_1D2870F68();
  sub_1D2870F68();
  v46 = v25;
  v47 = v26;
  sub_1D2396784(v24);
  v28 = v27;
  sub_1D24902A4(v13, type metadata accessor for PhotosPersonAsset);
  if (v27)
  {
    v43 = v24;
    v28 = v28;
    v29 = [v28 localIdentifier];
    if (!v29)
    {
      sub_1D28780A8();
      v29 = sub_1D2878068();
    }

    v30 = [objc_opt_self() uuidFromLocalIdentifier_];

    v31 = v52;
    if (!v30)
    {
      __break(1u);
      return;
    }

    sub_1D28780A8();

    sub_1D28717A8();

    v24 = v43;
  }

  else
  {
    v32 = sub_1D2871818();
    (*(*(v32 - 8) + 56))(v4, 1, 1, v32);

    v31 = v52;
  }

  sub_1D238D058(v24);

  sub_1D260F8D0(&v54, v4);

  sub_1D22BD238(v4, &qword_1EC6D8F70);

  v33 = sub_1D23C6DDC();
  sub_1D24864FC(v31);
  sub_1D249023C(v31, v53, type metadata accessor for PhotosPersonAsset);
  sub_1D24902A4(v31, type metadata accessor for CarouselFace);
  sub_1D24864FC(v31);
  sub_1D249023C(v31, v8, type metadata accessor for PhotosPersonAsset);
  sub_1D24902A4(v31, type metadata accessor for CarouselFace);
  v49 = v8[2];
  v35 = v8[3];
  v34 = v8[4];
  v36 = v8[7];
  sub_1D2870F68();
  sub_1D2870F68();
  sub_1D2396784(v34);
  v52 = v36;
  sub_1D24902A4(v8, type metadata accessor for PhotosPersonAsset);
  swift_getKeyPath();
  v56 = v33;
  sub_1D2490324(&qword_1ED8A3208, type metadata accessor for _PeopleRetrieval);
  sub_1D28719E8();

  if (swift_weakLoadStrong() && (sub_1D23C6CA0(), , v37 = _SystemPhotoLibrary.photoLibrary.getter(), , v37))
  {
    v38 = v53;
    sub_1D2613084(*(v53 + *(v44 + 20)), *(v53 + *(v44 + 20) + 8), v49, v35);

    v33 = v37;
  }

  else
  {

    v38 = v53;
  }

  sub_1D238D058(v34);
  sub_1D24902A4(v38, type metadata accessor for PhotosPersonAsset);
  swift_getKeyPath();
  v56 = v1;
  sub_1D28719E8();

  if (*(v1 + 32))
  {
    v39 = *(v1 + 40);
    ObjectType = swift_getObjectType();
    swift_unknownObjectRetain();
    sub_1D24864FC(v31);
    v41 = v45;
    sub_1D249023C(v31, v45, type metadata accessor for PhotosPersonAsset);
    sub_1D24902A4(v31, type metadata accessor for CarouselFace);
    (*(v39 + 24))(v1, v41, ObjectType, v39);
    swift_unknownObjectRelease();
    sub_1D24902A4(v41, type metadata accessor for PhotosPersonAsset);
  }

  sub_1D248C544();
  sub_1D248C868();
}

uint64_t sub_1D248D640()
{
  swift_getKeyPath();
  sub_1D2490324(&qword_1EC6D9A38, type metadata accessor for FacePickerCarouselViewModel);
  sub_1D28719E8();

  swift_getKeyPath();
  sub_1D2871A08();

  v1 = OBJC_IVAR____TtC23ImagePlaygroundInternal27FacePickerCarouselViewModel__showPersonAttributes;
  v2 = *(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal27FacePickerCarouselViewModel__showPersonAttributes) ^ 1;
  *(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal27FacePickerCarouselViewModel__showPersonAttributes) = v2 & 1;
  swift_getKeyPath();
  sub_1D28719E8();

  if ((*(v0 + v1) & 1) == 0 && (v2 & 1) == 0)
  {
    sub_1D2487BA8();
  }

  swift_getKeyPath();
  sub_1D28719F8();
}

uint64_t sub_1D248D7A8()
{
  swift_getKeyPath();
  sub_1D2490324(&qword_1EC6D9A38, type metadata accessor for FacePickerCarouselViewModel);
  sub_1D28719E8();

  v1 = *(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal27FacePickerCarouselViewModel__shouldDismissFacePickerGrid);
  sub_1D23415B4(v1, *(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal27FacePickerCarouselViewModel__shouldDismissFacePickerGrid + 8));
  return v1;
}

uint64_t sub_1D248D868(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = (a1 + OBJC_IVAR____TtC23ImagePlaygroundInternal27FacePickerCarouselViewModel__shouldDismissFacePickerGrid);
  v4 = *(a1 + OBJC_IVAR____TtC23ImagePlaygroundInternal27FacePickerCarouselViewModel__shouldDismissFacePickerGrid);
  v5 = *(a1 + OBJC_IVAR____TtC23ImagePlaygroundInternal27FacePickerCarouselViewModel__shouldDismissFacePickerGrid + 8);
  *v3 = a2;
  v3[1] = a3;
  sub_1D23415B4(a2, a3);
  return sub_1D22D7900(v4, v5);
}

void *sub_1D248D8C0(uint64_t a1)
{
  v2 = type metadata accessor for CarouselFace();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v19[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = type metadata accessor for PhotosPersonAsset();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v19[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = *(a1 + OBJC_IVAR____TtC23ImagePlaygroundInternal27FacePickerCarouselViewModel_servicesFetcher);
  sub_1D24864FC(v4);
  sub_1D249023C(v4, v8, type metadata accessor for PhotosPersonAsset);
  sub_1D24902A4(v4, type metadata accessor for CarouselFace);
  v10 = v8[1];
  v24 = *v8;
  v25 = v10;
  v11 = v8[3];
  v26 = v8[2];
  v27 = v11;
  sub_1D22D63B0(&v24, &v23);
  sub_1D24902A4(v8, type metadata accessor for PhotosPersonAsset);
  v13 = *(a1 + 16);
  v12 = *(a1 + 24);
  type metadata accessor for FacePickerGridViewModel();
  v14 = swift_allocObject();
  v14[4] = 0;
  v14[5] = 0;
  (*(v6 + 56))(v14 + OBJC_IVAR____TtC23ImagePlaygroundInternal23FacePickerGridViewModel__selectedAsset, 1, 1, v5);
  *(v14 + OBJC_IVAR____TtC23ImagePlaygroundInternal23FacePickerGridViewModel__allLookAssets) = MEMORY[0x1E69E7CC0];
  sub_1D2870F68();
  sub_1D2871A18();
  *(v14 + OBJC_IVAR____TtC23ImagePlaygroundInternal23FacePickerGridViewModel_servicesFetcher) = v9;
  v15 = (v14 + OBJC_IVAR____TtC23ImagePlaygroundInternal23FacePickerGridViewModel__person);
  v16 = v27;
  v15[2] = v26;
  v15[3] = v16;
  v17 = v25;
  *v15 = v24;
  v15[1] = v17;
  v14[2] = v13;
  v14[3] = v12;
  sub_1D2870F78();
  sub_1D24A1770();
  swift_getKeyPath();
  v20 = v14;
  v21 = a1;
  v22 = &off_1F4DC5F60;
  v23 = v14;
  sub_1D2490324(&qword_1EC6DC0F8, type metadata accessor for FacePickerGridViewModel);
  sub_1D28719D8();

  return v14;
}

uint64_t sub_1D248DB9C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X4>, uint64_t (*a3)(void)@<X5>, uint64_t a4@<X8>)
{
  v7 = *a1;
  swift_getKeyPath();
  sub_1D2490324(&qword_1EC6D9A38, type metadata accessor for FacePickerCarouselViewModel);
  sub_1D28719E8();

  v8 = *a2;
  swift_beginAccess();
  return sub_1D249023C(v7 + v8, a4, a3);
}

uint64_t sub_1D248DC70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(void), uint64_t (*a7)(char *))
{
  v10 = a5(0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v14 - v11;
  sub_1D249023C(a1, &v14 - v11, a6);
  return a7(v12);
}

uint64_t sub_1D248DD14(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC23ImagePlaygroundInternal27FacePickerCarouselViewModel__initiallySelectedPersonAsset;
  swift_beginAccess();
  sub_1D248FECC(a2, a1 + v4, type metadata accessor for PhotosPersonAsset);
  return swift_endAccess();
}

uint64_t sub_1D248DDA8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D2490324(&qword_1EC6D9A38, type metadata accessor for FacePickerCarouselViewModel);
  sub_1D28719E8();

  v4 = v3 + OBJC_IVAR____TtC23ImagePlaygroundInternal27FacePickerCarouselViewModel__generationTaskContext;
  swift_beginAccess();
  v5 = *(v4 + 8);
  v6 = *(v4 + 16);
  v7 = *(v4 + 24);
  *a2 = *v4;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6;
  *(a2 + 24) = v7;
  sub_1D2870F78();
  return sub_1D2870F68();
}

uint64_t sub_1D248DE8C()
{
  swift_getKeyPath();
  sub_1D2490324(&qword_1EC6D9A38, type metadata accessor for FacePickerCarouselViewModel);
  sub_1D28719D8();
}

uint64_t sub_1D248DF74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v9 = a1 + OBJC_IVAR____TtC23ImagePlaygroundInternal27FacePickerCarouselViewModel__generationTaskContext;
  swift_beginAccess();
  *v9 = a2;
  *(v9 + 8) = a3;
  *(v9 + 16) = a4;
  *(v9 + 24) = a5 & 1;
  sub_1D2870F78();
  sub_1D2870F68();
}

void sub_1D248E01C()
{
  type metadata accessor for PhotosPersonAsset();
  v0 = objc_opt_self();
  v1 = sub_1D2878068();
  v2 = [v0 uuidFromLocalIdentifier_];

  if (!v2)
  {
    __break(1u);
    goto LABEL_10;
  }

  v3 = sub_1D28780A8();
  v5 = v4;

  v6 = sub_1D2878068();
  v7 = [v0 uuidFromLocalIdentifier_];

  if (!v7)
  {
LABEL_10:
    __break(1u);
    return;
  }

  v8 = sub_1D28780A8();
  v10 = v9;

  if (v3 != v8 || v5 != v10)
  {
    sub_1D2879618();
  }
}

uint64_t sub_1D248E164(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[51] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC0D8);
  v4[52] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DDDC0);
  v4[53] = swift_task_alloc();
  v5 = type metadata accessor for PhotosPersonAsset();
  v4[54] = v5;
  v4[55] = *(v5 - 8);
  v4[56] = swift_task_alloc();
  v4[57] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC0E0);
  v4[58] = v6;
  v4[59] = *(v6 - 8);
  v4[60] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC0E8);
  v4[61] = v7;
  v4[62] = *(v7 - 8);
  v4[63] = swift_task_alloc();
  v8 = type metadata accessor for CarouselFace();
  v4[64] = v8;
  v4[65] = *(v8 - 8);
  v4[66] = swift_task_alloc();
  v4[67] = swift_task_alloc();
  v4[68] = swift_task_alloc();
  v4[69] = swift_task_alloc();
  v4[70] = swift_task_alloc();
  v4[71] = swift_task_alloc();
  v4[72] = sub_1D2878568();
  v4[73] = sub_1D2878558();
  v10 = sub_1D28784F8();
  v4[74] = v10;
  v4[75] = v9;

  return MEMORY[0x1EEE6DFA0](sub_1D248E444, v10, v9);
}

uint64_t sub_1D248E444()
{
  v38 = v0;
  v1 = *(v0 + 408);
  sub_1D24864FC(*(v0 + 568));
  swift_getKeyPath();
  *(v0 + 608) = OBJC_IVAR____TtC23ImagePlaygroundInternal27FacePickerCarouselViewModel___observationRegistrar;
  *(v0 + 328) = v1;
  *(v0 + 616) = sub_1D2490324(&qword_1EC6D9A38, type metadata accessor for FacePickerCarouselViewModel);
  sub_1D28719E8();

  *(v0 + 336) = v1;
  swift_getKeyPath();
  sub_1D2871A08();

  swift_beginAccess();
  v2 = *(v1 + 48);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v1 + 48) = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_1D27CCD4C(0, v2[2] + 1, 1, v2);
    *(v1 + 48) = v2;
  }

  v5 = v2[2];
  v4 = v2[3];
  if (v5 >= v4 >> 1)
  {
    v2 = sub_1D27CCD4C(v4 > 1, v5 + 1, 1, v2);
  }

  v6 = *(v0 + 568);
  v7 = *(v0 + 560);
  v8 = *(v0 + 520);
  v9 = *(v0 + 408);
  v2[2] = v5 + 1;
  v10 = *(v8 + 80);
  *(v0 + 672) = v10;
  v11 = *(v8 + 72);
  *(v0 + 624) = v11;
  sub_1D249006C(v6, v2 + ((v10 + 32) & ~v10) + v11 * v5, type metadata accessor for CarouselFace);
  *(v1 + 48) = v2;
  swift_endAccess();
  *(v0 + 344) = v9;
  swift_getKeyPath();
  sub_1D28719F8();

  sub_1D24864FC(v7);
  v12 = objc_opt_self();
  *(v0 + 632) = v12;
  v13 = sub_1D2878068();
  v14 = [v12 uuidFromLocalIdentifier_];

  if (v14)
  {
    v19 = *(v0 + 560);
    v20 = *(v0 + 552);
    v21 = *(v0 + 480);
    v36 = *(v0 + 472);
    v22 = *(v0 + 456);
    v35 = *(v0 + 464);
    v23 = sub_1D28780A8();
    v25 = v24;

    sub_1D24902A4(v19, type metadata accessor for CarouselFace);
    sub_1D2486380(v23, v25);
    v26 = sub_1D23C6DDC();
    sub_1D24864FC(v20);
    sub_1D249023C(v20, v22, type metadata accessor for PhotosPersonAsset);
    sub_1D24902A4(v20, type metadata accessor for CarouselFace);
    v27 = v22[3];
    v29 = *v22;
    v28 = v22[1];
    *(v0 + 48) = v22[2];
    *(v0 + 64) = v27;
    *(v0 + 16) = v29;
    *(v0 + 32) = v28;
    sub_1D22D63B0(v0 + 16, v0 + 80);
    sub_1D24902A4(v22, type metadata accessor for PhotosPersonAsset);
    v30 = *(v0 + 32);
    v37[0] = *(v0 + 16);
    v37[1] = v30;
    v31 = *(v0 + 64);
    v37[2] = *(v0 + 48);
    v37[3] = v31;
    sub_1D255AA0C(v37, 1);
    sub_1D22D640C(v0 + 16);
    sub_1D2878658();

    (*(v36 + 8))(v21, v35);
    *(v0 + 640) = OBJC_IVAR____TtC23ImagePlaygroundInternal27FacePickerCarouselViewModel__selectedFaceID;
    *(v0 + 648) = OBJC_IVAR____TtC23ImagePlaygroundInternal27FacePickerCarouselViewModel__initiallySelectedPersonAsset;
    swift_beginAccess();
    v32 = sub_1D2878558();
    *(v0 + 656) = v32;
    v33 = swift_task_alloc();
    *(v0 + 664) = v33;
    *v33 = v0;
    v33[1] = sub_1D248E8B4;
    v18 = *(v0 + 488);
    v15 = *(v0 + 424);
    v17 = MEMORY[0x1E69E85E0];
    v16 = v32;
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x1EEE6D9C8](v15, v16, v17, v18);
}

uint64_t sub_1D248E8B4()
{
  v1 = *v0;

  v2 = *(v1 + 600);
  v3 = *(v1 + 592);

  return MEMORY[0x1EEE6DFA0](sub_1D248E9F8, v3, v2);
}

uint64_t sub_1D248E9F8()
{
  v1 = *(v0 + 424);
  if ((*(*(v0 + 440) + 48))(v1, 1, *(v0 + 432)) == 1)
  {
    v2 = *(v0 + 408);
    (*(*(v0 + 496) + 8))(*(v0 + 504), *(v0 + 488));

    swift_getKeyPath();
    *(v0 + 352) = v2;
    sub_1D28719E8();

    if (*(v2 + OBJC_IVAR____TtC23ImagePlaygroundInternal27FacePickerCarouselViewModel__generationWasRequested))
    {
      sub_1D248567C();
    }

    v3 = *(v0 + 8);

    return v3();
  }

  else
  {
    v5 = *(v0 + 408);
    sub_1D249006C(v1, *(v0 + 448), type metadata accessor for PhotosPersonAsset);
    swift_getKeyPath();
    *(v0 + 360) = v5;
    sub_1D28719E8();

    v6 = *(*(v5 + 48) + 16);
    v77 = *(v5 + 48);
    sub_1D2870F68();
    v76 = v6;
    if (v6)
    {
      v7 = 0;
      v75 = v77 + ((*(v0 + 672) + 32) & ~*(v0 + 672));
      while (1)
      {
        if (v7 >= *(v77 + 16))
        {
          __break(1u);
          goto LABEL_54;
        }

        v8 = *(v0 + 632);
        sub_1D249023C(v75 + *(v0 + 624) * v7, *(v0 + 536), type metadata accessor for CarouselFace);
        v9 = sub_1D2878068();
        v10 = [v8 uuidFromLocalIdentifier_];

        if (!v10)
        {
          break;
        }

        v15 = *(v0 + 608);
        v16 = *(v0 + 408);
        v17 = (v16 + *(v0 + 640));
        v18 = sub_1D28780A8();
        v20 = v19;

        swift_getKeyPath();
        *(v0 + 368) = v16;
        v6 = v16 + v15;
        sub_1D28719E8();

        v21 = v17[1];
        if (v21)
        {
          if (v18 == *v17 && v21 == v20)
          {

LABEL_23:

            v30 = *(v0 + 544);
            v31 = *(v0 + 520);
            v32 = *(v0 + 512);
            v33 = *(v0 + 416);
            sub_1D249006C(*(v0 + 536), v33, type metadata accessor for CarouselFace);
            (*(v31 + 56))(v33, 0, 1, v32);
            sub_1D249006C(v33, v30, type metadata accessor for CarouselFace);
            goto LABEL_24;
          }

          v6 = sub_1D2879618();

          if (v6)
          {
            goto LABEL_23;
          }
        }

        else
        {
        }

        ++v7;
        sub_1D24902A4(*(v0 + 536), type metadata accessor for CarouselFace);
        if (v76 == v7)
        {
          goto LABEL_20;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_20:
      v23 = *(v0 + 648);
      v24 = *(v0 + 544);
      v25 = *(v0 + 520);
      v26 = *(v0 + 512);
      v28 = *(v0 + 408);
      v27 = *(v0 + 416);

      (*(v25 + 56))(v27, 1, 1, v26);
      swift_getKeyPath();
      *(v0 + 400) = v28;
      sub_1D28719E8();

      sub_1D249023C(v28 + v23, v24, type metadata accessor for PhotosPersonAsset);
      v29 = *(v26 + 20);
      *(v24 + v29) = sub_1D25D81C4(MEMORY[0x1E69E7CC0]);
      if ((*(v25 + 48))(v27, 1, v26) != 1)
      {
        sub_1D22BD238(*(v0 + 416), &qword_1EC6DC0D8);
      }

LABEL_24:
      v34 = *(v0 + 544);
      v36 = *(v34 + 16);
      v35 = *(v34 + 24);
      v37 = *(v34 + 32);
      if (v37)
      {
        v38 = *(v34 + 40);
        *(v0 + 240) = v37;
        *(v0 + 248) = v38;
        v39 = sub_1D24FBD9C();
        if (v40)
        {
          v41 = v39;
        }

        else
        {
          v41 = 0;
        }

        if (v40)
        {
          v42 = v40;
        }

        else
        {
          v42 = 0xE000000000000000;
        }

        *(v0 + 312) = v36;
        *(v0 + 320) = v35;
        sub_1D2870F68();
        MEMORY[0x1D38A0C50](v41, v42);

        v36 = *(v0 + 312);
        v35 = *(v0 + 320);
        v34 = *(v0 + 544);
      }

      else
      {
        sub_1D2870F68();
      }

      v43 = *(v0 + 448);
      v44 = (v34 + *(*(v0 + 432) + 20));
      v45 = *v44;
      v46 = v44[1];
      *(v0 + 264) = v36;
      *(v0 + 272) = v35;
      sub_1D2870F68();
      MEMORY[0x1D38A0C50](v45, v46);

      v48 = *(v0 + 264);
      v47 = *(v0 + 272);
      sub_1D24902A4(v34, type metadata accessor for CarouselFace);
      v50 = v43[2];
      v49 = v43[3];
      v51 = v43[4];
      if (v51)
      {
        v52 = *(*(v0 + 448) + 40);
        *(v0 + 216) = v51;
        *(v0 + 224) = v52;
        v53 = sub_1D24FBD9C();
        if (v54)
        {
          v55 = v53;
        }

        else
        {
          v55 = 0;
        }

        if (v54)
        {
          v56 = v54;
        }

        else
        {
          v56 = 0xE000000000000000;
        }

        *(v0 + 296) = v50;
        *(v0 + 304) = v49;
        sub_1D2870F68();
        MEMORY[0x1D38A0C50](v55, v56);

        v50 = *(v0 + 296);
        v49 = *(v0 + 304);
      }

      else
      {
        sub_1D2870F68();
      }

      v57 = (*(v0 + 448) + *(*(v0 + 432) + 20));
      v58 = *v57;
      v59 = v57[1];
      *(v0 + 280) = v50;
      *(v0 + 288) = v49;
      sub_1D2870F68();
      MEMORY[0x1D38A0C50](v58, v59);

      if (v48 == *(v0 + 280) && v47 == *(v0 + 288))
      {
      }

      else
      {
        v60 = sub_1D2879618();

        if ((v60 & 1) == 0)
        {
          v61 = *(v0 + 528);
          v62 = *(v0 + 512);
          v63 = *(v0 + 408);
          sub_1D249023C(*(v0 + 448), v61, type metadata accessor for PhotosPersonAsset);
          v64 = *(v62 + 20);
          *(v61 + v64) = sub_1D25D81C4(MEMORY[0x1E69E7CC0]);
          swift_getKeyPath();
          *(v0 + 376) = v63;
          sub_1D28719E8();

          *(v0 + 384) = v63;
          swift_getKeyPath();
          sub_1D2871A08();

          swift_beginAccess();
          v6 = *(v63 + 48);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *(v63 + 48) = v6;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
LABEL_54:
            v74 = *(v0 + 408);
            v6 = sub_1D27CCD4C(0, *(v6 + 16) + 1, 1, v6);
            *(v74 + 48) = v6;
          }

          v67 = *(v6 + 16);
          v66 = *(v6 + 24);
          if (v67 >= v66 >> 1)
          {
            v6 = sub_1D27CCD4C(v66 > 1, v67 + 1, 1, v6);
          }

          v68 = *(v0 + 624);
          v69 = *(v0 + 672);
          v70 = *(v0 + 528);
          v71 = *(v0 + 408);
          *(v6 + 16) = v67 + 1;
          sub_1D249006C(v70, v6 + ((v69 + 32) & ~v69) + v68 * v67, type metadata accessor for CarouselFace);
          *(v71 + 48) = v6;
          swift_endAccess();
          *(v0 + 392) = v71;
          swift_getKeyPath();
          sub_1D28719F8();
        }
      }

      sub_1D24902A4(*(v0 + 448), type metadata accessor for PhotosPersonAsset);
      v72 = sub_1D2878558();
      *(v0 + 656) = v72;
      v73 = swift_task_alloc();
      *(v0 + 664) = v73;
      *v73 = v0;
      v73[1] = sub_1D248E8B4;
      v14 = *(v0 + 488);
      v11 = *(v0 + 424);
      v13 = MEMORY[0x1E69E85E0];
      v12 = v72;
    }

    return MEMORY[0x1EEE6D9C8](v11, v12, v13, v14);
  }
}

uint64_t sub_1D248F2F4()
{

  swift_unknownObjectRelease();

  sub_1D24902A4(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal27FacePickerCarouselViewModel__attributesViewModel, type metadata accessor for PersonAttributesPickerViewModel);

  sub_1D22D7900(*(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal27FacePickerCarouselViewModel__shouldDismissFacePickerGrid), *(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal27FacePickerCarouselViewModel__shouldDismissFacePickerGrid + 8));

  sub_1D24902A4(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal27FacePickerCarouselViewModel__initiallySelectedPersonAsset, type metadata accessor for PhotosPersonAsset);

  v1 = OBJC_IVAR____TtC23ImagePlaygroundInternal27FacePickerCarouselViewModel_defaultStyle;
  v2 = sub_1D2872008();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC23ImagePlaygroundInternal27FacePickerCarouselViewModel___observationRegistrar;
  v4 = sub_1D2871A28();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  return v0;
}

uint64_t sub_1D248F4B0()
{
  sub_1D248F2F4();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for FacePickerCarouselViewModel()
{
  result = qword_1EC6D8178;
  if (!qword_1EC6D8178)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D248F55C()
{
  result = type metadata accessor for PersonAttributesPickerViewModel();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for PhotosPersonAsset();
    if (v2 <= 0x3F)
    {
      result = sub_1D2872008();
      if (v3 <= 0x3F)
      {
        result = sub_1D2871A28();
        if (v4 <= 0x3F)
        {
          return swift_updateClassMetadata2();
        }
      }
    }
  }

  return result;
}

uint64_t sub_1D248F718(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 25))
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

uint64_t sub_1D248F760(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 25) = 1;
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

    *(result + 25) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1D248F7C0()
{
  swift_getKeyPath();
  sub_1D2490324(&qword_1EC6D9A38, type metadata accessor for FacePickerCarouselViewModel);
  sub_1D28719E8();

  return *(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal27FacePickerCarouselViewModel__showPersonAttributes);
}

uint64_t sub_1D248F868(void *a1, void *a2)
{
  v5 = a1[2];
  v4 = a1[3];
  if (a1[4])
  {
    v6 = sub_1D24FBD9C();
    if (v7)
    {
      v8 = v6;
    }

    else
    {
      v8 = 0;
    }

    if (v7)
    {
      v9 = v7;
    }

    else
    {
      v9 = 0xE000000000000000;
    }

    sub_1D2870F68();
    MEMORY[0x1D38A0C50](v8, v9);
  }

  else
  {
    sub_1D2870F68();
  }

  v10 = type metadata accessor for PhotosPersonAsset();
  v11 = (a1 + *(v10 + 20));
  v12 = *v11;
  v13 = v11[1];
  v26 = v4;
  sub_1D2870F68();
  MEMORY[0x1D38A0C50](v12, v13);

  v14 = v5;
  v16 = a2[2];
  v15 = a2[3];
  if (a2[4])
  {
    v17 = sub_1D24FBD9C();
    if (v18)
    {
      v19 = v17;
    }

    else
    {
      v19 = 0;
    }

    if (v18)
    {
      v20 = v18;
    }

    else
    {
      v20 = 0xE000000000000000;
    }

    sub_1D2870F68();
    MEMORY[0x1D38A0C50](v19, v20);
  }

  else
  {
    sub_1D2870F68();
  }

  v21 = (a2 + *(v10 + 20));
  v22 = *v21;
  v23 = v21[1];
  sub_1D2870F68();
  MEMORY[0x1D38A0C50](v22, v23);

  if (v14 == v16 && v26 == v15)
  {
    v24 = 1;
  }

  else
  {
    v24 = sub_1D2879618();
  }

  return v24 & 1;
}

uint64_t sub_1D248FA3C(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC23ImagePlaygroundInternal27FacePickerCarouselViewModel__selectedFaceID);
  v6 = *(v2 + OBJC_IVAR____TtC23ImagePlaygroundInternal27FacePickerCarouselViewModel__selectedFaceID + 8);
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
    sub_1D2490324(&qword_1EC6D9A38, type metadata accessor for FacePickerCarouselViewModel);
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

uint64_t sub_1D248FBB8@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  sub_1D2490324(&qword_1EC6D9A38, type metadata accessor for FacePickerCarouselViewModel);
  sub_1D28719E8();

  v3 = *(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal27FacePickerCarouselViewModel__selectedFaceID + 8);
  *a1 = *(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal27FacePickerCarouselViewModel__selectedFaceID);
  a1[1] = v3;
  return sub_1D2870F68();
}

uint64_t sub_1D248FC7C@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D2490324(&qword_1EC6DC0F8, type metadata accessor for FacePickerGridViewModel);
  sub_1D28719E8();

  *a2 = *(v3 + 32);
  return swift_unknownObjectRetain();
}

uint64_t sub_1D248FD2C()
{
  swift_getKeyPath();
  sub_1D2490324(&qword_1EC6DC0F8, type metadata accessor for FacePickerGridViewModel);
  sub_1D28719D8();
}

uint64_t sub_1D248FDFC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1D22BDFF8;

  return sub_1D248E164(a1, v4, v5, v6);
}

uint64_t sub_1D248FECC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 24))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D248FF4C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1D22BC8FC;

  return sub_1D24899E8(a1, v4, v5, v6);
}

uint64_t sub_1D249006C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D2490168()
{
  v1 = v0[4];
  v2 = (v0[2] + OBJC_IVAR____TtC23ImagePlaygroundInternal27FacePickerCarouselViewModel__selectedFaceID);
  *v2 = v0[3];
  v2[1] = v1;
  sub_1D2870F68();
}

uint64_t sub_1D249023C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D24902A4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D2490324(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1D249036C(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC100);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v86 = &v86 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC0D8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v98 = &v86 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v86 - v9;
  v97 = type metadata accessor for CarouselFace();
  v99 = *(v97 - 8);
  MEMORY[0x1EEE9AC00](v97);
  v87 = &v86 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v108 = &v86 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v96 = &v86 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v86 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v88 = &v86 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v86 - v22;
  swift_getKeyPath();
  v24 = OBJC_IVAR____TtC23ImagePlaygroundInternal27FacePickerCarouselViewModel___observationRegistrar;
  v111 = v1;
  v25 = sub_1D2490324(&qword_1EC6D9A38, type metadata accessor for FacePickerCarouselViewModel);
  sub_1D28719E8();

  v26 = *(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal27FacePickerCarouselViewModel__shouldDismissFacePickerGrid);
  if (v26)
  {
    v27 = *(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal27FacePickerCarouselViewModel__shouldDismissFacePickerGrid + 8);
    v28 = sub_1D2870F78();
    v26(v28);
    sub_1D22D7900(v26, v27);
  }

  sub_1D24835A8(0);
  swift_getKeyPath();
  v111 = v2;
  sub_1D28719E8();

  v29 = swift_beginAccess();
  v30 = *(v2 + 48);
  MEMORY[0x1EEE9AC00](v29);
  *(&v86 - 2) = a1;
  sub_1D2870F68();
  sub_1D274B814(sub_1D2491130, v30, v10);

  v31 = *(v99 + 48);
  v32 = v97;
  v91 = v99 + 48;
  v90 = v31;
  if (v31(v10, 1, v97) == 1)
  {
    sub_1D22BD238(v10, &qword_1EC6DC0D8);
    v33 = v88;
    sub_1D249023C(a1, v88, type metadata accessor for PhotosPersonAsset);
    v34 = *(v32 + 20);
    *(v33 + v34) = sub_1D25D81C4(MEMORY[0x1E69E7CC0]);
    swift_getKeyPath();
    v110 = v2;
    sub_1D28719E8();

    v35 = *(v2 + 48);
    v36 = *(v35 + 16);
    v37 = OBJC_IVAR____TtC23ImagePlaygroundInternal27FacePickerCarouselViewModel__selectedFaceID;
    v38 = OBJC_IVAR____TtC23ImagePlaygroundInternal27FacePickerCarouselViewModel__initiallySelectedPersonAsset;
    sub_1D2870F68();
    v89 = v38;
    swift_beginAccess();
    v92 = v36;
    if (v36)
    {
      v39 = 0;
      v103 = (v2 + v37);
      v95 = (v99 + 56);
      v104 = v25;
      v105 = v24;
      v94 = v18;
      v93 = v35;
      while (1)
      {
        if (v39 >= *(v35 + 16))
        {
          goto LABEL_43;
        }

        v40 = (*(v99 + 80) + 32) & ~*(v99 + 80);
        v41 = *(v99 + 72);
        v102 = v39;
        sub_1D249023C(v35 + v40 + v41 * v39, v18, type metadata accessor for CarouselFace);
        v106 = type metadata accessor for PhotosPersonAsset();
        v42 = objc_opt_self();
        v43 = sub_1D2878068();
        v107 = v42;
        v44 = [v42 uuidFromLocalIdentifier_];

        if (!v44)
        {
          goto LABEL_47;
        }

        v100 = sub_1D28780A8();
        v101 = v45;

        swift_getKeyPath();
        v109 = v2;
        v35 = v2 + v24;
        sub_1D28719E8();

        v46 = v2;
        v47 = *(v2 + 48);
        v2 = *(v47 + 16);
        sub_1D2870F68();
        if (v2)
        {
          v48 = 0;
          v49 = v47 + v40;
          while (v48 < *(v47 + 16))
          {
            sub_1D249023C(v49, v108, type metadata accessor for CarouselFace);
            v50 = sub_1D2878068();
            v51 = [v107 uuidFromLocalIdentifier_];

            if (!v51)
            {
              goto LABEL_46;
            }

            v52 = sub_1D28780A8();
            v54 = v53;

            swift_getKeyPath();
            v109 = v46;
            v35 = v46 + v105;
            sub_1D28719E8();

            v55 = v103[1];
            if (v55)
            {
              if (v52 == *v103 && v55 == v54)
              {

LABEL_24:

                v61 = v98;
                sub_1D249006C(v108, v98, type metadata accessor for CarouselFace);
                (*v95)(v61, 0, 1, v97);
                v59 = v96;
                sub_1D249006C(v61, v96, type metadata accessor for CarouselFace);
                v2 = v46;
                v24 = v105;
                goto LABEL_25;
              }

              v35 = sub_1D2879618();

              if (v35)
              {
                goto LABEL_24;
              }
            }

            else
            {
            }

            ++v48;
            sub_1D24902A4(v108, type metadata accessor for CarouselFace);
            v49 += v41;
            if (v2 == v48)
            {
              goto LABEL_21;
            }
          }

          __break(1u);
LABEL_43:
          __break(1u);
          goto LABEL_44;
        }

LABEL_21:

        v57 = v98;
        v58 = v97;
        (*v95)(v98, 1, 1, v97);
        swift_getKeyPath();
        v2 = v46;
        v109 = v46;
        v24 = v105;
        sub_1D28719E8();

        v59 = v96;
        sub_1D249023C(v46 + v89, v96, type metadata accessor for PhotosPersonAsset);
        v60 = *(v58 + 20);
        *(v59 + v60) = sub_1D25D81C4(MEMORY[0x1E69E7CC0]);
        if (v90(v57, 1, v58) != 1)
        {
          sub_1D22BD238(v98, &qword_1EC6DC0D8);
        }

LABEL_25:
        v62 = sub_1D2878068();
        v63 = [v107 uuidFromLocalIdentifier_];

        if (!v63)
        {
          goto LABEL_48;
        }

        v64 = sub_1D28780A8();
        v66 = v65;

        sub_1D24902A4(v59, type metadata accessor for CarouselFace);
        if (v100 == v64 && v101 == v66)
        {
          break;
        }

        v67 = sub_1D2879618();

        v18 = v94;
        sub_1D24902A4(v94, type metadata accessor for CarouselFace);
        v68 = v102;
        v35 = v93;
        if (v67)
        {
          goto LABEL_37;
        }

        v39 = v102 + 1;
        if (v102 + 1 == v92)
        {
          goto LABEL_30;
        }
      }

      sub_1D24902A4(v94, type metadata accessor for CarouselFace);
      v68 = v102;
LABEL_37:

      swift_getKeyPath();
      v109 = v2;
      sub_1D28719E8();

      v109 = v2;
      swift_getKeyPath();
      sub_1D2871A08();

      swift_beginAccess();
      if (*(*(v2 + 48) + 16) >= v68)
      {
        v72 = v88;
        v79 = v86;
        sub_1D249023C(v88, v86, type metadata accessor for CarouselFace);
        sub_1D278C008(v68, v68, v79);
        swift_endAccess();
        v109 = v2;
        swift_getKeyPath();
        sub_1D28719F8();

        goto LABEL_39;
      }

      __break(1u);
LABEL_46:
      __break(1u);
LABEL_47:
      __break(1u);
LABEL_48:
      __break(1u);
      goto LABEL_49;
    }

LABEL_30:

    sub_1D249023C(v88, v87, type metadata accessor for CarouselFace);
    swift_getKeyPath();
    v109 = v2;
    sub_1D28719E8();

    v109 = v2;
    swift_getKeyPath();
    sub_1D2871A08();

    swift_beginAccess();
    v35 = *(v2 + 48);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v2 + 48) = v35;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
LABEL_44:
      v35 = sub_1D27CCD4C(0, *(v35 + 16) + 1, 1, v35);
      *(v2 + 48) = v35;
    }

    v71 = *(v35 + 16);
    v70 = *(v35 + 24);
    if (v71 >= v70 >> 1)
    {
      v35 = sub_1D27CCD4C(v70 > 1, v71 + 1, 1, v35);
    }

    *(v35 + 16) = v71 + 1;
    sub_1D249006C(v87, v35 + ((*(v99 + 80) + 32) & ~*(v99 + 80)) + *(v99 + 72) * v71, type metadata accessor for CarouselFace);
    *(v2 + 48) = v35;
    swift_endAccess();
    v109 = v2;
    swift_getKeyPath();
    sub_1D28719F8();

    v72 = v88;
LABEL_39:
    type metadata accessor for PhotosPersonAsset();
    v23 = v72;
    v80 = objc_opt_self();
    v81 = sub_1D2878068();
    v82 = [v80 uuidFromLocalIdentifier_];

    if (!v82)
    {
      goto LABEL_50;
    }

    v83 = sub_1D28780A8();
    v85 = v84;

    sub_1D2486380(v83, v85);
    sub_1D248567C();
LABEL_41:
    sub_1D24902A4(v23, type metadata accessor for CarouselFace);
    return;
  }

  sub_1D249006C(v10, v23, type metadata accessor for CarouselFace);
  type metadata accessor for PhotosPersonAsset();
  v73 = objc_opt_self();
  v74 = sub_1D2878068();
  v75 = [v73 uuidFromLocalIdentifier_];

  if (v75)
  {
    v76 = sub_1D28780A8();
    v78 = v77;

    sub_1D2486380(v76, v78);
    goto LABEL_41;
  }

LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
}

uint64_t ImageGenerationPerson.DemographicTraits.skinTone.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ImageGenerationPerson.DemographicTraits() + 20);

  return sub_1D24912B8(v3, a1);
}

uint64_t type metadata accessor for ImageGenerationPerson.DemographicTraits()
{
  result = qword_1ED8A6EF8;
  if (!qword_1ED8A6EF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D24912B8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6E33C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

BOOL _s23ImagePlaygroundInternal0A16GenerationPersonV17DemographicTraitsV2eeoiySbAE_AEtFZ_0(_BYTE *a1, unsigned __int8 *a2)
{
  v4 = type metadata accessor for ImageGenerationPerson.SkinTone();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6E33C0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v25 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC108);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v25 - v12;
  v14 = *a2;
  if (*a1 == 3)
  {
    if (v14 != 3)
    {
      return 0;
    }
  }

  else
  {
    if (v14 == 3)
    {
      return 0;
    }

    v26 = v7;
    v15 = sub_1D2873768();
    v17 = v16;
    if (v15 == sub_1D2873768() && v17 == v18)
    {

      v7 = v26;
      goto LABEL_9;
    }

    v19 = sub_1D2879618();

    v7 = v26;
    if ((v19 & 1) == 0)
    {
      return 0;
    }
  }

LABEL_9:
  v20 = *(type metadata accessor for ImageGenerationPerson.DemographicTraits() + 20);
  v21 = *(v11 + 48);
  sub_1D24912B8(&a1[v20], v13);
  sub_1D24912B8(&a2[v20], &v13[v21]);
  v22 = *(v5 + 48);
  if (v22(v13, 1, v4) == 1)
  {
    if (v22(&v13[v21], 1, v4) == 1)
    {
      goto LABEL_19;
    }

    goto LABEL_14;
  }

  sub_1D24912B8(v13, v10);
  if (v22(&v13[v21], 1, v4) == 1)
  {
    sub_1D24917E0(v10);
LABEL_14:
    sub_1D22BD238(v13, &qword_1EC6DC108);
    return 0;
  }

  sub_1D249183C(&v13[v21], v7);
  sub_1D28737A8();
  sub_1D2439848();
  sub_1D2878368();
  sub_1D2878368();
  if (v29 == v27 && v30 == v28)
  {
    sub_1D24917E0(v7);

    sub_1D24917E0(v10);
LABEL_19:
    sub_1D22BD238(v13, &unk_1EC6E33C0);
    return 1;
  }

  v24 = sub_1D2879618();
  sub_1D24917E0(v7);

  sub_1D24917E0(v10);
  sub_1D22BD238(v13, &unk_1EC6E33C0);
  return (v24 & 1) != 0;
}

void sub_1D249170C()
{
  sub_1D2491788();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_1D2491788()
{
  if (!qword_1ED8A6E30)
  {
    type metadata accessor for ImageGenerationPerson.SkinTone();
    v0 = sub_1D2878F18();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED8A6E30);
    }
  }
}

uint64_t sub_1D24917E0(uint64_t a1)
{
  v2 = type metadata accessor for ImageGenerationPerson.SkinTone();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D249183C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ImageGenerationPerson.SkinTone();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t ImageGenerationPerson.Appearance.id.getter()
{
  if (*v0 == 3)
  {
    return 0x6669636570736E75;
  }

  else
  {
    return sub_1D2873768();
  }
}

uint64_t ImageGenerationPerson.Appearance.localizedGenderDescription.getter()
{
  v1 = sub_1D28718F8();
  MEMORY[0x1EEE9AC00](v1 - 8);
  v2 = sub_1D2878048();
  MEMORY[0x1EEE9AC00](v2 - 8);
  if (*v0 <= 1u)
  {
    if (*v0)
    {
      sub_1D2877FE8();
      if (qword_1ED89E0E8 == -1)
      {
        goto LABEL_11;
      }
    }

    else
    {
      sub_1D2877FE8();
      if (qword_1ED89E0E8 == -1)
      {
        goto LABEL_11;
      }
    }

    goto LABEL_12;
  }

  if (*v0 == 2)
  {
    sub_1D2877FE8();
    if (qword_1ED89E0E8 == -1)
    {
      goto LABEL_11;
    }

    goto LABEL_12;
  }

  sub_1D2877FE8();
  if (qword_1ED89E0E8 != -1)
  {
LABEL_12:
    swift_once();
  }

LABEL_11:
  v3 = qword_1ED8B0058;
  sub_1D28718C8();
  return sub_1D28780E8();
}

uint64_t static ImageGenerationPerson.Appearance.== infix(_:_:)(_BYTE *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  if (*a1 == 3)
  {
    return v2 == 3;
  }

  if (v2 == 3)
  {
    return 0;
  }

  v4 = sub_1D2873768();
  v6 = v5;
  if (v4 != sub_1D2873768() || v6 != v7)
  {
    v9 = sub_1D2879618();

    return (v9 & 1) != 0;
  }

  return 1;
}

uint64_t sub_1D2491D04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x4764657070617277 && a2 == 0xED00007265646E65)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1D2879618();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1D2491D94(uint64_t a1)
{
  v2 = sub_1D24924AC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D2491DD0(uint64_t a1)
{
  v2 = sub_1D24924AC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ImageGenerationPerson.Appearance.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC110);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v9 - v5;
  v7 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D24924AC();
  sub_1D2879888();
  v10 = v7;
  sub_1D2492500();
  sub_1D2879568();
  return (*(v4 + 8))(v6, v3);
}

uint64_t ImageGenerationPerson.Appearance.hash(into:)()
{
  if (*v0 == 3)
  {
    return sub_1D28797F8();
  }

  sub_1D28797F8();
  sub_1D2873768();
  sub_1D2877F38();
}

uint64_t ImageGenerationPerson.Appearance.hashValue.getter()
{
  v1 = *v0;
  sub_1D28797D8();
  sub_1D28797F8();
  if (v1 != 3)
  {
    sub_1D2873768();
    sub_1D2877F38();
  }

  return sub_1D2879828();
}

uint64_t ImageGenerationPerson.Appearance.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC128);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D24924AC();
  sub_1D2879868();
  if (!v2)
  {
    sub_1D2492554();
    sub_1D28794D8();
    (*(v6 + 8))(v8, v5);
    *a2 = v11;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_1D2492208()
{
  v1 = *v0;
  sub_1D28797D8();
  sub_1D28797F8();
  if (v1 != 3)
  {
    sub_1D2873768();
    sub_1D2877F38();
  }

  return sub_1D2879828();
}

uint64_t sub_1D249228C()
{
  if (*v0 == 3)
  {
    return sub_1D28797F8();
  }

  sub_1D28797F8();
  sub_1D2873768();
  sub_1D2877F38();
}

uint64_t sub_1D249231C()
{
  v1 = *v0;
  sub_1D28797D8();
  sub_1D28797F8();
  if (v1 != 3)
  {
    sub_1D2873768();
    sub_1D2877F38();
  }

  return sub_1D2879828();
}

uint64_t sub_1D249239C@<X0>(uint64_t *a1@<X8>)
{
  if (*v1 == 3)
  {
    v3 = 0xEB00000000646569;
    result = 0x6669636570736E75;
  }

  else
  {
    result = sub_1D2873768();
  }

  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1D24923F0(_BYTE *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  if (*a1 == 3)
  {
    return v2 == 3;
  }

  if (v2 == 3)
  {
    return 0;
  }

  v4 = sub_1D2873768();
  v6 = v5;
  if (v4 != sub_1D2873768() || v6 != v7)
  {
    v9 = sub_1D2879618();

    return (v9 & 1) != 0;
  }

  return 1;
}

unint64_t sub_1D24924AC()
{
  result = qword_1EC6DC118;
  if (!qword_1EC6DC118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DC118);
  }

  return result;
}

unint64_t sub_1D2492500()
{
  result = qword_1EC6DC120;
  if (!qword_1EC6DC120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DC120);
  }

  return result;
}

unint64_t sub_1D2492554()
{
  result = qword_1EC6DC130;
  if (!qword_1EC6DC130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DC130);
  }

  return result;
}

unint64_t sub_1D24925AC()
{
  result = qword_1EC6D8AD0;
  if (!qword_1EC6D8AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6D8AD0);
  }

  return result;
}

uint64_t _s10AppearanceVwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  if (v6 <= 3)
  {
    v7 = 3;
  }

  else
  {
    v7 = *a1;
  }

  v8 = v7 - 4;
  if (v6 < 3)
  {
    v9 = -1;
  }

  else
  {
    v9 = v8;
  }

  return (v9 + 1);
}

unint64_t sub_1D24926C4()
{
  result = qword_1EC6DC138;
  if (!qword_1EC6DC138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DC138);
  }

  return result;
}

unint64_t sub_1D249271C()
{
  result = qword_1EC6DC140;
  if (!qword_1EC6DC140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DC140);
  }

  return result;
}

unint64_t sub_1D2492774()
{
  result = qword_1EC6DC148;
  if (!qword_1EC6DC148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DC148);
  }

  return result;
}

uint64_t ImageGenerationPerson.SkinTone.displayName.getter()
{
  _s23ImagePlaygroundInternal0A16GenerationPersonV8SkinToneV2idSSvg_0();
  sub_1D22BD06C();
  v0 = sub_1D2878F68();

  return v0;
}

uint64_t ImageGenerationPerson.SkinTone.wrappedSkinTone.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1D28737A8();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t static ImageGenerationPerson.SkinTone.== infix(_:_:)()
{
  sub_1D28737A8();
  sub_1D24933BC(&qword_1EC6D8BA8, MEMORY[0x1E69E01B8]);
  sub_1D2878368();
  sub_1D2878368();
  if (v5 == v3 && v6 == v4)
  {
    v1 = 1;
  }

  else
  {
    v1 = sub_1D2879618();
  }

  return v1 & 1;
}

uint64_t sub_1D24929A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x5364657070617277 && a2 == 0xEF656E6F546E696BLL)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1D2879618();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1D2492A30(uint64_t a1)
{
  v2 = sub_1D2492C20();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D2492A6C(uint64_t a1)
{
  v2 = sub_1D2492C20();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ImageGenerationPerson.SkinTone.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC150);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D2492C20();
  sub_1D2879888();
  sub_1D28737A8();
  sub_1D24933BC(&qword_1EC6DC160, MEMORY[0x1E69E01B8]);
  sub_1D2879598();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_1D2492C20()
{
  result = qword_1EC6DC158;
  if (!qword_1EC6DC158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DC158);
  }

  return result;
}

uint64_t ImageGenerationPerson.SkinTone.hash(into:)()
{
  sub_1D28737A8();
  sub_1D24933BC(&qword_1EC6DC168, MEMORY[0x1E69E01B8]);

  return sub_1D2877F08();
}

uint64_t ImageGenerationPerson.SkinTone.hashValue.getter()
{
  sub_1D28797D8();
  sub_1D28737A8();
  sub_1D24933BC(&qword_1EC6DC168, MEMORY[0x1E69E01B8]);
  sub_1D2877F08();
  return sub_1D2879828();
}

uint64_t ImageGenerationPerson.SkinTone.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v18 = a2;
  v4 = sub_1D28737A8();
  v16 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v19 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC170);
  v17 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v15 - v7;
  v9 = type metadata accessor for ImageGenerationPerson.SkinTone();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D2492C20();
  sub_1D2879868();
  if (!v2)
  {
    v12 = v16;
    v13 = v18;
    sub_1D24933BC(&qword_1EC6DC178, MEMORY[0x1E69E01B8]);
    sub_1D2879528();
    (*(v17 + 8))(v8, v6);
    (*(v12 + 32))(v11, v19, v4);
    sub_1D249183C(v11, v13);
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_1D2493020(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC150);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D2492C20();
  sub_1D2879888();
  sub_1D28737A8();
  sub_1D24933BC(&qword_1EC6DC160, MEMORY[0x1E69E01B8]);
  sub_1D2879598();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_1D2493198()
{
  sub_1D28797D8();
  sub_1D28737A8();
  sub_1D24933BC(&qword_1EC6DC168, MEMORY[0x1E69E01B8]);
  sub_1D2877F08();
  return sub_1D2879828();
}

uint64_t sub_1D2493220()
{
  sub_1D28737A8();
  sub_1D24933BC(&qword_1EC6DC168, MEMORY[0x1E69E01B8]);

  return sub_1D2877F08();
}

uint64_t sub_1D24932A4()
{
  sub_1D28797D8();
  sub_1D28737A8();
  sub_1D24933BC(&qword_1EC6DC168, MEMORY[0x1E69E01B8]);
  sub_1D2877F08();
  return sub_1D2879828();
}

uint64_t type metadata accessor for ImageGenerationPerson.SkinTone()
{
  result = qword_1ED8A6E38;
  if (!qword_1ED8A6E38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D24933BC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D2493404@<X0>(uint64_t *a1@<X8>)
{
  result = _s23ImagePlaygroundInternal0A16GenerationPersonV8SkinToneV2idSSvg_0();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1D249342C()
{
  sub_1D28737A8();
  sub_1D24933BC(&qword_1EC6D8BA8, MEMORY[0x1E69E01B8]);
  sub_1D2878368();
  sub_1D2878368();
  if (v5 == v3 && v6 == v4)
  {
    v1 = 1;
  }

  else
  {
    v1 = sub_1D2879618();
  }

  return v1 & 1;
}

uint64_t sub_1D2493534()
{
  result = sub_1D28737A8();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1D24935B4()
{
  result = qword_1EC6DC180;
  if (!qword_1EC6DC180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DC180);
  }

  return result;
}

unint64_t sub_1D249360C()
{
  result = qword_1EC6DC188;
  if (!qword_1EC6DC188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DC188);
  }

  return result;
}

unint64_t sub_1D2493664()
{
  result = qword_1EC6DC190;
  if (!qword_1EC6DC190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DC190);
  }

  return result;
}

void sub_1D24936B8(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  sub_1D2870F78();
  v6 = a3;
  v5(a2, a3);
}

uint64_t sub_1D2493730()
{
  v1 = v0;
  v2 = sub_1D28729E8();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v1 + 32))
  {
    v5 = *(v1 + 32);
  }

  else
  {
    sub_1D28731D8();
    static ExecutionContext.clientIdentity()(v4);
    v5 = MEMORY[0x1D389BC40](v4);
    *(v1 + 32) = v5;
    sub_1D2870F78();
  }

  sub_1D2870F78();
  return v5;
}

uint64_t sub_1D24937F0()
{
  if (*(v0 + 40))
  {
    v1 = *(v0 + 40);
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v3 = swift_allocObject();
    swift_weakInit();
    v1 = sub_1D27D84D8(0x7FFFFFFFFFFFFFFFLL, KeyPath, &unk_1D288BC60, v3);
    *(v0 + 40) = v1;
    sub_1D2870F78();
  }

  sub_1D2870F78();
  return v1;
}

uint64_t sub_1D24938CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[6] = a2;
  v3[7] = a3;
  v3[5] = a1;
  sub_1D2878568();
  v3[8] = sub_1D2878558();
  v5 = sub_1D28784F8();
  v3[9] = v5;
  v3[10] = v4;

  return MEMORY[0x1EEE6DFA0](sub_1D2493968, v5, v4);
}

uint64_t sub_1D2493968()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[11] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[12] = v2;
    *v2 = v0;
    v2[1] = sub_1D2493AA8;
    v3 = v0[5];
    v4 = v0[6];

    return sub_1D2493BEC(v3, v4);
  }

  else
  {
    v6 = v0[5];

    v7 = type metadata accessor for FacePickerPersistentStorage.GeneratedPreviewArchive(0);
    (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_1D2493AA8()
{
  v1 = *v0;

  v2 = *(v1 + 80);
  v3 = *(v1 + 72);

  return MEMORY[0x1EEE6DFA0](sub_1D23D2F60, v3, v2);
}

uint64_t sub_1D2493BEC(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_1D2873CB8();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  v3[8] = sub_1D2878568();
  v3[9] = sub_1D2878558();
  v6 = sub_1D28784F8();
  v3[10] = v6;
  v3[11] = v5;

  return MEMORY[0x1EEE6DFA0](sub_1D2493CE8, v6, v5);
}

uint64_t sub_1D2493CE8()
{
  v1 = v0[4];
  v2 = *(v1 + 24);
  v0[12] = v2;
  if (v2)
  {
    v3 = v0[3];
    v4 = v2;
    v5 = sub_1D2878558();
    v0[13] = v5;
    v6 = swift_task_alloc();
    v0[14] = v6;
    v6[2] = v1;
    v6[3] = v4;
    v6[4] = 114;
    v6[5] = v3;
    v7 = swift_task_alloc();
    v0[15] = v7;
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC0F0);
    *v7 = v0;
    v7[1] = sub_1D2493F50;
    v9 = v0[2];
    v10 = MEMORY[0x1E69E85E0];

    return MEMORY[0x1EEE6DDE0](v9, v5, v10, 0xD000000000000019, 0x80000001D28B8610, sub_1D249AC38, v6, v8);
  }

  else
  {

    sub_1D28724C8();
    v11 = sub_1D2873CA8();
    v12 = sub_1D28789F8();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_1D226E000, v11, v12, "Missing requirements to fetch the generated face", v13, 2u);
      MEMORY[0x1D38A3520](v13, -1, -1);
    }

    v15 = v0[6];
    v14 = v0[7];
    v16 = v0[5];
    v17 = v0[2];

    (*(v15 + 8))(v14, v16);
    v18 = type metadata accessor for FacePickerPersistentStorage.GeneratedPreviewArchive(0);
    (*(*(v18 - 8) + 56))(v17, 1, 1, v18);

    v19 = v0[1];

    return v19();
  }
}

uint64_t sub_1D2493F50()
{
  v1 = *v0;

  v2 = *(v1 + 88);
  v3 = *(v1 + 80);

  return MEMORY[0x1EEE6DFA0](sub_1D24940B0, v3, v2);
}

uint64_t sub_1D24940B0()
{
  v1 = *(v0 + 96);

  v2 = *(v0 + 8);

  return v2();
}

void *sub_1D2494120(uint64_t a1)
{
  v12 = a1;
  v2 = sub_1D2878A88();
  MEMORY[0x1EEE9AC00](v2);
  v3 = sub_1D2877B68();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v4 = sub_1D2878AA8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11[1] = sub_1D22BCFD0(0, &qword_1ED89CD50);
  (*(v5 + 104))(v7, *MEMORY[0x1E69E8098], v4);
  sub_1D2877B58();
  v13 = MEMORY[0x1E69E7CC0];
  sub_1D2499220(&qword_1ED89CD60, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DAE50);
  sub_1D249AF34(&qword_1ED89CE80, &unk_1EC6DAE50);
  sub_1D2879088();
  v8 = sub_1D2878AD8();
  v1[4] = 0;
  v1[5] = 0;
  v9 = v12;
  v1[2] = v8;
  v1[3] = v9;
  return v1;
}

uint64_t sub_1D2494390()
{
  v1[6] = v0;
  v2 = sub_1D2873CB8();
  v1[7] = v2;
  v1[8] = *(v2 - 8);
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  sub_1D2878568();
  v1[11] = sub_1D2878558();
  v4 = sub_1D28784F8();
  v1[12] = v4;
  v1[13] = v3;

  return MEMORY[0x1EEE6DFA0](sub_1D2494490, v4, v3);
}

uint64_t sub_1D2494490()
{
  if (qword_1ED8A4928 != -1)
  {
    swift_once();
  }

  v1 = sub_1D23CCEF8();
  v0[14] = v1;
  v0[15] = sub_1D2493730();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC1C8);
  v2 = swift_allocObject();
  v0[16] = v2;
  *(v2 + 16) = xmmword_1D287F500;
  *(v2 + 32) = v1;
  sub_1D2870F68();
  v3 = swift_task_alloc();
  v0[17] = v3;
  *v3 = v0;
  v3[1] = sub_1D24945BC;

  return MEMORY[0x1EEE4F6C8](v2);
}

uint64_t sub_1D24945BC(uint64_t a1)
{
  v3 = *v2;
  v3[18] = a1;
  v3[19] = v1;

  if (v1)
  {
    v4 = v3[12];
    v5 = v3[13];
    v6 = sub_1D2494AA4;
  }

  else
  {

    v4 = v3[12];
    v5 = v3[13];
    v6 = sub_1D24946E0;
  }

  return MEMORY[0x1EEE6DFA0](v6, v4, v5);
}

uint64_t sub_1D24946E0()
{
  v1 = v0[18];

  if (*(v1 + 16))
  {
    v2 = *(v0[18] + 32);

    if ((v2 & 1) == 0)
    {

      goto LABEL_6;
    }
  }

  else
  {
  }

  v3 = *(v0[14] + 16);

  if (v3)
  {
LABEL_26:

    v37 = v0[1];

    return v37();
  }

LABEL_6:
  sub_1D28724C8();
  v4 = sub_1D2873CA8();
  v5 = sub_1D28789F8();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_1D226E000, v4, v5, "Resetting face selection for people as diffusion model set changed.", v6, 2u);
    MEMORY[0x1D38A3520](v6, -1, -1);
  }

  v7 = v0[10];
  v8 = v0[7];
  v9 = v0[8];
  v38 = v0;

  (*(v9 + 8))(v7, v8);
  v10 = sub_1D25D76C8(MEMORY[0x1E69E7CC0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DBBE0);
  result = sub_1D28793C8();
  v12 = result;
  v13 = 0;
  v14 = v10 + 64;
  v15 = 1 << *(v10 + 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & *(v10 + 64);
  v18 = (v15 + 63) >> 6;
  v39 = result + 64;
  v40 = v10;
  if (v17)
  {
    while (1)
    {
      v19 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_17:
      v22 = v19 | (v13 << 6);
      v23 = (*(v40 + 48) + 16 * v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = *(*(v40 + 56) + 8 * v22);
      if (v26[2] <= 5uLL)
      {
        sub_1D2870F68();
        result = sub_1D2870F68();
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAE60);
        v27 = swift_allocObject();
        v28 = _swift_stdlib_malloc_size(v27);
        v29 = v28 - 32;
        if (v28 < 32)
        {
          v29 = v28 - 17;
        }

        v27[2] = 5;
        v27[3] = 2 * (v29 >> 4);
        swift_arrayInitWithCopy();
        result = sub_1D2870F68();
        v26 = v27;
      }

      *(v39 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      v30 = (v12[6] + 16 * v22);
      *v30 = v24;
      v30[1] = v25;
      *(v12[7] + 8 * v22) = v26;
      v31 = v12[2];
      v32 = __OFADD__(v31, 1);
      v33 = v31 + 1;
      if (v32)
      {
        break;
      }

      v12[2] = v33;
      if (!v17)
      {
        goto LABEL_12;
      }
    }
  }

  else
  {
LABEL_12:
    v20 = v13;
    while (1)
    {
      v13 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v13 >= v18)
      {

        sub_1D22BCFD0(0, &qword_1ED89CDA0);
        v34 = sub_1D2878A58();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA358);
        v35 = sub_1D2877E78();

        v36 = sub_1D2878068();
        [v34 setValue:v35 forKey:v36];

        v0 = v38;
        goto LABEL_26;
      }

      v21 = *(v14 + 8 * v13);
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v17 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1D2494AA4()
{
  v20 = v0;
  v1 = *(v0 + 152);

  sub_1D28724C8();
  v2 = v1;
  v3 = sub_1D2873CA8();
  v4 = sub_1D2878A18();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 152);
    v6 = *(v0 + 64);
    v18 = *(v0 + 72);
    v7 = *(v0 + 56);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v19 = v9;
    *v8 = 136315138;
    swift_getErrorValue();
    v10 = sub_1D2879748();
    v12 = sub_1D23D7C84(v10, v11, &v19);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_1D226E000, v3, v4, "Failed to compare last diffusion model spec used with current models, error: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x1D38A3520](v9, -1, -1);
    MEMORY[0x1D38A3520](v8, -1, -1);

    (*(v6 + 8))(v18, v7);
  }

  else
  {
    v14 = *(v0 + 64);
    v13 = *(v0 + 72);
    v15 = *(v0 + 56);

    (*(v14 + 8))(v13, v15);
  }

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_1D2494CB0(uint64_t a1, uint64_t a2)
{
  v30 = a1;
  v31 = a2;
  v3 = sub_1D2873CB8();
  v29 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1D2877B48();
  v34 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1D2877B68();
  v32 = *(v9 - 8);
  v33 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for GeneratedPreviewOptions(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v2 + 24);
  if (v16)
  {
    v29 = *(v2 + 16);
    sub_1D22D7044(v30, v37);
    sub_1D249A0FC(v31, &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for GeneratedPreviewOptions);
    v17 = (*(v13 + 80) + 56) & ~*(v13 + 80);
    v18 = (v14 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
    v19 = (v18 + 15) & 0xFFFFFFFFFFFFFFF8;
    v31 = v6;
    v20 = swift_allocObject();
    sub_1D22D79FC(v37, v20 + 16);
    sub_1D2499268(v15, v20 + v17, type metadata accessor for GeneratedPreviewOptions);
    *(v20 + v18) = v2;
    *(v20 + v19) = v16;
    *(v20 + ((v19 + 15) & 0xFFFFFFFFFFFFFFF8)) = 114;
    aBlock[4] = sub_1D2499418;
    aBlock[5] = v20;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1D23DFBA8;
    aBlock[3] = &block_descriptor_14;
    v21 = _Block_copy(aBlock);
    v22 = v16;
    sub_1D2870F78();
    sub_1D2877B58();
    v35 = MEMORY[0x1E69E7CC0];
    sub_1D2499220(&qword_1ED89CFE0, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DAE80);
    sub_1D249AF34(&qword_1ED89CEB0, &unk_1EC6DAE80);
    v23 = v31;
    sub_1D2879088();
    MEMORY[0x1D38A1540](0, v11, v8, v21);
    _Block_release(v21);

    (*(v34 + 8))(v8, v23);
    (*(v32 + 8))(v11, v33);
  }

  else
  {
    v25 = v29;
    sub_1D28724C8();
    v26 = sub_1D2873CA8();
    v27 = sub_1D28789F8();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_1D226E000, v26, v27, "Missing requirements to store the generated face", v28, 2u);
      MEMORY[0x1D38A3520](v28, -1, -1);
    }

    return (*(v25 + 8))(v5, v3);
  }
}

uint64_t sub_1D249519C(uint64_t a1, uint64_t *a2, uint64_t a3, void *a4, void (*a5)(char *, uint64_t))
{
  v27 = a5;
  v29 = a4;
  v28 = sub_1D2873CB8();
  MEMORY[0x1EEE9AC00](v28);
  v7 = sub_1D2872008();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for FacePickerPersistentStorage.GeneratedPreviewArchive(0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v26 - v15;
  sub_1D22D7044(a1, v30);
  v17 = *(type metadata accessor for GeneratedPreviewOptions(0) + 20);
  sub_1D2871FC8();
  LOBYTE(a1) = MEMORY[0x1D389AA00](a2 + v17, v10);
  (*(v8 + 8))(v10, v7);
  if (a1)
  {
    v18 = 1;
  }

  else
  {
    v18 = sub_1D2871F78();
  }

  sub_1D2495594(v30, v18 & 1, v16);
  v19 = *a2;
  v20 = a2[1];
  v21 = v27;
  v22 = sub_1D24998B0(v29, v27, *a2, v20);
  if (!v22)
  {
    v22 = sub_1D25D81C4(MEMORY[0x1E69E7CC0]);
  }

  v23 = v22;
  sub_1D249A0FC(v16, v13, type metadata accessor for FacePickerPersistentStorage.GeneratedPreviewArchive);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v30[0] = v23;
  sub_1D24E96B0(v13, a2, isUniquelyReferenced_nonNull_native);
  sub_1D249A164(v29, v21, v30[0], v19, v20);

  return sub_1D249A9A0(v16, type metadata accessor for FacePickerPersistentStorage.GeneratedPreviewArchive);
}

id sub_1D2495594@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v36 = a3;
  v5 = type metadata accessor for PlaygroundImage();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v33[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v33[-v9];
  v11 = type metadata accessor for FacePickerPersistentStorage.GeneratedPreviewArchive(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v33[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = a1[3];
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v14);
  v16 = v37;
  (*(v15 + 16))(a2, v14, v15);
  if (v16)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v35 = 0;
  v37 = v13;
  v18 = v7;
  if (*(v7 + 8) == 2)
  {
    v19 = *v7;
    v20 = v11;
    v21 = a1;
  }

  else
  {
    v22 = sub_1D262B684();
    v20 = v11;
    v21 = a1;
    if (v22)
    {
      v23 = v22;
      result = [objc_allocWithZone(MEMORY[0x1E69DCAB8]) initWithCGImage:v22 imageOrientation:sub_1D263073C(*(v18 + 6))];
      if (!result)
      {
        __break(1u);
        return result;
      }

      v19 = result;
    }

    else
    {
      v19 = [objc_allocWithZone(MEMORY[0x1E69DCAB8]) init];
    }
  }

  v34 = *(v18 + v5[12]);
  v24 = v18[2];
  v25 = &v10[v5[9]];
  *v25 = 0u;
  v25[1] = 0u;
  *&v10[v5[10]] = xmmword_1D28809A0;
  v26 = v18;
  v27 = v5[11];
  v28 = sub_1D2873AA8();
  (*(*(v28 - 8) + 56))(&v10[v27], 1, 1, v28);
  *v10 = v19;
  v10[8] = 2;
  sub_1D2870F68();
  v29 = v19;
  [v29 imageOrientation];
  *(v10 + 6) = sub_1D2878C88();
  *(v10 + 2) = v24;
  *(v10 + 4) = 0;
  *(v10 + 5) = 0;
  v10[v5[12]] = v34;
  sub_1D2871808();

  sub_1D249A9A0(v26, type metadata accessor for PlaygroundImage);
  v30 = v37;
  sub_1D2499268(v10, v37, type metadata accessor for PlaygroundImage);
  v31 = v21[3];
  v32 = v21[4];
  __swift_project_boxed_opaque_existential_1(v21, v31);
  *(v30 + *(v20 + 20)) = (*(v32 + 24))(v31, v32);
  sub_1D2499268(v30, v36, type metadata accessor for FacePickerPersistentStorage.GeneratedPreviewArchive);
  return __swift_destroy_boxed_opaque_existential_0(v21);
}

uint64_t sub_1D24958FC(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_1D2873CB8();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  sub_1D2878568();
  v3[8] = sub_1D2878558();
  v6 = sub_1D28784F8();
  v3[9] = v6;
  v3[10] = v5;

  return MEMORY[0x1EEE6DFA0](sub_1D24959F4, v6, v5);
}

uint64_t sub_1D24959F4()
{
  v1 = v0[8];
  v0[11] = sub_1D24937F0();
  sub_1D2870F78();
  v2 = swift_task_alloc();
  v0[12] = v2;
  *v2 = v0;
  v2[1] = sub_1D2495AD0;
  v3 = v0[2];
  v4 = v0[3];
  v5 = MEMORY[0x1E69E85E0];

  return sub_1D25F7444(v3, v1, v5, v4);
}

uint64_t sub_1D2495AD0()
{
  v2 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v3 = *(v2 + 72);
    v4 = *(v2 + 80);
    v5 = sub_1D2495C60;
  }

  else
  {

    v3 = *(v2 + 72);
    v4 = *(v2 + 80);
    v5 = sub_1D2495BF8;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

uint64_t sub_1D2495BF8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D2495C60()
{
  v1 = v0[13];

  sub_1D28724C8();
  v2 = v1;
  v3 = sub_1D2873CA8();
  v4 = sub_1D2878A18();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[13];
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_1D226E000, v3, v4, "Failed to loadGeneratedFaceArchive error: %@", v7, 0xCu);
    sub_1D22BD238(v8, qword_1EC6DA930);
    MEMORY[0x1D38A3520](v8, -1, -1);
    MEMORY[0x1D38A3520](v7, -1, -1);
  }

  else
  {
  }

  v11 = v0[2];
  (*(v0[6] + 8))(v0[7], v0[5]);
  v12 = type metadata accessor for FacePickerPersistentStorage.GeneratedPreviewArchive(0);
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);

  v13 = v0[1];

  return v13();
}

uint64_t sub_1D2495E44()
{
  v1[28] = v0;
  v2 = sub_1D2873CB8();
  v1[29] = v2;
  v1[30] = *(v2 - 8);
  v1[31] = swift_task_alloc();
  sub_1D2878568();
  v1[32] = sub_1D2878558();
  v4 = sub_1D28784F8();
  v1[33] = v4;
  v1[34] = v3;

  return MEMORY[0x1EEE6DFA0](sub_1D2495F38, v4, v3);
}

uint64_t sub_1D2495F38()
{
  v1 = *(v0[28] + 24);
  v0[35] = v1;
  if (v1)
  {
    v2 = objc_opt_self();
    v3 = v1;
    v4 = [v3 librarySpecificFetchOptions];
    v5 = [v2 fetchFacesWithOptions_];

    v6 = [v5 fetchedObjects];
    if (v6)
    {
      v7 = objc_opt_self();
      v8 = [v3 librarySpecificFetchOptions];
      v9 = [v7 fetchAssetsForFaces:v6 options:v8];

      if (!v9)
      {
        __break(1u);
        return MEMORY[0x1EEE6DEC8](v10);
      }

      v11 = [v9 fetchedObjects];

      if (v11)
      {
        sub_1D22BCFD0(0, &qword_1EC6D74E0);
        v12 = sub_1D28783E8();

        v13 = swift_allocObject();
        *(v13 + 16) = v12;
        *(v13 + 24) = 114;
        v0[22] = sub_1D249AF88;
        v0[23] = v13;
        v0[18] = MEMORY[0x1E69E9820];
        v0[19] = 1107296256;
        v0[20] = sub_1D23DFBA8;
        v0[21] = &block_descriptor_43;
        v14 = _Block_copy(v0 + 18);
        v0[36] = v14;

        v0[2] = v0;
        v0[3] = sub_1D249626C;
        v15 = swift_continuation_init();
        v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DAD48);
        v0[10] = MEMORY[0x1E69E9820];
        v0[11] = 1107296256;
        v0[12] = sub_1D23DFFA8;
        v0[13] = &block_descriptor_46;
        v0[14] = v15;
        [v3 performChanges:v14 completionHandler:v0 + 10];
        v10 = v0 + 2;

        return MEMORY[0x1EEE6DEC8](v10);
      }
    }
  }

  else
  {
  }

  v16 = v0[1];

  return v16();
}

uint64_t sub_1D249626C()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 296) = v2;
  v3 = *(v1 + 272);
  v4 = *(v1 + 264);
  if (v2)
  {
    v5 = sub_1D2496418;
  }

  else
  {
    v5 = sub_1D249639C;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1D249639C()
{
  v1 = v0[35];
  v2 = v0[36];

  _Block_release(v2);

  v3 = v0[1];

  return v3();
}

uint64_t sub_1D2496418()
{
  v23 = v0;
  v1 = *(v0 + 288);
  v2 = *(v0 + 296);

  swift_willThrow();
  _Block_release(v1);
  sub_1D28724C8();
  v3 = v2;
  v4 = sub_1D2873CA8();
  v5 = sub_1D2878A18();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 296);
    v7 = *(v0 + 280);
    v8 = *(v0 + 240);
    v20 = *(v0 + 232);
    v21 = *(v0 + 248);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v22 = v10;
    *v9 = 136315138;
    swift_getErrorValue();
    v11 = sub_1D2879748();
    v13 = sub_1D23D7C84(v11, v12, &v22);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_1D226E000, v4, v5, "Failed to delete generated faces archive from face picker cache with error: %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x1D38A3520](v10, -1, -1);
    MEMORY[0x1D38A3520](v9, -1, -1);

    (*(v8 + 8))(v21, v20);
  }

  else
  {
    v14 = *(v0 + 296);
    v16 = *(v0 + 240);
    v15 = *(v0 + 248);
    v17 = *(v0 + 232);

    (*(v16 + 8))(v15, v17);
  }

  v18 = *(v0 + 8);

  return v18();
}

void sub_1D249661C(unint64_t a1, uint64_t a2)
{
  if (a1 >> 62)
  {
    v4 = sub_1D2879368();
    if (!v4)
    {
      return;
    }
  }

  else
  {
    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v4)
    {
      return;
    }
  }

  v5 = objc_opt_self();
  if (v4 < 1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5;
    v7 = 0;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x1D38A1C30](v7, a1);
      }

      else
      {
        v8 = *(a1 + 8 * v7 + 32);
      }

      v9 = v8;
      ++v7;
      v10 = [v6 changeRequestForAsset_];
      [v10 deleteAssetResourceWithType_];
    }

    while (v4 != v7);
  }
}

uint64_t sub_1D249671C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v28 = a5;
  v29 = a1;
  v30 = a3;
  v31 = a4;
  v35 = sub_1D2877B48();
  v37 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v33 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_1D2877B68();
  v34 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC1E0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v27 - v11;
  v13 = type metadata accessor for GeneratedPreviewOptions(0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = *(a2 + 16);
  sub_1D249A0FC(v28, v16, type metadata accessor for GeneratedPreviewOptions);
  (*(v10 + 16))(v12, v29, v9);
  v17 = (*(v14 + 80) + 40) & ~*(v14 + 80);
  v18 = (v15 + *(v10 + 80) + v17) & ~*(v10 + 80);
  v19 = swift_allocObject();
  v21 = v30;
  v20 = v31;
  *(v19 + 2) = a2;
  *(v19 + 3) = v21;
  *(v19 + 4) = v20;
  sub_1D2499268(v16, &v19[v17], type metadata accessor for GeneratedPreviewOptions);
  (*(v10 + 32))(&v19[v18], v12, v9);
  aBlock[4] = sub_1D249AC44;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D23DFBA8;
  aBlock[3] = &block_descriptor_37;
  v22 = _Block_copy(aBlock);
  sub_1D2870F78();
  v23 = v21;
  sub_1D2877B58();
  v38 = MEMORY[0x1E69E7CC0];
  sub_1D2499220(&qword_1ED89CFE0, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DAE80);
  sub_1D249AF34(&qword_1ED89CEB0, &unk_1EC6DAE80);
  v24 = v33;
  v25 = v35;
  sub_1D2879088();
  MEMORY[0x1D38A1540](0, v8, v24, v22);
  _Block_release(v22);
  (*(v37 + 8))(v24, v25);
  (*(v34 + 8))(v8, v36);
}

uint64_t sub_1D2496B94(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC0F0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v23 - v11;
  v13 = sub_1D24998B0(a2, a3, *a4, *(a4 + 8));
  if (!v13)
  {
    goto LABEL_6;
  }

  v14 = v13;
  if (!*(v13 + 16) || (v15 = sub_1D25D0488(a4), (v16 & 1) == 0))
  {

    v13 = 0;
LABEL_6:
    v21 = type metadata accessor for FacePickerPersistentStorage.GeneratedPreviewArchive(v13);
    (*(*(v21 - 8) + 56))(v12, 1, 1, v21);
    goto LABEL_7;
  }

  v17 = v15;
  v18 = *(v14 + 56);
  v19 = type metadata accessor for FacePickerPersistentStorage.GeneratedPreviewArchive(0);
  v20 = *(v19 - 8);
  sub_1D249A0FC(v18 + *(v20 + 72) * v17, v12, type metadata accessor for FacePickerPersistentStorage.GeneratedPreviewArchive);

  (*(v20 + 56))(v12, 0, 1, v19);
LABEL_7:
  sub_1D249AD24(v12, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC1E0);
  sub_1D2878518();
  return sub_1D22BD238(v12, &qword_1EC6DC0F0);
}

uint64_t sub_1D2496DB0(uint64_t a1)
{
  v2[6] = a1;
  v2[7] = v1;
  v3 = sub_1D2873CB8();
  v2[8] = v3;
  v2[9] = *(v3 - 8);
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();
  sub_1D2878568();
  v2[12] = sub_1D2878558();
  v5 = sub_1D28784F8();
  v2[13] = v5;
  v2[14] = v4;

  return MEMORY[0x1EEE6DFA0](sub_1D2496EB0, v5, v4);
}

uint64_t sub_1D2496EB0()
{
  v1 = v0[7];
  v2 = *(v1 + *(type metadata accessor for FacePickerPersistentStorage.GeneratedPreviewArchive(0) + 20));
  v0[15] = v2;
  if (v2)
  {
    v0[16] = sub_1D2493730();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC1C8);
    v3 = swift_allocObject();
    v0[17] = v3;
    *(v3 + 16) = xmmword_1D287F500;
    *(v3 + 32) = v2;
    sub_1D2870F68();
    v4 = swift_task_alloc();
    v0[18] = v4;
    *v4 = v0;
    v4[1] = sub_1D249700C;

    return MEMORY[0x1EEE4F6C8](v3);
  }

  else
  {

    v5 = v0[1];

    return v5(0);
  }
}

uint64_t sub_1D249700C(uint64_t a1)
{
  v3 = *v2;
  v3[19] = a1;
  v3[20] = v1;

  if (v1)
  {
    v4 = v3[13];
    v5 = v3[14];
    v6 = sub_1D2497350;
  }

  else
  {

    v4 = v3[13];
    v5 = v3[14];
    v6 = sub_1D2497130;
  }

  return MEMORY[0x1EEE6DFA0](v6, v4, v5);
}

uint64_t sub_1D2497130()
{
  v20 = v0;
  v1 = v0[19];

  if (*(v1 + 16))
  {
    v2 = *(v0[19] + 32);

    if (v2)
    {
      v3 = 0;
    }

    else
    {
      sub_1D28724C8();
      sub_1D2870F68();
      v4 = sub_1D2873CA8();
      v5 = sub_1D28789F8();

      if (os_log_type_enabled(v4, v5))
      {
        v6 = v0[11];
        v7 = v0[8];
        v8 = v0[9];
        v9 = swift_slowAlloc();
        v10 = swift_slowAlloc();
        v19 = v10;
        *v9 = 136315138;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA2D0);
        v11 = sub_1D2877EA8();
        v13 = sub_1D23D7C84(v11, v12, &v19);

        *(v9 + 4) = v13;
        _os_log_impl(&dword_1D226E000, v4, v5, "FacePicker - Needs re-generation due to model update, previous diffusionModelSpecification: %s", v9, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v10);
        MEMORY[0x1D38A3520](v10, -1, -1);
        MEMORY[0x1D38A3520](v9, -1, -1);

        (*(v8 + 8))(v6, v7);
      }

      else
      {
        v14 = v0[11];
        v15 = v0[8];
        v16 = v0[9];

        (*(v16 + 8))(v14, v15);
      }

      v3 = 1;
    }
  }

  else
  {

    v3 = 0;
  }

  v17 = v0[1];

  return v17(v3);
}

uint64_t sub_1D2497350()
{
  v20 = v0;
  v1 = *(v0 + 160);

  sub_1D28724C8();
  v2 = v1;
  v3 = sub_1D2873CA8();
  v4 = sub_1D2878A18();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 160);
    v6 = *(v0 + 72);
    v18 = *(v0 + 80);
    v7 = *(v0 + 64);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v19 = v9;
    *v8 = 136315138;
    swift_getErrorValue();
    v10 = sub_1D2879748();
    v12 = sub_1D23D7C84(v10, v11, &v19);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_1D226E000, v3, v4, "Failed to compare diffusion models of cached face image with current models,  error: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x1D38A3520](v9, -1, -1);
    MEMORY[0x1D38A3520](v8, -1, -1);

    (*(v6 + 8))(v18, v7);
  }

  else
  {
    v14 = *(v0 + 72);
    v13 = *(v0 + 80);
    v15 = *(v0 + 64);

    (*(v14 + 8))(v13, v15);
  }

  v16 = *(v0 + 8);

  return v16(0);
}

uint64_t sub_1D2497554(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC200);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D249AD94();
  sub_1D2879888();
  v12 = 0;
  type metadata accessor for PlaygroundImage();
  sub_1D2499220(&qword_1EC6DC208, type metadata accessor for PlaygroundImage);
  sub_1D2879598();
  if (!v2)
  {
    v11 = *(v3 + *(type metadata accessor for FacePickerPersistentStorage.GeneratedPreviewArchive(0) + 20));
    v10[15] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA630);
    sub_1D249ADE8(&qword_1EC6DC210, &qword_1EC6DB538);
    sub_1D2879568();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1D2497764@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  v4 = type metadata accessor for PlaygroundImage();
  MEMORY[0x1EEE9AC00](v4);
  v20 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC1E8);
  v18 = *(v6 - 8);
  v19 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v16 - v7;
  v9 = type metadata accessor for FacePickerPersistentStorage.GeneratedPreviewArchive(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D249AD94();
  sub_1D2879868();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v12 = v18;
  v13 = v11;
  v23 = 0;
  sub_1D2499220(&qword_1EC6DA878, type metadata accessor for PlaygroundImage);
  v14 = v19;
  sub_1D2879528();
  sub_1D2499268(v20, v13, type metadata accessor for PlaygroundImage);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA630);
  v22 = 1;
  sub_1D249ADE8(&qword_1EC6DC1F8, &qword_1ED89CF88);
  sub_1D28794D8();
  (*(v12 + 8))(v8, v14);
  *(v13 + *(v9 + 20)) = v21;
  sub_1D249A0FC(v13, v17, type metadata accessor for FacePickerPersistentStorage.GeneratedPreviewArchive);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return sub_1D249A9A0(v13, type metadata accessor for FacePickerPersistentStorage.GeneratedPreviewArchive);
}

uint64_t sub_1D2497AC8()
{
  if (*v0)
  {
    return 0xD00000000000001BLL;
  }

  else
  {
    return 0x6567616D69;
  }
}

uint64_t sub_1D2497B04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6567616D69 && a2 == 0xE500000000000000;
  if (v6 || (sub_1D2879618() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD00000000000001BLL && 0x80000001D28B5A70 == a2)
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

uint64_t sub_1D2497BF0(uint64_t a1)
{
  v2 = sub_1D249AD94();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D2497C2C(uint64_t a1)
{
  v2 = sub_1D249AD94();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D2497C98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for PlaygroundImage();
  if (_s23ImagePlaygroundInternal0A10GenerationV07PreviewA0V2eeoiySbAE_AEtFZ_0())
  {
    v6 = *(a3 + 20);
    v7 = *(a1 + v6);
    v8 = *(a2 + v6);
    if (v7)
    {
      if (v8)
      {
        sub_1D2870F68();
        v9 = sub_1D2555048(v7, v8);

        if (v9)
        {
          return 1;
        }
      }
    }

    else if (!v8)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_1D2497D2C(uint64_t a1)
{
  sub_1D28797D8();
  type metadata accessor for PlaygroundImage();
  sub_1D2871818();
  sub_1D2499220(&qword_1ED8A6CB0, MEMORY[0x1E69695A8]);
  sub_1D2877F08();
  v3 = *(v1 + *(a1 + 20));
  sub_1D28797F8();
  if (v3)
  {
    sub_1D24FD9A4(v5, v3);
  }

  return sub_1D2879828();
}

uint64_t sub_1D2497E08(uint64_t a1, uint64_t a2)
{
  type metadata accessor for PlaygroundImage();
  sub_1D2871818();
  sub_1D2499220(&qword_1ED8A6CB0, MEMORY[0x1E69695A8]);
  sub_1D2877F08();
  v5 = *(v2 + *(a2 + 20));
  if (!v5)
  {
    return sub_1D28797F8();
  }

  sub_1D28797F8();

  return sub_1D24FD9A4(a1, v5);
}

uint64_t sub_1D2497EF0(uint64_t a1, uint64_t a2)
{
  sub_1D28797D8();
  type metadata accessor for PlaygroundImage();
  sub_1D2871818();
  sub_1D2499220(&qword_1ED8A6CB0, MEMORY[0x1E69695A8]);
  sub_1D2877F08();
  v4 = *(v2 + *(a2 + 20));
  sub_1D28797F8();
  if (v4)
  {
    sub_1D24FD9A4(v6, v4);
  }

  return sub_1D2879828();
}

uint64_t sub_1D2497FC8(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC278);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v9 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D249B254();
  sub_1D2879888();
  v9[1] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC288);
  sub_1D249B2A8();
  sub_1D2879598();
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_1D2498144@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6863724165636166 && a2 == 0xEC00000073657669)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1D2879618();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1D24981D0(uint64_t a1)
{
  v2 = sub_1D249B254();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D249820C(uint64_t a1)
{
  v2 = sub_1D249B254();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void *sub_1D2498248@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = sub_1D249B394(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1D249829C()
{
  v1 = *v0;
  sub_1D28797D8();
  sub_1D24FDC3C(v3, v1);
  return sub_1D2879828();
}

uint64_t sub_1D24982EC()
{
  v1 = *v0;
  sub_1D28797D8();
  sub_1D24FDC3C(v3, v1);
  return sub_1D2879828();
}

void sub_1D2498330(uint64_t a1, uint64_t a2)
{
  v3 = [objc_opt_self() changeRequestForAsset_];
  v4 = sub_1D28715B8();
  [v3 addAssetResourceWithType:a2 fromFileAtURL:v4];
}

id sub_1D24983C8()
{
  v20[1] = *MEMORY[0x1E69E9840];
  v0 = sub_1D2873CB8();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0) + 32;
  v4 = [objc_opt_self() defaultManager];
  v5 = sub_1D28715B8();
  v20[0] = 0;
  v6 = [v4 removeItemAtURL:v5 error:v20];

  v7 = v20[0];
  if (v6)
  {

    return v7;
  }

  else
  {
    v19 = v20[0];
    v9 = v20[0];
    v10 = sub_1D28714B8();

    swift_willThrow();
    sub_1D28724C8();
    v11 = v10;
    v12 = sub_1D2873CA8();
    v13 = sub_1D2878A18();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v20[0] = v15;
      *v14 = 136315138;
      swift_getErrorValue();
      v16 = sub_1D2879748();
      v18 = sub_1D23D7C84(v16, v17, v20);

      *(v14 + 4) = v18;
      _os_log_impl(&dword_1D226E000, v12, v13, "Failed to store generated face from face picker cache with error: %s", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v15);
      MEMORY[0x1D38A3520](v15, -1, -1);
      MEMORY[0x1D38A3520](v14, -1, -1);
    }

    else
    {
    }

    return (*(v1 + 8))(v3, v0);
  }
}

uint64_t sub_1D24986A0()
{

  return swift_deallocClassInstance();
}

void sub_1D24987A4()
{
  sub_1D2872008();
  if (v0 <= 0x3F)
  {
    sub_1D238DF94();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1D2498838(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC230);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D249AEE0();
  sub_1D2879888();
  v8[15] = 0;
  sub_1D2879578();
  if (!v1)
  {
    type metadata accessor for GeneratedPreviewOptions(0);
    v8[14] = 1;
    sub_1D2872008();
    sub_1D2499220(&qword_1EC6DC238, MEMORY[0x1E696E310]);
    sub_1D2879598();
    v8[13] = 2;
    sub_1D2879558();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1D2498A24@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v29 = sub_1D2872008();
  v27 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v5 = v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC218);
  v28 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v7 = v23 - v6;
  v8 = type metadata accessor for GeneratedPreviewOptions(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = (v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D249AEE0();
  sub_1D2879868();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v24 = v8;
  v25 = a1;
  v12 = v28;
  v11 = v29;
  v33 = 0;
  v13 = v10;
  *v10 = sub_1D28794E8();
  v10[1] = v14;
  v23[2] = v14;
  v32 = 1;
  sub_1D2499220(&qword_1EC6DC228, MEMORY[0x1E696E310]);
  sub_1D2879528();
  v15 = v24;
  (*(v27 + 32))(v13 + *(v24 + 20), v5, v11);
  v31 = 2;
  v23[1] = 0;
  v16 = sub_1D28794C8();
  v23[0] = v17;
  v18 = v25;
  v19 = v16;
  (*(v12 + 8))(v7, v30);
  v20 = (v13 + *(v15 + 24));
  v21 = v23[0];
  *v20 = v19;
  v20[1] = v21;
  sub_1D249A0FC(v13, v26, type metadata accessor for GeneratedPreviewOptions);
  __swift_destroy_boxed_opaque_existential_0(v18);
  return sub_1D249A9A0(v13, type metadata accessor for GeneratedPreviewOptions);
}

uint64_t sub_1D2498E14()
{
  v1 = 0x53746E6572727563;
  if (*v0 != 1)
  {
    v1 = 0xD00000000000001BLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x444965636166;
  }
}

uint64_t sub_1D2498E78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D249B604(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D2498EAC(uint64_t a1)
{
  v2 = sub_1D249AEE0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D2498EE8(uint64_t a1)
{
  v2 = sub_1D249AEE0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D2498F54(uint64_t a1)
{
  sub_1D28797D8();
  sub_1D2877F38();
  sub_1D2871F98();
  sub_1D2877F38();

  if (*(v1 + *(a1 + 24) + 8))
  {
    sub_1D28797F8();
    sub_1D2877F38();
  }

  else
  {
    sub_1D28797F8();
  }

  return sub_1D2879828();
}

uint64_t sub_1D2499014(uint64_t a1, uint64_t a2)
{
  sub_1D2877F38();
  sub_1D2871F98();
  sub_1D2877F38();

  if (!*(v2 + *(a2 + 24) + 8))
  {
    return sub_1D28797F8();
  }

  sub_1D28797F8();

  return sub_1D2877F38();
}

uint64_t sub_1D24990D0(uint64_t a1, uint64_t a2)
{
  sub_1D28797D8();
  sub_1D2877F38();
  sub_1D2871F98();
  sub_1D2877F38();

  if (*(v2 + *(a2 + 24) + 8))
  {
    sub_1D28797F8();
    sub_1D2877F38();
  }

  else
  {
    sub_1D28797F8();
  }

  return sub_1D2879828();
}

uint64_t sub_1D2499220(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D2499268(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D24992D0(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_1D2879618() & 1) == 0)
  {
    return 0;
  }

  v5 = type metadata accessor for GeneratedPreviewOptions(0);
  v6 = sub_1D2871F98();
  v8 = v7;
  if (v6 == sub_1D2871F98() && v8 == v9)
  {
  }

  else
  {
    v11 = sub_1D2879618();

    if ((v11 & 1) == 0)
    {
      return 0;
    }
  }

  v13 = *(v5 + 24);
  v14 = (a1 + v13);
  v15 = *(a1 + v13 + 8);
  v16 = (a2 + v13);
  v17 = v16[1];
  result = (v15 | v17) == 0;
  if (v15)
  {
    v18 = v17 == 0;
  }

  else
  {
    v18 = 1;
  }

  if (!v18)
  {
    if (*v14 == *v16 && v15 == v17)
    {
      return 1;
    }

    else
    {

      return sub_1D2879618();
    }
  }

  return result;
}

uint64_t sub_1D2499418()
{
  v1 = *(type metadata accessor for GeneratedPreviewOptions(0) - 8);
  v2 = (*(v1 + 80) + 56) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 15) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + v3);
  v6 = *(v0 + v4);
  v7 = *(v0 + ((v4 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_1D249519C(v0 + 16, (v0 + v2), v5, v6, v7);
}

uint64_t block_copy_helper_14(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1D2870F78();
}

void sub_1D24994D8(uint64_t a1, uint64_t a2, void *a3)
{
  v32 = sub_1D2873CB8();
  v6 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v31 - v10;
  v12 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAE60);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1D287F500;
  *(v13 + 32) = a1;
  *(v13 + 40) = a2;
  sub_1D2870F68();
  v14 = sub_1D28783C8();

  v15 = [a3 librarySpecificFetchOptions];
  v16 = [v12 fetchFacesWithLocalIdentifiers:v14 options:v15];

  v17 = [v16 firstObject];
  if (v17)
  {
    v18 = objc_opt_self();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6E3A10);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_1D28809B0;
    *(v19 + 32) = v17;
    sub_1D22BCFD0(0, &unk_1EC6D74F0);
    v20 = v17;
    v21 = sub_1D28783C8();

    v22 = [a3 librarySpecificFetchOptions];
    v23 = [v18 fetchAssetsForFaces:v21 options:v22];

    if (v23)
    {
      v24 = [v23 firstObject];

      if (v24)
      {
      }

      else
      {
        sub_1D28724C8();
        v28 = sub_1D2873CA8();
        v29 = sub_1D28789F8();
        if (os_log_type_enabled(v28, v29))
        {
          v30 = swift_slowAlloc();
          *v30 = 0;
          _os_log_impl(&dword_1D226E000, v28, v29, "Failed to fetch asset for its associated PHFace", v30, 2u);
          MEMORY[0x1D38A3520](v30, -1, -1);
        }

        else
        {
        }

        (*(v6 + 8))(v11, v32);
      }
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    sub_1D28724C8();
    v25 = sub_1D2873CA8();
    v26 = sub_1D28789F8();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_1D226E000, v25, v26, "Failed to fetch PHFace from SystemPhotoLibrary", v27, 2u);
      MEMORY[0x1D38A3520](v27, -1, -1);
    }

    (*(v6 + 8))(v8, v32);
  }
}

uint64_t sub_1D24998B0(void *a1, id a2, uint64_t a3, unint64_t a4)
{
  v8 = sub_1D2873CB8();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v65 = &v63 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v63 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v63 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v63 - v18;
  v20 = sub_1D28716B8();
  v68 = *(v20 - 8);
  v69 = v20;
  MEMORY[0x1EEE9AC00](v20);
  v66 = &v63 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v67 = &v63 - v23;
  sub_1D24994D8(a3, a4, a1);
  if (!v24)
  {
    sub_1D28724C8();
    sub_1D2870F68();
    v34 = sub_1D2873CA8();
    v35 = sub_1D28789F8();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = v9;
      v38 = swift_slowAlloc();
      v73 = v38;
      *v36 = 136315138;
      *(v36 + 4) = sub_1D23D7C84(a3, a4, &v73);
      _os_log_impl(&dword_1D226E000, v34, v35, "Failed to fetch asset for faceID: %s", v36, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v38);
      MEMORY[0x1D38A3520](v38, -1, -1);
      MEMORY[0x1D38A3520](v36, -1, -1);

      (*(v37 + 8))(v13, v8);
    }

    else
    {

      (*(v9 + 8))(v13, v8);
    }

    return 0;
  }

  v25 = v24;
  v26 = objc_opt_self();
  v72 = v25;
  v27 = [v26 assetResourcesForAsset:v25 includeDerivatives:1];
  sub_1D22BCFD0(0, &unk_1EC6DADF8);
  v28 = sub_1D28783E8();

  v70 = v9;
  v71 = v8;
  v64 = v19;
  if (!(v28 >> 62))
  {
    v29 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v29)
    {
      goto LABEL_4;
    }

LABEL_25:

    sub_1D28724C8();
    v60 = sub_1D2873CA8();
    v61 = sub_1D28789F8();
    if (os_log_type_enabled(v60, v61))
    {
      v62 = swift_slowAlloc();
      *v62 = 134217984;
      *(v62 + 4) = a2;
      _os_log_impl(&dword_1D226E000, v60, v61, "No assetResource linked to the associated PHFace with resource type: %ld", v62, 0xCu);
      MEMORY[0x1D38A3520](v62, -1, -1);
    }

    (*(v70 + 8))(v16, v71);
    return 0;
  }

LABEL_24:
  v29 = sub_1D2879368();
  if (!v29)
  {
    goto LABEL_25;
  }

LABEL_4:
  v30 = 0;
  while (1)
  {
    if ((v28 & 0xC000000000000001) != 0)
    {
      v31 = MEMORY[0x1D38A1C30](v30, v28);
    }

    else
    {
      if (v30 >= *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_23;
      }

      v31 = *(v28 + 8 * v30 + 32);
    }

    v32 = v31;
    v33 = v30 + 1;
    if (__OFADD__(v30, 1))
    {
      __break(1u);
LABEL_23:
      __break(1u);
      goto LABEL_24;
    }

    if ([v31 type] == a2)
    {
      break;
    }

    ++v30;
    if (v33 == v29)
    {
      goto LABEL_25;
    }
  }

  v39 = [v32 privateFileURL];
  if (v39)
  {
    v40 = v66;
    v41 = v39;
    sub_1D2871638();

    v43 = v67;
    v42 = v68;
    v44 = v69;
    (*(v68 + 32))(v67, v40, v69);
    v56 = sub_1D28716C8();
    v58 = v57;
    sub_1D28713F8();
    swift_allocObject();
    sub_1D28713E8();
    sub_1D249AB38();
    sub_1D28713D8();
    (*(v42 + 8))(v43, v44);

    sub_1D22D6D60(v56, v58);

    return v73;
  }

  v45 = v64;
  sub_1D28724C8();
  v46 = v32;
  v47 = sub_1D2873CA8();
  v48 = sub_1D28789F8();

  if (os_log_type_enabled(v47, v48))
  {
    v49 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    v73 = v50;
    *v49 = 136315138;
    v51 = [v46 debugDescription];
    v52 = sub_1D28780A8();
    v54 = v53;

    v55 = sub_1D23D7C84(v52, v54, &v73);

    *(v49 + 4) = v55;
    _os_log_impl(&dword_1D226E000, v47, v48, "No privateFileURL for resource: %s", v49, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v50);
    MEMORY[0x1D38A3520](v50, -1, -1);
    MEMORY[0x1D38A3520](v49, -1, -1);
  }

  else
  {
  }

  (*(v70 + 8))(v45, v71);
  return 0;
}

uint64_t sub_1D249A0FC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D249A164(void *a1, void (*a2)(char *, uint64_t), uint64_t a3, uint64_t a4, unint64_t a5)
{
  v52 = a2;
  v9 = sub_1D2873CB8();
  v59 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v58 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v48 - v12;
  v14 = sub_1D2871538();
  v54 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v48 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1D28716B8();
  v55 = *(v17 - 8);
  v56 = v17;
  v18 = *(v55 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v48 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v57 = &v48 - v21;
  v53 = a1;
  sub_1D24994D8(a4, a5, a1);
  if (v22)
  {
    v23 = v22;
    sub_1D2871428();
    swift_allocObject();
    sub_1D2871418();
    aBlock = a3;
    sub_1D249AA00();
    v24 = sub_1D2871408();
    v49 = v23;
    v48 = v9;
    v50 = v24;
    v51 = v29;

    v30 = [objc_opt_self() defaultManager];
    v31 = [v30 temporaryDirectory];

    sub_1D2871638();
    aBlock = a4;
    v61 = a5;
    sub_1D2870F68();
    MEMORY[0x1D38A0C50](0x7473696C702ELL, 0xE600000000000000);
    v32 = v54;
    (*(v54 + 104))(v16, *MEMORY[0x1E6968F70], v14);
    sub_1D22BD06C();
    v33 = v57;
    sub_1D2871698();
    (*(v32 + 8))(v16, v14);

    v35 = v55;
    v34 = v56;
    v36 = *(v55 + 8);
    v36(v19, v56);
    sub_1D28716F8();
    v54 = *(v35 + 16);
    (v54)(v19, v33, v34);
    v37 = *(v35 + 80);
    v38 = swift_allocObject();
    v39 = v34;
    v40 = v38;
    v41 = v49;
    v42 = v52;
    *(v38 + 16) = v49;
    *(v38 + 24) = v42;
    v52 = v36;
    v55 = *(v35 + 32);
    (v55)(v38 + ((v37 + 32) & ~v37), v19, v39);
    v64 = sub_1D249AA54;
    v65 = v40;
    aBlock = MEMORY[0x1E69E9820];
    v61 = 1107296256;
    v62 = sub_1D23DFBA8;
    v63 = &block_descriptor_18;
    v58 = _Block_copy(&aBlock);
    v59 = v41;

    v43 = v56;
    (v54)(v19, v57, v56);
    v44 = swift_allocObject();
    (v55)(v44 + ((v37 + 16) & ~v37), v19, v43);
    v64 = sub_1D249AAB8;
    v65 = v44;
    aBlock = MEMORY[0x1E69E9820];
    v61 = 1107296256;
    v62 = sub_1D24936B8;
    v63 = &block_descriptor_24;
    v45 = _Block_copy(&aBlock);

    v46 = v58;
    [v53 performChanges:v58 completionHandler:v45];
    _Block_release(v45);
    _Block_release(v46);
    sub_1D22D6D60(v50, v51);

    return (v52)(v57, v43);
  }

  else
  {
    sub_1D28724C8();
    sub_1D2870F68();
    v25 = sub_1D2873CA8();
    v26 = sub_1D28789F8();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      aBlock = v28;
      *v27 = 136315138;
      *(v27 + 4) = sub_1D23D7C84(a4, a5, &aBlock);
      _os_log_impl(&dword_1D226E000, v25, v26, "Failed to fetch asset for faceID: %s", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v28);
      MEMORY[0x1D38A3520](v28, -1, -1);
      MEMORY[0x1D38A3520](v27, -1, -1);
    }

    return (*(v59 + 1))(v13, v9);
  }
}

uint64_t sub_1D249A9A0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1D249AA00()
{
  result = qword_1EC6DC1D0;
  if (!qword_1EC6DC1D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DC1D0);
  }

  return result;
}

void sub_1D249AA54()
{
  sub_1D28716B8();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  sub_1D2498330(v1, v2);
}

id sub_1D249AAB8()
{
  sub_1D28716B8();

  return sub_1D24983C8();
}

unint64_t sub_1D249AB38()
{
  result = qword_1EC6DC1D8;
  if (!qword_1EC6DC1D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DC1D8);
  }

  return result;
}

uint64_t sub_1D249AB8C(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_1D22BC8FC;

  return sub_1D24938CC(a1, a2, v2);
}

uint64_t sub_1D249AC44()
{
  v1 = *(type metadata accessor for GeneratedPreviewOptions(0) - 8);
  v2 = (*(v1 + 80) + 40) & ~*(v1 + 80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC1E0);
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];

  return sub_1D2496B94(v3, v4, v5, v0 + v2);
}

uint64_t sub_1D249AD24(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC0F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1D249AD94()
{
  result = qword_1EC6DC1F0;
  if (!qword_1EC6DC1F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DC1F0);
  }

  return result;
}

uint64_t sub_1D249ADE8(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DA630);
    sub_1D249AE74(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D249AE74(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DA2D0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D249AEE0()
{
  result = qword_1EC6DC220;
  if (!qword_1EC6DC220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DC220);
  }

  return result;
}

uint64_t sub_1D249AF34(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t block_copy_helper_44(uint64_t a1, uint64_t a2)
{
  return sub_1D23C3EE4(a2 + 32, a1 + 32);
}

{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1D2870F78();
}

unint64_t sub_1D249AFF0()
{
  result = qword_1EC6DC240;
  if (!qword_1EC6DC240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DC240);
  }

  return result;
}

unint64_t sub_1D249B048()
{
  result = qword_1EC6DC248;
  if (!qword_1EC6DC248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DC248);
  }

  return result;
}

unint64_t sub_1D249B0A0()
{
  result = qword_1EC6DC250;
  if (!qword_1EC6DC250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DC250);
  }

  return result;
}

unint64_t sub_1D249B0F8()
{
  result = qword_1EC6DC258;
  if (!qword_1EC6DC258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DC258);
  }

  return result;
}

unint64_t sub_1D249B150()
{
  result = qword_1EC6DC260;
  if (!qword_1EC6DC260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DC260);
  }

  return result;
}

unint64_t sub_1D249B1A8()
{
  result = qword_1EC6DC268;
  if (!qword_1EC6DC268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DC268);
  }

  return result;
}

unint64_t sub_1D249B200()
{
  result = qword_1EC6DC270;
  if (!qword_1EC6DC270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DC270);
  }

  return result;
}

unint64_t sub_1D249B254()
{
  result = qword_1EC6DC280;
  if (!qword_1EC6DC280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DC280);
  }

  return result;
}

unint64_t sub_1D249B2A8()
{
  result = qword_1EC6DC290;
  if (!qword_1EC6DC290)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DC288);
    sub_1D2499220(&qword_1EC6DC298, type metadata accessor for GeneratedPreviewOptions);
    sub_1D2499220(&qword_1EC6DC2A0, type metadata accessor for FacePickerPersistentStorage.GeneratedPreviewArchive);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DC290);
  }

  return result;
}

void *sub_1D249B394(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC2A8);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v9 - v5;
  v7 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D249B254();
  sub_1D2879868();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC288);
    sub_1D249B518();
    sub_1D2879528();
    (*(v4 + 8))(v6, v3);
    v7 = v9[1];
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  return v7;
}

unint64_t sub_1D249B518()
{
  result = qword_1EC6DC2B0;
  if (!qword_1EC6DC2B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DC288);
    sub_1D2499220(&qword_1EC6DC2B8, type metadata accessor for GeneratedPreviewOptions);
    sub_1D2499220(&qword_1EC6DC2C0, type metadata accessor for FacePickerPersistentStorage.GeneratedPreviewArchive);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DC2B0);
  }

  return result;
}

uint64_t sub_1D249B604(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x444965636166 && a2 == 0xE600000000000000;
  if (v4 || (sub_1D2879618() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x53746E6572727563 && a2 == 0xEC000000656C7974 || (sub_1D2879618() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD00000000000001BLL && 0x80000001D28B8670 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_1D2879618();

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

unint64_t sub_1D249B738()
{
  result = qword_1EC6DC2C8;
  if (!qword_1EC6DC2C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DC2C8);
  }

  return result;
}

unint64_t sub_1D249B790()
{
  result = qword_1EC6DC2D0;
  if (!qword_1EC6DC2D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DC2D0);
  }

  return result;
}

unint64_t sub_1D249B7E8()
{
  result = qword_1EC6DC2D8;
  if (!qword_1EC6DC2D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DC2D8);
  }

  return result;
}

uint64_t sub_1D249B85C()
{
  v1 = OBJC_IVAR____TtC23ImagePlaygroundInternal23AbstractEffectViewModel_defaultAspectRatio;
  v2 = sub_1D2871DD8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1D22729C0(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal23AbstractEffectViewModel__delegate);
  sub_1D233EE24(*(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal23AbstractEffectViewModel__vfxLoadingState));

  v3 = OBJC_IVAR____TtC23ImagePlaygroundInternal23AbstractEffectViewModel___observationRegistrar;
  v4 = sub_1D2871A28();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for FacePickerEffectViewModel()
{
  result = qword_1EC6DC2E0;
  if (!qword_1EC6DC2E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D249B9F8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_1D249BA40(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1D249BA90()
{
  sub_1D28797D8();
  sub_1D2877F38();
  return sub_1D2879828();
}

uint64_t sub_1D249BAE4()
{
  sub_1D28797D8();
  sub_1D2877F38();
  return sub_1D2879828();
}

uint64_t sub_1D249BB2C(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1D2879618();
  }
}

uint64_t sub_1D249BB5C@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
  return sub_1D2870F68();
}

unint64_t sub_1D249BB6C()
{
  result = qword_1ED8A5A18;
  if (!qword_1ED8A5A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8A5A18);
  }

  return result;
}

uint64_t sub_1D249BBC0()
{
  v0 = sub_1D28714D8();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1D28718F8();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = sub_1D2878048();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = sub_1D28714E8();
  MEMORY[0x1EEE9AC00](v6 - 8);
  sub_1D2877FE8();
  sub_1D28718C8();
  (*(v1 + 104))(v3, *MEMORY[0x1E6968DF0], v0);
  sub_1D28714F8();
  qword_1ED8B0260 = sub_1D28780F8();
  *algn_1ED8B0268 = v7;
  qword_1ED8B0270 = qword_1ED8B0260;
  unk_1ED8B0278 = v7;
  return sub_1D2870F68();
}

uint64_t sub_1D249BDF4(uint64_t a1, unint64_t a2, uint64_t a3, char a4)
{
  v8 = sub_1D2870F68();
  v9 = sub_1D2679220(v8);

  result = sub_1D27C77BC(a2, a3, v9);
  v11 = result;
  if (a4)
  {

    if (qword_1ED8A14E8 != -1)
    {
      goto LABEL_35;
    }

    goto LABEL_3;
  }

  v15 = *(result + 16);
  if (v15)
  {
    if (a1 <= v15)
    {
      if (a1 < 0)
      {
        __break(1u);
        return result;
      }

      if (a1 != v15)
      {
        sub_1D268E5BC(result, result + 32, 0, (2 * a1) | 1);
        v19 = v18;

        v11 = v19;
      }
    }

    else
    {
      sub_1D249C238(a2, a3, a1 - v15, 0);
      *&v44 = v11;
      sub_1D274DE40(v16);
    }
  }

  else
  {

    sub_1D249C238(a2, a3, a1, 0);
    v11 = v17;
  }

  v20 = *(v11 + 16);
  if (!v20)
  {
    a3 = MEMORY[0x1E69E7CC0];
LABEL_33:

    return a3;
  }

  a1 = 0;
  v21 = v11 + 32;
  a3 = MEMORY[0x1E69E7CC0];
  while (a1 < *(v11 + 16))
  {
    sub_1D22D7044(v21, &v44);
    v22 = v45;
    v23 = v46;
    __swift_project_boxed_opaque_existential_1(&v44, v45);
    v24 = (*(v23 + 48))(v22, v23);
    if (qword_1ED8A14E8 != -1)
    {
      v39 = v24;
      v40 = v25;
      swift_once();
      v25 = v40;
      v24 = v39;
    }

    v26 = *(qword_1ED8B0138 + 24);
    a2 = *(qword_1ED8B0138 + 32);
    if (!v25)
    {
      v30 = v24;
      swift_bridgeObjectRetain_n();
      sub_1D22D70A8(v30, 0);
      sub_1D22D70A8(v26, a2);
LABEL_27:
      sub_1D22D79FC(&v44, v41);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v47 = a3;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1D23D8528(0, *(a3 + 16) + 1, 1);
        a3 = v47;
      }

      a2 = *(a3 + 16);
      v32 = *(a3 + 24);
      if (a2 >= v32 >> 1)
      {
        sub_1D23D8528((v32 > 1), a2 + 1, 1);
      }

      v33 = v42;
      v34 = v43;
      v35 = __swift_mutable_project_boxed_opaque_existential_1(v41, v42);
      MEMORY[0x1EEE9AC00](v35);
      v37 = &v41[-((v36 + 15) & 0xFFFFFFFFFFFFFFF0)];
      (*(v38 + 16))(v37);
      sub_1D2564390(a2, v37, &v47, v33, v34);
      __swift_destroy_boxed_opaque_existential_0(v41);
      a3 = v47;
      goto LABEL_15;
    }

    if (v24 == v26 && v25 == a2)
    {
      sub_1D22D70A8(v24, v25);
    }

    else
    {
      v28 = v24;
      v29 = v25;
      a2 = sub_1D2879618();
      sub_1D22D70A8(v28, v29);
      if ((a2 & 1) == 0)
      {
        goto LABEL_27;
      }
    }

    __swift_destroy_boxed_opaque_existential_0(&v44);
LABEL_15:
    ++a1;
    v21 += 40;
    if (v20 == a1)
    {
      goto LABEL_33;
    }
  }

  __break(1u);
LABEL_35:
  swift_once();
LABEL_3:
  v12 = *(qword_1ED8B0138 + 24);
  v13 = *(qword_1ED8B0138 + 32);
  sub_1D2870F68();
  v14 = sub_1D249C600(v12, v13, a1, a2, a3);

  return v14;
}

void sub_1D249C238(uint64_t (*a1)(void), uint64_t a2, uint64_t a3, int a4)
{
  if (swift_weakLoadStrong())
  {
    v26 = a4;
    v24 = a3;
    v7 = sub_1D23C7E2C();

    swift_getKeyPath();
    *&v31[0] = v7;
    sub_1D249C704();
    sub_1D28719E8();

    v25 = v7;
    v8 = *(v7 + 16);
    v9 = *(v8 + 16);
    sub_1D2870F68();
    if (v9)
    {
      v10 = 0;
      v11 = v8 + 32;
      v12 = MEMORY[0x1E69E7CC0];
      v27 = a1;
      while (v10 < *(v8 + 16))
      {
        sub_1D22D7044(v11, v31);
        if (a1(v31))
        {
          sub_1D22D79FC(v31, v28);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v32 = v12;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_1D23D8528(0, *(v12 + 16) + 1, 1);
            v12 = v32;
          }

          v15 = *(v12 + 16);
          v14 = *(v12 + 24);
          if (v15 >= v14 >> 1)
          {
            sub_1D23D8528((v14 > 1), v15 + 1, 1);
          }

          v16 = v29;
          v17 = v30;
          v18 = __swift_mutable_project_boxed_opaque_existential_1(v28, v29);
          MEMORY[0x1EEE9AC00](v18);
          v20 = &v23 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
          (*(v21 + 16))(v20);
          sub_1D2564390(v15, v20, &v32, v16, v17);
          __swift_destroy_boxed_opaque_existential_0(v28);
          v12 = v32;
          a1 = v27;
        }

        else
        {
          __swift_destroy_boxed_opaque_existential_0(v31);
        }

        ++v10;
        v11 += 40;
        if (v9 == v10)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
      goto LABEL_22;
    }

    v12 = MEMORY[0x1E69E7CC0];
LABEL_15:

    *&v31[0] = v12;
    sub_1D286F76C();
    if ((v26 & 1) == 0)
    {
      v22 = *(*&v31[0] + 16);
      if (v22 >= v24)
      {
        if (v24 < 0)
        {
LABEL_22:
          __break(1u);
          return;
        }

        if (v22 != v24)
        {
          sub_1D268E5BC(*&v31[0], *&v31[0] + 32, 0, (2 * v24) | 1);
        }
      }
    }
  }
}

uint64_t sub_1D249C524()
{
  swift_weakDestroy();

  return swift_deallocClassInstance();
}

uint64_t sub_1D249C590@<X0>(uint64_t *a1@<X8>)
{
  v2 = swift_allocObject();
  swift_weakInit();
  v3 = MEMORY[0x1E69E7CC0];
  *(v2 + 24) = MEMORY[0x1E69E7CC0];
  *(v2 + 32) = v3;
  swift_weakAssign();

  *a1 = v2;
  return result;
}

uint64_t sub_1D249C600(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t a5)
{
  if (!swift_weakLoadStrong())
  {
    return MEMORY[0x1E69E7CC0];
  }

  sub_1D23C7E2C();

  result = sub_1D25310B0(a1, a2, a4, a5, a3, 0);
  v15 = result;
  v11 = *(result + 16);
  v12 = a3 - v11;
  if (__OFSUB__(a3, v11))
  {
    __break(1u);
  }

  else if (v12 < 1)
  {
    v14 = result;

    return v14;
  }

  else
  {
    sub_1D249C238(a4, a5, v12, 0);
    sub_1D274DE40(v13);

    return v15;
  }

  return result;
}

unint64_t sub_1D249C704()
{
  result = qword_1ED8A54D8;
  if (!qword_1ED8A54D8)
  {
    type metadata accessor for ImageConditioningRepresentationsSource();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8A54D8);
  }

  return result;
}

uint64_t type metadata accessor for FacePickerGridView()
{
  result = qword_1EC6DC2F8;
  if (!qword_1EC6DC2F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D249C7D0()
{
  sub_1D249C8D4(319, &qword_1EC6DC308, type metadata accessor for FacePickerGridViewModel, MEMORY[0x1E6981AA0]);
  if (v0 <= 0x3F)
  {
    sub_1D249C8D4(319, &qword_1ED89E028, type metadata accessor for ObservableDebugSettings, MEMORY[0x1E697DCC0]);
    if (v1 <= 0x3F)
    {
      sub_1D22EAE8C();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1D249C8D4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

__n128 __swift_memcpy72_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1D249C95C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 72))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D249C97C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
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

  *(result + 72) = v3;
  return result;
}

uint64_t sub_1D249C9E4(uint64_t a1)
{
  v26 = a1;
  v1 = type metadata accessor for PhotosPersonAsset();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v24 = (&v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC478);
  v5 = v4 - 8;
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v24 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DDDC0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v25 = (&v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v24 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v24 - v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC2F0);
  sub_1D2877618();
  v16 = v27;
  swift_getKeyPath();
  v27 = v16;
  sub_1D24A0A4C(&qword_1EC6DC0F8, type metadata accessor for FacePickerGridViewModel);
  sub_1D28719E8();

  v17 = OBJC_IVAR____TtC23ImagePlaygroundInternal23FacePickerGridViewModel__selectedAsset;
  swift_beginAccess();
  sub_1D22BD1D0(v16 + v17, v15, &unk_1EC6DDDC0);

  sub_1D24A09E4(v26, v12, type metadata accessor for PhotosPersonAsset);
  (*(v2 + 56))(v12, 0, 1, v1);
  v18 = *(v5 + 56);
  sub_1D22BD1D0(v15, v7, &unk_1EC6DDDC0);
  sub_1D22BD1D0(v12, &v7[v18], &unk_1EC6DDDC0);
  v19 = *(v2 + 48);
  if (v19(v7, 1, v1) != 1)
  {
    v21 = v25;
    sub_1D22BD1D0(v7, v25, &unk_1EC6DDDC0);
    if (v19(&v7[v18], 1, v1) != 1)
    {
      v22 = v24;
      sub_1D24A0740(&v7[v18], v24, type metadata accessor for PhotosPersonAsset);
      v20 = _s23ImagePlaygroundInternal17PhotosPersonAssetV2eeoiySbAC_ACtFZ_0(v21, v22);
      sub_1D24A0A94(v22, type metadata accessor for PhotosPersonAsset);
      sub_1D22BD238(v12, &unk_1EC6DDDC0);
      sub_1D22BD238(v15, &unk_1EC6DDDC0);
      sub_1D24A0A94(v21, type metadata accessor for PhotosPersonAsset);
      sub_1D22BD238(v7, &unk_1EC6DDDC0);
      return v20 & 1;
    }

    sub_1D22BD238(v12, &unk_1EC6DDDC0);
    sub_1D22BD238(v15, &unk_1EC6DDDC0);
    sub_1D24A0A94(v21, type metadata accessor for PhotosPersonAsset);
    goto LABEL_6;
  }

  sub_1D22BD238(v12, &unk_1EC6DDDC0);
  sub_1D22BD238(v15, &unk_1EC6DDDC0);
  if (v19(&v7[v18], 1, v1) != 1)
  {
LABEL_6:
    sub_1D22BD238(v7, &qword_1EC6DC478);
    v20 = 0;
    return v20 & 1;
  }

  sub_1D22BD238(v7, &unk_1EC6DDDC0);
  v20 = 1;
  return v20 & 1;
}

double sub_1D249CEB0@<D0>(uint64_t a1@<X8>)
{
  v70 = a1;
  v2 = sub_1D2875E18();
  v76 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v60 = &v56[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0DB0);
  MEMORY[0x1EEE9AC00](v75);
  v69 = &v56[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v5);
  v71 = &v56[-v6];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D99B8);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v59 = &v56[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v9);
  v73 = &v56[-v10];
  MEMORY[0x1EEE9AC00](v11);
  v74 = &v56[-v12];
  MEMORY[0x1EEE9AC00](v13);
  v72 = &v56[-v14];
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v56[-v16];
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v56[-v19];
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC318);
  v67 = *(v21 - 8);
  v68 = v21;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v56[-v22];
  v78 = v1;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC320);
  v24 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DC328);
  v25 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DC330);
  v26 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DC338);
  v27 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DC340);
  v28 = sub_1D24A0260();
  *&v79 = v27;
  *(&v79 + 1) = v28;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  *&v79 = v26;
  *(&v79 + 1) = OpaqueTypeConformance2;
  v30 = swift_getOpaqueTypeConformance2();
  v31 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DC370);
  v32 = sub_1D22BB9D8(&qword_1EC6DC378, &qword_1EC6DC370);
  *&v79 = v31;
  *(&v79 + 1) = v32;
  v33 = swift_getOpaqueTypeConformance2();
  *&v79 = v24;
  *(&v79 + 1) = v25;
  *&v80 = v30;
  *(&v80 + 1) = v33;
  swift_getOpaqueTypeConformance2();
  v66 = v23;
  v34 = v71;
  sub_1D2874F78();
  v61 = type metadata accessor for FacePickerGridView();
  v65 = *(v61 + 24);
  sub_1D24CC0C4(v20);
  v35 = v76;
  v36 = *(v76 + 104);
  v64 = *MEMORY[0x1E697FF40];
  v63 = v36;
  v36(v17);
  v62 = *(v35 + 56);
  v62(v17, 0, 1, v2);
  v37 = *(v75 + 48);
  sub_1D22BD1D0(v20, v34, &qword_1EC6D99B8);
  sub_1D22BD1D0(v17, &v34[v37], &qword_1EC6D99B8);
  v38 = *(v35 + 48);
  if (v38(v34, 1, v2) == 1)
  {
    sub_1D22BD238(v17, &qword_1EC6D99B8);
    sub_1D22BD238(v20, &qword_1EC6D99B8);
    if (v38(&v34[v37], 1, v2) == 1)
    {
      sub_1D22BD238(v34, &qword_1EC6D99B8);
      v39 = v73;
      v40 = v74;
LABEL_8:
      LODWORD(v72) = 0;
      v71 = *(v77 + *(v61 + 28) + 56);
      goto LABEL_10;
    }

LABEL_6:
    sub_1D22BD238(v34, &qword_1EC6E0DB0);
    v71 = 0;
    LODWORD(v72) = 1;
    v39 = v73;
    v40 = v74;
    goto LABEL_10;
  }

  v58 = v20;
  sub_1D22BD1D0(v34, v72, &qword_1EC6D99B8);
  if (v38(&v34[v37], 1, v2) == 1)
  {
    sub_1D22BD238(v17, &qword_1EC6D99B8);
    sub_1D22BD238(v58, &qword_1EC6D99B8);
    (*(v76 + 8))(v72, v2);
    goto LABEL_6;
  }

  v41 = v76;
  v42 = &v34[v37];
  v43 = v60;
  (*(v76 + 32))(v60, v42, v2);
  sub_1D24A0A4C(&qword_1ED89D3D0, MEMORY[0x1E697FF50]);
  v57 = sub_1D2877F98();
  v44 = *(v41 + 8);
  v44(v43, v2);
  sub_1D22BD238(v17, &qword_1EC6D99B8);
  sub_1D22BD238(v58, &qword_1EC6D99B8);
  v44(v72, v2);
  sub_1D22BD238(v71, &qword_1EC6D99B8);
  v39 = v73;
  v40 = v74;
  if (v57)
  {
    goto LABEL_8;
  }

  v71 = 0;
  LODWORD(v72) = 1;
LABEL_10:
  sub_1D24CC0C4(v40);
  v63(v39, v64, v2);
  v62(v39, 0, 1, v2);
  v45 = *(v75 + 48);
  v46 = v69;
  sub_1D22BD1D0(v40, v69, &qword_1EC6D99B8);
  sub_1D22BD1D0(v39, &v46[v45], &qword_1EC6D99B8);
  if (v38(v46, 1, v2) != 1)
  {
    v47 = v59;
    sub_1D22BD1D0(v46, v59, &qword_1EC6D99B8);
    if (v38(&v46[v45], 1, v2) != 1)
    {
      v48 = v76;
      v49 = &v46[v45];
      v50 = v60;
      (*(v76 + 32))(v60, v49, v2);
      sub_1D24A0A4C(&qword_1ED89D3D0, MEMORY[0x1E697FF50]);
      sub_1D2877F98();
      v51 = *(v48 + 8);
      v51(v50, v2);
      sub_1D22BD238(v73, &qword_1EC6D99B8);
      sub_1D22BD238(v74, &qword_1EC6D99B8);
      v51(v47, v2);
      sub_1D22BD238(v46, &qword_1EC6D99B8);
      goto LABEL_17;
    }

    sub_1D22BD238(v73, &qword_1EC6D99B8);
    sub_1D22BD238(v74, &qword_1EC6D99B8);
    (*(v76 + 8))(v47, v2);
    goto LABEL_15;
  }

  sub_1D22BD238(v39, &qword_1EC6D99B8);
  sub_1D22BD238(v40, &qword_1EC6D99B8);
  if (v38(&v46[v45], 1, v2) != 1)
  {
LABEL_15:
    sub_1D22BD238(v46, &qword_1EC6E0DB0);
    goto LABEL_17;
  }

  sub_1D22BD238(v46, &qword_1EC6D99B8);
LABEL_17:
  sub_1D2877848();
  sub_1D28748C8();
  v52 = v70;
  (*(v67 + 32))(v70, v66, v68);
  v53 = (v52 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC380) + 36));
  v54 = v80;
  *v53 = v79;
  v53[1] = v54;
  result = v81[0];
  v53[2] = *v81;
  return result;
}

uint64_t sub_1D249D9C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v41 = a2;
  v37 = sub_1D2875F18();
  v35 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v4 = &v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC340);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v34 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC338);
  v34 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v34 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC328);
  v38 = *(v11 - 8);
  v39 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v36 = &v34 - v12;
  sub_1D2876318();
  v42 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC388);
  sub_1D22BB9D8(&qword_1EC6DC390, &qword_1EC6DC388);
  sub_1D28743A8();
  type metadata accessor for FacePickerGridView();
  v40 = a1;
  sub_1D2876338();
  sub_1D2874298();
  v45 = v13;
  v46 = v14;
  v47 = v15;
  v48 = v16;
  v49 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC358);
  sub_1D2875EF8();
  v17 = sub_1D2874FB8();
  v18 = sub_1D2876358();
  v19 = &v7[*(v5 + 36)];
  *v19 = v17;
  v19[8] = v18;
  sub_1D2875798();
  if (qword_1ED89E0E8 != -1)
  {
    swift_once();
  }

  v20 = qword_1ED8B0058;
  v21 = sub_1D2876668();
  v23 = v22;
  v25 = v24;
  v26 = sub_1D24A0260();
  sub_1D28769F8();
  sub_1D22ED6E0(v21, v23, v25 & 1);

  sub_1D22BD238(v7, &qword_1EC6DC340);
  sub_1D2875F08();
  v43 = v5;
  v44 = v26;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v28 = v36;
  sub_1D2876CF8();
  (*(v35 + 8))(v4, v37);
  v29 = (*(v34 + 8))(v10, v8);
  MEMORY[0x1EEE9AC00](v29);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC330);
  v43 = v8;
  v44 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v30 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DC370);
  v31 = sub_1D22BB9D8(&qword_1EC6DC378, &qword_1EC6DC370);
  v43 = v30;
  v44 = v31;
  swift_getOpaqueTypeConformance2();
  v32 = v39;
  sub_1D2876F08();
  return (*(v38 + 8))(v28, v32);
}

uint64_t sub_1D249DFA4(uint64_t a1)
{
  v2 = sub_1D2875C68();
  MEMORY[0x1EEE9AC00](v2);
  v3 = sub_1D28776E8();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC398);
  sub_1D28776F8();
  *(swift_allocObject() + 16) = xmmword_1D287F500;
  *v6 = *(a1 + *(type metadata accessor for FacePickerGridView() + 28) + 32);
  (*(v4 + 104))(v6, *MEMORY[0x1E697D730], v3);
  sub_1D2877708();
  v9 = a1;
  sub_1D2875918();
  v10 = 0;
  sub_1D24A0A4C(&qword_1ED89D4C0, MEMORY[0x1E697FCB0]);
  sub_1D2879968();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC3A0);
  sub_1D24A0454();
  return sub_1D28779B8();
}

uint64_t sub_1D249E254(uint64_t a1)
{
  v2 = type metadata accessor for FacePickerGridView();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC2F0);
  sub_1D2877618();
  swift_getKeyPath();
  sub_1D24A0A4C(&qword_1EC6DC0F8, type metadata accessor for FacePickerGridViewModel);
  sub_1D28719E8();

  v5 = OBJC_IVAR____TtC23ImagePlaygroundInternal23FacePickerGridViewModel__allLookAssets;
  swift_beginAccess();
  v6 = *(v10[1] + v5);
  sub_1D2870F68();

  v10[0] = v6;
  sub_1D24A09E4(a1, v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for FacePickerGridView);
  v7 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v8 = swift_allocObject();
  sub_1D24A0740(v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7, type metadata accessor for FacePickerGridView);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC3C0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC3B8);
  sub_1D22BB9D8(&qword_1EC6DC3C8, &qword_1EC6DC3C0);
  sub_1D22BB9D8(&qword_1EC6DC3B0, &qword_1EC6DC3B8);
  sub_1D24A0A4C(&qword_1EC6D8788, type metadata accessor for PhotosPersonAsset);
  return sub_1D2877588();
}

uint64_t sub_1D249E540@<X0>(double *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v36 = a1;
  v5 = type metadata accessor for PhotosPersonAsset();
  v37 = *(v5 - 8);
  v6 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for FacePickerGridView();
  v9 = v8 - 8;
  v35 = *(v8 - 8);
  v10 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC3D0);
  v12 = *(v11 - 8);
  v39 = v11;
  v40 = v12;
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v35 - v13;
  v15 = sub_1D2875188();
  v16 = v15 - 8;
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v35 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  *a3 = sub_1D2875918();
  *(a3 + 8) = 0;
  *(a3 + 16) = 1;
  v38 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC3D8) + 44);
  v19 = *(a2 + *(v9 + 36) + 16);
  v20 = *(v16 + 28);
  v21 = *MEMORY[0x1E697F468];
  v22 = sub_1D2875868();
  (*(*(v22 - 8) + 104))(&v18[v20], v21, v22);
  *v18 = v19;
  *(v18 + 1) = v19;
  v23 = v36;
  sub_1D249E9D8(v36, v18, v14);
  sub_1D24A09E4(a2, &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for FacePickerGridView);
  sub_1D24A09E4(v23, v7, type metadata accessor for PhotosPersonAsset);
  v24 = (*(v35 + 80) + 16) & ~*(v35 + 80);
  v25 = (v10 + *(v37 + 80) + v24) & ~*(v37 + 80);
  v26 = swift_allocObject();
  sub_1D24A0740(&v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v26 + v24, type metadata accessor for FacePickerGridView);
  sub_1D24A0740(v7, v26 + v25, type metadata accessor for PhotosPersonAsset);
  v27 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DC3E0);
  v28 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DC3E8);
  v29 = sub_1D2875718();
  v30 = sub_1D24A0874();
  v31 = sub_1D24A0A4C(&qword_1ED89D6B0, MEMORY[0x1E697C4E8]);
  v41 = v28;
  v42 = v29;
  v43 = v30;
  v44 = v31;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v41 = v27;
  v42 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v33 = v39;
  sub_1D2876908();

  (*(v40 + 8))(v14, v33);
  return sub_1D24A0A94(v18, MEMORY[0x1E697EAF0]);
}

uint64_t sub_1D249E9D8@<X0>(double *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v33 = a1;
  v34 = a2;
  v42 = a3;
  v3 = sub_1D28756B8();
  v40 = *(v3 - 8);
  v41 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v39 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D2875718();
  v38 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1D28771B8();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC3E8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v33 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC3E0);
  v16 = *(v15 - 8);
  v35 = v15;
  v36 = v16;
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v33 - v17;
  type metadata accessor for PhotosPersonAsset();
  type metadata accessor for PhotosPersonImage();
  sub_1D262D4E8();
  sub_1D2877188();
  (*(v9 + 104))(v11, *MEMORY[0x1E6981630], v8);
  v19 = sub_1D2877228();

  (*(v9 + 8))(v11, v8);
  v20 = &v14[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC400) + 36)];
  sub_1D24A09E4(v34, v20, MEMORY[0x1E697EAF0]);
  *(v20 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC410) + 36)) = 256;
  *v14 = v19;
  *(v14 + 1) = 0;
  *(v14 + 8) = 257;
  v21 = sub_1D2877818();
  v23 = v22;
  v24 = &v14[*(v12 + 36)];
  sub_1D249F3E0(v33, v37, v24);
  v25 = (v24 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC420) + 36));
  *v25 = v21;
  v25[1] = v23;
  sub_1D2875708();
  v26 = sub_1D24A0874();
  v27 = sub_1D24A0A4C(&qword_1ED89D6B0, MEMORY[0x1E697C4E8]);
  sub_1D2876768();
  (*(v38 + 8))(v7, v5);
  sub_1D22BD238(v14, &qword_1EC6DC3E8);
  v28 = v39;
  v29 = v40;
  v30 = v41;
  (*(v40 + 104))(v39, *MEMORY[0x1E697F3A0], v41);
  v43 = v12;
  v44 = v5;
  v45 = v26;
  v46 = v27;
  swift_getOpaqueTypeConformance2();
  v31 = v35;
  sub_1D28768A8();
  (*(v29 + 8))(v28, v30);
  return (*(v36 + 8))(v18, v31);
}

uint64_t sub_1D249EEF4(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DDDC0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v8 - v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC2F0);
  sub_1D2877618();
  sub_1D24A09E4(a2, v5, type metadata accessor for PhotosPersonAsset);
  v6 = type metadata accessor for PhotosPersonAsset();
  (*(*(v6 - 8) + 56))(v5, 0, 1, v6);
  sub_1D24A0F18(v5);

  return sub_1D22BD238(v5, &unk_1EC6DDDC0);
}

uint64_t sub_1D249F024(uint64_t a1)
{
  v2 = sub_1D2875C08();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC370);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v9[-v5];
  sub_1D2875BC8();
  v10 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9D30);
  sub_1D22BB9D8(&qword_1EC6D7700, &qword_1EC6D9D30);
  sub_1D28745C8();
  v7 = sub_1D22BB9D8(&qword_1EC6DC378, &qword_1EC6DC370);
  MEMORY[0x1D389E720](v6, v3, v7);
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1D249F210(uint64_t a1)
{
  v2 = type metadata accessor for FacePickerGridView();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = sub_1D2874288();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D2874268();
  sub_1D24A09E4(a1, &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for FacePickerGridView);
  v8 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v9 = swift_allocObject();
  sub_1D24A0740(&v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v8, type metadata accessor for FacePickerGridView);
  return MEMORY[0x1D389FDF0](v7, sub_1D24A03EC, v9);
}

uint64_t sub_1D249F38C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC2F0);
  sub_1D2877618();
  sub_1D24A12A4();
}

uint64_t sub_1D249F3E0@<X0>(double *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v127 = a2;
  v125 = a3;
  v123 = sub_1D2875678();
  v118 = *(v123 - 8);
  MEMORY[0x1EEE9AC00](v123);
  v113 = &v93 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = sub_1D2874FC8();
  v112 = *(v117 - 8);
  MEMORY[0x1EEE9AC00](v117);
  v111 = &v93 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC428);
  v119 = *(v122 - 8);
  MEMORY[0x1EEE9AC00](v122);
  v114 = &v93 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC430);
  v120 = *(v7 - 8);
  v121 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v115 = &v93 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v116 = &v93 - v10;
  v107 = sub_1D2873998();
  v104 = *(v107 - 8);
  MEMORY[0x1EEE9AC00](v107);
  v12 = &v93 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = sub_1D2875718();
  v97 = *(v100 - 8);
  MEMORY[0x1EEE9AC00](v100);
  v14 = &v93 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D99E8);
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v93 - v17;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DE880);
  v96 = *(v98 - 8);
  MEMORY[0x1EEE9AC00](v98);
  v95 = &v93 - v19;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC438);
  MEMORY[0x1EEE9AC00](v94);
  v21 = &v93 - v20;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC440);
  MEMORY[0x1EEE9AC00](v99);
  v102 = &v93 - v22;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC448);
  MEMORY[0x1EEE9AC00](v101);
  v126 = &v93 - v23;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC450);
  MEMORY[0x1EEE9AC00](v103);
  v106 = &v93 - v24;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC458);
  MEMORY[0x1EEE9AC00](v105);
  v110 = &v93 - v25;
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC460);
  MEMORY[0x1EEE9AC00](v108);
  v109 = &v93 - v26;
  v27 = *(a1 + 1);
  v124 = a1;
  if (v27)
  {
    v28 = *a1;
    v29 = v27;
  }

  else
  {
    v28 = 0.0;
    v29 = 0xE000000000000000;
  }

  v140 = v28;
  v141 = *&v29;
  sub_1D22BD06C();
  sub_1D2870F68();
  sub_1D2877278();
  sub_1D2875708();
  sub_1D22BB9D8(&qword_1ED89D200, &qword_1EC6D99E8);
  sub_1D24A0A4C(&qword_1ED89D6B0, MEMORY[0x1E697C4E8]);
  v30 = v95;
  v31 = v100;
  sub_1D2876768();
  (*(v97 + 8))(v14, v31);
  (*(v16 + 8))(v18, v15);
  v32 = &v21[*(v94 + 36)];
  v33 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9FF0) + 28);
  sub_1D2875988();
  v34 = sub_1D2875998();
  (*(*(v34 - 8) + 56))(v32 + v33, 0, 1, v34);
  *v32 = swift_getKeyPath();
  (*(v96 + 32))(v21, v30, v98);
  if (qword_1EC6D8B60 != -1)
  {
    swift_once();
  }

  v35 = v107;
  v36 = __swift_project_value_buffer(v107, qword_1EC6E3BC0);
  v37 = *(v104 + 16);
  v37(v12, v36, v35);
  v38 = sub_1D2877108();
  v39 = sub_1D2877018();
  v40 = v21;
  v41 = v102;
  sub_1D22EC9BC(v40, v102, &qword_1EC6DC438);
  v42 = (v41 + *(v99 + 36));
  *v42 = v38;
  v42[1] = v39;
  v104 = sub_1D2877848();
  v44 = v43;
  v37(v12, v36, v35);
  v45 = sub_1D2877108();
  v100 = v45;
  v107 = v127 + *(type metadata accessor for FacePickerGridView() + 28);
  sub_1D28745B8();
  v46 = v155;
  LODWORD(v35) = v156;
  v47 = v157;
  v48 = v158;
  v49 = v159;
  v50 = v160;
  v51 = sub_1D2877848();
  v53 = v52;
  *&v134 = v46 * 0.5;
  *(&v134 + 1) = v46;
  *&v135 = __PAIR64__(v47, v35);
  *(&v135 + 1) = v48;
  *&v136 = v49;
  *(&v136 + 1) = v50;
  *&v137 = v45;
  WORD4(v137) = 256;
  *(&v137 + 10) = v132;
  HIWORD(v137) = v133;
  *&v138 = v51;
  *(&v138 + 1) = v52;
  v54 = v104;
  *&v139 = v104;
  *(&v139 + 1) = v44;
  v55 = v41;
  v56 = v126;
  sub_1D22EC9BC(v55, v126, &qword_1EC6DC440);
  v57 = (v56 + *(v101 + 36));
  v58 = v137;
  v57[2] = v136;
  v57[3] = v58;
  v59 = v139;
  v57[4] = v138;
  v57[5] = v59;
  v60 = v135;
  *v57 = v134;
  v57[1] = v60;
  v140 = v46 * 0.5;
  v141 = v46;
  v142 = v35;
  v143 = v47;
  v144 = v48;
  v145 = v49;
  v146 = v50;
  v147 = v100;
  v148 = 256;
  v150 = v133;
  v149 = v132;
  v151 = v51;
  v152 = v53;
  v153 = v54;
  v154 = v44;
  sub_1D2282A98(&v134, &v128);
  sub_1D22BD238(&v140, &qword_1EC6DC468);
  v61 = v106;
  v62 = &v106[*(v103 + 36)];
  v63 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9FE8) + 28);
  v64 = *MEMORY[0x1E69816C0];
  v65 = sub_1D2877218();
  (*(*(v65 - 8) + 104))(v62 + v63, v64, v65);
  *v62 = swift_getKeyPath();
  sub_1D22EC9BC(v126, v61, &qword_1EC6DC448);
  LOBYTE(v64) = sub_1D2876338();
  sub_1D2874298();
  v67 = v66;
  v69 = v68;
  v71 = v70;
  v73 = v72;
  v74 = v110;
  sub_1D22EC9BC(v61, v110, &qword_1EC6DC450);
  v75 = v74 + *(v105 + 36);
  *v75 = v64;
  *(v75 + 8) = v67;
  *(v75 + 16) = v69;
  *(v75 + 24) = v71;
  *(v75 + 32) = v73;
  *(v75 + 40) = 0;
  sub_1D2877AE8();
  v76 = v111;
  sub_1D2874FD8();
  v77 = v113;
  sub_1D2875668();
  v78 = sub_1D24A0A4C(&qword_1EC6D7960, MEMORY[0x1E697E898]);
  v79 = sub_1D24A0A4C(&qword_1ED89D6C8, MEMORY[0x1E697F260]);
  v80 = v114;
  v81 = v117;
  v82 = v123;
  sub_1D28743D8();
  (*(v118 + 8))(v77, v82);
  (*(v112 + 8))(v76, v81);
  v83 = 1.0;
  MEMORY[0x1D38A0390](0.5, 1.0, 0.0);
  v128 = v81;
  v129 = v82;
  v130 = v78;
  v131 = v79;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v85 = v116;
  v86 = v122;
  sub_1D28743E8();

  (*(v119 + 8))(v80, v86);
  v88 = v120;
  v87 = v121;
  (*(v120 + 16))(v115, v85, v121);
  v128 = v86;
  v129 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v89 = sub_1D2874988();
  (*(v88 + 8))(v85, v87);
  v90 = v109;
  sub_1D22EC9BC(v74, v109, &qword_1EC6DC458);
  *(v90 + *(v108 + 36)) = v89;
  if ((sub_1D249C9E4(v124) & 1) == 0)
  {
    v83 = 0.0;
  }

  v91 = v125;
  sub_1D22EC9BC(v90, v125, &qword_1EC6DC460);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC470);
  *(v91 + *(result + 36)) = v83;
  return result;
}

uint64_t sub_1D24A0200(uint64_t a1)
{
  result = sub_1D24A0A4C(&qword_1EC6DC310, type metadata accessor for FacePickerGridView);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D24A0260()
{
  result = qword_1EC6DC348;
  if (!qword_1EC6DC348)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DC340);
    sub_1D24A02EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DC348);
  }

  return result;
}

unint64_t sub_1D24A02EC()
{
  result = qword_1EC6DC350;
  if (!qword_1EC6DC350)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DC358);
    sub_1D22BB9D8(&qword_1EC6DC360, &qword_1EC6DC368);
    sub_1D24A0A4C(&qword_1EC6D77C8, MEMORY[0x1E6980270]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DC350);
  }

  return result;
}

uint64_t sub_1D24A03EC()
{
  type metadata accessor for FacePickerGridView();

  return sub_1D249F38C();
}

unint64_t sub_1D24A0454()
{
  result = qword_1EC6DC3A8;
  if (!qword_1EC6DC3A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DC3A0);
    sub_1D22BB9D8(&qword_1EC6DC3B0, &qword_1EC6DC3B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DC3A8);
  }

  return result;
}

uint64_t objectdestroyTm_7()
{
  v1 = (type metadata accessor for FacePickerGridView() - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC2F0);
  (*(*(v3 - 8) + 8))(v2, v3);

  v4 = v1[8];
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

uint64_t sub_1D24A06C0@<X0>(double *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for FacePickerGridView() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_1D249E540(a1, v6, a2);
}

uint64_t sub_1D24A0740(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D24A07A8()
{
  v1 = *(type metadata accessor for FacePickerGridView() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(type metadata accessor for PhotosPersonAsset() - 8);
  v5 = v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80));

  return sub_1D249EEF4(v0 + v2, v5);
}

unint64_t sub_1D24A0874()
{
  result = qword_1EC6DC3F0;
  if (!qword_1EC6DC3F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DC3E8);
    sub_1D24A092C();
    sub_1D22BB9D8(&qword_1EC6DC418, &qword_1EC6DC420);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DC3F0);
  }

  return result;
}

unint64_t sub_1D24A092C()
{
  result = qword_1EC6DC3F8;
  if (!qword_1EC6DC3F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DC400);
    sub_1D22F587C();
    sub_1D22BB9D8(&qword_1EC6DC408, &qword_1EC6DC410);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DC3F8);
  }

  return result;
}

uint64_t sub_1D24A09E4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D24A0A4C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D24A0A94(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1D24A0AF4()
{
  result = qword_1EC6DC480;
  if (!qword_1EC6DC480)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DC380);
    sub_1D22BB9D8(&qword_1EC6DC488, &qword_1EC6DC318);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DC480);
  }

  return result;
}

uint64_t sub_1D24A0BAC(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DDDC0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v10 - v4;
  v6 = OBJC_IVAR____TtC23ImagePlaygroundInternal23FacePickerGridViewModel__selectedAsset;
  swift_beginAccess();
  sub_1D24A3128(v1 + v6, v5);
  v7 = sub_1D24A3198(v5, a1);
  sub_1D22BD238(v5, &unk_1EC6DDDC0);
  if (v7)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v10[-2] = v1;
    v10[-1] = a1;
    v10[2] = v1;
    sub_1D24A3640(&qword_1EC6DC0F8, type metadata accessor for FacePickerGridViewModel);
    sub_1D28719D8();
  }

  else
  {
    swift_beginAccess();
    sub_1D24A3408(a1, v1 + v6);
    swift_endAccess();
  }

  return sub_1D22BD238(a1, &unk_1EC6DDDC0);
}

uint64_t sub_1D24A0D90@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_1D24A3640(&qword_1EC6DC0F8, type metadata accessor for FacePickerGridViewModel);
  sub_1D28719E8();

  v3 = OBJC_IVAR____TtC23ImagePlaygroundInternal23FacePickerGridViewModel__selectedAsset;
  swift_beginAccess();
  return sub_1D24A3128(v5 + v3, a1);
}

uint64_t sub_1D24A0E58()
{
  swift_getKeyPath();
  sub_1D24A3640(&qword_1EC6DC0F8, type metadata accessor for FacePickerGridViewModel);
  sub_1D28719E8();

  swift_beginAccess();
  return sub_1D2870F68();
}

uint64_t sub_1D24A0F18(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DDDC0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v25 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v25 - v11;
  v13 = type metadata accessor for PhotosPersonAsset();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v28 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v25 - v17;
  sub_1D24A3128(a1, v12);
  v19 = *(v14 + 48);
  if (v19(v12, 1, v13) == 1)
  {
    return sub_1D22BD238(v12, &unk_1EC6DDDC0);
  }

  sub_1D23DBC5C(v12, v18);
  v27 = v18;
  sub_1D24A35A4(v18, v9);
  v26 = *(v14 + 56);
  v26(v9, 0, 1, v13);
  sub_1D24A0BAC(v9);
  swift_getKeyPath();
  v21 = OBJC_IVAR____TtC23ImagePlaygroundInternal23FacePickerGridViewModel___observationRegistrar;
  v30 = v2;
  sub_1D24A3640(&qword_1EC6DC0F8, type metadata accessor for FacePickerGridViewModel);
  v25 = v21;
  sub_1D28719E8();

  v22 = OBJC_IVAR____TtC23ImagePlaygroundInternal23FacePickerGridViewModel__selectedAsset;
  swift_beginAccess();
  sub_1D24A3128(v2 + v22, v6);
  if (v19(v6, 1, v13) == 1)
  {
    sub_1D22BD238(v6, &unk_1EC6DDDC0);
  }

  else
  {
    v23 = v28;
    sub_1D23DBC5C(v6, v28);
    swift_getKeyPath();
    v29 = v2;
    sub_1D28719E8();

    if (*(v2 + 32))
    {
      swift_unknownObjectRetain();
      sub_1D249036C(v23);
      swift_unknownObjectRelease();
    }

    sub_1D24A3494(v23);
  }

  v24 = v27;
  v26(v9, 1, 1, v13);
  sub_1D24A0BAC(v9);
  return sub_1D24A3494(v24);
}

uint64_t sub_1D24A12A4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DDDC0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v10 - v2;
  swift_getKeyPath();
  v11 = v0;
  sub_1D24A3640(&qword_1EC6DC0F8, type metadata accessor for FacePickerGridViewModel);
  sub_1D28719E8();

  v4 = *(v0 + 32);
  if (v4)
  {
    swift_getKeyPath();
    v11 = v4;
    sub_1D24A3640(&qword_1EC6D9A38, type metadata accessor for FacePickerCarouselViewModel);
    swift_unknownObjectRetain();
    sub_1D28719E8();

    v5 = *(v4 + OBJC_IVAR____TtC23ImagePlaygroundInternal27FacePickerCarouselViewModel__shouldDismissFacePickerGrid);
    if (v5)
    {
      v6 = *(v4 + OBJC_IVAR____TtC23ImagePlaygroundInternal27FacePickerCarouselViewModel__shouldDismissFacePickerGrid + 8);
      v7 = sub_1D2870F78();
      v5(v7);
      sub_1D22D7900(v5, v6);
    }

    sub_1D24835A8(0);
    swift_unknownObjectRelease();
  }

  v8 = type metadata accessor for PhotosPersonAsset();
  (*(*(v8 - 8) + 56))(v3, 1, 1, v8);
  return sub_1D24A0BAC(v3);
}

uint64_t sub_1D24A14A8(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC23ImagePlaygroundInternal23FacePickerGridViewModel__allLookAssets;
  swift_beginAccess();
  v4 = sub_1D2870F68();
  v5 = sub_1D2338E60(v4, a1);

  if (v5)
  {
    *(v1 + v3) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D24A3640(&qword_1EC6DC0F8, type metadata accessor for FacePickerGridViewModel);
    sub_1D28719D8();
  }
}

uint64_t sub_1D24A15F8(__int128 *a1)
{
  v2 = a1[1];
  v21 = *a1;
  v22 = v2;
  v3 = a1[3];
  v5 = *a1;
  v4 = a1[1];
  v23 = a1[2];
  v24 = v3;
  v6 = (v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal23FacePickerGridViewModel__person);
  v7 = *(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal23FacePickerGridViewModel__person + 16);
  v17 = *(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal23FacePickerGridViewModel__person);
  v18 = v7;
  v8 = *(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal23FacePickerGridViewModel__person + 48);
  v19 = *(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal23FacePickerGridViewModel__person + 32);
  v20 = v8;
  v16[0] = v5;
  v16[1] = v4;
  v9 = a1[3];
  v16[2] = a1[2];
  v16[3] = v9;
  if (_s23ImagePlaygroundInternal12PhotosPersonV2eeoiySbAC_ACtFZ_0(&v17, v16))
  {
    v10 = v6[1];
    v17 = *v6;
    v18 = v10;
    v11 = v6[3];
    v19 = v6[2];
    v20 = v11;
    v12 = v22;
    *v6 = v21;
    v6[1] = v12;
    v13 = v24;
    v6[2] = v23;
    v6[3] = v13;
    return sub_1D22D640C(&v17);
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    *&v17 = v1;
    sub_1D24A3640(&qword_1EC6DC0F8, type metadata accessor for FacePickerGridViewModel);
    sub_1D28719D8();
    sub_1D22D640C(&v21);
  }
}

uint64_t sub_1D24A1770()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8E60);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v12 - v3;
  swift_getKeyPath();
  v13 = v0;
  sub_1D24A3640(&qword_1EC6DC0F8, type metadata accessor for FacePickerGridViewModel);
  sub_1D28719E8();

  v5 = OBJC_IVAR____TtC23ImagePlaygroundInternal23FacePickerGridViewModel__allLookAssets;
  result = swift_beginAccess();
  if (!*(*(v1 + v5) + 16))
  {
    v7 = sub_1D28785F8();
    (*(*(v7 - 8) + 56))(v4, 1, 1, v7);
    v8 = swift_allocObject();
    swift_weakInit();
    sub_1D2878568();
    sub_1D2870F78();
    v9 = sub_1D2878558();
    v10 = swift_allocObject();
    v11 = MEMORY[0x1E69E85E0];
    v10[2] = v9;
    v10[3] = v11;
    v10[4] = v8;

    sub_1D22AE01C(0, 0, v4, &unk_1D288C690, v10);
  }

  return result;
}

uint64_t sub_1D24A195C()
{
  swift_getKeyPath();
  sub_1D24A3640(&qword_1EC6DC0F8, type metadata accessor for FacePickerGridViewModel);
  sub_1D28719E8();

  return swift_unknownObjectRetain();
}

uint64_t sub_1D24A1A04@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D24A3640(&qword_1EC6DC0F8, type metadata accessor for FacePickerGridViewModel);
  sub_1D28719E8();

  v4 = OBJC_IVAR____TtC23ImagePlaygroundInternal23FacePickerGridViewModel__selectedAsset;
  swift_beginAccess();
  return sub_1D24A3128(v3 + v4, a2);
}

uint64_t sub_1D24A1ACC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DDDC0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v6 - v3;
  sub_1D24A3128(a1, &v6 - v3);
  return sub_1D24A0BAC(v4);
}

uint64_t sub_1D24A1B60(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC23ImagePlaygroundInternal23FacePickerGridViewModel__selectedAsset;
  swift_beginAccess();
  sub_1D24A3408(a2, a1 + v4);
  return swift_endAccess();
}

uint64_t sub_1D24A1BCC@<X0>(_OWORD *a1@<X8>)
{
  swift_getKeyPath();
  *&v8[0] = v1;
  sub_1D24A3640(&qword_1EC6DC0F8, type metadata accessor for FacePickerGridViewModel);
  sub_1D28719E8();

  v3 = *(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal23FacePickerGridViewModel__person + 16);
  v8[0] = *(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal23FacePickerGridViewModel__person);
  v8[1] = v3;
  v5 = *(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal23FacePickerGridViewModel__person + 48);
  v9 = *(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal23FacePickerGridViewModel__person + 32);
  v4 = v9;
  v10 = v5;
  *a1 = v8[0];
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  return sub_1D22D63B0(v8, &v7);
}

uint64_t sub_1D24A1C9C@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  *&v12[0] = v3;
  sub_1D24A3640(&qword_1EC6DC0F8, type metadata accessor for FacePickerGridViewModel);
  sub_1D28719E8();

  v4 = v3 + OBJC_IVAR____TtC23ImagePlaygroundInternal23FacePickerGridViewModel__person;
  v5 = *(v3 + OBJC_IVAR____TtC23ImagePlaygroundInternal23FacePickerGridViewModel__person + 32);
  v6 = *(v3 + OBJC_IVAR____TtC23ImagePlaygroundInternal23FacePickerGridViewModel__person + 48);
  v7 = *(v3 + OBJC_IVAR____TtC23ImagePlaygroundInternal23FacePickerGridViewModel__person + 16);
  v12[0] = *(v3 + OBJC_IVAR____TtC23ImagePlaygroundInternal23FacePickerGridViewModel__person);
  v12[1] = v7;
  v12[2] = v5;
  v12[3] = v6;
  v8 = *(v3 + OBJC_IVAR____TtC23ImagePlaygroundInternal23FacePickerGridViewModel__person + 16);
  *a2 = *(v3 + OBJC_IVAR____TtC23ImagePlaygroundInternal23FacePickerGridViewModel__person);
  a2[1] = v8;
  v9 = *(v4 + 48);
  a2[2] = *(v4 + 32);
  a2[3] = v9;
  return sub_1D22D63B0(v12, &v11);
}

void sub_1D24A1D74(uint64_t a1, _OWORD *a2)
{
  v2 = (a1 + OBJC_IVAR____TtC23ImagePlaygroundInternal23FacePickerGridViewModel__person);
  v3 = *(a1 + OBJC_IVAR____TtC23ImagePlaygroundInternal23FacePickerGridViewModel__person + 32);
  v4 = *(a1 + OBJC_IVAR____TtC23ImagePlaygroundInternal23FacePickerGridViewModel__person + 56);
  v5 = a2[1];
  *v2 = *a2;
  v2[1] = v5;
  v6 = a2[3];
  v2[2] = a2[2];
  v2[3] = v6;
  sub_1D22D63B0(a2, &v7);

  sub_1D238D058(v3);
}

uint64_t sub_1D24A1E18@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D24A3640(&qword_1EC6DC0F8, type metadata accessor for FacePickerGridViewModel);
  sub_1D28719E8();

  v4 = OBJC_IVAR____TtC23ImagePlaygroundInternal23FacePickerGridViewModel__allLookAssets;
  swift_beginAccess();
  *a2 = *(v3 + v4);
  return sub_1D2870F68();
}

uint64_t sub_1D24A1F0C(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC23ImagePlaygroundInternal23FacePickerGridViewModel__allLookAssets;
  swift_beginAccess();
  *(a1 + v4) = a2;
  sub_1D2870F68();
}

uint64_t sub_1D24A1F7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[35] = a4;
  v5 = type metadata accessor for PhotosPersonAsset();
  v4[36] = v5;
  v4[37] = *(v5 - 8);
  v4[38] = swift_task_alloc();
  v4[39] = swift_task_alloc();
  v4[40] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DDDC0);
  v4[41] = swift_task_alloc();
  v4[42] = swift_task_alloc();
  v4[43] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC0E0);
  v4[44] = v6;
  v4[45] = *(v6 - 8);
  v4[46] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC0E8);
  v4[47] = v7;
  v4[48] = *(v7 - 8);
  v4[49] = swift_task_alloc();
  v8 = sub_1D2871798();
  v4[50] = v8;
  v4[51] = *(v8 - 8);
  v4[52] = swift_task_alloc();
  v4[53] = swift_task_alloc();
  v4[54] = sub_1D2878568();
  v4[55] = sub_1D2878558();
  v10 = sub_1D28784F8();
  v4[56] = v10;
  v4[57] = v9;

  return MEMORY[0x1EEE6DFA0](sub_1D24A2214, v10, v9);
}

uint64_t sub_1D24A2214()
{
  v21 = v0;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 464) = Strong;
  if (Strong)
  {
    v2 = Strong;
    v3 = *(v0 + 360);
    v4 = *(v0 + 368);
    v5 = *(v0 + 352);
    sub_1D24A14A8(MEMORY[0x1E69E7CC0]);
    sub_1D2871788();
    v6 = sub_1D23C6DDC();
    swift_getKeyPath();
    *(v0 + 472) = OBJC_IVAR____TtC23ImagePlaygroundInternal23FacePickerGridViewModel___observationRegistrar;
    *(v0 + 216) = v2;
    *(v0 + 480) = sub_1D24A3640(&qword_1EC6DC0F8, type metadata accessor for FacePickerGridViewModel);
    sub_1D28719E8();

    v7 = (v2 + OBJC_IVAR____TtC23ImagePlaygroundInternal23FacePickerGridViewModel__person);
    v8 = *(v2 + OBJC_IVAR____TtC23ImagePlaygroundInternal23FacePickerGridViewModel__person + 48);
    v10 = *(v2 + OBJC_IVAR____TtC23ImagePlaygroundInternal23FacePickerGridViewModel__person);
    v9 = *(v2 + OBJC_IVAR____TtC23ImagePlaygroundInternal23FacePickerGridViewModel__person + 16);
    *(v0 + 48) = *(v2 + OBJC_IVAR____TtC23ImagePlaygroundInternal23FacePickerGridViewModel__person + 32);
    *(v0 + 64) = v8;
    *(v0 + 16) = v10;
    *(v0 + 32) = v9;
    v11 = v7[1];
    v20[0] = *v7;
    v20[1] = v11;
    v12 = v7[3];
    v20[2] = v7[2];
    v20[3] = v12;
    sub_1D22D63B0(v0 + 16, v0 + 80);
    sub_1D255AA0C(v20, 0);
    sub_1D22D640C(v0 + 16);
    sub_1D2878658();

    (*(v3 + 8))(v4, v5);
    *(v0 + 488) = OBJC_IVAR____TtC23ImagePlaygroundInternal23FacePickerGridViewModel__allLookAssets;
    *(v0 + 496) = MEMORY[0x1E69E7CC0];
    v13 = sub_1D2878558();
    *(v0 + 504) = v13;
    v14 = swift_task_alloc();
    *(v0 + 512) = v14;
    *v14 = v0;
    v14[1] = sub_1D24A2514;
    v15 = *(v0 + 376);
    v16 = *(v0 + 344);
    v17 = MEMORY[0x1E69E85E0];

    return MEMORY[0x1EEE6D9C8](v16, v13, v17, v15);
  }

  else
  {

    v18 = *(v0 + 8);

    return v18();
  }
}

uint64_t sub_1D24A2514()
{
  v1 = *v0;

  v2 = *(v1 + 456);
  v3 = *(v1 + 448);

  return MEMORY[0x1EEE6DFA0](sub_1D24A2658, v3, v2);
}

uint64_t sub_1D24A2658()
{
  v1 = v0[43];
  v2 = *(v0[37] + 48);
  if (v2(v1, 1, v0[36]) != 1)
  {
    sub_1D23DBC5C(v1, v0[38]);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v4 = v0[62];
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_9;
    }

    goto LABEL_40;
  }

  v3 = v0[62];
  v56 = v2;
  v57 = v0[61];
  v4 = v0[60];
  v5 = v0[58];
  (*(v0[48] + 8))(v0[49], v0[47]);

  swift_getKeyPath();
  v0[28] = v5;
  sub_1D2870F68();
  sub_1D28719E8();

  v0[29] = v5;
  swift_getKeyPath();
  sub_1D2871A08();

  swift_beginAccess();
  sub_1D274E470(v3);
  swift_endAccess();
  v0[30] = v5;
  swift_getKeyPath();
  sub_1D28719F8();

  swift_getKeyPath();
  v0[31] = v5;
  sub_1D28719E8();

  v6 = *(v5 + v57);
  v7 = *(v6 + 16);
  sub_1D2870F68();
  if (v7)
  {
    v8 = 0;
    v9 = v0[36];
    while (v8 < *(v6 + 16))
    {
      v4 = v0[39];
      sub_1D24A35A4(v6 + ((*(v0[37] + 80) + 32) & ~*(v0[37] + 80)) + *(v0[37] + 72) * v8, v4);
      if (*(v4 + *(v9 + 24)))
      {
        v28 = v0[42];
        v29 = v0[39];
        v30 = v0[36];
        v31 = v0[37];

        sub_1D23DBC5C(v29, v28);
        v13 = *(v31 + 56);
        v13(v28, 0, 1, v30);
        goto LABEL_21;
      }

      ++v8;
      sub_1D24A3494(v0[39]);
      if (v7 == v8)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
LABEL_40:
    v4 = sub_1D27CC868(0, v4[2] + 1, 1, v4);
LABEL_9:
    v16 = v4[2];
    v15 = v4[3];
    if (v16 >= v15 >> 1)
    {
      v4 = sub_1D27CC868(v15 > 1, v16 + 1, 1, v4);
    }

    v17 = v0[52];
    v18 = v0[50];
    v19 = v0[51];
    v21 = v0[37];
    v20 = v0[38];
    v4[2] = v16 + 1;
    v58 = (*(v21 + 80) + 32) & ~*(v21 + 80);
    v22 = *(v21 + 72);
    sub_1D23DBC5C(v20, v4 + v58 + v22 * v16);
    sub_1D2871788();
    sub_1D2871718();
    v24 = v23;
    v25 = *(v19 + 8);
    v25(v17, v18);
    if (v24 <= 0.2)
    {
      goto LABEL_36;
    }

    v55 = v25;
    v54 = v22;
    v26 = v0[58];
    swift_getKeyPath();
    v0[32] = v26;
    sub_1D2870F68();
    sub_1D28719E8();

    v0[33] = v26;
    swift_getKeyPath();
    sub_1D2871A08();

    swift_beginAccess();
    sub_1D274E470(v4);
    swift_endAccess();
    v0[34] = v26;
    swift_getKeyPath();
    sub_1D28719F8();

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v27 = v4[2];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v4 = sub_1D27CC868(0, v27, 1, v4);
      }

      swift_arrayDestroy();
      if (v27)
      {
        if (v27 * v54 > 0 || v4 + v58 >= v4 + v58 + v27 * v54 + (v4[2] - v27) * v54)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (v54)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        v4[2] -= v27;
      }

      goto LABEL_35;
    }

    if (v4[3] <= 1uLL)
    {

      v4 = MEMORY[0x1E69E7CC0];
LABEL_35:
      v49 = v0[52];
      v48 = v0[53];
      v50 = v0[50];
      v51 = v0[51];
      sub_1D2871788();
      v55(v48, v50);
      (*(v51 + 32))(v48, v49, v50);
LABEL_36:
      v0[62] = v4;
      v52 = sub_1D2878558();
      v0[63] = v52;
      v53 = swift_task_alloc();
      v0[64] = v53;
      *v53 = v0;
      v53[1] = sub_1D24A2514;
      v47 = v0[47];
      v44 = v0[43];
      v46 = MEMORY[0x1E69E85E0];
      v45 = v52;

      return MEMORY[0x1EEE6D9C8](v44, v45, v46, v47);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC4C8);
    v43 = swift_allocObject();
    v44 = _swift_stdlib_malloc_size(v43);
    if (v54)
    {
      if (v44 - v58 != 0x8000000000000000 || v54 != -1)
      {
        v43[2] = 0;
        v43[3] = 2 * ((v44 - v58) / v54);

        v4 = v43;
        goto LABEL_35;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    return MEMORY[0x1EEE6D9C8](v44, v45, v46, v47);
  }

LABEL_7:
  v10 = v0[42];
  v11 = v0[36];
  v12 = v0[37];

  v13 = *(v12 + 56);
  v13(v10, 1, 1, v11);
LABEL_21:
  v32 = v0[42];
  v33 = v0[36];

  v34 = v56(v32, 1, v33);
  v35 = v0[53];
  v36 = v0[50];
  v37 = v0[51];
  v38 = v0[42];
  if (v34 == 1)
  {
    (*(v37 + 8))(v0[53], v0[50]);

    sub_1D22BD238(v38, &unk_1EC6DDDC0);
  }

  else
  {
    v40 = v0[40];
    v39 = v0[41];
    v59 = v0[36];
    sub_1D23DBC5C(v38, v40);
    sub_1D24A35A4(v40, v39);
    v13(v39, 0, 1, v59);
    sub_1D24A0BAC(v39);

    sub_1D24A3494(v40);
    (*(v37 + 8))(v35, v36);
  }

  v41 = v0[1];

  return v41();
}

uint64_t sub_1D24A2E4C()
{

  swift_unknownObjectRelease();
  sub_1D22BD238(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal23FacePickerGridViewModel__selectedAsset, &unk_1EC6DDDC0);
  v1 = *(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal23FacePickerGridViewModel__person + 32);
  v2 = *(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal23FacePickerGridViewModel__person + 56);

  sub_1D238D058(v1);

  v3 = OBJC_IVAR____TtC23ImagePlaygroundInternal23FacePickerGridViewModel___observationRegistrar;
  v4 = sub_1D2871A28();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for FacePickerGridViewModel()
{
  result = qword_1EC6DC4B8;
  if (!qword_1EC6DC4B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D24A2FD8()
{
  sub_1D24A30D0();
  if (v0 <= 0x3F)
  {
    sub_1D2871A28();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_1D24A30D0()
{
  if (!qword_1ED8A2EF0)
  {
    type metadata accessor for PhotosPersonAsset();
    v0 = sub_1D2878F18();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED8A2EF0);
    }
  }
}

uint64_t sub_1D24A3128(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DDDC0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D24A3198(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PhotosPersonAsset();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = (&v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DDDC0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = (&v20 - v9);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC478);
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v20 - v13;
  v15 = *(v12 + 56);
  sub_1D24A3128(a1, &v20 - v13);
  sub_1D24A3128(a2, &v14[v15]);
  v16 = *(v5 + 48);
  if (v16(v14, 1, v4) != 1)
  {
    sub_1D24A3128(v14, v10);
    if (v16(&v14[v15], 1, v4) != 1)
    {
      sub_1D23DBC5C(&v14[v15], v7);
      v18 = _s23ImagePlaygroundInternal17PhotosPersonAssetV2eeoiySbAC_ACtFZ_0(v10, v7);
      sub_1D24A3494(v7);
      sub_1D24A3494(v10);
      sub_1D22BD238(v14, &unk_1EC6DDDC0);
      v17 = v18 ^ 1;
      return v17 & 1;
    }

    sub_1D24A3494(v10);
    goto LABEL_6;
  }

  if (v16(&v14[v15], 1, v4) != 1)
  {
LABEL_6:
    sub_1D22BD238(v14, &qword_1EC6DC478);
    v17 = 1;
    return v17 & 1;
  }

  sub_1D22BD238(v14, &unk_1EC6DDDC0);
  v17 = 0;
  return v17 & 1;
}

uint64_t sub_1D24A3408(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DDDC0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D24A3494(uint64_t a1)
{
  v2 = type metadata accessor for PhotosPersonAsset();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D24A34F0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1D22BC8FC;

  return sub_1D24A1F7C(a1, v4, v5, v6);
}

uint64_t sub_1D24A35A4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PhotosPersonAsset();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D24A3640(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D24A3688(char a1)
{
  swift_getKeyPath();
  sub_1D24AF050(&qword_1ED8A5860, type metadata accessor for ImageConditioningPickerViewModel);
  sub_1D28719E8();

  if (*(*(v1 + 120) + 88) == 1)
  {
    sub_1D24A8C44(a1 & 1);
    return sub_1D24A3810(a1 & 1, *(v1 + 176) - 5 < 2);
  }

  else if (*(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal32ImageConditioningPickerViewModel__requestedReloadBeforePromptManagerReady) == 1)
  {
    *(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal32ImageConditioningPickerViewModel__requestedReloadBeforePromptManagerReady) = 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D28719D8();
  }

  return result;
}

uint64_t sub_1D24A3810(char a1, int a2)
{
  v3 = v2;
  v396 = a2;
  v5 = 0;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC4D0);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v404 = &v375 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v402 = &v375 - v9;
  *&v421 = type metadata accessor for Bubble.BubbleType(0);
  MEMORY[0x1EEE9AC00](v421);
  v408 = &v375 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v406 = type metadata accessor for Bubble(0);
  v419 = *(v406 - 8);
  v11 = MEMORY[0x1EEE9AC00](v406);
  v388 = &v375 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v387 = &v375 - v14;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v417 = &v375 - v16;
  v17 = MEMORY[0x1EEE9AC00](v15);
  v384 = &v375 - v18;
  v19 = MEMORY[0x1EEE9AC00](v17);
  v413 = &v375 - v20;
  v21 = MEMORY[0x1EEE9AC00](v19);
  v420 = &v375 - v22;
  v23 = MEMORY[0x1EEE9AC00](v21);
  v410 = &v375 - v24;
  v25 = MEMORY[0x1EEE9AC00](v23);
  v405 = (&v375 - v26);
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v375 - v27;
  v412 = type metadata accessor for SceneConditioningImage();
  MEMORY[0x1EEE9AC00](v412);
  v415 = (&v375 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  v414 = sub_1D2873CB8();
  v416 = *(v414 - 8);
  v30 = MEMORY[0x1EEE9AC00](v414);
  v389 = &v375 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x1EEE9AC00](v30);
  v407 = &v375 - v33;
  v34 = MEMORY[0x1EEE9AC00](v32);
  v397 = &v375 - v35;
  v36 = MEMORY[0x1EEE9AC00](v34);
  v392 = &v375 - v37;
  v38 = MEMORY[0x1EEE9AC00](v36);
  v381 = &v375 - v39;
  v40 = MEMORY[0x1EEE9AC00](v38);
  v380 = &v375 - v41;
  v42 = MEMORY[0x1EEE9AC00](v40);
  v382 = &v375 - v43;
  v44 = MEMORY[0x1EEE9AC00](v42);
  v377 = &v375 - v45;
  v46 = MEMORY[0x1EEE9AC00](v44);
  v376 = &v375 - v47;
  v48 = MEMORY[0x1EEE9AC00](v46);
  v379 = &v375 - v49;
  v50 = MEMORY[0x1EEE9AC00](v48);
  v378 = &v375 - v51;
  v52 = MEMORY[0x1EEE9AC00](v50);
  v383 = &v375 - v53;
  v54 = MEMORY[0x1EEE9AC00](v52);
  v394 = &v375 - v55;
  v56 = MEMORY[0x1EEE9AC00](v54);
  v398 = &v375 - v57;
  v58 = MEMORY[0x1EEE9AC00](v56);
  v395 = &v375 - v59;
  v60 = MEMORY[0x1EEE9AC00](v58);
  v391 = &v375 - v61;
  v62 = MEMORY[0x1EEE9AC00](v60);
  v390 = &v375 - v63;
  v64 = MEMORY[0x1EEE9AC00](v62);
  v399 = &v375 - v65;
  v66 = MEMORY[0x1EEE9AC00](v64);
  v409 = &v375 - v67;
  MEMORY[0x1EEE9AC00](v66);
  *&v403 = &v375 - v68;
  v393 = *(v2 + 96);
  v69 = sub_1D23C6DDC();
  *&v428 = v69;
  v70 = off_1F4DCA918[0];
  v71 = type metadata accessor for _PeopleRetrieval();
  v385 = v70;
  v386 = v71;
  v72 = v70();

  v73 = *(v72 + 16);

  if (v73 >= sub_1D24AB6CC())
  {
    swift_getKeyPath();
    *&v428 = v3;
    sub_1D24AF050(&qword_1ED8A5860, type metadata accessor for ImageConditioningPickerViewModel);
    sub_1D28719E8();

    v74 = *(v3 + 25);
    if (v74 & 1) != 0 || (a1)
    {
LABEL_7:
      if (v74)
      {
        KeyPath = swift_getKeyPath();
        MEMORY[0x1EEE9AC00](KeyPath);
        *(&v375 - 2) = v3;
        *(&v375 - 8) = 0;
        *&v428 = v3;
        sub_1D24AF050(&qword_1ED8A5860, type metadata accessor for ImageConditioningPickerViewModel);
        sub_1D28719D8();
      }

      else
      {
        *(v3 + 25) = 0;
      }

      LODWORD(v401) = 1;
      goto LABEL_11;
    }
  }

  else if (a1)
  {
    v74 = *(v3 + 25);
    goto LABEL_7;
  }

  LODWORD(v401) = 0;
LABEL_11:
  v76 = v403;
  sub_1D28725F8();
  v77 = sub_1D2873CA8();
  v78 = sub_1D2878A08();
  if (os_log_type_enabled(v77, v78))
  {
    v79 = swift_slowAlloc();
    *v79 = 67109120;
    *(v79 + 4) = v401;
    _os_log_impl(&dword_1D226E000, v77, v78, "Will refresh bubble suggestions, resetOld: %{BOOL}d", v79, 8u);
    MEMORY[0x1D38A3520](v79, -1, -1);
  }

  v81 = v416 + 8;
  v80 = *(v416 + 8);
  v82 = v414;
  v80(v76, v414);
  v83 = v409;
  sub_1D28725F8();
  sub_1D2870F78();
  v84 = sub_1D2873CA8();
  v85 = sub_1D2878A08();

  LODWORD(v403) = v85;
  v86 = os_log_type_enabled(v84, v85);
  v418 = v3;
  v416 = v81;
  v411 = v80;
  if (v86)
  {
    v87 = swift_slowAlloc();
    v400 = swift_slowAlloc();
    *&v428 = v400;
    *v87 = 136315138;
    swift_getKeyPath();
    *&v425 = v418;
    sub_1D24AF050(&qword_1ED8A5860, type metadata accessor for ImageConditioningPickerViewModel);
    sub_1D28719E8();

    v88 = sub_1D2870F68();
    v89 = MEMORY[0x1D38A0E70](v88, v406);
    v91 = v90;

    v92 = v89;
    v3 = v418;
    v93 = sub_1D23D7C84(v92, v91, &v428);

    *(v87 + 4) = v93;
    v94 = &unk_1ED8A5000;
    _os_log_impl(&dword_1D226E000, v84, v403, "Displayed suggested bubbles: %s", v87, 0xCu);
    v95 = v400;
    __swift_destroy_boxed_opaque_existential_0(v400);
    MEMORY[0x1D38A3520](v95, -1, -1);
    MEMORY[0x1D38A3520](v87, -1, -1);

    v80(v409, v414);
  }

  else
  {

    v80(v83, v82);
    v94 = &unk_1ED8A5000;
  }

  swift_getKeyPath();
  v96 = v94[271];
  *&v428 = v3;
  v97 = sub_1D24AF050(&qword_1ED8A5860, type metadata accessor for ImageConditioningPickerViewModel);
  *&v403 = v96;
  v400 = v97;
  sub_1D28719E8();

  v98 = *(v3 + 16);
  isa = v98[2].isa;
  sub_1D2870F68();
  if (!isa)
  {
LABEL_21:

    LODWORD(v409) = 0;
    goto LABEL_23;
  }

  v81 = 0;
  v100 = &v98[4];
  v101 = &qword_1EC6D9A10;
  while (1)
  {
    if (v81 >= v98[2].isa)
    {
      __break(1u);
LABEL_206:
      __break(1u);
      goto LABEL_207;
    }

    sub_1D22D7044(v100, &v428);
    sub_1D227268C(&v428, &v425);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9A10);
    if (swift_dynamicCast())
    {
      break;
    }

    ++v81;
    v100 += 40;
    if (isa == v81)
    {
      goto LABEL_21;
    }
  }

  sub_1D24ADF84(v415, type metadata accessor for SceneConditioningImage);
  LODWORD(v409) = 1;
LABEL_23:
  swift_getKeyPath();
  *&v428 = v3;
  sub_1D28719E8();

  v102 = *(v3 + 72);
  sub_1D2870F68();
  v103 = v399;
  sub_1D28725F8();
  sub_1D2870F68();
  v104 = sub_1D2873CA8();
  v105 = sub_1D2878A08();

  v106 = os_log_type_enabled(v104, v105);
  v415 = v102;
  if (v106)
  {
    v107 = swift_slowAlloc();
    v81 = swift_slowAlloc();
    *&v428 = v81;
    *v107 = 136315138;
    v108 = MEMORY[0x1D38A0E70](v102, v406);
    v110 = sub_1D23D7C84(v108, v109, &v428);

    *(v107 + 4) = v110;
    v3 = v418;
    _os_log_impl(&dword_1D226E000, v104, v105, "Used suggested bubbles for the update: %s", v107, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v81);
    MEMORY[0x1D38A3520](v81, -1, -1);
    MEMORY[0x1D38A3520](v107, -1, -1);
  }

  v411(v103, v414);
  v111 = v410;
  if (v401)
  {
    v112 = v415;
    sub_1D2870F68();
    v98 = v112;
    goto LABEL_40;
  }

  v112 = v415;
  v101 = v415[2];
  if (v101)
  {
    v113 = 0;
    v98 = MEMORY[0x1E69E7CC0];
    while (v113 < *(v112 + 16))
    {
      v114 = (*(v419 + 80) + 32) & ~*(v419 + 80);
      v81 = *(v419 + 72);
      sub_1D24AE5B4(v112 + v114 + v81 * v113, v28, type metadata accessor for Bubble);
      if (sub_1D24A9730(v28, v3, v409))
      {
        sub_1D24ADF1C(v28, v405, type metadata accessor for Bubble);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v428 = v98;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1D23D8628(0, v98[2].isa + 1, 1);
          v98 = v428;
        }

        v117 = v98[2].isa;
        v116 = v98[3].isa;
        if (v117 >= v116 >> 1)
        {
          sub_1D23D8628(v116 > 1, v117 + 1, 1);
          v98 = v428;
        }

        v98[2].isa = (v117 + 1);
        sub_1D24ADF1C(v405, v98 + v114 + v117 * v81, type metadata accessor for Bubble);
        v3 = v418;
        v112 = v415;
      }

      else
      {
        sub_1D24ADF84(v28, type metadata accessor for Bubble);
      }

      if (v101 == ++v113)
      {
        goto LABEL_39;
      }
    }

LABEL_207:
    __break(1u);
LABEL_208:
    __break(1u);
LABEL_209:
    __break(1u);
LABEL_210:
    __break(1u);
LABEL_211:
    __break(1u);
LABEL_212:
    __break(1u);
    goto LABEL_213;
  }

  v98 = MEMORY[0x1E69E7CC0];
LABEL_39:
  v111 = v410;
LABEL_40:
  v118 = swift_allocObject();
  *(v118 + 16) = v98;
  v119 = swift_allocObject();
  swift_weakInit();
  v120 = swift_allocObject();
  *(v120 + 16) = v119;
  *(v120 + 24) = v409;
  *(v120 + 25) = v396 & 1;
  *(v120 + 32) = v112;
  *(v120 + 40) = v118;
  v399 = v120;
  *(v120 + 48) = v401;
  swift_bridgeObjectRetain_n();
  v401 = v118;
  sub_1D2870F78();
  v405 = (v118 + 16);
  v121 = sub_1D24ADB48(v112, (v118 + 16));
  v412 = 0;

  v122 = v121[2];
  v123 = MEMORY[0x1E69E7CC0];
  v124 = MEMORY[0x1E69E7CC0];
  if (v122)
  {
    v3 = 0;
    v125 = v408;
    while (v3 < v121[2])
    {
      v126 = (*(v419 + 80) + 32) & ~*(v419 + 80);
      v127 = *(v419 + 72);
      sub_1D24AE5B4(v121 + v126 + v127 * v3, v111, type metadata accessor for Bubble);
      sub_1D24AE5B4(v111, v125, type metadata accessor for Bubble.BubbleType);
      if (swift_getEnumCaseMultiPayload() - 3 >= 2)
      {
        sub_1D24ADF84(v111, type metadata accessor for Bubble);
        sub_1D24ADF84(v125, type metadata accessor for Bubble.BubbleType);
      }

      else
      {
        sub_1D24ADF84(v125, type metadata accessor for Bubble.BubbleType);
        sub_1D24ADF1C(v111, v420, type metadata accessor for Bubble);
        v128 = swift_isUniquelyReferenced_nonNull_native();
        *&v428 = v123;
        if ((v128 & 1) == 0)
        {
          sub_1D23D8628(0, v123[2].isa + 1, 1);
          v123 = v428;
        }

        v130 = v123[2].isa;
        v129 = v123[3].isa;
        if (v130 >= v129 >> 1)
        {
          sub_1D23D8628(v129 > 1, v130 + 1, 1);
          v123 = v428;
        }

        v123[2].isa = (v130 + 1);
        sub_1D24ADF1C(v420, v123 + v126 + v130 * v127, type metadata accessor for Bubble);
        v125 = v408;
        v111 = v410;
      }

      if (v122 == ++v3)
      {
        goto LABEL_51;
      }
    }

    __break(1u);
    goto LABEL_142;
  }

LABEL_51:

  v131 = v390;
  sub_1D28725F8();
  sub_1D2870F78();
  v132 = v123;
  v133 = sub_1D2873CA8();
  v134 = sub_1D2878A08();

  v135 = os_log_type_enabled(v133, v134);
  *&v421 = v132;
  if (v135)
  {
    v136 = swift_slowAlloc();
    v137 = swift_slowAlloc();
    *&v428 = v137;
    *v136 = 136315138;
    v138 = MEMORY[0x1D38A0E70](v132, v406);
    v140 = sub_1D23D7C84(v138, v139, &v428);

    *(v136 + 4) = v140;
    _os_log_impl(&dword_1D226E000, v133, v134, "Found persons in suggestions: %s", v136, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v137);
    MEMORY[0x1D38A3520](v137, -1, -1);
    MEMORY[0x1D38A3520](v136, -1, -1);
  }

  v141 = v414;
  v411(v131, v414);
  v101 = v401;
  v434 = v124;
  v142 = v391;
  sub_1D28725F8();
  sub_1D2870F78();
  v143 = sub_1D2873CA8();
  v144 = sub_1D2878A08();

  if (os_log_type_enabled(v143, v144))
  {
    v145 = swift_slowAlloc();
    v146 = swift_slowAlloc();
    *&v428 = v146;
    *v145 = 136315138;
    swift_beginAccess();
    v147 = sub_1D2870F68();
    v148 = MEMORY[0x1D38A0E70](v147, v406);
    v150 = v149;

    v151 = sub_1D23D7C84(v148, v150, &v428);
    v141 = v414;

    *(v145 + 4) = v151;
    v101 = v401;
    _os_log_impl(&dword_1D226E000, v143, v144, "Bubbles to update before people fetching: %s", v145, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v146);
    MEMORY[0x1D38A3520](v146, -1, -1);
    MEMORY[0x1D38A3520](v145, -1, -1);
  }

  v411(v142, v141);
  v152 = v395;
  sub_1D28725F8();
  v153 = v415;
  sub_1D2870F68();
  sub_1D2870F78();
  v154 = sub_1D2873CA8();
  v155 = sub_1D2878A08();

  if (os_log_type_enabled(v154, v155))
  {
    v156 = swift_slowAlloc();
    v157 = swift_slowAlloc();
    *&v428 = v157;
    *v156 = 136315138;
    v158 = sub_1D2870F68();
    v159 = v412;
    v160 = sub_1D24ADB48(v158, v405);
    v412 = v159;

    v161 = MEMORY[0x1D38A0E70](v160, v406);
    v163 = v162;

    v164 = sub_1D23D7C84(v161, v163, &v428);
    v141 = v414;

    *(v156 + 4) = v164;
    v101 = v401;
    _os_log_impl(&dword_1D226E000, v154, v155, "Remaining suggested bubbles before people fetching: %s", v156, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v157);
    MEMORY[0x1D38A3520](v157, -1, -1);
    MEMORY[0x1D38A3520](v156, -1, -1);

    v165 = v395;
  }

  else
  {

    v165 = v152;
  }

  v166 = v411;
  v411(v165, v141);
  v167 = v418;
  v168 = v398;
  sub_1D28725F8();
  sub_1D2870F78();
  sub_1D2870F68();
  sub_1D2870F78();
  v169 = sub_1D2873CA8();
  v170 = sub_1D2878A08();

  if (os_log_type_enabled(v169, v170))
  {
    v171 = swift_slowAlloc();
    v172 = swift_slowAlloc();
    *&v428 = v172;
    *v171 = 136315138;
    v173 = sub_1D24AB36C(v167, v153, v101);

    v174 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9A10);
    v175 = MEMORY[0x1D38A0E70](v173, v174);
    v177 = v176;

    v101 = sub_1D23D7C84(v175, v177, &v428);
    v167 = v418;

    *(v171 + 4) = v101;
    _os_log_impl(&dword_1D226E000, v169, v170, "Excluded representations before people fetching: %s", v171, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v172);
    MEMORY[0x1D38A3520](v172, -1, -1);
    MEMORY[0x1D38A3520](v171, -1, -1);

    v411(v398, v414);
  }

  else
  {

    v166(v168, v141);
  }

  swift_getKeyPath();
  *&v428 = v167;
  sub_1D28719E8();

  v98 = *(v167 + 16);
  v28 = v98[2].isa;
  sub_1D2870F68();
  if (v28)
  {
    v178 = 0;
    v179 = &v98[4];
    v5 = &qword_1EC6D9A10;
    v81 = &qword_1EC6D9A28;
    v3 = &unk_1D287EDD0;
    while (1)
    {
      if (v178 >= v98[2].isa)
      {
        goto LABEL_206;
      }

      sub_1D22D7044(v179, &v428);
      sub_1D227268C(&v428, &v425);
      v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9A10);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9A28);
      if (swift_dynamicCast())
      {
        break;
      }

      v178 = (v178 + 1);
      v179 += 40;
      if (v28 == v178)
      {
        goto LABEL_66;
      }
    }

    __swift_destroy_boxed_opaque_existential_0(&v431);
    v180 = 1;
  }

  else
  {
LABEL_66:

    v180 = 0;
  }

  v181 = v394;
  sub_1D28725F8();
  v182 = v418;
  sub_1D2870F78();
  v183 = sub_1D2873CA8();
  v184 = sub_1D2878A08();
  v185 = os_log_type_enabled(v183, v184);
  v3 = v405;
  v28 = v406;
  LODWORD(v420) = v180;
  if (v185)
  {
    v186 = swift_slowAlloc();
    *v186 = 67109376;
    *(v186 + 4) = v180;
    *(v186 + 8) = 1024;
    v187 = sub_1D23C6DDC();
    *&v428 = v187;
    v188 = *((v385)(v386) + 16);

    v181 = v394;
    *(v186 + 10) = v188 == 0;

    _os_log_impl(&dword_1D226E000, v183, v184, "Someone is selected: %{BOOL}d, suggested people in people retrieval is empty: %{BOOL}d", v186, 0xEu);
    MEMORY[0x1D38A3520](v186, -1, -1);
  }

  else
  {
  }

  v101 = v417;
  v189 = v397;
  v411(v181, v414);
  swift_getKeyPath();
  *&v428 = v182;
  sub_1D28719E8();

  sub_1D2870F78();
  v190 = sub_1D27ED8C8();

  if ((v190 & 1) != 0 && (v420 & 1) == 0 && (v191 = sub_1D23C6DDC(), *&v428 = v191, v192 = off_1F4DCA938[0], v193 = off_1F4DCA938[0](), v191, v194 = *(v193 + 16), , v194))
  {
    sub_1D23C7B7C();
    v195 = sub_1D22BF738();

    v81 = v404;
    if (v195 || (v409 & 1) != 0)
    {
    }

    else
    {
      v420 = v192;
      v267 = sub_1D24AB36C(v418, v415, v401);
      v268 = *(v267 + 16);
      if (v268)
      {
        v410 = v267;
        v269 = v267 + 32;
        v121 = MEMORY[0x1E69E7CC0];
        do
        {
          sub_1D22D7044(v269, &v428);
          sub_1D227268C(&v428, &v431);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9A10);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9A28);
          if (swift_dynamicCast())
          {
            sub_1D227268C(v422, &v425);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v121 = sub_1D27CCD28(0, v121[2] + 1, 1, v121);
            }

            v101 = v417;
            v271 = v121[2];
            v270 = v121[3];
            if (v271 >= v270 >> 1)
            {
              v121 = sub_1D27CCD28((v270 > 1), v271 + 1, 1, v121);
            }

            v121[2] = v271 + 1;
            sub_1D227268C(&v425, &v121[5 * v271 + 4]);
            v3 = v405;
          }

          else
          {
            v423 = 0;
            memset(v422, 0, sizeof(v422));
            sub_1D22BD238(v422, &qword_1EC6D9A58);
            v101 = v417;
          }

          v269 += 40;
          --v268;
        }

        while (v268);
      }

      else
      {

        v121 = MEMORY[0x1E69E7CC0];
      }

      v272 = v383;
      sub_1D28725F8();
      sub_1D2870F68();
      v273 = sub_1D2873CA8();
      v274 = sub_1D2878A08();

      if (os_log_type_enabled(v273, v274))
      {
        v275 = swift_slowAlloc();
        v276 = swift_slowAlloc();
        *&v428 = v276;
        *v275 = 136315138;
        v277 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9A28);
        v278 = MEMORY[0x1D38A0E70](v121, v277);
        v280 = sub_1D23D7C84(v278, v279, &v428);

        *(v275 + 4) = v280;
        v3 = v405;
        _os_log_impl(&dword_1D226E000, v273, v274, "Persons present: %s", v275, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v276);
        v281 = v276;
        v101 = v417;
        MEMORY[0x1D38A3520](v281, -1, -1);
        MEMORY[0x1D38A3520](v275, -1, -1);

        v282 = v383;
      }

      else
      {

        v282 = v272;
      }

      v411(v282, v414);
      v283 = sub_1D24AB6CC();
      v284 = v421;
      if (*(v421 + 16) < v283)
      {
        v111 = v283;
        v410 = *(v421 + 16);
        v125 = v378;
        sub_1D28725F8();
        sub_1D2870F78();
        v123 = sub_1D2873CA8();
        v285 = sub_1D2878A08();
        if (os_log_type_enabled(v123, v285))
        {
          v286 = swift_slowAlloc();
          *v286 = 134218240;
          v287 = *(v284 + 16);

          *(v286 + 4) = v287;

          *(v286 + 12) = 2048;
          *(v286 + 14) = v111;
          _os_log_impl(&dword_1D226E000, v123, v285, "Not enough persons in suggestions (current: %ld, expected: %ld)", v286, 0x16u);
          MEMORY[0x1D38A3520](v286, -1, -1);

          goto LABEL_143;
        }

LABEL_142:

LABEL_143:
        v411(v125, v414);
        v101 = sub_1D23C6DDC();
        *&v428 = v101;
        v288 = (v420)(v386);

        v289 = *(v288 + 16);

        v290 = v289 - v410;
        if (v289 - v410 >= v111)
        {
          v290 = v111;
        }

        v291 = v290 & ~(v290 >> 63);
        swift_beginAccess();
        v292 = *(*v3 + 16);
        v409 = v291;
        v5 = v291 - v292;
        v28 = (v291 - v292) & ~((v291 - v292) >> 63);
        v81 = v379;
        sub_1D28725F8();
        v293 = sub_1D2873CA8();
        v294 = sub_1D2878A08();
        if (os_log_type_enabled(v293, v294))
        {
          v101 = swift_slowAlloc();
          *v101 = 134217984;
          *(v101 + 4) = v28;
          _os_log_impl(&dword_1D226E000, v293, v294, "Need to update %ld bubbles to fit persons", v101, 0xCu);
          MEMORY[0x1D38A3520](v101, -1, -1);
        }

        v411(v81, v414);
        if (v5 < 1)
        {
          goto LABEL_154;
        }

        sub_1D268CAF4(v28, v415);
        v101 = v295;
        v297 = v296;
        v81 = v298;
        swift_beginAccess();
        sub_1D2870F68();
        v299 = swift_unknownObjectRetain();
        sub_1D274DE68(v299, v101, v297, v81);
        swift_endAccess();
        v5 = v376;
        sub_1D28725F8();
        swift_unknownObjectRetain();
        v223 = sub_1D2873CA8();
        v300 = sub_1D2878A08();
        swift_unknownObjectRelease();
        if (os_log_type_enabled(v223, v300))
        {
          v28 = swift_slowAlloc();
          v101 = swift_slowAlloc();
          *&v428 = v101;
          *v28 = 136315138;
          v301 = sub_1D2879018();
          v81 = sub_1D23D7C84(v301, v302, &v428);

          *(v28 + 4) = v81;
          _os_log_impl(&dword_1D226E000, v223, v300, "Dropping bubbles %s to make space for persons", v28, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v101);
          MEMORY[0x1D38A3520](v101, -1, -1);
          MEMORY[0x1D38A3520](v28, -1, -1);
          swift_unknownObjectRelease();

          goto LABEL_153;
        }

        goto LABEL_152;
      }

      v81 = v404;
      v189 = v397;
    }
  }

  else
  {

    v81 = v404;
  }

  v121 = v415;
LABEL_78:
  v196 = sub_1D2870F68();
  v197 = v412;
  v198 = sub_1D24ADB48(v196, v3);
  v398 = v197;

  v199 = *(v198 + 16);

  v98 = (7 - v199);
  swift_beginAccess();
  v200 = v434;
  v5 = *(v434 + 2);
  if (__OFSUB__(v98, v5))
  {
    goto LABEL_209;
  }

  if (v98 - v5 >= 1)
  {
    v410 = v434;
    sub_1D28725F8();
    swift_bridgeObjectRetain_n();
    sub_1D2870F78();
    sub_1D2870F78();
    v98 = sub_1D2873CA8();
    v28 = sub_1D2878A08();
    if (os_log_type_enabled(v98, v28))
    {
      v201 = swift_slowAlloc();
      *v201 = 134217984;
      v202 = sub_1D2870F68();
      v203 = v398;
      v101 = sub_1D24ADB48(v202, v3);
      v398 = v203;

      v204 = *(v101 + 16);

      v5 = 7 - v204;
      v3 = v121;
      v205 = *(v410 + 2);

      if (__OFSUB__(v5, v205))
      {
        goto LABEL_211;
      }

      *(v201 + 4) = v5 - v205;

      _os_log_impl(&dword_1D226E000, v98, v28, "Still missing %ld bubbles in the suggestions", v201, 0xCu);
      MEMORY[0x1D38A3520](v201, -1, -1);

      v101 = v417;
      v189 = v397;
      v3 = v405;
    }

    else
    {

      swift_bridgeObjectRelease_n();
    }

    v28 = v411;
    v411(v392, v414);
    v206 = sub_1D2870F68();
    v207 = v398;
    v98 = sub_1D24ADB48(v206, v3);
    v398 = v207;

    v208 = v98[2].isa;

    v209 = *(v410 + 2);
    v210 = __OFSUB__(7 - v208, v209);
    v5 = 7 - v208 - v209;
    if (v210)
    {
      goto LABEL_210;
    }

    *(&v429 + 1) = type metadata accessor for ImageConditioningSuggestionsFetcher();
    *&v430 = &off_1F4DC65D0;
    v211 = v399;
    sub_1D2870F78();
    *&v428 = sub_1D23C7CE0();
    __swift_project_boxed_opaque_existential_1(&v428, *(&v429 + 1));
    v212 = sub_1D249BDF4(v5, sub_1D24ADB30, v211, v396 & 1);
    __swift_destroy_boxed_opaque_existential_0(&v428);
    sub_1D28725F8();
    sub_1D2870F68();
    v213 = sub_1D2873CA8();
    v214 = sub_1D2878A08();

    if (os_log_type_enabled(v213, v214))
    {
      v215 = swift_slowAlloc();
      v216 = swift_slowAlloc();
      *&v428 = v216;
      *v215 = 136315138;
      v217 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9A10);
      v218 = MEMORY[0x1D38A0E70](v212, v217);
      v220 = sub_1D23D7C84(v218, v219, &v428);

      *(v215 + 4) = v220;
      _os_log_impl(&dword_1D226E000, v213, v214, "Fetched %s curated prompt as suggestions", v215, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v216);
      v221 = v216;
      v101 = v417;
      MEMORY[0x1D38A3520](v221, -1, -1);
      MEMORY[0x1D38A3520](v215, -1, -1);

      v411(v397, v414);
    }

    else
    {

      (v28)(v189, v414);
    }

    v28 = v406;
    swift_beginAccess();
    sub_1D274DE40(v212);
    swift_endAccess();

    v200 = v434;
    v5 = *(v434 + 2);
    v121 = v415;
  }

  sub_1D2870F68();
  sub_1D2870F68();
  swift_beginAccess();
  v222 = 0;
  v409 = (v200 + 32);
  v223 = &v428;
  v412 = (v419 + 48);
  *&v224 = 136315138;
  v403 = v224;
  v400 = v121;
  v410 = v200;
  v408 = v5;
LABEL_90:
  v225 = v222;
  while (1)
  {
    v226 = 0uLL;
    v227 = v5;
    v228 = 0uLL;
    v229 = 0uLL;
    if (v225 == v5)
    {
      goto LABEL_96;
    }

    if (v225 >= *(v200 + 2))
    {
      __break(1u);
LABEL_151:
      __break(1u);
LABEL_152:

      swift_unknownObjectRelease();
LABEL_153:
      v411(v5, v414);
      v3 = v405;
LABEL_154:
      v408 = sub_1D23C6DDC();
      *&v431 = v408;
      v303 = (v420)(v386);
      v304 = v303;
      *&v421 = *(v303 + 16);
      if (v421)
      {
        v305 = 0;
        v420 = v303 + 32;
        v410 = (v121 + 4);
        v98 = MEMORY[0x1E69E7CC0];
        while (v305 < *(v304 + 16))
        {
          v311 = v305 + 1;
          sub_1D22D7044(v420 + 40 * v305, &v428);
          v101 = -v121[2];
          v3 = -1;
          v28 = v410;
          while (v101 + v3 != -1)
          {
            if (++v3 >= v121[2])
            {
              goto LABEL_208;
            }

            sub_1D22D7044(v28, &v425);
            v5 = v412;
            v312 = sub_1D24AB7D0(&v425, &v428);
            v412 = v5;
            if (v5)
            {

              result = __swift_destroy_boxed_opaque_existential_0(&v425);
              __break(1u);
              return result;
            }

            v81 = v312;
            v28 += 40;
            __swift_destroy_boxed_opaque_existential_0(&v425);
            if (v81)
            {
              __swift_destroy_boxed_opaque_existential_0(&v428);
              v3 = v405;
              goto LABEL_159;
            }
          }

          sub_1D227268C(&v428, &v425);
          v313 = swift_isUniquelyReferenced_nonNull_native();
          *&v422[0] = v98;
          if ((v313 & 1) == 0)
          {
            sub_1D23D85A8(0, v98[2].isa + 1, 1);
            v98 = *&v422[0];
          }

          v3 = v405;
          v28 = v98[2].isa;
          v306 = v98[3].isa;
          if (v28 >= v306 >> 1)
          {
            sub_1D23D85A8((v306 > 1), v28 + 1, 1);
          }

          v307 = *(&v426 + 1);
          v101 = v427;
          v308 = __swift_mutable_project_boxed_opaque_existential_1(&v425, *(&v426 + 1));
          v5 = &v375;
          MEMORY[0x1EEE9AC00](v308);
          v81 = &v375 - ((v309 + 15) & 0xFFFFFFFFFFFFFFF0);
          (*(v310 + 16))(v81);
          sub_1D2564390(v28, v81, v422, v307, v101);
          __swift_destroy_boxed_opaque_existential_0(&v425);
          v98 = *&v422[0];
LABEL_159:
          v305 = v311;
          if (v311 == v421)
          {
            goto LABEL_170;
          }
        }

        goto LABEL_212;
      }

      v98 = MEMORY[0x1E69E7CC0];
LABEL_170:

      v314 = v98[2].isa;
      if (v314)
      {
        v315 = &v98[4];
        v316 = MEMORY[0x1E69E7CC0];
        while (1)
        {
          sub_1D22D7044(v315, &v428);
          sub_1D227268C(&v428, &v425);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAC08);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9A28);
          if (swift_dynamicCast())
          {
            if (*(&v432 + 1))
            {
              sub_1D227268C(&v431, &v425);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v316 = sub_1D27CCD28(0, v316[2] + 1, 1, v316);
              }

              v318 = v316[2];
              v317 = v316[3];
              if (v318 >= v317 >> 1)
              {
                v316 = sub_1D27CCD28((v317 > 1), v318 + 1, 1, v316);
              }

              v316[2] = v318 + 1;
              sub_1D227268C(&v425, &v316[5 * v318 + 4]);
              v3 = v405;
              goto LABEL_174;
            }
          }

          else
          {
            v433 = 0;
            v431 = 0u;
            v432 = 0u;
          }

          sub_1D22BD238(&v431, &qword_1EC6D9A58);
LABEL_174:
          v315 += 40;
          v314 = (v314 - 1);
          if (!v314)
          {

            goto LABEL_184;
          }
        }
      }

      v316 = MEMORY[0x1E69E7CC0];
LABEL_184:
      v319 = v377;
      sub_1D28725F8();
      sub_1D2870F68();
      v320 = sub_1D2873CA8();
      v321 = sub_1D2878A08();

      if (os_log_type_enabled(v320, v321))
      {
        v322 = swift_slowAlloc();
        v323 = swift_slowAlloc();
        *&v428 = v323;
        *v322 = 136315138;
        v324 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9A28);
        v325 = MEMORY[0x1D38A0E70](v316, v324);
        v327 = sub_1D23D7C84(v325, v326, &v428);

        *(v322 + 4) = v327;
        _os_log_impl(&dword_1D226E000, v320, v321, "Fetched suggested people: %s", v322, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v323);
        MEMORY[0x1D38A3520](v323, -1, -1);
        MEMORY[0x1D38A3520](v322, -1, -1);
      }

      v328 = v319;
      v329 = v411;
      v411(v328, v414);
      v81 = v382;
      v98 = sub_1D2695B00(v409, v316);
      if (v332)
      {
        v28 = v332;
        v101 = v331;
        v5 = v330;
        sub_1D2879678();
        swift_unknownObjectRetain_n();
        v335 = swift_dynamicCastClass();
        if (!v335)
        {
          swift_unknownObjectRelease();
          v335 = MEMORY[0x1E69E7CC0];
        }

        v336 = *(v335 + 16);

        if (__OFSUB__(v28 >> 1, v101))
        {
          goto LABEL_215;
        }

        if (v336 == (v28 >> 1) - v101)
        {
          v334 = swift_dynamicCastClass();
          swift_unknownObjectRelease();
          v329 = v411;
          if (v334)
          {
LABEL_195:
            v337 = sub_1D267972C(v334);

            sub_1D274DE40(v337);
            sub_1D28725F8();
            v338 = v401;
            sub_1D2870F78();
            v339 = sub_1D2873CA8();
            v340 = sub_1D2878A08();

            if (os_log_type_enabled(v339, v340))
            {
              v341 = swift_slowAlloc();
              v342 = swift_slowAlloc();
              *&v428 = v342;
              *v341 = 136315138;
              v343 = sub_1D2870F68();
              v344 = MEMORY[0x1D38A0E70](v343, v406);
              v346 = v345;

              v347 = sub_1D23D7C84(v344, v346, &v428);

              *(v341 + 4) = v347;
              _os_log_impl(&dword_1D226E000, v339, v340, "Bubbles to update after people fetching: %s", v341, 0xCu);
              __swift_destroy_boxed_opaque_existential_0(v342);
              v348 = v342;
              v338 = v401;
              MEMORY[0x1D38A3520](v348, -1, -1);
              v329 = v411;
              MEMORY[0x1D38A3520](v341, -1, -1);

              v349 = v382;
            }

            else
            {

              v349 = v81;
            }

            v329(v349, v414);
            v350 = v380;
            sub_1D28725F8();
            v121 = v415;
            sub_1D2870F68();
            sub_1D2870F78();
            v351 = sub_1D2873CA8();
            v352 = sub_1D2878A08();

            if (os_log_type_enabled(v351, v352))
            {
              v353 = swift_slowAlloc();
              *&v421 = swift_slowAlloc();
              *&v428 = v421;
              *v353 = 136315138;
              v354 = sub_1D2870F68();
              v355 = v412;
              v356 = sub_1D24ADB48(v354, v3);
              v412 = v355;

              v357 = MEMORY[0x1D38A0E70](v356, v406);
              v359 = v358;

              v360 = sub_1D23D7C84(v357, v359, &v428);

              *(v353 + 4) = v360;
              v338 = v401;
              _os_log_impl(&dword_1D226E000, v351, v352, "Remaining suggested after before people fetching: %s", v353, 0xCu);
              v361 = v421;
              __swift_destroy_boxed_opaque_existential_0(v421);
              MEMORY[0x1D38A3520](v361, -1, -1);
              v329 = v411;
              MEMORY[0x1D38A3520](v353, -1, -1);

              v362 = v380;
            }

            else
            {

              v362 = v350;
            }

            v329(v362, v414);
            v363 = v381;
            v364 = v418;
            sub_1D28725F8();
            sub_1D2870F78();
            sub_1D2870F68();
            sub_1D2870F78();
            v365 = sub_1D2873CA8();
            v366 = sub_1D2878A08();

            if (os_log_type_enabled(v365, v366))
            {
              v367 = swift_slowAlloc();
              v368 = swift_slowAlloc();
              *&v428 = v368;
              *v367 = 136315138;
              v369 = sub_1D24AB36C(v364, v121, v338);

              v370 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9A10);
              v371 = MEMORY[0x1D38A0E70](v369, v370);
              v373 = v372;

              v374 = sub_1D23D7C84(v371, v373, &v428);

              *(v367 + 4) = v374;
              _os_log_impl(&dword_1D226E000, v365, v366, "Excluded representations after people fetching: %s", v367, 0xCu);
              __swift_destroy_boxed_opaque_existential_0(v368);
              MEMORY[0x1D38A3520](v368, -1, -1);
              MEMORY[0x1D38A3520](v367, -1, -1);

              v411(v381, v414);
            }

            else
            {

              v329(v363, v414);
            }

            v28 = v406;
            v81 = v404;
            v101 = v417;
            v189 = v397;
            goto LABEL_78;
          }

          v334 = MEMORY[0x1E69E7CC0];
LABEL_194:
          swift_unknownObjectRelease();
          goto LABEL_195;
        }

LABEL_216:
        swift_unknownObjectRelease();
        v332 = v28;
        v331 = v101;
        v330 = v5;
        v329 = v411;
      }

      sub_1D268E5E0(v98, v330, v331, v332);
      v334 = v333;
      goto LABEL_194;
    }

    v230 = v101;
    v231 = v28;
    v232 = v3;
    v233 = v225 + 1;
    *&v425 = v225;
    sub_1D22D7044(v409 + 40 * v225, &v425 + 8);
    v227 = v233;
    v3 = v232;
    v28 = v231;
    v101 = v230;
    v226 = v425;
    v228 = v426;
    v229 = v427;
LABEL_96:
    v428 = v226;
    v429 = v228;
    v430 = v229;
    if (!v229)
    {
      break;
    }

    v420 = v227;
    v421 = v226;
    sub_1D227268C((&v428 + 8), &v425);
    if (v421 >= *(*v3 + 16))
    {
      sub_1D22D7044(&v425, &v431);
      v424 = *(v418 + 176);
      sub_1D2847FA8(&v431, &v424, v81);
      if ((*v412)(v81, 1, v28) != 1)
      {
        v250 = v387;
        sub_1D24ADF1C(v81, v387, type metadata accessor for Bubble);
        sub_1D24AE5B4(v250, v388, type metadata accessor for Bubble);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v400 = sub_1D27CCBF4(0, v400[2] + 1, 1, v400);
        }

        v252 = v400[2];
        v251 = v400[3];
        if (v252 >= v251 >> 1)
        {
          v400 = sub_1D27CCBF4(v251 > 1, v252 + 1, 1, v400);
        }

        sub_1D24ADF84(v387, type metadata accessor for Bubble);
        __swift_destroy_boxed_opaque_existential_0(&v425);
        v253 = v400;
        v400[2] = v252 + 1;
        sub_1D24ADF1C(v388, v253 + ((*(v419 + 80) + 32) & ~*(v419 + 80)) + *(v419 + 72) * v252, type metadata accessor for Bubble);
LABEL_116:
        v5 = v408;
        v223 = &v428;
        v222 = v420;
        goto LABEL_90;
      }

      __swift_destroy_boxed_opaque_existential_0(&v425);
      sub_1D22BD238(v81, &qword_1EC6DC4D0);
      v225 = v420;
    }

    else
    {
      if ((v421 & 0x8000000000000000) != 0)
      {
        goto LABEL_151;
      }

      v98 = ((*(v419 + 80) + 32) & ~*(v419 + 80));
      v5 = *(v419 + 72);
      v234 = v121;
      v235 = v413;
      sub_1D24AE5B4(v98 + *v3 + v5 * v421, v413, type metadata accessor for Bubble);
      v236 = sub_1D2437E18(v235, v234);
      if ((v237 & 1) == 0)
      {
        v101 = v236;
        sub_1D22D7044(&v425, &v431);
        v424 = *(v418 + 176);
        v238 = v402;
        sub_1D2847FA8(&v431, &v424, v402);
        if ((*v412)(v238, 1, v28) != 1)
        {
          sub_1D24ADF1C(v238, v384, type metadata accessor for Bubble);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v400 = sub_1D278BD08(v400);
          }

          v121 = v415;
          v200 = v410;
          sub_1D24ADF84(v413, type metadata accessor for Bubble);
          __swift_destroy_boxed_opaque_existential_0(&v425);
          if ((v101 & 0x8000000000000000) == 0)
          {
            if (v101 < v400[2])
            {
              sub_1D24ADE30(v384, v98 + v400 + v101 * v5);
              v101 = v417;
              goto LABEL_116;
            }

LABEL_214:
            __break(1u);
LABEL_215:
            __break(1u);
            goto LABEL_216;
          }

LABEL_213:
          __break(1u);
          goto LABEL_214;
        }

        sub_1D22BD238(v238, &qword_1EC6DC4D0);
        v101 = v417;
        v235 = v413;
      }

      v239 = v407;
      sub_1D28725F8();
      sub_1D24AE5B4(v235, v101, type metadata accessor for Bubble);
      v240 = sub_1D2873CA8();
      v241 = sub_1D2878A18();
      if (os_log_type_enabled(v240, v241))
      {
        v242 = swift_slowAlloc();
        v243 = swift_slowAlloc();
        *&v431 = v243;
        *v242 = v403;
        v244 = sub_1D2846EE0();
        v246 = v245;
        sub_1D24ADF84(v417, type metadata accessor for Bubble);
        v247 = sub_1D23D7C84(v244, v246, &v431);
        v81 = v404;

        *(v242 + 4) = v247;
        v28 = v406;
        _os_log_impl(&dword_1D226E000, v240, v241, "Attempted to update a bubble that is not suggested: %s", v242, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v243);
        v248 = v243;
        v101 = v417;
        MEMORY[0x1D38A3520](v248, -1, -1);
        v249 = v242;
        v3 = v405;
        MEMORY[0x1D38A3520](v249, -1, -1);
      }

      else
      {

        sub_1D24ADF84(v101, type metadata accessor for Bubble);
      }

      v411(v239, v414);
      sub_1D24ADF84(v235, type metadata accessor for Bubble);
      __swift_destroy_boxed_opaque_existential_0(&v425);
      v225 = v420;
      v121 = v415;
      v200 = v410;
      v5 = v408;
      v223 = &v428;
    }
  }

  v254 = v389;
  sub_1D28725F8();
  v255 = sub_1D2873CA8();
  v256 = sub_1D2878A08();
  if (os_log_type_enabled(v255, v256))
  {
    v257 = swift_slowAlloc();
    v258 = v28;
    v259 = swift_slowAlloc();
    *&v428 = v259;
    *v257 = v403;
    v260 = sub_1D2870F68();
    v261 = MEMORY[0x1D38A0E70](v260, v258);
    v263 = v262;

    v264 = sub_1D23D7C84(v261, v263, &v428);

    *(v257 + 4) = v264;
    _os_log_impl(&dword_1D226E000, v255, v256, "New suggested bubbles: %s", v257, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v259);
    MEMORY[0x1D38A3520](v259, -1, -1);
    MEMORY[0x1D38A3520](v257, -1, -1);
  }

  v411(v254, v414);
  v265 = sub_1D2870F68();
  sub_1D24A844C(v265);
}