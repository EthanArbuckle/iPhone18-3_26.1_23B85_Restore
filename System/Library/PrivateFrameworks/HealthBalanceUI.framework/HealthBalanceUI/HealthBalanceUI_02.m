uint64_t storeEnumTagSinglePayload for BalanceWidgetAccessoryRectangularSpecs.PresentationContext(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1CFE7EE3C()
{
  result = qword_1EC512598;
  if (!qword_1EC512598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC512598);
  }

  return result;
}

void *sub_1CFE7EE90@<X0>(void *a1@<X8>)
{
  v45 = a1;
  v1 = sub_1CFF0E2DC();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v34 - v6;
  if (qword_1EDEC4A40 != -1)
  {
    swift_once();
  }

  v42 = v4;
  v43 = v7;
  v44 = v2;
  v8 = qword_1EDEC4A48;
  sub_1CFF0DE3C();
  v40 = sub_1CFF0DEBC();

  if (qword_1EDEC4A30 != -1)
  {
    swift_once();
  }

  v9 = qword_1EDEC4A38;
  sub_1CFF0DE3C();
  v39 = sub_1CFF0DEBC();

  v10 = objc_opt_self();
  v11 = [v10 systemGrayColor];
  sub_1CFF0DE3C();
  v38 = sub_1CFF0DEBC();

  v12 = v8;
  v37 = sub_1CFF0DE3C();
  v13 = v9;
  v36 = sub_1CFF0DE3C();
  *&v50[0] = sub_1CFF0DE8C();
  v34 = sub_1CFF0D51C();
  v49 = 1;
  v14 = [v10 systemGrayColor];
  *&v50[0] = sub_1CFF0DE3C();
  v35 = sub_1CFF0D51C();
  v15 = [v10 systemGrayColor];
  sub_1CFF0DE3C();
  v16 = sub_1CFF0DEBC();

  *&v50[0] = v16;
  v17 = sub_1CFF0D51C();
  v18 = [v10 systemGrayColor];
  sub_1CFF0DE3C();
  v19 = sub_1CFF0DEBC();

  *&v50[0] = v19;
  v20 = sub_1CFF0D51C();
  v21 = [v10 systemGrayColor];
  *&v50[0] = sub_1CFF0DE3C();
  v22 = sub_1CFF0D51C();
  *&v50[0] = sub_1CFF0DEAC();
  v23 = sub_1CFF0D51C();
  v24 = v41;
  v25 = *v41 != 0;
  v26 = sub_1CFF0DBBC();
  v48 = 1;
  v47 = 1;
  *&v50[0] = v40;
  *(&v50[0] + 1) = v39;
  *&v50[1] = v38;
  BYTE8(v50[1]) = 0;
  LOBYTE(v50[2]) = 1;
  *(&v50[2] + 1) = v34;
  *&v50[3] = 0;
  BYTE8(v50[3]) = 1;
  *&v50[4] = 0x4014000000000000;
  *(&v50[4] + 1) = v37;
  *&v50[5] = v36;
  *(&v50[5] + 1) = 0x3FE0000000000000;
  *&v50[6] = 0;
  BYTE8(v50[6]) = v49;
  v50[7] = xmmword_1CFF10E40;
  v50[8] = xmmword_1CFF0FC70;
  v50[9] = xmmword_1CFF0FC80;
  v50[10] = xmmword_1CFF0FC90;
  memset(&v50[11], 0, 24);
  WORD4(v50[12]) = 1;
  *&v50[13] = v35;
  *(&v50[13] + 1) = v17;
  *&v50[14] = v20;
  *(&v50[14] + 1) = v22;
  *&v50[15] = v23;
  BYTE8(v50[15]) = v25;
  *(&v50[15] + 9) = v46[0];
  HIDWORD(v50[15]) = *(v46 + 3);
  *&v50[16] = 0;
  *(&v50[16] + 1) = v26;
  *&v50[17] = 0;
  v27 = type metadata accessor for BalanceWidgetAccessoryRectangularSpecs();
  v29 = v43;
  v28 = v44;
  (*(v44 + 16))(v43, &v24[*(v27 + 24)], v1);
  v30 = v42;
  sub_1CFF0E2CC();
  sub_1CFE7F750(&qword_1EDEC17D8, MEMORY[0x1E6985778]);
  LOBYTE(v23) = sub_1CFF0E4CC();
  v31 = *(v28 + 8);
  v31(v30, v1);
  if (v23)
  {
    v31(v29, v1);
    memcpy(v46, v50, sizeof(v46));
    static OvernightMetricsChartSpec.accented(_:)(v46, v45);
    return sub_1CFE583D0(v50);
  }

  sub_1CFF0E2BC();
  v32 = sub_1CFF0E4CC();
  v31(v30, v1);
  v31(v29, v1);
  if (v32)
  {
    memcpy(v46, v50, sizeof(v46));
    static OvernightMetricsChartSpec.vibrant(_:)(v46, v45);
    return sub_1CFE583D0(v50);
  }

  return memcpy(v45, v50, 0x118uLL);
}

id sub_1CFE7F434@<X0>(uint64_t a1@<X8>)
{
  result = [objc_opt_self() sharedBehavior];
  if (result)
  {
    v3 = result;
    v4 = [result isAppleWatch];

    sub_1CFF0D79C();
    sub_1CFE7F750(&qword_1EDEC1C30, MEMORY[0x1E6985530]);
    v5 = sub_1CFF0D81C();
    if (v15)
    {
      v6 = 2;
    }

    else
    {
      v6 = 1;
    }

    if (v4)
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }

    v8 = MEMORY[0x1D3878500](v5);
    v10 = v9;
    v12 = v11;
    v14 = v13;
    type metadata accessor for BalanceWidgetAccessoryRectangularSpecs();
    result = sub_1CFF0D7BC();
    *a1 = v7;
    *(a1 + 8) = v8;
    *(a1 + 16) = v10;
    *(a1 + 24) = v12;
    *(a1 + 32) = v14;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1CFE7F554()
{
  v1 = sub_1CFF0CFFC();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*v0 == 2)
  {
    v5 = sub_1CFEBFD10();
    if (v6)
    {

      return sub_1CFF0DE8C();
    }

    else
    {
      if (v5 == 1)
      {
        if (qword_1EC512180 != -1)
        {
          swift_once();
        }

        v8 = qword_1EC5163D0;
      }

      else if (v5)
      {
        if (qword_1EC512178 != -1)
        {
          swift_once();
        }

        v8 = qword_1EC5163B8;
      }

      else
      {
        if (qword_1EC512170 != -1)
        {
          swift_once();
        }

        v8 = qword_1EC5163A0;
      }

      v9 = __swift_project_value_buffer(v1, v8);
      (*(v2 + 16))(v4, v9, v1);
      return sub_1CFF0DEFC();
    }
  }

  else
  {

    return sub_1CFF0DE9C();
  }
}

uint64_t sub_1CFE7F750(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for GradientOverlaidPills()
{
  result = qword_1EDEC3CF0;
  if (!qword_1EDEC3CF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1CFE7F80C()
{
  sub_1CFE7F8F0(319, &qword_1EDEC4D48, MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    sub_1CFE7F8F0(319, qword_1EDEC4FC8, MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      type metadata accessor for OvernightMetricsChartLayout(319);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1CFE7F8F0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for OvernightMetricsChartPoint();
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1CFE7F96C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v47 = a2;
  v51 = a3;
  sub_1CFE8142C();
  v45 = v4;
  v41 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v48 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFE812C4();
  v46 = v6;
  v44 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v49 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFE8112C();
  v42 = *(v8 - 8);
  v43 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v40 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for IndividualOvernightMetricChartPoint(0);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFE81B20(0, &qword_1EDEC21D0, sub_1CFE8112C, MEMORY[0x1E695AFD0], MEMORY[0x1E695B1A8]);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v40 - v15;
  sub_1CFF0E6DC();
  v50 = sub_1CFF0E6CC();
  sub_1CFF0E66C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v17 = a1;
  v18 = a1 + *(type metadata accessor for OvernightMetricsChartPoint() + 20);
  result = type metadata accessor for IndividualOvernightMetricChartPointCollection();
  v20 = 0;
  v21 = *(v18 + *(result + 20));
  v22 = *(v21 + 16);
  while (1)
  {
    if (v22 == v20)
    {
      v24 = v51;
      goto LABEL_9;
    }

    if (v20 >= *(v21 + 16))
    {
      break;
    }

    sub_1CFE81A60(v21 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v20++, v13, type metadata accessor for IndividualOvernightMetricChartPoint);
    v23 = v13[*(v10 + 32) + 8];
    result = sub_1CFE81D04(v13, type metadata accessor for IndividualOvernightMetricChartPoint);
    if ((v23 & 1) == 0)
    {
      sub_1CFE7FF9C(v17, v48);
      type metadata accessor for GradientOverlaidPills();
      v24 = v51;
      sub_1CFE8155C();
      v26 = v25;
      sub_1CFE8165C();
      v28 = v27;
      sub_1CFE81724();
      v30 = v29;
      v52 = sub_1CFF0D32C();
      v53 = MEMORY[0x1E695B228];
      OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
      v52 = v30;
      v53 = MEMORY[0x1E697E0B8];
      v54 = OpaqueTypeConformance2;
      v55 = MEMORY[0x1E697E0A8];
      v32 = swift_getOpaqueTypeConformance2();
      v52 = v28;
      v53 = v32;
      v33 = swift_getOpaqueTypeConformance2();
      v52 = v26;
      v53 = v33;
      v34 = swift_getOpaqueTypeConformance2();
      v35 = v48;
      v36 = v45;
      sub_1CFF0D16C();
      (*(v41 + 8))(v35, v36);
      v52 = v36;
      v53 = v34;
      swift_getOpaqueTypeConformance2();
      v37 = v40;
      v38 = v46;
      v39 = v49;
      sub_1CFF0D13C();
      (*(v44 + 8))(v39, v38);
      (*(v42 + 32))(v16, v37, v43);
LABEL_9:
      sub_1CFE81B20(0, &qword_1EDEC2200, sub_1CFE8112C, MEMORY[0x1E695AFD0], MEMORY[0x1E695B1A0]);
      swift_storeEnumTagMultiPayload();
      sub_1CFE4A1A0(v16, v24);
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1CFE7FF9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1CFF0D89C();
  v84 = *(v5 - 8);
  v85 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v81 = &v69 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFE81AC8();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v78 = &v69 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v77 = &v69 - v10;
  sub_1CFE81B20(0, &qword_1EDEC2228, MEMORY[0x1E6969530], MEMORY[0x1E695AF60], MEMORY[0x1E695B170]);
  MEMORY[0x1EEE9AC00](v11 - 8);
  *&v79 = COERCE_DOUBLE(sub_1CFF0D32C());
  v76 = *(v79 - 8);
  MEMORY[0x1EEE9AC00](v79);
  v13 = &v69 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFE81724();
  v82 = v14;
  v80 = *(*&v14 - 8);
  MEMORY[0x1EEE9AC00](*&v14);
  v75 = &v69 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFE8165C();
  v17 = v16;
  v86 = *(*&v16 - 8);
  MEMORY[0x1EEE9AC00](*&v16);
  v83 = &v69 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFE8155C();
  v20 = v19;
  v21 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v69 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = *(type metadata accessor for GradientOverlaidPills() + 28);
  v87 = v2;
  v25 = v2 + v24;
  v26 = type metadata accessor for OvernightMetricsChartPoint();
  v27 = a1 + *(v26 + 24);
  v28 = *v27;
  v29 = *(v27 + 8);
  v30 = *(v27 + 16);
  if (v30)
  {
    v31 = 0.0;
  }

  else
  {
    v31 = v29;
  }

  if (v30)
  {
    v32 = 0.0;
  }

  else
  {
    v32 = v28;
  }

  v33 = *(v25 + *(type metadata accessor for OvernightMetricsChartLayout(0) + 20) + 8) * 0.5;
  sub_1CFEC2950(v32);
  v35 = v34 - v33;
  result = sub_1CFEC2950(v31);
  v38 = v33 + v37;
  if (v35 > v33 + v37)
  {
    __break(1u);
  }

  else
  {
    sub_1CFF0D87C();
    v89 = v23;
    v71 = v17;
    v73 = a2;
    v69 = v13;
    v88 = a1;
    v74 = v21;
    v70 = v26;
    sub_1CFF0C7AC();
    v72 = v20;
    sub_1CFE81A18(&qword_1EDEC5198, MEMORY[0x1E6969530]);
    sub_1CFF0D1EC();

    sub_1CFF0D87C();
    v90 = v35;
    sub_1CFF0D1FC();

    sub_1CFF0D87C();
    v90 = v38;
    sub_1CFF0D1FC();

    type metadata accessor for OvernightMetricsChartLayout.Configuration(0);
    v39 = v69;
    sub_1CFF0D31C();
    v41 = v84;
    v40 = v85;
    v42 = v81;
    (*(v84 + 104))(v81, *MEMORY[0x1E697F468], v85);
    v43 = MEMORY[0x1E695B228];
    v44 = v75;
    v45 = v79;
    sub_1CFF0D0EC();
    (*(v41 + 8))(v42, v40);
    (*(v76 + 8))(v39, v45);
    v46 = v88;
    sub_1CFE80898(v88, &v95);
    v94 = v95;
    v90 = *&v45;
    v91 = v43;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v48 = v82;
    v49 = v83;
    sub_1CFF0D0FC();

    (*(v80 + 8))(v44, COERCE_DOUBLE(*&v48));
    v50 = v70;
    v51 = (v46 + *(v70 + 40));
    v52 = *(v51 + 1);
    v90 = *v51;
    v91 = v52;
    sub_1CFE60C24();

    v53 = sub_1CFF0DC6C();
    v55 = v54;
    v57 = v56;
    v90 = v48;
    v91 = MEMORY[0x1E697E0B8];
    v92 = OpaqueTypeConformance2;
    v93 = MEMORY[0x1E697E0A8];
    v58 = swift_getOpaqueTypeConformance2();
    v59 = v71;
    sub_1CFF0D11C();
    sub_1CFE60C78(v53, v55, v57 & 1);

    v60 = v59;
    (*(v86 + 8))(v49, COERCE_DOUBLE(*&v59));
    v61 = (v88 + *(v50 + 44));
    v62 = *(v61 + 1);
    v90 = *v61;
    v91 = v62;

    v63 = sub_1CFF0DC6C();
    v65 = v64;
    LOBYTE(v59) = v66;
    v90 = v60;
    v91 = v58;
    swift_getOpaqueTypeConformance2();
    v67 = v72;
    v68 = v89;
    sub_1CFF0D12C();
    sub_1CFE60C78(v63, v65, LOBYTE(v59) & 1);

    return (*(v74 + 8))(v68, v67);
  }

  return result;
}

uint64_t sub_1CFE80898@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v44 = a1;
  v4 = type metadata accessor for OvernightMetricsChartPoint();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v43 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFE81B8C();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFE7F8F0(0, qword_1EDEC4FC8, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v42 - v15;
  v17 = type metadata accessor for GradientOverlaidPills();
  v18 = *(v17 + 32);
  v45 = v2;
  v46 = a2;
  v19 = v2 + v18;
  v20 = *(v19 + 184);
  if (v20)
  {
    v42 = v19;
    sub_1CFE81A60(v44, v16, type metadata accessor for OvernightMetricsChartPoint);
    (*(v5 + 56))(v16, 0, 1, v4);
    v21 = *(v17 + 20);
    v22 = *(v8 + 48);
    sub_1CFE81C0C(v16, v10);
    sub_1CFE81C0C(v45 + v21, &v10[v22]);
    v23 = *(v5 + 48);
    if (v23(v10, 1, v4) == 1)
    {

      sub_1CFE81C8C(v16);
      if (v23(&v10[v22], 1, v4) == 1)
      {
        result = sub_1CFE81C8C(v10);
        a2 = v46;
LABEL_26:
        *a2 = v20;
        return result;
      }
    }

    else
    {
      sub_1CFE81C0C(v10, v13);
      if (v23(&v10[v22], 1, v4) != 1)
      {
        v39 = v43;
        sub_1CFE81D64(&v10[v22], v43, type metadata accessor for OvernightMetricsChartPoint);

        v40 = _s15HealthBalanceUI26OvernightMetricsChartPointV2eeoiySbAC_ACtFZ_0(v13, v39);
        sub_1CFE81D04(v39, type metadata accessor for OvernightMetricsChartPoint);
        sub_1CFE81C8C(v16);
        sub_1CFE81D04(v13, type metadata accessor for OvernightMetricsChartPoint);
        result = sub_1CFE81C8C(v10);
        a2 = v46;
        if (v40)
        {
          goto LABEL_26;
        }

        goto LABEL_9;
      }

      sub_1CFE81C8C(v16);
      sub_1CFE81D04(v13, type metadata accessor for OvernightMetricsChartPoint);
    }

    a2 = v46;
    sub_1CFE81D04(v10, sub_1CFE81B8C);
LABEL_9:
    v19 = v42;
  }

  v25 = *(v19 + 176);
  if (v25)
  {
    *a2 = v25;
  }

  else
  {
    v26 = sub_1CFEC2B1C(v44);
    v27 = *(v26 + 16);
    if (v27)
    {
      v47 = MEMORY[0x1E69E7CC0];
      sub_1CFEF3E54(0, v27, 0);
      sub_1CFF0E6DC();
      v45 = v26;
      v28 = (v26 + 40);
      v29 = v47;
      do
      {
        v30 = *v28;
        sub_1CFF0E6CC();
        sub_1CFF0E66C();
        if ((swift_task_isCurrentExecutor() & 1) == 0)
        {
          swift_task_reportUnexpectedExecutor();
        }

        if (v30)
        {
          v31 = &qword_1EDEC4A38;
          if (qword_1EDEC4A30 != -1)
          {
            swift_once();
            v31 = &qword_1EDEC4A38;
          }
        }

        else
        {
          v31 = &qword_1EDEC4A48;
          if (qword_1EDEC4A40 != -1)
          {
            swift_once();
            v31 = &qword_1EDEC4A48;
          }
        }

        v32 = *v31;
        sub_1CFF0DE3C();
        v33 = sub_1CFF0E0AC();
        v35 = v34;

        v47 = v29;
        v37 = *(v29 + 16);
        v36 = *(v29 + 24);
        if (v37 >= v36 >> 1)
        {
          sub_1CFEF3E54((v36 > 1), v37 + 1, 1);
          v29 = v47;
        }

        *(v29 + 16) = v37 + 1;
        v38 = v29 + 16 * v37;
        *(v38 + 32) = v33;
        *(v38 + 40) = v35;
        v28 += 16;
        --v27;
      }

      while (v27);
    }

    v41 = v46;
    sub_1CFF0E1BC();
    sub_1CFF0E1AC();
    sub_1CFF0E0BC();
    sub_1CFF0D5CC();
    result = sub_1CFF0D51C();
    *v41 = result;
  }

  return result;
}

uint64_t sub_1CFE80E84(uint64_t a1)
{
  v2 = *(a1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](a1 - 8);
  v8[1] = *v1;
  sub_1CFE81A60(v4, v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for GradientOverlaidPills);
  v5 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v6 = swift_allocObject();
  sub_1CFE81D64(v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5, type metadata accessor for GradientOverlaidPills);
  sub_1CFE7F8F0(0, &qword_1EDEC4D48, MEMORY[0x1E69E62F8]);
  sub_1CFF0C7AC();
  sub_1CFE81B20(0, &qword_1EDEC21D0, sub_1CFE8112C, MEMORY[0x1E695AFD0], MEMORY[0x1E695B1A8]);
  sub_1CFE817A8();
  sub_1CFE8181C();
  sub_1CFE81A18(&qword_1EDEC3930, type metadata accessor for OvernightMetricsChartPoint);

  return sub_1CFF0E04C();
}

uint64_t sub_1CFE810AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for GradientOverlaidPills() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_1CFE7F96C(a1, v6, a2);
}

void sub_1CFE8112C()
{
  if (!qword_1EDEC2290)
  {
    sub_1CFE812C4();
    sub_1CFE8142C();
    sub_1CFE8155C();
    sub_1CFE8165C();
    sub_1CFE81724();
    sub_1CFF0D32C();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EDEC2290);
    }
  }
}

void sub_1CFE812C4()
{
  if (!qword_1EDEC2258)
  {
    sub_1CFE8142C();
    sub_1CFE8155C();
    sub_1CFE8165C();
    sub_1CFE81724();
    sub_1CFF0D32C();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EDEC2258);
    }
  }
}

void sub_1CFE8142C()
{
  if (!qword_1EDEC22F0)
  {
    sub_1CFE8155C();
    sub_1CFE8165C();
    sub_1CFE81724();
    sub_1CFF0D32C();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EDEC22F0);
    }
  }
}

void sub_1CFE8155C()
{
  if (!qword_1EDEC2318)
  {
    sub_1CFE8165C();
    sub_1CFE81724();
    sub_1CFF0D32C();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EDEC2318);
    }
  }
}

void sub_1CFE8165C()
{
  if (!qword_1EDEC2330)
  {
    sub_1CFE81724();
    sub_1CFF0D32C();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EDEC2330);
    }
  }
}

void sub_1CFE81724()
{
  if (!qword_1EDEC2348)
  {
    sub_1CFF0D32C();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EDEC2348);
    }
  }
}

unint64_t sub_1CFE817A8()
{
  result = qword_1EDEC1750;
  if (!qword_1EDEC1750)
  {
    sub_1CFE7F8F0(255, &qword_1EDEC4D48, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEC1750);
  }

  return result;
}

unint64_t sub_1CFE8181C()
{
  result = qword_1EDEC21D8;
  if (!qword_1EDEC21D8)
  {
    sub_1CFE81B20(255, &qword_1EDEC21D0, sub_1CFE8112C, MEMORY[0x1E695AFD0], MEMORY[0x1E695B1A8]);
    sub_1CFE812C4();
    sub_1CFE8142C();
    sub_1CFE8155C();
    sub_1CFE8165C();
    sub_1CFE81724();
    sub_1CFF0D32C();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEC21D8);
  }

  return result;
}

uint64_t sub_1CFE81A18(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1CFE81A60(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_1CFE81AC8()
{
  if (!qword_1EDEC2220)
  {
    v0 = sub_1CFF0D20C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDEC2220);
    }
  }
}

void sub_1CFE81B20(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

void sub_1CFE81B8C()
{
  if (!qword_1EDEC4B30)
  {
    sub_1CFE7F8F0(255, qword_1EDEC4FC8, MEMORY[0x1E69E6720]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDEC4B30);
    }
  }
}

