uint64_t sub_1D24FFFDC()
{
  swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_getKeyPath();
  sub_1D250443C(&qword_1EC6D9A38, type metadata accessor for FacePickerCarouselViewModel);
  sub_1D2870F78();
  sub_1D28719D8();
}

id sub_1D250014C()
{
  v1 = OBJC_IVAR____TtC23ImagePlaygroundInternal27OBKFacePickerViewController____lazy_storage___chooseOtherFaceButton;
  v2 = *(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal27OBKFacePickerViewController____lazy_storage___chooseOtherFaceButton);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal27OBKFacePickerViewController____lazy_storage___chooseOtherFaceButton);
  }

  else
  {
    v4 = [objc_opt_self() linkButton];
    sub_1D2870F68();
    v5 = sub_1D2878068();

    [v4 setTitle:v5 forState:0];

    v6 = sub_1D2500C20(&OBJC_IVAR____TtC23ImagePlaygroundInternal27OBKFacePickerViewController____lazy_storage___chooseOtherFaceAction);
    [v4 addAction:v6 forControlEvents:64];

    v7 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

id sub_1D2500270()
{
  v1 = type metadata accessor for OBKCarouselView();
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v16 - v5;
  v7 = OBJC_IVAR____TtC23ImagePlaygroundInternal27OBKFacePickerViewController____lazy_storage___carouselViewController;
  v8 = *(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal27OBKFacePickerViewController____lazy_storage___carouselViewController);
  if (v8)
  {
    v9 = *(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal27OBKFacePickerViewController____lazy_storage___carouselViewController);
  }

  else
  {
    sub_1D2870F78();
    sub_1D27E5114(v6);
    sub_1D2504484(v6, v3, type metadata accessor for OBKCarouselView);
    v10 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DCD78));
    v11 = v0;
    v12 = sub_1D28759F8();
    sub_1D28759D8();
    sub_1D25044EC(v6, type metadata accessor for OBKCarouselView);
    v13 = *(v11 + v7);
    *(v11 + v7) = v12;
    v9 = v12;

    v8 = 0;
  }

  v14 = v8;
  return v9;
}

id sub_1D25003C8()
{
  v1 = OBJC_IVAR____TtC23ImagePlaygroundInternal27OBKFacePickerViewController____lazy_storage___personAttributesView;
  v2 = *(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal27OBKFacePickerViewController____lazy_storage___personAttributesView);
  v3 = v2;
  if (v2 == 1)
  {
    v3 = sub_1D2500554(v0);
    v4 = *(v0 + v1);
    *(v0 + v1) = v3;
    v5 = v3;
    sub_1D23F6344(v4);
  }

  sub_1D23F6354(v2);
  return v3;
}

id sub_1D2500438(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(v1 + *a1);
  if (v3)
  {
    v4 = *(v1 + *a1);
  }

  else
  {
    sub_1D22BCFD0(0, &unk_1ED89CC30);
    swift_allocObject();
    swift_unknownObjectWeakInit();
    v5 = v1;
    sub_1D2878DF8();
    sub_1D22BCFD0(0, &qword_1EC6DB440);
    v6 = sub_1D2878A68();
    v7 = *(v1 + v2);
    *(v5 + v2) = v6;
    v4 = v6;

    v3 = 0;
  }

  v8 = v3;
  return v4;
}

id sub_1D2500554(uint64_t a1)
{
  v2 = type metadata accessor for PersonAttributesPicker();
  v3 = (v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v18 - v7;
  v9 = *(a1 + OBJC_IVAR____TtC23ImagePlaygroundInternal27OBKFacePickerViewController_viewModel);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = v9;
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = v9;
  type metadata accessor for PersonAttributesPickerViewModel();
  swift_retain_n();
  sub_1D2877528();
  v12 = &v8[v3[7]];
  *v12 = swift_getKeyPath();
  v12[8] = 0;
  v13 = &v8[v3[8]];
  *v13 = 0;
  v13[8] = 1;
  *&v8[v3[9]] = 0x403E000000000000;
  *&v8[v3[10]] = 0;
  *&v8[v3[11]] = 0;
  *&v8[v3[12]] = 0x4044000000000000;
  v8[v3[13]] = 0;
  sub_1D2504484(v8, v5, type metadata accessor for PersonAttributesPicker);
  v14 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DCD70));
  v15 = sub_1D28759F8();
  sub_1D25044EC(v8, type metadata accessor for PersonAttributesPicker);
  v16 = [v15 view];

  return v16;
}

uint64_t sub_1D2500784@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  swift_getKeyPath();
  sub_1D250443C(&qword_1EC6D9A38, type metadata accessor for FacePickerCarouselViewModel);
  sub_1D28719E8();

  v4 = OBJC_IVAR____TtC23ImagePlaygroundInternal27FacePickerCarouselViewModel__attributesViewModel;
  swift_beginAccess();
  return sub_1D2504484(a1 + v4, a2, type metadata accessor for PersonAttributesPickerViewModel);
}

uint64_t sub_1D2500870(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1D2878568();
  v7[2] = a4;
  v7[3] = a1;
  return sub_1D239DDE8(sub_1D2504184, v7);
}

uint64_t sub_1D25008EC(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for PersonAttributesPickerViewModel();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D2504484(a2, v5, type metadata accessor for PersonAttributesPickerViewModel);
  return sub_1D2484064(v5);
}

id sub_1D2500994()
{
  v0 = sub_1D28718F8();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v1 = sub_1D2878048();
  MEMORY[0x1EEE9AC00](v1 - 8);
  v2 = [objc_opt_self() linkButton];
  swift_getKeyPath();
  sub_1D250443C(&qword_1EC6D9A38, type metadata accessor for FacePickerCarouselViewModel);
  sub_1D28719E8();

  sub_1D2877FE8();
  if (qword_1ED89E0E8 != -1)
  {
    swift_once();
  }

  v3 = qword_1ED8B0058;
  sub_1D28718C8();
  sub_1D28780E8();
  v4 = sub_1D2878068();

  [v2 setTitle:v4 forState:0];

  v5 = sub_1D2500C20(&OBJC_IVAR____TtC23ImagePlaygroundInternal27OBKFacePickerViewController____lazy_storage___customizeAppearanceAction);
  [v2 addAction:v5 forControlEvents:64];

  return v2;
}

id sub_1D2500C20(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(v1 + *a1);
  if (v3)
  {
    v4 = *(v1 + *a1);
  }

  else
  {
    sub_1D22BCFD0(0, &unk_1ED89CC30);
    swift_allocObject();
    swift_unknownObjectWeakInit();
    v5 = v1;
    v6 = sub_1D2878DF8();
    v7 = *(v1 + v2);
    *(v5 + v2) = v6;
    v4 = v6;

    v3 = 0;
  }

  v8 = v3;
  return v4;
}

void sub_1D2500D04()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_1D2500D58();
  }
}

uint64_t sub_1D2500D58()
{
  v1 = type metadata accessor for FacePickerGridView();
  v2 = (v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v14 - v6;
  sub_1D24875D0();
  v8 = &v7[v2[7]];
  *v8 = swift_getKeyPath();
  v8[8] = 0;
  v9 = v2[8];
  *&v7[v9] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE690);
  swift_storeEnumTagMultiPayload();
  v10 = &v7[v2[9]];
  *v10 = xmmword_1D288F1B0;
  *(v10 + 1) = xmmword_1D288F1C0;
  *(v10 + 2) = xmmword_1D288F1D0;
  *(v10 + 3) = xmmword_1D288F1E0;
  *(v10 + 8) = 0x4087700000000000;
  type metadata accessor for FacePickerGridViewModel();
  sub_1D250443C(&qword_1EC6DC0F8, type metadata accessor for FacePickerGridViewModel);
  sub_1D2877638();
  sub_1D2504484(v7, v4, type metadata accessor for FacePickerGridView);
  v11 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DCD80));
  v12 = sub_1D28759F8();
  sub_1D24835A8(1);
  [v12 setModalPresentationStyle_];
  [v0 presentViewController:v12 animated:1 completion:0];

  return sub_1D25044EC(v7, type metadata accessor for FacePickerGridView);
}

uint64_t sub_1D2500F9C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = result;
    sub_1D2870F78();

    a3();
  }

  return result;
}

id sub_1D250101C(uint64_t *a1, uint64_t (*a2)(uint64_t))
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = *(v2 + *a1);
  }

  else
  {
    v6 = a2(v2);
    v7 = *(v2 + v3);
    *(v2 + v3) = v6;
    v5 = v6;

    v4 = 0;
  }

  v8 = v4;
  return v5;
}

id sub_1D2501080(uint64_t a1)
{
  v2 = sub_1D28714E8();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D28718F8();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v36[1] = v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36[0] = sub_1D28714D8();
  v7 = *(v36[0] - 8);
  MEMORY[0x1EEE9AC00](v36[0]);
  v9 = v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1D2878048();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v11 = type metadata accessor for CarouselFace();
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for PhotosPersonAsset();
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = (v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = type metadata accessor for PhotoSharingViewConfiguration(0);
  v18 = (v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = v36 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36[2] = a1;
  v21 = *(a1 + OBJC_IVAR____TtC23ImagePlaygroundInternal27OBKFacePickerViewController_viewModel);
  v22 = OBJC_IVAR____TtC23ImagePlaygroundInternal27FacePickerCarouselViewModel_defaultStyle;
  v23 = sub_1D2872008();
  (*(*(v23 - 8) + 16))(v20, v21 + v22, v23);
  sub_1D24864FC(v13);
  sub_1D2504484(v13, v16, type metadata accessor for PhotosPersonAsset);
  sub_1D25044EC(v13, type metadata accessor for CarouselFace);
  v25 = *v16;
  v24 = v16[1];
  sub_1D2870F68();
  sub_1D25044EC(v16, type metadata accessor for PhotosPersonAsset);
  v26 = &v20[v18[7]];
  *v26 = v25;
  *(v26 + 1) = v24;
  v20[v18[8]] = 1;
  v20[v18[9]] = 0;
  sub_1D2877FE8();
  if (qword_1ED89E0F0 != -1)
  {
    swift_once();
  }

  v27 = v36[0];
  v28 = __swift_project_value_buffer(v36[0], qword_1ED8B0060);
  (*(v7 + 16))(v9, v28, v27);
  sub_1D28718C8();
  sub_1D2871508();
  sub_1D24B8454(v4);
  sub_1D28780F8();
  sub_1D24B8C2C(v4);
  sub_1D28780F8();
  v29 = sub_1D2878068();

  v30 = sub_1D2878068();

  v31 = [objc_opt_self() alertControllerWithTitle:v29 message:v30 preferredStyle:1];

  v32 = sub_1D2501598();
  [v31 addAction_];

  v33 = sub_1D2501B10();
  [v31 addAction_];

  v34 = sub_1D25020D4();
  [v31 addAction_];

  sub_1D25044EC(v20, type metadata accessor for PhotoSharingViewConfiguration);
  return v31;
}

id sub_1D2501598()
{
  v1 = sub_1D28714E8();
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v37 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1D28718F8();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D28714D8();
  v43 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1D2878048();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v11 = type metadata accessor for CarouselFace();
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for PhotosPersonAsset();
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = (&v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = type metadata accessor for PhotoSharingViewConfiguration(0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v37 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal27OBKFacePickerViewController____lazy_storage___confirmAlertAction);
  if (v20)
  {
    v21 = *(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal27OBKFacePickerViewController____lazy_storage___confirmAlertAction);
  }

  else
  {
    v38 = v9;
    v39 = v6;
    v41 = OBJC_IVAR____TtC23ImagePlaygroundInternal27OBKFacePickerViewController____lazy_storage___confirmAlertAction;
    v42 = v3;
    v40 = v0;
    v22 = *(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal27OBKFacePickerViewController_viewModel);
    v23 = OBJC_IVAR____TtC23ImagePlaygroundInternal27FacePickerCarouselViewModel_defaultStyle;
    v24 = sub_1D2872008();
    (*(*(v24 - 8) + 16))(v19, v22 + v23, v24);
    sub_1D24864FC(v13);
    sub_1D2504484(v13, v16, type metadata accessor for PhotosPersonAsset);
    sub_1D25044EC(v13, type metadata accessor for CarouselFace);
    v26 = *v16;
    v25 = v16[1];
    sub_1D2870F68();
    sub_1D25044EC(v16, type metadata accessor for PhotosPersonAsset);
    v27 = &v19[v17[5]];
    *v27 = v26;
    *(v27 + 1) = v25;
    v19[v17[6]] = 1;
    v19[v17[7]] = 0;
    sub_1D2877FE8();
    if (qword_1ED89E0F0 != -1)
    {
      swift_once();
    }

    v28 = __swift_project_value_buffer(v7, qword_1ED8B0060);
    (*(v43 + 16))(v38, v28, v7);
    sub_1D28718C8();
    sub_1D2871508();
    sub_1D24B883C(v42);
    sub_1D25044EC(v19, type metadata accessor for PhotoSharingViewConfiguration);
    sub_1D28780F8();
    v29 = swift_allocObject();
    v30 = v40;
    swift_unknownObjectWeakInit();
    sub_1D2870F78();
    v31 = sub_1D2878068();

    aBlock[4] = sub_1D2503FDC;
    aBlock[5] = v29;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1D23B9478;
    aBlock[3] = &block_descriptor_30;
    v32 = _Block_copy(aBlock);

    v33 = [objc_opt_self() actionWithTitle:v31 style:0 handler:v32];
    _Block_release(v32);

    v34 = *(v30 + v41);
    *(v30 + v41) = v33;
    v21 = v33;

    v20 = 0;
  }

  v35 = v20;
  return v21;
}

id sub_1D2501B10()
{
  v1 = sub_1D28714E8();
  v47 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v39 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1D28718F8();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D28714D8();
  v46 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1D2878048();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v45 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for CarouselFace();
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for PhotosPersonAsset();
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = (&v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = type metadata accessor for PhotoSharingViewConfiguration(0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v39 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal27OBKFacePickerViewController____lazy_storage___resetAlertAction);
  if (v21)
  {
    v22 = *(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal27OBKFacePickerViewController____lazy_storage___resetAlertAction);
  }

  else
  {
    v40 = v9;
    v41 = v6;
    v42 = OBJC_IVAR____TtC23ImagePlaygroundInternal27OBKFacePickerViewController____lazy_storage___resetAlertAction;
    v43 = v3;
    v44 = v1;
    v23 = v0;
    v24 = *(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal27OBKFacePickerViewController_viewModel);
    v25 = OBJC_IVAR____TtC23ImagePlaygroundInternal27FacePickerCarouselViewModel_defaultStyle;
    v26 = sub_1D2872008();
    (*(*(v26 - 8) + 16))(v20, v24 + v25, v26);
    sub_1D24864FC(v14);
    sub_1D2504484(v14, v17, type metadata accessor for PhotosPersonAsset);
    sub_1D25044EC(v14, type metadata accessor for CarouselFace);
    v28 = *v17;
    v27 = v17[1];
    sub_1D2870F68();
    sub_1D25044EC(v17, type metadata accessor for PhotosPersonAsset);
    v29 = &v20[v18[5]];
    *v29 = v28;
    *(v29 + 1) = v27;
    v20[v18[6]] = 1;
    v20[v18[7]] = 0;
    v30 = v18[8];
    sub_1D2877FE8();
    if (qword_1ED89E0F0 != -1)
    {
      swift_once();
    }

    v31 = __swift_project_value_buffer(v7, qword_1ED8B0060);
    (*(v46 + 16))(v40, v31, v7);
    sub_1D28718C8();
    sub_1D2871508();
    (*(v47 + 16))(v43, &v20[v30], v44);
    sub_1D25044EC(v20, type metadata accessor for PhotoSharingViewConfiguration);
    sub_1D28780F8();
    v32 = swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_1D2870F78();
    v33 = sub_1D2878068();

    aBlock[4] = sub_1D2503FD4;
    aBlock[5] = v32;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1D23B9478;
    aBlock[3] = &block_descriptor_21;
    v34 = _Block_copy(aBlock);

    v35 = [objc_opt_self() actionWithTitle:v33 style:0 handler:v34];
    _Block_release(v34);

    v36 = *(v23 + v42);
    *(v23 + v42) = v35;
    v22 = v35;

    v21 = 0;
  }

  v37 = v21;
  return v22;
}

id sub_1D25020D4()
{
  v1 = OBJC_IVAR____TtC23ImagePlaygroundInternal27OBKFacePickerViewController____lazy_storage___cancelAlertAction;
  v2 = *(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal27OBKFacePickerViewController____lazy_storage___cancelAlertAction);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal27OBKFacePickerViewController____lazy_storage___cancelAlertAction);
  }

  else
  {
    v4 = swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_1D2870F68();
    sub_1D2870F78();
    v5 = sub_1D2878068();

    v11[4] = sub_1D2503FAC;
    v11[5] = v4;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 1107296256;
    v11[2] = sub_1D23B9478;
    v11[3] = &block_descriptor_17;
    v6 = _Block_copy(v11);

    v7 = [objc_opt_self() actionWithTitle:v5 style:1 handler:v6];
    _Block_release(v6);

    v8 = *(v0 + v1);
    *(v0 + v1) = v7;
    v3 = v7;

    v2 = 0;
  }

  v9 = v2;
  return v3;
}

uint64_t sub_1D250225C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_1D2870F78();

    swift_weakInit();

    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      sub_1D248CE40();
    }

    swift_weakDestroy();
  }

  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = *(result + OBJC_IVAR____TtC23ImagePlaygroundInternal27OBKFacePickerViewController_viewModel);
    v4 = result;
    sub_1D2870F78();

    if (*(v3 + OBJC_IVAR____TtC23ImagePlaygroundInternal27FacePickerCarouselViewModel__shouldPresentPhotoSharingConfirmation))
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath);
      sub_1D250443C(&qword_1EC6D9A38, type metadata accessor for FacePickerCarouselViewModel);
      sub_1D28719D8();
    }

    else
    {
      *(v3 + OBJC_IVAR____TtC23ImagePlaygroundInternal27FacePickerCarouselViewModel__shouldPresentPhotoSharingConfirmation) = 0;
    }
  }

  return result;
}

uint64_t sub_1D2502440()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_10;
  }

  v1 = *(Strong + OBJC_IVAR____TtC23ImagePlaygroundInternal27OBKFacePickerViewController_viewModel);
  v2 = Strong;
  sub_1D2870F78();

  swift_getKeyPath();
  sub_1D250443C(&qword_1EC6D9A38, type metadata accessor for FacePickerCarouselViewModel);
  sub_1D28719E8();

  if (!*(v1 + 32))
  {
LABEL_7:

    goto LABEL_10;
  }

  v3 = *(v1 + 40);
  ObjectType = swift_getObjectType();
  v5 = *(v3 + 40);
  swift_unknownObjectRetain();
  if ((v5(ObjectType, v3) & 1) == 0)
  {
    swift_unknownObjectRelease();
    goto LABEL_7;
  }

  swift_weakInit();

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_1D248C1C0();
    (*(v3 + 48))(ObjectType, v3);
    swift_unknownObjectRelease();
  }

  else
  {
    swift_unknownObjectRelease();
  }

  swift_weakDestroy();
LABEL_10:
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v7 = *(result + OBJC_IVAR____TtC23ImagePlaygroundInternal27OBKFacePickerViewController_viewModel);
    v8 = result;
    sub_1D2870F78();

    if (*(v7 + OBJC_IVAR____TtC23ImagePlaygroundInternal27FacePickerCarouselViewModel__shouldPresentPhotoSharingConfirmation))
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath);
      sub_1D250443C(&qword_1EC6D9A38, type metadata accessor for FacePickerCarouselViewModel);
      sub_1D28719D8();
    }

    else
    {
      *(v7 + OBJC_IVAR____TtC23ImagePlaygroundInternal27FacePickerCarouselViewModel__shouldPresentPhotoSharingConfirmation) = 0;
    }
  }

  return result;
}

uint64_t sub_1D2502730()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = *(result + OBJC_IVAR____TtC23ImagePlaygroundInternal27OBKFacePickerViewController_viewModel);
    v2 = result;
    sub_1D2870F78();

    if (*(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal27FacePickerCarouselViewModel__shouldPresentPhotoSharingConfirmation))
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath);
      sub_1D250443C(&qword_1EC6D9A38, type metadata accessor for FacePickerCarouselViewModel);
      sub_1D28719D8();
    }

    else
    {
      *(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal27FacePickerCarouselViewModel__shouldPresentPhotoSharingConfirmation) = 0;
    }
  }

  return result;
}

uint64_t sub_1D2502890()
{
  v0 = type metadata accessor for CarouselFace();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v4 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D24864FC(v2);
  return sub_1D25044EC(v2, type metadata accessor for CarouselFace);
}

uint64_t sub_1D2502930(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[7] = a4;
  type metadata accessor for PersonAttributesPickerViewModel();
  v4[8] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE5A0);
  v4[9] = swift_task_alloc();
  type metadata accessor for CarouselFace();
  v4[10] = swift_task_alloc();
  sub_1D2878568();
  v4[11] = sub_1D2878558();
  v6 = sub_1D28784F8();

  return MEMORY[0x1EEE6DFA0](sub_1D2502A58, v6, v5);
}

uint64_t sub_1D2502A58()
{
  v23 = v0;
  v1 = v0[10];
  v2 = v0[7];

  v3 = *(v2 + OBJC_IVAR____TtC23ImagePlaygroundInternal27OBKFacePickerViewController_viewModel);
  sub_1D24864FC(v1);
  v4 = sub_1D2871F78();
  v5 = v0[10];
  if (v4)
  {
    sub_1D25044EC(v0[10], type metadata accessor for CarouselFace);
    v6 = sub_1D2500438(&OBJC_IVAR____TtC23ImagePlaygroundInternal27OBKFacePickerViewController____lazy_storage___doneButton);
    [v6 setEnabled_];

LABEL_4:
    v11 = sub_1D250101C(&OBJC_IVAR____TtC23ImagePlaygroundInternal27OBKFacePickerViewController____lazy_storage___appearanceButton, sub_1D2500994);
    v12 = 1;
    goto LABEL_11;
  }

  v7 = v0[9];
  sub_1D2486A68(v0[10], v7);
  sub_1D25044EC(v5, type metadata accessor for CarouselFace);
  v8 = type metadata accessor for PlaygroundImage();
  v9 = (*(*(v8 - 8) + 48))(v7, 1, v8);
  sub_1D25042E8(v7);
  v10 = sub_1D2500438(&OBJC_IVAR____TtC23ImagePlaygroundInternal27OBKFacePickerViewController____lazy_storage___doneButton);
  [v10 setEnabled_];

  if (v9 != 1)
  {
    goto LABEL_4;
  }

  v13 = v0[8];
  swift_getKeyPath();
  v0[5] = v3;
  sub_1D250443C(&qword_1EC6D9A38, type metadata accessor for FacePickerCarouselViewModel);
  sub_1D28719E8();

  v14 = OBJC_IVAR____TtC23ImagePlaygroundInternal27FacePickerCarouselViewModel__attributesViewModel;
  swift_beginAccess();
  sub_1D2504484(v3 + v14, v13, type metadata accessor for PersonAttributesPickerViewModel);
  sub_1D24FBFBC(v22);
  sub_1D25044EC(v13, type metadata accessor for PersonAttributesPickerViewModel);
  v22[3] = v22[0];
  v22[4] = v22[1];
  v22[5] = v22[2];
  v15 = sub_1D24FBD9C();
  v17 = v16;

  if (!v17)
  {
    goto LABEL_9;
  }

  v18 = HIBYTE(v17) & 0xF;
  if ((v17 & 0x2000000000000000) == 0)
  {
    v18 = v15 & 0xFFFFFFFFFFFFLL;
  }

  if (!v18)
  {
LABEL_9:
    sub_1D2483BBC(0);
  }

  v11 = sub_1D250101C(&OBJC_IVAR____TtC23ImagePlaygroundInternal27OBKFacePickerViewController____lazy_storage___appearanceButton, sub_1D2500994);
  swift_getKeyPath();
  v0[6] = v3;
  sub_1D28719E8();

  v12 = *(v3 + OBJC_IVAR____TtC23ImagePlaygroundInternal27FacePickerCarouselViewModel__showPersonAttributes);
LABEL_11:
  v19 = v0[7];
  [v11 setEnabled_];

  *(swift_task_alloc() + 16) = v19;
  *(swift_task_alloc() + 16) = v19;
  sub_1D28719C8();

  v20 = v0[1];

  return v20();
}

uint64_t sub_1D2502EA4(uint64_t a1)
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
  sub_1D22AE31C(0, 0, v4, &unk_1D288F2A8, v7);
}

uint64_t sub_1D2502FC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[11] = a1;
  v4[12] = a4;
  sub_1D2878568();
  v4[13] = sub_1D2878558();
  v6 = sub_1D28784F8();

  return MEMORY[0x1EEE6DFA0](sub_1D2503060, v6, v5);
}

id sub_1D2503060()
{

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = sub_1D25003C8();
    if (v2)
    {
      v3 = v2;
      result = [Strong view];
      if (!result)
      {
        __break(1u);
        return result;
      }

      v5 = result;
      v6 = objc_opt_self();
      v7 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v0[6] = sub_1D250457C;
      v0[7] = v7;
      v0[2] = MEMORY[0x1E69E9820];
      v0[3] = 1107296256;
      v0[4] = sub_1D23DFBA8;
      v0[5] = &block_descriptor_43_0;
      v8 = _Block_copy(v0 + 2);

      [v6 transitionWithView:v5 duration:5242880 options:v8 animations:0 completion:0.25];

      _Block_release(v8);
    }

    *(swift_task_alloc() + 16) = Strong;
    *(swift_task_alloc() + 16) = Strong;
    sub_1D28719C8();
  }

  *v0[11] = Strong == 0;
  v9 = v0[1];

  return v9();
}

uint64_t sub_1D250327C()
{
  swift_getKeyPath();
  sub_1D250443C(&qword_1EC6D9A38, type metadata accessor for FacePickerCarouselViewModel);
  sub_1D28719E8();
}

void sub_1D250331C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8E60);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v14 - v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v9 = sub_1D28785F8();
    (*(*(v9 - 8) + 56))(v6, 1, 1, v9);
    sub_1D2878568();
    v10 = v8;
    v11 = sub_1D2878558();
    v12 = swift_allocObject();
    v13 = MEMORY[0x1E69E85E0];
    v12[2] = v11;
    v12[3] = v13;
    v12[4] = v10;
    sub_1D22AE01C(0, 0, v6, a3, v12);
  }
}

uint64_t sub_1D250346C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 24) = a4;
  sub_1D2878568();
  *(v4 + 32) = sub_1D2878558();
  v6 = sub_1D28784F8();

  return MEMORY[0x1EEE6DFA0](sub_1D2503504, v6, v5);
}

uint64_t sub_1D2503504()
{
  v1 = *(v0 + 24);

  v2 = *(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal27OBKFacePickerViewController_viewModel);
  swift_getKeyPath();
  *(v0 + 16) = v2;
  sub_1D250443C(&qword_1EC6D9A38, type metadata accessor for FacePickerCarouselViewModel);
  sub_1D28719E8();

  v3 = *(v2 + OBJC_IVAR____TtC23ImagePlaygroundInternal27FacePickerCarouselViewModel__shouldPresentPhotoSharingConfirmation);
  v4 = sub_1D250101C(&OBJC_IVAR____TtC23ImagePlaygroundInternal27OBKFacePickerViewController____lazy_storage___sharingAlert, sub_1D2501080);
  v5 = v4;
  if (v3 == 1)
  {
    [*(v0 + 24) presentViewController:v4 animated:1 completion:0];
  }

  else
  {
    [v4 dismissViewControllerAnimated:1 completion:0];
  }

  v6 = *(v0 + 24);

  *(swift_task_alloc() + 16) = v6;
  *(swift_task_alloc() + 16) = v6;
  sub_1D28719C8();

  v7 = *(v0 + 8);

  return v7();
}

void sub_1D25036DC()
{
  v0 = sub_1D28718F8();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v1 = sub_1D2878048();
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v5 = Strong;
  v6 = [Strong headerView];
  v7 = OBJC_IVAR____TtC23ImagePlaygroundInternal27OBKFacePickerViewController_viewModel;
  v8 = *&v5[OBJC_IVAR____TtC23ImagePlaygroundInternal27OBKFacePickerViewController_viewModel];
  swift_getKeyPath();
  v23 = v8;
  sub_1D250443C(&qword_1EC6D9A38, type metadata accessor for FacePickerCarouselViewModel);
  sub_1D28719E8();

  [v6 setHidden_];

  v9 = *&v5[v7];
  swift_getKeyPath();
  v23 = v9;
  sub_1D2870F78();
  sub_1D28719E8();

  v10 = *(v9 + OBJC_IVAR____TtC23ImagePlaygroundInternal27FacePickerCarouselViewModel__showPersonAttributes);

  v11 = sub_1D25003C8();
  v12 = v11;
  if (v10 == 1)
  {
    if (v11)
    {
      v13 = [v5 secondaryContentView];
      [v13 addSubview_];

      v14 = objc_opt_self();
      sub_1D22BCFD0(0, &qword_1EC6DCD68);
      sub_1D2870F68();
      v15 = sub_1D28783C8();

      [v14 activateConstraints_];

LABEL_7:
    }
  }

  else if (v11)
  {
    v16 = objc_opt_self();
    sub_1D22BCFD0(0, &qword_1EC6DCD68);
    sub_1D2870F68();
    v17 = sub_1D28783C8();

    [v16 deactivateConstraints_];

    [v12 removeFromSuperview];
    v15 = v12;
    goto LABEL_7;
  }

  v18 = sub_1D250101C(&OBJC_IVAR____TtC23ImagePlaygroundInternal27OBKFacePickerViewController____lazy_storage___appearanceButton, sub_1D2500994);
  v19 = *&v5[v7];
  swift_getKeyPath();
  v23 = v19;
  sub_1D28719E8();

  sub_1D2877FE8();
  if (qword_1ED89E0E8 != -1)
  {
    swift_once();
  }

  v20 = qword_1ED8B0058;
  sub_1D28718C8();
  sub_1D28780E8();
  v21 = sub_1D2878068();

  [v18 setTitle:v21 forState:0];
}

void sub_1D2503B6C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = [Strong presentedViewController];
    if (v2)
    {
      v3 = v2;
      [v2 dismissViewControllerAnimated:1 completion:0];
    }
  }
}

id sub_1D2503C50()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t block_copy_helper_19(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1D2870F78();
}

uint64_t sub_1D2503E9C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1D22BDFF8;

  return sub_1D250346C(a1, v4, v5, v6);
}

void (*sub_1D2503F50())()
{
  swift_allocObject();
  swift_unknownObjectWeakInit();
  return sub_1D2503E64;
}

uint64_t sub_1D2503FEC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1D22BDFF8;

  return sub_1D2502FC8(a1, v4, v5, v6);
}

uint64_t (*sub_1D25040A0())()
{
  swift_allocObject();
  swift_unknownObjectWeakInit();
  return sub_1D2503FE4;
}

