uint64_t sub_1D204E274(uint64_t a1, void **a2)
{
  v3[1] = a1;
  v5 = a2;
  v12 = sub_1D208BF1C();
  v9 = *(v12 - 8);
  v10 = v12 - 8;
  v4 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v12);
  v11 = v3 - v4;
  (*(v9 + 16))(v3 - v4);
  v6 = *v5;
  MEMORY[0x1E69E5928](v6);
  v13 = v6;
  v8 = v6;
  v7 = sub_1D208BE7C();
  [v8 setSourceTime_];
  MEMORY[0x1E69E5920](v7);
  MEMORY[0x1E69E5920](v8);
  return (*(v9 + 8))(v11, v12);
}

uint64_t sub_1D204E3C4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  MEMORY[0x1E69E5928](*a1);
  v6 = [v4 usagePointID];
  *a2 = sub_1D208C5CC();
  a2[1] = v2;
  MEMORY[0x1E69E5920](v6);
  return MEMORY[0x1E69E5920](v4);
}

uint64_t sub_1D204E454(void *a1, void *a2)
{
  sub_1D1FCFF8C(a1, &v6);
  v4 = *a2;
  MEMORY[0x1E69E5928](*a2);
  v5 = sub_1D208C5BC();
  [v4 setUsagePointID_];
  MEMORY[0x1E69E5920](v5);
  MEMORY[0x1E69E5920](v4);
}

uint64_t sub_1D204E500@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v9 = a2;
  v4 = a1;
  v11 = sub_1D208BF1C();
  v7 = *(v11 - 8);
  v8 = v11 - 8;
  v5 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v10 = &v3 - v5;
  v6 = *MEMORY[0x1EEE9AC00](v4);
  MEMORY[0x1E69E5928](v6);
  v14 = v6;
  v13 = v6;
  v12 = [v6 creationDate];
  sub_1D208BECC();
  (*(v7 + 32))(v9, v10, v11);
  MEMORY[0x1E69E5920](v12);
  return MEMORY[0x1E69E5920](v13);
}

uint64_t sub_1D204E624(uint64_t a1, void **a2)
{
  v3[1] = a1;
  v5 = a2;
  v12 = sub_1D208BF1C();
  v9 = *(v12 - 8);
  v10 = v12 - 8;
  v4 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v12);
  v11 = v3 - v4;
  (*(v9 + 16))(v3 - v4);
  v6 = *v5;
  MEMORY[0x1E69E5928](v6);
  v13 = v6;
  v8 = v6;
  v7 = sub_1D208BE7C();
  [v8 setCreationDate_];
  MEMORY[0x1E69E5920](v7);
  MEMORY[0x1E69E5920](v8);
  return (*(v9 + 8))(v11, v12);
}

uint64_t sub_1D204E774@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  MEMORY[0x1E69E5928](*a1);
  v6 = [v4 readings];
  *a2 = sub_1D208BD1C();
  a2[1] = v2;
  MEMORY[0x1E69E5920](v6);
  return MEMORY[0x1E69E5920](v4);
}

uint64_t sub_1D204E804(uint64_t *a1, void *a2)
{
  sub_1D1FCFFCC(a1, v8);
  v6 = v8[0];
  v7 = v8[1];
  v4 = *a2;
  MEMORY[0x1E69E5928](*a2);
  v5 = sub_1D208BCFC();
  [v4 setReadings_];
  MEMORY[0x1E69E5920](v5);
  MEMORY[0x1E69E5920](v4);
  return sub_1D1FD0094(v6, v7);
}

uint64_t sub_1D204E8B4@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  MEMORY[0x1E69E5928](*a1);
  [v3 preprocessed];
  *a2 = sub_1D208C19C() & 1;
  return MEMORY[0x1E69E5920](v3);
}

uint64_t sub_1D204E928(unsigned __int8 *a1, void *a2)
{
  v4 = *a1;
  v3 = *a2;
  MEMORY[0x1E69E5928](*a2);
  [v3 setPreprocessed_];
  return MEMORY[0x1E69E5920](v3);
}

uint64_t sub_1D204E9E8@<X0>(void *a1@<X0>, id *a2@<X8>)
{
  v3 = *a1;
  MEMORY[0x1E69E5928](*a1);
  *a2 = IntervalBlocks.unitAsInt.getter();
  return MEMORY[0x1E69E5920](v3);
}

uint64_t sub_1D204EA54(uint64_t *a1, void *a2)
{
  v4 = *a1;
  v3 = *a2;
  MEMORY[0x1E69E5928](*a2);
  IntervalBlocks.unitAsInt.setter(v4);
  return MEMORY[0x1E69E5920](v3);
}

id (*IntervalBlocks.unitAsInt.modify(id *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = IntervalBlocks.unitAsInt.getter();
  return sub_1D204EB68;
}

uint64_t sub_1D204EC04@<X0>(void *a1@<X0>, id *a2@<X8>)
{
  v3 = *a1;
  MEMORY[0x1E69E5928](*a1);
  *a2 = IntervalBlocks.flowDirectionAsInt.getter();
  return MEMORY[0x1E69E5920](v3);
}

uint64_t sub_1D204EC70(uint64_t *a1, void *a2)
{
  v4 = *a1;
  v3 = *a2;
  MEMORY[0x1E69E5928](*a2);
  IntervalBlocks.flowDirectionAsInt.setter(v4);
  return MEMORY[0x1E69E5920](v3);
}

id (*IntervalBlocks.flowDirectionAsInt.modify(id *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = IntervalBlocks.flowDirectionAsInt.getter();
  return sub_1D204ED84;
}

uint64_t sub_1D204EE20@<X0>(void *a1@<X0>, id *a2@<X8>)
{
  v3 = *a1;
  MEMORY[0x1E69E5928](*a1);
  *a2 = IntervalBlocks.commodityAsInt.getter();
  return MEMORY[0x1E69E5920](v3);
}

uint64_t sub_1D204EE8C(uint64_t *a1, void *a2)
{
  v4 = *a1;
  v3 = *a2;
  MEMORY[0x1E69E5928](*a2);
  IntervalBlocks.commodityAsInt.setter(v4);
  return MEMORY[0x1E69E5920](v3);
}

id (*IntervalBlocks.commodityAsInt.modify(id *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = IntervalBlocks.commodityAsInt.getter();
  return sub_1D204EFA0;
}

uint64_t EKDateRange.end.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = *(type metadata accessor for EKDateRange() + 20);
  v2 = sub_1D208BF1C();
  return (*(*(v2 - 8) + 16))(a1, v1 + v4);
}

uint64_t type metadata accessor for EKDateRange()
{
  v1 = qword_1EC6C5AA0;
  if (!qword_1EC6C5AA0)
  {
    return swift_getSingletonMetadata();
  }

  return v1;
}

uint64_t EKDateRange.init(start:end:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v81 = a3;
  v104 = a1;
  v103 = a2;
  v82 = sub_1D20500E4;
  v83 = sub_1D20500E4;
  v84 = sub_1D20506D0;
  v85 = sub_1D205248C;
  v86 = sub_1D20506D0;
  v87 = sub_1D205248C;
  v88 = sub_1D2029A40;
  v89 = sub_1D2029A40;
  v90 = sub_1D2052498;
  v91 = sub_1D2029A40;
  v92 = sub_1D2029A40;
  v93 = sub_1D2052498;
  v115 = 0;
  v114 = 0;
  v113 = 0;
  v94 = 0;
  v95 = 0;
  v96 = sub_1D208BF1C();
  v98 = *(v96 - 8);
  v97 = v96 - 8;
  v99 = v98;
  v100 = v98[8];
  v101 = (v100 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v102 = v32 - v101;
  v105 = type metadata accessor for EKDateRange();
  v106 = (*(*(v105 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = MEMORY[0x1EEE9AC00](v104);
  v107 = v32 - v106;
  v115 = v32 - v106;
  v114 = v3;
  v113 = v4;
  if (sub_1D208BE8C())
  {
    v80 = sub_1D208C84C();
    v51 = v99;
    v55 = v98[2];
    v54 = v98 + 2;
    v55(v102, v104, v96);
    v56 = *(v51 + 20);
    v52 = (v56 + 16) & ~v56;
    v67 = 7;
    v53 = swift_allocObject();
    v59 = v98[4];
    v58 = v98 + 4;
    v59(v53 + v52, v102, v96);

    v66 = 32;
    v5 = swift_allocObject();
    v6 = v53;
    v61 = v5;
    *(v5 + 16) = v82;
    *(v5 + 24) = v6;

    v55(v102, v103, v96);
    v57 = (v56 + 16) & ~v56;
    v60 = swift_allocObject();
    v59(v60 + v57, v102, v96);

    v7 = swift_allocObject();
    v8 = v60;
    v68 = v7;
    *(v7 + 16) = v83;
    *(v7 + 24) = v8;

    sub_1D20507AC();
    v79 = sub_1D208C8AC();
    v64 = 17;
    v70 = swift_allocObject();
    v63 = 32;
    *(v70 + 16) = 32;
    v71 = swift_allocObject();
    v65 = 8;
    *(v71 + 16) = 8;
    v9 = swift_allocObject();
    v10 = v61;
    v62 = v9;
    *(v9 + 16) = v84;
    *(v9 + 24) = v10;
    v11 = swift_allocObject();
    v12 = v62;
    v72 = v11;
    *(v11 + 16) = v85;
    *(v11 + 24) = v12;
    v73 = swift_allocObject();
    *(v73 + 16) = v63;
    v74 = swift_allocObject();
    *(v74 + 16) = v65;
    v13 = swift_allocObject();
    v14 = v68;
    v69 = v13;
    *(v13 + 16) = v86;
    *(v13 + 24) = v14;
    v15 = swift_allocObject();
    v16 = v69;
    v76 = v15;
    *(v15 + 16) = v87;
    *(v15 + 24) = v16;
    v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEE78, &unk_1D20911D0);
    v75 = sub_1D208CB2C();
    v77 = v17;

    v18 = v70;
    v19 = v77;
    *v77 = v88;
    v19[1] = v18;

    v20 = v71;
    v21 = v77;
    v77[2] = v89;
    v21[3] = v20;

    v22 = v72;
    v23 = v77;
    v77[4] = v90;
    v23[5] = v22;

    v24 = v73;
    v25 = v77;
    v77[6] = v91;
    v25[7] = v24;

    v26 = v74;
    v27 = v77;
    v77[8] = v92;
    v27[9] = v26;

    v28 = v76;
    v29 = v77;
    v77[10] = v93;
    v29[11] = v28;
    sub_1D1FCECE8();

    if (os_log_type_enabled(v79, v80))
    {
      v30 = v94;
      v43 = sub_1D208C8EC();
      v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEE80, qword_1D208FBA0);
      v44 = sub_1D2029898(0);
      v45 = sub_1D2029898(2);
      v47 = &v112;
      v112 = v43;
      v48 = &v111;
      v111 = v44;
      v49 = &v110;
      v110 = v45;
      v46 = 2;
      sub_1D20298EC(2, &v112);
      sub_1D20298EC(v46, v47);
      v108 = v88;
      v109 = v70;
      sub_1D2029900(&v108, v47, v48, v49);
      v50 = v30;
      if (v30)
      {

        __break(1u);
      }

      else
      {
        v108 = v89;
        v109 = v71;
        sub_1D2029900(&v108, &v112, &v111, &v110);
        v41 = 0;
        v108 = v90;
        v109 = v72;
        sub_1D2029900(&v108, &v112, &v111, &v110);
        v40 = 0;
        v108 = v91;
        v109 = v73;
        sub_1D2029900(&v108, &v112, &v111, &v110);
        v39 = 0;
        v108 = v92;
        v109 = v74;
        sub_1D2029900(&v108, &v112, &v111, &v110);
        v38 = 0;
        v108 = v93;
        v109 = v76;
        sub_1D2029900(&v108, &v112, &v111, &v110);
        _os_log_impl(&dword_1D1FC7000, v79, v80, "EKDateRange ERROR start > end for start: %s end: %s) ", v43, 0x16u);
        sub_1D202994C(v44);
        sub_1D202994C(v45);
        sub_1D208C8BC();
      }
    }

    else
    {
    }

    MEMORY[0x1E69E5920](v79);
  }

  v33 = v98[2];
  v32[1] = v98 + 2;
  v33(v102, v104, v96);
  v35 = v98[4];
  v34 = v98 + 4;
  v35(v107, v102, v96);
  v33(v102, v103, v96);
  v35(v107 + *(v105 + 20), v102, v96);
  sub_1D204FF3C(v107, v81);
  v37 = v98[1];
  v36 = v98 + 1;
  v37(v103, v96);
  v37(v104, v96);
  return sub_1D204FFE8(v107);
}

uint64_t sub_1D204FF3C(uint64_t a1, uint64_t a2)
{
  v5 = sub_1D208BF1C();
  v6 = *(*(v5 - 8) + 16);
  v6(a2, a1);
  v2 = type metadata accessor for EKDateRange();
  (v6)(a2 + *(v2 + 20), a1 + *(v2 + 20), v5);
  return a2;
}

uint64_t sub_1D204FFE8(uint64_t a1)
{
  v4 = sub_1D208BF1C();
  v3 = *(*(v4 - 8) + 8);
  v3(a1);
  v1 = type metadata accessor for EKDateRange();
  (v3)(a1 + *(v1 + 20), v4);
  return a1;
}

uint64_t sub_1D20500E4@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1D208BF1C();
  v3 = v1 + ((*(*(v2 - 8) + 80) + 16) & ~*(*(v2 - 8) + 80));

  return sub_1D2050084(v3, a1);
}

uint64_t EKDateRange.hash(into:)(uint64_t a1)
{
  v9 = a1;
  v2 = v1;
  v13 = v2;
  v22 = 0;
  v21 = 0;
  v12 = 0;
  v18 = sub_1D208BF1C();
  v10 = *(v18 - 8);
  v11 = v18 - 8;
  v8 = (v10[8] + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v18);
  v17 = &v7 - v8;
  v22 = a1;
  v21 = v4;
  v15 = v10[2];
  v14 = v10 + 2;
  v15();
  v16 = sub_1D1FE5320();
  sub_1D208CBAC();
  v20 = v10[1];
  v19 = v10 + 1;
  v20(v17, v18);
  v5 = type metadata accessor for EKDateRange();
  (v15)(v17, v13 + *(v5 + 20), v18);
  sub_1D208CBAC();
  return (v20)(v17, v18);
}

uint64_t static EKDateRange.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v8 = a1;
  v12 = a2;
  v24 = 0;
  v23 = 0;
  v19 = sub_1D208BF1C();
  v15 = *(v19 - 8);
  v16 = v19 - 8;
  v10 = v15[8];
  v9 = (v10 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v19);
  v17 = &v4 - v9;
  v11 = v9;
  MEMORY[0x1EEE9AC00](&v4 - v9);
  v18 = &v4 - v11;
  v24 = v2;
  v23 = v12;
  v14 = v15[2];
  v13 = v15 + 2;
  v14();
  (v14)(v17, v12, v19);
  v22 = sub_1D208BEBC();
  v21 = v15[1];
  v20 = v15 + 1;
  v21(v17, v19);
  v21(v18, v19);
  if (v22)
  {
    v5 = type metadata accessor for EKDateRange();
    (v14)(v18, v8 + *(v5 + 20), v19);
    (v14)(v17, v12 + *(v5 + 20), v19);
    v6 = sub_1D208BEBC();
    v21(v17, v19);
    v21(v18, v19);
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

uint64_t EKDateRange.hashValue.getter()
{
  type metadata accessor for EKDateRange();
  sub_1D20524A4();
  return sub_1D208C9DC();
}

uint64_t sub_1D20505EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = a3;
  v7[1] = a4;
  v8 = *(a3 - 8);
  v9 = a3 - 8;
  v7[0] = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x1EEE9AC00](a1);
  v10 = v7 - v7[0];
  v4();
  v12 = sub_1D208CACC();
  v13 = v5;
  (*(v8 + 8))(v10, v11);
  return v12;
}

uint64_t sub_1D20506D0()
{
  v5 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = sub_1D208BF1C();
  v1 = sub_1D205072C();

  return sub_1D20505EC(v5, v3, v4, v1);
}

unint64_t sub_1D205072C()
{
  v2 = qword_1EC6BF138;
  if (!qword_1EC6BF138)
  {
    sub_1D208BF1C();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC6BF138);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1D20507AC()
{
  v2 = qword_1EC6BF140;
  if (!qword_1EC6BF140)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EC6BF140);
    return ObjCClassMetadata;
  }

  return v2;
}

void *sub_1D2050838(void *a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v4 = a4();
  sub_1D20508D4(v4, v5, a3);
  v8 = *a1;

  sub_1D208C91C();
  result = a1;
  *a1 = v8 + 8;
  return result;
}

uint64_t sub_1D20508D4(uint64_t a1, uint64_t a2, uint64_t *a3)
{

  v14 = sub_1D2050A78(&v17, 0, 0, 1, a1, a2);
  v15 = v3;
  v16 = v4;
  v11 = v17;
  swift_unknownObjectRetain();
  if (v14)
  {
    swift_unknownObjectRelease();

    v12[3] = swift_getObjectType();
    swift_unknownObjectRetain();
    v12[0] = v14;
    v6 = *a3;
    if (*a3)
    {
      sub_1D20526B0(v12, v6);
      swift_unknownObjectRelease();
      *a3 = v6 + 32;
    }

    else
    {
      swift_unknownObjectRelease();
    }

    __swift_destroy_boxed_opaque_existential_1(v12);
  }

  else
  {
    v13[3] = MEMORY[0x1E69E6A18];
    v13[0] = a1;
    v13[1] = a2;
    v7 = *a3;
    if (*a3)
    {
      sub_1D20526B0(v13, v7);
      swift_unknownObjectRelease();
      *a3 = v7 + 32;
    }

    else
    {
      swift_unknownObjectRelease();
    }

    __swift_destroy_boxed_opaque_existential_1(v13);
  }

  return v11;
}

uint64_t sub_1D2050A78(uint64_t result, char *a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  v19 = result;
  v25 = a6;
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (a2)
      {
        if (!a3)
        {
          __break(1u);
        }

        v18 = a3 - a2;
      }

      else
      {
        v18 = 0;
      }

      v17 = (a6 & 0xF00000000000000uLL) >> 56;
      if (v17 < v18)
      {
        if (a2)
        {
          v16 = a2;
        }

        else
        {
          sub_1D208CA2C();
          __break(1u);
        }

        v22[0] = a5;
        v22[1] = a6 & (-bswap64(0xFFuLL) - 1);
        sub_1D2050E30(v22, v17, v16);
        sub_1D208C92C();
        *v19 = v16;
        v12 = 0;
        v13 = v17;
        v14 = 1;
        v15 = 0;
        goto LABEL_28;
      }
    }

    goto LABEL_14;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
LABEL_14:
    v6 = sub_1D2050FAC(a5, a6);
    *v19 = v7;
    v12 = v6;
    v13 = v8;
    v14 = 0;
    v15 = 1;
LABEL_28:
    v22[2] = v12;
    v22[3] = v13;
    v23 = v14 & 1;
    v24 = v15 & 1;
    return v12;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    if ((a6 & 0xFFFFFFFFFFFFFFFLL) != 0xFFFFFFFFFFFFFFE0)
    {
      v11 = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
      goto LABEL_23;
    }

    __break(1u);
  }

  result = sub_1D208CA0C();
  if (result)
  {
    v10 = result;
  }

  else
  {
    result = sub_1D208CA2C();
    __break(1u);
  }

  v11 = v10;
LABEL_23:
  *v19 = v11;
  if (a6 < 0)
  {
    v9 = 0;
LABEL_27:
    v12 = v9;
    v13 = a5 & 0xFFFFFFFFFFFFLL;
    v14 = 0;
    v15 = 0;
    goto LABEL_28;
  }

  if ((a6 & 0xFFFFFFFFFFFFFFFLL) != 0)
  {
    swift_unknownObjectRetain();
    v9 = a6 & 0xFFFFFFFFFFFFFFFLL;
    goto LABEL_27;
  }

  __break(1u);
  return result;
}

char *sub_1D2050E30(char *result, int64_t a2, char *a3)
{
  if (a2 < 0)
  {
LABEL_7:
    result = sub_1D208CA4C();
    __break(1u);
    goto LABEL_8;
  }

  if ((a2 * 1) >> 64 == a2 >> 63)
  {
    if (result >= &a3[a2] || a3 >= &result[a2])
    {
      memcpy(a3, result, a2);
      return a3;
    }

    sub_1D208CA4C();
    __break(1u);
    goto LABEL_7;
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_1D2050FAC(uint64_t a1, uint64_t a2)
{
  v7 = sub_1D2051068(a1, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BF158, &qword_1D2091280);
  inited = swift_initStackObject();
  v3 = sub_1D2051878(inited, 1);
  *v4 = 0;
  sub_1D20518C4();
  sub_1D20518F8(v3);

  v8 = sub_1D2051CA0(v7);

  result = v8;
  if (!__OFSUB__(v8, 1))
  {
    return v7;
  }

  __break(1u);
  return result;
}

uint64_t sub_1D2051068(uint64_t a1, uint64_t a2)
{
  v17[2] = a2;
  if ((a2 & 0x1000000000000000) != 0)
  {
    v13 = sub_1D208C67C();
  }

  else
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v12 = (a2 & 0xF00000000000000uLL) >> 56;
    }

    else
    {
      v12 = a1 & 0xFFFFFFFFFFFFLL;
    }

    v13 = v12;
  }

  if (!v13)
  {
    return sub_1D20521C0();
  }

  v10 = sub_1D2051CB8(v13, 0);

  v11 = (v10 + 4);

  if (v13 < 0)
  {
LABEL_30:
    sub_1D208CA4C();
    __break(1u);
    return sub_1D20521C0();
  }

  v16[12] = a2;
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v16[0] = a1;
      v16[1] = a2 & (-bswap64(0xFFuLL) - 1);
      if (v13 >= ((a2 & 0xF00000000000000uLL) >> 56))
      {
        sub_1D2051DFC(v16, (a2 & 0xF00000000000000uLL) >> 56, v11);
        v8 = (a2 & 0xF00000000000000uLL) >> 56;
        goto LABEL_26;
      }

      goto LABEL_29;
    }

    if ((a1 & 0x1000000000000000) != 0)
    {
      if ((a2 & 0xFFFFFFFFFFFFFFFLL) != 0xFFFFFFFFFFFFFFE0)
      {
        v6 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
        v7 = a1 & 0xFFFFFFFFFFFFLL;
        goto LABEL_22;
      }

      __break(1u);
    }

    v6 = sub_1D208CA0C();
    v7 = v3;
LABEL_22:
    if (v13 >= v7)
    {
      if (!v6)
      {
        __break(1u);
      }

      sub_1D2051DFC(v6, v7, v11);
      v8 = v7;
      goto LABEL_26;
    }

    goto LABEL_29;
  }

  v9 = sub_1D208C9EC();
  if (v2)
  {
LABEL_29:
    sub_1D208CA2C();
    __break(1u);
    goto LABEL_30;
  }

  v8 = v9;
LABEL_26:
  v16[11] = 0xE000000000000000;

  v17[0] = 0;
  v17[1] = 0xE000000000000000;
  v16[10] = 0xE000000000000000;
  if (v8 != v13)
  {
    sub_1D208CA2C();
    __break(1u);
  }

  sub_1D1FE023C(v17);
  return v10;
}

uint64_t sub_1D2051878(uint64_t a1, uint64_t a2)
{

  *(a1 + 16) = a2;
  *(a1 + 24) = 2 * a2;

  return a1;
}

void sub_1D20518F8(uint64_t a1)
{
  v20 = sub_1D2051CA0(a1);
  v2 = sub_1D2051CA0(*v1);
  v21 = v2 + v20;
  if (__OFADD__(v2, v20))
  {
    goto LABEL_31;
  }

  v16 = *v19;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v19 = v16;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0 || v21 > *(*v19 + 24) >> 1)
  {
    if (*(*v19 + 16) < v21)
    {
      v15 = v21;
    }

    else
    {
      v15 = *(*v19 + 16);
    }

    v14 = *v19;

    v4 = sub_1D20521F0(isUniquelyReferenced_nonNull_native, v15, 1, v14);
    v5 = *v19;
    *v19 = v4;
  }

  v6 = *(*v19 + 16);
  v12 = (*v19 + 32 + v6);
  v7 = *(*v19 + 24) >> 1;
  v13 = v7 - v6;
  if (__OFSUB__(v7, v6))
  {
    goto LABEL_32;
  }

  if (v13 < 0)
  {
LABEL_30:
    sub_1D208CA4C();
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!sub_1D205235C(a1))
  {
LABEL_21:

    if (v20 <= 0)
    {
      goto LABEL_28;
    }

    sub_1D208CA2C();
    __break(1u);
    goto LABEL_30;
  }

  if (v13 < v20)
  {
    sub_1D208CA2C();
    __break(1u);
    goto LABEL_21;
  }

  sub_1D2051DFC((a1 + 32), v20, v12);

  swift_unknownObjectRelease();
  if (v20 <= 0)
  {
    goto LABEL_28;
  }

  v9 = *(*v19 + 16);
  v11 = v9 + v20;
  if (!__OFADD__(v9, v20))
  {
    *(*v19 + 16) = v11;
LABEL_28:
    sub_1D1FCF41C();
    return;
  }

LABEL_33:
  __break(1u);
}

void *sub_1D2051CB8(uint64_t a1, uint64_t a2)
{
  if (a2 < a1)
  {
    v7 = a1;
  }

  else
  {
    v7 = a2;
  }

  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BF158, &qword_1D2091280);
    v6 = swift_allocObject();

    if (_swift_stdlib_has_malloc_size())
    {
      v4 = _swift_stdlib_malloc_size(v6) - 32;
      v6[2] = a1;
      v6[3] = 2 * v4;
    }

    else
    {
      v6[2] = a1;
      v6[3] = 2 * v7;
    }

    return v6;
  }

  else
  {
    v3 = MEMORY[0x1E69E7CC0];

    return v3;
  }
}

void *sub_1D2051DFC(char *a1, size_t a2, char *a3)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    if (a1 >= &a3[a2] || a3 >= &a1[a2])
    {
      return memcpy(a3, a1, a2);
    }

    sub_1D208CA4C();
    __break(1u);
  }

  result = sub_1D208CA4C();
  __break(1u);
  return result;
}

uint64_t sub_1D2051F4C(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v11 = a1;
  if ((a3 & 0x1000000000000000) != 0 && (a2 & 0x800000000000000) == 0)
  {
    v10 = a1 >> 16;
    if ((a3 & 0x1000000000000000) != 0)
    {
      v9 = MEMORY[0x1D3894910](15, v10, a2, a3);
LABEL_11:
      if (v11 >> 14)
      {
        v7 = ((v9 >> 16) + (v11 >> 14)) << 16;
      }

      else
      {
        v7 = v9 & 0xFFFFFFFFFFFFFFFCLL | v11 & 3;
      }

      return v7 | 8;
    }

    if ((v10 & 0x8000000000000000) == 0)
    {
      v8 = (a3 & 0x2000000000000000) != 0 ? (a3 & 0xF00000000000000uLL) >> 56 : a2 & 0xFFFFFFFFFFFFLL;
      if (v8 >= v10)
      {
        v9 = (v10 << 16) | 4;
        goto LABEL_11;
      }
    }

    sub_1D208CA2C();
    __break(1u);
  }

  v5 = sub_1D208C6BC();
  if (v11 >> 14)
  {
    v4 = ((v5 >> 16) + (v11 >> 14)) << 16;
  }

  else
  {
    v4 = v5 & 0xFFFFFFFFFFFFFFFCLL | v11 & 3;
  }

  return v4 | 4;
}

uint64_t sub_1D20521C0()
{
  v1 = MEMORY[0x1E69E7CC0];

  return v1;
}

char *sub_1D20521F0(char *result, uint64_t a2, char a3, uint64_t a4)
{
  v7 = result;
  v9 = *(a4 + 24) >> 1;
  if (a3)
  {
    if (v9 < a2)
    {
      if ((v9 * 2) >> 64 != (2 * v9) >> 63)
      {
        __break(1u);
        return result;
      }

      if (2 * v9 < a2)
      {
        v6 = a2;
      }

      else
      {
        v6 = 2 * v9;
      }
    }

    else
    {
      v6 = *(a4 + 24) >> 1;
    }
  }

  else
  {
    v6 = a2;
  }

  v4 = *(a4 + 16);
  v5 = sub_1D2051CB8(v4, v6);
  if (v7)
  {
    sub_1D2052364((a4 + 32), v4, v5 + 32);

    *(a4 + 16) = 0;
  }

  else
  {

    sub_1D2051DFC((a4 + 32), v4, v5 + 32);
    swift_unknownObjectRelease();
  }

  return v5;
}

char *sub_1D2052364(char *result, size_t a2, char *a3)
{
  if ((a2 & 0x8000000000000000) != 0)
  {
    result = sub_1D208CA4C();
    __break(1u);
  }

  else if (a3 < result || a3 >= &result[a2] || a3 != result)
  {
    return memmove(a3, result, a2);
  }

  return result;
}

unint64_t sub_1D20524A4()
{
  v2 = qword_1EC6BF148;
  if (!qword_1EC6BF148)
  {
    type metadata accessor for EKDateRange();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC6BF148);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1D205253C()
{
  v2 = qword_1EC6BF150;
  if (!qword_1EC6BF150)
  {
    type metadata accessor for EKDateRange();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC6BF150);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1D205260C()
{
  v2 = sub_1D208BF1C();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return v2;
}

uint64_t sub_1D20526B0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 24);
  *(a2 + 24) = v2;
  (**(v2 - 8))(a2);
  return a2;
}

uint64_t static EKGuidance.supportsSecureCoding.getter()
{
  v1 = sub_1D2052748();
  swift_beginAccess();
  v2 = *v1;
  swift_endAccess();
  return v2 & 1;
}

uint64_t static EKGuidance.supportsSecureCoding.setter(char a1)
{
  v2 = sub_1D2052748();
  swift_beginAccess();
  *v2 = a1;
  return swift_endAccess();
}

uint64_t (*static EKGuidance.supportsSecureCoding.modify())()
{
  sub_1D2052748();
  swift_beginAccess();
  return sub_1D2052924;
}

uint64_t sub_1D2052964@<X0>(_BYTE *a1@<X8>)
{
  v2 = sub_1D2052748();
  swift_beginAccess();
  v4 = *v2;
  result = swift_endAccess();
  *a1 = v4;
  return result;
}

uint64_t sub_1D20529C4(char *a1)
{
  v3 = *a1;
  v2 = sub_1D2052748();
  swift_beginAccess();
  *v2 = v3;
  return swift_endAccess();
}

uint64_t EKGuidance.forecastIdentifier.getter()
{
  v2 = *(v0 + OBJC_IVAR____TtC19EnergyKitFoundation10EKGuidance_forecastIdentifier);
  v3 = *(v0 + OBJC_IVAR____TtC19EnergyKitFoundation10EKGuidance_forecastIdentifier + 8);

  return v2;
}

