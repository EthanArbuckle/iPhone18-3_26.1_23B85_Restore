uint64_t sub_2281A0B00()
{
  v1 = *(v0 + qword_27D8240D0);

  v2 = *(v0 + qword_27D8240D8);

  v3 = *(v0 + qword_27D8240B8 + 8);
  sub_228176EC8(*(v0 + qword_27D8240B8));
  v4 = *(v0 + qword_27D8240C0);
}

uint64_t MedicationsAsNeededDoseDataSource.deinit()
{
  v0 = sub_22838FFB0();

  v1 = *(v0 + qword_27D8240D0);

  v2 = *(v0 + qword_27D8240D8);

  v3 = *(v0 + qword_27D8240B8 + 8);
  sub_228176EC8(*(v0 + qword_27D8240B8));
  v4 = *(v0 + qword_27D8240C0);

  return v0;
}

uint64_t MedicationsAsNeededDoseDataSource.__deallocating_deinit()
{
  v0 = sub_22838FFB0();
  v1 = *(v0 + qword_27D8240C8);

  v2 = *(v0 + qword_27D8240D0);

  v3 = *(v0 + qword_27D8240D8);

  v4 = *(v0 + qword_27D8240B8 + 8);
  sub_228176EC8(*(v0 + qword_27D8240B8));
  v5 = *(v0 + qword_27D8240C0);

  return swift_deallocClassInstance();
}

Swift::Void __swiftcall MedicationsAsNeededDoseDataSource.registerCells(for:)(UICollectionView *a1)
{
  type metadata accessor for MedicationsRecordDoseCollectionViewCell(0);
  sub_2281A17D0(&qword_280DDC6D8, type metadata accessor for MedicationsRecordDoseCollectionViewCell);
  sub_2283926B0();
}

uint64_t sub_2281A0D04()
{
  type metadata accessor for MedicationsRecordDoseCollectionViewCell(0);
  sub_2281A17D0(&qword_280DDC6D8, type metadata accessor for MedicationsRecordDoseCollectionViewCell);
  return sub_2283926B0();
}

void *MedicationsAsNeededDoseDataSource.layout(for:environment:)()
{
  v0 = sub_2283900D0();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228390040();
  v5 = [objc_opt_self() systemBackgroundColor];
  sub_228390050();
  v6 = sub_2283900C0();
  [v6 contentInsets];
  [v6 setContentInsets_];
  (*(v1 + 8))(v4, v0);
  return v6;
}

uint64_t type metadata accessor for MedicationsAsNeededDoseDataSource()
{
  result = qword_27D8240E8;
  if (!qword_27D8240E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *sub_2281A0F20()
{
  v0 = sub_2283900D0();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228390040();
  v5 = [objc_opt_self() systemBackgroundColor];
  sub_228390050();
  v6 = sub_2283900C0();
  [v6 contentInsets];
  [v6 setContentInsets_];
  (*(v1 + 8))(v4, v0);
  return v6;
}

void sub_2281A1160()
{
  if (!qword_27D824100)
  {
    v0 = MEMORY[0x277D77BE8];
    sub_2281A1384(255, &qword_27D824108, MEMORY[0x277D77BE8]);
    sub_2281A1218();
    sub_2281A13E8(&qword_27D827D00, &qword_27D824108, v0);
    v1 = sub_228391740();
    if (!v2)
    {
      atomic_store(v1, &qword_27D824100);
    }
  }
}

void sub_2281A1218()
{
  if (!qword_280DDBB50)
  {
    sub_22817A958(255, &qword_280DDB9E0, 0x277D115B8);
    v0 = sub_228392240();
    if (!v1)
    {
      atomic_store(v0, &qword_280DDBB50);
    }
  }
}

void sub_2281A1280()
{
  if (!qword_280DDBCC0)
  {
    sub_2281A1384(255, &qword_280DDBC60, sub_2281A1218);
    v0 = MEMORY[0x277CC9578];
    sub_2281A1384(255, &qword_280DDBCA0, MEMORY[0x277CC9578]);
    sub_2281A13E8(&qword_280DDBC68, &qword_280DDBC60, sub_2281A1218);
    sub_2281A13E8(&qword_280DDBCA8, &qword_280DDBCA0, v0);
    v1 = sub_228391670();
    if (!v2)
    {
      atomic_store(v1, &qword_280DDBCC0);
    }
  }
}

void sub_2281A1384(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_2283917F0();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_2281A13E8(unint64_t *a1, unint64_t *a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_2281A1384(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_2281A1438()
{
  if (!qword_280DDBCB0)
  {
    sub_2281A1280();
    sub_22817A958(255, &qword_280DDCEE0, 0x277D85C78);
    sub_2281A17D0(&qword_280DDBCC8, sub_2281A1280);
    sub_2281A1504();
    v0 = sub_2283917D0();
    if (!v1)
    {
      atomic_store(v0, &qword_280DDBCB0);
    }
  }
}

unint64_t sub_2281A1504()
{
  result = qword_280DDBAC0;
  if (!qword_280DDBAC0)
  {
    sub_22817A958(255, &qword_280DDCEE0, 0x277D85C78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DDBAC0);
  }

  return result;
}

uint64_t sub_2281A156C@<X0>(void *a1@<X8>)
{
  v2 = sub_2283906D0();
  v3 = v2;
  v13 = MEMORY[0x277D84F90];
  v4 = v2 & 0xFFFFFFFFFFFFFF8;
  if (!(v2 >> 62))
  {
    v5 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
      goto LABEL_3;
    }

LABEL_20:
    v7 = MEMORY[0x277D84F90];
    goto LABEL_21;
  }

LABEL_19:
  v5 = sub_2283930D0();
  if (!v5)
  {
    goto LABEL_20;
  }

LABEL_3:
  v6 = 0;
  v7 = MEMORY[0x277D84F90];
  do
  {
    v8 = v6;
    while (1)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x22AAB6D80](v8, v3);
      }

      else
      {
        if (v8 >= *(v4 + 16))
        {
          goto LABEL_18;
        }

        v9 = *(v3 + 8 * v8 + 32);
      }

      v10 = v9;
      v6 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
LABEL_18:
        __break(1u);
        goto LABEL_19;
      }

      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        break;
      }

      ++v8;
      if (v6 == v5)
      {
        goto LABEL_21;
      }
    }

    MEMORY[0x22AAB5D20]();
    if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v11 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_2283921E0();
    }

    sub_228392230();
    v7 = v13;
  }

  while (v6 != v5);
LABEL_21:

  *a1 = v7;
  return result;
}

uint64_t sub_2281A16F0(uint64_t a1)
{
  sub_2281A1888(0, &qword_280DDBAD0, MEMORY[0x277D85248], MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2281A1784(char *a1)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = *a1;
  sub_2281A1818();
  return v4(v5, &a1[*(v6 + 48)]);
}

uint64_t sub_2281A17D0(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_2281A1818()
{
  if (!qword_280DDBB40)
  {
    sub_2281A1218();
    sub_22838F440();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_280DDBB40);
    }
  }
}

void sub_2281A1888(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_2281A18EC(uint64_t a1)
{
  v2 = type metadata accessor for MedicationsRecordDoseItem(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_2281A1958(uint64_t a1)
{
  v1 = (a1 + qword_27D824118);
  v2 = *MEMORY[0x277D12788];
  v4 = sub_228392000();
  v5 = v3;

  MEMORY[0x22AAB5C80](0xD000000000000018, 0x80000002283A8730);

  *v1 = v4;
  v1[1] = v5;
  sub_228393300();
  __break(1u);
}

Swift::Void __swiftcall MedicationSideEffectsViewController.viewDidLoad()()
{
  v1.receiver = v0;
  v1.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v1, sel_viewDidLoad);
  sub_2281A1A58();
}

void sub_2281A1A58()
{
  if (qword_280DDCF18 != -1)
  {
    swift_once();
  }

  sub_22838F0C0();
  v1 = sub_228391FC0();

  [v0 setTitle_];

  v2 = [v0 collectionView];
  if (!v2)
  {
    __break(1u);
    goto LABEL_9;
  }

  v3 = v2;
  v4 = [objc_opt_self() systemGroupedBackgroundColor];
  [v3 setBackgroundColor_];

  v5 = [v0 collectionView];
  if (!v5)
  {
LABEL_9:
    __break(1u);
    return;
  }

  v6 = v5;
  v8 = *&v0[qword_27D824118];
  v9 = *&v0[qword_27D824118 + 8];

  MEMORY[0x22AAB5C80](0x6E6F747475422ELL, 0xE700000000000000);
  v7 = sub_228391FC0();

  [v6 setAccessibilityIdentifier_];
}

void sub_2281A1C1C(void *a1)
{
  v2.receiver = a1;
  v2.super_class = swift_getObjectType();
  v1 = v2.receiver;
  objc_msgSendSuper2(&v2, sel_viewDidLoad);
  sub_2281A1A58();
}

id MedicationSideEffectsViewController.__allocating_init(collectionViewLayout:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCollectionViewLayout_];

  return v3;
}

id MedicationSideEffectsViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for MedicationSideEffectsViewController()
{
  result = qword_27D824120;
  if (!qword_27D824120)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_19HealthMedicationsUI24ManualMedicationStrengthVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_2281A1EA8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 25))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 24);
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

uint64_t sub_2281A1EF0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = -a2;
    }
  }

  return result;
}

uint64_t sub_2281A1F54(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a2[2];
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_228393460() & 1) == 0)
  {
    return 0;
  }

  sub_2281A2270();
  return sub_228392C60() & 1;
}

uint64_t sub_2281A1FC8()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_228393520();
  sub_2283920B0();
  sub_228392C70();
  return sub_228393570();
}

uint64_t sub_2281A2028()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_2283920B0();
  return sub_228392C70();
}

uint64_t sub_2281A205C()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_228393520();
  sub_2283920B0();
  sub_228392C70();
  return sub_228393570();
}

uint64_t sub_2281A20DC(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, void *a7, char a8)
{
  if ((a4 & 1) == 0)
  {
    if ((a8 & 1) == 0)
    {
      sub_2281A2270();
      return sub_228392C60() & 1;
    }

    return 0;
  }

  if ((a8 & 1) == 0)
  {
    return 0;
  }

  if (a2)
  {
    if (a6)
    {
      if (a1 == a5 && a2 == a6 || (v9 = a5, v10 = a6, v11 = sub_228393460(), a5 = v9, a6 = v10, (v11 & 1) != 0))
      {
        v12 = a6;
        v13 = a5;
        sub_2281A2270();
        sub_2281A222C(v13, v12, a7);
        v14 = sub_228392C60();

        if (v14)
        {
          return 1;
        }
      }

      else
      {
        sub_2281A222C(v9, v10, a7);
      }
    }

    else
    {
      sub_2281A222C(a5, 0, a7);
    }

    return 0;
  }

  if (a6)
  {
    return 0;
  }

  sub_2281A222C(a5, 0, a7);
  return 1;
}

void sub_2281A222C(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {

    v3 = a3;
  }
}

unint64_t sub_2281A2270()
{
  result = qword_27D825620;
  if (!qword_27D825620)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27D825620);
  }

  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_2281A22D0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_2281A2318(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_2281A236C()
{
  result = qword_27D824130;
  if (!qword_27D824130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D824130);
  }

  return result;
}

uint64_t sub_2281A23C0()
{
  v1 = [v0 logStatus];
  if (v1 > 3)
  {
    switch(v1)
    {
      case 4:
        if (qword_280DDCF18 == -1)
        {
          return sub_22838F0C0();
        }

        goto LABEL_20;
      case 5:
        goto LABEL_18;
      case 6:
        if (qword_280DDCF18 == -1)
        {
          return sub_22838F0C0();
        }

        goto LABEL_20;
    }

LABEL_15:
    [v0 logStatus];
    v2 = HKMedicationDoseEventStatusToString();
    v3 = sub_228392000();

    return v3;
  }

  if (v1 == 1)
  {
    if (qword_280DDCF18 == -1)
    {
      return sub_22838F0C0();
    }

    goto LABEL_20;
  }

  if (v1 == 2)
  {
    if (qword_280DDCF18 == -1)
    {
      return sub_22838F0C0();
    }

    goto LABEL_20;
  }

  if (v1 != 3)
  {
    goto LABEL_15;
  }

LABEL_18:
  if (qword_280DDCF18 != -1)
  {
LABEL_20:
    swift_once();
  }

  return sub_22838F0C0();
}

void UIViewController.showIncompatibleWatchAlertIfNeeded(for:okHandler:cancelHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  ObjectType = swift_getObjectType();
  v12 = [objc_allocWithZone(MEMORY[0x277D115A0]) init];
  v13 = swift_allocObject();
  v13[2] = a2;
  v13[3] = a3;
  v13[4] = a4;
  v13[5] = a5;
  v13[6] = v5;
  v13[7] = ObjectType;
  v16[4] = sub_22817E0E8;
  v16[5] = v13;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 1107296256;
  v16[2] = sub_2281A2F3C;
  v16[3] = &block_descriptor_3;
  v14 = _Block_copy(v16);
  sub_228176FA8(a2);
  sub_228176FA8(a4);
  v15 = v5;

  [v12 checkIncompatibilityForSchedule:a1 completion:v14];
  _Block_release(v14);
}

void UIViewController.presentAsFormSheetWithNavigationController(viewController:isModalInPresentation:leadingAction:trailingAction:)(void *a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v13 = [objc_allocWithZone(MEMORY[0x277D12978]) initWithRootViewController_];
  if (a3)
  {

    v14 = [a1 navigationItem];
    sub_22817A958(0, &qword_27D824138, 0x277D751E0);
    sub_22817A958(0, &qword_27D827890, 0x277D750C8);
    v15 = swift_allocObject();
    v15[2] = a3;
    v15[3] = a4;
    v15[4] = v13;
    sub_228176FA8(a3);
    v16 = v13;
    sub_228392C90();
    v17 = sub_228392640();
    [v14 setLeftBarButtonItem_];

    v7 = v6;
    sub_228176EC8(a3);
  }

  if (a5)
  {

    v18 = [a1 navigationItem];
    sub_22817A958(0, &qword_27D824138, 0x277D751E0);
    sub_22817A958(0, &qword_27D827890, 0x277D750C8);
    v19 = swift_allocObject();
    v19[2] = a5;
    v19[3] = a6;
    v19[4] = v13;
    v20 = v13;
    sub_228176FA8(a5);
    sub_228392C90();
    v21 = sub_228392640();
    [v18 setRightBarButtonItem_];

    sub_228176EC8(a5);
  }

  v23 = v13;
  [v23 setModalPresentationStyle_];
  [v23 setModalInPresentation_];

  [v7 presentViewController:v23 animated:1 completion:0];
}

void sub_2281A2ADC(void *a1, void *a2, void (*a3)(void), id a4, uint64_t a5, uint64_t a6, void *a7)
{
  v48 = a4;
  v13 = sub_2283911B0();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v47 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v19 = a2;
    sub_228391150();
    v20 = a2;
    v21 = sub_2283911A0();
    v22 = sub_2283925C0();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v50 = v24;
      *v23 = 136446466;
      v25 = sub_228393600();
      v27 = sub_2281C96FC(v25, v26, &v50);
      v47 = a3;
      v28 = v27;

      *(v23 + 4) = v28;
      *(v23 + 12) = 2080;
      v49 = a2;
      v29 = a2;
      sub_228192C1C();
      v30 = sub_228392040();
      v32 = sub_2281C96FC(v30, v31, &v50);
      a3 = v47;

      *(v23 + 14) = v32;
      _os_log_impl(&dword_22816B000, v21, v22, "[%{public}s]: Error: %s", v23, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AAB7B80](v24, -1, -1);
      MEMORY[0x22AAB7B80](v23, -1, -1);
    }

    v33 = (*(v14 + 8))(v18, v13);
    if (a3)
    {
      a3(v33);
    }

    return;
  }

  if (a1)
  {
    v34 = a1;
    v35 = [v34 incompatibleDevices];
    sub_22817A958(0, &qword_27D824140, 0x277D114E8);
    v36 = sub_2283921A0();

    if (v36 >> 62)
    {
      if (sub_2283930D0())
      {
        goto LABEL_11;
      }
    }

    else if (*((v36 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_11:
      if ((v36 & 0xC000000000000001) != 0)
      {
        v37 = a3;
        v38 = MEMORY[0x22AAB6D80](0, v36);
        goto LABEL_14;
      }

      if (*((v36 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v37 = a3;
        v38 = *(v36 + 32);
LABEL_14:
        v39 = v38;

        v40 = [v39 deviceName];

        v41 = sub_228392000();
        v43 = v42;

        v44 = v41;
        a3 = v37;
LABEL_20:
        v48 = _sSo17UIAlertControllerC19HealthMedicationsUIE46makeAlertForMedicationWithIncompatibleSchedule10deviceName9okHandler06cancelP0ABSS_yycSgAHtFZ_0(v44, v43, a3, v48, a5, a6);

        [a7 presentViewController:v48 animated:1 completion:0];

        v46 = v48;

        return;
      }

      __break(1u);
      goto LABEL_25;
    }

    if (qword_280DDCF18 == -1)
    {
LABEL_19:
      v44 = sub_22838F0C0();
      v43 = v45;
      goto LABEL_20;
    }

LABEL_25:
    swift_once();
    goto LABEL_19;
  }

  if (a3)
  {
    a3(v16);
  }
}

void sub_2281A2F3C(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v8 = a2;
  v7 = a3;
  v6(a2, a3);
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t objectdestroy_2Tm_0()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2281A3058(uint64_t a1, uint64_t *a2)
{
  sub_2281A42AC(a1, v6, &qword_280DDCD50, sub_22817A700);
  v3 = *a2;
  v4 = OBJC_IVAR____TtC19HealthMedicationsUI25InteractionNotCheckedCell_item;
  swift_beginAccess();
  sub_22818FD64(v6, v3 + v4);
  swift_endAccess();
  sub_2281A3D6C();
  return sub_2281A4318(v6, &qword_280DDCD50, sub_22817A700);
}

uint64_t sub_2281A30FC@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC19HealthMedicationsUI25InteractionNotCheckedCell_item;
  swift_beginAccess();
  return sub_2281A42AC(v1 + v3, a1, &qword_280DDCD50, sub_22817A700);
}

uint64_t sub_2281A3170(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC19HealthMedicationsUI25InteractionNotCheckedCell_item;
  swift_beginAccess();
  sub_22818FD64(a1, v1 + v3);
  swift_endAccess();
  sub_2281A3D6C();
  return sub_2281A4318(a1, &qword_280DDCD50, sub_22817A700);
}

void (*sub_2281A31F8(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_2281A325C;
}

void sub_2281A325C(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = *(a1 + 24);
    sub_2281A3D6C();
  }
}

id sub_2281A3290()
{
  v1 = OBJC_IVAR____TtC19HealthMedicationsUI25InteractionNotCheckedCell____lazy_storage___medicationView;
  v2 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI25InteractionNotCheckedCell____lazy_storage___medicationView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI25InteractionNotCheckedCell____lazy_storage___medicationView);
  }

  else
  {
    v4 = [objc_allocWithZone(sub_228390970()) initWithFrame_];
    [v4 setTranslatesAutoresizingMaskIntoConstraints_];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_2281A3328()
{
  v1 = OBJC_IVAR____TtC19HealthMedicationsUI25InteractionNotCheckedCell____lazy_storage___titleLabel;
  v2 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI25InteractionNotCheckedCell____lazy_storage___titleLabel);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI25InteractionNotCheckedCell____lazy_storage___titleLabel);
  }

  else
  {
    v4 = sub_2281A3388();
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_2281A3388()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v1 = *MEMORY[0x277D12788];
  v9 = sub_228392000();
  v10 = v2;
  v3 = v0;

  MEMORY[0x22AAB5C80](0xD00000000000001ALL, 0x80000002283A8960);

  MEMORY[0x22AAB5C80](0x614C656C7469542ELL, 0xEB000000006C6562);

  v4 = sub_228391FC0();

  [v3 setAccessibilityIdentifier_];

  sub_22817A958(0, &qword_280DDB9C0, 0x277D74300);
  v5 = *MEMORY[0x277D76918];
  v6 = sub_228392AD0();
  [v3 setFont_];

  v7 = [objc_opt_self() secondaryLabelColor];
  [v3 setTextColor_];

  [v3 setTranslatesAutoresizingMaskIntoConstraints_];
  [v3 setNumberOfLines_];
  [v3 setAdjustsFontForContentSizeCategory_];
  return v3;
}

id sub_2281A3624(void *a1)
{
  v3 = &v1[OBJC_IVAR____TtC19HealthMedicationsUI25InteractionNotCheckedCell_item];
  *v3 = 0u;
  *(v3 + 1) = 0u;
  *(v3 + 4) = 0;
  *&v1[OBJC_IVAR____TtC19HealthMedicationsUI25InteractionNotCheckedCell____lazy_storage___medicationView] = 0;
  *&v1[OBJC_IVAR____TtC19HealthMedicationsUI25InteractionNotCheckedCell____lazy_storage___titleLabel] = 0;
  v6.receiver = v1;
  v6.super_class = type metadata accessor for InteractionNotCheckedCell();
  v4 = objc_msgSendSuper2(&v6, sel_initWithCoder_, a1);

  if (v4)
  {
  }

  return v4;
}

void sub_2281A373C()
{
  v1 = v0;
  sub_2281A4374(0, &unk_280DDBCD0, MEMORY[0x277D74BD0]);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v6 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v49 - v7;
  v9 = [v0 contentView];
  v10 = sub_2281A3290();
  [v9 addSubview_];

  v11 = [v1 contentView];
  v12 = sub_2281A3328();
  [v11 addSubview_];

  sub_228391390();
  v13 = sub_2283913A0();
  v14 = *(v13 - 8);
  (*(v14 + 56))(v8, 0, 1, v13);
  v15 = MEMORY[0x22AAB6420](v8);
  MEMORY[0x22AAB6410](v15);
  if ((*(v14 + 48))(v6, 1, v13))
  {
    v16 = MEMORY[0x277D74BD0];
    sub_2281A42AC(v6, v8, &unk_280DDBCD0, MEMORY[0x277D74BD0]);
    MEMORY[0x22AAB6420](v8);
    sub_2281A4318(v6, &unk_280DDBCD0, v16);
  }

  else
  {
    v17 = [objc_opt_self() quaternarySystemFillColor];
    sub_228391370();
    MEMORY[0x22AAB6420](v6);
  }

  v50 = objc_opt_self();
  sub_228180ED0();
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_228399190;
  v19 = OBJC_IVAR____TtC19HealthMedicationsUI25InteractionNotCheckedCell____lazy_storage___medicationView;
  v20 = [*&v1[OBJC_IVAR____TtC19HealthMedicationsUI25InteractionNotCheckedCell____lazy_storage___medicationView] leadingAnchor];
  v21 = [v1 contentView];
  v22 = [v21 leadingAnchor];

  v23 = [v20 constraintEqualToAnchor:v22 constant:16.0];
  *(v18 + 32) = v23;
  v24 = [*&v1[v19] topAnchor];
  v25 = [v1 contentView];
  v26 = [v25 topAnchor];

  v27 = [v24 constraintEqualToAnchor:v26 constant:16.0];
  *(v18 + 40) = v27;
  v28 = [*&v1[v19] bottomAnchor];
  v29 = [v1 contentView];
  v30 = [v29 bottomAnchor];

  v31 = [v28 constraintEqualToAnchor:v30 constant:-16.0];
  *(v18 + 48) = v31;
  v32 = [*&v1[v19] widthAnchor];
  v33 = [v32 constraintEqualToConstant_];

  *(v18 + 56) = v33;
  v34 = [*&v1[v19] heightAnchor];
  v35 = [v34 constraintEqualToConstant_];

  *(v18 + 64) = v35;
  v36 = OBJC_IVAR____TtC19HealthMedicationsUI25InteractionNotCheckedCell____lazy_storage___titleLabel;
  v37 = [*&v1[OBJC_IVAR____TtC19HealthMedicationsUI25InteractionNotCheckedCell____lazy_storage___titleLabel] leadingAnchor];
  v38 = [*&v1[v19] trailingAnchor];
  v39 = [v37 constraintEqualToAnchor:v38 constant:16.0];

  *(v18 + 72) = v39;
  v40 = [*&v1[v36] centerYAnchor];
  v41 = [v1 contentView];
  v42 = [v41 centerYAnchor];

  v43 = [v40 constraintEqualToAnchor_];
  *(v18 + 80) = v43;
  v44 = [*&v1[v36] trailingAnchor];
  v45 = [v1 contentView];
  v46 = [v45 trailingAnchor];

  v47 = [v44 constraintEqualToAnchor:v46 constant:-16.0];
  *(v18 + 88) = v47;
  sub_22817A958(0, &qword_280DDBA90, 0x277CCAAD0);
  v48 = sub_228392190();

  [v50 activateConstraints_];
}

void sub_2281A3D6C()
{
  v1 = v0;
  v2 = sub_2283911B0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2281A4374(0, &qword_280DDBD20, MEMORY[0x277D116C8]);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = OBJC_IVAR____TtC19HealthMedicationsUI25InteractionNotCheckedCell_item;
  swift_beginAccess();
  sub_2281A42AC(v1 + v9, v28, &qword_280DDCD50, sub_22817A700);
  if (v28[3])
  {
    sub_22817A700();
    type metadata accessor for InteractionNotCheckedItem();
    if (swift_dynamicCast())
    {
      v10 = v27;
      v11 = sub_2281A3290();
      v12 = *(v10 + 16);
      _sSo29HKMedicationUserDomainConceptC19HealthMedicationsUIE7medmoji0eF10Experience29MedicationVisualizationConfigVSgvg_0();
      sub_228390950();

      v13 = sub_2281A3328();
      v28[0] = *(v10 + 16);
      v14 = v28[0];
      sub_22817A958(0, &qword_280DDB9E0, 0x277D115B8);
      v15 = v14;
      sub_228390F20();
      v16 = sub_228391FC0();

      [v13 setText_];

      return;
    }
  }

  else
  {
    sub_2281A4318(v28, &qword_280DDCD50, sub_22817A700);
  }

  sub_228391150();
  v17 = v1;
  v18 = sub_2283911A0();
  v19 = sub_2283925C0();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v26 = v2;
    v27 = v21;
    v22 = v21;
    *v20 = 136446210;
    sub_2281A42AC(v1 + v9, v28, &qword_280DDCD50, sub_22817A700);
    sub_2281A4374(0, &qword_280DDCD50, sub_22817A700);
    v23 = sub_228392040();
    v25 = sub_2281C96FC(v23, v24, &v27);

    *(v20 + 4) = v25;
    _os_log_impl(&dword_22816B000, v18, v19, "Incorrect view model for InteractionFactorsItem: %{public}s", v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v22);
    MEMORY[0x22AAB7B80](v22, -1, -1);
    MEMORY[0x22AAB7B80](v20, -1, -1);

    (*(v3 + 8))(v6, v26);
  }

  else
  {

    (*(v3 + 8))(v6, v2);
  }
}

