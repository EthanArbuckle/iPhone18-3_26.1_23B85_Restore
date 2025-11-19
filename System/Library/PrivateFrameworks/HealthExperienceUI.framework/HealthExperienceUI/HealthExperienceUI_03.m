unint64_t sub_1B9F4BA58()
{
  result = qword_1EDC6CF18;
  if (!qword_1EDC6CF18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC6CF18);
  }

  return result;
}

unint64_t sub_1B9F4BAAC()
{
  result = qword_1EDC6CF20;
  if (!qword_1EDC6CF20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC6CF20);
  }

  return result;
}

unint64_t sub_1B9F4BB00()
{
  result = qword_1EDC6CEF8;
  if (!qword_1EDC6CEF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC6CEF8);
  }

  return result;
}

unint64_t sub_1B9F4BB58()
{
  result = qword_1EDC6CEE8;
  if (!qword_1EDC6CEE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC6CEE8);
  }

  return result;
}

unint64_t sub_1B9F4BBB4()
{
  result = qword_1EDC6CF00;
  if (!qword_1EDC6CF00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC6CF00);
  }

  return result;
}

unint64_t sub_1B9F4BC0C()
{
  result = qword_1EDC6CF08;
  if (!qword_1EDC6CF08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC6CF08);
  }

  return result;
}

uint64_t sub_1B9F4BC60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1702125924 && a2 == 0xE400000000000000;
  if (v5 || (sub_1BA4A8338() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 1954047348 && a2 == 0xE400000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1BA4A8338();

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

uint64_t sub_1B9F4BD4C()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 2;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1B9F4BD80()
{
  if (*v0)
  {
    return 1954047348;
  }

  else
  {
    return 1702125924;
  }
}

uint64_t sub_1B9F4BDA4()
{
  if (*v0)
  {
    return 12639;
  }

  else
  {
    return 12383;
  }
}

void sub_1B9F4BDC0()
{
  if (!qword_1EDC6B748)
  {
    sub_1BA4A7488();
    sub_1B9F38BF4();
    sub_1B9F42A64(&unk_1EDC6B560, MEMORY[0x1E6969F20]);
    sub_1B9F42A64(&qword_1EDC6B5B0, sub_1B9F38BF4);
    v0 = sub_1BA4A4CC8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDC6B748);
    }
  }
}

uint64_t sub_1B9F4BEAC()
{
  v1 = v0;
  v2 = sub_1BA4A1728();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F39780(0, qword_1EDC6CEA0, type metadata accessor for CellHeaderDetailText);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = (&v19 - v7);
  v9 = OBJC_IVAR____TtC18HealthExperienceUI19CellHeaderViewModel_detailText;
  swift_beginAccess();
  sub_1B9F42C80(v1 + v9, v8, qword_1EDC6CEA0, type metadata accessor for CellHeaderDetailText);
  v10 = type metadata accessor for CellHeaderDetailText(0);
  if ((*(*(v10 - 8) + 48))(v8, 1, v10) == 1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v20 = 0;
    v21 = 0;
LABEL_5:

    return sub_1BA4A4F38();
  }

  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = *v8;
    v11 = v8[1];
    swift_getKeyPath();
    swift_getKeyPath();
    v20 = v12;
    v21 = v11;
    goto LABEL_5;
  }

  sub_1B9F416DC();
  (*(v3 + 32))(v5, v8, v2);
  v14 = sub_1BA4A16B8();
  if (qword_1EDC6E3F8 != -1)
  {
    swift_once();
  }

  v15 = HKMostRecentSampleEndDateText();

  if (v15)
  {
    v16 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
    v18 = v17;
  }

  else
  {
    v16 = 0;
    v18 = 0;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v20 = v16;
  v21 = v18;

  sub_1BA4A4F38();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_1B9F4C1D4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_1B9F39780(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1B9F4C230(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B9F4C290()
{
  swift_getAssociatedTypeWitness();
  result = sub_1BA4A7AA8();
  if (v1 <= 0x3F)
  {
    swift_getAssociatedTypeWitness();
    result = sub_1BA4A7AA8();
    if (v2 <= 0x3F)
    {
      result = sub_1BA4A19E8();
      if (v3 <= 0x3F)
      {
        return swift_initClassMetadata2();
      }
    }
  }

  return result;
}

uint64_t sub_1B9F4C3DC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = SnidgetContentView.ViewModel.__allocating_init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

unint64_t sub_1B9F4C45C(char a1)
{
  result = 0xD000000000000016;
  if (a1 == 1)
  {
    return 0xD000000000000017;
  }

  return result;
}

uint64_t sub_1B9F4C574@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B9F4354C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for PDFFileNameGenerator(unsigned int *a1, int a2)
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

uint64_t StandardSnidgetCurrentValueDataView.ViewModel.init(from:)(void *a1)
{
  v3 = sub_1BA4A12C8();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v82 = &v71 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v79 = &v71 - v7;
  v83 = sub_1BA4A1278();
  v87 = *(v83 - 8);
  MEMORY[0x1EEE9AC00](v83);
  v81 = &v71 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F47BAC(0, &unk_1EDC6E290, MEMORY[0x1E6968848], MEMORY[0x1E69E6720]);
  v10 = MEMORY[0x1EEE9AC00](v9 - 8);
  v80 = &v71 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v78 = &v71 - v13;
  v14 = MEMORY[0x1EEE9AC00](v12);
  v88 = &v71 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v71 - v16;
  sub_1B9F436C8(0, &qword_1EDC5DE70, MEMORY[0x1E69E6F48]);
  v19 = v18;
  v86 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v71 - v20;
  v84 = v4;
  v24 = *(v4 + 56);
  v22 = v4 + 56;
  v23 = v24;
  *&v93 = OBJC_IVAR____TtCV18HealthExperienceUI35StandardSnidgetCurrentValueDataView9ViewModel_supratitleString;
  v24(v1 + OBJC_IVAR____TtCV18HealthExperienceUI35StandardSnidgetCurrentValueDataView9ViewModel_supratitleString, 1, 1, v3);
  v90 = OBJC_IVAR____TtCV18HealthExperienceUI35StandardSnidgetCurrentValueDataView9ViewModel_subtitleString;
  v85 = v3;
  v24(v1 + OBJC_IVAR____TtCV18HealthExperienceUI35StandardSnidgetCurrentValueDataView9ViewModel_subtitleString, 1, 1, v3);
  v92 = v1;
  v25 = v1 + OBJC_IVAR____TtCV18HealthExperienceUI35StandardSnidgetCurrentValueDataView9ViewModel_animationConfiguration;
  *(v25 + 8) = 0;
  *(v25 + 16) = 0;
  *(v25 + 24) = 0;
  v89 = v25;
  *v25 = 0;
  v26 = a1[3];
  v98 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v26);
  sub_1B9F4372C();
  v27 = v91;
  sub_1BA4A8528();
  if (v27)
  {
    v33 = v92;
    v34 = MEMORY[0x1E6968848];
    v35 = MEMORY[0x1E69E6720];
    sub_1BA103284(v92 + v93, &unk_1EDC6E290, MEMORY[0x1E6968848], MEMORY[0x1E69E6720], sub_1B9F47BAC);
    sub_1BA103284(v33 + v90, &unk_1EDC6E290, v34, v35, sub_1B9F47BAC);

    type metadata accessor for StandardSnidgetCurrentValueDataView.ViewModel();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v28 = v17;
    v77 = v23;
    v91 = v22;
    v29 = v87;
    LOBYTE(v95) = 0;
    v30 = sub_1B9F4D13C(&qword_1EDC6AEA8, MEMORY[0x1E6968848]);
    v31 = v85;
    sub_1BA4A8178();
    v32 = v21;
    v76 = v30;
    v75 = v19;
    v37 = v84;
    v38 = *(v84 + 48);
    v74 = v84 + 48;
    v73 = v38;
    v39 = v38(v88, 1, v31);
    v33 = v92;
    if (v39 == 1)
    {
      sub_1BA103284(v88, &unk_1EDC6E290, MEMORY[0x1E6968848], MEMORY[0x1E69E6720], sub_1B9F47BAC);
      v40 = 1;
      v41 = v28;
      v42 = v83;
    }

    else
    {
      v41 = v28;
      v43 = v88;
      (*(v37 + 16))(v28, v88, v31);
      v44 = v81;
      sub_1BA4A1288();
      sub_1B9F4D364(v44, v41);
      v45 = v44;
      v42 = v83;
      (*(v29 + 8))(v45, v83);
      (*(v37 + 8))(v43, v31);
      v40 = 0;
    }

    v77(v41, v40, 1, v31);
    v46 = v93;
    swift_beginAccess();
    sub_1B9F426D0(v41, v33 + v46);
    swift_endAccess();
    LOBYTE(v95) = 1;
    v47 = v82;
    v48 = v75;
    sub_1BA4A81C8();
    v49 = v47;
    v50 = v84;
    v51 = *(v84 + 16);
    *&v93 = v32;
    v52 = v79;
    v83 = v84 + 16;
    v71 = v51;
    v51();
    v53 = v42;
    v54 = v81;
    sub_1BA4A1288();
    sub_1B9F4D364(v54, v52);
    v55 = *(v87 + 8);
    v87 += 8;
    v88 = 0;
    v72 = v55;
    v55(v54, v53);
    v56 = v50 + 8;
    v82 = *(v50 + 8);
    (v82)(v49, v31);
    v57 = v93;
    (*(v50 + 32))(v33 + OBJC_IVAR____TtCV18HealthExperienceUI35StandardSnidgetCurrentValueDataView9ViewModel_primaryString, v52, v31);
    LOBYTE(v95) = 2;
    v58 = v53;
    v59 = v80;
    v60 = v88;
    sub_1BA4A8178();
    if (v60)
    {

      (*(v86 + 8))(v57, v48);
    }

    else
    {
      v88 = v56;
      v61 = v59;
      if (v73(v59, 1, v31) == 1)
      {
        sub_1BA103284(v59, &unk_1EDC6E290, MEMORY[0x1E6968848], MEMORY[0x1E69E6720], sub_1B9F47BAC);
        v62 = 1;
        v63 = v75;
        v64 = v86;
        v65 = v78;
      }

      else
      {
        v65 = v78;
        (v71)(v78, v59, v31);
        v66 = v81;
        sub_1BA4A1288();
        sub_1B9F4D364(v66, v65);
        v57 = v93;
        v72(v66, v58);
        (v82)(v61, v31);
        v62 = 0;
        v63 = v75;
        v64 = v86;
      }

      v77(v65, v62, 1, v31);
      v67 = v90;
      swift_beginAccess();
      sub_1B9F426D0(v65, v33 + v67);
      swift_endAccess();
      v94 = 3;
      sub_1B9F73860();
      sub_1BA4A8178();
      (*(v64 + 8))(v57, v63);
      v93 = v95;
      v68 = v96;
      v69 = v97;
      v70 = v89;
      swift_beginAccess();
      *v70 = v93;
      *(v70 + 16) = v68;
      *(v70 + 24) = v69;
    }
  }

  __swift_destroy_boxed_opaque_existential_1(v98);
  return v33;
}

unint64_t sub_1B9F4D090()
{
  result = qword_1EDC6BAB8;
  if (!qword_1EDC6BAB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC6BAB8);
  }

  return result;
}

unint64_t sub_1B9F4D0E8()
{
  result = qword_1EDC6BAC0;
  if (!qword_1EDC6BAC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC6BAC0);
  }

  return result;
}

uint64_t sub_1B9F4D13C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1B9F4D184()
{
  v1 = 0x537972616D697270;
  v2 = 0x656C746974627573;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000016;
  }

  if (!*v0)
  {
    v1 = 0xD000000000000010;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t storeEnumTagSinglePayload for SummarySharingSelectionSuggestedLabsCategory(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SummarySharingSelectionSuggestedLabsCategory(unsigned __int8 *a1, unsigned int a2)
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
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_1B9F4D364(uint64_t a1, uint64_t a2)
{
  v42 = a2;
  sub_1B9F4DA34();
  v41 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v40 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F42764();
  v48 = v5;
  v44 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v47 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_1BA4A1268();
  v49 = *(v51 - 8);
  MEMORY[0x1EEE9AC00](v51);
  v50 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1BA4A1248();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1BA4A1278();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F427F8();
  v17 = v16 - 8;
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v38 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v15, a1, v12);
  v20 = MEMORY[0x1E69687C8];
  sub_1B9F4D13C(&qword_1EDC6AED0, MEMORY[0x1E69687C8]);
  sub_1BA4A69F8();
  v21 = *(v17 + 44);
  v22 = sub_1B9F4D13C(&qword_1EDC6AEC8, v20);
  ++v49;
  ++v44;
  v45 = (v9 + 16);
  v43 = (v9 + 8);
  v39 = v19;
  v46 = v22;
  while (1)
  {
    v23 = v50;
    sub_1BA4A6E38();
    sub_1B9F4D13C(&qword_1EDC6AED8, MEMORY[0x1E69687B0]);
    v24 = v51;
    v25 = sub_1BA4A6728();
    (*v49)(v23, v24);
    if (v25)
    {
      break;
    }

    v26 = sub_1BA4A6E88();
    (*v45)(v11);
    v26(v52, 0);
    sub_1BA4A6E48();
    swift_getKeyPath();
    sub_1BA4A1168();
    sub_1B9F4D13C(&qword_1EDC6AEE8, MEMORY[0x1E69DBE88]);
    v27 = v47;
    sub_1BA4A1228();

    swift_getKeyPath();
    sub_1B9F4DAC8();
    v28 = v48;
    sub_1BA4A14C8();

    (*v44)(v27, v28);
    v29 = v52[0];
    if (v52[0])
    {
      v30 = UIFont.mappedSwiftUIFont.getter();
      v31 = v40;
      sub_1BA4A1238();

      sub_1B9F4D13C(&qword_1EDC5E5B8, sub_1B9F4DA34);
      v32 = v21;
      v33 = v12;
      v34 = v11;
      v35 = v8;
      v36 = sub_1BA4A12F8();
      v52[5] = v30;
      sub_1B9F73298();
      sub_1BA4A1368();
      v36(v52, 0);
      v8 = v35;
      v11 = v34;
      v12 = v33;
      v21 = v32;
      v19 = v39;

      sub_1BA10334C(v31, sub_1B9F4DA34);
    }

    (*v43)(v11, v8);
  }

  return sub_1BA10334C(v19, sub_1B9F427F8);
}

uint64_t sub_1B9F4D9E8@<X0>(uint64_t *a1@<X8>)
{
  sub_1BA4A1178();
  result = sub_1BA4A1168();
  *a1 = result;
  return result;
}

void sub_1B9F4DA34()
{
  if (!qword_1EDC5E5C0)
  {
    sub_1BA4A1298();
    sub_1B9F4D13C(&qword_1EDC6AEC0, MEMORY[0x1E69687E8]);
    v0 = sub_1BA4A6E98();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDC5E5C0);
    }
  }
}

unint64_t sub_1B9F4DAC8()
{
  result = qword_1EDC6AEF0;
  if (!qword_1EDC6AEF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC6AEF0);
  }

  return result;
}

uint64_t UIFont.mappedSwiftUIFont.getter()
{
  v1 = sub_1BA4A5D18();
  v77 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v76 = &v69 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F47C10(0, &qword_1EDC5EBE8, MEMORY[0x1E6980E30]);
  v4 = MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v69 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v69 - v7;
  sub_1B9F47C10(0, &qword_1EDC5EBE0, MEMORY[0x1E6980F40]);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v69 - v10;
  v12 = sub_1BA4A5D68();
  v79 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v78 = &v69 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = v0;
  v15 = sub_1BA4A5D78();
  v16 = [v14 fontDescriptor];
  v17 = [v16 fontDescriptorWithSymbolicTraits_];

  if (v17)
  {
    v74 = v1;
    v75 = v8;
    v18 = [v17 fontAttributes];
    type metadata accessor for AttributeName(0);
    sub_1B9F4E47C(&qword_1EDC6E3A8, type metadata accessor for AttributeName);
    v19 = sub_1BA4A6628();

    if (*(v19 + 16) && (v20 = sub_1B9F4E588(*MEMORY[0x1E69DB8E8]), (v21 & 1) != 0))
    {
      sub_1B9F0AD9C(*(v19 + 56) + 32 * v20, v81);

      type metadata accessor for TextStyle(0);
      if (swift_dynamicCast())
      {
        v22 = v80;
        sub_1B9F70028(v22, v11);
        v23 = v79;
        if ((*(v79 + 48))(v11, 1, v12) == 1)
        {

          sub_1B9F724F0(v11, &qword_1EDC5EBE0, MEMORY[0x1E6980F40]);
          return v15;
        }

        (*(v23 + 32))(v78, v11, v12);
        v25 = [v14 fontDescriptor];
        v26 = [v25 fontAttributes];

        v27 = sub_1BA4A6628();
        v28 = *(v27 + 16);
        v71 = v22;
        if (v28 && (v29 = sub_1B9F4E588(*MEMORY[0x1E69DB8F0]), (v30 & 1) != 0))
        {
          sub_1B9F0AD9C(*(v27 + 56) + 32 * v29, v81);

          sub_1B9F708DC();
          if (swift_dynamicCast())
          {
            v31 = v80;
            v32 = &selRef_createListViewController_;
            if (v80)
            {
              v33 = *(v80 + 2);
              v70 = v80;
              if (v33)
              {
                v34 = *MEMORY[0x1E69DB990];

                v35 = sub_1B9F4E588(v34);
                if ((v36 & 1) == 0)
                {

                  v38 = 0;
                  v32 = &selRef_createListViewController_;
                  goto LABEL_21;
                }

                sub_1B9F0AD9C(v31[7] + 32 * v35, v81);

                type metadata accessor for Weight(0);
                v32 = &selRef_createListViewController_;
                if (swift_dynamicCast())
                {
                  v73 = sub_1B9F710A8(*&v80);
                  v72 = v37;
                  v38 = 0;
LABEL_22:
                  v39 = [v14 v32[170]];
                  v40 = [v39 fontAttributes];

                  v41 = sub_1BA4A6628();
                  if (*(v41 + 16) && (v42 = sub_1B9F4E588(*MEMORY[0x1E69DB8A0]), (v43 & 1) != 0))
                  {
                    sub_1B9F0AD9C(*(v41 + 56) + 32 * v42, v81);

                    type metadata accessor for Weight(0);
                    v44 = swift_dynamicCast();
                    v45 = v75;
                    if (v44)
                    {
                      v73 = sub_1B9F710A8(*&v80);
                      v72 = v46;
                    }
                  }

                  else
                  {

                    v45 = v75;
                  }

                  v47 = &selRef_createListViewController_;
                  v48 = sub_1BA4A5C28();
                  (*(*(v48 - 8) + 56))(v45, 1, 1, v48);
                  if ((v38 & 1) == 0)
                  {
                    v49 = sub_1BA4A6758();
                    v50 = v49;
                    v51 = v70;
                    if (v70[2] && (v52 = sub_1B9F4E588(v49), v47 = &selRef_createListViewController_, (v53 & 1) != 0))
                    {
                      sub_1B9F0AD9C(v51[7] + 32 * v52, v81);

                      type metadata accessor for SystemDesign(0);
                      if (swift_dynamicCast())
                      {
                        sub_1B9F71E7C(v80, v6);
                        sub_1B9F724F0(v45, &qword_1EDC5EBE8, MEMORY[0x1E6980E30]);
                        sub_1B9F7254C(v6, v45);
                      }
                    }

                    else
                    {
                    }
                  }

                  v54 = v74;
                  v55 = sub_1BA4A5CD8();

                  v56 = [v14 v47[170]];
                  v57 = [v56 symbolicTraits];

                  if ((v57 & 0x8000) != 0)
                  {
                    v61 = v76;
                    v60 = v77;
                    (*(v77 + 104))(v76, *MEMORY[0x1E6980EA8], v54);
                    v62 = sub_1BA4A5D38();

                    (*(v60 + 8))(v61, v54);
                    v55 = v62;
                    if ((v57 & 0x10000) == 0)
                    {
LABEL_35:
                      v58 = v71;
                      if ((v57 & 1) == 0)
                      {
                        goto LABEL_36;
                      }

                      goto LABEL_40;
                    }
                  }

                  else if ((v57 & 0x10000) == 0)
                  {
                    goto LABEL_35;
                  }

                  v64 = v76;
                  v63 = v77;
                  (*(v77 + 104))(v76, *MEMORY[0x1E6980E98], v54);
                  v65 = sub_1BA4A5D38();

                  (*(v63 + 8))(v64, v54);
                  v55 = v65;
                  v58 = v71;
                  if ((v57 & 1) == 0)
                  {
LABEL_36:
                    v59 = v75;
                    if ((v57 & 0x400) == 0)
                    {
LABEL_37:

LABEL_42:
                      v68 = v79;
                      sub_1B9F724F0(v59, &qword_1EDC5EBE8, MEMORY[0x1E6980E30]);
                      (*(v68 + 8))(v78, v12);
                      return v55;
                    }

LABEL_41:
                    v67 = sub_1BA4A5BF8();

                    v55 = v67;
                    goto LABEL_42;
                  }

LABEL_40:
                  v66 = sub_1BA4A5CC8();

                  v55 = v66;
                  v59 = v75;
                  if ((v57 & 0x400) == 0)
                  {
                    goto LABEL_37;
                  }

                  goto LABEL_41;
                }
              }

              v38 = 0;
LABEL_21:
              v73 = 0;
              v72 = 1;
              goto LABEL_22;
            }

LABEL_20:
            v70 = 0;
            v38 = 1;
            goto LABEL_21;
          }
        }

        else
        {
        }

        v32 = &selRef_createListViewController_;
        goto LABEL_20;
      }
    }

    else
    {
    }
  }

  return v15;
}

uint64_t sub_1B9F4E47C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B9F4E514()
{
  _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  sub_1BA4A8488();
  sub_1BA4A68C8();
  v0 = sub_1BA4A84D8();

  return v0;
}

unint64_t sub_1B9F4E590(uint64_t a1)
{
  _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  sub_1BA4A8488();
  sub_1BA4A68C8();
  v2 = sub_1BA4A84D8();

  return sub_1B9F4E620(a1, v2);
}

unint64_t sub_1B9F4E620(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
      v8 = v7;
      if (v6 == _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0() && v8 == v9)
      {
        break;
      }

      v11 = sub_1BA4A8338();

      if ((v11 & 1) == 0)
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

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t SnidgetContentView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v23 = *(a1 + 16);
  sub_1BA4A7AA8();
  v22 = *(a1 + 24);
  sub_1BA4A7AA8();
  v4 = sub_1BA4A5418();
  v21 = *(a1 + 40);
  v38 = *(v21 + 8);
  WitnessTable = swift_getWitnessTable();
  v37 = MEMORY[0x1E697EBF8];
  v5 = swift_getWitnessTable();
  v32 = v4;
  v33 = MEMORY[0x1E69E6158];
  v34 = v5;
  v35 = MEMORY[0x1E69E6168];
  sub_1BA4A6228();
  swift_getTupleTypeMetadata3();
  sub_1BA4A6428();
  swift_getWitnessTable();
  v6 = sub_1BA4A6218();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v21 - v11;
  v13 = *v2;
  v14 = v2[3];
  sub_1BA4A5768();
  *&v15 = *(a1 + 32);
  *(&v15 + 1) = v21;
  *&v16 = v23;
  *(&v16 + 1) = v22;
  v25 = v16;
  v26 = v15;
  v17 = *(a1 + 64);
  v27 = *(a1 + 48);
  v28 = v17;
  v29 = v13;
  v30 = *(v2 + 1);
  v31 = v14;
  sub_1BA4A6208();
  v18 = swift_getWitnessTable();
  sub_1B9F51AA8(v10, v6, v18);
  v19 = *(v7 + 8);
  v19(v10, v6);
  sub_1B9F51AA8(v12, v6, v18);
  return (v19)(v12, v6);
}

uint64_t sub_1B9F4EA88@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v94 = a3;
  v95 = a4;
  v98 = a2;
  v73 = a1;
  v87 = a9;
  v96 = a13;
  v93 = a12;
  v97 = a11;
  v92 = a10;
  v91 = a6;
  swift_getAssociatedTypeWitness();
  v16 = sub_1BA4A7AA8();
  v17 = *(v16 - 8);
  v83 = v16;
  v84 = v17;
  MEMORY[0x1EEE9AC00](v16);
  v77 = &v65 - v18;
  v19 = sub_1BA4A7AA8();
  v86 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v78 = &v65 - v20;
  v74 = v19;
  v21 = sub_1BA4A5418();
  v79 = v21;
  v85 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v82 = &v65 - v22;
  v23 = *(a8 + 8);
  v24 = a8;
  v66 = a8;
  v111 = v23;
  v70 = MEMORY[0x1E6982090];
  WitnessTable = swift_getWitnessTable();
  v109 = WitnessTable;
  v110 = MEMORY[0x1E697EBF8];
  v76 = swift_getWitnessTable();
  v105 = v21;
  v106 = MEMORY[0x1E69E6158];
  v107 = v76;
  v108 = MEMORY[0x1E69E6168];
  v25 = sub_1BA4A6228();
  v26 = *(v25 - 8);
  v80 = v25;
  v81 = v26;
  v27 = MEMORY[0x1EEE9AC00](v25);
  v71 = &v65 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v75 = &v65 - v29;
  v30 = a7;
  swift_getAssociatedTypeWitness();
  v31 = sub_1BA4A7AA8();
  v32 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v34 = &v65 - v33;
  v88 = sub_1BA4A7AA8();
  v90 = *(v88 - 8);
  v35 = MEMORY[0x1EEE9AC00](v88);
  v37 = &v65 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35);
  v89 = &v65 - v38;
  v39 = v94;
  sub_1B9F4F2B4();
  v40 = a5;
  v65 = a5;
  v100[2] = a5;
  v100[3] = v91;
  v100[4] = v30;
  v100[5] = v24;
  v100[6] = v92;
  v100[7] = v97;
  v100[8] = v93;
  v100[9] = v96;
  v41 = v73;
  v100[10] = v73;
  v100[11] = v98;
  v100[12] = v39;
  v100[13] = v95;
  sub_1B9F4F700(sub_1B9F4F9F8, v100, MEMORY[0x1E69E73E0], v40, v42, v37);
  (*(v32 + 8))(v34, v31);
  v104 = *(v30 + 8);
  v43 = v88;
  v44 = swift_getWitnessTable();
  v67 = v37;
  v68 = v44;
  sub_1B9F51AA8(v37, v43, v44);
  v45 = *(v90 + 8);
  v69 = v90 + 8;
  v70 = v45;
  v45(v37, v43);
  v46 = v77;
  v47 = v94;
  sub_1B9F50134();
  v99[2] = v65;
  v99[3] = v91;
  v99[4] = v30;
  v99[5] = v66;
  v48 = v98;
  v99[6] = v92;
  v99[7] = v97;
  v99[8] = v93;
  v99[9] = v96;
  v99[10] = v41;
  v99[11] = v98;
  v99[12] = v47;
  v99[13] = v95;
  v49 = v78;
  v50 = v83;
  sub_1B9F4F700(sub_1B9F501A8, v99, MEMORY[0x1E69E73E0], v91, v51, v78);
  (*(v84 + 8))(v46, v50);
  sub_1BA4A63C8();
  v52 = v74;
  v53 = v82;
  sub_1BA4A5FE8();
  (*(v86 + 8))(v49, v52);
  v105 = v41;
  v106 = v48;
  v54 = v71;
  v55 = v79;
  sub_1BA4A5FA8();
  (*(v85 + 8))(v53, v55);
  v56 = v80;
  v57 = swift_getWitnessTable();
  v58 = v75;
  sub_1B9F51AA8(v54, v56, v57);
  v59 = v81;
  v60 = *(v81 + 8);
  v60(v54, v56);
  v61 = v67;
  v62 = v88;
  (*(v90 + 16))(v67, v89, v88);
  v102 = 0;
  v103 = 1;
  v105 = v61;
  v106 = &v102;
  (*(v59 + 16))(v54, v58, v56);
  v107 = v54;
  v101[0] = v62;
  v101[1] = MEMORY[0x1E6981840];
  v101[2] = v56;
  v100[14] = v68;
  v100[15] = MEMORY[0x1E6981838];
  v100[16] = v57;
  sub_1B9F50770(&v105, 3uLL, v101);
  v60(v58, v56);
  v63 = v70;
  v70(v89, v62);
  v60(v54, v56);
  return v63(v61, v62);
}

__n128 sub_1B9F4F2D4(uint64_t a1, uint64_t a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  v4 = *(a1 + 48);
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 48) = v4;
  *a2 = result;
  *(a2 + 16) = v3;
  return result;
}

uint64_t sub_1B9F4F340(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  swift_getKeyPath();
  sub_1B9F4F3D8();

  return a2(v3);
}

