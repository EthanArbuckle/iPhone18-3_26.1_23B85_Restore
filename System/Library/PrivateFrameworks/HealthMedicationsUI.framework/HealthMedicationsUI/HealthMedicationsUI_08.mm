id InteractionNoneFoundCell.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for InteractionNoneFoundCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_22823C530()
{
  result = qword_280DDB9C0;
  if (!qword_280DDB9C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280DDB9C0);
  }

  return result;
}

uint64_t type metadata accessor for ManualNameDataSource()
{
  result = qword_27D825BD0;
  if (!qword_27D825BD0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22823C620(uint64_t a1)
{
  v3 = sub_22838F4A0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = (v1 + qword_27D825BC8);
  *v8 = 0;
  v8[1] = 0xE000000000000000;
  *(v1 + qword_27D825BC0) = a1;
  v15[0] = 0;
  v15[1] = 0xE000000000000000;

  sub_2283931D0();

  strcpy(v15, "MutableArray<");
  HIWORD(v15[1]) = -4864;
  sub_22838F490();
  v9 = sub_22838F450();
  v11 = v10;
  (*(v4 + 8))(v7, v3);
  MEMORY[0x22AAB5C80](v9, v11);

  MEMORY[0x22AAB5C80](62, 0xE100000000000000);
  v12 = sub_22838FF30();

  v13 = sub_22823C7F4();
  sub_228194894(v13);

  sub_22838FF60();

  return v12;
}

uint64_t sub_22823C7F4()
{
  v1 = v0;
  sub_2281BBDA4();
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_228397F40;
  v3 = *(v0 + qword_27D825BC0);
  sub_228391870();
  if (v22)
  {
    v20 = v22;
    v19 = v21;
  }

  else
  {
    v19 = *(v1 + qword_27D825BC8);
    v20 = *(v1 + qword_27D825BC8 + 8);
  }

  if (qword_280DDCF18 != -1)
  {
    swift_once();
  }

  v4 = sub_22838F0C0();
  v17 = v5;
  v18 = v4;
  v6 = swift_allocObject();
  swift_weakInit();
  v7 = type metadata accessor for FieldItem();
  *(v2 + 56) = v7;
  *(v2 + 64) = sub_22823CE88(&qword_27D825BF0, type metadata accessor for FieldItem);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v2 + 32));
  sub_22838F490();
  v9 = (boxed_opaque_existential_1 + v7[5]);
  v10 = (boxed_opaque_existential_1 + v7[6]);
  v11 = boxed_opaque_existential_1 + v7[10];
  v12 = (boxed_opaque_existential_1 + v7[14]);
  v13 = (boxed_opaque_existential_1 + v7[15]);
  type metadata accessor for FieldCell();
  sub_22823CE88(&qword_27D828780, type metadata accessor for FieldCell);
  *v13 = sub_22838FBB0();
  v13[1] = v14;
  *v9 = v19;
  v9[1] = v20;
  *v10 = v18;
  v10[1] = v17;
  *(boxed_opaque_existential_1 + v7[7]) = 0x404A000000000000;
  *v11 = 0;
  v11[8] = 1;
  *(boxed_opaque_existential_1 + v7[9]) = 0;
  *(boxed_opaque_existential_1 + v7[8]) = 1;
  *(boxed_opaque_existential_1 + v7[12]) = 0;
  *v12 = 0;
  v12[1] = 0;
  v15 = (boxed_opaque_existential_1 + v7[13]);
  *v15 = sub_22823CE80;
  v15[1] = v6;
  *(boxed_opaque_existential_1 + v7[11]) = 1;
  return v2;
}

uint64_t sub_22823CA74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v6 = (Strong + qword_27D825BC8);
    v7 = *(Strong + qword_27D825BC8 + 8);
    *v6 = a2;
    v6[1] = a3;
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v9 = *(result + qword_27D825BC0);

    sub_228391850();
  }

  return result;
}

uint64_t sub_22823CB9C()
{
  v1 = *(v0 + qword_27D825BC0);

  v2 = *(v0 + qword_27D825BC8 + 8);
}

uint64_t sub_22823CBE0()
{
  v0 = sub_22838FFB0();
  v1 = *(v0 + qword_27D825BC0);

  v2 = *(v0 + qword_27D825BC8 + 8);

  return swift_deallocClassInstance();
}

uint64_t sub_22823CC60()
{
  type metadata accessor for FieldCell();
  sub_22823CE88(&qword_27D828780, type metadata accessor for FieldCell);
  return sub_2283926B0();
}

uint64_t sub_22823CCE0()
{
  v0 = sub_2283900D0();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228390040();
  v5 = sub_2283900C0();
  (*(v1 + 8))(v4, v0);
  return v5;
}

uint64_t sub_22823CE88(unint64_t *a1, void (*a2)(uint64_t))
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

Swift::Void __swiftcall InputAccessoryPresenting.setInputAccessoryViewToToolbar(items:)(Swift::OpaquePointer items)
{
  v3 = v2;
  v4 = v1;
  v5 = [objc_allocWithZone(MEMORY[0x277D75C58]) init];
  [v5 setBarStyle_];
  sub_22823CFB4();
  v6 = sub_228392190();
  [v5 setItems_];

  v7 = v5;
  [v7 sizeToFit];
  (*(v3 + 16))(v7, v4, v3);
}

unint64_t sub_22823CFB4()
{
  result = qword_27D824138;
  if (!qword_27D824138)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27D824138);
  }

  return result;
}

uint64_t (*sub_22823D000(void *a1))()
{
  a1[1] = v1;
  *a1 = [v1 inputAccessoryView];
  return sub_22823D15C;
}

void (*sub_22823D05C(void *a1))(id *a1)
{
  a1[1] = v1;
  *a1 = [v1 inputAccessoryView];
  return sub_22823D0B8;
}

void sub_22823D0B8(id *a1)
{
  v1 = *a1;
  [a1[1] setInputAccessoryView_];
}

uint64_t sub_22823D160()
{
  v1 = [v0 educationContent];
  if (v1 && (v2 = v1, v3 = [v1 firstSectionWithType_], v2, v3) && (v4 = objc_msgSend(v3, sel_localizedText), v3, v4))
  {
    v5 = sub_228392000();

    return v5;
  }

  else
  {
    if (qword_280DDCF18 != -1)
    {
      swift_once();
    }

    return sub_22838F0C0();
  }
}

uint64_t sub_22823D284()
{
  v1 = [v0 educationContent];
  if (v1 && (v2 = v1, v3 = [v1 firstSectionWithType_], v2, v3) && (v4 = objc_msgSend(v3, sel_attributions), v3, v4))
  {
    sub_2283921A0();

    sub_228231DFC();
    sub_2281BF13C();
    v5 = sub_228391F90();

    return v5;
  }

  else
  {
    if (qword_280DDCF18 != -1)
    {
      swift_once();
    }

    return sub_22838F0C0();
  }
}

uint64_t sub_22823D414(double a1, double a2)
{
  sub_2281AF0A0();
  v4 = objc_opt_self();
  v5 = [v4 systemCyanColor];
  v6 = [v5 colorWithAlphaComponent_];

  v7 = [v4 systemCyanColor];
  v8 = [v7 colorWithAlphaComponent_];

  v9 = sub_228392B90();
  return v9;
}

void static UIColor.medicationTimelineCurrentDayCompleteGradientStart.getter()
{
  if (qword_280DDCED0 != -1)
  {
    swift_once();
  }

  v0 = qword_280DDCED8;
  v1 = sub_228391FC0();
  v2 = [objc_opt_self() colorNamed:v1 inBundle:v0 compatibleWithTraitCollection:0];

  if (!v2)
  {
    __break(1u);
  }
}

void static UIColor.medicationTimelineCurrentDayCompleteGradientMiddle.getter()
{
  if (qword_280DDCED0 != -1)
  {
    swift_once();
  }

  v0 = qword_280DDCED8;
  v1 = sub_228391FC0();
  v2 = [objc_opt_self() colorNamed:v1 inBundle:v0 compatibleWithTraitCollection:0];

  if (!v2)
  {
    __break(1u);
  }
}

void static UIColor.medicationTimelineCurrentDayCompleteGradientEnd.getter()
{
  if (qword_280DDCED0 != -1)
  {
    swift_once();
  }

  v0 = qword_280DDCED8;
  v1 = sub_228391FC0();
  v2 = [objc_opt_self() colorNamed:v1 inBundle:v0 compatibleWithTraitCollection:0];

  if (!v2)
  {
    __break(1u);
  }
}