id InteractionNotCheckedCell.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for InteractionNotCheckedCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2281A42AC(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t))
{
  sub_2281A4374(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_2281A4318(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_2281A4374(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_2281A4374(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_228392F00();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t RelatedCHRRecordsDataSource.__allocating_init(with:healthStore:)(void *a1, void *a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  swift_allocObject();
  return RelatedCHRRecordsDataSource.init(with:healthStore:)(a1, a2);
}

uint64_t RelatedCHRRecordsDataSource.init(with:healthStore:)(void *a1, void *a2)
{
  v3 = v2;
  v6 = qword_27D824160;
  sub_22838F8E0();
  v7 = sub_22838F8D0();
  v8 = sub_22838F8C0();

  *(v3 + v6) = v8;
  *(v3 + qword_27D824168) = MEMORY[0x277D84FA0];
  v9 = sub_228390EA0();
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  swift_allocObject();
  v12 = a2;
  *(v3 + qword_27D824170) = sub_228390E90();
  type metadata accessor for ClinicalRecordsMedicationsProvider();
  v13 = swift_allocObject();
  *(v13 + 16) = v12;
  *(v3 + qword_27D824178) = v13;
  v14 = v12;
  v15 = sub_22838F920();

  sub_2281A4524(a1);

  return v15;
}

uint64_t sub_2281A4524(void *a1)
{
  sub_2281A629C(0, &qword_280DDBAD0, MEMORY[0x277D85248], MEMORY[0x277D83D88]);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v55 = v42 - v5;
  sub_2281A6308();
  v7 = *(v6 - 8);
  v43 = v6;
  v44 = v7;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2281A662C();
  v12 = *(v11 - 8);
  v46 = v11;
  v47 = v12;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2281A66E8();
  v17 = *(v16 - 8);
  v48 = v16;
  v49 = v17;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2281A6870();
  v22 = *(v21 - 8);
  v51 = v21;
  v52 = v22;
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  v45 = v42 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2281A6904();
  v26 = *(v25 - 8);
  v53 = v25;
  v54 = v26;
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v25);
  v50 = v42 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = a1;
  v29 = *(v1 + qword_27D824170);

  sub_2283917E0();
  sub_2281A65B4();
  sub_2281A63F4();
  sub_2281A60D8(&qword_27D8241C0, sub_2281A65B4);
  sub_2281A60D8(&qword_27D8241C8, sub_2281A63F4);
  sub_228391AF0();

  sub_22817A958(0, &qword_27D823BD8, 0x277CCD1B0);
  sub_2281A60D8(&qword_27D8241E0, sub_2281A6308);
  v30 = v43;
  sub_2283919A0();
  (*(v44 + 8))(v10, v30);
  v31 = *(v42[1] + qword_27D824178);

  sub_2283917E0();
  sub_2281A6490(0, &qword_27D8241F8, &qword_27D824200, 0x277CCD5F8, MEMORY[0x277D83940]);
  sub_2281A67D4();
  sub_2281A60D8(&qword_27D824210, sub_2281A662C);
  sub_2281A60D8(&qword_27D824208, sub_2281A67D4);
  v32 = v46;
  sub_228391A50();

  (*(v47 + 8))(v15, v32);
  v56 = MEMORY[0x277D84F90];
  sub_2281A60D8(&qword_27D824220, sub_2281A66E8);
  v33 = v45;
  v34 = v48;
  sub_2283919B0();
  (*(v49 + 8))(v20, v34);
  sub_22817A958(0, &qword_280DDCEE0, 0x277D85C78);
  v35 = sub_228392790();
  v56 = v35;
  v36 = sub_228392730();
  v37 = v55;
  (*(*(v36 - 8) + 56))(v55, 1, 1, v36);
  sub_2281A60D8(&qword_27D824230, sub_2281A6870);
  sub_2281A1504();
  v38 = v50;
  v39 = v51;
  sub_228391A70();
  sub_2281A16F0(v37);

  (*(v52 + 8))(v33, v39);
  swift_allocObject();
  swift_weakInit();
  sub_2281A60D8(&qword_27D824238, sub_2281A6904);
  v40 = v53;
  sub_228391AC0();

  (*(v54 + 8))(v38, v40);
  swift_beginAccess();
  sub_228391800();
  swift_endAccess();
}

uint64_t sub_2281A4D24@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  sub_228390E80();
  sub_2281A63F4();
  sub_2281A60D8(&qword_27D8241C8, sub_2281A63F4);
  v4 = sub_228391990();

  *a2 = v4;
  return result;
}

id sub_2281A4DC8@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  *a2 = v2;
  return v2;
}

uint64_t sub_2281A4DD4(unint64_t *a1)
{
  v23 = sub_228390170();
  v2 = *(v23 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v23);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v8 = result;
    if (v6 >> 62)
    {
      v9 = sub_2283930D0();
    }

    else
    {
      v9 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v10 = MEMORY[0x277D84F90];
    if (v9)
    {
      v24 = MEMORY[0x277D84F90];
      result = sub_2281C9FFC(0, v9 & ~(v9 >> 63), 0);
      if (v9 < 0)
      {
        __break(1u);
        return result;
      }

      v22 = v8;
      v11 = 0;
      v10 = v24;
      v12 = v6;
      v21 = v6 & 0xC000000000000001;
      do
      {
        if (v21)
        {
          v13 = MEMORY[0x22AAB6D80](v11);
        }

        else
        {
          v13 = *(v12 + 8 * v11 + 32);
        }

        v14 = v13;
        sub_2281A51B0(v13, v5);

        v24 = v10;
        v16 = *(v10 + 16);
        v15 = *(v10 + 24);
        if (v16 >= v15 >> 1)
        {
          sub_2281C9FFC(v15 > 1, v16 + 1, 1);
          v10 = v24;
        }

        ++v11;
        *(v10 + 16) = v16 + 1;
        (*(v2 + 32))(v10 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v16, v5, v23);
        v12 = v6;
      }

      while (v9 != v11);
    }

    sub_22838F910();

    sub_22838FCD0();

    sub_2281A629C(0, &qword_27D823910, MEMORY[0x277D10F78], MEMORY[0x277D84560]);
    v17 = *(sub_22838FEF0() - 8);
    v18 = *(v17 + 72);
    v19 = (*(v17 + 80) + 32) & ~*(v17 + 80);
    *(swift_allocObject() + 16) = xmmword_228397F40;
    if (qword_280DDCF18 != -1)
    {
      swift_once();
    }

    sub_22838F0C0();
    sub_228195594(v10);

    sub_22838FED0();
    sub_22838FF50();
  }

  return result;
}

uint64_t sub_2281A51B0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v72 = a2;
  v3 = sub_228390460();
  v70 = *(v3 - 8);
  v71 = v3;
  v4 = *(v70 + 64);
  MEMORY[0x28223BE20](v3);
  v69 = &v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x277D83D88];
  sub_2281A629C(0, &unk_280DDBCD0, MEMORY[0x277D74BD0], MEMORY[0x277D83D88]);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v67 = &v53 - v9;
  v10 = sub_22838FFC0();
  v65 = *(v10 - 8);
  v66 = v10;
  v11 = *(v65 + 64);
  MEMORY[0x28223BE20](v10);
  v64 = &v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2281A629C(0, &qword_280DDBCE8, MEMORY[0x277D74AC8], v6);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v61 = &v53 - v15;
  v16 = sub_2283912A0();
  v62 = *(v16 - 8);
  v63 = v16;
  v17 = *(v62 + 64);
  MEMORY[0x28223BE20](v16);
  v60 = &v53 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_228391220();
  v58 = *(v19 - 8);
  v59 = v19;
  v20 = *(v58 + 64);
  MEMORY[0x28223BE20](v19);
  v22 = &v53 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_22838F4A0();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v23);
  v27 = &v53 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_228391590();
  v28 = *(v54 - 8);
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v54);
  v31 = &v53 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228391580();
  v55 = a1;
  v32 = [a1 sourceRevision];
  v33 = [v32 source];

  v34 = [v33 name];
  sub_228392000();

  sub_228391540();
  v35 = [a1 UUID];
  sub_22838F480();

  v57 = sub_22838F450();
  v56 = v36;
  (*(v24 + 8))(v27, v23);
  v37 = v54;
  v73[3] = v54;
  v73[4] = MEMORY[0x277D74C30];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v73);
  (*(v28 + 16))(boxed_opaque_existential_1, v31, v37);
  sub_2281A629C(0, &unk_280DDB890, MEMORY[0x277D74AE0], MEMORY[0x277D84560]);
  v39 = *(sub_2283912F0() - 8);
  v40 = *(v39 + 72);
  v41 = (*(v39 + 80) + 32) & ~*(v39 + 80);
  *(swift_allocObject() + 16) = xmmword_228397F40;
  v43 = v58;
  v42 = v59;
  (*(v58 + 104))(v22, *MEMORY[0x277D74A98], v59);
  v44 = sub_228391230();
  (*(*(v44 - 8) + 56))(v61, 1, 1, v44);
  v45 = v60;
  sub_228391290();
  sub_228391260();
  (*(v62 + 8))(v45, v63);
  (*(v43 + 8))(v22, v42);
  v46 = *(v68 + qword_27D824160);
  v47 = swift_allocObject();
  v48 = v55;
  *(v47 + 16) = v55;
  *(v47 + 24) = v46;
  (*(v65 + 104))(v64, *MEMORY[0x277D10F98], v66);
  v49 = sub_2283913A0();
  (*(*(v49 - 8) + 56))(v67, 1, 1, v49);
  (*(v70 + 104))(v69, *MEMORY[0x277D11140], v71);
  v50 = v46;
  v51 = v48;
  sub_228390160();
  return (*(v28 + 8))(v31, v37);
}

void sub_2281A597C(void *a1)
{
  sub_22838FA40();
  v2 = sub_22838FA30();
  v5 = sub_22838FA20();

  v3 = [a1 navigationController];
  if (v3)
  {
    v4 = v3;
    [v3 pushViewController:v5 animated:1];
  }
}

uint64_t sub_2281A5A28()
{
  v0 = sub_2283900D0();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228390010();
  v5 = sub_2283900C0();
  (*(v1 + 8))(v4, v0);
  return v5;
}

uint64_t sub_2281A5AFC()
{
  v1 = *(v0 + qword_27D824170);

  v2 = *(v0 + qword_27D824178);

  v3 = *(v0 + qword_27D824168);
}