uint64_t sub_1B9F4F484@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*v1 + 144);
  swift_beginAccess();
  swift_getAssociatedTypeWitness();
  v4 = sub_1BA4A7AA8();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t sub_1B9F4F560(unsigned __int16 *a1, unsigned int a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v6 = *(v5 + 84);
  v7 = v6 - 1;
  if (!v6)
  {
    v7 = 0;
  }

  v8 = *(*(AssociatedTypeWitness - 8) + 64);
  if (!v6)
  {
    ++v8;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 > v7)
  {
    v9 = 8 * v8;
    if (v8 > 3)
    {
      goto LABEL_8;
    }

    v11 = ((a2 - v7 + ~(-1 << v9)) >> v9) + 1;
    if (HIWORD(v11))
    {
      v10 = *(a1 + v8);
      if (v10)
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v11 <= 0xFF)
      {
        if (v11 < 2)
        {
          goto LABEL_26;
        }

LABEL_8:
        v10 = *(a1 + v8);
        if (!*(a1 + v8))
        {
          goto LABEL_26;
        }

LABEL_15:
        v12 = (v10 - 1) << v9;
        if (v8 > 3)
        {
          v12 = 0;
        }

        if (v8)
        {
          if (v8 > 3)
          {
            LODWORD(v8) = 4;
          }

          if (v8 > 2)
          {
            if (v8 == 3)
            {
              LODWORD(v8) = *a1 | (*(a1 + 2) << 16);
            }

            else
            {
              LODWORD(v8) = *a1;
            }
          }

          else if (v8 == 1)
          {
            LODWORD(v8) = *a1;
          }

          else
          {
            LODWORD(v8) = *a1;
          }
        }

        return v7 + (v8 | v12) + 1;
      }

      v10 = *(a1 + v8);
      if (*(a1 + v8))
      {
        goto LABEL_15;
      }
    }
  }

LABEL_26:
  if (v6 < 2)
  {
    return 0;
  }

  v14 = (*(v5 + 48))(a1);
  if (v14 >= 2)
  {
    return v14 - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B9F4F700@<X0>(void (*a1)(char *, char *)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X6>, uint64_t a6@<X8>)
{
  v25 = a5;
  v26 = a2;
  v28 = a4;
  v27 = a1;
  v24 = *(a3 - 8);
  v10 = (MEMORY[0x1EEE9AC00])();
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v13 + 16);
  v15 = *(v14 - 8);
  v16 = MEMORY[0x1EEE9AC00](v10);
  v18 = &v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v24 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v21 + 16))(v20, v6);
  v22 = 1;
  if ((*(v15 + 48))(v20, 1, v14) != 1)
  {
    (*(v15 + 32))(v18, v20, v14);
    v27(v18, v12);
    (*(v15 + 8))(v18, v14);
    if (v7)
    {
      return (*(v24 + 32))(v25, v12, a3);
    }

    v22 = 0;
  }

  return (*(*(v28 - 8) + 56))(a6, v22, 1);
}

uint64_t sub_1B9F4FA24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X7>, uint64_t a7@<X8>)
{
  v24 = a1;
  v25 = a2;
  v26 = a7;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = sub_1BA4A7AA8();
  v13 = MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v23 - v14;
  v16 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v13);
  v18 = &v23 - v17;
  v19 = type metadata accessor for ViewModelState();
  MEMORY[0x1EEE9AC00](v19 - 8);
  v21 = &v23 - v20;
  (*(v16 + 16))(v18, v24, AssociatedTypeWitness);
  if (a4)
  {

    sub_1B9F4F2B4();
  }

  else
  {
    (*(v16 + 56))(v15, 1, 1, AssociatedTypeWitness);
  }

  ViewModelState.init(id:viewModel:previousViewModel:)(v25, a3, v18, v15, AssociatedTypeWitness, v21);
  return (*(a6 + 24))(v21, a5, a6);
}

uint64_t ViewModelState.init(id:viewModel:previousViewModel:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  v12 = type metadata accessor for ViewModelState();
  v13 = *(v12 + 32);
  v14 = *(a5 - 8);
  (*(v14 + 56))(&a6[v13], 1, 1, a5);
  *a6 = a1;
  *(a6 + 1) = a2;
  (*(v14 + 32))(&a6[*(v12 + 28)], a3, a5);
  v15 = sub_1BA4A7AA8();
  v16 = *(*(v15 - 8) + 40);

  return v16(&a6[v13], a4, v15);
}

uint64_t SnidgetCurrentValueView.init(_:)@<X0>(char *a1@<X0>, char *a2@<X8>)
{
  v4 = type metadata accessor for SnidgetCurrentValueView();
  v5 = *(v4 + 40);
  v6 = type metadata accessor for SnidgetCurrentValueView.ViewModel();
  v7 = *(v6 - 8);
  (*(v7 + 56))(&a2[v5], 1, 1, v6);
  v8 = *(a1 + 1);
  *a2 = *a1;
  *(a2 + 1) = v8;
  v9 = type metadata accessor for ViewModelState();
  (*(v7 + 32))(&a2[*(v4 + 36)], &a1[*(v9 + 28)], v6);
  v10 = *(v9 + 32);
  v11 = sub_1BA4A7AA8();
  v12 = *(*(v11 - 8) + 40);

  return v12(&a2[v5], &a1[v10], v11);
}

uint64_t sub_1B9F4FEF4(unsigned __int16 *a1, unsigned int a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v6 = *(v5 + 84);
  if (v6)
  {
    v7 = v6 - 1;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7 - 1;
  v9 = *(*(AssociatedTypeWitness - 8) + 64);
  if (!v6)
  {
    ++v9;
  }

  if (v6 >= 2)
  {
    v10 = v9;
  }

  else
  {
    v8 = 0;
    v10 = v9 + 1;
  }

  if (v7 <= v8)
  {
    v11 = v8;
  }

  else
  {
    v11 = v7;
  }

  if (v11 <= 0x7FFFFFFF)
  {
    v12 = 0x7FFFFFFF;
  }

  else
  {
    v12 = v11;
  }

  if (!a2)
  {
    return 0;
  }

  v13 = *(v5 + 80);
  v14 = v9 + v13;
  if (a2 <= v12)
  {
    goto LABEL_38;
  }

  v15 = v10 + ((v14 + ((v13 + 16) & ~v13)) & ~v13);
  v16 = 8 * v15;
  if (v15 > 3)
  {
    goto LABEL_18;
  }

  v18 = ((a2 - v12 + ~(-1 << v16)) >> v16) + 1;
  if (HIWORD(v18))
  {
    v17 = *(a1 + v15);
    if (v17)
    {
      goto LABEL_25;
    }

LABEL_38:
    if ((v11 & 0x80000000) == 0)
    {
      v22 = *(a1 + 1);
      if (v22 >= 0xFFFFFFFF)
      {
        LODWORD(v22) = -1;
      }

      return (v22 + 1);
    }

    v24 = (a1 + v13 + 16) & ~v13;
    if (v7 == v12)
    {
      if (v6 >= 2)
      {
        v25 = (*(v5 + 48))(v24);
        if (v25 >= 2)
        {
          return v25 - 1;
        }

        else
        {
          return 0;
        }
      }
    }

    else if (v6 >= 2)
    {
      v26 = (*(v5 + 48))((v14 + v24) & ~v13);
      v27 = v26 >= 2;
      result = v26 - 2;
      if (result != 0 && v27)
      {
        return result;
      }
    }

    return 0;
  }

  if (v18 > 0xFF)
  {
    v17 = *(a1 + v15);
    if (*(a1 + v15))
    {
      goto LABEL_25;
    }

    goto LABEL_38;
  }

  if (v18 < 2)
  {
    goto LABEL_38;
  }

LABEL_18:
  v17 = *(a1 + v15);
  if (!*(a1 + v15))
  {
    goto LABEL_38;
  }

LABEL_25:
  v19 = (v17 - 1) << v16;
  if (v15 > 3)
  {
    v19 = 0;
  }

  if (v15)
  {
    if (v15 <= 3)
    {
      v20 = v15;
    }

    else
    {
      v20 = 4;
    }

    if (v20 > 2)
    {
      if (v20 == 3)
      {
        v21 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v21 = *a1;
      }
    }

    else if (v20 == 1)
    {
      v21 = *a1;
    }

    else
    {
      v21 = *a1;
    }
  }

  else
  {
    v21 = 0;
  }

  return v12 + (v21 | v19) + 1;
}

uint64_t sub_1B9F501D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X6>, uint64_t a6@<X8>, uint64_t a7)
{
  v23 = a1;
  v24 = a2;
  v25 = a6;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = sub_1BA4A7AA8();
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v22 - v13;
  v15 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v12);
  v17 = &v22 - v16;
  v18 = type metadata accessor for ViewModelState();
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = &v22 - v19;
  (*(v15 + 16))(v17, v23, AssociatedTypeWitness);
  if (a4)
  {

    sub_1B9F50134();
  }

  else
  {
    (*(v15 + 56))(v14, 1, 1, AssociatedTypeWitness);
  }

  ViewModelState.init(id:viewModel:previousViewModel:)(v24, a3, v17, v14, AssociatedTypeWitness, v20);
  return (*(a7 + 24))(v20, a5, a7);
}

uint64_t sub_1B9F503F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a1 + 24);
  *(a3 + 24) = swift_getKeyPath();
  *(a3 + 32) = 0;
  *(a3 + 40) = 0;
  *(a3 + 48) = swift_getKeyPath();
  *(a3 + 56) = 0;
  v6 = *(a2 + 32);
  *(a3 + v6) = swift_getKeyPath();
  sub_1B9F51630(0, &qword_1EDC6B6E8, MEMORY[0x1E697DBD0], MEMORY[0x1E697DCB8]);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for SnidgetSwiftChartViewModel(0);
  sub_1B9F48334(&qword_1EDC6C438, type metadata accessor for SnidgetSwiftChartViewModel);

  *a3 = sub_1BA4A5348();
  *(a3 + 8) = v7;

  *(a3 + 16) = v5;
  return result;
}

uint64_t sub_1B9F505A8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    sub_1B9F51630(0, &qword_1EDC6B6D8, MEMORY[0x1E697DBD0], MEMORY[0x1E697DCC0]);
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 32);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_1B9F50690(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    sub_1B9F51630(0, &qword_1EDC6B6D8, MEMORY[0x1E697DBD0], MEMORY[0x1E697DCC0]);
    v9 = v8;
    v10 = *(*(v8 - 8) + 48);
    v11 = a1 + *(a3 + 32);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_1B9F50770(uint64_t TupleTypeMetadata, unint64_t a2, uint64_t a3)
{
  v5 = TupleTypeMetadata;
  if (a2 == 1)
  {
    v6 = *(a3 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    MEMORY[0x1EEE9AC00](TupleTypeMetadata);
    v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (a2)
    {
      v9 = 0;
      v10 = a3 & 0xFFFFFFFFFFFFFFFELL;
      if (a2 < 4)
      {
        goto LABEL_9;
      }

      if (&v8[-v10] < 0x20)
      {
        goto LABEL_9;
      }

      v9 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      v11 = (v10 + 16);
      v12 = v8 + 16;
      v13 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v14 = *v11;
        *(v12 - 1) = *(v11 - 1);
        *v12 = v14;
        v11 += 2;
        v12 += 2;
        v13 -= 4;
      }

      while (v13);
      if (v9 != a2)
      {
LABEL_9:
        v15 = a2 - v9;
        v16 = 8 * v9;
        v17 = &v8[8 * v9];
        v18 = (v10 + v16);
        do
        {
          v19 = *v18++;
          *v17 = v19;
          v17 += 8;
          --v15;
        }

        while (v15);
      }
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v6 = TupleTypeMetadata;
  }

  MEMORY[0x1EEE9AC00](TupleTypeMetadata);
  v21 = &v30 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v22 = (a3 & 0xFFFFFFFFFFFFFFFELL);
    v23 = (v6 + 32);
    v24 = a2;
    do
    {
      if (a2 == 1)
      {
        v25 = 0;
      }

      else
      {
        v25 = *v23;
      }

      v27 = *v22++;
      v26 = v27;
      v28 = *v5++;
      (*(*(v26 - 8) + 16))(&v21[v25], v28);
      v23 += 4;
      --v24;
    }

    while (v24);
  }

  return sub_1BA4A6438();
}

unint64_t sub_1B9F50950()
{
  result = qword_1EDC60D08;
  if (!qword_1EDC60D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC60D08);
  }

  return result;
}

uint64_t SnidgetCurrentValueView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v77 = a2;
  v4 = *(a1 + 16);
  v3 = *(a1 + 24);
  v5 = type metadata accessor for SnidgetCurrentValueView.ViewModel();
  v70 = sub_1BA4A7AA8();
  v67 = *(v70 - 8);
  MEMORY[0x1EEE9AC00](v70);
  v69 = &v57 - v6;
  v76 = v3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = sub_1BA4A7AA8();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v66 = &v57 - v9;
  v10 = type metadata accessor for ViewModelState();
  v11 = MEMORY[0x1EEE9AC00](v10 - 8);
  v65 = &v57 - v12;
  v72 = *(v4 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v71 = &v57 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v63 = &v57 - v16;
  v17 = MEMORY[0x1EEE9AC00](v15);
  v68 = &v57 - v18;
  v19 = *(AssociatedTypeWitness - 8);
  v20 = MEMORY[0x1EEE9AC00](v17);
  v22 = &v57 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v20);
  v25 = &v57 - v24;
  v26 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v28 = &v57 - v27;
  v29 = sub_1BA4A58F8();
  v74 = *(v29 - 8);
  v75 = v29;
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v57 - v30;
  v62 = a1;
  v32 = *(a1 + 36);
  v33 = *(v26 + 16);
  v34 = v73;
  v64 = v5;
  v33(v28, v73 + v32, v5);
  v78 = v19;
  if ((*(v19 + 48))(v28, 1, AssociatedTypeWitness) == 1)
  {
    KeyPath = swift_getKeyPath();
    v80 = 0;
    v81 = 0;
    sub_1B9F50950();
    v35 = *(v76 + 8);
    sub_1BA100874(&KeyPath, &type metadata for StandardSnidgetCurrentValueNoDataView);
    sub_1B9F84D1C(KeyPath, v80, v81);
    v36 = v31;
  }

  else
  {
    v59 = v31;
    v37 = v78;
    (*(v78 + 32))(v25, v28, AssociatedTypeWitness);
    v38 = v34[1];
    v58 = *v34;
    v39 = *(v37 + 16);
    v60 = v22;
    v61 = v25;
    v39(v22, v25, AssociatedTypeWitness);
    v40 = v67;
    v42 = v69;
    v41 = v70;
    (*(v67 + 16))(v69, v34 + *(v62 + 40), v70);
    v43 = v64;
    if ((*(v26 + 48))(v42, 1, v64) == 1)
    {
      v44 = *(v40 + 8);

      v44(v42, v41);
      v45 = v66;
      (*(v78 + 56))(v66, 1, 1, AssociatedTypeWitness);
    }

    else
    {

      v45 = v66;
      SnidgetCurrentValueView.ViewModel.value.getter(v43, v66);
      (*(v26 + 8))(v42, v43);
    }

    v46 = v76;
    v47 = v65;
    ViewModelState.init(id:viewModel:previousViewModel:)(v58, v38, v60, v45, AssociatedTypeWitness, v65);
    v48 = v63;
    (*(v46 + 24))(v47, v4, v46);
    v35 = *(v46 + 8);
    v49 = v72;
    v50 = *(v72 + 16);
    v51 = v68;
    v50(v68, v48, v4);
    v52 = *(v49 + 8);
    v52(v48, v4);
    v53 = v71;
    v50(v71, v51, v4);
    sub_1B9F50950();
    v36 = v59;
    sub_1B9F511C0(v53, &type metadata for StandardSnidgetCurrentValueNoDataView, v4);
    v52(v53, v4);
    v52(v51, v4);
    (*(v78 + 8))(v61, AssociatedTypeWitness);
  }

  v82 = sub_1B9F50950();
  v83 = v35;
  v54 = v75;
  swift_getWitnessTable();
  v55 = v74;
  (*(v74 + 16))(v77, v36, v54);
  return (*(v55 + 8))(v36, v54);
}

uint64_t sub_1B9F51104@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = swift_getKeyPath();
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  type metadata accessor for StandardSnidgetCurrentValueDataView.ViewModel();
  sub_1B9F4D13C(&qword_1EDC61320, type metadata accessor for StandardSnidgetCurrentValueDataView.ViewModel);

  *a2 = sub_1BA4A5348();
  *(a2 + 8) = v4;

  *(a2 + 16) = v3;
  return result;
}

uint64_t sub_1B9F511C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1BA4A58D8();
  MEMORY[0x1EEE9AC00](v5);
  (*(*(a3 - 8) + 16))(&v8 - v6, a1, a3);
  swift_storeEnumTagMultiPayload();
  return sub_1BA4A58E8();
}

void sub_1B9F512B8()
{
  sub_1BA4A12C8();
  if (v0 <= 0x3F)
  {
    sub_1B9F51C6C(319, &qword_1EDC63458, &type metadata for AnimatedSnidgetCurrentValueText.Configuration, MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_1B9F51360()
{
  result = qword_1EDC6B978[0];
  if (!qword_1EDC6B978[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDC6B978);
  }

  return result;
}

uint64_t sub_1B9F513D4()
{
  result = type metadata accessor for SnidgetCurrentValueView.ViewModel();
  if (v1 <= 0x3F)
  {
    result = sub_1BA4A7AA8();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1B9F514CC()
{
  result = sub_1BA4A0FA8();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for SnidgetSwiftChartViewModel.DiagramHighlight(319);
    if (v2 <= 0x3F)
    {
      result = sub_1BA4A1898();
      if (v3 <= 0x3F)
      {
        return swift_updateClassMetadata2();
      }
    }
  }

  return result;
}

void sub_1B9F51630(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1B9F51694(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1B9F516E4()
{
  if (!qword_1EDC6B6C0)
  {
    sub_1B9F0ADF8(255, &qword_1EDC6B620);
    v0 = sub_1BA4A51D8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDC6B6C0);
    }
  }
}

void sub_1B9F51758(_WORD *a1, unsigned int a2, unsigned int a3)
{
  v6 = 0;
  v7 = *(swift_getAssociatedTypeWitness() - 8);
  v8 = *(v7 + 84);
  v9 = v8 - 1;
  if (v8)
  {
    v10 = *(v7 + 64);
  }

  else
  {
    v9 = 0;
    v10 = *(v7 + 64) + 1;
  }

  if (v8 >= 2)
  {
    v11 = v9 - 1;
  }

  else
  {
    v11 = 0;
  }

  if (v8 >= 2)
  {
    v12 = v10;
  }

  else
  {
    v12 = v10 + 1;
  }

  if (v9 <= v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v9;
  }

  v14 = *(v7 + 80);
  v15 = v12 + ((v10 + v14 + ((v14 + 16) & ~v14)) & ~v14);
  if (v13 <= 0x7FFFFFFF)
  {
    v16 = 0x7FFFFFFF;
  }

  else
  {
    v16 = v13;
  }

  if (a3 > v16)
  {
    v6 = 1;
    if (v15 <= 3)
    {
      v17 = ((a3 - v16 + ~(-1 << (8 * v15))) >> (8 * v15)) + 1;
      v18 = HIWORD(v17);
      if (v17 < 0x100)
      {
        v19 = 1;
      }

      else
      {
        v19 = 2;
      }

      if (v17 >= 2)
      {
        v20 = v19;
      }

      else
      {
        v20 = 0;
      }

      if (v18)
      {
        v6 = 4;
      }

      else
      {
        v6 = v20;
      }
    }
  }

  if (v16 < a2)
  {
    v21 = ~v16 + a2;
    if (v15 < 4)
    {
      v22 = (v21 >> (8 * v15)) + 1;
      if (v15)
      {
        v23 = v21 & ~(-1 << (8 * v15));
        bzero(a1, v15);
        if (v15 != 3)
        {
          if (v15 == 2)
          {
            *a1 = v23;
            if (v6 > 1)
            {
LABEL_68:
              if (v6 == 2)
              {
                *(a1 + v15) = v22;
              }

              else
              {
                *(a1 + v15) = v22;
              }

              return;
            }
          }

          else
          {
            *a1 = v21;
            if (v6 > 1)
            {
              goto LABEL_68;
            }
          }

          goto LABEL_65;
        }

        *a1 = v23;
        *(a1 + 2) = BYTE2(v23);
      }

      if (v6 > 1)
      {
        goto LABEL_68;
      }
    }

    else
    {
      bzero(a1, v15);
      *a1 = v21;
      v22 = 1;
      if (v6 > 1)
      {
        goto LABEL_68;
      }
    }

LABEL_65:
    if (v6)
    {
      *(a1 + v15) = v22;
    }

    return;
  }

  if (v6 > 1)
  {
    if (v6 != 2)
    {
      *(a1 + v15) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_43;
    }

    *(a1 + v15) = 0;
  }

  else if (v6)
  {
    *(a1 + v15) = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_43;
  }

  if (!a2)
  {
    return;
  }

LABEL_43:
  if ((v13 & 0x80000000) == 0)
  {
    if ((a2 & 0x80000000) != 0)
    {
      *a1 = a2 & 0x7FFFFFFF;
      *(a1 + 1) = 0;
    }

    else
    {
      *(a1 + 1) = a2 - 1;
    }

    return;
  }

  v24 = (a1 + v14 + 16) & ~v14;
  if (v9 == v16)
  {
    if (v8 < 2)
    {
      return;
    }

    v25 = *(v7 + 56);
    v26 = a2 + 1;
LABEL_75:

    v25(v24, v26);
    return;
  }

  v27 = ((v10 + v14 + v24) & ~v14);
  if (a2 + 1 <= v9)
  {
    if (a2 == -1 || v8 < 2)
    {
      return;
    }

    v25 = *(v7 + 56);
    v26 = a2 + 2;
    v24 = v27;
    goto LABEL_75;
  }

  if (v10 <= 3)
  {
    v28 = ~(-1 << (8 * v10));
  }

  else
  {
    v28 = -1;
  }

  if (v10)
  {
    v29 = v28 & (a2 - v9);
    if (v10 <= 3)
    {
      v30 = v10;
    }

    else
    {
      v30 = 4;
    }

    bzero(v27, v10);
    if (v30 > 2)
    {
      if (v30 == 3)
      {
        *v27 = v29;
        v27[2] = BYTE2(v29);
      }

      else
      {
        *v27 = v29;
      }
    }

    else if (v30 == 1)
    {
      *v27 = v29;
    }

    else
    {
      *v27 = v29;
    }
  }
}

uint64_t sub_1B9F51AB0@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*v1 + 152);
  swift_beginAccess();
  swift_getAssociatedTypeWitness();
  v4 = sub_1BA4A7AA8();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t sub_1B9F51BD8()
{
  sub_1BA4A58F8();
  sub_1B9F50950();
  return swift_getWitnessTable();
}

void sub_1B9F51C6C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1B9F51CBC(unint64_t a1)
{
  j = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1BA4A7CC8())
  {
    v4 = sub_1BA4A27B8();
    v5 = sub_1B9F51E1C(&qword_1EDC6AD90, MEMORY[0x1E69A3DD0]);
    result = MEMORY[0x1BFAF17D0](i, v4, v5);
    v12 = result;
    if (j)
    {
      break;
    }

    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return result;
    }

LABEL_7:
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x1BFAF2860](j, a1);
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v9 = *(a1 + 8 * j + 32);
      }

      v10 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      sub_1BA0E2A88(&v11, v9);

      if (v10 == v7)
      {
        return v12;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  v8 = result;
  v7 = sub_1BA4A7CC8();
  result = v8;
  if (v7)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_1B9F51E1C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B9F51E70(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v98 = a2;
  v5 = sub_1BA4A1728();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v82 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1BA4A3EA8();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v82 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();

  sub_1B9F52788(v13);
  v15 = v14;

  v16 = sub_1B9F52A58(v15, a1);
  v83 = sub_1B9F52A58(a1, v15);
  v18 = v16;
  if ((v16 & 0xC000000000000001) != 0)
  {
    sub_1BA4A7C88();
    sub_1BA4A27B8();
    sub_1B9F85D08(&qword_1EDC6AD90, MEMORY[0x1E69A3DD0]);
    sub_1BA4A6DA8();
    v18 = v101;
    v19 = v102;
    v20 = v103;
    v21 = v104;
    v22 = v105;
  }

  else
  {
    v21 = 0;
    v23 = -1 << *(v16 + 32);
    v19 = v16 + 56;
    v20 = ~v23;
    v24 = -v23;
    if (v24 < 64)
    {
      v25 = ~(-1 << v24);
    }

    else
    {
      v25 = -1;
    }

    v22 = v25 & *(v16 + 56);
  }

  v82 = v20;
  v26 = (v20 + 64) >> 6;
  v93 = (v10 + 8);
  v92 = (v6 + 16);
  v85 = v6 + 32;
  v84 = v6 + 40;
  *&v17 = 136315394;
  v86 = v17;
  v95 = v18;
  v96 = v12;
  v94 = v19;
  v91 = v26;
  v88 = v5;
  v87 = v6;
  while (v18 < 0)
  {
    v31 = sub_1BA4A7CF8();
    if (!v31 || (v100 = v31, sub_1BA4A27B8(), swift_dynamicCast(), v30 = v106[0], v29 = v21, v97 = v22, !v106[0]))
    {
LABEL_31:
      sub_1B9F52E48();
      v65 = v83;
      if ((v83 & 0xC000000000000001) != 0)
      {
        sub_1BA4A7C88();
        sub_1BA4A27B8();
        sub_1B9F85D08(&qword_1EDC6AD90, MEMORY[0x1E69A3DD0]);
        sub_1BA4A6DA8();
        v65 = v106[0];
        v66 = v106[1];
        v67 = v106[2];
        v68 = v106[3];
        v69 = v106[4];
      }

      else
      {
        v68 = 0;
        v70 = -1 << *(v83 + 32);
        v66 = v83 + 56;
        v67 = ~v70;
        v71 = -v70;
        if (v71 < 64)
        {
          v72 = ~(-1 << v71);
        }

        else
        {
          v72 = -1;
        }

        v69 = v72 & *(v83 + 56);
      }

      v97 = v67;
      v73 = (v67 + 64) >> 6;
      v74 = v65;
      if (v65 < 0)
      {
        goto LABEL_44;
      }

      while (1)
      {
        v75 = v68;
        v76 = v69;
        v77 = v68;
        if (!v69)
        {
          break;
        }

LABEL_42:
        v78 = (v76 - 1) & v76;
        v79 = *(*(v65 + 48) + ((v77 << 9) | (8 * __clz(__rbit64(v76)))));
        if (!v79)
        {
          return sub_1B9F52E48();
        }

        while (1)
        {
          sub_1BA3C2BB0(v79);

          v68 = v77;
          v69 = v78;
          v65 = v74;
          if ((v74 & 0x8000000000000000) == 0)
          {
            break;
          }

LABEL_44:
          v80 = sub_1BA4A7CF8();
          if (v80)
          {
            v99 = v80;
            sub_1BA4A27B8();
            swift_dynamicCast();
            v79 = v100;
            v77 = v68;
            v78 = v69;
            if (v100)
            {
              continue;
            }
          }

          return sub_1B9F52E48();
        }
      }

      while (1)
      {
        v77 = v75 + 1;
        if (__OFADD__(v75, 1))
        {
          goto LABEL_50;
        }

        if (v77 >= v73)
        {
          return sub_1B9F52E48();
        }

        v76 = *(v66 + 8 * v77);
        ++v75;
        if (v76)
        {
          goto LABEL_42;
        }
      }
    }

LABEL_19:
    sub_1BA4A3DB8();
    v32 = v30;

    v33 = sub_1BA4A3E88();
    v34 = sub_1BA4A6F88();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v89 = swift_slowAlloc();
      v106[0] = v89;
      *v35 = v86;
      v36 = [v32 uniqueIdentifier];
      v90 = v32;
      v37 = v36;
      v38 = v9;
      v39 = v8;
      v40 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
      v42 = v41;

      v43 = v40;
      v8 = v39;
      v9 = v38;
      v44 = sub_1B9F0B82C(v43, v42, v106);

      *(v35 + 4) = v44;
      *(v35 + 12) = 2082;
      v100 = v3;
      type metadata accessor for PersonalizedFeedTrainer();

      v45 = sub_1BA4A6808();
      v47 = sub_1B9F0B82C(v45, v46, v106);
      v32 = v90;

      *(v35 + 14) = v47;
      v6 = v87;
      _os_log_impl(&dword_1B9F07000, v33, v34, "FeedItem %s appeared onscreen; %{public}s", v35, 0x16u);
      v48 = v89;
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v48, -1, -1);
      v49 = v35;
      v5 = v88;
      MEMORY[0x1BFAF43A0](v49, -1, -1);

      (*v93)(v96, v38);
    }

    else
    {

      (*v93)(v12, v9);
    }

    swift_beginAccess();
    (*v92)(v8, v98, v5);
    v50 = v32;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v100 = v3[2];
    v52 = v100;
    v53 = sub_1B9FDAB44(v50);
    v55 = v52[2];
    v56 = (v54 & 1) == 0;
    v57 = __OFADD__(v55, v56);
    v58 = v55 + v56;
    if (v57)
    {
      goto LABEL_51;
    }

    v59 = v54;
    if (v52[3] >= v58)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v64 = v53;
        sub_1BA0F2C7C();
        v53 = v64;
      }
    }

    else
    {
      sub_1BA0F5584(v58, isUniquelyReferenced_nonNull_native);
      v53 = sub_1B9FDAB44(v50);
      if ((v59 & 1) != (v60 & 1))
      {
        goto LABEL_53;
      }
    }

    v12 = v96;
    v61 = v100;
    if (v59)
    {
      (*(v6 + 40))(v100[7] + *(v6 + 72) * v53, v8, v5);
    }

    else
    {
      v100[(v53 >> 6) + 8] |= 1 << v53;
      *(v61[6] + 8 * v53) = v50;
      (*(v6 + 32))(v61[7] + *(v6 + 72) * v53, v8, v5);
      v62 = v61[2];
      v57 = __OFADD__(v62, 1);
      v63 = v62 + 1;
      if (v57)
      {
        goto LABEL_52;
      }

      v61[2] = v63;
    }

    v3[2] = v61;
    swift_endAccess();

    v21 = v29;
    v22 = v97;
    v19 = v94;
    v18 = v95;
    v26 = v91;
  }

  v27 = v21;
  v28 = v22;
  v29 = v21;
  if (v22)
  {
LABEL_15:
    v97 = (v28 - 1) & v28;
    v30 = *(*(v18 + 48) + ((v29 << 9) | (8 * __clz(__rbit64(v28)))));
    if (!v30)
    {
      goto LABEL_31;
    }

    goto LABEL_19;
  }

  while (1)
  {
    v29 = v27 + 1;
    if (__OFADD__(v27, 1))
    {
      break;
    }

    if (v29 >= v26)
    {
      goto LABEL_31;
    }

    v28 = *(v19 + 8 * v29);
    ++v27;
    if (v28)
    {
      goto LABEL_15;
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
  sub_1BA4A27B8();
  result = sub_1BA4A83B8();
  __break(1u);
  return result;
}

void sub_1B9F52788(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_1BA4A27B8();
  v4 = sub_1B9F51E1C(&qword_1EDC6AD90, MEMORY[0x1E69A3DD0]);
  v5 = 0;
  v12[1] = MEMORY[0x1BFAF17D0](v2, v3, v4);
  v6 = 1 << *(a1 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a1 + 64);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = v5;
LABEL_9:
    v11 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    sub_1BA0E2A88(v12, *(*(a1 + 48) + ((v10 << 9) | (8 * v11))));
  }

  while (1)
  {
    v10 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      break;
    }

    if (v10 >= v9)
    {

      return;
    }

    v8 = *(a1 + 64 + 8 * v10);
    ++v5;
    if (v8)
    {
      v5 = v10;
      goto LABEL_9;
    }
  }

  __break(1u);
}