uint64_t static MedicationVisualizationConfig.random()@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_228390FD0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v71 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = sub_2283908E0();
  v89 = *(v87 - 8);
  v7 = *(v89 + 64);
  MEMORY[0x28223BE20](v87);
  v84 = &v71 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_228390E20();
  v86 = *(v9 - 8);
  v10 = *(v86 + 64);
  MEMORY[0x28223BE20](v9);
  v85 = &v71 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228199E70();
  v96 = *(v12 - 8);
  v97 = v12;
  v13 = *(v96 + 64);
  MEMORY[0x28223BE20](v12);
  v88 = &v71 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x277D83D88];
  sub_22823E1E0(0, &qword_27D825BF8, MEMORY[0x277D11618], MEMORY[0x277D83D88]);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v79 = &v71 - v18;
  sub_228199F10();
  v95 = v19;
  v92 = *(v19 - 8);
  v20 = *(v92 + 64);
  MEMORY[0x28223BE20](v19);
  v22 = &v71 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22823E1E0(0, &qword_27D8238A8, MEMORY[0x277D11640], v15);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23 - 8);
  v26 = &v71 - v25;
  v27 = sub_2283909E0();
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  v30 = MEMORY[0x28223BE20](v27);
  v80 = &v71 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v81 = &v71 - v32;
  v33 = sub_2283909C0();
  v34 = *(v33 + 16);
  if (v34)
  {
    v35 = sub_22823E154(v34);
    if ((v35 & 0x8000000000000000) != 0)
    {
LABEL_33:
      __break(1u);
      goto LABEL_34;
    }

    if (v35 >= *(v33 + 16))
    {
LABEL_34:
      __break(1u);
      goto LABEL_35;
    }

    (*(v28 + 16))(v26, v33 + ((*(v28 + 80) + 32) & ~*(v28 + 80)) + *(v28 + 72) * v35, v27);
    v36 = v28;

    (*(v28 + 56))(v26, 0, 1, v27);
  }

  else
  {

    (*(v28 + 56))(v26, 1, 1, v27);
    v36 = v28;
  }

  result = (*(v36 + 48))(v26, 1, v27);
  v38 = v88;
  if (result == 1)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v77 = v22;
  v78 = v6;
  v39 = v81;
  (*(v36 + 32))(v81, v26, v27);
  v75 = v36;
  v40 = *(v36 + 16);
  v76 = v27;
  v40(v80, v39, v27);
  v41 = sub_2283909D0();
  v42 = *(v41 + 16);
  if (v42)
  {
    v72 = v3;
    v73 = v2;
    v74 = a1;
    v99 = MEMORY[0x277D84F90];
    v43 = v41;
    sub_2281C9E84(0, v42, 0);
    v44 = v43;
    v45 = 0;
    v47 = v85;
    v46 = v86;
    v94 = v43 + ((*(v46 + 80) + 32) & ~*(v46 + 80));
    v48 = v99;
    v90 = (v92 + 56);
    v91 = (v86 + 8);
    v82 = v89 + 8;
    v83 = v89 + 16;
    v92 = v43;
    v93 = v86 + 16;
    while (v45 < *(v44 + 16))
    {
      v49 = v42;
      v50 = *(v46 + 16);
      v50(v47, v94 + *(v46 + 72) * v45, v9);
      v51 = *(v97 + 48);
      v50(v38, v47, v9);
      if (sub_228390E10())
      {
        v52 = v9;
        v53 = sub_2283908A0();
        v54 = *(v53 + 16);
        if (!v54)
        {
          goto LABEL_37;
        }

        v98 = 0;
        MEMORY[0x22AAB7BA0](&v98, 8);
        v55 = (v98 * v54) >> 64;
        if (v54 > v98 * v54)
        {
          v56 = -v54 % v54;
          if (v56 > v98 * v54)
          {
            do
            {
              v98 = 0;
              MEMORY[0x22AAB7BA0](&v98, 8);
            }

            while (v56 > v98 * v54);
            v55 = (v98 * v54) >> 64;
          }
        }

        if (v55 >= *(v53 + 16))
        {
          goto LABEL_32;
        }

        v57 = v89;
        v58 = v84;
        v59 = v87;
        (*(v89 + 16))(v84, v53 + ((*(v57 + 80) + 32) & ~*(v57 + 80)) + *(v89 + 72) * v55, v87);

        sub_2283908D0();
        (*(v57 + 8))(v58, v59);
        sub_2281AF0A0();
        v38 = v88;
        sub_228391E50();
        v60 = 0;
        v9 = v52;
        v47 = v85;
        v46 = v86;
      }

      else
      {
        v60 = 1;
      }

      (*v91)(v47, v9);
      (*v90)(&v38[v51], v60, 1, v95);
      v99 = v48;
      v61 = v38;
      v63 = *(v48 + 16);
      v62 = *(v48 + 24);
      if (v63 >= v62 >> 1)
      {
        sub_2281C9E84(v62 > 1, v63 + 1, 1);
        v48 = v99;
      }

      ++v45;
      *(v48 + 16) = v63 + 1;
      sub_2281CE830(v61, v48 + ((*(v96 + 80) + 32) & ~*(v96 + 80)) + *(v96 + 72) * v63);
      v42 = v49;
      v38 = v61;
      v44 = v92;
      if (v45 == v49)
      {

        v2 = v73;
        v3 = v72;
        goto LABEL_24;
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

LABEL_24:
  v64 = sub_2283908B0();
  v65 = *(v64 + 16);
  v66 = v87;
  v67 = v89;
  if (v65)
  {
    v68 = sub_22823E154(v65);
    if ((v68 & 0x8000000000000000) != 0)
    {
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:

      __break(1u);
      goto LABEL_38;
    }

    if (v68 >= *(v64 + 16))
    {
      goto LABEL_36;
    }

    v69 = v79;
    (*(v67 + 16))(v79, v64 + ((*(v67 + 80) + 32) & ~*(v67 + 80)) + *(v67 + 72) * v68, v66);
    v70 = 0;
  }

  else
  {
    v70 = 1;
    v69 = v79;
  }

  (*(v67 + 56))(v69, v70, 1, v66);
  result = (*(v67 + 48))(v69, 1, v66);
  if (result != 1)
  {
    sub_2283908D0();
    (*(v67 + 8))(v69, v66);
    sub_2281AF0A0();
    sub_228391E50();
    (*(v3 + 104))(v78, *MEMORY[0x277D11728], v2);
    sub_228390D30();
    return (*(v75 + 8))(v81, v76);
  }

LABEL_39:
  __break(1u);
  return result;
}

unint64_t sub_22823E154(unint64_t result)
{
  if (result)
  {
    v1 = result;
    v3 = 0;
    MEMORY[0x22AAB7BA0](&v3, 8);
    result = (v3 * v1) >> 64;
    if (v3 * v1 < v1)
    {
      v2 = -v1 % v1;
      if (v2 > v3 * v1)
      {
        do
        {
          v3 = 0;
          MEMORY[0x22AAB7BA0](&v3, 8);
        }

        while (v2 > v3 * v1);
        return (v3 * v1) >> 64;
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_22823E1E0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t type metadata accessor for StartDateEndDateEditDataSource()
{
  result = qword_27D825C28;
  if (!qword_27D825C28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22823E2A0()
{
  result = type metadata accessor for DurationDatePickerItem();
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

uint64_t sub_22823E354@<X0>(uint64_t a1@<X8>)
{
  sub_228391870();
  v2 = sub_22838F440();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 0, 1, v2);
}

uint64_t sub_22823E3C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v27[1] = a3;
  v4 = sub_22838F6C0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2282419CC(0, &qword_280DDCDB0, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v27 - v11;
  v13 = sub_22838F440();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = v27 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v16);
  v21 = v27 - v20;
  MEMORY[0x28223BE20](v19);
  v23 = v27 - v22;
  sub_22822BFC0(a2, v12);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    return sub_228241F04(v12, &qword_280DDCDB0, MEMORY[0x277CC9578]);
  }

  (*(v14 + 32))(v23, v12, v13);
  sub_22838F680();
  sub_22838F590();
  (*(v5 + 8))(v8, v4);
  sub_228391870();
  sub_228241F80(&unk_27D827B20, MEMORY[0x277CC9578]);
  v25 = sub_228391FB0();
  v26 = *(v14 + 8);
  v26(v18, v13);
  if ((v25 & 1) == 0)
  {
    sub_228391850();
  }

  v26(v21, v13);
  return (v26)(v23, v13);
}

uint64_t sub_22823E70C()
{
  v0 = MEMORY[0x277CC9578];
  sub_2282419CC(0, &qword_280DDCDB0, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v7 - v3;
  v5 = sub_22838F440();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  sub_228391850();
  return sub_228241F04(v4, &qword_280DDCDB0, v0);
}

uint64_t sub_22823E808@<X0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_228391870();
  }

  else
  {
    v3 = sub_22838F440();
    return (*(*(v3 - 8) + 56))(a1, 1, 1, v3);
  }
}

uint64_t sub_22823E8A8(uint64_t a1, uint64_t a2)
{
  v3 = sub_22838F6C0();
  v37 = *(v3 - 8);
  v4 = *(v37 + 64);
  MEMORY[0x28223BE20](v3);
  v36 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2282419CC(0, &qword_280DDCDB0, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v35 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v33 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = &v33 - v13;
  v15 = sub_22838F440();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v38 = &v33 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v21 = &v33 - v20;
  sub_22822BFC0(a2, v14);
  v22 = *(v16 + 48);
  if (v22(v14, 1, v15) == 1)
  {
    v23 = MEMORY[0x277CC9578];
    v24 = v14;
    return sub_228241F04(v24, &qword_280DDCDB0, v23);
  }

  v33 = v3;
  v34 = v21;
  v25 = v14;
  v26 = *(v16 + 32);
  v26(v21, v25, v15);
  swift_beginAccess();
  if (!swift_weakLoadStrong())
  {
    (*(v16 + 56))(v12, 1, 1, v15);
    goto LABEL_10;
  }

  sub_228391870();

  if (v22(v12, 1, v15) == 1)
  {
LABEL_10:
    (*(v16 + 8))(v34, v15);
    v23 = MEMORY[0x277CC9578];
    v24 = v12;
    return sub_228241F04(v24, &qword_280DDCDB0, v23);
  }

  v27 = v38;
  v26(v38, v12, v15);
  sub_228241F80(&unk_27D827B20, MEMORY[0x277CC9578]);
  v28 = v34;
  if ((sub_228391FB0() & 1) == 0)
  {
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      v29 = v36;
      sub_22838F680();
      v30 = v35;
      sub_22838F590();
      (*(v37 + 8))(v29, v33);
      (*(v16 + 56))(v30, 0, 1, v15);
      sub_228391850();

      sub_228241F04(v30, &qword_280DDCDB0, MEMORY[0x277CC9578]);
    }
  }

  v31 = *(v16 + 8);
  v31(v27, v15);
  return (v31)(v28, v15);
}

uint64_t sub_22823ED50()
{
  v1 = v0;
  v36 = MEMORY[0x277D85248];
  sub_2282419CC(0, &qword_280DDBAD0, MEMORY[0x277D85248], MEMORY[0x277D83D88]);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v29 - v4;
  v6 = sub_228392770();
  v32 = *(v6 - 8);
  v33 = v6;
  v7 = *(v32 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228241C50();
  v11 = *(v10 - 8);
  v30 = v10;
  v31 = v11;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228241E38();
  v16 = *(v15 - 8);
  v34 = v15;
  v35 = v16;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v29 = &v29 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(v0 + qword_27D825C00);
  v37 = *(v1 + qword_27D825C08);
  v38 = v19;
  sub_228241D38();
  sub_228241DA0();
  sub_228241F80(&qword_27D825C50, sub_228241D38);
  sub_228241F80(&qword_27D825C58, sub_228241DA0);

  sub_228391680();
  sub_228392740();
  sub_22817A958(0, &qword_280DDCEE0, 0x277D85C78);
  v20 = sub_228392790();
  v38 = v20;
  v21 = sub_228392730();
  (*(*(v21 - 8) + 56))(v5, 1, 1, v21);
  sub_228241F80(&qword_27D825C68, sub_228241C50);
  sub_2281A1504();
  v22 = v29;
  v23 = v30;
  sub_228391A80();
  sub_228241F04(v5, &qword_280DDBAD0, v36);

  (*(v32 + 8))(v9, v33);
  (*(v31 + 8))(v14, v23);
  v24 = swift_allocObject();
  *(v24 + 16) = sub_228241F74;
  *(v24 + 24) = v1;
  sub_228241F80(&qword_27D825C70, sub_228241E38);

  v25 = v34;
  v26 = sub_228391AC0();

  (*(v35 + 8))(v22, v25);
  v27 = *(v1 + qword_27D825C10);
  *(v1 + qword_27D825C10) = v26;
}

uint64_t sub_22823F234(uint64_t a1, uint64_t a2)
{
  v111 = a2;
  v127 = a1;
  sub_228241B70();
  *&v106 = v2;
  v105 = *(v2 - 8);
  v3 = *(v105 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v104 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_228390460();
  v117 = *(v6 - 8);
  v118 = v6;
  v7 = *(v117 + 64);
  MEMORY[0x28223BE20](v6);
  v119 = &v104 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = sub_22838FFC0();
  v114 = *(v115 - 8);
  v9 = *(v114 + 64);
  MEMORY[0x28223BE20](v115);
  v120 = &v104 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x277D83D88];
  sub_2282419CC(0, &unk_280DDBCD0, MEMORY[0x277D74BD0], MEMORY[0x277D83D88]);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v116 = &v104 - v14;
  v15 = sub_228390170();
  v124 = *(v15 - 8);
  v125 = v15;
  v16 = *(v124 + 64);
  MEMORY[0x28223BE20](v15);
  v123 = &v104 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = sub_22838F6C0();
  v108 = *(v109 - 8);
  v18 = *(v108 + 64);
  MEMORY[0x28223BE20](v109);
  v107 = &v104 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v128 = sub_228391590();
  v122 = *(v128 - 8);
  v20 = *(v122 + 64);
  v21 = MEMORY[0x28223BE20](v128);
  v110 = &v104 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v104 - v23;
  sub_2282419CC(0, &qword_280DDCDB0, MEMORY[0x277CC9578], v11);
  v26 = *(*(v25 - 8) + 64);
  v27 = MEMORY[0x28223BE20](v25 - 8);
  v29 = &v104 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v31 = &v104 - v30;
  v32 = sub_22838F440();
  v33 = *(v32 - 8);
  v34 = *(v33 + 64);
  v35 = MEMORY[0x28223BE20](v32);
  v36 = &v104 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35);
  v38 = &v104 - v37;
  v131 = sub_2283913A0();
  v121 = *(v131 - 8);
  v39 = *(v121 + 64);
  MEMORY[0x28223BE20](v131);
  v41 = &v104 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228391390();
  v126 = objc_opt_self();
  v42 = [v126 secondarySystemGroupedBackgroundColor];
  v130 = v41;
  sub_228391370();
  sub_22822BFC0(v111, v31);
  v43 = (*(v33 + 48))(v31, 1, v32);
  v113 = v32;
  v112 = v33;
  if (v43 == 1)
  {
    sub_228241F04(v31, &qword_280DDCDB0, MEMORY[0x277CC9578]);
    v44 = v129;
    sub_22838FFA0();
    v45 = v106;
    v46 = sub_2283915B0();
    (*(v105 + 8))(v5, v45);
    if (v46 >= 2)
    {
      sub_22838FF10();
    }

    v47 = v44;
    v48 = v110;
    sub_228391580();
    if (qword_280DDCF18 != -1)
    {
      swift_once();
    }

    sub_22838F0C0();
    sub_228391540();
    sub_22838F0C0();
    sub_2283913D0();
    v49 = [v126 linkColor];
    v50 = sub_2283914A0();
    sub_228391420();
    v50(v132, 0);
    v51 = v112;
    v52 = v113;
    (*(v112 + 16))(v36, v127, v113);
    v53 = (*(v51 + 80) + 24) & ~*(v51 + 80);
    v54 = swift_allocObject();
    v55 = v47;
    *(v54 + 16) = v47;
    (*(v51 + 32))(v54 + v53, v36, v52);
    v56 = v128;
    v133 = v128;
    v134 = MEMORY[0x277D74C30];
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v132);
    v58 = v122;
    (*(v122 + 16))(boxed_opaque_existential_1, v48, v56);
    v59 = v121;
    v60 = v116;
    v61 = v131;
    (*(v121 + 16))(v116, v130, v131);
    (*(v59 + 56))(v60, 0, 1, v61);
    (*(v114 + 104))(v120, *MEMORY[0x277D10F98], v115);
    (*(v117 + 104))(v119, *MEMORY[0x277D11140], v118);

    v62 = v123;
    sub_228390160();
    sub_228241A58(0, &qword_27D823918, &qword_27D827E00);
    v63 = swift_allocObject();
    *(v63 + 16) = xmmword_228397F30;
    v64 = qword_27D825C18;
    *(v63 + 56) = type metadata accessor for DurationDatePickerItem();
    *(v63 + 64) = sub_228241F80(&unk_27D825928, type metadata accessor for DurationDatePickerItem);
    v65 = __swift_allocate_boxed_opaque_existential_1((v63 + 32));
    sub_228241AB0(v55 + v64, v65);
    v66 = v125;
    *(v63 + 96) = v125;
    *(v63 + 104) = sub_228241F80(&qword_27D823AB0, MEMORY[0x277D11000]);
    v67 = __swift_allocate_boxed_opaque_existential_1((v63 + 72));
    v68 = v124;
    (*(v124 + 16))(v67, v62, v66);
    sub_22838FF60();

    (*(v68 + 8))(v62, v66);
    (*(v58 + 8))(v48, v128);
  }

  else
  {
    (*(v33 + 32))(v38, v31, v32);
    sub_228240648(v127, v29);
    (*(v33 + 56))(v29, 0, 1, v32);
    v69 = v129 + qword_27D825C20;
    swift_beginAccess();
    v110 = type metadata accessor for DurationDatePickerItem();
    v70 = *(v110 + 16);
    v111 = v69;
    sub_22822C098(v29, v69 + v70);
    swift_endAccess();
    sub_228391580();
    v71 = v24;
    if (qword_280DDCF18 != -1)
    {
      swift_once();
    }

    sub_22838F0C0();
    sub_228391540();
    v72 = [v126 labelColor];
    v73 = sub_228391450();
    sub_228391420();
    v73(v132, 0);
    sub_22817A958(0, &qword_280DDB9C0, 0x277D74300);
    v74 = *MEMORY[0x277D76918];
    v75 = *MEMORY[0x277D74420];
    sub_228392AD0();
    v76 = sub_228391450();
    sub_228391410();
    v76(v132, 0);
    v77 = qword_280DDCF20;
    sub_228241A58(0, &qword_280DDB870, &qword_280DDB830);
    v78 = swift_allocObject();
    v106 = xmmword_228397F40;
    *(v78 + 16) = xmmword_228397F40;
    v79 = v77;

    v80 = v107;
    sub_22838F680();
    v81 = sub_22838F5F0();
    (*(v108 + 8))(v80, v109);
    v82 = MEMORY[0x277D83C10];
    *(v78 + 56) = MEMORY[0x277D83B88];
    *(v78 + 64) = v82;
    *(v78 + 32) = v81;
    sub_22838F0C0();
    v83 = *(v78 + 16);
    v104 = v38;
    if (v83)
    {
      sub_228391FD0();
    }

    else
    {
    }

    sub_2283913D0();
    v84 = [v126 labelColor];
    v85 = sub_2283914A0();
    sub_228391420();
    v85(v132, 0);
    v86 = v128;
    v133 = v128;
    v134 = MEMORY[0x277D74C30];
    v87 = __swift_allocate_boxed_opaque_existential_1(v132);
    v88 = v122;
    (*(v122 + 16))(v87, v71, v86);
    v89 = *(v121 + 16);
    v90 = v116;
    v91 = v131;
    v127 = v71;
    v59 = v121;
    v89(v116, v130, v131);
    (*(v59 + 56))(v90, 0, 1, v91);
    (*(v114 + 104))(v120, *MEMORY[0x277D10F98], v115);
    (*(v117 + 104))(v119, *MEMORY[0x277D11140], v118);
    v92 = v123;
    sub_228390160();
    sub_228241A58(0, &qword_27D823918, &qword_27D827E00);
    v93 = swift_allocObject();
    *(v93 + 16) = xmmword_228397F30;
    v94 = qword_27D825C18;
    v95 = v110;
    *(v93 + 56) = v110;
    v96 = sub_228241F80(&unk_27D825928, type metadata accessor for DurationDatePickerItem);
    *(v93 + 64) = v96;
    v97 = __swift_allocate_boxed_opaque_existential_1((v93 + 32));
    sub_228241AB0(v129 + v94, v97);
    *(v93 + 96) = v95;
    *(v93 + 104) = v96;
    v98 = __swift_allocate_boxed_opaque_existential_1((v93 + 72));
    sub_228241AB0(v111, v98);
    sub_22838FF60();

    v99 = swift_allocObject();
    *(v99 + 16) = v106;
    v100 = v125;
    *(v99 + 56) = v125;
    *(v99 + 64) = sub_228241F80(&qword_27D823AB0, MEMORY[0x277D11000]);
    v101 = __swift_allocate_boxed_opaque_existential_1((v99 + 32));
    v102 = v124;
    (*(v124 + 16))(v101, v92, v100);
    sub_22838FF60();

    (*(v102 + 8))(v92, v100);
    (*(v88 + 8))(v127, v86);
    (*(v112 + 8))(v104, v113);
  }

  return (*(v59 + 8))(v130, v131);
}

uint64_t sub_2282403E4(uint64_t a1, uint64_t a2)
{
  v3 = sub_22838F6A0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22838F6C0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x277CC9578];
  sub_2282419CC(0, &qword_280DDCDB0, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v20 - v16;
  v18 = *(a2 + qword_27D825C08);

  sub_22838F680();
  (*(v4 + 104))(v7, *MEMORY[0x277CC9968], v3);
  sub_22838F660();
  (*(v4 + 8))(v7, v3);
  (*(v9 + 8))(v12, v8);
  sub_228391850();

  return sub_228241F04(v17, &qword_280DDCDB0, v13);
}

uint64_t sub_228240648@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a1;
  v29 = a2;
  v2 = sub_22838F6A0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22838F440();
  v30 = *(v7 - 8);
  v8 = v30[8];
  MEMORY[0x28223BE20](v7);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22838F6C0();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228390890();
  sub_228390880();
  sub_228390830();

  sub_22817A958(0, &qword_280DDBAF0, 0x277CBEBD0);
  sub_2283925F0();
  v16 = sub_2283907E0();
  v17 = *(v16 + 48);
  v18 = *(v16 + 52);
  swift_allocObject();
  sub_228390700();
  v19 = sub_228390720();

  if (v19)
  {
    v20 = v29;
    v21 = v30[2];
    v22 = v31;

    return v21(v20, v22, v7);
  }

  else
  {
    v24 = v29;
    sub_22838F680();
    sub_22838F3F0();
    (*(v3 + 104))(v6, *MEMORY[0x277CC9968], v2);
    v25 = sub_22838F670();
    (*(v3 + 8))(v6, v2);
    v26 = v30[1];
    v26(v10, v7);
    v27 = *(v12 + 8);
    v27(v15, v11);
    if (v25 == -1)
    {
      return (v30[2])(v24, v31, v7);
    }

    else
    {
      sub_22838F680();
      sub_22838F3F0();
      sub_22838F590();
      v26(v10, v7);
      return (v27)(v15, v11);
    }
  }
}

uint64_t sub_228240A10()
{
  v1 = *(v0 + qword_27D825C00);

  v2 = *(v0 + qword_27D825C08);

  v3 = *(v0 + qword_27D825C10);

  sub_228241B14(v0 + qword_27D825C18);
  v4 = v0 + qword_27D825C20;

  return sub_228241B14(v4);
}

uint64_t sub_228240A80()
{
  v0 = sub_22838FFB0();
  v1 = *(v0 + qword_27D825C00);

  v2 = *(v0 + qword_27D825C08);

  v3 = *(v0 + qword_27D825C10);

  sub_228241B14(v0 + qword_27D825C18);
  sub_228241B14(v0 + qword_27D825C20);

  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_228240B4C()
{
  v0 = sub_2283900D0();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228390040();
  sub_2283901C0();
  v5 = sub_2283900C0();
  swift_unknownObjectRelease();
  (*(v1 + 8))(v4, v0);
  return v5;
}

uint64_t sub_228240C40()
{
  type metadata accessor for DurationDatePickerCollectionViewCell();
  sub_228241F80(&qword_27D8258E8, type metadata accessor for DurationDatePickerCollectionViewCell);
  return sub_2283926B0();
}

uint64_t sub_228240CB0(uint64_t (*a1)@<X0>(uint64_t a1@<X8>), uint64_t a2)
{
  v5 = MEMORY[0x277D83D88];
  sub_2282419CC(0, &qword_280DDBCE8, MEMORY[0x277D74AC8], MEMORY[0x277D83D88]);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v103 = (v89 - v8);
  v9 = sub_2283912D0();
  v100 = *(v9 - 1);
  v101 = v9;
  v10 = *(v100 + 64);
  MEMORY[0x28223BE20](v9);
  *&v102 = v89 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_228391280();
  v106 = *(v12 - 8);
  v107 = v12;
  v13 = *(v106 + 64);
  MEMORY[0x28223BE20](v12);
  v115 = v89 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2282419CC(0, &qword_280DDCDB0, MEMORY[0x277CC9578], v5);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = v89 - v17;
  v19 = type metadata accessor for DurationDatePickerItem();
  v20 = *(*(v19 - 1) + 64);
  MEMORY[0x28223BE20](v19);
  v22 = (v89 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = sub_2283913A0();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v23);
  v27 = v89 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v2 + qword_27D825C10) = 0;
  *(v2 + qword_27D825C00) = a1;
  v114 = v2;
  *(v2 + qword_27D825C08) = a2;
  v111 = a1;

  v105 = a2;

  sub_228391390();
  v90 = objc_opt_self();
  v28 = [v90 secondarySystemGroupedBackgroundColor];
  sub_228391370();
  if (qword_280DDCF18 != -1)
  {
    swift_once();
  }

  v93 = qword_280DDCF20;
  v92 = *algn_280DDCF28;
  v91 = qword_280DDCF30;
  v99 = sub_22838F0C0();
  v98 = v29;
  v30 = v19[9];
  v31 = *(v24 + 16);
  v94 = v24 + 16;
  v95 = v31;
  v31(v22 + v30, v27, v23);
  v32 = sub_22838F440();
  v33 = *(v32 - 8);
  v109 = *(v33 + 56);
  v110 = v32;
  v34 = v33 + 56;
  v35 = v18;
  v109(v18, 1, 1, v32);
  v36 = v34;
  v113 = v23;
  v37 = v19[5];
  swift_retain_n();
  sub_22838F490();
  v38 = type metadata accessor for DurationDatePickerCollectionViewCell();
  v97 = sub_228241F80(&qword_27D8258E8, type metadata accessor for DurationDatePickerCollectionViewCell);
  v96 = v38;
  *v22 = sub_22838FBB0();
  v22[1] = v39;
  v40 = (v22 + v19[7]);
  v41 = v19[11];
  v42 = (v22 + v19[10]);
  v108 = v35;
  v43 = (v22 + v41);
  v44 = v19[12];
  v104 = v24;
  v45 = (v22 + v44);
  v112 = v27;
  v46 = v19[16];
  v109(v22 + v46, 1, 1, v32);
  v89[1] = v36;
  v47 = (v22 + v19[6]);
  v48 = v98;
  *v47 = v99;
  v47[1] = v48;
  *v40 = 0;
  v40[1] = 0;
  *(v22 + v19[13]) = 1;
  *(v22 + v19[14]) = 1;
  *(v22 + v19[15]) = 2;
  sub_22822C098(v35, v22 + v46);
  v49 = v111;
  *v42 = sub_228241A30;
  v42[1] = v49;
  *v43 = sub_228241A38;
  v43[1] = v49;
  *v45 = 0;
  v45[1] = 0;
  *(v22 + v19[8]) = MEMORY[0x277D84F90];
  v99 = qword_27D825C18;
  sub_22822D918(v22, v114 + qword_27D825C18);
  sub_22817A958(0, &qword_27D827890, 0x277D750C8);
  v50 = sub_228391FC0();
  v51 = [objc_opt_self() systemImageNamed_];

  v52 = sub_228392C90();
  sub_22817A958(0, &unk_280DDB940, 0x277D75220);
  v98 = v52;
  v53 = sub_228392E20();
  v54 = [v90 secondaryLabelColor];
  [v53 setTintColor_];

  sub_22820DC6C();
  v56 = v102;
  v57 = (v102 + *(v55 + 48));
  v58 = *MEMORY[0x277D74A98];
  v59 = sub_228391220();
  (*(*(v59 - 8) + 104))(v56, v58, v59);
  *v57 = sub_2281AF1B4;
  v57[1] = 0;
  (*(v100 + 104))(v56, *MEMORY[0x277D74AD8], v101);
  v60 = sub_228391230();
  (*(*(v60 - 8) + 56))(v103, 1, 1, v60);
  v101 = v53;
  sub_228391270();
  v100 = sub_22838F0C0();
  v93 = v61;
  v103 = MEMORY[0x277D84560];
  sub_2282419CC(0, &unk_280DDB890, MEMORY[0x277D74AE0], MEMORY[0x277D84560]);
  v62 = *(sub_2283912F0() - 8);
  v63 = *(v62 + 72);
  v64 = (*(v62 + 80) + 32) & ~*(v62 + 80);
  v92 = swift_allocObject();
  v102 = xmmword_228397F40;
  *(v92 + 16) = xmmword_228397F40;
  sub_2283911D0();
  v95(v22 + v19[9], v112, v113);
  v65 = v108;
  sub_228391870();
  v66 = v109;
  v109(v65, 0, 1, v110);
  v67 = swift_allocObject();
  swift_weakInit();
  v68 = swift_allocObject();
  swift_weakInit();
  v69 = v19[5];

  sub_22838F490();
  *v22 = sub_22838FBB0();
  v22[1] = v70;
  v71 = (v22 + v19[7]);
  v72 = (v22 + v19[10]);
  v73 = (v22 + v19[11]);
  v74 = (v22 + v19[12]);
  v75 = v19[16];
  v66(v22 + v75, 1, 1, v110);
  v76 = (v22 + v19[6]);
  v77 = v93;
  *v76 = v100;
  v76[1] = v77;
  *v71 = 0;
  v71[1] = 0;
  *(v22 + v19[13]) = 1;
  *(v22 + v19[14]) = 1;
  *(v22 + v19[15]) = 2;
  sub_22822C098(v108, v22 + v75);

  *v72 = sub_228241A48;
  v72[1] = v67;
  *v73 = sub_228241A50;
  v73[1] = v68;
  *v74 = 0;
  v74[1] = 0;
  *(v22 + v19[8]) = v92;
  v78 = qword_27D825C20;
  v79 = v114;
  sub_22822D918(v22, v114 + qword_27D825C20);
  sub_2282419CC(0, &qword_27D823910, MEMORY[0x277D10F78], v103);
  v80 = *(sub_22838FEF0() - 8);
  v81 = *(v80 + 72);
  v82 = (*(v80 + 80) + 32) & ~*(v80 + 80);
  *(swift_allocObject() + 16) = v102;
  sub_228241A58(0, &qword_27D823918, &qword_27D827E00);
  v83 = swift_allocObject();
  *(v83 + 16) = xmmword_228397F30;
  *(v83 + 56) = v19;
  v84 = sub_228241F80(&unk_27D825928, type metadata accessor for DurationDatePickerItem);
  *(v83 + 64) = v84;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v83 + 32));
  sub_228241AB0(v79 + v99, boxed_opaque_existential_1);
  swift_beginAccess();
  *(v83 + 96) = v19;
  *(v83 + 104) = v84;
  v86 = __swift_allocate_boxed_opaque_existential_1((v83 + 72));
  sub_228241AB0(v79 + v78, v86);
  sub_22838FED0();
  v87 = sub_22838FF30();

  sub_22823ED50();

  (*(v106 + 8))(v115, v107);
  (*(v104 + 8))(v112, v113);
  return v87;
}

void sub_2282419CC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_228241A58(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  if (!*a2)
  {
    sub_2281810DC(255, a3);
    v4 = sub_228393430();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_228241AB0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DurationDatePickerItem();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_228241B14(uint64_t a1)
{
  v2 = type metadata accessor for DurationDatePickerItem();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_228241B70()
{
  if (!qword_27D827C20)
  {
    v0 = sub_2283915E0();
    if (!v1)
    {
      atomic_store(v0, &qword_27D827C20);
    }
  }
}

uint64_t sub_228241BDC(uint64_t a1)
{
  v3 = *(*(sub_22838F440() - 8) + 80);
  v4 = *(v1 + 16);

  return sub_2282403E4(a1, v4);
}

void sub_228241C50()
{
  if (!qword_27D825C38)
  {
    sub_228241D38();
    sub_228241DA0();
    sub_228241F80(&qword_27D825C50, sub_228241D38);
    sub_228241F80(&qword_27D825C58, sub_228241DA0);
    v0 = sub_228391670();
    if (!v1)
    {
      atomic_store(v0, &qword_27D825C38);
    }
  }
}

void sub_228241D38()
{
  if (!qword_27D825C40)
  {
    sub_22838F440();
    v0 = sub_228391880();
    if (!v1)
    {
      atomic_store(v0, &qword_27D825C40);
    }
  }
}

void sub_228241DA0()
{
  if (!qword_27D825C48)
  {
    sub_2282419CC(255, &qword_280DDCDB0, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
    v0 = sub_228391880();
    if (!v1)
    {
      atomic_store(v0, &qword_27D825C48);
    }
  }
}

void sub_228241E38()
{
  if (!qword_27D825C60)
  {
    sub_228241C50();
    sub_22817A958(255, &qword_280DDCEE0, 0x277D85C78);
    sub_228241F80(&qword_27D825C68, sub_228241C50);
    sub_2281A1504();
    v0 = sub_228391790();
    if (!v1)
    {
      atomic_store(v0, &qword_27D825C60);
    }
  }
}

uint64_t sub_228241F04(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_2282419CC(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_228241F80(unint64_t *a1, void (*a2)(uint64_t))
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

void static ScheduleUnavailableDeviceState.Device.resolvedLocal.getter(char *a1@<X8>)
{
  v2 = [objc_opt_self() currentDevice];
  v3 = [v2 userInterfaceIdiom];

  if (v3 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v3)
  {
    v4 = 0;
  }

  *a1 = v4;
}

uint64_t ScheduleUnavailableDeviceState.bodyText.getter()
{
  v1 = v0[1];
  v2 = *(v0 + 1);
  v11 = *v0;
  v12 = v0[2];
  result = ScheduleUnavailableDeviceState.localizationKey.getter();
  if (v4)
  {
    if (v1)
    {
      if (qword_280DDCF18 != -1)
      {
        swift_once();
      }

      v5 = sub_22838F0C0();

      return v5;
    }

    else
    {
      if (qword_280DDCF18 != -1)
      {
        swift_once();
      }

      sub_2281BC044();
      v6 = swift_allocObject();
      v7 = MEMORY[0x277D83B88];
      *(v6 + 16) = xmmword_228397F40;
      v8 = MEMORY[0x277D83C10];
      *(v6 + 56) = v7;
      *(v6 + 64) = v8;
      *(v6 + 32) = v2;
      v9 = sub_22838F0C0();

      if (*(v6 + 16))
      {
        v10 = sub_228391FD0();

        return v10;
      }

      else
      {

        return v9;
      }
    }
  }

  return result;
}

uint64_t ScheduleUnavailableDeviceState.localizationKey.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = *(v0 + 1);
  if (v0[1])
  {
    v5 = 0x5F545045434E4F43;
  }

  else
  {
    v5 = 0x59524F4745544143;
  }

  if ((v1 & 1) != 0 || ![objc_opt_self() hasSupportedAppleWatchPaired])
  {
    if (v3)
    {
      v6 = 0xEF474E4952414853;
      v7 = 0xE000000000000000;
      if ((v2 & 1) == 0)
      {
        goto LABEL_22;
      }

      v8 = 0;
      v9 = 0x5F48544C4145485FLL;
LABEL_14:
      if (v4 == 1)
      {
        goto LABEL_15;
      }

LABEL_22:

LABEL_23:

      return 0;
    }

    v8 = 0;
    v7 = 0xE000000000000000;
  }

  else
  {
    if (v3)
    {
      goto LABEL_23;
    }

    v8 = 0xD000000000000013;
    v7 = 0x80000002283AE400;
  }

  v9 = 0;
  v6 = 0xE000000000000000;
  if (v2)
  {
    goto LABEL_14;
  }

LABEL_15:

  MEMORY[0x22AAB5C80](0xD000000000000026, 0x80000002283AE3D0);

  v10 = v1 == 0;
  if (v1)
  {
    v11 = 0x444150495FLL;
  }

  else
  {
    v11 = 0x454E4F4850495FLL;
  }

  if (v10)
  {
    v12 = 0xE700000000000000;
  }

  else
  {
    v12 = 0xE500000000000000;
  }

  MEMORY[0x22AAB5C80](v11, v12);

  MEMORY[0x22AAB5C80](v8, v7);

  MEMORY[0x22AAB5C80](v9, v6);

  return v5;
}

unint64_t sub_2282424E8()
{
  result = qword_27D825C78;
  if (!qword_27D825C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D825C78);
  }

  return result;
}

unint64_t sub_228242540()
{
  result = qword_27D825C80;
  if (!qword_27D825C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D825C80);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ScheduleUnavailableDeviceState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[16])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = v3 - 2;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for ScheduleUnavailableDeviceState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t ScheduleDurationItem.startDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ScheduleDurationItem() + 20);
  v4 = sub_22838F440();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for ScheduleDurationItem()
{
  result = qword_27D825CD0;
  if (!qword_27D825CD0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ScheduleDurationItem.init(startDate:endDate:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_22838F490();
  v6 = type metadata accessor for ScheduleDurationItem();
  v7 = (a3 + v6[7]);
  type metadata accessor for ScheduleDurationCell();
  sub_228245BE0(&qword_27D825810, v8, type metadata accessor for ScheduleDurationCell);
  *v7 = sub_22838FBB0();
  v7[1] = v9;
  v10 = v6[5];
  v11 = sub_22838F440();
  (*(*(v11 - 8) + 32))(a3 + v10, a1, v11);
  v12 = a3 + v6[6];

  return sub_2281E793C(a2, v12);
}

uint64_t ScheduleDurationItem.reuseIdentifier.getter()
{
  v1 = (v0 + *(type metadata accessor for ScheduleDurationItem() + 28));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

unint64_t ScheduleDurationItem.uniqueIdentifier.getter()
{
  sub_2283931D0();

  v0 = sub_22838F450();
  MEMORY[0x22AAB5C80](v0);

  MEMORY[0x22AAB5C80](41, 0xE100000000000000);
  return 0xD000000000000015;
}

uint64_t ScheduleDurationItem.hash(into:)()
{
  v1 = v0;
  v2 = sub_22838F440();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x277CC9578];
  sub_228244E94(0, &qword_280DDCDB0, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v15 - v10;
  v12 = type metadata accessor for ScheduleDurationItem();
  v13 = *(v12 + 20);
  sub_228245BE0(&qword_27D825C90, 255, MEMORY[0x277CC9578]);
  sub_228391F70();
  sub_228244F00(v1 + *(v12 + 24), v11, &qword_280DDCDB0, v7);
  if ((*(v3 + 48))(v11, 1, v2) == 1)
  {
    return sub_228393540();
  }

  (*(v3 + 32))(v6, v11, v2);
  sub_228393540();
  sub_228391F70();
  return (*(v3 + 8))(v6, v2);
}

uint64_t ScheduleDurationItem.hashValue.getter()
{
  v1 = v0;
  v2 = sub_22838F440();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x277CC9578];
  sub_228244E94(0, &qword_280DDCDB0, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v15 - v10;
  sub_228393520();
  v12 = type metadata accessor for ScheduleDurationItem();
  v13 = *(v12 + 20);
  sub_228245BE0(&qword_27D825C90, 255, MEMORY[0x277CC9578]);
  sub_228391F70();
  sub_228244F00(v1 + *(v12 + 24), v11, &qword_280DDCDB0, v7);
  if ((*(v3 + 48))(v11, 1, v2) == 1)
  {
    sub_228393540();
  }

  else
  {
    (*(v3 + 32))(v6, v11, v2);
    sub_228393540();
    sub_228391F70();
    (*(v3 + 8))(v6, v2);
  }

  return sub_228393570();
}

uint64_t sub_228242EA4(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v5 = sub_22838F440();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x277CC9578];
  sub_228244E94(0, &qword_280DDCDB0, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v17 - v13;
  v15 = *(a2 + 20);
  sub_228245BE0(&qword_27D825C90, 255, MEMORY[0x277CC9578]);
  sub_228391F70();
  sub_228244F00(v4 + *(a2 + 24), v14, &qword_280DDCDB0, v10);
  if ((*(v6 + 48))(v14, 1, v5) == 1)
  {
    return sub_228393540();
  }

  (*(v6 + 32))(v9, v14, v5);
  sub_228393540();
  sub_228391F70();
  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_2282430DC(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v5 = sub_22838F440();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x277CC9578];
  sub_228244E94(0, &qword_280DDCDB0, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v17 - v13;
  sub_228393520();
  v15 = *(a2 + 20);
  sub_228245BE0(&qword_27D825C90, 255, MEMORY[0x277CC9578]);
  sub_228391F70();
  sub_228244F00(v4 + *(a2 + 24), v14, &qword_280DDCDB0, v10);
  if ((*(v6 + 48))(v14, 1, v5) == 1)
  {
    sub_228393540();
  }

  else
  {
    (*(v6 + 32))(v9, v14, v5);
    sub_228393540();
    sub_228391F70();
    (*(v6 + 8))(v9, v5);
  }

  return sub_228393570();
}

unint64_t sub_228243330()
{
  sub_2283931D0();

  v0 = sub_22838F450();
  MEMORY[0x22AAB5C80](v0);

  MEMORY[0x22AAB5C80](41, 0xE100000000000000);
  return 0xD000000000000015;
}

uint64_t sub_2282433C0(uint64_t a1)
{
  v2 = sub_228245BE0(&qword_27D825CE8, 255, type metadata accessor for ScheduleDurationItem);

  return MEMORY[0x282169440](a1, v2);
}

id sub_228243440()
{
  v1 = OBJC_IVAR____TtC19HealthMedicationsUI20ScheduleDurationCell____lazy_storage___mainStackView;
  v2 = *&v0[OBJC_IVAR____TtC19HealthMedicationsUI20ScheduleDurationCell____lazy_storage___mainStackView];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC19HealthMedicationsUI20ScheduleDurationCell____lazy_storage___mainStackView];
  }

  else
  {
    v4 = sub_2282434A4(v0);
    v5 = *&v0[v1];
    *&v0[v1] = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_2282434A4(void *a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x277D75A68]) init];
  v3 = [a1 traitCollection];
  v4 = [v3 preferredContentSizeCategory];

  LOBYTE(v3) = sub_2283928C0();
  [v2 setAxis_];
  v5 = [a1 traitCollection];
  v6 = [v5 preferredContentSizeCategory];

  LOBYTE(v5) = sub_2283928C0();
  v7 = 8.0;
  if (v5)
  {
    v7 = 12.0;
  }

  [v2 setSpacing_];
  [v2 setTranslatesAutoresizingMaskIntoConstraints_];
  return v2;
}

id sub_2282435DC(uint64_t *a1)
{
  v2 = *a1;
  v3 = *&v1[*a1];
  if (v3)
  {
    v4 = *&v1[*a1];
  }

  else
  {
    v5 = [objc_allocWithZone(MEMORY[0x277D75A68]) init];
    [v5 setAxis_];
    v6 = [v1 traitCollection];
    v7 = [v6 preferredContentSizeCategory];

    LOBYTE(v6) = sub_2283928C0();
    v8 = 6.0;
    if (v6)
    {
      v8 = 0.0;
    }

    [v5 setSpacing_];
    v9 = *&v1[v2];
    *&v1[v2] = v5;
    v4 = v5;

    v3 = 0;
  }

  v10 = v3;
  return v4;
}

uint64_t sub_2282436D0(uint64_t a1, uint64_t *a2)
{
  sub_22817E6C8(a1, v6);
  v3 = *a2;
  v4 = OBJC_IVAR____TtC19HealthMedicationsUI20ScheduleDurationCell_item;
  swift_beginAccess();
  sub_22818FD64(v6, v3 + v4);
  swift_endAccess();
  sub_22824389C();
  return sub_22819482C(v6);
}

uint64_t sub_228243740@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC19HealthMedicationsUI20ScheduleDurationCell_item;
  swift_beginAccess();
  return sub_22817E6C8(v1 + v3, a1);
}

uint64_t sub_228243798(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC19HealthMedicationsUI20ScheduleDurationCell_item;
  swift_beginAccess();
  sub_22818FD64(a1, v1 + v3);
  swift_endAccess();
  sub_22824389C();
  return sub_22819482C(a1);
}

uint64_t (*sub_228243804(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_228243868;
}

uint64_t sub_228243868(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v5 = *(a1 + 24);
    return sub_22824389C();
  }

  return result;
}

uint64_t sub_22824389C()
{
  v1 = v0;
  v2 = sub_2283911B0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x277D83D88];
  sub_228244E94(0, &qword_280DDCDB0, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v56 - v10;
  sub_228244E94(0, &unk_27D825CF0, type metadata accessor for ScheduleDurationItem, v7);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = v56 - v14;
  v16 = type metadata accessor for ScheduleDurationItem();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = v56 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = OBJC_IVAR____TtC19HealthMedicationsUI20ScheduleDurationCell_item;
  swift_beginAccess();
  sub_22817E6C8(&v1[v21], v59);
  if (v60)
  {
    sub_2281810DC(0, &qword_280DDCD60);
    v22 = swift_dynamicCast();
    (*(v17 + 56))(v15, v22 ^ 1u, 1, v16);
    if ((*(v17 + 48))(v15, 1, v16) != 1)
    {
      sub_2282451C8(v15, v20);
      v23 = sub_228243440();
      sub_228392B10();

      v24 = sub_2282435C4();
      sub_228392B10();

      v25 = sub_2282435D0();
      sub_228392B10();

      v26 = OBJC_IVAR____TtC19HealthMedicationsUI20ScheduleDurationCell____lazy_storage___startDateStackView;
      v27 = qword_280DDCF18;
      v28 = *&v1[OBJC_IVAR____TtC19HealthMedicationsUI20ScheduleDurationCell____lazy_storage___startDateStackView];
      if (v27 != -1)
      {
        swift_once();
      }

      v56[0] = *algn_280DDCF28;
      v56[1] = qword_280DDCF20;
      v29 = sub_22838F0C0();
      v31 = sub_22824522C(v29, v30);

      [v28 addArrangedSubview_];

      v57 = v26;
      v32 = *&v1[v26];
      v33 = *(v16 + 20);
      v34 = sub_22838F440();
      v35 = *(v34 - 8);
      (*(v35 + 16))(v11, &v20[v33], v34);
      (*(v35 + 56))(v11, 0, 1, v34);
      v36 = v32;
      v37 = sub_228245478(v11);
      sub_228245A7C(v11, &qword_280DDCDB0, MEMORY[0x277CC9578]);
      [v36 addArrangedSubview_];

      v38 = OBJC_IVAR____TtC19HealthMedicationsUI20ScheduleDurationCell____lazy_storage___endDateStackView;
      v39 = *&v1[OBJC_IVAR____TtC19HealthMedicationsUI20ScheduleDurationCell____lazy_storage___endDateStackView];
      v40 = sub_22838F0C0();
      v42 = sub_22824522C(v40, v41);

      [v39 addArrangedSubview_];

      v43 = *(v16 + 24);
      v44 = *&v1[v38];
      v45 = sub_228245478(&v20[v43]);
      [v44 addArrangedSubview_];

      v46 = OBJC_IVAR____TtC19HealthMedicationsUI20ScheduleDurationCell____lazy_storage___mainStackView;
      [*&v1[OBJC_IVAR____TtC19HealthMedicationsUI20ScheduleDurationCell____lazy_storage___mainStackView] addArrangedSubview_];
      [*&v1[v46] addArrangedSubview_];
      return sub_228245B80(v20, type metadata accessor for ScheduleDurationItem);
    }
  }

  else
  {
    sub_22819482C(v59);
    (*(v17 + 56))(v15, 1, 1, v16);
  }

  sub_228245A7C(v15, &unk_27D825CF0, type metadata accessor for ScheduleDurationItem);
  sub_228391150();
  v48 = v1;
  v49 = sub_2283911A0();
  v50 = sub_2283925C0();

  if (os_log_type_enabled(v49, v50))
  {
    v51 = swift_slowAlloc();
    v52 = swift_slowAlloc();
    v58 = v52;
    *v51 = 136446210;
    sub_22817E6C8(&v1[v21], v59);
    sub_2281AEAE8(0, &qword_280DDCD50, &qword_280DDCD60, MEMORY[0x277D10D48], MEMORY[0x277D83D88]);
    v53 = sub_228392040();
    v55 = sub_2281C96FC(v53, v54, &v58);

    *(v51 + 4) = v55;
    _os_log_impl(&dword_22816B000, v49, v50, "Incorrect view model for ScheduleDurationItem: %{public}s", v51, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v52);
    MEMORY[0x22AAB7B80](v52, -1, -1);
    MEMORY[0x22AAB7B80](v51, -1, -1);
  }

  return (*(v3 + 8))(v6, v2);
}

id ScheduleDurationCell.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

char *ScheduleDurationCell.init(frame:)(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC19HealthMedicationsUI20ScheduleDurationCell____lazy_storage___mainStackView] = 0;
  *&v4[OBJC_IVAR____TtC19HealthMedicationsUI20ScheduleDurationCell____lazy_storage___startDateStackView] = 0;
  *&v4[OBJC_IVAR____TtC19HealthMedicationsUI20ScheduleDurationCell____lazy_storage___endDateStackView] = 0;
  v9 = &v4[OBJC_IVAR____TtC19HealthMedicationsUI20ScheduleDurationCell_item];
  v10 = type metadata accessor for ScheduleDurationCell();
  *v9 = 0u;
  *(v9 + 1) = 0u;
  *(v9 + 4) = 0;
  v40.receiver = v4;
  v40.super_class = v10;
  v11 = objc_msgSendSuper2(&v40, sel_initWithFrame_, a1, a2, a3, a4);
  v12 = [v11 contentView];
  v13 = sub_228243440();
  [v12 addSubview_];

  v39 = objc_opt_self();
  sub_228180ED0();
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_228397F00;
  v15 = OBJC_IVAR____TtC19HealthMedicationsUI20ScheduleDurationCell____lazy_storage___mainStackView;
  v16 = [*&v11[OBJC_IVAR____TtC19HealthMedicationsUI20ScheduleDurationCell____lazy_storage___mainStackView] leadingAnchor];
  v17 = [v11 contentView];
  v18 = [v17 layoutMarginsGuide];

  v19 = [v18 leadingAnchor];
  v20 = [v16 constraintEqualToAnchor_];

  *(v14 + 32) = v20;
  v21 = [*&v11[v15] trailingAnchor];
  v22 = [v11 contentView];
  v23 = [v22 layoutMarginsGuide];

  v24 = [v23 trailingAnchor];
  v25 = [v21 constraintEqualToAnchor_];

  *(v14 + 40) = v25;
  v26 = [*&v11[v15] topAnchor];
  v27 = [v11 contentView];
  v28 = [v27 topAnchor];

  v29 = [v26 constraintEqualToAnchor:v28 constant:12.0];
  *(v14 + 48) = v29;
  v30 = [*&v11[v15] bottomAnchor];
  v31 = [v11 contentView];
  v32 = [v31 bottomAnchor];

  v33 = [v30 constraintEqualToAnchor:v32 constant:-12.0];
  *(v14 + 56) = v33;
  sub_22817A958(0, &qword_280DDBA90, 0x277CCAAD0);
  v34 = sub_228392190();

  [v39 activateConstraints_];

  sub_228244E94(0, &qword_27D825090, sub_2281D51F0, MEMORY[0x277D84560]);
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_228397F40;
  v36 = sub_228391640();
  v37 = MEMORY[0x277D74DB8];
  *(v35 + 32) = v36;
  *(v35 + 40) = v37;
  swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_2281D5250();
  sub_228392B50();

  swift_unknownObjectRelease();

  return v11;
}

void sub_2282444B0()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = sub_228243440();
    v3 = [v1 traitCollection];
    v4 = [v3 preferredContentSizeCategory];

    LOBYTE(v3) = sub_2283928C0();
    [v2 setAxis_];

    v5 = *&v1[OBJC_IVAR____TtC19HealthMedicationsUI20ScheduleDurationCell____lazy_storage___mainStackView];
    v6 = [v1 traitCollection];
    v7 = [v6 preferredContentSizeCategory];

    LOBYTE(v6) = sub_2283928C0();
    v8 = 8.0;
    if (v6)
    {
      v8 = 12.0;
    }

    [v5 setSpacing_];

    v9 = sub_2282435C4();
    v10 = [v1 traitCollection];
    v11 = [v10 preferredContentSizeCategory];

    LOBYTE(v10) = sub_2283928C0();
    if (v10)
    {
      v12 = 0.0;
    }

    else
    {
      v12 = 6.0;
    }

    [v9 setSpacing_];

    v13 = sub_2282435D0();
    v14 = [v1 traitCollection];
    v15 = [v14 preferredContentSizeCategory];

    LOBYTE(v14) = sub_2283928C0();
    if (v14)
    {
      v16 = 0.0;
    }

    else
    {
      v16 = 6.0;
    }

    [v13 setSpacing_];
  }
}

uint64_t sub_228244784()
{
  v1 = v0;
  sub_228244E94(0, &unk_280DDBCD0, MEMORY[0x277D74BD0], MEMORY[0x277D83D88]);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v14 - v7;
  v9 = sub_228391330();
  v10 = type metadata accessor for ScheduleDurationCell();
  v14.receiver = v1;
  v14.super_class = v10;
  objc_msgSendSuper2(&v14, sel__bridgedUpdateConfigurationUsingState_, v9);

  MEMORY[0x22AAB6410]();
  v11 = sub_2283913A0();
  if ((*(*(v11 - 8) + 48))(v8, 1, v11))
  {
    v12 = MEMORY[0x277D74BD0];
    sub_228244F00(v8, v6, &unk_280DDBCD0, MEMORY[0x277D74BD0]);
    MEMORY[0x22AAB6420](v6);
    return sub_228245A7C(v8, &unk_280DDBCD0, v12);
  }

  else
  {
    sub_22817A958(0, &qword_280DDB990, 0x277D75348);
    sub_228392BD0();
    sub_228391370();
    return MEMORY[0x22AAB6420](v8);
  }
}

id ScheduleDurationCell.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ScheduleDurationCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t _s19HealthMedicationsUI20ScheduleDurationItemV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_22838F440();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228244E94(0, &qword_280DDCDB0, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v32 - v11;
  sub_228245AEC();
  v14 = v13;
  v15 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for ScheduleDurationItem();
  v19 = *(v18 + 20);
  if ((sub_22838F3D0() & 1) == 0)
  {
    v27 = 0;
    return v27 & 1;
  }

  v33 = v8;
  v20 = v5;
  v21 = *(v18 + 24);
  v22 = *(v14 + 48);
  v23 = MEMORY[0x277CC9578];
  sub_228244F00(a1 + v21, v17, &qword_280DDCDB0, MEMORY[0x277CC9578]);
  v24 = a2 + v21;
  v25 = v20;
  sub_228244F00(v24, &v17[v22], &qword_280DDCDB0, v23);
  v26 = *(v20 + 48);
  if (v26(v17, 1, v4) != 1)
  {
    sub_228244F00(v17, v12, &qword_280DDCDB0, MEMORY[0x277CC9578]);
    if (v26(&v17[v22], 1, v4) != 1)
    {
      v28 = *(v20 + 32);
      v29 = v33;
      v28(v33, &v17[v22], v4);
      sub_228245BE0(&unk_27D827B20, 255, MEMORY[0x277CC9578]);
      v27 = sub_228391FB0();
      v30 = *(v25 + 8);
      v30(v29, v4);
      v30(v12, v4);
      sub_228245A7C(v17, &qword_280DDCDB0, MEMORY[0x277CC9578]);
      return v27 & 1;
    }

    (*(v20 + 8))(v12, v4);
    goto LABEL_8;
  }

  if (v26(&v17[v22], 1, v4) != 1)
  {
LABEL_8:
    sub_228245B80(v17, sub_228245AEC);
    v27 = 0;
    return v27 & 1;
  }

  sub_228245A7C(v17, &qword_280DDCDB0, MEMORY[0x277CC9578]);
  v27 = 1;
  return v27 & 1;
}

void sub_228244E94(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_228244F00(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_228244E94(0, a3, a4, MEMORY[0x277D83D88]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

void sub_228245040()
{
  sub_22838F4A0();
  if (v0 <= 0x3F)
  {
    sub_22838F440();
    if (v1 <= 0x3F)
    {
      sub_228244E94(319, &qword_280DDCDB0, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_2282451C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ScheduleDurationItem();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

id sub_22824522C(uint64_t a1, uint64_t a2)
{
  v4 = MEMORY[0x277CC9788];
  sub_228244E94(0, &unk_27D825D00, MEMORY[0x277CC9788], MEMORY[0x277D83D88]);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v10 = [objc_opt_self() preferredFontForTextStyle_];
  [v9 setFont_];

  v11 = [objc_opt_self() secondaryLabelColor];
  [v9 setTextColor_];

  [v9 setNumberOfLines_];
  [v9 setAdjustsFontForContentSizeCategory_];
  [v9 setTranslatesAutoresizingMaskIntoConstraints_];
  v15[0] = a1;
  v15[1] = a2;
  sub_22838F500();
  v12 = sub_22838F580();
  (*(*(v12 - 8) + 56))(v8, 0, 1, v12);
  sub_22819DFF4();
  sub_228392F40();
  sub_228245A7C(v8, &unk_27D825D00, v4);
  v13 = sub_228391FC0();

  [v9 setText_];

  return v9;
}

id sub_228245478(uint64_t a1)
{
  v30 = a1;
  v1 = sub_22838F6C0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x277CC9578];
  sub_228244E94(0, &qword_280DDCDB0, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v29 - v9;
  v11 = sub_22838F440();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v17 = [objc_opt_self() preferredFontForTextStyle_];
  [v16 setFont_];

  [v16 setAdjustsFontForContentSizeCategory_];
  [v16 setLineBreakMode_];
  [v16 setTranslatesAutoresizingMaskIntoConstraints_];
  [v16 setNumberOfLines_];
  v18 = v6;
  v19 = v12;
  sub_228244F00(v30, v10, &qword_280DDCDB0, v18);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_228245A7C(v10, &qword_280DDCDB0, MEMORY[0x277CC9578]);
    if (qword_280DDCF18 != -1)
    {
      swift_once();
    }

    sub_22838F0C0();
    v20 = sub_228391FC0();

    [v16 setText_];

    v21 = [objc_opt_self() secondaryLabelColor];
    [v16 setTextColor_];
  }

  else
  {
    (*(v12 + 32))(v15, v10, v11);
    sub_22838F680();
    v22 = sub_22838F5A0();
    (*(v2 + 8))(v5, v1);
    if (v22)
    {
      sub_2281AEAE8(0, &qword_280DDB870, &qword_280DDB830, MEMORY[0x277D84D98], MEMORY[0x277D84560]);
      v23 = swift_allocObject();
      *(v23 + 16) = xmmword_228397F40;
      v24 = Date.formattedWithYearIfDifferent()();
      *(v23 + 56) = MEMORY[0x277D837D0];
      *(v23 + 64) = sub_22818E210();
      *(v23 + 32) = v24;
      if (qword_280DDCF18 != -1)
      {
        swift_once();
      }

      v25 = qword_280DDCF20;

      sub_22838F0C0();
      if (*(v23 + 16))
      {
        sub_228391FD0();
      }

      else
      {
      }
    }

    else
    {
      Date.formattedWithYearIfDifferent()();
    }

    v26 = sub_228391FC0();

    [v16 setText_];

    v27 = [objc_opt_self() labelColor];
    [v16 setTextColor_];

    (*(v19 + 8))(v15, v11);
  }

  return v16;
}

uint64_t sub_228245A7C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_228244E94(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_228245AEC()
{
  if (!qword_27D825D10)
  {
    sub_228244E94(255, &qword_280DDCDB0, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27D825D10);
    }
  }
}

uint64_t sub_228245B80(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_228245BE0(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t InteractionNotCheckedItem.reuseIdentifier.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

uint64_t sub_228245C60()
{
  v2 = *(v0 + 24);
  v1 = *(v0 + 32);
  v3 = [*(v0 + 16) semanticIdentifier];
  v4 = [v3 description];
  v5 = sub_228392000();
  v7 = v6;

  MEMORY[0x22AAB5C80](v5, v7);

  return v2;
}

void *InteractionNotCheckedItem.__allocating_init(medication:)(uint64_t a1)
{
  v2 = swift_allocObject();
  type metadata accessor for InteractionNotCheckedCell();
  sub_2282460D0(&qword_27D825D18, 255, type metadata accessor for InteractionNotCheckedCell);
  v2[3] = sub_22838FBB0();
  v2[4] = v3;
  v2[2] = a1;
  return v2;
}

void *InteractionNotCheckedItem.init(medication:)(uint64_t a1)
{
  type metadata accessor for InteractionNotCheckedCell();
  sub_2282460D0(&qword_27D825D18, 255, type metadata accessor for InteractionNotCheckedCell);
  v1[3] = sub_22838FBB0();
  v1[4] = v3;
  v1[2] = a1;
  return v1;
}

uint64_t static InteractionNotCheckedItem.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  sub_2281A2270();
  v4 = *(a1 + 16);
  v5 = *(a2 + 16);
  return sub_228392C60() & 1;
}

uint64_t sub_228245E6C()
{
  v1 = v0[3];
  v2 = v0[4];
  sub_2283920B0();
  v3 = v0[2];
  return sub_228392C70();
}

uint64_t InteractionNotCheckedItem.deinit()
{
  v1 = *(v0 + 32);

  return v0;
}

uint64_t InteractionNotCheckedItem.__deallocating_deinit()
{
  v1 = *(v0 + 32);

  return swift_deallocClassInstance();
}

uint64_t sub_228245F08()
{
  sub_228393520();
  v1 = v0[3];
  v2 = v0[4];
  sub_2283920B0();
  v3 = v0[2];
  sub_228392C70();
  return sub_228393570();
}

uint64_t sub_228245F58(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  sub_2281A2270();
  v4 = *(v2 + 16);
  v5 = *(v3 + 16);
  return sub_228392C60() & 1;
}

uint64_t sub_228245FE4()
{
  v1 = *v0;
  v2 = v1[3];
  v3 = v1[4];
  sub_2283920B0();
  v4 = v1[2];
  return sub_228392C70();
}

uint64_t sub_2282460D0(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_228246118()
{
  sub_228393520();
  v1 = *v0;
  v2 = *(*v0 + 24);
  v3 = *(*v0 + 32);
  sub_2283920B0();
  v4 = *(v1 + 16);
  sub_228392C70();

  return sub_228393570();
}

uint64_t sub_228246174()
{
  v2 = *(*v0 + 24);
  v1 = *(*v0 + 32);
  v3 = [*(*v0 + 16) semanticIdentifier];
  v4 = [v3 description];
  v5 = sub_228392000();
  v7 = v6;

  MEMORY[0x22AAB5C80](v5, v7);

  return v2;
}

uint64_t sub_228246220(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x282169440](a1, WitnessTable);
}

uint64_t sub_22824631C(uint64_t a1, uint64_t *a2)
{
  sub_22817E6C8(a1, v6);
  v3 = *a2;
  v4 = OBJC_IVAR____TtC19HealthMedicationsUI27InteractionResultDetailCell_item;
  swift_beginAccess();
  sub_228181014(v6, v3 + v4, &qword_280DDCD50, &qword_280DDCD60);
  swift_endAccess();
  sub_2282470C8();
  return sub_228181138(v6, &qword_280DDCD50, &qword_280DDCD60);
}

uint64_t sub_2282463CC@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC19HealthMedicationsUI27InteractionResultDetailCell_item;
  swift_beginAccess();
  return sub_22817E6C8(v1 + v3, a1);
}

uint64_t sub_228246424(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC19HealthMedicationsUI27InteractionResultDetailCell_item;
  swift_beginAccess();
  sub_228181014(a1, v1 + v3, &qword_280DDCD50, &qword_280DDCD60);
  swift_endAccess();
  sub_2282470C8();
  return sub_228181138(a1, &qword_280DDCD50, &qword_280DDCD60);
}

uint64_t (*sub_2282464C8(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_22824652C;
}

uint64_t sub_22824652C(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v5 = *(a1 + 24);
    return sub_2282470C8();
  }

  return result;
}

id sub_228246638(void *a1)
{
  v3 = &v1[OBJC_IVAR____TtC19HealthMedicationsUI27InteractionResultDetailCell_item];
  *v3 = 0u;
  *(v3 + 1) = 0u;
  *(v3 + 4) = 0;
  *&v1[OBJC_IVAR____TtC19HealthMedicationsUI27InteractionResultDetailCell____lazy_storage___firstFactorView] = 0;
  *&v1[OBJC_IVAR____TtC19HealthMedicationsUI27InteractionResultDetailCell____lazy_storage___separatorView] = 0;
  *&v1[OBJC_IVAR____TtC19HealthMedicationsUI27InteractionResultDetailCell____lazy_storage___secondFactorView] = 0;
  v6.receiver = v1;
  v6.super_class = type metadata accessor for InteractionResultDetailCell();
  v4 = objc_msgSendSuper2(&v6, sel_initWithCoder_, a1);

  if (v4)
  {
  }

  return v4;
}

id sub_228246750()
{
  v1 = OBJC_IVAR____TtC19HealthMedicationsUI27InteractionResultDetailCell____lazy_storage___separatorView;
  v2 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI27InteractionResultDetailCell____lazy_storage___separatorView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI27InteractionResultDetailCell____lazy_storage___separatorView);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x277D12A48]) init];
    HKUIOnePixel();
    [v4 setSeparatorThickness_];
    v5 = [objc_opt_self() separatorColor];
    [v4 setColor_];

    [v4 setTranslatesAutoresizingMaskIntoConstraints_];
    v6 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

id sub_228246838(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(v1 + *a1);
  if (v3)
  {
    v4 = *(v1 + *a1);
  }

  else
  {
    v5 = [objc_allocWithZone(type metadata accessor for InteractionDetailFactorView()) init];
    [v5 setTranslatesAutoresizingMaskIntoConstraints_];
    v6 = *(v1 + v2);
    *(v1 + v2) = v5;
    v4 = v5;

    v3 = 0;
  }

  v7 = v3;
  return v4;
}

uint64_t sub_2282468BC()
{
  sub_228180ED0();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_228399D40;
  *(inited + 32) = sub_228246744();
  *(inited + 40) = sub_228246750();
  *(inited + 48) = sub_22824682C();
  v2 = inited & 0xC000000000000001;
  if ((inited & 0xC000000000000001) != 0)
  {
    goto LABEL_12;
  }

  if (!*((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_11;
  }

  for (i = *(inited + 32); ; i = MEMORY[0x22AAB6D80](0, inited))
  {
    v4 = i;
    v5 = [v0 contentView];
    [v5 addSubview_];

    if (v2)
    {
      v6 = MEMORY[0x22AAB6D80](1, inited);
    }

    else
    {
      if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
      {
        goto LABEL_11;
      }

      v6 = *(inited + 40);
    }

    v7 = v6;
    v8 = [v0 contentView];
    [v8 addSubview_];

    if (v2)
    {
      break;
    }

    if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) >= 3uLL)
    {
      v9 = *(inited + 48);
      goto LABEL_10;
    }

LABEL_11:
    __break(1u);
LABEL_12:
    ;
  }

  v9 = MEMORY[0x22AAB6D80](2, inited);
LABEL_10:
  v10 = v9;
  v11 = [v0 contentView];
  [v11 addSubview_];

  swift_setDeallocating();
  v12 = *(inited + 16);
  return swift_arrayDestroy();
}

void sub_228246A74()
{
  v52 = objc_opt_self();
  sub_228180ED0();
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_228399D50;
  v2 = sub_228246744();
  v3 = [v2 topAnchor];

  v4 = [v0 contentView];
  v5 = [v4 topAnchor];

  v6 = [v3 constraintEqualToAnchor:v5 constant:16.0];
  *(v1 + 32) = v6;
  v7 = OBJC_IVAR____TtC19HealthMedicationsUI27InteractionResultDetailCell____lazy_storage___firstFactorView;
  v53 = OBJC_IVAR____TtC19HealthMedicationsUI27InteractionResultDetailCell____lazy_storage___firstFactorView;
  v8 = [*(v0 + OBJC_IVAR____TtC19HealthMedicationsUI27InteractionResultDetailCell____lazy_storage___firstFactorView) leadingAnchor];
  v9 = [v0 &selRef_didTapDay_];
  v10 = [v9 layoutMarginsGuide];

  v11 = [v10 &selRef_logTimeChanged_ + 1];
  v12 = [v8 constraintEqualToAnchor_];

  *(v1 + 40) = v12;
  v13 = [*(v0 + v7) trailingAnchor];
  v14 = [v0 &selRef_didTapDay_];
  v15 = [v14 layoutMarginsGuide];

  v16 = [v15 trailingAnchor];
  v17 = [v13 constraintEqualToAnchor_];

  *(v1 + 48) = v17;
  v18 = sub_228246750();
  v19 = [v18 leadingAnchor];

  v20 = [v0 &selRef_didTapDay_];
  v21 = [v20 layoutMarginsGuide];

  v22 = [v21 leadingAnchor];
  v23 = [v19 constraintEqualToAnchor_];

  *(v1 + 56) = v23;
  v24 = OBJC_IVAR____TtC19HealthMedicationsUI27InteractionResultDetailCell____lazy_storage___separatorView;
  v25 = [*(v0 + OBJC_IVAR____TtC19HealthMedicationsUI27InteractionResultDetailCell____lazy_storage___separatorView) trailingAnchor];
  v26 = [v0 &selRef_didTapDay_];
  v27 = [v26 layoutMarginsGuide];

  v28 = [v27 trailingAnchor];
  v29 = [v25 constraintEqualToAnchor_];

  *(v1 + 64) = v29;
  v30 = [*(v0 + v24) topAnchor];
  v31 = [*&v53[v0] bottomAnchor];
  v32 = [v30 constraintEqualToAnchor:v31 constant:20.0];

  *(v1 + 72) = v32;
  v33 = sub_22824682C();
  v34 = [v33 leadingAnchor];

  v35 = [v0 contentView];
  v36 = [v35 &selRef_addSubview_ + 1];

  v37 = [v36 leadingAnchor];
  v38 = [v34 constraintEqualToAnchor_];

  *(v1 + 80) = v38;
  v39 = OBJC_IVAR____TtC19HealthMedicationsUI27InteractionResultDetailCell____lazy_storage___secondFactorView;
  v40 = [*(v0 + OBJC_IVAR____TtC19HealthMedicationsUI27InteractionResultDetailCell____lazy_storage___secondFactorView) trailingAnchor];
  v41 = [v0 contentView];
  v42 = [v41 layoutMarginsGuide];

  v43 = [v42 trailingAnchor];
  v44 = [v40 constraintEqualToAnchor_];

  *(v1 + 88) = v44;
  v45 = [*(v0 + v39) topAnchor];
  v46 = [*(v0 + v24) bottomAnchor];
  v47 = [v45 constraintEqualToAnchor:v46 constant:17.0];

  *(v1 + 96) = v47;
  v48 = [*(v0 + v39) bottomAnchor];
  v49 = [v0 contentView];
  v50 = [v49 bottomAnchor];

  v51 = [v48 constraintEqualToAnchor:v50 constant:-16.0];
  *(v1 + 104) = v51;
  sub_2281BF1B8();
  v54 = sub_228392190();

  [v52 activateConstraints_];
}

uint64_t sub_2282470C8()
{
  v1 = v0;
  v2 = sub_2283911B0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR____TtC19HealthMedicationsUI27InteractionResultDetailCell_item;
  swift_beginAccess();
  sub_22817E6C8(&v1[v7], v45);
  if (v45[3])
  {
    sub_2281810DC(0, &qword_280DDCD60);
    sub_22819F29C();
    if (swift_dynamicCast())
    {
      v8 = v44;
      v9 = sub_228246744();
      v10 = (v8 + *(*v8 + 120));
      v11 = v10[3];
      v12 = v10[4];
      __swift_project_boxed_opaque_existential_0(v10, v11);
      v13 = (*(v12 + 40))(v11, v12);
      v14 = OBJC_IVAR____TtC19HealthMedicationsUI27InteractionDetailFactorView_ingredients;
      swift_beginAccess();
      v15 = *&v9[v14];
      *&v9[v14] = v13;

      v16 = *&v1[OBJC_IVAR____TtC19HealthMedicationsUI27InteractionResultDetailCell____lazy_storage___firstFactorView];
      v17 = v10[3];
      v18 = v10[4];
      __swift_project_boxed_opaque_existential_0(v10, v17);
      v19 = *(v18 + 32);
      v20 = v16;
      v19(v45, v17, v18);
      v21 = OBJC_IVAR____TtC19HealthMedicationsUI27InteractionDetailFactorView_viewModelFactor;
      swift_beginAccess();
      sub_228181014(v45, v20 + v21, &qword_27D824698, &qword_27D8246A0);
      swift_endAccess();
      sub_2281C1E30();

      sub_228181138(v45, &qword_27D824698, &qword_27D8246A0);
      v22 = sub_22824682C();
      v23 = v10[3];
      v24 = v10[4];
      __swift_project_boxed_opaque_existential_0(v10, v23);
      v25 = (*(v24 + 64))(v23, v24);
      v26 = OBJC_IVAR____TtC19HealthMedicationsUI27InteractionDetailFactorView_ingredients;
      swift_beginAccess();
      v27 = *&v22[v26];
      *&v22[v26] = v25;

      v28 = *&v1[OBJC_IVAR____TtC19HealthMedicationsUI27InteractionResultDetailCell____lazy_storage___secondFactorView];
      v29 = v10[3];
      v30 = v10[4];
      __swift_project_boxed_opaque_existential_0(v10, v29);
      v31 = *(v30 + 56);
      v32 = v28;
      v31(v45, v29, v30);
      v33 = OBJC_IVAR____TtC19HealthMedicationsUI27InteractionDetailFactorView_viewModelFactor;
      swift_beginAccess();
      sub_228181014(v45, v32 + v33, &qword_27D824698, &qword_27D8246A0);
      swift_endAccess();
      sub_2281C1E30();

      return sub_228181138(v45, &qword_27D824698, &qword_27D8246A0);
    }
  }

  else
  {
    sub_228181138(v45, &qword_280DDCD50, &qword_280DDCD60);
  }

  sub_228391150();
  v35 = v1;
  v36 = sub_2283911A0();
  v37 = sub_2283925C0();

  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v44 = v39;
    *v38 = 136446210;
    sub_22817E6C8(&v1[v7], v45);
    sub_228181084(0, &qword_280DDCD50, &qword_280DDCD60);
    v40 = sub_228392040();
    v42 = sub_2281C96FC(v40, v41, &v44);

    *(v38 + 4) = v42;
    _os_log_impl(&dword_22816B000, v36, v37, "Incorrect view model for InteractionResultDetailCell: %{public}s", v38, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v39);
    MEMORY[0x22AAB7B80](v39, -1, -1);
    MEMORY[0x22AAB7B80](v38, -1, -1);
  }

  return (*(v3 + 8))(v6, v2);
}

id sub_2282475E8(SEL *a1)
{
  v4.receiver = v1;
  v4.super_class = type metadata accessor for InteractionResultDetailCell();
  return objc_msgSendSuper2(&v4, *a1);
}

Swift::Void __swiftcall OntologyInfoInternalViewController.viewDidLoad()()
{
  v1.receiver = v0;
  v1.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v1, sel_viewDidLoad);
  sub_2282477F4();
}

void sub_2282477F4()
{
  v1 = v0;
  v2 = sub_228391FC0();
  [v1 setTitle_];

  v3 = [v1 tableView];
  if (!v3)
  {
    __break(1u);
    goto LABEL_9;
  }

  v4 = v3;
  [v3 setAllowsSelection_];

  v5 = [v1 tableView];
  if (!v5)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v6 = v5;
  sub_22838FA60();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  sub_22838FA50();
  v8 = sub_228391FC0();

  [v6 registerClass:ObjCClassFromMetadata forCellReuseIdentifier:v8];

  v9 = [v1 tableView];
  if (!v9)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v10 = v9;
  sub_22838FA10();
  v11 = swift_getObjCClassFromMetadata();
  sub_22838F9F0();
  v12 = sub_228391FC0();

  [v10 registerClass:v11 forCellReuseIdentifier:v12];

  v13 = [v1 tableView];
  if (!v13)
  {
LABEL_11:
    __break(1u);
    return;
  }

  v14 = v13;
  [v13 reloadData];
}

Swift::Int __swiftcall OntologyInfoInternalViewController.tableView(_:numberOfRowsInSection:)(UITableView *_, Swift::Int numberOfRowsInSection)
{
  v3 = *(*(v2 + OBJC_IVAR____TtC19HealthMedicationsUI34OntologyInfoInternalViewController_conceptsDataSource) + 88);
  if (!(v3 >> 62))
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v5 = __OFADD__(v4, 2);
    result = v4 + 2;
    if (!v5)
    {
      return result;
    }

LABEL_8:
    __break(1u);
    return result;
  }

  if (v3 < 0)
  {
    v7 = *(*(v2 + OBJC_IVAR____TtC19HealthMedicationsUI34OntologyInfoInternalViewController_conceptsDataSource) + 88);
  }

  v8 = sub_2283930D0();
  v5 = __OFADD__(v8, 2);
  result = v8 + 2;
  if (v5)
  {
    goto LABEL_8;
  }

  return result;
}

uint64_t OntologyInfoInternalViewController.tableView(_:cellForRowAt:)(void *a1, uint64_t a2)
{
  v3 = v2;
  sub_22838FA10();
  sub_22838F9F0();
  v6 = sub_228391FC0();

  v7 = sub_22838F710();
  v8 = [a1 dequeueReusableCellWithIdentifier:v6 forIndexPath:v7];

  v9 = swift_dynamicCastClassUnconditional();
  if (!sub_22838F740())
  {
    v16 = sub_22838F9E0();
    v17 = sub_228391FC0();
    [v16 setText_];

    v12 = sub_22838FA00();
    v18 = *(v3 + OBJC_IVAR____TtC19HealthMedicationsUI34OntologyInfoInternalViewController_conceptsDataSource);
    v19 = *(v18 + 32);
    v20 = *(v18 + 40);
    goto LABEL_5;
  }

  if (sub_22838F740() == 1)
  {
    v10 = sub_22838F9E0();
    v11 = sub_228391FC0();
    [v10 setText_];

    v12 = sub_22838FA00();
    v13 = *(v3 + OBJC_IVAR____TtC19HealthMedicationsUI34OntologyInfoInternalViewController_conceptsDataSource);
    v14 = *(v13 + 16);
    v15 = *(v13 + 24);
LABEL_5:

    v21 = sub_228391FC0();

    [v12 setText_];

    goto LABEL_6;
  }

  v23 = *(v3 + OBJC_IVAR____TtC19HealthMedicationsUI34OntologyInfoInternalViewController_conceptsDataSource);

  v24 = a2;
  v25 = sub_22838F740();
  v26 = v25 - 2;
  if (__OFSUB__(v25, 2))
  {
    __break(1u);
    goto LABEL_17;
  }

  v24 = *(v23 + 88);

  if ((v24 & 0xC000000000000001) != 0)
  {
LABEL_17:
    v27 = MEMORY[0x22AAB6D80](v26, v24);
    goto LABEL_13;
  }

  if ((v26 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v26 < *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v27 = *(v24 + 8 * v26 + 32);
LABEL_13:
    v28 = v27;

    v43 = v28;
    sub_228183178();
    sub_228247F14();
    v21 = v28;
    if (swift_dynamicCast())
    {
      sub_22816DFFC(v41, v44);
      v29 = sub_22838F9E0();
      v30 = v45;
      v31 = v46;
      __swift_project_boxed_opaque_existential_0(v44, v45);
      (*(v31 + 8))(v30, v31);
      v32 = sub_228391FC0();

      [v29 setText_];

      v33 = sub_22838FA00();
      v34 = v45;
      v35 = v46;
      __swift_project_boxed_opaque_existential_0(v44, v45);
      (*(v35 + 16))(v34, v35);
      v36 = sub_228391FC0();

      [v33 setText_];

      __swift_destroy_boxed_opaque_existential_0(v44);
      return v9;
    }

    v42 = 0;
    memset(v41, 0, sizeof(v41));
    sub_228247F78(v41);
    v37 = sub_22838F9E0();
    v38 = sub_228391FC0();
    [v37 setText_];

    v39 = sub_22838FA00();
    v40 = sub_228391FC0();
    [v39 setText_];

LABEL_6:
    return v9;
  }

  __break(1u);
  return result;
}

unint64_t sub_228247F14()
{
  result = qword_27D825D58;
  if (!qword_27D825D58)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_27D825D58);
  }

  return result;
}