uint64_t EKGuidance.start.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = OBJC_IVAR____TtC19EnergyKitFoundation10EKGuidance_start;
  v2 = sub_1D208BF1C();
  return (*(*(v2 - 8) + 16))(a1, v1 + v4);
}

uint64_t EKGuidance.signal.getter()
{
  v2 = *(v0 + OBJC_IVAR____TtC19EnergyKitFoundation10EKGuidance_signal);

  return v2;
}

EnergyKitFoundation::EKGuidance::CodingKeys_optional __swiftcall EKGuidance.CodingKeys.init(stringValue:)(Swift::String stringValue)
{
  v10 = v1;
  v20 = stringValue;

  v19[0] = sub_1D208C64C();
  v19[1] = v2;
  v18 = stringValue;
  v12 = MEMORY[0x1D38948D0](v19[0], v2, stringValue._countAndFlagsBits, stringValue._object);
  sub_1D1FE023C(v19);
  if (v12)
  {

    v21 = 0;
  }

  else
  {

    v17[0] = sub_1D208C64C();
    v17[1] = v3;
    v16 = stringValue;
    v9 = MEMORY[0x1D38948D0](v17[0], v3, stringValue._countAndFlagsBits, stringValue._object);
    sub_1D1FE023C(v17);
    if (v9)
    {

      v21 = 1;
    }

    else
    {

      v15[0] = sub_1D208C64C();
      v15[1] = v4;
      v14 = stringValue;
      v8 = MEMORY[0x1D38948D0](v15[0], v4, stringValue._countAndFlagsBits, stringValue._object);
      sub_1D1FE023C(v15);
      if (v8)
      {

        v21 = 2;
      }

      else
      {

        v13[0] = sub_1D208C64C();
        v13[1] = v5;
        v7 = MEMORY[0x1D38948D0](v13[0], v5, stringValue._countAndFlagsBits, stringValue._object);
        sub_1D1FE023C(v13);
        if ((v7 & 1) == 0)
        {

          *v10 = 4;
          return result;
        }

        v21 = 3;
      }
    }
  }

  *v10 = v21;
}

BOOL static EKGuidance.CodingKeys.== infix(_:_:)(_BYTE *a1, _BYTE *a2)
{
  v5 = *a1;
  v6 = *a2;
  if (*a1)
  {
    if (v5 == 1)
    {
      v4 = 1;
    }

    else if (v5 == 2)
    {
      v4 = 2;
    }

    else
    {
      v4 = 3;
    }
  }

  else
  {
    v4 = 0;
  }

  if (*a2)
  {
    if (v6 == 1)
    {
      v3 = 1;
    }

    else if (v6 == 2)
    {
      v3 = 2;
    }

    else
    {
      v3 = 3;
    }
  }

  else
  {
    v3 = 0;
  }

  return v4 == v3;
}

uint64_t EKGuidance.CodingKeys.hash(into:)()
{
  if (*v0)
  {
    *v0;
  }

  return sub_1D208CBAC();
}

uint64_t EKGuidance.CodingKeys.hashValue.getter()
{
  v2 = *v0;
  sub_1D2055230();
  return sub_1D208C9DC();
}

uint64_t EKGuidance.CodingKeys.stringValue.getter()
{
  if (*v0)
  {
    *v0;
  }

  return sub_1D208C64C();
}

char *EKGuidance.init(start:interval:signal:identifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  v28 = a1;
  v18 = a5;
  v25 = a2;
  v22 = a3;
  v24 = a4;
  v37 = 0;
  v36 = 0;
  v35 = 0.0;
  v34 = 0;
  v32 = 0;
  v33 = 0;
  v20 = 0;
  v29 = sub_1D208BF1C();
  v26 = *(v29 - 8);
  v27 = v29 - 8;
  v6 = (*(v26 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v7 = MEMORY[0x1EEE9AC00](v29);
  v17 = &v15 - v8;
  v36 = v9;
  v35 = v7;
  v34 = v25;
  v32 = v22;
  v33 = v10;
  v37 = v5;
  v16 = v5;
  (*(v26 + 16))();
  (*(v26 + 32))(&v16[OBJC_IVAR____TtC19EnergyKitFoundation10EKGuidance_start], v17, v29);
  *&v37[OBJC_IVAR____TtC19EnergyKitFoundation10EKGuidance_interval] = v18;
  v19 = v37;

  *&v19[OBJC_IVAR____TtC19EnergyKitFoundation10EKGuidance_signal] = v25;
  v21 = v37;

  v11 = v24;
  v12 = &v21[OBJC_IVAR____TtC19EnergyKitFoundation10EKGuidance_forecastIdentifier];
  *v12 = v22;
  *(v12 + 1) = v11;
  v23 = v37;
  v13 = type metadata accessor for EKGuidance();
  v31.receiver = v23;
  v31.super_class = v13;
  v30 = objc_msgSendSuper2(&v31, sel_init);
  MEMORY[0x1E69E5928](v30);
  v37 = v30;

  (*(v26 + 8))(v28, v29);
  MEMORY[0x1E69E5920](v37);
  return v30;
}

uint64_t EKGuidance.init(coder:)(void *a1)
{
  v53 = v78;
  v66 = a1;
  v93 = 0;
  v92 = 0;
  v90 = 0;
  v84 = 0.0;
  v79 = 0;
  v73 = 0;
  v74 = 0;
  v72 = 0;
  v54 = sub_1D208BF1C();
  v55 = *(v54 - 8);
  v56 = v54 - 8;
  v57 = (*(v55 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v54);
  v58 = &v20 - v57;
  v59 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v20 - v57);
  v60 = &v20 - v59;
  v93 = &v20 - v59;
  v61 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BF180, &qword_1D208E5C0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v66);
  v62 = &v20 - v61;
  v63 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v4);
  v64 = &v20 - v63;
  v92 = &v20 - v63;
  v90 = v5;
  v91 = v1;
  v88 = 0;
  EKGuidance.CodingKeys.stringValue.getter();
  v65 = v6;
  v67 = sub_1D208C5BC();

  v68 = [v66 decodeObjectForKey_];
  MEMORY[0x1E69E5920](v67);
  if (v68)
  {
    v52 = v68;
    v51 = v68;
    v50 = &v69;
    sub_1D208C94C();
    sub_1D20553D8(v50, &v86);
    swift_unknownObjectRelease();
  }

  else
  {
    v86 = 0uLL;
    v87 = 0uLL;
  }

  v7 = v53;
  *(v53 + 11) = v86;
  *(v7 + 12) = v87;
  if (v89[3])
  {
    if (swift_dynamicCast())
    {
      (*(v55 + 56))(v64, 0, 1, v54);
    }

    else
    {
      (*(v55 + 56))(v64, 1, 1, v54);
    }
  }

  else
  {
    sub_1D205539C(v89);
    (*(v55 + 56))(v64, 1, 1, v54);
  }

  v85 = 1;
  EKGuidance.CodingKeys.stringValue.getter();
  v44 = v8;
  v45 = sub_1D208C5BC();

  [v66 decodeDoubleForKey_];
  v46 = v9;
  MEMORY[0x1E69E5920](v45);
  v84 = v46;
  v82 = 2;
  EKGuidance.CodingKeys.stringValue.getter();
  v47 = v10;
  v48 = sub_1D208C5BC();

  v49 = [v66 decodeObjectForKey_];
  MEMORY[0x1E69E5920](v48);
  if (v49)
  {
    v43 = v49;
    v42 = v49;
    v41 = v70;
    sub_1D208C94C();
    sub_1D20553D8(v41, &v80);
    swift_unknownObjectRelease();
  }

  else
  {
    v80 = 0uLL;
    v81 = 0uLL;
  }

  v11 = v53;
  *(v53 + 5) = v80;
  *(v11 + 6) = v81;
  if (v83[3])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BF188, &qword_1D2091288);
    if (swift_dynamicCast())
    {
      v39 = v70[4];
    }

    else
    {
      v39 = 0;
    }

    v40 = v39;
  }

  else
  {
    sub_1D205539C(v83);
    v40 = 0;
  }

  v35 = v40;
  v79 = v40;
  v77 = 3;
  EKGuidance.CodingKeys.stringValue.getter();
  v36 = v12;
  v37 = sub_1D208C5BC();

  v38 = [v66 decodeObjectForKey_];
  MEMORY[0x1E69E5920](v37);
  if (v38)
  {
    v34 = v38;
    v33 = v38;
    v32 = v71;
    sub_1D208C94C();
    sub_1D20553D8(v32, &v75);
    swift_unknownObjectRelease();
  }

  else
  {
    v75 = 0uLL;
    v76 = 0uLL;
  }

  v13 = v53;
  *v53 = v75;
  *(v13 + 1) = v76;
  if (v78[3])
  {
    if (swift_dynamicCast())
    {
      v28 = v71[4];
      v29 = v71[5];
    }

    else
    {
      v28 = 0;
      v29 = 0;
    }

    v30 = v28;
    v31 = v29;
  }

  else
  {
    sub_1D205539C(v78);
    v30 = 0;
    v31 = 0;
  }

  v26 = v31;
  v27 = v30;
  v73 = v30;
  v74 = v31;
  sub_1D1FE94C4(v64, v62);
  if ((*(v55 + 48))(v62, 1, v54) == 1)
  {
    sub_1D1FF1A9C(v62);
LABEL_32:

    sub_1D1FF1A9C(v64);
    MEMORY[0x1E69E5920](v66);
    v20 = v91;
    swift_getObjectType();
    v17 = *((*v20 & *MEMORY[0x1E69E7D40]) + 0x30);
    v18 = *((*v20 & *MEMORY[0x1E69E7D40]) + 0x34);
    swift_deallocPartialClassInstance();
    return 0;
  }

  (*(v55 + 32))(v60, v62, v54);

  if (!v35)
  {
    (*(v55 + 8))(v60, v54);
    goto LABEL_32;
  }

  v25 = v35;
  v22 = v35;
  v72 = v35;
  ObjectType = swift_getObjectType();
  (*(v55 + 16))(v58, v60, v54);

  v23 = (*(ObjectType + 112))(v58, v22, v27, v26, v46);
  v21 = v91;
  MEMORY[0x1E69E5928](v23);
  v91 = v23;
  swift_getObjectType();
  v15 = *((*v21 & *MEMORY[0x1E69E7D40]) + 0x30);
  v16 = *((*v21 & *MEMORY[0x1E69E7D40]) + 0x34);
  swift_deallocPartialClassInstance();

  (*(v55 + 8))(v60, v54);

  sub_1D1FF1A9C(v64);
  MEMORY[0x1E69E5920](v66);
  MEMORY[0x1E69E5920](v91);
  return v23;
}

uint64_t sub_1D2053F24(void *a1)
{
  v34 = a1;
  v44 = 0;
  v43 = 0;
  v22 = sub_1D208BF1C();
  v20 = *(v22 - 8);
  v21 = v22 - 8;
  v19 = (*(v20 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v1 = MEMORY[0x1EEE9AC00](v34);
  v23 = v11 - v19;
  v44 = v2;
  v43 = v31;
  (*(v20 + 16))(v11 - v19, v31 + OBJC_IVAR____TtC19EnergyKitFoundation10EKGuidance_start, v1);
  v26 = sub_1D208BE7C();
  (*(v20 + 8))(v23, v22);
  v42 = 0;
  EKGuidance.CodingKeys.stringValue.getter();
  v3 = v31;
  v24 = v4;
  v25 = sub_1D208C5BC();

  v33 = 0x1FA948000uLL;
  [v34 0x1FA948F02];
  MEMORY[0x1E69E5920](v25);
  swift_unknownObjectRelease();
  v28 = *(v3 + OBJC_IVAR____TtC19EnergyKitFoundation10EKGuidance_interval);
  v41 = 1;
  EKGuidance.CodingKeys.stringValue.getter();
  v5 = v31;
  v27 = v6;
  v29 = sub_1D208C5BC();

  [v34 encodeDouble:v29 forKey:v28];
  MEMORY[0x1E69E5920](v29);
  v30 = *(v5 + OBJC_IVAR____TtC19EnergyKitFoundation10EKGuidance_signal);

  v36 = sub_1D208C77C();

  v40 = 2;
  EKGuidance.CodingKeys.stringValue.getter();
  v7 = v31;
  v32 = v8;
  v35 = sub_1D208C5BC();

  [v34 (v33 + 3842)];
  MEMORY[0x1E69E5920](v35);
  swift_unknownObjectRelease();
  v37 = *(v7 + OBJC_IVAR____TtC19EnergyKitFoundation10EKGuidance_forecastIdentifier);
  v38 = *(v7 + OBJC_IVAR____TtC19EnergyKitFoundation10EKGuidance_forecastIdentifier + 8);

  if (v38)
  {
    v17 = v37;
    v18 = v38;
    v14 = v38;
    v15 = sub_1D208C5BC();

    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  v13 = v16;
  v39 = 3;
  EKGuidance.CodingKeys.stringValue.getter();
  v11[1] = v9;
  v12 = sub_1D208C5BC();

  [v34 encodeObject:v13 forKey:v12];
  MEMORY[0x1E69E5920](v12);
  return swift_unknownObjectRelease();
}

id EKGuidance.__deallocating_deinit()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for EKGuidance();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1D2054480(uint64_t a1)
{
  v26 = a1;
  v49 = 0;
  v48 = 0;
  v38 = sub_1D208BF1C();
  v33 = *(v38 - 8);
  v34 = v38 - 8;
  v25 = (*(v33 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v38);
  v40 = v9 - v25;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BF190, &qword_1D2091290);
  v27 = *(v37 - 8);
  v28 = v37 - 8;
  v29 = (*(v27 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v26);
  v32 = v9 - v29;
  v49 = v2;
  v48 = v1;
  v30 = v2[3];
  v31 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v30);
  sub_1D20552AC();
  sub_1D208CBEC();
  (*(v33 + 16))(v40, v35 + OBJC_IVAR____TtC19EnergyKitFoundation10EKGuidance_start, v38);
  v36 = &v47;
  v47 = 0;
  sub_1D2055F88();
  v3 = v39;
  sub_1D208CABC();
  v41 = v3;
  v42 = v3;
  if (v3)
  {
    v11 = v42;
    (*(v33 + 8))(v40, v38);
    result = (*(v27 + 8))(v32, v37);
    v12 = v11;
  }

  else
  {
    (*(v33 + 8))(v40, v38);
    v4 = v41;
    v5 = *(v35 + OBJC_IVAR____TtC19EnergyKitFoundation10EKGuidance_interval);
    v46 = 1;
    sub_1D208CAAC();
    v23 = v4;
    v24 = v4;
    if (v4)
    {
      v10 = v24;
      result = (*(v27 + 8))(v32, v37);
      v12 = v10;
    }

    else
    {
      v17 = *(v35 + OBJC_IVAR____TtC19EnergyKitFoundation10EKGuidance_signal);

      v20 = &v45;
      v45 = v17;
      v18 = &v44;
      v44 = 2;
      v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BF188, &qword_1D2091288);
      sub_1D2056008();
      v6 = v23;
      sub_1D208CABC();
      v21 = v6;
      v22 = v6;
      if (v6)
      {
        v9[1] = v22;
        sub_1D1FD3C38(&v45);
        return (*(v27 + 8))(v32, v37);
      }

      else
      {
        sub_1D1FD3C38(&v45);
        v7 = v21;
        v13 = *(v35 + OBJC_IVAR____TtC19EnergyKitFoundation10EKGuidance_forecastIdentifier);
        v14 = *(v35 + OBJC_IVAR____TtC19EnergyKitFoundation10EKGuidance_forecastIdentifier + 8);

        v43 = 3;
        sub_1D208CA9C();
        v15 = v7;
        v16 = v7;
        if (v7)
        {
          v9[0] = v16;
        }

        return (*(v27 + 8))(v32, v37);
      }
    }
  }

  return result;
}

char *EKGuidance.__allocating_init(from:)(uint64_t *a1)
{
  v2 = objc_allocWithZone(v1);
  v7 = EKGuidance.init(from:)(a1);
  if (v5)
  {
    return v4;
  }

  else
  {
    return v7;
  }
}

char *EKGuidance.init(from:)(uint64_t *a1)
{
  v50 = a1;
  v67 = 0;
  v45 = sub_1D208BF1C();
  v46 = *(v45 - 8);
  v47 = v45 - 8;
  v48 = (*(v46 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v45);
  v49 = &v15 - v48;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BF1A8, &qword_1D2091298);
  v52 = *(v51 - 8);
  v53 = v51 - 8;
  v54 = (*(v52 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v50);
  v55 = &v15 - v54;
  v67 = v2;
  v68 = v1;
  v57 = v2[3];
  v58 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v57);
  sub_1D20552AC();
  v3 = v56;
  sub_1D208CBDC();
  v59 = v3;
  v60 = v3;
  if (v3)
  {
    v23 = v60;
    v24 = 0;
  }

  else
  {
    v41 = v68;
    v42 = &v66;
    v66 = 0;
    sub_1D205609C();
    v4 = v59;
    sub_1D208CA8C();
    v43 = v4;
    v44 = v4;
    if (v4)
    {
      v22 = v44;
      (*(v52 + 8))(v55, v51);
      v23 = v22;
      v24 = 0;
    }

    else
    {
      (*(v46 + 32))(&v41[OBJC_IVAR____TtC19EnergyKitFoundation10EKGuidance_start], v49, v45);
      v5 = v43;
      v37 = v68;
      v65 = 1;
      sub_1D208CA7C();
      v38 = v5;
      v39 = v6;
      v40 = v5;
      if (v5)
      {
        v21 = v40;
        (*(v52 + 8))(v55, v51);
        v23 = v21;
        v24 = 2;
      }

      else
      {
        *&v37[OBJC_IVAR____TtC19EnergyKitFoundation10EKGuidance_interval] = v39;
        v32 = v68;
        v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BF188, &qword_1D2091288);
        v33 = &v63;
        v63 = 2;
        sub_1D205611C();
        v7 = v38;
        sub_1D208CA8C();
        v35 = v7;
        v36 = v7;
        if (!v7)
        {
          *&v32[OBJC_IVAR____TtC19EnergyKitFoundation10EKGuidance_signal] = v64;
          v27 = v68;
          v62 = 3;
          v8 = sub_1D208CA6C();
          v28 = 0;
          v29 = v8;
          v30 = v9;
          v31 = 0;
          v10 = &v27[OBJC_IVAR____TtC19EnergyKitFoundation10EKGuidance_forecastIdentifier];
          *v10 = v8;
          v10[1] = v9;
          v25 = v68;
          v11 = type metadata accessor for EKGuidance();
          v61.receiver = v25;
          v61.super_class = v11;
          v26 = objc_msgSendSuper2(&v61, sel_init);
          MEMORY[0x1E69E5928](v26);
          v68 = v26;
          (*(v52 + 8))(v55, v51);
          __swift_destroy_boxed_opaque_existential_1(v50);
          MEMORY[0x1E69E5920](v68);
          return v26;
        }

        v20 = v36;
        (*(v52 + 8))(v55, v51);
        v23 = v20;
        v24 = 2;
      }
    }
  }

  v19 = v24;
  v18 = v23;
  __swift_destroy_boxed_opaque_existential_1(v50);
  if ((v19 & 2) != 0)
  {
    (*(v46 + 8))(&v68[OBJC_IVAR____TtC19EnergyKitFoundation10EKGuidance_start], v45);
  }

  if ((v19 & 8) != 0)
  {
    sub_1D1FD3C38(&v68[OBJC_IVAR____TtC19EnergyKitFoundation10EKGuidance_signal]);
  }

  v16 = v68;
  type metadata accessor for EKGuidance();
  v13 = *((*v16 & *MEMORY[0x1E69E7D40]) + 0x30);
  v14 = *((*v16 & *MEMORY[0x1E69E7D40]) + 0x34);
  swift_deallocPartialClassInstance();
  return v17;
}

uint64_t sub_1D2055138@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 144))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

unint64_t sub_1D2055230()
{
  v2 = qword_1EC6BF170;
  if (!qword_1EC6BF170)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC6BF170);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1D20552AC()
{
  v2 = qword_1EC6BF178;
  if (!qword_1EC6BF178)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC6BF178);
    return WitnessTable;
  }

  return v2;
}

uint64_t type metadata accessor for EKGuidance()
{
  v1 = qword_1EE082E00;
  if (!qword_1EE082E00)
  {
    return swift_getSingletonMetadata();
  }

  return v1;
}

uint64_t *sub_1D205539C(uint64_t *a1)
{
  if (a1[3])
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return a1;
}

__n128 sub_1D20553D8(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  result = *(a1 + 16);
  *(a2 + 16) = result;
  return result;
}

uint64_t sub_1D205542C(uint64_t (*a1)(uint64_t *, uint64_t), uint64_t a2, unsigned int a3)
{
  if (a3 < 0x80uLL)
  {
    if (a3 > 0xFF)
    {
      goto LABEL_12;
    }

    v5 = (a3 + 1);
  }

  else
  {
    v7 = (a3 & 0x3F) << 8;
    if (a3 >> 6 < 0x20uLL)
    {
      v5 = (v7 | (a3 >> 6)) + 33217;
    }

    else
    {
      v6 = (v7 | (a3 >> 6) & 0x3F) << 8;
      if (a3 >> 12 < 0x10uLL)
      {
        v5 = (v6 | (a3 >> 12)) + 8487393;
      }

      else
      {
        v5 = ((a3 >> 18) | ((v6 | (a3 >> 12) & 0x3F) << 8)) - 2122219023;
      }
    }
  }

  v4 = 4 - (__clz(v5) >> 3);
  v9 = (v5 - 0x101010101010101) & ((1 << ((8 * v4) & 0x3F)) - 1);
  sub_1D208C81C();
  if ((v4 & 0x8000000000000000) == 0)
  {
    return a1(&v9, v4);
  }

  sub_1D208CA4C();
  __break(1u);
LABEL_12:
  result = sub_1D208CA2C();
  __break(1u);
  return result;
}

uint64_t sub_1D2055758@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, unint64_t a8@<X7>, uint64_t a9@<X8>, unint64_t a10)
{
  v27 = a8;
  v28 = a7;
  v29 = a6;
  v30 = a4;
  v31 = a3;
  v32 = a2;
  v33 = a1;
  v34 = a9;
  v35 = a10;
  v36 = 0;
  v38 = a6;
  v39 = a7;
  v40 = a1;
  v41 = a2;
  v42 = a8;
  v43 = a10;
  if (a5)
  {
    if (!HIDWORD(v31))
    {
      v26 = v31;
      if ((v31 >> 11 < 0x1B || v26 >> 13 > 6) && HIWORD(v26) <= 0x10u)
      {
        v10 = v36;
        v24 = v17;
        MEMORY[0x1EEE9AC00](v17);
        v15 = sub_1D2056AEC;
        v16 = &v37;
        sub_1D205542C(sub_1D2056B08, v13, v11);
        return v10;
      }

      LODWORD(v15) = 0;
      v14 = 148;
      v13[0] = 2;
      sub_1D208CA2C();
      __break(1u);
    }

    LODWORD(v15) = 0;
    v14 = 3053;
    v13[0] = 2;
    sub_1D208CA2C();
    __break(1u);
  }

  if (v31)
  {
    v23 = v31;
    if ((v30 & 0x8000000000000000) == 0)
    {
      if (v29)
      {
        v22 = v29;
      }

      else
      {
        LODWORD(v15) = 0;
        v14 = 268;
        v13[0] = 2;
        sub_1D208CA2C();
        __break(1u);
      }

      v21 = v22;
      if (v28 >= 0xFFFFFFFF80000000)
      {
        if (v28 <= 0x7FFFFFFF)
        {
          v20 = v28;
          if (v33)
          {
            v19 = v33;
          }

          else
          {
            LODWORD(v15) = 0;
            v14 = 269;
            v13[0] = 2;
            sub_1D208CA2C();
            __break(1u);
          }

          v18 = v19;
          if (v32 >= 0xFFFFFFFF80000000)
          {
            if (v32 <= 0x7FFFFFFF)
            {
              v17[5] = v32;
              if (v30 >= 0xFFFFFFFF80000000)
              {
                if (v30 <= 0x7FFFFFFF)
                {
                  v17[4] = v30;
                  if (!HIDWORD(v27))
                  {
                    v17[3] = v27;
                    if (!HIDWORD(v35))
                    {
                      LODWORD(v15) = 0;
                      _swift_stdlib_reportUnimplementedInitializerInFile();
                      return v36;
                    }

                    LODWORD(v15) = 0;
                    v14 = 3053;
                    v13[0] = 2;
                    sub_1D208CA2C();
                    __break(1u);
                  }

                  LODWORD(v15) = 0;
                  v14 = 3053;
                  v13[0] = 2;
                  sub_1D208CA2C();
                  __break(1u);
                }

                LODWORD(v15) = 0;
                v14 = 3268;
                v13[0] = 2;
                sub_1D208CA2C();
                __break(1u);
              }

              LODWORD(v15) = 0;
              v14 = 3262;
              v13[0] = 2;
              sub_1D208CA2C();
              __break(1u);
            }

            LODWORD(v15) = 0;
            v14 = 3268;
            v13[0] = 2;
            sub_1D208CA2C();
            __break(1u);
          }

          LODWORD(v15) = 0;
          v14 = 3262;
          v13[0] = 2;
          sub_1D208CA2C();
          __break(1u);
        }

        LODWORD(v15) = 0;
        v14 = 3268;
        v13[0] = 2;
        sub_1D208CA2C();
        __break(1u);
      }

      LODWORD(v15) = 0;
      v14 = 3262;
      v13[0] = 2;
      sub_1D208CA2C();
      __break(1u);
    }

    LODWORD(v15) = 0;
    v14 = 1410;
    v13[0] = 2;
    sub_1D208CA4C();
    __break(1u);
  }

  result = sub_1D208CA2C();
  __break(1u);
  return result;
}