void sub_1B9F528CC()
{
  if (!qword_1EDC5F1C0)
  {
    sub_1B9F47BAC(255, &qword_1EDC5F1C8, sub_1B9F5305C, MEMORY[0x1E69E6720]);
    sub_1B9F530BC(255);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EDC5F1C0);
    }
  }
}

unint64_t sub_1B9F52970()
{
  result = qword_1EDC5F0D8;
  if (!qword_1EDC5F0D8)
  {
    sub_1BA1D3954(255);
    sub_1BA1D37F8(&qword_1EDC5EAC0, 255, sub_1B9F52DB4);
    sub_1BA1D37F8(&qword_1EDC5ECD8, 255, sub_1B9F53864);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC5F0D8);
  }

  return result;
}

uint64_t sub_1B9F52A58(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v4 = sub_1BA4A7CC8();
    if ((v2 & 0xC000000000000001) != 0)
    {
      goto LABEL_3;
    }

LABEL_9:
    if (v4 > *(v2 + 16) >> 3)
    {
      goto LABEL_10;
    }

LABEL_13:
    sub_1B9F52B84(a1);
    return v2;
  }

  v4 = *(a1 + 16);
  if ((a2 & 0xC000000000000001) == 0)
  {
    goto LABEL_9;
  }

LABEL_3:
  if (v2 < 0)
  {
    v5 = v2;
  }

  else
  {
    v5 = v2 & 0xFFFFFFFFFFFFFF8;
  }

  if (v4 <= sub_1BA4A7CC8() / 8)
  {
    goto LABEL_13;
  }

  v6 = sub_1BA4A7CC8();
  v2 = sub_1BA0E33D0(v5, v6);
LABEL_10:

  return sub_1BA08DAFC(a1, v2);
}

void sub_1B9F52B84(uint64_t a1)
{
  if ((*v1 & 0xC000000000000001) != 0)
  {
    if (!sub_1BA4A7CC8())
    {
      return;
    }
  }

  else if (!*(*v1 + 16))
  {
    return;
  }

  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_1BA4A7C88();
    sub_1BA4A27B8();
    sub_1BA091AF8(&qword_1EDC6AD90, MEMORY[0x1E69A3DD0]);
    sub_1BA4A6DA8();
    a1 = v18;
    v3 = v19;
    v4 = v20;
    v5 = v21;
    v6 = v22;
  }

  else
  {
    v7 = -1 << *(a1 + 32);
    v3 = a1 + 56;
    v4 = ~v7;
    v8 = -v7;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v6 = v9 & *(a1 + 56);

    v5 = 0;
  }

  v10 = (v4 + 64) >> 6;
  if (a1 < 0)
  {
    goto LABEL_18;
  }

  while (1)
  {
    v11 = v5;
    v12 = v6;
    v13 = v5;
    if (!v6)
    {
      break;
    }

LABEL_16:
    v14 = (v12 - 1) & v12;
    v15 = *(*(a1 + 48) + ((v13 << 9) | (8 * __clz(__rbit64(v12)))));
    if (!v15)
    {
LABEL_22:
      sub_1B9F52E48();
      return;
    }

    while (1)
    {
      v16 = sub_1BA0227B0(v15);

      v5 = v13;
      v6 = v14;
      if ((a1 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_18:
      if (sub_1BA4A7CF8())
      {
        sub_1BA4A27B8();
        swift_dynamicCast();
        v15 = v17;
        v13 = v5;
        v14 = v6;
        if (v17)
        {
          continue;
        }
      }

      goto LABEL_22;
    }
  }

  while (1)
  {
    v13 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v13 >= v10)
    {
      goto LABEL_22;
    }

    v12 = *(v3 + 8 * v13);
    ++v11;
    if (v12)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
}

void sub_1B9F52DB4()
{
  if (!qword_1EDC5EAB8)
  {
    sub_1B9F47BAC(255, &qword_1EDC5E970, sub_1B9F528CC, MEMORY[0x1E6981F40]);
    sub_1BA102F70();
    v0 = sub_1BA4A6268();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDC5EAB8);
    }
  }
}

void sub_1B9F52E50(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    v6 = sub_1BA4A5418();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

id sub_1B9F52F10()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E6959A48]) init];
  v1 = [v0 aa_primaryAppleAccount];

  if (!v1)
  {
    v11 = 0;
    return (v11 & 1);
  }

  result = [v1 accountType];
  if (result)
  {
    v3 = result;
    v4 = [result identifier];

    if (v4)
    {
      v5 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
      v7 = v6;

      v8 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
      if (v7)
      {
        if (v5 == v8 && v7 == v9)
        {

          v11 = 1;
        }

        else
        {
          v11 = sub_1BA4A8338();
        }

        goto LABEL_14;
      }
    }

    else
    {
      _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
    }

    v11 = 0;
LABEL_14:

    return (v11 & 1);
  }

  __break(1u);
  return result;
}

void sub_1B9F5305C()
{
  if (!qword_1EDC5F1D0)
  {
    sub_1BA4A5B18();
    v0 = sub_1BA4A5418();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDC5F1D0);
    }
  }
}

uint64_t sub_1B9F530F0()
{
  v2 = v0;
  sub_1B9F53270();
  v3 = sub_1BA4A7068();
  sub_1BA4A6FD8();
  v4 = sub_1BA4A7078();

  if (!v1)
  {
    v5 = [v4 thumbnailImageData];
    if (v5)
    {
      v6 = v5;
      v7 = sub_1BA4A1608();
      v9 = v8;

      type metadata accessor for CGImage(0);
      v10 = sub_1BA4A6EC8();
      v2 = sub_1BA4A6EB8();
      sub_1B9F2BB4C(v7, v9);
    }

    else
    {

      return 0;
    }
  }

  return v2;
}

unint64_t sub_1B9F53270()
{
  result = qword_1EDC5E540;
  if (!qword_1EDC5E540)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDC5E540);
  }

  return result;
}

void sub_1B9F532BC()
{
  if (!qword_1EDC5F248)
  {
    type metadata accessor for AnimatedSnidgetCurrentValueText(255);
    sub_1B9F5366C(255, &qword_1EDC5EC90, MEMORY[0x1E697E1E0], MEMORY[0x1E6980A08]);
    v0 = sub_1BA4A5418();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDC5F248);
    }
  }
}

id sub_1B9F53348(char a1)
{
  v2 = v1;
  v22.receiver = v2;
  v22.super_class = type metadata accessor for CompoundDataSourceCollectionViewController();
  objc_msgSendSuper2(&v22, sel_viewIsAppearing_, a1 & 1);
  result = [v2 collectionView];
  if (!result)
  {
    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  v5 = result;
  v6 = OBJC_IVAR____TtC18HealthExperienceUI42CompoundDataSourceCollectionViewController_collectionViewBackgroundColor;
  swift_beginAccess();
  v7 = *(v2 + v6);
  if (v7)
  {
    v8 = *(v2 + v6);
  }

  else
  {
    v9 = [v2 traitCollection];
    sub_1B9F3AEE8();
    sub_1BA4A7358();

    if ((v21 | 8) == 0xC)
    {
      v10 = [objc_opt_self() secondarySystemBackgroundColor];
    }

    else
    {
      v10 = [objc_opt_self() systemGroupedBackgroundColor];
    }

    v8 = v10;
  }

  v11 = v7;
  [v5 setBackgroundColor_];

  v12 = [v2 traitCollection];
  v13 = sub_1BA4A7368();

  (*((*MEMORY[0x1E69E7D40] & *v2) + 0x128))(v13);
  v14 = OBJC_IVAR____TtC18HealthExperienceUI42CompoundDataSourceCollectionViewController_dataSourceAdaptor;
  result = swift_beginAccess();
  v15 = *(v2 + v14);
  if (!v15)
  {
    goto LABEL_16;
  }

  v16 = OBJC_IVAR____TtC18HealthExperienceUI29DiffableCollectionViewAdaptor_loaded;
  result = swift_beginAccess();
  if ((*(v15 + v16) & 1) == 0)
  {
    v17 = sub_1B9F23FB0();
    (*(*v17 + 256))(v2, 0);
  }

  v18 = *(v2 + v14);
  if (!v18)
  {
    goto LABEL_17;
  }

  v19 = OBJC_IVAR____TtC18HealthExperienceUI29DiffableCollectionViewAdaptor_loaded;
  result = swift_beginAccess();
  if ((*(v18 + v19) & 1) == 0)
  {
    v20 = *(*v18 + 272);

    v20(0);
  }

  return result;
}

void sub_1B9F5366C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t TraitCollectionChangeHandling.notifyIfChangedTraitsWithinObservedTraits(traitEnvironment:previousTraitCollection:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(TraitCollectionChangeHandling.changedTraitsWithinObservedTraits(traitEnvironment:previousTraitCollection:)(a1, a2, a3, a4) + 16);

  if (v8)
  {
    v10 = *(a4 + 16);

    return v10(a1, a2, a3, a4);
  }

  return result;
}

void sub_1B9F5374C()
{
  if (!qword_1EDC5EC08)
  {
    sub_1B9F5366C(255, &qword_1EDC6B640, MEMORY[0x1E69E6530], MEMORY[0x1E69E6720]);
    v0 = sub_1BA4A5B08();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDC5EC08);
    }
  }
}

uint64_t TraitCollectionChangeHandling.changedTraitsWithinObservedTraits(traitEnvironment:previousTraitCollection:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v8 = [a1 traitCollection];
  v9 = sub_1BA4A7348();

  v11[2] = a3;
  v11[3] = a4;
  v11[4] = v5;
  return sub_1B9F53908(sub_1B9F538BC, v11, v9);
}

void sub_1B9F53864()
{
  if (!qword_1EDC5ECD0)
  {
    v0 = sub_1BA4A59E8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDC5ECD0);
    }
  }
}