uint64_t sub_228247F78(uint64_t a1)
{
  sub_228247FD4();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_228247FD4()
{
  if (!qword_27D825D60)
  {
    sub_228247F14();
    v0 = sub_228392F00();
    if (!v1)
    {
      atomic_store(v0, &qword_27D825D60);
    }
  }
}

id OntologyInfoInternalViewController.__allocating_init(usingInsetStyling:)(char a1)
{
  v3 = objc_allocWithZone(v1);

  return [v3 initWithUsingInsetStyling_];
}

id OntologyInfoInternalViewController.__allocating_init(style:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);

  return [v3 initWithStyle_];
}

id OntologyInfoInternalViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
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

id OntologyInfoInternalViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_2282483E8(void *a1)
{
  v3 = objc_opt_self();
  sub_228180ED0();
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_228397F00;
  v5 = [v1 leadingAnchor];
  v6 = [a1 leadingAnchor];
  v7 = [v5 constraintEqualToAnchor_];

  *(v4 + 32) = v7;
  v8 = [v1 topAnchor];
  v9 = [a1 topAnchor];
  v10 = [v8 constraintEqualToAnchor_];

  *(v4 + 40) = v10;
  v11 = [a1 trailingAnchor];
  v12 = [v1 trailingAnchor];
  v13 = [v11 constraintEqualToAnchor_];

  *(v4 + 48) = v13;
  v14 = [a1 bottomAnchor];
  v15 = [v1 bottomAnchor];
  v16 = [v14 constraintEqualToAnchor_];

  *(v4 + 56) = v16;
  sub_2281BF1B8();
  v17 = sub_228392190();

  [v3 activateConstraints_];

  return [v1 setTranslatesAutoresizingMaskIntoConstraints_];
}

