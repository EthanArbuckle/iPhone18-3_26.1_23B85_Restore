uint64_t sub_1CFEE41A4(uint64_t a1, uint64_t a2)
{
  v3 = sub_1CFF0CB6C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16) && (sub_1CFEE9FB8(&qword_1EDEC5190, MEMORY[0x1E69A2E68]), v7 = sub_1CFF0E44C(), v8 = -1 << *(a2 + 32), v9 = v7 & ~v8, v18 = a2 + 56, ((*(a2 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0))
  {
    v17 = a2;
    v10 = ~v8;
    v11 = v4 + 16;
    v12 = *(v4 + 16);
    v13 = *(v11 + 56);
    v14 = (v11 - 8);
    do
    {
      v12(v6, *(v17 + 48) + v13 * v9, v3);
      sub_1CFEE9FB8(&qword_1EDEC4CD8, MEMORY[0x1E69A2E68]);
      v15 = sub_1CFF0E4CC();
      (*v14)(v6, v3);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  else
  {
    v15 = 0;
  }

  return v15 & 1;
}

BOOL sub_1CFEE43BC(uint64_t a1, double a2)
{
  if (!*(a1 + 16))
  {
    return 0;
  }

  v4 = sub_1CFF0EC2C();
  v5 = -1 << *(a1 + 32);
  v6 = v4 & ~v5;
  if (((*(a1 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
    return 0;
  }

  v7 = ~v5;
  do
  {
    v8 = *(*(a1 + 48) + 8 * v6);
    result = v8 == a2;
    if (v8 == a2)
    {
      break;
    }

    v6 = (v6 + 1) & v7;
  }

  while (((*(a1 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  return result;
}

BOOL sub_1CFEE4478(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 48);
  v7[2] = *(a1 + 32);
  v7[3] = v2;
  v8 = *(a1 + 64);
  v3 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v3;
  v4 = *(a2 + 48);
  v9[2] = *(a2 + 32);
  v9[3] = v4;
  v10 = *(a2 + 64);
  v5 = *(a2 + 16);
  v9[0] = *a2;
  v9[1] = v5;
  return sub_1CFEE9EFC(v7, v9);
}

uint64_t sub_1CFEE44D4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v3 = *(a1 + 24);
  v5 = *(a2 + 8);
  v7 = *(a2 + 16);
  v6 = *(a2 + 24);
  if ((sub_1CFEE69FC(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  v8 = sub_1CFEE69FC(v2, v5) & (v4 == v7);
  if (v3 == v6)
  {
    return v8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1CFEE454C(double a1)
{
  v3 = sub_1CFF0CB6C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  *&v52 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v53 = &v45 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v45 - v9;
  sub_1CFEEA938();
  v12 = v11 - 8;
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for OvernightMetricsChartAnimationValues.Selection();
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v45 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v45 - v22;
  v24 = *(v1 + 8);
  LOBYTE(v56) = *v1;
  v57 = v24;
  sub_1CFEE371C(&v45 - v22, v20, a1);
  v25 = *(v12 + 56);
  v54 = v23;
  sub_1CFEEA9E8(v23, v14);
  sub_1CFEEA9E8(v20, &v14[v25]);
  v26 = *(v4 + 48);
  if (v26(v14, 1, v3) == 1)
  {
    if (v26(&v14[v25], 1, v3) != 1)
    {
      (*(v4 + 32))(v10, &v14[v25], v3);

      v50 = sub_1CFEEAB04(v30);

      sub_1CFEEAAAC();
      v53 = v31;
      v32 = (*(v4 + 80) + 32) & ~*(v4 + 80);
      v33 = swift_allocObject();
      v52 = xmmword_1CFF10480;
      *(v33 + 16) = xmmword_1CFF10480;
      v51 = v20;
      v34 = *(v4 + 16);
      v34(v33 + v32, v10, v3);
      v50 = sub_1CFEE8E30(v33, v50);
      swift_setDeallocating();
      swift_arrayDestroy();
      swift_deallocClassInstance();
      v35 = swift_allocObject();
      *(v35 + 16) = v52;
      v34(v35 + v32, v10, v3);
      v20 = v51;
      sub_1CFEEAB04(v35);
      swift_setDeallocating();
      v36 = *(v4 + 8);
      v36(v35 + v32, v3);
      swift_deallocClassInstance();
      v36(v10, v3);
      v29 = v50;
      v27 = type metadata accessor for OvernightMetricsChartAnimationValues.Selection;
      goto LABEL_11;
    }

    v27 = sub_1CFEEA938;
    v28 = MEMORY[0x1E69E7CD0];
    goto LABEL_6;
  }

  sub_1CFEEA9E8(v14, v17);
  if (v26(&v14[v25], 1, v3) == 1)
  {
    (*(v4 + 8))(v17, v3);
    v28 = MEMORY[0x1E69E7CD0];
    v27 = sub_1CFEEA938;
LABEL_6:
    v29 = v28;
    goto LABEL_11;
  }

  v51 = v20;
  v37 = *(v4 + 32);
  v38 = v53;
  v37(v53, v17, v3);
  v39 = v52;
  v37(v52, &v14[v25], v3);
  sub_1CFEE9FB8(&qword_1EDEC4CD0, MEMORY[0x1E69A2E68]);
  sub_1CFF0E63C();
  sub_1CFF0E63C();
  v48 = v55;
  v49 = v56;
  sub_1CFEEAAAC();
  v40 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v47 = *(v4 + 72);
  v41 = swift_allocObject();
  v45 = xmmword_1CFF10480;
  *(v41 + 16) = xmmword_1CFF10480;
  v46 = *(v4 + 16);
  v46(v41 + v40, v38, v3);
  v50 = sub_1CFEA3A20(v41);
  swift_setDeallocating();
  v42 = *(v4 + 8);
  v42(v41 + v40, v3);
  swift_deallocClassInstance();
  if (v49 != v48)
  {
    v43 = swift_allocObject();
    *(v43 + 16) = v45;
    v46(v43 + v40, v39, v3);
    sub_1CFEA3A20(v43);
    swift_setDeallocating();
    v42(v43 + v40, v3);
    swift_deallocClassInstance();
  }

  v20 = v51;
  v42(v39, v3);
  v42(v53, v3);
  v27 = type metadata accessor for OvernightMetricsChartAnimationValues.Selection;
  v29 = v50;
LABEL_11:
  sub_1CFEEAA4C(v20, type metadata accessor for OvernightMetricsChartAnimationValues.Selection);
  sub_1CFEEAA4C(v54, type metadata accessor for OvernightMetricsChartAnimationValues.Selection);
  sub_1CFEEAA4C(v14, v27);
  return v29;
}

void sub_1CFEE4C0C(uint64_t a1)
{
  v2 = sub_1CFF0CB6C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v23 - v7;
  v10.n128_f64[0] = MEMORY[0x1EEE9AC00](v9);
  v12 = v23 - v11;
  v13 = 0;
  v24 = a1;
  v16 = *(a1 + 56);
  v15 = a1 + 56;
  v14 = v16;
  v17 = 1 << *(v15 - 24);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & v14;
  v20 = (v17 + 63) >> 6;
  v23[1] = v3 + 32;
  v23[2] = v3 + 16;
  v23[0] = v3 + 8;
  if ((v18 & v14) != 0)
  {
    do
    {
      v21 = v13;
LABEL_9:
      v22 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
      (*(v3 + 16))(v12, *(v24 + 48) + *(v3 + 72) * (v22 | (v21 << 6)), v2, v10);
      (*(v3 + 32))(v5, v12, v2);
      sub_1CFEE7150(v8, v5);
      (*(v3 + 8))(v8, v2);
    }

    while (v19);
  }

  while (1)
  {
    v21 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v21 >= v20)
    {

      return;
    }

    v19 = *(v15 + 8 * v21);
    ++v13;
    if (v19)
    {
      v13 = v21;
      goto LABEL_9;
    }
  }

  __break(1u);
}

uint64_t sub_1CFEE4E1C@<X0>(uint64_t a1@<X8>, double a2@<D0>)
{
  v75 = a1;
  sub_1CFEEA008();
  v4 = *(v3 - 8);
  v73 = v3;
  v74 = v4;
  MEMORY[0x1EEE9AC00](v3);
  v70 = &v64 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFEEA1BC();
  v69 = v6;
  v72 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v65 = &v64 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFEEA348();
  v89 = v8;
  v71 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v88 = &v64 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFEEA4A4();
  v87 = v10;
  v68 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v85 = &v64 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFEEA5D8();
  v84 = v12;
  v67 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v82 = &v64 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFEEA6DC();
  v81 = v14;
  v66 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v79 = &v64 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFEEA7A0();
  v17 = v16;
  v18 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v78 = &v64 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v91 = &v64 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v90 = &v64 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v92 = &v64 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v93 = &v64 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v64 - v29;
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v64 - v32;
  MEMORY[0x1EEE9AC00](v34);
  v86 = &v64 - v35;
  swift_getKeyPath();
  v100 = a2;
  sub_1CFEEB178(0, &qword_1EDEC2060, MEMORY[0x1E69E63B0], MEMORY[0x1E6981FE0], MEMORY[0x1E697E3F8]);
  v37 = v36;
  sub_1CFEEA850();
  sub_1CFF0D57C();
  v38 = sub_1CFEE9FB8(&qword_1EDEC20D8, sub_1CFEEA7A0);
  MEMORY[0x1D38783A0](v33, &type metadata for OvernightMetricsChartAnimationValues.IndividualMetricsState, v17, v38);
  v39 = *(v18 + 8);
  v83 = v33;
  v39(v33, v17);
  v77 = v39;
  swift_getKeyPath();
  v99 = a2;
  sub_1CFF0D57C();
  MEMORY[0x1D38783A0](v30, &type metadata for OvernightMetricsChartAnimationValues.IndividualMetricsState, v17, v38);
  v80 = v30;
  v40 = v18 + 8;
  v39(v30, v17);
  swift_getKeyPath();
  v98 = a2;
  v41 = v93;
  v76 = v37;
  sub_1CFF0D57C();
  MEMORY[0x1D38783A0](v41, &type metadata for OvernightMetricsChartAnimationValues.IndividualMetricsState, v17, v38);
  v42 = v77;
  v77(v41, v17);
  v43 = v40;
  swift_getKeyPath();
  v97 = a2;
  v44 = v92;
  sub_1CFF0D57C();
  MEMORY[0x1D38783A0](v44, &type metadata for OvernightMetricsChartAnimationValues.IndividualMetricsState, v17, v38);
  v42(v44, v17);
  swift_getKeyPath();
  v96 = a2;
  v45 = v90;
  sub_1CFF0D57C();
  MEMORY[0x1D38783A0](v45, &type metadata for OvernightMetricsChartAnimationValues.IndividualMetricsState, v17, v38);
  v42(v45, v17);
  swift_getKeyPath();
  v95 = a2;
  v46 = v91;
  sub_1CFF0D57C();
  MEMORY[0x1D38783A0](v46, &type metadata for OvernightMetricsChartAnimationValues.IndividualMetricsState, v17, v38);
  v42(v46, v17);
  v64 = v43;
  swift_getKeyPath();
  v94 = a2;
  v47 = v78;
  sub_1CFF0D57C();
  MEMORY[0x1D38783A0](v47, &type metadata for OvernightMetricsChartAnimationValues.IndividualMetricsState, v17, v38);
  v42(v47, v17);
  MEMORY[0x1D38783D0](v86, &type metadata for OvernightMetricsChartAnimationValues.IndividualMetricsState, v17, v38);
  sub_1CFF0D68C();
  v101 = &type metadata for OvernightMetricsChartAnimationValues.IndividualMetricsState;
  v102 = v17;
  v103 = v17;
  v104 = v38;
  v105 = v38;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v49 = v81;
  sub_1CFF0D68C();
  v101 = &type metadata for OvernightMetricsChartAnimationValues.IndividualMetricsState;
  v102 = v49;
  v103 = v17;
  v104 = OpaqueTypeConformance2;
  v105 = v38;
  v50 = swift_getOpaqueTypeConformance2();
  v51 = v84;
  sub_1CFF0D68C();
  v101 = &type metadata for OvernightMetricsChartAnimationValues.IndividualMetricsState;
  v102 = v51;
  v103 = v17;
  v104 = v50;
  v105 = v38;
  v52 = swift_getOpaqueTypeConformance2();
  v53 = v87;
  sub_1CFF0D68C();
  v101 = &type metadata for OvernightMetricsChartAnimationValues.IndividualMetricsState;
  v102 = v53;
  v103 = v17;
  v104 = v52;
  v105 = v38;
  v54 = swift_getOpaqueTypeConformance2();
  v55 = v65;
  v56 = v89;
  sub_1CFF0D68C();
  v101 = &type metadata for OvernightMetricsChartAnimationValues.IndividualMetricsState;
  v102 = v56;
  v103 = v17;
  v104 = v54;
  v105 = v38;
  v57 = swift_getOpaqueTypeConformance2();
  v58 = v69;
  v59 = v70;
  sub_1CFF0D68C();
  v101 = &type metadata for OvernightMetricsChartAnimationValues.IndividualMetricsState;
  v102 = v58;
  v103 = v17;
  v104 = v57;
  v105 = v38;
  v60 = swift_getOpaqueTypeConformance2();
  v61 = v73;
  MEMORY[0x1D38783B0](v59, &type metadata for OvernightMetricsChartAnimationValues.IndividualMetricsState, v73, v60);
  (*(v74 + 8))(v59, v61);
  (*(v72 + 8))(v55, v58);
  (*(v71 + 8))(v88, v89);
  (*(v68 + 8))(v85, v87);
  (*(v67 + 8))(v82, v84);
  (*(v66 + 8))(v79, v81);
  v62 = v77;
  v77(v78, v17);
  v62(v91, v17);
  v62(v90, v17);
  v62(v92, v17);
  v62(v93, v17);
  v62(v80, v17);
  v62(v83, v17);
  return (v62)(v86, v17);
}

uint64_t sub_1CFEE59E0(double a1, double a2)
{
  v3 = sub_1CFF0E19C();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v4 = MEMORY[0x1E69E63B0];
  sub_1CFEEB178(0, &qword_1EDEC2060, MEMORY[0x1E69E63B0], MEMORY[0x1E6981FE0], MEMORY[0x1E697E3F8]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v16 - v11;
  *&v16[1] = a2;
  sub_1CFF0E18C();
  sub_1CFF0D5DC();
  v13 = sub_1CFEEA850();
  MEMORY[0x1D3878730](v9, v4, v6, v13);
  v14 = *(v7 + 8);
  v14(v9, v6);
  MEMORY[0x1D3878750](v12, v4, v6, v13);
  return (v14)(v12, v6);
}

uint64_t sub_1CFEE5BCC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>, double a6@<D2>)
{
  v41 = a2;
  v40 = a1;
  v45 = a3;
  sub_1CFEEAD04();
  v43 = v11;
  v44 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v42 = v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFEEADC8();
  v14 = v13;
  v15 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v17 = v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = v38 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v39 = v38 - v22;
  v38[2] = swift_getKeyPath();
  v51 = a1;
  v52 = a2;
  v53 = a4;
  v54 = a5;
  v55 = a6;
  sub_1CFEEAEF0();
  v38[1] = v23;
  sub_1CFEEAFEC();
  v25 = v24;
  v26 = MEMORY[0x1E69E63B0];
  sub_1CFEEB178(255, &qword_1EDEC2060, MEMORY[0x1E69E63B0], MEMORY[0x1E6981FE0], MEMORY[0x1E697E3F8]);
  v28 = v27;
  v29 = sub_1CFEEA850();
  v56 = v26;
  v57 = v28;
  v58 = v28;
  v59 = v29;
  v60 = v29;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v56 = v26;
  v57 = v25;
  v58 = v28;
  v59 = OpaqueTypeConformance2;
  v60 = v29;
  swift_getOpaqueTypeConformance2();
  sub_1CFF0D57C();
  v31 = sub_1CFEE9FB8(&qword_1EDEC20C8, sub_1CFEEADC8);
  v32 = v39;
  MEMORY[0x1D38783A0](v20, &type metadata for OvernightMetricsChartAnimationValues.SevenDayMetricsState, v14, v31);
  v33 = *(v15 + 8);
  v33(v20, v14);
  swift_getKeyPath();
  v46 = v40;
  v47 = v41;
  v48 = a4;
  v49 = a5;
  v50 = a6;
  sub_1CFF0D57C();
  MEMORY[0x1D38783A0](v17, &type metadata for OvernightMetricsChartAnimationValues.SevenDayMetricsState, v14, v31);
  v33(v17, v14);
  MEMORY[0x1D38783D0](v32, &type metadata for OvernightMetricsChartAnimationValues.SevenDayMetricsState, v14, v31);
  v34 = v42;
  sub_1CFF0D68C();
  v56 = &type metadata for OvernightMetricsChartAnimationValues.SevenDayMetricsState;
  v57 = v14;
  v58 = v14;
  v59 = v31;
  v60 = v31;
  v35 = swift_getOpaqueTypeConformance2();
  v36 = v43;
  MEMORY[0x1D38783B0](v34, &type metadata for OvernightMetricsChartAnimationValues.SevenDayMetricsState, v43, v35);
  (*(v44 + 8))(v34, v36);
  v33(v17, v14);
  v33(v20, v14);
  return (v33)(v32, v14);
}

uint64_t sub_1CFEE6094@<X0>(uint64_t a1@<X8>, double a2@<D0>)
{
  v31 = a1;
  sub_1CFEEAFEC();
  v4 = *(v3 - 8);
  v29 = v3;
  v30 = v4;
  MEMORY[0x1EEE9AC00](v3);
  v28 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1CFF0E19C();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v7 = MEMORY[0x1E69E63B0];
  sub_1CFEEB178(0, &qword_1EDEC2060, MEMORY[0x1E69E63B0], MEMORY[0x1E6981FE0], MEMORY[0x1E697E3F8]);
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v27 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v27 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v27 = &v27 - v20;
  v32 = a2;
  sub_1CFF0E18C();
  sub_1CFF0D5DC();
  v21 = sub_1CFEEA850();
  MEMORY[0x1D3878730](v18, *&v7, v9, v21);
  v22 = *(v10 + 8);
  v22(v18, v9);
  v32 = 1.0;
  sub_1CFF0E18C();
  sub_1CFF0D5DC();
  MEMORY[0x1D3878730](v15, *&v7, v9, v21);
  v22(v15, v9);
  v32 = 1.0;
  sub_1CFF0E18C();
  sub_1CFF0D5DC();
  MEMORY[0x1D3878730](v12, *&v7, v9, v21);
  v22(v12, v9);
  v23 = v27;
  MEMORY[0x1D3878750](v27, *&v7, v9, v21);
  v24 = v28;
  sub_1CFF0DA0C();
  v32 = v7;
  v33 = v9;
  v34 = v9;
  v35 = v21;
  v36 = v21;
  swift_getOpaqueTypeConformance2();
  v25 = v29;
  sub_1CFF0DA0C();
  (*(v30 + 8))(v24, v25);
  v22(v12, v9);
  v22(v15, v9);
  v22(v18, v9);
  return (v22)(v23, v9);
}

uint64_t sub_1CFEE64FC@<X0>(uint64_t a1@<X8>, double a2@<D1>)
{
  v31 = a1;
  sub_1CFEEAFEC();
  v4 = *(v3 - 8);
  v29 = v3;
  v30 = v4;
  MEMORY[0x1EEE9AC00](v3);
  v28 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1CFF0E19C();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v7 = MEMORY[0x1E69E63B0];
  sub_1CFEEB178(0, &qword_1EDEC2060, MEMORY[0x1E69E63B0], MEMORY[0x1E6981FE0], MEMORY[0x1E697E3F8]);
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v27 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v27 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v27 - v20;
  v32 = a2;
  sub_1CFF0E18C();
  sub_1CFF0D5DC();
  v22 = sub_1CFEEA850();
  MEMORY[0x1D3878730](v18, *&v7, v9, v22);
  v23 = *(v10 + 8);
  v23(v18, v9);
  v32 = 0.0;
  sub_1CFF0E18C();
  sub_1CFF0D5DC();
  MEMORY[0x1D3878730](v15, *&v7, v9, v22);
  v23(v15, v9);
  v32 = 0.0;
  sub_1CFF0E18C();
  sub_1CFF0D5DC();
  MEMORY[0x1D3878730](v12, *&v7, v9, v22);
  v23(v12, v9);
  MEMORY[0x1D3878750](v21, *&v7, v9, v22);
  v24 = v28;
  sub_1CFF0DA0C();
  v32 = v7;
  v33 = v9;
  v34 = v9;
  v35 = v22;
  v36 = v22;
  swift_getOpaqueTypeConformance2();
  v25 = v29;
  sub_1CFF0DA0C();
  (*(v30 + 8))(v24, v25);
  v23(v12, v9);
  v23(v15, v9);
  v23(v18, v9);
  return (v23)(v21, v9);
}

double sub_1CFEE6958(uint64_t a1, char a2)
{
  v5 = *(v2 + 8);
  v6 = *(v5 + 16);
  v7 = sub_1CFEE41A4(a1, *v2);
  if (v6 < 2)
  {
    if (v7)
    {
      return *(v2 + 48);
    }

    if ((sub_1CFEE41A4(a1, v5) & 1) == 0)
    {
      return 0.26;
    }

    return *(v2 + 56);
  }

  if (a2)
  {
    result = 1.0;
    if (v7)
    {
      return result;
    }

    return *(v2 + 56);
  }

  v9 = 64;
  if (v7)
  {
    v9 = 48;
  }

  return *(v2 + v9);
}

uint64_t sub_1CFEE69FC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1CFF0CB6C();
  v5 = *(v4 - 8);
  v6 = (MEMORY[0x1EEE9AC00])();
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v44 = &v33 - v10;
  result = MEMORY[0x1EEE9AC00](v9);
  v13 = &v33 - v12;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v14 = 0;
  v15 = *(a1 + 56);
  v33 = a1 + 56;
  v16 = 1 << *(a1 + 32);
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  else
  {
    v17 = -1;
  }

  v18 = v17 & v15;
  v19 = (v16 + 63) >> 6;
  v40 = v5 + 32;
  v42 = a2 + 56;
  v43 = v5 + 16;
  v20 = (v5 + 8);
  v34 = v19;
  v35 = &v33 - v12;
  v36 = v5;
  v37 = a1;
  if (v18)
  {
    while (1)
    {
      v21 = __clz(__rbit64(v18));
      v39 = (v18 - 1) & v18;
LABEL_13:
      v24 = *(a1 + 48);
      v41 = *(v5 + 72);
      v25 = *(v5 + 16);
      v25(v13, v24 + v41 * (v21 | (v14 << 6)), v4);
      (*(v5 + 32))(v44, v13, v4);
      sub_1CFEE9FB8(&qword_1EDEC5190, MEMORY[0x1E69A2E68]);
      v26 = sub_1CFF0E44C();
      v27 = -1 << *(a2 + 32);
      v28 = v26 & ~v27;
      if (((*(v42 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
      {
        break;
      }

      v38 = v20 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v29 = a2;
      v30 = ~v27;
      while (1)
      {
        v25(v8, *(v29 + 48) + v28 * v41, v4);
        sub_1CFEE9FB8(&qword_1EDEC4CD8, MEMORY[0x1E69A2E68]);
        v31 = sub_1CFF0E4CC();
        v32 = *v20;
        (*v20)(v8, v4);
        if (v31)
        {
          break;
        }

        v28 = (v28 + 1) & v30;
        if (((*(v42 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
        {
          v32(v44, v4);
          return 0;
        }
      }

      result = (v32)(v44, v4);
      a2 = v29;
      v5 = v36;
      a1 = v37;
      v19 = v34;
      v13 = v35;
      v18 = v39;
      if (!v39)
      {
        goto LABEL_8;
      }
    }

    (*v20)(v44, v4);
    return 0;
  }

LABEL_8:
  v22 = v14;
  while (1)
  {
    v14 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v14 >= v19)
    {
      return 1;
    }

    v23 = *(v33 + 8 * v14);
    ++v22;
    if (v23)
    {
      v21 = __clz(__rbit64(v23));
      v39 = (v23 - 1) & v23;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1CFEE6DAC(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  while (v7)
  {
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_14:
    v13 = *(*(v3 + 48) + 8 * (v10 | (v4 << 6)));
    result = sub_1CFF0EC2C();
    v14 = -1 << *(a2 + 32);
    v15 = result & ~v14;
    if (((*(v9 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
    {
      return 0;
    }

    v16 = ~v14;
    while (*(*(a2 + 48) + 8 * v15) != v13)
    {
      v15 = (v15 + 1) & v16;
      if (((*(v9 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
      {
        return 0;
      }
    }
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v12 = *(v3 + 56 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v7 = (v12 - 1) & v12;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1CFEE6F0C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_1CFF0EC3C();
  sub_1CFF0E5EC();
  v8 = sub_1CFF0EC7C();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_1CFF0EBCC() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v16 = (*(v7 + 48) + 16 * v10);
    v17 = v16[1];
    *a1 = *v16;
    a1[1] = v17;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    sub_1CFEE7C54(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_1CFEE705C(double *a1, double a2)
{
  v5 = *v2;
  v6 = sub_1CFF0EC2C();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (1)
    {
      v10 = *(v5 + 48);
      if (*(v10 + 8 * v8) == a2)
      {
        break;
      }

      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
    a2 = *(v10 + 8 * v8);
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = *v2;
    sub_1CFEE7DD4(v8, isUniquelyReferenced_nonNull_native, a2);
    *v2 = v13;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_1CFEE7150(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_1CFF0CB6C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_1CFEE9FB8(&qword_1EDEC5190, MEMORY[0x1E69A2E68]);
  v33 = a2;
  v11 = sub_1CFF0E44C();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      sub_1CFEE9FB8(&qword_1EDEC4CD8, MEMORY[0x1E69A2E68]);
      v21 = sub_1CFF0E4CC();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    sub_1CFEE7F00(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_1CFEE7430()
{
  v1 = v0;
  v2 = *v0;
  sub_1CFEEB178(0, &qword_1EDEC1668, MEMORY[0x1E69E6158], MEMORY[0x1E69E6168], MEMORY[0x1E69E6A10]);
  result = sub_1CFF0E92C();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v2 + 48) + 16 * (v14 | (v5 << 6)));
      v18 = *v17;
      v19 = v17[1];
      sub_1CFF0EC3C();
      sub_1CFF0E5EC();
      result = sub_1CFF0EC7C();
      v20 = -1 << *(v4 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v11 + 8 * v22);
          if (v26 != -1)
          {
            v12 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v4 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v4 + 16);
    }

    v15 = v5;
    while (1)
    {
      v5 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v16 = v6[v5];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v27 = 1 << *(v2 + 32);
    if (v27 >= 64)
    {
      bzero((v2 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v27;
    }

    v1 = v0;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_1CFEE76B0()
{
  v1 = v0;
  v2 = *v0;
  sub_1CFEEB178(0, &qword_1EDEC1660, MEMORY[0x1E69E63B0], MEMORY[0x1E69E63D0], MEMORY[0x1E69E6A10]);
  result = sub_1CFF0E92C();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v2 + 48) + 8 * (v13 | (v5 << 6)));
      result = sub_1CFF0EC2C();
      v17 = -1 << *(v4 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v4 + 48) + 8 * v12) = v16;
      ++*(v4 + 16);
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v15 = v6[v5];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    if (v7 >= 64)
    {
      bzero((v2 + 56), 8 * v10);
    }

    else
    {
      *v6 = -1 << v7;
    }

    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_1CFEE7904()
{
  v1 = v0;
  v35 = sub_1CFF0CB6C();
  v2 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v34 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *v0;
  sub_1CFEA3D34();
  result = sub_1CFF0E92C();
  v6 = result;
  if (*(v4 + 16))
  {
    v29 = v0;
    v30 = v4;
    v7 = 0;
    v8 = (v4 + 56);
    v9 = 1 << *(v4 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v4 + 56);
    v12 = (v9 + 63) >> 6;
    v33 = v2 + 32;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_15:
      v18 = *(v4 + 48) + *(v2 + 72) * (v15 | (v7 << 6));
      v19 = *(v2 + 32);
      v31 = *(v2 + 72);
      v32 = v19;
      v19(v34, v18, v35);
      sub_1CFEE9FB8(&qword_1EDEC5190, MEMORY[0x1E69A2E68]);
      result = sub_1CFF0E44C();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      result = v32(*(v6 + 48) + v14 * v31, v34, v35);
      ++*(v6 + 16);
      v4 = v30;
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v27 = 1 << *(v4 + 32);
    if (v27 >= 64)
    {
      bzero(v8, ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v1 = v29;
    *(v4 + 16) = 0;
  }

  *v1 = v6;
  return result;
}

uint64_t sub_1CFEE7C54(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_1CFEE7430();
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_1CFEE81A4();
      goto LABEL_16;
    }

    sub_1CFEE86A8();
  }

  v10 = *v4;
  sub_1CFF0EC3C();
  sub_1CFF0E5EC();
  result = sub_1CFF0EC7C();
  v11 = -1 << *(v10 + 32);
  a3 = result & ~v11;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v12 = ~v11;
    do
    {
      v13 = (*(v10 + 48) + 16 * a3);
      if (*v13 == v7 && v13[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_1CFF0EBCC();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v12;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v15 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v16 = (*(v15 + 48) + 16 * a3);
  *v16 = v7;
  v16[1] = a2;
  v17 = *(v15 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (!v18)
  {
    *(v15 + 16) = v19;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_1CFF0EBDC();
  __break(1u);
  return result;
}

unint64_t sub_1CFEE7DD4(unint64_t result, char a2, double a3)
{
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a2 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a2)
  {
    sub_1CFEE76B0();
  }

  else
  {
    if (v6 > v5)
    {
      v7 = result;
      sub_1CFEE8320();
      result = v7;
      goto LABEL_12;
    }

    sub_1CFEE8900();
  }

  v8 = *v3;
  v9 = sub_1CFF0EC2C();
  v10 = -1 << *(v8 + 32);
  result = v9 & ~v10;
  if ((*(v8 + 56 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v11 = ~v10;
    while (*(*(v8 + 48) + 8 * result) != a3)
    {
      result = (result + 1) & v11;
      if (((*(v8 + 56 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v12 = *v3;
  *(*v3 + 8 * (result >> 6) + 56) |= 1 << result;
  *(*(v12 + 48) + 8 * result) = a3;
  v13 = *(v12 + 16);
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (!v14)
  {
    *(v12 + 16) = v15;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1CFF0EBDC();
  __break(1u);
  return result;
}

uint64_t sub_1CFEE7F00(uint64_t a1, unint64_t a2, char a3)
{
  v32 = a1;
  v6 = sub_1CFF0CB6C();
  v7 = *(v6 - 8);
  v8.n128_f64[0] = MEMORY[0x1EEE9AC00](v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v29 = v3;
  v30 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1CFEE7904();
  }

  else
  {
    if (v12 > v11)
    {
      sub_1CFEE8480();
      goto LABEL_12;
    }

    sub_1CFEE8B20();
  }

  v13 = *v3;
  sub_1CFEE9FB8(&qword_1EDEC5190, MEMORY[0x1E69A2E68]);
  v14 = sub_1CFF0E44C();
  v15 = v13 + 56;
  v31 = v13;
  v16 = -1 << *(v13 + 32);
  a2 = v14 & ~v16;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    do
    {
      v18(v10, *(v31 + 48) + v21 * a2, v6);
      sub_1CFEE9FB8(&qword_1EDEC4CD8, MEMORY[0x1E69A2E68]);
      v22 = sub_1CFF0E4CC();
      (*(v19 - 8))(v10, v6);
      if (v22)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v15 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v23 = v30;
  v24 = *v29;
  *(v24 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v23 + 32))(*(v24 + 48) + *(v23 + 72) * a2, v32, v6, v8);
  v26 = *(v24 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (!v27)
  {
    *(v24 + 16) = v28;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1CFF0EBDC();
  __break(1u);
  return result;
}

void *sub_1CFEE81A4()
{
  v1 = v0;
  sub_1CFEEB178(0, &qword_1EDEC1668, MEMORY[0x1E69E6158], MEMORY[0x1E69E6168], MEMORY[0x1E69E6A10]);
  v2 = *v0;
  v3 = sub_1CFF0E91C();
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
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

void *sub_1CFEE8320()
{
  v1 = v0;
  sub_1CFEEB178(0, &qword_1EDEC1660, MEMORY[0x1E69E63B0], MEMORY[0x1E69E63D0], MEMORY[0x1E69E6A10]);
  v2 = *v0;
  v3 = sub_1CFF0E91C();
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

void *sub_1CFEE8480()
{
  v1 = v0;
  v2 = sub_1CFF0CB6C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFEA3D34();
  v6 = *v0;
  v7 = sub_1CFF0E91C();
  v8 = v7;
  if (*(v6 + 16))
  {
    v22 = v1;
    result = (v7 + 56);
    v10 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v6 + 56 + 8 * v10)
    {
      result = memmove(result, (v6 + 56), 8 * v10);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v6 + 56);
    v16 = (v13 + 63) >> 6;
    v23 = v3 + 32;
    for (i = v3 + 16; v15; result = (*(v3 + 32))(*(v8 + 48) + v20, v5, v2))
    {
      v17 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v20 = *(v3 + 72) * (v17 | (v12 << 6));
      (*(v3 + 16))(v5, *(v6 + 48) + v20, v2);
    }

    v18 = v12;
    while (1)
    {
      v12 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v12 >= v16)
      {

        v1 = v22;
        goto LABEL_21;
      }

      v19 = *(v6 + 56 + 8 * v12);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v8;
  }

  return result;
}

uint64_t sub_1CFEE86A8()
{
  v1 = v0;
  v2 = *v0;
  sub_1CFEEB178(0, &qword_1EDEC1668, MEMORY[0x1E69E6158], MEMORY[0x1E69E6168], MEMORY[0x1E69E6A10]);
  result = sub_1CFF0E92C();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    while (v8)
    {
      v13 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_15:
      v16 = (*(v2 + 48) + 16 * (v13 | (v5 << 6)));
      v17 = *v16;
      v18 = v16[1];
      sub_1CFF0EC3C();

      sub_1CFF0E5EC();
      result = sub_1CFF0EC7C();
      v19 = -1 << *(v4 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v10 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v10 + 8 * v21);
          if (v25 != -1)
          {
            v11 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v11 = __clz(__rbit64((-1 << v20) & ~*(v10 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      v12 = (*(v4 + 48) + 16 * v11);
      *v12 = v17;
      v12[1] = v18;
      ++*(v4 + 16);
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v5 >= v9)
      {

        v1 = v0;
        goto LABEL_26;
      }

      v15 = *(v2 + 56 + 8 * v5);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v8 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_1CFEE8900()
{
  v1 = v0;
  v2 = *v0;
  sub_1CFEEB178(0, &qword_1EDEC1660, MEMORY[0x1E69E63B0], MEMORY[0x1E69E63D0], MEMORY[0x1E69E6A10]);
  result = sub_1CFF0E92C();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    while (v8)
    {
      v12 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_15:
      v15 = *(*(v2 + 48) + 8 * (v12 | (v5 << 6)));
      result = sub_1CFF0EC2C();
      v16 = -1 << *(v4 + 32);
      v17 = result & ~v16;
      v18 = v17 >> 6;
      if (((-1 << v17) & ~*(v10 + 8 * (v17 >> 6))) == 0)
      {
        v19 = 0;
        v20 = (63 - v16) >> 6;
        while (++v18 != v20 || (v19 & 1) == 0)
        {
          v21 = v18 == v20;
          if (v18 == v20)
          {
            v18 = 0;
          }

          v19 |= v21;
          v22 = *(v10 + 8 * v18);
          if (v22 != -1)
          {
            v11 = __clz(__rbit64(~v22)) + (v18 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_26;
      }

      v11 = __clz(__rbit64((-1 << v17) & ~*(v10 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      *(*(v4 + 48) + 8 * v11) = v15;
      ++*(v4 + 16);
    }

    v13 = v5;
    while (1)
    {
      v5 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v5 >= v9)
      {
        goto LABEL_24;
      }

      v14 = *(v2 + 56 + 8 * v5);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v8 = (v14 - 1) & v14;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
  }

  else
  {
LABEL_24:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_1CFEE8B20()
{
  v1 = v0;
  v32 = sub_1CFF0CB6C();
  v2 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  sub_1CFEA3D34();
  v6 = sub_1CFF0E92C();
  result = v5;
  if (*(v5 + 16))
  {
    v27 = v0;
    v8 = 0;
    v9 = v5 + 56;
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v30 = v2 + 16;
    v31 = v2;
    v14 = v6 + 56;
    v28 = (v2 + 32);
    v29 = result;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v31 + 72);
      (*(v31 + 16))(v4, *(result + 48) + v19 * (v16 | (v8 << 6)), v32);
      sub_1CFEE9FB8(&qword_1EDEC5190, MEMORY[0x1E69A2E68]);
      result = sub_1CFF0E44C();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v14 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v14 + 8 * v22);
          if (v26 != -1)
          {
            v15 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v15 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      (*v28)(*(v6 + 48) + v15 * v19, v4, v32);
      ++*(v6 + 16);
      result = v29;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v27;
        goto LABEL_26;
      }

      v18 = *(v9 + 8 * v8);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v6;
  }

  return result;
}

uint64_t sub_1CFEE8E30(uint64_t a1, uint64_t a2)
{
  v63[2] = *MEMORY[0x1E69E9840];
  v4 = sub_1CFF0CB6C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v57 = v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v49 - v8;
  MEMORY[0x1EEE9AC00](v10);
  i = v49 - v11;
  if (!*(a2 + 16))
  {

    return MEMORY[0x1E69E7CD0];
  }

  v63[0] = a1;
  v12 = *(a1 + 16);

  v51 = v12;
  if (!v12)
  {
    goto LABEL_30;
  }

  v13 = 0;
  v15 = *(v5 + 16);
  v14 = v5 + 16;
  v16 = *(v14 + 64);
  v53 = a1;
  v54 = a1 + ((v16 + 32) & ~v16);
  v60 = *(v14 + 56);
  v61 = v15;
  v58 = (a2 + 56);
  v59 = a2;
  v62 = v14;
  v17 = (v14 - 8);
  v50 = ((v14 - 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
  while (1)
  {
    v55 = v13 + 1;
    v63[1] = v13 + 1;
    v61(i, v54 + v60 * v13, v4);
    v52 = sub_1CFEE9FB8(&qword_1EDEC5190, MEMORY[0x1E69A2E68]);
    v18 = sub_1CFF0E44C();
    v19 = -1 << *(a2 + 32);
    v20 = v18 & ~v19;
    v21 = v20 >> 6;
    v22 = 1 << v20;
    if (((1 << v20) & v58[v20 >> 6]) != 0)
    {
      break;
    }

    v25 = *v17;
LABEL_10:
    v25(i, v4);
    v13 = v55;
    if (v55 == v51)
    {
      goto LABEL_30;
    }
  }

  v23 = ~v19;
  while (1)
  {
    v61(v9, *(v59 + 48) + v20 * v60, v4);
    sub_1CFEE9FB8(&qword_1EDEC4CD8, MEMORY[0x1E69A2E68]);
    v24 = sub_1CFF0E4CC();
    v25 = *v17;
    (*v17)(v9, v4);
    if (v24)
    {
      break;
    }

    v20 = (v20 + 1) & v23;
    v21 = v20 >> 6;
    v22 = 1 << v20;
    if (((1 << v20) & v58[v20 >> 6]) == 0)
    {
      a2 = v59;
      goto LABEL_10;
    }
  }

  v26 = (v25)(i, v4);
  v27 = v59;
  v28 = *(v59 + 32);
  v49[0] = ((1 << v28) + 63) >> 6;
  v29 = 8 * v49[0];
  if ((v28 & 0x3Fu) > 0xD)
  {
    goto LABEL_34;
  }

  while (2)
  {
    v49[1] = v49;
    MEMORY[0x1EEE9AC00](v26);
    v31 = v49 - ((v30 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v31, v58, v30);
    v32 = *(v27 + 16);
    *&v31[8 * v21] &= ~v22;
    v50 = v31;
    v51 = (v32 - 1);
    v33 = *(v53 + 16);
    v34 = v55;
    for (i = v33; ; v33 = i)
    {
      if (v34 == v33)
      {
        a2 = sub_1CFEE98E4(v50, v49[0], v51, v27);
        goto LABEL_30;
      }

      if (v34 >= *(v53 + 16))
      {
        break;
      }

      v55 = v34;
      v61(v57, v54 + v34 * v60, v4);
      v36 = sub_1CFF0E44C();
      v37 = -1 << *(v27 + 32);
      v20 = v36 & ~v37;
      v22 = v20 >> 6;
      v21 = 1 << v20;
      if (((1 << v20) & v58[v20 >> 6]) == 0)
      {
        goto LABEL_15;
      }

      v61(v9, *(v59 + 48) + v20 * v60, v4);
      v38 = sub_1CFF0E4CC();
      v25(v9, v4);
      if ((v38 & 1) == 0)
      {
        v39 = ~v37;
        while (1)
        {
          v20 = (v20 + 1) & v39;
          v22 = v20 >> 6;
          v21 = 1 << v20;
          if (((1 << v20) & v58[v20 >> 6]) == 0)
          {
            break;
          }

          v61(v9, *(v59 + 48) + v20 * v60, v4);
          v40 = sub_1CFF0E4CC();
          v25(v9, v4);
          if (v40)
          {
            goto LABEL_25;
          }
        }

LABEL_15:
        v25(v57, v4);
        v27 = v59;
LABEL_16:
        v35 = v55;
        goto LABEL_17;
      }

LABEL_25:
      v25(v57, v4);
      v41 = v50[v22];
      v50[v22] = v41 & ~v21;
      v27 = v59;
      if ((v41 & v21) == 0)
      {
        goto LABEL_16;
      }

      v42 = v51 - 1;
      v35 = v55;
      if (__OFSUB__(v51, 1))
      {
        goto LABEL_33;
      }

      --v51;
      if (!v42)
      {

        a2 = MEMORY[0x1E69E7CD0];
        goto LABEL_30;
      }

LABEL_17:
      v34 = v35 + 1;
    }

    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    v44 = v29;

    v45 = v44;
    if (swift_stdlib_isStackAllocationSafe())
    {
      v46 = v59;

      v27 = v46;
      continue;
    }

    break;
  }

  v47 = swift_slowAlloc();
  memcpy(v47, v58, v45);
  sub_1CFEE94F0(v47, v49[0], v59, v20, v63);
  a2 = v48;

  MEMORY[0x1D387A160](v47, -1, -1);
LABEL_30:

  return a2;
}

void sub_1CFEE94F0(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v35 = a2;
  v9 = sub_1CFF0CB6C();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v42 = &v35 - v14;
  v16.n128_f64[0] = MEMORY[0x1EEE9AC00](v15);
  v48 = &v35 - v17;
  v18 = *(a3 + 16);
  *(a1 + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v36 = a1;
  v37 = v18 - 1;
  v19 = *a5;
  v20 = a5[1];
  v21 = *(*a5 + 16);
  if (v20 == v21)
  {
LABEL_2:

    sub_1CFEE98E4(v36, v35, v37, a3);
    return;
  }

  v40 = v10 + 32;
  v41 = v10;
  v43 = a3 + 56;
  v38 = a5;
  v46 = v10 + 16;
  v47 = (v10 + 8);
  while (v20 < v21)
  {
    v23 = *(v10 + 80);
    v45 = *(v10 + 72);
    v24 = v42;
    v44 = *(v10 + 16);
    v44(v42, v19 + ((v23 + 32) & ~v23) + v45 * v20, v9, v16);
    a5[1] = v20 + 1;
    (*(v10 + 32))(v48, v24, v9);
    sub_1CFEE9FB8(&qword_1EDEC5190, MEMORY[0x1E69A2E68]);
    v25 = sub_1CFF0E44C();
    v26 = -1 << *(a3 + 32);
    v27 = v25 & ~v26;
    v28 = v27 >> 6;
    v29 = 1 << v27;
    if (((1 << v27) & *(v43 + 8 * (v27 >> 6))) == 0)
    {
      v22 = *v47;
LABEL_5:
      v22(v48, v9);
      goto LABEL_6;
    }

    v39 = v47 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v30 = a3;
    v31 = ~v26;
    while (1)
    {
      (v44)(v12, *(v30 + 48) + v27 * v45, v9);
      sub_1CFEE9FB8(&qword_1EDEC4CD8, MEMORY[0x1E69A2E68]);
      v32 = sub_1CFF0E4CC();
      v22 = *v47;
      (*v47)(v12, v9);
      if (v32)
      {
        break;
      }

      v27 = (v27 + 1) & v31;
      v28 = v27 >> 6;
      v29 = 1 << v27;
      if (((1 << v27) & *(v43 + 8 * (v27 >> 6))) == 0)
      {
        a3 = v30;
        a5 = v38;
        goto LABEL_5;
      }
    }

    v22(v48, v9);
    v33 = v36[v28];
    v36[v28] = v33 & ~v29;
    if ((v33 & v29) == 0)
    {
      a3 = v30;
      a5 = v38;
LABEL_6:
      v10 = v41;
      goto LABEL_7;
    }

    v34 = v37 - 1;
    v10 = v41;
    if (__OFSUB__(v37, 1))
    {
      goto LABEL_20;
    }

    a3 = v30;
    a5 = v38;
    --v37;
    if (!v34)
    {
      return;
    }

LABEL_7:
    v19 = *a5;
    v20 = a5[1];
    v21 = *(*a5 + 16);
    if (v20 == v21)
    {
      goto LABEL_2;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
}

uint64_t sub_1CFEE98E4(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = sub_1CFF0CB6C();
  v8 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v34 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return MEMORY[0x1E69E7CD0];
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  sub_1CFEA3D34();
  result = sub_1CFF0E93C();
  v10 = result;
  if (a2 < 1)
  {
    v12 = 0;
  }

  else
  {
    v12 = *a1;
  }

  v13 = 0;
  v14 = result + 56;
  v30 = (v8 + 32);
  v31 = v8 + 16;
  v29 = a4;
  while (v12)
  {
    v15 = __clz(__rbit64(v12));
    v32 = (v12 - 1) & v12;
LABEL_16:
    v18 = *(a4 + 48);
    v33 = *(v8 + 72);
    (*(v8 + 16))(v34, v18 + v33 * (v15 | (v13 << 6)), v35);
    sub_1CFEE9FB8(&qword_1EDEC5190, MEMORY[0x1E69A2E68]);
    result = sub_1CFF0E44C();
    v19 = -1 << *(v10 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v14 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v14 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v14 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v14 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    result = (*v30)(*(v10 + 48) + v22 * v33, v34, v35);
    ++*(v10 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v29;
    v12 = v32;
    if (!a3)
    {
LABEL_28:

      return v10;
    }
  }

  v16 = v13;
  while (1)
  {
    v13 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v13 >= a2)
    {
      goto LABEL_28;
    }

    v17 = a1[v13];
    ++v16;
    if (v17)
    {
      v15 = __clz(__rbit64(v17));
      v32 = (v17 - 1) & v17;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

BOOL sub_1CFEE9C00(uint64_t a1, uint64_t a2)
{
  v4 = sub_1CFF0CB6C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for OvernightMetricsChartAnimationValues.Selection();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFEEA938();
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v14 + 56);
  sub_1CFEEA9E8(a1, v13);
  sub_1CFEEA9E8(a2, &v13[v15]);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) == 1)
  {
    v17 = 1;
    v18 = v16(&v13[v15], 1, v4);
    v19 = type metadata accessor for OvernightMetricsChartAnimationValues.Selection;
    if (v18 == 1)
    {
      goto LABEL_8;
    }
  }

  else
  {
    sub_1CFEEA9E8(v13, v10);
    if (v16(&v13[v15], 1, v4) != 1)
    {
      (*(v5 + 32))(v7, &v13[v15], v4);
      sub_1CFEE9FB8(&qword_1EDEC4CD0, MEMORY[0x1E69A2E68]);
      sub_1CFF0E63C();
      sub_1CFF0E63C();
      v20 = *(v5 + 8);
      v20(v7, v4);
      v17 = v22[1] == v22[0];
      v20(v10, v4);
      v19 = type metadata accessor for OvernightMetricsChartAnimationValues.Selection;
      goto LABEL_8;
    }

    (*(v5 + 8))(v10, v4);
  }

  v17 = 0;
  v19 = sub_1CFEEA938;
LABEL_8:
  sub_1CFEEAA4C(v13, v19);
  return v17;
}

uint64_t sub_1CFEE9FB8(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1CFEEA008()
{
  if (!qword_1EDEC1C48)
  {
    sub_1CFEEA1BC();
    sub_1CFEEA7A0();
    sub_1CFEEA348();
    sub_1CFEEA4A4();
    sub_1CFEEA5D8();
    sub_1CFEEA6DC();
    sub_1CFEE9FB8(&qword_1EDEC20D8, sub_1CFEEA7A0);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EDEC1C48);
    }
  }
}

void sub_1CFEEA1BC()
{
  if (!qword_1EDEC1C50)
  {
    sub_1CFEEA348();
    sub_1CFEEA7A0();
    sub_1CFEEA4A4();
    sub_1CFEEA5D8();
    sub_1CFEEA6DC();
    sub_1CFEE9FB8(&qword_1EDEC20D8, sub_1CFEEA7A0);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EDEC1C50);
    }
  }
}

void sub_1CFEEA348()
{
  if (!qword_1EDEC1C58)
  {
    sub_1CFEEA4A4();
    sub_1CFEEA7A0();
    sub_1CFEEA5D8();
    sub_1CFEEA6DC();
    sub_1CFEE9FB8(&qword_1EDEC20D8, sub_1CFEEA7A0);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EDEC1C58);
    }
  }
}

void sub_1CFEEA4A4()
{
  if (!qword_1EDEC1C60)
  {
    sub_1CFEEA5D8();
    sub_1CFEEA7A0();
    sub_1CFEEA6DC();
    sub_1CFEE9FB8(&qword_1EDEC20D8, sub_1CFEEA7A0);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EDEC1C60);
    }
  }
}

void sub_1CFEEA5D8()
{
  if (!qword_1EDEC1C68)
  {
    sub_1CFEEA6DC();
    sub_1CFEEA7A0();
    sub_1CFEE9FB8(&qword_1EDEC20D8, sub_1CFEEA7A0);
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EDEC1C68);
    }
  }
}

void sub_1CFEEA6DC()
{
  if (!qword_1EDEC1C70)
  {
    sub_1CFEEA7A0();
    sub_1CFEE9FB8(&qword_1EDEC20D8, sub_1CFEEA7A0);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EDEC1C70);
    }
  }
}

void sub_1CFEEA7A0()
{
  if (!qword_1EDEC20D0)
  {
    sub_1CFEEB178(255, &qword_1EDEC2060, MEMORY[0x1E69E63B0], MEMORY[0x1E6981FE0], MEMORY[0x1E697E3F8]);
    sub_1CFEEA850();
    v0 = sub_1CFF0D56C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDEC20D0);
    }
  }
}

unint64_t sub_1CFEEA850()
{
  result = qword_1EDEC2068;
  if (!qword_1EDEC2068)
  {
    sub_1CFEEB178(255, &qword_1EDEC2060, MEMORY[0x1E69E63B0], MEMORY[0x1E6981FE0], MEMORY[0x1E697E3F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEC2068);
  }

  return result;
}

void sub_1CFEEA938()
{
  if (!qword_1EDEC2A90)
  {
    type metadata accessor for OvernightMetricsChartAnimationValues.Selection();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDEC2A90);
    }
  }
}

uint64_t type metadata accessor for OvernightMetricsChartAnimationValues.Selection()
{
  result = qword_1EDEC2B08;
  if (!qword_1EDEC2B08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1CFEEA9E8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OvernightMetricsChartAnimationValues.Selection();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1CFEEAA4C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1CFEEAAAC()
{
  if (!qword_1EDEC49F0)
  {
    sub_1CFF0CB6C();
    v0 = sub_1CFF0EBAC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDEC49F0);
    }
  }
}

uint64_t sub_1CFEEAB04(uint64_t a1)
{
  v2 = sub_1CFF0CB6C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v17 - v7;
  v9 = *(a1 + 16);
  v10 = sub_1CFEE9FB8(&qword_1EDEC5190, MEMORY[0x1E69A2E68]);
  result = MEMORY[0x1D38794C0](v9, v2, v10);
  v18 = result;
  if (v9)
  {
    v14 = *(v3 + 16);
    v12 = v3 + 16;
    v13 = v14;
    v15 = a1 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v16 = *(v12 + 56);
    do
    {
      v13(v5, v15, v2);
      sub_1CFEE7150(v8, v5);
      (*(v12 - 8))(v8, v2);
      v15 += v16;
      --v9;
    }

    while (v9);
    return v18;
  }

  return result;
}

void sub_1CFEEACA0(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_1CFF0D65C();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void sub_1CFEEAD04()
{
  if (!qword_1EDEC1C40)
  {
    sub_1CFEEADC8();
    sub_1CFEE9FB8(&qword_1EDEC20C8, sub_1CFEEADC8);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EDEC1C40);
    }
  }
}

void sub_1CFEEADC8()
{
  if (!qword_1EDEC20C0)
  {
    sub_1CFEEAEF0();
    sub_1CFEEAFEC();
    sub_1CFEEB178(255, &qword_1EDEC2060, MEMORY[0x1E69E63B0], MEMORY[0x1E6981FE0], MEMORY[0x1E697E3F8]);
    sub_1CFEEA850();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    v0 = sub_1CFF0D56C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDEC20C0);
    }
  }
}

void sub_1CFEEAEF0()
{
  if (!qword_1EDEC1AC8)
  {
    sub_1CFEEAFEC();
    sub_1CFEEB178(255, &qword_1EDEC2060, MEMORY[0x1E69E63B0], MEMORY[0x1E6981FE0], MEMORY[0x1E697E3F8]);
    sub_1CFEEA850();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EDEC1AC8);
    }
  }
}

void sub_1CFEEAFEC()
{
  if (!qword_1EDEC1AD0)
  {
    sub_1CFEEB178(255, &qword_1EDEC2060, MEMORY[0x1E69E63B0], MEMORY[0x1E6981FE0], MEMORY[0x1E697E3F8]);
    sub_1CFEEA850();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EDEC1AD0);
    }
  }
}

uint64_t sub_1CFEEB120()
{
  v0 = sub_1CFF0CB6C();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v0;
}

void sub_1CFEEB178(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = a5(0, a3, a4);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1CFEEB21C()
{
  sub_1CFF0CB6C();
  if (v0 <= 0x3F)
  {
    sub_1CFF0C7AC();
    if (v1 <= 0x3F)
    {
      sub_1CFE55184();
      if (v2 <= 0x3F)
      {
        sub_1CFF0CCEC();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_1CFEEB2EC()
{
  sub_1CFF0EC3C();
  sub_1CFF0CB6C();
  sub_1CFEECA0C(&qword_1EDEC5190, MEMORY[0x1E69A2E68]);
  sub_1CFF0E45C();
  sub_1CFF0C7AC();
  sub_1CFEECA0C(&qword_1EDEC49A8, MEMORY[0x1E6969530]);
  sub_1CFF0E45C();
  return sub_1CFF0EC7C();
}

uint64_t sub_1CFEEB3D8()
{
  sub_1CFF0CB6C();
  sub_1CFEECA0C(&qword_1EDEC5190, MEMORY[0x1E69A2E68]);
  sub_1CFF0E45C();
  sub_1CFF0C7AC();
  sub_1CFEECA0C(&qword_1EDEC49A8, MEMORY[0x1E6969530]);
  return sub_1CFF0E45C();
}

uint64_t sub_1CFEEB4AC()
{
  sub_1CFF0EC3C();
  sub_1CFF0CB6C();
  sub_1CFEECA0C(&qword_1EDEC5190, MEMORY[0x1E69A2E68]);
  sub_1CFF0E45C();
  sub_1CFF0C7AC();
  sub_1CFEECA0C(&qword_1EDEC49A8, MEMORY[0x1E6969530]);
  sub_1CFF0E45C();
  return sub_1CFF0EC7C();
}

uint64_t sub_1CFEEB594()
{
  sub_1CFF0CB6C();
  sub_1CFEECA0C(&qword_1EDEC4CD0, MEMORY[0x1E69A2E68]);
  sub_1CFF0E63C();
  sub_1CFF0E63C();
  if (v3 == v2)
  {
    v0 = sub_1CFF0C77C();
  }

  else
  {
    v0 = 0;
  }

  return v0 & 1;
}

unint64_t sub_1CFEEB668(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v4 = 0x6570795461746164;
    v5 = 0xD000000000000017;
    if (a1 != 2)
    {
      v5 = 0xD000000000000023;
    }

    if (a1)
    {
      v4 = 1702125924;
    }

    if (a1 <= 1u)
    {
      return v4;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0xD00000000000001DLL;
    if (a1 != 7)
    {
      v1 = 0xD000000000000012;
    }

    if (a1 == 6)
    {
      v1 = 0xD00000000000001ALL;
    }

    v2 = 0x65756C6176;
    if (a1 != 4)
    {
      v2 = 0x6966697373616C63;
    }

    if (a1 <= 5u)
    {
      return v2;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_1CFEEB79C(void *a1)
{
  v3 = v1;
  sub_1CFEECC10(0, &qword_1EC512B38, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v14 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CFEECB04();
  sub_1CFF0EC9C();
  LOBYTE(v14) = 0;
  sub_1CFF0CB6C();
  sub_1CFEECA0C(&qword_1EC5126C8, MEMORY[0x1E69A2E68]);
  sub_1CFF0EB7C();
  if (!v2)
  {
    v10 = type metadata accessor for IndividualOvernightMetricChartPoint(0);
    LOBYTE(v14) = 1;
    sub_1CFF0C7AC();
    sub_1CFEECA0C(&qword_1EC5125F0, MEMORY[0x1E6969530]);
    sub_1CFF0EB7C();
    LOBYTE(v14) = 2;
    sub_1CFE55184();
    sub_1CFEECC74(&qword_1EC5125E8, &qword_1EC5125F0);
    sub_1CFF0EB7C();
    LOBYTE(v14) = 3;
    sub_1CFF0EB7C();
    v11 = (v3 + *(v10 + 32));
    v12 = *v11;
    LOBYTE(v11) = *(v11 + 8);
    v14 = v12;
    v15 = v11;
    v16 = 4;
    sub_1CFEECD04();
    sub_1CFF0EB7C();
    LOBYTE(v14) = 5;
    sub_1CFF0CCEC();
    sub_1CFEECA0C(&qword_1EC512608, MEMORY[0x1E69A2EF8]);
    sub_1CFF0EB7C();
    LOBYTE(v14) = 6;
    sub_1CFF0EB4C();
    LOBYTE(v14) = 7;
    sub_1CFF0EB4C();
    LOBYTE(v14) = 8;
    sub_1CFF0EB4C();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_1CFEEBBC0()
{
  sub_1CFF0CB6C();
  sub_1CFEECA0C(&qword_1EDEC5190, MEMORY[0x1E69A2E68]);
  sub_1CFF0E45C();
  v1 = type metadata accessor for IndividualOvernightMetricChartPoint(0);
  sub_1CFF0C7AC();
  sub_1CFEECA0C(&qword_1EDEC49A8, MEMORY[0x1E6969530]);
  sub_1CFF0E45C();
  sub_1CFF0E45C();
  sub_1CFE55184();
  sub_1CFF0E45C();
  sub_1CFF0E45C();
  sub_1CFF0E45C();
  v2 = (v0 + *(v1 + 32));
  if (v2[1])
  {
    MEMORY[0x1D3879980](1);
  }

  else
  {
    v3 = *v2;
    MEMORY[0x1D3879980](0);
    if ((v3 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v4 = v3;
    }

    else
    {
      v4 = 0;
    }

    MEMORY[0x1D38799A0](v4);
  }

  sub_1CFF0CCEC();
  sub_1CFEECA0C(&qword_1EDEC5188, MEMORY[0x1E69A2EF8]);
  sub_1CFF0E45C();
  sub_1CFF0E5EC();
  sub_1CFF0E5EC();

  return sub_1CFF0E5EC();
}

uint64_t sub_1CFEEBDFC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v50 = a2;
  v3 = sub_1CFF0CCEC();
  v55 = *(v3 - 8);
  v56 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v51 = v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFE55184();
  v54 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v52 = v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v53 = v48 - v8;
  v9 = sub_1CFF0C7AC();
  v57 = *(v9 - 8);
  v58 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1CFF0CB6C();
  v59 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v61 = v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFEECC10(0, &qword_1EC512B20, MEMORY[0x1E69E6F48]);
  v62 = v14;
  v60 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = v48 - v15;
  v17 = type metadata accessor for IndividualOvernightMetricChartPoint(0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = v48 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CFEECB04();
  v63 = v16;
  v20 = v64;
  sub_1CFF0EC8C();
  if (v20)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v21 = v60;
  v49 = v17;
  v64 = v19;
  LOBYTE(v65) = 0;
  sub_1CFEECA0C(&qword_1EC512728, MEMORY[0x1E69A2E68]);
  v22 = v61;
  sub_1CFF0EB0C();
  v23 = *(v59 + 32);
  v24 = v64;
  v61 = v12;
  v23(v64, v22, v12);
  LOBYTE(v65) = 1;
  sub_1CFEECA0C(&qword_1EC512620, MEMORY[0x1E6969530]);
  v25 = v11;
  v26 = v58;
  sub_1CFF0EB0C();
  v27 = v49;
  (*(v57 + 32))(&v24[v49[5]], v25, v26);
  LOBYTE(v65) = 2;
  sub_1CFEECC74(&qword_1EC512618, &qword_1EC512620);
  v28 = v53;
  v48[1] = 0;
  sub_1CFF0EB0C();
  sub_1CFE89CE4(v28, &v24[v27[6]]);
  LOBYTE(v65) = 3;
  v29 = v52;
  sub_1CFF0EB0C();
  v30 = v21;
  sub_1CFE89CE4(v29, &v24[v27[7]]);
  v67 = 4;
  sub_1CFEECB58();
  sub_1CFF0EB0C();
  v31 = v66;
  v32 = &v24[v27[8]];
  *v32 = v65;
  v32[8] = v31;
  LOBYTE(v65) = 5;
  sub_1CFEECA0C(&qword_1EC512638, MEMORY[0x1E69A2EF8]);
  v33 = v51;
  v34 = v56;
  sub_1CFF0EB0C();
  (*(v55 + 32))(&v24[v27[9]], v33, v34);
  LOBYTE(v65) = 6;
  v35 = sub_1CFF0EADC();
  v36 = &v24[v27[10]];
  *v36 = v35;
  v36[1] = v37;
  LOBYTE(v65) = 7;
  v38 = sub_1CFF0EADC();
  v39 = &v64[v27[11]];
  *v39 = v38;
  v39[1] = v40;
  LOBYTE(v65) = 8;
  v41 = sub_1CFF0EADC();
  v43 = v42;
  (*(v30 + 8))(v63, v62);
  v44 = v50;
  v45 = v64;
  v46 = &v64[v49[12]];
  *v46 = v41;
  v46[1] = v43;
  sub_1CFEECBAC(v45, v44);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return sub_1CFEC93B0(v45, type metadata accessor for IndividualOvernightMetricChartPoint);
}

uint64_t sub_1CFEEC7A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1CFEED2F0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1CFEEC7D8(uint64_t a1)
{
  v2 = sub_1CFEECB04();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CFEEC814(uint64_t a1)
{
  v2 = sub_1CFEECB04();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1CFEEC850()
{
  sub_1CFF0EC3C();
  sub_1CFEEBBC0();
  return sub_1CFF0EC7C();
}

uint64_t sub_1CFEEC894()
{
  sub_1CFF0EC3C();
  sub_1CFEEBBC0();
  return sub_1CFF0EC7C();
}

uint64_t sub_1CFEEC900@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1CFF0CB6C();
  (*(*(v5 - 8) + 16))(a2, v2, v5);
  v6 = *(a1 + 20);
  v7 = *(type metadata accessor for IndividualOvernightMetricChartPoint.ID(0) + 20);
  v8 = sub_1CFF0C7AC();
  v9 = *(*(v8 - 8) + 16);

  return v9(a2 + v7, v2 + v6, v8);
}

uint64_t sub_1CFEECA0C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1CFEECB04()
{
  result = qword_1EC512B28;
  if (!qword_1EC512B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC512B28);
  }

  return result;
}

unint64_t sub_1CFEECB58()
{
  result = qword_1EC512B30;
  if (!qword_1EC512B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC512B30);
  }

  return result;
}

uint64_t sub_1CFEECBAC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IndividualOvernightMetricChartPoint(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1CFEECC10(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1CFEECB04();
    v7 = a3(a1, &type metadata for IndividualOvernightMetricChartPoint.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1CFEECC74(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_1CFE55184();
    sub_1CFEECA0C(a2, MEMORY[0x1E6969530]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1CFEECD04()
{
  result = qword_1EC512B40;
  if (!qword_1EC512B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC512B40);
  }

  return result;
}

uint64_t sub_1CFEECD58(uint64_t a1, uint64_t a2)
{
  sub_1CFF0CB6C();
  sub_1CFEECA0C(&qword_1EDEC4CD0, MEMORY[0x1E69A2E68]);
  sub_1CFF0E63C();
  sub_1CFF0E63C();
  if (v25 != v24)
  {
    goto LABEL_23;
  }

  v4 = type metadata accessor for IndividualOvernightMetricChartPoint(0);
  if ((sub_1CFF0C77C() & 1) == 0)
  {
    goto LABEL_23;
  }

  sub_1CFF0C7AC();
  sub_1CFEECA0C(&qword_1EDEC4D00, MEMORY[0x1E6969530]);
  if ((sub_1CFF0E4CC() & 1) == 0)
  {
    goto LABEL_23;
  }

  sub_1CFE55184();
  if ((sub_1CFF0E4CC() & 1) == 0 || (sub_1CFF0E4CC() & 1) == 0 || (sub_1CFF0E4CC() & 1) == 0)
  {
    goto LABEL_23;
  }

  v5 = v4[8];
  v6 = (a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = *(a2 + v5 + 8);
  if (v7)
  {
    if (!v9)
    {
LABEL_23:
      v22 = 0;
      return v22 & 1;
    }
  }

  else
  {
    if (*v6 != *v8)
    {
      LOBYTE(v9) = 1;
    }

    if (v9)
    {
      goto LABEL_23;
    }
  }

  if ((sub_1CFF0CCDC() & 1) == 0)
  {
    goto LABEL_23;
  }

  v10 = v4[10];
  v11 = *(a1 + v10);
  v12 = *(a1 + v10 + 8);
  v13 = (a2 + v10);
  if ((v11 != *v13 || v12 != v13[1]) && (sub_1CFF0EBCC() & 1) == 0)
  {
    goto LABEL_23;
  }

  v14 = v4[11];
  v15 = *(a1 + v14);
  v16 = *(a1 + v14 + 8);
  v17 = (a2 + v14);
  if ((v15 != *v17 || v16 != v17[1]) && (sub_1CFF0EBCC() & 1) == 0)
  {
    goto LABEL_23;
  }

  v18 = v4[12];
  v19 = *(a1 + v18);
  v20 = *(a1 + v18 + 8);
  v21 = (a2 + v18);
  if (v19 == *v21 && v20 == v21[1])
  {
    v22 = 1;
  }

  else
  {
    v22 = sub_1CFF0EBCC();
  }

  return v22 & 1;
}

uint64_t getEnumTagSinglePayload for IndividualOvernightMetricChartPoint.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

  if (a2 + 8 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 8) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 8;
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

      return (*a1 | (v4 << 8)) - 8;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for IndividualOvernightMetricChartPoint.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF8)
  {
    v4 = 0;
  }

  if (a2 > 0xF7)
  {
    v5 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1CFEED164()
{
  result = sub_1CFF0CB6C();
  if (v1 <= 0x3F)
  {
    result = sub_1CFF0C7AC();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_1CFEED1EC()
{
  result = qword_1EC512B48;
  if (!qword_1EC512B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC512B48);
  }

  return result;
}

unint64_t sub_1CFEED244()
{
  result = qword_1EC512B50;
  if (!qword_1EC512B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC512B50);
  }

  return result;
}

unint64_t sub_1CFEED29C()
{
  result = qword_1EC512B58;
  if (!qword_1EC512B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC512B58);
  }

  return result;
}

uint64_t sub_1CFEED2F0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6570795461746164 && a2 == 0xE800000000000000;
  if (v4 || (sub_1CFF0EBCC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1702125924 && a2 == 0xE400000000000000 || (sub_1CFF0EBCC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001CFF155B0 == a2 || (sub_1CFF0EBCC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000023 && 0x80000001CFF165D0 == a2 || (sub_1CFF0EBCC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x65756C6176 && a2 == 0xE500000000000000 || (sub_1CFF0EBCC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6966697373616C63 && a2 == 0xEE006E6F69746163 || (sub_1CFF0EBCC() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD00000000000001ALL && 0x80000001CFF16600 == a2 || (sub_1CFF0EBCC() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD00000000000001DLL && 0x80000001CFF16620 == a2 || (sub_1CFF0EBCC() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001CFF16110 == a2)
  {

    return 8;
  }

  else
  {
    v6 = sub_1CFF0EBCC();

    if (v6)
    {
      return 8;
    }

    else
    {
      return 9;
    }
  }
}

uint64_t sub_1CFEED5DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1CFEF6E9C(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFEEF6E4(a3, v11, sub_1CFEF6E9C);
  v12 = sub_1CFF0E70C();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_1CFEF7A60(v11, sub_1CFEF6E9C);
  }

  else
  {
    sub_1CFF0E6FC();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_1CFF0E66C();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_1CFF0E5DC() + 32;
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

uint64_t SleepingSampleViewModelProvider.DataFreshness.hashValue.getter()
{
  v1 = *v0;
  sub_1CFF0EC3C();
  MEMORY[0x1D3879980](v1);
  return sub_1CFF0EC7C();
}

uint64_t sub_1CFEED924()
{
  v1 = v0;
  v20[1] = *v0;
  v2 = sub_1CFF0D03C();
  v21 = *(v2 - 8);
  v22 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v4 = v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1CFF0CADC();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v25 = v0;
  sub_1CFEF7C74(&qword_1EDEC32F0, type metadata accessor for SleepingSampleViewModelProvider);
  sub_1CFF0C8DC();

  v9 = OBJC_IVAR____TtC15HealthBalanceUI31SleepingSampleViewModelProvider__dayRange;
  swift_beginAccess();
  (*(v6 + 16))(v8, v1 + v9, v5);
  sub_1CFEF7C74(&qword_1EC512658, MEMORY[0x1E69A2E08]);
  LOBYTE(v9) = sub_1CFF0E4CC();
  result = (*(v6 + 8))(v8, v5);
  if ((v9 & 1) == 0)
  {
    swift_getKeyPath();
    v24 = v1;
    sub_1CFF0C8DC();

    if (*(v1 + OBJC_IVAR____TtC15HealthBalanceUI31SleepingSampleViewModelProvider__queryTask))
    {
      swift_getKeyPath();
      v24 = v1;
      sub_1CFF0C8DC();

      v11 = OBJC_IVAR____TtC15HealthBalanceUI31SleepingSampleViewModelProvider__dataFreshness;
      swift_beginAccess();
      if (*(v1 + v11) == 2)
      {
        sub_1CFF0D01C();
        v12 = sub_1CFF0D02C();
        v13 = sub_1CFF0E7EC();
        if (os_log_type_enabled(v12, v13))
        {
          v14 = swift_slowAlloc();
          v20[0] = swift_slowAlloc();
          v23 = v20[0];
          *v14 = 136446210;
          v15 = sub_1CFF0ED2C();
          v17 = sub_1CFE462A4(v15, v16, &v23);

          *(v14 + 4) = v17;
          _os_log_impl(&dword_1CFE44000, v12, v13, "[%{public}s] Indicating current view models are now stale for updated day range", v14, 0xCu);
          v18 = v20[0];
          __swift_destroy_boxed_opaque_existential_0(v20[0]);
          MEMORY[0x1D387A160](v18, -1, -1);
          MEMORY[0x1D387A160](v14, -1, -1);
        }

        (*(v21 + 8))(v4, v22);
        if (*(v1 + v11) != 1)
        {
          KeyPath = swift_getKeyPath();
          MEMORY[0x1EEE9AC00](KeyPath);
          v20[-2] = v1;
          LOBYTE(v20[-1]) = 1;
          v23 = v1;
          sub_1CFF0C8CC();
        }
      }

      return sub_1CFEF14B8();
    }
  }

  return result;
}

void (*sub_1CFEEDDC0(uint64_t *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x90uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = sub_1CFF0CADC();
  v5[10] = v6;
  v7 = *(v6 - 8);
  v8 = v7;
  v5[11] = v7;
  v9 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v9);
    v10 = malloc(v9);
  }

  v11 = v10;
  v12 = OBJC_IVAR____TtC15HealthBalanceUI31SleepingSampleViewModelProvider__dayRange;
  v5[14] = v10;
  v5[15] = v12;
  swift_beginAccess();
  v13 = *(v8 + 16);
  v5[16] = v13;
  v5[17] = (v8 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v13(v11, v1 + v12, v6);
  return sub_1CFEEDF34;
}

void sub_1CFEEDF34(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  v4 = *(*a1 + 112);
  v5 = *(*a1 + 120);
  v6 = *(*a1 + 96);
  v7 = *(*a1 + 104);
  v8 = *(*a1 + 80);
  v9 = *(*a1 + 88);
  v10 = *(*a1 + 72);
  if (a2)
  {
    v3(*(*a1 + 104), v4, v8);
    v3(v6, (v10 + v5), v8);
    swift_beginAccess();
    (*(v9 + 24))(v10 + v5, v7, v8);
    swift_endAccess();
    sub_1CFEED924();
    v11 = *(v9 + 8);
    v11(v6, v8);
  }

  else
  {
    v3(*(*a1 + 104), (v10 + v5), v8);
    swift_beginAccess();
    (*(v9 + 24))(v10 + v5, v4, v8);
    swift_endAccess();
    sub_1CFEED924();
    v11 = *(v9 + 8);
  }

  v11(v7, v8);
  v11(v4, v8);
  free(v4);
  free(v7);
  free(v6);

  free(v2);
}

uint64_t sub_1CFEEE0B8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1CFEF7C74(&qword_1EDEC32F0, type metadata accessor for SleepingSampleViewModelProvider);
  sub_1CFF0C8DC();

  v4 = OBJC_IVAR____TtC15HealthBalanceUI31SleepingSampleViewModelProvider__dayRange;
  swift_beginAccess();
  v5 = sub_1CFF0CADC();
  return (*(*(v5 - 8) + 16))(a2, v3 + v4, v5);
}

uint64_t sub_1CFEEE1B0(uint64_t a1)
{
  v2 = sub_1CFF0CADC();
  v3 = MEMORY[0x1EEE9AC00](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v5, a1, v3);
  return sub_1CFEEE3C0(v5);
}

uint64_t sub_1CFEEE27C@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v6 = v1;
  sub_1CFEF7C74(&qword_1EDEC32F0, type metadata accessor for SleepingSampleViewModelProvider);
  sub_1CFF0C8DC();

  v3 = OBJC_IVAR____TtC15HealthBalanceUI31SleepingSampleViewModelProvider__dayRange;
  swift_beginAccess();
  v4 = sub_1CFF0CADC();
  return (*(*(v4 - 8) + 16))(a1, v6 + v3, v4);
}

uint64_t type metadata accessor for SleepingSampleViewModelProvider()
{
  result = qword_1EDEC32E0;
  if (!qword_1EDEC32E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1CFEEE3C0(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1CFF0CADC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v17 - v9;
  v11 = OBJC_IVAR____TtC15HealthBalanceUI31SleepingSampleViewModelProvider__dayRange;
  swift_beginAccess();
  v12 = *(v5 + 16);
  v12(v10, v2 + v11, v4);
  sub_1CFEF7C74(&qword_1EC512658, MEMORY[0x1E69A2E08]);
  v19 = a1;
  LOBYTE(a1) = sub_1CFF0E4CC();
  v18 = *(v5 + 8);
  v18(v10, v4);
  if (a1)
  {
    v12(v10, v19, v4);
    v12(v7, v2 + v11, v4);
    swift_beginAccess();
    (*(v5 + 24))(v2 + v11, v10, v4);
    swift_endAccess();
    sub_1CFEED924();
    v13 = v18;
    v18(v7, v4);
    v13(v10, v4);
    return (v13)(v19, v4);
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v16 = v19;
    *(&v17 - 2) = v2;
    *(&v17 - 1) = v16;
    v20 = v2;
    sub_1CFEF7C74(&qword_1EDEC32F0, type metadata accessor for SleepingSampleViewModelProvider);
    sub_1CFF0C8CC();

    return (v18)(v19, v4);
  }
}

uint64_t sub_1CFEEE6DC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1CFF0CADC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v16[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v16[-v10];
  v12 = *(v5 + 16);
  v12(&v16[-v10], a2, v4, v9);
  v13 = OBJC_IVAR____TtC15HealthBalanceUI31SleepingSampleViewModelProvider__dayRange;
  swift_beginAccess();
  (v12)(v7, a1 + v13, v4);
  swift_beginAccess();
  (*(v5 + 24))(a1 + v13, v11, v4);
  swift_endAccess();
  sub_1CFEED924();
  v14 = *(v5 + 8);
  v14(v7, v4);
  return (v14)(v11, v4);
}

void (*sub_1CFEEE8A8(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC15HealthBalanceUI31SleepingSampleViewModelProvider___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_1CFEF7C74(&qword_1EDEC32F0, type metadata accessor for SleepingSampleViewModelProvider);
  sub_1CFF0C8DC();

  *v4 = v1;
  swift_getKeyPath();
  sub_1CFF0C8FC();

  v4[7] = sub_1CFEEDDC0(v4);
  return sub_1CFEEE9E0;
}

uint64_t sub_1CFEEEA4C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1CFEF7C74(&qword_1EDEC32F0, type metadata accessor for SleepingSampleViewModelProvider);
  sub_1CFF0C8DC();

  v4 = OBJC_IVAR____TtC15HealthBalanceUI31SleepingSampleViewModelProvider__dataFreshness;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_1CFEEEB48@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_1CFEF7C74(&qword_1EDEC32F0, type metadata accessor for SleepingSampleViewModelProvider);
  sub_1CFF0C8DC();

  v3 = OBJC_IVAR____TtC15HealthBalanceUI31SleepingSampleViewModelProvider__dataFreshness;
  result = swift_beginAccess();
  *a1 = *(v5 + v3);
  return result;
}

uint64_t sub_1CFEEEC0C(unsigned __int8 *a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR____TtC15HealthBalanceUI31SleepingSampleViewModelProvider__dataFreshness;
  result = swift_beginAccess();
  if (*(v1 + v3) != v2)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1CFEF7C74(&qword_1EDEC32F0, type metadata accessor for SleepingSampleViewModelProvider);
    sub_1CFF0C8CC();
  }

  return result;
}

void (*sub_1CFEEED48(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC15HealthBalanceUI31SleepingSampleViewModelProvider___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_1CFEF7C74(&qword_1EDEC32F0, type metadata accessor for SleepingSampleViewModelProvider);
  sub_1CFF0C8DC();

  *v4 = v1;
  swift_getKeyPath();
  sub_1CFF0C8FC();

  v4[7] = sub_1CFEEE9EC();
  return sub_1CFEEEE80;
}

void sub_1CFEEEE8C(void *a1)
{
  v1 = *a1;
  (*(*a1 + 56))(*a1, 0);
  *v1 = v1[4];
  swift_getKeyPath();
  sub_1CFF0C8EC();

  free(v1);
}

uint64_t sub_1CFEEEF20@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1CFF0CADC();
  v41 = *(v4 - 8);
  v42 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v43 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFEEF4A0(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v46 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = type metadata accessor for OvernightMetricsViewModel.DataTypeVisibilityDerivationMethod(0);
  MEMORY[0x1EEE9AC00](v39);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v36 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v36 - v14;
  sub_1CFEEF4D4(0);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v40 = &v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v36 - v19;
  v21 = sub_1CFEEF684();
  v23 = v22;
  v24 = type metadata accessor for OvernightMetricsViewModel(0);
  v25 = *(v24 - 8);
  v26 = *(v25 + 48);
  v44 = v25 + 48;
  v45 = v26;
  if (v26(v23, 1, v24))
  {
    (v21)(v48, 0);
  }

  else
  {
    v37 = v21;
    v38 = a1;
    __swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtC15HealthBalanceUI31SleepingSampleViewModelProvider_featureStatusProvider), *(v2 + OBJC_IVAR____TtC15HealthBalanceUI31SleepingSampleViewModelProvider_featureStatusProvider + 24));
    sub_1CFF0CFAC();
    sub_1CFEEF6E4(v20, v15, sub_1CFEEF4D4);
    swift_storeEnumTagMultiPayload();
    v27 = *(v24 + 24);
    sub_1CFEEF6E4(v23 + v27, v12, type metadata accessor for OvernightMetricsViewModel.DataTypeVisibilityDerivationMethod);
    sub_1CFE97594(v15, v23 + v27);
    sub_1CFEEF6E4(v23 + v27, v9, type metadata accessor for OvernightMetricsViewModel.DataTypeVisibilityDerivationMethod);
    v28 = sub_1CFE9B8CC(v9, v12);
    sub_1CFEF7A60(v9, type metadata accessor for OvernightMetricsViewModel.DataTypeVisibilityDerivationMethod);
    if ((v28 & 1) == 0)
    {
      sub_1CFE8BE40();
    }

    sub_1CFEF7A60(v12, type metadata accessor for OvernightMetricsViewModel.DataTypeVisibilityDerivationMethod);
    sub_1CFEF7A60(v15, type metadata accessor for OvernightMetricsViewModel.DataTypeVisibilityDerivationMethod);
    sub_1CFEF7A60(v20, sub_1CFEEF4D4);
    (v37)(v48, 0);
    a1 = v38;
  }

  swift_getKeyPath();
  v48[0] = v2;
  sub_1CFEF7C74(&qword_1EDEC32F0, type metadata accessor for SleepingSampleViewModelProvider);
  sub_1CFF0C8DC();

  v29 = OBJC_IVAR____TtC15HealthBalanceUI31SleepingSampleViewModelProvider_queryResultOvernightMetricsModelWithFeatureStatusApplied;
  swift_beginAccess();
  v30 = v2 + v29;
  v31 = v46;
  sub_1CFEEF6E4(v30, v46, sub_1CFEEF4A0);
  if (v45(v31, 1, v24) != 1)
  {
    return sub_1CFEF6DB4(v31, a1, type metadata accessor for OvernightMetricsViewModel);
  }

  sub_1CFEF7A60(v31, sub_1CFEEF4A0);
  swift_getKeyPath();
  v47 = v2;
  sub_1CFF0C8DC();

  v32 = OBJC_IVAR____TtC15HealthBalanceUI31SleepingSampleViewModelProvider__dayRange;
  swift_beginAccess();
  v33 = v43;
  (*(v41 + 16))(v43, v2 + v32, v42);
  __swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtC15HealthBalanceUI31SleepingSampleViewModelProvider_featureStatusProvider), *(v2 + OBJC_IVAR____TtC15HealthBalanceUI31SleepingSampleViewModelProvider_featureStatusProvider + 24));
  v34 = v40;
  sub_1CFF0CFAC();
  return OvernightMetricsViewModel.init(dayRange:chronologicalDaySummaries:featureStatus:)(v33, MEMORY[0x1E69E7CC0], v34, a1);
}

uint64_t sub_1CFEEF508@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1CFEF7C74(&qword_1EDEC32F0, type metadata accessor for SleepingSampleViewModelProvider);
  sub_1CFF0C8DC();

  v4 = OBJC_IVAR____TtC15HealthBalanceUI31SleepingSampleViewModelProvider__queryResultOvernightMetricsModel;
  swift_beginAccess();
  return sub_1CFEEF6E4(v3 + v4, a2, sub_1CFEEF4A0);
}

uint64_t sub_1CFEEF5E4(uint64_t a1)
{
  sub_1CFEEF4A0(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFEEF6E4(a1, v4, sub_1CFEEF4A0);
  return sub_1CFEEF828(v4);
}

uint64_t sub_1CFEEF6E4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1CFEEF74C@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_1CFEF7C74(&qword_1EDEC32F0, type metadata accessor for SleepingSampleViewModelProvider);
  sub_1CFF0C8DC();

  v3 = OBJC_IVAR____TtC15HealthBalanceUI31SleepingSampleViewModelProvider__queryResultOvernightMetricsModel;
  swift_beginAccess();
  return sub_1CFEEF6E4(v5 + v3, a1, sub_1CFEEF4A0);
}

uint64_t sub_1CFEEF828(uint64_t a1)
{
  sub_1CFEEF4A0(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC15HealthBalanceUI31SleepingSampleViewModelProvider__queryResultOvernightMetricsModel;
  swift_beginAccess();
  sub_1CFEEF6E4(v1 + v6, v5, sub_1CFEEF4A0);
  v7 = sub_1CFEF75FC(v5, a1);
  sub_1CFEF7A60(v5, sub_1CFEEF4A0);
  if (v7)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v10[-2] = v1;
    v10[-1] = a1;
    v10[2] = v1;
    sub_1CFEF7C74(&qword_1EDEC32F0, type metadata accessor for SleepingSampleViewModelProvider);
    sub_1CFF0C8CC();
  }

  else
  {
    sub_1CFEEF6E4(a1, v5, sub_1CFEEF4A0);
    swift_beginAccess();
    sub_1CFE7E2D0(v5, v1 + v6);
    swift_endAccess();
  }

  return sub_1CFEF7A60(a1, sub_1CFEEF4A0);
}

uint64_t sub_1CFEEFA38(uint64_t a1, uint64_t a2)
{
  sub_1CFEEF4A0(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFEEF6E4(a2, v6, sub_1CFEEF4A0);
  v7 = OBJC_IVAR____TtC15HealthBalanceUI31SleepingSampleViewModelProvider__queryResultOvernightMetricsModel;
  swift_beginAccess();
  sub_1CFE7E2D0(v6, a1 + v7);
  return swift_endAccess();
}

void *sub_1CFEEFB08()
{
  v1 = v0;
  v2 = sub_1CFF0CADC();
  v59 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v58 = &v52 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFEF6D4C(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v57 = &v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1CFF0CE4C();
  v7 = *(v6 - 8);
  v68 = v6;
  v69 = v7;
  MEMORY[0x1EEE9AC00](v6);
  v67 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = sub_1CFF0CB6C();
  v64 = *(v66 - 8);
  MEMORY[0x1EEE9AC00](v66);
  v65 = &v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFEEF4D4(0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v77 = &v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFEF6D80(0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v76 = &v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1CFF0CE6C();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v75 = &v52 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = type metadata accessor for SleepingSampleViewModel(0);
  v17 = *(v79 - 8);
  v18 = MEMORY[0x1EEE9AC00](v79);
  v80 = &v52 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v52 - v20;
  swift_getKeyPath();
  v22 = OBJC_IVAR____TtC15HealthBalanceUI31SleepingSampleViewModelProvider___observationRegistrar;
  v81 = v1;
  v23 = sub_1CFEF7C74(&qword_1EDEC32F0, type metadata accessor for SleepingSampleViewModelProvider);
  v56 = v22;
  v55 = v23;
  sub_1CFF0C8DC();

  v24 = *(v1 + OBJC_IVAR____TtC15HealthBalanceUI31SleepingSampleViewModelProvider__queryResultSleepingSampleViewModels);
  v25 = *(v24 + 16);
  v26 = MEMORY[0x1E69E7CC0];
  if (v25)
  {
    v54 = v2;
    v81 = MEMORY[0x1E69E7CC0];

    sub_1CFEF3E74(0, v25, 0);
    v27 = sub_1CFF0E6DC();
    v26 = v81;
    v73 = (v1 + OBJC_IVAR____TtC15HealthBalanceUI31SleepingSampleViewModelProvider_unitProvider);
    v74 = v27;
    v53 = v1;
    v72 = (v1 + OBJC_IVAR____TtC15HealthBalanceUI31SleepingSampleViewModelProvider_featureStatusProvider);
    v28 = (*(v17 + 80) + 32) & ~*(v17 + 80);
    v52 = v24;
    v71 = v28;
    v29 = v24 + v28;
    v70 = *(v17 + 72);
    v78 = (v15 + 48);
    v60 = (v15 + 32);
    v61 = (v15 + 56);
    v64 += 2;
    v63 = *MEMORY[0x1E69A2F80];
    v62 = (v69 + 13);
    v69 = (v15 + 40);
    while (1)
    {
      v30 = v14;
      sub_1CFEEF6E4(v29, v80, type metadata accessor for SleepingSampleViewModel);
      sub_1CFF0E6CC();
      sub_1CFF0E66C();
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      sub_1CFEEF6E4(v80, v21, type metadata accessor for SleepingSampleViewModel);
      v31 = v73[3];
      v32 = v73[4];
      __swift_project_boxed_opaque_existential_1(v73, v31);
      v33 = (*(v32 + 16))(v21, v31, v32);
      v34 = *(v79 + 28);

      *&v21[v34] = v33;
      __swift_project_boxed_opaque_existential_1(v72, v72[3]);
      v35 = v77;
      sub_1CFF0CFAC();
      v36 = v35;
      v37 = sub_1CFF0CDFC();
      v38 = *(v37 - 8);
      if ((*(v38 + 48))(v35, 1, v37) == 1)
      {
        break;
      }

      v39 = v76;
      sub_1CFF0CDEC();
      (*(v38 + 8))(v36, v37);
      v14 = v30;
      if ((*v78)(v39, 1, v30) == 1)
      {
        goto LABEL_8;
      }

      sub_1CFEF7A60(v80, type metadata accessor for SleepingSampleViewModel);
      v40 = v75;
      (*v60)(v75, v39, v14);
LABEL_11:
      (*v69)(&v21[*(v79 + 32)], v40, v14);

      v81 = v26;
      v42 = v26[2];
      v41 = v26[3];
      if (v42 >= v41 >> 1)
      {
        sub_1CFEF3E74(v41 > 1, v42 + 1, 1);
        v26 = v81;
      }

      v26[2] = v42 + 1;
      v43 = v70;
      sub_1CFEF6DB4(v21, v26 + v71 + v42 * v70, type metadata accessor for SleepingSampleViewModel);
      v29 += v43;
      if (!--v25)
      {

        v2 = v54;
        v44 = v59;
        v1 = v53;
        if (v26[2])
        {
          goto LABEL_15;
        }

LABEL_17:

        v46 = sub_1CFF0CDCC();
        v47 = v57;
        (*(*(v46 - 8) + 56))(v57, 1, 1, v46);
        swift_getKeyPath();
        v81 = v1;
        sub_1CFF0C8DC();

        v48 = OBJC_IVAR____TtC15HealthBalanceUI31SleepingSampleViewModelProvider__dayRange;
        swift_beginAccess();
        v49 = v58;
        (*(v44 + 16))(v58, v1 + v48, v2);
        v50 = sub_1CFF0CB1C();
        MEMORY[0x1EEE9AC00](v50);
        *(&v52 - 4) = v47;
        *(&v52 - 3) = v1;
        *(&v52 - 2) = v49;
        v51 = sub_1CFEDA730(sub_1CFEF6E1C, (&v52 - 6), v50);

        (*(v44 + 8))(v49, v2);
        sub_1CFEF7A60(v47, sub_1CFEF6D4C);
        return v51;
      }
    }

    sub_1CFEF7A60(v35, sub_1CFEEF4D4);
    v39 = v76;
    v14 = v30;
    (*v61)(v76, 1, 1, v30);
LABEL_8:
    (*v64)(v65, v21, v66);
    (*v62)(v67, v63, v68);
    v40 = v75;
    sub_1CFF0CE1C();
    sub_1CFEF7A60(v80, type metadata accessor for SleepingSampleViewModel);
    if ((*v78)(v39, 1, v14) != 1)
    {
      sub_1CFEF7A60(v39, sub_1CFEF6D80);
    }

    goto LABEL_11;
  }

  v44 = v59;
  if (!*(MEMORY[0x1E69E7CC0] + 16))
  {
    goto LABEL_17;
  }

LABEL_15:
  v81 = v26;

  sub_1CFEF4880(&v81);

  return v81;
}

uint64_t sub_1CFEF05C8()
{
  swift_getKeyPath();
  sub_1CFEF7C74(&qword_1EDEC32F0, type metadata accessor for SleepingSampleViewModelProvider);
  sub_1CFF0C8DC();
}

uint64_t sub_1CFEF0674@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1CFEF7C74(&qword_1EDEC32F0, type metadata accessor for SleepingSampleViewModelProvider);
  sub_1CFF0C8DC();

  *a2 = *(v3 + OBJC_IVAR____TtC15HealthBalanceUI31SleepingSampleViewModelProvider__queryResultSleepingSampleViewModels);
}

uint64_t sub_1CFEF0728(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15HealthBalanceUI31SleepingSampleViewModelProvider__queryResultSleepingSampleViewModels;

  v5 = sub_1CFE92008(v4, a1);

  if (v5)
  {
    *(v1 + v3) = a1;

    swift_getKeyPath();
    sub_1CFEF7C74(&qword_1EDEC32F0, type metadata accessor for SleepingSampleViewModelProvider);
    sub_1CFF0C8DC();

    v6 = *(v1 + OBJC_IVAR____TtC15HealthBalanceUI31SleepingSampleViewModelProvider__unitTest_updatedViewModels);

    sub_1CFEEFB08();
    v6();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1CFEF7C74(&qword_1EDEC32F0, type metadata accessor for SleepingSampleViewModelProvider);
    sub_1CFF0C8CC();
  }
}

uint64_t sub_1CFEF0914(uint64_t a1, uint64_t a2)
{
  *(a1 + OBJC_IVAR____TtC15HealthBalanceUI31SleepingSampleViewModelProvider__queryResultSleepingSampleViewModels) = a2;

  swift_getKeyPath();
  sub_1CFEF7C74(&qword_1EDEC32F0, type metadata accessor for SleepingSampleViewModelProvider);
  sub_1CFF0C8DC();

  v3 = *(a1 + OBJC_IVAR____TtC15HealthBalanceUI31SleepingSampleViewModelProvider__unitTest_updatedViewModels);

  sub_1CFEEFB08();
  v3();
}

uint64_t sub_1CFEF0A18()
{
  swift_getKeyPath();
  sub_1CFEF7C74(&qword_1EDEC32F0, type metadata accessor for SleepingSampleViewModelProvider);
  sub_1CFF0C8DC();
}

uint64_t sub_1CFEF0AC4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1CFEF7C74(&qword_1EDEC32F0, type metadata accessor for SleepingSampleViewModelProvider);
  sub_1CFF0C8DC();

  *a2 = *(v3 + OBJC_IVAR____TtC15HealthBalanceUI31SleepingSampleViewModelProvider__queryTask);
}

uint64_t sub_1CFEF0B78(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15HealthBalanceUI31SleepingSampleViewModelProvider__queryTask;
  if (!*(v1 + OBJC_IVAR____TtC15HealthBalanceUI31SleepingSampleViewModelProvider__queryTask))
  {
    if (!a1)
    {
      goto LABEL_7;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1CFEF7C74(&qword_1EDEC32F0, type metadata accessor for SleepingSampleViewModelProvider);
    sub_1CFF0C8CC();
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  v4 = sub_1CFF0E71C();

  if ((v4 & 1) == 0)
  {
    goto LABEL_6;
  }

LABEL_7:
  *(v1 + v3) = a1;
}

uint64_t sub_1CFEF0D08()
{
  swift_getKeyPath();
  sub_1CFEF7C74(&qword_1EDEC32F0, type metadata accessor for SleepingSampleViewModelProvider);
  sub_1CFF0C8DC();

  v1 = *(v0 + OBJC_IVAR____TtC15HealthBalanceUI31SleepingSampleViewModelProvider__unitTest_updatedViewModels);

  return v1;
}

uint64_t sub_1CFEF0DC4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1CFEF7C74(&qword_1EDEC32F0, type metadata accessor for SleepingSampleViewModelProvider);
  sub_1CFF0C8DC();

  v5 = *(v3 + OBJC_IVAR____TtC15HealthBalanceUI31SleepingSampleViewModelProvider__unitTest_updatedViewModels);
  v4 = *(v3 + OBJC_IVAR____TtC15HealthBalanceUI31SleepingSampleViewModelProvider__unitTest_updatedViewModels + 8);
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v6 + 24) = v4;
  *a2 = sub_1CFEF75B4;
  a2[1] = v6;
}

uint64_t sub_1CFEF0EA8(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  swift_getKeyPath();
  sub_1CFEF7C74(&qword_1EDEC32F0, type metadata accessor for SleepingSampleViewModelProvider);

  sub_1CFF0C8CC();
}

uint64_t SleepingSampleViewModelProvider.__allocating_init(healthStore:dayRange:debugIdentifier:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v29 = a3;
  v30 = a4;
  v28 = a2;
  v6 = sub_1CFF0CADC();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = &v27 - v12;
  v14 = *(v7 + 16);
  v14(&v27 - v12, a2, v6, v11);
  sub_1CFF0CF4C();
  sub_1CFE62B04(0, &qword_1EDEC16B8);
  v15 = a1;
  sub_1CFF0E84C();
  v16 = sub_1CFF0CF3C();
  type metadata accessor for SleepingSampleDataTypePreferredUnitProvider();
  v17 = v15;
  v18 = v16;
  v19 = sub_1CFE9FA78(v17, 0, 0);
  (v14)(v9, v13, v6);
  v20 = swift_allocObject();
  v22 = v29;
  v21 = v30;
  v20[2] = v17;
  v20[3] = v22;
  v20[4] = v21;
  v23 = v17;
  v24 = sub_1CFEF68CC(v9, v19, v18, sub_1CFEF6E40, v20);

  v25 = *(v7 + 8);
  v25(v28, v6);
  v25(v13, v6);
  return v24;
}

uint64_t SleepingSampleViewModelProvider.__allocating_init(healthStore:dayRange:debugIdentifier:featureStatusProvider:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(a5 + 24);
  v12 = *(a5 + 32);
  v13 = __swift_mutable_project_boxed_opaque_existential_1(a5, v11);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = &v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v17 + 16))(v16, v14);
  v18 = sub_1CFEF664C(a1, a2, a3, a4, v16, v5, v11, v12);
  __swift_destroy_boxed_opaque_existential_0(a5);
  return v18;
}

uint64_t sub_1CFEF1318(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = sub_1CFF0CADC();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1CFF0CEFC();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = v15 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v8, a1, v5, v11);
  sub_1CFF0CEEC();
  sub_1CFF0CECC();
  return (*(v10 + 8))(v13, v9);
}

uint64_t sub_1CFEF14B8()
{
  v1 = v0;
  v2 = *v0;
  sub_1CFEF6E9C(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v52 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFEF7BBC(0, &qword_1EDEC16E8, MEMORY[0x1E69E87C8]);
  v53 = *(v5 - 8);
  v54 = v5;
  v6 = *(v53 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v51 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v58 = &v46 - v8;
  v9 = sub_1CFF0CADC();
  v56 = *(v9 - 8);
  v57 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v55 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1CFF0D03C();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v15 = OBJC_IVAR____TtC15HealthBalanceUI31SleepingSampleViewModelProvider___observationRegistrar;
  v59[0] = v0;
  sub_1CFEF7C74(&qword_1EDEC32F0, type metadata accessor for SleepingSampleViewModelProvider);
  sub_1CFF0C8DC();

  if (*(v0 + OBJC_IVAR____TtC15HealthBalanceUI31SleepingSampleViewModelProvider__queryTask))
  {

    sub_1CFF0E72C();
  }

  sub_1CFF0D01C();
  v16 = sub_1CFF0D02C();
  v17 = sub_1CFF0E7EC();
  v18 = os_log_type_enabled(v16, v17);
  v50 = v2;
  if (v18)
  {
    v19 = swift_slowAlloc();
    v47 = v11;
    v49 = v6;
    v20 = v19;
    v21 = swift_slowAlloc();
    v48 = v15;
    v22 = v21;
    v59[0] = v21;
    *v20 = 136446210;
    v23 = sub_1CFF0ED2C();
    v25 = sub_1CFE462A4(v23, v24, v59);

    *(v20 + 4) = v25;
    _os_log_impl(&dword_1CFE44000, v16, v17, "[%{public}s] Creating new detached query task", v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v22);
    MEMORY[0x1D387A160](v22, -1, -1);
    v26 = v20;
    v6 = v49;
    MEMORY[0x1D387A160](v26, -1, -1);

    (*(v12 + 8))(v14, v47);
  }

  else
  {

    (*(v12 + 8))(v14, v11);
  }

  swift_getKeyPath();
  v59[0] = v1;
  sub_1CFF0C8DC();

  v27 = OBJC_IVAR____TtC15HealthBalanceUI31SleepingSampleViewModelProvider__dayRange;
  swift_beginAccess();
  v28 = v55;
  (*(v56 + 16))(v55, v1 + v27, v57);
  v29 = v58;
  (*(v1 + OBJC_IVAR____TtC15HealthBalanceUI31SleepingSampleViewModelProvider_makeDaySummaryCollectionSequence))(v28);
  v30 = v52;
  sub_1CFF0E6EC();
  v48 = sub_1CFF0E70C();
  v31 = *(v48 - 8);
  v47 = *(v31 + 56);
  v49 = v31 + 56;
  v47(v30, 0, 1, v48);
  v32 = swift_allocObject();
  swift_weakInit();
  v34 = v53;
  v33 = v54;
  v35 = v1;
  v36 = v51;
  (*(v53 + 16))(v51, v29, v54);
  v37 = (*(v34 + 80) + 32) & ~*(v34 + 80);
  v38 = (v6 + v37 + 7) & 0xFFFFFFFFFFFFFFF8;
  v39 = swift_allocObject();
  *(v39 + 16) = 0;
  *(v39 + 24) = 0;
  (*(v34 + 32))(v39 + v37, v36, v33);
  *(v39 + v38) = v32;
  *(v39 + ((v38 + 15) & 0xFFFFFFFFFFFFFFF8)) = v50;
  v40 = sub_1CFEED5DC(0, 0, v30, &unk_1CFF13C90, v39);
  sub_1CFEF7A60(v30, sub_1CFEF6E9C);
  sub_1CFEF0B78(v40);
  sub_1CFF0E6EC();
  v47(v30, 0, 1, v48);
  v41 = swift_allocObject();
  v41[2] = 0;
  v41[3] = 0;
  v41[4] = v35;

  sub_1CFEED5DC(0, 0, v30, &unk_1CFF13CA0, v41);

  sub_1CFEF7A60(v30, sub_1CFEF6E9C);
  v42 = (v35 + OBJC_IVAR____TtC15HealthBalanceUI31SleepingSampleViewModelProvider_unitProvider);
  v43 = *(v35 + OBJC_IVAR____TtC15HealthBalanceUI31SleepingSampleViewModelProvider_unitProvider + 24);
  v44 = *(v35 + OBJC_IVAR____TtC15HealthBalanceUI31SleepingSampleViewModelProvider_unitProvider + 32);
  __swift_project_boxed_opaque_existential_1(v42, v43);
  (*(v44 + 24))(v43, v44);
  (*(v34 + 8))(v58, v33);
  return (*(v56 + 8))(v55, v57);
}

uint64_t sub_1CFEF1BD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[11] = a5;
  v6[12] = a6;
  v6[10] = a4;
  v7 = sub_1CFF0CDCC();
  v6[13] = v7;
  v6[14] = *(v7 - 8);
  v6[15] = swift_task_alloc();
  sub_1CFEF6D4C(0);
  v6[16] = swift_task_alloc();
  sub_1CFEF7BBC(0, &qword_1EDEC16F0, MEMORY[0x1E69E87B8]);
  v6[17] = v8;
  v6[18] = *(v8 - 8);
  v6[19] = swift_task_alloc();
  v9 = sub_1CFF0D03C();
  v6[20] = v9;
  v6[21] = *(v9 - 8);
  v6[22] = swift_task_alloc();
  v6[23] = swift_task_alloc();
  v6[24] = swift_task_alloc();
  v6[25] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1CFEF1DB8, 0, 0);
}

uint64_t sub_1CFEF1DB8()
{
  v18 = v0;
  sub_1CFF0D01C();
  v1 = sub_1CFF0D02C();
  v2 = sub_1CFF0E7EC();
  v3 = os_log_type_enabled(v1, v2);
  v4 = v0[25];
  v5 = v0[20];
  v6 = v0[21];
  if (v3)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v17 = v8;
    *v7 = 136446210;
    v9 = sub_1CFF0ED2C();
    v11 = sub_1CFE462A4(v9, v10, &v17);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_1CFE44000, v1, v2, "[%{public}s] Starting query observation loop", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x1D387A160](v8, -1, -1);
    MEMORY[0x1D387A160](v7, -1, -1);
  }

  v12 = *(v6 + 8);
  v12(v4, v5);
  v0[26] = v6 + 8;
  v0[27] = v12;
  sub_1CFEF7BBC(0, &qword_1EDEC16E8, MEMORY[0x1E69E87C8]);
  sub_1CFF0E73C();
  swift_beginAccess();
  v13 = swift_task_alloc();
  v0[28] = v13;
  *v13 = v0;
  v13[1] = sub_1CFE45D00;
  v14 = v0[16];
  v15 = v0[17];

  return MEMORY[0x1EEE6DB90](v14, 0, 0, v15, v0 + 8);
}

uint64_t sub_1CFEF1FC4()
{
  v1 = *(v0 + 120);

  sub_1CFEF25BC(v1);

  return MEMORY[0x1EEE6DFA0](sub_1CFEF2040, 0, 0);
}

uint64_t sub_1CFEF2040()
{
  (*(v0[14] + 8))(v0[15], v0[13]);
  v1 = swift_task_alloc();
  v0[28] = v1;
  *v1 = v0;
  v1[1] = sub_1CFE45D00;
  v2 = v0[16];
  v3 = v0[17];

  return MEMORY[0x1EEE6DB90](v2, 0, 0, v3, v0 + 8);
}

uint64_t sub_1CFEF2100()
{
  v36 = v0;
  (*(v0[18] + 8))(v0[19], v0[17]);
  v1 = v0[8];
  sub_1CFF0D01C();
  v2 = v1;
  v3 = sub_1CFF0D02C();
  v4 = sub_1CFF0E7CC();

  if (os_log_type_enabled(v3, v4))
  {
    v33 = v0[27];
    v31 = v0[20];
    v32 = v0[22];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v35 = v6;
    *v5 = 136446466;
    v7 = sub_1CFF0ED2C();
    v9 = sub_1CFE462A4(v7, v8, &v35);

    *(v5 + 4) = v9;
    *(v5 + 12) = 2080;
    swift_getErrorValue();
    v10 = *(v0[6] - 8);
    swift_task_alloc();
    (*(v10 + 16))();
    v11 = sub_1CFF0E5CC();
    v13 = v12;

    v14 = sub_1CFE462A4(v11, v13, &v35);

    *(v5 + 14) = v14;
    _os_log_impl(&dword_1CFE44000, v3, v4, "[%{public}s] Received error: %s", v5, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1D387A160](v6, -1, -1);
    MEMORY[0x1D387A160](v5, -1, -1);

    v33(v32, v31);
  }

  else
  {
    v15 = v0[27];
    v16 = v0[22];
    v17 = v0[20];

    v15(v16, v17);
  }

  sub_1CFF0D01C();
  v18 = sub_1CFF0D02C();
  v19 = sub_1CFF0E7EC();
  v20 = os_log_type_enabled(v18, v19);
  v21 = v0[27];
  v22 = v0[23];
  v23 = v0[20];
  if (v20)
  {
    v34 = v0[27];
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v35 = v25;
    *v24 = 136446210;
    v26 = sub_1CFF0ED2C();
    v28 = sub_1CFE462A4(v26, v27, &v35);

    *(v24 + 4) = v28;
    _os_log_impl(&dword_1CFE44000, v18, v19, "[%{public}s] Query observation loop ended", v24, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v25);
    MEMORY[0x1D387A160](v25, -1, -1);
    MEMORY[0x1D387A160](v24, -1, -1);

    v34(v22, v23);
  }

  else
  {

    v21(v22, v23);
  }

  v29 = v0[1];

  return v29();
}

uint64_t sub_1CFEF2530()
{
  __swift_project_boxed_opaque_existential_1((*(v0 + 16) + OBJC_IVAR____TtC15HealthBalanceUI31SleepingSampleViewModelProvider_featureStatusProvider), *(*(v0 + 16) + OBJC_IVAR____TtC15HealthBalanceUI31SleepingSampleViewModelProvider_featureStatusProvider + 24));
  sub_1CFF0CF9C();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1CFEF25BC(uint64_t a1)
{
  v2 = v1;
  sub_1CFEF6D4C(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v50 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFEEF4A0(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v49 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFEEF4D4(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = type metadata accessor for OvernightMetricsViewModel(0);
  v44 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47);
  v53 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1CFF0CADC();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v41 - v17;
  v19 = a1;
  sub_1CFF0CD8C();
  swift_getKeyPath();
  v20 = OBJC_IVAR____TtC15HealthBalanceUI31SleepingSampleViewModelProvider___observationRegistrar;
  v56 = v2;
  v21 = sub_1CFEF7C74(&qword_1EDEC32F0, type metadata accessor for SleepingSampleViewModelProvider);
  v51 = v20;
  v52 = v21;
  sub_1CFF0C8DC();

  v22 = OBJC_IVAR____TtC15HealthBalanceUI31SleepingSampleViewModelProvider__dayRange;
  swift_beginAccess();
  v45 = *(v13 + 16);
  v46 = v22;
  v45(v15, v2 + v22, v12);
  LOBYTE(v22) = sub_1CFF0CABC();
  v25 = *(v13 + 8);
  v24 = v13 + 8;
  v23 = v25;
  v25(v15, v12);
  v48 = v12;
  result = (v25)(v18, v12);
  if (v22)
  {
    v42 = v19;
    sub_1CFF0CD8C();
    v27 = sub_1CFF0CD9C();
    v43 = v23;
    __swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtC15HealthBalanceUI31SleepingSampleViewModelProvider_featureStatusProvider), *(v2 + OBJC_IVAR____TtC15HealthBalanceUI31SleepingSampleViewModelProvider_featureStatusProvider + 24));
    sub_1CFF0CFAC();
    v28 = v53;
    OvernightMetricsViewModel.init(dayRange:chronologicalDaySummaries:featureStatus:)(v18, v27, v10, v53);
    v29 = v49;
    sub_1CFEEF6E4(v28, v49, type metadata accessor for OvernightMetricsViewModel);
    v30 = *(v44 + 56);
    v44 = v24;
    v31 = v47;
    v30(v29, 0, 1, v47);
    v32 = OBJC_IVAR____TtC15HealthBalanceUI31SleepingSampleViewModelProvider_queryResultOvernightMetricsModelWithFeatureStatusApplied;
    swift_beginAccess();
    sub_1CFE7E2D0(v29, v2 + v32);
    swift_endAccess();
    sub_1CFEEF6E4(v28, v29, type metadata accessor for OvernightMetricsViewModel);
    v30(v29, 0, 1, v31);
    sub_1CFEEF828(v29);
    v33 = sub_1CFF0CDCC();
    v34 = *(v33 - 8);
    v35 = v50;
    (*(v34 + 16))(v50, v42, v33);
    (*(v34 + 56))(v35, 0, 1, v33);
    swift_getKeyPath();
    v55 = v2;
    sub_1CFF0C8DC();

    v36 = v48;
    v45(v18, v2 + v46, v48);
    v37 = sub_1CFF0CB1C();
    MEMORY[0x1EEE9AC00](v37);
    *(&v41 - 4) = v35;
    *(&v41 - 3) = v2;
    *(&v41 - 2) = v18;
    v38 = sub_1CFEDA730(sub_1CFEF7E5C, (&v41 - 6), v37);

    v43(v18, v36);
    sub_1CFEF7A60(v35, sub_1CFEF6D4C);
    sub_1CFEF0728(v38);
    v39 = OBJC_IVAR____TtC15HealthBalanceUI31SleepingSampleViewModelProvider__dataFreshness;
    swift_beginAccess();
    if (*(v2 + v39) == 2)
    {
      result = sub_1CFEF7A60(v53, type metadata accessor for OvernightMetricsViewModel);
      *(v2 + v39) = 2;
    }

    else
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath);
      *(&v41 - 2) = v2;
      *(&v41 - 8) = 2;
      v54 = v2;
      sub_1CFF0C8CC();

      return sub_1CFEF7A60(v53, type metadata accessor for OvernightMetricsViewModel);
    }
  }

  return result;
}

uint64_t sub_1CFEF2C6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v26 = a4;
  sub_1CFEF6D4C(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFF0E6DC();
  sub_1CFF0E6CC();
  sub_1CFF0E66C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_1CFEEF6E4(a2, v11, sub_1CFEF6D4C);
  v12 = sub_1CFF0CDCC();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_1CFEF7A60(v11, sub_1CFEF6D4C);
    v14 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v15 = sub_1CFF0CD9C();
    v16 = (*(v13 + 8))(v11, v12);
    MEMORY[0x1EEE9AC00](v16);
    *(&v25 - 2) = a1;
    v14 = sub_1CFEDA92C(sub_1CFEF7CBC, (&v25 - 4), v15);
  }

  v17 = *(a3 + OBJC_IVAR____TtC15HealthBalanceUI31SleepingSampleViewModelProvider_unitProvider + 24);
  v18 = *(a3 + OBJC_IVAR____TtC15HealthBalanceUI31SleepingSampleViewModelProvider_unitProvider + 32);
  __swift_project_boxed_opaque_existential_1((a3 + OBJC_IVAR____TtC15HealthBalanceUI31SleepingSampleViewModelProvider_unitProvider), v17);
  v19 = (*(v18 + 16))(a1, v17, v18);
  v20 = type metadata accessor for SleepingSampleViewModel(0);
  sub_1CFEF303C(a1, a5 + v20[8]);
  v21 = sub_1CFF0CB6C();
  (*(*(v21 - 8) + 16))(a5, a1, v21);
  v22 = v20[5];
  v23 = sub_1CFF0CADC();
  (*(*(v23 - 8) + 16))(a5 + v22, v26, v23);

  *(a5 + v20[6]) = v14;
  *(a5 + v20[7]) = v19;
  return result;
}

uint64_t sub_1CFEF2F80()
{
  sub_1CFF0E6DC();
  sub_1CFF0E6CC();
  sub_1CFF0E66C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_1CFF0CBCC();
}

uint64_t sub_1CFEF303C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v4 = sub_1CFF0CE4C();
  v23 = *(v4 - 8);
  v24 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1CFF0CB6C();
  v7 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFEEF4D4(0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFEF6D80(0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtC15HealthBalanceUI31SleepingSampleViewModelProvider_featureStatusProvider), *(v2 + OBJC_IVAR____TtC15HealthBalanceUI31SleepingSampleViewModelProvider_featureStatusProvider + 24));
  sub_1CFF0CFAC();
  v16 = sub_1CFF0CDFC();
  v17 = *(v16 - 8);
  if ((*(v17 + 48))(v12, 1, v16) == 1)
  {
    v18 = a1;
    sub_1CFEF7A60(v12, sub_1CFEEF4D4);
    v19 = sub_1CFF0CE6C();
    (*(*(v19 - 8) + 56))(v15, 1, 1, v19);
  }

  else
  {
    v18 = a1;
    sub_1CFF0CDEC();
    (*(v17 + 8))(v12, v16);
    v19 = sub_1CFF0CE6C();
    v20 = *(v19 - 8);
    if ((*(v20 + 48))(v15, 1, v19) != 1)
    {
      return (*(v20 + 32))(v25, v15, v19);
    }
  }

  (*(v7 + 16))(v9, v18, v22);
  (*(v23 + 104))(v6, *MEMORY[0x1E69A2F80], v24);
  sub_1CFF0CE1C();
  sub_1CFF0CE6C();
  result = (*(*(v19 - 8) + 48))(v15, 1, v19);
  if (result != 1)
  {
    return sub_1CFEF7A60(v15, sub_1CFEF6D80);
  }

  return result;
}

uint64_t SleepingSampleViewModelProvider.deinit()
{
  v1 = OBJC_IVAR____TtC15HealthBalanceUI31SleepingSampleViewModelProvider__dayRange;
  v2 = sub_1CFF0CADC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  __swift_destroy_boxed_opaque_existential_0(v0 + OBJC_IVAR____TtC15HealthBalanceUI31SleepingSampleViewModelProvider_unitProvider);
  __swift_destroy_boxed_opaque_existential_0(v0 + OBJC_IVAR____TtC15HealthBalanceUI31SleepingSampleViewModelProvider_featureStatusProvider);

  sub_1CFEF7A60(v0 + OBJC_IVAR____TtC15HealthBalanceUI31SleepingSampleViewModelProvider_queryResultOvernightMetricsModelWithFeatureStatusApplied, sub_1CFEEF4A0);
  sub_1CFEF7A60(v0 + OBJC_IVAR____TtC15HealthBalanceUI31SleepingSampleViewModelProvider__queryResultOvernightMetricsModel, sub_1CFEEF4A0);

  v3 = OBJC_IVAR____TtC15HealthBalanceUI31SleepingSampleViewModelProvider___observationRegistrar;
  v4 = sub_1CFF0C91C();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  return v0;
}

uint64_t SleepingSampleViewModelProvider.__deallocating_deinit()
{
  SleepingSampleViewModelProvider.deinit();

  return swift_deallocClassInstance();
}

void (*sub_1CFEF35E4(uint64_t **a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = sub_1CFEEE8A8(v2);
  return sub_1CFEB3DEC;
}

uint64_t static SleepingSampleViewModelProvider.fake(healthStore:dayRange:)(void *a1, uint64_t a2)
{
  v4 = sub_1CFF0CADC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for SleepingSampleDataTypePreferredUnitProvider();
  v8 = a1;
  v9 = sub_1CFE9FA78(v8, 0, 0);
  sub_1CFF0CF4C();
  sub_1CFE62B04(0, &qword_1EDEC16B8);
  v10 = v8;
  sub_1CFF0E84C();
  v11 = sub_1CFF0CF3C();
  (*(v5 + 16))(v7, a2, v4);
  return sub_1CFEF68CC(v7, v9, v11, sub_1CFEF37D0, 0);
}

uint64_t sub_1CFEF37D0(uint64_t a1)
{
  v2 = sub_1CFF0CADC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  sub_1CFEF7900();
  v5 = swift_allocObject();
  *(v5 + 20) = 0;
  *(v5 + 16) = 0;
  (*(v3 + 16))(&v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v2);
  v6 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = v5;
  (*(v3 + 32))(v7 + v6, &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v2);
  sub_1CFF0CDCC();
  return sub_1CFF0E75C();
}

uint64_t sub_1CFEF3938(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1CFEF395C, 0, 0);
}

uint64_t sub_1CFEF395C()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];
  *(swift_task_alloc() + 16) = v1;
  os_unfair_lock_lock((v2 + 20));
  sub_1CFEF7A44((v2 + 16), v3);
  os_unfair_lock_unlock((v2 + 20));

  v4 = v0[1];

  return v4();
}

uint64_t sub_1CFEF3A24@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1CFF0C89C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFE5C014();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1)
  {
    v11 = sub_1CFF0CDCC();
    return (*(*(v11 - 8) + 56))(a2, 1, 1, v11);
  }

  else
  {
    *a1 = 1;
    sub_1CFF0CA8C();
    sub_1CFF0CAAC();
    sub_1CFF0CDBC();
    (*(v5 + 8))(v7, v4);
    sub_1CFEF7A60(v10, sub_1CFE5C014);
    v13 = sub_1CFF0CDCC();
    return (*(*(v13 - 8) + 56))(a2, 0, 1, v13);
  }
}

char *sub_1CFEF3C04(char *a1, int64_t a2, char a3)
{
  result = sub_1CFEF3EC4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1CFEF3C24(size_t a1, int64_t a2, char a3)
{
  result = sub_1CFEF3FD4(a1, a2, a3, *v3, &qword_1EDEC49F0, MEMORY[0x1E69A2E68], MEMORY[0x1E69A2E68]);
  *v3 = result;
  return result;
}

size_t sub_1CFEF3C74(size_t a1, int64_t a2, char a3)
{
  result = sub_1CFEF3FD4(a1, a2, a3, *v3, &qword_1EDEC4A00, MEMORY[0x1E6969530], MEMORY[0x1E6969530]);
  *v3 = result;
  return result;
}

size_t sub_1CFEF3CC4(size_t a1, int64_t a2, char a3)
{
  result = sub_1CFEF3FD4(a1, a2, a3, *v3, &qword_1EDEC49E8, MEMORY[0x1E69A2F20], MEMORY[0x1E69A2F20]);
  *v3 = result;
  return result;
}

char *sub_1CFEF3D14(char *a1, int64_t a2, char a3)
{
  result = sub_1CFEF41C8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1CFEF3D34(void *a1, int64_t a2, char a3)
{
  result = sub_1CFEF42C0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1CFEF3D54(size_t a1, int64_t a2, char a3)
{
  result = sub_1CFEF3FD4(a1, a2, a3, *v3, &qword_1EDEC1628, MEMORY[0x1E69A2DC0], MEMORY[0x1E69A2DC0]);
  *v3 = result;
  return result;
}

char *sub_1CFEF3DA4(char *a1, int64_t a2, char a3)
{
  result = sub_1CFEF440C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1CFEF3DC4(size_t a1, int64_t a2, char a3)
{
  result = sub_1CFEF3FD4(a1, a2, a3, *v3, &qword_1EDEC1600, type metadata accessor for OvernightMetricsAxisConfiguration.DayConfiguration.Label, type metadata accessor for OvernightMetricsAxisConfiguration.DayConfiguration.Label);
  *v3 = result;
  return result;
}

void *sub_1CFEF3E14(void *a1, int64_t a2, char a3)
{
  result = sub_1CFEF451C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1CFEF3E34(char *a1, int64_t a2, char a3)
{
  result = sub_1CFEF4668(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1CFEF3E54(char *a1, int64_t a2, char a3)
{
  result = sub_1CFEF4770(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1CFEF3E74(size_t a1, int64_t a2, char a3)
{
  result = sub_1CFEF3FD4(a1, a2, a3, *v3, &qword_1EDEC1610, type metadata accessor for SleepingSampleViewModel, type metadata accessor for SleepingSampleViewModel);
  *v3 = result;
  return result;
}

char *sub_1CFEF3EC4(char *result, int64_t a2, char a3, char *a4)
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
    sub_1CFEF7E10(0, &qword_1EDEC49D8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_1CFEF3FD4(size_t result, int64_t a2, char a3, void *a4, unint64_t *a5, uint64_t (*a6)(uint64_t), uint64_t (*a7)(void))
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

  sub_1CFEF7DAC(0, a5, a6, MEMORY[0x1E69E6F90]);
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

char *sub_1CFEF41C8(char *result, int64_t a2, char a3, char *a4)
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
    sub_1CFE9E03C();
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

void *sub_1CFEF42C0(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1CFEF7DAC(0, &qword_1EDEC15B8, sub_1CFED5E9C, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1CFED5E9C();
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1CFEF440C(char *result, int64_t a2, char a3, char *a4)
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
    sub_1CFEF7E10(0, &qword_1EDEC15C0);
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

void *sub_1CFEF451C(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1CFEF7DAC(0, &qword_1EC512B70, sub_1CFEF7D38, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1CFEF7D38();
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1CFEF4668(char *result, int64_t a2, char a3, char *a4)
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
    sub_1CFEF7E10(0, &qword_1EDEC49C8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_1CFEF4770(char *result, int64_t a2, char a3, char *a4)
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
    sub_1CFEF7E10(0, &qword_1EDEC15E8);
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

uint64_t sub_1CFEF4880(void **a1)
{
  v2 = *(type metadata accessor for SleepingSampleViewModel(0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_1CFEF65F4(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_1CFEF4928(v6);
  *a1 = v3;
  return result;
}

uint64_t sub_1CFEF4928(unint64_t *a1)
{
  v2 = a1[1];
  result = sub_1CFF0EB8C();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        type metadata accessor for SleepingSampleViewModel(0);
        v6 = sub_1CFF0E64C();
        *(v6 + 16) = v5;
      }

      v7 = *(type metadata accessor for SleepingSampleViewModel(0) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_1CFEF4E28(v8, v9, a1, v4);
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
    return sub_1CFEF4A54(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1CFEF4A54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v53 = sub_1CFF0CB4C();
  v8 = *(v53 - 8);
  v9 = MEMORY[0x1EEE9AC00](v53);
  v52 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v51 = &v38 - v11;
  v48 = type metadata accessor for SleepingSampleViewModel(0);
  v12 = *(v48 - 8);
  v13 = MEMORY[0x1EEE9AC00](v48);
  v47 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v57 = &v38 - v16;
  result = MEMORY[0x1EEE9AC00](v15);
  v56 = &v38 - v18;
  v40 = a2;
  if (a3 != a2)
  {
    v19 = *a4;
    v20 = sub_1CFF0E6DC();
    v21 = *(v12 + 72);
    v49 = (v8 + 8);
    v50 = v20;
    v22 = v19 + v21 * (a3 - 1);
    v45 = -v21;
    v46 = v19;
    v23 = a1 - a3;
    v39 = v21;
    v24 = v19 + v21 * a3;
    v25 = v49;
LABEL_5:
    v43 = v22;
    v44 = a3;
    v41 = v24;
    v42 = v23;
    v26 = v23;
    while (1)
    {
      v55 = v26;
      sub_1CFEEF6E4(v24, v56, type metadata accessor for SleepingSampleViewModel);
      sub_1CFEEF6E4(v22, v57, type metadata accessor for SleepingSampleViewModel);
      v54 = sub_1CFF0E6CC();
      sub_1CFF0E66C();
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      v27 = v51;
      v28 = v56;
      sub_1CFF0CB5C();
      v29 = v52;
      v30 = v57;
      sub_1CFF0CB5C();
      v31 = sub_1CFF0CB3C();
      v32 = *v25;
      v33 = v29;
      v34 = v53;
      (*v25)(v33, v53);
      v32(v27, v34);

      sub_1CFEF7A60(v30, type metadata accessor for SleepingSampleViewModel);
      result = sub_1CFEF7A60(v28, type metadata accessor for SleepingSampleViewModel);
      v35 = v55;
      if ((v31 & 1) == 0)
      {
LABEL_4:
        a3 = v44 + 1;
        v22 = v43 + v39;
        v23 = v42 - 1;
        v24 = v41 + v39;
        if (v44 + 1 == v40)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v46)
      {
        break;
      }

      v36 = v47;
      sub_1CFEF6DB4(v24, v47, type metadata accessor for SleepingSampleViewModel);
      swift_arrayInitWithTakeFrontToBack();
      result = sub_1CFEF6DB4(v36, v22, type metadata accessor for SleepingSampleViewModel);
      v22 += v45;
      v24 += v45;
      v37 = __CFADD__(v35, 1);
      v26 = v35 + 1;
      if (v37)
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1CFEF4E28(unint64_t *a1, uint64_t a2, unint64_t *a3, unint64_t a4)
{
  v5 = v4;
  v126 = a4;
  v150 = sub_1CFF0CB4C();
  v8 = *(v150 - 8);
  v9 = MEMORY[0x1EEE9AC00](v150);
  v149 = &v124 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v148 = &v124 - v11;
  v145 = type metadata accessor for SleepingSampleViewModel(0);
  v137 = *(v145 - 8);
  v12 = MEMORY[0x1EEE9AC00](v145);
  v131 = &v124 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v144 = &v124 - v15;
  v16 = MEMORY[0x1EEE9AC00](v14);
  v154 = &v124 - v17;
  v18 = MEMORY[0x1EEE9AC00](v16);
  v153 = &v124 - v19;
  v20 = MEMORY[0x1EEE9AC00](v18);
  v141 = &v124 - v21;
  v22 = MEMORY[0x1EEE9AC00](v20);
  v140 = &v124 - v23;
  v24 = MEMORY[0x1EEE9AC00](v22);
  v128 = &v124 - v25;
  result = MEMORY[0x1EEE9AC00](v24);
  v127 = &v124 - v27;
  v28 = a3[1];
  if (v28 < 1)
  {
    v30 = MEMORY[0x1E69E7CC0];
LABEL_103:
    v32 = *a1;
    if (!*a1)
    {
      goto LABEL_142;
    }

    v8 = v30;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      result = v8;
    }

    else
    {
LABEL_136:
      result = sub_1CFEF63F0(v8);
    }

    v155 = result;
    v8 = *(result + 16);
    if (v8 >= 2)
    {
      while (*a3)
      {
        v120 = *(result + 16 * v8);
        v121 = result;
        v122 = *(result + 16 * (v8 - 1) + 40);
        sub_1CFEF5BD0(*a3 + *(v137 + 72) * v120, *a3 + *(v137 + 72) * *(result + 16 * (v8 - 1) + 32), *a3 + *(v137 + 72) * v122, v32);
        if (v5)
        {
        }

        if (v122 < v120)
        {
          goto LABEL_129;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v121 = sub_1CFEF63F0(v121);
        }

        if (v8 - 2 >= *(v121 + 2))
        {
          goto LABEL_130;
        }

        v123 = &v121[16 * v8];
        *v123 = v120;
        *(v123 + 1) = v122;
        v155 = v121;
        sub_1CFEF6364(v8 - 1);
        result = v155;
        v8 = *(v155 + 16);
        if (v8 <= 1)
        {
        }
      }

      goto LABEL_140;
    }
  }

  v29 = 0;
  v147 = (v8 + 8);
  v30 = MEMORY[0x1E69E7CC0];
  v124 = a3;
  v129 = a1;
  while (1)
  {
    v31 = v29++;
    v138 = v30;
    if (v29 >= v28)
    {
      goto LABEL_28;
    }

    v134 = v28;
    v125 = v5;
    v32 = *a3;
    v33 = *(v137 + 72);
    v136 = v29;
    sub_1CFEEF6E4(v32 + v33 * v29, v127, type metadata accessor for SleepingSampleViewModel);
    v130 = v31;
    v139 = v33;
    sub_1CFEEF6E4(v32 + v33 * v31, v128, type metadata accessor for SleepingSampleViewModel);
    v34 = sub_1CFF0E6DC();
    sub_1CFF0E6CC();
    v133 = v34;
    sub_1CFF0E66C();
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    v35 = v148;
    v36 = v127;
    sub_1CFF0CB5C();
    v37 = v149;
    v38 = v128;
    sub_1CFF0CB5C();
    LODWORD(v135) = sub_1CFF0CB3C();
    v39 = *v147;
    v40 = v150;
    (*v147)(v37, v150);
    v132 = v39;
    (v39)(v35, v40);

    v8 = type metadata accessor for SleepingSampleViewModel;
    sub_1CFEF7A60(v38, type metadata accessor for SleepingSampleViewModel);
    result = sub_1CFEF7A60(v36, type metadata accessor for SleepingSampleViewModel);
    v41 = v130 + 2;
    v42 = v139 * (v130 + 2);
    v43 = v32 + v42;
    v44 = v136;
    v45 = v139 * v136;
    v46 = v32 + v139 * v136;
    do
    {
      v5 = v41;
      v53 = v44;
      v54 = v45;
      v52 = v42;
      if (v41 >= v134)
      {
        break;
      }

      v143 = v45;
      v146 = v44;
      v151 = v42;
      v152 = v41;
      sub_1CFEEF6E4(v43, v140, type metadata accessor for SleepingSampleViewModel);
      sub_1CFEEF6E4(v46, v141, type metadata accessor for SleepingSampleViewModel);
      sub_1CFF0E6CC();
      sub_1CFF0E66C();
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      v47 = v148;
      v32 = v140;
      sub_1CFF0CB5C();
      v48 = v149;
      v49 = v141;
      sub_1CFF0CB5C();
      LOBYTE(v142) = sub_1CFF0CB3C() & 1;
      LODWORD(v142) = v142;
      v50 = v150;
      v51 = v132;
      v132(v48, v150);
      v51(v47, v50);

      v8 = type metadata accessor for SleepingSampleViewModel;
      sub_1CFEF7A60(v49, type metadata accessor for SleepingSampleViewModel);
      result = sub_1CFEF7A60(v32, type metadata accessor for SleepingSampleViewModel);
      v52 = v151;
      v5 = v152;
      v41 = v152 + 1;
      v43 += v139;
      v46 += v139;
      v53 = v146;
      v44 = v146 + 1;
      v54 = v143;
      v45 = &v139[v143];
      v42 = &v139[v151];
    }

    while ((v135 & 1) == v142);
    if (v135)
    {
      v31 = v130;
      a3 = v124;
      if (v5 < v130)
      {
        goto LABEL_133;
      }

      if (v130 >= v5)
      {
        v29 = v5;
        v5 = v125;
        a1 = v129;
LABEL_28:
        v32 = v126;
        goto LABEL_30;
      }

      v55 = v130 * v139;
      do
      {
        if (v31 != v53)
        {
          v57 = *a3;
          if (!*a3)
          {
            goto LABEL_139;
          }

          v58 = v53;
          v8 = v57 + v55;
          sub_1CFEF6DB4(v57 + v55, v131, type metadata accessor for SleepingSampleViewModel);
          if (v55 < v54 || v8 >= v57 + v52)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v55 != v54)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          result = sub_1CFEF6DB4(v131, v57 + v54, type metadata accessor for SleepingSampleViewModel);
          v53 = v58;
        }

        ++v31;
        v54 -= v139;
        v52 -= v139;
        v55 += v139;
      }

      while (v31 < v53--);
      v29 = v5;
      v5 = v125;
    }

    else
    {
      v29 = v5;
      v5 = v125;
      a3 = v124;
    }

    a1 = v129;
    v32 = v126;
    v31 = v130;
LABEL_30:
    v59 = a3[1];
    if (v29 < v59)
    {
      if (__OFSUB__(v29, v31))
      {
        goto LABEL_132;
      }

      if (v29 - v31 < v32)
      {
        if (__OFADD__(v31, v32))
        {
          goto LABEL_134;
        }

        if ((v31 + v32) >= v59)
        {
          v8 = a3[1];
        }

        else
        {
          v8 = v31 + v32;
        }

        if (v8 < v31)
        {
LABEL_135:
          __break(1u);
          goto LABEL_136;
        }

        if (v29 != v8)
        {
          break;
        }
      }
    }

LABEL_50:
    if (v29 < v31)
    {
      goto LABEL_131;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v30 = v138;
    }

    else
    {
      result = sub_1CFE975F8(0, *(v138 + 2) + 1, 1, v138);
      v30 = result;
    }

    v32 = *(v30 + 2);
    v76 = *(v30 + 3);
    v8 = v32 + 1;
    if (v32 >= v76 >> 1)
    {
      result = sub_1CFE975F8((v76 > 1), v32 + 1, 1, v30);
      v30 = result;
    }

    *(v30 + 2) = v8;
    v77 = &v30[16 * v32];
    *(v77 + 4) = v31;
    *(v77 + 5) = v29;
    if (!*a1)
    {
      goto LABEL_141;
    }

    if (v32)
    {
      v78 = *a1;
      while (1)
      {
        v79 = v8 - 1;
        if (v8 >= 4)
        {
          break;
        }

        if (v8 == 3)
        {
          v80 = *(v30 + 4);
          v81 = *(v30 + 5);
          v90 = __OFSUB__(v81, v80);
          v82 = v81 - v80;
          v83 = v90;
LABEL_71:
          if (v83)
          {
            goto LABEL_120;
          }

          v96 = &v30[16 * v8];
          v98 = *v96;
          v97 = *(v96 + 1);
          v99 = __OFSUB__(v97, v98);
          v100 = v97 - v98;
          v101 = v99;
          if (v99)
          {
            goto LABEL_123;
          }

          v102 = &v30[16 * v79 + 32];
          v104 = *v102;
          v103 = *(v102 + 1);
          v90 = __OFSUB__(v103, v104);
          v105 = v103 - v104;
          if (v90)
          {
            goto LABEL_126;
          }

          if (__OFADD__(v100, v105))
          {
            goto LABEL_127;
          }

          if (v100 + v105 >= v82)
          {
            if (v82 < v105)
            {
              v79 = v8 - 2;
            }

            goto LABEL_92;
          }

          goto LABEL_85;
        }

        v106 = &v30[16 * v8];
        v108 = *v106;
        v107 = *(v106 + 1);
        v90 = __OFSUB__(v107, v108);
        v100 = v107 - v108;
        v101 = v90;
LABEL_85:
        if (v101)
        {
          goto LABEL_122;
        }

        v109 = &v30[16 * v79];
        v111 = *(v109 + 4);
        v110 = *(v109 + 5);
        v90 = __OFSUB__(v110, v111);
        v112 = v110 - v111;
        if (v90)
        {
          goto LABEL_125;
        }

        if (v112 < v100)
        {
          goto LABEL_3;
        }

LABEL_92:
        v32 = v79 - 1;
        if (v79 - 1 >= v8)
        {
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
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
          goto LABEL_135;
        }

        if (!*a3)
        {
          goto LABEL_138;
        }

        v117 = v30;
        v8 = *&v30[16 * v32 + 32];
        v118 = *&v30[16 * v79 + 40];
        sub_1CFEF5BD0(*a3 + *(v137 + 72) * v8, *a3 + *(v137 + 72) * *&v30[16 * v79 + 32], *a3 + *(v137 + 72) * v118, v78);
        if (v5)
        {
        }

        if (v118 < v8)
        {
          goto LABEL_116;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v117 = sub_1CFEF63F0(v117);
        }

        if (v32 >= *(v117 + 2))
        {
          goto LABEL_117;
        }

        v119 = &v117[16 * v32];
        *(v119 + 4) = v8;
        *(v119 + 5) = v118;
        v155 = v117;
        result = sub_1CFEF6364(v79);
        v30 = v155;
        v8 = *(v155 + 16);
        if (v8 <= 1)
        {
          goto LABEL_3;
        }
      }

      v84 = &v30[16 * v8 + 32];
      v85 = *(v84 - 64);
      v86 = *(v84 - 56);
      v90 = __OFSUB__(v86, v85);
      v87 = v86 - v85;
      if (v90)
      {
        goto LABEL_118;
      }

      v89 = *(v84 - 48);
      v88 = *(v84 - 40);
      v90 = __OFSUB__(v88, v89);
      v82 = v88 - v89;
      v83 = v90;
      if (v90)
      {
        goto LABEL_119;
      }

      v91 = &v30[16 * v8];
      v93 = *v91;
      v92 = *(v91 + 1);
      v90 = __OFSUB__(v92, v93);
      v94 = v92 - v93;
      if (v90)
      {
        goto LABEL_121;
      }

      v90 = __OFADD__(v82, v94);
      v95 = v82 + v94;
      if (v90)
      {
        goto LABEL_124;
      }

      if (v95 >= v87)
      {
        v113 = &v30[16 * v79 + 32];
        v115 = *v113;
        v114 = *(v113 + 1);
        v90 = __OFSUB__(v114, v115);
        v116 = v114 - v115;
        if (v90)
        {
          goto LABEL_128;
        }

        if (v82 < v116)
        {
          v79 = v8 - 2;
        }

        goto LABEL_92;
      }

      goto LABEL_71;
    }

LABEL_3:
    v28 = a3[1];
    a1 = v129;
    if (v29 >= v28)
    {
      goto LABEL_103;
    }
  }

  v125 = v5;
  v60 = *a3;
  v146 = sub_1CFF0E6DC();
  v61 = *(v137 + 72);
  v62 = (v60 + v61 * (v29 - 1));
  v142 = -v61;
  v130 = v31;
  v63 = v31 - v29;
  v143 = v60;
  v132 = v61;
  v64 = v60 + v29 * v61;
  v133 = v8;
LABEL_41:
  v135 = v63;
  v136 = v29;
  v134 = v64;
  v32 = v63;
  v139 = v62;
  v65 = v62;
  while (1)
  {
    v151 = v32;
    sub_1CFEEF6E4(v64, v153, type metadata accessor for SleepingSampleViewModel);
    sub_1CFEEF6E4(v65, v154, type metadata accessor for SleepingSampleViewModel);
    v152 = sub_1CFF0E6CC();
    sub_1CFF0E66C();
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    v66 = v148;
    v32 = v153;
    sub_1CFF0CB5C();
    v67 = v149;
    v68 = v154;
    sub_1CFF0CB5C();
    v69 = sub_1CFF0CB3C();
    v70 = *v147;
    v71 = v67;
    v72 = v150;
    (*v147)(v71, v150);
    v70(v66, v72);

    sub_1CFEF7A60(v68, type metadata accessor for SleepingSampleViewModel);
    result = sub_1CFEF7A60(v32, type metadata accessor for SleepingSampleViewModel);
    if ((v69 & 1) == 0)
    {
LABEL_40:
      v29 = v136 + 1;
      v62 = v132 + v139;
      v63 = v135 - 1;
      v64 = v132 + v134;
      v8 = v133;
      if (v136 + 1 != v133)
      {
        goto LABEL_41;
      }

      v29 = v133;
      v5 = v125;
      a3 = v124;
      a1 = v129;
      v31 = v130;
      goto LABEL_50;
    }

    v73 = v151;
    if (!v143)
    {
      break;
    }

    v74 = v144;
    sub_1CFEF6DB4(v64, v144, type metadata accessor for SleepingSampleViewModel);
    swift_arrayInitWithTakeFrontToBack();
    sub_1CFEF6DB4(v74, v65, type metadata accessor for SleepingSampleViewModel);
    v65 += v142;
    v64 += v142;
    v75 = __CFADD__(v73, 1);
    v32 = v73 + 1;
    if (v75)
    {
      goto LABEL_40;
    }
  }

  __break(1u);
LABEL_138:
  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
  return result;
}

uint64_t sub_1CFEF5BD0(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v68 = sub_1CFF0CB4C();
  v8 = *(v68 - 8);
  v9 = MEMORY[0x1EEE9AC00](v68);
  v67 = &v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v66 = &v55 - v11;
  v65 = type metadata accessor for SleepingSampleViewModel(0);
  v12 = MEMORY[0x1EEE9AC00](v65);
  v64 = &v55 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v63 = &v55 - v15;
  v16 = MEMORY[0x1EEE9AC00](v14);
  v70 = &v55 - v17;
  result = MEMORY[0x1EEE9AC00](v16);
  v69 = &v55 - v19;
  v21 = *(v20 + 72);
  if (!v21)
  {
    __break(1u);
LABEL_63:
    __break(1u);
LABEL_64:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v21 == -1)
  {
    goto LABEL_63;
  }

  v22 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v21 == -1)
  {
    goto LABEL_64;
  }

  v23 = (a2 - a1) / v21;
  v75 = a1;
  v74 = a4;
  if (v23 >= v22 / v21)
  {
    v25 = v22 / v21 * v21;
    if (a4 < a2 || a2 + v25 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v38 = a4 + v25;
    if (v25 >= 1)
    {
      v39 = -v21;
      v58 = v8 + 8;
      v59 = v39;
      v40 = a4 + v25;
      v71 = a4;
      v60 = a1;
      v41 = (v8 + 8);
      do
      {
        v56 = v38;
        v42 = a2 + v39;
        v72 = a2 + v39;
        v61 = a2;
        while (1)
        {
          if (a2 <= a1)
          {
            v75 = a2;
            v73 = v56;
            goto LABEL_61;
          }

          v44 = a3;
          v57 = v38;
          v70 = v40;
          v62 = v40 + v39;
          sub_1CFEEF6E4(v40 + v39, v63, type metadata accessor for SleepingSampleViewModel);
          sub_1CFEEF6E4(v42, v64, type metadata accessor for SleepingSampleViewModel);
          sub_1CFF0E6DC();
          v69 = sub_1CFF0E6CC();
          sub_1CFF0E66C();
          if ((swift_task_isCurrentExecutor() & 1) == 0)
          {
            swift_task_reportUnexpectedExecutor();
          }

          v45 = a3 + v39;
          v46 = v66;
          v47 = v63;
          sub_1CFF0CB5C();
          v48 = v67;
          v49 = v64;
          sub_1CFF0CB5C();
          v50 = sub_1CFF0CB3C();
          v51 = *v41;
          v52 = v48;
          v53 = v68;
          (*v41)(v52, v68);
          v51(v46, v53);

          sub_1CFEF7A60(v49, type metadata accessor for SleepingSampleViewModel);
          sub_1CFEF7A60(v47, type metadata accessor for SleepingSampleViewModel);
          if (v50)
          {
            break;
          }

          v54 = v62;
          v38 = v62;
          a3 = v45;
          if (v44 < v70 || v45 >= v70)
          {
            swift_arrayInitWithTakeFrontToBack();
            v42 = v72;
            v39 = v59;
            a1 = v60;
          }

          else
          {
            v42 = v72;
            v39 = v59;
            a1 = v60;
            if (v44 != v70)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v40 = v38;
          v43 = v54 > v71;
          a2 = v61;
          if (!v43)
          {
            goto LABEL_59;
          }
        }

        a3 = v45;
        if (v44 < v61 || v45 >= v61)
        {
          a2 = v72;
          swift_arrayInitWithTakeFrontToBack();
          v39 = v59;
          a1 = v60;
          v38 = v57;
          v40 = v70;
        }

        else
        {
          a2 = v72;
          v39 = v59;
          a1 = v60;
          v38 = v57;
          v40 = v70;
          if (v44 != v61)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      while (v40 > v71);
    }

LABEL_59:
    v75 = a2;
    v73 = v38;
  }

  else
  {
    v24 = v23 * v21;
    if (a4 < a1 || a1 + v24 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v64 = a4 + v24;
    v73 = a4 + v24;
    if (v24 >= 1 && a2 < a3)
    {
      v62 = a3;
      v63 = v8 + 8;
      v61 = v21;
      v27 = (v8 + 8);
      do
      {
        v72 = a2;
        sub_1CFEEF6E4(a2, v69, type metadata accessor for SleepingSampleViewModel);
        v71 = a4;
        sub_1CFEEF6E4(a4, v70, type metadata accessor for SleepingSampleViewModel);
        sub_1CFF0E6DC();
        sub_1CFF0E6CC();
        sub_1CFF0E66C();
        if ((swift_task_isCurrentExecutor() & 1) == 0)
        {
          swift_task_reportUnexpectedExecutor();
        }

        v28 = v66;
        v29 = v69;
        sub_1CFF0CB5C();
        v30 = v67;
        v31 = v70;
        sub_1CFF0CB5C();
        v32 = sub_1CFF0CB3C();
        v33 = *v27;
        v34 = v30;
        v35 = v68;
        (*v27)(v34, v68);
        v33(v28, v35);

        sub_1CFEF7A60(v31, type metadata accessor for SleepingSampleViewModel);
        sub_1CFEF7A60(v29, type metadata accessor for SleepingSampleViewModel);
        if (v32)
        {
          a4 = v71;
          v36 = v61;
          a2 = v72 + v61;
          if (a1 < v72 || a1 >= a2)
          {
            swift_arrayInitWithTakeFrontToBack();
            v37 = v62;
          }

          else
          {
            v37 = v62;
            if (a1 != v72)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }
        }

        else
        {
          a2 = v72;
          v36 = v61;
          a4 = v71 + v61;
          if (a1 < v71 || a1 >= a4)
          {
            swift_arrayInitWithTakeFrontToBack();
            v37 = v62;
          }

          else
          {
            v37 = v62;
            if (a1 != v71)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v74 = a4;
        }

        a1 += v36;
        v75 = a1;
      }

      while (a4 < v64 && a2 < v37);
    }
  }

LABEL_61:
  sub_1CFEF6434(&v75, &v74, &v73, type metadata accessor for SleepingSampleViewModel);
  return 1;
}

uint64_t sub_1CFEF6364(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1CFEF63F0(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_1CFEF6434(unint64_t *a1, unint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v4 = *a1;
  v5 = *a2;
  v6 = *a3;
  result = a4(0);
  v8 = *(*(result - 8) + 72);
  if (!v8)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v6 - v5 == 0x8000000000000000 && v8 == -1)
  {
    goto LABEL_17;
  }

  if (v4 < v5 || v4 >= v5 + (v6 - v5) / v8 * v8)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v4 != v5)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

uint64_t sub_1CFEF664C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v38 = a4;
  v39 = a8;
  v37 = a3;
  v36 = sub_1CFF0CADC();
  v12 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(a7 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v19);
  v22 = &v34 - v21;
  (*(v15 + 32))(&v34 - v21, a5, a7, v20);
  type metadata accessor for SleepingSampleDataTypePreferredUnitProvider();
  v23 = a1;
  v35 = sub_1CFE9FA78(v23, 0, 0);
  v24 = v14;
  v25 = v14;
  v26 = a2;
  v27 = a2;
  v28 = v36;
  (*(v12 + 16))(v24, v27, v36);
  v29 = swift_allocObject();
  v31 = v37;
  v30 = v38;
  v29[2] = v23;
  v29[3] = v31;
  v29[4] = v30;
  (*(v15 + 16))(v18, v22, a7);
  v32 = sub_1CFEF6B10(v25, v35, v18, sub_1CFEF7E74, v29, a7, v39);
  (*(v12 + 8))(v26, v28);
  (*(v15 + 8))(v22, a7);
  return v32;
}

uint64_t sub_1CFEF68CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v23 = sub_1CFF0CF4C();
  v24 = sub_1CFEF7C74(&qword_1EDEC4930, MEMORY[0x1E69A2FB0]);
  *&v22 = a3;
  v20 = type metadata accessor for SleepingSampleDataTypePreferredUnitProvider();
  v21 = sub_1CFEF7C74(&qword_1EDEC2658, type metadata accessor for SleepingSampleDataTypePreferredUnitProvider);
  *&v19 = a2;
  type metadata accessor for SleepingSampleViewModelProvider();
  v10 = swift_allocObject();
  *(v10 + OBJC_IVAR____TtC15HealthBalanceUI31SleepingSampleViewModelProvider__dataFreshness) = 0;
  v11 = OBJC_IVAR____TtC15HealthBalanceUI31SleepingSampleViewModelProvider_queryResultOvernightMetricsModelWithFeatureStatusApplied;
  v12 = type metadata accessor for OvernightMetricsViewModel(0);
  v13 = *(*(v12 - 8) + 56);
  v13(v10 + v11, 1, 1, v12);
  v13(v10 + OBJC_IVAR____TtC15HealthBalanceUI31SleepingSampleViewModelProvider__queryResultOvernightMetricsModel, 1, 1, v12);
  *(v10 + OBJC_IVAR____TtC15HealthBalanceUI31SleepingSampleViewModelProvider__queryResultSleepingSampleViewModels) = MEMORY[0x1E69E7CC0];
  *(v10 + OBJC_IVAR____TtC15HealthBalanceUI31SleepingSampleViewModelProvider__queryTask) = 0;
  v14 = (v10 + OBJC_IVAR____TtC15HealthBalanceUI31SleepingSampleViewModelProvider__unitTest_updatedViewModels);
  *v14 = nullsub_1;
  v14[1] = 0;
  sub_1CFF0C90C();
  v15 = OBJC_IVAR____TtC15HealthBalanceUI31SleepingSampleViewModelProvider__dayRange;
  v16 = sub_1CFF0CADC();
  (*(*(v16 - 8) + 32))(v10 + v15, a1, v16);
  sub_1CFE4FF98(&v19, v10 + OBJC_IVAR____TtC15HealthBalanceUI31SleepingSampleViewModelProvider_unitProvider);
  sub_1CFE4FF98(&v22, v10 + OBJC_IVAR____TtC15HealthBalanceUI31SleepingSampleViewModelProvider_featureStatusProvider);
  v17 = (v10 + OBJC_IVAR____TtC15HealthBalanceUI31SleepingSampleViewModelProvider_makeDaySummaryCollectionSequence);
  *v17 = a4;
  v17[1] = a5;
  return v10;
}

uint64_t sub_1CFEF6B10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v27 = a6;
  v28 = a7;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v26);
  (*(*(a6 - 8) + 32))(boxed_opaque_existential_1, a3, a6);
  v24 = type metadata accessor for SleepingSampleDataTypePreferredUnitProvider();
  v25 = sub_1CFEF7C74(&qword_1EDEC2658, type metadata accessor for SleepingSampleDataTypePreferredUnitProvider);
  *&v23 = a2;
  type metadata accessor for SleepingSampleViewModelProvider();
  v14 = swift_allocObject();
  *(v14 + OBJC_IVAR____TtC15HealthBalanceUI31SleepingSampleViewModelProvider__dataFreshness) = 0;
  v15 = OBJC_IVAR____TtC15HealthBalanceUI31SleepingSampleViewModelProvider_queryResultOvernightMetricsModelWithFeatureStatusApplied;
  v16 = type metadata accessor for OvernightMetricsViewModel(0);
  v17 = *(*(v16 - 8) + 56);
  v17(v14 + v15, 1, 1, v16);
  v17(v14 + OBJC_IVAR____TtC15HealthBalanceUI31SleepingSampleViewModelProvider__queryResultOvernightMetricsModel, 1, 1, v16);
  *(v14 + OBJC_IVAR____TtC15HealthBalanceUI31SleepingSampleViewModelProvider__queryResultSleepingSampleViewModels) = MEMORY[0x1E69E7CC0];
  *(v14 + OBJC_IVAR____TtC15HealthBalanceUI31SleepingSampleViewModelProvider__queryTask) = 0;
  v18 = (v14 + OBJC_IVAR____TtC15HealthBalanceUI31SleepingSampleViewModelProvider__unitTest_updatedViewModels);
  *v18 = nullsub_1;
  v18[1] = 0;
  sub_1CFF0C90C();
  v19 = OBJC_IVAR____TtC15HealthBalanceUI31SleepingSampleViewModelProvider__dayRange;
  v20 = sub_1CFF0CADC();
  (*(*(v20 - 8) + 32))(v14 + v19, a1, v20);
  sub_1CFE4FF98(&v23, v14 + OBJC_IVAR____TtC15HealthBalanceUI31SleepingSampleViewModelProvider_unitProvider);
  sub_1CFE4FF98(&v26, v14 + OBJC_IVAR____TtC15HealthBalanceUI31SleepingSampleViewModelProvider_featureStatusProvider);
  v21 = (v14 + OBJC_IVAR____TtC15HealthBalanceUI31SleepingSampleViewModelProvider_makeDaySummaryCollectionSequence);
  *v21 = a4;
  v21[1] = a5;
  return v14;
}

uint64_t sub_1CFEF6DB4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

uint64_t sub_1CFEF6ED0(uint64_t a1)
{
  v3 = v2;
  sub_1CFEF7BBC(0, &qword_1EDEC16E8, MEMORY[0x1E69E87C8]);
  v6 = (*(*(v5 - 8) + 80) + 32) & ~*(*(v5 - 8) + 80);
  v7 = (*(*(v5 - 8) + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v1 + 16);
  v9 = *(v1 + 24);
  v10 = *(v1 + v7);
  v11 = *(v1 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_1CFEA3DCC;

  return sub_1CFEF1BD0(a1, v8, v9, v1 + v6, v10, v11);
}

uint64_t sub_1CFEF7028(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1CFEA2F50;

  return sub_1CFEF2510(a1, v4, v5, v6);
}

unint64_t sub_1CFEF70E0()
{
  result = qword_1EC512B60;
  if (!qword_1EC512B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC512B60);
  }

  return result;
}

uint64_t sub_1CFEF7134(uint64_t a1)
{
  result = sub_1CFEF7C74(&qword_1EDEC32F0, type metadata accessor for SleepingSampleViewModelProvider);
  *(a1 + 8) = result;
  return result;
}

void sub_1CFEF7234()
{
  sub_1CFF0CADC();
  if (v0 <= 0x3F)
  {
    sub_1CFEEF4A0(319);
    if (v1 <= 0x3F)
    {
      sub_1CFF0C91C();
      if (v2 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

uint64_t sub_1CFEF7530(uint64_t a1)
{
  v2 = *(v1 + 16);
  v4 = a1;
  return v2(&v4);
}

uint64_t sub_1CFEF7568()
{
  v1 = v0[4];
  v2 = (v0[2] + OBJC_IVAR____TtC15HealthBalanceUI31SleepingSampleViewModelProvider__unitTest_updatedViewModels);
  *v2 = v0[3];
  v2[1] = v1;
}

uint64_t sub_1CFEF75FC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OvernightMetricsViewModel(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFEEF4A0(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFE7EB70();
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v14 + 56);
  sub_1CFEEF6E4(a1, v13, sub_1CFEEF4A0);
  sub_1CFEEF6E4(a2, &v13[v15], sub_1CFEEF4A0);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) != 1)
  {
    sub_1CFEEF6E4(v13, v10, sub_1CFEEF4A0);
    if (v16(&v13[v15], 1, v4) != 1)
    {
      sub_1CFEF6DB4(&v13[v15], v7, type metadata accessor for OvernightMetricsViewModel);
      v18 = _s15HealthBalanceUI25OvernightMetricsViewModelV2eeoiySbAC_ACtFZ_0(v10, v7);
      sub_1CFEF7A60(v7, type metadata accessor for OvernightMetricsViewModel);
      sub_1CFEF7A60(v10, type metadata accessor for OvernightMetricsViewModel);
      sub_1CFEF7A60(v13, sub_1CFEEF4A0);
      v17 = v18 ^ 1;
      return v17 & 1;
    }

    sub_1CFEF7A60(v10, type metadata accessor for OvernightMetricsViewModel);
    goto LABEL_6;
  }

  if (v16(&v13[v15], 1, v4) != 1)
  {
LABEL_6:
    sub_1CFEF7A60(v13, sub_1CFE7EB70);
    v17 = 1;
    return v17 & 1;
  }

  sub_1CFEF7A60(v13, sub_1CFEEF4A0);
  v17 = 0;
  return v17 & 1;
}

void sub_1CFEF7900()
{
  if (!qword_1EC512B68)
  {
    type metadata accessor for os_unfair_lock_s(255);
    v0 = sub_1CFF0E9BC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC512B68);
    }
  }
}

uint64_t sub_1CFEF7960(uint64_t a1)
{
  v4 = *(sub_1CFF0CADC() - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1CFEA2F50;

  return sub_1CFEF3938(a1, v6, v1 + v5);
}

uint64_t sub_1CFEF7A60(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1CFEF7AC0()
{
  *(*(v0 + 16) + OBJC_IVAR____TtC15HealthBalanceUI31SleepingSampleViewModelProvider__queryTask) = *(v0 + 24);
}

uint64_t sub_1CFEF7B04(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1CFEA3DCC;

  return sub_1CFEB8040(a1, v4);
}

void sub_1CFEF7BBC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, unint64_t, void))
{
  if (!*a2)
  {
    v6 = sub_1CFF0CDCC();
    v7 = sub_1CFE9E1D8();
    v8 = a3(a1, v6, v7, MEMORY[0x1E69E7288]);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t objectdestroyTm_2()
{

  return swift_deallocObject();
}

uint64_t sub_1CFEF7C74(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1CFEF7CDC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = OBJC_IVAR____TtC15HealthBalanceUI31SleepingSampleViewModelProvider__dataFreshness;
  result = swift_beginAccess();
  *(v1 + v3) = v2;
  return result;
}

void sub_1CFEF7D38()
{
  if (!qword_1EC512B78)
  {
    sub_1CFE62B04(255, &qword_1EC512A40);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC512B78);
    }
  }
}

void sub_1CFEF7DAC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1CFEF7E10(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_1CFF0EBAC();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t type metadata accessor for OvernightMetricsChartDayAxisLabel()
{
  result = qword_1EDEC2C80;
  if (!qword_1EDEC2C80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1CFEF7F08()
{
  type metadata accessor for OvernightMetricsAxisConfiguration.DayConfiguration.Label(319);
  if (v0 <= 0x3F)
  {
    sub_1CFECB5C0(319, &qword_1EDEC2B38);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1CFEF7FC0@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for OvernightMetricsAxisConfiguration.DayConfiguration.Label(0);
  v4 = *(v1 + v3[7]);
  v5 = type metadata accessor for OvernightMetricsChartDayAxisLabel();
  v6 = v1 + *(v5 + 24);
  if (*(v6 + 256))
  {
    v7 = *(v6 + 256);
  }

  else
  {
    v7 = *(v1 + v3[8]);
  }

  v8 = v1 + *(v5 + 20);
  v9 = *(v8 + 16);
  v37 = *v8;
  v38 = v9;
  v10 = *(v8 + 48);
  v39 = *(v8 + 32);
  v40 = v10;
  v41 = *(v8 + 64);
  v11 = v37;
  if (v37)
  {
    v12 = *(&v37 + 1);
    v31 = v38;
    v32 = v39;
    v13 = *(&v40 + 1);
    v14 = v40;
    v15 = v41;
  }

  else
  {
    v16 = qword_1EDEC27D8;

    if (v16 != -1)
    {
      swift_once();
    }

    v17 = qword_1EDEC82D0;
    swift_getKeyPath();
    *&v42 = v17;
    sub_1CFEF8658(&qword_1EDEC27D0, type metadata accessor for GlobalOvernightMetricsChartAnimationState);
    sub_1CFF0C8DC();

    v18 = *(v17 + 32);
    v19 = *(v17 + 48);
    v20 = *(v17 + 64);
    v46 = *(v17 + 80);
    v44 = v19;
    v45 = v20;
    v43 = v18;
    v42 = *(v17 + 16);
    v13 = *(&v20 + 1);
    v15 = v46;
    v14 = v20;
    v31 = v18;
    v32 = v19;
    v12 = *(&v42 + 1);
    v11 = v42;
    sub_1CFE5307C(&v42, v34);
  }

  *&v34[0] = v11;
  *(&v34[0] + 1) = v12;
  v34[1] = v31;
  v34[2] = v32;
  *&v35 = v14;
  *(&v35 + 1) = v13;
  v36 = v15;
  v46 = v15;
  v44 = v32;
  v45 = v35;
  v42 = v34[0];
  v43 = v31;
  v21 = *(v1 + v3[5]);
  sub_1CFE530D8(&v37, v33);
  v22 = sub_1CFEE6958(v1, v21);
  sub_1CFE531B0(v34);
  v23 = *(v6 + 264);
  KeyPath = swift_getKeyPath();

  v25 = sub_1CFF0DABC();
  result = sub_1CFF0D40C();
  *a1 = v4;
  *(a1 + 8) = v7;
  *(a1 + 16) = v22;
  *(a1 + 24) = KeyPath;
  *(a1 + 32) = v23;
  *(a1 + 40) = v25;
  *(a1 + 48) = v27;
  *(a1 + 56) = v28;
  *(a1 + 64) = v29;
  *(a1 + 72) = v30;
  *(a1 + 80) = 0;
  return result;
}

unint64_t sub_1CFEF8260()
{
  result = qword_1EDEC1CD0;
  if (!qword_1EDEC1CD0)
  {
    sub_1CFEF8390(255, &qword_1EDEC1CC8, sub_1CFEF8304);
    sub_1CFEF8454();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEC1CD0);
  }

  return result;
}

void sub_1CFEF8304()
{
  if (!qword_1EDEC1D58)
  {
    sub_1CFEF8390(255, &qword_1EDEC1E28, sub_1CFEF83F4);
    sub_1CFE697A8();
    v0 = sub_1CFF0D62C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDEC1D58);
    }
  }
}

void sub_1CFEF8390(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1CFF0D62C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1CFEF83F4()
{
  if (!qword_1EDEC1F58)
  {
    sub_1CFEBCC54();
    v0 = sub_1CFF0D62C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDEC1F58);
    }
  }
}

unint64_t sub_1CFEF8454()
{
  result = qword_1EDEC1D60;
  if (!qword_1EDEC1D60)
  {
    sub_1CFEF8304();
    sub_1CFEF8504();
    sub_1CFEF8658(&qword_1EDEC1AA0, sub_1CFE697A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEC1D60);
  }

  return result;
}

unint64_t sub_1CFEF8504()
{
  result = qword_1EDEC1E30;
  if (!qword_1EDEC1E30)
  {
    sub_1CFEF8390(255, &qword_1EDEC1E28, sub_1CFEF83F4);
    sub_1CFEF85A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEC1E30);
  }

  return result;
}

unint64_t sub_1CFEF85A8()
{
  result = qword_1EDEC1F60;
  if (!qword_1EDEC1F60)
  {
    sub_1CFEF83F4();
    sub_1CFEF8658(&qword_1EDEC1AE0, sub_1CFEBCC54);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEC1F60);
  }

  return result;
}

uint64_t sub_1CFEF8658(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1CFEF8704@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v62 = a1;
  v3 = sub_1CFF0D9EC();
  v60 = *(v3 - 8);
  v61 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v59 = &v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_1CFF0C9CC();
  v5 = *(v49 - 8);
  MEMORY[0x1EEE9AC00](v49);
  v7 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFEF99C0(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFE866D0(0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFEF9A58();
  v50 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v47 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFEF9B34();
  v18 = *(v17 - 8);
  v53 = v17;
  v54 = v18;
  MEMORY[0x1EEE9AC00](v17);
  v48 = &v47 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFEF9D68();
  v21 = *(v20 - 8);
  v55 = v20;
  v56 = v21;
  MEMORY[0x1EEE9AC00](v20);
  v51 = &v47 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFEF9ED0();
  v24 = *(v23 - 8);
  v57 = v23;
  v58 = v24;
  MEMORY[0x1EEE9AC00](v23);
  v52 = &v47 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFEF8E6C(v1, v16);
  type metadata accessor for BalanceWidgetViewModel();
  v26 = *MEMORY[0x1E69A2D98];
  v27 = sub_1CFF0C9BC();
  v28 = *(v27 - 8);
  (*(v28 + 104))(v10, v26, v27);
  (*(v28 + 56))(v10, 0, 1, v27);
  v29 = v49;
  (*(v5 + 104))(v7, *MEMORY[0x1E69A2DB8], v49);
  v30 = v2;
  sub_1CFF0C9AC();
  (*(v5 + 8))(v7, v29);
  sub_1CFEFA050(v10, sub_1CFEF99C0);
  v31 = sub_1CFF0C63C();
  (*(*(v31 - 8) + 56))(v13, 0, 1, v31);
  v32 = sub_1CFEFD6EC(&qword_1EDEC19F0, sub_1CFEF9A58, sub_1CFEF9BFC);
  v33 = v48;
  v34 = v50;
  sub_1CFF0DD0C();
  sub_1CFEFA050(v13, sub_1CFE866D0);
  sub_1CFEFA050(v16, sub_1CFEF9A58);
  v63 = v30;
  v35 = type metadata accessor for BalanceWidgetAccessoryCircularLabelView(0);
  v66 = v34;
  v67 = v32;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v37 = sub_1CFEF9D20(qword_1EDEC4328, type metadata accessor for BalanceWidgetAccessoryCircularLabelView);
  v38 = v51;
  v39 = v53;
  sub_1CFF0DCEC();
  (*(v54 + 8))(v33, v39);
  v40 = v59;
  sub_1CFF0D9CC();
  v66 = v39;
  v67 = v35;
  v68 = OpaqueTypeConformance2;
  v69 = v37;
  v41 = swift_getOpaqueTypeConformance2();
  v42 = v52;
  v43 = v55;
  sub_1CFF0DDBC();
  (*(v60 + 8))(v40, v61);
  (*(v56 + 8))(v38, v43);
  v66 = sub_1CFEC12E8();
  v67 = v44;
  v64 = v43;
  v65 = v41;
  swift_getOpaqueTypeConformance2();
  sub_1CFE60C24();
  v45 = v57;
  sub_1CFF0DD8C();

  return (*(v58 + 8))(v42, v45);
}

uint64_t sub_1CFEF8E6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v54 = a2;
  v53 = type metadata accessor for BalanceWidgetAccessoryCircularGaugeView(0);
  MEMORY[0x1EEE9AC00](v53);
  v4 = &v41 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFEFA0B8(0, &qword_1EDEC1BC8, type metadata accessor for BalanceWidgetAccessoryCircularWarmupView, type metadata accessor for BalanceWidgetAccessoryCircularGaugeView, MEMORY[0x1E697F948]);
  v50 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v52 = &v41 - v6;
  v51 = type metadata accessor for BalanceWidgetAccessoryCircularWarmupView(0);
  MEMORY[0x1EEE9AC00](v51);
  v44 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for OvernightMetricsWarmupProgress();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v45 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFE884FC(0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v41 - v15;
  v47 = sub_1CFF0CA6C();
  v17 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47);
  v19 = &v41 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v46 = &v41 - v21;
  sub_1CFEFA0B8(0, &qword_1EDEC1B70, type metadata accessor for BalanceWidgetAccessoryCircularWarmupView, type metadata accessor for BalanceWidgetAccessoryCircularGaugeView, MEMORY[0x1E697F960]);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v49 = &v41 - v23;
  sub_1CFF0E6DC();
  v48 = sub_1CFF0E6CC();
  sub_1CFF0E66C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v24 = a1;
  sub_1CFEC1EB4(v16);
  v25 = *(v9 + 48);
  if (v25(v16, 1, v8) == 1)
  {
    sub_1CFEFA050(v16, sub_1CFE884FC);
    v26 = v24;
LABEL_11:
    sub_1CFEFDAA4(v26, v4, type metadata accessor for BalanceWidgetViewModel);
    *&v4[*(v53 + 20)] = swift_getKeyPath();
    sub_1CFEF99F4(0, &qword_1EDEC2150, type metadata accessor for BalanceWidgetAccessoryCircularSpecs, MEMORY[0x1E697DCB8]);
    swift_storeEnumTagMultiPayload();
    sub_1CFEFDAA4(v4, v52, type metadata accessor for BalanceWidgetAccessoryCircularGaugeView);
    swift_storeEnumTagMultiPayload();
    sub_1CFEF9D20(qword_1EDEC4290, type metadata accessor for BalanceWidgetAccessoryCircularWarmupView);
    sub_1CFEF9D20(qword_1EDEC43C0, type metadata accessor for BalanceWidgetAccessoryCircularGaugeView);
    v40 = v49;
    sub_1CFF0D93C();
    sub_1CFEFA050(v4, type metadata accessor for BalanceWidgetAccessoryCircularGaugeView);
    goto LABEL_12;
  }

  v43 = v4;
  v27 = v47;
  v42 = *(v17 + 16);
  v42(v19, v16, v47);
  sub_1CFEFA050(v16, type metadata accessor for OvernightMetricsWarmupProgress);
  v28 = v17;
  v29 = *(v17 + 32);
  v30 = v46;
  v29(v46, v19, v27);
  v31 = v24;
  sub_1CFEC1EB4(v13);
  if (v25(v13, 1, v8) == 1)
  {
    sub_1CFEFA050(v13, sub_1CFE884FC);
LABEL_10:
    (*(v28 + 8))(v30, v47);
    v26 = v31;
    v4 = v43;
    goto LABEL_11;
  }

  v32 = v45;
  sub_1CFEFD250(v13, v45, type metadata accessor for OvernightMetricsWarmupProgress);
  v33 = sub_1CFF0CA3C();
  v34 = sub_1CFF0CA5C();
  result = sub_1CFEFA050(v32, type metadata accessor for OvernightMetricsWarmupProgress);
  if (!__OFSUB__(v33, v34))
  {
    if (v33 - v34 > 0)
    {
      v36 = v44;
      sub_1CFEFDAA4(v31, v44, type metadata accessor for BalanceWidgetViewModel);
      v37 = v30;
      v38 = v51;
      v39 = v47;
      v42((v36 + *(v51 + 20)), v37, v47);
      *(v36 + *(v38 + 24)) = swift_getKeyPath();
      sub_1CFEF99F4(0, &qword_1EDEC2150, type metadata accessor for BalanceWidgetAccessoryCircularSpecs, MEMORY[0x1E697DCB8]);
      swift_storeEnumTagMultiPayload();
      sub_1CFEFDAA4(v36, v52, type metadata accessor for BalanceWidgetAccessoryCircularWarmupView);
      swift_storeEnumTagMultiPayload();
      sub_1CFEF9D20(qword_1EDEC4290, type metadata accessor for BalanceWidgetAccessoryCircularWarmupView);
      sub_1CFEF9D20(qword_1EDEC43C0, type metadata accessor for BalanceWidgetAccessoryCircularGaugeView);
      v40 = v49;
      sub_1CFF0D93C();
      sub_1CFEFA050(v36, type metadata accessor for BalanceWidgetAccessoryCircularWarmupView);
      (*(v28 + 8))(v37, v39);
LABEL_12:
      sub_1CFEFC23C(v40, v54);
    }

    goto LABEL_10;
  }

  __break(1u);
  return result;
}

uint64_t sub_1CFEF96D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1CFF0E6DC();
  sub_1CFF0E6CC();
  sub_1CFF0E66C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_1CFEFDAA4(a1, a2, type metadata accessor for BalanceWidgetViewModel);
}

uint64_t sub_1CFEF9790@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1CFF0D80C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1E697DCB8];
  sub_1CFEF99F4(0, &qword_1EDEC2150, type metadata accessor for BalanceWidgetAccessoryCircularSpecs, MEMORY[0x1E697DCB8]);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v14 - v9;
  v11 = type metadata accessor for BalanceWidgetAccessoryCircularGaugeView(0);
  sub_1CFEFD1DC(v1 + *(v11 + 20), v10, &qword_1EDEC2150, type metadata accessor for BalanceWidgetAccessoryCircularSpecs, v7, sub_1CFEF99F4);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_1CFEFD250(v10, a1, type metadata accessor for BalanceWidgetAccessoryCircularSpecs);
  }

  sub_1CFF0E7DC();
  v13 = sub_1CFF0DA6C();
  sub_1CFF0D00C();

  sub_1CFF0D7FC();
  swift_getAtKeyPath();

  return (*(v4 + 8))(v6, v3);
}

void sub_1CFEF99F4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1CFEF9A58()
{
  if (!qword_1EDEC19E8)
  {
    sub_1CFEFA0B8(255, &qword_1EDEC1B70, type metadata accessor for BalanceWidgetAccessoryCircularWarmupView, type metadata accessor for BalanceWidgetAccessoryCircularGaugeView, MEMORY[0x1E697F960]);
    v0 = sub_1CFF0DF1C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDEC19E8);
    }
  }
}

void sub_1CFEF9B34()
{
  if (!qword_1EDEC1A08)
  {
    sub_1CFEF9A58();
    sub_1CFEFD6EC(&qword_1EDEC19F0, sub_1CFEF9A58, sub_1CFEF9BFC);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EDEC1A08);
    }
  }
}

unint64_t sub_1CFEF9BFC()
{
  result = qword_1EDEC1B78;
  if (!qword_1EDEC1B78)
  {
    sub_1CFEFA0B8(255, &qword_1EDEC1B70, type metadata accessor for BalanceWidgetAccessoryCircularWarmupView, type metadata accessor for BalanceWidgetAccessoryCircularGaugeView, MEMORY[0x1E697F960]);
    sub_1CFEF9D20(qword_1EDEC4290, type metadata accessor for BalanceWidgetAccessoryCircularWarmupView);
    sub_1CFEF9D20(qword_1EDEC43C0, type metadata accessor for BalanceWidgetAccessoryCircularGaugeView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEC1B78);
  }

  return result;
}

uint64_t sub_1CFEF9D20(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1CFEF9D68()
{
  if (!qword_1EDEC1A38)
  {
    sub_1CFEF9B34();
    type metadata accessor for BalanceWidgetAccessoryCircularLabelView(255);
    sub_1CFEF9A58();
    sub_1CFEFD6EC(&qword_1EDEC19F0, sub_1CFEF9A58, sub_1CFEF9BFC);
    swift_getOpaqueTypeConformance2();
    sub_1CFEF9D20(qword_1EDEC4328, type metadata accessor for BalanceWidgetAccessoryCircularLabelView);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EDEC1A38);
    }
  }
}

void sub_1CFEF9ED0()
{
  if (!qword_1EDEC1A00)
  {
    sub_1CFEF9D68();
    sub_1CFEF9B34();
    type metadata accessor for BalanceWidgetAccessoryCircularLabelView(255);
    sub_1CFEF9A58();
    sub_1CFEFD6EC(&qword_1EDEC19F0, sub_1CFEF9A58, sub_1CFEF9BFC);
    swift_getOpaqueTypeConformance2();
    sub_1CFEF9D20(qword_1EDEC4328, type metadata accessor for BalanceWidgetAccessoryCircularLabelView);
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EDEC1A00);
    }
  }
}

uint64_t sub_1CFEFA050(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1CFEFA0B8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

uint64_t sub_1CFEFA13C()
{
  v0 = type metadata accessor for BalanceWidgetAccessoryCircularSpecs();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = v9 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFEFD388(0);
  v4 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v6 = v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFEFA7A0(v6);
  sub_1CFEF9790(v2);
  v7 = sub_1CFE55D1C();
  sub_1CFEFA050(v2, type metadata accessor for BalanceWidgetAccessoryCircularSpecs);
  *&v6[*(v4 + 36)] = v7;
  v9[1] = &unk_1F4C90770;
  sub_1CFEE098C(&unk_1F4C90920);
  sub_1CFEFDB0C(0, &qword_1EDEC1718, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
  sub_1CFEFCEE0(&qword_1EDEC1710);
  sub_1CFF0E47C();

  sub_1CFEFD5F8();
  sub_1CFF0DDCC();

  swift_arrayDestroy();
  return sub_1CFEFA050(v6, sub_1CFEFD388);
}

uint64_t sub_1CFEFA348@<X0>(uint64_t a1@<X8>)
{
  v29 = a1;
  v1 = sub_1CFF0E2DC();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for BalanceWidgetAccessoryCircularSpecs();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v27 - v9;
  sub_1CFEFCDC4(0);
  v12 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v14 = (&v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1CFEF9790(v10);
  sub_1CFEFA050(v10, type metadata accessor for BalanceWidgetAccessoryCircularSpecs);
  v28 = sub_1CFF0DF2C();
  sub_1CFEF9790(v7);
  sub_1CFF0E2CC();
  v15 = sub_1CFF0E2AC();
  v16 = *(v2 + 8);
  v16(v4, v1);
  if (v15 & 1) != 0 || (sub_1CFF0E2BC(), v17 = sub_1CFF0E2AC(), v16(v4, v1), (v17))
  {
    v18 = sub_1CFF0DEAC();
  }

  else
  {
    sub_1CFF0DEAC();
    v18 = sub_1CFF0DEBC();
  }

  sub_1CFEFA050(v7, type metadata accessor for BalanceWidgetAccessoryCircularSpecs);
  sub_1CFEF9790(v10);
  v19 = sub_1CFE56070();
  sub_1CFEFA050(v10, type metadata accessor for BalanceWidgetAccessoryCircularSpecs);
  KeyPath = swift_getKeyPath();
  sub_1CFEF9790(v10);
  sub_1CFEFA050(v10, type metadata accessor for BalanceWidgetAccessoryCircularSpecs);
  v21 = (v14 + *(v12 + 36));
  sub_1CFEFCEAC(0);
  v23 = *(v22 + 28);
  v24 = *MEMORY[0x1E69816C0];
  v25 = sub_1CFF0DF5C();
  (*(*(v25 - 8) + 104))(v21 + v23, v24, v25);
  *v21 = swift_getKeyPath();
  *v14 = v28;
  v14[1] = v18;
  v14[2] = KeyPath;
  v14[3] = v19;
  v30 = &unk_1F4C90770;
  sub_1CFEE098C(&unk_1F4C90960);
  sub_1CFEFDB0C(0, &qword_1EDEC1718, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
  sub_1CFEFCEE0(&qword_1EDEC1710);
  sub_1CFF0E47C();

  sub_1CFEFD828(&qword_1EDEC1D70, sub_1CFEFCDC4, sub_1CFEFD12C);
  sub_1CFF0DDCC();

  swift_arrayDestroy();
  return sub_1CFEFA050(v14, sub_1CFEFCDC4);
}

uint64_t sub_1CFEFA7A0@<X0>(uint64_t a1@<X8>)
{
  v43 = a1;
  v1 = sub_1CFF0DF5C();
  v39 = *(v1 - 8);
  v40 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v38 = &v35 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFEFD444(0);
  v44 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = (&v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v6);
  v41 = &v35 - v7;
  sub_1CFEFD9BC(0, &qword_1EDEC1BB0, MEMORY[0x1E697F948]);
  v42 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v35 - v9;
  v11 = type metadata accessor for BalanceWidgetAccessoryCircularSpecs();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v35 - v15;
  sub_1CFEFD9BC(0, &qword_1EDEC1B48, MEMORY[0x1E697F960]);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v35 - v18;
  sub_1CFF0E6DC();
  sub_1CFF0E6CC();
  sub_1CFF0E66C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_1CFEF9790(v16);
  sub_1CFE558DC();
  v21 = v20;
  sub_1CFEFA050(v16, type metadata accessor for BalanceWidgetAccessoryCircularSpecs);
  if (v21)
  {
    v36 = sub_1CFF0DF2C();
    sub_1CFEF9790(v16);
    v35 = sub_1CFE56318();
    v37 = v19;
    sub_1CFEFA050(v16, type metadata accessor for BalanceWidgetAccessoryCircularSpecs);
    KeyPath = swift_getKeyPath();
    sub_1CFEF9790(v13);
    v23 = v13[*(v11 + 20)];
    sub_1CFEFA050(v13, type metadata accessor for BalanceWidgetAccessoryCircularSpecs);
    v24 = v38;
    v25 = v39;
    v26 = MEMORY[0x1E69816E0];
    if (!v23)
    {
      v26 = MEMORY[0x1E69816C0];
    }

    v27 = v40;
    (*(v39 + 104))(v38, *v26, v40);
    v28 = swift_getKeyPath();
    v29 = (v5 + *(v44 + 36));
    sub_1CFEFCEAC(0);
    v19 = v37;
    (*(v25 + 32))(v29 + *(v30 + 28), v24, v27);
    *v29 = v28;
    v31 = v35;
    *v5 = v36;
    v5[1] = KeyPath;
    v5[2] = v31;
    v32 = v5;
    v33 = v41;
    sub_1CFEFD250(v32, v41, sub_1CFEFD444);
    sub_1CFEFDAA4(v33, v10, sub_1CFEFD444);
    swift_storeEnumTagMultiPayload();
    sub_1CFEFD828(&qword_1EDEC1E20, sub_1CFEFD444, sub_1CFE69A1C);
    sub_1CFF0D93C();
    sub_1CFEFA050(v33, sub_1CFEFD444);
  }

  else
  {
    swift_storeEnumTagMultiPayload();
    sub_1CFEFD828(&qword_1EDEC1E20, sub_1CFEFD444, sub_1CFE69A1C);
    sub_1CFF0D93C();
  }

  sub_1CFEFDA24(v19, v43);
}

uint64_t sub_1CFEFAD00@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1CFF0D80C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1E697DCB8];
  sub_1CFEF99F4(0, &qword_1EDEC2150, type metadata accessor for BalanceWidgetAccessoryCircularSpecs, MEMORY[0x1E697DCB8]);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v14 - v9;
  v11 = type metadata accessor for BalanceWidgetAccessoryCircularWarmupView(0);
  sub_1CFEFD1DC(v1 + *(v11 + 24), v10, &qword_1EDEC2150, type metadata accessor for BalanceWidgetAccessoryCircularSpecs, v7, sub_1CFEF99F4);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_1CFEFD250(v10, a1, type metadata accessor for BalanceWidgetAccessoryCircularSpecs);
  }

  sub_1CFF0E7DC();
  v13 = sub_1CFF0DA6C();
  sub_1CFF0D00C();

  sub_1CFF0D7FC();
  swift_getAtKeyPath();

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1CFEFAF2C@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for BalanceWidgetAccessoryCircularSpecs();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFEF9790(v5);
  v6 = sub_1CFE56D4C(v1);
  sub_1CFEFA050(v5, type metadata accessor for BalanceWidgetAccessoryCircularSpecs);
  sub_1CFEF9790(v5);
  sub_1CFEFA050(v5, type metadata accessor for BalanceWidgetAccessoryCircularSpecs);
  *a1 = v6;
  *(a1 + 8) = xmmword_1CFF13F30;
  sub_1CFEFD2B8();
  v8 = v7;
  sub_1CFEFA13C();
  return sub_1CFEFA348(a1 + *(v8 + 60));
}

uint64_t sub_1CFEFB02C@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v111 = a2;
  v3 = sub_1CFF0E2DC();
  v102 = *(v3 - 8);
  v103 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v101 = &v94 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFEFCDC4(0);
  v108 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v109 = (&v94 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1CFEFCD7C(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v110 = &v94 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v115 = &v94 - v10;
  sub_1CFEFCCF0();
  v98 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v99 = &v94 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFEFCCA8(0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v114 = &v94 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v118 = &v94 - v16;
  v17 = type metadata accessor for BalanceWidgetAccessoryCircularSpecs();
  MEMORY[0x1EEE9AC00](v17 - 8);
  v100 = &v94 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v94 - v20;
  sub_1CFEFCE48(0, &qword_1EDEC1F98, MEMORY[0x1E697CBE8]);
  v96 = v22;
  MEMORY[0x1EEE9AC00](v22);
  v97 = &v94 - v23;
  sub_1CFEFCB2C();
  v106 = *(v24 - 8);
  v107 = v24;
  MEMORY[0x1EEE9AC00](v24);
  v105 = &v94 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v116 = &v94 - v27;
  sub_1CFF0E6DC();
  v104 = sub_1CFF0E6CC();
  sub_1CFF0E66C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v124 = sub_1CFEC1B18();
  v125[0] = v28;
  sub_1CFE60C24();
  v29 = sub_1CFF0DC6C();
  v31 = v30;
  v33 = v32;
  v117 = a1;
  sub_1CFEFAD00(v21);
  sub_1CFE565BC();
  v95 = type metadata accessor for BalanceWidgetAccessoryCircularSpecs;
  sub_1CFEFA050(v21, type metadata accessor for BalanceWidgetAccessoryCircularSpecs);
  v34 = sub_1CFF0DC3C();
  v119 = v21;
  v36 = v35;
  v38 = v37;
  v113 = v39;
  sub_1CFE60C78(v29, v31, v33 & 1);

  sub_1CFEFAD00(v119);
  v40 = sub_1CFE55F14();
  sub_1CFEFA050(v119, type metadata accessor for BalanceWidgetAccessoryCircularSpecs);
  v124 = v40;
  v41 = sub_1CFF0DC2C();
  v43 = v42;
  v45 = v44;
  v47 = v46;
  v94 = v46;
  sub_1CFE60C78(v34, v36, v38 & 1);

  v124 = v41;
  v125[0] = v43;
  LOBYTE(v125[1]) = v45 & 1;
  v125[2] = v47;
  v123[0] = &unk_1F4C90770;
  sub_1CFEE098C(&unk_1F4C909A0);
  sub_1CFEFDB0C(0, &qword_1EDEC1718, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
  v113 = v48;
  v112 = sub_1CFEFCEE0(&qword_1EDEC1710);
  sub_1CFF0E47C();

  v49 = v97;
  v50 = MEMORY[0x1E6981148];
  sub_1CFF0DDCC();
  v51 = v119;
  swift_arrayDestroy();
  sub_1CFE60C78(v41, v43, v45 & 1);
  v52 = v117;

  sub_1CFEFCBD4();
  sub_1CFF0DCFC();
  sub_1CFEFCF48(v49, &qword_1EDEC1F98, MEMORY[0x1E697CBE8], v50, sub_1CFEFCE48);
  v53 = *(type metadata accessor for BalanceWidgetAccessoryCircularWarmupView(0) + 20);
  v54 = sub_1CFF0CA6C();
  v55 = v99;
  (*(*(v54 - 8) + 16))(v99, v52 + v53, v54);
  sub_1CFEFAD00(v51);
  v56 = v95;
  sub_1CFEFA050(v51, v95);
  v57 = type metadata accessor for WarmupProgressCounter();
  v58 = *(v57 + 24);
  v122[0] = swift_getKeyPath();
  sub_1CFEA4090(v122);
  memcpy((v55 + v58), v122, 0x119uLL);
  v59 = (v55 + *(v57 + 20));
  __asm { FMOV            V0.2D, #4.0 }

  *v59 = _Q0;
  v59[1] = xmmword_1CFF13F40;
  KeyPath = swift_getKeyPath();
  sub_1CFEFAD00(v51);
  sub_1CFE56728(v121);
  sub_1CFEFA050(v51, v56);
  v123[0] = KeyPath;
  memcpy(&v123[1], v121, 0x118uLL);
  memcpy((v55 + *(v98 + 36)), v123, 0x120uLL);
  v124 = KeyPath;
  memcpy(v125, v121, sizeof(v125));
  v66 = MEMORY[0x1E6980A08];
  sub_1CFEFD1DC(v123, &v120, &qword_1EDEC1AB8, &type metadata for OvernightMetricsChartSpec, MEMORY[0x1E6980A08], sub_1CFEFDB0C);
  sub_1CFEFCF48(&v124, &qword_1EDEC1AB8, &type metadata for OvernightMetricsChartSpec, v66, sub_1CFEFDB0C);
  v120 = &unk_1F4C90770;
  sub_1CFEE098C(&unk_1F4C909E0);
  sub_1CFF0E47C();

  sub_1CFEFCFA8();
  sub_1CFF0DDCC();

  swift_arrayDestroy();
  sub_1CFEFA050(v55, sub_1CFEFCCF0);
  sub_1CFEFAD00(v51);
  sub_1CFEFA050(v51, v56);
  v67 = sub_1CFF0DF2C();
  v68 = v100;
  sub_1CFEFAD00(v100);
  v69 = v101;
  sub_1CFF0E2CC();
  LOBYTE(v57) = sub_1CFF0E2AC();
  v70 = v103;
  v71 = *(v102 + 8);
  v71(v69, v103);
  if (v57 & 1) != 0 || (sub_1CFF0E2BC(), v72 = sub_1CFF0E2AC(), v71(v69, v70), (v72))
  {
    v73 = sub_1CFF0DEAC();
  }

  else
  {
    sub_1CFF0DEAC();
    v73 = sub_1CFF0DEBC();
  }

  sub_1CFEFA050(v68, type metadata accessor for BalanceWidgetAccessoryCircularSpecs);
  sub_1CFEFAD00(v51);
  v74 = sub_1CFE56070();
  sub_1CFEFA050(v51, type metadata accessor for BalanceWidgetAccessoryCircularSpecs);
  v75 = swift_getKeyPath();
  sub_1CFEFAD00(v51);
  sub_1CFEFA050(v51, type metadata accessor for BalanceWidgetAccessoryCircularSpecs);
  v76 = v109;
  v77 = (v109 + *(v108 + 36));
  sub_1CFEFCEAC(0);
  v79 = *(v78 + 28);
  v80 = *MEMORY[0x1E69816C0];
  v81 = sub_1CFF0DF5C();
  (*(*(v81 - 8) + 104))(v77 + v79, v80, v81);
  *v77 = swift_getKeyPath();
  *v76 = v67;
  v76[1] = v73;
  v76[2] = v75;
  v76[3] = v74;
  v120 = &unk_1F4C90770;
  sub_1CFEE098C(&unk_1F4C90A20);
  sub_1CFF0E47C();

  sub_1CFEFD828(&qword_1EDEC1D70, sub_1CFEFCDC4, sub_1CFEFD12C);
  v82 = v115;
  sub_1CFF0DDCC();

  swift_arrayDestroy();
  sub_1CFEFA050(v76, sub_1CFEFCDC4);
  v84 = v105;
  v83 = v106;
  v85 = *(v106 + 16);
  v86 = v107;
  v85(v105, v116, v107);
  sub_1CFEFDAA4(v118, v114, sub_1CFEFCCA8);
  v87 = v110;
  sub_1CFEFDAA4(v82, v110, sub_1CFEFCD7C);
  v88 = v111;
  v85(v111, v84, v86);
  sub_1CFEFCAA4();
  v90 = v89;
  v91 = v114;
  sub_1CFEFDAA4(v114, &v88[*(v89 + 48)], sub_1CFEFCCA8);
  sub_1CFEFDAA4(v87, &v88[*(v90 + 64)], sub_1CFEFCD7C);
  sub_1CFEFA050(v115, sub_1CFEFCD7C);
  sub_1CFEFA050(v118, sub_1CFEFCCA8);
  v92 = *(v83 + 8);
  v92(v116, v86);
  sub_1CFEFA050(v87, sub_1CFEFCD7C);
  sub_1CFEFA050(v91, sub_1CFEFCCA8);
  v92(v84, v86);
}

uint64_t sub_1CFEFBD40@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_1CFF0D8DC();
  *(a1 + 8) = 0x4000000000000000;
  *(a1 + 16) = 0;
  sub_1CFEFCA08();
  return sub_1CFEFB02C(v1, (a1 + *(v3 + 44)));
}

uint64_t sub_1CFEFBD88@<X0>(_BYTE *a1@<X8>)
{
  sub_1CFEFDB0C(0, &qword_1EDEC15F8, MEMORY[0x1E6980D08], MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CFF0FCB0;
  v3 = sub_1CFF0DA7C();
  *(inited + 32) = v3;
  v4 = sub_1CFF0DA9C();
  *(inited + 33) = v4;
  v5 = sub_1CFF0DA8C();
  sub_1CFF0DA8C();
  if (sub_1CFF0DA8C() != v3)
  {
    v5 = sub_1CFF0DA8C();
  }

  sub_1CFF0DA8C();
  if (sub_1CFF0DA8C() != v4)
  {
    v5 = sub_1CFF0DA8C();
  }

  *a1 = v5;
  sub_1CFEFDB5C();
  return sub_1CFEFBE98();
}

uint64_t sub_1CFEFBE98()
{
  sub_1CFF0E6DC();
  sub_1CFF0E6CC();
  sub_1CFF0E66C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v0 = sub_1CFEC0DF8();
  sub_1CFEFDCC0(v0);

  swift_getKeyPath();
  sub_1CFEFDB0C(0, &qword_1EDEC1718, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
  sub_1CFEFCE48(0, &qword_1EDEC1F98, MEMORY[0x1E697CBE8]);
  sub_1CFEFCEE0(&qword_1EDEC1708);
  sub_1CFEFCBD4();
  sub_1CFF0E06C();
}

uint64_t sub_1CFEFC04C()
{
  sub_1CFF0E6DC();
  sub_1CFF0E6CC();
  sub_1CFF0E66C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_1CFE60C24();

  v0 = MEMORY[0x1E69E6158];
  v1 = sub_1CFF0DC6C();
  v3 = v2;
  v5 = v4 & 1;
  sub_1CFEE098C(&unk_1F4C90A60);
  sub_1CFEFDB0C(0, &qword_1EDEC1718, v0, MEMORY[0x1E69E62F8]);
  sub_1CFEFCEE0(&qword_1EDEC1710);
  sub_1CFF0E47C();

  sub_1CFF0DDCC();
  swift_arrayDestroy();
  sub_1CFE60C78(v1, v3, v5);
}

uint64_t sub_1CFEFC23C(uint64_t a1, uint64_t a2)
{
  sub_1CFEFA0B8(0, &qword_1EDEC1B70, type metadata accessor for BalanceWidgetAccessoryCircularWarmupView, type metadata accessor for BalanceWidgetAccessoryCircularGaugeView, MEMORY[0x1E697F960]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1CFEFC30C()
{
  result = type metadata accessor for BalanceWidgetViewModel();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_indexTm_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for BalanceWidgetViewModel();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    sub_1CFEF99F4(0, &qword_1EDEC2128, type metadata accessor for BalanceWidgetAccessoryCircularSpecs, MEMORY[0x1E697DCC0]);
    v11 = v10;
    v12 = *(*(v10 - 8) + 48);
    v13 = a1 + *(a3 + 20);

    return v12(v13, a2, v11);
  }
}

uint64_t __swift_store_extra_inhabitant_indexTm_2(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for BalanceWidgetViewModel();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    sub_1CFEF99F4(0, &qword_1EDEC2128, type metadata accessor for BalanceWidgetAccessoryCircularSpecs, MEMORY[0x1E697DCC0]);
    v13 = v12;
    v14 = *(*(v12 - 8) + 56);
    v15 = a1 + *(a4 + 20);

    return v14(v15, a2, a2, v13);
  }
}

void sub_1CFEFC5EC()
{
  type metadata accessor for BalanceWidgetViewModel();
  if (v0 <= 0x3F)
  {
    sub_1CFEF99F4(319, &qword_1EDEC2128, type metadata accessor for BalanceWidgetAccessoryCircularSpecs, MEMORY[0x1E697DCC0]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1CFEFC6C8()
{
  type metadata accessor for BalanceWidgetViewModel();
  if (v0 <= 0x3F)
  {
    sub_1CFF0CA6C();
    if (v1 <= 0x3F)
    {
      sub_1CFEF99F4(319, &qword_1EDEC2128, type metadata accessor for BalanceWidgetAccessoryCircularSpecs, MEMORY[0x1E697DCC0]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_1CFEFC794()
{
  result = qword_1EDEC1F80;
  if (!qword_1EDEC1F80)
  {
    sub_1CFEFA0B8(255, &qword_1EDEC1F78, sub_1CFEF9ED0, MEMORY[0x1E697CBE8], MEMORY[0x1E697E830]);
    sub_1CFEF9D68();
    sub_1CFEF9B34();
    type metadata accessor for BalanceWidgetAccessoryCircularLabelView(255);
    sub_1CFEF9A58();
    sub_1CFEFD6EC(&qword_1EDEC19F0, sub_1CFEF9A58, sub_1CFEF9BFC);
    swift_getOpaqueTypeConformance2();
    sub_1CFEF9D20(qword_1EDEC4328, type metadata accessor for BalanceWidgetAccessoryCircularLabelView);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1CFEF9D20(&qword_1EDEC1A60, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEC1F80);
  }

  return result;
}

void sub_1CFEFCA08()
{
  if (!qword_1EC512B80)
  {
    sub_1CFEFCA70(255);
    v0 = sub_1CFF0D58C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC512B80);
    }
  }
}

void sub_1CFEFCAA4()
{
  if (!qword_1EC512B90)
  {
    sub_1CFEFCB2C();
    sub_1CFEFCCA8(255);
    sub_1CFEFCD7C(255);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EC512B90);
    }
  }
}

void sub_1CFEFCB2C()
{
  if (!qword_1EC512B98)
  {
    sub_1CFEFCE48(255, &qword_1EDEC1F98, MEMORY[0x1E697CBE8]);
    sub_1CFEFCBD4();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EC512B98);
    }
  }
}

unint64_t sub_1CFEFCBD4()
{
  result = qword_1EDEC1FA0;
  if (!qword_1EDEC1FA0)
  {
    sub_1CFEFCE48(255, &qword_1EDEC1F98, MEMORY[0x1E697CBE8]);
    sub_1CFEF9D20(&qword_1EDEC1A60, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEC1FA0);
  }

  return result;
}

void sub_1CFEFCCF0()
{
  if (!qword_1EC512BA8)
  {
    type metadata accessor for WarmupProgressCounter();
    sub_1CFEFDB0C(255, &qword_1EDEC1AB8, &type metadata for OvernightMetricsChartSpec, MEMORY[0x1E6980A08]);
    v0 = sub_1CFF0D62C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC512BA8);
    }
  }
}

void sub_1CFEFCE48(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1CFF0D62C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1CFEFCEE0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1CFEFDB0C(255, &qword_1EDEC1718, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1CFEFCF48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = a5(0);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

unint64_t sub_1CFEFCFA8()
{
  result = qword_1EC512BB0;
  if (!qword_1EC512BB0)
  {
    sub_1CFEFCCF0();
    sub_1CFEF9D20(&qword_1EC512848, type metadata accessor for WarmupProgressCounter);
    sub_1CFEFD058();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC512BB0);
  }

  return result;
}

unint64_t sub_1CFEFD058()
{
  result = qword_1EDEC1AC0;
  if (!qword_1EDEC1AC0)
  {
    sub_1CFEFDB0C(255, &qword_1EDEC1AB8, &type metadata for OvernightMetricsChartSpec, MEMORY[0x1E6980A08]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEC1AC0);
  }

  return result;
}

uint64_t sub_1CFEFD0D4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1CFF0D75C();
  *a1 = result;
  return result;
}

unint64_t sub_1CFEFD12C()
{
  result = qword_1EDEC1E40;
  if (!qword_1EDEC1E40)
  {
    sub_1CFEFCE0C(255);
    sub_1CFEF85A8();
    sub_1CFEF9D20(&qword_1EDEC1AA0, sub_1CFE697A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEC1E40);
  }

  return result;
}

uint64_t sub_1CFEFD1DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, uint64_t, uint64_t, uint64_t))
{
  v8 = a6(0, a3, a4, a5);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  return a2;
}

uint64_t sub_1CFEFD250(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_1CFEFD2B8()
{
  if (!qword_1EDEC3A78)
  {
    sub_1CFEFA0B8(255, &qword_1EDEC1E48, sub_1CFEFD388, MEMORY[0x1E697CBE8], MEMORY[0x1E697E830]);
    sub_1CFEFCD7C(255);
    sub_1CFEFD504();
    sub_1CFEFD8DC();
    v0 = type metadata accessor for MultilayerCircularGauge();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDEC3A78);
    }
  }
}

void sub_1CFEFD3D0()
{
  if (!qword_1EDEC19D8)
  {
    sub_1CFEFD9BC(255, &qword_1EDEC1B48, MEMORY[0x1E697F960]);
    v0 = sub_1CFF0DF1C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDEC19D8);
    }
  }
}

void sub_1CFEFD480(uint64_t a1, unint64_t *a2, unint64_t *a3, void (*a4)(uint64_t), void (*a5)(uint64_t))
{
  if (!*a2)
  {
    sub_1CFEFCE48(255, a3, a4);
    a5(255);
    v7 = sub_1CFF0D62C();
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1CFEFD504()
{
  result = qword_1EDEC1E50;
  if (!qword_1EDEC1E50)
  {
    sub_1CFEFA0B8(255, &qword_1EDEC1E48, sub_1CFEFD388, MEMORY[0x1E697CBE8], MEMORY[0x1E697E830]);
    sub_1CFEFD5F8();
    sub_1CFEF9D20(&qword_1EDEC1A60, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEC1E50);
  }

  return result;
}

unint64_t sub_1CFEFD5F8()
{
  result = qword_1EDEC1F70;
  if (!qword_1EDEC1F70)
  {
    sub_1CFEFD388(255);
    sub_1CFEFD6EC(&qword_1EDEC19E0, sub_1CFEFD3D0, sub_1CFEFD75C);
    sub_1CFEF9D20(&qword_1EDEC1AE0, sub_1CFEBCC54);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEC1F70);
  }

  return result;
}

uint64_t sub_1CFEFD6EC(unint64_t *a1, void (*a2)(uint64_t), void (*a3)(void))
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

unint64_t sub_1CFEFD75C()
{
  result = qword_1EDEC1B50;
  if (!qword_1EDEC1B50)
  {
    sub_1CFEFD9BC(255, &qword_1EDEC1B48, MEMORY[0x1E697F960]);
    sub_1CFEFD828(&qword_1EDEC1E20, sub_1CFEFD444, sub_1CFE69A1C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEC1B50);
  }

  return result;
}

uint64_t sub_1CFEFD828(unint64_t *a1, void (*a2)(uint64_t), void (*a3)(void))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    sub_1CFEF9D20(&qword_1EDEC1A90, sub_1CFEFCEAC);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1CFEFD8DC()
{
  result = qword_1EDEC1CE0;
  if (!qword_1EDEC1CE0)
  {
    sub_1CFEFCD7C(255);
    sub_1CFEFD828(&qword_1EDEC1D70, sub_1CFEFCDC4, sub_1CFEFD12C);
    sub_1CFEF9D20(&qword_1EDEC1A60, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEC1CE0);
  }

  return result;
}

void sub_1CFEFD9BC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, void))
{
  if (!*a2)
  {
    sub_1CFEFD444(255);
    v7 = a3(a1, v6, MEMORY[0x1E6981E70]);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1CFEFDA24(uint64_t a1, uint64_t a2)
{
  sub_1CFEFD9BC(0, &qword_1EDEC1B48, MEMORY[0x1E697F960]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1CFEFDAA4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_1CFEFDB0C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1CFEFDB5C()
{
  if (!qword_1EDEC2080)
  {
    sub_1CFEFDBC8();
    sub_1CFE608FC();
    v0 = sub_1CFF0D58C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDEC2080);
    }
  }
}

void sub_1CFEFDBC8()
{
  if (!qword_1EDEC1840)
  {
    sub_1CFEFDB0C(255, &qword_1EDEC1718, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    sub_1CFEFCE48(255, &qword_1EDEC1F98, MEMORY[0x1E697CBE8]);
    sub_1CFEFCEE0(&qword_1EDEC1708);
    v0 = sub_1CFF0E07C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDEC1840);
    }
  }
}

uint64_t sub_1CFEFDCC0(uint64_t result)
{
  v1 = *(result + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v2 = 0;
  v3 = result + 40;
  v4 = MEMORY[0x1E69E7CC0];
  v13 = result + 40;
  do
  {
    v5 = (v3 + 16 * v2);
    for (i = v2; ; ++i)
    {
      if (i >= v1)
      {
        __break(1u);
LABEL_18:
        __break(1u);
        return result;
      }

      v2 = i + 1;
      if (__OFADD__(i, 1))
      {
        goto LABEL_18;
      }

      v8 = *(v5 - 1);
      v7 = *v5;
      swift_bridgeObjectRetain_n();
      v9 = sub_1CFEE6F0C(&v14, v8, v7);

      if (v9)
      {
        break;
      }

      v5 += 2;
      if (v2 == v1)
      {
        return v4;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    v15 = v4;
    if ((result & 1) == 0)
    {
      result = sub_1CFEF3DA4(0, *(v4 + 16) + 1, 1);
      v4 = v15;
    }

    v11 = *(v4 + 16);
    v10 = *(v4 + 24);
    if (v11 >= v10 >> 1)
    {
      result = sub_1CFEF3DA4((v10 > 1), v11 + 1, 1);
      v4 = v15;
    }

    *(v4 + 16) = v11 + 1;
    v12 = v4 + 16 * v11;
    *(v12 + 32) = v8;
    *(v12 + 40) = v7;
    v3 = v13;
  }

  while (v2 != v1);
  return v4;
}

void sub_1CFEFDE20()
{
  if (!qword_1EC512BC0)
  {
    sub_1CFEFCA70(255);
    sub_1CFEF9D20(&qword_1EC512BC8, sub_1CFEFCA70);
    v0 = sub_1CFF0DFFC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC512BC0);
    }
  }
}