uint64_t sub_1B9F53908(uint64_t result, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  if (v5)
  {
    v6 = result;
    v7 = 0;
    v8 = MEMORY[0x1E69E7CC0];
    while (v7 < *(a3 + 16))
    {
      v11 = *(a3 + 16 * v7 + 32);
      v12 = v11;
      result = v6(&v12);
      if (v3)
      {

        goto LABEL_15;
      }

      if (result)
      {
        result = swift_isUniquelyReferenced_nonNull_native();
        v13 = v8;
        if ((result & 1) == 0)
        {
          result = sub_1BA066D34(0, *(v8 + 16) + 1, 1);
          v8 = v13;
        }

        v10 = *(v8 + 16);
        v9 = *(v8 + 24);
        if (v10 >= v9 >> 1)
        {
          result = sub_1BA066D34((v9 > 1), v10 + 1, 1);
          v8 = v13;
        }

        *(v8 + 16) = v10 + 1;
        *(v8 + 16 * v10 + 32) = v11;
      }

      if (v5 == ++v7)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_15:

    return v8;
  }

  return result;
}

BOOL sub_1B9F53A90(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *a1;
  v5 = (*(a4 + 8))(a3, a4);
  v6 = *(v5 + 16) + 1;
  v7 = 32;
  do
  {
    if (!--v6)
    {
      break;
    }

    v8 = *(v5 + v7);
    v7 += 16;
  }

  while (v4 != v8);
  v9 = v6 != 0;

  return v9;
}

uint64_t sub_1B9F53B14(uint64_t a1)
{
  v2 = v1;
  sub_1B9F11824(0, &qword_1EDC5F8A0, MEMORY[0x1E69E6168], MEMORY[0x1E69DC168]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v14 - v7;
  v9 = OBJC_IVAR____TtC18HealthExperienceUI29DiffableCollectionViewAdaptor_loaded;
  swift_beginAccess();
  *(v2 + v9) = 1;
  v10 = *(v2 + OBJC_IVAR____TtC18HealthExperienceUI29DiffableCollectionViewAdaptor_backingDataSource + 8);
  ObjectType = swift_getObjectType();
  v12 = *(v10 + 16);
  swift_unknownObjectRetain();
  v12(ObjectType, v10);
  swift_unknownObjectRelease();
  (*(*v2 + 296))(v8, a1, 1, 0, 0);
  return (*(v6 + 8))(v8, v5);
}

void sub_1B9F53CD0()
{
  sub_1B9F53A5C(319);
  if (v0 <= 0x3F)
  {
    type metadata accessor for SnidgetSwiftChartViewModel.DiagramHighlight(319);
    if (v1 <= 0x3F)
    {
      sub_1BA4A1898();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1B9F53D84(uint64_t a1, int a2, int a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v53 = a4;
  v54 = a5;
  v50 = a2;
  v51 = a3;
  v56 = a1;
  v45 = *v5;
  v55 = type metadata accessor for DiffableCollectionViewAdaptor.DebugState(0);
  MEMORY[0x1EEE9AC00](v55);
  v52 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F11824(0, &qword_1EDC5F8A0, MEMORY[0x1E69E6168], MEMORY[0x1E69DC168]);
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v46 = &v43 - v11;
  v12 = sub_1BA4A3EA8();
  v48 = *(v12 - 8);
  v49 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v47 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F115CC(0, &qword_1EDC6ADE0, sub_1B9F1174C, MEMORY[0x1E69A3C40]);
  v15 = v14;
  v16 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v43 - v17;
  v19 = sub_1BA4A64F8();
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v22 = (&v43 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1B9F0ADF8(0, &qword_1EDC6B5A0);
  *v22 = sub_1BA4A7308();
  (*(v20 + 104))(v22, *MEMORY[0x1E69E8020], v19);
  v23 = sub_1BA4A6528();
  result = (*(v20 + 8))(v22, v19);
  if (v23)
  {
    v25 = OBJC_IVAR____TtC18HealthExperienceUI29DiffableCollectionViewAdaptor__shouldLogApplyingSnapshotWithNumberOfSections;
    swift_beginAccess();
    (*(v16 + 16))(v18, v6 + v25, v15);
    sub_1BA4A1CA8();
    (*(v16 + 8))(v18, v15);
    v26 = v56;
    v27 = v9;
    if (v59 != 2 && (v59 & 1) != 0)
    {
      v28 = v47;
      sub_1BA4A3E28();
      v29 = v46;
      (*(v10 + 16))(v46, v26, v27);

      v30 = sub_1BA4A3E88();
      v31 = sub_1BA4A6FC8();

      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        v44 = swift_slowAlloc();
        v58 = v44;
        *v32 = 136315650;
        v33 = sub_1BA4A85D8();
        LODWORD(v45) = v31;
        v35 = sub_1B9F0B82C(v33, v34, &v58);

        *(v32 + 4) = v35;
        *(v32 + 12) = 2080;
        v59 = 0;
        v60 = 0xE000000000000000;
        v57 = v6;
        sub_1BA4A7FB8();
        v36 = sub_1B9F0B82C(v59, v60, &v58);

        *(v32 + 14) = v36;
        *(v32 + 22) = 2048;
        v37 = sub_1BA4A4548();
        (*(v10 + 8))(v29, v27);
        *(v32 + 24) = v37;
        _os_log_impl(&dword_1B9F07000, v30, v45, "[%s <%s>]: [HealthAppInternal flag enabled]: applySnapshot(snapshot Applying snapshot with %ld sections", v32, 0x20u);
        v38 = v44;
        swift_arrayDestroy();
        MEMORY[0x1BFAF43A0](v38, -1, -1);
        MEMORY[0x1BFAF43A0](v32, -1, -1);
      }

      else
      {
        (*(v10 + 8))(v29, v27);
      }

      (*(v48 + 8))(v28, v49);
    }

    v39 = [*(v6 + OBJC_IVAR____TtC18HealthExperienceUI29DiffableCollectionViewAdaptor_collectionView) window];
    if (v39 && (v39, (v50 & 1) != 0))
    {
      v40 = *(v6 + OBJC_IVAR____TtC18HealthExperienceUI29DiffableCollectionViewAdaptor_diffableDataSource);
    }

    else
    {
      v40 = *(v6 + OBJC_IVAR____TtC18HealthExperienceUI29DiffableCollectionViewAdaptor_diffableDataSource);
      if (v51)
      {
        sub_1BA4A46D8();
LABEL_14:

        v41 = v52;
        (*(v10 + 16))(v52, v26, v27);
        swift_storeEnumTagMultiPayload();
        v42 = OBJC_IVAR____TtC18HealthExperienceUI29DiffableCollectionViewAdaptor__debug_currentSnapshotState;
        swift_beginAccess();
        sub_1B9F8083C(v41, v6 + v42);
        return swift_endAccess();
      }
    }

    sub_1BA4A4718();
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

uint64_t sub_1B9F5455C()
{
  result = sub_1BA4A0FA8();
  if (v1 <= 0x3F)
  {
    result = sub_1BA4A1898();
    if (v2 <= 0x3F)
    {
      result = sub_1BA4A51B8();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t type metadata accessor for SwiftChartPoint()
{
  result = qword_1EDC6D998;
  if (!qword_1EDC6D998)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B9F54664()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI29DiffableCollectionViewAdaptor_loaded;
  result = swift_beginAccess();
  if ((*(v0 + v1) & 1) == 0)
  {
    return (*(*v0 + 272))(0);
  }

  return result;
}

void GradientBackgroundPresenting.layoutGradient(yOffset:)(uint64_t a1, uint64_t a2, double a3)
{
  v12 = (*(a2 + 8))();
  v7 = [v3 view];
  if (v7)
  {
    v8 = v7;
    if (a3 > 0.0)
    {
      v9 = -a3;
    }

    else
    {
      v9 = -0.0;
    }

    [v7 bounds];
    v11 = v10;

    [v12 setFrame_];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1B9F547E8()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void GradientBackgroundPresenting.gradientHeight.getter()
{
  v1 = [v0 view];
  if (v1)
  {
    v2 = v1;
    [v1 bounds];
  }

  else
  {
    __break(1u);
  }
}

id sub_1B9F54940(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);

  swift_unknownObjectRetain();
  v6 = v5(a2, a3);

  swift_unknownObjectRelease();

  return v6;
}

uint64_t sub_1B9F549F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7[0] = a1;
  v7[1] = a2;
  v7[2] = sub_1B9F54D58(a1);
  v4 = *(*a3 + 232);
  swift_unknownObjectRetain();
  v5 = v4(v7);
  swift_unknownObjectRelease();
  return v5;
}

uint64_t sub_1B9F54B1C(uint64_t a1, uint64_t *a2)
{
  v4 = v2;
  v23[0] = a1;
  sub_1B9F117BC(0, &qword_1EDC5F8A0, MEMORY[0x1E69E6168], MEMORY[0x1E69DC168]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v23 - v11;
  v13 = *a2;
  swift_beginAccess();
  v14 = *(v7 + 16);
  v14(v12, v2 + v13, v6);
  v15 = sub_1BA4A4548();
  v16 = *(v7 + 8);
  v16(v12, v6);
  result = 0;
  if (v15 > v23[0])
  {
    v14(v12, v4 + v13, v6);
    v14(v10, v4 + v13, v6);
    v18 = sub_1BA4A4578();
    result = (v16)(v10, v6);
    if ((v23[0] & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*(v18 + 16) > v23[0])
    {
      v19 = v18 + 16 * v23[0];
      v21 = *(v19 + 32);
      v20 = *(v19 + 40);

      v23[1] = v21;
      v23[2] = v20;
      v22 = sub_1BA4A44A8();

      v16(v12, v6);
      return v22;
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1B9F54D64(unint64_t *a1, void (*a2)(uint64_t), void (*a3)(void))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1B9F54DF4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a4(255);
    v11 = a5(a1, v9, v10);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

id sub_1B9F54E78(uint64_t *a1)
{
  v3 = v1;
  v52 = *v3;
  sub_1B9F117BC(0, &qword_1EDC5F8A0, MEMORY[0x1E69E6168], MEMORY[0x1E69DC168]);
  v72 = v5;
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v46 - v7;
  v10 = *a1;
  v9 = a1[1];
  v11 = a1[2];
  v53 = v3;
  type metadata accessor for CompoundSectionedDataSource();
  sub_1B9F0D9AC(0, qword_1EDC628A8);

  if (!swift_dynamicCast())
  {
    v51 = v9;
    *&v56 = 0;
    v54 = 0u;
    v55 = 0u;
    sub_1B9F3B8FC(&v54, &qword_1EDC628A0, qword_1EDC628A8);
    v15 = v10;
    if (sub_1B9F54B1C(v10, &OBJC_IVAR____TtC18HealthExperienceUI27CompoundSectionedDataSource_snapshot) || ((*(*v3 + 240))(v10) & 1) == 0)
    {
      v16 = OBJC_IVAR____TtC18HealthExperienceUI27CompoundSectionedDataSource_snapshot;
      swift_beginAccess();
      v17 = v72;
      (*(v6 + 16))(v8, v3 + v16, v72);
      v18 = sub_1BA4A4578();
      v20 = v6 + 8;
      v19 = *(v6 + 8);
      v19(v8, v17);
      if ((v15 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (v15 < *(v18 + 16))
      {
        v48 = v19;
        v49 = v20;
        v46[1] = v2;

        v21 = sub_1B9F3A92C();
        v23 = v22;
        v47 = v24;
        v26 = v25;

        v27 = sub_1B9F3A69C(v21, v23);
        v29 = v28;

        if (v27)
        {
          v46[0] = v15;
          ObjectType = swift_getObjectType();
          v31 = v29;
          v32 = *(v29 + 16);
          swift_unknownObjectRetain();
          v50 = v31;
          v32(ObjectType, v31);
          swift_unknownObjectRelease();
          *&v62 = v47;
          *(&v62 + 1) = v26;
          v33 = v72;
          v34 = sub_1BA4A44E8();
          v36 = v35;
          v48(v8, v33);

          if (v36)
          {
            v34 = 0;
          }

          v37 = v51;
          v70 = v27;
          v71 = v50;
          sub_1B9F0D9AC(0, &qword_1EDC67F10);
          sub_1B9F0D9AC(0, &unk_1EDC60EE0);
          swift_unknownObjectRetain();
          if (swift_dynamicCast())
          {
            if (*(&v55 + 1))
            {
              sub_1B9F1134C(&v54, &v62);
              v38 = *(&v63 + 1);
              v39 = v64;
              __swift_project_boxed_opaque_existential_1(&v62, *(&v63 + 1));
              swift_unknownObjectRetain();
              v40 = sub_1B9F54B1C(v46[0], &OBJC_IVAR____TtC18HealthExperienceUI27CompoundSectionedDataSource_snapshot);
              *&v54 = v34;
              *(&v54 + 1) = v37;
              *&v55 = v40;
              v14 = (*(v39 + 8))(&v54, v38, v39);
              swift_unknownObjectRelease();
              swift_unknownObjectRelease();
              goto LABEL_3;
            }
          }

          else
          {
            *&v56 = 0;
            v54 = 0u;
            v55 = 0u;
          }

          v29 = v50;
        }

        else
        {

          *&v56 = 0;
          v54 = 0u;
          v55 = 0u;
        }

        sub_1B9F3B8FC(&v54, &qword_1EBBECC80, &unk_1EDC60EE0);
        *&v62 = 0;
        *(&v62 + 1) = 0xE000000000000000;
        sub_1BA4A7DF8();

        strcpy(&v62, "Data source ");
        BYTE13(v62) = 0;
        HIWORD(v62) = -5120;
        *&v54 = v27;
        *(&v54 + 1) = v29;
        sub_1B9F40D78(0, &qword_1EBBED838, &qword_1EDC67F10);
        swift_unknownObjectRetain();
        v41 = sub_1BA4A6808();
        MEMORY[0x1BFAF1350](v41);

        MEMORY[0x1BFAF1350](0x20726F6620, 0xE500000000000000);
        *&v54 = v52;
        swift_getMetatypeMetadata();
        v42 = sub_1BA4A6808();
        MEMORY[0x1BFAF1350](v42);

        MEMORY[0x1BFAF1350](0xD000000000000019, 0x80000001BA4F21C0);
        v43 = *(&v62 + 1);
        v14 = v62;
        sub_1B9FF806C();
        swift_allocError();
        *v44 = v14;
        *(v44 + 8) = v43;
        *(v44 + 16) = 1;
        swift_willThrow();
        swift_unknownObjectRelease();
        return v14;
      }

      __break(1u);
    }

    else if (qword_1EDC6D2F0 == -1)
    {
LABEL_7:
      v66 = xmmword_1EDC6D338;
      v67 = unk_1EDC6D348;
      v68 = xmmword_1EDC6D358;
      v69 = unk_1EDC6D368;
      v62 = xmmword_1EDC6D2F8;
      v63 = *&qword_1EDC6D308;
      v64 = xmmword_1EDC6D318;
      v65 = unk_1EDC6D328;
      sub_1B9F0ADF8(0, &qword_1EDC6B530);
      v58 = xmmword_1EDC6D338;
      v59 = unk_1EDC6D348;
      v60 = xmmword_1EDC6D358;
      v61 = unk_1EDC6D368;
      v54 = xmmword_1EDC6D2F8;
      v55 = *&qword_1EDC6D308;
      v56 = xmmword_1EDC6D318;
      v57 = unk_1EDC6D328;
      sub_1B9F1D9A4(&v62, &v53);
      return sub_1B9F293A8(&v54);
    }

    swift_once();
    goto LABEL_7;
  }

  sub_1B9F1134C(&v54, &v62);
  v12 = *(&v63 + 1);
  v13 = v64;
  __swift_project_boxed_opaque_existential_1(&v62, *(&v63 + 1));
  *&v54 = v10;
  *(&v54 + 1) = v9;
  *&v55 = v11;
  v14 = LayoutConfigurationTypeProviding.layoutConfigurationDefaultLayout(for:)(&v54, v12, v13);
LABEL_3:
  __swift_destroy_boxed_opaque_existential_1(&v62);
  return v14;
}

void sub_1B9F55570(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t))
{
  if (!*a2)
  {
    sub_1B9F54DF4(255, a3, a4, a5, MEMORY[0x1E697E830]);
    v6 = sub_1BA4A5418();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_1B9F55630(uint64_t a1)
{
  v2 = v1;
  v26[1] = *v2;
  v4 = sub_1BA4A3EA8();
  v26[2] = *(v4 - 8);
  v26[3] = v4;
  MEMORY[0x1EEE9AC00](v4);
  v5 = sub_1BA4A1998();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = v26 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v14 = v26 - v13;
  MEMORY[0x1BFAEC380](0, a1);
  v15 = sub_1B9F55C08(v9, v14);
  v17 = v16;
  (*(v6 + 32))(v12, v9, v5);
  v29 = v15;
  v30 = v17;
  sub_1B9F0D9AC(0, &qword_1EDC67F10);
  sub_1B9F0D9AC(0, &unk_1EDC60EE0);
  swift_unknownObjectRetain();
  if (swift_dynamicCast())
  {
    sub_1B9F1134C(v27, v31);
    v18 = v32;
    v19 = v33;
    __swift_project_boxed_opaque_existential_1(v31, v32);
    v20 = sub_1BA4A1968();
    v21 = (*(v19 + 16))(v20, v18, v19);
    swift_unknownObjectRelease();
    v22 = *(v6 + 8);
    v22(v12, v5);
    v22(v14, v5);
    __swift_destroy_boxed_opaque_existential_1(v31);
  }

  else
  {
    swift_unknownObjectRelease();
    v23 = *(v6 + 8);
    v23(v12, v5);
    v23(v14, v5);
    v28 = 0;
    memset(v27, 0, sizeof(v27));
    sub_1B9F3B8FC(v27, &qword_1EBBECC80, &unk_1EDC60EE0);
    v24 = OBJC_IVAR____TtC18HealthExperienceUI27CompoundSectionedDataSource_collapseEmptySections;
    swift_beginAccess();
    v21 = *(v2 + v24);
  }

  return v21 & 1;
}

unint64_t sub_1B9F55C08(uint64_t a1, uint64_t a2)
{
  v63 = a1;
  v3 = v2;
  v65 = *v3;
  sub_1B9F117BC(0, &qword_1EDC5F8A0, MEMORY[0x1E69E6168], MEMORY[0x1E69DC168]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v55 - v8;
  v71 = a2;
  v10 = sub_1BA4A1968();
  v11 = OBJC_IVAR____TtC18HealthExperienceUI27CompoundSectionedDataSource_snapshot;
  swift_beginAccess();
  v66 = *(v7 + 16);
  v66(v9, v3 + v11, v6);
  v12 = sub_1BA4A4548();
  v13 = *(v7 + 8);
  v13(v9, v6);
  if (v10 >= v12)
  {
    v69 = 0;
    v70 = 0xE000000000000000;
    sub_1BA4A7DF8();
    MEMORY[0x1BFAF1350](0xD000000000000035, 0x80000001BA4F21E0);
    v67 = sub_1BA4A1968();
    v44 = sub_1BA4A82D8();
    MEMORY[0x1BFAF1350](v44);

    MEMORY[0x1BFAF1350](0xD00000000000001DLL, 0x80000001BA4F2220);
    v66(v9, v3 + v11, v6);
    v45 = sub_1BA4A4548();
    v13(v9, v6);
    v67 = v45;
    v46 = sub_1BA4A82D8();
    MEMORY[0x1BFAF1350](v46);

    MEMORY[0x1BFAF1350](0x206E692029, 0xE500000000000000);
    v67 = v3;
    type metadata accessor for CompoundSectionedDataSource();
    sub_1B9F46F90(&qword_1EBBF09F0, type metadata accessor for CompoundSectionedDataSource);
    v47 = sub_1BA4A82D8();
    MEMORY[0x1BFAF1350](v47);

    v48 = " and the number of sections (";
    v49 = 0xD0000000000000B1;
LABEL_9:
    MEMORY[0x1BFAF1350](v49, v48 | 0x8000000000000000);
    v51 = v69;
    v52 = v70;
    sub_1BA1BA020();
    swift_allocError();
    *v53 = v51;
    v53[1] = v52;
    return swift_willThrow();
  }

  v62 = v3;
  v59 = v7 + 16;
  v66(v9, v3 + v11, v6);
  v14 = sub_1BA4A4578();
  v13(v9, v6);
  result = sub_1BA4A1968();
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_13;
  }

  if (result >= *(v14 + 16))
  {
LABEL_13:
    __break(1u);
    return result;
  }

  v58 = v11;
  v61 = v13;
  v16 = v14 + 16 * result;
  v17 = *(v16 + 32);
  v18 = *(v16 + 40);

  v57 = v17;
  v19 = sub_1B9F3A92C();
  v21 = v20;
  v60 = v22;
  v64 = v23;
  v24 = sub_1B9F3A69C(v19, v20);
  if (!v24)
  {

    v69 = 0;
    v70 = 0xE000000000000000;
    sub_1BA4A7DF8();
    MEMORY[0x1BFAF1350](91, 0xE100000000000000);
    v67 = v65;
    swift_getMetatypeMetadata();
    v50 = sub_1BA4A6808();
    MEMORY[0x1BFAF1350](v50);

    MEMORY[0x1BFAF1350](0xD00000000000002DLL, 0x80000001BA4F2300);
    MEMORY[0x1BFAF1350](v19, v21);

    v48 = "child data source identifier ";
    v49 = 0xD00000000000006FLL;
    goto LABEL_9;
  }

  v26 = v24;
  v27 = v25;

  ObjectType = swift_getObjectType();
  v29 = *(v27 + 16);
  v30 = v26;
  v56 = ObjectType;
  v29(ObjectType, v27);
  v69 = v60;
  v70 = v64;
  v31 = v6;
  v32 = sub_1BA4A44E8();
  LOBYTE(v26) = v33;
  v61(v9, v6);
  if (v26)
  {
    v69 = 0;
    v70 = 0xE000000000000000;
    sub_1BA4A7DF8();
    MEMORY[0x1BFAF1350](91, 0xE100000000000000);
    v67 = v65;
    swift_getMetatypeMetadata();
    v34 = sub_1BA4A6808();
    MEMORY[0x1BFAF1350](v34);

    MEMORY[0x1BFAF1350](0x6F6974636573205DLL, 0xED0000203A44496ELL);
    MEMORY[0x1BFAF1350](v57, v18);

    MEMORY[0x1BFAF1350](0xD000000000000015, 0x80000001BA4F23A0);
    MEMORY[0x1BFAF1350](v60, v64);

    MEMORY[0x1BFAF1350](544106784, 0xE400000000000000);
    v35 = v30;
    v36 = (*(v27 + 8))(v56, v27);
    MEMORY[0x1BFAF1350](v36);

    MEMORY[0x1BFAF1350](0xD00000000000003BLL, 0x80000001BA4F23C0);
    sub_1BA4A1998();
    sub_1B9F46F90(&unk_1EBBED850, MEMORY[0x1E6969C28]);
    v37 = sub_1BA4A82D8();
    MEMORY[0x1BFAF1350](v37);

    MEMORY[0x1BFAF1350](0xD000000000000013, 0x80000001BA4F2400);
    v66(v9, v62 + v58, v31);
    v38 = sub_1BA4A4548();
    v61(v9, v31);
    v67 = v38;
    v39 = sub_1BA4A82D8();
    MEMORY[0x1BFAF1350](v39);

    MEMORY[0x1BFAF1350](0xD000000000000013, 0x80000001BA4F2420);
    v67 = v35;
    v68 = v27;
    sub_1B9F0D9AC(0, &qword_1EDC67F10);
    swift_unknownObjectRetain();
    v40 = sub_1BA4A6808();
    MEMORY[0x1BFAF1350](v40);

    v41 = v69;
    v42 = v70;
    sub_1BA1BA020();
    swift_allocError();
    *v43 = v41;
    v43[1] = v42;
    swift_willThrow();
    return swift_unknownObjectRelease();
  }

  else
  {

    v54 = sub_1BA4A1958();
    MEMORY[0x1BFAEC380](v54, v32);
    return v30;
  }
}

void sub_1B9F56438()
{
  if (!qword_1EDC5F720)
  {
    sub_1B9F56D28(255, &qword_1EDC5F838, sub_1B9F56E14, sub_1B9F56ECC);
    sub_1B9F5708C();
    v0 = sub_1BA4A49D8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDC5F720);
    }
  }
}

void sub_1B9F564F8()
{
  if (!qword_1EDC5EBD0)
  {
    sub_1B9F56438();
    sub_1B9F48334(&qword_1EDC5F728, sub_1B9F56438);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EDC5EBD0);
    }
  }
}

uint64_t sub_1B9F565AC(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  v6 = *v3;
  a3();
  return (*(a2 + 16))(a1, *(v6 + 80), a2) & 1;
}

void sub_1B9F56640()
{
  if (!qword_1EDC5EBC0)
  {
    sub_1B9F56B68();
    sub_1B9F57C6C();
    sub_1B9F564F8();
    sub_1B9F56438();
    sub_1B9F48334(&qword_1EDC5F728, sub_1B9F56438);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1B9F57DAC();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EDC5EBC0);
    }
  }
}

void sub_1B9F5677C()
{
  if (!qword_1EDC5EBB8)
  {
    sub_1B9F56640();
    sub_1B9F51694(255, &qword_1EDC5E680, MEMORY[0x1E69E63B0], MEMORY[0x1E69E62F8]);
    sub_1B9F56B68();
    sub_1B9F57C6C();
    sub_1B9F564F8();
    sub_1B9F56438();
    sub_1B9F48334(&qword_1EDC5F728, sub_1B9F56438);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1B9F57DAC();
    swift_getOpaqueTypeConformance2();
    sub_1B9F57E6C();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EDC5EBB8);
    }
  }
}

void sub_1B9F5692C()
{
  sub_1B9F292B4(&xmmword_1EDC6D2F8);
  v0 = *(MEMORY[0x1E69DC5C0] + 16);
  xmmword_1EDC6D358 = *MEMORY[0x1E69DC5C0];
  unk_1EDC6D368 = v0;
  v1 = objc_opt_self();
  v2 = [v1 absoluteDimension_];
  v3 = *(&xmmword_1EDC6D2F8 + 1);
  *(&xmmword_1EDC6D2F8 + 1) = v2;

  v4 = [v1 absoluteDimension_];
  v5 = qword_1EDC6D308;
  qword_1EDC6D308 = v4;

  v6 = qword_1EDC6D310;
  v8 = xmmword_1EDC6D318;
  v7 = unk_1EDC6D328;
  *&qword_1EDC6D310 = 0u;
  *(&xmmword_1EDC6D318 + 8) = 0u;

  sub_1B9F1DA18(v6, v8, *(&v8 + 1), v7);
}

void sub_1B9F569EC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a5(a1, v9, a4);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

void sub_1B9F56B68()
{
  if (!qword_1EDC5EBC8)
  {
    sub_1B9F564F8();
    sub_1B9F56438();
    sub_1B9F48334(&qword_1EDC5F728, sub_1B9F56438);
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EDC5EBC8);
    }
  }
}

uint64_t sub_1B9F56C9C()
{
  v1 = *v0;
  v2 = OBJC_IVAR____TtC18HealthExperienceUI32MutableArrayDataSourceWithLayout_collapseEmptySections;
  swift_beginAccess();
  return *(v1 + v2);
}

void sub_1B9F56D28(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    v6 = sub_1BA4A48A8();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t Supplementary<>.layout(for:)(__int128 *a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *a1;
  v5 = *(a1 + 2);
  v9 = v2[4];
  v7 = v4;
  v8 = v5;
  return (*(a2 + 8))(&v7, *(v3 + 80), a2);
}

uint64_t sub_1B9F56F00(__int128 *a1)
{
  v7 = *a1;
  v2 = *(a1 + 2);
  v3 = (*v1 + OBJC_IVAR____TtC18HealthExperienceUI32MutableArrayDataSourceWithLayout_layoutSectionProvider);
  swift_beginAccess();
  v4 = *v3;
  v8 = v7;
  v9 = v2;

  v5 = v4(&v8);

  return v5;
}

void sub_1B9F56FA0()
{
  if (!qword_1EDC5F7B0)
  {
    type metadata accessor for SnidgetSwiftChartView.AverageLine(255);
    sub_1B9F48334(qword_1EDC673F8, type metadata accessor for SnidgetSwiftChartView.AverageLine);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EDC5F7B0);
    }
  }
}

unint64_t sub_1B9F5708C()
{
  result = qword_1EDC5F840;
  if (!qword_1EDC5F840)
  {
    sub_1B9F56D28(255, &qword_1EDC5F838, sub_1B9F56E14, sub_1B9F56ECC);
    sub_1B9F57238();
    sub_1B9F579CC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC5F840);
  }

  return result;
}

uint64_t sub_1B9F57144(void *a1, uint64_t (*a2)(void, void))
{
  result = a2(*a1, a1[1]);
  if (!result)
  {
    sub_1BA4A7DF8();

    v3 = sub_1BA4A85D8();
    MEMORY[0x1BFAF1350](v3);

    MEMORY[0x1BFAF1350](0xD000000000000023, 0x80000001BA4EAFF0);
    sub_1B9FF806C();
    swift_allocError();
    *v4 = 91;
    *(v4 + 8) = 0xE100000000000000;
    *(v4 + 16) = 1;
    return swift_willThrow();
  }

  return result;
}

unint64_t sub_1B9F57238()
{
  result = qword_1EDC5F740;
  if (!qword_1EDC5F740)
  {
    sub_1B9F56E14(255);
    sub_1B9F578EC();
    sub_1B9F48334(qword_1EDC675F0, type metadata accessor for SnidgetSwiftChartView.DistributionChartMarks);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC5F740);
  }

  return result;
}

void *ListLayoutConfiguration.layout(for:)(void *a1)
{
  v2 = v1;
  v29 = a1;
  v28 = sub_1BA4A47C8();
  v3 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1BA4A47D8();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1BA4A47B8();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1BA4A4848();
  v30 = *(v14 - 8);
  v31 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 104))(v13, *MEMORY[0x1E69DC238], v10);
  sub_1BA4A47E8();
  (*(v7 + 104))(v9, *MEMORY[0x1E69DC280], v6);
  sub_1BA4A4808();
  v17 = [objc_opt_self() clearColor];
  sub_1BA4A4818();
  if (*(v2 + 192) == 1)
  {
    sub_1B9F0F1B8(*(v2 + 160));
  }

  sub_1BA4A4788();
  if (*(v2 + 193) == 1)
  {
    sub_1B9F0F1B8(*(v2 + 176));
  }

  sub_1BA4A4798();
  sub_1BA4A4828();
  v18 = type metadata accessor for ListLayoutConfiguration();
  (*(v7 + 16))(v9, v2 + *(v18 + 88), v6);
  sub_1BA4A4808();
  (*(v3 + 16))(v5, v2 + *(v18 + 92), v28);
  sub_1BA4A47F8();
  v19 = *(v2 + 40);
  sub_1BA4A4818();
  sub_1B9F0F1B8(*(v2 + 128));
  sub_1BA4A4838();
  if ((*(v2 + 120) & 1) == 0)
  {
    v20 = sub_1BA4A47A8();
    sub_1BA4A4618();
    v20(v32, 0);
  }

  v21 = [v29 traitCollection];
  sub_1BA4A7368();

  sub_1B9F0ADF8(0, &qword_1EDC6B530);
  v22 = sub_1BA4A7638();
  [v22 setContentInsetsReference_];
  sub_1BA4A65A8();
  [v22 setInterGroupSpacing_];
  [v22 setContentInsetsReference_];
  [v22 setContentInsets_];
  v32[8] = ListLayoutConfiguration.headerItem.getter();
  v23 = 0;
  v32[9] = ListLayoutConfiguration.footerItem.getter();
  v32[0] = MEMORY[0x1E69E7CC0];
  while (v23 != 2)
  {
    v24 = v32[v23++ + 8];
    if (v24)
    {
      v25 = v24;
      MEMORY[0x1BFAF1510]();
      if (*((v32[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v32[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1BA4A6B68();
      }

      sub_1BA4A6BB8();
    }
  }

  sub_1B9F6A804(0, &qword_1EDC6B4E0, &qword_1EDC6B4E8);
  swift_arrayDestroy();
  sub_1B9F0ADF8(0, &qword_1EDC6B4E8);
  v26 = sub_1BA4A6AE8();

  [v22 setBoundarySupplementaryItems_];

  [v22 setInterGroupSpacing_];
  (*(v30 + 8))(v16, v31);
  return v22;
}

unint64_t sub_1B9F578EC()
{
  result = qword_1EDC5F750;
  if (!qword_1EDC5F750)
  {
    sub_1B9F56E84(255);
    sub_1B9F48334(qword_1EDC67548, type metadata accessor for SnidgetSwiftChartView.BarChartMarks);
    sub_1B9F48334(qword_1EDC674A0, type metadata accessor for SnidgetSwiftChartView.LineChartMarks);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC5F750);
  }

  return result;
}

unint64_t sub_1B9F579CC()
{
  result = qword_1EDC5F7A0;
  if (!qword_1EDC5F7A0)
  {
    sub_1B9F56ECC(255);
    type metadata accessor for SnidgetSwiftChartView.AverageLine(255);
    sub_1B9F48334(qword_1EDC673F8, type metadata accessor for SnidgetSwiftChartView.AverageLine);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC5F7A0);
  }

  return result;
}

id ListLayoutConfiguration.headerItem.getter()
{
  v1 = *v0;
  if (!*v0)
  {
    return 0;
  }

  v2 = *(v0 + 8);
  if (!v2)
  {
    return 0;
  }

  v3 = objc_opt_self();
  v4 = v1;
  v5 = v2;
  v6 = [v3 sizeWithWidthDimension:v4 heightDimension:v5];
  v7 = [objc_opt_self() boundarySupplementaryItemWithLayoutSize:v6 elementKind:*MEMORY[0x1E69DDC08] alignment:1];
  [v7 setPinToVisibleBounds_];

  return v7;
}

id ListLayoutConfiguration.footerItem.getter()
{
  v1 = *(v0 + 24);
  if (!v1)
  {
    return 0;
  }

  v2 = *(v0 + 32);
  if (!v2)
  {
    return 0;
  }

  v3 = objc_opt_self();
  v4 = v1;
  v5 = v2;
  v6 = [v3 sizeWithWidthDimension:v4 heightDimension:v5];
  v7 = [objc_opt_self() boundarySupplementaryItemWithLayoutSize:v6 elementKind:*MEMORY[0x1E69DDC00] alignment:4];
  [v7 setPinToVisibleBounds_];

  return v7;
}

void sub_1B9F57C6C()
{
  if (!qword_1EDC5E868)
  {
    sub_1BA4A1728();
    sub_1B9F48334(&qword_1EDC6E260, MEMORY[0x1E6969530]);
    v0 = sub_1BA4A6718();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDC5E868);
    }
  }
}

uint64_t sub_1B9F57D00(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  v9 = *a1;
  v4 = *(a1 + 16);
  sub_1B9F57F34(a1, a2, a4);
  v5 = v13;
  v6 = v14;
  __swift_project_boxed_opaque_existential_1(v12, v13);
  v10 = v9;
  v11 = v4;
  v7 = (*(v6 + 8))(&v10, v5, v6);
  __swift_destroy_boxed_opaque_existential_1(v12);
  return v7;
}

unint64_t sub_1B9F57DAC()
{
  result = qword_1EDC5E860;
  if (!qword_1EDC5E860)
  {
    sub_1B9F57C6C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC5E860);
  }

  return result;
}

unint64_t sub_1B9F57E6C()
{
  result = qword_1EDC5E678;
  if (!qword_1EDC5E678)
  {
    sub_1B9F51694(255, &qword_1EDC5E680, MEMORY[0x1E69E63B0], MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC5E678);
  }

  return result;
}

uint64_t sub_1B9F57F34(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3();
  sub_1B9F0D9AC(0, &qword_1EDC67F10);
  sub_1B9F0D9AC(0, &unk_1EDC60EE0);
  swift_unknownObjectRetain();
  return swift_dynamicCast();
}

void sub_1B9F57FD4()
{
  if (!qword_1EDC5EC68)
  {
    sub_1BA4A54D8();
    v0 = sub_1BA4A5B08();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDC5EC68);
    }
  }
}

void sub_1B9F5802C()
{
  if (!qword_1EDC68450)
  {
    sub_1B9F53A5C(255);
    sub_1B9F58348(&qword_1EDC5E6E8, sub_1B9F53A5C, sub_1B9F58314);
    v0 = type metadata accessor for SnidgetAnimation();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDC68450);
    }
  }
}

id sub_1B9F580EC(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v14 = a1[2];
  if (qword_1EDC6D380 != -1)
  {
    swift_once();
  }

  v31[0] = xmmword_1EDC6D388;
  v31[1] = xmmword_1EDC6D398;
  v31[2] = xmmword_1EDC6D3A8;
  v31[3] = xmmword_1EDC6D3B8;
  v31[4] = xmmword_1EDC6D3C8;
  v31[5] = unk_1EDC6D3D8;
  v31[6] = xmmword_1EDC6D3E8;
  v31[7] = unk_1EDC6D3F8;
  v3 = *(&xmmword_1EDC6D388 + 1);
  v4 = xmmword_1EDC6D388;
  v5 = *(&xmmword_1EDC6D398 + 1);
  v32 = xmmword_1EDC6D398;
  v7 = xmmword_1EDC6D3A8;
  v6 = xmmword_1EDC6D3B8;
  v30 = *(&xmmword_1EDC6D3E8 + 1);
  v28 = *(&xmmword_1EDC6D3C8 + 8);
  v29 = *&qword_1EDC6D3E0;
  v27 = *(&xmmword_1EDC6D3B8 + 8);
  v8 = qword_1EDC6D400;
  sub_1B9F1D9A4(v31, v18);
  v9 = [v1 traitCollection];
  v10 = [v9 preferredContentSizeCategory];

  LOBYTE(v9) = sub_1BA4A7528();
  if (v9)
  {
    v11 = *(&v31[0] + 1);
    v3 = [objc_opt_self() estimatedDimension_];
  }

  sub_1B9F1DA18(v5, v7, *(&v7 + 1), v6);
  static GridLayoutEngine.standard.getter(v17);
  v16[0] = v2;
  v16[1] = v1;
  v16[2] = v14;
  v12 = GridLayoutEngine.layout(for:)(v16);
  v15[2] = v17[2];
  v15[3] = v17[3];
  v15[4] = v17[4];
  v15[0] = v17[0];
  v15[1] = v17[1];
  sub_1B9F5A690(v15);
  v19 = 0u;
  v20 = 0u;
  v21 = v27;
  v18[0] = v4;
  v18[1] = v3;
  v18[2] = v32;
  v22 = v28;
  v23 = v29;
  v24 = v30;
  v25 = v4;
  v26 = v8;
  sub_1B9F1DA58(v18);
  return v12;
}

uint64_t sub_1B9F58348(unint64_t *a1, void (*a2)(uint64_t), void (*a3)(void))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1B9F583C4@<X0>(uint64_t a1@<X8>, double a2@<D0>)
{
  swift_beginAccess();
  v4 = *&qword_1EDC68DF0;
  sub_1B9F5869C();
  v5 = sub_1BA4A7648();
  result = sub_1B9F58798(MEMORY[0x1E69E7CC0]);
  if (v4 <= 0.0)
  {
    result = sub_1BA4A8018();
    __break(1u);
  }

  else
  {
    *a1 = v4;
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
    *(a1 + 8) = result;
    *(a1 + 32) = a2;
    *(a1 + 48) = 0;
    *(a1 + 56) = 0;
    *(a1 + 40) = v5;
    *(a1 + 64) = sub_1B9F58BC4;
    *(a1 + 72) = 0;
  }

  return result;
}

void sub_1B9F584B8()
{
  if (!qword_1EDC5F320)
  {
    sub_1B9F58524();
    v0 = sub_1BA4A5218();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDC5F320);
    }
  }
}

unint64_t sub_1B9F58524()
{
  result = qword_1EDC5EA10;
  if (!qword_1EDC5EA10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC5EA10);
  }

  return result;
}

unint64_t sub_1B9F58578()
{
  result = qword_1EDC5EDF0;
  if (!qword_1EDC5EDF0)
  {
    sub_1B9F54DF4(255, &qword_1EDC5EDE8, sub_1B9F54AE0, sub_1B9F584B8, MEMORY[0x1E697E830]);
    sub_1B9F54D64(&qword_1EDC5EE00, sub_1B9F54AE0, sub_1B9F58C1C);
    sub_1B9F48334(&qword_1EDC5F328, sub_1B9F584B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC5EDF0);
  }

  return result;
}

unint64_t sub_1B9F5869C()
{
  result = qword_1EDC5E2F0;
  if (!qword_1EDC5E2F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDC5E2F0);
  }

  return result;
}

unint64_t sub_1B9F586E8()
{
  result = qword_1EDC5F030;
  if (!qword_1EDC5F030)
  {
    sub_1B9F56C54(255);
    sub_1B9F58D10();
    sub_1B9F48334(&qword_1EDC5EBF0, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC5F030);
  }

  return result;
}

unint64_t sub_1B9F587A0()
{
  result = qword_1EDC5EE78;
  if (!qword_1EDC5EE78)
  {
    sub_1B9F555E8(255);
    sub_1B9F58924();
    sub_1B9F48334(&qword_1EDC5EC70, sub_1B9F57FD4);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC5EE78);
  }

  return result;
}

unint64_t sub_1B9F58850(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1B9F82938();
    v3 = sub_1BA4A8098();
    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 1);
      v6 = *i;
      result = sub_1B9F1D2E0(v5);
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1B9F58924()
{
  result = qword_1EDC5EEE8;
  if (!qword_1EDC5EEE8)
  {
    sub_1B9F55BC0(255);
    sub_1B9F586E8();
    sub_1B9F48334(&qword_1EDC5EC88, sub_1B9F57F00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC5EEE8);
  }

  return result;
}

id GridLayoutEngine.layout(for:)(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = v1[1];
  v25 = *v1;
  v26 = v5;
  v6 = *(v1 + 4);
  v7 = *(v1 + 5);
  v8 = *(v1 + 6);
  v9 = *(v1 + 7);
  v10 = *(v1 + 8);
  v11 = *(v1 + 9);
  v33 = v2;
  v34 = v3;
  v35 = v4;
  v12 = v10(&v33);
  v27 = v6;
  v28 = v7;
  v29 = v8;
  v30 = v9;
  v31 = v10;
  v32 = v11;
  v33 = v2;
  v34 = v3;
  v35 = v4;
  v23 = v8;
  v24 = v9;

  v13 = GridLayoutEngine.numberOfItemSlotsInRow(context:interItemSpacing:accessibilityRowItems:)(&v33, &v23, v12);

  v14 = objc_opt_self();
  v15 = &selRef_estimatedDimension_;
  if (v13 != 1)
  {
    v15 = &selRef_uniformAcrossSiblingsWithEstimate_;
  }

  v16 = [v14 *v15];
  v17 = objc_opt_self();
  v18 = v16;
  v19 = [v17 fixedSpacing_];
  v20 = sub_1B9F5A448(v13, v18, v19);

  v21 = [objc_opt_self() sectionWithGroup_];
  [v21 setContentInsetsReference_];
  [v21 setInterGroupSpacing_];
  [v7 spacing];
  [v21 contentInsets];
  [v21 setContentInsets_];

  return v21;
}

uint64_t sub_1B9F58BC4(uint64_t a1)
{
  v1 = [*(a1 + 8) traitCollection];
  sub_1BA4A7368();

  return sub_1BA4A6598();
}

unint64_t sub_1B9F58C1C()
{
  result = qword_1EDC5EE30;
  if (!qword_1EDC5EE30)
  {
    sub_1B9F54DF4(255, &qword_1EDC5EE28, sub_1B9F555E8, sub_1B9F5802C, MEMORY[0x1E697E830]);
    sub_1B9F587A0();
    sub_1B9F48334(&qword_1EDC68458, sub_1B9F5802C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC5EE30);
  }

  return result;
}

unint64_t sub_1B9F58D10()
{
  result = qword_1EDC5F1B8;
  if (!qword_1EDC5F1B8)
  {
    sub_1B9F56AA0(255);
    sub_1B9F56640();
    sub_1B9F51694(255, &qword_1EDC5E680, MEMORY[0x1E69E63B0], MEMORY[0x1E69E62F8]);
    sub_1B9F56B68();
    sub_1B9F57C6C();
    sub_1B9F564F8();
    sub_1B9F56438();
    sub_1B9F48334(&qword_1EDC5F728, sub_1B9F56438);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1B9F57DAC();
    swift_getOpaqueTypeConformance2();
    sub_1B9F57E6C();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC5F1B8);
  }

  return result;
}

