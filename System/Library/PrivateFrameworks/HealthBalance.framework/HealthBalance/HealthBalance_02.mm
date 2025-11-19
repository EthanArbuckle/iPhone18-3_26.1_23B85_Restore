uint64_t sub_1CFDD0B7C(void *a1, uint64_t a2)
{
  v75 = a2;
  sub_1CFDA7460();
  v74 = v3;
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v73 = &v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v72 = &v55 - v7;
  v71 = type metadata accessor for GregorianDayRange();
  v8 = *(*(v71 - 8) + 64);
  MEMORY[0x1EEE9AC00](v71);
  v81 = &v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = type metadata accessor for SleepingSampleDaySummary();
  v10 = *(v58 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](v58);
  v14 = &v55 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v55 - v15;
  v17 = type metadata accessor for SleepingSampleDaySummaryCollection();
  v69 = *(v17 - 8);
  v70 = v17;
  v18 = *(v69 + 64);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v68 = &v55 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v19);
  v82 = a1;
  v23 = a1[2];
  if (v23)
  {
    v24 = 0;
    v25 = 0;
    v56 = *(v10 + 80);
    v57 = (v56 + 32) & ~v56;
    v67 = v82 + v57;
    v26 = MEMORY[0x1E69E7CC0];
    v63 = -v23;
    v27 = 7;
    v62 = v10;
    v66 = &v55 - v22;
    v61 = v23;
    v64 = v14;
    v65 = v16;
    while (1)
    {
      v29 = v23 >= v27 ? v27 : v23;
      v28 = v24 + 7;
      if (__OFADD__(v24, 7))
      {
        break;
      }

      if (v23 >= v28)
      {
        v30 = v24 + 7;
      }

      else
      {
        v30 = v23;
      }

      if (v30 < v24)
      {
        goto LABEL_32;
      }

      if (v24 != v30)
      {
        if (v24 >= v30)
        {
          goto LABEL_33;
        }

        v77 = v24 + 7;
        v78 = v27;
        v79 = v24;
        v80 = v26;
        v83 = v25;
        v31 = *(v10 + 72);
        v32 = v67;
        v60 = &v67[v31 * v24];
        sub_1CFDA66E8(v60, v16, type metadata accessor for SleepingSampleDaySummary);
        v59 = v31;
        sub_1CFDA66E8(&v32[v31 * (v30 - 1)], v14, type metadata accessor for SleepingSampleDaySummary);
        v33 = sub_1CFE307E4();
        sub_1CFDA7718(&qword_1EDC32CA8, MEMORY[0x1E696B418]);

        result = sub_1CFE30874();
        if ((result & 1) == 0)
        {
          goto LABEL_34;
        }

        v76 = v29 + v83;
        v34 = *(v33 - 8);
        v35 = v34[2];
        v36 = v72;
        v35(v72, v16, v33);
        v37 = v74;
        v35((v36 + *(v74 + 48)), v14, v33);
        v38 = v73;
        sub_1CFDA66E8(v36, v73, sub_1CFDA7460);
        v39 = *(v37 + 48);
        v40 = v34[4];
        v41 = v81;
        v40(v81, v38, v33);
        v42 = v34[1];
        v42(v38 + v39, v33);
        sub_1CFDA64FC(v36, v38, sub_1CFDA7460);
        v43 = *(v37 + 48);
        sub_1CFDA68BC();
        v40(v41 + *(v44 + 36), v38 + v43, v33);
        v45 = v76;
        v42(v38, v33);
        v46 = *(v71 + 20);
        v47 = sub_1CFE304B4();
        (*(*(v47 - 8) + 16))(v41 + v46, v75 + v46, v47);
        if (v63 + v45)
        {
          v14 = v64;
          v16 = v65;
          v49 = v66;
          v26 = v80;
          if (v45 < 1)
          {
            v48 = MEMORY[0x1E69E7CC0];
          }

          else
          {
            sub_1CFDD1888();
            v53 = v57;
            v54 = v59;
            v48 = swift_allocObject();
            result = _swift_stdlib_malloc_size(v48);
            if (!v54)
            {
              goto LABEL_35;
            }

            if (result - v53 == 0x8000000000000000 && v54 == -1)
            {
              goto LABEL_36;
            }

            v48[2] = v45;
            v48[3] = 2 * ((result - v53) / v54);
          }

          swift_arrayInitWithCopy();
          sub_1CFDD1828(v14, type metadata accessor for SleepingSampleDaySummary);
          sub_1CFDD1828(v16, type metadata accessor for SleepingSampleDaySummary);
        }

        else
        {
          v14 = v64;
          sub_1CFDD1828(v64, type metadata accessor for SleepingSampleDaySummary);
          v16 = v65;
          sub_1CFDD1828(v65, type metadata accessor for SleepingSampleDaySummary);
          v48 = v82;
          v49 = v66;
          v26 = v80;
        }

        v50 = v68;
        sub_1CFDA64FC(v81, v68, type metadata accessor for GregorianDayRange);
        *(v50 + *(v70 + 20)) = v48;
        sub_1CFDA64FC(v50, v49, type metadata accessor for SleepingSampleDaySummaryCollection);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v26 = sub_1CFDDD564(0, v26[2] + 1, 1, v26);
        }

        v52 = v26[2];
        v51 = v26[3];
        if (v52 >= v51 >> 1)
        {
          v26 = sub_1CFDDD564(v51 > 1, v52 + 1, 1, v26);
        }

        v26[2] = v52 + 1;
        result = sub_1CFDA64FC(v49, v26 + ((*(v69 + 80) + 32) & ~*(v69 + 80)) + *(v69 + 72) * v52, type metadata accessor for SleepingSampleDaySummaryCollection);
        v10 = v62;
        v23 = v61;
        v27 = v78;
        v24 = v79;
        v25 = v83;
        v28 = v77;
      }

      v27 += 7;
      v25 -= 7;
      v24 += 7;
      if (v28 >= v23)
      {
        return v26;
      }
    }

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
  }

  else
  {
    return MEMORY[0x1E69E7CC0];
  }

  return result;
}

uint64_t SleepingSampleDaySummaryCollectionQuery.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

id sub_1CFDD1378(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  sub_1CFDD1748();
  v10 = v9;
  v11 = objc_allocWithZone(v9);
  v12 = &v11[qword_1EDC32800];
  *v12 = 0;
  v12[1] = 0;
  *&v11[qword_1EDC327F0] = MEMORY[0x1E69E7CC0];
  v13 = &v11[qword_1EDC36C30];
  *v13 = 0;
  v13[1] = 0;
  sub_1CFDA66E8(a1, &v11[qword_1EDC36C20], sub_1CFDA68BC);
  v14 = qword_1EDC36C28;
  v15 = sub_1CFE304B4();
  v16 = *(v15 - 8);
  (*(v16 + 16))(&v11[v14], a2, v15);
  v11[qword_1EDC36C18] = a3;
  *v12 = a4;
  v12[1] = a5;
  sub_1CFDD17DC();

  v17 = sub_1CFE30A74();
  v21.receiver = v11;
  v21.super_class = v10;
  v18 = objc_msgSendSuper2(&v21, sel_initWithQueryDescriptors_, v17);

  (*(v16 + 8))(a2, v15);
  sub_1CFDD1828(a1, sub_1CFDA68BC);
  return v18;
}

uint64_t sub_1CFDD1540(void *a1)
{
  v3 = *(type metadata accessor for GregorianDayRange() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_1CFDD0B7C(a1, v4);
}

uint64_t objectdestroy_2Tm()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1CFDD15F0(uint64_t a1, uint64_t a2, char a3)
{
  v5 = *(v3 + 16);
  v4 = *(v3 + 24);
  if (a3)
  {
    v6 = *(v3 + 24);
    return v5(a1, a2, 1);
  }

  else
  {
    v8 = *(v3 + 40);
    v10 = (*(v3 + 32))(a2);
    v5(a1, v10, 0);
  }
}

unint64_t sub_1CFDD1694()
{
  result = qword_1EC509770;
  if (!qword_1EC509770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC509770);
  }

  return result;
}

void sub_1CFDD1748()
{
  if (!qword_1EDC31F48)
  {
    type metadata accessor for SleepingSampleDaySummary();
    sub_1CFDA7718(&qword_1EDC32028, type metadata accessor for SleepingSampleDaySummary);
    v0 = type metadata accessor for SleepingSampleDaySummaryQuery();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDC31F48);
    }
  }
}

unint64_t sub_1CFDD17DC()
{
  result = qword_1EDC320C0;
  if (!qword_1EDC320C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDC320C0);
  }

  return result;
}

uint64_t sub_1CFDD1828(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1CFDD1888()
{
  if (!qword_1EDC31720)
  {
    type metadata accessor for SleepingSampleDaySummary();
    v0 = sub_1CFE31084();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDC31720);
    }
  }
}

uint64_t TrainingLoadAcuteBaseline.quantity.getter()
{
  v1 = v0;
  sub_1CFDAD280();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFDD1A0C(v1, v5);
  sub_1CFDAC3A0(0);
  v7 = v6;
  v8 = *(v6 - 8);
  if ((*(v8 + 48))(v5, 1, v6) == 1)
  {
    sub_1CFDB3504(v5, sub_1CFDAD280);
    return 0;
  }

  else
  {
    v10 = sub_1CFE30684();
    (*(v8 + 8))(v5, v7);
    return v10;
  }
}

uint64_t sub_1CFDD1A0C(uint64_t a1, uint64_t a2)
{
  sub_1CFDAD280();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1CFDD1A98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x797469746E617571 && a2 == 0xEF72657070617257)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1CFE310B4();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1CFDD1B28(uint64_t a1)
{
  v2 = sub_1CFDB7B60();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CFDD1B64(uint64_t a1)
{
  v2 = sub_1CFDB7B60();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t TrainingLoadAcuteBaseline.encode(to:)(void *a1)
{
  sub_1CFDB7AFC(0, &qword_1EDC31788, MEMORY[0x1E69E6F58]);
  v3 = v2;
  v4 = *(v2 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v7 = &v10 - v6;
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CFDB7B60();
  sub_1CFE311A4();
  sub_1CFDAC3A0(0);
  sub_1CFDB7CC0(&unk_1EDC318E8, sub_1CFDAC3A0);
  sub_1CFE31014();
  return (*(v4 + 8))(v7, v3);
}

uint64_t TrainingLoadAcuteBaseline.hash(into:)()
{
  sub_1CFDAC3A0(0);
  v2 = v1;
  v3 = *(v1 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFDAD280();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFDD1A0C(v0, v10);
  if ((*(v3 + 48))(v10, 1, v2) == 1)
  {
    return sub_1CFE31164();
  }

  (*(v3 + 32))(v6, v10, v2);
  sub_1CFE31164();
  sub_1CFDD2D54(&qword_1EC509608, sub_1CFDD2B78);
  sub_1CFE30834();
  return (*(v3 + 8))(v6, v2);
}

uint64_t TrainingLoadAcuteBaseline.hashValue.getter()
{
  v1 = v0;
  sub_1CFDAC3A0(0);
  v3 = v2;
  v4 = *(v2 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFDAD280();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFE31144();
  sub_1CFDD1A0C(v1, v11);
  if ((*(v4 + 48))(v11, 1, v3) == 1)
  {
    sub_1CFE31164();
  }

  else
  {
    (*(v4 + 32))(v7, v11, v3);
    sub_1CFE31164();
    sub_1CFDD2D54(&qword_1EC509608, sub_1CFDD2B78);
    sub_1CFE30834();
    (*(v4 + 8))(v7, v3);
  }

  return sub_1CFE31184();
}

uint64_t TrainingLoadAcuteBaseline.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  sub_1CFDAD280();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFDB7AFC(0, &qword_1EDC31A48, MEMORY[0x1E69E6F48]);
  v9 = v8;
  v22 = *(v8 - 8);
  v10 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v21 - v11;
  AcuteBaseline = type metadata accessor for TrainingLoadAcuteBaseline();
  v14 = *(*(AcuteBaseline - 8) + 64);
  MEMORY[0x1EEE9AC00](AcuteBaseline - 8);
  v16 = &v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CFDB7B60();
  sub_1CFE31194();
  if (!v2)
  {
    v18 = v22;
    v19 = v23;
    sub_1CFDAC3A0(0);
    sub_1CFDB7CC0(&unk_1EDC32118, sub_1CFDAC3A0);
    sub_1CFE30F94();
    (*(v18 + 8))(v12, v9);
    sub_1CFDAD4FC(v7, v16, sub_1CFDAD280);
    sub_1CFDAD4FC(v16, v19, type metadata accessor for TrainingLoadAcuteBaseline);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1CFDD235C()
{
  sub_1CFDAC3A0(0);
  v2 = v1;
  v3 = *(v1 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFDAD280();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFDD1A0C(v0, v10);
  if ((*(v3 + 48))(v10, 1, v2) == 1)
  {
    return sub_1CFE31164();
  }

  (*(v3 + 32))(v6, v10, v2);
  sub_1CFE31164();
  sub_1CFDD2D54(&qword_1EC509608, sub_1CFDD2B78);
  sub_1CFE30834();
  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_1CFDD2518()
{
  v1 = v0;
  sub_1CFDAC3A0(0);
  v3 = v2;
  v4 = *(v2 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFDAD280();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFE31144();
  sub_1CFDD1A0C(v1, v11);
  if ((*(v4 + 48))(v11, 1, v3) == 1)
  {
    sub_1CFE31164();
  }

  else
  {
    (*(v4 + 32))(v7, v11, v3);
    sub_1CFE31164();
    sub_1CFDD2D54(&qword_1EC509608, sub_1CFDD2B78);
    sub_1CFE30834();
    (*(v4 + 8))(v7, v3);
  }

  return sub_1CFE31184();
}

unint64_t TrainingLoadAcuteBaseline.description.getter()
{
  v1 = v0;
  sub_1CFDAD280();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = 0xD000000000000024;
  v16 = 0x80000001CFE38DF0;
  sub_1CFDD1A0C(v1, v5);
  sub_1CFDAC3A0(0);
  v7 = v6;
  v8 = *(v6 - 8);
  if ((*(v8 + 48))(v5, 1, v6) == 1)
  {
    sub_1CFDB3504(v5, sub_1CFDAD280);
    v9 = 0xE300000000000000;
    v10 = 7104878;
  }

  else
  {
    v11 = sub_1CFE30684();
    (*(v8 + 8))(v5, v7);
    v14[1] = v11;
    sub_1CFDAD5CC();
    v10 = sub_1CFE30944();
    v9 = v12;
  }

  MEMORY[0x1D3876060](v10, v9);

  return v15;
}

BOOL _s13HealthBalance25TrainingLoadAcuteBaselineV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  sub_1CFDAC3A0(0);
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFDAD280();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFDD2CF0();
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x1EEE9AC00](v14 - 8);
  v18 = &v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(v16 + 56);
  sub_1CFDD1A0C(a1, v18);
  sub_1CFDD1A0C(a2, &v18[v19]);
  v20 = *(v6 + 48);
  if (v20(v18, 1, v5) != 1)
  {
    sub_1CFDD1A0C(v18, v13);
    if (v20(&v18[v19], 1, v5) != 1)
    {
      (*(v6 + 32))(v9, &v18[v19], v5);
      sub_1CFDD2D54(&qword_1EDC318E0, sub_1CFDD2DC0);
      v22 = sub_1CFE308B4();
      v23 = *(v6 + 8);
      v23(v9, v5);
      v23(v13, v5);
      sub_1CFDB3504(v18, sub_1CFDAD280);
      return (v22 & 1) != 0;
    }

    (*(v6 + 8))(v13, v5);
LABEL_6:
    sub_1CFDB3504(v18, sub_1CFDD2CF0);
    return 0;
  }

  if (v20(&v18[v19], 1, v5) != 1)
  {
    goto LABEL_6;
  }

  sub_1CFDB3504(v18, sub_1CFDAD280);
  return 1;
}

void sub_1CFDD2C1C()
{
  sub_1CFDAD280();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

unint64_t sub_1CFDD2C9C()
{
  result = qword_1EC509780;
  if (!qword_1EC509780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC509780);
  }

  return result;
}

void sub_1CFDD2CF0()
{
  if (!qword_1EDC318D8)
  {
    sub_1CFDAD280();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDC318D8);
    }
  }
}

uint64_t sub_1CFDD2D54(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1CFDAC3A0(255);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t String.init<A>(describingOptional:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  v9[2] = a2;
  v9[3] = sub_1CFDD3268;
  v9[4] = v4;
  v5 = sub_1CFE30C74();
  sub_1CFDD2F08(sub_1CFDD3270, v9, MEMORY[0x1E69E73E0], MEMORY[0x1E69E6158], v6, v10);

  if (v10[1])
  {
    v7 = v10[0];
  }

  else
  {
    v7 = 7104878;
  }

  (*(*(v5 - 8) + 8))(a1, v5);
  return v7;
}

uint64_t sub_1CFDD2F08@<X0>(void (*a1)(char *, char *)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X6>, uint64_t a6@<X8>)
{
  v30 = a5;
  v31 = a2;
  v32 = a1;
  v29 = *(a3 - 8);
  v10 = *(v29 + 64);
  v11 = (MEMORY[0x1EEE9AC00])();
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v14 + 16);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x1EEE9AC00](v11);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18);
  v24 = &v28 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v25 + 16))(v24, v26);
  if ((*(v16 + 48))(v24, 1, v15) == 1)
  {
    return (*(*(a4 - 8) + 56))(a6, 1, 1, a4);
  }

  (*(v16 + 32))(v20, v24, v15);
  v32(v20, v13);
  result = (*(v16 + 8))(v20, v15);
  if (v6)
  {
    return (*(v29 + 32))(v30, v13, a3);
  }

  return result;
}

uint64_t sub_1CFDD31B0(uint64_t a1, uint64_t a2)
{
  v2 = *(*(a2 - 8) + 64);
  MEMORY[0x1EEE9AC00](a1);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  return sub_1CFE30944();
}

uint64_t sub_1CFDD3270@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  result = v3();
  *a1 = result;
  a1[1] = v6;
  return result;
}

uint64_t static TrainingLoadDataType.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  v3 = (*a1 == *a2) & ~v2;
  if (*a2)
  {
    v4 = *(a2 + 8);
  }

  else
  {
    v4 = 0;
  }

  if (*a2)
  {
    v2 = 0;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = v2;
  }

  if (*(a1 + 8) == 1)
  {
    return v5;
  }

  else
  {
    return v3;
  }
}

uint64_t TrainingLoadDataType.hash(into:)()
{
  v1 = *v0;
  if (*(v0 + 8) == 1)
  {
    v1 = v1 != 0;
  }

  else
  {
    MEMORY[0x1D3876810](2);
  }

  return MEMORY[0x1D3876810](v1);
}

uint64_t TrainingLoadDataType.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_1CFE31144();
  if (v2 == 1)
  {
    v1 = v1 != 0;
  }

  else
  {
    MEMORY[0x1D3876810](2);
  }

  MEMORY[0x1D3876810](v1);
  return sub_1CFE31184();
}

uint64_t sub_1CFDD33A8()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_1CFE31144();
  if (v2 == 1)
  {
    v1 = v1 != 0;
  }

  else
  {
    MEMORY[0x1D3876810](2);
  }

  MEMORY[0x1D3876810](v1);
  return sub_1CFE31184();
}

uint64_t sub_1CFDD3414()
{
  v1 = *v0;
  if (*(v0 + 8) == 1)
  {
    v1 = v1 != 0;
  }

  else
  {
    MEMORY[0x1D3876810](2);
  }

  return MEMORY[0x1D3876810](v1);
}

uint64_t sub_1CFDD3464()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_1CFE31144();
  if (v2 == 1)
  {
    v1 = v1 != 0;
  }

  else
  {
    MEMORY[0x1D3876810](2);
  }

  MEMORY[0x1D3876810](v1);
  return sub_1CFE31184();
}

uint64_t sub_1CFDD34CC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  v3 = (*a1 == *a2) & ~v2;
  if (*a2)
  {
    v4 = *(a2 + 8);
  }

  else
  {
    v4 = 0;
  }

  if (*a2)
  {
    v2 = 0;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = v2;
  }

  if (*(a1 + 8) == 1)
  {
    return v5;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_1CFDD350C()
{
  result = qword_1EC509788;
  if (!qword_1EC509788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC509788);
  }

  return result;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for TrainingLoadDataType(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for TrainingLoadDataType(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 1;
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

  *(result + 9) = v3;
  return result;
}

uint64_t sub_1CFDD35C4(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1CFDD35F0()
{
  v0 = sub_1CFE30624();
  __swift_allocate_value_buffer(v0, qword_1EDC32578);
  __swift_project_value_buffer(v0, qword_1EDC32578);
  return sub_1CFE30614();
}

unint64_t sub_1CFDD36C0()
{
  result = qword_1EDC31810;
  if (!qword_1EDC31810)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDC31810);
  }

  return result;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

uint64_t SleepingSampleDaySummaryCollection.init(gregorianDayRange:daySummaries:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1CFDA6564(a1, a3, type metadata accessor for GregorianDayRange);
  result = type metadata accessor for SleepingSampleDaySummaryCollection();
  *(a3 + *(result + 20)) = a2;
  return result;
}

uint64_t sub_1CFDD37FC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GregorianDayRange();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1CFDD388C(uint64_t a1, uint64_t a2)
{
  sub_1CFDA74C8(0, &qword_1EDC32CA0, MEMORY[0x1E69E5F90]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t SleepingSampleDaySummaryCollection.daySummaries.getter()
{
  v1 = *(v0 + *(type metadata accessor for SleepingSampleDaySummaryCollection() + 20));
}

uint64_t SleepingSampleDaySummaryCollection.daySummaries.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SleepingSampleDaySummaryCollection() + 20);
  v4 = *(v1 + v3);

  *(v1 + v3) = a1;
  return result;
}

uint64_t static SleepingSampleDaySummaryCollection.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  sub_1CFE307E4();
  sub_1CFDA7760(&qword_1EDC31AB0, MEMORY[0x1E696B418]);
  if ((sub_1CFE308B4() & 1) == 0)
  {
    return 0;
  }

  sub_1CFDA74C8(0, &qword_1EDC32CA0, MEMORY[0x1E69E5F90]);
  v5 = *(v4 + 36);
  if ((sub_1CFE308B4() & 1) == 0)
  {
    return 0;
  }

  v6 = type metadata accessor for GregorianDayRange();
  if ((MEMORY[0x1D3875B20](a1 + *(v6 + 20), a2 + *(v6 + 20)) & 1) == 0)
  {
    return 0;
  }

  v7 = *(type metadata accessor for SleepingSampleDaySummaryCollection() + 20);
  v8 = *(a1 + v7);
  v9 = *(a2 + v7);

  return sub_1CFDD42B8(v8, v9);
}

uint64_t sub_1CFDD3AE4(uint64_t a1, uint64_t a2)
{
  sub_1CFDAC3A0(0);
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v67 = &v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFDA9784(0, &qword_1EDC32CB0, sub_1CFDAC3A0, MEMORY[0x1E69E6720]);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v70 = &v57 - v11;
  sub_1CFDD6E38(0, &qword_1EDC318D8, &qword_1EDC32CB0, sub_1CFDAC3A0);
  v13 = v12;
  v14 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v57 - v15;
  SampleDaySummary = type metadata accessor for TrainingLoadSampleDaySummary();
  v17 = *(SampleDaySummary - 1);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x1EEE9AC00](SampleDaySummary);
  v21 = &v57 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v57 - v22;
  v24 = *(a1 + 16);
  if (v24 != *(a2 + 16))
  {
    return 0;
  }

  if (v24 && a1 != a2)
  {
    v64 = v13;
    v65 = v5;
    v25 = (*(v17 + 80) + 32) & ~*(v17 + 80);
    v26 = a1 + v25;
    v27 = a2 + v25;
    v71 = sub_1CFE307E4();
    v58 = (v6 + 32);
    v59 = (v6 + 8);
    v62 = *(v17 + 72);
    v63 = (v6 + 48);
    v28 = &qword_1EDC32CB0;
    while (1)
    {
      sub_1CFDA6750(v26, v23, type metadata accessor for TrainingLoadSampleDaySummary);
      v68 = v27;
      v69 = v26;
      sub_1CFDA6750(v27, v21, type metadata accessor for TrainingLoadSampleDaySummary);
      sub_1CFDA7760(&qword_1EDC31AB0, MEMORY[0x1E696B418]);
      if ((sub_1CFE308B4() & 1) == 0)
      {
        break;
      }

      v29 = SampleDaySummary[5];
      if ((sub_1CFE308B4() & 1) == 0)
      {
        break;
      }

      sub_1CFDA74C8(0, &qword_1EDC32C90, MEMORY[0x1E69E66A8]);
      v31 = *(v30 + 36);
      if ((sub_1CFE308B4() & 1) == 0)
      {
        break;
      }

      v32 = SampleDaySummary[6];
      v33 = &v23[v32];
      v34 = v23[v32 + 8];
      v35 = &v21[v32];
      v36 = v21[v32 + 8];
      if (v34)
      {
        if (!v36)
        {
          break;
        }
      }

      else
      {
        if (*v33 != *v35)
        {
          LOBYTE(v36) = 1;
        }

        if (v36)
        {
          break;
        }
      }

      v37 = SampleDaySummary[7];
      v38 = v23[v37];
      v39 = v21[v37];
      if (v38 == 5)
      {
        if (v39 != 5)
        {
          break;
        }
      }

      else if (v38 != v39)
      {
        break;
      }

      v40 = SampleDaySummary[8];
      v41 = &v21[v40];
      v42 = *(v64 + 48);
      v66 = &v23[v40];
      sub_1CFDB33BC(&v23[v40], v16, v28, sub_1CFDAC3A0);
      sub_1CFDB33BC(v41, &v16[v42], v28, sub_1CFDAC3A0);
      v43 = v28;
      v44 = *v63;
      v45 = v65;
      if ((*v63)(v16, 1, v65) == 1)
      {
        if (v44(&v16[v42], 1, v45) != 1)
        {
          goto LABEL_32;
        }

        sub_1CFDB3564(v16, v28, sub_1CFDAC3A0);
        v46 = v66;
      }

      else
      {
        v61 = v41;
        v47 = v70;
        sub_1CFDB33BC(v16, v70, v28, sub_1CFDAC3A0);
        if (v44(&v16[v42], 1, v45) == 1)
        {
          (*v59)(v47, v45);
LABEL_32:
          sub_1CFDD6C68(v16, &qword_1EDC318D8, &qword_1EDC32CB0, sub_1CFDAC3A0);
          break;
        }

        v48 = v67;
        (*v58)(v67, &v16[v42], v45);
        sub_1CFDD6CC4();
        v60 = sub_1CFE308B4();
        v49 = *v59;
        (*v59)(v48, v45);
        v49(v70, v45);
        sub_1CFDB3564(v16, v43, sub_1CFDAC3A0);
        v28 = v43;
        v41 = v61;
        v46 = v66;
        if ((v60 & 1) == 0)
        {
          break;
        }
      }

      BaselineComparison = type metadata accessor for TrainingLoadBaselineComparison();
      if ((static TrainingLoadChronicBaseline.== infix(_:_:)(&v46[*(BaselineComparison + 20)], v41 + *(BaselineComparison + 20)) & 1) == 0)
      {
        break;
      }

      v51 = *(BaselineComparison + 24);
      v52 = &v46[v51];
      v53 = v46[v51 + 8];
      v54 = v41 + v51;
      v55 = *(v54 + 8);
      if ((v53 & 1) == 0)
      {
        if (v55)
        {
          break;
        }

        v55 = *v52 == *v54;
      }

      sub_1CFDD6C08(v21, type metadata accessor for TrainingLoadSampleDaySummary);
      sub_1CFDD6C08(v23, type metadata accessor for TrainingLoadSampleDaySummary);
      if (v55)
      {
        v27 = v68 + v62;
        v26 = v69 + v62;
        if (--v24)
        {
          continue;
        }
      }

      return v55;
    }

    sub_1CFDD6C08(v21, type metadata accessor for TrainingLoadSampleDaySummary);
    sub_1CFDD6C08(v23, type metadata accessor for TrainingLoadSampleDaySummary);
    return 0;
  }

  return 1;
}