unint64_t sub_1D2055F88()
{
  v2 = qword_1EC6BF198;
  if (!qword_1EC6BF198)
  {
    sub_1D208BF1C();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC6BF198);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1D2056008()
{
  v2 = qword_1EC6BF1A0;
  if (!qword_1EC6BF1A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6BF188, &qword_1D2091288);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC6BF1A0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1D205609C()
{
  v2 = qword_1EC6BF1B0;
  if (!qword_1EC6BF1B0)
  {
    sub_1D208BF1C();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC6BF1B0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1D205611C()
{
  v2 = qword_1EC6BF1B8;
  if (!qword_1EC6BF1B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6BF188, &qword_1D2091288);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC6BF1B8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1D20561C8()
{
  v2 = qword_1EC6BF1C0;
  if (!qword_1EC6BF1C0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC6BF1C0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1D205625C()
{
  v2 = qword_1EC6BF1C8;
  if (!qword_1EC6BF1C8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC6BF1C8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1D20562F0()
{
  v2 = qword_1EC6BF1D0;
  if (!qword_1EC6BF1D0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC6BF1D0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1D2056388()
{
  v2 = sub_1D208BF1C();
  updated = v2;
  if (v0 <= 0x3F)
  {
    v4 = *(v2 - 8) + 64;
    updated = swift_updateClassMetadata2();
    if (!updated)
    {
      return 0;
    }
  }

  return updated;
}

uint64_t sub_1D20565D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7, unint64_t a8)
{
  if (!a3)
  {
    sub_1D208CA2C();
    __break(1u);
  }

  if (a4 >= 0xFFFFFFFF80000000)
  {
    if (a4 <= 0x7FFFFFFF)
    {
      if (!a5)
      {
        sub_1D208CA2C();
        __break(1u);
      }

      if (a6 >= 0xFFFFFFFF80000000)
      {
        if (a6 <= 0x7FFFFFFF)
        {
          if (!a1)
          {
            sub_1D208CA2C();
            __break(1u);
          }

          if (a2 >= 0xFFFFFFFF80000000)
          {
            if (a2 <= 0x7FFFFFFF)
            {
              if (a7 <= 0xFFFFFFFF)
              {
                if (a8 <= 0xFFFFFFFF)
                {
                  return _swift_stdlib_reportUnimplementedInitializerInFile();
                }

                sub_1D208CA2C();
                __break(1u);
              }

              sub_1D208CA2C();
              __break(1u);
            }

            sub_1D208CA2C();
            __break(1u);
          }

          sub_1D208CA2C();
          __break(1u);
        }

        sub_1D208CA2C();
        __break(1u);
      }

      sub_1D208CA2C();
      __break(1u);
    }

    sub_1D208CA2C();
    __break(1u);
  }

  result = sub_1D208CA2C();
  __break(1u);
  return result;
}

id static UsagePointRecords.fetchRequest()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA00, &qword_1D208D5F8);
  sub_1D208C64C();
  type metadata accessor for UsagePointRecords();
  return sub_1D1FCF514();
}

uint64_t sub_1D2056BC0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  MEMORY[0x1E69E5928](*a1);
  v6 = [v4 tariffProfiles];
  *a2 = sub_1D208BD1C();
  a2[1] = v2;
  MEMORY[0x1E69E5920](v6);
  return MEMORY[0x1E69E5920](v4);
}

uint64_t sub_1D2056C50(uint64_t *a1, void *a2)
{
  sub_1D1FCFFCC(a1, v8);
  v6 = v8[0];
  v7 = v8[1];
  v4 = *a2;
  MEMORY[0x1E69E5928](*a2);
  v5 = sub_1D208BCFC();
  [v4 setTariffProfiles_];
  MEMORY[0x1E69E5920](v5);
  MEMORY[0x1E69E5920](v4);
  return sub_1D1FD0094(v6, v7);
}

uint64_t sub_1D2056D0C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  MEMORY[0x1E69E5928](*a1);
  v6 = [v4 tariffRiders];
  *a2 = sub_1D208BD1C();
  a2[1] = v2;
  MEMORY[0x1E69E5920](v6);
  return MEMORY[0x1E69E5920](v4);
}

uint64_t sub_1D2056D9C(uint64_t *a1, void *a2)
{
  sub_1D1FCFFCC(a1, v8);
  v6 = v8[0];
  v7 = v8[1];
  v4 = *a2;
  MEMORY[0x1E69E5928](*a2);
  v5 = sub_1D208BCFC();
  [v4 setTariffRiders_];
  MEMORY[0x1E69E5920](v5);
  MEMORY[0x1E69E5920](v4);
  return sub_1D1FD0094(v6, v7);
}

uint64_t sub_1D2056E4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v10 = a2;
  v5 = a1;
  v12 = sub_1D208BF1C();
  v8 = *(v12 - 8);
  v9 = v12 - 8;
  v6 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v5);
  v11 = &v4 - v6;
  v7 = *v2;
  MEMORY[0x1E69E5928](v7);
  v15 = v7;
  v14 = v7;
  v13 = [v7 sourceTime];
  sub_1D208BECC();
  (*(v8 + 32))(v10, v11, v12);
  MEMORY[0x1E69E5920](v13);
  return MEMORY[0x1E69E5920](v14);
}

uint64_t sub_1D2056F70(uint64_t a1, void **a2)
{
  v4[1] = a1;
  v6 = a2;
  v13 = sub_1D208BF1C();
  v10 = *(v13 - 8);
  v11 = v13 - 8;
  v5 = (*(v10 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x1EEE9AC00](v13);
  v12 = v4 - v5;
  (*(v10 + 16))(v4 - v5, v2);
  v7 = *v6;
  MEMORY[0x1E69E5928](v7);
  v14 = v7;
  v9 = v7;
  v8 = sub_1D208BE7C();
  [v9 setSourceTime_];
  MEMORY[0x1E69E5920](v8);
  MEMORY[0x1E69E5920](v9);
  return (*(v10 + 8))(v12, v13);
}

uint64_t sub_1D20570C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v10 = a2;
  v5 = a1;
  v12 = sub_1D208BF1C();
  v8 = *(v12 - 8);
  v9 = v12 - 8;
  v6 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v5);
  v11 = &v4 - v6;
  v7 = *v2;
  MEMORY[0x1E69E5928](v7);
  v15 = v7;
  v14 = v7;
  v13 = [v7 creationDate];
  sub_1D208BECC();
  (*(v8 + 32))(v10, v11, v12);
  MEMORY[0x1E69E5920](v13);
  return MEMORY[0x1E69E5920](v14);
}

uint64_t sub_1D20571E4(uint64_t a1, void **a2)
{
  v4[1] = a1;
  v6 = a2;
  v13 = sub_1D208BF1C();
  v10 = *(v13 - 8);
  v11 = v13 - 8;
  v5 = (*(v10 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x1EEE9AC00](v13);
  v12 = v4 - v5;
  (*(v10 + 16))(v4 - v5, v2);
  v7 = *v6;
  MEMORY[0x1E69E5928](v7);
  v14 = v7;
  v9 = v7;
  v8 = sub_1D208BE7C();
  [v9 setCreationDate_];
  MEMORY[0x1E69E5920](v8);
  MEMORY[0x1E69E5920](v9);
  return (*(v10 + 8))(v12, v13);
}

SecTaskRef static ClientSideEntitlementCheck.valueOf(entitlement:)@<X0>(void *a1@<X8>)
{
  result = SecTaskCreateFromSelf(0);
  v5 = result;
  if (result)
  {

    v2 = sub_1D208C5BC();
    v3 = SecTaskCopyValueForEntitlement(v5, v2, 0);
    MEMORY[0x1E69E5920](v2);

    if (v3)
    {
      a1[3] = swift_getObjectType();
      swift_unknownObjectRetain();
      *a1 = v3;
      swift_unknownObjectRelease();
    }

    else
    {
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
      a1[3] = 0;
    }

    return MEMORY[0x1E69E5920](v5);
  }

  else
  {
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
    a1[3] = 0;
  }

  return result;
}

BOOL static ClientSideEntitlementCheck.hasValidApplicationID()()
{
  v5 = v0;
  v4[4] = sub_1D208C64C();
  v4[5] = v1;
  static ClientSideEntitlementCheck.valueOf(entitlement:)(v4);
  v3 = v4[3] != 0;
  sub_1D205539C(v4);

  return v3;
}

uint64_t sub_1D205761C()
{
  result = sub_1D208C64C();
  qword_1EE082DE8 = result;
  qword_1EE082DF0 = v1;
  return result;
}

uint64_t *sub_1D2057660()
{
  if (qword_1EE082DE0 != -1)
  {
    swift_once();
  }

  return &qword_1EE082DE8;
}

uint64_t static EKEnergySite.zoneNamePrefix.getter()
{
  v0 = sub_1D2057660();
  v2 = *v0;
  v3 = v0[1];

  return v2;
}

uint64_t static EKEnergySite.generateCKZoneName(siteID:)(uint64_t a1, uint64_t a2)
{
  v11[2] = 0;
  v11[3] = a1;
  v11[4] = a2;
  v11[0] = sub_1D208CB1C();
  v11[1] = v2;
  v3 = sub_1D208C64C();
  MEMORY[0x1D3894D80](v3);

  v4 = sub_1D2057660();
  v8 = *v4;
  v9 = v4[1];

  v10[0] = v8;
  v10[1] = v9;
  sub_1D208CAFC();
  sub_1D1FE023C(v10);
  v5 = sub_1D208C64C();
  MEMORY[0x1D3894D80](v5);

  sub_1D208CAFC();
  v6 = sub_1D208C64C();
  MEMORY[0x1D3894D80](v6);

  sub_1D1FE023C(v11);
  return sub_1D208C62C();
}

Swift::String __swiftcall EKEnergySite.generateCKZoneName()()
{
  v15[2] = 0;
  v15[0] = sub_1D208CB1C();
  v15[1] = v0;
  v1 = sub_1D208C64C();
  MEMORY[0x1D3894D80](v1);

  v2 = sub_1D2057660();
  v10 = *v2;
  v11 = v2[1];

  v14[0] = v10;
  v14[1] = v11;
  sub_1D208CAFC();
  sub_1D1FE023C(v14);
  v3 = sub_1D208C64C();
  MEMORY[0x1D3894D80](v3);

  v13[0] = (*((*v12 & *MEMORY[0x1E69E7D40]) + 0x168))(v4);
  v13[1] = v5;
  sub_1D208CAFC();
  sub_1D1FE023C(v13);
  v6 = sub_1D208C64C();
  MEMORY[0x1D3894D80](v6);

  sub_1D1FE023C(v15);
  v7 = sub_1D208C62C();
  result._object = v8;
  result._countAndFlagsBits = v7;
  return result;
}

uint64_t sub_1D2057B50@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v34[4] = *MEMORY[0x1E69E9840];
  v29 = 0;
  v28 = 0;
  v26 = 0;
  v31 = 0;
  v32 = 0;
  v30 = a1;
  sub_1D2057FFC(a1, v34);
  if (v34[3])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BF248, &qword_1D20914C8);
    result = swift_dynamicCast();
    if (result)
    {
      v22 = v24;
    }

    else
    {
      v22 = 0;
    }

    v21 = v22;
  }

  else
  {
    result = sub_1D205539C(v34);
    v21 = 0;
  }

  if (v21)
  {
    v28 = v21;
    v33 = 0;
    v17 = objc_opt_self();

    v19 = sub_1D208C54C();

    type metadata accessor for WritingOptions();
    sub_1D208CB2C();
    sub_1D2058124();
    sub_1D208C95C();
    v27[0] = 0;
    v20 = [v17 dataWithJSONObject:v19 options:v27[1] error:v27];
    v18 = v27[0];
    MEMORY[0x1E69E5928](v27[0]);
    v3 = v33;
    v33 = v18;
    MEMORY[0x1E69E5920](v3);
    swift_unknownObjectRelease();
    if (v20)
    {
      v15 = sub_1D208BD1C();
      v16 = v4;
      v31 = v15;
      v32 = v4;
      MEMORY[0x1E69E5920](v20);
      sub_1D1FD0018(v15, v16);
      a2[3] = MEMORY[0x1E6969080];
      *a2 = v15;
      a2[1] = v16;
      sub_1D1FD0094(v15, v16);
    }

    else
    {
      v12 = v33;
      v14 = sub_1D208BC7C();
      MEMORY[0x1E69E5920](v12);
      swift_willThrow();
      v5 = v14;
      v26 = v14;
      sub_1D208CB2C();
      v13 = v6;
      v25[0] = sub_1D208CB1C();
      v25[1] = v7;
      v8 = sub_1D208C64C();
      MEMORY[0x1D3894D80](v8);

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6BF320, "D1");
      sub_1D208CAEC();
      v9 = sub_1D208C64C();
      MEMORY[0x1D3894D80](v9);

      sub_1D1FE023C(v25);
      v10 = sub_1D208C62C();
      v13[3] = MEMORY[0x1E69E6158];
      *v13 = v10;
      v13[1] = v11;
      sub_1D1FCECE8();
      sub_1D20581A4();
      sub_1D20581D4();
      sub_1D208CB9C();

      *a2 = 0;
      a2[1] = 0;
      a2[2] = 0;
      a2[3] = 0;
    }
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
    a2[3] = 0;
  }

  *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1D2057FFC(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24))
  {
    v2 = *(a1 + 24);
    *(a2 + 24) = v2;
    (**(v2 - 8))();
  }

  else
  {
    *a2 = *a1;
    *(a2 + 16) = *(a1 + 16);
  }

  return a2;
}

uint64_t type metadata accessor for WritingOptions()
{
  v4 = qword_1EC6BF260;
  if (!qword_1EC6BF260)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_1EC6BF260);
      return v1;
    }
  }

  return v4;
}

unint64_t sub_1D2058124()
{
  v2 = qword_1EC6BF240;
  if (!qword_1EC6BF240)
  {
    type metadata accessor for WritingOptions();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC6BF240);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1D20583F0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v32[4] = *MEMORY[0x1E69E9840];
  v28[2] = 0;
  v30 = 0;
  v31 = 0;
  v27 = 0;
  v28[3] = a1;
  sub_1D2057FFC(a1, v32);
  if (v32[3])
  {
    result = swift_dynamicCast();
    if (result)
    {
      v22 = v28[4];
      v23 = v28[5];
    }

    else
    {
      v22 = 0;
      v23 = 0xF000000000000000;
    }

    v20 = v22;
    v21 = v23;
  }

  else
  {
    result = sub_1D205539C(v32);
    v20 = 0;
    v21 = 0xF000000000000000;
  }

  if ((v21 & 0xF000000000000000) == 0xF000000000000000)
  {
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
    a2[3] = 0;
  }

  else
  {
    v30 = v20;
    v31 = v21;
    v29 = 0;
    v16 = objc_opt_self();
    sub_1D1FD0018(v20, v21);
    v18 = sub_1D208BCFC();
    sub_1D1FD0094(v20, v21);
    type metadata accessor for ReadingOptions();
    sub_1D208CB2C();
    sub_1D20589EC();
    sub_1D208C95C();
    v28[0] = 0;
    v19 = [v16 JSONObjectWithData:v18 options:v28[1] error:v28];
    v17 = v28[0];
    MEMORY[0x1E69E5928](v28[0]);
    v3 = v29;
    v29 = v17;
    MEMORY[0x1E69E5920](v3);
    MEMORY[0x1E69E5920](v18);
    if (v19)
    {
      sub_1D208C94C();
      v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BF248, &qword_1D20914C8);
      if (swift_dynamicCast())
      {
        v14 = v25;
      }

      else
      {
        v14 = 0;
      }

      swift_unknownObjectRelease();

      if (v14)
      {
        a2[3] = v15;
        *a2 = v14;
      }

      else
      {
        *a2 = 0;
        a2[1] = 0;
        a2[2] = 0;
        a2[3] = 0;
      }

      result = sub_1D1FD0094(v20, v21);
    }

    else
    {
      v11 = v29;
      v13 = sub_1D208BC7C();
      MEMORY[0x1E69E5920](v11);
      swift_willThrow();
      v4 = v13;
      v27 = v13;
      sub_1D208CB2C();
      v12 = v5;
      v26[0] = sub_1D208CB1C();
      v26[1] = v6;
      v7 = sub_1D208C64C();
      MEMORY[0x1D3894D80](v7);

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6BF320, "D1");
      sub_1D208CAEC();
      v8 = sub_1D208C64C();
      MEMORY[0x1D3894D80](v8);

      sub_1D1FE023C(v26);
      v9 = sub_1D208C62C();
      v12[3] = MEMORY[0x1E69E6158];
      *v12 = v9;
      v12[1] = v10;
      sub_1D1FCECE8();
      sub_1D20581A4();
      sub_1D20581D4();
      sub_1D208CB9C();

      *a2 = 0;
      a2[1] = 0;
      a2[2] = 0;
      a2[3] = 0;

      result = sub_1D1FD0094(v20, v21);
    }
  }

  *MEMORY[0x1E69E9840];
  return result;
}

uint64_t type metadata accessor for ReadingOptions()
{
  v4 = qword_1EC6BF258;
  if (!qword_1EC6BF258)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_1EC6BF258);
      return v1;
    }
  }

  return v4;
}

unint64_t sub_1D20589EC()
{
  v2 = qword_1EC6BF250;
  if (!qword_1EC6BF250)
  {
    type metadata accessor for ReadingOptions();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC6BF250);
    return WitnessTable;
  }

  return v2;
}

id sub_1D2058C80()
{
  v3 = 0;
  v2.receiver = 0;
  v2.super_class = type metadata accessor for GridIDDictionaryTransformer();
  v1 = objc_msgSendSuper2(&v2, sel_init);
  MEMORY[0x1E69E5928](v1);
  v3 = v1;
  MEMORY[0x1E69E5920](v1);
  return v1;
}

id sub_1D2058D4C()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for GridIDDictionaryTransformer();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1D2058D98()
{
  sub_1D208C64C();

  v1 = sub_1D208C5BC();
  MEMORY[0x1E69E5928](v1);

  MEMORY[0x1E69E5920](v1);
  result = v1;
  qword_1EC6C7140 = v1;
  return result;
}

uint64_t *sub_1D2058E28()
{
  if (qword_1EC6C5E30 != -1)
  {
    swift_once();
  }

  return &qword_1EC6C7140;
}

uint64_t sub_1D2058E88()
{
  v0 = sub_1D2058E28();
  v2 = *v0;
  MEMORY[0x1E69E5928](*v0);
  return v2;
}

uint64_t sub_1D2058EC8()
{
  type metadata accessor for GridIDDictionaryTransformer();
  v4 = sub_1D2058C58();
  v2 = objc_opt_self();
  MEMORY[0x1E69E5928](v4);
  v0 = sub_1D2058E28();
  v3 = *v0;
  MEMORY[0x1E69E5928](*v0);
  [v2 setValueTransformer:v4 forName:v3];
  MEMORY[0x1E69E5920](v3);
  MEMORY[0x1E69E5920](v4);
  return MEMORY[0x1E69E5920](v4);
}

uint64_t sub_1D2058F94()
{
  sub_1D2059ADC();
  sub_1D2059B5C();
  return sub_1D208CCBC();
}

uint64_t sub_1D2059198()
{
  sub_1D2059ADC();
  sub_1D2059B5C();
  return sub_1D208CCAC();
}

uint64_t sub_1D20591DC()
{
  sub_1D2059ADC();
  sub_1D2059B5C();
  return sub_1D208CC8C();
}

uint64_t sub_1D2059220()
{
  sub_1D2059ADC();
  sub_1D2059B5C();
  return sub_1D208CC9C();
}

uint64_t sub_1D2059294()
{
  sub_1D2059BD4();
  sub_1D2059B5C();
  return sub_1D208CCBC();
}

uint64_t sub_1D2059498()
{
  sub_1D2059BD4();
  sub_1D2059B5C();
  return sub_1D208CCAC();
}

uint64_t sub_1D20594DC()
{
  sub_1D2059BD4();
  sub_1D2059B5C();
  return sub_1D208CC8C();
}

uint64_t sub_1D2059520()
{
  sub_1D2059BD4();
  sub_1D2059B5C();
  return sub_1D208CC9C();
}

uint64_t sub_1D20595F0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = nullsub_1(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1D20596AC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = nullsub_1(*a1);
  *a2 = result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_1D20596EC@<X0>(uint64_t *a1@<X8>)
{
  result = nullsub_1(*v1);
  *a1 = result;
  return result;
}

unint64_t sub_1D2059734()
{
  v2 = qword_1EC6BF268;
  if (!qword_1EC6BF268)
  {
    type metadata accessor for WritingOptions();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC6BF268);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1D20597E4()
{
  v2 = qword_1EC6BF270;
  if (!qword_1EC6BF270)
  {
    type metadata accessor for ReadingOptions();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC6BF270);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1D2059894()
{
  v2 = qword_1EC6BF278;
  if (!qword_1EC6BF278)
  {
    type metadata accessor for ReadingOptions();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC6BF278);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1D205992C()
{
  v2 = qword_1EC6BF280;
  if (!qword_1EC6BF280)
  {
    type metadata accessor for ReadingOptions();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC6BF280);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1D20599C4()
{
  v2 = qword_1EC6BF288;
  if (!qword_1EC6BF288)
  {
    type metadata accessor for WritingOptions();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC6BF288);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1D2059A5C()
{
  v2 = qword_1EC6BF290;
  if (!qword_1EC6BF290)
  {
    type metadata accessor for WritingOptions();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC6BF290);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1D2059ADC()
{
  v2 = qword_1EC6BF298;
  if (!qword_1EC6BF298)
  {
    type metadata accessor for WritingOptions();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC6BF298);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1D2059B5C()
{
  v2 = qword_1EC6BF2A0;
  if (!qword_1EC6BF2A0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC6BF2A0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1D2059BD4()
{
  v2 = qword_1EC6BF2A8;
  if (!qword_1EC6BF2A8)
  {
    type metadata accessor for ReadingOptions();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC6BF2A8);
    return WitnessTable;
  }

  return v2;
}

id EnergyGuidanceTracker.__allocating_init(entity:insertInto:)(uint64_t a1, uint64_t a2)
{
  v6 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];
  MEMORY[0x1E69E5920](a2);
  MEMORY[0x1E69E5920](a1);
  return v6;
}

id EnergyGuidanceTracker.init(entity:insertInto:)(uint64_t a1, uint64_t a2)
{
  v9 = 0;
  v8 = a1;
  v7 = a2;
  v6.receiver = 0;
  v6.super_class = type metadata accessor for EnergyGuidanceTracker();
  v5 = objc_msgSendSuper2(&v6, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);
  MEMORY[0x1E69E5928](v5);
  v9 = v5;
  MEMORY[0x1E69E5920](a2);
  MEMORY[0x1E69E5920](a1);
  MEMORY[0x1E69E5920](v9);
  return v5;
}

id EnergyGuidanceTracker.__deallocating_deinit()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for EnergyGuidanceTracker();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id static EnergyKitAppTracker.fetchRequest()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA00, &qword_1D208D5F8);
  sub_1D208C64C();
  type metadata accessor for EnergyKitAppTracker();
  return sub_1D1FCF514();
}

uint64_t sub_1D2059EDC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  MEMORY[0x1E69E5928](*a1);
  v6 = [v4 appID];
  *a2 = sub_1D208C5CC();
  a2[1] = v2;
  MEMORY[0x1E69E5920](v6);
  return MEMORY[0x1E69E5920](v4);
}

uint64_t sub_1D2059F6C(void *a1, void *a2)
{
  sub_1D1FCFF8C(a1, &v6);
  v4 = *a2;
  MEMORY[0x1E69E5928](*a2);
  v5 = sub_1D208C5BC();
  [v4 setAppID_];
  MEMORY[0x1E69E5920](v5);
  MEMORY[0x1E69E5920](v4);
}

uint64_t sub_1D205A024@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  MEMORY[0x1E69E5928](*a1);
  v5 = [v3 gridIDs];
  *a2 = sub_1D208C55C();
  MEMORY[0x1E69E5920](v5);
  return MEMORY[0x1E69E5920](v3);
}

uint64_t sub_1D205A0C8(uint64_t *a1, void *a2)
{
  sub_1D202847C(a1, &v6);
  v4 = *a2;
  MEMORY[0x1E69E5928](*a2);
  v5 = sub_1D208C54C();
  [v4 setGridIDs_];
  MEMORY[0x1E69E5920](v5);
  MEMORY[0x1E69E5920](v4);
}

uint64_t sub_1D205A18C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v7 = a2;
  v13 = a1;
  v8 = sub_1D208BF1C();
  v9 = *(v8 - 8);
  v10 = v8 - 8;
  v11 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v4 - v11;
  v14 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BF180, &qword_1D208E5C0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v4 - v14;
  v16 = *v2;
  MEMORY[0x1E69E5928](v16);
  v19 = v16;
  v17 = v16;
  v18 = [v16 lastUpdated];
  if (v18)
  {
    v6 = v18;
    v5 = v18;
    sub_1D208BECC();
    (*(v9 + 32))(v15, v12, v8);
    (*(v9 + 56))(v15, 0, 1, v8);
    MEMORY[0x1E69E5920](v5);
  }

  else
  {
    (*(v9 + 56))(v15, 1, 1, v8);
  }

  sub_1D1FE29C4(v15, v7);
  return MEMORY[0x1E69E5920](v17);
}

uint64_t sub_1D205A3B0(uint64_t a1, void **a2)
{
  v8 = a1;
  v10 = a2;
  v9 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BF180, &qword_1D208E5C0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v8);
  v13 = &v4 - v9;
  sub_1D1FE94C4(v2, &v4 - v9);
  v11 = *v10;
  MEMORY[0x1E69E5928](v11);
  v17 = v11;
  v12 = v11;
  v14 = sub_1D208BF1C();
  v15 = *(v14 - 8);
  v16 = v14 - 8;
  if ((*(v15 + 48))(v13, 1) == 1)
  {
    v7 = 0;
  }

  else
  {
    v6 = sub_1D208BE7C();
    (*(v15 + 8))(v13, v14);
    v7 = v6;
  }

  v5 = v7;
  [v12 setLastUpdated_];
  MEMORY[0x1E69E5920](v5);
  return MEMORY[0x1E69E5920](v12);
}

uint64_t sub_1D205A554@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v10 = a2;
  v5 = a1;
  v12 = sub_1D208BF8C();
  v8 = *(v12 - 8);
  v9 = v12 - 8;
  v6 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v5);
  v11 = &v4 - v6;
  v7 = *v2;
  MEMORY[0x1E69E5928](v7);
  v15 = v7;
  v14 = v7;
  v13 = [v7 siteID];
  sub_1D208BF4C();
  (*(v8 + 32))(v10, v11, v12);
  MEMORY[0x1E69E5920](v13);
  return MEMORY[0x1E69E5920](v14);
}

uint64_t sub_1D205A678(uint64_t a1, void **a2)
{
  v4[1] = a1;
  v6 = a2;
  v13 = sub_1D208BF8C();
  v10 = *(v13 - 8);
  v11 = v13 - 8;
  v5 = (*(v10 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x1EEE9AC00](v13);
  v12 = v4 - v5;
  (*(v10 + 16))(v4 - v5, v2);
  v7 = *v6;
  MEMORY[0x1E69E5928](v7);
  v14 = v7;
  v9 = v7;
  v8 = sub_1D208BF3C();
  [v9 setSiteID_];
  MEMORY[0x1E69E5920](v8);
  MEMORY[0x1E69E5920](v9);
  return (*(v10 + 8))(v12, v13);
}

uint64_t sub_1D205A7D4@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  MEMORY[0x1E69E5928](*a1);
  [v3 includeCost];
  *a2 = sub_1D208C19C() & 1;
  return MEMORY[0x1E69E5920](v3);
}

uint64_t sub_1D205A848(unsigned __int8 *a1, void *a2)
{
  v4 = *a1;
  v3 = *a2;
  MEMORY[0x1E69E5928](*a2);
  [v3 setIncludeCost_];
  return MEMORY[0x1E69E5920](v3);
}

id TOUPeaks.__allocating_init(entity:insertInto:)(uint64_t a1, uint64_t a2)
{
  v6 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];
  MEMORY[0x1E69E5920](a2);
  MEMORY[0x1E69E5920](a1);
  return v6;
}

id TOUPeaks.init(entity:insertInto:)(uint64_t a1, uint64_t a2)
{
  v9 = 0;
  v8 = a1;
  v7 = a2;
  v6.receiver = 0;
  v6.super_class = type metadata accessor for TOUPeaks();
  v5 = objc_msgSendSuper2(&v6, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);
  MEMORY[0x1E69E5928](v5);
  v9 = v5;
  MEMORY[0x1E69E5920](a2);
  MEMORY[0x1E69E5920](a1);
  MEMORY[0x1E69E5920](v9);
  return v5;
}

id TOUPeaks.__deallocating_deinit()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TOUPeaks();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

BOOL static InsightServiceHelpers.isDateBetween4pmAnd9pm(date:calendar:)(uint64_t a1, uint64_t a2)
{
  v46 = a1;
  v50 = a2;
  v3 = v2;
  v33 = v3;
  v23 = "Fatal error";
  v24 = "Unexpectedly found nil while unwrapping an Optional value";
  v25 = "EnergyKitFoundation/InsightServiceHelpers.swift";
  v71 = 0;
  v70 = 0;
  v69 = 0;
  v68 = 0;
  v67 = 0;
  v66 = 0;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BF180, &qword_1D208E5C0);
  v26 = (*(*(v5 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v5);
  v27 = &v17 - v26;
  v28 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v17 - v26);
  v62 = &v17 - v28;
  v48 = 0;
  v63 = sub_1D208BF1C();
  v60 = *(v63 - 8);
  v61 = v63 - 8;
  v29 = (v60[8] + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v48);
  v30 = &v17 - v29;
  v71 = &v17 - v29;
  v31 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v8);
  v32 = &v17 - v31;
  v70 = &v17 - v31;
  v57 = sub_1D208BC3C();
  v54 = *(v57 - 8);
  v55 = v57 - 8;
  v35 = v54[8];
  v34 = (v35 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v48);
  v56 = &v17 - v34;
  v36 = (v35 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v9);
  v51 = &v17 - v36;
  v69 = &v17 - v36;
  v68 = v46;
  v67 = a2;
  v66 = v10;
  v44 = sub_1D208C10C();
  v43 = sub_1D208CB2C();
  v40 = v11;
  v12 = *MEMORY[0x1E6969A68];
  v37 = *(v44 - 8);
  v38 = v44 - 8;
  v42 = *(v37 + 104);
  v41 = v37 + 104;
  v42();
  v39 = *(v37 + 72);
  (v42)(v40 + v39, *MEMORY[0x1E6969A78], v44);
  (v42)(v40 + 2 * v39, *MEMORY[0x1E6969A48], v44);
  (v42)(v40 + 3 * v39, *MEMORY[0x1E6969A58], v44);
  v13 = v43;
  sub_1D1FCECE8();
  v45 = v13;
  sub_1D1FF1A1C();
  v47 = sub_1D208C7FC();
  sub_1D208C03C();

  v49 = 0;
  sub_1D208BB9C();
  sub_1D208BBEC();
  v52 = v54[2];
  v53 = v54 + 2;
  v52(v56, v51, v57);
  sub_1D208C09C();
  v58 = v54[1];
  v59 = v54 + 1;
  v58(v56, v57);
  v64 = v60[6];
  v65 = v60 + 6;
  if (v64(v62, 1, v63) == 1)
  {
    sub_1D208CA2C();
    __break(1u);
  }

  v21 = v60[4];
  v22 = v60 + 4;
  v21(v32, v62, v63);
  sub_1D208BB9C();
  v52(v56, v51, v57);
  sub_1D208C09C();
  v58(v56, v57);
  if (v64(v27, 1, v63) == 1)
  {
    sub_1D208CA2C();
    __break(1u);
  }

  v21(v30, v27, v63);
  sub_1D208BDFC();
  if (v14 > 0.0)
  {
    v20 = 0;
  }

  else
  {
    sub_1D208BDFC();
    v20 = v15 < 0.0;
  }

  v19 = v20;
  v18 = v60[1];
  v17 = v60 + 1;
  v18(v30, v63);
  v18(v32, v63);
  v58(v51, v57);
  return v19;
}

uint64_t static InsightServiceHelpers.findDSTTransitions(range:timezone:)(uint64_t a1, uint64_t a2)
{
  v18 = a1;
  v31 = a2;
  v3 = v2;
  v4 = v18;
  v30 = v3;
  v47 = 0;
  v46 = 0;
  v45 = 0;
  v44 = 0;
  v43 = 0;
  v42 = 0;
  v41 = 0;
  v40 = 0;
  v39 = sub_1D208BF1C();
  v33 = *(v39 - 8);
  v34 = v39 - 8;
  v19 = (*(v33 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v39);
  v20 = &v11 - v19;
  v21 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = MEMORY[0x1EEE9AC00](&v11 - v19);
  v22 = &v11 - v21;
  v47 = &v11 - v21;
  v23 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v6);
  v35 = &v11 - v23;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BF180, &qword_1D208E5C0);
  v27 = *(*(v8 - 8) + 64);
  v24 = (v27 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v8);
  v25 = &v11 - v24;
  v26 = (v27 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v11 - v24);
  v28 = &v11 - v26;
  v29 = (v27 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v11 - v26);
  v32 = &v11 - v29;
  v46 = &v11 - v29;
  v45 = v4;
  v44 = v9;
  v43 = v30;
  sub_1D208BB2C();
  sub_1D208C14C();
  v36 = *(v33 + 8);
  v37 = v33 + 8;
  v36(v35, v39);
  v38 = sub_1D1FE5320();
  v42 = sub_1D208C53C();
  v41 = sub_1D208C53C();
  while (1)
  {
    sub_1D1FE94C4(v32, v28);
    if ((*(v33 + 48))(v28, 1, v39) == 1)
    {
      sub_1D1FF1A9C(v28);
      goto LABEL_7;
    }

    (*(v33 + 32))(v22, v28, v39);
    sub_1D208BB0C();
    v17 = sub_1D208BE9C();
    v36(v35, v39);
    if ((v17 & 1) == 0)
    {
      break;
    }

    sub_1D208BE6C();
    v16 = sub_1D208C13C();
    v36(v35, v39);
    v40 = v16 & 1;
    (*(v33 + 16))(v20, v22, v39);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6BF2B0, qword_1D2091968);
    sub_1D208C80C();
    v36(v35, v39);
    sub_1D208C14C();
    sub_1D205B868(v25, v32);
    v36(v22, v39);
  }

  v36(v22, v39);
LABEL_7:
  v13 = &v42;
  v15 = v42;

  v12 = &v41;
  v14 = v41;

  sub_1D1FD3C38(v12);
  sub_1D1FD3C38(v13);
  sub_1D1FF1A9C(v32);
  return v15;
}

void *sub_1D205B868(const void *a1, void *a2)
{
  v7 = sub_1D208BF1C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 48);
  if ((v9)(a2, 1))
  {
    if (v9(a1, 1, v7))
    {
      v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BF180, &qword_1D208E5C0);
      memcpy(a2, a1, *(*(v3 - 8) + 64));
    }

    else
    {
      (*(v8 + 32))(a2, a1, v7);
      (*(v8 + 56))(a2, 0, 1, v7);
    }
  }

  else if (v9(a1, 1, v7))
  {
    (*(v8 + 8))(a2, v7);
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BF180, &qword_1D208E5C0);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v8 + 40))(a2, a1, v7);
  }

  return a2;
}

id HistoricalGuidanceCache.__allocating_init(entity:insertInto:)(uint64_t a1, uint64_t a2)
{
  v6 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];
  MEMORY[0x1E69E5920](a2);
  MEMORY[0x1E69E5920](a1);
  return v6;
}

id HistoricalGuidanceCache.init(entity:insertInto:)(uint64_t a1, uint64_t a2)
{
  v9 = 0;
  v8 = a1;
  v7 = a2;
  v6.receiver = 0;
  v6.super_class = type metadata accessor for HistoricalGuidanceCache();
  v5 = objc_msgSendSuper2(&v6, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);
  MEMORY[0x1E69E5928](v5);
  v9 = v5;
  MEMORY[0x1E69E5920](a2);
  MEMORY[0x1E69E5920](a1);
  MEMORY[0x1E69E5920](v9);
  return v5;
}

id HistoricalGuidanceCache.__deallocating_deinit()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HistoricalGuidanceCache();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id static HistoricalGuidanceCache.fetchRequest()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA00, &qword_1D208D5F8);
  sub_1D208C64C();
  type metadata accessor for HistoricalGuidanceCache();
  return sub_1D1FCF514();
}