uint64_t sub_1D25040FC()
{
  v1 = *(v0 + 32);
  sub_1D2878568();
  return sub_1D239DF70(sub_1D25041A0, v1);
}

uint64_t objectdestroy_5Tm()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1D2504234(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1D22BC8FC;

  return sub_1D2502930(a1, v4, v5, v6);
}

uint64_t sub_1D25042E8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE5A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void (*sub_1D2504350())()
{
  swift_allocObject();
  swift_unknownObjectWeakInit();
  return sub_1D25041BC;
}

uint64_t sub_1D250443C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D2504484(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D25044EC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D25045B8()
{
  v1 = sub_1D2873CB8();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v0;
  v7 = *(v0 + 8);
  v8 = *(v0 + 16);
  v9 = v8 >> 4;
  if (v8 >> 4 > 8)
  {
    if (v9 == 9)
    {
      return 225;
    }

    if (v9 == 10)
    {
      if (v6 == 3 && !v7 && v8 == 160)
      {
        return 194;
      }

      if (v6 == 5 && !v7 && v8 == 160)
      {
        return 226;
      }

      if (v6 == 6 && !v7 && v8 == 160)
      {
        return 130;
      }
    }
  }

  else
  {
    if (v9 == 7)
    {
      return 195;
    }

    if (v9 == 8)
    {
      return 224;
    }
  }

  v19 = v3;
  sub_1D2872638();
  sub_1D233E72C(v6, v7, v8);
  v11 = sub_1D2873CA8();
  v12 = sub_1D2878A08();
  sub_1D22BCDC4(v6, v7, v8);
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v23 = v14;
    *v13 = 136380675;
    v20 = v6;
    v21 = v7;
    v22 = v8;
    sub_1D22BCE64();
    v15 = sub_1D2879748();
    v17 = sub_1D23D7C84(v15, v16, &v23);

    *(v13 + 4) = v17;
    _os_log_impl(&dword_1D226E000, v11, v12, "No blocking sub-category for GenerationError: %{private}s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v14);
    MEMORY[0x1D38A3520](v14, -1, -1);
    MEMORY[0x1D38A3520](v13, -1, -1);
  }

  (*(v2 + 8))(v5, v19);
  return 227;
}

unint64_t sub_1D250483C(uint64_t a1)
{
  result = sub_1D22BCE64();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D2504864()
{
  v1 = sub_1D2873CB8();
  v99 = *(v1 - 8);
  v100 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v101 = &v87 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v94 = &v87 - v4;
  MEMORY[0x1EEE9AC00](v5);
  v88 = &v87 - v6;
  v7 = sub_1D2872B48();
  v91 = *(v7 - 8);
  v92 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v90 = &v87 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = sub_1D2872B58();
  v95 = *(v93 - 8);
  MEMORY[0x1EEE9AC00](v93);
  v87 = &v87 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v89 = &v87 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v98 = &v87 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v97 = &v87 - v15;
  v16 = sub_1D2872BD8();
  v96 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v87 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v87 - v20;
  v22 = sub_1D2872BE8();
  v23 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v87 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x1EEE9AC00](v26);
  v29 = &v87 - v28;
  v30 = *(v23 + 16);
  v30(&v87 - v28, v0, v22, v27);
  if ((*(v23 + 88))(v29, v22) != *MEMORY[0x1E69DFD50])
  {
    sub_1D2872638();
    (v30)(v25, v0, v22);
    v59 = sub_1D2873CA8();
    v60 = sub_1D2878A08();
    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      v97 = v61;
      v98 = swift_slowAlloc();
      v102 = v98;
      *v61 = 136380675;
      sub_1D2508008(&qword_1EC6DCD88, MEMORY[0x1E69DFD90]);
      v62 = sub_1D2879748();
      v64 = v63;
      v65 = *(v23 + 8);
      v65(v25, v22);
      v66 = sub_1D23D7C84(v62, v64, &v102);

      v67 = v97;
      *(v97 + 4) = v66;
      v68 = v67;
      _os_log_impl(&dword_1D226E000, v59, v60, "No blocking sub-category for image checker error: %{private}s", v67, 0xCu);
      v69 = v98;
      __swift_destroy_boxed_opaque_existential_0(v98);
      MEMORY[0x1D38A3520](v69, -1, -1);
      MEMORY[0x1D38A3520](v68, -1, -1);
    }

    else
    {

      v65 = *(v23 + 8);
      v65(v25, v22);
    }

    (*(v99 + 8))(v101, v100);
    v65(v29, v22);
    return 128;
  }

  (*(v23 + 96))(v29, v22);
  v31 = *(__swift_instantiateConcreteTypeFromMangledNameV2(qword_1EC6DCDB0) + 48);
  v32 = v96;
  (*(v96 + 32))(v21, v29, v16);
  v33 = v95;
  v34 = v97;
  v35 = v93;
  (*(v95 + 32))(v97, &v29[v31], v93);
  (*(v32 + 16))(v18, v21, v16);
  v36 = (*(v32 + 88))(v18, v16);
  v37 = *MEMORY[0x1E69DFD78];
  v38 = 2;
  v39 = v16;
  v40 = v33;
  v101 = v21;
  if (v36 == v37)
  {
    v41 = v94;
    v42 = v98;
  }

  else
  {
    v41 = v94;
    v42 = v98;
    if (v36 != *MEMORY[0x1E69DFD58] && v36 != *MEMORY[0x1E69DFD70] && v36 != *MEMORY[0x1E69DFD60])
    {
      v38 = 1;
      if (v36 != *MEMORY[0x1E69DFD68] && v36 != *MEMORY[0x1E69DFD80] && v36 != *MEMORY[0x1E69DFD88])
      {
        (*(v32 + 8))(v18, v39);
        v42 = v98;
        v38 = 0;
      }
    }
  }

  v43 = *(v40 + 16);
  v43(v42, v34, v35);
  if ((*(v40 + 88))(v42, v35) != *MEMORY[0x1E69DFD00])
  {
    v92 = v39;
    sub_1D2872638();
    v70 = v89;
    v43(v89, v34, v35);
    v71 = v41;
    v72 = v35;
    v73 = sub_1D2873CA8();
    v74 = sub_1D2878A08();
    if (os_log_type_enabled(v73, v74))
    {
      v75 = v40;
      v76 = swift_slowAlloc();
      v91 = swift_slowAlloc();
      v102 = v91;
      *v76 = 136380675;
      v43(v87, v70, v72);
      v77 = sub_1D2878118();
      v79 = v78;
      v80 = v74;
      v81 = *(v75 + 8);
      v81(v70, v72);
      v82 = sub_1D23D7C84(v77, v79, &v102);

      *(v76 + 4) = v82;
      _os_log_impl(&dword_1D226E000, v73, v80, "No blocking sub-category for image rejection in image checker error: %{private}s", v76, 0xCu);
      v83 = v91;
      __swift_destroy_boxed_opaque_existential_0(v91);
      MEMORY[0x1D38A3520](v83, -1, -1);
      MEMORY[0x1D38A3520](v76, -1, -1);

      (*(v99 + 8))(v94, v100);
      v81(v97, v72);
      (*(v96 + 8))(v101, v92);
    }

    else
    {

      v81 = *(v40 + 8);
      v81(v70, v72);
      (*(v99 + 8))(v71, v100);
      v81(v34, v72);
      (*(v32 + 8))(v101, v92);
    }

    v81(v98, v72);
    return 128;
  }

  (*(v40 + 96))(v42, v35);
  if (!*(*v42 + 16))
  {

    (*(v40 + 8))(v34, v35);
    (*(v32 + 8))(v101, v39);
    return 128;
  }

  v44 = v39;
  v45 = v35;
  (*(v91 + 16))(v90, *v42 + ((*(v91 + 80) + 32) & ~*(v91 + 80)), v92);

  v46 = [objc_opt_self() instance];
  sub_1D2872B38();
  v47 = sub_1D2878068();

  v48 = [v46 decodeFromP1_];

  v49 = sub_1D28780A8();
  v51 = v50;

  v52 = v88;
  sub_1D2872638();
  sub_1D2870F68();
  v53 = sub_1D2873CA8();
  v54 = sub_1D2878A08();

  if (os_log_type_enabled(v53, v54))
  {
    v55 = swift_slowAlloc();
    v56 = swift_slowAlloc();
    v102 = v56;
    *v55 = 136380675;
    *(v55 + 4) = sub_1D23D7C84(v49, v51, &v102);
    _os_log_impl(&dword_1D226E000, v53, v54, "unsafe signal: %{private}s", v55, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v56);
    MEMORY[0x1D38A3520](v56, -1, -1);
    MEMORY[0x1D38A3520](v55, -1, -1);
  }

  (*(v99 + 8))(v52, v100);
  if (sub_1D2878288())
  {

    v57 = v44;
    v58 = v96;
LABEL_32:
    (*(v91 + 8))(v90, v92);
    (*(v95 + 8))(v97, v45);
    (*(v58 + 8))(v101, v57);
    return v38;
  }

  v57 = v44;
  if (v49 == 0x7078655F7766736ELL && v51 == 0xED0000746963696CLL)
  {

    v58 = v96;
    goto LABEL_32;
  }

  v85 = sub_1D2879618();
  v58 = v96;
  if (v85)
  {

    goto LABEL_32;
  }

  if (sub_1D2878288())
  {

    (*(v91 + 8))(v90, v92);
    (*(v95 + 8))(v97, v45);
    (*(v58 + 8))(v101, v44);
    return v38 | 0x20;
  }

  else if (sub_1D2878288())
  {

    (*(v91 + 8))(v90, v92);
    (*(v95 + 8))(v97, v45);
    (*(v58 + 8))(v101, v44);
    return v38 | 0x40;
  }

  else
  {
    v86 = sub_1D2878288();

    (*(v91 + 8))(v90, v92);
    (*(v95 + 8))(v97, v45);
    (*(v58 + 8))(v101, v44);
    if (v86)
    {
      return v38 | 0x60;
    }

    else
    {
      return 4294967168;
    }
  }
}

uint64_t sub_1D2505664(uint64_t a1)
{
  result = sub_1D2508008(&qword_1EC6DCD88, MEMORY[0x1E69DFD90]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D25056C4(uint64_t a1)
{
  result = sub_1D2508008(&qword_1EC6DCD90, MEMORY[0x1E69DFDB8]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D250571C()
{
  v75 = sub_1D28731F8();
  v74 = *(v75 - 8);
  MEMORY[0x1EEE9AC00](v75);
  v73 = &v69 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = sub_1D2873CB8();
  v77 = *(v78 - 8);
  MEMORY[0x1EEE9AC00](v78);
  v76 = &v69 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = sub_1D2873748();
  v71 = *(v79 - 8);
  MEMORY[0x1EEE9AC00](v79);
  v84 = &v69 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = sub_1D2873738();
  v72 = *(v83 - 8);
  MEMORY[0x1EEE9AC00](v83);
  v87 = &v69 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA438);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v81 = &v69 - v6;
  v89 = sub_1D2872CD8();
  v80 = *(v89 - 8);
  MEMORY[0x1EEE9AC00](v89);
  v88 = &v69 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v70 = &v69 - v9;
  v90 = sub_1D28732A8();
  v86 = *(v90 - 8);
  MEMORY[0x1EEE9AC00](v90);
  v82 = &v69 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v69 - v12;
  v14 = sub_1D2873628();
  v85 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v69 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_1D28731E8();
  v18 = result;
  v19 = *(result + 16);
  if (v19)
  {
    v20 = 0;
    v21 = result + 32;
    while (v20 < *(v18 + 16))
    {
      sub_1D22D7044(v21, &v96);
      sub_1D22D7044(&v96, &v99);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA478);
      if (swift_dynamicCast())
      {

        (*(v85 + 8))(v16, v14);
        sub_1D22D79FC(&v96, &v99);
        goto LABEL_8;
      }

      ++v20;
      result = __swift_destroy_boxed_opaque_existential_0(&v96);
      v21 += 40;
      if (v19 == v20)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_6:

    v101 = 0;
    v99 = 0u;
    v100 = 0u;
LABEL_8:
    result = sub_1D28731E8();
    v22 = result;
    v23 = *(result + 16);
    v24 = v90;
    if (!v23)
    {
LABEL_13:

      v98 = 0;
      v96 = 0u;
      v97 = 0u;
      if (*(&v100 + 1))
      {
LABEL_14:
        sub_1D22BD238(&v99, &qword_1EC6DCDA8);
        v27 = 192;
      }

      else
      {
LABEL_19:
        result = sub_1D28731E8();
        v28 = result;
        v29 = *(result + 16);
        v30 = v84;
        v31 = v83;
        v32 = v82;
        if (v29)
        {
          v33 = 0;
          v34 = result + 32;
          while (v33 < *(v28 + 16))
          {
            sub_1D22D7044(v34, v92);
            sub_1D22D7044(v92, v91);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA478);
            if (swift_dynamicCast())
            {

              (*(v86 + 8))(v32, v90);
              sub_1D22D79FC(v92, &v93);
              sub_1D22BD238(&v93, &qword_1EC6DCDA8);
              sub_1D22BD238(&v99, &qword_1EC6DCDA8);
              v27 = 162;
              goto LABEL_52;
            }

            ++v33;
            result = __swift_destroy_boxed_opaque_existential_0(v92);
            v34 += 40;
            if (v29 == v33)
            {
              goto LABEL_24;
            }
          }

          goto LABEL_57;
        }

LABEL_24:

        v95 = 0;
        v93 = 0u;
        v94 = 0u;
        sub_1D22BD238(&v93, &qword_1EC6DCDA8);
        result = sub_1D28731E8();
        v35 = result;
        v36 = *(result + 16);
        if (v36)
        {
          v37 = 0;
          v38 = result + 32;
          while (v37 < *(v35 + 16))
          {
            sub_1D22D7044(v38, v92);
            sub_1D22D7044(v92, v91);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA478);
            if (swift_dynamicCast())
            {

              v63 = v80;
              v64 = *(v80 + 8);
              v65 = v89;
              v64(v88, v89);
              sub_1D22D79FC(v92, &v93);
              v39 = v81;
              v66 = swift_dynamicCast();
              (*(v63 + 56))(v39, v66 ^ 1u, 1, v65);
              if ((*(v63 + 48))(v39, 1, v65) == 1)
              {
                goto LABEL_30;
              }

              v67 = v70;
              (*(v63 + 32))(v70, v39, v65);
              if (sub_1D2381FD8())
              {
                v64(v67, v65);
LABEL_51:
                sub_1D22BD238(&v99, &qword_1EC6DCDA8);
                v27 = 193;
              }

              else
              {
                v68 = sub_1D23821D4();
                v64(v67, v65);
                sub_1D22BD238(&v99, &qword_1EC6DCDA8);
                if ((v68 & 1) == 0)
                {
                  goto LABEL_49;
                }

                v27 = 194;
              }

              goto LABEL_52;
            }

            ++v37;
            result = __swift_destroy_boxed_opaque_existential_0(v92);
            v38 += 40;
            if (v36 == v37)
            {
              goto LABEL_29;
            }
          }

          goto LABEL_58;
        }

LABEL_29:

        v39 = v81;
        (*(v80 + 56))(v81, 1, 1, v89);
LABEL_30:
        sub_1D22BD238(v39, &qword_1EC6DA438);
        result = sub_1D28731E8();
        v40 = result;
        v41 = *(result + 16);
        v42 = v79;
        if (v41)
        {
          v43 = 0;
          v44 = result + 32;
          while (v43 < *(v40 + 16))
          {
            sub_1D22D7044(v44, v92);
            sub_1D22D7044(v92, v91);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA478);
            if (swift_dynamicCast())
            {

              (*(v72 + 8))(v87, v31);
              sub_1D22D79FC(v92, &v93);
              sub_1D22BD238(&v93, &qword_1EC6DCDA8);
              sub_1D22BD238(&v99, &qword_1EC6DCDA8);
              v27 = 194;
              goto LABEL_52;
            }

            ++v43;
            result = __swift_destroy_boxed_opaque_existential_0(v92);
            v44 += 40;
            if (v41 == v43)
            {
              goto LABEL_35;
            }
          }

          goto LABEL_59;
        }

LABEL_35:

        v95 = 0;
        v93 = 0u;
        v94 = 0u;
        sub_1D22BD238(&v93, &qword_1EC6DCDA8);
        result = sub_1D28731E8();
        v45 = result;
        v46 = *(result + 16);
        if (v46)
        {
          v47 = 0;
          v48 = result + 32;
          while (v47 < *(v45 + 16))
          {
            sub_1D22D7044(v48, v92);
            sub_1D22D7044(v92, v91);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA478);
            if (swift_dynamicCast())
            {

              (*(v71 + 8))(v30, v42);
              sub_1D22D79FC(v92, &v93);
              sub_1D22BD238(&v93, &qword_1EC6DCDA8);
              goto LABEL_51;
            }

            ++v47;
            result = __swift_destroy_boxed_opaque_existential_0(v92);
            v48 += 40;
            if (v46 == v47)
            {
              goto LABEL_40;
            }
          }

          goto LABEL_60;
        }

LABEL_40:

        v95 = 0;
        v93 = 0u;
        v94 = 0u;
        sub_1D22BD238(&v93, &qword_1EC6DCDA8);
        v49 = v76;
        sub_1D2872638();
        v50 = v74;
        v51 = v73;
        v52 = v75;
        (*(v74 + 16))(v73, v0, v75);
        v53 = sub_1D2873CA8();
        v54 = sub_1D2878A08();
        if (os_log_type_enabled(v53, v54))
        {
          v55 = v50;
          v56 = swift_slowAlloc();
          v57 = swift_slowAlloc();
          *&v93 = v57;
          *v56 = 136380675;
          sub_1D2508008(&qword_1EC6DA4D0, MEMORY[0x1E69DFF98]);
          v58 = sub_1D2879748();
          v59 = v52;
          v61 = v60;
          (*(v55 + 8))(v51, v59);
          v62 = sub_1D23D7C84(v58, v61, &v93);

          *(v56 + 4) = v62;
          _os_log_impl(&dword_1D226E000, v53, v54, "No blocking sub-category for policy violation: %{private}s", v56, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v57);
          MEMORY[0x1D38A3520](v57, -1, -1);
          MEMORY[0x1D38A3520](v56, -1, -1);
        }

        else
        {

          (*(v50 + 8))(v51, v52);
        }

        (*(v77 + 8))(v49, v78);
        sub_1D22BD238(&v99, &qword_1EC6DCDA8);
LABEL_49:
        v27 = 128;
      }

LABEL_52:
      sub_1D22BD238(&v96, &qword_1EC6DCDA8);
      return v27;
    }

    v25 = 0;
    v26 = result + 32;
    while (v25 < *(v22 + 16))
    {
      sub_1D22D7044(v26, &v93);
      sub_1D22D7044(&v93, &v96);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA478);
      if (swift_dynamicCast())
      {

        (*(v86 + 8))(v13, v24);
        sub_1D22D79FC(&v93, &v96);
        if (*(&v100 + 1) && *(&v97 + 1))
        {
          sub_1D22BD238(&v99, &qword_1EC6DCDA8);
          v27 = 163;
          goto LABEL_52;
        }

        if (*(&v100 + 1))
        {
          goto LABEL_14;
        }

        goto LABEL_19;
      }

      ++v25;
      result = __swift_destroy_boxed_opaque_existential_0(&v93);
      v26 += 40;
      if (v23 == v25)
      {
        goto LABEL_13;
      }
    }
  }

  __break(1u);
LABEL_57:
  __break(1u);
LABEL_58:
  __break(1u);
LABEL_59:
  __break(1u);
LABEL_60:
  __break(1u);
  return result;
}

uint64_t sub_1D2506598(uint64_t a1)
{
  result = sub_1D2508008(&qword_1EC6DA4D0, MEMORY[0x1E69DFF98]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D25065F0()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA4E0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v102 = &v100 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v103 = &v100 - v5;
  v6 = sub_1D2872BC8();
  v105 = *(v6 - 8);
  v106 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v104 = &v100 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1D2873CB8();
  v115 = *(v8 - 8);
  v116 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v100 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v111 = &v100 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v100 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v112 = &v100 - v17;
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA528);
  MEMORY[0x1EEE9AC00](v108);
  v110 = &v100 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v109 = &v100 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v114 = &v100 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v107 = &v100 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v100 - v26;
  MEMORY[0x1EEE9AC00](v28);
  v113 = (&v100 - v29);
  v30 = sub_1D2872988();
  v31 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v33 = &v100 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = MEMORY[0x1EEE9AC00](v34);
  v37 = &v100 - v36;
  v38 = *(v31 + 16);
  v38(&v100 - v36, v1, v30, v35);
  if ((*(v31 + 88))(v37, v30) != *MEMORY[0x1E69DFC90])
  {
    sub_1D2872638();
    (v38)(v33, v1, v30);
    v46 = sub_1D2873CA8();
    v47 = sub_1D2878A08();
    v48 = v10;
    if (os_log_type_enabled(v46, v47))
    {
      v49 = swift_slowAlloc();
      v113 = swift_slowAlloc();
      *v49 = 138477827;
      sub_1D2508008(&qword_1EC6DA4F0, MEMORY[0x1E69DFCA8]);
      swift_allocError();
      v114 = v48;
      (v38)(v50, v33, v30);
      v51 = _swift_stdlib_bridgeErrorToNSError();
      v52 = *(v31 + 8);
      v52(v33, v30);
      *(v49 + 4) = v51;
      v53 = v113;
      *v113 = v51;
      v48 = v114;
      _os_log_impl(&dword_1D226E000, v46, v47, "No blocking sub-category for prompt error: %{private}@", v49, 0xCu);
      sub_1D22BD238(v53, qword_1EC6DA930);
      MEMORY[0x1D38A3520](v53, -1, -1);
      MEMORY[0x1D38A3520](v49, -1, -1);
    }

    else
    {

      v52 = *(v31 + 8);
      v52(v33, v30);
    }

    (*(v115 + 8))(v48, v116);
    v52(v37, v30);
    return 128;
  }

  v100 = v15;
  (*(v31 + 96))(v37, v30);
  v39 = *v37;
  v40 = *(*v37 + 16);
  v41 = sub_1D2873788();
  v42 = *(v41 - 8);
  v43 = v42;
  v101 = v39;
  if (v40)
  {
    v44 = v113;
    (*(v42 + 16))(v113, v39 + ((*(v42 + 80) + 32) & ~*(v42 + 80)), v41);
    v45 = 0;
  }

  else
  {
    v45 = 1;
    v44 = v113;
  }

  (*(v43 + 56))(v44, v45, 1, v41);
  v54 = v112;
  sub_1D2872638();
  sub_1D22BD1D0(v44, v27, &qword_1EC6DA528);
  v55 = sub_1D2873CA8();
  v56 = sub_1D2878A08();
  if (os_log_type_enabled(v55, v56))
  {
    v57 = swift_slowAlloc();
    v58 = swift_slowAlloc();
    v117 = v58;
    *v57 = 136380675;
    v59 = v41;
    sub_1D22BD1D0(v27, v107, &qword_1EC6DA528);
    v60 = sub_1D2878118();
    v62 = v61;
    sub_1D22BD238(v27, &qword_1EC6DA528);
    v63 = v60;
    v41 = v59;
    v64 = sub_1D23D7C84(v63, v62, &v117);

    *(v57 + 4) = v64;
    _os_log_impl(&dword_1D226E000, v55, v56, "Prompt error concept: '%{private}s'", v57, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v58);
    MEMORY[0x1D38A3520](v58, -1, -1);
    v65 = v57;
    v44 = v113;
    MEMORY[0x1D38A3520](v65, -1, -1);

    v66 = *(v115 + 8);
    v66(v112, v116);
  }

  else
  {

    sub_1D22BD238(v27, &qword_1EC6DA528);
    v66 = *(v115 + 8);
    v66(v54, v116);
  }

  v67 = v114;
  v68 = v109;
  v69 = v110;
  sub_1D22BD1D0(v44, v114, &qword_1EC6DA528);
  if ((*(v43 + 48))(v67, 1, v41) == 1)
  {
    goto LABEL_21;
  }

  sub_1D22BD1D0(v67, v68, &qword_1EC6DA528);
  if ((*(v43 + 88))(v68, v41) != *MEMORY[0x1E69E0148])
  {
    (*(v43 + 8))(v68, v41);
LABEL_21:
    v86 = v41;
    v87 = v111;
    sub_1D2872638();
    v88 = v101;
    sub_1D2870F68();
    v89 = sub_1D2873CA8();
    v90 = sub_1D2878A08();

    if (os_log_type_enabled(v89, v90))
    {
      v91 = swift_slowAlloc();
      v92 = swift_slowAlloc();
      v117 = v92;
      *v91 = 136380675;
      v93 = MEMORY[0x1D38A0E70](v88, v86);
      v94 = v44;
      v96 = v95;

      v97 = sub_1D23D7C84(v93, v96, &v117);

      *(v91 + 4) = v97;
      _os_log_impl(&dword_1D226E000, v89, v90, "No blocking sub-category for concept in prompt error: %{private}s", v91, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v92);
      MEMORY[0x1D38A3520](v92, -1, -1);
      MEMORY[0x1D38A3520](v91, -1, -1);

      v66(v111, v116);
      v98 = v94;
    }

    else
    {

      v66(v87, v116);
      v98 = v44;
    }

    sub_1D22BD238(v98, &qword_1EC6DA528);
    v67 = v114;
    goto LABEL_25;
  }

  (*(v43 + 96))(v68, v41);
  (*(v105 + 32))(v104, v68, v106);
  v70 = v103;
  sub_1D2872BB8();
  v71 = sub_1D2872BA8();
  v72 = *(v71 - 8);
  if ((*(v72 + 48))(v70, 1, v71) == 1)
  {
LABEL_18:
    v112 = v66;
    v75 = v100;
    sub_1D2872638();
    sub_1D22BD1D0(v44, v69, &qword_1EC6DA528);
    v76 = sub_1D2873CA8();
    v77 = v44;
    v78 = sub_1D2878A08();
    if (os_log_type_enabled(v76, v78))
    {
      v79 = swift_slowAlloc();
      v80 = swift_slowAlloc();
      v117 = v80;
      *v79 = 136380675;
      sub_1D22BD1D0(v69, v107, &qword_1EC6DA528);
      v81 = sub_1D2878118();
      v83 = v82;
      sub_1D22BD238(v69, &qword_1EC6DA528);
      v84 = sub_1D23D7C84(v81, v83, &v117);

      *(v79 + 4) = v84;
      v70 = v103;
      _os_log_impl(&dword_1D226E000, v76, v78, "No blocking sub-category for rejection category of generic entity in prompt error: '%{private}s'", v79, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v80);
      MEMORY[0x1D38A3520](v80, -1, -1);
      MEMORY[0x1D38A3520](v79, -1, -1);

      v67 = v114;
      (v112)(v75, v116);
      (*(v105 + 8))(v104, v106);
      v85 = v113;
    }

    else
    {

      sub_1D22BD238(v69, &qword_1EC6DA528);
      (v112)(v75, v116);
      (*(v105 + 8))(v104, v106);
      v85 = v77;
    }

    sub_1D22BD238(v85, &qword_1EC6DA528);
    sub_1D22BD238(v70, &qword_1EC6DA4E0);
LABEL_25:
    sub_1D22BD238(v67, &qword_1EC6DA528);
    return 128;
  }

  v73 = v102;
  sub_1D22BD1D0(v70, v102, &qword_1EC6DA4E0);
  v74 = (*(v72 + 88))(v73, v71);
  if (v74 != *MEMORY[0x1E69DFD38] && v74 != *MEMORY[0x1E69DFD30])
  {
    (*(v72 + 8))(v102, v71);
    goto LABEL_18;
  }

  (*(v105 + 8))(v104, v106);
  sub_1D22BD238(v44, &qword_1EC6DA528);
  sub_1D22BD238(v70, &qword_1EC6DA4E0);
  sub_1D22BD238(v67, &qword_1EC6DA528);
  return 131;
}