uint64_t sub_1CFE81C0C(uint64_t a1, uint64_t a2)
{
  sub_1CFE7F8F0(0, qword_1EDEC4FC8, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1CFE81C8C(uint64_t a1)
{
  sub_1CFE7F8F0(0, qword_1EDEC4FC8, MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1CFE81D04(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1CFE81D64(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1CFE81DCC()
{
  result = qword_1EDEC1930;
  if (!qword_1EDEC1930)
  {
    sub_1CFE81E44();
    sub_1CFE8181C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEC1930);
  }

  return result;
}

void sub_1CFE81E44()
{
  if (!qword_1EDEC1928)
  {
    sub_1CFE7F8F0(255, &qword_1EDEC4D48, MEMORY[0x1E69E62F8]);
    sub_1CFF0C7AC();
    sub_1CFE81B20(255, &qword_1EDEC21D0, sub_1CFE8112C, MEMORY[0x1E695AFD0], MEMORY[0x1E695B1A8]);
    sub_1CFE817A8();
    sub_1CFE81A18(&qword_1EDEC49A8, MEMORY[0x1E6969530]);
    v0 = sub_1CFF0E07C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDEC1928);
    }
  }
}

uint64_t type metadata accessor for OvernightMetricsChartPointBackground()
{
  result = qword_1EDEC2A78;
  if (!qword_1EDEC2A78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1CFE81FE0()
{
  type metadata accessor for IndividualOvernightMetricChartPoint(319);
  if (v0 <= 0x3F)
  {
    sub_1CFE6BE4C();
    if (v1 <= 0x3F)
    {
      type metadata accessor for OvernightMetricsChartLayout(319);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1CFE820B0@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for OvernightMetricsChartPointBackground();
  memcpy(__dst, (v1 + *(v3 + 36)), 0x118uLL);
  if (*(v1 + *(type metadata accessor for IndividualOvernightMetricChartPoint(0) + 32) + 8))
  {
    v15 = sub_1CFF0DE6C();
  }

  else
  {
    v5 = __dst[9];
    v4 = __dst[10];
    sub_1CFE55370(__dst, &v16);
    if (sub_1CFF0CCCC())
    {
      v15 = v4;

      sub_1CFE583D0(__dst);
    }

    else
    {

      sub_1CFE583D0(__dst);
      v15 = v5;
    }
  }

  type metadata accessor for OvernightMetricsChartLayout(0);
  sub_1CFF0E0EC();
  sub_1CFF0D50C();
  v6 = v16;
  v7 = v17;
  v8 = v18;
  v9 = v19;
  v11 = v20;
  v10 = v21;
  v12 = sub_1CFE8222C();
  v23 = v7;
  v22 = v9;
  result = sub_1CFF0E14C();
  v14 = *(v1 + *(v3 + 24));
  *a1 = v15;
  *(a1 + 8) = v6;
  *(a1 + 16) = v7;
  *(a1 + 24) = v8;
  *(a1 + 32) = v9;
  *(a1 + 40) = v11;
  *(a1 + 48) = v10;
  *(a1 + 56) = v12;
  *(a1 + 64) = result;
  *(a1 + 72) = v14;
  return result;
}

double sub_1CFE8222C()
{
  v1 = v0;
  v2 = 0.0;
  if (!sub_1CFE823C4())
  {
    v3 = type metadata accessor for OvernightMetricsChartPointBackground();
    v4 = v0 + *(v3 + 20);
    v5 = *(v4 + 16);
    v16 = *v4;
    v17 = v5;
    v6 = *(v4 + 48);
    v18 = *(v4 + 32);
    v19 = v6;
    v20 = *(v4 + 64);
    v7 = v16;
    if (v16)
    {
      v8 = *(&v16 + 1);
      v2 = *(&v17 + 1);
      v9 = *(&v18 + 1);
    }

    else
    {
      if (qword_1EDEC27D8 != -1)
      {
        swift_once();
      }

      v10 = qword_1EDEC82D0;
      swift_getKeyPath();
      v15[0] = v10;
      sub_1CFE825E8();
      sub_1CFF0C8DC();

      v7 = *(v10 + 16);
      v8 = *(v10 + 24);
      v2 = *(v10 + 40);
      v9 = *(v10 + 56);
    }

    v11 = *(v1 + *(v3 + 24));
    sub_1CFE530D8(&v16, v15);
    if (sub_1CFEE41A4(v1, v7))
    {
    }

    else
    {
      v12 = sub_1CFEE41A4(v1, v8);

      v13 = 0.26;
      if (v11)
      {
        v13 = 0.0;
      }

      if (v12)
      {
        return v9;
      }

      else
      {
        return v13;
      }
    }
  }

  return v2;
}

BOOL sub_1CFE823C4()
{
  v1 = type metadata accessor for OvernightMetricsChartPointBackground();
  if (*(v0 + v1[7]) != 1)
  {
    return 0;
  }

  v2 = v0 + v1[5];
  v3 = *(v2 + 16);
  v32 = *v2;
  v33 = v3;
  v4 = *(v2 + 48);
  v34 = *(v2 + 32);
  v35 = v4;
  v36 = *(v2 + 64);
  v5 = v32;
  if (v32)
  {
    v6 = *(&v32 + 1);
    v8 = v33;
    v7 = v34;
    v9 = *(&v35 + 1);
    v10 = v35;
    v11 = v36;
  }

  else
  {
    v12 = v1;
    if (qword_1EDEC27D8 != -1)
    {
      swift_once();
    }

    v13 = qword_1EDEC82D0;
    swift_getKeyPath();
    *&v27 = v13;
    sub_1CFE825E8();
    sub_1CFF0C8DC();

    v14 = *(v13 + 32);
    v15 = *(v13 + 48);
    v16 = *(v13 + 64);
    v31 = *(v13 + 80);
    v29 = v15;
    v30 = v16;
    v28 = v14;
    v27 = *(v13 + 16);
    v9 = *(&v16 + 1);
    v11 = v31;
    v10 = v16;
    v23 = v14;
    v24 = v15;
    v6 = *(&v27 + 1);
    v5 = v27;
    sub_1CFE5307C(&v27, v26);
    v8 = v23;
    v7 = v24;
    v1 = v12;
  }

  *&v27 = v5;
  *(&v27 + 1) = v6;
  v25 = *&v7;
  v28 = v8;
  v29 = v7;
  *&v30 = v10;
  *(&v30 + 1) = v9;
  v31 = v11;
  v17 = v1[8];
  v18 = v0 + *(type metadata accessor for IndividualOvernightMetricChartPoint(0) + 32);
  if (*(v18 + 8))
  {
    sub_1CFE530D8(&v32, v26);
LABEL_13:
    sub_1CFE531B0(&v27);
    return 0;
  }

  v19 = *v18;
  sub_1CFE530D8(&v32, v26);
  if ((sub_1CFEE41A4(v0, v5) & 1) != 0 && v25 < 1.0)
  {
    goto LABEL_13;
  }

  v20 = type metadata accessor for OvernightMetricsChartLayout(0);
  if (*(v6 + 16) < 2uLL)
  {
    goto LABEL_13;
  }

  v21 = sub_1CFEE43BC(*(v0 + v17 + *(v20 + 20) + 32), v19);
  sub_1CFE531B0(&v27);
  return v21;
}

unint64_t sub_1CFE825E8()
{
  result = qword_1EDEC27D0;
  if (!qword_1EDEC27D0)
  {
    type metadata accessor for GlobalOvernightMetricsChartAnimationState();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEC27D0);
  }

  return result;
}

void sub_1CFE82640()
{
  if (!qword_1EDEC1CA8)
  {
    sub_1CFE82720(255, &qword_1EDEC1D28, sub_1CFE826F8);
    sub_1CFE82810(255, &qword_1EDEC1C08, MEMORY[0x1E69E6370], MEMORY[0x1E69E6388], MEMORY[0x1E697F540]);
    v0 = sub_1CFF0D62C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDEC1CA8);
    }
  }
}

void sub_1CFE82720(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

void sub_1CFE82784()
{
  if (!qword_1EDEC1F28)
  {
    sub_1CFE82810(255, &qword_1EDEC1AD8, MEMORY[0x1E69815C0], MEMORY[0x1E6981568], MEMORY[0x1E6980480]);
    v0 = sub_1CFF0D62C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDEC1F28);
    }
  }
}

void sub_1CFE82810(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

unint64_t sub_1CFE82864()
{
  result = qword_1EDEC1D30;
  if (!qword_1EDEC1D30)
  {
    sub_1CFE82720(255, &qword_1EDEC1D28, sub_1CFE826F8);
    sub_1CFE82908();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEC1D30);
  }

  return result;
}

unint64_t sub_1CFE82908()
{
  result = qword_1EDEC1E00;
  if (!qword_1EDEC1E00)
  {
    sub_1CFE826F8(255);
    sub_1CFE829CC(&qword_1EDEC1F30, sub_1CFE82784, sub_1CFE82A58, sub_1CFE82AAC);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEC1E00);
  }

  return result;
}

uint64_t sub_1CFE829CC(unint64_t *a1, void (*a2)(uint64_t), void (*a3)(void), void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1CFE82A58()
{
  result = qword_1EDEC19D0;
  if (!qword_1EDEC19D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEC19D0);
  }

  return result;
}

unint64_t sub_1CFE82AAC()
{
  result = qword_1EDEC1AE0;
  if (!qword_1EDEC1AE0)
  {
    sub_1CFE82810(255, &qword_1EDEC1AD8, MEMORY[0x1E69815C0], MEMORY[0x1E6981568], MEMORY[0x1E6980480]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEC1AE0);
  }

  return result;
}

unint64_t sub_1CFE82B30()
{
  result = qword_1EDEC1C10;
  if (!qword_1EDEC1C10)
  {
    sub_1CFE82810(255, &qword_1EDEC1C08, MEMORY[0x1E69E6370], MEMORY[0x1E69E6388], MEMORY[0x1E697F540]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEC1C10);
  }

  return result;
}

id sub_1CFE82BB4()
{
  result = [objc_opt_self() sharedBehavior];
  if (result)
  {
    v1 = result;
    v2 = [result isAppleInternalInstall];

    if (v2 && (sub_1CFF0E59C(), v3 = objc_allocWithZone(MEMORY[0x1E695E000]), v4 = sub_1CFF0E56C(), , v5 = [v3 initWithSuiteName_], v4, v5))
    {
      v6 = sub_1CFF0E56C();
      v7 = [v5 BOOLForKey_];

      v8 = v7 ^ 1;
    }

    else
    {
      v8 = 1;
    }

    return (v8 & ~sub_1CFF0E3DC() & 1);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1CFE82CEC()
{
  sub_1CFE83D30(0, qword_1EDEC3470, type metadata accessor for OvernightMetricsWarmupProgress, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v10 - v1;
  v3 = type metadata accessor for OvernightMetricsWarmupProgress();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFEC1EB4(v2);
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    sub_1CFE83CC0(v2, qword_1EDEC3470, type metadata accessor for OvernightMetricsWarmupProgress);
    goto LABEL_5;
  }

  sub_1CFE83D94(v2, v6);
  v7 = sub_1CFF0CA3C();
  v8 = sub_1CFF0CA5C();
  result = sub_1CFE83DF8(v6);
  if (!__OFSUB__(v7, v8))
  {
    if (v7 - v8 > 0)
    {
      return sub_1CFF0E3BC();
    }

LABEL_5:
    sub_1CFEBFD10();
    return sub_1CFF0E3BC();
  }

  __break(1u);
  return result;
}

uint64_t sub_1CFE82EE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v59 = a2;
  v55 = sub_1CFF0C38C();
  v53 = *(v55 - 8);
  MEMORY[0x1EEE9AC00](v55);
  v52 = &v47 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1CFF0C39C();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v51 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFE83670();
  v56 = *(v6 - 8);
  v57 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v54 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1CFF0D03C();
  v58 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v47 - v12;
  sub_1CFE83D30(0, &qword_1EDEC4D28, MEMORY[0x1E6968130], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v47 - v15;
  v17 = sub_1CFF0C49C();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v47 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v47 - v22;
  sub_1CFE836C4(a1, v16);
  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {
    sub_1CFE83CC0(v16, &qword_1EDEC4D28, MEMORY[0x1E6968130]);
    sub_1CFF0D01C();
    v24 = sub_1CFF0D02C();
    v25 = sub_1CFF0E7EC();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v60 = v27;
      *v26 = 136446210;
      *(v26 + 4) = sub_1CFE462A4(0xD00000000000001ELL, 0x80000001CFF11020, &v60);
      _os_log_impl(&dword_1CFE44000, v24, v25, "[%{public}s] no widget relevance", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v27);
      MEMORY[0x1D387A160](v27, -1, -1);
      MEMORY[0x1D387A160](v26, -1, -1);
    }

    (*(v58 + 8))(v10, v8);
    return sub_1CFF0E34C();
  }

  else
  {
    v50 = v8;
    (*(v18 + 32))(v23, v16, v17);
    sub_1CFF0D01C();
    (*(v18 + 16))(v20, v23, v17);
    v29 = sub_1CFF0D02C();
    v30 = sub_1CFF0E7EC();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v60 = v49;
      *v31 = 136446466;
      *(v31 + 4) = sub_1CFE462A4(0xD00000000000001ELL, 0x80000001CFF11020, &v60);
      *(v31 + 12) = 2082;
      sub_1CFE83C68();
      v48 = v30;
      v32 = sub_1CFF0EB9C();
      v34 = v33;
      v47 = v29;
      v35 = *(v18 + 8);
      v35(v20, v17);
      v36 = sub_1CFE462A4(v32, v34, &v60);

      *(v31 + 14) = v36;
      v37 = v47;
      _os_log_impl(&dword_1CFE44000, v47, v48, "[%{public}s] relevant for dates %{public}s", v31, 0x16u);
      v38 = v49;
      swift_arrayDestroy();
      MEMORY[0x1D387A160](v38, -1, -1);
      MEMORY[0x1D387A160](v31, -1, -1);

      v39 = v35;
    }

    else
    {

      v39 = *(v18 + 8);
      v39(v20, v17);
    }

    (*(v58 + 8))(v13, v50);
    v40 = v52;
    sub_1CFF0C37C();
    sub_1CFF0C36C();
    (*(v53 + 8))(v40, v55);
    v41 = v54;
    sub_1CFF0E2EC();
    sub_1CFE83D30(0, &qword_1EDEC15E0, sub_1CFE83670, MEMORY[0x1E69E6F90]);
    v42 = v56;
    v43 = (*(v56 + 80) + 32) & ~*(v56 + 80);
    v44 = swift_allocObject();
    *(v44 + 16) = xmmword_1CFF10480;
    v45 = v44 + v43;
    v46 = v57;
    (*(v42 + 16))(v45, v41, v57);
    sub_1CFF0E34C();
    (*(v42 + 8))(v41, v46);
    return (v39)(v23, v17);
  }
}

void sub_1CFE83670()
{
  if (!qword_1EDEC17D0)
  {
    v0 = sub_1CFF0E2FC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDEC17D0);
    }
  }
}

uint64_t sub_1CFE836C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v47 = a2;
  v3 = sub_1CFF0CD6C();
  v43 = *(v3 - 8);
  v44 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v42 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x1E69E6720];
  sub_1CFE83D30(0, &qword_1EDEC4CB0, MEMORY[0x1E69A2EB8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v38 - v10;
  sub_1CFE83D30(0, &qword_1EDEC4CF8, MEMORY[0x1E6969530], v5);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v38 - v13;
  v15 = sub_1CFF0C7AC();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v41 = &v38 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v40 = &v38 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v39 = &v38 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v45 = &v38 - v23;
  v46 = a1;
  OvernightMetricsViewModel.daySummaryForToday.getter(v11);
  v24 = sub_1CFF0CC0C();
  v25 = *(v24 - 8);
  v26 = *(v25 + 48);
  if (v26(v11, 1, v24) == 1)
  {
    sub_1CFE83CC0(v11, &qword_1EDEC4CB0, MEMORY[0x1E69A2EB8]);
    (*(v16 + 56))(v14, 1, 1, v15);
LABEL_4:
    sub_1CFE83CC0(v14, &qword_1EDEC4CF8, MEMORY[0x1E6969530]);
    goto LABEL_5;
  }

  sub_1CFF0CF5C();
  v27 = *(v25 + 8);
  v27(v11, v24);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    goto LABEL_4;
  }

  v38 = v27;
  v32 = v45;
  (*(v16 + 32))(v45, v14, v15);
  OvernightMetricsViewModel.daySummaryForToday.getter(v8);
  if (v26(v8, 1, v24) == 1)
  {
    sub_1CFE83CC0(v8, &qword_1EDEC4CB0, MEMORY[0x1E69A2EB8]);
  }

  else
  {
    v33 = v42;
    sub_1CFF0CBAC();
    v38(v8, v24);
    v34 = sub_1CFF0CC6C();
    (*(v43 + 8))(v33, v44);
    if (v34)
    {
      v35 = v39;
      sub_1CFF0C76C();
      v36 = *(v16 + 16);
      v36(v40, v32, v15);
      v36(v41, v35, v15);
      v29 = v47;
      sub_1CFF0C46C();
      v37 = *(v16 + 8);
      v37(v35, v15);
      v37(v32, v15);
      v28 = 0;
      goto LABEL_6;
    }
  }

  (*(v16 + 8))(v32, v15);
LABEL_5:
  v28 = 1;
  v29 = v47;
LABEL_6:
  v30 = sub_1CFF0C49C();
  return (*(*(v30 - 8) + 56))(v29, v28, 1, v30);
}

unint64_t sub_1CFE83C68()
{
  result = qword_1EDEC49C0;
  if (!qword_1EDEC49C0)
  {
    sub_1CFF0C49C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEC49C0);
  }

  return result;
}

uint64_t sub_1CFE83CC0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1CFE83D30(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_1CFE83D30(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1CFE83D94(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OvernightMetricsWarmupProgress();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1CFE83DF8(uint64_t a1)
{
  v2 = type metadata accessor for OvernightMetricsWarmupProgress();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1CFE83F00@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v80 = a1;
  v3 = sub_1CFF0DA3C();
  v81 = *(v3 - 8);
  v82 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v79 = &v68 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFE866D0(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v78 = &v68 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = type metadata accessor for BalanceWidgetSystemSmallSpecs();
  MEMORY[0x1EEE9AC00](v71);
  v73 = &v68 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v68 - v9;
  sub_1CFE86768();
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v68 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFE868D0(0);
  v68 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v68 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFE8695C(0);
  v69 = v17;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v68 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFE88138(0, &qword_1EDEC1D08, sub_1CFE8695C, &qword_1EDEC1AB8, &type metadata for OvernightMetricsChartSpec);
  v70 = v20;
  MEMORY[0x1EEE9AC00](v20);
  v72 = &v68 - v21;
  sub_1CFE86984();
  v74 = v22;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v68 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFE86A10();
  v76 = *(v25 - 8);
  v77 = v25;
  MEMORY[0x1EEE9AC00](v25);
  v75 = &v68 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v13 = sub_1CFF0D8EC();
  *(v13 + 1) = 0;
  v13[16] = 0;
  sub_1CFE88A08(0, &qword_1EDEC20A8, sub_1CFE867FC);
  v28 = &v13[*(v27 + 44)];
  v83 = v2;
  sub_1CFE8479C(v2, v28);
  sub_1CFE88530(0, &qword_1EDEC15F0, MEMORY[0x1E6980D50], MEMORY[0x1E69E6F90]);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_1CFF0FCB0;
  v30 = sub_1CFF0DADC();
  *(v29 + 32) = v30;
  v31 = sub_1CFF0DAFC();
  *(v29 + 33) = v31;
  v32 = sub_1CFF0DAEC();
  sub_1CFF0DAEC();
  if (sub_1CFF0DAEC() != v30)
  {
    v32 = sub_1CFF0DAEC();
  }

  sub_1CFF0DAEC();
  if (sub_1CFF0DAEC() != v31)
  {
    v32 = sub_1CFF0DAEC();
  }

  sub_1CFF0D40C();
  v34 = v33;
  v36 = v35;
  v38 = v37;
  v40 = v39;
  sub_1CFE86D2C(v13, v16, sub_1CFE86768);
  v41 = &v16[*(v68 + 36)];
  *v41 = v32;
  *(v41 + 1) = v34;
  *(v41 + 2) = v36;
  *(v41 + 3) = v38;
  *(v41 + 4) = v40;
  v41[40] = 0;
  v42 = sub_1CFF0DACC();
  v43 = v83;
  sub_1CFE864C8(type metadata accessor for BalanceWidgetSystemSmallView, v10);
  sub_1CFF0D60C();
  sub_1CFE88B40(v10, type metadata accessor for BalanceWidgetSystemSmallSpecs);
  sub_1CFF0D40C();
  v45 = v44;
  v47 = v46;
  v49 = v48;
  v51 = v50;
  sub_1CFE86D2C(v16, v19, sub_1CFE868D0);
  v52 = &v19[*(v69 + 36)];
  *v52 = v42;
  *(v52 + 1) = v45;
  *(v52 + 2) = v47;
  *(v52 + 3) = v49;
  *(v52 + 4) = v51;
  v52[40] = 0;
  KeyPath = swift_getKeyPath();
  v54 = v73;
  sub_1CFE864C8(type metadata accessor for BalanceWidgetSystemSmallView, v73);
  sub_1CFEE1080(v43, v85);
  sub_1CFE88B40(v54, type metadata accessor for BalanceWidgetSystemSmallSpecs);
  v86[0] = KeyPath;
  memcpy(&v86[1], v85, 0x118uLL);
  v55 = v72;
  sub_1CFE86D2C(v19, v72, sub_1CFE8695C);
  memcpy((v55 + *(v70 + 36)), v86, 0x120uLL);
  v87 = KeyPath;
  memcpy(v88, v85, sizeof(v88));
  sub_1CFE86D94(v86, v84);
  sub_1CFE86E1C(&v87);
  sub_1CFF0E0CC();
  sub_1CFF0D6BC();
  sub_1CFE86E9C(v55, v24);
  v56 = v74;
  v57 = &v24[*(v74 + 36)];
  v58 = v84[5];
  *(v57 + 4) = v84[4];
  *(v57 + 5) = v58;
  *(v57 + 6) = v84[6];
  v59 = v84[1];
  *v57 = v84[0];
  *(v57 + 1) = v59;
  v60 = v84[3];
  *(v57 + 2) = v84[2];
  *(v57 + 3) = v60;
  v61 = v78;
  sub_1CFEC09A8(0, v78);
  v62 = sub_1CFF0C63C();
  (*(*(v62 - 8) + 56))(v61, 0, 1, v62);
  v63 = sub_1CFE86BD0(&qword_1EDEC1CA0, sub_1CFE86984, sub_1CFE86ACC);
  v64 = v75;
  sub_1CFF0DD0C();
  sub_1CFE88B40(v61, sub_1CFE866D0);
  sub_1CFE88B40(v24, sub_1CFE86984);
  v65 = v79;
  sub_1CFF0DA2C();
  v85[0] = v56;
  v85[1] = v63;
  swift_getOpaqueTypeConformance2();
  v66 = v77;
  sub_1CFF0DDAC();
  (*(v81 + 8))(v65, v82);
  return (*(v76 + 8))(v64, v66);
}

uint64_t sub_1CFE8479C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for BalanceWidgetSystemSmallTitleView(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v34 - v8;
  v10 = type metadata accessor for BalanceWidgetSystemSmallSpecs();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for OvernightMetricsViewModel(0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for OvernightMetricsChart(0);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v39 = &v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFE868A8(0);
  v35 = v18;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v34 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v36 = &v34 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v37 = &v34 - v24;
  sub_1CFF0E6DC();
  v38 = sub_1CFF0E6CC();
  sub_1CFF0E66C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  LOBYTE(v40[0]) = *(a1 + *(type metadata accessor for BalanceWidgetViewModel() + 24));
  sub_1CFE885FC(a1, v15, type metadata accessor for OvernightMetricsViewModel);
  OvernightMetricsChart.init(timeScope:model:alignWarmupProgressCounterToChartPlotArea:)(v40, v15, 1, v39);
  sub_1CFE864C8(type metadata accessor for BalanceWidgetSystemSmallView, v12);
  sub_1CFEE0EA8();
  sub_1CFE88B40(v12, type metadata accessor for BalanceWidgetSystemSmallSpecs);
  sub_1CFF0E0EC();
  sub_1CFF0D6BC();
  v25 = v36;
  sub_1CFE86D2C(v39, v36, type metadata accessor for OvernightMetricsChart);
  v26 = (v25 + *(v35 + 36));
  v27 = v40[5];
  v26[4] = v40[4];
  v26[5] = v27;
  v26[6] = v40[6];
  v28 = v40[1];
  *v26 = v40[0];
  v26[1] = v28;
  v29 = v40[3];
  v26[2] = v40[2];
  v26[3] = v29;
  v30 = v37;
  sub_1CFE86D2C(v25, v37, sub_1CFE868A8);
  sub_1CFE885FC(a1, v9, type metadata accessor for BalanceWidgetViewModel);
  *&v9[*(v4 + 20)] = swift_getKeyPath();
  sub_1CFE86F2C(0);
  swift_storeEnumTagMultiPayload();
  sub_1CFE885FC(v30, v20, sub_1CFE868A8);
  sub_1CFE885FC(v9, v6, type metadata accessor for BalanceWidgetSystemSmallTitleView);
  sub_1CFE885FC(v20, a2, sub_1CFE868A8);
  sub_1CFE86830();
  v32 = a2 + *(v31 + 48);
  *v32 = 0x4010000000000000;
  *(v32 + 8) = 0;
  sub_1CFE885FC(v6, a2 + *(v31 + 64), type metadata accessor for BalanceWidgetSystemSmallTitleView);
  sub_1CFE88B40(v9, type metadata accessor for BalanceWidgetSystemSmallTitleView);
  sub_1CFE88B40(v30, sub_1CFE868A8);
  sub_1CFE88B40(v6, type metadata accessor for BalanceWidgetSystemSmallTitleView);
  sub_1CFE88B40(v20, sub_1CFE868A8);
}

uint64_t sub_1CFE84D40@<X0>(uint64_t a1@<X8>)
{
  v50[1] = a1;
  sub_1CFE87B10();
  v50[0] = v2;
  MEMORY[0x1EEE9AC00](v2);
  v4 = v50 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for BalanceWidgetSystemSmallSpecs();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFE87BA4();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFE88088(0);
  v51 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v13 = v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFE880B0(0);
  v52 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v16 = v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFE880D8(0);
  v53 = v17;
  MEMORY[0x1EEE9AC00](v17);
  v19 = v50 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFE88108(0);
  v54 = v20;
  MEMORY[0x1EEE9AC00](v20);
  v22 = v50 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_1CFF0D8EC();
  sub_1CFE864C8(type metadata accessor for BalanceWidgetSystemSmallTitleView, v7);
  sub_1CFEE1AFC();
  v25 = v24;
  sub_1CFE88B40(v7, type metadata accessor for BalanceWidgetSystemSmallSpecs);
  *v10 = v23;
  *(v10 + 1) = v25;
  v10[16] = 0;
  sub_1CFE88A08(0, &qword_1EDEC20A0, sub_1CFE87C38);
  sub_1CFE853DC(v1, &v10[*(v26 + 44)]);
  sub_1CFE88530(0, &qword_1EDEC15F0, MEMORY[0x1E6980D50], MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CFF0FCB0;
  LOBYTE(v23) = sub_1CFF0DADC();
  *(inited + 32) = v23;
  v28 = sub_1CFF0DAFC();
  *(inited + 33) = v28;
  v29 = sub_1CFF0DAEC();
  sub_1CFF0DAEC();
  if (sub_1CFF0DAEC() != v23)
  {
    v29 = sub_1CFF0DAEC();
  }

  sub_1CFF0DAEC();
  if (sub_1CFF0DAEC() != v28)
  {
    v29 = sub_1CFF0DAEC();
  }

  sub_1CFF0D40C();
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v37 = v36;
  sub_1CFE8828C(v10, v13, sub_1CFE87BA4);
  v38 = &v13[*(v51 + 36)];
  *v38 = v29;
  *(v38 + 1) = v31;
  *(v38 + 2) = v33;
  *(v38 + 3) = v35;
  *(v38 + 4) = v37;
  v38[40] = 0;
  sub_1CFF0E0FC();
  sub_1CFF0D6BC();
  sub_1CFE8828C(v13, v16, sub_1CFE88088);
  v39 = &v16[*(v52 + 36)];
  v40 = v60;
  *(v39 + 4) = v59;
  *(v39 + 5) = v40;
  *(v39 + 6) = v61;
  v41 = v56;
  *v39 = v55;
  *(v39 + 1) = v41;
  v42 = v58;
  *(v39 + 2) = v57;
  *(v39 + 3) = v42;
  KeyPath = swift_getKeyPath();
  sub_1CFE8828C(v16, v19, sub_1CFE880B0);
  v44 = &v19[*(v53 + 36)];
  *v44 = KeyPath;
  v44[8] = 1;
  v45 = swift_getKeyPath();
  sub_1CFE8828C(v19, v22, sub_1CFE880D8);
  v46 = &v22[*(v54 + 36)];
  *v46 = v45;
  v46[1] = 0x3FE0000000000000;
  v47 = *MEMORY[0x1E697E728];
  v48 = sub_1CFF0D61C();
  (*(*(v48 - 8) + 104))(v4, v47, v48);
  sub_1CFE88C34(&qword_1EDEC2050, MEMORY[0x1E697E730]);
  result = sub_1CFF0E4CC();
  if (result)
  {
    sub_1CFE882F4();
    sub_1CFE88C34(&qword_1EDEC1638, sub_1CFE87B10);
    sub_1CFF0DD6C();
    sub_1CFE88B40(v4, sub_1CFE87B10);
    return sub_1CFE88664(v22, sub_1CFE88108);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1CFE853DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v121 = a2;
  sub_1CFE87EA4();
  v120 = v3;
  v113 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v112 = v106 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFE87E00(0, &qword_1EDEC1BC0, type metadata accessor for BalanceWidgetSystemSmallWarmupDetailsView, sub_1CFE87EA4, MEMORY[0x1E697F948]);
  v116 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v118 = v106 - v6;
  v117 = type metadata accessor for BalanceWidgetSystemSmallWarmupDetailsView(0);
  MEMORY[0x1EEE9AC00](v117);
  v108 = v106 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFE884FC(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v125 = v106 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for OvernightMetricsWarmupProgress();
  v123 = *(v10 - 8);
  v124 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v110 = v106 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFE87DB8(0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v119 = v106 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = v106 - v15;
  v17 = sub_1CFF0DB9C();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = v106 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1CFF0C80C();
  MEMORY[0x1EEE9AC00](v21 - 8);
  v22 = sub_1CFF0E55C();
  MEMORY[0x1EEE9AC00](v22 - 8);
  sub_1CFE87D10(0);
  v130 = v23;
  v122 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v127 = v106 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v109 = v106 - v26;
  v27 = type metadata accessor for BalanceWidgetSystemSmallSpecs();
  MEMORY[0x1EEE9AC00](v27 - 8);
  v111 = v106 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v129 = (v106 - v30);
  sub_1CFE87CDC(0);
  MEMORY[0x1EEE9AC00](v31 - 8);
  v115 = v106 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v128 = v106 - v34;
  sub_1CFF0E6DC();
  v114 = sub_1CFF0E6CC();
  sub_1CFF0E66C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v35 = v129;
  sub_1CFE864C8(type metadata accessor for BalanceWidgetSystemSmallTitleView, v129);
  sub_1CFE88B40(v35, type metadata accessor for BalanceWidgetSystemSmallSpecs);
  v36 = *(a1 + *(type metadata accessor for BalanceWidgetViewModel() + 28));
  v126 = v16;
  v131 = a1;
  if (v36)
  {
    v37 = 1;
    v38 = v128;
  }

  else
  {
    sub_1CFF0E4DC();
    type metadata accessor for HealthBalanceUI();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v40 = [objc_opt_self() bundleForClass_];
    sub_1CFF0C7FC();
    v133 = sub_1CFF0E5AC();
    v134 = v41;
    sub_1CFE60C24();
    v42 = sub_1CFF0DC6C();
    v44 = v43;
    v46 = v45;
    v107 = type metadata accessor for BalanceWidgetSystemSmallTitleView;
    sub_1CFE864C8(type metadata accessor for BalanceWidgetSystemSmallTitleView, v35);
    sub_1CFF0DBDC();
    (*(v18 + 104))(v20, *MEMORY[0x1E6980EA8], v17);
    sub_1CFF0DBCC();

    (*(v18 + 8))(v20, v17);
    sub_1CFF0DB4C();
    sub_1CFF0DB8C();

    sub_1CFE88B40(v35, type metadata accessor for BalanceWidgetSystemSmallSpecs);
    v47 = sub_1CFF0DC3C();
    v49 = v48;
    v51 = v50;
    v106[1] = v52;
    sub_1CFE60C78(v42, v44, v46 & 1);

    sub_1CFE864C8(v107, v35);
    v53 = sub_1CFF0DEEC();
    sub_1CFE88B40(v35, type metadata accessor for BalanceWidgetSystemSmallSpecs);
    v133 = v53;
    v54 = sub_1CFF0DC2C();
    v56 = v55;
    v58 = v57;
    v60 = v59;
    v107 = v59;
    sub_1CFE60C78(v47, v49, v51 & 1);

    KeyPath = swift_getKeyPath();
    v133 = v54;
    v134 = v56;
    v135 = v58 & 1;
    v136 = v60;
    v137 = KeyPath;
    v138 = 1;
    v139 = 0;
    v132 = &unk_1F4C90770;
    sub_1CFEE098C(&unk_1F4C90820);
    sub_1CFE88530(0, &qword_1EDEC1718, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    sub_1CFE88580();
    sub_1CFF0E47C();

    sub_1CFE87D58();
    sub_1CFE87FD8();
    v62 = v109;
    a1 = v131;
    sub_1CFF0DDCC();
    swift_arrayDestroy();
    v16 = v126;
    sub_1CFE60C78(v54, v56, v58 & 1);

    v38 = v128;
    sub_1CFE86D2C(v62, v128, sub_1CFE87D10);
    v37 = 0;
  }

  (*(v122 + 56))(v38, v37, 1, v130);
  v63 = v125;
  sub_1CFEC1EB4(v125);
  if ((*(v123 + 48))(v63, 1, v124) == 1)
  {
    sub_1CFE88B40(v63, sub_1CFE884FC);
    v64 = v129;
    goto LABEL_11;
  }

  v65 = v110;
  sub_1CFE86D2C(v63, v110, type metadata accessor for OvernightMetricsWarmupProgress);
  v66 = sub_1CFF0CA3C();
  v67 = sub_1CFF0CA5C();
  result = sub_1CFE88B40(v65, type metadata accessor for OvernightMetricsWarmupProgress);
  v69 = v66 - v67;
  if (!__OFSUB__(v66, v67))
  {
    v64 = v129;
    if (v69 > 0)
    {
      v70 = v108;
      sub_1CFE885FC(a1, v108, type metadata accessor for BalanceWidgetViewModel);
      *(v70 + *(v117 + 20)) = swift_getKeyPath();
      sub_1CFE86F2C(0);
      swift_storeEnumTagMultiPayload();
      sub_1CFE885FC(v70, v118, type metadata accessor for BalanceWidgetSystemSmallWarmupDetailsView);
      swift_storeEnumTagMultiPayload();
      sub_1CFE88C34(qword_1EDEC41F0, type metadata accessor for BalanceWidgetSystemSmallWarmupDetailsView);
      v71 = sub_1CFE87F28();
      v133 = v130;
      v134 = v71;
      swift_getOpaqueTypeConformance2();
      sub_1CFF0D93C();
      sub_1CFE88B40(v70, type metadata accessor for BalanceWidgetSystemSmallWarmupDetailsView);
      v72 = v115;
LABEL_15:
      sub_1CFE885FC(v38, v72, sub_1CFE87CDC);
      v103 = v119;
      sub_1CFE4A5E8(v16, v119);
      v104 = v121;
      sub_1CFE885FC(v72, v121, sub_1CFE87CDC);
      sub_1CFE87C6C();
      sub_1CFE4A5E8(v103, v104 + *(v105 + 48));
      sub_1CFE88664(v16, sub_1CFE87DB8);
      sub_1CFE88B40(v38, sub_1CFE87CDC);
      sub_1CFE88664(v103, sub_1CFE87DB8);
      sub_1CFE88B40(v72, sub_1CFE87CDC);
    }

LABEL_11:
    v133 = sub_1CFEC12E8();
    v134 = v73;
    sub_1CFE60C24();
    v74 = sub_1CFF0DC6C();
    v76 = v75;
    v78 = v77;
    v129 = type metadata accessor for BalanceWidgetSystemSmallTitleView;
    sub_1CFE864C8(type metadata accessor for BalanceWidgetSystemSmallTitleView, v64);
    sub_1CFEE1CD0();
    sub_1CFE88B40(v64, type metadata accessor for BalanceWidgetSystemSmallSpecs);
    v79 = sub_1CFF0DC3C();
    v124 = v81;
    v125 = v80;
    v83 = v82;

    sub_1CFE60C78(v74, v76, v78 & 1);

    sub_1CFE864C8(type metadata accessor for BalanceWidgetSystemSmallTitleView, v64);
    v84 = sub_1CFEE1FE0();
    sub_1CFE88B40(v64, type metadata accessor for BalanceWidgetSystemSmallSpecs);
    v133 = v84;
    v85 = v125;
    v86 = sub_1CFF0DC2C();
    v88 = v87;
    v90 = v89;
    v92 = v91;
    sub_1CFE60C78(v79, v85, v83 & 1);

    v93 = swift_getKeyPath();
    v133 = v86;
    v134 = v88;
    v135 = v90 & 1;
    v136 = v92;
    v137 = v93;
    v138 = 2;
    v139 = 0;
    v132 = &unk_1F4C90770;
    sub_1CFEE098C(&unk_1F4C90860);
    sub_1CFE88530(0, &qword_1EDEC1718, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    sub_1CFE88580();
    sub_1CFF0E47C();

    sub_1CFE87D58();
    sub_1CFE87FD8();
    sub_1CFF0DDCC();
    swift_arrayDestroy();
    sub_1CFE60C78(v86, v88, v90 & 1);

    v94 = v111;
    sub_1CFE864C8(v129, v111);
    v95 = sub_1CFEBFD10();
    if ((v96 & 1) != 0 || v95)
    {
      sub_1CFEBFD10();
    }

    v16 = v126;
    v97 = v113;
    v98 = v112;
    v72 = v115;
    sub_1CFE88B40(v94, type metadata accessor for BalanceWidgetSystemSmallSpecs);
    v99 = sub_1CFE87F28();
    v100 = v130;
    v101 = v127;
    sub_1CFF0DCFC();
    sub_1CFE88B40(v101, sub_1CFE87D10);
    v102 = v120;
    (*(v97 + 16))(v118, v98, v120);
    swift_storeEnumTagMultiPayload();
    sub_1CFE88C34(qword_1EDEC41F0, type metadata accessor for BalanceWidgetSystemSmallWarmupDetailsView);
    v133 = v100;
    v134 = v99;
    swift_getOpaqueTypeConformance2();
    sub_1CFF0D93C();
    (*(v97 + 8))(v98, v102);
    v38 = v128;
    goto LABEL_15;
  }

  __break(1u);
  return result;
}

uint64_t sub_1CFE864C8@<X0>(uint64_t (*a1)(void, double)@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1CFF0D80C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFE86F2C(0);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a1(0, v10);
  sub_1CFE885FC(v2 + *(v13 + 20), v12, sub_1CFE86F2C);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_1CFE86D2C(v12, a2, type metadata accessor for BalanceWidgetSystemSmallSpecs);
  }

  sub_1CFF0E7DC();
  v15 = sub_1CFF0DA6C();
  sub_1CFF0D00C();

  sub_1CFF0D7FC();
  swift_getAtKeyPath();

  return (*(v6 + 8))(v8, v5);
}

void sub_1CFE86704(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1CFE86768()
{
  if (!qword_1EDEC1998)
  {
    sub_1CFE867FC(255);
    sub_1CFE88C34(&qword_1EDEC1810, sub_1CFE867FC);
    v0 = sub_1CFF0DFFC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDEC1998);
    }
  }
}

void sub_1CFE86830()
{
  if (!qword_1EDEC2040)
  {
    sub_1CFE868A8(255);
    type metadata accessor for BalanceWidgetSystemSmallTitleView(255);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EDEC2040);
    }
  }
}

void sub_1CFE868F8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

void sub_1CFE86984()
{
  if (!qword_1EDEC1C98)
  {
    sub_1CFE88138(255, &qword_1EDEC1D08, sub_1CFE8695C, &qword_1EDEC1AB8, &type metadata for OvernightMetricsChartSpec);
    v0 = sub_1CFF0D62C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDEC1C98);
    }
  }
}

void sub_1CFE86A10()
{
  if (!qword_1EDEC1A10)
  {
    sub_1CFE86984();
    sub_1CFE86BD0(&qword_1EDEC1CA0, sub_1CFE86984, sub_1CFE86ACC);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EDEC1A10);
    }
  }
}

unint64_t sub_1CFE86ACC()
{
  result = qword_1EDEC1D10;
  if (!qword_1EDEC1D10)
  {
    sub_1CFE88138(255, &qword_1EDEC1D08, sub_1CFE8695C, &qword_1EDEC1AB8, &type metadata for OvernightMetricsChartSpec);
    sub_1CFE86BD0(&qword_1EDEC1DD0, sub_1CFE8695C, sub_1CFE86C50);
    sub_1CFE88498(&qword_1EDEC1AC0, &qword_1EDEC1AB8, &type metadata for OvernightMetricsChartSpec);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEC1D10);
  }

  return result;
}

uint64_t sub_1CFE86BD0(unint64_t *a1, void (*a2)(uint64_t), void (*a3)(void))
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

uint64_t sub_1CFE86C8C(unint64_t *a1, void (*a2)(uint64_t), unint64_t *a3, void (*a4)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    sub_1CFE88C34(a3, a4);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1CFE86D2C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1CFE86D94(uint64_t a1, uint64_t a2)
{
  sub_1CFE88530(0, &qword_1EDEC1AB8, &type metadata for OvernightMetricsChartSpec, MEMORY[0x1E6980A08]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1CFE86E1C(uint64_t a1)
{
  sub_1CFE88530(0, &qword_1EDEC1AB8, &type metadata for OvernightMetricsChartSpec, MEMORY[0x1E6980A08]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1CFE86E9C(uint64_t a1, uint64_t a2)
{
  sub_1CFE88138(0, &qword_1EDEC1D08, sub_1CFE8695C, &qword_1EDEC1AB8, &type metadata for OvernightMetricsChartSpec);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1CFE86F60@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v108 = a2;
  v100 = sub_1CFF0DB9C();
  v99 = *(v100 - 8);
  MEMORY[0x1EEE9AC00](v100);
  v98 = v92 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFE88B0C(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v92 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1CFF0DBEC();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v92 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for BalanceWidgetSystemSmallSpecs();
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = v92 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFE87D10(0);
  v112 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v111 = v92 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFE87EA4();
  v106 = *(v16 - 8);
  v107 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v105 = v92 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v104 = v92 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v103 = v92 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v110 = v92 - v23;
  sub_1CFF0E6DC();
  v102 = sub_1CFF0E6CC();
  sub_1CFF0E66C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v115 = sub_1CFEC1918();
  v116 = v24;
  v101 = sub_1CFE60C24();
  v25 = sub_1CFF0DC6C();
  v97 = v26;
  v113 = a1;
  v28 = v27;
  v96 = v29;
  v109 = type metadata accessor for BalanceWidgetSystemSmallWarmupDetailsView;
  sub_1CFE864C8(type metadata accessor for BalanceWidgetSystemSmallWarmupDetailsView, v13);
  (*(v8 + 104))(v10, *MEMORY[0x1E6980EE8], v7);
  v30 = *MEMORY[0x1E6980E28];
  v31 = sub_1CFF0DB2C();
  v32 = v7;
  v33 = v8;
  v34 = *(v31 - 8);
  (*(v34 + 104))(v6, v30, v31);
  (*(v34 + 56))(v6, 0, 1, v31);
  sub_1CFF0DB7C();
  sub_1CFE88B40(v6, sub_1CFE88B0C);
  (*(v33 + 8))(v10, v32);
  v35 = v99;
  v36 = v98;
  v37 = v100;
  (*(v99 + 104))(v98, *MEMORY[0x1E6980EA8], v100);
  sub_1CFF0DBCC();

  (*(v35 + 8))(v36, v37);
  v38 = v13;
  v94 = type metadata accessor for BalanceWidgetSystemSmallSpecs;
  sub_1CFE88B40(v13, type metadata accessor for BalanceWidgetSystemSmallSpecs);
  LOBYTE(v37) = v28;
  v39 = v25;
  v40 = v97;
  v41 = sub_1CFF0DC3C();
  v43 = v42;
  v45 = v44;
  v100 = v46;
  sub_1CFE60C78(v39, v40, v37 & 1);

  v47 = v38;
  v93 = v38;
  sub_1CFE864C8(v109, v38);
  v48 = sub_1CFF0DECC();
  sub_1CFE88B40(v47, type metadata accessor for BalanceWidgetSystemSmallSpecs);
  v115 = v48;
  v49 = sub_1CFF0DC2C();
  v51 = v50;
  LOBYTE(v47) = v52;
  v54 = v53;
  sub_1CFE60C78(v41, v43, v45 & 1);

  KeyPath = swift_getKeyPath();
  v115 = v49;
  v116 = v51;
  LOBYTE(v43) = v47 & 1;
  v117 = v47 & 1;
  v118 = v54;
  v119 = KeyPath;
  v120 = 1;
  v121 = 0;
  v114 = &unk_1F4C90770;
  sub_1CFEE098C(&unk_1F4C908A0);
  sub_1CFE88530(0, &qword_1EDEC1718, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
  v100 = v56;
  v99 = sub_1CFE88580();
  sub_1CFF0E47C();

  sub_1CFE87D58();
  v98 = v57;
  v97 = sub_1CFE87FD8();
  v58 = v111;
  sub_1CFF0DDCC();
  swift_arrayDestroy();
  sub_1CFE60C78(v49, v51, v43);

  v96 = sub_1CFE87F28();
  sub_1CFF0DCFC();
  v95 = sub_1CFE87D10;
  sub_1CFE88B40(v58, sub_1CFE87D10);
  v115 = sub_1CFEC12E8();
  v116 = v59;
  v60 = sub_1CFF0DC6C();
  v62 = v61;
  LOBYTE(v49) = v63;
  v64 = v93;
  v65 = v109;
  sub_1CFE864C8(v109, v93);
  sub_1CFEE21BC();
  v66 = v94;
  sub_1CFE88B40(v64, v94);
  v67 = sub_1CFF0DC3C();
  v101 = v68;
  LOBYTE(v43) = v69;
  v92[1] = v70;
  sub_1CFE60C78(v60, v62, v49 & 1);

  sub_1CFE864C8(v65, v64);
  v71 = sub_1CFF0DECC();
  sub_1CFE88B40(v64, v66);
  v115 = v71;
  v72 = v101;
  v73 = sub_1CFF0DC2C();
  v75 = v74;
  LOBYTE(v51) = v76;
  v78 = v77;
  sub_1CFE60C78(v67, v72, v43 & 1);

  v79 = swift_getKeyPath();
  v115 = v73;
  v116 = v75;
  LOBYTE(v51) = v51 & 1;
  v117 = v51;
  v118 = v78;
  v119 = v79;
  v120 = 2;
  v121 = 0;
  v114 = &unk_1F4C90770;
  sub_1CFEE098C(&unk_1F4C908E0);
  sub_1CFF0E47C();

  v80 = v111;
  sub_1CFF0DDCC();
  swift_arrayDestroy();
  sub_1CFE60C78(v73, v75, v51);

  v81 = v103;
  sub_1CFF0DCFC();
  sub_1CFE88B40(v80, v95);
  v83 = v106;
  v82 = v107;
  v84 = *(v106 + 16);
  v85 = v104;
  v86 = v110;
  v84(v104, v110, v107);
  v87 = v105;
  v84(v105, v81, v82);
  v88 = v108;
  v84(v108, v85, v82);
  sub_1CFE88AA8();
  v84(&v88[*(v89 + 48)], v87, v82);
  v90 = *(v83 + 8);
  v90(v81, v82);
  v90(v86, v82);
  v90(v87, v82);
  v90(v85, v82);
}

uint64_t sub_1CFE87A9C@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_1CFF0D84C();
  *(a1 + 8) = 0x4014000000000000;
  *(a1 + 16) = 0;
  sub_1CFE88A08(0, &qword_1EC5125A0, sub_1CFE88A74);
  return sub_1CFE86F60(v1, (a1 + *(v3 + 44)));
}

void sub_1CFE87B10()
{
  if (!qword_1EDEC1630)
  {
    sub_1CFF0D61C();
    sub_1CFE88C34(&qword_1EDEC2058, MEMORY[0x1E697E730]);
    v0 = sub_1CFF0EA8C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDEC1630);
    }
  }
}

void sub_1CFE87BA4()
{
  if (!qword_1EDEC1988)
  {
    sub_1CFE87C38(255);
    sub_1CFE88C34(&qword_1EDEC17F0, sub_1CFE87C38);
    v0 = sub_1CFF0DFFC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDEC1988);
    }
  }
}

void sub_1CFE87C6C()
{
  if (!qword_1EDEC1E68)
  {
    sub_1CFE87CDC(255);
    sub_1CFE87DB8(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDEC1E68);
    }
  }
}

void sub_1CFE87D58()
{
  if (!qword_1EDEC1FA8)
  {
    sub_1CFE607AC();
    v0 = sub_1CFF0D62C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDEC1FA8);
    }
  }
}

void sub_1CFE87E00(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

void sub_1CFE87EA4()
{
  if (!qword_1EDEC1A28)
  {
    sub_1CFE87D10(255);
    sub_1CFE87F28();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EDEC1A28);
    }
  }
}