uint64_t sub_1D205BDD0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  MEMORY[0x1E69E5928](*a1);
  v6 = [v4 historicalGuidance];
  *a2 = sub_1D208BD1C();
  a2[1] = v2;
  MEMORY[0x1E69E5920](v6);
  return MEMORY[0x1E69E5920](v4);
}

uint64_t sub_1D205BE60(uint64_t *a1, void *a2)
{
  sub_1D1FCFFCC(a1, v8);
  v6 = v8[0];
  v7 = v8[1];
  v4 = *a2;
  MEMORY[0x1E69E5928](*a2);
  v5 = sub_1D208BCFC();
  [v4 setHistoricalGuidance_];
  MEMORY[0x1E69E5920](v5);
  MEMORY[0x1E69E5920](v4);
  return sub_1D1FD0094(v6, v7);
}

uint64_t sub_1D205BF1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v10 = a2;
  v5 = a1;
  v12 = sub_1D208BF1C();
  v8 = *(v12 - 8);
  v9 = v12 - 8;
  v6 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v5);
  v11 = &v4 - v6;
  v7 = *v2;
  MEMORY[0x1E69E5928](v7);
  v15 = v7;
  v14 = v7;
  v13 = [v7 intervalStart];
  sub_1D208BECC();
  (*(v8 + 32))(v10, v11, v12);
  MEMORY[0x1E69E5920](v13);
  return MEMORY[0x1E69E5920](v14);
}

uint64_t sub_1D205C040(uint64_t a1, void **a2)
{
  v4[1] = a1;
  v6 = a2;
  v13 = sub_1D208BF1C();
  v10 = *(v13 - 8);
  v11 = v13 - 8;
  v5 = (*(v10 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x1EEE9AC00](v13);
  v12 = v4 - v5;
  (*(v10 + 16))(v4 - v5, v2);
  v7 = *v6;
  MEMORY[0x1E69E5928](v7);
  v14 = v7;
  v9 = v7;
  v8 = sub_1D208BE7C();
  [v9 setIntervalStart_];
  MEMORY[0x1E69E5920](v8);
  MEMORY[0x1E69E5920](v9);
  return (*(v10 + 8))(v12, v13);
}

uint64_t sub_1D205C19C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v10 = a2;
  v5 = a1;
  v12 = sub_1D208BF1C();
  v8 = *(v12 - 8);
  v9 = v12 - 8;
  v6 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v5);
  v11 = &v4 - v6;
  v7 = *v2;
  MEMORY[0x1E69E5928](v7);
  v15 = v7;
  v14 = v7;
  v13 = [v7 intervalEnd];
  sub_1D208BECC();
  (*(v8 + 32))(v10, v11, v12);
  MEMORY[0x1E69E5920](v13);
  return MEMORY[0x1E69E5920](v14);
}

uint64_t sub_1D205C2C0(uint64_t a1, void **a2)
{
  v4[1] = a1;
  v6 = a2;
  v13 = sub_1D208BF1C();
  v10 = *(v13 - 8);
  v11 = v13 - 8;
  v5 = (*(v10 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x1EEE9AC00](v13);
  v12 = v4 - v5;
  (*(v10 + 16))(v4 - v5, v2);
  v7 = *v6;
  MEMORY[0x1E69E5928](v7);
  v14 = v7;
  v9 = v7;
  v8 = sub_1D208BE7C();
  [v9 setIntervalEnd_];
  MEMORY[0x1E69E5920](v8);
  MEMORY[0x1E69E5920](v9);
  return (*(v10 + 8))(v12, v13);
}

uint64_t sub_1D205C41C@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  MEMORY[0x1E69E5928](*a1);
  [v3 partial];
  *a2 = sub_1D208C19C() & 1;
  return MEMORY[0x1E69E5920](v3);
}

uint64_t sub_1D205C490(unsigned __int8 *a1, void *a2)
{
  v4 = *a1;
  v3 = *a2;
  MEMORY[0x1E69E5928](*a2);
  [v3 setPartial_];
  return MEMORY[0x1E69E5920](v3);
}

id RawLoadEvent.__allocating_init(entity:insertInto:)(uint64_t a1, uint64_t a2)
{
  v6 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];
  MEMORY[0x1E69E5920](a2);
  MEMORY[0x1E69E5920](a1);
  return v6;
}

id RawLoadEvent.init(entity:insertInto:)(uint64_t a1, uint64_t a2)
{
  v9 = 0;
  v8 = a1;
  v7 = a2;
  v6.receiver = 0;
  v6.super_class = type metadata accessor for RawLoadEvent();
  v5 = objc_msgSendSuper2(&v6, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);
  MEMORY[0x1E69E5928](v5);
  v9 = v5;
  MEMORY[0x1E69E5920](a2);
  MEMORY[0x1E69E5920](a1);
  MEMORY[0x1E69E5920](v9);
  return v5;
}

id RawLoadEvent.__deallocating_deinit()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RawLoadEvent();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1D205C708()
{
  result = sub_1D1FCD65C();
  byte_1EC6C6348 = result & 1;
  return result;
}

char *sub_1D205C72C()
{
  if (qword_1EC6C6340 != -1)
  {
    swift_once();
  }

  return &byte_1EC6C6348;
}

uint64_t static EKUtility.isSharedIPad.getter()
{
  v1 = sub_1D205C72C();
  swift_beginAccess();
  v2 = *v1;
  swift_endAccess();
  return v2 & 1;
}

uint64_t static EKUtility.isSharedIPad.setter(char a1)
{
  v2 = sub_1D205C72C();
  swift_beginAccess();
  *v2 = a1;
  return swift_endAccess();
}

uint64_t (*static EKUtility.isSharedIPad.modify())()
{
  sub_1D205C72C();
  swift_beginAccess();
  return sub_1D2052924;
}

uint64_t sub_1D205C8BC@<X0>(char *a1@<X8>)
{
  v2 = sub_1D205C72C();
  swift_beginAccess();
  v4 = *v2;
  result = swift_endAccess();
  *a1 = v4;
  return result;
}

uint64_t sub_1D205C91C(char *a1)
{
  v3 = *a1;
  v2 = sub_1D205C72C();
  swift_beginAccess();
  *v2 = v3;
  return swift_endAccess();
}

uint64_t static EKEnergySite.supportsSecureCoding.getter()
{
  v1 = sub_1D205CA2C();
  swift_beginAccess();
  v2 = *v1;
  swift_endAccess();
  return v2 & 1;
}

uint64_t static EKEnergySite.supportsSecureCoding.setter(char a1)
{
  v2 = sub_1D205CA2C();
  swift_beginAccess();
  *v2 = a1;
  return swift_endAccess();
}

uint64_t (*static EKEnergySite.supportsSecureCoding.modify())()
{
  sub_1D205CA2C();
  swift_beginAccess();
  return sub_1D2052924;
}

uint64_t sub_1D205CC08@<X0>(_BYTE *a1@<X8>)
{
  v2 = sub_1D205CA2C();
  swift_beginAccess();
  v4 = *v2;
  result = swift_endAccess();
  *a1 = v4;
  return result;
}

uint64_t sub_1D205CC68(char *a1)
{
  v3 = *a1;
  v2 = sub_1D205CA2C();
  swift_beginAccess();
  *v2 = v3;
  return swift_endAccess();
}

uint64_t sub_1D205CCC0()
{
  result = sub_1D208C64C();
  qword_1EE0831B8 = result;
  qword_1EE0831C0 = v1;
  return result;
}

uint64_t *sub_1D205CD04()
{
  if (qword_1EE0831B0 != -1)
  {
    swift_once();
  }

  return &qword_1EE0831B8;
}

uint64_t static EKEnergySite.siteUUIDNamespace.getter()
{
  v0 = sub_1D205CD04();
  v2 = *v0;
  v3 = v0[1];

  return v2;
}

uint64_t static EKEnergySite.isEqual(lhs:rhs:)(void *a1, void *a2)
{
  v6 = MEMORY[0x1E69E7D40];
  v7 = (*((*a1 & *MEMORY[0x1E69E7D40]) + 0x168))(a1);
  v8 = v2;
  v3 = (*((*a2 & *v6) + 0x168))();
  v9 = MEMORY[0x1D38948D0](v7, v8, v3);

  return v9 & 1;
}

uint64_t sub_1D205CEBC@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v5 = *a1;
  v2 = MEMORY[0x1E69E5928]();
  *a2 = (*((*v5 & *MEMORY[0x1E69E7D40]) + 0x168))(v2);
  a2[1] = v3;
  return MEMORY[0x1E69E5920](v5);
}

uint64_t sub_1D205CF68(void *a1, void *a2)
{
  sub_1D1FCFF8C(a1, v7);
  v6 = v7[0];
  v5 = v7[1];
  v4 = *a2;
  MEMORY[0x1E69E5928](*a2);
  (*((*v4 & *MEMORY[0x1E69E7D40]) + 0x170))(v6, v5);
  return MEMORY[0x1E69E5920](v4);
}

uint64_t sub_1D205D028()
{
  v2 = (v0 + OBJC_IVAR____TtC19EnergyKitFoundation12EKEnergySite_siteID);
  swift_beginAccess();
  v3 = *v2;
  v4 = v2[1];

  swift_endAccess();
  return v3;
}

uint64_t sub_1D205D09C(uint64_t a1, uint64_t a2)
{

  v6 = (v2 + OBJC_IVAR____TtC19EnergyKitFoundation12EKEnergySite_siteID);
  swift_beginAccess();
  v3 = v6[1];
  *v6 = a1;
  v6[1] = a2;

  swift_endAccess();
}

uint64_t sub_1D205D1A8@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v5 = *a1;
  v2 = MEMORY[0x1E69E5928]();
  *a2 = (*((*v5 & *MEMORY[0x1E69E7D40]) + 0x180))(v2);
  a2[1] = v3;
  return MEMORY[0x1E69E5920](v5);
}

uint64_t sub_1D205D254(void *a1, void *a2)
{
  sub_1D1FCFF8C(a1, v7);
  v6 = v7[0];
  v5 = v7[1];
  v4 = *a2;
  MEMORY[0x1E69E5928](*a2);
  (*((*v4 & *MEMORY[0x1E69E7D40]) + 0x188))(v6, v5);
  return MEMORY[0x1E69E5920](v4);
}

uint64_t sub_1D205D314()
{
  v2 = (v0 + OBJC_IVAR____TtC19EnergyKitFoundation12EKEnergySite_siteName);
  swift_beginAccess();
  v3 = *v2;
  v4 = v2[1];

  swift_endAccess();
  return v3;
}

uint64_t sub_1D205D388(uint64_t a1, uint64_t a2)
{

  v6 = (v2 + OBJC_IVAR____TtC19EnergyKitFoundation12EKEnergySite_siteName);
  swift_beginAccess();
  v3 = v6[1];
  *v6 = a1;
  v6[1] = a2;

  swift_endAccess();
}

uint64_t sub_1D205D494@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v5 = *a1;
  v2 = MEMORY[0x1E69E5928]();
  *a2 = (*((*v5 & *MEMORY[0x1E69E7D40]) + 0x198))(v2);
  a2[1] = v3;
  return MEMORY[0x1E69E5920](v5);
}

uint64_t sub_1D205D540(void *a1, void *a2)
{
  sub_1D1FCFF8C(a1, v7);
  v6 = v7[0];
  v5 = v7[1];
  v4 = *a2;
  MEMORY[0x1E69E5928](*a2);
  (*((*v4 & *MEMORY[0x1E69E7D40]) + 0x1A0))(v6, v5);
  return MEMORY[0x1E69E5920](v4);
}

uint64_t sub_1D205D600()
{
  v2 = (v0 + OBJC_IVAR____TtC19EnergyKitFoundation12EKEnergySite_ckZoneName);
  swift_beginAccess();
  v3 = *v2;
  v4 = v2[1];

  swift_endAccess();
  return v3;
}

uint64_t sub_1D205D674(uint64_t a1, uint64_t a2)
{

  v6 = (v2 + OBJC_IVAR____TtC19EnergyKitFoundation12EKEnergySite_ckZoneName);
  swift_beginAccess();
  v3 = v6[1];
  *v6 = a1;
  v6[1] = a2;

  swift_endAccess();
}

uint64_t sub_1D205D780@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v5 = *a1;
  v2 = MEMORY[0x1E69E5928]();
  *a2 = (*((*v5 & *MEMORY[0x1E69E7D40]) + 0x1B0))(v2);
  a2[1] = v3;
  return MEMORY[0x1E69E5920](v5);
}

uint64_t sub_1D205D82C(void *a1, void *a2)
{
  sub_1D1FCFF8C(a1, v7);
  v6 = v7[0];
  v5 = v7[1];
  v4 = *a2;
  MEMORY[0x1E69E5928](*a2);
  (*((*v4 & *MEMORY[0x1E69E7D40]) + 0x1B8))(v6, v5);
  return MEMORY[0x1E69E5920](v4);
}

uint64_t sub_1D205D8EC()
{
  v2 = (v0 + OBJC_IVAR____TtC19EnergyKitFoundation12EKEnergySite_state);
  swift_beginAccess();
  v3 = *v2;
  v4 = v2[1];

  swift_endAccess();
  return v3;
}

uint64_t sub_1D205D960(uint64_t a1, uint64_t a2)
{

  v6 = (v2 + OBJC_IVAR____TtC19EnergyKitFoundation12EKEnergySite_state);
  swift_beginAccess();
  v3 = v6[1];
  *v6 = a1;
  v6[1] = a2;

  swift_endAccess();
}

uint64_t sub_1D205DA74@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v2 = MEMORY[0x1E69E5928]();
  *a2 = (*((*v4 & *MEMORY[0x1E69E7D40]) + 0x1C8))(v2);
  return MEMORY[0x1E69E5920](v4);
}

uint64_t sub_1D205DB1C(uint64_t *a1, void *a2)
{
  sub_1D2071F2C(a1, &v6);
  v5 = v6;
  v4 = *a2;
  MEMORY[0x1E69E5928](*a2);
  (*((*v4 & *MEMORY[0x1E69E7D40]) + 0x1D0))(v5);
  return MEMORY[0x1E69E5920](v4);
}

uint64_t sub_1D205DBD0()
{
  v2 = (v0 + OBJC_IVAR____TtC19EnergyKitFoundation12EKEnergySite_location);
  swift_beginAccess();
  v3 = *v2;
  MEMORY[0x1E69E5928](*v2);
  swift_endAccess();
  return v3;
}

uint64_t sub_1D205DC40(uint64_t a1)
{
  MEMORY[0x1E69E5928](a1);
  v4 = (v1 + OBJC_IVAR____TtC19EnergyKitFoundation12EKEnergySite_location);
  swift_beginAccess();
  v2 = *v4;
  *v4 = a1;
  MEMORY[0x1E69E5920](v2);
  swift_endAccess();
  return MEMORY[0x1E69E5920](a1);
}

uint64_t sub_1D205DD50@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v5 = *a1;
  v2 = MEMORY[0x1E69E5928]();
  *a2 = (*((*v5 & *MEMORY[0x1E69E7D40]) + 0x1E0))(v2);
  a2[1] = v3;
  return MEMORY[0x1E69E5920](v5);
}

uint64_t sub_1D205DDFC(void *a1, void *a2)
{
  sub_1D1FCFF8C(a1, v7);
  v6 = v7[0];
  v5 = v7[1];
  v4 = *a2;
  MEMORY[0x1E69E5928](*a2);
  (*((*v4 & *MEMORY[0x1E69E7D40]) + 0x1E8))(v6, v5);
  return MEMORY[0x1E69E5920](v4);
}

uint64_t sub_1D205DEBC()
{
  v2 = (v0 + OBJC_IVAR____TtC19EnergyKitFoundation12EKEnergySite_utilityID);
  swift_beginAccess();
  v3 = *v2;
  v4 = v2[1];

  swift_endAccess();
  return v3;
}

uint64_t sub_1D205DF30(uint64_t a1, uint64_t a2)
{

  v6 = (v2 + OBJC_IVAR____TtC19EnergyKitFoundation12EKEnergySite_utilityID);
  swift_beginAccess();
  v3 = v6[1];
  *v6 = a1;
  v6[1] = a2;

  swift_endAccess();
}

uint64_t sub_1D205E038@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v5 = *a1;
  v2 = MEMORY[0x1E69E5928]();
  *a2 = (*((*v5 & *MEMORY[0x1E69E7D40]) + 0x1F8))(v2);
  a2[1] = v3;
  return MEMORY[0x1E69E5920](v5);
}

uint64_t sub_1D205E0E4(void *a1, void *a2)
{
  sub_1D1FCFF8C(a1, v7);
  v6 = v7[0];
  v5 = v7[1];
  v4 = *a2;
  MEMORY[0x1E69E5928](*a2);
  (*((*v4 & *MEMORY[0x1E69E7D40]) + 0x200))(v6, v5);
  return MEMORY[0x1E69E5920](v4);
}

uint64_t sub_1D205E1A4()
{
  v2 = (v0 + OBJC_IVAR____TtC19EnergyKitFoundation12EKEnergySite_subscriptionID);
  swift_beginAccess();
  v3 = *v2;
  v4 = v2[1];

  swift_endAccess();
  return v3;
}

uint64_t sub_1D205E218(uint64_t a1, uint64_t a2)
{

  v6 = (v2 + OBJC_IVAR____TtC19EnergyKitFoundation12EKEnergySite_subscriptionID);
  swift_beginAccess();
  v3 = v6[1];
  *v6 = a1;
  v6[1] = a2;

  swift_endAccess();
}

uint64_t sub_1D205E320@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v5 = *a1;
  v2 = MEMORY[0x1E69E5928]();
  *a2 = (*((*v5 & *MEMORY[0x1E69E7D40]) + 0x210))(v2);
  a2[1] = v3;
  return MEMORY[0x1E69E5920](v5);
}

uint64_t sub_1D205E3CC(void *a1, void *a2)
{
  sub_1D1FCFF8C(a1, v7);
  v6 = v7[0];
  v5 = v7[1];
  v4 = *a2;
  MEMORY[0x1E69E5928](*a2);
  (*((*v4 & *MEMORY[0x1E69E7D40]) + 0x218))(v6, v5);
  return MEMORY[0x1E69E5920](v4);
}

uint64_t sub_1D205E48C()
{
  v2 = (v0 + OBJC_IVAR____TtC19EnergyKitFoundation12EKEnergySite_accessToken);
  swift_beginAccess();
  v3 = *v2;
  v4 = v2[1];

  swift_endAccess();
  return v3;
}

uint64_t sub_1D205E500(uint64_t a1, uint64_t a2)
{

  v6 = (v2 + OBJC_IVAR____TtC19EnergyKitFoundation12EKEnergySite_accessToken);
  swift_beginAccess();
  v3 = v6[1];
  *v6 = a1;
  v6[1] = a2;

  swift_endAccess();
}

uint64_t sub_1D205E608@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v5 = *a1;
  v2 = MEMORY[0x1E69E5928]();
  *a2 = (*((*v5 & *MEMORY[0x1E69E7D40]) + 0x228))(v2);
  a2[1] = v3;
  return MEMORY[0x1E69E5920](v5);
}

uint64_t sub_1D205E6B4(void *a1, void *a2)
{
  sub_1D1FCFF8C(a1, v7);
  v6 = v7[0];
  v5 = v7[1];
  v4 = *a2;
  MEMORY[0x1E69E5928](*a2);
  (*((*v4 & *MEMORY[0x1E69E7D40]) + 0x230))(v6, v5);
  return MEMORY[0x1E69E5920](v4);
}

uint64_t sub_1D205E774()
{
  v2 = (v0 + OBJC_IVAR____TtC19EnergyKitFoundation12EKEnergySite_refreshToken);
  swift_beginAccess();
  v3 = *v2;
  v4 = v2[1];

  swift_endAccess();
  return v3;
}

uint64_t sub_1D205E7E8(uint64_t a1, uint64_t a2)
{

  v6 = (v2 + OBJC_IVAR____TtC19EnergyKitFoundation12EKEnergySite_refreshToken);
  swift_beginAccess();
  v3 = v6[1];
  *v6 = a1;
  v6[1] = a2;

  swift_endAccess();
}

uint64_t sub_1D205E8F0@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v5 = *a1;
  v2 = MEMORY[0x1E69E5928]();
  *a2 = (*((*v5 & *MEMORY[0x1E69E7D40]) + 0x240))(v2);
  a2[1] = v3;
  return MEMORY[0x1E69E5920](v5);
}

uint64_t sub_1D205E99C(void *a1, void *a2)
{
  sub_1D1FCFF8C(a1, v7);
  v6 = v7[0];
  v5 = v7[1];
  v4 = *a2;
  MEMORY[0x1E69E5928](*a2);
  (*((*v4 & *MEMORY[0x1E69E7D40]) + 0x248))(v6, v5);
  return MEMORY[0x1E69E5920](v4);
}

uint64_t sub_1D205EA5C()
{
  v2 = (v0 + OBJC_IVAR____TtC19EnergyKitFoundation12EKEnergySite_timezone);
  swift_beginAccess();
  v3 = *v2;
  v4 = v2[1];

  swift_endAccess();
  return v3;
}

uint64_t sub_1D205EAD0(uint64_t a1, uint64_t a2)
{

  v6 = (v2 + OBJC_IVAR____TtC19EnergyKitFoundation12EKEnergySite_timezone);
  swift_beginAccess();
  v3 = v6[1];
  *v6 = a1;
  v6[1] = a2;

  swift_endAccess();
}

uint64_t sub_1D205EC38@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v10 = a2;
  v6 = a1;
  v7 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEDF0, &unk_1D208F480) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v6);
  v9 = (&v5 - v7);
  v8 = *v2;
  v3 = MEMORY[0x1E69E5928](v8);
  v12 = v8;
  v11 = v8;
  (*((*v8 & *MEMORY[0x1E69E7D40]) + 0x258))(v3);
  sub_1D2071DD0(v9, v10);
  return MEMORY[0x1E69E5920](v11);
}

uint64_t sub_1D205ED50(uint64_t a1, void **a2)
{
  v5 = a1;
  v7 = a2;
  v6 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEDF0, &unk_1D208F480) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v4 - v6;
  sub_1D2018864(v2, (&v4 - v6));
  v8 = *v7;
  MEMORY[0x1E69E5928](v8);
  v11 = v8;
  v10 = v8;
  (*((*v8 & *MEMORY[0x1E69E7D40]) + 0x260))(v9);
  return MEMORY[0x1E69E5920](v10);
}

uint64_t sub_1D205EE64@<X0>(void *a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtC19EnergyKitFoundation12EKEnergySite_currentRatePlan);
  swift_beginAccess();
  sub_1D2018864(v3, a1);
  return swift_endAccess();
}

uint64_t *sub_1D205EEC8(uint64_t *a1)
{
  v8 = a1;
  v11 = 0;
  v10 = 0;
  v4 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEDF0, &unk_1D208F480) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v8);
  v5 = (&v4 - v4);
  v11 = v2;
  v10 = v1;
  sub_1D2018864(v2, (&v4 - v4));
  v6 = (v1 + OBJC_IVAR____TtC19EnergyKitFoundation12EKEnergySite_currentRatePlan);
  v7 = &v9;
  swift_beginAccess();
  sub_1D2018C54(v5, v6);
  swift_endAccess();
  return sub_1D2018A44(v8);
}

uint64_t sub_1D205F018@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v5 = *a1;
  v2 = MEMORY[0x1E69E5928]();
  *a2 = (*((*v5 & *MEMORY[0x1E69E7D40]) + 0x270))(v2);
  a2[1] = v3;
  return MEMORY[0x1E69E5920](v5);
}

uint64_t sub_1D205F0C4(uint64_t *a1, void *a2)
{
  sub_1D1FCFFCC(a1, v7);
  v6 = v7[0];
  v5 = v7[1];
  v4 = *a2;
  MEMORY[0x1E69E5928](*a2);
  (*((*v4 & *MEMORY[0x1E69E7D40]) + 0x278))(v6, v5);
  return MEMORY[0x1E69E5920](v4);
}

uint64_t sub_1D205F184()
{
  v2 = v0 + OBJC_IVAR____TtC19EnergyKitFoundation12EKEnergySite_usagePointCustomIndex;
  swift_beginAccess();
  v3 = *v2;
  sub_1D1FD0018(*v2, *(v2 + 8));
  swift_endAccess();
  return v3;
}

uint64_t sub_1D205F1F8(uint64_t a1, unint64_t a2)
{
  sub_1D1FD0018(a1, a2);
  v6 = (v2 + OBJC_IVAR____TtC19EnergyKitFoundation12EKEnergySite_usagePointCustomIndex);
  swift_beginAccess();
  v3 = *v6;
  v4 = v6[1];
  *v6 = a1;
  v6[1] = a2;
  sub_1D1FD0094(v3, v4);
  swift_endAccess();
  return sub_1D1FD0094(a1, a2);
}

uint64_t sub_1D205F300@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v5 = *a1;
  v2 = MEMORY[0x1E69E5928]();
  *a2 = (*((*v5 & *MEMORY[0x1E69E7D40]) + 0x288))(v2);
  a2[1] = v3;
  return MEMORY[0x1E69E5920](v5);
}

uint64_t sub_1D205F3AC(uint64_t *a1, void *a2)
{
  sub_1D1FCFFCC(a1, v7);
  v6 = v7[0];
  v5 = v7[1];
  v4 = *a2;
  MEMORY[0x1E69E5928](*a2);
  (*((*v4 & *MEMORY[0x1E69E7D40]) + 0x290))(v6, v5);
  return MEMORY[0x1E69E5920](v4);
}

uint64_t sub_1D205F46C()
{
  v2 = v0 + OBJC_IVAR____TtC19EnergyKitFoundation12EKEnergySite_usageSummaryCustomIndex;
  swift_beginAccess();
  v3 = *v2;
  sub_1D1FD0018(*v2, *(v2 + 8));
  swift_endAccess();
  return v3;
}

uint64_t sub_1D205F4E0(uint64_t a1, unint64_t a2)
{
  sub_1D1FD0018(a1, a2);
  v6 = (v2 + OBJC_IVAR____TtC19EnergyKitFoundation12EKEnergySite_usageSummaryCustomIndex);
  swift_beginAccess();
  v3 = *v6;
  v4 = v6[1];
  *v6 = a1;
  v6[1] = a2;
  sub_1D1FD0094(v3, v4);
  swift_endAccess();
  return sub_1D1FD0094(a1, a2);
}

uint64_t sub_1D205F5E8@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v5 = *a1;
  v2 = MEMORY[0x1E69E5928]();
  *a2 = (*((*v5 & *MEMORY[0x1E69E7D40]) + 0x2A0))(v2);
  a2[1] = v3;
  return MEMORY[0x1E69E5920](v5);
}

uint64_t sub_1D205F694(uint64_t *a1, void *a2)
{
  sub_1D1FCFFCC(a1, v7);
  v6 = v7[0];
  v5 = v7[1];
  v4 = *a2;
  MEMORY[0x1E69E5928](*a2);
  (*((*v4 & *MEMORY[0x1E69E7D40]) + 0x2A8))(v6, v5);
  return MEMORY[0x1E69E5920](v4);
}

uint64_t sub_1D205F754()
{
  v2 = v0 + OBJC_IVAR____TtC19EnergyKitFoundation12EKEnergySite_intervalBlockCustomIndex;
  swift_beginAccess();
  v3 = *v2;
  sub_1D1FD0018(*v2, *(v2 + 8));
  swift_endAccess();
  return v3;
}

uint64_t sub_1D205F7C8(uint64_t a1, unint64_t a2)
{
  sub_1D1FD0018(a1, a2);
  v6 = (v2 + OBJC_IVAR____TtC19EnergyKitFoundation12EKEnergySite_intervalBlockCustomIndex);
  swift_beginAccess();
  v3 = *v6;
  v4 = v6[1];
  *v6 = a1;
  v6[1] = a2;
  sub_1D1FD0094(v3, v4);
  swift_endAccess();
  return sub_1D1FD0094(a1, a2);
}

uint64_t sub_1D205F8D0@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v5 = *a1;
  v2 = MEMORY[0x1E69E5928]();
  *a2 = (*((*v5 & *MEMORY[0x1E69E7D40]) + 0x2B8))(v2);
  a2[1] = v3;
  return MEMORY[0x1E69E5920](v5);
}

uint64_t sub_1D205F97C(void *a1, void *a2)
{
  sub_1D1FCFF8C(a1, v7);
  v6 = v7[0];
  v5 = v7[1];
  v4 = *a2;
  MEMORY[0x1E69E5928](*a2);
  (*((*v4 & *MEMORY[0x1E69E7D40]) + 0x2C0))(v6, v5);
  return MEMORY[0x1E69E5920](v4);
}

uint64_t sub_1D205FA3C()
{
  v2 = (v0 + OBJC_IVAR____TtC19EnergyKitFoundation12EKEnergySite_ckFunctionToken);
  swift_beginAccess();
  v3 = *v2;
  v4 = v2[1];

  swift_endAccess();
  return v3;
}

uint64_t sub_1D205FAB0(uint64_t a1, uint64_t a2)
{

  v6 = (v2 + OBJC_IVAR____TtC19EnergyKitFoundation12EKEnergySite_ckFunctionToken);
  swift_beginAccess();
  v3 = v6[1];
  *v6 = a1;
  v6[1] = a2;

  swift_endAccess();
}

uint64_t sub_1D205FBB8@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v5 = *a1;
  v2 = MEMORY[0x1E69E5928]();
  *a2 = (*((*v5 & *MEMORY[0x1E69E7D40]) + 0x2D0))(v2);
  a2[1] = v3;
  return MEMORY[0x1E69E5920](v5);
}

uint64_t sub_1D205FC64(void *a1, void *a2)
{
  sub_1D1FCFF8C(a1, v7);
  v6 = v7[0];
  v5 = v7[1];
  v4 = *a2;
  MEMORY[0x1E69E5928](*a2);
  (*((*v4 & *MEMORY[0x1E69E7D40]) + 0x2D8))(v6, v5);
  return MEMORY[0x1E69E5920](v4);
}

uint64_t sub_1D205FD24()
{
  v2 = (v0 + OBJC_IVAR____TtC19EnergyKitFoundation12EKEnergySite_accountName);
  swift_beginAccess();
  v3 = *v2;
  v4 = v2[1];

  swift_endAccess();
  return v3;
}

uint64_t sub_1D205FD98(uint64_t a1, uint64_t a2)
{

  v6 = (v2 + OBJC_IVAR____TtC19EnergyKitFoundation12EKEnergySite_accountName);
  swift_beginAccess();
  v3 = v6[1];
  *v6 = a1;
  v6[1] = a2;

  swift_endAccess();
}

uint64_t sub_1D205FEA0@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v5 = *a1;
  v2 = MEMORY[0x1E69E5928]();
  *a2 = (*((*v5 & *MEMORY[0x1E69E7D40]) + 0x2E8))(v2);
  a2[1] = v3;
  return MEMORY[0x1E69E5920](v5);
}

