uint64_t sub_1D1523D44()
{
  sub_1D15A4C88();
  sub_1D1523904();
  return sub_1D15A4CB8();
}

uint64_t sub_1D1523D94()
{
  sub_1D15A4C88();
  sub_1D1523904();
  return sub_1D15A4CB8();
}

uint64_t sub_1D1523DE4@<X0>(uint64_t *a1@<X8>)
{
  result = StatisticsOption.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_1D1523EDC()
{
  result = qword_1EE05B1F8;
  if (!qword_1EE05B1F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE05B1F8);
  }

  return result;
}

unint64_t sub_1D1523F34()
{
  result = qword_1EC630E68[0];
  if (!qword_1EC630E68[0])
  {
    sub_1D14A462C();
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC630E68);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for StatisticsOption(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF7)
  {
    goto LABEL_17;
  }

  if (a2 + 9 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 9) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 9;
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

      return (*a1 | (v4 << 8)) - 9;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 9;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v8 = v6 - 10;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for StatisticsOption(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF7)
  {
    v4 = 0;
  }

  if (a2 > 0xF6)
  {
    v5 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
    *result = a2 + 9;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1D15240DC()
{
  result = qword_1EE05B788;
  if (!qword_1EE05B788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE05B788);
  }

  return result;
}

uint64_t DateInterval.midpoint.getter()
{
  v0 = sub_1D15A26A8();
  MEMORY[0x1EEE9AC00](v0 - 8);
  sub_1D15A2298();
  sub_1D15A2288();
  return sub_1D15A2558();
}

uint64_t DateInterval.timeIntervalSinceReferenceDateRange.getter()
{
  v0 = sub_1D15A26A8();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v13 - v5;
  sub_1D15A2288();
  sub_1D15A2548();
  v8 = v7;
  v9 = *(v1 + 8);
  v9(v6, v0);
  sub_1D15A2258();
  sub_1D15A2548();
  v11 = v10;
  result = (v9)(v3, v0);
  if (v8 > v11)
  {
    __break(1u);
  }

  return result;
}

uint64_t DateInterval.shifted(by:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v45 = a2;
  sub_1D1455BCC(0, &qword_1EE05B7F8, MEMORY[0x1E6969530]);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v44 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v46 = &v37 - v6;
  v7 = sub_1D15A26A8();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v41 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v40 = &v37 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v37 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v37 - v16;
  v18 = MEMORY[0x1E6969AE8];
  sub_1D1455BCC(0, &qword_1EE05B7F0, MEMORY[0x1E6969AE8]);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v21 = &v37 - v20;
  v22 = sub_1D15A2848();
  v23 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v47 = &v37 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D15A2388();
  if ((*(v23 + 48))(v21, 1, v22) == 1)
  {
    v34 = v18;
    v35 = &qword_1EE05B7F0;
  }

  else
  {
    v38 = v23;
    v39 = v22;
    (*(v23 + 32))(v47, v21, v22);
    sub_1D15A2288();
    v25 = v46;
    v42 = a1;
    sub_1D15A27E8();
    v37 = v8[1];
    v37(v14, v7);
    v26 = v8[6];
    if (v26(v25, 1, v7) == 1)
    {
      v36 = v47;
      v44 = v46;
    }

    else
    {
      v43 = v8;
      v27 = v8[4];
      v27(v17, v46, v7);
      sub_1D15A2258();
      v28 = v44;
      sub_1D15A27E8();
      v29 = v28;
      v30 = v37;
      v37(v14, v7);
      if (v26(v29, 1, v7) != 1)
      {
        v31 = v40;
        v27(v40, v29, v7);
        v32 = v43[2];
        v32(v14, v17, v7);
        v32(v41, v31, v7);
        sub_1D15A2268();
        v30(v31, v7);
        v30(v17, v7);
        return (*(v38 + 8))(v47, v39);
      }

      v36 = v47;
      v30(v17, v7);
    }

    (*(v38 + 8))(v36, v39);
    v35 = &qword_1EE05B7F8;
    v34 = MEMORY[0x1E6969530];
    v21 = v44;
  }

  sub_1D1524874(v21, v35, v34);
  result = sub_1D15A4908();
  __break(1u);
  return result;
}

uint64_t sub_1D1524874(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_1D1455BCC(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t DateInterval.inset(by:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v73 = a2;
  sub_1D1455BCC(0, &qword_1EE05B7F8, MEMORY[0x1E6969530]);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v72 = &v62 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v65 = &v62 - v6;
  v77 = sub_1D15A26A8();
  v7 = *(v77 - 8);
  MEMORY[0x1EEE9AC00](v77);
  v62 = &v62 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v71 = &v62 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v62 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v62 - v15;
  v70 = MEMORY[0x1E6969AE8];
  sub_1D1455BCC(0, &qword_1EE05B7F0, MEMORY[0x1E6969AE8]);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v62 - v18;
  v20 = sub_1D15A2848();
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v76 = &v62 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_1D15A23A8();
  v24 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v26 = &v62 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x1EEE9AC00](v27);
  v30 = &v62 - v29;
  v31 = *(v24 + 16);
  v68 = v32;
  v31(&v62 - v29, a1, v28);
  v75 = v26;
  DateComponents.negated.getter(v26);
  sub_1D15A2388();
  v33 = v20;
  if ((*(v21 + 48))(v19, 1, v20) == 1)
  {
    v60 = v70;
    v61 = &qword_1EE05B7F0;
LABEL_11:
    sub_1D1524874(v19, v61, v60);
    result = sub_1D15A4908();
    __break(1u);
    return result;
  }

  v67 = v24;
  v34 = v16;
  v69 = v21;
  v70 = v33;
  (*(v21 + 32))(v76, v19, v33);
  sub_1D15A2288();
  v35 = v65;
  v66 = v30;
  sub_1D15A27E8();
  v36 = v7[1];
  v37 = v77;
  v36(v13, v77);
  v64 = v7[6];
  if (v64(v35, 1, v37) == 1)
  {
    v72 = v35;
LABEL_10:
    (*(v69 + 8))(v76, v70);
    v61 = &qword_1EE05B7F8;
    v60 = MEMORY[0x1E6969530];
    v19 = v72;
    goto LABEL_11;
  }

  v63 = v7;
  v38 = v7[4];
  v39 = v35;
  v40 = v77;
  v38(v16, v39, v77);
  sub_1D15A2258();
  v41 = v72;
  sub_1D15A27E8();
  v42 = v41;
  v65 = v36;
  v36(v13, v40);
  if (v64(v41, 1, v40) == 1)
  {
    (v65)(v16, v77);
    goto LABEL_10;
  }

  v43 = v71;
  v38(v71, v42, v77);
  sub_1D15A2548();
  v45 = v44;
  sub_1D15A2548();
  v46 = v69;
  v47 = v67;
  if (v45 <= v48)
  {
    v55 = v63[2];
    v56 = v77;
    v55(v13, v34, v77);
    v55(v62, v43, v56);
    sub_1D15A2268();
    v57 = v65;
    (v65)(v43, v56);
    v57(v34, v56);
    (*(v46 + 8))(v76, v70);
    v58 = *(v47 + 8);
    v59 = v68;
    v58(v75, v68);
    return (v58)(v66, v59);
  }

  else
  {
    v49 = v77;
    v50 = v65;
    (v65)(v43, v77);
    v50(v34, v49);
    (*(v46 + 8))(v76, v70);
    v51 = *(v47 + 8);
    v52 = v68;
    v51(v75, v68);
    v51(v66, v52);
    v53 = sub_1D15A22A8();
    return (*(*(v53 - 8) + 16))(v73, v74, v53);
  }
}

uint64_t DateInterval.clipStart(maxDuration:)@<X0>(uint64_t a1@<X8>, double a2@<D0>)
{
  v5 = sub_1D15A26A8();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v17 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v17 - v11;
  if (a2 <= 0.0 || (sub_1D15A2298(), v13 <= a2))
  {
    v15 = sub_1D15A22A8();
    v16 = *(*(v15 - 8) + 16);

    return v16(a1, v2, v15);
  }

  else
  {
    sub_1D15A2258();
    sub_1D15A2558();
    (*(v6 + 16))(v9, v12, v5);
    sub_1D15A2258();
    sub_1D15A2268();
    return (*(v6 + 8))(v12, v5);
  }
}

uint64_t static ChartContextHelpers.chartContextForDay(from:preferredOverlay:chartOptions:)(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v26 = a4;
  v27 = a3;
  v28 = a2;
  v24[1] = a1;
  v25 = sub_1D15A2DC8();
  v4 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v6 = v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D14995A0(0, &qword_1EE05B520, MEMORY[0x1E6968130]);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = v24 - v8;
  v10 = sub_1D15A2848();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1D15A26A8();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = v24 - v19;
  sub_1D15A2818();
  sub_1D15A2728();
  (*(v11 + 8))(v13, v10);
  sub_1D15A2DF8();
  (*(v15 + 16))(v17, v20, v14);
  sub_1D15A2278();
  v21 = sub_1D15A22A8();
  (*(*(v21 - 8) + 56))(v9, 0, 1, v21);
  (*(v4 + 16))(v6, v26, v25);
  v22 = sub_1D15A2DD8();
  (*(v15 + 8))(v20, v14);
  return v22;
}

uint64_t static ChartContextHelpers.chartContextForDays(with:referenceDate:preferredOverlay:chartOptions:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6)
{
  v73 = a6;
  v74 = a5;
  v75 = a4;
  v77 = a3;
  v66 = a2;
  sub_1D14995A0(0, &qword_1EE05B520, MEMORY[0x1E6968130]);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v63 = &v57 - v8;
  v9 = sub_1D15A2DC8();
  v71 = *(v9 - 8);
  v72 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1D15A2848();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v57 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D14995A0(0, &qword_1EE05B7F8, MEMORY[0x1E6969530]);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v67 = &v57 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v65 = &v57 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v57 - v21;
  v23 = sub_1D15A26A8();
  v24 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v61 = &v57 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v60 = &v57 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v62 = &v57 - v29;
  MEMORY[0x1EEE9AC00](v30);
  v76 = &v57 - v31;
  v32 = sub_1D15A2838();
  v33 = MEMORY[0x1EEE9AC00](v32);
  v35 = &v57 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = *MEMORY[0x1E6969A48];
  v69 = v38;
  v70 = v37;
  (*(v38 + 104))(v35, v36, v33);
  result = sub_1D15A2818();
  if (__OFSUB__(0, a1))
  {
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v40 = a1;
  v68 = v11;
  sub_1D15A27F8();
  v41 = *(v13 + 8);
  v77 = v12;
  v41(v15, v12);
  v42 = *(v24 + 48);
  if (v42(v22, 1, v23) == 1)
  {
    sub_1D14B604C(v22, &qword_1EE05B7F8, MEMORY[0x1E6969530]);
    sub_1D15A2DF8();
    (*(v24 + 56))(v67, 1, 1, v23);
    (*(v71 + 16))(v68, v73, v72);
    v43 = sub_1D15A2DE8();
LABEL_10:
    (*(v69 + 8))(v35, v70);
    return v43;
  }

  v64 = v35;
  v58 = v24;
  v59 = v23;
  v44 = v23;
  v45 = *(v24 + 32);
  result = v45(v76, v22, v44);
  v46 = v66 - v40;
  if (__OFSUB__(v66, v40))
  {
    goto LABEL_12;
  }

  result = sub_1D15A2818();
  if (!__OFSUB__(0, v46))
  {
    v47 = v65;
    v48 = v76;
    sub_1D15A27F8();
    v41(v15, v77);
    v49 = v59;
    if (v42(v47, 1, v59) == 1)
    {
      sub_1D14B604C(v47, &qword_1EE05B7F8, MEMORY[0x1E6969530]);
      sub_1D15A2DF8();
      v50 = v58;
      (*(v58 + 56))(v67, 1, 1, v49);
      (*(v71 + 16))(v68, v73, v72);
      v43 = sub_1D15A2DE8();
      (*(v50 + 8))(v48, v49);
    }

    else
    {
      v51 = v62;
      v45(v62, v47, v49);
      sub_1D15A2DF8();
      v52 = v58;
      v53 = *(v58 + 16);
      v53(v60, v51, v49);
      v53(v61, v48, v49);
      v54 = v63;
      sub_1D15A2268();
      v55 = sub_1D15A22A8();
      (*(*(v55 - 8) + 56))(v54, 0, 1, v55);
      (*(v71 + 16))(v68, v73, v72);
      v43 = sub_1D15A2DD8();
      v56 = *(v52 + 8);
      v56(v51, v49);
      v56(v48, v49);
    }

    v35 = v64;
    goto LABEL_10;
  }

LABEL_13:
  __break(1u);
  return result;
}

uint64_t static ChartContextHelpers.chartContext(for:scalarOffsetRange:referenceDate:preferredOverlay:chartOptions:)(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7)
{
  v74 = a7;
  v75 = a6;
  v76 = a5;
  v78 = a4;
  v67 = a3;
  v9 = sub_1D15A2DC8();
  v72 = *(v9 - 8);
  v73 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D14995A0(0, &qword_1EE05B520, MEMORY[0x1E6968130]);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v64 = &v58 - v13;
  v14 = sub_1D15A2848();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v58 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D14995A0(0, &qword_1EE05B7F8, MEMORY[0x1E6969530]);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v68 = &v58 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v66 = &v58 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v58 - v23;
  v25 = sub_1D15A26A8();
  v26 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v62 = &v58 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v61 = &v58 - v29;
  MEMORY[0x1EEE9AC00](v30);
  v63 = &v58 - v31;
  MEMORY[0x1EEE9AC00](v32);
  v77 = &v58 - v33;
  v34 = sub_1D15A2838();
  v35 = MEMORY[0x1EEE9AC00](v34);
  v37 = &v58 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = v39;
  v71 = v38;
  (*(v39 + 104))(v37, **(&unk_1E83E6C68 + a1), v35);
  result = sub_1D15A2818();
  if (__OFSUB__(0, a2))
  {
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v41 = a2;
  v69 = v11;
  sub_1D15A27F8();
  v42 = *(v15 + 8);
  v78 = v14;
  v42(v17, v14);
  v43 = *(v26 + 48);
  if (v43(v24, 1, v25) == 1)
  {
    sub_1D14B604C(v24, &qword_1EE05B7F8, MEMORY[0x1E6969530]);
    sub_1D15A2DF8();
    (*(v26 + 56))(v68, 1, 1, v25);
    (*(v72 + 16))(v69, v74, v73);
    v44 = sub_1D15A2DE8();
LABEL_10:
    (*(v70 + 8))(v37, v71);
    return v44;
  }

  v65 = v37;
  v59 = v26;
  v60 = v25;
  v45 = v25;
  v46 = *(v26 + 32);
  result = v46(v77, v24, v45);
  v47 = v67 - v41;
  if (__OFSUB__(v67, v41))
  {
    goto LABEL_12;
  }

  result = sub_1D15A2818();
  if (!__OFSUB__(0, v47))
  {
    v48 = v66;
    v49 = v77;
    sub_1D15A27F8();
    v42(v17, v78);
    v50 = v60;
    if (v43(v48, 1, v60) == 1)
    {
      sub_1D14B604C(v48, &qword_1EE05B7F8, MEMORY[0x1E6969530]);
      sub_1D15A2DF8();
      v51 = v59;
      (*(v59 + 56))(v68, 1, 1, v50);
      (*(v72 + 16))(v69, v74, v73);
      v44 = sub_1D15A2DE8();
      (*(v51 + 8))(v49, v50);
    }

    else
    {
      v52 = v63;
      v46(v63, v48, v50);
      sub_1D15A2DF8();
      v53 = v59;
      v54 = *(v59 + 16);
      v54(v61, v52, v50);
      v54(v62, v49, v50);
      v55 = v64;
      sub_1D15A2268();
      v56 = sub_1D15A22A8();
      (*(*(v56 - 8) + 56))(v55, 0, 1, v56);
      (*(v72 + 16))(v69, v74, v73);
      v44 = sub_1D15A2DD8();
      v57 = *(v53 + 8);
      v57(v52, v50);
      v57(v49, v50);
    }

    v37 = v65;
    goto LABEL_10;
  }

LABEL_13:
  __break(1u);
  return result;
}

uint64_t static ChartContextHelpers.chartContextForCalendarWeek(from:chartOptions:)(uint64_t a1, uint64_t a2)
{
  v64 = a2;
  v2 = sub_1D15A2DC8();
  v62 = *(v2 - 8);
  v63 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v65 = &v46 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D14995A0(0, &qword_1EE05B7F8, MEMORY[0x1E6969530]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v57 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v59 = &v46 - v7;
  v8 = sub_1D15A26A8();
  v60 = *(v8 - 8);
  v61 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v48 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v56 = &v46 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v49 = &v46 - v13;
  v14 = sub_1D15A2838();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v46 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = sub_1D15A2848();
  v18 = *(v66 - 8);
  MEMORY[0x1EEE9AC00](v66);
  v20 = &v46 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D14995A0(0, &qword_1EE05B520, MEMORY[0x1E6968130]);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v47 = &v46 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v46 - v24;
  v26 = sub_1D15A22A8();
  v27 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v55 = &v46 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D15A2818();
  v29 = *MEMORY[0x1E6969A20];
  v50 = *(v15 + 104);
  v50(v17, v29, v14);
  sub_1D15A2738();
  v30 = *(v15 + 8);
  v53 = v15 + 8;
  v54 = v14;
  v51 = v30;
  v30(v17, v14);
  v31 = *(v18 + 8);
  v52 = v18 + 8;
  v31(v20, v66);
  v32 = *(v27 + 48);
  v58 = v26;
  if (v32(v25, 1, v26) == 1)
  {
    sub_1D14B604C(v25, &qword_1EE05B520, MEMORY[0x1E6968130]);
    sub_1D15A2DF8();
    (*(v60 + 56))(v57, 1, 1, v61);
    (*(v62 + 16))(v65, v64, v63);
    return sub_1D15A2DE8();
  }

  else
  {
    v34 = v27;
    v35 = v55;
    (*(v27 + 32))(v55, v25, v58);
    sub_1D15A2818();
    v36 = v54;
    v50(v17, *MEMORY[0x1E6969A98], v54);
    v37 = v56;
    sub_1D15A2288();
    v38 = v59;
    sub_1D15A27F8();
    v39 = v60;
    v40 = v37;
    v41 = v61;
    v50 = *(v60 + 8);
    (v50)(v40, v61);
    v51(v17, v36);
    v31(v20, v66);
    if ((*(v39 + 48))(v38, 1, v41) == 1)
    {
      sub_1D14B604C(v59, &qword_1EE05B7F8, MEMORY[0x1E6969530]);
      sub_1D15A2DF8();
      (*(v39 + 56))(v57, 1, 1, v41);
      (*(v62 + 16))(v65, v64, v63);
      v42 = sub_1D15A2DE8();
      (*(v34 + 8))(v35, v58);
    }

    else
    {
      v43 = v49;
      (*(v39 + 32))(v49, v59, v41);
      sub_1D15A2DF8();
      sub_1D15A2288();
      (*(v39 + 16))(v48, v43, v41);
      v44 = v47;
      sub_1D15A2268();
      v45 = v58;
      (*(v34 + 56))(v44, 0, 1, v58);
      (*(v62 + 16))(v65, v64, v63);
      v42 = sub_1D15A2DD8();
      (v50)(v43, v41);
      (*(v34 + 8))(v35, v45);
    }

    return v42;
  }
}

uint64_t static ChartContextHelpers.chartContextForStatistics(interval:from:preferredOverlay:chartOptions:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v17[1] = a3;
  v6 = sub_1D15A2DC8();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1D15A26A8();
  MEMORY[0x1EEE9AC00](v10 - 8);
  MEMORY[0x1EEE9AC00](v11);
  sub_1D14995A0(0, &qword_1EE05B520, MEMORY[0x1E6968130]);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = v17 - v13;
  sub_1D15A2DF8();
  sub_1D15A2608();
  sub_1D15A2608();
  sub_1D15A2268();
  v15 = sub_1D15A22A8();
  (*(*(v15 - 8) + 56))(v14, 0, 1, v15);
  (*(v7 + 16))(v9, a5, v6);
  return sub_1D15A2DD8();
}

uint64_t DiagramBar.__allocating_init(barDiagramConfig:barData:hbxViewControllerFactory:customMetricsFactory:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v8 = swift_allocObject();
  DiagramBar.init(barDiagramConfig:barData:hbxViewControllerFactory:customMetricsFactory:)(a1, a2, a3, a4);
  return v8;
}

uint64_t sub_1D1526FB8(CGContext *a1, CGFloat *a2, uint64_t a3, double a4, double a5)
{
  v7 = *a2;
  v9 = a2[2];
  v10 = a2[3];
  v11 = a2[4];
  v12 = a2[5];
  v13 = a2[6];
  v34.y = *(a3 + 32);
  v32.a = a2[1];
  a = v32.a;
  v32.b = v9;
  v32.c = v10;
  v32.d = v11;
  v32.tx = v12;
  v32.ty = v13;
  v34.x = 0.0;
  y = CGPointApplyAffineTransform(v34, &v32).y;
  v36.origin.x = sub_1D145664C();
  v35.y = CGRectGetMaxY(v36);
  v32.a = a;
  v32.b = v9;
  v32.c = v10;
  v32.d = v11;
  v32.tx = v12;
  v32.ty = v13;
  v35.x = 0.0;
  v15 = CGPointApplyAffineTransform(v35, &v32).y;
  v32.a = v7;
  v32.b = a;
  v32.c = v9;
  v32.d = v10;
  v32.tx = v11;
  v32.ty = v12;
  v33 = v13;
  sub_1D145CB10(a1, &v32, a4, a5);
  if (*(a3 + 24) > 1u || *(a3 + 24))
  {
    v16 = sub_1D15A4BA8();

    if ((v16 & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  else
  {
  }

  v17 = *(a3 + 96);
  v18 = *(v17 + 16);
  if (v18)
  {
    v19 = (v17 + 32);
    do
    {
      v20 = *v19++;
      v32.a = v7;
      v32.b = a;
      v32.c = v9;
      v32.d = v10;
      v32.tx = v11;
      v32.ty = v12;
      v33 = v13;

      sub_1D1527DF8(a1, &v32.a, v20, y, v15);

      --v18;
    }

    while (v18);
  }

LABEL_8:
  v21 = *(a3 + 96);
  v22 = *(v21 + 16);
  if (v22)
  {
    v23 = (v21 + 32);
    do
    {
      v24 = *v23++;
      v32.a = v7;
      v32.b = a;
      v32.c = v9;
      v32.d = v10;
      v32.tx = v11;
      v32.ty = v12;
      v33 = v13;

      sub_1D15289F8(a1, &v32.a, v24, y, v15);

      --v22;
    }

    while (v22);
  }

  if (*(a3 + 24) <= 1u && !*(a3 + 24))
  {
  }

  v26 = sub_1D15A4BA8();

  if ((v26 & 1) == 0)
  {
    v27 = *(v21 + 16);
    if (v27)
    {
      v28 = (v21 + 32);
      do
      {
        v29 = *v28++;
        v32.a = v7;
        v32.b = a;
        v32.c = v9;
        v32.d = v10;
        v32.tx = v11;
        v32.ty = v12;
        v33 = v13;

        sub_1D1527DF8(a1, &v32.a, v29, y, v15);

        --v27;
      }

      while (v27);
    }
  }

  return result;
}

void DiagramBar.init(barDiagramConfig:barData:hbxViewControllerFactory:customMetricsFactory:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = *(a1 + 7);
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  v8 = *(a1 + 24);
  v9 = *(a1 + 36);
  v10 = *(a1 + 32);
  v63 = v10 | (v9 << 32);
  v11 = *(a1 + 38);
  v12 = *a2;
  v13 = *(a2 + 8);
  v15 = *(a2 + 16);
  v14 = *(a2 + 24);
  v16 = *(a2 + 32);
  v17 = *(a2 + 40);
  *(v4 + 16) = *a1;
  *(v4 + 19) = *(a1 + 3);
  v58 = v6;
  v59 = v5;
  *(v4 + 23) = v5;
  *(v4 + 24) = v6;
  *(v4 + 28) = *(a1 + 12);
  *(v4 + 25) = *(a1 + 9);
  *(v4 + 32) = v7;
  *(v4 + 40) = v8;
  *(v4 + 48) = v10;
  v61 = v9;
  v62 = v11;
  *(v4 + 52) = v9;
  *(v4 + 54) = v11;
  *(v4 + 56) = v12;
  *(v4 + 64) = v13;
  *(v4 + 72) = v15;
  *(v4 + 80) = v14;
  *(v4 + 88) = v16;
  *(v4 + 96) = v17;
  v81 = v15;
  v82 = v14;
  v83 = v16;
  v84 = v17;

  v18 = COERCE_DOUBLE(sub_1D14C3C88());
  v79 = v12;
  v80 = v13;
  if (v19)
  {
    v20 = 0.0;
  }

  else
  {
    v20 = v18;
  }

  v81 = v15;
  v82 = v14;
  v83 = v16;
  v84 = v17;
  v85 = DiagramData.diagramBounds(forceNonZeroSize:)(1);
  v91.size.width = 0.0;
  v91.size.height = 0.0;
  v91.origin.x = v20;
  v91.origin.y = v7;
  v86 = CGRectUnion(v85, v91);
  y = v86.origin.y;
  x = v86.origin.x;
  width = v86.size.width;
  height = v86.size.height;
  v79 = v8;
  WORD2(v80) = v61;
  LODWORD(v80) = v10;
  v23 = sub_1D15279F8(&v79);
  v25 = v24;
  v79 = v12;
  v80 = v13;
  v81 = v15;
  v82 = v14;
  v83 = v16;
  v84 = v17;
  if (sub_1D14C3D18())
  {
    v26 = dbl_1D15B40D8[v62];
    LOBYTE(v76[0]) = v58;
    v79 = v12;
    v80 = v13;
    v81 = v15;
    v82 = v14;
    v83 = v16;
    v84 = v17;
    sub_1D14C3DB0();
    v28 = v27;

    if (v28)
    {
      v29 = v59;
    }

    else
    {
      v29 = 25;
    }

    LOBYTE(v79) = v29;
    v30 = sub_1D1527BF4(v76, &v79, v26);
    v32 = v31;
    v34 = v33;
    v36 = v35;
  }

  else
  {

    v30 = dbl_1D15B4118[v62];
    v32 = qword_1D15B4138[v62];
    v34 = v30;
    v36 = v32;
  }

  sub_1D1527B78(a4, &v79);
  type metadata accessor for DiagramAxis();
  v37 = swift_allocObject();
  *(v37 + 16) = 0u;
  *(v37 + 32) = 0u;
  *(v37 + 48) = 0u;
  *(v37 + 64) = v8;
  *(v37 + 76) = WORD2(v63);
  *(v37 + 72) = v63;
  *(v37 + 80) = x;
  *(v37 + 88) = y;
  *(v37 + 96) = width;
  *(v37 + 104) = height;
  *(v37 + 112) = v30;
  *(v37 + 120) = v32;
  *(v37 + 128) = v34;
  *(v37 + 136) = v36;
  *(v37 + 144) = 0;
  *(v37 + 152) = v23;
  *(v37 + 160) = v25;
  *(v37 + 168) = 0;
  sub_1D1527B78(&v79, &v73);
  if (v74)
  {
    sub_1D1450E94(&v73, v76);
  }

  else
  {
    v38 = type metadata accessor for DiagramAxisMetricsCalculatorFactory();
    v39 = swift_allocObject();
    *(v39 + 16) = a3;
    v77 = v38;
    v78 = &protocol witness table for DiagramAxisMetricsCalculatorFactory;
    v76[0] = v39;
    v40 = a3;
  }

  if ((v8 & 0xFF00000000) == 0x300000000)
  {
    goto LABEL_20;
  }

  if ((v8 & 0xFF00000000) != 0x200000000)
  {
    v41 = v77;
    v42 = v78;
    __swift_project_boxed_opaque_existential_1(v76, v77);
    v69 = v8;
    v68 = 0;
    (v42[1])(&v70, &v69, &v68, v41, v42);
    if (v72)
    {
      sub_1D1450E94(&v70, &v73);
      v43 = v74;
      v44 = v75;
      __swift_project_boxed_opaque_existential_1(&v73, v74);
      v87.origin.x = x;
      v87.origin.y = y;
      v87.size.width = width;
      v87.size.height = height;
      MinX = CGRectGetMinX(v87);
      v88.origin.x = x;
      v88.origin.y = y;
      v88.size.width = width;
      v88.size.height = height;
      MaxX = CGRectGetMaxX(v88);
      if (MinX > MaxX)
      {
        __break(1u);
        goto LABEL_28;
      }

      (*(v44 + 8))(&v70, 0, v43, v44, MinX, MaxX);
      v47 = v71;
      *(v37 + 16) = v70;
      *(v37 + 32) = v47;

      __swift_destroy_boxed_opaque_existential_1(&v73);
    }

    else
    {
      sub_1D1456590(&v70, &qword_1EC6301C8, qword_1EE059CC8);
    }
  }

  if ((v63 & 0xFF000000) == 0x2000000)
  {
LABEL_20:

    sub_1D1456590(a4, &qword_1EE0597F0, qword_1EE0597F8);
    v48 = &v79;
    v49 = &qword_1EE0597F0;
    v50 = qword_1EE0597F8;
LABEL_21:
    sub_1D1456590(v48, v49, v50);
LABEL_22:
    __swift_destroy_boxed_opaque_existential_1(v76);
    *(v60 + 104) = v37;
    return;
  }

  v51 = v77;
  v52 = v78;
  __swift_project_boxed_opaque_existential_1(v76, v77);
  v69 = HIBYTE(v8);
  v68 = 1;
  (v52[1])(&v70, &v69, &v68, v51, v52);
  if (!v72)
  {

    sub_1D1456590(a4, &qword_1EE0597F0, qword_1EE0597F8);
    sub_1D1456590(&v79, &qword_1EE0597F0, qword_1EE0597F8);
    v49 = &qword_1EC6301C8;
    v50 = qword_1EE059CC8;
    v48 = &v70;
    goto LABEL_21;
  }

  sub_1D1450E94(&v70, &v73);
  v53 = v74;
  v54 = v75;
  __swift_project_boxed_opaque_existential_1(&v73, v74);
  v89.origin.x = x;
  v89.origin.y = y;
  v89.size.width = width;
  v89.size.height = height;
  MinY = CGRectGetMinY(v89);
  v90.origin.x = x;
  v90.origin.y = y;
  v90.size.width = width;
  v90.size.height = height;
  MaxY = CGRectGetMaxY(v90);
  if (MinY <= MaxY)
  {
    (*(v54 + 8))(&v70, 0, v53, v54, MinY, MaxY);

    sub_1D1456590(a4, &qword_1EE0597F0, qword_1EE0597F8);
    sub_1D1456590(&v79, &qword_1EE0597F0, qword_1EE0597F8);
    v57 = v71;
    *(v37 + 40) = v70;
    *(v37 + 56) = v57;

    __swift_destroy_boxed_opaque_existential_1(&v73);
    goto LABEL_22;
  }

LABEL_28:
  __break(1u);
}

uint64_t DiagramBar.deinit()
{

  return v0;
}

uint64_t DiagramBar.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

double sub_1D15279F8(uint64_t *a1)
{
  v1 = *a1;
  v2 = *a1 & 0xFF00000000;
  if (v2 == 0x300000000 || v2 == 0x200000000 || *a1 == 1)
  {
    return 0.0;
  }

  v4 = BYTE6(v1);
  if (!BYTE5(v1) || BYTE5(v1) == 1)
  {
    sub_1D15A4BA8();
  }

  if (v4 <= 1)
  {
    sub_1D15A4BA8();
  }

  return 0.0;
}

uint64_t sub_1D1527B78(uint64_t a1, uint64_t a2)
{
  sub_1D145329C(0, &qword_1EE0597F0, qword_1EE0597F8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

double sub_1D1527BF4(_BYTE *a1, _BYTE *a2, double result)
{
  if (*a1 > 1u)
  {
    if (*a1 == 2)
    {
      v3 = 2.0;
      if (*a2 != 25)
      {
        v4 = result;
        DiagramConfiguration.TextAttributes.toTextAttributes()();
        v5 = sub_1D15A3EF8();
        type metadata accessor for Key(0);
        sub_1D14587E0();
        v6 = sub_1D15A3E48();

        [v5 sizeWithAttributes_];
        v8 = v7;

        result = v4;
        v3 = v8 * 0.5 + 2.0;
      }

      return v3 + result;
    }

    else
    {
      return *MEMORY[0x1E69DDCE0];
    }
  }

  return result;
}

void sub_1D1527DF8(CGContext *a1, double *a2, uint64_t a3, double a4, double a5)
{
  v6 = v5;
  v12 = sub_1D15A2998();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v120 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a3 + 16))
  {
    v16 = a2[1];
    v17 = a2[2];
    v18 = a2[4];
    v141 = a2[3];
    v20 = a2[5];
    v19 = a2[6];
    v21 = sub_1D1451D94(2u);
    if (v22)
    {
      v23 = (*(a3 + 56) + 40 * v21);
      v24 = *v23;
      if (*(*v23 + 16))
      {
        v25 = v23[2];
        v134 = v23[1];
        v26 = v23[4];
        LOBYTE(v144.a) = *(v6 + 22);

        v135 = v24;

        v27.super.isa = DiagramConfiguration.Color.toColor()().super.isa;
        v28 = *(v6 + 24);
        v133 = v17;
        isa = v27.super.isa;
        if (v28 <= 1)
        {
          v138 = a4;
          v136 = a5;
          v140 = v19;
          v142 = v18;
          if (!v28)
          {
            v29 = v16;
            v30 = v20;
            LOBYTE(v144.a) = 1;
            v139 = DiagramConfiguration.LineWidth.toPoints()();
            v31 = *(v6 + 104);
            v151.origin.x = sub_1D145664C();
            x = v151.origin.x;
            y = v151.origin.y;
            width = v151.size.width;
            height = v151.size.height;
            MinX = CGRectGetMinX(v151);
            v152.origin.x = x;
            v152.origin.y = y;
            v152.size.width = width;
            v152.size.height = height;
            MaxX = CGRectGetMaxX(v152);
            v38 = v133;
            v144.a = v29;
            v144.b = v133;
            v39 = v141;
            v40 = v142;
            v144.c = v141;
            v144.d = v142;
            v41 = v140;
            v144.tx = v30;
            v144.ty = v140;
            v146.y = 0.0;
            v146.x = MinX;
            *&v42 = *&CGPointApplyAffineTransform(v146, &v144);
            v144.a = v29;
            v144.b = v38;
            v144.c = v39;
            v144.d = v40;
            v144.tx = v30;
            v144.ty = v41;
            v147.y = 0.0;
            v147.x = MaxX;
            CGPointApplyAffineTransform(v147, &v144);
            if (*(v135 + 16))
            {
              v148.y = *(v135 + 40);
              v144.a = v29;
              v144.b = v38;
              v144.c = v39;
              v144.d = v40;
              v144.tx = v30;
              v144.ty = v41;
              v148.x = 0.0;
              v43 = CGPointApplyAffineTransform(v148, &v144).y;
              CGContextSetLineWidth(a1, v139);
              CGContextSetLineCap(a1, kCGLineCapRound);
              v44 = [(objc_class *)isa CGColor];
              CGContextSetStrokeColorWithColor(a1, v44);

              sub_1D15A4298();
              sub_1D15A42A8();
              CGContextStrokePath(a1);
              if (!v25)
              {

LABEL_35:

                goto LABEL_44;
              }

              v45 = v42;
              LOBYTE(v144.a) = *(v6 + 25);
              DiagramConfiguration.TextAttributes.toTextAttributes()();
              v46 = sub_1D15A3EF8();
              type metadata accessor for Key(0);
              sub_1D14587E0();
              v47 = sub_1D15A3E48();
              [v46 sizeWithAttributes_];
              v49 = v48;
              v51 = v50;

              v52 = v49 * 0.5 + 1.0;
              v53 = v43 + v52;
              v54 = v43 - v52;
              if (v53 <= v138)
              {
                v56 = 0.0;
                v55 = v136;
                if (v54 >= v136)
                {
                  goto LABEL_38;
                }
              }

              else
              {
                v55 = v136;
                if (v54 >= v136)
                {
                  v56 = v53 - v138;
LABEL_38:
                  v107 = 0.0;
                  if (*(v31 + 144))
                  {
                    v108 = 0.0;
                  }

                  else
                  {
                    v108 = *(v31 + 120);
                  }

                  v142 = v56 - v49 * 0.5;
                  sub_1D14567B4();
                  v110 = v108 + v109;
                  sub_1D1457AFC();
                  v111 = -v110;
                  v112 = v51 + 2.0;
                  if (!*(v31 + 144))
                  {
                    v107 = *(v31 + 120);
                  }

                  sub_1D14567B4();
                  v114 = v107 + v113;
                  sub_1D1457AFC();
                  sub_1D1529370();
                  v115 = sub_1D15A4568();
                  CGContextSaveGState(a1);
                  CGContextTranslateCTM(a1, v45, v43);
                  CGContextRotateCTM(a1, -1.57079633);
                  v116 = [v115 CGColor];
                  CGContextSetFillColorWithColor(a1, v116);

                  v154.origin.x = v56 + (v49 + 2.0) * -0.5;
                  v154.origin.y = -v114;
                  v154.size.width = v49 + 2.0;
                  v154.size.height = v112;
                  CGContextFillRect(a1, v154);
                  v117 = sub_1D15A3EF8();
                  v118 = sub_1D15A3E48();

                  [v117 drawAtPoint:v118 withAttributes:{v142, v111}];

                  CGContextRestoreGState(a1);

LABEL_44:
                  return;
                }
              }

              v56 = v54 - v55;
              goto LABEL_38;
            }

            goto LABEL_52;
          }

LABEL_54:
          sub_1D15A4908();
          __break(1u);
          return;
        }

        if (v28 != 2)
        {
          goto LABEL_54;
        }

        LOBYTE(v144.a) = 5;
        v140 = DiagramConfiguration.LineWidth.toPoints()();
        v57 = *(v135 + 16);
        if (v57)
        {
          v58 = dbl_1D15B4170[*(v6 + 16)];
          LOBYTE(v144.a) = *(v6 + 23);
          v59 = DiagramConfiguration.TextAttributes.toTextAttributes()();
          *&v139 = v57 - 1;
          if (v57 != 1)
          {
            v128 = v15;
            v132 = v59;
            v129 = v12;
            v120 = v26;
            v60 = v140;
            v61 = fmax((v58 - v140) * 0.5, 1.0);
            v62 = v135;
            v127 = *(v135 + 16) - 1;
            v63 = v127 / 2;
            v64 = objc_opt_self();
            v65 = 0;
            v121 = v60 * 0.5 + v61;
            v131 = -v121;
            v124 = *MEMORY[0x1E695EEB8];
            v123 = (v13 + 104);
            v122 = (v13 + 8);
            v66 = v62;
            *&v138 = v57 - 2;
            v67 = v62 + 56;
            v130 = v25;
            v68 = v141;
            v126 = v63;
            v125 = v64;
            v142 = v18;
            v137 = v16;
            while (1)
            {
              v93 = *(v66 + 16);
              if (v65 >= v93)
              {
                break;
              }

              v94 = v65 + 1;
              v149 = *(v67 - 24);
              v144.a = v16;
              v144.b = v17;
              v144.c = v68;
              v144.d = v18;
              v144.tx = v20;
              v144.ty = v19;
              v95 = CGPointApplyAffineTransform(v149, &v144);
              if (v65 + 1 >= v93)
              {
                goto LABEL_51;
              }

              v69 = v95.x;
              v70 = v95.y;
              v150 = *(v67 - 8);
              v144.a = v16;
              v144.b = v17;
              v144.c = v68;
              v144.d = v18;
              v96 = v20;
              v144.tx = v20;
              v144.ty = v19;
              v97 = CGPointApplyAffineTransform(v150, &v144);
              v98 = v97.x;
              v99 = v97.y;
              if (!v65)
              {
                CGAffineTransformMakeTranslation(&v144, v121, 0.0);
                v100 = CGPointApplyAffineTransform(v95, &v144);
                v69 = v100.x;
                v70 = v100.y;
              }

              if (*&v138 == v65)
              {
                CGAffineTransformMakeTranslation(&v144, v131, 0.0);
                v101 = CGPointApplyAffineTransform(v97, &v144);
                v98 = v101.x;
                v99 = v101.y;
              }

              CGContextSaveGState(a1);
              CGContextSaveGState(a1);
              v102 = [v64 _currentTraitCollection];
              if (!v102)
              {
                goto LABEL_53;
              }

              v103 = v102;
              v104 = [v102 userInterfaceStyle];

              if (v104 == 2)
              {
                v105 = kCGBlendModeNormal;
              }

              else
              {
                v105 = kCGBlendModePlusDarker;
              }

              CGContextSetBlendMode(a1, v105);
              CGContextSetLineWidth(a1, v140);
              CGContextSetLineCap(a1, kCGLineCapRound);
              v106 = [(objc_class *)isa CGColor];
              CGContextSetStrokeColorWithColor(a1, v106);

              sub_1D15A4298();
              sub_1D15A42A8();
              CGContextStrokePath(a1);
              CGContextRestoreGState(a1);
              if (v63 == v65 && v25)
              {
                if (v127)
                {
                  v69 = v69 + (v98 - v69) * 0.5;
                  v70 = v70 + (v99 - v70) * 0.5;
                }

                v25 = v130;
                v71 = sub_1D15A3EF8();
                type metadata accessor for Key(0);
                v136 = v72;
                sub_1D14587E0();
                v73 = sub_1D15A3E48();
                [v71 sizeWithAttributes_];
                v75 = v74;
                v77 = v76;

                v78 = v69 - v75 * 0.5;
                v79 = v70 - v77 * 0.5;
                v80 = UIEdgeInsetsInsetRect(v78);
                v82 = v81;
                v84 = v83;
                v86 = v85;
                CGContextSaveGState(a1);
                v87 = [(objc_class *)isa CGColor];
                CGContextSetFillColorWithColor(a1, v87);

                v153.origin.x = v80;
                v153.origin.y = v82;
                v153.size.width = v84;
                v153.size.height = v86;
                v88 = CGPathCreateWithRoundedRect(v153, 6.0, 6.0, 0);
                CGContextAddPath(a1, v88);

                v89 = v128;
                v90 = v129;
                (*v123)(v128, v124, v129);
                sub_1D15A42B8();
                (*v122)(v89, v90);
                CGContextSetBlendMode(a1, kCGBlendModeNormal);
                v91 = sub_1D15A3EF8();
                v92 = sub_1D15A3E48();
                [v91 drawAtPoint:v92 withAttributes:{v78, v79}];

                CGContextRestoreGState(a1);
                v66 = v135;
                v17 = v133;
                v68 = v141;
                v63 = v126;
                v64 = v125;
              }

              CGContextRestoreGState(a1);
              v67 += 16;
              v65 = v94;
              v18 = v142;
              v20 = v96;
              v16 = v137;
              if (*&v139 == v94)
              {

                goto LABEL_35;
              }
            }

            __break(1u);
LABEL_51:
            __break(1u);
LABEL_52:
            __break(1u);
LABEL_53:
            __break(1u);
            goto LABEL_54;
          }
        }

        else
        {
        }

        v119 = isa;
      }
    }
  }
}

void sub_1D15289F8(CGContext *a1, double *a2, uint64_t a3, double a4, double a5)
{
  v6 = v5;
  *&v12 = COERCE_DOUBLE(sub_1D15A2998());
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v107 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*(a3 + 16))
  {
    return;
  }

  v119 = a5;
  v17 = a2[1];
  v16 = *(a2 + 2);
  v18 = *(a2 + 3);
  v19 = a2[4];
  v21 = a2[5];
  v20 = a2[6];
  v22 = dbl_1D15B4158[v6[19]];
  v23 = sub_1D1451D94(0);
  v124 = a4;
  if ((v24 & 1) == 0)
  {
    goto LABEL_12;
  }

  v118 = v16;
  v25 = *(*(a3 + 56) + 40 * v23);
  v26 = dbl_1D15B4170[v6[16]];
  v27 = v6[18];
  LOBYTE(v126.a) = v6[17];
  v125 = v27;
  v28 = DiagramConfiguration.Color.rawValue.getter();
  v30 = v29;
  v31 = DiagramConfiguration.Color.rawValue.getter();
  v122 = *&v12;
  if (v28 == v31 && v30 == v32)
  {
  }

  else
  {
    v33 = sub_1D15A4BA8();

    if ((v33 & 1) == 0)
    {
      v111 = v25;
      sub_1D1496034();
      v78 = swift_allocObject();
      *(v78 + 16) = xmmword_1D15B1320;
      LOBYTE(v126.a) = v6[17];
      isa = DiagramConfiguration.Color.toColor()().super.isa;
      v80 = [(objc_class *)isa CGColor];

      *(v78 + 32) = v80;
      v110 = v6;
      LOBYTE(v126.a) = v6[18];
      v81 = DiagramConfiguration.Color.toColor()().super.isa;
      v82 = [(objc_class *)v81 CGColor];

      *(v78 + 40) = v82;
      DeviceRGB = CGColorSpaceCreateDeviceRGB();
      type metadata accessor for CGColor(0);
      v84 = DeviceRGB;
      v85 = sub_1D15A40A8();

      v86 = CGGradientCreateWithColors(v84, v85, dbl_1F4D3ACC8);

      if (v86)
      {
        v87 = v111;
        v88 = *(v111 + 16);
        *&v12 = v122;
        if (v88)
        {
          v107 = v84;
          v108 = a3;
          v121 = v26;
          v113 = v26 * 0.5;
          v112 = objc_opt_self();
          v89 = (v13 + 104);
          v90 = *MEMORY[0x1E695EEB8];
          v109 = v13;
          v91 = (v13 + 8);
          v92 = (v87 + 40);
          v117 = v20;
          v116 = v21;
          v115 = v19;
          v120 = v18;
          v114 = v17;
          v123 = v22;
          do
          {
            v131.x = *(v92 - 1);
            v93 = *v92;
            v94 = v114;
            v95 = *&v118;
            v126.a = v114;
            *&v126.b = v118;
            v96 = v120;
            v97 = v115;
            *&v126.c = v120;
            v126.d = v115;
            v98 = v116;
            v99 = v117;
            v126.tx = v116;
            v126.ty = v117;
            v131.y = 0.0;
            x = CGPointApplyAffineTransform(v131, &v126).x;
            v126.a = v94;
            v126.b = v95;
            *&v126.c = v96;
            v126.d = v97;
            v126.tx = v98;
            v126.ty = v99;
            v132.x = 0.0;
            v132.y = v93;
            v22 = v123;
            y = CGPointApplyAffineTransform(v132, &v126).y;
            v102 = x - v113;
            v103 = x;
            v104 = v124;
            v105 = [v112 bezierPathWithRoundedRect:3 byRoundingCorners:v102 cornerRadii:{y, v121, v124 - y, v22, v22}];
            v106 = [v105 CGPath];
            CGContextAddPath(a1, v106);

            *&v12 = v122;
            CGContextClosePath(a1);

            CGContextSaveGState(a1);
            (*v89)(v15, v90, v12);
            sub_1D15A4288();
            (*v91)(v15, v12);
            v133.x = v103;
            v133.y = v119;
            v134.x = v103;
            v134.y = v104;
            CGContextDrawLinearGradient(a1, v86, v133, v134, 0);
            CGContextRestoreGState(a1);
            v92 += 2;
            --v88;
          }

          while (v88);

          v17 = v114;
          v16 = v118;
          v18 = v120;
          v19 = v115;
          v21 = v116;
          v20 = v117;
          goto LABEL_11;
        }
      }

      else
      {

        *&v12 = v122;
      }

      v6 = v110;
LABEL_28:
      v16 = v118;
      if (!*(a3 + 16))
      {
        return;
      }

      goto LABEL_13;
    }
  }

  LOBYTE(v126.a) = v6[17];
  v34.super.isa = DiagramConfiguration.Color.toColor()().super.isa;
  v35 = v25;
  v36 = *(v25 + 16);
  if (!v36)
  {

    goto LABEL_28;
  }

  v108 = a3;
  v110 = v6;
  v123 = v22;
  v37 = v20;
  v38 = v21;
  v39 = v19;
  v40 = *&v18;
  v41 = v118;
  v42 = v26;
  v43 = v17;
  v121 = v42;
  v119 = v42 * 0.5;
  v120 = v34.super.isa;
  v44 = objc_opt_self();
  v45 = v13;
  v46 = (v13 + 104);
  v109 = v45;
  v47 = (v45 + 8);
  v48 = *MEMORY[0x1E695EEB8];
  v111 = v35;
  v49 = (v35 + 40);
  do
  {
    v127.x = *(v49 - 1);
    v50 = *v49;
    v126.a = v43;
    *&v126.b = v41;
    v126.c = v40;
    v126.d = v39;
    v126.tx = v38;
    v126.ty = v37;
    v127.y = 0.0;
    v51 = CGPointApplyAffineTransform(v127, &v126).x;
    v126.a = v43;
    *&v126.b = v41;
    v126.c = v40;
    v126.d = v39;
    v126.tx = v38;
    v126.ty = v37;
    v128.x = 0.0;
    v128.y = v50;
    v52 = CGPointApplyAffineTransform(v128, &v126);
    v53 = [v44 bezierPathWithRoundedRect:3 byRoundingCorners:v51 - v119 cornerRadii:{v52.y, v121, v124 - v52.y, v123, v123}];
    v54 = [v53 CGPath];
    CGContextAddPath(a1, v54);

    *&v12 = v122;
    CGContextClosePath(a1);

    v55 = [(objc_class *)v120 CGColor];
    CGContextSetFillColorWithColor(a1, v55);

    (*v46)(v15, v48, v12);
    sub_1D15A42B8();
    (*v47)(v15, v12);
    v49 += 2;
    --v36;
  }

  while (v36);

  v17 = v43;
  v16 = v41;
  *&v18 = v40;
  v19 = v39;
  v21 = v38;
  v20 = v37;
  v22 = v123;
LABEL_11:
  v13 = v109;
  v6 = v110;
  a3 = v108;
LABEL_12:
  if (!*(a3 + 16))
  {
    return;
  }

LABEL_13:
  v56 = sub_1D1451D94(1u);
  if (v57)
  {
    v58 = v6[20];
    if (v58 != 35)
    {
      v59 = *(*(a3 + 56) + 40 * v56);
      v60 = *(*&v59 + 16);
      if (v60)
      {
        v61 = v6[16];
        v120 = v18;
        v62 = *&v16;
        v123 = v22;
        v63 = v17;
        v64 = dbl_1D15B4170[v61];
        v121 = v64 * 0.5;
        v122 = v64;
        LODWORD(v119) = v58;
        v118 = objc_opt_self();
        v65 = *MEMORY[0x1E695EEB8];
        v66 = v13;
        v67 = (v13 + 104);
        v68 = (v66 + 8);

        v117 = v59;
        v69 = (*&v59 + 40);
        do
        {
          v129.x = *(v69 - 1);
          v70 = *v69;
          v126.a = v63;
          v126.b = v62;
          v71 = v120;
          *&v126.c = v120;
          v126.d = v19;
          v126.tx = v21;
          v126.ty = v20;
          v129.y = 0.0;
          v72 = CGPointApplyAffineTransform(v129, &v126).x;
          v126.a = v63;
          v126.b = v62;
          *&v126.c = v71;
          v126.d = v19;
          v126.tx = v21;
          v126.ty = v20;
          v130.x = 0.0;
          v130.y = v70;
          v73 = CGPointApplyAffineTransform(v130, &v126);
          v74 = [v118 bezierPathWithRoundedRect:3 byRoundingCorners:v72 - v121 cornerRadii:{v73.y, v122, v124 - v73.y, v123, v123}];
          v75 = [v74 CGPath];
          CGContextAddPath(a1, v75);

          CGContextClosePath(a1);
          LOBYTE(v126.a) = LOBYTE(v119);
          v76 = DiagramConfiguration.Color.toColor()().super.isa;
          v77 = [(objc_class *)v76 CGColor];
          CGContextSetFillColorWithColor(a1, v77);

          (*v67)(v15, v65, v12);
          sub_1D15A42B8();

          (*v68)(v15, v12);
          v69 += 2;
          --v60;
        }

        while (v60);
      }
    }
  }
}

unint64_t sub_1D1529370()
{
  result = qword_1EE059710;
  if (!qword_1EE059710)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE059710);
  }

  return result;
}

uint64_t DelayedImmutable.wrappedValue.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *(a1 + 16);
  v6 = sub_1D15A4608();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v13 - v9;
  (*(v7 + 16))(&v13 - v9, v3, v6, v8);
  v11 = *(v5 - 8);
  if ((*(v11 + 48))(v10, 1, v5) != 1)
  {
    return (*(v11 + 32))(a2, v10, v5);
  }

  (*(v7 + 8))(v10, v6);
  result = sub_1D15A4908();
  __break(1u);
  return result;
}

uint64_t sub_1D15295A4(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v3 = &v7 - v2;
  (*(v4 + 16))(&v7 - v2, v1);
  v5 = type metadata accessor for DelayedImmutable();
  return DelayedImmutable.wrappedValue.setter(v3, v5);
}

uint64_t DelayedImmutable.wrappedValue.setter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = sub_1D15A4608();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v14 - v8;
  (*(v6 + 16))(&v14 - v8, v2, v5, v7);
  v10 = *(v4 - 8);
  v11 = (*(v10 + 48))(v9, 1, v4);
  v12 = *(v6 + 8);
  v12(v9, v5);
  if (v11 == 1)
  {
    v12(v2, v5);
    (*(v10 + 32))(v2, a1, v4);
    return (*(v10 + 56))(v2, 0, 1, v4);
  }

  else
  {
    result = sub_1D15A4908();
    __break(1u);
  }

  return result;
}

void (*DelayedImmutable.wrappedValue.modify(void *a1, uint64_t a2))(uint64_t **a1, char a2)
{
  v5 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x30uLL);
  }

  v7 = v6;
  *a1 = v6;
  *v6 = a2;
  v6[1] = v2;
  v8 = *(a2 + 16);
  v6[2] = v8;
  v9 = *(v8 - 8);
  v6[3] = v9;
  v10 = *(v9 + 64);
  if (v5)
  {
    v6[4] = swift_coroFrameAlloc();
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v6[4] = malloc(v10);
    v11 = malloc(v10);
  }

  v7[5] = v11;
  DelayedImmutable.wrappedValue.getter(a2, v11);
  return sub_1D1529974;
}

void sub_1D1529974(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  v4 = (*a1)[5];
  if (a2)
  {
    v5 = v2[2];
    v6 = v2[3];
    v7 = *v2;
    (*(v6 + 16))((*a1)[4], v4, v5);
    DelayedImmutable.wrappedValue.setter(v3, v7);
    (*(v6 + 8))(v4, v5);
  }

  else
  {
    DelayedImmutable.wrappedValue.setter((*a1)[5], *v2);
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t sub_1D1529A34()
{
  result = sub_1D15A4608();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1D1529AA4(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = v5 - 1;
  if (!v5)
  {
    v6 = 0;
  }

  v7 = *(*(*(a3 + 16) - 8) + 64);
  if (!v5)
  {
    ++v7;
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v6;
  if (a2 > v6)
  {
    v9 = 8 * v7;
    if (v7 > 3)
    {
      goto LABEL_8;
    }

    v11 = ((v8 + ~(-1 << v9)) >> v9) + 1;
    if (HIWORD(v11))
    {
      v10 = *(a1 + v7);
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
          goto LABEL_28;
        }

LABEL_8:
        v10 = *(a1 + v7);
        if (!*(a1 + v7))
        {
          goto LABEL_28;
        }

LABEL_15:
        v12 = (v10 - 1) << v9;
        if (v7 > 3)
        {
          v12 = 0;
        }

        if (v7)
        {
          if (v7 <= 3)
          {
            v13 = v7;
          }

          else
          {
            v13 = 4;
          }

          if (v13 > 2)
          {
            if (v13 == 3)
            {
              v14 = *a1 | (*(a1 + 2) << 16);
            }

            else
            {
              v14 = *a1;
            }
          }

          else if (v13 == 1)
          {
            v14 = *a1;
          }

          else
          {
            v14 = *a1;
          }
        }

        else
        {
          v14 = 0;
        }

        return v6 + (v14 | v12) + 1;
      }

      v10 = *(a1 + v7);
      if (*(a1 + v7))
      {
        goto LABEL_15;
      }
    }
  }

LABEL_28:
  if (v5 < 2)
  {
    return 0;
  }

  v16 = (*(v4 + 48))(a1, v5);
  if (v16 >= 2)
  {
    return v16 - 1;
  }

  else
  {
    return 0;
  }
}

char *sub_1D1529C24(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = 0;
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  v8 = v7 - 1;
  if (v7)
  {
    v9 = *(*(*(a4 + 16) - 8) + 64);
  }

  else
  {
    v8 = 0;
    v9 = *(*(*(a4 + 16) - 8) + 64) + 1;
  }

  v10 = a3 >= v8;
  v11 = a3 - v8;
  if (v11 == 0 || !v10)
  {
    goto LABEL_16;
  }

  if (v9 > 3)
  {
    v5 = 1;
    if (v8 < a2)
    {
      goto LABEL_17;
    }

    goto LABEL_26;
  }

  v12 = ((v11 + ~(-1 << (8 * v9))) >> (8 * v9)) + 1;
  if (!HIWORD(v12))
  {
    if (v12 < 0x100)
    {
      v13 = 1;
    }

    else
    {
      v13 = 2;
    }

    if (v12 >= 2)
    {
      v5 = v13;
    }

    else
    {
      v5 = 0;
    }

LABEL_16:
    if (v8 < a2)
    {
      goto LABEL_17;
    }

    goto LABEL_26;
  }

  v5 = 4;
  if (v8 < a2)
  {
LABEL_17:
    v14 = ~v8 + a2;
    if (v9 < 4)
    {
      v16 = (v14 >> (8 * v9)) + 1;
      if (v9)
      {
        v17 = v14 & ~(-1 << (8 * v9));
        v18 = result;
        bzero(result, v9);
        result = v18;
        if (v9 != 3)
        {
          if (v9 == 2)
          {
            *v18 = v17;
            if (v5 > 1)
            {
LABEL_44:
              if (v5 == 2)
              {
                *&result[v9] = v16;
              }

              else
              {
                *&result[v9] = v16;
              }

              return result;
            }
          }

          else
          {
            *v18 = v14;
            if (v5 > 1)
            {
              goto LABEL_44;
            }
          }

          goto LABEL_41;
        }

        *v18 = v17;
        v18[2] = BYTE2(v17);
      }

      if (v5 > 1)
      {
        goto LABEL_44;
      }
    }

    else
    {
      v15 = result;
      bzero(result, v9);
      result = v15;
      *v15 = v14;
      v16 = 1;
      if (v5 > 1)
      {
        goto LABEL_44;
      }
    }

LABEL_41:
    if (v5)
    {
      result[v9] = v16;
    }

    return result;
  }

LABEL_26:
  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *&result[v9] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_33;
    }

    *&result[v9] = 0;
  }

  else if (v5)
  {
    result[v9] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_33;
  }

  if (!a2)
  {
    return result;
  }

LABEL_33:
  if (v7 >= 2)
  {
    v19 = *(v6 + 56);

    return v19();
  }

  return result;
}

uint64_t QueryOperationError.init(queryError:context:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  if (result)
  {
    v5 = result | 0x8000000000000000;
  }

  else
  {

    a2 = 0;
    a3 = 0;
    v5 = 0xC000000000000000;
  }

  *a4 = a2;
  a4[1] = a3;
  a4[2] = v5;
  return result;
}

BOOL QueryOperationError.isRecoverable.getter()
{
  v1 = *(v0 + 16);
  v2 = v1 >> 61;
  v3 = v1 >> 61 == 3 || v2 == 5;
  result = 0;
  if (!v3)
  {
    if (v2 != 6)
    {
      return 1;
    }

    if (v1 != 0xC000000000000000 || *v0 != 0)
    {
      return 1;
    }
  }

  return result;
}

BOOL sub_1D1529EF4()
{
  v1 = *(v0 + 16);
  v2 = v1 >> 61;
  v3 = v1 >> 61 == 3 || v2 == 5;
  result = 0;
  if (!v3)
  {
    if (v2 != 6)
    {
      return 1;
    }

    if (v1 != 0xC000000000000000 || *v0 != 0)
    {
      return 1;
    }
  }

  return result;
}

unint64_t QueryOperationError.errorDescription.getter()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = v0[2] >> 61;
  if (v3 <= 2)
  {
    if (!v3)
    {
      v10 = 0;
      sub_1D15A47D8();
      v4 = "ng date math. Context: ";
      v5 = 0xD000000000000056;
      goto LABEL_11;
    }

    if (v3 == 1)
    {
      v10 = 0;
      sub_1D15A47D8();
      v4 = "led in context: ";
      v5 = 0xD000000000000037;
      goto LABEL_11;
    }

    sub_1D15A47D8();

    v6 = 0xD000000000000020;
  }

  else
  {
    if (v3 <= 4)
    {
      if (v3 != 3)
      {
        v10 = 0;
        sub_1D15A47D8();
        MEMORY[0x1D388A330](0xD00000000000002ALL, 0x80000001D15C14E0);
        swift_getErrorValue();
        v8 = sub_1D15A4C08();
        MEMORY[0x1D388A330](v8);

        v5 = 0x747865746E6F6320;
        v7 = 0xE90000000000003ALL;
        goto LABEL_15;
      }

      v10 = 0;
      sub_1D15A47D8();
      v4 = "be successfully executed: ";
      v5 = 0xD00000000000003ALL;
LABEL_11:
      v7 = v4 | 0x8000000000000000;
LABEL_15:
      MEMORY[0x1D388A330](v5, v7);
      goto LABEL_16;
    }

    if (v3 != 5)
    {
      return 0xD00000000000002DLL;
    }

    sub_1D15A47D8();

    v6 = 0xD000000000000018;
  }

  v10 = v6;
LABEL_16:
  MEMORY[0x1D388A330](v2, v1);
  return v10;
}