unint64_t sub_1CFE87F28()
{
  result = qword_1EDEC1E80;
  if (!qword_1EDEC1E80)
  {
    sub_1CFE87D10(255);
    sub_1CFE87FD8();
    sub_1CFE88C34(&qword_1EDEC1A60, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEC1E80);
  }

  return result;
}

unint64_t sub_1CFE87FD8()
{
  result = qword_1EDEC1FB0;
  if (!qword_1EDEC1FB0)
  {
    sub_1CFE87D58();
    sub_1CFE88C34(&qword_1EDEC1A70, sub_1CFE607AC);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEC1FB0);
  }

  return result;
}

void sub_1CFE88138(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), unint64_t *a4, uint64_t a5)
{
  if (!*a2)
  {
    a3(255);
    sub_1CFE88530(255, a4, a5, MEMORY[0x1E6980A08]);
    v8 = sub_1CFF0D62C();
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_1CFE881D0@<X0>(uint64_t a1@<X8>)
{
  result = sub_1CFF0D7DC();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_1CFE88234@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1CFF0D70C();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1CFE8828C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1CFE882F4()
{
  result = qword_1EDEC1C90;
  if (!qword_1EDEC1C90)
  {
    sub_1CFE88108(255);
    sub_1CFE8838C();
    sub_1CFE88498(&qword_1EDEC1AB0, &qword_1EDEC1AA8, MEMORY[0x1E69E7DE0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEC1C90);
  }

  return result;
}

unint64_t sub_1CFE8838C()
{
  result = qword_1EDEC1D00;
  if (!qword_1EDEC1D00)
  {
    sub_1CFE880D8(255);
    sub_1CFE86BD0(&qword_1EDEC1DC0, sub_1CFE880B0, sub_1CFE8845C);
    sub_1CFE88498(&qword_1EDEC1A80, &qword_1EDEC1A78, MEMORY[0x1E69E6370]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEC1D00);
  }

  return result;
}

uint64_t sub_1CFE88498(unint64_t *a1, unint64_t *a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_1CFE88530(255, a2, a3, MEMORY[0x1E6980A08]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1CFE88530(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_1CFE88580()
{
  result = qword_1EDEC1710;
  if (!qword_1EDEC1710)
  {
    sub_1CFE88530(255, &qword_1EDEC1718, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEC1710);
  }

  return result;
}

uint64_t sub_1CFE885FC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1CFE88664(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t __swift_get_extra_inhabitant_indexTm_1(uint64_t a1, uint64_t a2, uint64_t a3)
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
    sub_1CFE86704(0, &qword_1EDEC2130, type metadata accessor for BalanceWidgetSystemSmallSpecs, MEMORY[0x1E697DCC0]);
    v11 = v10;
    v12 = *(*(v10 - 8) + 48);
    v13 = a1 + *(a3 + 20);

    return v12(v13, a2, v11);
  }
}

uint64_t __swift_store_extra_inhabitant_indexTm_1(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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
    sub_1CFE86704(0, &qword_1EDEC2130, type metadata accessor for BalanceWidgetSystemSmallSpecs, MEMORY[0x1E697DCC0]);
    v13 = v12;
    v14 = *(*(v12 - 8) + 56);
    v15 = a1 + *(a4 + 20);

    return v14(v15, a2, a2, v13);
  }
}

void sub_1CFE88938()
{
  type metadata accessor for BalanceWidgetViewModel();
  if (v0 <= 0x3F)
  {
    sub_1CFE86704(319, &qword_1EDEC2130, type metadata accessor for BalanceWidgetSystemSmallSpecs, MEMORY[0x1E697DCC0]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1CFE88A08(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1CFF0D58C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1CFE88AA8()
{
  if (!qword_1EC5125B0)
  {
    sub_1CFE87EA4();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC5125B0);
    }
  }
}

uint64_t sub_1CFE88B40(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1CFE88BA0()
{
  if (!qword_1EC5125C0)
  {
    sub_1CFE88A74(255);
    sub_1CFE88C34(&qword_1EC5125C8, sub_1CFE88A74);
    v0 = sub_1CFF0DFDC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC5125C0);
    }
  }
}

uint64_t sub_1CFE88C34(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for IndividualOvernightMetricChartPointCollection()
{
  result = qword_1EDEC4E18;
  if (!qword_1EDEC4E18)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1CFE88CF4()
{
  sub_1CFE55184();
  if (v0 <= 0x3F)
  {
    sub_1CFE709D4(319);
    if (v1 <= 0x3F)
    {
      sub_1CFE88DA8();
      if (v2 <= 0x3F)
      {
        sub_1CFE88DF8();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1CFE88DA8()
{
  if (!qword_1EDEC4D38)
  {
    v0 = sub_1CFF0E65C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDEC4D38);
    }
  }
}

void sub_1CFE88DF8()
{
  if (!qword_1EDEC4D80)
  {
    sub_1CFF0CCEC();
    sub_1CFE709D4(255);
    sub_1CFE8A0F4(&qword_1EDEC5188, MEMORY[0x1E69A2EF8]);
    v0 = sub_1CFF0E43C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDEC4D80);
    }
  }
}

uint64_t sub_1CFE88EA8(void *a1)
{
  v3 = v1;
  sub_1CFE89BF0(0, &qword_1EC5125D8, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v12 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CFE89AB4();
  sub_1CFF0EC9C();
  LOBYTE(v13) = 0;
  sub_1CFE55184();
  sub_1CFE89C54(&qword_1EC5125E8, &qword_1EC5125F0);
  sub_1CFF0EB7C();
  if (!v2)
  {
    v10 = type metadata accessor for IndividualOvernightMetricChartPointCollection();
    v13 = *(v3 + v10[5]);
    HIBYTE(v12) = 1;
    sub_1CFE709D4(0);
    sub_1CFE89D48(&qword_1EC5124E8, &qword_1EC5124F0);
    sub_1CFF0EB7C();
    v13 = *(v3 + v10[6]);
    HIBYTE(v12) = 2;
    sub_1CFE88DA8();
    sub_1CFE89DD8(&qword_1EC5125F8);
    sub_1CFF0EB7C();
    v13 = *(v3 + v10[7]);
    HIBYTE(v12) = 3;
    sub_1CFE88DF8();
    sub_1CFE89B08();
    sub_1CFF0EB7C();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_1CFE89190@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  sub_1CFE55184();
  MEMORY[0x1EEE9AC00](v4);
  v19 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFE89BF0(0, &qword_1EC512610, MEMORY[0x1E69E6F48]);
  v20 = v6;
  v18 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v17 - v7;
  v9 = type metadata accessor for IndividualOvernightMetricChartPointCollection();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CFE89AB4();
  v21 = v8;
  sub_1CFF0EC8C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v12 = v18;
  v13 = v11;
  LOBYTE(v23) = 0;
  sub_1CFE89C54(&qword_1EC512618, &qword_1EC512620);
  v15 = v19;
  v14 = v20;
  sub_1CFF0EB0C();
  sub_1CFE89CE4(v15, v13);
  sub_1CFE709D4(0);
  v22 = 1;
  sub_1CFE89D48(&qword_1EC512500, &qword_1EC512508);
  sub_1CFF0EB0C();
  *(v13 + v9[5]) = v23;
  sub_1CFE88DA8();
  v22 = 2;
  sub_1CFE89DD8(&qword_1EC512628);
  sub_1CFF0EB0C();
  *(v13 + v9[6]) = v23;
  sub_1CFE88DF8();
  v22 = 3;
  sub_1CFE89E38();
  sub_1CFF0EB0C();
  (*(v12 + 8))(v21, v14);
  *(v13 + v9[7]) = v23;
  sub_1CFE89F20(v13, v17);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return sub_1CFE89F84(v13, type metadata accessor for IndividualOvernightMetricChartPointCollection);
}

unint64_t sub_1CFE8963C()
{
  v1 = 0x73746E696F70;
  v2 = 0xD000000000000018;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000016;
  }

  if (!*v0)
  {
    v1 = 0xD000000000000017;
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

uint64_t sub_1CFE896C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1CFE8A394(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1CFE896F4(uint64_t a1)
{
  v2 = sub_1CFE89AB4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CFE89730(uint64_t a1)
{
  v2 = sub_1CFE89AB4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1CFE8976C(int *a1)
{
  sub_1CFF0EC3C();
  sub_1CFF0C7AC();
  sub_1CFE8A0F4(&qword_1EDEC49A8, MEMORY[0x1E6969530]);
  sub_1CFF0E45C();
  sub_1CFE55184();
  sub_1CFF0E45C();
  sub_1CFEAECD4(v4, *(v1 + a1[5]));
  sub_1CFEAF014(v4, *(v1 + a1[6]));
  sub_1CFEAE4F4(v4, *(v1 + a1[7]));
  return sub_1CFF0EC7C();
}

uint64_t sub_1CFE89860(__int128 *a1, int *a2)
{
  sub_1CFF0C7AC();
  sub_1CFE8A0F4(&qword_1EDEC49A8, MEMORY[0x1E6969530]);
  sub_1CFF0E45C();
  sub_1CFE55184();
  sub_1CFF0E45C();
  sub_1CFEAECD4(a1, *(v2 + a2[5]));
  sub_1CFEAF014(a1, *(v2 + a2[6]));
  v5 = *(v2 + a2[7]);

  return sub_1CFEAE4F4(a1, v5);
}

uint64_t sub_1CFE89948(uint64_t a1, int *a2)
{
  sub_1CFF0EC3C();
  sub_1CFF0C7AC();
  sub_1CFE8A0F4(&qword_1EDEC49A8, MEMORY[0x1E6969530]);
  sub_1CFF0E45C();
  sub_1CFE55184();
  sub_1CFF0E45C();
  sub_1CFEAECD4(v5, *(v2 + a2[5]));
  sub_1CFEAF014(v5, *(v2 + a2[6]));
  sub_1CFEAE4F4(v5, *(v2 + a2[7]));
  return sub_1CFF0EC7C();
}

unint64_t sub_1CFE89AB4()
{
  result = qword_1EC5125E0;
  if (!qword_1EC5125E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC5125E0);
  }

  return result;
}

unint64_t sub_1CFE89B08()
{
  result = qword_1EC512600;
  if (!qword_1EC512600)
  {
    sub_1CFE88DF8();
    sub_1CFE8A0F4(&qword_1EC512608, MEMORY[0x1E69A2EF8]);
    sub_1CFE89D48(&qword_1EC5124E8, &qword_1EC5124F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC512600);
  }

  return result;
}

void sub_1CFE89BF0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1CFE89AB4();
    v7 = a3(a1, &type metadata for IndividualOvernightMetricChartPointCollection.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1CFE89C54(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_1CFE55184();
    sub_1CFE8A0F4(a2, MEMORY[0x1E6969530]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1CFE89CE4(uint64_t a1, uint64_t a2)
{
  sub_1CFE55184();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1CFE89D48(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_1CFE709D4(255);
    sub_1CFE8A0F4(a2, type metadata accessor for IndividualOvernightMetricChartPoint);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1CFE89DD8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1CFE88DA8();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1CFE89E38()
{
  result = qword_1EC512630;
  if (!qword_1EC512630)
  {
    sub_1CFE88DF8();
    sub_1CFE8A0F4(&qword_1EC512638, MEMORY[0x1E69A2EF8]);
    sub_1CFE89D48(&qword_1EC512500, &qword_1EC512508);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC512630);
  }

  return result;
}

uint64_t sub_1CFE89F20(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IndividualOvernightMetricChartPointCollection();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1CFE89F84(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1CFE89FE4(uint64_t a1, uint64_t a2)
{
  sub_1CFF0C7AC();
  sub_1CFE8A0F4(&qword_1EDEC4D00, MEMORY[0x1E6969530]);
  if (sub_1CFF0E4CC())
  {
    sub_1CFE55184();
    if (sub_1CFF0E4CC())
    {
      v4 = type metadata accessor for IndividualOvernightMetricChartPointCollection();
      if (sub_1CFE915EC(*(a1 + v4[5]), *(a2 + v4[5])) & 1) != 0 && (sub_1CFE91D6C(*(a1 + v4[6]), *(a2 + v4[6])))
      {
        v5 = v4[7];
        v6 = *(a1 + v5);
        v7 = *(a2 + v5);

        sub_1CFEBE114(v6, v7);
      }
    }
  }
}

uint64_t sub_1CFE8A0F4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t getEnumTagSinglePayload for IndividualOvernightMetricChartPointCollection.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for IndividualOvernightMetricChartPointCollection.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1CFE8A290()
{
  result = qword_1EC512640;
  if (!qword_1EC512640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC512640);
  }

  return result;
}

unint64_t sub_1CFE8A2E8()
{
  result = qword_1EC512648;
  if (!qword_1EC512648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC512648);
  }

  return result;
}

unint64_t sub_1CFE8A340()
{
  result = qword_1EC512650;
  if (!qword_1EC512650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC512650);
  }

  return result;
}

uint64_t sub_1CFE8A394(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000017 && 0x80000001CFF155B0 == a2;
  if (v3 || (sub_1CFF0EBCC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x73746E696F70 && a2 == 0xE600000000000000 || (sub_1CFF0EBCC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001CFF155D0 == a2 || (sub_1CFF0EBCC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001CFF155F0 == a2)
  {

    return 3;
  }

  else
  {
    v6 = sub_1CFF0EBCC();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

void sub_1CFE8A540(uint64_t (*a1)(void), uint64_t a2, uint64_t a3, uint64_t (*a4)(void), void (*a5)(BOOL, uint64_t, uint64_t))
{
  v29 = a5;
  v40 = a4(0);
  MEMORY[0x1EEE9AC00](v40);
  v37 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12.n128_f64[0] = MEMORY[0x1EEE9AC00](v10);
  v39 = &v29 - v13;
  v36 = *(a3 + 16);
  if (v36)
  {
    v14 = 0;
    v33 = (v11 + 8);
    v34 = (v11 + 32);
    v35 = v11 + 16;
    v38 = MEMORY[0x1E69E7CC0];
    v31 = a2;
    v32 = a3;
    v30 = a1;
    while (v14 < *(a3 + 16))
    {
      v15 = (*(v11 + 80) + 32) & ~*(v11 + 80);
      v16 = *(v11 + 72);
      v17 = a3;
      v18 = a3 + v15 + v16 * v14;
      v19 = v11;
      v20 = a1;
      v21 = v39;
      (*(v11 + 16))(v39, v18, v40, v12);
      v22 = v21;
      a1 = v20;
      v23 = v20(v22);
      if (v5)
      {
        (*v33)(v39, v40);

        return;
      }

      if (v23)
      {
        v24 = *v34;
        (*v34)(v37, v39, v40);
        v25 = v38;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v41 = v25;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v29(0, *(v25 + 16) + 1, 1);
          v25 = v41;
        }

        v28 = *(v25 + 16);
        v27 = *(v25 + 24);
        if (v28 >= v27 >> 1)
        {
          v29(v27 > 1, v28 + 1, 1);
          v25 = v41;
        }

        *(v25 + 16) = v28 + 1;
        v38 = v25;
        v24((v25 + v15 + v28 * v16), v37, v40);
        a3 = v32;
        a1 = v30;
      }

      else
      {
        (*v33)(v39, v40);
        a3 = v17;
      }

      ++v14;
      v11 = v19;
      if (v36 == v14)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
    v38 = MEMORY[0x1E69E7CC0];
LABEL_14:
  }
}

uint64_t sub_1CFE8A828@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = sub_1CFF0CA6C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, a1, v4);
}

uint64_t sub_1CFE8A894(void (*a1)(uint64_t *__return_ptr, uint64_t), uint64_t a2, void (*a3)(void *__return_ptr, id *, uint64_t *), uint64_t a4, uint64_t a5)
{
  v6 = a4;
  v7 = a3;
  v8 = *(a5 + 16);
  v9 = MEMORY[0x1E69E7CC0];
  if (v8)
  {
    v22 = MEMORY[0x1E69E7CC0];
    sub_1CFEF3C04(0, v8, 0);
    v9 = v22;
    v11 = *(sub_1CFF0CB6C() - 8);
    v12 = a5 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
    v13 = *(v11 + 72);
    do
    {
      a1(&v21, v12);
      v14 = v21;
      v22 = v9;
      v16 = *(v9 + 16);
      v15 = *(v9 + 24);
      if (v16 >= v15 >> 1)
      {
        sub_1CFEF3C04((v15 > 1), v16 + 1, 1);
        v9 = v22;
      }

      *(v9 + 16) = v16 + 1;
      *(v9 + 8 * v16 + 32) = v14;
      v12 += v13;
      --v8;
    }

    while (v8);
    v7 = a3;
    v6 = a4;
  }

  return sub_1CFE8AC10(v17, v9, v7, v6);
}

uint64_t sub_1CFE8AA04(void (*a1)(uint64_t), uint64_t a2, void (*a3)(char *, char *), uint64_t a4, uint64_t a5)
{
  v25 = a1;
  v26 = a2;
  v24 = sub_1CFF0CA6C();
  v8 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a5 + 16);
  v12 = MEMORY[0x1E69E7CC0];
  if (v11)
  {
    v22 = a3;
    v23 = a4;
    v27 = MEMORY[0x1E69E7CC0];
    sub_1CFEF3D54(0, v11, 0);
    v12 = v27;
    v13 = *(sub_1CFF0CB6C() - 8);
    v14 = *(v13 + 80);
    v21 = a5;
    v15 = a5 + ((v14 + 32) & ~v14);
    v16 = *(v13 + 72);
    do
    {
      v25(v15);
      v27 = v12;
      v18 = *(v12 + 16);
      v17 = *(v12 + 24);
      if (v18 >= v17 >> 1)
      {
        sub_1CFEF3D54(v17 > 1, v18 + 1, 1);
        v12 = v27;
      }

      *(v12 + 16) = v18 + 1;
      (*(v8 + 32))(v12 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v18, v10, v24);
      v15 += v16;
      --v11;
    }

    while (v11);
    a3 = v22;
    a4 = v23;
  }

  return sub_1CFE8ACD4(v19, v12, a3, a4);
}

uint64_t sub_1CFE8AC10(uint64_t a1, uint64_t a2, void (*a3)(void *__return_ptr, id *, uint64_t *), uint64_t a4)
{
  if (*(a2 + 16) >= *(a1 + 16))
  {
    v7 = *(a1 + 16);
  }

  else
  {
    v7 = *(a2 + 16);
  }

  if (v7)
  {
    v8 = a1;
    v9 = a2;
    sub_1CFE9E51C();
    v10 = sub_1CFF0EA6C();
    a2 = v9;
    v11 = v10;
    a1 = v8;
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC8];
  }

  v13 = v11;
  sub_1CFE9996C(a1, a2, 1, a3, a4);
  if (v4)
  {
  }

  return v13;
}

uint64_t sub_1CFE8ACD4(uint64_t a1, uint64_t a2, void (*a3)(char *, char *), uint64_t a4)
{
  if (*(a2 + 16) >= *(a1 + 16))
  {
    v7 = *(a1 + 16);
  }

  else
  {
    v7 = *(a2 + 16);
  }

  if (v7)
  {
    v8 = a1;
    v9 = a2;
    sub_1CFE9E2F8(0, &qword_1EDEC1650, MEMORY[0x1E69A2DC0]);
    v10 = sub_1CFF0EA6C();
    a2 = v9;
    v11 = v10;
    a1 = v8;
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC8];
  }

  v13 = v11;
  sub_1CFE99EA0(a1, a2, 1, a3, a4);
  if (v4)
  {
  }

  return v13;
}

uint64_t sub_1CFE8ADB8(void *a1)
{
  v2 = MEMORY[0x1E69E6F58];
  sub_1CFE9DB98(0, &qword_1EC512760, sub_1CFE9DA9C, &type metadata for OvernightMetricsViewModel.DataTypeVisibilityDerivationMethod.FixedCodingKeys, MEMORY[0x1E69E6F58]);
  v27 = *(v3 - 8);
  v28 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v26 = &v24 - v4;
  sub_1CFE9DB98(0, &qword_1EC512770, sub_1CFE9DAF0, &type metadata for OvernightMetricsViewModel.DataTypeVisibilityDerivationMethod.FeatureStatusCodingKeys, v2);
  v24 = *(v5 - 8);
  v25 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v24 - v6;
  sub_1CFE8CEEC(0, &qword_1EDEC5180, MEMORY[0x1E69A2F48], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v24 - v9;
  v11 = type metadata accessor for OvernightMetricsViewModel.DataTypeVisibilityDerivationMethod(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = (&v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1CFE9DB98(0, &qword_1EC512780, sub_1CFE9DB44, &type metadata for OvernightMetricsViewModel.DataTypeVisibilityDerivationMethod.CodingKeys, v2);
  v30 = *(v14 - 8);
  v31 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v24 - v15;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CFE9DB44();
  sub_1CFF0EC9C();
  sub_1CFE8CF9C(v29, v13, type metadata accessor for OvernightMetricsViewModel.DataTypeVisibilityDerivationMethod);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = *v13;
    v34 = 1;
    sub_1CFE9DA9C();
    v18 = v26;
    v19 = v31;
    sub_1CFF0EB2C();
    v32 = v17;
    sub_1CFE8CEEC(0, &qword_1EDEC4D58, MEMORY[0x1E69A2E68], MEMORY[0x1E69E62F8]);
    sub_1CFE9C8AC();
    v20 = v28;
    sub_1CFF0EB7C();
    (*(v27 + 8))(v18, v20);
    (*(v30 + 8))(v16, v19);
  }

  else
  {
    sub_1CFE8CA40(v13, v10);
    v33 = 0;
    sub_1CFE9DAF0();
    v22 = v31;
    sub_1CFF0EB2C();
    sub_1CFF0CDFC();
    sub_1CFE9BEA8(&qword_1EC512790, MEMORY[0x1E69A2F48]);
    v23 = v25;
    sub_1CFF0EB3C();
    (*(v24 + 8))(v7, v23);
    sub_1CFE9CFD8(v10, &qword_1EDEC5180, MEMORY[0x1E69A2F48]);
    return (*(v30 + 8))(v16, v22);
  }
}

uint64_t sub_1CFE8B2F8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v58 = a2;
  v3 = MEMORY[0x1E69E6F48];
  sub_1CFE9DB98(0, &qword_1EC512798, sub_1CFE9DA9C, &type metadata for OvernightMetricsViewModel.DataTypeVisibilityDerivationMethod.FixedCodingKeys, MEMORY[0x1E69E6F48]);
  v5 = *(v4 - 8);
  v53 = v4;
  v54 = v5;
  MEMORY[0x1EEE9AC00](v4);
  v56 = &v47 - v6;
  sub_1CFE9DB98(0, &qword_1EC5127A0, sub_1CFE9DAF0, &type metadata for OvernightMetricsViewModel.DataTypeVisibilityDerivationMethod.FeatureStatusCodingKeys, v3);
  v51 = *(v7 - 8);
  v52 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v55 = &v47 - v8;
  sub_1CFE9DB98(0, &qword_1EC5127A8, sub_1CFE9DB44, &type metadata for OvernightMetricsViewModel.DataTypeVisibilityDerivationMethod.CodingKeys, v3);
  v10 = v9;
  v57 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v47 - v11;
  v13 = type metadata accessor for OvernightMetricsViewModel.DataTypeVisibilityDerivationMethod(0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v47 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v47 - v20;
  v22 = a1[3];
  v60 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v22);
  sub_1CFE9DB44();
  v23 = v59;
  sub_1CFF0EC8C();
  if (!v23)
  {
    v59 = v18;
    v49 = v15;
    v50 = v21;
    v24 = v55;
    v25 = v56;
    v26 = v13;
    v27 = v58;
    v28 = sub_1CFF0EB1C();
    v29 = (2 * *(v28 + 16)) | 1;
    v61 = v28;
    v62 = v28 + 32;
    v63 = 0;
    v64 = v29;
    v30 = sub_1CFF09358();
    v31 = v12;
    if (v30 == 2 || v63 != v64 >> 1)
    {
      v38 = sub_1CFF0E9AC();
      swift_allocError();
      v40 = v39;
      sub_1CFE9E3A4(0, &qword_1EC5127B0, sub_1CFE9DC00, MEMORY[0x1E69E6B18]);
      *v40 = v26;
      sub_1CFF0EABC();
      sub_1CFF0E98C();
      (*(*(v38 - 8) + 104))(v40, *MEMORY[0x1E69E6AF8], v38);
      swift_willThrow();
      (*(v57 + 8))(v12, v10);
      swift_unknownObjectRelease();
    }

    else
    {
      v32 = v26;
      if (v30)
      {
        LOBYTE(v65) = 1;
        sub_1CFE9DA9C();
        v33 = v25;
        sub_1CFF0EAAC();
        v34 = v27;
        v48 = v32;
        sub_1CFE8CEEC(0, &qword_1EDEC4D58, MEMORY[0x1E69A2E68], MEMORY[0x1E69E62F8]);
        sub_1CFE9CEAC();
        v35 = v53;
        sub_1CFF0EB0C();
        v36 = v33;
        v37 = v57;
        (*(v54 + 8))(v36, v35);
        (*(v37 + 8))(v31, v10);
        swift_unknownObjectRelease();
        v44 = v49;
        *v49 = v65;
        swift_storeEnumTagMultiPayload();
        v45 = v44;
        v46 = v50;
        sub_1CFE9E170(v45, v50, type metadata accessor for OvernightMetricsViewModel.DataTypeVisibilityDerivationMethod);
      }

      else
      {
        LOBYTE(v65) = 0;
        sub_1CFE9DAF0();
        sub_1CFF0EAAC();
        v48 = v26;
        sub_1CFF0CDFC();
        sub_1CFE9BEA8(&qword_1EC5127C0, MEMORY[0x1E69A2F48]);
        v42 = v59;
        v43 = v52;
        sub_1CFF0EACC();
        (*(v51 + 8))(v24, v43);
        (*(v57 + 8))(v31, v10);
        swift_unknownObjectRelease();
        swift_storeEnumTagMultiPayload();
        v46 = v50;
        sub_1CFE9E170(v42, v50, type metadata accessor for OvernightMetricsViewModel.DataTypeVisibilityDerivationMethod);
        v34 = v58;
      }

      sub_1CFE9E170(v46, v34, type metadata accessor for OvernightMetricsViewModel.DataTypeVisibilityDerivationMethod);
    }
  }

  return __swift_destroy_boxed_opaque_existential_0(v60);
}

uint64_t sub_1CFE8BA2C()
{
  if (*v0)
  {
    return 0x6465786966;
  }

  else
  {
    return 0x5365727574616566;
  }
}

uint64_t sub_1CFE8BA70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x5365727574616566 && a2 == 0xED00007375746174;
  if (v6 || (sub_1CFF0EBCC() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6465786966 && a2 == 0xE500000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1CFF0EBCC();

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

uint64_t sub_1CFE8BB5C(uint64_t a1)
{
  v2 = sub_1CFE9DB44();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CFE8BB98(uint64_t a1)
{
  v2 = sub_1CFE9DB44();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1CFE8BBE0(uint64_t a1)
{
  v2 = sub_1CFE9DAF0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CFE8BC1C(uint64_t a1)
{
  v2 = sub_1CFE9DAF0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1CFE8BC58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1CFF0EBCC();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1CFE8BCD8(uint64_t a1)
{
  v2 = sub_1CFE9DA9C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CFE8BD14(uint64_t a1)
{
  v2 = sub_1CFE9DA9C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t OvernightMetricsViewModel.dayRange.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1CFF0CADC();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t OvernightMetricsViewModel.chronologicalDaySummaries.getter()
{
  type metadata accessor for OvernightMetricsViewModel(0);
}

uint64_t sub_1CFE8BE40()
{
  v1 = v0;
  sub_1CFE8DBDC();
  v88 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v87 = &v83 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v85 = &v83 - v5;
  sub_1CFE9DC4C(0, &qword_1EDEC4D78, MEMORY[0x1E69E5F90]);
  v84 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v86 = &v83 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v99 = &v83 - v9;
  v10 = sub_1CFF0C7AC();
  v94 = *(v10 - 8);
  v95 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v98 = &v83 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v96 = &v83 - v13;
  sub_1CFE5C014();
  MEMORY[0x1EEE9AC00](v14 - 8);
  v93 = &v83 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = type metadata accessor for OvernightMetricsChartPointCollection();
  MEMORY[0x1EEE9AC00](v92);
  v91 = (&v83 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v97 = sub_1CFF0C89C();
  v102 = *(v97 - 8);
  MEMORY[0x1EEE9AC00](v97);
  v90 = &v83 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v101 = &v83 - v19;
  v20 = sub_1CFF0CC0C();
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v83 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x1E69A2EB8];
  v25 = MEMORY[0x1E69E6720];
  sub_1CFE8CEEC(0, &qword_1EDEC4CB0, MEMORY[0x1E69A2EB8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v26 - 8);
  v28 = &v83 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v83 - v30;
  sub_1CFE8CEEC(0, qword_1EDEC4FC8, type metadata accessor for OvernightMetricsChartPoint, v25);
  MEMORY[0x1EEE9AC00](v32 - 8);
  v34 = &v83 - v33;
  v35 = sub_1CFE8DC44();
  v100 = type metadata accessor for OvernightMetricsViewModel(0);
  v36 = v100[14];

  v83 = v35;
  *(v1 + v36) = v35;
  OvernightMetricsViewModel.daySummaryForToday.getter(v31);
  sub_1CFE9E23C(v31, v28, &qword_1EDEC4CB0, v24);
  if ((*(v21 + 48))(v28, 1, v20) == 1)
  {
    sub_1CFE9CFD8(v31, &qword_1EDEC4CB0, MEMORY[0x1E69A2EB8]);
    v37 = type metadata accessor for OvernightMetricsChartPoint();
    (*(*(v37 - 8) + 56))(v34, 1, 1, v37);
  }

  else
  {
    (*(v21 + 32))(v23, v28, v20);
    sub_1CFE8E1AC(v23, v34);
    (*(v21 + 8))(v23, v20);
    sub_1CFE9CFD8(v31, &qword_1EDEC4CB0, MEMORY[0x1E69A2EB8]);
  }

  v38 = v100;
  sub_1CFE9CAD4(v34, v1 + v100[7]);

  v40 = sub_1CFE8E588(v39, v1);
  v89 = 0;

  v41 = v38[9];

  *(v1 + v41) = v40;
  v42 = v101;
  sub_1CFF0CAAC();
  v43 = v102;
  v44 = v42;
  v45 = *(v102 + 16);
  v46 = v90;
  v47 = v97;
  v45(v90, v44, v97);
  v49 = v91;
  v48 = v92;
  *v91 = v40;
  v45((v49 + *(v48 + 20)), v46, v47);

  v50 = sub_1CFF0CB1C();
  MEMORY[0x1EEE9AC00](v50);
  v81 = v40;
  v51 = sub_1CFE8A894(sub_1CFE9EA44, (&v83 - 4), sub_1CFE97588, 0, v50);

  v52 = *(v43 + 8);
  v102 = v43 + 8;
  v90 = v52;
  (v52)(v46, v47);
  *(v49 + *(v48 + 24)) = v51;
  sub_1CFE9CB68(v49, v1 + v38[8], type metadata accessor for OvernightMetricsChartPointCollection);
  v53 = v93;
  v54 = sub_1CFF0CA8C();
  MEMORY[0x1EEE9AC00](v54);
  v81 = v1;
  v55 = sub_1CFED9A8C(sub_1CFE9E2BC, (&v83 - 4));
  sub_1CFE9BEF0(v53, sub_1CFE5C014);
  v56 = v38[10];

  *(v1 + v56) = v55;
  v57 = *(v55 + 16);
  v58 = v94;
  v59 = v98;
  v60 = v96;
  if (v57)
  {
    v61 = *(v94 + 16);
    v62 = v55 + ((*(v94 + 80) + 32) & ~*(v94 + 80));
    v63 = v95;
    v61(v96, v62, v95);
    v61(v59, v62 + v58[9] * (v57 - 1), v63);
    v64 = v99;
    sub_1CFEB9248(v59, v99);
    sub_1CFE9CE2C(v64, v1 + v100[11]);
    sub_1CFE9BEA8(&qword_1EDEC5198, MEMORY[0x1E6969530]);
    if (sub_1CFF0E49C())
    {
      v65 = v85;
      v61(v85, v60, v63);
      v93 = v1;
      v66 = v88;
      v61((v65 + *(v88 + 48)), v59, v63);
      v67 = v87;
      sub_1CFE8CF9C(v65, v87, sub_1CFE8DBDC);
      v68 = *(v66 + 48);
      v69 = v58[4];
      v70 = v86;
      v69(v86, v67, v63);
      v71 = v58[1];
      v71(v67 + v68, v63);
      sub_1CFE9E170(v65, v67, sub_1CFE8DBDC);
      v69((v70 + *(v84 + 36)), v67 + *(v66 + 48), v63);
      v71(v67, v63);
      v72 = v99;
      v73 = v101;
      sub_1CFEB98B0(v70, v99);
      sub_1CFE9C984(v70);
      v74 = v100;
      v75 = v93;
      sub_1CFE9CE2C(v72, &v93[v100[12]]);
      v76 = v98;
      v77 = v73;
      v78 = sub_1CFEB9EDC(v83[2], v98);
      v71(v76, v63);
      v71(v96, v63);
      (v90)(v77, v97);
      v79 = v74[13];

      *&v75[v79] = v78;
      return result;
    }

    __break(1u);
  }

  v82 = 0;
  v81 = 87;
  result = sub_1CFF0EA2C();
  __break(1u);
  return result;
}

uint64_t OvernightMetricsViewModel.featureStatus.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for OvernightMetricsViewModel.DataTypeVisibilityDerivationMethod(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for OvernightMetricsViewModel(0);
  sub_1CFE8CF9C(v1 + *(v6 + 24), v5, type metadata accessor for OvernightMetricsViewModel.DataTypeVisibilityDerivationMethod);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    return sub_1CFE8CA40(v5, a1);
  }

  sub_1CFE9BEF0(v5, type metadata accessor for OvernightMetricsViewModel.DataTypeVisibilityDerivationMethod);
  v7 = sub_1CFF0CDFC();
  return (*(*(v7 - 8) + 56))(a1, 1, 1, v7);
}

uint64_t sub_1CFE8CA40(uint64_t a1, uint64_t a2)
{
  sub_1CFE8CEEC(0, &qword_1EDEC5180, MEMORY[0x1E69A2F48], MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1CFE8CAD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for OvernightMetricsViewModel.DataTypeVisibilityDerivationMethod(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for OvernightMetricsViewModel(0);
  sub_1CFE8CF9C(a1 + *(v7 + 24), v6, type metadata accessor for OvernightMetricsViewModel.DataTypeVisibilityDerivationMethod);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    return sub_1CFE8CA40(v6, a2);
  }

  sub_1CFE9BEF0(v6, type metadata accessor for OvernightMetricsViewModel.DataTypeVisibilityDerivationMethod);
  v8 = sub_1CFF0CDFC();
  return (*(*(v8 - 8) + 56))(a2, 1, 1, v8);
}

uint64_t sub_1CFE8CBFC(uint64_t a1)
{
  v2 = MEMORY[0x1E69A2F48];
  sub_1CFE8CEEC(0, &qword_1EDEC5180, MEMORY[0x1E69A2F48], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v7 - v4;
  sub_1CFE9E23C(a1, &v7 - v4, &qword_1EDEC5180, v2);
  return sub_1CFE8CCC8(v5);
}

uint64_t sub_1CFE8CCC8(uint64_t a1)
{
  v3 = type metadata accessor for OvernightMetricsViewModel.DataTypeVisibilityDerivationMethod(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v15 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v15 - v10;
  sub_1CFE9E23C(a1, &v15 - v10, &qword_1EDEC5180, MEMORY[0x1E69A2F48]);
  swift_storeEnumTagMultiPayload();
  v12 = *(type metadata accessor for OvernightMetricsViewModel(0) + 24);
  sub_1CFE8CF9C(v1 + v12, v8, type metadata accessor for OvernightMetricsViewModel.DataTypeVisibilityDerivationMethod);
  sub_1CFE97594(v11, v1 + v12);
  sub_1CFE8CF9C(v1 + v12, v5, type metadata accessor for OvernightMetricsViewModel.DataTypeVisibilityDerivationMethod);
  v13 = sub_1CFE9B8CC(v5, v8);
  sub_1CFE9BEF0(v5, type metadata accessor for OvernightMetricsViewModel.DataTypeVisibilityDerivationMethod);
  if ((v13 & 1) == 0)
  {
    sub_1CFE8BE40();
  }

  sub_1CFE9CFD8(a1, &qword_1EDEC5180, MEMORY[0x1E69A2F48]);
  sub_1CFE9BEF0(v8, type metadata accessor for OvernightMetricsViewModel.DataTypeVisibilityDerivationMethod);
  return sub_1CFE9BEF0(v11, type metadata accessor for OvernightMetricsViewModel.DataTypeVisibilityDerivationMethod);
}

void sub_1CFE8CEEC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1CFE8CF9C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t OvernightMetricsViewModel.chartPoints.getter()
{
  type metadata accessor for OvernightMetricsViewModel(0);
}

uint64_t OvernightMetricsViewModel.keyDatesForTimeAxis.getter()
{
  type metadata accessor for OvernightMetricsViewModel(0);
}

uint64_t OvernightMetricsViewModel.lastKeyDateRange.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for OvernightMetricsViewModel(0) + 44);

  return sub_1CFE8D0B0(v3, a1);
}

uint64_t sub_1CFE8D0B0(uint64_t a1, uint64_t a2)
{
  sub_1CFE9DC4C(0, &qword_1EDEC4D78, MEMORY[0x1E69E5F90]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t OvernightMetricsViewModel.keyDatesRange.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for OvernightMetricsViewModel(0) + 48);

  return sub_1CFE8D0B0(v3, a1);
}

uint64_t OvernightMetricsViewModel.oneDayChartIconPositions.getter()
{
  type metadata accessor for OvernightMetricsViewModel(0);
}

uint64_t OvernightMetricsViewModel.visibleDataTypes.getter()
{
  type metadata accessor for OvernightMetricsViewModel(0);
}

uint64_t OvernightMetricsViewModel.init(dayRange:chronologicalDaySummaries:featureStatus:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v91 = a3;
  v92 = a1;
  v85 = a2;
  v5 = type metadata accessor for OvernightMetricsViewModel.DataTypeVisibilityDerivationMethod(0);
  MEMORY[0x1EEE9AC00](v5);
  v88 = &v81 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v90 = &v81 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v89 = &v81 - v10;
  sub_1CFE8CEEC(0, &qword_1EDEC5180, MEMORY[0x1E69A2F48], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v87 = &v81 - v12;
  sub_1CFE8DBDC();
  v97 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v95 = &v81 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v96 = &v81 - v16;
  v17 = sub_1CFF0C7AC();
  v99 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v93 = &v81 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v100 = &v81 - v20;
  v21 = sub_1CFF0C81C();
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v81 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = sub_1CFF0C89C();
  v25 = *(v94 - 8);
  MEMORY[0x1EEE9AC00](v94);
  v27 = &v81 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for OvernightMetricsViewModel(0);
  v29 = v28[6];
  v30 = sub_1CFF0CDFC();
  (*(*(v30 - 8) + 56))(a4 + v29, 1, 1, v30);
  v84 = v29;
  v98 = a4;
  v86 = v5;
  swift_storeEnumTagMultiPayload();
  v31 = v28[7];
  v32 = type metadata accessor for OvernightMetricsChartPoint();
  (*(*(v32 - 8) + 56))(a4 + v31, 1, 1, v32);
  v33 = (a4 + v28[8]);
  (*(v22 + 104))(v24, *MEMORY[0x1E6969868], v21);
  sub_1CFF0C82C();
  (*(v22 + 8))(v24, v21);
  v34 = MEMORY[0x1E69E7CC0];
  *v33 = MEMORY[0x1E69E7CC0];
  v35 = type metadata accessor for OvernightMetricsChartPointCollection();
  v36 = v94;
  (*(v25 + 16))(&v33[*(v35 + 20)], v27, v94);
  v37 = sub_1CFF0CB1C();
  v102 = v34;
  v38 = sub_1CFE8A894(sub_1CFE97580, v101, sub_1CFE97588, 0, v37);

  v39 = v36;
  v40 = v98;
  (*(v25 + 8))(v27, v39);
  *&v33[*(v35 + 24)] = v38;
  *(v40 + v28[9]) = v34;
  *(v40 + v28[10]) = v34;
  v94 = v28;
  v41 = v28[11];
  sub_1CFF0C78C();
  v42 = v93;
  sub_1CFF0C78C();
  v43 = sub_1CFE9BEA8(&qword_1EDEC5198, MEMORY[0x1E6969530]);
  result = sub_1CFF0E49C();
  if ((result & 1) == 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  v45 = (v40 + v41);
  v82 = (v40 + v41);
  v46 = v99;
  v47 = *(v99 + 32);
  v48 = v96;
  v47(v96, v100, v17);
  v49 = v97;
  v50 = v42;
  v47((v48 + *(v97 + 48)), v42, v17);
  v51 = v95;
  sub_1CFE8CF9C(v48, v95, sub_1CFE8DBDC);
  v83 = v43;
  v52 = *(v49 + 48);
  v47(v45, v51, v17);
  v53 = *(v46 + 8);
  v53(v51 + v52, v17);
  sub_1CFE9E170(v48, v51, sub_1CFE8DBDC);
  v54 = *(v49 + 48);
  sub_1CFE9DC4C(0, &qword_1EDEC4D78, MEMORY[0x1E69E5F90]);
  v56 = v55;
  v47(v82 + *(v55 + 9), (v51 + v54), v17);
  v99 = v46 + 8;
  v82 = v53;
  v53(v51, v17);
  v57 = *(v94 + 48);
  sub_1CFF0C78C();
  sub_1CFF0C78C();
  result = sub_1CFF0E49C();
  if ((result & 1) == 0)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v58 = v98;
  v59 = (v98 + v57);
  v60 = v96;
  v47(v96, v100, v17);
  v100 = v56;
  v61 = v97;
  v47((v60 + *(v97 + 48)), v50, v17);
  v62 = v95;
  sub_1CFE8CF9C(v60, v95, sub_1CFE8DBDC);
  v63 = *(v61 + 48);
  v47(v59, v62, v17);
  v64 = v62 + v63;
  v65 = v82;
  v82(v64, v17);
  sub_1CFE9E170(v60, v62, sub_1CFE8DBDC);
  v47(&v59[*(v100 + 9)], (v62 + *(v61 + 48)), v17);
  v65(v62, v17);
  v66 = v94;
  v67 = MEMORY[0x1E69E7CC0];
  *(v58 + *(v94 + 52)) = MEMORY[0x1E69E7CC0];
  *(v58 + *(v66 + 56)) = v67;
  v68 = sub_1CFF0CADC();
  v69 = *(v68 - 8);
  v70 = v92;
  (*(v69 + 16))(v58, v92, v68);
  *(v58 + *(v66 + 20)) = v85;
  v71 = MEMORY[0x1E69A2F48];
  v72 = v91;
  v73 = v87;
  sub_1CFE9E23C(v91, v87, &qword_1EDEC5180, MEMORY[0x1E69A2F48]);
  v74 = v89;
  sub_1CFE9E23C(v73, v89, &qword_1EDEC5180, v71);
  swift_storeEnumTagMultiPayload();
  v75 = v84;
  v76 = v90;
  sub_1CFE8CF9C(v58 + v84, v90, type metadata accessor for OvernightMetricsViewModel.DataTypeVisibilityDerivationMethod);
  sub_1CFE97594(v74, v58 + v75);
  v77 = v58 + v75;
  v78 = v88;
  sub_1CFE8CF9C(v77, v88, type metadata accessor for OvernightMetricsViewModel.DataTypeVisibilityDerivationMethod);
  v79 = sub_1CFE9B8CC(v78, v76);
  sub_1CFE9BEF0(v78, type metadata accessor for OvernightMetricsViewModel.DataTypeVisibilityDerivationMethod);
  if ((v79 & 1) == 0)
  {
    sub_1CFE8BE40();
  }

  sub_1CFE9BEF0(v76, type metadata accessor for OvernightMetricsViewModel.DataTypeVisibilityDerivationMethod);
  sub_1CFE9BEF0(v74, type metadata accessor for OvernightMetricsViewModel.DataTypeVisibilityDerivationMethod);
  v80 = MEMORY[0x1E69A2F48];
  sub_1CFE9CFD8(v73, &qword_1EDEC5180, MEMORY[0x1E69A2F48]);
  sub_1CFE8BE40();
  sub_1CFE9CFD8(v72, &qword_1EDEC5180, v80);
  return (*(v69 + 8))(v70, v68);
}

void sub_1CFE8DBDC()
{
  if (!qword_1EDEC4D08)
  {
    sub_1CFF0C7AC();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDEC4D08);
    }
  }
}

void *sub_1CFE8DC44()
{
  sub_1CFE8CEEC(0, &qword_1EDEC5180, MEMORY[0x1E69A2F48], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = (v13 - v2);
  v4 = type metadata accessor for OvernightMetricsViewModel.DataTypeVisibilityDerivationMethod(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for OvernightMetricsViewModel(0);
  sub_1CFE8CF9C(v0 + *(v7 + 24), v6, type metadata accessor for OvernightMetricsViewModel.DataTypeVisibilityDerivationMethod);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return *v6;
  }

  sub_1CFE8CA40(v6, v3);
  v9 = sub_1CFF0CB1C();
  MEMORY[0x1EEE9AC00](v9);
  v13[-2] = v3;
  v13[-1] = v0;
  sub_1CFE8A540(sub_1CFE9E420, &v13[-4], v10, MEMORY[0x1E69A2E68], sub_1CFEF3C24);
  v13[0] = v11;

  sub_1CFE98058(v13);

  v8 = v13[0];
  sub_1CFE9CFD8(v3, &qword_1EDEC5180, MEMORY[0x1E69A2F48]);
  return v8;
}

uint64_t OvernightMetricsViewModel.daySummaryForToday.getter@<X0>(uint64_t a1@<X8>)
{
  sub_1CFE5C014();
  v26 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1CFF0E29C();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v24 - v11;
  v27 = sub_1CFF0CC0C();
  v13 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v1 + *(type metadata accessor for OvernightMetricsViewModel(0) + 20));
  v17 = *(v16 + 16);
  if (v17)
  {
    v25 = a1;
    (*(v13 + 16))(v15, v16 + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v13 + 72) * (v17 - 1), v27);
    sub_1CFF0CBBC();
    sub_1CFF0CA8C();
    (*(v7 + 16))(v10, &v5[*(v26 + 36)], v6);
    sub_1CFE9BEF0(v5, sub_1CFE5C014);
    sub_1CFE9BEA8(&qword_1EDEC4A80, MEMORY[0x1E696B418]);
    v18 = sub_1CFF0E4CC();
    v19 = *(v7 + 8);
    v19(v10, v6);
    v19(v12, v6);
    if (v18)
    {
      a1 = v25;
      v20 = v27;
      (*(v13 + 32))(v25, v15, v27);
      v21 = 0;
    }

    else
    {
      v20 = v27;
      (*(v13 + 8))(v15, v27);
      v21 = 1;
      a1 = v25;
    }

    v22 = v20;
  }

  else
  {
    v21 = 1;
    v22 = v27;
  }

  return (*(v13 + 56))(a1, v21, 1, v22);
}

uint64_t sub_1CFE8E1AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v39 = a2;
  v34 = sub_1CFF0E29C();
  v5 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_1CFF0C7AC();
  v8 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v36 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v32 - v11;
  v37 = sub_1CFF0C89C();
  v13 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v33 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v32 - v16;
  v18 = sub_1CFF0CB1C();
  v19 = sub_1CFEB8DEC(MEMORY[0x1E69E7CC0]);
  v41 = a1;
  v35 = sub_1CFE95E7C(v19, sub_1CFE9E2DC, v40, v18);

  sub_1CFF0CAAC();
  sub_1CFF0CBBC();
  sub_1CFF0E28C();
  (*(v5 + 8))(v7, v34);
  v20 = *(v3 + *(type metadata accessor for OvernightMetricsViewModel(0) + 56));
  v21 = sub_1CFEB9EDC(*(v20 + 16), v12);
  v22 = v21;
  if (*(v21 + 16) >= *(v20 + 16))
  {
    v23 = *(v20 + 16);
  }

  else
  {
    v23 = *(v21 + 16);
  }

  if (v23)
  {
    sub_1CFE9E2F8(0, &qword_1EDEC4A10, MEMORY[0x1E6969530]);
    v24 = sub_1CFF0EA6C();
  }

  else
  {
    v24 = MEMORY[0x1E69E7CC8];
  }

  v42 = v24;

  sub_1CFE9A678(v25, v22, 1, &v42);
  v26 = v42;
  v27 = v36;
  v28 = v38;
  (*(v8 + 16))(v36, v12, v38);
  v29 = v33;
  v30 = v37;
  (*(v13 + 16))(v33, v17, v37);
  sub_1CFEA8B80(v27, v35, v26, v29, v39);
  (*(v8 + 8))(v12, v28);
  return (*(v13 + 8))(v17, v30);
}

void *sub_1CFE8E588(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v78 = a2;
  v77 = sub_1CFF0E29C();
  v5 = *(v77 - 8);
  MEMORY[0x1EEE9AC00](v77);
  v76 = &v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = sub_1CFF0C7AC();
  v7 = *(v75 - 8);
  MEMORY[0x1EEE9AC00](v75);
  v74 = &v59 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v85 = &v59 - v10;
  v73 = sub_1CFF0C89C();
  v11 = *(v73 - 8);
  MEMORY[0x1EEE9AC00](v73);
  v72 = &v59 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v84 = &v59 - v14;
  v71 = type metadata accessor for OvernightMetricsViewModel(0);
  MEMORY[0x1EEE9AC00](v71);
  v16 = &v59 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFE8CEEC(0, qword_1EDEC4FC8, type metadata accessor for OvernightMetricsChartPoint, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v59 - v18;
  v70 = type metadata accessor for OvernightMetricsChartPoint();
  MEMORY[0x1EEE9AC00](v70);
  MEMORY[0x1EEE9AC00](v20);
  v62 = &v59 - v23;
  v24 = *(a1 + 16);
  if (v24)
  {
    v60 = v22;
    v25 = v21;
    v26 = *(sub_1CFF0CC0C() - 8);
    v68 = (v7 + 16);
    v69 = (v5 + 8);
    v66 = (v7 + 8);
    v67 = (v11 + 16);
    v65 = (v11 + 8);
    v61 = v25;
    v64 = (v25 + 48);
    v27 = a1 + ((*(v26 + 80) + 32) & ~*(v26 + 80));
    v63 = *(v26 + 72);
    v79 = MEMORY[0x1E69E7CC0];
    v28 = v72;
    while (1)
    {
      v82 = v24;
      sub_1CFE8CF9C(v78, v16, type metadata accessor for OvernightMetricsViewModel);
      v30 = sub_1CFF0CB1C();
      v31 = sub_1CFEB8DEC(MEMORY[0x1E69E7CC0]);
      MEMORY[0x1EEE9AC00](v31);
      *(&v59 - 2) = v27;
      v80 = sub_1CFE95E7C(v32, sub_1CFE9EA2C, (&v59 - 4), v30);
      v33 = v3;

      sub_1CFF0CAAC();
      v34 = v76;
      sub_1CFF0CBBC();
      v35 = v85;
      sub_1CFF0E28C();
      (*v69)(v34, v77);
      v36 = *&v16[*(v71 + 56)];
      v37 = sub_1CFEB9EDC(*(v36 + 16), v35);
      v38 = v37;
      v39 = *(v37 + 16) >= *(v36 + 16) ? *(v36 + 16) : *(v37 + 16);
      v81 = v27;
      if (v39)
      {
        sub_1CFE9E2F8(0, &qword_1EDEC4A10, MEMORY[0x1E6969530]);
        v40 = sub_1CFF0EA6C();
      }

      else
      {
        v40 = MEMORY[0x1E69E7CC8];
      }

      v41 = v16;
      v86 = v40;

      sub_1CFE9A678(v42, v38, 1, &v86);
      v83 = v33;
      if (v33)
      {
        break;
      }

      v43 = v86;
      v45 = v74;
      v44 = v75;
      v46 = v85;
      (*v68)(v74, v85, v75);
      v47 = v84;
      v48 = v73;
      (*v67)(v28, v84, v73);
      sub_1CFEA8B80(v45, v80, v43, v28, v19);
      (*v66)(v46, v44);
      (*v65)(v47, v48);
      v16 = v41;
      sub_1CFE9BEF0(v41, type metadata accessor for OvernightMetricsViewModel);
      if ((*v64)(v19, 1, v70) == 1)
      {
        sub_1CFE9CFD8(v19, qword_1EDEC4FC8, type metadata accessor for OvernightMetricsChartPoint);
        v3 = v83;
        v29 = v81;
      }

      else
      {
        v49 = v62;
        sub_1CFE9E170(v19, v62, type metadata accessor for OvernightMetricsChartPoint);
        v50 = v49;
        v51 = v60;
        sub_1CFE9E170(v50, v60, type metadata accessor for OvernightMetricsChartPoint);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v29 = v81;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v79 = sub_1CFE97E64(0, v79[2] + 1, 1, v79, &qword_1EDEC49E0, type metadata accessor for OvernightMetricsChartPoint, type metadata accessor for OvernightMetricsChartPoint);
        }

        v3 = v83;
        v54 = v79[2];
        v53 = v79[3];
        v55 = v61;
        if (v54 >= v53 >> 1)
        {
          v57 = sub_1CFE97E64(v53 > 1, v54 + 1, 1, v79, &qword_1EDEC49E0, type metadata accessor for OvernightMetricsChartPoint, type metadata accessor for OvernightMetricsChartPoint);
          v55 = v61;
          v79 = v57;
        }

        v56 = v79;
        v79[2] = v54 + 1;
        sub_1CFE9E170(v51, v56 + ((*(v55 + 80) + 32) & ~*(v55 + 80)) + *(v55 + 72) * v54, type metadata accessor for OvernightMetricsChartPoint);
      }

      v27 = v29 + v63;
      v24 = v82 - 1;
      if (v82 == 1)
      {
        return v79;
      }
    }

    result = swift_unexpectedError();
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC0];
  }

  return result;
}

int64_t OvernightMetricsViewModel.filtered(to:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = sub_1CFF0CADC();
  sub_1CFE9BEA8(&qword_1EC512658, MEMORY[0x1E69A2E08]);
  v7 = sub_1CFF0E4CC();
  result = sub_1CFE8CF9C(v3, a2, type metadata accessor for OvernightMetricsViewModel);
  if ((v7 & 1) == 0)
  {
    MEMORY[0x1EEE9AC00](result);
    v11[2] = a1;
    v9 = *(type metadata accessor for OvernightMetricsViewModel(0) + 20);
    result = sub_1CFE9ACE8(sub_1CFE9BF50, v11, MEMORY[0x1E69A2EB8], MEMORY[0x1E69A2EB8], sub_1CFE98114);
    v10 = *(*(a2 + v9) + 16);
    if (v10 < result)
    {
      __break(1u);
    }

    else
    {
      sub_1CFE9DF4C(result, v10, &qword_1EC5127E8, MEMORY[0x1E69A2EB8], MEMORY[0x1E69A2EB8], MEMORY[0x1E69A2EB8]);
      (*(*(v6 - 8) + 24))(a2, a1, v6);
      return sub_1CFE8BE40();
    }
  }

  return result;
}

uint64_t sub_1CFE8EFE0()
{
  v0 = sub_1CFF0E29C();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFE5C014();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFF0CA8C();
  sub_1CFF0CBBC();
  sub_1CFE9BEA8(qword_1EDEC4A88, MEMORY[0x1E696B418]);
  if (sub_1CFF0E48C())
  {
    v7 = sub_1CFF0E49C() ^ 1;
  }

  else
  {
    v7 = 1;
  }

  (*(v1 + 8))(v3, v0);
  sub_1CFE9BEF0(v6, sub_1CFE5C014);
  return v7 & 1;
}

uint64_t OvernightMetricsViewModel.withFallbackVisibleDataTypes(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = type metadata accessor for OvernightMetricsViewModel.DataTypeVisibilityDerivationMethod(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = (&v21 - v10);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v21 - v13;
  v15 = type metadata accessor for OvernightMetricsViewModel(0);
  if (sub_1CFE91E10(a1, *(v3 + *(v15 + 56)), MEMORY[0x1E69A2E68], &qword_1EDEC4CD8, MEMORY[0x1E69A2E68], MEMORY[0x1E69A2E80]))
  {
    return sub_1CFE8CF9C(v3, a2, type metadata accessor for OvernightMetricsViewModel);
  }

  v17 = *(v15 + 24);
  v18 = sub_1CFF0CDFC();
  (*(*(v18 - 8) + 56))(v14, 1, 1, v18);
  swift_storeEnumTagMultiPayload();
  LOBYTE(v17) = sub_1CFE9B8CC(v3 + v17, v14);
  sub_1CFE9BEF0(v14, type metadata accessor for OvernightMetricsViewModel.DataTypeVisibilityDerivationMethod);
  result = sub_1CFE8CF9C(v3, a2, type metadata accessor for OvernightMetricsViewModel);
  if (v17)
  {
    *v11 = a1;
    swift_storeEnumTagMultiPayload();
    v19 = *(v15 + 24);
    sub_1CFE8CF9C(a2 + v19, v8, type metadata accessor for OvernightMetricsViewModel.DataTypeVisibilityDerivationMethod);

    sub_1CFE97594(v11, a2 + v19);
    sub_1CFE8CF9C(a2 + v19, v14, type metadata accessor for OvernightMetricsViewModel.DataTypeVisibilityDerivationMethod);
    v20 = sub_1CFE9B8CC(v14, v8);
    sub_1CFE9BEF0(v14, type metadata accessor for OvernightMetricsViewModel.DataTypeVisibilityDerivationMethod);
    if ((v20 & 1) == 0)
    {
      sub_1CFE8BE40();
    }

    sub_1CFE9BEF0(v8, type metadata accessor for OvernightMetricsViewModel.DataTypeVisibilityDerivationMethod);
    return sub_1CFE9BEF0(v11, type metadata accessor for OvernightMetricsViewModel.DataTypeVisibilityDerivationMethod);
  }

  return result;
}

uint64_t OvernightMetricsViewModel.localizedTitle.getter()
{
  v0 = sub_1CFF0C80C();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v1 = sub_1CFF0E55C();
  MEMORY[0x1EEE9AC00](v1 - 8);
  sub_1CFF0E4DC();
  type metadata accessor for HealthBalanceUI();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  sub_1CFF0C7FC();
  return sub_1CFF0E5AC();
}

uint64_t OvernightMetricsViewModel.primaryTintColor.getter()
{
  v0 = OvernightMetricsViewModel.changeDetectedCountToday.getter();
  if (v1)
  {

    return sub_1CFF0DE6C();
  }

  else
  {
    if (v0 == 1)
    {
      if (qword_1EDEC1688 != -1)
      {
        swift_once();
      }

      v3 = qword_1EDEC1690;
    }

    else if (v0)
    {
      if (qword_1EDEC4A30 != -1)
      {
        swift_once();
      }

      v3 = qword_1EDEC4A38;
    }

    else
    {
      if (qword_1EDEC4A40 != -1)
      {
        swift_once();
      }

      v3 = qword_1EDEC4A48;
    }

    v4 = v3;

    return sub_1CFF0DE3C();
  }
}

uint64_t OvernightMetricsViewModel.changeDetectedCountToday.getter()
{
  sub_1CFE8CEEC(0, &qword_1EDEC4CB0, MEMORY[0x1E69A2EB8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v9 - v1;
  v3 = sub_1CFF0CC0C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  OvernightMetricsViewModel.daySummaryForToday.getter(v2);
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    sub_1CFE9CFD8(v2, &qword_1EDEC4CB0, MEMORY[0x1E69A2EB8]);
  }

  else
  {
    (*(v4 + 32))(v6, v2, v3);
    if (sub_1CFF0CBFC())
    {
      v7 = MEMORY[0x1D3877920]();
      (*(v4 + 8))(v6, v3);
      return v7;
    }

    (*(v4 + 8))(v6, v3);
  }

  return 0;
}

uint64_t OvernightMetricsViewModel.backgroundColor.getter()
{
  v0 = sub_1CFF0CFFC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = OvernightMetricsViewModel.changeDetectedCountToday.getter();
  if (v5)
  {

    return sub_1CFF0DE6C();
  }

  else
  {
    if (v4 == 1)
    {
      if (qword_1EC512168 != -1)
      {
        swift_once();
      }

      v7 = qword_1EC516388;
    }

    else if (v4)
    {
      if (qword_1EDEC23A8 != -1)
      {
        swift_once();
      }

      v7 = qword_1EDEC82A0;
    }

    else
    {
      if (qword_1EDEC23B0 != -1)
      {
        swift_once();
      }

      v7 = qword_1EDEC82B8;
    }

    v8 = __swift_project_value_buffer(v0, v7);
    (*(v1 + 16))(v3, v8, v0);
    return sub_1CFF0DEFC();
  }
}

uint64_t OvernightMetricsViewModel.learnMoreTitle.getter()
{
  v0 = MEMORY[0x1E69E6720];
  sub_1CFE8CEEC(0, &qword_1EDEC4CB0, MEMORY[0x1E69A2EB8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v32 - v2;
  v4 = sub_1CFF0CC0C();
  v36 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v33 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1CFF0CEBC();
  v34 = *(v6 - 8);
  v35 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1CFF0C80C();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v38 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1CFF0E55C();
  MEMORY[0x1EEE9AC00](v11 - 8);
  v37 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFE8CEEC(0, qword_1EDEC3470, type metadata accessor for OvernightMetricsWarmupProgress, v0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v32 - v14;
  v16 = type metadata accessor for OvernightMetricsWarmupProgress();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v32 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  OvernightMetricsViewModel.warmupProgress.getter(v15);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    sub_1CFE9CFD8(v15, qword_1EDEC3470, type metadata accessor for OvernightMetricsWarmupProgress);
    goto LABEL_5;
  }

  sub_1CFE9E170(v15, v19, type metadata accessor for OvernightMetricsWarmupProgress);
  if (sub_1CFF0CA1C())
  {
    sub_1CFE9BEF0(v19, type metadata accessor for OvernightMetricsWarmupProgress);
LABEL_5:
    OvernightMetricsViewModel.daySummaryForToday.getter(v3);
    v20 = v36;
    if ((*(v36 + 48))(v3, 1, v4) == 1)
    {
      sub_1CFE9CFD8(v3, &qword_1EDEC4CB0, MEMORY[0x1E69A2EB8]);
    }

    else
    {
      v21 = v33;
      (*(v20 + 32))(v33, v3, v4);
      sub_1CFF0CE7C();
      (*(v20 + 8))(v21, v4);
      sub_1CFF0CE8C();
      v23 = v22;
      (*(v34 + 8))(v8, v35);
      if (v23)
      {

        sub_1CFF0E4DC();
        type metadata accessor for HealthBalanceUI();
        ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
        v25 = [objc_opt_self() bundleForClass_];
LABEL_10:
        v27 = v25;
        sub_1CFF0C7FC();
        return sub_1CFF0E5AC();
      }
    }

    sub_1CFF0E4DC();
    type metadata accessor for HealthBalanceUI();
    v26 = swift_getObjCClassFromMetadata();
    v25 = [objc_opt_self() bundleForClass_];
    goto LABEL_10;
  }

  sub_1CFF0E4DC();
  type metadata accessor for HealthBalanceUI();
  v29 = swift_getObjCClassFromMetadata();
  v30 = [objc_opt_self() bundleForClass_];
  sub_1CFF0C7FC();
  v31 = sub_1CFF0E5AC();
  sub_1CFE9BEF0(v19, type metadata accessor for OvernightMetricsWarmupProgress);
  return v31;
}

uint64_t OvernightMetricsViewModel.warmupProgress.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1CFF0CA6C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFE8CEEC(0, &qword_1EDEC4CB0, MEMORY[0x1E69A2EB8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v18 - v7;
  v9 = sub_1CFF0CC0C();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  OvernightMetricsViewModel.daySummaryForToday.getter(v8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_1CFE9CFD8(v8, &qword_1EDEC4CB0, MEMORY[0x1E69A2EB8]);
    v13 = type metadata accessor for OvernightMetricsWarmupProgress();
    return (*(*(v13 - 8) + 56))(a1, 1, 1, v13);
  }

  else
  {
    (*(v10 + 32))(v12, v8, v9);
    sub_1CFF0CF7C();
    v15 = sub_1CFF0CB1C();
    MEMORY[0x1EEE9AC00](v15);
    *(&v18 - 2) = v12;
    v16 = sub_1CFE8AA04(sub_1CFE9C5C8, (&v18 - 4), sub_1CFE8A828, 0, v15);

    (*(v3 + 32))(a1, v5, v2);
    v17 = type metadata accessor for OvernightMetricsWarmupProgress();
    *(a1 + *(v17 + 20)) = v16;
    (*(*(v17 - 8) + 56))(a1, 0, 1, v17);
    return (*(v10 + 8))(v12, v9);
  }
}

uint64_t sub_1CFE903F0()
{
  v1 = type metadata accessor for OvernightMetricsViewModel.DataTypeVisibilityDerivationMethod(0);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFE8CEEC(0, &qword_1EDEC5180, MEMORY[0x1E69A2F48], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v13 - v5;
  v7 = type metadata accessor for OvernightMetricsViewModel(0);
  sub_1CFE8CF9C(v0 + *(v7 + 24), v3, type metadata accessor for OvernightMetricsViewModel.DataTypeVisibilityDerivationMethod);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1CFE9BEF0(v3, type metadata accessor for OvernightMetricsViewModel.DataTypeVisibilityDerivationMethod);
    v8 = sub_1CFF0CDFC();
    (*(*(v8 - 8) + 56))(v6, 1, 1, v8);
LABEL_4:
    sub_1CFE9CFD8(v6, &qword_1EDEC5180, MEMORY[0x1E69A2F48]);
    return 0;
  }

  sub_1CFE8CA40(v3, v6);
  v9 = sub_1CFF0CDFC();
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(v6, 1, v9) == 1)
  {
    goto LABEL_4;
  }

  v12 = sub_1CFF0CE0C();
  (*(v10 + 8))(v6, v9);
  return v12;
}

uint64_t OvernightMetricsViewModel.learnMoreDescription.getter()
{
  v0 = MEMORY[0x1E69E6720];
  sub_1CFE8CEEC(0, &qword_1EDEC4CB0, MEMORY[0x1E69A2EB8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v64 - v2;
  v4 = sub_1CFF0CC0C();
  v68 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v64 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = sub_1CFF0CEBC();
  v67 = *(v66 - 8);
  MEMORY[0x1EEE9AC00](v66);
  v65 = &v64 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v71 = &v64 - v9;
  v10 = sub_1CFF0C80C();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v70 = &v64 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1CFF0E55C();
  MEMORY[0x1EEE9AC00](v12 - 8);
  v69 = &v64 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFE8CEEC(0, qword_1EDEC3470, type metadata accessor for OvernightMetricsWarmupProgress, v0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v64 - v15;
  v17 = type metadata accessor for OvernightMetricsWarmupProgress();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v64 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  OvernightMetricsViewModel.warmupProgress.getter(v16);
  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {
    sub_1CFE9CFD8(v16, qword_1EDEC3470, type metadata accessor for OvernightMetricsWarmupProgress);
  }

  else
  {
    sub_1CFE9E170(v16, v20, type metadata accessor for OvernightMetricsWarmupProgress);
    if ((sub_1CFF0CA1C() & 1) == 0)
    {
      v42 = sub_1CFE903F0();
      if (v42)
      {
        v43 = v42;
        v44 = [v42 objectForKeyedSubscript_];

        [v44 areAllRequirementsSatisfied];
      }

      sub_1CFF0E4DC();
      type metadata accessor for HealthBalanceUI();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v61 = [objc_opt_self() bundleForClass_];
      sub_1CFF0C7FC();
      v59 = sub_1CFF0E5AC();
      sub_1CFE9BEF0(v20, type metadata accessor for OvernightMetricsWarmupProgress);
      return v59;
    }

    sub_1CFE9BEF0(v20, type metadata accessor for OvernightMetricsWarmupProgress);
  }

  OvernightMetricsViewModel.daySummaryForToday.getter(v3);
  v21 = v68;
  v22 = (*(v68 + 48))(v3, 1, v4);
  v23 = v71;
  if (v22 == 1)
  {
    sub_1CFE9CFD8(v3, &qword_1EDEC4CB0, MEMORY[0x1E69A2EB8]);
    sub_1CFF0E4DC();
    type metadata accessor for HealthBalanceUI();
    v24 = swift_getObjCClassFromMetadata();
    v25 = [objc_opt_self() bundleForClass_];
    sub_1CFF0C7FC();
    return sub_1CFF0E5AC();
  }

  (*(v21 + 32))(v6, v3, v4);
  v27 = v65;
  sub_1CFF0CE7C();
  (*(v21 + 8))(v6, v4);
  v28 = v67;
  v29 = v66;
  (*(v67 + 32))(v23, v27, v66);
  v30 = sub_1CFF0CE8C();
  if (v31)
  {
    v75 = v30;
    v76[0] = v31;
    v32 = 0;
    v76[1] = sub_1CFF0CE9C();
    v76[2] = v33;
    v34 = MEMORY[0x1E69E7CC0];
LABEL_9:
    v35 = &v76[2 * v32];
    while (++v32 != 3)
    {
      v36 = v35 + 2;
      v37 = *v35;
      v35 += 2;
      if (v37)
      {
        v38 = *(v36 - 3);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v34 = sub_1CFE97A5C(0, *(v34 + 2) + 1, 1, v34);
        }

        v40 = *(v34 + 2);
        v39 = *(v34 + 3);
        if (v40 >= v39 >> 1)
        {
          v34 = sub_1CFE97A5C((v39 > 1), v40 + 1, 1, v34);
        }

        *(v34 + 2) = v40 + 1;
        v41 = &v34[16 * v40];
        *(v41 + 4) = v38;
        *(v41 + 5) = v37;
        goto LABEL_9;
      }
    }

    v45 = MEMORY[0x1E69E6158];
    sub_1CFE9E968(0, &qword_1EC512660, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
    swift_arrayDestroy();
    v74 = v34;
    sub_1CFE9E968(0, &qword_1EDEC1718, v45, MEMORY[0x1E69E62F8]);
    sub_1CFE88580();
    v46 = sub_1CFF0E47C();
    v48 = v47;

    v72 = v46;
    v73[0] = v48;
    v49 = 0;
    v73[1] = sub_1CFF0CEAC();
    v73[2] = v50;
    v51 = MEMORY[0x1E69E7CC0];
LABEL_20:
    v52 = &v73[2 * v49];
    while (++v49 != 3)
    {
      v53 = v52 + 2;
      v54 = *v52;
      v52 += 2;
      if (v54)
      {
        v55 = *(v53 - 3);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v51 = sub_1CFE97A5C(0, *(v51 + 2) + 1, 1, v51);
        }

        v57 = *(v51 + 2);
        v56 = *(v51 + 3);
        if (v57 >= v56 >> 1)
        {
          v51 = sub_1CFE97A5C((v56 > 1), v57 + 1, 1, v51);
        }

        *(v51 + 2) = v57 + 1;
        v58 = &v51[16 * v57];
        *(v58 + 4) = v55;
        *(v58 + 5) = v54;
        v29 = v66;
        goto LABEL_20;
      }
    }

    swift_arrayDestroy();
    v74 = v51;
    v59 = sub_1CFF0E47C();

    (*(v67 + 8))(v71, v29);
  }

  else
  {
    sub_1CFF0E4DC();
    type metadata accessor for HealthBalanceUI();
    v62 = swift_getObjCClassFromMetadata();
    v63 = [objc_opt_self() bundleForClass_];
    sub_1CFF0C7FC();
    v59 = sub_1CFF0E5AC();
    (*(v28 + 8))(v23, v29);
  }

  return v59;
}

uint64_t OvernightMetricsViewModel.isLearnMoreDescriptionEligibleForAnnotations.getter()
{
  sub_1CFE8CEEC(0, &qword_1EDEC4CB0, MEMORY[0x1E69A2EB8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v7 - v1;
  OvernightMetricsViewModel.daySummaryForToday.getter(&v7 - v1);
  v3 = sub_1CFF0CC0C();
  v4 = *(v3 - 8);
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    sub_1CFE9CFD8(v2, &qword_1EDEC4CB0, MEMORY[0x1E69A2EB8]);
    v5 = 0;
  }

  else
  {
    v5 = sub_1CFF0CBFC();
    (*(v4 + 8))(v2, v3);
  }

  return v5 & 1;
}

uint64_t sub_1CFE911B0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OvernightMetricsChartPoint();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v43 - v9;
  v11 = *(a1 + 16);
  if (v11 != *(a2 + 16))
  {
    return 0;
  }

  if (!v11 || a1 == a2)
  {
    return 1;
  }

  v12 = 0;
  v13 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v14 = a1 + v13;
  v15 = *(v8 + 72);
  v43 = v15;
  v44 = a2 + v13;
  while (1)
  {
    result = sub_1CFE8CF9C(v14 + v15 * v12, v10, type metadata accessor for OvernightMetricsChartPoint);
    if (v12 == v11)
    {
      break;
    }

    sub_1CFE8CF9C(v44 + v15 * v12, v6, type metadata accessor for OvernightMetricsChartPoint);
    if ((sub_1CFF0C77C() & 1) == 0)
    {
      goto LABEL_42;
    }

    v17 = v4[5];
    v18 = &v10[v17];
    v19 = &v6[v17];
    sub_1CFF0C7AC();
    sub_1CFE9BEA8(&qword_1EDEC4D00, MEMORY[0x1E6969530]);
    if ((sub_1CFF0E4CC() & 1) == 0)
    {
      goto LABEL_42;
    }

    sub_1CFE9DC4C(0, &qword_1EDEC4D30, MEMORY[0x1E69E66A8]);
    if ((sub_1CFF0E4CC() & 1) == 0)
    {
      goto LABEL_42;
    }

    v20 = type metadata accessor for IndividualOvernightMetricChartPointCollection();
    result = sub_1CFE915EC(*&v18[v20[5]], *&v19[v20[5]]);
    if ((result & 1) == 0)
    {
      goto LABEL_42;
    }

    v21 = v20[6];
    v22 = *&v18[v21];
    v23 = *&v19[v21];
    v24 = *(v22 + 16);
    if (v24 != *(v23 + 16))
    {
      goto LABEL_42;
    }

    if (v24)
    {
      v25 = v22 == v23;
    }

    else
    {
      v25 = 1;
    }

    if (!v25)
    {
      v26 = (v22 + 32);
      v27 = (v23 + 32);
      while (v24)
      {
        if (*v26 != *v27)
        {
          goto LABEL_42;
        }

        ++v26;
        ++v27;
        if (!--v24)
        {
          goto LABEL_19;
        }
      }

      __break(1u);
      break;
    }

LABEL_19:
    sub_1CFEBE114(*&v18[v20[7]], *&v19[v20[7]]);
    if ((v28 & 1) == 0)
    {
      goto LABEL_42;
    }

    v29 = v4[6];
    v30 = &v10[v29];
    v31 = v10[v29 + 16];
    v32 = &v6[v29];
    if (v31)
    {
      if ((v32[16] & 1) == 0)
      {
        goto LABEL_42;
      }
    }

    else if ((v32[16] & 1) != 0 || (*v30 == *v32 ? (v33 = v30[1] == *(v32 + 1)) : (v33 = 0), !v33))
    {
LABEL_42:
      sub_1CFE9BEF0(v6, type metadata accessor for OvernightMetricsChartPoint);
      sub_1CFE9BEF0(v10, type metadata accessor for OvernightMetricsChartPoint);
      return 0;
    }

    if (v10[v4[7]] != v6[v4[7]] || v10[v4[8]] != v6[v4[8]] || v10[v4[9]] != v6[v4[9]])
    {
      goto LABEL_42;
    }

    v34 = v4[10];
    v35 = *&v10[v34];
    v36 = *&v10[v34 + 8];
    v37 = &v6[v34];
    if ((v35 != *v37 || v36 != *(v37 + 1)) && (sub_1CFF0EBCC() & 1) == 0)
    {
      goto LABEL_42;
    }

    v38 = v4[11];
    v39 = *&v10[v38];
    v40 = *&v10[v38 + 8];
    v41 = &v6[v38];
    if (v39 == *v41 && v40 == *(v41 + 1))
    {
      sub_1CFE9BEF0(v6, type metadata accessor for OvernightMetricsChartPoint);
      sub_1CFE9BEF0(v10, type metadata accessor for OvernightMetricsChartPoint);
    }

    else
    {
      v42 = sub_1CFF0EBCC();
      sub_1CFE9BEF0(v6, type metadata accessor for OvernightMetricsChartPoint);
      sub_1CFE9BEF0(v10, type metadata accessor for OvernightMetricsChartPoint);
      if ((v42 & 1) == 0)
      {
        return 0;
      }
    }

    ++v12;
    result = 1;
    v15 = v43;
    if (v12 == v11)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1CFE915EC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IndividualOvernightMetricChartPoint(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v34 - v9;
  v11 = *(a1 + 16);
  if (v11 == *(a2 + 16))
  {
    if (!v11 || a1 == a2)
    {
      return 1;
    }

    v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v13 = a1 + v12;
    v14 = a2 + v12;
    v34 = *(v8 + 72);
    while (1)
    {
      v35 = v13;
      sub_1CFE8CF9C(v13, v10, type metadata accessor for IndividualOvernightMetricChartPoint);
      sub_1CFE8CF9C(v14, v6, type metadata accessor for IndividualOvernightMetricChartPoint);
      sub_1CFF0CB6C();
      sub_1CFE9BEA8(&qword_1EDEC4CD0, MEMORY[0x1E69A2E68]);
      sub_1CFF0E63C();
      sub_1CFF0E63C();
      if (v37 != v36)
      {
        break;
      }

      if ((sub_1CFF0C77C() & 1) == 0)
      {
        break;
      }

      sub_1CFF0C7AC();
      sub_1CFE9BEA8(&qword_1EDEC4D00, MEMORY[0x1E6969530]);
      if ((sub_1CFF0E4CC() & 1) == 0)
      {
        break;
      }

      sub_1CFE9DC4C(0, &qword_1EDEC4D30, MEMORY[0x1E69E66A8]);
      if ((sub_1CFF0E4CC() & 1) == 0 || (sub_1CFF0E4CC() & 1) == 0 || (sub_1CFF0E4CC() & 1) == 0)
      {
        break;
      }

      v17 = v4[8];
      v18 = &v10[v17];
      v19 = v10[v17 + 8];
      v20 = &v6[v17];
      v21 = v6[v17 + 8];
      if (v19)
      {
        if (!v21)
        {
          break;
        }
      }

      else
      {
        if (*v18 != *v20)
        {
          LOBYTE(v21) = 1;
        }

        if (v21)
        {
          break;
        }
      }

      if ((sub_1CFF0CCDC() & 1) == 0)
      {
        break;
      }

      v22 = v4[10];
      v23 = *&v10[v22];
      v24 = *&v10[v22 + 8];
      v25 = &v6[v22];
      if ((v23 != *v25 || v24 != *(v25 + 1)) && (sub_1CFF0EBCC() & 1) == 0)
      {
        break;
      }

      v26 = v4[11];
      v27 = *&v10[v26];
      v28 = *&v10[v26 + 8];
      v29 = &v6[v26];
      if ((v27 != *v29 || v28 != *(v29 + 1)) && (sub_1CFF0EBCC() & 1) == 0)
      {
        break;
      }

      v30 = v4[12];
      v31 = *&v10[v30];
      v32 = *&v10[v30 + 8];
      v33 = &v6[v30];
      if (v31 == *v33 && v32 == *(v33 + 1))
      {
        sub_1CFE9BEF0(v6, type metadata accessor for IndividualOvernightMetricChartPoint);
        sub_1CFE9BEF0(v10, type metadata accessor for IndividualOvernightMetricChartPoint);
      }

      else
      {
        v16 = sub_1CFF0EBCC();
        sub_1CFE9BEF0(v6, type metadata accessor for IndividualOvernightMetricChartPoint);
        sub_1CFE9BEF0(v10, type metadata accessor for IndividualOvernightMetricChartPoint);
        if ((v16 & 1) == 0)
        {
          return 0;
        }
      }

      v14 += v34;
      v13 = v35 + v34;
      result = 1;
      if (!--v11)
      {
        return result;
      }
    }

    sub_1CFE9BEF0(v6, type metadata accessor for IndividualOvernightMetricChartPoint);
    sub_1CFE9BEF0(v10, type metadata accessor for IndividualOvernightMetricChartPoint);
  }

  return 0;
}

uint64_t sub_1CFE91A58(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OvernightMetricsAxisConfiguration.DayConfiguration.Label(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v19 - v9;
  v11 = *(a1 + 16);
  if (v11 == *(a2 + 16))
  {
    if (!v11 || a1 == a2)
    {
      v17 = 1;
    }

    else
    {
      v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
      v13 = a1 + v12;
      v14 = a2 + v12;
      v15 = *(v8 + 72);
      while (1)
      {
        sub_1CFE8CF9C(v13, v10, type metadata accessor for OvernightMetricsAxisConfiguration.DayConfiguration.Label);
        sub_1CFE8CF9C(v14, v6, type metadata accessor for OvernightMetricsAxisConfiguration.DayConfiguration.Label);
        sub_1CFF0CB6C();
        sub_1CFE9BEA8(&qword_1EDEC4CD0, MEMORY[0x1E69A2E68]);
        sub_1CFF0E63C();
        sub_1CFF0E63C();
        if (v19[1] != v19[0] || v10[*(v4 + 20)] != v6[*(v4 + 20)] || (sub_1CFF0C77C() & 1) == 0 || (sub_1CFF0DF4C() & 1) == 0 || (sub_1CFF0DE4C() & 1) == 0)
        {
          break;
        }

        v16 = v10[*(v4 + 36)] ^ v6[*(v4 + 36)];
        sub_1CFE9BEF0(v6, type metadata accessor for OvernightMetricsAxisConfiguration.DayConfiguration.Label);
        sub_1CFE9BEF0(v10, type metadata accessor for OvernightMetricsAxisConfiguration.DayConfiguration.Label);
        if ((v16 & 1) == 0)
        {
          v14 += v15;
          v13 += v15;
          if (--v11)
          {
            continue;
          }
        }

        v17 = v16 ^ 1;
        return v17 & 1;
      }

      sub_1CFE9BEF0(v6, type metadata accessor for OvernightMetricsAxisConfiguration.DayConfiguration.Label);
      sub_1CFE9BEF0(v10, type metadata accessor for OvernightMetricsAxisConfiguration.DayConfiguration.Label);
      v17 = 0;
    }
  }

  else
  {
    v17 = 0;
  }

  return v17 & 1;
}

uint64_t sub_1CFE91D6C(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v5 = *v3++;
    v6 = v5;
    v7 = *v4++;
    result = v6 == v7;
    if (v6 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1CFE91E10(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, void (*a5)(uint64_t), uint64_t a6)
{
  v33 = a5;
  v34 = a6;
  v32 = a4;
  v8 = a3(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13.n128_f64[0] = MEMORY[0x1EEE9AC00](v12);
  v15 = &v29 - v14;
  v16 = *(a1 + 16);
  if (v16 != *(a2 + 16))
  {
    v26 = 0;
    return v26 & 1;
  }

  if (!v16 || a1 == a2)
  {
    v26 = 1;
    return v26 & 1;
  }

  v17 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v18 = a1 + v17;
  v19 = a2 + v17;
  v21 = *(v9 + 16);
  v20 = v9 + 16;
  v22 = (v20 - 8);
  v30 = *(v20 + 56);
  v31 = v21;
  while (1)
  {
    v23 = v31;
    result = (v31)(v15, v18, v8, v13);
    if (!v16)
    {
      break;
    }

    v25 = v20;
    v23(v11, v19, v8);
    sub_1CFE9BEA8(v32, v33);
    v26 = sub_1CFF0E4CC();
    v27 = *v22;
    (*v22)(v11, v8);
    v27(v15, v8);
    if (v26)
    {
      v19 += v30;
      v18 += v30;
      v28 = v16-- == 1;
      v20 = v25;
      if (!v28)
      {
        continue;
      }
    }

    return v26 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_1CFE92008(uint64_t a1, uint64_t a2)
{
  v4 = sub_1CFF0CD6C();
  v45 = *(v4 - 8);
  v5 = MEMORY[0x1EEE9AC00](v4);
  v44 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v32 - v7;
  v38 = type metadata accessor for SleepingSampleViewModel(0);
  v9 = MEMORY[0x1EEE9AC00](v38);
  v43 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v32 - v12;
  v14 = *(a1 + 16);
  if (v14 != *(a2 + 16))
  {
LABEL_22:
    v31 = 0;
    return v31 & 1;
  }

  if (!v14 || a1 == a2)
  {
    v31 = 1;
    return v31 & 1;
  }

  v15 = 0;
  v16 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v32 = *(a1 + 16);
  v33 = a2 + v16;
  v39 = (v45 + 8);
  v40 = v45 + 16;
  v34 = *(v11 + 72);
  v35 = a1 + v16;
  v37 = &v32 - v12;
  while (1)
  {
    v17 = v34 * v15;
    result = sub_1CFE8CF9C(v35 + v34 * v15, v13, type metadata accessor for SleepingSampleViewModel);
    if (v15 == v14)
    {
      break;
    }

    v36 = v15;
    sub_1CFE8CF9C(v33 + v17, v43, type metadata accessor for SleepingSampleViewModel);
    sub_1CFF0CB6C();
    sub_1CFE9BEA8(&qword_1EDEC4CD0, MEMORY[0x1E69A2E68]);
    sub_1CFF0E63C();
    sub_1CFF0E63C();
    if (v47 != v46 || (result = sub_1CFF0CABC(), (result & 1) == 0) || (v19 = *(v38 + 24), v20 = *&v37[v19], v21 = *(v43 + v19), v22 = *(v20 + 16), v22 != *(v21 + 16)))
    {
LABEL_21:
      sub_1CFE9BEF0(v43, type metadata accessor for SleepingSampleViewModel);
      sub_1CFE9BEF0(v37, type metadata accessor for SleepingSampleViewModel);
      goto LABEL_22;
    }

    if (v22 && v20 != v21)
    {
      v23 = 0;
      v24 = (*(v45 + 80) + 32) & ~*(v45 + 80);
      v41 = v21 + v24;
      v42 = v20 + v24;
      while (v23 < *(v20 + 16))
      {
        v25 = *(v45 + 72) * v23;
        v26 = *(v45 + 16);
        result = v26(v8, v42 + v25, v4);
        if (v23 >= *(v21 + 16))
        {
          goto LABEL_25;
        }

        v27 = v44;
        v26(v44, v41 + v25, v4);
        sub_1CFE9BEA8(&qword_1EDEC4948, MEMORY[0x1E69A2F20]);
        v28 = sub_1CFF0E4CC();
        v29 = *v39;
        (*v39)(v27, v4);
        result = v29(v8, v4);
        if ((v28 & 1) == 0)
        {
          goto LABEL_21;
        }

        if (v22 == ++v23)
        {
          goto LABEL_16;
        }
      }

      __break(1u);
LABEL_25:
      __break(1u);
      break;
    }

LABEL_16:
    sub_1CFE9DCE8();
    if ((sub_1CFF0E89C() & 1) == 0)
    {
      goto LABEL_21;
    }

    v13 = v37;
    v30 = v43;
    v31 = MEMORY[0x1D3877B70](&v37[*(v38 + 32)], v43 + *(v38 + 32));
    sub_1CFE9BEF0(v30, type metadata accessor for SleepingSampleViewModel);
    sub_1CFE9BEF0(v13, type metadata accessor for SleepingSampleViewModel);
    if (v31)
    {
      v15 = v36 + 1;
      v14 = v32;
      if (v36 + 1 != v32)
      {
        continue;
      }
    }

    return v31 & 1;
  }

  __break(1u);
  return result;
}

unint64_t sub_1CFE924EC(unsigned __int8 a1)
{
  if (a1 <= 4u)
  {
    v6 = 0x65676E6152796164;
    v7 = 0xD000000000000022;
    if (a1 != 2)
    {
      v7 = 0xD000000000000014;
    }

    if (a1)
    {
      v6 = 0xD000000000000019;
    }

    if (a1 <= 1u)
    {
      return v6;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    v1 = 0x736574614479656BLL;
    v2 = 0xD000000000000018;
    if (a1 != 9)
    {
      v2 = 0xD000000000000010;
    }

    if (a1 != 8)
    {
      v1 = v2;
    }

    v3 = 0x696F507472616863;
    v4 = 0xD000000000000013;
    if (a1 != 6)
    {
      v4 = 0xD000000000000010;
    }

    if (a1 != 5)
    {
      v3 = v4;
    }

    if (a1 <= 7u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_1CFE9267C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1CFE9D714(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1CFE926B0(uint64_t a1)
{
  v2 = sub_1CFE9C5D0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CFE926EC(uint64_t a1)
{
  v2 = sub_1CFE9C5D0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t OvernightMetricsViewModel.encode(to:)(void *a1)
{
  v3 = v1;
  sub_1CFE9DB98(0, &qword_1EC512668, sub_1CFE9C5D0, &type metadata for OvernightMetricsViewModel.CodingKeys, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v17 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CFE9C5D0();
  sub_1CFF0EC9C();
  LOBYTE(v20) = 0;
  sub_1CFF0CADC();
  sub_1CFE9BEA8(&qword_1EC512678, MEMORY[0x1E69A2E08]);
  sub_1CFF0EB7C();
  if (!v2)
  {
    v10 = type metadata accessor for OvernightMetricsViewModel(0);
    v20 = *(v3 + v10[5]);
    v19 = 1;
    sub_1CFE8CEEC(0, &qword_1EDEC4D50, MEMORY[0x1E69A2EB8], MEMORY[0x1E69E62F8]);
    sub_1CFE9C624();
    sub_1CFF0EB7C();
    LOBYTE(v20) = 2;
    type metadata accessor for OvernightMetricsViewModel.DataTypeVisibilityDerivationMethod(0);
    sub_1CFE9BEA8(&qword_1EC512690, type metadata accessor for OvernightMetricsViewModel.DataTypeVisibilityDerivationMethod);
    sub_1CFF0EB7C();
    LOBYTE(v20) = 3;
    type metadata accessor for OvernightMetricsChartPoint();
    sub_1CFE9BEA8(&qword_1EC512698, type metadata accessor for OvernightMetricsChartPoint);
    sub_1CFF0EB3C();
    LOBYTE(v20) = 4;
    type metadata accessor for OvernightMetricsChartPointCollection();
    sub_1CFE9BEA8(&qword_1EC5126A0, type metadata accessor for OvernightMetricsChartPointCollection);
    sub_1CFF0EB7C();
    v20 = *(v3 + v10[9]);
    v19 = 5;
    sub_1CFE8CEEC(0, &qword_1EDEC4D48, type metadata accessor for OvernightMetricsChartPoint, MEMORY[0x1E69E62F8]);
    sub_1CFE9C6FC();
    sub_1CFF0EB7C();
    v20 = *(v3 + v10[10]);
    v19 = 6;
    sub_1CFE8CEEC(0, &qword_1EDEC4D60, MEMORY[0x1E6969530], MEMORY[0x1E69E62F8]);
    v12 = v11;
    sub_1CFE9C7D4();
    sub_1CFF0EB7C();
    v13 = v10[11];
    v17[1] = v12;
    v18 = v13;
    LOBYTE(v20) = 7;
    sub_1CFE9DC4C(0, &qword_1EDEC4D78, MEMORY[0x1E69E5F90]);
    v15 = v14;
    sub_1CFE9CD80(&qword_1EC5126B8, &qword_1EC5125F0);
    v18 = v15;
    sub_1CFF0EB7C();
    LOBYTE(v20) = 8;
    sub_1CFF0EB7C();
    v20 = *(v3 + v10[13]);
    v19 = 9;
    sub_1CFF0EB7C();
    v20 = *(v3 + v10[14]);
    v19 = 10;
    sub_1CFE8CEEC(0, &qword_1EDEC4D58, MEMORY[0x1E69A2E68], MEMORY[0x1E69E62F8]);
    sub_1CFE9C8AC();
    sub_1CFF0EB7C();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t OvernightMetricsViewModel.init(from:)@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v100 = a1;
  v86 = a2;
  sub_1CFE9DC4C(0, &qword_1EDEC4D78, MEMORY[0x1E69E5F90]);
  v113 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v87 = &v86 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v88 = &v86 - v5;
  v106 = type metadata accessor for OvernightMetricsChartPointCollection();
  MEMORY[0x1EEE9AC00](v106);
  v89 = &v86 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFE8CEEC(0, qword_1EDEC4FC8, type metadata accessor for OvernightMetricsChartPoint, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v91 = &v86 - v8;
  v107 = type metadata accessor for OvernightMetricsViewModel.DataTypeVisibilityDerivationMethod(0);
  MEMORY[0x1EEE9AC00](v107);
  v92 = &v86 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = sub_1CFF0CADC();
  v93 = *(v97 - 8);
  MEMORY[0x1EEE9AC00](v97);
  v95 = &v86 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFE9DB98(0, &qword_1EC5126D0, sub_1CFE9C5D0, &type metadata for OvernightMetricsViewModel.CodingKeys, MEMORY[0x1E69E6F48]);
  v96 = v11;
  v94 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v101 = &v86 - v12;
  sub_1CFE8DBDC();
  v112 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v111 = &v86 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v110 = &v86 - v16;
  v114 = sub_1CFF0C7AC();
  v102 = *(v114 - 8);
  MEMORY[0x1EEE9AC00](v114);
  v117 = &v86 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v116 = &v86 - v19;
  v20 = sub_1CFF0C81C();
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v86 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = sub_1CFF0C89C();
  v24 = *(v109 - 1);
  MEMORY[0x1EEE9AC00](v109);
  v26 = &v86 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for OvernightMetricsViewModel(0);
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v86 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = *(v30 + 24);
  v32 = sub_1CFF0CDFC();
  (*(*(v32 - 8) + 56))(&v29[v31], 1, 1, v32);
  v103 = v31;
  swift_storeEnumTagMultiPayload();
  v33 = v27[7];
  v34 = type metadata accessor for OvernightMetricsChartPoint();
  v35 = *(*(v34 - 8) + 56);
  v105 = v33;
  v90 = v34;
  v35(&v29[v33], 1, 1);
  v36 = v27[8];
  v115 = v29;
  v37 = &v29[v36];
  (*(v21 + 104))(v23, *MEMORY[0x1E6969868], v20);
  sub_1CFF0C82C();
  (*(v21 + 8))(v23, v20);
  v38 = MEMORY[0x1E69E7CC0];
  *v37 = MEMORY[0x1E69E7CC0];
  v39 = v106;
  v40 = v109;
  (*(v24 + 16))(&v37[*(v106 + 20)], v26, v109);
  v41 = sub_1CFF0CB1C();
  v119 = v38;
  v42 = sub_1CFE8A894(sub_1CFE9EA44, v118, sub_1CFE97588, 0, v41);

  (*(v24 + 8))(v26, v40);
  v43 = *(v39 + 24);
  v104 = v37;
  *&v37[v43] = v42;
  v44 = v27[11];
  v45 = v116;
  sub_1CFF0C78C();
  sub_1CFF0C78C();
  v46 = sub_1CFE9BEA8(&qword_1EDEC5198, MEMORY[0x1E6969530]);
  v47 = v114;
  if ((sub_1CFF0E49C() & 1) == 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  v48 = &v115[v44];
  v108 = v27;
  v109 = &v115[v44];
  v98 = v46;
  v49 = v102;
  v40 = v102 + 32;
  v42 = *(v102 + 4);
  v50 = v110;
  v47 = v114;
  v42(v110, v116, v114);
  v51 = v112;
  v42((v50 + v112[12]), v117, v47);
  v52 = v111;
  sub_1CFE8CF9C(v50, v111, sub_1CFE8DBDC);
  v53 = v51[12];
  v42(v48, v52, v47);
  v54 = *(v49 + 1);
  v46 = (v49 + 8);
  v54(v52 + v53, v47);
  sub_1CFE9E170(v50, v52, sub_1CFE8DBDC);
  v42(&v109[*(v113 + 36)], (v52 + v51[12]), v47);
  v26 = v46;
  v102 = v54;
  v54(v52, v47);
  v55 = v108[12];
  sub_1CFF0C78C();
  v45 = v117;
  sub_1CFF0C78C();
  if ((sub_1CFF0E49C() & 1) == 0)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v56 = &v115[v55];
  v57 = v110;
  v58 = v114;
  v42(v110, v116, v114);
  v59 = v112;
  v42((v57 + v112[12]), v117, v58);
  v60 = v111;
  sub_1CFE8CF9C(v57, v111, sub_1CFE8DBDC);
  v61 = v59[12];
  v42(v56, v60, v58);
  v62 = v60 + v61;
  v63 = v102;
  (v102)(v62, v58);
  sub_1CFE9E170(v57, v60, sub_1CFE8DBDC);
  v64 = v59[12];
  v65 = *(v113 + 36);
  v117 = v56;
  v42((v56 + v65), (v60 + v64), v58);
  v63(v60, v58);
  v40 = v100;
  __swift_project_boxed_opaque_existential_1(v100, *(v100 + 3));
  sub_1CFE9C5D0();
  v66 = v101;
  v67 = v99;
  sub_1CFF0EC8C();
  v26 = v67;
  if (v67)
  {
    v68 = v103;
    __swift_destroy_boxed_opaque_existential_0(v40);
    v72 = v115;
LABEL_6:
    sub_1CFE9BEF0(&v72[v68], type metadata accessor for OvernightMetricsViewModel.DataTypeVisibilityDerivationMethod);
    sub_1CFE9CFD8(&v72[v105], qword_1EDEC4FC8, type metadata accessor for OvernightMetricsChartPoint);
    sub_1CFE9BEF0(v104, type metadata accessor for OvernightMetricsChartPointCollection);

    sub_1CFE9C984(v109);
    sub_1CFE9C984(v117);
  }

  LOBYTE(v121) = 0;
  sub_1CFE9BEA8(&qword_1EC5126D8, MEMORY[0x1E69A2E08]);
  v69 = v95;
  v70 = v97;
  sub_1CFF0EB0C();
  v71 = v103;
  v47 = v66;
  v74 = v115;
  (*(v93 + 32))(v115, v69, v70);
  sub_1CFE8CEEC(0, &qword_1EDEC4D50, MEMORY[0x1E69A2EB8], MEMORY[0x1E69E62F8]);
  v120 = 1;
  sub_1CFE9C9FC();
  sub_1CFF0EB0C();
  *&v74[v108[5]] = v121;
  LOBYTE(v121) = 2;
  sub_1CFE9BEA8(&qword_1EC5126F0, type metadata accessor for OvernightMetricsViewModel.DataTypeVisibilityDerivationMethod);
  v75 = v92;
  v116 = 0;
  sub_1CFF0EB0C();
  sub_1CFE9CB68(v75, &v74[v71], type metadata accessor for OvernightMetricsViewModel.DataTypeVisibilityDerivationMethod);
  LOBYTE(v121) = 3;
  sub_1CFE9BEA8(&qword_1EC5126F8, type metadata accessor for OvernightMetricsChartPoint);
  v76 = v91;
  sub_1CFF0EACC();
  sub_1CFE9CAD4(v76, &v74[v105]);
  LOBYTE(v121) = 4;
  sub_1CFE9BEA8(&qword_1EC512700, type metadata accessor for OvernightMetricsChartPointCollection);
  v77 = v89;
  sub_1CFF0EB0C();
  sub_1CFE9CB68(v77, v104, type metadata accessor for OvernightMetricsChartPointCollection);
  sub_1CFE8CEEC(0, &qword_1EDEC4D48, type metadata accessor for OvernightMetricsChartPoint, MEMORY[0x1E69E62F8]);
  v120 = 5;
  sub_1CFE9CBD0();
  sub_1CFF0EB0C();
  v45 = v108;
  *&v115[v108[9]] = v121;
  sub_1CFE8CEEC(0, &qword_1EDEC4D60, MEMORY[0x1E6969530], MEMORY[0x1E69E62F8]);
  v42 = v79;
  v120 = 6;
  v46 = sub_1CFE9CCA8();
  sub_1CFF0EB0C();
LABEL_11:
  v112 = v42;
  v114 = v46;
  *&v115[*(v45 + 40)] = v121;
  LOBYTE(v121) = 7;
  sub_1CFE9CD80(&qword_1EC512718, &qword_1EC512620);
  v80 = v88;
  v81 = v96;
  sub_1CFF0EB0C();
  if (v26)
  {
    (*(v94 + 8))(v47, v81);
    v83 = v93;
    v68 = v103;
    v78 = v116;
    __swift_destroy_boxed_opaque_existential_0(v40);
    v72 = v115;
    (*(v83 + 8))(v115, v97);
    if (!v78)
    {
    }

    goto LABEL_6;
  }

  sub_1CFE9CE2C(v80, v109);
  LOBYTE(v121) = 8;
  v82 = v87;
  sub_1CFF0EB0C();
  sub_1CFE9CE2C(v82, v117);
  v120 = 9;
  sub_1CFF0EB0C();
  *&v115[v108[13]] = v121;
  sub_1CFE8CEEC(0, &qword_1EDEC4D58, MEMORY[0x1E69A2E68], MEMORY[0x1E69E62F8]);
  v120 = 10;
  sub_1CFE9CEAC();
  sub_1CFF0EB0C();
  v84 = v108[14];
  (*(v94 + 8))(v101, v96);
  v85 = v115;
  *&v115[v84] = v121;
  sub_1CFE8CF9C(v85, v86, type metadata accessor for OvernightMetricsViewModel);
  __swift_destroy_boxed_opaque_existential_0(v100);
  return sub_1CFE9BEF0(v85, type metadata accessor for OvernightMetricsViewModel);
}

uint64_t OvernightMetricsViewModel.Summary.Variant.hashValue.getter()
{
  v1 = *v0;
  sub_1CFF0EC3C();
  MEMORY[0x1D3879980](v1);
  return sub_1CFF0EC7C();
}

uint64_t OvernightMetricsViewModel.Summary.value.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t OvernightMetricsViewModel.Summary.value.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t OvernightMetricsViewModel.Summary.unit.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t OvernightMetricsViewModel.Summary.unit.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

uint64_t OvernightMetricsViewModel.Summary.description.getter()
{
  v1 = *(v0 + 40);

  return v1;
}

uint64_t OvernightMetricsViewModel.Summary.description.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return result;
}

uint64_t OvernightMetricsViewModel.Summary.shortenedDescription.getter()
{
  v1 = *(v0 + 56);

  return v1;
}

uint64_t OvernightMetricsViewModel.Summary.shortenedDescription.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 56) = a1;
  *(v2 + 64) = a2;
  return result;
}

uint64_t OvernightMetricsViewModel.summary.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1CFF0C80C();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v3 = sub_1CFF0E55C();
  MEMORY[0x1EEE9AC00](v3 - 8);
  sub_1CFE8CEEC(0, &qword_1EDEC4CB0, MEMORY[0x1E69A2EB8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v26 - v5;
  v7 = OvernightMetricsViewModel.changeCountDescription.getter();
  if (!v8)
  {
    OvernightMetricsViewModel.daySummaryForToday.getter(v6);
    v19 = sub_1CFF0CC0C();
    v20 = *(v19 - 8);
    if ((*(v20 + 48))(v6, 1, v19) == 1)
    {
      sub_1CFE9CFD8(v6, &qword_1EDEC4CB0, MEMORY[0x1E69A2EB8]);
    }

    else
    {
      v21 = sub_1CFF0CF8C();
      (*(v20 + 8))(v6, v19);
      if (v21 > 0)
      {
        v26 = v21;
        sub_1CFE9CF84();
        v9 = sub_1CFF0E8EC();
        v10 = v22;
        v14 = 0;
        v16 = 0;
        result = 0;
        v18 = 0;
        v13 = 1;
        goto LABEL_11;
      }
    }

    sub_1CFF0E4DC();
    type metadata accessor for HealthBalanceUI();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v24 = [objc_opt_self() bundleForClass_];
    sub_1CFF0C7FC();
    v9 = sub_1CFF0E5AC();
    v10 = v25;
    v13 = 0;
    v14 = 0;
    v16 = 0;
    result = 0;
    v18 = 0;
    goto LABEL_11;
  }

  v9 = v7;
  v10 = v8;
  v11 = OvernightMetricsViewModel.changeDetectedCountToday.getter() != 0;
  if ((v12 | v11))
  {
    v13 = 3;
  }

  else
  {
    v13 = 2;
  }

  v14 = OvernightMetricsViewModel.formattedDateRange.getter();
  v16 = v15;
  result = sub_1CFE94A8C();
LABEL_11:
  *a1 = v13;
  *(a1 + 8) = v9;
  *(a1 + 16) = v10;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = v14;
  *(a1 + 48) = v16;
  *(a1 + 56) = result;
  *(a1 + 64) = v18;
  return result;
}

uint64_t OvernightMetricsViewModel.changeCountDescription.getter()
{
  v0 = sub_1CFF0E53C();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v1 = sub_1CFF0C80C();
  MEMORY[0x1EEE9AC00](v1 - 8);
  v2 = sub_1CFF0E55C();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v3 = OvernightMetricsViewModel.changeDetectedCountToday.getter();
  v4 = 0;
  if ((v5 & 1) == 0)
  {
    if (v3)
    {
      sub_1CFF0E52C();
      sub_1CFF0E51C();
      sub_1CFF0E4FC();
      sub_1CFF0E51C();
      sub_1CFF0E54C();
    }

    else
    {
      sub_1CFF0E4DC();
    }

    type metadata accessor for HealthBalanceUI();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v7 = [objc_opt_self() bundleForClass_];
    sub_1CFF0C7FC();
    return sub_1CFF0E5AC();
  }

  return v4;
}

uint64_t OvernightMetricsViewModel.formattedDateRange.getter()
{
  sub_1CFE8CEEC(0, &qword_1EDEC4D28, MEMORY[0x1E6968130], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v10 - v1;
  sub_1CFE95600(&v10 - v1);
  v3 = sub_1CFF0C49C();
  v4 = *(v3 - 8);
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    sub_1CFE9CFD8(v2, &qword_1EDEC4D28, MEMORY[0x1E6968130]);
    return 0;
  }

  else
  {
    if (qword_1EC512160 != -1)
    {
      swift_once();
    }

    v6 = qword_1EC512AC0;
    v7 = sub_1CFF0C44C();
    v8 = [v6 stringFromDateInterval_];

    if (v8)
    {
      v5 = sub_1CFF0E59C();
    }

    else
    {
      v5 = 0;
    }

    (*(v4 + 8))(v2, v3);
  }

  return v5;
}

uint64_t sub_1CFE94A8C()
{
  v0 = sub_1CFF0C80C();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v62 = &v46 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_1CFF0E55C();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v61 = &v46 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1CFF0C6FC();
  v59 = *(v4 - 8);
  v60 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v58 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_1CFF0C6CC();
  v52 = *(v54 - 8);
  MEMORY[0x1EEE9AC00](v54);
  v49 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1CFF0C6DC();
  v50 = *(v7 - 8);
  v51 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v48 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1CFF0C75C();
  v56 = *(v9 - 8);
  v57 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v46 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v53 = &v46 - v16;
  v17 = sub_1CFF0E53C();
  MEMORY[0x1EEE9AC00](v17 - 8);
  sub_1CFE8CEEC(0, &qword_1EDEC4D28, MEMORY[0x1E6968130], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = &v46 - v19;
  v55 = sub_1CFF0C7AC();
  v21 = *(v55 - 8);
  MEMORY[0x1EEE9AC00](v55);
  v23 = &v46 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v46 - v25;
  sub_1CFE95600(v20);
  v27 = sub_1CFF0C49C();
  v28 = *(v27 - 8);
  if ((*(v28 + 48))(v20, 1, v27) == 1)
  {
    sub_1CFE9CFD8(v20, &qword_1EDEC4D28, MEMORY[0x1E6968130]);
    return 0;
  }

  else
  {
    sub_1CFF0C45C();
    (*(v28 + 8))(v20, v27);
    v30 = v21;
    v31 = *(v21 + 32);
    v47 = v26;
    v32 = v23;
    v33 = v55;
    v31(v26, v32, v55);
    sub_1CFF0E52C();
    v34 = sub_1CFF0E51C();
    MEMORY[0x1D3877140](v34);
    v35 = v49;
    sub_1CFF0C6BC();
    v36 = v48;
    sub_1CFF0C6AC();
    (*(v52 + 8))(v35, v54);
    sub_1CFF0C69C();
    (*(v50 + 8))(v36, v51);
    v37 = *(v56 + 8);
    v38 = v11;
    v39 = v57;
    v37(v38, v57);
    v40 = v58;
    sub_1CFF0C6EC();
    v41 = v53;
    sub_1CFF0C73C();
    (*(v59 + 8))(v40, v60);
    v37(v14, v39);
    sub_1CFE9BEA8(&qword_1EDEC4D10, MEMORY[0x1E6969328]);
    sub_1CFE60C24();
    v42 = v47;
    sub_1CFF0E4EC();
    v37(v41, v39);
    sub_1CFF0E51C();
    sub_1CFF0E54C();
    type metadata accessor for HealthBalanceUI();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v44 = [objc_opt_self() bundleForClass_];
    sub_1CFF0C7FC();
    v45 = sub_1CFF0E5AC();
    (*(v30 + 8))(v42, v33);
    return v45;
  }
}

uint64_t OvernightMetricsViewModel.warmupDaysRemaining.getter()
{
  sub_1CFE8CEEC(0, &qword_1EDEC4CB0, MEMORY[0x1E69A2EB8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v7 - v1;
  OvernightMetricsViewModel.daySummaryForToday.getter(&v7 - v1);
  v3 = sub_1CFF0CC0C();
  v4 = *(v3 - 8);
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    sub_1CFE9CFD8(v2, &qword_1EDEC4CB0, MEMORY[0x1E69A2EB8]);
    return 0;
  }

  else
  {
    v6 = sub_1CFF0CF8C();
    (*(v4 + 8))(v2, v3);
    return v6;
  }
}

uint64_t OvernightMetricsViewModel.lastUpdatedDate.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = MEMORY[0x1E69E6720];
  sub_1CFE8CEEC(0, &qword_1EDEC4CB0, MEMORY[0x1E69A2EB8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v19 - v4;
  sub_1CFE8CEEC(0, &qword_1EDEC4D28, MEMORY[0x1E6968130], v2);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v19 - v7;
  OvernightMetricsViewModel.daySummaryForToday.getter(v5);
  v9 = sub_1CFF0CC0C();
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(v5, 1, v9) == 1)
  {
    v11 = &qword_1EDEC4CB0;
    v12 = MEMORY[0x1E69A2EB8];
    v13 = v5;
  }

  else
  {
    sub_1CFF0CF6C();
    (*(v10 + 8))(v5, v9);
    v14 = sub_1CFF0C49C();
    v15 = *(v14 - 8);
    if ((*(v15 + 48))(v8, 1, v14) != 1)
    {
      sub_1CFF0C45C();
      (*(v15 + 8))(v8, v14);
      v16 = 0;
      goto LABEL_7;
    }

    v11 = &qword_1EDEC4D28;
    v12 = MEMORY[0x1E6968130];
    v13 = v8;
  }

  sub_1CFE9CFD8(v13, v11, v12);
  v16 = 1;
LABEL_7:
  v17 = sub_1CFF0C7AC();
  return (*(*(v17 - 8) + 56))(a1, v16, 1, v17);
}

uint64_t sub_1CFE95600@<X0>(uint64_t a1@<X8>)
{
  v33 = a1;
  v2 = sub_1CFF0CB9C();
  v30 = *(v2 - 8);
  v31 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1CFF0CD6C();
  v28 = *(v5 - 8);
  v29 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1E69E6720];
  sub_1CFE8CEEC(0, &qword_1EDEC4CB0, MEMORY[0x1E69A2EB8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v28 - v13;
  sub_1CFE8CEEC(0, &qword_1EDEC4D28, MEMORY[0x1E6968130], v8);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v28 - v16;
  v32 = v1;
  OvernightMetricsViewModel.daySummaryForToday.getter(v14);
  v18 = sub_1CFF0CC0C();
  v19 = *(v18 - 8);
  v20 = *(v19 + 48);
  if (v20(v14, 1, v18) == 1)
  {
    sub_1CFE9CFD8(v14, &qword_1EDEC4CB0, MEMORY[0x1E69A2EB8]);
    v21 = sub_1CFF0C49C();
    (*(*(v21 - 8) + 56))(v17, 1, 1, v21);
  }

  else
  {
    sub_1CFF0CBAC();
    (*(v19 + 8))(v14, v18);
    sub_1CFF0CD5C();
    (*(v28 + 8))(v7, v29);
    sub_1CFF0CB7C();
    (*(v30 + 8))(v4, v31);
    v22 = sub_1CFF0C49C();
    v23 = *(v22 - 8);
    if ((*(v23 + 48))(v17, 1, v22) != 1)
    {
      v27 = v33;
      (*(v23 + 32))(v33, v17, v22);
      return (*(v23 + 56))(v27, 0, 1, v22);
    }
  }

  OvernightMetricsViewModel.daySummaryForToday.getter(v11);
  if (v20(v11, 1, v18) == 1)
  {
    sub_1CFE9CFD8(v11, &qword_1EDEC4CB0, MEMORY[0x1E69A2EB8]);
    v24 = sub_1CFF0C49C();
    (*(*(v24 - 8) + 56))(v33, 1, 1, v24);
  }

  else
  {
    sub_1CFF0CF6C();
    (*(v19 + 8))(v11, v18);
  }

  v25 = sub_1CFF0C49C();
  result = (*(*(v25 - 8) + 48))(v17, 1, v25);
  if (result != 1)
  {
    return sub_1CFE9CFD8(v17, &qword_1EDEC4D28, MEMORY[0x1E6968130]);
  }

  return result;
}

uint64_t sub_1CFE95B38()
{
  v0 = sub_1CFF0CD6C();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFF0CBCC();
  sub_1CFF0CD2C();
  sub_1CFF0CD0C();
  sub_1CFF0CA2C();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_1CFE95C30(uint64_t *a1, uint64_t a2)
{
  v22 = a1;
  v3 = sub_1CFF0CD6C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1CFF0CB6C();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v11, a2, v7, v9);
  sub_1CFF0CBCC();
  v12 = sub_1CFF0CC7C();
  v14 = v13;
  v15 = (v4 + 8);
  if ((v13 & 1) == 0)
  {
    v17 = v12;
    (*v15)(v6, v3);
    goto LABEL_5;
  }

  v16 = sub_1CFF0CC8C();
  (*v15)(v6, v3);
  if (v16)
  {
    v17 = 0;
LABEL_5:
    v18 = v22;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v18;
    sub_1CFE9B5B4(v17, v14 & 1, v11, isUniquelyReferenced_nonNull_native);
    result = (*(v8 + 8))(v11, v7);
    *v18 = v23;
    return result;
  }

  sub_1CFE9B194(v11, &v23);
  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_1CFE95E7C(uint64_t a1, void (*a2)(uint64_t *, unint64_t), uint64_t a3, uint64_t a4)
{
  v7 = 0;
  v11 = a1;
  v8 = *(a4 + 16);
  while (v8 != v7)
  {
    v9 = *(sub_1CFF0CB6C() - 8);
    a2(&v11, a4 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v7++);
    if (v4)
    {
    }
  }

  return v11;
}

uint64_t OvernightMetricsViewModel.configurationIssue.getter@<X0>(uint64_t a1@<X8>)
{
  v55 = a1;
  v2 = sub_1CFF0CB6C();
  v52 = *(v2 - 8);
  v53 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v51 = &v46 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = type metadata accessor for OvernightMetricsViewModel.DataTypeVisibilityDerivationMethod(0);
  MEMORY[0x1EEE9AC00](v54);
  v5 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1E69E6720];
  sub_1CFE8CEEC(0, &qword_1EDEC5180, MEMORY[0x1E69A2F48], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v46 - v8;
  sub_1CFE8CEEC(0, &qword_1EDEC4C80, MEMORY[0x1E69A2F88], v6);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v50 = &v46 - v11;
  v12 = sub_1CFF0CE4C();
  v47 = *(v12 - 8);
  v48 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v49 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1CFF0CD6C();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v46 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFE8CEEC(0, &qword_1EDEC4CB0, MEMORY[0x1E69A2EB8], v6);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = &v46 - v19;
  v21 = v1;
  OvernightMetricsViewModel.daySummaryForToday.getter(&v46 - v19);
  v22 = sub_1CFF0CC0C();
  v23 = *(v22 - 8);
  if ((*(v23 + 48))(v20, 1, v22) == 1)
  {
    sub_1CFE9CFD8(v20, &qword_1EDEC4CB0, MEMORY[0x1E69A2EB8]);
  }

  else
  {
    sub_1CFF0CBAC();
    (*(v23 + 8))(v20, v22);
    v24 = sub_1CFF0CD3C();
    (*(v15 + 8))(v17, v14);
    if (v24)
    {
LABEL_9:
      v32 = sub_1CFF0CE2C();
      return (*(*(v32 - 8) + 56))(v55, 1, 1, v32);
    }
  }

  v25 = type metadata accessor for OvernightMetricsViewModel(0);
  sub_1CFE8CF9C(v21 + *(v25 + 24), v5, type metadata accessor for OvernightMetricsViewModel.DataTypeVisibilityDerivationMethod);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1CFE9BEF0(v5, type metadata accessor for OvernightMetricsViewModel.DataTypeVisibilityDerivationMethod);
    v26 = sub_1CFF0CDFC();
    (*(*(v26 - 8) + 56))(v9, 1, 1, v26);
LABEL_7:
    v29 = &qword_1EDEC5180;
    v30 = MEMORY[0x1E69A2F48];
    v31 = v9;
LABEL_8:
    sub_1CFE9CFD8(v31, v29, v30);
    goto LABEL_9;
  }

  sub_1CFE8CA40(v5, v9);
  v27 = sub_1CFF0CDFC();
  v28 = *(v27 - 8);
  if ((*(v28 + 48))(v9, 1, v27) == 1)
  {
    goto LABEL_7;
  }

  v35 = v51;
  v34 = v52;
  v36 = v53;
  (*(v52 + 104))(v51, *MEMORY[0x1E69A2E40], v53);
  v37 = v50;
  sub_1CFF0CDEC();
  (*(v34 + 8))(v35, v36);
  (*(v28 + 8))(v9, v27);
  v38 = sub_1CFF0CE6C();
  v39 = *(v38 - 8);
  if ((*(v39 + 48))(v37, 1, v38) == 1)
  {
    v29 = &qword_1EDEC4C80;
    v30 = MEMORY[0x1E69A2F88];
    v31 = v37;
    goto LABEL_8;
  }

  v40 = v49;
  sub_1CFF0CE5C();
  (*(v39 + 8))(v37, v38);
  v42 = v47;
  v41 = v48;
  if ((*(v47 + 88))(v40, v48) != *MEMORY[0x1E69A2F70])
  {
    (*(v42 + 8))(v40, v41);
    goto LABEL_9;
  }

  (*(v42 + 96))(v40, v41);
  v43 = sub_1CFF0CE2C();
  v44 = *(v43 - 8);
  v45 = v55;
  (*(v44 + 32))(v55, v40, v43);
  return (*(v44 + 56))(v45, 0, 1, v43);
}

BOOL OvernightMetricsViewModel.hasConfigurationIssue.getter()
{
  v0 = MEMORY[0x1E69A2F68];
  sub_1CFE8CEEC(0, &qword_1EC512738, MEMORY[0x1E69A2F68], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v7 - v2;
  OvernightMetricsViewModel.configurationIssue.getter(&v7 - v2);
  v4 = sub_1CFF0CE2C();
  v5 = (*(*(v4 - 8) + 48))(v3, 1, v4) != 1;
  sub_1CFE9CFD8(v3, &qword_1EC512738, v0);
  return v5;
}

uint64_t OvernightMetricsViewModel.isWatchExperienceAvailable.getter()
{
  v0 = sub_1CFF0CD6C();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFE8CEEC(0, &qword_1EDEC4CB0, MEMORY[0x1E69A2EB8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v15 - v5;
  OvernightMetricsViewModel.daySummaryForToday.getter(&v15 - v5);
  v7 = sub_1CFF0CC0C();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_1CFE9CFD8(v6, &qword_1EDEC4CB0, MEMORY[0x1E69A2EB8]);
  }

  else
  {
    sub_1CFF0CBAC();
    (*(v8 + 8))(v6, v7);
    v9 = sub_1CFF0CD3C();
    (*(v1 + 8))(v3, v0);
    if (v9)
    {
      return 1;
    }
  }

  v11 = sub_1CFE903F0();
  if (!v11)
  {
    return 2;
  }

  v12 = v11;
  v13 = [v11 objectForKeyedSubscript_];

  v14 = [v13 areAllRequirementsSatisfied];
  return v14;
}

uint64_t OvernightMetricsViewModel.watchExperienceRequiresSetup.getter()
{
  v1 = sub_1CFF0CD6C();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x1E69E6720];
  sub_1CFE8CEEC(0, &qword_1EDEC4CB0, MEMORY[0x1E69A2EB8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v31 - v7;
  v9 = type metadata accessor for OvernightMetricsViewModel.DataTypeVisibilityDerivationMethod(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFE8CEEC(0, &qword_1EDEC5180, MEMORY[0x1E69A2F48], v5);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v31 - v13;
  v15 = type metadata accessor for OvernightMetricsViewModel(0);
  sub_1CFE8CF9C(v0 + *(v15 + 24), v11, type metadata accessor for OvernightMetricsViewModel.DataTypeVisibilityDerivationMethod);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1CFE9BEF0(v11, type metadata accessor for OvernightMetricsViewModel.DataTypeVisibilityDerivationMethod);
    v16 = sub_1CFF0CDFC();
    (*(*(v16 - 8) + 56))(v14, 1, 1, v16);
LABEL_4:
    v19 = &qword_1EDEC5180;
    v20 = MEMORY[0x1E69A2F48];
    v21 = v14;
LABEL_5:
    sub_1CFE9CFD8(v21, v19, v20);
    return 2;
  }

  sub_1CFE8CA40(v11, v14);
  v17 = sub_1CFF0CDFC();
  v18 = *(v17 - 8);
  if ((*(v18 + 48))(v14, 1, v17) == 1)
  {
    goto LABEL_4;
  }

  v23 = sub_1CFF0CE0C();
  (*(v18 + 8))(v14, v17);
  if (!v23)
  {
    return 2;
  }

  v24 = [v23 objectForKeyedSubscript_];
  v25 = [v24 areAllRequirementsSatisfied];

  if (v25)
  {
    v26 = [v23 objectForKeyedSubscript_];
    v27 = [v26 areAllRequirementsSatisfied];

    return v27;
  }

  else
  {
    OvernightMetricsViewModel.daySummaryForToday.getter(v8);
    v28 = sub_1CFF0CC0C();
    v29 = *(v28 - 8);
    if ((*(v29 + 48))(v8, 1, v28) == 1)
    {

      v19 = &qword_1EDEC4CB0;
      v20 = MEMORY[0x1E69A2EB8];
      v21 = v8;
      goto LABEL_5;
    }

    sub_1CFF0CBAC();
    (*(v29 + 8))(v8, v28);
    v30 = sub_1CFF0CD3C();

    (*(v2 + 8))(v4, v1);
    return (v30 & 1) == 0;
  }
}

uint64_t sub_1CFE96EE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v41 = a3;
  v44 = a1;
  v45 = a2;
  v3 = sub_1CFF0CB9C();
  v39 = *(v3 - 8);
  v40 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v38 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x1E69E6720];
  sub_1CFE8CEEC(0, &qword_1EDEC4CB0, MEMORY[0x1E69A2EB8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v42 = &v34 - v7;
  v8 = sub_1CFF0CD6C();
  v36 = *(v8 - 8);
  v37 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v35 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1CFF0CE4C();
  v43 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1E69A2F48];
  sub_1CFE8CEEC(0, &qword_1EDEC5180, MEMORY[0x1E69A2F48], v5);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v34 - v15;
  sub_1CFE8CEEC(0, &qword_1EDEC4C80, MEMORY[0x1E69A2F88], v5);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v34 - v18;
  v20 = sub_1CFF0CE6C();
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v34 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFE9E23C(v45, v16, &qword_1EDEC5180, v13);
  v24 = sub_1CFF0CDFC();
  v25 = *(v24 - 8);
  if ((*(v25 + 48))(v16, 1, v24) == 1)
  {
    sub_1CFE9CFD8(v16, &qword_1EDEC5180, MEMORY[0x1E69A2F48]);
    (*(v21 + 56))(v19, 1, 1, v20);
LABEL_4:
    sub_1CFE9CFD8(v19, &qword_1EDEC4C80, MEMORY[0x1E69A2F88]);
    return 1;
  }

  sub_1CFF0CDEC();
  (*(v25 + 8))(v16, v24);
  if ((*(v21 + 48))(v19, 1, v20) == 1)
  {
    goto LABEL_4;
  }

  (*(v21 + 32))(v23, v19, v20);
  sub_1CFF0CE5C();
  v27 = v43;
  if ((*(v43 + 88))(v12, v10) != *MEMORY[0x1E69A2F78])
  {
    (*(v21 + 8))(v23, v20);
    (*(v27 + 8))(v12, v10);
    return 1;
  }

  (*(v27 + 8))(v12, v10);
  v28 = v42;
  OvernightMetricsViewModel.daySummaryForToday.getter(v42);
  v29 = sub_1CFF0CC0C();
  v30 = *(v29 - 8);
  if ((*(v30 + 48))(v28, 1, v29) == 1)
  {
    (*(v21 + 8))(v23, v20);
    sub_1CFE9CFD8(v28, &qword_1EDEC4CB0, MEMORY[0x1E69A2EB8]);
    return 0;
  }

  else
  {
    v31 = v35;
    sub_1CFF0CBCC();
    (*(v30 + 8))(v28, v29);
    v32 = v38;
    sub_1CFF0CD5C();
    (*(v36 + 8))(v31, v37);
    v33 = sub_1CFF0CB8C();
    (*(v39 + 8))(v32, v40);
    (*(v21 + 8))(v23, v20);
    if (v33)
    {

      return 1;
    }

    return 0;
  }
}

uint64_t sub_1CFE97594(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OvernightMetricsViewModel.DataTypeVisibilityDerivationMethod(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

char *sub_1CFE975F8(char *result, int64_t a2, char a3, char *a4)
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
    sub_1CFE9DD34();
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

char *sub_1CFE976F0(char *result, int64_t a2, char a3, char *a4)
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
    sub_1CFE9E968(0, &qword_1EDEC49C8, MEMORY[0x1E69E63B0], MEMORY[0x1E69E6F90]);
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

char *sub_1CFE9780C(char *result, int64_t a2, char a3, char *a4)
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
    sub_1CFE9E968(0, &qword_1EDEC15E8, MEMORY[0x1E6981AA8], MEMORY[0x1E69E6F90]);
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

char *sub_1CFE97930(char *result, int64_t a2, char a3, char *a4)
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

char *sub_1CFE97A5C(char *result, int64_t a2, char a3, char *a4)
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
    sub_1CFE9E968(0, &qword_1EDEC15C0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
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

char *sub_1CFE97B80(char *result, int64_t a2, char a3, char *a4)
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
    sub_1CFE8CEEC(0, &qword_1EDEC15B0, sub_1CFE9E9B8, MEMORY[0x1E69E6F90]);
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
  v15 = 16 * v8;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[v15])
    {
      memmove(v13, v14, v15);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, v15);
  }

  return v10;
}

char *sub_1CFE97CD8(char *result, int64_t a2, char a3, char *a4)
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
    sub_1CFE9E968(0, &qword_1EC5127E0, &type metadata for SleepingSampleDataType.EducationalSummarySection, MEMORY[0x1E69E6F90]);
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

size_t sub_1CFE97E64(size_t result, int64_t a2, char a3, void *a4, unint64_t *a5, uint64_t (*a6)(uint64_t), uint64_t (*a7)(void))
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

  sub_1CFE8CEEC(0, a5, a6, MEMORY[0x1E69E6F90]);
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

void sub_1CFE98058(void **a1)
{
  v2 = *(sub_1CFF0CB6C() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_1CFEF651C(v3);
  }

  v4 = v3[2];
  v5[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v5[1] = v4;
  sub_1CFE981C4(v5);
  *a1 = v3;
}

void sub_1CFE981C4(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_1CFF0EB8C();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        sub_1CFF0CB6C();
        v6 = sub_1CFF0E64C();
        *(v6 + 16) = v5;
      }

      v7 = *(sub_1CFF0CB6C() - 8);
      v8[0] = (v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80)));
      v8[1] = v5;
      sub_1CFE98690(v8, v9, a1, v4);
      *(v6 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_1CFE982F0(0, v2, 1, a1);
  }
}

void sub_1CFE982F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v60 = sub_1CFF0CB4C();
  v8 = *(v60 - 8);
  MEMORY[0x1EEE9AC00](v60);
  v59 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v58 = &v41 - v11;
  v12 = sub_1CFF0CB6C();
  MEMORY[0x1EEE9AC00](v12);
  v51 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v57 = &v41 - v15;
  v18.n128_f64[0] = MEMORY[0x1EEE9AC00](v16);
  v56 = &v41 - v19;
  v43 = a2;
  if (a3 != a2)
  {
    v20 = *a4;
    v22 = *(v17 + 16);
    v21 = v17 + 16;
    v23 = *(v21 + 56);
    v53 = (v8 + 8);
    v54 = v22;
    v52 = (v21 - 8);
    v55 = v21;
    v24 = (v20 + v23 * (a3 - 1));
    v48 = -v23;
    v49 = (v21 + 16);
    v25 = a1 - a3;
    v50 = v20;
    v42 = v23;
    v26 = v20 + v23 * a3;
    v27 = v58;
LABEL_5:
    v46 = v24;
    v47 = a3;
    v44 = v26;
    v45 = v25;
    v61 = v25;
    while (1)
    {
      v28 = v56;
      v29 = v54;
      (v54)(v56, v26, v12, v18);
      v30 = v12;
      v31 = v57;
      v29(v57, v24, v30);
      sub_1CFF0CB5C();
      v32 = v59;
      sub_1CFF0CB5C();
      v62 = sub_1CFF0CB3C();
      v33 = *v53;
      v34 = v32;
      v35 = v60;
      (*v53)(v34, v60);
      v33(v27, v35);
      v36 = *v52;
      v37 = v31;
      v12 = v30;
      (*v52)(v37, v30);
      v36(v28, v30);
      if ((v62 & 1) == 0)
      {
LABEL_4:
        a3 = v47 + 1;
        v24 = &v46[v42];
        v25 = v45 - 1;
        v26 = v44 + v42;
        if (v47 + 1 == v43)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v50)
      {
        break;
      }

      v38 = *v49;
      v39 = v51;
      (*v49)(v51, v26, v30);
      swift_arrayInitWithTakeFrontToBack();
      v38(v24, v39, v30);
      v24 += v48;
      v26 += v48;
      if (__CFADD__(v61++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_1CFE98690(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v138 = a1;
  v160 = sub_1CFF0CB4C();
  v8 = *(v160 - 8);
  MEMORY[0x1EEE9AC00](v160);
  v159 = &v134 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v158 = &v134 - v11;
  v12 = sub_1CFF0CB6C();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v141 = &v134 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v150 = &v134 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v157 = &v134 - v18;
  v20.n128_f64[0] = MEMORY[0x1EEE9AC00](v19);
  v161 = &v134 - v21;
  v22 = a3[1];
  v146 = a3;
  if (v22 < 1)
  {
    v24 = MEMORY[0x1E69E7CC0];
LABEL_96:
    v12 = v24;
    v24 = *v138;
    if (!*v138)
    {
      goto LABEL_134;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v52 = v146;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
LABEL_128:
      v12 = sub_1CFEF63F0(v12);
    }

    v163 = v12;
    v130 = *(v12 + 16);
    if (v130 >= 2)
    {
      while (*v52)
      {
        v131 = *(v12 + 16 * v130);
        v132 = *(v12 + 16 * (v130 - 1) + 40);
        sub_1CFE99290(*v52 + *(v13 + 72) * v131, *v52 + *(v13 + 72) * *(v12 + 16 * (v130 - 1) + 32), *v52 + *(v13 + 72) * v132, v24);
        if (v5)
        {
          goto LABEL_106;
        }

        if (v132 < v131)
        {
          goto LABEL_121;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v12 = sub_1CFEF63F0(v12);
        }

        if (v130 - 2 >= *(v12 + 16))
        {
          goto LABEL_122;
        }

        v133 = (v12 + 16 * v130);
        *v133 = v131;
        v133[1] = v132;
        v163 = v12;
        sub_1CFEF6364(v130 - 1);
        v12 = v163;
        v130 = *(v163 + 16);
        if (v130 <= 1)
        {
          goto LABEL_106;
        }
      }

      goto LABEL_132;
    }

LABEL_106:

    return;
  }

  v134 = a4;
  v23 = 0;
  v154 = (v8 + 8);
  v155 = v13 + 16;
  v152 = (v13 + 32);
  v153 = (v13 + 8);
  v24 = MEMORY[0x1E69E7CC0];
  v156 = v12;
  v137 = v13;
  while (1)
  {
    v25 = v23 + 1;
    if (v23 + 1 >= v22)
    {
      v41 = v23 + 1;
      v52 = v146;
    }

    else
    {
      v147 = v22;
      v135 = v24;
      v136 = v5;
      v26 = v23;
      v139 = v23;
      v27 = *v146;
      v162 = v27;
      v28 = *(v13 + 72);
      v29 = (v27 + v28 * v25);
      v30 = v12;
      v31 = *(v13 + 16);
      (v31)(v161, v29, v12, v20);
      v32 = v157;
      v148 = v31;
      (v31)(v157, v27 + v28 * v26, v30);
      v33 = v158;
      sub_1CFF0CB5C();
      v34 = v159;
      sub_1CFF0CB5C();
      LODWORD(v149) = sub_1CFF0CB3C();
      v35 = *v154;
      v36 = v34;
      v37 = v160;
      (*v154)(v36, v160);
      v145 = v35;
      (v35)(v33, v37);
      v38 = *(v137 + 8);
      v24 = v153;
      v38(v32, v30);
      v144 = v38;
      v38(v161, v30);
      v39 = v139 + 2;
      v151 = v28;
      v40 = v162 + v28 * (v139 + 2);
      while (1)
      {
        v41 = v147;
        if (v147 == v39)
        {
          break;
        }

        v42 = v156;
        v43 = v148;
        v148();
        v44 = v157;
        v43(v157, v29, v42);
        v45 = v158;
        sub_1CFF0CB5C();
        v46 = v159;
        sub_1CFF0CB5C();
        LOBYTE(v162) = sub_1CFF0CB3C() & 1;
        LODWORD(v162) = v162;
        v47 = v46;
        v48 = v160;
        v49 = v29;
        v50 = v145;
        (v145)(v47, v160);
        v50(v45, v48);
        v24 = v153;
        v51 = v144;
        (v144)(v44, v42);
        v51(v161, v42);
        ++v39;
        v40 += v151;
        v29 = &v151[v49];
        if ((v149 & 1) != v162)
        {
          v41 = v39 - 1;
          goto LABEL_9;
        }
      }

      v5 = v136;
      v52 = v146;
      v13 = v137;
      v12 = v156;
      v23 = v139;
      if ((v149 & 1) == 0)
      {
        goto LABEL_23;
      }

LABEL_9:
      if (v41 < v139)
      {
        goto LABEL_125;
      }

      if (v139 < v41)
      {
        v53 = v41;
        v54 = v151 * (v41 - 1);
        v55 = v41 * v151;
        v147 = v41;
        v56 = v139;
        v57 = v139 * v151;
        do
        {
          if (v56 != --v53)
          {
            v58 = *v52;
            if (!v58)
            {
              goto LABEL_131;
            }

            v59 = *v152;
            (*v152)(v141, v58 + v57, v12);
            if (v57 < v54 || v58 + v57 >= (v58 + v55))
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v57 != v54)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            v59((v58 + v54), v141, v12);
            v52 = v146;
          }

          ++v56;
          v54 -= v151;
          v55 -= v151;
          v57 += v151;
        }

        while (v56 < v53);
        v5 = v136;
        v13 = v137;
        v24 = v135;
        v23 = v139;
        v41 = v147;
      }

      else
      {
LABEL_23:
        v24 = v135;
      }
    }

    v60 = v52[1];
    if (v41 < v60)
    {
      if (__OFSUB__(v41, v23))
      {
        goto LABEL_124;
      }

      if (v41 - v23 < v134)
      {
        if (__OFADD__(v23, v134))
        {
          goto LABEL_126;
        }

        if (v23 + v134 >= v60)
        {
          v61 = v52[1];
        }

        else
        {
          v61 = v23 + v134;
        }

        if (v61 < v23)
        {
LABEL_127:
          __break(1u);
          goto LABEL_128;
        }

        if (v41 != v61)
        {
          break;
        }
      }
    }

    v62 = v41;
    if (v41 < v23)
    {
      goto LABEL_123;
    }

LABEL_35:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v24 = sub_1CFE975F8(0, *(v24 + 2) + 1, 1, v24);
    }

    v64 = *(v24 + 2);
    v63 = *(v24 + 3);
    v65 = v64 + 1;
    v52 = v13;
    if (v64 >= v63 >> 1)
    {
      v24 = sub_1CFE975F8((v63 > 1), v64 + 1, 1, v24);
    }

    *(v24 + 2) = v65;
    v66 = &v24[16 * v64];
    *(v66 + 4) = v23;
    *(v66 + 5) = v62;
    v67 = *v138;
    if (!*v138)
    {
      goto LABEL_133;
    }

    v142 = v62;
    if (v64)
    {
      v13 = v67;
      while (1)
      {
        v68 = v65 - 1;
        if (v65 >= 4)
        {
          break;
        }

        if (v65 == 3)
        {
          v69 = *(v24 + 4);
          v70 = *(v24 + 5);
          v79 = __OFSUB__(v70, v69);
          v71 = v70 - v69;
          v72 = v79;
LABEL_55:
          if (v72)
          {
            goto LABEL_112;
          }

          v85 = &v24[16 * v65];
          v87 = *v85;
          v86 = *(v85 + 1);
          v88 = __OFSUB__(v86, v87);
          v89 = v86 - v87;
          v90 = v88;
          if (v88)
          {
            goto LABEL_115;
          }

          v91 = &v24[16 * v68 + 32];
          v93 = *v91;
          v92 = *(v91 + 1);
          v79 = __OFSUB__(v92, v93);
          v94 = v92 - v93;
          if (v79)
          {
            goto LABEL_118;
          }

          if (__OFADD__(v89, v94))
          {
            goto LABEL_119;
          }

          if (v89 + v94 >= v71)
          {
            if (v71 < v94)
            {
              v68 = v65 - 2;
            }

            goto LABEL_76;
          }

          goto LABEL_69;
        }

        v95 = &v24[16 * v65];
        v97 = *v95;
        v96 = *(v95 + 1);
        v79 = __OFSUB__(v96, v97);
        v89 = v96 - v97;
        v90 = v79;
LABEL_69:
        if (v90)
        {
          goto LABEL_114;
        }

        v98 = &v24[16 * v68];
        v100 = *(v98 + 4);
        v99 = *(v98 + 5);
        v79 = __OFSUB__(v99, v100);
        v101 = v99 - v100;
        if (v79)
        {
          goto LABEL_117;
        }

        if (v101 < v89)
        {
          goto LABEL_3;
        }

LABEL_76:
        v106 = v68 - 1;
        if (v68 - 1 >= v65)
        {
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
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
          goto LABEL_127;
        }

        if (!*v146)
        {
          goto LABEL_130;
        }

        v107 = *&v24[16 * v106 + 32];
        v108 = *&v24[16 * v68 + 40];
        sub_1CFE99290(*v146 + v52[9] * v107, *v146 + v52[9] * *&v24[16 * v68 + 32], *v146 + v52[9] * v108, v13);
        if (v5)
        {
          goto LABEL_106;
        }

        if (v108 < v107)
        {
          goto LABEL_108;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v24 = sub_1CFEF63F0(v24);
        }

        if (v106 >= *(v24 + 2))
        {
          goto LABEL_109;
        }

        v109 = &v24[16 * v106];
        *(v109 + 4) = v107;
        *(v109 + 5) = v108;
        v163 = v24;
        sub_1CFEF6364(v68);
        v24 = v163;
        v65 = *(v163 + 16);
        if (v65 <= 1)
        {
          goto LABEL_3;
        }
      }

      v73 = &v24[16 * v65 + 32];
      v74 = *(v73 - 64);
      v75 = *(v73 - 56);
      v79 = __OFSUB__(v75, v74);
      v76 = v75 - v74;
      if (v79)
      {
        goto LABEL_110;
      }

      v78 = *(v73 - 48);
      v77 = *(v73 - 40);
      v79 = __OFSUB__(v77, v78);
      v71 = v77 - v78;
      v72 = v79;
      if (v79)
      {
        goto LABEL_111;
      }

      v80 = &v24[16 * v65];
      v82 = *v80;
      v81 = *(v80 + 1);
      v79 = __OFSUB__(v81, v82);
      v83 = v81 - v82;
      if (v79)
      {
        goto LABEL_113;
      }

      v79 = __OFADD__(v71, v83);
      v84 = v71 + v83;
      if (v79)
      {
        goto LABEL_116;
      }

      if (v84 >= v76)
      {
        v102 = &v24[16 * v68 + 32];
        v104 = *v102;
        v103 = *(v102 + 1);
        v79 = __OFSUB__(v103, v104);
        v105 = v103 - v104;
        if (v79)
        {
          goto LABEL_120;
        }

        if (v71 < v105)
        {
          v68 = v65 - 2;
        }

        goto LABEL_76;
      }

      goto LABEL_55;
    }

LABEL_3:
    v22 = v146[1];
    v23 = v142;
    v13 = v52;
    if (v142 >= v22)
    {
      goto LABEL_96;
    }
  }

  v135 = v24;
  v136 = v5;
  v110 = *v52;
  v111 = *(v13 + 72);
  v151 = *(v13 + 16);
  v112 = (v110 + v111 * (v41 - 1));
  v148 = -v111;
  v139 = v23;
  v113 = (v23 - v41);
  v149 = v110;
  v140 = v111;
  v114 = v110 + v41 * v111;
  v142 = v61;
LABEL_87:
  v147 = v41;
  v143 = v114;
  v144 = v113;
  v115 = v114;
  v145 = v112;
  v116 = v112;
  while (1)
  {
    v52 = v161;
    v117 = v151;
    (v151)(v161, v115, v12, v20);
    v118 = v157;
    v117(v157, v116, v12);
    v119 = v158;
    sub_1CFF0CB5C();
    v120 = v159;
    sub_1CFF0CB5C();
    LODWORD(v162) = sub_1CFF0CB3C();
    v121 = *v154;
    v122 = v120;
    v123 = v160;
    (*v154)(v122, v160);
    v124 = v119;
    v12 = v156;
    v121(v124, v123);
    v125 = *v153;
    (*v153)(v118, v12);
    v125(v52, v12);
    if ((v162 & 1) == 0)
    {
LABEL_86:
      v41 = v147 + 1;
      v112 = &v145[v140];
      v113 = v144 - 1;
      v62 = v142;
      v114 = v143 + v140;
      if (v147 + 1 != v142)
      {
        goto LABEL_87;
      }

      v5 = v136;
      v13 = v137;
      v24 = v135;
      v23 = v139;
      if (v142 < v139)
      {
        goto LABEL_123;
      }

      goto LABEL_35;
    }

    if (!v149)
    {
      break;
    }

    v126 = *v152;
    v127 = v150;
    (*v152)(v150, v115, v12);
    swift_arrayInitWithTakeFrontToBack();
    v126(v116, v127, v12);
    v116 = v148 + v116;
    v115 += v148;
    if (__CFADD__(v113++, 1))
    {
      goto LABEL_86;
    }
  }

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
}

void sub_1CFE99290(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v72 = a3;
  v67 = sub_1CFF0CB4C();
  v7 = *(v67 - 8);
  MEMORY[0x1EEE9AC00](v67);
  v66 = &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v65 = &v55 - v10;
  v71 = sub_1CFF0CB6C();
  v11 = *(v71 - 8);
  MEMORY[0x1EEE9AC00](v71);
  v64 = &v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v69 = &v55 - v14;
  v16 = *(v15 + 72);
  if (!v16)
  {
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v16 == -1)
  {
    goto LABEL_61;
  }

  v17 = v72 - a2;
  if (v72 - a2 == 0x8000000000000000 && v16 == -1)
  {
    goto LABEL_62;
  }

  v18 = (a2 - a1) / v16;
  v75 = a1;
  v74 = a4;
  if (v18 >= v17 / v16)
  {
    v20 = v17 / v16 * v16;
    if (a4 < a2 || a2 + v20 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v37 = a4 + v20;
    if (v20 >= 1)
    {
      v38 = -v16;
      v59 = (v7 + 8);
      v60 = (v11 + 16);
      v57 = a4;
      v58 = (v11 + 8);
      v39 = v37;
      v70 = a1;
      v61 = -v16;
      v40 = v71;
      while (2)
      {
        while (1)
        {
          v55 = v37;
          v41 = a2;
          v42 = a2 + v38;
          v62 = v41;
          v63 = v42;
          while (1)
          {
            v43 = v72;
            if (v41 <= a1)
            {
              v75 = v41;
              v73 = v55;
              goto LABEL_59;
            }

            v56 = v37;
            v72 += v38;
            v44 = v39 + v38;
            v45 = *v60;
            (*v60)();
            v46 = v64;
            (v45)(v64, v42, v40);
            v47 = v65;
            sub_1CFF0CB5C();
            v48 = v66;
            sub_1CFF0CB5C();
            v68 = sub_1CFF0CB3C();
            v49 = *v59;
            v50 = v48;
            v51 = v67;
            (*v59)(v50, v67);
            v49(v47, v51);
            v52 = *v58;
            (*v58)(v46, v40);
            v52(v69, v40);
            if (v68)
            {
              break;
            }

            v37 = v44;
            v53 = v57;
            if (v43 < v39 || v72 >= v39)
            {
              swift_arrayInitWithTakeFrontToBack();
              v42 = v63;
              v38 = v61;
            }

            else
            {
              v42 = v63;
              v38 = v61;
              if (v43 != v39)
              {
                swift_arrayInitWithTakeBackToFront();
              }
            }

            v39 = v44;
            a1 = v70;
            v41 = v62;
            if (v44 <= v53)
            {
              a2 = v62;
              goto LABEL_58;
            }
          }

          v54 = v57;
          if (v43 < v62 || v72 >= v62)
          {
            break;
          }

          a2 = v63;
          a1 = v70;
          v37 = v56;
          v38 = v61;
          if (v43 != v62)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          if (v39 <= v54)
          {
            goto LABEL_58;
          }
        }

        a2 = v63;
        swift_arrayInitWithTakeFrontToBack();
        a1 = v70;
        v37 = v56;
        v38 = v61;
        if (v39 > v54)
        {
          continue;
        }

        break;
      }
    }

LABEL_58:
    v75 = a2;
    v73 = v37;
  }

  else
  {
    v19 = v18 * v16;
    if (a4 < a1 || a1 + v19 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v63 = a4 + v19;
    v73 = a4 + v19;
    if (v19 >= 1 && a2 < v72)
    {
      v22 = *(v11 + 16);
      v59 = (v7 + 8);
      v60 = v22;
      v61 = v16;
      v62 = v11 + 16;
      v58 = (v11 + 8);
      v23 = v71;
      do
      {
        v70 = a1;
        v24 = v69;
        v25 = v60;
        (v60)(v69, a2, v23);
        v26 = v64;
        (v25)(v64, a4, v23);
        v27 = v65;
        sub_1CFF0CB5C();
        v28 = v66;
        sub_1CFF0CB5C();
        v68 = sub_1CFF0CB3C();
        v29 = a2;
        v30 = *v59;
        v31 = v28;
        v32 = a4;
        v33 = v67;
        (*v59)(v31, v67);
        v30(v27, v33);
        v34 = *v58;
        (*v58)(v26, v23);
        v34(v24, v23);
        if (v68)
        {
          v35 = v61;
          a2 = v29 + v61;
          v36 = v70;
          a4 = v32;
          if (v70 < v29 || v70 >= a2)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v70 != v29)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        else
        {
          a2 = v29;
          v35 = v61;
          a4 = v32 + v61;
          v36 = v70;
          if (v70 < v32 || v70 >= a4)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v70 != v32)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v74 = a4;
        }

        a1 = v36 + v35;
        v75 = a1;
      }

      while (a4 < v63 && a2 < v72);
    }
  }

LABEL_59:
  sub_1CFEF6404(&v75, &v74, &v73);
}

void sub_1CFE9996C(uint64_t a1, uint64_t a2, char a3, void (*a4)(void *__return_ptr, id *, uint64_t *), uint64_t a5)
{
  v44 = a4;
  v45 = a5;
  v8 = sub_1CFF0CB6C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v56 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v43 - v12;
  sub_1CFE9E5B8();
  v15.n128_f64[0] = MEMORY[0x1EEE9AC00](v14 - 8);
  v52 = &v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = *(a1 + 16);
  if (!v50)
  {
LABEL_20:

    return;
  }

  v17 = 0;
  v51 = v9 + 16;
  v55 = (v9 + 32);
  v43 = (v9 + 8);
  v48 = a1;
  v49 = a2;
  v46 = v13;
  v47 = v9;
  while (1)
  {
    if (v17 >= *(a1 + 16))
    {
      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      sub_1CFF0EBEC();
      __break(1u);
      goto LABEL_30;
    }

    v23 = *(v9 + 72);
    (*(v9 + 16))(v13, a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + v23 * v17, v8, v15);
    v24 = *(a2 + 16);
    if (v17 == v24)
    {

      (*v43)(v13, v8);
      return;
    }

    if (v17 >= v24)
    {
      goto LABEL_26;
    }

    v54 = v23;
    v25 = *(a2 + 8 * v17 + 32);
    v26 = *v55;
    v27 = v52;
    (*v55)(v52, v13, v8);
    v28 = v56;
    v29 = v27;
    v30 = v8;
    v26(v56, v29, v8);
    v60 = v25;
    v31 = *v57;

    v33 = sub_1CFEC3AB8(v28);
    v34 = v31[2];
    v35 = (v32 & 1) == 0;
    v36 = v34 + v35;
    if (__OFADD__(v34, v35))
    {
      goto LABEL_27;
    }

    v37 = v32;
    if (v31[3] < v36)
    {
      break;
    }

    if (a3)
    {
      if (v32)
      {
        goto LABEL_16;
      }
    }

    else
    {
      sub_1CFEC57A4();
      if (v37)
      {
        goto LABEL_16;
      }
    }

LABEL_3:
    v18 = v56;
    v19 = *v57;
    *(*v57 + 8 * (v33 >> 6) + 64) |= 1 << v33;
    v8 = v30;
    v26((v19[6] + v33 * v54), v18, v30);
    *(v19[7] + 8 * v33) = v25;
    v20 = v19[2];
    v21 = __OFADD__(v20, 1);
    v22 = v20 + 1;
    if (v21)
    {
      goto LABEL_28;
    }

    v19[2] = v22;
LABEL_5:
    a1 = v48;
    a2 = v49;
    ++v17;
    a3 = 1;
    v13 = v46;
    v9 = v47;
    if (v50 == v17)
    {
      goto LABEL_20;
    }
  }

  sub_1CFEC4200(v36, a3 & 1);
  v38 = sub_1CFEC3AB8(v56);
  if ((v37 & 1) != (v39 & 1))
  {
    goto LABEL_29;
  }

  v33 = v38;
  if ((v37 & 1) == 0)
  {
    goto LABEL_3;
  }

LABEL_16:
  v40 = *v57;
  v59 = *(*(*v57 + 56) + 8 * v33);

  v41 = v53;
  v44(v58, &v59, &v60);
  v53 = v41;
  if (!v41)
  {

    v8 = v30;
    (*v43)(v56, v30);
    *(v40[7] + 8 * v33) = v58[0];

    goto LABEL_5;
  }

  v59 = v53;
  v42 = v53;
  sub_1CFE9E1D8();
  if ((swift_dynamicCast() & 1) == 0)
  {

    (*v43)(v56, v30);

    return;
  }

LABEL_30:
  v58[0] = 0;
  v58[1] = 0xE000000000000000;
  sub_1CFF0E96C();
  MEMORY[0x1D3879330](0xD00000000000001BLL, 0x80000001CFF158D0);
  sub_1CFF0EA0C();
  MEMORY[0x1D3879330](39, 0xE100000000000000);
  sub_1CFF0EA2C();
  __break(1u);
}

void sub_1CFE99EA0(uint64_t a1, uint64_t a2, int a3, void (*a4)(char *, char *), uint64_t a5)
{
  v73 = a5;
  v72 = a4;
  v95 = sub_1CFF0CA6C();
  v84 = *(v95 - 8);
  v8 = MEMORY[0x1EEE9AC00](v95);
  v71 = &v66 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v66 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v94 = &v66 - v13;
  v14 = sub_1CFF0CB6C();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v96 = &v66 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v66 - v18;
  sub_1CFE9E3A4(0, &qword_1EDEC4978, MEMORY[0x1E69A2E68], MEMORY[0x1E69A2DC0]);
  v82 = v20;
  MEMORY[0x1EEE9AC00](v20);
  v81 = &v66 - v21;
  v22 = a1;
  v79 = *(a1 + 16);
  if (!v79)
  {
LABEL_20:

    return;
  }

  v69 = v12;
  v23 = 0;
  v80 = v15 + 16;
  v89 = v84 + 16;
  v90 = (v15 + 32);
  v88 = v84 + 32;
  v68 = (v84 + 8);
  v70 = (v15 + 8);
  v67 = (v84 + 40);
  v78 = v14;
  v77 = a2;
  v76 = a1;
  v75 = v15;
  v74 = v19;
  while (1)
  {
    if (v23 >= *(v22 + 16))
    {
      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      sub_1CFF0EBEC();
      __break(1u);
      goto LABEL_30;
    }

    v27 = *(v15 + 72);
    (*(v15 + 16))(v19, v22 + ((*(v15 + 80) + 32) & ~*(v15 + 80)) + v27 * v23, v14);
    v28 = *(a2 + 16);
    if (v23 == v28)
    {

      (*v70)(v19, v14);
      return;
    }

    if (v23 >= v28)
    {
      goto LABEL_26;
    }

    v87 = v27;
    v29 = v14;
    v91 = a3;
    v30 = a2 + ((*(v84 + 80) + 32) & ~*(v84 + 80));
    v92 = *(v84 + 72);
    v93 = v23;
    v31 = v30 + v92 * v23;
    v32 = v81;
    v33 = *(v82 + 48);
    v34 = v84;
    v35 = *v90;
    (*v90)(v81, v19, v29);
    v36 = *(v34 + 16);
    v37 = v31;
    v38 = v95;
    v36(&v32[v33], v37, v95);
    v39 = v96;
    v86 = v35;
    v35(v96, v32, v29);
    v40 = *(v34 + 32);
    v40(v94, &v32[v33], v38);
    v41 = v83;
    v42 = *v83;
    v44 = sub_1CFEC3AB8(v39);
    v45 = *(v42 + 16);
    v46 = (v43 & 1) == 0;
    v47 = v45 + v46;
    if (__OFADD__(v45, v46))
    {
      goto LABEL_27;
    }

    v48 = v43;
    if (*(v42 + 24) < v47)
    {
      break;
    }

    v51 = v93;
    if (v91)
    {
      v52 = *v41;
      if (v43)
      {
        goto LABEL_16;
      }
    }

    else
    {
      sub_1CFEC5A20();
      v52 = *v41;
      if (v48)
      {
        goto LABEL_16;
      }
    }

LABEL_3:
    v52[(v44 >> 6) + 8] |= 1 << v44;
    v14 = v78;
    v86((v52[6] + v44 * v87), v96, v78);
    v40((v52[7] + v44 * v92), v94, v95);
    v24 = v52[2];
    v25 = __OFADD__(v24, 1);
    v26 = v24 + 1;
    if (v25)
    {
      goto LABEL_28;
    }

    v52[2] = v26;
LABEL_5:
    v22 = v76;
    v23 = v51 + 1;
    a3 = 1;
    a2 = v77;
    v15 = v75;
    v19 = v74;
    if (v79 == v23)
    {
      goto LABEL_20;
    }
  }

  sub_1CFEC45E0(v47, v91 & 1);
  v49 = sub_1CFEC3AB8(v96);
  v51 = v93;
  if ((v48 & 1) != (v50 & 1))
  {
    goto LABEL_29;
  }

  v44 = v49;
  v52 = *v41;
  if ((v48 & 1) == 0)
  {
    goto LABEL_3;
  }

LABEL_16:
  v53 = v36;
  v54 = v44 * v92;
  v55 = v52[7] + v44 * v92;
  v56 = v71;
  v57 = v95;
  v53(v71, v55, v95);
  v58 = v69;
  v59 = v94;
  v60 = v85;
  v72(v56, v94);
  v85 = v60;
  if (!v60)
  {
    v61 = *v68;
    (*v68)(v56, v57);
    v61(v59, v57);
    v14 = v78;
    (*v70)(v96, v78);
    (*v67)(v52[7] + v54, v58, v57);
    goto LABEL_5;
  }

  v62 = *v68;
  (*v68)(v56, v57);
  v99 = v85;
  v63 = v85;
  sub_1CFE9E1D8();
  v64 = swift_dynamicCast();
  v65 = v78;
  if ((v64 & 1) == 0)
  {

    v62(v59, v57);
    (*v70)(v96, v65);

    return;
  }

LABEL_30:
  v97 = 0;
  v98 = 0xE000000000000000;
  sub_1CFF0E96C();
  MEMORY[0x1D3879330](0xD00000000000001BLL, 0x80000001CFF158D0);
  sub_1CFF0EA0C();
  MEMORY[0x1D3879330](39, 0xE100000000000000);
  sub_1CFF0EA2C();
  __break(1u);
}