uint64_t sub_1D205FF4C(void *a1, void *a2)
{
  sub_1D1FCFF8C(a1, v7);
  v6 = v7[0];
  v5 = v7[1];
  v4 = *a2;
  MEMORY[0x1E69E5928](*a2);
  (*((*v4 & *MEMORY[0x1E69E7D40]) + 0x2F0))(v6, v5);
  return MEMORY[0x1E69E5920](v4);
}

uint64_t sub_1D206000C()
{
  v2 = (v0 + OBJC_IVAR____TtC19EnergyKitFoundation12EKEnergySite_accountNumber);
  swift_beginAccess();
  v3 = *v2;
  v4 = v2[1];

  swift_endAccess();
  return v3;
}

uint64_t sub_1D2060080(uint64_t a1, uint64_t a2)
{

  v6 = (v2 + OBJC_IVAR____TtC19EnergyKitFoundation12EKEnergySite_accountNumber);
  swift_beginAccess();
  v3 = v6[1];
  *v6 = a1;
  v6[1] = a2;

  swift_endAccess();
}

uint64_t sub_1D2060188@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v5 = *a1;
  v2 = MEMORY[0x1E69E5928]();
  *a2 = (*((*v5 & *MEMORY[0x1E69E7D40]) + 0x300))(v2);
  a2[1] = v3;
  return MEMORY[0x1E69E5920](v5);
}

uint64_t sub_1D2060234(void *a1, void *a2)
{
  sub_1D1FCFF8C(a1, v7);
  v6 = v7[0];
  v5 = v7[1];
  v4 = *a2;
  MEMORY[0x1E69E5928](*a2);
  (*((*v4 & *MEMORY[0x1E69E7D40]) + 0x308))(v6, v5);
  return MEMORY[0x1E69E5920](v4);
}

uint64_t sub_1D20602F4()
{
  v2 = (v0 + OBJC_IVAR____TtC19EnergyKitFoundation12EKEnergySite_address);
  swift_beginAccess();
  v3 = *v2;
  v4 = v2[1];

  swift_endAccess();
  return v3;
}

uint64_t sub_1D2060368(uint64_t a1, uint64_t a2)
{

  v6 = (v2 + OBJC_IVAR____TtC19EnergyKitFoundation12EKEnergySite_address);
  swift_beginAccess();
  v3 = v6[1];
  *v6 = a1;
  v6[1] = a2;

  swift_endAccess();
}

uint64_t sub_1D2060470@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v5 = *a1;
  v2 = MEMORY[0x1E69E5928]();
  *a2 = (*((*v5 & *MEMORY[0x1E69E7D40]) + 0x318))(v2);
  a2[1] = v3;
  return MEMORY[0x1E69E5920](v5);
}

uint64_t sub_1D206051C(void *a1, void *a2)
{
  sub_1D1FCFF8C(a1, v7);
  v6 = v7[0];
  v5 = v7[1];
  v4 = *a2;
  MEMORY[0x1E69E5928](*a2);
  (*((*v4 & *MEMORY[0x1E69E7D40]) + 0x320))(v6, v5);
  return MEMORY[0x1E69E5920](v4);
}

uint64_t sub_1D20605DC()
{
  v2 = (v0 + OBJC_IVAR____TtC19EnergyKitFoundation12EKEnergySite_serviceLocationID);
  swift_beginAccess();
  v3 = *v2;
  v4 = v2[1];

  swift_endAccess();
  return v3;
}

uint64_t sub_1D2060650(uint64_t a1, uint64_t a2)
{

  v6 = (v2 + OBJC_IVAR____TtC19EnergyKitFoundation12EKEnergySite_serviceLocationID);
  swift_beginAccess();
  v3 = v6[1];
  *v6 = a1;
  v6[1] = a2;

  swift_endAccess();
}

uint64_t sub_1D2060758@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v5 = *a1;
  v2 = MEMORY[0x1E69E5928]();
  *a2 = (*((*v5 & *MEMORY[0x1E69E7D40]) + 0x330))(v2);
  a2[1] = v3;
  return MEMORY[0x1E69E5920](v5);
}

uint64_t sub_1D2060804(void *a1, void *a2)
{
  sub_1D1FCFF8C(a1, v7);
  v6 = v7[0];
  v5 = v7[1];
  v4 = *a2;
  MEMORY[0x1E69E5928](*a2);
  (*((*v4 & *MEMORY[0x1E69E7D40]) + 0x338))(v6, v5);
  return MEMORY[0x1E69E5920](v4);
}

uint64_t sub_1D20608C4()
{
  v2 = (v0 + OBJC_IVAR____TtC19EnergyKitFoundation12EKEnergySite_alternateSupplier);
  swift_beginAccess();
  v3 = *v2;
  v4 = v2[1];

  swift_endAccess();
  return v3;
}

uint64_t sub_1D2060938(uint64_t a1, uint64_t a2)
{

  v6 = (v2 + OBJC_IVAR____TtC19EnergyKitFoundation12EKEnergySite_alternateSupplier);
  swift_beginAccess();
  v3 = v6[1];
  *v6 = a1;
  v6[1] = a2;

  swift_endAccess();
}

uint64_t sub_1D2060AA0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v10 = a2;
  v6 = a1;
  v7 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BF180, &qword_1D208E5C0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v5 - v7;
  v8 = *v2;
  v3 = MEMORY[0x1E69E5928](v8);
  v12 = v8;
  v11 = v8;
  (*((*v8 & *MEMORY[0x1E69E7D40]) + 0x348))(v3);
  sub_1D1FE29C4(v9, v10);
  return MEMORY[0x1E69E5920](v11);
}

uint64_t sub_1D2060BB8(uint64_t a1, void **a2)
{
  v5 = a1;
  v7 = a2;
  v6 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BF180, &qword_1D208E5C0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v4 - v6;
  sub_1D1FE94C4(v2, &v4 - v6);
  v8 = *v7;
  MEMORY[0x1E69E5928](v8);
  v11 = v8;
  v10 = v8;
  (*((*v8 & *MEMORY[0x1E69E7D40]) + 0x350))(v9);
  return MEMORY[0x1E69E5920](v10);
}

uint64_t sub_1D2060CCC@<X0>(void *a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtC19EnergyKitFoundation12EKEnergySite_accessTokenExpirationDate);
  swift_beginAccess();
  sub_1D1FE94C4(v3, a1);
  return swift_endAccess();
}

uint64_t sub_1D2060D30(uint64_t a1)
{
  v8 = a1;
  v11 = 0;
  v10 = 0;
  v4 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BF180, &qword_1D208E5C0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v8);
  v5 = &v4 - v4;
  v11 = v2;
  v10 = v1;
  sub_1D1FE94C4(v2, &v4 - v4);
  v6 = (v1 + OBJC_IVAR____TtC19EnergyKitFoundation12EKEnergySite_accessTokenExpirationDate);
  v7 = &v9;
  swift_beginAccess();
  sub_1D205B868(v5, v6);
  swift_endAccess();
  return sub_1D1FF1A9C(v8);
}

uint64_t sub_1D2060E80@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v10 = a2;
  v6 = a1;
  v7 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BF180, &qword_1D208E5C0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v5 - v7;
  v8 = *v2;
  v3 = MEMORY[0x1E69E5928](v8);
  v12 = v8;
  v11 = v8;
  (*((*v8 & *MEMORY[0x1E69E7D40]) + 0x360))(v3);
  sub_1D1FE29C4(v9, v10);
  return MEMORY[0x1E69E5920](v11);
}

uint64_t sub_1D2060F98(uint64_t a1, void **a2)
{
  v5 = a1;
  v7 = a2;
  v6 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BF180, &qword_1D208E5C0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v4 - v6;
  sub_1D1FE94C4(v2, &v4 - v6);
  v8 = *v7;
  MEMORY[0x1E69E5928](v8);
  v11 = v8;
  v10 = v8;
  (*((*v8 & *MEMORY[0x1E69E7D40]) + 0x368))(v9);
  return MEMORY[0x1E69E5920](v10);
}

uint64_t sub_1D20610AC@<X0>(void *a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtC19EnergyKitFoundation12EKEnergySite_utilitySupportedCheckDate);
  swift_beginAccess();
  sub_1D1FE94C4(v3, a1);
  return swift_endAccess();
}

uint64_t sub_1D2061110(uint64_t a1)
{
  v8 = a1;
  v11 = 0;
  v10 = 0;
  v4 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BF180, &qword_1D208E5C0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v8);
  v5 = &v4 - v4;
  v11 = v2;
  v10 = v1;
  sub_1D1FE94C4(v2, &v4 - v4);
  v6 = (v1 + OBJC_IVAR____TtC19EnergyKitFoundation12EKEnergySite_utilitySupportedCheckDate);
  v7 = &v9;
  swift_beginAccess();
  sub_1D205B868(v5, v6);
  swift_endAccess();
  return sub_1D1FF1A9C(v8);
}

uint64_t sub_1D2061260@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v10 = a2;
  v6 = a1;
  v7 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BF180, &qword_1D208E5C0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v5 - v7;
  v8 = *v2;
  v3 = MEMORY[0x1E69E5928](v8);
  v12 = v8;
  v11 = v8;
  (*((*v8 & *MEMORY[0x1E69E7D40]) + 0x378))(v3);
  sub_1D1FE29C4(v9, v10);
  return MEMORY[0x1E69E5920](v11);
}

uint64_t sub_1D2061378(uint64_t a1, void **a2)
{
  v5 = a1;
  v7 = a2;
  v6 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BF180, &qword_1D208E5C0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v4 - v6;
  sub_1D1FE94C4(v2, &v4 - v6);
  v8 = *v7;
  MEMORY[0x1E69E5928](v8);
  v11 = v8;
  v10 = v8;
  (*((*v8 & *MEMORY[0x1E69E7D40]) + 0x380))(v9);
  return MEMORY[0x1E69E5920](v10);
}

uint64_t sub_1D206148C@<X0>(void *a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtC19EnergyKitFoundation12EKEnergySite_amiLastRefreshDate);
  swift_beginAccess();
  sub_1D1FE94C4(v3, a1);
  return swift_endAccess();
}

uint64_t sub_1D20614F0(uint64_t a1)
{
  v8 = a1;
  v11 = 0;
  v10 = 0;
  v4 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BF180, &qword_1D208E5C0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v8);
  v5 = &v4 - v4;
  v11 = v2;
  v10 = v1;
  sub_1D1FE94C4(v2, &v4 - v4);
  v6 = (v1 + OBJC_IVAR____TtC19EnergyKitFoundation12EKEnergySite_amiLastRefreshDate);
  v7 = &v9;
  swift_beginAccess();
  sub_1D205B868(v5, v6);
  swift_endAccess();
  return sub_1D1FF1A9C(v8);
}

uint64_t sub_1D2061640@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v2 = MEMORY[0x1E69E5928]();
  *a2 = (*((*v4 & *MEMORY[0x1E69E7D40]) + 0x390))(v2) & 1;
  return MEMORY[0x1E69E5920](v4);
}

uint64_t sub_1D20616EC(char *a1, void **a2)
{
  v4 = *a1;
  v3 = *a2;
  MEMORY[0x1E69E5928]();
  (*((*v3 & *MEMORY[0x1E69E7D40]) + 0x398))(v4 & 1);
  return MEMORY[0x1E69E5920](v3);
}

uint64_t sub_1D2061794()
{
  v2 = (v0 + OBJC_IVAR____TtC19EnergyKitFoundation12EKEnergySite_hasExportedEnergy);
  swift_beginAccess();
  v3 = *v2;
  swift_endAccess();
  return v3 & 1;
}

uint64_t sub_1D20617FC(char a1)
{
  v3 = (v1 + OBJC_IVAR____TtC19EnergyKitFoundation12EKEnergySite_hasExportedEnergy);
  swift_beginAccess();
  *v3 = a1;
  return swift_endAccess();
}

uint64_t sub_1D20618DC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v10 = a2;
  v6 = a1;
  v7 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BF180, &qword_1D208E5C0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v5 - v7;
  v8 = *v2;
  v3 = MEMORY[0x1E69E5928](v8);
  v12 = v8;
  v11 = v8;
  (*((*v8 & *MEMORY[0x1E69E7D40]) + 0x3A8))(v3);
  sub_1D1FE29C4(v9, v10);
  return MEMORY[0x1E69E5920](v11);
}

uint64_t sub_1D20619F4(uint64_t a1, void **a2)
{
  v5 = a1;
  v7 = a2;
  v6 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BF180, &qword_1D208E5C0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v4 - v6;
  sub_1D1FE94C4(v2, &v4 - v6);
  v8 = *v7;
  MEMORY[0x1E69E5928](v8);
  v11 = v8;
  v10 = v8;
  (*((*v8 & *MEMORY[0x1E69E7D40]) + 0x3B0))(v9);
  return MEMORY[0x1E69E5920](v10);
}

uint64_t sub_1D2061B08@<X0>(void *a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtC19EnergyKitFoundation12EKEnergySite_usagePointNextRefreshDate);
  swift_beginAccess();
  sub_1D1FE94C4(v3, a1);
  return swift_endAccess();
}

uint64_t sub_1D2061B6C(uint64_t a1)
{
  v8 = a1;
  v11 = 0;
  v10 = 0;
  v4 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BF180, &qword_1D208E5C0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v8);
  v5 = &v4 - v4;
  v11 = v2;
  v10 = v1;
  sub_1D1FE94C4(v2, &v4 - v4);
  v6 = (v1 + OBJC_IVAR____TtC19EnergyKitFoundation12EKEnergySite_usagePointNextRefreshDate);
  v7 = &v9;
  swift_beginAccess();
  sub_1D205B868(v5, v6);
  swift_endAccess();
  return sub_1D1FF1A9C(v8);
}

uint64_t sub_1D2061CBC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v10 = a2;
  v6 = a1;
  v7 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BF180, &qword_1D208E5C0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v5 - v7;
  v8 = *v2;
  v3 = MEMORY[0x1E69E5928](v8);
  v12 = v8;
  v11 = v8;
  (*((*v8 & *MEMORY[0x1E69E7D40]) + 0x3C0))(v3);
  sub_1D1FE29C4(v9, v10);
  return MEMORY[0x1E69E5920](v11);
}

uint64_t sub_1D2061DD4(uint64_t a1, void **a2)
{
  v5 = a1;
  v7 = a2;
  v6 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BF180, &qword_1D208E5C0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v4 - v6;
  sub_1D1FE94C4(v2, &v4 - v6);
  v8 = *v7;
  MEMORY[0x1E69E5928](v8);
  v11 = v8;
  v10 = v8;
  (*((*v8 & *MEMORY[0x1E69E7D40]) + 0x3C8))(v9);
  return MEMORY[0x1E69E5920](v10);
}

uint64_t sub_1D2061EE8@<X0>(void *a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtC19EnergyKitFoundation12EKEnergySite_usageSummaryNextRefreshDate);
  swift_beginAccess();
  sub_1D1FE94C4(v3, a1);
  return swift_endAccess();
}

uint64_t sub_1D2061F4C(uint64_t a1)
{
  v8 = a1;
  v11 = 0;
  v10 = 0;
  v4 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BF180, &qword_1D208E5C0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v8);
  v5 = &v4 - v4;
  v11 = v2;
  v10 = v1;
  sub_1D1FE94C4(v2, &v4 - v4);
  v6 = (v1 + OBJC_IVAR____TtC19EnergyKitFoundation12EKEnergySite_usageSummaryNextRefreshDate);
  v7 = &v9;
  swift_beginAccess();
  sub_1D205B868(v5, v6);
  swift_endAccess();
  return sub_1D1FF1A9C(v8);
}

uint64_t sub_1D206209C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v10 = a2;
  v6 = a1;
  v7 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BF180, &qword_1D208E5C0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v5 - v7;
  v8 = *v2;
  v3 = MEMORY[0x1E69E5928](v8);
  v12 = v8;
  v11 = v8;
  (*((*v8 & *MEMORY[0x1E69E7D40]) + 0x3D8))(v3);
  sub_1D1FE29C4(v9, v10);
  return MEMORY[0x1E69E5920](v11);
}

uint64_t sub_1D20621B4(uint64_t a1, void **a2)
{
  v5 = a1;
  v7 = a2;
  v6 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BF180, &qword_1D208E5C0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v4 - v6;
  sub_1D1FE94C4(v2, &v4 - v6);
  v8 = *v7;
  MEMORY[0x1E69E5928](v8);
  v11 = v8;
  v10 = v8;
  (*((*v8 & *MEMORY[0x1E69E7D40]) + 0x3E0))(v9);
  return MEMORY[0x1E69E5920](v10);
}

uint64_t sub_1D20622C8@<X0>(void *a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtC19EnergyKitFoundation12EKEnergySite_intervalBlockNextRefreshDate);
  swift_beginAccess();
  sub_1D1FE94C4(v3, a1);
  return swift_endAccess();
}

uint64_t sub_1D206232C(uint64_t a1)
{
  v8 = a1;
  v11 = 0;
  v10 = 0;
  v4 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BF180, &qword_1D208E5C0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v8);
  v5 = &v4 - v4;
  v11 = v2;
  v10 = v1;
  sub_1D1FE94C4(v2, &v4 - v4);
  v6 = (v1 + OBJC_IVAR____TtC19EnergyKitFoundation12EKEnergySite_intervalBlockNextRefreshDate);
  v7 = &v9;
  swift_beginAccess();
  sub_1D205B868(v5, v6);
  swift_endAccess();
  return sub_1D1FF1A9C(v8);
}

uint64_t sub_1D206247C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v10 = a2;
  v6 = a1;
  v7 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BF180, &qword_1D208E5C0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v5 - v7;
  v8 = *v2;
  v3 = MEMORY[0x1E69E5928](v8);
  v12 = v8;
  v11 = v8;
  (*((*v8 & *MEMORY[0x1E69E7D40]) + 0x3F0))(v3);
  sub_1D1FE29C4(v9, v10);
  return MEMORY[0x1E69E5920](v11);
}

uint64_t sub_1D2062594(uint64_t a1, void **a2)
{
  v5 = a1;
  v7 = a2;
  v6 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BF180, &qword_1D208E5C0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v4 - v6;
  sub_1D1FE94C4(v2, &v4 - v6);
  v8 = *v7;
  MEMORY[0x1E69E5928](v8);
  v11 = v8;
  v10 = v8;
  (*((*v8 & *MEMORY[0x1E69E7D40]) + 0x3F8))(v9);
  return MEMORY[0x1E69E5920](v10);
}

uint64_t sub_1D20626A8@<X0>(void *a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtC19EnergyKitFoundation12EKEnergySite_subscriptionCreationDate);
  swift_beginAccess();
  sub_1D1FE94C4(v3, a1);
  return swift_endAccess();
}

uint64_t sub_1D206270C(uint64_t a1)
{
  v8 = a1;
  v11 = 0;
  v10 = 0;
  v4 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BF180, &qword_1D208E5C0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v8);
  v5 = &v4 - v4;
  v11 = v2;
  v10 = v1;
  sub_1D1FE94C4(v2, &v4 - v4);
  v6 = (v1 + OBJC_IVAR____TtC19EnergyKitFoundation12EKEnergySite_subscriptionCreationDate);
  v7 = &v9;
  swift_beginAccess();
  sub_1D205B868(v5, v6);
  swift_endAccess();
  return sub_1D1FF1A9C(v8);
}

uint64_t sub_1D206285C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v10 = a2;
  v6 = a1;
  v7 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BF180, &qword_1D208E5C0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v5 - v7;
  v8 = *v2;
  v3 = MEMORY[0x1E69E5928](v8);
  v12 = v8;
  v11 = v8;
  (*((*v8 & *MEMORY[0x1E69E7D40]) + 0x408))(v3);
  sub_1D1FE29C4(v9, v10);
  return MEMORY[0x1E69E5920](v11);
}

uint64_t sub_1D2062974(uint64_t a1, void **a2)
{
  v5 = a1;
  v7 = a2;
  v6 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BF180, &qword_1D208E5C0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v4 - v6;
  sub_1D1FE94C4(v2, &v4 - v6);
  v8 = *v7;
  MEMORY[0x1E69E5928](v8);
  v11 = v8;
  v10 = v8;
  (*((*v8 & *MEMORY[0x1E69E7D40]) + 0x410))(v9);
  return MEMORY[0x1E69E5920](v10);
}

uint64_t sub_1D2062A88@<X0>(void *a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtC19EnergyKitFoundation12EKEnergySite_subscriptionStartDate);
  swift_beginAccess();
  sub_1D1FE94C4(v3, a1);
  return swift_endAccess();
}

uint64_t sub_1D2062AEC(uint64_t a1)
{
  v8 = a1;
  v11 = 0;
  v10 = 0;
  v4 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BF180, &qword_1D208E5C0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v8);
  v5 = &v4 - v4;
  v11 = v2;
  v10 = v1;
  sub_1D1FE94C4(v2, &v4 - v4);
  v6 = (v1 + OBJC_IVAR____TtC19EnergyKitFoundation12EKEnergySite_subscriptionStartDate);
  v7 = &v9;
  swift_beginAccess();
  sub_1D205B868(v5, v6);
  swift_endAccess();
  return sub_1D1FF1A9C(v8);
}

uint64_t sub_1D2062C3C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v10 = a2;
  v6 = a1;
  v7 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BF180, &qword_1D208E5C0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v5 - v7;
  v8 = *v2;
  v3 = MEMORY[0x1E69E5928](v8);
  v12 = v8;
  v11 = v8;
  (*((*v8 & *MEMORY[0x1E69E7D40]) + 0x420))(v3);
  sub_1D1FE29C4(v9, v10);
  return MEMORY[0x1E69E5920](v11);
}

uint64_t sub_1D2062D54(uint64_t a1, void **a2)
{
  v5 = a1;
  v7 = a2;
  v6 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BF180, &qword_1D208E5C0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v4 - v6;
  sub_1D1FE94C4(v2, &v4 - v6);
  v8 = *v7;
  MEMORY[0x1E69E5928](v8);
  v11 = v8;
  v10 = v8;
  (*((*v8 & *MEMORY[0x1E69E7D40]) + 0x428))(v9);
  return MEMORY[0x1E69E5920](v10);
}

uint64_t sub_1D2062E68@<X0>(void *a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtC19EnergyKitFoundation12EKEnergySite_siteTombstone);
  swift_beginAccess();
  sub_1D1FE94C4(v3, a1);
  return swift_endAccess();
}

uint64_t sub_1D2062ECC(uint64_t a1)
{
  v8 = a1;
  v11 = 0;
  v10 = 0;
  v4 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BF180, &qword_1D208E5C0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v8);
  v5 = &v4 - v4;
  v11 = v2;
  v10 = v1;
  sub_1D1FE94C4(v2, &v4 - v4);
  v6 = (v1 + OBJC_IVAR____TtC19EnergyKitFoundation12EKEnergySite_siteTombstone);
  v7 = &v9;
  swift_beginAccess();
  sub_1D205B868(v5, v6);
  swift_endAccess();
  return sub_1D1FF1A9C(v8);
}

uint64_t sub_1D2063024@<X0>(void **a1@<X0>, _DWORD *a2@<X8>)
{
  v4 = *a1;
  v2 = MEMORY[0x1E69E5928]();
  *a2 = (*((*v4 & *MEMORY[0x1E69E7D40]) + 0x438))(v2);
  return MEMORY[0x1E69E5920](v4);
}

uint64_t sub_1D20630CC(unsigned int *a1, void **a2)
{
  v4 = *a1;
  v3 = *a2;
  MEMORY[0x1E69E5928]();
  (*((*v3 & *MEMORY[0x1E69E7D40]) + 0x440))(v4);
  return MEMORY[0x1E69E5920](v3);
}

uint64_t sub_1D2063170()
{
  v2 = (v0 + OBJC_IVAR____TtC19EnergyKitFoundation12EKEnergySite_siteVersion);
  swift_beginAccess();
  v3 = *v2;
  swift_endAccess();
  return v3;
}

uint64_t sub_1D20631D4(int a1)
{
  v3 = (v1 + OBJC_IVAR____TtC19EnergyKitFoundation12EKEnergySite_siteVersion);
  swift_beginAccess();
  *v3 = a1;
  return swift_endAccess();
}

uint64_t sub_1D20632AC@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v2 = MEMORY[0x1E69E5928]();
  *a2 = (*((*v4 & *MEMORY[0x1E69E7D40]) + 0x450))(v2);
  return MEMORY[0x1E69E5920](v4);
}

uint64_t sub_1D2063354(uint64_t *a1, void *a2)
{
  sub_1D202847C(a1, &v6);
  v5 = v6;
  v4 = *a2;
  MEMORY[0x1E69E5928](*a2);
  (*((*v4 & *MEMORY[0x1E69E7D40]) + 0x458))(v5);
  return MEMORY[0x1E69E5920](v4);
}

uint64_t sub_1D2063408()
{
  v2 = (v0 + OBJC_IVAR____TtC19EnergyKitFoundation12EKEnergySite_generationMeters);
  swift_beginAccess();
  v3 = *v2;

  swift_endAccess();
  return v3;
}

uint64_t sub_1D2063470(uint64_t a1)
{

  v4 = (v1 + OBJC_IVAR____TtC19EnergyKitFoundation12EKEnergySite_generationMeters);
  swift_beginAccess();
  v2 = *v4;
  *v4 = a1;

  swift_endAccess();
}

uint64_t sub_1D206355C()
{
  LODWORD(v1) = 0;
  BYTE4(v1) = 1;
  return v1;
}

uint64_t sub_1D2063580@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v2 = MEMORY[0x1E69E5928]();
  v6 = (*((*v4 & *MEMORY[0x1E69E7D40]) + 0x468))(v2);
  *a2 = v6;
  *(a2 + 4) = BYTE4(v6) & 1;
  return MEMORY[0x1E69E5920](v4);
}

uint64_t sub_1D2063640(int *a1, void **a2)
{
  v4 = *a1;
  v5 = *(a1 + 4);
  v3 = *a2;
  MEMORY[0x1E69E5928]();
  LODWORD(v6) = v4;
  BYTE4(v6) = v5 & 1;
  (*((*v3 & *MEMORY[0x1E69E7D40]) + 0x470))(v6);
  return MEMORY[0x1E69E5920](v3);
}

uint64_t sub_1D2063704()
{
  v2 = (v0 + OBJC_IVAR____TtC19EnergyKitFoundation12EKEnergySite_includeRatePlanInGuidance);
  swift_beginAccess();
  v3 = *v2;
  v4 = *(v2 + 4);
  swift_endAccess();
  LODWORD(v5) = v3;
  BYTE4(v5) = v4 & 1;
  return v5;
}

uint64_t sub_1D2063788(uint64_t a1)
{
  v3 = a1;
  v4 = BYTE4(a1);
  v5 = v1 + OBJC_IVAR____TtC19EnergyKitFoundation12EKEnergySite_includeRatePlanInGuidance;
  swift_beginAccess();
  *v5 = v3;
  *(v5 + 4) = v4 & 1;
  return swift_endAccess();
}

uint64_t sub_1D20638FC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v10 = a2;
  v6 = a1;
  v7 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BF318, &unk_1D2091A80) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v5 - v7;
  v8 = *v2;
  v3 = MEMORY[0x1E69E5928](v8);
  v12 = v8;
  v11 = v8;
  (*((*v8 & *MEMORY[0x1E69E7D40]) + 0x480))(v3);
  sub_1D2071CA8(v9, v10);
  return MEMORY[0x1E69E5920](v11);
}

uint64_t sub_1D2063A14(uint64_t a1, void **a2)
{
  v5 = a1;
  v7 = a2;
  v6 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BF318, &unk_1D2091A80) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v4 - v6;
  sub_1D2063B8C(v2, &v4 - v6);
  v8 = *v7;
  MEMORY[0x1E69E5928](v8);
  v11 = v8;
  v10 = v8;
  (*((*v8 & *MEMORY[0x1E69E7D40]) + 0x488))(v9);
  return MEMORY[0x1E69E5920](v10);
}

uint64_t sub_1D2063B28@<X0>(void *a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtC19EnergyKitFoundation12EKEnergySite_unknownFields);
  swift_beginAccess();
  sub_1D2063B8C(v3, a1);
  return swift_endAccess();
}

void *sub_1D2063B8C(const void *a1, void *a2)
{
  v6 = sub_1D208C21C();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BF318, &unk_1D2091A80);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 16))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

uint64_t sub_1D2063CB4(uint64_t a1)
{
  v8 = a1;
  v11 = 0;
  v10 = 0;
  v4 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BF318, &unk_1D2091A80) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v8);
  v5 = &v4 - v4;
  v11 = v2;
  v10 = v1;
  sub_1D2063B8C(v2, &v4 - v4);
  v6 = (v1 + OBJC_IVAR____TtC19EnergyKitFoundation12EKEnergySite_unknownFields);
  v7 = &v9;
  swift_beginAccess();
  sub_1D2063D98(v5, v6);
  swift_endAccess();
  return sub_1D2063FC0(v8);
}

void *sub_1D2063D98(const void *a1, void *a2)
{
  v7 = sub_1D208C21C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 48);
  if ((v9)(a2, 1))
  {
    if (v9(a1, 1, v7))
    {
      v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BF318, &unk_1D2091A80);
      memcpy(a2, a1, *(*(v3 - 8) + 64));
    }

    else
    {
      (*(v8 + 32))(a2, a1, v7);
      (*(v8 + 56))(a2, 0, 1, v7);
    }
  }

  else if (v9(a1, 1, v7))
  {
    (*(v8 + 8))(a2, v7);
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BF318, &unk_1D2091A80);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v8 + 40))(a2, a1, v7);
  }

  return a2;
}