uint64_t sub_1D2507404(uint64_t a1)
{
  result = sub_1D2508008(&qword_1EC6DA4F0, MEMORY[0x1E69DFCA8]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D250745C()
{
  v1 = sub_1D2873CB8();
  v86 = *(v1 - 8);
  v87 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v88 = &v76 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v81 = &v76 - v4;
  MEMORY[0x1EEE9AC00](v5);
  v79 = &v76 - v6;
  v80 = sub_1D2872B48();
  v83 = *(v80 - 8);
  MEMORY[0x1EEE9AC00](v80);
  v82 = &v76 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1D2872B58();
  v85 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v77 = &v76 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v78 = &v76 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v76 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v76 - v16;
  v18 = sub_1D2872C98();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v84 = &v76 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1EEE9AC00](v21);
  v24 = &v76 - v23;
  v25 = *(v19 + 16);
  v25(&v76 - v23, v0, v18, v22);
  if ((*(v19 + 88))(v24, v18) == *MEMORY[0x1E69DFDC8])
  {
    (*(v19 + 96))(v24, v18);

    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DCDA0);
    v27 = v85;
    (*(v85 + 32))(v17, &v24[*(v26 + 48)], v8);
    v28 = *(v27 + 16);
    v28(v14, v17, v8);
    v29 = (*(v27 + 88))(v14, v8);
    v30 = v8;
    if (v29 == *MEMORY[0x1E69DFD00])
    {
      (*(v27 + 96))(v14, v8);
      v31 = *v14;
      if (*(*v14 + 16))
      {
        v88 = v17;
        v32 = v80;
        (*(v83 + 2))(v82, v31 + ((*(v83 + 80) + 32) & ~*(v83 + 80)), v80);

        v33 = [objc_opt_self() instance];
        sub_1D2872B38();
        v34 = sub_1D2878068();

        v35 = [v33 decodeFromP1_];

        v36 = sub_1D28780A8();
        v38 = v37;

        v39 = v79;
        sub_1D2872638();
        sub_1D2870F68();
        v40 = sub_1D2873CA8();
        v41 = sub_1D2878A08();

        if (os_log_type_enabled(v40, v41))
        {
          v42 = swift_slowAlloc();
          v43 = swift_slowAlloc();
          v89[0] = v43;
          *v42 = 136380675;
          *(v42 + 4) = sub_1D23D7C84(v36, v38, v89);
          _os_log_impl(&dword_1D226E000, v40, v41, "Unsafe signal: %{private}s", v42, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v43);
          MEMORY[0x1D38A3520](v43, -1, -1);
          MEMORY[0x1D38A3520](v42, -1, -1);
        }

        (*(v86 + 8))(v39, v87);
        v44 = v88;
        if (v36 == 0x615F797465666173 && v38 == 0xEE00726574706164 || (v45 = sub_1D2879618(), (v45 & 1) != 0))
        {

          (*(v83 + 1))(v82, v32);
          (*(v27 + 8))(v44, v30);
          return 160;
        }

        v89[0] = v36;
        v89[1] = v38;
        MEMORY[0x1EEE9AC00](v45);
        *(&v76 - 2) = v89;
        v74 = sub_1D286430C(sub_1D234ABBC, (&v76 - 4), &unk_1F4DBDD10);
        swift_arrayDestroy();
        if (v74)
        {

          (*(v83 + 1))(v82, v32);
          (*(v27 + 8))(v88, v30);
          return 161;
        }

        v75 = sub_1D2878288();

        (*(v83 + 1))(v82, v32);
        (*(v27 + 8))(v88, v30);
        if (v75)
        {
          return 161;
        }
      }

      else
      {
        (*(v27 + 8))(v17, v8);
      }
    }

    else
    {
      if (v29 == *MEMORY[0x1E69DFD08])
      {
        (*(v27 + 8))(v17, v8);
        return 129;
      }

      v84 = v14;
      v59 = v81;
      sub_1D2872638();
      v60 = v78;
      v28(v78, v17, v8);
      v61 = sub_1D2873CA8();
      v62 = sub_1D2878A08();
      if (os_log_type_enabled(v61, v62))
      {
        v63 = swift_slowAlloc();
        v88 = v17;
        v64 = v63;
        v65 = swift_slowAlloc();
        v89[0] = v65;
        *v64 = 136380675;
        v28(v77, v60, v8);
        v66 = sub_1D2878118();
        v67 = v60;
        v68 = v66;
        v69 = v27;
        v71 = v70;
        v72 = *(v69 + 8);
        v72(v67, v30);
        v73 = sub_1D23D7C84(v68, v71, v89);

        *(v64 + 4) = v73;
        _os_log_impl(&dword_1D226E000, v61, v62, "No blocking sub-category for rejection reason: %{private}s", v64, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v65);
        MEMORY[0x1D38A3520](v65, -1, -1);
        MEMORY[0x1D38A3520](v64, -1, -1);

        (*(v86 + 8))(v81, v87);
        v72(v88, v30);
      }

      else
      {

        v72 = *(v27 + 8);
        v72(v60, v30);
        (*(v86 + 8))(v59, v87);
        v72(v17, v30);
      }

      v72(v84, v30);
    }
  }

  else
  {
    sub_1D2872638();
    v47 = v84;
    (v25)(v84, v0, v18);
    v48 = sub_1D2873CA8();
    v49 = sub_1D2878A08();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      v83 = v50;
      v85 = swift_slowAlloc();
      v89[0] = v85;
      *v50 = 136380675;
      sub_1D2508008(&qword_1EC6DCD98, MEMORY[0x1E69DFDD0]);
      v51 = sub_1D2879748();
      v53 = v52;
      v54 = *(v19 + 8);
      v54(v47, v18);
      v55 = sub_1D23D7C84(v51, v53, v89);

      v56 = v83;
      *(v83 + 1) = v55;
      v57 = v56;
      _os_log_impl(&dword_1D226E000, v48, v49, "No blocking sub-category for text sanitizer error: %{private}s", v56, 0xCu);
      v58 = v85;
      __swift_destroy_boxed_opaque_existential_0(v85);
      MEMORY[0x1D38A3520](v58, -1, -1);
      MEMORY[0x1D38A3520](v57, -1, -1);
    }

    else
    {

      v54 = *(v19 + 8);
      v54(v47, v18);
    }

    (*(v86 + 8))(v88, v87);
    v54(v24, v18);
  }

  return 128;
}

uint64_t sub_1D2507FB0(uint64_t a1)
{
  result = sub_1D2508008(&qword_1EC6DCD98, MEMORY[0x1E69DFDD0]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D2508008(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1D2508078()
{
  os_unfair_lock_lock((v0 + 16));
  v1 = *(v0 + 24);
  *(v0 + 40) = 1;
  v2 = *(v0 + 32);
  if (v1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = sub_1D22D5EBC;
  }

  else
  {
    v4 = 0;
  }

  *(v0 + 24) = 0;
  *(v0 + 32) = 0;
  sub_1D23415B4(v1, v2);
  sub_1D22A576C(v1);
  os_unfair_lock_unlock((v0 + 16));
  if (v1)
  {
    v5 = sub_1D2870F78();
    (v4)(v5);
    sub_1D22A576C(v4);

    sub_1D22A576C(v4);
  }
}

uint64_t _s23ImagePlaygroundInternal34gp_withCheckedThrowingContinuation9isolation8function_xScA_pSgYi_SSyAA14GPContinuationVyxq_GXEtYaq_YKs5ErrorR_r0_lF(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 104) = v15;
  *(v8 + 88) = v14;
  *(v8 + 72) = a7;
  *(v8 + 80) = a8;
  *(v8 + 56) = a5;
  *(v8 + 64) = a6;
  *(v8 + 40) = a3;
  *(v8 + 48) = a4;
  *(v8 + 24) = a1;
  *(v8 + 32) = a2;
  if (a2)
  {
    swift_getObjectType();
    v9 = sub_1D28784F8();
    v11 = v10;
  }

  else
  {
    v9 = 0;
    v11 = 0;
  }

  *(v8 + 112) = v9;
  *(v8 + 120) = v11;

  return MEMORY[0x1EEE6DFA0](sub_1D2508228, v9, v11);
}

uint64_t sub_1D2508228()
{
  v1 = *(v0 + 96);
  v2 = swift_task_alloc();
  *(v0 + 128) = v2;
  v3 = *(v0 + 64);
  *(v2 + 16) = *(v0 + 80);
  *(v2 + 32) = v1;
  *(v2 + 40) = v3;
  v4 = swift_task_alloc();
  *(v0 + 136) = v4;
  *v4 = v0;
  v4[1] = sub_1D250831C;
  v5 = *(v0 + 80);
  v6 = *(v0 + 48);
  v7 = *(v0 + 56);
  v8 = *(v0 + 32);
  v9 = *(v0 + 40);
  v10 = *(v0 + 24);

  return (sub_1D25089E0)(v10, v8, v9, v6, v7, sub_1D25086E4, v2, v5);
}

uint64_t sub_1D250831C()
{
  v2 = *v1;
  v2[18] = v0;

  if (v0)
  {
    v3 = v2[14];
    v4 = v2[15];

    return MEMORY[0x1EEE6DFA0](sub_1D2508454, v3, v4);
  }

  else
  {

    v5 = v2[1];

    return v5();
  }
}

uint64_t sub_1D2508454()
{
  v1 = v0[18];

  v0[2] = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D94B0);
  swift_dynamicCast();
  swift_willThrowTypedImpl();

  v3 = v0[1];

  return v3();
}

uint64_t sub_1D2508528(uint64_t a1, void (*a2)(void *), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v20 = a2;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6D94B0);
  v10 = sub_1D2878528();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v19 - v13;
  (*(v11 + 16))(&v19 - v13, a1, v10, v12);
  v15 = (*(v11 + 80) + 40) & ~*(v11 + 80);
  v16 = swift_allocObject();
  *(v16 + 2) = a4;
  *(v16 + 3) = a5;
  *(v16 + 4) = a6;
  (*(v11 + 32))(&v16[v15], v14, v10);
  v17 = swift_allocObject();
  v17[2] = a4;
  v17[3] = a5;
  v17[4] = a6;
  v17[5] = sub_1D2508CF0;
  v17[6] = v16;
  v21[0] = sub_1D2508DA8;
  v21[1] = v17;
  v20(v21);
}

uint64_t sub_1D25086F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6D94B0);
  v6 = sub_1D2878528();
  return sub_1D2508778(a1, v6, a4);
}

uint64_t sub_1D2508778(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v23[1] = a2;
  v5 = *(a2 + 16);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1D2879848();
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = v23 - v16;
  (*(v18 + 16))(v23 - v16, a1, v14, v15);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v19 = *(v10 + 32);
    v19(v13, v17, a3);
    v20 = swift_allocError();
    v19(v21, v13, a3);
    v23[3] = v20;
    return sub_1D2878508();
  }

  else
  {
    (*(v6 + 32))(v8, v17, v5);
    return sub_1D2878518();
  }
}

uint64_t _s23ImagePlaygroundInternal14GPContinuationV7handlerACyxq_Gys6ResultOyxq_GnYuYbc_tcfC@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t sub_1D25089E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v17 = swift_task_alloc();
  *(v8 + 16) = v17;
  *v17 = v8;
  v17[1] = sub_1D22BC8FC;

  return MEMORY[0x1EEE6DE38](a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t sub_1D2508ACC()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1D2508B08(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_1D2508B50(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1D2508BA4()
{
  sub_1D2508CC0(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t sub_1D2508C00(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 17))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_1D2508C5C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_1D2508CF0(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6D94B0);
  v5 = *(sub_1D2878528() - 8);
  v6 = v1 + ((*(v5 + 80) + 40) & ~*(v5 + 80));

  return sub_1D25086F4(a1, v6, v3, v4);
}

uint64_t sub_1D2508DA8(uint64_t a1)
{
  (*(v1 + 40))();
  v3 = sub_1D2879848();
  v4 = *(*(v3 - 8) + 8);

  return v4(a1, v3);
}

void sub_1D2508EC0(void *a1, double a2, double a3)
{
  v7 = MEMORY[0x1E69E7D40];
  v8 = *MEMORY[0x1E69E7D40] & *v3;
  v9 = *(v8 + qword_1EC6D8298);
  v10 = *(v8 + qword_1EC6D8298 + 8);
  v16.receiver = v3;
  v16.super_class = type metadata accessor for LandscapeOnlyContainerView.ViewController();
  objc_msgSendSuper2(&v16, sel_viewWillTransitionToSize_withTransitionCoordinator_, a1, a2, a3);
  v11 = *((*v7 & *v3) + qword_1EC6D8298 + 16);
  if (a3 < a2 != *(v3 + v11))
  {
    *(v3 + v11) = a3 < a2;
    if (*(v3 + *((*v7 & *v3) + qword_1EC6D8298 + 16)) == 1)
    {
      sub_1D25095B8(0);
    }

    else
    {
      v12 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v13 = swift_allocObject();
      v13[2] = v9;
      v13[3] = v10;
      v13[4] = v12;
      v15[4] = sub_1D250A5A8;
      v15[5] = v13;
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 1107296256;
      v15[2] = sub_1D2509148;
      v15[3] = &block_descriptor_40;
      v14 = _Block_copy(v15);

      [a1 animateAlongsideTransition:0 completion:v14];
      _Block_release(v14);
    }
  }
}

void sub_1D25090F0()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_1D25095B8(1);
  }
}

uint64_t sub_1D2509148(uint64_t a1)
{
  v1 = *(a1 + 32);
  sub_1D2870F78();
  v2 = swift_unknownObjectRetain();
  v1(v2);

  return swift_unknownObjectRelease();
}

void sub_1D25091A8(void *a1, double a2, double a3, uint64_t a4, void *a5)
{
  swift_unknownObjectRetain();
  v9 = a1;
  sub_1D2508EC0(a5, a2, a3);
  swift_unknownObjectRelease();
}

id sub_1D2509228()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LandscapeOnlyContainerView.ViewController();
  objc_msgSendSuper2(&v2, sel_viewDidLoad);
  return sub_1D25095B8(0);
}

void sub_1D25092AC(void *a1)
{
  v1 = a1;
  sub_1D2509228();
}

void sub_1D25092F4(void *a1, uint64_t a2, char a3)
{
  v4 = a1;
  sub_1D2509350(a3, &selRef_viewWillAppear_);
}

void sub_1D2509350(char a1, SEL *a2)
{
  v5.receiver = v2;
  v5.super_class = type metadata accessor for LandscapeOnlyContainerView.ViewController();
  objc_msgSendSuper2(&v5, *a2, a1 & 1);
  sub_1D25094DC();
}

void sub_1D25093E8(void *a1, uint64_t a2, char a3)
{
  v4 = a1;
  sub_1D2509350(a3, &selRef_viewIsAppearing_);
}

void sub_1D25094DC()
{
  v1 = [v0 traitCollection];
  v2 = [v1 verticalSizeClass];

  v3 = *((*MEMORY[0x1E69E7D40] & *v0) + qword_1EC6D8298 + 16);
  if ((v2 == 1) != *(v0 + v3))
  {
    *(v0 + v3) = v2 == 1;

    sub_1D25095B8(1);
  }
}

id sub_1D25095B8(char a1)
{
  v3 = *(v1 + *((*MEMORY[0x1E69E7D40] & *v1) + qword_1EC6D8298 + 16));
  result = [v1 view];
  if (result)
  {
    v5 = result;
    MEMORY[0x1EEE9AC00](result);
    v10[2] = v6;
    v11 = v3;
    v7 = swift_allocObject();
    *(v7 + 16) = v5;
    *(v7 + 24) = v3;
    v8 = swift_allocObject();
    *(v8 + 16) = v5;
    *(v8 + 24) = v3;
    v9 = v5;
    sub_1D2509730(sub_1D250A4AC, v10, sub_1D250A4C0, v7, sub_1D250A4E4, v8, a1 & 1);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D2509730(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  if (a7 & 1) != 0 && (v13 = objc_opt_self(), ([v13 areAnimationsEnabled]))
  {
    v14 = swift_allocObject();
    *(v14 + 16) = a1;
    *(v14 + 24) = a2;
    v15 = swift_allocObject();
    *(v15 + 16) = sub_1D22D5EBC;
    *(v15 + 24) = v14;
    v31 = sub_1D22D79AC;
    v32 = v15;
    v27 = MEMORY[0x1E69E9820];
    v28 = 1107296256;
    v29 = sub_1D2509B48;
    v30 = &block_descriptor_19;
    v16 = _Block_copy(&v27);
    sub_1D2870F78();

    [v13 performWithoutAnimation_];
    _Block_release(v16);
    LOBYTE(v16) = swift_isEscapingClosureAtFileLocation();

    if ((v16 & 1) == 0)
    {
      v18 = swift_allocObject();
      *(v18 + 16) = a3;
      *(v18 + 24) = a4;
      v31 = sub_1D22D79AC;
      v32 = v18;
      v27 = MEMORY[0x1E69E9820];
      v28 = 1107296256;
      v29 = sub_1D23DFBA8;
      v30 = &block_descriptor_25;
      v19 = _Block_copy(&v27);
      sub_1D2870F78();

      v20 = swift_allocObject();
      *(v20 + 16) = a5;
      *(v20 + 24) = a6;
      v31 = sub_1D250A574;
      v32 = v20;
      v27 = MEMORY[0x1E69E9820];
      v28 = 1107296256;
      v29 = sub_1D27BC4E0;
      v30 = &block_descriptor_31;
      v21 = _Block_copy(&v27);
      sub_1D2870F78();

      [v13 animateWithDuration:v19 animations:v21 completion:0.3];
      _Block_release(v21);
      _Block_release(v19);
    }
  }

  else
  {
    v22 = objc_opt_self();
    v23 = swift_allocObject();
    v23[2] = a1;
    v23[3] = a2;
    v23[4] = a3;
    v23[5] = a4;
    v23[6] = a5;
    v23[7] = a6;
    v24 = swift_allocObject();
    *(v24 + 16) = sub_1D250A500;
    *(v24 + 24) = v23;
    v31 = sub_1D22D5EBC;
    v32 = v24;
    v27 = MEMORY[0x1E69E9820];
    v28 = 1107296256;
    v29 = sub_1D2509B48;
    v30 = &block_descriptor_20;
    v25 = _Block_copy(&v27);
    sub_1D2870F78();
    sub_1D2870F78();
    sub_1D2870F78();

    [v22 performWithoutAnimation_];
    _Block_release(v25);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return result;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_1D2509BD0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LandscapeOnlyContainerView.ViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1D2509C6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDDB778](a1, a2, a3, WitnessTable);
}

uint64_t sub_1D2509CE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDDB740](a1, a2, a3, WitnessTable);
}

void sub_1D2509D64()
{
  swift_getWitnessTable();
  sub_1D2876218();
  __break(1u);
}

void *sub_1D2509DA4(uint64_t a1, char a2)
{
  v4 = MEMORY[0x1E69E7D40];
  v5 = MEMORY[0x1EEE9AC00](a1);
  *(v2 + *(v7 + 16)) = 0;
  (*(v8 + 16))(&v10 - v6, v5);
  result = sub_1D28759F8();
  *(result + *((*v4 & *result) + qword_1EC6D8298 + 16)) = a2;
  return result;
}

void *sub_1D2509F40(uint64_t a1)
{
  v2 = sub_1D2875E18();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v32 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0DB0);
  v6 = v5 - 8;
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v32 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D99B8);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v33 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v32 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v32 - v15;
  v18 = MEMORY[0x1EEE9AC00](v17);
  v36 = v20;
  v37 = a1;
  v34 = &v32 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = v21;
  (*(v21 + 16))(v18);
  sub_1D24CC0C4(v16);
  (*(v3 + 104))(v13, *MEMORY[0x1E697FF38], v2);
  (*(v3 + 56))(v13, 0, 1, v2);
  v22 = *(v6 + 56);
  sub_1D24B17B0(v16, v8);
  sub_1D24B17B0(v13, &v8[v22]);
  v23 = *(v3 + 48);
  if (v23(v8, 1, v2) != 1)
  {
    sub_1D24B17B0(v8, v33);
    if (v23(&v8[v22], 1, v2) != 1)
    {
      v25 = v32;
      (*(v3 + 32))(v32, &v8[v22], v2);
      sub_1D24CFD60();
      v26 = v33;
      v24 = sub_1D2877F98();
      v27 = *(v3 + 8);
      v27(v25, v2);
      sub_1D22BD238(v13, &qword_1EC6D99B8);
      sub_1D22BD238(v16, &qword_1EC6D99B8);
      v27(v26, v2);
      sub_1D22BD238(v8, &qword_1EC6D99B8);
      goto LABEL_8;
    }

    sub_1D22BD238(v13, &qword_1EC6D99B8);
    sub_1D22BD238(v16, &qword_1EC6D99B8);
    (*(v3 + 8))(v33, v2);
    goto LABEL_6;
  }

  sub_1D22BD238(v13, &qword_1EC6D99B8);
  sub_1D22BD238(v16, &qword_1EC6D99B8);
  if (v23(&v8[v22], 1, v2) != 1)
  {
LABEL_6:
    sub_1D22BD238(v8, &qword_1EC6E0DB0);
    v24 = 0;
    goto LABEL_8;
  }

  sub_1D22BD238(v8, &qword_1EC6D99B8);
  v24 = 1;
LABEL_8:
  v28 = v36;
  type metadata accessor for LandscapeOnlyContainerView.ViewController();
  v29 = v34;
  v30 = sub_1D2509EE8(v34, v24 & 1);
  (*(v35 + 8))(v29, v28);
  return v30;
}

void sub_1D250A418()
{
  *(v0 + *((*MEMORY[0x1E69E7D40] & *v0) + qword_1EC6D8298 + 16)) = 0;
  sub_1D2879398();
  __break(1u);
}

id sub_1D250A4C0()
{
  v1 = 0.0;
  if (*(v0 + 24))
  {
    v1 = 1.0;
  }

  return [*(v0 + 16) setAlpha_];
}

uint64_t sub_1D250A500()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 48);
  v3 = (*(v0 + 16))();
  v4 = v1(v3);
  return v2(v4);
}

uint64_t block_copy_helper_20(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1D2870F78();
}

uint64_t sub_1D250A574(uint64_t result)
{
  if (result)
  {
    return (*(v1 + 16))();
  }

  return result;
}

void sub_1D250A5B4()
{
  sub_1D22EAE8C();
  if (v0 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1D250A63C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v6 = *(sub_1D2875E18() - 8);
  v7 = *(*(a3 + 16) - 8);
  v8 = *(v7 + 84);
  v9 = *(v7 + 80);
  if (v8 <= 0xFE)
  {
    v10 = 254;
  }

  else
  {
    v10 = *(v7 + 84);
  }

  if (*(v6 + 84))
  {
    v11 = *(v6 + 64);
  }

  else
  {
    v11 = *(v6 + 64) + 1;
  }

  if (v11 <= 8)
  {
    v11 = 8;
  }

  if (!a2)
  {
    return 0;
  }

  v12 = v11 + v9 + 1;
  if (a2 <= v10)
  {
    goto LABEL_33;
  }

  v13 = (v12 & ~v9) + *(v7 + 64);
  v14 = 8 * v13;
  if (v13 <= 3)
  {
    v17 = ((a2 - v10 + ~(-1 << v14)) >> v14) + 1;
    if (HIWORD(v17))
    {
      v15 = *(a1 + v13);
      if (!v15)
      {
        goto LABEL_33;
      }

      goto LABEL_20;
    }

    if (v17 > 0xFF)
    {
      v15 = *(a1 + v13);
      if (!*(a1 + v13))
      {
        goto LABEL_33;
      }

      goto LABEL_20;
    }

    if (v17 < 2)
    {
LABEL_33:
      if (v8 > 0xFE)
      {
        v22 = *(v7 + 48);

        return v22((a1 + v12) & ~v9);
      }

      else
      {
        v21 = *(a1 + v11);
        if (v21 >= 2)
        {
          return (v21 ^ 0xFF) + 1;
        }

        else
        {
          return 0;
        }
      }
    }
  }

  v15 = *(a1 + v13);
  if (!*(a1 + v13))
  {
    goto LABEL_33;
  }

LABEL_20:
  v18 = (v15 - 1) << v14;
  if (v13 > 3)
  {
    v18 = 0;
  }

  if (v13)
  {
    if (v13 <= 3)
    {
      v19 = v13;
    }

    else
    {
      v19 = 4;
    }

    if (v19 > 2)
    {
      if (v19 == 3)
      {
        v20 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v20 = *a1;
      }
    }

    else if (v19 == 1)
    {
      v20 = *a1;
    }

    else
    {
      v20 = *a1;
    }
  }

  else
  {
    v20 = 0;
  }

  return v10 + (v20 | v18) + 1;
}

void sub_1D250A86C(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = *(sub_1D2875E18() - 8);
  v9 = *(v8 + 84);
  v10 = *(v8 + 64);
  v11 = *(*(a4 + 16) - 8);
  v12 = *(v11 + 84);
  v13 = *(v11 + 80);
  if (v12 <= 0xFE)
  {
    v14 = 254;
  }

  else
  {
    v14 = *(v11 + 84);
  }

  if (v9)
  {
    v15 = v10;
  }

  else
  {
    v15 = v10 + 1;
  }

  if (v15 <= 8)
  {
    v15 = 8;
  }

  v16 = v15 + v13 + 1;
  v17 = (v16 & ~v13) + *(v11 + 64);
  if (a3 <= v14)
  {
    v18 = 0;
  }

  else if (v17 <= 3)
  {
    v21 = ((a3 - v14 + ~(-1 << (8 * v17))) >> (8 * v17)) + 1;
    if (HIWORD(v21))
    {
      v18 = 4;
    }

    else
    {
      if (v21 < 0x100)
      {
        v22 = 1;
      }

      else
      {
        v22 = 2;
      }

      if (v21 >= 2)
      {
        v18 = v22;
      }

      else
      {
        v18 = 0;
      }
    }
  }

  else
  {
    v18 = 1;
  }

  if (v14 < a2)
  {
    v19 = ~v14 + a2;
    if (v17 < 4)
    {
      v20 = (v19 >> (8 * v17)) + 1;
      if (v17)
      {
        v23 = v19 & ~(-1 << (8 * v17));
        bzero(a1, v17);
        if (v17 != 3)
        {
          if (v17 == 2)
          {
            *a1 = v23;
            if (v18 > 1)
            {
LABEL_60:
              if (v18 == 2)
              {
                *&a1[v17] = v20;
              }

              else
              {
                *&a1[v17] = v20;
              }

              return;
            }
          }

          else
          {
            *a1 = v19;
            if (v18 > 1)
            {
              goto LABEL_60;
            }
          }

          goto LABEL_57;
        }

        *a1 = v23;
        a1[2] = BYTE2(v23);
      }

      if (v18 > 1)
      {
        goto LABEL_60;
      }
    }

    else
    {
      bzero(a1, v17);
      *a1 = v19;
      v20 = 1;
      if (v18 > 1)
      {
        goto LABEL_60;
      }
    }

LABEL_57:
    if (v18)
    {
      a1[v17] = v20;
    }

    return;
  }

  if (v18 > 1)
  {
    if (v18 != 2)
    {
      *&a1[v17] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_36;
    }

    *&a1[v17] = 0;
LABEL_35:
    if (!a2)
    {
      return;
    }

    goto LABEL_36;
  }

  if (!v18)
  {
    goto LABEL_35;
  }

  a1[v17] = 0;
  if (!a2)
  {
    return;
  }

LABEL_36:
  if (v12 > 0xFE)
  {
    v24 = *(v11 + 56);

    v24(&a1[v16] & ~v13, a2);
  }

  else if (a2 > 0xFE)
  {
    v25 = (v15 + 1);
    if (v25 <= 3)
    {
      v26 = ~(-1 << (8 * (v15 + 1)));
    }

    else
    {
      v26 = -1;
    }

    if (v15 != -1)
    {
      v27 = v26 & (a2 - 255);
      if (v25 <= 3)
      {
        v28 = v15 + 1;
      }

      else
      {
        v28 = 4;
      }

      bzero(a1, v25);
      if (v28 > 2)
      {
        if (v28 == 3)
        {
          *a1 = v27;
          a1[2] = BYTE2(v27);
        }

        else
        {
          *a1 = v27;
        }
      }

      else if (v28 == 1)
      {
        *a1 = v27;
      }

      else
      {
        *a1 = v27;
      }
    }
  }

  else
  {
    a1[v15] = -a2;
  }
}

uint64_t PhotoAssetView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v17[0] = a1;
  v3 = type metadata accessor for PhotoAssetView();
  v4 = v3 - 8;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DCE40);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v17 - v8;
  sub_1D250AF68(v2, v17 - v8);
  sub_1D250D37C(v2, v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PhotoAssetView);
  v10 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v11 = swift_allocObject();
  sub_1D250D314(v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v10, type metadata accessor for PhotoAssetView);
  v12 = &v9[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DCE50) + 36)];
  *v12 = sub_1D250BDB4;
  v12[1] = v11;
  v12[2] = 0;
  v12[3] = 0;
  sub_1D250D37C(v2, v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PhotoAssetView);
  v13 = swift_allocObject();
  sub_1D250D314(v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v10, type metadata accessor for PhotoAssetView);
  v14 = &v9[*(v7 + 36)];
  *v14 = 0;
  *(v14 + 1) = 0;
  *(v14 + 2) = sub_1D250C0C4;
  *(v14 + 3) = v13;
  v17[1] = *(v2 + *(v4 + 32));
  sub_1D250D37C(v2, v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PhotoAssetView);
  v15 = swift_allocObject();
  sub_1D250D314(v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v10, type metadata accessor for PhotoAssetView);
  sub_1D2870F78();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE550);
  sub_1D250C440(&qword_1EC6DCE58, &qword_1EC6DCE40, &unk_1D288F6E0, sub_1D250C410);
  sub_1D22BB9D8(qword_1ED8A4DB0, &unk_1EC6DE550);
  sub_1D2876F58();

  return sub_1D22BD238(v9, &qword_1EC6DCE40);
}

uint64_t type metadata accessor for PhotoAssetView()
{
  result = qword_1EC6DCF10;
  if (!qword_1EC6DCF10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D250AF68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v24[1] = a2;
  v24[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DCF50);
  MEMORY[0x1EEE9AC00](v24[0]);
  v4 = v24 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DCE90);
  MEMORY[0x1EEE9AC00](v5);
  v7 = v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v24 - v9;
  v11 = type metadata accessor for PhotoAssetView();
  v12 = *(a1 + v11[7]);
  v13 = *(a1 + v11[6]);
  v24[2] = sub_1D250D10C();
  v24[3] = &protocol witness table for PHAsset;
  swift_getKeyPath();
  if (v12)
  {
    v10 = v7;
    v25 = v13;
    sub_1D22BB9D8(&qword_1EC6DAE20, &unk_1EC6DE550);
    sub_1D28719E8();

    v14 = *(*v13 + 192);
    swift_beginAccess();
    v15 = *(v13 + v14);
    if (*(v15 + 16) && (v16 = sub_1D25D0C1C(1), (v17 & 1) != 0))
    {
      v18 = *(*(v15 + 56) + v16);
    }

    else
    {
      v18 = 0;
    }
  }

  else
  {
    v25 = v13;
    sub_1D22BB9D8(&qword_1EC6DAE20, &unk_1EC6DE550);
    sub_1D28719E8();

    v19 = *(*v13 + 192);
    swift_beginAccess();
    v20 = *(v13 + v19);
    if (*(v20 + 16) && (v21 = sub_1D25D0C1C(0), (v22 & 1) != 0))
    {
      v18 = *(*(v20 + 56) + v21);
    }

    else
    {
      v18 = 0;
    }
  }

  sub_1D250B2BC(v18, a1 + v11[10], v10);
  sub_1D22BD1D0(v10, v4, &qword_1EC6DCE90);
  swift_storeEnumTagMultiPayload();
  sub_1D250C5CC();
  sub_1D2875AF8();
  return sub_1D22BD238(v10, &qword_1EC6DCE90);
}

uint64_t sub_1D250B2BC@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  LODWORD(v46) = a1;
  v51 = a3;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DCF58);
  MEMORY[0x1EEE9AC00](v50);
  v47 = (&v46 - v4);
  v5 = sub_1D28771B8();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DCEA0);
  MEMORY[0x1EEE9AC00](v49);
  v10 = &v46 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE5A0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v46 - v12;
  v14 = type metadata accessor for PlaygroundImage();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v46 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DCE90);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v48 = &v46 - v19;
  sub_1D22BD1D0(a2, &v56, &qword_1EC6DCF60);
  if (*(&v57 + 1))
  {
    sub_1D227268C(&v56, v60);
  }

  else
  {
    v61 = MEMORY[0x1E6981EF8];
    v62 = sub_1D250D594();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DCE48);
  v20 = v52;
  sub_1D2877308();
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_1D22BD238(v13, &unk_1EC6DE5A0);
    if (v46 == 3)
    {
      v53 = sub_1D2877198();
      v54 = 0;
      memset(v55, 0, sizeof(v55));
    }

    else
    {
      v33 = __swift_project_boxed_opaque_existential_1(v60, v61);
      v34 = MEMORY[0x1EEE9AC00](v33);
      (*(v36 + 16))(&v46 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0), v34);
      v37 = sub_1D2877608();
      v38 = [objc_opt_self() systemFillColor];
      v39 = sub_1D2877128();
      if (*(v52 + *(type metadata accessor for PhotoAssetView() + 36)))
      {
        v40 = 257;
      }

      else
      {
        v40 = 1;
      }

      v53 = v37;
      v54 = v39;
      *v55 = xmmword_1D288F6D0;
      *&v55[16] = v40;
      v55[18] = 1;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DCEF8);
    sub_1D250C934();
    sub_1D2875AF8();
    v41 = v57;
    v42 = v58;
    v43 = v59;
    v32 = v48;
    v44 = v47;
    *v47 = v56;
    v44[1] = v41;
    *(v44 + 16) = v42;
    *(v44 + 34) = v43;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DCEE8);
    sub_1D250C658();
    sub_1D250C8A8();
    sub_1D2875AF8();
  }

  else
  {
    sub_1D250D314(v13, v17, type metadata accessor for PlaygroundImage);
    sub_1D262D4E8();
    sub_1D2877188();
    (*(v6 + 104))(v8, *MEMORY[0x1E6981630], v5);
    v46 = sub_1D2877228();

    (*(v6 + 8))(v8, v5);
    v21 = *(v20 + *(type metadata accessor for PhotoAssetView() + 36));
    v22 = __swift_project_boxed_opaque_existential_1(v60, v61);
    v23 = MEMORY[0x1EEE9AC00](v22);
    (*(v25 + 16))(&v46 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0), v23);
    v26 = sub_1D2877608();
    v27 = &v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DCEB0) + 36)];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DCED8);
    sub_1D2875228();
    v28 = __swift_project_boxed_opaque_existential_1(v60, v61);
    v29 = MEMORY[0x1EEE9AC00](v28);
    (*(v31 + 16))(&v46 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0), v29);
    *v27 = sub_1D2877608();
    v27[8] = 0;
    *v10 = v46;
    *(v10 + 1) = 0;
    v10[16] = 1;
    v10[17] = v21;
    *(v10 + 3) = v26;
    *(v10 + 16) = 256;
    v10[*(v49 + 36)] = 1;
    sub_1D22BD1D0(v10, v47, &qword_1EC6DCEA0);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DCEE8);
    sub_1D250C658();
    sub_1D250C8A8();
    v32 = v48;
    sub_1D2875AF8();
    sub_1D22BD238(v10, &qword_1EC6DCEA0);
    sub_1D23D4DFC(v17);
  }

  sub_1D250D5E8(v32, v51);
  return __swift_destroy_boxed_opaque_existential_0(v60);
}