uint64_t sub_1CFDD41D4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 32);
    v4 = (a2 + 32);
    do
    {
      v5 = *v3;
      v6 = *v4;
      v7 = sub_1CFE30924();
      v9 = v8;
      if (v7 == sub_1CFE30924() && v9 == v10)
      {
      }

      else
      {
        v12 = sub_1CFE310B4();

        if ((v12 & 1) == 0)
        {
          return 0;
        }
      }

      ++v3;
      ++v4;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t sub_1CFDD42B8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SleepingSampleBaseline();
  v5 = *(v4 - 1);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v180 = &v164 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v184 = &v164 - v10;
  v11 = MEMORY[0x1EEE9AC00](v9);
  v186 = &v164 - v12;
  v13 = MEMORY[0x1EEE9AC00](v11);
  v190 = &v164 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v192 = &v164 - v15;
  v16 = MEMORY[0x1E69E6720];
  sub_1CFDA9784(0, qword_1EDC32C28, type metadata accessor for SleepingSampleBaseline, MEMORY[0x1E69E6720]);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x1EEE9AC00](v17 - 8);
  v176 = &v164 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v23 = &v164 - v22;
  v24 = MEMORY[0x1EEE9AC00](v21);
  v177 = &v164 - v25;
  v26 = MEMORY[0x1EEE9AC00](v24);
  v178 = &v164 - v27;
  MEMORY[0x1EEE9AC00](v26);
  v179 = &v164 - v28;
  sub_1CFDD6E38(0, &qword_1EDC31968, qword_1EDC32C28, type metadata accessor for SleepingSampleBaseline);
  v194 = v29;
  v30 = *(*(v29 - 8) + 64);
  v31 = MEMORY[0x1EEE9AC00](v29);
  v183 = &v164 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = MEMORY[0x1EEE9AC00](v31);
  v185 = &v164 - v34;
  v35 = MEMORY[0x1EEE9AC00](v33);
  v187 = &v164 - v36;
  v37 = MEMORY[0x1EEE9AC00](v35);
  v191 = &v164 - v38;
  MEMORY[0x1EEE9AC00](v37);
  v193 = &v164 - v39;
  v189 = sub_1CFE30314();
  v40 = *(v189 - 8);
  v41 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v189);
  v181 = &v164 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = MEMORY[0x1E6969530];
  sub_1CFDA9784(0, &qword_1EDC32C70, MEMORY[0x1E6969530], v16);
  v45 = *(*(v44 - 8) + 64);
  MEMORY[0x1EEE9AC00](v44 - 8);
  v182 = &v164 - v46;
  sub_1CFDD6E38(0, &qword_1EDC31DF8, &qword_1EDC32C70, v43);
  v48 = v47;
  v49 = *(*(v47 - 8) + 64);
  MEMORY[0x1EEE9AC00](v47);
  v188 = &v164 - v50;
  v195 = type metadata accessor for SleepingSampleDaySummary();
  v51 = *(v195 - 1);
  v52 = *(v51 + 64);
  v53 = MEMORY[0x1EEE9AC00](v195);
  v196 = &v164 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v53);
  v56 = &v164 - v55;
  v57 = *(a1 + 16);
  if (v57 != *(a2 + 16))
  {
    return 0;
  }

  if (!v57 || a1 == a2)
  {
    return 1;
  }

  v58 = (*(v51 + 80) + 32) & ~*(v51 + 80);
  v59 = a1 + v58;
  v60 = a2 + v58;
  v172 = sub_1CFE307E4();
  v170 = (v40 + 48);
  v165 = (v40 + 32);
  v166 = (v40 + 8);
  v173 = (v5 + 48);
  v164 = *(v51 + 72);
  v171 = v48;
  while (1)
  {
    result = sub_1CFDA6750(v59, v56, type metadata accessor for SleepingSampleDaySummary);
    if (!v57)
    {
      break;
    }

    v169 = v59;
    v168 = v57;
    v167 = v60;
    sub_1CFDA6750(v60, v196, type metadata accessor for SleepingSampleDaySummary);
    sub_1CFDA7760(&qword_1EDC31AB0, MEMORY[0x1E696B418]);
    if ((sub_1CFE308B4() & 1) == 0)
    {
      goto LABEL_86;
    }

    v62 = v195[5];
    if ((sub_1CFE308B4() & 1) == 0)
    {
      goto LABEL_86;
    }

    sub_1CFDA74C8(0, &qword_1EDC32C90, MEMORY[0x1E69E66A8]);
    v64 = *(v63 + 36);
    if ((sub_1CFE308B4() & 1) == 0)
    {
      goto LABEL_86;
    }

    v65 = v195[6];
    v66 = *(v171 + 48);
    v67 = MEMORY[0x1E6969530];
    v68 = v188;
    sub_1CFDB33BC(&v56[v65], v188, &qword_1EDC32C70, MEMORY[0x1E6969530]);
    sub_1CFDB33BC(v196 + v65, v68 + v66, &qword_1EDC32C70, v67);
    v69 = *v170;
    v70 = v189;
    if ((*v170)(v68, 1, v189) == 1)
    {
      if (v69(v68 + v66, 1, v70) != 1)
      {
        goto LABEL_81;
      }

      sub_1CFDB3564(v68, &qword_1EDC32C70, MEMORY[0x1E6969530]);
      v71 = v173;
    }

    else
    {
      v72 = v182;
      sub_1CFDB33BC(v68, v182, &qword_1EDC32C70, MEMORY[0x1E6969530]);
      if (v69(v68 + v66, 1, v70) == 1)
      {
        (*v166)(v72, v70);
LABEL_81:
        v160 = &qword_1EDC31DF8;
        v161 = &qword_1EDC32C70;
        v162 = MEMORY[0x1E6969530];
        v163 = v68;
        goto LABEL_85;
      }

      v73 = v68 + v66;
      v74 = v68;
      v75 = v181;
      (*v165)(v181, v73, v70);
      sub_1CFDA7760(&qword_1EDC31998, MEMORY[0x1E6969530]);
      v76 = sub_1CFE308B4();
      v77 = *v166;
      (*v166)(v75, v70);
      v77(v72, v70);
      sub_1CFDB3564(v74, &qword_1EDC32C70, MEMORY[0x1E6969530]);
      v71 = v173;
      if ((v76 & 1) == 0)
      {
        goto LABEL_86;
      }
    }

    v78 = v195[7];
    v79 = &v56[v78];
    v80 = v56[v78 + 8];
    v81 = (v196 + v78);
    v82 = *(v196 + v78 + 8);
    if (v80)
    {
      if (!v82)
      {
        goto LABEL_86;
      }
    }

    else
    {
      if (*v79 != *v81)
      {
        LOBYTE(v82) = 1;
      }

      if (v82)
      {
        goto LABEL_86;
      }
    }

    v83 = v195[8];
    v84 = &v56[v83];
    v85 = v196 + v83;
    if ((static SleepingSampleAggregate.== infix(_:_:)(&v56[v83], v196 + v83) & 1) == 0)
    {
      goto LABEL_86;
    }

    v86 = type metadata accessor for SleepingSampleBaselineComparison();
    if ((static SleepingSampleBaselineAvailability.== infix(_:_:)(&v84[*(v86 + 20)], v85 + *(v86 + 20)) & 1) == 0)
    {
      goto LABEL_86;
    }

    v175 = v86;
    v87 = *(v86 + 24);
    v88 = *(v194 + 48);
    v89 = &v84[v87];
    v90 = v193;
    sub_1CFDB33BC(v89, v193, qword_1EDC32C28, type metadata accessor for SleepingSampleBaseline);
    sub_1CFDB33BC(v85 + v87, v90 + v88, qword_1EDC32C28, type metadata accessor for SleepingSampleBaseline);
    v91 = *v71;
    v92 = (*v71)(v90, 1, v4);
    v174 = v91;
    if (v92 == 1)
    {
      if (v91(v90 + v88, 1, v4) != 1)
      {
        goto LABEL_84;
      }

      sub_1CFDB3564(v90, qword_1EDC32C28, type metadata accessor for SleepingSampleBaseline);
      v93 = v175;
    }

    else
    {
      v94 = v23;
      v23 = v179;
      sub_1CFDB33BC(v90, v179, qword_1EDC32C28, type metadata accessor for SleepingSampleBaseline);
      if (v91(v90 + v88, 1, v4) == 1)
      {
        goto LABEL_75;
      }

      v95 = v192;
      sub_1CFDA6564(v90 + v88, v192, type metadata accessor for SleepingSampleBaseline);
      sub_1CFDA6E64(0, &qword_1EDC32C80, 0x1E696C348);
      sub_1CFDD6D54(&qword_1EDC31878, &qword_1EDC32C80, 0x1E696C348);
      if ((sub_1CFE30694() & 1) == 0 || (v96 = v4[5], sub_1CFDA6E64(0, &qword_1EDC32918, 0x1E696C350), sub_1CFDD6D54(&qword_1EDC31860, &qword_1EDC32918, 0x1E696C350), v95 = v192, (sub_1CFE30694() & 1) == 0) || (v97 = v4[6], (sub_1CFE30694() & 1) == 0))
      {
        sub_1CFDD6C08(v95, type metadata accessor for SleepingSampleBaseline);
        sub_1CFDD6C08(v23, type metadata accessor for SleepingSampleBaseline);
        v158 = v193;
        goto LABEL_79;
      }

      v98 = v4[7];
      v99 = sub_1CFE30694();
      sub_1CFDD6C08(v95, type metadata accessor for SleepingSampleBaseline);
      sub_1CFDD6C08(v23, type metadata accessor for SleepingSampleBaseline);
      sub_1CFDB3564(v193, qword_1EDC32C28, type metadata accessor for SleepingSampleBaseline);
      v23 = v94;
      v93 = v175;
      if ((v99 & 1) == 0)
      {
        goto LABEL_86;
      }
    }

    v100 = v195[9];
    v101 = &v56[v100];
    v102 = v196 + v100;
    if ((static SleepingSampleAggregate.== infix(_:_:)(&v56[v100], v196 + v100) & 1) == 0 || (static SleepingSampleBaselineAvailability.== infix(_:_:)(&v101[*(v93 + 5)], v102 + *(v93 + 5)) & 1) == 0)
    {
      goto LABEL_86;
    }

    v103 = *(v93 + 6);
    v104 = *(v194 + 48);
    v105 = &v101[v103];
    v90 = v191;
    sub_1CFDB33BC(v105, v191, qword_1EDC32C28, type metadata accessor for SleepingSampleBaseline);
    sub_1CFDB33BC(v102 + v103, v90 + v104, qword_1EDC32C28, type metadata accessor for SleepingSampleBaseline);
    v106 = v174;
    if (v174(v90, 1, v4) == 1)
    {
      if (v106(v90 + v104, 1, v4) != 1)
      {
        goto LABEL_84;
      }

      sub_1CFDB3564(v90, qword_1EDC32C28, type metadata accessor for SleepingSampleBaseline);
      v107 = v175;
    }

    else
    {
      v108 = v178;
      sub_1CFDB33BC(v90, v178, qword_1EDC32C28, type metadata accessor for SleepingSampleBaseline);
      if (v106(v90 + v104, 1, v4) == 1)
      {
        v159 = v108;
        goto LABEL_83;
      }

      v109 = v190;
      sub_1CFDA6564(v90 + v104, v190, type metadata accessor for SleepingSampleBaseline);
      sub_1CFDA6E64(0, &qword_1EDC32C80, 0x1E696C348);
      sub_1CFDD6D54(&qword_1EDC31878, &qword_1EDC32C80, 0x1E696C348);
      if ((sub_1CFE30694() & 1) == 0 || (v110 = v4[5], sub_1CFDA6E64(0, &qword_1EDC32918, 0x1E696C350), sub_1CFDD6D54(&qword_1EDC31860, &qword_1EDC32918, 0x1E696C350), v109 = v190, (sub_1CFE30694() & 1) == 0) || (v111 = v4[6], (sub_1CFE30694() & 1) == 0))
      {
        sub_1CFDD6C08(v109, type metadata accessor for SleepingSampleBaseline);
        sub_1CFDD6C08(v108, type metadata accessor for SleepingSampleBaseline);
        v158 = v191;
        goto LABEL_79;
      }

      v112 = v4[7];
      v113 = sub_1CFE30694();
      sub_1CFDD6C08(v109, type metadata accessor for SleepingSampleBaseline);
      sub_1CFDD6C08(v108, type metadata accessor for SleepingSampleBaseline);
      sub_1CFDB3564(v191, qword_1EDC32C28, type metadata accessor for SleepingSampleBaseline);
      v107 = v175;
      if ((v113 & 1) == 0)
      {
        goto LABEL_86;
      }
    }

    v114 = v195[10];
    v115 = &v56[v114];
    v116 = v196 + v114;
    if ((static SleepingSampleAggregate.== infix(_:_:)(&v56[v114], v196 + v114) & 1) == 0 || (static SleepingSampleBaselineAvailability.== infix(_:_:)(&v115[*(v107 + 5)], v116 + *(v107 + 5)) & 1) == 0)
    {
      goto LABEL_86;
    }

    v117 = *(v107 + 6);
    v118 = *(v194 + 48);
    v119 = &v115[v117];
    v90 = v187;
    sub_1CFDB33BC(v119, v187, qword_1EDC32C28, type metadata accessor for SleepingSampleBaseline);
    sub_1CFDB33BC(v116 + v117, v90 + v118, qword_1EDC32C28, type metadata accessor for SleepingSampleBaseline);
    v120 = v174;
    if (v174(v90, 1, v4) == 1)
    {
      if (v120(v90 + v118, 1, v4) != 1)
      {
        goto LABEL_84;
      }

      sub_1CFDB3564(v90, qword_1EDC32C28, type metadata accessor for SleepingSampleBaseline);
      v121 = v175;
    }

    else
    {
      v122 = v23;
      v23 = v177;
      sub_1CFDB33BC(v90, v177, qword_1EDC32C28, type metadata accessor for SleepingSampleBaseline);
      if (v120(v90 + v118, 1, v4) == 1)
      {
        goto LABEL_75;
      }

      v123 = v186;
      sub_1CFDA6564(v90 + v118, v186, type metadata accessor for SleepingSampleBaseline);
      sub_1CFDA6E64(0, &qword_1EDC32C80, 0x1E696C348);
      sub_1CFDD6D54(&qword_1EDC31878, &qword_1EDC32C80, 0x1E696C348);
      if ((sub_1CFE30694() & 1) == 0 || (v124 = v4[5], sub_1CFDA6E64(0, &qword_1EDC32918, 0x1E696C350), sub_1CFDD6D54(&qword_1EDC31860, &qword_1EDC32918, 0x1E696C350), v123 = v186, (sub_1CFE30694() & 1) == 0) || (v125 = v4[6], (sub_1CFE30694() & 1) == 0))
      {
        sub_1CFDD6C08(v123, type metadata accessor for SleepingSampleBaseline);
        sub_1CFDD6C08(v23, type metadata accessor for SleepingSampleBaseline);
        v158 = v187;
        goto LABEL_79;
      }

      v126 = v4[7];
      v127 = sub_1CFE30694();
      sub_1CFDD6C08(v123, type metadata accessor for SleepingSampleBaseline);
      sub_1CFDD6C08(v23, type metadata accessor for SleepingSampleBaseline);
      sub_1CFDB3564(v187, qword_1EDC32C28, type metadata accessor for SleepingSampleBaseline);
      v23 = v122;
      v121 = v175;
      if ((v127 & 1) == 0)
      {
        goto LABEL_86;
      }
    }

    v128 = v195[11];
    v129 = &v56[v128];
    v130 = v196 + v128;
    if ((static SleepingSampleAggregate.== infix(_:_:)(&v56[v128], v196 + v128) & 1) == 0 || (static SleepingSampleBaselineAvailability.== infix(_:_:)(&v129[*(v121 + 5)], v130 + *(v121 + 5)) & 1) == 0)
    {
      goto LABEL_86;
    }

    v131 = *(v121 + 6);
    v132 = *(v194 + 48);
    v133 = &v129[v131];
    v90 = v185;
    sub_1CFDB33BC(v133, v185, qword_1EDC32C28, type metadata accessor for SleepingSampleBaseline);
    sub_1CFDB33BC(v130 + v131, v90 + v132, qword_1EDC32C28, type metadata accessor for SleepingSampleBaseline);
    v134 = v174;
    if (v174(v90, 1, v4) == 1)
    {
      if (v134(v90 + v132, 1, v4) != 1)
      {
        goto LABEL_84;
      }

      sub_1CFDB3564(v90, qword_1EDC32C28, type metadata accessor for SleepingSampleBaseline);
      v135 = v175;
    }

    else
    {
      sub_1CFDB33BC(v90, v23, qword_1EDC32C28, type metadata accessor for SleepingSampleBaseline);
      v136 = v134(v90 + v132, 1, v4);
      v137 = v184;
      if (v136 == 1)
      {
LABEL_75:
        v159 = v23;
LABEL_83:
        sub_1CFDD6C08(v159, type metadata accessor for SleepingSampleBaseline);
LABEL_84:
        v160 = &qword_1EDC31968;
        v161 = qword_1EDC32C28;
        v162 = type metadata accessor for SleepingSampleBaseline;
        v163 = v90;
LABEL_85:
        sub_1CFDD6C68(v163, v160, v161, v162);
        goto LABEL_86;
      }

      sub_1CFDA6564(v90 + v132, v184, type metadata accessor for SleepingSampleBaseline);
      sub_1CFDA6E64(0, &qword_1EDC32C80, 0x1E696C348);
      sub_1CFDD6D54(&qword_1EDC31878, &qword_1EDC32C80, 0x1E696C348);
      if ((sub_1CFE30694() & 1) == 0 || (v138 = v4[5], sub_1CFDA6E64(0, &qword_1EDC32918, 0x1E696C350), sub_1CFDD6D54(&qword_1EDC31860, &qword_1EDC32918, 0x1E696C350), v137 = v184, (sub_1CFE30694() & 1) == 0) || (v139 = v4[6], (sub_1CFE30694() & 1) == 0))
      {
        sub_1CFDD6C08(v137, type metadata accessor for SleepingSampleBaseline);
        sub_1CFDD6C08(v23, type metadata accessor for SleepingSampleBaseline);
        v158 = v185;
        goto LABEL_79;
      }

      v140 = v4[7];
      v141 = sub_1CFE30694();
      sub_1CFDD6C08(v137, type metadata accessor for SleepingSampleBaseline);
      sub_1CFDD6C08(v23, type metadata accessor for SleepingSampleBaseline);
      sub_1CFDB3564(v185, qword_1EDC32C28, type metadata accessor for SleepingSampleBaseline);
      v135 = v175;
      if ((v141 & 1) == 0)
      {
        goto LABEL_86;
      }
    }

    v142 = v195[12];
    v143 = &v56[v142];
    v144 = v196 + v142;
    if ((static SleepingSampleAggregate.== infix(_:_:)(&v56[v142], v196 + v142) & 1) == 0 || (static SleepingSampleBaselineAvailability.== infix(_:_:)(&v143[*(v135 + 5)], v144 + *(v135 + 5)) & 1) == 0)
    {
      goto LABEL_86;
    }

    v145 = *(v135 + 6);
    v146 = *(v194 + 48);
    v147 = v183;
    sub_1CFDB33BC(&v143[v145], v183, qword_1EDC32C28, type metadata accessor for SleepingSampleBaseline);
    sub_1CFDB33BC(v144 + v145, v147 + v146, qword_1EDC32C28, type metadata accessor for SleepingSampleBaseline);
    v148 = v174;
    if (v174(v147, 1, v4) == 1)
    {
      v149 = v148(v147 + v146, 1, v4);
      v150 = v169;
      if (v149 != 1)
      {
        goto LABEL_89;
      }

      sub_1CFDB3564(v147, qword_1EDC32C28, type metadata accessor for SleepingSampleBaseline);
      sub_1CFDD6C08(v196, type metadata accessor for SleepingSampleDaySummary);
      sub_1CFDD6C08(v56, type metadata accessor for SleepingSampleDaySummary);
    }

    else
    {
      v175 = v23;
      v151 = v176;
      sub_1CFDB33BC(v147, v176, qword_1EDC32C28, type metadata accessor for SleepingSampleBaseline);
      if (v148(v147 + v146, 1, v4) == 1)
      {
        sub_1CFDD6C08(v151, type metadata accessor for SleepingSampleBaseline);
LABEL_89:
        v160 = &qword_1EDC31968;
        v161 = qword_1EDC32C28;
        v162 = type metadata accessor for SleepingSampleBaseline;
        v163 = v147;
        goto LABEL_85;
      }

      v152 = v180;
      sub_1CFDA6564(v147 + v146, v180, type metadata accessor for SleepingSampleBaseline);
      sub_1CFDA6E64(0, &qword_1EDC32C80, 0x1E696C348);
      v153 = v152;
      sub_1CFDD6D54(&qword_1EDC31878, &qword_1EDC32C80, 0x1E696C348);
      if ((sub_1CFE30694() & 1) == 0 || (v154 = v4[5], sub_1CFDA6E64(0, &qword_1EDC32918, 0x1E696C350), v153 = v180, sub_1CFDD6D54(&qword_1EDC31860, &qword_1EDC32918, 0x1E696C350), (sub_1CFE30694() & 1) == 0) || (v155 = v4[6], (sub_1CFE30694() & 1) == 0))
      {
        sub_1CFDD6C08(v153, type metadata accessor for SleepingSampleBaseline);
        sub_1CFDD6C08(v151, type metadata accessor for SleepingSampleBaseline);
        v158 = v183;
LABEL_79:
        sub_1CFDB3564(v158, qword_1EDC32C28, type metadata accessor for SleepingSampleBaseline);
LABEL_86:
        sub_1CFDD6C08(v196, type metadata accessor for SleepingSampleDaySummary);
        sub_1CFDD6C08(v56, type metadata accessor for SleepingSampleDaySummary);
        return 0;
      }

      v156 = v4[7];
      v157 = sub_1CFE30694();
      sub_1CFDD6C08(v153, type metadata accessor for SleepingSampleBaseline);
      sub_1CFDD6C08(v151, type metadata accessor for SleepingSampleBaseline);
      sub_1CFDB3564(v183, qword_1EDC32C28, type metadata accessor for SleepingSampleBaseline);
      sub_1CFDD6C08(v196, type metadata accessor for SleepingSampleDaySummary);
      sub_1CFDD6C08(v56, type metadata accessor for SleepingSampleDaySummary);
      v23 = v175;
      v150 = v169;
      if ((v157 & 1) == 0)
      {
        return 0;
      }
    }

    v60 = v167 + v164;
    v59 = v150 + v164;
    result = 1;
    v57 = v168 - 1;
    if (v168 == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1CFDD5D10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1CFE307E4();
  sub_1CFDA7760(&qword_1EDC31AB0, MEMORY[0x1E696B418]);
  if ((sub_1CFE308B4() & 1) == 0)
  {
    return 0;
  }

  sub_1CFDA74C8(0, &qword_1EDC32CA0, MEMORY[0x1E69E5F90]);
  v7 = *(v6 + 36);
  if ((sub_1CFE308B4() & 1) == 0)
  {
    return 0;
  }

  v8 = type metadata accessor for GregorianDayRange();
  if ((MEMORY[0x1D3875B20](a1 + *(v8 + 20), a2 + *(v8 + 20)) & 1) == 0)
  {
    return 0;
  }

  v9 = *(a3 + 20);
  v10 = *(a1 + v9);
  v11 = *(a2 + v9);

  return sub_1CFDD42B8(v10, v11);
}

uint64_t SleepingSampleDaySummaryCollection.baselineComparisons.getter()
{
  v21 = type metadata accessor for SleepingSampleDaySummary();
  v1 = *(v21 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + *(type metadata accessor for SleepingSampleDaySummaryCollection() + 20));
  v6 = *(v5 + 16);
  v7 = MEMORY[0x1E69E7CC0];
  if (v6)
  {
    v23 = MEMORY[0x1E69E7CC0];
    sub_1CFDC4818(0, v6, 0);
    v7 = v23;
    v8 = v5 + ((*(v1 + 80) + 32) & ~*(v1 + 80));
    v20 = *(v1 + 72);
    v19 = xmmword_1CFE33E10;
    do
    {
      v22 = v6;
      sub_1CFDA6750(v8, v4, type metadata accessor for SleepingSampleDaySummary);
      sub_1CFDA9784(0, &qword_1EDC32038, type metadata accessor for SleepingSampleBaselineComparison, MEMORY[0x1E69E6F90]);
      v9 = *(type metadata accessor for SleepingSampleBaselineComparison() - 8);
      v10 = *(v9 + 72);
      v11 = (*(v9 + 80) + 32) & ~*(v9 + 80);
      v12 = swift_allocObject();
      *(v12 + 16) = v19;
      v13 = v12 + v11;
      v14 = v21;
      sub_1CFDA6750(&v4[*(v21 + 32)], v13, type metadata accessor for SleepingSampleBaselineComparison);
      sub_1CFDA6750(&v4[v14[9]], v13 + v10, type metadata accessor for SleepingSampleBaselineComparison);
      sub_1CFDA6750(&v4[v14[10]], v13 + 2 * v10, type metadata accessor for SleepingSampleBaselineComparison);
      sub_1CFDA6750(&v4[v14[11]], v13 + 3 * v10, type metadata accessor for SleepingSampleBaselineComparison);
      sub_1CFDA6750(&v4[v14[12]], v13 + 4 * v10, type metadata accessor for SleepingSampleBaselineComparison);
      sub_1CFDD6C08(v4, type metadata accessor for SleepingSampleDaySummary);
      v23 = v7;
      v16 = *(v7 + 16);
      v15 = *(v7 + 24);
      if (v16 >= v15 >> 1)
      {
        sub_1CFDC4818((v15 > 1), v16 + 1, 1);
        v7 = v23;
      }

      *(v7 + 16) = v16 + 1;
      *(v7 + 8 * v16 + 32) = v12;
      v8 += v20;
      v6 = v22 - 1;
    }

    while (v22 != 1);
  }

  v17 = sub_1CFDD65EC(v7);

  return v17;
}

uint64_t SleepingSampleDaySummaryCollection.outOfRangeMetricCount.getter()
{
  v1 = type metadata accessor for SleepingSampleDaySummary();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = type metadata accessor for SleepingSampleDaySummaryCollection();
  v7 = *(v0 + *(result + 20));
  v8 = *(v7 + 16);
  if (v8)
  {
    v22 = MEMORY[0x1E69E7CC0];
    sub_1CFDC4838(0, v8, 0);
    v9 = v22;
    v10 = v7 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v11 = *(v2 + 72);
    do
    {
      v12 = sub_1CFDA6750(v10, v5, type metadata accessor for SleepingSampleDaySummary);
      v13 = SleepingSampleDaySummary.outOfRangeMetricCount.getter(v12);
      result = sub_1CFDD6C08(v5, type metadata accessor for SleepingSampleDaySummary);
      v22 = v9;
      v15 = *(v9 + 16);
      v14 = *(v9 + 24);
      v16 = v15 + 1;
      if (v15 >= v14 >> 1)
      {
        result = sub_1CFDC4838((v14 > 1), v15 + 1, 1);
        v9 = v22;
      }

      *(v9 + 16) = v16;
      *(v9 + 8 * v15 + 32) = v13;
      v10 += v11;
      --v8;
    }

    while (v8);
LABEL_8:
    v17 = 0;
    v18 = 32;
    while (1)
    {
      v19 = *(v9 + v18);
      v20 = __OFADD__(v17, v19);
      v17 += v19;
      if (v20)
      {
        break;
      }

      v18 += 8;
      if (!--v16)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
    return result;
  }

  v9 = MEMORY[0x1E69E7CC0];
  v16 = *(MEMORY[0x1E69E7CC0] + 16);
  if (v16)
  {
    goto LABEL_8;
  }

  v17 = 0;
LABEL_11:

  return v17;
}

uint64_t SleepingSampleDaySummaryCollection.baselineComparisons(for:)(unsigned __int8 *a1)
{
  v3 = type metadata accessor for SleepingSampleDaySummary();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for SleepingSampleBaselineComparison();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a1;
  v14 = *(v1 + *(type metadata accessor for SleepingSampleDaySummaryCollection() + 20));
  v15 = *(v14 + 16);
  v16 = MEMORY[0x1E69E7CC0];
  if (v15)
  {
    v28 = MEMORY[0x1E69E7CC0];
    sub_1CFDC4858(0, v15, 0);
    v16 = v28;
    v17 = v14 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v18 = *(v4 + 72);
    v26 = (v3 + 44);
    v27 = (v3 + 48);
    v25 = (v3 + 36);
    v23 = (v3 + 40);
    v24 = (v3 + 32);
    do
    {
      sub_1CFDA6750(v17, v7, type metadata accessor for SleepingSampleDaySummary);
      if (v13 <= 1)
      {
        v19 = v24;
        if (v13)
        {
          v19 = v23;
        }
      }

      else
      {
        v19 = v27;
        if (v13 == 3)
        {
          v19 = v26;
        }

        if (v13 == 2)
        {
          v19 = v25;
        }
      }

      sub_1CFDA6750(&v7[*v19], v12, type metadata accessor for SleepingSampleBaselineComparison);
      sub_1CFDD6C08(v7, type metadata accessor for SleepingSampleDaySummary);
      v28 = v16;
      v21 = *(v16 + 16);
      v20 = *(v16 + 24);
      if (v21 >= v20 >> 1)
      {
        sub_1CFDC4858(v20 > 1, v21 + 1, 1);
        v16 = v28;
      }

      *(v16 + 16) = v21 + 1;
      sub_1CFDA6564(v12, v16 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v21, type metadata accessor for SleepingSampleBaselineComparison);
      v17 += v18;
      --v15;
    }

    while (v15);
  }

  return v16;
}

uint64_t sub_1CFDD65EC(uint64_t a1)
{
  sub_1CFDA9784(0, &qword_1EDC31D38, type metadata accessor for SleepingSampleBaselineComparison, MEMORY[0x1E69E6720]);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x1EEE9AC00](v2 - 8);
  v6 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v52 = &v46 - v7;
  v8 = type metadata accessor for SleepingSampleBaselineComparison();
  v9 = *(*(v8 - 8) + 64);
  result = MEMORY[0x1EEE9AC00](v8);
  v53 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = 0;
  v55 = 0;
  v12 = 0;
  v48 = *(v13 + 80);
  v50 = v13;
  v51 = (v48 + 32) & ~v48;
  v56 = MEMORY[0x1E69E7CC0];
  v54 = MEMORY[0x1E69E7CC0] + v51;
  v14 = (v13 + 56);
  v49 = v13 + 48;
LABEL_4:
  v17 = *(a1 + 16);
  if (v12 != v17)
  {
    if (v12 < v17)
    {
      while (1)
      {
        v18 = *(a1 + 32 + 8 * v12);

        if (v18)
        {
          break;
        }

LABEL_9:
        ++v12;
        v19 = *(a1 + 16);
        if (v12 == v19)
        {
          goto LABEL_36;
        }

        if (v12 >= v19)
        {
          goto LABEL_41;
        }
      }

      v15 = *(v18 + 16);
      if (!v15)
      {
        (*v14)(v6, 1, 1, v8);
        result = sub_1CFDB3564(v6, &qword_1EDC31D38, type metadata accessor for SleepingSampleBaselineComparison);
        goto LABEL_9;
      }

      v16 = 0;
      ++v12;
      while (1)
      {
        v20 = v52;
        if (v16 >= v15)
        {
          goto LABEL_42;
        }

        v21 = v50;
        v22 = *(v50 + 72);
        v57 = v16;
        sub_1CFDA6750(v18 + v51 + v22 * v16, v6, type metadata accessor for SleepingSampleBaselineComparison);
        (*(v21 + 56))(v6, 0, 1, v8);
        sub_1CFDD6DA4(v6, v20);
        if ((*(v21 + 48))(v20, 1, v8) == 1)
        {
          goto LABEL_37;
        }

        result = sub_1CFDA6564(v20, v53, type metadata accessor for SleepingSampleBaselineComparison);
        v24 = v55;
        v23 = v56;
        if (!v55)
        {
          break;
        }

LABEL_34:
        v37 = __OFSUB__(v24, 1);
        v38 = v24 - 1;
        if (v37)
        {
          goto LABEL_43;
        }

        v55 = v38;
        ++v57;
        v39 = v23;
        v40 = v22;
        v41 = v54;
        result = sub_1CFDA6564(v53, v54, type metadata accessor for SleepingSampleBaselineComparison);
        v54 = v41 + v40;
        v56 = v39;
        v15 = *(v18 + 16);
        v16 = v57;
        if (v57 == v15)
        {
          (*v14)(v6, 1, 1, v8);
          result = sub_1CFDB3564(v6, &qword_1EDC31D38, type metadata accessor for SleepingSampleBaselineComparison);
          goto LABEL_4;
        }
      }

      v25 = v56[3];
      if (((v25 >> 1) + 0x4000000000000000) < 0)
      {
        goto LABEL_45;
      }

      v26 = v25 & 0xFFFFFFFFFFFFFFFELL;
      if (v26 <= 1)
      {
        v27 = 1;
      }

      else
      {
        v27 = v26;
      }

      sub_1CFDA9784(0, &qword_1EDC32038, type metadata accessor for SleepingSampleBaselineComparison, MEMORY[0x1E69E6F90]);
      v28 = v51;
      v55 = v27;
      v23 = swift_allocObject();
      result = _swift_stdlib_malloc_size(v23);
      if (!v22)
      {
        goto LABEL_46;
      }

      v29 = result - v28;
      if (result - v28 == 0x8000000000000000 && v22 == -1)
      {
        goto LABEL_47;
      }

      v31 = v28;
      v32 = v29 / v22;
      v33 = v56;
      v23[2] = v55;
      v23[3] = 2 * (v29 / v22);
      v34 = v23 + v28;
      v35 = *(v33 + 24) >> 1;
      v36 = v35 * v22;
      if (!*(v33 + 16))
      {
LABEL_33:
        v54 = v34 + v36;
        v24 = (v32 & 0x7FFFFFFFFFFFFFFFLL) - v35;

        goto LABEL_34;
      }

      if (v23 < v33 || v34 >= v33 + v31 + v36)
      {
        v54 = v34;
        v55 = v29 / v22;
        v47 = v35 * v22;
        swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        if (v23 == v56)
        {
LABEL_32:
          v56[2] = 0;
          goto LABEL_33;
        }

        v54 = v34;
        v55 = v29 / v22;
        v47 = v35 * v22;
        swift_arrayInitWithTakeBackToFront();
      }

      v36 = v47;
      v34 = v54;
      v32 = v55;
      goto LABEL_32;
    }

LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

LABEL_36:
  v20 = v52;
  (*v14)(v52, 1, 1, v8);
LABEL_37:
  v42 = v56;

  result = sub_1CFDB3564(v20, &qword_1EDC31D38, type metadata accessor for SleepingSampleBaselineComparison);
  v43 = v42[3];
  if (v43 < 2)
  {
    return v42;
  }

  v44 = v43 >> 1;
  v37 = __OFSUB__(v44, v55);
  v45 = v44 - v55;
  if (!v37)
  {
    v42[2] = v45;
    return v42;
  }

LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
  return result;
}

void sub_1CFDD6B54()
{
  type metadata accessor for GregorianDayRange();
  if (v0 <= 0x3F)
  {
    sub_1CFDA9784(319, &unk_1EDC32530, type metadata accessor for SleepingSampleDaySummary, MEMORY[0x1E69E62F8]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1CFDD6C08(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1CFDD6C68(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1CFDD6E38(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

unint64_t sub_1CFDD6CC4()
{
  result = qword_1EDC318E0;
  if (!qword_1EDC318E0)
  {
    sub_1CFDAC3A0(255);
    sub_1CFDD6D54(&qword_1EDC31878, &qword_1EDC32C80, 0x1E696C348);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC318E0);
  }

  return result;
}

uint64_t sub_1CFDD6D54(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1CFDA6E64(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1CFDD6DA4(uint64_t a1, uint64_t a2)
{
  sub_1CFDA9784(0, &qword_1EDC31D38, type metadata accessor for SleepingSampleBaselineComparison, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1CFDD6E38(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    sub_1CFDA9784(255, a3, a4, MEMORY[0x1E69E6720]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v6)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t TrainingLoadBaselineComparison.fractionalBaselineDifferenceFromChronic.getter()
{
  v1 = (v0 + *(type metadata accessor for TrainingLoadBaselineComparison() + 24));
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

uint64_t TrainingLoadBaselineComparison.fractionalBaselineDifferenceFromChronic.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for TrainingLoadBaselineComparison();
  v6 = v2 + *(result + 24);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t sub_1CFDD6FF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1CFDD7DEC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1CFDD7018(uint64_t a1)
{
  v2 = sub_1CFDB7828();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CFDD7054(uint64_t a1)
{
  v2 = sub_1CFDB7828();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t TrainingLoadBaselineComparison.hash(into:)()
{
  v1 = v0;
  sub_1CFDAC3A0(0);
  v3 = v2;
  v4 = *(v2 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFDAD280();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFDAC088(v1, v11, sub_1CFDAD280);
  if ((*(v4 + 48))(v11, 1, v3) == 1)
  {
    sub_1CFE31164();
  }

  else
  {
    (*(v4 + 32))(v7, v11, v3);
    sub_1CFE31164();
    sub_1CFDD7F1C(&qword_1EC509608, &qword_1EC509610);
    sub_1CFE30834();
    (*(v4 + 8))(v7, v3);
  }

  BaselineComparison = type metadata accessor for TrainingLoadBaselineComparison();
  v13 = v1 + *(BaselineComparison + 20);
  TrainingLoadChronicBaseline.hash(into:)();
  v14 = v1 + *(BaselineComparison + 24);
  if (*(v14 + 8) == 1)
  {
    return sub_1CFE31164();
  }

  v16 = *v14;
  sub_1CFE31164();
  if ((v16 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  return MEMORY[0x1D3876830](v17);
}

uint64_t TrainingLoadBaselineComparison.hashValue.getter()
{
  sub_1CFE31144();
  TrainingLoadBaselineComparison.hash(into:)();
  return sub_1CFE31184();
}

uint64_t TrainingLoadBaselineComparison.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  ChronicBaseline = type metadata accessor for TrainingLoadChronicBaseline();
  v3 = *(*(ChronicBaseline - 8) + 64);
  MEMORY[0x1EEE9AC00](ChronicBaseline);
  v5 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  AcuteBaseline = type metadata accessor for TrainingLoadAcuteBaseline();
  v7 = *(*(AcuteBaseline - 8) + 64);
  MEMORY[0x1EEE9AC00](AcuteBaseline);
  v36 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFDB77AC(0, &qword_1EDC31A18, MEMORY[0x1E69E6F48]);
  v37 = v9;
  v35 = *(v9 - 8);
  v10 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v32 - v11;
  BaselineComparison = type metadata accessor for TrainingLoadBaselineComparison();
  v14 = *(*(BaselineComparison - 8) + 64);
  MEMORY[0x1EEE9AC00](BaselineComparison);
  v16 = &v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CFDB7828();
  v38 = v12;
  v18 = v39;
  sub_1CFE31194();
  if (v18)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v39 = BaselineComparison;
  v19 = a1;
  v20 = v35;
  v21 = v16;
  v42 = 0;
  sub_1CFDB792C(qword_1EDC31D50, type metadata accessor for TrainingLoadAcuteBaseline);
  v22 = v36;
  v23 = v37;
  sub_1CFE30FD4();
  v24 = v22;
  v25 = v21;
  sub_1CFDD7BC0(v24, v21, type metadata accessor for TrainingLoadAcuteBaseline);
  v41 = 1;
  sub_1CFDB792C(&qword_1EDC31D48, type metadata accessor for TrainingLoadChronicBaseline);
  sub_1CFE30FD4();
  sub_1CFDD7BC0(v5, v21 + *(v39 + 20), type metadata accessor for TrainingLoadChronicBaseline);
  v40 = 2;
  v26 = v38;
  v27 = sub_1CFE30F84();
  LODWORD(v36) = v28;
  v29 = v27;
  v30 = v21 + *(v39 + 24);
  (*(v20 + 8))(v26, v23);
  *v30 = v29;
  *(v30 + 8) = v36 & 1;
  sub_1CFDAC088(v25, v33, type metadata accessor for TrainingLoadBaselineComparison);
  __swift_destroy_boxed_opaque_existential_1(v19);
  return sub_1CFDAC13C(v25, type metadata accessor for TrainingLoadBaselineComparison);
}

uint64_t sub_1CFDD77A8()
{
  sub_1CFE31144();
  TrainingLoadBaselineComparison.hash(into:)();
  return sub_1CFE31184();
}

uint64_t sub_1CFDD77EC()
{
  sub_1CFE31144();
  TrainingLoadBaselineComparison.hash(into:)();
  return sub_1CFE31184();
}

uint64_t _s13HealthBalance30TrainingLoadBaselineComparisonV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  sub_1CFDAC3A0(0);
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFDAD280();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFDD2CF0();
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x1EEE9AC00](v14 - 8);
  v18 = &v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(v16 + 56);
  sub_1CFDAC088(a1, v18, sub_1CFDAD280);
  sub_1CFDAC088(a2, &v18[v19], sub_1CFDAD280);
  v20 = *(v6 + 48);
  if (v20(v18, 1, v5) != 1)
  {
    sub_1CFDAC088(v18, v13, sub_1CFDAD280);
    if (v20(&v18[v19], 1, v5) != 1)
    {
      (*(v6 + 32))(v9, &v18[v19], v5);
      sub_1CFDD7F1C(&qword_1EDC318E0, &qword_1EDC31878);
      v21 = sub_1CFE308B4();
      v22 = *(v6 + 8);
      v22(v9, v5);
      v22(v13, v5);
      sub_1CFDAC13C(v18, sub_1CFDAD280);
      if ((v21 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_8;
    }

    (*(v6 + 8))(v13, v5);
LABEL_6:
    sub_1CFDAC13C(v18, sub_1CFDD2CF0);
    return 0;
  }

  if (v20(&v18[v19], 1, v5) != 1)
  {
    goto LABEL_6;
  }

  sub_1CFDAC13C(v18, sub_1CFDAD280);
LABEL_8:
  BaselineComparison = type metadata accessor for TrainingLoadBaselineComparison();
  if (static TrainingLoadChronicBaseline.== infix(_:_:)(a1 + *(BaselineComparison + 20), a2 + *(BaselineComparison + 20)))
  {
    v24 = *(BaselineComparison + 24);
    v25 = (a1 + v24);
    v26 = *(a1 + v24 + 8);
    v27 = (a2 + v24);
    v28 = *(a2 + v24 + 8);
    if (v26)
    {
      if (v28)
      {
        return 1;
      }
    }

    else
    {
      if (*v25 != *v27)
      {
        v28 = 1;
      }

      if ((v28 & 1) == 0)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_1CFDD7BC0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_1CFDD7C98()
{
  type metadata accessor for TrainingLoadAcuteBaseline();
  if (v0 <= 0x3F)
  {
    type metadata accessor for TrainingLoadChronicBaseline();
    if (v1 <= 0x3F)
    {
      sub_1CFDD7D34();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1CFDD7D34()
{
  if (!qword_1EDC320E0)
  {
    v0 = sub_1CFE30C74();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDC320E0);
    }
  }
}

unint64_t sub_1CFDD7D98()
{
  result = qword_1EC509798;
  if (!qword_1EC509798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC509798);
  }

  return result;
}

uint64_t sub_1CFDD7DEC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7361426574756361 && a2 == 0xED0000656E696C65;
  if (v4 || (sub_1CFE310B4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4263696E6F726863 && a2 == 0xEF656E696C657361 || (sub_1CFE310B4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000027 && 0x80000001CFE38E40 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_1CFE310B4();

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

uint64_t sub_1CFDD7F1C(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_1CFDAC3A0(255);
    sub_1CFDB792C(a2, sub_1CFDAD5CC);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1CFDD7FAC()
{
  sub_1CFE30984();
}

uint64_t sub_1CFDD8134()
{
  sub_1CFE30984();
}

id static HKKeyValueDomain.makeSleepingSampleChangeNotificationStateDomain(for:)(uint64_t a1)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = sub_1CFE308F4();
  v4 = [v2 initWithCategory:0 domainName:v3 healthStore:a1];

  return v4;
}

uint64_t HKKeyValueDomain.SleepingSampleChangeNotificationStateKey.init(rawValue:)@<X0>(char *a1@<X8>)
{
  v2 = sub_1CFE30F54();

  v4 = 10;
  if (v2 < 0xA)
  {
    v4 = v2;
  }

  *a1 = v4;
  return result;
}

unint64_t HKKeyValueDomain.SleepingSampleChangeNotificationStateKey.rawValue.getter()
{
  v1 = *v0;
  if (v1 > 4)
  {
    v6 = 0xD000000000000025;
    if (v1 == 8)
    {
      v7 = 0xD000000000000021;
    }

    else
    {
      v7 = 0xD000000000000022;
    }

    if (v1 != 7)
    {
      v6 = v7;
    }

    v8 = 0xD00000000000001DLL;
    if (v1 != 5)
    {
      v8 = 0xD000000000000021;
    }

    if (*v0 <= 6u)
    {
      return v8;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v2 = 0x64657A796C616E61;
    v3 = 0xD000000000000019;
    v4 = 0xD000000000000027;
    if (v1 == 3)
    {
      v4 = 0xD000000000000022;
    }

    if (v1 != 2)
    {
      v3 = v4;
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

uint64_t sub_1CFDD8528()
{
  v1 = *v0;
  sub_1CFE31144();
  sub_1CFDD7FAC();
  return sub_1CFE31184();
}

uint64_t sub_1CFDD8578()
{
  v1 = *v0;
  sub_1CFE31144();
  sub_1CFDD7FAC();
  return sub_1CFE31184();
}

uint64_t sub_1CFDD85BC@<X0>(char *a1@<X8>, uint64_t *a2@<X0>)
{
  v3 = *a2;
  v2 = a2[1];
  return HKKeyValueDomain.SleepingSampleChangeNotificationStateKey.init(rawValue:)(a1);
}

unint64_t sub_1CFDD85C8@<X0>(unint64_t *a1@<X8>)
{
  result = HKKeyValueDomain.SleepingSampleChangeNotificationStateKey.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

void HKKeyValueDomain.setDismissedByHighlightAlertDate(_:)()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_1CFE302D4();
  v4 = sub_1CFE308F4();
  v5 = swift_allocObject();
  *(v5 + 16) = ObjectType;
  v7[4] = sub_1CFDD8A00;
  v7[5] = v5;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 1107296256;
  v7[2] = sub_1CFDD8A08;
  v7[3] = &block_descriptor;
  v6 = _Block_copy(v7);

  [v1 setDate:v3 forKey:v4 completion:v6];
  _Block_release(v6);
}

void sub_1CFDD8718(char a1, void *a2)
{
  if (a1)
  {
    if (qword_1EDC32570 != -1)
    {
      swift_once();
    }

    v2 = sub_1CFE30624();
    __swift_project_value_buffer(v2, qword_1EDC32578);
    oslog = sub_1CFE30604();
    v3 = sub_1CFE30C04();
    if (os_log_type_enabled(oslog, v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      v24 = v5;
      *v4 = 136446210;
      v6 = sub_1CFE31294();
      v8 = sub_1CFDAAF6C(v6, v7, &v24);

      *(v4 + 4) = v8;
      _os_log_impl(&dword_1CFDA3000, oslog, v3, "[%{public}s] Saved dismissal date", v4, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v5);
      v9 = v5;
LABEL_16:
      MEMORY[0x1D3876FF0](v9, -1, -1);
      MEMORY[0x1D3876FF0](v4, -1, -1);

      return;
    }
  }

  else
  {
    if (qword_1EDC32570 != -1)
    {
      swift_once();
    }

    v11 = sub_1CFE30624();
    __swift_project_value_buffer(v11, qword_1EDC32578);
    v12 = a2;
    oslog = sub_1CFE30604();
    v13 = sub_1CFE30C04();

    if (os_log_type_enabled(oslog, v13))
    {
      v4 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v24 = v14;
      *v4 = 136446466;
      v15 = sub_1CFE31294();
      v17 = sub_1CFDAAF6C(v15, v16, &v24);

      *(v4 + 4) = v17;
      *(v4 + 12) = 2082;
      if (a2)
      {
        v18 = a2;
        sub_1CFDAAF08();
        v19 = sub_1CFE30944();
        v21 = v20;
      }

      else
      {
        v21 = 0xE300000000000000;
        v19 = 7104878;
      }

      v22 = sub_1CFDAAF6C(v19, v21, &v24);

      *(v4 + 14) = v22;
      _os_log_impl(&dword_1CFDA3000, oslog, v13, "[%{public}s] Error saving dismissal date: %{public}s)", v4, 0x16u);
      swift_arrayDestroy();
      v9 = v14;
      goto LABEL_16;
    }
  }
}

void sub_1CFDD8A08(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v7 = a3;
  v6(a2, a3);
}

uint64_t HKKeyValueDomain.resetValuesForAllKeys()()
{
  v1[18] = v0;
  sub_1CFDD8ED0();
  v1[19] = v2;
  v3 = *(v2 - 8);
  v1[20] = v3;
  v4 = *(v3 + 64) + 15;
  v1[21] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1CFDD8B40, 0, 0);
}

uint64_t sub_1CFDD8B40()
{
  v1 = v0;
  v2 = v0;
  v3 = v0 + 2;
  v4 = v0 + 10;
  v6 = v0[20];
  v5 = v0[21];
  v7 = v0[19];
  v8 = v1[18];
  v1[2] = v2;
  v1[3] = sub_1CFDD8CE8;
  swift_continuation_init();
  v1[17] = v7;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v1 + 14);
  sub_1CFDAAF08();
  sub_1CFE30B04();
  (*(v6 + 32))(boxed_opaque_existential_0, v5, v7);
  v1[10] = MEMORY[0x1E69E9820];
  v1[11] = 1107296256;
  v1[12] = sub_1CFDD8FA0;
  v1[13] = &block_descriptor_4;
  [v8 setValueForAllKeys:0 completion:v4];
  (*(v6 + 8))(boxed_opaque_existential_0, v7);

  return MEMORY[0x1EEE6DEC8](v3);
}

uint64_t sub_1CFDD8CE8()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 176) = v2;
  if (v2)
  {
    v3 = sub_1CFDD8E5C;
  }

  else
  {
    v3 = sub_1CFDD8DF8;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1CFDD8DF8()
{
  v1 = *(v0 + 168);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1CFDD8E5C()
{
  v1 = v0[21];
  v2 = v0[22];
  swift_willThrow();

  v3 = v0[1];
  v4 = v0[22];

  return v3();
}

void sub_1CFDD8ED0()
{
  if (!qword_1EC5097A0)
  {
    sub_1CFDAAF08();
    v0 = sub_1CFE30B34();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC5097A0);
    }
  }
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

void sub_1CFDD8FA0(uint64_t a1, int a2, void *a3)
{
  __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a2)
  {
    sub_1CFDD8ED0();
    sub_1CFE30B24();
  }

  else if (a3)
  {
    sub_1CFDD8ED0();
    v5 = a3;
    sub_1CFE30B14();
  }

  else
  {
    __break(1u);
  }
}

id static HKKeyValueDomain.makeSyncedUnprotectedApplicationStateDomain(for:)(uint64_t a1)
{
  v2 = objc_allocWithZone(MEMORY[0x1E696C210]);
  v3 = sub_1CFE308F4();
  v4 = [v2 initWithCategory:4 domainName:v3 healthStore:a1];

  return v4;
}

unint64_t sub_1CFDD90CC()
{
  result = qword_1EC5097A8;
  if (!qword_1EC5097A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC5097A8);
  }

  return result;
}

unint64_t sub_1CFDD9124()
{
  result = qword_1EC5097B0;
  if (!qword_1EC5097B0)
  {
    sub_1CFDD917C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC5097B0);
  }

  return result;
}

void sub_1CFDD917C()
{
  if (!qword_1EC5097B8)
  {
    v0 = sub_1CFE30AE4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC5097B8);
    }
  }
}

uint64_t SleepingSampleAggregate.quantity.getter()
{
  sub_1CFDAD280();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for SleepingSampleAggregate();
  sub_1CFDB343C(v0 + *(v5 + 24), v4, sub_1CFDAD280);
  sub_1CFDAC3A0(0);
  v7 = v6;
  v8 = *(v6 - 8);
  if ((*(v8 + 48))(v4, 1, v6) == 1)
  {
    sub_1CFDB35D4(v4, sub_1CFDAD280);
    return 0;
  }

  else
  {
    v10 = sub_1CFE30684();
    (*(v8 + 8))(v4, v7);
    return v10;
  }
}

uint64_t sub_1CFDD9344(uint64_t a1)
{
  v2 = sub_1CFDB2C64();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CFDD9380(uint64_t a1)
{
  v2 = sub_1CFDB2C64();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1CFDD93BC(uint64_t a1)
{
  v2 = sub_1CFDAE450();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CFDD93F8(uint64_t a1)
{
  v2 = sub_1CFDAE450();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1CFDD9434(uint64_t a1)
{
  v2 = sub_1CFDB2D68();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CFDD9470(uint64_t a1)
{
  v2 = sub_1CFDB2D68();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1CFDD94AC(uint64_t a1)
{
  v2 = sub_1CFDB2E6C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CFDD94E8(uint64_t a1)
{
  v2 = sub_1CFDB2E6C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1CFDD9524(uint64_t a1)
{
  v2 = sub_1CFDB2F70();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CFDD9560(uint64_t a1)
{
  v2 = sub_1CFDB2F70();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1CFDD959C(uint64_t a1)
{
  v2 = sub_1CFDAE4A4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CFDD95D8(uint64_t a1)
{
  v2 = sub_1CFDAE4A4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SleepingSampleAggregate.Availability.hashValue.getter()
{
  v1 = *v0;
  sub_1CFE31144();
  MEMORY[0x1D3876810](v1);
  return sub_1CFE31184();
}

uint64_t SleepingSampleAggregate.morningIndex.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1CFE307E4();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t SleepingSampleAggregate.gregorianCalendar.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SleepingSampleAggregate() + 20);
  v4 = sub_1CFE304B4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SleepingSampleAggregate.availability.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for SleepingSampleAggregate();
  *a1 = *(v1 + *(result + 36));
  return result;
}

uint64_t SleepingSampleAggregate.sampleEndDate.getter@<X0>(uint64_t a1@<X8>)
{
  sub_1CFDB2328(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for SleepingSampleAggregate();
  sub_1CFDB343C(v1 + *(v7 + 28), v6, sub_1CFDB2328);
  v8 = sub_1CFE30014();
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(v6, 1, v8) == 1)
  {
    sub_1CFDB35D4(v6, sub_1CFDB2328);
    v10 = 1;
  }

  else
  {
    sub_1CFE2FFD4();
    (*(v9 + 8))(v6, v8);
    v10 = 0;
  }

  v11 = sub_1CFE30314();
  return (*(*(v11 - 8) + 56))(a1, v10, 1, v11);
}

uint64_t SleepingSampleAggregate.init(morningIndex:gregorianCalendar:quantity:sampleDateInterval:latestSampleCreationDate:availability:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unsigned __int8 *a6@<X5>, uint64_t a7@<X8>)
{
  v29 = a4;
  v30 = a5;
  sub_1CFDAD280();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = *a6;
  v16 = sub_1CFE307E4();
  v17 = *(v16 - 8);
  v18 = *(v17 + 16);
  v27 = a1;
  v18(a7, a1, v16);
  v19 = type metadata accessor for SleepingSampleAggregate();
  v20 = v19[5];
  v21 = sub_1CFE304B4();
  v22 = *(v21 - 8);
  (*(v22 + 16))(a7 + v20, a2, v21);
  if (a3)
  {
    sub_1CFDAD5CC();
    v23 = a3;
    sub_1CFE306B4();
    sub_1CFDAC3A0(0);
    (*(*(v24 - 8) + 56))(v15, 0, 1, v24);
    (*(v22 + 8))(a2, v21);
    (*(v17 + 8))(v27, v16);
  }

  else
  {
    (*(v22 + 8))(a2, v21);
    (*(v17 + 8))(v27, v16);
    sub_1CFDAC3A0(0);
    (*(*(v25 - 8) + 56))(v15, 1, 1, v25);
  }

  sub_1CFDAD564(v15, a7 + v19[6], sub_1CFDAD280);
  sub_1CFDAD564(v29, a7 + v19[7], sub_1CFDB2328);
  result = sub_1CFDAD564(v30, a7 + v19[8], sub_1CFDA9D60);
  *(a7 + v19[9]) = v28;
  return result;
}

uint64_t sub_1CFDD9CB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1CFDDBA74(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1CFDD9CE4(uint64_t a1)
{
  v2 = sub_1CFDAF700();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CFDD9D20(uint64_t a1)
{
  v2 = sub_1CFDAF700();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SleepingSampleAggregate.hash(into:)()
{
  v1 = v0;
  v2 = sub_1CFE30314();
  v42 = *(v2 - 8);
  v43 = v2;
  v3 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v38 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFDA9D60(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v41 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1CFE30014();
  v39 = *(v8 - 8);
  v40 = v8;
  v9 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v37 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFDB2328(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFDAC3A0(0);
  v16 = v15;
  v17 = *(v15 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v20 = &v36 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFDAD280();
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v24 = &v36 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFE307E4();
  sub_1CFDADC34(&qword_1EC509638, MEMORY[0x1E696B418]);
  sub_1CFE30834();
  v25 = type metadata accessor for SleepingSampleAggregate();
  v26 = v25[5];
  sub_1CFE304B4();
  sub_1CFDADC34(&qword_1EC509640, MEMORY[0x1E6969AE8]);
  sub_1CFE30834();
  sub_1CFDB343C(v1 + v25[6], v24, sub_1CFDAD280);
  if ((*(v17 + 48))(v24, 1, v16) == 1)
  {
    sub_1CFE31164();
  }

  else
  {
    (*(v17 + 32))(v20, v24, v16);
    sub_1CFE31164();
    sub_1CFDD2D54(&qword_1EC509608, sub_1CFDD2B78);
    sub_1CFE30834();
    (*(v17 + 8))(v20, v16);
  }

  sub_1CFDB343C(v1 + v25[7], v14, sub_1CFDB2328);
  v28 = v39;
  v27 = v40;
  v29 = (*(v39 + 48))(v14, 1, v40);
  v31 = v42;
  v30 = v43;
  if (v29 == 1)
  {
    sub_1CFE31164();
  }

  else
  {
    v32 = v37;
    (*(v28 + 32))(v37, v14, v27);
    sub_1CFE31164();
    sub_1CFDADC34(&qword_1EC509648, MEMORY[0x1E6968130]);
    sub_1CFE30834();
    (*(v28 + 8))(v32, v27);
  }

  v33 = v41;
  sub_1CFDB343C(v1 + v25[8], v41, sub_1CFDA9D60);
  if ((*(v31 + 48))(v33, 1, v30) == 1)
  {
    sub_1CFE31164();
  }

  else
  {
    v34 = v38;
    (*(v31 + 32))(v38, v33, v30);
    sub_1CFE31164();
    sub_1CFDADC34(&qword_1EC509650, MEMORY[0x1E6969530]);
    sub_1CFE30834();
    (*(v31 + 8))(v34, v30);
  }

  return MEMORY[0x1D3876810](*(v1 + v25[9]));
}

uint64_t SleepingSampleAggregate.hashValue.getter()
{
  sub_1CFE31144();
  SleepingSampleAggregate.hash(into:)();
  return sub_1CFE31184();
}

uint64_t sub_1CFDDA3B0()
{
  sub_1CFE31144();
  SleepingSampleAggregate.hash(into:)();
  return sub_1CFE31184();
}

uint64_t sub_1CFDDA3F4()
{
  sub_1CFE31144();
  SleepingSampleAggregate.hash(into:)();
  return sub_1CFE31184();
}

uint64_t SleepingSampleAggregate.description.getter()
{
  v1 = v0;
  v2 = sub_1CFE30314();
  v75 = *(v2 - 8);
  v76 = v2;
  v3 = *(v75 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v73 = &v65 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFDA9D60(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v74 = &v65 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1CFE30284();
  v71 = *(v8 - 8);
  v72 = v8;
  v9 = *(v71 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v69 = &v65 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = sub_1CFE302B4();
  v68 = *(v70 - 8);
  v11 = *(v68 + 64);
  MEMORY[0x1EEE9AC00](v70);
  v67 = &v65 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFDDB714();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v66 = &v65 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFDB2328(0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = &v65 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFDAD280();
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v23 = &v65 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_1CFE304E4();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v24);
  v28 = &v65 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = 0;
  v80 = 0xE000000000000000;
  sub_1CFE30DB4();
  MEMORY[0x1D3876060](0xD000000000000017, 0x80000001CFE34200);
  MEMORY[0x1D3876060](0x676E696E726F6D28, 0xEF203A7865646E49);
  v77 = sub_1CFE307A4();
  v29 = sub_1CFE31074();
  MEMORY[0x1D3876060](v29);

  MEMORY[0x1D3876060](0xD000000000000015, 0x80000001CFE38F20);
  v30 = type metadata accessor for SleepingSampleAggregate();
  v31 = v0 + v30[5];
  sub_1CFE30494();
  v32 = sub_1CFE304D4();
  v34 = v33;
  (*(v25 + 8))(v28, v24);
  MEMORY[0x1D3876060](v32, v34);

  MEMORY[0x1D3876060](0x69746E617571202CLL, 0xEC000000203A7974);
  sub_1CFDB343C(v1 + v30[6], v23, sub_1CFDAD280);
  sub_1CFDAC3A0(0);
  v36 = v35;
  v37 = *(v35 - 8);
  if ((*(v37 + 48))(v23, 1, v35) == 1)
  {
    sub_1CFDB35D4(v23, sub_1CFDAD280);
    v38 = 0xE300000000000000;
    v39 = 7104878;
  }

  else
  {
    v40 = sub_1CFE30684();
    (*(v37 + 8))(v23, v36);
    v41 = sub_1CFE2D980();
    v43 = v42;

    v77 = v41;
    v78 = v43;
    v39 = sub_1CFE30944();
    v38 = v44;
  }

  MEMORY[0x1D3876060](v39, v38);

  MEMORY[0x1D3876060](0xD000000000000016, 0x80000001CFE38F40);
  sub_1CFDB343C(v1 + v30[7], v19, sub_1CFDB2328);
  v45 = sub_1CFE30014();
  v46 = *(v45 - 8);
  v47 = (*(v46 + 48))(v19, 1, v45);
  v49 = v75;
  v48 = v76;
  if (v47 == 1)
  {
    sub_1CFDB35D4(v19, sub_1CFDB2328);
    v50 = 0xE300000000000000;
    v51 = 7104878;
  }

  else
  {
    v52 = v66;
    DateInterval.range.getter(v66);
    (*(v46 + 8))(v19, v45);
    v53 = v67;
    sub_1CFE30264();
    v54 = v69;
    sub_1CFE30274();
    v55 = sub_1CFE30BD4();
    v57 = v56;
    (*(v71 + 8))(v54, v72);
    (*(v68 + 8))(v53, v70);
    sub_1CFDB35D4(v52, sub_1CFDDB714);
    v77 = v55;
    v78 = v57;
    v51 = sub_1CFE30944();
    v50 = v58;
  }

  MEMORY[0x1D3876060](v51, v50);

  MEMORY[0x1D3876060](8236, 0xE200000000000000);
  v59 = v74;
  sub_1CFDB343C(v1 + v30[8], v74, sub_1CFDA9D60);
  v60 = 0xE000000000000000;
  if ((*(v49 + 48))(v59, 1, v48) == 1)
  {
    v61 = 0;
  }

  else
  {
    v62 = v73;
    (*(v49 + 32))(v73, v59, v48);
    v77 = 0;
    v78 = 0xE000000000000000;
    sub_1CFE30DB4();

    v77 = 0xD00000000000001ALL;
    v78 = 0x80000001CFE38F60;
    sub_1CFDADC34(&qword_1EC5097C8, MEMORY[0x1E6969530]);
    v63 = sub_1CFE31074();
    MEMORY[0x1D3876060](v63);

    MEMORY[0x1D3876060](8236, 0xE200000000000000);
    v61 = v77;
    v60 = v78;
    (*(v49 + 8))(v62, v48);
  }

  MEMORY[0x1D3876060](v61, v60);

  MEMORY[0x1D3876060](0x6962616C69617661, 0xEE00203A7974696CLL);
  LOBYTE(v77) = *(v1 + v30[9]);
  sub_1CFE30EB4();
  MEMORY[0x1D3876060](41, 0xE100000000000000);
  return v79;
}

BOOL _s13HealthBalance23SleepingSampleAggregateV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v90 = sub_1CFE30314();
  v84 = *(v90 - 8);
  v4 = *(v84 + 64);
  MEMORY[0x1EEE9AC00](v90);
  v81 = &v78 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFDA9D60(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v88 = &v78 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFDA887C(0);
  v83 = v9;
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v89 = &v78 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1CFE30014();
  v86 = *(v12 - 8);
  v87 = v12;
  v13 = *(v86 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v82 = &v78 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFDB2328(0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v91 = &v78 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFDDBC88(0);
  v19 = v18;
  v20 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18);
  v85 = &v78 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFDAC3A0(0);
  v23 = v22;
  v24 = *(v22 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v27 = &v78 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFDAD280();
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x1EEE9AC00](v28 - 8);
  v31 = &v78 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFDD2CF0();
  v33 = v32;
  v34 = *(*(v32 - 8) + 64);
  MEMORY[0x1EEE9AC00](v32);
  v36 = &v78 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFE307E4();
  sub_1CFDADC34(&qword_1EDC31AB0, MEMORY[0x1E696B418]);
  if ((sub_1CFE308B4() & 1) == 0)
  {
    return 0;
  }

  v37 = type metadata accessor for SleepingSampleAggregate();
  if ((MEMORY[0x1D3875B20](a1 + *(v37 + 20), a2 + *(v37 + 20)) & 1) == 0)
  {
    return 0;
  }

  v38 = a1;
  v39 = a2;
  v80 = v37;
  v40 = *(v37 + 24);
  v41 = *(v33 + 48);
  v78 = v38;
  sub_1CFDB343C(v38 + v40, v36, sub_1CFDAD280);
  v79 = v39;
  sub_1CFDB343C(v39 + v40, &v36[v41], sub_1CFDAD280);
  v42 = *(v24 + 48);
  if (v42(v36, 1, v23) == 1)
  {
    v43 = v42(&v36[v41], 1, v23);
    v44 = v91;
    if (v43 == 1)
    {
      sub_1CFDB35D4(v36, sub_1CFDAD280);
      goto LABEL_10;
    }

LABEL_8:
    v46 = sub_1CFDD2CF0;
    v47 = v36;
LABEL_23:
    sub_1CFDB35D4(v47, v46);
    return 0;
  }

  sub_1CFDB343C(v36, v31, sub_1CFDAD280);
  v45 = v42(&v36[v41], 1, v23);
  v44 = v91;
  if (v45 == 1)
  {
    (*(v24 + 8))(v31, v23);
    goto LABEL_8;
  }

  (*(v24 + 32))(v27, &v36[v41], v23);
  sub_1CFDD2D54(&qword_1EDC318E0, sub_1CFDD2DC0);
  v48 = sub_1CFE308B4();
  v49 = *(v24 + 8);
  v49(v27, v23);
  v49(v31, v23);
  sub_1CFDB35D4(v36, sub_1CFDAD280);
  if ((v48 & 1) == 0)
  {
    return 0;
  }

LABEL_10:
  v50 = v80[7];
  v51 = *(v19 + 48);
  v52 = v78;
  v53 = v85;
  sub_1CFDB343C(v78 + v50, v85, sub_1CFDB2328);
  v54 = v79;
  sub_1CFDB343C(v79 + v50, v53 + v51, sub_1CFDB2328);
  v56 = v86;
  v55 = v87;
  v57 = *(v86 + 48);
  if (v57(v53, 1, v87) != 1)
  {
    sub_1CFDB343C(v53, v44, sub_1CFDB2328);
    v63 = v57(v53 + v51, 1, v55);
    v59 = v53;
    v61 = v89;
    v60 = v90;
    v64 = v88;
    if (v63 != 1)
    {
      v65 = v44;
      v66 = v82;
      (*(v56 + 32))(v82, v59 + v51, v55);
      sub_1CFDADC34(&qword_1EDC319B0, MEMORY[0x1E6968130]);
      v67 = sub_1CFE308B4();
      v68 = *(v56 + 8);
      v68(v66, v55);
      v69 = v65;
      v52 = v78;
      v68(v69, v55);
      sub_1CFDB35D4(v59, sub_1CFDB2328);
      v62 = v64;
      v54 = v79;
      if ((v67 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_17;
    }

    (*(v56 + 8))(v44, v55);
    goto LABEL_15;
  }

  v58 = v57(v53 + v51, 1, v55);
  v59 = v53;
  v61 = v89;
  v60 = v90;
  v62 = v88;
  if (v58 != 1)
  {
LABEL_15:
    v46 = sub_1CFDDBC88;
    v47 = v59;
    goto LABEL_23;
  }

  sub_1CFDB35D4(v59, sub_1CFDB2328);
LABEL_17:
  v70 = v80[8];
  v71 = *(v83 + 48);
  sub_1CFDB343C(v52 + v70, v61, sub_1CFDA9D60);
  sub_1CFDB343C(v54 + v70, v61 + v71, sub_1CFDA9D60);
  v72 = *(v84 + 48);
  if (v72(v61, 1, v60) == 1)
  {
    if (v72(v61 + v71, 1, v60) == 1)
    {
      sub_1CFDB35D4(v61, sub_1CFDA9D60);
      return *(v52 + v80[9]) == *(v54 + v80[9]);
    }

    goto LABEL_22;
  }

  sub_1CFDB343C(v61, v62, sub_1CFDA9D60);
  if (v72(v61 + v71, 1, v60) == 1)
  {
    (*(v84 + 8))(v62, v60);
LABEL_22:
    v46 = sub_1CFDA887C;
    v47 = v61;
    goto LABEL_23;
  }

  v74 = v84;
  v75 = v81;
  (*(v84 + 32))(v81, v61 + v71, v60);
  sub_1CFDADC34(&qword_1EDC31998, MEMORY[0x1E6969530]);
  v76 = sub_1CFE308B4();
  v77 = *(v74 + 8);
  v77(v75, v60);
  v77(v62, v60);
  sub_1CFDB35D4(v61, sub_1CFDA9D60);
  if (v76)
  {
    return *(v52 + v80[9]) == *(v54 + v80[9]);
  }

  return 0;
}

void sub_1CFDDB714()
{
  if (!qword_1EC5097C0)
  {
    sub_1CFE30314();
    sub_1CFDADC34(&qword_1EDC32030, MEMORY[0x1E6969530]);
    v0 = sub_1CFE30BE4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC5097C0);
    }
  }
}

unint64_t sub_1CFDDB7AC()
{
  result = qword_1EC5097D0;
  if (!qword_1EC5097D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC5097D0);
  }

  return result;
}

void sub_1CFDDB870()
{
  sub_1CFE307E4();
  if (v0 <= 0x3F)
  {
    sub_1CFE304B4();
    if (v1 <= 0x3F)
    {
      sub_1CFDAD280();
      if (v2 <= 0x3F)
      {
        sub_1CFDB2328(319);
        if (v3 <= 0x3F)
        {
          sub_1CFDA9D60(319);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

unint64_t sub_1CFDDB9C8()
{
  result = qword_1EC5097E0;
  if (!qword_1EC5097E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC5097E0);
  }

  return result;
}

unint64_t sub_1CFDDBA20()
{
  result = qword_1EC5097E8;
  if (!qword_1EC5097E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC5097E8);
  }

  return result;
}

uint64_t sub_1CFDDBA74(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x49676E696E726F6DLL && a2 == 0xEC0000007865646ELL;
  if (v4 || (sub_1CFE310B4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001CFE38FC0 == a2 || (sub_1CFE310B4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x797469746E617571 && a2 == 0xEF72657070617257 || (sub_1CFE310B4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001CFE38FE0 == a2 || (sub_1CFE310B4() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001CFE39000 == a2 || (sub_1CFE310B4() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6962616C69617661 && a2 == 0xEC0000007974696CLL)
  {

    return 5;
  }

  else
  {
    v6 = sub_1CFE310B4();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

BOOL sub_1CFDDBE5C(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

void *sub_1CFDDBE8C@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_1CFDDBEB8@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

BOOL SleepingSampleDaySummaryDescription.hasAllMetricChanges.getter()
{
  if ((*v0 & 0x180) != 0)
  {
    v1 = (*v0 & 6) == 0;
    *v0;
  }

  else
  {
    v1 = 1;
  }

  if (v1)
  {
    v2 = 1;
  }

  else
  {
    v2 = (*v0 & 0x18) == 0;
    *v0;
  }

  return !v2 && (~*v0 & 0x60) == 0;
}

uint64_t SleepingSampleDaySummaryDescription.outlierCount.getter()
{
  v1 = *v0;
  v2 = ((*v0 >> 6) & 1) + ((*v0 >> 5) & 1);
  if ((*v0 & 0x180) != 0)
  {
    ++v2;
  }

  if ((v1 & 0x18) != 0)
  {
    ++v2;
  }

  if ((v1 & 6) != 0)
  {
    return v2 + 1;
  }

  else
  {
    return v2;
  }
}

uint64_t static SleepingSampleDaySummaryDescription.makeDescription(for:)@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X8>)
{
  v26 = a2;
  v3 = type metadata accessor for SleepingSampleBaselineComparison();
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](v3 - 8);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v5);
  v10 = &v25 - v9;
  v11 = 0;
  v12 = 0;
  v13 = 0;
LABEL_2:
  v28 = v13;
  v27 = v11;
  if (v12 <= 5)
  {
    v14 = 5;
  }

  else
  {
    v14 = v12;
  }

  do
  {
    if (v14 == v12)
    {
      __break(1u);
      return result;
    }

    v15 = byte_1F4C8A1B0[v12 + 32];
    v16 = type metadata accessor for SleepingSampleDaySummary();
    sub_1CFDDC2EC(a1 + *(v16 + *&asc_1CFE34C98[8 * v15]), v10);
    sub_1CFDDC2EC(v10, v7);
    SleepingSampleBaselineComparison.relativeComparison.getter();
    if (v17)
    {
      sub_1CFDDC350(v7);
      result = sub_1CFDDC350(v10);
    }

    else
    {
      v18 = v15;
      if (HKCompareDoubles() == -1)
      {
        sub_1CFDDC350(v7);
        result = sub_1CFDDC350(v10);
        if (v15 <= 1u)
        {
          if (v15)
          {
            v21 = v28 | 0x10;
          }

          else
          {
            v21 = v28 | 4;
          }

          v28 = v21;
        }

        else if (v15 == 2)
        {
          v28 |= 0x20uLL;
        }

        else if (v15 != 3)
        {
          v28 |= 0x100uLL;
        }
      }

      else
      {
        v19 = HKCompareDoubles();
        sub_1CFDDC350(v7);
        result = sub_1CFDDC350(v10);
        if (v19 != 1)
        {
          v11 = 1;
          v22 = v12++ == 4;
          v13 = v28;
          if (!v22)
          {
            goto LABEL_2;
          }

          goto LABEL_33;
        }

        if (v18 <= 1)
        {
          if (v18)
          {
            v20 = v28 | 8;
          }

          else
          {
            v20 = v28 | 2;
          }

          v28 = v20;
        }

        else if (v18 != 2)
        {
          if (v18 == 3)
          {
            v28 |= 0x40uLL;
          }

          else
          {
            v28 |= 0x80uLL;
          }
        }
      }
    }

    ++v12;
  }

  while (v12 != 5);
  v13 = v28;
  if ((v27 & 1) == 0)
  {
    goto LABEL_39;
  }

LABEL_33:
  if (v13 <= 1)
  {
    v23 = 1;
  }

  else
  {
    v23 = v13;
  }

  result = SleepingSampleDaySummary.hasAnyBaselinesInRefinement.getter();
  if (result)
  {
    v13 = v23 | 0x200;
  }

  else
  {
    v13 = v23;
  }

LABEL_39:
  v24 = a1 + *(v16 + 28);
  if ((*(v24 + 8) & 1) == 0)
  {
    v13 |= (*v24 & 7) << 10;
  }

  *v26 = v13;
  return result;
}

uint64_t sub_1CFDDC2EC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SleepingSampleBaselineComparison();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1CFDDC350(uint64_t a1)
{
  v2 = type metadata accessor for SleepingSampleBaselineComparison();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1CFDDC3AC(char a1)
{
  v3 = *v1;
  if ((*v1 & 0x40) == 0)
  {
    v4 = MEMORY[0x1E69E7CC0];
    if ((v3 & 2) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_7;
  }

  v4 = sub_1CFDDD778(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v6 = *(v4 + 2);
  v5 = *(v4 + 3);
  if (v6 >= v5 >> 1)
  {
    v4 = sub_1CFDDD778((v5 > 1), v6 + 1, 1, v4);
  }

  *(v4 + 2) = v6 + 1;
  v7 = &v4[16 * v6];
  *(v7 + 4) = 0xD000000000000016;
  *(v7 + 5) = 0x80000001CFE391B0;
  if ((v3 & 2) != 0)
  {
LABEL_7:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v4 = sub_1CFDDD778(0, *(v4 + 2) + 1, 1, v4);
    }

    v9 = *(v4 + 2);
    v8 = *(v4 + 3);
    if (v9 >= v8 >> 1)
    {
      v4 = sub_1CFDDD778((v8 > 1), v9 + 1, 1, v4);
    }

    *(v4 + 2) = v9 + 1;
    v10 = &v4[16 * v9];
    *(v10 + 4) = 0xD000000000000018;
    *(v10 + 5) = 0x80000001CFE39190;
  }

LABEL_12:
  if ((v3 & 4) != 0)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v4 = sub_1CFDDD778(0, *(v4 + 2) + 1, 1, v4);
    }

    v12 = *(v4 + 2);
    v11 = *(v4 + 3);
    if (v12 >= v11 >> 1)
    {
      v4 = sub_1CFDDD778((v11 > 1), v12 + 1, 1, v4);
    }

    *(v4 + 2) = v12 + 1;
    v13 = &v4[16 * v12];
    *(v13 + 4) = 0xD000000000000017;
    *(v13 + 5) = 0x80000001CFE39170;
    if ((v3 & 8) == 0)
    {
LABEL_14:
      if ((v3 & 0x10) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_30;
    }
  }

  else if ((v3 & 8) == 0)
  {
    goto LABEL_14;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v4 = sub_1CFDDD778(0, *(v4 + 2) + 1, 1, v4);
  }

  v15 = *(v4 + 2);
  v14 = *(v4 + 3);
  if (v15 >= v14 >> 1)
  {
    v4 = sub_1CFDDD778((v14 > 1), v15 + 1, 1, v4);
  }

  *(v4 + 2) = v15 + 1;
  v16 = &v4[16 * v15];
  *(v16 + 4) = 0xD000000000000015;
  *(v16 + 5) = 0x80000001CFE39150;
  if ((v3 & 0x10) == 0)
  {
LABEL_15:
    if ((v3 & 0x20) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_35;
  }

LABEL_30:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v4 = sub_1CFDDD778(0, *(v4 + 2) + 1, 1, v4);
  }

  v18 = *(v4 + 2);
  v17 = *(v4 + 3);
  if (v18 >= v17 >> 1)
  {
    v4 = sub_1CFDDD778((v17 > 1), v18 + 1, 1, v4);
  }

  *(v4 + 2) = v18 + 1;
  v19 = &v4[16 * v18];
  *(v19 + 4) = 0xD000000000000014;
  *(v19 + 5) = 0x80000001CFE39130;
  if ((v3 & 0x20) == 0)
  {
LABEL_16:
    if ((v3 & 0x80) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_40;
  }

LABEL_35:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v4 = sub_1CFDDD778(0, *(v4 + 2) + 1, 1, v4);
  }

  v21 = *(v4 + 2);
  v20 = *(v4 + 3);
  if (v21 >= v20 >> 1)
  {
    v4 = sub_1CFDDD778((v20 > 1), v21 + 1, 1, v4);
  }

  *(v4 + 2) = v21 + 1;
  v22 = &v4[16 * v21];
  *(v22 + 4) = 0xD000000000000010;
  *(v22 + 5) = 0x80000001CFE39110;
  if ((v3 & 0x80) == 0)
  {
LABEL_17:
    if ((v3 & 0x100) == 0)
    {
      goto LABEL_18;
    }

LABEL_45:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v4 = sub_1CFDDD778(0, *(v4 + 2) + 1, 1, v4);
    }

    v27 = *(v4 + 2);
    v26 = *(v4 + 3);
    if (v27 >= v26 >> 1)
    {
      v4 = sub_1CFDDD778((v26 > 1), v27 + 1, 1, v4);
    }

    *(v4 + 2) = v27 + 1;
    v28 = &v4[16 * v27];
    *(v28 + 4) = 0x4C53415F454D4954;
    *(v28 + 5) = 0xEF574F4C5F504545;
    if ((a1 & 1) == 0)
    {
      goto LABEL_69;
    }

    goto LABEL_50;
  }

LABEL_40:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v4 = sub_1CFDDD778(0, *(v4 + 2) + 1, 1, v4);
  }

  v24 = *(v4 + 2);
  v23 = *(v4 + 3);
  if (v24 >= v23 >> 1)
  {
    v4 = sub_1CFDDD778((v23 > 1), v24 + 1, 1, v4);
  }

  *(v4 + 2) = v24 + 1;
  v25 = &v4[16 * v24];
  *(v25 + 4) = 0xD000000000000010;
  *(v25 + 5) = 0x80000001CFE390F0;
  if ((v3 & 0x100) != 0)
  {
    goto LABEL_45;
  }

LABEL_18:
  if ((a1 & 1) == 0)
  {
    goto LABEL_69;
  }

LABEL_50:
  if ((v3 & 0x400) != 0)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v4 = sub_1CFDDD778(0, *(v4 + 2) + 1, 1, v4);
    }

    v30 = *(v4 + 2);
    v29 = *(v4 + 3);
    if (v30 >= v29 >> 1)
    {
      v4 = sub_1CFDDD778((v29 > 1), v30 + 1, 1, v4);
    }

    *(v4 + 2) = v30 + 1;
    v31 = &v4[16 * v30];
    *(v31 + 4) = 0x41555254534E454DLL;
    *(v31 + 5) = 0xEF454C4359435F4CLL;
    if ((v3 & 0x800) == 0)
    {
LABEL_52:
      if ((v3 & 0x1000) == 0)
      {
        goto LABEL_69;
      }

      goto LABEL_64;
    }
  }

  else if ((v3 & 0x800) == 0)
  {
    goto LABEL_52;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v4 = sub_1CFDDD778(0, *(v4 + 2) + 1, 1, v4);
  }

  v33 = *(v4 + 2);
  v32 = *(v4 + 3);
  if (v33 >= v32 >> 1)
  {
    v4 = sub_1CFDDD778((v32 > 1), v33 + 1, 1, v4);
  }

  *(v4 + 2) = v33 + 1;
  v34 = &v4[16 * v33];
  *(v34 + 4) = 0xD000000000000012;
  *(v34 + 5) = 0x80000001CFE390D0;
  if ((v3 & 0x1000) != 0)
  {
LABEL_64:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v4 = sub_1CFDDD778(0, *(v4 + 2) + 1, 1, v4);
    }

    v36 = *(v4 + 2);
    v35 = *(v4 + 3);
    if (v36 >= v35 >> 1)
    {
      v4 = sub_1CFDDD778((v35 > 1), v36 + 1, 1, v4);
    }

    *(v4 + 2) = v36 + 1;
    v37 = &v4[16 * v36];
    strcpy(v37 + 32, "ELEVATION_GAIN");
    v37[47] = -18;
  }

LABEL_69:
  sub_1CFDDE068(0, &qword_1EC509830, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
  sub_1CFDDDFEC();
  v38 = sub_1CFE30844();

  return v38;
}

uint64_t SleepingSampleDaySummaryDescription.primaryBodyKey.getter()
{
  v1 = *v0;
  strcpy(v4, "PRIMARY_BODY_");
  v2 = sub_1CFDDC3AC(0);
  MEMORY[0x1D3876060](v2);

  return v4[0];
}

unint64_t SleepingSampleDaySummaryDescription.secondaryCauseKey.getter()
{
  v1 = *v0;
  sub_1CFE30DB4();

  v2 = sub_1CFDDC3AC(1);
  MEMORY[0x1D3876060](v2);

  return 0xD000000000000010;
}

uint64_t SleepingSampleDaySummaryDescription.primaryBody.getter()
{
  v1 = sub_1CFE303F4();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = sub_1CFE308D4();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x1EEE9AC00](v3);
  v8 = v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v17 - v9;
  if (!*v0)
  {
    return 0;
  }

  v11 = *v0 & 0xFFFFFFFFFFFFFDFFLL;
  if (v11 > 1)
  {
    strcpy(v18, "PRIMARY_BODY_");
    v18[7] = -4864;
    v17[1] = v11;
    v15 = sub_1CFDDC3AC(0);
    MEMORY[0x1D3876060](v15);

    sub_1CFE308E4();
  }

  else
  {
    sub_1CFE308C4();
  }

  (*(v4 + 16))(v8, v10, v3);
  v12 = sub_1CFE308F4();
  v13 = [objc_opt_self() bundleWithIdentifier_];

  sub_1CFE303E4();
  v14 = sub_1CFE30934();
  (*(v4 + 8))(v10, v3);
  return v14;
}

uint64_t SleepingSampleDaySummaryDescription.secondaryCause.getter()
{
  v1 = sub_1CFE303F4();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = sub_1CFE308D4();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x1EEE9AC00](v3);
  v8 = v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = v20 - v10;
  v12 = *v0;
  if (*v0)
  {
    if ((v12 & 6) != 0 && (v12 & 0x18) != 0 && (v12 & 0x180) != 0 && (*v0 & 0x60) == 0x60)
    {
      v13 = v12 & 0xFFFFFFFFFFFFFDFFLL;
      if ((v12 & 0xFFFFFFFFFFFFFDFFLL) >= 2)
      {
LABEL_7:
        v21 = 0;
        v22 = 0xE000000000000000;
        v14 = v9;
        sub_1CFE30DB4();

        v21 = 0xD000000000000010;
        v22 = 0x80000001CFE39020;
        v20[1] = v13;
        v15 = sub_1CFDDC3AC(1);
        MEMORY[0x1D3876060](v15);

        sub_1CFE308E4();
        (*(v4 + 16))(v8, v11, v14);
        v16 = sub_1CFE308F4();
        v17 = [objc_opt_self() bundleWithIdentifier_];

        sub_1CFE303E4();
        v18 = sub_1CFE30934();
        (*(v4 + 8))(v11, v14);
        return v18;
      }
    }

    else
    {
      v13 = v12 & 0xFFFFFFFFFFFFFC7FLL;
      if ((v12 & 0xFFFFFFFFFFFFFC7FLL) >= 2)
      {
        goto LABEL_7;
      }
    }
  }

  return 0;
}

uint64_t SleepingSampleDaySummaryDescription.quaternaryRefinementDisclaimer.getter()
{
  v1 = sub_1CFE303F4();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = sub_1CFE308D4();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x1EEE9AC00](v3);
  v8 = &v15[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v15[-v9];
  result = 0;
  if ((*(v0 + 1) & 2) != 0)
  {
    sub_1CFE308C4();
    (*(v4 + 16))(v8, v10, v3);
    v12 = sub_1CFE308F4();
    v13 = [objc_opt_self() bundleWithIdentifier_];

    sub_1CFE303E4();
    v14 = sub_1CFE30934();
    (*(v4 + 8))(v10, v3);
    return v14;
  }

  return result;
}

char *sub_1CFDDD320(uint64_t (*a1)(void))
{
  v11 = *v1;
  v2 = a1();
  v12[0] = v2;
  v12[1] = v3;
  if (v3)
  {
    v4 = v2;
    v5 = v3;

    v6 = MEMORY[0x1E69E7CC0];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v6 = sub_1CFDDD778(0, *(v6 + 2) + 1, 1, v6);
    }

    v8 = *(v6 + 2);
    v7 = *(v6 + 3);
    if (v8 >= v7 >> 1)
    {
      v6 = sub_1CFDDD778((v7 > 1), v8 + 1, 1, v6);
    }

    *(v6 + 2) = v8 + 1;
    v9 = &v6[16 * v8];
    *(v9 + 4) = v4;
    *(v9 + 5) = v5;
  }

  else
  {
    v6 = MEMORY[0x1E69E7CC0];
  }

  sub_1CFDDD89C(v12);
  return v6;
}

char *sub_1CFDDD440(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1CFDDE068(0, &qword_1EC509848, MEMORY[0x1E69E67B0], MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_1CFDDD598(size_t result, int64_t a2, char a3, void *a4, unint64_t *a5, void (*a6)(uint64_t), uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  sub_1CFDDE0B8(0, a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

char *sub_1CFDDD778(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1CFDDE068(0, &qword_1EC509528, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1CFDDD89C(uint64_t a1)
{
  sub_1CFDDE068(0, &qword_1EC5097F0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1CFDDD920()
{
  result = qword_1EC5097F8;
  if (!qword_1EC5097F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC5097F8);
  }

  return result;
}

unint64_t sub_1CFDDD978()
{
  result = qword_1EC509800;
  if (!qword_1EC509800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC509800);
  }

  return result;
}

unint64_t sub_1CFDDD9CC()
{
  result = qword_1EC509808;
  if (!qword_1EC509808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC509808);
  }

  return result;
}

unint64_t sub_1CFDDDA24()
{
  result = qword_1EC509810;
  if (!qword_1EC509810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC509810);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SleepingSampleDaySummary.OutlierContext(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for SleepingSampleDaySummary.OutlierContext(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 8) = v3;
  return result;
}

char *sub_1CFDDDADC(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1CFDDE068(0, &qword_1EDC31718, &type metadata for SleepingSampleDataTypeFeatureStatus.ConfigurationIssue, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

char *sub_1CFDDDBE8(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1CFDDE068(0, &unk_1EDC324C0, MEMORY[0x1E69E69B8], MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1CFDDDD20(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1CFDDE0B8(0, &qword_1EC509820, sub_1CFDDDF94);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

char *sub_1CFDDDE68(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1CFDDE068(0, &qword_1EC509818, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_1CFDDDF94()
{
  if (!qword_1EC509828)
  {
    v0 = sub_1CFE30BE4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC509828);
    }
  }
}

unint64_t sub_1CFDDDFEC()
{
  result = qword_1EC509838;
  if (!qword_1EC509838)
  {
    sub_1CFDDE068(255, &qword_1EC509830, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC509838);
  }

  return result;
}

void sub_1CFDDE068(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1CFDDE0B8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1CFE31084();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t static SleepingSampleDaySummary.relativeComparisons(on:heart:spO2:rr:wtr:asleep:calendar:hasBaseline:)@<X0>(id a1@<X0>, void (*a2)(char *, uint64_t, void)@<X1>, int a3@<W2>, double a4@<X3>, int a5@<W4>, void (*a6)(char *, void, uint64_t)@<X5>, int a7@<W6>, double a8@<X7>, uint64_t a9@<X8>, unsigned __int8 a10, double a11, unsigned __int8 a12, uint64_t a13, unsigned __int8 a14)
{
  v773 = a8;
  LODWORD(v796) = a7;
  v771 = a6;
  LODWORD(v792) = a5;
  v767 = a4;
  LODWORD(v832) = a3;
  v763 = *&a2;
  v807 = a9;
  v843 = type metadata accessor for SleepingSampleBaseline();
  v842 = *(v843 - 8);
  v15 = *(v842 + 64);
  v16 = MEMORY[0x1EEE9AC00](v843);
  v752 = &v744 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v751 = &v744 - v19;
  v20 = MEMORY[0x1EEE9AC00](v18);
  v749 = &v744 - v21;
  v22 = MEMORY[0x1EEE9AC00](v20);
  v748 = &v744 - v23;
  MEMORY[0x1EEE9AC00](v22);
  v747 = &v744 - v24;
  sub_1CFDB17D0(0, qword_1EDC32C28, type metadata accessor for SleepingSampleBaseline);
  v26 = *(*(v25 - 8) + 64);
  v27 = MEMORY[0x1EEE9AC00](v25 - 8);
  v759 = &v744 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x1EEE9AC00](v27);
  v778 = &v744 - v30;
  v31 = MEMORY[0x1EEE9AC00](v29);
  v757 = &v744 - v32;
  v33 = MEMORY[0x1EEE9AC00](v31);
  v777 = &v744 - v34;
  v35 = MEMORY[0x1EEE9AC00](v33);
  v755 = &v744 - v36;
  v37 = MEMORY[0x1EEE9AC00](v35);
  v772 = &v744 - v38;
  v39 = MEMORY[0x1EEE9AC00](v37);
  v754 = &v744 - v40;
  v41 = MEMORY[0x1EEE9AC00](v39);
  v769 = (&v744 - v42);
  v43 = MEMORY[0x1EEE9AC00](v41);
  v822 = &v744 - v44;
  v45 = MEMORY[0x1EEE9AC00](v43);
  v753 = &v744 - v46;
  MEMORY[0x1EEE9AC00](v45);
  v765 = (&v744 - v47);
  v839 = type metadata accessor for SleepingSampleBaselineAvailability();
  v48 = *(*(v839 - 8) + 64);
  v49 = MEMORY[0x1EEE9AC00](v839);
  v783 = &v744 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = MEMORY[0x1EEE9AC00](v49);
  v782 = &v744 - v52;
  v53 = MEMORY[0x1EEE9AC00](v51);
  v781 = &v744 - v54;
  v55 = MEMORY[0x1EEE9AC00](v53);
  v780 = &v744 - v56;
  MEMORY[0x1EEE9AC00](v55);
  v779 = &v744 - v57;
  v830 = sub_1CFE30434();
  v836 = *(v830 - 8);
  v58 = *(v836 + 64);
  MEMORY[0x1EEE9AC00](v830);
  v60 = &v744 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  v829 = sub_1CFE30444();
  v835 = *(v829 - 8);
  v61 = *(v835 + 64);
  MEMORY[0x1EEE9AC00](v829);
  v828 = &v744 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = sub_1CFE30424();
  v853 = *(v63 - 8);
  v854 = v63;
  v64 = *(v853 + 64);
  MEMORY[0x1EEE9AC00](v63);
  v838 = &v744 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFDB17D0(0, &qword_1EDC31988, MEMORY[0x1E6969BC0]);
  v67 = *(*(v66 - 8) + 64);
  MEMORY[0x1EEE9AC00](v66 - 8);
  v826 = &v744 - v68;
  sub_1CFDB17D0(0, &qword_1EDC32910, MEMORY[0x1E6969AE8]);
  v70 = *(*(v69 - 8) + 64);
  MEMORY[0x1EEE9AC00](v69 - 8);
  v825 = &v744 - v71;
  v827 = sub_1CFE30134();
  v834 = *(v827 - 8);
  v72 = *(v834 + 64);
  MEMORY[0x1EEE9AC00](v827);
  v849 = &v744 - ((v73 + 15) & 0xFFFFFFFFFFFFFFF0);
  v855 = sub_1CFE30314();
  v837 = *(v855 - 8);
  v74 = v837[8];
  v75 = MEMORY[0x1EEE9AC00](v855);
  v758 = &v744 - ((v76 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = MEMORY[0x1EEE9AC00](v75);
  v750 = &v744 - v78;
  v79 = MEMORY[0x1EEE9AC00](v77);
  v774 = &v744 - v80;
  v81 = MEMORY[0x1EEE9AC00](v79);
  v808 = &v744 - v82;
  MEMORY[0x1EEE9AC00](v81);
  v848 = &v744 - v83;
  sub_1CFDB17D0(0, &qword_1EDC32C78, MEMORY[0x1E6968130]);
  v85 = *(*(v84 - 8) + 64);
  v86 = MEMORY[0x1EEE9AC00](v84 - 8);
  v809 = &v744 - ((v87 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = MEMORY[0x1EEE9AC00](v86);
  v775 = &v744 - v89;
  v90 = MEMORY[0x1EEE9AC00](v88);
  v770 = &v744 - v91;
  v92 = MEMORY[0x1EEE9AC00](v90);
  v766 = &v744 - v93;
  MEMORY[0x1EEE9AC00](v92);
  v789 = &v744 - v94;
  v861 = sub_1CFE304B4();
  v857 = *(v861 - 8);
  v95 = *(v857 + 64);
  v96 = MEMORY[0x1EEE9AC00](v861);
  v804 = &v744 - ((v97 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = MEMORY[0x1EEE9AC00](v96);
  v800 = &v744 - v99;
  v100 = MEMORY[0x1EEE9AC00](v98);
  v795 = &v744 - v101;
  v102 = MEMORY[0x1EEE9AC00](v100);
  v791 = &v744 - v103;
  MEMORY[0x1EEE9AC00](v102);
  v788 = &v744 - v104;
  v847 = type metadata accessor for SleepingSampleAggregate();
  v105 = *(*(v847 - 8) + 64);
  v106 = MEMORY[0x1EEE9AC00](v847);
  v805 = &v744 - ((v107 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = MEMORY[0x1EEE9AC00](v106);
  v801 = &v744 - v109;
  v110 = MEMORY[0x1EEE9AC00](v108);
  v797 = &v744 - v111;
  v112 = MEMORY[0x1EEE9AC00](v110);
  v793 = &v744 - v113;
  MEMORY[0x1EEE9AC00](v112);
  v831 = (&v744 - v114);
  sub_1CFDB17D0(0, &qword_1EDC31D38, type metadata accessor for SleepingSampleBaselineComparison);
  v116 = *(*(v115 - 8) + 64);
  v117 = MEMORY[0x1EEE9AC00](v115 - 8);
  v814 = &v744 - ((v118 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = MEMORY[0x1EEE9AC00](v117);
  v802 = &v744 - v120;
  v121 = MEMORY[0x1EEE9AC00](v119);
  v813 = &v744 - v122;
  v123 = MEMORY[0x1EEE9AC00](v121);
  v812 = &v744 - v124;
  MEMORY[0x1EEE9AC00](v123);
  v810 = &v744 - v125;
  v841 = type metadata accessor for SleepingSampleBaselineComparison();
  v858 = *(v841 - 8);
  v126 = *(v858 + 64);
  v127 = MEMORY[0x1EEE9AC00](v841);
  v806 = &v744 - ((v128 + 15) & 0xFFFFFFFFFFFFFFF0);
  v129 = MEMORY[0x1EEE9AC00](v127);
  v821 = &v744 - v130;
  v131 = MEMORY[0x1EEE9AC00](v129);
  v820 = &v744 - v132;
  v133 = MEMORY[0x1EEE9AC00](v131);
  v819 = &v744 - v134;
  MEMORY[0x1EEE9AC00](v133);
  v818 = &v744 - v135;
  v136 = sub_1CFE30014();
  v851 = *(v136 - 8);
  v852 = v136;
  v137 = *(v851 + 8);
  MEMORY[0x1EEE9AC00](v136);
  v761 = &v744 - ((v138 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFDB17D0(0, &qword_1EDC32C70, MEMORY[0x1E6969530]);
  v140 = *(*(v139 - 8) + 64);
  v141 = MEMORY[0x1EEE9AC00](v139 - 8);
  v776 = &v744 - ((v142 + 15) & 0xFFFFFFFFFFFFFFF0);
  v143 = MEMORY[0x1EEE9AC00](v141);
  v145 = &v744 - v144;
  v146 = MEMORY[0x1EEE9AC00](v143);
  v756 = &v744 - v147;
  v148 = MEMORY[0x1EEE9AC00](v146);
  v798 = &v744 - v149;
  v150 = MEMORY[0x1EEE9AC00](v148);
  v768 = (&v744 - v151);
  v152 = MEMORY[0x1EEE9AC00](v150);
  v815 = (&v744 - v153);
  v154 = MEMORY[0x1EEE9AC00](v152);
  v764 = (&v744 - v155);
  v156 = MEMORY[0x1EEE9AC00](v154);
  v811 = &v744 - v157;
  v158 = MEMORY[0x1EEE9AC00](v156);
  v762 = &v744 - v159;
  v160 = MEMORY[0x1EEE9AC00](v158);
  v840 = (&v744 - v161);
  MEMORY[0x1EEE9AC00](v160);
  v817 = &v744 - v162;
  sub_1CFDE4C00(0, &qword_1EDC32548, MEMORY[0x1E696B418]);
  v850 = v163;
  v164 = *(*(v163 - 1) + 64);
  v165 = MEMORY[0x1EEE9AC00](v163);
  v844 = (&v744 - ((v166 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v165);
  v168 = &v744 - v167;
  sub_1CFDA7AD0();
  v846 = v169;
  v170 = *(*(v169 - 1) + 64);
  MEMORY[0x1EEE9AC00](v169);
  v816 = &v744 - ((v171 + 15) & 0xFFFFFFFFFFFFFFF0);
  v172 = sub_1CFE307E4();
  v173 = *(v172 - 8);
  v174 = *(v173 + 64);
  v175 = MEMORY[0x1EEE9AC00](v172);
  v803 = &v744 - ((v176 + 15) & 0xFFFFFFFFFFFFFFF0);
  v177 = MEMORY[0x1EEE9AC00](v175);
  v799 = &v744 - v178;
  v179 = MEMORY[0x1EEE9AC00](v177);
  v794 = &v744 - v180;
  v181 = MEMORY[0x1EEE9AC00](v179);
  v790 = &v744 - v182;
  v183 = MEMORY[0x1EEE9AC00](v181);
  v787 = &v744 - v184;
  v185 = MEMORY[0x1EEE9AC00](v183);
  v187 = &v744 - v186;
  MEMORY[0x1EEE9AC00](v185);
  v189 = &v744 - v188;
  v190 = v173;
  v192 = *(v173 + 16);
  v191 = v173 + 16;
  v193 = v192;
  v192(&v744 - v188, a1, v172);
  sub_1CFE30774();
  sub_1CFDA77A8(&qword_1EDC32CA8, MEMORY[0x1E696B418]);
  v863 = a1;
  result = sub_1CFE30874();
  if ((result & 1) == 0)
  {
    __break(1u);
    return result;
  }

  v760 = v145;
  v824 = v60;
  v786 = v189;
  v833 = a14;
  v862 = a13;
  v195 = *(v190 + 32);
  v823 = v187;
  v195(v168, v187, v172);
  v196 = v850;
  v197 = &v168[*(v850 + 12)];
  v856 = v191;
  v860 = v193;
  v193(v197, v863, v172);
  v198 = v844;
  sub_1CFDE4928(v168, v844);
  v199 = *(v196 + 12);
  v200 = v816;
  v195(v816, v198, v172);
  v201 = *(v190 + 8);
  v845 = v190 + 8;
  (v201)(&v198[v199], v172);
  sub_1CFDE49B0(v168, v198);
  v202 = v200 + v846[9];
  v203 = &v198[*(v196 + 12)];
  v785 = v190 + 32;
  v784 = v195;
  v195(v202, v203, v172);
  v859 = v172;
  v844 = v201;
  (v201)(v198, v172);
  v204 = v860;
  if (v833)
  {
    v205 = v761;
    v206 = v862;
    sub_1CFE30734();
    v207 = v817;
    sub_1CFE2FFD4();
    (*(v851 + 1))(v205, v852);
    v208 = 0;
    v209 = v855;
  }

  else
  {
    v208 = 1;
    v209 = v855;
    v207 = v817;
    v206 = v862;
  }

  v211 = v837 + 7;
  v210 = v837[7];
  v210(v207, v208, 1, v209);
  v850 = v211;
  v846 = v210;
  if (v832)
  {
    v212 = v841;
    v831 = *(v858 + 56);
    v831(v810, 1, 1, v841);
    v213 = v823;
    v214 = v859;
    v204(v823, v863, v859);
    v215 = v847;
    v216 = v818;
    v217 = v818 + *(v847 + 20);
    v832 = *(v857 + 16);
    v832(v217, v206, v861);
    v218 = v216 + v215[7];
    v840 = *(v851 + 7);
    (v840)(v218, 1, 1, v852);
    v210(v216 + v215[8], 1, 1, v209);
    v860(v216, v213, v214);
    (v844)(v213, v214);
    v219 = v215[6];
    sub_1CFDAC3A0(0);
    (*(*(v220 - 8) + 56))(v216 + v219, 1, 1, v220);
    *(v216 + v215[9]) = 0;
    *(v216 + *(v212 + 20)) = 6;
    swift_storeEnumTagMultiPayload();
    v221 = *(v842 + 56);
    v222 = v822;
    v223 = v843;
    (v221)(v822, 1, 1, v843);
    v224 = *(v212 + 24);
    (v221)(v216 + v224, 1, 1, v223);
    v225 = v810;
    sub_1CFDE4A38(v222, v216 + v224, qword_1EDC32C28, type metadata accessor for SleepingSampleBaseline);
    if ((*(v858 + 48))(v225, 1, v212) != 1)
    {
      sub_1CFDE4BA4(v225, &qword_1EDC31D38, type metadata accessor for SleepingSampleBaselineComparison);
    }

    v226 = v823;
    v227 = MEMORY[0x1E69698A0];
    v228 = v221;
  }

  else
  {
    v229 = v763 * 7.0 + 60.0;
    v204(v787, v863, v859);
    v230 = v857;
    v231 = v861;
    v832 = *(v857 + 16);
    v761 = (v857 + 16);
    v832(v788, v206, v861);
    v232 = objc_opt_self();
    v744 = objc_opt_self();
    v233 = [v744 _countPerMinuteUnit];
    v745 = v232;
    v746 = [v232 quantityWithUnit:v233 doubleValue:v229];

    v234 = objc_opt_self();
    v235 = sub_1CFE307A4();
    v236 = sub_1CFE30454();
    v237 = [v234 hk:v235 sleepDayStartForMorningIndex:v236 calendar:?];

    sub_1CFE302F4();
    (*(v230 + 56))(v825, 1, 1, v231);
    v238 = sub_1CFE304E4();
    (*(*(v238 - 8) + 56))(v826, 1, 1, v238);
    v743 = 1;
    LODWORD(v763) = 1;
    v239 = v849;
    sub_1CFE30124();
    v240 = *MEMORY[0x1E69698A0];
    v241 = v838;
    (*(v853 + 104))();
    v242 = v835;
    v243 = v828;
    v244 = v829;
    (*(v835 + 104))(v828, *MEMORY[0x1E69699C8], v829);
    v245 = v836;
    v246 = v824;
    v247 = v830;
    (*(v836 + 104))(v824, *MEMORY[0x1E6969998], v830);
    v248 = v848;
    sub_1CFE30484();
    (*(v245 + 8))(v246, v247);
    v249 = *(v242 + 8);
    v250 = v855;
    v249(v243, v244);
    (*(v853 + 8))(v241, v854);
    (*(v834 + 8))(v239, v827);
    v251 = v837;
    v252 = v837[1];
    v252(v248, v250);
    v253 = v762;
    sub_1CFDE4AA4(v840, v762);
    v254 = (v251[6])(v253, 1, v250);
    v255 = v789;
    if (v254 != 1)
    {
      (v251[4])(v248, v253, v250);
      (v251[2])(v808, v248, v250);
      sub_1CFE2FFF4();
      v252(v248, v250);
      LODWORD(v763) = 0;
    }

    sub_1CFDE4BA4(v840, &qword_1EDC32C70, MEMORY[0x1E6969530]);
    v256 = *(v851 + 7);
    (v256)(v255, LODWORD(v763), 1, v852);
    v257 = v847;
    v258 = v831;
    (v846)(v831 + *(v847 + 32), 1, 1, v250);
    v259 = v787;
    v260 = v859;
    v860(v258, v787, v859);
    v261 = v788;
    v262 = v861;
    v832(&v258[v257[5]], v788, v861);
    v263 = v257[6];
    v264 = COERCE_DOUBLE(sub_1CFDA6E64(0, &qword_1EDC32C80, 0x1E696C348));
    v265 = v746;
    v763 = v264;
    sub_1CFE306B4();
    sub_1CFDAC3A0(0);
    (*(*(v266 - 8) + 56))(&v258[v263], 0, 1, v266);

    (*(v857 + 8))(v261, v262);
    (v844)(v259, v260);
    sub_1CFDE4B24(v789, &v258[v257[7]]);
    v258[v257[9]] = 4;
    v267 = v779;
    v840 = v256;
    if (v833)
    {
      static SleepingSampleBaselineAvailability.available(on:count:)(v863, 49, v779);
      v268 = v744;
      v269 = [v744 _countPerMinuteUnit];
      v270 = v745;
      v271 = [v745 quantityWithUnit:v269 doubleValue:60.0];

      v272 = objc_allocWithZone(MEMORY[0x1E696C350]);
      v273 = [v268 _countPerMinuteUnit];
      v274 = [v270 quantityWithUnit:v273 doubleValue:53.0];

      v275 = [v268 _countPerMinuteUnit];
      v276 = [v270 quantityWithUnit:v275 doubleValue:67.0];

      v277 = [v272 initWithMinimum:v274 maximum:v276 isMinimumInclusive:1 isMaximumInclusive:1];
      v278 = [v268 _countPerMinuteUnit];
      v279 = [v270 quantityWithUnit:v278 doubleValue:3.5];

      v280 = objc_allocWithZone(MEMORY[0x1E696C350]);
      v281 = [v268 _countPerMinuteUnit];
      v282 = [v270 quantityWithUnit:v281 doubleValue:53.0];

      v283 = [v268 _countPerMinuteUnit];
      v284 = [v270 quantityWithUnit:v283 doubleValue:67.0];

      v285 = [v280 initWithMinimum:v282 maximum:v284 isMinimumInclusive:1 isMaximumInclusive:1];
      if ([v277 containsQuantity_])
      {
        v286 = v271;
        v287 = v747;
        sub_1CFE306B4();
        v288 = v843;
        v289 = *(v843 + 20);
        sub_1CFDA6E64(0, &qword_1EDC32918, 0x1E696C350);
        v290 = v277;
        sub_1CFE306B4();
        v291 = *(v288 + 24);
        v292 = v279;
        sub_1CFE306B4();
        v293 = v287 + *(v288 + 28);
        v294 = v288;
        sub_1CFE306B4();

        v295 = v753;
        sub_1CFDB369C(v287, v753, type metadata accessor for SleepingSampleBaseline);
        v296 = 0;
      }

      else
      {

        v296 = 1;
        v294 = v843;
        v295 = v753;
      }

      v299 = v842;
      v228 = *(v842 + 56);
      (v228)(v295, v296, 1, v294);
      v300 = (*(v299 + 48))(v295, 1, v294);
      v298 = v841;
      v226 = v823;
      if (v300)
      {
        sub_1CFDE4BA4(v295, qword_1EDC32C28, type metadata accessor for SleepingSampleBaseline);
        v297 = v765;
        v301 = v765;
        v302 = 1;
      }

      else
      {
        v297 = v765;
        sub_1CFDB369C(v295, v765, type metadata accessor for SleepingSampleBaseline);
        v301 = v297;
        v302 = 0;
      }

      (v228)(v301, v302, 1, v294);
      v267 = v779;
    }

    else
    {
      *v779 = 6;
      swift_storeEnumTagMultiPayload();
      v228 = *(v842 + 56);
      v297 = v765;
      v294 = v843;
      (v228)(v765, 1, 1, v843);
      v298 = v841;
      v226 = v823;
    }

    v303 = *(v298 + 24);
    v304 = v810;
    (v228)(&v810[v303], 1, 1, v294);
    sub_1CFDB369C(v831, v304, type metadata accessor for SleepingSampleAggregate);
    sub_1CFDB369C(v267, v304 + *(v298 + 20), type metadata accessor for SleepingSampleBaselineAvailability);
    sub_1CFDE4A38(v297, v304 + v303, qword_1EDC32C28, type metadata accessor for SleepingSampleBaseline);
    v831 = *(v858 + 56);
    v831(v304, 0, 1, v298);
    sub_1CFDB369C(v304, v818, type metadata accessor for SleepingSampleBaselineComparison);
    v227 = MEMORY[0x1E69698A0];
  }

  if (v792)
  {
    v305 = v228;
    v306 = v841;
    v831(v812, 1, 1, v841);
    v308 = v859;
    v307 = v860;
    v860(v226, v863, v859);
    v309 = v847;
    v310 = v819;
    v832(v819 + *(v847 + 20), v862, v861);
    (v840)(v310 + v309[7], 1, 1, v852);
    (v846)(v310 + v309[8], 1, 1, v855);
    v307(v310, v226, v308);
    (v844)(v226, v308);
    v311 = v309[6];
    sub_1CFDAC3A0(0);
    (*(*(v312 - 8) + 56))(v310 + v311, 1, 1, v312);
    *(v310 + v309[9]) = 0;
    *(v310 + *(v306 + 20)) = 6;
    swift_storeEnumTagMultiPayload();
    v313 = v822;
    v314 = v843;
    (v305)(v822, 1, 1, v843);
    v315 = *(v306 + 24);
    (v305)(v310 + v315, 1, 1, v314);
    v316 = v812;
    sub_1CFDE4A38(v313, v310 + v315, qword_1EDC32C28, type metadata accessor for SleepingSampleBaseline);
    if ((*(v858 + 48))(v316, 1, v306) != 1)
    {
      sub_1CFDE4BA4(v316, &qword_1EDC31D38, type metadata accessor for SleepingSampleBaselineComparison);
    }

    v317 = MEMORY[0x1E69699C8];
    v318 = 0x1E696C000;
    v319 = 0x1E83D0000;
    v320 = v305;
    v321 = v859;
  }

  else
  {
    v322 = v767 + 95.0;
    v860(v790, v863, v859);
    v323 = v857;
    v324 = v861;
    v831 = (v857 + 16);
    v832(v791, v862, v861);
    v325 = objc_opt_self();
    v789 = objc_opt_self();
    v326 = [v789 percentUnit];
    v792 = v325;
    v810 = [v325 quantityWithUnit:v326 doubleValue:v322 / 100.0];

    v327 = objc_opt_self();
    v328 = sub_1CFE307A4();
    v329 = sub_1CFE30454();
    v330 = [v327 hk:v328 sleepDayStartForMorningIndex:v329 calendar:?];

    sub_1CFE302F4();
    v331 = 1;
    (*(v323 + 56))(v825, 1, 1, v324);
    v332 = sub_1CFE304E4();
    (*(*(v332 - 8) + 56))(v826, 1, 1, v332);
    v743 = 1;
    sub_1CFE30124();
    v333 = v838;
    (*(v853 + 104))(v838, *v227, v854);
    v334 = v835;
    v335 = v828;
    v336 = v829;
    (*(v835 + 104))(v828, *MEMORY[0x1E69699C8], v829);
    v337 = v836;
    v338 = v824;
    v339 = v830;
    (*(v836 + 104))(v824, *MEMORY[0x1E6969998], v830);
    v340 = v848;
    sub_1CFE30484();
    (*(v337 + 8))(v338, v339);
    v341 = v335;
    v342 = v855;
    (*(v334 + 8))(v341, v336);
    (*(v853 + 8))(v333, v854);
    (*(v834 + 8))(v849, v827);
    v343 = v837;
    v344 = v837[1];
    v344(v340, v342);
    v345 = v764;
    sub_1CFDE4AA4(v811, v764);
    v346 = (v343[6])(v345, 1, v342);
    v347 = v766;
    if (v346 != 1)
    {
      (v343[4])(v340, v345, v342);
      (v343[2])(v808, v340, v342);
      sub_1CFE2FFF4();
      v344(v340, v342);
      v331 = 0;
    }

    sub_1CFDE4BA4(v811, &qword_1EDC32C70, MEMORY[0x1E6969530]);
    v840 = *(v851 + 7);
    (v840)(v347, v331, 1, v852);
    v348 = v847;
    v349 = v793;
    (v846)(&v793[*(v847 + 32)], 1, 1, v342);
    v350 = v790;
    v321 = v859;
    v860(v349, v790, v859);
    v351 = v791;
    v352 = v861;
    v832(&v349[v348[5]], v791, v861);
    v353 = v348[6];
    v354 = v347;
    v355 = sub_1CFDA6E64(0, &qword_1EDC32C80, 0x1E696C348);
    v356 = v810;
    v832 = v355;
    sub_1CFE306B4();
    sub_1CFDAC3A0(0);
    (*(*(v357 - 8) + 56))(&v349[v353], 0, 1, v357);

    (*(v857 + 8))(v351, v352);
    (v844)(v350, v321);
    sub_1CFDE4B24(v354, &v349[v348[7]]);
    v349[v348[9]] = 4;
    v358 = v780;
    if (v833)
    {
      static SleepingSampleBaselineAvailability.available(on:count:)(v863, 49, v780);
      v359 = v789;
      v360 = [v789 percentUnit];
      v361 = v792;
      v362 = [v792 quantityWithUnit:v360 doubleValue:0.95];

      v363 = objc_allocWithZone(MEMORY[0x1E696C350]);
      v364 = [v359 percentUnit];
      v365 = [v361 quantityWithUnit:v364 doubleValue:0.94];

      v366 = [v359 percentUnit];
      v367 = [v361 quantityWithUnit:v366 doubleValue:0.96];

      v368 = [v363 initWithMinimum:v365 maximum:v367 isMinimumInclusive:1 isMaximumInclusive:1];
      v369 = [v359 percentUnit];
      v370 = [v361 quantityWithUnit:v369 doubleValue:0.005];

      v371 = objc_allocWithZone(MEMORY[0x1E696C350]);
      v372 = [v359 percentUnit];
      v373 = [v361 quantityWithUnit:v372 doubleValue:0.94];

      v374 = [v359 percentUnit];
      v375 = [v361 quantityWithUnit:v374 doubleValue:0.96];

      v376 = [v371 initWithMinimum:v373 maximum:v375 isMinimumInclusive:1 isMaximumInclusive:1];
      if ([v368 containsQuantity_])
      {
        v377 = v362;
        v378 = v748;
        sub_1CFE306B4();
        v379 = v843;
        v380 = *(v843 + 20);
        sub_1CFDA6E64(0, &qword_1EDC32918, 0x1E696C350);
        v381 = v368;
        sub_1CFE306B4();
        v382 = *(v379 + 24);
        v383 = v370;
        sub_1CFE306B4();
        v384 = v378 + *(v379 + 28);
        sub_1CFE306B4();

        v385 = v754;
        sub_1CFDB369C(v378, v754, type metadata accessor for SleepingSampleBaseline);
        v386 = 0;
      }

      else
      {

        v386 = 1;
        v379 = v843;
        v385 = v754;
      }

      v388 = v842;
      v389 = *(v842 + 56);
      (v389)(v385, v386, 1, v379);
      v390 = (*(v388 + 48))(v385, 1, v379);
      v317 = MEMORY[0x1E69699C8];
      v387 = v769;
      v358 = v780;
      if (v390)
      {
        sub_1CFDE4BA4(v385, qword_1EDC32C28, type metadata accessor for SleepingSampleBaseline);
        v391 = v387;
        v392 = 1;
      }

      else
      {
        sub_1CFDB369C(v385, v769, type metadata accessor for SleepingSampleBaseline);
        v391 = v387;
        v392 = 0;
      }

      (v389)(v391, v392, 1, v379);
      v320 = v389;
      v321 = v859;
    }

    else
    {
      *v780 = 6;
      swift_storeEnumTagMultiPayload();
      v320 = *(v842 + 56);
      v387 = v769;
      v379 = v843;
      (v320)(v769, 1, 1, v843);
      v317 = MEMORY[0x1E69699C8];
    }

    v393 = v841;
    v394 = *(v841 + 24);
    v395 = v812;
    (v320)(v812 + v394, 1, 1, v379);
    sub_1CFDB369C(v793, v395, type metadata accessor for SleepingSampleAggregate);
    sub_1CFDB369C(v358, v395 + *(v393 + 20), type metadata accessor for SleepingSampleBaselineAvailability);
    sub_1CFDE4A38(v387, v395 + v394, qword_1EDC32C28, type metadata accessor for SleepingSampleBaseline);
    v831 = *(v858 + 56);
    v831(v395, 0, 1, v393);
    sub_1CFDB369C(v395, v819, type metadata accessor for SleepingSampleBaselineComparison);
    v318 = 0x1E696C000uLL;
    v319 = 0x1E83D0000uLL;
  }

  LODWORD(v812) = a10;
  if (v796)
  {
    v396 = v841;
    v831(v813, 1, 1, v841);
    v397 = v823;
    v398 = v860;
    v860(v823, v863, v321);
    v399 = v847;
    v400 = v320;
    v401 = v820;
    v402 = v820 + *(v847 + 20);
    v832 = *(v857 + 16);
    v832(v402, v862, v861);
    (v840)(v401 + v399[7], 1, 1, v852);
    (v846)(v401 + v399[8], 1, 1, v855);
    v398(v401, v397, v321);
    (v844)(v397, v321);
    v403 = v399[6];
    sub_1CFDAC3A0(0);
    (*(*(v404 - 8) + 56))(v401 + v403, 1, 1, v404);
    *(v401 + v399[9]) = 0;
    *(v401 + *(v396 + 20)) = 6;
    swift_storeEnumTagMultiPayload();
    v405 = v822;
    v406 = v843;
    (v400)(v822, 1, 1, v843);
    v407 = *(v396 + 24);
    v815 = v400;
    (v400)(v401 + v407, 1, 1, v406);
    v408 = v813;
    sub_1CFDE4A38(v405, v401 + v407, qword_1EDC32C28, type metadata accessor for SleepingSampleBaseline);
    if ((*(v858 + 48))(v408, 1, v396) != 1)
    {
      sub_1CFDE4BA4(v408, &qword_1EDC31D38, type metadata accessor for SleepingSampleBaselineComparison);
    }

    v409 = MEMORY[0x1E69699C8];
  }

  else
  {
    v410 = *&v771 + 15.0;
    v860(v794, v863, v321);
    v411 = v857;
    v412 = v861;
    v832 = *(v857 + 16);
    v831 = (v857 + 16);
    v832(v795, v862, v861);
    v413 = objc_opt_self();
    v414 = *(v318 + 1296);
    v415 = objc_opt_self();
    v416 = *(v319 + 3224);
    v796 = v415;
    v417 = [v415 v416];
    v810 = v413;
    v811 = [v413 quantityWithUnit:v417 doubleValue:v410];

    v418 = objc_opt_self();
    v419 = sub_1CFE307A4();
    v420 = sub_1CFE30454();
    v421 = [v418 hk:v419 sleepDayStartForMorningIndex:v420 calendar:?];

    v422 = v848;
    sub_1CFE302F4();

    v423 = 1;
    (*(v411 + 56))(v825, 1, 1, v412);
    v424 = sub_1CFE304E4();
    (*(*(v424 - 8) + 56))(v826, 1, 1, v424);
    v743 = 1;
    sub_1CFE30124();
    v425 = v838;
    (*(v853 + 104))(v838, *MEMORY[0x1E69698A0], v854);
    v426 = v835;
    v427 = v828;
    v428 = v829;
    (*(v835 + 104))(v828, *v317, v829);
    v429 = v836;
    v430 = v824;
    v431 = v830;
    (*(v836 + 104))(v824, *MEMORY[0x1E6969998], v830);
    sub_1CFE30484();
    (*(v429 + 8))(v430, v431);
    v432 = v427;
    v433 = v855;
    (*(v426 + 8))(v432, v428);
    (*(v853 + 8))(v425, v854);
    (*(v834 + 8))(v849, v827);
    v434 = v837;
    v435 = v837[1];
    v435(v422, v433);
    v436 = v768;
    sub_1CFDE4AA4(v815, v768);
    v437 = (v434[6])(v436, 1, v433);
    v438 = v770;
    if (v437 != 1)
    {
      (v434[4])(v422, v436, v433);
      (v434[2])(v808, v422, v433);
      sub_1CFE2FFF4();
      v435(v422, v433);
      v423 = 0;
    }

    sub_1CFDE4BA4(v815, &qword_1EDC32C70, MEMORY[0x1E6969530]);
    v840 = *(v851 + 7);
    (v840)(v438, v423, 1, v852);
    v439 = v847;
    v440 = v797;
    (v846)(&v797[*(v847 + 32)], 1, 1, v433);
    v441 = v794;
    v442 = v859;
    v860(v440, v794, v859);
    v443 = v795;
    v444 = v861;
    v832(&v440[v439[5]], v795, v861);
    v445 = v439[6];
    sub_1CFDA6E64(0, &qword_1EDC32C80, 0x1E696C348);
    v446 = v811;
    sub_1CFE306B4();
    sub_1CFDAC3A0(0);
    (*(*(v447 - 8) + 56))(&v440[v445], 0, 1, v447);

    (*(v857 + 8))(v443, v444);
    (v844)(v441, v442);
    sub_1CFDE4B24(v438, &v440[v439[7]]);
    v440[v439[9]] = 4;
    v448 = v781;
    if (v833)
    {
      static SleepingSampleBaselineAvailability.available(on:count:)(v863, 49, v781);
      v449 = v796;
      v450 = [v796 _countPerMinuteUnit];
      v451 = v810;
      v831 = [v810 quantityWithUnit:v450 doubleValue:15.0];

      v452 = objc_allocWithZone(MEMORY[0x1E696C350]);
      v453 = [v449 _countPerMinuteUnit];
      v454 = [v451 quantityWithUnit:v453 doubleValue:14.0];

      v455 = [v449 _countPerMinuteUnit];
      v456 = [v451 quantityWithUnit:v455 doubleValue:16.0];

      v457 = [v452 initWithMinimum:v454 maximum:v456 isMinimumInclusive:1 isMaximumInclusive:1];
      v458 = [v449 _countPerMinuteUnit];
      v459 = [v451 quantityWithUnit:v458 doubleValue:0.5];

      v460 = objc_allocWithZone(MEMORY[0x1E696C350]);
      v461 = [v449 _countPerMinuteUnit];
      v462 = [v451 quantityWithUnit:v461 doubleValue:14.0];

      v463 = [v449 _countPerMinuteUnit];
      v464 = [v451 quantityWithUnit:v463 doubleValue:16.0];

      v465 = v831;
      v466 = [v460 initWithMinimum:v462 maximum:v464 isMinimumInclusive:1 isMaximumInclusive:1];

      if ([v457 containsQuantity_])
      {
        v467 = v465;
        v468 = v749;
        sub_1CFE306B4();
        v469 = v459;
        v470 = v843;
        v471 = *(v843 + 20);
        sub_1CFDA6E64(0, &qword_1EDC32918, 0x1E696C350);
        v472 = v457;
        sub_1CFE306B4();
        v473 = *(v470 + 24);
        v474 = v469;
        sub_1CFE306B4();
        v475 = v468 + *(v470 + 28);
        sub_1CFE306B4();

        v476 = v755;
        sub_1CFDB369C(v468, v755, type metadata accessor for SleepingSampleBaseline);
        v477 = 0;
      }

      else
      {

        v477 = 1;
        v470 = v843;
        v476 = v755;
      }

      v480 = v842;
      v478 = *(v842 + 56);
      (v478)(v476, v477, 1, v470);
      v481 = (*(v480 + 48))(v476, 1, v470);
      v482 = v476;
      v409 = MEMORY[0x1E69699C8];
      v479 = v772;
      v448 = v781;
      if (v481)
      {
        sub_1CFDE4BA4(v482, qword_1EDC32C28, type metadata accessor for SleepingSampleBaseline);
        v483 = v479;
        v484 = 1;
      }

      else
      {
        sub_1CFDB369C(v482, v772, type metadata accessor for SleepingSampleBaseline);
        v483 = v479;
        v484 = 0;
      }

      (v478)(v483, v484, 1, v470);
    }

    else
    {
      *v781 = 6;
      swift_storeEnumTagMultiPayload();
      v478 = *(v842 + 56);
      v479 = v772;
      v470 = v843;
      (v478)(v772, 1, 1, v843);
      v409 = MEMORY[0x1E69699C8];
    }

    v396 = v841;
    v485 = *(v841 + 24);
    v486 = v813;
    v815 = v478;
    (v478)(&v813[v485], 1, 1, v470);
    sub_1CFDB369C(v797, v486, type metadata accessor for SleepingSampleAggregate);
    sub_1CFDB369C(v448, v486 + *(v396 + 20), type metadata accessor for SleepingSampleBaselineAvailability);
    sub_1CFDE4A38(v479, v486 + v485, qword_1EDC32C28, type metadata accessor for SleepingSampleBaseline);
    v831 = *(v858 + 56);
    v831(v486, 0, 1, v396);
    sub_1CFDB369C(v486, v820, type metadata accessor for SleepingSampleBaselineComparison);
  }

  v487 = v846;
  LODWORD(v813) = a12;
  if (v812)
  {
    v488 = v802;
    v831(v802, 1, 1, v396);
    v489 = v823;
    v491 = v859;
    v490 = v860;
    v860(v823, v863, v859);
    v492 = v847;
    v493 = v821;
    v832(v821 + *(v847 + 20), v862, v861);
    (v840)(v493 + v492[7], 1, 1, v852);
    v487(v493 + v492[8], 1, 1, v855);
    v490(v493, v489, v491);
    (v844)(v489, v491);
    v494 = v492[6];
    sub_1CFDAC3A0(0);
    (*(*(v495 - 8) + 56))(v493 + v494, 1, 1, v495);
    *(v493 + v492[9]) = 0;
    *(v493 + *(v396 + 20)) = 6;
    swift_storeEnumTagMultiPayload();
    v496 = v822;
    v497 = v843;
    v498 = v815;
    (v815)(v822, 1, 1, v843);
    v499 = *(v396 + 24);
    (v498)(v493 + v499, 1, 1, v497);
    sub_1CFDE4A38(v496, v493 + v499, qword_1EDC32C28, type metadata accessor for SleepingSampleBaseline);
    v500 = v396;
    if ((*(v858 + 48))(v488, 1, v396) != 1)
    {
      sub_1CFDE4BA4(v488, &qword_1EDC31D38, type metadata accessor for SleepingSampleBaselineComparison);
    }

    goto LABEL_73;
  }

  v501 = v773;
  (v860)(v799);
  v502 = v857;
  v503 = v861;
  v812 = v857 + 16;
  v832(v800, v862, v861);
  v504 = objc_opt_self();
  v796 = objc_opt_self();
  v505 = [v796 _changeInDegreeCelsiusUnit];
  v797 = v504;
  v811 = [v504 quantityWithUnit:v505 doubleValue:v501];

  v506 = objc_opt_self();
  v507 = sub_1CFE307A4();
  v508 = sub_1CFE30454();
  v795 = v506;
  v509 = [v506 hk:v507 sleepDayStartForMorningIndex:v508 calendar:?];

  v510 = v848;
  sub_1CFE302F4();

  v511 = *(v502 + 56);
  v794 = (v502 + 56);
  v793 = v511;
  (v511)(v825, 1, 1, v503);
  v512 = sub_1CFE304E4();
  v513 = *(v512 - 1);
  v514 = *(v513 + 56);
  v792 = v512;
  v791 = v514;
  v790 = (v513 + 56);
  (v514)(v826, 1, 1);
  v743 = 1;
  v515 = v409;
  v516 = v849;
  sub_1CFE30124();
  v517 = *(v853 + 104);
  v518 = v838;
  LODWORD(v788) = *MEMORY[0x1E69698A0];
  v789 = (v853 + 104);
  v787 = v517;
  (v517)(v838);
  v519 = v835;
  v520 = *(v835 + 104);
  v521 = v828;
  LODWORD(v780) = *v515;
  v522 = v829;
  v781 = (v835 + 104);
  v779 = v520;
  (v520)(v828);
  v523 = v836;
  v524 = *(v836 + 104);
  v525 = v824;
  LODWORD(v772) = *MEMORY[0x1E6969998];
  v526 = v830;
  *&v773 = v836 + 104;
  v771 = v524;
  v524(v824);
  sub_1CFE30484();
  v527 = *(v523 + 8);
  v770 = (v523 + 8);
  v769 = v527;
  (v527)(v525, v526);
  v528 = (v519 + 8);
  v768 = *(v519 + 8);
  (v768)(v521, v522);
  v529 = (v853 + 8);
  v530 = *(v853 + 8);
  v531 = v518;
  v532 = v854;
  (v530)(v531);
  v533 = (v834 + 8);
  v767 = *(v834 + 8);
  (*&v767)(v516, v827);
  v534 = v837;
  v535 = v837[1];
  v536 = v510;
  v537 = v798;
  v538 = v855;
  v810 = (v837 + 1);
  (v535)(v536, v855);
  v539 = (v534 + 6);
  v766 = v534[6];
  if ((v766)(v537, 1, v538) == 1)
  {
    sub_1CFDE4BA4(v537, &qword_1EDC32C70, MEMORY[0x1E6969530]);
    _s5ErrorOMa();
    sub_1CFDA77A8(&qword_1EC509850, _s5ErrorOMa);
    v540 = swift_allocError();
    *v541 = xmmword_1CFE34CF0;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
LABEL_60:
    v559 = v846;
    v560 = v775;
    goto LABEL_61;
  }

  v542 = *(v534 + 4);
  v764 = v534 + 4;
  v763 = *&v542;
  v542(v774, v537, v538);
  v543 = sub_1CFE307A4();
  v798 = v528;
  v544 = v543;
  v545 = sub_1CFE30454();
  v546 = [v795 hk:v544 sleepDayStartForMorningIndex:v545 calendar:?];
  v795 = v529;
  v547 = v546;

  sub_1CFE302F4();
  (v793)(v825, 1, 1, v861);
  (v791)(v826, 1, 1, v792);
  v743 = 1;
  v793 = v530;
  v548 = v849;
  sub_1CFE30124();
  v794 = v539;
  v549 = v838;
  v550 = v532;
  (v787)(v838, v788, v532);
  v551 = v828;
  v552 = v829;
  (v779)(v828, v780, v829);
  v765 = v535;
  v553 = v824;
  v792 = v533;
  v554 = v830;
  v771(v824, v772, v830);
  v555 = v756;
  v556 = v848;
  sub_1CFE30484();
  (v769)(v553, v554);
  (v768)(v551, v552);
  (v793)(v549, v550);
  v538 = v855;
  (*&v767)(v548, v827);
  v557 = v765;
  (v765)(v556, v538);
  if ((v766)(v555, 1, v538) == 1)
  {
    sub_1CFDE4BA4(v555, &qword_1EDC32C70, MEMORY[0x1E6969530]);
    _s5ErrorOMa();
    sub_1CFDA77A8(&qword_1EC509850, _s5ErrorOMa);
    v540 = swift_allocError();
    *v558 = xmmword_1CFE34CE0;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    v557(v774, v538);
    goto LABEL_60;
  }

  v605 = v750;
  (*&v763)(v750, v555, v538);
  sub_1CFDA77A8(&qword_1EDC32030, MEMORY[0x1E6969530]);
  v606 = v774;
  v607 = sub_1CFE30874();
  v559 = v846;
  v560 = v775;
  if (v607)
  {
    v608 = v837[2];
    v609 = v606;
    v608(v848, v606, v538);
    v608(v808, v605, v538);
    sub_1CFE2FFE4();
    v610 = v765;
    (v765)(v605, v538);
    v610(v609, v538);
    v561 = 0;
    goto LABEL_62;
  }

  v736 = v606;
  v798 = _s5ErrorOMa();
  sub_1CFDA77A8(&qword_1EC509850, _s5ErrorOMa);
  v540 = swift_allocError();
  v738 = v737;
  sub_1CFDE4C00(0, &qword_1EC509858, MEMORY[0x1E6969530]);
  v740 = *(v739 + 48);
  v741 = v837[2];
  v741(v738, v736, v538);
  v741(v738 + v740, v605, v538);
  swift_storeEnumTagMultiPayload();
  swift_willThrow();
  v742 = v765;
  (v765)(v605, v538);
  v742(v736, v538);
LABEL_61:

  v561 = 1;
LABEL_62:
  (v840)(v560, v561, 1, v852);
  v562 = v847;
  v563 = v801;
  v559(&v801[*(v847 + 32)], 1, 1, v538);
  v564 = v799;
  v565 = v859;
  v860(v563, v799, v859);
  v566 = v800;
  v567 = v861;
  v832(&v563[v562[5]], v800, v861);
  v568 = v562[6];
  v569 = sub_1CFDA6E64(0, &qword_1EDC32C80, 0x1E696C348);
  v570 = v811;
  v812 = v569;
  sub_1CFE306B4();
  sub_1CFDAC3A0(0);
  (*(*(v571 - 8) + 56))(&v563[v568], 0, 1, v571);

  (*(v857 + 8))(v566, v567);
  (v844)(v564, v565);
  sub_1CFDE4B24(v560, &v563[v562[7]]);
  v563[v562[9]] = 4;
  if (v833)
  {
    static SleepingSampleBaselineAvailability.available(on:count:)(v863, 49, v782);
    v572 = v796;
    v573 = [v796 _changeInDegreeCelsiusUnit];
    v574 = v797;
    v575 = [v797 quantityWithUnit:v573 doubleValue:0.0];

    v576 = objc_allocWithZone(MEMORY[0x1E696C350]);
    v577 = [v572 _changeInDegreeCelsiusUnit];
    v578 = [v574 quantityWithUnit:v577 doubleValue:-1.0];

    v579 = [v572 _changeInDegreeCelsiusUnit];
    v580 = [v574 quantityWithUnit:v579 doubleValue:1.0];

    v581 = [v576 initWithMinimum:v578 maximum:v580 isMinimumInclusive:1 isMaximumInclusive:1];
    v582 = [v572 _changeInDegreeCelsiusUnit];
    v583 = [v574 quantityWithUnit:v582 doubleValue:0.5];

    v584 = objc_allocWithZone(MEMORY[0x1E696C350]);
    v585 = [v572 _changeInDegreeCelsiusUnit];
    v586 = [v574 quantityWithUnit:v585 doubleValue:-1.0];

    v587 = [v572 _changeInDegreeCelsiusUnit];
    v588 = [v574 quantityWithUnit:v587 doubleValue:1.0];

    v589 = [v584 initWithMinimum:v586 maximum:v588 isMinimumInclusive:1 isMaximumInclusive:1];
    if ([v581 containsQuantity_])
    {
      v590 = v575;
      v591 = v751;
      sub_1CFE306B4();
      v592 = v843;
      v593 = *(v843 + 20);
      sub_1CFDA6E64(0, &qword_1EDC32918, 0x1E696C350);
      v594 = v581;
      sub_1CFE306B4();
      v595 = *(v592 + 24);
      v596 = v583;
      sub_1CFE306B4();
      v597 = v591 + *(v592 + 28);
      sub_1CFE306B4();

      v497 = v592;
      v598 = v757;
      sub_1CFDB369C(v591, v757, type metadata accessor for SleepingSampleBaseline);
      v599 = 0;
      v600 = v842;
    }

    else
    {

      v599 = 1;
      v497 = v843;
      v600 = v842;
      v598 = v757;
    }

    v611 = v840;
    v498 = v815;
    (v815)(v598, v599, 1, v497);
    v612 = (*(v600 + 48))(v598, 1, v497);
    v603 = v841;
    v604 = v777;
    v601 = v782;
    v840 = v611;
    if (v612)
    {
      sub_1CFDE4BA4(v598, qword_1EDC32C28, type metadata accessor for SleepingSampleBaseline);
      v602 = 1;
    }

    else
    {
      sub_1CFDB369C(v598, v777, type metadata accessor for SleepingSampleBaseline);
      v602 = 0;
    }
  }

  else
  {
    v601 = v782;
    *v782 = 6;
    swift_storeEnumTagMultiPayload();
    v602 = 1;
    v497 = v843;
    v603 = v841;
    v604 = v777;
    v498 = v815;
  }

  (v498)(v604, v602, 1, v497);
  v613 = *(v603 + 24);
  v614 = v802;
  (v498)(&v802[v613], 1, 1, v497);
  sub_1CFDB369C(v801, v614, type metadata accessor for SleepingSampleAggregate);
  sub_1CFDB369C(v601, v614 + *(v603 + 20), type metadata accessor for SleepingSampleBaselineAvailability);
  sub_1CFDE4A38(v604, v614 + v613, qword_1EDC32C28, type metadata accessor for SleepingSampleBaseline);
  v500 = v603;
  v831(v614, 0, 1, v603);
  sub_1CFDB369C(v614, v821, type metadata accessor for SleepingSampleBaselineComparison);
LABEL_73:
  v615 = MEMORY[0x1E69698A0];
  if (v813)
  {
    v616 = v500;
    v831(v814, 1, 1, v500);
    v617 = v823;
    v815 = v498;
    v619 = v859;
    v618 = v860;
    v860(v823, v863, v859);
    v620 = v847;
    v621 = v806;
    v832(v806 + *(v847 + 20), v862, v861);
    (v840)(v621 + v620[7], 1, 1, v852);
    v622 = v846;
    v623 = v497;
    (v846)(v621 + v620[8], 1, 1, v855);
    v624 = v622;
    v618(v621, v617, v619);
    (v844)(v617, v619);
    v625 = v620[6];
    sub_1CFDAC3A0(0);
    (*(*(v626 - 8) + 56))(v621 + v625, 1, 1, v626);
    *(v621 + v620[9]) = 0;
    *(v621 + *(v616 + 20)) = 6;
    swift_storeEnumTagMultiPayload();
    v627 = v621;
    v628 = v822;
    v629 = v815;
    (v815)(v822, 1, 1, v623);
    v630 = *(v616 + 24);
    v631 = v814;
    v629(v627 + v630, 1, 1, v623);
    sub_1CFDE4A38(v628, v627 + v630, qword_1EDC32C28, type metadata accessor for SleepingSampleBaseline);
    if ((*(v858 + 48))(v631, 1, v616) != 1)
    {
      sub_1CFDE4BA4(v631, &qword_1EDC31D38, type metadata accessor for SleepingSampleBaselineComparison);
    }
  }

  else
  {
    v860(v803, v863, v859);
    v632 = v857;
    v633 = v861;
    v840 = (v857 + 16);
    v832(v804, v862, v861);
    v634 = objc_opt_self();
    v789 = objc_opt_self();
    v635 = [v789 secondUnit];
    v790 = v634;
    v831 = [v634 quantityWithUnit:v635 doubleValue:a11 * 3600.0 + 25200.0];

    v636 = objc_opt_self();
    v637 = sub_1CFE307A4();
    v638 = sub_1CFE30454();
    v823 = v636;
    v639 = [v636 hk:v637 sleepDayStartForMorningIndex:v638 calendar:?];

    sub_1CFE302F4();
    v640 = *(v632 + 56);
    v822 = (v632 + 56);
    v815 = v640;
    (v640)(v825, 1, 1, v633);
    v641 = sub_1CFE304E4();
    v642 = *(v641 - 8);
    v643 = *(v642 + 56);
    v813 = v641;
    v812 = v643;
    v811 = (v642 + 56);
    v643(v826, 1, 1);
    v743 = 1;
    sub_1CFE30124();
    v644 = v853;
    v645 = *(v853 + 104);
    LODWORD(v810) = *v615;
    v802 = (v853 + 104);
    v801 = v645;
    (v645)(v838);
    v646 = v835;
    v647 = *(v835 + 104);
    v648 = v828;
    LODWORD(v800) = *MEMORY[0x1E69699C8];
    v649 = v829;
    v799 = (v835 + 104);
    v798 = v647;
    (v647)(v828);
    v650 = v836;
    v651 = *(v836 + 104);
    v652 = v824;
    LODWORD(v797) = *MEMORY[0x1E6969998];
    v653 = v830;
    v796 = (v836 + 104);
    v795 = v651;
    (v651)(v824);
    v654 = v760;
    v655 = v848;
    sub_1CFE30484();
    v656 = *(v650 + 8);
    v836 = v650 + 8;
    v794 = v656;
    (v656)(v652, v653);
    v657 = *(v646 + 8);
    v835 = v646 + 8;
    v793 = v657;
    (v657)(v648, v649);
    v658 = v654;
    v659 = *(v644 + 8);
    v853 = v644 + 8;
    v792 = v659;
    (v659)(v838, v854);
    v660 = v655;
    v661 = *(v834 + 8);
    v834 += 8;
    v791 = v661;
    (v661)(v849, v827);
    v662 = v837;
    v663 = v837 + 1;
    v664 = v837[1];
    v665 = v655;
    v666 = v855;
    v664(v665, v855);
    v667 = v654;
    v668 = v776;
    sub_1CFDE4AA4(v667, v776);
    v669 = 1;
    if ((v662[6])(v668, 1, v666) != 1)
    {
      (v662[4])(v660, v668, v666);
      v670 = v808;
      (v662[2])(v808, v660, v666);
      sub_1CFE302C4();
      sub_1CFE2FFF4();
      v664(v670, v666);
      v664(v660, v666);
      v669 = 0;
    }

    sub_1CFDE4BA4(v658, &qword_1EDC32C70, MEMORY[0x1E6969530]);
    (*(v851 + 7))(v809, v669, 1, v852);
    v671 = sub_1CFE307A4();
    v852 = v663;
    v672 = v671;
    v673 = sub_1CFE30454();
    v674 = [v823 hk:v672 sleepDayStartForMorningIndex:v673 calendar:?];

    sub_1CFE302F4();
    (v815)(v825, 1, 1, v861);
    (v812)(v826, 1, 1, v813);
    v743 = 1;
    v851 = v664;
    v675 = v849;
    sub_1CFE30124();
    v676 = v838;
    v677 = v854;
    (v801)(v838, v810, v854);
    v678 = v828;
    v679 = v829;
    (v798)(v828, v800, v829);
    v680 = v824;
    v681 = v830;
    (v795)(v824, v797, v830);
    v682 = v847;
    v683 = v805;
    v684 = v805 + *(v847 + 32);
    sub_1CFE30484();
    (v794)(v680, v681);
    (v793)(v678, v679);
    v685 = v855;
    (v792)(v676, v677);
    (v791)(v675, v827);
    v851(v848, v685);
    v686 = v803;
    v687 = v859;
    v860(v683, v803, v859);
    v688 = v804;
    v689 = v861;
    v832(v683 + *(v682 + 20), v804, v861);
    v690 = *(v682 + 24);
    v691 = v682;
    sub_1CFDA6E64(0, &qword_1EDC32C80, 0x1E696C348);
    v692 = v831;
    sub_1CFE306B4();
    sub_1CFDAC3A0(0);
    (*(*(v693 - 8) + 56))(v683 + v690, 0, 1, v693);

    (*(v857 + 8))(v688, v689);
    (v844)(v686, v687);
    sub_1CFDE4B24(v809, v683 + *(v691 + 28));
    *(v683 + *(v691 + 36)) = 4;
    if (v833)
    {
      static SleepingSampleBaselineAvailability.available(on:count:)(v863, 49, v783);
      v694 = v789;
      v695 = [v789 secondUnit];
      v696 = v790;
      v863 = [v790 quantityWithUnit:v695 doubleValue:25200.0];

      v697 = objc_allocWithZone(MEMORY[0x1E696C350]);
      v698 = [v694 secondUnit];
      v699 = [v696 quantityWithUnit:v698 doubleValue:21600.0];

      v700 = [v694 secondUnit];
      v701 = [v696 quantityWithUnit:v700 doubleValue:28800.0];

      v702 = [v697 initWithMinimum:v699 maximum:v701 isMinimumInclusive:1 isMaximumInclusive:1];
      v703 = [v694 secondUnit];
      v704 = [v696 quantityWithUnit:v703 doubleValue:1800.0];

      v705 = objc_allocWithZone(MEMORY[0x1E696C350]);
      v706 = [v694 secondUnit];
      v707 = [v696 quantityWithUnit:v706 doubleValue:21600.0];

      v708 = v863;
      v709 = [v694 secondUnit];
      v710 = [v696 quantityWithUnit:v709 doubleValue:28800.0];

      v711 = [v705 initWithMinimum:v707 maximum:v710 isMinimumInclusive:1 isMaximumInclusive:1];
      if ([v702 containsQuantity_])
      {
        v712 = v708;
        v713 = v752;
        sub_1CFE306B4();
        v714 = v843;
        v715 = *(v843 + 20);
        sub_1CFDA6E64(0, &qword_1EDC32918, 0x1E696C350);
        v716 = v702;
        sub_1CFE306B4();
        v717 = *(v714 + 24);
        v718 = v704;
        sub_1CFE306B4();
        v719 = v713 + *(v714 + 28);
        sub_1CFE306B4();

        v720 = v759;
        sub_1CFDB369C(v713, v759, type metadata accessor for SleepingSampleBaseline);
        v721 = 0;
      }

      else
      {

        v721 = 1;
        v714 = v843;
        v720 = v759;
      }

      v727 = v842;
      v723 = *(v842 + 56);
      v723(v720, v721, 1, v714);
      v728 = (*(v727 + 48))(v720, 1, v714);
      v725 = v814;
      v726 = v841;
      if (v728)
      {
        sub_1CFDE4BA4(v720, qword_1EDC32C28, type metadata accessor for SleepingSampleBaseline);
        v724 = v778;
        v729 = v778;
        v730 = 1;
      }

      else
      {
        v724 = v778;
        sub_1CFDB369C(v720, v778, type metadata accessor for SleepingSampleBaseline);
        v729 = v724;
        v730 = 0;
      }

      v723(v729, v730, 1, v714);
      v722 = v783;
    }

    else
    {
      v722 = v783;
      *v783 = 6;
      swift_storeEnumTagMultiPayload();
      v723 = *(v842 + 56);
      v724 = v778;
      v714 = v843;
      v723(v778, 1, 1, v843);
      v725 = v814;
      v726 = v841;
    }

    v731 = *(v726 + 24);
    v723(v725 + v731, 1, 1, v714);
    sub_1CFDB369C(v805, v725, type metadata accessor for SleepingSampleAggregate);
    sub_1CFDB369C(v722, v725 + *(v726 + 20), type metadata accessor for SleepingSampleBaselineAvailability);
    sub_1CFDE4A38(v724, v725 + v731, qword_1EDC32C28, type metadata accessor for SleepingSampleBaseline);
    (*(v858 + 56))(v725, 0, 1, v726);
    v627 = v806;
    sub_1CFDB369C(v725, v806, type metadata accessor for SleepingSampleBaselineComparison);
    v619 = v859;
    v624 = v846;
  }

  v732 = type metadata accessor for SleepingSampleDaySummary();
  v733 = v732[6];
  v734 = v807;
  v624(v807 + v733, 1, 1, v855);
  v735 = v734 + v732[7];
  *v735 = 0;
  *(v735 + 8) = 1;
  v784(v734, v786, v619);
  sub_1CFDB369C(v816, v734 + v732[5], sub_1CFDA7AD0);
  sub_1CFDE4A38(v817, v734 + v733, &qword_1EDC32C70, MEMORY[0x1E6969530]);
  sub_1CFDB369C(v818, v734 + v732[8], type metadata accessor for SleepingSampleBaselineComparison);
  sub_1CFDB369C(v819, v734 + v732[9], type metadata accessor for SleepingSampleBaselineComparison);
  sub_1CFDB369C(v820, v734 + v732[10], type metadata accessor for SleepingSampleBaselineComparison);
  sub_1CFDB369C(v821, v734 + v732[11], type metadata accessor for SleepingSampleBaselineComparison);
  return sub_1CFDB369C(v627, v734 + v732[12], type metadata accessor for SleepingSampleBaselineComparison);
}

uint64_t sub_1CFDE4928(uint64_t a1, uint64_t a2)
{
  sub_1CFDE4C00(0, &qword_1EDC32548, MEMORY[0x1E696B418]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1CFDE49B0(uint64_t a1, uint64_t a2)
{
  sub_1CFDE4C00(0, &qword_1EDC32548, MEMORY[0x1E696B418]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1CFDE4A38(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t))
{
  sub_1CFDB17D0(0, a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t sub_1CFDE4AA4(uint64_t a1, uint64_t a2)
{
  sub_1CFDB17D0(0, &qword_1EDC32C70, MEMORY[0x1E6969530]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1CFDE4B24(uint64_t a1, uint64_t a2)
{
  sub_1CFDB17D0(0, &qword_1EDC32C78, MEMORY[0x1E6968130]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1CFDE4BA4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_1CFDB17D0(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_1CFDE4C00(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

uint64_t sub_1CFDE4C80(uint64_t a1)
{
  v2 = sub_1CFDE7768();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CFDE4CBC(uint64_t a1)
{
  v2 = sub_1CFDE7768();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1CFDE4CF8()
{
  v1 = 0x6C62616C69617661;
  if (*v0 == 1)
  {
    v1 = 0xD000000000000012;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000022;
  }
}

uint64_t sub_1CFDE4D64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1CFDE87F0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1CFDE4D8C(uint64_t a1)
{
  v2 = sub_1CFDE7864();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CFDE4DC8(uint64_t a1)
{
  v2 = sub_1CFDE7864();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1CFDE4E10(uint64_t a1)
{
  v2 = sub_1CFDE77BC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CFDE4E4C(uint64_t a1)
{
  v2 = sub_1CFDE77BC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1CFDE4E88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1CFE310B4();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1CFDE4F08(uint64_t a1)
{
  v2 = sub_1CFDE7810();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CFDE4F44(uint64_t a1)
{
  v2 = sub_1CFDE7810();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SleepingSampleDataTypeFeatureStatus.State.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = MEMORY[0x1E69E6F58];
  sub_1CFDE7D40(0, &qword_1EC509860, sub_1CFDE7768, &type metadata for SleepingSampleDataTypeFeatureStatus.State.AvailableCodingKeys, MEMORY[0x1E69E6F58]);
  v38 = v5;
  v36 = *(v5 - 8);
  v6 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v34 = &v31 - v7;
  sub_1CFDE7D40(0, &qword_1EC509870, sub_1CFDE77BC, &type metadata for SleepingSampleDataTypeFeatureStatus.State.ConfigurationIssueCodingKeys, v4);
  v37 = v8;
  v35 = *(v8 - 8);
  v9 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v31 - v10;
  sub_1CFDE7D40(0, &qword_1EC509880, sub_1CFDE7810, &type metadata for SleepingSampleDataTypeFeatureStatus.State.HiddenDueToUnsatisfiedRequirementsCodingKeys, v4);
  v32 = *(v12 - 8);
  v33 = v12;
  v13 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v31 - v14;
  sub_1CFDE7D40(0, &qword_1EC509890, sub_1CFDE7864, &type metadata for SleepingSampleDataTypeFeatureStatus.State.CodingKeys, v4);
  v39 = *(v16 - 8);
  v40 = v16;
  v17 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v31 - v18;
  v20 = *v2;
  v21 = *(v2 + 8);
  v22 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CFDE7864();
  sub_1CFE311A4();
  if (v21)
  {
    if (v21 == 1)
    {
      v44 = 1;
      sub_1CFDE77BC();
      v23 = v40;
      sub_1CFE30FF4();
      v43 = v20 & 1;
      sub_1CFDE78B8();
      v24 = v37;
      sub_1CFE31054();
      (*(v35 + 8))(v11, v24);
      return (*(v39 + 8))(v19, v23);
    }

    else
    {
      v45 = 2;
      sub_1CFDE7768();
      v29 = v34;
      v30 = v40;
      sub_1CFE30FF4();
      (*(v36 + 8))(v29, v38);
      return (*(v39 + 8))(v19, v30);
    }
  }

  else
  {
    v26 = v32;
    v42 = 0;
    sub_1CFDE7810();
    v27 = v40;
    sub_1CFE30FF4();
    v41 = v20;
    sub_1CFDE790C();
    sub_1CFDE79B8(&qword_1EC5098B0, &qword_1EC5098B8);
    v28 = v33;
    sub_1CFE31054();
    (*(v26 + 8))(v15, v28);
    return (*(v39 + 8))(v19, v27);
  }
}

uint64_t SleepingSampleDataTypeFeatureStatus.State.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v51 = a2;
  v3 = MEMORY[0x1E69E6F48];
  sub_1CFDE7D40(0, &qword_1EC5098C0, sub_1CFDE7768, &type metadata for SleepingSampleDataTypeFeatureStatus.State.AvailableCodingKeys, MEMORY[0x1E69E6F48]);
  v47 = *(v4 - 8);
  v48 = v4;
  v5 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v53 = &v45 - v6;
  sub_1CFDE7D40(0, &qword_1EC5098C8, sub_1CFDE77BC, &type metadata for SleepingSampleDataTypeFeatureStatus.State.ConfigurationIssueCodingKeys, v3);
  v8 = *(v7 - 8);
  v49 = v7;
  v50 = v8;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v52 = &v45 - v10;
  sub_1CFDE7D40(0, &qword_1EC5098D0, sub_1CFDE7810, &type metadata for SleepingSampleDataTypeFeatureStatus.State.HiddenDueToUnsatisfiedRequirementsCodingKeys, v3);
  v12 = v11;
  v46 = *(v11 - 8);
  v13 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v45 - v14;
  sub_1CFDE7D40(0, &qword_1EC5098D8, sub_1CFDE7864, &type metadata for SleepingSampleDataTypeFeatureStatus.State.CodingKeys, v3);
  v17 = v16;
  v54 = *(v16 - 8);
  v18 = *(v54 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v45 - v19;
  v21 = a1[3];
  v22 = a1[4];
  v56 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v21);
  sub_1CFDE7864();
  v23 = v55;
  sub_1CFE31194();
  if (!v23)
  {
    v25 = v52;
    v24 = v53;
    v26 = sub_1CFE30FE4();
    v27 = (2 * *(v26 + 16)) | 1;
    v57 = v26;
    v58 = v26 + 32;
    v59 = 0;
    v60 = v27;
    v28 = sub_1CFDB4610();
    v29 = v17;
    if (v28 == 3 || v59 != v60 >> 1)
    {
      v34 = sub_1CFE30DF4();
      swift_allocError();
      v36 = v35;
      sub_1CFDCB7AC();
      v38 = *(v37 + 48);
      *v36 = &type metadata for SleepingSampleDataTypeFeatureStatus.State;
      sub_1CFE30F74();
      sub_1CFE30DD4();
      (*(*(v34 - 8) + 104))(v36, *MEMORY[0x1E69E6AF8], v34);
      swift_willThrow();
      (*(v54 + 8))(v20, v29);
      swift_unknownObjectRelease();
    }

    else
    {
      v30 = v20;
      LODWORD(v55) = v28;
      if (v28)
      {
        if (v28 == 1)
        {
          LOBYTE(v61) = 1;
          sub_1CFDE77BC();
          v31 = v29;
          sub_1CFE30F64();
          v32 = v54;
          sub_1CFDE7964();
          v33 = v49;
          sub_1CFE30FD4();
          (*(v50 + 8))(v25, v33);
          (*(v32 + 8))(v20, v31);
          swift_unknownObjectRelease();
          v44 = v61;
        }

        else
        {
          LOBYTE(v61) = 2;
          sub_1CFDE7768();
          v41 = v24;
          v42 = v29;
          sub_1CFE30F64();
          v43 = v54;
          (*(v47 + 8))(v41, v48);
          (*(v43 + 8))(v30, v42);
          swift_unknownObjectRelease();
          v44 = 0;
        }

        v40 = v51;
      }

      else
      {
        LOBYTE(v61) = 0;
        sub_1CFDE7810();
        sub_1CFE30F64();
        v40 = v51;
        sub_1CFDE790C();
        sub_1CFDE79B8(&qword_1EC5098E8, &qword_1EC5098F0);
        sub_1CFE30FD4();
        (*(v46 + 8))(v15, v12);
        (*(v54 + 8))(v20, v29);
        swift_unknownObjectRelease();
        v44 = v61;
      }

      *v40 = v44;
      *(v40 + 8) = v55;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v56);
}

unint64_t sub_1CFDE5C08()
{
  if (*v0)
  {
    result = 0xD000000000000011;
  }

  else
  {
    result = 0xD000000000000017;
  }

  *v0;
  return result;
}

uint64_t sub_1CFDE5C44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 0xD000000000000017 && 0x80000001CFE39230 == a2;
  if (v5 || (sub_1CFE310B4() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001CFE39250 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1CFE310B4();

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

uint64_t sub_1CFDE5D28(uint64_t a1)
{
  v2 = sub_1CFDE7B20();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CFDE5D64(uint64_t a1)
{
  v2 = sub_1CFDE7B20();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1CFDE5DA0(uint64_t a1)
{
  v2 = sub_1CFDE7A78();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CFDE5DDC(uint64_t a1)
{
  v2 = sub_1CFDE7A78();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1CFDE5E18(uint64_t a1)
{
  v2 = sub_1CFDE7ACC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CFDE5E54(uint64_t a1)
{
  v2 = sub_1CFDE7ACC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SleepingSampleDataTypeFeatureStatus.ConfigurationIssue.encode(to:)(void *a1)
{
  v3 = MEMORY[0x1E69E6F58];
  sub_1CFDE7D40(0, &qword_1EC5098F8, sub_1CFDE7A78, &type metadata for SleepingSampleDataTypeFeatureStatus.ConfigurationIssue.PrivacySettingOffCodingKeys, MEMORY[0x1E69E6F58]);
  v28 = *(v4 - 8);
  v29 = v4;
  v5 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v27 = &v23 - v6;
  sub_1CFDE7D40(0, &qword_1EC509908, sub_1CFDE7ACC, &type metadata for SleepingSampleDataTypeFeatureStatus.ConfigurationIssue.SleepOnboardingRequiredCodingKeys, v3);
  v25 = *(v7 - 8);
  v26 = v7;
  v8 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v24 = &v23 - v9;
  sub_1CFDE7D40(0, &qword_1EC509918, sub_1CFDE7B20, &type metadata for SleepingSampleDataTypeFeatureStatus.ConfigurationIssue.CodingKeys, v3);
  v11 = v10;
  v12 = *(v10 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v15 = &v23 - v14;
  v16 = *v1;
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CFDE7B20();
  sub_1CFE311A4();
  v18 = (v12 + 8);
  if (v16)
  {
    v31 = 1;
    sub_1CFDE7A78();
    v19 = v27;
    sub_1CFE30FF4();
    v21 = v28;
    v20 = v29;
  }

  else
  {
    v30 = 0;
    sub_1CFDE7ACC();
    v19 = v24;
    sub_1CFE30FF4();
    v21 = v25;
    v20 = v26;
  }

  (*(v21 + 8))(v19, v20);
  return (*v18)(v15, v11);
}

uint64_t SleepingSampleDataTypeFeatureStatus.ConfigurationIssue.hashValue.getter()
{
  v1 = *v0;
  sub_1CFE31144();
  MEMORY[0x1D3876810](v1);
  return sub_1CFE31184();
}

uint64_t SleepingSampleDataTypeFeatureStatus.ConfigurationIssue.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v39 = a2;
  v3 = MEMORY[0x1E69E6F48];
  sub_1CFDE7D40(0, &qword_1EC509928, sub_1CFDE7A78, &type metadata for SleepingSampleDataTypeFeatureStatus.ConfigurationIssue.PrivacySettingOffCodingKeys, MEMORY[0x1E69E6F48]);
  v35 = v4;
  v38 = *(v4 - 8);
  v5 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v37 = &v33 - v6;
  sub_1CFDE7D40(0, &qword_1EC509930, sub_1CFDE7ACC, &type metadata for SleepingSampleDataTypeFeatureStatus.ConfigurationIssue.SleepOnboardingRequiredCodingKeys, v3);
  v8 = v7;
  v34 = *(v7 - 8);
  v9 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v33 - v10;
  sub_1CFDE7D40(0, &qword_1EC509938, sub_1CFDE7B20, &type metadata for SleepingSampleDataTypeFeatureStatus.ConfigurationIssue.CodingKeys, v3);
  v13 = v12;
  v36 = *(v12 - 8);
  v14 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v33 - v15;
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CFDE7B20();
  v18 = v40;
  sub_1CFE31194();
  if (v18)
  {
    goto LABEL_7;
  }

  v33 = v8;
  v19 = v37;
  v20 = v38;
  v40 = a1;
  v21 = v36;
  v22 = v39;
  v23 = sub_1CFE30FE4();
  v24 = (2 * *(v23 + 16)) | 1;
  v41 = v23;
  v42 = v23 + 32;
  v43 = 0;
  v44 = v24;
  v25 = sub_1CFDCA800();
  if (v25 == 2 || v43 != v44 >> 1)
  {
    v26 = sub_1CFE30DF4();
    swift_allocError();
    v28 = v27;
    sub_1CFDCB7AC();
    v30 = *(v29 + 48);
    *v28 = &type metadata for SleepingSampleDataTypeFeatureStatus.ConfigurationIssue;
    sub_1CFE30F74();
    sub_1CFE30DD4();
    (*(*(v26 - 8) + 104))(v28, *MEMORY[0x1E69E6AF8], v26);
    swift_willThrow();
    (*(v21 + 8))(v16, v13);
    swift_unknownObjectRelease();
    a1 = v40;
LABEL_7:
    v31 = a1;
    return __swift_destroy_boxed_opaque_existential_1(v31);
  }

  v45 = v25;
  if (v25)
  {
    v46 = 1;
    sub_1CFDE7A78();
    sub_1CFE30F64();
    (*(v20 + 8))(v19, v35);
  }

  else
  {
    v46 = 0;
    sub_1CFDE7ACC();
    sub_1CFE30F64();
    (*(v34 + 8))(v11, v33);
  }

  (*(v21 + 8))(v16, v13);
  swift_unknownObjectRelease();
  *v22 = v45 & 1;
  v31 = v40;
  return __swift_destroy_boxed_opaque_existential_1(v31);
}

uint64_t SleepingSampleDataTypeFeatureStatus.state.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  *a1 = v2;
  v3 = *(v1 + 16);
  *(a1 + 8) = v3;
  return sub_1CFDE7B74(v2, v3);
}

uint64_t SleepingSampleDataTypeFeatureStatus.state.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  result = sub_1CFDE7B84(*(v1 + 8), *(v1 + 16));
  *(v1 + 8) = v2;
  *(v1 + 16) = v3;
  return result;
}

_BYTE *SleepingSampleDataTypeFeatureStatus.init(dataType:state:)@<X0>(_BYTE *result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  *a3 = *result;
  *(a3 + 8) = v3;
  *(a3 + 16) = v4;
  return result;
}

uint64_t sub_1CFDE67D0()
{
  if (*v0)
  {
    result = 0x6574617473;
  }

  else
  {
    result = 0x6570795461746164;
  }

  *v0;
  return result;
}

uint64_t sub_1CFDE6808@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6570795461746164 && a2 == 0xE800000000000000;
  if (v6 || (sub_1CFE310B4() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6574617473 && a2 == 0xE500000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1CFE310B4();

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

uint64_t sub_1CFDE68E0(uint64_t a1)
{
  v2 = sub_1CFDE7C44();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CFDE691C(uint64_t a1)
{
  v2 = sub_1CFDE7C44();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SleepingSampleDataTypeFeatureStatus.encode(to:)(void *a1)
{
  sub_1CFDE7D40(0, &qword_1EC509940, sub_1CFDE7C44, &type metadata for SleepingSampleDataTypeFeatureStatus.CodingKeys, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v8 = v13 - v7;
  v9 = *v1;
  v13[0] = *(v1 + 1);
  v16 = v1[16];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CFDE7C44();
  sub_1CFE311A4();
  v19 = v9;
  v18 = 0;
  sub_1CFDE7C98();
  v11 = v13[1];
  sub_1CFE31054();
  if (!v11)
  {
    v14 = v13[0];
    v15 = v16;
    v17 = 1;
    sub_1CFDE7B74(v13[0], v16);
    sub_1CFDE7CEC();
    sub_1CFE31054();
    sub_1CFDE7B84(v14, v15);
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t SleepingSampleDataTypeFeatureStatus.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v18 = a2;
  sub_1CFDE7D40(0, &qword_1EC509960, sub_1CFDE7C44, &type metadata for SleepingSampleDataTypeFeatureStatus.CodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v9 = &v17 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CFDE7C44();
  sub_1CFE31194();
  if (!v2)
  {
    v11 = v6;
    v12 = v18;
    v22 = 0;
    sub_1CFDE7DA8();
    sub_1CFE30FD4();
    v13 = v23;
    v21 = 1;
    sub_1CFDE7DFC();
    sub_1CFE30FD4();
    (*(v11 + 8))(v9, v5);
    v15 = v19;
    v16 = v20;
    *v12 = v13;
    *(v12 + 8) = v15;
    *(v12 + 16) = v16;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_1CFDE6D90(id a1@<X1>, unsigned __int8 *a2@<X0>, uint64_t a3@<X8>)
{
  v3 = a1;
  v5 = *a2;
  v6 = [a1 unsatisfiedRequirementIdentifiers];
  type metadata accessor for HKFeatureAvailabilityRequirementIdentifier(0);
  v7 = sub_1CFE30A84();

  v8 = *(v7 + 16);
  v54 = v5;
  if (v8)
  {
    v50 = v3;
    v51 = a3;
    v9 = 0;
    v10 = v7 + 32;
    v53 = v8 - 1;
    v52 = MEMORY[0x1E69E7CC0];
LABEL_3:
    v11 = v9;
    while (v11 < *(v7 + 16))
    {
      v12 = *(v10 + 8 * v11);
      v9 = v11 + 1;
      v59 = v5;
      v13 = v12;
      if (sub_1CFDE7258(&v59))
      {
        v14 = v52;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v60 = v52;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1CFDC48A8(0, *(v52 + 16) + 1, 1);
          v14 = v60;
        }

        v17 = *(v14 + 16);
        v16 = *(v14 + 24);
        if (v17 >= v16 >> 1)
        {
          sub_1CFDC48A8((v16 > 1), v17 + 1, 1);
          v14 = v60;
        }

        *(v14 + 16) = v17 + 1;
        v52 = v14;
        *(v14 + 8 * v17 + 32) = v13;
        if (v53 == v11)
        {
LABEL_13:
          v18 = 0;
          v58 = *MEMORY[0x1E696B810];
          v57 = *MEMORY[0x1E696B848];
          v56 = *MEMORY[0x1E696B840];
          v55 = *MEMORY[0x1E696B868];
          v19 = MEMORY[0x1E69E7CC0];
LABEL_14:
          v20 = v18;
          while (1)
          {
            if (v20 >= *(v7 + 16))
            {
              goto LABEL_54;
            }

            v21 = *(v10 + 8 * v20);
            v22 = sub_1CFE30924();
            v24 = v23;
            if (v22 == sub_1CFE30924() && v24 == v25)
            {
              goto LABEL_36;
            }

            v27 = sub_1CFE310B4();
            v28 = v21;

            if (v27)
            {
              goto LABEL_34;
            }

            v29 = sub_1CFE30924();
            v31 = v30;
            if (v29 == sub_1CFE30924() && v31 == v32)
            {
              break;
            }

            v33 = sub_1CFE310B4();

            if (v33)
            {
              goto LABEL_34;
            }

            v34 = sub_1CFE30924();
            v36 = v35;
            if (v34 == sub_1CFE30924() && v36 == v37)
            {
              break;
            }

            v38 = sub_1CFE310B4();

            if (v38)
            {
LABEL_34:

LABEL_37:
              v44 = 1;
LABEL_38:
              if (swift_isUniquelyReferenced_nonNull_native())
              {
                v45 = v19;
              }

              else
              {
                v45 = sub_1CFDDDADC(0, *(v19 + 2) + 1, 1, v19);
              }

              v47 = *(v45 + 2);
              v46 = *(v45 + 3);
              if (v47 >= v46 >> 1)
              {
                v45 = sub_1CFDDDADC((v46 > 1), v47 + 1, 1, v45);
              }

              v18 = v20 + 1;
              *(v45 + 2) = v47 + 1;
              v19 = v45;
              v45[v47 + 32] = v44;
              if (v53 == v20)
              {
LABEL_45:
                v3 = v50;
                a3 = v51;
                v48 = v52;
                goto LABEL_47;
              }

              goto LABEL_14;
            }

            v39 = sub_1CFE30924();
            v41 = v40;
            if (v39 == sub_1CFE30924() && v41 == v42)
            {

              if (v54 >= 4)
              {
                goto LABEL_33;
              }
            }

            else
            {
              v43 = sub_1CFE310B4();

              if ((v43 & 1) != 0 && v54 > 3)
              {
LABEL_33:
                v44 = 0;
                goto LABEL_38;
              }
            }

            if (v8 == ++v20)
            {
              goto LABEL_45;
            }
          }

LABEL_36:

          goto LABEL_37;
        }

        goto LABEL_3;
      }

      ++v11;
      if (v8 == v9)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_54:
    __break(1u);
  }

  else
  {
    v48 = MEMORY[0x1E69E7CC0];
    v19 = MEMORY[0x1E69E7CC0];
LABEL_47:

    if (*(v48 + 16))
    {

      v49 = 0;
    }

    else
    {

      if (*(v19 + 2))
      {
        v48 = v19[32];

        v49 = 1;
      }

      else
      {

        v48 = 0;
        v49 = 2;
      }
    }

    *a3 = v54;
    *(a3 + 8) = v48;
    *(a3 + 16) = v49;
  }
}

BOOL sub_1CFDE7258(unsigned __int8 *a1)
{
  v1 = *a1;
  v2 = *MEMORY[0x1E696B820];
  v3 = sub_1CFE30924();
  v5 = v4;
  if (v3 == sub_1CFE30924() && v5 == v6)
  {
    goto LABEL_13;
  }

  v8 = sub_1CFE310B4();

  if (v8)
  {
    return 1;
  }

  v9 = *MEMORY[0x1E696B818];
  v10 = sub_1CFE30924();
  v12 = v11;
  if (v10 == sub_1CFE30924() && v12 == v13)
  {
LABEL_13:

    return 1;
  }

  v15 = sub_1CFE310B4();

  if (v15)
  {
    return 1;
  }

  v16 = *MEMORY[0x1E696B830];
  v17 = sub_1CFE30924();
  v19 = v18;
  if (v17 == sub_1CFE30924() && v19 == v20)
  {
    goto LABEL_13;
  }

  v22 = sub_1CFE310B4();

  if (v22)
  {
    return 1;
  }

  v23 = *MEMORY[0x1E696B828];
  v24 = sub_1CFE30924();
  v26 = v25;
  if (v24 == sub_1CFE30924() && v26 == v27)
  {
    goto LABEL_13;
  }

  v28 = sub_1CFE310B4();

  if (v28)
  {
    return 1;
  }

  v29 = *MEMORY[0x1E696B838];
  v30 = sub_1CFE30924();
  v32 = v31;
  if (v30 == sub_1CFE30924() && v32 == v33)
  {
    goto LABEL_13;
  }

  v34 = sub_1CFE310B4();

  if (v34)
  {
    return 1;
  }

  v35 = *MEMORY[0x1E696B850];
  v36 = sub_1CFE30924();
  v38 = v37;
  if (v36 == sub_1CFE30924() && v38 == v39)
  {
    goto LABEL_13;
  }

  v40 = sub_1CFE310B4();

  if (v40)
  {
    return 1;
  }

  v41 = *MEMORY[0x1E696B870];
  v42 = sub_1CFE30924();
  v44 = v43;
  if (v42 == sub_1CFE30924() && v44 == v45)
  {
    goto LABEL_13;
  }

  v46 = sub_1CFE310B4();

  if (v46)
  {
    return 1;
  }

  v47 = *MEMORY[0x1E696B868];
  v48 = sub_1CFE30924();
  v50 = v49;
  if (v48 == sub_1CFE30924() && v50 == v51)
  {
    goto LABEL_31;
  }

  v52 = sub_1CFE310B4();

  if (v52)
  {
    return v1 < 4;
  }

  v53 = *MEMORY[0x1E696B858];
  v54 = sub_1CFE30924();
  v56 = v55;
  if (v54 == sub_1CFE30924() && v56 == v57)
  {
LABEL_31:

    return v1 < 4;
  }

  v58 = sub_1CFE310B4();

  result = 0;
  if (v58)
  {
    return v1 < 4;
  }

  return result;
}

BOOL _s13HealthBalance35SleepingSampleDataTypeFeatureStatusV5StateO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2;
  v5 = *(a2 + 8);
  if (*(a1 + 8))
  {
    if (v3 == 1)
    {
      if (v5 == 1)
      {
        sub_1CFDE7B84(*a1, 1);
        sub_1CFDE7B84(v4, 1);
        return ((v4 ^ v2) & 1) == 0;
      }

      goto LABEL_11;
    }

    if (v5 != 2 || v4 != 0)
    {
LABEL_11:
      sub_1CFDE7B74(v4, v5);
      sub_1CFDE7B84(v2, v3);
      sub_1CFDE7B84(v4, v5);
      return 0;
    }

    sub_1CFDE7B84(*a1, 2);
    sub_1CFDE7B84(0, 2);
    return 1;
  }

  else
  {
    if (*(a2 + 8))
    {
      v7 = *a1;

      goto LABEL_11;
    }

    sub_1CFDE7B74(*a2, 0);
    sub_1CFDE7B74(v2, 0);
    v9 = sub_1CFDD41D4(v2, v4);
    sub_1CFDE7B84(v2, 0);
    sub_1CFDE7B84(v4, 0);
    return v9 & 1;
  }
}

unint64_t sub_1CFDE7768()
{
  result = qword_1EC509868;
  if (!qword_1EC509868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC509868);
  }

  return result;
}

unint64_t sub_1CFDE77BC()
{
  result = qword_1EC509878;
  if (!qword_1EC509878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC509878);
  }

  return result;
}

unint64_t sub_1CFDE7810()
{
  result = qword_1EC509888;
  if (!qword_1EC509888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC509888);
  }

  return result;
}

unint64_t sub_1CFDE7864()
{
  result = qword_1EC509898;
  if (!qword_1EC509898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC509898);
  }

  return result;
}

unint64_t sub_1CFDE78B8()
{
  result = qword_1EC5098A0;
  if (!qword_1EC5098A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC5098A0);
  }

  return result;
}

void sub_1CFDE790C()
{
  if (!qword_1EC5098A8)
  {
    type metadata accessor for HKFeatureAvailabilityRequirementIdentifier(255);
    v0 = sub_1CFE30AE4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC5098A8);
    }
  }
}

unint64_t sub_1CFDE7964()
{
  result = qword_1EC5098E0;
  if (!qword_1EC5098E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC5098E0);
  }

  return result;
}

uint64_t sub_1CFDE79B8(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_1CFDE790C();
    sub_1CFDE7A34(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1CFDE7A34(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for HKFeatureAvailabilityRequirementIdentifier(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1CFDE7A78()
{
  result = qword_1EC509900;
  if (!qword_1EC509900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC509900);
  }

  return result;
}

unint64_t sub_1CFDE7ACC()
{
  result = qword_1EC509910;
  if (!qword_1EC509910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC509910);
  }

  return result;
}

unint64_t sub_1CFDE7B20()
{
  result = qword_1EC509920;
  if (!qword_1EC509920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC509920);
  }

  return result;
}

uint64_t sub_1CFDE7B74(uint64_t a1, char a2)
{
  if (!a2)
  {
  }

  return result;
}

uint64_t sub_1CFDE7B84(uint64_t a1, char a2)
{
  if (!a2)
  {
  }

  return result;
}

BOOL _s13HealthBalance35SleepingSampleDataTypeFeatureStatusV2eeoiySbAC_ACtFZ_0(char *a1, char *a2)
{
  if (qword_1CFE357C0[*a1] == qword_1CFE357C0[*a2])
  {
    v2 = *(a2 + 1);
    v3 = a1[16];
    v4 = a2[16];
    v9 = *(a1 + 1);
    v10 = v3;
    v7 = v2;
    v8 = v4;
    sub_1CFDE7B74(v9, v3);
    sub_1CFDE7B74(v2, v4);
    v5 = _s13HealthBalance35SleepingSampleDataTypeFeatureStatusV5StateO2eeoiySbAE_AEtFZ_0(&v9, &v7);
    sub_1CFDE7B84(v7, v8);
    sub_1CFDE7B84(v9, v10);
  }

  else
  {
    return 0;
  }

  return v5;
}

unint64_t sub_1CFDE7C44()
{
  result = qword_1EC509948;
  if (!qword_1EC509948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC509948);
  }

  return result;
}

unint64_t sub_1CFDE7C98()
{
  result = qword_1EC509950;
  if (!qword_1EC509950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC509950);
  }

  return result;
}

unint64_t sub_1CFDE7CEC()
{
  result = qword_1EC509958;
  if (!qword_1EC509958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC509958);
  }

  return result;
}

void sub_1CFDE7D40(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

unint64_t sub_1CFDE7DA8()
{
  result = qword_1EC509968;
  if (!qword_1EC509968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC509968);
  }

  return result;
}

unint64_t sub_1CFDE7DFC()
{
  result = qword_1EC509970;
  if (!qword_1EC509970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC509970);
  }

  return result;
}

unint64_t sub_1CFDE7E54()
{
  result = qword_1EC509978;
  if (!qword_1EC509978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC509978);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_13HealthBalance35SleepingSampleDataTypeFeatureStatusV5StateO(uint64_t a1)
{
  if ((*(a1 + 8) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 8) & 3;
  }
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_1CFDE7ED8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 17))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 16);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1CFDE7F20(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_1CFDE7F74(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 9))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 8);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1CFDE7FBC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_1CFDE8000(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 8) = a2;
  return result;
}

unint64_t sub_1CFDE80BC()
{
  result = qword_1EC509980;
  if (!qword_1EC509980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC509980);
  }

  return result;
}

unint64_t sub_1CFDE8114()
{
  result = qword_1EC509988;
  if (!qword_1EC509988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC509988);
  }

  return result;
}

unint64_t sub_1CFDE816C()
{
  result = qword_1EC509990;
  if (!qword_1EC509990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC509990);
  }

  return result;
}

unint64_t sub_1CFDE81C4()
{
  result = qword_1EC509998;
  if (!qword_1EC509998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC509998);
  }

  return result;
}

unint64_t sub_1CFDE821C()
{
  result = qword_1EC5099A0;
  if (!qword_1EC5099A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC5099A0);
  }

  return result;
}

unint64_t sub_1CFDE8274()
{
  result = qword_1EC5099A8;
  if (!qword_1EC5099A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC5099A8);
  }

  return result;
}

unint64_t sub_1CFDE82CC()
{
  result = qword_1EC5099B0;
  if (!qword_1EC5099B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC5099B0);
  }

  return result;
}

unint64_t sub_1CFDE8324()
{
  result = qword_1EC5099B8;
  if (!qword_1EC5099B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC5099B8);
  }

  return result;
}

unint64_t sub_1CFDE837C()
{
  result = qword_1EC5099C0;
  if (!qword_1EC5099C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC5099C0);
  }

  return result;
}

unint64_t sub_1CFDE83D4()
{
  result = qword_1EC5099C8;
  if (!qword_1EC5099C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC5099C8);
  }

  return result;
}

unint64_t sub_1CFDE842C()
{
  result = qword_1EC5099D0;
  if (!qword_1EC5099D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC5099D0);
  }

  return result;
}

unint64_t sub_1CFDE8484()
{
  result = qword_1EC5099D8;
  if (!qword_1EC5099D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC5099D8);
  }

  return result;
}

unint64_t sub_1CFDE84DC()
{
  result = qword_1EC5099E0;
  if (!qword_1EC5099E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC5099E0);
  }

  return result;
}

unint64_t sub_1CFDE8534()
{
  result = qword_1EC5099E8;
  if (!qword_1EC5099E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC5099E8);
  }

  return result;
}

unint64_t sub_1CFDE858C()
{
  result = qword_1EC5099F0;
  if (!qword_1EC5099F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC5099F0);
  }

  return result;
}

unint64_t sub_1CFDE85E4()
{
  result = qword_1EC5099F8;
  if (!qword_1EC5099F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC5099F8);
  }

  return result;
}

unint64_t sub_1CFDE863C()
{
  result = qword_1EC509A00;
  if (!qword_1EC509A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC509A00);
  }

  return result;
}

unint64_t sub_1CFDE8694()
{
  result = qword_1EC509A08;
  if (!qword_1EC509A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC509A08);
  }

  return result;
}

unint64_t sub_1CFDE86EC()
{
  result = qword_1EC509A10;
  if (!qword_1EC509A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC509A10);
  }

  return result;
}

unint64_t sub_1CFDE8744()
{
  result = qword_1EC509A18;
  if (!qword_1EC509A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC509A18);
  }

  return result;
}

unint64_t sub_1CFDE879C()
{
  result = qword_1EC509A20;
  if (!qword_1EC509A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC509A20);
  }

  return result;
}

uint64_t sub_1CFDE87F0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD000000000000022 && 0x80000001CFE391E0 == a2;
  if (v4 || (sub_1CFE310B4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001CFE39210 == a2 || (sub_1CFE310B4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6C62616C69617661 && a2 == 0xE900000000000065)
  {

    return 2;
  }

  else
  {
    v6 = sub_1CFE310B4();

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

uint64_t sub_1CFDE895C(uint64_t a1, uint64_t a2)
{
  sub_1CFDA7AD0();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t TrainingLoadSummaryQuery.gregorianCalendar.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC13HealthBalance24TrainingLoadSummaryQuery_gregorianCalendar;
  v4 = sub_1CFE304B4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

id TrainingLoadSummaryQuery.__allocating_init(morningIndexRange:gregorianCalendar:typeOfDataRequested:continueAfterInitialResults:resultsHandler:)(uint64_t a1, uint64_t a2, char *a3, char a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v13 = objc_allocWithZone(v7);
  v14 = *a3;
  v15 = &v13[OBJC_IVAR____TtC13HealthBalance24TrainingLoadSummaryQuery_queue_resultsHandler];
  *v15 = 0;
  v15[1] = 0;
  *&v13[OBJC_IVAR____TtC13HealthBalance24TrainingLoadSummaryQuery_queue_resultsPendingDelivery] = MEMORY[0x1E69E7CC0];
  sub_1CFDE895C(a1, &v13[OBJC_IVAR____TtC13HealthBalance24TrainingLoadSummaryQuery_morningIndexRange]);
  v16 = OBJC_IVAR____TtC13HealthBalance24TrainingLoadSummaryQuery_gregorianCalendar;
  v17 = sub_1CFE304B4();
  v18 = *(v17 - 8);
  v19 = &v13[v16];
  v20 = a2;
  (*(v18 + 16))(v19, a2, v17);
  v13[OBJC_IVAR____TtC13HealthBalance24TrainingLoadSummaryQuery_typeOfDataRequested] = v14;
  v13[OBJC_IVAR____TtC13HealthBalance24TrainingLoadSummaryQuery_continueAfterInitialResults] = a4;
  *v15 = a5;
  v15[1] = a6;
  sub_1CFDA6E64(0, &qword_1EDC320C0, 0x1E696C388);

  v21 = sub_1CFE30A74();
  v26.receiver = v13;
  v26.super_class = v7;
  v22 = objc_msgSendSuper2(&v26, sel_initWithQueryDescriptors_, v21);

  (*(v18 + 8))(v20, v17);
  sub_1CFDA7A74(a1);
  return v22;
}

id TrainingLoadSummaryQuery.init(morningIndexRange:gregorianCalendar:typeOfDataRequested:continueAfterInitialResults:resultsHandler:)(uint64_t a1, uint64_t a2, char *a3, char a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  ObjectType = swift_getObjectType();
  v14 = *a3;
  v15 = &v7[OBJC_IVAR____TtC13HealthBalance24TrainingLoadSummaryQuery_queue_resultsHandler];
  *v15 = 0;
  v15[1] = 0;
  *&v7[OBJC_IVAR____TtC13HealthBalance24TrainingLoadSummaryQuery_queue_resultsPendingDelivery] = MEMORY[0x1E69E7CC0];
  sub_1CFDE895C(a1, &v7[OBJC_IVAR____TtC13HealthBalance24TrainingLoadSummaryQuery_morningIndexRange]);
  v16 = OBJC_IVAR____TtC13HealthBalance24TrainingLoadSummaryQuery_gregorianCalendar;
  v17 = sub_1CFE304B4();
  v18 = *(v17 - 8);
  (*(v18 + 16))(&v7[v16], a2, v17);
  v7[OBJC_IVAR____TtC13HealthBalance24TrainingLoadSummaryQuery_typeOfDataRequested] = v14;
  v7[OBJC_IVAR____TtC13HealthBalance24TrainingLoadSummaryQuery_continueAfterInitialResults] = a4;
  *v15 = a5;
  v15[1] = a6;
  sub_1CFDA6E64(0, &qword_1EDC320C0, 0x1E696C388);

  v19 = sub_1CFE30A74();
  v24.receiver = v7;
  v24.super_class = ObjectType;
  v20 = objc_msgSendSuper2(&v24, sel_initWithQueryDescriptors_, v19);

  (*(v18 + 8))(a2, v17);
  sub_1CFDA7A74(a1);
  return v20;
}

Swift::Void __swiftcall TrainingLoadSummaryQuery.queue_populateConfiguration(_:)(HKQueryServerConfiguration *a1)
{
  ObjectType = swift_getObjectType();
  v4 = MEMORY[0x1E69E6720];
  sub_1CFDAA398(0, &qword_1EDC320D8, sub_1CFDA7AD0, MEMORY[0x1E69E6720]);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v24 - v7;
  sub_1CFDAA398(0, &qword_1EDC32910, MEMORY[0x1E6969AE8], v4);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v24 - v11;
  v25.receiver = v1;
  v25.super_class = ObjectType;
  [(HKQueryServerConfiguration *)&v25 queue_populateConfiguration:a1];
  type metadata accessor for TrainingLoadDaySummaryQueryConfiguration();
  v13 = swift_dynamicCastClass();
  if (v13)
  {
    v14 = v13;
    v15 = OBJC_IVAR____TtC13HealthBalance24TrainingLoadSummaryQuery_gregorianCalendar;
    v16 = sub_1CFE304B4();
    v17 = *(v16 - 8);
    (*(v17 + 16))(v12, &v1[v15], v16);
    (*(v17 + 56))(v12, 0, 1, v16);
    v18 = OBJC_IVAR____TtC13HealthBalance40TrainingLoadDaySummaryQueryConfiguration_gregorianCalendar;
    swift_beginAccess();
    v19 = a1;
    sub_1CFDE9124(v12, &v14[v18], &qword_1EDC32910, MEMORY[0x1E6969AE8]);
    swift_endAccess();
    sub_1CFDE895C(&v1[OBJC_IVAR____TtC13HealthBalance24TrainingLoadSummaryQuery_morningIndexRange], v8);
    sub_1CFDA7AD0();
    (*(*(v20 - 8) + 56))(v8, 0, 1, v20);
    v21 = OBJC_IVAR____TtC13HealthBalance40TrainingLoadDaySummaryQueryConfiguration_morningIndexRange;
    swift_beginAccess();
    sub_1CFDE9124(v8, &v14[v21], &qword_1EDC320D8, sub_1CFDA7AD0);
    swift_endAccess();
    v22 = v1[OBJC_IVAR____TtC13HealthBalance24TrainingLoadSummaryQuery_typeOfDataRequested];
    v23 = OBJC_IVAR____TtC13HealthBalance40TrainingLoadDaySummaryQueryConfiguration_typeOfDataRequested;
    swift_beginAccess();
    v14[v23] = v22;
    [v14 setShouldDeactivateAfterInitialResults_];
  }
}

uint64_t sub_1CFDE9124(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1CFDAA398(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t TrainingLoadSummaryQuery.queue_deliverError(_:)(void *a1)
{
  v3 = sub_1CFE30634();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1CFE30654();
  v9 = *(*(v8 - 8) + 64);
  result = MEMORY[0x1EEE9AC00](v8);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *&v1[OBJC_IVAR____TtC13HealthBalance24TrainingLoadSummaryQuery_queue_resultsHandler];
  if (v14)
  {
    v25 = v11;
    v15 = *&v1[OBJC_IVAR____TtC13HealthBalance24TrainingLoadSummaryQuery_queue_resultsHandler + 8];

    v16 = [v1 clientQueue];
    if (v16)
    {
      v17 = v16;
      v18 = swift_allocObject();
      v18[2] = v14;
      v18[3] = v15;
      v18[4] = v1;
      v18[5] = a1;
      aBlock[4] = sub_1CFDE9570;
      aBlock[5] = v18;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1CFDAA484;
      aBlock[3] = &block_descriptor_0;
      v19 = _Block_copy(aBlock);
      v24 = v8;
      v20 = v19;
      sub_1CFDA81D0(v14);
      v21 = v1;
      v22 = a1;
      sub_1CFE30644();
      v26 = MEMORY[0x1E69E7CC0];
      sub_1CFDA77F0(qword_1EDC32128, MEMORY[0x1E69E7F60]);
      sub_1CFDAA398(0, &qword_1EDC32100, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
      sub_1CFDAA3FC();
      sub_1CFE30D04();
      MEMORY[0x1D38762F0](0, v13, v7, v20);
      _Block_release(v20);

      sub_1CFDAC3D4(v14);
      (*(v4 + 8))(v7, v3);
      (*(v25 + 8))(v13, v24);
    }

    else
    {

      return sub_1CFDAC3D4(v14);
    }
  }

  return result;
}

uint64_t TrainingLoadSummaryQuery.queue_queryDidDeactivate(_:)()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_1CFE30334();
  v8.receiver = v1;
  v8.super_class = ObjectType;
  objc_msgSendSuper2(&v8, sel_queue_queryDidDeactivate_, v3);

  v4 = &v1[OBJC_IVAR____TtC13HealthBalance24TrainingLoadSummaryQuery_queue_resultsHandler];
  v5 = *&v1[OBJC_IVAR____TtC13HealthBalance24TrainingLoadSummaryQuery_queue_resultsHandler];
  v6 = *&v1[OBJC_IVAR____TtC13HealthBalance24TrainingLoadSummaryQuery_queue_resultsHandler + 8];
  *v4 = 0;
  *(v4 + 1) = 0;
  return sub_1CFDAC3D4(v5);
}

void static TrainingLoadSummaryQuery.configureClientInterface(_:)(void *a1)
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v4 = (*MEMORY[0x1E69E7D40] & *v1);
  v28.receiver = ObjCClassFromMetadata;
  v28.super_class = v4;
  v21 = a1;
  objc_msgSendSuper2(&v28, sel_configureClientInterface_, a1);
  sub_1CFDE9D54();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CFE357F0;
  *(inited + 32) = sub_1CFDA6E64(0, &qword_1EDC324F0, 0x1E695DEC8);
  sub_1CFDE9DF4();
  *(inited + 40) = v6;
  *&v25 = MEMORY[0x1E69E7CC0];
  MEMORY[0x1D3876120]();
  if (*((v25 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v25 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    goto LABEL_24;
  }

  while (1)
  {
    swift_getObjCClassFromMetadata();
    sub_1CFE30AC4();

    MEMORY[0x1D3876120](v7);
    if (*((v25 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v25 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1CFE30A94();
    }

    swift_getObjCClassFromMetadata();
    sub_1CFE30AC4();
    v8 = v25;
    if (!(v25 >> 62))
    {
      v9 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v9)
      {
        break;
      }

      goto LABEL_6;
    }

    v9 = sub_1CFE30EE4();
    if (!v9)
    {
      break;
    }

LABEL_6:
    v10 = 0;
    v11 = MEMORY[0x1E69E7CC0];
    while ((v8 & 0xC000000000000001) != 0)
    {
      v13 = MEMORY[0x1D3876480](v10, v8);
      v14 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        goto LABEL_22;
      }

LABEL_13:
      *&v25 = v13;
      if (swift_dynamicCast())
      {
        if (*(&v23 + 1))
        {
          v25 = v22;
          v26 = v23;
          v27 = v24;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v11 = sub_1CFDDDBE8(0, *(v11 + 2) + 1, 1, v11);
          }

          v16 = *(v11 + 2);
          v15 = *(v11 + 3);
          if (v16 >= v15 >> 1)
          {
            v11 = sub_1CFDDDBE8((v15 > 1), v16 + 1, 1, v11);
          }

          *(v11 + 2) = v16 + 1;
          v17 = &v11[40 * v16];
          v18 = v25;
          v19 = v26;
          *(v17 + 8) = v27;
          *(v17 + 2) = v18;
          *(v17 + 3) = v19;
          goto LABEL_9;
        }
      }

      else
      {
        v24 = 0;
        v22 = 0u;
        v23 = 0u;
      }

      sub_1CFDE9EF8(&v22);
LABEL_9:
      ++v10;
      if (v14 == v9)
      {
        goto LABEL_27;
      }
    }

    if (v10 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_23;
    }

    v12 = *(v8 + 8 * v10 + 32);
    v13 = swift_unknownObjectRetain();
    v14 = v10 + 1;
    if (!__OFADD__(v10, 1))
    {
      goto LABEL_13;
    }

LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    sub_1CFE30A94();
  }

  v11 = MEMORY[0x1E69E7CC0];
LABEL_27:

  sub_1CFDEA81C(v11);

  v20 = sub_1CFE30B74();

  [v21 setClasses:v20 forSelector:sel_client_deliverTrainingLoadSampleDaySummaries_queryUUID_ argumentIndex:0 ofReply:0];
}

id TrainingLoadSummaryQuery.__allocating_init(queryDescriptors:)()
{
  v1 = objc_allocWithZone(v0);
  sub_1CFDA6E64(0, &qword_1EDC320C0, 0x1E696C388);
  v2 = sub_1CFE30A74();

  v3 = [v1 initWithQueryDescriptors_];

  return v3;
}

id TrainingLoadSummaryQuery.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1CFDE9D54()
{
  v0 = sub_1CFDEAB34();
  if (swift_isClassType() && v0)
  {
    sub_1CFDEAB8C(0, &qword_1EC509A48, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  }

  else
  {
    sub_1CFDAA398(0, &unk_1EDC324D0, sub_1CFDEAB34, MEMORY[0x1E69E6F90]);
  }
}

void sub_1CFDE9DF4()
{
  if (!qword_1EDC31E88)
  {
    type metadata accessor for TrainingLoadSampleDaySummary();
    sub_1CFDA77F0(&qword_1EDC31F50, type metadata accessor for TrainingLoadSampleDaySummary);
    sub_1CFDA77F0(&qword_1EDC31F68, type metadata accessor for TrainingLoadSampleDaySummary);
    sub_1CFDA77F0(&qword_1EDC31F60, type metadata accessor for TrainingLoadSampleDaySummary);
    v0 = sub_1CFE306D4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDC31E88);
    }
  }
}

uint64_t sub_1CFDE9EF8(uint64_t a1)
{
  sub_1CFDEAB8C(0, &unk_1EC509A28, MEMORY[0x1E69E69B8], MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1CFDE9F78(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = *(*v2 + 40);
  v8 = sub_1CFE30D34();
  v9 = -1 << *(v6 + 32);
  v10 = v8 & ~v9;
  if ((*(v6 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      sub_1CFDEAA80(*(v6 + 48) + 40 * v10, v18);
      v12 = MEMORY[0x1D3876400](v18, a2);
      sub_1CFDC3BCC(v18);
      if (v12)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v6 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    sub_1CFDC3BCC(a2);
    sub_1CFDEAA80(*(v6 + 48) + 40 * v10, a1);
    return 0;
  }

  else
  {
LABEL_5:
    v13 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1CFDEAA80(a2, v18);
    v17 = *v3;
    sub_1CFDEA318(v18, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v17;
    v15 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v15;
    *(a1 + 32) = *(a2 + 32);
    return 1;
  }
}

uint64_t sub_1CFDEA0C4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_1CFDEAADC();
  result = sub_1CFE30D74();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = *(v3 + 48) + 40 * (v16 | (v7 << 6));
      v30 = *v19;
      v31 = *(v19 + 16);
      v32 = *(v19 + 32);
      v20 = *(v6 + 40);
      result = sub_1CFE30D34();
      v21 = -1 << *(v6 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v13 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v13 + 8 * v23);
          if (v27 != -1)
          {
            v14 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v22) & ~*(v13 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = *(v6 + 48) + 40 * v14;
      *v15 = v30;
      *(v15 + 16) = v31;
      *(v15 + 32) = v32;
      ++*(v6 + 16);
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v8[v7];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      bzero((v3 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v28;
    }

    v2 = v29;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_1CFDEA318(uint64_t result, unint64_t a2, char a3)
{
  v4 = v3;
  v6 = result;
  v7 = *(*v3 + 16);
  v8 = *(*v3 + 24);
  if (v8 > v7 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1CFDEA0C4(v7 + 1);
  }

  else
  {
    if (v8 > v7)
    {
      result = sub_1CFDEA490();
      goto LABEL_12;
    }

    sub_1CFDEA5FC(v7 + 1);
  }

  v9 = *v3;
  v10 = *(*v3 + 40);
  result = sub_1CFE30D34();
  v11 = -1 << *(v9 + 32);
  a2 = result & ~v11;
  if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v12 = ~v11;
    do
    {
      sub_1CFDEAA80(*(v9 + 48) + 40 * a2, v20);
      v13 = MEMORY[0x1D3876400](v20, v6);
      result = sub_1CFDC3BCC(v20);
      if (v13)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v12;
    }

    while (((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v14 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  v15 = *(v14 + 48) + 40 * a2;
  v16 = *(v6 + 16);
  *v15 = *v6;
  *(v15 + 16) = v16;
  *(v15 + 32) = *(v6 + 32);
  v17 = *(v14 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (!v18)
  {
    *(v14 + 16) = v19;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1CFE310E4();
  __break(1u);
  return result;
}

void *sub_1CFDEA490()
{
  v1 = v0;
  sub_1CFDEAADC();
  v2 = *v0;
  v3 = sub_1CFE30D64();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 40 * (v14 | (v8 << 6));
        result = sub_1CFDEAA80(*(v2 + 48) + v17, v21);
        v18 = *(v4 + 48) + v17;
        v19 = v21[0];
        v20 = v21[1];
        *(v18 + 32) = v22;
        *v18 = v19;
        *(v18 + 16) = v20;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}