uint64_t sub_1D2063FC0(uint64_t a1)
{
  v3 = sub_1D208C21C();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

_BYTE *EKEnergySite.__allocating_init(siteID:siteName:ckZoneName:state:location:utilityID:subscriptionID:accessToken:refreshToken:timezone:currentRatePlan:usagePointCustomIndex:usageSummaryCustomIndex:intervalBlockCustomIndex:ckFunctionToken:accountName:accountNumber:address:serviceLocationID:alternateSupplier:accessTokenExpirationDate:utilitySupportedCheckDate:amiLastRefreshDate:hasExportedEnergy:usagePointNextRefreshDate:usageSummaryNextRefreshDate:intervalBlockNextRefreshDate:subscriptionCreationDate:subscriptionStartDate:siteTombstone:siteVersion:generationMeters:includeRatePlanInGuidance:unknownFields:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t *a20, uint64_t a21, unint64_t a22, uint64_t a23, unint64_t a24, uint64_t a25, unint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, const void *a39, const void *a40, const void *a41, char a42, const void *a43, const void *a44, const void *a45, const void *a46, const void *a47, const void *a48, int a49, uint64_t a50, uint64_t a51, const void *a52)
{
  v53 = objc_allocWithZone(v52);
  LODWORD(v63) = a51;
  BYTE4(v63) = BYTE4(a51) & 1;
  return EKEnergySite.init(siteID:siteName:ckZoneName:state:location:utilityID:subscriptionID:accessToken:refreshToken:timezone:currentRatePlan:usagePointCustomIndex:usageSummaryCustomIndex:intervalBlockCustomIndex:ckFunctionToken:accountName:accountNumber:address:serviceLocationID:alternateSupplier:accessTokenExpirationDate:utilitySupportedCheckDate:amiLastRefreshDate:hasExportedEnergy:usagePointNextRefreshDate:usageSummaryNextRefreshDate:intervalBlockNextRefreshDate:subscriptionCreationDate:subscriptionStartDate:siteTombstone:siteVersion:generationMeters:includeRatePlanInGuidance:unknownFields:)(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, v63, a52);
}

_BYTE *EKEnergySite.init(siteID:siteName:ckZoneName:state:location:utilityID:subscriptionID:accessToken:refreshToken:timezone:currentRatePlan:usagePointCustomIndex:usageSummaryCustomIndex:intervalBlockCustomIndex:ckFunctionToken:accountName:accountNumber:address:serviceLocationID:alternateSupplier:accessTokenExpirationDate:utilitySupportedCheckDate:amiLastRefreshDate:hasExportedEnergy:usagePointNextRefreshDate:usageSummaryNextRefreshDate:intervalBlockNextRefreshDate:subscriptionCreationDate:subscriptionStartDate:siteTombstone:siteVersion:generationMeters:includeRatePlanInGuidance:unknownFields:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t *a20, uint64_t a21, unint64_t a22, uint64_t a23, unint64_t a24, uint64_t a25, unint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, const void *a39, const void *a40, const void *a41, unsigned __int8 a42, const void *a43, const void *a44, const void *a45, const void *a46, const void *a47, const void *a48, int a49, uint64_t a50, uint64_t a51, const void *a52)
{
  v166 = a1;
  v335 = a2;
  v168 = a3;
  v334 = a4;
  v164 = a5;
  v333 = a6;
  v170 = a7;
  v332 = a8;
  v331 = a9;
  v177 = a10;
  v330 = a11;
  v182 = a12;
  v329 = a13;
  v187 = a14;
  v328 = a15;
  v192 = a16;
  v327 = a17;
  v197 = a18;
  v326 = a19;
  v325 = a20;
  v323 = a21;
  v324 = a22;
  v321 = a23;
  v322 = a24;
  v319 = a25;
  v320 = a26;
  v210 = a27;
  v318 = a28;
  v215 = a29;
  v317 = a30;
  v220 = a31;
  v316 = a32;
  v225 = a33;
  v315 = a34;
  v230 = a35;
  v314 = a36;
  v235 = a37;
  v313 = a38;
  v312 = a39;
  v311 = a40;
  v310 = a41;
  v252 = a42;
  v309 = a43;
  v308 = a44;
  v307 = a45;
  v306 = a46;
  v305 = a47;
  v304 = a48;
  v151 = a49;
  v303 = a50;
  v302 = a52;
  v418 = 0;
  v416 = 0;
  v417 = 0;
  v414 = 0;
  v415 = 0;
  v412 = 0;
  v413 = 0;
  v410 = 0;
  v411 = 0;
  v409 = 0;
  v407 = 0;
  v408 = 0;
  v405 = 0;
  v406 = 0;
  v403 = 0;
  v404 = 0;
  v401 = 0;
  v402 = 0;
  v399 = 0;
  v400 = 0;
  v398 = 0;
  v396 = 0;
  v397 = 0;
  v394 = 0;
  v395 = 0;
  v392 = 0;
  v393 = 0;
  v390 = 0;
  v391 = 0;
  v388 = 0;
  v389 = 0;
  v386 = 0;
  v387 = 0;
  v384 = 0;
  v385 = 0;
  v382 = 0;
  v383 = 0;
  v380 = 0;
  v381 = 0;
  v379 = 0;
  v378 = 0;
  v377 = 0;
  v376 = 0;
  v375 = 0;
  v374 = 0;
  v373 = 0;
  v372 = 0;
  v371 = 0;
  v370 = 0;
  v369 = 0;
  v368 = 0;
  v366 = 0;
  v367 = 0;
  v365 = 0;
  v419 = a51;
  v288 = a51;
  v289 = BYTE4(a51);
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BF318, &unk_1D2091A80);
  v149 = (*(*(v53 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v53);
  v297 = &v148 - v149;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BF180, &qword_1D208E5C0);
  v150 = (*(*(v54 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v54);
  v276 = &v148 - v150;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEDF0, &unk_1D208F480);
  v56 = (*(*(v55 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v55);
  v202 = (&v148 - v57);
  v416 = v166;
  v417 = v58;
  v414 = v59;
  v415 = v60;
  v412 = v61;
  v413 = v62;
  v410 = v63;
  v411 = v64;
  v409 = v331;
  v407 = v177;
  v408 = v330;
  v405 = v182;
  v406 = v329;
  v403 = v187;
  v404 = v328;
  v401 = v192;
  v402 = v327;
  v399 = v197;
  v400 = v326;
  v398 = v325;
  v396 = v323;
  v397 = v324;
  v394 = v321;
  v395 = v322;
  v392 = v319;
  v393 = v320;
  v390 = v210;
  v391 = a28;
  v388 = a29;
  v389 = a30;
  v386 = a31;
  v387 = a32;
  v384 = a33;
  v385 = a34;
  v382 = a35;
  v383 = v314;
  v380 = v235;
  v381 = v313;
  v379 = v312;
  v378 = v311;
  v377 = v310;
  v290 = 1;
  v376 = v252 & 1;
  v375 = v309;
  v374 = v308;
  v373 = v307;
  v372 = v306;
  v371 = v65;
  v370 = v66;
  v369 = v67;
  v368 = v68;
  v366 = v288;
  v367 = v289 & 1;
  v365 = v302;
  v418 = v52;
  v171 = &qword_1EC6BF000;
  v300 = 0;
  *&v52[OBJC_IVAR____TtC19EnergyKitFoundation12EKEnergySite_location] = 0;
  v175 = &qword_1EC6BF000;
  v69 = &v418[OBJC_IVAR____TtC19EnergyKitFoundation12EKEnergySite_utilityID];
  *v69 = 0;
  v69[1] = 0;
  v180 = &qword_1EC6BF000;
  v70 = &v418[OBJC_IVAR____TtC19EnergyKitFoundation12EKEnergySite_subscriptionID];
  *v70 = 0;
  v70[1] = 0;
  v185 = &qword_1EC6BF000;
  v71 = &v418[OBJC_IVAR____TtC19EnergyKitFoundation12EKEnergySite_accessToken];
  *v71 = 0;
  v71[1] = 0;
  v190 = &qword_1EC6BF000;
  v72 = &v418[OBJC_IVAR____TtC19EnergyKitFoundation12EKEnergySite_refreshToken];
  *v72 = 0;
  v72[1] = 0;
  v195 = &qword_1EC6BF000;
  v73 = &v418[OBJC_IVAR____TtC19EnergyKitFoundation12EKEnergySite_timezone];
  *v73 = 0;
  v73[1] = 0;
  v153 = v418;
  v200 = &unk_1EE083000;
  v152 = OBJC_IVAR____TtC19EnergyKitFoundation12EKEnergySite_currentRatePlan;
  v74 = type metadata accessor for EnergySitePayload.CurrentRatePlan();
  (*(*(v74 - 8) + 56))(&v153[v152], v290);
  v208 = &unk_1EE083000;
  v75 = &v418[OBJC_IVAR____TtC19EnergyKitFoundation12EKEnergySite_ckFunctionToken];
  *v75 = 0;
  v75[1] = 0;
  v213 = &unk_1EE083000;
  v76 = &v418[OBJC_IVAR____TtC19EnergyKitFoundation12EKEnergySite_accountName];
  *v76 = 0;
  v76[1] = 0;
  v218 = &unk_1EE083000;
  v77 = &v418[OBJC_IVAR____TtC19EnergyKitFoundation12EKEnergySite_accountNumber];
  *v77 = 0;
  v77[1] = 0;
  v223 = &unk_1EE083000;
  v78 = &v418[OBJC_IVAR____TtC19EnergyKitFoundation12EKEnergySite_address];
  *v78 = 0;
  v78[1] = 0;
  v228 = &unk_1EE083000;
  v79 = &v418[OBJC_IVAR____TtC19EnergyKitFoundation12EKEnergySite_serviceLocationID];
  *v79 = 0;
  v79[1] = 0;
  v233 = &unk_1EE083000;
  v80 = &v418[OBJC_IVAR____TtC19EnergyKitFoundation12EKEnergySite_alternateSupplier];
  *v80 = 0;
  v80[1] = 0;
  v155 = v418;
  v238 = &unk_1EE083000;
  v154 = OBJC_IVAR____TtC19EnergyKitFoundation12EKEnergySite_accessTokenExpirationDate;
  v156 = sub_1D208BF1C();
  v81 = *(v156 - 8);
  v158 = *(v81 + 56);
  v157 = v81 + 56;
  v158(&v155[v154], v290);
  v242 = &unk_1EE083000;
  (v158)(&v418[OBJC_IVAR____TtC19EnergyKitFoundation12EKEnergySite_utilitySupportedCheckDate], v290, v290, v156);
  v246 = &unk_1EE083000;
  (v158)(&v418[OBJC_IVAR____TtC19EnergyKitFoundation12EKEnergySite_amiLastRefreshDate], v290, v290, v156);
  v82 = v156;
  v83 = v158;
  v84 = v290;
  v250 = &unk_1EE083000;
  v418[OBJC_IVAR____TtC19EnergyKitFoundation12EKEnergySite_hasExportedEnergy] = 0;
  v254 = &unk_1EE083000;
  v83(&v418[OBJC_IVAR____TtC19EnergyKitFoundation12EKEnergySite_usagePointNextRefreshDate], v84, v84, v82);
  v258 = &unk_1EE083000;
  (v158)(&v418[OBJC_IVAR____TtC19EnergyKitFoundation12EKEnergySite_usageSummaryNextRefreshDate], v290, v290, v156);
  v262 = &unk_1EE083000;
  (v158)(&v418[OBJC_IVAR____TtC19EnergyKitFoundation12EKEnergySite_intervalBlockNextRefreshDate], v290, v290, v156);
  v266 = &unk_1EE083000;
  (v158)(&v418[OBJC_IVAR____TtC19EnergyKitFoundation12EKEnergySite_subscriptionCreationDate], v290, v290, v156);
  v270 = &unk_1EE083000;
  (v158)(&v418[OBJC_IVAR____TtC19EnergyKitFoundation12EKEnergySite_subscriptionStartDate], v290, v290, v156);
  v274 = &unk_1EE083000;
  (v158)(&v418[OBJC_IVAR____TtC19EnergyKitFoundation12EKEnergySite_siteTombstone], v290, v290, v156);
  v85 = v290;
  v86 = v300;
  v279 = &unk_1EE083000;
  v281 = 3;
  *&v418[OBJC_IVAR____TtC19EnergyKitFoundation12EKEnergySite_siteVersion] = 3;
  v283 = &unk_1EE083000;
  *&v418[OBJC_IVAR____TtC19EnergyKitFoundation12EKEnergySite_generationMeters] = v86;
  v287 = &unk_1EE083000;
  v87 = &v418[OBJC_IVAR____TtC19EnergyKitFoundation12EKEnergySite_includeRatePlanInGuidance];
  *v87 = 0;
  v87[4] = v85 & 1;
  v160 = v418;
  v293 = &unk_1EE083000;
  v159 = OBJC_IVAR____TtC19EnergyKitFoundation12EKEnergySite_unknownFields;
  v88 = sub_1D208C21C();
  (*(*(v88 - 8) + 56))(&v160[v159], v290);
  v162 = v418;
  v161 = OBJC_IVAR____TtC19EnergyKitFoundation12EKEnergySite_encoder;
  sub_1D208BC5C();
  *&v162[v161] = sub_1D208BC4C();
  v163 = v418;

  v89 = v333;
  v90 = &v163[OBJC_IVAR____TtC19EnergyKitFoundation12EKEnergySite_ckZoneName];
  *v90 = v164;
  v90[1] = v89;
  v165 = v418;

  v91 = v335;
  v92 = &v165[OBJC_IVAR____TtC19EnergyKitFoundation12EKEnergySite_siteID];
  *v92 = v166;
  v92[1] = v91;
  v167 = v418;

  v93 = v334;
  v94 = &v167[OBJC_IVAR____TtC19EnergyKitFoundation12EKEnergySite_siteName];
  *v94 = v168;
  v94[1] = v93;
  v169 = v418;

  v95 = v331;
  v96 = v332;
  v97 = &v169[OBJC_IVAR____TtC19EnergyKitFoundation12EKEnergySite_state];
  *v97 = v170;
  v97[1] = v96;
  v172 = v418;
  MEMORY[0x1E69E5928](v95);
  v173 = &v172[v171[93]];
  v174 = &v364;
  v295 = 33;
  v296 = 0;
  swift_beginAccess();
  v98 = *v173;
  *v173 = v331;
  MEMORY[0x1E69E5920](v98);
  swift_endAccess();
  v176 = v418;

  v178 = &v176[v175[94]];
  v179 = &v363;
  swift_beginAccess();
  v99 = v178;
  v100 = v330;
  v101 = v178[1];
  *v178 = v177;
  v99[1] = v100;

  swift_endAccess();
  v181 = v418;

  v183 = &v181[v180[95]];
  v184 = &v362;
  swift_beginAccess();
  v102 = v183;
  v103 = v329;
  v104 = v183[1];
  *v183 = v182;
  v102[1] = v103;

  swift_endAccess();
  v186 = v418;

  v188 = &v186[v185[96]];
  v189 = &v361;
  swift_beginAccess();
  v105 = v188;
  v106 = v328;
  v107 = v188[1];
  *v188 = v187;
  v105[1] = v106;

  swift_endAccess();
  v191 = v418;

  v193 = &v191[v190[97]];
  v194 = &v360;
  swift_beginAccess();
  v108 = v193;
  v109 = v327;
  v110 = v193[1];
  *v193 = v192;
  v108[1] = v109;

  swift_endAccess();
  v196 = v418;

  v198 = &v196[v195[98]];
  v199 = &v359;
  swift_beginAccess();
  v111 = v198;
  v112 = v326;
  v113 = v198[1];
  *v198 = v197;
  v111[1] = v112;

  swift_endAccess();
  v201 = v418;
  sub_1D2018864(v325, v202);
  v203 = &v201[v200[152]];
  v204 = &v358;
  swift_beginAccess();
  sub_1D2018C54(v202, v203);
  swift_endAccess();
  v205 = v418;
  sub_1D1FD0018(v323, v324);
  v114 = v321;
  v115 = v322;
  v116 = v324;
  v117 = &v205[OBJC_IVAR____TtC19EnergyKitFoundation12EKEnergySite_usagePointCustomIndex];
  *v117 = v323;
  v117[1] = v116;
  v206 = v418;
  sub_1D1FD0018(v114, v115);
  v118 = v319;
  v119 = v320;
  v120 = v322;
  v121 = &v206[OBJC_IVAR____TtC19EnergyKitFoundation12EKEnergySite_usageSummaryCustomIndex];
  *v121 = v321;
  v121[1] = v120;
  v207 = v418;
  sub_1D1FD0018(v118, v119);
  v122 = v320;
  v123 = &v207[OBJC_IVAR____TtC19EnergyKitFoundation12EKEnergySite_intervalBlockCustomIndex];
  *v123 = v319;
  v123[1] = v122;
  v209 = v418;

  v211 = &v209[v208[153]];
  v212 = &v357;
  swift_beginAccess();
  v124 = v211;
  v125 = v318;
  v126 = v211[1];
  *v211 = v210;
  v124[1] = v125;

  swift_endAccess();
  v214 = v418;

  v216 = &v214[v213[158]];
  v217 = &v356;
  swift_beginAccess();
  v127 = v216;
  v128 = v317;
  v129 = v216[1];
  *v216 = v215;
  v127[1] = v128;

  swift_endAccess();
  v219 = v418;

  v221 = &v219[v218[156]];
  v222 = &v355;
  swift_beginAccess();
  v130 = v221;
  v131 = v316;
  v132 = v221[1];
  *v221 = v220;
  v130[1] = v131;

  swift_endAccess();
  v224 = v418;

  v226 = &v224[v223[137]];
  v227 = &v354;
  swift_beginAccess();
  v133 = v226;
  v134 = v315;
  v135 = v226[1];
  *v226 = v225;
  v133[1] = v134;

  swift_endAccess();
  v229 = v418;

  v231 = &v229[v228[149]];
  v232 = &v353;
  swift_beginAccess();
  v136 = v231;
  v137 = v314;
  v138 = v231[1];
  *v231 = v230;
  v136[1] = v137;

  swift_endAccess();
  v234 = v418;

  v236 = &v234[v233[150]];
  v237 = &v352;
  swift_beginAccess();
  v139 = v236;
  v140 = v313;
  v141 = v236[1];
  *v236 = v235;
  v139[1] = v140;

  swift_endAccess();
  v239 = v418;
  sub_1D1FE94C4(v312, v276);
  v240 = &v239[v238[142]];
  v241 = &v351;
  swift_beginAccess();
  sub_1D205B868(v276, v240);
  swift_endAccess();
  v243 = v418;
  sub_1D1FE94C4(v311, v276);
  v244 = &v243[v242[140]];
  v245 = &v350;
  swift_beginAccess();
  sub_1D205B868(v276, v244);
  swift_endAccess();
  v247 = v418;
  sub_1D1FE94C4(v310, v276);
  v248 = &v247[v246[148]];
  v249 = &v349;
  swift_beginAccess();
  sub_1D205B868(v276, v248);
  swift_endAccess();
  v251 = &v418[v250[159]];
  v253 = &v348;
  swift_beginAccess();
  *v251 = v252;
  swift_endAccess();
  v255 = v418;
  sub_1D1FE94C4(v309, v276);
  v256 = &v255[v254[141]];
  v257 = &v347;
  swift_beginAccess();
  sub_1D205B868(v276, v256);
  swift_endAccess();
  v259 = v418;
  sub_1D1FE94C4(v308, v276);
  v260 = &v259[v258[139]];
  v261 = &v346;
  swift_beginAccess();
  sub_1D205B868(v276, v260);
  swift_endAccess();
  v263 = v418;
  sub_1D1FE94C4(v307, v276);
  v264 = &v263[v262[138]];
  v265 = &v345;
  swift_beginAccess();
  sub_1D205B868(v276, v264);
  swift_endAccess();
  v267 = v418;
  sub_1D1FE94C4(v306, v276);
  v268 = &v267[v266[143]];
  v269 = &v344;
  swift_beginAccess();
  sub_1D205B868(v276, v268);
  swift_endAccess();
  v271 = v418;
  sub_1D1FE94C4(v305, v276);
  v272 = &v271[v270[147]];
  v273 = &v343;
  swift_beginAccess();
  sub_1D205B868(v276, v272);
  swift_endAccess();
  v275 = v418;
  sub_1D1FE94C4(v304, v276);
  v277 = &v275[v274[155]];
  v278 = &v342;
  swift_beginAccess();
  sub_1D205B868(v276, v277);
  swift_endAccess();
  v280 = &v418[v279[157]];
  v282 = &v341;
  swift_beginAccess();
  *v280 = v281;
  swift_endAccess();
  v284 = v418;

  v285 = &v284[v283[151]];
  v286 = &v340;
  swift_beginAccess();
  v142 = *v285;
  *v285 = v303;

  swift_endAccess();
  v291 = &v418[v287[131]];
  v292 = &v339;
  swift_beginAccess();
  v143 = v289;
  v144 = v290;
  v145 = v291;
  *v291 = v288;
  *(v145 + 4) = v143 & 1 & v144;
  swift_endAccess();
  v294 = v418;
  sub_1D2063B8C(v302, v297);
  v298 = &v294[v293[154]];
  v299 = &v338;
  swift_beginAccess();
  sub_1D2063D98(v297, v298);
  swift_endAccess();
  v301 = v418;
  v146 = type metadata accessor for EKEnergySite();
  v337.receiver = v301;
  v337.super_class = v146;
  v336 = objc_msgSendSuper2(&v337, sel_init);
  MEMORY[0x1E69E5928](v336);
  v418 = v336;
  sub_1D2063FC0(v302);

  sub_1D1FF1A9C(v304);
  sub_1D1FF1A9C(v305);
  sub_1D1FF1A9C(v306);
  sub_1D1FF1A9C(v307);
  sub_1D1FF1A9C(v308);
  sub_1D1FF1A9C(v309);
  sub_1D1FF1A9C(v310);
  sub_1D1FF1A9C(v311);
  sub_1D1FF1A9C(v312);

  sub_1D1FD0094(v319, v320);
  sub_1D1FD0094(v321, v322);
  sub_1D1FD0094(v323, v324);
  sub_1D2018A44(v325);

  MEMORY[0x1E69E5920](v331);

  MEMORY[0x1E69E5920](v418);
  return v336;
}

uint64_t type metadata accessor for EKEnergySite()
{
  v1 = qword_1EE083230;
  if (!qword_1EE083230)
  {
    return swift_getSingletonMetadata();
  }

  return v1;
}

id EKEnergySite.init(coder:)(void *a1)
{
  v453 = a1;
  v488 = 0;
  v603 = 0;
  v602 = 0;
  v601 = 0;
  v600 = 0;
  v599 = 0;
  v598 = 0;
  v597 = 0;
  v596 = 0;
  v595 = 0;
  v594 = 0;
  v592 = 0;
  v591 = 0;
  v590 = 0;
  v589 = 0;
  v588 = 0;
  v587 = 0;
  v586 = 0;
  v585 = 0;
  v584 = 0;
  v583 = 0;
  v582 = 0;
  v581 = 0;
  v580 = 0;
  v579 = 0;
  v578 = 0;
  v577 = 0;
  v576 = 0;
  v575 = 0;
  v574 = 0;
  v573 = 0;
  v454 = 0;
  v571 = 0;
  v566 = 0;
  v565 = 0;
  v560 = 0;
  v559 = 0;
  v554 = 0;
  v553 = 0;
  v552 = 0;
  v551 = 0;
  v550 = 0;
  v549 = 0;
  v548 = 0;
  v547 = 0;
  v546 = 0;
  v545 = 0;
  v544 = 0;
  v543 = 0;
  v542 = 0;
  v541 = 0;
  v540 = 0;
  v537 = 0;
  v536 = 0;
  v535 = 0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BF318, &unk_1D2091A80);
  v455 = (*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v2 - 8);
  v456 = &v130 - v455;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEDF0, &unk_1D208F480);
  v457 = (*(*(v3 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v3 - 8);
  v458 = &v130 - v457;
  v484 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BF180, &qword_1D208E5C0) - 8) + 64);
  MEMORY[0x1EEE9AC00](v488);
  v486 = (v484 + 15) & 0xFFFFFFFFFFFFFFF0;
  v459 = &v130 - v486;
  MEMORY[0x1EEE9AC00](v4);
  v460 = &v130 - v486;
  MEMORY[0x1EEE9AC00](v5);
  v461 = &v130 - v486;
  MEMORY[0x1EEE9AC00](v6);
  v462 = &v130 - v486;
  MEMORY[0x1EEE9AC00](v7);
  v463 = &v130 - v486;
  MEMORY[0x1EEE9AC00](v8);
  v464 = &v130 - v486;
  MEMORY[0x1EEE9AC00](v9);
  v465 = &v130 - v486;
  MEMORY[0x1EEE9AC00](v10);
  v466 = &v130 - v486;
  MEMORY[0x1EEE9AC00](v11);
  v467 = &v130 - v486;
  MEMORY[0x1EEE9AC00](v12);
  v468 = &v130 - v486;
  MEMORY[0x1EEE9AC00](v13);
  v469 = &v130 - v486;
  v603 = &v130 - v486;
  MEMORY[0x1EEE9AC00](v14);
  v470 = &v130 - v486;
  MEMORY[0x1EEE9AC00](v15);
  v471 = &v130 - v486;
  v602 = &v130 - v486;
  MEMORY[0x1EEE9AC00](v16);
  v472 = &v130 - v486;
  MEMORY[0x1EEE9AC00](v17);
  v473 = &v130 - v486;
  v601 = &v130 - v486;
  MEMORY[0x1EEE9AC00](v18);
  v474 = &v130 - v486;
  MEMORY[0x1EEE9AC00](v19);
  v475 = &v130 - v486;
  v600 = &v130 - v486;
  MEMORY[0x1EEE9AC00](v20);
  v476 = &v130 - v486;
  MEMORY[0x1EEE9AC00](v21);
  v477 = &v130 - v486;
  v599 = &v130 - v486;
  MEMORY[0x1EEE9AC00](v22);
  v478 = &v130 - v486;
  MEMORY[0x1EEE9AC00](v23);
  v479 = &v130 - v486;
  v598 = &v130 - v486;
  MEMORY[0x1EEE9AC00](v24);
  v480 = &v130 - v486;
  MEMORY[0x1EEE9AC00](v25);
  v481 = &v130 - v486;
  v597 = &v130 - v486;
  MEMORY[0x1EEE9AC00](v26);
  v482 = &v130 - v486;
  MEMORY[0x1EEE9AC00](v27);
  v483 = &v130 - v486;
  v596 = &v130 - v486;
  MEMORY[0x1EEE9AC00](v28);
  v485 = &v130 - v486;
  MEMORY[0x1EEE9AC00](v29);
  v487 = &v130 - v486;
  v595 = &v130 - v486;
  v489 = type metadata accessor for EnergySitePayload.CurrentRatePlan();
  v490 = *(v489 - 8);
  v491 = v490;
  v492 = *(v490 + 64);
  MEMORY[0x1EEE9AC00](v488);
  v493 = &v130 - ((v492 + 15) & 0xFFFFFFFFFFFFFFF0);
  v594 = v493;
  v592 = a1;
  v593 = v30;
  v495 = sub_1D2068D7C();
  v494 = v495;
  v496 = sub_1D2068DE0();
  v497 = v31;
  v499 = sub_1D208C89C();
  v498 = v499;

  if (v499)
  {
    v452 = v498;
  }

  else
  {
    LODWORD(v128) = 0;
    v127 = 153;
    LOBYTE(v126) = 2;
    sub_1D208CA2C();
    __break(1u);
  }

  v445 = v452;
  v446 = sub_1D208C5CC();
  v447 = v32;
  v590 = v446;
  v591 = v32;

  v448 = sub_1D2068DE0();
  v449 = v33;
  v451 = sub_1D208C89C();
  v450 = v451;

  if (v451)
  {
    v444 = v450;
  }

  else
  {
    LODWORD(v128) = 0;
    v127 = 157;
    LOBYTE(v126) = 2;
    sub_1D208CA2C();
    __break(1u);
  }

  v437 = v444;
  v438 = sub_1D208C5CC();
  v439 = v34;
  v588 = v438;
  v589 = v34;

  v440 = sub_1D2068DE0();
  v441 = v35;
  v443 = sub_1D208C89C();
  v442 = v443;

  if (v443)
  {
    v436 = v442;
  }

  else
  {
    LODWORD(v128) = 0;
    v127 = 161;
    LOBYTE(v126) = 2;
    sub_1D208CA2C();
    __break(1u);
  }

  v429 = v436;
  v430 = sub_1D208C5CC();
  v431 = v36;
  v586 = v430;
  v587 = v36;

  v432 = sub_1D2068DE0();
  v433 = v37;
  v435 = sub_1D208C89C();
  v434 = v435;

  if (v435)
  {
    v428 = v434;
  }

  else
  {
    LODWORD(v128) = 0;
    v127 = 165;
    LOBYTE(v126) = 2;
    sub_1D208CA2C();
    __break(1u);
  }

  v416 = v428;
  v417 = sub_1D208C5CC();
  v418 = v38;
  v584 = v417;
  v585 = v38;

  v419 = sub_1D1FE2B54();
  v420 = sub_1D2068DE0();
  v421 = v39;
  v423 = sub_1D208C89C();
  v422 = v423;

  v583 = v423;
  v424 = sub_1D2068DE0();
  v425 = v40;
  v427 = sub_1D208C89C();
  v426 = v427;

  if (v427)
  {
    v415 = v426;
    v412 = v426;
    v41 = v426;
    sub_1D20699A0();
    sub_1D208CB7C();

    if (v501)
    {
      v410 = v500;
      v411 = v501;
    }

    else
    {
      v410 = 0;
      v411 = 0;
    }

    v413 = v410;
    v414 = v411;
  }

  else
  {
    v413 = 0;
    v414 = 0;
  }

  v404 = v414;
  v405 = v413;
  v581 = v413;
  v582 = v414;
  v406 = sub_1D2068DE0();
  v407 = v42;
  v409 = sub_1D208C89C();
  v408 = v409;

  if (v409)
  {
    v403 = v408;
    v400 = v408;
    v43 = v408;
    sub_1D20699A0();
    sub_1D208CB7C();

    if (v503)
    {
      v398 = v502;
      v399 = v503;
    }

    else
    {
      v398 = 0;
      v399 = 0;
    }

    v401 = v398;
    v402 = v399;
  }

  else
  {
    v401 = 0;
    v402 = 0;
  }

  v392 = v402;
  v393 = v401;
  v579 = v401;
  v580 = v402;
  v394 = sub_1D2068DE0();
  v395 = v44;
  v397 = sub_1D208C89C();
  v396 = v397;

  if (v397)
  {
    v391 = v396;
    v388 = v396;
    v45 = v396;
    sub_1D20699A0();
    sub_1D208CB7C();

    if (v505)
    {
      v386 = v504;
      v387 = v505;
    }

    else
    {
      v386 = 0;
      v387 = 0;
    }

    v389 = v386;
    v390 = v387;
  }

  else
  {
    v389 = 0;
    v390 = 0;
  }

  v380 = v390;
  v381 = v389;
  v577 = v389;
  v578 = v390;
  v382 = sub_1D2068DE0();
  v383 = v46;
  v385 = sub_1D208C89C();
  v384 = v385;

  if (v385)
  {
    v379 = v384;
    v376 = v384;
    v47 = v384;
    sub_1D20699A0();
    sub_1D208CB7C();

    if (v507)
    {
      v374 = v506;
      v375 = v507;
    }

    else
    {
      v374 = 0;
      v375 = 0;
    }

    v377 = v374;
    v378 = v375;
  }

  else
  {
    v377 = 0;
    v378 = 0;
  }

  v368 = v378;
  v369 = v377;
  v575 = v377;
  v576 = v378;
  v370 = sub_1D2068DE0();
  v371 = v48;
  v373 = sub_1D208C89C();
  v372 = v373;

  if (v373)
  {
    v367 = v372;
    v364 = v372;
    v49 = v372;
    sub_1D20699A0();
    sub_1D208CB7C();

    if (v509)
    {
      v362 = v508;
      v363 = v509;
    }

    else
    {
      v362 = 0;
      v363 = 0;
    }

    v365 = v362;
    v366 = v363;
  }

  else
  {
    v365 = 0;
    v366 = 0;
  }

  v50 = v454;
  v357 = v366;
  v358 = v365;
  v573 = v365;
  v574 = v366;
  EnergySitePayload.CurrentRatePlan.init()(v493);
  v51 = v453;
  v359 = &v130;
  MEMORY[0x1EEE9AC00](&v130);
  v360 = &v126;
  v128 = v453;
  v129 = v52;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6BF320, "D1");
  sub_1D1FEA670(sub_1D20696AC, v53, MEMORY[0x1E69E7CA8] + 8, &v572, MEMORY[0x1E69E7CA8]);
  v361 = v50;
  if (v50)
  {
    v132 = 0;
    v131 = v572;

    v125 = v131;
    v571 = v131;

    v356 = v132;
  }

  else
  {

    v356 = v361;
  }

  v351 = sub_1D200A888();
  v350 = v351;
  v352 = sub_1D2068DE0();
  v353 = v54;
  v355 = sub_1D208C89C();
  v354 = v355;

  if (v355)
  {
    v349 = v354;
    v346 = v354;
    v55 = v354;
    sub_1D2069A18();
    sub_1D208CB7C();

    if (v511 >> 60 == 15)
    {
      v344 = 0;
      v345 = 0xF000000000000000;
    }

    else
    {
      v344 = v510;
      v345 = v511;
    }

    v347 = v344;
    v348 = v345;
  }

  else
  {
    v347 = 0;
    v348 = 0xF000000000000000;
  }

  v567 = v347;
  v568 = v348;
  if (v348 >> 60 == 15)
  {
    v569 = sub_1D208BD4C();
    v570 = v56;
    if (v568 >> 60 != 15)
    {
      sub_1D2069718(&v567);
    }
  }

  else
  {
    v569 = v567;
    v570 = v568;
  }

  v338 = v569;
  v339 = v570;
  v565 = v569;
  v566 = v570;
  v340 = sub_1D2068DE0();
  v341 = v57;
  v343 = sub_1D208C89C();
  v342 = v343;

  if (v343)
  {
    v337 = v342;
    v334 = v342;
    v58 = v342;
    sub_1D2069A18();
    sub_1D208CB7C();

    if (v513 >> 60 == 15)
    {
      v332 = 0;
      v333 = 0xF000000000000000;
    }

    else
    {
      v332 = v512;
      v333 = v513;
    }

    v335 = v332;
    v336 = v333;
  }

  else
  {
    v335 = 0;
    v336 = 0xF000000000000000;
  }

  v561 = v335;
  v562 = v336;
  if (v336 >> 60 == 15)
  {
    v563 = sub_1D208BD4C();
    v564 = v59;
    if (v562 >> 60 != 15)
    {
      sub_1D2069718(&v561);
    }
  }

  else
  {
    v563 = v561;
    v564 = v562;
  }

  v326 = v563;
  v327 = v564;
  v559 = v563;
  v560 = v564;
  v328 = sub_1D2068DE0();
  v329 = v60;
  v331 = sub_1D208C89C();
  v330 = v331;

  if (v331)
  {
    v325 = v330;
    v322 = v330;
    v61 = v330;
    sub_1D2069A18();
    sub_1D208CB7C();

    if (v515 >> 60 == 15)
    {
      v320 = 0;
      v321 = 0xF000000000000000;
    }

    else
    {
      v320 = v514;
      v321 = v515;
    }

    v323 = v320;
    v324 = v321;
  }

  else
  {
    v323 = 0;
    v324 = 0xF000000000000000;
  }

  v555 = v323;
  v556 = v324;
  if (v324 >> 60 == 15)
  {
    v557 = sub_1D208BD4C();
    v558 = v62;
    if (v556 >> 60 != 15)
    {
      sub_1D2069718(&v555);
    }
  }

  else
  {
    v557 = v555;
    v558 = v556;
  }

  v314 = v557;
  v315 = v558;
  v553 = v557;
  v554 = v558;
  v316 = sub_1D2068DE0();
  v317 = v63;
  v319 = sub_1D208C89C();
  v318 = v319;

  if (v319)
  {
    v313 = v318;
    v310 = v318;
    v64 = v318;
    sub_1D20699A0();
    sub_1D208CB7C();

    if (v517)
    {
      v308 = v516;
      v309 = v517;
    }

    else
    {
      v308 = 0;
      v309 = 0;
    }

    v311 = v308;
    v312 = v309;
  }

  else
  {
    v311 = 0;
    v312 = 0;
  }

  v302 = v312;
  v303 = v311;
  v551 = v311;
  v552 = v312;
  v304 = sub_1D2068DE0();
  v305 = v65;
  v307 = sub_1D208C89C();
  v306 = v307;

  if (v307)
  {
    v301 = v306;
    v298 = v306;
    v66 = v306;
    sub_1D20699A0();
    sub_1D208CB7C();

    if (v519)
    {
      v296 = v518;
      v297 = v519;
    }

    else
    {
      v296 = 0;
      v297 = 0;
    }

    v299 = v296;
    v300 = v297;
  }

  else
  {
    v299 = 0;
    v300 = 0;
  }

  v290 = v300;
  v291 = v299;
  v549 = v299;
  v550 = v300;
  v292 = sub_1D2068DE0();
  v293 = v67;
  v295 = sub_1D208C89C();
  v294 = v295;

  if (v295)
  {
    v289 = v294;
    v286 = v294;
    v68 = v294;
    sub_1D20699A0();
    sub_1D208CB7C();

    if (v521)
    {
      v284 = v520;
      v285 = v521;
    }

    else
    {
      v284 = 0;
      v285 = 0;
    }

    v287 = v284;
    v288 = v285;
  }

  else
  {
    v287 = 0;
    v288 = 0;
  }

  v278 = v288;
  v279 = v287;
  v547 = v287;
  v548 = v288;
  v280 = sub_1D2068DE0();
  v281 = v69;
  v283 = sub_1D208C89C();
  v282 = v283;

  if (v283)
  {
    v277 = v282;
    v274 = v282;
    v70 = v282;
    sub_1D20699A0();
    sub_1D208CB7C();

    if (v523)
    {
      v272 = v522;
      v273 = v523;
    }

    else
    {
      v272 = 0;
      v273 = 0;
    }

    v275 = v272;
    v276 = v273;
  }

  else
  {
    v275 = 0;
    v276 = 0;
  }

  v266 = v276;
  v267 = v275;
  v545 = v275;
  v546 = v276;
  v268 = sub_1D2068DE0();
  v269 = v71;
  v271 = sub_1D208C89C();
  v270 = v271;

  if (v271)
  {
    v265 = v270;
    v262 = v270;
    v72 = v270;
    sub_1D20699A0();
    sub_1D208CB7C();

    if (v525)
    {
      v260 = v524;
      v261 = v525;
    }

    else
    {
      v260 = 0;
      v261 = 0;
    }

    v263 = v260;
    v264 = v261;
  }

  else
  {
    v263 = 0;
    v264 = 0;
  }

  v254 = v264;
  v255 = v263;
  v543 = v263;
  v544 = v264;
  v256 = sub_1D2068DE0();
  v257 = v73;
  v259 = sub_1D208C89C();
  v258 = v259;

  if (v259)
  {
    v253 = v258;
    v250 = v258;
    v74 = v258;
    sub_1D20699A0();
    sub_1D208CB7C();

    if (v527)
    {
      v248 = v526;
      v249 = v527;
    }

    else
    {
      v248 = 0;
      v249 = 0;
    }

    v251 = v248;
    v252 = v249;
  }

  else
  {
    v251 = 0;
    v252 = 0;
  }

  v240 = v252;
  v241 = v251;
  v541 = v251;
  v542 = v252;
  v243 = sub_1D2069768();
  v242 = v243;
  v244 = sub_1D2068DE0();
  v245 = v75;
  v247 = sub_1D208C89C();
  v246 = v247;

  if (v247)
  {
    v239 = v246;
    v236 = v246;
    v237 = sub_1D208BF1C();
    v235 = v237;
    v77 = v236;
    sub_1D2069920();
    sub_1D208CB7C();

    v238 = *(v237 - 8);
    if ((*(v238 + 48))(v485, 1) == 1)
    {
      (*(v238 + 56))(v487, 1, 1, v235);
    }

    else
    {
      (*(v238 + 32))(v487, v485, v235);
      (*(v238 + 56))(v487, 0, 1, v235);
    }
  }

  else
  {
    v76 = sub_1D208BF1C();
    (*(*(v76 - 8) + 56))(v487, 1);
  }

  v231 = sub_1D2068DE0();
  v232 = v78;
  v234 = sub_1D208C89C();
  v233 = v234;

  if (v234)
  {
    v230 = v233;
    v227 = v233;
    v228 = sub_1D208BF1C();
    v226 = v228;
    v80 = v227;
    sub_1D2069920();
    sub_1D208CB7C();

    v229 = *(v228 - 8);
    if ((*(v229 + 48))(v482, 1) == 1)
    {
      (*(v229 + 56))(v483, 1, 1, v226);
    }

    else
    {
      (*(v229 + 32))(v483, v482, v226);
      (*(v229 + 56))(v483, 0, 1, v226);
    }
  }

  else
  {
    v79 = sub_1D208BF1C();
    (*(*(v79 - 8) + 56))(v483, 1);
  }

  v222 = sub_1D2068DE0();
  v223 = v81;
  v225 = sub_1D208C89C();
  v224 = v225;

  if (v225)
  {
    v221 = v224;
    v218 = v224;
    v219 = sub_1D208BF1C();
    v217 = v219;
    v83 = v218;
    sub_1D2069920();
    sub_1D208CB7C();

    v220 = *(v219 - 8);
    if ((*(v220 + 48))(v480, 1) == 1)
    {
      (*(v220 + 56))(v481, 1, 1, v217);
    }

    else
    {
      (*(v220 + 32))(v481, v480, v217);
      (*(v220 + 56))(v481, 0, 1, v217);
    }
  }

  else
  {
    v82 = sub_1D208BF1C();
    (*(*(v82 - 8) + 56))(v481, 1);
  }

  v84 = v453;
  sub_1D2068DE0();
  v209 = v85;
  v210 = sub_1D208C5BC();

  v212 = [v84 decodeBoolForKey_];
  v211 = v212;

  v540 = v212;
  v213 = sub_1D2068DE0();
  v214 = v86;
  v216 = sub_1D208C89C();
  v215 = v216;

  if (v216)
  {
    v208 = v215;
    v205 = v215;
    v206 = sub_1D208BF1C();
    v204 = v206;
    v88 = v205;
    sub_1D2069920();
    sub_1D208CB7C();

    v207 = *(v206 - 8);
    if ((*(v207 + 48))(v478, 1) == 1)
    {
      (*(v207 + 56))(v479, 1, 1, v204);
    }

    else
    {
      (*(v207 + 32))(v479, v478, v204);
      (*(v207 + 56))(v479, 0, 1, v204);
    }
  }

  else
  {
    v87 = sub_1D208BF1C();
    (*(*(v87 - 8) + 56))(v479, 1);
  }

  v200 = sub_1D2068DE0();
  v201 = v89;
  v203 = sub_1D208C89C();
  v202 = v203;

  if (v203)
  {
    v199 = v202;
    v196 = v202;
    v197 = sub_1D208BF1C();
    v195 = v197;
    v91 = v196;
    sub_1D2069920();
    sub_1D208CB7C();

    v198 = *(v197 - 8);
    if ((*(v198 + 48))(v476, 1) == 1)
    {
      (*(v198 + 56))(v477, 1, 1, v195);
    }

    else
    {
      (*(v198 + 32))(v477, v476, v195);
      (*(v198 + 56))(v477, 0, 1, v195);
    }
  }

  else
  {
    v90 = sub_1D208BF1C();
    (*(*(v90 - 8) + 56))(v477, 1);
  }

  v191 = sub_1D2068DE0();
  v192 = v92;
  v194 = sub_1D208C89C();
  v193 = v194;

  if (v194)
  {
    v190 = v193;
    v187 = v193;
    v188 = sub_1D208BF1C();
    v186 = v188;
    v94 = v187;
    sub_1D2069920();
    sub_1D208CB7C();

    v189 = *(v188 - 8);
    if ((*(v189 + 48))(v474, 1) == 1)
    {
      (*(v189 + 56))(v475, 1, 1, v186);
    }

    else
    {
      (*(v189 + 32))(v475, v474, v186);
      (*(v189 + 56))(v475, 0, 1, v186);
    }
  }

  else
  {
    v93 = sub_1D208BF1C();
    (*(*(v93 - 8) + 56))(v475, 1);
  }

  v182 = sub_1D2068DE0();
  v183 = v95;
  v185 = sub_1D208C89C();
  v184 = v185;

  if (v185)
  {
    v181 = v184;
    v178 = v184;
    v179 = sub_1D208BF1C();
    v177 = v179;
    v97 = v178;
    sub_1D2069920();
    sub_1D208CB7C();

    v180 = *(v179 - 8);
    if ((*(v180 + 48))(v472, 1) == 1)
    {
      (*(v180 + 56))(v473, 1, 1, v177);
    }

    else
    {
      (*(v180 + 32))(v473, v472, v177);
      (*(v180 + 56))(v473, 0, 1, v177);
    }
  }

  else
  {
    v96 = sub_1D208BF1C();
    (*(*(v96 - 8) + 56))(v473, 1);
  }

  v173 = sub_1D2068DE0();
  v174 = v98;
  v176 = sub_1D208C89C();
  v175 = v176;

  if (v176)
  {
    v172 = v175;
    v169 = v175;
    v170 = sub_1D208BF1C();
    v168 = v170;
    v100 = v169;
    sub_1D2069920();
    sub_1D208CB7C();

    v171 = *(v170 - 8);
    if ((*(v171 + 48))(v470, 1) == 1)
    {
      (*(v171 + 56))(v471, 1, 1, v168);
    }

    else
    {
      (*(v171 + 32))(v471, v470, v168);
      (*(v171 + 56))(v471, 0, 1, v168);
    }
  }

  else
  {
    v99 = sub_1D208BF1C();
    (*(*(v99 - 8) + 56))(v471, 1);
  }

  v164 = sub_1D2068DE0();
  v165 = v101;
  v167 = sub_1D208C89C();
  v166 = v167;

  if (v167)
  {
    v163 = v166;
    v160 = v166;
    v161 = sub_1D208BF1C();
    v159 = v161;
    v103 = v160;
    sub_1D2069920();
    sub_1D208CB7C();

    v162 = *(v161 - 8);
    if ((*(v162 + 48))(v468, 1) == 1)
    {
      (*(v162 + 56))(v469, 1, 1, v159);
    }

    else
    {
      (*(v162 + 32))(v469, v468, v159);
      (*(v162 + 56))(v469, 0, 1, v159);
    }
  }

  else
  {
    v102 = sub_1D208BF1C();
    (*(*(v102 - 8) + 56))(v469, 1);
  }

  v154 = sub_1D20697CC();
  v153 = v154;
  v155 = sub_1D2068DE0();
  v156 = v104;
  v158 = sub_1D208C89C();
  v157 = v158;

  if (v158)
  {
    v152 = v157;
    v150 = v157;
    v105 = v157;
    sub_1D20698A8();
    sub_1D208CB7C();

    if (v529)
    {
      v149 = 0x100000000;
    }

    else
    {
      v530 = v528;
      v149 = v528;
    }

    v151 = v149;
  }

  else
  {
    v151 = 0x100000000;
  }

  v538 = v151;
  v539 = BYTE4(v151) & 1;
  if ((v151 & 0x100000000) != 0)
  {
    v148 = 3;
  }

  else
  {
    v148 = v538;
  }

  v143 = v148;
  v537 = v148;
  v144 = sub_1D2068DE0();
  v145 = v106;
  v147 = sub_1D208C89C();
  v146 = v147;

  if (v147)
  {
    v142 = v146;
    v140 = v146;
    v107 = v146;
    sub_1D2069830();
    sub_1D208CB7C();

    if (v532)
    {
      v139 = 0x100000000;
    }

    else
    {
      v533 = v531;
      v139 = v531;
    }

    v141 = v139;
  }

  else
  {
    v141 = 0x100000000;
  }

  v108 = v368;
  v109 = v357;
  v110 = v339;
  v111 = v338;
  v112 = v326;
  v113 = v369;
  v114 = v358;
  v115 = v458;
  v134 = v141;
  v535 = v141;
  v135 = BYTE4(v141) & 1;
  v536 = BYTE4(v141) & 1;
  ObjectType = swift_getObjectType();

  v117 = v422;

  sub_1D2018BA8(v493, v115);
  v118 = *(v491 + 56);
  v133 = 1;
  v118(v115, 0);
  sub_1D1FD0018(v111, v110);
  sub_1D1FD0018(v112, v327);
  sub_1D1FD0018(v314, v315);

  sub_1D1FE94C4(v487, v467);
  sub_1D1FE94C4(v483, v466);
  sub_1D1FE94C4(v481, v465);
  sub_1D1FE94C4(v479, v464);
  sub_1D1FE94C4(v477, v463);
  sub_1D1FE94C4(v475, v462);
  sub_1D1FE94C4(v473, v461);
  sub_1D1FE94C4(v471, v460);
  sub_1D1FE94C4(v469, v459);
  v136 = 0;
  v119 = sub_1D208C21C();
  (*(*(v119 - 8) + 56))(v456, v133);
  v120 = *(ObjectType + 1176);
  LODWORD(v534) = v134;
  BYTE4(v534) = v135;
  v138 = v120(v430, v431, v446, v447, v438, v439, v417, v418, v422, v405, v404, v393, v392, v381, v380, v113, v108, v114, v109, v115, v111, v110, v112, v327, v314, v315, v303, v302, v291, v290, v279, v278, v267, v266, v255, v254, v241, v240, v467, v466, v465, v211 & 1, v464, v463, v462, v461, v460, v459, v143, v136, v534, v456);
  v137 = v593;
  v121 = v138;
  v593 = v138;
  swift_getObjectType();
  v122 = *((*v137 & *MEMORY[0x1E69E7D40]) + 0x30);
  v123 = *((*v137 & *MEMORY[0x1E69E7D40]) + 0x34);
  swift_deallocPartialClassInstance();
  sub_1D1FF1A9C(v469);
  sub_1D1FF1A9C(v471);
  sub_1D1FF1A9C(v473);
  sub_1D1FF1A9C(v475);
  sub_1D1FF1A9C(v477);
  sub_1D1FF1A9C(v479);
  sub_1D1FF1A9C(v481);
  sub_1D1FF1A9C(v483);
  sub_1D1FF1A9C(v487);

  sub_1D1FD0094(v314, v315);
  sub_1D1FD0094(v326, v327);
  sub_1D1FD0094(v338, v339);
  sub_1D2018ECC(v493);

  return v138;
}