uint64_t static QueryOperationError.== infix(_:_:)()
{
  sub_1D1487F34();
  v0 = sub_1D15A4C08();
  v2 = v1;
  if (v0 == sub_1D15A4C08() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_1D15A4BA8();
  }

  return v5 & 1;
}

uint64_t sub_1D152A27C()
{
  sub_1D1487F34();
  v0 = sub_1D15A4C08();
  v2 = v1;
  if (v0 == sub_1D15A4C08() && v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_1D15A4BA8();
  }

  return v4 & 1;
}

unint64_t get_enum_tag_for_layout_string_19HealthVisualization19QueryOperationErrorO(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 >> 62 == 3)
  {
    return (*a1 + 6);
  }

  else
  {
    return v1 >> 61;
  }
}

uint64_t sub_1D152A378(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7A && *(a1 + 24))
  {
    return (*a1 + 122);
  }

  v3 = (((*(a1 + 16) >> 57) >> 4) | (8 * ((*(a1 + 16) >> 57) & 8 | *(a1 + 16) & 7))) ^ 0x7F;
  if (v3 >= 0x79)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1D152A3D4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x79)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 122;
    if (a3 >= 0x7A)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7A)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 3) & 0xF | (16 * (-a2 & 0x7F));
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

uint64_t sub_1D152A43C(uint64_t result, uint64_t a2)
{
  if (a2 < 6)
  {
    *(result + 16) = *(result + 16) & 0xFFFFFFFFFFFFFF8 | (a2 << 61);
  }

  else
  {
    *result = (a2 - 6);
    *(result + 8) = xmmword_1D15B41C0;
  }

  return result;
}