uint64_t sub_1D250BB38(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE5A0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v18 - v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v18 - v9;
  v11 = type metadata accessor for PlaygroundImage();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for PhotoAssetView();
  v16 = *(a1 + *(v15 + 24));
  sub_1D270C724(v16 + *(*v16 + 160), *(a1 + *(v15 + 28)), v10);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_1D22BD238(v10, &unk_1EC6DE5A0);
    return sub_1D250BDCC();
  }

  else
  {
    sub_1D250D314(v10, v14, type metadata accessor for PlaygroundImage);
    sub_1D250D37C(v14, v7, type metadata accessor for PlaygroundImage);
    (*(v12 + 56))(v7, 0, 1, v11);
    sub_1D22BD1D0(v7, v4, &unk_1EC6DE5A0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DCE48);
    sub_1D2877318();
    sub_1D22BD238(v7, &unk_1EC6DE5A0);
    return sub_1D23D4DFC(v14);
  }
}

uint64_t sub_1D250BDCC()
{
  v1 = v0;
  v2 = type metadata accessor for PhotoAssetView();
  v3 = v2 - 8;
  v4 = *(v2 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8E60);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v20 - v8;
  v10 = (v1 + *(v3 + 28));
  v11 = *v10;
  v12 = v10[1];
  v22 = *v10;
  v23 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DCF48);
  sub_1D2877308();
  if (v21)
  {
    sub_1D28786B8();
  }

  v13 = sub_1D28785F8();
  (*(*(v13 - 8) + 56))(v9, 1, 1, v13);
  sub_1D250D37C(v1, &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PhotoAssetView);
  sub_1D2878568();
  v14 = sub_1D2878558();
  v15 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v16 = swift_allocObject();
  v17 = MEMORY[0x1E69E85E0];
  *(v16 + 16) = v14;
  *(v16 + 24) = v17;
  sub_1D250D314(v6, v16 + v15, type metadata accessor for PhotoAssetView);
  v18 = sub_1D22AE01C(0, 0, v9, &unk_1D288F808, v16);
  v22 = v11;
  v23 = v12;
  v21 = v18;
  return sub_1D2877318();
}

uint64_t sub_1D250C034()
{
  type metadata accessor for PhotoAssetView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DCF48);
  result = sub_1D2877308();
  if (v1)
  {
    sub_1D28786B8();
  }

  return result;
}

uint64_t sub_1D250C0DC(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for PhotoAssetView() - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t objectdestroyTm_13()
{
  v1 = type metadata accessor for PhotoAssetView();
  v2 = (v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)));
  v3 = type metadata accessor for PlaygroundImage();
  if (!(*(*(v3 - 1) + 48))(v2, 1, v3))
  {

    v4 = v3[8];
    v5 = sub_1D2871818();
    (*(*(v5 - 8) + 8))(v2 + v4, v5);
    v6 = (v2 + v3[10]);
    v7 = v6[1];
    if (v7 >> 60 != 15)
    {
      sub_1D22D6D60(*v6, v7);
    }

    v8 = v3[11];
    v9 = sub_1D2873AA8();
    v10 = *(v9 - 8);
    if (!(*(v10 + 48))(v2 + v8, 1, v9))
    {
      (*(v10 + 8))(v2 + v8, v9);
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DCE48);

  v11 = v2 + *(v1 + 40);
  if (*(v11 + 24))
  {
    __swift_destroy_boxed_opaque_existential_0(v11);
  }

  return swift_deallocObject();
}

uint64_t sub_1D250C440(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
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

unint64_t sub_1D250C4C4()
{
  result = qword_1EC6DCE68;
  if (!qword_1EC6DCE68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DCE70);
    sub_1D250C548();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DCE68);
  }

  return result;
}

unint64_t sub_1D250C548()
{
  result = qword_1EC6DCE78;
  if (!qword_1EC6DCE78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DCE80);
    sub_1D250C5CC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DCE78);
  }

  return result;
}

unint64_t sub_1D250C5CC()
{
  result = qword_1EC6DCE88;
  if (!qword_1EC6DCE88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DCE90);
    sub_1D250C658();
    sub_1D250C8A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DCE88);
  }

  return result;
}

unint64_t sub_1D250C658()
{
  result = qword_1EC6DCE98;
  if (!qword_1EC6DCE98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DCEA0);
    sub_1D250C6E4();
    sub_1D250C854();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DCE98);
  }

  return result;
}

unint64_t sub_1D250C6E4()
{
  result = qword_1EC6DCEA8;
  if (!qword_1EC6DCEA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DCEB0);
    sub_1D250C79C();
    sub_1D22BB9D8(&qword_1EC6DCED0, &qword_1EC6DCED8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DCEA8);
  }

  return result;
}

unint64_t sub_1D250C79C()
{
  result = qword_1EC6DCEB8;
  if (!qword_1EC6DCEB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DCEC0);
    sub_1D22F587C();
    sub_1D22BB9D8(&qword_1ED89DF68, &qword_1EC6DCEC8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DCEB8);
  }

  return result;
}

unint64_t sub_1D250C854()
{
  result = qword_1ED89D290;
  if (!qword_1ED89D290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89D290);
  }

  return result;
}

unint64_t sub_1D250C8A8()
{
  result = qword_1EC6DCEE0;
  if (!qword_1EC6DCEE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DCEE8);
    sub_1D250C934();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DCEE0);
  }

  return result;
}

unint64_t sub_1D250C934()
{
  result = qword_1EC6DCEF0;
  if (!qword_1EC6DCEF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DCEF8);
    sub_1D22BB9D8(&qword_1EC6DCF00, &qword_1EC6DCF08);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DCEF0);
  }

  return result;
}

uint64_t sub_1D250CA08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE5A0);
  v4[6] = swift_task_alloc();
  v4[7] = swift_task_alloc();
  v4[8] = swift_task_alloc();
  v5 = type metadata accessor for PlaygroundImage();
  v4[9] = v5;
  v4[10] = *(v5 - 8);
  v4[11] = swift_task_alloc();
  sub_1D2878568();
  v4[12] = sub_1D2878558();
  v7 = sub_1D28784F8();
  v4[13] = v7;
  v4[14] = v6;

  return MEMORY[0x1EEE6DFA0](sub_1D250CB4C, v7, v6);
}

uint64_t sub_1D250CB4C()
{
  v1 = v0[5];
  v2 = type metadata accessor for PhotoAssetView();
  v0[15] = v2;
  v3 = *(v1 + *(v2 + 28));
  v4 = swift_task_alloc();
  v0[16] = v4;
  *v4 = v0;
  v4[1] = sub_1D250CC1C;
  v5 = v0[8];

  return (sub_1D270BEC8)(v5, v3, 0);
}

uint64_t sub_1D250CC1C()
{
  v1 = *v0;

  v2 = *(v1 + 112);
  v3 = *(v1 + 104);

  return MEMORY[0x1EEE6DFA0](sub_1D250CD3C, v3, v2);
}

uint64_t sub_1D250CD3C()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 80);
  v3 = *(v0 + 64);

  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_1D22BD238(*(v0 + 64), &unk_1EC6DE5A0);
  }

  else
  {
    v5 = *(v0 + 80);
    v4 = *(v0 + 88);
    v6 = *(v0 + 72);
    v8 = *(v0 + 48);
    v7 = *(v0 + 56);
    sub_1D250D314(*(v0 + 64), v4, type metadata accessor for PlaygroundImage);
    sub_1D250D37C(v4, v7, type metadata accessor for PlaygroundImage);
    (*(v5 + 56))(v7, 0, 1, v6);
    sub_1D22BD1D0(v7, v8, &unk_1EC6DE5A0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DCE48);
    sub_1D2877318();
    sub_1D22BD238(v7, &unk_1EC6DE5A0);
    sub_1D23D4DFC(v4);
  }

  *(v0 + 16) = *(*(v0 + 40) + *(*(v0 + 120) + 20));
  *(v0 + 32) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DCF48);
  sub_1D2877318();

  v9 = *(v0 + 8);

  return v9();
}

void sub_1D250CF4C()
{
  sub_1D250D1C0(319, &qword_1EC6DCF20, &unk_1EC6DE5A0, &unk_1D287F0E0, MEMORY[0x1E6981790]);
  if (v0 <= 0x3F)
  {
    sub_1D250D1C0(319, &qword_1EC6DCF28, &unk_1EC6E1150, &unk_1D288F7E0, MEMORY[0x1E6981790]);
    if (v1 <= 0x3F)
    {
      sub_1D250D158(319, qword_1EC6D8980, type metadata accessor for _PhotoAsset);
      if (v2 <= 0x3F)
      {
        sub_1D250D158(319, &qword_1EC6DCF30, type metadata accessor for _PhotoAsset.ImageType);
        if (v3 <= 0x3F)
        {
          sub_1D250D1C0(319, &qword_1EC6DCF38, &qword_1EC6DCF40, &unk_1D288F7E8, MEMORY[0x1E69E6720]);
          if (v4 <= 0x3F)
          {
            sub_1D22BFAB4();
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

unint64_t sub_1D250D10C()
{
  result = qword_1EC6D74E0;
  if (!qword_1EC6D74E0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC6D74E0);
  }

  return result;
}

void sub_1D250D158(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, unint64_t, _UNKNOWN **))
{
  if (!*a2)
  {
    v6 = sub_1D250D10C();
    v7 = a3(a1, v6, &protocol witness table for PHAsset);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_1D250D1C0(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_1D250D224(uint64_t a1)
{
  v4 = *(type metadata accessor for PhotoAssetView() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1D22BC8FC;

  return sub_1D250CA08(a1, v6, v7, v1 + v5);
}

uint64_t sub_1D250D314(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D250D37C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D250D3E4()
{
  sub_1D22BD06C();
  sub_1D2870F68();
  return sub_1D2877278();
}

uint64_t sub_1D250D464()
{
  v1 = v0[1];
  v6 = *v0;
  v7 = v1;
  v8 = *(v0 + 4);
  v9 = v6;
  v10 = *(v0 + 24);
  v2 = swift_allocObject();
  v3 = v0[1];
  *(v2 + 16) = *v0;
  *(v2 + 32) = v3;
  *(v2 + 48) = *(v0 + 4);
  sub_1D250D77C(&v9, v5);
  sub_1D2870F78();
  sub_1D23967C8(&v10, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D99E8);
  sub_1D22BB9D8(&qword_1ED89D200, &qword_1EC6D99E8);
  return sub_1D2877368();
}

unint64_t sub_1D250D594()
{
  result = qword_1EC6D75E0;
  if (!qword_1EC6D75E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6D75E0);
  }

  return result;
}

uint64_t sub_1D250D5E8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DCE90);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D250D658(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_1D250D6A0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t type metadata accessor for BlurredEffectBackgroundViewModifier()
{
  result = qword_1ED89E830;
  if (!qword_1ED89E830)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D250D84C()
{
  sub_1D24AF338();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_1D250D8E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a1;
  v32 = a2;
  v3 = sub_1D2874438();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v29 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DCF68);
  v11 = v10 - 8;
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v29 - v12;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DCF70);
  MEMORY[0x1EEE9AC00](v31);
  v15 = &v29 - v14;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DCF78);
  MEMORY[0x1EEE9AC00](v30);
  v17 = &v29 - v16;
  v18 = *v2;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DCF80);
  (*(*(v19 - 8) + 16))(v13, v29, v19);
  v20 = &v13[*(v11 + 44)];
  if ((v18 & 1) == 0)
  {
    *v20 = 0;
    v20[8] = 0;
    goto LABEL_5;
  }

  *v20 = 0x4044000000000000;
  v20[8] = 0;
  type metadata accessor for BlurredEffectBackgroundViewModifier();
  sub_1D24CC0E8(v9);
  (*(v4 + 104))(v6, *MEMORY[0x1E697DBA8], v3);
  v21 = sub_1D2874428();
  v22 = *(v4 + 8);
  v22(v6, v3);
  v22(v9, v3);
  v23 = -0.5;
  if ((v21 & 1) == 0)
  {
LABEL_5:
    v23 = 0.0;
  }

  sub_1D22EC9BC(v13, v15, &qword_1EC6DCF68);
  *&v15[*(v31 + 36)] = v23;
  if (v18)
  {
    v24 = 0.6;
  }

  else
  {
    v24 = 1.0;
  }

  sub_1D22EC9BC(v15, v17, &qword_1EC6DCF70);
  *&v17[*(v30 + 36)] = v24;
  v25 = sub_1D28778D8();
  v26 = v32;
  sub_1D22EC9BC(v17, v32, &qword_1EC6DCF78);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DCF88);
  v28 = v26 + *(result + 36);
  *v28 = v25;
  *(v28 + 8) = v18;
  return result;
}

unint64_t sub_1D250DC84()
{
  result = qword_1ED89D880;
  if (!qword_1ED89D880)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DCF88);
    sub_1D250DD3C();
    sub_1D22BB9D8(&qword_1ED89D680, &qword_1EC6DA080);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89D880);
  }

  return result;
}

unint64_t sub_1D250DD3C()
{
  result = qword_1ED89D930;
  if (!qword_1ED89D930)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DCF78);
    sub_1D250DDC8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89D930);
  }

  return result;
}

unint64_t sub_1D250DDC8()
{
  result = qword_1ED89DAF0;
  if (!qword_1ED89DAF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DCF70);
    sub_1D250DE54();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89DAF0);
  }

  return result;
}

unint64_t sub_1D250DE54()
{
  result = qword_1ED89DD90;
  if (!qword_1ED89DD90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DCF68);
    sub_1D22BB9D8(&qword_1ED89D448, &qword_1EC6DCF80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89DD90);
  }

  return result;
}

uint64_t type metadata accessor for PreviewsView()
{
  result = qword_1ED8A4CF0;
  if (!qword_1ED8A4CF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D250DF80()
{
  sub_1D250E2FC(319, &qword_1ED89D060, type metadata accessor for PreviewsViewModel, MEMORY[0x1E6981AA0]);
  if (v0 <= 0x3F)
  {
    sub_1D250E2AC(319, &qword_1ED89D078, MEMORY[0x1E69E63B0], MEMORY[0x1E6981948]);
    if (v1 <= 0x3F)
    {
      sub_1D250E2FC(319, &qword_1ED89E028, type metadata accessor for ObservableDebugSettings, MEMORY[0x1E697DCC0]);
      if (v2 <= 0x3F)
      {
        sub_1D250E2FC(319, &qword_1ED89E020, type metadata accessor for HomeAnimationCoordinator, MEMORY[0x1E697DCC0]);
        if (v3 <= 0x3F)
        {
          sub_1D250E2FC(319, &qword_1ED89E030, type metadata accessor for StickerSaveAnimation.Coordinator, MEMORY[0x1E697DCC0]);
          if (v4 <= 0x3F)
          {
            sub_1D250E2AC(319, &qword_1ED89E040, &type metadata for CreationViewStyle, MEMORY[0x1E697DCC0]);
            if (v5 <= 0x3F)
            {
              sub_1D250E2AC(319, &qword_1ED89D180, MEMORY[0x1E69E63B0], MEMORY[0x1E6981790]);
              if (v6 <= 0x3F)
              {
                sub_1D250E2AC(319, &qword_1ED89D190, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
                if (v7 <= 0x3F)
                {
                  sub_1D250E2FC(319, &qword_1ED89D178, type metadata accessor for CGSize, MEMORY[0x1E6981790]);
                  if (v8 <= 0x3F)
                  {
                    sub_1D250E2FC(319, &qword_1ED89D1C0, type metadata accessor for KeyboardEventListener, MEMORY[0x1E6981790]);
                    if (v9 <= 0x3F)
                    {
                      sub_1D2871DD8();
                      if (v10 <= 0x3F)
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
    }
  }
}

void sub_1D250E2AC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1D250E2FC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1D250E37C(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8F70);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v11 - v4;
  v6 = *(*v1 + 104);
  swift_beginAccess();
  sub_1D22BD1D0(v1 + v6, v5, &qword_1EC6D8F70);
  v7 = sub_1D25184D4(v5, a1);
  v8 = sub_1D22BD238(v5, &qword_1EC6D8F70);
  if (v7)
  {
    MEMORY[0x1EEE9AC00](v8);
    v11[-2] = type metadata accessor for PreviewsViewModel.LoadingPageControlIndicator(0);
    v11[-1] = sub_1D2519BF0(&qword_1ED8A2DE8, type metadata accessor for PreviewsViewModel.LoadingPageControlIndicator);
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v11[-2] = v1;
    v11[-1] = a1;
    v11[2] = v1;
    sub_1D22BB9D8(qword_1ED8A0E90, &qword_1EC6DD070);
    sub_1D28719D8();
  }

  else
  {
    swift_beginAccess();
    sub_1D25187F4(a1, v1 + v6);
    swift_endAccess();
  }

  return sub_1D22BD238(a1, &qword_1EC6D8F70);
}

uint64_t sub_1D250E5EC(uint64_t a1, uint64_t a2)
{
  v4 = *(*a1 + 104);
  swift_beginAccess();
  sub_1D25187F4(a2, a1 + v4);
  return swift_endAccess();
}

uint64_t sub_1D250E688(uint64_t a1)
{
  v2 = sub_1D2871DD8();
  v3 = MEMORY[0x1EEE9AC00](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return sub_1D2875368();
}

uint64_t sub_1D250E750()
{
  result = sub_1D2877968();
  qword_1EC6E3B90 = result;
  return result;
}

BOOL sub_1D250E778()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DCF90);
  sub_1D2877618();
  swift_getKeyPath();
  sub_1D2519BF0(&qword_1ED8A2D20, type metadata accessor for PreviewsViewModel);
  sub_1D28719E8();

  v0 = *(v5 + OBJC_IVAR____TtC23ImagePlaygroundInternal17PreviewsViewModel__isGeneratingImages);

  if (v0)
  {
    return 1;
  }

  sub_1D2877618();
  v2 = *(v5 + OBJC_IVAR____TtC23ImagePlaygroundInternal17PreviewsViewModel_previewsStore);
  swift_getKeyPath();
  sub_1D2519BF0(&qword_1ED8A0FD0, type metadata accessor for GeneratedPreviewsStore);
  sub_1D28719E8();

  swift_beginAccess();
  v3 = *(v2 + 16);
  sub_1D2870F68();

  v4 = *(v3 + 16);

  return v4 != 0;
}

uint64_t sub_1D250E928()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DCF90);
  sub_1D2877618();
  v0 = sub_1D25A3F44();

  if (v0 & 1) != 0 || (sub_1D2877618(), v1 = *(v9 + OBJC_IVAR____TtC23ImagePlaygroundInternal17PreviewsViewModel_previewsStore), swift_getKeyPath(), sub_1D2519BF0(&qword_1ED8A0FD0, type metadata accessor for GeneratedPreviewsStore), sub_1D28719E8(), , swift_beginAccess(), v2 = *(v1 + 16), sub_1D2870F68(), , v3 = *(v2 + 16), , !v3) || (sub_1D2877618(), swift_getKeyPath(), sub_1D2519BF0(&qword_1ED8A2D20, type metadata accessor for PreviewsViewModel), sub_1D28719E8(), , v4 = *(v8 + 17), , (v4))
  {
    v5 = 0;
  }

  else
  {
    sub_1D2877618();
    swift_getKeyPath();
    sub_1D28719E8();

    v7 = *(v8 + 18);

    v5 = v7 ^ 1;
  }

  return v5 & 1;
}

uint64_t sub_1D250EB5C(char a1)
{
  if (a1)
  {
    v1 = 1.0;
  }

  else
  {
    v1 = 0.0;
  }

  type metadata accessor for PreviewsView();
  v3 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA708);
  sub_1D2877318();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DCF90);
  sub_1D2877618();
  sub_1D2877308();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA6B0);
  MEMORY[0x1D389FF60](&v3);
  sub_1D25A4768(v1 != v3);

  v3 = v1;
  return sub_1D28774F8();
}

uint64_t sub_1D250ECB4()
{
  v1 = type metadata accessor for PlaygroundImage();
  v62 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v54 = &v49 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9AA0);
  MEMORY[0x1EEE9AC00](v61);
  v4 = &v49 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE5A0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v56 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v55 = &v49 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v49 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v49 - v13;
  v15 = sub_1D2875628();
  v59 = *(v15 - 8);
  v60 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v58 = &v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9490);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v49 - v18;
  v20 = type metadata accessor for ImageGeneration.PreviewImage(0);
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v49 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DCF90);
  sub_1D2877618();
  sub_1D25A719C(v19);

  if ((*(v21 + 48))(v19, 1, v20) == 1)
  {
    return sub_1D22BD238(v19, &qword_1EC6D9490);
  }

  v57 = v1;
  sub_1D2519120(v19, v23, type metadata accessor for ImageGeneration.PreviewImage);
  v25 = (v0 + *(type metadata accessor for PreviewsView() + 32));
  v26 = *v25;
  v27 = *(v25 + 8);
  sub_1D2870F78();
  v28 = v26;
  v51 = v27;
  if ((v27 & 1) == 0)
  {
    sub_1D2878A28();
    v29 = sub_1D28762E8();
    sub_1D2873BE8();

    v30 = v58;
    sub_1D2875618();
    swift_getAtKeyPath();

    (*(v59 + 8))(v30, v60);
    v28 = v63;
  }

  swift_getKeyPath();
  v63 = v28;
  sub_1D2519BF0(&qword_1ED8A1758, type metadata accessor for StickerSaveAnimation.Coordinator);
  sub_1D28719E8();

  v31 = OBJC_IVAR____TtCV23ImagePlaygroundInternal20StickerSaveAnimation11Coordinator__visibleImage;
  swift_beginAccess();
  sub_1D22BD1D0(v28 + v31, v14, &unk_1EC6DE5A0);

  v32 = *&v23[*(v20 + 28)];
  v33 = *(v32 + 16);
  v52 = v26;
  v53 = v23;
  v50 = v32;
  if (v33)
  {
    v34 = v62;
    sub_1D25191B8(v32 + ((*(v62 + 80) + 32) & ~*(v62 + 80)), v11, type metadata accessor for PlaygroundImage);
    v35 = 0;
  }

  else
  {
    v35 = 1;
    v34 = v62;
  }

  v36 = v57;
  v49 = *(v34 + 56);
  v49(v11, v35, 1, v57);
  v37 = *(v61 + 48);
  sub_1D22BD1D0(v14, v4, &unk_1EC6DE5A0);
  sub_1D22BD1D0(v11, &v4[v37], &unk_1EC6DE5A0);
  v38 = *(v34 + 48);
  if (v38(v4, 1, v36) != 1)
  {
    v41 = v55;
    sub_1D22BD1D0(v4, v55, &unk_1EC6DE5A0);
    if (v38(&v4[v37], 1, v36) != 1)
    {
      v47 = v54;
      sub_1D2519120(&v4[v37], v54, type metadata accessor for PlaygroundImage);
      v48 = _s23ImagePlaygroundInternal0A10GenerationV07PreviewA0V2eeoiySbAE_AEtFZ_0();
      sub_1D25190C0(v47, type metadata accessor for PlaygroundImage);
      sub_1D22BD238(v11, &unk_1EC6DE5A0);
      sub_1D22BD238(v14, &unk_1EC6DE5A0);
      sub_1D25190C0(v41, type metadata accessor for PlaygroundImage);
      sub_1D22BD238(v4, &unk_1EC6DE5A0);
      v42 = v62;
      v40 = v53;
      if (v48)
      {
        return sub_1D25190C0(v40, type metadata accessor for ImageGeneration.PreviewImage);
      }

LABEL_14:
      sub_1D2870F78();
      if ((v51 & 1) == 0)
      {
        sub_1D2878A28();
        v43 = sub_1D28762E8();
        sub_1D2873BE8();

        v44 = v58;
        sub_1D2875618();
        swift_getAtKeyPath();

        (*(v59 + 8))(v44, v60);
      }

      if (*(v50 + 16))
      {
        v45 = v56;
        sub_1D25191B8(v50 + ((*(v42 + 80) + 32) & ~*(v42 + 80)), v56, type metadata accessor for PlaygroundImage);
        v46 = 0;
      }

      else
      {
        v46 = 1;
        v45 = v56;
      }

      v49(v45, v46, 1, v57);
      sub_1D27459DC(v45);

      return sub_1D25190C0(v40, type metadata accessor for ImageGeneration.PreviewImage);
    }

    sub_1D22BD238(v11, &unk_1EC6DE5A0);
    sub_1D22BD238(v14, &unk_1EC6DE5A0);
    sub_1D25190C0(v41, type metadata accessor for PlaygroundImage);
    v40 = v53;
LABEL_13:
    sub_1D22BD238(v4, &qword_1EC6D9AA0);
    v42 = v62;
    goto LABEL_14;
  }

  sub_1D22BD238(v11, &unk_1EC6DE5A0);
  sub_1D22BD238(v14, &unk_1EC6DE5A0);
  v39 = v38(&v4[v37], 1, v36);
  v40 = v53;
  if (v39 != 1)
  {
    goto LABEL_13;
  }

  sub_1D22BD238(v4, &unk_1EC6DE5A0);
  return sub_1D25190C0(v40, type metadata accessor for ImageGeneration.PreviewImage);
}

uint64_t sub_1D250F57C(char a1)
{
  v3 = (v1 + *(type metadata accessor for PreviewsView() + 20));
  v4 = v3[1];
  v5 = v3[2];
  v14 = *v3;
  v15 = v4;
  v16 = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA6B0);
  MEMORY[0x1D389FF60](&v13, v6);
  if (v13 <= 0.5 && (a1 & 1) == 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DCF90);
    sub_1D2877618();
    v7 = sub_1D25A3F44();

    if (v7)
    {
      sub_1D2877618();
      v8 = v14;
      if (*(v14 + OBJC_IVAR____TtC23ImagePlaygroundInternal17PreviewsViewModel__allowsPreviewMode) == 1)
      {
        KeyPath = swift_getKeyPath();
        MEMORY[0x1EEE9AC00](KeyPath);
        v14 = v8;
        sub_1D2519BF0(&qword_1ED8A2D20, type metadata accessor for PreviewsViewModel);
        sub_1D28719D8();
      }

      *(v14 + OBJC_IVAR____TtC23ImagePlaygroundInternal17PreviewsViewModel__allowsPreviewMode) = 0;
    }

    v12 = 0;
    return sub_1D250EB5C(v12);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DCF90);
  sub_1D2877618();
  v11 = sub_1D25A3F44();

  if (v11)
  {
    v12 = 1;
    return sub_1D250EB5C(v12);
  }

  sub_1D2877618();
  sub_1D25A4614();
}

uint64_t sub_1D250F7C0()
{
  v0 = sub_1D2871C08();
  v1 = *(v0 - 8);
  v23 = v0;
  v24 = v1;
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DD1D8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v23 - v8;
  v10 = sub_1D28713A8();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v11 = sub_1D2871318();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v23 - v16;
  sub_1D2870F68();
  sub_1D2871398();
  sub_1D2871328();
  v18 = *MEMORY[0x1E69594E0];
  v19 = sub_1D28712A8();
  v20 = *(v19 - 8);
  (*(v20 + 104))(v9, v18, v19);
  (*(v20 + 56))(v9, 0, 1, v19);
  sub_1D22BD1D0(v9, v6, &qword_1EC6DD1D8);
  sub_1D2519C38();
  sub_1D2871338();
  sub_1D22BD238(v9, &qword_1EC6DD1D8);
  (*(v12 + 16))(v14, v17, v11);
  MEMORY[0x1D389A690](v14);
  v21 = v23;
  sub_1D2871BF8();
  (*(v24 + 8))(v3, v21);
  return (*(v12 + 8))(v17, v11);
}