uint64_t GridLayoutEngine.numberOfItemSlotsInRow(context:interItemSpacing:accessibilityRowItems:)(uint64_t a1, uint64_t *a2, double a3)
{
  v4 = v3;
  v127 = sub_1BA4A3EA8();
  v8 = *(v127 - 8);
  v9 = MEMORY[0x1EEE9AC00](v127);
  v118 = &v114 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v117 = &v114 - v12;
  v13 = MEMORY[0x1EEE9AC00](v11);
  v115 = &v114 - v14;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v114 = &v114 - v16;
  v17 = MEMORY[0x1EEE9AC00](v15);
  v116 = &v114 - v18;
  v19 = MEMORY[0x1EEE9AC00](v17);
  v119 = &v114 - v20;
  v21 = MEMORY[0x1EEE9AC00](v19);
  v23 = &v114 - v22;
  v24 = MEMORY[0x1EEE9AC00](v21);
  v26 = &v114 - v25;
  MEMORY[0x1EEE9AC00](v24);
  v28 = &v114 - v27;
  v29 = *(a1 + 8);
  v122 = *(a1 + 16);
  v30 = a2[1];
  v121 = *a2;
  v120 = v30;
  v31 = *v4;
  v32 = *(v4 + 8);
  v33 = *(v4 + 16);
  v34 = *(v4 + 24);
  v35 = *(v4 + 48);
  v136 = *(v4 + 32);
  v137 = v35;
  v138 = *(v4 + 64);
  [objc_msgSend(v29 container)];
  v37 = v36;
  swift_unknownObjectRelease();
  v129 = v31;
  v130 = v32;

  v125 = v29;
  v38 = [v29 traitCollection];
  v39 = sub_1BA4A7368();

  v40 = GridLayoutEngine.WidthConfiguration.width(for:)(v39);

  v129 = v31;
  v130 = v32;
  v131 = v33;
  v123 = v33;
  v126 = v34;
  v132 = v34;
  v41 = *(v4 + 48);
  v133 = *(v4 + 32);
  v134 = v41;
  v135 = *(v4 + 64);
  v42 = sub_1B9F59FBC(v40, a3, v37);
  sub_1BA4A3DD8();
  v43 = sub_1BA4A3E88();
  v44 = sub_1BA4A6F98();
  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v129 = v46;
    *v45 = 136315906;
    *(v45 + 4) = sub_1B9F0B82C(0xD000000000000010, 0x80000001BA4BB720, &v129);
    *(v45 + 12) = 2048;
    *(v45 + 14) = v42;
    *(v45 + 22) = 2048;
    *(v45 + 24) = v40;
    *(v45 + 32) = 2048;
    *(v45 + 34) = v37;
    _os_log_impl(&dword_1B9F07000, v43, v44, "[%s]: Computed item slots=%ld for minimum width=%f with totalWidth=%f", v45, 0x2Au);
    __swift_destroy_boxed_opaque_existential_1(v46);
    MEMORY[0x1BFAF43A0](v46, -1, -1);
    v47 = v42;
    v48 = v127;
    MEMORY[0x1BFAF43A0](v45, -1, -1);

    v49 = *(v8 + 8);
    v50 = v28;
    v51 = v48;
    v42 = v47;
  }

  else
  {

    v49 = *(v8 + 8);
    v50 = v28;
    v51 = v127;
  }

  v124 = v49;
  v49(v50, v51);
  v52 = v126;
  if (v126)
  {
    v53 = v42;
    v54 = v123;
    v129 = v123;
    v130 = v126;

    v55 = [v125 traitCollection];
    v56 = sub_1BA4A7368();

    v57 = GridLayoutEngine.WidthConfiguration.width(for:)(v56);

    v129 = v31;
    v130 = v32;
    v131 = v54;
    v132 = v52;
    v133 = v136;
    v134 = v137;
    v135 = v138;
    v58 = sub_1B9F59FBC(v57, a3, v37);
    sub_1BA4A3DD8();
    v59 = sub_1BA4A3E88();
    v60 = sub_1BA4A6F98();
    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      v62 = swift_slowAlloc();
      v129 = v62;
      *v61 = 136315906;
      *(v61 + 4) = sub_1B9F0B82C(0xD000000000000010, 0x80000001BA4BB720, &v129);
      *(v61 + 12) = 2048;
      *(v61 + 14) = v58;
      *(v61 + 22) = 2048;
      *(v61 + 24) = v57;
      *(v61 + 32) = 2048;
      *(v61 + 34) = v37;
      _os_log_impl(&dword_1B9F07000, v59, v60, "[%s]: Computed item slots=%ld for maximum width=%f with totalWidth=%f", v61, 0x2Au);
      __swift_destroy_boxed_opaque_existential_1(v62);
      v63 = v127;
      MEMORY[0x1BFAF43A0](v62, -1, -1);
      MEMORY[0x1BFAF43A0](v61, -1, -1);

      v64 = v26;
      v65 = v63;
    }

    else
    {

      v64 = v26;
      v65 = v127;
    }

    v73 = v124;
    result = (v124)(v64, v65);
    v75 = v122;
    v42 = v53;
    if (v53 < v58)
    {
      v76 = v118;
      sub_1BA4A3DD8();
      v77 = sub_1BA4A3E88();
      v78 = sub_1BA4A6FA8();
      if (os_log_type_enabled(v77, v78))
      {
        v79 = swift_slowAlloc();
        v80 = swift_slowAlloc();
        v129 = v80;
        *v79 = 136315650;
        *(v79 + 4) = sub_1B9F0B82C(0xD000000000000010, 0x80000001BA4BB720, &v129);
        *(v79 + 12) = 2048;
        *(v79 + 14) = v53;
        *(v79 + 22) = 2048;
        *(v79 + 24) = v58;
        _os_log_impl(&dword_1B9F07000, v77, v78, "[%s]: Unexpected configuration: itemSlotsForMinWidth=%ld >= itemSlotsForMaxWidth=%ld", v79, 0x20u);
        __swift_destroy_boxed_opaque_existential_1(v80);
        MEMORY[0x1BFAF43A0](v80, -1, -1);
        MEMORY[0x1BFAF43A0](v79, -1, -1);
      }

      v81 = v76;
LABEL_40:
      v73(v81, v127);
      return 1;
    }
  }

  else
  {
    sub_1BA4A3DD8();
    v66 = sub_1BA4A3E88();
    v67 = sub_1BA4A6F98();
    if (os_log_type_enabled(v66, v67))
    {
      v68 = swift_slowAlloc();
      v69 = swift_slowAlloc();
      v129 = v69;
      *v68 = 136315394;
      *(v68 + 4) = sub_1B9F0B82C(0xD000000000000010, 0x80000001BA4BB720, &v129);
      *(v68 + 12) = 2048;
      *(v68 + 14) = v42;
      _os_log_impl(&dword_1B9F07000, v66, v67, "[%s]: No maximum width provided, using minWidthOfItem=%ld", v68, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v69);
      v70 = v127;
      MEMORY[0x1BFAF43A0](v69, -1, -1);
      MEMORY[0x1BFAF43A0](v68, -1, -1);

      v71 = v23;
      v72 = v70;
    }

    else
    {

      v71 = v23;
      v72 = v127;
    }

    v73 = v124;
    result = (v124)(v71, v72);
    v58 = v42;
    v75 = v122;
  }

  if ((v58 & 0x8000000000000000) == 0)
  {
    if (v75 <= v58)
    {
      v88 = v119;
      sub_1BA4A3DD8();
      v89 = sub_1BA4A3E88();
      v90 = sub_1BA4A6F98();
      if (os_log_type_enabled(v89, v90))
      {
        v91 = swift_slowAlloc();
        v92 = swift_slowAlloc();
        v129 = v92;
        *v91 = 136315906;
        *(v91 + 4) = sub_1B9F0B82C(0xD000000000000010, 0x80000001BA4BB720, &v129);
        *(v91 + 12) = 2048;
        *(v91 + 14) = v75;
        *(v91 + 22) = 2048;
        *(v91 + 24) = v58;
        *(v91 + 32) = 2048;
        *(v91 + 34) = v58;
        _os_log_impl(&dword_1B9F07000, v89, v90, "[%s]: numberOfItems=%ld <= itemSlotsForMaxWidth=%ld, returning %ld", v91, 0x2Au);
        __swift_destroy_boxed_opaque_existential_1(v92);
        MEMORY[0x1BFAF43A0](v92, -1, -1);
        MEMORY[0x1BFAF43A0](v91, -1, -1);
      }

      v73(v88, v127);
    }

    else if (v75 < v58 || v42 < v75)
    {
      if (v75 < v42)
      {
        v103 = v115;
        sub_1BA4A3DD8();
        swift_unknownObjectRetain();
        v104 = sub_1BA4A3E88();
        v105 = sub_1BA4A6FA8();
        if (os_log_type_enabled(v104, v105))
        {
          v106 = swift_slowAlloc();
          v107 = swift_slowAlloc();
          v129 = v107;
          *v106 = 136315394;
          *(v106 + 4) = sub_1B9F0B82C(0xD000000000000010, 0x80000001BA4BB720, &v129);
          *(v106 + 12) = 2048;
          *(v106 + 14) = v75;
          swift_unknownObjectRelease();
          _os_log_impl(&dword_1B9F07000, v104, v105, "[%s]: Unexpected number of items in section: %ld", v106, 0x16u);
          __swift_destroy_boxed_opaque_existential_1(v107);
          MEMORY[0x1BFAF43A0](v107, -1, -1);
          MEMORY[0x1BFAF43A0](v106, -1, -1);
        }

        else
        {

          swift_unknownObjectRelease();
        }

        v81 = v103;
        goto LABEL_40;
      }

      v108 = v42;
      v109 = v114;
      sub_1BA4A3DD8();
      v110 = sub_1BA4A3E88();
      v111 = sub_1BA4A6F98();
      if (os_log_type_enabled(v110, v111))
      {
        v112 = swift_slowAlloc();
        v113 = swift_slowAlloc();
        v129 = v113;
        *v112 = 136315906;
        *(v112 + 4) = sub_1B9F0B82C(0xD000000000000010, 0x80000001BA4BB720, &v129);
        *(v112 + 12) = 2048;
        *(v112 + 14) = v75;
        *(v112 + 22) = 2048;
        *(v112 + 24) = v108;
        *(v112 + 32) = 2048;
        *(v112 + 34) = v108;
        _os_log_impl(&dword_1B9F07000, v110, v111, "[%s]: numberOfItems=%ld > itemSlotsForMinWidth=%ld, returning %ld", v112, 0x2Au);
        __swift_destroy_boxed_opaque_existential_1(v113);
        MEMORY[0x1BFAF43A0](v113, -1, -1);
        MEMORY[0x1BFAF43A0](v112, -1, -1);
      }

      v73(v109, v127);
      v58 = v108;
    }

    else
    {
      v82 = v42;
      v83 = v116;
      sub_1BA4A3DD8();
      v84 = sub_1BA4A3E88();
      v85 = sub_1BA4A6F98();
      if (os_log_type_enabled(v84, v85))
      {
        v86 = swift_slowAlloc();
        v87 = swift_slowAlloc();
        v129 = v87;
        *v86 = 136315906;
        *(v86 + 4) = sub_1B9F0B82C(0xD000000000000010, 0x80000001BA4BB720, &v129);
        *(v86 + 12) = 2048;
        *(v86 + 14) = v75;
        *(v86 + 22) = 2048;
        *(v86 + 24) = v82;
        *(v86 + 32) = 2048;
        *(v86 + 34) = v75;
        _os_log_impl(&dword_1B9F07000, v84, v85, "[%s]: numberOfItems=%ld <= itemSlotsForMinWidth=%ld, returning %ld", v86, 0x2Au);
        __swift_destroy_boxed_opaque_existential_1(v87);
        MEMORY[0x1BFAF43A0](v87, -1, -1);
        MEMORY[0x1BFAF43A0](v86, -1, -1);
      }

      v73(v83, v127);
      v58 = v75;
    }

    v93 = v121;
    v94 = v120;
    v129 = v31;
    v130 = v32;
    v131 = v123;
    v132 = v126;
    v133 = v136;
    v134 = v137;
    v135 = v138;
    v95 = [v125 traitCollection];
    v128[0] = v93;
    v128[1] = v94;
    v96 = sub_1B9F5A328(v95, v128);
    LOBYTE(v94) = v97;

    if ((v94 & 1) != 0 || v96 >= v58)
    {
      return v58;
    }

    v98 = v117;
    sub_1BA4A3DD8();
    v99 = sub_1BA4A3E88();
    v100 = sub_1BA4A6F98();
    if (os_log_type_enabled(v99, v100))
    {
      v101 = swift_slowAlloc();
      v102 = swift_slowAlloc();
      v129 = v102;
      *v101 = 136315906;
      *(v101 + 4) = sub_1B9F0B82C(0xD000000000000010, 0x80000001BA4BB720, &v129);
      *(v101 + 12) = 2048;
      *(v101 + 14) = v96;
      *(v101 + 22) = 2048;
      *(v101 + 24) = v58;
      *(v101 + 32) = 2048;
      *(v101 + 34) = v96;
      _os_log_impl(&dword_1B9F07000, v99, v100, "[%s]: itemSlotsForAccessibility=%ld < itemSlotsForGridLayout=%ld, returning %ld", v101, 0x2Au);
      __swift_destroy_boxed_opaque_existential_1(v102);
      MEMORY[0x1BFAF43A0](v102, -1, -1);
      MEMORY[0x1BFAF43A0](v101, -1, -1);
    }

    v124(v98, v127);
    return v96;
  }

  __break(1u);
  return result;
}

double GridLayoutEngine.WidthConfiguration.width(for:)(uint64_t a1)
{
  v3 = sub_1BA4A3EA8();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v1;
  v8 = *(v1 + 1);
  if (*(v8 + 16))
  {
    v9 = sub_1B9F82C68(a1);
    if (v10)
    {
      v7 = *(*(v8 + 56) + 8 * v9);
    }
  }

  sub_1BA4A3DD8();
  v11 = sub_1BA4A3E88();
  v12 = sub_1BA4A6F98();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v20 = v14;
    *v13 = 136315650;
    *(v13 + 4) = sub_1B9F0B82C(0xD000000000000012, 0x80000001BA4BB700, &v20);
    *(v13 + 12) = 2048;
    *(v13 + 14) = v7;
    *(v13 + 22) = 2080;
    v19 = a1;
    type metadata accessor for HKWidthDesignation(0);
    v15 = sub_1BA4A6808();
    v17 = sub_1B9F0B82C(v15, v16, &v20);

    *(v13 + 24) = v17;
    _os_log_impl(&dword_1B9F07000, v11, v12, "[%s]:Returning width=%f for widthDesignation=%s", v13, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1BFAF43A0](v14, -1, -1);
    MEMORY[0x1BFAF43A0](v13, -1, -1);
  }

  (*(v4 + 8))(v6, v3);
  return v7;
}