uint64_t HKDrugInteractionLifestyleFactor.image.getter(uint64_t a1)
{
  if (a1 > 1)
  {
    if (a1 != 2 && a1 != 3)
    {
      goto LABEL_12;
    }
  }

  else if (a1 && a1 != 1)
  {
    goto LABEL_12;
  }

  type metadata accessor for DrugInteractionVisualizationView();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = [objc_opt_self() bundleForClass_];
  v3 = sub_228391FC0();

  v4 = [objc_opt_self() imageNamed:v3 inBundle:v2];

  if (v4)
  {

    return v4;
  }

  __break(1u);
LABEL_12:
  sub_2283931D0();

  v6 = sub_228393420();
  MEMORY[0x22AAB5C80](v6);

  result = sub_228393300();
  __break(1u);
  return result;
}

uint64_t HKDrugInteractionLifestyleFactor.Variant.hashValue.getter()
{
  v1 = *v0;
  sub_228393520();
  MEMORY[0x22AAB70D0](v1);
  return sub_228393570();
}

uint64_t HKDrugInteractionLifestyleFactor.localizedString(variant:)(unsigned __int8 *a1, uint64_t a2)
{
  v2 = a2;
  v3 = *a1;
  if (a2 > 1)
  {
    if (a2 == 3)
    {
      v4 = 0xE700000000000000;
      v5 = 0x4F434341424F54;
LABEL_10:
      sub_2283931D0();

      MEMORY[0x22AAB5C80](v5, v4);

      MEMORY[0x22AAB5C80](95, 0xE100000000000000);
      if (v3)
      {
        v6 = 0x4445444445424D45;
      }

      else
      {
        v6 = 0x4F4C41444E415453;
      }

      if (v3)
      {
        v7 = 0xE800000000000000;
      }

      else
      {
        v7 = 0xEA0000000000454ELL;
      }

      MEMORY[0x22AAB5C80](v6, v7);

      if (qword_280DDCF18 != -1)
      {
        swift_once();
      }

      v2 = sub_22838F0C0();

      return v2;
    }

    if (a2 == 2)
    {
      v4 = 0xE900000000000041;
      v5 = 0x4E41554A4952414DLL;
      goto LABEL_10;
    }
  }

  else
  {
    if (!a2)
    {
      return v2;
    }

    if (a2 == 1)
    {
      v4 = 0xE700000000000000;
      v5 = 0x4C4F484F434C41;
      goto LABEL_10;
    }
  }

  result = sub_228393300();
  __break(1u);
  return result;
}

unint64_t sub_228248AF0()
{
  result = qword_27D825D68;
  if (!qword_27D825D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D825D68);
  }

  return result;
}

uint64_t sub_228248B5C()
{
  v1 = qword_27D825D70;
  if (*(v0 + qword_27D825D70))
  {
    v2 = *(v0 + qword_27D825D70);
  }

  else
  {
    v3 = v0;
    sub_228390890();
    sub_228390880();
    sub_228390830();

    sub_22817A958(0, &qword_280DDBAF0, 0x277CBEBD0);
    sub_2283925F0();
    v4 = sub_2283907E0();
    v5 = *(v4 + 48);
    v6 = *(v4 + 52);
    swift_allocObject();
    v2 = sub_228390700();
    v7 = *(v3 + v1);
    *(v3 + v1) = v2;
  }

  return v2;
}

void *sub_228248C30()
{
  v1 = qword_27D825D78;
  if (*(v0 + qword_27D825D78))
  {
    v2 = *(v0 + qword_27D825D78);
  }

  else
  {
    v3 = *(v0 + qword_27D825D98);
    v4 = v0;
    v5 = sub_228248B5C();
    type metadata accessor for MedicationsInteractionEngine();
    swift_allocObject();
    v2 = sub_228191FE8(v3, v5);

    v6 = *(v0 + v1);
    *(v4 + v1) = v2;
  }

  return v2;
}

uint64_t MedicationInformationDataSource.__allocating_init(displayContext:listManager:healthStore:analyticsManager:)(void **a1, uint64_t a2, void *a3, uint64_t a4)
{
  v9 = *(v4 + 48);
  v10 = *(v4 + 52);
  v11 = swift_allocObject();
  v12 = *a1;
  *(v11 + qword_27D825D70) = 0;
  *(v11 + qword_27D825D78) = 0;
  *(v11 + qword_27D825D80) = MEMORY[0x277D84FA0];
  *(v11 + qword_27D825D88) = v12;
  *(v11 + qword_27D825D90) = a2;
  *(v11 + qword_27D825D98) = a3;
  *(v11 + qword_27D825DA0) = a4;
  v13 = v12;

  v14 = a3;

  v15 = sub_22838F920();

  if (v12)
  {
    v16 = [v13 firstOntologyCoding];

    if (!v16)
    {

      goto LABEL_6;
    }
  }

  sub_2282495C0();

LABEL_6:

  return v15;
}

uint64_t MedicationInformationDataSource.init(displayContext:listManager:healthStore:analyticsManager:)(void **a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = *a1;
  *(v4 + qword_27D825D70) = 0;
  *(v4 + qword_27D825D78) = 0;
  *(v4 + qword_27D825D80) = MEMORY[0x277D84FA0];
  *(v4 + qword_27D825D88) = v6;
  *(v4 + qword_27D825D90) = a2;
  *(v4 + qword_27D825D98) = a3;
  *(v4 + qword_27D825DA0) = a4;
  v7 = v6;

  v8 = a3;

  v9 = sub_22838F920();

  if (v6)
  {
    v10 = [v7 firstOntologyCoding];

    if (!v10)
    {

      goto LABEL_6;
    }
  }

  sub_2282495C0();

LABEL_6:

  return v9;
}

uint64_t sub_228248F84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = swift_allocObject();
  v8[2] = a1;
  v8[3] = a2;
  v8[4] = a3;
  v9 = MEMORY[0x277CBCEA8];
  sub_22824F270(0, &qword_27D825E78, MEMORY[0x277CBCEA8]);
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_allocObject();

  sub_2283918F0();
  sub_22824F320(&qword_27D825E80, &qword_27D825E78, v9);
  v13 = sub_228391990();

  *a4 = v13;
  return result;
}

void sub_2282490C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  sub_228248C30();
  v8 = sub_228191178();

  sub_2282B96E4(v9);

  sub_22817A958(0, &qword_280DDB9E0, 0x277D115B8);
  sub_22818C470(&qword_280DDB9D8, &qword_280DDB9E0, 0x277D115B8);
  v10 = sub_228392470();

  if (a5)
  {
    sub_22817A958(0, &qword_280DDB960, 0x277CCABB0);
    sub_22818C470(&qword_280DDB958, &qword_280DDB960, 0x277CCABB0);
    a5 = sub_228392470();
  }

  v11 = swift_allocObject();
  swift_weakInit();
  v12 = swift_allocObject();
  v12[2] = v11;
  v12[3] = a1;
  v12[4] = a2;
  v14[4] = sub_22824F40C;
  v14[5] = v12;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 1107296256;
  v14[2] = sub_228276010;
  v14[3] = &block_descriptor_11;
  v13 = _Block_copy(v14);

  [v8 interactionResultsForMedications:v10 lifestyleFactors:a5 completion:v13];
  _Block_release(v13);
}

void sub_228249300(uint64_t a1, void *a2, uint64_t a3, void (*a4)(id *))
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    if (a2)
    {
      v23 = a2;
      v9 = a2;
      sub_22818217C(0, &qword_280DDB860);
      sub_22817A958(0, &qword_27D825E88, 0x277CCA9B8);
      if (swift_dynamicCast())
      {
        if ([v22 code] == 1003)
        {
          v10 = [objc_opt_self() sharedBehavior];
          if (v10)
          {
            v11 = v10;
            v12 = [v10 isAppleInternalInstall];

            if (!v12)
            {
              v24 = v22;
              v25 = 1;
              v21 = v22;
              a4(&v24);

              sub_22824F430(v24, v25);

              return;
            }

            v13 = 1;
            goto LABEL_17;
          }

LABEL_26:
          __break(1u);
          return;
        }
      }

      v24 = a2;
      v25 = 1;
      v20 = a2;
      goto LABEL_20;
    }

    sub_228248B5C();
    v14 = sub_228390730();

    if (v14)
    {
      v15 = [objc_opt_self() sharedBehavior];
      if (!v15)
      {
        __break(1u);
        goto LABEL_26;
      }

      v16 = v15;
      v17 = [v15 isAppleInternalInstall];

      if (!a1)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v17 = 0;
      if (!a1)
      {
LABEL_11:
        v13 = MEMORY[0x277D84F90];
        goto LABEL_14;
      }
    }

    v18 = *(v8 + qword_27D825D88);
    v19 = v18;
    v13 = Set<>.severities(filtering:includeMinorInteractions:)(v18, v17);

LABEL_14:
    if (v13 >> 62)
    {
      if (sub_2283930D0())
      {
        goto LABEL_17;
      }
    }

    else if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_17:
      v24 = v13;
      v25 = 0;
LABEL_20:
      a4(&v24);

      sub_22824F430(v24, v25);
      return;
    }

    v13 = 0;
    goto LABEL_17;
  }
}

uint64_t sub_2282495C0()
{
  v1 = v0;
  sub_22824E864(0, &qword_280DDBAD0, MEMORY[0x277D85248], MEMORY[0x277D83D88]);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v83 = &v61 - v4;
  v75 = sub_228392770();
  v73 = *(v75 - 8);
  v5 = *(v73 + 64);
  MEMORY[0x28223BE20](v75);
  v66 = &v61 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22824F0F0(0, &unk_280DDBBE0, MEMORY[0x277D839B0], MEMORY[0x277CBCEC0]);
  v63 = v7;
  v64 = *(v7 - 1);
  v8 = *(v64 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v61 - v9;
  sub_22824E8E4();
  v61 = v11;
  v62 = *(v11 - 8);
  v12 = *(v62 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v61 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22824E9B0();
  v16 = *(v15 - 8);
  v67 = v15;
  v68 = v16;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v61 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22824EBE0();
  v72 = v20;
  v74 = *(v20 - 8);
  v21 = *(v74 + 64);
  MEMORY[0x28223BE20](v20);
  v65 = &v61 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22824ECE0();
  v24 = *(v23 - 8);
  v76 = v23;
  v77 = v24;
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v23);
  v69 = &v61 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22824EF10();
  v28 = *(v27 - 8);
  v78 = v27;
  v79 = v28;
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v27);
  v70 = &v61 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22824EFA4();
  v32 = *(v31 - 8);
  v80 = v31;
  v81 = v32;
  v33 = *(v32 + 64);
  MEMORY[0x28223BE20](v31);
  v71 = &v61 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = *(v0 + qword_27D825D90);
  v84 = sub_2283906C0();
  v36 = MEMORY[0x277D77BE8];
  sub_22824EB00(0, &qword_27D824108, MEMORY[0x277D77BE8]);
  sub_2281A1218();
  sub_22824EEBC(&qword_27D827D00, &qword_27D824108, v36, sub_22824EB00);
  sub_2283919A0();

  v82 = v1;
  v37 = sub_228248C30()[5];

  v85 = v37;
  v38 = *(v1 + qword_27D825D78);

  sub_2281911EC();

  swift_beginAccess();
  sub_22824F0F0(0, &qword_280DDBBD0, MEMORY[0x277D839B0], MEMORY[0x277CBCED0]);
  sub_228391930();
  swift_endAccess();

  sub_22824EB00(0, &qword_27D825DC8, sub_2281930F4);
  sub_22824F370(&qword_27D825DD0, sub_22824E8E4);
  sub_22824EEBC(&qword_27D825DD8, &qword_27D825DC8, sub_2281930F4, sub_22824EB00);
  sub_22824EB64();
  v39 = v61;
  v40 = v63;
  sub_2283919C0();
  (*(v64 + 8))(v10, v40);

  (*(v62 + 8))(v14, v39);
  v41 = v66;
  sub_228392750();
  sub_22817A958(0, &qword_280DDCEE0, 0x277D85C78);
  v42 = sub_228392790();
  v84 = v42;
  v43 = sub_228392730();
  v44 = *(v43 - 8);
  v63 = *(v44 + 56);
  v64 = v44 + 56;
  v45 = v83;
  v63(v83, 1, 1, v43);
  sub_22824F370(&qword_27D825DE8, sub_22824E9B0);
  v62 = sub_22818C470(&qword_280DDBAC0, &qword_280DDCEE0, 0x277D85C78);
  v46 = v65;
  v47 = v67;
  sub_228391A80();
  sub_2281A16F0(v45);

  (*(v73 + 8))(v41, v75);
  (*(v68 + 8))(v19, v47);
  v48 = swift_allocObject();
  swift_weakInit();
  v49 = swift_allocObject();
  *(v49 + 16) = sub_22824F0A4;
  *(v49 + 24) = v48;
  sub_2283917E0();
  v50 = MEMORY[0x277CBCD88];
  sub_22824F270(0, &qword_27D825DF8, MEMORY[0x277CBCD88]);
  sub_22824F370(&qword_27D825E10, sub_22824EBE0);
  sub_22824EEBC(&qword_27D825E18, &qword_27D825DF8, v50, sub_22824F270);
  v51 = v69;
  v52 = v72;
  sub_228391AF0();

  (*(v74 + 8))(v46, v52);
  v84 = 2;
  sub_22824F370(&qword_27D825E30, sub_22824ECE0);
  v53 = v70;
  v54 = v76;
  sub_2283919B0();
  (*(v77 + 8))(v51, v54);
  v55 = sub_228392790();
  v84 = v55;
  v56 = v83;
  v63(v83, 1, 1, v43);
  sub_22824F370(&qword_27D825E40, sub_22824EF10);
  v57 = v71;
  v58 = v78;
  sub_228391A70();
  sub_2281A16F0(v56);

  (*(v79 + 8))(v53, v58);
  swift_allocObject();
  swift_weakInit();
  sub_22824F370(&qword_27D825E48, sub_22824EFA4);
  v59 = v80;
  sub_228391AC0();

  (*(v81 + 8))(v57, v59);
  swift_beginAccess();
  sub_228391800();
  swift_endAccess();
}

uint64_t sub_22824A1E0(unint64_t a1, uint64_t a2, char a3)
{
  v35 = a2;
  sub_22824F140();
  v37 = *(v5 - 8);
  v38 = v5;
  v6 = *(v37 + 64);
  MEMORY[0x28223BE20](v5);
  v36 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22824F1F4();
  v9 = v8;
  v10 = *(v8 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v8);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22824F270(0, &qword_27D825E60, MEMORY[0x277CBCF38]);
  v15 = v14;
  v16 = *(v14 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v14);
  v19 = &v33 - v18;
  if ((a3 & 1) == 0)
  {
    goto LABEL_20;
  }

  if (a1 >> 62)
  {
    goto LABEL_19;
  }

  v20 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v20)
  {
    while (1)
    {
      swift_beginAccess();
      Strong = swift_weakLoadStrong();
      if (!Strong)
      {
        break;
      }

      v34 = Strong;
      v15 = 0;
      v39[0] = MEMORY[0x277D84F90];
      v10 = a1 & 0xC000000000000001;
      v16 = a1 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v10)
        {
          v22 = MEMORY[0x22AAB6D80](v15, a1);
        }

        else
        {
          if (v15 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_18;
          }

          v22 = *(a1 + 8 * v15 + 32);
        }

        v19 = v22;
        v23 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          break;
        }

        v24 = [v22 firstOntologyCoding];
        if (v24)
        {

          v13 = v39;
          sub_228393210();
          v9 = *(v39[0] + 16);
          sub_228393250();
          sub_228393260();
          sub_228393220();
        }

        else
        {
        }

        ++v15;
        if (v23 == v20)
        {
          v25 = v39[0];
          v26 = swift_allocObject();
          v26[2] = v34;
          v26[3] = v25;
          v26[4] = v35;
          v27 = MEMORY[0x277CBCD88];
          sub_22824F270(0, &qword_27D825DF8, MEMORY[0x277CBCD88]);
          sub_22824EEBC(&qword_27D825E18, &qword_27D825DF8, v27, sub_22824F270);

          v28 = v36;
          sub_228391900();
          sub_22824F370(&qword_27D825E70, sub_22824F140);
          v29 = v38;
          v30 = sub_228391990();
          (*(v37 + 8))(v28, v29);
          v39[0] = v30;
          v31 = sub_228391990();

          return v31;
        }
      }

      __break(1u);
LABEL_18:
      __break(1u);
LABEL_19:
      v20 = sub_2283930D0();
      if (!v20)
      {
        goto LABEL_20;
      }
    }

    v39[0] = 2;
    sub_22824F0F0(0, &qword_27D825E00, &type metadata for InteractionSummaryItemState, MEMORY[0x277D83D88]);
  }

  else
  {
LABEL_20:
    v39[1] = 2;
    sub_22824F0F0(0, &qword_27D825E00, &type metadata for InteractionSummaryItemState, MEMORY[0x277D83D88]);
  }

  sub_2283918C0();
  sub_22818217C(0, &qword_280DDB860);
  sub_2283918A0();
  (*(v10 + 8))(v13, v9);
  sub_22824F320(&qword_27D825E68, &qword_27D825E60, MEMORY[0x277CBCF38]);
  v31 = sub_228391990();
  (*(v16 + 8))(v19, v15);
  return v31;
}

uint64_t sub_22824A750(uint64_t *a1)
{
  v2 = sub_22838F4A0();
  v46 = *(v2 - 8);
  v3 = *(v46 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22838FEF0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_228390170();
  v47 = *(v11 - 8);
  v12 = *(v47 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  v17 = result;
  v45 = v7;
  v18 = qword_27D825D88;
  v19 = *(result + qword_27D825D88);
  if (v19)
  {
    v20 = [v19 firstOntologyCoding];
    if (!v20)
    {
    }
  }

  v44 = v6;
  v21 = *(v17 + qword_27D825D90);
  v22 = sub_228390660();
  v23 = sub_2281BFC2C(v22);

  if (!v23)
  {
LABEL_15:

    sub_22838F910();

    sub_22838FCD0();

    sub_22838FF50();
  }

  if (v23 >> 62)
  {
    if (sub_2283930D0() >= 1)
    {
      goto LABEL_8;
    }

    goto LABEL_14;
  }

  if (*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10) < 1)
  {
LABEL_14:

    goto LABEL_15;
  }

LABEL_8:
  v24 = *(v17 + v18);
  if (v24)
  {
    v25 = v24;

    sub_22824F0F0(0, &qword_280DDCE30, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_228396260;
    *(v23 + 32) = v25;

    v26 = *(v17 + v18);
  }

  else
  {

    v26 = 0;
  }

  v52[0] = v15;
  v27 = v26;
  sub_22824ADC0(v52, v26, v14);

  LOBYTE(v49[0]) = 1;
  sub_22824BFFC(v49, v23, v52);

  v48 = 2;
  sub_22824BFFC(&v48, v23, v49);

  sub_22819A064(0, &qword_27D823918, &qword_27D827E00);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_228398270;
  *(v28 + 56) = v11;
  *(v28 + 64) = sub_22824F370(&qword_27D823AB0, MEMORY[0x277D11000]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v28 + 32));
  (*(v47 + 16))(boxed_opaque_existential_1, v14, v11);
  v31 = v53;
  v30 = v54;
  v32 = __swift_project_boxed_opaque_existential_0(v52, v53);
  *(v28 + 96) = v31;
  *(v28 + 104) = *(v30 + 8);
  v33 = __swift_allocate_boxed_opaque_existential_1((v28 + 72));
  (*(*(v31 - 8) + 16))(v33, v32, v31);
  v35 = v50;
  v34 = v51;
  v36 = __swift_project_boxed_opaque_existential_0(v49, v50);
  *(v28 + 136) = v35;
  *(v28 + 144) = *(v34 + 8);
  v37 = __swift_allocate_boxed_opaque_existential_1((v28 + 112));
  (*(*(v35 - 8) + 16))(v37, v36, v35);
  sub_22838F490();
  sub_22838F450();
  (*(v46 + 8))(v5, v2);
  sub_22838FED0();

  sub_22838F910();

  sub_22838FCD0();

  sub_22824E864(0, &qword_27D823910, MEMORY[0x277D10F78], MEMORY[0x277D84560]);
  v38 = v45;
  v39 = *(v45 + 72);
  v40 = (*(v45 + 80) + 32) & ~*(v45 + 80);
  v41 = swift_allocObject();
  *(v41 + 16) = xmmword_228397F40;
  v42 = v41 + v40;
  v43 = v44;
  (*(v38 + 16))(v42, v10, v44);
  sub_22838FF50();

  (*(v38 + 8))(v10, v43);
  (*(v47 + 8))(v14, v11);
  __swift_destroy_boxed_opaque_existential_0(v49);
  return __swift_destroy_boxed_opaque_existential_0(v52);
}

uint64_t sub_22824ADC0@<X0>(unint64_t *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v102 = a3;
  v6 = *v4;
  v94 = v4;
  v95 = v6;
  v96 = a2;
  v7 = sub_228390460();
  v100 = *(v7 - 8);
  v101 = v7;
  v8 = *(v100 + 64);
  MEMORY[0x28223BE20](v7);
  v99 = &v75 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x277D83D88];
  sub_22824E864(0, &unk_280DDBCD0, MEMORY[0x277D74BD0], MEMORY[0x277D83D88]);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v98 = &v75 - v13;
  v14 = sub_22838FFC0();
  v92 = *(v14 - 8);
  v93 = v14;
  v15 = *(v92 + 64);
  MEMORY[0x28223BE20](v14);
  v97 = &v75 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = sub_2283912A0();
  v88 = *(v89 - 8);
  v17 = *(v88 + 64);
  MEMORY[0x28223BE20](v89);
  v87 = &v75 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22824E864(0, &qword_280DDBCE8, MEMORY[0x277D74AC8], v10);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v86 = &v75 - v21;
  v82 = sub_2283911F0();
  v81 = *(v82 - 8);
  v22 = *(v81 + 64);
  MEMORY[0x28223BE20](v82);
  v80 = &v75 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_228391220();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v24);
  v28 = &v75 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = sub_2283912F0();
  v85 = *(v83 - 8);
  v29 = *(v85 + 64);
  MEMORY[0x28223BE20](v83);
  v84 = &v75 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = sub_228391590();
  v104 = *(v91 - 8);
  v31 = *(v104 + 64);
  MEMORY[0x28223BE20](v91);
  v33 = &v75 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = *a1;
  sub_2283913C0();
  if (qword_280DDCF18 != -1)
  {
    swift_once();
  }

  v35 = sub_22838F0C0();
  v103 = v36;
  if (v34 == 2)
  {
    sub_22838F0C0();
  }

  else
  {
    v105[0] = v34;
    sub_22824BB04();
  }

  v90 = v35;
  sub_228391540();
  sub_2283913D0();
  v37 = [objc_opt_self() secondaryLabelColor];
  v38 = sub_2283914A0();
  sub_228391420();
  v38(v105, 0);
  sub_22817A958(0, &qword_280DDB9C0, 0x277D74300);
  v39 = *MEMORY[0x277D76918];
  sub_228392AD0();
  v40 = sub_2283914A0();
  sub_228391410();
  v40(v105, 0);
  sub_228391510();
  sub_2283928D0();
  sub_2283914E0();
  if (v34 < 3 || Array<A>.count.getter(v34) < 1)
  {
    sub_22824E864(0, &unk_280DDB890, MEMORY[0x277D74AE0], MEMORY[0x277D84560]);
    v59 = *(v85 + 72);
    v60 = (*(v85 + 80) + 32) & ~*(v85 + 80);
    *(swift_allocObject() + 16) = xmmword_228397F40;
    (*(v25 + 104))(v28, *MEMORY[0x277D74A98], v24);
    v61 = sub_228391230();
    (*(*(v61 - 8) + 56))(v86, 1, 1, v61);
    v62 = v87;
    sub_228391290();
    sub_228391260();
    (*(v88 + 8))(v62, v89);
    (*(v25 + 8))(v28, v24);
  }

  else
  {
    sub_22819A064(0, &qword_280DDB870, &qword_280DDB830);
    v41 = swift_allocObject();
    *(v41 + 16) = xmmword_228397F40;
    v42 = Array<A>.count.getter(v34);
    v43 = MEMORY[0x277D83C10];
    *(v41 + 56) = MEMORY[0x277D83B88];
    *(v41 + 64) = v43;
    *(v41 + 32) = v42;
    sub_228391FD0();

    v79 = *MEMORY[0x277D74A98];
    v78 = *(v25 + 104);
    v44 = v24;
    v78(v28);
    v76 = sub_228391230();
    v45 = *(v76 - 8);
    v75 = *(v45 + 56);
    v77 = v45 + 56;
    v46 = v86;
    v75(v86, 1, 1, v76);
    v47 = v80;
    sub_2283911E0();
    v48 = v84;
    sub_2283912B0();

    (*(v81 + 8))(v47, v82);
    v81 = *(v25 + 8);
    v82 = v25 + 8;
    v49 = v28;
    v50 = v28;
    v51 = v44;
    (v81)(v49, v44);
    sub_22824E864(0, &unk_280DDB890, MEMORY[0x277D74AE0], MEMORY[0x277D84560]);
    v52 = v85;
    v53 = *(v85 + 72);
    v54 = (*(v85 + 80) + 32) & ~*(v85 + 80);
    v55 = swift_allocObject();
    *(v55 + 16) = xmmword_228397F30;
    v56 = v48;
    v57 = v83;
    (*(v52 + 16))(v55 + v54, v56, v83);
    (v78)(v50, v79, v51);
    v75(v46, 1, 1, v76);
    v58 = v87;
    sub_228391290();
    sub_228391260();
    (*(v88 + 8))(v58, v89);
    (v81)(v50, v51);
    (*(v52 + 8))(v84, v57);
  }

  v63 = v91;
  v105[3] = v91;
  v105[4] = MEMORY[0x277D74C30];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v105);
  (*(v104 + 16))(boxed_opaque_existential_1, v33, v63);
  v65 = swift_allocObject();
  swift_weakInit();
  v66 = swift_allocObject();
  v67 = v95;
  v68 = v96;
  v66[2] = v65;
  v66[3] = v68;
  v66[4] = v67;
  v69 = v97;
  *v97 = 1;
  (*(v92 + 104))(v69, *MEMORY[0x277D10F90], v93);
  v70 = sub_2283913A0();
  (*(*(v70 - 8) + 56))(v98, 1, 1, v70);
  v71 = v68;

  v72 = sub_228392190();
  v73 = HKUIJoinStringsForAutomationIdentifier();

  if (v73)
  {
    sub_228392000();
  }

  (*(v100 + 104))(v99, *MEMORY[0x277D11140], v101);
  sub_228390160();
  (*(v104 + 8))(v33, v63);
}