uint64_t sub_1D250FB3C@<X0>(uint64_t a1@<X8>)
{
  v70 = a1;
  v2 = type metadata accessor for PreviewsView();
  v63 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v64 = v3;
  v65 = &v57 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = sub_1D28758D8();
  v4 = *(v58 - 8);
  MEMORY[0x1EEE9AC00](v58);
  v59 = &v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v57 - v7;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DD1A0);
  MEMORY[0x1EEE9AC00](v73);
  v10 = &v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v57 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v71 = &v57 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v61 = &v57 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v62 = &v57 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DD1A8);
  v67 = *(v20 - 8);
  v68 = v20;
  MEMORY[0x1EEE9AC00](v20);
  v66 = &v57 - v21;
  LOBYTE(v74) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DD1B0);
  sub_1D25196B8();
  sub_1D2876B58();
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DCF90);
  sub_1D2877618();
  sub_1D25A3F44();

  v69 = v1;
  sub_1D2875798();
  if (qword_1ED89E0E8 != -1)
  {
    swift_once();
  }

  v60 = qword_1ED8B0058;
  v22 = sub_1D2876668();
  v24 = v23;
  v26 = v25;
  sub_1D2874F08();
  sub_1D22ED6E0(v22, v24, v26 & 1);

  sub_1D22BD238(v10, &qword_1EC6DD1A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DD1C0);
  v27 = v4;
  v28 = swift_allocObject();
  v57 = xmmword_1D287F500;
  *(v28 + 16) = xmmword_1D287F500;
  sub_1D28758B8();
  v74 = v28;
  sub_1D2519BF0(&qword_1ED89D678, MEMORY[0x1E697F5E0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DD1C8);
  sub_1D22BB9D8(&qword_1ED89CEC8, &qword_1EC6DD1C8);
  v29 = v8;
  v30 = v58;
  sub_1D2879088();
  sub_1D2874F38();
  v31 = *(v27 + 8);
  v31(v29, v30);
  sub_1D22BD238(v13, &qword_1EC6DD1A0);
  v32 = v69;
  sub_1D2877618();
  LOBYTE(v27) = sub_1D25A3F44();

  if (v27)
  {
    v33 = v59;
    sub_1D2875898();
  }

  else
  {
    v74 = MEMORY[0x1E69E7CC0];
    v33 = v59;
    sub_1D2879088();
  }

  v34 = v61;
  v35 = v71;
  sub_1D2874F38();
  v31(v33, v30);
  sub_1D22BD238(v35, &qword_1EC6DD1A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DD1D0);
  v36 = swift_allocObject();
  *(v36 + 16) = v57;
  sub_1D2875798();
  if (qword_1ED89E0E8 != -1)
  {
    swift_once();
  }

  v37 = v60;
  *(v36 + 32) = sub_1D2876668();
  *(v36 + 40) = v38;
  *(v36 + 48) = v39 & 1;
  *(v36 + 56) = v40;
  v41 = v62;
  v42 = v73;
  sub_1D2874F58();

  sub_1D22BD238(v34, &qword_1EC6DD1A0);
  sub_1D2877618();
  v43 = sub_1D25A3F44();

  LOBYTE(v74) = v43 & 1;
  v44 = v65;
  sub_1D25191B8(v32, v65, type metadata accessor for PreviewsView);
  v45 = (*(v63 + 80) + 16) & ~*(v63 + 80);
  v46 = swift_allocObject();
  sub_1D2519120(v44, v46 + v45, type metadata accessor for PreviewsView);
  v47 = sub_1D2519B34();
  v48 = MEMORY[0x1E69E6370];
  v49 = v66;
  sub_1D2876F48();

  sub_1D22BD238(v41, &qword_1EC6DD1A0);
  sub_1D2877618();
  sub_1D25A3F44();

  sub_1D2875798();
  v50 = sub_1D2876668();
  v52 = v51;
  v54 = v53;
  v74 = v42;
  v75 = v48;
  v76 = v47;
  v77 = MEMORY[0x1E69E6388];
  swift_getOpaqueTypeConformance2();
  v55 = v68;
  sub_1D2876A68();
  sub_1D22ED6E0(v50, v52, v54 & 1);

  return (*(v67 + 8))(v49, v55);
}

uint64_t sub_1D251050C()
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
  sub_1D28780E8();
  sub_1D250F7C0();
}

uint64_t sub_1D251068C@<X0>(uint64_t a1@<X8>)
{
  v102 = a1;
  v76 = sub_1D2875628();
  v75 = *(v76 - 8);
  MEMORY[0x1EEE9AC00](v76);
  v74 = &v74 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1D28747E8();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v84 = &v74 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = sub_1D2874808();
  v94 = *(v95 - 8);
  MEMORY[0x1EEE9AC00](v95);
  v93 = &v74 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DCF98);
  v97 = *(v99 - 8);
  MEMORY[0x1EEE9AC00](v99);
  v96 = &v74 - v6;
  v101 = type metadata accessor for PreviewsView();
  v7 = *(v101 - 8);
  MEMORY[0x1EEE9AC00](v101);
  v109 = v8;
  v9 = &v74 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1D2874CC8();
  v11 = *(v10 - 8);
  v107 = v10;
  v108 = v11;
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v74 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA668);
  v80 = *(v79 - 8);
  MEMORY[0x1EEE9AC00](v79);
  v77 = &v74 - v14;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA670);
  v82 = *(v105 - 8);
  MEMORY[0x1EEE9AC00](v105);
  v78 = &v74 - v15;
  OpaqueTypeConformance2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DCFA0);
  MEMORY[0x1EEE9AC00](OpaqueTypeConformance2);
  v17 = &v74 - v16;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DCFA8);
  v83 = *(v86 - 8);
  MEMORY[0x1EEE9AC00](v86);
  v104 = (&v74 - v18);
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DCFB0);
  v88 = *(v90 - 8);
  MEMORY[0x1EEE9AC00](v90);
  v106 = &v74 - v19;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DCFB8);
  v89 = *(v91 - 8);
  MEMORY[0x1EEE9AC00](v91);
  v87 = &v74 - v20;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DCFC0);
  MEMORY[0x1EEE9AC00](v85);
  v92 = &v74 - v21;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DCFC8);
  MEMORY[0x1EEE9AC00](v98);
  v100 = &v74 - v22;
  v81 = v17;
  v110 = v1;
  sub_1D25117D0(v17);
  sub_1D2874C98();
  sub_1D25191B8(v1, v9, type metadata accessor for PreviewsView);
  v23 = *(v7 + 80);
  v24 = (v23 + 16) & ~v23;
  v25 = swift_allocObject();
  v26 = v9;
  sub_1D2519120(v9, v25 + v24, type metadata accessor for PreviewsView);
  sub_1D2519BF0(&qword_1ED89DE90, MEMORY[0x1E697C080]);
  sub_1D2519BF0(&qword_1ED89DE98, MEMORY[0x1E697C068]);
  v27 = v77;
  v28 = v107;
  sub_1D28775B8();

  (*(v108 + 8))(v13, v28);
  sub_1D25191B8(v110, v26, type metadata accessor for PreviewsView);
  v107 = v23;
  v29 = swift_allocObject();
  v108 = v24;
  v30 = v29 + v24;
  v31 = v78;
  sub_1D2519120(v26, v30, type metadata accessor for PreviewsView);
  sub_1D22BB9D8(&qword_1ED89D758, &qword_1EC6DA668);
  v32 = v79;
  sub_1D28775A8();

  (*(v80 + 8))(v27, v32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DCF90);
  sub_1D2877618();
  v33 = *(v112 + OBJC_IVAR____TtC23ImagePlaygroundInternal17PreviewsViewModel_previewsStore);
  swift_getKeyPath();
  v112 = v33;
  sub_1D2519BF0(&qword_1ED8A0FD0, type metadata accessor for GeneratedPreviewsStore);
  sub_1D28719E8();

  swift_beginAccess();
  v34 = *(v33 + 16);
  sub_1D2870F68();

  v35 = *(v34 + 16);

  if (v35 && (sub_1D2877618(), v36 = v112, swift_getKeyPath(), v112 = v36, sub_1D2519BF0(&qword_1ED8A2D20, type metadata accessor for PreviewsViewModel), sub_1D28719E8(), , v37 = *(v36 + 16), , v37))
  {
    sub_1D28744D8();
  }

  else
  {
    sub_1D28744E8();
  }

  v38 = sub_1D2517408();
  v39 = sub_1D22BB9D8(&qword_1ED89DED8, &qword_1EC6DA670);
  v40 = v105;
  v41 = v81;
  sub_1D2876BC8();
  (*(v82 + 8))(v31, v40);
  sub_1D22BD238(v41, &qword_1EC6DCFA0);
  sub_1D28747C8();
  v42 = v93;
  sub_1D28747F8();
  sub_1D25191B8(v110, v26, type metadata accessor for PreviewsView);
  v43 = v108;
  v44 = swift_allocObject();
  sub_1D2519120(v26, v44 + v43, type metadata accessor for PreviewsView);
  sub_1D2519BF0(&unk_1ED89DF20, MEMORY[0x1E697BF50]);
  v45 = v96;
  v46 = v95;
  sub_1D28775A8();

  (*(v94 + 8))(v42, v46);
  if (sub_1D250E928())
  {
    sub_1D28744D8();
  }

  else
  {
    sub_1D28744E8();
  }

  v112 = OpaqueTypeConformance2;
  v113 = v105;
  v114 = v38;
  v115 = v39;
  v105 = MEMORY[0x1E6981348];
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v47 = sub_1D22BB9D8(&qword_1ED89DEE8, &qword_1EC6DCF98);
  v48 = v86;
  v49 = v99;
  v50 = v104;
  sub_1D2876BC8();
  (*(v97 + 1))(v45, v49);
  (*(v83 + 8))(v50, v48);
  v51 = v110;
  sub_1D2877618();
  v52 = sub_1D25A3F44();

  v111 = v52 & 1;
  v104 = type metadata accessor for PreviewsView;
  sub_1D25191B8(v51, v26, type metadata accessor for PreviewsView);
  v53 = v108;
  v54 = swift_allocObject();
  v97 = type metadata accessor for PreviewsView;
  sub_1D2519120(v26, v54 + v53, type metadata accessor for PreviewsView);
  v112 = v48;
  v113 = v49;
  v114 = OpaqueTypeConformance2;
  v115 = v47;
  swift_getOpaqueTypeConformance2();
  v55 = v87;
  v56 = v90;
  v57 = v106;
  sub_1D2876F48();

  (*(v88 + 8))(v57, v56);
  v58 = v104;
  sub_1D25191B8(v51, v26, v104);
  v59 = swift_allocObject();
  v60 = v97;
  sub_1D2519120(v26, v59 + v53, v97);
  v61 = v92;
  (*(v89 + 32))(v92, v55, v91);
  v62 = (v61 + *(v85 + 36));
  *v62 = sub_1D2517790;
  v62[1] = v59;
  v62[2] = 0;
  v62[3] = 0;
  sub_1D25191B8(v51, v26, v58);
  v63 = v26;
  v64 = swift_allocObject();
  sub_1D2519120(v26, v64 + v53, v60);
  v65 = v100;
  sub_1D22EC9BC(v61, v100, &qword_1EC6DCFC0);
  v66 = (v65 + *(v98 + 36));
  *v66 = 0;
  v66[1] = 0;
  v66[2] = sub_1D25177A8;
  v66[3] = v64;
  v67 = v51 + *(v101 + 36);
  v68 = *v67;
  if (*(v67 + 8) == 1)
  {
    LOBYTE(v112) = *v67;
  }

  else
  {
    sub_1D2870F78();
    sub_1D2878A28();
    v69 = sub_1D28762E8();
    sub_1D2873BE8();

    v70 = v74;
    sub_1D2875618();
    swift_getAtKeyPath();
    sub_1D22EE66C(v68, 0);
    (*(v75 + 8))(v70, v76);
    LOBYTE(v68) = v112;
  }

  v111 = v68;
  sub_1D25191B8(v110, v63, type metadata accessor for PreviewsView);
  v71 = v108;
  v72 = swift_allocObject();
  sub_1D2519120(v63, v72 + v71, type metadata accessor for PreviewsView);
  sub_1D25177D8();
  sub_1D22EBCFC();
  sub_1D2876F48();

  return sub_1D22BD238(v65, &qword_1EC6DCFC8);
}

uint64_t sub_1D25117D0@<X0>(uint64_t a1@<X8>)
{
  v45 = a1;
  v2 = sub_1D2875628();
  v37 = *(v2 - 8);
  v38 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v36 = &v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for PreviewsView();
  v5 = *(v4 - 8);
  v43 = v4 - 8;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DCFF8);
  MEMORY[0x1EEE9AC00](v44);
  v9 = (&v36 - v8);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DCFD8);
  MEMORY[0x1EEE9AC00](v42);
  v11 = &v36 - v10;
  *v9 = sub_1D2877848();
  v9[1] = v12;
  v13 = v9 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DD028) + 44);
  v39 = v1;
  sub_1D2513CB8(v1, v13);
  v41 = type metadata accessor for PreviewsView;
  sub_1D25191B8(v1, v7, type metadata accessor for PreviewsView);
  v14 = *(v5 + 80);
  v15 = (v14 + 16) & ~v14;
  v16 = v15 + v6;
  v17 = swift_allocObject();
  v40 = type metadata accessor for PreviewsView;
  sub_1D2519120(v7, v17 + v15, type metadata accessor for PreviewsView);
  sub_1D22BB9D8(&qword_1EC6DD000, &qword_1EC6DCFF8);
  sub_1D2876908();

  sub_1D22BD238(v9, &qword_1EC6DCFF8);
  v18 = sub_1D2877838();
  v20 = v19;
  v21 = &v11[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DCFF0) + 36)];
  v22 = v39;
  sub_1D2516354(v39, v21);
  v23 = (v21 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DD010) + 36));
  v24 = v15;
  v25 = v16;
  v26 = v22;
  *v23 = v18;
  v23[1] = v20;
  v27 = v42;
  sub_1D25191B8(v22, v7, v41);
  v44 = v14;
  v28 = swift_allocObject();
  sub_1D2519120(v7, v28 + v24, v40);
  v29 = &v11[*(v27 + 36)];
  *v29 = sub_1D2517AD8;
  v29[1] = v28;
  v29[2] = 0;
  v29[3] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DCF90);
  sub_1D2877618();
  v30 = v47;
  swift_getKeyPath();
  v47 = v30;
  sub_1D2519BF0(&qword_1ED8A2D20, type metadata accessor for PreviewsViewModel);
  sub_1D28719E8();

  LOBYTE(v28) = *(v30 + 20);

  v46 = v28;
  LOBYTE(v28) = *(v26 + *(v43 + 36) + 8);
  sub_1D2870F78();
  if ((v28 & 1) == 0)
  {
    sub_1D2878A28();
    v31 = sub_1D28762E8();
    sub_1D2873BE8();

    v32 = v36;
    sub_1D2875618();
    swift_getAtKeyPath();

    (*(v37 + 8))(v32, v38);
  }

  v33 = swift_allocObject();
  swift_weakInit();

  sub_1D25191B8(v26, v7, type metadata accessor for PreviewsView);
  v34 = swift_allocObject();
  sub_1D2519120(v7, v34 + v24, type metadata accessor for PreviewsView);
  *(v34 + ((v25 + 7) & 0xFFFFFFFFFFFFFFF8)) = v33;
  sub_1D25174DC();
  sub_1D2876F48();

  return sub_1D22BD238(v11, &qword_1EC6DCFD8);
}

uint64_t sub_1D2511DC8(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DCF90);
  sub_1D2877618();
  v3 = v20;
  if (*(v20 + 19) == 1)
  {
    *(v20 + 19) = 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v19 = &v19;
    MEMORY[0x1EEE9AC00](KeyPath);
    v20 = v3;
    sub_1D2519BF0(&qword_1ED8A2D20, type metadata accessor for PreviewsViewModel);
    sub_1D28719D8();
  }

  sub_1D2874CA8();
  v6 = v5 + -1.0;
  v7 = type metadata accessor for PreviewsView();
  v8 = (a2 + *(v7 + 40));
  v9 = *v8;
  v10 = v8[1];
  v20 = *v8;
  v21 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA708);
  sub_1D2877308();
  if (1.0 - v23 < v6)
  {
    v6 = 1.0 - v23;
  }

  v20 = v9;
  v21 = v10;
  sub_1D2877308();
  if (v6 <= 0.0 - v23)
  {
    v6 = 0.0 - v23;
  }

  v20 = v9;
  v21 = v10;
  sub_1D2877308();
  v11 = v6 + v23;
  v12 = (a2 + *(v7 + 20));
  v13 = v12[1];
  v14 = v12[2];
  v20 = *v12;
  v21 = v13;
  v22 = v14;
  v23 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA6B0);
  sub_1D28774F8();
  sub_1D2877618();
  sub_1D25A79AC(v11);

  sub_1D2877618();
  v15 = v20;
  swift_getKeyPath();
  v20 = v15;
  sub_1D2519BF0(&qword_1ED8A2D20, type metadata accessor for PreviewsViewModel);
  sub_1D28719E8();

  v16 = *(v15 + 18);

  if ((v16 & 1) == 0)
  {
    v18 = sub_1D28778F8();
    MEMORY[0x1EEE9AC00](v18);
    sub_1D2874BE8();
  }

  return result;
}

uint64_t sub_1D2512138()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DCF90);
  sub_1D2877618();
  if (*(v2 + 18) == 1)
  {
    *(v2 + 18) = 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D2519BF0(&qword_1ED8A2D20, type metadata accessor for PreviewsViewModel);
    sub_1D28719D8();
  }
}

uint64_t sub_1D2512288()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DCF90);
  sub_1D2877618();
  if (*(v4 + 19))
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D2519BF0(&qword_1ED8A2D20, type metadata accessor for PreviewsViewModel);
    sub_1D28719D8();
  }

  else
  {
    *(v4 + 19) = 0;
  }

  sub_1D2877618();
  if (*(v4 + 18))
  {
    v1 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v1);
    sub_1D2519BF0(&qword_1ED8A2D20, type metadata accessor for PreviewsViewModel);
    sub_1D28719D8();
  }

  else
  {
    *(v4 + 18) = 0;
  }

  type metadata accessor for PreviewsView();
  v5 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA708);
  sub_1D2877318();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA6B0);
  MEMORY[0x1D389FF60](&v5, v2);
  sub_1D2877318();
  return sub_1D250F57C(0);
}

uint64_t sub_1D2512578()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DCF90);
  sub_1D2877618();
  v0 = sub_1D25A3F44();

  if ((v0 & 1) == 0)
  {
    sub_1D2877618();
    sub_1D25A4614();
  }

  return result;
}

void sub_1D2512604(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DCF90);
  sub_1D2877618();
  sub_1D25A3F44();

  v2 = type metadata accessor for PreviewsView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA708);
  sub_1D2877318();
  sub_1D2877618();
  sub_1D25A3F44();

  sub_1D2877318();
  sub_1D2877618();
  v3 = sub_1D25A3F44();

  if (v3)
  {
    v4 = 1.0;
  }

  else
  {
    v4 = 0.0;
  }

  v5 = *(a1 + *(v2 + 20));
  v6 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA6B0);
  sub_1D28774F8();
  sub_1D2877618();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9BB8);
  sub_1D2877308();
  sub_1D26A48F8(v5, *&v6);
}

void sub_1D2512808()
{
  type metadata accessor for PreviewsView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9BB8);
  sub_1D2877308();
  sub_1D2744EE8();
  v0 = &v8[OBJC_IVAR____TtC23ImagePlaygroundInternal21KeyboardEventListener_keyboardWillShow];
  v1 = *&v8[OBJC_IVAR____TtC23ImagePlaygroundInternal21KeyboardEventListener_keyboardWillShow];
  *v0 = 0;
  *(v0 + 1) = 0;
  sub_1D22A576C(v1);
  v2 = &v8[OBJC_IVAR____TtC23ImagePlaygroundInternal21KeyboardEventListener_keyboardDidShow];
  v3 = *&v8[OBJC_IVAR____TtC23ImagePlaygroundInternal21KeyboardEventListener_keyboardDidShow];
  *v2 = 0;
  *(v2 + 1) = 0;
  sub_1D22A576C(v3);
  v4 = &v8[OBJC_IVAR____TtC23ImagePlaygroundInternal21KeyboardEventListener_keyboardWillHide];
  v5 = *&v8[OBJC_IVAR____TtC23ImagePlaygroundInternal21KeyboardEventListener_keyboardWillHide];
  *v4 = 0;
  *(v4 + 1) = 0;
  sub_1D22A576C(v5);
  v6 = &v8[OBJC_IVAR____TtC23ImagePlaygroundInternal21KeyboardEventListener_keyboardDidHide];
  v7 = *&v8[OBJC_IVAR____TtC23ImagePlaygroundInternal21KeyboardEventListener_keyboardDidHide];
  *v6 = 0;
  *(v6 + 1) = 0;
  sub_1D22A576C(v7);
}

uint64_t sub_1D25128E4(uint64_t a1, unsigned __int8 *a2)
{
  v2 = *a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DCF90);
  sub_1D2877618();
  if (*(v5 + 16) != v2)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D2519BF0(&qword_1ED8A2D20, type metadata accessor for PreviewsViewModel);
    sub_1D28719D8();
  }
}

uint64_t sub_1D2512A24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v48 = a2;
  v4 = sub_1D2875628();
  v42 = *(v4 - 8);
  v43 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v41 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1D2872008();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for ImageGeneration.PreviewImage(0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DD148);
  MEMORY[0x1EEE9AC00](v44);
  v14 = &v41 - v13;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DD150);
  MEMORY[0x1EEE9AC00](v47);
  v16 = &v41 - v15;
  v45 = a1;
  sub_1D25191B8(a1, v12, type metadata accessor for ImageGeneration.PreviewImage);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DCF90);
  v46 = v2;
  sub_1D2877618();
  v17 = v50;
  swift_getKeyPath();
  v50 = v17;
  sub_1D2519BF0(&qword_1ED8A2D20, type metadata accessor for PreviewsViewModel);
  sub_1D28719E8();

  v18 = OBJC_IVAR____TtC23ImagePlaygroundInternal17PreviewsViewModel__currentStyle;
  swift_beginAccess();
  v19 = *(v7 + 16);
  v19(v9, v17 + v18, v6);

  *v14 = swift_getKeyPath();
  v14[8] = 0;
  *(v14 + 2) = swift_getKeyPath();
  v14[24] = 0;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DD158);
  v21 = v20[10];
  *&v14[v21] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC778);
  swift_storeEnumTagMultiPayload();
  v22 = v20[12];
  if (qword_1ED8A4BA8 != -1)
  {
    swift_once();
  }

  *&v14[v22] = qword_1ED8B0258;
  sub_1D25191B8(v12, &v14[v20[11]], type metadata accessor for ImageGeneration.PreviewImage);
  v19(&v14[v20[13]], v9, v6);
  v23 = v20[14];
  v24 = v46;
  sub_1D25130C0(v46, v45, &v14[v23]);
  (*(v7 + 8))(v9, v6);
  sub_1D25190C0(v12, type metadata accessor for ImageGeneration.PreviewImage);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DD160);
  (*(*(v25 - 8) + 56))(&v14[v23], 0, 1, v25);
  KeyPath = swift_getKeyPath();
  v27 = type metadata accessor for PreviewsView();
  v28 = *(v27 + 72);
  v29 = &v14[*(v44 + 36)];
  v30 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DD120) + 28);
  v31 = sub_1D2871DD8();
  (*(*(v31 - 8) + 16))(v29 + v30, v24 + v28, v31);
  *v29 = KeyPath;
  v32 = swift_getKeyPath();
  v33 = v24 + *(v27 + 36);
  v34 = *v33;
  if (*(v33 + 8) == 1)
  {
    v49 = *v33;
  }

  else
  {
    sub_1D2870F78();
    sub_1D2878A28();
    v35 = sub_1D28762E8();
    sub_1D2873BE8();

    v36 = v41;
    sub_1D2875618();
    swift_getAtKeyPath();
    sub_1D22EE66C(v34, 0);
    (*(v42 + 8))(v36, v43);
    LOBYTE(v34) = v49;
  }

  v37 = v47;
  sub_1D22EC9BC(v14, v16, &qword_1EC6DD148);
  v38 = &v16[*(v37 + 36)];
  *v38 = v32;
  v38[8] = v34;
  v39 = sub_1D28762F8();
  sub_1D2876308();
  sub_1D2876308();
  if (sub_1D2876308() != v39)
  {
    sub_1D2876308();
  }

  sub_1D2877848();
  sub_1D2519220();
  sub_1D2876C78();
  return sub_1D22BD238(v16, &qword_1EC6DD150);
}

uint64_t sub_1D25130C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v85 = a3;
  v5 = sub_1D2875718();
  v75 = *(v5 - 8);
  v76 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v74 = &v64[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = type metadata accessor for ImageGeneration.PreviewImage(0);
  v68 = *(v7 - 8);
  v8 = *(v68 + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v69 = &v64[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = type metadata accessor for PreviewsView();
  v10 = v9 - 8;
  v66 = *(v9 - 8);
  v11 = *(v66 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v67 = &v64[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC998);
  v71 = *(v12 - 8);
  v72 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v70 = &v64[-v13];
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DD178);
  MEMORY[0x1EEE9AC00](v82);
  v73 = &v64[-v14];
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DD180);
  MEMORY[0x1EEE9AC00](v78);
  v81 = &v64[-v15];
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DD188);
  MEMORY[0x1EEE9AC00](v80);
  v17 = &v64[-v16];
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DD190);
  v83 = *(v18 - 8);
  v84 = v18;
  MEMORY[0x1EEE9AC00](v18);
  v79 = &v64[-v19];
  v20 = sub_1D2875628();
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v64[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v24 = *(v10 + 32);
  v77 = a1;
  v25 = a1 + v24;
  if (*(v25 + 8) == 1)
  {
    v86 = *v25;
    sub_1D2870F78();
  }

  else
  {
    sub_1D2870F78();
    sub_1D2878A28();
    v26 = sub_1D28762E8();
    sub_1D2873BE8();

    sub_1D2875618();
    swift_getAtKeyPath();

    (*(v21 + 8))(v23, v20);
  }

  swift_getKeyPath();
  if (qword_1ED8A4928 != -1)
  {
    swift_once();
  }

  v86 = off_1ED8A4930;
  sub_1D2519BF0(&qword_1ED8A4920, type metadata accessor for DebugSettings);
  sub_1D28719E8();
  sub_1D23B7BB8();
  sub_1D2870F78();
  v27 = sub_1D2878A58();
  v28 = sub_1D2878068();
  v29 = [v27 BOOLForKey_];

  if (v29)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DCF90);
    v30 = v77;
    sub_1D2877618();
    v31 = a2;
    v32 = sub_1D25A7DEC(a2);

    if (v32)
    {
      v33 = sub_1D2877198();
      v34 = (v17 + *(v80 + 36));
      v35 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9FE8) + 28);
      v36 = *MEMORY[0x1E69816C0];
      v37 = sub_1D2877218();
      (*(*(v37 - 8) + 104))(v34 + v35, v36, v37);
      *v34 = swift_getKeyPath();
      *v17 = v33;
      sub_1D22BD1D0(v17, v81, &qword_1EC6DD188);
      swift_storeEnumTagMultiPayload();
      sub_1D2519488();
      sub_1D2519540();
      v38 = v79;
      sub_1D2875AF8();
      sub_1D22BD238(v17, &qword_1EC6DD188);
    }

    else
    {
      v41 = sub_1D2875798();
      v43 = v42;
      v65 = v44;
      v46 = v45;
      if (qword_1ED89E0E8 != -1)
      {
        swift_once();
      }

      v47 = qword_1ED8B0058;
      v48 = v67;
      sub_1D25191B8(v30, v67, type metadata accessor for PreviewsView);
      v49 = v69;
      sub_1D25191B8(v31, v69, type metadata accessor for ImageGeneration.PreviewImage);
      v50 = (*(v66 + 80) + 16) & ~*(v66 + 80);
      v51 = (v11 + *(v68 + 80) + v50) & ~*(v68 + 80);
      v52 = swift_allocObject();
      sub_1D2519120(v48, v52 + v50, type metadata accessor for PreviewsView);
      v53 = sub_1D2519120(v49, v52 + v51, type metadata accessor for ImageGeneration.PreviewImage);
      MEMORY[0x1EEE9AC00](v53);
      *&v64[-64] = v41;
      *&v64[-56] = v43;
      v64[-48] = v65 & 1;
      *&v64[-40] = v46;
      *&v64[-32] = v47;
      *&v64[-24] = 0x7571732E72617473;
      *&v64[-16] = 0xEB00000000657261;
      sub_1D2870F78();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D99E8);
      sub_1D22BB9D8(&qword_1ED89D200, &qword_1EC6D99E8);
      v54 = v70;
      sub_1D2877368();

      v55 = v74;
      sub_1D2875708();
      sub_1D22BB9D8(&qword_1ED89D130, &qword_1EC6DC998);
      sub_1D2519BF0(&qword_1ED89D6B0, MEMORY[0x1E697C4E8]);
      v56 = v72;
      v57 = v73;
      v58 = v76;
      sub_1D2876768();
      (*(v75 + 8))(v55, v58);
      (*(v71 + 8))(v54, v56);
      v59 = (v57 + *(v82 + 36));
      v60 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9FE8) + 28);
      v61 = *MEMORY[0x1E69816C0];
      v62 = sub_1D2877218();
      (*(*(v62 - 8) + 104))(v59 + v60, v61, v62);
      *v59 = swift_getKeyPath();
      sub_1D22BD1D0(v57, v81, &qword_1EC6DD178);
      swift_storeEnumTagMultiPayload();
      sub_1D2519488();
      sub_1D2519540();
      v38 = v79;
      sub_1D2875AF8();
      sub_1D22BD238(v57, &qword_1EC6DD178);
    }

    v40 = v85;
    sub_1D22EC9BC(v38, v85, &qword_1EC6DD190);
    v39 = 0;
  }

  else
  {
    v39 = 1;
    v40 = v85;
  }

  return (*(v83 + 56))(v40, v39, 1, v84);
}

uint64_t sub_1D2513C5C(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DCF90);
  sub_1D2877618();
  sub_1D25A7FC0(a2);
}

uint64_t sub_1D2513CB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v47 = a2;
  v3 = sub_1D2875628();
  v39 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DD088);
  MEMORY[0x1EEE9AC00](v40);
  v7 = &v38 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DD090);
  v43 = *(v8 - 8);
  v44 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v42 = &v38 - v9;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DD098);
  MEMORY[0x1EEE9AC00](v41);
  v46 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v38 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v45 = &v38 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DD0A0);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v38 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v38 - v20;
  sub_1D250FB3C(&v38 - v20);
  sub_1D2514268(a1, v7);
  v22 = *(a1 + *(type metadata accessor for PreviewsView() + 28) + 8);
  sub_1D2870F78();
  if ((v22 & 1) == 0)
  {
    sub_1D2878A28();
    v23 = sub_1D28762E8();
    v38 = v18;
    v24 = v3;
    v25 = v23;
    sub_1D2873BE8();

    sub_1D2875618();
    swift_getAtKeyPath();

    v26 = v24;
    v18 = v38;
    (*(v39 + 8))(v5, v26);
  }

  v27 = 1;
  v28 = sub_1D25E272C(1);
  v30 = v29;

  v48 = v28;
  v49 = v30;
  sub_1D251889C();
  v31 = v42;
  sub_1D2876CD8();

  sub_1D22BD238(v7, &qword_1EC6DD088);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DCF90);
  sub_1D2877618();
  v32 = v48;
  swift_getKeyPath();
  v48 = v32;
  sub_1D2519BF0(&qword_1ED8A2D20, type metadata accessor for PreviewsViewModel);
  sub_1D28719E8();

  if (*(v32 + 16))
  {
    v27 = sub_1D25ABCF4();
  }

  (*(v43 + 32))(v13, v31, v44);
  v13[*(v41 + 36)] = v27 & 1;
  v33 = v45;
  sub_1D22EC9BC(v13, v45, &qword_1EC6DD098);
  sub_1D22BD1D0(v21, v18, &qword_1EC6DD0A0);
  v34 = v46;
  sub_1D22BD1D0(v33, v46, &qword_1EC6DD098);
  v35 = v47;
  sub_1D22BD1D0(v18, v47, &qword_1EC6DD0A0);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DD128);
  sub_1D22BD1D0(v34, v35 + *(v36 + 48), &qword_1EC6DD098);
  sub_1D22BD238(v33, &qword_1EC6DD098);
  sub_1D22BD238(v21, &qword_1EC6DD0A0);
  sub_1D22BD238(v34, &qword_1EC6DD098);
  return sub_1D22BD238(v18, &qword_1EC6DD0A0);
}

