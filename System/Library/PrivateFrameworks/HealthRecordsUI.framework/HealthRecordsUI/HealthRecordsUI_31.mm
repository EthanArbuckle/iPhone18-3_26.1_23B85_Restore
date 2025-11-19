id sub_1D130F564(void *a1)
{
  v1 = a1;
  v2 = [v1 presentingViewController];
  if (v2)
  {

    v3 = [objc_opt_self() keyCommandWithInput:*MEMORY[0x1E69DDEA0] modifierFlags:0 action:sel_didTapDone_];
    sub_1D12779E0(0, &qword_1EE06A4C0, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_1D139E810;
    *(v4 + 32) = v3;

    sub_1D106F934(0, &qword_1EC60F6E8);
    v5 = sub_1D139044C();
  }

  else
  {

    v5 = 0;
  }

  return v5;
}

void sub_1D130F694(uint64_t a1)
{
  *(a1 + qword_1EC60F660) = 0;
  *(a1 + qword_1EC60F668) = 0;
  sub_1D13913BC();
  __break(1u);
}

void sub_1D130F708()
{
  sub_1D1313040(0, &qword_1EE06A650, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v20 - v2;
  v4 = *&v0[qword_1EC60F678];
  v23 = type metadata accessor for MedicalRecordDetailDataSourceProvider();
  v24 = sub_1D131327C(&qword_1EC60F6E0, type metadata accessor for MedicalRecordDetailDataSourceProvider);
  v22 = v4;

  sub_1D138EC5C();
  v5 = type metadata accessor for MedicalRecordDetailViewController(0);
  v21.receiver = v0;
  v21.super_class = v5;
  objc_msgSendSuper2(&v21, sel_viewDidLoad);
  v6 = qword_1EC60F670;
  v7 = [*&v0[qword_1EC60F670] titleDisplayStringForDetailViewController];
  [v0 setTitle_];

  v8 = [v0 collectionView];
  if (!v8)
  {
    __break(1u);
    goto LABEL_8;
  }

  v9 = v8;
  v10 = [objc_opt_self() systemGroupedBackgroundColor];
  [v9 setBackgroundColor_];

  v11 = [v0 collectionView];
  if (!v11)
  {
LABEL_8:
    __break(1u);
    return;
  }

  v12 = v11;
  [v11 contentInset];
  [v12 setContentInset_];

  v13 = *(v4 + 56);
  if (v13)
  {
    v14 = *&v0[v6];
    objc_opt_self();
    v15 = swift_dynamicCastObjCClass();
    if (v15)
    {
      v16 = v15;
      v17 = sub_1D13905DC();
      (*(*(v17 - 8) + 56))(v3, 1, 1, v17);
      v18 = swift_allocObject();
      v18[2] = 0;
      v18[3] = 0;
      v18[4] = v13;
      v18[5] = v16;
      swift_retain_n();
      v19 = v14;
      sub_1D130FAE4(0, 0, v3, &unk_1D13B0850, v18);

      sub_1D1313164(v3, &qword_1EE06A650, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720], sub_1D1313040);
    }
  }
}

uint64_t sub_1D130FA48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = swift_task_alloc();
  *(v5 + 16) = v7;
  *v7 = v5;
  v7[1] = sub_1D108077C;

  return sub_1D138864C(a5);
}