id sub_22824BB04()
{
  v1 = *v0;
  if (qword_280DDCF18 != -1)
  {
    swift_once();
  }

  result = sub_22838F0C0();
  if (v1)
  {
    if (v1 == 1)
    {
      v3 = result;
      result = [objc_opt_self() sharedBehavior];
      if (result)
      {
        v4 = result;
        v5 = [result isAppleInternalInstall];

        if (v5)
        {

          return 0xD00000000000001DLL;
        }

        else
        {
          return v3;
        }
      }

      else
      {
        __break(1u);
      }
    }

    else
    {

      return Array<A>.interactionSummaryTitle()(v1);
    }
  }

  return result;
}

uint64_t sub_22824BC44(void *a1, uint64_t a2, void *a3)
{
  v5 = sub_2283911B0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v11 = *(Strong + qword_27D825D90);
    v12 = *(Strong + qword_27D825D98);
    v35 = Strong;
    v36 = qword_27D825DA0;
    v13 = *(Strong + qword_27D825DA0);
    v14 = type metadata accessor for InteractionSummaryOverviewViewController();
    v15 = objc_allocWithZone(v14);
    *&v15[qword_27D8264F0] = 0;
    *&v15[qword_27D8264F8] = 0;
    *&v15[qword_27D826500] = 0;
    v34 = a1;
    v16 = &v15[qword_27D826508];
    v17 = *MEMORY[0x277D12788];
    v38 = sub_228392000();
    v39 = v18;

    v19 = v12;

    MEMORY[0x22AAB5C80](0xD000000000000025, 0x80000002283AE9C0);

    v20 = v39;
    *v16 = v38;
    *(v16 + 1) = v20;
    *&v15[qword_27D826510] = a3;
    *&v15[qword_27D826518] = v11;
    *&v15[qword_27D826520] = v19;
    *&v15[qword_27D826528] = v13;
    *&v15[qword_27D826530] = 2;
    v37.receiver = v15;
    v37.super_class = v14;

    v21 = v19;

    v22 = a3;
    v23 = objc_msgSendSuper2(&v37, sel_initWithCollectionViewLayout_, 0);
    [v23 setModalPresentationStyle_];
    sub_228274A00();

    [v23 setModalPresentationStyle_];
    v24 = v35;
    [v34 showAdaptively:v23 sender:v35];
    v25 = *(v24 + v36);

    sub_228390FE0();
  }

  else
  {
    sub_228391150();
    v27 = sub_2283911A0();
    v28 = sub_2283925C0();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v38 = v30;
      *v29 = 136315138;
      v31 = sub_228393600();
      v33 = sub_2281C96FC(v31, v32, &v38);

      *(v29 + 4) = v33;
      _os_log_impl(&dword_22816B000, v27, v28, "[%s] Unable to launch InteractionSummaryOverviewViewController as self was deallocated.", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v30);
      MEMORY[0x22AAB7B80](v30, -1, -1);
      MEMORY[0x22AAB7B80](v29, -1, -1);
    }

    return (*(v6 + 8))(v9, v5);
  }
}

uint64_t sub_22824BFFC@<X0>(unsigned __int8 *a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = v3;
  v107 = a3;
  v7 = *v4;
  v100 = v4;
  v99 = v7;
  v104 = sub_228390460();
  v103 = *(v104 - 8);
  v8 = *(v103 + 64);
  MEMORY[0x28223BE20](v104);
  v106 = v84 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x277D83D88];
  sub_22824E864(0, &unk_280DDBCD0, MEMORY[0x277D74BD0], MEMORY[0x277D83D88]);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = v84 - v13;
  v102 = sub_22838FFC0();
  v101 = *(v102 - 8);
  v15 = *(v101 + 64);
  MEMORY[0x28223BE20](v102);
  v115 = v84 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = sub_2283911F0();
  v86 = *(v87 - 8);
  v17 = *(v86 + 64);
  MEMORY[0x28223BE20](v87);
  v85 = v84 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = sub_2283912F0();
  v19 = *(v89 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v89);
  v95 = v84 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22824E864(0, &qword_280DDBCE8, MEMORY[0x277D74AC8], v10);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22 - 8);
  v112 = v84 - v24;
  v109 = sub_2283912A0();
  v117 = *(v109 - 8);
  v25 = *(v117 + 64);
  MEMORY[0x28223BE20](v109);
  v108 = v84 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = sub_228391220();
  v27 = *(v111 - 8);
  v28 = v27[8];
  MEMORY[0x28223BE20](v111);
  v30 = v84 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_228391590();
  v113 = *(v31 - 8);
  v114 = v31;
  v32 = *(v113 + 64);
  MEMORY[0x28223BE20](v31);
  v34 = v84 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v118 = *a1;
  LOBYTE(v120[0]) = v118;
  v35 = Array<A>.cellContent(for:)(v120, a2);
  v84[1] = v36;
  v38 = v37;
  sub_22819A064(0, &qword_280DDB870, &qword_280DDB830);
  v39 = swift_allocObject();
  v40 = MEMORY[0x277D83B88];
  v110 = xmmword_228397F40;
  *(v39 + 16) = xmmword_228397F40;
  v41 = MEMORY[0x277D83C10];
  *(v39 + 56) = v40;
  *(v39 + 64) = v41;
  v96 = v35;
  *(v39 + 32) = v35;
  v84[4] = sub_228391FD0();
  v97 = v42;

  v98 = v38;
  v105 = v14;
  if (v38)
  {
    sub_2283913C0();
  }

  else
  {
    sub_228391580();
  }

  LOBYTE(v120[0]) = v118;
  MedicationSecondaryEducationType.text.getter();
  sub_228391540();
  v43 = [objc_opt_self() secondaryLabelColor];
  v44 = sub_2283914A0();
  sub_228391420();
  v44(v120, 0);
  sub_22817A958(0, &qword_280DDB9C0, 0x277D74300);
  v45 = *MEMORY[0x277D76918];
  sub_228392AD0();
  v46 = sub_2283914A0();
  sub_228391410();
  v46(v120, 0);
  sub_228391510();
  sub_2283928D0();
  v116 = v34;
  sub_2283914E0();
  sub_22824E864(0, &unk_280DDB890, MEMORY[0x277D74AE0], MEMORY[0x277D84560]);
  v47 = *(v19 + 72);
  v88 = v19;
  v48 = (*(v19 + 80) + 32) & ~*(v19 + 80);
  v84[3] = v47;
  v84[2] = v49;
  v50 = swift_allocObject();
  *(v50 + 16) = v110;
  v51 = v27[13];
  v94 = *MEMORY[0x277D74A98];
  v52 = v111;
  v93 = v51;
  v51(v30);
  v53 = sub_228391230();
  v54 = *(v53 - 8);
  v92 = *(v54 + 56);
  v91 = v54 + 56;
  v92(v112, 1, 1, v53);
  v55 = v108;
  sub_228391290();
  *&v110 = v50;
  sub_228391260();
  v56 = *(v117 + 8);
  v117 += 8;
  v56(v55, v109);
  v90 = v27[1];
  v90(v30, v52);
  v57 = swift_allocObject();
  v58 = v100;
  swift_weakInit();
  v59 = swift_allocObject();
  *(v59 + 16) = v57;
  *(v59 + 24) = v118;
  *(v59 + 32) = v99;
  if (!*(v58 + qword_27D825D88) || v96 > 0)
  {
    v99 = v56;
    v100 = v59;
    v63 = v111;
    v93(v30, v94, v111);
    v92(v112, 1, 1, v53);
    v64 = v85;
    sub_2283911E0();
    v65 = v95;
    sub_2283912B0();

    (*(v86 + 8))(v64, v87);
    v90(v30, v63);
    if (v98)
    {
      v97 = v27 + 1;

      sub_2283913D0();
    }

    else
    {
      if (v96 < 1)
      {
        v69 = v89;
        v68 = v88;
        goto LABEL_14;
      }

      v97 = v27 + 1;
    }

    v66 = swift_allocObject();
    *(v66 + 16) = xmmword_228397F30;
    *&v110 = v66;
    v67 = v66 + v48;
    v68 = v88;
    v65 = v95;
    v69 = v89;
    (*(v88 + 16))(v67, v95, v89);
    v70 = v111;
    v93(v30, v94, v111);
    v92(v112, 1, 1, v53);
    v71 = v108;
    sub_228391290();
    sub_228391260();
    v99(v71, v109);
    v90(v30, v70);
LABEL_14:
    (*(v68 + 8))(v65, v69);
    v62 = sub_22824E8C8;
    v60 = v105;
    v61 = v116;
    goto LABEL_15;
  }

  v60 = v105;
  if (qword_27D823310 != -1)
  {
    swift_once();
  }

  sub_22838F0C0();
  v61 = v116;
  sub_2283913D0();

  v62 = 0;
LABEL_15:
  v72 = v118;
  v121 = v118;
  v117 = MedicationSecondaryEducationType.text.getter();
  v73 = v114;
  v120[3] = v114;
  v120[4] = MEMORY[0x277D74C30];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v120);
  (*(v113 + 16))(boxed_opaque_existential_1, v61, v73);
  *v115 = 1;
  v75 = *MEMORY[0x277D10F90];
  (*(v101 + 104))();
  v76 = sub_2283913A0();
  (*(*(v76 - 8) + 56))(v60, 1, 1, v76);
  sub_22824F0F0(0, &qword_27D823EE0, MEMORY[0x277D837D0], MEMORY[0x277D84560]);
  v77 = swift_allocObject();
  *(v77 + 16) = xmmword_228398270;
  *(v77 + 32) = 0xD000000000000015;
  *(v77 + 40) = 0x80000002283A6D10;
  v119 = v72;
  sub_228176FA8(v62);
  *(v77 + 48) = MedicationSecondaryEducationType.text.getter();
  *(v77 + 56) = v78;
  *(v77 + 64) = 1819043139;
  *(v77 + 72) = 0xE400000000000000;
  v79 = sub_228392190();

  v80 = HKUIJoinStringsForAutomationIdentifier();

  if (v80)
  {
    sub_228392000();
  }

  (*(v103 + 104))(v106, *MEMORY[0x277D11140], v104);
  v81 = sub_228390170();
  v82 = v107;
  v107[3] = v81;
  v82[4] = sub_22824F370(&qword_27D824520, MEMORY[0x277D11000]);
  __swift_allocate_boxed_opaque_existential_1(v82);
  sub_228390160();
  sub_228176EC8(v62);
  return (*(v113 + 8))(v116, v114);
}

void sub_22824CEE0(void *a1, uint64_t a2, char a3)
{
  v5 = sub_2283911B0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v35[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v11 = *(Strong + qword_27D825D88);
    if (v11)
    {
      v12 = Strong;
      type metadata accessor for MedicationInformationOverviewItem();
      inited = swift_initStackObject();
      type metadata accessor for MedicationInformationOverviewCell();
      sub_22824F370(&qword_27D824F98, type metadata accessor for MedicationInformationOverviewCell);
      v14 = v11;
      sub_22838FBB0();
      *(inited + 16) = v14;
      *(inited + 24) = a3;
      if ((a3 - 1) > 1u)
      {
        sub_228393300();
        __break(1u);
      }

      else
      {
        v15 = v14;
        v16 = sub_22827F81C(v15, a3);
        if (!v17)
        {
          if (qword_27D823310 != -1)
          {
            swift_once();
          }

          v16 = sub_22838F0C0();
        }

        v18 = v16;
        v19 = v17;
        v20 = sub_22827D32C();
        v22 = sub_22824DB80(a3, v15, v18, v19, v20, v21);

        [a1 showAdaptively:v22 sender:v12];
      }
    }

    else
    {
      v30 = *(Strong + qword_27D825D90);
      LOBYTE(v36) = a3;
      v31 = Strong;
      objc_allocWithZone(type metadata accessor for PregnancyLactationEducationViewController());

      v33 = PregnancyLactationEducationViewController.init(listManager:educationType:)(v32, &v36);
      [v33 setModalPresentationStyle_];
      v34 = v33;
      [a1 showAdaptively:v34 sender:v31];
    }
  }

  else
  {
    sub_228391150();
    v23 = sub_2283911A0();
    v24 = sub_2283925C0();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v36 = v26;
      *v25 = 136315138;
      v27 = sub_228393600();
      v29 = sub_2281C96FC(v27, v28, &v36);

      *(v25 + 4) = v29;
      _os_log_impl(&dword_22816B000, v23, v24, "[%s] Unable to launch PregnancyLactationEducationViewController as self was deallocated.", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v26);
      MEMORY[0x22AAB7B80](v26, -1, -1);
      MEMORY[0x22AAB7B80](v25, -1, -1);
    }

    (*(v6 + 8))(v9, v5);
  }
}

uint64_t sub_22824D350()
{
  v1 = *(v0 + qword_27D825D90);

  v2 = *(v0 + qword_27D825DA0);

  v3 = *(v0 + qword_27D825D70);

  v4 = *(v0 + qword_27D825D78);

  v5 = *(v0 + qword_27D825D80);
}

uint64_t MedicationInformationDataSource.deinit()
{
  v0 = _s19HealthMedicationsUI34InteractionSeperatorLineDataSourceCfd_0();
  v1 = *(v0 + qword_27D825D90);

  v2 = *(v0 + qword_27D825DA0);

  v3 = *(v0 + qword_27D825D70);

  v4 = *(v0 + qword_27D825D78);

  v5 = *(v0 + qword_27D825D80);

  return v0;
}

uint64_t MedicationInformationDataSource.__deallocating_deinit()
{
  MedicationInformationDataSource.deinit();

  return swift_deallocClassInstance();
}

Swift::Void __swiftcall MedicationInformationDataSource.registerCells(for:)(UICollectionView *a1)
{
  sub_2283904F0();
  sub_2283926B0();
  sub_228390420();
  sub_2283926D0();
  sub_228390300();
  sub_2283926C0();
}

uint64_t sub_22824D594()
{
  sub_2283904F0();
  sub_2283926B0();
  sub_228390420();
  sub_2283926D0();
  sub_228390300();
  return sub_2283926C0();
}

uint64_t MedicationInformationDataSource.supplementaryItem(ofKind:at:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = sub_22838F4A0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_228391590();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = *MEMORY[0x277D767D8];
  if (sub_228392000() == a1 && v15 == a2)
  {

    goto LABEL_13;
  }

  v17 = sub_228393460();

  if (v17)
  {
LABEL_13:
    if (qword_280DDCF18 != -1)
    {
      swift_once();
    }

    sub_22838F0C0();
    sub_228391500();
    v23 = sub_22838FB60();
    v24 = *(v23 + 48);
    v25 = *(v23 + 52);
    swift_allocObject();
    v26 = sub_22838FB50();
    a3[3] = v23;
    result = sub_22824F370(&qword_27D823960, MEMORY[0x277D10E18]);
    a3[4] = result;
    *a3 = v26;
    return result;
  }

  v18 = *MEMORY[0x277D767D0];
  if (sub_228392000() == a1 && v19 == a2)
  {
  }

  else
  {
    v21 = sub_228393460();

    if ((v21 & 1) == 0)
    {
      a3[3] = sub_22838FC00();
      a3[4] = sub_22824F370(&qword_27D823958, MEMORY[0x277D10EC8]);
      __swift_allocate_boxed_opaque_existential_1(a3);
      return sub_22838FBF0();
    }
  }

  if (qword_280DDCF18 != -1)
  {
    swift_once();
  }

  sub_22819A064(0, &qword_280DDB870, &qword_280DDB830);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_228397F40;
  v28 = *(v3 + qword_27D825D90);
  v29 = sub_228390660();
  v30 = sub_2281BFC2C(v29);

  if (v30)
  {
    if (v30 >> 62)
    {
      v31 = sub_2283930D0();
    }

    else
    {
      v31 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }
  }

  else
  {
    v31 = 0;
  }

  v32 = MEMORY[0x277D83C10];
  *(v27 + 56) = MEMORY[0x277D83B88];
  *(v27 + 64) = v32;
  *(v27 + 32) = v31;
  sub_22838F0C0();
  if (*(v27 + 16))
  {
    sub_228391FD0();
  }

  v36[0] = 0x74497265746F6F46;
  v36[1] = 0xEB000000005F6D65;
  sub_22838F490();
  v33 = sub_22838F450();
  v35 = v34;
  (*(v8 + 8))(v11, v7);
  MEMORY[0x22AAB5C80](v33, v35);

  a3[3] = sub_228390330();
  a3[4] = sub_22824F370(&qword_27D8244F8, MEMORY[0x277D110D8]);
  __swift_allocate_boxed_opaque_existential_1(a3);
  return sub_228390320();
}

id sub_22824DB80(unsigned __int8 a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = objc_allocWithZone(type metadata accessor for MedicationSecondaryEducationViewController());
  v12[qword_27D825360] = a1;
  v13 = type metadata accessor for MedicationSecondaryEducationCompoundDataSource(0);
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();
  v16 = type metadata accessor for MedicationSecondaryEducationDataSource(0);
  v17 = *(v16 + 48);
  v18 = *(v16 + 52);
  v19 = swift_allocObject();
  v20 = a2;
  v21 = sub_22824DD0C(a1, v20, a3, a4, a5, a6, v19);
  sub_22819A064(0, &qword_27D827750, &qword_27D8238E8);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_228397F40;
  v23 = sub_22824F370(&qword_27D825378, type metadata accessor for MedicationSecondaryEducationDataSource);
  *(v22 + 32) = v21;
  *(v22 + 40) = v23;
  sub_228390210();

  v24 = sub_228390480();
  [v24 setModalPresentationStyle_];

  return v24;
}

uint64_t sub_22824DD0C(unsigned __int8 a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *&v72 = a4;
  v13 = a1;
  v75 = sub_22838F4A0();
  v73 = *(v75 - 8);
  v14 = *(v73 + 64);
  MEMORY[0x28223BE20](v75);
  v16 = &v72 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = sub_22838FEF0();
  v76 = *(v78 - 8);
  v17 = *(v76 + 64);
  v18 = MEMORY[0x28223BE20](v78);
  v77 = &v72 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v80 = &v72 - v20;
  sub_22824E864(0, &qword_280DDBD20, MEMORY[0x277D116C8], MEMORY[0x277D83D88]);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21 - 8);
  v24 = &v72 - v23;
  v79 = a7;
  *(a7 + qword_27D824318) = a1;
  if (v13)
  {
    v25 = a5;
    v26 = sub_22827F934(a2, a1);
    v27 = type metadata accessor for MedicationMarkdownItem();
    v28 = swift_allocObject();
    type metadata accessor for MedicationMarkdownItemCell();
    sub_22824F370(&qword_27D824340, type metadata accessor for MedicationMarkdownItemCell);
    *(v28 + 16) = sub_22838FBB0();
    *(v28 + 24) = v29;
    v30 = v72;
    *(v28 + 32) = a3;
    *(v28 + 40) = v30;
    *(v28 + 48) = v25;
    *(v28 + 56) = a6;
    *(v28 + 64) = v26 & 1;
    v31 = &qword_27D824350;
    v32 = type metadata accessor for MedicationMarkdownItem;
  }

  else
  {
    v27 = type metadata accessor for MedicationSideEffectsItem();
    v28 = swift_allocObject();
    type metadata accessor for MedicationSideEffectsItemCell();
    sub_22824F370(&qword_27D823838, type metadata accessor for MedicationSideEffectsItemCell);
    *(v28 + 16) = sub_22838FBB0();
    *(v28 + 24) = v33;
    v34 = v72;
    *(v28 + 32) = a3;
    *(v28 + 40) = v34;
    *(v28 + 48) = a5;
    *(v28 + 56) = a6;
    v31 = &unk_27D824360;
    v32 = type metadata accessor for MedicationSideEffectsItem;
  }

  v35 = sub_22824F370(v31, v32);
  v82 = v27;
  v83 = v35;
  v81[0] = v28;
  _sSo29HKMedicationUserDomainConceptC19HealthMedicationsUIE7medmoji0eF10Experience29MedicationVisualizationConfigVSgvg_0();
  v36 = _sSo29HKMedicationUserDomainConceptC19HealthMedicationsUIE5titleSSvg_0();
  v38 = v37;
  v39 = _sSo29HKMedicationUserDomainConceptC19HealthMedicationsUIE16doseFormStrengthSSSgvg_0();
  if (v40)
  {
    v41 = v39;
  }

  else
  {
    v41 = 0;
  }

  v74 = a2;
  if (v40)
  {
    v42 = v40;
  }

  else
  {
    v42 = 0xE000000000000000;
  }

  v43 = _sSo29HKMedicationUserDomainConceptC19HealthMedicationsUIE10componentsSaySSGSgvg_0();
  if (v43)
  {
    v44 = v43;
  }

  else
  {
    v44 = MEMORY[0x277D84F90];
  }

  v45 = type metadata accessor for MedicationInfoItem();
  v46 = *(v45 + 48);
  v47 = *(v45 + 52);
  v48 = swift_allocObject();
  type metadata accessor for MedicationInfoItemCell();
  sub_22824F370(&qword_27D824338, type metadata accessor for MedicationInfoItemCell);
  *(v48 + 16) = sub_22838FBB0();
  *(v48 + 24) = v49;
  sub_2281AA8D4(v24, v48 + OBJC_IVAR____TtC19HealthMedicationsUI18MedicationInfoItem_medmoji);
  v50 = (v48 + OBJC_IVAR____TtC19HealthMedicationsUI18MedicationInfoItem_name);
  *v50 = v36;
  v50[1] = v38;
  v51 = (v48 + OBJC_IVAR____TtC19HealthMedicationsUI18MedicationInfoItem_strength);
  *v51 = v41;
  v51[1] = v42;
  *(v48 + OBJC_IVAR____TtC19HealthMedicationsUI18MedicationInfoItem_ingredients) = v44;
  sub_22819A064(0, &qword_27D823918, &qword_27D827E00);
  v52 = swift_allocObject();
  v72 = xmmword_228397F40;
  *(v52 + 16) = xmmword_228397F40;
  *(v52 + 56) = v45;
  *(v52 + 64) = sub_22824F370(&qword_27D824358, type metadata accessor for MedicationInfoItem);
  *(v52 + 32) = v48;

  sub_22838F490();
  sub_22838F450();
  v53 = *(v73 + 8);
  v54 = v75;
  v53(v16, v75);
  sub_22838FED0();
  v55 = swift_allocObject();
  *(v55 + 16) = v72;
  v56 = v82;
  v57 = v83;
  v58 = __swift_project_boxed_opaque_existential_0(v81, v82);
  *(v55 + 56) = v56;
  *(v55 + 64) = *(v57 + 8);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v55 + 32));
  (*(*(v56 - 8) + 16))(boxed_opaque_existential_1, v58, v56);
  sub_22838F490();
  sub_22838F450();
  v53(v16, v54);
  v60 = v77;
  sub_22838FED0();
  sub_22824E864(0, &qword_27D823910, MEMORY[0x277D10F78], MEMORY[0x277D84560]);
  v61 = v76;
  v62 = *(v76 + 72);
  v63 = (*(v76 + 80) + 32) & ~*(v76 + 80);
  v64 = swift_allocObject();
  *(v64 + 16) = xmmword_228397F30;
  v65 = v64 + v63;
  v66 = *(v61 + 16);
  v67 = v80;
  v68 = v78;
  v66(v65, v80, v78);
  v66(v65 + v62, v60, v68);
  v69 = sub_22838F920();

  v70 = *(v61 + 8);
  v70(v60, v68);
  v70(v67, v68);
  __swift_destroy_boxed_opaque_existential_0(v81);
  return v69;
}

BOOL _s19HealthMedicationsUI31MedicationInformationDataSourceC14DisplayContextO2eeoiySbAE_AEtFZ_0(void **a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*a1)
  {
    if (v3)
    {
      sub_22817A958(0, &qword_27D825620, 0x277D82BB8);
      v4 = v3;
      v5 = v2;
      v6 = sub_228392C60();

      return v6 & 1;
    }

    return 0;
  }

  return !v3;
}

uint64_t sub_22824E4C8()
{
  v1 = sub_2283900D0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](v1);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v12 - v7;
  if (*(v0 + qword_27D825D88))
  {
    sub_228390040();
  }

  else
  {
    sub_228390010();
  }

  sub_228390000();
  v9 = *(v2 + 8);
  v9(v8, v1);
  v10 = sub_2283900C0();
  v9(v6, v1);
  return v10;
}