uint64_t sub_1D2514268@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v153 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8F70);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v113 - v4;
  v152 = type metadata accessor for PreviewsView();
  v148 = *(v152 - 1);
  MEMORY[0x1EEE9AC00](v152);
  v127 = &v113 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v128 = &v113 - v8;
  v147 = v9;
  MEMORY[0x1EEE9AC00](v10);
  v155 = &v113 - v11;
  v150 = sub_1D2872008();
  v149 = *(v150 - 1);
  MEMORY[0x1EEE9AC00](v150);
  v129 = &v113 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v126 = &v113 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DD130);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v113 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DCF90);
  v146 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v113 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DD110);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v113 - v22;
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DD100);
  MEMORY[0x1EEE9AC00](v132);
  v134 = &v113 - v24;
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DD0F0);
  MEMORY[0x1EEE9AC00](v131);
  v133 = &v113 - v25;
  v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DD0D8);
  MEMORY[0x1EEE9AC00](v136);
  v135 = &v113 - v26;
  v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DD0D0);
  v137 = *(v138 - 8);
  MEMORY[0x1EEE9AC00](v138);
  v151 = &v113 - v27;
  v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DD0C8);
  v140 = *(v142 - 8);
  MEMORY[0x1EEE9AC00](v142);
  v139 = &v113 - v28;
  v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DD0C0);
  v144 = *(v145 - 8);
  MEMORY[0x1EEE9AC00](v145);
  v143 = &v113 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DD138);
  v154 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v141 = &v113 - v31;
  v32 = a1;
  if (sub_1D250E778())
  {
    v120 = v23;
    v121 = v21;
    v123 = v30;
    v124 = v5;
    v125 = v3;
    v33 = v18;
    sub_1D2877618();
    v34 = *(v157 + OBJC_IVAR____TtC23ImagePlaygroundInternal17PreviewsViewModel_previewsStore);
    swift_getKeyPath();
    *&v157 = v34;
    sub_1D2519BF0(&qword_1ED8A0FD0, type metadata accessor for GeneratedPreviewsStore);
    sub_1D28719E8();

    swift_beginAccess();
    v119 = *(v34 + 16);
    sub_1D2870F68();

    sub_1D2877628();
    swift_getKeyPath();
    v122 = v17;
    sub_1D2877648();

    (*(v146 + 8))(v20, v18);
    sub_1D2877618();
    v35 = v157;
    swift_getKeyPath();
    *&v157 = v35;
    v146 = sub_1D2519BF0(&qword_1ED8A2D20, type metadata accessor for PreviewsViewModel);
    sub_1D28719E8();

    v36 = OBJC_IVAR____TtC23ImagePlaygroundInternal17PreviewsViewModel__currentStyle;
    swift_beginAccess();
    v37 = v149;
    v38 = *(v149 + 16);
    v116 = v149 + 16;
    v117 = v38;
    v39 = v35 + v36;
    v40 = v126;
    v41 = v150;
    v38(v126, v39, v150);
    v118 = sub_1D2871F78();

    v115 = *(v37 + 8);
    v115(v40, v41);
    v42 = v32 + *(v152 + 13);
    v43 = *(v42 + 16);
    v157 = *v42;
    v158 = v43;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA700);
    sub_1D2877308();
    v44 = v160;
    v45 = v155;
    sub_1D25191B8(v32, v155, type metadata accessor for PreviewsView);
    v46 = *(v148 + 80);
    v47 = (v46 + 16) & ~v46;
    v48 = v127;
    v49 = v47 + v147;
    v126 = swift_allocObject();
    sub_1D2519120(v45, &v126[v47], type metadata accessor for PreviewsView);
    v50 = v128;
    sub_1D25191B8(v32, v128, type metadata accessor for PreviewsView);
    v114 = swift_allocObject();
    sub_1D2519120(v50, v114 + v47, type metadata accessor for PreviewsView);
    sub_1D25191B8(v32, v48, type metadata accessor for PreviewsView);
    v148 = v46;
    v147 = v49;
    v51 = swift_allocObject();
    v149 = v47;
    sub_1D2519120(v48, v51 + v47, type metadata accessor for PreviewsView);
    v128 = v33;
    v130 = v32;
    sub_1D2877618();
    v52 = v157;
    swift_getKeyPath();
    *&v157 = v52;
    sub_1D28719E8();

    v53 = OBJC_IVAR____TtC23ImagePlaygroundInternal17PreviewsViewModel__currentStyle;
    swift_beginAccess();
    v54 = v129;
    v55 = v150;
    v117(v129, v52 + v53, v150);
    LOBYTE(v53) = sub_1D2871F78();
    v115(v54, v55);
    if (v53)
    {
      v56 = 1;
    }

    else
    {
      swift_getKeyPath();
      *&v157 = v52;
      sub_1D28719E8();

      v56 = *(v52 + 19);
    }

    v60 = v121;

    v61 = v120;
    *v120 = v119;
    sub_1D22EC9BC(v122, v61 + v60[15], &qword_1EC6DD130);
    *(v61 + v60[16]) = v118 & 1;
    *(v61 + v60[17]) = v44 * 0.02;
    v62 = (v61 + v60[18]);
    v63 = v126;
    *v62 = sub_1D2518D7C;
    v62[1] = v63;
    v64 = (v61 + v60[19]);
    v65 = v114;
    *v64 = sub_1D2518DFC;
    v64[1] = v65;
    v66 = (v61 + v60[20]);
    *v66 = sub_1D2518E6C;
    v66[1] = v51;
    *(v61 + v60[21]) = v56;
    v67 = v61 + v60[22];
    v156 = 0;
    sub_1D28772F8();
    v68 = *(&v157 + 1);
    *v67 = v157;
    *(v67 + 8) = v68;
    type metadata accessor for StickerSaveAnimation.Coordinator();
    sub_1D2519BF0(&qword_1ED8A1758, type metadata accessor for StickerSaveAnimation.Coordinator);
    v69 = sub_1D28744C8();
    v71 = v70;
    v72 = v134;
    sub_1D22EC9BC(v61, v134, &qword_1EC6DD110);
    v73 = v72 + *(v132 + 36);
    *v73 = v69;
    *(v73 + 8) = v71 & 1;
    KeyPath = swift_getKeyPath();
    v75 = *(v152 + 18);
    v76 = v133;
    v77 = &v133[*(v131 + 36)];
    v78 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DD120) + 28);
    v79 = sub_1D2871DD8();
    v80 = v77 + v78;
    v81 = v130;
    (*(*(v79 - 8) + 16))(v80, v130 + v75, v79);
    *v77 = KeyPath;
    sub_1D22EC9BC(v72, v76, &qword_1EC6DD100);
    sub_1D2871DA8();
    v83 = v82;
    v84 = v135;
    sub_1D22EC9BC(v76, v135, &qword_1EC6DD0F0);
    v85 = v136;
    v86 = v84 + *(v136 + 36);
    *v86 = v83;
    *(v86 + 8) = 256;
    v87 = v155;
    v152 = type metadata accessor for PreviewsView;
    sub_1D25191B8(v81, v155, type metadata accessor for PreviewsView);
    v88 = swift_allocObject();
    sub_1D2519120(v87, v88 + v149, type metadata accessor for PreviewsView);
    v89 = sub_1D2518B2C();
    sub_1D2876B98();

    sub_1D22BD238(v84, &qword_1EC6DD0D8);
    sub_1D25191B8(v81, v87, type metadata accessor for PreviewsView);
    v90 = swift_allocObject();
    v91 = v149;
    v150 = type metadata accessor for PreviewsView;
    sub_1D2519120(v87, v90 + v149, type metadata accessor for PreviewsView);
    *&v157 = v85;
    *(&v157 + 1) = v89;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v93 = sub_1D2403664();
    v94 = v139;
    v95 = v138;
    v96 = v151;
    sub_1D2876CA8();

    (*(v137 + 8))(v96, v95);
    type metadata accessor for CGSize(0);
    v98 = v97;
    v99 = v130;
    v100 = v155;
    sub_1D25191B8(v130, v155, v152);
    v101 = swift_allocObject();
    sub_1D2519120(v100, v101 + v91, type metadata accessor for PreviewsView);
    *&v157 = v95;
    *(&v157 + 1) = MEMORY[0x1E69E7DE0];
    v158 = OpaqueTypeConformance2;
    v159 = v93;
    v138 = swift_getOpaqueTypeConformance2();
    v112 = sub_1D2519BF0(&unk_1ED89CCD0, type metadata accessor for CGSize);
    v102 = v143;
    v151 = v98;
    v103 = v142;
    sub_1D2876A38();

    (*(v140 + 8))(v94, v103);
    sub_1D2877618();
    v104 = v157;
    swift_getKeyPath();
    *&v157 = v104;
    sub_1D28719E8();

    v105 = OBJC_IVAR____TtC23ImagePlaygroundInternal17PreviewsViewModel__visiblePreviewID;
    swift_beginAccess();
    v106 = v124;
    sub_1D22BD1D0(v104 + v105, v124, &qword_1EC6D8F70);

    sub_1D25191B8(v99, v100, v152);
    v107 = swift_allocObject();
    sub_1D2519120(v100, v107 + v149, v150);
    *&v157 = v103;
    *(&v157 + 1) = v151;
    v158 = v138;
    v159 = v112;
    swift_getOpaqueTypeConformance2();
    sub_1D22BB064();
    v108 = v141;
    v109 = v145;
    sub_1D2876F48();

    sub_1D22BD238(v106, &qword_1EC6D8F70);
    (*(v144 + 8))(v102, v109);
    v110 = v153;
    v111 = v123;
    (*(v154 + 32))(v153, v108, v123);
    return (*(v154 + 56))(v110, 0, 1, v111);
  }

  else
  {
    v57 = v153;
    v58 = *(v154 + 56);

    return v58(v57, 1, 1, v30);
  }
}

uint64_t sub_1D251566C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for PreviewsView();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  sub_1D2512A24(a1, a3);
  sub_1D25191B8(a2, &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PreviewsView);
  v9 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v10 = swift_allocObject();
  sub_1D2519120(&v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9, type metadata accessor for PreviewsView);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DD140);
  v12 = (a3 + *(result + 36));
  *v12 = sub_1D2519064;
  v12[1] = v10;
  v12[2] = 0;
  v12[3] = 0;
  return result;
}

uint64_t sub_1D25157BC(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DCF90);
  sub_1D2877618();
  sub_1D25A8598(a1);

  return sub_1D250ECB4();
}

uint64_t sub_1D251582C(uint64_t a1, double a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9490);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v19 - v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DCF90);
  sub_1D2877618();
  sub_1D25A719C(v6);

  v7 = type metadata accessor for ImageGeneration.PreviewImage(0);
  v8 = (*(*(v7 - 8) + 48))(v6, 1, v7);
  result = sub_1D22BD238(v6, &qword_1EC6D9490);
  if (v8 != 1)
  {
    sub_1D2877618();
    v10 = v20;
    v11 = (a1 + *(type metadata accessor for PreviewsView() + 52));
    v12 = *(v11 + 2);
    v20 = *v11;
    v21 = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA700);
    sub_1D2877308();
    v13 = v19[0];
    v14 = v19[1];
    swift_getKeyPath();
    *&v20 = v10;
    sub_1D2519BF0(&qword_1ED8A2D20, type metadata accessor for PreviewsViewModel);
    sub_1D28719E8();

    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v16 = Strong;
      v17 = swift_allocObject();
      swift_weakInit();
      v18 = swift_allocObject();
      *(v18 + 16) = v17;
      *(v18 + 24) = v13;
      *(v18 + 32) = v14;
      *(v18 + 40) = a2;
      sub_1D2870F78();
      sub_1D2870F78();
      sub_1D2758420(v16, sub_1D25191A8, v18);
      swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_1D2515AD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1D2875628();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9490);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v33 - v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DCF90);
  sub_1D2877618();
  sub_1D25A719C(v10);

  v11 = type metadata accessor for ImageGeneration.PreviewImage(0);
  v12 = (*(*(v11 - 8) + 48))(v10, 1, v11);
  result = sub_1D22BD238(v10, &qword_1EC6D9490);
  if (v12 != 1)
  {
    v14 = type metadata accessor for PreviewsView();
    v15 = (a3 + v14[9]);
    v16 = *v15;
    if (*(v15 + 8) == 1)
    {
      v17 = *v15;
      LOBYTE(v34) = v16;
    }

    else
    {
      sub_1D2870F78();
      sub_1D2878A28();
      v18 = sub_1D28762E8();
      sub_1D2873BE8();

      sub_1D2875618();
      swift_getAtKeyPath();
      sub_1D22EE66C(v16, 0);
      (*(v5 + 8))(v7, v4);
      v17 = v34;
    }

    if ((v17 - 5) > 1 || (sub_1D2877618(), v19 = sub_1D25A3F44(), result = , (v19 & 1) == 0))
    {
      sub_1D2877618();
      v20 = v35;
      v21 = sub_1D2874598() & 1;
      v22 = *(v20 + OBJC_IVAR____TtC23ImagePlaygroundInternal17PreviewsViewModel__isInIdleScrollPhase);
      if (v21 == v22)
      {
        *(v20 + OBJC_IVAR____TtC23ImagePlaygroundInternal17PreviewsViewModel__isInIdleScrollPhase) = v21;
        sub_1D25AEE2C(v22);
      }

      else
      {
        KeyPath = swift_getKeyPath();
        MEMORY[0x1EEE9AC00](KeyPath);
        *(&v33 - 2) = v20;
        *(&v33 - 8) = v21;
        v35 = v20;
        sub_1D2519BF0(&qword_1ED8A2D20, type metadata accessor for PreviewsViewModel);
        sub_1D28719D8();
      }

      v24 = sub_1D2874598();
      v25 = (a3 + v14[14]);
      v26 = *v25;
      v27 = *(v25 + 1);
      LOBYTE(v35) = v26;
      v36 = v27;
      LOBYTE(v34) = v24 & 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE890);
      sub_1D2877318();
      if (sub_1D2874598())
      {
        return sub_1D250F57C(0);
      }

      else
      {
        result = sub_1D2874598();
        if (result)
        {
          v28 = (a3 + v14[5]);
          v29 = v28[1];
          v30 = v28[2];
          v35 = *v28;
          v36 = v29;
          v37 = v30;
          v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA6B0);
          MEMORY[0x1D389FF60](&v34, v31);
          sub_1D2877618();
          v32 = sub_1D25A3F44();

          if (v32)
          {
            return sub_1D250EB5C(1);
          }

          else
          {
            sub_1D2877618();
            sub_1D25A4614();
          }
        }
      }
    }
  }

  return result;
}

double sub_1D2515F8C@<D0>(double *a1@<X8>)
{
  sub_1D2874D68();
  v3 = v2;
  sub_1D2874D48();
  result = v3 / v4;
  *a1 = result;
  return result;
}

uint64_t sub_1D2515FCC(double *a1, double *a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9490);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v27 - v7;
  v9 = *a1;
  v10 = *a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DCF90);
  sub_1D2877618();
  sub_1D25A719C(v8);

  v11 = type metadata accessor for ImageGeneration.PreviewImage(0);
  LODWORD(a2) = (*(*(v11 - 8) + 48))(v8, 1, v11);
  result = sub_1D22BD238(v8, &qword_1EC6D9490);
  if (a2 != 1)
  {
    v13 = type metadata accessor for PreviewsView();
    v14 = (a3 + v13[14]);
    v15 = *v14;
    v16 = *(v14 + 1);
    LOBYTE(v28) = v15;
    v29 = v16;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE890);
    result = sub_1D2877308();
    if (LOBYTE(v27) == 1)
    {
      v17 = (a3 + v13[5]);
      v18 = *v17;
      v19 = v17[1];
      v20 = v17[2];
      v28 = *v17;
      v29 = v19;
      v30 = v20;
      v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA6B0);
      MEMORY[0x1D389FF60](&v27);
      if (v27 >= 1.0)
      {
        sub_1D2877618();
        v26 = sub_1D25A3F44();

        if (v26)
        {
          return result;
        }

        sub_1D2877618();
        sub_1D25A4614();
      }

      else
      {
        v28 = v18;
        v29 = v19;
        v30 = v20;
        MEMORY[0x1D389FF60](&v27, v21, v27);
        v22 = fmin(vabdd_f64(v9, v10) + v27, 1.0);
        v28 = v18;
        v29 = v19;
        v30 = v20;
        v27 = v22;
        sub_1D28774F8();
        v23 = (a3 + v13[10]);
        v24 = *v23;
        v25 = v23[1];
        v27 = v22;
        v28 = v24;
        v29 = v25;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA708);
        sub_1D2877318();
        sub_1D2877618();
        sub_1D25A79AC(v22);
      }
    }
  }

  return result;
}

uint64_t sub_1D2516284()
{
  type metadata accessor for PreviewsView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA700);
  return sub_1D2877318();
}

uint64_t sub_1D2516300()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DCF90);
  sub_1D2877618();
  sub_1D25A8A24();
}

uint64_t sub_1D2516354@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for PreviewsView();
  v74 = *(v4 - 8);
  v5 = *(v74 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DD030);
  v75 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v77 = &v67 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = v7;
  MEMORY[0x1EEE9AC00](v8);
  v78 = &v67 - v9;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DD038);
  MEMORY[0x1EEE9AC00](v79);
  v11 = &v67 - v10;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DD040);
  MEMORY[0x1EEE9AC00](v82);
  v84 = &v67 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DD048);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v67 - v14;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DD050);
  MEMORY[0x1EEE9AC00](v83);
  v17 = &v67 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DD058);
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v81 = &v67 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v80 = &v67 - v22;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DCF90);
  v86 = a1;
  sub_1D2877618();
  v23 = sub_1D25A8BD4();

  if (v23)
  {
    v69 = v17;
    v70 = v15;
    v71 = v19;
    v72 = v18;
    v73 = a2;
    v68 = v11;
    v24 = v86;
    sub_1D2877618();
    v67 = sub_1D25A8EC8();

    sub_1D25191B8(v24, &v67 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PreviewsView);
    sub_1D2878568();
    v25 = sub_1D2878558();
    v26 = (*(v74 + 80) + 32) & ~*(v74 + 80);
    v27 = swift_allocObject();
    v28 = MEMORY[0x1E69E85E0];
    *(v27 + 16) = v25;
    *(v27 + 24) = v28;
    sub_1D2519120(&v67 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v27 + v26, type metadata accessor for PreviewsView);
    v29 = v24;
    v30 = v68;
    sub_1D25191B8(v29, &v67 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PreviewsView);
    v31 = sub_1D2878558();
    v32 = swift_allocObject();
    *(v32 + 16) = v31;
    *(v32 + 24) = v28;
    sub_1D2519120(&v67 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v32 + v26, type metadata accessor for PreviewsView);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DD060);
    v33 = v78;
    sub_1D2877528();
    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DD068);
    v35 = v30 + v34[11];
    *v35 = sub_1D28742D8() & 1;
    *(v35 + 8) = v36;
    *(v35 + 16) = v37 & 1;
    swift_getKeyPath();
    sub_1D28746D8();
    v38 = (v30 + v34[13]);
    sub_1D24C9220(v87);
    v39 = v87[3];
    v38[2] = v87[2];
    v38[3] = v39;
    v40 = v87[5];
    v38[4] = v87[4];
    v38[5] = v40;
    v41 = v87[1];
    *v38 = v87[0];
    v38[1] = v41;
    v42 = v67;
    *(v30 + v34[9]) = v67;
    sub_1D22BD1D0(v33, v30 + v34[10], &qword_1EC6DD030);
    v43 = v77;
    sub_1D22BD1D0(v33, v77, &qword_1EC6DD030);
    v44 = (*(v75 + 80) + 24) & ~*(v75 + 80);
    v45 = swift_allocObject();
    *(v45 + 16) = v42;
    sub_1D22EC9BC(v43, v45 + v44, &qword_1EC6DD030);
    sub_1D2870F68();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DD070);
    sub_1D2874328();
    sub_1D22BD238(v33, &qword_1EC6DD030);
    if (qword_1EC6D8D70 != -1)
    {
      swift_once();
    }

    *(v30 + *(v79 + 36)) = qword_1EC6E3FC8;
    sub_1D2870F78();
    sub_1D2877618();
    v46 = v88;
    swift_getKeyPath();
    *&v88 = v46;
    sub_1D2519BF0(&qword_1ED8A2D20, type metadata accessor for PreviewsViewModel);
    sub_1D28719E8();

    v47 = v84;
    v48 = v82;
    if (*(v46 + 16))
    {
      v49 = sub_1D25ABCF4();

      if (v49)
      {
        v50 = 1.0;
      }

      else
      {
        v50 = 0.4;
      }
    }

    else
    {

      v50 = 1.0;
    }

    v19 = v71;
    v52 = v70;
    v53 = v69;
    sub_1D22EC9BC(v30, v47, &qword_1EC6DD038);
    *(v47 + *(v48 + 36)) = v50;
    sub_1D2875798();
    if (qword_1ED89E0E8 != -1)
    {
      swift_once();
    }

    v54 = qword_1ED8B0058;
    v55 = sub_1D2876668();
    v57 = v56;
    v59 = v58;
    sub_1D2518364();
    sub_1D2876AB8();
    sub_1D22ED6E0(v55, v57, v59 & 1);

    sub_1D22BD238(v47, &qword_1EC6DD040);
    sub_1D2877848();
    sub_1D28748C8();
    sub_1D22EC9BC(v52, v53, &qword_1EC6DD048);
    v60 = (v53 + *(v83 + 36));
    v61 = v89;
    *v60 = v88;
    v60[1] = v61;
    v60[2] = v90;
    v62 = v81;
    sub_1D22EC9BC(v53, v81, &qword_1EC6DD050);
    v18 = v72;
    *(v62 + *(v72 + 36)) = xmmword_1D288F9C0;
    v63 = v62;
    v64 = v80;
    sub_1D22EC9BC(v63, v80, &qword_1EC6DD058);
    v65 = v64;
    a2 = v73;
    sub_1D22EC9BC(v65, v73, &qword_1EC6DD058);
    v51 = 0;
  }

  else
  {
    v51 = 1;
  }

  return (*(v19 + 56))(a2, v51, 1, v18);
}

uint64_t sub_1D2516DB4@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DCF90);
  sub_1D2877618();
  sub_1D25A9658(a1);
}

uint64_t sub_1D2516E10()
{
  sub_1D2877938();
  sub_1D2874BE8();
}

uint64_t sub_1D2516E7C(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DCF90);
  sub_1D2877618();
  sub_1D25A9FE0(a2);
}

uint64_t sub_1D2516EE0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DCF90);
  sub_1D2877618();
  v0 = sub_1D25D66F4(MEMORY[0x1E69E7CC0]);
  sub_1D25AB3C4(v0);
  v1 = sub_1D23DB630(0xC);
  sub_1D25AB238(v1);
}

void sub_1D2516F4C(uint64_t a1, _BYTE *a2, uint64_t a3)
{
  v5 = type metadata accessor for PreviewsView();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  if (*a2 == 1)
  {
    v9 = a3 + *(v8 + 48);
    v10 = *v9;
    v11 = *(v9 + 8);
    v19 = v10;
    v20 = v11;
    LOBYTE(v18) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE890);
    sub_1D2877318();
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v13 = Strong;
      sub_1D25191B8(a3, &v17[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)], type metadata accessor for PreviewsView);
      v14 = (*(v6 + 80) + 16) & ~*(v6 + 80);
      v15 = swift_allocObject();
      sub_1D2519120(&v17[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)], v15 + v14, type metadata accessor for PreviewsView);
      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath);
      *&v17[-32] = v13;
      *&v17[-24] = sub_1D2517B9C;
      *&v17[-16] = v15;
      v18 = v13;
      sub_1D2519BF0(&qword_1ED89FD50, type metadata accessor for HomeAnimationCoordinator);
      sub_1D28719D8();
    }
  }
}

uint64_t sub_1D25171BC()
{
  type metadata accessor for PreviewsView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE890);
  return sub_1D2877318();
}

uint64_t sub_1D2517260@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D2519BF0(&qword_1ED8A2D20, type metadata accessor for PreviewsViewModel);
  sub_1D28719E8();

  *a2 = *(v3 + 19);
  return result;
}

uint64_t sub_1D2517330@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D2519BF0(&qword_1ED8A2D20, type metadata accessor for PreviewsViewModel);
  sub_1D28719E8();

  *a2 = *(v3 + OBJC_IVAR____TtC23ImagePlaygroundInternal17PreviewsViewModel__isInIdleScrollPhase);
  return result;
}

unint64_t sub_1D2517408()
{
  result = qword_1EC6DCFD0;
  if (!qword_1EC6DCFD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DCFA0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DCFD8);
    sub_1D25174DC();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DCFD0);
  }

  return result;
}

unint64_t sub_1D25174DC()
{
  result = qword_1EC6DCFE0;
  if (!qword_1EC6DCFE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DCFD8);
    sub_1D2517568();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DCFE0);
  }

  return result;
}

unint64_t sub_1D2517568()
{
  result = qword_1EC6DCFE8;
  if (!qword_1EC6DCFE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DCFF0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DCFF8);
    sub_1D22BB9D8(&qword_1EC6DD000, &qword_1EC6DCFF8);
    swift_getOpaqueTypeConformance2();
    sub_1D22BB9D8(&qword_1EC6DD008, &qword_1EC6DD010);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DCFE8);
  }

  return result;
}

uint64_t sub_1D25176A8(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for PreviewsView() - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

unint64_t sub_1D25177D8()
{
  result = qword_1EC6DD018;
  if (!qword_1EC6DD018)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DCFC8);
    sub_1D2517864();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DD018);
  }

  return result;
}

unint64_t sub_1D2517864()
{
  result = qword_1EC6DD020;
  if (!qword_1EC6DD020)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DCFC0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DCFB0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DCFA8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DCF98);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DCFA0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DA670);
    sub_1D2517408();
    sub_1D22BB9D8(&qword_1ED89DED8, &qword_1EC6DA670);
    swift_getOpaqueTypeConformance2();
    sub_1D22BB9D8(&qword_1ED89DEE8, &qword_1EC6DCF98);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DD020);
  }

  return result;
}

void sub_1D2517AF0(uint64_t a1, _BYTE *a2)
{
  v5 = *(type metadata accessor for PreviewsView() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  sub_1D2516F4C(a1, a2, v6);
}

uint64_t sub_1D2517BB4(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for PreviewsView() - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_1D2517C48@<X0>(uint64_t a1@<X0>, char **a2@<X8>)
{
  v4 = type metadata accessor for PreviewsViewModel.LoadingPageControlIndicator(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DD060);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v23 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8F70);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v23 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DD030);
  MEMORY[0x1D389FF60](v17);
  if ((*(v5 + 48))(v10, 1, v4))
  {
    sub_1D22BD238(v10, &qword_1EC6DD060);
    v18 = sub_1D2871818();
    (*(*(v18 - 8) + 56))(v16, 1, 1, v18);
  }

  else
  {
    sub_1D25191B8(v10, v7, type metadata accessor for PreviewsViewModel.LoadingPageControlIndicator);
    sub_1D22BD238(v10, &qword_1EC6DD060);
    v18 = sub_1D2871818();
    v19 = *(v18 - 8);
    (*(v19 + 16))(v16, v7, v18);
    sub_1D25190C0(v7, type metadata accessor for PreviewsViewModel.LoadingPageControlIndicator);
    (*(v19 + 56))(v16, 0, 1, v18);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DD070);
  v20 = swift_allocObject();
  v21 = *(*v20 + 104);
  sub_1D2871818();
  (*(*(v18 - 8) + 56))(&v20[v21], 1, 1, v18);
  sub_1D2871A18();
  *(v20 + 2) = a1;
  sub_1D22BD1D0(v16, v13, &qword_1EC6D8F70);
  sub_1D2870F68();
  sub_1D250E37C(v13);
  result = sub_1D22BD238(v16, &qword_1EC6D8F70);
  *a2 = v20;
  return result;
}

uint64_t sub_1D2518010@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for PreviewsView();

  return sub_1D2516DB4(a1);
}

uint64_t objectdestroy_69Tm()
{
  v1 = (type metadata accessor for PreviewsView() - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  swift_unknownObjectRelease();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DCF90);
  (*(*(v3 - 8) + 8))(v0 + v2, v3);

  sub_1D22EE66C(*(v0 + v2 + v1[11]), *(v0 + v2 + v1[11] + 8));

  v4 = v1[20];
  v5 = sub_1D2871DD8();
  (*(*(v5 - 8) + 8))(v0 + v2 + v4, v5);

  return swift_deallocObject();
}

uint64_t sub_1D2518270()
{
  type metadata accessor for PreviewsView();

  return sub_1D2516E10();
}

uint64_t sub_1D25182E4@<X0>(char **a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DD030);
  v3 = *(v1 + 16);

  return sub_1D2517C48(v3, a1);
}

unint64_t sub_1D2518364()
{
  result = qword_1EC6DD078;
  if (!qword_1EC6DD078)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DD040);
    sub_1D25183F0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DD078);
  }

  return result;
}

unint64_t sub_1D25183F0()
{
  result = qword_1EC6DD080;
  if (!qword_1EC6DD080)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DD038);
    sub_1D22BB9D8(qword_1ED8A0E08, &qword_1EC6DD068);
    sub_1D22BB9D8(&qword_1ED89D4A0, &qword_1EC6DB918);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DD080);
  }

  return result;
}

uint64_t sub_1D25184D4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D2871818();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8F70);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v21 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D94F0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v21 - v12;
  v15 = *(v14 + 56);
  sub_1D22BD1D0(a1, &v21 - v12, &qword_1EC6D8F70);
  sub_1D22BD1D0(a2, &v13[v15], &qword_1EC6D8F70);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) != 1)
  {
    sub_1D22BD1D0(v13, v10, &qword_1EC6D8F70);
    if (v16(&v13[v15], 1, v4) != 1)
    {
      (*(v5 + 32))(v7, &v13[v15], v4);
      sub_1D2519BF0(&unk_1ED8A6CA0, MEMORY[0x1E69695A8]);
      v18 = sub_1D2877F98();
      v19 = *(v5 + 8);
      v19(v7, v4);
      v19(v10, v4);
      sub_1D22BD238(v13, &qword_1EC6D8F70);
      v17 = v18 ^ 1;
      return v17 & 1;
    }

    (*(v5 + 8))(v10, v4);
    goto LABEL_6;
  }

  if (v16(&v13[v15], 1, v4) != 1)
  {
LABEL_6:
    sub_1D22BD238(v13, &qword_1EC6D94F0);
    v17 = 1;
    return v17 & 1;
  }

  sub_1D22BD238(v13, &qword_1EC6D8F70);
  v17 = 0;
  return v17 & 1;
}

uint64_t sub_1D25187F4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8F70);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

unint64_t sub_1D251889C()
{
  result = qword_1EC6DD0A8;
  if (!qword_1EC6DD0A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DD088);
    sub_1D2518920();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DD0A8);
  }

  return result;
}