id HKCodableSummaryActivityRingsValue.activitySummary.getter()
{
  v1 = v0;
  v2 = sub_1D15A26A8();
  v3 = *(v2 - 8);
  *&v4 = MEMORY[0x1EEE9AC00](v2).n128_u64[0];
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (![v0 hasActivityMoveMode] || !objc_msgSend(v0, sel_hasActiveEnergyBurned) || !objc_msgSend(v0, sel_hasActiveEnergyBurnedGoal) || !objc_msgSend(v0, sel_hasAppleMoveTime) || !objc_msgSend(v0, sel_hasAppleMoveTimeGoal) || !objc_msgSend(v0, sel_hasAppleExerciseTime) || !objc_msgSend(v0, sel_hasAppleStandHours) || !objc_msgSend(v0, sel_hasCreationDate))
  {
    return 0;
  }

  v7 = [v0 activityMoveMode];
  v8 = [objc_allocWithZone(MEMORY[0x1E696BEC8]) init];
  [v8 setActivityMoveMode_];
  result = [v1 activeEnergyBurned];
  if (!result)
  {
    __break(1u);
    goto LABEL_32;
  }

  v10 = result;
  v11 = sub_1D15A43E8();

  [v8 setActiveEnergyBurned_];
  result = [v1 activeEnergyBurnedGoal];
  if (!result)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v12 = result;
  v13 = sub_1D15A43E8();

  [v8 setActiveEnergyBurnedGoal_];
  result = [v1 appleMoveTime];
  if (!result)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v14 = result;
  v15 = sub_1D15A43E8();

  [v8 setAppleMoveTime_];
  result = [v1 appleMoveTimeGoal];
  if (!result)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v16 = result;
  v17 = sub_1D15A43E8();

  [v8 setAppleMoveTimeGoal_];
  result = [v1 appleExerciseTime];
  if (!result)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v18 = result;
  v19 = sub_1D15A43E8();

  [v8 setAppleExerciseTime_];
  result = [v1 appleStandHours];
  if (!result)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v20 = result;
  v21 = sub_1D15A43E8();

  [v8 setAppleStandHours_];
  [v1 creationDate];
  v22 = HKDecodeDateForValue();
  sub_1D15A2668();

  v23 = sub_1D15A2618();
  v24 = *(v3 + 8);
  v24(v6, v2);
  [v8 _setCreationDate_];

  if (![v1 hasAppleExerciseTimeGoal])
  {
    goto LABEL_18;
  }

  result = [v1 appleExerciseTimeGoal];
  if (!result)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v25 = result;
  v26 = sub_1D15A43E8();

  [v8 setExerciseTimeGoal_];
LABEL_18:
  if ([v1 hasAppleStandHoursGoal])
  {
    result = [v1 appleStandHoursGoal];
    if (result)
    {
      v27 = result;
      v28 = sub_1D15A43E8();

      [v8 setStandHoursGoal_];
      goto LABEL_21;
    }

LABEL_38:
    __break(1u);
    return result;
  }

LABEL_21:
  if ([v1 hasStartDate])
  {
    [v1 startDate];
    v29 = HKDecodeDateForValue();
    sub_1D15A2668();

    v30 = sub_1D15A2618();
    v24(v6, v2);
    [v8 _setStartDate_];
  }

  if ([v1 hasEndDate])
  {
    [v1 endDate];
    v31 = HKDecodeDateForValue();
    sub_1D15A2668();

    v32 = sub_1D15A2618();
    v24(v6, v2);
    [v8 _setEndDate_];
  }

  if ([v1 hasPaused])
  {
    v33 = [v1 paused];
  }

  else
  {
    v33 = 0;
  }

  [v8 setPaused_];
  return v8;
}

uint64_t sub_1D152AA24(unint64_t a1)
{
  v8 = MEMORY[0x1E69E7CC0];
  if (a1 >> 62)
  {
    goto LABEL_15;
  }

  sub_1D15A4878();
  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1D15A4708())
  {
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v4 = MEMORY[0x1D388AB50](j, a1);
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_14;
        }

        v4 = *(a1 + 8 * j + 32);
      }

      v5 = v4;
      v6 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      objc_opt_self();
      if (!swift_dynamicCastObjCClass())
      {

        return 0;
      }

      sub_1D15A4858();
      sub_1D15A4888();
      sub_1D15A4898();
      sub_1D15A4868();
      if (v6 == i)
      {
        return v8;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    sub_1D15A4708();
    sub_1D15A4878();
  }

  return v8;
}