uint64_t type metadata accessor for MedicationInformationDataSource()
{
  result = qword_27D825DB0;
  if (!qword_27D825DB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22824E798(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_22824E7E8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_22824E83C(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void sub_22824E864(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_22824E8E4()
{
  if (!qword_27D827CF0)
  {
    v0 = MEMORY[0x277D77BE8];
    sub_22824EB00(255, &qword_27D824108, MEMORY[0x277D77BE8]);
    sub_2281A1218();
    sub_22824EEBC(&qword_27D827D00, &qword_27D824108, v0, sub_22824EB00);
    v1 = sub_2283916D0();
    if (!v2)
    {
      atomic_store(v1, &qword_27D827CF0);
    }
  }
}

void sub_22824E9B0()
{
  if (!qword_27D825DC0)
  {
    sub_22824E8E4();
    sub_22824EB00(255, &qword_27D825DC8, sub_2281930F4);
    sub_22824F0F0(255, &unk_280DDBBE0, MEMORY[0x277D839B0], MEMORY[0x277CBCEC0]);
    sub_22824F370(&qword_27D825DD0, sub_22824E8E4);
    sub_22824EEBC(&qword_27D825DD8, &qword_27D825DC8, sub_2281930F4, sub_22824EB00);
    sub_22824EB64();
    v0 = sub_228391690();
    if (!v1)
    {
      atomic_store(v0, &qword_27D825DC0);
    }
  }
}

void sub_22824EB00(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

unint64_t sub_22824EB64()
{
  result = qword_280DDBBF0;
  if (!qword_280DDBBF0)
  {
    sub_22824F0F0(255, &unk_280DDBBE0, MEMORY[0x277D839B0], MEMORY[0x277CBCEC0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DDBBF0);
  }

  return result;
}

void sub_22824EBE0()
{
  if (!qword_27D825DE0)
  {
    sub_22824E9B0();
    sub_22817A958(255, &qword_280DDCEE0, 0x277D85C78);
    sub_22824F370(&qword_27D825DE8, sub_22824E9B0);
    sub_22818C470(&qword_280DDBAC0, &qword_280DDCEE0, 0x277D85C78);
    v0 = sub_228391790();
    if (!v1)
    {
      atomic_store(v0, &qword_27D825DE0);
    }
  }
}

void sub_22824ECE0()
{
  if (!qword_27D825DF0)
  {
    v0 = MEMORY[0x277CBCD88];
    sub_22824F270(255, &qword_27D825DF8, MEMORY[0x277CBCD88]);
    sub_22824EDEC();
    sub_22824EEBC(&qword_27D825E18, &qword_27D825DF8, v0, sub_22824F270);
    sub_22824F370(&qword_27D825E20, sub_22824EDEC);
    v1 = sub_228391780();
    if (!v2)
    {
      atomic_store(v1, &qword_27D825DF0);
    }
  }
}

void sub_22824EDEC()
{
  if (!qword_27D825E08)
  {
    sub_22824EBE0();
    sub_22818217C(255, &qword_280DDB860);
    sub_22824F370(&qword_27D825E10, sub_22824EBE0);
    v0 = sub_228391710();
    if (!v1)
    {
      atomic_store(v0, &qword_27D825E08);
    }
  }
}

uint64_t sub_22824EEBC(unint64_t *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a4(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_22824EF10()
{
  if (!qword_27D825E28)
  {
    sub_22824ECE0();
    sub_22824F370(&qword_27D825E30, sub_22824ECE0);
    v0 = sub_228391700();
    if (!v1)
    {
      atomic_store(v0, &qword_27D825E28);
    }
  }
}

void sub_22824EFA4()
{
  if (!qword_27D825E38)
  {
    sub_22824EF10();
    sub_22817A958(255, &qword_280DDCEE0, 0x277D85C78);
    sub_22824F370(&qword_27D825E40, sub_22824EF10);
    sub_22818C470(&qword_280DDBAC0, &qword_280DDCEE0, 0x277D85C78);
    v0 = sub_2283917D0();
    if (!v1)
    {
      atomic_store(v0, &qword_27D825E38);
    }
  }
}

uint64_t sub_22824F0AC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(v2 + 16);
  v5 = *(v2 + 24);
  result = v4(*a1, *(a1 + 8), *(a1 + 16));
  *a2 = result;
  return result;
}

void sub_22824F0F0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_22824F140()
{
  if (!qword_27D825E50)
  {
    v0 = MEMORY[0x277CBCD88];
    sub_22824F270(255, &qword_27D825DF8, MEMORY[0x277CBCD88]);
    sub_22824EEBC(&qword_27D825E18, &qword_27D825DF8, v0, sub_22824F270);
    v1 = sub_228391910();
    if (!v2)
    {
      atomic_store(v1, &qword_27D825E50);
    }
  }
}

void sub_22824F1F4()
{
  if (!qword_27D825E58)
  {
    sub_22824F0F0(255, &qword_27D825E00, &type metadata for InteractionSummaryItemState, MEMORY[0x277D83D88]);
    v0 = sub_2283918B0();
    if (!v1)
    {
      atomic_store(v0, &qword_27D825E58);
    }
  }
}

void sub_22824F270(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, void))
{
  if (!*a2)
  {
    sub_22824F0F0(255, &qword_27D825E00, &type metadata for InteractionSummaryItemState, MEMORY[0x277D83D88]);
    v7 = v6;
    v8 = sub_22818217C(255, &qword_280DDB860);
    v9 = a3(a1, v7, v8, MEMORY[0x277D84950]);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_22824F320(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, void))
{
  result = *a1;
  if (!result)
  {
    sub_22824F270(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_22824F370(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t objectdestroy_14Tm()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t block_copy_helper_11(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_22824F430(id a1, char a2)
{
  if (a2)
  {
  }

  else
  {
    sub_22824F43C(a1);
  }
}

unint64_t sub_22824F43C(unint64_t result)
{
  if (result != 2)
  {
    return sub_2281E8530(result);
  }

  return result;
}

id MedicationCustomizationDataProvider.medication.getter()
{
  v1 = *v0;
  v2 = *v0;
  return v1;
}

uint64_t MedicationCustomizationDataProvider.caption.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t MedicationCustomizationDataProvider.caption.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t MedicationCustomizationDataProvider.strengthDisplay.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

uint64_t MedicationCustomizationDataProvider.strengthDisplay.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 32);

  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

uint64_t MedicationCustomizationDataProvider.medMoji.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for MedicationCustomizationDataProvider(0) + 28);

  return sub_22824F65C(a1, v3);
}

uint64_t sub_22824F65C(uint64_t a1, uint64_t a2)
{
  sub_22825006C(0, &qword_280DDBD20, MEMORY[0x277D116C8]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t MedicationCustomizationDataProvider.nickname.getter()
{
  v1 = (v0 + *(type metadata accessor for MedicationCustomizationDataProvider(0) + 32));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t MedicationCustomizationDataProvider.nickname.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for MedicationCustomizationDataProvider(0) + 32));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t MedicationCustomizationDataProvider.notes.getter()
{
  v1 = (v0 + *(type metadata accessor for MedicationCustomizationDataProvider(0) + 36));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t MedicationCustomizationDataProvider.notes.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for MedicationCustomizationDataProvider(0) + 36));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t MedicationCustomizationDataProvider.init(medication:caption:medMoji:nickname:notes:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>)
{
  v16 = type metadata accessor for MedicationCustomizationDataProvider(0);
  v17 = v16[7];
  v18 = sub_228390D50();
  (*(*(v18 - 8) + 56))(&a9[v17], 1, 1, v18);
  v19 = &a9[v16[9]];
  *a9 = a1;
  *(a9 + 1) = a2;
  *(a9 + 2) = a3;
  *(a9 + 3) = 0;
  *(a9 + 4) = 0xE000000000000000;
  result = sub_22824F65C(a4, &a9[v17]);
  v21 = &a9[v16[8]];
  *v21 = a5;
  *(v21 + 1) = a6;
  *v19 = a7;
  *(v19 + 1) = a8;
  return result;
}

uint64_t MedicationCustomizationDataProvider.title.getter()
{
  v1 = (v0 + *(type metadata accessor for MedicationCustomizationDataProvider(0) + 32));
  v2 = *v1;
  v3 = v1[1];
  sub_2283920A0();
  v21 = v4;
  if (*v0)
  {
    v5 = [*v0 localizedPreferredName];
    if (v5)
    {
      v6 = v5;
      v7 = sub_228392000();
      v9 = v8;
    }

    else
    {
      v7 = 0;
      v9 = 0;
    }

    v22 = v7;
    v23 = v9;
  }

  else
  {
    v22 = 0;
    v23 = 0;
  }

  v10 = 0;
  v11 = MEMORY[0x277D84F90];
LABEL_8:
  v12 = &v21 + 2 * v10;
  while (++v10 != 3)
  {
    v13 = v12 + 2;
    v14 = *v12;
    v12 += 2;
    if (v14)
    {
      v15 = *(v13 - 3);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v11 = sub_228198748(0, *(v11 + 2) + 1, 1, v11);
      }

      v17 = *(v11 + 2);
      v16 = *(v11 + 3);
      if (v17 >= v16 >> 1)
      {
        v11 = sub_228198748((v16 > 1), v17 + 1, 1, v11);
      }

      *(v11 + 2) = v17 + 1;
      v18 = &v11[16 * v17];
      *(v18 + 4) = v15;
      *(v18 + 5) = v14;
      goto LABEL_8;
    }
  }

  sub_22824FE6C(0, &qword_27D825070, MEMORY[0x277D83D88]);
  swift_arrayDestroy();
  sub_22824FE6C(0, &qword_27D827E10, MEMORY[0x277D83940]);
  sub_2281BF13C();
  v19 = sub_228391F90();

  return v19;
}

uint64_t sub_22824FBA0()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t sub_22824FBD0(uint64_t a1)
{
  v2 = (v1 + *(a1 + 36));
  v3 = *v2;
  v4 = v2[1];

  return v3;
}

uint64_t MedicationDetailsDataProvider.title.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t MedicationDetailsDataProvider.caption.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t MedicationDetailsDataProvider.strengthDisplay.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t MedicationDetailsDataProvider.strengthDisplay.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t sub_22824FD08@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = v2 + *(a1(0) + 28);

  return sub_2281BF64C(v4, a2);
}

uint64_t MedicationDetailsDataProvider.notes.getter()
{
  v1 = (v0 + *(type metadata accessor for MedicationDetailsDataProvider(0) + 32));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t MedicationDetailsDataProvider.init(title:caption:strengthDisplay:medMoji:notes:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10)
{
  *a9 = a1;
  a9[1] = a2;
  a9[2] = a3;
  a9[3] = a4;
  a9[4] = a5;
  a9[5] = a6;
  v13 = type metadata accessor for MedicationDetailsDataProvider(0);
  result = sub_2281AA8D4(a7, a9 + *(v13 + 28));
  v15 = (a9 + *(v13 + 32));
  *v15 = a8;
  v15[1] = a10;
  return result;
}

uint64_t sub_22824FE04()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t sub_22824FE34(uint64_t a1)
{
  v2 = (v1 + *(a1 + 32));
  v3 = *v2;
  v4 = v2[1];

  return v3;
}

void sub_22824FE6C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x277D837D0]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_22824FF6C()
{
  sub_22825006C(319, &unk_27D8277B0, sub_2282500C0);
  if (v0 <= 0x3F)
  {
    sub_22825006C(319, &qword_280DDBD20, MEMORY[0x277D116C8]);
    if (v1 <= 0x3F)
    {
      sub_22824FE6C(319, &qword_27D825070, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_22825006C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

unint64_t sub_2282500C0()
{
  result = qword_27D823BD8;
  if (!qword_27D823BD8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27D823BD8);
  }

  return result;
}

void sub_228250134()
{
  sub_22825006C(319, &qword_280DDBD20, MEMORY[0x277D116C8]);
  if (v0 <= 0x3F)
  {
    sub_22824FE6C(319, &qword_27D825070, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

Swift::String __swiftcall Date.formattedWithYearIfDifferent()()
{
  v0 = sub_22838F2F0();
  v67 = *(v0 - 8);
  v68 = v0;
  v1 = *(v67 + 64);
  MEMORY[0x28223BE20](v0);
  v66 = &v65 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_22838F440();
  v80 = *(v3 - 8);
  v81 = v3;
  v4 = *(v80 + 64);
  MEMORY[0x28223BE20](v3);
  v77 = &v65 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = sub_22838F6A0();
  v84 = *(v78 - 8);
  v6 = *(v84 + 64);
  MEMORY[0x28223BE20](v78);
  v79 = &v65 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = sub_22838F2D0();
  v72 = *(v75 - 8);
  v8 = *(v72 + 64);
  MEMORY[0x28223BE20](v75);
  v73 = &v65 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = sub_22838F310();
  v71 = *(v74 - 8);
  v10 = *(v71 + 64);
  MEMORY[0x28223BE20](v74);
  v70 = &v65 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_22838F1A0();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = sub_22838F700();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v76 = sub_22838F6C0();
  v83 = *(v76 - 8);
  v16 = *(v83 + 64);
  MEMORY[0x28223BE20](v76);
  v18 = &v65 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_22838F580();
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = MEMORY[0x277D83D88];
  sub_228250B20(0, &qword_27D825EB0, MEMORY[0x277CC9388], MEMORY[0x277D83D88]);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22 - 8);
  v25 = &v65 - v24;
  sub_228250B20(0, &qword_27D825EB8, MEMORY[0x277CC93A0], v21);
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x28223BE20](v26 - 8);
  v29 = &v65 - v28;
  v82 = sub_22838F320();
  v30 = *(v82 - 8);
  v31 = *(v30 + 64);
  v32 = MEMORY[0x28223BE20](v82);
  v34 = &v65 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = MEMORY[0x28223BE20](v32);
  v37 = &v65 - v36;
  MEMORY[0x28223BE20](v35);
  v69 = &v65 - v38;
  v39 = sub_22838F270();
  (*(*(v39 - 8) + 56))(v29, 1, 1, v39);
  v40 = sub_22838F250();
  (*(*(v40 - 8) + 56))(v25, 1, 1, v40);
  sub_22838F500();
  sub_22838F620();
  sub_22838F6E0();
  sub_22838F190();
  v41 = v18;
  sub_22838F290();
  v42 = v70;
  sub_22838F300();
  sub_22838F2B0();
  (*(v71 + 8))(v42, v74);
  v71 = v30;
  v43 = *(v30 + 8);
  v44 = v82;
  v43(v34, v82);
  v45 = v43;
  v74 = v43;
  v46 = v73;
  sub_22838F2C0();
  sub_22838F280();
  (*(v72 + 8))(v46, v75);
  v70 = v37;
  v45(v37, v44);
  v47 = v41;
  sub_22838F680();
  LODWORD(v73) = *MEMORY[0x277CC9988];
  v48 = v84;
  v72 = *(v84 + 104);
  v50 = v78;
  v49 = v79;
  (v72)(v79);
  v51 = v77;
  sub_22838F3F0();
  v75 = sub_22838F6B0();
  (*(v80 + 8))(v51, v81);
  v52 = *(v48 + 8);
  v84 = v48 + 8;
  v53 = v50;
  v52(v49, v50);
  v54 = *(v83 + 8);
  v83 += 8;
  v55 = v76;
  v54(v47, v76);
  sub_22838F680();
  (v72)(v49, v73, v53);
  v56 = sub_22838F6B0();
  v52(v49, v53);
  v57 = v74;
  v58 = v82;
  v54(v47, v55);
  v59 = v69;
  if (v75 != v56)
  {
    v60 = v66;
    sub_22838F2E0();
    v61 = v70;
    sub_22838F2A0();
    (*(v67 + 8))(v60, v68);
    v57(v59, v58);
    (*(v71 + 32))(v59, v61, v58);
  }

  sub_22825303C(&qword_27D825EC0, MEMORY[0x277CC9428]);
  sub_22838F410();
  v57(v59, v58);
  v62 = v85;
  v63 = v86;
  result._object = v63;
  result._countAndFlagsBits = v62;
  return result;
}

void sub_228250B20(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t type metadata accessor for StartDateDataSource()
{
  result = qword_27D825EE8;
  if (!qword_27D825EE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_228250BD0()
{
  result = sub_22838FEF0();
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

uint64_t sub_228250CD0(uint64_t a1, uint64_t a2)
{
  *(v2 + qword_27D825ED8) = 0;
  sub_22838FEB0();
  *(v2 + qword_27D825EC8) = a1;
  *(v2 + qword_27D825ED0) = a2;
  sub_228250B20(0, &qword_27D823910, MEMORY[0x277D10F78], MEMORY[0x277D84560]);
  v5 = *(sub_22838FEF0() - 8);
  v6 = *(v5 + 72);
  v7 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  *(swift_allocObject() + 16) = xmmword_228397F40;

  sub_22838FED0();
  v8 = sub_22838FF30();

  sub_228250E84();

  return v8;
}

uint64_t sub_228250E84()
{
  v1 = v0;
  sub_228241C50();
  v3 = v2;
  v4 = *(v2 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v2);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v0 + qword_27D825EC8);
  v14[0] = *(v0 + qword_27D825ED0);
  v14[1] = v8;
  sub_228241D38();
  sub_228241DA0();
  sub_22825303C(&qword_27D825C50, sub_228241D38);
  sub_22825303C(&qword_27D825C58, sub_228241DA0);
  sub_2283919E0();
  v9 = swift_allocObject();
  swift_weakInit();
  v10 = swift_allocObject();
  *(v10 + 16) = sub_228252FEC;
  *(v10 + 24) = v9;
  sub_22825303C(&qword_27D825C68, sub_228241C50);
  v11 = sub_228391AC0();

  (*(v4 + 8))(v7, v3);
  v12 = *(v1 + qword_27D825ED8);
  *(v1 + qword_27D825ED8) = v11;
}

uint64_t sub_2282510D4(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_228251148(a1, a2);
  }

  return result;
}

uint64_t sub_228251148(uint64_t a1, uint64_t a2)
{
  v4 = sub_228390460();
  v58 = *(v4 - 8);
  v59 = v4;
  v5 = *(v58 + 64);
  MEMORY[0x28223BE20](v4);
  v57 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228250B20(0, &unk_280DDBCD0, MEMORY[0x277D74BD0], MEMORY[0x277D83D88]);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v56 = &v49 - v9;
  v53 = sub_22838FFC0();
  v10 = *(v53 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v53);
  v51 = &v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_228390170();
  v62 = *(v13 - 8);
  v63 = v13;
  v14 = *(v62 + 64);
  MEMORY[0x28223BE20](v13);
  v61 = &v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = sub_2283913A0();
  v54 = *(v60 - 8);
  v16 = *(v54 + 64);
  MEMORY[0x28223BE20](v60);
  v18 = &v49 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_228391590();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v23 = &v49 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for ScheduleDurationItem();
  v25 = *(*(v24 - 8) + 64);
  v26 = MEMORY[0x28223BE20](v24);
  v28 = &v49 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = *(v26 + 20);
  v30 = sub_22838F440();
  (*(*(v30 - 8) + 16))(&v28[v29], a1, v30);
  sub_22822BFC0(a2, &v28[*(v24 + 24)]);
  sub_22838F490();
  v52 = v24;
  v31 = *(v24 + 28);
  v55 = v28;
  v32 = &v28[v31];
  type metadata accessor for ScheduleDurationCell();
  sub_22825303C(&qword_27D825810, type metadata accessor for ScheduleDurationCell);
  *v32 = sub_22838FBB0();
  v32[1] = v33;
  sub_228391580();
  if (qword_280DDCF18 != -1)
  {
    swift_once();
  }

  sub_22838F0C0();
  sub_228391540();
  v34 = [objc_opt_self() linkColor];
  v50 = v23;
  v35 = sub_228391450();
  sub_228391420();
  v35(v64, 0);
  sub_228391390();
  sub_22817A958(0, &qword_280DDB990, 0x277D75348);
  sub_228392BD0();
  sub_228391370();
  v64[3] = v19;
  v64[4] = MEMORY[0x277D74C30];
  v49 = v19;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v64);
  (*(v20 + 16))(boxed_opaque_existential_1, v23, v19);
  swift_allocObject();
  swift_weakInit();
  v37 = v51;
  *v51 = 1;
  (*(v10 + 104))(v37, *MEMORY[0x277D10F90], v53);
  v38 = v54;
  v39 = v56;
  v40 = v60;
  (*(v54 + 16))(v56, v18, v60);
  (*(v38 + 56))(v39, 0, 1, v40);
  (*(v58 + 104))(v57, *MEMORY[0x277D11140], v59);
  v41 = v61;
  sub_228390160();
  sub_22819A064(0, &qword_27D823918, &qword_27D827E00);
  v42 = swift_allocObject();
  *(v42 + 16) = xmmword_228397F30;
  *(v42 + 56) = v52;
  *(v42 + 64) = sub_22825303C(&unk_27D825CC0, type metadata accessor for ScheduleDurationItem);
  v43 = __swift_allocate_boxed_opaque_existential_1((v42 + 32));
  v44 = v55;
  sub_228252E18(v55, v43);
  v45 = v63;
  *(v42 + 96) = v63;
  *(v42 + 104) = sub_22825303C(&qword_27D823AB0, MEMORY[0x277D11000]);
  v46 = __swift_allocate_boxed_opaque_existential_1((v42 + 72));
  v47 = v62;
  (*(v62 + 16))(v46, v41, v45);
  sub_22838FF60();

  sub_22838FF70();
  (*(v47 + 8))(v41, v45);
  (*(v38 + 8))(v18, v40);
  (*(v20 + 8))(v50, v49);
  return sub_228252E7C(v44);
}

uint64_t sub_22825195C(void *a1)
{
  sub_228250B20(0, &qword_280DDCDB0, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  v52 = *(v2 - 8);
  v3 = *(v52 + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v5 = v50 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v7 = v50 - v6;
  v55 = sub_22838F440();
  v8 = *(v55 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v55);
  v11 = v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = v50 - v12;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v15 = result;
    v51 = a1;
    v16 = qword_27D825EC8;
    v17 = *(result + qword_27D825EC8);

    sub_228391870();

    v54 = v13;
    v18 = qword_27D825ED0;
    v19 = *(v15 + qword_27D825ED0);

    sub_228391870();

    v20 = *(v15 + v16);
    v53 = v7;
    v21 = *(v15 + v18);
    started = type metadata accessor for StartDateEndDateEditDataSource();
    v23 = *(started + 48);
    v24 = *(started + 52);
    swift_allocObject();

    v25 = sub_228240CB0(v20, v21);

    sub_2283901F0();
    sub_22819A064(0, &qword_27D827750, &qword_27D8238E8);
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_228397F40;
    v27 = MEMORY[0x277D10F80];
    *(v26 + 32) = v25;
    *(v26 + 40) = v27;
    v50[1] = v25;

    sub_228390220();
    v28 = objc_allocWithZone(sub_2283904D0());
    v29 = sub_228390480();
    v30 = qword_280DDCF18;
    v31 = v29;
    if (v30 != -1)
    {
      swift_once();
    }

    sub_22838F0C0();
    v32 = sub_228391FC0();

    [v31 setTitle_];

    v33 = swift_allocObject();
    swift_weakInit();
    v34 = *(v8 + 16);
    v50[0] = v15;
    v35 = v55;
    v34(v11, v54);
    sub_22822BFC0(v53, v5);
    v36 = (*(v8 + 80) + 24) & ~*(v8 + 80);
    v37 = (v9 + *(v52 + 80) + v36) & ~*(v52 + 80);
    v38 = swift_allocObject();
    *(v38 + 16) = v33;
    (*(v8 + 32))(v38 + v36, v11, v35);
    sub_2281E793C(v5, v38 + v37);
    v39 = objc_allocWithZone(MEMORY[0x277D12978]);

    v40 = [v39 initWithRootViewController_];

    v41 = [v31 navigationItem];
    sub_22817A958(0, &qword_27D824138, 0x277D751E0);
    sub_22817A958(0, &qword_27D827890, 0x277D750C8);
    v42 = swift_allocObject();
    v42[2] = sub_228252ED8;
    v42[3] = v38;
    v42[4] = v40;

    v43 = v40;
    sub_228392C90();
    v44 = sub_228392640();
    [v41 setLeftBarButtonItem_];

    v45 = [v31 navigationItem];
    v46 = swift_allocObject();
    v46[2] = sub_228252170;
    v46[3] = 0;
    v46[4] = v43;
    v47 = v43;
    sub_228392C90();
    v48 = sub_228392640();
    [v45 setRightBarButtonItem_];

    v49 = v47;
    [v49 setModalPresentationStyle_];
    [v49 setModalInPresentation_];

    [v51 presentViewController:v49 animated:1 completion:0];

    sub_2281982F0(v53);
    return (*(v8 + 8))(v54, v55);
  }

  return result;
}

id sub_228252070(void *a1)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v3 = *(Strong + qword_27D825EC8);

    sub_228391850();
  }

  swift_beginAccess();
  v4 = swift_weakLoadStrong();
  if (v4)
  {
    v5 = *(v4 + qword_27D825ED0);

    sub_228391850();
  }

  return [a1 dismissViewControllerAnimated:1 completion:0];
}

uint64_t sub_228252184()
{
  sub_228250B20(0, &qword_280DDCDB0, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v17 - v3;
  v5 = sub_2283900D0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v17 - v11;
  sub_228390010();
  v13 = *(v0 + qword_27D825ED0);

  sub_228391870();

  v14 = sub_22838F440();
  LODWORD(v13) = (*(*(v14 - 8) + 48))(v4, 1, v14);
  sub_2281982F0(v4);
  if (v13 != 1)
  {
    sub_228390000();
    (*(v6 + 8))(v12, v5);
    (*(v6 + 32))(v12, v10, v5);
  }

  sub_2283901C0();
  v15 = sub_2283900C0();
  swift_unknownObjectRelease();
  (*(v6 + 8))(v12, v5);
  return v15;
}

uint64_t sub_2282523D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = sub_22838F4A0();
  v50 = *(v7 - 8);
  v51 = v7;
  v8 = *(v50 + 64);
  MEMORY[0x28223BE20](v7);
  v49 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22838F6C0();
  v48 = *(v10 - 8);
  v11 = *(v48 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228250B20(0, &qword_280DDCDB0, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v47 - v16;
  v18 = sub_22838F440();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v21 = MEMORY[0x28223BE20](v18);
  v23 = &v47 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v52 = &v47 - v24;
  v25 = *MEMORY[0x277D767D8];
  if (sub_228392000() == a1 && v26 == a2)
  {
  }

  else
  {
    v28 = sub_228393460();

    if ((v28 & 1) == 0)
    {
      v47 = v3;
      v29 = *(v3 + qword_27D825ED0);

      sub_228391870();

      if ((*(v19 + 48))(v17, 1, v18) == 1)
      {
        sub_2281982F0(v17);
        a3[3] = sub_22838FCC0();
        a3[4] = sub_22825303C(&qword_27D825EF8, MEMORY[0x277D10F20]);
        __swift_allocate_boxed_opaque_existential_1(a3);
        return sub_22838FCB0();
      }

      else
      {
        (*(v19 + 32))(v52, v17, v18);
        sub_22819A064(0, &qword_280DDB870, &qword_280DDB830);
        v37 = swift_allocObject();
        *(v37 + 16) = xmmword_228397F40;
        sub_22838F680();
        v38 = *(v47 + qword_27D825EC8);

        sub_228391870();

        v39 = sub_22838F5F0();
        v40 = *(v19 + 8);
        v40(v23, v18);
        (*(v48 + 8))(v13, v10);
        v41 = MEMORY[0x277D83C10];
        *(v37 + 56) = MEMORY[0x277D83B88];
        *(v37 + 64) = v41;
        *(v37 + 32) = v39;
        if (qword_280DDCF18 != -1)
        {
          swift_once();
        }

        v42 = qword_280DDCF20;

        sub_22838F0C0();
        if (*(v37 + 16))
        {
          sub_228391FD0();
        }

        else
        {
        }

        v53 = 0x74497265746F6F46;
        v54 = 0xEB000000005F6D65;
        v43 = v49;
        sub_22838F490();
        v44 = sub_22838F450();
        v46 = v45;
        (*(v50 + 8))(v43, v51);
        MEMORY[0x22AAB5C80](v44, v46);

        a3[3] = sub_228390330();
        a3[4] = sub_22825303C(&qword_27D8244F8, MEMORY[0x277D110D8]);
        __swift_allocate_boxed_opaque_existential_1(a3);
        sub_228390320();
        return (v40)(v52, v18);
      }
    }
  }

  if (qword_27D823300 != -1)
  {
    swift_once();
  }

  v31 = sub_22838F0C0();
  v33 = v32;
  type metadata accessor for ScheduleHeaderCell();
  sub_22825303C(&qword_27D825830, type metadata accessor for ScheduleHeaderCell);
  v34 = sub_22838FBB0();
  v36 = v35;
  sub_22838FBB0();

  a3[3] = &type metadata for ScheduleHeaderItem;
  a3[4] = sub_228194464();
  result = swift_allocObject();
  *a3 = result;
  *(result + 16) = v31;
  *(result + 24) = v33;
  *(result + 32) = 0;
  *(result + 40) = nullsub_1;
  *(result + 48) = 0;
  *(result + 56) = v34;
  *(result + 64) = v36;
  return result;
}

uint64_t sub_228252B54()
{
  v1 = *(v0 + qword_27D825EC8);

  v2 = *(v0 + qword_27D825ED0);

  v3 = *(v0 + qword_27D825ED8);

  v4 = qword_27D825EE0;
  v5 = sub_22838FEF0();
  v6 = *(*(v5 - 8) + 8);

  return v6(v0 + v4, v5);
}

uint64_t sub_228252BEC()
{
  v0 = sub_22838FFB0();
  v1 = *(v0 + qword_27D825EC8);

  v2 = *(v0 + qword_27D825ED0);

  v3 = *(v0 + qword_27D825ED8);

  v4 = qword_27D825EE0;
  v5 = sub_22838FEF0();
  (*(*(v5 - 8) + 8))(v0 + v4, v5);

  v6 = *(*v0 + 48);
  v7 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_228252CFC()
{
  type metadata accessor for ScheduleHeaderCell();
  sub_22825303C(&qword_27D825830, type metadata accessor for ScheduleHeaderCell);
  sub_2283926D0();
  type metadata accessor for ScheduleDurationCell();
  sub_22825303C(&qword_27D825810, type metadata accessor for ScheduleDurationCell);
  sub_2283926B0();
  sub_2283904F0();
  sub_2283926C0();
  sub_228390300();
  return sub_2283926C0();
}

uint64_t sub_228252E18(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ScheduleDurationItem();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_228252E7C(uint64_t a1)
{
  v2 = type metadata accessor for ScheduleDurationItem();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_228252ED8(void *a1)
{
  v3 = *(sub_22838F440() - 8);
  v4 = ((*(v3 + 80) + 24) & ~*(v3 + 80)) + *(v3 + 64);
  sub_228250B20(0, &qword_280DDCDB0, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  v6 = *(*(v5 - 8) + 80);
  v7 = *(v1 + 16);

  return sub_228252070(a1);
}

uint64_t sub_228252FF4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  sub_228253084();
  return v4(a1, a1 + *(v5 + 48));
}

uint64_t sub_22825303C(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_228253084()
{
  if (!qword_27D825F00)
  {
    sub_22838F440();
    sub_228250B20(255, &qword_280DDCDB0, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27D825F00);
    }
  }
}

uint64_t Dosage.description.getter()
{
  v1 = v0;
  sub_2283931D0();
  MEMORY[0x22AAB5C80](0x656761736F44, 0xE600000000000000);
  MEMORY[0x22AAB5C80](0x3D64697575203ALL, 0xE700000000000000);
  sub_22838F4A0();
  sub_228253328(&qword_27D824618, MEMORY[0x277CC95F0]);
  v2 = sub_228393420();
  MEMORY[0x22AAB5C80](v2);

  MEMORY[0x22AAB5C80](0x3D656D6974202CLL, 0xE700000000000000);
  v3 = type metadata accessor for Dosage();
  v4 = *(v3 + 20);
  sub_22838F440();
  sub_228253328(&qword_27D8283D0, MEMORY[0x277CC9578]);
  v5 = sub_228393420();
  MEMORY[0x22AAB5C80](v5);

  MEMORY[0x22AAB5C80](0x746E756F6D61202CLL, 0xE90000000000003DLL);
  v6 = *(v1 + *(v3 + 24));
  sub_228392400();
  return 0;
}

uint64_t type metadata accessor for Dosage()
{
  result = qword_27D825F08;
  if (!qword_27D825F08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_228253328(unint64_t *a1, void (*a2)(uint64_t))
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

BOOL static Dosage.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (sub_22838F470() & 1) != 0 && (v4 = type metadata accessor for Dosage(), v5 = *(v4 + 20), (sub_22838F3D0()))
  {
    return *(a1 + *(v4 + 24)) == *(a2 + *(v4 + 24));
  }

  else
  {
    return 0;
  }
}

BOOL sub_2282533E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (sub_22838F470() & 1) != 0 && (v6 = *(a3 + 20), (sub_22838F3D0()))
  {
    return *(a1 + *(a3 + 24)) == *(a2 + *(a3 + 24));
  }

  else
  {
    return 0;
  }
}

uint64_t sub_228253474()
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

uint64_t sub_228253534(uint64_t a1)
{
  v2 = sub_228253F1C();

  return MEMORY[0x282169440](a1, v2);
}

uint64_t sub_228253580(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC19HealthMedicationsUI19SeparatorHeaderCell_item;
  swift_beginAccess();
  sub_22818FD64(a1, v1 + v3);
  swift_endAccess();
  sub_22817E6C8(v1 + v3, v8);
  if (v9)
  {
    sub_22817A700();
    if (swift_dynamicCast())
    {
      v4 = sub_2282537B4();
      [v4 setColor_];
    }

    v5 = a1;
  }

  else
  {
    sub_22819482C(a1);
    v5 = v8;
  }

  return sub_22819482C(v5);
}

void (*sub_228253664(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x50uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC19HealthMedicationsUI19SeparatorHeaderCell_item;
  *(v3 + 64) = v1;
  *(v3 + 72) = v4;
  swift_beginAccess();
  return sub_2282536EC;
}

void sub_2282536EC(void **a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    sub_22817E6C8(v3[8] + v3[9], v3);
    if (v3[3])
    {
      sub_22817A700();
      if (swift_dynamicCast())
      {
        v4 = v3[5];
        v6 = v3[7];
        v5 = v3[8];
        v7 = sub_2282537B4();
        [v7 setColor_];
      }
    }

    else
    {
      sub_22819482C(v3);
    }
  }

  free(v3);
}

id sub_2282537B4()
{
  v1 = OBJC_IVAR____TtC19HealthMedicationsUI19SeparatorHeaderCell____lazy_storage___separatorView;
  v2 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI19SeparatorHeaderCell____lazy_storage___separatorView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI19SeparatorHeaderCell____lazy_storage___separatorView);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x277D12A48]) initWithFrame_];
    [v4 setTranslatesAutoresizingMaskIntoConstraints_];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

void sub_228253998()
{
  v1 = v0;
  v2 = sub_2282537B4();
  [v0 addSubview_];

  v3 = objc_opt_self();
  sub_228180ED0();
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_228397F00;
  v5 = OBJC_IVAR____TtC19HealthMedicationsUI19SeparatorHeaderCell____lazy_storage___separatorView;
  v6 = [*&v1[OBJC_IVAR____TtC19HealthMedicationsUI19SeparatorHeaderCell____lazy_storage___separatorView] heightAnchor];
  v7 = [v6 constraintEqualToConstant_];

  *(v4 + 32) = v7;
  v8 = [*&v1[v5] leadingAnchor];
  v9 = [v1 layoutMarginsGuide];
  v10 = [v9 leadingAnchor];

  v11 = [v8 constraintEqualToAnchor:v10 constant:3.0];
  *(v4 + 40) = v11;
  v12 = [*&v1[v5] trailingAnchor];
  v13 = [v1 layoutMarginsGuide];
  v14 = [v13 trailingAnchor];

  v15 = [v12 constraintEqualToAnchor:v14 constant:-3.0];
  *(v4 + 48) = v15;
  v16 = [*&v1[v5] centerYAnchor];
  v17 = [v1 centerYAnchor];
  v18 = [v16 constraintEqualToAnchor_];

  *(v4 + 56) = v18;
  sub_2281BF1B8();
  v19 = sub_228392190();

  [v3 activateConstraints_];
}

id sub_228253C1C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SeparatorHeaderCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_228253CC0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_228253D08(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_228253D5C@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC19HealthMedicationsUI19SeparatorHeaderCell_item;
  swift_beginAccess();
  return sub_22817E6C8(v1 + v3, a1);
}

uint64_t (*sub_228253DB8(uint64_t **a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = sub_228253664(v2);
  return sub_228194584;
}

uint64_t sub_228253E28@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC19HealthMedicationsUI19SeparatorHeaderCell_item;
  swift_beginAccess();
  return sub_22817E6C8(v3 + v4, a1);
}

uint64_t (*sub_228253EA8(uint64_t **a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *v1;
  v3[4] = sub_228253664(v3);
  return sub_228194890;
}

unint64_t sub_228253F1C()
{
  result = qword_27D825F28;
  if (!qword_27D825F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D825F28);
  }

  return result;
}

unint64_t sub_228253F70()
{
  result = qword_27D825F30;
  if (!qword_27D825F30)
  {
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_27D825F30);
  }

  return result;
}

uint64_t sub_228253FDC()
{
  sub_228182110();
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_228397F40;
  v1 = type metadata accessor for InteractionFactorsInfoDataSource();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  v4 = sub_22825F9D0();
  v5 = sub_228254048();
  *(v0 + 32) = v4;
  *(v0 + 40) = v5;
  return v0;
}

unint64_t sub_228254048()
{
  result = qword_27D825F38;
  if (!qword_27D825F38)
  {
    type metadata accessor for InteractionFactorsInfoDataSource();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D825F38);
  }

  return result;
}

void *sub_2282540A0()
{
  v1 = qword_27D825F48;
  if (*(v0 + qword_27D825F48))
  {
    v2 = *(v0 + qword_27D825F48);
  }

  else
  {
    v3 = v0;
    v4 = sub_228254CCC();
    v5 = *(v0 + qword_27D825F58);
    v6 = *(v0 + qword_27D825F70);
    type metadata accessor for InteractionFactorsItem();
    v2 = swift_allocObject();
    type metadata accessor for InteractionFactorsCell();
    sub_228255408(&qword_27D825F60, type metadata accessor for InteractionFactorsCell);

    v7 = sub_22838FBB0();
    v2[2] = v4;
    v2[3] = v7;
    v2[4] = v8;
    v2[5] = v5;
    v2[6] = v6;
    v9 = *(v0 + v1);
    *(v3 + v1) = v2;
  }

  return v2;
}

uint64_t sub_2282541B0(uint64_t a1, uint64_t a2)
{
  sub_22825569C(0, &qword_280DDBAD0, MEMORY[0x277D85248], MEMORY[0x277D83D88]);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v41 = v37 - v7;
  sub_228192918();
  v9 = *(v8 - 8);
  v43 = v8;
  v44 = v9;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v39 = v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2282555C8();
  v13 = *(v12 - 8);
  v45 = v12;
  v46 = v13;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v40 = v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = qword_27D825F40;
  sub_228390890();
  sub_228390880();
  sub_228390830();

  sub_22817A958(0, &qword_280DDBAF0, 0x277CBEBD0);
  sub_2283925F0();
  v17 = sub_2283907E0();
  v18 = *(v17 + 48);
  v19 = *(v17 + 52);
  swift_allocObject();
  *(v2 + v16) = sub_228390700();
  *(v2 + qword_27D825F48) = 0;
  *(v2 + qword_27D825F50) = 0;
  v42 = a1;
  *(v2 + qword_27D825F58) = a1;
  *(v2 + qword_27D825F70) = a2;

  v38 = sub_22838F920();
  v20 = *(v38 + qword_27D825F40);
  swift_retain_n();

  v21 = sub_228390710();

  sub_22825569C(0, &qword_27D823D88, sub_2281929AC, MEMORY[0x277D84560]);
  sub_2281929AC();
  v37[1] = v22;
  v23 = *(*(v22 - 8) + 72);
  v24 = (*(*(v22 - 8) + 80) + 32) & ~*(*(v22 - 8) + 80);
  *(swift_allocObject() + 16) = xmmword_228398270;
  sub_22817A958(0, &qword_27D823D90, 0x277CCD570);
  sub_228392670();
  sub_228392660();

  sub_228392690();
  sub_228392660();

  sub_228392680();
  sub_228392660();

  sub_228255408(&qword_27D823CD8, sub_2281929AC);
  v25 = v39;
  sub_2283917C0();
  sub_22817A958(0, &qword_280DDCEE0, 0x277D85C78);
  v26 = sub_228392790();
  v47 = v26;
  v27 = sub_228392730();
  v28 = v41;
  (*(*(v27 - 8) + 56))(v41, 1, 1, v27);
  sub_228255408(&qword_27D823D10, sub_228192918);
  sub_2281A1504();
  v29 = v40;
  v30 = v43;
  sub_228391A70();
  sub_2281A16F0(v28);

  (*(v44 + 8))(v25, v30);
  swift_allocObject();
  v31 = v38;
  swift_weakInit();
  v32 = v31;

  sub_228255408(&qword_27D825F90, sub_2282555C8);
  v33 = v45;
  v34 = sub_228391A00();

  (*(v46 + 8))(v29, v33);
  v35 = *(v32 + qword_27D825F50);
  *(v32 + qword_27D825F50) = v34;

  sub_22825498C();

  return v32;
}

uint64_t sub_228254818()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_22825498C();
  }

  return result;
}

uint64_t sub_228254870()
{
  v0 = sub_2283900D0();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x28223BE20](v0);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v11 - v6;
  sub_228390040();
  sub_228390000();
  v8 = *(v1 + 8);
  v8(v5, v0);
  v9 = sub_2283900C0();
  v8(v7, v0);
  return v9;
}

uint64_t sub_22825498C()
{
  v22 = sub_22838F4A0();
  v1 = *(v22 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v22);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_228254CCC();
  v6 = *(v0 + qword_27D825F58);
  v7 = *(v0 + qword_27D825F70);
  v8 = type metadata accessor for InteractionFactorsItem();
  v9 = swift_allocObject();
  type metadata accessor for InteractionFactorsCell();
  sub_228255408(&qword_27D825F60, type metadata accessor for InteractionFactorsCell);

  v10 = sub_22838FBB0();
  v9[2] = v5;
  v9[3] = v10;
  v9[4] = v11;
  v9[5] = v6;
  v9[6] = v7;
  v12 = *(v0 + qword_27D825F48);
  *(v0 + qword_27D825F48) = v9;

  sub_22838F910();
  sub_22838FCD0();

  v13 = MEMORY[0x277D84560];
  sub_22825569C(0, &qword_27D823910, MEMORY[0x277D10F78], MEMORY[0x277D84560]);
  v14 = *(sub_22838FEF0() - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  v21 = xmmword_228397F40;
  *(v17 + 16) = xmmword_228397F40;
  sub_22825569C(0, &qword_27D823918, sub_228182780, v13);
  v18 = swift_allocObject();
  *(v18 + 16) = v21;
  v19 = sub_2282540A0();
  *(v18 + 56) = v8;
  *(v18 + 64) = sub_228255408(&qword_27D825F98, type metadata accessor for InteractionFactorsItem);
  *(v18 + 32) = v19;
  sub_22838F490();
  sub_22838F450();
  (*(v1 + 8))(v4, v22);
  sub_22838FED0();
  sub_22838FF50();
}

char *sub_228254CCC()
{
  v1 = *(v0 + qword_27D825F40);
  if ((sub_228390770() & 1) == 0)
  {
    v2 = MEMORY[0x277D84F90];
    if ((sub_2283907C0() & 1) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_7;
  }

  v2 = sub_228198B08(0, 1, 1, MEMORY[0x277D84F90]);
  v4 = *(v2 + 2);
  v3 = *(v2 + 3);
  if (v4 >= v3 >> 1)
  {
    v2 = sub_228198B08((v3 > 1), v4 + 1, 1, v2);
  }

  *(v2 + 2) = v4 + 1;
  *&v2[8 * v4 + 32] = 1;
  if (sub_2283907C0())
  {
LABEL_7:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_228198B08(0, *(v2 + 2) + 1, 1, v2);
    }

    v6 = *(v2 + 2);
    v5 = *(v2 + 3);
    if (v6 >= v5 >> 1)
    {
      v2 = sub_228198B08((v5 > 1), v6 + 1, 1, v2);
    }

    *(v2 + 2) = v6 + 1;
    *&v2[8 * v6 + 32] = 2;
  }

LABEL_12:
  if (sub_228390790())
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_228198B08(0, *(v2 + 2) + 1, 1, v2);
    }

    v8 = *(v2 + 2);
    v7 = *(v2 + 3);
    if (v8 >= v7 >> 1)
    {
      v2 = sub_228198B08((v7 > 1), v8 + 1, 1, v2);
    }

    *(v2 + 2) = v8 + 1;
    *&v2[8 * v8 + 32] = 3;
  }

  return v2;
}

uint64_t sub_228254E90()
{
  v1 = *(v0 + qword_27D825F40);

  v2 = *(v0 + qword_27D825F48);

  v3 = *(v0 + qword_27D825F50);

  v4 = *(v0 + qword_27D825F58);
}

uint64_t InteractionFactorsDataSource.deinit()
{
  v0 = _s19HealthMedicationsUI34InteractionSeperatorLineDataSourceCfd_0();
  v1 = *(v0 + qword_27D825F40);

  v2 = *(v0 + qword_27D825F48);

  v3 = *(v0 + qword_27D825F50);

  v4 = *(v0 + qword_27D825F58);

  return v0;
}

uint64_t InteractionFactorsDataSource.__deallocating_deinit()
{
  v0 = _s19HealthMedicationsUI34InteractionSeperatorLineDataSourceCfd_0();
  v1 = *(v0 + qword_27D825F40);

  v2 = *(v0 + qword_27D825F48);

  v3 = *(v0 + qword_27D825F50);

  v4 = *(v0 + qword_27D825F58);

  return swift_deallocClassInstance();
}

Swift::Void __swiftcall InteractionFactorsDataSource.registerCells(for:)(UICollectionView *a1)
{
  type metadata accessor for InteractionFactorsCell();
  sub_228255408(&qword_27D825F60, type metadata accessor for InteractionFactorsCell);
  sub_2283926B0();
  sub_228390300();
  sub_2283926C0();
}

uint64_t sub_2282550D0()
{
  type metadata accessor for InteractionFactorsCell();
  sub_228255408(&qword_27D825F60, type metadata accessor for InteractionFactorsCell);
  sub_2283926B0();
  sub_228390300();
  return sub_2283926C0();
}

uint64_t InteractionFactorsDataSource.supplementaryItem(ofKind:at:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_22838F4A0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *MEMORY[0x277D767D0];
  if (sub_228392000() == a1 && v12 == a2)
  {
  }

  else
  {
    v14 = sub_228393460();

    if ((v14 & 1) == 0)
    {
      a3[3] = sub_22838FC00();
      a3[4] = sub_228255408(&qword_27D823958, MEMORY[0x277D10EC8]);
      __swift_allocate_boxed_opaque_existential_1(a3);
      return sub_22838FBF0();
    }
  }

  if (qword_280DDCF18 != -1)
  {
    swift_once();
  }

  sub_22838F0C0();
  v19[0] = 0x74497265746F6F46;
  v19[1] = 0xEB000000005F6D65;
  sub_22838F490();
  v16 = sub_22838F450();
  v18 = v17;
  (*(v7 + 8))(v10, v6);
  MEMORY[0x22AAB5C80](v16, v18);

  a3[3] = sub_228390330();
  a3[4] = sub_228255408(&qword_27D8244F8, MEMORY[0x277D110D8]);
  __swift_allocate_boxed_opaque_existential_1(a3);
  return sub_228390320();
}

uint64_t sub_228255408(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for InteractionFactorsDataSource()
{
  result = qword_27D825F78;
  if (!qword_27D825F78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2282555C8()
{
  if (!qword_27D825F88)
  {
    sub_228192918();
    sub_22817A958(255, &qword_280DDCEE0, 0x277D85C78);
    sub_228255408(&qword_27D823D10, sub_228192918);
    sub_2281A1504();
    v0 = sub_2283917D0();
    if (!v1)
    {
      atomic_store(v0, &qword_27D825F88);
    }
  }
}

void sub_22825569C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t type metadata accessor for ManualStrengthDataSource()
{
  result = qword_27D825FD8;
  if (!qword_27D825FD8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2282557D8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_22838F4A0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = qword_27D825FA0;
  sub_2281E00EC(0, &qword_280DDCE30, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_22839CC40;
  v13 = objc_opt_self();
  *(v12 + 32) = [v13 gramUnitWithMetricPrefix_];
  *(v12 + 40) = [v13 gramUnitWithMetricPrefix_];
  *(v12 + 48) = [v13 gramUnit];
  *(v12 + 56) = [v13 literUnitWithMetricPrefix_];
  *(v12 + 64) = [v13 percentUnit];
  *(v3 + v11) = v12;
  v14 = (v3 + qword_27D825FB8);
  v15 = *MEMORY[0x277D12788];
  v38[0] = sub_228392000();
  v38[1] = v16;

  MEMORY[0x22AAB5C80](0xD000000000000013, 0x80000002283AED60);

  v17 = v38[1];
  *v14 = v38[0];
  v14[1] = v17;
  v18 = qword_27D825FC0;
  sub_22819DF44();
  v38[0] = 0;
  v38[1] = 0;
  v20 = *(v19 + 48);
  v21 = *(v19 + 52);
  swift_allocObject();
  *(v3 + v18) = sub_228391890();
  v22 = qword_27D825FC8;
  v38[0] = 0;
  sub_228257A7C();
  v24 = *(v23 + 48);
  v25 = *(v23 + 52);
  swift_allocObject();
  *(v3 + v22) = sub_228391890();
  *(v3 + qword_27D825FD0) = MEMORY[0x277D84FA0];
  *(v3 + qword_27D825FB0) = a2;
  *(v3 + qword_27D825FA8) = a1;
  v38[0] = 0;
  v38[1] = 0xE000000000000000;
  v37[1] = a1;

  sub_2283931D0();

  strcpy(v38, "MutableArray<");
  HIWORD(v38[1]) = -4864;
  sub_22838F490();
  v26 = sub_22838F450();
  v28 = v27;
  (*(v7 + 8))(v10, v6);
  MEMORY[0x22AAB5C80](v26, v28);

  MEMORY[0x22AAB5C80](62, 0xE100000000000000);
  v29 = sub_22838FF30();
  sub_228257D4C(0, &qword_27D823910, MEMORY[0x277D10F78], MEMORY[0x277D84560]);
  v30 = *(sub_22838FEF0() - 8);
  v31 = (*(v30 + 80) + 32) & ~*(v30 + 80);
  v37[0] = *(v30 + 72);
  *(swift_allocObject() + 16) = xmmword_228397F30;
  v32 = qword_280DDCF18;

  if (v32 != -1)
  {
    swift_once();
  }

  sub_22838F0C0();
  sub_228257D4C(0, &qword_27D823918, sub_228182780, MEMORY[0x277D84560]);
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_228397F40;
  *(v33 + 56) = type metadata accessor for FieldItem();
  *(v33 + 64) = sub_228257D04(&unk_27D828790, type metadata accessor for FieldItem);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v33 + 32));
  sub_228255E0C(boxed_opaque_existential_1);
  sub_22838FED0();
  sub_22838F0C0();
  v35 = sub_22825601C();
  sub_228194894(v35);

  sub_22838FED0();
  sub_22838FF50();

  sub_228256258();

  return v29;
}

uint64_t sub_228255E0C@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + qword_27D825FC0);
  sub_228391870();
  if (qword_280DDCF18 != -1)
  {
    swift_once();
  }

  if (v25)
  {
    v4 = v25;
  }

  else
  {
    v4 = 0xE000000000000000;
  }

  if (v25)
  {
    v5 = v24;
  }

  else
  {
    v5 = 0;
  }

  v22 = v5;
  v23 = v4;
  v6 = sub_22838F0C0();
  v20 = v7;
  v21 = v6;
  v8 = swift_allocObject();
  swift_weakInit();

  sub_22838F490();
  v9 = type metadata accessor for FieldItem();
  v10 = (a1 + v9[5]);
  v11 = (a1 + v9[6]);
  v12 = a1 + v9[10];
  v13 = (a1 + v9[14]);
  v14 = (a1 + v9[15]);
  type metadata accessor for FieldCell();
  sub_228257D04(&qword_27D828780, type metadata accessor for FieldCell);
  v15 = sub_22838FBB0();
  v17 = v16;

  *v14 = v15;
  v14[1] = v17;
  *v10 = v22;
  v10[1] = v23;
  *v11 = v21;
  v11[1] = v20;
  *(a1 + v9[7]) = 0x404A000000000000;
  *v12 = 0;
  *(v12 + 8) = 1;
  *(a1 + v9[9]) = 1;
  *(a1 + v9[8]) = 1;
  *(a1 + v9[12]) = 0;
  *v13 = 0;
  v13[1] = 0;
  v19 = (a1 + v9[13]);
  *v19 = sub_228257DB8;
  v19[1] = v8;
  *(a1 + v9[11]) = 0;
  return result;
}

void *sub_22825601C()
{
  v1 = *(v0 + qword_27D825FA0);
  if (v1 >> 62)
  {
    if (v1 < 0)
    {
      v18 = *(v0 + qword_27D825FA0);
    }

    v2 = sub_2283930D0();
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x277D84F90];
  if (!v2)
  {
    return v3;
  }

  v22 = MEMORY[0x277D84F90];
  result = sub_2281C9DB4(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v5 = 0;
    v3 = v22;
    do
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x22AAB6D80](v5, v1);
      }

      else
      {
        v6 = *(v1 + 8 * v5 + 32);
      }

      v7 = v6;
      v20 = sub_228390170();
      v21 = sub_228257D04(&qword_27D824520, MEMORY[0x277D11000]);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v19);
      sub_228256C54(v7, boxed_opaque_existential_1);

      v22 = v3;
      v10 = *(v3 + 16);
      v9 = *(v3 + 24);
      if (v10 >= v9 >> 1)
      {
        sub_2281C9DB4((v9 > 1), v10 + 1, 1);
      }

      ++v5;
      v11 = v20;
      v12 = v21;
      v13 = __swift_mutable_project_boxed_opaque_existential_1(v19, v20);
      v14 = *(*(v11 - 8) + 64);
      MEMORY[0x28223BE20](v13);
      v16 = v19 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v17 + 16))(v16);
      sub_2282E841C(v10, v16, &v22, v11, v12);
      __swift_destroy_boxed_opaque_existential_0(v19);
      v3 = v22;
    }

    while (v2 != v5);
    return v3;
  }

  __break(1u);
  return result;
}

uint64_t sub_228256258()
{
  sub_228257B60();
  v2 = *(v1 - 8);
  v18 = v1;
  v19 = v2;
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v17 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228257C48();
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *(v0 + qword_27D825FC8);
  v11 = v21;
  sub_228257A7C();
  v16 = v12;
  sub_228257B14();
  sub_228257D04(&qword_27D826018, sub_228257A7C);

  sub_2283919A0();
  swift_allocObject();
  swift_weakInit();
  sub_228257D04(&qword_27D826028, sub_228257C48);
  sub_228391AC0();

  (*(v7 + 8))(v10, v6);
  swift_beginAccess();
  sub_228391800();
  swift_endAccess();

  v20 = *(v0 + qword_27D825FC0);
  v21 = v11;
  sub_22819DF44();
  sub_228257D04(&qword_27D824058, sub_22819DF44);
  v13 = v17;
  sub_2283919E0();

  swift_allocObject();
  swift_weakInit();
  sub_228257D04(&qword_27D826030, sub_228257B60);
  v14 = v18;
  sub_228391AC0();

  (*(v19 + 8))(v13, v14);
  swift_beginAccess();
  sub_228391800();
  swift_endAccess();
}

uint64_t sub_228256648()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_228257D4C(0, &qword_27D823918, sub_228182780, MEMORY[0x277D84560]);
    v1 = swift_allocObject();
    *(v1 + 16) = xmmword_228397F40;
    *(v1 + 56) = type metadata accessor for FieldItem();
    *(v1 + 64) = sub_228257D04(&unk_27D828790, type metadata accessor for FieldItem);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v1 + 32));
    sub_228255E0C(boxed_opaque_existential_1);
    sub_22838FF60();

    v3 = sub_22825601C();
    sub_228194894(v3);

    sub_22838FF60();
  }

  return result;
}