unint64_t sub_1D2518920()
{
  result = qword_1EC6DD0B0;
  if (!qword_1EC6DD0B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DD0B8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DD0C0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6D8F70);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DD0C8);
    type metadata accessor for CGSize(255);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DD0D0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DD0D8);
    sub_1D2518B2C();
    swift_getOpaqueTypeConformance2();
    sub_1D2403664();
    swift_getOpaqueTypeConformance2();
    sub_1D2519BF0(&unk_1ED89CCD0, type metadata accessor for CGSize);
    swift_getOpaqueTypeConformance2();
    sub_1D22BB064();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DD0B0);
  }

  return result;
}

unint64_t sub_1D2518B2C()
{
  result = qword_1EC6DD0E0;
  if (!qword_1EC6DD0E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DD0D8);
    sub_1D2518BB8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DD0E0);
  }

  return result;
}

unint64_t sub_1D2518BB8()
{
  result = qword_1EC6DD0E8;
  if (!qword_1EC6DD0E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DD0F0);
    sub_1D2518C70();
    sub_1D22BB9D8(&qword_1EC6DD118, &qword_1EC6DD120);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DD0E8);
  }

  return result;
}

unint64_t sub_1D2518C70()
{
  result = qword_1EC6DD0F8;
  if (!qword_1EC6DD0F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DD100);
    sub_1D22BB9D8(&qword_1EC6DD108, &qword_1EC6DD110);
    sub_1D2518D28();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DD0F8);
  }

  return result;
}

unint64_t sub_1D2518D28()
{
  result = qword_1ED89EE50[0];
  if (!qword_1ED89EE50[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED89EE50);
  }

  return result;
}

uint64_t sub_1D2518D7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for PreviewsView() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_1D251566C(a1, v6, a2);
}

uint64_t sub_1D2518DFC(void *a1)
{
  type metadata accessor for PreviewsView();

  return sub_1D25157BC(a1);
}

uint64_t sub_1D2518E6C(double a1)
{
  v3 = *(type metadata accessor for PreviewsView() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_1D251582C(v4, a1);
}

uint64_t sub_1D2518EE4(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for PreviewsView() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_1D2515AD0(a1, a2, v6);
}

uint64_t sub_1D2518F64(double *a1, double *a2)
{
  v5 = *(type metadata accessor for PreviewsView() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_1D2515FCC(a1, a2, v6);
}

uint64_t sub_1D2518FE4()
{
  type metadata accessor for PreviewsView();

  return sub_1D2516284();
}

uint64_t sub_1D25190C0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D2519120(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D25191B8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_1D2519220()
{
  result = qword_1EC6DD168;
  if (!qword_1EC6DD168)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DD150);
    sub_1D25192D8();
    sub_1D22BB9D8(&qword_1ED89D348, &unk_1EC6E1DF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DD168);
  }

  return result;
}

unint64_t sub_1D25192D8()
{
  result = qword_1EC6DD170;
  if (!qword_1EC6DD170)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DD148);
    sub_1D22BB9D8(qword_1ED8A1CA8, &qword_1EC6DD158);
    sub_1D22BB9D8(&qword_1EC6DD118, &qword_1EC6DD120);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DD170);
  }

  return result;
}

uint64_t sub_1D25193BC()
{
  v1 = *(type metadata accessor for PreviewsView() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(type metadata accessor for ImageGeneration.PreviewImage(0) - 8);
  v5 = v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80));

  return sub_1D2513C5C(v0 + v2, v5);
}

unint64_t sub_1D2519488()
{
  result = qword_1EC6D7C70;
  if (!qword_1EC6D7C70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DD188);
    sub_1D22BB9D8(&qword_1ED89D2D0, &qword_1EC6D9FE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6D7C70);
  }

  return result;
}

unint64_t sub_1D2519540()
{
  result = qword_1EC6DD198;
  if (!qword_1EC6DD198)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DD178);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DC998);
    sub_1D2875718();
    sub_1D22BB9D8(&qword_1ED89D130, &qword_1EC6DC998);
    sub_1D2519BF0(&qword_1ED89D6B0, MEMORY[0x1E697C4E8]);
    swift_getOpaqueTypeConformance2();
    sub_1D22BB9D8(&qword_1ED89D2D0, &qword_1EC6D9FE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DD198);
  }

  return result;
}

unint64_t sub_1D25196B8()
{
  result = qword_1ED89D980;
  if (!qword_1ED89D980)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DD1B0);
    sub_1D2519770();
    sub_1D22BB9D8(&qword_1ED89D4A8, &qword_1EC6DA6F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89D980);
  }

  return result;
}

unint64_t sub_1D2519770()
{
  result = qword_1ED89DB48;
  if (!qword_1ED89DB48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DD1B8);
    sub_1D25197FC();
    sub_1D2519850();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89DB48);
  }

  return result;
}

unint64_t sub_1D25197FC()
{
  result = qword_1ED89D028;
  if (!qword_1ED89D028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89D028);
  }

  return result;
}

unint64_t sub_1D2519850()
{
  result = qword_1ED89D750;
  if (!qword_1ED89D750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89D750);
  }

  return result;
}

uint64_t objectdestroyTm_14()
{
  v1 = (type metadata accessor for PreviewsView() - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DCF90);
  (*(*(v3 - 8) + 8))(v2, v3);

  sub_1D22EE66C(*(v2 + v1[11]), *(v2 + v1[11] + 8));

  v4 = v1[20];
  v5 = sub_1D2871DD8();
  (*(*(v5 - 8) + 8))(v2 + v4, v5);

  return swift_deallocObject();
}

uint64_t sub_1D2519AA0(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  v6 = *(type metadata accessor for PreviewsView() - 8);
  v7 = v3 + ((*(v6 + 80) + 16) & ~*(v6 + 80));

  return a3(a1, a2, v7);
}

unint64_t sub_1D2519B34()
{
  result = qword_1ED89D8A8;
  if (!qword_1ED89D8A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DD1A0);
    sub_1D25196B8();
    sub_1D2519BF0(&qword_1ED89D2B0, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89D8A8);
  }

  return result;
}

uint64_t sub_1D2519BF0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1D2519C38()
{
  result = qword_1EC6D8BD8;
  if (!qword_1EC6D8BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6D8BD8);
  }

  return result;
}

void sub_1D2519D04()
{
  type metadata accessor for StylePickerViewModel();
  if (v0 <= 0x3F)
  {
    sub_1D2522E90(319, &qword_1ED89D190, MEMORY[0x1E6981790]);
    if (v1 <= 0x3F)
    {
      sub_1D2522EE4(319, &qword_1ED89DF38, sub_1D22BFBB8);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1D2519E08(uint64_t a1, int a2)
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

uint64_t sub_1D2519E28(uint64_t result, int a2, int a3)
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

__n128 __swift_memcpy90_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 74) = *(a2 + 74);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_1D2519EB8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 90))
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

uint64_t sub_1D2519F00(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 88) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 90) = 1;
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

    *(result + 90) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1D2519F84@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v91 = a1;
  v3 = sub_1D28718F8();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v93 = &v74 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = sub_1D28714D8();
  v89 = *(v92 - 8);
  MEMORY[0x1EEE9AC00](v92);
  v90 = &v74 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1D2878048();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v88 = &v74 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = sub_1D2872008();
  v84 = *(v86 - 8);
  MEMORY[0x1EEE9AC00](v86);
  v82 = &v74 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = type metadata accessor for PhotoSharingConfirmationParams(0);
  MEMORY[0x1EEE9AC00](v83);
  v87 = &v74 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v85 = &v74 - v11;
  v81 = sub_1D2875EE8();
  v80 = *(v81 - 8);
  MEMORY[0x1EEE9AC00](v81);
  v79 = (&v74 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v78 = sub_1D2876088();
  v77 = *(v78 - 8);
  MEMORY[0x1EEE9AC00](v78);
  v14 = &v74 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9050);
  v15 = *(v74 - 8);
  MEMORY[0x1EEE9AC00](v74);
  v17 = &v74 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6D9040);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v74 - v19;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DD3D0);
  v76 = *(v75 - 8);
  MEMORY[0x1EEE9AC00](v75);
  v22 = &v74 - v21;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9028);
  MEMORY[0x1EEE9AC00](v94);
  v24 = &v74 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v95 = &v74 - v26;
  v27 = swift_allocObject();
  v28 = *(v2 + 80);
  v27[5] = *(v2 + 64);
  v27[6] = v28;
  *(v27 + 105) = *(v2 + 89);
  v29 = *(v2 + 16);
  v27[1] = *v2;
  v27[2] = v29;
  v30 = *(v2 + 48);
  v27[3] = *(v2 + 32);
  v27[4] = v30;
  v96 = v2;
  sub_1D252338C(v2, &v102);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DD3D8);
  sub_1D25233C4();
  sub_1D2877368();
  sub_1D2876068();
  sub_1D22BB9D8(&qword_1EC6D76F8, &qword_1EC6D9050);
  v31 = v74;
  sub_1D2876BE8();
  (*(v77 + 8))(v14, v78);
  (*(v15 + 8))(v17, v31);
  *&v20[*(v18 + 36)] = 0x3FF0000000000000;
  v32 = sub_1D22BB5E0();
  v33 = sub_1D22BB708();
  sub_1D28767B8();
  sub_1D22BD238(v20, &unk_1EC6D9040);
  *&v102 = v18;
  *(&v102 + 1) = &type metadata for CapsuleStylePickerButtonStyle;
  v103 = v32;
  v104 = v33;
  swift_getOpaqueTypeConformance2();
  v34 = v75;
  sub_1D2876CC8();
  (*(v76 + 8))(v22, v34);
  sub_1D2875798();
  if (qword_1ED89E0E8 != -1)
  {
    swift_once();
  }

  v35 = qword_1ED8B0058;
  v36 = sub_1D2876668();
  v38 = v37;
  v40 = v39;
  sub_1D2874F08();
  sub_1D22ED6E0(v36, v38, v40 & 1);

  sub_1D22BD238(v24, &qword_1EC6D9028);
  v105 = *v2;
  v100 = *v2;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DD3E0);
  sub_1D2877328();
  v41 = v102;
  v42 = v103;
  swift_getKeyPath();
  v100 = v41;
  v101 = v42;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DD3E8);
  sub_1D2877508();

  v76 = v97;
  v75 = v98;
  LODWORD(v77) = v99;

  v43 = *(v2 + 104);
  v44 = swift_allocObject();
  v45 = *(v2 + 80);
  v44[5] = *(v2 + 64);
  v44[6] = v45;
  *(v44 + 105) = *(v2 + 89);
  v46 = *(v2 + 16);
  v44[1] = *v2;
  v44[2] = v46;
  v47 = *(v2 + 48);
  v44[3] = *(v2 + 32);
  v44[4] = v47;
  sub_1D252338C(v2, &v102);
  v48 = sub_1D2877348();
  v49 = v79;
  *v79 = v48;
  v50 = v80;
  v51 = v81;
  (*(v80 + 104))(v49, *MEMORY[0x1E697C8C0], v81);
  LODWORD(v74) = MEMORY[0x1D389EE20](v43);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6D9030);
  sub_1D22BB4CC();
  v52 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6D9060);
  v53 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC6D9068);
  v54 = sub_1D22BB9D8(&qword_1EC6D7EE0, &unk_1EC6D9068);
  *&v102 = v53;
  *(&v102 + 1) = v54;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  *&v102 = v52;
  *(&v102 + 1) = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v56 = v91;
  v57 = v95;
  sub_1D2876848();

  (*(v50 + 8))(v49, v51);
  sub_1D22BD238(v57, &qword_1EC6D9028);
  v102 = v105;
  sub_1D2877308();
  v58 = v82;
  sub_1D2871EC8();
  v102 = v105;
  sub_1D2877308();
  v59 = v100;
  swift_getKeyPath();
  *&v102 = v59;
  sub_1D2521B64(qword_1EC6D8488, type metadata accessor for StylePickerViewModel);
  sub_1D28719E8();

  LOBYTE(v57) = *(v59 + OBJC_IVAR____TtC23ImagePlaygroundInternal20StylePickerViewModel__shouldShowStylesPopover);

  v60 = v85;
  sub_1D2644270(v58, (v57 & 1) == 0, v85);

  v61 = v84;
  v62 = v86;
  (*(v84 + 8))(v58, v86);
  v63 = v87;
  sub_1D2522750(v60, v87, type metadata accessor for PhotoSharingConfirmationParams);
  v64 = v56 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DD3F0) + 36);
  sub_1D2522750(v63, v64, type metadata accessor for PhotoSharingConfirmationParams);
  v65 = v64 + *(type metadata accessor for PhotoSharingConfirmationViewModifier(0) + 20);
  (*(v61 + 16))(v65, v63, v62);
  v66 = (v63 + v83[5]);
  v68 = *v66;
  v67 = v66[1];
  LOBYTE(v61) = *(v63 + v83[6]);
  LOBYTE(v58) = *(v63 + v83[7]);
  v69 = type metadata accessor for PhotoSharingViewConfiguration(0);
  v70 = (v65 + v69[5]);
  *v70 = v68;
  v70[1] = v67;
  *(v65 + v69[6]) = v61;
  *(v65 + v69[7]) = v58;
  sub_1D2870F68();
  sub_1D2877FE8();
  if (qword_1ED89E0F0 != -1)
  {
    swift_once();
  }

  v71 = v92;
  v72 = __swift_project_value_buffer(v92, qword_1ED8B0060);
  (*(v89 + 16))(v90, v72, v71);
  sub_1D28718C8();
  sub_1D2871508();
  sub_1D25227B8(v63, type metadata accessor for PhotoSharingConfirmationParams);
  sub_1D25227B8(v60, type metadata accessor for PhotoSharingConfirmationParams);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DD3F8);
  *(v56 + *(result + 36)) = 0x3FF0000000000000;
  return result;
}

uint64_t sub_1D251AE08()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DD3E0);
  sub_1D2877308();
  if (*(v2 + OBJC_IVAR____TtC23ImagePlaygroundInternal20StylePickerViewModel__shouldShowStylesPopover) == 1)
  {
    *(v2 + OBJC_IVAR____TtC23ImagePlaygroundInternal20StylePickerViewModel__shouldShowStylesPopover) = 1;
    sub_1D264698C(1);
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D2521B64(qword_1EC6D8488, type metadata accessor for StylePickerViewModel);
    sub_1D28719D8();
  }
}

uint64_t sub_1D251AF68(uint64_t a1)
{
  v11[0] = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DD3E0);
  sub_1D2877308();
  v2 = *(a1 + 16);
  v3 = *(a1 + 80);
  v8 = *(a1 + 64);
  v9[0] = v3;
  *(v9 + 9) = *(a1 + 89);
  v4 = *(a1 + 48);
  v7[0] = *(a1 + 32);
  v7[1] = v4;
  *&v10[23] = v4;
  *&v10[39] = v8;
  *&v10[55] = v3;
  *&v10[64] = *(v9 + 9);
  *&v10[7] = v7[0];
  v6[8] = v2;
  *&v6[25] = *&v10[16];
  *&v6[41] = *&v10[32];
  *&v6[57] = *&v10[48];
  *&v6[73] = *(v9 + 9);
  *&v6[9] = *v10;
  v6[89] = 0;
  sub_1D2523598(v7, v11);
  sub_1D28779E8();
  sub_1D2523490();
  sub_1D2876CD8();
  v11[2] = *&v6[32];
  v11[3] = *&v6[48];
  v12[0] = *&v6[64];
  *(v12 + 10) = *&v6[74];
  v11[0] = *v6;
  v11[1] = *&v6[16];
  return sub_1D25235D0(v11);
}

uint64_t sub_1D251B0B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  v3 = sub_1D2876038();
  v33 = *(v3 - 8);
  v34 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v31 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_1D2875B78();
  v25 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6D9068);
  v7 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v9 = &v25 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9060);
  v29 = *(v10 - 8);
  v30 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v27 = &v25 - v11;
  v35 = a1;
  sub_1D2876318();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DD400);
  v12 = type metadata accessor for StylesPopover(255);
  v13 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC6DE860);
  v14 = sub_1D2521B64(&qword_1EC6D88E0, type metadata accessor for StylesPopover);
  v15 = sub_1D22BB9D8(&qword_1ED89CBF0, &unk_1EC6DE860);
  v36 = v12;
  v37 = v13;
  v38 = v14;
  v39 = v15;
  swift_getOpaqueTypeConformance2();
  sub_1D28743A8();
  sub_1D2875B68();
  LOBYTE(a1) = sub_1D2876318();
  sub_1D2876308();
  sub_1D2876308();
  if (sub_1D2876308() != a1)
  {
    sub_1D2876308();
  }

  v16 = sub_1D22BB9D8(&qword_1EC6D7EE0, &unk_1EC6D9068);
  v18 = v27;
  v17 = v28;
  sub_1D2876C28();
  (*(v25 + 8))(v6, v26);
  (*(v7 + 8))(v9, v17);
  v19 = v31;
  sub_1D2876028();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DBDD0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D287F550;
  v21 = sub_1D2876318();
  *(inited + 32) = v21;
  v22 = sub_1D28762F8();
  *(inited + 33) = v22;
  sub_1D2876308();
  sub_1D2876308();
  if (sub_1D2876308() != v21)
  {
    sub_1D2876308();
  }

  sub_1D2876308();
  if (sub_1D2876308() != v22)
  {
    sub_1D2876308();
  }

  v36 = v17;
  v37 = v16;
  swift_getOpaqueTypeConformance2();
  v23 = v30;
  sub_1D2876A48();
  (*(v33 + 8))(v19, v34);
  return (*(v29 + 8))(v18, v23);
}

uint64_t sub_1D251B5F0(__int128 *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE860);
  MEMORY[0x1EEE9AC00](v2);
  v4 = v12 - v3;
  v5 = type metadata accessor for StylesPopover(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1D28779E8();
  v13 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DD3E0);
  sub_1D2877308();
  sub_1D251B874(v8, v12[1], v7);
  v9 = *MEMORY[0x1E697E720];
  v10 = sub_1D2874E88();
  (*(*(v10 - 8) + 104))(v4, v9, v10);
  sub_1D2521B64(&qword_1ED89DE70, MEMORY[0x1E697E730]);
  result = sub_1D2877F98();
  if (result)
  {
    sub_1D2521B64(&qword_1EC6D88E0, type metadata accessor for StylesPopover);
    sub_1D22BB9D8(&qword_1ED89CBF0, &unk_1EC6DE860);
    sub_1D28769B8();
    sub_1D22BD238(v4, &unk_1EC6DE860);
    return sub_1D25227B8(v7, type metadata accessor for StylesPopover);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D251B874@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v23 = sub_1D2872008();
  v6 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v8 = v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1D28764E8();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(a3 + 48) = xmmword_1D288FFB0;
  *(a3 + 64) = xmmword_1D288FFC0;
  *(a3 + 80) = xmmword_1D288FFD0;
  *(a3 + 96) = xmmword_1D288FFE0;
  v13 = type metadata accessor for StylesPopover(0);
  v27 = 0x4071800000000000;
  (*(v10 + 104))(v12, *MEMORY[0x1E6980EE8], v9);
  sub_1D22BFBB8();
  sub_1D2874748();
  *(a3 + v13[10]) = 0x406C200000000000;
  *(a3 + v13[11]) = 0x407DB00000000000;
  *(a3 + v13[12]) = 0x4058800000000000;
  *a3 = a1;
  *(a3 + 8) = a2;
  swift_getKeyPath();
  v22[2] = OBJC_IVAR____TtC23ImagePlaygroundInternal20StylePickerViewModel___observationRegistrar;
  v27 = a2;
  v22[1] = sub_1D2521B64(qword_1EC6D8488, type metadata accessor for StylePickerViewModel);
  sub_1D2870F78();
  sub_1D28719E8();

  v14 = OBJC_IVAR____TtC23ImagePlaygroundInternal20StylePickerViewModel__selectedItem;
  swift_beginAccess();
  v22[0] = *(v6 + 16);
  v15 = v8;
  v16 = v8;
  v17 = v23;
  (v22[0])(v16, a2 + v14, v23);
  LOBYTE(a1) = sub_1D2871F78();
  v18 = *(v6 + 8);
  v18(v15, v17);
  v24 = a1 & 1;
  sub_1D28772F8();
  v19 = v26;
  *(a3 + 16) = v25;
  *(a3 + 24) = v19;
  swift_getKeyPath();
  v25 = a2;
  sub_1D28719E8();

  (v22[0])(v15, a2 + v14, v17);
  LOBYTE(a1) = sub_1D2871F78();
  v18(v15, v17);
  v24 = a1 & 1;
  sub_1D28772F8();

  v21 = v26;
  *(a3 + 32) = v25;
  *(a3 + 40) = v21;
  return result;
}

uint64_t sub_1D251BC74@<X0>(uint64_t a1@<X8>)
{
  v21 = a1;
  v1 = sub_1D28771B8();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DD298);
  MEMORY[0x1EEE9AC00](v20);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v20 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DD2A0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v20 - v14;
  sub_1D251C084(&v20 - v14);
  sub_1D2877198();
  (*(v2 + 104))(v4, *MEMORY[0x1E6981630], v1);
  v16 = sub_1D2877228();

  (*(v2 + 8))(v4, v1);
  LODWORD(v1) = sub_1D2875DA8();
  sub_1D2877858();
  sub_1D28748C8();
  v27 = 0;
  *&v22 = v16;
  *(&v22 + 1) = 0x3FE6666666666666;
  LOWORD(v23) = 0;
  DWORD1(v23) = v1;
  sub_1D2876418();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DD2A8);
  sub_1D252236C();
  sub_1D2876758();
  v28[2] = v24;
  v28[3] = v25;
  v29 = v26;
  v28[0] = v22;
  v28[1] = v23;
  sub_1D22BD238(v28, &qword_1EC6DD2A8);
  if (qword_1ED89D260 != -1)
  {
    swift_once();
  }

  *&v9[*(v20 + 36)] = qword_1ED8B0018;
  sub_1D22BD1D0(v15, v12, &qword_1EC6DD2A0);
  sub_1D22BD1D0(v9, v6, &qword_1EC6DD298);
  v17 = v21;
  sub_1D22BD1D0(v12, v21, &qword_1EC6DD2A0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DD2B8);
  sub_1D22BD1D0(v6, v17 + *(v18 + 48), &qword_1EC6DD298);
  sub_1D2870F78();
  sub_1D22BD238(v9, &qword_1EC6DD298);
  sub_1D22BD238(v15, &qword_1EC6DD2A0);
  sub_1D22BD238(v6, &qword_1EC6DD298);
  return sub_1D22BD238(v12, &qword_1EC6DD2A0);
}

uint64_t sub_1D251C084@<X0>(uint64_t a1@<X8>)
{
  v47 = a1;
  v46 = sub_1D2876088();
  v45 = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v46);
  v44 = &v32 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_1D28764E8();
  v3 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v5 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for CapsuleStylePickerButtonLabelStyle(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DD2C0);
  v37 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v10 = &v32 - v9;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DD2C8);
  v38 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39);
  v32 = &v32 - v11;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DD2D0);
  MEMORY[0x1EEE9AC00](v41);
  v34 = &v32 - v12;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DD2D8);
  v42 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43);
  v40 = &v32 - v13;
  v49 = v1;
  v48 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DD2E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DD2E8);
  sub_1D22BB9D8(&qword_1EC6D7678, &qword_1EC6DD2E0);
  sub_1D25224E0();
  sub_1D2877248();
  v14 = *(v1 + 32);
  v35 = v1;
  *v8 = 0x401C000000000000;
  *(v8 + 1) = swift_getKeyPath();
  v8[16] = 0;
  *&v54 = 0x4014000000000000;
  v15 = *(v3 + 104);
  v16 = v33;
  v15(v5, *MEMORY[0x1E6980F28], v33);
  sub_1D2459314();
  sub_1D2874748();
  v17 = &v8[*(v6 + 32)];
  *v17 = xmmword_1D288FFF0;
  *(v17 + 2) = 0x4014000000000000;
  *&v54 = v14;
  v15(v5, *MEMORY[0x1E6980F00], v16);
  v18 = v32;
  sub_1D22BFBB8();
  sub_1D2874748();
  sub_1D22BB9D8(&qword_1EC6D7738, &qword_1EC6DD2C0);
  sub_1D2521B64(&qword_1EC6D8B18, type metadata accessor for CapsuleStylePickerButtonLabelStyle);
  v19 = v36;
  sub_1D2876768();
  sub_1D25227B8(v8, type metadata accessor for CapsuleStylePickerButtonLabelStyle);
  (*(v37 + 8))(v10, v19);
  sub_1D2877848();
  sub_1D2875208();
  v20 = v34;
  (*(v38 + 32))(v34, v18, v39);
  v21 = v41;
  v22 = (v20 + *(v41 + 36));
  v23 = v59;
  v22[4] = v58;
  v22[5] = v23;
  v22[6] = v60;
  v24 = v55;
  *v22 = v54;
  v22[1] = v24;
  v25 = v57;
  v22[2] = v56;
  v22[3] = v25;
  v26 = v44;
  sub_1D2876058();
  v27 = sub_1D252259C();
  v28 = v40;
  sub_1D2876BE8();
  (*(v45 + 8))(v26, v46);
  sub_1D22BD238(v20, &qword_1EC6DD2D0);
  v52 = sub_1D251D128();
  v53 = v29;
  v50 = v21;
  v51 = v27;
  swift_getOpaqueTypeConformance2();
  sub_1D22BD06C();
  v30 = v43;
  sub_1D2876AD8();

  return (*(v42 + 8))(v28, v30);
}

uint64_t sub_1D251C8BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_1D2875928();
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DD2F0);
  return sub_1D251C910(a1, (a2 + *(v4 + 44)));
}

uint64_t sub_1D251C910@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v64 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DD2F8);
  v65 = *(v3 - 8);
  v66 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v72 = &v57 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v74 = &v57 - v6;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE860);
  MEMORY[0x1EEE9AC00](v73);
  v8 = &v57 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DD300);
  v62 = *(v9 - 8);
  v63 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v61 = &v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v75 = &v57 - v12;
  sub_1D2875798();
  if (qword_1ED89E0E8 != -1)
  {
    swift_once();
  }

  v13 = qword_1ED8B0058;
  v14 = sub_1D2876668();
  v70 = v15;
  v71 = v14;
  v17 = v16;
  v19 = v18;
  KeyPath = swift_getKeyPath();
  v21 = swift_getKeyPath();
  v22 = v17 & 1;
  LOBYTE(v89[0]) = v17 & 1;
  LOBYTE(v82) = 0;
  v23 = swift_getKeyPath();
  v67 = *(a1 + 16);
  v24 = a1;
  v25 = *(a1 + 40);
  v26 = swift_getKeyPath();
  v69 = v24;
  v68 = *(v24 + 89);
  if ((v68 & 1) == 0)
  {
    v28 = qword_1ED89D268;
    sub_1D2870F78();
    if (v28 != -1)
    {
      goto LABEL_19;
    }

    goto LABEL_6;
  }

  sub_1D2870F78();
  for (i = sub_1D2877078(); ; i = sub_1D2870F78())
  {
    *&v82 = v71;
    *(&v82 + 1) = v70;
    LOBYTE(v83) = v22;
    *(&v83 + 1) = v19;
    *&v84 = KeyPath;
    *(&v84 + 1) = 1;
    LOBYTE(v85) = 0;
    *(&v85 + 1) = v21;
    LOBYTE(v86) = 1;
    *(&v86 + 1) = v23;
    *&v87 = 0x3FECCCCCCCCCCCCDLL;
    *(&v87 + 1) = v26;
    *&v88 = v25;
    *(&v88 + 1) = i;
    v29 = *MEMORY[0x1E697E6E8];
    v19 = sub_1D2874E88();
    v30 = *(v19 - 8);
    v31 = *(v30 + 104);
    KeyPath = v30 + 104;
    v31(v8, v29, v19);
    v23 = sub_1D2521B64(&qword_1ED89DE70, MEMORY[0x1E697E730]);
    v22 = v19;
    if ((sub_1D2877F98() & 1) == 0)
    {
      __break(1u);
      goto LABEL_18;
    }

    v60 = v23;
    v70 = KeyPath;
    v71 = v31;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DD308);
    sub_1D2522818();
    v57 = sub_1D22BB9D8(&qword_1ED89CBF0, &unk_1EC6DE860);
    sub_1D28769B8();
    sub_1D22BD238(v8, &unk_1EC6DE860);
    v89[4] = v86;
    v89[5] = v87;
    v89[6] = v88;
    v89[0] = v82;
    v89[1] = v83;
    v89[2] = v84;
    v89[3] = v85;
    sub_1D22BD238(v89, &qword_1EC6DD308);
    v25 = v69;
    *&v82 = sub_1D251D128();
    *(&v82 + 1) = v32;
    sub_1D22BD06C();
    v33 = sub_1D2876698();
    v35 = v34;
    v37 = v36;
    v26 = v38;
    v67 = sub_1D2876658();
    v58 = v40;
    v59 = v39;
    v42 = v41;
    sub_1D22ED6E0(v33, v35, v37 & 1);

    v23 = swift_getKeyPath();
    KeyPath = swift_getKeyPath();
    v43 = v42 & 1;
    LOBYTE(v82) = v43;
    LOBYTE(v76) = 0;
    v21 = swift_getKeyPath();
    if (v68)
    {
      v44 = sub_1D2877088();
    }

    else if (*(v25 + 8))
    {
      if (qword_1ED89D260 != -1)
      {
        swift_once();
      }

      v44 = sub_1D2870F78();
    }

    else
    {
      v44 = sub_1D2877078();
    }

    *&v76 = v67;
    *(&v76 + 1) = v59;
    LOBYTE(v77) = v43;
    *(&v77 + 1) = v58;
    *&v78 = v23;
    *(&v78 + 1) = 1;
    LOBYTE(v79) = 0;
    *(&v79 + 1) = KeyPath;
    LOBYTE(v80) = 1;
    *(&v80 + 1) = v21;
    *&v81 = 0x3FE999999999999ALL;
    *(&v81 + 1) = v44;
    v71(v8, *MEMORY[0x1E697E6D0], v19);
    v22 = v19;
    if (sub_1D2877F98())
    {
      break;
    }

LABEL_18:
    __break(1u);
LABEL_19:
    swift_once();
LABEL_6:
    ;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DD328);
  sub_1D2522AF8();
  sub_1D28769B8();
  sub_1D22BD238(v8, &unk_1EC6DE860);
  v84 = v78;
  v85 = v79;
  v86 = v80;
  v87 = v81;
  v82 = v76;
  v83 = v77;
  sub_1D22BD238(&v82, &qword_1EC6DD328);
  v46 = v61;
  v45 = v62;
  v47 = *(v62 + 16);
  v48 = v63;
  v47(v61, v75, v63);
  v50 = v65;
  v49 = v66;
  v73 = *(v65 + 16);
  v73(v72, v74, v66);
  v51 = v64;
  v47(v64, v46, v48);
  v52 = &v51[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DD330) + 48)];
  v53 = v72;
  v73(v52, v72, v49);
  v54 = *(v50 + 8);
  v54(v74, v49);
  v55 = *(v45 + 8);
  v55(v75, v48);
  v54(v53, v49);
  return (v55)(v46, v48);
}