uint64_t sub_1B9F59FBC(double a1, double a2, double a3)
{
  v6 = sub_1BA4A3EA8();
  v7 = *(v6 - 8);
  result = MEMORY[0x1EEE9AC00](v6);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = (a2 + a3) / (a1 + a2);
  if (COERCE__INT64(fabs(v11)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (v11 <= -9.22337204e18)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (v11 >= 9.22337204e18)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  v12 = v11;
  if (v11 <= 0)
  {
    v13 = result;
    sub_1BA4A3DD8();
    v14 = sub_1BA4A3E88();
    v15 = sub_1BA4A6FA8();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v19 = v17;
      *v16 = 136315650;
      *(v16 + 4) = sub_1B9F0B82C(0xD000000000000010, 0x80000001BA4BB720, &v19);
      *(v16 + 12) = 2048;
      *(v16 + 14) = a2 + a3;
      *(v16 + 22) = 2048;
      *(v16 + 24) = a1 + a2;
      _os_log_impl(&dword_1B9F07000, v14, v15, "[%s]: numberOfItemsFittingInRow is 0 for totalWidth=%f and widthPerItem=%f, returning 1", v16, 0x20u);
      __swift_destroy_boxed_opaque_existential_1(v17);
      MEMORY[0x1BFAF43A0](v17, -1, -1);
      MEMORY[0x1BFAF43A0](v16, -1, -1);
    }

    (*(v7 + 8))(v10, v13);
    return 1;
  }

  return v12;
}

uint64_t sub_1B9F5A22C()
{
  type metadata accessor for SnidgetAnimation();
  swift_getWitnessTable();
  sub_1BA4A5978();
  sub_1BA4A5828();
  sub_1BA4A5418();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1B9F5A328(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v2 = a2[1];
  v4 = [a1 preferredContentSizeCategory];
  v5 = sub_1BA4A7548();
  v6 = sub_1BA4A7528();

  if (v6)
  {
    v7 = sub_1BA4A7368();
    if (v2)
    {
      v8 = v2;
      if (!*(v2 + 16))
      {
LABEL_11:

        return v3;
      }
    }

    else
    {
      v9 = v7;
      if (qword_1EBBE82C8 != -1)
      {
        swift_once();
      }

      v3 = qword_1EBBEB2E0;
      v8 = *algn_1EBBEB2E8;

      v7 = v9;
      if (!*(v8 + 16))
      {
        goto LABEL_11;
      }
    }

    v10 = sub_1B9F82C68(v7);
    if (v11)
    {
      v3 = *(*(v8 + 56) + 8 * v10);
    }

    goto LABEL_11;
  }

  return 0;
}

id sub_1B9F5A448(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = 1.0 / a1;
  v7 = objc_opt_self();
  v8 = [v7 fractionalWidthDimension_];
  v9 = objc_opt_self();
  v10 = [v9 sizeWithWidthDimension:v8 heightDimension:a2];

  v11 = [objc_opt_self() itemWithLayoutSize_];
  v12 = [v7 fractionalWidthDimension_];
  [a2 dimension];
  v13 = [v7 estimatedDimension_];
  v14 = [v9 sizeWithWidthDimension:v12 heightDimension:v13];

  v15 = [objc_opt_self() horizontalGroupWithLayoutSize:v14 repeatingSubitem:v11 count:a1];
  [v15 setInterItemSpacing_];

  return v15;
}

uint64_t sub_1B9F5A60C()
{
  result = sub_1BA4A12C8();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t CellRegistering<>.layout(for:)(__int128 *a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *a1;
  v5 = *(a1 + 2);
  v9 = v2[4];
  v7 = v4;
  v8 = v5;
  return (*(a2 + 8))(&v7, *(v3 + 80), a2);
}

uint64_t sub_1B9F5A770()
{
  result = sub_1BA4A12C8();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1B9F5A834()
{
  result = qword_1EDC5ED00;
  if (!qword_1EDC5ED00)
  {
    sub_1B9F5A968(255, &qword_1EDC5ECF8, MEMORY[0x1E697F960]);
    sub_1B9F5ADA4();
    sub_1B9F5AF10();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC5ED00);
  }

  return result;
}

uint64_t HideableDataSource<>.layout(for:)(__int128 *a1, uint64_t a2)
{
  v4 = *v2;
  v7 = *a1;
  v5 = *(a1 + 2);
  v10 = sub_1B9F437D0();
  v8 = v7;
  v9 = v5;
  return (*(a2 + 8))(&v8, *(v4 + 80), a2);
}

void sub_1B9F5A968(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_1B9F5AA38(255, &qword_1EDC5ED70, MEMORY[0x1E697F960]);
    v7 = v6;
    sub_1B9F5AB80(255, &qword_1EDC5F1F8, sub_1B9F57FD4);
    v9 = a3(a1, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_1B9F5AA38(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for AnimatedNumericText(255);
    v7 = type metadata accessor for AnimatedCharacterText(255);
    v8 = a3(a1, v6, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void *sub_1B9F5AAA8(uint64_t a1, void *a2)
{
  v3 = type metadata accessor for ListLayoutConfiguration();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = swift_projectBox();
  swift_beginAccess();
  sub_1B9F37E38(v6, v5);
  v7 = ListLayoutConfiguration.layout(for:)(a2);
  sub_1B9F5ACE4(v5, type metadata accessor for ListLayoutConfiguration);
  return v7;
}

void sub_1B9F5AB80(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1BA4A5418();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1B9F5ABDC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B9F5AC24(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B9F5AC84(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B9F5ACE4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B9F5AD44(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1B9F5ADA4()
{
  result = qword_1EDC5ED78;
  if (!qword_1EDC5ED78)
  {
    sub_1B9F5AA38(255, &qword_1EDC5ED70, MEMORY[0x1E697F960]);
    sub_1B9F5ABDC(qword_1EDC67E80, type metadata accessor for AnimatedNumericText);
    sub_1B9F5ABDC(&qword_1EDC67BD8, type metadata accessor for AnimatedCharacterText);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC5ED78);
  }

  return result;
}

void *sub_1B9F5AEA0(uint64_t a1, void *a2)
{
  if (qword_1EDC6CB88 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for ListLayoutConfiguration();
  __swift_project_value_buffer(v3, qword_1EDC6CB90);
  return ListLayoutConfiguration.layout(for:)(a2);
}

unint64_t sub_1B9F5AF10()
{
  result = qword_1EDC5F200;
  if (!qword_1EDC5F200)
  {
    sub_1B9F5AB80(255, &qword_1EDC5F1F8, sub_1B9F57FD4);
    sub_1B9F5ABDC(&qword_1EDC5EC70, sub_1B9F57FD4);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC5F200);
  }

  return result;
}

uint64_t sub_1B9F5AFFC@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for StandardSnidgetCurrentValueDataView.ViewModel();
  result = sub_1BA4A4D78();
  *a1 = result;
  return result;
}

uint64_t sub_1B9F5B03C@<X0>(void *a1@<X8>)
{
  sub_1B9F5B440();
  result = sub_1BA4A5728();
  *a1 = v3;
  a1[1] = v4;
  return result;
}

uint64_t SnapshotDataSource.item(at:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_1B9F117BC(0, &qword_1EDC5F8A0, MEMORY[0x1E69E6168], MEMORY[0x1E69DC168]);
  v10 = v9;
  v11 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v30 - v12;
  v14 = *(a3 + 16);
  v35 = a3;
  v36 = v4;
  v33 = v14;
  v14(a2, a3);
  v15 = sub_1BA4A4578();
  v16 = *(v11 + 8);
  v16(v13, v10);
  v34 = a1;
  v17 = sub_1BA4A1968();
  if ((v17 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v17 >= *(v15 + 16))
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v31 = a4;
  v18 = v15 + 16 * v17;
  v19 = *(v18 + 32);
  v20 = *(v18 + 40);

  v32 = a2;
  v33(a2, v35);
  v37 = v19;
  v38 = v20;
  v21 = sub_1BA4A4528();
  v16(v13, v10);
  v22 = sub_1BA4A1958();
  if ((v22 & 0x8000000000000000) != 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (v22 >= *(v21 + 16))
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v23 = v21 + 16 * v22;
  v24 = *(v23 + 32);
  v25 = *(v23 + 40);

  v16 = v36;
  (*(v35 + 24))(&v39, v24, v25, v32);

  if (v40)
  {

    return sub_1B9F25598(&v39, v31);
  }

LABEL_11:
  sub_1B9FCD638(&v39);
  *&v39 = 0;
  *(&v39 + 1) = 0xE000000000000000;
  sub_1BA4A7DF8();
  MEMORY[0x1BFAF1350](0xD000000000000014, 0x80000001BA4E6870);
  v37 = sub_1BA4A1968();
  v27 = sub_1BA4A82D8();
  MEMORY[0x1BFAF1350](v27);

  MEMORY[0x1BFAF1350](0x65746920646E6120, 0xEA0000000000206DLL);
  v37 = sub_1BA4A1958();
  v28 = sub_1BA4A82D8();
  MEMORY[0x1BFAF1350](v28);

  MEMORY[0x1BFAF1350](0xD000000000000023, 0x80000001BA4E6890);
  v37 = v16;
  swift_unknownObjectRetain();
  v29 = sub_1BA4A6808();
  MEMORY[0x1BFAF1350](v29);

  result = sub_1BA4A8018();
  __break(1u);
  return result;
}

unint64_t sub_1B9F5B440()
{
  result = qword_1EDC61AD0;
  if (!qword_1EDC61AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC61AD0);
  }

  return result;
}

uint64_t static LayoutConfiguration.card.getter@<X0>(_OWORD *a1@<X8>)
{
  if (qword_1EDC6D410 != -1)
  {
    v9 = a1;
    swift_once();
    a1 = v9;
  }

  v1 = xmmword_1EDC6D458;
  v2 = *&qword_1EDC6D468;
  v11[4] = xmmword_1EDC6D458;
  v11[5] = *&qword_1EDC6D468;
  v3 = xmmword_1EDC6D478;
  v4 = xmmword_1EDC6D488;
  v11[6] = xmmword_1EDC6D478;
  v11[7] = xmmword_1EDC6D488;
  v5 = *&qword_1EDC6D428;
  v11[0] = xmmword_1EDC6D418;
  v11[1] = *&qword_1EDC6D428;
  v6 = xmmword_1EDC6D438;
  v7 = xmmword_1EDC6D448;
  v11[2] = xmmword_1EDC6D438;
  v11[3] = xmmword_1EDC6D448;
  *a1 = xmmword_1EDC6D418;
  a1[1] = v5;
  a1[2] = v6;
  a1[3] = v7;
  a1[4] = v1;
  a1[5] = v2;
  a1[6] = v3;
  a1[7] = v4;
  return sub_1B9F1D9A4(v11, &v10);
}

uint64_t sub_1B9F5B534@<X0>(void *a1@<X8>)
{
  sub_1B9F5B584();
  result = sub_1BA4A7358();
  *a1 = v3;
  a1[1] = v4;
  return result;
}

unint64_t sub_1B9F5B584()
{
  result = qword_1EDC631A0;
  if (!qword_1EDC631A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC631A0);
  }

  return result;
}

__n128 __swift_memcpy41_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

void sub_1B9F5B604(double a1, uint64_t a2, uint64_t a3, void **a4)
{
  sub_1B9F292B4(a3);
  v6 = [objc_opt_self() estimatedDimension_];
  v7 = *a4;
  *a4 = v6;
}

uint64_t sub_1B9F5B674@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[1];
  v6 = *v1;
  v7[0] = v3;
  *(v7 + 9) = *(v1 + 25);
  *a1 = sub_1BA4A5878();
  *(a1 + 8) = 0x4000000000000000;
  *(a1 + 16) = 0;
  sub_1B9F5B6F4();
  return sub_1B9F5B79C(&v6, a1 + *(v4 + 44));
}

void sub_1B9F5B6F4()
{
  if (!qword_1EDC5F2F8)
  {
    sub_1B9F47BAC(255, &qword_1EDC5E970, sub_1B9F528CC, MEMORY[0x1E6981F40]);
    v0 = sub_1BA4A52C8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDC5F2F8);
    }
  }
}

uint64_t sub_1B9F5B79C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v151 = a2;
  v135 = type metadata accessor for AnimatedSnidgetCurrentValueText(0);
  MEMORY[0x1EEE9AC00](v135);
  v138 = &v126 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F532BC();
  v136 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v137 = &v126 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F5323C(0);
  v141 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v142 = &v126 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F530BC(0);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v150 = &v126 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v126 - v11;
  v146 = sub_1BA4A5718();
  v145 = *(v146 - 8);
  MEMORY[0x1EEE9AC00](v146);
  v144 = &v126 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F5305C();
  v156 = v14;
  v159 = *(v14 - 8);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v129 = &v126 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v158 = &v126 - v17;
  v18 = MEMORY[0x1E6968848];
  v19 = MEMORY[0x1E69E6720];
  sub_1B9F47BAC(0, &unk_1EDC6E290, MEMORY[0x1E6968848], MEMORY[0x1E69E6720]);
  v21 = MEMORY[0x1EEE9AC00](v20 - 8);
  v140 = &v126 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v126 - v23;
  v25 = sub_1BA4A12C8();
  v26 = *(v25 - 8);
  v27 = MEMORY[0x1EEE9AC00](v25);
  v143 = &v126 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x1EEE9AC00](v27);
  v153 = &v126 - v30;
  v31 = MEMORY[0x1EEE9AC00](v29);
  v33 = &v126 - v32;
  MEMORY[0x1EEE9AC00](v31);
  v35 = &v126 - v34;
  v36 = v19;
  v38 = v37;
  sub_1B9F47BAC(0, &qword_1EDC5F1C8, sub_1B9F5305C, v36);
  v40 = MEMORY[0x1EEE9AC00](v39 - 8);
  v148 = &v126 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = MEMORY[0x1EEE9AC00](v40);
  v149 = &v126 - v43;
  v44 = MEMORY[0x1EEE9AC00](v42);
  v147 = &v126 - v45;
  MEMORY[0x1EEE9AC00](v44);
  v160 = &v126 - v46;
  v47 = *(a1 + 8);
  v48 = OBJC_IVAR____TtCV18HealthExperienceUI35StandardSnidgetCurrentValueDataView9ViewModel_supratitleString;
  swift_beginAccess();
  v154 = v47;
  v49 = v47 + v48;
  v50 = v26;
  sub_1B9F5CC44(v49, v24, &unk_1EDC6E290, v18);
  v51 = *(v26 + 48);
  v134 = v26 + 48;
  v133 = v51;
  v52 = v51(v24, 1, v38);
  v152 = v26;
  v155 = a1;
  v157 = v12;
  v139 = v33;
  if (v52 == 1)
  {
    sub_1BA103284(v24, &unk_1EDC6E290, MEMORY[0x1E6968848], MEMORY[0x1E69E6720], sub_1B9F47BAC);
    v53 = 1;
    v54 = v160;
  }

  else
  {
    (*(v26 + 32))(v35, v24, v38);
    (*(v26 + 16))(v33, v35, v38);
    v55 = sub_1BA4A5E08();
    v163 = v55;
    v132 = v56;
    v164 = v56;
    v58 = v57;
    v165 = v57 & 1;
    v166 = v59;
    v167 = 0;
    v168 = 0xE000000000000000;
    sub_1BA4A7DF8();
    v171 = *(a1 + 24);
    v172 = *(a1 + 40);
    v60 = v171;
    if (v172 == 1)
    {
      v61 = *(&v171 + 1);
    }

    else
    {

      sub_1BA4A6FB8();
      v62 = v38;
      v63 = sub_1BA4A5B28();
      sub_1BA4A3CA8();

      v38 = v62;
      v50 = v152;
      v64 = v144;
      sub_1BA4A5708();
      swift_getAtKeyPath();
      sub_1BA103284(&v171, &qword_1EDC6B6C8, MEMORY[0x1E69E6158], MEMORY[0x1E697DCC0], sub_1B9F5366C);
      (*(v145 + 8))(v64, v146);

      v60 = v167;
      v61 = v168;
    }

    v167 = v60;
    v168 = v61;
    MEMORY[0x1BFAF1350](0xD000000000000013, 0x80000001BA4EAF10);
    v65 = v158;
    sub_1BA4A5F18();

    sub_1BA102AF4(v55, v132, v58 & 1);

    (*(v50 + 8))(v35, v38);
    v54 = v160;
    sub_1BA1032E4(v65, v160, sub_1B9F5305C);
    v53 = 0;
  }

  v66 = *(v159 + 56);
  v159 += 56;
  v132 = v66;
  v66(v54, v53, 1, v156);
  v67 = OBJC_IVAR____TtCV18HealthExperienceUI35StandardSnidgetCurrentValueDataView9ViewModel_primaryString;
  v68 = v154;
  swift_beginAccess();
  v69 = *(v50 + 16);
  v158 = v38;
  v128 = v50 + 16;
  v127 = v69;
  v69(v153, (v68 + v67), v38);
  v70 = (v68 + OBJC_IVAR____TtCV18HealthExperienceUI35StandardSnidgetCurrentValueDataView9ViewModel_animationConfiguration);
  swift_beginAccess();
  v71 = v70[1];
  v131 = *v70;
  v72 = v70[2];
  v130 = *(v70 + 24);
  v73 = *(v155 + 16);
  if (v73)
  {
    v74 = (v73 + OBJC_IVAR____TtCV18HealthExperienceUI35StandardSnidgetCurrentValueDataView9ViewModel_animationConfiguration);
    swift_beginAccess();
    v76 = *v74;
    v75 = v74[1];
    v77 = v74[2];
    v78 = *(v74 + 24);
  }

  else
  {
    v76 = 0;
    v75 = 0;
    v77 = 0;
    v78 = 0;
  }

  v79 = v135;
  v80 = v138;
  v81 = &v138[*(v135 + 20)];
  *v81 = 0;
  *(v81 + 1) = 0;
  v81[24] = 0;
  *(v81 + 2) = 0;
  v82 = v80 + *(v79 + 24);
  v83 = (v152 + 32);
  v84 = *(v152 + 32);
  *v82 = 0;
  *(v82 + 8) = 0;
  *(v82 + 24) = 0;
  *(v82 + 16) = 0;
  v85 = v153;
  v153 = v83;
  v135 = v84;
  v84(v80, v85, v158);

  *v81 = v131;
  *(v81 + 1) = v71;
  *(v81 + 2) = v72;
  v81[24] = v130;

  *v82 = v76;
  *(v82 + 8) = v75;
  *(v82 + 16) = v77;
  *(v82 + 24) = v78;
  KeyPath = swift_getKeyPath();
  v87 = v137;
  sub_1BA10321C(v80, v137, type metadata accessor for AnimatedSnidgetCurrentValueText);
  v88 = v87 + *(v136 + 36);
  *v88 = KeyPath;
  *(v88 + 8) = 0;
  sub_1BA10334C(v80, type metadata accessor for AnimatedSnidgetCurrentValueText);
  v89 = swift_getKeyPath();
  v90 = v142;
  sub_1BA1032E4(v87, v142, sub_1B9F532BC);
  v91 = v90 + *(v141 + 36);
  *v91 = v89;
  *(v91 + 8) = 0;
  *(v91 + 16) = 1;
  v169 = *(v155 + 24);
  v170 = *(v155 + 40);
  v93 = *(&v169 + 1);
  v92 = v169;
  v94 = v170;
  if (v170 == 1)
  {

    v95 = v93;
    v96 = v92;
  }

  else
  {

    sub_1BA4A6FB8();
    v97 = sub_1BA4A5B28();
    sub_1BA4A3CA8();

    v98 = v144;
    sub_1BA4A5708();
    swift_getAtKeyPath();
    sub_1BA103284(&v169, &qword_1EDC6B6C8, MEMORY[0x1E69E6158], MEMORY[0x1E697DCC0], sub_1B9F5366C);
    (*(v145 + 8))(v98, v146);
    v96 = v163;
    v95 = v164;
  }

  v99 = v160;
  v100 = v139;
  v163 = v96;
  v164 = v95;
  MEMORY[0x1BFAF1350](0x65756C61562ELL, 0xE600000000000000);
  sub_1B9F5D988();
  sub_1BA4A5F18();

  sub_1BA10334C(v90, sub_1B9F5323C);
  v101 = OBJC_IVAR____TtCV18HealthExperienceUI35StandardSnidgetCurrentValueDataView9ViewModel_subtitleString;
  v102 = v154;
  swift_beginAccess();
  v103 = v140;
  sub_1B9F5CC44(v102 + v101, v140, &unk_1EDC6E290, MEMORY[0x1E6968848]);
  v104 = v158;
  if (v133(v103, 1, v158) == 1)
  {
    sub_1BA103284(v103, &unk_1EDC6E290, MEMORY[0x1E6968848], MEMORY[0x1E69E6720], sub_1B9F47BAC);
    v105 = 1;
    v106 = v147;
  }

  else
  {
    v107 = v143;
    (v135)(v143, v103, v104);
    v127(v100, v107, v104);
    v108 = sub_1BA4A5E08();
    v110 = v109;
    v112 = v111;
    v163 = v108;
    v164 = v109;
    v165 = v111 & 1;
    v166 = v113;
    v161 = 0;
    v162 = 0xE000000000000000;
    sub_1BA4A7DF8();
    if (v94)
    {
    }

    else
    {

      sub_1BA4A6FB8();
      v114 = sub_1BA4A5B28();
      sub_1BA4A3CA8();

      v115 = v144;
      sub_1BA4A5708();
      swift_getAtKeyPath();
      sub_1BA103284(&v169, &qword_1EDC6B6C8, MEMORY[0x1E69E6158], MEMORY[0x1E697DCC0], sub_1B9F5366C);
      (*(v145 + 8))(v115, v146);

      v92 = v161;
      v93 = v162;
    }

    v161 = v92;
    v162 = v93;
    MEMORY[0x1BFAF1350](0xD000000000000013, 0x80000001BA4EAF10);
    v116 = v129;
    sub_1BA4A5F18();

    sub_1BA102AF4(v108, v110, v112 & 1);

    (*(v152 + 8))(v143, v158);
    v106 = v147;
    sub_1BA1032E4(v116, v147, sub_1B9F5305C);
    v105 = 0;
    v99 = v160;
  }

  v132(v106, v105, 1, v156);
  v117 = v149;
  sub_1B9F5CC44(v99, v149, &qword_1EDC5F1C8, sub_1B9F5305C);
  v118 = v157;
  v119 = v150;
  sub_1BA10321C(v157, v150, sub_1B9F530BC);
  v120 = v148;
  sub_1B9F5CC44(v106, v148, &qword_1EDC5F1C8, sub_1B9F5305C);
  v121 = v151;
  sub_1B9F5CC44(v117, v151, &qword_1EDC5F1C8, sub_1B9F5305C);
  sub_1B9F528CC();
  v123 = v122;
  sub_1BA10321C(v119, v121 + *(v122 + 48), sub_1B9F530BC);
  sub_1B9F5CC44(v120, v121 + *(v123 + 64), &qword_1EDC5F1C8, sub_1B9F5305C);
  v124 = MEMORY[0x1E69E6720];
  sub_1BA103284(v106, &qword_1EDC5F1C8, sub_1B9F5305C, MEMORY[0x1E69E6720], sub_1B9F47BAC);
  sub_1BA10334C(v118, sub_1B9F530BC);
  sub_1BA103284(v160, &qword_1EDC5F1C8, sub_1B9F5305C, v124, sub_1B9F47BAC);
  sub_1BA103284(v120, &qword_1EDC5F1C8, sub_1B9F5305C, v124, sub_1B9F47BAC);
  sub_1BA10334C(v119, sub_1B9F530BC);
  return sub_1BA103284(v117, &qword_1EDC5F1C8, sub_1B9F5305C, v124, sub_1B9F47BAC);
}

id NSCollectionLayoutSection.withHeader(height:alignment:)(uint64_t a1, uint64_t a2)
{
  v2 = sub_1B9F5CA58(a1, a2);

  return v2;
}

uint64_t sub_1B9F5CA58(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = [objc_opt_self() fractionalWidthDimension_];
  v7 = [objc_opt_self() sizeWithWidthDimension:v6 heightDimension:a1];

  v8 = [objc_opt_self() boundarySupplementaryItemWithLayoutSize:v7 elementKind:*MEMORY[0x1E69DDC08] alignment:a2];
  v9 = v8;
  [v9 contentInsets];
  [v9 setContentInsets_];
  [v9 contentInsets];
  [v9 setContentInsets_];

  v10 = v9;
  v11 = [v3 boundarySupplementaryItems];
  sub_1B9F0ADF8(0, &qword_1EDC6B4E8);
  v12 = sub_1BA4A6B08();

  if (v12 >> 62 && (result = sub_1BA4A7CC8(), result < 0))
  {
    __break(1u);
  }

  else
  {
    sub_1B9F5CD74(0, 0, v10);

    v13 = sub_1BA4A6AE8();

    [v3 setBoundarySupplementaryItems_];

    return v3;
  }

  return result;
}

uint64_t sub_1B9F5CC44(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1B9F47BAC(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1B9F5CCC4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B9F5CD2C(uint64_t a1, int a2)
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

char *sub_1B9F5CD74(uint64_t a1, uint64_t a2, void *a3)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = a3;
    v5 = a2;
    v6 = a1;
    v7 = *v4;
    v8 = *v4 >> 62;
    if (!v8)
    {
      result = *((*v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  result = sub_1BA4A7CC8();
  if (result < v5)
  {
    goto LABEL_15;
  }

LABEL_4:
  v10 = v5 - v6;
  if (__OFSUB__(v5, v6))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v11 = 1 - v10;
  if (__OFSUB__(1, v10))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (v8)
  {
    v12 = sub_1BA4A7CC8();
  }

  else
  {
    v12 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v13 = __OFADD__(v12, v11);
  result = (v12 + v11);
  if (v13)
  {
    goto LABEL_18;
  }

  sub_1B9F2A5D4(result, 1);

  return sub_1B9F5CE60(v6, v5, 1, v3);
}

char *sub_1B9F5CE60(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_21;
  }

  v8 = a4;
  v4 = a3;
  v7 = a2;
  v12 = *v5;
  v5 = (*v5 & 0xFFFFFFFFFFFFFF8);
  v9 = v5 + 4;
  v6 = &v5[a1 + 4];
  sub_1B9F0ADF8(0, &qword_1EDC6B4E8);
  result = swift_arrayDestroy();
  v14 = __OFSUB__(v4, v11);
  v11 = v4 - v11;
  if (v14)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v11)
  {
    v10 = v12 >> 62;
    if (!(v12 >> 62))
    {
      result = v5[2];
      v15 = &result[-v7];
      if (!__OFSUB__(result, v7))
      {
        goto LABEL_6;
      }

      goto LABEL_24;
    }

LABEL_22:
    result = sub_1BA4A7CC8();
    v15 = &result[-v7];
    if (!__OFSUB__(result, v7))
    {
LABEL_6:
      v16 = &v6[v4];
      v17 = &v9[v7];
      if (v16 != v17 || v16 >= &v17[8 * v15])
      {
        memmove(v16, v17, 8 * v15);
      }

      if (v10)
      {
        result = sub_1BA4A7CC8();
      }

      else
      {
        result = v5[2];
      }

      if (!__OFADD__(result, v11))
      {
        v5[2] = &result[v11];
        goto LABEL_17;
      }

LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      return result;
    }

LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_17:
  if (v4 > 0)
  {
    *v6 = v8;
    result = v8;
    if (v4 != 1)
    {
      goto LABEL_26;
    }
  }

  return result;
}

uint64_t sub_1B9F5CF8C(uint64_t result, int a2, int a3)
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

id sub_1B9F5D000(void *a1, uint64_t a2, uint64_t *a3, void (*a4)(__int128 *__return_ptr, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v60 = a1;
  v59 = sub_1BA4A3488();
  v58 = *(v59 - 8);
  MEMORY[0x1EEE9AC00](v59);
  v15 = &v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = sub_1BA4A3EA8();
  v55 = *(v56 - 8);
  MEMORY[0x1EEE9AC00](v56);
  v54 = &v50 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1BA4A3428();
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v50 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *a3;
  v21 = a3[1];
  ObjectType = swift_getObjectType();
  v52 = a6;
  v53 = a7;
  a4(&v65, v20, v21, a6, a7, a2);
  if (v66)
  {
    v57 = a2;
    v22 = v60;
    sub_1B9F1134C(&v65, v67);
    __swift_project_boxed_opaque_existential_1(v67, v67[3]);
    sub_1BA4A2D48();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v23 = v58;
      v24 = v19;
      v25 = v59;
      (*(v58 + 32))(v15, v24, v59);
      v26 = sub_1BA4A3458();
      (*(v23 + 8))(v15, v25);
    }

    else
    {
      sub_1B9F5DBCC(v19, MEMORY[0x1E69A3458]);
      sub_1B9F0A534(v67, v64);
      sub_1B9F0D950(0, &qword_1EDC6AD50);
      sub_1B9F0D950(0, &qword_1EDC6E1B0);
      v29 = v22;
      if (swift_dynamicCast())
      {
        sub_1B9F1134C(v62, &v65);
        v26 = sub_1B9F5DC8C(&v65, v57, v22, v52, a9, ObjectType, v53);
        __swift_destroy_boxed_opaque_existential_1(&v65);
      }

      else
      {
        v63 = 0;
        memset(v62, 0, sizeof(v62));
        sub_1B9F5F198(v62, &qword_1EDC6E1A0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348], sub_1B9F0CDE8);
        v30 = v54;
        sub_1BA4A3D88();
        sub_1B9F0A534(v67, &v65);
        sub_1B9F0A534(v67, v64);
        v31 = sub_1BA4A3E88();
        v32 = sub_1BA4A6FA8();
        if (os_log_type_enabled(v31, v32))
        {
          v33 = swift_slowAlloc();
          v59 = swift_slowAlloc();
          v61 = v59;
          *v33 = 136315650;
          v34 = sub_1BA4A85D8();
          v35 = v30;
          v37 = sub_1B9F0B82C(v34, v36, &v61);

          *(v33 + 4) = v37;
          *(v33 + 12) = 2080;
          __swift_project_boxed_opaque_existential_1(&v65, v66);
          v38 = sub_1BA4A2D58();
          v40 = v39;
          __swift_destroy_boxed_opaque_existential_1(&v65);
          v41 = sub_1B9F0B82C(v38, v40, &v61);

          *(v33 + 14) = v41;
          *(v33 + 22) = 2080;
          sub_1B9F0A534(v64, v62);
          v42 = sub_1BA4A6808();
          v44 = v43;
          __swift_destroy_boxed_opaque_existential_1(v64);
          v45 = sub_1B9F0B82C(v42, v44, &v61);

          *(v33 + 24) = v45;
          v46 = v59;
          swift_arrayDestroy();
          MEMORY[0x1BFAF43A0](v46, -1, -1);
          MEMORY[0x1BFAF43A0](v33, -1, -1);

          (*(v55 + 8))(v35, v56);
        }

        else
        {

          __swift_destroy_boxed_opaque_existential_1(v64);
          (*(v55 + 8))(v30, v56);
          __swift_destroy_boxed_opaque_existential_1(&v65);
        }

        *&v65 = type metadata accessor for FallbackCollectionViewCell();
        sub_1B9F37450(0, &qword_1EDC654A8, type metadata accessor for FallbackCollectionViewCell);
        sub_1BA4A6808();
        v47 = sub_1BA4A6758();

        v48 = sub_1BA4A18F8();
        v26 = [v29 dequeueReusableCellWithReuseIdentifier:v47 forIndexPath:v48];
      }
    }

    __swift_destroy_boxed_opaque_existential_1(v67);
  }

  else
  {
    sub_1B9F5F198(&v65, &qword_1EDC6AD40, &qword_1EDC6AD50, MEMORY[0x1E69A3310], sub_1B9F0CDE8);
    v67[0] = type metadata accessor for FallbackCollectionViewCell();
    sub_1B9F37450(0, &qword_1EDC654A8, type metadata accessor for FallbackCollectionViewCell);
    sub_1BA4A6808();
    v27 = sub_1BA4A6758();

    v28 = sub_1BA4A18F8();
    v26 = [v60 dequeueReusableCellWithReuseIdentifier:v27 forIndexPath:v28];
  }

  return v26;
}

double sub_1B9F5D740@<D0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v8 = sub_1BA4A3EA8();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  ObjectType = swift_getObjectType();
  (*(a3 + 24))(&v19, a1, a2, ObjectType, a3);
  if (v20)
  {
    sub_1B9F1134C(&v19, a4);
  }

  else
  {
    sub_1B9F5F198(&v19, &qword_1EDC6AD40, &qword_1EDC6AD50, MEMORY[0x1E69A3310], sub_1B9F0CDE8);
    sub_1BA4A3D88();

    v14 = sub_1BA4A3E88();
    v15 = sub_1BA4A6FA8();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      *&v19 = v17;
      *v16 = 136315138;
      *(v16 + 4) = sub_1B9F0B82C(a1, a2, &v19);
      _os_log_impl(&dword_1B9F07000, v14, v15, "The CellProvider block called us back with an item that no longer exists. Item Identifier: %s", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v17);
      MEMORY[0x1BFAF43A0](v17, -1, -1);
      MEMORY[0x1BFAF43A0](v16, -1, -1);
    }

    (*(v9 + 8))(v11, v8);
    *(a4 + 32) = 0;
    result = 0.0;
    *a4 = 0u;
    *(a4 + 16) = 0u;
  }

  return result;
}

unint64_t sub_1B9F5D988()
{
  result = qword_1EDC5F080;
  if (!qword_1EDC5F080)
  {
    sub_1B9F5323C(255);
    sub_1B9F5DA38();
    sub_1B9F4D13C(&qword_1EDC5EC10, sub_1B9F5374C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC5F080);
  }

  return result;
}

unint64_t sub_1B9F5DA38()
{
  result = qword_1EDC5F250;
  if (!qword_1EDC5F250)
  {
    sub_1B9F532BC();
    sub_1B9F4D13C(&qword_1EDC63450, type metadata accessor for AnimatedSnidgetCurrentValueText);
    sub_1B9F5DB4C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC5F250);
  }

  return result;
}

uint64_t sub_1B9F5DAE8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE0DA58](a1, WitnessTable);
}

unint64_t sub_1B9F5DB4C()
{
  result = qword_1EDC5EC98;
  if (!qword_1EDC5EC98)
  {
    sub_1B9F864BC(255, &qword_1EDC5EC90, MEMORY[0x1E697E1E0], MEMORY[0x1E6980A08]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC5EC98);
  }

  return result;
}

uint64_t sub_1B9F5DBCC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B9F5DC2C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B9F5DC8C(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v96 = a7;
  v94 = a6;
  v95 = a4;
  v102 = a3;
  v101 = a2;
  v8 = MEMORY[0x1E69E6720];
  sub_1B9F115CC(0, qword_1EDC6E9C8, type metadata accessor for SectionContext, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v97 = (v90 - v10);
  v11 = MEMORY[0x1E6969770];
  sub_1B9F115CC(0, &qword_1EDC6AE40, MEMORY[0x1E6969770], v8);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = v90 - v13;
  v15 = a1[3];
  v100 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v15);
  v16 = sub_1BA4A2E58();
  v18 = v17;
  v109 = v16;
  v110 = v17;
  *&v106 = 0x5F65737565725FLL;
  *(&v106 + 1) = 0xE700000000000000;
  v19 = sub_1BA4A17C8();
  (*(*(v19 - 8) + 56))(v14, 1, 1, v19);
  sub_1B9F252FC();
  sub_1BA4A7BA8();
  v21 = v20;
  v23 = v22;
  sub_1B9F5F198(v14, &qword_1EDC6AE40, v11, v8, sub_1B9F115CC);
  if ((v23 & 1) != 0 || (v24 = sub_1BA4A69E8(), MEMORY[0x1BFAF12A0](v24), , v25 = sub_1BA4A6758(), , v26 = NSClassFromString(v25), v25, !v26))
  {

    v98 = 1;
    sub_1B9F248CC();
    v30 = 0;
    v36 = v18;
    v38 = v102;
  }

  else
  {
    swift_getObjCClassMetadata();
    v27 = sub_1B9F5F260(v21, v16, v18);
    v28 = MEMORY[0x1BFAF12A0](v27);
    v30 = v29;

    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    sub_1B9F248CC();
    v32 = NSStringFromClass(ObjCClassFromMetadata);
    v33 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
    v35 = v34;

    v109 = v33;
    v110 = v35;

    MEMORY[0x1BFAF1350](0x5F65737565725FLL, 0xE700000000000000);
    v36 = v28;

    MEMORY[0x1BFAF1350](v28, v30);

    sub_1B9F248D8();
    v37 = sub_1BA4A6758();

    v38 = v102;
    [v102 registerClass:ObjCClassFromMetadata forCellWithReuseIdentifier:v37];

    sub_1B9F248CC();
    v39 = NSStringFromClass(ObjCClassFromMetadata);
    v40 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
    v42 = v41;

    v109 = v40;
    v110 = v42;

    MEMORY[0x1BFAF1350](0x5F65737565725FLL, 0xE700000000000000);

    MEMORY[0x1BFAF1350](v36, v30);

    sub_1B9F248D8();
    v98 = 0;
  }

  v43 = sub_1BA4A6758();

  v44 = v101;
  v45 = sub_1BA4A18F8();
  v46 = [v38 dequeueReusableCellWithReuseIdentifier:v43 forIndexPath:v45];

  swift_getObjectType();
  v47 = swift_conformsToProtocol2();
  if (v47 && v46)
  {
    v48 = v47;
    ObjectType = swift_getObjectType();
    v50 = v46;
    (*(v48 + 16))([v38 viewController], ObjectType, v48);
  }

  v105[0] = v46;
  v51 = sub_1B9F0ADF8(0, &qword_1EDC6B550);
  sub_1B9F0D950(0, &qword_1EDC64E18);
  v52 = v46;
  v99 = v51;
  if (swift_dynamicCast())
  {
    sub_1B9F1134C(&v106, &v109);
    v53 = [v38 viewController];
    if (v53)
    {
      v54 = v53;
      v55 = UIViewController.resolvedHealthStore.getter();
      if (v55)
      {
        v56 = v55;
        sub_1BA4A2488();
        swift_allocObject();
        v92 = v36;
        v57 = v56;
        v58 = sub_1BA4A2468();
        v59 = v57;
        v60 = v58;

        UIViewController.resolvedPinnedContentManager.getter(&v106);
        UIViewController.resolvedHealthExperienceStore.getter(v105);
        type metadata accessor for ProvidedViewContext(0);
        v61 = swift_allocObject();
        v93 = v30;
        swift_beginAccess();
        v103[0] = v59;
        sub_1B9F0ADF8(0, &qword_1EDC6B620);
        v91 = v59;
        sub_1BA4A4EE8();
        swift_endAccess();
        *(v61 + OBJC_IVAR____TtC18HealthExperienceUI19ProvidedViewContext_pinnedContentManagerProvider) = v60;
        sub_1B9F0A534(&v106, v61 + OBJC_IVAR____TtC18HealthExperienceUI19ProvidedViewContext_pinnedContentManager);
        sub_1B9F0A534(v105, v104);
        swift_beginAccess();
        sub_1B9F0A534(v104, v103);
        sub_1B9F0D950(0, &qword_1EDC6E248);
        v90[1] = v60;

        sub_1BA4A4EE8();
        __swift_destroy_boxed_opaque_existential_1(v104);
        swift_endAccess();
        v62 = v91;

        __swift_destroy_boxed_opaque_existential_1(v105);
        __swift_destroy_boxed_opaque_existential_1(&v106);
        v63 = v111;
        v64 = v112;
        __swift_mutable_project_boxed_opaque_existential_1(&v109, v111);
        v65 = *(v64 + 16);
        v66 = v64;
        v44 = v101;
        v65(v61, v63, v66);

        v38 = v102;
      }

      else
      {
      }
    }

    __swift_destroy_boxed_opaque_existential_1(&v109);
  }

  else
  {
    v108 = 0;
    v106 = 0u;
    v107 = 0u;
    sub_1B9F5F198(&v106, &unk_1EDC64E10, &qword_1EDC64E18, &protocol descriptor for ProvidedViewContextConsumer, sub_1B9F0CDE8);
  }

  swift_getObjectType();
  v67 = swift_conformsToProtocol2();
  if (v67 && v46)
  {
    v68 = v67;
    v69 = v52;

    type metadata accessor for HostViewCell(0);
    v70 = swift_dynamicCastClass();
    if (v70)
    {
      v71 = v70;
      v72 = v69;
      v73 = v98;
      sub_1B9F248D8();
      v74 = OBJC_IVAR____TtC18HealthExperienceUI12HostViewCell_recreateViewControllerOnHostedFeedItemChange;
      swift_beginAccess();
      *(v71 + v74) = v73;
    }

    else
    {
      sub_1B9F248D8();
    }

    v75 = swift_getObjectType();
    sub_1B9F0A534(v100, &v109);
    (*(v68 + 16))(&v109, v75, v68);
    v76 = swift_getObjectType();
    v77 = swift_conformsToProtocol2();
    if (v77)
    {
      v78 = v77;
      v79 = v69;
      v80 = sub_1BA4A1968();
      v81 = SnapshotDataSource.numberOfItems(in:)(v80);
      v82 = type metadata accessor for SectionContext(0);
      v83 = *(v82 + 20);
      v84 = sub_1BA4A1998();
      v85 = v97;
      (*(*(v84 - 8) + 16))(v97 + v83, v44, v84);
      *v85 = v81;
      (*(*(v82 - 8) + 56))(v85, 0, 1, v82);
      (*(v78 + 16))(v85, v76, v78);
    }

    v104[0] = v69;
    sub_1B9F0D950(0, &qword_1EDC67CE0);
    v86 = v69;
    if (swift_dynamicCast())
    {
      sub_1B9F1134C(&v106, &v109);
      v87 = v111;
      v88 = v112;
      __swift_project_boxed_opaque_existential_1(&v109, v111);
      (*(v88 + 8))([v38 isEditing], 0, v87, v88);

      __swift_destroy_boxed_opaque_existential_1(&v109);
    }

    else
    {

      v108 = 0;
      v106 = 0u;
      v107 = 0u;
      sub_1B9F5F198(&v106, &unk_1EDC67CD8, &qword_1EDC67CE0, &protocol descriptor for CellEditModeHandling, sub_1B9F0CDE8);
    }

    return v86;
  }

  else
  {
    result = sub_1BA4A8018();
    __break(1u);
  }

  return result;
}

uint64_t AnimatedSnidgetCurrentValueText.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v83 = a1;
  sub_1B9F5AB80(0, &qword_1EDC5F1F8, sub_1B9F57FD4);
  v85 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v72 - v4;
  v6 = MEMORY[0x1E697F948];
  sub_1B9F5A968(0, &qword_1EDC5ED80, MEMORY[0x1E697F948]);
  v84 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v82 = &v72 - v8;
  v80 = type metadata accessor for AnimatedCharacterText(0);
  v9 = MEMORY[0x1EEE9AC00](v80);
  v74 = &v72 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v75 = &v72 - v11;
  sub_1B9F5AA38(0, &qword_1EDC5EDA8, v6);
  v76 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v79 = &v72 - v13;
  v14 = sub_1BA4A12C8();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v72 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v16);
  v21 = &v72 - v20;
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v72 - v22;
  v77 = type metadata accessor for AnimatedNumericText(0);
  v24 = MEMORY[0x1EEE9AC00](v77);
  v26 = &v72 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v73 = &v72 - v27;
  sub_1B9F5AA38(0, &qword_1EDC5ED70, MEMORY[0x1E697F960]);
  v29 = v28;
  MEMORY[0x1EEE9AC00](v28);
  v78 = &v72 - v30;
  v31 = type metadata accessor for AnimatedSnidgetCurrentValueText(0);
  v32 = v2;
  v33 = (v2 + *(v31 + 20));
  v34 = v33[1];
  if (v34)
  {
    v35 = v31;
    v81 = v14;
    v72 = v29;
    v36 = v82;
    v37 = *v33;
    v38 = *(v15 + 16);
    if (v33[3])
    {
      v39 = v21;
      v40 = v21;
      v41 = v32;
      v38(v40);
      v42 = v41 + *(v35 + 24);
      v43 = *(v42 + 8);
      if (v43)
      {
        v44 = *(v42 + 24);
        v45 = v78;
        if ((v37 != *v42 || v34 != v43) && (sub_1BA4A8338() & 1) == 0)
        {
          v44 = 0;
        }
      }

      else
      {
        v44 = 0;
        v45 = v78;
      }

      v65 = v74;
      (*(v15 + 32))(v74, v39, v81);
      *(v65 + *(v80 + 20)) = v44 & 1;
      v66 = v75;
      sub_1B9F5F130(v65, v75, type metadata accessor for AnimatedCharacterText);
      v67 = type metadata accessor for AnimatedCharacterText;
      sub_1B9F5F1F8(v66, v79, type metadata accessor for AnimatedCharacterText);
      swift_storeEnumTagMultiPayload();
      sub_1B9F5ABDC(qword_1EDC67E80, type metadata accessor for AnimatedNumericText);
      sub_1B9F5ABDC(&qword_1EDC67BD8, type metadata accessor for AnimatedCharacterText);
      sub_1BA4A58E8();
      v68 = v66;
    }

    else
    {
      v58 = v33[2];
      v59 = v32;
      v60 = v81;
      v38(v23);
      v61 = v59 + *(v35 + 24);
      v62 = *(v61 + 8);
      if (v62)
      {
        v63 = *(v61 + 24);
        if (v37 == *v61 && v34 == v62 || (sub_1BA4A8338() & 1) != 0)
        {
          v64 = v63 ^ 1;
        }

        else
        {
          v64 = 0;
        }

        v60 = v81;
      }

      else
      {
        v64 = 0;
      }

      (*(v15 + 32))(v26, v23, v60);
      v69 = v77;
      *&v26[*(v77 + 20)] = v58;
      v26[*(v69 + 24)] = v64 & 1;
      v70 = v73;
      sub_1B9F5F130(v26, v73, type metadata accessor for AnimatedNumericText);
      v67 = type metadata accessor for AnimatedNumericText;
      sub_1B9F5F1F8(v70, v79, type metadata accessor for AnimatedNumericText);
      swift_storeEnumTagMultiPayload();
      sub_1B9F5ABDC(qword_1EDC67E80, type metadata accessor for AnimatedNumericText);
      sub_1B9F5ABDC(&qword_1EDC67BD8, type metadata accessor for AnimatedCharacterText);
      v45 = v78;
      sub_1BA4A58E8();
      v68 = v70;
    }

    sub_1B9F5F2AC(v68, v67);
    v54 = &qword_1EDC5ED70;
    v55 = MEMORY[0x1E697F960];
    v56 = sub_1B9F5AA38;
    sub_1B9F5F77C(v45, v36, &qword_1EDC5ED70, MEMORY[0x1E697F960], sub_1B9F5AA38);
    swift_storeEnumTagMultiPayload();
    sub_1B9F5ADA4();
    sub_1B9F5AF10();
    sub_1BA4A58E8();
    v57 = v45;
  }

  else
  {
    (*(v15 + 16))(v18, v2, v14);
    v46 = sub_1BA4A5E08();
    v48 = v47;
    v50 = v49;
    v52 = v51;
    v53 = &v5[*(v85 + 36)];
    sub_1B9F57FD4();
    sub_1BA4A54C8();
    *v53 = swift_getKeyPath();
    *v5 = v46;
    *(v5 + 1) = v48;
    v5[16] = v50 & 1;
    *(v5 + 3) = v52;
    v54 = &qword_1EDC5F1F8;
    v55 = sub_1B9F57FD4;
    v56 = sub_1B9F5AB80;
    sub_1B9F5F77C(v5, v82, &qword_1EDC5F1F8, sub_1B9F57FD4, sub_1B9F5AB80);
    swift_storeEnumTagMultiPayload();
    sub_1B9F5ADA4();
    sub_1B9F5AF10();
    sub_1BA4A58E8();
    v57 = v5;
  }

  return sub_1B9F5F80C(v57, v54, v55, v56);
}