uint64_t sub_228256794(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 16);
  if (*a1)
  {
    v3 = v2 == 0;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    goto LABEL_6;
  }

  v6 = HIBYTE(v2) & 0xF;
  if ((v2 & 0x2000000000000000) == 0)
  {
    v6 = *(a1 + 8) & 0xFFFFFFFFFFFFLL;
  }

  if (!v6)
  {
LABEL_6:
    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (!result)
    {
      return result;
    }

    v5 = *(result + qword_27D825FA8);

    sub_228391850();
  }

  else
  {
    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (!result)
    {
      return result;
    }

    v7 = *(result + qword_27D825FA8);
    v8 = v1;

    v9 = v8;
    sub_228391850();
  }
}

uint64_t sub_2282568DC()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = *(result + qword_27D825FC0);

    sub_228391850();
  }

  return result;
}

unint64_t sub_22825697C@<X0>(uint64_t *a1@<X8>)
{
  sub_228257D4C(0, &qword_27D824EB0, MEMORY[0x277D10FE0], MEMORY[0x277D83D88]);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v16 - v4;
  v6 = sub_22838FEF0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22838FF40();
  result = sub_22838F750();
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (result >= *(v11 + 16))
  {
LABEL_8:
    __break(1u);
    return result;
  }

  (*(v7 + 16))(v10, v11 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * result, v6);

  sub_22838FEE0();
  v14 = v13;
  (*(v7 + 8))(v10, v6);
  if (v14)
  {
    v15 = sub_228390130();
    (*(*(v15 - 8) + 56))(v5, 1, 1, v15);
    a1[3] = sub_228390150();
    a1[4] = sub_228257D04(&qword_27D824EC8, MEMORY[0x277D10FE8]);
    __swift_allocate_boxed_opaque_existential_1(a1);
    return sub_228390140();
  }

  else
  {
    a1[3] = sub_22838FC00();
    a1[4] = sub_228257D04(&qword_27D823958, MEMORY[0x277D10EC8]);
    __swift_allocate_boxed_opaque_existential_1(a1);
    return sub_22838FBF0();
  }
}