unint64_t sub_1D2068D7C()
{
  v2 = qword_1EE0829D0;
  if (!qword_1EE0829D0)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EE0829D0);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t sub_1D2069340(uint64_t a1, char *a2, void *a3)
{
  v33 = a2;
  v30 = a3;
  v46 = 0;
  v45 = 0;
  v43 = 0;
  v44 = 0;
  v34 = 0;
  v31 = (*(*(sub_1D208C23C() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v32 = &v9 - v31;
  v35 = type metadata accessor for EnergySitePayload.CurrentRatePlan();
  v36 = (*(*(v35 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v34);
  v37 = &v9 - v36;
  v46 = a1;
  v45 = v4;
  v38 = sub_1D200A888();
  v39 = sub_1D2068DE0();
  v40 = v5;
  v41 = sub_1D208C89C();

  result = v41;
  if (v41)
  {
    v28 = v41;
    v23 = v41;
    v24 = sub_1D208BD1C();
    v25 = v7;
    result = MEMORY[0x1E69E5920](v23);
    v26 = v24;
    v27 = v25;
  }

  else
  {
    v26 = 0;
    v27 = 0xF000000000000000;
  }

  v21 = v27;
  v22 = v26;
  if ((v27 & 0xF000000000000000) == 0xF000000000000000)
  {
    v18 = v29;
  }

  else
  {
    v19 = v22;
    v20 = v21;
    v12 = v21;
    v11 = v22;
    v43 = v22;
    v44 = v21;
    sub_1D1FD0018(v22, v21);
    v13 = v42;
    memset(v42, 0, sizeof(v42));
    v15 = sub_1D20275F8();
    v14 = sub_1D20696DC();
    sub_1D20696F4();
    v8 = v29;
    sub_1D208C35C();
    v16 = v8;
    v17 = v8;
    if (v8)
    {
      v10 = v17;
      result = sub_1D1FD0094(v11, v12);
      *v30 = v10;
    }

    else
    {
      sub_1D2071FFC(v37, v33);
      sub_1D1FD0094(v11, v12);
      result = v16;
      v18 = v16;
    }
  }

  return result;
}

uint64_t sub_1D2069718(uint64_t a1)
{
  if ((*(a1 + 8) & 0xF000000000000000) != 0xF000000000000000)
  {
    sub_1D1FD0094(*a1, *(a1 + 8));
  }

  return a1;
}

unint64_t sub_1D2069768()
{
  v2 = qword_1EE0829E0;
  if (!qword_1EE0829E0)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EE0829E0);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_1D20697CC()
{
  v2 = qword_1EE0829D8;
  if (!qword_1EE0829D8)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EE0829D8);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_1D2069830()
{
  v2 = qword_1EC6BF330;
  if (!qword_1EC6BF330)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC6BF330);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1D20698A8()
{
  v2 = qword_1EE0829C8;
  if (!qword_1EE0829C8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EE0829C8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1D2069920()
{
  v2 = qword_1EC6BF340;
  if (!qword_1EC6BF340)
  {
    sub_1D208BF1C();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC6BF340);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1D20699A0()
{
  v2 = qword_1EE082848;
  if (!qword_1EE082848)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EE082848);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1D2069A18()
{
  v2 = qword_1EE082A20;
  if (!qword_1EE082A20)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EE082A20);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1D2069AD4(uint64_t a1)
{
  MEMORY[0x1E69E5928](a1);
  MEMORY[0x1E69E5928](v1);
  sub_1D1FEA670(sub_1D206C76C, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7CA8] + 8, v4, v4);
  MEMORY[0x1E69E5920](a1);
  return (MEMORY[0x1E69E5920])();
}

uint64_t sub_1D2069BE0(void *a1, void *a2)
{
  v398 = a1;
  v395 = a2;
  v409 = 0;
  v408 = 0;
  v406 = 0;
  v407 = 0;
  v404 = 0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BF180, &qword_1D208E5C0);
  v355 = *(*(v3 - 8) + 64);
  v356 = (v355 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v3);
  v357 = &v136 - v356;
  v358 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v136 - v356);
  v359 = &v136 - v358;
  v360 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v136 - v358);
  v361 = &v136 - v360;
  v362 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v136 - v360);
  v363 = &v136 - v362;
  v364 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v136 - v362);
  v365 = &v136 - v364;
  v366 = (v8 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v136 - v364);
  v367 = &v136 - v366;
  v368 = (v9 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v136 - v366);
  v369 = &v136 - v368;
  v370 = (v10 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v136 - v368);
  v371 = &v136 - v370;
  v372 = type metadata accessor for EnergySitePayload.CurrentRatePlan();
  v373 = *(v372 - 8);
  v374 = v372 - 8;
  v375 = (*(v373 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v372);
  v376 = &v136 - v375;
  v377 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEDF0, &unk_1D208F480) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v11 = MEMORY[0x1EEE9AC00](v398);
  v378 = &v136 - v377;
  v409 = v12;
  v408 = a2;
  v13 = *a2;
  v401 = MEMORY[0x1E69E7D40];
  (*((v13 & *MEMORY[0x1E69E7D40]) + 0x180))(v11);
  v14 = v395;
  v379 = v15;
  v382 = sub_1D208C5BC();

  sub_1D2068DE0();
  v380 = v16;
  v381 = sub_1D208C5BC();

  v397 = 0x1FA948000uLL;
  [v398 0x1FA948F02];
  MEMORY[0x1E69E5920](v381);
  v17 = swift_unknownObjectRelease();
  (*((*v14 & *v401) + 0x168))(v17);
  v18 = v395;
  v383 = v19;
  v386 = sub_1D208C5BC();

  sub_1D2068DE0();
  v384 = v20;
  v385 = sub_1D208C5BC();

  [v398 (v397 + 3842)];
  MEMORY[0x1E69E5920](v385);
  v21 = swift_unknownObjectRelease();
  (*((*v18 & *v401) + 0x198))(v21);
  v22 = v395;
  v387 = v23;
  v390 = sub_1D208C5BC();

  sub_1D2068DE0();
  v388 = v24;
  v389 = sub_1D208C5BC();

  [v398 (v397 + 3842)];
  MEMORY[0x1E69E5920](v389);
  v25 = swift_unknownObjectRelease();
  (*((*v22 & *v401) + 0x1B0))(v25);
  v26 = v395;
  v391 = v27;
  v394 = sub_1D208C5BC();

  sub_1D2068DE0();
  v392 = v28;
  v393 = sub_1D208C5BC();

  [v398 (v397 + 3842)];
  MEMORY[0x1E69E5920](v393);
  v29 = swift_unknownObjectRelease();
  v30 = (*((*v26 & *v401) + 0x1C8))(v29);
  v31 = v395;
  v400 = v30;
  sub_1D2068DE0();
  v396 = v32;
  v399 = sub_1D208C5BC();

  [v398 (v397 + 3842)];
  MEMORY[0x1E69E5920](v399);
  v33 = swift_unknownObjectRelease();
  v402 = (*((*v31 & *v401) + 0x1E0))(v33);
  v403 = v34;
  if (v34)
  {
    v352 = v402;
    v353 = v403;
    v349 = v403;
    v350 = sub_1D208C5BC();

    v351 = v350;
  }

  else
  {
    v351 = 0;
  }

  v35 = v395;
  v346 = v351;
  sub_1D2068DE0();
  v344 = v36;
  v345 = sub_1D208C5BC();

  [v398 encodeObject:v346 forKey:v345];
  MEMORY[0x1E69E5920](v345);
  v37 = swift_unknownObjectRelease();
  v347 = (*((*v35 & *MEMORY[0x1E69E7D40]) + 0x1F8))(v37);
  v348 = v38;
  if (v38)
  {
    v342 = v347;
    v343 = v348;
    v339 = v348;
    v340 = sub_1D208C5BC();

    v341 = v340;
  }

  else
  {
    v341 = 0;
  }

  v39 = v395;
  v336 = v341;
  sub_1D2068DE0();
  v334 = v40;
  v335 = sub_1D208C5BC();

  [v398 encodeObject:v336 forKey:v335];
  MEMORY[0x1E69E5920](v335);
  v41 = swift_unknownObjectRelease();
  v337 = (*((*v39 & *MEMORY[0x1E69E7D40]) + 0x210))(v41);
  v338 = v42;
  if (v42)
  {
    v332 = v337;
    v333 = v338;
    v329 = v338;
    v330 = sub_1D208C5BC();

    v331 = v330;
  }

  else
  {
    v331 = 0;
  }

  v43 = v395;
  v326 = v331;
  sub_1D2068DE0();
  v324 = v44;
  v325 = sub_1D208C5BC();

  [v398 encodeObject:v326 forKey:v325];
  MEMORY[0x1E69E5920](v325);
  v45 = swift_unknownObjectRelease();
  v327 = (*((*v43 & *MEMORY[0x1E69E7D40]) + 0x228))(v45);
  v328 = v46;
  if (v46)
  {
    v322 = v327;
    v323 = v328;
    v319 = v328;
    v320 = sub_1D208C5BC();

    v321 = v320;
  }

  else
  {
    v321 = 0;
  }

  v47 = v395;
  v316 = v321;
  sub_1D2068DE0();
  v314 = v48;
  v315 = sub_1D208C5BC();

  [v398 encodeObject:v316 forKey:v315];
  MEMORY[0x1E69E5920](v315);
  v49 = swift_unknownObjectRelease();
  v317 = (*((*v47 & *MEMORY[0x1E69E7D40]) + 0x240))(v49);
  v318 = v50;
  if (v50)
  {
    v312 = v317;
    v313 = v318;
    v309 = v318;
    v310 = sub_1D208C5BC();

    v311 = v310;
  }

  else
  {
    v311 = 0;
  }

  v51 = v395;
  v307 = v311;
  sub_1D2068DE0();
  v305 = v52;
  v306 = sub_1D208C5BC();

  [v398 encodeObject:v307 forKey:v306];
  MEMORY[0x1E69E5920](v306);
  v53 = swift_unknownObjectRelease();
  (*((*v51 & *MEMORY[0x1E69E7D40]) + 0x258))(v53);
  if ((*(v373 + 48))(v378, 1, v372) == 0)
  {
    sub_1D2018BA8(v378, v376);
    sub_1D2018A44(v378);
    v297 = sub_1D20275F8();
    sub_1D20696DC();
    v54 = v354;
    v55 = sub_1D208C36C();
    v298 = v54;
    v299 = v55;
    v300 = v56;
    v301 = v54;
    if (v54)
    {
      v141 = v301;
      v142 = 0;
      sub_1D2018ECC(v376);
      v133 = v141;
      v404 = v141;
      v137 = sub_1D208BD4C();
      v136 = v134;
      v140 = sub_1D208BCFC();
      sub_1D1FD0094(v137, v136);
      sub_1D2068DE0();
      v138 = v135;
      v139 = sub_1D208C5BC();

      [v398 encodeObject:v140 forKey:v139];
      MEMORY[0x1E69E5920](v139);
      swift_unknownObjectRelease();

      v285 = v142;
      goto LABEL_24;
    }

    v296 = v300;
    v295 = v299;
    sub_1D2018ECC(v376);
    v302 = v295;
    v303 = v296;
    v304 = v298;
  }

  else
  {
    sub_1D2018A44(v378);
    v302 = 0;
    v303 = 0xF000000000000000;
    v304 = v354;
  }

  v292 = v304;
  v294 = v303;
  v293 = v302;
  v406 = v302;
  v407 = v303;
  sub_1D2071F6C(v302, v303);
  if ((v294 & 0xF000000000000000) == 0xF000000000000000)
  {
    v289 = 0;
  }

  else
  {
    v290 = v293;
    v291 = v294;
    v286 = v294;
    v287 = v293;
    v288 = sub_1D208BCFC();
    sub_1D1FD0094(v287, v286);
    v289 = v288;
  }

  v284 = v289;
  sub_1D2068DE0();
  v282 = v57;
  v283 = sub_1D208C5BC();

  [v398 encodeObject:v284 forKey:v283];
  MEMORY[0x1E69E5920](v283);
  swift_unknownObjectRelease();
  sub_1D2071FB4(v293, v294);
  v285 = v292;
LABEL_24:
  v262 = v285;
  v58 = *v395;
  v279 = MEMORY[0x1E69E7D40];
  v59 = (*((v58 & *MEMORY[0x1E69E7D40]) + 0x270))();
  v60 = v395;
  v264 = v59;
  v263 = v61;
  v267 = sub_1D208BCFC();
  sub_1D1FD0094(v264, v263);
  sub_1D2068DE0();
  v265 = v62;
  v266 = sub_1D208C5BC();

  v276 = 0x1FA948000uLL;
  [v398 0x1FA948F02];
  MEMORY[0x1E69E5920](v266);
  v63 = swift_unknownObjectRelease();
  v64 = (*((*v60 & *v279) + 0x288))(v63);
  v65 = v395;
  v269 = v64;
  v268 = v66;
  v272 = sub_1D208BCFC();
  sub_1D1FD0094(v269, v268);
  sub_1D2068DE0();
  v270 = v67;
  v271 = sub_1D208C5BC();

  [v398 (v276 + 3842)];
  MEMORY[0x1E69E5920](v271);
  v68 = swift_unknownObjectRelease();
  v69 = (*((*v65 & *v279) + 0x2A0))(v68);
  v70 = v395;
  v274 = v69;
  v273 = v71;
  v278 = sub_1D208BCFC();
  sub_1D1FD0094(v274, v273);
  sub_1D2068DE0();
  v275 = v72;
  v277 = sub_1D208C5BC();

  [v398 (v276 + 3842)];
  MEMORY[0x1E69E5920](v277);
  v73 = swift_unknownObjectRelease();
  v280 = (*((*v70 & *v279) + 0x2B8))(v73);
  v281 = v74;
  if (v74)
  {
    v260 = v280;
    v261 = v281;
    v257 = v281;
    v258 = sub_1D208C5BC();

    v259 = v258;
  }

  else
  {
    v259 = 0;
  }

  v75 = v395;
  v254 = v259;
  sub_1D2068DE0();
  v252 = v76;
  v253 = sub_1D208C5BC();

  [v398 encodeObject:v254 forKey:v253];
  MEMORY[0x1E69E5920](v253);
  v77 = swift_unknownObjectRelease();
  v255 = (*((*v75 & *MEMORY[0x1E69E7D40]) + 0x2D0))(v77);
  v256 = v78;
  if (v78)
  {
    v250 = v255;
    v251 = v256;
    v247 = v256;
    v248 = sub_1D208C5BC();

    v249 = v248;
  }

  else
  {
    v249 = 0;
  }

  v79 = v395;
  v244 = v249;
  sub_1D2068DE0();
  v242 = v80;
  v243 = sub_1D208C5BC();

  [v398 encodeObject:v244 forKey:v243];
  MEMORY[0x1E69E5920](v243);
  v81 = swift_unknownObjectRelease();
  v245 = (*((*v79 & *MEMORY[0x1E69E7D40]) + 0x2E8))(v81);
  v246 = v82;
  if (v82)
  {
    v240 = v245;
    v241 = v246;
    v237 = v246;
    v238 = sub_1D208C5BC();

    v239 = v238;
  }

  else
  {
    v239 = 0;
  }

  v83 = v395;
  v234 = v239;
  sub_1D2068DE0();
  v232 = v84;
  v233 = sub_1D208C5BC();

  [v398 encodeObject:v234 forKey:v233];
  MEMORY[0x1E69E5920](v233);
  v85 = swift_unknownObjectRelease();
  v235 = (*((*v83 & *MEMORY[0x1E69E7D40]) + 0x300))(v85);
  v236 = v86;
  if (v86)
  {
    v230 = v235;
    v231 = v236;
    v227 = v236;
    v228 = sub_1D208C5BC();

    v229 = v228;
  }

  else
  {
    v229 = 0;
  }

  v87 = v395;
  v224 = v229;
  sub_1D2068DE0();
  v222 = v88;
  v223 = sub_1D208C5BC();

  [v398 encodeObject:v224 forKey:v223];
  MEMORY[0x1E69E5920](v223);
  v89 = swift_unknownObjectRelease();
  v225 = (*((*v87 & *MEMORY[0x1E69E7D40]) + 0x318))(v89);
  v226 = v90;
  if (v90)
  {
    v220 = v225;
    v221 = v226;
    v217 = v226;
    v218 = sub_1D208C5BC();

    v219 = v218;
  }

  else
  {
    v219 = 0;
  }

  v91 = v395;
  v214 = v219;
  sub_1D2068DE0();
  v212 = v92;
  v213 = sub_1D208C5BC();

  [v398 encodeObject:v214 forKey:v213];
  MEMORY[0x1E69E5920](v213);
  v93 = swift_unknownObjectRelease();
  v215 = (*((*v91 & *MEMORY[0x1E69E7D40]) + 0x330))(v93);
  v216 = v94;
  if (v94)
  {
    v210 = v215;
    v211 = v216;
    v207 = v216;
    v208 = sub_1D208C5BC();

    v209 = v208;
  }

  else
  {
    v209 = 0;
  }

  v95 = v395;
  v201 = v209;
  sub_1D2068DE0();
  v199 = v96;
  v200 = sub_1D208C5BC();

  [v398 encodeObject:v201 forKey:v200];
  MEMORY[0x1E69E5920](v200);
  v97 = swift_unknownObjectRelease();
  (*((*v95 & *MEMORY[0x1E69E7D40]) + 0x348))(v97);
  v202 = sub_1D208BF1C();
  v203 = *(v202 - 8);
  v204 = v202 - 8;
  v205 = *(v203 + 48);
  v206 = v203 + 48;
  if (v205(v371, 1) == 1)
  {
    v198 = 0;
  }

  else
  {
    v197 = sub_1D208BE7C();
    (*(v203 + 8))(v371, v202);
    v198 = v197;
  }

  v98 = v395;
  v196 = v198;
  sub_1D2068DE0();
  v194 = v99;
  v195 = sub_1D208C5BC();

  [v398 encodeObject:v196 forKey:v195];
  MEMORY[0x1E69E5920](v195);
  v100 = swift_unknownObjectRelease();
  (*((*v98 & *MEMORY[0x1E69E7D40]) + 0x378))(v100);
  if ((v205)(v369, 1, v202) == 1)
  {
    v193 = 0;
  }

  else
  {
    v192 = sub_1D208BE7C();
    (*(v203 + 8))(v369, v202);
    v193 = v192;
  }

  v101 = v395;
  v186 = v193;
  sub_1D2068DE0();
  v184 = v102;
  v185 = sub_1D208C5BC();

  [v398 encodeObject:v186 forKey:v185];
  MEMORY[0x1E69E5920](v185);
  v103 = swift_unknownObjectRelease();
  v104 = *v101;
  v190 = MEMORY[0x1E69E7D40];
  v105 = (*((v104 & *MEMORY[0x1E69E7D40]) + 0x390))(v103);
  v106 = v395;
  v188 = v105;
  sub_1D2068DE0();
  v187 = v107;
  v189 = sub_1D208C5BC();

  v191 = 1;
  [v398 encodeBool:v188 & 1 forKey:v189];
  v108 = MEMORY[0x1E69E5920](v189);
  (*((*v106 & *v190) + 0x3A8))(v108);
  if ((v205)(v367, v191, v202) == 1)
  {
    v183 = 0;
  }

  else
  {
    v182 = sub_1D208BE7C();
    (*(v203 + 8))(v367, v202);
    v183 = v182;
  }

  v109 = v395;
  v181 = v183;
  sub_1D2068DE0();
  v179 = v110;
  v180 = sub_1D208C5BC();

  [v398 encodeObject:v181 forKey:v180];
  MEMORY[0x1E69E5920](v180);
  v111 = swift_unknownObjectRelease();
  (*((*v109 & *MEMORY[0x1E69E7D40]) + 0x3C0))(v111);
  if ((v205)(v365, 1, v202) == 1)
  {
    v178 = 0;
  }

  else
  {
    v177 = sub_1D208BE7C();
    (*(v203 + 8))(v365, v202);
    v178 = v177;
  }

  v112 = v395;
  v176 = v178;
  sub_1D2068DE0();
  v174 = v113;
  v175 = sub_1D208C5BC();

  [v398 encodeObject:v176 forKey:v175];
  MEMORY[0x1E69E5920](v175);
  v114 = swift_unknownObjectRelease();
  (*((*v112 & *MEMORY[0x1E69E7D40]) + 0x3D8))(v114);
  if ((v205)(v363, 1, v202) == 1)
  {
    v173 = 0;
  }

  else
  {
    v172 = sub_1D208BE7C();
    (*(v203 + 8))(v363, v202);
    v173 = v172;
  }

  v115 = v395;
  v171 = v173;
  sub_1D2068DE0();
  v169 = v116;
  v170 = sub_1D208C5BC();

  [v398 encodeObject:v171 forKey:v170];
  MEMORY[0x1E69E5920](v170);
  v117 = swift_unknownObjectRelease();
  (*((*v115 & *MEMORY[0x1E69E7D40]) + 0x3F0))(v117);
  if ((v205)(v361, 1, v202) == 1)
  {
    v168 = 0;
  }

  else
  {
    v167 = sub_1D208BE7C();
    (*(v203 + 8))(v361, v202);
    v168 = v167;
  }

  v118 = v395;
  v166 = v168;
  sub_1D2068DE0();
  v164 = v119;
  v165 = sub_1D208C5BC();

  [v398 encodeObject:v166 forKey:v165];
  MEMORY[0x1E69E5920](v165);
  v120 = swift_unknownObjectRelease();
  (*((*v118 & *MEMORY[0x1E69E7D40]) + 0x408))(v120);
  if ((v205)(v359, 1, v202) == 1)
  {
    v163 = 0;
  }

  else
  {
    v162 = sub_1D208BE7C();
    (*(v203 + 8))(v359, v202);
    v163 = v162;
  }

  v121 = v395;
  v161 = v163;
  sub_1D2068DE0();
  v159 = v122;
  v160 = sub_1D208C5BC();

  [v398 encodeObject:v161 forKey:v160];
  MEMORY[0x1E69E5920](v160);
  v123 = swift_unknownObjectRelease();
  (*((*v121 & *MEMORY[0x1E69E7D40]) + 0x420))(v123);
  if ((v205)(v357, 1, v202) == 1)
  {
    v158 = 0;
  }

  else
  {
    v157 = sub_1D208BE7C();
    (*(v203 + 8))(v357, v202);
    v158 = v157;
  }

  v124 = v395;
  v150 = v158;
  sub_1D2068DE0();
  v148 = v125;
  v149 = sub_1D208C5BC();

  v152 = 0x1FA948000uLL;
  [v398 0x1FA948F02];
  MEMORY[0x1E69E5920](v149);
  v126 = swift_unknownObjectRelease();
  v127 = *v124;
  v155 = MEMORY[0x1E69E7D40];
  (*((v127 & *MEMORY[0x1E69E7D40]) + 0x438))(v126);
  v128 = v395;
  v154 = sub_1D208CBBC();
  sub_1D2068DE0();
  v151 = v129;
  v153 = sub_1D208C5BC();

  [v398 (v152 + 3842)];
  MEMORY[0x1E69E5920](v153);
  v130 = swift_unknownObjectRelease();
  v405 = (*((*v128 & *v155) + 0x468))(v130);
  v156 = v405;
  if ((v405 & 0x100000000) != 0)
  {
    v146 = 0;
  }

  else
  {
    v147 = v156;
    v146 = sub_1D208CB8C();
  }

  v145 = v146;
  sub_1D2068DE0();
  v143 = v131;
  v144 = sub_1D208C5BC();

  [v398 encodeObject:v145 forKey:v144];
  MEMORY[0x1E69E5920](v144);
  return swift_unknownObjectRelease();
}

uint64_t sub_1D206C814(uint64_t a1, uint64_t a2)
{
  v102[2] = a1;
  v102[3] = a2;

  v102[0] = sub_1D208C64C();
  v102[1] = v2;
  v101[2] = a1;
  v101[3] = a2;
  v70 = MEMORY[0x1D38948D0](v102[0], v2, a1, a2);
  sub_1D1FE023C(v102);
  if (v70)
  {

    v103 = 0;
    v67 = 0;
LABEL_66:

    return v67;
  }

  v101[0] = sub_1D208C64C();
  v101[1] = v3;
  v100[2] = a1;
  v100[3] = a2;
  v66 = MEMORY[0x1D38948D0](v101[0], v3, a1, a2);
  sub_1D1FE023C(v101);
  if (v66)
  {

    v103 = 1;
    v67 = 1;
    goto LABEL_66;
  }

  v100[0] = sub_1D208C64C();
  v100[1] = v4;
  v99[2] = a1;
  v99[3] = a2;
  v65 = MEMORY[0x1D38948D0](v100[0], v4, a1, a2);
  sub_1D1FE023C(v100);
  if (v65)
  {

    v103 = 2;
    v67 = 2;
    goto LABEL_66;
  }

  v99[0] = sub_1D208C64C();
  v99[1] = v5;
  v98[2] = a1;
  v98[3] = a2;
  v64 = MEMORY[0x1D38948D0](v99[0], v5, a1, a2);
  sub_1D1FE023C(v99);
  if (v64)
  {

    v103 = 3;
    v67 = 3;
    goto LABEL_66;
  }

  v98[0] = sub_1D208C64C();
  v98[1] = v6;
  v97[2] = a1;
  v97[3] = a2;
  v63 = MEMORY[0x1D38948D0](v98[0], v6, a1, a2);
  sub_1D1FE023C(v98);
  if (v63)
  {

    v103 = 4;
    v67 = 4;
    goto LABEL_66;
  }

  v97[0] = sub_1D208C64C();
  v97[1] = v7;
  v96[2] = a1;
  v96[3] = a2;
  v62 = MEMORY[0x1D38948D0](v97[0], v7, a1, a2);
  sub_1D1FE023C(v97);
  if (v62)
  {

    v103 = 5;
    v67 = 5;
    goto LABEL_66;
  }

  v96[0] = sub_1D208C64C();
  v96[1] = v8;
  v95[2] = a1;
  v95[3] = a2;
  v61 = MEMORY[0x1D38948D0](v96[0], v8, a1, a2);
  sub_1D1FE023C(v96);
  if (v61)
  {

    v103 = 6;
    v67 = 6;
    goto LABEL_66;
  }

  v95[0] = sub_1D208C64C();
  v95[1] = v9;
  v94[2] = a1;
  v94[3] = a2;
  v60 = MEMORY[0x1D38948D0](v95[0], v9, a1, a2);
  sub_1D1FE023C(v95);
  if (v60)
  {

    v103 = 7;
    v67 = 7;
    goto LABEL_66;
  }

  v94[0] = sub_1D208C64C();
  v94[1] = v10;
  v93[2] = a1;
  v93[3] = a2;
  v59 = MEMORY[0x1D38948D0](v94[0], v10, a1, a2);
  sub_1D1FE023C(v94);
  if (v59)
  {

    v103 = 8;
    v67 = 8;
    goto LABEL_66;
  }

  v93[0] = sub_1D208C64C();
  v93[1] = v11;
  v92[2] = a1;
  v92[3] = a2;
  v58 = MEMORY[0x1D38948D0](v93[0], v11, a1, a2);
  sub_1D1FE023C(v93);
  if (v58)
  {

    v103 = 9;
    v67 = 9;
    goto LABEL_66;
  }

  v92[0] = sub_1D208C64C();
  v92[1] = v12;
  v91[2] = a1;
  v91[3] = a2;
  v57 = MEMORY[0x1D38948D0](v92[0], v12, a1, a2);
  sub_1D1FE023C(v92);
  if (v57)
  {

    v103 = 10;
    v67 = 10;
    goto LABEL_66;
  }

  v91[0] = sub_1D208C64C();
  v91[1] = v13;
  v90[2] = a1;
  v90[3] = a2;
  v56 = MEMORY[0x1D38948D0](v91[0], v13, a1, a2);
  sub_1D1FE023C(v91);
  if (v56)
  {

    v103 = 11;
    v67 = 11;
    goto LABEL_66;
  }

  v90[0] = sub_1D208C64C();
  v90[1] = v14;
  v89[2] = a1;
  v89[3] = a2;
  v55 = MEMORY[0x1D38948D0](v90[0], v14, a1, a2);
  sub_1D1FE023C(v90);
  if (v55)
  {

    v103 = 12;
    v67 = 12;
    goto LABEL_66;
  }

  v89[0] = sub_1D208C64C();
  v89[1] = v15;
  v88[2] = a1;
  v88[3] = a2;
  v54 = MEMORY[0x1D38948D0](v89[0], v15, a1, a2);
  sub_1D1FE023C(v89);
  if (v54)
  {

    v103 = 13;
    v67 = 13;
    goto LABEL_66;
  }

  v88[0] = sub_1D208C64C();
  v88[1] = v16;
  v87[2] = a1;
  v87[3] = a2;
  v53 = MEMORY[0x1D38948D0](v88[0], v16, a1, a2);
  sub_1D1FE023C(v88);
  if (v53)
  {

    v103 = 14;
    v67 = 14;
    goto LABEL_66;
  }

  v87[0] = sub_1D208C64C();
  v87[1] = v17;
  v86[2] = a1;
  v86[3] = a2;
  v52 = MEMORY[0x1D38948D0](v87[0], v17, a1, a2);
  sub_1D1FE023C(v87);
  if (v52)
  {

    v103 = 15;
    v67 = 15;
    goto LABEL_66;
  }

  v86[0] = sub_1D208C64C();
  v86[1] = v18;
  v85[2] = a1;
  v85[3] = a2;
  v51 = MEMORY[0x1D38948D0](v86[0], v18, a1, a2);
  sub_1D1FE023C(v86);
  if (v51)
  {

    v103 = 16;
    v67 = 16;
    goto LABEL_66;
  }

  v85[0] = sub_1D208C64C();
  v85[1] = v19;
  v84[2] = a1;
  v84[3] = a2;
  v50 = MEMORY[0x1D38948D0](v85[0], v19, a1, a2);
  sub_1D1FE023C(v85);
  if (v50)
  {

    v103 = 17;
    v67 = 17;
    goto LABEL_66;
  }

  v84[0] = sub_1D208C64C();
  v84[1] = v20;
  v83[2] = a1;
  v83[3] = a2;
  v49 = MEMORY[0x1D38948D0](v84[0], v20, a1, a2);
  sub_1D1FE023C(v84);
  if (v49)
  {

    v103 = 18;
    v67 = 18;
    goto LABEL_66;
  }

  v83[0] = sub_1D208C64C();
  v83[1] = v21;
  v82[2] = a1;
  v82[3] = a2;
  v48 = MEMORY[0x1D38948D0](v83[0], v21, a1, a2);
  sub_1D1FE023C(v83);
  if (v48)
  {

    v103 = 19;
    v67 = 19;
    goto LABEL_66;
  }

  v82[0] = sub_1D208C64C();
  v82[1] = v22;
  v81[2] = a1;
  v81[3] = a2;
  v47 = MEMORY[0x1D38948D0](v82[0], v22, a1, a2);
  sub_1D1FE023C(v82);
  if (v47)
  {

    v103 = 20;
    v67 = 20;
    goto LABEL_66;
  }

  v81[0] = sub_1D208C64C();
  v81[1] = v23;
  v80[2] = a1;
  v80[3] = a2;
  v46 = MEMORY[0x1D38948D0](v81[0], v23, a1, a2);
  sub_1D1FE023C(v81);
  if (v46)
  {

    v103 = 21;
    v67 = 21;
    goto LABEL_66;
  }

  v80[0] = sub_1D208C64C();
  v80[1] = v24;
  v79[2] = a1;
  v79[3] = a2;
  v45 = MEMORY[0x1D38948D0](v80[0], v24, a1, a2);
  sub_1D1FE023C(v80);
  if (v45)
  {

    v103 = 22;
    v67 = 22;
    goto LABEL_66;
  }

  v79[0] = sub_1D208C64C();
  v79[1] = v25;
  v78[2] = a1;
  v78[3] = a2;
  v44 = MEMORY[0x1D38948D0](v79[0], v25, a1, a2);
  sub_1D1FE023C(v79);
  if (v44)
  {

    v103 = 23;
    v67 = 23;
    goto LABEL_66;
  }

  v78[0] = sub_1D208C64C();
  v78[1] = v26;
  v77[2] = a1;
  v77[3] = a2;
  v43 = MEMORY[0x1D38948D0](v78[0], v26, a1, a2);
  sub_1D1FE023C(v78);
  if (v43)
  {

    v103 = 24;
    v67 = 24;
    goto LABEL_66;
  }

  v77[0] = sub_1D208C64C();
  v77[1] = v27;
  v76[2] = a1;
  v76[3] = a2;
  v42 = MEMORY[0x1D38948D0](v77[0], v27, a1, a2);
  sub_1D1FE023C(v77);
  if (v42)
  {

    v103 = 25;
    v67 = 25;
    goto LABEL_66;
  }

  v76[0] = sub_1D208C64C();
  v76[1] = v28;
  v75[2] = a1;
  v75[3] = a2;
  v41 = MEMORY[0x1D38948D0](v76[0], v28, a1, a2);
  sub_1D1FE023C(v76);
  if (v41)
  {

    v103 = 26;
    v67 = 26;
    goto LABEL_66;
  }

  v75[0] = sub_1D208C64C();
  v75[1] = v29;
  v74[2] = a1;
  v74[3] = a2;
  v40 = MEMORY[0x1D38948D0](v75[0], v29, a1, a2);
  sub_1D1FE023C(v75);
  if (v40)
  {

    v103 = 27;
    v67 = 27;
    goto LABEL_66;
  }

  v74[0] = sub_1D208C64C();
  v74[1] = v30;
  v73[2] = a1;
  v73[3] = a2;
  v39 = MEMORY[0x1D38948D0](v74[0], v30, a1, a2);
  sub_1D1FE023C(v74);
  if (v39)
  {

    v103 = 28;
    v67 = 28;
    goto LABEL_66;
  }

  v73[0] = sub_1D208C64C();
  v73[1] = v31;
  v72[2] = a1;
  v72[3] = a2;
  v38 = MEMORY[0x1D38948D0](v73[0], v31, a1, a2);
  sub_1D1FE023C(v73);
  if (v38)
  {

    v103 = 29;
    v67 = 29;
    goto LABEL_66;
  }

  v72[0] = sub_1D208C64C();
  v72[1] = v32;
  v71[2] = a1;
  v71[3] = a2;
  v37 = MEMORY[0x1D38948D0](v72[0], v32, a1, a2);
  sub_1D1FE023C(v72);
  if (v37)
  {

    v103 = 30;
    v67 = 30;
    goto LABEL_66;
  }

  v71[0] = sub_1D208C64C();
  v71[1] = v33;
  v36 = MEMORY[0x1D38948D0](v71[0], v33, a1, a2);
  sub_1D1FE023C(v71);
  if (v36)
  {

    v103 = 31;
    v67 = 31;
    goto LABEL_66;
  }

  return 32;
}

BOOL sub_1D206DBA8(char a1, char a2)
{
  switch(a1)
  {
    case 1:
      v4 = 1;
      break;
    case 2:
      v4 = 2;
      break;
    case 3:
      v4 = 3;
      break;
    case 4:
      v4 = 4;
      break;
    case 5:
      v4 = 5;
      break;
    case 6:
      v4 = 6;
      break;
    case 7:
      v4 = 7;
      break;
    case 8:
      v4 = 8;
      break;
    case 9:
      v4 = 9;
      break;
    case 10:
      v4 = 10;
      break;
    case 11:
      v4 = 11;
      break;
    case 12:
      v4 = 12;
      break;
    case 13:
      v4 = 13;
      break;
    case 14:
      v4 = 14;
      break;
    case 15:
      v4 = 15;
      break;
    case 16:
      v4 = 16;
      break;
    case 17:
      v4 = 17;
      break;
    case 18:
      v4 = 18;
      break;
    case 19:
      v4 = 19;
      break;
    case 20:
      v4 = 20;
      break;
    case 21:
      v4 = 21;
      break;
    case 22:
      v4 = 22;
      break;
    case 23:
      v4 = 23;
      break;
    case 24:
      v4 = 24;
      break;
    case 25:
      v4 = 25;
      break;
    case 26:
      v4 = 26;
      break;
    case 27:
      v4 = 27;
      break;
    case 28:
      v4 = 28;
      break;
    case 29:
      v4 = 29;
      break;
    case 30:
      v4 = 30;
      break;
    case 31:
      v4 = 31;
      break;
    default:
      v4 = 0;
      break;
  }

  switch(a2)
  {
    case 1:
      v3 = 1;
      break;
    case 2:
      v3 = 2;
      break;
    case 3:
      v3 = 3;
      break;
    case 4:
      v3 = 4;
      break;
    case 5:
      v3 = 5;
      break;
    case 6:
      v3 = 6;
      break;
    case 7:
      v3 = 7;
      break;
    case 8:
      v3 = 8;
      break;
    case 9:
      v3 = 9;
      break;
    case 10:
      v3 = 10;
      break;
    case 11:
      v3 = 11;
      break;
    case 12:
      v3 = 12;
      break;
    case 13:
      v3 = 13;
      break;
    case 14:
      v3 = 14;
      break;
    case 15:
      v3 = 15;
      break;
    case 16:
      v3 = 16;
      break;
    case 17:
      v3 = 17;
      break;
    case 18:
      v3 = 18;
      break;
    case 19:
      v3 = 19;
      break;
    case 20:
      v3 = 20;
      break;
    case 21:
      v3 = 21;
      break;
    case 22:
      v3 = 22;
      break;
    case 23:
      v3 = 23;
      break;
    case 24:
      v3 = 24;
      break;
    case 25:
      v3 = 25;
      break;
    case 26:
      v3 = 26;
      break;
    case 27:
      v3 = 27;
      break;
    case 28:
      v3 = 28;
      break;
    case 29:
      v3 = 29;
      break;
    case 30:
      v3 = 30;
      break;
    case 31:
      v3 = 31;
      break;
    default:
      v3 = 0;
      break;
  }

  return v4 == v3;
}

unint64_t sub_1D206E328()
{
  v2 = qword_1EC6BF348;
  if (!qword_1EC6BF348)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC6BF348);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1D206E438@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D206C814(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D206E484@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D206DB90();
  *a1 = result;
  return result;
}

unint64_t sub_1D206E4E0()
{
  v2 = qword_1EC6BF350;
  if (!qword_1EC6BF350)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC6BF350);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1D206E58C()
{
  v2 = *(v0 + OBJC_IVAR____TtC19EnergyKitFoundation12EKEnergySite_encoder);

  return v2;
}

uint64_t sub_1D206E5CC()
{
  v17 = *MEMORY[0x1E69E9840];
  v13[1] = 0;
  v14 = 0;
  v15 = 0;
  v16 = 0;
  v9 = objc_opt_self();
  (MEMORY[0x1E69E5928])();
  v13[0] = 0;
  v12 = [v9 archivedDataWithRootObject:v11 requiringSecureCoding:1 error:v13];
  v10 = v13[0];
  MEMORY[0x1E69E5928](v13[0]);
  v0 = v16;
  v16 = v10;
  MEMORY[0x1E69E5920](v0);
  swift_unknownObjectRelease();
  if (v12)
  {
    v8 = sub_1D208BD1C();
    v14 = v8;
    v15 = v1;
    MEMORY[0x1E69E5920](v12);
    *MEMORY[0x1E69E9840];
    return v8;
  }

  else
  {
    v6 = v16;
    v7 = sub_1D208BC7C();
    MEMORY[0x1E69E5920](v6);
    swift_willThrow();
    v3 = v7;
    swift_willThrow();

    v4 = __OFSUB__(*MEMORY[0x1E69E9840], v17);
    return v5;
  }
}

uint64_t static EKEnergySite.unarchive(data:)(uint64_t a1, uint64_t a2)
{
  v11[4] = 0;
  v11[5] = a1;
  v11[6] = a2;
  sub_1D1FEA79C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BF360, &qword_1D2091A90);
  sub_1D208CB2C();
  *v2 = type metadata accessor for EKEnergySite();
  sub_1D1FCECE8();
  sub_1D208C88C();
  if (v9)
  {

    v4 = v9;
    swift_willThrow();

    return v5;
  }

  else
  {

    if (v11[3])
    {
      if (swift_dynamicCast())
      {
        v8 = v10;
      }

      else
      {
        v8 = 0;
      }

      v7 = v8;
    }

    else
    {
      sub_1D205539C(v11);
      v7 = 0;
    }

    if (v7)
    {
      return v7;
    }

    else
    {
      return 0;
    }
  }
}

id EKEnergySite.__deallocating_deinit()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for EKEnergySite();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1D206ED38@<X0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  type metadata accessor for EKEnergySite();
  result = sub_1D208C9FC();
  *a1 = result;
  return result;
}