uint64_t RelatedCHRRecordsDataSource.deinit()
{
  v1 = qword_27D824168;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if ((v2 & 0xC000000000000001) != 0)
  {
    if (v2 < 0)
    {
      v3 = *(v0 + v1);
    }

    swift_unknownObjectRetain();
    sub_228393080();
    sub_228391820();
    sub_2281A60D8(&qword_27D824180, MEMORY[0x277CBCDA8]);
    result = sub_2283924C0();
    v6 = v23;
    v5 = v24;
    v7 = v25;
    v8 = v26;
    v9 = v27;
  }

  else
  {
    v10 = -1 << *(v2 + 32);
    v5 = v2 + 56;
    v7 = ~v10;
    v11 = -v10;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v9 = v12 & *(v2 + 56);
    result = swift_bridgeObjectRetain_n();
    v8 = 0;
    v6 = v2;
  }

  if (v6 < 0)
  {
    goto LABEL_16;
  }

  while (1)
  {
    v13 = v8;
    v14 = v9;
    v15 = v8;
    if (!v9)
    {
      break;
    }

LABEL_14:
    v16 = (v14 - 1) & v14;
    v17 = *(*(v6 + 48) + ((v15 << 9) | (8 * __clz(__rbit64(v14)))));

    if (!v17)
    {
LABEL_20:
      sub_228176F04();

      v18 = _s19HealthMedicationsUI34InteractionSeperatorLineDataSourceCfd_0();
      v19 = *(v18 + qword_27D824170);

      v20 = *(v18 + qword_27D824178);

      v21 = *(v18 + qword_27D824168);

      return v18;
    }

    while (1)
    {
      sub_228391810();

      v8 = v15;
      v9 = v16;
      if ((v6 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_16:
      if (sub_228393100())
      {
        sub_228391820();
        swift_dynamicCast();
        v15 = v8;
        v16 = v9;
        if (v22)
        {
          continue;
        }
      }

      goto LABEL_20;
    }
  }

  while (1)
  {
    v15 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v15 >= ((v7 + 64) >> 6))
    {
      goto LABEL_20;
    }

    v14 = *(v5 + 8 * v15);
    ++v13;
    if (v14)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t RelatedCHRRecordsDataSource.__deallocating_deinit()
{
  RelatedCHRRecordsDataSource.deinit();

  return swift_deallocClassInstance();
}

Swift::Void __swiftcall RelatedCHRRecordsDataSource.registerCells(for:)(UICollectionView *a1)
{
  sub_228390120();
  sub_2283926D0();
  sub_2283904F0();
  sub_2283926B0();
}

uint64_t sub_2281A5EE4()
{
  sub_228390120();
  sub_2283926D0();
  sub_2283904F0();
  return sub_2283926B0();
}

uint64_t RelatedCHRRecordsDataSource.supplementaryItem(ofKind:at:)@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_228391590();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  if (qword_280DDCF18 != -1)
  {
    swift_once();
  }

  sub_22838F0C0();
  sub_228391500();
  v4 = sub_22838FB60();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  v7 = sub_22838FB50();
  a1[3] = v4;
  result = sub_2281A60D8(&qword_27D823960, MEMORY[0x277D10E18]);
  a1[4] = result;
  *a1 = v7;
  return result;
}

uint64_t sub_2281A60D8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for RelatedCHRRecordsDataSource()
{
  result = qword_27D824190;
  if (!qword_27D824190)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2281A629C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_2281A6300(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  sub_2281A597C(a1);
}

void sub_2281A6308()
{
  if (!qword_27D8241A0)
  {
    sub_2281A63F4();
    sub_2281A64F8();
    sub_2281A60D8(&qword_27D8241C8, sub_2281A63F4);
    sub_2281A60D8(&qword_27D8241D0, sub_2281A64F8);
    v0 = sub_228391780();
    if (!v1)
    {
      atomic_store(v0, &qword_27D8241A0);
    }
  }
}

void sub_2281A63F4()
{
  if (!qword_27D8241A8)
  {
    sub_2281A6490(255, &unk_27D8277B0, &qword_27D823BD8, 0x277CCD1B0, MEMORY[0x277D83D88]);
    sub_228192C1C();
    v0 = sub_2283917F0();
    if (!v1)
    {
      atomic_store(v0, &qword_27D8241A8);
    }
  }
}

void sub_2281A6490(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_22817A958(255, a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_2281A64F8()
{
  if (!qword_27D8241B0)
  {
    sub_2281A65B4();
    sub_228192C1C();
    sub_2281A60D8(&qword_27D8241C0, sub_2281A65B4);
    v0 = sub_228391710();
    if (!v1)
    {
      atomic_store(v0, &qword_27D8241B0);
    }
  }
}

void sub_2281A65B4()
{
  if (!qword_27D8241B8)
  {
    sub_22817A958(255, &qword_280DDB9E0, 0x277D115B8);
    v0 = sub_228391880();
    if (!v1)
    {
      atomic_store(v0, &qword_27D8241B8);
    }
  }
}

void sub_2281A662C()
{
  if (!qword_27D8241D8)
  {
    sub_2281A6308();
    sub_22817A958(255, &qword_27D823BD8, 0x277CCD1B0);
    sub_2281A60D8(&qword_27D8241E0, sub_2281A6308);
    v0 = sub_2283916D0();
    if (!v1)
    {
      atomic_store(v0, &qword_27D8241D8);
    }
  }
}

void sub_2281A66E8()
{
  if (!qword_27D8241E8)
  {
    sub_2281A67D4();
    sub_2281A662C();
    sub_2281A60D8(&qword_27D824208, sub_2281A67D4);
    sub_2281A60D8(&qword_27D824210, sub_2281A662C);
    v0 = sub_228391780();
    if (!v1)
    {
      atomic_store(v0, &qword_27D8241E8);
    }
  }
}

void sub_2281A67D4()
{
  if (!qword_27D8241F0)
  {
    sub_2281A6490(255, &qword_27D8241F8, &qword_27D824200, 0x277CCD5F8, MEMORY[0x277D83940]);
    sub_228192C1C();
    v0 = sub_2283917F0();
    if (!v1)
    {
      atomic_store(v0, &qword_27D8241F0);
    }
  }
}

void sub_2281A6870()
{
  if (!qword_27D824218)
  {
    sub_2281A66E8();
    sub_2281A60D8(&qword_27D824220, sub_2281A66E8);
    v0 = sub_228391700();
    if (!v1)
    {
      atomic_store(v0, &qword_27D824218);
    }
  }
}

void sub_2281A6904()
{
  if (!qword_27D824228)
  {
    sub_2281A6870();
    sub_22817A958(255, &qword_280DDCEE0, 0x277D85C78);
    sub_2281A60D8(&qword_27D824230, sub_2281A6870);
    sub_2281A1504();
    v0 = sub_2283917D0();
    if (!v1)
    {
      atomic_store(v0, &qword_27D824228);
    }
  }
}

uint64_t sub_2281A69D8@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_228318E64(*a1);
  *a2 = result;
  return result;
}

id sub_2281A6A1C()
{
  sub_2281A99B0();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + 48);
  if (v5)
  {
    v6 = *(v0 + 48);
  }

  else
  {
    v7 = sub_228390D50();
    (*(*(v7 - 8) + 56))(v4, 1, 1, v7);
    v8 = *(v0 + 24);
    sub_228392AC0();
    v11 = sub_2281BF3D4(v9, v10, 1, v4);
    sub_2281A9A08(v4);
    v12 = *(v0 + 48);
    *(v0 + 48) = v11;
    v6 = v11;

    v5 = 0;
  }

  v13 = v5;
  return v6;
}

uint64_t MedmojiImageCache.__allocating_init(listManager:imageDimension:includeArchived:)(uint64_t a1, char a2, double a3)
{
  v6 = swift_allocObject();
  *(v6 + 40) = sub_2281A8F00(MEMORY[0x277D84F90], sub_2281A9A64, sub_2281A78C0);
  *(v6 + 48) = 0;
  *(v6 + 16) = a1;
  *(v6 + 24) = a3;
  *(v6 + 32) = a2;
  sub_2281A6D7C();
  return v6;
}

uint64_t MedmojiImageCache.init(listManager:imageDimension:includeArchived:)(uint64_t a1, char a2, double a3)
{
  *(v3 + 40) = sub_2281A8F00(MEMORY[0x277D84F90], sub_2281A9A64, sub_2281A78C0);
  *(v3 + 48) = 0;
  *(v3 + 16) = a1;
  *(v3 + 24) = a3;
  *(v3 + 32) = a2;

  sub_2281A6D7C();

  return v3;
}

id sub_2281A6C44(void *a1)
{
  v2 = [a1 semanticIdentifier];
  swift_beginAccess();
  v3 = *(v1 + 40);
  if ((v3 & 0xC000000000000001) != 0)
  {
    if (v3 < 0)
    {
      v4 = *(v1 + 40);
    }

    v5 = *(v1 + 40);

    v6 = v2;
    v7 = sub_2283932D0();

    if (!v7)
    {
      goto LABEL_10;
    }

    sub_22817A958(0, &qword_280DDB980, 0x277D755B8);
    swift_dynamicCast();
    v8 = v14;
    if (!v14)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v9 = *(v3 + 16);
    v10 = *(v1 + 40);

    if (!v9 || (v11 = sub_2281A78C0(v2), (v12 & 1) == 0) || (v8 = *(*(v3 + 56) + 8 * v11)) == 0)
    {
LABEL_10:
      v8 = sub_2281A6A1C();
    }
  }

  return v8;
}

uint64_t sub_2281A6D7C()
{
  v1 = v0;
  sub_2281A99B0();
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v93 = v90 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v90[1] = *(v0 + 16);
  v91 = v90 - v6;
  v7 = sub_228390660();
  v8 = v7;
  v98 = MEMORY[0x277D84F90];
  v9 = v7 & 0xFFFFFFFFFFFFFF8;
  if (v7 >> 62)
  {
LABEL_57:
    v10 = sub_2283930D0();
  }

  else
  {
    v10 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v10)
  {
    v11 = 0;
    v92 = MEMORY[0x277D84F90];
    while (2)
    {
      v12 = v11;
      while (1)
      {
        if ((v8 & 0xC000000000000001) != 0)
        {
          v13 = MEMORY[0x22AAB6D80](v12, v8);
        }

        else
        {
          if (v12 >= *(v9 + 16))
          {
            goto LABEL_51;
          }

          v13 = *(v8 + 8 * v12 + 32);
        }

        v14 = v13;
        v11 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          __break(1u);
LABEL_51:
          __break(1u);
LABEL_52:
          __break(1u);
LABEL_53:
          __break(1u);
LABEL_54:
          __break(1u);
LABEL_55:
          __break(1u);
LABEL_56:
          __break(1u);
          goto LABEL_57;
        }

        objc_opt_self();
        if (swift_dynamicCastObjCClass())
        {
          break;
        }

        ++v12;
        if (v11 == v10)
        {
          goto LABEL_19;
        }
      }

      MEMORY[0x22AAB5D20]();
      if (*((v98 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v98 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v15 = *((v98 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_2283921E0();
      }

      sub_228392230();
      v92 = v98;
      if (v11 != v10)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v92 = MEMORY[0x277D84F90];
  }

LABEL_19:

  v16 = v92;
  if (v92 >> 62)
  {
    v17 = sub_2283930D0();
    v8 = v91;
    if (v17)
    {
      goto LABEL_21;
    }
  }

  else
  {
    v17 = *((v92 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v8 = v91;
    if (v17)
    {
LABEL_21:
      v18 = 0;
      v95 = v16 & 0xFFFFFFFFFFFFFF8;
      v96 = v16 & 0xC000000000000001;
      v94 = v17;
      do
      {
        if (v96)
        {
          v20 = MEMORY[0x22AAB6D80](v18, v16);
        }

        else
        {
          if (v18 >= *(v95 + 16))
          {
            goto LABEL_53;
          }

          v20 = *(v16 + 8 * v18 + 32);
        }

        v21 = v20;
        v9 = v18 + 1;
        if (__OFADD__(v18, 1))
        {
          goto LABEL_52;
        }

        v22 = [v20 semanticIdentifier];
        _sSo29HKMedicationUserDomainConceptC19HealthMedicationsUIE7medmoji0eF10Experience29MedicationVisualizationConfigVSgvg_0();
        v23 = sub_228390D50();
        v24 = *(v23 - 8);
        if ((*(v24 + 48))(v8, 1, v23) == 1)
        {
          sub_2281A9A08(v8);
          swift_beginAccess();
        }

        else
        {
          v25 = *(v1 + 24);
          sub_228392AC0();
          v27 = v26;
          v29 = v28;
          v30 = v93;
          (*(v24 + 16))(v93, v8, v23);
          (*(v24 + 56))(v30, 0, 1, v23);
          v31 = sub_2281BF3D4(v27, v29, 1, v30);
          v32 = v30;
          v16 = v92;
          sub_2281A9A08(v32);
          (*(v24 + 8))(v8, v23);
          swift_beginAccess();
          if (v31)
          {
            v33 = *(v1 + 40);
            if ((v33 & 0xC000000000000001) != 0)
            {
              if (v33 < 0)
              {
                v34 = *(v1 + 40);
              }

              else
              {
                v34 = v33 & 0xFFFFFFFFFFFFFF8;
              }

              v35 = sub_2283930D0();
              if (__OFADD__(v35, 1))
              {
                goto LABEL_55;
              }

              *(v1 + 40) = sub_2281A8348(v34, v35 + 1);
            }

            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v97 = *(v1 + 40);
            v37 = v97;
            *(v1 + 40) = 0x8000000000000000;
            v39 = sub_2281A78C0(v22);
            v40 = v37[2];
            v41 = (v38 & 1) == 0;
            v42 = v40 + v41;
            if (__OFADD__(v40, v41))
            {
              goto LABEL_54;
            }

            v8 = v38;
            if (v37[3] >= v42)
            {
              if (isUniquelyReferenced_nonNull_native)
              {
                v45 = v97;
                if ((v38 & 1) == 0)
                {
                  goto LABEL_47;
                }
              }

              else
              {
                sub_22829B154();
                v45 = v97;
                if ((v8 & 1) == 0)
                {
                  goto LABEL_47;
                }
              }
            }

            else
            {
              sub_228299910(v42, isUniquelyReferenced_nonNull_native);
              v43 = sub_2281A78C0(v22);
              if ((v8 & 1) != (v44 & 1))
              {
LABEL_114:
                sub_22817A958(0, &qword_27D8242E8, 0x277CCDB40);
                result = sub_2283934A0();
                __break(1u);
                return result;
              }

              v39 = v43;
              v45 = v97;
              if ((v8 & 1) == 0)
              {
LABEL_47:
                v45[(v39 >> 6) + 8] |= 1 << v39;
                *(v45[6] + 8 * v39) = v22;
                *(v45[7] + 8 * v39) = v31;
                v48 = v45[2];
                v49 = __OFADD__(v48, 1);
                v50 = v48 + 1;
                if (v49)
                {
                  goto LABEL_56;
                }

                v45[2] = v50;
                goto LABEL_49;
              }
            }

            v46 = v45[7];
            v47 = *(v46 + 8 * v39);
            *(v46 + 8 * v39) = v31;

LABEL_49:
            *(v1 + 40) = v45;
            v8 = v91;
            v16 = v92;
            goto LABEL_24;
          }
        }

        v19 = sub_2281A81FC(v22);

LABEL_24:
        swift_endAccess();

        ++v18;
      }

      while (v9 != v94);
    }
  }

  if (*(v1 + 32) != 1)
  {
    return result;
  }

  v52 = sub_228390650();
  v53 = v52;
  v98 = MEMORY[0x277D84F90];
  v54 = v52 & 0xFFFFFFFFFFFFFF8;
  if (v52 >> 62)
  {
LABEL_78:
    v55 = sub_2283930D0();
    if (v55)
    {
LABEL_62:
      v56 = 0;
      v57 = MEMORY[0x277D84F90];
      do
      {
        v58 = v56;
        while (1)
        {
          if ((v53 & 0xC000000000000001) != 0)
          {
            v59 = MEMORY[0x22AAB6D80](v58, v53);
          }

          else
          {
            if (v58 >= *(v54 + 16))
            {
              goto LABEL_77;
            }

            v59 = *(v53 + 8 * v58 + 32);
          }

          v60 = v59;
          v56 = v58 + 1;
          if (__OFADD__(v58, 1))
          {
            __break(1u);
LABEL_77:
            __break(1u);
            goto LABEL_78;
          }

          objc_opt_self();
          if (swift_dynamicCastObjCClass())
          {
            break;
          }

          ++v58;
          if (v56 == v55)
          {
            goto LABEL_80;
          }
        }

        MEMORY[0x22AAB5D20]();
        if (*((v98 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v98 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v61 = *((v98 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_2283921E0();
        }

        sub_228392230();
        v57 = v98;
      }

      while (v56 != v55);
      goto LABEL_80;
    }
  }

  else
  {
    v55 = *((v52 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v55)
    {
      goto LABEL_62;
    }
  }

  v57 = MEMORY[0x277D84F90];
LABEL_80:

  if (v57 >> 62)
  {
    goto LABEL_111;
  }

  for (i = *((v57 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_2283930D0())
  {
    v63 = 0;
    v95 = v57 & 0xFFFFFFFFFFFFFF8;
    v96 = v57 & 0xC000000000000001;
    v94 = v57;
    while (1)
    {
      if (v96)
      {
        v66 = MEMORY[0x22AAB6D80](v63, v57);
      }

      else
      {
        if (v63 >= *(v95 + 16))
        {
          goto LABEL_107;
        }

        v66 = *(v57 + 8 * v63 + 32);
      }

      v67 = v66;
      v68 = v63 + 1;
      if (__OFADD__(v63, 1))
      {
        break;
      }

      v69 = [v66 semanticIdentifier];
      v70 = v93;
      _sSo29HKMedicationUserDomainConceptC19HealthMedicationsUIE7medmoji0eF10Experience29MedicationVisualizationConfigVSgvg_0();
      v71 = *(v1 + 24);
      sub_228392AC0();
      v74 = sub_2281BF3D4(v72, v73, 1, v70);
      sub_2281A9A08(v70);
      swift_beginAccess();
      v75 = *(v1 + 40);
      if ((v75 & 0xC000000000000001) != 0)
      {
        if (v75 < 0)
        {
          v76 = *(v1 + 40);
        }

        else
        {
          v76 = v75 & 0xFFFFFFFFFFFFFF8;
        }

        v77 = sub_2283930D0();
        if (__OFADD__(v77, 1))
        {
          goto LABEL_109;
        }

        *(v1 + 40) = sub_2281A8348(v76, v77 + 1);
      }

      v78 = swift_isUniquelyReferenced_nonNull_native();
      v97 = *(v1 + 40);
      v79 = v97;
      *(v1 + 40) = 0x8000000000000000;
      v80 = sub_2281A78C0(v69);
      v82 = v79[2];
      v83 = (v81 & 1) == 0;
      v49 = __OFADD__(v82, v83);
      v84 = v82 + v83;
      if (v49)
      {
        goto LABEL_108;
      }

      v57 = v81;
      if (v79[3] < v84)
      {
        sub_228299910(v84, v78);
        v80 = sub_2281A78C0(v69);
        if ((v57 & 1) != (v85 & 1))
        {
          goto LABEL_114;
        }

LABEL_100:
        v86 = v97;
        if (v57)
        {
          goto LABEL_83;
        }

        goto LABEL_101;
      }

      if (v78)
      {
        goto LABEL_100;
      }

      v89 = v80;
      sub_22829B154();
      v80 = v89;
      v86 = v97;
      if (v57)
      {
LABEL_83:
        v64 = v86[7];
        v65 = *(v64 + 8 * v80);
        *(v64 + 8 * v80) = v74;

        goto LABEL_84;
      }

LABEL_101:
      v86[(v80 >> 6) + 8] |= 1 << v80;
      *(v86[6] + 8 * v80) = v69;
      *(v86[7] + 8 * v80) = v74;
      v87 = v86[2];
      v49 = __OFADD__(v87, 1);
      v88 = v87 + 1;
      if (v49)
      {
        goto LABEL_110;
      }

      v86[2] = v88;
LABEL_84:
      *(v1 + 40) = v86;
      swift_endAccess();

      ++v63;
      v57 = v94;
      if (v68 == i)
      {
      }
    }

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
    ;
  }
}

uint64_t MedmojiImageCache.deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 40);

  return v0;
}

uint64_t MedmojiImageCache.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 40);

  return swift_deallocClassInstance();
}

unint64_t sub_2281A76E0(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_228393520();
  sub_2283920B0();
  v6 = sub_228393570();

  return sub_2281A7CA0(a1, a2, v6);
}

unint64_t sub_2281A7758(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_228393140();

  return sub_2281A7D58(a1, v5);
}

unint64_t sub_2281A779C(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_228391130();
  v5 = MEMORY[0x277D11768];
  sub_2281A930C(&qword_27D8242E0, MEMORY[0x277D11768]);
  v6 = sub_228391F60();
  return sub_2281A7FF0(a1, v6, MEMORY[0x277D11768], &qword_280DDBD08, v5, MEMORY[0x277D11778]);
}

unint64_t sub_2281A7870(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_228392C50();
  return sub_2281A7E20(a1, v5, &qword_27D824240, 0x277CCDA00);
}

unint64_t sub_2281A78C0(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_228392C50();
  return sub_2281A7E20(a1, v5, &qword_27D8242E8, 0x277CCDB40);
}

unint64_t sub_2281A7910(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_228392C50();
  return sub_2281A7E20(a1, v5, &qword_27D824258, 0x277CCD4B0);
}

unint64_t sub_2281A7960(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_228393520();
  MEMORY[0x22AAB70D0](a1);
  v4 = sub_228393570();
  return sub_2281A8190(a1, v4);
}

unint64_t sub_2281A79C8(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_228390E20();
  v5 = MEMORY[0x277D116F0];
  sub_2281A930C(&qword_27D8242A0, MEMORY[0x277D116F0]);
  v6 = sub_228391F60();
  return sub_2281A7FF0(a1, v6, MEMORY[0x277D116F0], &qword_27D8242A8, v5, MEMORY[0x277D11700]);
}

unint64_t sub_2281A7A9C(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_228392000();
  sub_228393520();
  sub_2283920B0();
  v4 = sub_228393570();

  return sub_2281A7EEC(a1, v4);
}

unint64_t sub_2281A7B2C(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_228392C50();
  return sub_2281A7E20(a1, v5, &qword_280DDBB00, 0x277CCD8D8);
}

unint64_t sub_2281A7B7C(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_22838EF60();
  v5 = MEMORY[0x277CC88A8];
  sub_2281A930C(&unk_280DDCE00, MEMORY[0x277CC88A8]);
  v6 = sub_228391F60();
  return sub_2281A7FF0(a1, v6, MEMORY[0x277CC88A8], &qword_280DDCDF8, v5, MEMORY[0x277CC88C8]);
}

unint64_t sub_2281A7C50(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_228392C50();
  return sub_2281A7E20(a1, v5, &qword_280DDB960, 0x277CCABB0);
}

unint64_t sub_2281A7CA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_228393460())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_2281A7D58(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_2281A9900(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x22AAB6CF0](v9, a1);
      sub_2281A995C(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_2281A7E20(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t *a4)
{
  v5 = -1 << *(v4 + 32);
  v6 = a2 & ~v5;
  if ((*(v4 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    sub_22817A958(0, a3, a4);
    do
    {
      v8 = *(*(v4 + 48) + 8 * v6);
      v9 = sub_228392C60();

      if (v9)
      {
        break;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  return v6;
}

unint64_t sub_2281A7EEC(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_228392000();
      v9 = v8;
      if (v7 == sub_228392000() && v9 == v10)
      {
        break;
      }

      v12 = sub_228393460();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_2281A7FF0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, void (*a5)(uint64_t), uint64_t a6)
{
  v25 = a5;
  v26 = a6;
  v24 = a4;
  v22[1] = a1;
  v8 = a3(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v22 - v11;
  v23 = v6;
  v13 = -1 << *(v6 + 32);
  v14 = a2 & ~v13;
  v22[0] = v6 + 64;
  if ((*(v6 + 64 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v15 = ~v13;
    v18 = *(v9 + 16);
    v17 = v9 + 16;
    v16 = v18;
    v19 = *(v17 + 56);
    do
    {
      v16(v12, *(v23 + 48) + v19 * v14, v8);
      sub_2281A930C(v24, v25);
      v20 = sub_228391FB0();
      (*(v17 - 8))(v12, v8);
      if (v20)
      {
        break;
      }

      v14 = (v14 + 1) & v15;
    }

    while (((*(v22[0] + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) != 0);
  }

  return v14;
}

unint64_t sub_2281A8190(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

uint64_t sub_2281A81FC(void *a1)
{
  v2 = v1;
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) == 0)
  {
    v13 = *v1;
    v14 = sub_2281A78C0(a1);
    if (v15)
    {
      v3 = v14;
      v16 = *v2;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v8 = *v2;
      v19 = *v2;
      if (isUniquelyReferenced_nonNull_native)
      {
LABEL_10:

        v12 = *(*(v8 + 56) + 8 * v3);
        sub_2282E6F24(v3, v8);
        goto LABEL_11;
      }

LABEL_15:
      sub_22829B154();
      v8 = v19;
      goto LABEL_10;
    }

    return 0;
  }

  if (v3 < 0)
  {
    v4 = *v1;
  }

  else
  {
    v4 = v3 & 0xFFFFFFFFFFFFFF8;
  }

  v5 = a1;
  v6 = sub_2283932D0();

  if (!v6)
  {
    return 0;
  }

  swift_unknownObjectRelease();

  v7 = sub_2283930D0();
  v8 = sub_2281A8348(v4, v7);

  v9 = sub_2281A78C0(v5);
  v11 = v10;

  if ((v11 & 1) == 0)
  {
    __break(1u);
    goto LABEL_15;
  }

  v12 = *(*(v8 + 56) + 8 * v9);
  sub_2282E6F24(v9, v8);

LABEL_11:
  *v2 = v8;
  return v12;
}

uint64_t sub_2281A8348(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_2281A9A64();
    v2 = sub_228393350();
    v20 = v2;
    sub_2283932B0();
    v3 = sub_2283932E0();
    if (v3)
    {
      v4 = v3;
      sub_22817A958(0, &qword_27D8242E8, 0x277CCDB40);
      v5 = v4;
      do
      {
        v18 = v5;
        swift_dynamicCast();
        sub_22817A958(0, &qword_280DDB980, 0x277D755B8);
        swift_dynamicCast();
        v13 = *(v2 + 16);
        if (*(v2 + 24) <= v13)
        {
          sub_228299910(v13 + 1, 1);
        }

        v2 = v20;
        v6 = *(v20 + 40);
        result = sub_228392C50();
        v8 = v20 + 64;
        v9 = -1 << *(v20 + 32);
        v10 = result & ~v9;
        v11 = v10 >> 6;
        if (((-1 << v10) & ~*(v20 + 64 + 8 * (v10 >> 6))) != 0)
        {
          v12 = __clz(__rbit64((-1 << v10) & ~*(v20 + 64 + 8 * (v10 >> 6)))) | v10 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v14 = 0;
          v15 = (63 - v9) >> 6;
          do
          {
            if (++v11 == v15 && (v14 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v16 = v11 == v15;
            if (v11 == v15)
            {
              v11 = 0;
            }

            v14 |= v16;
            v17 = *(v8 + 8 * v11);
          }

          while (v17 == -1);
          v12 = __clz(__rbit64(~v17)) + (v11 << 6);
        }

        *(v8 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
        *(*(v20 + 48) + 8 * v12) = v19;
        *(*(v20 + 56) + 8 * v12) = v18;
        ++*(v20 + 16);
        v5 = sub_2283932E0();
      }

      while (v5);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84F98];
  }

  return v2;
}

unint64_t sub_2281A8644(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_2281A9630();
    v3 = sub_228393360();
    v4 = a1 + 32;

    while (1)
    {
      sub_2281A9694(v4, &v13, sub_2281A96FC);
      v5 = v13;
      v6 = v14;
      result = sub_2281A76E0(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_22819A2AC(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_2281A875C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_2281A8840();
    v3 = sub_228393360();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      result = sub_2281A7870(v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + result) = v5;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
      if (!--v1)
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

void sub_2281A8840()
{
  if (!qword_27D824248)
  {
    sub_22817A958(255, &qword_27D824240, 0x277CCDA00);
    sub_2281A89C4(&qword_27D827840, &qword_27D824240, 0x277CCDA00);
    v0 = sub_228393370();
    if (!v1)
    {
      atomic_store(v0, &qword_27D824248);
    }
  }
}

void sub_2281A8908()
{
  if (!qword_27D824250)
  {
    sub_22817A958(255, &qword_27D824258, 0x277CCD4B0);
    sub_22817A958(255, &qword_280DDB960, 0x277CCABB0);
    sub_2281A89C4(&qword_27D824260, &qword_27D824258, 0x277CCD4B0);
    v0 = sub_228393370();
    if (!v1)
    {
      atomic_store(v0, &qword_27D824250);
    }
  }
}

uint64_t sub_2281A89C4(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_22817A958(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2281A8A14(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_2281A9760();
    v3 = sub_228393360();
    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 1);
      v6 = *i;
      result = sub_2281A7960(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      *(v3[7] + 8 * result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
      if (!--v1)
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_2281A8AE4(uint64_t a1)
{
  sub_2281A9354();
  v3 = v2;
  v4 = *(v2 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v2);
  v7 = (&v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(a1 + 16);
  if (v8)
  {
    sub_2281A93BC();
    v9 = sub_228393360();
    v10 = *(v3 + 48);
    v11 = a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v12 = *(v4 + 72);

    while (1)
    {
      sub_2281A9694(v11, v7, sub_2281A9354);
      v13 = *v7;
      v14 = v7[1];
      result = sub_2281A76E0(*v7, v14);
      if (v16)
      {
        break;
      }

      v17 = result;
      *(v9 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v18 = (v9[6] + 16 * result);
      *v18 = v13;
      v18[1] = v14;
      v19 = v9[7];
      v20 = type metadata accessor for Dosage();
      result = sub_2281A9424(v7 + v10, v19 + *(*(v20 - 8) + 72) * v17);
      v21 = v9[2];
      v22 = __OFADD__(v21, 1);
      v23 = v21 + 1;
      if (v22)
      {
        goto LABEL_10;
      }

      v9[2] = v23;
      v11 += v12;
      if (!--v8)
      {

        return v9;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_2281A8CA8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_2281A9594();
    v3 = sub_228393360();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      result = sub_2281A7A9C(v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v5;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
      if (!--v1)
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_2281A8DBC(uint64_t a1, void (*a2)(void), unint64_t *a3, void (*a4)(uint64_t))
{
  v4 = *(a1 + 16);
  if (v4)
  {
    a2(0);
    v8 = sub_228393360();
    v9 = a1 + 32;

    while (1)
    {
      sub_2281A9528(v9, &v16, a3, a4);
      v10 = v16;
      result = sub_2281A7A9C(v16);
      if (v12)
      {
        break;
      }

      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v8[6] + 8 * result) = v10;
      result = sub_22819A2AC(&v17, (v8[7] + 32 * result));
      v13 = v8[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v8[2] = v15;
      v9 += 40;
      if (!--v4)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_2281A8F00(uint64_t a1, void (*a2)(void), uint64_t (*a3)(id))
{
  v3 = *(a1 + 16);
  if (v3)
  {
    a2(0);
    v6 = sub_228393360();

    for (i = (a1 + 40); ; i += 2)
    {
      v8 = *i;
      v9 = *(i - 1);
      v10 = v8;
      result = a3(v9);
      if (v12)
      {
        break;
      }

      *(v6 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v6[6] + 8 * result) = v9;
      *(v6[7] + 8 * result) = v10;
      v13 = v6[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v6[2] = v15;
      if (!--v3)
      {

        return v6;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

void sub_2281A8FF8()
{
  if (!qword_27D824268)
  {
    sub_22817A958(255, &qword_280DDB960, 0x277CCABB0);
    sub_22817A958(255, &qword_27D824270, 0x277D12B30);
    sub_2281A89C4(&qword_280DDB958, &qword_280DDB960, 0x277CCABB0);
    v0 = sub_228393370();
    if (!v1)
    {
      atomic_store(v0, &qword_27D824268);
    }
  }
}

unint64_t sub_2281A90CC(uint64_t a1, void (*a2)(void))
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    return MEMORY[0x277D84F98];
  }

  a2(0);
  v4 = sub_228393360();
  v5 = *(a1 + 32);
  v17 = *(a1 + 40);
  v6 = *(a1 + 56);
  result = sub_2281A7960(v5);
  v8 = v17;
  if (v9)
  {
LABEL_7:
    __break(1u);
LABEL_8:
    swift_unknownObjectRetain();
    return v4;
  }

  v10 = (a1 + 88);
  while (1)
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v4[6] + 8 * result) = v5;
    v11 = v4[7] + 24 * result;
    *v11 = v8;
    *(v11 + 16) = v6;
    v12 = v4[2];
    v13 = __OFADD__(v12, 1);
    v14 = v12 + 1;
    if (v13)
    {
      break;
    }

    v4[2] = v14;
    if (!--v2)
    {
      goto LABEL_8;
    }

    v15 = v10 + 4;
    v5 = *(v10 - 3);
    v18 = *(v10 - 1);
    v6 = *v10;
    swift_unknownObjectRetain();
    result = sub_2281A7960(v5);
    v10 = v15;
    v8 = v18;
    if (v16)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

void sub_2281A91F8()
{
  if (!qword_27D824278)
  {
    type metadata accessor for UIUserInterfaceSizeClass(255);
    sub_2281A92A4();
    sub_2281A930C(&qword_27D824288, type metadata accessor for UIUserInterfaceSizeClass);
    v0 = sub_228393370();
    if (!v1)
    {
      atomic_store(v0, &qword_27D824278);
    }
  }
}

unint64_t sub_2281A92A4()
{
  result = qword_27D824280;
  if (!qword_27D824280)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_27D824280);
  }

  return result;
}

uint64_t sub_2281A930C(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_2281A9354()
{
  if (!qword_27D824290)
  {
    type metadata accessor for Dosage();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27D824290);
    }
  }
}

void sub_2281A93BC()
{
  if (!qword_27D824298)
  {
    type metadata accessor for Dosage();
    v0 = sub_228393370();
    if (!v1)
    {
      atomic_store(v0, &qword_27D824298);
    }
  }
}

uint64_t sub_2281A9424(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Dosage();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_2281A9488()
{
  if (!qword_27D8242B0)
  {
    type metadata accessor for AttributeName(255);
    sub_2281A930C(&qword_27D8236C8, type metadata accessor for AttributeName);
    v0 = sub_228393370();
    if (!v1)
    {
      atomic_store(v0, &qword_27D8242B0);
    }
  }
}

uint64_t sub_2281A9528(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t))
{
  sub_2281A9898(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

void sub_2281A9594()
{
  if (!qword_27D8242C0)
  {
    type metadata accessor for FeatureKey(255);
    sub_2281A930C(&qword_27D8236B8, type metadata accessor for FeatureKey);
    v0 = sub_228393370();
    if (!v1)
    {
      atomic_store(v0, &qword_27D8242C0);
    }
  }
}

void sub_2281A9630()
{
  if (!qword_27D8283C0)
  {
    v0 = sub_228393370();
    if (!v1)
    {
      atomic_store(v0, &qword_27D8283C0);
    }
  }
}

uint64_t sub_2281A9694(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_2281A96FC()
{
  if (!qword_27D8242C8)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27D8242C8);
    }
  }
}

void sub_2281A9760()
{
  if (!qword_27D8242D0)
  {
    type metadata accessor for HKMedicationScheduleType(255);
    sub_2281A930C(&qword_27D8242D8, type metadata accessor for HKMedicationScheduleType);
    v0 = sub_228393370();
    if (!v1)
    {
      atomic_store(v0, &qword_27D8242D0);
    }
  }
}

void sub_2281A97F8()
{
  if (!qword_280DDB908)
  {
    type metadata accessor for Key(255);
    sub_2281A930C(&qword_280DDBA40, type metadata accessor for Key);
    v0 = sub_228393370();
    if (!v1)
    {
      atomic_store(v0, &qword_280DDB908);
    }
  }
}

void sub_2281A9898(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_2281A99B0()
{
  if (!qword_280DDBD20)
  {
    sub_228390D50();
    v0 = sub_228392F00();
    if (!v1)
    {
      atomic_store(v0, &qword_280DDBD20);
    }
  }
}

uint64_t sub_2281A9A08(uint64_t a1)
{
  sub_2281A99B0();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_2281A9A64()
{
  if (!qword_27D8242F0)
  {
    sub_22817A958(255, &qword_27D8242E8, 0x277CCDB40);
    sub_22817A958(255, &qword_280DDB980, 0x277D755B8);
    sub_2281A89C4(&qword_27D8242F8, &qword_27D8242E8, 0x277CCDB40);
    v0 = sub_228393370();
    if (!v1)
    {
      atomic_store(v0, &qword_27D8242F0);
    }
  }
}

void sub_2281A9B20()
{
  if (!qword_27D824300)
  {
    type metadata accessor for HKMedicationScheduleType(255);
    sub_2281A92A4();
    sub_2281A930C(&qword_27D8242D8, type metadata accessor for HKMedicationScheduleType);
    v0 = sub_228393370();
    if (!v1)
    {
      atomic_store(v0, &qword_27D824300);
    }
  }
}

uint64_t sub_2281A9D04()
{
  _s19HealthMedicationsUI34InteractionSeperatorLineDataSourceCfd_0();

  return swift_deallocClassInstance();
}

uint64_t sub_2281A9D3C()
{
  v1 = *v0;
  type metadata accessor for MedicationInfoItemCell();
  sub_2281AA03C(&qword_27D824338, type metadata accessor for MedicationInfoItemCell);
  sub_2283926B0();
  if (*(v1 + qword_27D824318))
  {
    type metadata accessor for MedicationMarkdownItemCell();
    v2 = &unk_27D824340;
    v3 = type metadata accessor for MedicationMarkdownItemCell;
  }

  else
  {
    type metadata accessor for MedicationSideEffectsItemCell();
    v2 = &qword_27D823838;
    v3 = type metadata accessor for MedicationSideEffectsItemCell;
  }

  sub_2281AA03C(v2, v3);
  return sub_2283926B0();
}

uint64_t sub_2281A9E58(uint64_t a1)
{
  v2 = sub_2283900D0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v12[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_228390040();
  if (a1)
  {
    v7 = -10.0;
  }

  else
  {
    v7 = 10.0;
  }

  v8 = sub_228390090();
  *v9 = v7;
  v8(v12, 0);
  v10 = sub_2283900C0();
  (*(v3 + 8))(v6, v2);
  return v10;
}

uint64_t sub_2281AA03C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2281AA084(unsigned __int8 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t), uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v85 = a5;
  v83 = a3;
  *&v84 = a4;
  v91 = sub_22838F4A0();
  v89 = *(v91 - 8);
  v14 = *(v89 + 64);
  MEMORY[0x28223BE20](v91);
  v16 = &v82 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_22838FEF0();
  v93 = *(v17 - 8);
  v94 = v17;
  v18 = *(v93 + 64);
  v19 = MEMORY[0x28223BE20](v17);
  v92 = &v82 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v88 = &v82 - v21;
  sub_2281AA968(0, &qword_280DDBD20, MEMORY[0x277D116C8], MEMORY[0x277D83D88]);
  v23 = *(*(v22 - 8) + 64);
  v24 = MEMORY[0x28223BE20](v22 - 8);
  v26 = &v82 - v25;
  v27 = *(*(a8 - 8) + 64);
  MEMORY[0x28223BE20](v24);
  v29 = &v82 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = v30;
  (*(v30 + 32))(v29, a2, a8);
  v31 = *a1;
  v95 = a7;
  *(a7 + qword_27D824318) = v31;
  if (v31)
  {
    LOBYTE(v96[0]) = v31;
    v32 = a6;
    v33 = sub_228236718(v29, v96, a8, a9);
    v34 = type metadata accessor for MedicationMarkdownItem();
    v35 = swift_allocObject();
    type metadata accessor for MedicationMarkdownItemCell();
    sub_2281AA03C(&qword_27D824340, type metadata accessor for MedicationMarkdownItemCell);
    *(v35 + 16) = sub_22838FBB0();
    *(v35 + 24) = v36;
    v37 = v84;
    *(v35 + 32) = v83;
    *(v35 + 40) = v37;
    *(v35 + 48) = v85;
    *(v35 + 56) = v32;
    *(v35 + 64) = v33 & 1;
    v38 = &unk_27D824350;
    v39 = type metadata accessor for MedicationMarkdownItem;
  }

  else
  {
    v34 = type metadata accessor for MedicationSideEffectsItem();
    v35 = swift_allocObject();
    type metadata accessor for MedicationSideEffectsItemCell();
    sub_2281AA03C(&qword_27D823838, type metadata accessor for MedicationSideEffectsItemCell);
    *(v35 + 16) = sub_22838FBB0();
    *(v35 + 24) = v40;
    v41 = v84;
    *(v35 + 32) = v83;
    *(v35 + 40) = v41;
    *(v35 + 48) = v85;
    *(v35 + 56) = a6;
    v38 = &unk_27D824360;
    v39 = type metadata accessor for MedicationSideEffectsItem;
  }

  v42 = sub_2281AA03C(v38, v39);
  v97 = v34;
  v98 = v42;
  v96[0] = v35;
  (*(a9 + 16))(a8, a9);
  v43 = v29;
  v44 = (*(a9 + 24))(a8, a9);
  v46 = v45;
  v47 = *(a9 + 32);
  v87 = v43;
  v48 = v47(a8, a9);
  if (v49)
  {
    v50 = v48;
  }

  else
  {
    v50 = 0;
  }

  v51 = a8;
  v86 = a8;
  if (v49)
  {
    v52 = v49;
  }

  else
  {
    v52 = 0xE000000000000000;
  }

  v53 = (*(a9 + 40))(v51, a9);
  if (v53)
  {
    v54 = v53;
  }

  else
  {
    v54 = MEMORY[0x277D84F90];
  }

  v55 = type metadata accessor for MedicationInfoItem();
  v56 = *(v55 + 48);
  v57 = *(v55 + 52);
  v58 = swift_allocObject();
  type metadata accessor for MedicationInfoItemCell();
  sub_2281AA03C(&qword_27D824338, type metadata accessor for MedicationInfoItemCell);
  *(v58 + 16) = sub_22838FBB0();
  *(v58 + 24) = v59;
  sub_2281AA8D4(v26, v58 + OBJC_IVAR____TtC19HealthMedicationsUI18MedicationInfoItem_medmoji);
  v60 = (v58 + OBJC_IVAR____TtC19HealthMedicationsUI18MedicationInfoItem_name);
  *v60 = v44;
  v60[1] = v46;
  v61 = (v58 + OBJC_IVAR____TtC19HealthMedicationsUI18MedicationInfoItem_strength);
  *v61 = v50;
  v61[1] = v52;
  *(v58 + OBJC_IVAR____TtC19HealthMedicationsUI18MedicationInfoItem_ingredients) = v54;
  v85 = MEMORY[0x277D84560];
  sub_2281AA968(0, &qword_27D823918, sub_228182780, MEMORY[0x277D84560]);
  v62 = swift_allocObject();
  v84 = xmmword_228397F40;
  *(v62 + 16) = xmmword_228397F40;
  *(v62 + 56) = v55;
  *(v62 + 64) = sub_2281AA03C(&qword_27D824358, type metadata accessor for MedicationInfoItem);
  *(v62 + 32) = v58;

  sub_22838F490();
  sub_22838F450();
  v63 = *(v89 + 8);
  v64 = v91;
  v63(v16, v91);
  v65 = v88;
  sub_22838FED0();
  v66 = swift_allocObject();
  *(v66 + 16) = v84;
  v67 = v97;
  v68 = v98;
  v69 = __swift_project_boxed_opaque_existential_0(v96, v97);
  *(v66 + 56) = v67;
  *(v66 + 64) = *(v68 + 8);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v66 + 32));
  (*(*(v67 - 8) + 16))(boxed_opaque_existential_1, v69, v67);
  sub_22838F490();
  sub_22838F450();
  v63(v16, v64);
  v71 = v92;
  sub_22838FED0();
  sub_2281AA968(0, &qword_27D823910, MEMORY[0x277D10F78], v85);
  v72 = v93;
  v73 = *(v93 + 72);
  v74 = (*(v93 + 80) + 32) & ~*(v93 + 80);
  v75 = swift_allocObject();
  *(v75 + 16) = xmmword_228397F30;
  v76 = v75 + v74;
  v77 = *(v72 + 16);
  v78 = v94;
  v77(v76, v65, v94);
  v77(v76 + v73, v71, v78);
  v79 = sub_22838F920();

  v80 = *(v72 + 8);
  v80(v71, v78);
  v80(v65, v78);
  __swift_destroy_boxed_opaque_existential_0(v96);
  (*(v90 + 8))(v87, v86);
  return v79;
}

uint64_t sub_2281AA8D4(uint64_t a1, uint64_t a2)
{
  sub_2281AA968(0, &qword_280DDBD20, MEMORY[0x277D116C8], MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_2281AA968(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t type metadata accessor for MedicationHighlightsDataSource()
{
  result = qword_27D824368;
  if (!qword_27D824368)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_2281AAA88()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MedicationHighlightsDataSource();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2281AAAC8()
{
  v1 = sub_22838FC60();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22838FC50();
  v6 = sub_22838FC40();
  if (v0)
  {
    (*(v2 + 8))(v5, v1);
  }

  else
  {
    v7 = v6;
    (*(v2 + 8))(v5, v1);
    v8 = [objc_opt_self() estimatedDimension_];
    v1 = sub_228392910();
  }

  return v1;
}

unint64_t sub_2281AAC18@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_228391590();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  if (qword_280DDCF18 != -1)
  {
    swift_once();
  }

  sub_22838F0C0();
  sub_228391500();
  v4 = sub_22838FB60();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  v7 = sub_22838FB50();
  a1[3] = v4;
  result = sub_2281AAD8C();
  a1[4] = result;
  *a1 = v7;
  return result;
}

unint64_t sub_2281AAD8C()
{
  result = qword_27D823960;
  if (!qword_27D823960)
  {
    sub_22838FB60();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D823960);
  }

  return result;
}

uint64_t sub_2281AADE4(uint64_t a1, void *a2)
{
  sub_2281AB298(0, &unk_280DDCF40, MEMORY[0x277CC88A8], MEMORY[0x277D83D88]);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v33 - v6;
  sub_22838F8B0();
  v8 = MEMORY[0x22AAB3440]();
  v9 = [a2 semanticIdentifier];
  v10 = [v9 stringValue];

  sub_228392000();
  v11 = sub_22838F890();

  sub_2281AB298(0, &qword_27D824378, MEMORY[0x277D11E28], MEMORY[0x277D84560]);
  v12 = sub_22838F820();
  v13 = *(v12 - 8);
  v14 = *(v13 + 72);
  v15 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_228397F40;
  (*(v13 + 104))(v16 + v15, *MEMORY[0x277D11E18], v12);
  sub_22838F840();
  v17 = sub_22838EF60();
  (*(*(v17 - 8) + 56))(v7, 1, 1, v17);
  sub_2281AB388(0, &qword_27D824380);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_228397F30;
  *(v18 + 32) = sub_22838F830();
  *(v18 + 40) = 0;
  v19 = sub_22838F880();

  sub_2281AB2FC(v7);
  sub_2281AB388(0, &qword_280DDCE30);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_228397F20;
  *(v20 + 32) = v11;
  *(v20 + 40) = v19;
  sub_22817A958(0, &qword_280DDBB08, 0x277CCAC30);
  v21 = v11;
  v22 = v19;
  v23 = sub_228392190();

  v24 = [objc_opt_self() andPredicateWithSubpredicates_];

  [v8 setPredicate_];
  v25 = objc_allocWithZone(MEMORY[0x277CCAC98]);
  v26 = sub_228391FC0();
  v27 = [v25 initWithKey:v26 ascending:0];

  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_228396260;
  *(v28 + 32) = v27;
  sub_22817A958(0, &qword_280DDBAE8, 0x277CCAC98);
  v29 = v27;
  v30 = sub_228392190();

  [v8 setSortDescriptors_];

  [objc_allocWithZone(MEMORY[0x277CBE430]) initWithFetchRequest:v8 managedObjectContext:a1 sectionNameKeyPath:0 cacheName:0];
  v31 = sub_2283903F0();

  return v31;
}

void sub_2281AB298(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_2281AB2FC(uint64_t a1)
{
  sub_2281AB298(0, &unk_280DDCF40, MEMORY[0x277CC88A8], MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_2281AB388(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_228393430();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t InteractionResultDetailViewController.firstItemName.getter()
{
  v1 = *(v0 + qword_27D824398);
  v2 = *(v0 + qword_27D824398 + 8);

  return v1;
}

uint64_t InteractionResultDetailViewController.secondItemName.getter()
{
  v1 = *(v0 + qword_27D8243B0);
  v2 = *(v0 + qword_27D8243B0 + 8);

  return v1;
}

id InteractionResultDetailViewController.__allocating_init(interactionResults:stackedMemojiDisplayable:firstItemName:firstItemDetailsProviding:firstItemIngredients:secondItemName:secondItemDetailsProviding:secondItemIngredients:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t *a9, uint64_t a10)
{
  v11 = v10;
  v19 = objc_allocWithZone(v11);
  *&v19[qword_27D824388] = a1;
  v31 = a2;
  v20 = a2;
  v21 = a5;
  sub_228180FB0(v20, &v19[qword_27D824390]);
  v22 = &v19[qword_27D824398];
  *v22 = a3;
  *(v22 + 1) = a4;
  sub_228180FB0(a5, &v19[qword_27D8243A0]);
  *&v19[qword_27D8243A8] = a6;
  v23 = &v19[qword_27D8243B0];
  *v23 = a7;
  *(v23 + 1) = a8;
  sub_228180FB0(a9, &v19[qword_27D8243B8]);
  *&v19[qword_27D8243C0] = a10;
  v32.receiver = v19;
  v32.super_class = v11;

  v24 = objc_msgSendSuper2(&v32, sel_initWithCollectionViewLayout_, 0);
  v25 = qword_280DDCF18;
  v26 = v24;
  if (v25 != -1)
  {
    swift_once();
  }

  sub_22838F0C0();
  v27 = sub_228391FC0();

  [v26 setTitle_];

  v28 = [v26 navigationItem];
  [v28 setLargeTitleDisplayMode_];

  [v26 setModalPresentationStyle_];

  __swift_destroy_boxed_opaque_existential_0(a9);
  __swift_destroy_boxed_opaque_existential_0(v21);
  __swift_destroy_boxed_opaque_existential_0(v31);
  return v26;
}

id InteractionResultDetailViewController.init(interactionResults:stackedMemojiDisplayable:firstItemName:firstItemDetailsProviding:firstItemIngredients:secondItemName:secondItemDetailsProviding:secondItemIngredients:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t *a9, uint64_t a10)
{
  *&v10[qword_27D824388] = a1;
  sub_228180FB0(a2, &v10[qword_27D824390]);
  v17 = &v10[qword_27D824398];
  *v17 = a3;
  *(v17 + 1) = a4;
  sub_228180FB0(a5, &v10[qword_27D8243A0]);
  *&v10[qword_27D8243A8] = a6;
  v18 = &v10[qword_27D8243B0];
  *v18 = a7;
  *(v18 + 1) = a8;
  sub_228180FB0(a9, &v10[qword_27D8243B8]);
  *&v10[qword_27D8243C0] = a10;
  v26.receiver = v10;
  v26.super_class = type metadata accessor for InteractionResultDetailViewController();

  v19 = objc_msgSendSuper2(&v26, sel_initWithCollectionViewLayout_, 0);
  v20 = qword_280DDCF18;
  v21 = v19;
  if (v20 != -1)
  {
    swift_once();
  }

  sub_22838F0C0();
  v22 = sub_228391FC0();

  [v21 setTitle_];

  v23 = [v21 navigationItem];
  [v23 setLargeTitleDisplayMode_];

  [v21 setModalPresentationStyle_];

  __swift_destroy_boxed_opaque_existential_0(a9);
  __swift_destroy_boxed_opaque_existential_0(a5);
  __swift_destroy_boxed_opaque_existential_0(a2);
  return v21;
}

void sub_2281AB9C8()
{
  v1 = *&v0[qword_27D824388];
  sub_228180FB0(&v0[qword_27D824390], &v19);
  v3 = *&v0[qword_27D824398];
  v2 = *&v0[qword_27D824398 + 8];
  sub_228180FB0(&v0[qword_27D8243A0], v18);
  v4 = *&v0[qword_27D8243A8];
  v6 = *&v0[qword_27D8243B0];
  v5 = *&v0[qword_27D8243B0 + 8];
  sub_228180FB0(&v0[qword_27D8243B8], v17);
  v7 = *&v0[qword_27D8243C0];
  v8 = type metadata accessor for InteractionResultDetailDataSourceProvider();
  v9 = swift_allocObject();
  v9[2] = v1;
  sub_22816DFFC(&v19, (v9 + 3));
  v9[8] = v3;
  v9[9] = v2;
  sub_22816DFFC(v18, (v9 + 10));
  v9[15] = v4;
  v9[16] = v6;
  v9[17] = v5;
  sub_22816DFFC(v17, (v9 + 18));
  v9[23] = v7;
  v20 = v8;
  v21 = sub_2281AC7D0();
  *&v19 = v9;

  sub_2283904B0();
  v16.receiver = v0;
  v16.super_class = type metadata accessor for InteractionResultDetailViewController();
  objc_msgSendSuper2(&v16, sel_viewDidLoad);
  v10 = [v0 collectionView];
  if (v10)
  {
    v11 = v10;
    sub_22817A958(0, &qword_280DDB990, 0x277D75348);
    v12 = objc_opt_self();
    v13 = [v12 secondarySystemBackgroundColor];
    v14 = [v12 systemGroupedBackgroundColor];
    v15 = sub_228392B80();

    [v11 setBackgroundColor_];
  }

  else
  {
    __break(1u);
  }
}

void sub_2281ABBF8(void *a1)
{
  v1 = a1;
  sub_2281AB9C8();
}

id sub_2281ABC40()
{
  sub_2283904D0();
  v1 = sub_2283904E0();
  v1();
  sub_228390470();
  v2 = sub_2283901E0();

  v4 = *(v2 + 16);
  if (v4)
  {
    v5 = 0;
    v7 = v2;
    while (v5 < *(v2 + 16))
    {
      v10 = *(v2 + 16 * v5 + 32);
      sub_22818217C(0, &qword_27D8238E8);
      sub_22818217C(0, &qword_27D8243D0);
      swift_unknownObjectRetain_n();
      if (swift_dynamicCast())
      {
        sub_22816DFFC(v8, v11);
        __swift_project_boxed_opaque_existential_0(v11, v11[3]);
        result = [v0 collectionView];
        if (!result)
        {
          goto LABEL_14;
        }

        v6 = result;
        sub_2283902B0();

        swift_unknownObjectRelease();
        result = __swift_destroy_boxed_opaque_existential_0(v11);
        v2 = v7;
      }

      else
      {
        swift_unknownObjectRelease();
        v9 = 0;
        memset(v8, 0, sizeof(v8));
        result = sub_2281AC828(v8, &qword_27D8243D8, &qword_27D8243D0);
      }

      if (v4 == ++v5)
      {
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
  }

  else
  {
  }

  return result;
}

void sub_2281ABE84(void *a1)
{
  v2 = sub_22838F710();
  [a1 deselectItemAtIndexPath:v2 animated:1];

  v3 = sub_22838F710();
  v4 = [a1 cellForItemAtIndexPath_];

  if (v4)
  {
    sub_228390470();
    sub_2283901F0();
    sub_22838FD60();

    sub_228180FB0(v11, v8);
    sub_22818217C(0, &qword_27D827E00);
    sub_22818217C(0, &qword_27D8243E0);
    if (swift_dynamicCast())
    {
      v5 = v6;
LABEL_6:
      sub_22816DFFC(v5, v10);
      __swift_project_boxed_opaque_existential_0(v10, v10[3]);
      sub_22838FE30();

      __swift_destroy_boxed_opaque_existential_0(v11);
      __swift_destroy_boxed_opaque_existential_0(v10);
      return;
    }

    v7 = 0;
    memset(v6, 0, sizeof(v6));
    sub_2281AC828(v6, &qword_27D827780, &qword_27D8243E0);
    *&v6[0] = v4;
    sub_22817A958(0, &qword_27D827770, 0x277D752A8);
    v4 = v4;
    if (swift_dynamicCast())
    {
      v5 = v8;
      goto LABEL_6;
    }

    v9 = 0;
    memset(v8, 0, sizeof(v8));
    __swift_destroy_boxed_opaque_existential_0(v11);
    sub_2281AC828(v8, &qword_27D827780, &qword_27D8243E0);
  }
}

uint64_t sub_2281AC0B8(void *a1, uint64_t a2, void *a3)
{
  v5 = sub_22838F760();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22838F720();
  v10 = a3;
  v11 = a1;
  sub_2281ABE84(v10);

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_2281AC1B4(void *a1)
{
  swift_unknownObjectRetain();
  v2 = a1;
  sub_228392F90();
  swift_unknownObjectRelease();
  [v2 dismissViewControllerAnimated:1 completion:0];

  return __swift_destroy_boxed_opaque_existential_0(v4);
}

void sub_2281AC228(char a1)
{
  v3 = [v1 navigationItem];
  if (a1)
  {
    v4 = [objc_allocWithZone(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:0 target:v1 action:sel_doneButtonTapped_];
  }

  else
  {
    v4 = 0;
  }

  v12[8] = v4;
  sub_22817A958(0, &qword_27D824138, 0x277D751E0);
  v12[3] = type metadata accessor for InteractionResultDetailViewController();
  v12[0] = v1;
  v5 = v1;
  v6 = MEMORY[0x22AAB61D0](v12, sel_tapToRadar_);
  sub_2281AC998(v12);
  v7 = 0;
  v12[9] = v6;
  v12[0] = MEMORY[0x277D84F90];
  while (v7 != 2)
  {
    v8 = v12[v7++ + 8];
    if (v8)
    {
      v9 = v8;
      MEMORY[0x22AAB5D20]();
      if (*((v12[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v12[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v10 = *((v12[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_2283921E0();
      }

      sub_228392230();
    }
  }

  sub_2281ACA48();
  swift_arrayDestroy();
  v11 = sub_228392190();

  [v3 setRightBarButtonItems_];
}

uint64_t sub_2281AC3F0(void *a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = a1;
    swift_unknownObjectRetain();
    sub_228392F90();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v7, 0, sizeof(v7));
    v5 = a1;
  }

  sub_22838F900();
  sub_22838F8F0();

  return sub_2281AC998(v7);
}

id InteractionResultDetailViewController.__allocating_init(collectionViewLayout:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCollectionViewLayout_];

  return v3;
}

uint64_t sub_2281AC540()
{
  v1 = *(v0 + qword_27D824388);

  __swift_destroy_boxed_opaque_existential_0((v0 + qword_27D824390));
  v2 = *(v0 + qword_27D824398 + 8);

  __swift_destroy_boxed_opaque_existential_0((v0 + qword_27D8243A0));
  v3 = *(v0 + qword_27D8243A8);

  v4 = *(v0 + qword_27D8243B0 + 8);

  __swift_destroy_boxed_opaque_existential_0((v0 + qword_27D8243B8));
  v5 = *(v0 + qword_27D8243C0);
}

id InteractionResultDetailViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for InteractionResultDetailViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2281AC620(uint64_t a1)
{
  v2 = *(a1 + qword_27D824388);

  __swift_destroy_boxed_opaque_existential_0((a1 + qword_27D824390));
  v3 = *(a1 + qword_27D824398 + 8);

  __swift_destroy_boxed_opaque_existential_0((a1 + qword_27D8243A0));
  v4 = *(a1 + qword_27D8243A8);

  v5 = *(a1 + qword_27D8243B0 + 8);

  __swift_destroy_boxed_opaque_existential_0((a1 + qword_27D8243B8));
  v6 = *(a1 + qword_27D8243C0);
}

void sub_2281AC6DC(void *a1)
{
  v1 = a1;
  sub_2281AC228(1);
}

void sub_2281AC734(void *a1)
{
  v1 = a1;
  sub_2281AC228(0);
}

uint64_t type metadata accessor for InteractionResultDetailViewController()
{
  result = qword_27D8243E8;
  if (!qword_27D8243E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_2281AC7D0()
{
  result = qword_27D8243C8;
  if (!qword_27D8243C8)
  {
    type metadata accessor for InteractionResultDetailDataSourceProvider();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8243C8);
  }

  return result;
}

uint64_t sub_2281AC828(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  sub_2281AC884(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_2281AC884(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  if (!*a2)
  {
    sub_22818217C(255, a3);
    v4 = sub_228392F00();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_2281AC998(uint64_t a1)
{
  sub_2281AC9F4();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_2281AC9F4()
{
  if (!qword_280DDCE20)
  {
    v0 = sub_228392F00();
    if (!v1)
    {
      atomic_store(v0, &qword_280DDCE20);
    }
  }
}

void sub_2281ACA48()
{
  if (!qword_27D827760)
  {
    sub_22817A958(255, &qword_27D824138, 0x277D751E0);
    v0 = sub_228392F00();
    if (!v1)
    {
      atomic_store(v0, &qword_27D827760);
    }
  }
}

void sub_2281ACAE0()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  sub_228180ED0();
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_228396260;
  *(v1 + 32) = [objc_opt_self() systemCyanColor];
  sub_2281AF0A0();
  v2 = sub_228392190();

  v3 = objc_opt_self();
  v4 = [v3 configurationWithPaletteColors_];

  v5 = [objc_opt_self() systemFontOfSize_];
  v6 = [v3 configurationWithFont_];

  v7 = [v4 configurationByApplyingConfiguration_];
  v8 = sub_228391FC0();
  v9 = [objc_opt_self() systemImageNamed:v8 withConfiguration:v7];

  if (v9)
  {

    v10 = type metadata accessor for SymbolWithPlatterView();
    v11 = objc_allocWithZone(v10);
    *&v11[OBJC_IVAR____TtC19HealthMedicationsUI21SymbolWithPlatterView_image] = v9;
    v14.receiver = v11;
    v14.super_class = v10;
    v12 = v9;
    v13 = objc_msgSendSuper2(&v14, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
    sub_228350C6C();
  }

  else
  {
    __break(1u);
  }
}

id sub_2281ACD3C(uint64_t *a1, uint64_t (*a2)(void))
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

id sub_2281ACDD0(uint64_t *a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  v5 = *a1;
  v6 = *(v4 + *a1);
  if (v6)
  {
    v7 = *(v4 + *a1);
  }

  else
  {
    v8 = sub_2281AEECC(a2, a3, a4);
    v9 = *(v4 + v5);
    *(v4 + v5) = v8;
    v7 = v8;

    v6 = 0;
  }

  v10 = v6;
  return v7;
}

uint64_t sub_2281ACE68()
{
  v1 = OBJC_IVAR____TtC19HealthMedicationsUI27MedicationDoseLogHeaderView____lazy_storage___countLabelConstraints;
  if (*&v0[OBJC_IVAR____TtC19HealthMedicationsUI27MedicationDoseLogHeaderView____lazy_storage___countLabelConstraints])
  {
    v2 = *&v0[OBJC_IVAR____TtC19HealthMedicationsUI27MedicationDoseLogHeaderView____lazy_storage___countLabelConstraints];
  }

  else
  {
    v2 = sub_2281ACED0(v0);
    v3 = *&v0[v1];
    *&v0[v1] = v2;
  }

  return v2;
}

uint64_t sub_2281ACED0(char *a1)
{
  sub_228180ED0();
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_228397F00;
  v3 = sub_2281ACE38();
  v4 = [v3 topAnchor];

  v5 = sub_2281ACD1C();
  v6 = [v5 bottomAnchor];

  v7 = [v4 constraintEqualToAnchor:v6 constant:4.0];
  *(v2 + 32) = v7;
  v8 = OBJC_IVAR____TtC19HealthMedicationsUI27MedicationDoseLogHeaderView____lazy_storage___countLabel;
  v9 = [*&a1[OBJC_IVAR____TtC19HealthMedicationsUI27MedicationDoseLogHeaderView____lazy_storage___countLabel] leadingAnchor];
  v10 = [a1 leadingAnchor];
  v11 = [v9 constraintEqualToAnchor_];

  *(v2 + 40) = v11;
  v12 = [*&a1[v8] trailingAnchor];
  v13 = [a1 trailingAnchor];
  v14 = [v12 constraintEqualToAnchor_];

  *(v2 + 48) = v14;
  v15 = [*&a1[v8] bottomAnchor];
  v16 = [a1 bottomAnchor];
  v17 = [v15 constraintEqualToAnchor_];

  *(v2 + 56) = v17;
  return v2;
}

uint64_t sub_2281AD0C4()
{
  v1 = sub_2281ACAC0();
  [v0 addSubview_];

  v2 = sub_2281ACD1C();
  [v0 addSubview_];

  v3 = sub_2281ACE38();
  [v0 addSubview_];

  v4 = OBJC_IVAR____TtC19HealthMedicationsUI27MedicationDoseLogHeaderView____lazy_storage___iconPlatterView;
  [*&v0[OBJC_IVAR____TtC19HealthMedicationsUI27MedicationDoseLogHeaderView____lazy_storage___iconPlatterView] setTranslatesAutoresizingMaskIntoConstraints_];
  v5 = OBJC_IVAR____TtC19HealthMedicationsUI27MedicationDoseLogHeaderView____lazy_storage___titleLabel;
  [*&v0[OBJC_IVAR____TtC19HealthMedicationsUI27MedicationDoseLogHeaderView____lazy_storage___titleLabel] setTranslatesAutoresizingMaskIntoConstraints_];
  [*&v0[OBJC_IVAR____TtC19HealthMedicationsUI27MedicationDoseLogHeaderView____lazy_storage___countLabel] setTranslatesAutoresizingMaskIntoConstraints_];
  v6 = [*&v0[v4] heightAnchor];
  v7 = [v6 constraintEqualToConstant_];

  [v7 setActive_];
  v8 = [*&v0[v4] topAnchor];
  v9 = [v0 topAnchor];
  v10 = [v8 constraintEqualToAnchor:v9 constant:20.0];

  [v10 setActive_];
  v11 = [*&v0[v4] centerXAnchor];
  v12 = [v0 centerXAnchor];
  v13 = [v11 constraintEqualToAnchor_];

  [v13 setActive_];
  v14 = [*&v0[v5] topAnchor];
  v15 = [*&v0[v4] bottomAnchor];
  v16 = [v14 constraintEqualToAnchor:v15 constant:20.0];

  [v16 setActive_];
  v17 = [*&v0[v5] leadingAnchor];
  v18 = [v0 leadingAnchor];
  v19 = [v17 constraintEqualToAnchor_];

  [v19 setActive_];
  v20 = [*&v0[v5] trailingAnchor];
  v21 = [v0 trailingAnchor];
  v22 = [v20 constraintEqualToAnchor_];

  [v22 setActive_];
  v23 = sub_2281ACE68();
  v24 = v23;
  if (v23 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_2283930D0())
  {
    v26 = 0;
    while (1)
    {
      if ((v24 & 0xC000000000000001) != 0)
      {
        v27 = MEMORY[0x22AAB6D80](v26, v24);
      }

      else
      {
        if (v26 >= *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_12;
        }

        v27 = *(v24 + 8 * v26 + 32);
      }

      v28 = v27;
      v29 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        break;
      }

      [v27 setActive_];

      ++v26;
      if (v29 == i)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }

LABEL_14:
}

uint64_t sub_2281AD4E0(uint64_t a1)
{
  v3 = sub_2281ACD1C();
  v4 = (a1 + *(type metadata accessor for MedicationsDoseLogHeaderItem(0) + 24));
  v5 = *v4;
  v6 = v4[1];
  v7 = sub_228391FC0();
  [v3 setText_];

  v8 = sub_2281ACD9C();
  [v8 setHidden_];

  v9 = sub_2281ACE38();
  [v9 setHidden_];

  v10 = [*&v1[OBJC_IVAR____TtC19HealthMedicationsUI27MedicationDoseLogHeaderView____lazy_storage___titleLabel] bottomAnchor];
  v11 = [v1 bottomAnchor];
  v12 = [v10 constraintEqualToAnchor_];

  [v12 setActive_];
  v13 = sub_2281ACE68();
  v14 = v13;
  if (v13 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_2283930D0())
  {
    v16 = 0;
    while (1)
    {
      if ((v14 & 0xC000000000000001) != 0)
      {
        v17 = MEMORY[0x22AAB6D80](v16, v14);
      }

      else
      {
        if (v16 >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_12;
        }

        v17 = *(v14 + 8 * v16 + 32);
      }

      v18 = v17;
      v19 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      [v17 setActive_];

      ++v16;
      if (v19 == i)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }

LABEL_14:
}

uint64_t sub_2281AD6C0(unint64_t a1)
{
  v3 = sub_2281ACD1C();
  v4 = type metadata accessor for MedicationsDoseLogHeaderItem(0);
  v5 = (a1 + *(v4 + 24));
  v6 = *v5;
  v7 = v5[1];
  v8 = sub_228391FC0();
  v9 = &off_2785F4000;
  [v3 setText_];

  v10 = sub_2281ACD9C();
  [v10 setHidden_];

  v11 = sub_2281ACE38();
  if (qword_280DDCF18 != -1)
  {
    goto LABEL_14;
  }

  while (1)
  {
    sub_22838F0C0();
    sub_2281AEAE8(0, &qword_280DDB870, &qword_280DDB830, MEMORY[0x277D84D98], MEMORY[0x277D84560]);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_228397F40;
    v13 = *(a1 + *(v4 + 32));
    v14 = MEMORY[0x277D83C10];
    *(v12 + 56) = MEMORY[0x277D83B88];
    *(v12 + 64) = v14;
    *(v12 + 32) = v13;
    sub_228392010();

    v15 = sub_228391FC0();

    [v11 v9[73]];

    v16 = [*&v1[OBJC_IVAR____TtC19HealthMedicationsUI27MedicationDoseLogHeaderView____lazy_storage___titleLabel] bottomAnchor];
    v17 = [v1 bottomAnchor];
    v11 = [v16 constraintEqualToAnchor:v17 constant:30.0];

    [v11 setActive_];
    v18 = sub_2281ACE68();
    a1 = v18;
    if (v18 >> 62)
    {
      break;
    }

    v1 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v1)
    {
      goto LABEL_16;
    }

LABEL_4:
    v4 = 0;
    v9 = (a1 & 0xFFFFFFFFFFFFFF8);
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v19 = MEMORY[0x22AAB6D80](v4, a1);
      }

      else
      {
        if (v4 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_13;
        }

        v19 = *(a1 + 8 * v4 + 32);
      }

      v11 = v19;
      v20 = (v4 + 1);
      if (__OFADD__(v4, 1))
      {
        break;
      }

      [v19 setActive_];

      ++v4;
      if (v20 == v1)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    swift_once();
  }

  v1 = sub_2283930D0();
  if (v1)
  {
    goto LABEL_4;
  }

LABEL_16:
}

id sub_2281AD9D4(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC19HealthMedicationsUI27MedicationDoseLogHeaderView____lazy_storage___iconPlatterView] = 0;
  *&v4[OBJC_IVAR____TtC19HealthMedicationsUI27MedicationDoseLogHeaderView____lazy_storage___titleLabel] = 0;
  *&v4[OBJC_IVAR____TtC19HealthMedicationsUI27MedicationDoseLogHeaderView____lazy_storage___dateLabel] = 0;
  *&v4[OBJC_IVAR____TtC19HealthMedicationsUI27MedicationDoseLogHeaderView____lazy_storage___countLabel] = 0;
  *&v4[OBJC_IVAR____TtC19HealthMedicationsUI27MedicationDoseLogHeaderView____lazy_storage___countLabelConstraints] = 0;
  v9 = &v4[OBJC_IVAR____TtC19HealthMedicationsUI27MedicationDoseLogHeaderView_item];
  v10 = type metadata accessor for MedicationDoseLogHeaderView();
  *v9 = 0u;
  *(v9 + 1) = 0u;
  *(v9 + 4) = 0;
  v13.receiver = v4;
  v13.super_class = v10;
  v11 = objc_msgSendSuper2(&v13, sel_initWithFrame_, a1, a2, a3, a4);
  sub_2281AD0C4();

  return v11;
}

uint64_t sub_2281ADB04()
{
  v1 = v0;
  v2 = sub_2283911B0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2281AEA90();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for MedicationsDoseLogHeaderItem(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = OBJC_IVAR____TtC19HealthMedicationsUI27MedicationDoseLogHeaderView_item;
  swift_beginAccess();
  sub_22817E6C8(v1 + v16, v29);
  if (v30)
  {
    sub_2281810DC(0, &qword_280DDCD60);
    v17 = swift_dynamicCast();
    (*(v12 + 56))(v10, v17 ^ 1u, 1, v11);
    if ((*(v12 + 48))(v10, 1, v11) != 1)
    {
      sub_2281AEB50(v10, v15);
      if (*&v15[*(v11 + 32)] == 1)
      {
        sub_2281AD4E0(v15);
      }

      else
      {
        sub_2281AD6C0(v15);
      }

      return sub_2281AEBB4(v15, type metadata accessor for MedicationsDoseLogHeaderItem);
    }
  }

  else
  {
    sub_22819482C(v29);
    (*(v12 + 56))(v10, 1, 1, v11);
  }

  sub_2281AEBB4(v10, sub_2281AEA90);
  sub_228391150();
  v18 = v1;
  v19 = sub_2283911A0();
  v20 = sub_2283925C0();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v28 = v22;
    *v21 = 136315138;
    sub_22817E6C8(v1 + v16, v29);
    sub_2281AEAE8(0, &qword_280DDCD50, &qword_280DDCD60, MEMORY[0x277D10D48], MEMORY[0x277D83D88]);
    v23 = sub_228392040();
    v25 = sub_2281C96FC(v23, v24, &v28);

    *(v21 + 4) = v25;
    _os_log_impl(&dword_22816B000, v19, v20, "Incorrect view model for MedicationsDoseLogHeaderItem: %s", v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v22);
    MEMORY[0x22AAB7B80](v22, -1, -1);
    MEMORY[0x22AAB7B80](v21, -1, -1);
  }

  return (*(v3 + 8))(v6, v2);
}

id sub_2281ADEF0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MedicationDoseLogHeaderView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2281ADFF4()
{
  result = type metadata accessor for MedicationsDoseLogHeaderItem(319);
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_2281AE08C@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC19HealthMedicationsUI27MedicationDoseLogHeaderView_item;
  swift_beginAccess();
  return sub_22817E6C8(v3 + v4, a1);
}

uint64_t sub_2281AE0E8(uint64_t a1)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC19HealthMedicationsUI27MedicationDoseLogHeaderView_item;
  swift_beginAccess();
  sub_22818FD64(a1, v3 + v4);
  swift_endAccess();
  sub_2281ADB04();
  return sub_22819482C(a1);
}

uint64_t (*sub_2281AE158(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = *v1;
  swift_beginAccess();
  return sub_2281AE1C0;
}

uint64_t sub_2281AE1C0(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v5 = *(a1 + 24);
    return sub_2281ADB04();
  }

  return result;
}

uint64_t sub_2281AE210(int *a1)
{
  v3 = v1;
  sub_228393520();
  v4 = (v1 + a1[5]);
  v5 = *v4;
  v6 = v4[1];
  sub_2283920B0();
  v7 = (v1 + a1[6]);
  v8 = *v7;
  v9 = v7[1];
  sub_2283920B0();
  v10 = a1[7];
  sub_22838F440();
  sub_2281AE9B0(&qword_27D825C90, MEMORY[0x277CC9578]);
  sub_228391F70();
  MEMORY[0x22AAB70D0](*(v3 + a1[8]));
  return sub_228393570();
}

uint64_t sub_2281AE2E8(uint64_t a1, int *a2)
{
  v4 = v2;
  v5 = (v2 + a2[5]);
  v6 = *v5;
  v7 = v5[1];
  sub_2283920B0();
  v8 = (v2 + a2[6]);
  v9 = *v8;
  v10 = v8[1];
  sub_2283920B0();
  v11 = a2[7];
  sub_22838F440();
  sub_2281AE9B0(&qword_27D825C90, MEMORY[0x277CC9578]);
  sub_228391F70();
  return MEMORY[0x22AAB70D0](*(v4 + a2[8]));
}

uint64_t sub_2281AE3AC(uint64_t a1, int *a2)
{
  v4 = v2;
  sub_228393520();
  v5 = (v2 + a2[5]);
  v6 = *v5;
  v7 = v5[1];
  sub_2283920B0();
  v8 = (v2 + a2[6]);
  v9 = *v8;
  v10 = v8[1];
  sub_2283920B0();
  v11 = a2[7];
  sub_22838F440();
  sub_2281AE9B0(&qword_27D825C90, MEMORY[0x277CC9578]);
  sub_228391F70();
  MEMORY[0x22AAB70D0](*(v4 + a2[8]));
  return sub_228393570();
}

uint64_t sub_2281AE480(uint64_t a1)
{
  v2 = (v1 + *(a1 + 20));
  v3 = *v2;
  v4 = v2[1];

  return v3;
}

BOOL sub_2281AE4B8(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = a3[6];
  v7 = a1 + v6;
  v8 = *(a1 + v6);
  v9 = (a2 + v6);
  v10 = v8 == *v9 && *(v7 + 8) == v9[1];
  if (v10 || (sub_228393460()) && (v11 = a3[7], (sub_22838F3D0()))
  {
    return *(a1 + a3[8]) == *(a2 + a3[8]);
  }

  else
  {
    return 0;
  }
}

unint64_t sub_2281AE544()
{
  sub_2283931D0();

  v0 = sub_22838F450();
  MEMORY[0x22AAB5C80](v0);

  return 0xD000000000000012;
}

uint64_t sub_2281AE5C4(uint64_t a1)
{
  v2 = sub_2281AE9B0(qword_280DDC9B0, type metadata accessor for MedicationsDoseLogHeaderItem);

  return MEMORY[0x282169440](a1, v2);
}

uint64_t sub_2281AE640()
{
  v0 = sub_2283900D0();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228390010();
  v5 = sub_2283900C0();
  (*(v1 + 8))(v4, v0);
  return v5;
}

uint64_t sub_2281AE7AC()
{
  v0 = sub_2283903B0();
  sub_2281AEBB4(v0 + qword_27D828A40, type metadata accessor for MedicationsDoseLogHeaderItem);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_2281AE884()
{
  result = sub_22838F4A0();
  if (v1 <= 0x3F)
  {
    result = sub_22838F440();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_2281AE9B0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2281AE9F8@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  v4 = qword_27D828A40;
  a1[3] = type metadata accessor for MedicationsDoseLogHeaderItem(0);
  a1[4] = sub_2281AE9B0(&qword_27D824498, type metadata accessor for MedicationsDoseLogHeaderItem);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);

  return sub_2281AEC14(v3 + v4, boxed_opaque_existential_1);
}

void sub_2281AEA90()
{
  if (!qword_280DDC960)
  {
    type metadata accessor for MedicationsDoseLogHeaderItem(255);
    v0 = sub_228392F00();
    if (!v1)
    {
      atomic_store(v0, &qword_280DDC960);
    }
  }
}

void sub_2281AEAE8(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_2281810DC(255, a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_2281AEB50(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MedicationsDoseLogHeaderItem(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2281AEBB4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2281AEC14(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MedicationsDoseLogHeaderItem(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_2281AEC78()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  [v0 setNumberOfLines_];
  v1 = *MEMORY[0x277D12788];
  v12 = sub_228392000();
  v13 = v2;
  v3 = v0;

  MEMORY[0x22AAB5C80](0xD00000000000001CLL, 0x80000002283A9040);

  MEMORY[0x22AAB5C80](0x614C656C7469542ELL, 0xEB000000006C6562);

  v4 = sub_228391FC0();

  [v3 setAccessibilityIdentifier_];

  v5 = [objc_opt_self() labelColor];
  [v3 setTextColor_];

  [v3 setTextAlignment_];
  [v3 setAdjustsFontForContentSizeCategory_];
  v6 = *MEMORY[0x277D769A8];
  v7 = objc_opt_self();
  v8 = [v7 preferredFontForTextStyle_];
  v9 = [v8 fontDescriptor];
  v10 = [v9 fontDescriptorWithSymbolicTraits_];

  if (v10)
  {
    v11 = [v7 fontWithDescriptor:v10 size:0.0];
    [v3 setFont_];
  }

  else
  {
    __break(1u);
  }
}

id sub_2281AEECC(uint64_t a1, uint64_t a2, SEL *a3)
{
  v6 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  [v6 setNumberOfLines_];
  v7 = *MEMORY[0x277D12788];
  v14 = sub_228392000();
  v15 = v8;
  v9 = v6;

  MEMORY[0x22AAB5C80](0xD00000000000001CLL, 0x80000002283A9040);

  MEMORY[0x22AAB5C80](a1, a2);

  v10 = sub_228391FC0();

  [v9 setAccessibilityIdentifier_];

  v11 = [objc_opt_self() *a3];
  [v9 setTextColor_];

  [v9 setTextAlignment_];
  [v9 setAdjustsFontForContentSizeCategory_];
  v12 = [objc_opt_self() preferredFontForTextStyle_];
  [v9 setFont_];

  return v9;
}

unint64_t sub_2281AF0A0()
{
  result = qword_280DDB990;
  if (!qword_280DDB990)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280DDB990);
  }

  return result;
}

void sub_2281AF0EC()
{
  *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI27MedicationDoseLogHeaderView____lazy_storage___iconPlatterView) = 0;
  *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI27MedicationDoseLogHeaderView____lazy_storage___titleLabel) = 0;
  *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI27MedicationDoseLogHeaderView____lazy_storage___dateLabel) = 0;
  *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI27MedicationDoseLogHeaderView____lazy_storage___countLabel) = 0;
  *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI27MedicationDoseLogHeaderView____lazy_storage___countLabelConstraints) = 0;
  v1 = v0 + OBJC_IVAR____TtC19HealthMedicationsUI27MedicationDoseLogHeaderView_item;
  *v1 = 0u;
  *(v1 + 16) = 0u;
  *(v1 + 32) = 0;
  sub_228393300();
  __break(1u);
}

Swift::String __swiftcall ScheduleItemDisplayable.localizedResolvedLoggingUnit(for:)(Swift::Double a1)
{
  v3 = v2;
  v4 = v1;
  sub_22817A958(0, &qword_280DDB9E0, 0x277D115B8);
  v3[6](v4, v3);
  v3[7](v4, v3);
  v3[9](v4, v3);
  v5 = sub_2283929C0();
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result._object = v9;
  result._countAndFlagsBits = v8;
  return result;
}

uint64_t HKMedicationUserDomainConcept.identifier.getter()
{
  v1 = [v0 semanticIdentifier];
  v2 = [v1 stringValue];

  v3 = sub_228392000();
  return v3;
}

uint64_t sub_2281AF374()
{
  v1 = [*v0 semanticIdentifier];
  v2 = [v1 stringValue];

  v3 = sub_228392000();
  return v3;
}

void *sub_2281AF4B0()
{
  v1 = *(v0 + 40);
  v2 = v1;
  return v1;
}

uint64_t sub_2281AF4E0()
{
  if (!*(v0 + 32))
  {
    return 0;
  }

  v1 = sub_2282604EC();
  if (!v2)
  {
    return 0;
  }

  v3 = v1;

  return v3;
}

uint64_t sub_2281AF538()
{
  if (!*(v0 + 32))
  {
    return 0;
  }

  sub_2282604EC();
  if (!v2)
  {
    return 0;
  }

  v3 = v1;

  return v3;
}

uint64_t sub_2281AF590()
{
  result = *v0;
  v2 = *(v0 + 8);
  return result;
}

uint64_t sub_2281AF59C()
{
  result = *(v0 + 16);
  v2 = *(v0 + 24);
  return result;
}

uint64_t ScheduleDataSource.DisplayContext.hashValue.getter()
{
  v1 = *v0;
  sub_228393520();
  MEMORY[0x22AAB70D0](v1);
  return sub_228393570();
}

uint64_t sub_2281AF634(uint64_t a1)
{
  sub_228393520();
  sub_22838F440();
  sub_2281BCDF8(&qword_27D825C90, MEMORY[0x277CC9578]);
  sub_228391F70();
  v3 = (v1 + *(a1 + 20));
  v4 = *v3;
  v5 = v3[1];
  sub_2283920B0();
  v6 = *(v1 + *(a1 + 24));
  sub_228392C70();
  return sub_228393570();
}

uint64_t sub_2281AF6EC(uint64_t a1, uint64_t a2)
{
  sub_22838F440();
  sub_2281BCDF8(&qword_27D825C90, MEMORY[0x277CC9578]);
  sub_228391F70();
  v4 = (v2 + *(a2 + 20));
  v5 = *v4;
  v6 = v4[1];
  sub_2283920B0();
  v7 = *(v2 + *(a2 + 24));
  return sub_228392C70();
}

uint64_t sub_2281AF78C(uint64_t a1, uint64_t a2)
{
  sub_228393520();
  sub_22838F440();
  sub_2281BCDF8(&qword_27D825C90, MEMORY[0x277CC9578]);
  sub_228391F70();
  v4 = (v2 + *(a2 + 20));
  v5 = *v4;
  v6 = v4[1];
  sub_2283920B0();
  v7 = *(v2 + *(a2 + 24));
  sub_228392C70();
  return sub_228393570();
}

uint64_t sub_2281AF840(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((sub_22838F3D0() & 1) == 0)
  {
    return 0;
  }

  v6 = *(a3 + 20);
  v7 = *(a1 + v6);
  v8 = *(a1 + v6 + 8);
  v9 = (a2 + v6);
  v10 = v7 == *v9 && v8 == v9[1];
  if (!v10 && (sub_228393460() & 1) == 0)
  {
    return 0;
  }

  sub_22817A958(0, &qword_27D825620, 0x277D82BB8);
  v11 = *(a3 + 24);
  v12 = *(a1 + v11);
  v13 = *(a2 + v11);
  return sub_228392C60() & 1;
}

uint64_t ScheduleDataSource.__allocating_init(with:healthStore:isMedicationActivePublisher:analyticsManager:context:)(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4, unsigned __int8 *a5)
{
  v11 = a1[3];
  v12 = a1[4];
  v13 = __swift_mutable_project_boxed_opaque_existential_1(a1, v11);
  v14 = sub_2281BB874(v13, a2, a3, a4, a5, v5, v11, v12);

  __swift_destroy_boxed_opaque_existential_0(a1);
  return v14;
}

uint64_t ScheduleDataSource.init(with:healthStore:isMedicationActivePublisher:analyticsManager:context:)(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4, unsigned __int8 *a5)
{
  v6 = v5;
  v12 = a1[3];
  v13 = a1[4];
  v14 = __swift_mutable_project_boxed_opaque_existential_1(a1, v12);
  v15 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v21 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v18 + 16))(v17);
  v19 = sub_2281BB350(v17, a2, a3, a4, a5, v6, v12, v13);

  __swift_destroy_boxed_opaque_existential_0(a1);
  return v19;
}

uint64_t sub_2281AFAAC()
{
  v1 = v0;
  v63 = *v0;
  v2 = sub_2283911B0();
  v57 = *(v2 - 8);
  v3 = *(v57 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x277D83D88];
  sub_2281BBE94(0, &qword_27D827C30, MEMORY[0x277D85720], MEMORY[0x277D83D88]);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v62 = &v50 - v9;
  sub_2281BC51C();
  v60 = *(v10 - 8);
  v61 = v10;
  v11 = *(v60 + 64);
  MEMORY[0x28223BE20](v10);
  v59 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2281BBE94(0, &qword_280DDBAD0, MEMORY[0x277D85248], v6);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v50 - v15;
  sub_2281BC660();
  v18 = v17;
  v58 = *(v17 - 8);
  v19 = *(v58 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = &v50 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = (v1 + qword_27D8244B0);
  v23 = *(v1 + qword_27D8244B0 + 24);
  v24 = *(v1 + qword_27D8244B0 + 32);
  __swift_project_boxed_opaque_existential_0((v1 + qword_27D8244B0), v23);
  if ((*(v24 + 40))(v23, v24))
  {
    v64 = *(v1 + qword_27D8244B8);
    sub_22817A958(0, &qword_280DDCEE0, 0x277D85C78);

    v25 = sub_228392790();
    v65 = v25;
    v56 = sub_228392730();
    v26 = *(v56 - 8);
    v55 = *(v26 + 56);
    v57 = v26 + 56;
    v55(v16, 1, 1, v56);
    sub_2281BC72C();
    sub_2281BCDF8(&qword_27D8245A8, sub_2281BC72C);
    v54 = sub_2281A1504();
    sub_228391A70();
    v53 = MEMORY[0x277D85248];
    v52 = MEMORY[0x277D83D88];
    v51 = sub_2281BBE94;
    sub_2281BC7AC(v16, &qword_280DDBAD0, MEMORY[0x277D85248], MEMORY[0x277D83D88], sub_2281BBE94);

    v27 = swift_allocObject();
    swift_weakInit();
    v28 = swift_allocObject();
    v29 = v63;
    *(v28 + 16) = v27;
    *(v28 + 24) = v29;
    sub_2281BCDF8(&qword_27D8245B0, sub_2281BC660);
    sub_228391AC0();

    (*(v58 + 8))(v21, v18);
    swift_beginAccess();
    sub_228391800();
    swift_endAccess();

    v30 = *(v1 + qword_27D8244C8);
    v64 = sub_228390ED0();
    v31 = sub_228392790();
    v65 = v31;
    v55(v16, 1, 1, v56);
    sub_2281BC99C(0, &qword_27D824588, MEMORY[0x277D84F78] + 8, MEMORY[0x277CBCE30]);
    sub_2281BC5E0();
    v32 = v59;
    sub_228391A70();
    sub_2281BC7AC(v16, &qword_280DDBAD0, v53, v52, v51);

    v33 = swift_allocObject();
    swift_weakInit();
    v34 = swift_allocObject();
    *(v34 + 16) = sub_2281BC814;
    *(v34 + 24) = v33;
    sub_2281BCDF8(&qword_27D8245B8, sub_2281BC51C);
    v35 = v61;
    sub_228391AC0();

    (*(v60 + 8))(v32, v35);
    swift_beginAccess();
    sub_228391800();
    swift_endAccess();

    v36 = v62;
    sub_2283922B0();
    v37 = sub_2283922D0();
    (*(*(v37 - 8) + 56))(v36, 0, 1, v37);
    v38 = swift_allocObject();
    swift_weakInit();
    sub_2283922A0();

    v39 = sub_228392290();
    v40 = swift_allocObject();
    v41 = MEMORY[0x277D85700];
    v40[2] = v39;
    v40[3] = v41;
    v42 = v63;
    v40[4] = v38;
    v40[5] = v42;

    sub_2281DC568(0, 0, v36, &unk_2283999D0, v40);
  }

  else
  {
    v44 = v22[3];
    v45 = v22[4];
    __swift_project_boxed_opaque_existential_0(v22, v44);
    v46 = (*(v45 + 24))(v44, v45);
    if (v46)
    {

      result = sub_22838F930();
      if ((result & 1) == 0)
      {
        sub_22838F910();
        sub_22838FCD0();

        sub_2281B1154();
        sub_22838FF50();
      }
    }

    else
    {
      sub_228391150();
      v47 = sub_2283911A0();
      v48 = sub_2283925C0();
      if (os_log_type_enabled(v47, v48))
      {
        v49 = swift_slowAlloc();
        *v49 = 0;
        _os_log_impl(&dword_22816B000, v47, v48, "Unable to display schedule if we have no prefetched schedule and should not fetch it.", v49, 2u);
        MEMORY[0x22AAB7B80](v49, -1, -1);
      }

      return (*(v57 + 8))(v5, v2);
    }
  }

  return result;
}

uint64_t sub_2281B03F8()
{
  v0 = sub_2283911B0();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    if ((sub_22838F930() & 1) == 0)
    {
      sub_22838F910();
      sub_22838FCD0();

      sub_2281B1154();
      sub_22838FF50();
    }
  }

  else
  {
    sub_228391150();
    v6 = sub_2283911A0();
    v7 = sub_2283925C0();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v13 = v9;
      *v8 = 136315138;
      v10 = sub_228393600();
      v12 = sub_2281C96FC(v10, v11, &v13);

      *(v8 + 4) = v12;
      _os_log_impl(&dword_22816B000, v6, v7, "Unable to update section as %s was deallocated.", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v9);
      MEMORY[0x22AAB7B80](v9, -1, -1);
      MEMORY[0x22AAB7B80](v8, -1, -1);
    }

    return (*(v1 + 8))(v4, v0);
  }
}

uint64_t sub_2281B0624()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_2281B067C();
  }

  return result;
}

uint64_t sub_2281B067C()
{
  v1 = *v0;
  sub_2281BBE94(0, &qword_27D827C30, MEMORY[0x277D85720], MEMORY[0x277D83D88]);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v12 - v4;
  sub_2283922B0();
  v6 = sub_2283922D0();
  (*(*(v6 - 8) + 56))(v5, 0, 1, v6);
  v7 = swift_allocObject();
  swift_weakInit();
  sub_2283922A0();

  v8 = sub_228392290();
  v9 = swift_allocObject();
  v10 = MEMORY[0x277D85700];
  v9[2] = v8;
  v9[3] = v10;
  v9[4] = v7;
  v9[5] = v1;

  sub_2281DC568(0, 0, v5, &unk_2283999C8, v9);
}

uint64_t sub_2281B0828(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[23] = a4;
  v5[24] = a5;
  v6 = sub_2283911B0();
  v5[25] = v6;
  v7 = *(v6 - 8);
  v5[26] = v7;
  v8 = *(v7 + 64) + 15;
  v5[27] = swift_task_alloc();
  v5[28] = swift_task_alloc();
  v5[29] = swift_task_alloc();
  sub_2283922A0();
  v5[30] = sub_228392290();
  v10 = sub_228392250();
  v5[31] = v10;
  v5[32] = v9;

  return MEMORY[0x2822009F8](sub_2281B0934, v10, v9);
}

uint64_t sub_2281B0934()
{
  v46 = v0;
  v1 = v0[23];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[33] = Strong;
  if (!Strong)
  {
    v13 = v0[30];
    v14 = v0[27];

    sub_228391150();
    v15 = sub_2283911A0();
    v16 = sub_2283925C0();
    v17 = os_log_type_enabled(v15, v16);
    v19 = v0[26];
    v18 = v0[27];
    v20 = v0[25];
    if (v17)
    {
      v21 = v0[24];
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v45 = v23;
      *v22 = 136315138;
      v24 = sub_228393600();
      v26 = sub_2281C96FC(v24, v25, &v45);

      *(v22 + 4) = v26;
      _os_log_impl(&dword_22816B000, v15, v16, "Unable to fetch schedule as %s was deallocated.", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v23);
      MEMORY[0x22AAB7B80](v23, -1, -1);
      MEMORY[0x22AAB7B80](v22, -1, -1);
    }

    (*(v19 + 8))(v18, v20);
    goto LABEL_17;
  }

  v3 = Strong;
  v4 = (Strong + qword_27D8244B0);
  v5 = v4[3];
  v6 = v4[4];
  __swift_project_boxed_opaque_existential_0(v4, v5);
  (*(v6 + 16))(v5, v6);
  if (v7)
  {
    v8 = *(v3 + qword_27D8244D0);
    v0[34] = v8;
    if (v8)
    {
      v9 = [objc_allocWithZone(MEMORY[0x277D11578]) initWithHealthStore_];
      v0[35] = v9;
      v10 = sub_228391FC0();
      v0[36] = v10;

      v0[2] = v0;
      v0[7] = v0 + 21;
      v0[3] = sub_2281B0DB4;
      v11 = swift_continuation_init();
      sub_2281BC3FC();
      v0[17] = v12;
      v0[10] = MEMORY[0x277D85DD0];
      v0[11] = 1107296256;
      v0[12] = sub_2281B1080;
      v0[13] = &block_descriptor_21;
      v0[14] = v11;
      [v9 fetchScheduleWithMedicationIdentifier:v10 completion:v0 + 10];

      return MEMORY[0x282200938](v0 + 2);
    }

    v37 = v0[30];
    v38 = v0[28];

    sub_228391150();
    v29 = sub_2283911A0();
    v30 = sub_2283925C0();
    v39 = os_log_type_enabled(v29, v30);
    v32 = v0[28];
    v33 = v0[25];
    v34 = v0[26];
    if (v39)
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      v36 = "Unable to fetch schedule as healthStore is nil.";
      goto LABEL_14;
    }

LABEL_15:

    goto LABEL_16;
  }

  v28 = v0[29];
  v27 = v0[30];

  sub_228391150();
  v29 = sub_2283911A0();
  v30 = sub_2283925C0();
  v31 = os_log_type_enabled(v29, v30);
  v32 = v0[29];
  v33 = v0[25];
  v34 = v0[26];
  if (!v31)
  {
    goto LABEL_15;
  }

  v35 = swift_slowAlloc();
  *v35 = 0;
  v36 = "Unable to fetch schedule as identifier is nil.";
LABEL_14:
  _os_log_impl(&dword_22816B000, v29, v30, v36, v35, 2u);
  MEMORY[0x22AAB7B80](v35, -1, -1);

LABEL_16:
  (*(v34 + 8))(v32, v33);
LABEL_17:
  v41 = v0[28];
  v40 = v0[29];
  v42 = v0[27];

  v43 = v0[1];

  return v43();
}

uint64_t sub_2281B0DB4()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 296) = v3;
  v4 = *(v1 + 256);
  v5 = *(v1 + 248);
  if (v3)
  {
    v6 = sub_2281B0FAC;
  }

  else
  {
    v6 = sub_2281B0EE4;
  }

  return MEMORY[0x2822009F8](v6, v5, v4);
}

uint64_t sub_2281B0EE4()
{
  v1 = *(v0 + 240);

  v2 = *(v0 + 168);
  v3 = *(v0 + 280);
  v4 = *(v0 + 264);
  v5 = *(v0 + 272);

  v6 = *(v4 + qword_27D8244B8);
  *(v0 + 176) = v2;
  sub_228391850();

  v8 = *(v0 + 224);
  v7 = *(v0 + 232);
  v9 = *(v0 + 216);

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_2281B0FAC()
{
  v1 = *(v0 + 296);
  v2 = *(v0 + 240);

  swift_willThrow();

  v3 = *(v0 + 280);
  v4 = *(v0 + 264);
  v5 = *(v0 + 272);

  v6 = *(v4 + qword_27D8244B8);
  *(v0 + 176) = 0;
  sub_228391850();

  v8 = *(v0 + 224);
  v7 = *(v0 + 232);
  v9 = *(v0 + 216);

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_2281B1080(uint64_t a1, void *a2, void *a3)
{
  v5 = *__swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_2281810DC(0, &qword_280DDB860);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return MEMORY[0x282200958](v5, v6);
  }

  else
  {
    **(*(v5 + 64) + 40) = a2;
    v9 = a2;

    return MEMORY[0x282200950](v5);
  }
}

uint64_t sub_2281B1154()
{
  v1 = v0;
  v67 = *v0;
  v2 = sub_228390460();
  v71 = *(v2 - 8);
  v72 = v2;
  v3 = *(v71 + 64);
  MEMORY[0x28223BE20](v2);
  *&v73 = v62 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = sub_22838FFC0();
  v68 = *(v69 - 8);
  v5 = *(v68 + 64);
  MEMORY[0x28223BE20](v69);
  v7 = v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2281BBE94(0, &unk_280DDBCD0, MEMORY[0x277D74BD0], MEMORY[0x277D83D88]);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v62 - v10;
  v12 = sub_228391590();
  v70 = *(v12 - 8);
  v13 = *(v70 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = v62 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_22838F4A0();
  v75 = *(v16 - 8);
  v17 = *(v75 + 64);
  MEMORY[0x28223BE20](v16);
  v74 = v62 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = qword_27D8244A8;
  LOBYTE(v79) = *(v0 + qword_27D8244A8);
  v20 = qword_27D8244B0;
  v76 = sub_2281B42D4(&v79, (v0 + qword_27D8244B0));
  v21 = *(v0 + qword_27D8244B8);
  sub_228391870();
  v22 = v79;
  if (v79)
  {
    if ([v79 isUnavailable])
    {

      v23 = sub_2281B3EA4((v1 + v20));
    }

    else
    {
      LOBYTE(v79) = *(v1 + v19);
      v52 = v16;
      v53 = sub_2281B9A5C(v1 + v20, &v79);
      LOBYTE(v79) = *(v1 + v19);
      v54 = sub_2281B1BD0(&v79);
      LOBYTE(v79) = *(v1 + v19);
      v55 = sub_2281BA3F8(&v79);
      LOBYTE(v79) = *(v1 + v19);
      v56 = sub_2281BACD8(&v79);
      sub_2281BBE94(0, &qword_27D823910, MEMORY[0x277D10F78], MEMORY[0x277D84560]);
      v57 = *(sub_22838FEF0() - 8);
      v58 = *(v57 + 72);
      v59 = (*(v57 + 80) + 32) & ~*(v57 + 80);
      v23 = swift_allocObject();
      *(v23 + 16) = xmmword_228397F40;
      v77 = v53;
      sub_2281D5710(v54);
      sub_2281D5710(v55);
      sub_2281D5710(v76);
      sub_2281D5710(v56);
      sub_228194894(v77);

      v60 = v74;
      sub_22838F490();
      sub_22838F450();
      (*(v75 + 8))(v60, v52);
      sub_22838FED0();
    }
  }

  else
  {
    v63 = v15;
    v64 = v11;
    v65 = v7;
    v66 = v16;
    if (qword_27D8232A0 != -1)
    {
      swift_once();
    }

    v79 = 0;
    v80 = 0xE000000000000000;

    sub_2283931D0();
    v24 = sub_228393600();
    v26 = v25;

    v79 = v24;
    v80 = v26;
    MEMORY[0x22AAB5C80](0xD00000000000001DLL, 0x80000002283A92C0);
    v27 = *(v1 + v19);
    v67 = v79;
    v62[3] = v80;
    v28 = *(v1 + qword_27D8244C0 + 8);
    v62[2] = *(v1 + qword_27D8244C0);
    v62[1] = v28;
    v29 = v63;
    sub_228391520();

    sub_228391540();
    v30 = objc_opt_self();
    v31 = [v30 labelColor];
    v32 = sub_228391450();
    sub_228391420();
    v32(&v79, 0);
    sub_22817A958(0, &qword_280DDB9C0, 0x277D74300);
    v33 = *MEMORY[0x277D76988];
    v34 = *MEMORY[0x277D74420];
    sub_228392AD0();
    v35 = sub_228391450();
    sub_228391410();
    v35(&v79, 0);
    v78[3] = v12;
    v78[4] = MEMORY[0x277D74C30];
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v78);
    v37 = v70;
    (*(v70 + 16))(boxed_opaque_existential_1, v29, v12);
    v38 = v64;
    sub_228391390();
    v39 = &selRef_tertiarySystemGroupedBackgroundColor;
    if (!v27)
    {
      v39 = &selRef_tertiarySystemBackgroundColor;
    }

    v40 = [v30 *v39];
    sub_228391370();
    v41 = sub_2283913A0();
    (*(*(v41 - 8) + 56))(v38, 0, 1, v41);
    (*(v68 + 104))(v65, *MEMORY[0x277D10F98], v69);
    (*(v71 + 104))(v73, *MEMORY[0x277D11140], v72);
    v81 = sub_228390170();
    v82 = sub_2281BCDF8(&qword_27D824520, MEMORY[0x277D11000]);
    __swift_allocate_boxed_opaque_existential_1(&v79);

    sub_228390160();

    (*(v37 + 8))(v29, v12);
    sub_2281BBE94(0, &qword_27D823910, MEMORY[0x277D10F78], MEMORY[0x277D84560]);
    v42 = *(sub_22838FEF0() - 8);
    v43 = *(v42 + 72);
    v44 = (*(v42 + 80) + 32) & ~*(v42 + 80);
    v23 = swift_allocObject();
    v73 = xmmword_228397F40;
    *(v23 + 16) = xmmword_228397F40;
    sub_2281BBE0C();
    v45 = swift_allocObject();
    *(v45 + 16) = v73;
    v46 = v81;
    v47 = v82;
    v48 = __swift_project_boxed_opaque_existential_0(&v79, v81);
    *(v45 + 56) = v46;
    *(v45 + 64) = *(v47 + 8);
    v49 = __swift_allocate_boxed_opaque_existential_1((v45 + 32));
    (*(*(v46 - 8) + 16))(v49, v48, v46);
    v50 = sub_228194894(v76);

    v78[0] = v45;
    sub_2281D55FC(v50);
    v51 = v74;
    sub_22838F490();
    sub_22838F450();
    (*(v75 + 8))(v51, v66);
    sub_22838FED0();
    __swift_destroy_boxed_opaque_existential_0(&v79);
  }

  return v23;
}

uint64_t sub_2281B1BD0(unsigned __int8 *a1)
{
  v2 = v1;
  v4 = sub_2283911B0();
  v105 = *(v4 - 8);
  v106 = v4;
  v5 = v105[8];
  MEMORY[0x28223BE20](v4);
  v7 = &v88 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_228390460();
  v102 = *(v8 - 8);
  v103 = v8;
  v9 = *(v102 + 64);
  MEMORY[0x28223BE20](v8);
  v100 = &v88 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22838FFC0();
  v95 = *(v11 - 8);
  v96 = v11;
  v12 = *(v95 + 64);
  MEMORY[0x28223BE20](v11);
  v98 = &v88 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x277D83D88];
  sub_2281BBE94(0, &unk_280DDBCD0, MEMORY[0x277D74BD0], MEMORY[0x277D83D88]);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v94 = &v88 - v17;
  v101 = sub_228390170();
  v99 = *(v101 - 8);
  v18 = *(v99 + 64);
  MEMORY[0x28223BE20](v101);
  v97 = &v88 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_22838F440();
  v104 = *(v20 - 8);
  v21 = *(v104 + 64);
  v22 = MEMORY[0x28223BE20](v20);
  v24 = &v88 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v93 = &v88 - v25;
  sub_2281BBE94(0, &qword_280DDCDB0, MEMORY[0x277CC9578], v14);
  v27 = *(*(v26 - 8) + 64);
  v28 = MEMORY[0x28223BE20](v26 - 8);
  v30 = &v88 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v32 = &v88 - v31;
  v33 = sub_228391590();
  v107 = *(v33 - 8);
  v108 = v33;
  v34 = *(v107 + 64);
  MEMORY[0x28223BE20](v33);
  v109 = &v88 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_22838F6C0();
  v37 = *(*(v36 - 8) + 64);
  MEMORY[0x28223BE20](v36 - 8);
  v39 = &v88 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2281BBE94(0, &qword_27D824550, type metadata accessor for CycleData, v14);
  v41 = *(*(v40 - 8) + 64);
  v42 = MEMORY[0x28223BE20](v40 - 8);
  v44 = &v88 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v42);
  v46 = &v88 - v45;
  v47 = *a1;
  v48 = [v2 scheduleType];
  if (v48 == 7)
  {
    if (v47)
    {
      return MEMORY[0x277D84F90];
    }
  }

  else if ((v48 != 8) | v47 & 1)
  {
    return MEMORY[0x277D84F90];
  }

  v49 = v2;
  sub_22838F620();
  sub_2282CD948(v49, v39, v46);
  v50 = type metadata accessor for CycleData();
  v51 = *(v50 - 8);
  v52 = *(v51 + 48);
  v92 = v50;
  v91 = v52;
  v90 = v51 + 48;
  if ((v52)(v46, 1) == 1)
  {
    sub_2281BC7AC(v46, &qword_27D824550, type metadata accessor for CycleData, MEMORY[0x277D83D88], sub_2281BBE94);
    sub_228391150();
    v53 = sub_2283911A0();
    v54 = sub_2283925C0();
    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      *v55 = 0;
      _os_log_impl(&dword_22816B000, v53, v54, "Could not create cycleDataDescription item while attempting to display an item.", v55, 2u);
      MEMORY[0x22AAB7B80](v55, -1, -1);
    }

    (v105[1])(v7, v106);
    return MEMORY[0x277D84F90];
  }

  LODWORD(v106) = v47;
  CycleData.localizedDescription.getter();
  sub_2281BCD98(v46, type metadata accessor for CycleData);
  sub_228391580();
  sub_228391540();
  v56 = [v49 endDateTime];
  if (v56)
  {
    v57 = v56;
    sub_22838F3E0();

    v58 = v104;
    v89 = *(v104 + 56);
    v89(v32, 0, 1, v20);
    sub_2281BC7AC(v32, &qword_280DDCDB0, MEMORY[0x277CC9578], MEMORY[0x277D83D88], sub_2281BBE94);
    v105 = v49;
    v59 = [v49 endDateTime];
    if (v59)
    {
      v60 = v59;
      sub_22838F3E0();

      v61 = *(v58 + 32);
      v61(v30, v24, v20);
      v89(v30, 0, 1, v20);
      v62 = v93;
      v61(v93, v30, v20);
      v63 = v106;
    }

    else
    {
      v89(v30, 1, 1, v20);
      v62 = v93;
      sub_22838F3F0();
      v64 = (*(v58 + 48))(v30, 1, v20);
      v63 = v106;
      if (v64 != 1)
      {
        sub_2281BC7AC(v30, &qword_280DDCDB0, MEMORY[0x277CC9578], MEMORY[0x277D83D88], sub_2281BBE94);
      }
    }

    sub_22838F340();
    v65 = sub_22838F390();
    v66 = *(v58 + 8);
    v66(v24, v20);
    v66(v62, v20);
    v49 = v105;
    if (v65)
    {
      goto LABEL_16;
    }

    (*(v107 + 8))(v109, v108);
    return MEMORY[0x277D84F90];
  }

  (*(v104 + 56))(v32, 1, 1, v20);
  sub_2281BC7AC(v32, &qword_280DDCDB0, MEMORY[0x277CC9578], MEMORY[0x277D83D88], sub_2281BBE94);
  v63 = v106;
LABEL_16:
  v67 = v49;
  sub_22838F620();
  sub_2282CD948(v67, v39, v44);
  if (v91(v44, 1, v92) == 1)
  {
    sub_2281BC7AC(v44, &qword_27D824550, type metadata accessor for CycleData, MEMORY[0x277D83D88], sub_2281BBE94);
  }

  else
  {
    CycleData.localizedNextPhaseDateChangeDescription.getter();
    v69 = v68;
    sub_2281BCD98(v44, type metadata accessor for CycleData);
    if (v69)
    {
      sub_2283913D0();
      v70 = [objc_opt_self() preferredFontForTextStyle_];
      v71 = sub_2283914A0();
      sub_228391410();
      v71(v110, 0);
      v72 = [objc_opt_self() secondaryLabelColor];
      v73 = sub_2283914A0();
      sub_228391420();
      v73(v110, 0);
    }
  }

  v74 = v108;
  v110[3] = v108;
  v110[4] = MEMORY[0x277D74C30];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v110);
  v76 = v107;
  v77 = v109;
  (*(v107 + 16))(boxed_opaque_existential_1, v109, v74);
  v78 = v94;
  sub_228391390();
  v79 = objc_opt_self();
  v80 = &selRef_tertiarySystemGroupedBackgroundColor;
  if (!v63)
  {
    v80 = &selRef_tertiarySystemBackgroundColor;
  }

  v81 = [v79 *v80];
  sub_228391370();
  v82 = sub_2283913A0();
  (*(*(v82 - 8) + 56))(v78, 0, 1, v82);
  (*(v95 + 104))(v98, *MEMORY[0x277D10F98], v96);
  (*(v102 + 104))(v100, *MEMORY[0x277D11140], v103);
  v83 = v97;
  sub_228390160();
  sub_2281BBDA4();
  v84 = swift_allocObject();
  *(v84 + 16) = xmmword_228397F40;
  v85 = v101;
  *(v84 + 56) = v101;
  *(v84 + 64) = sub_2281BCDF8(&qword_27D824520, MEMORY[0x277D11000]);
  v86 = __swift_allocate_boxed_opaque_existential_1((v84 + 32));
  (*(v99 + 32))(v86, v83, v85);
  (*(v76 + 8))(v77, v74);
  return v84;
}

id sub_2281B2920()
{
  v1 = v0;
  v2 = sub_2283911B0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [objc_opt_self() currentDevice];
  v8 = [v7 userInterfaceIdiom];

  v9 = v8 == 1;
  v10 = *(v1 + qword_27D8244B0 + 24);
  v11 = *(v1 + qword_27D8244B0 + 32);
  __swift_project_boxed_opaque_existential_0((v1 + qword_27D8244B0), v10);
  v12 = (*(v11 + 40))(v10, v11);
  LOBYTE(v25[0]) = v9;
  BYTE1(v25[0]) = 1;
  BYTE2(v25[0]) = (v12 & 1) == 0;
  v25[1] = 1;
  result = ScheduleUnavailableDeviceState.bodyText.getter();
  if (!v14)
  {
    sub_228391150();

    v15 = sub_2283911A0();
    v16 = sub_2283925C0();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v24[1] = v1;
      v25[0] = v18;
      *v17 = 136446210;
      type metadata accessor for ScheduleDataSource(0);

      v19 = sub_228392020();
      v21 = sub_2281C96FC(v19, v20, v25);

      *(v17 + 4) = v21;
      _os_log_impl(&dword_22816B000, v15, v16, "[%{public}s] Error getting body text for data source, ScheduleUnavailableDeviceState returned nil", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v18);
      MEMORY[0x22AAB7B80](v18, -1, -1);
      MEMORY[0x22AAB7B80](v17, -1, -1);
    }

    (*(v3 + 8))(v6, v2);
    result = [objc_opt_self() sharedBehavior];
    if (result)
    {
      v22 = result;
      v23 = [result isAppleInternalInstall];

      if (v23)
      {
        return 0xD00000000000002ALL;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_2281B2BF4@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_2283913A0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280DDCF18 != -1)
  {
    swift_once();
  }

  v7 = sub_22838F0C0();
  v37 = v8;
  v38 = v7;
  v9 = sub_2281B2920();
  v35 = v10;
  v36 = v9;
  v34 = sub_22838F0C0();
  v12 = v11;
  sub_228391390();
  v13 = objc_allocWithZone(MEMORY[0x277D75348]);
  aBlock[4] = sub_2281BCE54;
  aBlock[5] = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2281B73E0;
  aBlock[3] = &block_descriptor_13;
  v14 = _Block_copy(aBlock);
  v15 = [v13 initWithDynamicProvider_];
  _Block_release(v14);

  v16 = v15;
  sub_228391370();
  v17 = type metadata accessor for TileItem(0);
  a1[3] = v17;
  a1[4] = sub_2281BCDF8(&unk_27D8255A0, type metadata accessor for TileItem);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
  (*(v3 + 16))(boxed_opaque_existential_1 + v17[11], v6, v2);
  type metadata accessor for TileItem.Background(0);
  swift_storeEnumTagMultiPayload();
  sub_22838F490();
  v19 = (boxed_opaque_existential_1 + v17[5]);
  type metadata accessor for TileItemCell();
  sub_2281BCDF8(&qword_27D8254D0, type metadata accessor for TileItemCell);
  v20 = sub_22838FBB0();
  v22 = v21;

  *v19 = v20;
  v19[1] = v22;
  v23 = (boxed_opaque_existential_1 + v17[6]);
  v24 = v37;
  *v23 = v38;
  v23[1] = v24;
  v25 = (boxed_opaque_existential_1 + v17[7]);
  v26 = v35;
  *v25 = v36;
  v25[1] = v26;
  v27 = (boxed_opaque_existential_1 + v17[8]);
  *v27 = 0;
  v27[1] = 0;
  v28 = (boxed_opaque_existential_1 + v17[9]);
  *v28 = v34;
  v28[1] = v12;
  v29 = (boxed_opaque_existential_1 + v17[10]);
  *v29 = 0;
  v29[1] = 0;
  v30 = (boxed_opaque_existential_1 + v17[12]);
  *v30 = sub_2281B2FC8;
  v30[1] = 0;
  v31 = (boxed_opaque_existential_1 + v17[13]);
  *v31 = 0;
  v31[1] = 0;
  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_2281B2FC8()
{
  v21 = sub_228390A00();
  v0 = *(v21 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x28223BE20](v21);
  v3 = &v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x277CC9788];
  v4 = MEMORY[0x277D83D88];
  sub_2281BBE94(0, &unk_27D825D00, MEMORY[0x277CC9788], MEMORY[0x277D83D88]);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v20 - v7;
  sub_2281BBE94(0, &qword_27D824530, MEMORY[0x277CC9260], v4);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v20 - v11;
  v13 = sub_22838F1F0();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v20 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_22838F580();
  (*(*(v18 - 8) + 56))(v8, 1, 1, v18);
  sub_2283909F0();
  sub_228391140();
  (*(v0 + 8))(v3, v21);
  sub_2281BC7AC(v8, &unk_27D825D00, v20, v4, sub_2281BBE94);
  sub_22838F1E0();

  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    return sub_2281BC7AC(v12, &qword_27D824530, MEMORY[0x277CC9260], MEMORY[0x277D83D88], sub_2281BBE94);
  }

  (*(v14 + 32))(v17, v12, v13);
  sub_22838F1B0();
  return (*(v14 + 8))(v17, v13);
}

uint64_t sub_2281B337C@<X0>(uint64_t *a1@<X8>)
{
  v49 = a1;
  v39 = *v1;
  v2 = sub_228390460();
  v46 = *(v2 - 8);
  v47 = v2;
  v3 = *(v46 + 64);
  MEMORY[0x28223BE20](v2);
  v48 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_22838FFC0();
  v40 = *(v42 - 8);
  v5 = *(v40 + 64);
  MEMORY[0x28223BE20](v42);
  v45 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2281BBE94(0, &unk_280DDBCD0, MEMORY[0x277D74BD0], MEMORY[0x277D83D88]);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v44 = &v35 - v9;
  v43 = sub_2283913A0();
  v41 = *(v43 - 8);
  v10 = *(v41 + 64);
  MEMORY[0x28223BE20](v43);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_228391590();
  v35 = *(v13 - 8);
  v14 = *(v35 + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228391580();
  v17 = [objc_opt_self() linkColor];
  v18 = sub_228391450();
  sub_228391420();
  v18(&aBlock, 0);
  if (qword_280DDCF18 != -1)
  {
    swift_once();
  }

  sub_22838F0C0();
  sub_228391540();
  sub_228391390();
  v19 = objc_allocWithZone(MEMORY[0x277D75348]);
  v54 = sub_2281BCE54;
  v55 = 0;
  aBlock = MEMORY[0x277D85DD0];
  v51 = 1107296256;
  v52 = sub_2281B73E0;
  v53 = &block_descriptor_4;
  v20 = _Block_copy(&aBlock);
  v21 = [v19 initWithDynamicProvider_];
  _Block_release(v20);

  v38 = v21;
  v36 = v12;
  sub_228391370();
  aBlock = 0;
  v51 = 0xE000000000000000;
  sub_2283931D0();
  v22 = sub_228393600();
  v24 = v23;

  aBlock = v22;
  v51 = v24;
  MEMORY[0x22AAB5C80](0x635374657365725FLL, 0xEE00656C75646568);
  v39 = aBlock;
  v37 = v51;
  v25 = v13;
  v53 = v13;
  v54 = MEMORY[0x277D74C30];
  v26 = __swift_allocate_boxed_opaque_existential_1(&aBlock);
  v27 = v35;
  (*(v35 + 16))(v26, v16, v25);
  swift_allocObject();
  swift_weakInit();
  v28 = v41;
  v29 = v44;
  v30 = v12;
  v31 = v43;
  (*(v41 + 16))(v44, v30, v43);
  (*(v28 + 56))(v29, 0, 1, v31);
  (*(v40 + 104))(v45, *MEMORY[0x277D10F98], v42);
  (*(v46 + 104))(v48, *MEMORY[0x277D11140], v47);
  v32 = sub_228390170();
  v33 = v49;
  v49[3] = v32;
  v33[4] = sub_2281BCDF8(&qword_27D824520, MEMORY[0x277D11000]);
  __swift_allocate_boxed_opaque_existential_1(v33);

  sub_228390160();

  (*(v28 + 8))(v36, v31);
  (*(v27 + 8))(v16, v25);
}

id sub_2281B3A34(void *a1)
{
  v1 = [a1 userInterfaceStyle];
  v2 = objc_opt_self();
  v3 = &selRef_tertiarySystemBackgroundColor;
  if (v1 != 2)
  {
    v3 = &selRef_tertiarySystemFillColor;
  }

  v4 = [v2 *v3];

  return v4;
}

uint64_t sub_2281B3AA0(void *a1)
{
  v2 = sub_2283911B0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = v34 - v9;
  MEMORY[0x28223BE20](v8);
  v12 = v34 - v11;
  sub_228391150();
  v13 = sub_2283911A0();
  v14 = sub_2283925A0();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_22816B000, v13, v14, "Did tap 'Reset Schedule' item", v15, 2u);
    MEMORY[0x22AAB7B80](v15, -1, -1);
  }

  v16 = *(v3 + 8);
  v16(v12, v2);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v18 = Strong;
    sub_228180FB0(Strong + qword_27D8244B0, v35);
    sub_2281810DC(0, &qword_27D824528);
    sub_22817A958(0, &qword_280DDB9E0, 0x277D115B8);
    if (swift_dynamicCast())
    {
      v19 = v34[1];
      v20 = *(v18 + qword_27D8244B8);
      v21 = objc_allocWithZone(type metadata accessor for MedicationsInputViewController());

      v22 = v19;
      v23 = MedicationsInputViewController.init(schedulePublisher:medication:resetSchedule:restartingSchedule:)(v20, v22, 1, 0);
      v24 = [objc_allocWithZone(MEMORY[0x277D12978]) initWithRootViewController_];
      [a1 presentViewController:v24 animated:1 completion:0];

      v25 = *(v18 + qword_27D8244D8);

      sub_228390FE0();
    }

    sub_228391150();
    v31 = sub_2283911A0();
    v32 = sub_2283925C0();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&dword_22816B000, v31, v32, "Unable to create MedicationsInputViewController if medication is nil.", v33, 2u);
      MEMORY[0x22AAB7B80](v33, -1, -1);
    }

    else
    {
    }

    v30 = v7;
  }

  else
  {
    sub_228391150();
    v27 = sub_2283911A0();
    v28 = sub_2283925C0();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&dword_22816B000, v27, v28, "Unable to create MedicationsInputViewController if ScheduleDataSource is nil.", v29, 2u);
      MEMORY[0x22AAB7B80](v29, -1, -1);
    }

    v30 = v10;
  }

  return (v16)(v30, v2);
}

char *sub_2281B3EA4(void *a1)
{
  v3 = sub_22838F4A0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_22838FEF0();
  v8 = *(v47 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v47);
  v45 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v39 - v12;
  v44 = v1;
  sub_2281B2BF4(v51);
  sub_2281BBE0C();
  v43 = v14;
  v15 = swift_allocObject();
  v41 = xmmword_228397F40;
  *(v15 + 16) = xmmword_228397F40;
  v16 = v52;
  v17 = v53;
  v18 = __swift_project_boxed_opaque_existential_0(v51, v52);
  *(v15 + 56) = v16;
  *(v15 + 64) = *(v17 + 8);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v15 + 32));
  (*(*(v16 - 8) + 16))(boxed_opaque_existential_1, v18, v16);
  sub_22838F490();
  sub_22838F450();
  v20 = *(v4 + 8);
  v46 = v3;
  v42 = v20;
  v20(v7, v3);
  sub_22838FED0();
  v21 = sub_228198AA0(0, 1, 1, MEMORY[0x277D84F90]);
  v23 = *(v21 + 2);
  v22 = *(v21 + 3);
  if (v23 >= v22 >> 1)
  {
    v21 = sub_228198AA0(v22 > 1, v23 + 1, 1, v21);
  }

  *(v21 + 2) = v23 + 1;
  v25 = *(v8 + 32);
  v24 = v8 + 32;
  v26 = (*(v24 + 48) + 32) & ~*(v24 + 48);
  v27 = *(v24 + 40);
  v40 = v25;
  v25(&v21[v26 + v27 * v23], v13, v47);
  v28 = a1[3];
  v29 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, v28);
  if ((*(v29 + 32))(v28, v29))
  {
    sub_2281B337C(v48);
    v30 = swift_allocObject();
    *(v30 + 16) = v41;
    v31 = v49;
    v32 = v50;
    v33 = __swift_project_boxed_opaque_existential_0(v48, v49);
    *(v30 + 56) = v31;
    *(v30 + 64) = *(v32 + 8);
    v34 = __swift_allocate_boxed_opaque_existential_1((v30 + 32));
    (*(*(v31 - 8) + 16))(v34, v33, v31);
    sub_22838F490();
    sub_22838F450();
    v42(v7, v46);
    v35 = v45;
    sub_22838FED0();
    v37 = *(v21 + 2);
    v36 = *(v21 + 3);
    if (v37 >= v36 >> 1)
    {
      v21 = sub_228198AA0(v36 > 1, v37 + 1, 1, v21);
    }

    *(v21 + 2) = v37 + 1;
    v40(&v21[v26 + v37 * v27], v35, v47);
    __swift_destroy_boxed_opaque_existential_0(v48);
  }

  __swift_destroy_boxed_opaque_existential_0(v51);
  return v21;
}

uint64_t sub_2281B42D4(_BYTE *a1, void *a2)
{
  v4 = sub_228390460();
  v51 = *(v4 - 8);
  v5 = *(v51 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22838FFC0();
  v50 = *(v8 - 8);
  v9 = *(v50 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2281BBE94(0, &unk_280DDBCD0, MEMORY[0x277D74BD0], MEMORY[0x277D83D88]);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v45 - v14;
  v16 = sub_228390170();
  v52 = *(v16 - 8);
  v17 = *(v52 + 64);
  MEMORY[0x28223BE20](v16);
  v19 = &v45 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_228391590();
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x28223BE20](v20);
  v25 = &v45 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1)
  {
    return MEMORY[0x277D84F90];
  }

  v47 = v16;
  v48 = v23;
  v46 = v4;
  v49 = v22;
  v27 = a2[3];
  v26 = a2[4];
  __swift_project_boxed_opaque_existential_0(a2, v27);
  if (((*(v26 + 32))(v27, v26) & 1) == 0)
  {
    return MEMORY[0x277D84F90];
  }

  v28 = *&v53[qword_27D8244B8];
  sub_228391870();
  v29 = v57[0];
  if (v57[0])
  {
    v30 = [v57[0] isUnavailable];

    if (v30)
    {
      return MEMORY[0x277D84F90];
    }
  }

  sub_228391580();
  v45 = objc_opt_self();
  v32 = [v45 tintColor];
  v33 = sub_228391450();
  sub_228391420();
  v33(v57, 0);
  if (qword_280DDCF18 != -1)
  {
    swift_once();
  }

  sub_22838F0C0();
  sub_228391540();
  v34 = v49;
  v57[3] = v49;
  v57[4] = MEMORY[0x277D74C30];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v57);
  (*(v48 + 16))(boxed_opaque_existential_1, v25, v34);
  v36 = swift_allocObject();
  swift_weakInit();
  sub_228180FB0(a2, v56);
  v37 = swift_allocObject();
  *(v37 + 16) = v36;
  sub_22816DFFC(v56, v37 + 24);

  sub_228391390();
  v38 = [v45 tertiarySystemBackgroundColor];
  sub_228391370();
  v53 = "EDIT_SCHEDULE_TEXT";
  v39 = sub_2283913A0();
  (*(*(v39 - 8) + 56))(v15, 0, 1, v39);
  v40 = *MEMORY[0x277D12788];
  v54 = sub_228392000();
  v55 = v41;

  MEMORY[0x22AAB5C80](0xD000000000000027, 0x80000002283A91E0);

  (*(v50 + 104))(v11, *MEMORY[0x277D10F98], v8);
  (*(v51 + 104))(v7, *MEMORY[0x277D11140], v46);
  sub_228390160();

  sub_2281BBDA4();
  v42 = swift_allocObject();
  *(v42 + 16) = xmmword_228397F40;
  v43 = v47;
  *(v42 + 56) = v47;
  *(v42 + 64) = sub_2281BCDF8(&qword_27D824520, MEMORY[0x277D11000]);
  v44 = __swift_allocate_boxed_opaque_existential_1((v42 + 32));
  (*(v52 + 32))(v44, v19, v43);
  (*(v48 + 8))(v25, v49);
  return v42;
}

uint64_t sub_2281B4990(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_2283911B0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v11 = *(result + qword_27D8244B8);

    sub_228180FB0(a3, v23);
    sub_2281810DC(0, &qword_27D824528);
    sub_22817A958(0, &qword_280DDB9E0, 0x277D115B8);
    if (swift_dynamicCast())
    {
      v12 = v22[1];
      v13 = objc_allocWithZone(type metadata accessor for MedicationsInputViewController());

      v14 = v12;
      v15 = MedicationsInputViewController.init(schedulePublisher:medication:resetSchedule:restartingSchedule:)(v11, v14, 0, 0);
      v16 = [objc_allocWithZone(MEMORY[0x277D12978]) initWithRootViewController_];
      [v16 setModalPresentationStyle_];
      [v16 setModalInPresentation_];
      [a1 presentViewController:v16 animated:1 completion:0];

      swift_beginAccess();
      Strong = swift_weakLoadStrong();
      if (Strong)
      {
        v18 = *(Strong + qword_27D8244D8);

        sub_228390FE0();
      }
    }

    else
    {
      sub_228391150();
      v19 = sub_2283911A0();
      v20 = sub_2283925C0();
      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        *v21 = 0;
        _os_log_impl(&dword_22816B000, v19, v20, "Unable to create MedicationsInputViewController if medication is nil.", v21, 2u);
        MEMORY[0x22AAB7B80](v21, -1, -1);
      }

      else
      {
      }

      return (*(v6 + 8))(v9, v5);
    }
  }

  return result;
}

uint64_t sub_2281B4C98(uint64_t a1)
{
  v3 = sub_2283900D0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v15[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6);
  v10 = &v15[-v9];
  if (a1)
  {
    sub_228390040();
  }

  else
  {
    sub_228390010();
  }

  if (*(v1 + qword_27D8244A8))
  {
    v11 = sub_228390090();
    *(v12 + 16) = 0x4024000000000000;
    v11(v15, 0);
  }

  else
  {
    sub_228390000();
    (*(v4 + 8))(v10, v3);
    (*(v4 + 32))(v10, v8, v3);
  }

  v13 = sub_2283900C0();
  (*(v4 + 8))(v10, v3);
  return v13;
}

uint64_t sub_2281B4E70()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + qword_27D8244B0));
  v1 = *(v0 + qword_27D8244B8);

  v2 = *(v0 + qword_27D8244C0 + 8);

  v3 = *(v0 + qword_27D8244D8);

  v4 = *(v0 + qword_27D8244E0);

  v5 = *(v0 + qword_27D8244E8);
}

uint64_t ScheduleDataSource.deinit()
{
  v0 = _s19HealthMedicationsUI34InteractionSeperatorLineDataSourceCfd_0();
  __swift_destroy_boxed_opaque_existential_0((v0 + qword_27D8244B0));
  v1 = *(v0 + qword_27D8244B8);

  v2 = *(v0 + qword_27D8244C0 + 8);

  v3 = *(v0 + qword_27D8244D8);

  v4 = *(v0 + qword_27D8244E0);

  v5 = *(v0 + qword_27D8244E8);

  return v0;
}

uint64_t ScheduleDataSource.__deallocating_deinit()
{
  ScheduleDataSource.deinit();

  return swift_deallocClassInstance();
}

Swift::Void __swiftcall ScheduleDataSource.registerCells(for:)(UICollectionView *a1)
{
  type metadata accessor for TileItemCell();
  sub_2281BCDF8(&qword_27D8254D0, type metadata accessor for TileItemCell);
  sub_2283926B0();
  sub_228390420();
  sub_2283926D0();
  sub_2283904F0();
  sub_2283926B0();
  type metadata accessor for ScheduleIntervalCell();
  sub_2281BCDF8(&qword_27D8244F0, type metadata accessor for ScheduleIntervalCell);
  sub_2283926B0();
}

uint64_t sub_2281B5160()
{
  type metadata accessor for TileItemCell();
  sub_2281BCDF8(&qword_27D8254D0, type metadata accessor for TileItemCell);
  sub_2283926B0();
  sub_228390420();
  sub_2283926D0();
  sub_2283904F0();
  sub_2283926B0();
  type metadata accessor for ScheduleIntervalCell();
  sub_2281BCDF8(&qword_27D8244F0, type metadata accessor for ScheduleIntervalCell);
  return sub_2283926B0();
}

uint64_t ScheduleDataSource.supplementaryItem(ofKind:at:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = sub_228391590();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = sub_22838F4A0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *MEMORY[0x277D767D0];
  if (sub_228392000() == a1 && v15 == a2)
  {
  }

  else
  {
    v17 = sub_228393460();

    if ((v17 & 1) == 0)
    {
      goto LABEL_9;
    }
  }

  if ((*(v3 + qword_27D8244A8) & 1) == 0)
  {
    v23 = *(v3 + qword_27D8244B8);
    sub_228391870();
    v24 = v34[0];
    if (!v34[0] || (sub_228303B9C(1), v26 = v25, v24, !v26))
    {
    }

    v34[0] = 0x74497265746F6F46;
    v34[1] = 0xEB000000005F6D65;
    sub_22838F490();
    v27 = sub_22838F450();
    v29 = v28;
    (*(v10 + 8))(v13, v9);
    MEMORY[0x22AAB5C80](v27, v29);

    a3[3] = sub_228390330();
    a3[4] = sub_2281BCDF8(&qword_27D8244F8, MEMORY[0x277D110D8]);
    __swift_allocate_boxed_opaque_existential_1(a3);
    return sub_228390320();
  }

LABEL_9:
  v18 = *MEMORY[0x277D767D8];
  if (sub_228392000() == a1 && v19 == a2)
  {
  }

  else
  {
    v21 = sub_228393460();

    if ((v21 & 1) == 0)
    {
      a3[3] = sub_22838FC00();
      a3[4] = sub_2281BCDF8(&qword_27D823958, MEMORY[0x277D10EC8]);
      __swift_allocate_boxed_opaque_existential_1(a3);
      return sub_22838FBF0();
    }
  }

  if (qword_280DDCF18 != -1)
  {
    swift_once();
  }

  sub_22838F0C0();
  sub_228391500();
  v30 = sub_22838FB60();
  v31 = *(v30 + 48);
  v32 = *(v30 + 52);
  swift_allocObject();
  v33 = sub_22838FB50();
  a3[3] = v30;
  result = sub_2281BCDF8(&qword_27D823960, MEMORY[0x277D10E18]);
  a3[4] = result;
  *a3 = v33;
  return result;
}

uint64_t sub_2281B56B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_22838F6C0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22838F680();
  v9 = sub_22838F5A0();
  v10 = *(v5 + 8);
  v10(v8, v4);
  sub_22838F680();
  v11 = sub_22838F5D0();
  v10(v8, v4);
  v12 = sub_22838F440();
  v13 = *(v12 - 8);
  if (v9)
  {
    (*(v13 + 8))(a1, v12);
    v14 = 1;
  }

  else if (v11)
  {
    (*(v13 + 8))(a1, v12);
    v14 = 2;
  }

  else
  {
    (*(v13 + 32))(a2, a1, v12);
    v14 = 0;
  }

  sub_2281BBFFC();
  return (*(*(v15 - 8) + 56))(a2, v14, 2, v15);
}

id sub_2281B589C@<X0>(id *a1@<X0>, void *a2@<X2>, char *a3@<X8>)
{
  v43 = a2;
  v48 = a3;
  v4 = sub_2283911B0();
  v45 = *(v4 - 8);
  v46 = v4;
  v5 = *(v45 + 64);
  MEMORY[0x28223BE20](v4);
  v44 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22838F080();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2281BBE94(0, &qword_280DDCDB0, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v43 - v14;
  v16 = sub_22838F440();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v43 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = *a1;
  v21 = [v47 startTimeComponent];
  sub_22838EFD0();

  sub_2281C6888(v11, v15);
  (*(v8 + 8))(v11, v7);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    v22 = v48;
    sub_2281BC7AC(v15, &qword_280DDCDB0, MEMORY[0x277CC9578], MEMORY[0x277D83D88], sub_2281BBE94);
    v23 = v44;
    sub_228391150();
    v24 = v47;
    v25 = sub_2283911A0();
    v26 = sub_2283925C0();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      *v27 = 138412290;
      *(v27 + 4) = v24;
      *v28 = v24;
      v29 = v24;
      _os_log_impl(&dword_22816B000, v25, v26, "Could not create schedule dosage row for timeInterval: %@", v27, 0xCu);
      sub_2281BC7AC(v28, &qword_27D823DA0, &qword_27D825620, 0x277D82BB8, sub_2281BC2E4);
      MEMORY[0x22AAB7B80](v28, -1, -1);
      MEMORY[0x22AAB7B80](v27, -1, -1);
    }

    (*(v45 + 8))(v23, v46);
    v30 = type metadata accessor for ScheduleDataSource.DoseItem(0);
    return (*(*(v30 - 8) + 56))(v22, 1, 1, v30);
  }

  else
  {
    v32 = *(v17 + 32);
    v32(v20, v15, v16);
    v33 = v43[4];
    __swift_project_boxed_opaque_existential_0(v43, v43[3]);
    v34 = v47;
    v35 = [v47 dose];
    v36 = *(v33 + 8);
    v37 = sub_228390A70();
    v39 = v38;

    v40 = v48;
    v32(v48, v20, v16);
    v41 = type metadata accessor for ScheduleDataSource.DoseItem(0);
    v42 = &v40[*(v41 + 20)];
    *v42 = v37;
    v42[1] = v39;
    *&v40[*(v41 + 24)] = v34;
    (*(*(v41 - 8) + 56))(v40, 0, 1, v41);
    return v34;
  }
}

BOOL sub_2281B5DF8(uint64_t a1, uint64_t a2)
{
  v20[1] = a2;
  v2 = sub_22838F6C0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_228391060();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = v20 - v13;
  sub_22838F680();
  v15 = sub_228391030();
  v16 = *(v3 + 8);
  v16(v6, v2);
  if (*(v15 + 16))
  {
    (*(v8 + 16))(v14, v15 + ((*(v8 + 80) + 32) & ~*(v8 + 80)), v7);

    v20[0] = sub_228391050();
    (*(v8 + 8))(v14, v7);
  }

  else
  {

    v20[0] = 0;
  }

  sub_22838F680();
  v17 = sub_228391030();
  v16(v6, v2);
  if (*(v17 + 16))
  {
    (*(v8 + 16))(v12, v17 + ((*(v8 + 80) + 32) & ~*(v8 + 80)), v7);

    v18 = sub_228391050();
    (*(v8 + 8))(v12, v7);
  }

  else
  {

    v18 = 0;
  }

  return v20[0] < v18;
}

uint64_t sub_2281B60A4()
{
  v1 = v0;
  v2 = sub_2283911B0();
  v109 = *(v2 - 8);
  v110 = v2;
  v3 = *(v109 + 64);
  v4 = MEMORY[0x28223BE20](v2);
  v107 = &v106 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v106 = &v106 - v7;
  MEMORY[0x28223BE20](v6);
  v108 = &v106 - v8;
  sub_2281BBEF8();
  v111 = v9;
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v112 = &v106 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x277D83D88];
  sub_2281BBE94(0, &qword_280DDCDB0, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v17 = &v106 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v106 - v18;
  sub_2281BBE94(0, &qword_27D824540, type metadata accessor for FutureDateRecencyState, v12);
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x28223BE20](v20 - 8);
  v24 = &v106 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v117 = &v106 - v25;
  v26 = sub_22838F440();
  v27 = *(v26 - 8);
  v118 = v26;
  v119 = v27;
  v28 = *(v27 + 64);
  v29 = MEMORY[0x28223BE20](v26);
  v113 = &v106 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v32 = &v106 - v31;
  v33 = type metadata accessor for FutureDateRecencyState(0);
  v34 = *(v33 - 8);
  v35 = *(v34 + 64);
  v36 = MEMORY[0x28223BE20](v33);
  v38 = &v106 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = MEMORY[0x28223BE20](v36);
  v114 = &v106 - v40;
  MEMORY[0x28223BE20](v39);
  v42 = &v106 - v41;
  v43 = [v1 startDateTime];
  sub_22838F3E0();

  v115 = v32;
  v116 = v42;
  sub_2281B56B0(v32, v42);
  v44 = [v1 endDateTime];
  if (v44)
  {
    v45 = v44;
    sub_22838F3E0();

    v46 = 0;
  }

  else
  {
    v46 = 1;
  }

  v47 = v118;
  v48 = v119;
  v49 = 1;
  (*(v119 + 56))(v19, v46, 1, v118);
  sub_2281BBF7C(v19, v17, &qword_280DDCDB0, MEMORY[0x277CC9578]);
  v50 = (*(v48 + 48))(v17, 1, v47);
  v51 = v117;
  if (v50 != 1)
  {
    v52 = v119;
    v53 = v115;
    (*(v119 + 32))(v115, v17, v47);
    v54 = v113;
    (*(v52 + 16))(v113, v53, v47);
    sub_2281B56B0(v54, v51);
    (*(v52 + 8))(v53, v47);
    v49 = 0;
  }

  sub_2281BC7AC(v19, &qword_280DDCDB0, MEMORY[0x277CC9578], MEMORY[0x277D83D88], sub_2281BBE94);
  (*(v34 + 56))(v51, v49, 1, v33);
  sub_2281BBF7C(v51, v24, &qword_27D824540, type metadata accessor for FutureDateRecencyState);
  if ((*(v34 + 48))(v24, 1, v33) != 1)
  {
    v58 = v114;
    sub_2281BC0AC(v24, v114, type metadata accessor for FutureDateRecencyState);
    v59 = v112;
    v60 = *(v111 + 48);
    v61 = v116;
    sub_2281BC27C(v116, v112, type metadata accessor for FutureDateRecencyState);
    sub_2281BC27C(v58, v59 + v60, type metadata accessor for FutureDateRecencyState);
    sub_2281BBFFC();
    v63 = v62;
    v64 = *(*(v62 - 8) + 48);
    v65 = v64(v59 + v60, 2, v62);
    v66 = v64(v59, 2, v63);
    if (v65)
    {
      v67 = v118;
      if (v65 == 1)
      {
        if (v66 == 1)
        {
          if (qword_280DDCF18 == -1)
          {
            goto LABEL_29;
          }

          goto LABEL_51;
        }

        v78 = v108;
        sub_228391150();
        v79 = sub_2283911A0();
        v80 = sub_2283925C0();
        if (os_log_type_enabled(v79, v80))
        {
          v81 = swift_slowAlloc();
          *v81 = 0;
          _os_log_impl(&dword_22816B000, v79, v80, "Attempted to display an endDate that is today. Impossible!", v81, 2u);
          MEMORY[0x22AAB7B80](v81, -1, -1);
        }

        (*(v109 + 8))(v78, v110);
        sub_2281BCD98(v58, type metadata accessor for FutureDateRecencyState);
        sub_2281BC7AC(v51, &qword_27D824540, type metadata accessor for FutureDateRecencyState, MEMORY[0x277D83D88], sub_2281BBE94);
        sub_2281BCD98(v61, type metadata accessor for FutureDateRecencyState);
        v82 = v59;
      }

      else
      {
        if (!v66)
        {
          v98 = v106;
          sub_228391150();
          v99 = sub_2283911A0();
          v100 = sub_2283925C0();
          if (os_log_type_enabled(v99, v100))
          {
            v101 = swift_slowAlloc();
            *v101 = 0;
            _os_log_impl(&dword_22816B000, v99, v100, "Attempted to display a start and end date with start date after endDate. Impossible!", v101, 2u);
            MEMORY[0x22AAB7B80](v101, -1, -1);
          }

          (*(v109 + 8))(v98, v110);
          sub_2281BCD98(v58, type metadata accessor for FutureDateRecencyState);
          sub_2281BC7AC(v51, &qword_27D824540, type metadata accessor for FutureDateRecencyState, MEMORY[0x277D83D88], sub_2281BBE94);
          sub_2281BCD98(v61, type metadata accessor for FutureDateRecencyState);
          (*(v119 + 8))(v59, v67);
          return 0;
        }

        if (v66 == 1)
        {
          if (qword_280DDCF18 == -1)
          {
LABEL_29:
            v72 = sub_22838F0C0();
            sub_2281BCD98(v58, type metadata accessor for FutureDateRecencyState);
            sub_2281BC7AC(v51, &qword_27D824540, type metadata accessor for FutureDateRecencyState, MEMORY[0x277D83D88], sub_2281BBE94);
            v77 = v61;
            goto LABEL_39;
          }

LABEL_51:
          swift_once();
          goto LABEL_29;
        }

        v102 = v107;
        sub_228391150();
        v103 = sub_2283911A0();
        v104 = sub_2283925C0();
        if (os_log_type_enabled(v103, v104))
        {
          v105 = swift_slowAlloc();
          *v105 = 0;
          _os_log_impl(&dword_22816B000, v103, v104, "Attempted to display a start and end date with equal state. Impossible!", v105, 2u);
          MEMORY[0x22AAB7B80](v105, -1, -1);
        }

        (*(v109 + 8))(v102, v110);
        sub_2281BCD98(v58, type metadata accessor for FutureDateRecencyState);
        sub_2281BC7AC(v51, &qword_27D824540, type metadata accessor for FutureDateRecencyState, MEMORY[0x277D83D88], sub_2281BBE94);
        v82 = v61;
      }

      sub_2281BCD98(v82, type metadata accessor for FutureDateRecencyState);
      return 0;
    }

    v73 = v118;
    v74 = *(v119 + 32);
    if (!v66)
    {
      v83 = v59;
      v84 = v115;
      v74(v115, v83, v118);
      v85 = v113;
      v74(v113, v83 + v60, v73);
      if (qword_280DDCF18 != -1)
      {
        swift_once();
      }

      sub_22838F0C0();
      sub_2281BC044();
      v86 = swift_allocObject();
      *(v86 + 16) = xmmword_228397F30;
      v87 = Date.formattedWithYearIfDifferent()();
      v88 = v84;
      v89 = MEMORY[0x277D837D0];
      *(v86 + 56) = MEMORY[0x277D837D0];
      v90 = sub_22818E210();
      *(v86 + 64) = v90;
      *(v86 + 32) = v87;
      v91 = Date.formattedWithYearIfDifferent()();
      *(v86 + 96) = v89;
      *(v86 + 104) = v90;
      *(v86 + 72) = v91;
      v72 = sub_228391FD0();

      v92 = v118;
      v93 = *(v119 + 8);
      v93(v85, v118);
      v93(v88, v92);
      v94 = v114;
      goto LABEL_38;
    }

    v75 = v59 + v60;
    if (v66 == 1)
    {
      v76 = v115;
      v74(v115, v75, v118);
      if (qword_280DDCF18 == -1)
      {
        goto LABEL_37;
      }
    }

    else
    {
      v76 = v115;
      v74(v115, v75, v118);
      if (qword_280DDCF18 == -1)
      {
LABEL_37:
        sub_22838F0C0();
        sub_2281BC044();
        v95 = swift_allocObject();
        *(v95 + 16) = xmmword_228397F40;
        v96 = Date.formattedWithYearIfDifferent()();
        *(v95 + 56) = MEMORY[0x277D837D0];
        *(v95 + 64) = sub_22818E210();
        *(v95 + 32) = v96;
        v72 = sub_228391FD0();

        (*(v119 + 8))(v76, v73);
        v94 = v58;
LABEL_38:
        sub_2281BCD98(v94, type metadata accessor for FutureDateRecencyState);
        sub_2281BC7AC(v51, &qword_27D824540, type metadata accessor for FutureDateRecencyState, MEMORY[0x277D83D88], sub_2281BBE94);
        v77 = v116;
        goto LABEL_39;
      }
    }

    swift_once();
    goto LABEL_37;
  }

  sub_2281BC7AC(v24, &qword_27D824540, type metadata accessor for FutureDateRecencyState, MEMORY[0x277D83D88], sub_2281BBE94);
  v55 = v116;
  sub_2281BC27C(v116, v38, type metadata accessor for FutureDateRecencyState);
  sub_2281BBFFC();
  v57 = (*(*(v56 - 8) + 48))(v38, 2, v56);
  if (!v57)
  {
    v68 = v119;
    v69 = v115;
    (*(v119 + 32))(v115, v38, v47);
    if (qword_280DDCF18 != -1)
    {
      swift_once();
    }

    sub_22838F0C0();
    sub_2281BC044();
    v70 = swift_allocObject();
    *(v70 + 16) = xmmword_228397F40;
    v71 = Date.formattedWithYearIfDifferent()();
    *(v70 + 56) = MEMORY[0x277D837D0];
    *(v70 + 64) = sub_22818E210();
    *(v70 + 32) = v71;
    v72 = sub_228391FD0();

    (*(v68 + 8))(v69, v47);
    goto LABEL_25;
  }

  if (v57 == 1)
  {
    if (qword_280DDCF18 == -1)
    {
      goto LABEL_24;
    }

    goto LABEL_49;
  }

  if (qword_280DDCF18 != -1)
  {
LABEL_49:
    swift_once();
  }

LABEL_24:
  v72 = sub_22838F0C0();
LABEL_25:
  sub_2281BC7AC(v117, &qword_27D824540, type metadata accessor for FutureDateRecencyState, MEMORY[0x277D83D88], sub_2281BBE94);
  v77 = v55;
LABEL_39:
  sub_2281BCD98(v77, type metadata accessor for FutureDateRecencyState);
  return v72;
}

uint64_t sub_2281B7338(void **a1)
{
  sub_2281BC114();
  v3 = *(v2 - 8);
  v4 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v4 = sub_228340810(v4);
  }

  v5 = v4[2];
  v7[0] = v4 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
  v7[1] = v5;
  result = sub_2281B7448(v7);
  *a1 = v4;
  return result;
}

id sub_2281B73E0(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v6 = v4();

  return v6;
}

uint64_t sub_2281B7448(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_228393410();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_2281BC114();
        v6 = sub_228392220();
        *(v6 + 16) = v5;
      }

      sub_2281BC114();
      v8[0] = v6 + ((*(*(v7 - 8) + 80) + 32) & ~*(*(v7 - 8) + 80));
      v8[1] = v5;
      sub_2281B7A70(v8, v9, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_2281B7574(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_2281B7574(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v71 = sub_22838F6C0();
  v8 = *(v71 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v71);
  v11 = &v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_228391060();
  v13 = *(v12 - 8);
  v66 = v12;
  v67 = v13;
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v58 = &v50 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v57 = &v50 - v17;
  sub_2281BC114();
  v62 = v18;
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v18);
  v61 = &v50 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v20);
  v24 = &v50 - v23;
  result = MEMORY[0x28223BE20](v22);
  v70 = &v50 - v27;
  v52 = a2;
  if (a3 != a2)
  {
    v28 = *a4;
    v29 = *(v26 + 72);
    v69 = (v8 + 8);
    v63 = v67 + 8;
    v64 = v67 + 16;
    v30 = v28 + v29 * (a3 - 1);
    v59 = -v29;
    v60 = v28;
    v31 = a1 - a3;
    v51 = v29;
    v32 = v28 + v29 * a3;
    v65 = v24;
LABEL_5:
    v55 = v30;
    v56 = a3;
    v53 = v32;
    v54 = v31;
    v33 = v30;
    while (1)
    {
      sub_2281BC27C(v32, v70, sub_2281BC114);
      sub_2281BC27C(v33, v24, sub_2281BC114);
      sub_22838F680();
      v34 = sub_228391030();
      v35 = *v69;
      (*v69)(v11, v71);
      if (*(v34 + 16))
      {
        v37 = v66;
        v36 = v67;
        v38 = v11;
        v39 = v57;
        (*(v67 + 16))(v57, v34 + ((*(v36 + 80) + 32) & ~*(v36 + 80)), v66);

        v68 = sub_228391050();
        v40 = v39;
        v11 = v38;
        v41 = v37;
        v24 = v65;
        (*(v36 + 8))(v40, v41);
      }

      else
      {

        v68 = 0;
      }

      sub_22838F680();
      v42 = sub_228391030();
      v35(v11, v71);
      if (*(v42 + 16))
      {
        v44 = v66;
        v43 = v67;
        v45 = v58;
        (*(v67 + 16))(v58, v42 + ((*(v43 + 80) + 32) & ~*(v43 + 80)), v66);

        v46 = sub_228391050();
        v47 = v45;
        v24 = v65;
        (*(v43 + 8))(v47, v44);
      }

      else
      {

        v46 = 0;
      }

      sub_2281BCD98(v24, sub_2281BC114);
      result = sub_2281BCD98(v70, sub_2281BC114);
      if (v68 >= v46)
      {
LABEL_4:
        a3 = v56 + 1;
        v30 = v55 + v51;
        v31 = v54 - 1;
        v32 = v53 + v51;
        if (v56 + 1 == v52)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v60)
      {
        break;
      }

      v48 = v61;
      sub_2281BC0AC(v32, v61, sub_2281BC114);
      swift_arrayInitWithTakeFrontToBack();
      result = sub_2281BC0AC(v48, v33, sub_2281BC114);
      v33 += v59;
      v32 += v59;
      if (__CFADD__(v31++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_2281B7A70(unint64_t *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = v4;
  v150 = a1;
  v180 = sub_22838F6C0();
  v8 = *(v180 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v180);
  v179 = &v146 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v176 = sub_228391060();
  v11 = *(v176 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v176);
  v167 = &v146 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v166 = &v146 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v156 = &v146 - v18;
  MEMORY[0x28223BE20](v17);
  v155 = &v146 - v19;
  sub_2281BC114();
  v171 = v20;
  v162 = *(v20 - 8);
  v21 = *(v162 + 64);
  v22 = MEMORY[0x28223BE20](v20);
  v154 = &v146 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v22);
  v170 = &v146 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v28 = &v146 - v27;
  v29 = MEMORY[0x28223BE20](v26);
  v177 = &v146 - v30;
  v31 = MEMORY[0x28223BE20](v29);
  v165 = &v146 - v32;
  v33 = MEMORY[0x28223BE20](v31);
  v35 = &v146 - v34;
  v36 = MEMORY[0x28223BE20](v33);
  result = MEMORY[0x28223BE20](v36);
  v163 = a3;
  v40 = a3[1];
  if (v40 < 1)
  {
    v42 = MEMORY[0x277D84F90];
LABEL_107:
    v8 = *v150;
    if (!*v150)
    {
      goto LABEL_147;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      goto LABEL_141;
    }

    goto LABEL_109;
  }

  v147 = &v146 - v38;
  v146 = v39;
  v41 = 0;
  v178 = (v8 + 8);
  v173 = v11 + 8;
  v174 = v11 + 16;
  v42 = MEMORY[0x277D84F90];
  v149 = a4;
  v175 = v11;
  v172 = v28;
  v159 = v35;
  while (1)
  {
    v43 = v41;
    v44 = v41 + 1;
    if (v41 + 1 >= v40)
    {
      v58 = v41 + 1;
    }

    else
    {
      v164 = v40;
      v45 = *v163;
      v46 = *(v162 + 72);
      v47 = *v163 + v46 * v44;
      v169 = sub_2281BC114;
      v48 = v147;
      sub_2281BC27C(v47, v147, sub_2281BC114);
      v168 = v45;
      v49 = v45 + v46 * v43;
      v50 = v43;
      v51 = v146;
      sub_2281BC27C(v49, v146, v169);
      LODWORD(v161) = sub_2281B5DF8(v48, v51);
      if (v5)
      {
        sub_2281BCD98(v51, sub_2281BC114);
        sub_2281BCD98(v147, sub_2281BC114);
      }

      sub_2281BCD98(v51, sub_2281BC114);
      result = sub_2281BCD98(v147, sub_2281BC114);
      v148 = v50;
      v52 = v50 + 2;
      v8 = v168 + v46 * (v50 + 2);
      v53 = v46;
      v168 = v46;
      v160 = v42;
      while (1)
      {
        v58 = v164;
        if (v164 == v52)
        {
          break;
        }

        sub_2281BC27C(v8, v35, sub_2281BC114);
        sub_2281BC27C(v47, v165, sub_2281BC114);
        v59 = v179;
        sub_22838F680();
        v60 = sub_228391030();
        v61 = *v178;
        (*v178)(v59, v180);
        if (*(v60 + 16))
        {
          v62 = v175;
          v63 = v176;
          v64 = v5;
          v65 = v155;
          (*(v175 + 16))(v155, v60 + ((*(v62 + 80) + 32) & ~*(v62 + 80)), v176);

          v169 = sub_228391050();
          v66 = v65;
          v5 = v64;
          (*(v62 + 8))(v66, v63);
        }

        else
        {

          v169 = 0;
        }

        v67 = v179;
        sub_22838F680();
        v68 = sub_228391030();
        v61(v67, v180);
        if (*(v68 + 16))
        {
          v55 = v175;
          v54 = v176;
          v56 = v156;
          (*(v175 + 16))(v156, v68 + ((*(v55 + 80) + 32) & ~*(v55 + 80)), v176);

          v57 = sub_228391050();
          (*(v55 + 8))(v56, v54);
        }

        else
        {

          v57 = 0;
        }

        v42 = v160;
        sub_2281BCD98(v165, sub_2281BC114);
        v35 = v159;
        result = sub_2281BCD98(v159, sub_2281BC114);
        v53 = v168;
        ++v52;
        v8 += v168;
        v47 += v168;
        v28 = v172;
        if (((v161 ^ (v169 >= v57)) & 1) == 0)
        {
          v58 = v52 - 1;
          break;
        }
      }

      a4 = v149;
      v43 = v148;
      if (v161)
      {
        if (v58 < v148)
        {
          goto LABEL_140;
        }

        if (v148 < v58)
        {
          v69 = v53 * (v58 - 1);
          v70 = v58 * v53;
          v164 = v58;
          v71 = v58;
          v72 = v148;
          v73 = v148 * v53;
          v151 = v5;
          do
          {
            if (v72 != --v71)
            {
              v74 = *v163;
              if (!*v163)
              {
                goto LABEL_144;
              }

              v8 = v74 + v73;
              sub_2281BC0AC(v74 + v73, v154, sub_2281BC114);
              if (v73 < v69 || v8 >= v74 + v70)
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v73 != v69)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              result = sub_2281BC0AC(v154, v74 + v69, sub_2281BC114);
              v5 = v151;
              v53 = v168;
            }

            ++v72;
            v69 -= v53;
            v70 -= v53;
            v73 += v53;
          }

          while (v72 < v71);
          a4 = v149;
          v35 = v159;
          v43 = v148;
          v58 = v164;
        }
      }
    }

    v75 = v163[1];
    if (v58 < v75)
    {
      if (__OFSUB__(v58, v43))
      {
        goto LABEL_137;
      }

      if (v58 - v43 < a4)
      {
        if (__OFADD__(v43, a4))
        {
          goto LABEL_138;
        }

        if (v43 + a4 >= v75)
        {
          v76 = v163[1];
        }

        else
        {
          v76 = v43 + a4;
        }

        if (v76 < v43)
        {
LABEL_139:
          __break(1u);
LABEL_140:
          __break(1u);
LABEL_141:
          result = sub_2283406C0(v42);
          v42 = result;
LABEL_109:
          v181 = v42;
          v142 = *(v42 + 2);
          if (v142 >= 2)
          {
            while (*v163)
            {
              v143 = *&v42[16 * v142];
              v144 = *&v42[16 * v142 + 24];
              sub_2281B8970(*v163 + *(v162 + 72) * v143, *v163 + *(v162 + 72) * *&v42[16 * v142 + 16], *v163 + *(v162 + 72) * v144, v8);
              if (v5)
              {
              }

              if (v144 < v143)
              {
                goto LABEL_134;
              }

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v42 = sub_2283406C0(v42);
              }

              if (v142 - 2 >= *(v42 + 2))
              {
                goto LABEL_135;
              }

              v145 = &v42[16 * v142];
              *v145 = v143;
              *(v145 + 1) = v144;
              v181 = v42;
              result = sub_228340634(v142 - 1);
              v42 = v181;
              v142 = *(v181 + 2);
              if (v142 <= 1)
              {
              }
            }

            goto LABEL_145;
          }
        }

        if (v58 != v76)
        {
          break;
        }
      }
    }

    v41 = v58;
    if (v58 < v43)
    {
      goto LABEL_136;
    }

LABEL_41:
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_228198978(0, *(v42 + 2) + 1, 1, v42);
      v42 = result;
    }

    v78 = *(v42 + 2);
    v77 = *(v42 + 3);
    v8 = v78 + 1;
    if (v78 >= v77 >> 1)
    {
      result = sub_228198978((v77 > 1), v78 + 1, 1, v42);
      v42 = result;
    }

    *(v42 + 2) = v8;
    v79 = &v42[16 * v78];
    *(v79 + 4) = v43;
    *(v79 + 5) = v41;
    v169 = *v150;
    if (!v169)
    {
      goto LABEL_146;
    }

    if (v78)
    {
      while (1)
      {
        v80 = v8 - 1;
        if (v8 >= 4)
        {
          break;
        }

        if (v8 == 3)
        {
          v81 = *(v42 + 4);
          v82 = *(v42 + 5);
          v91 = __OFSUB__(v82, v81);
          v83 = v82 - v81;
          v84 = v91;
LABEL_60:
          if (v84)
          {
            goto LABEL_125;
          }

          v97 = &v42[16 * v8];
          v99 = *v97;
          v98 = *(v97 + 1);
          v100 = __OFSUB__(v98, v99);
          v101 = v98 - v99;
          v102 = v100;
          if (v100)
          {
            goto LABEL_128;
          }

          v103 = &v42[16 * v80 + 32];
          v105 = *v103;
          v104 = *(v103 + 1);
          v91 = __OFSUB__(v104, v105);
          v106 = v104 - v105;
          if (v91)
          {
            goto LABEL_131;
          }

          if (__OFADD__(v101, v106))
          {
            goto LABEL_132;
          }

          if (v101 + v106 >= v83)
          {
            if (v83 < v106)
            {
              v80 = v8 - 2;
            }

            goto LABEL_81;
          }

          goto LABEL_74;
        }

        v107 = &v42[16 * v8];
        v109 = *v107;
        v108 = *(v107 + 1);
        v91 = __OFSUB__(v108, v109);
        v101 = v108 - v109;
        v102 = v91;
LABEL_74:
        if (v102)
        {
          goto LABEL_127;
        }

        v110 = &v42[16 * v80];
        v112 = *(v110 + 4);
        v111 = *(v110 + 5);
        v91 = __OFSUB__(v111, v112);
        v113 = v111 - v112;
        if (v91)
        {
          goto LABEL_130;
        }

        if (v113 < v101)
        {
          goto LABEL_3;
        }

LABEL_81:
        v118 = v80 - 1;
        if (v80 - 1 >= v8)
        {
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
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
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
          goto LABEL_139;
        }

        if (!*v163)
        {
          goto LABEL_143;
        }

        v8 = *&v42[16 * v118 + 32];
        v119 = *&v42[16 * v80 + 40];
        sub_2281B8970(*v163 + *(v162 + 72) * v8, *v163 + *(v162 + 72) * *&v42[16 * v80 + 32], *v163 + *(v162 + 72) * v119, v169);
        if (v5)
        {
        }

        if (v119 < v8)
        {
          goto LABEL_121;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v42 = sub_2283406C0(v42);
        }

        if (v118 >= *(v42 + 2))
        {
          goto LABEL_122;
        }

        v120 = &v42[16 * v118];
        *(v120 + 4) = v8;
        *(v120 + 5) = v119;
        v181 = v42;
        result = sub_228340634(v80);
        v42 = v181;
        v8 = *(v181 + 2);
        if (v8 <= 1)
        {
          goto LABEL_3;
        }
      }

      v85 = &v42[16 * v8 + 32];
      v86 = *(v85 - 64);
      v87 = *(v85 - 56);
      v91 = __OFSUB__(v87, v86);
      v88 = v87 - v86;
      if (v91)
      {
        goto LABEL_123;
      }

      v90 = *(v85 - 48);
      v89 = *(v85 - 40);
      v91 = __OFSUB__(v89, v90);
      v83 = v89 - v90;
      v84 = v91;
      if (v91)
      {
        goto LABEL_124;
      }

      v92 = &v42[16 * v8];
      v94 = *v92;
      v93 = *(v92 + 1);
      v91 = __OFSUB__(v93, v94);
      v95 = v93 - v94;
      if (v91)
      {
        goto LABEL_126;
      }

      v91 = __OFADD__(v83, v95);
      v96 = v83 + v95;
      if (v91)
      {
        goto LABEL_129;
      }

      if (v96 >= v88)
      {
        v114 = &v42[16 * v80 + 32];
        v116 = *v114;
        v115 = *(v114 + 1);
        v91 = __OFSUB__(v115, v116);
        v117 = v115 - v116;
        if (v91)
        {
          goto LABEL_133;
        }

        if (v83 < v117)
        {
          v80 = v8 - 2;
        }

        goto LABEL_81;
      }

      goto LABEL_60;
    }

LABEL_3:
    v40 = v163[1];
    a4 = v149;
    if (v41 >= v40)
    {
      goto LABEL_107;
    }
  }

  v160 = v42;
  v151 = v5;
  v121 = *v163;
  v122 = *(v162 + 72);
  v8 = *v163 + v122 * (v58 - 1);
  v168 = -v122;
  v148 = v43;
  v123 = v43 - v58;
  v169 = v121;
  v152 = v122;
  v124 = v121 + v58 * v122;
  v153 = v76;
LABEL_92:
  v164 = v58;
  v157 = v124;
  v158 = v123;
  v161 = v8;
  while (1)
  {
    sub_2281BC27C(v124, v177, sub_2281BC114);
    sub_2281BC27C(v8, v28, sub_2281BC114);
    v125 = v179;
    sub_22838F680();
    v126 = sub_228391030();
    v127 = *v178;
    (*v178)(v125, v180);
    if (*(v126 + 16))
    {
      v129 = v175;
      v128 = v176;
      v130 = v166;
      (*(v175 + 16))(v166, v126 + ((*(v129 + 80) + 32) & ~*(v129 + 80)), v176);

      v131 = sub_228391050();
      v132 = *(v129 + 8);
      v28 = v172;
      v132(v130, v128);
    }

    else
    {

      v131 = 0;
    }

    v133 = v179;
    sub_22838F680();
    v134 = sub_228391030();
    v127(v133, v180);
    if (*(v134 + 16))
    {
      v136 = v175;
      v135 = v176;
      v137 = v167;
      (*(v175 + 16))(v167, v134 + ((*(v136 + 80) + 32) & ~*(v136 + 80)), v176);

      v138 = sub_228391050();
      v139 = *(v136 + 8);
      v28 = v172;
      v139(v137, v135);
    }

    else
    {

      v138 = 0;
    }

    sub_2281BCD98(v28, sub_2281BC114);
    result = sub_2281BCD98(v177, sub_2281BC114);
    if (v131 >= v138)
    {
LABEL_91:
      v58 = v164 + 1;
      v8 = v161 + v152;
      v123 = v158 - 1;
      v124 = v157 + v152;
      v41 = v153;
      if (v164 + 1 != v153)
      {
        goto LABEL_92;
      }

      v5 = v151;
      v42 = v160;
      v35 = v159;
      v43 = v148;
      if (v153 < v148)
      {
        goto LABEL_136;
      }

      goto LABEL_41;
    }

    if (!v169)
    {
      break;
    }

    v140 = v170;
    sub_2281BC0AC(v124, v170, sub_2281BC114);
    swift_arrayInitWithTakeFrontToBack();
    sub_2281BC0AC(v140, v8, sub_2281BC114);
    v8 += v168;
    v124 += v168;
    if (__CFADD__(v123++, 1))
    {
      goto LABEL_91;
    }
  }

  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
LABEL_145:
  __break(1u);
LABEL_146:
  __break(1u);
LABEL_147:
  __break(1u);
  return result;
}

uint64_t sub_2281B8970(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v94 = sub_22838F6C0();
  v8 = *(v94 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v94);
  v11 = &v75 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_228391060();
  v13 = *(v12 - 8);
  v90 = v12;
  v91 = v13;
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v78 = &v75 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v77 = &v75 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v81 = &v75 - v20;
  MEMORY[0x28223BE20](v19);
  v80 = &v75 - v21;
  sub_2281BC114();
  v87 = v22;
  v23 = *(*(v22 - 8) + 64);
  v24 = MEMORY[0x28223BE20](v22);
  v83 = &v75 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v24);
  v88 = (&v75 - v27);
  v28 = MEMORY[0x28223BE20](v26);
  result = MEMORY[0x28223BE20](v28);
  v89 = &v75 - v31;
  v33 = *(v32 + 72);
  if (!v33)
  {
    __break(1u);
LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v33 == -1)
  {
    goto LABEL_72;
  }

  v34 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v33 == -1)
  {
    goto LABEL_73;
  }

  v35 = (a2 - a1) / v33;
  v97 = a1;
  v96 = a4;
  if (v35 >= v34 / v33)
  {
    v37 = v34 / v33 * v33;
    if (a4 < a2 || a2 + v37 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v54 = a4 + v37;
    if (v37 >= 1)
    {
      v92 = a4;
      v55 = -v33;
      v86 = (v8 + 8);
      v80 = (v91 + 8);
      v81 = (v91 + 16);
      v56 = a4 + v37;
      v57 = v83;
      v89 = -v33;
      do
      {
        v76 = v54;
        v58 = a2 + v55;
        v59 = v54;
        v93 = a2 + v55;
        v82 = a2;
        while (1)
        {
          if (a2 <= a1)
          {
            v97 = a2;
            v95 = v76;
            goto LABEL_70;
          }

          v61 = a3;
          v79 = v59;
          v84 = v56 + v55;
          sub_2281BC27C(v56 + v55, v88, sub_2281BC114);
          sub_2281BC27C(v58, v57, sub_2281BC114);
          sub_22838F680();
          v62 = sub_228391030();
          v63 = *v86;
          (*v86)(v11, v94);
          if (*(v62 + 16))
          {
            v64 = v90;
            v65 = v91;
            v66 = v77;
            (*(v91 + 16))(v77, v62 + ((*(v65 + 80) + 32) & ~*(v65 + 80)), v90);

            v85 = sub_228391050();
            v67 = *(v65 + 8);
            v57 = v83;
            v67(v66, v64);
          }

          else
          {

            v85 = 0;
          }

          sub_22838F680();
          v68 = sub_228391030();
          v63(v11, v94);
          if (*(v68 + 16))
          {
            v69 = v90;
            v70 = v91;
            v71 = v78;
            (*(v91 + 16))(v78, v68 + ((*(v70 + 80) + 32) & ~*(v70 + 80)), v90);

            v72 = sub_228391050();
            v73 = v71;
            v57 = v83;
            (*(v70 + 8))(v73, v69);
          }

          else
          {

            v72 = 0;
          }

          a3 = v61 + v89;
          sub_2281BCD98(v57, sub_2281BC114);
          sub_2281BCD98(v88, sub_2281BC114);
          if (v85 < v72)
          {
            break;
          }

          v74 = v84;
          v59 = v84;
          v58 = v93;
          if (v61 < v56 || a3 >= v56)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v61 != v56)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v56 = v59;
          v60 = v74 > v92;
          v55 = v89;
          a2 = v82;
          if (!v60)
          {
            v54 = v59;
            goto LABEL_69;
          }
        }

        a2 = v93;
        if (v61 < v82 || a3 >= v82)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (v61 != v82)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        v54 = v79;
        v55 = v89;
      }

      while (v56 > v92);
    }

LABEL_69:
    v97 = a2;
    v95 = v54;
  }

  else
  {
    v86 = v30;
    v36 = v35 * v33;
    if (a4 < a1 || a1 + v36 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v83 = (a4 + v36);
    v95 = a4 + v36;
    v38 = v36 < 1 || a2 >= a3;
    v39 = v86;
    if (!v38)
    {
      v88 = (v8 + 8);
      v84 = v91 + 8;
      v85 = v91 + 16;
      v82 = a3;
      do
      {
        v93 = a2;
        sub_2281BC27C(a2, v89, sub_2281BC114);
        v92 = a4;
        sub_2281BC27C(a4, v39, sub_2281BC114);
        sub_22838F680();
        v40 = sub_228391030();
        v41 = *v88;
        (*v88)(v11, v94);
        if (*(v40 + 16))
        {
          v43 = v90;
          v42 = v91;
          v44 = v80;
          (*(v91 + 16))(v80, v40 + ((*(v42 + 80) + 32) & ~*(v42 + 80)), v90);

          v45 = sub_228391050();
          v46 = *(v42 + 8);
          v39 = v86;
          v46(v44, v43);
        }

        else
        {

          v45 = 0;
        }

        sub_22838F680();
        v47 = sub_228391030();
        v41(v11, v94);
        if (*(v47 + 16))
        {
          v49 = v90;
          v48 = v91;
          v50 = v81;
          (*(v91 + 16))(v81, v47 + ((*(v48 + 80) + 32) & ~*(v48 + 80)), v90);

          v51 = sub_228391050();
          v52 = *(v48 + 8);
          v39 = v86;
          v52(v50, v49);
        }

        else
        {

          v51 = 0;
        }

        sub_2281BCD98(v39, sub_2281BC114);
        sub_2281BCD98(v89, sub_2281BC114);
        if (v45 >= v51)
        {
          a2 = v93;
          a4 = v92 + v33;
          if (a1 < v92 || a1 >= a4)
          {
            swift_arrayInitWithTakeFrontToBack();
            v53 = v82;
          }

          else
          {
            v53 = v82;
            if (a1 != v92)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v96 = a4;
        }

        else
        {
          a4 = v92;
          a2 = v93 + v33;
          if (a1 < v93 || a1 >= a2)
          {
            swift_arrayInitWithTakeFrontToBack();
            v53 = v82;
          }

          else
          {
            v53 = v82;
            if (a1 != v93)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }
        }

        a1 += v33;
        v97 = a1;
      }

      while (a4 < v83 && a2 < v53);
    }
  }

LABEL_70:
  sub_2283333C0(&v97, &v96, &v95);
  return 1;
}

uint64_t sub_2281B92F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_22838F440();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for FutureDateRecencyState(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2281BBEF8();
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v17 = &v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(v15 + 56);
  sub_2281BC27C(a1, v17, type metadata accessor for FutureDateRecencyState);
  sub_2281BC27C(a2, &v17[v18], type metadata accessor for FutureDateRecencyState);
  sub_2281BBFFC();
  v20 = v19;
  v21 = *(*(v19 - 8) + 48);
  v22 = v21(v17, 2, v19);
  if (!v22)
  {
    sub_2281BC27C(v17, v12, type metadata accessor for FutureDateRecencyState);
    if (!v21(&v17[v18], 2, v20))
    {
      (*(v5 + 32))(v8, &v17[v18], v4);
      v26 = sub_22838F3D0();
      v28 = *(v5 + 8);
      v28(v8, v4);
      v28(v12, v4);
      v24 = type metadata accessor for FutureDateRecencyState;
      goto LABEL_10;
    }

    (*(v5 + 8))(v12, v4);
    goto LABEL_9;
  }

  if (v22 == 1)
  {
    v23 = v21(&v17[v18], 2, v20);
    v24 = type metadata accessor for FutureDateRecencyState;
    if (v23 == 1)
    {
      goto LABEL_8;
    }

LABEL_9:
    v26 = 0;
    v24 = sub_2281BBEF8;
    goto LABEL_10;
  }

  v25 = v21(&v17[v18], 2, v20);
  v24 = type metadata accessor for FutureDateRecencyState;
  if (v25 != 2)
  {
    goto LABEL_9;
  }

LABEL_8:
  v26 = 1;
LABEL_10:
  sub_2281BCD98(v17, v24);
  return v26 & 1;
}

uint64_t sub_2281B9614(uint64_t a1)
{
  v2 = sub_228391130();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ScheduleDataSource.DoseItem(0);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v51 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v52 = &v40 - v12;
  v13 = MEMORY[0x277D84F98];
  v53 = MEMORY[0x277D84F98];
  v14 = *(a1 + 16);
  if (!v14)
  {
    return v13;
  }

  v15 = *(v11 + 80);
  v16 = *(v11 + 72);
  v50 = (v15 + 32) & ~v15;
  v17 = a1 + v50;
  v44 = v3 + 32;
  v45 = v15;
  v42 = v3;
  v43 = (v3 + 8);
  v41 = xmmword_228397F40;
  v18 = v2;
  v47 = v6;
  v48 = v2;
  v49 = v16;
  v46 = v7;
  while (1)
  {
    v20 = v52;
    sub_2281BC27C(v17, v52, type metadata accessor for ScheduleDataSource.DoseItem);
    sub_2282D9ECC([*(v20 + *(v7 + 24)) daysOfWeek], v6);
    v22 = sub_2281A779C(v6);
    v23 = v13[2];
    v24 = (v21 & 1) == 0;
    v25 = v23 + v24;
    if (__OFADD__(v23, v24))
    {
      break;
    }

    v26 = v21;
    if (v13[3] < v25)
    {
      sub_2282992D0(v25, 1);
      v13 = v53;
      v27 = sub_2281A779C(v6);
      if ((v26 & 1) != (v28 & 1))
      {
        goto LABEL_19;
      }

      v22 = v27;
    }

    if (v26)
    {
      (*v43)(v6, v18);
      v29 = v13[7];
      sub_2281BC0AC(v52, v51, type metadata accessor for ScheduleDataSource.DoseItem);
      v30 = *(v29 + 8 * v22);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v29 + 8 * v22) = v30;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v30 = sub_228198AD4(0, v30[2] + 1, 1, v30);
        *(v29 + 8 * v22) = v30;
      }

      v33 = v30[2];
      v32 = v30[3];
      if (v33 >= v32 >> 1)
      {
        v30 = sub_228198AD4(v32 > 1, v33 + 1, 1, v30);
        *(v29 + 8 * v22) = v30;
      }

      v30[2] = v33 + 1;
      v19 = v49;
      sub_2281BC0AC(v51, v30 + v50 + v33 * v49, type metadata accessor for ScheduleDataSource.DoseItem);
      v6 = v47;
      v18 = v48;
      v7 = v46;
    }

    else
    {
      sub_2281BBE94(0, &qword_27D823E80, type metadata accessor for ScheduleDataSource.DoseItem, MEMORY[0x277D84560]);
      v34 = v50;
      v35 = swift_allocObject();
      *(v35 + 16) = v41;
      sub_2281BC0AC(v52, v35 + v34, type metadata accessor for ScheduleDataSource.DoseItem);
      v13[(v22 >> 6) + 8] |= 1 << v22;
      (*(v42 + 32))(v13[6] + *(v42 + 72) * v22, v6, v18);
      *(v13[7] + 8 * v22) = v35;
      v36 = v13[2];
      v37 = __OFADD__(v36, 1);
      v38 = v36 + 1;
      if (v37)
      {
        goto LABEL_18;
      }

      v13[2] = v38;
      v19 = v49;
    }

    v17 += v19;
    if (!--v14)
    {
      return v13;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  result = sub_2283934A0();
  __break(1u);
  return result;
}

uint64_t sub_2281B9A5C(unint64_t a1, unsigned __int8 *a2)
{
  v3 = v2;
  v93 = sub_2283913A0();
  v6 = *(v93 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v93);
  v83 = &v78 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v89 = &v78 - v10;
  v88 = sub_22838F6C0();
  v80 = *(v88 - 8);
  v11 = *(v80 + 64);
  MEMORY[0x28223BE20](v88);
  v87 = &v78 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2281BC114();
  v86 = v13;
  v94 = *(v13 - 8);
  v14 = *(v94 + 64);
  MEMORY[0x28223BE20](v13);
  v85 = &v78 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = type metadata accessor for ScheduleIntervalItem();
  v90 = *(v92 - 8);
  v16 = *(v90 + 64);
  MEMORY[0x28223BE20](v92);
  v18 = (&v78 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v91 = *a2;
  v19 = sub_2281C6154();
  v20 = v19;
  v95[0] = MEMORY[0x277D84F90];
  if (v19 >> 62)
  {
    goto LABEL_17;
  }

  for (i = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_2283930D0())
  {
    v79 = a1;
    v81 = v6;
    v82 = v3;
    a1 = 0;
    v3 = (v20 & 0xC000000000000001);
    v6 = v20 & 0xFFFFFFFFFFFFFF8;
    v22 = &off_2785F4000;
    v84 = v20 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v3)
      {
        v23 = MEMORY[0x22AAB6D80](a1, v20);
      }

      else
      {
        if (a1 >= *(v6 + 16))
        {
          goto LABEL_16;
        }

        v23 = *(v20 + 8 * a1 + 32);
      }

      v24 = v23;
      v25 = (a1 + 1);
      if (__OFADD__(a1, 1))
      {
        break;
      }

      v26 = [v23 v22[235]];
      if (v26 && (v27 = v26, [v26 floatValue], v29 = v28, v27, v29 > 0.0))
      {
        sub_228393210();
        v30 = v3;
        v31 = i;
        v32 = v18;
        v33 = v20;
        v34 = v22;
        v35 = v95[0][2];
        sub_228393250();
        v22 = v34;
        v20 = v33;
        v18 = v32;
        i = v31;
        v3 = v30;
        v6 = v84;
        sub_228393260();
        sub_228393220();
      }

      else
      {
      }

      ++a1;
      if (v25 == i)
      {
        v36 = v95[0];
        v3 = v82;
        v6 = v81;
        a1 = v79;
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    ;
  }

  v36 = MEMORY[0x277D84F90];
LABEL_19:

  MEMORY[0x28223BE20](v37);
  *(&v78 - 2) = v3;
  *(&v78 - 1) = a1;
  v38 = sub_2282A2C18(sub_2281BC1D8, (&v78 - 4), v36);

  v95[0] = v38;
  swift_getKeyPath();
  sub_2281BBE94(0, &qword_27D824560, type metadata accessor for ScheduleDataSource.DoseItem, MEMORY[0x277D83940]);
  sub_2281BC1F4();
  v39 = sub_228392150();

  v41 = sub_2281B9614(v40);

  if ([v3 scheduleType] != 5)
  {

    sub_2281BBE94(0, &qword_27D824570, type metadata accessor for ScheduleIntervalItem, MEMORY[0x277D84560]);
    v47 = *(v90 + 72);
    v48 = (*(v90 + 80) + 32) & ~*(v90 + 80);
    v46 = swift_allocObject();
    *(v46 + 1) = xmmword_228397F40;
    v49 = v46 + v48;
    v50 = [v3 scheduleType];
    v51 = sub_2281DB0CC();
    v53 = v52;
    v54 = v83;
    sub_228391390();
    v55 = objc_opt_self();
    v56 = &selRef_tertiarySystemGroupedBackgroundColor;
    if (!v91)
    {
      v56 = &selRef_tertiarySystemBackgroundColor;
    }

    v57 = [v55 *v56];
    sub_228391370();
    *v49 = 0xD000000000000014;
    *(v49 + 1) = 0x80000002283A93F0;
    *(v49 + 2) = v51;
    *(v49 + 3) = v53;
    *(v49 + 4) = v50;
    *(v49 + 5) = v39;
    (*(v6 + 32))(&v49[*(v92 + 32)], v54, v93);
    goto LABEL_42;
  }

  v42 = *(v41 + 16);
  v43 = MEMORY[0x277D84F90];
  if (!v42)
  {
    v44 = MEMORY[0x277D84F90];
    goto LABEL_27;
  }

  v44 = sub_2281D77D4(*(v41 + 16), 0);
  v45 = sub_2282665F8(v95, v44 + ((*(v94 + 80) + 32) & ~*(v94 + 80)), v42, v41);
  v46 = v95[2];
  v83 = v95[3];
  v84 = v45;
  v82 = v95[4];

  sub_228176F04();
  if (v84 == v42)
  {
    v43 = MEMORY[0x277D84F90];
LABEL_27:
    v95[0] = v44;
    sub_2281B7338(v95);

    v58 = v95[0];
    v59 = v95[0][2];
    if (v59)
    {
      v95[0] = v43;
      sub_2281C9F24(0, v59, 0);
      v60 = 0;
      v46 = v95[0];
      v82 = (v58 + ((*(v94 + 80) + 32) & ~*(v94 + 80)));
      v81 = 0x80000002283A93F0;
      v80 += 8;
      v79 = (v6 + 32);
      v83 = v59;
      v84 = v58;
      while (v60 < v58[2])
      {
        v61 = v85;
        sub_2281BC27C(v82 + *(v94 + 72) * v60, v85, sub_2281BC114);
        v62 = *(v61 + *(v86 + 48));
        v63 = v3;
        v64 = [v3 scheduleType];
        v65 = v87;
        sub_22838F680();
        v66 = sub_228391100();
        v68 = v67;
        (*v80)(v65, v88);
        if (v68)
        {
          v69 = v66;
        }

        else
        {
          v69 = 0;
        }

        if (!v68)
        {
          v68 = 0xE000000000000000;
        }

        v70 = v89;
        sub_228391390();
        v71 = objc_opt_self();
        v72 = &selRef_tertiarySystemGroupedBackgroundColor;
        if (!v91)
        {
          v72 = &selRef_tertiarySystemBackgroundColor;
        }

        v73 = [v71 *v72];
        sub_228391370();
        *v18 = 0xD000000000000014;
        v18[1] = v81;
        v18[2] = v69;
        v18[3] = v68;
        v18[4] = v64;
        v18[5] = v62;
        (*v79)(v18 + *(v92 + 32), v70, v93);

        sub_2281BCD98(v61, sub_2281BC114);
        v95[0] = v46;
        v75 = v46[2];
        v74 = v46[3];
        if (v75 >= v74 >> 1)
        {
          sub_2281C9F24(v74 > 1, v75 + 1, 1);
          v46 = v95[0];
        }

        ++v60;
        v46[2] = v75 + 1;
        sub_2281BC0AC(v18, v46 + ((*(v90 + 80) + 32) & ~*(v90 + 80)) + *(v90 + 72) * v75, type metadata accessor for ScheduleIntervalItem);
        v58 = v84;
        v3 = v63;
        if (v83 == v60)
        {

          goto LABEL_42;
        }
      }

      __break(1u);
      goto LABEL_44;
    }

    v46 = MEMORY[0x277D84F90];
LABEL_42:
    v76 = sub_228194E64(v46);

    return v76;
  }

LABEL_44:
  __break(1u);

  __break(1u);
  return result;
}