uint64_t sub_1D251D128()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9D58);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v28 = &v24 - v2;
  v29 = sub_1D2871F38();
  v27 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v25 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1D2872008();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v26 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v24 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v24 - v11;
  v13 = *v0;
  swift_getKeyPath();
  v14 = OBJC_IVAR____TtC23ImagePlaygroundInternal20StylePickerViewModel___observationRegistrar;
  v35 = v13;
  v30 = sub_1D2521B64(qword_1EC6D8488, type metadata accessor for StylePickerViewModel);
  v31 = v14;
  sub_1D28719E8();

  v15 = OBJC_IVAR____TtC23ImagePlaygroundInternal20StylePickerViewModel__selectedItem;
  swift_beginAccess();
  v16 = *(v5 + 16);
  v16(v12, v13 + v15, v4);
  sub_1D2871EC8();
  LOBYTE(v14) = MEMORY[0x1D389AA00](v12, v9);
  v17 = *(v5 + 8);
  v17(v9, v4);
  v32 = v17;
  v33 = v5 + 8;
  v17(v12, v4);
  swift_getKeyPath();
  if (v14)
  {
    v34 = v13;
    sub_1D28719E8();

    v12 = v26;
    v16(v26, v13 + v15, v4);
    v18 = v28;
    sub_1D2871F58();
    v19 = v27;
    v20 = v29;
    if ((*(v27 + 48))(v18, 1, v29) == 1)
    {
      sub_1D22BD238(v18, &qword_1EC6D9D58);
      v21 = 0;
    }

    else
    {
      v22 = v25;
      (*(v19 + 32))(v25, v18, v20);
      v21 = sub_1D2871ED8();
      (*(v19 + 8))(v22, v20);
    }
  }

  else
  {
    v34 = v13;
    sub_1D28719E8();

    v16(v12, v13 + v15, v4);
    v21 = sub_1D24DCFF0();
  }

  v32(v12, v4);
  return v21;
}

uint64_t sub_1D251D558@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v63 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9D40);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v62 = &v54 - v4;
  v5 = sub_1D28764E8();
  v60 = *(v5 - 8);
  v61 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v59 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ComposingFooterButtonImage.Representation(0);
  v55 = *(v7 - 8);
  v56 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v54 = (&v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE5A0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v54 - v13;
  v15 = sub_1D2872008();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v54 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9DE8);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v57 = &v54 - v20;
  v21 = type metadata accessor for ComposingFooterButtonImage.Configuration(0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v54 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = a1;
  v24 = *a1;
  swift_getKeyPath();
  v65 = v24;
  sub_1D2521B64(qword_1EC6D8488, type metadata accessor for StylePickerViewModel);
  sub_1D28719E8();

  v25 = OBJC_IVAR____TtC23ImagePlaygroundInternal20StylePickerViewModel__selectedItem;
  swift_beginAccess();
  (*(v16 + 16))(v18, v24 + v25, v15);
  sub_1D24DD48C(v14);
  (*(v16 + 8))(v18, v15);
  sub_1D22BD1D0(v14, v11, &unk_1EC6DE5A0);
  v26 = type metadata accessor for PlaygroundImage();
  if ((*(*(v26 - 8) + 48))(v11, 1, v26) == 1)
  {
    sub_1D22BD238(v11, &unk_1EC6DE5A0);
    sub_1D22BD238(v14, &unk_1EC6DE5A0);
    v27 = v54;
    *v54 = 0xD000000000000020;
    v27[1] = 0x80000001D28AFF50;
  }

  else
  {
    sub_1D22BD238(v14, &unk_1EC6DE5A0);
    v27 = v54;
    sub_1D25226E8(v11, v54, type metadata accessor for PlaygroundImage);
  }

  v28 = v56;
  swift_storeEnumTagMultiPayload();
  v29 = v57;
  sub_1D25226E8(v27, v57, type metadata accessor for ComposingFooterButtonImage.Representation);
  (*(v55 + 56))(v29, 0, 1, v28);
  v30 = v59;
  v31 = v58[6];
  v33 = v60;
  v32 = v61;
  (*(v60 + 104))(v59, *MEMORY[0x1E6980EF8], v61);
  v34 = sub_1D28763F8();
  v35 = v62;
  (*(*(v34 - 8) + 56))(v62, 1, 1, v34);
  sub_1D2876418();
  v36 = sub_1D2876458();
  sub_1D22BD238(v35, &qword_1EC6D9D40);
  (*(v33 + 8))(v30, v32);
  sub_1D2877088();
  v37 = sub_1D28770C8();

  v64 = v37;
  v38 = sub_1D28748D8();
  v39 = sub_1D22F26B8();
  v40 = v21[11];
  v41 = *MEMORY[0x1E69816E0];
  v42 = sub_1D2877218();
  (*(*(v42 - 8) + 104))(&v23[v40], v41, v42);
  sub_1D22EC9BC(v29, v23, &qword_1EC6D9DE8);
  *&v23[v21[5]] = v36;
  *&v23[v21[6]] = 0;
  *&v23[v21[7]] = v31;
  *&v23[v21[8]] = v38;
  *&v23[v21[9]] = v39;
  v23[v21[10]] = 1;
  v43 = v63;
  sub_1D2522750(v23, v63, type metadata accessor for ComposingFooterButtonImage.Configuration);
  LOBYTE(v36) = sub_1D2876368();
  sub_1D2874298();
  v45 = v44;
  v47 = v46;
  v49 = v48;
  v51 = v50;
  sub_1D25227B8(v23, type metadata accessor for ComposingFooterButtonImage.Configuration);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DD2E8);
  v53 = v43 + *(result + 36);
  *v53 = v36;
  *(v53 + 8) = v45;
  *(v53 + 16) = v47;
  *(v53 + 24) = v49;
  *(v53 + 32) = v51;
  *(v53 + 40) = 0;
  return result;
}

uint64_t sub_1D251DCD4@<X0>(uint64_t a1@<X8>)
{
  v5 = *(v1 + 64);
  *a1 = sub_1D28756A8();
  *(a1 + 8) = v5;
  *(a1 + 16) = 0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DD290);
  return sub_1D251BC74(a1 + *(v3 + 44));
}

uint64_t sub_1D251DD6C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v90 = a1;
  v92 = sub_1D2875FB8();
  v91 = *(v92 - 8);
  MEMORY[0x1EEE9AC00](v92);
  v89 = &v73 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = sub_1D2875DE8();
  v87 = *(v88 - 8);
  MEMORY[0x1EEE9AC00](v88);
  v86 = &v73 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = type metadata accessor for StylesPopover(0);
  v75 = *(v77 - 8);
  v5 = *(v75 + 64);
  MEMORY[0x1EEE9AC00](v77);
  v6 = sub_1D2872008();
  v73 = *(v6 - 8);
  v7 = v73;
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v73 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DD1E8);
  MEMORY[0x1EEE9AC00](v76);
  v11 = &v73 - v10;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DD1F0) - 8;
  MEMORY[0x1EEE9AC00](v80);
  v74 = &v73 - v12;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DD1F8);
  MEMORY[0x1EEE9AC00](v83);
  v81 = &v73 - v13;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DD200);
  v84 = *(v85 - 8);
  MEMORY[0x1EEE9AC00](v85);
  v82 = &v73 - v14;
  v15 = sub_1D2875918();
  v16 = *(v1 + 56);
  *v11 = v15;
  *(v11 + 1) = v16;
  v11[16] = 0;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DD208);
  sub_1D251E8D0(v1, &v11[*(v17 + 44)]);
  v18 = *(v1 + 8);
  swift_getKeyPath();
  v19 = OBJC_IVAR____TtC23ImagePlaygroundInternal20StylePickerViewModel___observationRegistrar;
  *&v98 = v18;
  v20 = sub_1D2521B64(qword_1EC6D8488, type metadata accessor for StylePickerViewModel);
  v79 = v19;
  v78 = v20;
  sub_1D28719E8();

  v21 = OBJC_IVAR____TtC23ImagePlaygroundInternal20StylePickerViewModel__selectedItem;
  swift_beginAccess();
  v22 = *(v7 + 16);
  v23 = v6;
  v22(v9, v18 + v21, v6);
  sub_1D2522750(v2, &v73 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for StylesPopover);
  v24 = (*(v75 + 80) + 16) & ~*(v75 + 80);
  v25 = swift_allocObject();
  sub_1D25226E8(&v73 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v25 + v24, type metadata accessor for StylesPopover);
  sub_1D22BB9D8(&unk_1EC6D7680, &qword_1EC6DD1E8);
  sub_1D2521B64(&qword_1ED8A6C08, MEMORY[0x1E696E310]);
  v26 = v74;
  sub_1D2876F48();

  (*(v73 + 8))(v9, v23);
  sub_1D22BD238(v11, &qword_1EC6DD1E8);
  v27 = *(v2 + 24);
  LOBYTE(v98) = *(v2 + 16);
  *(&v98 + 1) = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE890);
  sub_1D2877308();
  LOBYTE(v24) = v95;
  v28 = v26 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DD210) + 36);
  *v28 = v24;
  *(v28 + 8) = sub_1D251FB30;
  *(v28 + 16) = 0;
  LOBYTE(v24) = sub_1D2876328();
  sub_1D2874298();
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v37 = v26 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DD218) + 36);
  *v37 = v24;
  *(v37 + 8) = v30;
  *(v37 + 16) = v32;
  *(v37 + 24) = v34;
  *(v37 + 32) = v36;
  *(v37 + 40) = 0;
  LOBYTE(v24) = sub_1D2876358();
  sub_1D2874298();
  v39 = v38;
  v41 = v40;
  v43 = v42;
  v45 = v44;
  v46 = v26 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DD220) + 36);
  *v46 = v24;
  *(v46 + 8) = v39;
  *(v46 + 16) = v41;
  *(v46 + 24) = v43;
  *(v46 + 32) = v45;
  *(v46 + 40) = 0;
  LOBYTE(v24) = sub_1D2876348();
  sub_1D2874298();
  v48 = v47;
  v50 = v49;
  v52 = v51;
  v54 = v53;
  v55 = v26 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DD228) + 36);
  *v55 = v24;
  *(v55 + 8) = v48;
  *(v55 + 16) = v50;
  *(v55 + 24) = v52;
  *(v55 + 32) = v54;
  *(v55 + 40) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D99C0);
  sub_1D2874768();
  sub_1D2877848();
  sub_1D28748C8();
  v56 = (v26 + *(v80 + 44));
  v57 = v96;
  *v56 = v95;
  v56[1] = v57;
  v56[2] = v97;
  v58 = *(v2 + 40);
  LOBYTE(v98) = *(v2 + 32);
  *(&v98 + 1) = v58;
  sub_1D2877308();
  swift_getKeyPath();
  *&v98 = v18;
  sub_1D28719E8();

  sub_1D2877848();
  sub_1D2875208();
  v59 = v81;
  sub_1D2288D9C(v26, v81);
  v60 = v83;
  v61 = (v59 + *(v83 + 36));
  v62 = v101;
  v63 = v103;
  v64 = v104;
  v61[4] = v102;
  v61[5] = v63;
  v61[6] = v64;
  v65 = v99;
  *v61 = v98;
  v61[1] = v65;
  v61[2] = v100;
  v61[3] = v62;
  v66 = v86;
  sub_1D2875DB8();
  v67 = sub_1D2521BAC();
  v68 = v82;
  sub_1D2876D88();
  (*(v87 + 8))(v66, v88);
  sub_1D22BD238(v59, &qword_1EC6DD1F8);
  v93 = 1836019578;
  v94 = 0xE400000000000000;
  v69 = v89;
  sub_1D2875B58();
  v93 = v60;
  v94 = v67;
  swift_getOpaqueTypeConformance2();
  v70 = v85;
  v71 = v92;
  sub_1D2876C18();
  (*(v91 + 8))(v69, v71);
  return (*(v84 + 8))(v68, v70);
}

uint64_t sub_1D251E8D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v116 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DD240);
  v114 = *(v3 - 8);
  v115 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v106 = &v96 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9D58);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v99 = &v96 - v6;
  v100 = sub_1D2871F38();
  v98 = *(v100 - 8);
  MEMORY[0x1EEE9AC00](v100);
  v97 = &v96 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1D2875788();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v108 = &v96 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DD248);
  MEMORY[0x1EEE9AC00](v101);
  v105 = &v96 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v102 = &v96 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v103 = &v96 - v14;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DD250);
  MEMORY[0x1EEE9AC00](v107);
  v104 = &v96 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v110 = &v96 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DD258);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v113 = &v96 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v112 = &v96 - v21;
  v121 = sub_1D2872008();
  v22 = *(v121 - 8);
  MEMORY[0x1EEE9AC00](v121);
  v109 = &v96 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v96 - v25;
  v111 = a1;
  v117 = *(a1 + 8);
  v27 = sub_1D26446D4();
  v118 = *(v27 + 16);
  if (v118)
  {
    v28 = 0;
    v119 = v22 + 16;
    v120 = v22 + 8;
    v29 = v121;
    while (v28 < *(v27 + 16))
    {
      v30 = (*(v22 + 80) + 32) & ~*(v22 + 80);
      v31 = *(v22 + 72) * v28;
      v32 = *(v22 + 16);
      v32(v26, v27 + v30 + v31, v29);
      v33 = sub_1D2871F78();
      v34 = *(v22 + 8);
      v34(v26, v29);
      if (v33)
      {

        v42 = v111;
        v43 = *(v111 + 16);
        v44 = *(v111 + 24);
        v35 = v117;
        sub_1D2870F78();
        LOBYTE(v123) = v43;
        *(&v123 + 1) = v44;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE890);
        sub_1D2877308();
        if (v122 != 1)
        {
          goto LABEL_7;
        }

        v45 = v110;
        sub_1D2877558();
        v46 = v42[4];
        v123 = v42[3];
        v124 = v46;
        v47 = v42[6];
        v125 = v42[5];
        v126 = v47;
        v48 = (v45 + *(v107 + 36));
        v49 = *(type metadata accessor for StylesPopover.DividerModifier(0) + 20);
        v50 = sub_1D28777D8();
        v51 = *(v50 - 8);
        v118 = *(v51 + 56);
        v111 = v51 + 56;
        v118(&v48[v49], 1, 1, v50);
        v52 = v124;
        *v48 = v123;
        *(v48 + 1) = v52;
        v53 = v126;
        *(v48 + 2) = v125;
        *(v48 + 3) = v53;
        sub_1D2875778();
        sub_1D2875768();
        v54 = sub_1D26446D4();
        if (v28 < *(v54 + 16))
        {
          v32(v109, v54 + v30 + v31, v121);

          v55 = v99;
          sub_1D2871F58();
          v56 = v98;
          v57 = v100;
          v58 = (*(v98 + 48))(v55, 1, v100);
          v107 = v50;
          if (v58 == 1)
          {
            sub_1D22BD238(v55, &qword_1EC6D9D58);
          }

          else
          {
            v59 = v97;
            (*(v56 + 32))(v97, v55, v57);
            sub_1D2871ED8();
            (*(v56 + 8))(v59, v57);
          }

          v34(v109, v121);
          sub_1D2875758();

          sub_1D2875768();
          sub_1D28757A8();
          if (qword_1ED89E0E8 == -1)
          {
LABEL_15:
            v60 = qword_1ED8B0058;
            v61 = sub_1D2876668();
            v63 = v62;
            v65 = v64;
            v122 = sub_1D2875DA8();
            v66 = sub_1D2876648();
            v68 = v67;
            v70 = v69;
            sub_1D22ED6E0(v61, v63, v65 & 1);

            sub_1D28764C8();
            v71 = sub_1D2876658();
            v73 = v72;
            v75 = v74;

            sub_1D22ED6E0(v66, v68, v70 & 1);

            sub_1D2876438();
            v76 = sub_1D2876568();
            v78 = v77;
            LOBYTE(v66) = v79;
            v81 = v80;
            sub_1D22ED6E0(v71, v73, v75 & 1);

            KeyPath = swift_getKeyPath();
            v83 = v102;
            v84 = &v102[*(v101 + 36)];
            v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DD268);
            v118(v84 + *(v85 + 28), 1, 1, v107);
            *v84 = KeyPath;
            *v83 = v76;
            *(v83 + 8) = v78;
            *(v83 + 16) = v66 & 1;
            *(v83 + 24) = v81;
            v86 = v103;
            sub_1D22EC9BC(v83, v103, &qword_1EC6DD248);
            v35 = v117;
            sub_1D2870F78();
            v87 = *(sub_1D26446D4() + 16);

            if (v87 <= 1)
            {
              v88 = 1;
            }

            else
            {
              v88 = v87;
            }

            v121 = v88 - 1;
            v89 = v110;
            v90 = v104;
            sub_1D22BD1D0(v110, v104, &qword_1EC6DD250);
            v91 = v105;
            sub_1D22BD1D0(v86, v105, &qword_1EC6DD248);
            v92 = v106;
            sub_1D22BD1D0(v90, v106, &qword_1EC6DD250);
            v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DD270);
            sub_1D22BD1D0(v91, v92 + *(v93 + 48), &qword_1EC6DD248);
            v94 = v92 + *(v93 + 64);
            v95 = v121;
            *v94 = v28;
            *(v94 + 8) = v95;
            *(v94 + 16) = v35;
            *(v94 + 24) = 0;
            *(v94 + 32) = xmmword_1D2890000;
            sub_1D2870F78();
            sub_1D22BD238(v86, &qword_1EC6DD248);
            sub_1D22BD238(v89, &qword_1EC6DD250);

            sub_1D22BD238(v91, &qword_1EC6DD248);
            sub_1D22BD238(v90, &qword_1EC6DD250);
            v39 = v112;
            sub_1D22EC9BC(v92, v112, &qword_1EC6DD240);
            (*(v114 + 56))(v39, 0, 1, v115);
            v37 = v116;
            v38 = v113;
            goto LABEL_8;
          }

LABEL_21:
          swift_once();
          goto LABEL_15;
        }

LABEL_20:
        __break(1u);
        goto LABEL_21;
      }

      if (v118 == ++v28)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
    goto LABEL_20;
  }

LABEL_6:

  v35 = v117;
  sub_1D2870F78();
  v36 = *(sub_1D26446D4() + 16);

  v28 = v36 - 1;
LABEL_7:
  v37 = v116;
  v38 = v113;
  v39 = v112;
  (*(v114 + 56))(v112, 1, 1, v115);
LABEL_8:
  sub_1D22BD1D0(v39, v38, &qword_1EC6DD258);
  *v37 = 0;
  *(v37 + 8) = v28 & ~(v28 >> 63);
  *(v37 + 16) = v35;
  *(v37 + 24) = 1;
  *(v37 + 32) = xmmword_1D2890000;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DD260);
  sub_1D22BD1D0(v38, v37 + *(v40 + 48), &qword_1EC6DD258);
  sub_1D2870F78();
  sub_1D22BD238(v39, &qword_1EC6DD258);
  sub_1D22BD238(v38, &qword_1EC6DD258);
}

uint64_t sub_1D251F52C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DD278);
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_1D22BD1D0(a1, &v5 - v3, &qword_1EC6DD278);
  return sub_1D2875458();
}

uint64_t sub_1D251F5D4()
{
  if (sub_1D2871F78() & 1) == 0 && (sub_1D2871F78() & 1) != 0 || (result = sub_1D2871F78(), (result) && (result = sub_1D2871F78(), (result & 1) == 0))
  {
    v1 = sub_1D28745D8();
    MEMORY[0x1EEE9AC00](v1);
    sub_1D2875048();
  }

  return result;
}

uint64_t sub_1D251F708(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v23 = a4;
  v24 = a5;
  v22[1] = a3;
  v7 = sub_1D2877B48();
  v27 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1D2877B68();
  v25 = *(v10 - 8);
  v26 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v12 = v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for StylesPopover(0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = *(a1 + 40);
  LOBYTE(aBlock) = *(a1 + 32);
  v29 = v16;
  LOBYTE(v34) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE890);
  sub_1D2877318();
  sub_1D24614C4();
  v17 = sub_1D2878AB8();
  sub_1D2522750(a1, v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for StylesPopover);
  v18 = (*(v14 + 80) + 16) & ~*(v14 + 80);
  v19 = swift_allocObject();
  sub_1D25226E8(v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v19 + v18, type metadata accessor for StylesPopover);
  v32 = v23;
  v33 = v19;
  aBlock = MEMORY[0x1E69E9820];
  v29 = 1107296256;
  v30 = sub_1D23DFBA8;
  v31 = v24;
  v20 = _Block_copy(&aBlock);
  sub_1D2877B58();
  v34 = MEMORY[0x1E69E7CC0];
  sub_1D2521B64(&qword_1ED89CFE0, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DAE80);
  sub_1D22BB9D8(&qword_1ED89CEB0, &unk_1EC6DAE80);
  sub_1D2879088();
  MEMORY[0x1D38A1540](0, v12, v9, v20);
  _Block_release(v20);

  (*(v27 + 8))(v9, v7);
  (*(v25 + 8))(v12, v26);
}

uint64_t sub_1D251FB58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1D2877848();
  sub_1D28748C8();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DD388);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  v6 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DD390) + 36));
  *v6 = v41;
  v6[1] = v42;
  v6[2] = v43;
  v7 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DD398) + 36);
  sub_1D2875958();
  v8 = sub_1D2876338();
  *(v7 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DD3A0) + 36)) = v8;
  LOBYTE(v7) = sub_1D2876328();
  sub_1D2874298();
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v17 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DD3A8) + 36);
  *v17 = v7;
  *(v17 + 8) = v10;
  *(v17 + 16) = v12;
  *(v17 + 24) = v14;
  *(v17 + 32) = v16;
  *(v17 + 40) = 0;
  LOBYTE(v7) = sub_1D2876348();
  sub_1D2874298();
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v26 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DD3B0) + 36);
  *v26 = v7;
  *(v26 + 8) = v19;
  *(v26 + 16) = v21;
  *(v26 + 24) = v23;
  *(v26 + 32) = v25;
  *(v26 + 40) = 0;
  LOBYTE(v7) = sub_1D2876358();
  sub_1D2874298();
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v35 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DD3B8) + 36);
  *v35 = v7;
  *(v35 + 8) = v28;
  *(v35 + 16) = v30;
  *(v35 + 24) = v32;
  *(v35 + 32) = v34;
  *(v35 + 40) = 0;
  KeyPath = swift_getKeyPath();
  v37 = *(type metadata accessor for StylesPopover.DividerModifier(0) + 20);
  v38 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DD3C0) + 36));
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DD268);
  result = sub_1D22BD1D0(v2 + v37, v38 + *(v39 + 28), &qword_1EC6DD278);
  *v38 = KeyPath;
  return result;
}

uint64_t sub_1D251FDDC@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DBFA0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v63 = &v53 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9A30);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v61 = &v53 - v9;
  v10 = sub_1D28764E8();
  v59 = *(v10 - 8);
  v60 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for GridPickerItemView();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v53 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v62 = &v53 - v17;
  v18 = sub_1D2872008();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v55 = &v53 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v54 = &v53 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v53 - v24;
  v26 = *a1;
  v56 = *(a2 + 16);
  result = sub_1D26446D4();
  if ((v26 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (v26 >= *(result + 16))
  {
LABEL_11:
    __break(1u);
    return result;
  }

  v58 = a3;
  v28 = *(v19 + 16);
  v28(v25, result + ((*(v19 + 80) + 32) & ~*(v19 + 80)) + *(v19 + 72) * v26, v18);

  v65[3] = v18;
  v65[4] = sub_1D2521B64(&qword_1ED8A6C18, MEMORY[0x1E696E310]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v65);
  v28(boxed_opaque_existential_1, v25, v18);
  v30 = sub_1D25204B8(v25);
  v32 = v31;
  v34 = v33;
  v57 = *(a2 + 24);
  *(v15 + 9) = swift_getKeyPath();
  v15[80] = 0;
  *(v15 + 11) = swift_getKeyPath();
  v15[96] = 0;
  v35 = v13[11];
  *&v15[v35] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DBE98);
  swift_storeEnumTagMultiPayload();
  v36 = &v15[v13[12]];
  *v36 = 0xD000000000000020;
  *(v36 + 1) = 0x80000001D28AFF50;
  v37 = &v15[v13[13]];
  v38 = sub_1D28764A8();
  *v37 = xmmword_1D288D460;
  *(v37 + 1) = xmmword_1D288D470;
  *(v37 + 2) = xmmword_1D288D480;
  *(v37 + 6) = 0x4018000000000000;
  *(v37 + 7) = v38;
  *(v37 + 4) = xmmword_1D288D490;
  v64[0] = 0x4052800000000000;
  (*(v59 + 104))(v12, *MEMORY[0x1E6980F20], v60);
  sub_1D22BFBB8();
  sub_1D2874748();
  sub_1D22D7044(v65, v15);
  *(v15 + 6) = v30;
  *(v15 + 7) = v32;
  v15[64] = v34 & 1;
  sub_1D22D7044(v65, v64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9A48);
  v39 = v61;
  if (swift_dynamicCast())
  {
    (*(v19 + 56))(v39, 0, 1, v18);
    v40 = v54;
    (*(v19 + 32))(v54, v39, v18);
    v15[40] = 1;
    v41 = v55;
    sub_1D2871FC8();
    v42 = MEMORY[0x1D389AA00](v40, v41);
    v43 = *(v19 + 8);
    v43(v41, v18);
    v43(v40, v18);
    __swift_destroy_boxed_opaque_existential_0(v65);
    v44 = v42 & 1;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0(v65);
    (*(v19 + 56))(v39, 1, 1, v18);
    sub_1D22BD238(v39, &qword_1EC6D9A30);
    v44 = 0;
    v15[40] = 0;
  }

  v15[41] = v44;
  v45 = v57;
  v15[42] = v57;
  v46 = v15;
  v48 = v62;
  v47 = v63;
  sub_1D25226E8(v46, v62, type metadata accessor for GridPickerItemView);
  v49 = sub_1D2871F78();
  v50 = 1;
  v51 = v58;
  if (v49)
  {
    if (v45)
    {
      sub_1D2644270(v25, 1, v47);
      v50 = 0;
    }
  }

  v52 = type metadata accessor for PhotoSharingConfirmationParams(0);
  (*(*(v52 - 8) + 56))(v47, v50, 1, v52);
  sub_1D26ACB30(v47, v51);
  sub_1D22BD238(v47, &qword_1EC6DBFA0);
  sub_1D25227B8(v48, type metadata accessor for GridPickerItemView);
  return (*(v19 + 8))(v25, v18);
}

uint64_t sub_1D25204B8(uint64_t a1)
{
  v2 = v1;
  v27 = a1;
  v28 = sub_1D2872008();
  v4 = *(v28 - 8);
  v5 = MEMORY[0x1EEE9AC00](v28);
  v7 = v6;
  v8 = v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v4 + 16);
  v25[1] = v6;
  v26 = v9;
  (v9)(v8, a1, v5);
  sub_1D2878568();
  v25[0] = *(v2 + 16);
  sub_1D2870F78();
  v10 = sub_1D2878558();
  v11 = *(v4 + 80);
  v12 = (v11 + 32) & ~v11;
  v13 = (v7 + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  v14 = swift_allocObject();
  v15 = MEMORY[0x1E69E85E0];
  *(v14 + 16) = v10;
  *(v14 + 24) = v15;
  v16 = *(v4 + 32);
  v17 = v14 + v12;
  v18 = v28;
  v16(v17, v8, v28);
  v19 = (v14 + v13);
  v20 = *(v2 + 16);
  *v19 = *v2;
  v19[1] = v20;
  v19[2] = *(v2 + 32);
  v26(v8, v27, v18);
  sub_1D2870F78();
  v21 = sub_1D2878558();
  v22 = swift_allocObject();
  *(v22 + 16) = v21;
  *(v22 + 24) = MEMORY[0x1E69E85E0];
  v23 = *(v2 + 16);
  *(v22 + 32) = *v2;
  *(v22 + 48) = v23;
  *(v22 + 64) = *(v2 + 32);
  v16(v22 + ((v11 + 80) & ~v11), v8, v28);
  sub_1D2877528();
  return v29;
}

uint64_t sub_1D2520704@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, _BYTE *a3@<X8>)
{
  v34 = a3;
  v5 = sub_1D2872008();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v31 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v27 - v9;
  v32 = a1;
  v11 = sub_1D2871F98();
  v13 = v12;
  v33 = a2;
  v14 = *(a2 + 16);
  swift_getKeyPath();
  v15 = OBJC_IVAR____TtC23ImagePlaygroundInternal20StylePickerViewModel___observationRegistrar;
  v36 = v14;
  v29 = sub_1D2521B64(qword_1EC6D8488, type metadata accessor for StylePickerViewModel);
  v30 = v15;
  sub_1D28719E8();

  v16 = OBJC_IVAR____TtC23ImagePlaygroundInternal20StylePickerViewModel__selectedItem;
  swift_beginAccess();
  v28 = *(v6 + 16);
  v28(v10, v14 + v16, v5);
  v17 = sub_1D2871F98();
  v19 = v18;
  v20 = v10;
  v21 = *(v6 + 8);
  v21(v20, v5);
  if (v11 == v17 && v13 == v19)
  {

    goto LABEL_10;
  }

  v23 = sub_1D2879618();

  if (v23)
  {
LABEL_10:
    v26 = 1;
    goto LABEL_11;
  }

  if (*(v33 + 24) & 1) != 0 && (result = sub_1D2871F78(), (result))
  {
    swift_getKeyPath();
    v35 = v14;
    sub_1D28719E8();

    v25 = v31;
    v28(v31, v14 + v16, v5);
    v26 = sub_1D2871F78();
    result = (v21)(v25, v5);
  }

  else
  {
    v26 = 0;
  }

LABEL_11:
  *v34 = v26 & 1;
  return result;
}

void sub_1D25209D4(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9A30);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v12 - v8;
  if (*a1 == 1)
  {
    v10 = sub_1D2872008();
    v11 = *(v10 - 8);
    (*(v11 + 16))(v9, a5, v10);
    (*(v11 + 56))(v9, 0, 1, v10);
    sub_1D2644B70(v9);
    sub_1D22BD238(v9, &qword_1EC6D9A30);
  }
}

uint64_t sub_1D2520B18@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v8 = v1[5];
  result = sub_1D2875918();
  *a1 = 3;
  a1[1] = v8;
  a1[2] = v7;
  a1[3] = result;
  if (v4 < v3)
  {
    __break(1u);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DD3C8);
    swift_getKeyPath();
    v10 = swift_allocObject();
    v10[2] = v3;
    v10[3] = v4;
    v10[4] = v5;
    v10[5] = v6;
    v10[6] = v7;
    v10[7] = v8;
    sub_1D2870F78();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DBB60);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC6C0);
    sub_1D245963C();
    sub_1D24C1CE0();
    return sub_1D2877578();
  }

  return result;
}