void *sub_1D152AB8C(void (*a1)(id *), uint64_t a2, unint64_t a3)
{
  v33 = a1;
  sub_1D1455C20(0, &qword_1EE059450, sub_1D15411F4);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v24 - v6;
  sub_1D15411F4();
  v32 = v8;
  v27 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v31 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v26 = &v24 - v12;
  if (a3 >> 62)
  {
    goto LABEL_21;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1D15A4708())
  {
    v14 = 0;
    v29 = a3 & 0xFFFFFFFFFFFFFF8;
    v30 = a3 & 0xC000000000000001;
    v15 = (v27 + 48);
    v16 = MEMORY[0x1E69E7CC0];
    v25 = a3;
    v28 = i;
    while (1)
    {
      if (v30)
      {
        v17 = MEMORY[0x1D388AB50](v14, a3, v11);
      }

      else
      {
        if (v14 >= *(v29 + 16))
        {
          goto LABEL_20;
        }

        v17 = *(a3 + 8 * v14 + 32);
      }

      v18 = v17;
      v19 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      v34 = v17;
      v33(&v34);
      if (v3)
      {

        return v16;
      }

      if ((*v15)(v7, 1, v32) == 1)
      {
        sub_1D1541334(v7, &qword_1EE059450, sub_1D15411F4, sub_1D1455C20);
      }

      else
      {
        v20 = v26;
        sub_1D15412CC(v7, v26, sub_1D15411F4);
        sub_1D15412CC(v20, v31, sub_1D15411F4);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v16 = sub_1D148C550(0, v16[2] + 1, 1, v16);
        }

        v22 = v16[2];
        v21 = v16[3];
        if (v22 >= v21 >> 1)
        {
          v16 = sub_1D148C550(v21 > 1, v22 + 1, 1, v16);
        }

        v16[2] = v22 + 1;
        sub_1D15412CC(v31, v16 + ((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * v22, sub_1D15411F4);
        a3 = v25;
      }

      ++v14;
      if (v19 == v28)
      {
        return v16;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    ;
  }

  return MEMORY[0x1E69E7CC0];
}

BOOL HKCodableSummaryData.audience.getter()
{
  if (![v0 hasAudienceRawValue])
  {
    return 1;
  }

  v1 = [v0 audienceRawValue];
  if (!v1)
  {
    return 1;
  }

  v2 = v1;
  sub_1D15A3F38();

  v3 = sub_1D15A49B8();

  return v3 != 0;
}

uint64_t sub_1D152AF9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1D15A4688();
  if (result == 1 << *(a1 + 32))
  {
    v5 = 0;
    v6 = 0uLL;
    v7 = 0uLL;
  }

  else
  {
    result = sub_1D153F224(result, *(a1 + 36), a1, &v8);
    v5 = v8;
    v6 = v9;
    v7 = v10;
  }

  *a2 = v5;
  *(a2 + 8) = v6;
  *(a2 + 24) = v7;
  return result;
}

uint64_t sub_1D152B02C(uint64_t a1)
{
  v2 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v3 = sub_1D15A46A8();
    v5 = v4;
    v6 = sub_1D15A4758();
    v8 = v7;
    v9 = MEMORY[0x1D388AA40](v3, v5, v6, v7);
    sub_1D15411E8(v6, v8, 1);
    if (v9)
    {
LABEL_3:
      sub_1D15411E8(v3, v5, v2 != 0);
      return 0;
    }
  }

  else
  {
    v3 = sub_1D15A4688();
    v5 = *(a1 + 36);
    if (v3 == 1 << *(a1 + 32))
    {
      goto LABEL_3;
    }
  }

  sub_1D155BEB4(v3, v5, v2 != 0, a1);
  v12 = v11;
  sub_1D15411E8(v3, v5, v2 != 0);
  return v12;
}

id HKCodableSummaryCurrentValue.kind.getter@<X0>(char *a1@<X8>)
{
  result = [v1 kindRawValue];
  if (result)
  {
    v4 = result;
    sub_1D15A3F38();

    return HKCodableSummaryCurrentValue.Kind.init(rawValue:)(a1);
  }

  else
  {
    *a1 = 23;
  }

  return result;
}

unint64_t HKCodableSummaryCurrentValue.Kind.rawValue.getter()
{
  result = 0x7974697669746361;
  switch(*v0)
  {
    case 1:
      result = 0x6472754262694661;
      break;
    case 2:
      result = 0x7078456F69647561;
      break;
    case 3:
      result = 0x6172676F69647561;
      break;
    case 4:
      result = 0x4D65636E616C6162;
      break;
    case 5:
      result = 0x657250646F6F6C62;
      break;
    case 6:
      result = 0x79726F6765746163;
      break;
    case 7:
      result = 0x69466F6964726163;
      break;
    case 8:
      result = 0xD000000000000011;
      break;
    case 9:
      result = 929325415;
      break;
    case 0xA:
      result = 0x6563655274736F6DLL;
      break;
    case 0xB:
      result = 0x617461446F6ELL;
      break;
    case 0xC:
      result = 0x46676E696F676E6FLL;
      break;
    case 0xD:
      result = 963733616;
      break;
    case 0xE:
      result = 0x797469746E617571;
      break;
    case 0xF:
      result = 0x7065656C73;
      break;
    case 0x10:
      result = 0x6F63537065656C73;
      break;
    case 0x11:
      result = 0x4D664F6574617473;
      break;
    case 0x12:
      result = 0x69726550656D6974;
      break;
    case 0x13:
      result = 0xD000000000000012;
      break;
    case 0x14:
      result = 0xD000000000000011;
      break;
    case 0x15:
      result = 0xD000000000000015;
      break;
    case 0x16:
      result = 0x7461777265646E75;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t HKCodableSummaryCurrentValue.unwrappedValue()()
{
  v1 = [v0 kindRawValue];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_1D15A3F38();

  HKCodableSummaryCurrentValue.Kind.init(rawValue:)(&v5);
  if (v5 == 23)
  {
    return 0;
  }

  v4 = v5;
  return sub_1D15316E0(&v4);
}

id HKCodableSummaryData.kind.getter@<X0>(char *a1@<X8>)
{
  result = [v1 hasKindRawValue];
  if (result && (result = [v1 kindRawValue]) != 0)
  {
    v4 = result;
    sub_1D15A3F38();

    return HKCodableSummaryData.Kind.init(rawValue:)(a1);
  }

  else
  {
    *a1 = 4;
  }

  return result;
}

id HKCodableSummaryActivityRingsValue.init(activitySummary:date:hasEverHadAWatch:activityResumeDate:)(void *a1, char *a2, int a3, uint64_t a4)
{
  v73 = a4;
  v71 = a3;
  sub_1D1455C20(0, &qword_1EE05B7F8, MEMORY[0x1E6969530]);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v72 = &v66 - v7;
  v8 = sub_1D15A26A8();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v66 = &v66 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v68 = &v66 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v69 = &v66 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v67 = &v66 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v66 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v66 - v21;
  result = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  if (result)
  {
    v24 = result;
    v70 = a2;
    v25 = sub_1D15A2618();
    v26 = MEMORY[0x1D388B370]();

    [v24 setDateData_];
    [v24 setActivityMoveMode_];
    sub_1D1453BA0(0, &qword_1EE056720);
    v27 = [a1 activeEnergyBurned];
    v28 = sub_1D15A43F8();
    [v24 setActiveEnergyBurned_];

    v29 = [a1 activeEnergyBurnedGoal];
    v30 = sub_1D15A43F8();
    [v24 setActiveEnergyBurnedGoal_];

    v31 = [a1 appleMoveTime];
    v32 = sub_1D15A43F8();
    [v24 setAppleMoveTime_];

    v33 = [a1 appleMoveTimeGoal];
    v34 = sub_1D15A43F8();
    [v24 setAppleMoveTimeGoal_];

    v35 = [a1 appleExerciseTime];
    v36 = sub_1D15A43F8();
    [v24 setAppleExerciseTime_];

    v37 = [a1 appleStandHours];
    v38 = sub_1D15A43F8();
    [v24 setAppleStandHours_];

    v39 = [a1 _creationDate];
    sub_1D15A2668();

    v40 = sub_1D15A2618();
    v41 = *(v9 + 8);
    v41(v22, v8);
    v42 = MEMORY[0x1D388B370](v40);

    [v24 setCreationDate_];
    v43 = [a1 exerciseTimeGoal];
    if (v43)
    {
      v44 = v43;
      v45 = sub_1D15A43F8();
      [v24 setAppleExerciseTimeGoal_];
    }

    v46 = [a1 standHoursGoal];
    if (v46)
    {
      v47 = v46;
      v48 = sub_1D15A43F8();
      [v24 setAppleStandHoursGoal_];
    }

    v49 = [a1 _startDate];
    if (v49)
    {
      v50 = v67;
      v51 = v49;
      sub_1D15A2668();

      (*(v9 + 32))(v19, v50, v8);
      v52 = sub_1D15A2618();
      v53 = MEMORY[0x1D388B370]();

      [v24 setStartDate_];
      v41(v19, v8);
    }

    v54 = [a1 _endDate];
    v55 = v73;
    if (v54)
    {
      v56 = v68;
      v57 = v54;
      sub_1D15A2668();

      v58 = v69;
      (*(v9 + 32))(v69, v56, v8);
      v59 = sub_1D15A2618();
      v60 = MEMORY[0x1D388B370]();

      [v24 setEndDate_];
      v41(v58, v8);
    }

    [v24 setHasEverHadAWatch_];
    [v24 setPaused_];
    v61 = v72;
    sub_1D1540D88(v55, v72, &qword_1EE05B7F8, MEMORY[0x1E6969530], sub_1D1455C20);
    if ((*(v9 + 48))(v61, 1, v8) == 1)
    {

      v62 = MEMORY[0x1E6969530];
      sub_1D1541334(v55, &qword_1EE05B7F8, MEMORY[0x1E6969530], sub_1D1455C20);
      v41(v70, v8);
      sub_1D1541334(v61, &qword_1EE05B7F8, v62, sub_1D1455C20);
    }

    else
    {
      v63 = v66;
      (*(v9 + 32))(v66, v61, v8);
      v64 = sub_1D15A2618();
      v65 = MEMORY[0x1D388B370]();

      [v24 setActivityResumeDate_];
      sub_1D1541334(v55, &qword_1EE05B7F8, MEMORY[0x1E6969530], sub_1D1455C20);
      v41(v70, v8);
      v41(v63, v8);
    }

    return v24;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id HKCodableSummarySupplementaryValue.init(dateInterval:dataCount:)(uint64_t a1, uint64_t a2, char a3)
{
  sub_1D1455C20(0, &qword_1EE05B520, MEMORY[0x1E6968130]);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v16 - v7;
  v9 = sub_1D15A22A8();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  if (result)
  {
    v14 = result;
    sub_1D1540D88(a1, v8, &qword_1EE05B520, MEMORY[0x1E6968130], sub_1D1455C20);
    if ((*(v10 + 48))(v8, 1, v9) == 1)
    {
      sub_1D1541334(v8, &qword_1EE05B520, MEMORY[0x1E6968130], sub_1D1455C20);
      if (a3)
      {
        goto LABEL_7;
      }
    }

    else
    {
      (*(v10 + 32))(v12, v8, v9);
      sub_1D1453BA0(0, &qword_1EE0566F8);
      v15 = sub_1D15A44A8();
      [v14 setDateInterval_];

      (*(v10 + 8))(v12, v9);
      if (a3)
      {
LABEL_7:
        sub_1D1541334(a1, &qword_1EE05B520, MEMORY[0x1E6968130], sub_1D1455C20);
        return v14;
      }
    }

    [v14 setDataCount_];
    goto LABEL_7;
  }

  __break(1u);
  return result;
}

id HKCodableSummaryCurrentValue.init(activitySummaryValue:supplementaryValue:)(void *a1, void *a2)
{
  sub_1D1455C20(0, &qword_1EE059428, MEMORY[0x1E69A3D18]);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v34 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v34 - v12;
  *&v15 = MEMORY[0x1EEE9AC00](v14).n128_u64[0];
  v17 = &v34 - v16;
  result = [a1 data];
  if (!result)
  {
    __break(1u);
    goto LABEL_14;
  }

  v19 = result;
  v36 = v7;
  v37 = v2;
  v20 = sub_1D15A2518();
  v22 = v21;

  v41[3] = sub_1D1453BA0(0, &qword_1EE056560);
  v41[4] = &protocol witness table for HKCodableSummaryActivityRingsValue;
  v41[0] = a1;
  sub_1D1540BDC(v41, v38, &qword_1EE058140, &unk_1EE058148, &protocol descriptor for SharableModelVersionProviding, sub_1D1453368);
  v23 = v39;
  if (v39)
  {
    v35 = v10;
    v24 = v40;
    __swift_project_boxed_opaque_existential_1(v38, v39);
    (*(v24 + 16))(v23, v24);
    v25 = sub_1D15A2CD8();
    v26 = *(v25 - 8);
    v27 = *(v26 + 56);
    v27(v13, 0, 1, v25);
    __swift_destroy_boxed_opaque_existential_1(v38);
    if ((*(v26 + 48))(v13, 1, v25) != 1)
    {
      (*(v26 + 32))(v17, v13, v25);
      v27(v17, 0, 1, v25);
      v10 = v35;
      goto LABEL_9;
    }

    v10 = v35;
  }

  else
  {
    sub_1D1540B80(v38, &qword_1EE058140, &unk_1EE058148, &protocol descriptor for SharableModelVersionProviding, sub_1D1453368);
    v25 = sub_1D15A2CD8();
    (*(*(v25 - 8) + 56))(v13, 1, 1, v25);
  }

  sub_1D15A2CC8();
  sub_1D15A2CD8();
  v28 = *(v25 - 8);
  (*(v28 + 56))(v17, 0, 1, v25);
  if ((*(v28 + 48))(v13, 1, v25) != 1)
  {
    sub_1D1541334(v13, &qword_1EE059428, MEMORY[0x1E69A3D18], sub_1D1455C20);
  }

LABEL_9:
  sub_1D1540D88(v17, v10, &qword_1EE059428, MEMORY[0x1E69A3D18], sub_1D1455C20);
  v29 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  sub_1D153FCBC(v20, v22);
  result = [v29 init];
  if (!result)
  {
LABEL_14:
    __break(1u);
    return result;
  }

  v30 = result;
  sub_1D153FCBC(v20, v22);
  v31 = sub_1D15A24F8();
  [v30 setValueData_];

  sub_1D1498BF4(v20, v22);
  v32 = sub_1D15A3EF8();
  [v30 setKindRawValue_];

  if (a2)
  {
    [v30 setSupplementaryValue_];
  }

  v33 = MEMORY[0x1E69A3D18];
  sub_1D1540D88(v10, v36, &qword_1EE059428, MEMORY[0x1E69A3D18], sub_1D1455C20);
  sub_1D1505A88(&qword_1EE056678, &qword_1EE056670);
  sub_1D15A2F98();

  sub_1D1498BF4(v20, v22);
  sub_1D1498BF4(v20, v22);
  sub_1D1540B80(v41, &qword_1EE058140, &unk_1EE058148, &protocol descriptor for SharableModelVersionProviding, sub_1D1453368);
  sub_1D1541334(v10, &qword_1EE059428, v33, sub_1D1455C20);
  sub_1D1541334(v17, &qword_1EE059428, v33, sub_1D1455C20);
  return v30;
}

id HKCodableSummaryCurrentValue.queryConfiguration.getter@<X0>(uint64_t a1@<X8>)
{
  swift_getObjectType();
  v3 = sub_1D15A3268();
  result = [v1 hasQueryConfigurationData];
  if (result && (result = [v1 queryConfigurationData]) != 0)
  {
    v5 = result;
    v6 = sub_1D15A2518();
    v8 = v7;

    sub_1D15A21B8();
    swift_allocObject();
    sub_1D15A21A8();
    sub_1D148DAD4();
    sub_1D15A2198();
    sub_1D1498BF4(v6, v8);

    v9 = v12;
    *a1 = v10;
    *(a1 + 16) = v11;
  }

  else
  {
    *a1 = 0u;
    *(a1 + 16) = 0u;
    v9 = -2;
  }

  *(a1 + 32) = v9;
  return result;
}

uint64_t sub_1D152CA5C(void (*a1)(uint64_t *__return_ptr, uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6 = *(a3 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v6)
  {
    v13 = MEMORY[0x1E69E7CC0];
    sub_1D15A4878();
    v9 = *(sub_1D15A2A48() - 8);
    v10 = a3 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
    v11 = *(v9 + 72);
    while (1)
    {
      a1(&v12, v10);
      if (v4)
      {
        break;
      }

      v4 = 0;
      sub_1D15A4858();
      sub_1D15A4888();
      sub_1D15A4898();
      sub_1D15A4868();
      v10 += v11;
      if (!--v6)
      {
        return v13;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1D152CBA0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = *(a1 + 32);
  v3 = v1 - 1;
  if (v1 != 1)
  {
    v4 = (a1 + 40);
    do
    {
      v5 = *v4++;
      v6 = v5;
      if (v2 < v5)
      {
        v2 = v6;
      }

      --v3;
    }

    while (v3);
  }

  return *&v2;
}

uint64_t sub_1D152CBE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1D15A26A8();
  MEMORY[0x1EEE9AC00](*(v4 - 8));
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v23 - v9;
  v12 = *(a1 + 16);
  if (v12)
  {
    v13 = *(v8 + 16);
    v14 = a1 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v26 = v8;
    v24 = a2;
    v25 = v13;
    (v13)(&v23 - v9, v14, v4, v10);
    result = v26;
    if (v12 == 1)
    {
LABEL_3:
      v16 = v24;
      (*(result + 32))(v24, v11, v4);
      return (*(v26 + 56))(v16, 0, 1, v4);
    }

    else
    {
      v18 = (v26 + 32);
      v19 = 1;
      while (1)
      {
        v20 = v19 + 1;
        if (__OFADD__(v19, 1))
        {
          break;
        }

        v25(v6, v14 + *(result + 72) * v19, v4);
        sub_1D1540874(&qword_1EE05B518, MEMORY[0x1E6969530]);
        v21 = sub_1D15A3EA8();
        v22 = *(v26 + 8);
        if (v21)
        {
          v22(v11, v4);
          (*v18)(v11, v6, v4);
        }

        else
        {
          v22(v6, v4);
        }

        ++v19;
        result = v26;
        if (v20 == v12)
        {
          goto LABEL_3;
        }
      }

      __break(1u);
    }
  }

  else
  {
    v17 = *(v8 + 56);

    return v17(a2, 1, 1, v4, v10);
  }

  return result;
}

uint64_t sub_1D152CE94(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = *(a1 + 32);
  v3 = v1 - 1;
  if (v1 != 1)
  {
    v4 = (a1 + 40);
    do
    {
      v5 = *v4++;
      v6 = v5;
      if (v5 < v2)
      {
        v2 = v6;
      }

      --v3;
    }

    while (v3);
  }

  return *&v2;
}

uint64_t sub_1D152CED8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1D15A26A8();
  MEMORY[0x1EEE9AC00](*(v4 - 8));
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v23 - v9;
  v12 = *(a1 + 16);
  if (v12)
  {
    v13 = *(v8 + 16);
    v14 = a1 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v26 = v8;
    v24 = a2;
    v25 = v13;
    (v13)(&v23 - v9, v14, v4, v10);
    result = v26;
    if (v12 == 1)
    {
LABEL_3:
      v16 = v24;
      (*(result + 32))(v24, v11, v4);
      return (*(v26 + 56))(v16, 0, 1, v4);
    }

    else
    {
      v18 = (v26 + 32);
      v19 = 1;
      while (1)
      {
        v20 = v19 + 1;
        if (__OFADD__(v19, 1))
        {
          break;
        }

        v25(v6, v14 + *(result + 72) * v19, v4);
        sub_1D1540874(&qword_1EE05B518, MEMORY[0x1E6969530]);
        v21 = sub_1D15A3EA8();
        v22 = *(v26 + 8);
        if (v21)
        {
          v22(v11, v4);
          (*v18)(v11, v6, v4);
        }

        else
        {
          v22(v6, v4);
        }

        ++v19;
        result = v26;
        if (v20 == v12)
        {
          goto LABEL_3;
        }
      }

      __break(1u);
    }
  }

  else
  {
    v17 = *(v8 + 56);

    return v17(a2, 1, 1, v4, v10);
  }

  return result;
}

id HKCodableSummaryQuantityValue.init(quantity:date:)(void *a1, uint64_t a2)
{
  v3 = sub_1D153FD10(a1, a2);

  return v3;
}

id HKCodableSummaryTimePeriodValue.init(timeInterval:date:)(uint64_t a1, double a2)
{
  result = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  if (result)
  {
    v5 = result;
    [v5 setTimeInterval_];
    v6 = sub_1D15A2618();
    v7 = MEMORY[0x1D388B370]();

    [v5 setDateData_];
    v8 = sub_1D15A26A8();
    (*(*(v8 - 8) + 8))(a1, v8);
    return v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1D152D2C4(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v58 = a6;
  v57 = a5;
  v59 = a4;
  v66 = a3;
  v54 = sub_1D15A3268();
  v53 = *(v54 - 8);
  MEMORY[0x1EEE9AC00](v54);
  v55 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D1455C20(0, &qword_1EE059428, MEMORY[0x1E69A3D18]);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v62 = &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v51 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v51 - v15;
  *&v18 = MEMORY[0x1EEE9AC00](v17).n128_u64[0];
  v20 = &v51 - v19;
  v22 = *a2;
  v21 = *(a2 + 8);
  v23 = *(a2 + 24);
  v60 = *(a2 + 16);
  v61 = *(a2 + 32);
  v63 = a1;
  result = [a1 data];
  if (!result)
  {
    __break(1u);
    goto LABEL_18;
  }

  v25 = result;
  v64 = sub_1D15A2518();
  v27 = v26;

  v71 = 0;
  memset(v70, 0, sizeof(v70));
  sub_1D1540BDC(v70, v67, &qword_1EE058140, &unk_1EE058148, &protocol descriptor for SharableModelVersionProviding, sub_1D1453368);
  v28 = v68;
  v56 = v22;
  v65 = v27;
  if (v68)
  {
    v52 = v13;
    v29 = v69;
    __swift_project_boxed_opaque_existential_1(v67, v68);
    (*(v29 + 16))(v28, v29);
    v30 = sub_1D15A2CD8();
    v31 = *(v30 - 8);
    v32 = *(v31 + 56);
    v32(v16, 0, 1, v30);
    __swift_destroy_boxed_opaque_existential_1(v67);
    if ((*(v31 + 48))(v16, 1, v30) != 1)
    {
      (*(v31 + 32))(v20, v16, v30);
      v32(v20, 0, 1, v30);
      v13 = v52;
      v27 = v65;
      goto LABEL_9;
    }

    v13 = v52;
    v27 = v65;
  }

  else
  {
    sub_1D1540B80(v67, &qword_1EE058140, &unk_1EE058148, &protocol descriptor for SharableModelVersionProviding, sub_1D1453368);
    v30 = sub_1D15A2CD8();
    (*(*(v30 - 8) + 56))(v16, 1, 1, v30);
  }

  sub_1D15A2CC8();
  sub_1D15A2CD8();
  v33 = *(v30 - 8);
  (*(v33 + 56))(v20, 0, 1, v30);
  if ((*(v33 + 48))(v16, 1, v30) != 1)
  {
    sub_1D1541334(v16, &qword_1EE059428, MEMORY[0x1E69A3D18], sub_1D1455C20);
  }

LABEL_9:
  sub_1D1540D88(v20, v13, &qword_1EE059428, MEMORY[0x1E69A3D18], sub_1D1455C20);
  v34 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v35 = v64;
  sub_1D153FCBC(v64, v27);
  result = [v34 init];
  if (!result)
  {
LABEL_18:
    __break(1u);
    return result;
  }

  v36 = result;
  v37 = v21;
  sub_1D153FCBC(v35, v27);
  v38 = sub_1D15A24F8();
  [v36 setValueData_];

  sub_1D1498BF4(v35, v27);
  v39 = sub_1D15A3EF8();
  [v36 setKindRawValue_];

  if (v66)
  {
    [v36 setSupplementaryValue_];
  }

  v40 = v23;
  if (v59)
  {
    v41 = sub_1D15A3E48();

    v42 = [v41 codableMetadata];

    [v36 setMetadataDictionary_];
  }

  v43 = v61;
  if (v61 <= 0xFD)
  {
    sub_1D15A21E8();
    swift_allocObject();
    sub_1D15A21D8();
    v44 = v56;
    v67[0] = v56;
    v67[1] = v37;
    v67[2] = v60;
    v68 = v40;
    LOBYTE(v69) = v43;
    sub_1D148D754();
    v45 = sub_1D15A21C8();
    v47 = v46;

    sub_1D14A0624(v44, v37, v60, v40, v43);
    v48 = sub_1D15A24F8();
    sub_1D1498BF4(v45, v47);
    [v36 setQueryConfigurationData_];
  }

  v49 = MEMORY[0x1E69A3D18];
  sub_1D1540D88(v13, v62, &qword_1EE059428, MEMORY[0x1E69A3D18], sub_1D1455C20);
  sub_1D1505A88(&qword_1EE056678, &qword_1EE056670);
  sub_1D15A2F98();

  v50 = v65;
  sub_1D1498BF4(v35, v65);
  sub_1D1540B80(v70, &qword_1EE058140, &unk_1EE058148, &protocol descriptor for SharableModelVersionProviding, sub_1D1453368);
  sub_1D1541334(v13, &qword_1EE059428, v49, sub_1D1455C20);
  sub_1D1541334(v20, &qword_1EE059428, v49, sub_1D1455C20);
  sub_1D1498BF4(v35, v50);

  return v36;
}

id LevelView.DataConfiguration.init(codable:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v30 = a2;
  v3 = sub_1D15A24D8();
  v33 = *(v3 - 8);
  *&v4 = MEMORY[0x1EEE9AC00](v3).n128_u64[0];
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = a1;
  v7 = [a1 sortedNormalizedBuckets];
  if (!v7)
  {
    v7 = [objc_allocWithZone(MEMORY[0x1E695DF70]) init];
  }

  v8 = MEMORY[0x1E69E7CC0];
  v38 = MEMORY[0x1E69E7CC0];
  sub_1D15A4558();
  sub_1D1540874(&qword_1EE0594C8, MEMORY[0x1E6968EB0]);
  sub_1D15A4638();
  while (v37)
  {
    sub_1D1458AC4(&v36, &v34);
    sub_1D1453BA0(0, &qword_1EE056518);
    if ((swift_dynamicCast() & 1) != 0 && v35)
    {
      MEMORY[0x1D388A400]();
      if (*((v38 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v38 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1D15A40E8();
      }

      sub_1D15A4108();
      v8 = v38;
    }

    sub_1D15A4638();
  }

  (*(v33 + 8))(v6, v3);
  [v31 normalizedValue];
  v10 = v9;
  if (v8 >> 62)
  {
    goto LABEL_30;
  }

  v11 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v11)
  {
    while (1)
    {
      *&v36 = MEMORY[0x1E69E7CC0];
      result = sub_1D14A79D4(0, v11 & ~(v11 >> 63), 0);
      if (v11 < 0)
      {
        break;
      }

      v13 = 0;
      v14 = v36;
      v32 = v8 & 0xFFFFFFFFFFFFFF8;
      v33 = v8 & 0xC000000000000001;
      while (1)
      {
        v15 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        if (v33)
        {
          v16 = MEMORY[0x1D388AB50](v13, v8);
        }

        else
        {
          if (v13 >= *(v32 + 16))
          {
            goto LABEL_29;
          }

          v16 = *(v8 + 8 * v13 + 32);
        }

        v17 = v16;
        result = [v16 range];
        if (!result)
        {
          goto LABEL_34;
        }

        v18 = result;
        [result lowerBound];
        v20 = v19;

        result = [v17 range];
        if (!result)
        {
          goto LABEL_35;
        }

        v21 = result;
        [result upperBound];
        v23 = v22;

        if (v20 > v23)
        {
          goto LABEL_28;
        }

        v24 = v8;
        v25 = [v17 highlighted];

        *&v36 = v14;
        v27 = *(v14 + 16);
        v26 = *(v14 + 24);
        if (v27 >= v26 >> 1)
        {
          sub_1D14A79D4((v26 > 1), v27 + 1, 1);
          v14 = v36;
        }

        *(v14 + 16) = v27 + 1;
        v28 = v14 + 24 * v27;
        *(v28 + 32) = v20;
        *(v28 + 40) = v23;
        *(v28 + 48) = v25;
        ++v13;
        v8 = v24;
        if (v15 == v11)
        {

          goto LABEL_32;
        }
      }

      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      v11 = sub_1D15A4708();
      if (!v11)
      {
        goto LABEL_31;
      }
    }

    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
  }

  else
  {
LABEL_31:

    v14 = MEMORY[0x1E69E7CC0];
LABEL_32:
    v29 = v30;
    *v30 = v10;
    v29[1] = v14;
  }

  return result;
}

void LevelView.DataConfiguration.Bucket.init(codable:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [a1 range];
  if (!v4)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v5 = v4;
  [v4 lowerBound];
  v7 = v6;

  v8 = [a1 range];
  if (v8)
  {
    v9 = v8;
    [v8 upperBound];
    v11 = v10;

    if (v7 <= v11)
    {
      v12 = [a1 highlighted];

      *a2 = v7;
      *(a2 + 8) = v11;
      *(a2 + 16) = v12;
      return;
    }

    __break(1u);
    goto LABEL_6;
  }

LABEL_7:
  __break(1u);
}

id LevelView.DataConfiguration.codableConfiguration()()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  result = [objc_allocWithZone(MEMORY[0x1E69A41E0]) init];
  if (result)
  {
    v4 = result;
    [result setNormalizedValue_];
    v5 = *(v2 + 16);
    if (!v5)
    {
LABEL_10:
      v16 = objc_allocWithZone(MEMORY[0x1E695DF70]);
      v17 = sub_1D15A40A8();

      v18 = [v16 initWithArray_];

      [v4 setSortedNormalizedBuckets_];
      return v4;
    }

    v19 = v4;
    v22 = MEMORY[0x1E69E7CC0];
    result = sub_1D14A7974(0, v5, 0);
    v6 = 0;
    v7 = (v2 + 48);
    v8 = v22;
    while (v6 < *(v2 + 16))
    {
      v10 = *(v7 - 2);
      v9 = *(v7 - 1);
      v11 = *v7;
      result = [objc_allocWithZone(MEMORY[0x1E69A41E8]) init];
      if (!result)
      {
        goto LABEL_12;
      }

      v12 = result;
      v13 = [objc_allocWithZone(MEMORY[0x1E69A4198]) init];
      [v13 setLowerBound_];
      [v13 setUpperBound_];
      [v12 setRange_];
      [v12 setHighlighted_];

      v21 = sub_1D1453BA0(0, &qword_1EE056518);
      v22 = v8;
      *&v20 = v12;
      v15 = *(v8 + 16);
      v14 = *(v8 + 24);
      if (v15 >= v14 >> 1)
      {
        sub_1D14A7974((v14 > 1), v15 + 1, 1);
        v8 = v22;
      }

      ++v6;
      *(v8 + 16) = v15 + 1;
      result = sub_1D1458AC4(&v20, (v8 + 32 * v15 + 32));
      v7 += 3;
      if (v5 == v6)
      {
        v4 = v19;
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
  }

  __break(1u);
  return result;
}

id LevelView.DataConfiguration.Bucket.codableBucket()()
{
  v2 = *v0;
  v1 = *(v0 + 8);
  v3 = *(v0 + 16);
  result = [objc_allocWithZone(MEMORY[0x1E69A41E8]) init];
  if (result)
  {
    v5 = result;
    v6 = [objc_allocWithZone(MEMORY[0x1E69A4198]) init];
    [v6 setLowerBound_];
    [v6 setUpperBound_];
    [v5 setRange_];
    [v5 setHighlighted_];

    return v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id (*sub_1D152E5B8(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = [v1 hasLatestSupportedVersion];
  return sub_1D152E60C;
}

id (*sub_1D152E624(void *a1))(uint64_t a1)
{
  a1[1] = v1;
  *a1 = [v1 latestSupportedVersion];
  return sub_1D152E678;
}

id (*sub_1D152E68C(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = [v1 hasMinimumSupportedVersion];
  return sub_1D152E6E0;
}

id (*sub_1D152E6F8(void *a1))(uint64_t a1)
{
  a1[1] = v1;
  *a1 = [v1 minimumSupportedVersion];
  return sub_1D152E74C;
}

uint64_t HKCodableSummaryData.Kind.init(rawValue:)@<X0>(char *a1@<X8>)
{
  v2 = sub_1D15A49B8();

  v4 = 4;
  if (v2 < 4)
  {
    v4 = v2;
  }

  *a1 = v4;
  return result;
}

unint64_t HKCodableSummaryData.Kind.rawValue.getter()
{
  v1 = 0x646F4D7472616863;
  v2 = 0x616E41646E657274;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000017;
  }

  if (*v0)
  {
    v1 = 0x56746E6572727563;
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

uint64_t sub_1D152E860()
{
  sub_1D15A4C88();
  sub_1D15A3F88();

  return sub_1D15A4CB8();
}

uint64_t sub_1D152E940()
{
  sub_1D15A3F88();
}

uint64_t sub_1D152EA0C()
{
  sub_1D15A4C88();
  sub_1D15A3F88();

  return sub_1D15A4CB8();
}

void sub_1D152EAF4(unint64_t *a1@<X8>)
{
  v2 = 0xEA00000000006C65;
  v3 = 0x646F4D7472616863;
  v4 = 0xED0000736973796CLL;
  v5 = 0x616E41646E657274;
  if (*v1 != 2)
  {
    v5 = 0xD000000000000017;
    v4 = 0x80000001D15BCCF0;
  }

  if (*v1)
  {
    v3 = 0x56746E6572727563;
    v2 = 0xEC00000065756C61;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

id sub_1D152EB9C@<X0>(id *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *a1;
  result = [*a1 hasAudienceRawValue];
  if (result && (result = [v3 audienceRawValue]) != 0)
  {
    v5 = result;
    sub_1D15A3F38();

    v6 = sub_1D15A49B8();

    v7 = v6 != 0;
  }

  else
  {
    v7 = 1;
  }

  *a2 = v7;
  return result;
}

void sub_1D152EC40(uint64_t a1, void **a2)
{
  v2 = *a2;
  v3 = sub_1D15A3EF8();

  [v2 setAudienceRawValue_];
}

void HKCodableSummaryData.audience.setter()
{
  v1 = sub_1D15A3EF8();

  [v0 setAudienceRawValue_];
}

void (*HKCodableSummaryData.audience.modify(uint64_t a1))(void **a1)
{
  v2 = v1;
  *a1 = v2;
  if ([v2 hasAudienceRawValue] && (v4 = objc_msgSend(v2, sel_audienceRawValue)) != 0)
  {
    v5 = v4;
    sub_1D15A3F38();

    v6 = sub_1D15A49B8();

    v7 = v6 != 0;
  }

  else
  {
    v7 = 1;
  }

  *(a1 + 8) = v7;
  return sub_1D152EE20;
}

void sub_1D152EE20(void **a1)
{
  v1 = *a1;
  v2 = sub_1D15A3EF8();

  [v1 setAudienceRawValue_];
}

id HKCodableSummaryData.queryAnchor.getter()
{
  if (![v0 hasDatabaseChangesQueryAnchor])
  {
    return 0;
  }

  v1 = [v0 databaseChangesQueryAnchor];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = HKCodableQueryAnchor.queryAnchor.getter();

  return v3;
}

id HKCodableQueryAnchor.queryAnchor.getter()
{
  swift_getObjectType();
  v1 = sub_1D15A3268();
  v2 = [v0 hasEncodedQueryAnchorData];
  result = 0;
  if (v2)
  {
    result = [v0 encodedQueryAnchorData];
    if (result)
    {
      v4 = result;
      sub_1D1453BA0(0, &qword_1EE05B590);
      sub_1D1453BA0(0, &qword_1EE05AD50);
      v5 = sub_1D15A2518();
      v7 = v6;

      v8 = sub_1D15A4408();
      sub_1D1498BF4(v5, v7);
      return v8;
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

id HKCodableSummaryData.init(contentData:kind:queryAnchor:audience:version:)(uint64_t a1, unint64_t a2, unsigned __int8 *a3, void *a4, int a5, uint64_t a6)
{
  v24[3] = a5;
  sub_1D1455C20(0, &qword_1EE059428, MEMORY[0x1E69A3D18]);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = v24 - v12;
  v14 = *a3;
  result = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  if (result)
  {
    v16 = result;
    if (a4)
    {
      sub_1D1453BA0(0, &qword_1EC630EF0);
      v17 = a4;
      v18 = HKCodableQueryAnchor.init(queryAnchor:)(v17);
      [v16 setDatabaseChangesQueryAnchor_];
    }

    if (a2 >> 60 != 15)
    {
      sub_1D153FCBC(a1, a2);
      v19 = sub_1D15A24F8();
      [v16 setContentData_];

      sub_1D14D5864(a1, a2);
    }

    if (v14 < 4)
    {
      v20 = sub_1D15A3EF8();

      [v16 setKindRawValue_];
    }

    v21 = sub_1D15A3EF8();

    [v16 setAudienceRawValue_];

    v22 = sub_1D15A2CD8();
    v23 = *(v22 - 8);
    (*(v23 + 16))(v13, a6, v22);
    (*(v23 + 56))(v13, 0, 1, v22);
    sub_1D1505A88(&qword_1EE056708, &qword_1EE056700);
    sub_1D15A2F98();
    sub_1D14D5864(a1, a2);

    (*(v23 + 8))(a6, v22);
    return v16;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id HKCodableQueryAnchor.init(queryAnchor:)(void *a1)
{
  v2 = v1;
  v41[1] = *MEMORY[0x1E69E9840];
  v4 = sub_1D15A3268();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  if (!v8)
  {
    __break(1u);
  }

  v9 = v8;
  v10 = objc_opt_self();
  v40 = 0;
  v11 = v9;
  v12 = [v10 archivedDataWithRootObject:a1 requiringSecureCoding:1 error:&v40];
  v13 = v40;
  if (v12)
  {
    v14 = sub_1D15A2518();
    v16 = v15;

    v17 = sub_1D15A24F8();
    sub_1D1498BF4(v14, v16);
    [v11 setEncodedQueryAnchorData_];
  }

  else
  {
    v18 = v13;

    v19 = sub_1D15A24A8();
    swift_willThrow();
    sub_1D15A3238();
    v20 = v19;
    v21 = sub_1D15A3248();
    v22 = sub_1D15A4318();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v38 = v22;
      v24 = v23;
      v39 = swift_slowAlloc();
      v40 = v2;
      v41[0] = v39;
      *v24 = 136315394;
      swift_getMetatypeMetadata();
      v25 = sub_1D15A3F68();
      v27 = sub_1D1479780(v25, v26, v41);

      *(v24 + 4) = v27;
      *(v24 + 12) = 2080;
      ErrorValue = swift_getErrorValue();
      v37[1] = v37;
      v29 = MEMORY[0x1EEE9AC00](ErrorValue);
      (*(v31 + 16))(v37 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0), v29);
      v32 = sub_1D15A3F68();
      v34 = sub_1D1479780(v32, v33, v41);

      *(v24 + 14) = v34;
      _os_log_impl(&dword_1D1446000, v21, v38, "[%s]: error encoding query anchor: %s", v24, 0x16u);
      v35 = v39;
      swift_arrayDestroy();
      MEMORY[0x1D388BF00](v35, -1, -1);
      MEMORY[0x1D388BF00](v24, -1, -1);
    }

    else
    {
    }

    (*(v5 + 8))(v7, v4);
  }

  return v11;
}

id HKCodableSummaryData.init(currentValue:queryAnchor:audience:version:)(void *a1, void *a2, int a3, uint64_t a4)
{
  v35 = a4;
  v36 = a3;
  sub_1D1455C20(0, &qword_1EE059428, MEMORY[0x1E69A3D18]);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v33 - v7;
  v9 = sub_1D15A2CD8();
  v10 = *(v9 - 8);
  *&v11 = MEMORY[0x1EEE9AC00](v9).n128_u64[0];
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 && (v14 = [a1 data]) != 0)
  {
    v15 = v14;
    v37 = sub_1D15A2518();
    v17 = v16;
  }

  else
  {
    v37 = 0;
    v17 = 0xF000000000000000;
  }

  sub_1D15A2CC8();
  result = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  if (result)
  {
    v19 = result;
    if (a2)
    {
      sub_1D1453BA0(0, &qword_1EC630EF0);
      v20 = a2;
      v34 = v10;
      v21 = a2;
      v22 = a1;
      v23 = v17;
      v24 = v20;
      v25 = HKCodableQueryAnchor.init(queryAnchor:)(v20);
      [v19 setDatabaseChangesQueryAnchor_];

      v17 = v23;
      a1 = v22;
      a2 = v21;
      v10 = v34;
    }

    if (v17 >> 60 != 15)
    {
      v26 = v17;
      v27 = v37;
      sub_1D153FCBC(v37, v26);
      v28 = sub_1D15A24F8();
      [v19 setContentData_];

      v29 = v27;
      v17 = v26;
      sub_1D14D5864(v29, v26);
    }

    v30 = sub_1D15A3EF8();
    [v19 setKindRawValue_];

    v31 = sub_1D15A3EF8();

    [v19 setAudienceRawValue_];

    (*(v10 + 16))(v8, v13, v9);
    (*(v10 + 56))(v8, 0, 1, v9);
    sub_1D1505A88(&qword_1EE056708, &qword_1EE056700);
    sub_1D15A2F98();
    sub_1D14D5864(v37, v17);

    v32 = *(v10 + 8);
    v32(v35, v9);
    v32(v13, v9);
    return v19;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id HKCodableSummaryData.init(correlatedTrendAnalysis:queryAnchor:audience:version:)(void *a1, void *a2, int a3, uint64_t a4)
{
  v34 = a4;
  v32 = a3;
  sub_1D1455C20(0, &qword_1EE059428, MEMORY[0x1E69A3D18]);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v28 - v7;
  v9 = sub_1D15A2CD8();
  v10 = *(v9 - 8);
  *&v11 = MEMORY[0x1EEE9AC00](v9).n128_u64[0];
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 && (v14 = [a1 data]) != 0)
  {
    v15 = v14;
    v33 = sub_1D15A2518();
    v17 = v16;
  }

  else
  {
    v33 = 0;
    v17 = 0xF000000000000000;
  }

  v30 = *(v10 + 16);
  v31 = v10 + 16;
  v30(v13, v34, v9);
  result = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  if (result)
  {
    v19 = result;
    if (a2)
    {
      sub_1D1453BA0(0, &qword_1EC630EF0);
      v20 = a2;
      v29 = v8;
      v21 = v20;
      v22 = HKCodableQueryAnchor.init(queryAnchor:)(v20);
      [v19 setDatabaseChangesQueryAnchor_];

      v8 = v29;
    }

    if (v17 >> 60 != 15)
    {
      v23 = v33;
      sub_1D153FCBC(v33, v17);
      v24 = sub_1D15A24F8();
      [v19 setContentData_];

      sub_1D14D5864(v23, v17);
    }

    v25 = sub_1D15A3EF8();
    [v19 setKindRawValue_];

    v26 = sub_1D15A3EF8();

    [v19 setAudienceRawValue_];

    v30(v8, v13, v9);
    (*(v10 + 56))(v8, 0, 1, v9);
    sub_1D1505A88(&qword_1EE056708, &qword_1EE056700);
    sub_1D15A2F98();
    sub_1D14D5864(v33, v17);

    v27 = *(v10 + 8);
    v27(v34, v9);
    v27(v13, v9);
    return v19;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1D15301EC(void *a1, void *a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v34 = a5;
  v35 = a6;
  v38 = a4;
  v36 = a3;
  sub_1D1455C20(0, &qword_1EE059428, MEMORY[0x1E69A3D18]);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v30 - v9;
  v11 = sub_1D15A2CD8();
  v12 = *(v11 - 8);
  *&v13 = MEMORY[0x1EEE9AC00](v11).n128_u64[0];
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 && (v16 = [a1 data]) != 0)
  {
    v17 = v16;
    v37 = sub_1D15A2518();
    v19 = v18;
  }

  else
  {
    v37 = 0;
    v19 = 0xF000000000000000;
  }

  v32 = *(v12 + 16);
  v33 = v12 + 16;
  v32(v15, v38, v11);
  result = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  if (result)
  {
    v21 = result;
    if (a2)
    {
      sub_1D1453BA0(0, &qword_1EC630EF0);
      v22 = a2;
      v31 = v10;
      v23 = v22;
      v24 = HKCodableQueryAnchor.init(queryAnchor:)(v22);
      [v21 setDatabaseChangesQueryAnchor_];

      v10 = v31;
    }

    if (v19 >> 60 != 15)
    {
      v25 = v37;
      sub_1D153FCBC(v37, v19);
      v26 = sub_1D15A24F8();
      [v21 setContentData_];

      sub_1D14D5864(v25, v19);
    }

    v27 = sub_1D15A3EF8();
    [v21 setKindRawValue_];

    v28 = sub_1D15A3EF8();

    [v21 setAudienceRawValue_];

    v32(v10, v15, v11);
    (*(v12 + 56))(v10, 0, 1, v11);
    sub_1D1505A88(&qword_1EE056708, &qword_1EE056700);
    sub_1D15A2F98();
    sub_1D14D5864(v37, v19);

    v29 = *(v12 + 8);
    v29(v38, v11);
    v29(v15, v11);
    return v21;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t HKCodableSummaryData.isContentCompatibleWithCurrentVersion.getter()
{
  sub_1D1455C20(0, &qword_1EE059428, MEMORY[0x1E69A3D18]);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v91 = &v87 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v90 = &v87 - v4;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v87 - v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v87 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v87 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v87 - v15;
  v17 = sub_1D15A2CD8();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v87 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v92 = &v87 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v87 - v24;
  MEMORY[0x1EEE9AC00](v26);
  v93 = &v87 - v27;
  *&v29 = MEMORY[0x1EEE9AC00](v28).n128_u64[0];
  v31 = &v87 - v30;
  if (![v0 hasContentData])
  {
    goto LABEL_34;
  }

  if (![v0 hasKindRawValue])
  {
    goto LABEL_34;
  }

  v32 = [v0 kindRawValue];
  if (!v32)
  {
    goto LABEL_34;
  }

  v87 = v13;
  v88 = v17;
  v89 = v18;
  v33 = v32;
  sub_1D15A3F38();

  v34 = sub_1D15A49B8();

  v35 = 0;
  if (v34 > 1)
  {
    if (v34 != 2)
    {
      v43 = v89;
      if (v34 == 3)
      {
        v44 = [v0 contentData];
        if (v44)
        {
          v45 = v44;
          v46 = sub_1D15A2518();
          v48 = v47;

          v49 = sub_1D15A24F8();
          sub_1D1498BF4(v46, v48);
        }

        else
        {
          v49 = 0;
        }

        v68 = v88;
        v69 = [objc_allocWithZone(MEMORY[0x1E69A4298]) initWithData_];

        if (!v69)
        {
          goto LABEL_34;
        }

        sub_1D1453BA0(0, &qword_1EC630EF8);
        sub_1D1505A88(&qword_1EC630F00, &qword_1EC630EF8);
        sub_1D15A2F88();
        if ((*(v43 + 48))(v10, 1, v68) != 1)
        {
          (*(v43 + 32))(v25, v10, v68);
          v80 = v93;
          sub_1D15A2CC8();
          v81 = v87;
          (*(v43 + 16))(v87, v80, v68);
          (*(v43 + 56))(v81, 0, 1, v68);
          v35 = sub_1D15A2CB8();

          sub_1D1541334(v81, &qword_1EE059428, MEMORY[0x1E69A3D18], sub_1D1455C20);
          v82 = *(v43 + 8);
          v82(v80, v68);
          v82(v25, v68);
          return v35 & 1;
        }

        v66 = MEMORY[0x1E69A3D18];
        v67 = v10;
        goto LABEL_33;
      }

      return v35 & 1;
    }

    v57 = [v0 contentData];
    v58 = v89;
    if (v57)
    {
      v59 = v57;
      v60 = sub_1D15A2518();
      v62 = v61;

      v63 = sub_1D15A24F8();
      sub_1D1498BF4(v60, v62);
    }

    else
    {
      v63 = 0;
    }

    v71 = v88;
    v70 = [objc_allocWithZone(MEMORY[0x1E69A4318]) initWithData_];

    if (!v70)
    {
      goto LABEL_34;
    }

    sub_1D1453BA0(0, &qword_1EE056660);
    sub_1D1505A88(&qword_1EE056668, &qword_1EE056660);
    v16 = v91;
    sub_1D15A2F88();
    if ((*(v58 + 48))(v16, 1, v71) != 1)
    {
      (*(v58 + 32))(v20, v16, v71);
      v83 = v93;
      sub_1D15A2CC8();
      v84 = v87;
      (*(v58 + 16))(v87, v83, v71);
      (*(v58 + 56))(v84, 0, 1, v71);
      v35 = sub_1D15A2CB8();

      sub_1D1541334(v84, &qword_1EE059428, MEMORY[0x1E69A3D18], sub_1D1455C20);
      v74 = *(v58 + 8);
      v74(v83, v71);
      v75 = v20;
      goto LABEL_41;
    }

LABEL_32:

    v66 = MEMORY[0x1E69A3D18];
    v67 = v16;
    goto LABEL_33;
  }

  if (!v34)
  {
    v50 = [v0 contentData];
    v51 = v89;
    if (v50)
    {
      v52 = v50;
      v53 = sub_1D15A2518();
      v55 = v54;

      v56 = sub_1D15A24F8();
      sub_1D1498BF4(v53, v55);
    }

    else
    {
      v56 = 0;
    }

    v70 = [objc_allocWithZone(MEMORY[0x1E69A4190]) initWithData_];

    if (!v70)
    {
      goto LABEL_34;
    }

    sub_1D1453BA0(0, &qword_1EC630F08);
    sub_1D1505A88(&qword_1EC630F10, &qword_1EC630F08);
    sub_1D15A2F88();
    v71 = v88;
    if ((*(v51 + 48))(v16, 1, v88) != 1)
    {
      (*(v51 + 32))(v31, v16, v71);
      v72 = v93;
      sub_1D15A2CC8();
      v73 = v87;
      (*(v51 + 16))(v87, v72, v71);
      (*(v51 + 56))(v73, 0, 1, v71);
      v35 = sub_1D15A2CB8();

      sub_1D1541334(v73, &qword_1EE059428, MEMORY[0x1E69A3D18], sub_1D1455C20);
      v74 = *(v51 + 8);
      v74(v72, v71);
      v75 = v31;
LABEL_41:
      v74(v75, v71);
      return v35 & 1;
    }

    goto LABEL_32;
  }

  v36 = v89;
  if (v34 == 1)
  {
    v37 = [v0 contentData];
    if (v37)
    {
      v38 = v37;
      v39 = sub_1D15A2518();
      v41 = v40;

      v42 = sub_1D15A24F8();
      sub_1D1498BF4(v39, v41);
    }

    else
    {
      v42 = 0;
    }

    v64 = v88;
    v65 = [objc_allocWithZone(MEMORY[0x1E69A42A8]) initWithData_];

    if (!v65)
    {
      goto LABEL_34;
    }

    sub_1D1453BA0(0, &qword_1EE056670);
    sub_1D1505A88(&qword_1EE056678, &qword_1EE056670);
    sub_1D15A2F88();
    if ((*(v36 + 48))(v7, 1, v64) == 1)
    {

      v66 = MEMORY[0x1E69A3D18];
      v67 = v7;
LABEL_33:
      sub_1D1541334(v67, &qword_1EE059428, v66, sub_1D1455C20);
LABEL_34:
      v35 = 0;
      return v35 & 1;
    }

    (*(v36 + 32))(v92, v7, v64);
    v77 = [v65 kindRawValue];
    if (v77)
    {
      v78 = v77;
      sub_1D15A3F38();

      HKCodableSummaryCurrentValue.Kind.init(rawValue:)(&v94);
      if (v94 != 23)
      {
        v79 = v90;
        sub_1D15A2CC8();
        v85 = 0;
LABEL_44:
        (*(v36 + 56))(v79, v85, 1, v64);
        v86 = v92;
        v35 = sub_1D15A2CB8();

        sub_1D1541334(v79, &qword_1EE059428, MEMORY[0x1E69A3D18], sub_1D1455C20);
        (*(v36 + 8))(v86, v64);
        return v35 & 1;
      }
    }

    else
    {
      v94 = 23;
    }

    v85 = 1;
    v79 = v90;
    goto LABEL_44;
  }

  return v35 & 1;
}

uint64_t static HKCodableSummaryCurrentValue.currentCodeVersion(for:)@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X8>)
{
  if (*a1 == 23)
  {
    v3 = 1;
  }

  else
  {
    sub_1D15A2CC8();
    v3 = 0;
  }

  v4 = sub_1D15A2CD8();
  v5 = *(*(v4 - 8) + 56);

  return v5(a2, v3, 1, v4);
}

id (*sub_1D1531254(uint64_t a1))(uint64_t)
{
  *a1 = v1;
  *(a1 + 8) = [v1 hasLatestSupportedVersion];
  return sub_1D15413B4;
}

id (*sub_1D15312A8(void *a1))(uint64_t)
{
  a1[1] = v1;
  *a1 = [v1 latestSupportedVersion];
  return sub_1D15413B8;
}

id (*sub_1D15312FC(uint64_t a1))(uint64_t)
{
  *a1 = v1;
  *(a1 + 8) = [v1 hasMinimumSupportedVersion];
  return sub_1D15413BC;
}

id (*sub_1D1531350(void *a1))(uint64_t)
{
  a1[1] = v1;
  *a1 = [v1 minimumSupportedVersion];
  return sub_1D15413C0;
}

uint64_t HKCodableSummaryCurrentValue.Kind.init(rawValue:)@<X0>(char *a1@<X8>)
{
  v2 = sub_1D15A4BD8();

  v4 = 0;
  v5 = 5;
  switch(v2)
  {
    case 0:
      goto LABEL_15;
    case 1:
      v4 = 1;
      goto LABEL_15;
    case 2:
      v4 = 2;
      goto LABEL_15;
    case 3:
      v4 = 3;
      goto LABEL_15;
    case 4:
      v4 = 4;
LABEL_15:
      v5 = v4;
      break;
    case 5:
      break;
    case 6:
      v5 = 6;
      break;
    case 7:
      v5 = 7;
      break;
    case 8:
      v5 = 8;
      break;
    case 9:
      v5 = 9;
      break;
    case 10:
      v5 = 10;
      break;
    case 11:
      v5 = 11;
      break;
    case 12:
      v5 = 12;
      break;
    case 13:
      v5 = 13;
      break;
    case 14:
      v5 = 14;
      break;
    case 15:
      v5 = 15;
      break;
    case 16:
      v5 = 16;
      break;
    case 17:
      v5 = 17;
      break;
    case 18:
      v5 = 18;
      break;
    case 19:
      v5 = 19;
      break;
    case 20:
      v5 = 20;
      break;
    case 21:
      v5 = 21;
      break;
    case 22:
      v5 = 22;
      break;
    default:
      v5 = 23;
      break;
  }

  *a1 = v5;
  return result;
}

uint64_t sub_1D15314E0()
{
  v0 = HKCodableSummaryCurrentValue.Kind.rawValue.getter();
  v2 = v1;
  if (v0 == HKCodableSummaryCurrentValue.Kind.rawValue.getter() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_1D15A4BA8();
  }

  return v5 & 1;
}

uint64_t sub_1D153157C()
{
  sub_1D15A4C88();
  HKCodableSummaryCurrentValue.Kind.rawValue.getter();
  sub_1D15A3F88();

  return sub_1D15A4CB8();
}

uint64_t sub_1D15315E4()
{
  HKCodableSummaryCurrentValue.Kind.rawValue.getter();
  sub_1D15A3F88();
}

uint64_t sub_1D1531648()
{
  sub_1D15A4C88();
  HKCodableSummaryCurrentValue.Kind.rawValue.getter();
  sub_1D15A3F88();

  return sub_1D15A4CB8();
}

unint64_t sub_1D15316B8@<X0>(unint64_t *a1@<X8>)
{
  result = HKCodableSummaryCurrentValue.Kind.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1D15316E0(unsigned __int8 *a1)
{
  v2 = *a1;
  if (![v1 hasValueData])
  {
    return 0;
  }

  v13 = v2;
  result = sub_1D153F2CC(&v13);
  if (result)
  {
    v4 = [v1 valueData];
    if (v4)
    {
      v5 = v4;
      v6 = sub_1D15A2518();
      v8 = v7;

      v9 = objc_allocWithZone(swift_getObjCClassFromMetadata());
      v10 = sub_1D15A24F8();
      sub_1D1498BF4(v6, v8);
      v11 = v9;
    }

    else
    {
      v11 = objc_allocWithZone(swift_getObjCClassFromMetadata());
      v10 = 0;
    }

    v12 = [v11 initWithData_];

    return v12;
  }

  return result;
}

id HKCodableSummaryCurrentValue.init(valueData:kind:queryConfiguration:supplementaryValue:metadata:versionProviding:)(uint64_t a1, unint64_t a2, unsigned __int8 *a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v9 = sub_1D153FE24(a1, a2, a3, a4, a5, a6, a7);
  sub_1D1498BF4(a1, a2);
  return v9;
}

id sub_1D1531878(void *a1, uint64_t a2, void *a3)
{
  v61 = a3;
  v5 = sub_1D15A3268();
  v49[2] = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v57 = v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D1455C20(0, &qword_1EE059428, MEMORY[0x1E69A3D18]);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v60 = v49 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v14 = v49 - v13;
  *&v16 = MEMORY[0x1EEE9AC00](v15).n128_u64[0];
  v62 = v49 - v17;
  v18 = *(a2 + 8);
  v53 = *a2;
  v52 = v18;
  v19 = *(a2 + 24);
  v54 = *(a2 + 16);
  v51 = v19;
  v55 = *(a2 + 32);
  v56 = a1;
  result = [a1 data];
  if (!result)
  {
    __break(1u);
    goto LABEL_16;
  }

  v21 = result;
  v49[1] = v5;
  v50 = v9;
  v58 = sub_1D15A2518();
  v59 = v22;

  v67 = 0;
  memset(v66, 0, sizeof(v66));
  sub_1D1540BDC(v66, v63, &qword_1EE058140, &unk_1EE058148, &protocol descriptor for SharableModelVersionProviding, sub_1D1453368);
  v23 = v64;
  if (v64)
  {
    v24 = v62;
    v25 = v65;
    __swift_project_boxed_opaque_existential_1(v63, v64);
    (*(v25 + 16))(v23, v25);
    v26 = sub_1D15A2CD8();
    v27 = *(v26 - 8);
    v28 = *(v27 + 56);
    v28(v14, 0, 1, v26);
    __swift_destroy_boxed_opaque_existential_1(v63);
    if ((*(v27 + 48))(v14, 1, v26) != 1)
    {
      (*(v27 + 32))(v24, v14, v26);
      v28(v24, 0, 1, v26);
      goto LABEL_9;
    }
  }

  else
  {
    sub_1D1540B80(v63, &qword_1EE058140, &unk_1EE058148, &protocol descriptor for SharableModelVersionProviding, sub_1D1453368);
    v26 = sub_1D15A2CD8();
    (*(*(v26 - 8) + 56))(v14, 1, 1, v26);
  }

  v29 = v62;
  sub_1D15A2CC8();
  sub_1D15A2CD8();
  v30 = *(v26 - 8);
  (*(v30 + 56))(v29, 0, 1, v26);
  if ((*(v30 + 48))(v14, 1, v26) != 1)
  {
    sub_1D1541334(v14, &qword_1EE059428, MEMORY[0x1E69A3D18], sub_1D1455C20);
  }

LABEL_9:
  sub_1D1540D88(v62, v60, &qword_1EE059428, MEMORY[0x1E69A3D18], sub_1D1455C20);
  v31 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v32 = v58;
  v33 = v59;
  sub_1D153FCBC(v58, v59);
  result = [v31 init];
  if (!result)
  {
LABEL_16:
    __break(1u);
    return result;
  }

  v34 = result;
  sub_1D153FCBC(v32, v33);
  v35 = sub_1D15A24F8();
  [v34 setValueData_];

  sub_1D1498BF4(v32, v33);
  v36 = sub_1D15A3EF8();
  [v34 setKindRawValue_];

  v37 = v55;
  v38 = v51;
  v39 = v54;
  v40 = v52;
  v41 = v53;
  if (v61)
  {
    [v34 setSupplementaryValue_];
  }

  if (v37 <= 0xFD)
  {
    sub_1D15A21E8();
    swift_allocObject();
    sub_1D15A21D8();
    v63[0] = v41;
    v63[1] = v40;
    v63[2] = v39;
    v64 = v38;
    LOBYTE(v65) = v37;
    sub_1D148D754();
    v42 = sub_1D15A21C8();
    v44 = v43;

    sub_1D14A0624(v41, v40, v39, v38, v37);
    v45 = sub_1D15A24F8();
    sub_1D1498BF4(v42, v44);
    [v34 setQueryConfigurationData_];
  }

  v46 = MEMORY[0x1E69A3D18];
  v47 = v60;
  sub_1D1540D88(v60, v50, &qword_1EE059428, MEMORY[0x1E69A3D18], sub_1D1455C20);
  sub_1D1505A88(&qword_1EE056678, &qword_1EE056670);
  sub_1D15A2F98();

  v48 = v59;
  sub_1D1498BF4(v32, v59);
  sub_1D1540B80(v66, &qword_1EE058140, &unk_1EE058148, &protocol descriptor for SharableModelVersionProviding, sub_1D1453368);
  sub_1D1541334(v47, &qword_1EE059428, v46, sub_1D1455C20);
  sub_1D1541334(v62, &qword_1EE059428, v46, sub_1D1455C20);
  sub_1D1498BF4(v32, v48);

  return v34;
}

id HKCodableSummaryCurrentValue.init(electrocardiogramValue:queryConfiguration:supplementaryValue:)(void *a1, uint64_t a2, void *a3)
{
  v57 = a3;
  v5 = sub_1D15A3268();
  v47[3] = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v47[2] = v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D1455C20(0, &qword_1EE059428, MEMORY[0x1E69A3D18]);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v56 = v47 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v14 = v47 - v13;
  *&v16 = MEMORY[0x1EEE9AC00](v15).n128_u64[0];
  v18 = v47 - v17;
  v19 = *a2;
  v49 = *(a2 + 8);
  v20 = *(a2 + 24);
  v50 = *(a2 + 16);
  v51 = v20;
  v52 = *(a2 + 32);
  v53 = a1;
  result = [a1 data];
  if (!result)
  {
    __break(1u);
    goto LABEL_16;
  }

  v22 = result;
  v47[1] = v5;
  v48 = v9;
  v54 = sub_1D15A2518();
  v24 = v23;

  v62 = 0;
  memset(v61, 0, sizeof(v61));
  sub_1D1540BDC(v61, v58, &qword_1EE058140, &unk_1EE058148, &protocol descriptor for SharableModelVersionProviding, sub_1D1453368);
  v25 = v59;
  v55 = v24;
  if (v59)
  {
    v26 = v60;
    __swift_project_boxed_opaque_existential_1(v58, v59);
    (*(v26 + 16))(v25, v26);
    v27 = sub_1D15A2CD8();
    v28 = *(v27 - 8);
    v29 = *(v28 + 56);
    v29(v14, 0, 1, v27);
    __swift_destroy_boxed_opaque_existential_1(v58);
    if ((*(v28 + 48))(v14, 1, v27) != 1)
    {
      (*(v28 + 32))(v18, v14, v27);
      v29(v18, 0, 1, v27);
      v24 = v55;
      goto LABEL_9;
    }

    v24 = v55;
  }

  else
  {
    sub_1D1540B80(v58, &qword_1EE058140, &unk_1EE058148, &protocol descriptor for SharableModelVersionProviding, sub_1D1453368);
    v27 = sub_1D15A2CD8();
    (*(*(v27 - 8) + 56))(v14, 1, 1, v27);
  }

  sub_1D15A2CC8();
  sub_1D15A2CD8();
  v30 = *(v27 - 8);
  (*(v30 + 56))(v18, 0, 1, v27);
  if ((*(v30 + 48))(v14, 1, v27) != 1)
  {
    sub_1D1541334(v14, &qword_1EE059428, MEMORY[0x1E69A3D18], sub_1D1455C20);
  }

LABEL_9:
  sub_1D1540D88(v18, v56, &qword_1EE059428, MEMORY[0x1E69A3D18], sub_1D1455C20);
  v31 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v32 = v54;
  sub_1D153FCBC(v54, v24);
  result = [v31 init];
  if (!result)
  {
LABEL_16:
    __break(1u);
    return result;
  }

  v33 = result;
  sub_1D153FCBC(v32, v24);
  v34 = sub_1D15A24F8();
  [v33 setValueData_];

  sub_1D1498BF4(v32, v24);
  v35 = sub_1D15A3EF8();
  [v33 setKindRawValue_];

  v36 = v51;
  v37 = v50;
  v38 = v49;
  if (v57)
  {
    [v33 setSupplementaryValue_];
  }

  v39 = v52;
  if (v52 <= 0xFD)
  {
    sub_1D15A21E8();
    swift_allocObject();
    sub_1D15A21D8();
    v58[0] = v19;
    v58[1] = v38;
    v58[2] = v37;
    v59 = v36;
    LOBYTE(v60) = v39;
    sub_1D148D754();
    v40 = sub_1D15A21C8();
    v42 = v41;

    sub_1D14A0624(v19, v38, v37, v36, v39);
    v43 = sub_1D15A24F8();
    sub_1D1498BF4(v40, v42);
    [v33 setQueryConfigurationData_];
  }

  v44 = MEMORY[0x1E69A3D18];
  v45 = v56;
  sub_1D1540D88(v56, v48, &qword_1EE059428, MEMORY[0x1E69A3D18], sub_1D1455C20);
  sub_1D1505A88(&qword_1EE056678, &qword_1EE056670);
  sub_1D15A2F98();

  v46 = v55;
  sub_1D1498BF4(v32, v55);
  sub_1D1540B80(v61, &qword_1EE058140, &unk_1EE058148, &protocol descriptor for SharableModelVersionProviding, sub_1D1453368);
  sub_1D1541334(v45, &qword_1EE059428, v44, sub_1D1455C20);
  sub_1D1541334(v18, &qword_1EE059428, v44, sub_1D1455C20);
  sub_1D1498BF4(v32, v46);

  return v33;
}

id HKCodableSummaryCurrentValue.init(visionPrescriptionValue:queryConfiguration:supplementaryValue:)(void *a1, uint64_t a2, void *a3)
{
  v57 = a3;
  v5 = sub_1D15A3268();
  v47[3] = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v47[2] = v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D1455C20(0, &qword_1EE059428, MEMORY[0x1E69A3D18]);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v56 = v47 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v14 = v47 - v13;
  *&v16 = MEMORY[0x1EEE9AC00](v15).n128_u64[0];
  v18 = v47 - v17;
  v19 = *a2;
  v49 = *(a2 + 8);
  v20 = *(a2 + 24);
  v50 = *(a2 + 16);
  v51 = v20;
  v52 = *(a2 + 32);
  v53 = a1;
  result = [a1 data];
  if (!result)
  {
    __break(1u);
    goto LABEL_16;
  }

  v22 = result;
  v47[1] = v5;
  v48 = v9;
  v54 = sub_1D15A2518();
  v24 = v23;

  v62 = 0;
  memset(v61, 0, sizeof(v61));
  sub_1D1540BDC(v61, v58, &qword_1EE058140, &unk_1EE058148, &protocol descriptor for SharableModelVersionProviding, sub_1D1453368);
  v25 = v59;
  v55 = v24;
  if (v59)
  {
    v26 = v60;
    __swift_project_boxed_opaque_existential_1(v58, v59);
    (*(v26 + 16))(v25, v26);
    v27 = sub_1D15A2CD8();
    v28 = *(v27 - 8);
    v29 = *(v28 + 56);
    v29(v14, 0, 1, v27);
    __swift_destroy_boxed_opaque_existential_1(v58);
    if ((*(v28 + 48))(v14, 1, v27) != 1)
    {
      (*(v28 + 32))(v18, v14, v27);
      v29(v18, 0, 1, v27);
      v24 = v55;
      goto LABEL_9;
    }

    v24 = v55;
  }

  else
  {
    sub_1D1540B80(v58, &qword_1EE058140, &unk_1EE058148, &protocol descriptor for SharableModelVersionProviding, sub_1D1453368);
    v27 = sub_1D15A2CD8();
    (*(*(v27 - 8) + 56))(v14, 1, 1, v27);
  }

  sub_1D15A2CC8();
  sub_1D15A2CD8();
  v30 = *(v27 - 8);
  (*(v30 + 56))(v18, 0, 1, v27);
  if ((*(v30 + 48))(v14, 1, v27) != 1)
  {
    sub_1D1541334(v14, &qword_1EE059428, MEMORY[0x1E69A3D18], sub_1D1455C20);
  }

LABEL_9:
  sub_1D1540D88(v18, v56, &qword_1EE059428, MEMORY[0x1E69A3D18], sub_1D1455C20);
  v31 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v32 = v54;
  sub_1D153FCBC(v54, v24);
  result = [v31 init];
  if (!result)
  {
LABEL_16:
    __break(1u);
    return result;
  }

  v33 = result;
  sub_1D153FCBC(v32, v24);
  v34 = sub_1D15A24F8();
  [v33 setValueData_];

  sub_1D1498BF4(v32, v24);
  v35 = sub_1D15A3EF8();
  [v33 setKindRawValue_];

  v36 = v51;
  v37 = v50;
  v38 = v49;
  if (v57)
  {
    [v33 setSupplementaryValue_];
  }

  v39 = v52;
  if (v52 <= 0xFD)
  {
    sub_1D15A21E8();
    swift_allocObject();
    sub_1D15A21D8();
    v58[0] = v19;
    v58[1] = v38;
    v58[2] = v37;
    v59 = v36;
    LOBYTE(v60) = v39;
    sub_1D148D754();
    v40 = sub_1D15A21C8();
    v42 = v41;

    sub_1D14A0624(v19, v38, v37, v36, v39);
    v43 = sub_1D15A24F8();
    sub_1D1498BF4(v40, v42);
    [v33 setQueryConfigurationData_];
  }

  v44 = MEMORY[0x1E69A3D18];
  v45 = v56;
  sub_1D1540D88(v56, v48, &qword_1EE059428, MEMORY[0x1E69A3D18], sub_1D1455C20);
  sub_1D1505A88(&qword_1EE056678, &qword_1EE056670);
  sub_1D15A2F98();

  v46 = v55;
  sub_1D1498BF4(v32, v55);
  sub_1D1540B80(v61, &qword_1EE058140, &unk_1EE058148, &protocol descriptor for SharableModelVersionProviding, sub_1D1453368);
  sub_1D1541334(v45, &qword_1EE059428, v44, sub_1D1455C20);
  sub_1D1541334(v18, &qword_1EE059428, v44, sub_1D1455C20);
  sub_1D1498BF4(v32, v46);

  return v33;
}

id HKCodableSummaryCurrentValue.init(walkingSteadinessValue:queryConfiguration:supplementaryValue:)(void *a1, uint64_t a2, void *a3)
{
  v57 = a3;
  v5 = sub_1D15A3268();
  v47[3] = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v47[2] = v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D1455C20(0, &qword_1EE059428, MEMORY[0x1E69A3D18]);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v56 = v47 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v14 = v47 - v13;
  *&v16 = MEMORY[0x1EEE9AC00](v15).n128_u64[0];
  v18 = v47 - v17;
  v19 = *a2;
  v49 = *(a2 + 8);
  v20 = *(a2 + 24);
  v50 = *(a2 + 16);
  v51 = v20;
  v52 = *(a2 + 32);
  v53 = a1;
  result = [a1 data];
  if (!result)
  {
    __break(1u);
    goto LABEL_16;
  }

  v22 = result;
  v47[1] = v5;
  v48 = v9;
  v54 = sub_1D15A2518();
  v24 = v23;

  v62 = 0;
  memset(v61, 0, sizeof(v61));
  sub_1D1540BDC(v61, v58, &qword_1EE058140, &unk_1EE058148, &protocol descriptor for SharableModelVersionProviding, sub_1D1453368);
  v25 = v59;
  v55 = v24;
  if (v59)
  {
    v26 = v60;
    __swift_project_boxed_opaque_existential_1(v58, v59);
    (*(v26 + 16))(v25, v26);
    v27 = sub_1D15A2CD8();
    v28 = *(v27 - 8);
    v29 = *(v28 + 56);
    v29(v14, 0, 1, v27);
    __swift_destroy_boxed_opaque_existential_1(v58);
    if ((*(v28 + 48))(v14, 1, v27) != 1)
    {
      (*(v28 + 32))(v18, v14, v27);
      v29(v18, 0, 1, v27);
      v24 = v55;
      goto LABEL_9;
    }

    v24 = v55;
  }

  else
  {
    sub_1D1540B80(v58, &qword_1EE058140, &unk_1EE058148, &protocol descriptor for SharableModelVersionProviding, sub_1D1453368);
    v27 = sub_1D15A2CD8();
    (*(*(v27 - 8) + 56))(v14, 1, 1, v27);
  }

  sub_1D15A2CC8();
  sub_1D15A2CD8();
  v30 = *(v27 - 8);
  (*(v30 + 56))(v18, 0, 1, v27);
  if ((*(v30 + 48))(v14, 1, v27) != 1)
  {
    sub_1D1541334(v14, &qword_1EE059428, MEMORY[0x1E69A3D18], sub_1D1455C20);
  }

LABEL_9:
  sub_1D1540D88(v18, v56, &qword_1EE059428, MEMORY[0x1E69A3D18], sub_1D1455C20);
  v31 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v32 = v54;
  sub_1D153FCBC(v54, v24);
  result = [v31 init];
  if (!result)
  {
LABEL_16:
    __break(1u);
    return result;
  }

  v33 = result;
  sub_1D153FCBC(v32, v24);
  v34 = sub_1D15A24F8();
  [v33 setValueData_];

  sub_1D1498BF4(v32, v24);
  v35 = sub_1D15A3EF8();
  [v33 setKindRawValue_];

  v36 = v51;
  v37 = v50;
  v38 = v49;
  if (v57)
  {
    [v33 setSupplementaryValue_];
  }

  v39 = v52;
  if (v52 <= 0xFD)
  {
    sub_1D15A21E8();
    swift_allocObject();
    sub_1D15A21D8();
    v58[0] = v19;
    v58[1] = v38;
    v58[2] = v37;
    v59 = v36;
    LOBYTE(v60) = v39;
    sub_1D148D754();
    v40 = sub_1D15A21C8();
    v42 = v41;

    sub_1D14A0624(v19, v38, v37, v36, v39);
    v43 = sub_1D15A24F8();
    sub_1D1498BF4(v40, v42);
    [v33 setQueryConfigurationData_];
  }

  v44 = MEMORY[0x1E69A3D18];
  v45 = v56;
  sub_1D1540D88(v56, v48, &qword_1EE059428, MEMORY[0x1E69A3D18], sub_1D1455C20);
  sub_1D1505A88(&qword_1EE056678, &qword_1EE056670);
  sub_1D15A2F98();

  v46 = v55;
  sub_1D1498BF4(v32, v55);
  sub_1D1540B80(v61, &qword_1EE058140, &unk_1EE058148, &protocol descriptor for SharableModelVersionProviding, sub_1D1453368);
  sub_1D1541334(v45, &qword_1EE059428, v44, sub_1D1455C20);
  sub_1D1541334(v18, &qword_1EE059428, v44, sub_1D1455C20);
  sub_1D1498BF4(v32, v46);

  return v33;
}

id HKCodableSummaryCurrentValue.init(breathingDisturbancesValue:queryConfiguration:supplementaryValue:)(void *a1, uint64_t a2, void *a3)
{
  v57 = a3;
  v5 = sub_1D15A3268();
  v47[3] = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v47[2] = v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D1455C20(0, &qword_1EE059428, MEMORY[0x1E69A3D18]);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v56 = v47 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v14 = v47 - v13;
  *&v16 = MEMORY[0x1EEE9AC00](v15).n128_u64[0];
  v18 = v47 - v17;
  v19 = *a2;
  v49 = *(a2 + 8);
  v20 = *(a2 + 24);
  v50 = *(a2 + 16);
  v51 = v20;
  v52 = *(a2 + 32);
  v53 = a1;
  result = [a1 data];
  if (!result)
  {
    __break(1u);
    goto LABEL_16;
  }

  v22 = result;
  v47[1] = v5;
  v48 = v9;
  v54 = sub_1D15A2518();
  v24 = v23;

  v62 = 0;
  memset(v61, 0, sizeof(v61));
  sub_1D1540BDC(v61, v58, &qword_1EE058140, &unk_1EE058148, &protocol descriptor for SharableModelVersionProviding, sub_1D1453368);
  v25 = v59;
  v55 = v24;
  if (v59)
  {
    v26 = v60;
    __swift_project_boxed_opaque_existential_1(v58, v59);
    (*(v26 + 16))(v25, v26);
    v27 = sub_1D15A2CD8();
    v28 = *(v27 - 8);
    v29 = *(v28 + 56);
    v29(v14, 0, 1, v27);
    __swift_destroy_boxed_opaque_existential_1(v58);
    if ((*(v28 + 48))(v14, 1, v27) != 1)
    {
      (*(v28 + 32))(v18, v14, v27);
      v29(v18, 0, 1, v27);
      v24 = v55;
      goto LABEL_9;
    }

    v24 = v55;
  }

  else
  {
    sub_1D1540B80(v58, &qword_1EE058140, &unk_1EE058148, &protocol descriptor for SharableModelVersionProviding, sub_1D1453368);
    v27 = sub_1D15A2CD8();
    (*(*(v27 - 8) + 56))(v14, 1, 1, v27);
  }

  sub_1D15A2CC8();
  sub_1D15A2CD8();
  v30 = *(v27 - 8);
  (*(v30 + 56))(v18, 0, 1, v27);
  if ((*(v30 + 48))(v14, 1, v27) != 1)
  {
    sub_1D1541334(v14, &qword_1EE059428, MEMORY[0x1E69A3D18], sub_1D1455C20);
  }

LABEL_9:
  sub_1D1540D88(v18, v56, &qword_1EE059428, MEMORY[0x1E69A3D18], sub_1D1455C20);
  v31 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v32 = v54;
  sub_1D153FCBC(v54, v24);
  result = [v31 init];
  if (!result)
  {
LABEL_16:
    __break(1u);
    return result;
  }

  v33 = result;
  sub_1D153FCBC(v32, v24);
  v34 = sub_1D15A24F8();
  [v33 setValueData_];

  sub_1D1498BF4(v32, v24);
  v35 = sub_1D15A3EF8();
  [v33 setKindRawValue_];

  v36 = v51;
  v37 = v50;
  v38 = v49;
  if (v57)
  {
    [v33 setSupplementaryValue_];
  }

  v39 = v52;
  if (v52 <= 0xFD)
  {
    sub_1D15A21E8();
    swift_allocObject();
    sub_1D15A21D8();
    v58[0] = v19;
    v58[1] = v38;
    v58[2] = v37;
    v59 = v36;
    LOBYTE(v60) = v39;
    sub_1D148D754();
    v40 = sub_1D15A21C8();
    v42 = v41;

    sub_1D14A0624(v19, v38, v37, v36, v39);
    v43 = sub_1D15A24F8();
    sub_1D1498BF4(v40, v42);
    [v33 setQueryConfigurationData_];
  }

  v44 = MEMORY[0x1E69A3D18];
  v45 = v56;
  sub_1D1540D88(v56, v48, &qword_1EE059428, MEMORY[0x1E69A3D18], sub_1D1455C20);
  sub_1D1505A88(&qword_1EE056678, &qword_1EE056670);
  sub_1D15A2F98();

  v46 = v55;
  sub_1D1498BF4(v32, v55);
  sub_1D1540B80(v61, &qword_1EE058140, &unk_1EE058148, &protocol descriptor for SharableModelVersionProviding, sub_1D1453368);
  sub_1D1541334(v45, &qword_1EE059428, v44, sub_1D1455C20);
  sub_1D1541334(v18, &qword_1EE059428, v44, sub_1D1455C20);
  sub_1D1498BF4(v32, v46);

  return v33;
}

id HKCodableSummaryCategoryValue.init(categoryValue:date:)(uint64_t a1, uint64_t a2)
{
  result = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  if (result)
  {
    v5 = result;
    [v5 setCategoryValue_];
    v6 = sub_1D15A2618();
    v7 = MEMORY[0x1D388B370]();

    [v5 setDateData_];
    v8 = sub_1D15A26A8();
    (*(*(v8 - 8) + 8))(a2, v8);
    return v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id HKCodableSummaryCardioFitnessValue.init(quantity:date:cardioFitnessLevel:dataConfiguration:)(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  result = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  if (result)
  {
    v9 = result;
    sub_1D1453BA0(0, &qword_1EE056720);
    v10 = v9;
    v11 = a1;
    v12 = sub_1D15A43F8();
    [v10 setValue_];

    v13 = sub_1D15A2618();
    v14 = MEMORY[0x1D388B370]();

    [v10 setDateData_];
    [v10 setClassificationRawValue_];
    v15 = a4;
    [v10 setLevelViewDataConfiguration_];

    v16 = sub_1D15A26A8();
    (*(*(v16 - 8) + 8))(a2, v16);
    return v10;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id HKCodableSummaryCardioFitnessValue.cardioFitnessLevel.getter()
{
  if ([v0 hasClassificationRawValue])
  {
    return [v0 classificationRawValue];
  }

  else
  {
    return 0;
  }
}

id sub_1D1534F30(SEL *a1, SEL *a2)
{
  if (![v2 *a1])
  {
    return 0;
  }

  result = [v2 *a2];
  if (result)
  {
    v5 = result;
    v6 = sub_1D15A43E8();

    return v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id HKCodableSummarySleepDurationValue.init(inBedDuration:asleepDuration:endOfSleepDate:)(uint64_t a1, char a2, uint64_t a3, double a4)
{
  result = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  if (result)
  {
    v9 = result;
    [v9 setInBedDuration_];
    if ((a2 & 1) == 0)
    {
      [v9 setAsleepDuration_];
    }

    v10 = sub_1D15A2618();
    v11 = MEMORY[0x1D388B370]();

    [v9 setEndOfSleepTimeIntervalSinceReferenceDate_];
    v12 = sub_1D15A26A8();
    (*(*(v12 - 8) + 8))(a3, v12);
    return v9;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1D15350B4(id *a1)
{
  [*a1 endOfSleepTimeIntervalSinceReferenceDate];
  v1 = HKDecodeDateForValue();
  sub_1D15A2668();
}

uint64_t sub_1D1535118(uint64_t a1, void **a2)
{
  v4 = sub_1D15A26A8();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, a1, v4, v6);
  v9 = *a2;
  v10 = sub_1D15A2618();
  v11 = MEMORY[0x1D388B370]();

  [v9 setEndOfSleepTimeIntervalSinceReferenceDate_];
  return (*(v5 + 8))(v8, v4);
}

uint64_t HKCodableSummarySleepDurationValue.endOfSleepDate.setter(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1D15A2618();
  v5 = MEMORY[0x1D388B370]();

  [v2 setEndOfSleepTimeIntervalSinceReferenceDate_];
  v6 = sub_1D15A26A8();
  v7 = *(*(v6 - 8) + 8);

  return v7(a1, v6);
}

void (*HKCodableSummarySleepDurationValue.endOfSleepDate.modify(void *a1))(void ***a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = sub_1D15A26A8();
  v5[1] = v6;
  v7 = *(v6 - 8);
  v5[2] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[3] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[3] = malloc(*(v7 + 64));
    v9 = malloc(v8);
  }

  v5[4] = v9;
  [v1 endOfSleepTimeIntervalSinceReferenceDate];
  v10 = HKDecodeDateForValue();
  sub_1D15A2668();

  return sub_1D1535404;
}

void sub_1D1535404(void ***a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[3];
  v4 = (*a1)[4];
  v5 = (*a1)[1];
  v6 = (*a1)[2];
  v7 = **a1;
  if (a2)
  {
    v6[2]((*a1)[3], v4, v5);
    v8 = sub_1D15A2618();
    v9 = MEMORY[0x1D388B370]();

    [v7 setEndOfSleepTimeIntervalSinceReferenceDate_];
    v10 = v6[1];
    (v10)(v3, v5);
    (v10)(v4, v5);
  }

  else
  {
    v11 = sub_1D15A2618();
    v12 = MEMORY[0x1D388B370]();

    [v7 setEndOfSleepTimeIntervalSinceReferenceDate_];
    (v6[1])(v4, v5);
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t HKCodableSummarySleepScoreValue.Model.morningIndex.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1D15A3E38();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t HKCodableSummarySleepScoreValue.Model.morningIndex.setter(uint64_t a1)
{
  v3 = sub_1D15A3E38();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t HKCodableSummarySleepScoreValue.Model.init(morningIndex:level:visualizationModel:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for HKCodableSummarySleepScoreValue.Model();
  v9 = *(v8 + 20);
  v10 = sub_1D15A2928();
  (*(*(v10 - 8) + 56))(a4 + v9, 1, 1, v10);
  v11 = *(v8 + 24);
  v12 = sub_1D15A2988();
  (*(*(v12 - 8) + 56))(a4 + v11, 1, 1, v12);
  v13 = sub_1D15A3E38();
  (*(*(v13 - 8) + 32))(a4, a1, v13);
  sub_1D1540908(a2, a4 + v9, &qword_1EE059488, MEMORY[0x1E69D36A0]);
  return sub_1D1540908(a3, a4 + v11, &qword_1EE059480, MEMORY[0x1E69D3708]);
}

id HKCodableSummarySleepScoreValue.init(model:)(uint64_t a1)
{
  sub_1D1455C20(0, &qword_1EE059480, MEMORY[0x1E69D3708]);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v20 - v3;
  v5 = sub_1D15A2988();
  v20 = *(v5 - 8);
  v21 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D1455C20(0, &qword_1EE059488, MEMORY[0x1E69D36A0]);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v20 - v9;
  v11 = sub_1D15A2928();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  if (result)
  {
    v16 = result;
    [v16 setMorningIndex_];

    v17 = type metadata accessor for HKCodableSummarySleepScoreValue.Model();
    sub_1D1540D88(a1 + *(v17 + 20), v10, &qword_1EE059488, MEMORY[0x1E69D36A0], sub_1D1455C20);
    if ((*(v12 + 48))(v10, 1, v11) == 1)
    {
      sub_1D1541334(v10, &qword_1EE059488, MEMORY[0x1E69D36A0], sub_1D1455C20);
    }

    else
    {
      (*(v12 + 32))(v14, v10, v11);
      [v16 setLevel_];
      (*(v12 + 8))(v14, v11);
    }

    sub_1D1540D88(a1 + *(v17 + 24), v4, &qword_1EE059480, MEMORY[0x1E69D3708], sub_1D1455C20);
    v19 = v20;
    v18 = v21;
    if ((*(v20 + 48))(v4, 1, v21) == 1)
    {
      sub_1D1540DF8(a1, type metadata accessor for HKCodableSummarySleepScoreValue.Model);
      sub_1D1541334(v4, &qword_1EE059480, MEMORY[0x1E69D3708], sub_1D1455C20);
    }

    else
    {
      (*(v19 + 32))(v7, v4, v18);
      sub_1D15A2968();
      [v16 setDurationFillFraction_];
      sub_1D15A2948();
      [v16 setBedtimeFillFraction_];
      sub_1D15A2978();
      [v16 setInterruptionsFillFraction_];
      [v16 setTotalPoints_];
      sub_1D1540DF8(a1, type metadata accessor for HKCodableSummarySleepScoreValue.Model);
      (*(v19 + 8))(v7, v18);
    }

    return v16;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t HKCodableSummarySleepScoreValue.model.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  sub_1D1455C20(0, &qword_1EE059480, MEMORY[0x1E69D3708]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v29 - v8;
  sub_1D1455C20(0, &qword_1EE059488, MEMORY[0x1E69D36A0]);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v14 = MEMORY[0x1EEE9AC00](v13).n128_u64[0];
  v16 = &v29 - v15;
  if ([v2 hasMorningIndex])
  {
    if ([v2 hasLevel])
    {
      [v2 level];
      sub_1D15A2908();
    }

    else
    {
      v20 = sub_1D15A2928();
      (*(*(v20 - 8) + 56))(v12, 1, 1, v20);
    }

    sub_1D1540974(v12, v16, &qword_1EE059488, MEMORY[0x1E69D36A0], sub_1D1455C20);
    if ([v2 hasDurationFillFraction] && objc_msgSend(v2, sel_hasBedtimeFillFraction) && objc_msgSend(v2, sel_hasInterruptionsFillFraction) && objc_msgSend(v2, sel_hasTotalPoints))
    {
      [v2 durationFillFraction];
      [v2 bedtimeFillFraction];
      [v2 interruptionsFillFraction];
      [v2 totalPoints];
      sub_1D15A2958();
      v21 = 0;
    }

    else
    {
      v21 = 1;
    }

    v22 = sub_1D15A2988();
    v23 = *(*(v22 - 8) + 56);
    v23(v9, v21, 1, v22);
    [v2 morningIndex];
    sub_1D15A3DF8();
    v24 = MEMORY[0x1E69D3708];
    sub_1D1540974(v9, v6, &qword_1EE059480, MEMORY[0x1E69D3708], sub_1D1455C20);
    v25 = type metadata accessor for HKCodableSummarySleepScoreValue.Model();
    v26 = *(v25 + 20);
    v27 = sub_1D15A2928();
    (*(*(v27 - 8) + 56))(a1 + v26, 1, 1, v27);
    v28 = *(v25 + 24);
    v23((a1 + v28), 1, 1, v22);
    sub_1D1540908(v16, a1 + v26, &qword_1EE059488, MEMORY[0x1E69D36A0]);
    sub_1D1540908(v6, a1 + v28, &qword_1EE059480, v24);
    return (*(*(v25 - 8) + 56))(a1, 0, 1, v25);
  }

  else
  {
    v17 = type metadata accessor for HKCodableSummarySleepScoreValue.Model();
    v18 = *(*(v17 - 8) + 56);

    return v18(a1, 1, 1, v17);
  }
}

id HKCodableSummaryAFibBurdenValue.codableAFibBurdenValue.getter()
{
  if ([v0 hasBurdenValue])
  {
    return [v0 burdenValue];
  }

  else
  {
    return 0;
  }
}

id sub_1D1536378(SEL *a1, SEL *a2)
{
  if (![v2 *a1])
  {
    return 0;
  }

  result = [v2 *a2];
  if (result)
  {
    v5 = result;
    v6 = sub_1D15A44F8();

    return v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id HKCodableSummaryAudioExposureValue.init(leqQuantity:secondsListened:daysAggregated:lastUpdatedDate:)(void *a1, uint64_t a2, uint64_t a3, double a4)
{
  result = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  if (result)
  {
    v9 = result;
    sub_1D1453BA0(0, &qword_1EE056720);
    v10 = v9;
    v11 = a1;
    v12 = sub_1D15A43F8();
    [v10 setLeqQuantity_];

    [v10 setSecondsListened_];
    [v10 setDaysAggregated_];
    v13 = sub_1D15A2618();
    v14 = MEMORY[0x1D388B370]();

    [v10 setLastUpdatedDateData_];
    v15 = sub_1D15A26A8();
    (*(*(v15 - 8) + 8))(a3, v15);
    return v10;
  }

  else
  {
    __break(1u);
  }

  return result;
}

char *HKCodableSummaryAudiogramValue.init(audiogram:)(void *a1)
{
  v2 = sub_1D15A26A8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  if (!result)
  {
    goto LABEL_25;
  }

  v7 = result;
  v8 = [a1 averageLeftEarSensitivity];
  if (v8)
  {
    v9 = v8;
    sub_1D1453BA0(0, &qword_1EE056720);
    v10 = v9;
    v11 = sub_1D15A43F8();
    [v7 setAverageLeftEarSensitivity_];
  }

  v12 = [a1 averageRightEarSensitivity];
  if (v12)
  {
    v13 = v12;
    sub_1D1453BA0(0, &qword_1EE056720);
    v14 = v13;
    v15 = sub_1D15A43F8();
    [v7 setAverageRightEarSensitivity_];
  }

  v16 = [a1 minimumSensitivity];
  if (v16)
  {
    v17 = v16;
    sub_1D1453BA0(0, &qword_1EE056720);
    v18 = v17;
    v19 = sub_1D15A43F8();
    [v7 setMinimumSensitivity_];
  }

  v20 = [a1 maximumSensitivity];
  if (v20)
  {
    v21 = v20;
    sub_1D1453BA0(0, &qword_1EE056720);
    v22 = v21;
    v23 = sub_1D15A43F8();
    [v7 setMaximumSensitivity_];
  }

  v24 = [a1 endDate];
  sub_1D15A2668();

  v25 = sub_1D15A2618();
  (*(v3 + 8))(v5, v2);
  v26 = MEMORY[0x1D388B370](v25);

  [v7 setTimestampData_];
  v27 = [a1 sensitivityPoints];
  sub_1D1453BA0(0, &qword_1EE056690);
  v28 = sub_1D15A40C8();

  if (v28 >> 62)
  {
    v29 = sub_1D15A4708();
    if (v29)
    {
      goto LABEL_12;
    }

LABEL_22:

LABEL_23:
    v38 = objc_allocWithZone(MEMORY[0x1E695DF70]);
    v39 = sub_1D15A40A8();

    v40 = [v38 initWithArray_];

    [v7 setSensitivityPoints_];
    return v7;
  }

  v29 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v29)
  {
    goto LABEL_22;
  }

LABEL_12:
  v44 = MEMORY[0x1E69E7CC0];
  result = sub_1D14A7974(0, v29 & ~(v29 >> 63), 0);
  if ((v29 & 0x8000000000000000) == 0)
  {
    v41 = a1;
    v30 = v44;
    v31 = sub_1D1453BA0(0, &qword_1EE056568);
    v32 = 0;
    do
    {
      if ((v28 & 0xC000000000000001) != 0)
      {
        v33 = MEMORY[0x1D388AB50](v32, v28);
      }

      else
      {
        v33 = *(v28 + 8 * v32 + 32);
      }

      v34 = v33;
      v35 = HKCodableAudiogramSensitivityPoint.init(sensitivityPoint:)(v34);
      v43 = v31;

      *&v42 = v35;
      v44 = v30;
      v37 = *(v30 + 16);
      v36 = *(v30 + 24);
      if (v37 >= v36 >> 1)
      {
        sub_1D14A7974((v36 > 1), v37 + 1, 1);
        v30 = v44;
      }

      ++v32;
      *(v30 + 16) = v37 + 1;
      sub_1D1458AC4(&v42, (v30 + 32 * v37 + 32));
    }

    while (v29 != v32);

    a1 = v41;
    goto LABEL_23;
  }

  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

id HKCodableAudiogramSensitivityPoint.init(sensitivityPoint:)(void *a1)
{
  result = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  if (!result)
  {
    goto LABEL_15;
  }

  v3 = result;
  sub_1D1453BA0(0, &qword_1EE056720);
  v4 = v3;
  v5 = [a1 frequency];
  v6 = sub_1D15A43F8();
  [v4 setFrequency_];

  v7 = [a1 tests];
  sub_1D1453BA0(0, &qword_1EE0566D8);
  v8 = sub_1D15A40C8();

  if (v8 >> 62)
  {
    v9 = sub_1D15A4708();
    if (v9)
    {
      goto LABEL_4;
    }

LABEL_12:

    v12 = MEMORY[0x1E69E7CC0];
LABEL_13:
    sub_1D14BE930(v12);

    v13 = objc_allocWithZone(MEMORY[0x1E695DF70]);
    v14 = sub_1D15A40A8();

    v15 = [v13 initWithArray_];

    [v4 setTests_];
    return v4;
  }

  v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v9)
  {
    goto LABEL_12;
  }

LABEL_4:
  v16 = MEMORY[0x1E69E7CC0];
  result = sub_1D15A4878();
  if ((v9 & 0x8000000000000000) == 0)
  {
    sub_1D1453BA0(0, &qword_1EE056570);
    v10 = 0;
    do
    {
      if ((v8 & 0xC000000000000001) != 0)
      {
        v11 = MEMORY[0x1D388AB50](v10, v8);
      }

      else
      {
        v11 = *(v8 + 8 * v10 + 32);
      }

      ++v10;
      HKCodableAudiogramSensitivityTest.init(test:)(v11);
      sub_1D15A4858();
      sub_1D15A4888();
      sub_1D15A4898();
      sub_1D15A4868();
    }

    while (v9 != v10);

    v12 = v16;
    goto LABEL_13;
  }

  __break(1u);
LABEL_15:
  __break(1u);
  return result;
}

id HKCodableAudiogramSensitivityTest.init(test:)(void *a1)
{
  result = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  if (result)
  {
    v3 = result;
    sub_1D1453BA0(0, &qword_1EE056720);
    v4 = v3;
    v5 = [a1 sensitivity];
    v6 = sub_1D15A43F8();
    [v4 setSensitivity_];

    [v4 setMasked_];
    [v4 setSide_];
    [v4 setType_];

    v7 = [a1 clampingRange];
    if (v7)
    {
      v8 = v7;
      sub_1D1453BA0(0, &qword_1EC630F18);
      v9 = v8;
      v10 = HKCodableAudiogramSensitivityPointClampingRange.init(clampingRange:)(v9);
      [v4 setClampingRange_];
    }

    return v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id HKCodableAudiogramSensitivityPointClampingRange.init(clampingRange:)(void *a1)
{
  result = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  if (result)
  {
    v3 = result;
    v4 = [a1 upperBound];
    if (v4)
    {
      v5 = v4;
      sub_1D1453BA0(0, &qword_1EE056720);
      v6 = v5;
      v7 = sub_1D15A43F8();
      [v3 setUpperBound_];
    }

    v8 = [a1 lowerBound];
    if (v8)
    {
      v9 = v8;
      sub_1D1453BA0(0, &qword_1EE056720);
      v10 = v9;
      v11 = sub_1D15A43F8();
      [v3 setLowerBound_];
    }

    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t HKCodableSummaryBalanceMetricsValue.init(summary:)(uint64_t a1)
{
  sub_1D15409E4();
  v62 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v61 = &v54 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v60 = &v54 - v5;
  sub_1D1540A4C(0, &qword_1EE0567C0, MEMORY[0x1E69E66A8]);
  v67 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v64 = &v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v54 - v9;
  sub_1D1540A4C(0, &qword_1EE0568A8, MEMORY[0x1E69E5F90]);
  v58 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v59 = &v54 - v12;
  v13 = sub_1D15A3E38();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v66 = &v54 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v65 = &v54 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v68 = &v54 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v54 - v21;
  result = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  if (result)
  {
    v24 = result;
    v25 = sub_1D15A2A18();
    MEMORY[0x1EEE9AC00](v25);
    *(&v54 - 2) = a1;
    v26 = a1;
    v27 = sub_1D152CA5C(sub_1D1540AE8, (&v54 - 4), v25);

    sub_1D14BE944(v27);

    v28 = objc_allocWithZone(MEMORY[0x1E695DF70]);
    v29 = sub_1D15A40A8();

    v30 = [v28 initWithArray_];

    [v24 setBaselineComparisons_];
    v31 = v26;
    sub_1D15A2AB8();
    v32 = sub_1D15A3E28();
    v33 = *(v14 + 8);
    v63 = v22;
    v33(v22, v13);
    v55 = v24;
    [v24 setMorningIndex_];
    v54 = sub_1D1453BA0(0, &qword_1EE0566F0);
    v34 = v31;
    sub_1D15A2AD8();
    v56 = v14;
    v35 = *(v14 + 16);
    v35(v22, v10, v13);
    v36 = MEMORY[0x1E69E66A8];
    sub_1D1541334(v10, &qword_1EE0567C0, MEMORY[0x1E69E66A8], sub_1D1540A4C);
    v37 = v64;
    v57 = v34;
    sub_1D15A2AD8();
    v38 = v65;
    v35(v65, &v37[*(v67 + 36)], v13);
    v39 = v37;
    v40 = v33;
    sub_1D1541334(v39, &qword_1EE0567C0, v36, sub_1D1540A4C);
    v41 = v66;
    sub_1D15A3DF8();
    v42 = v68;
    sub_1D15A3E08();
    v40(v41, v13);
    v40(v38, v13);
    sub_1D1540874(&qword_1EE0568D0, MEMORY[0x1E696B418]);
    v43 = v63;
    result = sub_1D15A3EC8();
    if (result)
    {
      v44 = *(v56 + 32);
      v45 = v60;
      v44(v60, v43, v13);
      v46 = v62;
      v44((v45 + *(v62 + 48)), v42, v13);
      v47 = v61;
      sub_1D1541264(v45, v61, sub_1D15409E4);
      v48 = *(v46 + 48);
      v49 = v59;
      v44(v59, v47, v13);
      v40((v47 + v48), v13);
      sub_1D15412CC(v45, v47, sub_1D15409E4);
      v44(&v49[*(v58 + 36)], (v47 + *(v46 + 48)), v13);
      v40(v47, v13);
      v50 = MEMORY[0x1D388A6F0](v49);
      v51 = MEMORY[0x1D388A870](v50);
      v52 = v55;
      [v55 setBaselineRange_];

      v53 = sub_1D15A2AF8();
      (*(*(v53 - 8) + 8))(v57, v53);
      return v52;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1D153769C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v17 = a2;
  v3 = sub_1D15A2A48();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D15A2B48();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v16 - v12;
  sub_1D15A2AE8();
  sub_1D1453BA0(0, &qword_1EE056510);
  (*(v4 + 16))(v6, a1, v3);
  (*(v8 + 16))(v10, v13, v7);
  v14 = HKCodableSleepingSampleBaselineComparison.init(dataType:comparison:)(v6, v10);
  result = (*(v8 + 8))(v13, v7);
  *v17 = v14;
  return result;
}

id HKCodableSleepingSampleBaselineComparison.init(dataType:comparison:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D15A2B98();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v28 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D1455C20(0, &qword_1EE059478, MEMORY[0x1E69A2E38]);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v27 - v7;
  v9 = sub_1D15A2A08();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v27 - v14;
  v16 = sub_1D15A2AA8();
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v27 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  if (result)
  {
    v20 = result;
    v27 = a1;
    [v20 setDataType_];
    sub_1D1453BA0(0, &qword_1EE056580);
    sub_1D15A2B38();
    v21 = HKCodableSleepingSampleAggregate.init(aggregate:)(v18);
    [v20 setAggregate_];

    sub_1D15A2B18();
    if ((*(v10 + 48))(v8, 1, v9) == 1)
    {
      sub_1D1541334(v8, &qword_1EE059478, MEMORY[0x1E69A2E38], sub_1D1455C20);
    }

    else
    {
      (*(v10 + 32))(v15, v8, v9);
      sub_1D1453BA0(0, &qword_1EE056630);
      (*(v10 + 16))(v12, v15, v9);
      v22 = HKCodableSleepingSampleBaseline.init(baseline:)(v12);
      [v20 setBaseline_];

      (*(v10 + 8))(v15, v9);
    }

    sub_1D1453BA0(0, &qword_1EE056500);
    v23 = v28;
    sub_1D15A2B08();
    v24 = HKCodableSleepingSampleBaselineAvailability.init(availability:)(v23);
    [v20 setAvailability_];

    v25 = sub_1D15A2B48();
    (*(*(v25 - 8) + 8))(a2, v25);
    v26 = sub_1D15A2A48();
    (*(*(v26 - 8) + 8))(v27, v26);
    return v20;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t HKCodableSummaryBalanceMetricsValue.decodedSummary(_:)@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v160 = a1;
  sub_1D1455C20(0, &qword_1EE05B7F8, MEMORY[0x1E6969530]);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v145 = &v129 - v6;
  v7 = sub_1D15A3E38();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v144 = &v129 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1D15A2A48();
  v158 = *(v9 - 8);
  v159 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v147 = &v129 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v150 = &v129 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v152 = &v129 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v154 = &v129 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v129 - v18;
  v20 = sub_1D15A2B48();
  v21 = *(v20 - 8);
  v155 = v20;
  v156 = v21;
  MEMORY[0x1EEE9AC00](v20);
  v140 = &v129 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v139 = &v129 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v138 = &v129 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v137 = &v129 - v28;
  MEMORY[0x1EEE9AC00](v29);
  v143 = &v129 - v30;
  MEMORY[0x1EEE9AC00](v31);
  v136 = &v129 - v32;
  MEMORY[0x1EEE9AC00](v33);
  v142 = &v129 - v34;
  MEMORY[0x1EEE9AC00](v35);
  v146 = &v129 - v36;
  MEMORY[0x1EEE9AC00](v37);
  v148 = &v129 - v38;
  MEMORY[0x1EEE9AC00](v39);
  v149 = &v129 - v40;
  MEMORY[0x1EEE9AC00](v41);
  v151 = &v129 - v42;
  MEMORY[0x1EEE9AC00](v43);
  v45 = &v129 - v44;
  MEMORY[0x1EEE9AC00](v46);
  v153 = &v129 - v47;
  MEMORY[0x1EEE9AC00](v48);
  v50 = &v129 - v49;
  MEMORY[0x1EEE9AC00](v51);
  v157 = &v129 - v52;
  v53 = MEMORY[0x1E69E66A8];
  sub_1D1540B08(0, &qword_1EE0567B8, &qword_1EE0567C0, MEMORY[0x1E69E66A8], sub_1D1540A4C);
  MEMORY[0x1EEE9AC00](v54 - 8);
  v56 = &v129 - v55;
  sub_1D1540A4C(0, &qword_1EE0567C0, v53);
  v58 = v57;
  v59 = *(v57 - 8);
  MEMORY[0x1EEE9AC00](v57);
  v141 = &v129 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v62 = MEMORY[0x1EEE9AC00](v61).n128_u64[0];
  v64 = &v129 - v63;
  v161 = v3;
  v65 = [v3 baselineComparisons];
  if (v65)
  {
    v66 = v65;
    v162 = 0;
    sub_1D1453BA0(0, &qword_1EE056510);
    sub_1D15A40B8();

    v68 = v162;
    if (v162)
    {
      v134 = v64;
      v135 = a2;
      MEMORY[0x1EEE9AC00](v67);
      *(&v129 - 2) = v160;
      if (sub_1D152AB8C(sub_1D1540B64, (&v129 - 4), v68)[2])
      {
        sub_1D14829D8();
        v69 = sub_1D15A4968();
      }

      else
      {
        v69 = MEMORY[0x1E69E7CC8];
      }

      v162 = v69;

      sub_1D153EBBC(v73, 1, &v162);
      v160 = v162;
      v74 = [v161 baselineRange];
      if (!v74)
      {
        __break(1u);
        result = swift_unexpectedError();
        __break(1u);
        return result;
      }

      v75 = v74;

      sub_1D15A44F8();
      v77 = v76;

      if (v77)
      {

        (*(v59 + 56))(v56, 1, 1, v58);
        v78 = v135;
      }

      else
      {
        sub_1D15A4378();
        v79 = (*(v59 + 48))(v56, 1, v58);
        v78 = v135;
        if (v79 != 1)
        {
          v81 = v134;
          sub_1D1540974(v56, v134, &qword_1EE0567C0, MEMORY[0x1E69E66A8], sub_1D1540A4C);
          v83 = v158;
          v82 = v159;
          v84 = *(v158 + 104);
          (v84)(v19, *MEMORY[0x1E69A2E60], v159);
          v85 = v160;
          if (*(v160 + 16) && (v86 = sub_1D1480160(v19), v78 = v135, (v87 & 1) != 0))
          {
            v88 = *(v85 + 56);
            v89 = v85;
            v90 = v156;
            v130 = v156[9];
            v91 = v156[2];
            v92 = v155;
            v133 = v156 + 2;
            v132 = v91;
            v91(v50, v88 + v130 * v86, v155);
            v93 = v83 + 8;
            v94 = *(v83 + 8);
            v158 = v93;
            v94(v19, v159);
            v95 = v50;
            v96 = v92;
            v97 = v159;
            v131 = v90[4];
            v131(v157, v95, v96);
            v98 = v154;
            (v84)(v154, *MEMORY[0x1E69A2E48], v97);
            if (*(v89 + 16) && (v99 = sub_1D1480160(v98), v78 = v135, (v100 & 1) != 0))
            {
              v132(v45, *(v89 + 56) + v99 * v130, v96);
              v94(v98, v97);
              v131(v153, v45, v96);
              v101 = v152;
              (v84)(v152, *MEMORY[0x1E69A2E50], v97);
              v102 = v134;
              if (*(v89 + 16) && (v103 = sub_1D1480160(v101), v78 = v135, (v104 & 1) != 0))
              {
                v105 = v149;
                v132(v149, *(v89 + 56) + v103 * v130, v96);
                v94(v101, v159);
                v106 = v105;
                v107 = v160;
                v131(v151, v106, v96);
                v108 = v150;
                v84();
                if (*(v107 + 16))
                {
                  v109 = sub_1D1480160(v108);
                  v78 = v135;
                  if (v110)
                  {
                    v111 = v146;
                    v132(v146, *(v107 + 56) + v109 * v130, v96);
                    v112 = v108;
                    v113 = v159;
                    v94(v112, v159);
                    v131(v148, v111, v96);
                    v114 = v147;
                    (v84)(v147, *MEMORY[0x1E69A2E40], v113);
                    if (*(v107 + 16))
                    {
                      v115 = sub_1D1480160(v114);
                      v114 = v147;
                      if (v116)
                      {
                        v117 = v136;
                        v118 = v132;
                        v132(v136, *(v107 + 56) + v115 * v130, v96);
                        v94(v114, v159);

                        v131(v142, v117, v96);
                        [v161 morningIndex];
                        sub_1D15A3DF8();
                        v161 = MEMORY[0x1E69E66A8];
                        sub_1D1540D88(v102, v141, &qword_1EE0567C0, MEMORY[0x1E69E66A8], sub_1D1540A4C);
                        v119 = sub_1D15A26A8();
                        (*(*(v119 - 8) + 56))(v145, 1, 1, v119);
                        v118(v143, v157, v96);
                        v118(v137, v153, v96);
                        v118(v138, v151, v96);
                        v120 = v148;
                        v118(v139, v148, v96);
                        v121 = v142;
                        v118(v140, v142, v96);
                        v122 = v102;
                        v123 = v96;
                        v124 = v135;
                        sub_1D15A2AC8();
                        v125 = v156[1];
                        v125(v121, v123);
                        v125(v120, v123);
                        v125(v151, v123);
                        v125(v153, v123);
                        v125(v157, v123);
                        sub_1D1541334(v122, &qword_1EE0567C0, v161, sub_1D1540A4C);
                        v126 = sub_1D15A2AF8();
                        return (*(*(v126 - 8) + 56))(v124, 0, 1, v126);
                      }
                    }

                    v94(v114, v159);
                    v128 = v156[1];
                    v128(v148, v96);
                    v128(v151, v96);
                    v128(v153, v96);
                    v128(v157, v96);
                    sub_1D1541334(v102, &qword_1EE0567C0, MEMORY[0x1E69E66A8], sub_1D1540A4C);
                    v78 = v135;
                    goto LABEL_15;
                  }
                }

                v94(v108, v159);
                v127 = v156[1];
                v127(v151, v96);
                v127(v153, v96);
              }

              else
              {

                v94(v101, v159);
                v127 = v156[1];
                v127(v153, v96);
              }

              v127(v157, v96);
              sub_1D1541334(v102, &qword_1EE0567C0, MEMORY[0x1E69E66A8], sub_1D1540A4C);
            }

            else
            {

              v94(v98, v97);
              (v156[1])(v157, v96);
              sub_1D1541334(v134, &qword_1EE0567C0, MEMORY[0x1E69E66A8], sub_1D1540A4C);
            }
          }

          else
          {

            (*(v83 + 8))(v19, v82);
            sub_1D1541334(v81, &qword_1EE0567C0, MEMORY[0x1E69E66A8], sub_1D1540A4C);
          }

LABEL_15:
          v80 = sub_1D15A2AF8();
          return (*(*(v80 - 8) + 56))(v78, 1, 1, v80);
        }
      }

      sub_1D1540B80(v56, &qword_1EE0567B8, &qword_1EE0567C0, MEMORY[0x1E69E66A8], sub_1D1540A4C);
      goto LABEL_15;
    }
  }

  v70 = sub_1D15A2AF8();
  v71 = *(*(v70 - 8) + 56);

  return v71(a2, 1, 1, v70);
}

uint64_t sub_1D1538DF4@<X0>(void **a1@<X0>, void *a2@<X1>, char *a3@<X8>)
{
  v29 = a2;
  v30 = a3;
  sub_1D1455C20(0, &qword_1EE059460, MEMORY[0x1E69A2E68]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v27 - v5;
  v7 = sub_1D15A2A48();
  v28 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D1455C20(0, &qword_1EE059448, MEMORY[0x1E69A2F20]);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v27 - v11;
  v13 = sub_1D15A2B48();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *a1;
  HKCodableSleepingSampleBaselineComparison.decodedBaselineComparison(_:)(v29, v12);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    v18 = &qword_1EE059448;
    v19 = MEMORY[0x1E69A2F20];
    v20 = v12;
LABEL_5:
    sub_1D1541334(v20, v18, v19, sub_1D1455C20);
    sub_1D15411F4();
    return (*(*(v21 - 8) + 56))(v30, 1, 1, v21);
  }

  v29 = *(v14 + 32);
  (v29)(v16, v12, v13);
  [v17 dataType];
  sub_1D15A2A28();
  if ((*(v28 + 48))(v6, 1, v7) == 1)
  {
    (*(v14 + 8))(v16, v13);
    v18 = &qword_1EE059460;
    v19 = MEMORY[0x1E69A2E68];
    v20 = v6;
    goto LABEL_5;
  }

  v23 = *(v28 + 32);
  v23(v9, v6, v7);
  sub_1D15411F4();
  v25 = v24;
  v28 = *(v24 + 48);
  v26 = v30;
  v23(v30, v9, v7);
  (v29)(&v26[v28], v16, v13);
  return (*(*(v25 - 8) + 56))(v26, 0, 1, v25);
}

id HKCodableSleepingSampleBaselineComparison.decodedBaselineComparison(_:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v29 = a1;
  sub_1D1455C20(0, &qword_1EE059478, MEMORY[0x1E69A2E38]);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v28 - v6;
  v8 = sub_1D15A2AA8();
  MEMORY[0x1EEE9AC00](v8 - 8);
  sub_1D1455C20(0, &qword_1EE059440, MEMORY[0x1E69A2F30]);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v28 - v10;
  v12 = sub_1D15A2B98();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v17 = MEMORY[0x1EEE9AC00](v16).n128_u64[0];
  v19 = &v28 - v18;
  v20 = [v2 availability];
  if (!v20)
  {
    (*(v13 + 56))(v11, 1, 1, v12);
    goto LABEL_8;
  }

  v21 = v20;
  HKCodableSleepingSampleBaselineAvailability.decodedAvailability()(v11);

  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
LABEL_8:
    sub_1D1541334(v11, &qword_1EE059440, MEMORY[0x1E69A2F30], sub_1D1455C20);
    v25 = 1;
LABEL_11:
    v27 = sub_1D15A2B48();
    return (*(*(v27 - 8) + 56))(a2, v25, 1, v27);
  }

  (*(v13 + 32))(v19, v11, v12);
  result = [v3 aggregate];
  if (result)
  {
    v23 = result;
    HKCodableSleepingSampleAggregate.decodedAggregate(_:)(v29);

    (*(v13 + 16))(v15, v19, v12);
    if (![v3 hasBaseline])
    {
      v26 = sub_1D15A2A08();
      (*(*(v26 - 8) + 56))(v7, 1, 1, v26);
      goto LABEL_10;
    }

    result = [v3 baseline];
    if (result)
    {
      v24 = result;
      HKCodableSleepingSampleBaseline.decodedBaseline()();

LABEL_10:
      sub_1D15A2B28();
      (*(v13 + 8))(v19, v12);
      v25 = 0;
      goto LABEL_11;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

id HKCodableSleepingSampleBaselineAvailability.init(availability:)(uint64_t a1)
{
  v2 = MEMORY[0x1E69E66A8];
  sub_1D1540A4C(0, &qword_1EE0567C0, MEMORY[0x1E69E66A8]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v23 - v9;
  sub_1D1540B08(0, &qword_1EE0567B8, &qword_1EE0567C0, v2, sub_1D1540A4C);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v23 - v15;
  result = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  if (result)
  {
    v18 = result;
    sub_1D15A2B68();
    sub_1D1540BDC(v16, v13, &qword_1EE0567B8, &qword_1EE0567C0, MEMORY[0x1E69E66A8], sub_1D1540A4C);
    if ((*(v5 + 48))(v13, 1, v4) == 1)
    {
      v19 = 0;
    }

    else
    {
      v20 = MEMORY[0x1E69E66A8];
      sub_1D1540974(v13, v10, &qword_1EE0567C0, MEMORY[0x1E69E66A8], sub_1D1540A4C);
      sub_1D1453BA0(0, &qword_1EE0566F0);
      sub_1D1540D88(v10, v7, &qword_1EE0567C0, v20, sub_1D1540A4C);
      v21 = sub_1D15A4398();
      v19 = MEMORY[0x1D388A870](v21);
      sub_1D1541334(v10, &qword_1EE0567C0, v20, sub_1D1540A4C);
    }

    sub_1D1540B80(v16, &qword_1EE0567B8, &qword_1EE0567C0, MEMORY[0x1E69E66A8], sub_1D1540A4C);
    [v18 setAnalyzedRange_];

    [v18 setCount_];
    [v18 setRequiredCount_];

    v22 = sub_1D15A2B98();
    (*(*(v22 - 8) + 8))(a1, v22);
    return v18;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id HKCodableSleepingSampleBaselineAvailability.decodedAvailability()@<X0>(uint64_t a1@<X8>)
{
  sub_1D1540B08(0, &qword_1EE0567B8, &qword_1EE0567C0, MEMORY[0x1E69E66A8], sub_1D1540A4C);
  *&v4 = MEMORY[0x1EEE9AC00](v3 - 8).n128_u64[0];
  v6 = &v14 - v5;
  if ([v1 hasCount] && objc_msgSend(v1, sel_hasRequiredCount))
  {
    if (![v1 hasAnalyzedRange])
    {
      goto LABEL_6;
    }

    result = [v1 analyzedRange];
    if (result)
    {
      v8 = result;
      sub_1D15A44F8();
      v10 = v9;

      if ((v10 & 1) == 0)
      {
        sub_1D15A4378();
        goto LABEL_11;
      }

LABEL_6:
      sub_1D1540A4C(0, &qword_1EE0567C0, MEMORY[0x1E69E66A8]);
      (*(*(v11 - 8) + 56))(v6, 1, 1, v11);
LABEL_11:
      [v1 count];
      [v1 requiredCount];
      return sub_1D15A2B58();
    }

    __break(1u);
  }

  else
  {
    v12 = sub_1D15A2B98();
    v13 = *(*(v12 - 8) + 56);

    return v13(a1, 1, 1, v12);
  }

  return result;
}

id HKCodableSleepingSampleAggregate.init(aggregate:)(uint64_t a1)
{
  sub_1D1455C20(0, &qword_1EE05B520, MEMORY[0x1E6968130]);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v29 - v3;
  v30 = sub_1D15A26A8();
  v5 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v29 - v9;
  v11 = sub_1D15A3E38();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  if (result)
  {
    v16 = result;
    sub_1D15A2A68();
    v17 = sub_1D15A3E28();
    (*(v12 + 8))(v14, v11);
    [v16 setMorningIndex_];

    v18 = sub_1D15A2A98();
    if (v18)
    {
      v19 = v18;
      sub_1D1453BA0(0, &qword_1EE056720);
      v20 = v19;
      v21 = sub_1D15A43F8();
      [v16 setQuantity_];
    }

    sub_1D15A2A88();
    v22 = sub_1D15A22A8();
    v23 = *(v22 - 8);
    if ((*(v23 + 48))(v4, 1, v22) == 1)
    {
      sub_1D1541334(v4, &qword_1EE05B520, MEMORY[0x1E6968130], sub_1D1455C20);
      v24 = sub_1D15A2AA8();
      (*(*(v24 - 8) + 8))(a1, v24);
    }

    else
    {
      sub_1D15A2258();
      (*(v23 + 8))(v4, v22);
      v25 = v30;
      (*(v5 + 32))(v10, v7, v30);
      v26 = sub_1D15A2618();
      v27 = MEMORY[0x1D388B370]();

      [v16 setLatestSampleEndDate_];
      v28 = sub_1D15A2AA8();
      (*(*(v28 - 8) + 8))(a1, v28);
      (*(v5 + 8))(v10, v25);
    }

    return v16;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id HKCodableSleepingSampleBaseline.init(baseline:)(uint64_t a1)
{
  result = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  if (result)
  {
    v3 = result;
    sub_1D1453BA0(0, &qword_1EE056720);
    v4 = v3;
    sub_1D15A29F8();
    v5 = sub_1D15A43F8();
    [v4 setMiddle_];

    v6 = sub_1D15A29D8();
    v7 = [v6 minimum];

    v8 = sub_1D15A43F8();
    [v4 setMedialRangeMinimum_];

    v9 = sub_1D15A29D8();
    v10 = [v9 maximum];

    v11 = sub_1D15A43F8();
    [v4 setMedialRangeMaximum_];

    v12 = sub_1D15A2A08();
    (*(*(v12 - 8) + 8))(a1, v12);
    return v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id HKCodableSleepingSampleAggregate.decodedAggregate(_:)(void *a1)
{
  v2 = v1;
  v36 = a1;
  v3 = sub_1D15A2A58();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D1455C20(0, &qword_1EE05B7F8, MEMORY[0x1E6969530]);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v35 = v32 - v8;
  v9 = sub_1D15A26A8();
  v33 = *(v9 - 8);
  v34 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v32[2] = v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v32[1] = v32 - v12;
  sub_1D1455C20(0, &qword_1EE05B520, MEMORY[0x1E6968130]);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = v32 - v14;
  v16 = sub_1D15A2848();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = v32 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1D15A3E38();
  [v2 morningIndex];
  sub_1D15A3DF8();
  v21 = *(v17 + 16);
  v32[3] = v19;
  v21(v19, v36, v16);
  v22 = &selRef_bundleForClass_;
  v23 = 0;
  if ([v2 hasQuantity])
  {
    result = [v2 quantity];
    if (!result)
    {
      __break(1u);
      return result;
    }

    v25 = result;
    v23 = [objc_opt_self() createWithCodableQuantity_];
  }

  v36 = v23;
  if ([v2 hasLatestSampleEndDate])
  {
    [v2 latestSampleEndDate];
    v26 = HKDecodeDateForValue();
    sub_1D15A2668();

    [v2 latestSampleEndDate];
    v27 = HKDecodeDateForValue();
    sub_1D15A2668();

    v22 = &selRef_bundleForClass_;
    sub_1D15A2268();
    v28 = 0;
  }

  else
  {
    v28 = 1;
  }

  v29 = sub_1D15A22A8();
  (*(*(v29 - 8) + 56))(v15, v28, 1, v29);
  (*(v33 + 56))(v35, 1, 1, v34);
  v30 = [v2 v22[480]];
  v31 = MEMORY[0x1E69A2EA0];
  if (!v30)
  {
    v31 = MEMORY[0x1E69A2E98];
  }

  (*(v4 + 104))(v6, *v31, v3);
  return sub_1D15A2A78();
}

uint64_t HKCodableSleepingSampleBaseline.decodedBaseline()()
{
  v1 = v0;
  v2 = [v0 middle];
  if (!v2)
  {
    __break(1u);
    goto LABEL_8;
  }

  v6 = v2;
  v7 = objc_opt_self();
  v8 = [v7 createWithCodableQuantity_];

  v2 = [v1 medialRangeMinimum];
  if (!v2)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v9 = v2;
  v10 = [v7 createWithCodableQuantity_];

  v2 = [v1 medialRangeMaximum];
  if (!v2)
  {
LABEL_9:
    __break(1u);
    return MEMORY[0x1EEE0D110](v2, v3, v4, v5);
  }

  v11 = v2;
  v12 = [v7 createWithCodableQuantity_];

  v13 = [objc_allocWithZone(MEMORY[0x1E696C350]) initWithMinimum:v10 maximum:v12 isMinimumInclusive:1 isMaximumInclusive:1];
  v14 = objc_opt_self();
  v15 = [v14 countUnit];
  v16 = [v7 quantityWithUnit:v15 doubleValue:0.0];

  v17 = [v14 countUnit];
  v18 = HKQuantityRangeInclusive();

  v2 = v8;
  v3 = v13;
  v4 = v16;
  v5 = v18;

  return MEMORY[0x1EEE0D110](v2, v3, v4, v5);
}

uint64_t HKCodableSummaryBloodPressureValue.init(correlation:)(void *a1)
{
  v2 = sub_1D15A26A8();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D1453BA0(0, &qword_1EE05B458);
  v5 = MEMORY[0x1D388A6C0](*MEMORY[0x1E696BC90]);
  v6 = MEMORY[0x1D388A6C0](*MEMORY[0x1E696BC88]);
  v7 = [a1 objectsForType_];
  sub_1D1453BA0(0, &qword_1EE05B568);
  sub_1D1505A88(&qword_1EE0564C8, &qword_1EE05B568);
  v8 = sub_1D15A41E8();

  v9 = sub_1D152B02C(v8);

  if (v9)
  {
    objc_opt_self();
    v10 = swift_dynamicCastObjCClass();
    if (v10)
    {
      v11 = v10;
      v12 = [a1 objectsForType_];
      v13 = sub_1D15A41E8();

      v14 = sub_1D152B02C(v13);

      if (v14)
      {
        objc_opt_self();
        v15 = swift_dynamicCastObjCClass();
        if (v15)
        {
          v16 = v15;
          v17 = [v11 quantity];
          v18 = [v16 quantity];
          v19 = [a1 endDate];
          sub_1D15A2668();

          v20 = sub_1D1540C50(v17, v18, v4);
          return v20;
        }
      }
    }

    else
    {
    }
  }

  result = sub_1D15A4908();
  __break(1u);
  return result;
}

id HKCodableSummaryBloodPressureValue.init(systolicValue:diastolicValue:timestamp:)(void *a1, void *a2, uint64_t a3)
{
  v5 = sub_1D1540C50(a1, a2, a3);

  return v5;
}

id HKCodableSummaryElectrocardiogramValue.init(algorithmVersion:classification:timestamp:averageHeartRate:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  result = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  if (!result)
  {
    goto LABEL_8;
  }

  v9 = result;
  result = [v9 setAlgorithmVersionRawValue_];
  if (a2 < 0)
  {
    __break(1u);
LABEL_8:
    __break(1u);
    return result;
  }

  [v9 setClassificationRawValue_];
  v10 = sub_1D15A2618();
  v11 = MEMORY[0x1D388B370]();

  [v9 setTimestampData_];
  if (a4)
  {
    v12 = [a4 codableRepresentation];
  }

  else
  {
    v12 = 0;
  }

  [v9 setAverageHeartRate_];

  v13 = sub_1D15A26A8();
  (*(*(v13 - 8) + 8))(a3, v13);
  return v9;
}

id HKCodableSummaryOngoingFactorsValue.init(categoryValueRawValues:earliestStartDate:latestEndDate:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  if (result)
  {
    v7 = result;
    v8 = *(a1 + 16);
    if (v8)
    {
      v9 = (a1 + 32);
      v10 = result;
      do
      {
        v11 = *v9++;
        [v10 addCategoryValueRawValues_];
        --v8;
      }

      while (v8);
    }

    else
    {
      v12 = result;
    }

    v13 = sub_1D15A2618();
    v14 = MEMORY[0x1D388B370]();

    [v7 setEarliestStartDate_];
    v15 = sub_1D15A2618();
    v16 = MEMORY[0x1D388B370]();

    [v7 setLatestEndDate_];
    v17 = sub_1D15A26A8();
    v18 = *(*(v17 - 8) + 8);
    v18(a3, v17);
    v18(a2, v17);
    return v7;
  }

  else
  {
    __break(1u);
  }

  return result;
}

size_t HKCodableSummaryOngoingFactorsValue.init(ongoingSamples:)(unint64_t a1)
{
  v3 = sub_1D15A3268();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v65 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D1455C20(0, &qword_1EE05B7F8, MEMORY[0x1E6969530]);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v75 = &v65 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v65 - v10;
  v12 = sub_1D15A26A8();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v70 = &v65 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v69 = &v65 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v72 = &v65 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v74 = &v65 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v65 - v22;
  MEMORY[0x1EEE9AC00](v24);
  v76 = &v65 - v25;
  v26 = sub_1D152AA24(a1);

  if (v26)
  {
    v67 = v1;
    v68 = v3;
    if (v26 >> 62)
    {
      v27 = sub_1D15A4708();
    }

    else
    {
      v27 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v28 = MEMORY[0x1E69E7CC0];
    v79 = v12;
    v73 = v4;
    v71 = v6;
    if (v27)
    {
      v80 = MEMORY[0x1E69E7CC0];
      result = sub_1D14A78B4(0, v27 & ~(v27 >> 63), 0);
      if (v27 < 0)
      {
        __break(1u);
        goto LABEL_46;
      }

      v78 = v11;
      v30 = 0;
      v28 = v80;
      do
      {
        if ((v26 & 0xC000000000000001) != 0)
        {
          v31 = MEMORY[0x1D388AB50](v30, v26);
        }

        else
        {
          v31 = *(v26 + 8 * v30 + 32);
        }

        v32 = v31;
        v33 = [v31 startDate];
        sub_1D15A2668();

        v80 = v28;
        v35 = *(v28 + 16);
        v34 = *(v28 + 24);
        if (v35 >= v34 >> 1)
        {
          sub_1D14A78B4(v34 > 1, v35 + 1, 1);
          v28 = v80;
        }

        ++v30;
        *(v28 + 16) = v35 + 1;
        v36 = v28 + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v13 + 72) * v35;
        v12 = v79;
        (*(v13 + 32))(v36, v23, v79);
      }

      while (v27 != v30);
      v4 = v73;
      v6 = v71;
      v11 = v78;
    }

    sub_1D152CED8(v28, v11);

    v37 = *(v13 + 48);
    if (v37(v11, 1, v12) == 1)
    {
LABEL_28:

      sub_1D1541334(v11, &qword_1EE05B7F8, MEMORY[0x1E6969530], sub_1D1455C20);
      v3 = v68;
      goto LABEL_29;
    }

    v77 = *(v13 + 32);
    v78 = (v13 + 32);
    v77(v76, v11, v12);
    v38 = MEMORY[0x1E69E7CC0];
    v66 = v37;
    if (!v27)
    {
      v40 = MEMORY[0x1E69E7CC0];
LABEL_26:
      v11 = v75;
      sub_1D152CBE4(v40, v75);

      if (v66(v11, 1, v12) == 1)
      {
        (*(v13 + 8))(v76, v12);
        v6 = v71;
        goto LABEL_28;
      }

      v77(v74, v11, v12);
      if (!v27)
      {

        v52 = MEMORY[0x1E69E7CC0];
LABEL_43:
        v58 = *(v13 + 16);
        v59 = v69;
        v60 = v76;
        v58(v69, v76, v12);
        v61 = v70;
        v62 = v74;
        v58(v70, v74, v12);
        v63 = HKCodableSummaryOngoingFactorsValue.init(categoryValueRawValues:earliestStartDate:latestEndDate:)(v52, v59, v61);
        v64 = *(v13 + 8);
        v64(v62, v12);
        v64(v60, v12);
        return v63;
      }

      v80 = v38;
      result = sub_1D14A7874(0, v27 & ~(v27 >> 63), 0);
      if ((v27 & 0x8000000000000000) == 0)
      {
        v51 = 0;
        v52 = v80;
        do
        {
          if ((v26 & 0xC000000000000001) != 0)
          {
            v53 = MEMORY[0x1D388AB50](v51, v26);
          }

          else
          {
            v53 = *(v26 + 8 * v51 + 32);
          }

          v54 = v53;
          v55 = [v53 value];

          v80 = v52;
          v57 = *(v52 + 16);
          v56 = *(v52 + 24);
          if (v57 >= v56 >> 1)
          {
            sub_1D14A7874((v56 > 1), v57 + 1, 1);
            v52 = v80;
          }

          ++v51;
          *(v52 + 16) = v57 + 1;
          *(v52 + 8 * v57 + 32) = v55;
        }

        while (v27 != v51);

        v12 = v79;
        goto LABEL_43;
      }

LABEL_47:
      __break(1u);
      return result;
    }

    v65 = v13 + 48;
    v80 = MEMORY[0x1E69E7CC0];
    result = sub_1D14A78B4(0, v27 & ~(v27 >> 63), 0);
    if ((v27 & 0x8000000000000000) == 0)
    {
      v39 = 0;
      v40 = v80;
      v41 = v72;
      do
      {
        if ((v26 & 0xC000000000000001) != 0)
        {
          v42 = MEMORY[0x1D388AB50](v39, v26);
        }

        else
        {
          v42 = *(v26 + 8 * v39 + 32);
        }

        v43 = v42;
        v44 = [v42 endDate];
        sub_1D15A2668();

        v80 = v40;
        v46 = *(v40 + 16);
        v45 = *(v40 + 24);
        if (v46 >= v45 >> 1)
        {
          sub_1D14A78B4(v45 > 1, v46 + 1, 1);
          v40 = v80;
        }

        ++v39;
        *(v40 + 16) = v46 + 1;
        v47 = v40 + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v13 + 72) * v46;
        v12 = v79;
        v77(v47, v41, v79);
      }

      while (v27 != v39);
      v4 = v73;
      v38 = MEMORY[0x1E69E7CC0];
      goto LABEL_26;
    }

LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

LABEL_29:
  sub_1D15A31E8();
  v48 = sub_1D15A3248();
  v49 = sub_1D15A4318();
  if (os_log_type_enabled(v48, v49))
  {
    v50 = swift_slowAlloc();
    *v50 = 0;
    _os_log_impl(&dword_1D1446000, v48, v49, "Unable to get ongoing samples, earlier start date or latest end date to create an ongoing factors value", v50, 2u);
    MEMORY[0x1D388BF00](v50, -1, -1);
  }

  (*(v4 + 8))(v6, v3);
  return 0;
}

id HKCodableSummaryVisionPrescriptionValue.init(visionPrescription:hasImage:)(void *a1, char a2)
{
  v4 = sub_1D15A26A8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  if (result)
  {
    v9 = result;
    v10 = [a1 dateIssued];
    sub_1D15A2668();

    v11 = sub_1D15A2618();
    (*(v5 + 8))(v7, v4);
    v12 = MEMORY[0x1D388B370](v11);

    [v9 setTimestampData_];
    v13 = [a1 leftSphere];
    if (v13)
    {
      v14 = v13;
      v15 = [v13 codableRepresentation];
    }

    else
    {
      v15 = 0;
    }

    [v9 setLeftEyeSphere_];

    v16 = [a1 rightSphere];
    if (v16)
    {
      v17 = v16;
      v18 = [v16 codableRepresentation];
    }

    else
    {
      v18 = 0;
    }

    [v9 setRightEyeSphere_];

    sub_1D1453BA0(0, &qword_1EC630F20);
    v19 = a1;
    v20 = HKCodablePrescriptionType.init(from:)(v19);
    [v9 setPrescriptionType_];

    [v9 setHasImage_];
    return v9;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id HKCodablePrescriptionType.init(from:)(void *a1)
{
  result = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  if (result)
  {
    v3 = result;
    v4 = [a1 prescriptionType];
    if (v4 == 1)
    {
      v5 = HKVisionPrescriptionTypeDetailedLongLocalizedString();
      if (!v5)
      {
        sub_1D15A3F38();
        v5 = sub_1D15A3EF8();
      }
    }

    else
    {
      if (v4 == 2)
      {
        [v3 setContacts_];
LABEL_9:

        return v3;
      }

      v5 = sub_1D15A3EF8();
    }

    [v3 setGlassesDescription_];

    goto LABEL_9;
  }

  __break(1u);
  return result;
}

id HKCodableSummaryWalkingSteadinessValue.init(codableQuantity:classification:dataConfiguration:)(void *a1, uint64_t a2, void *a3)
{
  result = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  if (result)
  {
    v7 = result;
    [v7 setQuantity_];
    [v7 setClassificationRawValue_];
    v8 = a3;
    [v7 setLevelViewDataConfiguration_];

    return v7;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id HKCodableSummaryUnderwaterDepthValue.init(maxDepth:valueClamped:date:)(void *a1, char a2, uint64_t a3)
{
  result = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  if (result)
  {
    v7 = result;
    [v7 setValue_];
    [v7 setValueClamped_];
    v8 = sub_1D15A2618();
    v9 = MEMORY[0x1D388B370]();

    [v7 setDateData_];
    v10 = sub_1D15A26A8();
    (*(*(v10 - 8) + 8))(a3, v10);
    return v7;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id HKCodableSummaryStateOfMindValue.init(stateOfMind:)(void *a1)
{
  v2 = sub_1D15A26A8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  if (result)
  {
    v7 = result;
    v8 = [a1 startDate];
    sub_1D15A2668();

    v9 = sub_1D15A2618();
    (*(v3 + 8))(v5, v2);
    v10 = MEMORY[0x1D388B370](v9);

    [v7 setDateData_];
    [v7 setReflectiveInterval_];
    [a1 valence];
    [v7 setValence_];
    v11 = sub_1D15A42D8();
    v12 = *(v11 + 16);
    if (v12)
    {
      v13 = (v11 + 32);
      do
      {
        v14 = *v13++;
        [v7 addLabels_];
        --v12;
      }

      while (v12);
    }

    v15 = sub_1D15A42E8();
    v16 = *(v15 + 16);
    if (v16)
    {
      v17 = (v15 + 32);
      do
      {
        v18 = *v17++;
        [v7 addDomains_];
        --v16;
      }

      while (v16);
    }

    return v7;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1D153BDBC(void *a1)
{
  v2 = sub_1D15A26A8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  if (result)
  {
    v7 = result;
    v8 = [a1 startDate];
    sub_1D15A2668();

    v9 = sub_1D15A2618();
    (*(v3 + 8))(v5, v2);
    v10 = MEMORY[0x1D388B370](v9);

    [v7 setDateData_];
    [v7 setScore_];
    [v7 setRisk_];

    return v7;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id HKCodableSummaryMostRecentRangeValue.init(minimumValue:maximumValue:date:)(void *a1, void *a2, uint64_t a3)
{
  result = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  if (result)
  {
    v7 = result;
    sub_1D1453BA0(0, &qword_1EE056720);
    v8 = v7;
    v9 = a1;
    v10 = sub_1D15A43F8();
    [v8 setMinimumValue_];

    v11 = a2;
    v12 = sub_1D15A43F8();
    [v8 setMaximumValue_];

    v13 = sub_1D15A2618();
    v14 = MEMORY[0x1D388B370]();

    [v8 setDateData_];
    v15 = sub_1D15A26A8();
    (*(*(v15 - 8) + 8))(a3, v15);
    return v8;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1D153C0A8(SEL *a1)
{
  [v1 *a1];
  v2 = HKDecodeDateForValue();
  sub_1D15A2668();
}

id HKCodableSummaryTrendValue.init(engineOutput:coveredDateRange:dataPresencePoints:)(uint64_t a1, uint64_t a2, unint64_t a3)
{
  sub_1D1455C20(0, qword_1EE058588, type metadata accessor for SignificantChangeEngine.Output);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v15 - v6;
  result = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  if (result)
  {
    v9 = result;
    sub_1D1540D88(a1, v7, qword_1EE058588, type metadata accessor for SignificantChangeEngine.Output, sub_1D1455C20);
    v10 = v9;
    HKCodableSummaryTrendValue.engineOutput.setter(v7);
    v11 = sub_1D15A3EF8();

    [v10 setCoveredDateRangeRawValue_];

    sub_1D14BEB44(a3);

    v12 = objc_allocWithZone(MEMORY[0x1E695DF70]);
    v13 = sub_1D15A40A8();

    v14 = [v12 initWithArray_];

    [v10 setDataPresencePoints_];
    sub_1D1541334(a1, qword_1EE058588, type metadata accessor for SignificantChangeEngine.Output, sub_1D1455C20);
    return v10;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t HKCodableSummaryTrendValue.engineOutput.setter(uint64_t a1)
{
  v2 = v1;
  v17[1] = swift_getObjectType();
  v4 = sub_1D15A3268();
  v17[2] = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  sub_1D1455C20(0, qword_1EE058588, type metadata accessor for SignificantChangeEngine.Output);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v17 - v6;
  v8 = type metadata accessor for SignificantChangeEngine.Output(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D1540D88(a1, v7, qword_1EE058588, type metadata accessor for SignificantChangeEngine.Output, sub_1D1455C20);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_1D1541334(v7, qword_1EE058588, type metadata accessor for SignificantChangeEngine.Output, sub_1D1455C20);
    [v2 setAnalysisData_];
    return sub_1D1541334(a1, qword_1EE058588, type metadata accessor for SignificantChangeEngine.Output, sub_1D1455C20);
  }

  else
  {
    sub_1D15412CC(v7, v11, type metadata accessor for SignificantChangeEngine.Output);
    sub_1D15A21E8();
    swift_allocObject();
    sub_1D15A21D8();
    sub_1D1540874(&qword_1EE0585D8, type metadata accessor for SignificantChangeEngine.Output);
    v13 = sub_1D15A21C8();
    v15 = v14;

    v16 = sub_1D15A24F8();
    sub_1D1498BF4(v13, v15);
    [v2 setAnalysisData_];

    sub_1D1541334(a1, qword_1EE058588, type metadata accessor for SignificantChangeEngine.Output, sub_1D1455C20);
    return sub_1D1540DF8(v11, type metadata accessor for SignificantChangeEngine.Output);
  }
}

void HKCodableSummaryTrendValue.coveredDateRange.setter(unsigned __int8 a1)
{
  if (a1 > 5u)
  {
    v2 = 0;
    [v1 setCoveredDateRangeRawValue_];
  }

  else
  {
    v2 = sub_1D15A3EF8();

    [v1 setCoveredDateRangeRawValue_];
  }
}

uint64_t HKCodableSummaryTrendValue.engineOutput.getter@<X0>(uint64_t a1@<X8>)
{
  swift_getObjectType();
  v3 = sub_1D15A3268();
  if ([v1 hasAnalysisData] && (v4 = objc_msgSend(v1, sel_analysisData)) != 0)
  {
    v5 = v4;
    v6 = sub_1D15A2518();
    v8 = v7;

    sub_1D15A21B8();
    swift_allocObject();
    sub_1D15A21A8();
    v9 = type metadata accessor for SignificantChangeEngine.Output(0);
    sub_1D1540874(&qword_1EE0585D0, type metadata accessor for SignificantChangeEngine.Output);
    sub_1D15A2198();
    sub_1D1498BF4(v6, v8);

    v12 = *(*(v9 - 8) + 56);
    v13 = a1;
    v14 = 0;
    v15 = v9;
  }

  else
  {
    v10 = type metadata accessor for SignificantChangeEngine.Output(0);
    v12 = *(*(v10 - 8) + 56);
    v15 = v10;
    v13 = a1;
    v14 = 1;
  }

  return v12(v13, v14, 1, v15);
}

uint64_t sub_1D153CFA0(uint64_t a1)
{
  sub_1D1455C20(0, qword_1EE058588, type metadata accessor for SignificantChangeEngine.Output);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v6 - v3;
  sub_1D1540D88(a1, &v6 - v3, qword_1EE058588, type metadata accessor for SignificantChangeEngine.Output, sub_1D1455C20);
  return HKCodableSummaryTrendValue.engineOutput.setter(v4);
}

void (*HKCodableSummaryTrendValue.engineOutput.modify(void *a1))(uint64_t a1, char a2)
{
  *a1 = v1;
  sub_1D1455C20(0, qword_1EE058588, type metadata accessor for SignificantChangeEngine.Output);
  v4 = *(*(v3 - 8) + 64);
  if (MEMORY[0x1E69E7D08])
  {
    a1[1] = swift_coroFrameAlloc();
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    a1[1] = malloc(v4);
    v5 = malloc(v4);
  }

  a1[2] = v5;
  HKCodableSummaryTrendValue.engineOutput.getter(v5);
  return sub_1D153D13C;
}

void sub_1D153D13C(uint64_t a1, char a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (a2)
  {
    sub_1D1540D88(*(a1 + 16), v2, qword_1EE058588, type metadata accessor for SignificantChangeEngine.Output, sub_1D1455C20);
    HKCodableSummaryTrendValue.engineOutput.setter(v2);
    sub_1D1541334(v3, qword_1EE058588, type metadata accessor for SignificantChangeEngine.Output, sub_1D1455C20);
  }

  else
  {
    HKCodableSummaryTrendValue.engineOutput.setter(*(a1 + 16));
  }

  free(v3);

  free(v2);
}

uint64_t HKCodableSummaryTrendValue.coveredDateRange.getter()
{
  if (![v0 hasCoveredDateRangeRawValue])
  {
    return 6;
  }

  v1 = [v0 coveredDateRangeRawValue];
  if (!v1)
  {
    return 6;
  }

  v2 = v1;
  sub_1D15A3F38();

  return _s19HealthVisualization9DateRangeO8rawValueACSgSS_tcfC_0();
}

uint64_t sub_1D153D2A0@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  if ([*a1 hasCoveredDateRangeRawValue] && (v4 = objc_msgSend(v3, sel_coveredDateRangeRawValue)) != 0)
  {
    v5 = v4;
    sub_1D15A3F38();

    result = _s19HealthVisualization9DateRangeO8rawValueACSgSS_tcfC_0();
  }

  else
  {
    result = 6;
  }

  *a2 = result;
  return result;
}

void (*HKCodableSummaryTrendValue.coveredDateRange.modify(uint64_t a1))(uint64_t a1)
{
  v2 = v1;
  *a1 = v2;
  if ([v2 hasCoveredDateRangeRawValue] && (v4 = objc_msgSend(v2, sel_coveredDateRangeRawValue)) != 0)
  {
    v5 = v4;
    sub_1D15A3F38();

    v6 = _s19HealthVisualization9DateRangeO8rawValueACSgSS_tcfC_0();
  }

  else
  {
    v6 = 6;
  }

  *(a1 + 8) = v6;
  return sub_1D153D3DC;
}

id HKCodableSummaryTrendResults.init(values:version:)(unint64_t a1, uint64_t a2)
{
  sub_1D1455C20(0, &qword_1EE059428, MEMORY[0x1E69A3D18]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v14 - v5;
  result = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  if (result)
  {
    v8 = result;
    sub_1D14BEB58(a1);

    v9 = objc_allocWithZone(MEMORY[0x1E695DF70]);
    v10 = sub_1D15A40A8();

    v11 = [v9 initWithArray_];

    [v8 setTrendValues_];
    v12 = sub_1D15A2CD8();
    v13 = *(v12 - 8);
    (*(v13 + 16))(v6, a2, v12);
    (*(v13 + 56))(v6, 0, 1, v12);
    sub_1D1505A88(&qword_1EE056668, &qword_1EE056660);
    sub_1D15A2F98();

    (*(v13 + 8))(a2, v12);
    return v8;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id HKCodableSummaryCorrelatedTrendResults.init(values:version:)(unint64_t a1, uint64_t a2)
{
  sub_1D1455C20(0, &qword_1EE059428, MEMORY[0x1E69A3D18]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v14 - v5;
  result = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  if (result)
  {
    v8 = result;
    sub_1D14BEB6C(a1);

    v9 = objc_allocWithZone(MEMORY[0x1E695DF70]);
    v10 = sub_1D15A40A8();

    v11 = [v9 initWithArray_];

    [v8 setTrendValues_];
    v12 = sub_1D15A2CD8();
    v13 = *(v12 - 8);
    (*(v13 + 16))(v6, a2, v12);
    (*(v13 + 56))(v6, 0, 1, v12);
    sub_1D1505A88(&qword_1EC630F00, &qword_1EC630EF8);
    sub_1D15A2F98();

    (*(v13 + 8))(a2, v12);
    return v8;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D153D848(unint64_t *a1)
{
  v3 = [v1 trendValues];
  if (v3)
  {
    v4 = v3;
    sub_1D1453BA0(0, a1);
    sub_1D15A40B8();
  }

  return MEMORY[0x1E69E7CC0];
}

void HKCodableSummaryCorrelatedTrendValue.init(objectType:trendValue:)(void *a1, void *a2)
{
  v4 = [a1 identifier];
  if (!v4)
  {
    sub_1D15A3F38();
    v4 = sub_1D15A3EF8();
  }

  v5 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  if (v5)
  {
    v6 = v5;
    [v6 setObjectTypeIdentifier_];

    v7 = a2;
    [v6 setTrendValue_];
  }

  else
  {

    __break(1u);
  }
}

id HKCodableSummaryCorrelatedTrendValue.init(objectTypeIdentifier:trendValue:)(uint64_t a1, uint64_t a2, void *a3)
{
  result = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  if (result)
  {
    v5 = result;
    v6 = sub_1D15A3EF8();

    [v5 setObjectTypeIdentifier_];

    v7 = a3;
    [v5 setTrendValue_];

    return v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id HKCodableSummaryCorrelatedTrendValue.objectType.getter()
{
  if (![v0 hasObjectTypeIdentifier])
  {
    return 0;
  }

  v1 = objc_opt_self();
  v2 = [v0 objectTypeIdentifier];
  v3 = [v1 _typeWithIdentifier_];

  return v3;
}

id HKCodableChartSharableModel.values(for:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  ObjectType = swift_getObjectType();
  v6 = sub_1D15A3268();
  v7 = *(v6 - 8);
  *&v9 = MEMORY[0x1EEE9AC00](v6).n128_u64[0];
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 > 4)
  {
LABEL_9:
    if (a1 != 5)
    {
      if (a1 == 6)
      {
        if ([v2 hasDayData] && objc_msgSend(v2, sel_hasDayDateInterval))
        {
          result = [v2 dayData];
          if (result)
          {
            *a2 = result;
            result = [v2 dayDateInterval];
            if (!result)
            {
              __break(1u);
              goto LABEL_16;
            }

            goto LABEL_28;
          }

          goto LABEL_34;
        }

LABEL_29:
        sub_1D1540E58();
        v26 = *(*(v30 - 8) + 56);
        v29 = v30;
        v27 = a2;
        v28 = 1;
        goto LABEL_30;
      }

LABEL_16:
      v32 = result;
      sub_1D15A3238();
      v12 = sub_1D15A3248();
      v13 = sub_1D15A4318();
      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        v15 = swift_slowAlloc();
        v33 = v15;
        v34 = ObjectType;
        *v14 = 136315394;
        swift_getMetatypeMetadata();
        v16 = sub_1D15A3F68();
        v18 = sub_1D1479780(v16, v17, &v33);

        *(v14 + 4) = v18;
        *(v14 + 12) = 2080;
        v34 = a1;
        type metadata accessor for HKTimeScope(0);
        v19 = sub_1D15A3F68();
        v21 = sub_1D1479780(v19, v20, &v33);

        *(v14 + 14) = v21;
        _os_log_impl(&dword_1D1446000, v12, v13, "[%s]: Unsupported time scope for charts: %s", v14, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1D388BF00](v15, -1, -1);
        MEMORY[0x1D388BF00](v14, -1, -1);
      }

      (*(v7 + 8))(v11, v32);
      sub_1D1540E58();
      return (*(*(v22 - 8) + 56))(a2, 1, 1, v22);
    }

LABEL_24:
    if (![v2 hasWeekData] || !objc_msgSend(v2, sel_hasWeekDateInterval))
    {
      goto LABEL_29;
    }

    result = [v2 weekData];
    if (!result)
    {
LABEL_36:
      __break(1u);
      goto LABEL_37;
    }

    *a2 = result;
    result = [v2 weekDateInterval];
    if (!result)
    {
LABEL_37:
      __break(1u);
      return result;
    }

    goto LABEL_28;
  }

  if (a1 == 3)
  {
    if (![v2 hasSixMonthData] || !objc_msgSend(v2, sel_hasSixMonthDateInterval))
    {
      goto LABEL_29;
    }

    result = [v2 sixMonthData];
    if (!result)
    {
LABEL_35:
      __break(1u);
      goto LABEL_36;
    }

    *a2 = result;
    result = [v2 sixMonthDateInterval];
    if (result)
    {
      goto LABEL_28;
    }

    __break(1u);
    goto LABEL_24;
  }

  if (a1 != 4)
  {
    goto LABEL_16;
  }

  if (![v2 hasMonthData] || !objc_msgSend(v2, sel_hasMonthDateInterval))
  {
    goto LABEL_29;
  }

  result = [v2 monthData];
  if (!result)
  {
    __break(1u);
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  *a2 = result;
  result = [v2 monthDateInterval];
  if (!result)
  {
    __break(1u);
    goto LABEL_9;
  }

LABEL_28:
  v23 = result;
  sub_1D1540E58();
  v25 = v24;
  sub_1D15A4498();

  v26 = *(*(v25 - 8) + 56);
  v27 = a2;
  v28 = 0;
  v29 = v25;
LABEL_30:

  return v26(v27, v28, 1, v29);
}

Swift::String __swiftcall HKCodableChartSharableModel.logModelBytes()()
{
  v1 = v0;
  v2 = [objc_allocWithZone(MEMORY[0x1E696AAF0]) init];
  [v2 setCountStyle_];
  if ([v0 hasDayData])
  {
    v3 = [v0 dayData];
    if (!v3)
    {
LABEL_71:
      __break(1u);
      goto LABEL_72;
    }

    v5 = v3;
    v6 = [v3 hasQueryDataObject];

    if (v6)
    {
      v3 = [v1 dayData];
      if (!v3)
      {
LABEL_75:
        __break(1u);
        goto LABEL_76;
      }

      v7 = v3;
      v8 = [v3 queryDataObject];

      if (v8)
      {
        v9 = sub_1D15A2518();
        v11 = v10;

        v12 = v11 >> 62;
        if ((v11 >> 62) > 1)
        {
          if (v12 != 2)
          {
            v13 = 0;
            goto LABEL_16;
          }

          v15 = *(v9 + 16);
          v14 = *(v9 + 24);
          v13 = v14 - v15;
          if (!__OFSUB__(v14, v15))
          {
            goto LABEL_16;
          }

          __break(1u);
        }

        else if (!v12)
        {
          v13 = BYTE6(v11);
LABEL_16:
          v16 = [v2 stringFromByteCount_];
          v17 = sub_1D15A3F38();
          v19 = v18;

          MEMORY[0x1D388A330](v17, v19);

          MEMORY[0x1D388A330](8236, 0xE200000000000000);
          MEMORY[0x1D388A330](0x203A796164, 0xE500000000000000);

          sub_1D1498BF4(v9, v11);
          goto LABEL_17;
        }

        if (__OFSUB__(HIDWORD(v9), v9))
        {
          __break(1u);
          goto LABEL_68;
        }

        v13 = HIDWORD(v9) - v9;
        goto LABEL_16;
      }
    }
  }

LABEL_17:
  if ([v1 hasWeekData])
  {
    v3 = [v1 weekData];
    if (!v3)
    {
LABEL_72:
      __break(1u);
      goto LABEL_73;
    }

    v20 = v3;
    v21 = [v3 hasQueryDataObject];

    if (v21)
    {
      v3 = [v1 weekData];
      if (!v3)
      {
LABEL_76:
        __break(1u);
        goto LABEL_77;
      }

      v22 = v3;
      v23 = [v3 queryDataObject];

      if (v23)
      {
        v24 = sub_1D15A2518();
        v26 = v25;

        v27 = v26 >> 62;
        if ((v26 >> 62) > 1)
        {
          if (v27 != 2)
          {
            v28 = 0;
            goto LABEL_32;
          }

          v30 = *(v24 + 16);
          v29 = *(v24 + 24);
          v28 = v29 - v30;
          if (!__OFSUB__(v29, v30))
          {
            goto LABEL_32;
          }

          __break(1u);
        }

        else if (!v27)
        {
          v28 = BYTE6(v26);
LABEL_32:
          v31 = [v2 stringFromByteCount_];
          v32 = sub_1D15A3F38();
          v34 = v33;

          MEMORY[0x1D388A330](v32, v34);

          MEMORY[0x1D388A330](8236, 0xE200000000000000);
          MEMORY[0x1D388A330](0x203A6B656577, 0xE600000000000000);

          sub_1D1498BF4(v24, v26);
          goto LABEL_33;
        }

        if (!__OFSUB__(HIDWORD(v24), v24))
        {
          v28 = HIDWORD(v24) - v24;
          goto LABEL_32;
        }

LABEL_68:
        __break(1u);
        goto LABEL_69;
      }
    }
  }

LABEL_33:
  if ([v1 hasMonthData])
  {
    v3 = [v1 monthData];
    if (!v3)
    {
LABEL_73:
      __break(1u);
      goto LABEL_74;
    }

    v35 = v3;
    v36 = [v3 hasQueryDataObject];

    if (v36)
    {
      v3 = [v1 monthData];
      if (!v3)
      {
LABEL_77:
        __break(1u);
        goto LABEL_78;
      }

      v37 = v3;
      v38 = [v3 queryDataObject];

      if (v38)
      {
        v39 = sub_1D15A2518();
        v41 = v40;

        v42 = v41 >> 62;
        if ((v41 >> 62) > 1)
        {
          if (v42 != 2)
          {
            v43 = 0;
            goto LABEL_48;
          }

          v45 = *(v39 + 16);
          v44 = *(v39 + 24);
          v43 = v44 - v45;
          if (!__OFSUB__(v44, v45))
          {
            goto LABEL_48;
          }

          __break(1u);
        }

        else if (!v42)
        {
          v43 = BYTE6(v41);
LABEL_48:
          v46 = [v2 stringFromByteCount_];
          v47 = sub_1D15A3F38();
          v49 = v48;

          MEMORY[0x1D388A330](v47, v49);

          MEMORY[0x1D388A330](8236, 0xE200000000000000);
          MEMORY[0x1D388A330](0x203A68746E6F6DLL, 0xE700000000000000);

          sub_1D1498BF4(v39, v41);
          goto LABEL_49;
        }

        if (!__OFSUB__(HIDWORD(v39), v39))
        {
          v43 = HIDWORD(v39) - v39;
          goto LABEL_48;
        }

LABEL_69:
        __break(1u);
LABEL_70:
        __break(1u);
        goto LABEL_71;
      }
    }
  }

LABEL_49:
  if ([v1 hasSixMonthData])
  {
    v3 = [v1 sixMonthData];
    if (!v3)
    {
LABEL_74:
      __break(1u);
      goto LABEL_75;
    }

    v50 = v3;
    v51 = [v3 hasQueryDataObject];

    if (v51)
    {
      v3 = [v1 sixMonthData];
      if (!v3)
      {
LABEL_78:
        __break(1u);
        goto LABEL_79;
      }

      v52 = v3;
      v53 = [v3 queryDataObject];

      if (v53)
      {
        v54 = sub_1D15A2518();
        v56 = v55;

        v57 = v56 >> 62;
        if ((v56 >> 62) > 1)
        {
          if (v57 != 2)
          {
            v58 = 0;
            goto LABEL_66;
          }

          v60 = *(v54 + 16);
          v59 = *(v54 + 24);
          v58 = v59 - v60;
          if (!__OFSUB__(v59, v60))
          {
            goto LABEL_66;
          }

          __break(1u);
        }

        else if (!v57)
        {
          v58 = BYTE6(v56);
LABEL_66:
          v61 = [v2 stringFromByteCount_];
          v62 = sub_1D15A3F38();
          v64 = v63;

          MEMORY[0x1D388A330](v62, v64);

          MEMORY[0x1D388A330](8236, 0xE200000000000000);
          MEMORY[0x1D388A330](0x746E6F6D20786973, 0xEB00000000203A68);

          sub_1D1498BF4(v54, v56);
          goto LABEL_58;
        }

        if (!__OFSUB__(HIDWORD(v54), v54))
        {
          v58 = HIDWORD(v54) - v54;
          goto LABEL_66;
        }

        goto LABEL_70;
      }
    }
  }

LABEL_58:
  v3 = 0;
  v4 = 0xE000000000000000;
LABEL_79:
  result._object = v4;
  result._countAndFlagsBits = v3;
  return result;
}

uint64_t sub_1D153E664()
{
  v0 = sub_1D15A2CD8();
  __swift_allocate_value_buffer(v0, qword_1EE0566B8);
  __swift_project_value_buffer(v0, qword_1EE0566B8);
  return sub_1D15A2CC8();
}

uint64_t static HKCodableWheelchairSetting.currentCodeVersion.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EE0566B0 != -1)
  {
    swift_once();
  }

  v2 = sub_1D15A2CD8();
  v3 = __swift_project_value_buffer(v2, qword_1EE0566B8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t HKCodableWheelchairSetting.wheelchairUse.getter()
{
  if (![v0 hasIsUsingWheelchair])
  {
    return 0;
  }

  if ([v0 isUsingWheelchair])
  {
    return 2;
  }

  return 1;
}

id sub_1D153E7B0(void *a1, void **a2)
{
  v2 = *a2;
  v3 = sel_setHasIsUsingWheelchair_;
  if (*a1 == 2)
  {
    [v2 setHasIsUsingWheelchair_];
    v3 = sel_setIsUsingWheelchair_;
    v4 = v2;
    v5 = 1;
  }

  else
  {
    if (*a1 == 1)
    {
      [v2 setHasIsUsingWheelchair_];
      v3 = sel_setIsUsingWheelchair_;
    }

    v4 = v2;
    v5 = 0;
  }

  return [v4 v3];
}

id HKCodableWheelchairSetting.wheelchairUse.setter(uint64_t a1)
{
  v2 = sel_setHasIsUsingWheelchair_;
  if (a1 == 2)
  {
    [v1 setHasIsUsingWheelchair_];
    v2 = sel_setIsUsingWheelchair_;
    v3 = v1;
    v4 = 1;
  }

  else
  {
    if (a1 == 1)
    {
      [v1 setHasIsUsingWheelchair_];
      v2 = sel_setIsUsingWheelchair_;
    }

    v3 = v1;
    v4 = 0;
  }

  return [v3 v2];
}

id (*HKCodableWheelchairSetting.wheelchairUse.modify(uint64_t *a1))(void *a1)
{
  a1[1] = v1;
  if ([v1 hasIsUsingWheelchair])
  {
    v3 = [v1 isUsingWheelchair];
    v4 = 1;
    if (v3)
    {
      v4 = 2;
    }
  }

  else
  {
    v4 = 0;
  }

  *a1 = v4;
  return sub_1D153E92C;
}