unint64_t sub_1D206EDCC()
{
  v2 = qword_1EC6BF368;
  if (!qword_1EC6BF368)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC6BF368);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1D206EE60()
{
  v2 = qword_1EC6BF370;
  if (!qword_1EC6BF370)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC6BF370);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1D206EEF4()
{
  v2 = qword_1EC6BF378;
  if (!qword_1EC6BF378)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC6BF378);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1D206EF8C()
{
  v6 = sub_1D2028234();
  updated = v6;
  if (v0 <= 0x3F)
  {
    v8 = *(v6 - 8) + 64;
    v5 = sub_1D20717F8();
    updated = v5;
    if (v1 <= 0x3F)
    {
      v9 = *(v5 - 8) + 64;
      v4 = sub_1D2071894();
      updated = v4;
      if (v2 <= 0x3F)
      {
        v10 = *(v4 - 8) + 64;
        updated = swift_updateClassMetadata2();
        if (!updated)
        {
          return 0;
        }
      }
    }
  }

  return updated;
}

uint64_t dispatch thunk of EKEnergySite.includeRatePlanInGuidance.getter()
{
  v3 = (*((*v0 & *MEMORY[0x1E69E7D40]) + 0x468))();
  LODWORD(v2) = v3;
  BYTE4(v2) = BYTE4(v3) & 1;
  return v2;
}

uint64_t dispatch thunk of EKEnergySite.includeRatePlanInGuidance.setter(uint64_t a1)
{
  LODWORD(v3) = a1;
  BYTE4(v3) = BYTE4(a1) & 1;
  return (*((*v1 & *MEMORY[0x1E69E7D40]) + 0x470))(v3);
}

uint64_t sub_1D20717F8()
{
  v4 = qword_1EE082BB0;
  if (!qword_1EE082BB0)
  {
    sub_1D208BF1C();
    v3 = sub_1D208C8FC();
    v4 = v3;
    if (!v0)
    {
      v1 = v3;
      atomic_store(v3, &qword_1EE082BB0);
      return v1;
    }
  }

  return v4;
}

uint64_t sub_1D2071894()
{
  v4 = qword_1EE082A78[0];
  if (!qword_1EE082A78[0])
  {
    sub_1D208C21C();
    v3 = sub_1D208C8FC();
    v4 = v3;
    if (!v0)
    {
      v1 = v3;
      atomic_store(v3, qword_1EE082A78);
      return v1;
    }
  }

  return v4;
}

uint64_t sub_1D2071930(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 <= 0xE0)
    {
      goto LABEL_15;
    }

    v7 = ((a2 + 31) >> 8) + 1;
    v8 = 1;
    if (v7 >= 0x100)
    {
      if (v7 >= 0x10000)
      {
        v2 = 4;
      }

      else
      {
        v2 = 2;
      }

      v8 = v2;
    }

    if (v8 == 1)
    {
      v6 = a1[1];
    }

    else
    {
      v6 = v8 == 2 ? *(a1 + 1) : *(a1 + 1);
    }

    if (v6)
    {
      v5 = (*a1 | ((v6 - 1) << 8)) + 224;
    }

    else
    {
LABEL_15:
      v3 = *a1 - 32;
      if (v3 < 0)
      {
        v3 = -1;
      }

      v5 = v3;
    }
  }

  else
  {
    v5 = -1;
  }

  return (v5 + 1);
}