uint64_t sub_1D130FAE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1D1313040(0, &qword_1EE06A650, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v25 - v10;
  sub_1D11E6E44(a3, v25 - v10);
  v12 = sub_1D13905DC();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_1D1313164(v11, &qword_1EE06A650, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720], sub_1D1313040);
  }

  else
  {
    sub_1D13905CC();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_1D139055C();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_1D139021C() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

void sub_1D130FDEC(void *a1)
{
  v1 = a1;
  sub_1D130F708();
}

void sub_1D130FE34(void *a1, uint64_t a2, uint64_t a3)
{
  v5.receiver = a1;
  v5.super_class = type metadata accessor for MedicalRecordDetailViewController(0);
  v4 = v5.receiver;
  objc_msgSendSuper2(&v5, sel_viewDidAppear_, a3);
  sub_1D1310D28(1);
}

void sub_1D130FEA0()
{
  v1 = v0;
  sub_1D138EC6C();
  v2 = sub_1D138EC7C();
  v2();
  v3 = [v0 collectionView];
  if (!v3)
  {
    __break(1u);
    goto LABEL_20;
  }

  v4 = v3;
  type metadata accessor for ButtonCell();
  sub_1D131327C(&unk_1EC60F6F0, type metadata accessor for ButtonCell);
  sub_1D13908AC();

  v5 = [v1 collectionView];
  if (!v5)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v6 = v5;
  type metadata accessor for DeleteRecordCell();
  sub_1D131327C(&qword_1EC60E5D0, type metadata accessor for DeleteRecordCell);
  sub_1D13908AC();

  v7 = [v1 collectionView];
  if (!v7)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v8 = v7;
  type metadata accessor for ImageAttachmentCell(0);
  sub_1D131327C(&qword_1EC60A3B0, type metadata accessor for ImageAttachmentCell);
  sub_1D13908AC();

  v9 = [v1 collectionView];
  if (!v9)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v10 = v9;
  type metadata accessor for PDFAttachmentCell(0);
  sub_1D131327C(&unk_1EC60A3E8, type metadata accessor for PDFAttachmentCell);
  sub_1D13908AC();

  v11 = [v1 collectionView];
  if (!v11)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v12 = v11;
  type metadata accessor for QRCodeCell();
  sub_1D131327C(&unk_1EC60F700, type metadata accessor for QRCodeCell);
  sub_1D13908AC();

  v13 = [v1 collectionView];
  if (!v13)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v14 = v13;
  type metadata accessor for RecordDetailTitleCell();
  sub_1D131327C(&qword_1EC60C540, type metadata accessor for RecordDetailTitleCell);
  sub_1D13908AC();

  v15 = [v1 collectionView];
  if (!v15)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v16 = v15;
  type metadata accessor for RecordSourceCell();
  sub_1D131327C(&unk_1EC60F710, type metadata accessor for RecordSourceCell);
  sub_1D13908AC();

  v17 = [v1 collectionView];
  if (!v17)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v18 = v17;
  type metadata accessor for ReferenceRangeCell();
  sub_1D131327C(&qword_1EC60C548, type metadata accessor for ReferenceRangeCell);
  sub_1D13908AC();

  v19 = [v1 collectionView];
  if (!v19)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v20 = v19;
  type metadata accessor for TextItemCell();
  sub_1D131327C(&unk_1EC60F720, type metadata accessor for TextItemCell);
  sub_1D13908AC();

  v21 = [v1 collectionView];
  if (!v21)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v22 = v21;
  type metadata accessor for TitleSubtitleDetailCell();
  sub_1D131327C(&qword_1EC60B7E0, type metadata accessor for TitleSubtitleDetailCell);
  sub_1D13908AC();

  v23 = [v1 collectionView];
  if (!v23)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v24 = v23;
  type metadata accessor for TitleSubtitleDetailSpinnerCell();
  sub_1D131327C(&qword_1EC60F730, type metadata accessor for TitleSubtitleDetailSpinnerCell);
  sub_1D13908AC();

  v25 = [v1 collectionView];
  if (!v25)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v26 = v25;
  type metadata accessor for TextAttachmentCell(0);
  sub_1D131327C(&qword_1EC60A3B8, type metadata accessor for TextAttachmentCell);
  sub_1D13908AC();

  v27 = [v1 collectionView];
  if (!v27)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v28 = v27;
  type metadata accessor for ThumbnailAttachmentCell(0);
  sub_1D131327C(&unk_1EC60A3C0, type metadata accessor for ThumbnailAttachmentCell);
  sub_1D13908AC();

  v29 = [v1 collectionView];
  if (!v29)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v30 = v29;
  sub_1D138EB6C();
  sub_1D13908CC();

  v31 = [v1 collectionView];
  if (!v31)
  {
LABEL_33:
    __break(1u);
    return;
  }

  sub_1D138EA0C();
  sub_1D13908BC();
}

void sub_1D131056C(void *a1)
{
  v2 = sub_1D138D7DC();
  [a1 deselectItemAtIndexPath:v2 animated:1];

  v3 = sub_1D138D7DC();
  v4 = [a1 cellForItemAtIndexPath_];

  if (v4)
  {
    sub_1D138EC3C();
    sub_1D138E86C();
    sub_1D138E24C();

    sub_1D1072E70(v11, v8);
    sub_1D1080EA4(0, &qword_1EC60F6A0);
    sub_1D1080EA4(0, &unk_1EC60F6C0);
    if (swift_dynamicCast())
    {
      v5 = v6;
LABEL_6:
      sub_1D102CC18(v5, v10);
      __swift_project_boxed_opaque_existential_1Tm(v10, v10[3]);
      sub_1D138E41C();
      sub_1D1310D28(0);

      __swift_destroy_boxed_opaque_existential_1Tm(v11);
      __swift_destroy_boxed_opaque_existential_1Tm(v10);
      return;
    }

    v7 = 0;
    memset(v6, 0, sizeof(v6));
    sub_1D108B0C4(v6);
    *&v6[0] = v4;
    sub_1D106F934(0, &qword_1EC60F6D0);
    v4 = v4;
    if (swift_dynamicCast())
    {
      v5 = v8;
      goto LABEL_6;
    }

    __swift_destroy_boxed_opaque_existential_1Tm(v11);

    v9 = 0;
    memset(v8, 0, sizeof(v8));
    sub_1D108B0C4(v8);
  }
}

uint64_t sub_1D1310774(void *a1, uint64_t a2, void *a3)
{
  v5 = sub_1D138D82C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D138D7EC();
  v9 = a3;
  v10 = a1;
  sub_1D131056C(v9);

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1D1310870(void *a1, uint64_t a2, void *a3)
{
  v5 = sub_1D138D82C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D138D7EC();
  v9 = a3;
  v10 = a1;
  LOBYTE(a1) = sub_1D127C548(v9);

  (*(v6 + 8))(v8, v5);
  return a1 & 1;
}

id sub_1D1310974(void *a1, uint64_t a2, void *a3)
{
  v5 = sub_1D138D82C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D138D7EC();
  v9 = a3;
  v10 = a1;
  v11 = sub_1D1312B74();

  (*(v6 + 8))(v8, v5);

  return v11;
}

uint64_t sub_1D1310A84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1D106F934(0, &unk_1EC60F6B0);
  if (qword_1EE06AD00 != -1)
  {
    swift_once();
  }

  sub_1D138D1CC();
  v5 = sub_1D139012C();
  v6 = [objc_opt_self() systemImageNamed_];

  v7 = swift_allocObject();
  *(v7 + 16) = a2;
  *(v7 + 24) = a3;

  v8 = sub_1D1390DCC();
  sub_1D106F934(0, &unk_1EC60CF20);
  sub_1D12779E0(0, &qword_1EE06A4C0, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1D139E810;
  *(v9 + 32) = v8;
  return sub_1D1390C7C();
}

void sub_1D1310C94()
{
  v0 = [objc_opt_self() generalPasteboard];
  v1 = sub_1D139012C();
  [v0 setString_];
}

void sub_1D1310D28(uint64_t a1)
{
  v3 = sub_1D138FF3C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = (&v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_1EE06A170 != -1)
  {
    swift_once();
  }

  v7 = qword_1EE06AEB8;
  v8 = [objc_opt_self() supportedRecordCategoriesByCategoryType];
  if (!v8)
  {
    goto LABEL_13;
  }

  v9 = v8;
  sub_1D106F934(0, &qword_1EE06B6C0);
  sub_1D106F934(0, &qword_1EE06B730);
  sub_1D11C1A28();
  v10 = sub_1D138FFFC();

  v11 = qword_1EC60F670;
  v12 = [*(v1 + qword_1EC60F670) recordCategoryType];
  v13 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
  v14 = sub_1D12F3C24(v13, v10);

  v15 = [*(v1 + v11) primaryConcept];
  v16 = [v15 identifier];

  if (v14)
  {
    sub_1D123E1C4(v14, &aBlock);
    sub_1D1080D98(&aBlock);
    v17 = aBlock;
    if (v16)
    {
LABEL_6:
      v18 = *&v7[OBJC_IVAR___CHRAnalyticsManager_conceptStore];
      v19 = swift_allocObject();
      *(v19 + 16) = v7;
      *(v19 + 24) = xmmword_1D13B07B0;
      *(v19 + 40) = a1;
      *(v19 + 48) = v17;
      v35 = sub_1D1080D88;
      v36 = v19;
      aBlock = MEMORY[0x1E69E9820];
      v32 = 1107296256;
      v33 = sub_1D1226920;
      v34 = &block_descriptor_54;
      v20 = _Block_copy(&aBlock);
      v21 = v16;
      v22 = v7;

      [v18 fetchConceptForIdentifier:v21 loadRelationships:0 completionHandler:v20];

      _Block_release(v20);
      return;
    }
  }

  else
  {
    v17 = 11;
    if (v16)
    {
      goto LABEL_6;
    }
  }

  v23 = OBJC_IVAR___CHRAnalyticsManager_managerQueue;
  v24 = *&v7[OBJC_IVAR___CHRAnalyticsManager_managerQueue];
  *v6 = v24;
  (*(v4 + 104))(v6, *MEMORY[0x1E69E8018], v3);
  v25 = v24;
  LOBYTE(v24) = sub_1D138FF5C();
  (*(v4 + 8))(v6, v3);
  if ((v24 & 1) == 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  v26 = *&v7[v23];
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_1D13B07B0;
  *(v27 + 32) = 0;
  *(v27 + 40) = v17;
  *(v27 + 48) = a1;
  v28 = swift_allocObject();
  *(v28 + 16) = sub_1D1080D6C;
  *(v28 + 24) = v27;
  v35 = sub_1D1080D80;
  v36 = v28;
  aBlock = MEMORY[0x1E69E9820];
  v32 = 1107296256;
  v33 = sub_1D10DD3BC;
  v34 = &block_descriptor_48_1;
  v29 = _Block_copy(&aBlock);

  dispatch_sync(v26, v29);

  _Block_release(v29);
  LOBYTE(v26) = swift_isEscapingClosureAtFileLocation();

  if (v26)
  {
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
  }
}

void sub_1D13111D4(char a1)
{
  v3 = [v1 navigationItem];
  if (a1)
  {
    v4 = [objc_allocWithZone(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:0 target:v1 action:sel_didTapDone_];
  }

  else
  {
    v4 = 0;
  }

  v11[8] = v4;
  v11[3] = type metadata accessor for MedicalRecordDetailViewController(0);
  v11[0] = v1;
  v5 = v1;
  v6 = _sSo15UIBarButtonItemC15HealthRecordsUIE014makeTapToRadarC06target6actionABSgypSg_10ObjectiveC8SelectorVSgtFZ_0(v11, sel_tapToRadar_);
  sub_1D1313164(v11, &qword_1EE06A4A8, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720], sub_1D12779E0);
  v7 = 0;
  v11[9] = v6;
  v11[0] = MEMORY[0x1E69E7CC0];
  while (v7 != 2)
  {
    v8 = v11[v7++ + 8];
    if (v8)
    {
      v9 = v8;
      MEMORY[0x1D3885D90]();
      if (*((v11[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v11[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1D13904BC();
      }

      sub_1D13904FC();
    }
  }

  sub_1D1312FE4(0, &qword_1EC60B378, &qword_1EC609A90, 0x1E69DC708, sub_1D106F934);
  swift_arrayDestroy();
  sub_1D106F934(0, &qword_1EC609A90);
  v10 = sub_1D139044C();

  [v3 setRightBarButtonItems_];
}

uint64_t sub_1D13113F4(void *a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = a1;
    swift_unknownObjectRetain();
    sub_1D139101C();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v7, 0, sizeof(v7));
    v5 = a1;
  }

  type metadata accessor for TapToRadarManager();
  static TapToRadarManager.presentTapToRadarDialogue(from:)(a1);

  return sub_1D1313164(v7, &qword_1EE06A4A8, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720], sub_1D12779E0);
}

uint64_t sub_1D131150C()
{
}

id sub_1D131156C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MedicalRecordDetailViewController(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1D13115A4(uint64_t a1)
{
}

void sub_1D1311618(void *a1)
{
  v1 = a1;
  sub_1D13111D4(1);
}

void sub_1D1311668(void *a1)
{
  v1 = a1;
  sub_1D13111D4(0);
}

void sub_1D13116B8()
{
  v1 = [v0 navigationController];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 viewControllers];
    sub_1D106F934(0, &unk_1EC6099E0);
    v4 = sub_1D139045C();

    if (v4 >> 62)
    {
      v5 = sub_1D13910DC();
    }

    else
    {
      v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v5 >= 2)
    {
      v7 = [v2 popViewControllerAnimated_];

      return;
    }
  }

  v6 = [v0 presentationController];
  if (v6)
  {

    [v0 dismissViewControllerAnimated:1 completion:0];
  }
}

void sub_1D1311828(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = sub_1D138FF3C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = (&v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D106F934(0, &qword_1EE06B760);
  *v9 = sub_1D1390A7C();
  (*(v7 + 104))(v9, *MEMORY[0x1E69E8020], v6);
  v10 = sub_1D138FF5C();
  (*(v7 + 8))(v9, v6);
  if ((v10 & 1) == 0)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    return;
  }

  v11 = [objc_allocWithZone(MEMORY[0x1E695DF00]) initWithTimeIntervalSinceNow_];
  v12 = *&v3[qword_1EC60F668];
  *&v3[qword_1EC60F668] = v11;

  v13 = qword_1EC60F660;
  v14 = *&v3[qword_1EC60F660];
  if (v14)
  {
    [v14 removeFromSuperview];
  }

  v15 = objc_allocWithZone(type metadata accessor for HRProgressHUD());
  swift_unknownObjectWeakInit();
  v16 = sub_1D110519C(0, 0);
  v17 = *&v3[v13];
  *&v3[v13] = v16;
  v18 = v16;

  v19 = [v3 view];
  if (!v19)
  {
    goto LABEL_9;
  }

  v20 = v19;
  [v18 setAutoresizingMask_];
  v21 = &v18[OBJC_IVAR____TtC15HealthRecordsUI11ProgressHUD_text];
  *v21 = a1;
  *(v21 + 1) = a2;

  v22 = *&v18[OBJC_IVAR____TtC15HealthRecordsUI11ProgressHUD_progressMessageLabel];
  if (a2)
  {

    a2 = sub_1D139012C();
  }

  [v22 setText_];

  [v18 setNeedsLayout];
  [v20 addSubview_];
  [*&v18[OBJC_IVAR____TtC15HealthRecordsUI11ProgressHUD_progressIndicator] startAnimating];
}

uint64_t sub_1D1311AD0(void *a1, uint64_t (*a2)(void), uint64_t a3)
{
  v4 = v3;
  v45 = a1;
  v46 = a3;
  v44 = a2;
  v5 = sub_1D138FECC();
  v42 = *(v5 - 8);
  v43 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1D138FF0C();
  v40 = *(v8 - 8);
  v41 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1D138FF2C();
  v38 = *(v11 - 8);
  v39 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v37 - v15;
  v17 = sub_1D138FF3C();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = (&v37 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D106F934(0, &qword_1EE06B760);
  *v20 = sub_1D1390A7C();
  (*(v18 + 104))(v20, *MEMORY[0x1E69E8020], v17);
  v21 = sub_1D138FF5C();
  result = (*(v18 + 8))(v20, v17);
  if (v21)
  {
    v23 = qword_1EC60F660;
    v24 = *&v3[qword_1EC60F660];
    if (v24)
    {
      if (!*&v3[qword_1EC60F668])
      {
        goto LABEL_7;
      }

      [*&v3[qword_1EC60F668] timeIntervalSinceNow];
      if (v25 > 0.01)
      {
        v37 = sub_1D1390A7C();
        sub_1D138FF1C();
        sub_1D138FF4C();
        v26 = v39;
        v38 = *(v38 + 8);
        (v38)(v13, v39);
        v27 = swift_allocObject();
        v28 = v44;
        v29 = v45;
        v27[2] = v3;
        v27[3] = v29;
        v30 = v46;
        v27[4] = v28;
        v27[5] = v30;
        aBlock[4] = sub_1D13132E4;
        aBlock[5] = v27;
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_1D10CBD3C;
        aBlock[3] = &block_descriptor_14;
        v31 = _Block_copy(aBlock);
        v32 = v4;
        v33 = v29;

        sub_1D138FEEC();
        aBlock[0] = MEMORY[0x1E69E7CC0];
        sub_1D131327C(&qword_1EE06B7E0, MEMORY[0x1E69E7F60]);
        sub_1D1313040(0, &qword_1EE06B7C0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
        sub_1D1080CD4();
        v34 = v43;
        sub_1D139103C();
        v35 = v37;
        MEMORY[0x1D3886370](v16, v10, v7, v31);
        _Block_release(v31);

        (*(v42 + 8))(v7, v34);
        (*(v40 + 8))(v10, v41);
        return (v38)(v16, v26);
      }

      v24 = *&v3[v23];
      if (!v24)
      {
        v36 = 0;
      }

      else
      {
LABEL_7:
        [v24 removeFromSuperview];
        v36 = *&v3[v23];
      }

      *&v3[v23] = 0;
    }

    return v44(v45);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1D1312020(uint64_t a1)
{
  v2 = v1;
  sub_1D12779E0(0, &qword_1EE06A4C0, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1D139E810;
  v5 = (a1 + *(type metadata accessor for AttachmentContext() + 24));
  v6 = *v5;
  v7 = v5[1];
  v8 = type metadata accessor for QLItemSingleDataProvider();
  v9 = objc_allocWithZone(v8);
  v10 = &v9[OBJC_IVAR____TtC15HealthRecordsUI24QLItemSingleDataProvider_data];
  *v10 = v6;
  v10[1] = v7;
  sub_1D1083D58(v6, v7);
  v19.receiver = v9;
  v19.super_class = v8;
  v11 = objc_msgSendSuper2(&v19, sel_init);
  sub_1D138EDDC();
  v12 = objc_allocWithZone(MEMORY[0x1E697A0C0]);

  v13 = sub_1D139012C();

  v14 = sub_1D139012C();

  v15 = [v12 initWithDataProvider:v11 contentType:v13 previewTitle:v14];

  *(v4 + 32) = v15;
  v16 = objc_allocWithZone(MEMORY[0x1E697A0C8]);
  sub_1D10B0FB4();
  v17 = sub_1D139044C();

  v18 = [v16 initWithPreviewItems_];

  [v2 presentViewController:v18 animated:1 completion:0];
}

uint64_t sub_1D1312220(void *a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = a1;
    swift_unknownObjectRetain();
    sub_1D139101C();
    swift_unknownObjectRelease();
  }

  else
  {
    v7 = 0u;
    v8 = 0u;
    v5 = a1;
  }

  [a1 dismissViewControllerAnimated:1 completion:{0, v7, v8}];

  return sub_1D1313164(&v7, &qword_1EE06A4A8, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720], sub_1D12779E0);
}

uint64_t sub_1D1312324()
{
  v0 = sub_1D138D5EC();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v0;
}

id sub_1D131237C(void *a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for PresentationContext(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v4[qword_1EC60F660] = 0;
  *&v4[qword_1EC60F668] = 0;
  *&v4[qword_1EC60F670] = a1;
  sub_1D13124B0(a3, v10);
  type metadata accessor for MedicalRecordDetailDataSourceProvider();
  swift_allocObject();
  *&v4[qword_1EC60F678] = sub_1D1363E48(a1, a2, v10);
  v11 = type metadata accessor for MedicalRecordDetailViewController(0);
  v14.receiver = v4;
  v14.super_class = v11;
  v12 = objc_msgSendSuper2(&v14, sel_initWithCollectionViewLayout_, 0);
  sub_1D13111D4(0);

  sub_1D1312514(a3);
  return v12;
}

uint64_t sub_1D13124B0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PresentationContext(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D1312514(uint64_t a1)
{
  v2 = type metadata accessor for PresentationContext(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D1312570(void *a1, char *a2, void *a3, uint64_t a4)
{
  v45 = a1;
  v7 = sub_1D138FECC();
  v42 = *(v7 - 8);
  v43 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v40 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_1D138FF0C();
  v39 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v38 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_1D138FF2C();
  v37 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v36 = &v36 - v13;
  v14 = sub_1D138FF3C();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = (&v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = swift_allocObject();
  *(v18 + 16) = a3;
  *(v18 + 24) = a4;
  sub_1D106F934(0, &qword_1EE06B760);
  v19 = a3;

  *v17 = sub_1D1390A7C();
  (*(v15 + 104))(v17, *MEMORY[0x1E69E8020], v14);
  v20 = sub_1D138FF5C();
  result = (*(v15 + 8))(v17, v14);
  if (v20)
  {
    v22 = qword_1EC60F660;
    v23 = *&a2[qword_1EC60F660];
    if (v23)
    {
      if (!*&a2[qword_1EC60F668])
      {
        goto LABEL_7;
      }

      [*&a2[qword_1EC60F668] timeIntervalSinceNow];
      if (v24 > 0.01)
      {
        v25 = sub_1D1390A7C();
        sub_1D138FF1C();
        v26 = v36;
        sub_1D138FF4C();
        v37 = *(v37 + 8);
        (v37)(v11, v44);
        v27 = swift_allocObject();
        v28 = v45;
        v27[2] = a2;
        v27[3] = v28;
        v27[4] = sub_1D1312B28;
        v27[5] = v18;
        aBlock[4] = sub_1D1312B30;
        aBlock[5] = v27;
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_1D10CBD3C;
        aBlock[3] = &block_descriptor_70;
        v29 = _Block_copy(aBlock);
        v30 = a2;
        v31 = v28;

        v32 = v38;
        sub_1D138FEEC();
        aBlock[0] = MEMORY[0x1E69E7CC0];
        sub_1D131327C(&qword_1EE06B7E0, MEMORY[0x1E69E7F60]);
        sub_1D1313040(0, &qword_1EE06B7C0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
        sub_1D1080CD4();
        v33 = v40;
        v34 = v43;
        sub_1D139103C();
        MEMORY[0x1D3886370](v26, v32, v33, v29);
        _Block_release(v29);

        (*(v42 + 8))(v33, v34);
        (*(v39 + 8))(v32, v41);
        (v37)(v26, v44);
      }

      v23 = *&a2[v22];
      if (!v23)
      {
        v35 = 0;
      }

      else
      {
LABEL_7:
        [v23 removeFromSuperview];
        v35 = *&a2[v22];
      }

      *&a2[v22] = 0;
    }

    sub_1D126DE9C(v45, v19, a4);
  }

  __break(1u);
  return result;
}

uint64_t block_copy_helper_71(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_1D1312B74()
{
  sub_1D138EC3C();
  sub_1D138E86C();
  sub_1D138E24C();

  sub_1D1072E70(v46, v44);
  sub_1D1080EA4(0, &qword_1EC60F6A0);
  type metadata accessor for RecordDetailTitleItem();
  if (swift_dynamicCast())
  {
    v0 = v45;
    sub_1D10F48A8();
    v1 = swift_allocObject();
    *(v1 + 16) = xmmword_1D139E710;
    v3 = v0[2];
    v2 = v0[3];
    v4 = MEMORY[0x1E69E6158];
    *(v1 + 56) = MEMORY[0x1E69E6158];
    v5 = sub_1D1089930();
    *(v1 + 64) = v5;
    *(v1 + 32) = v3;
    *(v1 + 40) = v2;
    v6 = v0[4];
    v7 = v0[5];
    *(v1 + 96) = v4;
    *(v1 + 104) = v5;
    *(v1 + 72) = v6;
    *(v1 + 80) = v7;
LABEL_9:

    v17 = sub_1D13901AC();
    v19 = v18;

    goto LABEL_10;
  }

  sub_1D1072E70(v46, v44);
  type metadata accessor for TitleSubtitleDetailItem(0);
  if (swift_dynamicCast())
  {
    v8 = v45;
    sub_1D10F48A8();
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_1D139E710;
    v11 = v8[2];
    v10 = v8[3];
    v12 = MEMORY[0x1E69E6158];
    *(v9 + 56) = MEMORY[0x1E69E6158];
    v13 = sub_1D1089930();
    *(v9 + 64) = v13;
    *(v9 + 32) = v11;
    *(v9 + 40) = v10;
    v14 = v8[4];
    v15 = v8[5];
    *(v9 + 96) = v12;
    *(v9 + 104) = v13;
    if (!v15)
    {
      v14 = 0;
    }

    v16 = 0xE000000000000000;
    if (v15)
    {
      v16 = v15;
    }

    *(v9 + 72) = v14;
    *(v9 + 80) = v16;
    goto LABEL_9;
  }

  sub_1D1072E70(v46, v44);
  type metadata accessor for ReferenceRangeItem();
  if ((swift_dynamicCast() & 1) == 0)
  {
    v24 = 0;
    goto LABEL_11;
  }

  v26 = v45[2];
  if (!v26)
  {

    v24 = 0;
    goto LABEL_11;
  }

  v27 = v26;
  v28 = [v27 currentValue];
  v29 = [v28 displayString];

  v30 = sub_1D139016C();
  v32 = v31;

  v33 = [v27 unitString];
  if (v33)
  {
    v34 = v33;
    v35 = sub_1D139016C();
    v37 = v36;
  }

  else
  {
    v35 = 0;
    v37 = 0;
  }

  sub_1D10F48A8();
  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_1D139E710;
  v39 = MEMORY[0x1E69E6158];
  *(v38 + 56) = MEMORY[0x1E69E6158];
  v40 = sub_1D1089930();
  *(v38 + 32) = v30;
  *(v38 + 40) = v32;
  *(v38 + 96) = v39;
  *(v38 + 104) = v40;
  if (v37)
  {
    v41 = v35;
  }

  else
  {
    v41 = 0;
  }

  v42 = 0xE000000000000000;
  if (v37)
  {
    v42 = v37;
  }

  *(v38 + 64) = v40;
  *(v38 + 72) = v41;
  *(v38 + 80) = v42;
  v17 = sub_1D13901AC();
  v19 = v43;

LABEL_10:
  sub_1D1310D28(0);
  v20 = sub_1D139012C();
  v21 = swift_allocObject();
  *(v21 + 16) = v17;
  *(v21 + 24) = v19;
  v22 = objc_opt_self();
  v44[4] = sub_1D1312FD4;
  v44[5] = v21;
  v44[0] = MEMORY[0x1E69E9820];
  v44[1] = 1107296256;
  v44[2] = sub_1D10DC814;
  v44[3] = &block_descriptor_20_1;
  v23 = _Block_copy(v44);

  v24 = [v22 configurationWithIdentifier:v20 previewProvider:0 actionProvider:v23];

  _Block_release(v23);
LABEL_11:
  __swift_destroy_boxed_opaque_existential_1Tm(v46);
  return v24;
}

void sub_1D1312FE4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    a5(255, a3, a4);
    v6 = sub_1D1390F3C();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1D1313040(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1D13130A4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1D108077C;

  return sub_1D130FA48(a1, v4, v5, v7, v6);
}

uint64_t sub_1D1313164(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = a5(0);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t sub_1D13131C4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1D108077C;

  return sub_1D11E5C10(a1, v4);
}

uint64_t sub_1D131327C(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_1D1313318()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ClinicalNoteRecordFormatter();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_1D1313380(uint64_t a1)
{
  result = sub_1D13133A8();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1D13133A8()
{
  result = qword_1EC60F748;
  if (!qword_1EC60F748)
  {
    type metadata accessor for ClinicalNoteRecordFormatter();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC60F748);
  }

  return result;
}

id sub_1D13133FC(void *a1)
{
  v1 = [a1 categories];
  sub_1D106F934(0, &qword_1EC609980);
  v2 = sub_1D139045C();

  if (!(v2 >> 62))
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_22:
    v5 = MEMORY[0x1E69E7CC0];
    goto LABEL_23;
  }

LABEL_21:
  v3 = sub_1D13910DC();
  if (!v3)
  {
    goto LABEL_22;
  }

LABEL_3:
  v4 = 0;
  v5 = MEMORY[0x1E69E7CC0];
  do
  {
    v6 = v4;
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x1D3886B70](v6, v2);
      }

      else
      {
        if (v6 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_20;
        }

        v7 = *(v2 + 8 * v6 + 32);
      }

      v8 = v7;
      v4 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        __break(1u);
LABEL_20:
        __break(1u);
        goto LABEL_21;
      }

      v9 = [v7 localizedPreferredName];
      if (v9)
      {
        break;
      }

      ++v6;
      if (v4 == v3)
      {
        goto LABEL_23;
      }
    }

    v10 = v9;
    v11 = sub_1D139016C();
    v24 = v12;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v5 = sub_1D10F7284(0, *(v5 + 2) + 1, 1, v5);
    }

    v14 = *(v5 + 2);
    v13 = *(v5 + 3);
    if (v14 >= v13 >> 1)
    {
      v5 = sub_1D10F7284((v13 > 1), v14 + 1, 1, v5);
    }

    *(v5 + 2) = v14 + 1;
    v15 = &v5[16 * v14];
    *(v15 + 4) = v11;
    *(v15 + 5) = v24;
  }

  while (v4 != v3);
LABEL_23:

  v16 = Array<A>.newlineJoined.getter(v5);
  v18 = v17;

  v19 = HIBYTE(v18) & 0xF;
  if ((v18 & 0x2000000000000000) == 0)
  {
    v19 = v16 & 0xFFFFFFFFFFFFLL;
  }

  if (v19)
  {
    v20 = [objc_allocWithZone(WDMedicalRecordDisplayItem) init];
    [v20 setDisplayItemType_];
    if (qword_1EC608CE0 != -1)
    {
      swift_once();
    }

    sub_1D138D1CC();
    v21 = sub_1D139012C();

    [v20 setTitle_];

    v22 = sub_1D139012C();

    [v20 setSubtitle_];

    [v20 setSeparatorStyle_];
    [v20 setSeparatorHidden_];
    [v20 setExtraTopPadding_];
  }

  else
  {

    return 0;
  }

  return v20;
}

id sub_1D1313750(void *a1)
{
  v1 = [a1 authors];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1D139045C();

  v4 = Array<A>.newlineJoined.getter(v3);
  v6 = v5;

  v7 = HIBYTE(v6) & 0xF;
  if ((v6 & 0x2000000000000000) == 0)
  {
    v7 = v4 & 0xFFFFFFFFFFFFLL;
  }

  if (!v7)
  {

    return 0;
  }

  v8 = [objc_allocWithZone(WDMedicalRecordDisplayItem) init];
  [v8 setDisplayItemType_];
  if (qword_1EC608CE0 != -1)
  {
    swift_once();
  }

  sub_1D138D1CC();
  v9 = sub_1D139012C();

  [v8 setTitle_];

  v10 = sub_1D139012C();

  [v8 setSubtitle_];

  [v8 setSeparatorStyle_];
  [v8 setSeparatorHidden_];
  [v8 setExtraTopPadding_];

  return v8;
}

id sub_1D1313934(void *a1)
{
  sub_1D1107C14(0, &qword_1EC60DF40, MEMORY[0x1E6969770], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v60 - v3;
  v5 = sub_1D138D57C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v60 - v10;
  if (qword_1EC608CE0 != -1)
  {
    swift_once();
  }

  v64 = sub_1D138D1CC();
  v65 = v12;
  v63 = sub_1D106F934(0, &qword_1EC609BE8);
  v13 = [a1 relevantStartDate];
  v14 = [a1 relevantEndDate];
  v15 = [a1 meaningfulDateTitle];
  v16 = sub_1D139016C();
  v18 = v17;

  if (v13)
  {
    if (v14)
    {
      v61 = v16;
      v62 = v4;
      v19 = v14;
      v20 = v13;
      v21 = [v19 dateForUTC];
      sub_1D138D52C();

      v22 = [v20 dateForUTC];
      sub_1D138D52C();

      sub_1D138D4CC();
      v24 = v23;
      v25 = *(v6 + 8);
      v25(v8, v5);
      v25(v11, v5);
      if (v24 > COERCE_DOUBLE(1))
      {
        v26 = v19;

        v61 = "ETAIL_TITLE_RELEASED";
        v27 = sub_1D138D67C();
        (*(*(v27 - 8) + 56))(v62, 1, 1, v27);
        if (qword_1EC608CB0 != -1)
        {
          swift_once();
        }

        sub_1D1107C14(0, &qword_1EE06B080, sub_1D10898CC, MEMORY[0x1E69E6F90]);
        v28 = swift_allocObject();
        *(v28 + 16) = xmmword_1D139E710;
        v63 = v20;
        v29 = [v20 displayString];
        v30 = sub_1D139016C();
        v32 = v31;

        v33 = MEMORY[0x1E69E6158];
        *(v28 + 56) = MEMORY[0x1E69E6158];
        v34 = sub_1D1089930();
        *(v28 + 64) = v34;
        *(v28 + 32) = v30;
        *(v28 + 40) = v32;
        v35 = [v26 displayString];
        v36 = sub_1D139016C();
        v38 = v37;

        *(v28 + 96) = v33;
        *(v28 + 104) = v34;
        *(v28 + 72) = v36;
        *(v28 + 80) = v38;
        v39 = sub_1D138D1CC();
        v41 = v40;
        if (*(v28 + 16))
        {
          v42 = v62;
          v39 = sub_1D139019C();
          v44 = v43;

          sub_1D10CD608(v42);
          v41 = v44;
        }

        else
        {
          sub_1D10CD608(v62);
        }

        v54 = HIBYTE(v41) & 0xF;
        if ((v41 & 0x2000000000000000) == 0)
        {
          v54 = v39 & 0xFFFFFFFFFFFFLL;
        }

        if (v54)
        {
          v47 = [objc_allocWithZone(WDMedicalRecordDisplayItem) init];
          [v47 setDisplayItemType_];

          v55 = sub_1D139012C();

          [v47 setTitle_];

          v56 = sub_1D139012C();

          [v47 setSubtitle_];

          [v47 setSeparatorStyle_];
          [v47 setSeparatorHidden_];
          [v47 setExtraTopPadding_];

          v57 = v63;
          return v47;
        }

        v58 = v63;
        return 0;
      }

      v52 = v65;

      v53 = v20;
      v47 = sub_1D11EDE68(v64, v52, v13, v61, v18);
      v48 = v47;
    }

    else
    {
      v49 = v13;
      v50 = v65;

      v51 = v49;
      v47 = sub_1D11EDE68(v64, v50, v13, v16, v18);
      v48 = v47;
    }
  }

  else
  {
    if (!v14)
    {

      return 0;
    }

    v45 = v14;
    v46 = v65;

    v47 = sub_1D11EDE68(v64, v46, v14, v16, v18);
    v48 = v47;
  }

  if (v47)
  {
  }

  return v47;
}

void *sub_1D1314088(void *a1)
{
  v1 = a1;
  v17[4] = sub_1D1201200(a1);
  v17[5] = sub_1D128719C(v1);
  v17[6] = sub_1D13133FC(v1);
  v17[7] = sub_1D1313750(v1);
  v17[8] = sub_1D1313934(v1);
  if (qword_1EC608CE0 != -1)
  {
LABEL_14:
    swift_once();
  }

  v2 = sub_1D138D1CC();
  v4 = v3;
  sub_1D106F934(0, &qword_1EC609BE8);
  v5 = [v1 noteCreationDate];
  v6 = [v1 meaningfulDateTitle];
  v7 = sub_1D139016C();
  v9 = v8;

  v10 = sub_1D11EDE68(v2, v4, v5, v7, v9);
  v11 = 0;
  v17[9] = v10;
  v1 = MEMORY[0x1E69E7CC0];
  v16 = MEMORY[0x1E69E7CC0];
LABEL_3:
  if (v11 <= 6)
  {
    v12 = 6;
  }

  else
  {
    v12 = v11;
  }

  while (v11 != 6)
  {
    if (v12 == v11)
    {
      __break(1u);
      goto LABEL_14;
    }

    v13 = v17[v11++ + 4];
    if (v13)
    {
      v14 = v13;
      MEMORY[0x1D3885D90]();
      if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1D13904BC();
      }

      sub_1D13904FC();
      v1 = v16;
      goto LABEL_3;
    }
  }

  sub_1D10CD53C();
  swift_arrayDestroy();
  return v1;
}

uint64_t sub_1D13142BC(void *a1)
{
  v8[4] = sub_1D13133FC(a1);
  v2 = 0;
  v8[5] = sub_1D1313750(a1);
  v3 = MEMORY[0x1E69E7CC0];
  v7 = MEMORY[0x1E69E7CC0];
  while (v2 != 2)
  {
    v4 = v8[v2++ + 4];
    if (v4)
    {
      v5 = v4;
      MEMORY[0x1D3885D90]();
      if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1D13904BC();
      }

      sub_1D13904FC();
      v3 = v7;
    }
  }

  sub_1D10CD53C();
  swift_arrayDestroy();
  return v3;
}

uint64_t sub_1D13143B0(uint64_t a1, uint64_t a2, void *a3)
{
  *(a1 + OBJC_IVAR____TtC15HealthRecordsUI42MedicalRecordTimelineRemovedRecordItemCell_item) = *a3;
  swift_retain_n();

  sub_1D1314BD4();
}

uint64_t sub_1D1314418()
{
  sub_1D116DEF0(v0 + OBJC_IVAR____TtC15HealthRecordsUI38MedicalRecordTimelineRemovedRecordItem_cellResolution);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for MedicalRecordTimelineRemovedRecordItem()
{
  result = qword_1EC60F750;
  if (!qword_1EC60F750)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D13144F4()
{
  result = sub_1D138DC8C();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1D131459C()
{
  v1 = *v0;
  sub_1D139177C();
  sub_1D139027C();
  sub_1D123F520(v3, *(v1 + OBJC_IVAR____TtC15HealthRecordsUI38MedicalRecordTimelineRemovedRecordItem_removedRecords));
  return sub_1D13917CC();
}

uint64_t sub_1D1314604(uint64_t a1)
{
  v3 = *v1;
  sub_1D139027C();
  v4 = *(v3 + OBJC_IVAR____TtC15HealthRecordsUI38MedicalRecordTimelineRemovedRecordItem_removedRecords);

  return sub_1D123F520(a1, v4);
}

uint64_t sub_1D131465C()
{
  sub_1D139177C();
  v1 = *v0;
  sub_1D139027C();
  sub_1D123F520(v3, *(v1 + OBJC_IVAR____TtC15HealthRecordsUI38MedicalRecordTimelineRemovedRecordItem_removedRecords));
  return sub_1D13917CC();
}

uint64_t sub_1D13146C0()
{
  v1 = *(*v0 + OBJC_IVAR____TtC15HealthRecordsUI38MedicalRecordTimelineRemovedRecordItem_reuseIdentifier);

  return v1;
}

id sub_1D1314734(double a1, double a2, double a3, double a4)
{
  sub_1D1315C0C(0, &qword_1EC6103F0, MEMORY[0x1E69DC0D8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v21 - v10;
  v12 = sub_1D138F20C();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v4[OBJC_IVAR____TtC15HealthRecordsUI42MedicalRecordTimelineRemovedRecordItemCell_item] = 0;
  v16 = type metadata accessor for MedicalRecordTimelineRemovedRecordItemCell();
  v21.receiver = v4;
  v21.super_class = v16;
  v17 = objc_msgSendSuper2(&v21, sel_initWithFrame_, a1, a2, a3, a4);
  sub_1D138D84C();
  sub_1D1390C8C();
  v18 = [objc_opt_self() currentTraitCollection];
  sub_1D138F1DC();
  sub_1D133DBE4();
  v19 = sub_1D138F27C();
  (*(*(v19 - 8) + 56))(v11, 0, 1, v19);
  MEMORY[0x1D38864A0](v11);

  (*(v13 + 8))(v15, v12);
  return v17;
}

id sub_1D1314988(void *a1)
{
  sub_1D1315C0C(0, &qword_1EC6103F0, MEMORY[0x1E69DC0D8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v17 - v4;
  v6 = sub_1D138F20C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v1[OBJC_IVAR____TtC15HealthRecordsUI42MedicalRecordTimelineRemovedRecordItemCell_item] = 0;
  v10 = type metadata accessor for MedicalRecordTimelineRemovedRecordItemCell();
  v17.receiver = v1;
  v17.super_class = v10;
  v11 = objc_msgSendSuper2(&v17, sel_initWithCoder_, a1);
  if (v11)
  {
    v12 = v11;
    v13 = v11;
    sub_1D138D84C();
    sub_1D1390C8C();
    v14 = [objc_opt_self() currentTraitCollection];
    sub_1D138F1DC();
    sub_1D133DBE4();
    v15 = sub_1D138F27C();
    (*(*(v15 - 8) + 56))(v5, 0, 1, v15);
    MEMORY[0x1D38864A0](v5);

    (*(v7 + 8))(v9, v6);
    return v12;
  }

  else
  {

    return 0;
  }
}

id sub_1D1314BD4()
{
  sub_1D1315C0C(0, &qword_1EC60A060, MEMORY[0x1E69DBF38], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v41 - v2;
  v4 = sub_1D138F15C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1D138F0FC();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1D138F3FC();
  v13 = *(v12 - 8);
  result = MEMORY[0x1EEE9AC00](v12);
  v16 = &v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(v0 + OBJC_IVAR____TtC15HealthRecordsUI42MedicalRecordTimelineRemovedRecordItemCell_item);
  if (v17)
  {
    v42 = v13;
    v43 = v11;
    v18 = result;
    v45 = v3;
    v46 = v5;
    v47 = v4;
    v48 = v0;
    v51 = v17;

    sub_1D138F3EC();
    if (qword_1EE06AD00 != -1)
    {
      swift_once();
    }

    v49 = v9;
    v50 = v7;
    v44 = v8;
    sub_1D138D1CC();
    sub_1D138F3BC();
    v19 = objc_opt_self();
    v20 = *MEMORY[0x1E69DDD80];
    v21 = *MEMORY[0x1E69DB978];
    result = [v19 _preferredFontForTextStyle_weight_];
    if (result)
    {
      v22 = sub_1D138F2FC();
      sub_1D138F2CC();
      v22(v52, 0);
      v23 = objc_opt_self();
      v24 = [v23 labelColor];
      v25 = sub_1D138F2FC();
      sub_1D138F2DC();
      v25(v52, 0);
      v26 = *(v51 + OBJC_IVAR____TtC15HealthRecordsUI38MedicalRecordTimelineRemovedRecordItem_removedRecords);
      if (v26 >> 62)
      {
        v27 = sub_1D13910DC();
      }

      else
      {
        v27 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v28 = v49;
      v29 = v50;
      v52[0] = v27;
      sub_1D13915CC();
      sub_1D138F29C();
      result = [v19 &selRef_object + 2];
      if (result)
      {
        v30 = sub_1D138F34C();
        sub_1D138F2CC();
        v30(v52, 0);
        v31 = [v23 secondaryLabelColor];
        v32 = sub_1D138F34C();
        sub_1D138F2DC();
        v32(v52, 0);
        v52[3] = v18;
        v52[4] = MEMORY[0x1E69DC110];
        v33 = v18;
        v41 = v18;
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v52);
        v35 = v42;
        (*(v42 + 16))(boxed_opaque_existential_1, v16, v33);
        MEMORY[0x1D3886480](v52);
        sub_1D1315C0C(0, &qword_1EC60A058, MEMORY[0x1E69DBF68], MEMORY[0x1E69E6F90]);
        sub_1D138F17C();
        *(swift_allocObject() + 16) = xmmword_1D139E700;
        v36 = *(v28 + 104);
        v37 = v28;
        v39 = v43;
        v38 = v44;
        v36(v43, *MEMORY[0x1E69DBF28], v44);
        v40 = sub_1D138F10C();
        (*(*(v40 - 8) + 56))(v45, 1, 1, v40);
        sub_1D138F14C();
        sub_1D138F11C();
        (*(v46 + 8))(v29, v47);
        (*(v37 + 8))(v39, v38);
        sub_1D1390B8C();

        return (*(v35 + 8))(v16, v41);
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }

  return result;
}

id sub_1D131536C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MedicalRecordTimelineRemovedRecordItemCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1D1315444(void *a1)
{
  v3 = sub_1D138D5EC();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D1315C0C(0, &qword_1EC60D6B0, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v7 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v53 - v10;
  v12 = *(v1 + OBJC_IVAR____TtC15HealthRecordsUI42MedicalRecordTimelineRemovedRecordItemCell_item);
  if (v12)
  {
    v56 = v9;
    v57 = v3;
    v54 = v6;
    v59 = a1;
    v60 = v1;
    v13 = qword_1EE06AF70;

    if (v13 != -1)
    {
      v14 = swift_once();
    }

    v65 = *(qword_1EE06BB58 + OBJC_IVAR___HRProfileManager_lock);
    MEMORY[0x1EEE9AC00](v14);
    *(&v53 - 2) = v15;
    sub_1D138D96C();
    sub_1D118C3B4();
    sub_1D1315BC4(&qword_1EE06B048, MEMORY[0x1E69A3B50]);

    sub_1D138ED0C();

    v16 = v62;
    v58 = v12;
    v17 = *(v12 + OBJC_IVAR____TtC15HealthRecordsUI38MedicalRecordTimelineRemovedRecordItem_removedRecords);
    v55 = v4;
    v18 = v11;
    v19 = v11;
    v20 = v57;
    (*(v4 + 56))(v19, 1, 1, v57);
    v21 = type metadata accessor for MedicalRecordTimelineViewController();
    v22 = objc_allocWithZone(v21);
    v23 = &v22[OBJC_IVAR___HRMedicalRecordTimelineViewController_overrideTitle];
    *v23 = 0;
    v23[1] = 0;
    *&v22[OBJC_IVAR___HRMedicalRecordTimelineViewController_displayItemProvider] = 0;
    *&v22[OBJC_IVAR___HRMedicalRecordTimelineViewController_observer] = 0;
    *&v22[OBJC_IVAR___HRMedicalRecordTimelineViewController_account] = 0;
    v24 = OBJC_IVAR___HRMedicalRecordTimelineViewController_ontologyConcept;
    *&v22[OBJC_IVAR___HRMedicalRecordTimelineViewController_ontologyConcept] = 0;
    v22[OBJC_IVAR___HRMedicalRecordTimelineViewController_chartLoaded] = 0;
    *&v22[OBJC_IVAR___HRMedicalRecordTimelineViewController____lazy_storage___contentStatusView] = 0;
    *&v22[OBJC_IVAR___HRMedicalRecordTimelineViewController____lazy_storage___clinicalAccountStore] = 0;
    *&v22[OBJC_IVAR___HRMedicalRecordTimelineViewController____lazy_storage___dataProvider] = 0;
    *&v22[OBJC_IVAR___HRMedicalRecordTimelineViewController____lazy_storage___accountStateProvider] = 0;
    *&v22[OBJC_IVAR___HRMedicalRecordTimelineViewController____lazy_storage___dataSourceProvider] = 0;
    *&v22[OBJC_IVAR___HRMedicalRecordTimelineViewController____lazy_storage___dataSource] = 0;
    *&v22[OBJC_IVAR___HRMedicalRecordTimelineViewController_cloudSyncObserver] = 0;
    *&v22[OBJC_IVAR___HRMedicalRecordTimelineViewController_queryReturnedCancellable] = 0;
    *&v22[OBJC_IVAR___HRMedicalRecordTimelineViewController_accountStateCancellable] = 0;
    *&v22[OBJC_IVAR___HRMedicalRecordTimelineViewController_ingestionStateCancellable] = 0;
    *&v22[OBJC_IVAR___HRMedicalRecordTimelineViewController_indexManagerStateCancellable] = 0;
    v25 = &v22[OBJC_IVAR___HRMedicalRecordTimelineViewController_ingestionState];
    *v25 = 0;
    v25[8] = 1;
    v26 = &v22[OBJC_IVAR___HRMedicalRecordTimelineViewController_indexManagerState];
    *v26 = 0;
    v26[8] = 1;
    v27 = &v22[OBJC_IVAR___HRMedicalRecordTimelineViewController_gradientView];
    sub_1D138E37C();
    v28 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    v29 = v16;

    v30 = [v28 init];
    v31 = MEMORY[0x1E69A3658];
    *v27 = v30;
    v27[1] = v31;
    v22[OBJC_IVAR___HRMedicalRecordTimelineViewController_showGradientBackgroundForAllRecordsRoom] = 0;
    *&v22[OBJC_IVAR___HRMedicalRecordTimelineViewController_gradientSubscriber] = 0;
    *&v22[OBJC_IVAR___HRMedicalRecordTimelineViewController_profile] = v29;
    *&v22[OBJC_IVAR___HRMedicalRecordTimelineViewController_category] = 0;
    sub_1D1127E2C(v18, &v22[OBJC_IVAR___HRMedicalRecordTimelineViewController_accountId]);
    *&v22[OBJC_IVAR___HRMedicalRecordTimelineViewController_conceptIdentifier] = 0;
    *&v22[OBJC_IVAR___HRMedicalRecordTimelineViewController_userDomainConcept] = 0;
    *&v22[OBJC_IVAR___HRMedicalRecordTimelineViewController_additionalPredicatesPerSampleType] = 0;
    v22[OBJC_IVAR___HRMedicalRecordTimelineViewController_isDisplayingRemovedRecords] = 1;
    v22[OBJC_IVAR___HRMedicalRecordTimelineViewController_showExportButton] = 0;
    v22[OBJC_IVAR___HRMedicalRecordTimelineViewController_cloudSyncActive] = 0;
    *&v22[OBJC_IVAR___HRMedicalRecordTimelineViewController_preloadedRemovedRecords] = v17;
    v32 = *&v22[v24];
    v33 = &v22[OBJC_IVAR___HRMedicalRecordTimelineViewController_displayState];
    *v33 = 0;
    *(v33 + 1) = 0;
    *(v33 + 2) = v32;
    *(v33 + 3) = 0;
    v33[32] = 1;
    v34 = objc_opt_self();
    v35 = v32;
    v36 = v29;

    v37 = [v34 clearColor];
    v63 = sub_1D138E90C();
    v64 = MEMORY[0x1E69A3750];
    __swift_allocate_boxed_opaque_existential_1(&v62);
    sub_1D138E8FC();
    sub_1D102CC18(&v62, &v22[OBJC_IVAR___HRMedicalRecordTimelineViewController_gradientColorProvider]);
    v38 = [v36 healthStore];
    v39 = sub_1D107D9D8(v38, 0, 0, 0, 0, v18, v17);

    *&v22[OBJC_IVAR___HRMedicalRecordTimelineViewController_timelinePagedDataSource] = v39;
    v40 = v55;
    v41 = [objc_allocWithZone(MEMORY[0x1E69DC840]) init];
    v61.receiver = v22;
    v61.super_class = v21;
    v42 = objc_msgSendSuper2(&v61, sel_initWithCollectionViewLayout_, v41);

    v43 = v42;
    sub_1D1072338();

    sub_1D138F6CC();

    v44 = BYTE8(v62);
    v45 = &v43[OBJC_IVAR___HRMedicalRecordTimelineViewController_ingestionState];
    *v45 = v62;
    v45[8] = v44;

    sub_1D138F6CC();

    v46 = v62;
    v47 = BYTE8(v62);
    if (v62 <= 1)
    {
      v48 = 1;
    }

    else
    {
      v48 = v62;
    }

    if (!BYTE8(v62))
    {
      v46 = v48;
    }

    v49 = &v43[OBJC_IVAR___HRMedicalRecordTimelineViewController_indexManagerState];
    *v49 = v46;
    v49[8] = v47;
    v50 = v56;
    sub_1D1127E2C(v18, v56);
    if ((*(v40 + 48))(v50, 1, v20) == 1)
    {
      sub_1D10F27F4(v50);
    }

    else
    {
      v51 = v54;
      (*(v40 + 32))(v54, v50, v20);
      sub_1D107B54C(v51);
      (*(v40 + 8))(v51, v20);
    }

    v52 = v59;
    sub_1D107A01C();

    sub_1D10F27F4(v18);
    [v52 showViewController:v43 sender:v60];
  }
}

uint64_t sub_1D1315BC4(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1D1315C0C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1D1315C70(uint64_t a1, uint64_t a2)
{
  v3[21] = a2;
  v3[22] = v2;
  v3[20] = a1;
  v4 = sub_1D138F0BC();
  v3[23] = v4;
  v3[24] = *(v4 - 8);
  v3[25] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D1315D34, 0, 0);
}

uint64_t sub_1D1315D34()
{
  v1 = v0[21];
  v2 = v0[20];
  v3 = *(v0[22] + 24);
  sub_1D1086E1C();
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1D139E700;
  *(v4 + 32) = v2;
  *(v4 + 40) = v1;

  v5 = sub_1D139044C();
  v0[26] = v5;

  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_1D1315ED0;
  v6 = swift_continuation_init();
  sub_1D1327A60(0, &qword_1EC60D1B0, &qword_1EC60A9F8, &qword_1EC609A00, 0x1E69A3F00);
  v0[17] = v7;
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1D11E0CA4;
  v0[13] = &block_descriptor_192;
  v0[14] = v6;
  [v3 fetchAccountsForGatewaysWithExternalIDs:v5 completion:v0 + 10];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1D1315ED0()
{
  v1 = *(*v0 + 48);
  *(*v0 + 216) = v1;
  if (v1)
  {
    v2 = sub_1D13160C4;
  }

  else
  {
    v2 = sub_1D1315FE0;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D1315FE0()
{
  v1 = *(v0 + 144);

  if (v1 >> 62)
  {
    result = sub_1D13910DC();
    if (result)
    {
      goto LABEL_3;
    }

LABEL_8:

    v4 = 0;
    goto LABEL_9;
  }

  result = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((v1 & 0xC000000000000001) != 0)
  {
    v3 = MEMORY[0x1D3886B70](0, v1);
  }

  else
  {
    if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v3 = *(v1 + 32);
  }

  v4 = v3;

LABEL_9:

  v5 = *(v0 + 8);

  return v5(v4);
}

uint64_t sub_1D13160C4()
{
  v27 = v0;
  v1 = *(v0 + 208);
  v2 = *(v0 + 216);
  swift_willThrow();

  sub_1D138F06C();

  v3 = v2;
  v4 = sub_1D138F0AC();
  v5 = sub_1D13907FC();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 216);
    v23 = *(v0 + 192);
    v24 = *(v0 + 184);
    v25 = *(v0 + 200);
    v7 = *(v0 + 160);
    v8 = *(v0 + 168);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v26[0] = v10;
    *v9 = 136315650;
    v11 = sub_1D131B120();
    v13 = sub_1D11DF718(v11, v12, v26);

    *(v9 + 4) = v13;
    *(v9 + 12) = 2080;
    *(v9 + 14) = sub_1D11DF718(v7, v8, v26);
    *(v9 + 22) = 2080;
    *(v0 + 152) = v6;
    v14 = v6;
    sub_1D10922EC();
    v15 = sub_1D13901EC();
    v17 = sub_1D11DF718(v15, v16, v26);

    *(v9 + 24) = v17;
    _os_log_impl(&dword_1D101F000, v4, v5, "%s failed to fetch existing account for gateway %s: %s", v9, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1D38882F0](v10, -1, -1);
    MEMORY[0x1D38882F0](v9, -1, -1);

    (*(v23 + 8))(v25, v24);
  }

  else
  {
    v19 = *(v0 + 192);
    v18 = *(v0 + 200);
    v20 = *(v0 + 184);

    (*(v19 + 8))(v18, v20);
  }

  v21 = *(v0 + 8);

  return v21(0);
}

uint64_t sub_1D1316330(uint64_t a1, uint64_t a2)
{
  v3[38] = a2;
  v3[39] = v2;
  v3[37] = a1;
  v4 = sub_1D138D5EC();
  v3[40] = v4;
  v3[41] = *(v4 - 8);
  v3[42] = swift_task_alloc();
  v3[43] = type metadata accessor for ClinicalAccountLoginUpgradeAction();
  v3[44] = swift_task_alloc();
  v3[45] = swift_task_alloc();
  v3[46] = swift_task_alloc();
  v5 = sub_1D138F0BC();
  v3[47] = v5;
  v3[48] = *(v5 - 8);
  v3[49] = swift_task_alloc();
  v3[50] = swift_task_alloc();
  v3[51] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D13164B0, 0, 0);
}

uint64_t sub_1D13164B0()
{
  v28 = v0;
  v1 = v0[46];
  v2 = v0[37];
  sub_1D138F06C();
  sub_1D1325C44(v2, v1, type metadata accessor for ClinicalAccountLoginUpgradeAction);

  v3 = sub_1D138F0AC();
  v4 = sub_1D13907EC();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[51];
  v8 = v0[47];
  v7 = v0[48];
  v9 = v0[46];
  if (v5)
  {
    v26 = v0[47];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v27 = v11;
    *v10 = 136315394;
    v12 = sub_1D131B120();
    v25 = v6;
    v14 = sub_1D11DF718(v12, v13, &v27);

    *(v10 + 4) = v14;
    *(v10 + 12) = 2080;
    sub_1D1325B98(&qword_1EC60D1C0, MEMORY[0x1E69695A8]);
    v15 = sub_1D13915CC();
    v17 = v16;
    sub_1D13260D8(v9, type metadata accessor for ClinicalAccountLoginUpgradeAction);
    v18 = sub_1D11DF718(v15, v17, &v27);

    *(v10 + 14) = v18;
    _os_log_impl(&dword_1D101F000, v3, v4, "%s determining appropriate login/upgrade action for account %s", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1D38882F0](v11, -1, -1);
    MEMORY[0x1D38882F0](v10, -1, -1);

    v19 = *(v7 + 8);
    v19(v25, v26);
  }

  else
  {

    sub_1D13260D8(v9, type metadata accessor for ClinicalAccountLoginUpgradeAction);
    v19 = *(v7 + 8);
    v19(v6, v8);
  }

  v0[52] = v19;
  v20 = *(v0[39] + 24);
  v0[53] = v20;
  v21 = sub_1D138D5AC();
  v0[54] = v21;
  v0[2] = v0;
  v0[7] = v0 + 34;
  v0[3] = sub_1D13167F8;
  v22 = swift_continuation_init();
  sub_1D1256A40();
  v0[25] = v23;
  v0[18] = MEMORY[0x1E69E9820];
  v0[19] = 1107296256;
  v0[20] = sub_1D1121DF8;
  v0[21] = &block_descriptor_150;
  v0[22] = v22;
  [v20 fetchAccountWithIdentifier:v21 completion:v0 + 18];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1D13167F8()
{
  v1 = *(*v0 + 48);
  *(*v0 + 440) = v1;
  if (v1)
  {
    v2 = sub_1D1317154;
  }

  else
  {
    v2 = sub_1D1316908;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D1316908()
{
  v1 = v0[54];
  v2 = v0[43];
  v3 = v0[37];
  v4 = v0[34];
  v0[56] = v4;

  v5 = *(v3 + *(v2 + 20));
  if (v5 >= 3)
  {
    if (v5 == 3)
    {
      v9 = v0[53];
      v11 = v0[41];
      v10 = v0[42];
      v12 = v0[40];
      v13 = [v4 identifier];
      sub_1D138D5CC();

      v14 = sub_1D138D5AC();
      v0[60] = v14;
      (*(v11 + 8))(v10, v12);
      v0[10] = v0;
      v0[15] = v0 + 62;
      v0[11] = sub_1D1316F84;
      v15 = swift_continuation_init();
      sub_1D12D60DC(0, &unk_1EC60F180);
      v0[33] = v16;
      v0[26] = MEMORY[0x1E69E9820];
      v0[27] = 1107296256;
      v0[28] = sub_1D131A1F0;
      v0[29] = &block_descriptor_153;
      v0[30] = v15;
      [v9 deleteAccountWithIdentifier:v14 deletionReason:0 completion:v0 + 26];

      return MEMORY[0x1EEE6DEC8](v0 + 10);
    }

    else
    {
      v18 = v0[38];
      v17 = v0[39];
      type metadata accessor for ClinicalAccountUpgradeManager();
      swift_allocObject();

      v19 = v4;
      v20 = v18;
      v0[57] = sub_1D1292444(v19, v17, v20);

      v21 = swift_task_alloc();
      v0[58] = v21;
      *v21 = v0;
      v21[1] = sub_1D1316C18;

      return sub_1D1289FC8();
    }
  }

  else
  {
    v6 = swift_task_alloc();
    v0[59] = v6;
    *v6 = v0;
    v6[1] = sub_1D1316DD0;
    v7 = v0[38];

    return ClinicalAccountManager.startRelogin(to:from:)(v4, v7);
  }
}

uint64_t sub_1D1316C18()
{

  return MEMORY[0x1EEE6DFA0](sub_1D1316D14, 0, 0);
}

uint64_t sub_1D1316D14()
{
  v1 = *(v0 + 448);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1D1316DD0()
{

  return MEMORY[0x1EEE6DFA0](sub_1D1316ECC, 0, 0);
}

uint64_t sub_1D1316ECC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D1316F84()
{
  v1 = *(*v0 + 112);
  *(*v0 + 488) = v1;
  if (v1)
  {
    v2 = sub_1D13174B4;
  }

  else
  {
    v2 = sub_1D1317094;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D1317094()
{
  v1 = *(v0 + 480);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1D1317154()
{
  v34 = v0;
  v2 = v0[54];
  v1 = v0[55];
  v3 = v0[45];
  v4 = v0[37];
  swift_willThrow();

  sub_1D138F06C();
  sub_1D1325C44(v4, v3, type metadata accessor for ClinicalAccountLoginUpgradeAction);

  v5 = v1;
  v6 = sub_1D138F0AC();
  v7 = sub_1D13907FC();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = v0[55];
    v31 = v0[50];
    v32 = v0[52];
    v30 = v0[47];
    v9 = v0[45];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v33[0] = v11;
    *v10 = 136315650;
    v12 = sub_1D131B120();
    v14 = sub_1D11DF718(v12, v13, v33);

    *(v10 + 4) = v14;
    *(v10 + 12) = 2080;
    sub_1D1325B98(&qword_1EC60D1C0, MEMORY[0x1E69695A8]);
    v15 = sub_1D13915CC();
    v17 = v16;
    sub_1D13260D8(v9, type metadata accessor for ClinicalAccountLoginUpgradeAction);
    v18 = sub_1D11DF718(v15, v17, v33);

    *(v10 + 14) = v18;
    *(v10 + 22) = 2080;
    v0[35] = v8;
    v19 = v8;
    sub_1D10922EC();
    v20 = sub_1D13901EC();
    v22 = sub_1D11DF718(v20, v21, v33);

    *(v10 + 24) = v22;
    _os_log_impl(&dword_1D101F000, v6, v7, "%s failed to fetch account %s: %s", v10, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1D38882F0](v11, -1, -1);
    MEMORY[0x1D38882F0](v10, -1, -1);

    v32(v31, v30);
  }

  else
  {
    v23 = v0[55];
    v24 = v0[52];
    v25 = v0[50];
    v26 = v0[47];
    v27 = v0[45];

    sub_1D13260D8(v27, type metadata accessor for ClinicalAccountLoginUpgradeAction);
    v24(v25, v26);
  }

  v28 = v0[1];

  return v28();
}

uint64_t sub_1D13174B4()
{
  v36 = v0;
  v2 = v0[60];
  v1 = v0[61];
  v3 = v0[44];
  v4 = v0[37];
  swift_willThrow();

  sub_1D138F06C();
  sub_1D1325C44(v4, v3, type metadata accessor for ClinicalAccountLoginUpgradeAction);

  v5 = v1;
  v6 = sub_1D138F0AC();
  v7 = sub_1D13907FC();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = v0[61];
    v33 = v0[49];
    v34 = v0[52];
    v31 = v0[56];
    v32 = v0[47];
    v9 = v0[44];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v35[0] = v11;
    *v10 = 136315650;
    v12 = sub_1D131B120();
    v14 = sub_1D11DF718(v12, v13, v35);

    *(v10 + 4) = v14;
    *(v10 + 12) = 2080;
    sub_1D1325B98(&qword_1EC60D1C0, MEMORY[0x1E69695A8]);
    v15 = sub_1D13915CC();
    v17 = v16;
    sub_1D13260D8(v9, type metadata accessor for ClinicalAccountLoginUpgradeAction);
    v18 = sub_1D11DF718(v15, v17, v35);

    *(v10 + 14) = v18;
    *(v10 + 22) = 2080;
    v0[36] = v8;
    v19 = v8;
    sub_1D10922EC();
    v20 = sub_1D13901EC();
    v22 = sub_1D11DF718(v20, v21, v35);

    *(v10 + 24) = v22;
    _os_log_impl(&dword_1D101F000, v6, v7, "%s failed to delete account %s: %s", v10, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1D38882F0](v11, -1, -1);
    MEMORY[0x1D38882F0](v10, -1, -1);

    v34(v33, v32);
  }

  else
  {
    v23 = v0[61];
    v24 = v0[56];
    v25 = v0[52];
    v26 = v0[49];
    v27 = v0[47];
    v28 = v0[44];

    sub_1D13260D8(v28, type metadata accessor for ClinicalAccountLoginUpgradeAction);
    v25(v26, v27);
  }

  v29 = v0[1];

  return v29();
}

void *ClinicalAccountManager.__allocating_init(profile:)(void *a1)
{
  v2 = swift_allocObject();
  v3 = MEMORY[0x1E69E7CD0];
  v2[5] = 0;
  v2[6] = 0;
  v2[4] = v3;
  v2[2] = a1;
  v2[3] = [a1 clinicalAccountStore];
  return v2;
}

uint64_t ClinicalAccountManager.upgradeAccount(_:presentingViewController:)(void *a1, void *a2)
{
  v3 = v2;
  sub_1D1326138(0, &qword_1EE06A650, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v15 - v7;
  type metadata accessor for ClinicalAccountUpgradeManager();
  swift_allocObject();
  v9 = a1;

  v10 = a2;
  v11 = sub_1D1292444(v9, v3, v10);

  v12 = sub_1D13905DC();
  (*(*(v12 - 8) + 56))(v8, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = v11;
  sub_1D107877C(0, 0, v8, &unk_1D13A0E78, v13);
}

uint64_t ClinicalAccountManager.startRelogin(to:from:)(uint64_t a1, uint64_t a2)
{
  v3[5] = a2;
  v3[6] = v2;
  v3[4] = a1;
  v4 = sub_1D138F0BC();
  v3[7] = v4;
  v3[8] = *(v4 - 8);
  v3[9] = swift_task_alloc();
  sub_1D13905AC();
  v3[10] = sub_1D139059C();
  v6 = sub_1D139055C();
  v3[11] = v6;
  v3[12] = v5;

  return MEMORY[0x1EEE6DFA0](sub_1D1317B18, v6, v5);
}

uint64_t sub_1D1317B18()
{
  v44 = v0;
  v1 = [(objc_class *)v0[2].super_class hk_window];
  v2 = v1;
  if (!v1)
  {
    super_class = v0[2].super_class;
    sub_1D138F06C();

    v4 = super_class;
    v5 = sub_1D138F0AC();
    v6 = sub_1D13907FC();

    v7 = os_log_type_enabled(v5, v6);
    receiver = v0[4].receiver;
    v8 = v0[4].super_class;
    v10 = v0[3].super_class;
    if (v7)
    {
      v41 = v0[3].super_class;
      v42 = v0[4].super_class;
      v11 = v0[2].super_class;
      v12 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v43 = v40;
      *v12 = 136315394;
      v13 = sub_1D131B120();
      v15 = sub_1D11DF718(v13, v14, &v43);

      *(v12 + 4) = v15;
      *(v12 + 12) = 2080;
      v16 = v11;
      v17 = [(objc_class *)v16 description];
      v18 = sub_1D139016C();
      v20 = v19;

      v21 = sub_1D11DF718(v18, v20, &v43);

      *(v12 + 14) = v21;
      _os_log_impl(&dword_1D101F000, v5, v6, "%s attempting to start a relogin session on %s but that view controller has no window", v12, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1D38882F0](v40, -1, -1);
      MEMORY[0x1D38882F0](v12, -1, -1);

      receiver[1](v42, v41);
    }

    else
    {

      receiver[1](v8, v10);
    }

    v2 = [objc_allocWithZone(MEMORY[0x1E69DD2E8]) initWithFrame_];
  }

  v0[6].super_class = v2;
  v22 = v0[2].super_class;
  v23 = v0[3].receiver;
  v24 = v0[2].receiver;
  type metadata accessor for ClinicalAccountDetailsViewController();
  v25 = 8 * (swift_dynamicCastClass() != 0);
  v26 = v23[3];
  v27 = type metadata accessor for ClinicalAccountLoginSession();
  v28 = objc_allocWithZone(v27);
  *&v28[OBJC_IVAR___HRUIClinicalAccountLoginSession_authSession] = 0;
  *&v28[OBJC_IVAR___HRUIClinicalAccountLoginSession_accountStore] = v26;
  *&v28[OBJC_IVAR___HRUIClinicalAccountLoginSession_presentationAnchor] = v2;
  *&v28[OBJC_IVAR___HRUIClinicalAccountLoginSession_funnelContext] = v25;
  v0[1].receiver = v28;
  v0[1].super_class = v27;
  v29 = v1;
  v30 = v26;
  v0[7].receiver = objc_msgSendSuper2(v0 + 1, sel_init);
  v31 = [v30 healthStore];
  v32 = [v31 profileIdentifier];
  v0[7].super_class = v32;

  v33 = swift_allocObject();
  v0[8].receiver = v33;
  *(v33 + 16) = v24;
  *(v33 + 24) = v22;
  v34 = v22;
  v35 = v24;
  v36 = swift_task_alloc();
  v0[8].super_class = v36;
  *v36 = v0;
  *(v36 + 1) = sub_1D1317EF8;
  v38 = v0[2].receiver;
  v37 = v0[2].super_class;

  return sub_1D10BF148(v38, v37, v32, 0, 0, sub_1D1324D54, v33);
}

uint64_t sub_1D1317EF8()
{
  v2 = *v1;
  *(*v1 + 144) = v0;

  if (v0)
  {
    v3 = v2[11];
    v4 = v2[12];
    v5 = sub_1D1318090;
  }

  else
  {
    v6 = v2[15];

    v3 = v2[11];
    v4 = v2[12];
    v5 = sub_1D1318018;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

uint64_t sub_1D1318018()
{
  v1 = *(v0 + 112);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1D1318090()
{
  v1 = *(v0 + 120);

  if (qword_1EE069ED0 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 144);
  v4 = *(v0 + 104);
  v3 = *(v0 + 112);
  v5 = *(v0 + 40);
  v6 = [*(v0 + 32) gateway];
  v7 = sub_1D1299A40(v6, v2);
  [v5 presentViewController:v7 animated:1 completion:0];

  v8 = *(v0 + 8);

  return v8();
}

void sub_1D13181AC(void *a1, void *a2)
{
  if (qword_1EE069F90 != -1)
  {
    swift_once();
  }

  sub_1D138D1CC();
  v5 = sub_1D139012C();

  v6 = [objc_opt_self() alertControllerWithTitle:0 message:v5 preferredStyle:{1, 0xE000000000000000}];

  sub_1D138D1CC();
  v7 = swift_allocObject();
  v7[2] = v2;
  v7[3] = a1;
  v7[4] = a2;

  v8 = a1;
  v9 = a2;
  v10 = sub_1D139012C();

  aBlock[4] = sub_1D13259E4;
  aBlock[5] = v7;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D10CB11C;
  aBlock[3] = &block_descriptor_25_2;
  v11 = _Block_copy(aBlock);

  v12 = objc_opt_self();
  v13 = [v12 actionWithTitle:v10 style:1 handler:{v11, 0xE000000000000000}];
  _Block_release(v11);

  [v6 addAction_];
  sub_1D138D1CC();
  v14 = sub_1D139012C();

  v15 = [v12 actionWithTitle:v14 style:0 handler:{0, 0xE000000000000000}];

  [v6 addAction_];
  [v9 presentViewController:v6 animated:1 completion:0];
}

void ClinicalAccountManager.presentAccounts(presentingViewController:completion:)(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_1D138DADC();
  v8 = *(v3 + 16);
  v9 = [v8 healthStore];
  v10 = sub_1D138DACC();
  sub_1D138E4AC();
  v11 = [v8 healthStore];
  v17 = v7;
  v18 = MEMORY[0x1E69A3CF8];
  v16[0] = v10;

  v12 = sub_1D138E49C();

  __swift_destroy_boxed_opaque_existential_1Tm(v16);
  if (a2)
  {
    v18 = a2;
    v19 = a3;
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 1107296256;
    v16[2] = sub_1D10CBD3C;
    v17 = &block_descriptor_71;
    v13 = _Block_copy(v16);
  }

  else
  {
    v13 = 0;
  }

  [a1 presentViewController:v12 animated:1 completion:{v13, v16[0]}];
  _Block_release(v13);
  v14 = objc_allocWithZone(type metadata accessor for SettingsViewController());
  v15 = SettingsViewController.init(with:)(v8);
  [v12 pushViewController:v15 animated:0];
}

uint64_t ClinicalAccountManager.newerAccount(of:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1D13186B8, 0, 0);
}

uint64_t sub_1D13186B8()
{
  v1 = [*(v0 + 16) gateway];
  *(v0 + 32) = v1;
  if (!v1)
  {
LABEL_23:
    v19 = *(v0 + 8);

    return v19(0);
  }

  v2 = v1;
  v3 = [v1 gatewayVersions];
  if (!v3)
  {

    goto LABEL_23;
  }

  v4 = v3;
  sub_1D106F934(0, &qword_1EC60E1B8);
  v5 = sub_1D139045C();
  *(v0 + 40) = v5;

  if (!(v5 >> 62))
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    *(v0 + 48) = v6;
    if (v6)
    {
      goto LABEL_5;
    }

    goto LABEL_21;
  }

LABEL_20:
  v18 = sub_1D13910DC();
  *(v0 + 48) = v18;
  if (!v18)
  {
LABEL_21:

LABEL_22:

    goto LABEL_23;
  }

LABEL_5:
  v2 = 0;
  while (1)
  {
    v7 = *(v0 + 40);
    if ((v7 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x1D3886B70](v2);
    }

    else
    {
      if (v2 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_19;
      }

      v8 = *(v7 + 8 * v2 + 32);
    }

    v9 = v8;
    *(v0 + 56) = v8;
    *(v0 + 64) = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
LABEL_19:
      __break(1u);
      goto LABEL_20;
    }

    v10 = *(v0 + 32);
    v11 = [v8 minCompatibleAPIVersion];
    if ([v10 minCompatibleAPIVersion] < v11)
    {
      break;
    }

    v2 = *(v0 + 64);
    if (v2 == *(v0 + 48))
    {

      goto LABEL_22;
    }
  }

  v12 = [v9 gatewayID];
  v13 = sub_1D139016C();
  v15 = v14;

  *(v0 + 72) = v15;
  v16 = swift_task_alloc();
  *(v0 + 80) = v16;
  *v16 = v0;
  v16[1] = sub_1D1318918;

  return sub_1D1315C70(v13, v15);
}

uint64_t sub_1D1318918(uint64_t a1)
{
  *(*v1 + 88) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D1318A38, 0, 0);
}

void sub_1D1318A38()
{
  v1 = *(v0 + 88);

  if (v1)
  {
    v2 = *(v0 + 32);

    v3 = *(v0 + 88);
LABEL_12:
    v10 = *(v0 + 8);

    v10(v3);
    return;
  }

  v4 = *(v0 + 64);
  if (v4 == *(v0 + 48))
  {
LABEL_11:

    v3 = 0;
    goto LABEL_12;
  }

  while (1)
  {
    v5 = *(v0 + 40);
    if ((v5 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x1D3886B70](v4);
    }

    else
    {
      if (v4 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_19;
      }

      v6 = *(v5 + 8 * v4 + 32);
    }

    v7 = v6;
    *(v0 + 56) = v6;
    *(v0 + 64) = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      __break(1u);
LABEL_19:
      __break(1u);
      return;
    }

    v8 = *(v0 + 32);
    v9 = [v6 minCompatibleAPIVersion];
    if ([v8 minCompatibleAPIVersion] < v9)
    {
      break;
    }

    v4 = *(v0 + 64);
    if (v4 == *(v0 + 48))
    {
      goto LABEL_11;
    }
  }

  v11 = [v7 gatewayID];
  v12 = sub_1D139016C();
  v14 = v13;

  *(v0 + 72) = v14;
  v15 = swift_task_alloc();
  *(v0 + 80) = v15;
  *v15 = v0;
  v15[1] = sub_1D1318918;

  sub_1D1315C70(v12, v14);
}

uint64_t sub_1D1318C14(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = sub_1D138F0BC();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  v4 = sub_1D138D5EC();
  v2[8] = v4;
  v2[9] = *(v4 - 8);
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D1318D3C, 0, 0);
}

uint64_t sub_1D1318D3C()
{
  v1 = [*(v0 + 24) identifier];
  sub_1D138D5CC();

  v2 = swift_task_alloc();
  *(v0 + 96) = v2;
  *v2 = v0;
  v2[1] = sub_1D1318E00;
  v3 = *(v0 + 88);

  return ClinicalAccountManager.fetchAccount(withIdentifier:)(v3);
}

uint64_t sub_1D1318E00(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  v4[13] = v1;

  v6 = v4[11];
  v7 = v4[9];
  v8 = v4[8];
  v11 = *(v7 + 8);
  v9 = v7 + 8;
  v10 = v11;
  if (v1)
  {
    v4[14] = v10;
    v4[15] = v9 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v10(v6, v8);

    return MEMORY[0x1EEE6DFA0](sub_1D1318FD8, 0, 0);
  }

  else
  {
    v10(v6, v8);

    v12 = v5[1];

    return v12(a1);
  }
}

uint64_t sub_1D1318FD8()
{
  v36 = v0;
  v1 = *(v0 + 104);
  v2 = *(v0 + 24);
  sub_1D138F06C();

  v3 = v2;
  v4 = v1;
  v5 = sub_1D138F0AC();
  v6 = sub_1D13907FC();

  if (os_log_type_enabled(v5, v6))
  {
    v30 = *(v0 + 112);
    v7 = *(v0 + 80);
    v8 = *(v0 + 64);
    v31 = *(v0 + 104);
    v32 = *(v0 + 48);
    v33 = *(v0 + 40);
    v34 = *(v0 + 56);
    v9 = *(v0 + 24);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v35 = v11;
    *v10 = 136315650;
    v12 = sub_1D131B120();
    v14 = sub_1D11DF718(v12, v13, &v35);

    *(v10 + 4) = v14;
    *(v10 + 12) = 2080;
    v15 = [v9 identifier];
    sub_1D138D5CC();

    sub_1D1325B98(&qword_1EC60D1C0, MEMORY[0x1E69695A8]);
    v16 = sub_1D13915CC();
    v18 = v17;
    v30(v7, v8);
    v19 = sub_1D11DF718(v16, v18, &v35);

    *(v10 + 14) = v19;
    *(v10 + 22) = 2080;
    *(v0 + 16) = v31;
    v20 = v31;
    sub_1D10922EC();
    v21 = sub_1D13901EC();
    v23 = sub_1D11DF718(v21, v22, &v35);

    *(v10 + 24) = v23;
    _os_log_impl(&dword_1D101F000, v5, v6, "%s failed to refresh account %s, will return potentially stale instance. Error: %s", v10, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1D38882F0](v11, -1, -1);
    MEMORY[0x1D38882F0](v10, -1, -1);

    (*(v32 + 8))(v34, v33);
  }

  else
  {
    v25 = *(v0 + 48);
    v24 = *(v0 + 56);
    v26 = *(v0 + 40);

    (*(v25 + 8))(v24, v26);
  }

  v27 = *(v0 + 24);

  v28 = *(v0 + 8);

  return v28(v27);
}

uint64_t sub_1D13192F8(uint64_t a1, uint64_t a2)
{
  v3[19] = a2;
  v3[20] = v2;
  v3[18] = a1;
  v4 = sub_1D138D57C();
  v3[21] = v4;
  v3[22] = *(v4 - 8);
  v3[23] = swift_task_alloc();
  v3[24] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D13193C8, 0, 0);
}

uint64_t sub_1D13193C8()
{
  if ([*(v0 + 152) userStatus])
  {
    v1 = [*(v0 + 152) userStatus];
    v2 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
  }

  else
  {
    v2 = 0;
  }

  *(v0 + 200) = v2;
  if ([*(v0 + 152) multiDeviceStatus])
  {
    v3 = [*(v0 + 152) multiDeviceStatus];
    v4 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
  }

  else
  {
    v4 = 0;
  }

  *(v0 + 208) = v4;
  v5 = *(v0 + 152);
  v23 = *(*(v0 + 160) + 24);
  v6 = sub_1D138D5AC();
  *(v0 + 216) = v6;
  v7 = [v5 firstSharedDate];
  if (v7)
  {
    v8 = *(v0 + 192);
    v10 = *(v0 + 168);
    v9 = *(v0 + 176);
    v11 = v7;
    sub_1D138D52C();

    v12 = sub_1D138D4EC();
    (*(v9 + 8))(v8, v10);
  }

  else
  {
    v12 = 0;
  }

  *(v0 + 224) = v12;
  v13 = [*(v0 + 152) lastSharedDate];
  if (v13)
  {
    v14 = *(v0 + 176);
    v15 = *(v0 + 184);
    v16 = *(v0 + 168);
    v17 = v13;
    sub_1D138D52C();

    v18 = sub_1D138D4EC();
    (*(v14 + 8))(v15, v16);
  }

  else
  {
    v18 = 0;
  }

  *(v0 + 232) = v18;
  v19 = [*(v0 + 152) primaryDeviceName];
  *(v0 + 240) = v19;
  *(v0 + 16) = v0;
  *(v0 + 24) = sub_1D13196A4;
  v20 = swift_continuation_init();
  sub_1D12D60DC(0, &qword_1EC60ED20);
  *(v0 + 136) = v21;
  *(v0 + 80) = MEMORY[0x1E69E9820];
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_1D131A144;
  *(v0 + 104) = &block_descriptor_188_0;
  *(v0 + 112) = v20;
  [v23 updateClinicalSharingStatusForAccountWithIdentifier:v6 firstSharedDate:v12 lastSharedDate:v18 userStatus:v2 multiDeviceStatus:v4 primaryDeviceName:v19 completion:v0 + 80];

  return MEMORY[0x1EEE6DEC8](v0 + 16);
}

uint64_t sub_1D13196A4()
{
  v1 = *(*v0 + 48);
  *(*v0 + 248) = v1;
  if (v1)
  {
    v2 = sub_1D1319860;
  }

  else
  {
    v2 = sub_1D13197B4;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D13197B4()
{
  v2 = *(v0 + 232);
  v1 = *(v0 + 240);
  v4 = *(v0 + 216);
  v3 = *(v0 + 224);
  v5 = *(v0 + 200);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_1D1319860()
{
  v1 = v0[30];
  v3 = v0[28];
  v2 = v0[29];
  v5 = v0[26];
  v4 = v0[27];
  v6 = v0[25];
  swift_willThrow();

  v7 = v0[1];

  return v7();
}

uint64_t sub_1D131991C(uint64_t a1)
{
  *(v2 + 152) = a1;
  *(v2 + 160) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1D131993C, 0, 0);
}

uint64_t sub_1D131993C()
{
  v1 = v0[20];
  sub_1D138D59C();
  v2 = objc_allocWithZone(MEMORY[0x1E696C438]);
  v3 = sub_1D139012C();

  v4 = [v2 initForClinicalAccountIdentifier_];

  v5 = [*(v1 + 16) healthStore];
  v6 = [objc_allocWithZone(MEMORY[0x1E696C430]) initWithHealthStore:v5 recipientIdentifier:v4];
  v0[21] = v6;

  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_1D1319B18;
  v7 = swift_continuation_init();
  sub_1D1327A60(0, &qword_1EC60F870, &qword_1EC60F878, &qword_1EC60B5A0, 0x1E696C428);
  v0[17] = v8;
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1D1323F14;
  v0[13] = &block_descriptor_184;
  v0[14] = v7;
  [v6 fetchSharingAuthorizationsWithCompletion_];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1D1319B18()
{
  v1 = *(*v0 + 48);
  *(*v0 + 176) = v1;
  if (v1)
  {
    v2 = sub_1D1327D3C;
  }

  else
  {
    v2 = sub_1D1319C28;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D1319C28()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1D1319C90(uint64_t a1, uint64_t a2)
{
  v3[19] = a2;
  v3[20] = v2;
  v3[18] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1D1319CB4, 0, 0);
}

uint64_t sub_1D1319CB4()
{
  v1 = v0[20];
  sub_1D138D59C();
  v2 = objc_allocWithZone(MEMORY[0x1E696C438]);
  v3 = sub_1D139012C();

  v4 = [v2 initForClinicalAccountIdentifier_];

  v5 = [*(v1 + 16) healthStore];
  v6 = [objc_allocWithZone(MEMORY[0x1E696C430]) initWithHealthStore:v5 recipientIdentifier:v4];
  v0[21] = v6;

  sub_1D106F934(0, &qword_1EC60B5A0);
  v7 = sub_1D139044C();
  v0[22] = v7;
  v0[2] = v0;
  v0[3] = sub_1D1319EB0;
  v8 = swift_continuation_init();
  sub_1D12D60DC(0, &qword_1EC60ED20);
  v0[17] = v9;
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1D131A144;
  v0[13] = &block_descriptor_180;
  v0[14] = v8;
  [v6 addSharingAuthorizations:v7 completion:v0 + 10];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1D1319EB0()
{
  v1 = *(*v0 + 48);
  *(*v0 + 184) = v1;
  if (v1)
  {
    v2 = sub_1D131A028;
  }

  else
  {
    v2 = sub_1D1319FC0;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D1319FC0()
{
  v1 = *(v0 + 176);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1D131A028()
{
  v1 = v0[22];
  v2 = v0[21];
  swift_willThrow();

  v3 = v0[1];

  return v3();
}

uint64_t sub_1D131A0A0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {
    sub_1D106F934(0, &qword_1EC609A00);
    v4 = sub_1D139045C();
  }

  v6 = a3;
  v5(v4, a3);
}

void *sub_1D131A144(uint64_t a1, int a2, void *a3)
{
  result = __swift_project_boxed_opaque_existential_1Tm((a1 + 32), *(a1 + 56));
  if (a2)
  {

    return swift_continuation_throwingResume();
  }

  else if (a3)
  {
    sub_1D10922EC();
    swift_allocError();
    *v6 = a3;
    v7 = a3;

    return swift_continuation_throwingResumeWithError();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D131A1F0(uint64_t a1, char a2, void *a3)
{
  v5 = *__swift_project_boxed_opaque_existential_1Tm((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_1D10922EC();
    swift_allocError();
    *v6 = a3;
    v7 = a3;

    return swift_continuation_throwingResumeWithError();
  }

  else
  {
    **(*(v5 + 64) + 40) = a2;

    return swift_continuation_throwingResume();
  }
}

uint64_t sub_1D131A2B0(uint64_t a1)
{
  v2[19] = a1;
  v2[20] = v1;
  v3 = sub_1D138F0BC();
  v2[21] = v3;
  v2[22] = *(v3 - 8);
  v2[23] = swift_task_alloc();
  v2[24] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D131A37C, 0, 0);
}

uint64_t sub_1D131A37C()
{
  v20 = v0;
  sub_1D138F06C();

  v1 = sub_1D138F0AC();
  v2 = sub_1D13907EC();

  v3 = os_log_type_enabled(v1, v2);
  v4 = v0[24];
  v5 = v0[21];
  v6 = v0[22];
  if (v3)
  {
    v18 = v0[19];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v19 = v8;
    *v7 = 136315394;
    v9 = sub_1D131B120();
    v11 = sub_1D11DF718(v9, v10, &v19);

    *(v7 + 4) = v11;
    *(v7 + 12) = 2048;
    *(v7 + 14) = v18;
    _os_log_impl(&dword_1D101F000, v1, v2, "%s triggering clinical sharing sync with reason %ld", v7, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    MEMORY[0x1D38882F0](v8, -1, -1);
    MEMORY[0x1D38882F0](v7, -1, -1);
  }

  v12 = *(v6 + 8);
  v12(v4, v5);
  v0[25] = v12;
  v13 = v0[19];
  v14 = [objc_allocWithZone(MEMORY[0x1E69A3F78]) init];
  v0[26] = v14;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_1D131A604;
  v15 = swift_continuation_init();
  sub_1D1327A60(0, &qword_1EC60F838, &qword_1EC60F840, &qword_1EC60B598, 0x1E69A3F90);
  v0[17] = v16;
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1D1323F28;
  v0[13] = &block_descriptor_99;
  v0[14] = v15;
  [v14 shareHealthDataWithOptions:0 reason:v13 completion:v0 + 10];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1D131A604()
{
  v1 = *(*v0 + 48);
  *(*v0 + 216) = v1;
  if (v1)
  {
    v2 = sub_1D131A8E0;
  }

  else
  {
    v2 = sub_1D131A714;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D131A714()
{
  v18 = v0;

  sub_1D138F06C();

  v1 = sub_1D138F0AC();
  v2 = sub_1D139081C();

  v3 = os_log_type_enabled(v1, v2);
  v4 = v0[25];
  v5 = v0[26];
  v6 = v0[23];
  v7 = v0[21];
  if (v3)
  {
    v16 = v0[25];
    v15 = v0[23];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v17 = v9;
    *v8 = 136315138;
    v10 = sub_1D131B120();
    v12 = sub_1D11DF718(v10, v11, &v17);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_1D101F000, v1, v2, "%s clinical sharing sync completed", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    MEMORY[0x1D38882F0](v9, -1, -1);
    MEMORY[0x1D38882F0](v8, -1, -1);

    v16(v15, v7);
  }

  else
  {

    v4(v6, v7);
  }

  v13 = v0[1];

  return v13();
}

uint64_t sub_1D131A8E0()
{
  v1 = *(v0 + 208);
  swift_willThrow();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1D131A96C()
{
  result = sub_1D131A990();
  byte_1EC60F770 = result & 1;
  return result;
}

uint64_t sub_1D131A990()
{
  error[1] = *MEMORY[0x1E69E9840];
  v0 = sub_1D138F0BC();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x1EEE9AC00](v0);
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v25 - v5;
  v7 = SecTaskCreateFromSelf(0);
  if (!v7)
  {
    sub_1D138F08C();
    v22 = sub_1D138F0AC();
    v23 = sub_1D13907FC();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_1D101F000, v22, v23, "Could not get secTask for account login availability", v24, 2u);
      MEMORY[0x1D38882F0](v24, -1, -1);
    }

    (*(v1 + 8))(v6, v0);
    return 0;
  }

  v8 = v7;
  error[0] = 0;
  v9 = sub_1D139012C();
  v10 = SecTaskCopyValueForEntitlement(v8, v9, error);

  if (!v10 || (v28 = v10, swift_unknownObjectRetain(), (swift_dynamicCast() & 1) == 0))
  {
    if (error[0])
    {
      v13 = error[0];
      sub_1D138F08C();
      v14 = v13;
      v15 = sub_1D138F0AC();
      v16 = sub_1D13907FC();

      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        v26 = swift_slowAlloc();
        v28 = v26;
        *v17 = 136315394;
        *(v17 + 4) = sub_1D11DF718(0xD000000000000034, 0x80000001D13CCA00, &v28);
        *(v17 + 12) = 2080;
        v27 = v14;
        type metadata accessor for CFError(0);
        v25 = v14;
        v18 = sub_1D13901EC();
        v20 = sub_1D11DF718(v18, v19, &v28);

        *(v17 + 14) = v20;
        _os_log_impl(&dword_1D101F000, v15, v16, "Could not get value for entitlement %s: %s", v17, 0x16u);
        v21 = v26;
        swift_arrayDestroy();
        MEMORY[0x1D38882F0](v21, -1, -1);
        MEMORY[0x1D38882F0](v17, -1, -1);
      }

      else
      {
      }

      (*(v1 + 8))(v4, v0);
      if (error[0])
      {
      }
    }

    swift_unknownObjectRelease();

    return 0;
  }

  v11 = v27;
  if (error[0])
  {
  }

  swift_unknownObjectRelease();

  return v11;
}

uint64_t static ClinicalAccountManager.accountLoginAvailable.getter()
{
  if (qword_1EC608E90 != -1)
  {
    swift_once();
  }

  return byte_1EC60F770;
}

void *ClinicalAccountManager.init(profile:)(void *a1)
{
  v2 = MEMORY[0x1E69E7CD0];
  v1[5] = 0;
  v1[6] = 0;
  v1[4] = v2;
  v1[2] = a1;
  v1[3] = [a1 clinicalAccountStore];
  return v1;
}

uint64_t ClinicalAccountManager.fetchAccount(withIdentifier:)(uint64_t a1)
{
  *(v2 + 152) = a1;
  *(v2 + 160) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1D131AE08, 0, 0);
}

uint64_t sub_1D131AE08()
{
  v1 = *(v0[20] + 24);
  v2 = sub_1D138D5AC();
  v0[21] = v2;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_1D131AF34;
  v3 = swift_continuation_init();
  sub_1D1256A40();
  v0[17] = v4;
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1D1121DF8;
  v0[13] = &block_descriptor_9_0;
  v0[14] = v3;
  [v1 fetchAccountWithIdentifier:v2 completion:v0 + 10];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1D131AF34()
{
  v1 = *(*v0 + 48);
  *(*v0 + 176) = v1;
  if (v1)
  {
    v2 = sub_1D131B0B0;
  }

  else
  {
    v2 = sub_1D131B044;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D131B044()
{
  v1 = *(v0 + 144);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1D131B0B0()
{
  v1 = *(v0 + 168);
  swift_willThrow();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1D131B120()
{
  if (*(v0 + 48))
  {
    v1 = *(v0 + 40);
  }

  else
  {
    v1 = sub_1D13247A4();
    *(v0 + 40) = v1;
    *(v0 + 48) = v2;
  }

  return v1;
}

void sub_1D131B1BC(uint64_t a1, unint64_t a2, void *a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, void *), uint64_t a6)
{
  v10 = sub_1D138F0BC();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {
    if (a2)
    {
      v30 = sub_1D106E3C0(a2);
      if (v30)
      {
        if (v30 >> 62)
        {
          v33 = v30;
          v34 = sub_1D13910DC();
          v30 = v33;
          if (v34)
          {
            goto LABEL_9;
          }
        }

        else if (*((v30 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
LABEL_9:
          v31 = sub_1D115EB84(v30);

          v32 = v31;
LABEL_13:
          a5(v32, 0, 0);
          return;
        }
      }
    }

    v32 = 0;
    goto LABEL_13;
  }

  v35[1] = a6;
  v14 = a3;
  sub_1D138F06C();
  v15 = a3;

  v16 = sub_1D138F0AC();
  v17 = sub_1D13907FC();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v35[0] = a5;
    v19 = v18;
    v20 = swift_slowAlloc();
    v36 = v20;
    *v19 = 136315394;
    v21 = sub_1D131B120();
    v23 = sub_1D11DF718(v21, v22, &v36);

    *(v19 + 4) = v23;
    *(v19 + 12) = 2080;
    v35[2] = a3;
    v24 = a3;
    sub_1D10922EC();
    v25 = sub_1D13901EC();
    v27 = sub_1D11DF718(v25, v26, &v36);

    *(v19 + 14) = v27;
    _os_log_impl(&dword_1D101F000, v16, v17, "%s failed to fetch SCD records, cannot determine number of Wallet Cards. Error: %s", v19, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1D38882F0](v20, -1, -1);
    v28 = v19;
    a5 = v35[0];
    MEMORY[0x1D38882F0](v28, -1, -1);
  }

  (*(v11 + 8))(v13, v10);
  v29 = a3;
  a5(0, 1, a3);
}

uint64_t sub_1D131B4B0@<X0>(void **a1@<X0>, void *a2@<X2>, uint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  result = sub_1D131B4E8(*a1, a2, a3);
  *a4 = result;
  return result;
}

uint64_t sub_1D131B4E8(void *a1, void *a2, uint64_t a3)
{
  v73 = a2;
  v74 = a3;
  v91 = sub_1D138D5EC();
  MEMORY[0x1EEE9AC00](v91);
  v5 = &v70 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D1326138(0, &qword_1EC60F7A8, MEMORY[0x1E69695A8], MEMORY[0x1E695C000]);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v70 - v9;
  sub_1D132619C(0);
  v71 = v11;
  v72 = *(v11 - 1);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v70 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D13261BC();
  v77 = *(v14 - 8);
  v78 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v75 = &v70 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D13262A8();
  v80 = *(v16 - 8);
  v81 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v76 = &v70 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D1326394();
  v83 = *(v18 - 8);
  v84 = v18;
  MEMORY[0x1EEE9AC00](v18);
  v82 = &v70 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D13264F0();
  v87 = *(v20 - 8);
  v88 = v20;
  MEMORY[0x1EEE9AC00](v20);
  v85 = &v70 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D13265DC();
  v89 = *(v22 - 8);
  v90 = v22;
  MEMORY[0x1EEE9AC00](v22);
  v86 = &v70 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D1326138(0, &qword_1EE06B500, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v26 = &v70 - v25;
  v27 = &selRef_subscriberIdentifier;
  if ([a1 isSharingToProvider])
  {
    v28 = v10;
    v29 = v13;
    v30 = [a1 clinicalSharingStatus];
    v31 = [v30 lastSharedDate];

    if (v31)
    {
      sub_1D138D52C();

      v32 = sub_1D138D57C();
      (*(*(v32 - 8) + 56))(v26, 0, 1, v32);
      sub_1D1326948(v26, &qword_1EE06B500, MEMORY[0x1E6969530]);
      v27 = &selRef_subscriberIdentifier;
      v33 = &selRef_subscriberIdentifier;
      goto LABEL_7;
    }

    v34 = sub_1D138D57C();
    (*(*(v34 - 8) + 56))(v26, 1, 1, v34);
    sub_1D1326948(v26, &qword_1EE06B500, MEMORY[0x1E6969530]);
    v13 = v29;
    v10 = v28;
    v27 = &selRef_subscriberIdentifier;
  }

  v33 = &selRef_subscriberIdentifier;
  v35 = [a1 clinicalSharingStatus];
  v36 = [v35 v27[18]];

  if (v36 != 4)
  {
    v37 = [a1 &selRef_hasSectionLocaleIdentifier + 4];
    v38 = [v37 v27[18]];

    if (v38 != 5)
    {
      v67 = v8;
      v68 = [a1 identifier];
      sub_1D138D5CC();

      sub_1D138F71C();
      type metadata accessor for ClinicalAccountManager.FlowError();
      sub_1D1325B98(&qword_1EC60C228, type metadata accessor for ClinicalAccountManager.FlowError);
      sub_1D138F6FC();
      (*(v67 + 8))(v10, v7);
      sub_1D1325B98(&qword_1EC60F810, sub_1D132619C);
      v69 = v71;
      v65 = sub_1D138F80C();
      (*(v72 + 8))(v13, v69);
      return v65;
    }
  }

LABEL_7:
  v39 = swift_allocObject();
  v40 = v73;
  v41 = v74;
  v39[2] = v73;
  v39[3] = v41;
  v39[4] = a1;
  sub_1D1325D40(0);
  swift_allocObject();
  sub_1D102CE24(v40);
  v42 = a1;
  v73 = v42;
  v43 = sub_1D138F73C();
  v74 = v43;
  v44 = [v42 v33[17]];
  v71 = [v44 v27[18]];

  v92 = v43;
  v45 = v79;

  sub_1D138F61C();
  sub_1D1177080();
  v47 = v46;
  sub_1D1325B98(&qword_1EC60F790, sub_1D1325D40);
  v70 = MEMORY[0x1E695BED8];
  sub_1D1325B98(&qword_1EC60C250, sub_1D1177080);
  v48 = v75;
  v72 = v47;
  sub_1D138F8AC();

  v49 = swift_allocObject();
  *(v49 + 16) = sub_1D13266DC;
  *(v49 + 24) = v45;

  sub_1D138F61C();
  sub_1D1325B98(&qword_1EC60F7C8, sub_1D13261BC);
  v50 = v76;
  v51 = v78;
  sub_1D138F8AC();

  (*(v77 + 8))(v48, v51);
  v52 = swift_allocObject();
  v53 = v71;
  *(v52 + 16) = v45;
  *(v52 + 24) = v53;
  sub_1D1326480();
  sub_1D1325B98(&qword_1EC60F7E0, sub_1D13262A8);
  sub_1D1325B98(&qword_1EC60F7E8, sub_1D1326480);

  v55 = v81;
  v54 = v82;
  sub_1D138F8EC();

  (*(v80 + 8))(v50, v55);
  v56 = swift_allocObject();
  v57 = v73;
  *(v56 + 16) = v73;
  type metadata accessor for ClinicalAccountManager.FlowError();
  sub_1D1325B98(&qword_1EC60F7F8, sub_1D1326394);
  sub_1D1325B98(&qword_1EC60C228, type metadata accessor for ClinicalAccountManager.FlowError);
  v58 = v57;
  v60 = v84;
  v59 = v85;
  sub_1D138F8DC();

  (*(v83 + 8))(v54, v60);
  v61 = swift_allocObject();
  *(v61 + 16) = sub_1D1327D68;
  *(v61 + 24) = v45;

  sub_1D138F61C();
  sub_1D1325B98(&qword_1EC60F808, sub_1D13264F0);
  v62 = v86;
  v63 = v88;
  sub_1D138F8AC();

  (*(v87 + 8))(v59, v63);
  sub_1D1325B98(&qword_1EC60F818, sub_1D13265DC);
  v64 = v90;
  v65 = sub_1D138F80C();

  (*(v89 + 8))(v62, v64);
  return v65;
}

uint64_t sub_1D131C1E0@<X0>(uint64_t a1@<X0>, void (*a2)(void)@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  if (a2)
  {
    a2();
  }

  sub_1D11772BC();
  v8 = *(v7 + 48);
  v9 = sub_1D138D5EC();
  result = (*(*(v9 - 8) + 16))(a4, a1, v9);
  *(a4 + v8) = a3;
  return result;
}

uint64_t sub_1D131C26C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v20 = a2;
  v5 = sub_1D138D5EC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  sub_1D1325CAC();
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a3 + 24);
  (*(v6 + 16))(&v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v5);
  v14 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = v13;
  (*(v6 + 32))(v15 + v14, &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
  *(v15 + ((v7 + v14 + 7) & 0xFFFFFFFFFFFFFFF8)) = v20;
  sub_1D1325D40(0);
  sub_1D1325B98(&qword_1EC60F790, sub_1D1325D40);
  v16 = v13;
  sub_1D138F75C();
  sub_1D1325B98(&qword_1EC60F798, sub_1D1325CAC);
  v17 = sub_1D138F80C();
  (*(v10 + 8))(v12, v9);
  return v17;
}

uint64_t sub_1D131C4F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void, void), uint64_t a5)
{
  v74 = a5;
  v75 = a4;
  v69 = a3;
  v70 = a2;
  v76 = sub_1D138D5EC();
  v6 = *(v76 - 8);
  v7 = MEMORY[0x1EEE9AC00](v76);
  v9 = &v64[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v64[-v10];
  v12 = sub_1D138F0BC();
  v72 = *(v12 - 8);
  v73 = v12;
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = &v64[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v13);
  v71 = &v64[-v16];
  v17 = type metadata accessor for ClinicalAccountManager.FlowError();
  v18 = *(v17 - 8);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v66 = &v64[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v21 = MEMORY[0x1EEE9AC00](v19);
  v67 = &v64[-v22];
  v23 = MEMORY[0x1EEE9AC00](v21);
  v25 = &v64[-v24];
  MEMORY[0x1EEE9AC00](v23);
  v27 = &v64[-v26];
  sub_1D1325B04();
  MEMORY[0x1EEE9AC00](v28 - 8);
  v30 = &v64[-((v29 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1D1325C44(a1, v30, sub_1D1325B04);
  v31 = *(v18 + 48);
  v68 = v17;
  if (v31(v30, 1, v17) == 1)
  {
    sub_1D138F06C();
    (*(v6 + 16))(v9, v69, v76);

    v32 = sub_1D138F0AC();
    v33 = sub_1D139081C();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v77[0] = v35;
      *v34 = 136315394;
      v36 = sub_1D131B120();
      v38 = sub_1D11DF718(v36, v37, v77);

      *(v34 + 4) = v38;
      *(v34 + 12) = 2080;
      sub_1D1325B98(&qword_1EC60D1C0, MEMORY[0x1E69695A8]);
      v39 = v76;
      v40 = sub_1D13915CC();
      v42 = v41;
      (*(v6 + 8))(v9, v39);
      v43 = sub_1D11DF718(v40, v42, v77);

      *(v34 + 14) = v43;
      _os_log_impl(&dword_1D101F000, v32, v33, "%s successfully deleted account %s", v34, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1D38882F0](v35, -1, -1);
      MEMORY[0x1D38882F0](v34, -1, -1);
    }

    else
    {

      (*(v6 + 8))(v9, v76);
    }

    (*(v72 + 8))(v15, v73);
    return v75(0, 0);
  }

  else
  {
    sub_1D1325BE0(v30, v27);
    sub_1D138F06C();
    (*(v6 + 16))(v11, v69, v76);
    sub_1D1325C44(v27, v25, type metadata accessor for ClinicalAccountManager.FlowError);

    v44 = sub_1D138F0AC();
    v45 = sub_1D13907FC();

    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v69 = swift_slowAlloc();
      v78 = v69;
      *v46 = 136315650;
      v65 = v45;
      v47 = sub_1D131B120();
      v49 = sub_1D11DF718(v47, v48, &v78);

      *(v46 + 4) = v49;
      *(v46 + 12) = 2080;
      sub_1D1325B98(&qword_1EC60D1C0, MEMORY[0x1E69695A8]);
      v50 = v76;
      v51 = sub_1D13915CC();
      v53 = v52;
      (*(v6 + 8))(v11, v50);
      v54 = sub_1D11DF718(v51, v53, &v78);

      *(v46 + 14) = v54;
      *(v46 + 22) = 2080;
      v55 = v67;
      sub_1D1325C44(v25, v67, type metadata accessor for ClinicalAccountManager.FlowError);
      sub_1D1325C44(v55, v66, type metadata accessor for ClinicalAccountManager.FlowError);
      v56 = v68;
      sub_1D13916AC();
      v57 = HKSensitiveLogItem();
      swift_unknownObjectRelease();
      sub_1D139101C();
      swift_unknownObjectRelease();
      v58 = sub_1D13901EC();
      v60 = v59;
      sub_1D13260D8(v55, type metadata accessor for ClinicalAccountManager.FlowError);
      sub_1D13260D8(v25, type metadata accessor for ClinicalAccountManager.FlowError);
      v61 = sub_1D11DF718(v58, v60, &v78);

      *(v46 + 24) = v61;
      _os_log_impl(&dword_1D101F000, v44, v65, "%s deleting account %s failed with error: %s", v46, 0x20u);
      v62 = v69;
      swift_arrayDestroy();
      MEMORY[0x1D38882F0](v62, -1, -1);
      MEMORY[0x1D38882F0](v46, -1, -1);

      (*(v72 + 8))(v71, v73);
    }

    else
    {

      sub_1D13260D8(v25, type metadata accessor for ClinicalAccountManager.FlowError);
      (*(v6 + 8))(v11, v76);
      (*(v72 + 8))(v71, v73);
      v56 = v68;
    }

    v75(v27[*(v56 + 20)], *&v27[*(v56 + 24)]);
    return sub_1D13260D8(v27, type metadata accessor for ClinicalAccountManager.FlowError);
  }
}

uint64_t sub_1D131CD38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v82 = a2;
  v83 = a3;
  sub_1D1325CAC();
  v74 = *(v6 - 8);
  v75 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v73 = &v68 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D1327104();
  v77 = *(v8 - 8);
  v78 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v76 = &v68 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D13271A4();
  v80 = *(v10 - 8);
  v81 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v79 = &v68 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1D138D5EC();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v86 = &v68 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = v14;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v68 - v16;
  v18 = sub_1D138F0BC();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v68 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D138F06C();
  v88 = a1;
  v89 = v13;
  v22 = *(v13 + 16);
  v87 = v12;
  v84 = v22;
  v85 = v13 + 16;
  v22(v17, a1, v12);

  v23 = sub_1D138F0AC();
  v24 = sub_1D139081C();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v70 = swift_slowAlloc();
    v90[0] = v70;
    *v25 = 136315394;
    v26 = sub_1D131B120();
    v28 = sub_1D11DF718(v26, v27, v90);
    v71 = v18;
    v29 = v28;

    *(v25 + 4) = v29;
    *(v25 + 12) = 2080;
    sub_1D1325B98(&qword_1EC60D1C0, MEMORY[0x1E69695A8]);
    v30 = v4;
    v31 = v87;
    v32 = sub_1D13915CC();
    v34 = v33;
    v35 = v31;
    v4 = v30;
    (*(v89 + 8))(v17, v35);
    v36 = sub_1D11DF718(v32, v34, v90);

    *(v25 + 14) = v36;
    _os_log_impl(&dword_1D101F000, v23, v24, "%s Starting to stop sharing of account %s", v25, 0x16u);
    v37 = v70;
    swift_arrayDestroy();
    MEMORY[0x1D38882F0](v37, -1, -1);
    MEMORY[0x1D38882F0](v25, -1, -1);

    (*(v19 + 8))(v21, v71);
  }

  else
  {

    (*(v89 + 8))(v17, v87);
    (*(v19 + 8))(v21, v18);
  }

  v38 = *(v4 + 24);
  v68 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
  v40 = v86;
  v39 = v87;
  v84(v86, v88, v87);
  v41 = v89;
  v42 = (*(v89 + 80) + 24) & ~*(v89 + 80);
  v71 = *(v89 + 80);
  v70 = v42;
  v43 = (v72 + v42 + 7) & 0xFFFFFFFFFFFFFFF8;
  v69 = v43;
  v44 = (v43 + 15) & 0xFFFFFFFFFFFFFFF8;
  v45 = swift_allocObject();
  *(v45 + 16) = v4;
  v46 = *(v41 + 32);
  v89 = v41 + 32;
  v72 = v46;
  v47 = v45 + v42;
  v48 = v39;
  v46(v47, v40, v39);
  *(v45 + v43) = 4;
  *(v45 + v44) = v38;
  v49 = v68;
  *(v45 + ((v44 + 15) & 0xFFFFFFFFFFFFFFF8)) = v68;
  sub_1D1325D40(0);
  sub_1D1325B98(&qword_1EC60F790, sub_1D1325D40);

  v50 = v38;
  v51 = v49;
  v52 = v73;
  sub_1D138F75C();
  sub_1D1325B98(&qword_1EC60F798, sub_1D1325CAC);
  v53 = v75;
  v54 = sub_1D138F80C();

  (*(v74 + 8))(v52, v53);
  v90[0] = v54;
  v55 = swift_allocObject();
  *(v55 + 16) = sub_1D1327440;
  *(v55 + 24) = v4;

  sub_1D138F61C();
  sub_1D1177080();
  sub_1D1325B98(&qword_1EC60C250, sub_1D1177080);
  v56 = v76;
  v57 = v48;
  sub_1D138F8AC();

  v58 = swift_allocObject();
  *(v58 + 16) = sub_1D1327444;
  *(v58 + 24) = v4;

  sub_1D138F61C();
  sub_1D1325B98(&qword_1EC60F860, sub_1D1327104);
  v60 = v78;
  v59 = v79;
  sub_1D138F8AC();

  (*(v77 + 8))(v56, v60);
  v61 = v86;
  v84(v86, v88, v57);
  v62 = v69;
  v63 = swift_allocObject();
  *(v63 + 16) = v4;
  v72(v63 + v70, v61, v57);
  v64 = (v63 + v62);
  v65 = v83;
  *v64 = v82;
  v64[1] = v65;
  sub_1D1325B98(&qword_1EC60F868, sub_1D13271A4);

  v66 = v81;
  sub_1D138F85C();

  (*(v80 + 8))(v59, v66);
  swift_beginAccess();
  sub_1D138F63C();
  swift_endAccess();
}

uint64_t sub_1D131D6F8(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1D138D5EC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  sub_1D1325CAC();
  v8 = *(v7 - 8);
  v22 = v7;
  v23 = v8;
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D138D59C();
  v11 = objc_allocWithZone(MEMORY[0x1E696C438]);
  v12 = sub_1D139012C();

  v13 = [v11 initForClinicalAccountIdentifier_];

  v14 = [*(v2 + 16) healthStore];
  v15 = [objc_allocWithZone(MEMORY[0x1E696C430]) initWithHealthStore:v14 recipientIdentifier:v13];

  (*(v5 + 16))(&v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v4);
  v16 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = v2;
  *(v17 + 24) = v15;
  (*(v5 + 32))(v17 + v16, &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
  sub_1D1325D40(0);
  sub_1D1325B98(&qword_1EC60F790, sub_1D1325D40);

  v18 = v15;
  sub_1D138F75C();
  sub_1D1325B98(&qword_1EC60F798, sub_1D1325CAC);
  v19 = v22;
  v20 = sub_1D138F80C();

  (*(v23 + 8))(v10, v19);
  return v20;
}

uint64_t sub_1D131DA18(uint64_t a1, char *a2, uint64_t a3, uint64_t (*a4)(void *), uint64_t a5)
{
  v75 = a5;
  v76 = a4;
  v69 = a3;
  v70 = a2;
  v72 = sub_1D138D5EC();
  v6 = *(v72 - 8);
  MEMORY[0x1EEE9AC00](v72);
  v8 = &v66 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v66 - v10;
  v12 = sub_1D138F0BC();
  v73 = *(v12 - 8);
  v74 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v66 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v71 = &v66 - v16;
  v17 = type metadata accessor for ClinicalAccountManager.FlowError();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v66 = &v66 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v67 = &v66 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v66 - v23;
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v66 - v26;
  sub_1D1325B04();
  MEMORY[0x1EEE9AC00](v28 - 8);
  v30 = &v66 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D1325C44(a1, v30, sub_1D1325B04);
  v31 = *(v18 + 48);
  v68 = v17;
  if (v31(v30, 1, v17) == 1)
  {
    sub_1D138F06C();
    v32 = v72;
    (*(v6 + 16))(v8, v69, v72);

    v33 = sub_1D138F0AC();
    v34 = sub_1D139081C();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v77[0] = v36;
      *v35 = 136315394;
      v37 = sub_1D131B120();
      v39 = sub_1D11DF718(v37, v38, v77);

      *(v35 + 4) = v39;
      *(v35 + 12) = 2080;
      sub_1D1325B98(&qword_1EC60D1C0, MEMORY[0x1E69695A8]);
      v40 = sub_1D13915CC();
      v42 = v41;
      (*(v6 + 8))(v8, v32);
      v43 = sub_1D11DF718(v40, v42, v77);

      *(v35 + 14) = v43;
      _os_log_impl(&dword_1D101F000, v33, v34, "%s successfully stopped sharing of account %s", v35, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1D38882F0](v36, -1, -1);
      MEMORY[0x1D38882F0](v35, -1, -1);
    }

    else
    {

      (*(v6 + 8))(v8, v32);
    }

    (*(v73 + 8))(v14, v74);
    return v76(0);
  }

  else
  {
    sub_1D1325BE0(v30, v27);
    sub_1D138F06C();
    v44 = v72;
    (*(v6 + 16))(v11, v69, v72);
    sub_1D1325C44(v27, v24, type metadata accessor for ClinicalAccountManager.FlowError);

    v45 = sub_1D138F0AC();
    v46 = sub_1D13907FC();

    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v78 = v48;
      *v47 = 136315650;
      LODWORD(v69) = v46;
      v49 = sub_1D131B120();
      v51 = sub_1D11DF718(v49, v50, &v78);
      v70 = v27;
      v52 = v51;

      *(v47 + 4) = v52;
      *(v47 + 12) = 2080;
      sub_1D1325B98(&qword_1EC60D1C0, MEMORY[0x1E69695A8]);
      v53 = sub_1D13915CC();
      v55 = v54;
      (*(v6 + 8))(v11, v44);
      v56 = sub_1D11DF718(v53, v55, &v78);

      *(v47 + 14) = v56;
      *(v47 + 22) = 2080;
      v57 = v67;
      sub_1D1325C44(v24, v67, type metadata accessor for ClinicalAccountManager.FlowError);
      sub_1D1325C44(v57, v66, type metadata accessor for ClinicalAccountManager.FlowError);
      sub_1D13916AC();
      v58 = HKSensitiveLogItem();
      swift_unknownObjectRelease();
      sub_1D139101C();
      swift_unknownObjectRelease();
      v59 = sub_1D13901EC();
      v61 = v60;
      sub_1D13260D8(v57, type metadata accessor for ClinicalAccountManager.FlowError);
      v27 = v70;
      sub_1D13260D8(v24, type metadata accessor for ClinicalAccountManager.FlowError);
      v62 = sub_1D11DF718(v59, v61, &v78);

      *(v47 + 24) = v62;
      _os_log_impl(&dword_1D101F000, v45, v69, "%s stopping sharing of account %s failed with error: %s", v47, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1D38882F0](v48, -1, -1);
      MEMORY[0x1D38882F0](v47, -1, -1);
    }

    else
    {

      sub_1D13260D8(v24, type metadata accessor for ClinicalAccountManager.FlowError);
      (*(v6 + 8))(v11, v44);
    }

    (*(v73 + 8))(v71, v74);
    sub_1D1325B98(&qword_1EC60C228, type metadata accessor for ClinicalAccountManager.FlowError);
    v64 = swift_allocError();
    sub_1D1325C44(v27, v65, type metadata accessor for ClinicalAccountManager.FlowError);
    v76(v64);

    return sub_1D13260D8(v27, type metadata accessor for ClinicalAccountManager.FlowError);
  }
}

uint64_t sub_1D131E2C0(void *a1, void *a2, void *a3)
{
  sub_1D1326138(0, &qword_1EE06A650, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v15 - v7;
  v9 = sub_1D13905DC();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = a2;
  v10[5] = a3;
  v10[6] = a1;
  v11 = a2;
  v12 = a3;
  v13 = a1;
  sub_1D107877C(0, 0, v8, &unk_1D13B0B60, v10);
}

uint64_t sub_1D131E40C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return MEMORY[0x1EEE6DFA0](sub_1D131E430, 0, 0);
}

uint64_t sub_1D131E430()
{
  if (qword_1EE069ED0 != -1)
  {
    swift_once();
  }

  *(v0 + 40) = [*(v0 + 16) gateway];
  sub_1D13905AC();
  *(v0 + 48) = sub_1D139059C();
  v2 = sub_1D139055C();

  return MEMORY[0x1EEE6DFA0](sub_1D131E510, v2, v1);
}

uint64_t sub_1D131E510()
{
  v1 = v0[5];
  v3 = v0[3];
  v2 = v0[4];

  v4 = sub_1D1299A40(v1, v2);
  [v3 presentViewController:v4 animated:1 completion:0];

  v5 = v0[1];

  return v5();
}

uint64_t sub_1D131E5B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_1D10819BC;

  return ClinicalAccountManager.startRelogin(to:from:)(a2, a3);
}

uint64_t sub_1D131E65C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  v5 = sub_1D138D5EC();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D131E720, 0, 0);
}

uint64_t sub_1D131E720()
{
  v1 = [*(v0 + 24) identifier];
  sub_1D138D5CC();

  v2 = swift_task_alloc();
  *(v0 + 72) = v2;
  *v2 = v0;
  v2[1] = sub_1D131E7E8;
  v3 = *(v0 + 64);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);

  return sub_1D131E940(v3, v4, v5);
}

uint64_t sub_1D131E7E8()
{
  v1 = *(*v0 + 64);
  v2 = *(*v0 + 56);
  v3 = *(*v0 + 48);
  v6 = *v0;

  (*(v2 + 8))(v1, v3);

  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_1D131E940(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[10] = a3;
  v4[11] = v3;
  v4[8] = a1;
  v4[9] = a2;
  v5 = sub_1D138D5EC();
  v4[12] = v5;
  v6 = *(v5 - 8);
  v4[13] = v6;
  v4[14] = *(v6 + 64);
  v4[15] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D131EA0C, 0, 0);
}

uint64_t sub_1D131EA0C()
{
  v2 = v0[14];
  v1 = v0[15];
  v3 = v0[12];
  v4 = v0[13];
  v5 = v0[11];
  v18 = v0[10];
  v6 = v0[8];
  v17 = v0[9];
  v7 = [*(v5 + 24) healthStore];
  v8 = [objc_allocWithZone(MEMORY[0x1E696BFE0]) initWithHealthStore_];

  (*(v4 + 16))(v1, v6, v3);
  v9 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v10 = (v2 + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = swift_allocObject();
  *(v11 + 16) = v5;
  (*(v4 + 32))(v11 + v9, v1, v3);
  *(v11 + v10) = v17;
  *(v11 + ((v10 + 15) & 0xFFFFFFFFFFFFFFF8)) = v18;
  v0[6] = sub_1D1327728;
  v0[7] = v11;
  v0[2] = MEMORY[0x1E69E9820];
  v0[3] = 1107296256;
  v0[4] = sub_1D1175B38;
  v0[5] = &block_descriptor_162_0;
  v12 = _Block_copy(v0 + 2);

  v13 = v17;
  v14 = v18;

  [v8 fetchCloudSyncStatusWithCompletion_];
  _Block_release(v12);

  v15 = v0[1];

  return v15();
}

uint64_t sub_1D131EC08(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, void *a9)
{
  v28 = a1;
  v29 = a9;
  v12 = sub_1D138D5EC();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v27[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1D1326138(0, &qword_1EE06A650, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v27[-v17];
  v19 = sub_1D13905DC();
  (*(*(v19 - 8) + 56))(v18, 1, 1, v19);
  (*(v13 + 16))(v15, a7, v12);
  v20 = (*(v13 + 80) + 48) & ~*(v13 + 80);
  v21 = (v14 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
  v22 = swift_allocObject();
  *(v22 + 16) = 0;
  *(v22 + 24) = 0;
  *(v22 + 32) = v28;
  *(v22 + 40) = a6;
  (*(v13 + 32))(v22 + v20, v15, v12);
  *(v22 + v21) = a8;
  v23 = v29;
  *(v22 + ((v21 + 15) & 0xFFFFFFFFFFFFFFF8)) = v29;

  v24 = a8;
  v25 = v23;
  sub_1D107877C(0, 0, v18, &unk_1D13B0B10, v22);
}

uint64_t sub_1D131EE58(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 32) = a7;
  *(v8 + 40) = a8;
  *(v8 + 16) = a5;
  *(v8 + 24) = a6;
  *(v8 + 104) = a4;
  v9 = sub_1D138D5EC();
  *(v8 + 48) = v9;
  v10 = *(v9 - 8);
  *(v8 + 56) = v10;
  *(v8 + 64) = *(v10 + 64);
  *(v8 + 72) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D131EF28, 0, 0);
}

uint64_t sub_1D131EF28()
{
  if (*(v0 + 104) == 1)
  {
    if (qword_1EE069ED0 != -1)
    {
      swift_once();
    }

    v2 = *(v0 + 64);
    v1 = *(v0 + 72);
    v3 = *(v0 + 48);
    v4 = *(v0 + 56);
    v5 = *(v0 + 32);
    v6 = *(v0 + 16);
    (*(v4 + 16))(v1, *(v0 + 24), v3);
    v7 = (*(v4 + 80) + 24) & ~*(v4 + 80);
    v8 = (v2 + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
    v9 = swift_allocObject();
    *(v0 + 80) = v9;
    *(v9 + 16) = v6;
    (*(v4 + 32))(v9 + v7, v1, v3);
    *(v9 + v8) = v5;
    sub_1D13905AC();

    v10 = v5;
    *(v0 + 88) = sub_1D139059C();
    v12 = sub_1D139055C();

    return MEMORY[0x1EEE6DFA0](sub_1D131F11C, v12, v11);
  }

  else
  {
    v13 = swift_task_alloc();
    *(v0 + 96) = v13;
    *v13 = v0;
    v13[1] = sub_1D131F1C0;
    v15 = *(v0 + 24);
    v14 = *(v0 + 32);

    return sub_1D131F2D0(v15, v14);
  }
}

uint64_t sub_1D131F11C()
{
  v1 = v0[10];
  v2 = v0[5];
  v3 = v0[3];

  sub_1D129AB44(v3, v2, &unk_1D13B0B28, v1);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1D131F1C0()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1D131F2D0(uint64_t a1, uint64_t a2)
{
  v3[24] = a2;
  v3[25] = v2;
  v3[23] = a1;
  v4 = sub_1D138D5EC();
  v3[26] = v4;
  v3[27] = *(v4 - 8);
  v3[28] = swift_task_alloc();
  v3[29] = swift_task_alloc();
  v3[30] = swift_task_alloc();
  v5 = sub_1D138F0BC();
  v3[31] = v5;
  v3[32] = *(v5 - 8);
  v3[33] = swift_task_alloc();
  v3[34] = swift_task_alloc();
  v3[35] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D131F420, 0, 0);
}

uint64_t sub_1D131F420()
{
  v36 = v0;
  v1 = v0[30];
  v2 = v0[26];
  v3 = v0[27];
  v4 = v0[23];
  sub_1D138F06C();
  v5 = *(v3 + 16);
  v0[36] = v5;
  v0[37] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v1, v4, v2);

  v6 = sub_1D138F0AC();
  v7 = sub_1D139081C();

  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[35];
  v11 = v0[31];
  v10 = v0[32];
  v12 = v0[30];
  v14 = v0[26];
  v13 = v0[27];
  if (v8)
  {
    v32 = v7;
    v34 = v0[31];
    v15 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v35 = v31;
    *v15 = 136315394;
    v16 = sub_1D131B120();
    v33 = v9;
    v18 = sub_1D11DF718(v16, v17, &v35);

    *(v15 + 4) = v18;
    *(v15 + 12) = 2080;
    sub_1D1325B98(&qword_1EC60D1C0, MEMORY[0x1E69695A8]);
    v19 = sub_1D13915CC();
    v21 = v20;
    v22 = *(v13 + 8);
    v22(v12, v14);
    v23 = sub_1D11DF718(v19, v21, &v35);

    *(v15 + 14) = v23;
    _os_log_impl(&dword_1D101F000, v6, v32, "%s will replace account %s", v15, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1D38882F0](v31, -1, -1);
    MEMORY[0x1D38882F0](v15, -1, -1);

    v24 = *(v10 + 8);
    v24(v33, v34);
  }

  else
  {

    v22 = *(v13 + 8);
    v22(v12, v14);
    v24 = *(v10 + 8);
    v24(v9, v11);
  }

  v0[38] = v24;
  v0[39] = v22;
  v25 = v0[24];
  v26 = *(v0[25] + 24);
  v27 = sub_1D138D5AC();
  v0[40] = v27;
  v0[2] = v0;
  v0[3] = sub_1D131F788;
  v28 = swift_continuation_init();
  sub_1D12D60DC(0, &qword_1EC60ED20);
  v0[17] = v29;
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1D131A144;
  v0[13] = &block_descriptor_175;
  v0[14] = v28;
  [v26 replaceAccountWithNewAccountForAccountWithIdentifier:v27 usingCredentialWithPersistentID:v25 completion:v0 + 10];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1D131F788()
{
  v1 = *(*v0 + 48);
  *(*v0 + 328) = v1;
  if (v1)
  {
    v2 = sub_1D131FB70;
  }

  else
  {
    v2 = sub_1D131F898;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D131F898()
{
  v29 = v0;
  v1 = *(v0 + 288);
  v2 = *(v0 + 232);
  v3 = *(v0 + 208);
  v4 = *(v0 + 184);

  sub_1D138F06C();
  v1(v2, v4, v3);

  v5 = sub_1D138F0AC();
  v6 = sub_1D139081C();

  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v0 + 304);
  v27 = *(v0 + 312);
  v9 = *(v0 + 272);
  v10 = *(v0 + 248);
  v11 = *(v0 + 232);
  v12 = *(v0 + 208);
  if (v7)
  {
    v26 = *(v0 + 304);
    v25 = *(v0 + 248);
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v28 = v14;
    *v13 = 136315394;
    v15 = sub_1D131B120();
    v24 = v9;
    v17 = sub_1D11DF718(v15, v16, &v28);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2080;
    sub_1D1325B98(&qword_1EC60D1C0, MEMORY[0x1E69695A8]);
    v18 = sub_1D13915CC();
    v20 = v19;
    v27(v11, v12);
    v21 = sub_1D11DF718(v18, v20, &v28);

    *(v13 + 14) = v21;
    _os_log_impl(&dword_1D101F000, v5, v6, "%s successfully replaced account %s", v13, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1D38882F0](v14, -1, -1);
    MEMORY[0x1D38882F0](v13, -1, -1);

    v26(v24, v25);
  }

  else
  {

    v27(v11, v12);
    v8(v9, v10);
  }

  v22 = *(v0 + 8);

  return v22();
}

uint64_t sub_1D131FB70()
{
  v41 = v0;
  v2 = v0[40];
  v1 = v0[41];
  v3 = v0[36];
  v4 = v0[28];
  v5 = v0[26];
  v6 = v0[23];
  swift_willThrow();

  sub_1D138F06C();
  v3(v4, v6, v5);

  v7 = v1;
  v8 = sub_1D138F0AC();
  v9 = sub_1D13907FC();

  if (os_log_type_enabled(v8, v9))
  {
    v35 = v0[39];
    v36 = v0[41];
    v38 = v0[33];
    v39 = v0[38];
    v37 = v0[31];
    v10 = v0[28];
    v11 = v0[26];
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v40[0] = v13;
    *v12 = 136315650;
    v14 = sub_1D131B120();
    v16 = sub_1D11DF718(v14, v15, v40);

    *(v12 + 4) = v16;
    *(v12 + 12) = 2080;
    sub_1D1325B98(&qword_1EC60D1C0, MEMORY[0x1E69695A8]);
    v17 = sub_1D13915CC();
    v19 = v18;
    v35(v10, v11);
    v20 = sub_1D11DF718(v17, v19, v40);

    v0[22] = v36;
    *(v12 + 14) = v20;
    *(v12 + 22) = 2080;
    v21 = v36;
    sub_1D10922EC();
    sub_1D13916AC();
    v22 = HKSensitiveLogItem();
    swift_unknownObjectRelease();
    sub_1D139101C();
    swift_unknownObjectRelease();
    v23 = sub_1D139020C();
    v25 = sub_1D11DF718(v23, v24, v40);

    *(v12 + 24) = v25;
    _os_log_impl(&dword_1D101F000, v8, v9, "%s failed to replace account %s. Error: %s", v12, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1D38882F0](v13, -1, -1);
    MEMORY[0x1D38882F0](v12, -1, -1);

    v39(v38, v37);
  }

  else
  {
    v26 = v0[41];
    v28 = v0[38];
    v27 = v0[39];
    v29 = v0[33];
    v30 = v0[31];
    v31 = v0[28];
    v32 = v0[26];

    v27(v31, v32);
    v28(v29, v30);
  }

  v33 = v0[1];

  return v33();
}

uint64_t sub_1D131FF14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_1D108077C;

  return sub_1D131F2D0(a2, a3);
}

uint64_t ClinicalAccountManager.upgrade(account:from:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1D131FFE4, 0, 0);
}

uint64_t sub_1D131FFE4()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];
  type metadata accessor for ClinicalAccountUpgradeManager();
  swift_allocObject();
  v4 = v3;

  v5 = v2;
  v0[5] = sub_1D1292444(v4, v1, v5);

  v6 = swift_task_alloc();
  v0[6] = v6;
  *v6 = v0;
  v6[1] = sub_1D13200D8;

  return sub_1D1289FC8();
}

uint64_t sub_1D13200D8()
{

  return MEMORY[0x1EEE6DFA0](sub_1D111AF54, 0, 0);
}

uint64_t sub_1D13201D4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1D10819BC;

  return sub_1D1289FC8();
}

uint64_t sub_1D1320264@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_1D138D5EC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  (*(v7 + 16))(&v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v6);
  v9 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  (*(v7 + 32))(v10 + v9, &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
  sub_1D1326EAC(0, &unk_1EC60C218, MEMORY[0x1E695C028]);
  swift_allocObject();
  v11 = a1;
  result = sub_1D138F73C();
  *a3 = result;
  return result;
}

void sub_1D13203E0(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v8 = sub_1D138D5EC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = sub_1D138D5AC();
  (*(v9 + 16))(aBlock - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a4, v8);
  v12 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  *(v13 + 24) = a2;
  (*(v9 + 32))(v13 + v12, aBlock - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v8);
  aBlock[4] = sub_1D1327034;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D11BAA58;
  aBlock[3] = &block_descriptor_113;
  v14 = _Block_copy(aBlock);

  [a3 fetchAccountWithIdentifier:v11 completion:v14];
  _Block_release(v14);
}

uint64_t sub_1D13205B8(void *a1, void *a2, void (*a3)(char *), uint64_t a4, uint64_t a5)
{
  v24 = a3;
  v8 = sub_1D138D5EC();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D13270E4(0);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v23 - v16;
  if (a1)
  {
    *v15 = a1;
    swift_storeEnumTagMultiPayload();
    v18 = a1;
    v17 = v15;
  }

  else
  {
    (*(v9 + 16))(v11, a5, v8);
    if (a2)
    {
      v19 = a2;
    }

    else
    {
      v19 = [objc_opt_self() hk:0 error:0 userInfo:?];
    }

    (*(v9 + 32))(v17, v11, v8);
    v20 = type metadata accessor for ClinicalAccountManager.FlowError();
    v17[*(v20 + 20)] = 1;
    *&v17[*(v20 + 24)] = v19;
    swift_storeEnumTagMultiPayload();
    v21 = a2;
  }

  v24(v17);
  return sub_1D13260D8(v17, sub_1D13270E4);
}

uint64_t sub_1D13207EC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = sub_1D138D5EC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  (*(v9 + 16))(&v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v8);
  v11 = (*(v9 + 80) + 24) & ~*(v9 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  (*(v9 + 32))(v12 + v11, &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v8);
  *(v12 + ((v10 + v11 + 7) & 0xFFFFFFFFFFFFFFF8)) = a3;
  sub_1D1325D40(0);
  swift_allocObject();
  v13 = a1;
  result = sub_1D138F73C();
  *a4 = result;
  return result;
}

void sub_1D1320968(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v17 = a5;
  v9 = sub_1D138D5EC();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = sub_1D138D5AC();
  (*(v10 + 16))(&v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), a4, v9);
  v13 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = a2;
  (*(v10 + 32))(v14 + v13, &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v9);
  aBlock[4] = sub_1D1325F80;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D112A218;
  aBlock[3] = &block_descriptor_42_0;
  v15 = _Block_copy(aBlock);

  [a3 deleteAccountWithIdentifier:v12 deletionReason:v17 completion:v15];
  _Block_release(v15);
}

uint64_t sub_1D1320B48(char a1, void *a2, void (*a3)(char *), uint64_t a4, uint64_t a5)
{
  sub_1D1326004(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    if (qword_1EE06A170 != -1)
    {
      swift_once();
    }

    sub_1D122101C(11, 0, 0);
    v12 = sub_1D138D5EC();
    (*(*(v12 - 8) + 16))(v11, a5, v12);
    swift_storeEnumTagMultiPayload();
    a3(v11);
  }

  else
  {
    if (a2)
    {
      v13 = a2;
    }

    else
    {
      v14 = objc_opt_self();
      v15 = sub_1D139012C();
      v13 = [v14 hk:0 error:v15 description:?];
    }

    v16 = sub_1D138D5EC();
    (*(*(v16 - 8) + 16))(v11, a5, v16);
    v17 = type metadata accessor for ClinicalAccountManager.FlowError();
    v11[*(v17 + 20)] = 6;
    *&v11[*(v17 + 24)] = v13;
    swift_storeEnumTagMultiPayload();
    v18 = a2;
    v19 = v13;
    a3(v11);
  }

  return sub_1D13260D8(v11, sub_1D1326004);
}

uint64_t sub_1D1320D9C@<X0>(uint64_t *a1@<X8>)
{
  sub_1D132768C();
  swift_allocObject();

  result = sub_1D138F73C();
  *a1 = result;
  return result;
}

void sub_1D1320E08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  v7 = *(a3 + 24);
  v8 = swift_allocObject();
  *(v8 + 16) = sub_1D10A918C;
  *(v8 + 24) = v6;
  v10[4] = sub_1D1327720;
  v10[5] = v8;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 1107296256;
  v10[2] = sub_1D131A0A0;
  v10[3] = &block_descriptor_147;
  v9 = _Block_copy(v10);

  [v7 fetchAllAccountsWithCompletion_];
  _Block_release(v9);
}

uint64_t sub_1D1320F1C(unint64_t a1, void *a2, void (*a3)(void, void), unint64_t a4)
{
  v8 = sub_1D138F0BC();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v12 = a2;
    sub_1D138F06C();
    v13 = a2;
    v14 = sub_1D138F0AC();
    v15 = sub_1D13907FC();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v30 = a3;
      v17 = a4;
      v18 = v16;
      v19 = swift_slowAlloc();
      *v18 = 138412290;
      v20 = a2;
      v21 = _swift_stdlib_bridgeErrorToNSError();
      *(v18 + 4) = v21;
      *v19 = v21;
      _os_log_impl(&dword_1D101F000, v14, v15, "HKClinicalAccountStore.upgradableAccountsPublisher failed with error: %@", v18, 0xCu);
      sub_1D10B8240(v19);
      MEMORY[0x1D38882F0](v19, -1, -1);
      v22 = v18;
      a4 = v17;
      a3 = v30;
      MEMORY[0x1D38882F0](v22, -1, -1);
    }

    else
    {
    }

    (*(v9 + 8))(v11, v8);
  }

  if (!a1)
  {
    return (a3)(MEMORY[0x1E69E7CC0], 0);
  }

  v31 = MEMORY[0x1E69E7CC0];
  if (a1 >> 62)
  {
    goto LABEL_23;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1D13910DC())
  {
    v29[1] = a4;
    v30 = a3;
    v24 = 0;
    a4 = a1 & 0xC000000000000001;
    while (1)
    {
      if (a4)
      {
        v25 = MEMORY[0x1D3886B70](v24, a1);
      }

      else
      {
        if (v24 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_22;
        }

        v25 = *(a1 + 8 * v24 + 32);
      }

      v26 = v25;
      a3 = (v24 + 1);
      if (__OFADD__(v24, 1))
      {
        break;
      }

      v27 = [v25 newerAvailableGateway];
      if (v27)
      {

        sub_1D13912AC();
        sub_1D13912EC();
        sub_1D13912FC();
        sub_1D13912BC();
      }

      else
      {
      }

      ++v24;
      if (a3 == i)
      {
        v30(v31, 0);
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    ;
  }

  a3(MEMORY[0x1E69E7CC0], 0);
}

uint64_t sub_1D1321230(void (*a1)(char *), uint64_t a2, void (*a3)(uint64_t), uint64_t a4, void *a5)
{
  sub_1D1326004(0);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3)
  {
    a3(v9);
  }

  v12 = [a5 identifier];
  sub_1D138D5CC();

  swift_storeEnumTagMultiPayload();
  a1(v11);
  return sub_1D13260D8(v11, sub_1D1326004);
}

uint64_t sub_1D1321338@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v30 = a3;
  v5 = sub_1D138D5EC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D1325CAC();
  v10 = *(v9 - 8);
  v28 = v9;
  v29 = v10;
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = *(a2 + 24);
  v26 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
  (*(v6 + 16))(v8, a1, v5);
  v13 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v14 = (v7 + v13 + 7) & 0xFFFFFFFFFFFFFFF8;
  v15 = (v14 + 15) & 0xFFFFFFFFFFFFFFF8;
  v16 = (v15 + 15) & 0xFFFFFFFFFFFFFFF8;
  v17 = swift_allocObject();
  *(v17 + 16) = a2;
  (*(v6 + 32))(v17 + v13, v8, v5);
  *(v17 + v14) = 5;
  v18 = v27;
  *(v17 + v15) = v27;
  v19 = v26;
  *(v17 + v16) = v26;
  sub_1D1325D40(0);
  sub_1D1325B98(&qword_1EC60F790, sub_1D1325D40);

  v20 = v18;
  v21 = v19;
  sub_1D138F75C();
  sub_1D1325B98(&qword_1EC60F798, sub_1D1325CAC);
  v22 = v28;
  v23 = sub_1D138F80C();

  result = (*(v29 + 8))(v12, v22);
  *v30 = v23;
  return result;
}

uint64_t sub_1D1321624(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18[1] = a4;
  v6 = sub_1D138D5EC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  sub_1D1325CAC();
  v10 = v9;
  v11 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v6);
  v14 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = a2;
  (*(v7 + 32))(v15 + v14, v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
  sub_1D1325D40(0);
  sub_1D1325B98(&qword_1EC60F790, sub_1D1325D40);

  sub_1D138F75C();
  sub_1D1325B98(&qword_1EC60F798, sub_1D1325CAC);
  v16 = sub_1D138F80C();
  (*(v11 + 8))(v13, v10);
  return v16;
}

uint64_t sub_1D1321890@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v52 = a4;
  v39 = a3;
  v41 = a1;
  v7 = type metadata accessor for ClinicalAccountManager.FlowError();
  v49 = *(v7 - 8);
  v48 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v47 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1D138D5EC();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D1325CAC();
  v14 = *(v13 - 8);
  v44 = v13;
  v45 = v14;
  MEMORY[0x1EEE9AC00](v13);
  v42 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D13269B8();
  v17 = *(v16 - 8);
  v50 = v16;
  v51 = v17;
  MEMORY[0x1EEE9AC00](v16);
  v46 = &v38 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = *(a2 + 24);
  v38 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
  v19 = *(v10 + 16);
  v43 = v9;
  v19(v12, a1, v9);
  v20 = (*(v10 + 80) + 24) & ~*(v10 + 80);
  v21 = (v11 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
  v22 = (v21 + 15) & 0xFFFFFFFFFFFFFFF8;
  v23 = swift_allocObject();
  *(v23 + 16) = a2;
  (*(v10 + 32))(v23 + v20, v12, v9);
  v24 = v38;
  *(v23 + v21) = v39;
  v25 = v40;
  *(v23 + v22) = v40;
  *(v23 + ((v22 + 15) & 0xFFFFFFFFFFFFFFF8)) = v24;
  sub_1D1325D40(0);
  sub_1D1325B98(&qword_1EC60F790, sub_1D1325D40);

  v26 = v25;
  v27 = v24;
  v28 = v42;
  sub_1D138F75C();
  sub_1D1325B98(&qword_1EC60F798, sub_1D1325CAC);
  v29 = v44;
  v30 = sub_1D138F80C();

  (*(v45 + 8))(v28, v29);
  v53 = v30;
  v31 = v47;
  sub_1D1325C44(v41, v47, type metadata accessor for ClinicalAccountManager.FlowError);
  v32 = (*(v49 + 80) + 16) & ~*(v49 + 80);
  v33 = swift_allocObject();
  sub_1D1325BE0(v31, v33 + v32);
  sub_1D1177080();
  sub_1D1325B98(&qword_1EC60C250, sub_1D1177080);
  v34 = v46;
  sub_1D138F88C();

  sub_1D1325B98(&qword_1EC60F830, sub_1D13269B8);
  v35 = v50;
  v36 = sub_1D138F80C();
  result = (*(v51 + 8))(v34, v35);
  *v52 = v36;
  return result;
}

uint64_t sub_1D1321DCC(uint64_t a1, uint64_t a2)
{
  type metadata accessor for ClinicalAccountManager.FlowError();
  sub_1D1325B98(&qword_1EC60C228, type metadata accessor for ClinicalAccountManager.FlowError);
  swift_allocError();
  sub_1D1325C44(a2, v3, type metadata accessor for ClinicalAccountManager.FlowError);
  return swift_willThrow();
}

id sub_1D1321E6C@<X0>(void **a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  sub_1D1326138(0, &qword_1EC60F820, type metadata accessor for ClinicalAccountManager.FlowError, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v16 - v7;
  v9 = *a1;
  v16[1] = v9;
  v10 = v9;
  sub_1D10922EC();
  v11 = type metadata accessor for ClinicalAccountManager.FlowError();
  v12 = swift_dynamicCast();
  v13 = *(*(v11 - 8) + 56);
  if (v12)
  {
    v13(v8, 0, 1, v11);
    return sub_1D1325BE0(v8, a3);
  }

  else
  {
    v13(v8, 1, 1, v11);
    sub_1D1326948(v8, &qword_1EC60F820, type metadata accessor for ClinicalAccountManager.FlowError);
    v15 = [a2 identifier];
    sub_1D138D5CC();

    *(a3 + *(v11 + 20)) = 5;
    *(a3 + *(v11 + 24)) = v9;
    return v9;
  }
}

uint64_t sub_1D132202C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, void *a5@<X4>, uint64_t *a6@<X8>)
{
  v23 = a3;
  v24 = a5;
  v25 = a6;
  v9 = sub_1D138D5EC();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v13, a2, v9, v12);
  v14 = (*(v10 + 80) + 24) & ~*(v10 + 80);
  v15 = (v11 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = (v15 + 15) & 0xFFFFFFFFFFFFFFF8;
  v17 = swift_allocObject();
  *(v17 + 16) = a1;
  (*(v10 + 32))(v17 + v14, v13, v9);
  v18 = v24;
  *(v17 + v15) = v23;
  *(v17 + v16) = a4;
  *(v17 + ((v16 + 15) & 0xFFFFFFFFFFFFFFF8)) = v18;
  sub_1D1325D40(0);
  swift_allocObject();

  v19 = a4;
  v20 = v18;
  result = sub_1D138F73C();
  *v25 = result;
  return result;
}

void sub_1D13221DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7)
{
  v61 = a6;
  v62 = a5;
  v59 = a1;
  v60 = a2;
  v10 = sub_1D138D5EC();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v58 = &v49[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v49[-v14];
  v16 = sub_1D138F0BC();
  v55 = *(v16 - 8);
  v56 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v49[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1D138F06C();
  v19 = *(v11 + 16);
  v57 = a4;
  v54 = v19;
  v19(v15, a4, v10);

  v20 = a3;
  v21 = sub_1D138F0AC();
  v22 = sub_1D13907EC();

  v23 = os_log_type_enabled(v21, v22);
  v53 = v20;
  if (v23)
  {
    v24 = swift_slowAlloc();
    v50 = v22;
    v25 = v24;
    v51 = swift_slowAlloc();
    aBlock[0] = v51;
    *v25 = 136315650;
    v26 = sub_1D131B120();
    v28 = sub_1D11DF718(v26, v27, aBlock);
    v52 = a7;
    v29 = v28;

    *(v25 + 4) = v29;
    *(v25 + 12) = 2080;
    sub_1D1325B98(&qword_1EC60D1C0, MEMORY[0x1E69695A8]);
    v30 = sub_1D13915CC();
    v32 = v31;
    (*(v11 + 8))(v15, v10);
    v33 = sub_1D11DF718(v30, v32, aBlock);

    *(v25 + 14) = v33;
    *(v25 + 22) = 2080;
    v34 = HKClinicalSharingUserStatusToString();
    v35 = sub_1D139016C();
    v37 = v36;

    v38 = sub_1D11DF718(v35, v37, aBlock);
    a7 = v52;

    *(v25 + 24) = v38;
    _os_log_impl(&dword_1D101F000, v21, v50, "%s updating user status of account %s to %s", v25, 0x20u);
    v39 = v51;
    swift_arrayDestroy();
    MEMORY[0x1D38882F0](v39, -1, -1);
    MEMORY[0x1D38882F0](v25, -1, -1);
  }

  else
  {

    (*(v11 + 8))(v15, v10);
  }

  (*(v55 + 8))(v18, v56);
  v40 = v57;
  v41 = sub_1D138D5AC();
  v42 = v58;
  v54(v58, v40, v10);
  v43 = (*(v11 + 80) + 24) & ~*(v11 + 80);
  v44 = (v12 + v43 + 7) & 0xFFFFFFFFFFFFFFF8;
  v45 = swift_allocObject();
  *(v45 + 16) = v53;
  (*(v11 + 32))(v45 + v43, v42, v10);
  *(v45 + v44) = v62;
  v46 = (v45 + ((v44 + 15) & 0xFFFFFFFFFFFFFFF8));
  v47 = v60;
  *v46 = v59;
  v46[1] = v47;
  aBlock[4] = sub_1D1326BAC;
  aBlock[5] = v45;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D112A218;
  aBlock[3] = &block_descriptor_85;
  v48 = _Block_copy(aBlock);

  [v61 updateClinicalSharingStatusForAccountWithIdentifier:v41 firstSharedDate:0 lastSharedDate:0 userStatus:a7 multiDeviceStatus:0 primaryDeviceName:0 completion:v48];
  _Block_release(v48);
}

uint64_t sub_1D13226E8(char a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(void), uint64_t a7)
{
  v86 = a7;
  v87 = a4;
  v81 = a5;
  sub_1D1326004(0);
  v85 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v84 = &v75 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1D138D5EC();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v75 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v75 - v17;
  v19 = sub_1D138F0BC();
  v82 = *(v19 - 8);
  v83 = v19;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v75 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v75 - v23;
  if ((a1 & 1) != 0 || !a2)
  {
    sub_1D138F06C();
    v51 = v12;
    v52 = *(v13 + 16);
    v52(v15, v87, v51);

    v53 = sub_1D138F0AC();
    v54 = sub_1D13907DC();

    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      v80 = a6;
      v56 = v55;
      v79 = swift_slowAlloc();
      v88[0] = v79;
      *v56 = 136315650;
      v78 = v54;
      v57 = sub_1D131B120();
      v59 = sub_1D11DF718(v57, v58, v88);

      *(v56 + 4) = v59;
      *(v56 + 12) = 2080;
      sub_1D1325B98(&qword_1EC60D1C0, MEMORY[0x1E69695A8]);
      v60 = sub_1D13915CC();
      v62 = v61;
      (*(v13 + 8))(v15, v51);
      v63 = sub_1D11DF718(v60, v62, v88);

      *(v56 + 14) = v63;
      *(v56 + 22) = 2080;
      v64 = HKClinicalSharingUserStatusToString();
      v65 = sub_1D139016C();
      v67 = v66;

      v68 = sub_1D11DF718(v65, v67, v88);

      *(v56 + 24) = v68;
      _os_log_impl(&dword_1D101F000, v53, v78, "%s successfully updated user status of account %s to %s", v56, 0x20u);
      v69 = v79;
      swift_arrayDestroy();
      MEMORY[0x1D38882F0](v69, -1, -1);
      v70 = v56;
      a6 = v80;
      MEMORY[0x1D38882F0](v70, -1, -1);
    }

    else
    {

      (*(v13 + 8))(v15, v51);
    }

    (*(v82 + 8))(v21, v83);
    v71 = v84;
    v52(v84, v87, v51);
    swift_storeEnumTagMultiPayload();
    a6(v71);
  }

  else
  {
    v25 = a2;
    sub_1D138F06C();
    v79 = *(v13 + 16);
    v79(v18, v87, v12);
    v26 = a2;

    v27 = sub_1D138F0AC();
    v28 = sub_1D13907FC();

    v78 = v28;
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v80 = a6;
      v30 = v29;
      v76 = swift_slowAlloc();
      v89 = v76;
      *v30 = 136315906;
      v77 = v27;
      v31 = sub_1D131B120();
      v33 = sub_1D11DF718(v31, v32, &v89);

      *(v30 + 4) = v33;
      *(v30 + 12) = 2080;
      sub_1D1325B98(&qword_1EC60D1C0, MEMORY[0x1E69695A8]);
      v34 = sub_1D13915CC();
      v36 = v35;
      (*(v13 + 8))(v18, v12);
      v37 = sub_1D11DF718(v34, v36, &v89);

      *(v30 + 14) = v37;
      *(v30 + 22) = 2080;
      v38 = HKClinicalSharingUserStatusToString();
      v39 = sub_1D139016C();
      v41 = v40;

      v42 = sub_1D11DF718(v39, v41, &v89);

      *(v30 + 24) = v42;
      *(v30 + 32) = 2080;
      v88[0] = a2;
      v43 = a2;
      sub_1D10922EC();
      sub_1D13916AC();
      v44 = HKSensitiveLogItem();
      swift_unknownObjectRelease();
      sub_1D139101C();
      swift_unknownObjectRelease();
      v45 = sub_1D13901EC();
      v47 = sub_1D11DF718(v45, v46, &v89);

      *(v30 + 34) = v47;
      v48 = v77;
      _os_log_impl(&dword_1D101F000, v77, v78, "%s failed to update user status of account %s to %s with error: %s", v30, 0x2Au);
      v49 = v76;
      swift_arrayDestroy();
      MEMORY[0x1D38882F0](v49, -1, -1);
      v50 = v30;
      a6 = v80;
      MEMORY[0x1D38882F0](v50, -1, -1);
    }

    else
    {

      (*(v13 + 8))(v18, v12);
    }

    (*(v82 + 8))(v24, v83);
    v71 = v84;
    v79(v84, v87, v12);
    v72 = type metadata accessor for ClinicalAccountManager.FlowError();
    *(v71 + *(v72 + 20)) = 2;
    *(v71 + *(v72 + 24)) = a2;
    swift_storeEnumTagMultiPayload();
    v73 = a2;
    a6(v71);
  }

  return sub_1D13260D8(v71, sub_1D1326004);
}

uint64_t sub_1D1322EA0@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = sub_1D138D5EC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v8);
  (*(v9 + 16))(&v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a3, v8, v11);
  v12 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  *(v13 + 24) = a2;
  (*(v9 + 32))(v13 + v12, &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v8);
  sub_1D1325D40(0);
  swift_allocObject();

  v14 = a2;
  result = sub_1D138F73C();
  *a4 = result;
  return result;
}

void sub_1D1323014(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v39 = a5;
  v9 = sub_1D138D5EC();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v37 = v11;
  v38 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1D138F0BC();
  v35 = *(v12 - 8);
  v36 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D138F06C();

  v15 = sub_1D138F0AC();
  v16 = sub_1D13907EC();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v34 = a4;
    v18 = v17;
    v32 = swift_slowAlloc();
    v33 = a2;
    aBlock[0] = v32;
    *v18 = 136315138;
    v19 = sub_1D131B120();
    v21 = v10;
    v22 = a1;
    v23 = a3;
    v24 = v9;
    v25 = sub_1D11DF718(v19, v20, aBlock);

    *(v18 + 4) = v25;
    v9 = v24;
    a3 = v23;
    a1 = v22;
    v10 = v21;
    _os_log_impl(&dword_1D101F000, v15, v16, "%s revoking authorization identifiers", v18, 0xCu);
    v26 = v32;
    __swift_destroy_boxed_opaque_existential_1Tm(v32);
    a2 = v33;
    MEMORY[0x1D38882F0](v26, -1, -1);
    v27 = v18;
    a4 = v34;
    MEMORY[0x1D38882F0](v27, -1, -1);
  }

  (*(v35 + 8))(v14, v36);
  v28 = v38;
  (*(v10 + 16))(v38, v39, v9);
  v29 = (*(v10 + 80) + 40) & ~*(v10 + 80);
  v30 = swift_allocObject();
  *(v30 + 2) = a3;
  *(v30 + 3) = a1;
  *(v30 + 4) = a2;
  (*(v10 + 32))(&v30[v29], v28, v9);
  aBlock[4] = sub_1D13268C0;
  aBlock[5] = v30;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D112A218;
  aBlock[3] = &block_descriptor_70_0;
  v31 = _Block_copy(aBlock);

  [a4 revokeWithCompletion_];
  _Block_release(v31);
}

uint64_t sub_1D132338C(char a1, void *a2, uint64_t a3, void (*a4)(void), uint64_t a5, uint64_t a6)
{
  v53 = a6;
  sub_1D1326004(0);
  v54 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = sub_1D138F0BC();
  v13 = *(v52 - 8);
  MEMORY[0x1EEE9AC00](v52);
  v15 = &v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v50 - v17;
  if ((a1 & 1) != 0 || !a2)
  {
    v51 = a5;
    sub_1D138F06C();

    v39 = sub_1D138F0AC();
    v40 = sub_1D13907DC();

    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v50 = a4;
      v42 = v41;
      v43 = swift_slowAlloc();
      v55 = v43;
      *v42 = 136315138;
      v44 = sub_1D131B120();
      v46 = sub_1D11DF718(v44, v45, &v55);

      *(v42 + 4) = v46;
      _os_log_impl(&dword_1D101F000, v39, v40, "%s successfully revoked authorization identifiers", v42, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v43);
      MEMORY[0x1D38882F0](v43, -1, -1);
      v47 = v42;
      a4 = v50;
      MEMORY[0x1D38882F0](v47, -1, -1);
    }

    (*(v13 + 8))(v15, v52);
    v48 = sub_1D138D5EC();
    (*(*(v48 - 8) + 16))(v12, v53, v48);
    swift_storeEnumTagMultiPayload();
    a4(v12);
  }

  else
  {
    v19 = a2;
    sub_1D138F06C();
    v20 = a2;

    v21 = sub_1D138F0AC();
    v22 = sub_1D13907FC();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v50 = a4;
      v24 = v23;
      v25 = swift_slowAlloc();
      v51 = a5;
      v26 = v25;
      v56 = v25;
      *v24 = 136315394;
      v27 = sub_1D131B120();
      v29 = sub_1D11DF718(v27, v28, &v56);

      *(v24 + 4) = v29;
      *(v24 + 12) = 2080;
      v55 = a2;
      v30 = a2;
      sub_1D10922EC();
      sub_1D13916AC();
      v31 = HKSensitiveLogItem();
      swift_unknownObjectRelease();
      sub_1D139101C();
      swift_unknownObjectRelease();
      v32 = sub_1D13901EC();
      v34 = sub_1D11DF718(v32, v33, &v56);

      *(v24 + 14) = v34;
      _os_log_impl(&dword_1D101F000, v21, v22, "%s failed to revoke authorization identifiers with error: %s", v24, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1D38882F0](v26, -1, -1);
      v35 = v24;
      a4 = v50;
      MEMORY[0x1D38882F0](v35, -1, -1);
    }

    (*(v13 + 8))(v18, v52);
    v36 = sub_1D138D5EC();
    (*(*(v36 - 8) + 16))(v12, v53, v36);
    v37 = type metadata accessor for ClinicalAccountManager.FlowError();
    v12[*(v37 + 20)] = 3;
    *&v12[*(v37 + 24)] = a2;
    swift_storeEnumTagMultiPayload();
    v38 = a2;
    a4(v12);
  }

  return sub_1D13260D8(v12, sub_1D1326004);
}

uint64_t sub_1D1323894(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[9] = a7;
  v8[10] = a8;
  v8[7] = a4;
  v8[8] = a5;
  v11 = sub_1D138D5EC();
  v8[11] = v11;
  v8[12] = *(v11 - 8);
  v8[13] = swift_task_alloc();
  v12 = sub_1D138F0BC();
  v8[14] = v12;
  v8[15] = *(v12 - 8);
  v8[16] = swift_task_alloc();
  v13 = swift_task_alloc();
  v8[17] = v13;
  *v13 = v8;
  v13[1] = sub_1D1323A14;

  return sub_1D1324E18(a5, a6);
}

uint64_t sub_1D1323A14()
{
  *(*v1 + 144) = v0;

  if (v0)
  {
    v2 = sub_1D1323BA4;
  }

  else
  {
    v2 = sub_1D1323B28;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D1323B28()
{
  (*(v0 + 72))(0);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D1323BA4()
{
  v42 = v0;
  v1 = v0[18];
  v3 = v0[12];
  v2 = v0[13];
  v4 = v0[11];
  v5 = v0[8];
  sub_1D138F06C();
  (*(v3 + 16))(v2, v5, v4);

  v6 = v1;
  v7 = sub_1D138F0AC();
  v8 = sub_1D13907FC();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = v0[18];
    v38 = v0[15];
    v10 = v0[13];
    v39 = v0[14];
    v40 = v0[16];
    v11 = v0[11];
    v12 = v0[12];
    v13 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v41 = v37;
    *v13 = 136315650;
    v14 = sub_1D131B120();
    v16 = sub_1D11DF718(v14, v15, &v41);

    *(v13 + 4) = v16;
    *(v13 + 12) = 2080;
    sub_1D1325B98(&qword_1EC60D1C0, MEMORY[0x1E69695A8]);
    v17 = sub_1D13915CC();
    v19 = v18;
    (*(v12 + 8))(v10, v11);
    v20 = sub_1D11DF718(v17, v19, &v41);

    v0[6] = v9;
    *(v13 + 14) = v20;
    *(v13 + 22) = 2080;
    v21 = v9;
    sub_1D10922EC();
    sub_1D13916AC();
    v22 = HKSensitiveLogItem();
    swift_unknownObjectRelease();
    sub_1D139101C();
    swift_unknownObjectRelease();
    v23 = sub_1D13901EC();
    v25 = sub_1D11DF718(v23, v24, &v41);

    *(v13 + 24) = v25;
    _os_log_impl(&dword_1D101F000, v7, v8, "%s failed to update clinical sharing device status of account %s with error: %s", v13, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1D38882F0](v37, -1, -1);
    MEMORY[0x1D38882F0](v13, -1, -1);

    (*(v38 + 8))(v40, v39);
  }

  else
  {
    v27 = v0[15];
    v26 = v0[16];
    v29 = v0[13];
    v28 = v0[14];
    v30 = v0[11];
    v31 = v0[12];

    (*(v31 + 8))(v29, v30);
    (*(v27 + 8))(v26, v28);
  }

  v32 = v0[18];
  v33 = v0[9];
  v34 = v32;
  v33(v32);

  v35 = v0[1];

  return v35();
}

uint64_t sub_1D1323F3C(uint64_t a1, uint64_t a2, void *a3, unint64_t *a4)
{
  v6 = *__swift_project_boxed_opaque_existential_1Tm((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_1D10922EC();
    swift_allocError();
    *v7 = a3;
    v8 = a3;

    return swift_continuation_throwingResumeWithError();
  }

  else
  {
    sub_1D106F934(0, a4);
    **(*(v6 + 64) + 40) = sub_1D139045C();

    return swift_continuation_throwingResume();
  }
}

uint64_t sub_1D1324028@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_1D138D5EC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v6);
  (*(v7 + 16))(&v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v6, v9);
  v10 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  (*(v7 + 32))(v11 + v10, &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
  sub_1D1325D40(0);
  swift_allocObject();

  result = sub_1D138F73C();
  *a3 = result;
  return result;
}

uint64_t sub_1D132418C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1D138D5EC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  sub_1D1326138(0, &qword_1EE06A650, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v18 - v12;
  v14 = sub_1D13905DC();
  (*(*(v14 - 8) + 56))(v13, 1, 1, v14);
  (*(v9 + 16))(&v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a4, v8);
  v15 = (*(v9 + 80) + 56) & ~*(v9 + 80);
  v16 = swift_allocObject();
  *(v16 + 2) = 0;
  *(v16 + 3) = 0;
  *(v16 + 4) = a3;
  *(v16 + 5) = a1;
  *(v16 + 6) = a2;
  (*(v9 + 32))(&v16[v15], &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v8);

  sub_1D107877C(0, 0, v13, &unk_1D13B0AD0, v16);
}

uint64_t sub_1D13243AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[3] = a6;
  v7[4] = a7;
  v7[2] = a5;
  sub_1D1326004(0);
  v7[5] = v8;
  v7[6] = swift_task_alloc();
  v9 = swift_task_alloc();
  v7[7] = v9;
  *v9 = v7;
  v9[1] = sub_1D1324478;

  return sub_1D131A2B0(5);
}

uint64_t sub_1D1324478()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_1D1324680;
  }

  else
  {
    v2 = sub_1D132458C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D132458C()
{
  v1 = v0[6];
  v2 = v0[4];
  v3 = v0[2];
  v4 = sub_1D138D5EC();
  (*(*(v4 - 8) + 16))(v1, v2, v4);
  swift_storeEnumTagMultiPayload();
  v3(v1);
  sub_1D13260D8(v0[6], sub_1D1326004);

  v5 = v0[1];

  return v5();
}

uint64_t sub_1D1324680()
{
  v1 = v0[8];
  v2 = v0[6];
  v3 = v0[4];
  v4 = v0[2];
  v5 = sub_1D138D5EC();
  (*(*(v5 - 8) + 16))(v2, v3, v5);
  v6 = type metadata accessor for ClinicalAccountManager.FlowError();
  *(v2 + *(v6 + 20)) = 4;
  *(v2 + *(v6 + 24)) = v1;
  swift_storeEnumTagMultiPayload();
  v7 = v1;
  v4(v2);

  sub_1D13260D8(v0[6], sub_1D1326004);

  v8 = v0[1];

  return v8();
}

uint64_t sub_1D13247A4()
{
  MEMORY[0x1D3885C10](91, 0xE100000000000000);
  swift_getMetatypeMetadata();
  v0 = sub_1D13901EC();
  MEMORY[0x1D3885C10](v0);

  MEMORY[0x1D3885C10](10272, 0xE200000000000000);
  sub_1D139133C();
  MEMORY[0x1D3885C10](3824937, 0xE300000000000000);
  return 0;
}

uint64_t sub_1D132486C(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  sub_1D1326138(0, &qword_1EE06A650, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v17 - v8;
  v10 = sub_1D13905DC();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  sub_1D13905AC();

  v11 = a3;
  v12 = a4;
  v13 = sub_1D139059C();
  v14 = swift_allocObject();
  v15 = MEMORY[0x1E69E85E0];
  v14[2] = v13;
  v14[3] = v15;
  v14[4] = a2;
  v14[5] = v11;
  v14[6] = v12;
  sub_1D107877C(0, 0, v9, &unk_1D13B0AC0, v14);
}

uint64_t sub_1D13249DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[2] = sub_1D13905AC();
  v6[3] = sub_1D139059C();
  v9 = swift_task_alloc();
  v6[4] = v9;
  *v9 = v6;
  v9[1] = sub_1D10AA380;

  return ClinicalAccountManager.startRelogin(to:from:)(a5, a6);
}

uint64_t ClinicalAccountManager.deinit()
{

  return v0;
}

uint64_t ClinicalAccountManager.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1D1324B28(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v5 = a3;
  v7 = *(a1 + 32);
  if (a3)
  {
    sub_1D106F934(0, &qword_1EE06B0D0);
    v5 = sub_1D139045C();
  }

  v8 = a2;
  v9 = a4;
  v7(v8, v5, a4);
}

void sub_1D1324BE0(uint64_t a1, uint64_t a2)
{
  v5 = [objc_opt_self() signedClinicalDataRecordType];
  v6 = swift_allocObject();
  v6[2] = v2;
  v6[3] = a1;
  v6[4] = a2;
  v7 = objc_allocWithZone(MEMORY[0x1E696C3C8]);
  v11[4] = sub_1D1324E0C;
  v11[5] = v6;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 1107296256;
  v11[2] = sub_1D1324B28;
  v11[3] = &block_descriptor_19_1;
  v8 = _Block_copy(v11);

  v9 = [v7 initWithSampleType:v5 predicate:0 limit:0 sortDescriptors:0 resultsHandler:v8];

  _Block_release(v8);

  v10 = [*(v2 + 24) healthStore];
  [v10 executeQuery_];
}

uint64_t block_copy_helper_72(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t objectdestroyTm_11(void (*a1)(void))
{
  a1(*(v1 + 16));

  return MEMORY[0x1EEE6BDD0](v1, 40, 7);
}

uint64_t sub_1D1324E18(uint64_t a1, uint64_t a2)
{
  v3[19] = a2;
  v3[20] = v2;
  v3[18] = a1;
  v4 = sub_1D138D5EC();
  v3[21] = v4;
  v3[22] = *(v4 - 8);
  v3[23] = swift_task_alloc();
  v3[24] = swift_task_alloc();
  v5 = sub_1D138F0BC();
  v3[25] = v5;
  v3[26] = *(v5 - 8);
  v3[27] = swift_task_alloc();
  v3[28] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D1324F50, 0, 0);
}

uint64_t sub_1D1324F50()
{
  v38 = v0;
  v1 = v0[24];
  v2 = v0[21];
  v3 = v0[22];
  v4 = v0[18];
  sub_1D138F06C();
  v5 = *(v3 + 16);
  v0[29] = v5;
  v0[30] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v1, v4, v2);

  v6 = sub_1D138F0AC();
  v7 = sub_1D13907EC();

  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[28];
  v11 = v0[25];
  v10 = v0[26];
  v12 = v0[24];
  v14 = v0[21];
  v13 = v0[22];
  if (v8)
  {
    v34 = v7;
    v32 = v0[19];
    v36 = v0[25];
    v15 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v37 = v33;
    *v15 = 136315650;
    v16 = sub_1D131B120();
    v35 = v9;
    v18 = sub_1D11DF718(v16, v17, &v37);

    *(v15 + 4) = v18;
    *(v15 + 12) = 2080;
    sub_1D1325B98(&qword_1EC60D1C0, MEMORY[0x1E69695A8]);
    v19 = sub_1D13915CC();
    v21 = v20;
    v22 = *(v13 + 8);
    v22(v12, v14);
    v23 = sub_1D11DF718(v19, v21, &v37);

    *(v15 + 14) = v23;
    *(v15 + 22) = 2048;
    *(v15 + 24) = v32;
    _os_log_impl(&dword_1D101F000, v6, v34, "%s updating clinical sharing device status of account %s to %ld", v15, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1D38882F0](v33, -1, -1);
    MEMORY[0x1D38882F0](v15, -1, -1);

    v24 = *(v10 + 8);
    v24(v35, v36);
  }

  else
  {

    v22 = *(v13 + 8);
    v22(v12, v14);
    v24 = *(v10 + 8);
    v24(v9, v11);
  }

  v0[31] = v24;
  v0[32] = v22;
  v25 = v0[20];
  v26 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
  v0[33] = v26;
  v27 = *(v25 + 24);
  v28 = sub_1D138D5AC();
  v0[34] = v28;
  v0[2] = v0;
  v0[3] = sub_1D1325304;
  v29 = swift_continuation_init();
  sub_1D12D60DC(0, &qword_1EC60ED20);
  v0[17] = v30;
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1D131A144;
  v0[13] = &block_descriptor_136_0;
  v0[14] = v29;
  [v27 updateClinicalSharingStatusForAccountWithIdentifier:v28 firstSharedDate:0 lastSharedDate:0 userStatus:0 multiDeviceStatus:v26 primaryDeviceName:0 completion:v0 + 10];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1D1325304()
{
  v1 = *(*v0 + 48);
  *(*v0 + 280) = v1;
  if (v1)
  {
    v2 = sub_1D1325898;
  }

  else
  {
    v2 = sub_1D1325414;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D1325414()
{
  v30 = v0;
  v1 = *(v0 + 272);
  v2 = *(v0 + 232);
  v3 = *(v0 + 184);
  v4 = *(v0 + 168);
  v5 = *(v0 + 144);

  sub_1D138F06C();
  v2(v3, v5, v4);

  v6 = sub_1D138F0AC();
  v7 = sub_1D13907DC();

  v8 = os_log_type_enabled(v6, v7);
  v9 = *(v0 + 248);
  v28 = *(v0 + 256);
  v10 = *(v0 + 216);
  v11 = *(v0 + 200);
  v12 = *(v0 + 184);
  v13 = *(v0 + 168);
  if (v8)
  {
    v27 = *(v0 + 248);
    v26 = *(v0 + 200);
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v29 = v15;
    *v14 = 136315394;
    v16 = sub_1D131B120();
    v25 = v10;
    v18 = sub_1D11DF718(v16, v17, &v29);

    *(v14 + 4) = v18;
    *(v14 + 12) = 2080;
    sub_1D1325B98(&qword_1EC60D1C0, MEMORY[0x1E69695A8]);
    v19 = sub_1D13915CC();
    v21 = v20;
    v28(v12, v13);
    v22 = sub_1D11DF718(v19, v21, &v29);

    *(v14 + 14) = v22;
    _os_log_impl(&dword_1D101F000, v6, v7, "%s successfully updated clinical sharing device status of account %s", v14, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1D38882F0](v15, -1, -1);
    MEMORY[0x1D38882F0](v14, -1, -1);

    v27(v25, v26);
  }

  else
  {

    v28(v12, v13);
    v9(v10, v11);
  }

  v23 = swift_task_alloc();
  *(v0 + 288) = v23;
  *v23 = v0;
  v23[1] = sub_1D13256F0;

  return sub_1D131A2B0(5);
}

uint64_t sub_1D13256F0()
{
  *(*v1 + 296) = v0;

  if (v0)
  {
    v2 = sub_1D1325948;
  }

  else
  {
    v2 = sub_1D1325804;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D1325804()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D1325898()
{
  v1 = *(v0 + 272);
  v2 = *(v0 + 264);
  swift_willThrow();

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1D1325948()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D13259F0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1D10819BC;

  return sub_1D13249DC(a1, v4, v5, v6, v7, v8);
}

uint64_t type metadata accessor for ClinicalAccountManager.FlowError()
{
  result = qword_1EC60F880;
  if (!qword_1EC60F880)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D1325B04()
{
  if (!qword_1EC60F778)
  {
    type metadata accessor for ClinicalAccountManager.FlowError();
    sub_1D1325B98(&qword_1EC60C228, type metadata accessor for ClinicalAccountManager.FlowError);
    v0 = sub_1D138F60C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC60F778);
    }
  }
}

uint64_t sub_1D1325B98(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D1325BE0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ClinicalAccountManager.FlowError();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D1325C44(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_1D1325CAC()
{
  if (!qword_1EC60F780)
  {
    sub_1D1325D40(255);
    sub_1D1325B98(&qword_1EC60F790, sub_1D1325D40);
    v0 = sub_1D138F76C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC60F780);
    }
  }
}

uint64_t sub_1D1325D60@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(sub_1D138D5EC() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = *(v1 + 16);
  v6 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1D13207EC(v5, v1 + v4, v6, a1);
}

uint64_t objectdestroy_32Tm_0()
{
  v1 = sub_1D138D5EC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 8, v3 | 7);
}

void sub_1D1325ED0(uint64_t a1, uint64_t a2)
{
  v5 = *(sub_1D138D5EC() - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = *(v2 + 16);

  sub_1D1320968(a1, a2, v8, v2 + v6, v7);
}

uint64_t sub_1D1325F80(char a1, void *a2)
{
  v5 = *(sub_1D138D5EC() - 8);
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = v2 + ((*(v5 + 80) + 32) & ~*(v5 + 80));

  return sub_1D1320B48(a1, a2, v6, v7, v8);
}

void sub_1D1326024(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D138D5EC();
    v7 = type metadata accessor for ClinicalAccountManager.FlowError();
    v8 = sub_1D1325B98(&qword_1EC60C228, type metadata accessor for ClinicalAccountManager.FlowError);
    v9 = a3(a1, v6, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_1D13260D8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1D1326138(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1D13261BC()
{
  if (!qword_1EC60F7B8)
  {
    sub_1D1177080();
    sub_1D1325D40(255);
    sub_1D1325B98(&qword_1EC60C250, sub_1D1177080);
    sub_1D1325B98(&qword_1EC60F790, sub_1D1325D40);
    v0 = sub_1D138F59C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC60F7B8);
    }
  }
}

void sub_1D13262A8()
{
  if (!qword_1EC60F7C0)
  {
    sub_1D1177080();
    sub_1D13261BC();
    sub_1D1325B98(&qword_1EC60C250, sub_1D1177080);
    sub_1D1325B98(&qword_1EC60F7C8, sub_1D13261BC);
    v0 = sub_1D138F59C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC60F7C0);
    }
  }
}

void sub_1D1326394()
{
  if (!qword_1EC60F7D0)
  {
    sub_1D13262A8();
    sub_1D1326480();
    sub_1D1325B98(&qword_1EC60F7E0, sub_1D13262A8);
    sub_1D1325B98(&qword_1EC60F7E8, sub_1D1326480);
    v0 = sub_1D138F5DC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC60F7D0);
    }
  }
}

void sub_1D1326480()
{
  if (!qword_1EC60F7D8)
  {
    sub_1D138D5EC();
    sub_1D10922EC();
    v0 = sub_1D138F62C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC60F7D8);
    }
  }
}

void sub_1D13264F0()
{
  if (!qword_1EC60F7F0)
  {
    sub_1D1326394();
    type metadata accessor for ClinicalAccountManager.FlowError();
    sub_1D1325B98(&qword_1EC60F7F8, sub_1D1326394);
    sub_1D1325B98(&qword_1EC60C228, type metadata accessor for ClinicalAccountManager.FlowError);
    v0 = sub_1D138F5BC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC60F7F0);
    }
  }
}

void sub_1D13265DC()
{
  if (!qword_1EC60F800)
  {
    sub_1D1177080();
    sub_1D13264F0();
    sub_1D1325B98(&qword_1EC60C250, sub_1D1177080);
    sub_1D1325B98(&qword_1EC60F808, sub_1D13264F0);
    v0 = sub_1D138F59C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC60F800);
    }
  }
}

uint64_t sub_1D1326714@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 16))();
  *a1 = result;
  return result;
}

uint64_t sub_1D1326768@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(sub_1D138D5EC() - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  return sub_1D1322EA0(v4, v5, v6, a1);
}

uint64_t objectdestroy_60Tm()
{
  v1 = sub_1D138D5EC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1D13268C0(char a1, void *a2)
{
  v5 = *(sub_1D138D5EC() - 8);
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = v2 + ((*(v5 + 80) + 40) & ~*(v5 + 80));

  return sub_1D132338C(a1, a2, v6, v7, v8, v9);
}

uint64_t sub_1D1326948(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1D1326138(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_1D13269B8()
{
  if (!qword_1EC60F828)
  {
    sub_1D1177080();
    sub_1D138D5EC();
    sub_1D1325B98(&qword_1EC60C250, sub_1D1177080);
    v0 = sub_1D138F57C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC60F828);
    }
  }
}

void sub_1D1326AE4(uint64_t a1, uint64_t a2)
{
  v5 = *(sub_1D138D5EC() - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v2 + v7);
  v10 = *(v2 + 16);
  v11 = *(v2 + v8);
  v12 = *(v2 + ((v8 + 15) & 0xFFFFFFFFFFFFFFF8));

  sub_1D13221DC(a1, a2, v10, v2 + v6, v9, v11, v12);
}

uint64_t sub_1D1326BAC(char a1, void *a2)
{
  v5 = *(sub_1D138D5EC() - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v2 + 16);
  v9 = *(v2 + v7);
  v10 = v2 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8);
  v11 = *v10;
  v12 = *(v10 + 8);

  return sub_1D13226E8(a1, a2, v8, v2 + v6, v9, v11, v12);
}

uint64_t sub_1D1326C88(uint64_t a1)
{
  v4 = *(sub_1D138D5EC() - 8);
  v5 = (*(v4 + 80) + 56) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = v1[6];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1D10819BC;

  return sub_1D13243AC(a1, v6, v7, v8, v9, v10, v1 + v5);
}

void sub_1D1326D94(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_1D106F934(255, a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_1D1326E14(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v6 = *(sub_1D138D5EC() - 8);
  v7 = *(v3 + 16);
  v8 = v3 + ((*(v6 + 80) + 24) & ~*(v6 + 80));

  return a3(a1, a2, v7, v8);
}

void sub_1D1326EAC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D106F934(255, &qword_1EC609A00);
    v7 = type metadata accessor for ClinicalAccountManager.FlowError();
    v8 = sub_1D1325B98(&qword_1EC60C228, type metadata accessor for ClinicalAccountManager.FlowError);
    v9 = a3(a1, v6, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t objectdestroy_38Tm()
{
  v1 = sub_1D138D5EC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1D132704C(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v6 = *(sub_1D138D5EC() - 8);
  v7 = *(v3 + 16);
  v8 = *(v3 + 24);
  v9 = v3 + ((*(v6 + 80) + 32) & ~*(v6 + 80));

  return a3(a1, a2, v7, v8, v9);
}

void sub_1D1327104()
{
  if (!qword_1EC60F850)
  {
    sub_1D1177080();
    sub_1D1325B98(&qword_1EC60C250, sub_1D1177080);
    v0 = sub_1D138F59C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC60F850);
    }
  }
}

void sub_1D13271A4()
{
  if (!qword_1EC60F858)
  {
    sub_1D1177080();
    sub_1D1327104();
    sub_1D1325B98(&qword_1EC60C250, sub_1D1177080);
    sub_1D1325B98(&qword_1EC60F860, sub_1D1327104);
    v0 = sub_1D138F59C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC60F858);
    }
  }
}

uint64_t objectdestroy_72Tm()
{
  v1 = sub_1D138D5EC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v6 + 8, v3 | 7);
}

uint64_t sub_1D1327388@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(sub_1D138D5EC() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + 16);
  v8 = *(v1 + v5);
  v9 = *(v1 + v6);
  v10 = *(v1 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_1D132202C(v7, v1 + v4, v8, v9, v10, a1);
}

uint64_t sub_1D132747C(uint64_t a1)
{
  v3 = *(sub_1D138D5EC() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = *(v1 + 16);
  v6 = v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8);
  v7 = *v6;
  v8 = *(v6 + 8);

  return sub_1D131DA18(a1, v5, v1 + v4, v7, v8);
}

uint64_t objectdestroy_87Tm_0()
{
  v1 = sub_1D138D5EC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1D13275E4@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(sub_1D138D5EC() - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return sub_1D1324028(v4, v5, a1);
}

void sub_1D132768C()
{
  if (!qword_1EC60A9F0)
  {
    sub_1D1326D94(255, &qword_1EC60A9F8, &qword_1EC609A00, 0x1E69A3F00, MEMORY[0x1E69E62F8]);
    v0 = sub_1D138F72C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC60A9F0);
    }
  }
}

uint64_t sub_1D1327728(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(sub_1D138D5EC() - 8);
  v12 = (*(v11 + 80) + 24) & ~*(v11 + 80);
  v13 = (*(v11 + 64) + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_1D131EC08(a1, a2, a3, a4, a5, *(v5 + 16), v5 + v12, *(v5 + v13), *(v5 + ((v13 + 15) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_1D1327804(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_1D138D5EC() - 8);
  v6 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v1 + 16);
  v9 = *(v1 + 24);
  v10 = *(v1 + 32);
  v11 = *(v1 + 40);
  v12 = *(v1 + v7);
  v13 = *(v1 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_1D108077C;

  return sub_1D131EE58(a1, v8, v9, v10, v11, v1 + v6, v12, v13);
}

uint64_t sub_1D1327958()
{
  v2 = *(sub_1D138D5EC() - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = *(v0 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1D10819BC;

  return sub_1D131FF14(v4, v0 + v3, v5);
}

void sub_1D1327A60(uint64_t a1, unint64_t *a2, unint64_t *a3, unint64_t *a4, uint64_t a5)
{
  if (!*a2)
  {
    sub_1D1326D94(255, a3, a4, a5, MEMORY[0x1E69E62F8]);
    sub_1D10922EC();
    v6 = sub_1D139061C();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_1D1327AF0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1D10819BC;

  return sub_1D131E40C(a1, v4, v5, v6, v7, v8);
}

unint64_t sub_1D1327BE0()
{
  result = sub_1D138D5EC();
  if (v1 <= 0x3F)
  {
    result = sub_1D10922EC();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_1D1327C80()
{
  result = qword_1EC60F890;
  if (!qword_1EC60F890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC60F890);
  }

  return result;
}

unint64_t MedicalRecordFormatterContext.init(rawValue:)(unint64_t result)
{
  if (result > 1)
  {
    return 0;
  }

  return result;
}

unint64_t sub_1D1327D88()
{
  result = qword_1EC60F898;
  if (!qword_1EC60F898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC60F898);
  }

  return result;
}

uint64_t sub_1D1327DEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1D139059C();

  swift_task_getMainExecutor();
  if (swift_task_isCurrentExecutor())
  {
    v8 = swift_allocObject();
    *(v8 + 16) = a1;
    *(v8 + 24) = a2;
    sub_1D1328640(v13);
    if (v4)
    {
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if ((isEscapingClosureAtFileLocation & 1) == 0)
      {
        return a4;
      }

      __break(1u);
    }

    a4 = LOBYTE(v13[0]);
    v10 = swift_isEscapingClosureAtFileLocation();

    if ((v10 & 1) == 0)
    {
      return a4;
    }

    __break(1u);
  }

  v13[0] = 0;
  v13[1] = 0xE000000000000000;
  sub_1D13911EC();
  MEMORY[0x1D3885C10](0xD00000000000003FLL, 0x80000001D13CCA80);
  v12 = sub_1D139184C();
  MEMORY[0x1D3885C10](v12);

  MEMORY[0x1D3885C10](46, 0xE100000000000000);
  result = sub_1D13913BC();
  __break(1u);
  return result;
}

uint64_t sub_1D1327FA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1D139059C();

  swift_task_getMainExecutor();
  if (swift_task_isCurrentExecutor())
  {
    v8 = swift_allocObject();
    *(v8 + 16) = a1;
    *(v8 + 24) = a2;
    sub_1D1328684(v13);
    if (v4)
    {
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if ((isEscapingClosureAtFileLocation & 1) == 0)
      {
        return a4;
      }

      __break(1u);
    }

    a4 = v13[0];
    v10 = swift_isEscapingClosureAtFileLocation();

    if ((v10 & 1) == 0)
    {
      return a4;
    }

    __break(1u);
  }

  v13[0] = 0;
  v13[1] = 0xE000000000000000;
  sub_1D13911EC();
  MEMORY[0x1D3885C10](0xD00000000000003FLL, 0x80000001D13CCA80);
  v12 = sub_1D139184C();
  MEMORY[0x1D3885C10](v12);

  MEMORY[0x1D3885C10](46, 0xE100000000000000);
  result = sub_1D13913BC();
  __break(1u);
  return result;
}

uint64_t sub_1D132815C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1D139059C();

  swift_task_getMainExecutor();
  if (swift_task_isCurrentExecutor())
  {
    v8 = swift_allocObject();
    *(v8 + 16) = a1;
    *(v8 + 24) = a2;
    sub_1D1328710(v13);
    if (v4)
    {
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if ((isEscapingClosureAtFileLocation & 1) == 0)
      {
        return a4;
      }

      __break(1u);
    }

    a4 = v13[0];
    v10 = swift_isEscapingClosureAtFileLocation();

    if ((v10 & 1) == 0)
    {
      return a4;
    }

    __break(1u);
  }

  v13[0] = 0;
  v13[1] = 0xE000000000000000;
  sub_1D13911EC();
  MEMORY[0x1D3885C10](0xD00000000000003FLL, 0x80000001D13CCA80);
  v12 = sub_1D139184C();
  MEMORY[0x1D3885C10](v12);

  MEMORY[0x1D3885C10](46, 0xE100000000000000);
  result = sub_1D13913BC();
  __break(1u);
  return result;
}

uint64_t AccountOnboardingSession.makeDataTypeSelectionViewController(for:)(uint64_t a1)
{
  sub_1D13905AC();
  v5 = v1;
  v6 = a1;
  return sub_1D1327FA4(sub_1D13283FC, &v4, "HealthRecordsUI/AccountOnboardingSession+ViewControllers.swift", 62);
}

char *sub_1D132838C@<X0>(void *a1@<X0>, void *a2@<X1>, char **a3@<X8>)
{
  v6 = objc_allocWithZone(type metadata accessor for ClinicalSharingDataTypeSelectionViewController(0));
  result = sub_1D1089C9C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t AccountOnboardingSession.makeNecessaryScopesNotPresentViewController(for:)(uint64_t a1)
{
  sub_1D13905AC();
  v3[2] = a1;
  return sub_1D132815C(sub_1D132858C, v3, "HealthRecordsUI/AccountOnboardingSession+ViewControllers.swift", 62);
}

id sub_1D1328538@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = objc_allocWithZone(type metadata accessor for ClinicalSharingOnboardingNecessaryScopesNotPresentViewController());
  result = sub_1D12884B8(a1);
  *a2 = result;
  return result;
}

void *sub_1D1328640@<X0>(_BYTE *a1@<X8>)
{
  result = (*(v1 + 16))(&v5);
  if (!v2)
  {
    *a1 = v5;
  }

  return result;
}

void *sub_1D132869C@<X0>(void *a1@<X8>)
{
  result = (*(v1 + 16))(&v5);
  if (!v2)
  {
    *a1 = v5;
  }

  return result;
}

uint64_t LocalizedEducationContent.hasContentForCurrentLocaleAndCountryCode.getter(uint64_t a1, uint64_t a2)
{
  v2 = sub_1D1329B7C(1, 1, a1, a2);
  if (!*(v2 + 16))
  {

    return 0;
  }

  v3 = sub_1D132A710(v2);

  v5 = *(v3 + 16);
  if (!v5)
  {
LABEL_9:

    v18 = 0;
    memset(v17, 0, sizeof(v17));
    sub_1D132AE2C(v17, &qword_1EC60F8A0, sub_1D132ABD8);
    return 0;
  }

  v6 = 0;
  v7 = v3 + 32;
  while (v6 < *(v3 + 16))
  {
    sub_1D1072E70(v7, &v14);
    v8 = v15;
    v9 = v16;
    __swift_project_boxed_opaque_existential_1Tm(&v14, v15);
    v10 = (*(v9 + 48))(v8, v9);
    v12 = v11;

    v13 = HIBYTE(v12) & 0xF;
    if ((v12 & 0x2000000000000000) == 0)
    {
      v13 = v10 & 0xFFFFFFFFFFFFLL;
    }

    if (v13)
    {

      sub_1D1116EB0(&v14, v17);
      sub_1D132AE2C(v17, &qword_1EC60F8A0, sub_1D132ABD8);
      return 1;
    }

    ++v6;
    result = __swift_destroy_boxed_opaque_existential_1Tm(&v14);
    v7 += 40;
    if (v5 == v6)
    {
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

id LocalizedEducationContentCodable.codableContent.getter(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  v4 = *(v3 + 8);
  v5 = *(v4(a1, v3) + 16);

  if (v5)
  {
    v5 = [objc_allocWithZone(MEMORY[0x1E69A41D0]) init];
    if (v5)
    {
      v6 = v4(a1, v3);
      v7 = MEMORY[0x1E69E7CC0];
      v21 = MEMORY[0x1E69E7CC0];
      v8 = *(v6 + 16);
      if (v8)
      {
        v9 = 0;
        do
        {
          v10 = v6 + 32 + 40 * v9;
          v11 = v9;
          while (1)
          {
            if (v11 >= *(v6 + 16))
            {
              __break(1u);
              goto LABEL_24;
            }

            sub_1D1072E70(v10, v20);
            sub_1D1328C10(v20, &v19);
            v12 = __swift_destroy_boxed_opaque_existential_1Tm(v20);
            if (v19)
            {
              break;
            }

            ++v11;
            v10 += 40;
            if (v8 == v11)
            {
              goto LABEL_13;
            }
          }

          MEMORY[0x1D3885D90](v12);
          if (*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_1D13904BC();
          }

          v9 = v11 + 1;
          sub_1D13904FC();
          v7 = v21;
        }

        while (v8 - 1 != v11);
      }

LABEL_13:

      if (v7 >> 62)
      {
        goto LABEL_26;
      }

      for (i = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1D13910DC())
      {
        v14 = 0;
        while (1)
        {
          if ((v7 & 0xC000000000000001) != 0)
          {
            v15 = MEMORY[0x1D3886B70](v14, v7);
          }

          else
          {
            if (v14 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_25;
            }

            v15 = *(v7 + 8 * v14 + 32);
          }

          v16 = v15;
          v17 = v14 + 1;
          if (__OFADD__(v14, 1))
          {
            break;
          }

          [v5 addSections_];

          ++v14;
          if (v17 == i)
          {
            goto LABEL_27;
          }
        }

LABEL_24:
        __break(1u);
LABEL_25:
        __break(1u);
LABEL_26:
        ;
      }

LABEL_27:
    }
  }

  return v5;
}

void sub_1D1328C10(void *a1@<X0>, void *a2@<X8>)
{
  v4 = [objc_allocWithZone(MEMORY[0x1E69A41D8]) init];
  if (!v4)
  {
    goto LABEL_15;
  }

  v37 = a2;
  v5 = a1[3];
  v6 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, v5);
  [v4 setType_];
  v7 = a1[3];
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, v7);
  (*(v8 + 48))(v7, v8);
  v9 = sub_1D139012C();

  [v4 setSectionLocalizedContent_];

  v10 = a1[3];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, v10);
  (*(v11 + 32))(v10, v11);
  v12 = sub_1D139012C();

  [v4 setSectionLocaleIdentifier_];

  v13 = a1[3];
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, v13);
  v15 = (*(v14 + 8))(v13, v14);
  v16 = v15;
  v17 = *(v15 + 16);
  if (v17)
  {
    v18 = 0;
    v19 = v15 + 40;
    while (v18 < *(v16 + 16))
    {
      ++v18;

      v20 = sub_1D139012C();
      [v4 addSectionCitations_];

      v19 += 16;
      if (v17 == v18)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
    goto LABEL_17;
  }

LABEL_6:

  v21 = a1[3];
  v22 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, v21);
  v23 = (*(v22 + 16))(v21, v22);
  v24 = v23;
  v25 = *(v23 + 16);
  if (!v25)
  {
LABEL_10:

    v29 = a1[3];
    v30 = a1[4];
    __swift_project_boxed_opaque_existential_1Tm(a1, v29);
    v31 = (*(v30 + 24))(v29, v30);
    v32 = v31;
    v33 = *(v31 + 16);
    if (v33)
    {
      v34 = 0;
      v35 = v31 + 40;
      while (v34 < *(v32 + 16))
      {
        ++v34;

        v36 = sub_1D139012C();
        [v4 addSectionValidRegionCodes_];

        v35 += 16;
        if (v33 == v34)
        {
          goto LABEL_14;
        }
      }

      goto LABEL_18;
    }

LABEL_14:

    a2 = v37;
LABEL_15:
    *a2 = v4;
    return;
  }

  v26 = 0;
  v27 = v23 + 40;
  while (v26 < *(v24 + 16))
  {
    ++v26;

    v28 = sub_1D139012C();
    [v4 addSectionAttributions_];

    v27 += 16;
    if (v25 == v26)
    {
      goto LABEL_10;
    }
  }

LABEL_17:
  __break(1u);
LABEL_18:
  __break(1u);
}

uint64_t sub_1D1328FA4(SEL *a1)
{
  v2 = [v1 *a1];
  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v3 = v2;
  v4 = sub_1D139045C();

  return v4;
}

uint64_t HKOntologyLocalizedEducationContentSection.localizedTextForSection.getter()
{
  v1 = [v0 localizedText];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1D139016C();

  return v3;
}

uint64_t sub_1D132908C(uint64_t a1, uint64_t a2, SEL *a3)
{
  v4 = [*v3 *a3];
  if (!v4)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v5 = v4;
  v6 = sub_1D139045C();

  return v6;
}

uint64_t sub_1D13290E8()
{
  v1 = [*v0 localeIdentifier];
  v2 = sub_1D139016C();

  return v2;
}

uint64_t sub_1D1329150()
{
  v1 = [*v0 localizedText];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1D139016C();

  return v3;
}

void *HKOntologyLocalizedEducationContent.eduSections.getter()
{
  v1 = [v0 sections];
  sub_1D11C68A4();
  v2 = sub_1D139045C();

  v3 = sub_1D110A7BC(v2);

  return v3;
}

void *sub_1D1329224()
{
  v1 = [*v0 sections];
  sub_1D11C68A4();
  v2 = sub_1D139045C();

  v3 = sub_1D110A7BC(v2);

  return v3;
}

void *HKCodableHealthRecordsLocalizedEducationContent.eduSections.getter()
{
  v1 = sub_1D138D2CC();
  v2 = *(v1 - 8);
  *&v3 = MEMORY[0x1EEE9AC00](v1).n128_u64[0];
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([v0 sectionsCount] < 1)
  {
    return MEMORY[0x1E69E7CC0];
  }

  result = [v0 sections];
  if (result)
  {
    v7 = result;
    v12 = v2;
    sub_1D1390CCC();
    sub_1D132AD90(&qword_1EC60F410, MEMORY[0x1E6968EB0]);
    sub_1D1390F5C();
    if (v19)
    {
      v8 = MEMORY[0x1E69E7CC0];
      do
      {
        sub_1D109E39C(&v18, &v15);
        sub_1D132ABD8();
        if (swift_dynamicCast())
        {
          sub_1D1116EB0(v13, v17);
          sub_1D1116EB0(v17, v16);
          sub_1D1116EB0(v16, v17);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v8 = sub_1D10F8598(0, v8[2] + 1, 1, v8);
          }

          v10 = v8[2];
          v9 = v8[3];
          if (v10 >= v9 >> 1)
          {
            v8 = sub_1D10F8598((v9 > 1), v10 + 1, 1, v8);
          }

          v8[2] = v10 + 1;
          sub_1D1116EB0(v17, &v8[5 * v10 + 4]);
        }

        else
        {
          v14 = 0;
          memset(v13, 0, sizeof(v13));
          sub_1D132AE2C(v13, &qword_1EC60F8A0, sub_1D132ABD8);
        }

        sub_1D1390F5C();
      }

      while (v19);
    }

    else
    {
      v8 = MEMORY[0x1E69E7CC0];
    }

    (*(v12 + 8))(v5, v1);
    return v8;
  }

  __break(1u);
  return result;
}

char *sub_1D13295C4(SEL *a1, SEL *a2)
{
  if ([v2 *a1] < 1)
  {
    return MEMORY[0x1E69E7CC0];
  }

  result = [v2 *a2];
  if (result)
  {
    v5 = result;
    v6 = sub_1D132A4F8();

    return v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1D132966C(SEL *a1, SEL *a2)
{
  if (![v2 *a1])
  {
    return 0;
  }

  result = [v2 *a2];
  if (result)
  {
    v5 = result;
    v6 = sub_1D139016C();

    return v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

char *sub_1D1329724(uint64_t a1, uint64_t a2, SEL *a3, SEL *a4)
{
  v6 = *v4;
  if ([v6 *a3] < 1)
  {
    return MEMORY[0x1E69E7CC0];
  }

  result = [v6 *a4];
  if (result)
  {
    v8 = result;
    v9 = sub_1D132A4F8();

    return v9;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1D13297D0(uint64_t a1, uint64_t a2, SEL *a3, SEL *a4)
{
  v6 = *v4;
  if (![v6 *a3])
  {
    return 0;
  }

  result = [v6 *a4];
  if (result)
  {
    v8 = result;
    v9 = sub_1D139016C();

    return v9;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t LocalizedEducationContent.firstSection(of:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  result = (*(a3 + 8))(a2, a3);
  v7 = result;
  v8 = *(result + 16);
  if (v8)
  {
    v9 = 0;
    v10 = result + 32;
    while (v9 < *(v7 + 16))
    {
      sub_1D1072E70(v10, &v13);
      v11 = v14;
      v12 = v15;
      __swift_project_boxed_opaque_existential_1Tm(&v13, v14);
      if ((*(v12 + 40))(v11, v12) == a1)
      {

        return sub_1D1116EB0(&v13, a4);
      }

      ++v9;
      result = __swift_destroy_boxed_opaque_existential_1Tm(&v13);
      v10 += 40;
      if (v8 == v9)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_6:

    *(a4 + 32) = 0;
    *a4 = 0u;
    *(a4 + 16) = 0u;
  }

  return result;
}

uint64_t sub_1D1329964(uint64_t a1, char a2, char a3, uint64_t a4, uint64_t a5)
{
  v6 = sub_1D1329B7C(a1, a2, a4, a5);
  if (!*(v6 + 16))
  {
    goto LABEL_15;
  }

  v7 = sub_1D132A710(v6);

  v8 = *(v7 + 16);
  if (!v8)
  {

    v10 = MEMORY[0x1E69E7CC0];
    if (a3)
    {
      goto LABEL_10;
    }

LABEL_13:
    v21[0] = v10;
    sub_1D109CFDC();
    sub_1D132AD90(&qword_1EE06B0E8, sub_1D109CFDC);
    v19 = sub_1D139008C();
    goto LABEL_14;
  }

  v9 = v7 + 32;
  v10 = MEMORY[0x1E69E7CC0];
  do
  {
    sub_1D1072E70(v9, v21);
    v11 = v22;
    v12 = v23;
    __swift_project_boxed_opaque_existential_1Tm(v21, v22);
    v13 = (*(v12 + 48))(v11, v12);
    v15 = v14;
    __swift_destroy_boxed_opaque_existential_1Tm(v21);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v10 = sub_1D10F7284(0, *(v10 + 2) + 1, 1, v10);
    }

    v17 = *(v10 + 2);
    v16 = *(v10 + 3);
    if (v17 >= v16 >> 1)
    {
      v10 = sub_1D10F7284((v16 > 1), v17 + 1, 1, v10);
    }

    *(v10 + 2) = v17 + 1;
    v18 = &v10[16 * v17];
    *(v18 + 4) = v13;
    *(v18 + 5) = v15;
    v9 += 40;
    --v8;
  }

  while (v8);

  if ((a3 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_10:
  if (!*(v10 + 2))
  {
LABEL_15:

    return 0;
  }

  v19 = *(v10 + 4);

LABEL_14:

  return v19;
}

uint64_t sub_1D1329B7C(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1D138D67C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D132ADD8(0, &qword_1EC60CC10, MEMORY[0x1E6969680]);
  v13 = MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v54 - v14;
  result = (*(a4 + 8))(a3, a4, v13);
  v17 = result;
  if ((a2 & 1) == 0)
  {
LABEL_4:
    v20 = *(v17 + 16);
    if (v20)
    {
      goto LABEL_5;
    }

    goto LABEL_29;
  }

  sub_1D138D66C();
  sub_1D138D65C();
  (*(v9 + 8))(v11, v8);
  v18 = sub_1D138D64C();
  v19 = *(v18 - 8);
  if ((*(v19 + 48))(v15, 1, v18) == 1)
  {
    result = sub_1D132AE2C(v15, &qword_1EC60CC10, MEMORY[0x1E6969680]);
    goto LABEL_4;
  }

  v57 = sub_1D138D63C();
  v37 = v36;
  result = (*(v19 + 8))(v15, v18);
  v56 = *(v17 + 16);
  if (v56)
  {
    v38 = 0;
    v39 = v17 + 32;
    v40 = MEMORY[0x1E69E7CC0];
    v55 = a1;
    while (v38 < *(v17 + 16))
    {
      sub_1D1072E70(v39, &v61);
      v41 = v62;
      v42 = v63;
      __swift_project_boxed_opaque_existential_1Tm(&v61, v62);
      v43 = (*(v42 + 24))(v41, v42);
      v58[0] = v57;
      v58[1] = v37;
      MEMORY[0x1EEE9AC00](v43);
      *(&v54 - 2) = v58;
      LOBYTE(v41) = sub_1D10F1D44(sub_1D10EDCD0, (&v54 - 4), v43);

      if (v41)
      {
        sub_1D1116EB0(&v61, v58);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v64 = v40;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1D10FDC9C(0, *(v40 + 16) + 1, 1);
          v40 = v64;
        }

        v46 = *(v40 + 16);
        v45 = *(v40 + 24);
        if (v46 >= v45 >> 1)
        {
          sub_1D10FDC9C((v45 > 1), v46 + 1, 1);
        }

        v47 = v59;
        v48 = v60;
        v49 = __swift_mutable_project_boxed_opaque_existential_1(v58, v59);
        v50 = MEMORY[0x1EEE9AC00](v49);
        v52 = &v54 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v53 + 16))(v52, v50);
        sub_1D11C5FE0(v46, v52, &v64, v47, v48);
        result = __swift_destroy_boxed_opaque_existential_1Tm(v58);
        v40 = v64;
        a1 = v55;
      }

      else
      {
        result = __swift_destroy_boxed_opaque_existential_1Tm(&v61);
      }

      ++v38;
      v39 += 40;
      if (v56 == v38)
      {
        goto LABEL_28;
      }
    }

    goto LABEL_32;
  }

  v40 = MEMORY[0x1E69E7CC0];
LABEL_28:

  v17 = v40;
  v20 = *(v40 + 16);
  if (v20)
  {
LABEL_5:
    v21 = 0;
    v22 = v17 + 32;
    v23 = MEMORY[0x1E69E7CC0];
    while (v21 < *(v17 + 16))
    {
      sub_1D1072E70(v22, &v61);
      v24 = v62;
      v25 = v63;
      __swift_project_boxed_opaque_existential_1Tm(&v61, v62);
      if ((*(v25 + 40))(v24, v25) == a1)
      {
        sub_1D1116EB0(&v61, v58);
        v26 = swift_isUniquelyReferenced_nonNull_native();
        v64 = v23;
        if ((v26 & 1) == 0)
        {
          sub_1D10FDC9C(0, *(v23 + 16) + 1, 1);
          v23 = v64;
        }

        v28 = *(v23 + 16);
        v27 = *(v23 + 24);
        if (v28 >= v27 >> 1)
        {
          sub_1D10FDC9C((v27 > 1), v28 + 1, 1);
        }

        v29 = v59;
        v30 = v60;
        v31 = __swift_mutable_project_boxed_opaque_existential_1(v58, v59);
        v32 = MEMORY[0x1EEE9AC00](v31);
        v34 = &v54 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v35 + 16))(v34, v32);
        sub_1D11C5FE0(v28, v34, &v64, v29, v30);
        result = __swift_destroy_boxed_opaque_existential_1Tm(v58);
        v23 = v64;
      }

      else
      {
        result = __swift_destroy_boxed_opaque_existential_1Tm(&v61);
      }

      ++v21;
      v22 += 40;
      if (v20 == v21)
      {

        return v23;
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
    return result;
  }

LABEL_29:

  return MEMORY[0x1E69E7CC0];
}

uint64_t LocalizedEducationContent.hasContentForCurrentLocale.getter(uint64_t a1, uint64_t a2)
{
  v2 = sub_1D1329B7C(1, 0, a1, a2);
  if (*(v2 + 16) && (v3 = sub_1D132A710(v2), result = , (v5 = *(v3 + 16)) != 0))
  {
    v6 = 0;
    v7 = v3 + 32;
    while (v6 < *(v3 + 16))
    {
      sub_1D1072E70(v7, v14);
      v8 = v15;
      v9 = v16;
      __swift_project_boxed_opaque_existential_1Tm(v14, v15);
      v10 = (*(v9 + 48))(v8, v9);
      v12 = v11;

      if ((v12 & 0x2000000000000000) != 0)
      {
        v13 = HIBYTE(v12) & 0xF;
      }

      else
      {
        v13 = v10 & 0xFFFFFFFFFFFFLL;
      }

      result = __swift_destroy_boxed_opaque_existential_1Tm(v14);
      if (v13)
      {

        return 1;
      }

      ++v6;
      v7 += 40;
      if (v5 == v6)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_10:

    return 0;
  }

  return result;
}

id HKCodableHealthRecordsSharableViewModel.educationPrimaryContent.getter()
{
  if (![v0 hasLocalizedEducationContent])
  {
    return 0;
  }

  result = [v0 localizedEducationContent];
  if (result)
  {
    v2 = result;
    v3 = sub_1D11C4C94(1, 1, 0);

    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id HKCodableHealthRecordsSharableViewModel.educationTitle.getter()
{
  if ([v0 hasLocalizedEducationContent])
  {
    result = [v0 localizedEducationContent];
    if (!result)
    {
      __break(1u);
      return result;
    }

    v2 = result;
    v3 = sub_1D11C4C94(2, 1, 1);
    v5 = v4;

    if (v5)
    {
      return v3;
    }
  }

  if (qword_1EE06AD00 != -1)
  {
    swift_once();
  }

  return sub_1D138D1CC();
}

id HKCodableHealthRecordsSharableViewModel.uniqueIdentifier.getter()
{
  result = [v0 conceptIdentifier];
  if (result)
  {
    v2 = result;
    v3 = sub_1D139016C();

    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

char *sub_1D132A4F8()
{
  v0 = sub_1D138D2CC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D1390CCC();
  sub_1D132AD90(&qword_1EC60F410, MEMORY[0x1E6968EB0]);
  sub_1D1390F5C();
  if (v19)
  {
    v4 = MEMORY[0x1E69E7CC0];
    do
    {
      sub_1D109E39C(&v18, &v17);
      if (swift_dynamicCast())
      {
        v6 = v15;
        v5 = v16;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v14 = v5;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v4 = sub_1D10F7284(0, *(v4 + 2) + 1, 1, v4);
        }

        v9 = *(v4 + 2);
        v8 = *(v4 + 3);
        if (v9 >= v8 >> 1)
        {
          v4 = sub_1D10F7284((v8 > 1), v9 + 1, 1, v4);
        }

        *(v4 + 2) = v9 + 1;
        v10 = &v4[16 * v9];
        v11 = v14;
        *(v10 + 4) = v6;
        *(v10 + 5) = v11;
      }

      sub_1D1390F5C();
    }

    while (v19);
  }

  else
  {
    v4 = MEMORY[0x1E69E7CC0];
  }

  (*(v1 + 8))(v3, v0);
  return v4;
}

uint64_t sub_1D132A710(uint64_t a1)
{
  v2 = sub_1D138D67C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D138D66C();
  v51 = sub_1D138D60C();
  v52 = v6;
  (*(v3 + 8))(v5, v2);
  v7 = *(a1 + 16);
  if (!v7)
  {
    v9 = MEMORY[0x1E69E7CC8];
LABEL_21:
    v33 = v9[2];
    if (v33)
    {
      v34 = sub_1D129F730(v9[2], 0);
      v35 = sub_1D12A2F70(&v55, v34 + 4, v33, v9);

      sub_1D102CC30();
      if (v35 != v33)
      {
        __break(1u);
      }
    }

    v36 = objc_opt_self();
    v37 = sub_1D139044C();

    v38 = [v36 preferredLocalizationsFromArray_];

    v39 = sub_1D139045C();
    if (v39[2])
    {
      v41 = v39[4];
      v40 = v39[5];

      if (v9[2])
      {
        v42 = sub_1D11362EC(v51, v52);
        v44 = v43;

        if (v44)
        {
          v45 = *(v9[7] + 8 * v42);

LABEL_33:

          return v45;
        }
      }

      else
      {
      }

      if (v9[2])
      {
        v46 = sub_1D11362EC(v41, v40);
        v48 = v47;

        if (v48)
        {
          v45 = *(v9[7] + 8 * v46);

          goto LABEL_33;
        }
      }

      else
      {
      }
    }

    else
    {
    }

    return MEMORY[0x1E69E7CC0];
  }

  v8 = a1 + 32;
  v9 = MEMORY[0x1E69E7CC8];
  while (1)
  {
    sub_1D1072E70(v8, &v55);
    v10 = v56;
    v11 = v57;
    __swift_project_boxed_opaque_existential_1Tm(&v55, v56);
    v12 = (*(v11 + 32))(v10, v11);
    v14 = v13;
    sub_1D1072E70(&v55, v54);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v53 = v9;
    v17 = sub_1D11362EC(v12, v14);
    v18 = v9[2];
    v19 = (v16 & 1) == 0;
    v20 = v18 + v19;
    if (__OFADD__(v18, v19))
    {
      break;
    }

    v21 = v16;
    if (v9[3] >= v20)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        v9 = v53;
        if (v16)
        {
          goto LABEL_10;
        }
      }

      else
      {
        sub_1D1182774();
        v9 = v53;
        if (v21)
        {
          goto LABEL_10;
        }
      }
    }

    else
    {
      sub_1D117CCC4(v20, isUniquelyReferenced_nonNull_native);
      v22 = sub_1D11362EC(v12, v14);
      if ((v21 & 1) != (v23 & 1))
      {
        goto LABEL_38;
      }

      v17 = v22;
      v9 = v53;
      if (v21)
      {
LABEL_10:

        goto LABEL_14;
      }
    }

    v9[(v17 >> 6) + 8] |= 1 << v17;
    v24 = (v9[6] + 16 * v17);
    *v24 = v12;
    v24[1] = v14;
    *(v9[7] + 8 * v17) = MEMORY[0x1E69E7CC0];
    v25 = v9[2];
    v26 = __OFADD__(v25, 1);
    v27 = v25 + 1;
    if (v26)
    {
      goto LABEL_37;
    }

    v9[2] = v27;
LABEL_14:
    v28 = v9[7];
    v29 = *(v28 + 8 * v17);
    v30 = swift_isUniquelyReferenced_nonNull_native();
    *(v28 + 8 * v17) = v29;
    if ((v30 & 1) == 0)
    {
      v29 = sub_1D10F8598(0, v29[2] + 1, 1, v29);
      *(v28 + 8 * v17) = v29;
    }

    v32 = v29[2];
    v31 = v29[3];
    if (v32 >= v31 >> 1)
    {
      v29 = sub_1D10F8598((v31 > 1), v32 + 1, 1, v29);
      *(v28 + 8 * v17) = v29;
    }

    v29[2] = v32 + 1;
    sub_1D1116EB0(v54, &v29[5 * v32 + 4]);
    __swift_destroy_boxed_opaque_existential_1Tm(&v55);
    v8 += 40;
    if (!--v7)
    {
      goto LABEL_21;
    }
  }

  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  result = sub_1D13916CC();
  __break(1u);
  return result;
}

unint64_t sub_1D132ABD8()
{
  result = qword_1EC60ACE8;
  if (!qword_1EC60ACE8)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EC60ACE8);
  }

  return result;
}

uint64_t sub_1D132AD90(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1D132ADD8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D1390F3C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1D132AE2C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_1D132ADD8(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1D132AEAC()
{
  v6 = sub_1D139184C();
  MEMORY[0x1D3885C10](95, 0xE100000000000000);
  v1 = [*(v0 + 16) title];
  v2 = sub_1D139016C();
  v4 = v3;

  MEMORY[0x1D3885C10](v2, v4);

  return v6;
}

uint64_t sub_1D132AF68()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1D132AFCC()
{
  type metadata accessor for AccountSourceCell();
  sub_1D132D6F8(&qword_1EC60E7D8, 255, type metadata accessor for AccountSourceCell);
  return sub_1D138DECC();
}

uint64_t sub_1D132B05C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE0DA58](a1, WitnessTable);
}

id sub_1D132B0C0()
{
  v1 = OBJC_IVAR____TtC15HealthRecordsUI17AccountSourceCell____lazy_storage___logoView;
  v2 = *(v0 + OBJC_IVAR____TtC15HealthRecordsUI17AccountSourceCell____lazy_storage___logoView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC15HealthRecordsUI17AccountSourceCell____lazy_storage___logoView);
  }

  else
  {
    v4 = [objc_allocWithZone(WDBrandLogoView) initWithSize_];
    [v4 setTranslatesAutoresizingMaskIntoConstraints_];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_1D132B154()
{
  v1 = OBJC_IVAR____TtC15HealthRecordsUI17AccountSourceCell____lazy_storage___titleLabel;
  v2 = *(v0 + OBJC_IVAR____TtC15HealthRecordsUI17AccountSourceCell____lazy_storage___titleLabel);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC15HealthRecordsUI17AccountSourceCell____lazy_storage___titleLabel);
  }

  else
  {
    v4 = v0;
    v5 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
    [v5 setTranslatesAutoresizingMaskIntoConstraints_];
    [v5 setAdjustsFontForContentSizeCategory_];
    sub_1D106F934(0, &qword_1EC60E670);
    v6 = sub_1D1390C6C();
    [v5 setFont_];

    [v5 setNumberOfLines_];
    [v5 setTextAlignment_];
    v7 = [objc_opt_self() labelColor];
    [v5 setTextColor_];

    v8 = *(v4 + v1);
    *(v4 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v9 = v2;
  return v3;
}

id sub_1D132B2D8(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(v1 + *a1);
  if (v3)
  {
    v4 = *(v1 + *a1);
  }

  else
  {
    v5 = sub_1D132B334();
    v6 = *(v1 + v2);
    *(v1 + v2) = v5;
    v4 = v5;

    v3 = 0;
  }

  v7 = v3;
  return v4;
}

id sub_1D132B334()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  [v0 setTranslatesAutoresizingMaskIntoConstraints_];
  [v0 setAdjustsFontForContentSizeCategory_];
  v1 = [objc_opt_self() preferredFontForTextStyle_];
  [v0 setFont_];

  [v0 setNumberOfLines_];
  [v0 setTextAlignment_];
  v2 = [objc_opt_self() labelColor];
  [v0 setTextColor_];

  return v0;
}

id sub_1D132B440()
{
  v1 = OBJC_IVAR____TtC15HealthRecordsUI17AccountSourceCell____lazy_storage___webLinkButton;
  v2 = *(v0 + OBJC_IVAR____TtC15HealthRecordsUI17AccountSourceCell____lazy_storage___webLinkButton);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC15HealthRecordsUI17AccountSourceCell____lazy_storage___webLinkButton);
  }

  else
  {
    v4 = sub_1D132B4A4(v0);
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_1D132B4A4(uint64_t a1)
{
  v30[1] = a1;
  v1 = sub_1D1390E2C();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D1390DFC();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1D1390ECC();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = v30 - v14;
  sub_1D1390EBC();
  (*(v6 + 104))(v8, *MEMORY[0x1E69DC508], v5);
  sub_1D1390E0C();
  if (qword_1EE06AD00 != -1)
  {
    swift_once();
  }

  sub_1D138D1CC();
  sub_1D1390E9C();
  (*(v2 + 104))(v4, *MEMORY[0x1E69DC538], v1);
  sub_1D1390E3C();
  sub_1D106F934(0, &qword_1EC60CAC0);
  (*(v10 + 16))(v12, v15, v9);
  sub_1D106F934(0, &unk_1EC60F6B0);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_1D1390DCC();
  v16 = sub_1D1390EDC();
  [v16 setTranslatesAutoresizingMaskIntoConstraints_];
  v17 = [v16 titleLabel];
  if (v17)
  {
    v18 = v17;
    [v17 setAdjustsFontForContentSizeCategory_];
  }

  v19 = [v16 titleLabel];
  if (v19)
  {
    v20 = v19;
    v21 = [objc_opt_self() preferredFontForTextStyle_];
    [v20 setFont_];
  }

  v22 = [v16 titleLabel];
  if (v22)
  {
    v23 = v22;
    [v22 setNumberOfLines_];
  }

  v24 = [objc_opt_self() hk_appKeyColor];
  [v16 setTintColor_];

  sub_1D10A5C9C(0, &qword_1EE06B560);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_1D139E710;
  *(v25 + 32) = sub_1D139016C();
  *(v25 + 40) = v26;
  strcpy((v25 + 48), "VisitWebsite");
  *(v25 + 61) = 0;
  *(v25 + 62) = -5120;
  v27 = sub_1D139044C();

  v28 = HKUIJoinStringsForAutomationIdentifier();

  [v16 setAccessibilityIdentifier_];
  (*(v10 + 8))(v15, v9);
  return v16;
}

id sub_1D132BA1C()
{
  sub_1D132D55C(0, &qword_1EC60A5F0, MEMORY[0x1E6968FB0]);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v13[-v1];
  v3 = sub_1D138D39C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v13[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    (*(v4 + 56))(v2, 1, 1, v3);
    return sub_1D132D69C(v2, &qword_1EC60A5F0, MEMORY[0x1E6968FB0]);
  }

  v8 = OBJC_IVAR____TtC15HealthRecordsUI17AccountSourceCell_accountURL;
  v9 = Strong;
  swift_beginAccess();
  sub_1D132D630(v9 + v8, v2, &qword_1EC60A5F0, MEMORY[0x1E6968FB0]);

  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    return sub_1D132D69C(v2, &qword_1EC60A5F0, MEMORY[0x1E6968FB0]);
  }

  (*(v4 + 32))(v6, v2, v3);
  result = [objc_opt_self() defaultWorkspace];
  if (result)
  {
    v11 = result;
    v12 = sub_1D138D30C();
    [v11 openURL:v12 configuration:0 completionHandler:0];

    return (*(v4 + 8))(v6, v3);
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1D132BC94()
{
  v1 = OBJC_IVAR____TtC15HealthRecordsUI17AccountSourceCell____lazy_storage___stackView;
  v2 = *(v0 + OBJC_IVAR____TtC15HealthRecordsUI17AccountSourceCell____lazy_storage___stackView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC15HealthRecordsUI17AccountSourceCell____lazy_storage___stackView);
  }

  else
  {
    v4 = sub_1D132BCF4();
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_1D132BCF4()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E69DCF90]) init];
  [v0 setTranslatesAutoresizingMaskIntoConstraints_];
  [v0 setAlignment_];
  [v0 setAxis_];
  [v0 setSpacing_];
  [v0 setBaselineRelativeArrangement_];
  [v0 setLayoutMarginsRelativeArrangement_];
  [v0 setPreservesSuperviewLayoutMargins_];

  return v0;
}

char *sub_1D132BDC8(double a1, double a2, double a3, double a4)
{
  v9 = &v4[OBJC_IVAR____TtC15HealthRecordsUI17AccountSourceCell_contentMargins];
  v10 = *MEMORY[0x1E69A4090];
  *v9 = 0x4034000000000000;
  *(v9 + 1) = v10;
  *(v9 + 2) = 0;
  *(v9 + 3) = v10;
  *&v4[OBJC_IVAR____TtC15HealthRecordsUI17AccountSourceCell____lazy_storage___logoView] = 0;
  *&v4[OBJC_IVAR____TtC15HealthRecordsUI17AccountSourceCell____lazy_storage___titleLabel] = 0;
  *&v4[OBJC_IVAR____TtC15HealthRecordsUI17AccountSourceCell____lazy_storage___subtitleLabel] = 0;
  *&v4[OBJC_IVAR____TtC15HealthRecordsUI17AccountSourceCell____lazy_storage___detailLabel] = 0;
  *&v4[OBJC_IVAR____TtC15HealthRecordsUI17AccountSourceCell____lazy_storage___webLinkButton] = 0;
  *&v4[OBJC_IVAR____TtC15HealthRecordsUI17AccountSourceCell____lazy_storage___stackView] = 0;
  v11 = OBJC_IVAR____TtC15HealthRecordsUI17AccountSourceCell_accountURL;
  v12 = sub_1D138D39C();
  (*(*(v12 - 8) + 56))(&v4[v11], 1, 1, v12);
  v13 = &v4[OBJC_IVAR____TtC15HealthRecordsUI17AccountSourceCell_item];
  v14 = type metadata accessor for AccountSourceCell();
  *v13 = 0u;
  *(v13 + 1) = 0u;
  *(v13 + 4) = 0;
  v34.receiver = v4;
  v34.super_class = v14;
  v15 = objc_msgSendSuper2(&v34, sel_initWithFrame_, a1, a2, a3, a4);
  v16 = objc_opt_self();
  v17 = v15;
  v18 = [v16 clearColor];
  [v17 setBackgroundColor_];

  v19 = sub_1D132BC94();
  v20 = sub_1D132B0C0();
  [v19 addArrangedSubview_];

  v21 = OBJC_IVAR____TtC15HealthRecordsUI17AccountSourceCell____lazy_storage___stackView;
  v22 = *&v17[OBJC_IVAR____TtC15HealthRecordsUI17AccountSourceCell____lazy_storage___stackView];
  v23 = sub_1D132B154();
  [v22 addArrangedSubview_];

  v24 = *&v17[v21];
  v25 = sub_1D132B2C0();
  [v24 addArrangedSubview_];

  v26 = *&v17[v21];
  v27 = sub_1D132B2CC();
  [v26 addArrangedSubview_];

  v28 = *&v17[v21];
  v29 = sub_1D132B440();
  [v28 addArrangedSubview_];

  [*&v17[v21] setDirectionalLayoutMargins_];
  v30 = [v17 contentView];

  [v30 addSubview_];
  v31 = *&v17[v21];
  v32 = [v17 contentView];
  [v31 hk:v32 alignConstraintsWithView:?];

  sub_1D132C154();
  return v17;
}

uint64_t sub_1D132C154()
{
  v0 = sub_1D132BC94();
  v1 = [v0 constraintsAffectingLayoutForAxis_];

  sub_1D106F934(0, &qword_1EC609690);
  v2 = sub_1D139045C();

  if (v2 >> 62)
  {
    result = sub_1D13910DC();
    if (result)
    {
      goto LABEL_3;
    }
  }

  else
  {
    result = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
LABEL_3:
      if ((v2 & 0xC000000000000001) != 0)
      {
        v4 = MEMORY[0x1D3886B70](0, v2);
      }

      else
      {
        if (!*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          return result;
        }

        v4 = *(v2 + 32);
      }

      v5 = v4;

      type metadata accessor for UILayoutPriority(0);
      sub_1D132D6F8(&qword_1EC60A508, 255, type metadata accessor for UILayoutPriority);
      v6 = v5;
      sub_1D138F0DC();
      LODWORD(v7) = v23;
      [v6 setPriority_];
      v22 = v6;

      goto LABEL_9;
    }
  }

  v22 = 0;
LABEL_9:
  sub_1D10A5C9C(0, &qword_1EE06A4C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D139E6F0;
  *(inited + 32) = sub_1D132B154();
  *(inited + 40) = sub_1D132B2C0();
  *(inited + 48) = sub_1D132B2CC();
  v9 = inited & 0xC000000000000001;
  if ((inited & 0xC000000000000001) != 0)
  {
    goto LABEL_20;
  }

  if (!*((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_19;
  }

  for (i = *(inited + 32); ; i = MEMORY[0x1D3886B70](0, inited))
  {
    v11 = i;
    type metadata accessor for UILayoutPriority(0);
    sub_1D132D6F8(&qword_1EC60A508, 255, type metadata accessor for UILayoutPriority);
    sub_1D138F0CC();
    LODWORD(v12) = v23;
    [v11 setContentCompressionResistancePriority:1 forAxis:v12];
    sub_1D138F0CC();
    LODWORD(v13) = v23;
    [v11 setContentHuggingPriority:1 forAxis:v13];

    if (v9)
    {
      v14 = MEMORY[0x1D3886B70](1, inited);
    }

    else
    {
      if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
      {
        goto LABEL_19;
      }

      v14 = *(inited + 40);
    }

    v15 = v14;
    type metadata accessor for UILayoutPriority(0);
    sub_1D132D6F8(&qword_1EC60A508, 255, type metadata accessor for UILayoutPriority);
    sub_1D138F0CC();
    LODWORD(v16) = v23;
    [v15 setContentCompressionResistancePriority:1 forAxis:v16];
    sub_1D138F0CC();
    LODWORD(v17) = v23;
    [v15 setContentHuggingPriority:1 forAxis:v17];

    if (v9)
    {
      break;
    }

    if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) >= 3uLL)
    {
      v18 = *(inited + 48);
      goto LABEL_18;
    }

LABEL_19:
    __break(1u);
LABEL_20:
    ;
  }

  v18 = MEMORY[0x1D3886B70](2, inited);
LABEL_18:
  v19 = v18;
  type metadata accessor for UILayoutPriority(0);
  sub_1D132D6F8(&qword_1EC60A508, 255, type metadata accessor for UILayoutPriority);
  sub_1D138F0CC();
  LODWORD(v20) = v23;
  [v19 setContentCompressionResistancePriority:1 forAxis:v20];
  sub_1D138F0CC();
  LODWORD(v21) = v23;
  [v19 setContentHuggingPriority:1 forAxis:v21];

  swift_setDeallocating();
  return swift_arrayDestroy();
}