uint64_t sub_1B9F5F130(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B9F5F198(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = a5(0);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t sub_1B9F5F1F8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_1B9F5F260(unint64_t result, uint64_t a2, unint64_t a3)
{
  v3 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (4 * v3 >= result >> 14)
  {
    return sub_1BA4A69E8();
  }

  __break(1u);
  return result;
}

uint64_t sub_1B9F5F2AC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

id ContentConfigurationHostCell.init(frame:)(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  v9 = sub_1BA4A40C8();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v33 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v33 - v17;
  *&v4[OBJC_IVAR____TtC18HealthExperienceUI28ContentConfigurationHostCell_providedViewContext] = 0;
  swift_unknownObjectWeakInit();
  v19 = &v4[OBJC_IVAR____TtC18HealthExperienceUI28ContentConfigurationHostCell_currentViewModel];
  *v19 = 0u;
  *(v19 + 1) = 0u;
  *(v19 + 4) = 0;
  v20 = &v4[OBJC_IVAR____TtC18HealthExperienceUI28ContentConfigurationHostCell_previousViewModel];
  *v20 = 0u;
  *(v20 + 1) = 0u;
  *(v20 + 4) = 0;
  v21 = &v4[OBJC_IVAR____TtC18HealthExperienceUI28ContentConfigurationHostCell_configurationProvider];
  *v21 = 0u;
  *(v21 + 1) = 0u;
  *(v21 + 4) = 0;
  v22 = &v4[OBJC_IVAR____TtC18HealthExperienceUI28ContentConfigurationHostCell_baseIdentifier];
  *v22 = 0;
  *(v22 + 1) = 0;
  v23 = &v4[OBJC_IVAR____TtC18HealthExperienceUI28ContentConfigurationHostCell_item];
  *v23 = 0u;
  *(v23 + 1) = 0u;
  *(v23 + 4) = 0;
  [objc_allocWithZone(MEMORY[0x1E69DD1B8]) init];
  sub_1BA4A4088();
  v37.origin.x = a1;
  v37.origin.y = a2;
  v37.size.width = a3;
  v37.size.height = a4;
  Width = CGRectGetWidth(v37);
  type metadata accessor for ObservableCellState(0);
  v25 = swift_allocObject();
  v26 = *(v10 + 16);
  v26(v16, v18, v9);
  v34 = v26;
  swift_beginAccess();
  v26(v13, v16, v9);
  sub_1BA4A4EE8();
  v27 = *(v10 + 8);
  v27(v16, v9);
  swift_endAccess();
  swift_beginAccess();
  v36 = Width;
  sub_1BA4A4EE8();
  swift_endAccess();
  v27(v18, v9);
  *&v4[OBJC_IVAR____TtC18HealthExperienceUI28ContentConfigurationHostCell_cellState] = v25;
  v28 = type metadata accessor for ContentConfigurationHostCell();
  v35.receiver = v4;
  v35.super_class = v28;
  v29 = objc_msgSendSuper2(&v35, sel_initWithFrame_, a1, a2, a3, a4);

  v30 = [v29 _bridgedConfigurationState];
  sub_1BA4A40B8();

  swift_getKeyPath();
  swift_getKeyPath();
  v34(v16, v18, v9);
  sub_1BA4A4F38();
  v27(v18, v9);
  [v29 setAutomaticallyUpdatesContentConfiguration_];

  v31 = v29;
  if ([objc_opt_self() isAppleInternalInstall])
  {
    v31 = [objc_allocWithZone(MEMORY[0x1E69DCC48]) initWithTarget:v29 action:sel_didLongPress_];
    [v31 setNumberOfTouchesRequired_];
    [v29 addGestureRecognizer_];
  }

  return v29;
}

uint64_t sub_1B9F5F77C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  v7 = a5(0, a3, a4);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  return a2;
}

uint64_t sub_1B9F5F80C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v5 = a4(0);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

void sub_1B9F5F86C()
{
  sub_1B9F2AC84(319, &qword_1EDC6B700, MEMORY[0x1E69DC0B8], MEMORY[0x1E695C070]);
  if (v0 <= 0x3F)
  {
    sub_1B9F5FA28(319, &qword_1EDC6B718, MEMORY[0x1E69E7DE0], MEMORY[0x1E695C070]);
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

unint64_t sub_1B9F5F9A8()
{
  result = qword_1EDC5EF28;
  if (!qword_1EDC5EF28)
  {
    sub_1B9F5FB40();
    sub_1B9F5FD84();
    sub_1B9F6048C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC5EF28);
  }

  return result;
}

void sub_1B9F5FA28(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1B9F5FA78()
{
  if (!qword_1EDC5F068)
  {
    sub_1B9F5AB80(255, &qword_1EDC5F218, sub_1B9F5FCF0);
    sub_1B9F57FD4();
    v0 = sub_1BA4A5418();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDC5F068);
    }
  }
}

id sub_1B9F5FAFC(void *a1)
{
  v1 = a1;
  UIView.viewController()(v2);
  v4 = v3;

  return v4;
}

void sub_1B9F5FB40()
{
  if (!qword_1EDC5EF20)
  {
    sub_1B9F5FA78();
    sub_1B9F51C6C(255, &qword_1EDC5EC18, MEMORY[0x1E69E6370], MEMORY[0x1E6980A08]);
    v0 = sub_1BA4A5418();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDC5EF20);
    }
  }
}

void __swiftcall UIView.viewController()(UIViewController_optional *__return_ptr retstr)
{
  v2 = [v1 nextResponder];
  if (v2)
  {
    v3 = v2;
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      return;
    }
  }

  v4 = [v1 nextResponder];
  if (v4)
  {
    v5 = v4;
    objc_opt_self();
    v6 = swift_dynamicCastObjCClass();
    if (v6)
    {
      [v6 viewController];
    }
  }
}

void sub_1B9F5FC94(void *a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
}

void sub_1B9F5FCF0()
{
  if (!qword_1EDC68460)
  {
    sub_1BA4A12C8();
    sub_1B9F5ABDC(&qword_1EDC6AEB0, MEMORY[0x1E6968848]);
    v0 = type metadata accessor for SnidgetAnimation();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDC68460);
    }
  }
}

unint64_t sub_1B9F5FD84()
{
  result = qword_1EDC5F070;
  if (!qword_1EDC5F070)
  {
    sub_1B9F5FA78();
    sub_1B9F603C0();
    sub_1B9F5ABDC(&qword_1EDC5EC70, sub_1B9F57FD4);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC5F070);
  }

  return result;
}

uint64_t UIViewController.resolvedHealthStore.getter()
{
  v1 = sub_1BA4A3EA8();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_1B9F600B4();
  if (!result)
  {
    v6 = sub_1BA319C74();
    if (v6 && (v18[1] = v6, sub_1B9F21ADC(), sub_1B9F0D950(0, qword_1EDC6DE88), (swift_dynamicCast() & 1) != 0))
    {
      v7 = *(&v20 + 1);
      if (*(&v20 + 1))
      {
        v8 = v21;
        __swift_project_boxed_opaque_existential_1(&v19, *(&v20 + 1));
        v9 = (*(v8 + 8))(v7, v8);
        __swift_destroy_boxed_opaque_existential_1(&v19);
        return v9;
      }
    }

    else
    {
      v21 = 0;
      v19 = 0u;
      v20 = 0u;
    }

    sub_1B9F43A50(&v19, &qword_1EDC6DE80, qword_1EDC6DE88);
    sub_1BA4A3DD8();
    v10 = v0;
    v11 = sub_1BA4A3E88();
    v12 = sub_1BA4A6FA8();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      *&v19 = v14;
      *v13 = 136446210;
      v15 = UIViewController.resolutionDebugDescription.getter();
      v17 = sub_1B9F0B82C(v15, v16, &v19);

      *(v13 + 4) = v17;
      _os_log_impl(&dword_1B9F07000, v11, v12, "resolvedHealthStore requested, but none found in hierarchy: %{public}s", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v14);
      MEMORY[0x1BFAF43A0](v14, -1, -1);
      MEMORY[0x1BFAF43A0](v13, -1, -1);
    }

    (*(v2 + 8))(v4, v1);
    return 0;
  }

  return result;
}

uint64_t sub_1B9F600B4()
{
  v1 = sub_1B9F21ADC();
  v25 = v1;
  v24[0] = v0;
  sub_1B9F0AD9C(v24, v20);
  sub_1B9F0D950(0, qword_1EDC6DE88);
  v2 = v0;
  if (swift_dynamicCast())
  {
    v3 = *(&v22 + 1);
    v4 = v23;
    __swift_project_boxed_opaque_existential_1(&v21, *(&v22 + 1));
    v5 = (*(v4 + 8))(v3, v4);
    __swift_destroy_boxed_opaque_existential_1(&v21);
    __swift_destroy_boxed_opaque_existential_1(v24);
    return v5;
  }

  v23 = 0;
  v21 = 0u;
  v22 = 0u;
  sub_1B9F43A50(&v21, &qword_1EDC6DE80, qword_1EDC6DE88);
  __swift_destroy_boxed_opaque_existential_1(v24);
  v19 = v2;
  v6 = sub_1BA096838();
  v7 = v6;
  if (v6 >> 62)
  {
    goto LABEL_23;
  }

  v8 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v8)
  {
LABEL_5:
    v9 = 0;
    do
    {
      if ((v7 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x1BFAF2860](v9, v7);
        v11 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          goto LABEL_21;
        }
      }

      else
      {
        if (v9 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_22;
        }

        v10 = *(v7 + 8 * v9 + 32);
        v11 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
LABEL_21:
          __break(1u);
LABEL_22:
          __break(1u);
LABEL_23:
          v8 = sub_1BA4A7CC8();
          if (!v8)
          {
            break;
          }

          goto LABEL_5;
        }
      }

      v25 = v1;
      v24[0] = v10;
      sub_1B9F0AD9C(v24, v20);
      if (swift_dynamicCast())
      {
        v16 = *(&v22 + 1);
        v17 = v23;
        __swift_project_boxed_opaque_existential_1(&v21, *(&v22 + 1));
        v5 = (*(v17 + 8))(v16, v17);
        __swift_destroy_boxed_opaque_existential_1(&v21);
        __swift_destroy_boxed_opaque_existential_1(v24);

        return v5;
      }

      v23 = 0;
      v21 = 0u;
      v22 = 0u;
      sub_1B9F43A50(&v21, &qword_1EDC6DE80, qword_1EDC6DE88);
      __swift_destroy_boxed_opaque_existential_1(v24);
      ++v9;
    }

    while (v11 != v8);
  }

  v12 = [v19 parentViewController];
  if (!v12 || (v13 = v12, v5 = sub_1BA319F7C(), v13, !v5))
  {
    v14 = [v19 presentingViewController];
    if (!v14)
    {
      return 0;
    }

    v15 = v14;
    v5 = sub_1BA319F7C();

    if (!v5)
    {
      return 0;
    }
  }

  return v5;
}

unint64_t sub_1B9F603C0()
{
  result = qword_1EDC5F220;
  if (!qword_1EDC5F220)
  {
    sub_1B9F5AB80(255, &qword_1EDC5F218, sub_1B9F5FCF0);
    sub_1B9F5ABDC(qword_1EDC68468, sub_1B9F5FCF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC5F220);
  }

  return result;
}

unint64_t sub_1B9F6048C()
{
  result = qword_1EDC5EC20;
  if (!qword_1EDC5EC20)
  {
    sub_1B9F51C6C(255, &qword_1EDC5EC18, MEMORY[0x1E69E6370], MEMORY[0x1E6980A08]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC5EC20);
  }

  return result;
}

uint64_t UIViewController.resolvedPinnedContentManager.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1BA4A3EA8();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F60C24(&v23);
  if (v24)
  {
    sub_1B9F25598(&v23, &v25);
    goto LABEL_11;
  }

  v7 = sub_1BA319C74();
  if (!v7 || (v19[1] = v7, sub_1B9F21ADC(), sub_1B9F0D950(0, qword_1EDC63CB8), (swift_dynamicCast() & 1) == 0))
  {
    v22 = 0;
    v20 = 0u;
    v21 = 0u;
LABEL_9:
    sub_1B9F43A50(&v20, &qword_1EDC63CB0, qword_1EDC63CB8);
    v25 = 0u;
    v26 = 0u;
    v27 = 0;
    if (!v24)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v8 = *(&v21 + 1);
  if (!*(&v21 + 1))
  {
    goto LABEL_9;
  }

  v9 = v22;
  __swift_project_boxed_opaque_existential_1(&v20, *(&v21 + 1));
  (*(v9 + 8))(&v25, v8, v9);
  __swift_destroy_boxed_opaque_existential_1(&v20);
  if (v24)
  {
LABEL_10:
    sub_1B9F43A50(&v23, &unk_1EDC6ADB0, &qword_1EDC6ADC0);
  }

LABEL_11:
  if (*(&v26 + 1))
  {
    return sub_1B9F25598(&v25, a1);
  }

  v19[0] = v4;
  sub_1B9F43A50(&v25, &unk_1EDC6ADB0, &qword_1EDC6ADC0);
  sub_1BA4A3DD8();
  v11 = v1;
  v12 = sub_1BA4A3E88();
  v13 = sub_1BA4A6FA8();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *&v25 = v15;
    *v14 = 136446210;
    v16 = UIViewController.resolutionDebugDescription.getter();
    v18 = sub_1B9F0B82C(v16, v17, &v25);

    *(v14 + 4) = v18;
    _os_log_impl(&dword_1B9F07000, v12, v13, "resolvedPinnedContentManager requested, but none found in hierarchy: %{public}s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v15);
    MEMORY[0x1BFAF43A0](v15, -1, -1);
    MEMORY[0x1BFAF43A0](v14, -1, -1);
  }

  (*(v19[0] + 8))(v6, v3);
  result = sub_1BA4A8018();
  __break(1u);
  return result;
}

void sub_1B9F60858(uint64_t a1@<X8>)
{
  v2 = v1;
  v43 = a1;
  v3 = sub_1BA4A54D8();
  v41 = *(v3 - 8);
  v42 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v40 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1BA4A12C8();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F5AB80(0, &qword_1EDC5F218, sub_1B9F5FCF0);
  v10 = v9 - 8;
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v34 - v11;
  sub_1B9F5FA78();
  v39 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v6 + 16);
  v16(v8, v1, v5);
  v17 = sub_1BA4A5E08();
  v36 = v18;
  v37 = v17;
  v35 = v19;
  v38 = v20;
  v21 = *(v1 + *(type metadata accessor for AnimatedNumericText(0) + 24));
  v22 = MEMORY[0x1BFAF0E30](0.5, 0.7, 0.0);
  v23 = &v12[*(v10 + 44)];
  v34 = v2;
  v16(v23, v2, v5);
  sub_1B9F5FCF0();
  *&v23[*(v24 + 36)] = v22;
  v23[*(v24 + 40)] = v21;
  v25 = v36;
  *v12 = v37;
  *(v12 + 1) = v25;
  v12[16] = v35 & 1;
  *(v12 + 3) = v38;
  v26 = v40;
  if (v21 == 1)
  {
    sub_1BA4A54A8();
  }

  else
  {
    sub_1BA4A54C8();
  }

  KeyPath = swift_getKeyPath();
  v28 = &v15[*(v39 + 36)];
  sub_1B9F57FD4();
  (*(v41 + 32))(v28 + *(v29 + 28), v26, v42);
  *v28 = KeyPath;
  sub_1B9F613F4(v12, v15);
  v30 = swift_getKeyPath();
  v31 = v43;
  sub_1B9F5F130(v15, v43, sub_1B9F5FA78);
  sub_1B9F5FB40();
  v33 = v31 + *(v32 + 36);
  *v33 = v30;
  *(v33 + 8) = 1;
}

uint64_t sub_1B9F60BCC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1BA4A5688();
  *a1 = result & 1;
  return result;
}

double sub_1B9F60C24@<D0>(uint64_t a1@<X8>)
{
  v3 = sub_1B9F21ADC();
  *(&v23 + 1) = v3;
  *&v22 = v1;
  v4 = v1;
  sub_1B9F60FA4(&v22, &v26);
  __swift_destroy_boxed_opaque_existential_1(&v22);
  if (!*(&v27 + 1))
  {
    sub_1B9F43A50(&v26, &unk_1EDC6ADB0, &qword_1EDC6ADC0);
    v7 = sub_1BA096838();
    v8 = v7;
    v19 = v4;
    v20 = a1;
    if (v7 >> 62)
    {
      goto LABEL_28;
    }

    v9 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v9)
    {
LABEL_18:

      v15 = [v4 parentViewController];
      a1 = v20;
      if (v15)
      {
        v16 = v15;
        sub_1BA31A13C(&v26);

        if (*(&v27 + 1))
        {
          goto LABEL_2;
        }

        sub_1B9F43A50(&v26, &unk_1EDC6ADB0, &qword_1EDC6ADC0);
      }

      v17 = [v19 presentingViewController];
      if (v17)
      {
        v18 = v17;
        sub_1BA31A13C(&v26);

        if (*(&v27 + 1))
        {
          goto LABEL_2;
        }

        sub_1B9F43A50(&v26, &unk_1EDC6ADB0, &qword_1EDC6ADC0);
      }

      *(v20 + 32) = 0;
      result = 0.0;
      *v20 = 0u;
      *(v20 + 16) = 0u;
      return result;
    }

LABEL_6:
    v10 = 0;
    while (1)
    {
      if ((v8 & 0xC000000000000001) != 0)
      {
        v11 = MEMORY[0x1BFAF2860](v10, v8);
        v12 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          goto LABEL_26;
        }
      }

      else
      {
        if (v10 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_27;
        }

        v11 = *(v8 + 8 * v10 + 32);
        v12 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
LABEL_26:
          __break(1u);
LABEL_27:
          __break(1u);
LABEL_28:
          v9 = sub_1BA4A7CC8();
          if (!v9)
          {
            goto LABEL_18;
          }

          goto LABEL_6;
        }
      }

      v25[3] = v3;
      v25[0] = v11;
      sub_1B9F0AD9C(v25, v21);
      sub_1B9F0D950(0, qword_1EDC63CB8);
      if (swift_dynamicCast())
      {
        v14 = *(&v23 + 1);
        v13 = v24;
        __swift_project_boxed_opaque_existential_1(&v22, *(&v23 + 1));
        (*(v13 + 8))(&v26, v14, v13);
        __swift_destroy_boxed_opaque_existential_1(&v22);
      }

      else
      {
        v24 = 0;
        v22 = 0u;
        v23 = 0u;
        sub_1B9F43A50(&v22, &qword_1EDC63CB0, qword_1EDC63CB8);
        v26 = 0u;
        v27 = 0u;
        v28 = 0;
      }

      __swift_destroy_boxed_opaque_existential_1(v25);
      if (*(&v27 + 1))
      {

        sub_1B9F25598(&v26, v29);
        v5 = v20;
        goto LABEL_3;
      }

      sub_1B9F43A50(&v26, &unk_1EDC6ADB0, &qword_1EDC6ADC0);
      ++v10;
      if (v12 == v9)
      {
        goto LABEL_18;
      }
    }
  }

LABEL_2:
  sub_1B9F25598(&v26, v29);
  v5 = a1;
LABEL_3:
  sub_1B9F25598(v29, v5);
  return result;
}

double sub_1B9F60FA4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1B9F0AD9C(a1, &v6);
  sub_1B9F0D950(0, qword_1EDC63CB8);
  if (swift_dynamicCast())
  {
    v3 = *(&v8 + 1);
    v4 = v9;
    __swift_project_boxed_opaque_existential_1(&v7, *(&v8 + 1));
    (*(v4 + 8))(v3, v4);
    __swift_destroy_boxed_opaque_existential_1(&v7);
  }

  else
  {
    v9 = 0;
    v7 = 0u;
    v8 = 0u;
    sub_1B9F43A50(&v7, &qword_1EDC63CB0, qword_1EDC63CB8);
    *(a2 + 32) = 0;
    result = 0.0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

double sub_1B9F61090@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1B9F0AD9C(a1, &v6);
  sub_1B9F0D950(0, &qword_1EDC6DE30);
  if (swift_dynamicCast())
  {
    v3 = *(&v8 + 1);
    v4 = v9;
    __swift_project_boxed_opaque_existential_1(&v7, *(&v8 + 1));
    (*(v4 + 8))(v3, v4);
    __swift_destroy_boxed_opaque_existential_1(&v7);
  }

  else
  {
    v9 = 0;
    v7 = 0u;
    v8 = 0u;
    sub_1B9F43A50(&v7, &qword_1EDC6DE28, &qword_1EDC6DE30);
    *(a2 + 32) = 0;
    result = 0.0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

uint64_t UIViewController.resolvedHealthExperienceStore.getter@<X0>(uint64_t *a1@<X8>)
{
  ObjectType = swift_getObjectType();
  v4 = sub_1BA4A3EA8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  UIViewController.availableHealthExperienceStore.getter(&v24);
  if (v25)
  {
    sub_1B9F25598(&v24, v26);
    return sub_1B9F25598(v26, a1);
  }

  else
  {
    sub_1B9F43A50(&v24, &qword_1EDC6AE08, &qword_1EDC6E248);
    sub_1BA4A3DD8();
    v9 = v1;
    v10 = sub_1BA4A3E88();
    v11 = sub_1BA4A6FA8();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      *&v24 = v23;
      *v12 = 136446466;
      *&v26[0] = ObjectType;
      swift_getMetatypeMetadata();
      v13 = sub_1BA4A6808();
      v15 = sub_1B9F0B82C(v13, v14, &v24);

      *(v12 + 4) = v15;
      *(v12 + 12) = 2080;
      v16 = UIViewController.resolutionDebugDescription.getter();
      v18 = sub_1B9F0B82C(v16, v17, &v24);

      *(v12 + 14) = v18;
      _os_log_impl(&dword_1B9F07000, v10, v11, "[%{public}s]: No HealthExperienceStore could be resolved in hierarchy: %s", v12, 0x16u);
      v19 = v23;
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v19, -1, -1);
      MEMORY[0x1BFAF43A0](v12, -1, -1);
    }

    (*(v5 + 8))(v7, v4);
    v20 = sub_1BA4A1B08();
    result = sub_1BA4A1AF8();
    v21 = MEMORY[0x1E69A3B38];
    a1[3] = v20;
    a1[4] = v21;
    *a1 = result;
  }

  return result;
}

uint64_t sub_1B9F613F4(uint64_t a1, uint64_t a2)
{
  sub_1B9F5AB80(0, &qword_1EDC5F218, sub_1B9F5FCF0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

double UIViewController.availableHealthExperienceStore.getter@<D0>(uint64_t a1@<X8>)
{
  v3 = sub_1B9F21ADC();
  *(&v22 + 1) = v3;
  *&v21 = v1;
  v4 = v1;
  sub_1B9F61090(&v21, &v25);
  __swift_destroy_boxed_opaque_existential_1(&v21);
  if (*(&v26 + 1))
  {
    sub_1B9F25598(&v25, v28);
LABEL_3:
    v5 = a1;
LABEL_22:
    sub_1B9F25598(v28, v5);
    return result;
  }

  sub_1B9F43A50(&v25, &qword_1EDC6AE08, &qword_1EDC6E248);
  v6 = sub_1BA096838();
  v7 = v6;
  v19 = a1;
  if (v6 >> 62)
  {
    goto LABEL_28;
  }

  v8 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v8)
  {
LABEL_6:
    v9 = 0;
    do
    {
      if ((v7 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x1BFAF2860](v9, v7);
        v11 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          goto LABEL_26;
        }
      }

      else
      {
        if (v9 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_27;
        }

        v10 = *(v7 + 8 * v9 + 32);
        v11 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
LABEL_26:
          __break(1u);
LABEL_27:
          __break(1u);
LABEL_28:
          v8 = sub_1BA4A7CC8();
          if (!v8)
          {
            break;
          }

          goto LABEL_6;
        }
      }

      v24[3] = v3;
      v24[0] = v10;
      sub_1B9F0AD9C(v24, v20);
      sub_1B9F0D950(0, &qword_1EDC6DE30);
      if (swift_dynamicCast())
      {
        v13 = *(&v22 + 1);
        v12 = v23;
        __swift_project_boxed_opaque_existential_1(&v21, *(&v22 + 1));
        (*(v12 + 8))(&v25, v13, v12);
        __swift_destroy_boxed_opaque_existential_1(&v21);
      }

      else
      {
        v23 = 0;
        v21 = 0u;
        v22 = 0u;
        sub_1B9F43A50(&v21, &qword_1EDC6DE28, &qword_1EDC6DE30);
        v25 = 0u;
        v26 = 0u;
        v27 = 0;
      }

      __swift_destroy_boxed_opaque_existential_1(v24);
      if (*(&v26 + 1))
      {

        sub_1B9F25598(&v25, v28);
        goto LABEL_21;
      }

      sub_1B9F43A50(&v25, &qword_1EDC6AE08, &qword_1EDC6E248);
      ++v9;
    }

    while (v11 != v8);
  }

  v14 = [v4 parentViewController];
  if (v14)
  {
    v15 = v14;
    UIViewController.resolvedHealthExperienceStore.getter(v28);

LABEL_21:
    v5 = v19;
    goto LABEL_22;
  }

  v17 = [v4 presentingViewController];
  a1 = v19;
  if (v17)
  {
    v18 = v17;
    UIViewController.resolvedHealthExperienceStore.getter(v28);

    goto LABEL_3;
  }

  *(v19 + 32) = 0;
  result = 0.0;
  *v19 = 0u;
  *(v19 + 16) = 0u;
  return result;
}

