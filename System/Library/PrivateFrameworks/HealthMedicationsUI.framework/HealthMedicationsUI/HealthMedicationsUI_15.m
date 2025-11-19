uint64_t sub_2282E9FF0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t (*a5)(void **, void **))
{
  if (a3 != a2)
  {
    v6 = a3;
    v7 = *a4;
    v8 = (*a4 + 8 * a3 - 8);
    v9 = result - a3;
LABEL_5:
    v10 = *(v7 + 8 * v6);
    v20 = v9;
    v27 = v8;
    while (*(v10 + 16))
    {
      v11 = *v8;
      v12 = *(v10 + 40);
      v13 = *(v10 + 48);
      v24 = *(v10 + 32);
      v25 = v12;
      v26 = v13;
      result = sub_22819A598(v24, v12, v13);
      if (v26 == 255)
      {
        break;
      }

      if (!*(v11 + 16))
      {
        goto LABEL_16;
      }

      v14 = *(v11 + 40);
      v15 = *(v11 + 48);
      v21 = *(v11 + 32);
      v22 = v14;
      v23 = v15;
      result = sub_22819A598(v21, v14, v15);
      if (v23 == 255)
      {
        goto LABEL_16;
      }

      v16 = a5(&v24, &v21);
      sub_2282E32E8(v21, v22, v23);
      sub_2282E32E8(v24, v25, v26);

      if (v16)
      {
        if (!v7)
        {
          goto LABEL_17;
        }

        v17 = *v8;
        v10 = v8[1];
        *v8 = v10;
        v8[1] = v17;
        --v8;
        if (!__CFADD__(v9++, 1))
        {
          continue;
        }
      }

      ++v6;
      v8 = v27 + 1;
      v9 = v20 - 1;
      if (v6 == a2)
      {
        return result;
      }

      goto LABEL_5;
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
  }

  return result;
}

uint64_t sub_2282EA154(uint64_t *a1, uint64_t (*a2)(void **, void **))
{
  v4 = a1[1];
  result = sub_228393410();
  if (result < v4)
  {
    if (v4 >= -1)
    {
      v6 = result;
      if (v4 <= 1)
      {
        v7 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_228222D8C(0, &qword_27D823EC0, &type metadata for LoggableDose, MEMORY[0x277D83940]);
        v7 = sub_228392220();
        *(v7 + 16) = v4 / 2;
      }

      v9[0] = v7 + 32;
      v9[1] = v4 / 2;
      v8 = v7;
      sub_2282E9914(v9, v10, a1, v6, a2);
      *(v8 + 16) = 0;
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
    return sub_2282E9FF0(0, v4, 1, a1, a2);
  }

  return result;
}

uint64_t sub_2282EA294(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(void *, uint64_t, uint64_t))
{
  v10 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v10 = a4(v10);
  }

  v11 = *(v10 + 16);
  v13[0] = v10 + 32;
  v13[1] = v11;
  result = a5(v13, a2, a3);
  *a1 = v10;
  return result;
}

uint64_t sub_2282EA330(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v23 = result;
  v8 = 0;
  v9 = 0;
  v10 = a3 + 56;
  v11 = 1 << *(a3 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(a3 + 56);
  v14 = (v11 + 63) >> 6;
  while (v13)
  {
    v15 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
LABEL_11:
    v18 = v15 | (v9 << 6);
    v19 = (*(a3 + 48) + 32 * v18);
    result = *v19;
    if (*v19 != a4 || v19[1] != a5)
    {
      result = sub_228393460();
      if ((result & 1) == 0)
      {
        continue;
      }
    }

    *(v23 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
    if (__OFADD__(v8++, 1))
    {
      __break(1u);
LABEL_19:

      return sub_22827A9E4(v23, a2, v8, a3);
    }
  }

  v16 = v9;
  while (1)
  {
    v9 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v9 >= v14)
    {
      goto LABEL_19;
    }

    v17 = *(v10 + 8 * v9);
    ++v16;
    if (v17)
    {
      v15 = __clz(__rbit64(v17));
      v13 = (v17 - 1) & v17;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2282EA484(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v35 = *MEMORY[0x277D85DE8];
  v11 = *(a1 + 32);
  v12 = v11 & 0x3F;
  v13 = ((1 << v11) + 63) >> 6;
  v14 = 8 * v13;

  if (v12 > 0xD)
  {
LABEL_24:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v29 = swift_slowAlloc();

      v26 = sub_2282E7BA4(v29, v13, a1, a2, a3);

      MEMORY[0x22AAB7B80](v29, -1, -1);

      goto LABEL_22;
    }
  }

  v31 = v13;
  v32 = a5;
  v33 = v6;
  v30 = &v30;
  MEMORY[0x28223BE20](v15);
  v16 = &v30 - ((v14 + 15) & 0x3FFFFFFFFFFFFFF0);
  bzero(v16, v14);
  v17 = 0;
  v6 = 0;
  a5 = a1 + 56;
  v18 = 1 << *(a1 + 32);
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v13 = v19 & *(a1 + 56);
  v20 = (v18 + 63) >> 6;
  while (2)
  {
    v34 = v17;
    do
    {
      if (!v13)
      {
        v22 = v6;
        while (1)
        {
          v6 = v22 + 1;
          if (__OFADD__(v22, 1))
          {
            break;
          }

          if (v6 >= v20)
          {
            goto LABEL_21;
          }

          v23 = *(a5 + 8 * v6);
          ++v22;
          if (v23)
          {
            v21 = __clz(__rbit64(v23));
            v13 = (v23 - 1) & v23;
            goto LABEL_13;
          }
        }

        __break(1u);
        goto LABEL_24;
      }

      v21 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_13:
      v14 = v21 | (v6 << 6);
      v24 = (*(a1 + 48) + 32 * v14);
      v25 = *v24 == a2 && v24[1] == a3;
    }

    while (!v25 && (sub_228393460() & 1) == 0);
    *&v16[(v14 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v14;
    v17 = v34 + 1;
    if (!__OFADD__(v34, 1))
    {
      continue;
    }

    break;
  }

  __break(1u);
LABEL_21:
  v26 = sub_22827A9E4(v16, v31, v34, a1);

LABEL_22:
  v27 = *MEMORY[0x277D85DE8];
  return v26;
}

void sub_2282EA768()
{
  sub_2282EA894(319, &qword_27D823EA0, MEMORY[0x277D11660], MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    sub_2282EA894(319, &qword_27D8275B8, MEMORY[0x277D11670], MEMORY[0x277D83940]);
    if (v1 <= 0x3F)
    {
      sub_2282EA894(319, &qword_27D827550, MEMORY[0x277D11630], MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_2282EA894(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_2282EA8F8(uint64_t a1, uint64_t a2)
{
  sub_2282EA894(0, &qword_27D827550, MEMORY[0x277D11630], MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2282EA98C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_2282EA894(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_2282EA9FC()
{
  result = qword_280DDCDB8;
  if (!qword_280DDCDB8)
  {
    sub_22838F440();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DDCDB8);
  }

  return result;
}

uint64_t sub_2282EAA60()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  v3 = *(v0 + 56);

  return swift_deallocClassInstance();
}

id sub_2282EAB00()
{
  v1 = v0;
  v50 = *MEMORY[0x277D85DE8];
  sub_2282EAF18();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_228398270;
  *(inited + 32) = xmmword_228397F40;
  *(inited + 48) = 3;
  v3 = v0[7];
  if (sub_228390730())
  {
    result = [objc_opt_self() sharedBehavior];
    if (!result)
    {
      __break(1u);
      return result;
    }

    v5 = result;
    v6 = [result isAppleInternalInstall];

    if (v6)
    {
      inited = sub_2281997BC(1, 4, 1, inited);
      *(inited + 16) = 4;
      *(inited + 56) = 4;
    }
  }

  v8 = v1[5];
  v7 = v1[6];
  v9 = type metadata accessor for InteractionFactorsDataSource();
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  swift_allocObject();

  v13 = sub_2282541B0(v12, v7);
  v14 = MEMORY[0x277D84F90];
  v15 = sub_228198C84(0, 1, 1, MEMORY[0x277D84F90]);
  v17 = v15[2];
  v16 = v15[3];
  if (v17 >= v16 >> 1)
  {
    v15 = sub_228198C84((v16 > 1), v17 + 1, 1, v15);
  }

  v18 = sub_2282EAF70(&qword_27D8275C0, type metadata accessor for InteractionFactorsDataSource);
  v15[2] = v17 + 1;
  v19 = &v15[2 * v17];
  v19[4] = v13;
  v19[5] = v18;
  v20 = type metadata accessor for InteractionSeperatorLineDataSource();
  v21 = *(v20 + 48);
  v22 = *(v20 + 52);
  swift_allocObject();
  v23 = InteractionSeperatorLineDataSource.init()();
  v25 = v15[2];
  v24 = v15[3];
  if (v25 >= v24 >> 1)
  {
    v15 = sub_228198C84((v24 > 1), v25 + 1, 1, v15);
  }

  v26 = sub_2282EAF70(&qword_27D8275C8, type metadata accessor for InteractionSeperatorLineDataSource);
  v15[2] = v25 + 1;
  v27 = &v15[2 * v25];
  v27[4] = v23;
  v27[5] = v26;
  v49 = v15;
  v28 = *(inited + 16);
  if (v28)
  {
    v48 = v14;
    sub_228393240();
    v46 = v1[3];
    v47 = v1[2];
    v29 = v1[4];
    v30 = type metadata accessor for InteractionSeverityDataSource();
    v31 = 32;
    do
    {
      v32 = inited;
      v33 = *(inited + v31);
      v34 = *(v30 + 48);
      v35 = *(v30 + 52);
      v36 = swift_allocObject();
      *(v36 + qword_27D826578) = 0;
      *(v36 + qword_27D826580) = 0;
      v37 = v36 + qword_27D826588;
      *v37 = 0u;
      *(v37 + 16) = 0u;
      *(v37 + 32) = 0;
      *(v36 + qword_27D826590) = MEMORY[0x277D84FA0];
      *(v36 + qword_27D826598) = v33;
      *(v36 + qword_27D826558) = v47;
      *(v36 + qword_27D826560) = v46;
      *(v36 + qword_27D826568) = v29;
      *(v36 + qword_27D826570) = v8;
      *(v36 + qword_27D8265A8) = v7;

      v38 = v47;

      v39 = v29;
      sub_22838F920();

      sub_228276A44();

      sub_228393210();
      v40 = v7;
      v41 = v8;
      v42 = *(v48 + 16);
      sub_228393250();
      v8 = v41;
      v7 = v40;
      inited = v32;
      sub_228393260();
      sub_228393220();
      v31 += 8;
      --v28;
    }

    while (v28);

    v43 = v48;
  }

  else
  {

    v43 = MEMORY[0x277D84F90];
  }

  v44 = sub_2281967EC(v43);

  sub_2281D5EA4(v44);
  result = v49;
  v45 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2282EAF18()
{
  if (!qword_27D823ED0)
  {
    type metadata accessor for HKDrugInteractionSeverityLevel(255);
    v0 = sub_228393430();
    if (!v1)
    {
      atomic_store(v0, &qword_27D823ED0);
    }
  }
}

uint64_t sub_2282EAF70(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_2282EAFF8()
{
  v1 = OBJC_IVAR____TtC19HealthMedicationsUI27MedmojiPickerViewController____lazy_storage___medicationView;
  v2 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI27MedmojiPickerViewController____lazy_storage___medicationView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI27MedmojiPickerViewController____lazy_storage___medicationView);
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

id sub_2282EB090()
{
  v1 = OBJC_IVAR____TtC19HealthMedicationsUI27MedmojiPickerViewController____lazy_storage___medmojiCategorySelectionView;
  v2 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI27MedmojiPickerViewController____lazy_storage___medmojiCategorySelectionView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI27MedmojiPickerViewController____lazy_storage___medmojiCategorySelectionView);
  }

  else
  {
    v4 = sub_2282EE8C0(*(v0 + OBJC_IVAR____TtC19HealthMedicationsUI27MedmojiPickerViewController_shapeButton), *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI27MedmojiPickerViewController_colorButton));
    [v4 setTranslatesAutoresizingMaskIntoConstraints_];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_2282EB11C()
{
  v1 = OBJC_IVAR____TtC19HealthMedicationsUI27MedmojiPickerViewController____lazy_storage___shapeSelectionViewController;
  v2 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI27MedmojiPickerViewController____lazy_storage___shapeSelectionViewController);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI27MedmojiPickerViewController____lazy_storage___shapeSelectionViewController);
  }

  else
  {
    v4 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI27MedmojiPickerViewController_shapePublisher);
    v5 = objc_allocWithZone(type metadata accessor for ShapeSelectionViewController());
    *&v5[qword_27D825AF8] = v4;
    sub_2283901F0();
    sub_2282EFB98(0, &qword_27D827750, sub_228212470, MEMORY[0x277D84560]);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_228397F40;
    v18 = 1;
    v7 = type metadata accessor for VisualizationShapeDataSource();
    v8 = *(v7 + 48);
    v9 = *(v7 + 52);
    swift_allocObject();
    v10 = swift_retain_n();
    v11 = v0;
    v12 = sub_2281F0A88(v10, &v18);
    v13 = MEMORY[0x277D10F80];
    *(v6 + 32) = v12;
    *(v6 + 40) = v13;
    sub_228390220();
    v14 = sub_228390480();

    v15 = *(v11 + v1);
    *(v11 + v1) = v14;
    v3 = v14;

    v2 = 0;
  }

  v16 = v2;
  return v3;
}

id sub_2282EB280()
{
  sub_2282EFB98(0, &qword_280DDBD20, MEMORY[0x277D116C8], MEMORY[0x277D83D88]);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v16 - v3;
  v5 = OBJC_IVAR____TtC19HealthMedicationsUI27MedmojiPickerViewController____lazy_storage___colorSelectionViewController;
  v6 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI27MedmojiPickerViewController____lazy_storage___colorSelectionViewController);
  if (v6)
  {
    v7 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI27MedmojiPickerViewController____lazy_storage___colorSelectionViewController);
  }

  else
  {
    v8 = OBJC_IVAR____TtC19HealthMedicationsUI27MedmojiPickerViewController_config;
    swift_beginAccess();
    sub_2282EE728(v0 + v8, v4, &qword_280DDBD20, MEMORY[0x277D116C8]);
    v9 = objc_allocWithZone(type metadata accessor for ColorSelectionViewController());
    v10 = v4;
    v11 = v0;
    v12 = sub_22820647C(v10);
    v13 = *(v0 + v5);
    *(v11 + v5) = v12;
    v7 = v12;

    v6 = 0;
  }

  v14 = v6;
  return v7;
}

id MedmojiPickerViewController.init(config:)(uint64_t a1)
{
  v88 = a1;
  v2 = MEMORY[0x277D83D88];
  sub_2282EFB98(0, &qword_280DDBD20, MEMORY[0x277D116C8], MEMORY[0x277D83D88]);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v87 = &v63 - v5;
  sub_2282EFB98(0, &qword_27D8238A8, MEMORY[0x277D11640], v2);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v89 = &v63 - v8;
  sub_2282EFB98(0, &unk_280DDCDC8, MEMORY[0x277CC8C40], v2);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v84 = &v63 - v11;
  v12 = sub_22838F0D0();
  v93 = *(v12 - 8);
  v13 = *(v93 + 64);
  v14 = MEMORY[0x28223BE20](v12);
  v90 = &v63 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v76 = &v63 - v16;
  v92 = sub_228392DE0();
  v85 = *(v92 - 8);
  v17 = *(v85 + 64);
  v18 = MEMORY[0x28223BE20](v92);
  v91 = &v63 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v21 = &v63 - v20;
  v86 = v1;
  *&v1[OBJC_IVAR____TtC19HealthMedicationsUI27MedmojiPickerViewController____lazy_storage___medicationView] = 0;
  v83 = OBJC_IVAR____TtC19HealthMedicationsUI27MedmojiPickerViewController_shapeButton;
  if (qword_280DDCF18 != -1)
  {
    swift_once();
  }

  v82 = qword_280DDCF20;
  v81 = *algn_280DDCF28;
  v80 = qword_280DDCF30;
  sub_22838F0C0();
  sub_228392DA0();
  v79 = objc_opt_self();
  v22 = [v79 labelColor];
  sub_228392D60();
  sub_228392CF0();
  sub_2282EFB98(0, &qword_280DDB880, sub_2281D50E8, MEMORY[0x277D84560]);
  v78 = v23;
  inited = swift_initStackObject();
  v77 = xmmword_228397F40;
  *(inited + 16) = xmmword_228397F40;
  v25 = *MEMORY[0x277D740A8];
  *(inited + 32) = *MEMORY[0x277D740A8];
  v26 = sub_22817A958(0, &qword_280DDB9C0, 0x277D74300);
  v70 = v26;
  v74 = *MEMORY[0x277D76918];
  v73 = *MEMORY[0x277D74420];
  v75 = v25;
  v27 = sub_228392AD0();
  *(inited + 64) = v26;
  *(inited + 40) = v27;
  sub_2281A859C(inited);
  swift_setDeallocating();
  sub_228239BFC(inited + 32);
  v28 = v76;
  sub_22838F0F0();
  v29 = v93;
  v30 = *(v93 + 16);
  v71 = v93 + 16;
  v72 = v30;
  v30(v90, v28, v12);
  v31 = v84;
  sub_22838F0B0();
  v68 = sub_22838F0A0();
  v32 = *(v68 - 8);
  v67 = *(v32 + 56);
  v69 = v32 + 56;
  v67(v31, 0, 1, v68);
  sub_228392D30();
  v66 = sub_22817A958(0, &unk_280DDB940, 0x277D75220);
  v33 = v12;
  v63 = v12;
  v34 = v85;
  v65 = *(v85 + 16);
  v35 = v92;
  v65(v91, v21, v92);
  v36 = sub_228392DF0();
  [v36 setContentHorizontalAlignment_];
  [v36 setTranslatesAutoresizingMaskIntoConstraints_];
  v37 = *(v29 + 8);
  v93 = v29 + 8;
  v64 = v37;
  v37(v28, v33);
  v85 = *(v34 + 8);
  (v85)(v21, v35);
  v38 = v86;
  *&v86[v83] = v36;
  v83 = OBJC_IVAR____TtC19HealthMedicationsUI27MedmojiPickerViewController_colorButton;
  sub_22838F0C0();
  v82 = v39;
  sub_228392DA0();
  v40 = [v79 labelColor];
  sub_228392D60();
  sub_228392CF0();
  v41 = swift_initStackObject();
  *(v41 + 16) = v77;
  *(v41 + 32) = v75;
  v42 = v70;
  v43 = sub_228392AD0();
  *(v41 + 64) = v42;
  *(v41 + 40) = v43;
  sub_2281A859C(v41);
  swift_setDeallocating();
  sub_228239BFC(v41 + 32);
  sub_22838F0F0();
  v44 = v63;
  v72(v90, v28, v63);
  sub_22838F0B0();
  v67(v31, 0, 1, v68);
  sub_228392D30();
  v45 = v92;
  v65(v91, v21, v92);
  v46 = sub_228392DF0();
  [v46 setContentHorizontalAlignment_];
  [v46 setTranslatesAutoresizingMaskIntoConstraints_];
  v64(v28, v44);
  (v85)(v21, v45);
  *&v38[v83] = v46;
  *&v38[OBJC_IVAR____TtC19HealthMedicationsUI27MedmojiPickerViewController____lazy_storage___medmojiCategorySelectionView] = 0;
  *&v38[OBJC_IVAR____TtC19HealthMedicationsUI27MedmojiPickerViewController____lazy_storage___shapeSelectionViewController] = 0;
  *&v38[OBJC_IVAR____TtC19HealthMedicationsUI27MedmojiPickerViewController____lazy_storage___colorSelectionViewController] = 0;
  *&v38[OBJC_IVAR____TtC19HealthMedicationsUI27MedmojiPickerViewController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v38[OBJC_IVAR____TtC19HealthMedicationsUI27MedmojiPickerViewController_cancellables] = MEMORY[0x277D84FA0];
  v47 = OBJC_IVAR____TtC19HealthMedicationsUI27MedmojiPickerViewController_config;
  v48 = sub_228390D50();
  v49 = *(v48 - 8);
  (*(v49 + 56))(&v38[v47], 1, 1, v48);
  v50 = v88;
  v51 = v87;
  sub_2282EE728(v88, v87, &qword_280DDBD20, MEMORY[0x277D116C8]);
  if ((*(v49 + 48))(v51, 1, v48) == 1)
  {
    sub_2282EE508(v51, &qword_280DDBD20, MEMORY[0x277D116C8]);
    v52 = 1;
    v53 = v89;
  }

  else
  {
    v53 = v89;
    sub_228390D40();
    (*(v49 + 8))(v51, v48);
    v52 = 0;
  }

  v54 = sub_2283909E0();
  (*(*(v54 - 8) + 56))(v53, v52, 1, v54);
  sub_2282EE7A8(0, &qword_27D8238C8, &qword_27D8238A8, MEMORY[0x277D11640]);
  v56 = *(v55 + 48);
  v57 = *(v55 + 52);
  swift_allocObject();
  *&v38[OBJC_IVAR____TtC19HealthMedicationsUI27MedmojiPickerViewController_shapePublisher] = sub_228391890();
  v58 = type metadata accessor for MedmojiPickerViewController();
  v94.receiver = v38;
  v94.super_class = v58;
  v59 = objc_msgSendSuper2(&v94, sel_initWithNibName_bundle_, 0, 0);
  v60 = OBJC_IVAR____TtC19HealthMedicationsUI27MedmojiPickerViewController_config;
  swift_beginAccess();
  v61 = v59;
  sub_22824F65C(v50, v59 + v60);
  swift_endAccess();

  return v61;
}

void sub_2282EBF98()
{
  v15.receiver = v0;
  v15.super_class = type metadata accessor for MedmojiPickerViewController();
  objc_msgSendSuper2(&v15, sel_viewDidLoad);
  v1 = [v0 view];
  if (v1)
  {
    v2 = v1;
    v3 = [objc_opt_self() systemBackgroundColor];
    [v2 setBackgroundColor_];

    v4 = [v0 navigationItem];
    v5 = objc_allocWithZone(MEMORY[0x277D751E0]);
    v6 = v0;
    v7 = [v5 initWithBarButtonSystemItem:0 target:v6 action:sel_doneButtonTappped_];
    [v4 setRightBarButtonItem_];

    v8 = [v6 navigationItem];
    v9 = [objc_allocWithZone(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:1 target:v6 action:sel_cancelButtonTappped_];

    [v8 setLeftBarButtonItem_];
    if (qword_280DDCF18 != -1)
    {
      swift_once();
    }

    sub_22838F0C0();
    v10 = sub_228391FC0();

    [v6 setTitle_];

    [*&v6[OBJC_IVAR____TtC19HealthMedicationsUI27MedmojiPickerViewController_shapeButton] addTarget:v6 action:sel_shapeButtonTappped_ forControlEvents:64];
    [*&v6[OBJC_IVAR____TtC19HealthMedicationsUI27MedmojiPickerViewController_colorButton] addTarget:v6 action:sel_colorButtonTappped_ forControlEvents:64];
    v11 = sub_2282EB11C();
    [v6 addChildViewController_];

    v12 = OBJC_IVAR____TtC19HealthMedicationsUI27MedmojiPickerViewController____lazy_storage___shapeSelectionViewController;
    [*&v6[OBJC_IVAR____TtC19HealthMedicationsUI27MedmojiPickerViewController____lazy_storage___shapeSelectionViewController] didMoveToParentViewController_];
    v13 = [*&v6[v12] collectionView];
    if (v13)
    {
      v14 = v13;
      [v13 setTranslatesAutoresizingMaskIntoConstraints_];

      sub_2282ECEC0();
      sub_2282EC2E4();
      sub_2282EC418();
      sub_2282EC848();
      sub_2282EDFB8();
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_2282EC2E4()
{
  v1 = [v0 view];
  if (!v1)
  {
    __break(1u);
    goto LABEL_9;
  }

  v2 = v1;
  v3 = sub_2282EAFF8();
  [v2 addSubview_];

  v4 = [v0 view];
  if (!v4)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v5 = v4;
  v6 = sub_2282EB090();
  [v5 addSubview_];

  v7 = [v0 view];
  if (!v7)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v8 = v7;
  v9 = sub_2282EB11C();
  v10 = [v9 collectionView];

  if (!v10)
  {
LABEL_11:
    __break(1u);
    return;
  }

  [v8 addSubview_];
}

id sub_2282EC418()
{
  v1 = sub_2282EB280();
  [v0 addChildViewController_];

  v2 = OBJC_IVAR____TtC19HealthMedicationsUI27MedmojiPickerViewController____lazy_storage___colorSelectionViewController;
  [*&v0[OBJC_IVAR____TtC19HealthMedicationsUI27MedmojiPickerViewController____lazy_storage___colorSelectionViewController] didMoveToParentViewController_];
  result = [*&v0[v2] collectionView];
  if (!result)
  {
    __break(1u);
    goto LABEL_16;
  }

  v4 = result;
  [result setTranslatesAutoresizingMaskIntoConstraints_];

  result = [*&v0[v2] collectionView];
  if (!result)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v5 = result;
  [result setHidden_];

  result = [v0 view];
  if (!result)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v6 = result;
  result = [*&v0[v2] collectionView];
  if (!result)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v7 = result;
  [v6 addSubview_];

  sub_228180ED0();
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_228397F00;
  result = [*&v0[v2] collectionView];
  if (!result)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v9 = result;
  v10 = [result topAnchor];

  v11 = sub_2282EB090();
  v12 = [v11 bottomAnchor];

  v13 = [v10 constraintEqualToAnchor_];
  *(v8 + 32) = v13;
  result = [*&v0[v2] collectionView];
  if (!result)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v14 = result;
  v15 = [result leadingAnchor];

  result = [v0 view];
  if (!result)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v16 = result;
  v17 = [result leadingAnchor];

  v18 = [v15 constraintEqualToAnchor_];
  *(v8 + 40) = v18;
  result = [*&v0[v2] collectionView];
  if (!result)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v19 = result;
  v20 = [result trailingAnchor];

  result = [v0 view];
  if (!result)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v21 = result;
  v22 = [result trailingAnchor];

  v23 = [v20 constraintEqualToAnchor_];
  *(v8 + 48) = v23;
  result = [*&v0[v2] collectionView];
  if (!result)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v24 = result;
  v25 = [result bottomAnchor];

  result = [v0 view];
  if (!result)
  {
LABEL_25:
    __break(1u);
    return result;
  }

  v26 = result;
  v27 = objc_opt_self();
  v28 = [v26 bottomAnchor];

  v29 = [v25 constraintEqualToAnchor_];
  *(v8 + 56) = v29;
  sub_22817A958(0, &qword_280DDBA90, 0x277CCAAD0);
  v30 = sub_228392190();

  [v27 activateConstraints_];

  return sub_2282ED684();
}

void sub_2282EC848()
{
  sub_228180ED0();
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_228397F10;
  v2 = sub_2282EAFF8();
  v3 = [v2 heightAnchor];

  v4 = [v3 constraintEqualToConstant_];
  *(v1 + 32) = v4;
  v5 = OBJC_IVAR____TtC19HealthMedicationsUI27MedmojiPickerViewController____lazy_storage___medicationView;
  v6 = [*&v0[OBJC_IVAR____TtC19HealthMedicationsUI27MedmojiPickerViewController____lazy_storage___medicationView] widthAnchor];
  v7 = [v6 constraintEqualToConstant_];

  *(v1 + 40) = v7;
  v8 = [*&v0[v5] topAnchor];
  v9 = [v0 view];
  if (!v9)
  {
    __break(1u);
    goto LABEL_16;
  }

  v10 = v9;
  v11 = [v9 safeAreaLayoutGuide];

  v12 = [v11 topAnchor];
  v13 = [v8 constraintEqualToAnchor:v12 constant:20.0];

  *(v1 + 48) = v13;
  v14 = [*&v0[v5] centerXAnchor];
  v15 = [v0 view];
  if (!v15)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v16 = v15;
  v17 = [v15 centerXAnchor];

  v18 = [v14 constraintEqualToAnchor_];
  *(v1 + 56) = v18;
  v19 = sub_2282EB090();
  v20 = [v19 topAnchor];

  v21 = [*&v0[v5] bottomAnchor];
  v22 = [v20 constraintEqualToAnchor:v21 constant:30.0];

  *(v1 + 64) = v22;
  v23 = OBJC_IVAR____TtC19HealthMedicationsUI27MedmojiPickerViewController____lazy_storage___medmojiCategorySelectionView;
  v24 = [*&v0[OBJC_IVAR____TtC19HealthMedicationsUI27MedmojiPickerViewController____lazy_storage___medmojiCategorySelectionView] leadingAnchor];
  v25 = [v0 view];
  if (!v25)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v26 = v25;
  v27 = [v25 leadingAnchor];

  v28 = [v24 constraintEqualToAnchor_];
  *(v1 + 72) = v28;
  v29 = [*&v0[v23] trailingAnchor];
  v30 = [v0 &selRef_didTapDay_];
  if (!v30)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v31 = v30;
  v32 = [v30 trailingAnchor];

  v33 = [v29 constraintEqualToAnchor_];
  *(v1 + 80) = v33;
  v34 = sub_2282EB11C();
  v35 = [v34 collectionView];

  if (!v35)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v36 = [v35 topAnchor];

  v37 = [*&v0[v23] bottomAnchor];
  v38 = [v36 constraintEqualToAnchor_];

  *(v1 + 88) = v38;
  v39 = OBJC_IVAR____TtC19HealthMedicationsUI27MedmojiPickerViewController____lazy_storage___shapeSelectionViewController;
  v40 = [*&v0[OBJC_IVAR____TtC19HealthMedicationsUI27MedmojiPickerViewController____lazy_storage___shapeSelectionViewController] collectionView];
  if (!v40)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v41 = v40;
  v42 = [v40 leadingAnchor];

  v43 = [v0 view];
  if (!v43)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v44 = v43;
  v45 = [v43 leadingAnchor];

  v46 = [v42 constraintEqualToAnchor_];
  *(v1 + 96) = v46;
  v47 = [*&v0[v39] collectionView];
  if (!v47)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v48 = v47;
  v49 = [v47 trailingAnchor];

  v50 = [v0 view];
  if (!v50)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v51 = v50;
  v52 = [v50 trailingAnchor];

  v53 = [v49 constraintEqualToAnchor_];
  *(v1 + 104) = v53;
  v54 = [*&v0[v39] collectionView];
  if (!v54)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v55 = v54;
  v56 = [v54 bottomAnchor];

  v57 = [v0 view];
  if (!v57)
  {
LABEL_25:
    __break(1u);
    return;
  }

  v58 = v57;
  v59 = objc_opt_self();
  v60 = [v58 bottomAnchor];

  v61 = [v56 constraintEqualToAnchor_];
  *(v1 + 112) = v61;
  sub_22817A958(0, &qword_280DDBA90, 0x277CCAAD0);
  v62 = sub_228392190();

  [v59 activateConstraints_];
}

uint64_t sub_2282ECEC0()
{
  sub_2282EFB98(0, &qword_280DDBAD0, MEMORY[0x277D85248], MEMORY[0x277D83D88]);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = v15 - v3;
  sub_2281F2C88();
  v16 = v5;
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI27MedmojiPickerViewController_shapePublisher);
  sub_22817A958(0, &qword_280DDCEE0, 0x277D85C78);

  v10 = sub_228392790();
  v18 = v10;
  v11 = sub_228392730();
  (*(*(v11 - 8) + 56))(v4, 1, 1, v11);
  v12 = MEMORY[0x277D11640];
  sub_2282EE7A8(0, &qword_27D8238C8, &qword_27D8238A8, MEMORY[0x277D11640]);
  sub_2282EFAEC(&qword_27D824F30, &qword_27D8238C8, &qword_27D8238A8, v12);
  sub_2281A1504();
  sub_228391A70();
  sub_2282EE508(v4, &qword_280DDBAD0, v15[2]);

  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_2282EFB44(&qword_27D824F38, sub_2281F2C88);
  v13 = v16;
  sub_228391AC0();

  (*(v6 + 8))(v9, v13);
  swift_beginAccess();
  sub_228391800();
  swift_endAccess();
}

uint64_t sub_2282ED1E0(uint64_t a1)
{
  v2 = MEMORY[0x277D83D88];
  sub_2282EFB98(0, &qword_280DDBD20, MEMORY[0x277D116C8], MEMORY[0x277D83D88]);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v35 - v9;
  MEMORY[0x28223BE20](v8);
  v12 = &v35 - v11;
  sub_2282EFB98(0, &qword_27D8238A8, MEMORY[0x277D11640], v2);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v35 - v15;
  v17 = sub_2283909E0();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = &v35 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v23 = result;
    v36 = v7;
    v37 = v10;
    v24 = *(v18 + 48);
    [*(result + OBJC_IVAR____TtC19HealthMedicationsUI27MedmojiPickerViewController_colorButton) setEnabled_];
    sub_2282EE728(a1, v16, &qword_27D8238A8, MEMORY[0x277D11640]);
    if (v24(v16, 1, v17) == 1)
    {

      return sub_2282EE508(v16, &qword_27D8238A8, MEMORY[0x277D11640]);
    }

    else
    {
      (*(v18 + 32))(v21, v16, v17);
      v25 = OBJC_IVAR____TtC19HealthMedicationsUI27MedmojiPickerViewController_config;
      swift_beginAccess();
      v26 = MEMORY[0x277D116C8];
      sub_2282EE728(v23 + v25, v12, &qword_280DDBD20, MEMORY[0x277D116C8]);
      v27 = sub_228390D50();
      v28 = *(v27 - 8);
      v29 = (*(v28 + 48))(v12, 1, v27);
      sub_2282EE508(v12, &qword_280DDBD20, v26);
      if (v29 == 1)
      {
        v30 = v37;
        MedicationShape.previewConfig.getter(v37);
        (*(v28 + 56))(v30, 0, 1, v27);
        swift_beginAccess();
        sub_2282EE82C(v30, v23 + v25);
        swift_endAccess();
        v31 = sub_2282EAFF8();
        v32 = MEMORY[0x277D116C8];
        sub_2282EE728(v23 + v25, v36, &qword_280DDBD20, MEMORY[0x277D116C8]);
        sub_228390950();

        sub_2282EE508(v30, &qword_280DDBD20, v32);
      }

      v33 = sub_2282EB280();
      v34 = *&v33[qword_27D825220];

      sub_228391850();

      return (*(v18 + 8))(v21, v17);
    }
  }

  return result;
}

uint64_t sub_2282ED684()
{
  sub_2282EFB98(0, &qword_280DDBAD0, MEMORY[0x277D85248], MEMORY[0x277D83D88]);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = v16 - v2;
  sub_228208F04();
  v17 = v4;
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2282EB280();
  v10 = *&v9[qword_27D825228];

  v18 = v10;
  sub_22817A958(0, &qword_280DDCEE0, 0x277D85C78);
  v11 = sub_228392790();
  v19 = v11;
  v12 = sub_228392730();
  (*(*(v12 - 8) + 56))(v3, 1, 1, v12);
  v13 = MEMORY[0x277D116C8];
  sub_2282EE7A8(0, &qword_27D827800, &qword_280DDBD20, MEMORY[0x277D116C8]);
  sub_2282EFAEC(&qword_27D825288, &qword_27D827800, &qword_280DDBD20, v13);
  sub_2281A1504();
  sub_228391A70();
  sub_2282EE508(v3, &qword_280DDBAD0, v16[2]);

  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_2282EFB44(&qword_27D825290, sub_228208F04);
  v14 = v17;
  sub_228391AC0();

  (*(v5 + 8))(v8, v14);
  swift_beginAccess();
  sub_228391800();
  swift_endAccess();
}

uint64_t sub_2282ED9B4(uint64_t a1)
{
  v2 = MEMORY[0x277D83D88];
  sub_2282EFB98(0, &qword_27D8238A8, MEMORY[0x277D11640], MEMORY[0x277D83D88]);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v32[-v5];
  sub_2282EFB98(0, &qword_280DDBD20, MEMORY[0x277D116C8], v2);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v11 = &v32[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v32[-v13];
  MEMORY[0x28223BE20](v12);
  v16 = &v32[-v15];
  v17 = sub_228390D50();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = &v32[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v23 = result;
    sub_2282EE728(a1, v16, &qword_280DDBD20, MEMORY[0x277D116C8]);
    if ((*(v18 + 48))(v16, 1, v17) == 1)
    {

      v24 = &qword_280DDBD20;
      v25 = MEMORY[0x277D116C8];
      v26 = v16;
      return sub_2282EE508(v26, v24, v25);
    }

    (*(v18 + 32))(v21, v16, v17);
    v27 = *&v23[OBJC_IVAR____TtC19HealthMedicationsUI27MedmojiPickerViewController_shapePublisher];

    sub_228391870();

    v28 = sub_2283909E0();
    if ((*(*(v28 - 8) + 48))(v6, 1, v28) == 1)
    {
      (*(v18 + 8))(v21, v17);

      v24 = &qword_27D8238A8;
      v25 = MEMORY[0x277D11640];
      v26 = v6;
      return sub_2282EE508(v26, v24, v25);
    }

    sub_2282EE508(v6, &qword_27D8238A8, MEMORY[0x277D11640]);
    (*(v18 + 16))(v14, v21, v17);
    (*(v18 + 56))(v14, 0, 1, v17);
    v29 = OBJC_IVAR____TtC19HealthMedicationsUI27MedmojiPickerViewController_config;
    swift_beginAccess();
    sub_2282EE82C(v14, &v23[v29]);
    swift_endAccess();
    v30 = sub_2282EAFF8();
    v31 = MEMORY[0x277D116C8];
    sub_2282EE728(&v23[v29], v11, &qword_280DDBD20, MEMORY[0x277D116C8]);
    sub_228390950();

    sub_2282EE508(v14, &qword_280DDBD20, v31);
    return (*(v18 + 8))(v21, v17);
  }

  return result;
}

void sub_2282EDFF0(uint64_t *a1, void *a2, int a3, int a4)
{
  v30 = a4;
  v31 = a3;
  sub_2282EFB98(0, &qword_280DDB950, MEMORY[0x277D75058], MEMORY[0x277D83D88]);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v30 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = &v30 - v15;
  v17 = *a1;
  v32 = v4;
  v18 = *(v4 + v17);
  sub_228392E00();
  v19 = sub_228392DE0();
  v20 = *(*(v19 - 8) + 48);
  if (v20(v16, 1, v19))
  {
    v21 = MEMORY[0x277D75058];
    sub_2282EE728(v16, v11, &qword_280DDB950, MEMORY[0x277D75058]);
    sub_228392E10();
    sub_2282EE508(v16, &qword_280DDB950, v21);
  }

  else
  {
    v22 = [objc_opt_self() systemBlueColor];
    sub_228392D60();
    sub_228392E10();
  }

  v23 = *(v32 + *a2);
  sub_228392E00();
  if (v20(v14, 1, v19))
  {
    v24 = MEMORY[0x277D75058];
    sub_2282EE728(v14, v11, &qword_280DDB950, MEMORY[0x277D75058]);
    sub_228392E10();
    sub_2282EE508(v14, &qword_280DDB950, v24);
  }

  else
  {
    v25 = [objc_opt_self() labelColor];
    sub_228392D60();
    sub_228392E10();
  }

  v26 = sub_2282EB11C();
  v27 = [v26 collectionView];

  if (v27)
  {
    [v27 setHidden_];

    v28 = sub_2282EB280();
    v29 = [v28 collectionView];

    if (v29)
    {
      [v29 setHidden_];

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

id MedmojiPickerViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_228391FC0();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id MedmojiPickerViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MedmojiPickerViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2282EE508(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_2282EFB98(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t type metadata accessor for MedmojiPickerViewController()
{
  result = qword_27D827620;
  if (!qword_27D827620)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2282EE5F4()
{
  sub_2282EFB98(319, &qword_280DDBD20, MEMORY[0x277D116C8], MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t sub_2282EE728(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_2282EFB98(0, a3, a4, MEMORY[0x277D83D88]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

void sub_2282EE7A8(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    sub_2282EFB98(255, a3, a4, MEMORY[0x277D83D88]);
    v5 = sub_228391880();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_2282EE82C(uint64_t a1, uint64_t a2)
{
  sub_2282EFB98(0, &qword_280DDBD20, MEMORY[0x277D116C8], MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

id sub_2282EE8C0(void *a1, void *a2)
{
  v2 = [objc_allocWithZone(MEMORY[0x277D75D18]) initWithFrame_];
  v3 = objc_opt_self();
  v4 = [v3 secondarySystemBackgroundColor];
  [v2 setBackgroundColor_];

  [v2 setTranslatesAutoresizingMaskIntoConstraints_];
  v5 = [objc_allocWithZone(MEMORY[0x277D12A48]) init];
  HKUIOnePixel();
  [v5 setSeparatorThickness_];
  v6 = [v3 separatorColor];
  [v5 setColor_];

  v7 = v5;
  [v7 setTranslatesAutoresizingMaskIntoConstraints_];
  v8 = [objc_allocWithZone(MEMORY[0x277D12A48]) init];
  HKUIOnePixel();
  [v8 setSeparatorThickness_];
  v9 = [v3 separatorColor];
  [v8 setColor_];

  v50 = v8;
  [v50 setTranslatesAutoresizingMaskIntoConstraints_];
  sub_228180ED0();
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_228397F20;
  *(v10 + 32) = a1;
  *(v10 + 40) = a2;
  v11 = objc_allocWithZone(MEMORY[0x277D75A68]);
  sub_22817A958(0, &qword_280DDB9B0, 0x277D75D18);
  v12 = a1;
  v13 = a2;
  v14 = sub_228392190();

  v15 = [v11 initWithArrangedSubviews_];

  [v15 setAxis_];
  [v15 setAlignment_];
  [v15 setDistribution_];
  [v15 setSpacing_];
  v16 = v15;
  [v16 setTranslatesAutoresizingMaskIntoConstraints_];
  [v2 addSubview_];
  [v2 addSubview_];
  [v2 addSubview_];
  v49 = objc_opt_self();
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_2283A25D0;
  v18 = [v7 leadingAnchor];
  v19 = [v2 leadingAnchor];
  v20 = [v18 constraintEqualToAnchor_];

  *(v17 + 32) = v20;
  v21 = [v7 trailingAnchor];
  v22 = [v2 trailingAnchor];
  v23 = [v21 constraintEqualToAnchor_];

  *(v17 + 40) = v23;
  v24 = [v50 leadingAnchor];
  v25 = [v2 leadingAnchor];
  v26 = [v24 &selRef_freeTextMedicationName + 5];

  *(v17 + 48) = v26;
  v27 = [v50 trailingAnchor];
  v28 = [v2 trailingAnchor];
  v29 = [v27 &selRef_freeTextMedicationName + 5];

  *(v17 + 56) = v29;
  v30 = [v16 centerXAnchor];
  v31 = [v2 centerXAnchor];
  v32 = [v30 &selRef_freeTextMedicationName + 5];

  *(v17 + 64) = v32;
  v33 = [v7 topAnchor];
  v34 = [v2 topAnchor];
  v35 = [v33 &selRef_freeTextMedicationName + 5];

  *(v17 + 72) = v35;
  v36 = [v16 topAnchor];
  v37 = [v7 bottomAnchor];

  v38 = [v36 &selRef_freeTextMedicationName + 5];
  *(v17 + 80) = v38;
  v39 = [v50 topAnchor];
  v40 = [v16 bottomAnchor];

  v41 = [v39 &selRef_freeTextMedicationName + 5];
  *(v17 + 88) = v41;
  v42 = [v50 bottomAnchor];

  v43 = [v2 bottomAnchor];
  v44 = [v42 &selRef_freeTextMedicationName + 5];

  *(v17 + 96) = v44;
  sub_22817A958(0, &qword_280DDBA90, 0x277CCAAD0);
  v45 = sub_228392190();

  [v49 activateConstraints_];

  return v2;
}

void sub_2282EEF84()
{
  sub_2282EFB98(0, &unk_280DDCDC8, MEMORY[0x277CC8C40], MEMORY[0x277D83D88]);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v53 - v3;
  v5 = sub_22838F0D0();
  v81 = *(v5 - 8);
  v6 = *(v81 + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v78 = &v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v79 = &v53 - v10;
  MEMORY[0x28223BE20](v9);
  v12 = &v53 - v11;
  v80 = sub_228392DE0();
  v75 = *(v80 - 8);
  v13 = *(v75 + 64);
  v14 = MEMORY[0x28223BE20](v80);
  v76 = &v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v74 = &v53 - v17;
  MEMORY[0x28223BE20](v16);
  v19 = &v53 - v18;
  v77 = v0;
  *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI27MedmojiPickerViewController____lazy_storage___medicationView) = 0;
  v73 = OBJC_IVAR____TtC19HealthMedicationsUI27MedmojiPickerViewController_shapeButton;
  if (qword_280DDCF18 != -1)
  {
    swift_once();
  }

  v72 = qword_280DDCF20;
  v71 = *algn_280DDCF28;
  v70 = qword_280DDCF30;
  v62 = sub_22838F0C0();
  sub_228392DA0();
  v69 = objc_opt_self();
  v20 = [v69 labelColor];
  sub_228392D60();
  sub_228392CF0();
  sub_2282EFB98(0, &qword_280DDB880, sub_2281D50E8, MEMORY[0x277D84560]);
  v68 = v21;
  inited = swift_initStackObject();
  v67 = xmmword_228397F40;
  *(inited + 16) = xmmword_228397F40;
  v23 = *MEMORY[0x277D740A8];
  *(inited + 32) = *MEMORY[0x277D740A8];
  v24 = sub_22817A958(0, &qword_280DDB9C0, 0x277D74300);
  v66 = *MEMORY[0x277D76918];
  v65 = *MEMORY[0x277D74420];
  v63 = v23;
  v59 = v24;
  v25 = sub_228392AD0();
  *(inited + 64) = v24;
  *(inited + 40) = v25;
  sub_2281A859C(inited);

  sub_22838F0F0();
  v26 = v81;
  v27 = *(v81 + 16);
  v56 = v81 + 16;
  v64 = v27;
  v27(v79, v12, v5);
  sub_22838F0B0();
  v61 = sub_22838F0A0();
  v28 = *(v61 - 8);
  v60 = *(v28 + 56);
  v62 = v28 + 56;
  v60(v4, 0, 1, v61);
  sub_228392D30();
  v58 = sub_22817A958(0, &unk_280DDB940, 0x277D75220);
  v29 = v26;
  v30 = v5;
  v54 = v5;
  v31 = v75;
  v32 = v12;
  v57 = *(v75 + 16);
  v33 = v74;
  v34 = v80;
  v57(v74, v19, v80);
  v35 = sub_228392DF0();
  [v35 setContentHorizontalAlignment_];
  [v35 setTranslatesAutoresizingMaskIntoConstraints_];
  v36 = *(v29 + 8);
  v81 = v29 + 8;
  v55 = v36;
  v36(v32, v30);
  v37 = *(v31 + 8);
  v37(v19, v34);
  v38 = v77;
  *(v77 + v73) = v35;
  v75 = OBJC_IVAR____TtC19HealthMedicationsUI27MedmojiPickerViewController_colorButton;
  v73 = sub_22838F0C0();
  v72 = v39;
  v40 = v76;
  sub_228392DA0();
  v41 = [v69 labelColor];
  sub_228392D60();
  sub_228392CF0();
  v42 = swift_initStackObject();
  *(v42 + 16) = v67;
  v43 = v63;
  *(v42 + 32) = v63;
  v44 = v43;
  v45 = v59;
  v46 = sub_228392AD0();
  *(v42 + 64) = v45;
  *(v42 + 40) = v46;
  sub_2281A859C(v42);

  v47 = v78;
  sub_22838F0F0();
  v48 = v54;
  v64(v79, v47, v54);
  sub_22838F0B0();
  v60(v4, 0, 1, v61);
  sub_228392D30();
  v49 = v80;
  v57(v33, v40, v80);
  v50 = sub_228392DF0();
  [v50 setContentHorizontalAlignment_];
  [v50 setTranslatesAutoresizingMaskIntoConstraints_];
  v55(v47, v48);
  v37(v40, v49);
  *(v38 + v75) = v50;
  *(v38 + OBJC_IVAR____TtC19HealthMedicationsUI27MedmojiPickerViewController____lazy_storage___medmojiCategorySelectionView) = 0;
  *(v38 + OBJC_IVAR____TtC19HealthMedicationsUI27MedmojiPickerViewController____lazy_storage___shapeSelectionViewController) = 0;
  *(v38 + OBJC_IVAR____TtC19HealthMedicationsUI27MedmojiPickerViewController____lazy_storage___colorSelectionViewController) = 0;
  *(v38 + OBJC_IVAR____TtC19HealthMedicationsUI27MedmojiPickerViewController_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v38 + OBJC_IVAR____TtC19HealthMedicationsUI27MedmojiPickerViewController_cancellables) = MEMORY[0x277D84FA0];
  v51 = OBJC_IVAR____TtC19HealthMedicationsUI27MedmojiPickerViewController_config;
  v52 = sub_228390D50();
  (*(*(v52 - 8) + 56))(v38 + v51, 1, 1, v52);
  sub_228393300();
  __break(1u);
}

id sub_2282EF8D0()
{
  v1 = v0;
  sub_2282EFB98(0, &qword_280DDBD20, MEMORY[0x277D116C8], MEMORY[0x277D83D88]);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v16 - v4;
  v6 = sub_228390D50();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2282EAFF8();
  sub_228390940();

  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_2282EE508(v5, &qword_280DDBD20, MEMORY[0x277D116C8]);
  }

  else
  {
    (*(v7 + 32))(v10, v5, v6);
    v12 = &v1[OBJC_IVAR____TtC19HealthMedicationsUI27MedmojiPickerViewController_delegate];
    if (swift_unknownObjectWeakLoadStrong())
    {
      v13 = *(v12 + 1);
      ObjectType = swift_getObjectType();
      (*(v13 + 8))(v10, ObjectType, v13);
      swift_unknownObjectRelease();
    }

    (*(v7 + 8))(v10, v6);
  }

  return [v1 dismissViewControllerAnimated:1 completion:0];
}

uint64_t sub_2282EFAEC(unint64_t *a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_2282EE7A8(255, a2, a3, a4);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2282EFB44(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_2282EFB98(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t SelectionEntryItem.identifier.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_22838F4A0();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t SelectionEntryItem.SwitchStyle.hashValue.getter()
{
  v1 = *v0;
  sub_228393520();
  MEMORY[0x22AAB70D0](v1);
  return sub_228393570();
}

uint64_t SelectionEntryItem.listContentProvider.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for SelectionEntryItem() + 20);

  return sub_228180FB0(v3, a1);
}

uint64_t type metadata accessor for SelectionEntryItem()
{
  result = qword_27D827678;
  if (!qword_27D827678)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t SelectionEntryItem.isEnabled.setter(char a1)
{
  result = type metadata accessor for SelectionEntryItem();
  *(v1 + *(result + 24)) = a1;
  return result;
}

void *SelectionEntryItem.leadingImage.getter()
{
  v1 = *(v0 + *(type metadata accessor for SelectionEntryItem() + 28));
  v2 = v1;
  return v1;
}

uint64_t SelectionEntryItem.switchStyle.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for SelectionEntryItem();
  *a1 = *(v1 + *(result + 32));
  return result;
}

uint64_t SelectionEntryItem.selectionHandler.getter()
{
  v1 = (v0 + *(type metadata accessor for SelectionEntryItem() + 36));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t SelectionEntryItem.init(listContentProvider:leadingImage:switchStyle:isEnabled:selectionHandler:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v13 = *a3;
  sub_22838F490();
  v14 = type metadata accessor for SelectionEntryItem();
  v15 = (a7 + v14[10]);
  type metadata accessor for SelectionOptionsCell();
  sub_2282F2AF8(&qword_27D825FF8, v16, type metadata accessor for SelectionOptionsCell);
  *v15 = sub_22838FBB0();
  v15[1] = v17;
  result = sub_22816DFFC(a1, a7 + v14[5]);
  *(a7 + v14[7]) = a2;
  *(a7 + v14[6]) = a4;
  *(a7 + v14[8]) = v13;
  v19 = (a7 + v14[9]);
  *v19 = a5;
  v19[1] = a6;
  return result;
}

uint64_t SelectionEntryItem.reuseIdentifier.getter()
{
  v1 = (v0 + *(type metadata accessor for SelectionEntryItem() + 40));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

unint64_t SelectionEntryItem.uniqueIdentifier.getter()
{
  sub_2283931D0();

  v0 = sub_22838F450();
  MEMORY[0x22AAB5C80](v0);

  return 0xD000000000000013;
}

uint64_t SelectionEntryItem.hash(into:)()
{
  v1 = type metadata accessor for SelectionEntryItem();
  v2 = (v0 + *(v1 + 20));
  v3 = v2[4];
  __swift_project_boxed_opaque_existential_0(v2, v2[3]);
  v4 = *(v3 + 8);
  sub_228391F70();
  v5 = *(v0 + *(v1 + 24));
  return sub_228393540();
}

uint64_t static SelectionEntryItem.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SelectionEntryItem();
  v5 = (a1 + *(v4 + 20));
  v6 = v5[4];
  __swift_project_boxed_opaque_existential_0(v5, v5[3]);
  v7 = *(v6 + 8);
  v8 = sub_228391F80();
  v9 = (a2 + *(v4 + 20));
  v10 = v9[4];
  __swift_project_boxed_opaque_existential_0(v9, v9[3]);
  v11 = *(v10 + 8);
  if (v8 == sub_228391F80())
  {
    v12 = *(a1 + *(v4 + 24)) ^ *(a2 + *(v4 + 24)) ^ 1;
  }

  else
  {
    v12 = 0;
  }

  return v12 & 1;
}

uint64_t SelectionEntryItem.hashValue.getter()
{
  sub_228393520();
  v1 = type metadata accessor for SelectionEntryItem();
  v2 = (v0 + *(v1 + 20));
  v3 = v2[4];
  __swift_project_boxed_opaque_existential_0(v2, v2[3]);
  v4 = *(v3 + 8);
  sub_228391F70();
  v5 = *(v0 + *(v1 + 24));
  sub_228393540();
  return sub_228393570();
}

uint64_t sub_2282F0254(uint64_t a1)
{
  sub_228393520();
  v3 = (v1 + *(a1 + 20));
  v4 = v3[4];
  __swift_project_boxed_opaque_existential_0(v3, v3[3]);
  v5 = *(v4 + 8);
  sub_228391F70();
  v6 = *(v1 + *(a1 + 24));
  sub_228393540();
  return sub_228393570();
}

uint64_t sub_2282F02DC(uint64_t a1, uint64_t a2)
{
  v4 = (v2 + *(a2 + 20));
  v5 = v4[4];
  __swift_project_boxed_opaque_existential_0(v4, v4[3]);
  v6 = *(v5 + 8);
  sub_228391F70();
  v7 = *(v2 + *(a2 + 24));
  return sub_228393540();
}

uint64_t sub_2282F034C(uint64_t a1, uint64_t a2)
{
  sub_228393520();
  v4 = (v2 + *(a2 + 20));
  v5 = v4[4];
  __swift_project_boxed_opaque_existential_0(v4, v4[3]);
  v6 = *(v5 + 8);
  sub_228391F70();
  v7 = *(v2 + *(a2 + 24));
  sub_228393540();
  return sub_228393570();
}

uint64_t sub_2282F03D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = (a1 + *(a3 + 20));
  v7 = v6[4];
  __swift_project_boxed_opaque_existential_0(v6, v6[3]);
  v8 = *(v7 + 8);
  v9 = sub_228391F80();
  v10 = (a2 + *(a3 + 20));
  v11 = v10[4];
  __swift_project_boxed_opaque_existential_0(v10, v10[3]);
  v12 = *(v11 + 8);
  if (v9 == sub_228391F80())
  {
    v13 = *(a1 + *(a3 + 24)) ^ *(a2 + *(a3 + 24)) ^ 1;
  }

  else
  {
    v13 = 0;
  }

  return v13 & 1;
}

uint64_t sub_2282F047C(uint64_t a1)
{
  v2 = (v1 + *(a1 + 40));
  v3 = *v2;
  v4 = v2[1];

  return v3;
}

unint64_t sub_2282F04B4()
{
  sub_2283931D0();

  v0 = sub_22838F450();
  MEMORY[0x22AAB5C80](v0);

  return 0xD000000000000013;
}

uint64_t sub_2282F0534(uint64_t a1)
{
  v2 = sub_2282F2AF8(&qword_27D827698, 255, type metadata accessor for SelectionEntryItem);

  return MEMORY[0x282169440](a1, v2);
}

uint64_t sub_2282F05B4(uint64_t a1, uint64_t *a2)
{
  sub_2282F2B40(a1, v6, sub_228181D50);
  v3 = *a2;
  v4 = OBJC_IVAR____TtC19HealthMedicationsUI20SelectionOptionsCell_item;
  swift_beginAccess();
  sub_22818FD64(v6, v3 + v4);
  swift_endAccess();
  sub_2282F0AEC();
  return sub_2282F2BA8(v6, sub_228181D50);
}

uint64_t sub_2282F0648@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC19HealthMedicationsUI20SelectionOptionsCell_item;
  swift_beginAccess();
  return sub_2282F2B40(v1 + v3, a1, sub_228181D50);
}

uint64_t sub_2282F06B4(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC19HealthMedicationsUI20SelectionOptionsCell_item;
  swift_beginAccess();
  sub_22818FD64(a1, v1 + v3);
  swift_endAccess();
  sub_2282F0AEC();
  return sub_2282F2BA8(a1, sub_228181D50);
}

uint64_t (*sub_2282F0734(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_2282F0798;
}

uint64_t sub_2282F0798(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v5 = *(a1 + 24);
    return sub_2282F0AEC();
  }

  return result;
}

id sub_2282F07CC()
{
  v1 = OBJC_IVAR____TtC19HealthMedicationsUI20SelectionOptionsCell____lazy_storage___cellSwitch;
  v2 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI20SelectionOptionsCell____lazy_storage___cellSwitch);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI20SelectionOptionsCell____lazy_storage___cellSwitch);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x277D75AE8]) init];
    [v4 addTarget:v0 action:sel_switchValueChanged_ forControlEvents:4096];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

void sub_2282F0860()
{
  v1 = OBJC_IVAR____TtC19HealthMedicationsUI20SelectionOptionsCell____lazy_storage___selectedImage;
  v2 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI20SelectionOptionsCell____lazy_storage___selectedImage);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI20SelectionOptionsCell____lazy_storage___selectedImage);
LABEL_5:
    v8 = v2;
    return;
  }

  v4 = [objc_opt_self() configurationWithTextStyle_];
  v5 = sub_228391FC0();
  v6 = [objc_opt_self() systemImageNamed:v5 withConfiguration:v4];

  if (v6)
  {
    v7 = *(v0 + v1);
    *(v0 + v1) = v6;
    v6;

    v2 = 0;
    goto LABEL_5;
  }

  __break(1u);
}

void sub_2282F0954()
{
  v1 = OBJC_IVAR____TtC19HealthMedicationsUI20SelectionOptionsCell____lazy_storage___notSelectedImage;
  v2 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI20SelectionOptionsCell____lazy_storage___notSelectedImage);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI20SelectionOptionsCell____lazy_storage___notSelectedImage);
LABEL_5:
    v8 = v2;
    return;
  }

  v4 = [objc_opt_self() configurationWithTextStyle_];
  v5 = sub_228391FC0();
  v6 = [objc_opt_self() systemImageNamed:v5 withConfiguration:v4];

  if (v6)
  {
    v7 = *(v0 + v1);
    *(v0 + v1) = v6;
    v6;

    v2 = 0;
    goto LABEL_5;
  }

  __break(1u);
}

id sub_2282F0A40()
{
  v1 = OBJC_IVAR____TtC19HealthMedicationsUI20SelectionOptionsCell____lazy_storage___accessoryImageView;
  v2 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI20SelectionOptionsCell____lazy_storage___accessoryImageView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI20SelectionOptionsCell____lazy_storage___accessoryImageView);
  }

  else
  {
    sub_2282F0954();
    v5 = v4;
    v6 = [objc_allocWithZone(MEMORY[0x277D755E8]) initWithImage_];

    [v6 setAccessibilityTraits_];
    v7 = *(v0 + v1);
    *(v0 + v1) = v6;
    v3 = v6;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

uint64_t sub_2282F0AEC()
{
  v1 = v0;
  v2 = sub_2283911B0();
  v57 = *(v2 - 8);
  v58 = v2;
  v3 = *(v57 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v54 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_228391590();
  v55 = *(v6 - 8);
  v56 = v6;
  v7 = *(v55 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x277D83D88];
  sub_2282F141C(0, &unk_280DDBCD0, MEMORY[0x277D74BD0], MEMORY[0x277D83D88]);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v15 = &v54 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v54 - v16;
  sub_2282F141C(0, &qword_27D827690, type metadata accessor for SelectionEntryItem, v10);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v21 = &v54 - v20;
  v22 = type metadata accessor for SelectionEntryItem();
  v23 = *(v22 - 1);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22);
  v26 = &v54 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = OBJC_IVAR____TtC19HealthMedicationsUI20SelectionOptionsCell_item;
  swift_beginAccess();
  sub_2282F2B40(&v1[v27], v60, sub_228181D50);
  if (v61)
  {
    sub_2281810DC(0, &qword_280DDCD60);
    v28 = swift_dynamicCast();
    (*(v23 + 56))(v21, v28 ^ 1u, 1, v22);
    if ((*(v23 + 48))(v21, 1, v22) != 1)
    {
      sub_2282F2A94(v21, v26);
      sub_228391390();
      v29 = sub_2283913A0();
      v30 = *(v29 - 8);
      (*(v30 + 56))(v17, 0, 1, v29);
      v31 = MEMORY[0x22AAB6420](v17);
      MEMORY[0x22AAB6410](v31);
      if ((*(v30 + 48))(v15, 1, v29))
      {
        sub_228205274(v15, v17);
        MEMORY[0x22AAB6420](v17);
        sub_2282F2A24(v15, &unk_280DDBCD0, MEMORY[0x277D74BD0]);
      }

      else
      {
        v41 = *&v1[OBJC_IVAR____TtC19HealthMedicationsUI20SelectionOptionsCell_defaultBackgroundColor];
        sub_228391370();
        MEMORY[0x22AAB6420](v15);
      }

      v42 = &v26[v22[5]];
      v43 = *(v42 + 3);
      v44 = *(v42 + 4);
      __swift_project_boxed_opaque_existential_0(v42, v43);
      (*(v44 + 16))(v43, v44);
      v45 = *&v26[v22[7]];
      sub_228391550();
      sub_2282F141C(0, &unk_280DDB890, MEMORY[0x277D74AE0], MEMORY[0x277D84560]);
      v46 = *(sub_2283912F0() - 8);
      v47 = *(v46 + 72);
      v48 = (*(v46 + 80) + 32) & ~*(v46 + 80);
      v49 = swift_allocObject();
      *(v49 + 16) = xmmword_228397F40;
      v50 = v22[8];
      LOBYTE(v60[0]) = v26[v50];
      sub_2282F1568(v60, v49 + v48);
      sub_2283928F0();
      v51 = v56;
      v61 = v56;
      v62 = MEMORY[0x277D74C30];
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v60);
      v53 = v55;
      (*(v55 + 16))(boxed_opaque_existential_1, v9, v51);
      MEMORY[0x22AAB6400](v60);
      LOBYTE(v60[0]) = v26[v50];
      sub_2282F1840(v60);
      (*(v53 + 8))(v9, v51);
      return sub_2282F2BA8(v26, type metadata accessor for SelectionEntryItem);
    }
  }

  else
  {
    sub_2282F2BA8(v60, sub_228181D50);
    (*(v23 + 56))(v21, 1, 1, v22);
  }

  sub_2282F2A24(v21, &qword_27D827690, type metadata accessor for SelectionEntryItem);
  sub_228391150();
  v32 = v1;
  v33 = sub_2283911A0();
  v34 = sub_2283925C0();

  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v59 = v36;
    *v35 = 136446210;
    sub_2282F2B40(&v1[v27], v60, sub_228181D50);
    sub_228181D50();
    v37 = sub_228392040();
    v39 = sub_2281C96FC(v37, v38, &v59);

    *(v35 + 4) = v39;
    _os_log_impl(&dword_22816B000, v33, v34, "Incorrect view model for SelectionOptionsCell: %{public}s", v35, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v36);
    MEMORY[0x22AAB7B80](v36, -1, -1);
    MEMORY[0x22AAB7B80](v35, -1, -1);
  }

  return (*(v57 + 8))(v5, v58);
}

uint64_t sub_2282F1278()
{
  v1 = v0;
  sub_2282F141C(0, &unk_280DDBCD0, MEMORY[0x277D74BD0], MEMORY[0x277D83D88]);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v14 - v7;
  v9 = sub_228391330();
  v10 = type metadata accessor for SelectionOptionsCell();
  v14.receiver = v1;
  v14.super_class = v10;
  objc_msgSendSuper2(&v14, sel__bridgedUpdateConfigurationUsingState_, v9);

  MEMORY[0x22AAB6410]();
  v11 = sub_2283913A0();
  if ((*(*(v11 - 8) + 48))(v8, 1, v11))
  {
    sub_228205274(v8, v6);
    MEMORY[0x22AAB6420](v6);
    return sub_2282F2A24(v8, &unk_280DDBCD0, MEMORY[0x277D74BD0]);
  }

  else
  {
    v13 = *&v1[OBJC_IVAR____TtC19HealthMedicationsUI20SelectionOptionsCell_defaultBackgroundColor];
    sub_228391370();
    return MEMORY[0x22AAB6420](v8);
  }
}

void sub_2282F141C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_2282F1568@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X8>)
{
  v23[1] = a2;
  sub_2282F141C(0, &qword_280DDBCE8, MEMORY[0x277D74AC8], MEMORY[0x277D83D88]);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = v23 - v5;
  v7 = sub_2283912D0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_228391280();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1)
  {
    sub_2282F0A40();
  }

  else
  {
    sub_2282F07CC();
  }

  sub_22820DC6C();
  v18 = &v11[*(v17 + 48)];
  v19 = *MEMORY[0x277D74A98];
  v20 = sub_228391220();
  (*(*(v20 - 8) + 104))(v11, v19, v20);
  *v18 = sub_2281AF1B4;
  v18[1] = 0;
  (*(v8 + 104))(v11, *MEMORY[0x277D74AD8], v7);
  v21 = sub_228391230();
  (*(*(v21 - 8) + 56))(v6, 1, 1, v21);
  sub_228391270();
  sub_2283911D0();
  return (*(v13 + 8))(v16, v12);
}

void sub_2282F1840(unsigned __int8 *a1)
{
  sub_2282F141C(0, &qword_27D827690, type metadata accessor for SelectionEntryItem, MEMORY[0x277D83D88]);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = v24 - v5 + 22;
  v7 = *a1;
  v8 = OBJC_IVAR____TtC19HealthMedicationsUI20SelectionOptionsCell_item;
  swift_beginAccess();
  sub_2282F2B40(v1 + v8, v24, sub_228181D50);
  if (!v25)
  {
    sub_2282F2BA8(v24, sub_228181D50);
    v17 = type metadata accessor for SelectionEntryItem();
    (*(*(v17 - 8) + 56))(v6, 1, 1, v17);
    goto LABEL_7;
  }

  sub_2281810DC(0, &qword_280DDCD60);
  v9 = type metadata accessor for SelectionEntryItem();
  v10 = swift_dynamicCast();
  v11 = *(v9 - 8);
  (*(v11 + 56))(v6, v10 ^ 1u, 1, v9);
  if ((*(v11 + 48))(v6, 1, v9) == 1)
  {
LABEL_7:
    sub_2282F2A24(v6, &qword_27D827690, type metadata accessor for SelectionEntryItem);
    if (v7)
    {
      v13 = sub_2282F0A40();
      goto LABEL_9;
    }

    v12 = 0;
LABEL_12:
    v22 = sub_2282F07CC();
    [v22 setOn_];
    goto LABEL_13;
  }

  v12 = v6[*(v9 + 24)];
  sub_2282F2BA8(v6, type metadata accessor for SelectionEntryItem);
  if ((v7 & 1) == 0)
  {
    goto LABEL_12;
  }

  v13 = sub_2282F0A40();
  if (!v12)
  {
LABEL_9:
    sub_2282F0954();
    v15 = v18;
    v16 = &selRef_secondarySystemFillColor;
    goto LABEL_10;
  }

  sub_2282F0860();
  v15 = v14;
  v16 = &selRef_tintColor;
LABEL_10:
  [v13 setImage_];

  v19 = *(v1 + OBJC_IVAR____TtC19HealthMedicationsUI20SelectionOptionsCell____lazy_storage___accessoryImageView);
  v20 = objc_opt_self();
  v21 = v19;
  v22 = [v20 *v16];
  [v21 setTintColor_];

LABEL_13:
}

uint64_t sub_2282F1B58()
{
  v1 = v0;
  v2 = sub_2283911B0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2282F141C(0, &qword_27D827690, type metadata accessor for SelectionEntryItem, MEMORY[0x277D83D88]);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v32 - v9;
  v11 = type metadata accessor for SelectionEntryItem();
  v12 = *(v11 - 1);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = OBJC_IVAR____TtC19HealthMedicationsUI20SelectionOptionsCell_item;
  swift_beginAccess();
  sub_2282F2B40(v1 + v16, v34, sub_228181D50);
  if (v35)
  {
    sub_2281810DC(0, &qword_280DDCD60);
    v17 = swift_dynamicCast();
    (*(v12 + 56))(v10, v17 ^ 1u, 1, v11);
    if ((*(v12 + 48))(v10, 1, v11) != 1)
    {
      sub_2282F2A94(v10, v15);
      v18 = &v15[v11[9]];
      v19 = *(v18 + 1);
      v20 = v11[6];
      v21 = (v15[v20] & 1) == 0;
      (*v18)(&v15[v11[5]], v21);
      v15[v20] = v21;
      v35 = v11;
      v36 = sub_2282F2AF8(&qword_27D827698, 255, type metadata accessor for SelectionEntryItem);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v34);
      sub_2282F2B40(v15, boxed_opaque_existential_1, type metadata accessor for SelectionEntryItem);
      swift_beginAccess();
      sub_22818FD64(v34, v1 + v16);
      swift_endAccess();
      sub_2282F0AEC();
      sub_2282F2BA8(v34, sub_228181D50);
      return sub_2282F2BA8(v15, type metadata accessor for SelectionEntryItem);
    }
  }

  else
  {
    sub_2282F2BA8(v34, sub_228181D50);
    (*(v12 + 56))(v10, 1, 1, v11);
  }

  sub_2282F2A24(v10, &qword_27D827690, type metadata accessor for SelectionEntryItem);
  sub_228391150();
  v24 = v1;
  v25 = sub_2283911A0();
  v26 = sub_2283925C0();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v33 = v28;
    *v27 = 136446210;
    sub_2282F2B40(v1 + v16, v34, sub_228181D50);
    sub_228181D50();
    v29 = sub_228392040();
    v31 = sub_2281C96FC(v29, v30, &v33);

    *(v27 + 4) = v31;
    _os_log_impl(&dword_22816B000, v25, v26, "Incorrect view model for SelectionOptionsCell: %{public}s", v27, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v28);
    MEMORY[0x22AAB7B80](v28, -1, -1);
    MEMORY[0x22AAB7B80](v27, -1, -1);
  }

  return (*(v3 + 8))(v6, v2);
}

id SelectionOptionsCell.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id SelectionOptionsCell.init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = &v4[OBJC_IVAR____TtC19HealthMedicationsUI20SelectionOptionsCell_item];
  *v9 = 0u;
  *(v9 + 1) = 0u;
  *(v9 + 4) = 0;
  *&v4[OBJC_IVAR____TtC19HealthMedicationsUI20SelectionOptionsCell____lazy_storage___cellSwitch] = 0;
  *&v4[OBJC_IVAR____TtC19HealthMedicationsUI20SelectionOptionsCell____lazy_storage___selectedImage] = 0;
  *&v4[OBJC_IVAR____TtC19HealthMedicationsUI20SelectionOptionsCell____lazy_storage___notSelectedImage] = 0;
  *&v4[OBJC_IVAR____TtC19HealthMedicationsUI20SelectionOptionsCell____lazy_storage___accessoryImageView] = 0;
  v10 = OBJC_IVAR____TtC19HealthMedicationsUI20SelectionOptionsCell_defaultBackgroundColor;
  *&v4[v10] = [objc_opt_self() tertiarySystemBackgroundColor];
  v12.receiver = v4;
  v12.super_class = type metadata accessor for SelectionOptionsCell();
  return objc_msgSendSuper2(&v12, sel_initWithFrame_, a1, a2, a3, a4);
}

id SelectionOptionsCell.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id SelectionOptionsCell.init(coder:)(void *a1)
{
  v3 = &v1[OBJC_IVAR____TtC19HealthMedicationsUI20SelectionOptionsCell_item];
  *v3 = 0u;
  *(v3 + 1) = 0u;
  *(v3 + 4) = 0;
  *&v1[OBJC_IVAR____TtC19HealthMedicationsUI20SelectionOptionsCell____lazy_storage___cellSwitch] = 0;
  *&v1[OBJC_IVAR____TtC19HealthMedicationsUI20SelectionOptionsCell____lazy_storage___selectedImage] = 0;
  *&v1[OBJC_IVAR____TtC19HealthMedicationsUI20SelectionOptionsCell____lazy_storage___notSelectedImage] = 0;
  *&v1[OBJC_IVAR____TtC19HealthMedicationsUI20SelectionOptionsCell____lazy_storage___accessoryImageView] = 0;
  v4 = OBJC_IVAR____TtC19HealthMedicationsUI20SelectionOptionsCell_defaultBackgroundColor;
  *&v1[v4] = [objc_opt_self() tertiarySystemBackgroundColor];
  v7.receiver = v1;
  v7.super_class = type metadata accessor for SelectionOptionsCell();
  v5 = objc_msgSendSuper2(&v7, sel_initWithCoder_, a1);

  if (v5)
  {
  }

  return v5;
}

id SelectionOptionsCell.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SelectionOptionsCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t SelectionOptionsCell.deselectionBehavior(in:)@<X0>(_BYTE *a1@<X8>)
{
  *a1 = 1;
  v2 = *MEMORY[0x277D10F90];
  v3 = sub_22838FFC0();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t _s19HealthMedicationsUI20SelectionOptionsCellC09didSelectF0_2inySo6UIViewC_So0J10ControllerCtF_0()
{
  sub_2282F141C(0, &qword_27D827690, type metadata accessor for SelectionEntryItem, MEMORY[0x277D83D88]);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = v13 - v3 + 22;
  v5 = OBJC_IVAR____TtC19HealthMedicationsUI20SelectionOptionsCell_item;
  swift_beginAccess();
  sub_2282F2B40(v0 + v5, v13, sub_228181D50);
  if (!v14)
  {
    sub_2282F2BA8(v13, sub_228181D50);
    v11 = type metadata accessor for SelectionEntryItem();
    (*(*(v11 - 8) + 56))(v4, 1, 1, v11);
    return sub_2282F2A24(v4, &qword_27D827690, type metadata accessor for SelectionEntryItem);
  }

  sub_2281810DC(0, &qword_280DDCD60);
  v6 = type metadata accessor for SelectionEntryItem();
  v7 = swift_dynamicCast();
  v8 = *(v6 - 8);
  (*(v8 + 56))(v4, v7 ^ 1u, 1, v6);
  if ((*(v8 + 48))(v4, 1, v6) == 1)
  {
    return sub_2282F2A24(v4, &qword_27D827690, type metadata accessor for SelectionEntryItem);
  }

  v9 = v4[*(v6 + 32)];
  result = sub_2282F2BA8(v4, type metadata accessor for SelectionEntryItem);
  if (v9 == 1)
  {
    return sub_2282F1B58();
  }

  return result;
}

unint64_t sub_2282F26F4()
{
  result = qword_27D827660;
  if (!qword_27D827660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D827660);
  }

  return result;
}

void sub_2282F2808()
{
  sub_22838F4A0();
  if (v0 <= 0x3F)
  {
    sub_2281810DC(319, &qword_27D827688);
    if (v1 <= 0x3F)
    {
      sub_2282F141C(319, &qword_280DDB978, sub_2282F2914, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        sub_2281C35D8();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

unint64_t sub_2282F2914()
{
  result = qword_280DDB980;
  if (!qword_280DDB980)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280DDB980);
  }

  return result;
}

uint64_t sub_2282F2A24(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_2282F141C(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_2282F2A94(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SelectionEntryItem();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2282F2AF8(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_2282F2B40(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2282F2BA8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2282F2C08(uint64_t a1)
{
  v26 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = sub_2283930D0();
    result = MEMORY[0x277D84F90];
    if (!v2)
    {
      return result;
    }

    v31 = MEMORY[0x277D84F90];
    sub_228393240();
    result = sub_228393070();
    v28 = result;
    v29 = v4;
    v30 = 1;
    if ((v2 & 0x8000000000000000) == 0)
    {
      goto LABEL_7;
    }

    __break(1u);
  }

  v2 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (!v2)
  {
    return result;
  }

  v31 = MEMORY[0x277D84F90];
  sub_228393240();
  v5 = -1 << *(a1 + 32);
  result = sub_228393040();
  v6 = *(a1 + 36);
  v28 = result;
  v29 = v6;
  v30 = 0;
LABEL_7:
  v7 = 0;
  while (v7 < v2)
  {
    if (__OFADD__(v7++, 1))
    {
      goto LABEL_31;
    }

    v11 = v28;
    v10 = v29;
    v12 = v30;
    sub_2282D96A0(v28, v29, v30, a1);
    v14 = v13;
    v15 = [v13 severity];

    sub_228393210();
    v16 = *(v31 + 16);
    sub_228393250();
    sub_228393260();
    result = sub_228393220();
    if (v26)
    {
      if (!v12)
      {
        goto LABEL_35;
      }

      if (sub_228393090())
      {
        swift_isUniquelyReferenced_nonNull_native();
      }

      sub_2282F3FB4();
      v8 = sub_2283924A0();
      sub_228393130();
      result = v8(v27, 0);
      if (v7 == v2)
      {
LABEL_28:
        sub_228205ADC(v28, v29, v30);
        return v31;
      }
    }

    else
    {
      if (v12)
      {
        goto LABEL_36;
      }

      if ((v11 & 0x8000000000000000) != 0)
      {
        goto LABEL_32;
      }

      v17 = 1 << *(a1 + 32);
      if (v11 >= v17)
      {
        goto LABEL_32;
      }

      v18 = v11 >> 6;
      v19 = *(a1 + 56 + 8 * (v11 >> 6));
      if (((v19 >> v11) & 1) == 0)
      {
        goto LABEL_33;
      }

      if (*(a1 + 36) != v10)
      {
        goto LABEL_34;
      }

      v20 = v19 & (-2 << (v11 & 0x3F));
      if (v20)
      {
        v17 = __clz(__rbit64(v20)) | v11 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v21 = v18 << 6;
        v22 = v18 + 1;
        v23 = (a1 + 64 + 8 * v18);
        while (v22 < (v17 + 63) >> 6)
        {
          v25 = *v23++;
          v24 = v25;
          v21 += 64;
          ++v22;
          if (v25)
          {
            result = sub_228205ADC(v11, v10, 0);
            v17 = __clz(__rbit64(v24)) + v21;
            goto LABEL_27;
          }
        }

        result = sub_228205ADC(v11, v10, 0);
      }

LABEL_27:
      v28 = v17;
      v29 = v10;
      v30 = 0;
      if (v7 == v2)
      {
        goto LABEL_28;
      }
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
  return result;
}

uint64_t Set<>.severities(filtering:includeMinorInteractions:)(void *a1, char a2)
{
  v4 = a1;

  v6 = sub_2282F3BC8(v5, a1);

  v7 = sub_2282F30A4(v6);

  v16 = MEMORY[0x277D84F90];
  if (v7 >> 62)
  {
    goto LABEL_17;
  }

  for (i = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_2283930D0())
  {
    v9 = 0;
    while (1)
    {
      if ((v7 & 0xC000000000000001) != 0)
      {
        v11 = MEMORY[0x22AAB6D80](v9, v7);
      }

      else
      {
        if (v9 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_16;
        }

        v11 = *(v7 + 8 * v9 + 32);
      }

      v12 = v11;
      v13 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      if ((a2 & 1) != 0 || [v11 severityLevel] != 4)
      {
        sub_228393210();
        v10 = *(v16 + 16);
        sub_228393250();
        sub_228393260();
        sub_228393220();
      }

      else
      {
      }

      ++v9;
      if (v13 == i)
      {
        v14 = v16;
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    ;
  }

  v14 = MEMORY[0x277D84F90];
LABEL_19:

  return v14;
}

uint64_t sub_2282F30A4(uint64_t a1)
{
  v2 = v1;
  v3 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_228393080();
    sub_22817A958(0, &qword_280DDB9F0, 0x277D11550);
    sub_2281A89C4(&qword_280DDB9E8, &qword_280DDB9F0, 0x277D11550);
    result = sub_2283924C0();
    v3 = v49[4];
    v5 = v49[5];
    v6 = v49[6];
    v7 = v49[7];
    v8 = v49[8];
  }

  else
  {
    v9 = -1 << *(a1 + 32);
    v5 = a1 + 56;
    v6 = ~v9;
    v10 = -v9;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v8 = v11 & *(a1 + 56);

    v7 = 0;
  }

  v12 = (v6 + 64) >> 6;
  v47 = MEMORY[0x277D84F90];
  v42 = v3;
  v44 = v5;
  while (v3 < 0)
  {
    v17 = sub_228393100();
    if (!v17)
    {
      goto LABEL_48;
    }

    v49[10] = v17;
    sub_22817A958(0, &qword_280DDB9F0, 0x277D11550);
    swift_dynamicCast();
    v16 = v49[0];
    v15 = v7;
    v46 = v8;
    if (!v49[0])
    {
      goto LABEL_48;
    }

LABEL_18:
    v18 = [v16 interactions];
    sub_22817A958(0, &qword_280DDBA10, 0x277D11518);
    sub_2281A89C4(&qword_280DDBA08, &qword_280DDBA10, 0x277D11518);
    v19 = sub_228392480();

    v20 = sub_2282F2C08(v19);

    v21 = v20 >> 62;
    if (v20 >> 62)
    {
      v22 = sub_2283930D0();
    }

    else
    {
      v22 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v23 = v47;
    v24 = v47 >> 62;
    v48 = v22;
    if (v47 >> 62)
    {
      v41 = sub_2283930D0();
      v26 = v41 + v48;
      if (__OFADD__(v41, v48))
      {
LABEL_47:
        __break(1u);
LABEL_48:
        sub_228176F04();
        return v47;
      }
    }

    else
    {
      v25 = *((v47 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v26 = v25 + v22;
      if (__OFADD__(v25, v22))
      {
        goto LABEL_47;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    if (!result)
    {
      if (v24)
      {
LABEL_29:
        sub_2283930D0();
      }

      else
      {
        v27 = v47 & 0xFFFFFFFFFFFFFF8;
LABEL_28:
        v28 = *(v27 + 16);
      }

      result = sub_2283931F0();
      v23 = result;
      v27 = result & 0xFFFFFFFFFFFFFF8;
      goto LABEL_31;
    }

    if (v24)
    {
      goto LABEL_29;
    }

    v27 = v47 & 0xFFFFFFFFFFFFFF8;
    if (v26 > *((v47 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      goto LABEL_28;
    }

LABEL_31:
    v29 = *(v27 + 16);
    v30 = *(v27 + 24);
    if (v21)
    {
      v32 = v27;
      result = sub_2283930D0();
      v27 = v32;
      v31 = result;
    }

    else
    {
      v31 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v47 = v23;
    if (v31)
    {
      if (((v30 >> 1) - v29) < v48)
      {
        goto LABEL_51;
      }

      v45 = v2;
      v33 = v27 + 8 * v29 + 32;
      v43 = v27;
      if (v21)
      {
        if (v31 < 1)
        {
          goto LABEL_53;
        }

        sub_2282F3EF4();
        sub_2282F3F5C();
        for (i = 0; i != v31; ++i)
        {
          v35 = sub_2281CB85C(v49, i, v20);
          v37 = *v36;
          (v35)(v49, 0);
          *(v33 + 8 * i) = v37;
        }
      }

      else
      {
        sub_22817A958(0, &qword_280DDB9F8, 0x277D11520);
        swift_arrayInitWithCopy();
      }

      v2 = v45;
      v7 = v15;
      v8 = v46;
      v3 = v42;
      v12 = (v6 + 64) >> 6;
      v5 = v44;
      if (v48 >= 1)
      {
        v38 = *(v43 + 16);
        v39 = __OFADD__(v38, v48);
        v40 = v38 + v48;
        if (v39)
        {
          goto LABEL_52;
        }

        *(v43 + 16) = v40;
        v7 = v15;
        v8 = v46;
      }
    }

    else
    {

      v7 = v15;
      v8 = v46;
      v12 = (v6 + 64) >> 6;
      v5 = v44;
      if (v48 > 0)
      {
        goto LABEL_50;
      }
    }
  }

  v13 = v7;
  v14 = v8;
  v15 = v7;
  if (v8)
  {
LABEL_14:
    v46 = (v14 - 1) & v14;
    v16 = *(*(v3 + 48) + ((v15 << 9) | (8 * __clz(__rbit64(v14)))));
    if (!v16)
    {
      goto LABEL_48;
    }

    goto LABEL_18;
  }

  while (1)
  {
    v15 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v15 >= v12)
    {
      goto LABEL_48;
    }

    v14 = *(v5 + 8 * v15);
    ++v13;
    if (v14)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
  return result;
}

unint64_t *sub_2282F3584(unint64_t *result, uint64_t a2, uint64_t a3, void *a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v8 = a4;
    sub_2282F361C(v7, a2, a3, a4);
    v10 = v9;

    return v10;
  }

  return result;
}

void sub_2282F361C(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v25 = a2;
  v26 = a1;
  v27 = 0;
  v5 = 0;
  v29 = a3;
  v6 = a3 + 56;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 56);
  v10 = (v7 + 63) >> 6;
  while (v9)
  {
    v11 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_11:
    v28 = v11 | (v5 << 6);
    if (!a4)
    {
      goto LABEL_16;
    }

    v14 = *(*(v29 + 48) + 8 * (v11 | (v5 << 6)));
    v15 = [a4 firstConceptIdentifier];
    if (v15)
    {
      v16 = v15;
      v17 = [v14 conceptIdentifiers];
      sub_22817A958(0, &qword_27D823BE0, 0x277CCD1D0);
      v18 = sub_2283921A0();
      v30 = v9;
      v19 = v18;

      v32 = v16;
      MEMORY[0x28223BE20](v20);
      v24[2] = &v32;
      v21 = v31;
      LOBYTE(v17) = sub_228309FEC(sub_2282F4068, v24, v19);
      v31 = v21;

      v9 = v30;

      if (v17)
      {
        goto LABEL_16;
      }
    }

    else
    {

LABEL_16:
      *(v26 + ((v28 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v28;
      if (__OFADD__(v27++, 1))
      {
        __break(1u);
LABEL_19:
        v23 = v29;

        sub_22827AC30(v26, v25, v27, v23);
        return;
      }
    }
  }

  v12 = v5;
  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= v10)
    {
      goto LABEL_19;
    }

    v13 = *(v6 + 8 * v5);
    ++v12;
    if (v13)
    {
      v11 = __clz(__rbit64(v13));
      v9 = (v13 - 1) & v13;
      goto LABEL_11;
    }
  }

  __break(1u);
}

uint64_t sub_2282F3860(uint64_t a1, void *a2)
{
  v3 = v2;
  v4 = a1;
  v39[1] = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 32);
  v6 = v5 & 0x3F;
  v7 = ((1 << v5) + 63) >> 6;
  v8 = (8 * v7);
  v35 = a2;
  v9 = a2;
  v36 = v9;
  if (v6 > 0xD)
  {
    goto LABEL_23;
  }

  while (2)
  {
    v38 = v3;
    v30[1] = v30;
    v31 = v7;
    MEMORY[0x28223BE20](v9);
    v32 = v30 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v32, v8);
    v33 = 0;
    v7 = 0;
    v3 = v4 + 56;
    v10 = 1 << *(v4 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(v4 + 56);
    v13 = (v10 + 63) >> 6;
    while (v12)
    {
      v14 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_12:
      v34 = v14 | (v7 << 6);
      if (!v35)
      {
        goto LABEL_17;
      }

      v17 = v4;
      v8 = *(*(v4 + 48) + 8 * (v14 | (v7 << 6)));
      v18 = [v36 firstConceptIdentifier];
      if (v18)
      {
        v19 = v18;
        v20 = [v8 conceptIdentifiers];
        sub_22817A958(0, &qword_27D823BE0, 0x277CCD1D0);
        v21 = sub_2283921A0();

        v37 = v12;
        v39[0] = v19;
        MEMORY[0x28223BE20](v22);
        v30[-2] = v39;
        v23 = v38;
        LOBYTE(v20) = sub_228309FEC(sub_2282F4068, &v30[-4], v21);
        v38 = v23;

        v12 = v37;
        v4 = v17;
        if (v20)
        {
          goto LABEL_17;
        }
      }

      else
      {

LABEL_17:
        *&v32[(v34 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v34;
        if (__OFADD__(v33++, 1))
        {
          __break(1u);
LABEL_20:
          v25 = sub_22827AC30(v32, v31, v33, v4);

          goto LABEL_21;
        }
      }
    }

    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v7 >= v13)
      {
        goto LABEL_20;
      }

      v16 = *(v3 + 8 * v7);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_23:

    if (swift_stdlib_isStackAllocationSafe())
    {

      continue;
    }

    break;
  }

  v28 = swift_slowAlloc();
  v29 = v36;
  v25 = sub_2282F3584(v28, v7, v4, v35);

  MEMORY[0x22AAB7B80](v28, -1, -1);

LABEL_21:
  v26 = *MEMORY[0x277D85DE8];
  return v25;
}

uint64_t sub_2282F3BC8(uint64_t a1, void *a2)
{
  v3 = v2;
  if ((a1 & 0xC000000000000001) == 0)
  {
    return sub_2282F3860(a1, a2);
  }

  v5 = MEMORY[0x277D84FA0];
  v34 = MEMORY[0x277D84FA0];
  v31 = a2;
  v6 = sub_228393080();
  v7 = sub_228393100();
  if (v7)
  {
    v8 = v7;
    sub_22817A958(0, &qword_280DDB9F0, 0x277D11550);
    v9 = v8;
    v30[4] = v6;
    while (1)
    {
      v32 = v9;
      swift_dynamicCast();
      v17 = v33;
      if (!a2)
      {
        goto LABEL_21;
      }

      v18 = [v31 firstConceptIdentifier];
      if (!v18)
      {
        break;
      }

      v19 = v18;
      v20 = [v17 conceptIdentifiers];
      sub_22817A958(0, &qword_27D823BE0, 0x277CCD1D0);
      v21 = sub_2283921A0();

      v32 = v19;
      MEMORY[0x28223BE20](v22);
      v30[2] = &v32;
      v23 = v3;
      v24 = sub_228309FEC(sub_2282F4048, v30, v21);

      v17 = v33;
      if (v24)
      {
        v3 = v23;
LABEL_21:
        v29 = *(v5 + 16);
        if (*(v5 + 24) <= v29)
        {
          sub_2282D7530(v29 + 1);
        }

        v5 = v34;
        v10 = *(v34 + 40);
        result = sub_228392C50();
        v12 = v5 + 56;
        v13 = -1 << *(v5 + 32);
        v14 = result & ~v13;
        v15 = v14 >> 6;
        if (((-1 << v14) & ~*(v5 + 56 + 8 * (v14 >> 6))) != 0)
        {
          v16 = __clz(__rbit64((-1 << v14) & ~*(v5 + 56 + 8 * (v14 >> 6)))) | v14 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v25 = 0;
          v26 = (63 - v13) >> 6;
          do
          {
            if (++v15 == v26 && (v25 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v27 = v15 == v26;
            if (v15 == v26)
            {
              v15 = 0;
            }

            v25 |= v27;
            v28 = *(v12 + 8 * v15);
          }

          while (v28 == -1);
          v16 = __clz(__rbit64(~v28)) + (v15 << 6);
        }

        *(v12 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
        *(*(v5 + 48) + 8 * v16) = v17;
        ++*(v5 + 16);
        goto LABEL_7;
      }

      v3 = v23;
LABEL_7:
      v9 = sub_228393100();
      if (!v9)
      {
        goto LABEL_24;
      }
    }

    v17 = v33;
    goto LABEL_21;
  }

LABEL_24:

  return v5;
}

void sub_2282F3EF4()
{
  if (!qword_27D8276A0)
  {
    sub_22817A958(255, &qword_280DDB9F8, 0x277D11520);
    v0 = sub_228392240();
    if (!v1)
    {
      atomic_store(v0, &qword_27D8276A0);
    }
  }
}

unint64_t sub_2282F3F5C()
{
  result = qword_27D8276A8;
  if (!qword_27D8276A8)
  {
    sub_2282F3EF4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8276A8);
  }

  return result;
}

void sub_2282F3FB4()
{
  if (!qword_280DDBB20)
  {
    sub_22817A958(255, &qword_280DDBA10, 0x277D11518);
    sub_2281A89C4(&qword_280DDBA08, &qword_280DDBA10, 0x277D11518);
    v0 = sub_2283924B0();
    if (!v1)
    {
      atomic_store(v0, &qword_280DDBB20);
    }
  }
}

uint64_t static UIButton.makeCriticalInteractionButton()()
{
  if (qword_280DDCF18 != -1)
  {
    swift_once();
  }

  v0 = sub_22838F0C0();
  _sSo8UIButtonC19HealthMedicationsUIE21makeExclamationButton5title29accessibilityIdentifierSuffixABSS_SStFZ_0(v0, v1, 0xD000000000000014, 0x80000002283A7590);
  v3 = v2;

  return v3;
}

uint64_t static UIButton.makeCriticalPregnancyInteractionButton()()
{
  if (qword_27D823310 != -1)
  {
    swift_once();
  }

  v0 = sub_22838F0C0();
  _sSo8UIButtonC19HealthMedicationsUIE21makeExclamationButton5title29accessibilityIdentifierSuffixABSS_SStFZ_0(v0, v1, 0xD000000000000012, 0x80000002283ABE90);
  v3 = v2;

  return v3;
}

uint64_t static UIButton.makeCriticalLactationInteractionButton()()
{
  if (qword_27D823310 != -1)
  {
    swift_once();
  }

  v0 = sub_22838F0C0();
  _sSo8UIButtonC19HealthMedicationsUIE21makeExclamationButton5title29accessibilityIdentifierSuffixABSS_SStFZ_0(v0, v1, 0xD000000000000012, 0x80000002283ABEE0);
  v3 = v2;

  return v3;
}

uint64_t static UIButton.makeCriticalButton()()
{
  if (qword_27D823310 != -1)
  {
    swift_once();
  }

  v0 = sub_22838F0C0();
  _sSo8UIButtonC19HealthMedicationsUIE21makeExclamationButton5title29accessibilityIdentifierSuffixABSS_SStFZ_0(v0, v1, 0x616369746972432ELL, 0xE90000000000006CLL);
  v3 = v2;

  return v3;
}

uint64_t sub_2282F43A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_22838F0D0();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  v5 = [objc_opt_self() systemBlackColor];
  sub_2282F4BD0();
  sub_22838F0E0();
  sub_22817A958(0, &qword_280DDB9C0, 0x277D74300);
  v6 = *MEMORY[0x277D769D0];
  v7 = *MEMORY[0x277D74420];
  sub_228392AD0();
  sub_2282F4C24();
  return sub_22838F0E0();
}

void _sSo8UIButtonC19HealthMedicationsUIE21makeExclamationButton5title29accessibilityIdentifierSuffixABSS_SStFZ_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v53 = a3;
  v54 = a4;
  v55 = a2;
  sub_2282F4B78();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_228392D80();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_228392CC0();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v50 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_228392DE0();
  v51 = *(v19 - 8);
  v52 = v19;
  v20 = *(v51 + 64);
  v21 = MEMORY[0x28223BE20](v19);
  v23 = &v50 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = &v50 - v24;
  sub_228392DC0();
  (*(v15 + 104))(v18, *MEMORY[0x277D74FD8], v14);
  sub_228392CD0();
  v26 = objc_opt_self();
  v27 = [v26 hk_alertHeaderForegroundColor];
  sub_228392D60();
  v28 = [v26 hk_alertHeaderBackgroundColor];
  sub_228392D50();
  (*(v10 + 104))(v13, *MEMORY[0x277D75028], v9);
  sub_228392CB0();
  v56 = 9011426;
  v57 = 0xA300000000000000;
  MEMORY[0x22AAB5C80](a1, v55);
  sub_228392DB0();
  sub_228391660();
  v29 = sub_228391650();
  (*(*(v29 - 8) + 56))(v8, 0, 1, v29);
  sub_228392D70();
  sub_22817A958(0, &qword_280DDB9C0, 0x277D74300);
  v30 = *MEMORY[0x277D769D0];
  v31 = sub_228392AD0();
  v32 = objc_opt_self();
  v33 = [v32 configurationWithFont:v31 scale:1];

  sub_228180ED0();
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_228397F20;
  *(v34 + 32) = [v26 systemYellowColor];
  *(v34 + 40) = [v26 systemBlackColor];
  sub_22817A958(0, &qword_280DDB990, 0x277D75348);
  v35 = sub_228392190();

  v36 = [v32 configurationWithPaletteColors_];

  v37 = v33;
  v38 = sub_228391FC0();
  v39 = [objc_opt_self() systemImageNamed:v38 withConfiguration:v37];

  if (v39)
  {
    v40 = [v39 imageByApplyingSymbolConfiguration_];

    v41 = v40;
    sub_228392D90();
    sub_22817A958(0, &unk_280DDB940, 0x277D75220);
    v43 = v51;
    v42 = v52;
    (*(v51 + 16))(v23, v25, v52);
    v44 = sub_228392DF0();
    [v44 setTranslatesAutoresizingMaskIntoConstraints_];
    v45 = [v44 titleLabel];
    [v45 setAdjustsFontForContentSizeCategory_];

    LODWORD(v46) = 1148846080;
    [v44 setContentHuggingPriority:0 forAxis:v46];
    [v44 setUserInteractionEnabled_];
    v47 = *MEMORY[0x277D12788];
    v56 = sub_228392000();
    v57 = v48;

    MEMORY[0x22AAB5C80](0x6E6F747475422ELL, 0xE700000000000000);

    MEMORY[0x22AAB5C80](v53, v54);

    v49 = sub_228391FC0();

    [v44 setAccessibilityIdentifier_];

    [v44 setTintAdjustmentMode_];
    (*(v43 + 8))(v25, v42);
  }

  else
  {
    __break(1u);
  }
}

void sub_2282F4B78()
{
  if (!qword_27D8276B0)
  {
    sub_228391650();
    v0 = sub_228392F00();
    if (!v1)
    {
      atomic_store(v0, &qword_27D8276B0);
    }
  }
}

unint64_t sub_2282F4BD0()
{
  result = qword_27D8276B8;
  if (!qword_27D8276B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8276B8);
  }

  return result;
}

unint64_t sub_2282F4C24()
{
  result = qword_27D8276C0;
  if (!qword_27D8276C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8276C0);
  }

  return result;
}

uint64_t type metadata accessor for ManaulFormsDataSource()
{
  result = qword_27D8276C8;
  if (!qword_27D8276C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2282F4D1C(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_2283407FC(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_2282F61B0(v5);
  *a1 = v2;
  return result;
}

void *sub_2282F4D88(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  swift_allocObject();
  v7 = sub_2282F6D70(a1, a2);

  return v7;
}

uint64_t sub_2282F4DE4()
{
  v1 = MEMORY[0x22AAB6620]();
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = 0;
    v4 = *(v0 + qword_27D828E68);
    v5 = MEMORY[0x277D84F90];
    do
    {
      v8 = *(v1 + 32 + 8 * v3);
      v9 = *(v4 + 16);
      v10 = (v4 + 32);
      while (v9)
      {
        v11 = *v10++;
        --v9;
        if (v11 == v8)
        {
          goto LABEL_6;
        }
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_2281C9E64(0, *(v5 + 16) + 1, 1);
      }

      v7 = *(v5 + 16);
      v6 = *(v5 + 24);
      if (v7 >= v6 >> 1)
      {
        sub_2281C9E64((v6 > 1), v7 + 1, 1);
      }

      *(v5 + 16) = v7 + 1;
      *(v5 + 8 * v7 + 32) = v8;
LABEL_6:
      ++v3;
    }

    while (v3 != v2);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return v5;
}

uint64_t sub_2282F4F18(uint64_t a1)
{
  if (a1 == 2)
  {
    if (qword_280DDCF18 == -1)
    {
      return sub_22838F0C0();
    }

LABEL_8:
    swift_once();
    return sub_22838F0C0();
  }

  if (!a1)
  {
    if (qword_280DDCF18 == -1)
    {
      return sub_22838F0C0();
    }

    goto LABEL_8;
  }

  return 0;
}

uint64_t sub_2282F502C()
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

uint64_t sub_2282F5100()
{
  v1 = sub_228390170();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = v0;
  v6 = *(v0 + qword_27D828E68);
  v7 = *(v6 + 16);
  v8 = MEMORY[0x277D84F90];
  if (v7)
  {
    v20 = MEMORY[0x277D84F90];
    sub_2281C9DB4(0, v7, 0);
    v8 = v20;
    v9 = (v6 + 32);
    do
    {
      v10 = *v9++;
      sub_2282F52B4(v10, v5);
      v20 = v8;
      v12 = *(v8 + 16);
      v11 = *(v8 + 24);
      if (v12 >= v11 >> 1)
      {
        sub_2281C9DB4((v11 > 1), v12 + 1, 1);
      }

      v18 = v1;
      v19 = sub_2282F6EDC();
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v17);
      (*(v2 + 16))(boxed_opaque_existential_1, v5, v1);
      v8 = v20;
      *(v20 + 16) = v12 + 1;
      sub_22816DFFC(&v17, v8 + 40 * v12 + 32);
      (*(v2 + 8))(v5, v1);
      --v7;
    }

    while (v7);
  }

  return v8;
}

uint64_t sub_2282F52B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v90 = a2;
  v75 = *v2;
  v4 = sub_228390460();
  v88 = *(v4 - 8);
  v89 = v4;
  v5 = *(v88 + 64);
  MEMORY[0x28223BE20](v4);
  v87 = &v70 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x277D83D88];
  sub_2282F6FA4(0, &unk_280DDBCD0, MEMORY[0x277D74BD0], MEMORY[0x277D83D88]);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v86 = &v70 - v10;
  v11 = sub_22838FFC0();
  v82 = *(v11 - 8);
  v83 = v11;
  v12 = *(v82 + 64);
  MEMORY[0x28223BE20](v11);
  v84 = &v70 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_228391220();
  v79 = *(v14 - 8);
  v80 = v14;
  v15 = *(v79 + 64);
  MEMORY[0x28223BE20](v14);
  v78 = &v70 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2282F6FA4(0, &qword_280DDBCE8, MEMORY[0x277D74AC8], v7);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v73 = &v70 - v19;
  v77 = sub_228391250();
  v76 = *(v77 - 8);
  v20 = *(v76 + 64);
  MEMORY[0x28223BE20](v77);
  v74 = &v70 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for FormStepResult();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  v25 = MEMORY[0x28223BE20](v22);
  v27 = (&v70 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v25);
  v29 = &v70 - v28;
  sub_2282F6FA4(0, &unk_27D827790, type metadata accessor for FormStepResult, v7);
  v31 = *(*(v30 - 8) + 64);
  MEMORY[0x28223BE20](v30 - 8);
  v33 = &v70 - v32;
  v34 = sub_228391590();
  v81 = *(v34 - 8);
  v35 = *(v81 + 64);
  MEMORY[0x28223BE20](v34);
  v37 = &v70 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228391520();
  v85 = a1;
  sub_228392A60();
  sub_228391540();
  v72 = objc_opt_self();
  v38 = [v72 labelColor];
  v91 = v37;
  v39 = sub_228391450();
  sub_228391420();
  v39(&v94, 0);
  v40 = v71;
  v41 = *(v71 + qword_27D8252A8);
  sub_228391870();
  if ((*(v23 + 48))(v33, 1, v22))
  {
    sub_2282F6F34(v33, &unk_27D827790, type metadata accessor for FormStepResult);
LABEL_6:
    v43 = v85;
    goto LABEL_7;
  }

  sub_228234878(v33, v29);
  sub_2282F6F34(v33, &unk_27D827790, type metadata accessor for FormStepResult);
  sub_2282F7010(v29, v27);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_2282F7074(v27);
    goto LABEL_6;
  }

  v42 = *v27;
  v43 = v85;
LABEL_7:
  v94 = sub_228393600();
  v95 = v44;
  MEMORY[0x22AAB5C80](0x5F6D726F665FLL, 0xE600000000000000);
  v92 = v43;
  v45 = sub_228393420();
  MEMORY[0x22AAB5C80](v45);

  v85 = v94;
  v75 = v95;
  v96 = v34;
  v97 = MEMORY[0x277D74C30];
  v46 = __swift_allocate_boxed_opaque_existential_1(&v94);
  v47 = v81;
  (*(v81 + 16))(v46, v91, v34);
  sub_2282F6FA4(0, &unk_280DDB890, MEMORY[0x277D74AE0], MEMORY[0x277D84560]);
  v48 = *(sub_2283912F0() - 8);
  v49 = *(v48 + 72);
  v50 = (*(v48 + 80) + 32) & ~*(v48 + 80);
  v51 = swift_allocObject();
  *(v51 + 16) = xmmword_228397F40;
  v70 = v51;
  v52 = sub_228391230();
  (*(*(v52 - 8) + 56))(v73, 1, 1, v52);
  v53 = v74;
  sub_228391240();
  v55 = v78;
  v54 = v79;
  v56 = v80;
  (*(v79 + 104))(v78, *MEMORY[0x277D74A98], v80);
  sub_2283912E0();
  (*(v54 + 8))(v55, v56);
  (*(v76 + 8))(v53, v77);
  v57 = swift_allocObject();
  swift_weakInit();
  v58 = swift_allocObject();
  *(v58 + 16) = v57;
  *(v58 + 24) = v43;
  v80 = v34;
  v59 = v83;
  v60 = v84;
  *v84 = 1;
  (*(v82 + 104))(v60, *MEMORY[0x277D10F90], v59);

  v61 = v86;
  sub_228391390();
  v62 = [v72 secondarySystemBackgroundColor];
  sub_228391370();
  v63 = sub_2283913A0();
  (*(*(v63 - 8) + 56))(v61, 0, 1, v63);
  v65 = *(v40 + qword_27D828E70);
  v64 = *(v40 + qword_27D828E70 + 8);
  v92 = 46;
  v93 = 0xE100000000000000;
  v66 = sub_228392A60();
  MEMORY[0x22AAB5C80](v66);

  v67 = v92;
  v68 = v93;
  v92 = v65;
  v93 = v64;

  MEMORY[0x22AAB5C80](v67, v68);

  (*(v88 + 104))(v87, *MEMORY[0x277D11140], v89);
  sub_228390160();
  (*(v47 + 8))(v91, v80);
}

uint64_t sub_2282F5CE4()
{
  v16 = sub_228390170();
  v1 = *(v16 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v16);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = v0;
  *&v18 = sub_2282F4DE4();

  sub_2282F4D1C(&v18);

  v5 = v18;
  v6 = *(v18 + 16);
  if (v6)
  {
    v21 = MEMORY[0x277D84F90];
    sub_2281C9DB4(0, v6, 0);
    v7 = v21;
    v8 = 32;
    do
    {
      v9 = v5;
      sub_2282F52B4(*(v5 + v8), v4);
      v21 = v7;
      v11 = *(v7 + 16);
      v10 = *(v7 + 24);
      if (v11 >= v10 >> 1)
      {
        sub_2281C9DB4((v10 > 1), v11 + 1, 1);
      }

      v12 = v16;
      v19 = v16;
      v20 = sub_2282F6EDC();
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v18);
      (*(v1 + 16))(boxed_opaque_existential_1, v4, v12);
      v7 = v21;
      *(v21 + 16) = v11 + 1;
      sub_22816DFFC(&v18, v7 + 40 * v11 + 32);
      (*(v1 + 8))(v4, v12);
      v8 += 8;
      --v6;
      v5 = v9;
    }

    while (v6);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return v7;
}

uint64_t sub_2282F5EF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2282F6FA4(0, &unk_27D827790, type metadata accessor for FormStepResult, MEMORY[0x277D83D88]);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = (&v11 - v6);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v9 = *(result + qword_27D8252A8);

    *v7 = a3;
    v10 = type metadata accessor for FormStepResult();
    swift_storeEnumTagMultiPayload();
    (*(*(v10 - 8) + 56))(v7, 0, 1, v10);
    sub_228391850();

    return sub_2282F6F34(v7, &unk_27D827790, type metadata accessor for FormStepResult);
  }

  return result;
}

uint64_t sub_2282F6070()
{
  v1 = *(v0 + qword_27D828E68);

  v2 = *(v0 + qword_27D828E70 + 8);
}

uint64_t sub_2282F60B4()
{
  v0 = sub_22838FFB0();
  v1 = *(v0 + qword_27D8252A8);

  sub_2282F6F34(v0 + qword_27D828B70, &qword_27D8238D0, type metadata accessor for MedicationSearchItem);
  v2 = *(v0 + qword_27D8252B0);

  v3 = *(v0 + qword_27D828E68);

  v4 = *(v0 + qword_27D828E70 + 8);

  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_2282F61B0(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_228393410();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x277D84F90];
      }

      else
      {
        type metadata accessor for HKMedicationFreeTextFormTypeCode(0);
        v5 = sub_228392220();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_2282F63BC(v7, v8, a1, v4);
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
    return sub_2282F62AC(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_2282F62AC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v5 = *a4;
    v6 = *a4 + 8 * a3 - 8;
    v7 = result - a3;
LABEL_6:
    v8 = *(v5 + 8 * v4);
    v9 = v7;
    v10 = v6;
    while (1)
    {
      v11 = *v10;
      v12 = sub_228392A60();
      v14 = v13;
      if (v12 == sub_228392A60() && v14 == v15)
      {

LABEL_5:
        ++v4;
        v6 += 8;
        --v7;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_6;
      }

      v17 = sub_228393460();

      if ((v17 & 1) == 0)
      {
        goto LABEL_5;
      }

      if (!v5)
      {
        break;
      }

      v18 = *v10;
      result = v10[1];
      *v10 = result;
      v10[1] = v18;
      --v10;
      if (__CFADD__(v9++, 1))
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_2282F63BC(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a3;
  v108 = result;
  v7 = a3[1];
  if (v7 < 1)
  {
    v9 = MEMORY[0x277D84F90];
LABEL_107:
    v7 = *v108;
    if (!*v108)
    {
      goto LABEL_146;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
LABEL_109:
      v99 = v5;
      v100 = *(v9 + 2);
      if (v100 >= 2)
      {
        while (*v6)
        {
          v5 = v100 - 1;
          v101 = *&v9[16 * v100];
          v102 = *&v9[16 * v100 + 24];
          sub_2282F6A7C((*v6 + 8 * v101), (*v6 + 8 * *&v9[16 * v100 + 16]), (*v6 + 8 * v102), v7);
          if (v99)
          {
          }

          if (v102 < v101)
          {
            goto LABEL_133;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v9 = sub_2283406C0(v9);
          }

          if (v100 - 2 >= *(v9 + 2))
          {
            goto LABEL_134;
          }

          v103 = &v9[16 * v100];
          *v103 = v101;
          *(v103 + 1) = v102;
          result = sub_228340634(v100 - 1);
          v100 = *(v9 + 2);
          if (v100 <= 1)
          {
          }
        }

        goto LABEL_144;
      }
    }

LABEL_140:
    result = sub_2283406C0(v9);
    v9 = result;
    goto LABEL_109;
  }

  v8 = 0;
  v9 = MEMORY[0x277D84F90];
  while (2)
  {
    v10 = v8;
    v11 = v8 + 1;
    if (v8 + 1 >= v7)
    {
      goto LABEL_34;
    }

    v12 = *v6;
    v13 = *(*v6 + 8 * v11);
    v14 = *(*v6 + 8 * v8);
    v15 = sub_228392A60();
    v17 = v16;
    if (v15 == sub_228392A60() && v17 == v18)
    {
      v20 = 0;
    }

    else
    {
      v20 = sub_228393460();
    }

    v11 = v10 + 2;
    if (v10 + 2 >= v7)
    {
      goto LABEL_25;
    }

    v105 = v10;
    v21 = (v12 + 8 * v10 + 16);
    while (1)
    {
      v24 = v11;
      v26 = *(v21 - 1);
      v25 = *v21;
      v27 = sub_228392A60();
      v29 = v28;
      if (v27 == sub_228392A60() && v29 == v30)
      {

        v6 = a3;
        if (v20)
        {
          v11 = v24;
          v10 = v105;
          goto LABEL_26;
        }

        goto LABEL_14;
      }

      v22 = sub_228393460();

      v23 = v20 ^ v22;
      v6 = a3;
      if (v23)
      {
        break;
      }

LABEL_14:
      ++v21;
      v11 = (v24 + 1);
      if (v7 == v24 + 1)
      {
        v11 = v7;
        goto LABEL_24;
      }
    }

    v11 = v24;
LABEL_24:
    v10 = v105;
LABEL_25:
    if (v20)
    {
LABEL_26:
      if (v11 < v10)
      {
        goto LABEL_137;
      }

      if (v10 < v11)
      {
        v32 = (v11 - 1);
        v33 = v10;
        do
        {
          if (v33 != v32)
          {
            v35 = *v6;
            if (!*v6)
            {
              goto LABEL_143;
            }

            v36 = *(v35 + 8 * v33);
            *(v35 + 8 * v33) = *(v35 + 8 * v32);
            *(v35 + 8 * v32) = v36;
          }
        }

        while (++v33 < v32--);
      }
    }

LABEL_34:
    v37 = v6[1];
    if (v11 >= v37)
    {
      goto LABEL_56;
    }

    if (__OFSUB__(v11, v10))
    {
      goto LABEL_136;
    }

    if (v11 - v10 >= a4)
    {
LABEL_56:
      if (v11 < v10)
      {
        goto LABEL_135;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      v112 = v11;
      if ((result & 1) == 0)
      {
        result = sub_228198978(0, *(v9 + 2) + 1, 1, v9);
        v9 = result;
      }

      v54 = *(v9 + 2);
      v53 = *(v9 + 3);
      v55 = v54 + 1;
      if (v54 >= v53 >> 1)
      {
        result = sub_228198978((v53 > 1), v54 + 1, 1, v9);
        v9 = result;
      }

      *(v9 + 2) = v55;
      v56 = &v9[16 * v54];
      *(v56 + 4) = v10;
      *(v56 + 5) = v11;
      v57 = *v108;
      if (!*v108)
      {
        goto LABEL_145;
      }

      if (!v54)
      {
LABEL_3:
        v7 = v6[1];
        v8 = v112;
        if (v112 >= v7)
        {
          goto LABEL_107;
        }

        continue;
      }

      while (1)
      {
        v58 = v55 - 1;
        if (v55 >= 4)
        {
          break;
        }

        if (v55 == 3)
        {
          v59 = *(v9 + 4);
          v60 = *(v9 + 5);
          v69 = __OFSUB__(v60, v59);
          v61 = v60 - v59;
          v62 = v69;
LABEL_76:
          if (v62)
          {
            goto LABEL_124;
          }

          v75 = &v9[16 * v55];
          v77 = *v75;
          v76 = *(v75 + 1);
          v78 = __OFSUB__(v76, v77);
          v79 = v76 - v77;
          v80 = v78;
          if (v78)
          {
            goto LABEL_127;
          }

          v81 = &v9[16 * v58 + 32];
          v83 = *v81;
          v82 = *(v81 + 1);
          v69 = __OFSUB__(v82, v83);
          v84 = v82 - v83;
          if (v69)
          {
            goto LABEL_130;
          }

          if (__OFADD__(v79, v84))
          {
            goto LABEL_131;
          }

          if (v79 + v84 >= v61)
          {
            if (v61 < v84)
            {
              v58 = v55 - 2;
            }

            goto LABEL_97;
          }

          goto LABEL_90;
        }

        v85 = &v9[16 * v55];
        v87 = *v85;
        v86 = *(v85 + 1);
        v69 = __OFSUB__(v86, v87);
        v79 = v86 - v87;
        v80 = v69;
LABEL_90:
        if (v80)
        {
          goto LABEL_126;
        }

        v88 = &v9[16 * v58];
        v90 = *(v88 + 4);
        v89 = *(v88 + 5);
        v69 = __OFSUB__(v89, v90);
        v91 = v89 - v90;
        if (v69)
        {
          goto LABEL_129;
        }

        if (v91 < v79)
        {
          goto LABEL_3;
        }

LABEL_97:
        v96 = v58 - 1;
        if (v58 - 1 >= v55)
        {
          __break(1u);
LABEL_120:
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

        if (!*v6)
        {
          goto LABEL_142;
        }

        v97 = *&v9[16 * v96 + 32];
        v7 = *&v9[16 * v58 + 40];
        sub_2282F6A7C((*v6 + 8 * v97), (*v6 + 8 * *&v9[16 * v58 + 32]), (*v6 + 8 * v7), v57);
        if (v5)
        {
        }

        if (v7 < v97)
        {
          goto LABEL_120;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_2283406C0(v9);
        }

        if (v96 >= *(v9 + 2))
        {
          goto LABEL_121;
        }

        v98 = &v9[16 * v96];
        *(v98 + 4) = v97;
        *(v98 + 5) = v7;
        result = sub_228340634(v58);
        v55 = *(v9 + 2);
        if (v55 <= 1)
        {
          goto LABEL_3;
        }
      }

      v63 = &v9[16 * v55 + 32];
      v64 = *(v63 - 64);
      v65 = *(v63 - 56);
      v69 = __OFSUB__(v65, v64);
      v66 = v65 - v64;
      if (v69)
      {
        goto LABEL_122;
      }

      v68 = *(v63 - 48);
      v67 = *(v63 - 40);
      v69 = __OFSUB__(v67, v68);
      v61 = v67 - v68;
      v62 = v69;
      if (v69)
      {
        goto LABEL_123;
      }

      v70 = &v9[16 * v55];
      v72 = *v70;
      v71 = *(v70 + 1);
      v69 = __OFSUB__(v71, v72);
      v73 = v71 - v72;
      if (v69)
      {
        goto LABEL_125;
      }

      v69 = __OFADD__(v61, v73);
      v74 = v61 + v73;
      if (v69)
      {
        goto LABEL_128;
      }

      if (v74 >= v66)
      {
        v92 = &v9[16 * v58 + 32];
        v94 = *v92;
        v93 = *(v92 + 1);
        v69 = __OFSUB__(v93, v94);
        v95 = v93 - v94;
        if (v69)
        {
          goto LABEL_132;
        }

        if (v61 < v95)
        {
          v58 = v55 - 2;
        }

        goto LABEL_97;
      }

      goto LABEL_76;
    }

    break;
  }

  v38 = (v10 + a4);
  if (__OFADD__(v10, a4))
  {
    goto LABEL_138;
  }

  if (v38 >= v37)
  {
    v38 = v6[1];
  }

  if (v38 < v10)
  {
LABEL_139:
    __break(1u);
    goto LABEL_140;
  }

  if (v11 == v38)
  {
    goto LABEL_56;
  }

  v104 = v5;
  v106 = v10;
  v39 = *v6;
  v40 = v39 + 8 * v11 - 8;
  v41 = (v10 - v11);
  v109 = v38;
LABEL_45:
  v111 = v11;
  v42 = *(v39 + 8 * v11);
  v7 = v41;
  v43 = v40;
  while (1)
  {
    v44 = *v43;
    v45 = sub_228392A60();
    v47 = v46;
    if (v45 == sub_228392A60() && v47 == v48)
    {

LABEL_44:
      v11 = v111 + 1;
      v40 += 8;
      --v41;
      if ((v111 + 1) == v109)
      {
        v11 = v109;
        v5 = v104;
        v10 = v106;
        v6 = a3;
        goto LABEL_56;
      }

      goto LABEL_45;
    }

    v50 = sub_228393460();

    if ((v50 & 1) == 0)
    {
      goto LABEL_44;
    }

    if (!v39)
    {
      break;
    }

    v51 = *v43;
    *v43 = v43[1];
    v43[1] = v51;
    --v43;
    if (__CFADD__(v7++, 1))
    {
      goto LABEL_44;
    }
  }

  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
LABEL_145:
  __break(1u);
LABEL_146:
  __break(1u);
  return result;
}

uint64_t sub_2282F6A7C(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 3;
  v11 = a3 - __src;
  v12 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 3;
  if (v10 < v12 >> 3)
  {
    if (a4 != __dst || &__dst[8 * v10] <= a4)
    {
      memmove(a4, __dst, 8 * v10);
    }

    v14 = &v4[8 * v10];
    if (v8 < 8)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_47;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v16 = *v6;
      v17 = *v4;
      v18 = sub_228392A60();
      v20 = v19;
      v22 = v18 == sub_228392A60() && v20 == v21;
      if (v22)
      {
        break;
      }

      v23 = sub_228393460();

      if ((v23 & 1) == 0)
      {
        goto LABEL_22;
      }

      v15 = v6;
      v22 = v7 == v6;
      v6 += 8;
      if (!v22)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 8;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

LABEL_22:
    v15 = v4;
    v22 = v7 == v4;
    v4 += 8;
    if (v22)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[8 * v13] <= a4)
  {
    memmove(a4, __src, 8 * v13);
  }

  v14 = &v4[8 * v13];
  if (v11 >= 8 && v6 > v7)
  {
LABEL_30:
    v35 = v6;
    v24 = v6 - 8;
    v5 -= 8;
    v25 = v14;
    while (1)
    {
      v26 = *(v25 - 1);
      v25 -= 8;
      v6 = v24;
      v27 = *v24;
      v28 = sub_228392A60();
      v30 = v29;
      if (v28 == sub_228392A60() && v30 == v31)
      {
      }

      else
      {
        v33 = sub_228393460();

        if (v33)
        {
          if (v5 + 8 != v35)
          {
            *v5 = *v6;
          }

          if (v14 <= v4 || v6 <= v7)
          {
            break;
          }

          goto LABEL_30;
        }
      }

      v24 = v6;
      if (v5 + 8 != v14)
      {
        *v5 = *v25;
      }

      v5 -= 8;
      v14 = v25;
      if (v25 <= v4)
      {
        v14 = v25;
        v6 = v35;
        break;
      }
    }
  }

LABEL_47:
  if (v6 != v4 || v6 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(v6, v4, 8 * ((v14 - v4) / 8));
  }

  return 1;
}

void *sub_2282F6D70(uint64_t a1, uint64_t a2)
{
  sub_2282F6FA4(0, &qword_27D8238D0, type metadata accessor for MedicationSearchItem, MEMORY[0x277D83D88]);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v15 - v7;
  *(v2 + qword_27D828E68) = &unk_283B66780;
  v9 = (v2 + qword_27D828E70);
  v10 = *MEMORY[0x277D12788];
  v15 = sub_228392000();
  v16 = v11;

  MEMORY[0x22AAB5C80](0xD00000000000001ALL, 0x80000002283B31A0);

  v12 = v16;
  *v9 = v15;
  v9[1] = v12;
  sub_228181FB4(a1, v8);
  v13 = sub_228340DF0(v8, a2);
  sub_2282F6F34(a1, &qword_27D8238D0, type metadata accessor for MedicationSearchItem);
  return v13;
}

unint64_t sub_2282F6EDC()
{
  result = qword_27D824520;
  if (!qword_27D824520)
  {
    sub_228390170();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D824520);
  }

  return result;
}

uint64_t sub_2282F6F34(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_2282F6FA4(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_2282F6FA4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_2282F7010(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FormStepResult();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2282F7074(uint64_t a1)
{
  v2 = type metadata accessor for FormStepResult();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_2282F70D0(void *a1, uint64_t a2)
{
  v3 = v2;
  swift_getObjectType();
  sub_2282FE8F8(0, &qword_27D827C30, MEMORY[0x277D85720], MEMORY[0x277D83D88]);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v34 - v8;
  v10 = sub_2283911B0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228391150();
  v15 = sub_2283911A0();
  v16 = sub_2283925C0();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v36 = v11;
    v18 = v17;
    v34 = swift_slowAlloc();
    v37 = v34;
    *v18 = 136315138;
    v19 = sub_228393600();
    v21 = sub_2281C96FC(v19, v20, &v37);
    v35 = v10;
    v22 = v9;
    v23 = v3;
    v24 = a1;
    v25 = a2;
    v26 = v21;

    *(v18 + 4) = v26;
    a2 = v25;
    a1 = v24;
    v3 = v23;
    v9 = v22;
    _os_log_impl(&dword_22816B000, v15, v16, "[%s] start search", v18, 0xCu);
    v27 = v34;
    __swift_destroy_boxed_opaque_existential_0(v34);
    MEMORY[0x22AAB7B80](v27, -1, -1);
    MEMORY[0x22AAB7B80](v18, -1, -1);

    (*(v36 + 8))(v14, v35);
  }

  else
  {

    (*(v11 + 8))(v14, v10);
  }

  v28 = sub_2282F7668();
  [v28 setHidden_];

  [*&v3[qword_27D827708] setAlpha_];
  v29 = sub_2283922D0();
  (*(*(v29 - 8) + 56))(v9, 1, 1, v29);
  sub_2283922A0();
  v30 = v3;
  v31 = sub_228392290();
  v32 = swift_allocObject();
  v33 = MEMORY[0x277D85700];
  v32[2] = v31;
  v32[3] = v33;
  v32[4] = v30;
  sub_2281DC568(0, 0, v9, &unk_2283A3238, v32);

  sub_2282FD7C4(a1, a2);
}

id sub_2282F7440()
{
  v1 = qword_27D8276F8;
  v2 = *(v0 + qword_27D8276F8);
  if (v2)
  {
    v3 = *(v0 + qword_27D8276F8);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x277D10388]) initWithHealthStore_];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

uint64_t sub_2282F74E4(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (*a2 + qword_27D8276F0);
  swift_beginAccess();
  v5 = v4[1];
  *v4 = v3;
  v4[1] = v2;
}

uint64_t sub_2282F7550()
{
  v1 = (v0 + qword_27D8276F0);
  swift_beginAccess();
  v3 = *v1;
  v2 = v1[1];

  return v3;
}

uint64_t sub_2282F75A8(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + qword_27D8276F0);
  swift_beginAccess();
  v6 = v5[1];
  *v5 = a1;
  v5[1] = a2;
}

id sub_2282F7668()
{
  v1 = qword_27D827708;
  v2 = *(v0 + qword_27D827708);
  if (v2)
  {
    v3 = *(v0 + qword_27D827708);
  }

  else
  {
    v4 = sub_2282F76F0();
    v5 = [v4 searchBar];

    v6 = *(v0 + v1);
    *(v0 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

id sub_2282F76F0()
{
  v1 = qword_27D827710;
  v2 = *(v0 + qword_27D827710);
  if (v2)
  {
    v3 = *(v0 + qword_27D827710);
  }

  else
  {
    v4 = sub_2282F7754(v0);
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_2282F7754(uint64_t a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x277D759F0]) init];
  v3 = [v2 searchBar];
  [v3 setDelegate_];

  v4 = [v2 searchBar];
  if (qword_280DDCF18 != -1)
  {
    swift_once();
  }

  sub_22838F0C0();
  v5 = sub_228391FC0();

  [v4 setPlaceholder_];

  [v2 setHidesNavigationBarDuringPresentation_];
  return v2;
}

id sub_2282F789C()
{
  v1 = qword_27D827718;
  v2 = *(v0 + qword_27D827718);
  if (v2)
  {
    v3 = *(v0 + qword_27D827718);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:1 target:v0 action:sel_cancelTapped_];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_2282F7924()
{
  v1 = qword_27D827720;
  v2 = *(v0 + qword_27D827720);
  if (v2)
  {
    v3 = *(v0 + qword_27D827720);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:15 target:v0 action:sel_cameraTapped_];
    v5 = [objc_opt_self() labelColor];
    [v4 setTintColor_];

    v6 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

id sub_2282F79EC()
{
  v0 = [objc_opt_self() searchConfiguration];
  v1 = sub_2282F7668();
  v2 = [v1 text];

  if (v2)
  {
    v3 = sub_228392000();
    v5 = v4;

    v6 = sub_2282AE540(v3, v5);
    v8 = v7;
    swift_bridgeObjectRelease_n();
  }

  else
  {
    v6 = sub_2282AE540(0, 0xE000000000000000);
    v8 = v9;
  }

  if (qword_280DDCF18 != -1)
  {
    swift_once();
  }

  sub_22819A064(0, &qword_280DDB870, &qword_280DDB830);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_228397F40;
  *(v10 + 56) = MEMORY[0x277D837D0];
  v11 = sub_22818E210();
  *(v10 + 64) = v11;
  *(v10 + 32) = v6;
  *(v10 + 40) = v8;

  sub_22838F0C0();
  if (*(v10 + 16))
  {
    sub_228391FD0();
  }

  v12 = sub_228391FC0();

  [v0 setSecondaryText_];

  v13 = [v0 buttonProperties];
  v14 = [objc_opt_self() tintedButtonConfiguration];
  [v13 setConfiguration_];

  v15 = [v0 buttonProperties];
  v16 = [v15 configuration];

  [v16 setCornerStyle_];
  v17 = [v0 buttonProperties];
  v18 = [v17 configuration];

  v19 = [objc_opt_self() systemGrayColor];
  [v18 setBaseBackgroundColor_];

  v20 = [v0 buttonProperties];
  sub_22817A958(0, &qword_27D827890, 0x277D750C8);
  v21 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v22 = sub_228392C90();
  [v20 setPrimaryAction_];

  v23 = [v0 buttonProperties];
  v24 = [v23 configuration];

  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_228397F40;
  *(v25 + 56) = MEMORY[0x277D837D0];
  *(v25 + 64) = v11;
  *(v25 + 32) = v6;
  *(v25 + 40) = v8;
  sub_22838F0C0();
  if (*(v25 + 16))
  {
    sub_228391FD0();
  }

  v26 = sub_228391FC0();

  [v24 setTitle_];

  return v0;
}

void sub_2282F7F28()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_2282FA14C();
  }
}

id NewMedicationOnboardingViewController.init(healthStore:listManager:analyticsContext:)(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  *(v3 + qword_27D8276F8) = 0;
  v8 = (v3 + qword_27D8276F0);
  v9 = *MEMORY[0x277D12788];
  v26 = sub_228392000();
  v27 = v10;

  MEMORY[0x22AAB5C80](0x7461636964654D2ELL, 0xEC000000736E6F69);

  *v8 = v26;
  v8[1] = v27;
  *(v3 + qword_27D827700) = 0x4046000000000000;
  *(v3 + qword_27D827708) = 0;
  *(v3 + qword_27D827710) = 0;
  *(v3 + qword_27D827718) = 0;
  *(v3 + qword_27D827720) = 0;
  *(v3 + qword_27D827728) = 0;
  *(v3 + qword_27D827730) = 0;
  *(v3 + qword_27D827738) = a1;
  *(v3 + qword_27D8276E0) = a2;
  v11 = sub_228390EA0();
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  swift_allocObject();
  v14 = a1;

  v15 = sub_228390E90();
  *(v4 + qword_27D827740) = v15;
  v16 = type metadata accessor for NewMedicationsOnboardingDataSource();
  v17 = *(v16 + 48);
  v18 = *(v16 + 52);
  v19 = swift_allocObject();
  v20 = v14;

  v21 = sub_2282FE344(a2, v15, v20, v19);

  *(v4 + qword_27D827748) = v21;
  *(v4 + qword_27D8276E8) = a3;
  sub_2283901F0();
  sub_22819A064(0, &qword_27D827750, &qword_27D8238E8);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_228397F40;
  v23 = MEMORY[0x277D10F80];
  *(v22 + 32) = v21;
  *(v22 + 40) = v23;

  sub_228390220();
  v24 = sub_228390480();
  sub_2282F88C4();

  return v24;
}

id sub_2282F8274()
{
  v1 = qword_27D827730;
  v2 = *(v0 + qword_27D827730);
  if (v2)
  {
    v3 = *(v0 + qword_27D827730);
  }

  else
  {
    v4 = objc_allocWithZone(MEMORY[0x277D37698]);
    v5 = sub_228391FC0();
    v6 = [v4 initWithTitle:v5 detailText:0 icon:0];

    v7 = *(v0 + v1);
    *(v0 + v1) = v6;
    v3 = v6;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

id sub_2282F8314()
{
  v1 = v0;
  v37.receiver = v0;
  v37.super_class = type metadata accessor for NewMedicationOnboardingViewController();
  objc_msgSendSuper2(&v37, sel_viewDidLoad);
  result = [v0 collectionView];
  if (!result)
  {
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v3 = result;
  [result setPreservesSuperviewLayoutMargins_];

  v4 = [v1 traitCollection];
  v5 = [v4 horizontalSizeClass];

  if (v5 == 2)
  {
    result = [v1 collectionView];
    if (!result)
    {
LABEL_28:
      __break(1u);
      return result;
    }

    v6 = result;
    [result setDirectionalLayoutMargins_];
  }

  result = [objc_opt_self() sharedBehavior];
  if (!result)
  {
    goto LABEL_26;
  }

  v7 = result;
  v8 = [result isiPad];

  if (v8)
  {
    v9 = sub_2282F7668();
    [v9 setHidden_];

    [*&v1[qword_27D827708] setAlpha_];
  }

  v10 = [v1 navigationItem];
  v11 = sub_2282F76F0();
  [v10 setSearchController_];

  v12 = [v1 navigationItem];
  v13 = sub_2282F789C();
  [v12 setRightBarButtonItem_];

  result = [v1 collectionView];
  if (!result)
  {
    goto LABEL_27;
  }

  v14 = result;
  [result setKeyboardDismissMode_];

  sub_228390600();
  if (sub_2283905D0())
  {
    v15 = [v1 navigationItem];
    v16 = [v15 searchController];

    v34 = [v16 _inlineToolbarSearchBarItem];
    v17 = objc_opt_self();
    v18 = v34;
    v35 = [v17 flexibleSpaceItem];
    result = sub_2282F7924();
    v19 = 0;
    v36 = result;
    v32 = MEMORY[0x277D84F90];
LABEL_11:
    if (v19 <= 3)
    {
      v20 = 3;
    }

    else
    {
      v20 = v19;
    }

    while (v19 != 3)
    {
      if (v20 == v19)
      {
        __break(1u);
        goto LABEL_25;
      }

      v21 = v33[v19++ + 4];
      if (v21)
      {
        v22 = v21;
        MEMORY[0x22AAB5D20]();
        if (*((v32 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v32 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v31 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_2283921E0();
        }

        result = sub_228392230();
        goto LABEL_11;
      }
    }

    sub_2281BC2E4(0, &qword_27D827760, &qword_27D824138, 0x277D751E0);
    swift_arrayDestroy();
    sub_22817A958(0, &qword_27D824138, 0x277D751E0);
    v23 = sub_228392190();

    [v1 setToolbarItems_];

    v24 = [v1 navigationController];
    if (v24)
    {
      v25 = v24;
      [v24 setToolbarHidden_];
    }
  }

  [v1 setModalInPresentation_];
  v26 = sub_2282F8274();
  [v26 preferredContentSize];
  v28 = v27;
  v30 = v29;

  return [v1 setPreferredContentSize_];
}

void sub_2282F87B4(void *a1)
{
  v1 = a1;
  sub_2282F8314();
}

void sub_2282F87FC(void *a1, uint64_t a2, uint64_t a3)
{
  v8.receiver = a1;
  v8.super_class = type metadata accessor for NewMedicationOnboardingViewController();
  v4 = v8.receiver;
  objc_msgSendSuper2(&v8, sel_viewIsAppearing_, a3);
  v5 = [v4 collectionView];
  if (v5)
  {
    v6 = v5;
    v7 = [objc_opt_self() systemBackgroundColor];
    [v6 setBackgroundColor_];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_2282F88C4()
{
  sub_2282FE8F8(0, &qword_280DDBAD0, MEMORY[0x277D85248], MEMORY[0x277D83D88]);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v25 - v3;
  v5 = MEMORY[0x277D839B0];
  sub_2282FFD10(0, &unk_280DDBBE0, MEMORY[0x277D839B0], MEMORY[0x277CBCEC0]);
  v7 = v6;
  v8 = *(v6 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v6);
  v11 = &v25 - v10;
  sub_2282FFC14();
  v13 = *(v12 - 8);
  v26 = v12;
  v27 = v13;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(v0 + qword_27D827748);
  swift_beginAccess();
  sub_2282FFD10(0, &qword_280DDBBD0, v5, MEMORY[0x277CBCED0]);
  sub_228391930();
  swift_endAccess();
  sub_22817A958(0, &qword_280DDCEE0, 0x277D85C78);
  v18 = sub_228392790();
  v28 = v18;
  v19 = sub_228392730();
  (*(*(v19 - 8) + 56))(v4, 1, 1, v19);
  sub_22824EB64();
  sub_22818C470(&qword_280DDBAC0, &qword_280DDCEE0, 0x277D85C78);
  sub_228391A70();
  sub_2281A16F0(v4);

  (*(v8 + 8))(v11, v7);
  swift_allocObject();
  v20 = v25;
  swift_unknownObjectWeakInit();
  sub_2282FF744(&qword_27D8278A8, sub_2282FFC14);
  v21 = v26;
  v22 = sub_228391AC0();

  (*(v27 + 8))(v16, v21);
  v23 = *(v20 + qword_27D827728);
  *(v20 + qword_27D827728) = v22;
}

void sub_2282F8C9C(unsigned __int8 *a1)
{
  v1 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    if (v1 && (swift_beginAccess(), (v4 = swift_unknownObjectWeakLoadStrong()) != 0))
    {
      v5 = v4;
      v6 = sub_2282F79EC();
    }

    else
    {
      v6 = 0;
    }

    [v3 _setContentUnavailableConfiguration_];
  }
}

void sub_2282F8D64(void *a1)
{
  v1 = a1;
  sub_2282FAE4C();
}

void sub_2282F8DAC(void *a1)
{
  v2 = sub_22838F710();
  [a1 deselectItemAtIndexPath:v2 animated:1];

  v3 = sub_22838F710();
  v4 = [a1 cellForItemAtIndexPath_];

  if (v4)
  {
    v8 = v4;
    sub_22817A958(0, &qword_27D827770, 0x277D752A8);
    sub_22818217C(0, &qword_27D8243E0);
    v5 = v4;
    if (swift_dynamicCast())
    {
      sub_22819A62C(v6, v9);
      __swift_project_boxed_opaque_existential_0(v9, v9[3]);
      sub_22838FE30();

      __swift_destroy_boxed_opaque_existential_0(v9);
    }

    else
    {

      v7 = 0;
      memset(v6, 0, sizeof(v6));
      sub_2282FEDC0(v6, sub_2281ED284);
    }
  }
}

uint64_t sub_2282F8F14(void *a1, uint64_t a2, void *a3)
{
  v5 = sub_22838F760();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22838F720();
  v10 = a3;
  v11 = a1;
  sub_2282F8DAC(v10);

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_2282F9010(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v161 = type metadata accessor for MedicationSearchItem(0);
  v4 = *(*(v161 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v161);
  v160 = &v157 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v178 = &v157 - v7;
  v164 = sub_2283911B0();
  v169 = *(v164 - 8);
  v8 = *(v169 + 64);
  MEMORY[0x28223BE20](v164);
  v171 = &v157 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x277D83D88];
  sub_2282FE8F8(0, &qword_27D827C30, MEMORY[0x277D85720], MEMORY[0x277D83D88]);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v168 = &v157 - v13;
  sub_2282FE8F8(0, &qword_280DDBD20, MEMORY[0x277D116C8], v10);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v174 = &v157 - v16;
  sub_2282FE8F8(0, &qword_27D8238A8, MEMORY[0x277D11640], v10);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v20 = &v157 - v19;
  sub_2282FE8F8(0, &unk_27D827790, type metadata accessor for FormStepResult, v10);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21 - 8);
  v173 = &v157 - v23;
  sub_2282FE8F8(0, &qword_27D827160, MEMORY[0x277CC95F0], v10);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24 - 8);
  v172 = &v157 - v26;
  v175 = type metadata accessor for MedicationOnboardingFlowManager(0);
  v165 = *(v175 - 8);
  v27 = *(v165 + 64);
  v28 = MEMORY[0x28223BE20](v175);
  v167 = &v157 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x28223BE20](v28);
  v32 = &v157 - v31;
  v166 = v33;
  MEMORY[0x28223BE20](v30);
  v177 = &v157 - v34;
  v35 = type metadata accessor for MedicationSearchItem.Source(0);
  v36 = *(*(v35 - 8) + 64);
  MEMORY[0x28223BE20](v35);
  v38 = (&v157 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0));
  v39 = type metadata accessor for MedicationOnboardingFlowManager.EntryMode(0);
  v40 = *(*(v39 - 1) + 64);
  v41 = MEMORY[0x28223BE20](v39);
  v179 = &v157 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v41);
  v44 = &v157 - v43;
  sub_2282FEB84(a1, v38, type metadata accessor for MedicationSearchItem.Source);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    v45 = *&v1[qword_27D8276E8];
    v46 = *&v2[qword_27D827748];
    v170 = v39;
    v47 = v20;
    v48 = qword_27D828998;
    swift_beginAccess();
    v49 = *(v46 + v48);
    v20 = v47;
    v50 = *(v49 + 16);
    sub_228390DC0();
    sub_2282FEB84(a1, v44, type metadata accessor for MedicationSearchItem);
    swift_storeEnumTagMultiPayload();
    sub_2282FEDC0(v38, type metadata accessor for MedicationSearchItem.Source);
    v51 = 4;
  }

  else
  {

    sub_22818DE38();
    v53 = *(v52 + 48);
    sub_2282FEB84(a1, v44, type metadata accessor for MedicationSearchItem);
    swift_storeEnumTagMultiPayload();
    v54 = sub_2282F7668();
    [v54 setHidden_];

    [*&v2[qword_27D827708] setAlpha_];
    v55 = sub_228390C30();
    (*(*(v55 - 8) + 8))(v38 + v53, v55);
    v51 = 0;
  }

  v56 = sub_22826FA64();
  if (v56)
  {
    v57 = v56;
    v58 = *&v2[qword_27D8276E0];
    v59 = swift_allocObject();
    swift_unknownObjectWeakInit();

    v60 = _sSo17UIAlertControllerC19HealthMedicationsUIE27makeAlertForExsitingConcept7concept11listManager11showHandlerABSgSo9HKConceptC_25UserDomainConceptsSupport04ListjM0CySo012HKMedicationqrJ0CctFZ_0(v57, v58, sub_2281C0884, v59);

    if (v60)
    {
      [v2 presentViewController:v60 animated:1 completion:0];

LABEL_21:
      v155 = v44;
      return sub_2282FEDC0(v155, type metadata accessor for MedicationOnboardingFlowManager.EntryMode);
    }
  }

  v158 = a1;
  v162 = type metadata accessor for MedicationOnboardingFlowManager.EntryMode;
  v163 = v44;
  v61 = v179;
  sub_2282FEB84(v44, v179, type metadata accessor for MedicationOnboardingFlowManager.EntryMode);
  v170 = v2;
  v62 = *&v2[qword_27D8276E8];
  v63 = v175;
  v64 = *(v175 + 36);
  v65 = sub_22838F4A0();
  (*(*(v65 - 8) + 56))(v172, 1, 1, v65);
  sub_2282FEB08(0, &qword_27D8277A0, &qword_27D827160, MEMORY[0x277CC95F0]);
  v67 = *(v66 + 48);
  v68 = *(v66 + 52);
  swift_allocObject();
  *&v32[v64] = sub_228391890();
  v69 = v63[10];
  *&v181 = 0;
  sub_2282FE95C();
  v71 = *(v70 + 48);
  v72 = *(v70 + 52);
  swift_allocObject();
  *&v32[v69] = sub_228391890();
  v73 = v63[11];
  LOBYTE(v181) = 0;
  sub_22817D780();
  v75 = *(v74 + 48);
  v76 = *(v74 + 52);
  swift_allocObject();
  *&v32[v73] = sub_228391890();
  v77 = v63[12];
  v78 = type metadata accessor for FormStepResult();
  (*(*(v78 - 8) + 56))(v173, 1, 1, v78);
  sub_2282FEB08(0, &qword_27D8253A0, &unk_27D827790, type metadata accessor for FormStepResult);
  v80 = *(v79 + 48);
  v81 = *(v79 + 52);
  swift_allocObject();
  *&v32[v77] = sub_228391890();
  v82 = v63[13];
  sub_2282FE9DC(0, &qword_27D8277D0, &qword_27D825070, MEMORY[0x277D837D0]);
  v84 = v83;
  v181 = 0uLL;
  v85 = *(v83 + 48);
  v86 = *(v83 + 52);
  swift_allocObject();
  *&v32[v82] = sub_228391890();
  v87 = v63[14];
  v181 = 0uLL;
  v88 = *(v84 + 48);
  v89 = *(v84 + 52);
  swift_allocObject();

  *&v32[v87] = sub_228391890();
  v90 = v63[15];
  *&v181 = 0;
  sub_228257A7C();
  v92 = *(v91 + 48);
  v93 = *(v91 + 52);
  swift_allocObject();
  *&v32[v90] = sub_228391890();
  v94 = v63[16];
  v95 = sub_2283909E0();
  (*(*(v95 - 8) + 56))(v20, 1, 1, v95);
  sub_2282FEB08(0, &qword_27D8238C8, &qword_27D8238A8, MEMORY[0x277D11640]);
  v97 = *(v96 + 48);
  v98 = *(v96 + 52);
  swift_allocObject();
  *&v32[v94] = sub_228391890();
  v99 = v63[17];
  v100 = sub_228390D50();
  (*(*(v100 - 8) + 56))(v174, 1, 1, v100);
  sub_2282FEB08(0, &qword_27D827800, &qword_280DDBD20, MEMORY[0x277D116C8]);
  v102 = *(v101 + 48);
  v103 = *(v101 + 52);
  swift_allocObject();
  *&v32[v99] = sub_228391890();
  v104 = v63[18];
  sub_2282FE9DC(0, &qword_27D827808, &qword_27D827810, &type metadata for MedicationNicknameNotes);
  v181 = 0u;
  v182 = 0u;
  v106 = *(v105 + 48);
  v107 = *(v105 + 52);
  swift_allocObject();
  *&v32[v104] = sub_228391890();
  v108 = v63[19];
  *&v181 = 0;
  sub_2281BC72C();
  v110 = *(v109 + 48);
  v111 = *(v109 + 52);
  swift_allocObject();
  *&v32[v108] = sub_228391890();
  v112 = v63[21];
  *&v181 = 0;
  sub_2282FEB08(0, &qword_27D827820, &qword_27D826D70, sub_2282FEA58);
  v114 = *(v113 + 48);
  v115 = *(v113 + 52);
  swift_allocObject();
  *&v32[v112] = sub_228391890();
  v116 = v63[22];
  sub_228390890();
  *&v32[v116] = sub_228390880();
  sub_2282FEB84(v61, v32, v162);
  v32[v63[7]] = 64;
  *&v32[v63[5]] = v62;

  sub_228390DF0();
  *&v32[v63[6]] = v51;
  v32[v63[8]] = 0;
  *&v181 = sub_228371268();
  *(&v181 + 1) = v117;
  sub_228391850();

  *&v181 = 0;
  sub_2282FEB08(0, &qword_27D827848, &qword_27D827850, sub_2282B9CF8);
  v119 = *(v118 + 48);
  v120 = *(v118 + 52);
  swift_allocObject();
  *&v32[v63[20]] = sub_228391890();
  sub_228391870();
  if (v181)
  {
  }

  else
  {
    v121 = sub_2283922D0();
    v122 = v32;
    v123 = v168;
    (*(*(v121 - 8) + 56))(v168, 1, 1, v121);
    v124 = v167;
    sub_2282FEB84(v122, v167, type metadata accessor for MedicationOnboardingFlowManager);
    v125 = (*(v165 + 80) + 32) & ~*(v165 + 80);
    v126 = swift_allocObject();
    *(v126 + 16) = 0;
    *(v126 + 24) = 0;
    sub_2282FEC6C(v124, v126 + v125);
    v127 = v123;
    v32 = v122;
    sub_2281DC568(0, 0, v127, &unk_2283A3060, v126);
  }

  v129 = v177;
  v128 = v178;
  sub_2282FEDC0(v179, type metadata accessor for MedicationOnboardingFlowManager.EntryMode);
  sub_2282FEC6C(v32, v129);
  v130 = &v183;
  v44 = v163;
  if (EnumCaseMultiPayload != 1)
  {
    v131 = v170;
    v132 = *&v170[qword_27D827748];
    v133 = qword_27D828998;
    swift_beginAccess();
    v134 = *(*(v132 + v133) + 16);
    v135 = *&v131[qword_27D827738];
    v136 = sub_228390D90();
    v137 = *(v136 + 48);
    v138 = *(v136 + 52);
    swift_allocObject();

    v135;
    sub_228390D80();
    sub_228390E70();
    sub_228390E60();
  }

  MedicationOnboardingFlowManager.makeNextViewControllerForStep()(v130);
  if (v139)
  {
    v140 = v139;
    v141 = [v170 navigationController];
    if (v141)
    {
      v142 = v141;
      [v141 pushViewController:v140 animated:1];
    }

    else
    {
    }

    goto LABEL_20;
  }

  sub_228391150();
  sub_2282FEB84(v158, v128, type metadata accessor for MedicationSearchItem);
  v143 = sub_2283911A0();
  v144 = sub_2283925C0();
  if (!os_log_type_enabled(v143, v144))
  {

    sub_2282FEDC0(v128, type metadata accessor for MedicationSearchItem);
    (*(v169 + 8))(v171, v164);
LABEL_20:
    sub_2282FEDC0(v129, type metadata accessor for MedicationOnboardingFlowManager);
    goto LABEL_21;
  }

  v145 = swift_slowAlloc();
  v146 = swift_slowAlloc();
  v180 = v146;
  *v145 = 136315394;
  v147 = sub_228393600();
  v148 = v44;
  v150 = sub_2281C96FC(v147, v149, &v180);

  *(v145 + 4) = v150;
  *(v145 + 12) = 2080;
  sub_2282FEB84(v128, v160, type metadata accessor for MedicationSearchItem);
  v151 = sub_228392020();
  v153 = v152;
  sub_2282FEDC0(v128, type metadata accessor for MedicationSearchItem);
  v154 = sub_2281C96FC(v151, v153, &v180);

  *(v145 + 14) = v154;
  _os_log_impl(&dword_22816B000, v143, v144, "[%s] MedicationOnboardingFlowManager wasn't able to find next ViewController! Encountered unexpected medication concept type: %s", v145, 0x16u);
  swift_arrayDestroy();
  MEMORY[0x22AAB7B80](v146, -1, -1);
  MEMORY[0x22AAB7B80](v145, -1, -1);

  (*(v169 + 8))(v171, v164);
  sub_2282FEDC0(v129, type metadata accessor for MedicationOnboardingFlowManager);
  v155 = v148;
  return sub_2282FEDC0(v155, type metadata accessor for MedicationOnboardingFlowManager.EntryMode);
}

uint64_t sub_2282FA14C()
{
  v125[1] = swift_getObjectType();
  v1 = sub_2283911B0();
  v131 = *(v1 - 8);
  v132 = v1;
  v2 = *(v131 + 64);
  MEMORY[0x28223BE20](v1);
  v130 = v125 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = MEMORY[0x277D83D88];
  sub_2282FE8F8(0, &qword_27D827C30, MEMORY[0x277D85720], MEMORY[0x277D83D88]);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v129 = v125 - v7;
  sub_2282FE8F8(0, &qword_280DDBD20, MEMORY[0x277D116C8], v4);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v136 = v125 - v10;
  sub_2282FE8F8(0, &qword_27D8238A8, MEMORY[0x277D11640], v4);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v135 = v125 - v13;
  sub_2282FE8F8(0, &unk_27D827790, type metadata accessor for FormStepResult, v4);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v134 = v125 - v16;
  sub_2282FE8F8(0, &qword_27D827160, MEMORY[0x277CC95F0], v4);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v20 = v125 - v19;
  v21 = type metadata accessor for MedicationOnboardingFlowManager.EntryMode(0);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21);
  v139 = (v125 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = type metadata accessor for MedicationOnboardingFlowManager(0);
  v126 = *(v24 - 1);
  v25 = *(v126 + 64);
  v26 = MEMORY[0x28223BE20](v24);
  v128 = v125 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x28223BE20](v26);
  v30 = v125 - v29;
  v127 = v31;
  MEMORY[0x28223BE20](v28);
  v138 = v125 - v32;
  v33 = *&v0[qword_27D827748];
  v34 = qword_27D828998;
  swift_beginAccess();
  v35 = *(*(v33 + v34) + 16);
  v36 = *&v0[qword_27D8276E8];
  v37 = *&v0[qword_27D827738];
  v38 = sub_228390D90();
  v39 = *(v38 + 48);
  v40 = *(v38 + 52);
  swift_allocObject();

  v37;
  v41 = sub_228390D80();
  sub_228390E70();

  sub_228390E60();
  v137 = v41;

  v133 = v0;
  v42 = sub_2282F7668();
  v43 = [v42 text];

  if (v43)
  {
    v44 = sub_228392000();
    v46 = v45;
  }

  else
  {
    v44 = 0;
    v46 = 0;
  }

  v47 = v139;
  *v139 = v44;
  v47[1] = v46;
  swift_storeEnumTagMultiPayload();
  v48 = v24[9];
  v49 = sub_22838F4A0();
  (*(*(v49 - 8) + 56))(v20, 1, 1, v49);
  sub_2282FEB08(0, &qword_27D8277A0, &qword_27D827160, MEMORY[0x277CC95F0]);
  v51 = *(v50 + 48);
  v52 = *(v50 + 52);
  swift_allocObject();
  *&v30[v48] = sub_228391890();
  v53 = v24[10];
  *&v140[0] = 0;
  sub_2282FE95C();
  v55 = *(v54 + 48);
  v56 = *(v54 + 52);
  swift_allocObject();
  *&v30[v53] = sub_228391890();
  v57 = v24[11];
  LOBYTE(v140[0]) = 0;
  sub_22817D780();
  v59 = *(v58 + 48);
  v60 = *(v58 + 52);
  swift_allocObject();
  *&v30[v57] = sub_228391890();
  v61 = v24[12];
  v62 = type metadata accessor for FormStepResult();
  (*(*(v62 - 8) + 56))(v134, 1, 1, v62);
  sub_2282FEB08(0, &qword_27D8253A0, &unk_27D827790, type metadata accessor for FormStepResult);
  v64 = *(v63 + 48);
  v65 = *(v63 + 52);
  swift_allocObject();
  *&v30[v61] = sub_228391890();
  v66 = v24[13];
  sub_2282FE9DC(0, &qword_27D8277D0, &qword_27D825070, MEMORY[0x277D837D0]);
  v68 = v67;
  v140[0] = 0uLL;
  v69 = *(v67 + 48);
  v70 = *(v67 + 52);
  swift_allocObject();
  *&v30[v66] = sub_228391890();
  v71 = v24[14];
  v140[0] = 0uLL;
  v72 = *(v68 + 48);
  v73 = *(v68 + 52);
  swift_allocObject();

  *&v30[v71] = sub_228391890();
  v74 = v24[15];
  *&v140[0] = 0;
  sub_228257A7C();
  v76 = *(v75 + 48);
  v77 = *(v75 + 52);
  swift_allocObject();
  *&v30[v74] = sub_228391890();
  v78 = v24[16];
  v79 = sub_2283909E0();
  (*(*(v79 - 8) + 56))(v135, 1, 1, v79);
  sub_2282FEB08(0, &qword_27D8238C8, &qword_27D8238A8, MEMORY[0x277D11640]);
  v81 = *(v80 + 48);
  v82 = *(v80 + 52);
  swift_allocObject();
  *&v30[v78] = sub_228391890();
  v83 = v24[17];
  v84 = sub_228390D50();
  (*(*(v84 - 8) + 56))(v136, 1, 1, v84);
  sub_2282FEB08(0, &qword_27D827800, &qword_280DDBD20, MEMORY[0x277D116C8]);
  v86 = *(v85 + 48);
  v87 = *(v85 + 52);
  swift_allocObject();
  *&v30[v83] = sub_228391890();
  v88 = v24[18];
  sub_2282FE9DC(0, &qword_27D827808, &qword_27D827810, &type metadata for MedicationNicknameNotes);
  memset(v140, 0, sizeof(v140));
  v90 = *(v89 + 48);
  v91 = *(v89 + 52);
  swift_allocObject();
  *&v30[v88] = sub_228391890();
  v92 = v24[19];
  *&v140[0] = 0;
  sub_2281BC72C();
  v94 = *(v93 + 48);
  v95 = *(v93 + 52);
  swift_allocObject();
  *&v30[v92] = sub_228391890();
  v96 = v24[21];
  *&v140[0] = 0;
  sub_2282FEB08(0, &qword_27D827820, &qword_27D826D70, sub_2282FEA58);
  v98 = *(v97 + 48);
  v99 = *(v97 + 52);
  swift_allocObject();
  *&v30[v96] = sub_228391890();
  v100 = v24[22];
  sub_228390890();
  *&v30[v100] = sub_228390880();
  sub_2282FEB84(v47, v30, type metadata accessor for MedicationOnboardingFlowManager.EntryMode);
  v30[v24[7]] = 64;
  *&v30[v24[5]] = v36;

  sub_228390DF0();
  *&v30[v24[6]] = 1;
  v30[v24[8]] = 0;
  *&v140[0] = sub_228371268();
  *(&v140[0] + 1) = v101;
  sub_228391850();

  *&v140[0] = 0;
  sub_2282FEB08(0, &qword_27D827848, &qword_27D827850, sub_2282B9CF8);
  v103 = *(v102 + 48);
  v104 = *(v102 + 52);
  swift_allocObject();
  *&v30[v24[20]] = sub_228391890();
  sub_228391870();
  if (*&v140[0])
  {
  }

  else
  {
    v105 = sub_2283922D0();
    v106 = v129;
    (*(*(v105 - 8) + 56))(v129, 1, 1, v105);
    v107 = v128;
    sub_2282FEB84(v30, v128, type metadata accessor for MedicationOnboardingFlowManager);
    v108 = (*(v126 + 80) + 32) & ~*(v126 + 80);
    v109 = swift_allocObject();
    *(v109 + 16) = 0;
    *(v109 + 24) = 0;
    sub_2282FEC6C(v107, v109 + v108);
    sub_2281DC568(0, 0, v106, &unk_2283A63D0, v109);
  }

  v110 = v138;
  sub_2282FEDC0(v139, type metadata accessor for MedicationOnboardingFlowManager.EntryMode);
  sub_2282FEC6C(v30, v110);
  MedicationOnboardingFlowManager.makeNextViewControllerForStep()(v111);
  if (!v112)
  {
    v116 = v130;
    sub_228391150();
    v117 = sub_2283911A0();
    v118 = sub_2283925C0();
    if (os_log_type_enabled(v117, v118))
    {
      v119 = swift_slowAlloc();
      v120 = swift_slowAlloc();
      *&v140[0] = v120;
      *v119 = 136315138;
      v121 = sub_228393600();
      v123 = sub_2281C96FC(v121, v122, v140);

      *(v119 + 4) = v123;
      _os_log_impl(&dword_22816B000, v117, v118, "[%s] MedicationOnboardingFlowManager wasn't able to find next ViewController", v119, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v120);
      MEMORY[0x22AAB7B80](v120, -1, -1);
      MEMORY[0x22AAB7B80](v119, -1, -1);
    }

    (*(v131 + 8))(v116, v132);
    return sub_2282FEDC0(v110, type metadata accessor for MedicationOnboardingFlowManager);
  }

  v113 = v112;
  v114 = [v133 navigationController];
  if (v114)
  {
    v115 = v114;
    [v114 pushViewController:v113 animated:1];

    return sub_2282FEDC0(v110, type metadata accessor for MedicationOnboardingFlowManager);
  }

  sub_2282FEDC0(v110, type metadata accessor for MedicationOnboardingFlowManager);
}

uint64_t sub_2282FAE4C()
{
  v1 = v0;
  v2 = *(v0 + qword_27D827748);
  v3 = qword_27D828998;
  swift_beginAccess();
  v4 = *(*(v2 + v3) + 16);
  v5 = *(v1 + qword_27D8276E8);
  v6 = *(v1 + qword_27D827738);
  v7 = sub_228390D90();
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();

  v6;
  sub_228390D80();
  sub_228390E70();
  sub_228390E60();
  swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_22838FB00();
}

void sub_2282FAFBC(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    if (a1 == 2)
    {
      v7 = Strong;
      sub_22838FB10();
    }

    else
    {
      if (a1 != 3)
      {
LABEL_7:

        return;
      }

      v4 = *&Strong[qword_27D827738];
      v5 = *&Strong[qword_27D8276E8];
      objc_allocWithZone(sub_228390600());
      v6 = v4;

      v7 = sub_2283905E0();
      sub_2282FF744(&unk_27D827880, type metadata accessor for NewMedicationOnboardingViewController);
      v8 = v3;
      sub_2283905F0();
      [v8 presentViewController:v7 animated:1 completion:0];
    }

    goto LABEL_7;
  }
}

uint64_t sub_2282FB0F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[37] = a4;
  v5 = sub_2283911B0();
  v4[38] = v5;
  v6 = *(v5 - 8);
  v4[39] = v6;
  v7 = *(v6 + 64) + 15;
  v4[40] = swift_task_alloc();
  v4[41] = swift_task_alloc();
  sub_2283922A0();
  v4[42] = sub_228392290();
  v9 = sub_228392250();
  v4[43] = v9;
  v4[44] = v8;

  return MEMORY[0x2822009F8](sub_2282FB1F4, v9, v8);
}

uint64_t sub_2282FB1F4()
{
  v26 = v0;
  v1 = v0[41];
  v2 = v0[37];
  sub_228391150();
  v3 = v2;
  v4 = sub_2283911A0();
  v5 = sub_2283925A0();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[41];
    v7 = v0[38];
    v8 = v0[39];
    v9 = v0[37];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v25 = v11;
    *v10 = 136446210;
    v0[36] = v9;
    type metadata accessor for NewMedicationOnboardingViewController();
    v12 = v9;
    v13 = sub_228392040();
    v15 = sub_2281C96FC(v13, v14, &v25);

    *(v10 + 4) = v15;
    _os_log_impl(&dword_22816B000, v4, v5, "[%{public}s] Marking medication education/interaction shards as required during add medication flow", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x22AAB7B80](v11, -1, -1);
    MEMORY[0x22AAB7B80](v10, -1, -1);

    v16 = *(v8 + 8);
    v16(v6, v7);
  }

  else
  {
    v17 = v0[41];
    v18 = v0[38];
    v19 = v0[39];

    v16 = *(v19 + 8);
    v16(v17, v18);
  }

  v0[45] = v16;
  v20 = v0[37];
  v21 = sub_2282F7440();
  v0[46] = v21;
  v0[2] = v0;
  v0[3] = sub_2282FB468;
  v22 = swift_continuation_init();
  sub_2281E0600();
  v0[47] = v23;
  v0[25] = v23;
  v0[18] = MEMORY[0x277D85DD0];
  v0[19] = 1107296256;
  v0[20] = sub_2282B4368;
  v0[21] = &block_descriptor_68;
  v0[22] = v22;
  [v21 markMedsEducationAsRequiredWithCompletion_];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_2282FB468()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 384) = v3;
  v4 = *(v1 + 352);
  v5 = *(v1 + 344);
  if (v3)
  {
    v6 = sub_2282FB854;
  }

  else
  {
    v6 = sub_2282FB598;
  }

  return MEMORY[0x2822009F8](v6, v5, v4);
}

uint64_t sub_2282FB598()
{
  v1 = *(v0 + 376);
  v2 = *(v0 + 296);

  v3 = *(v2 + qword_27D8276F8);
  *(v0 + 392) = v3;
  *(v0 + 80) = v0;
  *(v0 + 88) = sub_2282FB6AC;
  v4 = swift_continuation_init();
  *(v0 + 264) = v1;
  *(v0 + 208) = MEMORY[0x277D85DD0];
  *(v0 + 216) = 1107296256;
  *(v0 + 224) = sub_2282B4368;
  *(v0 + 232) = &block_descriptor_71;
  *(v0 + 240) = v4;
  [v3 markInteractionsShardAsRequiredWithCompletion_];

  return MEMORY[0x282200938](v0 + 80);
}

uint64_t sub_2282FB6AC()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 112);
  *(*v0 + 400) = v3;
  v4 = *(v1 + 352);
  v5 = *(v1 + 344);
  if (v3)
  {
    v6 = sub_2282FBACC;
  }

  else
  {
    v6 = sub_2282FB7DC;
  }

  return MEMORY[0x2822009F8](v6, v5, v4);
}

uint64_t sub_2282FB7DC()
{
  v1 = v0[49];
  v2 = v0[42];

  v4 = v0[40];
  v3 = v0[41];

  v5 = v0[1];

  return v5();
}

uint64_t sub_2282FB854()
{
  v34 = v0;
  v1 = *(v0 + 384);
  v2 = *(v0 + 336);

  swift_willThrow();
  v3 = *(v0 + 384);
  v4 = *(v0 + 320);
  v5 = *(v0 + 296);

  sub_228391150();
  v6 = v5;
  v7 = v3;
  v8 = sub_2283911A0();
  v9 = sub_2283925C0();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = *(v0 + 312);
    v31 = *(v0 + 320);
    v32 = *(v0 + 360);
    v12 = *(v0 + 296);
    v11 = *(v0 + 304);
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v33[0] = v14;
    *v13 = 136446466;
    *(v0 + 272) = v12;
    type metadata accessor for NewMedicationOnboardingViewController();
    v15 = v12;
    v16 = sub_228392040();
    v18 = sub_2281C96FC(v16, v17, v33);

    *(v13 + 4) = v18;
    *(v13 + 12) = 2082;
    *(v0 + 280) = v3;
    v19 = v3;
    sub_22818217C(0, &qword_280DDB860);
    v20 = sub_228392020();
    v22 = sub_2281C96FC(v20, v21, v33);

    *(v13 + 14) = v22;
    _os_log_impl(&dword_22816B000, v8, v9, "[%{public}s] Could not mark medication education/interaction shards as required: %{public}s", v13, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AAB7B80](v14, -1, -1);
    MEMORY[0x22AAB7B80](v13, -1, -1);

    v32(v31, v11);
  }

  else
  {
    v23 = *(v0 + 360);
    v25 = *(v0 + 312);
    v24 = *(v0 + 320);
    v26 = *(v0 + 304);

    v23(v24, v26);
  }

  v28 = *(v0 + 320);
  v27 = *(v0 + 328);

  v29 = *(v0 + 8);

  return v29();
}

uint64_t sub_2282FBACC()
{
  v34 = v0;
  v1 = *(v0 + 400);
  v2 = *(v0 + 336);

  swift_willThrow();
  v3 = *(v0 + 400);
  v4 = *(v0 + 320);
  v5 = *(v0 + 296);

  sub_228391150();
  v6 = v5;
  v7 = v3;
  v8 = sub_2283911A0();
  v9 = sub_2283925C0();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = *(v0 + 312);
    v31 = *(v0 + 320);
    v32 = *(v0 + 360);
    v12 = *(v0 + 296);
    v11 = *(v0 + 304);
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v33[0] = v14;
    *v13 = 136446466;
    *(v0 + 272) = v12;
    type metadata accessor for NewMedicationOnboardingViewController();
    v15 = v12;
    v16 = sub_228392040();
    v18 = sub_2281C96FC(v16, v17, v33);

    *(v13 + 4) = v18;
    *(v13 + 12) = 2082;
    *(v0 + 280) = v3;
    v19 = v3;
    sub_22818217C(0, &qword_280DDB860);
    v20 = sub_228392020();
    v22 = sub_2281C96FC(v20, v21, v33);

    *(v13 + 14) = v22;
    _os_log_impl(&dword_22816B000, v8, v9, "[%{public}s] Could not mark medication education/interaction shards as required: %{public}s", v13, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AAB7B80](v14, -1, -1);
    MEMORY[0x22AAB7B80](v13, -1, -1);

    v32(v31, v11);
  }

  else
  {
    v23 = *(v0 + 360);
    v25 = *(v0 + 312);
    v24 = *(v0 + 320);
    v26 = *(v0 + 304);

    v23(v24, v26);
  }

  v28 = *(v0 + 320);
  v27 = *(v0 + 328);

  v29 = *(v0 + 8);

  return v29();
}

void sub_2282FBD40(uint64_t a1, uint64_t a2)
{
  v4 = sub_2283911B0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v9 = sub_2282F7668();
    v18 = a1;
    v19 = a2;

    MEMORY[0x22AAB5C80](0x426863726165532ELL, 0xEA00000000007261);
    v10 = sub_228391FC0();

    [v9 setAccessibilityIdentifier_];

    v11 = sub_2282F789C();
    v18 = a1;
    v19 = a2;

    MEMORY[0x22AAB5C80](0x426C65636E61432ELL, 0xED00006E6F747475);
    v17 = sub_228391FC0();

    [v11 setAccessibilityIdentifier_];

    v12 = v17;
  }

  else
  {
    sub_228391150();
    v13 = sub_2283911A0();
    v14 = sub_2283925C0();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_22816B000, v13, v14, "Unable to set automation identifiers as there is no base identifier.", v15, 2u);
      MEMORY[0x22AAB7B80](v15, -1, -1);
    }

    (*(v5 + 8))(v8, v4);
  }
}

id NewMedicationOnboardingViewController.__allocating_init(collectionViewLayout:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCollectionViewLayout_];

  return v3;
}

void sub_2282FC06C()
{
  v1 = *(v0 + qword_27D827740);

  v2 = *(v0 + qword_27D827748);

  v3 = *(v0 + qword_27D8276E0);

  v4 = *(v0 + qword_27D8276E8);

  v5 = *(v0 + qword_27D8276F0 + 8);

  v6 = *(v0 + qword_27D827728);

  v7 = *(v0 + qword_27D827730);
}

id NewMedicationOnboardingViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NewMedicationOnboardingViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_2282FC198(uint64_t a1)
{
  v2 = *(a1 + qword_27D827740);

  v3 = *(a1 + qword_27D827748);

  v4 = *(a1 + qword_27D8276E0);

  v5 = *(a1 + qword_27D8276E8);

  v6 = *(a1 + qword_27D8276F0 + 8);

  v7 = *(a1 + qword_27D827728);

  v8 = *(a1 + qword_27D827730);
}

uint64_t sub_2282FC2BC()
{
  v1 = (*v0 + qword_27D8276F0);
  swift_beginAccess();
  v3 = *v1;
  v2 = v1[1];

  return v3;
}

uint64_t sub_2282FC318(uint64_t a1, uint64_t a2)
{
  v5 = (*v2 + qword_27D8276F0);
  swift_beginAccess();
  v6 = v5[1];
  *v5 = a1;
  v5[1] = a2;
}

uint64_t (*sub_2282FC37C())()
{
  v1 = *v0;
  swift_beginAccess();
  return j__swift_endAccess;
}

void sub_2282FC3E8(void *a1, char *a2, void *a3, void *a4, uint64_t a5, uint64_t a6)
{
  v143 = a5;
  v144 = a6;
  v136 = a4;
  v138 = sub_2283911B0();
  v145 = *(v138 - 8);
  v9 = *(v145 + 64);
  MEMORY[0x28223BE20](v138);
  v134 = &v129 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x277D83D88];
  sub_2282FE8F8(0, &qword_27D827C30, MEMORY[0x277D85720], MEMORY[0x277D83D88]);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v133 = &v129 - v14;
  sub_2282FE8F8(0, &qword_280DDBD20, MEMORY[0x277D116C8], v11);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v140 = &v129 - v17;
  sub_2282FE8F8(0, &qword_27D8238A8, MEMORY[0x277D11640], v11);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v139 = &v129 - v20;
  sub_2282FE8F8(0, &unk_27D827790, type metadata accessor for FormStepResult, v11);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21 - 8);
  v137 = &v129 - v23;
  sub_2282FE8F8(0, &qword_27D827160, MEMORY[0x277CC95F0], v11);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24 - 8);
  v135 = &v129 - v26;
  v27 = type metadata accessor for MedicationOnboardingFlowManager.EntryMode(0);
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x28223BE20](v27);
  v142 = (&v129 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  v141 = type metadata accessor for MedicationOnboardingFlowManager(0);
  v132 = *(v141 - 8);
  v30 = *(v132 + 64);
  v31 = MEMORY[0x28223BE20](v141);
  v32 = MEMORY[0x28223BE20](v31);
  v34 = &v129 - v33;
  MEMORY[0x28223BE20](v32);
  v36 = &v129 - v35;
  v37 = *&a2[qword_27D8276E0];
  v38 = swift_allocObject();
  *(v38 + 16) = a3;
  *(v38 + 24) = a2;
  v39 = a3;
  v40 = a2;
  v146 = _sSo17UIAlertControllerC19HealthMedicationsUIE27makeAlertForExsitingConcept7concept11listManager11showHandlerABSgSo9HKConceptC_25UserDomainConceptsSupport04ListjM0CySo012HKMedicationqrJ0CctFZ_0(a1, v37, sub_2282FF858, v38);

  if (v146)
  {
    [v39 presentViewController:v146 animated:1 completion:0];
    v41 = v146;
  }

  else
  {
    v129 = v30;
    v130 = &v129 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
    v131 = v39;
    v146 = v36;
    sub_2282FEBEC();
    v42 = v40;
    v44 = *(v43 + 48);
    v45 = v142;
    *v142 = a1;
    v46 = sub_22838F4A0();
    v47 = *(v46 - 8);
    (*(v47 + 16))(v45 + v44, v136, v46);
    swift_storeEnumTagMultiPayload();
    v136 = v42;
    v48 = *&v42[qword_27D8276E8];
    v49 = v141;
    v50 = *(v141 + 36);
    (*(v47 + 56))(v135, 1, 1, v46);
    sub_2282FEB08(0, &qword_27D8277A0, &qword_27D827160, MEMORY[0x277CC95F0]);
    v52 = *(v51 + 48);
    v53 = *(v51 + 52);
    swift_allocObject();
    v54 = a1;
    *&v34[v50] = sub_228391890();
    v55 = v49[10];
    *&v147[0] = 0;
    sub_2282FE95C();
    v57 = *(v56 + 48);
    v58 = *(v56 + 52);
    swift_allocObject();
    *&v34[v55] = sub_228391890();
    v59 = v49[11];
    LOBYTE(v147[0]) = 0;
    sub_22817D780();
    v61 = *(v60 + 48);
    v62 = *(v60 + 52);
    swift_allocObject();
    *&v34[v59] = sub_228391890();
    v63 = v49[12];
    v64 = type metadata accessor for FormStepResult();
    (*(*(v64 - 8) + 56))(v137, 1, 1, v64);
    sub_2282FEB08(0, &qword_27D8253A0, &unk_27D827790, type metadata accessor for FormStepResult);
    v66 = *(v65 + 48);
    v67 = *(v65 + 52);
    swift_allocObject();
    *&v34[v63] = sub_228391890();
    v68 = v49[13];
    sub_2282FE9DC(0, &qword_27D8277D0, &qword_27D825070, MEMORY[0x277D837D0]);
    v70 = v69;
    v147[0] = 0uLL;
    v71 = *(v69 + 48);
    v72 = *(v69 + 52);
    swift_allocObject();
    *&v34[v68] = sub_228391890();
    v73 = v49[14];
    v147[0] = 0uLL;
    v74 = *(v70 + 48);
    v75 = *(v70 + 52);
    swift_allocObject();

    *&v34[v73] = sub_228391890();
    v76 = v49[15];
    *&v147[0] = 0;
    sub_228257A7C();
    v78 = *(v77 + 48);
    v79 = *(v77 + 52);
    swift_allocObject();
    *&v34[v76] = sub_228391890();
    v80 = v49[16];
    v81 = sub_2283909E0();
    (*(*(v81 - 8) + 56))(v139, 1, 1, v81);
    sub_2282FEB08(0, &qword_27D8238C8, &qword_27D8238A8, MEMORY[0x277D11640]);
    v83 = *(v82 + 48);
    v84 = *(v82 + 52);
    swift_allocObject();
    *&v34[v80] = sub_228391890();
    v85 = v49[17];
    v86 = sub_228390D50();
    (*(*(v86 - 8) + 56))(v140, 1, 1, v86);
    sub_2282FEB08(0, &qword_27D827800, &qword_280DDBD20, MEMORY[0x277D116C8]);
    v88 = *(v87 + 48);
    v89 = *(v87 + 52);
    swift_allocObject();
    *&v34[v85] = sub_228391890();
    v90 = v49[18];
    sub_2282FE9DC(0, &qword_27D827808, &qword_27D827810, &type metadata for MedicationNicknameNotes);
    memset(v147, 0, 32);
    v92 = *(v91 + 48);
    v93 = *(v91 + 52);
    swift_allocObject();
    *&v34[v90] = sub_228391890();
    v94 = v49[19];
    *&v147[0] = 0;
    sub_2281BC72C();
    v96 = *(v95 + 48);
    v97 = *(v95 + 52);
    swift_allocObject();
    *&v34[v94] = sub_228391890();
    v98 = v49[21];
    *&v147[0] = 0;
    sub_2282FEB08(0, &qword_27D827820, &qword_27D826D70, sub_2282FEA58);
    v100 = *(v99 + 48);
    v101 = *(v99 + 52);
    swift_allocObject();
    *&v34[v98] = sub_228391890();
    v102 = v49[22];
    sub_228390890();
    *&v34[v102] = sub_228390880();
    sub_2282FEB84(v45, v34, type metadata accessor for MedicationOnboardingFlowManager.EntryMode);
    v34[v49[7]] = 64;
    *&v34[v49[5]] = v48;

    v103 = v143;
    sub_228390DF0();
    *&v34[v49[6]] = v103;
    v34[v49[8]] = 0;
    *&v147[0] = sub_228371268();
    *(&v147[0] + 1) = v104;
    sub_228391850();

    *&v147[0] = 0;
    sub_2282FEB08(0, &qword_27D827848, &qword_27D827850, sub_2282B9CF8);
    v106 = *(v105 + 48);
    v107 = *(v105 + 52);
    swift_allocObject();
    *&v34[v49[20]] = sub_228391890();
    sub_228391870();
    if (*&v147[0])
    {
    }

    else
    {
      v108 = sub_2283922D0();
      v109 = v133;
      (*(*(v108 - 8) + 56))(v133, 1, 1, v108);
      v110 = v130;
      sub_2282FEB84(v34, v130, type metadata accessor for MedicationOnboardingFlowManager);
      v111 = (*(v132 + 80) + 32) & ~*(v132 + 80);
      v112 = swift_allocObject();
      *(v112 + 16) = 0;
      *(v112 + 24) = 0;
      sub_2282FEC6C(v110, v112 + v111);
      sub_2281DC568(0, 0, v109, &unk_2283A3240, v112);
    }

    v113 = v138;
    v114 = v145;
    sub_2282FEDC0(v45, type metadata accessor for MedicationOnboardingFlowManager.EntryMode);
    v115 = v146;
    sub_2282FEC6C(v34, v146);
    MedicationOnboardingFlowManager.makeNextViewControllerForStep()(v116);
    if (v117)
    {
      v118 = v117;
      v119 = [v136 navigationController];
      if (v119)
      {
        v120 = v119;
        [v119 pushViewController:v118 animated:1];
      }
    }

    else
    {
      v121 = v134;
      sub_228391150();
      v122 = sub_2283911A0();
      v123 = sub_2283925C0();
      if (os_log_type_enabled(v122, v123))
      {
        v124 = swift_slowAlloc();
        v125 = swift_slowAlloc();
        *&v147[0] = v125;
        *v124 = 136315138;
        v126 = sub_228393600();
        v128 = sub_2281C96FC(v126, v127, v147);

        *(v124 + 4) = v128;
        _os_log_impl(&dword_22816B000, v122, v123, "[%s] MedicationOnboardingFlowManager wasn't able to find next ViewController!", v124, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v125);
        MEMORY[0x22AAB7B80](v125, -1, -1);
        MEMORY[0x22AAB7B80](v124, -1, -1);
      }

      (*(v114 + 8))(v121, v113);
    }

    [v131 dismissViewControllerAnimated:1 completion:0];
    sub_2282FEDC0(v115, type metadata accessor for MedicationOnboardingFlowManager);
  }
}

void sub_2282FD0A8(uint64_t a1, void *a2, void *a3)
{
  v5 = swift_allocObject();
  *(v5 + 16) = a3;
  v8[4] = sub_2282FFBFC;
  v8[5] = v5;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 1107296256;
  v8[2] = sub_228191E9C;
  v8[3] = &block_descriptor_91;
  v6 = _Block_copy(v8);
  v7 = a3;

  [a2 dismissViewControllerAnimated:1 completion:v6];
  _Block_release(v6);
}

Swift::Void __swiftcall NewMedicationOnboardingViewController.searchBar(_:textDidChange:)(UISearchBar *_, Swift::String textDidChange)
{
  v3 = *(v2 + qword_27D827748);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_228391970();
}

uint64_t sub_2282FD234(uint64_t a1)
{
  sub_228392000();
  v2 = *(a1 + qword_27D827748);
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_228391970();
}

Swift::Void __swiftcall NewMedicationOnboardingViewController.searchBarTextDidBeginEditing(_:)(UISearchBar *a1)
{
  v2 = v1;
  swift_getObjectType();
  sub_2282FE8F8(0, &qword_27D827C30, MEMORY[0x277D85720], MEMORY[0x277D83D88]);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v31 - v6;
  v8 = sub_2283911B0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228391150();
  v13 = sub_2283911A0();
  v14 = sub_2283925C0();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v32 = a1;
    v16 = v15;
    v17 = swift_slowAlloc();
    v33 = v17;
    *v16 = 136315138;
    v18 = sub_228393600();
    v20 = sub_2281C96FC(v18, v19, &v33);
    v31 = v8;
    v21 = v7;
    v22 = v2;
    v23 = v20;

    *(v16 + 4) = v23;
    v2 = v22;
    v7 = v21;
    _os_log_impl(&dword_22816B000, v13, v14, "[%s] start search", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v17);
    MEMORY[0x22AAB7B80](v17, -1, -1);
    v24 = v16;
    a1 = v32;
    MEMORY[0x22AAB7B80](v24, -1, -1);

    (*(v9 + 8))(v12, v31);
  }

  else
  {

    (*(v9 + 8))(v12, v8);
  }

  v25 = sub_2283922D0();
  (*(*(v25 - 8) + 56))(v7, 1, 1, v25);
  sub_2283922A0();
  v26 = v2;
  v27 = sub_228392290();
  v28 = swift_allocObject();
  v29 = MEMORY[0x277D85700];
  v28[2] = v27;
  v28[3] = v29;
  v28[4] = v26;
  sub_2281DC568(0, 0, v7, &unk_2283A30C0, v28);

  [(UISearchBar *)a1 becomeFirstResponder];
  v30 = *&v26[qword_27D827748];
  swift_getKeyPath();
  swift_getKeyPath();
  v34 = 1;

  sub_228391970();
}

void sub_2282FD62C(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  NewMedicationOnboardingViewController.searchBarTextDidBeginEditing(_:)(v4);
}

Swift::Void __swiftcall NewMedicationOnboardingViewController.searchBarCancelButtonClicked(_:)(UISearchBar *a1)
{
  [(UISearchBar *)a1 resignFirstResponder];
  v2 = *(v1 + qword_27D827748);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_228391970();
}

void sub_2282FD718(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  [v4 resignFirstResponder];
  v6 = *&v5[qword_27D827748];
  swift_getKeyPath();
  swift_getKeyPath();

  sub_228391970();
}

void sub_2282FD7C4(void *a1, uint64_t a2)
{
  v55 = sub_2282F7668();
  v5 = [a1 snapshotViewAfterScreenUpdates_];
  if (v5)
  {
    v6 = v5;
    v7 = [v2 navigationItem];
    v8 = [v7 searchController];

    if (v8)
    {
      v9 = [v8 searchBar];

      if (v9)
      {
        v10 = [v2 view];
        if (v10)
        {
          v11 = v10;
          [v6 frame];
          [v11 convertRect:a2 fromCoordinateSpace:?];
          v13 = v12;
          v15 = v14;
          v17 = v16;
          v19 = v18;

          [v6 setFrame_];
          [a1 setAlpha_];
          v20 = [v2 view];
          if (v20)
          {
            v21 = v20;
            [v20 addSubview_];

            v22 = [v2 collectionView];
            if (v22)
            {
              v23 = v22;
              v24 = [v22 visibleCells];

              sub_22817A958(0, &qword_27D827770, 0x277D752A8);
              v25 = sub_2283921A0();

              v26 = [*&v2[qword_27D827708] searchTextField];
              [v26 frame];
              v28 = v27;
              v30 = v29;
              v32 = v31;
              v34 = v33;

              v35 = [v2 view];
              [v9 convertRect:v35 toView:{v28, v30, v32, v34}];
              v37 = v36;
              v39 = v38;
              v41 = v40;
              v43 = v42;

              v44 = objc_opt_self();
              v45 = swift_allocObject();
              *(v45 + 16) = v25;
              v60 = sub_2282FF6D0;
              v61 = v45;
              aBlock = MEMORY[0x277D85DD0];
              v57 = 1107296256;
              v58 = sub_228191E9C;
              v59 = &block_descriptor_22;
              v46 = _Block_copy(&aBlock);

              [v44 animateWithDuration:v46 animations:0.1];
              _Block_release(v46);
              v47 = swift_allocObject();
              v47[2] = v6;
              v47[3] = v37;
              v47[4] = v39;
              v47[5] = v41;
              v47[6] = v43;
              v60 = sub_2282FF6F0;
              v61 = v47;
              aBlock = MEMORY[0x277D85DD0];
              v57 = 1107296256;
              v58 = sub_228191E9C;
              v59 = &block_descriptor_41;
              v48 = _Block_copy(&aBlock);
              v49 = v6;

              v50 = swift_allocObject();
              v50[2] = 0x3FD999999999999ALL;
              v50[3] = v55;
              v50[4] = v49;
              v50[5] = v2;
              v60 = sub_2282FF708;
              v61 = v50;
              aBlock = MEMORY[0x277D85DD0];
              v57 = 1107296256;
              v58 = sub_2282C49D0;
              v59 = &block_descriptor_47;
              v51 = _Block_copy(&aBlock);
              v52 = v49;
              v53 = v55;
              v54 = v2;

              [v44 animateWithDuration:v48 animations:v51 completion:0.36];
              _Block_release(v51);
              _Block_release(v48);

              return;
            }

            goto LABEL_14;
          }
        }

        else
        {
          __break(1u);
        }

        __break(1u);
LABEL_14:
        __break(1u);
        return;
      }
    }
  }
}

void sub_2282FDCCC(unint64_t a1)
{
  if (a1 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_2283930D0())
  {
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v4 = MEMORY[0x22AAB6D80](j, a1);
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_12;
        }

        v4 = *(a1 + 8 * j + 32);
      }

      v5 = v4;
      v6 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      [v4 setAlpha_];

      if (v6 == i)
      {
        return;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }
}

void sub_2282FDDA4(double a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v9 = objc_opt_self();
  v10 = swift_allocObject();
  v10[2] = a3;
  v10[3] = a4;
  v10[4] = a5;
  v22 = sub_2282FF718;
  v23 = v10;
  v18 = MEMORY[0x277D85DD0];
  v19 = 1107296256;
  v20 = sub_228191E9C;
  v21 = &block_descriptor_53_0;
  v11 = _Block_copy(&v18);
  v12 = a3;
  v13 = a4;
  v14 = a5;

  v15 = swift_allocObject();
  *(v15 + 16) = v13;
  v22 = sub_2282FF724;
  v23 = v15;
  v18 = MEMORY[0x277D85DD0];
  v19 = 1107296256;
  v20 = sub_2282C49D0;
  v21 = &block_descriptor_59_0;
  v16 = _Block_copy(&v18);
  v17 = v13;

  [v9 animateWithDuration:v11 animations:v16 completion:a1 * 0.1];
  _Block_release(v16);
  _Block_release(v11);
}

uint64_t sub_2282FDF58(void *a1, void *a2, void *a3)
{
  v6 = sub_228391DC0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = aBlock - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_228391DF0();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = aBlock - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  [a1 setHidden_];
  [a1 setAlpha_];
  [a2 setAlpha_];
  v16 = [a3 navigationItem];
  if (qword_280DDCF18 != -1)
  {
    swift_once();
  }

  sub_22838F0C0();
  v17 = sub_228391FC0();

  [v16 setTitle_];

  sub_22817A958(0, &qword_280DDCEE0, 0x277D85C78);
  v18 = sub_228392790();
  v19 = swift_allocObject();
  *(v19 + 16) = a1;
  aBlock[4] = sub_2282FF734;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_228191E9C;
  aBlock[3] = &block_descriptor_65_0;
  v20 = _Block_copy(aBlock);
  v21 = a1;

  sub_228391DE0();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_2282FF744(&qword_280DDCF10, MEMORY[0x277D85198]);
  sub_2282FE8F8(0, &qword_280DDCF00, MEMORY[0x277D85198], MEMORY[0x277D83940]);
  sub_228216D44();
  sub_228393030();
  MEMORY[0x22AAB6340](0, v15, v10, v20);
  _Block_release(v20);

  (*(v7 + 8))(v10, v6);
  return (*(v12 + 8))(v15, v11);
}

uint64_t sub_2282FE344(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v42 = a3;
  v43 = a1;
  v6 = sub_22838F4A0();
  v44 = *(v6 - 8);
  v45 = v6;
  v7 = *(v44 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x277CBCED0];
  sub_2282FFD10(0, &qword_280DDBBD0, MEMORY[0x277D839B0], MEMORY[0x277CBCED0]);
  v12 = v11;
  v13 = *(v11 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v11);
  v16 = &v41 - v15;
  sub_2282FFD10(0, &unk_27D8278B0, MEMORY[0x277D837D0], v10);
  v18 = v17;
  v19 = *(v17 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v17);
  v22 = &v41 - v21;
  v47[3] = sub_228390EA0();
  v47[4] = MEMORY[0x277D11710];
  v47[0] = a2;
  v23 = a4 + qword_27D823950;
  *v23 = 0;
  *(v23 + 8) = 1;
  *(a4 + qword_27D823968 + 8) = 0;
  swift_unknownObjectWeakInit();
  *(a4 + qword_27D823980) = 0;
  *(a4 + qword_27D823988) = 0;
  *(a4 + qword_27D823990) = 0;
  *(a4 + qword_27D823998) = 0;
  *(a4 + qword_27D8239A0) = 0;
  *(a4 + qword_27D8239A8) = 0;
  *(a4 + qword_27D8239F8) = 1;
  v24 = qword_27D823930;
  v46[0] = 0;
  v46[1] = 0xE000000000000000;
  sub_228391920();
  (*(v19 + 32))(a4 + v24, v22, v18);
  v25 = qword_27D823940;
  LOBYTE(v46[0]) = 0;
  sub_228391920();
  v26 = *(v13 + 32);
  v26(a4 + v25, v16, v12);
  v27 = qword_27D823948;
  LOBYTE(v46[0]) = 0;
  sub_228391920();
  v26(a4 + v27, v16, v12);
  *(a4 + qword_27D8239B8) = MEMORY[0x277D84FA0];
  *(a4 + qword_27D823A00) = 0;
  v28 = MEMORY[0x277D84F90];
  *(a4 + qword_27D828998) = MEMORY[0x277D84F90];
  *(a4 + qword_27D8239C0) = v28;
  v29 = v42;
  *(a4 + qword_27D8239B0) = v42;
  sub_228180FB0(v47, a4 + qword_27D823970);
  *(a4 + qword_27D823978) = v43;
  v46[0] = 0;
  v46[1] = 0xE000000000000000;
  v30 = v29;

  sub_2283931D0();

  strcpy(v46, "MutableArray<");
  HIWORD(v46[1]) = -4864;
  sub_22838F490();
  v31 = sub_22838F450();
  v33 = v32;
  (*(v44 + 8))(v9, v45);
  MEMORY[0x22AAB5C80](v31, v33);

  MEMORY[0x22AAB5C80](62, 0xE100000000000000);
  v34 = sub_22838FF30();

  v35 = sub_228183554();
  v36 = OBJC_IVAR____TtC19HealthMedicationsUI20NetworkStateObserver_networkMonitor;
  v37 = *(v35 + OBJC_IVAR____TtC19HealthMedicationsUI20NetworkStateObserver_networkMonitor);
  sub_22817A958(0, &qword_280DDCEE0, 0x277D85C78);

  v38 = sub_228392790();
  sub_228391B10();

  v39 = *(v35 + v36);
  swift_allocObject();
  swift_weakInit();

  sub_228176FA8(sub_2282FFD60);
  sub_228391B00();

  sub_2281864C0();
  sub_228187770();
  sub_228185D08();

  __swift_destroy_boxed_opaque_existential_0(v47);
  return v34;
}

uint64_t type metadata accessor for NewMedicationOnboardingViewController()
{
  result = qword_27D827870;
  if (!qword_27D827870)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2282FE8F8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_2282FE95C()
{
  if (!qword_27D8277A8)
  {
    sub_2281BC2E4(255, &unk_27D8277B0, &qword_27D823BD8, 0x277CCD1B0);
    v0 = sub_228391880();
    if (!v1)
    {
      atomic_store(v0, &qword_27D8277A8);
    }
  }
}

void sub_2282FE9DC(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (!*a2)
  {
    sub_2282FFD10(255, a3, a4, MEMORY[0x277D83D88]);
    v5 = sub_228391880();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_2282FEA58()
{
  if (!qword_27D827830)
  {
    sub_22817A958(255, &qword_27D824240, 0x277CCDA00);
    sub_22818C470(&qword_27D827840, &qword_27D824240, 0x277CCDA00);
    v0 = sub_228391F40();
    if (!v1)
    {
      atomic_store(v0, &qword_27D827830);
    }
  }
}

void sub_2282FEB08(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    sub_2282FE8F8(255, a3, a4, MEMORY[0x277D83D88]);
    v5 = sub_228391880();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_2282FEB84(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_2282FEBEC()
{
  if (!qword_27D827868)
  {
    sub_22817A958(255, &qword_27D823BD8, 0x277CCD1B0);
    sub_22838F4A0();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27D827868);
    }
  }
}

uint64_t sub_2282FEC6C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MedicationOnboardingFlowManager(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2282FECD0(uint64_t a1)
{
  v4 = *(type metadata accessor for MedicationOnboardingFlowManager(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_22819DA1C;

  return sub_22837E1E4(a1, v6, v7, v1 + v5);
}

uint64_t sub_2282FEDC0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_2282FEE20()
{
  *(v0 + qword_27D8276F8) = 0;
  v1 = (v0 + qword_27D8276F0);
  v2 = *MEMORY[0x277D12788];
  v4 = sub_228392000();
  v5 = v3;

  MEMORY[0x22AAB5C80](0x7461636964654D2ELL, 0xEC000000736E6F69);

  *v1 = v4;
  v1[1] = v5;
  *(v0 + qword_27D827700) = 0x4046000000000000;
  *(v0 + qword_27D827708) = 0;
  *(v0 + qword_27D827710) = 0;
  *(v0 + qword_27D827718) = 0;
  *(v0 + qword_27D827720) = 0;
  *(v0 + qword_27D827728) = 0;
  *(v0 + qword_27D827730) = 0;
  sub_228393300();
  __break(1u);
}

uint64_t sub_2282FEF4C(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v34 = a4;
  ObjectType = swift_getObjectType();
  v37 = sub_228391DC0();
  v40 = *(v37 - 8);
  v9 = *(v40 + 64);
  MEMORY[0x28223BE20](v37);
  v36 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_228391DF0();
  v38 = *(v11 - 8);
  v39 = v11;
  v12 = *(v38 + 64);
  MEMORY[0x28223BE20](v11);
  v32 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_22838F4A0();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22817A958(0, &qword_280DDCEE0, 0x277D85C78);
  v35 = sub_228392790();
  (*(v15 + 16))(v17, a3, v14);
  v18 = (*(v15 + 80) + 40) & ~*(v15 + 80);
  v19 = (v16 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  *(v20 + 2) = a2;
  *(v20 + 3) = v5;
  *(v20 + 4) = a1;
  (*(v15 + 32))(&v20[v18], v17, v14);
  v21 = ObjectType;
  *&v20[v19] = v34;
  *&v20[(v19 + 15) & 0xFFFFFFFFFFFFFFF8] = v21;
  aBlock[4] = sub_2282FF7B8;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_228191E9C;
  aBlock[3] = &block_descriptor_77;
  v22 = _Block_copy(aBlock);
  v23 = a2;
  v24 = v5;
  v25 = a1;

  v26 = v32;
  sub_228391DE0();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_2282FF744(&qword_280DDCF10, MEMORY[0x277D85198]);
  sub_2282FE8F8(0, &qword_280DDCF00, MEMORY[0x277D85198], MEMORY[0x277D83940]);
  sub_228216D44();
  v28 = v36;
  v27 = v37;
  sub_228393030();
  v29 = v35;
  MEMORY[0x22AAB6340](0, v26, v28, v22);
  _Block_release(v22);

  (*(v40 + 8))(v28, v27);
  return (*(v38 + 8))(v26, v39);
}

uint64_t sub_2282FF350(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_22819DA1C;

  return sub_2282FB0F4(a1, v4, v5, v6);
}

uint64_t block_copy_helper_22(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2282FF744(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_2282FF7B8()
{
  v1 = *(sub_22838F4A0() - 8);
  v2 = (*(v1 + 80) + 40) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  v7 = *(v0 + v3);
  v8 = *(v0 + ((v3 + 15) & 0xFFFFFFFFFFFFFFF8));

  sub_2282FC3E8(v4, v5, v6, v0 + v2, v7, v8);
}

uint64_t objectdestroyTm_0()
{
  v1 = type metadata accessor for MedicationOnboardingFlowManager(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  v6 = v0 + v3;
  type metadata accessor for MedicationOnboardingFlowManager.EntryMode(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {

      sub_2282FEBEC();
      v16 = *(v15 + 48);
      v17 = sub_22838F4A0();
      (*(*(v17 - 8) + 8))(v6 + v16, v17);
    }

    else if (EnumCaseMultiPayload == 3)
    {
      v10 = *(v6 + 8);
    }
  }

  else if (EnumCaseMultiPayload <= 1)
  {
    type metadata accessor for MedicationSearchItem.Source(0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v8 = sub_228390B70();
      v9 = v0 + v3;
    }

    else
    {

      sub_22818DE38();
      v9 = v6 + *(v11 + 48);
      v8 = sub_228390C30();
    }

    (*(*(v8 - 8) + 8))(v9);
    v12 = type metadata accessor for MedicationSearchItem(0);
    v13 = *(v6 + *(v12 + 24) + 8);

    v14 = *(v6 + *(v12 + 28) + 8);
  }

  v18 = *(v6 + v1[5]);

  v19 = *(v6 + v1[9]);

  v20 = *(v6 + v1[10]);

  v21 = *(v6 + v1[11]);

  v22 = *(v6 + v1[12]);

  v23 = *(v6 + v1[13]);

  v24 = *(v6 + v1[14]);

  v25 = *(v6 + v1[15]);

  v26 = *(v6 + v1[16]);

  v27 = *(v6 + v1[17]);

  v28 = *(v6 + v1[18]);

  v29 = *(v6 + v1[19]);

  v30 = *(v6 + v1[20]);

  v31 = *(v6 + v1[21]);

  v32 = *(v6 + v1[22]);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_2282FFB0C(uint64_t a1)
{
  v4 = *(type metadata accessor for MedicationOnboardingFlowManager(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_22819D87C;

  return sub_22837E1E4(a1, v6, v7, v1 + v5);
}

void sub_2282FFC14()
{
  if (!qword_27D827898)
  {
    sub_2282FFD10(255, &unk_280DDBBE0, MEMORY[0x277D839B0], MEMORY[0x277CBCEC0]);
    sub_22817A958(255, &qword_280DDCEE0, 0x277D85C78);
    sub_22824EB64();
    sub_22818C470(&qword_280DDBAC0, &qword_280DDCEE0, 0x277D85C78);
    v0 = sub_2283917D0();
    if (!v1)
    {
      atomic_store(v0, &qword_27D827898);
    }
  }
}

void sub_2282FFD10(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

double *MedicationsDoseLogViewModel.__allocating_init(medication:doseEvent:scheduleItem:logDate:dosage:index:)(void *a1, void *a2, uint64_t a3, char *a4, uint64_t a5, double a6)
{
  v47 = a5;
  v12 = sub_22838F440();
  v43 = *(v12 - 8);
  v13 = *(v43 + 64);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v42 - v17;
  v19 = *(v6 + 48);
  v20 = *(v6 + 52);
  v21 = swift_allocObject();
  *(v21 + 2) = a1;
  *(v21 + 3) = a2;
  *(v21 + 4) = a3;
  v44 = a1;
  v45 = v16;
  if (a2)
  {

    v22 = a2;
    v23 = a1;
    v24 = COERCE_DOUBLE(sub_2283928B0());
    v26 = v25;

    if ((v26 & 1) == 0)
    {
      a6 = v24;
      v21[5] = v24;
      goto LABEL_11;
    }

    v27 = COERCE_DOUBLE(sub_2283928A0());
    if ((v28 & 1) == 0)
    {
      a6 = v27;
      v21[5] = v27;
LABEL_11:
      v31 = [v22 logStatus];
      *(v21 + 6) = v31;
      v32 = [v22 logStatus];
      goto LABEL_12;
    }
  }

  else
  {

    v29 = a1;
  }

  if (a3)
  {
    sub_2283908F0();
    a6 = v30;
  }

  v21[5] = a6;
  if (a2)
  {
    v22 = a2;
    goto LABEL_11;
  }

  v32 = 1;
  *(v21 + 6) = 1;
  v31 = 1;
LABEL_12:
  *(v21 + OBJC_IVAR____TtC19HealthMedicationsUI27MedicationsDoseLogViewModel_initialStatus) = v32;
  v33 = qword_283B66B60 == v31 || qword_283B66B58 == v31;
  v46 = a4;
  if (v33 && a2)
  {
    v34 = [a2 startDate];
    sub_22838F3E0();

    v35 = v43;
  }

  else
  {
    v35 = v43;
    (*(v43 + 16))(v18, a4, v12);
  }

  v36 = *(v35 + 32);
  v36(v21 + OBJC_IVAR____TtC19HealthMedicationsUI27MedicationsDoseLogViewModel_logDate, v18, v12);
  if (qword_283B66B58 != v31 && qword_283B66B60 != v31)
  {

LABEL_27:
    v40 = v45;
    v36(v45, v46, v12);
    goto LABEL_28;
  }

  if (!a2)
  {

    goto LABEL_27;
  }

  v37 = a2;
  v38 = v35;
  v39 = [v37 startDate];

  v40 = v45;
  sub_22838F3E0();

  (*(v38 + 8))(v46, v12);
LABEL_28:
  v36(v21 + OBJC_IVAR____TtC19HealthMedicationsUI27MedicationsDoseLogViewModel_initialLogDate, v40, v12);
  *(v21 + OBJC_IVAR____TtC19HealthMedicationsUI27MedicationsDoseLogViewModel_initialDoseAmount) = a6;
  *(v21 + OBJC_IVAR____TtC19HealthMedicationsUI27MedicationsDoseLogViewModel_index) = v47;
  return v21;
}

uint64_t MedicationDoseLogListViewModel.__allocating_init(date:title:medicationDoses:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(v4 + 48);
  v10 = *(v4 + 52);
  v11 = swift_allocObject();
  v12 = OBJC_IVAR____TtC19HealthMedicationsUI30MedicationDoseLogListViewModel_date;
  v13 = sub_22838F440();
  (*(*(v13 - 8) + 32))(v11 + v12, a1, v13);
  v14 = (v11 + OBJC_IVAR____TtC19HealthMedicationsUI30MedicationDoseLogListViewModel_title);
  *v14 = a2;
  v14[1] = a3;
  *(v11 + 16) = a4;
  return v11;
}

double *MedicationsDoseLogViewModel.init(medication:doseEvent:scheduleItem:logDate:dosage:index:)(void *a1, void *a2, uint64_t a3, char *a4, uint64_t a5, double a6)
{
  v7 = v6;
  v43 = a5;
  v13 = sub_22838F440();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v41 = &v40 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v19 = &v40 - v18;
  *(v6 + 2) = a1;
  *(v6 + 3) = a2;
  *(v6 + 4) = a3;
  v40 = a1;
  if (a2)
  {
    v20 = v14;

    v21 = a2;
    v22 = a1;
    v23 = sub_2283928B0();
    v25 = v24;

    if ((v25 & 1) == 0)
    {
      *(v7 + 5) = v23;
      v14 = v20;
      goto LABEL_11;
    }

    v26 = sub_2283928A0();
    v14 = v20;
    if ((v27 & 1) == 0)
    {
      *(v7 + 5) = v26;
LABEL_11:
      *(v7 + 6) = [v21 logStatus];
      v30 = [v21 logStatus];
      goto LABEL_12;
    }
  }

  else
  {

    v28 = a1;
  }

  if (a3)
  {
    sub_2283908F0();
    a6 = v29;
  }

  v7[5] = a6;
  if (a2)
  {
    v21 = a2;
    goto LABEL_11;
  }

  v30 = 1;
  *(v7 + 6) = 1;
LABEL_12:
  *(v7 + OBJC_IVAR____TtC19HealthMedicationsUI27MedicationsDoseLogViewModel_initialStatus) = v30;
  v31 = *(v7 + 6);
  v32 = qword_283B66F60 == v31 || qword_283B66F58 == v31;
  v42 = a4;
  if (v32 && a2)
  {
    v33 = [a2 startDate];
    sub_22838F3E0();
  }

  else
  {
    (*(v14 + 16))(v19, a4, v13);
  }

  v34 = *(v14 + 32);
  v34(v7 + OBJC_IVAR____TtC19HealthMedicationsUI27MedicationsDoseLogViewModel_logDate, v19, v13);
  v35 = *(v7 + 6);
  if (qword_283B66F58 != v35 && qword_283B66F60 != v35)
  {

LABEL_27:
    v38 = v41;
    v34(v41, v42, v13);
    goto LABEL_28;
  }

  if (!a2)
  {

    goto LABEL_27;
  }

  v36 = a2;
  v37 = [v36 startDate];

  v38 = v41;
  sub_22838F3E0();

  (*(v14 + 8))(v42, v13);
LABEL_28:
  v34(v7 + OBJC_IVAR____TtC19HealthMedicationsUI27MedicationsDoseLogViewModel_initialLogDate, v38, v13);
  *(v7 + OBJC_IVAR____TtC19HealthMedicationsUI27MedicationsDoseLogViewModel_initialDoseAmount) = v7[5];
  *(v7 + OBJC_IVAR____TtC19HealthMedicationsUI27MedicationsDoseLogViewModel_index) = v43;
  return v7;
}

uint64_t sub_228300540()
{
  v1 = *(v0 + 24);
  if (!v1)
  {
    goto LABEL_11;
  }

  v2 = v1;
  v3 = [v2 metadata];
  if (!v3)
  {

LABEL_11:
    v14 = [*(v0 + 16) semanticIdentifier];
    v15 = [v14 stringValue];

    v13 = sub_228392000();
    return v13;
  }

  v4 = v3;
  v5 = sub_228391F20();

  v6 = *MEMORY[0x277CCC520];
  v7 = sub_228392000();
  if (!*(v5 + 16))
  {

    goto LABEL_11;
  }

  v9 = v0;
  v10 = sub_2281A76E0(v7, v8);
  v12 = v11;

  if ((v12 & 1) == 0)
  {

    goto LABEL_10;
  }

  sub_2281BC4A4(*(v5 + 56) + 32 * v10, v18);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_10:
    v0 = v9;
    goto LABEL_11;
  }

  return v17;
}

BOOL sub_2283006D8()
{
  v1 = *(v0 + 24);
  if (v1)
  {
    return [v1 logOrigin] == 2;
  }

  else
  {
    return *(v0 + 32) != 0;
  }
}

uint64_t sub_22830071C@<X0>(uint64_t a1@<X8>)
{
  sub_228301654();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v1 + 24);
  if (v7)
  {
    v8 = v7;
    v9 = [v8 scheduledDate];
    if (v9)
    {
      v10 = v9;
      sub_22838F3E0();

      v11 = sub_22838F440();
      (*(*(v11 - 8) + 56))(v6, 0, 1, v11);
    }

    else
    {

      v17 = sub_22838F440();
      (*(*(v17 - 8) + 56))(v6, 1, 1, v17);
    }

    return sub_2281E793C(v6, a1);
  }

  else
  {
    if (*(v1 + 32))
    {

      sub_228390920();

      v12 = sub_22838F440();
      v13 = *(*(v12 - 8) + 56);
      v14 = v12;
      v15 = a1;
      v16 = 0;
    }

    else
    {
      v19 = sub_22838F440();
      v13 = *(*(v19 - 8) + 56);
      v14 = v19;
      v15 = a1;
      v16 = 1;
    }

    return v13(v15, v16, 1, v14);
  }
}

uint64_t sub_228300900@<X0>(uint64_t *a1@<X8>)
{
  sub_228301654();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v62 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v1 + 24);
  if (v7)
  {
    v8 = *(v1 + 48);
    v9 = OBJC_IVAR____TtC19HealthMedicationsUI27MedicationsDoseLogViewModel_logDate;
    swift_beginAccess();
    v10 = sub_22838F440();
    v11 = *(v10 - 8);
    (*(v11 + 16))(v6, v1 + v9, v10);
    (*(v11 + 56))(v6, 0, 1, v10);
    v12 = *(v1 + 40);
    v13 = v7;
    sub_228390D70();
    v14 = MEMORY[0x277D116E0];
  }

  else
  {
    v15 = *(v1 + 32);
    if (v15)
    {
      sub_228301C7C(0);
      v17 = v16;
      v18 = v16[16];
      v19 = v16[20];
      v20 = a1 + v16[24];
      v21 = *(v1 + 16);

      v22 = [v21 semanticIdentifier];
      v23 = [v22 stringValue];

      v24 = sub_228392000();
      v26 = v25;

      *a1 = v24;
      a1[1] = v26;
      a1[2] = v15;
      v27 = OBJC_IVAR____TtC19HealthMedicationsUI27MedicationsDoseLogViewModel_logDate;
      swift_beginAccess();
      v28 = sub_22838F440();
      (*(*(v28 - 8) + 16))(a1 + v18, v1 + v27, v28);
      v29 = *(v1 + 40);
      *(a1 + v19) = *(v1 + 48);
      *v20 = v29;
      v20[8] = 0;
      v30 = *(v1 + 16);

      v31 = [v30 canonicalDoseUnitString];
      if (v31)
      {
        v32 = v31;
        v33 = sub_228392000();
        v35 = v34;
      }

      else
      {

        v33 = 0;
        v35 = 0;
      }

      v54 = (a1 + v17[28]);
      *v54 = v33;
      v54[1] = v35;
      v55 = MEMORY[0x277D116C0];
    }

    else
    {
      sub_228301AC4(0);
      v37 = v36;
      v38 = v36[12];
      v39 = v36[16];
      v40 = a1 + v36[20];
      v41 = [*(v1 + 16) semanticIdentifier];
      v42 = [v41 stringValue];

      v43 = sub_228392000();
      v45 = v44;

      *a1 = v43;
      a1[1] = v45;
      v46 = OBJC_IVAR____TtC19HealthMedicationsUI27MedicationsDoseLogViewModel_logDate;
      swift_beginAccess();
      v47 = sub_22838F440();
      (*(*(v47 - 8) + 16))(a1 + v38, v1 + v46, v47);
      v48 = *(v1 + 40);
      *(a1 + v39) = *(v1 + 48);
      *v40 = v48;
      v40[8] = 0;
      v49 = [*(v1 + 16) canonicalDoseUnitString];
      if (v49)
      {
        v50 = v49;
        v51 = sub_228392000();
        v53 = v52;
      }

      else
      {
        v51 = 0;
        v53 = 0;
      }

      v56 = (a1 + v37[24]);
      *v56 = v51;
      v56[1] = v53;
      v55 = MEMORY[0x277D116B8];
    }

    v57 = *v55;
    v58 = sub_228390CC0();
    (*(*(v58 - 8) + 104))(a1, v57, v58);
    v14 = MEMORY[0x277D116D8];
  }

  v59 = *v14;
  v60 = sub_228390D60();
  return (*(*(v60 - 8) + 104))(a1, v59, v60);
}

uint64_t sub_228300D60()
{
  v1 = sub_22838F440();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](v1);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v24 - v8;
  v10 = *(v0 + 24);
  if (v10)
  {
    v11 = v7;
    v12 = v10;
    if ([v12 logStatus] == *(v0 + 48) && (v13 = v0, v14 = COERCE_DOUBLE(sub_2283928B0()), (v15 & 1) == 0) && *(v0 + 40) == v14)
    {
      v16 = [v12 startDate];
      sub_22838F3E0();

      v17 = OBJC_IVAR____TtC19HealthMedicationsUI27MedicationsDoseLogViewModel_logDate;
      swift_beginAccess();
      v18 = v13 + v17;
      v19 = v11;
      (*(v2 + 16))(v6, v18, v11);
      sub_228301A7C(&unk_27D827B20, MEMORY[0x277CC9578]);
      v20 = sub_228391FB0();

      v21 = *(v2 + 8);
      v21(v6, v19);
      v21(v9, v19);
      v22 = v20 ^ 1;
    }

    else
    {

      v22 = 1;
    }
  }

  else
  {
    v22 = *(v0 + 48) != *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI27MedicationsDoseLogViewModel_initialStatus);
  }

  return v22 & 1;
}

uint64_t sub_228300F90()
{
  sub_228300540();
  sub_2283920B0();
}

uint64_t static MedicationsDoseLogViewModel.== infix(_:_:)()
{
  v0 = sub_228300540();
  v2 = v1;
  if (v0 == sub_228300540() && v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_228393460();
  }

  return v4 & 1;
}

uint64_t MedicationsDoseLogViewModel.deinit()
{
  v1 = *(v0 + 32);

  v2 = OBJC_IVAR____TtC19HealthMedicationsUI27MedicationsDoseLogViewModel_logDate;
  v3 = sub_22838F440();
  v4 = *(*(v3 - 8) + 8);
  v4(v0 + v2, v3);
  v4(v0 + OBJC_IVAR____TtC19HealthMedicationsUI27MedicationsDoseLogViewModel_initialLogDate, v3);
  return v0;
}

uint64_t MedicationsDoseLogViewModel.__deallocating_deinit()
{
  v1 = *(v0 + 32);

  v2 = OBJC_IVAR____TtC19HealthMedicationsUI27MedicationsDoseLogViewModel_logDate;
  v3 = sub_22838F440();
  v4 = *(*(v3 - 8) + 8);
  v4(v0 + v2, v3);
  v4(v0 + OBJC_IVAR____TtC19HealthMedicationsUI27MedicationsDoseLogViewModel_initialLogDate, v3);
  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_2283011F8()
{
  sub_228393520();
  sub_228300540();
  sub_2283920B0();

  return sub_228393570();
}

uint64_t sub_228301254()
{
  v1 = *v0;
  sub_228393520();
  sub_228300540();
  sub_2283920B0();

  return sub_228393570();
}

uint64_t sub_2283012B4()
{
  v1 = *v0;
  sub_228300540();
  sub_2283920B0();
}

uint64_t sub_228301308()
{
  sub_228393520();
  v1 = *v0;
  sub_228300540();
  sub_2283920B0();

  return sub_228393570();
}

uint64_t sub_228301364(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = sub_228300540();
  v6 = v5;
  if (v4 == sub_228300540() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_228393460();
  }

  return v9 & 1;
}

uint64_t MedicationDoseLogListViewModel.init(date:title:medicationDoses:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = OBJC_IVAR____TtC19HealthMedicationsUI30MedicationDoseLogListViewModel_date;
  v10 = sub_22838F440();
  (*(*(v10 - 8) + 32))(v4 + v9, a1, v10);
  v11 = (v4 + OBJC_IVAR____TtC19HealthMedicationsUI30MedicationDoseLogListViewModel_title);
  *v11 = a2;
  v11[1] = a3;
  *(v4 + 16) = a4;
  return v4;
}

uint64_t MedicationDoseLogListViewModel.deinit()
{
  v1 = *(v0 + 16);

  v2 = OBJC_IVAR____TtC19HealthMedicationsUI30MedicationDoseLogListViewModel_date;
  v3 = sub_22838F440();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  v4 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI30MedicationDoseLogListViewModel_title + 8);

  return v0;
}

uint64_t MedicationDoseLogListViewModel.__deallocating_deinit()
{
  v1 = *(v0 + 2);

  v2 = OBJC_IVAR____TtC19HealthMedicationsUI30MedicationDoseLogListViewModel_date;
  v3 = sub_22838F440();
  (*(*(v3 - 8) + 8))(&v0[v2], v3);
  v4 = *&v0[OBJC_IVAR____TtC19HealthMedicationsUI30MedicationDoseLogListViewModel_title + 8];

  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_2283015B8()
{
  v1 = OBJC_IVAR____TtC19HealthMedicationsUI32MedicationDoseRecordAllViewModel_logDate;
  v2 = sub_22838F440();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

void sub_228301654()
{
  if (!qword_280DDCDB0)
  {
    sub_22838F440();
    v0 = sub_228392F00();
    if (!v1)
    {
      atomic_store(v0, &qword_280DDCDB0);
    }
  }
}

uint64_t sub_22830171C()
{
  result = sub_22838F440();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_2283018E4()
{
  result = sub_22838F440();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_2283019E0()
{
  result = sub_22838F440();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_228301A7C(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_228301AC4(uint64_t a1)
{
  if (!qword_27D8278D0)
  {
    MEMORY[0x28223BE20](a1);
    sub_22838F440();
    type metadata accessor for LogStatus(255);
    sub_228301C30(255, &qword_27D8278D8);
    sub_228301C30(255, &qword_27D825070);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &qword_27D8278D0);
    }
  }
}

void sub_228301C30(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_228392F00();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void sub_228301C7C(uint64_t a1)
{
  if (!qword_27D8278E0)
  {
    MEMORY[0x28223BE20](a1);
    sub_228390930();
    sub_22838F440();
    type metadata accessor for LogStatus(255);
    sub_228301C30(255, &qword_27D8278D8);
    sub_228301C30(255, &qword_27D825070);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &qword_27D8278E0);
    }
  }
}

uint64_t MedicationInfoItem.__allocating_init(medmoji:name:strength:ingredients:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = *(v6 + 48);
  v14 = *(v6 + 52);
  v15 = swift_allocObject();
  type metadata accessor for MedicationInfoItemCell();
  sub_228303588(&qword_27D824338, v16, type metadata accessor for MedicationInfoItemCell);
  *(v15 + 16) = sub_22838FBB0();
  *(v15 + 24) = v17;
  sub_2281AA8D4(a1, v15 + OBJC_IVAR____TtC19HealthMedicationsUI18MedicationInfoItem_medmoji);
  v18 = (v15 + OBJC_IVAR____TtC19HealthMedicationsUI18MedicationInfoItem_name);
  *v18 = a2;
  v18[1] = a3;
  v19 = (v15 + OBJC_IVAR____TtC19HealthMedicationsUI18MedicationInfoItem_strength);
  *v19 = a4;
  v19[1] = a5;
  *(v15 + OBJC_IVAR____TtC19HealthMedicationsUI18MedicationInfoItem_ingredients) = a6;
  return v15;
}

uint64_t MedicationInfoItem.reuseIdentifier.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 24);
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
}

uint64_t _s19HealthMedicationsUI18MedicationInfoItemC15reuseIdentifierSSvg_0()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t MedicationInfoItem.init(medmoji:name:strength:ingredients:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  type metadata accessor for MedicationInfoItemCell();
  sub_228303588(&qword_27D824338, v13, type metadata accessor for MedicationInfoItemCell);
  *(v6 + 16) = sub_22838FBB0();
  *(v6 + 24) = v14;
  sub_2281AA8D4(a1, v6 + OBJC_IVAR____TtC19HealthMedicationsUI18MedicationInfoItem_medmoji);
  v15 = (v6 + OBJC_IVAR____TtC19HealthMedicationsUI18MedicationInfoItem_name);
  *v15 = a2;
  v15[1] = a3;
  v16 = (v6 + OBJC_IVAR____TtC19HealthMedicationsUI18MedicationInfoItem_strength);
  *v16 = a4;
  v16[1] = a5;
  *(v6 + OBJC_IVAR____TtC19HealthMedicationsUI18MedicationInfoItem_ingredients) = a6;
  return v6;
}

uint64_t MedicationInfoItem.deinit()
{
  v1 = *(v0 + 24);

  sub_228302A04(v0 + OBJC_IVAR____TtC19HealthMedicationsUI18MedicationInfoItem_medmoji, &qword_280DDBD20, MEMORY[0x277D116C8]);
  v2 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI18MedicationInfoItem_name + 8);

  v3 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI18MedicationInfoItem_strength + 8);

  v4 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI18MedicationInfoItem_ingredients);

  return v0;
}

uint64_t MedicationInfoItem.__deallocating_deinit()
{
  v1 = v0[3];

  sub_228302A04(v0 + OBJC_IVAR____TtC19HealthMedicationsUI18MedicationInfoItem_medmoji, &qword_280DDBD20, MEMORY[0x277D116C8]);
  v2 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI18MedicationInfoItem_name + 8);

  v3 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI18MedicationInfoItem_strength + 8);

  v4 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI18MedicationInfoItem_ingredients);

  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_228302230()
{
  v1 = *v0;
  swift_beginAccess();
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);

  return v2;
}

uint64_t sub_228302280(uint64_t a1)
{
  v2 = sub_228303588(&qword_27D827930, 255, type metadata accessor for MedicationInfoItem);

  return MEMORY[0x282169440](a1, v2);
}

uint64_t MedicationInfoItemCell.item.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC19HealthMedicationsUI22MedicationInfoItemCell_item;
  swift_beginAccess();
  return sub_2283039E4(v1 + v3, a1, &qword_280DDCD50, sub_22817A700);
}

void sub_228302374(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

uint64_t sub_2283023C8(uint64_t a1, uint64_t *a2)
{
  sub_2283039E4(a1, v6, &qword_280DDCD50, sub_22817A700);
  v3 = *a2;
  v4 = OBJC_IVAR____TtC19HealthMedicationsUI22MedicationInfoItemCell_item;
  swift_beginAccess();
  sub_22818FD64(v6, v3 + v4);
  swift_endAccess();
  sub_2283024F4();
  return sub_228302A04(v6, &qword_280DDCD50, sub_22817A700);
}

uint64_t MedicationInfoItemCell.item.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC19HealthMedicationsUI22MedicationInfoItemCell_item;
  swift_beginAccess();
  sub_22818FD64(a1, v1 + v3);
  swift_endAccess();
  sub_2283024F4();
  return sub_228302A04(a1, &qword_280DDCD50, sub_22817A700);
}

void sub_2283024F4()
{
  v1 = v0;
  v2 = sub_2283911B0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228302374(0, &qword_280DDBD20, MEMORY[0x277D116C8]);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v33 - v9;
  v11 = OBJC_IVAR____TtC19HealthMedicationsUI22MedicationInfoItemCell_item;
  swift_beginAccess();
  sub_2283039E4(v1 + v11, v35, &qword_280DDCD50, sub_22817A700);
  if (v35[3])
  {
    sub_22817A700();
    type metadata accessor for MedicationInfoItem();
    if (swift_dynamicCast())
    {
      v12 = v34;
      v13 = sub_228302AF8();
      sub_2283039E4(v12 + OBJC_IVAR____TtC19HealthMedicationsUI18MedicationInfoItem_medmoji, v10, &qword_280DDBD20, MEMORY[0x277D116C8]);
      sub_228390950();

      v14 = sub_228302CA0(&OBJC_IVAR____TtC19HealthMedicationsUI22MedicationInfoItemCell____lazy_storage___nameLabel, 2, &selRef_labelColor);
      v15 = *(v12 + OBJC_IVAR____TtC19HealthMedicationsUI18MedicationInfoItem_name);
      v16 = *(v12 + OBJC_IVAR____TtC19HealthMedicationsUI18MedicationInfoItem_name + 8);

      v17 = sub_228391FC0();

      [v14 setText_];

      v18 = sub_228302CA0(&OBJC_IVAR____TtC19HealthMedicationsUI22MedicationInfoItemCell____lazy_storage___strengthLabel, 0, &selRef_labelColor);
      v19 = *(v12 + OBJC_IVAR____TtC19HealthMedicationsUI18MedicationInfoItem_strength);
      v20 = *(v12 + OBJC_IVAR____TtC19HealthMedicationsUI18MedicationInfoItem_strength + 8);

      v21 = sub_228391FC0();

      [v18 setText_];

      v22 = sub_228302CA0(&OBJC_IVAR____TtC19HealthMedicationsUI22MedicationInfoItemCell____lazy_storage___ingredientsLabel, 0, &selRef_secondaryLabelColor);
      v35[0] = *(v12 + OBJC_IVAR____TtC19HealthMedicationsUI18MedicationInfoItem_ingredients);
      sub_228222D8C(0, &qword_27D827E10, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
      sub_2281BF13C();

      sub_228391F90();

      v23 = sub_228391FC0();

      [v22 setText_];

      return;
    }
  }

  else
  {
    sub_228302A04(v35, &qword_280DDCD50, sub_22817A700);
  }

  sub_228391150();
  v24 = v1;
  v25 = sub_2283911A0();
  v26 = sub_2283925C0();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v33 = v2;
    v34 = v28;
    v29 = v28;
    *v27 = 136446210;
    sub_2283039E4(v1 + v11, v35, &qword_280DDCD50, sub_22817A700);
    sub_228302374(0, &qword_280DDCD50, sub_22817A700);
    v30 = sub_228392040();
    v32 = sub_2281C96FC(v30, v31, &v34);

    *(v27 + 4) = v32;
    _os_log_impl(&dword_22816B000, v25, v26, "Incorrect view model for MedicationInfoItem: %{public}s", v27, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v29);
    MEMORY[0x22AAB7B80](v29, -1, -1);
    MEMORY[0x22AAB7B80](v27, -1, -1);

    (*(v3 + 8))(v6, v33);
  }

  else
  {

    (*(v3 + 8))(v6, v2);
  }
}

uint64_t sub_228302A04(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_228302374(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void (*MedicationInfoItemCell.item.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_228302AC4;
}

void sub_228302AC4(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = *(a1 + 24);
    sub_2283024F4();
  }
}

id sub_228302AF8()
{
  v1 = OBJC_IVAR____TtC19HealthMedicationsUI22MedicationInfoItemCell____lazy_storage___medmojiView;
  v2 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI22MedicationInfoItemCell____lazy_storage___medmojiView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI22MedicationInfoItemCell____lazy_storage___medmojiView);
  }

  else
  {
    v4 = v0;
    v5 = [objc_allocWithZone(sub_228390970()) initWithFrame_];
    v6 = *MEMORY[0x277CDA138];
    v7 = v5;
    sub_228392B00();
    [v7 setTranslatesAutoresizingMaskIntoConstraints_];

    v8 = *(v4 + v1);
    *(v4 + v1) = v7;
    v3 = v7;

    v2 = 0;
  }

  v9 = v2;
  return v3;
}

id sub_228302BC8()
{
  v1 = OBJC_IVAR____TtC19HealthMedicationsUI22MedicationInfoItemCell____lazy_storage___stackView;
  v2 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI22MedicationInfoItemCell____lazy_storage___stackView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI22MedicationInfoItemCell____lazy_storage___stackView);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x277D75A68]) init];
    [v4 setAxis_];
    [v4 setAlignment_];
    [v4 setDistribution_];
    [v4 setSpacing_];
    [v4 setTranslatesAutoresizingMaskIntoConstraints_];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_228302CA0(uint64_t *a1, uint64_t a2, SEL *a3)
{
  v4 = *a1;
  v5 = *(v3 + *a1);
  if (v5)
  {
    v6 = *(v3 + *a1);
  }

  else
  {
    v8 = v3;
    v9 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
    sub_22817A958(0, &qword_280DDB9C0, 0x277D74300);
    v10 = *MEMORY[0x277D76918];
    v11 = sub_228392AD0();
    [v9 setFont_];

    [v9 setAdjustsFontForContentSizeCategory_];
    v12 = [objc_opt_self() *a3];
    [v9 setTextColor_];

    [v9 setNumberOfLines_];
    v13 = v9;
    [v13 setTranslatesAutoresizingMaskIntoConstraints_];
    v14 = sub_228392190();
    v15 = HKUIJoinStringsForAutomationIdentifier();

    [v13 setAccessibilityIdentifier_];
    v16 = *(v8 + v4);
    *(v8 + v4) = v13;
    v6 = v13;

    v5 = 0;
  }

  v17 = v5;
  return v6;
}

char *sub_228302E50(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = &v4[OBJC_IVAR____TtC19HealthMedicationsUI22MedicationInfoItemCell_item];
  *v10 = 0u;
  *(v10 + 1) = 0u;
  *(v10 + 4) = 0;
  *&v4[OBJC_IVAR____TtC19HealthMedicationsUI22MedicationInfoItemCell____lazy_storage___medmojiView] = 0;
  *&v4[OBJC_IVAR____TtC19HealthMedicationsUI22MedicationInfoItemCell____lazy_storage___stackView] = 0;
  *&v4[OBJC_IVAR____TtC19HealthMedicationsUI22MedicationInfoItemCell____lazy_storage___nameLabel] = 0;
  *&v4[OBJC_IVAR____TtC19HealthMedicationsUI22MedicationInfoItemCell____lazy_storage___strengthLabel] = 0;
  *&v4[OBJC_IVAR____TtC19HealthMedicationsUI22MedicationInfoItemCell____lazy_storage___ingredientsLabel] = 0;
  *&v4[OBJC_IVAR____TtC19HealthMedicationsUI22MedicationInfoItemCell_width] = 0x4040800000000000;
  v54.receiver = v4;
  v54.super_class = ObjectType;
  v11 = objc_msgSendSuper2(&v54, sel_initWithFrame_, a1, a2, a3, a4);
  [v11 setUserInteractionEnabled_];
  v12 = sub_228302BC8();
  v13 = sub_228302CA0(&OBJC_IVAR____TtC19HealthMedicationsUI22MedicationInfoItemCell____lazy_storage___nameLabel, 2, &selRef_labelColor);
  [v12 addArrangedSubview_];

  v14 = OBJC_IVAR____TtC19HealthMedicationsUI22MedicationInfoItemCell____lazy_storage___stackView;
  v15 = *&v11[OBJC_IVAR____TtC19HealthMedicationsUI22MedicationInfoItemCell____lazy_storage___stackView];
  v16 = sub_228302CA0(&OBJC_IVAR____TtC19HealthMedicationsUI22MedicationInfoItemCell____lazy_storage___strengthLabel, 0, &selRef_labelColor);
  [v15 addArrangedSubview_];

  v17 = *&v11[v14];
  v18 = sub_228302CA0(&OBJC_IVAR____TtC19HealthMedicationsUI22MedicationInfoItemCell____lazy_storage___ingredientsLabel, 0, &selRef_secondaryLabelColor);
  [v17 addArrangedSubview_];

  v19 = [v11 contentView];
  v20 = sub_228302AF8();
  [v19 addSubview_];

  v21 = [v11 contentView];
  [v21 addSubview_];

  v53 = objc_opt_self();
  sub_228222D8C(0, &qword_280DDCE30, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_228399190;
  v23 = OBJC_IVAR____TtC19HealthMedicationsUI22MedicationInfoItemCell____lazy_storage___medmojiView;
  v24 = [*&v11[OBJC_IVAR____TtC19HealthMedicationsUI22MedicationInfoItemCell____lazy_storage___medmojiView] topAnchor];
  v25 = [v11 contentView];
  v26 = [v25 topAnchor];

  v27 = [v24 constraintEqualToAnchor:v26 constant:16.0];
  *(v22 + 32) = v27;
  v28 = [*&v11[v23] leadingAnchor];
  v29 = [v11 contentView];
  v30 = [v29 leadingAnchor];

  v31 = [v28 constraintEqualToAnchor:v30 constant:16.0];
  *(v22 + 40) = v31;
  v32 = [*&v11[v23] widthAnchor];
  v33 = [v32 constraintEqualToConstant_];

  *(v22 + 48) = v33;
  v34 = [*&v11[v23] heightAnchor];
  v35 = [v34 constraintEqualToConstant_];

  *(v22 + 56) = v35;
  v36 = [*&v11[v14] leadingAnchor];
  v37 = [*&v11[v23] trailingAnchor];
  v38 = [v36 constraintEqualToAnchor:v37 constant:16.0];

  *(v22 + 64) = v38;
  v39 = [*&v11[v14] trailingAnchor];
  v40 = [v11 contentView];
  v41 = [v40 trailingAnchor];

  v42 = [v39 constraintEqualToAnchor:v41 constant:-16.0];
  *(v22 + 72) = v42;
  v43 = [*&v11[v14] topAnchor];
  v44 = [v11 contentView];
  v45 = [v44 topAnchor];

  v46 = [v43 constraintEqualToAnchor:v45 constant:16.0];
  *(v22 + 80) = v46;
  v47 = [*&v11[v14] bottomAnchor];
  v48 = [v11 contentView];

  v49 = [v48 bottomAnchor];
  v50 = [v47 constraintEqualToAnchor:v49 constant:-16.0];

  *(v22 + 88) = v50;
  sub_22817A958(0, &qword_280DDBA90, 0x277CCAAD0);
  v51 = sub_228392190();

  [v53 activateConstraints_];

  return v11;
}

id MedicationInfoItemCell.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_228303588(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t type metadata accessor for MedicationInfoItem()
{
  result = qword_27D8278F0;
  if (!qword_27D8278F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2283036C4@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC19HealthMedicationsUI22MedicationInfoItemCell_item;
  swift_beginAccess();
  return sub_2283039E4(v1 + v3, a1, &qword_280DDCD50, sub_22817A700);
}

uint64_t sub_228303738(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC19HealthMedicationsUI22MedicationInfoItemCell_item;
  swift_beginAccess();
  sub_22818FD64(a1, v1 + v3);
  swift_endAccess();
  sub_2283024F4();
  return sub_228302A04(a1, &qword_280DDCD50, sub_22817A700);
}

void (*sub_2283037C0(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_228302AC4;
}

void sub_22830382C()
{
  sub_228302374(319, &qword_280DDBD20, MEMORY[0x277D116C8]);
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_228303920()
{
  v1 = v0 + OBJC_IVAR____TtC19HealthMedicationsUI22MedicationInfoItemCell_item;
  *v1 = 0u;
  *(v1 + 16) = 0u;
  *(v1 + 32) = 0;
  *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI22MedicationInfoItemCell____lazy_storage___medmojiView) = 0;
  *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI22MedicationInfoItemCell____lazy_storage___stackView) = 0;
  *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI22MedicationInfoItemCell____lazy_storage___nameLabel) = 0;
  *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI22MedicationInfoItemCell____lazy_storage___strengthLabel) = 0;
  *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI22MedicationInfoItemCell____lazy_storage___ingredientsLabel) = 0;
  *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI22MedicationInfoItemCell_width) = 0x4040800000000000;
  sub_228393300();
  __break(1u);
}

uint64_t sub_2283039E4(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t))
{
  sub_228302374(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_228303A58(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x656C756465686373;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x6874676E65727473;
    }

    else
    {
      v4 = 1836216166;
    }

    if (v3 == 2)
    {
      v5 = 0xE800000000000000;
    }

    else
    {
      v5 = 0xE400000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x656863536174656DLL;
    }

    else
    {
      v4 = 0x656C756465686373;
    }

    if (v3)
    {
      v5 = 0xEC000000656C7564;
    }

    else
    {
      v5 = 0xE800000000000000;
    }
  }

  v6 = 0xE800000000000000;
  v7 = 0xE800000000000000;
  v8 = 0x6874676E65727473;
  if (a2 != 2)
  {
    v8 = 1836216166;
    v7 = 0xE400000000000000;
  }

  if (a2)
  {
    v2 = 0x656863536174656DLL;
    v6 = 0xEC000000656C7564;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v7;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_228393460();
  }

  return v11 & 1;
}