uint64_t type metadata accessor for MedicationScanMultiResultsViewController()
{
  result = qword_27F464588;
  if (!qword_27F464588)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2518B923C()
{
  result = sub_2518EF648();
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

id sub_2518B9304()
{
  v1 = qword_27F464570;
  v2 = *(v0 + qword_27F464570);
  if (v2)
  {
    v3 = *(v0 + qword_27F464570);
  }

  else
  {
    v4 = sub_2518B9368(v0);
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

void *sub_2518B9368(uint64_t a1)
{
  v2 = sub_2518F0558();
  v3 = *(v2 - 8);
  v4 = (MEMORY[0x28223BE20])();
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v15 - v7;
  sub_2518F0508();
  v9 = sub_2518F0088();
  v10 = [objc_opt_self() systemImageNamed_];

  sub_2518F0538();
  sub_2518BC1A8(0, &qword_27F464670);
  (*(v3 + 16))(v6, v8, v2);
  v11 = sub_2518F0568();
  [v11 setTranslatesAutoresizingMaskIntoConstraints_];
  v12 = [v11 imageView];
  if (v12)
  {
    v13 = v12;
    [v12 setMaximumContentSizeCategory_];
  }

  [v11 addTarget:a1 action:sel_tapToRadarButtonTappedWithSender_ forControlEvents:64];
  (*(v3 + 8))(v8, v2);
  return v11;
}

id sub_2518B9564()
{
  v1 = qword_27F464578;
  v2 = *(v0 + qword_27F464578);
  if (v2)
  {
    v3 = *(v0 + qword_27F464578);
  }

  else
  {
    v4 = [objc_opt_self() effectWithStyle_];
    v5 = [objc_allocWithZone(MEMORY[0x277D75D68]) initWithEffect_];

    [v5 setTranslatesAutoresizingMaskIntoConstraints_];
    v6 = *(v0 + v1);
    *(v0 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

uint64_t sub_2518B9628()
{
  sub_2518F0278();
  sub_2518F0268();
  sub_2518F0218();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  return 2;
}

id sub_2518B96B0()
{
  v14.receiver = v0;
  v14.super_class = type metadata accessor for MedicationScanMultiResultsViewController();
  objc_msgSendSuper2(&v14, sel_viewDidLoad);
  swift_unknownObjectWeakAssign();
  result = [v0 view];
  if (result)
  {
    v2 = result;
    v3 = sub_2518B9564();
    [v2 insertSubview:v3 atIndex:0];

    v4 = *&v0[qword_27F464578];
    result = [v0 view];
    if (result)
    {
      v5 = result;
      [result bounds];
      v7 = v6;
      v9 = v8;
      v11 = v10;
      v13 = v12;

      [v4 setFrame_];
      sub_2518BA2F8();
      return sub_2518BA670();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_2518B9814(void *a1)
{
  sub_2518F0278();
  sub_2518F0268();
  sub_2518F0218();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4.receiver = a1;
  v4.super_class = type metadata accessor for MedicationScanMultiResultsViewController();
  v2 = a1;
  objc_msgSendSuper2(&v4, sel_viewDidLayoutSubviews);
  v3 = sub_2518B9E50();
  sub_2518B9FAC();
  [v3 setFrame_];
}

uint64_t sub_2518B98F4(void *a1)
{
  sub_2518BBFFC();
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2518F0278();
  sub_2518F0268();
  sub_2518F0218();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_2518EFC38();
  v7 = a1;
  result = sub_2518EF9C8();
  if (result)
  {
    sub_2518EF888();

    (*(v4 + 8))(v6, v3);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_2518B9A84(void *a1)
{
  sub_2518F0278();
  sub_2518F0268();
  sub_2518F0218();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = a1;
  sub_2518BA0CC(sub_2518C4E68, "[%{public}s] Primary button pressed without a delegate");
}

uint64_t sub_2518B9B5C()
{
  v1 = v0;
  swift_getObjectType();
  v2 = sub_2518EFAF8();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_2518C4CB4(v1);

    return swift_unknownObjectRelease();
  }

  else
  {
    sub_2518EFAD8();
    v7 = sub_2518EFAE8();
    v8 = sub_2518F0318();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v15 = v10;
      *v9 = 136446210;
      v11 = sub_2518F09F8();
      v13 = sub_2518EBED8(v11, v12, &v15);

      *(v9 + 4) = v13;
      _os_log_impl(&dword_2518B7000, v7, v8, "[%{public}s] Secondary button pressed without a delegate", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v10);
      MEMORY[0x253086D30](v10, -1, -1);
      MEMORY[0x253086D30](v9, -1, -1);
    }

    return (*(v3 + 8))(v5, v2);
  }
}

void sub_2518B9D84(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  sub_2518F0278();
  sub_2518F0268();
  sub_2518F0218();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v6 = a1;
  a4();
}

id sub_2518B9E50()
{
  sub_2518BC090();
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = qword_27F464580;
  v5 = *(v0 + qword_27F464580);
  if (v5)
  {
    v6 = *(v0 + qword_27F464580);
  }

  else
  {
    v7 = [objc_opt_self() buttonWithType_];
    [v7 setMaximumContentSizeCategory_];
    [v7 addTarget:v0 action:sel_onClose forControlEvents:64];
    sub_2518F0518();
    v8 = sub_2518F0558();
    (*(*(v8 - 8) + 56))(v3, 0, 1, v8);
    v9 = v0;
    sub_2518F0588();
    v10 = *(v0 + v4);
    *(v9 + v4) = v7;
    v6 = v7;

    v5 = 0;
  }

  v11 = v5;
  return v6;
}

id sub_2518B9FAC()
{
  sub_2518EF908();
  result = [v0 view];
  if (result)
  {
    v2 = result;
    [result bounds];
    v4 = v3;
    v6 = v5;
    v8 = v7;
    v10 = v9;

    v12.origin.x = v4;
    v12.origin.y = v6;
    v12.size.width = v8;
    v12.size.height = v10;
    CGRectGetWidth(v12);
    sub_2518EF8E8();
    result = [v0 view];
    if (result)
    {
      v11 = result;
      [result safeAreaInsets];

      sub_2518EF8F8();
      return sub_2518EF908();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_2518BA0CC(void (*a1)(void), const char *a2)
{
  swift_getObjectType();
  v4 = sub_2518EFAF8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (swift_unknownObjectWeakLoadStrong())
  {
    a1();

    return swift_unknownObjectRelease();
  }

  else
  {
    sub_2518EFAD8();
    v9 = sub_2518EFAE8();
    v10 = sub_2518F0318();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v17 = v12;
      *v11 = 136446210;
      v13 = sub_2518F09F8();
      v15 = sub_2518EBED8(v13, v14, &v17);

      *(v11 + 4) = v15;
      _os_log_impl(&dword_2518B7000, v9, v10, a2, v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v12);
      MEMORY[0x253086D30](v12, -1, -1);
      MEMORY[0x253086D30](v11, -1, -1);
    }

    return (*(v5 + 8))(v7, v4);
  }
}

void sub_2518BA2F8()
{
  v1 = v0;
  v2 = sub_2518EF878();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [v0 view];
  if (!v6)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v7 = v6;
  v8 = sub_2518B9E50();
  [v7 addSubview_];

  v9 = *&v1[qword_27F464580];
  sub_2518B9FAC();
  [v9 setFrame_];

  sub_2518EF868();
  LOBYTE(v8) = sub_2518EF858();
  (*(v3 + 8))(v5, v2);
  if ((v8 & 1) == 0)
  {
    return;
  }

  v10 = [v1 view];
  if (!v10)
  {
    goto LABEL_9;
  }

  v11 = v10;
  v12 = sub_2518B9304();
  [v11 addSubview_];

  sub_2518BC2E4(0, &qword_27F464660, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_2518F1430;
  v14 = qword_27F464570;
  v15 = [*&v1[qword_27F464570] topAnchor];
  v16 = [v1 view];
  if (!v16)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v17 = v16;
  v18 = [v16 safeAreaLayoutGuide];

  v19 = [v18 topAnchor];
  v20 = [v15 constraintEqualToAnchor:v19 constant:16.0];

  *(v13 + 32) = v20;
  v21 = [*&v1[v14] leadingAnchor];
  v22 = [v1 view];
  if (!v22)
  {
LABEL_11:
    __break(1u);
    return;
  }

  v23 = v22;
  v24 = objc_opt_self();
  v25 = [v23 leadingAnchor];

  v26 = [v21 constraintEqualToAnchor:v25 constant:16.0];
  *(v13 + 40) = v26;
  sub_2518BC1A8(0, &qword_27F464668);
  v27 = sub_2518F01A8();

  [v24 activateConstraints_];
}

uint64_t sub_2518BA670()
{
  sub_2518BC090();
  v1 = MEMORY[0x28223BE20](v0 - 8);
  v39 = v34 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v1);
  v4 = v34 - v3;
  v5 = sub_2518F04D8();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_2518F0558();
  v9 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v11 = v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27F464548 != -1)
  {
    swift_once();
  }

  v37 = qword_27F465030;
  sub_2518EF548();
  v12 = sub_2518F0088();

  v36 = *MEMORY[0x277D12788];
  v13 = sub_2518F00B8();
  v34[1] = "PBS_MULTI_RESULT_SECTION_HEADER";
  v35 = "SEARCH_BY_NAME_BUTTON_TITLE";
  v41 = v13;
  v42 = v14;

  MEMORY[0x253085E70](0xD000000000000029, 0x80000002518F5770);

  MEMORY[0x253085E70](0x7972616D6972502ELL, 0xEE006E6F74747542);

  v15 = sub_2518F0088();

  v16 = [v40 hxui:v12 addPrimaryFooterButtonWithTitle:v15 accessibilityIdentifier:?];

  sub_2518F0548();
  (*(v6 + 104))(v8, *MEMORY[0x277D74FD8], v5);
  sub_2518F04E8();
  v17 = objc_opt_self();
  v18 = [v17 tintColor];
  sub_2518F0528();
  v34[0] = v17;
  v19 = [v17 whiteColor];
  v20 = sub_2518F04C8();
  sub_2518EFB78();
  v20(&v41, 0);
  v21 = [objc_opt_self() configurationWithScale_];
  v22 = sub_2518F0088();
  v23 = [objc_opt_self() systemImageNamed:v22 withConfiguration:v21];

  sub_2518F0538();
  sub_2518F04F8();
  v24 = v38;
  (*(v9 + 16))(v4, v11, v38);
  (*(v9 + 56))(v4, 0, 1, v24);
  v25 = v16;
  sub_2518F0588();

  sub_2518EF548();
  v26 = sub_2518F0088();

  v41 = sub_2518F00B8();
  v42 = v27;

  MEMORY[0x253085E70](0xD000000000000029, v35 | 0x8000000000000000);

  MEMORY[0x253085E70](0xD000000000000010, 0x80000002518F57C0);

  v28 = sub_2518F0088();

  v29 = [v40 hxui:v26 addSecondaryFooterButtonWithTitle:0 bold:v28 accessibilityIdentifier:?];

  v30 = v29;
  v31 = v39;
  sub_2518F0578();
  if (!(*(v9 + 48))(v31, 1, v24))
  {
    v32 = [v34[0] whiteColor];
    sub_2518F0528();
  }

  sub_2518BC0E8(v31, v4);
  sub_2518F0588();

  [v40 setOverrideUserInterfaceStyle_];
  (*(v9 + 8))(v11, v24);
  return sub_2518BC14C(v31);
}

uint64_t sub_2518BACFC(void *a1)
{
  sub_2518F0278();
  sub_2518F0268();
  sub_2518F0218();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_unknownObjectRetain();
  v2 = a1;
  sub_2518F05F8();
  swift_unknownObjectRelease();
  if (qword_27F464550 != -1)
  {
    swift_once();
  }

  sub_2518D7D98(v7);
  v17 = v7[8];
  v18 = v7[9];
  v19 = v8;
  v13 = v7[4];
  v14 = v7[5];
  v15 = v7[6];
  v16 = v7[7];
  v9 = v7[0];
  v10 = v7[1];
  v11 = v7[2];
  v12 = v7[3];
  if (sub_2518BBF18(&v9) == 1)
  {
    _s25HealthMedicationsVisionUI0C10TapToRadarC19medicationsTracking14viewControllerySo06UIViewK0C_tFZ_0(v2);

    __swift_destroy_boxed_opaque_existential_0(v6);
  }

  else
  {
    v4[8] = v17;
    v4[9] = v18;
    v5 = v19;
    v4[4] = v13;
    v4[5] = v14;
    v4[6] = v15;
    v4[7] = v16;
    v4[0] = v9;
    v4[1] = v10;
    v4[2] = v11;
    v4[3] = v12;
    _s25HealthMedicationsVisionUI0C10TapToRadarC8scanning0H7Session14viewControlleryAA08ScanningI0V_So06UIViewK0CtFZ_0(v4, v2);

    __swift_destroy_boxed_opaque_existential_0(v6);
    sub_2518BBF7C(v7);
  }
}

void sub_2518BAEDC()
{
  v1 = qword_27F464FD8;
  v2 = sub_2518EF648();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_2518BC068(v0 + qword_27F464FE0);
  v3 = *(v0 + qword_27F464580);
}

id sub_2518BAFB4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MedicationScanMultiResultsViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_2518BAFEC(uint64_t a1)
{
  v2 = qword_27F464FD8;
  v3 = sub_2518EF648();
  (*(*(v3 - 8) + 8))(a1 + v2, v3);

  sub_2518BC068(a1 + qword_27F464FE0);
  v4 = *(a1 + qword_27F464580);
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_2518BB108(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2518BB128(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 32) = v3;
  return result;
}

uint64_t sub_2518BB258@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2518F00B8();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_2518BB284(uint64_t a1, id *a2)
{
  result = sub_2518F0098();
  *a2 = 0;
  return result;
}

uint64_t sub_2518BB2FC(uint64_t a1, id *a2)
{
  v3 = sub_2518F00A8();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_2518BB37C@<X0>(uint64_t *a1@<X8>)
{
  sub_2518F00B8();
  v2 = sub_2518F0088();

  *a1 = v2;
  return result;
}

uint64_t sub_2518BB3D4(uint64_t a1)
{
  v2 = sub_2518BB520(&qword_27F464638, type metadata accessor for VNBarcodeSymbology);
  v3 = sub_2518BB520(&qword_27F464640, type metadata accessor for VNBarcodeSymbology);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_2518BB520(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2518BB568(uint64_t a1)
{
  v2 = sub_2518BB520(&qword_27F4646B0, type metadata accessor for Key);
  v3 = sub_2518BB520(&qword_27F4646B8, type metadata accessor for Key);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_2518BB624(uint64_t a1)
{
  v2 = sub_2518BB520(&qword_27F464628, type metadata accessor for FileAttributeKey);
  v3 = sub_2518BB520(&qword_27F464630, type metadata accessor for FileAttributeKey);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_2518BB6E0@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_2518F0088();

  *a1 = v2;
  return result;
}

uint64_t sub_2518BB728(uint64_t a1)
{
  v2 = sub_2518BB520(&qword_27F464618, type metadata accessor for FileProtectionType);
  v3 = sub_2518BB520(&qword_27F464620, type metadata accessor for FileProtectionType);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_2518BB7E4()
{
  v0 = sub_2518F00B8();
  v1 = MEMORY[0x253085E90](v0);

  return v1;
}

uint64_t sub_2518BB820()
{
  sub_2518F00B8();
  sub_2518F0148();
}

uint64_t sub_2518BB874()
{
  sub_2518F00B8();
  sub_2518F0978();
  sub_2518F0148();
  v0 = sub_2518F09A8();

  return v0;
}

uint64_t sub_2518BBA50()
{
  v0 = sub_2518F00B8();
  v2 = v1;
  if (v0 == sub_2518F00B8() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_2518F0918();
  }

  return v5 & 1;
}

id sub_2518BBB68(void *a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_2518EF648();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v4 + qword_27F464FE0 + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v4 + qword_27F464570) = 0;
  *(v4 + qword_27F464578) = 0;
  *(v4 + qword_27F464580) = 0;
  *(v4 + qword_27F464558) = a1;
  *(v4 + qword_27F464560) = a2;
  v12 = *(v9 + 16);
  v12(v4 + qword_27F464FD8, a3, v8);
  v12(v11, a3, v8);
  objc_allocWithZone(type metadata accessor for ScanResultSelectionViewController());
  v13 = sub_2518C9BB8(a1, a2, v11);
  *(v4 + qword_27F464568) = v13;
  v14 = qword_27F464548;
  v15 = v13;
  if (v14 != -1)
  {
    swift_once();
  }

  sub_2518EF548();
  v16 = v15;
  v17 = sub_2518EF968();
  sub_2518EF9A8();
  v18 = sub_2518EF828();

  [v18 registerObserver_];

  [v17 setModalTransitionStyle_];
  [v17 setModalPresentationStyle_];
  result = [v17 view];
  if (result)
  {
    v20 = result;
    v21 = objc_opt_self();
    v22 = [v21 clearColor];
    [v20 setBackgroundColor_];

    v23 = [v17 contentView];
    v24 = [v21 clearColor];
    [v23 setBackgroundColor_];

    [v17 setOverrideUserInterfaceStyle_];
    (*(v9 + 8))(a3, v8);
    return v17;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2518BBF18(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t __swift_destroy_boxed_opaque_existential_0(uint64_t a1)
{
  v1 = *(*(a1 + 24) - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t sub_2518BBF7C(uint64_t a1)
{
  sub_2518BC2E4(0, &qword_27F464648, &type metadata for ScanningSession, MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_2518BBFFC()
{
  if (!qword_27F464650)
  {
    v0 = sub_2518EFC48();
    if (!v1)
    {
      atomic_store(v0, &qword_27F464650);
    }
  }
}

void sub_2518BC090()
{
  if (!qword_27F464658)
  {
    sub_2518F0558();
    v0 = sub_2518F05D8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F464658);
    }
  }
}

uint64_t sub_2518BC0E8(uint64_t a1, uint64_t a2)
{
  sub_2518BC090();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2518BC14C(uint64_t a1)
{
  sub_2518BC090();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2518BC1A8(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_2518BC24C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2518BC26C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 16) = v3;
  return result;
}

void sub_2518BC2E4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_2518BC43C()
{
  sub_2518BC1A8(0, &qword_27F4648D0);
  result = sub_2518F05C8();
  qword_27F4646C0 = result;
  return result;
}

id PillBottleScanningLog.getter()
{
  if (qword_27F464540 != -1)
  {
    swift_once();
  }

  v1 = qword_27F4646C0;

  return v1;
}

uint64_t sub_2518BC550(uint64_t a1, uint64_t a2)
{
  v4 = v2 + qword_27F4646C8;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_2518BC5BC(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = qword_27F4646C8;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_2518BC65C;
}

void sub_2518BC65C(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + *(*a1 + 48) + 8) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

uint64_t sub_2518BC6E4()
{
  v27 = sub_2518EFF98();
  v0 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v2 = &v26 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = MEMORY[0x277CE30D8];
  v4 = MEMORY[0x277D83D88];
  sub_2518C70A4(0, &qword_27F4646D0, MEMORY[0x277CE30D8], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v26 - v6;
  v8 = MEMORY[0x277D84560];
  sub_2518C70A4(0, &qword_27F4646D8, MEMORY[0x277CE30B0], MEMORY[0x277D84560]);
  sub_2518EFF58();
  v9 = swift_allocObject();
  v26 = xmmword_2518F1C30;
  *(v9 + 16) = xmmword_2518F1C30;
  v10 = sub_2518EFFC8();
  v11 = *(*(v10 - 8) + 56);
  v28 = 1;
  v11(v7, 1, 1, v10);
  sub_2518EFF38();
  sub_2518C5530(v7, &qword_27F4646D0, v3, v4, sub_2518C70A4);
  sub_2518C70A4(0, &qword_27F4646E0, type metadata accessor for VNBarcodeSymbology, v8);
  v12 = swift_allocObject();
  *(v12 + 16) = v26;
  v13 = *MEMORY[0x277CE2E90];
  v14 = *MEMORY[0x277CE2E98];
  *(v12 + 32) = *MEMORY[0x277CE2E90];
  *(v12 + 40) = v14;
  v15 = v13;
  v16 = v14;
  sub_2518EFF48();

  sub_2518C4F90(v9);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  (*(v0 + 104))(v2, *MEMORY[0x277CE30C8], v27);
  v17 = objc_opt_self();
  if ([v17 isAppleInternalInstall])
  {
    v18 = [objc_opt_self() standardUserDefaults];
    sub_2518F0128();
    v19 = sub_2518F0088();

    v20 = [v18 BOOLForKey_];

    v28 = v20 ^ 1;
  }

  if ([v17 isAppleInternalInstall])
  {
    v21 = [objc_opt_self() standardUserDefaults];
    sub_2518F0128();
    v22 = sub_2518F0088();

    [v21 BOOLForKey_];
  }

  v23 = objc_allocWithZone(sub_2518F0038());
  v24 = sub_2518EFF68();
  sub_2518C75DC(&qword_27F4646E8, type metadata accessor for MedicationDataScannerViewController);
  swift_unknownObjectRetain();
  sub_2518F0028();
  sub_2518C75DC(&qword_27F4646F0, type metadata accessor for MedicationDataScannerViewController);
  swift_unknownObjectRetain();
  sub_2518EFFD8();
  sub_2518EFFF8();
  sub_2518F0018();
  return v24;
}

id sub_2518BCC00()
{
  v1 = qword_27F4646F8;
  v2 = *(v0 + qword_27F4646F8);
  if (v2)
  {
    v3 = *(v0 + qword_27F4646F8);
  }

  else
  {
    v4 = [objc_allocWithZone(type metadata accessor for MedicationDataScannerRegionOfInterestOverlay()) initWithFrame_];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_2518BCC84()
{
  v1 = qword_27F464780;
  v2 = *(v0 + qword_27F464780);
  if (v2)
  {
    v3 = *(v0 + qword_27F464780);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x277D757B8]) init];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id MedicationDataScannerViewController.__allocating_init(healthStore:analyticsContext:)(void *a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = sub_2518C52F0(a1, a2);

  return v6;
}

id MedicationDataScannerViewController.init(healthStore:analyticsContext:)(void *a1, uint64_t a2)
{
  v3 = sub_2518C52F0(a1, a2);

  return v3;
}

void sub_2518BCD78(uint64_t a1, uint64_t a2, void *a3)
{
  sub_2518F0278();
  sub_2518F0268();
  sub_2518F0218();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = a3;
  sub_2518C5590();
}

id static MedicationDataScannerViewController.supportsDataScanning.getter()
{
  result = [objc_opt_self() sharedBehavior];
  if (result)
  {
    v1 = result;
    v2 = [result isiPad];

    if ((v2 & 1) != 0 || (sub_2518EF708() & 1) == 0)
    {
      return 0;
    }

    else
    {
      sub_2518F0038();
      return (sub_2518EFF88() & 1);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_2518BCEA8(void *a1)
{
  sub_2518F0278();
  sub_2518F0268();
  sub_2518F0218();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = a1;
  v3 = sub_2518BCC84();
  [v3 prepare];

  v4.receiver = v2;
  v4.super_class = type metadata accessor for MedicationDataScannerViewController();
  objc_msgSendSuper2(&v4, sel_viewDidLoad);
  sub_2518BD298();
}

uint64_t sub_2518BCF80()
{
  sub_2518EF918();
  v0 = sub_2518EF928();
  if ((v0() & 1) == 0)
  {
    return 0;
  }

  v1 = [objc_opt_self() standardUserDefaults];
  sub_2518F0138();
  v2 = sub_2518F0088();

  v3 = [v1 BOOLForKey_];

  return v3 ^ 1;
}

void sub_2518BD038()
{
  v1 = v0;
  v22.receiver = v0;
  v22.super_class = type metadata accessor for MedicationDataScannerViewController();
  objc_msgSendSuper2(&v22, sel_viewDidLayoutSubviews);
  v2 = sub_2518BCC00();
  v3 = sub_2518EF8B8();
  v4 = sub_2518EFF78();

  [v4 bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  [v2 setFrame_];
  v13 = sub_2518EF8B8();
  v14 = *&v1[qword_27F4646F8];
  v15 = sub_2518D17C0();
  v17 = v16;
  v19 = v18;
  v21 = v20;

  v23 = v15;
  v24 = v17;
  v25 = v19;
  v26 = v21;
  v27 = 0;
  sub_2518EFFE8();
}

uint64_t sub_2518BD168(void *a1, uint64_t a2, uint64_t a3)
{
  sub_2518F0278();
  sub_2518F0268();
  sub_2518F0218();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v10.receiver = a1;
  v10.super_class = type metadata accessor for MedicationDataScannerViewController();
  v5 = a1;
  objc_msgSendSuper2(&v10, sel_viewDidDisappear_, a3);
  v6 = qword_27F464700;
  v7 = *&v5[qword_27F464700];
  if (v7)
  {

    sub_2518EF6B8();
    [*(v7 + 64) invalidate];
    v8 = *(v7 + 64);
    *(v7 + 64) = 0;

    sub_2518EF6C8();
  }

  *&v5[v6] = 0;
}

void sub_2518BD298()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v2 = sub_2518EFE78();
  v48 = *(v2 - 8);
  v49 = v2;
  MEMORY[0x28223BE20](v2);
  v47 = &v43 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = MEMORY[0x277D85248];
  v43 = MEMORY[0x277D83D88];
  sub_2518C70A4(0, &qword_27F464808, MEMORY[0x277D85248], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v43 - v5;
  sub_2518C7390();
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v11 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2518C7424();
  v45 = v12;
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_2518BCC00();
  v17 = sub_2518EF8B8();
  v18 = sub_2518EFF78();

  [v18 bounds];
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;

  [v16 setFrame_];
  v27 = sub_2518EF8B8();
  v28 = sub_2518EFF78();

  v29 = *(v1 + qword_27F4646F8);
  v30 = sub_2518EF8C8();
  [v28 insertSubview:v29 belowSubview:v30];

  v50 = *(v1 + qword_27F464718);
  sub_2518C6400();
  sub_2518C75DC(&qword_27F464898, sub_2518C6400);
  sub_2518EFE38();
  sub_2518BC1A8(0, &qword_27F464820);
  v31 = sub_2518F0378();
  v50 = v31;
  v32 = sub_2518F0368();
  (*(*(v32 - 8) + 56))(v6, 1, 1, v32);
  sub_2518C75DC(&qword_27F4648A8, sub_2518C7390);
  sub_2518C67D0();
  sub_2518EFE18();
  sub_2518C5530(v6, &qword_27F464808, v44, v43, sub_2518C70A4);

  (*(v9 + 8))(v11, v8);
  v33 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v34 = swift_allocObject();
  v35 = ObjectType;
  *(v34 + 16) = v33;
  *(v34 + 24) = v35;
  sub_2518C75DC(&qword_27F4648B0, sub_2518C7424);
  v36 = v45;
  v37 = sub_2518EFE58();

  (*(v13 + 8))(v15, v36);
  *(v1 + qword_27F464778) = v37;

  v38 = *(v1 + qword_27F464730);
  v40 = v47;
  v39 = v48;
  v41 = v49;
  (*(v48 + 104))(v47, *MEMORY[0x277D851D0], v49);
  v42 = sub_2518F0398();
  (*(v39 + 8))(v40, v41);
  [v38 registerObserver:v1 queue:v42];

  sub_2518BDB4C();
}

void sub_2518BD880(unsigned __int8 *a1)
{
  v2 = sub_2518EFAF8();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *a1;
  sub_2518F0278();
  sub_2518F0268();
  sub_2518F0218();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_2518EFAD8();
  v7 = sub_2518EFAE8();
  v8 = sub_2518F0328();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v22 = v3;
    v23[0] = v10;
    v11 = v10;
    *v9 = 136315394;
    v12 = sub_2518F09F8();
    v14 = sub_2518EBED8(v12, v13, v23);
    v21 = v2;
    v15 = v6;
    v16 = v14;

    *(v9 + 4) = v16;
    *(v9 + 12) = 1024;
    *(v9 + 14) = v15;
    _os_log_impl(&dword_2518B7000, v7, v8, "[%s] Updating primary button state to assetReady: %{BOOL}d", v9, 0x12u);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x253086D30](v11, -1, -1);
    MEMORY[0x253086D30](v9, -1, -1);

    (*(v22 + 8))(v5, v21);
  }

  else
  {

    (*(v3 + 8))(v5, v2);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v18 = Strong, v19 = sub_2518EF898(), v18, v19))
  {
    sub_2518EFA38();
    if (swift_dynamicCastClass())
    {
      sub_2518EFA08();
    }
  }

  else
  {
  }
}

void sub_2518BDB4C()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_2518EFAF8();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2518EFAC8();
  v7 = sub_2518EFAE8();
  v8 = sub_2518F0328();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    aBlock[0] = v10;
    *v9 = 136446210;
    v11 = sub_2518F09F8();
    v18 = v3;
    v13 = sub_2518EBED8(v11, v12, aBlock);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_2518B7000, v7, v8, "[%{public}s] Marking vision shards as required.", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x253086D30](v10, -1, -1);
    MEMORY[0x253086D30](v9, -1, -1);

    (*(v4 + 8))(v6, v18);
  }

  else
  {

    (*(v4 + 8))(v6, v3);
  }

  v14 = *(v1 + qword_27F464730);
  v15 = swift_allocObject();
  *(v15 + 16) = ObjectType;
  aBlock[4] = sub_2518C7540;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2518E64AC;
  aBlock[3] = &block_descriptor_122;
  v16 = _Block_copy(aBlock);

  [v14 markMedsScanningShardAsRequiredWithCompletion_];
  _Block_release(v16);
}

uint64_t sub_2518BDDD4(int a1)
{
  v2 = v1;
  sub_2518C70A4(0, &qword_27F464808, MEMORY[0x277D85248], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v37 - v5;
  sub_2518C6838(0, &qword_27F464810, &type metadata for MedicationDataScanningCoordinatorState, MEMORY[0x277CBCEC0]);
  v8 = *(v7 - 8);
  v42 = v7;
  v43 = v8;
  MEMORY[0x28223BE20](v7);
  v10 = &v37 - v9;
  sub_2518C6694();
  v44 = *(v11 - 8);
  v45 = v11;
  MEMORY[0x28223BE20](v11);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = sub_2518EFAB8();
  v14 = *(v48 - 8);
  v15 = MEMORY[0x28223BE20](v48);
  v40 = v16;
  v41 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v18 = &v37 - v17;
  v46 = qword_27F464770;
  if (*&v1[qword_27F464770])
  {

    sub_2518EFCE8();
  }

  v19 = qword_27F464700;
  v20 = *&v1[qword_27F464700];
  if (v20)
  {

    sub_2518EF6B8();
    [*(v20 + 64) invalidate];
    v21 = *(v20 + 64);
    *(v20 + 64) = 0;

    sub_2518EF6C8();
  }

  v47 = v14;
  *&v1[v19] = 0;

  type metadata accessor for MedicationDataScanningCoordinator();
  swift_allocObject();
  *&v1[v19] = sub_2518E65B8();

  swift_unknownObjectWeakAssign();

  if (qword_27F464540 != -1)
  {
    swift_once();
  }

  v22 = qword_27F4646C0;
  v23 = v1;
  sub_2518EFAA8();
  if (*&v1[v19])
  {
    swift_beginAccess();
    sub_2518C6838(0, &qword_27F464838, &type metadata for MedicationDataScanningCoordinatorState, MEMORY[0x277CBCED0]);
    v39 = a1;

    v38 = v18;
    v24 = v10;
    sub_2518EFDA8();
    swift_endAccess();

    sub_2518BC1A8(0, &qword_27F464820);
    v25 = sub_2518F0378();
    *&v49 = v25;
    v26 = sub_2518F0368();
    (*(*(v26 - 8) + 56))(v6, 1, 1, v26);
    sub_2518C6754();
    sub_2518C67D0();
    v27 = v42;
    sub_2518EFE18();
    sub_2518C5530(v6, &qword_27F464808, MEMORY[0x277D85248], MEMORY[0x277D83D88], sub_2518C70A4);

    (*(v43 + 8))(v24, v27);
    v28 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v30 = v47;
    v29 = v48;
    v31 = v41;
    v18 = v38;
    (*(v47 + 16))(v41, v38, v48);
    v32 = (*(v30 + 80) + 24) & ~*(v30 + 80);
    v33 = swift_allocObject();
    *(v33 + 16) = v28;
    (*(v30 + 32))(v33 + v32, v31, v29);
    sub_2518C75DC(&qword_27F464840, sub_2518C6694);
    v34 = v45;
    v35 = sub_2518EFE58();
    LOBYTE(a1) = v39;

    (*(v44 + 8))(v13, v34);
  }

  else
  {
    v35 = 0;
    v30 = v47;
    v29 = v48;
  }

  *&v2[v46] = v35;

  if ((a1 & 1) != 0 && *&v2[v19])
  {

    sub_2518E6C9C(1);
    swift_getKeyPath();
    swift_getKeyPath();
    v49 = xmmword_2518F1C40;
    v50 = 2;
    sub_2518EFDC8();
  }

  return (*(v30 + 8))(v18, v29);
}

void sub_2518BE4B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v80 = a3;
  sub_2518C70A4(0, &qword_27F464848, MEMORY[0x277D85720], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v4 - 8);
  v78 = &v72 - v5;
  v6 = sub_2518EF618();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v72 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2518EF648();
  v83 = *(v10 - 8);
  v84 = v10;
  v11 = *(v83 + 64);
  v12 = MEMORY[0x28223BE20](v10);
  v79 = &v72 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v12);
  v15 = &v72 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v72 - v16;
  v18 = *(a1 + 8);
  *&v82 = *a1;
  *(&v82 + 1) = v18;
  LODWORD(v81) = *(a1 + 16);
  v19 = sub_2518F0278();
  v85 = sub_2518F0268();
  v77 = v19;
  sub_2518F0218();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_35;
  }

  v21 = Strong;
  v22 = *(Strong + qword_27F464700);
  if (!v22)
  {
LABEL_23:

    return;
  }

  v24 = v83;
  v23 = v84;
  v73 = *(v83 + 16);
  v74 = v83 + 16;
  v73(v15, v22 + OBJC_IVAR____TtC25HealthMedicationsVisionUI33MedicationDataScanningCoordinator_sessionId, v84);
  v25 = v24 + 32;
  v26 = *(v24 + 32);
  v27 = v17;
  v75 = v26;
  v76 = v25;
  v26(v17, v15, v23);
  if (qword_27F464550 != -1)
  {
    swift_once();
  }

  v28 = qword_27F464B60;
  sub_2518EF608();
  sub_2518EF5D8();
  v30 = v29;
  (*(v7 + 8))(v9, v6);
  sub_2518EF6B8();
  if ([objc_opt_self() isAppleInternalInstall])
  {
    v31 = OBJC_IVAR____TtC25HealthMedicationsVisionUI21ScanningSessionLogger_sessions;
    swift_beginAccess();
    v32 = *(v28 + v31);
    if (*(v32 + 16))
    {

      v33 = sub_2518DDDCC(v17);
      if (v34)
      {
        v35 = *(v32 + 56) + 168 * v33;
        v37 = *(v35 + 16);
        v36 = *(v35 + 32);
        v88 = *v35;
        v89 = v37;
        v90 = v36;
        v38 = *(v35 + 48);
        v39 = *(v35 + 64);
        v40 = *(v35 + 80);
        v94 = *(v35 + 96);
        v92 = v39;
        v93 = v40;
        v91 = v38;
        v41 = *(v35 + 112);
        v42 = *(v35 + 128);
        v43 = *(v35 + 144);
        *&v96[2] = *(v35 + 160);
        v96[0] = v42;
        v96[1] = v43;
        v95 = v41;
        sub_2518C6E30(&v88, v98);

        v96[8] = v92;
        v96[9] = v93;
        v96[10] = v94;
        v97 = v95;
        v99 = v95;
        v96[4] = v88;
        v96[5] = v89;
        v96[6] = v90;
        v96[7] = v91;
        v87 = 0;
        v98[2] = v90;
        v98[3] = v91;
        v98[0] = v88;
        v98[1] = v89;
        v98[5] = v93;
        v98[6] = v94;
        v98[4] = v92;
        v100 = v30;
        v101 = 0;
        v102 = *(v96 + 1);
        *(v103 + 15) = *&v96[2];
        v103[0] = *(&v96[1] + 1);
        swift_beginAccess();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v86 = *(v28 + v31);
        *(v28 + v31) = 0x8000000000000000;
        sub_2518DF024(v98, v17, isUniquelyReferenced_nonNull_native);
        *(v28 + v31) = v86;
        swift_endAccess();
      }

      else
      {
      }
    }
  }

  sub_2518EF6C8();
  if (!v81)
  {
    sub_2518F03A8();
    if (qword_27F464540 != -1)
    {
      swift_once();
    }

    sub_2518EFA98();
    v58 = sub_2518BCC84();
    [v58 notificationOccurred_];

    v59 = sub_2518EF8B8();
    sub_2518EFFA8();

    v60 = sub_2518BCC00();
    v61 = v79;
    v62 = v84;
    v73(v79, v17, v84);
    v63 = v83;
    v64 = (*(v83 + 80) + 32) & ~*(v83 + 80);
    v65 = v27;
    v66 = swift_allocObject();
    v67 = v82;
    *(v66 + 16) = v21;
    *(v66 + 24) = v67;
    v75(v66 + v64, v61, v62);
    v68 = v21;
    sub_2518C6DD4(v67, *(&v82 + 1), 0);
    sub_2518D2608(sub_2518C6D70, v66, 0.8);

    (*(v63 + 8))(v65, v62);
    goto LABEL_35;
  }

  if (v81 == 1)
  {

    sub_2518F03A8();
    if (qword_27F464540 != -1)
    {
      swift_once();
    }

    sub_2518EFA98();
    v45 = sub_2518BCC84();
    [v45 notificationOccurred_];

    v46 = sub_2518EF8B8();
    sub_2518EFFA8();

    v47 = sub_2518F0298();
    (*(*(v47 - 8) + 56))(v78, 1, 1, v47);
    v48 = v79;
    v49 = v84;
    v73(v79, v17, v84);
    v50 = v21;
    v81 = v17;
    v51 = v50;
    v52 = v82;
    v53 = sub_2518F0268();
    v54 = v83;
    v55 = (*(v83 + 80) + 56) & ~*(v83 + 80);
    v56 = swift_allocObject();
    v56[2] = v53;
    v56[3] = MEMORY[0x277D85700];
    v56[4] = v51;
    v57 = *(&v82 + 1);
    v56[5] = v52;
    v56[6] = v57;
    v75(v56 + v55, v48, v49);
    sub_2518E61F4(0, 0, v78, &unk_2518F1E40, v56);

    (*(v54 + 8))(v81, v49);
    goto LABEL_35;
  }

  if (v82 > 1)
  {
    if (v82 ^ 2 | *(&v82 + 1))
    {
      sub_2518F03A8();
      if (qword_27F464540 != -1)
      {
        swift_once();
      }

      sub_2518EFA98();
      v70 = sub_2518BCC84();
      [v70 notificationOccurred_];

      v71 = sub_2518EF8B8();
      sub_2518EFFA8();

      sub_2518C17EC();
    }

    else
    {
      sub_2518F03C8();
      if (qword_27F464540 != -1)
      {
        swift_once();
      }

      sub_2518EFA98();
      v69 = sub_2518EF8B8();
      sub_2518EFFA8();

      sub_2518EF8D8();
    }
  }

  else
  {
    if (v82 == 0)
    {
      (*(v83 + 8))(v17, v84);
      goto LABEL_23;
    }

    sub_2518F03B8();
    if (qword_27F464540 != -1)
    {
      swift_once();
    }

    sub_2518EFA98();
    sub_2518C0BA8();
  }

  (*(v83 + 8))(v17, v84);
LABEL_35:
}

uint64_t sub_2518BEF38(void *a1, void *a2, uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  v7 = a1;
  sub_2518C215C(a2, a3, sub_2518C6E8C, v6);
}

uint64_t sub_2518BEFCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[116] = a7;
  v7[115] = a6;
  v7[114] = a5;
  v7[113] = a4;
  v8 = sub_2518EF648();
  v7[117] = v8;
  v9 = *(v8 - 8);
  v7[118] = v9;
  v7[119] = *(v9 + 64);
  v7[120] = swift_task_alloc();
  v10 = sub_2518EFEB8();
  v7[121] = v10;
  v7[122] = *(v10 - 8);
  v7[123] = swift_task_alloc();
  v7[124] = swift_task_alloc();
  v11 = sub_2518EFE68();
  v7[125] = v11;
  v7[126] = *(v11 - 8);
  v7[127] = swift_task_alloc();
  v12 = sub_2518EFE98();
  v7[128] = v12;
  v7[129] = *(v12 - 8);
  v7[130] = swift_task_alloc();
  v13 = sub_2518EF618();
  v7[131] = v13;
  v7[132] = *(v13 - 8);
  v7[133] = swift_task_alloc();
  sub_2518C6EE0();
  v7[134] = v14;
  v7[135] = *(v14 - 8);
  v7[136] = swift_task_alloc();
  v15 = sub_2518EFAF8();
  v7[137] = v15;
  v7[138] = *(v15 - 8);
  v7[139] = swift_task_alloc();
  v7[140] = swift_task_alloc();
  sub_2518F0278();
  v7[141] = sub_2518F0268();
  v17 = sub_2518F0218();
  v7[142] = v17;
  v7[143] = v16;

  return MEMORY[0x2822009F8](sub_2518BF318, v17, v16);
}

uint64_t sub_2518BF318()
{
  sub_2518EFAC8();
  v1 = sub_2518EFAE8();
  v2 = sub_2518F0328();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 134217984;
    *(v3 + 4) = 0x3FECCCCCC0000000;
    _os_log_impl(&dword_2518B7000, v1, v2, "LCS filtering criterion: %f", v3, 0xCu);
    MEMORY[0x253086D30](v3, -1, -1);
  }

  v4 = v0[140];
  v5 = v0[138];
  v6 = v0[137];
  v15 = v0[136];
  v7 = v0[135];
  v14 = v0[134];
  v16 = v0[114];
  v8 = v0[113];

  v9 = *(v5 + 8);
  v0[144] = v9;
  v0[145] = (v5 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v9(v4, v6);
  v10 = *(v8 + qword_27F464738);
  v11 = sub_2518F02D8();
  v0[146] = v11;
  v0[2] = v0;
  v0[7] = v0 + 108;
  v0[3] = sub_2518BF600;
  swift_continuation_init();
  v0[80] = v14;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v0 + 77);
  sub_2518BC1A8(0, &qword_27F464858);
  sub_2518C6F60();
  sub_2518F0228();
  (*(v7 + 32))(boxed_opaque_existential_0, v15, v14);
  v0[73] = MEMORY[0x277D85DD0];
  v0[74] = 1107296256;
  v0[75] = sub_2518E6154;
  v0[76] = &block_descriptor_59;
  [v10 filter:v16 transcripts:v11 criterion:10 limit:COERCE_DOUBLE(1063675494) completionHandler:?];
  (*(v7 + 8))(boxed_opaque_existential_0, v14);

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_2518BF600()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 1176) = v2;
  v3 = *(v1 + 1144);
  v4 = *(v1 + 1136);
  if (v2)
  {
    v5 = sub_2518C00B8;
  }

  else
  {
    v5 = sub_2518BF730;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_2518BF730()
{
  v1 = *(v0 + 1168);

  v2 = *(v0 + 864);

  if (qword_27F464550 != -1)
  {
    swift_once();
  }

  v3 = *(v0 + 1064);
  v4 = *(v0 + 1056);
  v5 = *(v0 + 1048);
  v6 = qword_27F464B60;
  sub_2518EF608();
  sub_2518EF5D8();
  v8 = v7;
  (*(v4 + 8))(v3, v5);
  sub_2518EF6B8();
  if ([objc_opt_self() isAppleInternalInstall])
  {
    v9 = OBJC_IVAR____TtC25HealthMedicationsVisionUI21ScanningSessionLogger_sessions;
    swift_beginAccess();
    v10 = *(v6 + v9);
    if (*(v10 + 16))
    {
      v11 = *(v0 + 928);

      v12 = sub_2518DDDCC(v11);
      if (v13)
      {
        v14 = *(v0 + 928);
        v15 = *(v10 + 56) + 168 * v12;
        v17 = *(v15 + 16);
        v16 = *(v15 + 32);
        *(v0 + 248) = *v15;
        *(v0 + 264) = v17;
        *(v0 + 280) = v16;
        v18 = *(v15 + 96);
        v20 = *(v15 + 48);
        v19 = *(v15 + 64);
        *(v0 + 328) = *(v15 + 80);
        *(v0 + 344) = v18;
        *(v0 + 296) = v20;
        *(v0 + 312) = v19;
        v22 = *(v15 + 128);
        v21 = *(v15 + 144);
        v23 = *(v15 + 112);
        *(v0 + 408) = *(v15 + 160);
        *(v0 + 376) = v22;
        *(v0 + 392) = v21;
        *(v0 + 360) = v23;
        sub_2518C6E30(v0 + 248, v0 + 416);

        v70 = *(v0 + 264);
        v24 = *(v0 + 280);
        v71 = *(v0 + 296);
        v25 = *(v0 + 312);
        v72 = *(v0 + 328);
        v26 = *(v0 + 344);
        *(v0 + 80) = *(v0 + 248);
        *(v0 + 96) = v70;
        *(v0 + 112) = v24;
        *(v0 + 128) = v71;
        *(v0 + 144) = v25;
        *(v0 + 160) = v72;
        *(v0 + 176) = v26;
        *(v0 + 184) = v8;
        *(v0 + 192) = 0;
        v27 = *(v0 + 361);
        *(v0 + 209) = *(v0 + 377);
        *(v0 + 193) = v27;
        *(v0 + 240) = *(v0 + 408);
        *(v0 + 225) = *(v0 + 393);
        swift_beginAccess();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v73 = *(v6 + v9);
        *(v6 + v9) = 0x8000000000000000;
        sub_2518DF024(v0 + 80, v14, isUniquelyReferenced_nonNull_native);
        *(v6 + v9) = v73;
        swift_endAccess();
      }

      else
      {
      }
    }
  }

  sub_2518EF6C8();
  sub_2518D9168(*(v0 + 928), v2);
  v29 = [v2 resolvedIds];
  sub_2518BC1A8(0, &qword_27F464868);
  v30 = sub_2518F01B8();

  if (v30 >> 62)
  {
    v31 = sub_2518F0648();
  }

  else
  {
    v31 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  sub_2518BC1A8(0, &qword_27F464820);
  v32 = sub_2518F0378();
  v33 = *(v0 + 1040);
  v34 = *(v0 + 1032);
  v69 = *(v0 + 1024);
  v35 = *(v0 + 1016);
  v65 = *(v0 + 1008);
  v36 = *(v0 + 1000);
  if (v31)
  {
    v62 = *(v0 + 992);
    v37 = *(v0 + 984);
    v67 = *(v0 + 1032);
    v68 = *(v0 + 976);
    v60 = *(v0 + 960);
    v61 = v2;
    v63 = *(v0 + 968);
    v64 = *(v0 + 952);
    v38 = *(v0 + 944);
    v58 = *(v0 + 928);
    v59 = *(v0 + 936);
    v39 = *(v0 + 904);
    v40 = swift_allocObject();
    *(v40 + 16) = v39;
    *(v0 + 680) = sub_2518C709C;
    *(v0 + 688) = v40;
    *(v0 + 648) = MEMORY[0x277D85DD0];
    *(v0 + 656) = 1107296256;
    *(v0 + 664) = sub_2518C03A8;
    *(v0 + 672) = &block_descriptor_65;
    v41 = _Block_copy((v0 + 648));
    v57 = v39;
    sub_2518EFE88();
    *(v0 + 880) = MEMORY[0x277D84F90];
    sub_2518C75DC(&qword_27F464870, MEMORY[0x277D85198]);
    sub_2518C70A4(0, &qword_27F464878, MEMORY[0x277D85198], MEMORY[0x277D83940]);
    sub_2518C7108();
    sub_2518F0608();
    MEMORY[0x253086090](0, v33, v35, v41);
    _Block_release(v41);

    v66 = *(v65 + 8);
    v66(v35, v36);
    v56 = *(v67 + 8);
    v56(v33, v69);

    v54 = sub_2518F0378();
    sub_2518EFEA8();
    sub_2518EFEC8();
    v55 = *(v68 + 8);
    v55(v37, v63);
    (*(v38 + 16))(v60, v58, v59);
    v42 = (*(v38 + 80) + 16) & ~*(v38 + 80);
    v43 = (v64 + v42 + 7) & 0xFFFFFFFFFFFFFFF8;
    v44 = swift_allocObject();
    (*(v38 + 32))(v44 + v42, v60, v59);
    *(v44 + v43) = v57;
    *(v44 + ((v43 + 15) & 0xFFFFFFFFFFFFFFF8)) = v61;
    *(v0 + 728) = sub_2518C723C;
    *(v0 + 736) = v44;
    *(v0 + 696) = MEMORY[0x277D85DD0];
    *(v0 + 704) = 1107296256;
    *(v0 + 712) = sub_2518C03A8;
    *(v0 + 720) = &block_descriptor_71;
    v45 = _Block_copy((v0 + 696));
    v46 = v57;
    v47 = v61;
    sub_2518EFE88();
    *(v0 + 888) = MEMORY[0x277D84F90];
    sub_2518F0608();
    MEMORY[0x253086060](v62, v33, v35, v45);
    _Block_release(v45);

    v66(v35, v36);
    v56(v33, v69);
    v55(v62, v63);
  }

  else
  {
    v48 = *(v0 + 904);
    v49 = swift_allocObject();
    *(v49 + 16) = v48;
    *(v0 + 776) = sub_2518C72D4;
    *(v0 + 784) = v49;
    *(v0 + 744) = MEMORY[0x277D85DD0];
    *(v0 + 752) = 1107296256;
    *(v0 + 760) = sub_2518C03A8;
    *(v0 + 768) = &block_descriptor_77;
    v50 = _Block_copy((v0 + 744));
    v51 = v48;
    sub_2518EFE88();
    *(v0 + 896) = MEMORY[0x277D84F90];
    sub_2518C75DC(&qword_27F464870, MEMORY[0x277D85198]);
    sub_2518C70A4(0, &qword_27F464878, MEMORY[0x277D85198], MEMORY[0x277D83940]);
    sub_2518C7108();
    sub_2518F0608();
    MEMORY[0x253086090](0, v33, v35, v50);
    _Block_release(v50);

    (*(v65 + 8))(v35, v36);
    (*(v34 + 8))(v33, v69);
  }

  v52 = *(v0 + 8);

  return v52();
}

uint64_t sub_2518C00B8()
{
  v21 = v0;
  v1 = *(v0 + 1176);
  v2 = *(v0 + 1168);

  swift_willThrow();

  sub_2518EFAC8();
  v3 = v1;
  v4 = sub_2518EFAE8();
  v5 = sub_2518F0318();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 1176);
    v19 = *(v0 + 1152);
    v7 = *(v0 + 1112);
    v8 = *(v0 + 1096);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v20 = v10;
    *v9 = 136446210;
    swift_getErrorValue();
    v11 = sub_2518F0958();
    v13 = sub_2518EBED8(v11, v12, &v20);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_2518B7000, v4, v5, "Filtering medication results failed, error: %{public}s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x253086D30](v10, -1, -1);
    MEMORY[0x253086D30](v9, -1, -1);

    v19(v7, v8);
  }

  else
  {
    v14 = *(v0 + 1152);
    v15 = *(v0 + 1112);
    v16 = *(v0 + 1096);

    v14(v15, v16);
  }

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_2518C0308()
{
  sub_2518F0278();
  sub_2518F0268();
  sub_2518F0218();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_2518C17EC();
}

uint64_t sub_2518C03A8(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

void sub_2518C03EC()
{
  sub_2518F0278();
  sub_2518F0268();
  sub_2518F0218();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v0 = sub_2518BCC00();
  v1 = sub_2518D1CE8();
  sub_2518CCEF0(nullsub_1, 0, 0.5);

  v2 = objc_opt_self();
  v3 = swift_allocObject();
  *(v3 + 16) = v0;
  v6[4] = sub_2518C7330;
  v6[5] = v3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 1107296256;
  v6[2] = sub_2518C03A8;
  v6[3] = &block_descriptor_96;
  v4 = _Block_copy(v6);
  v5 = v0;

  [v2 animateWithDuration:v4 animations:0.5];
  _Block_release(v4);
}

void sub_2518C0588(uint64_t a1, char *a2, void *a3)
{
  v37[0] = a3;
  v38 = a1;
  v4 = sub_2518EF648();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2518EF618();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2518F0278();
  v37[1] = sub_2518F0268();
  sub_2518F0218();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (qword_27F464550 != -1)
  {
    swift_once();
  }

  v12 = qword_27F464B60;
  sub_2518EF608();
  sub_2518EF5D8();
  v14 = v13;
  (*(v9 + 8))(v11, v8);
  sub_2518EF6B8();
  if ([objc_opt_self() isAppleInternalInstall])
  {
    v15 = OBJC_IVAR____TtC25HealthMedicationsVisionUI21ScanningSessionLogger_sessions;
    swift_beginAccess();
    v16 = *(v12 + v15);
    if (*(v16 + 16))
    {

      v17 = sub_2518DDDCC(v38);
      if (v18)
      {
        v19 = *(v16 + 56) + 168 * v17;
        v21 = *(v19 + 16);
        v20 = *(v19 + 32);
        v41 = *v19;
        v42 = v21;
        v43 = v20;
        v22 = *(v19 + 48);
        v23 = *(v19 + 64);
        v24 = *(v19 + 80);
        v47 = *(v19 + 96);
        v45 = v23;
        v46 = v24;
        v44 = v22;
        v25 = *(v19 + 112);
        v26 = *(v19 + 128);
        v27 = *(v19 + 144);
        *&v50[1] = *(v19 + 160);
        v49 = v26;
        v50[0] = v27;
        v48 = v25;
        sub_2518C6E30(&v41, v52);

        v50[9] = v47;
        v50[10] = v48;
        v51 = v49;
        v50[7] = v45;
        v50[8] = v46;
        v53 = v49;
        v50[3] = v41;
        v50[4] = v42;
        v50[5] = v43;
        v50[6] = v44;
        v40 = 0;
        v52[2] = v43;
        v52[3] = v44;
        v52[0] = v41;
        v52[1] = v42;
        v52[6] = v47;
        v52[7] = v48;
        v52[4] = v45;
        v52[5] = v46;
        v54 = v14;
        v55 = 0;
        v56[0] = *(v50 + 1);
        *(v56 + 15) = *&v50[1];
        swift_beginAccess();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v39 = *(v12 + v15);
        *(v12 + v15) = 0x8000000000000000;
        sub_2518DF024(v52, v38, isUniquelyReferenced_nonNull_native);
        *(v12 + v15) = v39;
        swift_endAccess();
      }

      else
      {
      }
    }
  }

  sub_2518EF6C8();
  v29 = swift_allocObject();
  *(v29 + 16) = a2;
  v30 = *&a2[qword_27F464728];
  (*(v5 + 16))(v7, v38, v4);
  v31 = objc_allocWithZone(type metadata accessor for MedicationScanMultiResultsViewController());
  v32 = a2;
  v33 = v30;
  v34 = v37[0];
  v35 = sub_2518BBB68(v33, v34, v7);

  *&v35[qword_27F464FE0 + 8] = &off_2863C6F28;
  swift_unknownObjectWeakAssign();
  *&v43 = sub_2518C72DC;
  *(&v43 + 1) = v29;
  *&v41 = MEMORY[0x277D85DD0];
  *(&v41 + 1) = 1107296256;
  *&v42 = sub_2518C03A8;
  *(&v42 + 1) = &block_descriptor_83;
  v36 = _Block_copy(&v41);

  [v32 presentViewController:v35 animated:1 completion:v36];
  _Block_release(v36);
}

void sub_2518C0A90(uint64_t a1, void (*a2)(id), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_2518BCC00();
  v9 = sub_2518D1CE8();
  sub_2518CF550(a2, 0, 0.0);

  v10 = objc_opt_self();
  v11 = swift_allocObject();
  *(v11 + 16) = v8;
  v14[4] = a4;
  v14[5] = v11;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 1107296256;
  v14[2] = sub_2518C03A8;
  v14[3] = a5;
  v12 = _Block_copy(v14);
  v13 = v8;

  [v10 animateWithDuration:v12 animations:0.0];
  _Block_release(v12);
}

void sub_2518C0BA8()
{
  v0 = sub_2518EFAF8();
  MEMORY[0x28223BE20](v0);
  v1 = sub_2518EF8B8();
  sub_2518EFFB8();
}

id sub_2518C0D44()
{
  v1 = v0;
  v25 = sub_2518EF7F8();
  v2 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v4 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = &v0[qword_27F464708];
  *v5 = 2;
  v5[8] = 0;
  v6 = &v0[qword_27F464710];
  *v6 = 0;
  v6[8] = 1;
  type metadata accessor for MedicationDataScannerViewController();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v8 = [objc_opt_self() bundleForClass_];
  v9 = sub_2518F0088();
  v26 = [objc_opt_self() imageNamed:v9 inBundle:v8];

  if (qword_27F464548 != -1)
  {
    swift_once();
  }

  v24 = sub_2518EF548();
  sub_2518EF548();
  sub_2518EF548();
  sub_2518EF958();
  sub_2518EF938();
  result = [v1 view];
  if (result)
  {
    v11 = result;
    [result bounds];
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v19 = v18;

    v27.origin.x = v13;
    v27.origin.y = v15;
    v27.size.width = v17;
    v27.size.height = v19;
    CGRectGetHeight(v27);
    (*(v2 + 104))(v4, *MEMORY[0x277D10FC8], v25);
    v20 = objc_allocWithZone(sub_2518EFA38());
    v21 = sub_2518EFA18();
    sub_2518EFD28();
    sub_2518EFA08();
    v22 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v23 = swift_allocObject();
    *(v23 + 16) = v22;
    *(v23 + 24) = 2;

    sub_2518EF9E8();

    return v21;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2518C11BC(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_2518EF8A8();
  }

  swift_beginAccess();
  v4 = swift_unknownObjectWeakLoadStrong();
  if (v4)
  {
    v5 = &v4[qword_27F464708];
    *v5 = 0;
    v5[8] = 1;
  }

  swift_beginAccess();
  v6 = swift_unknownObjectWeakLoadStrong();
  if (v6)
  {
    v7 = &v6[qword_27F464710];
    *v7 = 0;
    v7[8] = 1;
  }

  swift_beginAccess();
  v8 = swift_unknownObjectWeakLoadStrong();
  if (v8)
  {
    v9 = v8;
    sub_2518EF918();
    v10 = sub_2518EF928();
    v10(a1, 1, 0, 0);
    v11 = sub_2518BCC00();
    [v11 setAccessibilityElementsHidden_];
  }

  swift_beginAccess();
  v12 = swift_unknownObjectWeakLoadStrong();
  if (v12)
  {
    v13 = v12;
    sub_2518BDDD4(1);
  }

  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v15 = *(result + qword_27F464728);
    v16 = result;
    sub_2518EFA68();
    swift_allocObject();

    v15;
    sub_2518EFA58();
    sub_2518EFA88();
    sub_2518EFA78();
  }

  return result;
}

void sub_2518C1488(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  sub_2518EF918();
  v12 = sub_2518EF928();
  v12(a1, a2, a3, a4);
  v13 = sub_2518BCC00();
  [v13 setAccessibilityElementsHidden_];
}

void sub_2518C1534()
{
  sub_2518EF918();
  v0 = sub_2518EF928();
  v0();

  _s25HealthMedicationsVisionUI35MedicationDataScannerViewControllerC13ontologyStore12didReconnectySo010HKOntologyK0C_tF_0();
}

void _s25HealthMedicationsVisionUI35MedicationDataScannerViewControllerC13ontologyStore12didReconnectySo010HKOntologyK0C_tF_0()
{
  v1 = v0;
  swift_getObjectType();
  v2 = sub_2518EFAF8();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2518EFAC8();
  v6 = sub_2518EFAE8();
  v7 = sub_2518F0328();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    aBlock[0] = v9;
    *v8 = 136446210;
    v10 = sub_2518F09F8();
    v12 = sub_2518EBED8(v10, v11, aBlock);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_2518B7000, v6, v7, "[%{public}s] Querying for ontology shard registry entries", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x253086D30](v9, -1, -1);
    MEMORY[0x253086D30](v8, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  v13 = *(v1 + qword_27F464730);
  v14 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_2518C7388;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2518C4118;
  aBlock[3] = &block_descriptor_112;
  v15 = _Block_copy(aBlock);

  [v13 ontologyShardRegistryEntriesWithCompletion_];
  _Block_release(v15);
}

void sub_2518C17EC()
{
  v21 = sub_2518EF7F8();
  v0 = *(v21 - 1);
  MEMORY[0x28223BE20](v21);
  v2 = v19 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = [objc_opt_self() configurationWithScale_];
  v4 = sub_2518F0088();
  v20 = [objc_opt_self() systemImageNamed:v4 withConfiguration:v3];

  v22 = v3;
  if (qword_27F464548 != -1)
  {
    swift_once();
  }

  v5 = sub_2518EF548();
  v19[2] = v6;
  v19[3] = v5;
  v19[1] = sub_2518EF548();
  sub_2518EF548();
  sub_2518EF548();
  (*(v0 + 104))(v2, *MEMORY[0x277D10FC8], v21);
  v7 = objc_allocWithZone(sub_2518EFA38());
  v21 = v20;
  v8 = sub_2518EFA18();
  v9 = swift_allocObject();
  v10 = v23;
  swift_unknownObjectWeakInit();
  v11 = swift_allocObject();
  *(v11 + 16) = v9;
  *(v11 + 24) = 11;

  sub_2518EF9E8();

  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v13 = swift_allocObject();
  v13[2] = v12;
  v13[3] = 11;
  v13[4] = v8;

  v14 = v8;
  sub_2518EF9F8();

  sub_2518EF918();
  v15 = sub_2518EF928();
  v15(v14, 1, 0, 0);
  v16 = sub_2518BCC00();
  [v16 setAccessibilityElementsHidden_];

  v17 = v10 + qword_27F464708;
  *v17 = 11;
  *(v17 + 8) = 0;
  v18 = v10 + qword_27F464710;
  *v18 = 0;
  *(v18 + 8) = 1;
}

uint64_t sub_2518C1CB4()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = &Strong[qword_27F464708];
    *v1 = 0;
    v1[8] = 1;
  }

  swift_beginAccess();
  v2 = swift_unknownObjectWeakLoadStrong();
  if (v2)
  {
    v3 = &v2[qword_27F464710];
    *v3 = 0;
    v3[8] = 1;
  }

  swift_beginAccess();
  v4 = swift_unknownObjectWeakLoadStrong();
  if (v4)
  {
    v5 = *(v4 + qword_27F464700);
    v6 = v4;

    if (v5)
    {
      sub_2518EF6B8();
      [*(v5 + 64) invalidate];
      v7 = *(v5 + 64);
      *(v5 + 64) = 0;

      sub_2518EF6C8();
    }
  }

  swift_beginAccess();
  v8 = swift_unknownObjectWeakLoadStrong();
  if (v8)
  {
    *&v8[qword_27F464700] = 0;
  }

  swift_beginAccess();
  v9 = swift_unknownObjectWeakLoadStrong();
  if (v9)
  {
    v10 = v9;
    [v9 dismissViewControllerAnimated:1 completion:0];
  }

  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v12 = *(result + qword_27F464728);
    v13 = result;
    sub_2518EFA68();
    swift_allocObject();

    v12;
    sub_2518EFA58();
    sub_2518EFA88();
    sub_2518EFA78();
  }

  return result;
}

void sub_2518C1F1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = *(Strong + qword_27F464728);
    v7 = Strong;
    sub_2518EFA68();
    swift_allocObject();

    v6;
    sub_2518EFA58();
    sub_2518EFA88();
    sub_2518EFA78();
  }

  swift_beginAccess();
  v8 = swift_unknownObjectWeakLoadStrong();
  if (v8)
  {
    v9 = &v8[qword_27F464708];
    *v9 = 0;
    v9[8] = 1;
  }

  swift_beginAccess();
  v10 = swift_unknownObjectWeakLoadStrong();
  if (v10)
  {
    v11 = &v10[qword_27F464710];
    *v11 = 0;
    v11[8] = 1;
  }

  swift_beginAccess();
  v12 = swift_unknownObjectWeakLoadStrong();
  if (v12)
  {
    v13 = v12;
    sub_2518EF918();
    v14 = sub_2518EF928();
    v14(a4, 1, 0, 0);
    v15 = sub_2518BCC00();
    [v15 setAccessibilityElementsHidden_];
  }

  swift_beginAccess();
  v16 = swift_unknownObjectWeakLoadStrong();
  if (v16)
  {
    v17 = v16;
    sub_2518BDDD4(1);
  }
}

void sub_2518C215C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v63 = a4;
  v62 = a3;
  v59 = a2;
  v5 = sub_2518EF648();
  v65 = *(v5 - 8);
  v66 = v5;
  MEMORY[0x28223BE20](v5);
  v58 = v6;
  v60 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2518EFAF8();
  v51 = *(v7 - 8);
  v52 = v7;
  MEMORY[0x28223BE20](v7);
  v50 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2518C70A4(0, &qword_27F464800, MEMORY[0x277CC95F0], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v50 - v10;
  v12 = sub_2518EF7F8();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_2518F0408();
  v56 = v17;
  v57 = v16;
  v61 = a1;
  v18 = sub_2518F0418();
  if (v19)
  {
    v20 = v18;
  }

  else
  {
    v20 = 0;
  }

  if (v19)
  {
    v21 = v19;
  }

  else
  {
    v21 = 0xE000000000000000;
  }

  v54 = v21;
  v55 = v20;
  if (qword_27F464548 != -1)
  {
    swift_once();
  }

  v53 = sub_2518EF548();
  sub_2518EF548();
  sub_2518EF958();
  sub_2518EF948();
  (*(v13 + 104))(v15, *MEMORY[0x277D10FC8], v12);
  v22 = objc_allocWithZone(sub_2518EFA38());
  v57 = sub_2518EFA18();
  if (qword_27F464550 != -1)
  {
    swift_once();
  }

  v24 = v65;
  v23 = v66;
  v25 = *(v65 + 16);
  v26 = v59;
  v25(v11, v59, v66);
  (*(v24 + 56))(v11, 0, 1, v23);
  v27 = v61;
  v28 = [v61 specificProduct];
  v29 = [v28 identifier];

  sub_2518D9CC8(v11, 0, v29, v67);
  sub_2518C5530(v11, &qword_27F464800, MEMORY[0x277CC95F0], MEMORY[0x277D83D88], sub_2518C70A4);
  if (v68 == 2)
  {
    v30 = v50;
    sub_2518EFAD8();
    v31 = sub_2518EFAE8();
    v32 = sub_2518F0318();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&dword_2518B7000, v31, v32, "[MedicationsListOnboardingAnalytics] Failed to calculate algorithmType because ScanningSessionLogger returned a null value.", v33, 2u);
      MEMORY[0x253086D30](v33, -1, -1);
    }

    (*(v51 + 8))(v30, v52);
    v34 = 0;
  }

  else
  {
    v34 = ~v68 & 1;
  }

  v35 = swift_allocObject();
  v36 = v64;
  swift_unknownObjectWeakInit();
  v37 = v60;
  v38 = v66;
  v25(v60, v26, v66);
  v39 = v65;
  v40 = (*(v65 + 80) + 48) & ~*(v65 + 80);
  v41 = swift_allocObject();
  *(v41 + 2) = v35;
  *(v41 + 3) = 3;
  *(v41 + 4) = v34;
  *(v41 + 5) = v27;
  (*(v39 + 32))(&v41[v40], v37, v38);

  v42 = v27;
  v43 = v57;
  sub_2518EF9E8();

  v44 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v45 = swift_allocObject();
  v45[2] = v44;
  v45[3] = 3;
  v45[4] = v34;

  sub_2518EF9F8();

  sub_2518EF918();
  v46 = sub_2518EF928();
  v46(v43, 1, v62, v63);
  v47 = sub_2518BCC00();
  [v47 setAccessibilityElementsHidden_];

  v48 = v36 + qword_27F464708;
  *v48 = 3;
  *(v48 + 8) = 0;
  v49 = v36 + qword_27F464710;
  *v49 = v34;
  *(v49 + 8) = 0;
}

uint64_t sub_2518C28C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v10 = result;
    v11 = result + qword_27F464708;
    *v11 = 0;
    *(v11 + 8) = 1;
    v12 = result + qword_27F464710;
    *v12 = 0;
    *(v12 + 8) = 1;
    v13 = qword_27F464720;
    v14 = *(result + qword_27F464728);
    sub_2518EFA68();
    swift_allocObject();

    LOBYTE(v25) = 0;
    v24 = v14;
    LOBYTE(v23) = 0;
    LOBYTE(v22) = 1;
    LOWORD(v21) = 513;
    sub_2518EFA58();
    sub_2518EFA88();
    sub_2518EFA78();
    v15 = &v10[qword_27F4646C8];
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v16 = *(v15 + 1);
      ObjectType = swift_getObjectType();
      v18 = [a5 specificProduct];
      v19 = *&v10[v13];
      v20 = *(v16 + 8);

      v20(v10, v18, a6, v19, 2, ObjectType, v16);

      return swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  return result;
}

void sub_2518C2ACC(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = &Strong[qword_27F464708];
    *v3 = 0;
    v3[8] = 1;
  }

  swift_beginAccess();
  v4 = swift_unknownObjectWeakLoadStrong();
  if (v4)
  {
    v5 = &v4[qword_27F464710];
    *v5 = 0;
    v5[8] = 1;
  }

  swift_beginAccess();
  v6 = swift_unknownObjectWeakLoadStrong();
  if (v6)
  {
    v7 = v6;
    sub_2518EF918();
    v8 = sub_2518EF928();
    v8(a1, 0, 0, 0);
    v9 = sub_2518BCC00();
    [v9 setAccessibilityElementsHidden_];
  }

  swift_beginAccess();
  v10 = swift_unknownObjectWeakLoadStrong();
  if (v10)
  {
    v11 = *(v10 + qword_27F464728);
    v12 = v10;
    sub_2518EFA68();
    swift_allocObject();

    v11;
    sub_2518EFA58();
    sub_2518EFA88();
    sub_2518EFA78();
  }

  swift_beginAccess();
  v13 = swift_unknownObjectWeakLoadStrong();
  if (v13)
  {
    v14 = v13;
    v15 = sub_2518BCC00();

    v16 = sub_2518D1CE8();
    sub_2518CF550(nullsub_1, 0, 0.3);

    v17 = objc_opt_self();
    v18 = swift_allocObject();
    *(v18 + 16) = v15;
    aBlock[4] = sub_2518C6620;
    aBlock[5] = v18;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2518C03A8;
    aBlock[3] = &block_descriptor;
    v19 = _Block_copy(aBlock);
    v20 = v15;

    [v17 animateWithDuration:v19 animations:0.3];
    _Block_release(v19);
  }

  swift_beginAccess();
  v21 = swift_unknownObjectWeakLoadStrong();
  if (v21)
  {
    v22 = v21;
    sub_2518BDDD4(1);
  }
}

uint64_t sub_2518C2E48()
{
  if (qword_27F464550 != -1)
  {
    swift_once();
  }

  sub_2518D7D98(v4);
  v14 = v4[8];
  v15 = v4[9];
  v16 = v5;
  v10 = v4[4];
  v11 = v4[5];
  v12 = v4[6];
  v13 = v4[7];
  v6 = v4[0];
  v7 = v4[1];
  v8 = v4[2];
  v9 = v4[3];
  if (sub_2518BBF18(&v6) == 1)
  {
    return _s25HealthMedicationsVisionUI0C10TapToRadarC19medicationsTracking14viewControllerySo06UIViewK0C_tFZ_0(v0);
  }

  v2[8] = v14;
  v2[9] = v15;
  v3 = v16;
  v2[4] = v10;
  v2[5] = v11;
  v2[6] = v12;
  v2[7] = v13;
  v2[0] = v6;
  v2[1] = v7;
  v2[2] = v8;
  v2[3] = v9;
  _s25HealthMedicationsVisionUI0C10TapToRadarC8scanning0H7Session14viewControlleryAA08ScanningI0V_So06UIViewK0CtFZ_0(v2, v0);
  return sub_2518C5530(v4, &qword_27F464648, &type metadata for ScanningSession, MEMORY[0x277D83D88], sub_2518C6838);
}

uint64_t sub_2518C2F84(void *a1)
{
  sub_2518F0278();
  sub_2518F0268();
  sub_2518F0218();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_unknownObjectRetain();
  v2 = a1;
  sub_2518F05F8();
  swift_unknownObjectRelease();
  if (qword_27F464550 != -1)
  {
    swift_once();
  }

  sub_2518D7D98(v7);
  v17 = v7[8];
  v18 = v7[9];
  v19 = v8;
  v13 = v7[4];
  v14 = v7[5];
  v15 = v7[6];
  v16 = v7[7];
  v9 = v7[0];
  v10 = v7[1];
  v11 = v7[2];
  v12 = v7[3];
  if (sub_2518BBF18(&v9) == 1)
  {
    _s25HealthMedicationsVisionUI0C10TapToRadarC19medicationsTracking14viewControllerySo06UIViewK0C_tFZ_0(v2);

    __swift_destroy_boxed_opaque_existential_0(v6);
  }

  else
  {
    v4[8] = v17;
    v4[9] = v18;
    v5 = v19;
    v4[4] = v13;
    v4[5] = v14;
    v4[6] = v15;
    v4[7] = v16;
    v4[0] = v9;
    v4[1] = v10;
    v4[2] = v11;
    v4[3] = v12;
    _s25HealthMedicationsVisionUI0C10TapToRadarC8scanning0H7Session14viewControlleryAA08ScanningI0V_So06UIViewK0CtFZ_0(v4, v2);

    __swift_destroy_boxed_opaque_existential_0(v6);
    sub_2518C5530(v7, &qword_27F464648, &type metadata for ScanningSession, MEMORY[0x277D83D88], sub_2518C6838);
  }
}

uint64_t sub_2518C316C()
{
  v1 = v0 + qword_27F464708;
  if ((*(v0 + qword_27F464708 + 8) & 1) == 0)
  {
    v2 = *(v0 + qword_27F464728);
    sub_2518EFA68();
    swift_allocObject();

    v2;
    sub_2518EFA58();
    sub_2518EFA88();

    sub_2518EFA78();
  }

  *v1 = 0;
  *(v1 + 8) = 1;
  v3 = v0 + qword_27F464710;
  *v3 = 0;
  *(v3 + 8) = 1;
  v4 = qword_27F464700;
  v5 = *(v0 + qword_27F464700);
  if (v5)
  {

    sub_2518EF6B8();
    [*(v5 + 64) invalidate];
    v6 = *(v5 + 64);
    *(v5 + 64) = 0;

    sub_2518EF6C8();
  }

  *(v0 + v4) = 0;

  sub_2518EF918();
  v7 = sub_2518EF928();

  return v7();
}

void sub_2518C3358(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  sub_2518F0278();
  sub_2518F0268();
  sub_2518F0218();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v6 = a1;
  a4();
}

id MedicationDataScannerViewController.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_2518C3488()
{
  sub_2518F0278();
  sub_2518F0268();
  sub_2518F0218();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

void sub_2518C3514()
{
  sub_2518BC068(v0 + qword_27F4646C8);

  v1 = *(v0 + qword_27F464780);
}

id MedicationDataScannerViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MedicationDataScannerViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_2518C367C(uint64_t a1)
{
  sub_2518BC068(a1 + qword_27F4646C8);

  v2 = *(a1 + qword_27F464780);
}

uint64_t MedicationDataScannerViewController.ontologyStore(_:didImport:)(uint64_t a1, void *a2)
{
  sub_2518C6838(0, &qword_27F464660, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_2518F1C50;
  *(v3 + 32) = a2;
  v4 = a2;
  sub_2518C3858(v3);
}

uint64_t sub_2518C3858(uint64_t a1)
{
  v3 = sub_2518EFE68();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15[0] = sub_2518EFE98();
  v7 = *(v15[0] - 8);
  MEMORY[0x28223BE20](v15[0]);
  v9 = v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2518BC1A8(0, &qword_27F464820);
  v10 = sub_2518F0378();
  v11 = swift_allocObject();
  *(v11 + 16) = v1;
  *(v11 + 24) = a1;
  aBlock[4] = sub_2518C7380;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2518C03A8;
  aBlock[3] = &block_descriptor_108;
  v12 = _Block_copy(aBlock);
  v13 = v1;

  sub_2518EFE88();
  v15[1] = MEMORY[0x277D84F90];
  sub_2518C75DC(&qword_27F464870, MEMORY[0x277D85198]);
  sub_2518C70A4(0, &qword_27F464878, MEMORY[0x277D85198], MEMORY[0x277D83940]);
  sub_2518C7108();
  sub_2518F0608();
  MEMORY[0x253086090](0, v9, v6, v12);
  _Block_release(v12);

  (*(v4 + 8))(v6, v3);
  (*(v7 + 8))(v9, v15[0]);
}

void sub_2518C3B48(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  sub_2518C6838(0, &qword_27F464660, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_2518F1C50;
  *(v6 + 32) = a4;
  v7 = a4;
  v8 = a1;
  sub_2518C3858(v6);
}

void sub_2518C3C14(void *a1)
{
  v1 = a1;
  _s25HealthMedicationsVisionUI35MedicationDataScannerViewControllerC13ontologyStore12didReconnectySo010HKOntologyK0C_tF_0();
}

void sub_2518C3C5C(uint64_t a1, void *a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    sub_2518C3CCC(a1, a2);
  }
}

void sub_2518C3CCC(uint64_t a1, void *a2)
{
  swift_getObjectType();
  v4 = sub_2518EFAF8();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v34 - v9;
  if (a2)
  {
    v11 = a2;
    sub_2518EFAC8();
    v12 = a2;
    v13 = sub_2518EFAE8();
    v14 = sub_2518F0318();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v37 = v35;
      *v15 = 136446466;
      v16 = sub_2518F09F8();
      v18 = sub_2518EBED8(v16, v17, &v37);
      v36 = v4;
      v19 = v18;

      *(v15 + 4) = v19;
      *(v15 + 12) = 2082;
      ErrorValue = swift_getErrorValue();
      MEMORY[0x28223BE20](ErrorValue);
      (*(v22 + 16))(&v34 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
      v23 = sub_2518F00E8();
      v25 = sub_2518EBED8(v23, v24, &v37);

      *(v15 + 14) = v25;
      _os_log_impl(&dword_2518B7000, v13, v14, "[%{public}s] Failed to get ontology shard registry entries, error: %{public}s", v15, 0x16u);
      v26 = v35;
      swift_arrayDestroy();
      MEMORY[0x253086D30](v26, -1, -1);
      MEMORY[0x253086D30](v15, -1, -1);

      (*(v5 + 8))(v10, v36);
    }

    else
    {

      (*(v5 + 8))(v10, v4);
    }

    sub_2518C3858(MEMORY[0x277D84F90]);
  }

  else if (a1)
  {

    sub_2518C3858(a1);
  }

  else
  {
    sub_2518EFAC8();
    v27 = sub_2518EFAE8();
    v28 = sub_2518F0318();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v37 = v30;
      *v29 = 136446210;
      v31 = sub_2518F09F8();
      v33 = sub_2518EBED8(v31, v32, &v37);

      *(v29 + 4) = v33;
      _os_log_impl(&dword_2518B7000, v27, v28, "[%{public}s] Failed to get ontology shard registry entries, entries were unexpectedly nil.", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v30);
      MEMORY[0x253086D30](v30, -1, -1);
      MEMORY[0x253086D30](v29, -1, -1);
    }

    (*(v5 + 8))(v8, v4);
    sub_2518C3858(MEMORY[0x277D84F90]);
  }
}

uint64_t sub_2518C4118(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {
    sub_2518BC1A8(0, &qword_27F464888);
    v4 = sub_2518F01B8();
  }

  v6 = a3;
  v5(v4, a3);
}

uint64_t sub_2518C41BC(uint64_t a1, unint64_t a2)
{
  sub_2518F0278();
  sub_2518F0268();
  sub_2518F0218();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_2518C426C(a2);
}

void sub_2518C426C(unint64_t a1)
{
  ObjectType = swift_getObjectType();
  v4 = sub_2518EFAF8();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v57 - v9;
  v11 = sub_2518EF898();
  if (v11)
  {

    v61 = v5;
    v62 = v4;
    v57 = v1;
    v58 = v10;
    v59 = ObjectType;
    v60 = v8;
    if (a1 >> 62)
    {
LABEL_30:
      v12 = sub_2518F0648();
      if (v12)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v12 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v12)
      {
LABEL_4:
        v13 = 0;
        v66 = a1 & 0xC000000000000001;
        v64 = *MEMORY[0x277CCC600];
        v65 = a1 & 0xFFFFFFFFFFFFFF8;
        v63 = *MEMORY[0x277CCC628];
        do
        {
          if (v66)
          {
            v14 = MEMORY[0x253086400](v13, a1);
          }

          else
          {
            if (v13 >= *(v65 + 16))
            {
              goto LABEL_29;
            }

            v14 = *(a1 + 8 * v13 + 32);
          }

          v15 = v14;
          v16 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            __break(1u);
LABEL_29:
            __break(1u);
            goto LABEL_30;
          }

          sub_2518F0278();
          sub_2518F0268();
          sub_2518F0218();
          if ((swift_task_isCurrentExecutor() & 1) == 0)
          {
            swift_task_reportUnexpectedExecutor();
          }

          v17 = [v15 identifier];
          v18 = sub_2518F00B8();
          v20 = v19;
          if (v18 == sub_2518F00B8() && v20 == v21)
          {
          }

          else
          {
            v22 = sub_2518F0918();

            if ((v22 & 1) == 0)
            {
              goto LABEL_5;
            }
          }

          v23 = [v15 schemaType];
          v24 = sub_2518F00B8();
          v26 = v25;
          if (v24 == sub_2518F00B8() && v26 == v27)
          {
          }

          else
          {
            v28 = sub_2518F0918();

            if ((v28 & 1) == 0)
            {
LABEL_5:

              goto LABEL_6;
            }
          }

          v29 = [v15 schemaVersion];

          if (v29 == 2)
          {
            v30 = [v15 currentVersion];
            v31 = v58;
            sub_2518EFAC8();
            v32 = v15;
            v33 = sub_2518EFAE8();
            v34 = sub_2518F0328();

            if (os_log_type_enabled(v33, v34))
            {
              LODWORD(v66) = v30 > 0;
              v36 = swift_slowAlloc();
              v37 = swift_slowAlloc();
              v68 = v37;
              *v36 = 136446978;
              v38 = sub_2518F09F8();
              v40 = sub_2518EBED8(v38, v39, &v68);

              *(v36 + 4) = v40;
              *(v36 + 12) = 2082;
              [v32 availableState];
              v41 = HKStringFromOntologyShardState();
              v42 = sub_2518F00B8();
              v44 = v43;

              v45 = sub_2518EBED8(v42, v44, &v68);

              *(v36 + 14) = v45;
              *(v36 + 22) = 1026;
              *(v36 + 24) = v66;
              *(v36 + 28) = 2082;
              v67 = [v32 currentVersion];
              v46 = sub_2518F08F8();
              v48 = sub_2518EBED8(v46, v47, &v68);

              *(v36 + 30) = v48;
              _os_log_impl(&dword_2518B7000, v33, v34, "[%{public}s] Current PBS availability state: %{public}s, isImported: %{BOOL,public}d, currentVersion: %{public}s", v36, 0x26u);
              swift_arrayDestroy();
              MEMORY[0x253086D30](v37, -1, -1);
              MEMORY[0x253086D30](v36, -1, -1);

              (*(v61 + 8))(v58, v62);
            }

            else
            {

              (*(v61 + 8))(v31, v62);
            }

            LOBYTE(v68) = v30 > 0;
            sub_2518EFD18();

            return;
          }

LABEL_6:

          ++v13;
        }

        while (v16 != v12);
      }
    }

    v49 = v60;
    sub_2518EFAC8();
    v50 = sub_2518EFAE8();
    v51 = sub_2518F0328();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      v68 = v53;
      *v52 = 136446210;
      v54 = sub_2518F09F8();
      v56 = sub_2518EBED8(v54, v55, &v68);

      *(v52 + 4) = v56;
      _os_log_impl(&dword_2518B7000, v50, v51, "[%{public}s] Failed to find PBS shard in registry entries.", v52, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v53);
      MEMORY[0x253086D30](v53, -1, -1);
      MEMORY[0x253086D30](v52, -1, -1);
    }

    (*(v61 + 8))(v49, v62);
  }
}

uint64_t sub_2518C48E4(uint64_t a1, void *a2)
{
  v3 = sub_2518EFAF8();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v35 - v8;
  if (a2)
  {
    v10 = a2;
    sub_2518EFAC8();
    v11 = a2;
    v12 = sub_2518EFAE8();
    v13 = sub_2518F0318();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v36 = v15;
      *v14 = 136446466;
      v16 = sub_2518F09F8();
      v18 = sub_2518EBED8(v16, v17, &v36);

      *(v14 + 4) = v18;
      *(v14 + 12) = 2082;
      ErrorValue = swift_getErrorValue();
      v35 = v3;
      MEMORY[0x28223BE20](ErrorValue);
      (*(v21 + 16))(&v35 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
      v22 = sub_2518F00E8();
      v24 = sub_2518EBED8(v22, v23, &v36);

      *(v14 + 14) = v24;
      _os_log_impl(&dword_2518B7000, v12, v13, "[%{public}s] Failed to mark vision shards as required, error: %{public}s", v14, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x253086D30](v15, -1, -1);
      MEMORY[0x253086D30](v14, -1, -1);

      return (*(v4 + 8))(v9, v35);
    }

    v33 = *(v4 + 8);
    v34 = v9;
  }

  else
  {
    sub_2518EFAC8();
    v26 = sub_2518EFAE8();
    v27 = sub_2518F0328();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v36 = v29;
      *v28 = 136446210;
      v30 = sub_2518F09F8();
      v32 = sub_2518EBED8(v30, v31, &v36);

      *(v28 + 4) = v32;
      _os_log_impl(&dword_2518B7000, v26, v27, "[%{public}s] Marked vision shards as required", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v29);
      MEMORY[0x253086D30](v29, -1, -1);
      MEMORY[0x253086D30](v28, -1, -1);
    }

    v33 = *(v4 + 8);
    v34 = v7;
  }

  return v33(v34, v3);
}

uint64_t sub_2518C4CB4(void *a1)
{
  [a1 dismissViewControllerAnimated:1 completion:0];
  sub_2518BDDD4(1);
  v2 = *(v1 + qword_27F464728);
  sub_2518EFA68();
  swift_allocObject();

  v2;
  sub_2518EFA58();
  sub_2518EFA88();
  sub_2518EFA78();
}

uint64_t sub_2518C4E78()
{
  v1 = [v0 presentingViewController];
  if (v1)
  {
    v2 = v1;
    [v1 dismissViewControllerAnimated:1 completion:0];
  }

  v3 = *&v0[qword_27F464728];
  sub_2518EFA68();
  swift_allocObject();

  v3;
  sub_2518EFA58();
  sub_2518EFA88();
  sub_2518EFA78();
}

uint64_t sub_2518C4F90(uint64_t a1)
{
  v2 = sub_2518EFF58();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    sub_2518C7548();
    v9 = sub_2518F06A8();
    v10 = 0;
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v35 = v12;
    v36 = v9 + 56;
    v13 = *(v11 + 64);
    v32 = v8;
    v33 = a1 + ((v13 + 32) & ~v13);
    v14 = *(v11 + 56);
    v15 = (v11 - 8);
    v31 = (v11 + 16);
    while (1)
    {
      v34 = v10;
      v35(v37, v33 + v14 * v10, v2);
      sub_2518C75DC(&qword_27F4648C0, MEMORY[0x277CE30B0]);
      v16 = sub_2518F0058();
      v17 = ~(-1 << *(v9 + 32));
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = *(v36 + 8 * v19);
      v21 = 1 << (v16 & v17);
      if ((v21 & v20) != 0)
      {
        while (1)
        {
          v22 = v11;
          v35(v6, *(v9 + 48) + v18 * v14, v2);
          sub_2518C75DC(&qword_27F4648C8, MEMORY[0x277CE30B0]);
          v23 = sub_2518F0078();
          v24 = *v15;
          (*v15)(v6, v2);
          if (v23)
          {
            break;
          }

          v18 = (v18 + 1) & v17;
          v19 = v18 >> 6;
          v20 = *(v36 + 8 * (v18 >> 6));
          v21 = 1 << v18;
          v11 = v22;
          if (((1 << v18) & v20) == 0)
          {
            goto LABEL_8;
          }
        }

        v24(v37, v2);
        v11 = v22;
      }

      else
      {
LABEL_8:
        v25 = v37;
        *(v36 + 8 * v19) = v21 | v20;
        result = (*v31)(*(v9 + 48) + v18 * v14, v25, v2);
        v27 = *(v9 + 16);
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          __break(1u);
          return result;
        }

        *(v9 + 16) = v29;
      }

      v10 = v34 + 1;
      if (v34 + 1 == v32)
      {
        return v9;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

uint64_t type metadata accessor for MedicationDataScannerViewController()
{
  result = qword_27F464788;
  if (!qword_27F464788)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_2518C52F0(void *a1, uint64_t a2)
{
  v3 = v2;
  *&v2[qword_27F4646C8 + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v2[qword_27F464700] = 0;
  v6 = qword_27F464718;
  v16 = 0;
  sub_2518C6400();
  swift_allocObject();
  *&v2[v6] = sub_2518EFD48();
  v7 = qword_27F464740;
  sub_2518EF6E8();
  swift_allocObject();
  *&v2[v7] = sub_2518EF6D8();
  v8 = qword_27F464748;
  *&v3[v8] = [objc_allocWithZone(MEMORY[0x277CD89E0]) initWithUnit_];
  v9 = MEMORY[0x277D84FA0];
  *&v3[qword_27F464750] = MEMORY[0x277D84FA0];
  *&v3[qword_27F464758] = v9;
  *&v3[qword_27F464760] = v9;
  *&v3[qword_27F464768] = 0;
  *&v3[qword_27F464770] = 0;
  *&v3[qword_27F464778] = 0;
  v10 = &v3[qword_27F464710];
  *v10 = 0;
  v10[8] = 1;
  v11 = &v3[qword_27F464708];
  *v11 = 0;
  v11[8] = 1;
  *&v3[qword_27F4646F8] = 0;
  *&v3[qword_27F464780] = 0;
  *&v3[qword_27F464728] = a1;
  v12 = [objc_allocWithZone(MEMORY[0x277D10388]) initWithHealthStore_];
  *&v3[qword_27F464730] = v12;
  v13 = [objc_allocWithZone(MEMORY[0x277D117D8]) init];
  *&v3[qword_27F464738] = v13;
  *&v3[qword_27F464720] = a2;
  v15.receiver = v3;
  v15.super_class = type metadata accessor for MedicationDataScannerViewController();
  return objc_msgSendSuper2(&v15, sel_init);
}

uint64_t sub_2518C54F0()
{
  MEMORY[0x253086E00](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2518C5530(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = a5(0);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

void sub_2518C5590()
{
  v1 = v0;
  *(v0 + qword_27F4646C8 + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + qword_27F464700) = 0;
  v2 = qword_27F464718;
  sub_2518C6400();
  swift_allocObject();
  *(v0 + v2) = sub_2518EFD48();
  v3 = qword_27F464740;
  sub_2518EF6E8();
  swift_allocObject();
  *(v0 + v3) = sub_2518EF6D8();
  v4 = qword_27F464748;
  *(v1 + v4) = [objc_allocWithZone(MEMORY[0x277CD89E0]) initWithUnit_];
  v5 = MEMORY[0x277D84FA0];
  *(v1 + qword_27F464750) = MEMORY[0x277D84FA0];
  *(v1 + qword_27F464758) = v5;
  *(v1 + qword_27F464760) = v5;
  *(v1 + qword_27F464768) = 0;
  *(v1 + qword_27F464770) = 0;
  *(v1 + qword_27F464778) = 0;
  v6 = v1 + qword_27F464710;
  *v6 = 0;
  *(v6 + 8) = 1;
  v7 = v1 + qword_27F464708;
  *v7 = 0;
  *(v7 + 8) = 1;
  *(v1 + qword_27F4646F8) = 0;
  *(v1 + qword_27F464780) = 0;
  sub_2518F0778();
  __break(1u);
}

uint64_t sub_2518C5730(uint64_t a1, const char *a2)
{
  v4 = v2;
  swift_getObjectType();
  v6 = sub_2518EFAF8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2518EFAC8();

  v10 = sub_2518EFAE8();
  v11 = sub_2518F0308();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v26 = a2;
    v13 = v12;
    v14 = swift_slowAlloc();
    v28 = v14;
    *v13 = 136446467;
    v15 = sub_2518F09F8();
    v17 = sub_2518EBED8(v15, v16, &v28);
    v27 = v6;
    v18 = v4;
    v19 = v17;

    *(v13 + 4) = v19;
    *(v13 + 12) = 2085;
    v20 = sub_2518EFF28();
    v21 = MEMORY[0x253085ED0](a1, v20);
    v23 = sub_2518EBED8(v21, v22, &v28);
    v4 = v18;

    *(v13 + 14) = v23;
    _os_log_impl(&dword_2518B7000, v10, v11, v26, v13, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x253086D30](v14, -1, -1);
    MEMORY[0x253086D30](v13, -1, -1);

    result = (*(v7 + 8))(v9, v27);
  }

  else
  {

    result = (*(v7 + 8))(v9, v6);
  }

  if (*(v4 + qword_27F464700))
  {

    sub_2518E6E24(a1);
  }

  return result;
}

uint64_t sub_2518C598C(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v2 = sub_2518F0008();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v51 = &v42[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v42[-v7];
  MEMORY[0x28223BE20](v6);
  v10 = &v42[-v9];
  v11 = sub_2518EFAF8();
  v48 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v42[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_2518EFAC8();
  v14 = *(v3 + 16);
  v50 = a1;
  v47 = v14;
  v14(v10, a1, v2);
  v15 = sub_2518EFAE8();
  v16 = sub_2518F0308();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v43 = v16;
    v18 = v17;
    v44 = swift_slowAlloc();
    v52 = v44;
    *v18 = 136446467;
    v19 = sub_2518F09F8();
    v21 = sub_2518EBED8(v19, v20, &v52);
    v45 = v11;
    v22 = v21;

    *(v18 + 4) = v22;
    *(v18 + 12) = 2085;
    v23 = v47;
    v47(v8, v10, v2);
    v24 = sub_2518F00E8();
    v26 = v25;
    ObjectType = *(v3 + 8);
    ObjectType(v10, v2);
    v27 = sub_2518EBED8(v24, v26, &v52);

    *(v18 + 14) = v27;
    _os_log_impl(&dword_2518B7000, v15, v43, "%{public}s Camera stability updated: %{sensitive}s", v18, 0x16u);
    v28 = v44;
    swift_arrayDestroy();
    MEMORY[0x253086D30](v28, -1, -1);
    MEMORY[0x253086D30](v18, -1, -1);

    (*(v48 + 8))(v13, v45);
    v29 = v23;
  }

  else
  {

    ObjectType = *(v3 + 8);
    ObjectType(v10, v2);
    (*(v48 + 8))(v13, v11);
    v29 = v47;
  }

  v31 = v50;
  v30 = v51;
  v29(v51, v50, v2);
  v32 = (*(v3 + 88))(v30, v2);
  v33 = *MEMORY[0x277CE3100];
  v34 = v49;
  sub_2518BCC00();
  if (v32 == v33 || v32 == *MEMORY[0x277CE30F8])
  {
    if (qword_27F464548 != -1)
    {
      swift_once();
    }

    v39 = sub_2518EF548();
    v41 = v40;
    swift_getKeyPath();
    swift_getKeyPath();
    v52 = v39;
    v53 = v41;
    result = sub_2518EFDC8();
  }

  else
  {
    if (qword_27F464548 != -1)
    {
      swift_once();
    }

    v35 = sub_2518EF548();
    v37 = v36;
    swift_getKeyPath();
    swift_getKeyPath();
    v52 = v35;
    v53 = v37;
    sub_2518EFDC8();
    result = (ObjectType)(v51, v2);
  }

  if (*(v34 + qword_27F464700))
  {

    sub_2518E7954(v31);
  }

  return result;
}

uint64_t _s25HealthMedicationsVisionUI35MedicationDataScannerViewControllerC04dataG24DidUpdateSceneLuminosity_03newN0y0C3Kit0fghI0C_SdtF_0(double a1)
{
  swift_getObjectType();
  v2 = sub_2518EFAF8();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2518EFAC8();
  v6 = sub_2518EFAE8();
  v7 = sub_2518F0308();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v15 = v9;
    *v8 = 136446467;
    v10 = sub_2518F09F8();
    v12 = sub_2518EBED8(v10, v11, &v15);

    *(v8 + 4) = v12;
    *(v8 + 12) = 2053;
    *(v8 + 14) = a1;
    _os_log_impl(&dword_2518B7000, v6, v7, "%{public}s Camera luminosity updated: %{sensitive}f", v8, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x253086D30](v9, -1, -1);
    MEMORY[0x253086D30](v8, -1, -1);
  }

  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_2518C60F0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1 + qword_27F4646C8;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 8);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_2518C614C(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2 + qword_27F4646C8;
  swift_beginAccess();
  *(v3 + 8) = v2;
  return swift_unknownObjectWeakAssign();
}

void sub_2518C6400()
{
  if (!qword_27F4647F8)
  {
    v0 = sub_2518EFD38();
    if (!v1)
    {
      atomic_store(v0, &qword_27F4647F8);
    }
  }
}

uint64_t sub_2518C6460()
{
  v1 = sub_2518EF648();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_2518C652C(uint64_t a1)
{
  v3 = *(sub_2518EF648() - 8);
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1 + ((*(v3 + 80) + 48) & ~*(v3 + 80));

  return sub_2518C28C4(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_2518C65A4()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2518C65E8()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2518C6648()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

void sub_2518C6694()
{
  if (!qword_27F464818)
  {
    sub_2518C6838(255, &qword_27F464810, &type metadata for MedicationDataScanningCoordinatorState, MEMORY[0x277CBCEC0]);
    sub_2518BC1A8(255, &qword_27F464820);
    sub_2518C6754();
    sub_2518C67D0();
    v0 = sub_2518EFCB8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F464818);
    }
  }
}

unint64_t sub_2518C6754()
{
  result = qword_27F464828;
  if (!qword_27F464828)
  {
    sub_2518C6838(255, &qword_27F464810, &type metadata for MedicationDataScanningCoordinatorState, MEMORY[0x277CBCEC0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F464828);
  }

  return result;
}

unint64_t sub_2518C67D0()
{
  result = qword_27F464830;
  if (!qword_27F464830)
  {
    sub_2518BC1A8(255, &qword_27F464820);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F464830);
  }

  return result;
}

void sub_2518C6838(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_2518C6888()
{
  v1 = sub_2518EFAB8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

void sub_2518C694C(uint64_t a1)
{
  v3 = *(sub_2518EFAB8() - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  sub_2518BE4B4(a1, v4, v5);
}

uint64_t sub_2518C69C8()
{
  v1 = sub_2518EF648();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 56) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_2518C6AA4(uint64_t a1)
{
  v4 = *(sub_2518EF648() - 8);
  v5 = (*(v4 + 80) + 56) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = v1[6];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_2518C6BB0;

  return sub_2518BEFCC(a1, v6, v7, v8, v9, v10, v1 + v5);
}

uint64_t sub_2518C6BB0()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_2518C6CA4()
{
  v1 = sub_2518EF648();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_2518C6D70()
{
  v1 = *(sub_2518EF648() - 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = v0 + ((*(v1 + 80) + 32) & ~*(v1 + 80));

  return sub_2518BEF38(v2, v3, v4);
}

id sub_2518C6DD4(id result, uint64_t a2, char a3)
{
  if (a3 == 1)
  {
    v4 = result;
  }

  else if (!a3)
  {

    return result;
  }

  return result;
}

void sub_2518C6EE0()
{
  if (!qword_27F464850)
  {
    sub_2518BC1A8(255, &qword_27F464858);
    sub_2518C6F60();
    v0 = sub_2518F0258();
    if (!v1)
    {
      atomic_store(v0, &qword_27F464850);
    }
  }
}

unint64_t sub_2518C6F60()
{
  result = qword_27F464860;
  if (!qword_27F464860)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_27F464860);
  }

  return result;
}

uint64_t *__swift_allocate_boxed_opaque_existential_0(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_2518C7038(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

void sub_2518C70A4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_2518C7108()
{
  result = qword_27F464880;
  if (!qword_27F464880)
  {
    sub_2518C70A4(255, &qword_27F464878, MEMORY[0x277D85198], MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F464880);
  }

  return result;
}

uint64_t sub_2518C7190()
{
  v1 = sub_2518EF648();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v6 + 8, v3 | 7);
}

void sub_2518C723C()
{
  v1 = *(sub_2518EF648() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(v0 + v3);
  v5 = *(v0 + ((v3 + 15) & 0xFFFFFFFFFFFFFFF8));

  sub_2518C0588(v0 + v2, v4, v5);
}

uint64_t sub_2518C7340()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

void sub_2518C7390()
{
  if (!qword_27F464890)
  {
    sub_2518C6400();
    sub_2518C75DC(&qword_27F464898, sub_2518C6400);
    v0 = sub_2518EFC88();
    if (!v1)
    {
      atomic_store(v0, &qword_27F464890);
    }
  }
}

void sub_2518C7424()
{
  if (!qword_27F4648A0)
  {
    sub_2518C7390();
    sub_2518BC1A8(255, &qword_27F464820);
    sub_2518C75DC(&qword_27F4648A8, sub_2518C7390);
    sub_2518C67D0();
    v0 = sub_2518EFCB8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F4648A0);
    }
  }
}

uint64_t sub_2518C74F0()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

void sub_2518C7548()
{
  if (!qword_27F4648B8)
  {
    sub_2518EFF58();
    sub_2518C75DC(&qword_27F4648C0, MEMORY[0x277CE30B0]);
    v0 = sub_2518F06B8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F4648B8);
    }
  }
}

uint64_t sub_2518C75DC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for ScanResultSelectionViewController()
{
  result = qword_27F4648F0;
  if (!qword_27F4648F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2518C76E8()
{
  result = sub_2518EF648();
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

uint64_t sub_2518C77B0(uint64_t a1)
{
  sub_2518F0278();
  sub_2518F0268();
  sub_2518F0218();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_unknownObjectWeakInit();
  *(a1 + qword_27F4648E8) = 0;
  result = sub_2518F0778();
  __break(1u);
  return result;
}

void sub_2518C7890()
{
  v1 = qword_27F465008;
  v2 = sub_2518EF648();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  MEMORY[0x253086E00](v0 + qword_27F465018);
  v3 = *(v0 + qword_27F4648E8);
}

id sub_2518C7948()
{
  v1 = v0;
  v2 = qword_27F4648E8;
  v3 = *&v0[qword_27F4648E8];
  if (v3)
  {
    v4 = v3;
    sub_2518EF558();

    v3 = *&v1[v2];
  }

  *&v1[v2] = 0;

  v6.receiver = v1;
  v6.super_class = type metadata accessor for ScanResultSelectionViewController();
  return objc_msgSendSuper2(&v6, sel_dealloc);
}

void sub_2518C79E8(uint64_t a1)
{
  v2 = qword_27F465008;
  v3 = sub_2518EF648();
  (*(*(v3 - 8) + 8))(a1 + v2, v3);

  MEMORY[0x253086E00](a1 + qword_27F465018);
  v4 = *(a1 + qword_27F4648E8);
}

id sub_2518C7AA4()
{
  v8.receiver = v0;
  v8.super_class = type metadata accessor for ScanResultSelectionViewController();
  objc_msgSendSuper2(&v8, sel_viewDidLoad);
  result = [v0 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  v2 = result;
  [result setBackgroundColor_];

  result = [v0 view];
  if (!result)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v3 = result;
  [result setClipsToBounds_];

  result = [v0 collectionView];
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v4 = result;
  [result setBackgroundColor_];

  result = [v0 collectionView];
  if (result)
  {
    v5 = result;
    [result setClipsToBounds_];

    v7 = *&v0[qword_27F4648E0];

    v6 = v7;
    sub_2518EFD18();
  }

LABEL_9:
  __break(1u);
  return result;
}

void sub_2518C7C18(void *a1)
{
  sub_2518F0278();
  sub_2518F0268();
  sub_2518F0218();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = a1;
  sub_2518C7AA4();
}

void sub_2518C7CD0(void *a1)
{
  v2 = v1;
  v4 = sub_2518EF658();
  [a1 deselectItemAtIndexPath:v4 animated:1];

  v5 = sub_2518EF658();
  v9 = [a1 cellForItemAtIndexPath_];

  if (v9)
  {
    v6 = sub_2518EF678();
    v7 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      __break(1u);
    }

    else
    {
      type metadata accessor for ScanResultGroupCell();
      if (swift_dynamicCastClass())
      {
        v8 = v9;
        sub_2518C9DB4(v2, v7);
      }
    }
  }
}

uint64_t sub_2518C7DD0(void *a1, uint64_t a2, void *a3)
{
  v5 = sub_2518EF688();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2518F0278();
  sub_2518F0268();
  sub_2518F0218();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_2518EF668();
  v9 = a3;
  v10 = a1;
  sub_2518C7CD0(v9);

  (*(v6 + 8))(v8, v5);
}

uint64_t sub_2518C7F70()
{
  sub_2518F0278();
  sub_2518F0268();
  sub_2518F0218();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

id sub_2518C8004()
{
  v36 = [objc_allocWithZone(MEMORY[0x277CCAB48]) init];
  sub_2518F0408();
  sub_2518C9AB8(0, &qword_27F464930, sub_2518C9B4C, MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2518F1C30;
  v1 = *MEMORY[0x277D740A8];
  *(inited + 32) = *MEMORY[0x277D740A8];
  v2 = sub_2518BC1A8(0, &qword_27F464940);
  v3 = v1;
  *(inited + 40) = sub_2518F0468();
  v4 = *MEMORY[0x277D740C0];
  *(inited + 64) = v2;
  *(inited + 72) = v4;
  v5 = objc_opt_self();
  v6 = v4;
  v35 = v5;
  v7 = [v5 systemBlackColor];
  v34 = sub_2518BC1A8(0, &qword_27F464948);
  *(inited + 104) = v34;
  *(inited + 80) = v7;
  sub_2518E1358(inited);
  swift_setDeallocating();
  sub_2518C9B4C();
  swift_arrayDestroy();
  v8 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v9 = sub_2518F0088();

  type metadata accessor for Key(0);
  sub_2518CA2BC();
  v10 = sub_2518F0048();

  v11 = v8;
  v12 = v36;
  v13 = [v11 initWithString:v9 attributes:v10];

  [v36 appendAttributedString_];
  sub_2518F0438();
  if (v14)
  {
    v15 = swift_initStackObject();
    *(v15 + 16) = xmmword_2518F1C30;
    *(v15 + 32) = v3;
    v32 = objc_opt_self();
    v16 = *MEMORY[0x277D769D0];
    v31 = *MEMORY[0x277D769D0];
    v33 = v3;
    *(v15 + 40) = [v32 preferredFontForTextStyle_];
    *(v15 + 64) = v2;
    *(v15 + 72) = v6;
    v30 = v6;
    v17 = [v35 systemBlackColor];
    *(v15 + 104) = v34;
    *(v15 + 80) = v17;
    sub_2518E1358(v15);
    swift_setDeallocating();
    swift_arrayDestroy();
    v18 = objc_allocWithZone(MEMORY[0x277CCA898]);
    v19 = sub_2518F0088();
    v20 = sub_2518F0048();

    v21 = v18;
    v12 = v36;
    v22 = [v21 initWithString:v19 attributes:v20];

    [v36 0x2796D319BLL];
    v23 = swift_initStackObject();
    *(v23 + 16) = xmmword_2518F1C30;
    *(v23 + 32) = v33;
    *(v23 + 40) = [v32 preferredFontForTextStyle_];
    *(v23 + 64) = v2;
    *(v23 + 72) = v30;
    v24 = [v35 systemBlackColor];
    *(v23 + 104) = v34;
    *(v23 + 80) = v24;
    sub_2518E1358(v23);
    swift_setDeallocating();
    swift_arrayDestroy();
    v25 = objc_allocWithZone(MEMORY[0x277CCA898]);
    v26 = sub_2518F0088();

    v27 = sub_2518F0048();

    v28 = [v25 initWithString:v26 attributes:v27];

    [v36 0x2796D319BLL];
  }

  return v12;
}

id sub_2518C851C()
{
  sub_2518F0428();
  v1 = v0;
  if (v0)
  {
    sub_2518C9AB8(0, &qword_27F464930, sub_2518C9B4C, MEMORY[0x277D84560]);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2518F1C30;
    v3 = *MEMORY[0x277D740A8];
    *(inited + 32) = *MEMORY[0x277D740A8];
    v4 = objc_opt_self();
    v5 = *MEMORY[0x277D769D0];
    v6 = v3;
    v7 = [v4 preferredFontForTextStyle_];
    v8 = sub_2518BC1A8(0, &qword_27F464940);
    *(inited + 40) = v7;
    v9 = *MEMORY[0x277D740C0];
    *(inited + 64) = v8;
    *(inited + 72) = v9;
    v10 = objc_opt_self();
    v11 = v9;
    v12 = [v10 systemGrayColor];
    *(inited + 104) = sub_2518BC1A8(0, &qword_27F464948);
    *(inited + 80) = v12;
    sub_2518E1358(inited);
    swift_setDeallocating();
    sub_2518C9B4C();
    swift_arrayDestroy();
    v13 = objc_allocWithZone(MEMORY[0x277CCA898]);
    v14 = sub_2518F0088();

    type metadata accessor for Key(0);
    sub_2518CA2BC();
    v15 = sub_2518F0048();

    v1 = [v13 initWithString:v14 attributes:v15];
  }

  return v1;
}

uint64_t sub_2518C8740()
{
  sub_2518F0978();
  sub_2518F0148();
  sub_2518F0148();
  sub_2518F04B8();
  sub_2518F0998();
  MEMORY[0x253086690](*(v0 + 48));
  return sub_2518F09A8();
}

uint64_t sub_2518C87CC()
{
  v1 = *(v0 + 48);
  sub_2518F0148();
  sub_2518F0148();
  sub_2518F04B8();
  sub_2518F0998();
  return MEMORY[0x253086690](v1);
}

uint64_t sub_2518C8858()
{
  v1 = *(v0 + 48);
  sub_2518F0978();
  sub_2518F0148();
  sub_2518F0148();
  sub_2518F04B8();
  sub_2518F0998();
  MEMORY[0x253086690](v1);
  return sub_2518F09A8();
}

uint64_t sub_2518C8910(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  v8 = *(a2 + 40);
  v9 = *(a2 + 48);
  if ((*a1 != *a2 || *(a1 + 8) != *(a2 + 8)) && (sub_2518F0918() & 1) == 0 || (v2 != v6 || v3 != v7) && (sub_2518F0918() & 1) == 0)
  {
    return 0;
  }

  sub_2518BC1A8(0, &qword_27F464978);
  v10 = sub_2518F04A8() & (v4 == v8);
  if (v5 == v9)
  {
    return v10;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2518C8A0C()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_2518C8A3C()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_2518C8A6C(uint64_t a1)
{
  v2 = sub_2518CA54C();

  return MEMORY[0x282169440](a1, v2);
}

uint64_t sub_2518C8CB0()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v63 = sub_2518EFAF8();
  v2 = *(v63 - 1);
  MEMORY[0x28223BE20](v63);
  v4 = &v53 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x277D83D88];
  sub_2518C9AB8(0, &qword_27F464918, MEMORY[0x277D74BD0], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v6 - 8);
  v58 = &v53 - v7;
  v60 = sub_2518EFBA8();
  v59 = *(v60 - 8);
  MEMORY[0x28223BE20](v60);
  v9 = &v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = sub_2518EFB08();
  v54 = *(v55 - 8);
  MEMORY[0x28223BE20](v55);
  v11 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2518C9AB8(0, &qword_27F464920, MEMORY[0x277D74AC8], v5);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v53 - v13;
  v57 = sub_2518EFB48();
  v56 = *(v57 - 8);
  MEMORY[0x28223BE20](v57);
  v16 = &v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_2518EFC28();
  v62 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v19 = &v53 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = OBJC_IVAR____TtC25HealthMedicationsVisionUI19ScanResultGroupCell_item;
  swift_beginAccess();
  sub_2518C9A54(v1 + v20, v68);
  if (v69)
  {
    sub_2518CA380(0, &qword_27F464910);
    if (swift_dynamicCast())
    {
      v70[0] = v64;
      v70[1] = v65;
      v70[2] = v66;
      v71 = v67;
      sub_2518EFC18();
      sub_2518C8004();
      sub_2518EFBC8();
      v21 = sub_2518EFBD8();
      sub_2518EFBB8();
      v21(&v64, 0);
      v22 = sub_2518C851C();
      if (v22)
      {
        v63 = v22;
        sub_2518EFBE8();
        v23 = sub_2518EFBF8();
        sub_2518EFBB8();
        v23(&v64, 0);
        v24 = [v1 traitCollection];
        v25 = [v24 preferredContentSizeCategory];

        LOBYTE(v24) = sub_2518F03F8();
        if (v24)
        {
          v26 = sub_2518EFBF8();
          sub_2518EFBB8();
          v26(&v64, 0);
        }
      }

      sub_2518EFC08();
      *(&v65 + 1) = v17;
      *&v66 = MEMORY[0x277D74C30];
      v53 = v17;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v64);
      (*(v62 + 16))(boxed_opaque_existential_0, v19, v17);
      MEMORY[0x2530860E0](&v64);
      v28 = *MEMORY[0x277D74AC0];
      v29 = sub_2518EFB18();
      v30 = *(v29 - 8);
      (*(v30 + 104))(v14, v28, v29);
      (*(v30 + 56))(v14, 0, 1, v29);
      v31 = objc_opt_self();
      v32 = [v31 systemMidGrayColor];
      v33 = v16;
      sub_2518EFB38();
      sub_2518C9AB8(0, &qword_27F464928, MEMORY[0x277D74AE0], MEMORY[0x277D84560]);
      sub_2518EFB58();
      *(swift_allocObject() + 16) = xmmword_2518F1EA0;
      v34 = v54;
      v35 = v55;
      (*(v54 + 104))(v11, *MEMORY[0x277D74A98], v55);
      sub_2518EFB28();
      (*(v34 + 8))(v11, v35);
      sub_2518F0448();
      sub_2518EFB98();
      v36 = [v31 whiteColor];
      sub_2518EFB78();
      v37 = [objc_opt_self() effectWithStyle_];
      sub_2518EFB68();
      v38 = v59;
      v39 = v58;
      v40 = v60;
      (*(v59 + 16))(v58, v9, v60);
      (*(v38 + 56))(v39, 0, 1, v40);
      MEMORY[0x2530860F0](v39);
      sub_2518C9B1C(v70);
      (*(v38 + 8))(v9, v40);
      (*(v56 + 8))(v33, v57);
      return (*(v62 + 8))(v19, v53);
    }
  }

  else
  {
    sub_2518C99F8(v68);
  }

  sub_2518EFAC8();
  v42 = v1;
  v43 = sub_2518EFAE8();
  v44 = sub_2518F0318();

  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    *&v64 = v46;
    *v45 = 136315394;
    v47 = sub_2518F09F8();
    v49 = sub_2518EBED8(v47, v48, &v64);

    *(v45 + 4) = v49;
    *(v45 + 12) = 2080;
    sub_2518C9A54(v1 + v20, v70);
    sub_2518C998C();
    v50 = sub_2518F00E8();
    v52 = sub_2518EBED8(v50, v51, &v64);

    *(v45 + 14) = v52;
    _os_log_impl(&dword_2518B7000, v43, v44, "[%s] Expected a MedicationSearchItem, but received a %s", v45, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x253086D30](v46, -1, -1);
    MEMORY[0x253086D30](v45, -1, -1);
  }

  return (*(v2 + 8))(v4, v63);
}

id sub_2518C96E0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ScanResultGroupCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2518C9748@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC25HealthMedicationsVisionUI19ScanResultGroupCell_item;
  swift_beginAccess();
  return sub_2518C9A54(v1 + v3, a1);
}

uint64_t sub_2518C97A0(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC25HealthMedicationsVisionUI19ScanResultGroupCell_item;
  swift_beginAccess();
  sub_2518C9928(a1, v1 + v3);
  swift_endAccess();
  sub_2518C8CB0();
  return sub_2518C99F8(a1);
}

uint64_t (*sub_2518C980C(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_2518C9870;
}

uint64_t sub_2518C9870(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return sub_2518C8CB0();
  }

  return result;
}

uint64_t sub_2518C9928(uint64_t a1, uint64_t a2)
{
  sub_2518C998C();
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

void sub_2518C998C()
{
  if (!qword_27F464908)
  {
    sub_2518CA380(255, &qword_27F464910);
    v0 = sub_2518F05D8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F464908);
    }
  }
}

uint64_t sub_2518C99F8(uint64_t a1)
{
  sub_2518C998C();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2518C9A54(uint64_t a1, uint64_t a2)
{
  sub_2518C998C();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_2518C9AB8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_2518C9B4C()
{
  if (!qword_27F464938)
  {
    type metadata accessor for Key(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F464938);
    }
  }
}

uint64_t sub_2518C9BB8(void *a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_2518EF648();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_unknownObjectWeakInit();
  *(v4 + qword_27F4648E8) = 0;
  *(v4 + qword_27F4648D8) = a1;
  *(v4 + qword_27F4648E0) = a2;
  v12 = *(v9 + 16);
  v12(v4 + qword_27F465008, a3, v8);
  v12(v11, a3, v8);
  type metadata accessor for ScanResultSelectionDataSource();
  swift_allocObject();
  v13 = a1;
  v14 = a2;
  v15 = sub_2518E5090(v13, v11);
  *(v4 + qword_27F465010) = v15;
  sub_2518EF838();
  sub_2518CA314();
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_2518F1EA0;
  v17 = MEMORY[0x277D10F80];
  *(v16 + 32) = v15;
  *(v16 + 40) = v17;

  sub_2518EF848();
  v18 = sub_2518EF9B8();
  (*(v9 + 8))(a3, v8);
  return v18;
}

uint64_t sub_2518C9DB4(void *a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v7 = sub_2518EFAF8();
  v8 = *(v7 - 1);
  MEMORY[0x28223BE20](v7);
  v10 = v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR____TtC25HealthMedicationsVisionUI19ScanResultGroupCell_item;
  swift_beginAccess();
  sub_2518C9A54(v3 + v11, v48);
  if (!v48[3])
  {
    sub_2518C99F8(v48);
    goto LABEL_13;
  }

  sub_2518CA380(0, &qword_27F464910);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_13;
  }

  v43 = ObjectType;
  v41[1] = a2;
  v12 = v45;
  v13 = v46;
  v14 = v47;
  type metadata accessor for ScanResultSelectionViewController();
  v15 = swift_dynamicCastClass();
  if (!v15)
  {

LABEL_12:

LABEL_13:
    sub_2518EFAC8();
    v29 = v3;
    v30 = sub_2518EFAE8();
    v31 = sub_2518F0318();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v48[0] = v33;
      *v32 = 136315394;
      v34 = sub_2518F09F8();
      v36 = sub_2518EBED8(v34, v35, v48);
      v43 = v7;
      v37 = v36;

      *(v32 + 4) = v37;
      *(v32 + 12) = 2080;
      sub_2518C9A54(v3 + v11, v44);
      sub_2518C998C();
      v38 = sub_2518F00E8();
      v40 = sub_2518EBED8(v38, v39, v48);

      *(v32 + 14) = v40;
      _os_log_impl(&dword_2518B7000, v30, v31, "[%s] Expected a MedicationSearchItem, but received a %s", v32, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x253086D30](v33, -1, -1);
      MEMORY[0x253086D30](v32, -1, -1);

      return (*(v8 + 8))(v10, v43);
    }

    else
    {

      return (*(v8 + 8))(v10, v7);
    }
  }

  v16 = v15;
  v41[3] = v12;
  v42 = v14;
  v41[2] = v13;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {

    goto LABEL_12;
  }

  v18 = Strong;
  v19 = swift_unknownObjectWeakLoadStrong();
  v20 = v42;
  if (v19)
  {
    v21 = v19;
    v43 = a1;
    v22 = [v20 specificProduct];
    v23 = qword_27F465008;
    [v18 dismissViewControllerAnimated:0 completion:0];
    v24 = v21 + qword_27F4646C8;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v25 = *(v24 + 8);
      v26 = swift_getObjectType();
      (*(v25 + 8))(v21, v22, v16 + v23, *(v21 + qword_27F464720), 3, v26, v25);
      swift_unknownObjectRelease();
    }

    v27 = *(v21 + qword_27F464728);
    sub_2518EFA68();
    swift_allocObject();

    v27;
    sub_2518EFA58();
    sub_2518EFA88();
    sub_2518EFA78();

    swift_unknownObjectRelease();
  }

  else
  {
  }
}

unint64_t sub_2518CA2BC()
{
  result = qword_27F4646B0;
  if (!qword_27F4646B0)
  {
    type metadata accessor for Key(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4646B0);
  }

  return result;
}

void sub_2518CA314()
{
  if (!qword_27F464950)
  {
    sub_2518CA380(255, &qword_27F464958);
    v0 = sub_2518F0908();
    if (!v1)
    {
      atomic_store(v0, &qword_27F464950);
    }
  }
}

uint64_t sub_2518CA380(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
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

uint64_t sub_2518CA3F8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_2518CA440(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

unint64_t sub_2518CA4A0()
{
  result = qword_27F464960;
  if (!qword_27F464960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F464960);
  }

  return result;
}

unint64_t sub_2518CA4F8()
{
  result = qword_27F464968;
  if (!qword_27F464968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F464968);
  }

  return result;
}

unint64_t sub_2518CA54C()
{
  result = qword_27F464970;
  if (!qword_27F464970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F464970);
  }

  return result;
}

id sub_2518CA5D4()
{
  _s31HealthMedicationsVisionUIBundleCMa();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass_];
  qword_27F465030 = result;
  return result;
}

uint64_t sub_2518CA6B0(uint64_t a1)
{
  v3 = v1;

  return a1;
}

id sub_2518CA764()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MedicationDataScannerStatusView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_2518CA8CC()
{
  *(v0 + OBJC_IVAR____TtC25HealthMedicationsVisionUI31MedicationDataScannerStatusView____lazy_storage___blurView) = 0;
  *(v0 + OBJC_IVAR____TtC25HealthMedicationsVisionUI31MedicationDataScannerStatusView____lazy_storage___iconView) = 0;
  *(v0 + OBJC_IVAR____TtC25HealthMedicationsVisionUI31MedicationDataScannerStatusView____lazy_storage___titleLabel) = 0;
  *(v0 + OBJC_IVAR____TtC25HealthMedicationsVisionUI31MedicationDataScannerStatusView____lazy_storage___detailsLabel) = 0;
  *(v0 + OBJC_IVAR____TtC25HealthMedicationsVisionUI31MedicationDataScannerStatusView____lazy_storage___primaryButton) = 0;
  *(v0 + OBJC_IVAR____TtC25HealthMedicationsVisionUI31MedicationDataScannerStatusView____lazy_storage___secondaryButton) = 0;
  sub_2518F0778();
  __break(1u);
}

uint64_t sub_2518CA970@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  sub_2518CBDE4();
  swift_allocObject();
  v7 = a1;

  result = sub_2518EFD68();
  *a3 = result;
  return result;
}

void sub_2518CAA0C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  v36 = MEMORY[0x277D84F90];

  v9 = [a3 resolvedIds];
  sub_2518BC1A8(0, &qword_27F464868);
  v10 = sub_2518F01B8();

  if (v10 >> 62)
  {
    v29 = sub_2518F0648();
    if (sub_2518F0648() < 0)
    {
      __break(1u);
    }

    if (v29 >= 0xA)
    {
      v30 = 10;
    }

    else
    {
      v30 = v29;
    }

    if (v29 >= 0)
    {
      v12 = v30;
    }

    else
    {
      v12 = 10;
    }

    if (sub_2518F0648() >= v12)
    {
      goto LABEL_6;
    }

LABEL_25:
    __break(1u);
    return;
  }

  v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v11 >= 0xA)
  {
    v12 = 10;
  }

  else
  {
    v12 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v11 < v12)
  {
    goto LABEL_25;
  }

LABEL_6:
  if ((v10 & 0xC000000000000001) != 0)
  {

    if (v12)
    {
      v13 = 0;
      do
      {
        v14 = v13 + 1;
        sub_2518F06E8();
        v13 = v14;
      }

      while (v12 != v14);
    }
  }

  else
  {
  }

  if (v10 >> 62)
  {
    sub_2518F0798();
    v16 = v18;
    v15 = v19;
    v17 = v20;
  }

  else
  {
    v15 = 0;
    v16 = (v10 & 0xFFFFFFFFFFFFFF8) + 32;
    v17 = (2 * v12) | 1;
  }

  sub_2518CB944(v16, v15, v17, &v36);
  swift_unknownObjectRelease();
  v21 = swift_allocObject();
  *(v21 + 16) = sub_2518CBEA4;
  *(v21 + 24) = v8;
  v22 = objc_allocWithZone(MEMORY[0x277D11528]);
  sub_2518BC1A8(0, &qword_27F464A30);

  v23 = sub_2518F01A8();
  v34 = sub_2518CBEE4;
  v35 = v21;
  *&aBlock = MEMORY[0x277D85DD0];
  *(&aBlock + 1) = 1107296256;
  v32 = sub_2518EB81C;
  v33 = &block_descriptor_0;
  v24 = _Block_copy(&aBlock);
  v25 = [v22 initWithScanResult:v23 limit:10 resultsHandler:v24];

  _Block_release(v24);

  strcpy(&aBlock, "scan result: ");
  HIWORD(aBlock) = -4864;
  sub_2518CBF04(0, &qword_27F464A38, &qword_27F464A30);
  v26 = v25;
  v27 = sub_2518F0118();
  MEMORY[0x253085E70](v27);

  v28 = sub_2518F0088();

  [v26 setDebugIdentifier_];

  [v26 setQualityOfService_];
  [*(a4 + 16) executeQuery_];
}

uint64_t sub_2518CADD8(id *a1, void *a2)
{
  v3 = *a1;
  v4 = 0x2796D3000uLL;
  v5 = [*a1 subHgIds];
  sub_2518BC1A8(0, &qword_27F464A40);
  v6 = sub_2518F01B8();

  if (v6 >> 62)
  {
    goto LABEL_23;
  }

  for (i = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_2518F0648())
  {

    if (!i)
    {
      break;
    }

    v8 = [v3 *(v4 + 3912)];
    v9 = sub_2518F01B8();

    v18 = MEMORY[0x277D84F90];
    if (v9 >> 62)
    {
      v10 = sub_2518F0648();
    }

    else
    {
      v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v11 = 0;
    v4 = v9 & 0xC000000000000001;
    v3 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v10 == v11)
      {

        return sub_2518D4114(v3);
      }

      if (v4)
      {
        v12 = MEMORY[0x253086400](v11, v9);
      }

      else
      {
        if (v11 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_22;
        }

        v12 = *(v9 + 8 * v11 + 32);
      }

      a2 = v12;
      v13 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      v14 = [v12 hgId];
      v15 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];

      ++v11;
      if (v15)
      {
        MEMORY[0x253085EA0]();
        if (*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_2518F01D8();
        }

        sub_2518F01F8();
        v3 = v18;
        v11 = v13;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    ;
  }

  v17 = [v3 primaryHgId];
  [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  MEMORY[0x253085EA0]();
  if (*((*a2 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_2518F01D8();
  }

  return sub_2518F01F8();
}

void sub_2518CB09C(uint64_t a1, uint64_t a2, void *a3, void (*a4)(void, void), uint64_t a5)
{
  v9 = sub_2518EFAF8();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3)
  {
    v13 = a3;
    sub_2518EFAC8();
    v14 = a3;
    v15 = sub_2518EFAE8();
    v16 = sub_2518F0318();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v28[1] = a5;
      v18 = v17;
      v19 = swift_slowAlloc();
      v30 = v19;
      *v18 = 136446210;
      ErrorValue = swift_getErrorValue();
      v28[0] = v28;
      MEMORY[0x28223BE20](ErrorValue);
      v29 = a4;
      (*(v22 + 16))(v28 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
      v23 = sub_2518F00E8();
      v25 = sub_2518EBED8(v23, v24, &v30);
      a4 = v29;

      *(v18 + 4) = v25;
      _os_log_impl(&dword_2518B7000, v15, v16, "Failed to fetch medication clusters using the given resolver result: %{public}s", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v19);
      MEMORY[0x253086D30](v19, -1, -1);
      MEMORY[0x253086D30](v18, -1, -1);
    }

    (*(v10 + 8))(v12, v9);
    v26 = a3;
    a4(a3, 1);
  }

  else
  {
    if (a2)
    {
      v27 = a2;
    }

    else
    {
      v27 = MEMORY[0x277D84F90];
    }

    a4(v27, 0);
  }
}

uint64_t sub_2518CB3B0@<X0>(unint64_t *a1@<X8>)
{
  v36 = sub_2518EF648();
  v2 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v35 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_2518CB9E4();
  v5 = v4;
  v6 = v4 >> 62;
  if (v4 >> 62)
  {
    goto LABEL_33;
  }

  result = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (result >= 3)
  {
    v8 = 3;
  }

  else
  {
    v8 = result;
  }

  if (result < v8)
  {
LABEL_42:
    __break(1u);
  }

  else
  {
    while (1)
    {
      if ((v5 & 0xC000000000000001) == 0 || v8 == 0)
      {
      }

      else
      {
        sub_2518BC1A8(0, &qword_27F4649E8);

        sub_2518F06E8();
        if (v8 != 1)
        {
          sub_2518F06E8();
          if (v8 != 2)
          {
            sub_2518F06E8();
          }
        }
      }

      if (v6)
      {
        v13 = sub_2518F0798();
        v12 = v14;
        v10 = v15;
        v17 = v16;

        v11 = v13;
        v8 = v17 >> 1;
      }

      else
      {
        v10 = 0;
        v11 = v5 & 0xFFFFFFFFFFFFFF8;
        v12 = (v5 & 0xFFFFFFFFFFFFFF8) + 32;
      }

      v32 = v11;
      v33 = a1;
      swift_unknownObjectRetain();
      v6 = v8 - v10;
      if (v8 == v10)
      {
        break;
      }

      v34 = (v2 + 8);
      if (v8 <= v10)
      {
        v18 = v10;
      }

      else
      {
        v18 = v8;
      }

      a1 = (v18 - v10);
      v19 = (v12 + 8 * v10);
      v5 = MEMORY[0x277D84F90];
      while (a1)
      {
        v20 = *v19;
        type metadata accessor for ScanResultGroupCell();
        sub_2518CBD54(&qword_27F4649F0, type metadata accessor for ScanResultGroupCell);
        v21 = v20;
        v37 = sub_2518EF718();
        v23 = v22;
        v24 = v35;
        sub_2518EF638();
        v2 = sub_2518EF628();
        v26 = v25;
        (*v34)(v24, v36);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v5 = sub_2518DD818(0, *(v5 + 16) + 1, 1, v5);
        }

        v28 = *(v5 + 16);
        v27 = *(v5 + 24);
        if (v28 >= v27 >> 1)
        {
          v5 = sub_2518DD818((v27 > 1), v28 + 1, 1, v5);
        }

        *(v5 + 16) = v28 + 1;
        v29 = (v5 + 56 * v28);
        *(v29 + 4) = v2;
        *(v29 + 5) = v26;
        *(v29 + 6) = v37;
        *(v29 + 7) = v23;
        *(v29 + 8) = v21;
        *(v29 + 18) = 0;
        *(v29 + 10) = 0;
        a1 = (a1 - 1);
        ++v19;
        if (!--v6)
        {
          goto LABEL_20;
        }
      }

      __break(1u);
LABEL_33:
      v30 = sub_2518F0648();
      if (sub_2518F0648() < 0)
      {
        __break(1u);
      }

      if (v30 >= 3)
      {
        v31 = 3;
      }

      else
      {
        v31 = v30;
      }

      if (v30 >= 0)
      {
        v8 = v31;
      }

      else
      {
        v8 = 3;
      }

      result = sub_2518F0648();
      if (result < v8)
      {
        goto LABEL_42;
      }
    }

    v5 = MEMORY[0x277D84F90];
LABEL_20:
    result = swift_unknownObjectRelease_n();
    *v33 = v5;
  }

  return result;
}

uint64_t sub_2518CB748@<X0>(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 clinicalProducts];
  sub_2518BC1A8(0, &qword_27F464A18);
  v4 = sub_2518F01B8();

  if (!(v4 >> 62))
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
      goto LABEL_3;
    }

LABEL_11:

    v11 = MEMORY[0x277D84F90];
LABEL_12:
    v12 = sub_2518EEAEC(v11);

    *a2 = v12;
    return result;
  }

  v5 = sub_2518F0648();
  if (!v5)
  {
    goto LABEL_11;
  }

LABEL_3:
  v13 = MEMORY[0x277D84F90];
  result = sub_2518F0748();
  if ((v5 & 0x8000000000000000) == 0)
  {
    v7 = 0;
    do
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x253086400](v7, v4);
      }

      else
      {
        v8 = *(v4 + 8 * v7 + 32);
      }

      v9 = v8;
      ++v7;
      v10 = [v8 identifier];

      sub_2518F0728();
      sub_2518F0758();
      sub_2518F0768();
      sub_2518F0738();
    }

    while (v5 != v7);

    v11 = v13;
    goto LABEL_12;
  }

  __break(1u);
  return result;
}

uint64_t sub_2518CB8E8()
{

  return swift_deallocClassInstance();
}

void sub_2518CB944(uint64_t a1, uint64_t a2, unint64_t a3, void *a4)
{
  v5 = a3 >> 1;
  v6 = (a3 >> 1) - a2;
  if (a3 >> 1 != a2)
  {
    if (a2 > v5)
    {
      v5 = a2;
    }

    v8 = v5 - a2;
    v9 = (a1 + 8 * a2);
    while (v8)
    {
      v11 = *v9;
      v10 = v11;
      sub_2518CADD8(&v11, a4);

      if (!v4)
      {
        --v8;
        ++v9;
        if (--v6)
        {
          continue;
        }
      }

      return;
    }

    __break(1u);
  }
}

uint64_t sub_2518CB9E4()
{
  v0 = sub_2518BC1A8(0, &qword_27F4649E8);
  sub_2518CBC78();
  sub_2518CBD54(&qword_27F464A10, sub_2518CBC78);
  v1 = sub_2518F01E8();
  v2 = v1;
  v3 = v1 >> 62;
  if (v1 >> 62)
  {
    if (v1 < 0)
    {
      v6 = v1;
    }

    else
    {
      v6 = v1 & 0xFFFFFFFFFFFFFF8;
    }

    v7 = sub_2518F0648();
    if (sub_2518F0648() < 0)
    {
      __break(1u);
      goto LABEL_30;
    }

    if (v7 >= 3)
    {
      v15 = 3;
    }

    else
    {
      v15 = v7;
    }

    if ((v7 & 0x8000000000000000) == 0)
    {
      v5 = v15;
    }

    else
    {
      v5 = 3;
    }

    result = sub_2518F0648();
    if (result >= v5)
    {
LABEL_6:
      if ((v2 & 0xC000000000000001) != 0)
      {

        if (v5)
        {
          sub_2518F06E8();
          if (v5 != 1)
          {
            sub_2518F06E8();
            if (v5 != 2)
            {
              sub_2518F06E8();
            }
          }
        }
      }

      else
      {
      }

      if (v3)
      {
        v0 = sub_2518F0798();
        v3 = v8;
        v6 = v9;
        v7 = v10;

        if (v7)
        {
          goto LABEL_17;
        }
      }

      else
      {
        v6 = 0;
        v0 = v2 & 0xFFFFFFFFFFFFFF8;
        v3 = (v2 & 0xFFFFFFFFFFFFFF8) + 32;
        v7 = (2 * v5) | 1;
        if (v7)
        {
LABEL_17:
          sub_2518F0928();
          swift_unknownObjectRetain_n();
          v13 = swift_dynamicCastClass();
          if (!v13)
          {
            swift_unknownObjectRelease();
            v13 = MEMORY[0x277D84F90];
          }

          v14 = *(v13 + 16);

          if (!__OFSUB__(v7 >> 1, v6))
          {
            if (v14 == (v7 >> 1) - v6)
            {
              v12 = swift_dynamicCastClass();
              swift_unknownObjectRelease_n();
              if (v12)
              {
                return v12;
              }

              v12 = MEMORY[0x277D84F90];
LABEL_23:
              swift_unknownObjectRelease();
              return v12;
            }

            goto LABEL_31;
          }

LABEL_30:
          __break(1u);
LABEL_31:
          swift_unknownObjectRelease_n();
        }
      }

      sub_2518DE3EC(v0, v3, v6, v7);
      v12 = v11;
      goto LABEL_23;
    }
  }

  else
  {
    result = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result >= 3)
    {
      v5 = 3;
    }

    else
    {
      v5 = result;
    }

    if (result >= v5)
    {
      goto LABEL_6;
    }
  }

  __break(1u);
  return result;
}

void sub_2518CBC78()
{
  if (!qword_27F4649F8)
  {
    sub_2518BC1A8(255, &qword_27F464A00);
    sub_2518CBCEC();
    v0 = sub_2518F02F8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F4649F8);
    }
  }
}

unint64_t sub_2518CBCEC()
{
  result = qword_27F464A08;
  if (!qword_27F464A08)
  {
    sub_2518BC1A8(255, &qword_27F464A00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F464A08);
  }

  return result;
}

uint64_t sub_2518CBD54(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2518CBD9C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

void sub_2518CBDE4()
{
  if (!qword_27F464A20)
  {
    sub_2518CBF04(255, &qword_27F464A28, &qword_27F4649E8);
    sub_2518C6F60();
    v0 = sub_2518EFD58();
    if (!v1)
    {
      atomic_store(v0, &qword_27F464A20);
    }
  }
}

uint64_t sub_2518CBE6C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2518CBEA4(uint64_t a1, char a2)
{
  v3 = *(v2 + 16);
  v5 = a1;
  v6 = a2 & 1;
  return v3(&v5);
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_2518CBF04(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  if (!*a2)
  {
    sub_2518BC1A8(255, a3);
    v4 = sub_2518F0208();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_2518CBF60(uint64_t a1)
{
  v2 = &v1[OBJC_IVAR____TtC25HealthMedicationsVisionUI10CutoutView_cutoutFrame];
  if (*(a1 + 32))
  {
    if (v1[OBJC_IVAR____TtC25HealthMedicationsVisionUI10CutoutView_cutoutFrame + 32])
    {
      return;
    }
  }

  else if ((v1[OBJC_IVAR____TtC25HealthMedicationsVisionUI10CutoutView_cutoutFrame + 32] & 1) == 0 && CGRectEqualToRect(*a1, *v2))
  {
    return;
  }

  v3 = sub_2518CC304();
  if (v2[4])
  {
    [v1 bounds];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;
  }

  else
  {
    v9 = v2[2];
    v11 = v2[3];
    v5 = *v2;
    v7 = v2[1];
  }

  v12 = objc_opt_self();
  v13 = [v12 bezierPathWithRoundedRect:v5 cornerRadius:{v7, v9, v11, 44.0}];
  [v1 bounds];
  v14 = [v12 bezierPathWithRect_];
  [v13 appendPath_];

  v15 = [v13 CGPath];
  [v3 setPath_];

  v20 = sub_2518CC41C();
  if (v2[4])
  {
    [v1 bounds];
  }

  else
  {
    v18 = v2[2];
    v19 = v2[3];
    v16 = *v2;
    v17 = v2[1];
  }

  [v20 setFrame_];
}

id sub_2518CC144()
{
  v1 = OBJC_IVAR____TtC25HealthMedicationsVisionUI10CutoutView____lazy_storage___blurView;
  v2 = *(v0 + OBJC_IVAR____TtC25HealthMedicationsVisionUI10CutoutView____lazy_storage___blurView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC25HealthMedicationsVisionUI10CutoutView____lazy_storage___blurView);
  }

  else
  {
    v4 = [objc_opt_self() effectWithStyle_];
    v5 = [objc_allocWithZone(MEMORY[0x277D75D68]) initWithEffect_];
    [v5 setAlpha_];

    v6 = *(v0 + v1);
    *(v0 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

char *sub_2518CC204()
{
  v1 = OBJC_IVAR____TtC25HealthMedicationsVisionUI10CutoutView____lazy_storage___checkmarkView;
  v2 = *(v0 + OBJC_IVAR____TtC25HealthMedicationsVisionUI10CutoutView____lazy_storage___checkmarkView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC25HealthMedicationsVisionUI10CutoutView____lazy_storage___checkmarkView);
  }

  else
  {
    v4 = v0;
    v5 = objc_allocWithZone(type metadata accessor for MedsCompletionCheckmarkView());
    v6 = sub_2518D05DC(80.0);
    [v6 sizeToFit];
    v7 = *(v4 + v1);
    *(v4 + v1) = v6;
    v3 = v6;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

id sub_2518CC290()
{
  v1 = OBJC_IVAR____TtC25HealthMedicationsVisionUI10CutoutView____lazy_storage___backgroundLayer;
  v2 = *(v0 + OBJC_IVAR____TtC25HealthMedicationsVisionUI10CutoutView____lazy_storage___backgroundLayer);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC25HealthMedicationsVisionUI10CutoutView____lazy_storage___backgroundLayer);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x277CD9F90]) init];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_2518CC304()
{
  v1 = OBJC_IVAR____TtC25HealthMedicationsVisionUI10CutoutView____lazy_storage___backgroundLayerMask;
  v2 = *(v0 + OBJC_IVAR____TtC25HealthMedicationsVisionUI10CutoutView____lazy_storage___backgroundLayerMask);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC25HealthMedicationsVisionUI10CutoutView____lazy_storage___backgroundLayerMask);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x277CD9F90]) init];
    [v4 setFillRule_];
    v5 = objc_opt_self();
    v6 = v4;
    v7 = [v5 whiteColor];
    v8 = [v7 CGColor];

    [v6 setBackgroundColor_];
    [v6 setOpaque_];

    v9 = *(v0 + v1);
    *(v0 + v1) = v6;
    v3 = v6;

    v2 = 0;
  }

  v10 = v2;
  return v3;
}

char *sub_2518CC43C(double a1, double a2, double a3, double a4)
{
  v9 = &v4[OBJC_IVAR____TtC25HealthMedicationsVisionUI10CutoutView_cutoutFrame];
  *v9 = 0u;
  *(v9 + 1) = 0u;
  v9[32] = 1;
  *&v4[OBJC_IVAR____TtC25HealthMedicationsVisionUI10CutoutView_borderWidth] = 0x4018000000000000;
  *&v4[OBJC_IVAR____TtC25HealthMedicationsVisionUI10CutoutView_cornerRadius] = 0x4046000000000000;
  *&v4[OBJC_IVAR____TtC25HealthMedicationsVisionUI10CutoutView_checkmarkDiameter] = 0x4054000000000000;
  *&v4[OBJC_IVAR____TtC25HealthMedicationsVisionUI10CutoutView_expansionAmountForOutlineBox] = 0x402C000000000000;
  *&v4[OBJC_IVAR____TtC25HealthMedicationsVisionUI10CutoutView_animationSquishAmount] = 0x4018000000000000;
  *&v4[OBJC_IVAR____TtC25HealthMedicationsVisionUI10CutoutView____lazy_storage___blurView] = 0;
  *&v4[OBJC_IVAR____TtC25HealthMedicationsVisionUI10CutoutView____lazy_storage___checkmarkView] = 0;
  *&v4[OBJC_IVAR____TtC25HealthMedicationsVisionUI10CutoutView____lazy_storage___backgroundLayer] = 0;
  *&v4[OBJC_IVAR____TtC25HealthMedicationsVisionUI10CutoutView____lazy_storage___backgroundLayerMask] = 0;
  *&v4[OBJC_IVAR____TtC25HealthMedicationsVisionUI10CutoutView____lazy_storage___borderLayer] = 0;
  v72.receiver = v4;
  v72.super_class = type metadata accessor for CutoutView();
  v10 = objc_msgSendSuper2(&v72, sel_initWithFrame_, a1, a2, a3, a4);
  v11 = sub_2518CC144();
  [v10 addSubview_];

  v12 = *&v10[OBJC_IVAR____TtC25HealthMedicationsVisionUI10CutoutView____lazy_storage___blurView];
  [v10 bounds];
  [v12 setFrame_];

  v13 = [v10 layer];
  v14 = sub_2518CC290();
  [v13 addSublayer_];

  v15 = OBJC_IVAR____TtC25HealthMedicationsVisionUI10CutoutView____lazy_storage___backgroundLayer;
  v16 = *&v10[OBJC_IVAR____TtC25HealthMedicationsVisionUI10CutoutView____lazy_storage___backgroundLayer];
  [v10 bounds];
  [v16 setFrame_];

  v17 = [v10 layer];
  v18 = sub_2518CC41C();
  [v17 addSublayer_];

  v19 = *&v10[OBJC_IVAR____TtC25HealthMedicationsVisionUI10CutoutView____lazy_storage___borderLayer];
  v20 = &v10[OBJC_IVAR____TtC25HealthMedicationsVisionUI10CutoutView_cutoutFrame];
  if (v10[OBJC_IVAR____TtC25HealthMedicationsVisionUI10CutoutView_cutoutFrame + 32])
  {
    v21 = v19;
    [v10 bounds];
  }

  else
  {
    v27 = v20[2];
    v26 = v20[3];
    v29 = *v20;
    v28 = v20[1];
    v30 = v19;
    v22 = v29;
    v23 = v28;
    v24 = v27;
    v25 = v26;
    v21 = v30;
  }

  [v21 setFrame_];

  v31 = *&v10[v15];
  v32 = sub_2518CC304();
  [v31 setMask_];

  v33 = *&v10[OBJC_IVAR____TtC25HealthMedicationsVisionUI10CutoutView____lazy_storage___backgroundLayerMask];
  if (v20[4])
  {
    v34 = v33;
    [v10 bounds];
    v36 = v35;
    v38 = v37;
    v40 = v39;
    v42 = v41;
  }

  else
  {
    v40 = v20[2];
    v42 = v20[3];
    v36 = *v20;
    v38 = v20[1];
    v34 = v33;
  }

  v43 = objc_opt_self();
  v44 = [v43 bezierPathWithRoundedRect:v36 cornerRadius:{v38, v40, v42, 44.0}];
  [v10 bounds];
  v45 = [v43 bezierPathWithRect_];
  [v44 appendPath_];

  v46 = [v44 CGPath];
  [v34 setPath_];

  v47 = sub_2518CC204();
  [v10 addSubview_];

  v48 = OBJC_IVAR____TtC25HealthMedicationsVisionUI10CutoutView____lazy_storage___checkmarkView;
  v49 = *&v10[OBJC_IVAR____TtC25HealthMedicationsVisionUI10CutoutView____lazy_storage___checkmarkView];
  if (v20[4])
  {
    v50 = v49;
    [v10 bounds];
  }

  else
  {
    v56 = *(v20 + 2);
    v55 = *(v20 + 3);
    v58 = *v20;
    v57 = *(v20 + 1);
    v59 = v49;
    v51 = v58;
    v52 = v57;
    v53 = v56;
    v54 = v55;
  }

  MidX = CGRectGetMidX(*&v51);
  if (v20[4])
  {
    [v10 bounds];
  }

  else
  {
    v63 = *(v20 + 2);
    v64 = *(v20 + 3);
    v61 = *v20;
    v62 = *(v20 + 1);
  }

  [v49 setCenter_];

  [*&v10[v48] setAlpha_];
  v65 = *&v10[v15];
  v66 = objc_opt_self();
  v67 = v65;
  v68 = [v66 blackColor];
  v69 = [v68 colorWithAlphaComponent_];

  v70 = [v69 CGColor];
  [v67 setBackgroundColor_];

  return v10;
}

uint64_t sub_2518CCA1C(uint64_t a1)
{
  v3 = v1;

  return a1;
}

void sub_2518CCA44()
{
  v14.receiver = v0;
  v14.super_class = type metadata accessor for CutoutView();
  objc_msgSendSuper2(&v14, sel_layoutSubviews);
  v1 = sub_2518CC144();
  [v0 bounds];
  [v1 setFrame_];

  v2 = sub_2518CC204();
  v3 = &v0[OBJC_IVAR____TtC25HealthMedicationsVisionUI10CutoutView_cutoutFrame];
  if (v0[OBJC_IVAR____TtC25HealthMedicationsVisionUI10CutoutView_cutoutFrame + 32])
  {
    [v0 bounds];
  }

  else
  {
    v6 = *(v3 + 2);
    v7 = *(v3 + 3);
    v4 = *v3;
    v5 = *(v3 + 1);
  }

  MidX = CGRectGetMidX(*&v4);
  if (v3[32])
  {
    [v0 bounds];
  }

  else
  {
    v11 = *(v3 + 2);
    v12 = *(v3 + 3);
    v9 = *v3;
    v10 = *(v3 + 1);
  }

  [v2 setCenter_];

  v13 = sub_2518CC290();
  [v0 bounds];
  [v13 setFrame_];
}

double sub_2518CCBBC(void *a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  sub_2518F0278();
  sub_2518F0268();
  sub_2518F0218();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v9.receiver = a1;
  v9.super_class = type metadata accessor for CutoutView();
  objc_msgSendSuper2(&v9, *a4);
  v7 = v6;

  return v7;
}

void sub_2518CCCB8(void *a1, double a2, double a3, double a4, double a5, uint64_t a6, uint64_t a7, SEL *a8, SEL *a9)
{
  sub_2518F0278();
  sub_2518F0268();
  sub_2518F0218();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v16 = a1;
  sub_2518CCDC4(a8, a9, a2, a3, a4, a5);
}

void sub_2518CCDC4(SEL *a1, SEL *a2, double a3, double a4, double a5, double a6)
{
  v13 = type metadata accessor for CutoutView();
  v33.receiver = v6;
  v33.super_class = v13;
  objc_msgSendSuper2(&v33, *a1);
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v32.receiver = v6;
  v32.super_class = v13;
  objc_msgSendSuper2(&v32, *a2, a3, a4, a5, a6);
  [v6 *a1];
  v35.origin.x = v22;
  v35.origin.y = v23;
  v35.size.width = v24;
  v35.size.height = v25;
  v34.origin.x = v15;
  v34.origin.y = v17;
  v34.size.width = v19;
  v34.size.height = v21;
  if (!CGRectEqualToRect(v34, v35))
  {
    v26 = sub_2518CC41C();
    v27 = &v6[OBJC_IVAR____TtC25HealthMedicationsVisionUI10CutoutView_cutoutFrame];
    if (v6[OBJC_IVAR____TtC25HealthMedicationsVisionUI10CutoutView_cutoutFrame + 32])
    {
      [v6 bounds];
    }

    else
    {
      v30 = v27[2];
      v31 = v27[3];
      v28 = *v27;
      v29 = v27[1];
    }

    [v26 setFrame_];
  }
}

void sub_2518CCEF0(void (*a1)(), uint64_t a2, double a3)
{
  v4 = v3;
  sub_2518D3844(0, &qword_27F464660, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_2518F2190;
  sub_2518BC1A8(0, &qword_27F464A30);
  *(v8 + 32) = sub_2518F0488();
  *(v8 + 40) = sub_2518F0488();
  *(v8 + 48) = sub_2518F0488();
  *(v8 + 56) = sub_2518F0488();
  v9 = objc_opt_self();
  [v9 begin];
  [v9 setAnimationDuration_];
  v168 = a1;
  v169 = a2;
  *&aBlock = MEMORY[0x277D85DD0];
  *(&aBlock + 1) = 1107296256;
  v166 = sub_2518C03A8;
  v167 = &block_descriptor_101;
  v10 = _Block_copy(&aBlock);

  v159 = v9;
  [v9 setCompletionBlock_];
  _Block_release(v10);
  v11 = &v4[OBJC_IVAR____TtC25HealthMedicationsVisionUI10CutoutView_cutoutFrame];
  if (v4[OBJC_IVAR____TtC25HealthMedicationsVisionUI10CutoutView_cutoutFrame + 32])
  {
    [v4 bounds];
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v19 = v18;
  }

  else
  {
    v17 = v11[2];
    v19 = v11[3];
    v13 = *v11;
    v15 = v11[1];
  }

  v20 = objc_opt_self();
  v21 = [v20 bezierPathWithRoundedRect:v13 cornerRadius:{v15, v17, v19, 44.0}];
  [v4 bounds];
  v22 = [v20 bezierPathWithRect_];
  [v21 appendPath_];

  v23 = [v21 CGPath];
  if (v11[4])
  {
    [v4 bounds];
  }

  else
  {
    v26 = *(v11 + 2);
    v27 = *(v11 + 3);
    v24 = *v11;
    v25 = *(v11 + 1);
  }

  v170 = CGRectInset(*&v24, -14.0, -14.0);
  v28 = [v20 bezierPathWithRoundedRect:v170.origin.x cornerRadius:{v170.origin.y, v170.size.width, v170.size.height, 44.0}];
  [v4 bounds];
  v29 = [v20 bezierPathWithRect_];
  [v28 appendPath_];

  v30 = [v28 CGPath];
  if (v11[4])
  {
    [v4 bounds];
    v32 = v31;
    v34 = v33;
    v36 = v35;
    v38 = v37;
  }

  else
  {
    v36 = v11[2];
    v38 = v11[3];
    v32 = *v11;
    v34 = v11[1];
  }

  v171.origin.x = v32;
  v171.origin.y = v34;
  v171.size.width = v36;
  v171.size.height = v38;
  v39 = CGRectGetWidth(v171) * 0.5 + -0.1;
  v172.origin.x = v32;
  v172.origin.y = v34;
  v172.size.width = v36;
  v172.size.height = v38;
  v40 = CGRectGetHeight(v172) * 0.5 + -0.1;
  v173.origin.x = v32;
  v173.origin.y = v34;
  v173.size.width = v36;
  v173.size.height = v38;
  v174 = CGRectInset(v173, v39, v40);
  v41 = [v20 bezierPathWithRoundedRect:v174.origin.x cornerRadius:{v174.origin.y, v174.size.width, v174.size.height, CGRectGetWidth(v174) * 0.5}];
  [v4 bounds];
  v42 = [v20 bezierPathWithRect_];
  [v41 appendPath_];

  v43 = [v41 CGPath];
  v44 = sub_2518F0088();
  v45 = objc_opt_self();
  v46 = [v45 animationWithKeyPath_];

  sub_2518D3844(0, &qword_27F464B40, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84560]);
  v47 = swift_allocObject();
  *(v47 + 16) = xmmword_2518F21A0;
  type metadata accessor for CGPath(0);
  *(v47 + 32) = v23;
  *(v47 + 56) = v48;
  *(v47 + 64) = v30;
  *(v47 + 120) = v48;
  *(v47 + 88) = v48;
  *(v47 + 96) = v43;
  v158 = v23;
  v49 = v30;
  v157 = v43;
  v50 = sub_2518F01A8();

  [v46 setValues_];

  v51 = sub_2518F01A8();
  [v46 setKeyTimes_];

  v52 = sub_2518CC304();
  v53 = [v46 values];
  if (!v53)
  {
    goto LABEL_47;
  }

  v54 = v53;
  v55 = sub_2518F01B8();

  v56 = sub_2518E2D04(v55);

  if (v56 >> 62)
  {
    v57 = sub_2518F0648();
  }

  else
  {
    v57 = *((v56 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v58 = v45;
  v156 = v49;
  if (!v57)
  {
    v62 = 0;
    goto LABEL_21;
  }

  v59 = __OFSUB__(v57, 1);
  v60 = v57 - 1;
  if (v59)
  {
    goto LABEL_43;
  }

  if ((v56 & 0xC000000000000001) != 0)
  {
    goto LABEL_44;
  }

  if ((v60 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_46;
  }

  if (v60 >= *((v56 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  for (i = *(v56 + 8 * v60 + 32); ; i = MEMORY[0x253086400](v60, v56))
  {
    v62 = i;
LABEL_21:

    [v52 setPath_];

    v63 = *&v4[OBJC_IVAR____TtC25HealthMedicationsVisionUI10CutoutView____lazy_storage___backgroundLayerMask];
    v64 = sub_2518F0088();
    [v63 addAnimation:v46 forKey:v64];

    v65 = sub_2518F0088();
    v66 = [v58 animationWithKeyPath_];

    v67 = swift_allocObject();
    *(v67 + 16) = xmmword_2518F21A0;
    if (v11[4])
    {
      [v4 bounds];
      v69 = v68;
      v71 = v70;
      v73 = v72;
      v75 = v74;
    }

    else
    {
      v73 = *(v11 + 2);
      v75 = *(v11 + 3);
      v69 = *v11;
      v71 = *(v11 + 1);
    }

    type metadata accessor for CGRect(0);
    v77 = v76;
    *(v67 + 56) = v76;
    v78 = swift_allocObject();
    *(v67 + 32) = v78;
    v78[2] = v69;
    *(v78 + 3) = v71;
    *(v78 + 4) = v73;
    *(v78 + 5) = v75;
    if (v11[4])
    {
      [v4 bounds];
    }

    else
    {
      v81 = *(v11 + 2);
      v82 = *(v11 + 3);
      v79 = *v11;
      v80 = *(v11 + 1);
    }

    v175 = CGRectInset(*&v79, -14.0, -14.0);
    x = v175.origin.x;
    y = v175.origin.y;
    width = v175.size.width;
    height = v175.size.height;
    *(v67 + 88) = v77;
    v87 = swift_allocObject();
    *(v67 + 64) = v87;
    v87[2] = x;
    v87[3] = y;
    v87[4] = width;
    v87[5] = height;
    if (v11[4])
    {
      [v4 bounds];
      v89 = v88;
      v91 = v90;
      v93 = v92;
      v95 = v94;
    }

    else
    {
      v93 = v11[2];
      v95 = v11[3];
      v89 = *v11;
      v91 = v11[1];
    }

    v155 = v46;
    v176.origin.x = v89;
    v176.origin.y = v91;
    v176.size.width = v93;
    v176.size.height = v95;
    v96 = CGRectGetWidth(v176) * 0.5 + -0.1;
    v177.origin.x = v89;
    v177.origin.y = v91;
    v177.size.width = v93;
    v177.size.height = v95;
    v97 = CGRectGetHeight(v177) * 0.5 + -0.1;
    v178.origin.x = v89;
    v178.origin.y = v91;
    v178.size.width = v93;
    v178.size.height = v95;
    v179 = CGRectInset(v178, v96, v97);
    v98 = v179.origin.x;
    v99 = v179.origin.y;
    v100 = v179.size.width;
    v101 = v179.size.height;
    *(v67 + 120) = v77;
    v102 = swift_allocObject();
    *(v67 + 96) = v102;
    v102[2] = v98;
    v102[3] = v99;
    v102[4] = v100;
    v102[5] = v101;
    v103 = sub_2518F01A8();

    [v66 setValues_];

    v104 = sub_2518F01A8();
    [v66 setKeyTimes_];

    v105 = sub_2518CC41C();
    v106 = [v66 values];
    if (!v106)
    {
      break;
    }

    v107 = v106;
    v108 = sub_2518F01B8();

    v109 = *(v108 + 16);
    if (!v109)
    {
      goto LABEL_49;
    }

    sub_2518C7038(v108 + 32 * v109, v164);

    sub_2518D38A4(v164, &aBlock);
    swift_dynamicCast();
    [v105 setBounds_];

    v110 = OBJC_IVAR____TtC25HealthMedicationsVisionUI10CutoutView____lazy_storage___borderLayer;
    v111 = *&v4[OBJC_IVAR____TtC25HealthMedicationsVisionUI10CutoutView____lazy_storage___borderLayer];
    v112 = sub_2518F0088();
    v154 = v66;
    [v111 addAnimation:v66 forKey:v112];

    v113 = sub_2518F0088();
    v52 = [v58 animationWithKeyPath_];

    v114 = swift_allocObject();
    *(v114 + 16) = xmmword_2518F21A0;
    [*&v4[v110] cornerRadius];
    v115 = MEMORY[0x277D85048];
    *(v114 + 56) = MEMORY[0x277D85048];
    *(v114 + 32) = v116;
    [*&v4[v110] cornerRadius];
    *(v114 + 88) = v115;
    *(v114 + 64) = v117;
    if (v11[4])
    {
      [v4 bounds];
      v119 = v118;
      v121 = v120;
      v123 = v122;
      v125 = v124;
    }

    else
    {
      v123 = v11[2];
      v125 = v11[3];
      v119 = *v11;
      v121 = v11[1];
    }

    v180.origin.x = v119;
    v180.origin.y = v121;
    v180.size.width = v123;
    v180.size.height = v125;
    v126 = CGRectGetWidth(v180) * 0.5 + -0.1;
    v181.origin.x = v119;
    v181.origin.y = v121;
    v181.size.width = v123;
    v181.size.height = v125;
    v127 = CGRectGetHeight(v181) * 0.5 + -0.1;
    v182.origin.x = v119;
    v182.origin.y = v121;
    v182.size.width = v123;
    v182.size.height = v125;
    v183 = CGRectInset(v182, v126, v127);
    v128 = CGRectGetWidth(v183);
    *(v114 + 120) = v115;
    *(v114 + 96) = v128 * 0.5;
    v11 = MEMORY[0x277D84F70];
    v129 = sub_2518F01A8();

    [v52 setValues_];

    v130 = sub_2518F01A8();
    [v52 setKeyTimes_];

    v131 = *&v4[v110];
    v132 = [v52 values];
    if (!v132)
    {
      goto LABEL_50;
    }

    v133 = v132;
    v134 = sub_2518F01B8();

    v135 = *(v134 + 16);
    if (!v135)
    {
      goto LABEL_51;
    }

    v46 = 0x7974696361706FLL;
    sub_2518C7038(v134 + 32 * v135, v164);

    sub_2518D38A4(v164, &aBlock);
    swift_dynamicCast();
    [v131 setCornerRadius_];

    v136 = *&v4[v110];
    v137 = sub_2518F0088();
    [v136 addAnimation:v52 forKey:v137];

    v138 = sub_2518F0088();
    v56 = [v58 animationWithKeyPath_];

    v139 = swift_allocObject();
    *(v139 + 16) = xmmword_2518F21A0;
    v140 = MEMORY[0x277D83A90];
    *(v139 + 56) = MEMORY[0x277D83A90];
    *(v139 + 32) = 1065353216;
    *(v139 + 88) = v140;
    *(v139 + 64) = 1065353216;
    *(v139 + 120) = v140;
    *(v139 + 96) = 0;
    v141 = sub_2518F01A8();

    [v56 setValues_];

    v142 = sub_2518F01A8();
    [v56 setKeyTimes_];

    v143 = *&v4[v110];
    v144 = [v56 values];
    if (!v144)
    {
      goto LABEL_52;
    }

    v145 = v144;
    v58 = sub_2518F01B8();

    v146 = v58[2];
    if (!v146)
    {
      goto LABEL_53;
    }

    if (v146 <= v58[2])
    {
      sub_2518C7038(&v58[4 * v146], v164);

      sub_2518D38A4(v164, &aBlock);
      swift_dynamicCast();
      LODWORD(v147) = LODWORD(v160);
      [v143 setOpacity_];

      v148 = *&v4[v110];
      v149 = sub_2518F0088();
      [v148 addAnimation:v56 forKey:v149];

      v150 = objc_opt_self();
      v151 = swift_allocObject();
      *(v151 + 16) = v4;
      v168 = sub_2518D3924;
      v169 = v151;
      *&aBlock = MEMORY[0x277D85DD0];
      *(&aBlock + 1) = 1107296256;
      v166 = sub_2518C03A8;
      v167 = &block_descriptor_110;
      v152 = _Block_copy(&aBlock);
      v153 = v4;

      [v150 animateWithDuration:0 delay:v152 options:0 animations:(a3 + a3) / 3.0 completion:a3 / 3.0];
      _Block_release(v152);
      [v159 commit];

      return;
    }

    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    ;
  }

LABEL_48:
  __break(1u);
LABEL_49:

  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:

  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:

  __break(1u);
}

void sub_2518CDE90(uint64_t a1, uint64_t a2, double a3, CGFloat a4)
{
  v5 = v4;
  if (a4 == 0.0)
  {
    v10 = 0.0;
  }

  else
  {
    v10 = 10.0;
  }

  sub_2518D3844(0, &qword_27F464660, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_2518F21B0;
  sub_2518BC1A8(0, &qword_27F464A30);
  *(v11 + 32) = sub_2518F0488();
  *(v11 + 40) = sub_2518F0488();
  *(v11 + 48) = sub_2518F0488();
  *(v11 + 56) = sub_2518F0488();
  *(v11 + 64) = sub_2518F0488();
  v12 = objc_opt_self();
  [v12 begin];
  [v12 setAnimationDuration_];
  v13 = [objc_opt_self() functionWithName_];
  [v12 setAnimationTimingFunction_];

  v14 = swift_allocObject();
  v14[2] = v5;
  v14[3] = a1;
  v14[4] = a2;
  *&aBlock.m21 = sub_2518D3838;
  *&aBlock.m22 = v14;
  *&aBlock.m11 = MEMORY[0x277D85DD0];
  *&aBlock.m12 = 1107296256;
  *&aBlock.m13 = sub_2518C03A8;
  *&aBlock.m14 = &block_descriptor_86;
  v15 = _Block_copy(&aBlock);
  v16 = v5;

  v215 = v12;
  [v12 setCompletionBlock_];
  _Block_release(v15);
  v17 = &v16[OBJC_IVAR____TtC25HealthMedicationsVisionUI10CutoutView_cutoutFrame];
  if (v16[OBJC_IVAR____TtC25HealthMedicationsVisionUI10CutoutView_cutoutFrame + 32])
  {
    [v16 bounds];
    v19 = v18;
    v21 = v20;
    v23 = v22;
    v25 = v24;
  }

  else
  {
    v23 = v17[2];
    v25 = v17[3];
    v19 = *v17;
    v21 = v17[1];
  }

  v26 = objc_opt_self();
  v27 = [v26 bezierPathWithRoundedRect:v19 cornerRadius:{v21, v23, v25, 44.0}];
  [v16 bounds];
  v28 = [v26 bezierPathWithRect_];
  [v27 appendPath_];

  v29 = [v27 CGPath];
  if (v17[4])
  {
    [v16 bounds];
  }

  else
  {
    v32 = *(v17 + 2);
    v33 = *(v17 + 3);
    v30 = *v17;
    v31 = *(v17 + 1);
  }

  v223 = CGRectInset(*&v30, -14.0, -14.0);
  v34 = [v26 bezierPathWithRoundedRect:v223.origin.x cornerRadius:{v223.origin.y, v223.size.width, v223.size.height, 44.0}];
  [v16 bounds];
  v35 = [v26 bezierPathWithRect_];
  [v34 appendPath_];

  v36 = [v34 CGPath];
  if (v17[4])
  {
    [v16 bounds];
  }

  else
  {
    v39 = *(v17 + 2);
    v40 = *(v17 + 3);
    v37 = *v17;
    v38 = *(v17 + 1);
  }

  v41 = CGRectGetMidX(*&v37) + -40.0;
  if (v17[4])
  {
    [v16 bounds];
  }

  else
  {
    v44 = *(v17 + 2);
    v45 = *(v17 + 3);
    v42 = *v17;
    v43 = *(v17 + 1);
  }

  v224.origin.y = CGRectGetMidY(*&v42) + -40.0;
  v224.size.width = 80.0;
  v224.origin.x = v41;
  v224.size.height = 80.0;
  v225 = CGRectInset(v224, 6.0, 6.0);
  v46 = v10 + a4;
  v226 = CGRectOffset(v225, 0.0, v10 + a4);
  v47 = [v26 bezierPathWithRoundedRect:v226.origin.x cornerRadius:{v226.origin.y, v226.size.width, v226.size.height, CGRectGetWidth(v226) * 0.5}];
  [v16 bounds];
  v48 = [v26 bezierPathWithRect_];
  [v47 appendPath_];

  v49 = [v47 CGPath];
  if (v17[4])
  {
    [v16 bounds];
  }

  else
  {
    v52 = *(v17 + 2);
    v53 = *(v17 + 3);
    v50 = *v17;
    v51 = *(v17 + 1);
  }

  v54 = CGRectGetMidX(*&v50) + -40.0;
  if (v17[4])
  {
    [v16 bounds];
  }

  else
  {
    v57 = *(v17 + 2);
    v58 = *(v17 + 3);
    v55 = *v17;
    v56 = *(v17 + 1);
  }

  v227.origin.y = CGRectGetMidY(*&v55) + -40.0;
  v227.size.width = 80.0;
  v227.origin.x = v54;
  v227.size.height = 80.0;
  v228 = CGRectOffset(v227, 0.0, a4);
  v59 = [v26 bezierPathWithRoundedRect:v228.origin.x cornerRadius:{v228.origin.y, v228.size.width, v228.size.height, CGRectGetWidth(v228) * 0.5}];
  [v16 bounds];
  v60 = [v26 bezierPathWithRect_];
  [v59 appendPath_];

  v61 = [v59 CGPath];
  v62 = sub_2518F0088();
  v217 = objc_opt_self();
  v63 = [v217 animationWithKeyPath_];

  sub_2518D3844(0, &qword_27F464B40, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84560]);
  v64 = swift_allocObject();
  *(v64 + 16) = xmmword_2518F21C0;
  type metadata accessor for CGPath(0);
  *(v64 + 32) = v29;
  *(v64 + 56) = v65;
  *(v64 + 64) = v36;
  *(v64 + 88) = v65;
  *(v64 + 96) = v49;
  *(v64 + 152) = v65;
  *(v64 + 120) = v65;
  *(v64 + 128) = v61;
  v214 = v29;
  v66 = v36;
  v213 = v49;
  v67 = v61;
  v68 = v63;
  v212 = v67;
  v69 = sub_2518F01A8();

  [v63 setValues_];

  v70 = sub_2518F01A8();
  [v63 setKeyTimes_];

  v71 = sub_2518CC304();
  v72 = [v63 values];
  if (!v72)
  {
    goto LABEL_73;
  }

  v73 = v72;
  v74 = sub_2518F01B8();

  v75 = sub_2518E2D04(v74);

  if (v75 >> 62)
  {
    v76 = sub_2518F0648();
  }

  else
  {
    v76 = *((v75 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v211 = v66;
  if (v76)
  {
    v77 = __OFSUB__(v76, 1);
    v78 = v76 - 1;
    if (v77)
    {
      __break(1u);
    }

    else if ((v75 & 0xC000000000000001) == 0)
    {
      if ((v78 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (v78 < *((v75 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v79 = *(v75 + 8 * v78 + 32);
LABEL_31:
        v80 = v79;
        goto LABEL_33;
      }

      __break(1u);
LABEL_73:
      __break(1u);
LABEL_74:
      __break(1u);
      goto LABEL_75;
    }

    v79 = MEMORY[0x253086400](v78, v75);
    goto LABEL_31;
  }

  v80 = 0;
LABEL_33:

  [v71 setPath_];

  v81 = *&v16[OBJC_IVAR____TtC25HealthMedicationsVisionUI10CutoutView____lazy_storage___backgroundLayerMask];
  v82 = sub_2518F0088();
  [v81 addAnimation:v68 forKey:v82];

  v83 = sub_2518F0088();
  v84 = [v217 animationWithKeyPath_];

  v85 = swift_allocObject();
  *(v85 + 16) = xmmword_2518F21C0;
  if (v17[4])
  {
    [v16 bounds];
    v87 = v86;
    v89 = v88;
    v91 = v90;
    v93 = v92;
  }

  else
  {
    v91 = *(v17 + 2);
    v93 = *(v17 + 3);
    v87 = *v17;
    v89 = *(v17 + 1);
  }

  type metadata accessor for CGRect(0);
  v95 = v94;
  *(v85 + 56) = v94;
  v96 = swift_allocObject();
  *(v85 + 32) = v96;
  v96[2] = v87;
  *(v96 + 3) = v89;
  *(v96 + 4) = v91;
  *(v96 + 5) = v93;
  if (v17[4])
  {
    [v16 bounds];
  }

  else
  {
    v99 = *(v17 + 2);
    v100 = *(v17 + 3);
    v97 = *v17;
    v98 = *(v17 + 1);
  }

  v229 = CGRectInset(*&v97, -14.0, -14.0);
  x = v229.origin.x;
  y = v229.origin.y;
  width = v229.size.width;
  height = v229.size.height;
  *(v85 + 88) = v95;
  v105 = swift_allocObject();
  *(v85 + 64) = v105;
  v105[2] = x;
  v105[3] = y;
  v105[4] = width;
  v105[5] = height;
  if (v17[4])
  {
    [v16 bounds];
  }

  else
  {
    v108 = *(v17 + 2);
    v109 = *(v17 + 3);
    v106 = *v17;
    v107 = *(v17 + 1);
  }

  v110 = CGRectGetMidX(*&v106) + -40.0;
  if (v17[4])
  {
    [v16 bounds];
  }

  else
  {
    v113 = *(v17 + 2);
    v114 = *(v17 + 3);
    v111 = *v17;
    v112 = *(v17 + 1);
  }

  v230.origin.y = CGRectGetMidY(*&v111) + -40.0;
  v230.size.width = 80.0;
  v230.origin.x = v110;
  v230.size.height = 80.0;
  v231 = CGRectInset(v230, 6.0, 6.0);
  v232 = CGRectOffset(v231, 0.0, v46);
  v115 = v232.origin.x;
  v116 = v232.origin.y;
  v117 = v232.size.width;
  v118 = v232.size.height;
  *(v85 + 120) = v95;
  v119 = swift_allocObject();
  *(v85 + 96) = v119;
  v119[2] = v115;
  v119[3] = v116;
  v119[4] = v117;
  v119[5] = v118;
  if (v17[4])
  {
    [v16 bounds];
  }

  else
  {
    v122 = *(v17 + 2);
    v123 = *(v17 + 3);
    v120 = *v17;
    v121 = *(v17 + 1);
  }

  v124 = CGRectGetMidX(*&v120) + -40.0;
  if (v17[4])
  {
    [v16 bounds];
  }

  else
  {
    v127 = *(v17 + 2);
    v128 = *(v17 + 3);
    v125 = *v17;
    v126 = *(v17 + 1);
  }

  v233.origin.y = CGRectGetMidY(*&v125) + -40.0;
  v233.size.width = 80.0;
  v233.origin.x = v124;
  v233.size.height = 80.0;
  v234 = CGRectOffset(v233, 0.0, a4);
  v129 = v234.origin.x;
  v130 = v234.origin.y;
  v131 = v234.size.width;
  v132 = v234.size.height;
  *(v85 + 152) = v95;
  v133 = swift_allocObject();
  *(v85 + 128) = v133;
  v133[2] = v129;
  v133[3] = v130;
  v133[4] = v131;
  v133[5] = v132;
  v134 = sub_2518F01A8();

  [v84 setValues_];

  v135 = sub_2518F01A8();
  [v84 setKeyTimes_];

  v136 = sub_2518CC41C();
  v216 = v84;
  v137 = [v84 values];
  if (!v137)
  {
    goto LABEL_74;
  }

  v138 = v137;
  v210 = v68;
  v139 = sub_2518F01B8();

  v140 = *(v139 + 16);
  if (!v140)
  {
LABEL_75:

    __break(1u);
LABEL_76:
    __break(1u);
    goto LABEL_77;
  }

  sub_2518C7038(v139 + 32 * v140, v222);

  sub_2518D38A4(v222, &aBlock);
  swift_dynamicCast();
  [v136 setBounds_];

  v141 = OBJC_IVAR____TtC25HealthMedicationsVisionUI10CutoutView____lazy_storage___borderLayer;
  v142 = *&v16[OBJC_IVAR____TtC25HealthMedicationsVisionUI10CutoutView____lazy_storage___borderLayer];
  v143 = sub_2518F0088();
  [v142 addAnimation:v216 forKey:v143];

  v144 = sub_2518F0088();
  v145 = [v217 animationWithKeyPath_];

  v146 = swift_allocObject();
  *(v146 + 16) = xmmword_2518F21C0;
  [*&v16[v141] cornerRadius];
  v147 = MEMORY[0x277D85048];
  *(v146 + 56) = MEMORY[0x277D85048];
  *(v146 + 32) = v148;
  [*&v16[v141] cornerRadius];
  *(v146 + 88) = v147;
  *(v146 + 64) = v149;
  if (v17[4])
  {
    [v16 bounds];
  }

  else
  {
    v152 = *(v17 + 2);
    v153 = *(v17 + 3);
    v150 = *v17;
    v151 = *(v17 + 1);
  }

  v154 = CGRectGetMidX(*&v150) + -40.0;
  if (v17[4])
  {
    [v16 bounds];
  }

  else
  {
    v157 = *(v17 + 2);
    v158 = *(v17 + 3);
    v155 = *v17;
    v156 = *(v17 + 1);
  }

  v235.origin.y = CGRectGetMidY(*&v155) + -40.0;
  v235.size.width = 80.0;
  v235.origin.x = v154;
  v235.size.height = 80.0;
  v236 = CGRectInset(v235, 6.0, 6.0);
  v159 = CGRectGetWidth(v236);
  *(v146 + 120) = v147;
  *(v146 + 96) = v159 * 0.5;
  if (v17[4])
  {
    [v16 bounds];
  }

  else
  {
    v162 = *(v17 + 2);
    v163 = *(v17 + 3);
    v160 = *v17;
    v161 = *(v17 + 1);
  }

  v164 = CGRectGetMidX(*&v160) + -40.0;
  if (v17[4])
  {
    [v16 bounds];
  }

  else
  {
    v167 = *(v17 + 2);
    v168 = *(v17 + 3);
    v165 = *v17;
    v166 = *(v17 + 1);
  }

  v237.origin.y = CGRectGetMidY(*&v165) + -40.0;
  v237.size.width = 80.0;
  v237.origin.x = v164;
  v237.size.height = 80.0;
  v169 = CGRectGetWidth(v237);
  *(v146 + 152) = v147;
  *(v146 + 128) = v169 * 0.5;
  v170 = sub_2518F01A8();

  [v145 setValues_];

  v171 = sub_2518F01A8();
  [v145 setKeyTimes_];

  v172 = *&v16[v141];
  v173 = [v145 values];
  if (!v173)
  {
    goto LABEL_76;
  }

  v174 = v173;
  v175 = sub_2518F01B8();

  v176 = *(v175 + 16);
  if (v176)
  {
    sub_2518C7038(v175 + 32 * v176, &v219);

    sub_2518D38A4(&v219, v222);
    swift_dynamicCast();
    [v172 setCornerRadius_];

    v177 = *&v16[v141];
    v178 = sub_2518F0088();
    [v177 addAnimation:v145 forKey:v178];

    v179 = sub_2518F0088();
    v209 = v145;
    v180 = [v217 animationWithKeyPath_];

    v181 = swift_allocObject();
    *(v181 + 16) = xmmword_2518F21C0;
    v182 = MEMORY[0x277D839F8];
    *(v181 + 32) = 0;
    *(v181 + 88) = v182;
    *(v181 + 56) = v182;
    *(v181 + 64) = 0;
    *(v181 + 120) = v182;
    *(v181 + 96) = v46;
    *(v181 + 152) = v147;
    *(v181 + 128) = a4;
    v183 = sub_2518F01A8();

    [v180 setValues_];

    v184 = sub_2518F01A8();

    [v180 setKeyTimes_];

    v185 = *&v16[v141];
    CATransform3DMakeTranslation(&aBlock, 0.0, a4, 0.0);
    [v185 setTransform_];

    v186 = *&v16[v141];
    v187 = sub_2518F0088();
    [v186 addAnimation:v180 forKey:v187];

    v188 = sub_2518CC204();
    v189 = [v188 layer];

    CATransform3DMakeTranslation(&aBlock, 0.0, a4, 0.0);
    [v189 setTransform_];

    v190 = [*&v16[OBJC_IVAR____TtC25HealthMedicationsVisionUI10CutoutView____lazy_storage___checkmarkView] layer];
    v191 = sub_2518F0088();
    [v190 addAnimation:v180 forKey:v191];

    v192 = sub_2518F0088();
    v193 = [objc_opt_self() animationWithKeyPath_];

    v194 = objc_opt_self();
    v195 = [v194 clearColor];
    v196 = [v195 CGColor];

    [v193 setFromValue_];
    v197 = [v194 whiteColor];
    v198 = [v197 CGColor];

    [v193 setToValue_];
    v199 = v193;
    [v199 setDuration_];
    [v199 setBeginTime_];
    [v199 setFillMode_];

    v200 = *&v16[v141];
    v201 = [v194 whiteColor];
    v202 = [v201 CGColor];

    [v200 setBackgroundColor_];
    v203 = *&v16[v141];
    v204 = sub_2518F0088();
    [v203 addAnimation:v199 forKey:v204];

    [v215 commit];
    v205 = objc_opt_self();
    v206 = swift_allocObject();
    *(v206 + 16) = v16;
    *&aBlock.m21 = sub_2518D38B4;
    *&aBlock.m22 = v206;
    *&aBlock.m11 = MEMORY[0x277D85DD0];
    *&aBlock.m12 = 1107296256;
    *&aBlock.m13 = sub_2518C03A8;
    *&aBlock.m14 = &block_descriptor_98;
    v207 = _Block_copy(&aBlock);
    v208 = v16;

    [v205 animateWithDuration:0 delay:v207 options:0 animations:(a3 + a3) / 3.0 completion:a3 / 3.0];

    _Block_release(v207);
    return;
  }

LABEL_77:

  __break(1u);
}

void sub_2518CF364(uint64_t a1, void *a2, uint64_t a3)
{
  sub_2518F0278();
  sub_2518F0268();
  sub_2518F0218();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v6 = sub_2518CC204();
  [v6 setAlpha_];

  v7 = *(a1 + OBJC_IVAR____TtC25HealthMedicationsVisionUI10CutoutView____lazy_storage___checkmarkView);
  sub_2518D0CFC(1, a2, a3, 1.0);
}

void sub_2518CF46C(double a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  sub_2518F0278();
  sub_2518F0268();
  sub_2518F0218();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  v7 = a4(isCurrentExecutor);
  [v7 setAlpha_];
}

void sub_2518CF550(void (*a1)(id), uint64_t a2, double a3)
{
  v7 = objc_opt_self();
  [v7 begin];
  if (a3 <= 0.0)
  {
    [v7 setDisableActions_];
    v17 = v7;
    [v7 setAnimationDuration_];
    v18 = sub_2518CC204();
    [v18 setAlpha_];

    v19 = OBJC_IVAR____TtC25HealthMedicationsVisionUI10CutoutView____lazy_storage___checkmarkView;
    [*(*&v3[OBJC_IVAR____TtC25HealthMedicationsVisionUI10CutoutView____lazy_storage___checkmarkView] + OBJC_IVAR____TtC25HealthMedicationsVisionUIP33_36E86986F41219E6742057645D27BDD227MedsCompletionCheckmarkView_shapeLayer) setStrokeEnd_];
    v20 = sub_2518CC304();
    v21 = &v3[OBJC_IVAR____TtC25HealthMedicationsVisionUI10CutoutView_cutoutFrame];
    if (v3[OBJC_IVAR____TtC25HealthMedicationsVisionUI10CutoutView_cutoutFrame + 32])
    {
      [v3 bounds];
      v23 = v22;
      v25 = v24;
      v27 = v26;
      v29 = v28;
    }

    else
    {
      v27 = v21[2];
      v29 = v21[3];
      v23 = *v21;
      v25 = v21[1];
    }

    v58 = objc_opt_self();
    v59 = [v58 bezierPathWithRoundedRect:v23 cornerRadius:{v25, v27, v29, 44.0}];
    [v3 bounds];
    v60 = [v58 bezierPathWithRect_];
    [v59 appendPath_];

    v61 = [v59 CGPath];
    [v20 setPath_];

    v62 = [*&v3[v19] layer];
    CATransform3DMakeTranslation(&aBlock, 0.0, 0.0, 0.0);
    [v62 setTransform_];

    v63 = sub_2518CC41C();
    CATransform3DMakeTranslation(&aBlock, 0.0, 0.0, 0.0);
    [v63 setTransform_];

    v64 = OBJC_IVAR____TtC25HealthMedicationsVisionUI10CutoutView____lazy_storage___borderLayer;
    LODWORD(v65) = 1.0;
    [*&v3[OBJC_IVAR____TtC25HealthMedicationsVisionUI10CutoutView____lazy_storage___borderLayer] setOpacity_];
    v66 = *&v3[v64];
    if (v21[4])
    {
      v67 = v66;
      [v3 bounds];
    }

    else
    {
      v80 = v21[2];
      v79 = v21[3];
      v82 = *v21;
      v81 = v21[1];
      v83 = v66;
      v68 = v82;
      v69 = v81;
      v70 = v80;
      v71 = v79;
      v67 = v83;
    }

    [v67 setFrame_];

    [*&v3[v64] setCornerRadius_];
    v84 = *&v3[v64];
    v85 = objc_opt_self();
    v86 = v84;
    v87 = [v85 clearColor];
    v88 = [v87 CGColor];

    [v86 setBackgroundColor_];
    v89 = sub_2518CC144();
    [v89 setAlpha_];

    v90 = [v17 commit];
    if (a1)
    {
      a1(v90);
    }
  }

  else
  {
    [v7 setAnimationDuration_];
    if (a1)
    {
      *&aBlock.m21 = a1;
      *&aBlock.m22 = a2;
      *&aBlock.m11 = MEMORY[0x277D85DD0];
      *&aBlock.m12 = 1107296256;
      *&aBlock.m13 = sub_2518C03A8;
      *&aBlock.m14 = &block_descriptor_80;
      a1 = _Block_copy(&aBlock);
    }

    v131 = v7;
    [v7 setCompletionBlock_];
    _Block_release(a1);
    v8 = &v3[OBJC_IVAR____TtC25HealthMedicationsVisionUI10CutoutView_cutoutFrame];
    if (v3[OBJC_IVAR____TtC25HealthMedicationsVisionUI10CutoutView_cutoutFrame + 32])
    {
      [v3 bounds];
      v10 = v9;
      v12 = v11;
      v14 = v13;
      v16 = v15;
    }

    else
    {
      v14 = v8[2];
      v16 = v8[3];
      v10 = *v8;
      v12 = v8[1];
    }

    v30 = objc_opt_self();
    v31 = [v30 bezierPathWithRoundedRect:v10 cornerRadius:{v12, v14, v16, 44.0}];
    [v3 bounds];
    v32 = [v30 bezierPathWithRect_];
    [v31 appendPath_];

    v33 = [v31 CGPath];
    v34 = sub_2518F0088();
    v35 = objc_opt_self();
    v36 = [v35 animationWithKeyPath_];

    v37 = sub_2518CC304();
    v38 = [v37 path];

    [v36 setFromValue_];
    [v36 setToValue_];
    v39 = OBJC_IVAR____TtC25HealthMedicationsVisionUI10CutoutView____lazy_storage___backgroundLayerMask;
    v130 = v33;
    [*&v3[OBJC_IVAR____TtC25HealthMedicationsVisionUI10CutoutView____lazy_storage___backgroundLayerMask] setPath_];
    v40 = *&v3[v39];
    v41 = sub_2518F0088();
    v129 = v36;
    [v40 addAnimation:v36 forKey:v41];

    v42 = sub_2518F0088();
    v43 = [v35 0x2796D49BBLL];

    v44 = sub_2518CC41C();
    v45 = [v44 backgroundColor];

    [v43 setFromValue_];
    v46 = objc_opt_self();
    v47 = [v46 clearColor];
    v48 = [v47 CGColor];

    [v43 setToValue_];
    v49 = OBJC_IVAR____TtC25HealthMedicationsVisionUI10CutoutView____lazy_storage___borderLayer;
    v50 = *&v3[OBJC_IVAR____TtC25HealthMedicationsVisionUI10CutoutView____lazy_storage___borderLayer];
    v51 = [v46 clearColor];
    v52 = [v51 CGColor];

    [v50 setBackgroundColor_];
    v53 = *&v3[v49];
    v54 = sub_2518F0088();
    v128 = v43;
    [v53 addAnimation:v43 forKey:v54];

    v55 = sub_2518F0088();
    v56 = [v35 animationWithKeyPath_];

    [*&v3[v49] bounds];
    v57 = sub_2518F0458();
    [v56 setFromValue_];

    if (v8[4])
    {
      [v3 bounds];
    }

    v72 = sub_2518F0458();
    [v56 setToValue_];

    v73 = *&v3[v49];
    if (v8[4])
    {
      v74 = v73;
      [v3 bounds];
    }

    else
    {
      v92 = v8[2];
      v91 = v8[3];
      v94 = *v8;
      v93 = v8[1];
      v95 = v73;
      v75 = v94;
      v76 = v93;
      v77 = v92;
      v78 = v91;
      v74 = v95;
    }

    [v74 setBounds_];

    v96 = *&v3[v49];
    v97 = sub_2518F0088();
    [v96 0x2796D4EF8];

    v127 = v56;
    v98 = sub_2518F0088();
    v99 = v35;
    v100 = [v35 animationWithKeyPath_];

    [*&v3[v49] cornerRadius];
    v101 = sub_2518EF698();
    [v100 setFromValue_];

    v102 = sub_2518EF698();
    v126 = v100;
    [v100 setToValue_];

    [*&v3[v49] setCornerRadius_];
    v103 = *&v3[v49];
    v104 = sub_2518F0088();
    [v103 0x2796D4EF8];

    v105 = sub_2518F0088();
    v106 = [v99 animationWithKeyPath_];

    [*&v3[v49] opacity];
    v107 = sub_2518F02C8();
    [v106 setFromValue_];

    v108 = sub_2518EF698();
    [v106 setToValue_];

    LODWORD(v109) = 1.0;
    [*&v3[v49] setOpacity_];
    v110 = *&v3[v49];
    v111 = sub_2518F0088();
    [v110 0x2796D4EF8];

    v112 = sub_2518F0088();
    v113 = [v99 animationWithKeyPath_];

    [*&v3[v49] transform];
    v114 = sub_2518EF698();
    [v113 setFromValue_];

    v115 = sub_2518EF698();
    [v113 setToValue_];

    v116 = *&v3[v49];
    CATransform3DMakeTranslation(&aBlock, 0.0, 0.0, 0.0);
    [v116 setTransform_];

    v117 = *&v3[v49];
    v118 = sub_2518F0088();
    [v117 addAnimation:v113 forKey:v118];

    [v131 commit];
    v119 = objc_opt_self();
    v120 = swift_allocObject();
    *(v120 + 16) = v3;
    *&aBlock.m21 = sub_2518D37E8;
    *&aBlock.m22 = v120;
    *&aBlock.m11 = MEMORY[0x277D85DD0];
    *&aBlock.m12 = 1107296256;
    *&aBlock.m13 = sub_2518C03A8;
    *&aBlock.m14 = &block_descriptor_71_0;
    v121 = _Block_copy(&aBlock);
    v122 = v3;

    v123 = swift_allocObject();
    *(v123 + 16) = v122;
    *&aBlock.m21 = sub_2518D37F0;
    *&aBlock.m22 = v123;
    *&aBlock.m11 = MEMORY[0x277D85DD0];
    *&aBlock.m12 = 1107296256;
    *&aBlock.m13 = sub_2518D04D0;
    *&aBlock.m14 = &block_descriptor_77_0;
    v124 = _Block_copy(&aBlock);
    v125 = v122;

    [v119 animateWithDuration:v121 animations:v124 completion:a3];
    _Block_release(v124);
    _Block_release(v121);
  }
}

void sub_2518D02E0()
{
  sub_2518F0278();
  sub_2518F0268();
  sub_2518F0218();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v0 = sub_2518CC144();
  [v0 setAlpha_];

  v1 = sub_2518CC204();
  [v1 setAlpha_];
}

void sub_2518D03C0(uint64_t a1, uint64_t a2)
{
  sub_2518F0278();
  sub_2518F0268();
  sub_2518F0218();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v3 = sub_2518CC204();
  [*&v3[OBJC_IVAR____TtC25HealthMedicationsVisionUIP33_36E86986F41219E6742057645D27BDD227MedsCompletionCheckmarkView_shapeLayer] setStrokeEnd_];

  v4 = [*(a2 + OBJC_IVAR____TtC25HealthMedicationsVisionUI10CutoutView____lazy_storage___checkmarkView) layer];
  CATransform3DMakeTranslation(&v5, 0.0, 0.0, 0.0);
  [v4 setTransform_];
}

uint64_t sub_2518D04D0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

char *sub_2518D05DC(double a1)
{
  v3 = OBJC_IVAR____TtC25HealthMedicationsVisionUIP33_36E86986F41219E6742057645D27BDD227MedsCompletionCheckmarkView_shapeLayer;
  *&v1[v3] = [objc_allocWithZone(MEMORY[0x277CD9F90]) init];
  *&v1[OBJC_IVAR____TtC25HealthMedicationsVisionUIP33_36E86986F41219E6742057645D27BDD227MedsCompletionCheckmarkView_tickViewSize] = a1;
  v31.receiver = v1;
  v31.super_class = type metadata accessor for MedsCompletionCheckmarkView();
  v4 = objc_msgSendSuper2(&v31, sel_initWithFrame_, 0.0, 0.0, a1, a1);
  v5 = [v4 layer];
  [v5 setCornerRadius_];

  v6 = objc_opt_self();
  v7 = [v6 clearColor];
  [v4 setBackgroundColor_];

  v8 = [objc_allocWithZone(MEMORY[0x277D75208]) init];
  v9 = OBJC_IVAR____TtC25HealthMedicationsVisionUIP33_36E86986F41219E6742057645D27BDD227MedsCompletionCheckmarkView_tickViewSize;
  [v8 moveToPoint_];
  [v8 addLineToPoint_];
  [v8 addLineToPoint_];
  [v8 setLineCapStyle_];
  v10 = OBJC_IVAR____TtC25HealthMedicationsVisionUIP33_36E86986F41219E6742057645D27BDD227MedsCompletionCheckmarkView_shapeLayer;
  v11 = *&v4[OBJC_IVAR____TtC25HealthMedicationsVisionUIP33_36E86986F41219E6742057645D27BDD227MedsCompletionCheckmarkView_shapeLayer];
  v12 = [v8 CGPath];
  [v11 setPath_];

  [*&v4[v10] setLineWidth_];
  [*&v4[v10] setLineCap_];
  [*&v4[v10] setLineJoin_];
  v13 = *&v4[v10];
  v14 = [v4 layer];
  [v14 bounds];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;

  [v13 setFrame_];
  v23 = *&v4[v10];
  v24 = [v6 systemBlueColor];
  v25 = [v24 CGColor];

  [v23 setStrokeColor_];
  v26 = *&v4[v10];
  v27 = [v6 clearColor];
  v28 = [v27 CGColor];

  [v26 setBackgroundColor_];
  [*&v4[v10] setFillColor_];
  v29 = [v4 layer];
  [v29 addSublayer_];

  [v4 setTranslatesAutoresizingMaskIntoConstraints_];
  return v4;
}

void sub_2518D0CFC(char a1, void *a2, uint64_t a3, double a4)
{
  if (a1)
  {
    v8 = objc_opt_self();
    [v8 begin];
    [v8 setAnimationDuration_];
    if (a2)
    {
      v23[4] = a2;
      v23[5] = a3;
      v23[0] = MEMORY[0x277D85DD0];
      v23[1] = 1107296256;
      v23[2] = sub_2518C03A8;
      v23[3] = &block_descriptor_65_0;
      a2 = _Block_copy(v23);
    }

    [v8 setCompletionBlock_];
    _Block_release(a2);
    v9 = objc_allocWithZone(MEMORY[0x277CD9EF8]);
    LODWORD(v10) = 1043928040;
    LODWORD(v11) = 1058272560;
    LODWORD(v12) = 1063980840;
    v13 = [v9 initWithControlPoints__:v10 :{0.0, v11, v12}];
    v14 = sub_2518F0088();
    v15 = [objc_opt_self() animationWithKeyPath_];

    v16 = v15;
    [v16 setTimingFunction_];
    [v16 setFillMode_];

    v17 = v16;
    v18 = sub_2518EF698();
    [v17 setFromValue_];

    v19 = sub_2518EF698();
    [v17 setToValue_];

    v20 = *(v4 + OBJC_IVAR____TtC25HealthMedicationsVisionUIP33_36E86986F41219E6742057645D27BDD227MedsCompletionCheckmarkView_shapeLayer);
    [v20 setStrokeEnd_];
    v21 = sub_2518F0088();
    [v20 addAnimation:v17 forKey:v21];

    [v8 commit];
  }

  else
  {
    v22 = *(v4 + OBJC_IVAR____TtC25HealthMedicationsVisionUIP33_36E86986F41219E6742057645D27BDD227MedsCompletionCheckmarkView_shapeLayer);

    [v22 setStrokeEnd_];
  }
}

id sub_2518D10AC()
{
  v1 = OBJC_IVAR____TtC25HealthMedicationsVisionUIP33_36E86986F41219E6742057645D27BDD219LabelWithBackground____lazy_storage___blurView;
  v2 = *(v0 + OBJC_IVAR____TtC25HealthMedicationsVisionUIP33_36E86986F41219E6742057645D27BDD219LabelWithBackground____lazy_storage___blurView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC25HealthMedicationsVisionUIP33_36E86986F41219E6742057645D27BDD219LabelWithBackground____lazy_storage___blurView);
  }

  else
  {
    v4 = [objc_opt_self() effectWithStyle_];
    v5 = [objc_allocWithZone(MEMORY[0x277D75D68]) initWithEffect_];

    v6 = *(v0 + v1);
    *(v0 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

id sub_2518D115C()
{
  v1 = OBJC_IVAR____TtC25HealthMedicationsVisionUIP33_36E86986F41219E6742057645D27BDD219LabelWithBackground____lazy_storage___label;
  v2 = *(v0 + OBJC_IVAR____TtC25HealthMedicationsVisionUIP33_36E86986F41219E6742057645D27BDD219LabelWithBackground____lazy_storage___label);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC25HealthMedicationsVisionUIP33_36E86986F41219E6742057645D27BDD219LabelWithBackground____lazy_storage___label);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
    v5 = [objc_opt_self() whiteColor];
    [v4 setTextColor_];

    [v4 setTextAlignment_];
    v6 = [objc_opt_self() hk:*MEMORY[0x277D76920] preferredFontForTextStyle:2 symbolicTraits:?];
    [v4 setFont_];

    v7 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

char *sub_2518D1270(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC25HealthMedicationsVisionUIP33_36E86986F41219E6742057645D27BDD219LabelWithBackground_xInset] = 0x4028000000000000;
  *&v4[OBJC_IVAR____TtC25HealthMedicationsVisionUIP33_36E86986F41219E6742057645D27BDD219LabelWithBackground_yInset] = 0x4000000000000000;
  *&v4[OBJC_IVAR____TtC25HealthMedicationsVisionUIP33_36E86986F41219E6742057645D27BDD219LabelWithBackground____lazy_storage___blurView] = 0;
  *&v4[OBJC_IVAR____TtC25HealthMedicationsVisionUIP33_36E86986F41219E6742057645D27BDD219LabelWithBackground____lazy_storage___label] = 0;
  v23.receiver = v4;
  v23.super_class = type metadata accessor for LabelWithBackground();
  v9 = objc_msgSendSuper2(&v23, sel_initWithFrame_, a1, a2, a3, a4);
  [v9 setClipsToBounds_];
  v10 = sub_2518D10AC();
  [v9 addSubview_];

  v11 = *&v9[OBJC_IVAR____TtC25HealthMedicationsVisionUIP33_36E86986F41219E6742057645D27BDD219LabelWithBackground____lazy_storage___blurView];
  [v9 bounds];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;

  [v11 setFrame_];
  v20 = sub_2518D115C();
  [v9 addSubview_];

  v21 = *&v9[OBJC_IVAR____TtC25HealthMedicationsVisionUIP33_36E86986F41219E6742057645D27BDD219LabelWithBackground____lazy_storage___label];
  [v9 bounds];
  v25 = CGRectInset(v24, 12.0, 2.0);
  [v21 setFrame_];

  return v9;
}

double sub_2518D17C0()
{
  if ([objc_opt_self() isAppleInternalInstall] && (v1 = objc_msgSend(objc_opt_self(), sel_standardUserDefaults), sub_2518F0128(), v2 = sub_2518F0088(), , v3 = objc_msgSend(v1, sel_BOOLForKey_, v2), v1, v2, (v3 & 1) != 0))
  {
    [v0 bounds];
    return v4;
  }

  else
  {
    [v0 bounds];
    CGRectGetHeight(v27);
    sub_2518EF8E8();
    v7 = v6;
    [v0 bounds];
    v8 = CGRectGetWidth(v28) - (v7 + v7);
    v9 = [v0 traitCollection];
    v10 = [v9 preferredContentSizeCategory];

    v11 = sub_2518F03F8();
    v5 = 44.0;
    if (v11)
    {
      v12 = 52.0;
    }

    else
    {
      v12 = 44.0;
    }

    v13 = v7;
    v14 = 0x4060000000000000;
    v15 = v8;
    CGRectGetMaxY(*(&v12 - 3));
    sub_2518EF8E8();
    v17 = v16;
    [v0 bounds];
    v18 = CGRectGetWidth(v29) - (v17 + v17);
    v19 = [v0 traitCollection];
    v20 = [v19 preferredContentSizeCategory];

    v21 = sub_2518F03F8();
    if (v21)
    {
      v22 = 52.0;
    }

    else
    {
      v22 = 44.0;
    }

    v23 = v17;
    v24 = 0x4060000000000000;
    v25 = v18;
    CGRectGetMaxY(*(&v22 - 3));
    [v0 bounds];
    CGRectGetWidth(v30);
  }

  return v5;
}

uint64_t sub_2518D1A24()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2518EFDB8();

  return v1;
}

id sub_2518D1AB8(uint64_t *a1, uint64_t (*a2)(void))
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = *(v2 + *a1);
  }

  else
  {
    v6 = a2();
    v7 = *(v2 + v3);
    *(v2 + v3) = v6;
    v5 = v6;

    v4 = 0;
  }

  v8 = v4;
  return v5;
}

char *sub_2518D1B18()
{
  v0 = [objc_allocWithZone(type metadata accessor for LabelWithBackground()) initWithFrame_];
  v1 = [v0 layer];
  [v1 setCornerRadius_];

  v2 = sub_2518D115C();
  [v2 setNumberOfLines_];

  v3 = OBJC_IVAR____TtC25HealthMedicationsVisionUIP33_36E86986F41219E6742057645D27BDD219LabelWithBackground____lazy_storage___label;
  [*&v0[OBJC_IVAR____TtC25HealthMedicationsVisionUIP33_36E86986F41219E6742057645D27BDD219LabelWithBackground____lazy_storage___label] setAdjustsFontSizeToFitWidth_];
  if (qword_27F464548 != -1)
  {
    swift_once();
  }

  sub_2518EF548();
  v4 = *&v0[v3];
  v5 = sub_2518F0088();

  [v4 setText_];

  v6 = *&v0[v3];
  [v0 bounds];
  v9 = CGRectInset(v8, 12.0, 2.0);
  [v6 setFrame_];

  return v0;
}

id sub_2518D1CE8()
{
  v1 = OBJC_IVAR____TtC25HealthMedicationsVisionUI44MedicationDataScannerRegionOfInterestOverlay____lazy_storage___reticle;
  v2 = *(v0 + OBJC_IVAR____TtC25HealthMedicationsVisionUI44MedicationDataScannerRegionOfInterestOverlay____lazy_storage___reticle);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC25HealthMedicationsVisionUI44MedicationDataScannerRegionOfInterestOverlay____lazy_storage___reticle);
  }

  else
  {
    type metadata accessor for CutoutView();
    v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

char *sub_2518D1D5C(double a1, double a2, double a3, double a4)
{
  sub_2518D2F68(0, &qword_27F464B00, MEMORY[0x277CBCED0]);
  v10 = v9;
  v11 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v13 = &v42 - v12;
  *&v4[OBJC_IVAR____TtC25HealthMedicationsVisionUI44MedicationDataScannerRegionOfInterestOverlay_cancellables] = MEMORY[0x277D84FA0];
  v14 = OBJC_IVAR____TtC25HealthMedicationsVisionUI44MedicationDataScannerRegionOfInterestOverlay__title;
  if (qword_27F464548 != -1)
  {
    swift_once();
  }

  *&v43[0] = sub_2518EF548();
  *(&v43[0] + 1) = v15;
  sub_2518D3844(0, &qword_27F464B08, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
  sub_2518EFD98();
  (*(v11 + 32))(&v4[v14], v13, v10);
  *&v4[OBJC_IVAR____TtC25HealthMedicationsVisionUI44MedicationDataScannerRegionOfInterestOverlay____lazy_storage___titleLabel] = 0;
  *&v4[OBJC_IVAR____TtC25HealthMedicationsVisionUI44MedicationDataScannerRegionOfInterestOverlay____lazy_storage___reticle] = 0;
  v16 = type metadata accessor for MedicationDataScannerRegionOfInterestOverlay();
  v42.receiver = v4;
  v42.super_class = v16;
  v17 = objc_msgSendSuper2(&v42, sel_initWithFrame_, a1, a2, a3, a4);
  v18 = objc_opt_self();
  v19 = v17;
  v20 = [v18 clearColor];
  [v19 setBackgroundColor_];

  if (![objc_opt_self() isAppleInternalInstall] || (v21 = objc_msgSend(objc_opt_self(), sel_standardUserDefaults), sub_2518F0128(), v22 = sub_2518F0088(), , v23 = objc_msgSend(v21, sel_BOOLForKey_, v22), v21, v22, (v23 & 1) == 0))
  {
    v24 = sub_2518D1CE8();
    [v19 addSubview_];

    v25 = sub_2518D1A98();
    [v19 addSubview_];

    v26 = *&v19[OBJC_IVAR____TtC25HealthMedicationsVisionUI44MedicationDataScannerRegionOfInterestOverlay____lazy_storage___titleLabel];
    sub_2518EF8E8();
    v28 = v27;
    [v19 bounds];
    v29 = CGRectGetWidth(v45) - (v28 + v28);
    v30 = [v19 traitCollection];
    v31 = [v30 preferredContentSizeCategory];

    LOBYTE(v30) = sub_2518F03F8();
    if (v30)
    {
      v32 = 52.0;
    }

    else
    {
      v32 = 44.0;
    }

    [v26 setFrame_];

    v33 = OBJC_IVAR____TtC25HealthMedicationsVisionUI44MedicationDataScannerRegionOfInterestOverlay____lazy_storage___reticle;
    v34 = *&v19[OBJC_IVAR____TtC25HealthMedicationsVisionUI44MedicationDataScannerRegionOfInterestOverlay____lazy_storage___reticle];
    [v19 bounds];
    [v34 setFrame_];

    v35 = *&v19[v33];
    v36 = sub_2518D17C0();
    v37 = &v35[OBJC_IVAR____TtC25HealthMedicationsVisionUI10CutoutView_cutoutFrame];
    v43[0] = *&v35[OBJC_IVAR____TtC25HealthMedicationsVisionUI10CutoutView_cutoutFrame];
    v43[1] = *&v35[OBJC_IVAR____TtC25HealthMedicationsVisionUI10CutoutView_cutoutFrame + 16];
    v44 = v35[OBJC_IVAR____TtC25HealthMedicationsVisionUI10CutoutView_cutoutFrame + 32];
    *v37 = v36;
    *(v37 + 1) = v38;
    *(v37 + 2) = v39;
    *(v37 + 3) = v40;
    v37[32] = 0;
    sub_2518CBF60(v43);
  }

  sub_2518D2794();
  return v19;
}

uint64_t sub_2518D220C(double a1, double a2, double a3, double a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t (*a8)(uint64_t, double, double, double, double))
{
  sub_2518F0278();
  sub_2518F0268();
  sub_2518F0218();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  v14 = a8(isCurrentExecutor, a1, a2, a3, a4);

  return v14;
}

void sub_2518D2398()
{
  v16.receiver = v0;
  v16.super_class = type metadata accessor for MedicationDataScannerRegionOfInterestOverlay();
  objc_msgSendSuper2(&v16, sel_layoutSubviews);
  v1 = sub_2518D1A98();
  sub_2518EF8E8();
  v3 = v2;
  [v0 bounds];
  v4 = CGRectGetWidth(v19) - (v3 + v3);
  v5 = [v0 traitCollection];
  v6 = [v5 preferredContentSizeCategory];

  LOBYTE(v5) = sub_2518F03F8();
  if (v5)
  {
    v7 = 52.0;
  }

  else
  {
    v7 = 44.0;
  }

  [v1 setFrame_];

  v8 = sub_2518D1CE8();
  [v0 bounds];
  [v8 setFrame_];

  v9 = *&v0[OBJC_IVAR____TtC25HealthMedicationsVisionUI44MedicationDataScannerRegionOfInterestOverlay____lazy_storage___reticle];
  v10 = sub_2518D17C0();
  v11 = &v9[OBJC_IVAR____TtC25HealthMedicationsVisionUI10CutoutView_cutoutFrame];
  v12 = *&v9[OBJC_IVAR____TtC25HealthMedicationsVisionUI10CutoutView_cutoutFrame + 16];
  v17[0] = *&v9[OBJC_IVAR____TtC25HealthMedicationsVisionUI10CutoutView_cutoutFrame];
  v17[1] = v12;
  v18 = v9[OBJC_IVAR____TtC25HealthMedicationsVisionUI10CutoutView_cutoutFrame + 32];
  *v11 = v10;
  *(v11 + 1) = v13;
  *(v11 + 2) = v14;
  *(v11 + 3) = v15;
  v11[32] = 0;
  sub_2518CBF60(v17);
}

void sub_2518D253C(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  sub_2518F0278();
  sub_2518F0268();
  sub_2518F0218();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v6 = a1;
  a4();
}

void sub_2518D2608(uint64_t a1, uint64_t a2, double a3)
{
  v4 = v3;
  [v3 bounds];
  MidY = CGRectGetMidY(v18);
  v19.origin.x = sub_2518D17C0();
  v9 = MidY - CGRectGetMidY(v19);
  sub_2518EFA28();
  v11 = v9 + v10;
  v12 = sub_2518D1CE8();
  sub_2518CDE90(a1, a2, a3, v11);

  v13 = objc_opt_self();
  v14 = swift_allocObject();
  *(v14 + 16) = v4;
  v17[4] = sub_2518D3218;
  v17[5] = v14;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 1107296256;
  v17[2] = sub_2518C03A8;
  v17[3] = &block_descriptor_1;
  v15 = _Block_copy(v17);
  v16 = v4;

  [v13 animateWithDuration:v15 animations:a3];
  _Block_release(v15);
}

uint64_t sub_2518D2794()
{
  v0 = sub_2518F05B8();
  v16 = *(v0 - 8);
  v17 = v0;
  MEMORY[0x28223BE20](v0);
  v2 = &v15 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2518D2F68(0, &qword_27F464B10, MEMORY[0x277CBCEC0]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = &v15 - v6;
  sub_2518D2FEC();
  v15 = v8;
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  sub_2518D2F68(0, &qword_27F464B00, MEMORY[0x277CBCED0]);
  sub_2518EFDA8();
  swift_endAccess();
  sub_2518F05A8();
  v12 = [objc_opt_self() mainRunLoop];
  v18 = v12;
  sub_2518BC1A8(0, &qword_27F464B20);
  sub_2518D30A4();
  sub_2518D3118();
  sub_2518EFE28();

  (*(v16 + 8))(v2, v17);
  (*(v5 + 8))(v7, v4);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_2518D31C0();
  v13 = v15;
  sub_2518EFE58();

  (*(v9 + 8))(v11, v13);
  swift_beginAccess();
  sub_2518EFCD8();
  swift_endAccess();
}

void sub_2518D2B10(uint64_t a1)
{
  v1 = *(a1 + 8);
  sub_2518F0278();
  sub_2518F0268();
  sub_2518F0218();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = sub_2518D1A98();
    v5 = sub_2518D115C();
    if (v1)
    {
      v6 = sub_2518F0088();
    }

    else
    {
      v6 = 0;
    }

    [v5 setText_];

    v7 = *&v4[OBJC_IVAR____TtC25HealthMedicationsVisionUIP33_36E86986F41219E6742057645D27BDD219LabelWithBackground____lazy_storage___label];
    [v4 bounds];
    v16 = CGRectInset(v15, 12.0, 2.0);
    [v7 setFrame_];

    v8 = *&v3[OBJC_IVAR____TtC25HealthMedicationsVisionUI44MedicationDataScannerRegionOfInterestOverlay____lazy_storage___titleLabel];
    sub_2518EF8E8();
    v10 = v9;
    [v3 bounds];
    v11 = CGRectGetWidth(v17) - (v10 + v10);
    v12 = [v3 traitCollection];
    v13 = [v12 preferredContentSizeCategory];

    LOBYTE(v12) = sub_2518F03F8();
    if (v12)
    {
      v14 = 52.0;
    }

    else
    {
      v14 = 44.0;
    }

    [v8 setFrame_];
  }

  else
  {
  }
}

id sub_2518D2D5C(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t type metadata accessor for MedicationDataScannerRegionOfInterestOverlay()
{
  result = qword_27F464AF0;
  if (!qword_27F464AF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2518D2EA0()
{
  sub_2518D2F68(319, &qword_27F464B00, MEMORY[0x277CBCED0]);
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_2518D2F68(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_2518D3844(255, &qword_27F464B08, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_2518D2FEC()
{
  if (!qword_27F464B18)
  {
    sub_2518D2F68(255, &qword_27F464B10, MEMORY[0x277CBCEC0]);
    sub_2518BC1A8(255, &qword_27F464B20);
    sub_2518D30A4();
    sub_2518D3118();
    v0 = sub_2518EFCA8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F464B18);
    }
  }
}

unint64_t sub_2518D30A4()
{
  result = qword_27F464B28;
  if (!qword_27F464B28)
  {
    sub_2518D2F68(255, &qword_27F464B10, MEMORY[0x277CBCEC0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F464B28);
  }

  return result;
}

unint64_t sub_2518D3118()
{
  result = qword_27F464B30;
  if (!qword_27F464B30)
  {
    sub_2518BC1A8(255, &qword_27F464B20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F464B30);
  }

  return result;
}

uint64_t sub_2518D3180()
{
  MEMORY[0x253086E00](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

unint64_t sub_2518D31C0()
{
  result = qword_27F464B38;
  if (!qword_27F464B38)
  {
    sub_2518D2FEC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F464B38);
  }

  return result;
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

double sub_2518D3268@<D0>(_OWORD *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2518EFDB8();

  result = *&v3;
  *a1 = v3;
  return result;
}

uint64_t sub_2518D32EC(uint64_t a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  v3 = v2;
  return sub_2518EFDC8();
}

id sub_2518D3370()
{
  v0 = [objc_allocWithZone(MEMORY[0x277CD9ED0]) init];
  v1 = objc_opt_self();
  v2 = [v1 clearColor];
  v3 = [v2 CGColor];

  [v0 setBackgroundColor_];
  [v0 setBorderWidth_];
  v4 = [v1 whiteColor];
  v5 = [v4 colorWithAlphaComponent_];

  v6 = [v5 CGColor];
  [v0 setBorderColor_];

  [v0 setCornerRadius_];
  [v0 setCornerCurve_];
  return v0;
}

void sub_2518D34D4()
{
  v1 = v0 + OBJC_IVAR____TtC25HealthMedicationsVisionUI10CutoutView_cutoutFrame;
  *v1 = 0u;
  *(v1 + 16) = 0u;
  *(v1 + 32) = 1;
  *(v0 + OBJC_IVAR____TtC25HealthMedicationsVisionUI10CutoutView_borderWidth) = 0x4018000000000000;
  *(v0 + OBJC_IVAR____TtC25HealthMedicationsVisionUI10CutoutView_cornerRadius) = 0x4046000000000000;
  *(v0 + OBJC_IVAR____TtC25HealthMedicationsVisionUI10CutoutView_checkmarkDiameter) = 0x4054000000000000;
  *(v0 + OBJC_IVAR____TtC25HealthMedicationsVisionUI10CutoutView_expansionAmountForOutlineBox) = 0x402C000000000000;
  *(v0 + OBJC_IVAR____TtC25HealthMedicationsVisionUI10CutoutView_animationSquishAmount) = 0x4018000000000000;
  *(v0 + OBJC_IVAR____TtC25HealthMedicationsVisionUI10CutoutView____lazy_storage___blurView) = 0;
  *(v0 + OBJC_IVAR____TtC25HealthMedicationsVisionUI10CutoutView____lazy_storage___checkmarkView) = 0;
  *(v0 + OBJC_IVAR____TtC25HealthMedicationsVisionUI10CutoutView____lazy_storage___backgroundLayer) = 0;
  *(v0 + OBJC_IVAR____TtC25HealthMedicationsVisionUI10CutoutView____lazy_storage___backgroundLayerMask) = 0;
  *(v0 + OBJC_IVAR____TtC25HealthMedicationsVisionUI10CutoutView____lazy_storage___borderLayer) = 0;
  sub_2518F0778();
  __break(1u);
}

void sub_2518D35D4()
{
  sub_2518D2F68(0, &qword_27F464B00, MEMORY[0x277CBCED0]);
  v2 = v1;
  v3 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v5 = v8 - v4;
  *(v0 + OBJC_IVAR____TtC25HealthMedicationsVisionUI44MedicationDataScannerRegionOfInterestOverlay_cancellables) = MEMORY[0x277D84FA0];
  v6 = OBJC_IVAR____TtC25HealthMedicationsVisionUI44MedicationDataScannerRegionOfInterestOverlay__title;
  if (qword_27F464548 != -1)
  {
    swift_once();
  }

  v8[0] = sub_2518EF548();
  v8[1] = v7;
  sub_2518D3844(0, &qword_27F464B08, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
  sub_2518EFD98();
  (*(v3 + 32))(v0 + v6, v5, v2);
  *(v0 + OBJC_IVAR____TtC25HealthMedicationsVisionUI44MedicationDataScannerRegionOfInterestOverlay____lazy_storage___titleLabel) = 0;
  *(v0 + OBJC_IVAR____TtC25HealthMedicationsVisionUI44MedicationDataScannerRegionOfInterestOverlay____lazy_storage___reticle) = 0;
  sub_2518F0778();
  __break(1u);
}

uint64_t sub_2518D37F8()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

void sub_2518D3844(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

_OWORD *sub_2518D38A4(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_2518D38EC()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

id sub_2518D39AC()
{
  v1 = OBJC_IVAR____TtC25HealthMedicationsVisionUI11ReticleView____lazy_storage___reticleView;
  v2 = *(v0 + OBJC_IVAR____TtC25HealthMedicationsVisionUI11ReticleView____lazy_storage___reticleView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC25HealthMedicationsVisionUI11ReticleView____lazy_storage___reticleView);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x277CF7E58]) init];
    [v4 setShape_];
    [v4 setHidden_];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_2518D3A48()
{
  v1 = OBJC_IVAR____TtC25HealthMedicationsVisionUI11ReticleView____lazy_storage___spotlightView;
  v2 = *(v0 + OBJC_IVAR____TtC25HealthMedicationsVisionUI11ReticleView____lazy_storage___spotlightView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC25HealthMedicationsVisionUI11ReticleView____lazy_storage___spotlightView);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
    [v4 setHidden_];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_2518D3AD0(double a1, double a2, double a3, double a4)
{
  v4[OBJC_IVAR____TtC25HealthMedicationsVisionUI11ReticleView_hasSetReticleRect] = 0;
  *&v4[OBJC_IVAR____TtC25HealthMedicationsVisionUI11ReticleView____lazy_storage___reticleView] = 0;
  *&v4[OBJC_IVAR____TtC25HealthMedicationsVisionUI11ReticleView____lazy_storage___spotlightView] = 0;
  v13.receiver = v4;
  v13.super_class = type metadata accessor for ReticleView();
  v9 = objc_msgSendSuper2(&v13, sel_initWithFrame_, a1, a2, a3, a4);
  v10 = sub_2518D39AC();
  [v9 addSubview_];

  v11 = sub_2518D3A48();
  [v9 addSubview_];

  return v9;
}

void sub_2518D3D64()
{
  v9.receiver = v0;
  v9.super_class = type metadata accessor for ReticleView();
  objc_msgSendSuper2(&v9, sel_layoutSubviews);
  if ((*(v0 + OBJC_IVAR____TtC25HealthMedicationsVisionUI11ReticleView_hasSetReticleRect) & 1) == 0)
  {
    [v0 bounds];
    x = v10.origin.x;
    y = v10.origin.y;
    width = v10.size.width;
    height = v10.size.height;
    MidX = CGRectGetMidX(v10);
    v11.origin.x = x;
    v11.origin.y = y;
    v11.size.width = width;
    v11.size.height = height;
    v6 = CGRectGetMidX(v11);
    v7 = sub_2518D39AC();
    [v7 setFrame_];

    v8 = sub_2518D3A48();
    [v8 setFrame_];
  }
}

id sub_2518D3F14()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ReticleView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2518D3FB8(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= v3[3] >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  v3 = sub_2518DDAB4(isUniquelyReferenced_nonNull_native, v12, 1, v3, &qword_27F464D30, MEMORY[0x277CC9260], MEMORY[0x277CC9260]);
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = (v3[3] >> 1) - v3[2];
  result = sub_2518EF5B8();
  if (v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = v3[2];
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    v3[2] = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_2518D4114(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = sub_2518F0648();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v1 >> 62))
  {
    v4 = *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v5 = __OFADD__(v4, v3);
    result = v4 + v3;
    if (!v5)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v13 = sub_2518F0648();
  v5 = __OFADD__(v13, v3);
  result = v13 + v3;
  if (v5)
  {
    goto LABEL_13;
  }

LABEL_5:
  sub_2518DE34C(result);
  v7 = *v1;
  v8 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_2518DFA7C(v8 + 8 * *(v8 + 0x10) + 32, (*(v8 + 0x18) >> 1) - *(v8 + 0x10), a1);
  v10 = v9;

  if (v10 < v3)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v10 < 1)
  {
LABEL_9:
    *v1 = v7;
    return result;
  }

  v11 = *(v8 + 16);
  v5 = __OFADD__(v11, v10);
  v12 = v11 + v10;
  if (!v5)
  {
    *(v8 + 16) = v12;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t ScanningSystemState.filterCompleteTime.setter(uint64_t result, char a2)
{
  *(v2 + 40) = result;
  *(v2 + 48) = a2 & 1;
  return result;
}

uint64_t ScanningSystemState.stateChangeTime.setter(uint64_t result, char a2)
{
  *(v2 + 56) = result;
  *(v2 + 64) = a2 & 1;
  return result;
}

uint64_t ScanningSystemState.resultOnScreenTime.setter(uint64_t result, char a2)
{
  *(v2 + 72) = result;
  *(v2 + 80) = a2 & 1;
  return result;
}

unint64_t sub_2518D42FC()
{
  v1 = *v0;
  if (v1 > 3)
  {
    v5 = 0x6168436574617473;
    if (v1 != 6)
    {
      v5 = 0xD000000000000012;
    }

    v6 = 0xD000000000000011;
    if (v1 != 4)
    {
      v6 = 0xD000000000000012;
    }

    if (*v0 <= 5u)
    {
      return v6;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v2 = 0x7574615361746164;
    v3 = 0x456E6F6973736573;
    if (v1 != 2)
    {
      v3 = 0xD000000000000012;
    }

    if (*v0)
    {
      v2 = 0xD000000000000010;
    }

    if (*v0 <= 1u)
    {
      return v2;
    }

    else
    {
      return v3;
    }
  }
}