uint64_t sub_1B9F617A8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void SnidgetSwiftChartView.body.getter(uint64_t a1@<X8>)
{
  v186 = a1;
  v185 = sub_1BA4A54D8();
  v184 = *(v185 - 8);
  MEMORY[0x1EEE9AC00](v185);
  v183 = &v158 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F64544(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v200 = &v158 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F64EDC();
  v164 = v5;
  v6 = MEMORY[0x1EEE9AC00](v5);
  v163 = &v158 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v160 = &v158 - v8;
  v197 = sub_1BA4A1728();
  v161 = *(v197 - 1);
  v9 = MEMORY[0x1EEE9AC00](v197);
  v196 = &v158 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v195 = &v158 - v11;
  v193 = sub_1BA4A0FA8();
  v192 = *(v193 - 8);
  v12 = MEMORY[0x1EEE9AC00](v193);
  v194 = &v158 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v191 = &v158 - v14;
  sub_1B9F57C6C();
  v201 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v162 = &v158 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F56438();
  v188 = v17;
  v189 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v158 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F564F8();
  v204 = v20;
  v190 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v187 = &v158 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F56B68();
  v198 = v22;
  v159 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v205 = &v158 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F56640();
  v167 = v24;
  v166 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v199 = &v158 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F5677C();
  v169 = v26;
  v168 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v165 = &v158 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F56AA0(0);
  v171 = v28;
  MEMORY[0x1EEE9AC00](v28);
  v172 = &v158 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F56C54(0);
  MEMORY[0x1EEE9AC00](v30 - 8);
  v173 = &v158 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F55BC0(0);
  v170 = v32;
  MEMORY[0x1EEE9AC00](v32);
  v202 = &v158 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F555E8(0);
  v174 = v34;
  MEMORY[0x1EEE9AC00](v34);
  v203 = &v158 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = MEMORY[0x1E697E830];
  sub_1B9F54DF4(0, &qword_1EDC5EE28, sub_1B9F555E8, sub_1B9F5802C, MEMORY[0x1E697E830]);
  v177 = v37;
  MEMORY[0x1EEE9AC00](v37);
  v179 = &v158 - v38;
  sub_1B9F54AE0(0);
  v180 = v39;
  MEMORY[0x1EEE9AC00](v39);
  v181 = &v158 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F54DF4(0, &qword_1EDC5EDE8, sub_1B9F54AE0, sub_1B9F584B8, v36);
  v178 = v41;
  MEMORY[0x1EEE9AC00](v41);
  v182 = &v158 - v42;
  v43 = sub_1BA4A2C58();
  v44 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43);
  v46 = &v158 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = type metadata accessor for SnidgetSwiftChartViewModel.DiagramHighlight(0);
  MEMORY[0x1EEE9AC00](v47 - 8);
  v49 = &v158 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = *(v1 + 8);
  v51 = OBJC_IVAR____TtC18HealthExperienceUI26SnidgetSwiftChartViewModel_diagramHighlight;
  swift_beginAccess();
  sub_1B9F63EF0(v50 + v51, v49, type metadata accessor for SnidgetSwiftChartViewModel.DiagramHighlight);
  v52 = sub_1BA3697C4();
  sub_1BA4A2C48();
  v53 = sub_1BA4A2B78();

  (*(v44 + 8))(v46, v43);
  sub_1B9F617A8(v49, type metadata accessor for SnidgetSwiftChartViewModel.DiagramHighlight);
  v176 = v1;
  v206 = v1;
  v175 = v53;
  v207 = v53;
  sub_1B9F56D28(0, &qword_1EDC5F838, sub_1B9F56E14, sub_1B9F56ECC);
  sub_1B9F5708C();
  sub_1BA4A49C8();
  v54 = sub_1B9F48334(&qword_1EDC5F728, sub_1B9F56438);
  v55 = v187;
  v56 = v188;
  sub_1BA4A5E28();
  (*(v189 + 8))(v19, v56);
  v210 = v56;
  v211 = v54;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v58 = v204;
  v189 = OpaqueTypeConformance2;
  sub_1BA4A5E38();
  (*(v190 + 8))(v55, v58);
  v59 = OBJC_IVAR____TtC18HealthExperienceUI26SnidgetSwiftChartViewModel_dateInterval;
  swift_beginAccess();
  v60 = v192;
  v61 = *(v192 + 16);
  v62 = v191;
  v63 = v193;
  v61(v191, v50 + v59, v193);
  v64 = v195;
  sub_1BA4A0F88();
  v65 = *(v60 + 8);
  v66 = v63;
  v65(v62, v63);
  v192 = v50;
  v67 = v194;
  v61(v194, v50 + v59, v66);
  v68 = v64;
  v69 = v196;
  sub_1BA4A0F58();
  v65(v67, v66);
  sub_1B9F48334(&qword_1EDC6E260, MEMORY[0x1E6969530]);
  v70 = v197;
  if (sub_1BA4A6708())
  {
    v71 = v161;
    v72 = *(v161 + 32);
    v73 = v160;
    v72(v160, v68, v70);
    v74 = v164;
    v72((v73 + *(v164 + 48)), v69, v70);
    v75 = v163;
    sub_1B9F63EF0(v73, v163, sub_1B9F64EDC);
    v76 = *(v74 + 48);
    v77 = v162;
    v72(v162, v75, v70);
    v78 = *(v71 + 8);
    v78(v75 + v76, v70);
    sub_1B9F6307C(v73, v75, sub_1B9F64EDC);
    v72((v77 + *(v201 + 36)), (v75 + *(v74 + 48)), v70);
    v78(v75, v70);
    v79 = sub_1BA4A4A78();
    v80 = v200;
    v197 = *(*(v79 - 8) + 56);
    (v197)(v200, 1, 1, v79);
    v210 = v204;
    v211 = v189;
    v81 = swift_getOpaqueTypeConformance2();
    v82 = sub_1B9F57DAC();
    v83 = v198;
    v84 = v205;
    sub_1BA4A5E48();
    sub_1B9F617A8(v80, sub_1B9F64544);
    sub_1B9F617A8(v77, sub_1B9F57C6C);
    (*(v159 + 8))(v84, v83);
    v85 = OBJC_IVAR____TtC18HealthExperienceUI26SnidgetSwiftChartViewModel_shouldReverseYAxis;
    v86 = v192;
    swift_beginAccess();
    LODWORD(v75) = *(v86 + v85);
    sub_1B9F51694(0, &qword_1EDC5DBE8, MEMORY[0x1E69E63B0], MEMORY[0x1E69E6F90]);
    v87 = swift_allocObject();
    *(v87 + 16) = xmmword_1BA4B5460;
    v88 = (v86 + OBJC_IVAR____TtC18HealthExperienceUI26SnidgetSwiftChartViewModel_yValueRange);
    swift_beginAccess();
    *(v87 + 32) = *v88;
    *(v87 + 40) = v88[1];
    if (v75 == 1)
    {
      v87 = sub_1BA3269FC(v87);
    }

    v214 = v87;
    v89 = v200;
    (v197)(v200, 1, 1, v79);
    sub_1B9F51694(0, &qword_1EDC5E680, MEMORY[0x1E69E63B0], MEMORY[0x1E69E62F8]);
    v210 = v198;
    v211 = v201;
    v212 = v81;
    v213 = v82;
    swift_getOpaqueTypeConformance2();
    sub_1B9F57E6C();
    v90 = v165;
    v91 = v167;
    v92 = v199;
    sub_1BA4A5E58();
    sub_1B9F617A8(v89, sub_1B9F64544);

    (*(v166 + 8))(v92, v91);
    v93 = sub_1BA4A5BD8();
    swift_beginAccess();
    sub_1BA4A5188();
    v95 = v94;
    v97 = v96;
    v99 = v98;
    v101 = v100;
    v102 = v172;
    (*(v168 + 32))(v172, v90, v169);
    v103 = v102 + *(v171 + 36);
    *v103 = v93;
    *(v103 + 8) = v95;
    *(v103 + 16) = v97;
    *(v103 + 24) = v99;
    *(v103 + 32) = v101;
    *(v103 + 40) = 0;
    v104 = v176;
    v208 = sub_1BA369660();
    v209 = v105;
    MEMORY[0x1BFAF1350](0x74726168432ELL, 0xE600000000000000);
    sub_1B9F58D10();
    v106 = v173;
    sub_1BA4A5F18();

    sub_1B9F6442C(v102, sub_1B9F56AA0);
    KeyPath = swift_getKeyPath();
    v108 = v202;
    v109 = (v202 + *(v170 + 36));
    sub_1B9F57F00(0);
    v111 = *(v110 + 28);
    v112 = *MEMORY[0x1E697E7D0];
    v113 = sub_1BA4A53F8();
    (*(*(v113 - 8) + 104))(v109 + v111, v112, v113);
    *v109 = KeyPath;
    sub_1B9F643C4(v106, v108, sub_1B9F56C54);
    v114 = *(v104 + 16);
    v115 = (v86 + OBJC_IVAR____TtC18HealthExperienceUI26SnidgetSwiftChartViewModel_animationConfiguration);
    v116 = *(v86 + OBJC_IVAR____TtC18HealthExperienceUI26SnidgetSwiftChartViewModel_animationConfiguration + 8);
    if (v116 && v114 && (v117 = *(v114 + OBJC_IVAR____TtC18HealthExperienceUI26SnidgetSwiftChartViewModel_animationConfiguration + 8)) != 0 && (*v115 == *(v114 + OBJC_IVAR____TtC18HealthExperienceUI26SnidgetSwiftChartViewModel_animationConfiguration) && v116 == v117 || (sub_1BA4A8338() & 1) != 0))
    {
      v118 = v183;
      sub_1BA4A5498();
    }

    else
    {
      v118 = v183;
      sub_1BA4A54C8();
    }

    v119 = v185;
    v120 = v182;
    v121 = v174;
    v122 = swift_getKeyPath();
    v123 = *(v121 + 36);
    v124 = v203;
    v125 = (v203 + v123);
    sub_1B9F57FD4();
    (*(v184 + 32))(v125 + *(v126 + 28), v118, v119);
    *v125 = v122;
    sub_1B9F643C4(v202, v124, sub_1B9F55BC0);
    swift_beginAccess();
    v127 = *(v86 + 24);
    v128 = v115[1];
    if (v128 && v114 && (v129 = *(v114 + OBJC_IVAR____TtC18HealthExperienceUI26SnidgetSwiftChartViewModel_animationConfiguration + 8)) != 0)
    {
      v130 = v179;
      if (*v115 == *(v114 + OBJC_IVAR____TtC18HealthExperienceUI26SnidgetSwiftChartViewModel_animationConfiguration) && v128 == v129)
      {
        v131 = 1;
      }

      else
      {
        v131 = sub_1BA4A8338();
      }
    }

    else
    {
      v131 = 0;
      v130 = v179;
    }

    v133 = MEMORY[0x1BFAF0E30](v132, 0.5, 0.7, 0.0);
    sub_1B9F643C4(v203, v130, sub_1B9F555E8);
    v134 = v130 + *(v177 + 36);
    *v134 = v127;
    *(v134 + 8) = v133;
    *(v134 + 16) = v131 & 1;
    if (*(v86 + 16) == 1)
    {
      swift_beginAccess();
    }

    v135 = sub_1BA4A5B78();
    sub_1BA4A5188();
    v137 = v136;
    v139 = v138;
    v141 = v140;
    v143 = v142;
    v144 = v181;
    sub_1B9F642EC(v130, v181, &qword_1EDC5EE28, sub_1B9F555E8, sub_1B9F5802C);
    v145 = v144 + *(v180 + 36);
    *v145 = v135;
    *(v145 + 8) = v137;
    *(v145 + 16) = v139;
    *(v145 + 24) = v141;
    *(v145 + 32) = v143;
    *(v145 + 40) = 0;
    sub_1B9F643C4(v144, v120, sub_1B9F54AE0);
    *(v120 + *(v178 + 36)) = 0;
    if (*(v86 + 16) == 1)
    {
      swift_beginAccess();
    }

    v146 = sub_1BA4A5B78();
    sub_1BA4A5188();
    v148 = v147;
    v150 = v149;
    v152 = v151;
    v154 = v153;

    v155 = v186;
    sub_1B9F642EC(v120, v186, &qword_1EDC5EDE8, sub_1B9F54AE0, sub_1B9F584B8);
    sub_1B9F549BC(0);
    v157 = v155 + *(v156 + 36);
    *v157 = v146;
    *(v157 + 8) = v148;
    *(v157 + 16) = v150;
    *(v157 + 24) = v152;
    *(v157 + 32) = v154;
    *(v157 + 40) = 0;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1B9F62F24(uint64_t a1)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI28ContentConfigurationHostCell_providedViewContext;
  swift_beginAccess();
  *(v3 + v4) = a1;
}

uint64_t sub_1B9F62F84(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI28ContentConfigurationHostCell_item;
  swift_beginAccess();
  v4 = MEMORY[0x1E69A3348];
  sub_1B9F374E8(v1 + v3, v6, &qword_1EDC6E1A0, &qword_1EDC6E1B0);
  swift_beginAccess();
  sub_1B9F63E74(a1, v1 + v3);
  swift_endAccess();
  sub_1B9F49124(v6);
  sub_1B9F4A1F4(a1, &qword_1EDC6E1A0, &qword_1EDC6E1B0, v4, sub_1B9F0CDE8);
  return sub_1B9F4A1F4(v6, &qword_1EDC6E1A0, &qword_1EDC6E1B0, v4, sub_1B9F0CDE8);
}

uint64_t sub_1B9F6307C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B9F630E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v111 = a2;
  *&v109 = a3;
  sub_1B9F64E60(0, &qword_1EDC5F730, sub_1B9F56E14, sub_1B9F56ECC);
  *&v108 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v107 = &v98 - v5;
  v98 = type metadata accessor for SnidgetSwiftChartView.AverageLine(0);
  MEMORY[0x1EEE9AC00](v98);
  v101 = &v98 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F56FA0();
  v104 = v7;
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v99 = &v98 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F56ECC(0);
  v11 = MEMORY[0x1EEE9AC00](v10 - 8);
  v106 = &v98 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v105 = &v98 - v13;
  v14 = type metadata accessor for SnidgetSwiftChartView.DistributionChartMarks(0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v98 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for SnidgetSwiftChartView.LineChartMarks(0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v98 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F56E84(0);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v22 = &v98 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for SnidgetSwiftChartView.BarChartMarks(0);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v98 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F56E14(0);
  v27 = MEMORY[0x1EEE9AC00](v26 - 8);
  v102 = &v98 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v110 = &v98 - v29;
  v100 = a1;
  v30 = *(a1 + 8);
  swift_beginAccess();
  v31 = *(v30 + 16);
  v103 = v8;
  if (v31)
  {
    if (v31 != 1)
    {
      swift_beginAccess();
      v54 = *(v30 + 24);
      v55 = OBJC_IVAR____TtC18HealthExperienceUI26SnidgetSwiftChartViewModel_diagramHighlight;
      swift_beginAccess();
      sub_1B9F63EF0(v30 + v55, &v16[v14[5]], type metadata accessor for SnidgetSwiftChartViewModel.DiagramHighlight);
      v56 = OBJC_IVAR____TtC18HealthExperienceUI26SnidgetSwiftChartViewModel_dateScaleStep;
      swift_beginAccess();
      v57 = v14[6];
      v58 = sub_1BA4A1898();
      (*(*(v58 - 8) + 16))(&v16[v57], v30 + v56, v58);
      v59 = (v30 + OBJC_IVAR____TtC18HealthExperienceUI26SnidgetSwiftChartViewModel_chartParameters);
      swift_beginAccess();
      v60 = *(v59 + 4);
      v61 = v14[7];
      v62 = *v59;
      v63 = v59[1];
      *v16 = v54;
      *&v16[v61] = v111;
      v64 = &v16[v14[8]];
      *v64 = v62;
      *(v64 + 1) = v63;
      *(v64 + 4) = v60;
      sub_1B9F6307C(v16, v110, type metadata accessor for SnidgetSwiftChartView.DistributionChartMarks);
      goto LABEL_7;
    }

    swift_beginAccess();
    v32 = *(v30 + 24);
    v33 = OBJC_IVAR____TtC18HealthExperienceUI26SnidgetSwiftChartViewModel_diagramHighlight;
    swift_beginAccess();
    sub_1B9F63EF0(v30 + v33, &v19[v17[5]], type metadata accessor for SnidgetSwiftChartViewModel.DiagramHighlight);
    v34 = OBJC_IVAR____TtC18HealthExperienceUI26SnidgetSwiftChartViewModel_dateScaleStep;
    swift_beginAccess();
    v35 = v17[6];
    v36 = sub_1BA4A1898();
    (*(*(v36 - 8) + 16))(&v19[v35], v30 + v34, v36);
    v37 = (v30 + OBJC_IVAR____TtC18HealthExperienceUI26SnidgetSwiftChartViewModel_chartParameters);
    swift_beginAccess();
    v38 = *(v37 + 4);
    v39 = v17[7];
    v40 = *v37;
    v41 = v37[1];
    *v19 = v32;
    *&v19[v39] = v111;
    v42 = &v19[v17[8]];
    *v42 = v40;
    *(v42 + 1) = v41;
    *(v42 + 4) = v38;
    sub_1B9F6307C(v19, v22, type metadata accessor for SnidgetSwiftChartView.LineChartMarks);
    sub_1B9F54DF4(0, &qword_1EDC5F760, type metadata accessor for SnidgetSwiftChartView.BarChartMarks, type metadata accessor for SnidgetSwiftChartView.LineChartMarks, MEMORY[0x1E695B1A0]);
  }

  else
  {
    swift_beginAccess();
    v43 = *(v30 + 24);
    v44 = OBJC_IVAR____TtC18HealthExperienceUI26SnidgetSwiftChartViewModel_diagramHighlight;
    swift_beginAccess();
    sub_1B9F63EF0(v30 + v44, &v25[v23[5]], type metadata accessor for SnidgetSwiftChartViewModel.DiagramHighlight);
    v45 = OBJC_IVAR____TtC18HealthExperienceUI26SnidgetSwiftChartViewModel_dateScaleStep;
    swift_beginAccess();
    v46 = v23[6];
    v47 = sub_1BA4A1898();
    (*(*(v47 - 8) + 16))(&v25[v46], v30 + v45, v47);
    v48 = (v30 + OBJC_IVAR____TtC18HealthExperienceUI26SnidgetSwiftChartViewModel_chartParameters);
    swift_beginAccess();
    v49 = *(v48 + 4);
    v50 = v23[7];
    v51 = *v48;
    v52 = v48[1];
    *v25 = v43;
    *&v25[v50] = v111;
    v53 = &v25[v23[8]];
    *v53 = v51;
    *(v53 + 1) = v52;
    *(v53 + 4) = v49;
    sub_1B9F6307C(v25, v22, type metadata accessor for SnidgetSwiftChartView.BarChartMarks);
    sub_1B9F54DF4(0, &qword_1EDC5F760, type metadata accessor for SnidgetSwiftChartView.BarChartMarks, type metadata accessor for SnidgetSwiftChartView.LineChartMarks, MEMORY[0x1E695B1A0]);
  }

  swift_storeEnumTagMultiPayload();
  sub_1B9F6307C(v22, v110, sub_1B9F56E84);
LABEL_7:
  v65 = v109;
  v66 = v108;
  v67 = v107;
  v68 = v106;
  sub_1B9F54DF4(0, &qword_1EDC5F758, sub_1B9F56E84, type metadata accessor for SnidgetSwiftChartView.DistributionChartMarks, MEMORY[0x1E695B1A0]);
  swift_storeEnumTagMultiPayload();

  v69 = v30 + OBJC_IVAR____TtC18HealthExperienceUI26SnidgetSwiftChartViewModel_diagramHighlight;
  swift_beginAccess();
  v70 = type metadata accessor for SnidgetSwiftChartViewModel.DiagramHighlight(0);
  if (*(v69 + *(v70 + 20)) <= 1u && *(v69 + *(v70 + 20)))
  {
  }

  else
  {
    v71 = sub_1BA4A8338();

    if ((v71 & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  v72 = (v69 + *(v70 + 28));
  if ((v72[1] & 1) == 0)
  {
    v77 = *v72;
    v78 = OBJC_IVAR____TtC18HealthExperienceUI26SnidgetSwiftChartViewModel_dateInterval;
    swift_beginAccess();
    v79 = sub_1BA4A0FA8();
    v80 = v101;
    (*(*(v79 - 8) + 16))(v101, v30 + v78, v79);
    v81 = OBJC_IVAR____TtC18HealthExperienceUI26SnidgetSwiftChartViewModel_dateScaleStep;
    swift_beginAccess();
    v82 = v98;
    v83 = *(v98 + 28);
    v84 = sub_1BA4A1898();
    (*(*(v84 - 8) + 16))(v80 + v83, v30 + v81, v84);
    v85 = (v30 + OBJC_IVAR____TtC18HealthExperienceUI26SnidgetSwiftChartViewModel_chartParameters);
    swift_beginAccess();
    v86 = *(v85 + 4);
    v87 = v82[9];
    v88 = v85[1];
    v109 = *v85;
    v108 = v88;
    sub_1BA369930(v80 + v87);
    *(v80 + v82[5]) = v77;
    *(v80 + v82[6]) = v111;
    v89 = v80 + v82[8];
    v90 = v108;
    *v89 = v109;
    *(v89 + 16) = v90;
    *(v89 + 32) = v86;

    v112 = sub_1BA369660();
    v113 = v91;
    MEMORY[0x1BFAF1350](0x656761726576612ELL, 0xEC000000656E694CLL);
    sub_1B9F48334(qword_1EDC673F8, type metadata accessor for SnidgetSwiftChartView.AverageLine);
    v92 = v99;
    sub_1BA4A4928();

    sub_1B9F617A8(v80, type metadata accessor for SnidgetSwiftChartView.AverageLine);
    v76 = v103;
    v74 = v105;
    v93 = v104;
    (*(v103 + 32))(v105, v92, v104);
    v75 = v93;
    v73 = 0;
    goto LABEL_16;
  }

LABEL_14:
  v73 = 1;
  v74 = v105;
  v75 = v104;
  v76 = v103;
LABEL_16:
  (*(v76 + 56))(v74, v73, 1, v75);
  v94 = v110;
  v95 = v102;
  sub_1B9F63EF0(v110, v102, sub_1B9F56E14);
  sub_1B9F64138(v74, v68, sub_1B9F56ECC);
  sub_1B9F57238();
  sub_1B9F63EF0(v95, v67, sub_1B9F56E14);
  sub_1B9F579CC();
  v96 = *(v66 + 48);
  sub_1B9F64138(v68, v67 + v96, sub_1B9F56ECC);
  sub_1B9F6307C(v67, v65, sub_1B9F56E14);
  sub_1B9F643C4(v67 + v96, v65 + *(v66 + 48), sub_1B9F56ECC);
  sub_1B9F6442C(v74, sub_1B9F56ECC);
  sub_1B9F617A8(v94, sub_1B9F56E14);
  sub_1B9F6442C(v68, sub_1B9F56ECC);
  return sub_1B9F617A8(v95, sub_1B9F56E14);
}

uint64_t sub_1B9F63E74(uint64_t a1, uint64_t a2)
{
  sub_1B9F0CDE8(0, &qword_1EDC6E1A0, &qword_1EDC6E1B0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B9F63EF0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_1B9F63F58(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1B9F63FA8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1B9F63FF8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1B9F64048(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1B9F64098(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1B9F640E8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1B9F64138(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B9F641A0(uint64_t a1, uint64_t a2)
{
  v5 = sub_1BA4A4018();
  MEMORY[0x1EEE9AC00](v5);
  v6 = &v2[OBJC_IVAR____TtC18HealthExperienceUI28ContentConfigurationHostCell_baseIdentifier];
  swift_beginAccess();
  *v6 = a1;
  *(v6 + 1) = a2;

  if (a2)
  {

    v8 = sub_1BA4A6758();
    [v2 setAccessibilityIdentifier_];

    sub_1BA4A76D8();
    sub_1B9F5B584();
    sub_1BA4A4008();
    return sub_1BA4A76E8();
  }

  return result;
}

uint64_t sub_1B9F642EC(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t))
{
  sub_1B9F54DF4(0, a3, a4, a5, MEMORY[0x1E697E830]);
  (*(*(v7 - 8) + 32))(a2, a1, v7);
  return a2;
}

uint64_t sub_1B9F64370()
{
  swift_beginAccess();
  v0 = qword_1EBBEF230;

  return v0;
}

uint64_t sub_1B9F643C4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B9F6442C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B9F6448C@<X0>(void *a1@<X8>)
{
  if (qword_1EDC631A8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = qword_1EDC631B8;
  *a1 = qword_1EDC631B0;
  a1[1] = v2;
}

uint64_t sub_1B9F6450C()
{
  result = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  qword_1EDC631B0 = result;
  qword_1EDC631B8 = v1;
  return result;
}

uint64_t FeedItem.pluginInfo.getter()
{
  v1 = sub_1BA4A3EA8();
  MEMORY[0x1EEE9AC00](v1);
  v10 = v0;
  sub_1BA4A27B8();
  sub_1B9F6496C();
  v2 = v0;
  if (swift_dynamicCast())
  {
    sub_1B9F1134C(v8, v11);
    v3 = v12;
    v4 = v13;
    __swift_project_boxed_opaque_existential_1(v11, v12);
    v5 = (*(v4 + 8))(v3, v4);
    __swift_destroy_boxed_opaque_existential_1(v11);
    return v5;
  }

  else
  {
    v9 = 0;
    memset(v8, 0, sizeof(v8));
    sub_1B9F64D78(v8);
    if (qword_1EDC6CBD0 != -1)
    {
      swift_once();
    }

    swift_beginAccess();

    v7 = [v2 pluginPackage];
    _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();

    sub_1BA4A3B78();

    type metadata accessor for UIPluginInfo();
    *(swift_allocObject() + qword_1EDC6DC48) = 1;
    return sub_1BA4A3AC8();
  }
}

uint64_t sub_1B9F6491C@<X0>(void *a1@<X8>)
{
  sub_1B9F64FA8();
  result = sub_1BA4A5748();
  *a1 = v3;
  return result;
}

unint64_t sub_1B9F6496C()
{
  result = qword_1EDC6D7F0;
  if (!qword_1EDC6D7F0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EDC6D7F0);
  }

  return result;
}

uint64_t sub_1B9F649D0@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for SnidgetSwiftChartViewModel(0);
  result = sub_1BA4A4D78();
  *a1 = result;
  return result;
}

uint64_t sub_1B9F64A24(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1BA4A0FA8();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_3:

    return v9(v10, a2, v8);
  }

  if (a2 == 0x7FFFFFFF)
  {
    v12 = *(a1 + a3[6]);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }

  else
  {
    v13 = sub_1BA4A1898();
    v14 = *(v13 - 8);
    if (*(v14 + 84) == a2)
    {
      v8 = v13;
      v9 = *(v14 + 48);
      v10 = a1 + a3[7];
      goto LABEL_3;
    }

    v15 = sub_1BA4A51B8();
    v16 = *(*(v15 - 8) + 48);
    v17 = a1 + a3[9];

    return v16(v17, a2, v15);
  }
}

void sub_1B9F64B98()
{
  if (!qword_1EDC6D7E8)
  {
    sub_1B9F6496C();
    v0 = sub_1BA4A7AA8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDC6D7E8);
    }
  }
}

uint64_t sub_1B9F64C04(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = sub_1BA4A0FA8();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_3:

    return v11(v12, a2, a2, v10);
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[6]) = (a2 - 1);
    return result;
  }

  v13 = sub_1BA4A1898();
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + a4[7];
    goto LABEL_3;
  }

  v15 = sub_1BA4A51B8();
  v16 = *(*(v15 - 8) + 56);
  v17 = a1 + a4[9];

  return v16(v17, a2, a2, v15);
}

uint64_t sub_1B9F64D78(uint64_t a1)
{
  sub_1B9F64B98();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1B9F64DD4()
{
  v0 = *MEMORY[0x1E696C858];
  v1 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v2 = v0;
  v3 = [v1 initWithSuiteName_];

  if (v3)
  {
    sub_1B9F64F44();
    swift_allocObject();
    qword_1EDC6CBD8 = sub_1BA4A3B98();
  }

  else
  {
    __break(1u);
  }
}