uint64_t sub_228256C54@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v85 = a2;
  v3 = sub_228390460();
  v83 = *(v3 - 8);
  v84 = v3;
  v4 = *(v83 + 64);
  MEMORY[0x28223BE20](v3);
  v82 = &v66 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x277D83D88];
  sub_228257D4C(0, &unk_280DDBCD0, MEMORY[0x277D74BD0], MEMORY[0x277D83D88]);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v81 = &v66 - v9;
  v10 = sub_22838FFC0();
  v77 = *(v10 - 8);
  v78 = v10;
  v11 = *(v77 + 64);
  MEMORY[0x28223BE20](v10);
  v80 = &v66 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_228391220();
  v75 = *(v13 - 8);
  v76 = v13;
  v14 = *(v75 + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v66 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228257D4C(0, &qword_280DDBCE8, MEMORY[0x277D74AC8], v6);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v71 = &v66 - v19;
  v74 = sub_228391250();
  v73 = *(v74 - 8);
  v20 = *(v73 + 64);
  MEMORY[0x28223BE20](v74);
  v22 = &v66 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = sub_228391590();
  v79 = *(v86 - 8);
  v23 = *(v79 + 64);
  MEMORY[0x28223BE20](v86);
  v25 = &v66 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228391520();
  sub_228390890();
  sub_228390880();
  v26 = sub_228390830();

  v27 = [objc_allocWithZone(MEMORY[0x277CCDAC0]) initWithHealthStore_];

  v28 = a1;
  v29 = [v27 localizedDisplayNameForUnit:a1 value:0 nameContext:1];

  v30 = sub_228392000();
  v32 = v31;

  v72 = v30;
  sub_228391540();
  v70 = objc_opt_self();
  v33 = [v70 labelColor];
  v34 = sub_228391450();
  sub_228391420();
  v34(&v90, 0);
  v35 = *(v87 + qword_27D825FC8);
  sub_228391870();
  v36 = v90;
  if (v90)
  {
    sub_228257B14();
    v37 = v28;
    sub_228392C60();
  }

  v90 = 0x5F6D657469;
  v91 = 0xE500000000000000;
  v38 = [v28 unitString];
  v39 = sub_228392000();
  v41 = v40;

  MEMORY[0x22AAB5C80](v39, v41);

  v69 = v90;
  v68 = v91;
  v42 = v86;
  v92 = v86;
  v93 = MEMORY[0x277D74C30];
  v43 = __swift_allocate_boxed_opaque_existential_1(&v90);
  v44 = v79;
  v45 = *(v79 + 16);
  v67 = v25;
  v45(v43, v25, v42);
  sub_228257D4C(0, &unk_280DDB890, MEMORY[0x277D74AE0], MEMORY[0x277D84560]);
  v46 = *(sub_2283912F0() - 8);
  v47 = *(v46 + 72);
  v48 = (*(v46 + 80) + 32) & ~*(v46 + 80);
  v49 = swift_allocObject();
  *(v49 + 16) = xmmword_228397F40;
  v66 = v49;
  v50 = sub_228391230();
  (*(*(v50 - 8) + 56))(v71, 1, 1, v50);
  sub_228391240();
  v52 = v75;
  v51 = v76;
  (*(v75 + 104))(v16, *MEMORY[0x277D74A98], v76);
  sub_2283912E0();
  (*(v52 + 8))(v16, v51);
  (*(v73 + 8))(v22, v74);
  v53 = swift_allocObject();
  v54 = v87;
  swift_weakInit();
  v55 = swift_allocObject();
  *(v55 + 16) = v53;
  *(v55 + 24) = v28;
  v56 = v80;
  *v80 = 1;
  (*(v77 + 104))(v56, *MEMORY[0x277D10F90], v78);
  v57 = v28;

  v58 = v81;
  sub_228391390();
  v59 = [v70 secondarySystemBackgroundColor];
  sub_228391370();
  v60 = sub_2283913A0();
  (*(*(v60 - 8) + 56))(v58, 0, 1, v60);
  v62 = *(v54 + qword_27D825FB8);
  v61 = *(v54 + qword_27D825FB8 + 8);
  v88 = 0x6C654374696E552ELL;
  v89 = 0xEA00000000002E6CLL;
  MEMORY[0x22AAB5C80](v72, v32);

  v63 = v88;
  v64 = v89;
  v88 = v62;
  v89 = v61;

  MEMORY[0x22AAB5C80](v63, v64);

  (*(v83 + 104))(v82, *MEMORY[0x277D11140], v84);
  sub_228390160();
  (*(v44 + 8))(v67, v86);
}

uint64_t sub_22825757C(uint64_t a1, uint64_t a2, void *a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v5 = *(result + qword_27D825FC8);

    v6 = a3;
    sub_228391850();
  }

  return result;
}

uint64_t sub_228257640()
{
  v1 = *(v0 + qword_27D825FA0);

  v2 = *(v0 + qword_27D825FA8);

  v3 = *(v0 + qword_27D825FB8 + 8);

  v4 = *(v0 + qword_27D825FC0);

  v5 = *(v0 + qword_27D825FC8);

  v6 = *(v0 + qword_27D825FD0);
}

uint64_t sub_2282576C4()
{
  v0 = sub_22838FFB0();
  v1 = *(v0 + qword_27D825FA0);

  v2 = *(v0 + qword_27D825FA8);

  v3 = *(v0 + qword_27D825FB8 + 8);

  v4 = *(v0 + qword_27D825FC0);

  v5 = *(v0 + qword_27D825FC8);

  v6 = *(v0 + qword_27D825FD0);

  return swift_deallocClassInstance();
}

uint64_t sub_228257784()
{
  sub_228390120();
  sub_2283926D0();
  type metadata accessor for FieldCell();
  sub_228257D04(&qword_27D828780, type metadata accessor for FieldCell);
  sub_2283926B0();
  type metadata accessor for SelectionOptionsCell();
  sub_228257D04(&qword_27D825FF8, type metadata accessor for SelectionOptionsCell);
  return sub_2283926B0();
}

uint64_t sub_228257890()
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

unint64_t sub_228257A28()
{
  result = qword_27D825FF0;
  if (!qword_27D825FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D825FF0);
  }

  return result;
}

void sub_228257A7C()
{
  if (!qword_27D8277E0)
  {
    sub_228257D4C(255, &qword_27D826008, sub_228257B14, MEMORY[0x277D83D88]);
    v0 = sub_228391880();
    if (!v1)
    {
      atomic_store(v0, &qword_27D8277E0);
    }
  }
}

unint64_t sub_228257B14()
{
  result = qword_27D8277F0;
  if (!qword_27D8277F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27D8277F0);
  }

  return result;
}

void sub_228257B60()
{
  if (!qword_27D826010)
  {
    sub_228257A7C();
    sub_22819DF44();
    sub_228257D04(&qword_27D826018, sub_228257A7C);
    sub_228257D04(&qword_27D824058, sub_22819DF44);
    v0 = sub_228391670();
    if (!v1)
    {
      atomic_store(v0, &qword_27D826010);
    }
  }
}

void sub_228257C48()
{
  if (!qword_27D826020)
  {
    sub_228257A7C();
    sub_228257B14();
    sub_228257D04(&qword_27D826018, sub_228257A7C);
    v0 = sub_2283916D0();
    if (!v1)
    {
      atomic_store(v0, &qword_27D826020);
    }
  }
}

uint64_t sub_228257D04(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_228257D4C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_228257DC0()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  return swift_deallocClassInstance();
}

uint64_t sub_228257E08(uint64_t a1)
{
  v2 = sub_228258F3C(&qword_27D824360);

  return MEMORY[0x282169440](a1, v2);
}

uint64_t MedicationSideEffectsItemCell.item.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC19HealthMedicationsUI29MedicationSideEffectsItemCell_item;
  swift_beginAccess();
  return sub_22817E6C8(v1 + v3, a1);
}

uint64_t sub_228257EC8(uint64_t a1, uint64_t *a2)
{
  sub_22817E6C8(a1, v6);
  v3 = *a2;
  v4 = OBJC_IVAR____TtC19HealthMedicationsUI29MedicationSideEffectsItemCell_item;
  swift_beginAccess();
  sub_22818FD64(v6, v3 + v4);
  swift_endAccess();
  sub_228257FA4();
  return sub_22819482C(v6);
}

uint64_t MedicationSideEffectsItemCell.item.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC19HealthMedicationsUI29MedicationSideEffectsItemCell_item;
  swift_beginAccess();
  sub_22818FD64(a1, v1 + v3);
  swift_endAccess();
  sub_228257FA4();
  return sub_22819482C(a1);
}

void sub_228257FA4()
{
  v1 = v0;
  v2 = sub_2283911B0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR____TtC19HealthMedicationsUI29MedicationSideEffectsItemCell_item;
  swift_beginAccess();
  sub_22817E6C8(&v1[v7], v33);
  if (v34)
  {
    sub_22817A700();
    type metadata accessor for MedicationSideEffectsItem();
    if (swift_dynamicCast())
    {
      v8 = v32;
      v9 = sub_228258468();
      v10 = v8[4];
      v11 = v8[5];

      v12 = sub_228391FC0();

      [v9 setText_];

      v13 = sub_2282585C0();
      if (v8[7])
      {
        v14 = v8[6];
        v15 = v8[7];

        v16 = sub_228391FC0();
      }

      else
      {
        v16 = 0;
      }

      [v13 setText_];

      v25 = *&v1[OBJC_IVAR____TtC19HealthMedicationsUI29MedicationSideEffectsItemCell____lazy_storage___attributionLabel];
      if (v8[7])
      {
        v26 = v8[6];
        v27 = v25;

        sub_2283920A0();
        v29 = v28;

        if (v29)
        {

          v30 = 0;
LABEL_15:
          [v27 setHidden_];

          return;
        }
      }

      else
      {
        v27 = v25;
      }

      v30 = 1;
      goto LABEL_15;
    }
  }

  else
  {
    sub_22819482C(v33);
  }

  sub_228391150();
  v17 = v1;
  v18 = sub_2283911A0();
  v19 = sub_2283925C0();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v32 = v21;
    *v20 = 136446210;
    sub_22817E6C8(&v1[v7], v33);
    sub_228181D50();
    v22 = sub_228392040();
    v24 = sub_2281C96FC(v22, v23, &v32);

    *(v20 + 4) = v24;
    _os_log_impl(&dword_22816B000, v18, v19, "Incorrect view model for MedicationSideEffectsItem: %{public}s", v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v21);
    MEMORY[0x22AAB7B80](v21, -1, -1);
    MEMORY[0x22AAB7B80](v20, -1, -1);
  }

  (*(v3 + 8))(v6, v2);
}

void (*MedicationSideEffectsItemCell.item.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_22825835C;
}

void sub_22825835C(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = *(a1 + 24);
    sub_228257FA4();
  }
}

id sub_228258390()
{
  v1 = OBJC_IVAR____TtC19HealthMedicationsUI29MedicationSideEffectsItemCell____lazy_storage___stackView;
  v2 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI29MedicationSideEffectsItemCell____lazy_storage___stackView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI29MedicationSideEffectsItemCell____lazy_storage___stackView);
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

id sub_228258468()
{
  v1 = OBJC_IVAR____TtC19HealthMedicationsUI29MedicationSideEffectsItemCell____lazy_storage___primaryLabel;
  v2 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI29MedicationSideEffectsItemCell____lazy_storage___primaryLabel);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI29MedicationSideEffectsItemCell____lazy_storage___primaryLabel);
  }

  else
  {
    v4 = v0;
    v5 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
    sub_22817A958(0, &qword_280DDB9C0, 0x277D74300);
    v6 = *MEMORY[0x277D76918];
    v7 = sub_228392AD0();
    [v5 setFont_];

    v8 = v5;
    [v8 setTranslatesAutoresizingMaskIntoConstraints_];
    [v8 setNumberOfLines_];
    v9 = sub_228392190();
    v10 = HKUIJoinStringsForAutomationIdentifier();

    [v8 setAccessibilityIdentifier_];
    v11 = *(v4 + v1);
    *(v4 + v1) = v8;
    v3 = v8;

    v2 = 0;
  }

  v12 = v2;
  return v3;
}

id sub_2282585C0()
{
  v1 = OBJC_IVAR____TtC19HealthMedicationsUI29MedicationSideEffectsItemCell____lazy_storage___attributionLabel;
  v2 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI29MedicationSideEffectsItemCell____lazy_storage___attributionLabel);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI29MedicationSideEffectsItemCell____lazy_storage___attributionLabel);
  }

  else
  {
    v4 = v0;
    v5 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
    sub_22817A958(0, &qword_280DDB9C0, 0x277D74300);
    v6 = *MEMORY[0x277D769D0];
    v7 = sub_228392AD0();
    [v5 setFont_];

    v8 = [objc_opt_self() secondaryLabelColor];
    [v5 setTextColor_];

    v9 = v5;
    [v9 setTranslatesAutoresizingMaskIntoConstraints_];
    [v9 setNumberOfLines_];
    v10 = sub_228392190();
    v11 = HKUIJoinStringsForAutomationIdentifier();

    [v9 setAccessibilityIdentifier_];
    v12 = *(v4 + v1);
    *(v4 + v1) = v9;
    v3 = v9;

    v2 = 0;
  }

  v13 = v2;
  return v3;
}

char *sub_228258754(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = sub_228391590();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = &v4[OBJC_IVAR____TtC19HealthMedicationsUI29MedicationSideEffectsItemCell_item];
  *v15 = 0u;
  *(v15 + 1) = 0u;
  *(v15 + 4) = 0;
  *&v4[OBJC_IVAR____TtC19HealthMedicationsUI29MedicationSideEffectsItemCell____lazy_storage___stackView] = 0;
  *&v4[OBJC_IVAR____TtC19HealthMedicationsUI29MedicationSideEffectsItemCell____lazy_storage___primaryLabel] = 0;
  *&v4[OBJC_IVAR____TtC19HealthMedicationsUI29MedicationSideEffectsItemCell____lazy_storage___attributionLabel] = 0;
  v45.receiver = v4;
  v45.super_class = ObjectType;
  v16 = objc_msgSendSuper2(&v45, sel_initWithFrame_, a1, a2, a3, a4);
  [v16 setUserInteractionEnabled_];
  v17 = sub_228258390();
  v18 = sub_228258468();
  [v17 addArrangedSubview_];

  v19 = OBJC_IVAR____TtC19HealthMedicationsUI29MedicationSideEffectsItemCell____lazy_storage___stackView;
  v20 = *&v16[OBJC_IVAR____TtC19HealthMedicationsUI29MedicationSideEffectsItemCell____lazy_storage___stackView];
  v21 = sub_2282585C0();
  [v20 addArrangedSubview_];

  v22 = [v16 contentView];
  [v22 addSubview_];

  sub_228391520();
  sub_2283914D0();
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  (*(v11 + 8))(v14, v10);
  v31 = *&v16[v19];
  v32 = [v16 contentView];
  [v31 hk:v32 alignHorizontalConstraintsWithView:v24 insets:{v26, v28, v30}];

  v33 = objc_opt_self();
  sub_228180ED0();
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_228397F20;
  v35 = [*&v16[v19] topAnchor];
  v36 = [v16 contentView];
  v37 = [v36 topAnchor];

  v38 = [v35 constraintEqualToAnchor:v37 constant:16.0];
  *(v34 + 32) = v38;
  v39 = [*&v16[v19] bottomAnchor];
  v40 = [v16 contentView];

  v41 = [v40 bottomAnchor];
  v42 = [v39 constraintEqualToAnchor:v41 constant:-16.0];

  *(v34 + 40) = v42;
  sub_22817A958(0, &qword_280DDBA90, 0x277CCAAD0);
  v43 = sub_228392190();

  [v33 activateConstraints_];

  return v16;
}

id MedicationSideEffectsItemCell.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_228258CB8@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC19HealthMedicationsUI29MedicationSideEffectsItemCell_item;
  swift_beginAccess();
  return sub_22817E6C8(v1 + v3, a1);
}

uint64_t sub_228258D10(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC19HealthMedicationsUI29MedicationSideEffectsItemCell_item;
  swift_beginAccess();
  sub_22818FD64(a1, v1 + v3);
  swift_endAccess();
  sub_228257FA4();
  return sub_22819482C(a1);
}

void (*sub_228258D7C(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_22825835C;
}

uint64_t getEnumTagSinglePayload for MedicationSideEffectsItemCell.Constants(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for MedicationSideEffectsItemCell.Constants(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

uint64_t sub_228258F3C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for MedicationSideEffectsItem();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_228258F7C(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (*a2 + qword_27D826060);
  swift_beginAccess();
  v5 = v4[1];
  *v4 = v3;
  v4[1] = v2;
}

uint64_t sub_228258FE8()
{
  v1 = (v0 + qword_27D826060);
  swift_beginAccess();
  v3 = *v1;
  v2 = v1[1];

  return v3;
}

uint64_t sub_228259040(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + qword_27D826060);
  swift_beginAccess();
  v6 = v5[1];
  *v5 = a1;
  v5[1] = a2;
}

id InteractionFactorsViewController.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);
  v2 = &v1[qword_27D826060];
  v3 = *MEMORY[0x277D12788];
  v8 = sub_228392000();
  v9 = v4;

  MEMORY[0x22AAB5C80](0xD000000000000029, 0x80000002283AEED0);

  v5 = v9;
  *v2 = v8;
  v2[1] = v5;
  v7.receiver = v1;
  v7.super_class = v0;
  return objc_msgSendSuper2(&v7, sel_initWithCollectionViewLayout_, 0);
}

id InteractionFactorsViewController.init()()
{
  v1 = &v0[qword_27D826060];
  v2 = *MEMORY[0x277D12788];
  v7 = sub_228392000();
  v8 = v3;

  MEMORY[0x22AAB5C80](0xD000000000000029, 0x80000002283AEED0);

  v4 = v8;
  *v1 = v7;
  v1[1] = v4;
  v6.receiver = v0;
  v6.super_class = type metadata accessor for InteractionFactorsViewController();
  return objc_msgSendSuper2(&v6, sel_initWithCollectionViewLayout_, 0);
}

uint64_t type metadata accessor for InteractionFactorsViewController()
{
  result = qword_27D826070;
  if (!qword_27D826070)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2282592B0(uint64_t a1)
{
  v1 = (a1 + qword_27D826060);
  v2 = *MEMORY[0x277D12788];
  v4 = sub_228392000();
  v5 = v3;

  MEMORY[0x22AAB5C80](0xD000000000000029, 0x80000002283AEED0);

  *v1 = v4;
  v1[1] = v5;
  sub_228393300();
  __break(1u);
}

uint64_t sub_228259374()
{
  v1 = type metadata accessor for InteractionFactorsDataSourceProvider();
  v2 = swift_allocObject();
  v15 = v1;
  v16 = sub_22825A0A0(&qword_27D826068, type metadata accessor for InteractionFactorsDataSourceProvider);
  v14 = v2;
  sub_2283904B0();
  v3 = [v0 navigationItem];
  v4 = objc_allocWithZone(MEMORY[0x277D751E0]);
  v5 = v0;
  v6 = [v4 initWithBarButtonSystemItem:1 target:v5 action:sel_cancelButtonTapped_];
  [v3 setLeftBarButtonItem_];

  v7 = [v5 navigationItem];
  v8 = [objc_allocWithZone(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:0 target:v5 action:sel_doneButtonTapped_];

  [v7 setRightBarButtonItem_];
  v13.receiver = v5;
  v13.super_class = type metadata accessor for InteractionFactorsViewController();
  objc_msgSendSuper2(&v13, sel_viewDidLoad);
  v9 = &v5[qword_27D826060];
  swift_beginAccess();
  v11 = *v9;
  v10 = *(v9 + 1);

  sub_228259590();
}

void sub_228259548(void *a1)
{
  v1 = a1;
  sub_228259374();
}

void sub_228259590()
{
  v1 = v0;
  v2 = [v0 navigationItem];
  v3 = [v2 leftBarButtonItem];

  if (v3)
  {

    MEMORY[0x22AAB5C80](0x426C65636E61432ELL, 0xED00006E6F747475);
    v4 = sub_228391FC0();

    [v3 setAccessibilityIdentifier_];
  }

  v5 = [v1 navigationItem];
  v6 = [v5 rightBarButtonItem];

  if (v6)
  {

    MEMORY[0x22AAB5C80](0x747542656E6F442ELL, 0xEB000000006E6F74);
    v7 = sub_228391FC0();

    [v6 setAccessibilityIdentifier_];
  }
}

uint64_t sub_228259740(void *a1, uint64_t a2, void *a3)
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

uint64_t sub_22825983C(void *a1)
{
  swift_unknownObjectRetain();
  v2 = a1;
  sub_228392F90();
  swift_unknownObjectRelease();
  [v2 dismissViewControllerAnimated:1 completion:0];

  return __swift_destroy_boxed_opaque_existential_0(v4);
}

id sub_2282598B0()
{
  v1 = sub_228391DC0();
  v21 = *(v1 - 8);
  v2 = *(v21 + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_228391DF0();
  v5 = *(v20 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v20);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_228391DD0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22817A958(0, &qword_280DDCEE0, 0x277D85C78);
  (*(v10 + 104))(v13, *MEMORY[0x277D851B8], v9);
  v14 = sub_2283927C0();
  (*(v10 + 8))(v13, v9);
  v15 = swift_allocObject();
  *(v15 + 16) = v0;
  aBlock[4] = sub_22825A080;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_228191E9C;
  aBlock[3] = &block_descriptor_12;
  v16 = _Block_copy(aBlock);
  v17 = v0;
  sub_228391DE0();
  v22 = MEMORY[0x277D84F90];
  sub_22825A0A0(&qword_280DDCF10, MEMORY[0x277D85198]);
  sub_22817DFB0();
  sub_22825A0A0(&qword_280DDCEF0, sub_22817DFB0);
  sub_228393030();
  MEMORY[0x22AAB6340](0, v8, v4, v16);
  _Block_release(v16);

  (*(v21 + 8))(v4, v1);
  (*(v5 + 8))(v8, v20);

  return [v17 dismissViewControllerAnimated:1 completion:0];
}

uint64_t sub_228259C70()
{
  sub_228390470();
  v0 = sub_2283901E0();

  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = (v0 + 32);
    type metadata accessor for InteractionFactorsLifestyleOptionsDataSource();
    do
    {
      v3 = *v2;
      if (swift_dynamicCastClass())
      {
        swift_unknownObjectRetain();
        sub_228213688();
        swift_unknownObjectRelease();
      }

      v2 += 2;
      --v1;
    }

    while (v1);
  }
}

uint64_t sub_228259D24(void *a1)
{
  swift_unknownObjectRetain();
  v2 = a1;
  sub_228392F90();
  swift_unknownObjectRelease();
  sub_2282598B0();

  return __swift_destroy_boxed_opaque_existential_0(v4);
}

id InteractionFactorsViewController.__allocating_init(collectionViewLayout:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCollectionViewLayout_];

  return v3;
}

id InteractionFactorsViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for InteractionFactorsViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t block_copy_helper_12(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_22825A0A0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t Collection<>.loggedDoseEvents.getter(uint64_t a1, uint64_t a2)
{
  v5 = *(*(a1 - 8) + 64);
  MEMORY[0x28223BE20](a1);
  (*(v7 + 16))(&v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v2, a1);
  v8 = *(a2 + 8);
  return sub_228392160();
}

BOOL sub_22825A1E0(uint64_t *a1)
{
  v1 = *a1;
  v2 = sub_228390A10();
  v3 = [v2 logStatus];

  if (v3 == 4)
  {
    return 1;
  }

  v5 = sub_228390A10();
  v6 = [v5 logStatus];

  return v6 == 5;
}

uint64_t sub_22825A264@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v45 = sub_228390C80();
  v5 = *(v45 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v45);
  v44 = v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v43 = v36 - v9;
  v10 = *a1;
  v11 = sub_228390AF0();
  v12 = *(v11 + 16);
  if (v12)
  {
    v37 = a2;
    v38 = v2;
    v49 = MEMORY[0x277D84F90];
    sub_2281CA06C(0, v12, 0);
    v13 = v49;
    v15 = *(v5 + 16);
    v14 = v5 + 16;
    v16 = *(v14 + 64);
    v36[1] = v11;
    v17 = v11 + ((v16 + 32) & ~v16);
    v40 = *(v14 + 56);
    v41 = v15;
    v39 = (v14 - 8);
    v42 = v14;
    do
    {
      v18 = v43;
      v19 = v45;
      v20 = v41;
      v41(v43, v17, v45);
      v21 = v44;
      v20(v44, v18, v19);
      v22 = v13;
      v23 = sub_228390C70();
      v24 = [v23 semanticIdentifier];

      v25 = [v24 stringValue];
      v26 = sub_228392000();
      v47 = v27;
      v48 = v26;

      v13 = v22;
      v46 = sub_228390C50();
      v29 = v28;
      v30 = *v39;
      (*v39)(v21, v19);
      v30(v18, v19);
      v49 = v13;
      v32 = *(v13 + 16);
      v31 = *(v13 + 24);
      if (v32 >= v31 >> 1)
      {
        sub_2281CA06C((v31 > 1), v32 + 1, 1);
        v13 = v49;
      }

      *(v13 + 16) = v32 + 1;
      v33 = (v13 + 32 * v32);
      v34 = v47;
      v33[4] = v48;
      v33[5] = v34;
      v33[6] = v46;
      v33[7] = v29;
      v17 += v40;
      --v12;
    }

    while (v12);

    a2 = v37;
  }

  else
  {

    v13 = MEMORY[0x277D84F90];
  }

  *a2 = v13;
  return result;
}

size_t sub_22825A528@<X0>(id *a1@<X0>, void *a2@<X1>, size_t *a3@<X8>)
{
  v46 = a3;
  v54 = a2;
  v4 = sub_228390C80();
  v5 = *(v4 - 8);
  v52 = v4;
  v53 = v5;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = *a1;
  v9 = [v47 doses];
  sub_22825A9CC();
  v10 = sub_2283921A0();

  v55 = MEMORY[0x277D84F90];
  if (v10 >> 62)
  {
    goto LABEL_36;
  }

  v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v12 = MEMORY[0x277D84F90];
  v51 = v8;
  if (v11)
  {
    v13 = 0;
    v49 = v10 & 0xFFFFFFFFFFFFFF8;
    v50 = (v10 & 0xC000000000000001);
    v48 = v10;
    while (1)
    {
      if (v50)
      {
        v15 = MEMORY[0x22AAB6D80](v13, v10);
      }

      else
      {
        if (v13 >= *(v49 + 16))
        {
          goto LABEL_35;
        }

        v15 = *(v10 + 8 * v13 + 32);
      }

      v16 = v15;
      v17 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        __break(1u);
LABEL_35:
        __break(1u);
LABEL_36:
        v11 = sub_2283930D0();
        goto LABEL_3;
      }

      v18 = [v15 medicationIdentifier];
      v19 = sub_228392000();
      v8 = v20;

      v21 = [v54 semanticIdentifier];
      v22 = [v21 stringValue];

      v23 = sub_228392000();
      v25 = v24;

      if (v19 == v23 && v8 == v25)
      {
      }

      else
      {
        v27 = sub_228393460();

        if ((v27 & 1) == 0)
        {

          goto LABEL_7;
        }
      }

      v8 = &v55;
      sub_228393210();
      v14 = *(v55 + 16);
      sub_228393250();
      sub_228393260();
      sub_228393220();
LABEL_7:
      v10 = v48;
      ++v13;
      if (v17 == v11)
      {
        v28 = v55;
        v12 = MEMORY[0x277D84F90];
        goto LABEL_21;
      }
    }
  }

  v28 = MEMORY[0x277D84F90];
LABEL_21:

  if ((v28 & 0x8000000000000000) == 0 && (v28 & 0x4000000000000000) == 0)
  {
    v29 = *(v28 + 16);
    if (v29)
    {
      goto LABEL_24;
    }

LABEL_40:

    result = 0;
    goto LABEL_41;
  }

  if (!sub_2283930D0())
  {
    goto LABEL_40;
  }

  v29 = sub_2283930D0();
  if (!v29)
  {
    v45 = v47;

LABEL_33:
    v42 = sub_228390B00();
    v43 = *(v42 + 48);
    v44 = *(v42 + 52);
    swift_allocObject();
    result = sub_228390B10();
LABEL_41:
    *v46 = result;
    return result;
  }

LABEL_24:
  v55 = v12;
  v50 = v47;
  result = sub_2281CA1EC(0, v29 & ~(v29 >> 63), 0);
  if ((v29 & 0x8000000000000000) == 0)
  {
    v31 = 0;
    v32 = v55;
    v33 = v28;
    v48 = v53 + 32;
    v49 = v28 & 0xC000000000000001;
    v34 = v28;
    v35 = v29;
    do
    {
      if (v49)
      {
        MEMORY[0x22AAB6D80](v31, v33);
      }

      else
      {
        v36 = *(v33 + 8 * v31 + 32);
      }

      v37 = [v50 identifier];
      sub_228392000();

      v38 = v54;
      v39 = v51;
      sub_228390C90();
      v55 = v32;
      v41 = *(v32 + 16);
      v40 = *(v32 + 24);
      if (v41 >= v40 >> 1)
      {
        sub_2281CA1EC(v40 > 1, v41 + 1, 1);
        v32 = v55;
      }

      ++v31;
      *(v32 + 16) = v41 + 1;
      (*(v53 + 32))(v32 + ((*(v53 + 80) + 32) & ~*(v53 + 80)) + *(v53 + 72) * v41, v39, v52);
      v33 = v34;
    }

    while (v35 != v31);

    goto LABEL_33;
  }

  __break(1u);
  return result;
}