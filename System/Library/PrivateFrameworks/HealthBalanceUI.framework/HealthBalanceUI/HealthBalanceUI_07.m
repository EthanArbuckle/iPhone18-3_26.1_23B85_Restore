void sub_1CFEFDEB4()
{
  if (!qword_1EDEC20E0)
  {
    sub_1CFEFDBC8();
    sub_1CFEFD6EC(&qword_1EDEC1848, sub_1CFEFDBC8, sub_1CFEFCBD4);
    v0 = sub_1CFF0D4FC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDEC20E0);
    }
  }
}

uint64_t OvernightMetricsSummaryAnnotationProvider.debugIdentifier.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t OvernightMetricsSummaryAnnotationProvider.pregnancyState.getter()
{
  swift_getKeyPath();
  sub_1CFEFF8F0(&qword_1EC512BD8, type metadata accessor for OvernightMetricsSummaryAnnotationProvider);
  sub_1CFF0C8DC();

  return *(v0 + 40);
}

uint64_t sub_1CFEFE038@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1CFEFF8F0(&qword_1EC512BD8, type metadata accessor for OvernightMetricsSummaryAnnotationProvider);
  sub_1CFF0C8DC();

  *a2 = *(v3 + 40);
  return result;
}

uint64_t type metadata accessor for OvernightMetricsSummaryAnnotationProvider()
{
  result = qword_1EC512BE8;
  if (!qword_1EC512BE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1CFEFE154(uint64_t result)
{
  if (*(v1 + 40) != result)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1CFEFF8F0(&qword_1EC512BD8, type metadata accessor for OvernightMetricsSummaryAnnotationProvider);
    sub_1CFF0C8CC();
  }

  return result;
}

uint64_t OvernightMetricsSummaryAnnotationProvider.pregnancyImpactAnnotation.getter()
{
  v1 = sub_1CFF0C80C();
  MEMORY[0x1EEE9AC00](v1 - 8);
  v2 = sub_1CFF0E55C();
  MEMORY[0x1EEE9AC00](v2 - 8);
  swift_getKeyPath();
  sub_1CFEFF8F0(&qword_1EC512BD8, type metadata accessor for OvernightMetricsSummaryAnnotationProvider);
  sub_1CFF0C8DC();

  v3 = *(v0 + 40);
  if (v3 == 2 || (result = 0, v3 == 1))
  {
    sub_1CFF0E4DC();
    type metadata accessor for HealthBalanceUI();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v6 = [objc_opt_self() bundleForClass_];
    sub_1CFF0C7FC();
    return sub_1CFF0E5AC();
  }

  return result;
}

char *OvernightMetricsSummaryAnnotationProvider.annotations.getter()
{
  v0 = OvernightMetricsSummaryAnnotationProvider.pregnancyImpactAnnotation.getter();
  v9[0] = v0;
  v9[1] = v1;
  if (v1)
  {
    v2 = v0;
    v3 = v1;

    v4 = MEMORY[0x1E69E7CC0];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v4 = sub_1CFE97A5C(0, *(v4 + 2) + 1, 1, v4);
    }

    v6 = *(v4 + 2);
    v5 = *(v4 + 3);
    if (v6 >= v5 >> 1)
    {
      v4 = sub_1CFE97A5C((v5 > 1), v6 + 1, 1, v4);
    }

    *(v4 + 2) = v6 + 1;
    v7 = &v4[16 * v6];
    *(v7 + 4) = v2;
    *(v7 + 5) = v3;
  }

  else
  {
    v4 = MEMORY[0x1E69E7CC0];
  }

  sub_1CFEFF894(v9);
  return v4;
}

void *OvernightMetricsSummaryAnnotationProvider.__allocating_init(healthStore:debugIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  v6[5] = 0;
  sub_1CFF0C90C();
  v6[2] = a1;
  v6[3] = a2;
  v6[4] = a3;
  return v6;
}

void *OvernightMetricsSummaryAnnotationProvider.init(healthStore:debugIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[5] = 0;
  sub_1CFF0C90C();
  v3[2] = a1;
  v3[3] = a2;
  v3[4] = a3;
  return v3;
}

uint64_t OvernightMetricsSummaryAnnotationProvider.observePregnancyState()()
{
  v1[5] = v0;
  v2 = sub_1CFF0E22C();
  v1[6] = v2;
  v1[7] = *(v2 - 8);
  v1[8] = swift_task_alloc();
  v3 = sub_1CFF0E21C();
  v1[9] = v3;
  v1[10] = *(v3 - 8);
  v1[11] = swift_task_alloc();
  v4 = sub_1CFF0E24C();
  v1[12] = v4;
  v1[13] = *(v4 - 8);
  v1[14] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1CFEFE784, 0, 0);
}

uint64_t sub_1CFEFE784()
{
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[6];

  sub_1CFF0E1FC();
  sub_1CFF0E23C();
  sub_1CFF0E20C();
  (*(v2 + 8))(v1, v3);
  v0[15] = OBJC_IVAR____TtC15HealthBalanceUI41OvernightMetricsSummaryAnnotationProvider___observationRegistrar;
  v4 = sub_1CFEFF8F0(&qword_1EC512BE0, MEMORY[0x1E696B408]);
  v5 = swift_task_alloc();
  v0[16] = v5;
  *v5 = v0;
  v5[1] = sub_1CFEFE8E0;
  v6 = v0[9];

  return MEMORY[0x1EEE6D8C8](v0 + 2, v6, v4);
}

uint64_t sub_1CFEFE8E0()
{
  *(*v1 + 136) = v0;

  if (v0)
  {
    v2 = sub_1CFEFECA8;
  }

  else
  {
    v2 = sub_1CFEFE9F4;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1CFEFEA18()
{
  if (v0[18])
  {
    sub_1CFF0E6DC();
    v0[19] = sub_1CFF0E6CC();
    v2 = sub_1CFF0E66C();

    return MEMORY[0x1EEE6DFA0](sub_1CFEFEB54, v2, v1);
  }

  else
  {
    v4 = v0[13];
    v3 = v0[14];
    v5 = v0[12];
    (*(v0[10] + 8))(v0[11], v0[9]);
    (*(v4 + 8))(v3, v5);

    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_1CFEFEB54()
{
  v1 = v0[18];
  v2 = v0[5];

  v3 = [v1 state];
  if (*(v2 + 40) != v3)
  {
    v4 = v3;
    v5 = v0[5];
    swift_getKeyPath();
    v6 = swift_task_alloc();
    *(v6 + 16) = v5;
    *(v6 + 24) = v4;
    v0[4] = v5;
    sub_1CFEFF8F0(&qword_1EC512BD8, type metadata accessor for OvernightMetricsSummaryAnnotationProvider);
    sub_1CFF0C8CC();
  }

  return MEMORY[0x1EEE6DFA0](sub_1CFEFEDF0, 0, 0);
}

uint64_t sub_1CFEFECA8()
{
  *(v0 + 24) = *(v0 + 136);
  sub_1CFE9E1D8();
  swift_willThrowTypedImpl();

  return MEMORY[0x1EEE6DFA0](sub_1CFEFED30, 0, 0);
}

uint64_t sub_1CFEFED30()
{
  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[12];
  (*(v0[10] + 8))(v0[11], v0[9]);
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1CFEFEDF0()
{
  v1 = sub_1CFEFF8F0(&qword_1EC512BE0, MEMORY[0x1E696B408]);
  v2 = swift_task_alloc();
  *(v0 + 128) = v2;
  *v2 = v0;
  v2[1] = sub_1CFEFE8E0;
  v3 = *(v0 + 72);

  return MEMORY[0x1EEE6D8C8](v0 + 16, v3, v1);
}

uint64_t OvernightMetricsSummaryAnnotationProvider.fetchPregnancyState()()
{
  v1[5] = v0;
  v2 = sub_1CFF0E22C();
  v1[6] = v2;
  v1[7] = *(v2 - 8);
  v1[8] = swift_task_alloc();
  v3 = sub_1CFF0E21C();
  v1[9] = v3;
  v1[10] = *(v3 - 8);
  v1[11] = swift_task_alloc();
  v4 = sub_1CFF0E24C();
  v1[12] = v4;
  v1[13] = *(v4 - 8);
  v1[14] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1CFEFF04C, 0, 0);
}

uint64_t sub_1CFEFF04C()
{
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[6];

  sub_1CFF0E1FC();
  sub_1CFF0E23C();
  sub_1CFF0E20C();
  (*(v2 + 8))(v1, v3);
  v4 = sub_1CFEFF8F0(&qword_1EC512BE0, MEMORY[0x1E696B408]);
  v5 = swift_task_alloc();
  v0[15] = v5;
  *v5 = v0;
  v5[1] = sub_1CFEFF19C;
  v6 = v0[9];

  return MEMORY[0x1EEE6D8C8](v0 + 2, v6, v4);
}

uint64_t sub_1CFEFF19C()
{
  *(*v1 + 128) = v0;

  if (v0)
  {
    v2 = sub_1CFEFF568;
  }

  else
  {
    v2 = sub_1CFEFF2B0;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1CFEFF2D4()
{
  if (v0[17])
  {
    sub_1CFF0E6DC();
    v0[18] = sub_1CFF0E6CC();
    v2 = sub_1CFF0E66C();

    return MEMORY[0x1EEE6DFA0](sub_1CFEFF410, v2, v1);
  }

  else
  {
    v4 = v0[13];
    v3 = v0[14];
    v5 = v0[12];
    (*(v0[10] + 8))(v0[11], v0[9]);
    (*(v4 + 8))(v3, v5);

    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_1CFEFF410()
{
  v1 = v0[17];
  v2 = v0[5];

  v3 = [v1 state];
  if (*(v2 + 40) != v3)
  {
    v4 = v3;
    v5 = v0[5];
    swift_getKeyPath();
    v6 = swift_task_alloc();
    *(v6 + 16) = v5;
    *(v6 + 24) = v4;
    v0[4] = v5;
    sub_1CFEFF8F0(&qword_1EC512BD8, type metadata accessor for OvernightMetricsSummaryAnnotationProvider);
    sub_1CFF0C8CC();
  }

  return MEMORY[0x1EEE6DFA0](sub_1CFEFF6B0, 0, 0);
}

uint64_t sub_1CFEFF568()
{
  *(v0 + 24) = *(v0 + 128);
  sub_1CFE9E1D8();
  swift_willThrowTypedImpl();

  return MEMORY[0x1EEE6DFA0](sub_1CFEFF5F0, 0, 0);
}

uint64_t sub_1CFEFF5F0()
{
  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[12];
  (*(v0[10] + 8))(v0[11], v0[9]);
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1CFEFF6B0()
{
  v2 = *(v0 + 104);
  v1 = *(v0 + 112);
  v3 = *(v0 + 96);
  (*(*(v0 + 80) + 8))(*(v0 + 88), *(v0 + 72));
  (*(v2 + 8))(v1, v3);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t OvernightMetricsSummaryAnnotationProvider.deinit()
{

  v1 = OBJC_IVAR____TtC15HealthBalanceUI41OvernightMetricsSummaryAnnotationProvider___observationRegistrar;
  v2 = sub_1CFF0C91C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t OvernightMetricsSummaryAnnotationProvider.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC15HealthBalanceUI41OvernightMetricsSummaryAnnotationProvider___observationRegistrar;
  v2 = sub_1CFF0C91C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_1CFEFF894(uint64_t a1)
{
  sub_1CFEDF47C();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1CFEFF8F0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1CFEFF94C()
{
  result = sub_1CFF0C91C();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t type metadata accessor for AnimatableOvernightMetricsChart()
{
  result = qword_1EDEC3400;
  if (!qword_1EDEC3400)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1CFEFFABC()
{
  type metadata accessor for OvernightMetricsChartLayout(319);
  if (v0 <= 0x3F)
  {
    type metadata accessor for OvernightMetricsChartPointCollection();
    if (v1 <= 0x3F)
    {
      sub_1CFF01BF0(319, qword_1EDEC4FC8, type metadata accessor for OvernightMetricsChartPoint, MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        sub_1CFEFFCE8(319, &qword_1EDEC2B38, &type metadata for OvernightMetricsChartAnimationValues.IndividualMetricsState, MEMORY[0x1E69E6720]);
        if (v3 <= 0x3F)
        {
          sub_1CFF01BF0(319, &qword_1EDEC4D58, MEMORY[0x1E69A2E68], MEMORY[0x1E69E62F8]);
          if (v4 <= 0x3F)
          {
            sub_1CFF01BF0(319, &qword_1EDEC1760, type metadata accessor for BaselineBand.Configuration, MEMORY[0x1E69E62F8]);
            if (v5 <= 0x3F)
            {
              type metadata accessor for OvernightMetricsAxisConfiguration(319);
              if (v6 <= 0x3F)
              {
                type metadata accessor for OvernightMetricsChart.Derivations(319);
                if (v7 <= 0x3F)
                {
                  sub_1CFEFFCE8(319, &qword_1EDEC2100, MEMORY[0x1E69E6370], MEMORY[0x1E697DCC0]);
                  if (v8 <= 0x3F)
                  {
                    swift_cvw_initStructMetadataWithLayoutString();
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_1CFEFFCE8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1CFEFFD78(uint64_t a1)
{
  v2 = sub_1CFF0C89C();
  v3 = MEMORY[0x1EEE9AC00](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return sub_1CFF0D78C();
}

uint64_t sub_1CFEFFE40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1CFF0E8FC();
  v5 = 1;
  if (v4 != 1 << *(a1 + 32))
  {
    sub_1CFF01CC4(v4, *(a1 + 36), a1, a2);
    v5 = 0;
  }

  v6 = sub_1CFF0CB6C();
  v7 = *(*(v6 - 8) + 56);

  return v7(a2, v5, 1, v6);
}

uint64_t sub_1CFEFFEFC()
{
  v1 = sub_1CFF0D80C();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v9[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = v0 + *(type metadata accessor for AnimatableOvernightMetricsChart() + 64);
  v6 = *v5;
  if (*(v5 + 8) != 1)
  {

    sub_1CFF0E7DC();
    v7 = sub_1CFF0DA6C();
    sub_1CFF0D00C();

    sub_1CFF0D7FC();
    swift_getAtKeyPath();
    sub_1CFF018C8(v6, 0);
    (*(v2 + 8))(v4, v1);
    LOBYTE(v6) = v9[15];
  }

  return v6 & 1;
}

void sub_1CFF00054(uint64_t a1@<X8>)
{
  v59 = a1;
  v2 = type metadata accessor for AnimatableOvernightMetricsChart();
  v3 = *(v2 - 8);
  v60 = v2 - 8;
  v63 = v3;
  v62 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v61 = &v50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = MEMORY[0x1E695B2F8];
  sub_1CFF01BF0(0, &qword_1EDEC2198, MEMORY[0x1E695B2F8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v57 = &v50 - v6;
  sub_1CFF0148C(0, &qword_1EDEC1BA8, MEMORY[0x1E697F948]);
  v55 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v50 - v8;
  sub_1CFF012D4();
  v53 = v10;
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFF013A4();
  v15 = v14;
  v54 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v50 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFF0148C(0, &qword_1EDEC1B38, MEMORY[0x1E697F960]);
  v56 = v18;
  MEMORY[0x1EEE9AC00](v18);
  v51 = &v50 - v19;
  v64 = v1;
  type metadata accessor for OvernightMetricsChartContent();
  sub_1CFF017E4(qword_1EDEC3698, type metadata accessor for OvernightMetricsChartContent);
  sub_1CFF0D2FC();
  v20 = sub_1CFF017E4(&qword_1EDEC21B8, sub_1CFF013A4);
  v21 = sub_1CFF01438();
  sub_1CFF0DCDC();
  v22 = v53;
  (*(v11 + 16))(v9, v13, v53);
  swift_storeEnumTagMultiPayload();
  *&v73[0] = v15;
  *(&v73[0] + 1) = &type metadata for ChartsAttributeGraphDecider;
  *&v73[1] = v20;
  *(&v73[1] + 1) = v21;
  swift_getOpaqueTypeConformance2();
  v23 = v51;
  sub_1CFF0D93C();
  (*(v11 + 8))(v13, v22);
  (*(v54 + 8))(v17, v15);
  v24 = type metadata accessor for OvernightMetricsChartLayout(0);
  v25 = v52;
  v73[0] = *(v52 + *(v24 + 20) + 56);
  v26 = sub_1CFF0D3DC();
  v27 = v57;
  (*(*(v26 - 8) + 56))(v57, 1, 1, v26);
  sub_1CFE59578();
  sub_1CFF01504();
  sub_1CFF01614();
  v28 = v59;
  sub_1CFF0DCAC();
  sub_1CFF01C54(v27, &qword_1EDEC2198, v58);
  sub_1CFE50B08(v23);
  v29 = v60;
  v30 = *(v60 + 60);
  v31 = v25 + *(v60 + 40);
  v32 = *(v31 + 48);
  v68 = *(v31 + 32);
  v69 = v32;
  v70 = *(v31 + 64);
  v33 = *(v31 + 16);
  v66 = *v31;
  v67 = v33;
  v71[0] = swift_getKeyPath();
  sub_1CFEA4090(v71);
  memcpy(v72, v71, sizeof(v72));
  sub_1CFF01684();
  v35 = v28 + *(v34 + 36);
  sub_1CFF01B20(v25 + v30, v35, type metadata accessor for OvernightMetricsAxisConfiguration);
  *&v73[0] = swift_getKeyPath();
  sub_1CFEA4090(v73);
  sub_1CFF01AB8(0, &qword_1EDEC3948, sub_1CFEA4F58, &type metadata for OvernightMetricsXAxisSpaceReserver, type metadata accessor for OvernightMetricsAxisStyle);
  v37 = v36;
  memcpy((v35 + v36[10]), v72, 0x119uLL);
  v38 = v35 + v37[9];
  v39 = v69;
  *(v38 + 32) = v68;
  *(v38 + 48) = v39;
  *(v38 + 64) = v70;
  v40 = v67;
  *v38 = v66;
  *(v38 + 16) = v40;
  memcpy((v35 + v37[11]), v73, 0x119uLL);
  v41 = v37[12];
  *(v35 + v41) = swift_getKeyPath();
  sub_1CFF01BF0(0, &qword_1EDEC2140, MEMORY[0x1E6969AE8], MEMORY[0x1E697DCB8]);
  swift_storeEnumTagMultiPayload();
  v42 = v61;
  sub_1CFF01B20(v25, v61, type metadata accessor for AnimatableOvernightMetricsChart);
  v43 = (*(v63 + 80) + 16) & ~*(v63 + 80);
  v44 = swift_allocObject();
  sub_1CFF01B88(v42, v44 + v43, type metadata accessor for AnimatableOvernightMetricsChart);
  sub_1CFF01944();
  v46 = (v28 + *(v45 + 36));
  *v46 = sub_1CFF018D4;
  v46[1] = v44;
  sub_1CFF019A4(&v66, &v65, &qword_1EDEC2B38, &type metadata for OvernightMetricsChartAnimationValues.IndividualMetricsState, MEMORY[0x1E69E6720], sub_1CFEFFCE8);
  v47 = sub_1CFF0E14C();
  LOBYTE(v43) = *(v25 + *(v29 + 28));
  sub_1CFF01A18();
  v49 = v28 + *(v48 + 36);
  *v49 = v47;
  *(v49 + 8) = v43;
}

void *sub_1CFF0081C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  sub_1CFF0E6DC();
  sub_1CFF0E6CC();
  sub_1CFF0E66C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = type metadata accessor for AnimatableOvernightMetricsChart();
  v5 = v4[6];
  v25 = *(a1 + v4[5]);
  v6 = type metadata accessor for OvernightMetricsChartContent();
  sub_1CFF01B20(a1 + v5, &a2[v6[5]], type metadata accessor for OvernightMetricsChartPointCollection);
  sub_1CFF019A4(a1 + v4[7], &a2[v6[6]], qword_1EDEC4FC8, type metadata accessor for OvernightMetricsChartPoint, MEMORY[0x1E69E6720], sub_1CFF01BF0);
  v7 = a1 + v4[8];
  v8 = *(v7 + 48);
  v29 = *(v7 + 32);
  v30 = v8;
  v31 = *(v7 + 64);
  v9 = *(v7 + 16);
  v27 = *v7;
  v28 = v9;
  v24 = *(a1 + v4[9]);
  sub_1CFF019A4(&v27, __dst, &qword_1EDEC2B38, &type metadata for OvernightMetricsChartAnimationValues.IndividualMetricsState, MEMORY[0x1E69E6720], sub_1CFEFFCE8);
  v23 = sub_1CFF00AF4();
  v10 = sub_1CFF00D3C();
  v11 = (a1 + v4[10]);
  v12 = *v11;
  v13 = v11[1];
  v14 = v11[2];
  v15 = v11[3];
  v16 = *(a1 + v4[12]);
  v17 = v6[13];

  sub_1CFF00F80(&a2[v17]);
  sub_1CFF01B20(a1, &a2[v6[14]], type metadata accessor for OvernightMetricsChartLayout);
  memcpy(__dst, (a1 + v4[15]), 0x118uLL);
  sub_1CFE55370(__dst, v26);

  *a2 = v25;
  v18 = &a2[v6[7]];
  v19 = v30;
  *(v18 + 2) = v29;
  *(v18 + 3) = v19;
  *(v18 + 8) = v31;
  v20 = v28;
  *v18 = v27;
  *(v18 + 1) = v20;
  a2[v6[8]] = v24;
  *&a2[v6[9]] = v23;
  *&a2[v6[10]] = v10;
  v21 = &a2[v6[11]];
  *v21 = v12;
  v21[1] = v13;
  v21[2] = v14;
  v21[3] = v15;
  *&a2[v6[12]] = v16;
  return memcpy(&a2[v6[15]], __dst, 0x118uLL);
}

uint64_t sub_1CFF00AF4()
{
  sub_1CFF01BF0(0, &qword_1EDEC4980, MEMORY[0x1E69A2E68], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v16 - v2;
  v4 = sub_1CFF0CB6C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for AnimatableOvernightMetricsChart();
  v9 = *(v0 + *(v8 + 40) + 8);
  sub_1CFEFFE40(v9, v3);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_1CFF01C54(v3, &qword_1EDEC4980, MEMORY[0x1E69A2E68]);
    return MEMORY[0x1E69E7CC0];
  }

  (*(v5 + 32))(v7, v3, v4);
  if (*(v9 + 16) != 1)
  {
    (*(v5 + 8))(v7, v4);
    return MEMORY[0x1E69E7CC0];
  }

  v10 = v0 + *(v8 + 24);
  v11 = *(v10 + *(type metadata accessor for OvernightMetricsChartPointCollection() + 24));
  if (*(v11 + 16) && (v12 = sub_1CFEC3AB8(v7), (v13 & 1) != 0))
  {
    v14 = *(*(v11 + 56) + 8 * v12);
  }

  else
  {
    v14 = MEMORY[0x1E69E7CC0];
  }

  (*(v5 + 8))(v7, v4);
  return v14;
}

uint64_t sub_1CFF00D3C()
{
  sub_1CFF01BF0(0, &qword_1EDEC4980, MEMORY[0x1E69A2E68], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v16 - v2;
  v4 = sub_1CFF0CB6C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for AnimatableOvernightMetricsChart();
  v9 = *(v0 + *(v8 + 40));
  sub_1CFEFFE40(v9, v3);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_1CFF01C54(v3, &qword_1EDEC4980, MEMORY[0x1E69A2E68]);
    return MEMORY[0x1E69E7CC0];
  }

  (*(v5 + 32))(v7, v3, v4);
  if (*(v9 + 16) != 1)
  {
    (*(v5 + 8))(v7, v4);
    return MEMORY[0x1E69E7CC0];
  }

  v10 = v0 + *(v8 + 24);
  v11 = *(v10 + *(type metadata accessor for OvernightMetricsChartPointCollection() + 24));
  if (*(v11 + 16) && (v12 = sub_1CFEC3AB8(v7), (v13 & 1) != 0))
  {
    v14 = *(*(v11 + 56) + 8 * v12);
  }

  else
  {
    v14 = MEMORY[0x1E69E7CC0];
  }

  (*(v5 + 8))(v7, v4);
  return v14;
}

unint64_t sub_1CFF00F80@<X0>(double *a1@<X8>)
{
  sub_1CFE69B4C();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v22 - v7;
  v9 = type metadata accessor for AnimatableOvernightMetricsChart();
  if (*(v1 + v9[15] + 24) == 1)
  {
    v10 = v1 + v9[14];
    if (*(v1 + v9[5]) == 1)
    {
      v10 += *(type metadata accessor for OvernightMetricsChart.Derivations(0) + 20);
    }

    sub_1CFF01B20(v10, v5, sub_1CFE69B4C);
    sub_1CFF01B88(v5, v8, sub_1CFE69B4C);
    v11 = (v1 + *(type metadata accessor for OvernightMetricsChartLayout.Configuration(0) + 24));
    sub_1CFEC2950(*v11);
    v13 = v12;
    result = sub_1CFEC2950(v11[1]);
    if (v13 > v15)
    {
      v16 = v13;
    }

    else
    {
      v16 = v15;
    }

    if (v13 > v16)
    {
      __break(1u);
    }

    else
    {
      v17 = type metadata accessor for BaselineSeparators.Configuration(0);
      sub_1CFF01B20(v8, a1 + *(v17 + 20), sub_1CFE69B4C);
      v18 = [objc_opt_self() quaternaryLabelColor];
      v19 = sub_1CFF0DE3C();
      sub_1CFE9C984(v8);
      *a1 = v13;
      a1[1] = v16;
      *(a1 + *(v17 + 24)) = v19;
      return (*(*(v17 - 8) + 56))(a1, 0, 1, v17);
    }
  }

  else
  {
    v20 = type metadata accessor for BaselineSeparators.Configuration(0);
    v21 = *(*(v20 - 8) + 56);

    return v21(a1, 1, 1, v20);
  }

  return result;
}

uint64_t sub_1CFF011E8()
{
  sub_1CFF0E6DC();
  sub_1CFF0E6CC();
  sub_1CFF0E66C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_1CFE78DAC();
  sub_1CFF0D47C();
  if (v1 != 1 || (sub_1CFEFFEFC() & 1) != 0)
  {
    sub_1CFF0D46C();
  }
}

void sub_1CFF012D4()
{
  if (!qword_1EDEC1A40)
  {
    sub_1CFF013A4();
    sub_1CFF017E4(&qword_1EDEC21B8, sub_1CFF013A4);
    sub_1CFF01438();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EDEC1A40);
    }
  }
}

void sub_1CFF013A4()
{
  if (!qword_1EDEC21B0)
  {
    type metadata accessor for OvernightMetricsChartContent();
    sub_1CFF017E4(qword_1EDEC3698, type metadata accessor for OvernightMetricsChartContent);
    v0 = sub_1CFF0D30C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDEC21B0);
    }
  }
}

unint64_t sub_1CFF01438()
{
  result = qword_1EDEC3928;
  if (!qword_1EDEC3928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEC3928);
  }

  return result;
}

void sub_1CFF0148C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_1CFF012D4();
    v7 = v6;
    sub_1CFF013A4();
    v9 = a3(a1, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

unint64_t sub_1CFF01504()
{
  result = qword_1EDEC1B40;
  if (!qword_1EDEC1B40)
  {
    sub_1CFF0148C(255, &qword_1EDEC1B38, MEMORY[0x1E697F960]);
    sub_1CFF013A4();
    sub_1CFF017E4(&qword_1EDEC21B8, sub_1CFF013A4);
    sub_1CFF01438();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEC1B40);
  }

  return result;
}

unint64_t sub_1CFF01614()
{
  result = qword_1EDEC1790;
  if (!qword_1EDEC1790)
  {
    sub_1CFE59578();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEC1790);
  }

  return result;
}

void sub_1CFF01684()
{
  if (!qword_1EDEC1F88)
  {
    sub_1CFF01724();
    sub_1CFF01AB8(255, &qword_1EDEC3948, sub_1CFEA4F58, &type metadata for OvernightMetricsXAxisSpaceReserver, type metadata accessor for OvernightMetricsAxisStyle);
    v0 = sub_1CFF0D62C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDEC1F88);
    }
  }
}

void sub_1CFF01724()
{
  if (!qword_1EDEC1A48)
  {
    sub_1CFF0148C(255, &qword_1EDEC1B38, MEMORY[0x1E697F960]);
    sub_1CFE59578();
    sub_1CFF01504();
    sub_1CFF01614();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EDEC1A48);
    }
  }
}

uint64_t sub_1CFF017E4(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1CFF0182C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = sub_1CFF0C7AC();
    v7 = sub_1CFF017E4(&qword_1EDEC5198, MEMORY[0x1E6969530]);
    v8 = a3(a1, v6, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_1CFF018C8(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_1CFF018D4()
{
  type metadata accessor for AnimatableOvernightMetricsChart();

  return sub_1CFF011E8();
}

void sub_1CFF01944()
{
  if (!qword_1EDEC1E58)
  {
    sub_1CFF01684();
    v0 = sub_1CFF0D62C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDEC1E58);
    }
  }
}

uint64_t sub_1CFF019A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, uint64_t, uint64_t, uint64_t))
{
  v8 = a6(0, a3, a4, a5);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  return a2;
}

void sub_1CFF01A18()
{
  if (!qword_1EDEC1D78)
  {
    sub_1CFF01944();
    sub_1CFF01AB8(255, &qword_1EDEC1C18, sub_1CFE54D3C, &type metadata for BalanceMetricsTimeScope, MEMORY[0x1E697F540]);
    v0 = sub_1CFF0D62C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDEC1D78);
    }
  }
}

void sub_1CFF01AB8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

uint64_t sub_1CFF01B20(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1CFF01B88(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_1CFF01BF0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1CFF01C54(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1CFF01BF0(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1CFF01CC4@<X0>(uint64_t result@<X0>, int a2@<W1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  if (result < 0 || (v4 = result, 1 << *(a3 + 32) <= result))
  {
    __break(1u);
    goto LABEL_9;
  }

  if (((*(a3 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (*(a3 + 36) != a2)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v6 = *(a3 + 48);
  v7 = sub_1CFF0CB6C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 16);
  v10 = v6 + *(v8 + 72) * v4;

  return v9(a4, v10, v7);
}

unint64_t sub_1CFF01D84()
{
  result = qword_1EDEC1D80;
  if (!qword_1EDEC1D80)
  {
    sub_1CFF01A18();
    sub_1CFF01E04();
    sub_1CFF02000();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEC1D80);
  }

  return result;
}

unint64_t sub_1CFF01E04()
{
  result = qword_1EDEC1E60;
  if (!qword_1EDEC1E60)
  {
    sub_1CFF01944();
    sub_1CFF01E84();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEC1E60);
  }

  return result;
}

unint64_t sub_1CFF01E84()
{
  result = qword_1EDEC1F90;
  if (!qword_1EDEC1F90)
  {
    sub_1CFF01684();
    sub_1CFF0148C(255, &qword_1EDEC1B38, MEMORY[0x1E697F960]);
    sub_1CFE59578();
    sub_1CFF01504();
    sub_1CFF01614();
    swift_getOpaqueTypeConformance2();
    sub_1CFF01F70();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEC1F90);
  }

  return result;
}

unint64_t sub_1CFF01F70()
{
  result = qword_1EDEC3950[0];
  if (!qword_1EDEC3950[0])
  {
    sub_1CFF01AB8(255, &qword_1EDEC3948, sub_1CFEA4F58, &type metadata for OvernightMetricsXAxisSpaceReserver, type metadata accessor for OvernightMetricsAxisStyle);
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDEC3950);
  }

  return result;
}

unint64_t sub_1CFF02000()
{
  result = qword_1EDEC1C20;
  if (!qword_1EDEC1C20)
  {
    sub_1CFF01AB8(255, &qword_1EDEC1C18, sub_1CFE54D3C, &type metadata for BalanceMetricsTimeScope, MEMORY[0x1E697F540]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEC1C20);
  }

  return result;
}

uint64_t BalanceInAppWidgetView.init(viewModel:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(type metadata accessor for BalanceInAppWidgetView(0) + 20);
  *(a2 + v4) = swift_getKeyPath();
  sub_1CFF0438C(0, &qword_1EDEC2158, type metadata accessor for BalanceWidgetSystemSmallSpecs, MEMORY[0x1E697DCB8]);
  swift_storeEnumTagMultiPayload();
  return sub_1CFF037A0(a1, a2, type metadata accessor for BalanceWidgetViewModel);
}

uint64_t sub_1CFF02160@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1CFF0D80C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1E697DCB8];
  sub_1CFF0438C(0, &qword_1EDEC2158, type metadata accessor for BalanceWidgetSystemSmallSpecs, MEMORY[0x1E697DCB8]);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v14 - v9;
  v11 = type metadata accessor for BalanceInAppWidgetView(0);
  sub_1CFF04554(v1 + *(v11 + 20), v10, &qword_1EDEC2158, type metadata accessor for BalanceWidgetSystemSmallSpecs, v7, sub_1CFF0438C);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_1CFF037A0(v10, a1, type metadata accessor for BalanceWidgetSystemSmallSpecs);
  }

  sub_1CFF0E7DC();
  v13 = sub_1CFF0DA6C();
  sub_1CFF0D00C();

  sub_1CFF0D7FC();
  swift_getAtKeyPath();

  return (*(v4 + 8))(v6, v3);
}

uint64_t BalanceInAppWidgetView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v55 = a1;
  v56 = sub_1CFF0D9EC();
  v54 = *(v56 - 8);
  MEMORY[0x1EEE9AC00](v56);
  v53 = &v48 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFE87B10();
  v52 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for BalanceWidgetSystemSmallSpecs();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFF02AA8();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFF02C8C(0, &qword_1EC512C18, sub_1CFF02AA8);
  v57 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v48 - v13;
  sub_1CFF02CF0();
  v59 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v48 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFF02DA0();
  v50 = *(v18 - 8);
  v51 = v18;
  MEMORY[0x1EEE9AC00](v18);
  v49 = &v48 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v11 = sub_1CFF0D8EC();
  *(v11 + 1) = 0;
  v11[16] = 1;
  sub_1CFF036B8();
  v21 = &v11[*(v20 + 44)];
  v58 = v1;
  sub_1CFF03010(v1, v21);
  sub_1CFF03750(0, &qword_1EDEC15F0, MEMORY[0x1E6980D50], MEMORY[0x1E69E6F90]);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_1CFF0FCB0;
  v23 = sub_1CFF0DADC();
  *(v22 + 32) = v23;
  v24 = sub_1CFF0DAFC();
  *(v22 + 33) = v24;
  v25 = sub_1CFF0DAEC();
  sub_1CFF0DAEC();
  if (sub_1CFF0DAEC() != v23)
  {
    v25 = sub_1CFF0DAEC();
  }

  sub_1CFF0DAEC();
  if (sub_1CFF0DAEC() != v24)
  {
    v25 = sub_1CFF0DAEC();
  }

  sub_1CFF0D40C();
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  sub_1CFF037A0(v11, v14, sub_1CFF02AA8);
  v34 = &v14[*(v57 + 36)];
  *v34 = v25;
  *(v34 + 1) = v27;
  *(v34 + 2) = v29;
  *(v34 + 3) = v31;
  *(v34 + 4) = v33;
  v34[40] = 0;
  KeyPath = swift_getKeyPath();
  v36 = v58;
  sub_1CFF02160(v8);
  sub_1CFEE1080(v36, v61);
  sub_1CFF038D8(v8, type metadata accessor for BalanceWidgetSystemSmallSpecs);
  v62[0] = KeyPath;
  memcpy(&v62[1], v61, 0x118uLL);
  sub_1CFF03808(v14, v17, &qword_1EC512C18, sub_1CFF02AA8);
  v37 = v59;
  memcpy(&v17[*(v59 + 36)], v62, 0x120uLL);
  v63 = KeyPath;
  memcpy(v64, v61, sizeof(v64));
  v38 = MEMORY[0x1E6980A08];
  sub_1CFF04554(v62, v60, &qword_1EDEC1AB8, &type metadata for OvernightMetricsChartSpec, MEMORY[0x1E6980A08], sub_1CFF03750);
  sub_1CFF03878(&v63, &qword_1EDEC1AB8, &type metadata for OvernightMetricsChartSpec, v38, sub_1CFF03750);
  v39 = *MEMORY[0x1E697E728];
  v40 = sub_1CFF0D61C();
  (*(*(v40 - 8) + 104))(v5, v39, v40);
  sub_1CFF02FC8(&qword_1EDEC2050, MEMORY[0x1E697E730]);
  result = sub_1CFF0E4CC();
  if (result)
  {
    v42 = sub_1CFF02E74();
    v43 = sub_1CFF02FC8(&qword_1EDEC1638, sub_1CFE87B10);
    v44 = v49;
    v45 = v52;
    sub_1CFF0DD6C();
    sub_1CFF038D8(v5, sub_1CFE87B10);
    sub_1CFF038D8(v17, sub_1CFF02CF0);
    v46 = v53;
    sub_1CFF0D9DC();
    v60[0] = v37;
    v60[1] = v45;
    v60[2] = v42;
    v60[3] = v43;
    swift_getOpaqueTypeConformance2();
    v47 = v51;
    sub_1CFF0DDBC();
    (*(v54 + 8))(v46, v56);
    return (*(v50 + 8))(v44, v47);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1CFF02AA8()
{
  if (!qword_1EC512BF8)
  {
    sub_1CFF0438C(255, &qword_1EC512C00, sub_1CFF02B5C, MEMORY[0x1E6981F40]);
    sub_1CFF02C28(&qword_1EC512C10, &qword_1EC512C00, sub_1CFF02B5C);
    v0 = sub_1CFF0DFFC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC512BF8);
    }
  }
}

void sub_1CFF02B5C()
{
  if (!qword_1EC512C08)
  {
    type metadata accessor for BalanceInAppWidgetView.Header(255);
    sub_1CFF02C8C(255, &qword_1EDEC2048, type metadata accessor for OvernightMetricsChart);
    type metadata accessor for BalanceWidgetSystemSmallTitleView(255);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EC512C08);
    }
  }
}

uint64_t sub_1CFF02C28(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_1CFF0438C(255, a2, a3, MEMORY[0x1E6981F40]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1CFF02C8C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

void sub_1CFF02CF0()
{
  if (!qword_1EC512C20)
  {
    sub_1CFF02C8C(255, &qword_1EC512C18, sub_1CFF02AA8);
    sub_1CFF03750(255, &qword_1EDEC1AB8, &type metadata for OvernightMetricsChartSpec, MEMORY[0x1E6980A08]);
    v0 = sub_1CFF0D62C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC512C20);
    }
  }
}

void sub_1CFF02DA0()
{
  if (!qword_1EC512C28)
  {
    sub_1CFF02CF0();
    sub_1CFE87B10();
    sub_1CFF02E74();
    sub_1CFF02FC8(&qword_1EDEC1638, sub_1CFE87B10);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EC512C28);
    }
  }
}

unint64_t sub_1CFF02E74()
{
  result = qword_1EC512C30;
  if (!qword_1EC512C30)
  {
    sub_1CFF02CF0();
    sub_1CFF02EF4();
    sub_1CFEFD058();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC512C30);
  }

  return result;
}

unint64_t sub_1CFF02EF4()
{
  result = qword_1EC512C38;
  if (!qword_1EC512C38)
  {
    sub_1CFF02C8C(255, &qword_1EC512C18, sub_1CFF02AA8);
    sub_1CFF02FC8(&qword_1EC512C40, sub_1CFF02AA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC512C38);
  }

  return result;
}

uint64_t sub_1CFF02FC8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1CFF03010@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for BalanceWidgetSystemSmallTitleView(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v40 - v8;
  v10 = type metadata accessor for BalanceWidgetSystemSmallSpecs();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for OvernightMetricsViewModel(0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for OvernightMetricsChart(0);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v47 = &v40 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFF02C8C(0, &qword_1EDEC2048, type metadata accessor for OvernightMetricsChart);
  v41 = v18;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v40 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v42 = &v40 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v44 = &v40 - v24;
  v25 = type metadata accessor for BalanceInAppWidgetView.Header(0);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v45 = &v40 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v48 = &v40 - v28;
  sub_1CFF0E6DC();
  v43 = sub_1CFF0E6CC();
  sub_1CFF0E66C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_1CFF044DC(a1, v48, type metadata accessor for BalanceWidgetViewModel);
  LOBYTE(v49[0]) = *(a1 + *(type metadata accessor for BalanceWidgetViewModel() + 24));
  sub_1CFF044DC(a1, v15, type metadata accessor for OvernightMetricsViewModel);
  OvernightMetricsChart.init(timeScope:model:alignWarmupProgressCounterToChartPlotArea:)(v49, v15, 1, v47);
  sub_1CFF02160(v12);
  v46 = sub_1CFEE0EA8();
  sub_1CFF038D8(v12, type metadata accessor for BalanceWidgetSystemSmallSpecs);
  sub_1CFF0E0EC();
  sub_1CFF0D6BC();
  v29 = v42;
  sub_1CFF037A0(v47, v42, type metadata accessor for OvernightMetricsChart);
  v30 = (v29 + *(v41 + 36));
  v31 = v49[5];
  v30[4] = v49[4];
  v30[5] = v31;
  v30[6] = v49[6];
  v32 = v49[1];
  *v30 = v49[0];
  v30[1] = v32;
  v33 = v49[3];
  v30[2] = v49[2];
  v30[3] = v33;
  v34 = v44;
  sub_1CFF03808(v29, v44, &qword_1EDEC2048, type metadata accessor for OvernightMetricsChart);
  sub_1CFF044DC(a1, v9, type metadata accessor for BalanceWidgetViewModel);
  *&v9[*(v4 + 20)] = swift_getKeyPath();
  sub_1CFF0438C(0, &qword_1EDEC2158, type metadata accessor for BalanceWidgetSystemSmallSpecs, MEMORY[0x1E697DCB8]);
  swift_storeEnumTagMultiPayload();
  v35 = v48;
  v36 = v45;
  sub_1CFF044DC(v48, v45, type metadata accessor for BalanceInAppWidgetView.Header);
  sub_1CFF045C8(v34, v20);
  sub_1CFF044DC(v9, v6, type metadata accessor for BalanceWidgetSystemSmallTitleView);
  sub_1CFF044DC(v36, a2, type metadata accessor for BalanceInAppWidgetView.Header);
  sub_1CFF02B5C();
  v38 = v37;
  sub_1CFF045C8(v20, a2 + *(v37 + 48));
  sub_1CFF044DC(v6, a2 + *(v38 + 64), type metadata accessor for BalanceWidgetSystemSmallTitleView);
  sub_1CFF038D8(v9, type metadata accessor for BalanceWidgetSystemSmallTitleView);
  sub_1CFF04650(v34);
  sub_1CFF038D8(v35, type metadata accessor for BalanceInAppWidgetView.Header);
  sub_1CFF038D8(v6, type metadata accessor for BalanceWidgetSystemSmallTitleView);
  sub_1CFF04650(v20);
  sub_1CFF038D8(v36, type metadata accessor for BalanceInAppWidgetView.Header);
}

void sub_1CFF036B8()
{
  if (!qword_1EC512C48)
  {
    sub_1CFF0438C(255, &qword_1EC512C00, sub_1CFF02B5C, MEMORY[0x1E6981F40]);
    v0 = sub_1CFF0D58C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC512C48);
    }
  }
}

void sub_1CFF03750(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1CFF037A0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1CFF03808(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t))
{
  sub_1CFF02C8C(0, a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_1CFF03878(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = a5(0);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t sub_1CFF038D8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1CFF03954@<X0>(uint64_t *a1@<X8>)
{
  v52 = a1;
  sub_1CFF04294();
  v50 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v53 = &v49 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v51 = (&v49 - v4);
  sub_1CFF0438C(0, &qword_1EDEC1A58, MEMORY[0x1E6980E30], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v49 - v6;
  v8 = sub_1CFF0DBEC();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1CFF0C80C();
  MEMORY[0x1EEE9AC00](v12 - 8);
  v13 = sub_1CFF0E55C();
  MEMORY[0x1EEE9AC00](v13 - 8);
  sub_1CFF0E6DC();
  v49 = sub_1CFF0E6CC();
  sub_1CFF0E66C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_1CFF0E4DC();
  type metadata accessor for HealthBalanceUI();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v15 = [objc_opt_self() bundleForClass_];
  sub_1CFF0C7FC();
  v54 = sub_1CFF0E5AC();
  v55 = v16;
  sub_1CFE60C24();
  v17 = sub_1CFF0DC6C();
  v19 = v18;
  v21 = v20;
  (*(v9 + 104))(v11, *MEMORY[0x1E6980EF8], v8);
  v22 = sub_1CFF0DB2C();
  (*(*(v22 - 8) + 56))(v7, 1, 1, v22);
  sub_1CFF0DB4C();
  sub_1CFF0DB7C();
  sub_1CFF03878(v7, &qword_1EDEC1A58, MEMORY[0x1E6980E30], MEMORY[0x1E69E6720], sub_1CFF0438C);
  (*(v9 + 8))(v11, v8);
  v23 = sub_1CFF0DC3C();
  v25 = v24;
  v27 = v26;

  sub_1CFE60C78(v17, v19, v21 & 1);

  if (qword_1EDEC4A40 != -1)
  {
    swift_once();
  }

  v28 = qword_1EDEC4A48;
  v54 = sub_1CFF0DE3C();
  v29 = sub_1CFF0DC2C();
  v31 = v30;
  v33 = v32;
  v35 = v34;
  sub_1CFE60C78(v23, v25, v27 & 1);

  v36 = sub_1CFF0DF2C();
  sub_1CFF042FC();
  v38 = v51;
  v39 = (v51 + *(v37 + 36));
  sub_1CFF0438C(0, &qword_1EDEC1A88, MEMORY[0x1E69816E8], MEMORY[0x1E6980A08]);
  v41 = *(v40 + 28);
  v42 = *MEMORY[0x1E69816C8];
  v43 = sub_1CFF0DF5C();
  (*(*(v43 - 8) + 104))(v39 + v41, v42, v43);
  *v39 = swift_getKeyPath();
  *v38 = v36;
  v44 = [objc_opt_self() secondaryLabelColor];
  *(v38 + *(v50 + 36)) = sub_1CFF0DE3C();
  v45 = v53;
  sub_1CFF044DC(v38, v53, sub_1CFF04294);
  v46 = v52;
  *v52 = v29;
  v46[1] = v31;
  *(v46 + 16) = v33 & 1;
  v46[3] = v35;
  v46[4] = 0;
  *(v46 + 40) = 1;
  sub_1CFF04224();
  sub_1CFF044DC(v45, v46 + *(v47 + 64), sub_1CFF04294);
  sub_1CFF04544(v29, v31, v33 & 1);

  sub_1CFF038D8(v38, sub_1CFF04294);
  sub_1CFF038D8(v45, sub_1CFF04294);
  sub_1CFE60C78(v29, v31, v33 & 1);
}

uint64_t sub_1CFF04024@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_1CFF0D84C();
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  sub_1CFF0418C();
  return sub_1CFF03954((a1 + *(v2 + 44)));
}

void sub_1CFF04094()
{
  type metadata accessor for BalanceWidgetViewModel();
  if (v0 <= 0x3F)
  {
    sub_1CFF0438C(319, &qword_1EDEC2130, type metadata accessor for BalanceWidgetSystemSmallSpecs, MEMORY[0x1E697DCC0]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1CFF0418C()
{
  if (!qword_1EC512C70)
  {
    sub_1CFF0438C(255, &qword_1EC512C78, sub_1CFF04224, MEMORY[0x1E6981F40]);
    v0 = sub_1CFF0D58C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC512C70);
    }
  }
}

void sub_1CFF04224()
{
  if (!qword_1EC512C80)
  {
    sub_1CFF04294();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EC512C80);
    }
  }
}

void sub_1CFF04294()
{
  if (!qword_1EC512C88)
  {
    sub_1CFF042FC();
    sub_1CFEBCC54();
    v0 = sub_1CFF0D62C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC512C88);
    }
  }
}

void sub_1CFF042FC()
{
  if (!qword_1EC512C90)
  {
    sub_1CFF0438C(255, &qword_1EDEC1A88, MEMORY[0x1E69816E8], MEMORY[0x1E6980A08]);
    v0 = sub_1CFF0D62C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC512C90);
    }
  }
}

void sub_1CFF0438C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1CFF04414(uint64_t a1)
{
  v2 = sub_1CFF0DF5C();
  v3 = MEMORY[0x1EEE9AC00](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return sub_1CFF0D6DC();
}

uint64_t sub_1CFF044DC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1CFF04544(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_1CFF04554(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, uint64_t, uint64_t, uint64_t))
{
  v8 = a6(0, a3, a4, a5);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  return a2;
}

uint64_t sub_1CFF045C8(uint64_t a1, uint64_t a2)
{
  sub_1CFF02C8C(0, &qword_1EDEC2048, type metadata accessor for OvernightMetricsChart);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1CFF04650(uint64_t a1)
{
  sub_1CFF02C8C(0, &qword_1EDEC2048, type metadata accessor for OvernightMetricsChart);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1CFF046D0()
{
  if (!qword_1EC512CA0)
  {
    sub_1CFF0438C(255, &qword_1EC512C78, sub_1CFF04224, MEMORY[0x1E6981F40]);
    sub_1CFF02C28(&qword_1EC512CA8, &qword_1EC512C78, sub_1CFF04224);
    v0 = sub_1CFF0DFDC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC512CA0);
    }
  }
}

uint64_t type metadata accessor for SingleMetricMinorPointMarks()
{
  result = qword_1EDEC37E0;
  if (!qword_1EDEC37E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1CFF047F8()
{
  sub_1CFF06494(319, &qword_1EDEC4D40, type metadata accessor for IndividualOvernightMetricChartPoint, MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    sub_1CFF06494(319, &qword_1EDEC4B28, type metadata accessor for IndividualOvernightMetricChartPoint, MEMORY[0x1E69E6720]);
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

uint64_t sub_1CFF04920@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v102 = a1;
  v103 = a2;
  v101 = a3;
  sub_1CFF06AE4(0, &qword_1EDEC2220, MEMORY[0x1E69E63B0], MEMORY[0x1E695B450], MEMORY[0x1E695B170]);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v85 = v76 - v4;
  sub_1CFE55184();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v81 = v76 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFF06394(0, &qword_1EDEC2228, MEMORY[0x1E6969530], MEMORY[0x1E695AF60], MEMORY[0x1E695B170]);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v82 = v76 - v8;
  v88 = sub_1CFF0D3CC();
  v84 = *(v88 - 8);
  MEMORY[0x1EEE9AC00](v88);
  v83 = v76 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFF06224();
  v91 = v10;
  v87 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v86 = v76 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFF06150();
  v95 = v12;
  v92 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v90 = v76 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFF06044();
  v79 = v14;
  v89 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v99 = v76 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFF05F08();
  v96 = v16;
  v94 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v93 = v76 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFF06394(0, &qword_1EDEC21F0, sub_1CFF05F08, MEMORY[0x1E695AFD0], MEMORY[0x1E695B1A8]);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v100 = v76 - v19;
  sub_1CFF06494(0, &qword_1EDEC4B28, type metadata accessor for IndividualOvernightMetricChartPoint, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v80 = v76 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = v76 - v23;
  MEMORY[0x1EEE9AC00](v25);
  v27 = v76 - v26;
  v28 = type metadata accessor for IndividualOvernightMetricChartPoint(0);
  v29 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v31 = v76 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFF0E6DC();
  v98 = sub_1CFF0E6CC();
  sub_1CFF0E66C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v32 = type metadata accessor for SingleMetricMinorPointMarks();
  v97 = v103 + *(v32 + 20);
  sub_1CFE6BB40(v97, v27);
  v33 = *(v29 + 48);
  if ((v33)(v27, 1, v28) == 1)
  {
    sub_1CFF06B38(v102, v31, type metadata accessor for IndividualOvernightMetricChartPoint);
    v34 = v33;
    if ((v33)(v27, 1, v28) != 1)
    {
      sub_1CFE6BBD4(v27);
    }
  }

  else
  {
    v34 = v33;
    sub_1CFF06D40(v27, v31, type metadata accessor for IndividualOvernightMetricChartPoint);
  }

  v35 = &v31[*(v28 + 32)];
  if (v35[8])
  {
    v36 = v100;
  }

  else
  {
    v37 = *v35;
    v76[2] = v32;
    memcpy(v108, (v103 + *(v32 + 32)), sizeof(v108));
    sub_1CFF0D87C();
    v102 = v31;
    sub_1CFE6BB40(v97, v24);
    v77 = v34;
    v78 = v28;
    v38 = (v34)(v24, 1, v28);
    sub_1CFE6BBD4(v24);
    v39 = 28;
    if (v38 == 1)
    {
      v39 = 24;
    }

    v40 = v81;
    sub_1CFF06B38(&v102[*(v28 + v39)], v81, sub_1CFE55184);
    v76[1] = sub_1CFF0C7AC();
    sub_1CFF068FC(&qword_1EDEC5198, MEMORY[0x1E6969530]);
    sub_1CFF0D1EC();

    sub_1CFF06BA0(v40, sub_1CFE55184);
    sub_1CFF0D87C();
    v41 = v103;
    sub_1CFEC2950(v37);
    v104 = v42;
    sub_1CFF0D1FC();

    v43 = v83;
    v44 = sub_1CFF0D3BC();
    MEMORY[0x1EEE9AC00](v44);
    v45 = v102;
    v76[-4] = v41;
    v76[-3] = v45;
    v76[-2] = v108;
    sub_1CFF062C8();
    v47 = v46;
    v48 = sub_1CFF06794();
    v49 = MEMORY[0x1E695B2E0];
    v50 = v86;
    v51 = v88;
    sub_1CFF0D15C();
    (*(v84 + 8))(v43, v51);
    v52 = v80;
    sub_1CFE6BB40(v97, v80);
    v53 = v78;
    v77(v52, 1, v78);
    sub_1CFE6BBD4(v52);
    v104 = v51;
    v105 = v47;
    v106 = v49;
    v107 = v48;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v56 = v90;
    v55 = v91;
    sub_1CFF0D13C();
    (*(v87 + 8))(v50, v55);
    v57 = &v102[*(v53 + 40)];
    v58 = *(v57 + 1);
    v104 = *v57;
    v105 = v58;
    sub_1CFE60C24();

    v59 = sub_1CFF0DC6C();
    v61 = v60;
    LOBYTE(v49) = v62;
    v104 = v55;
    v105 = OpaqueTypeConformance2;
    v63 = swift_getOpaqueTypeConformance2();
    v64 = v95;
    sub_1CFF0D11C();
    v65 = v49 & 1;
    v31 = v102;
    sub_1CFE60C78(v59, v61, v65);

    (*(v92 + 8))(v56, v64);
    v66 = &v31[*(v78 + 48)];
    v67 = *(v66 + 1);
    v104 = *v66;
    v105 = v67;

    v68 = sub_1CFF0DC6C();
    v70 = v69;
    LOBYTE(v56) = v71;
    v104 = v64;
    v105 = v63;
    swift_getOpaqueTypeConformance2();
    v72 = v93;
    v73 = v79;
    v74 = v99;
    sub_1CFF0D12C();
    sub_1CFE60C78(v68, v70, v56 & 1);

    (*(v89 + 8))(v74, v73);
    v36 = v100;
    (*(v94 + 32))(v100, v72, v96);
  }

  sub_1CFF06394(0, &qword_1EC512CB0, sub_1CFF05F08, MEMORY[0x1E695AFD0], MEMORY[0x1E695B1A0]);
  swift_storeEnumTagMultiPayload();
  sub_1CFF06BA0(v31, type metadata accessor for IndividualOvernightMetricChartPoint);
  sub_1CFE51D20(v36, v101);
}

uint64_t sub_1CFF05584@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v38 = a4;
  sub_1CFF06494(0, &qword_1EDEC4B28, type metadata accessor for IndividualOvernightMetricChartPoint, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v37 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v33 - v10;
  sub_1CFF06400();
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = (&v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1CFF06394(0, &qword_1EDEC1ED8, sub_1CFF06400, MEMORY[0x1E697E5C8], MEMORY[0x1E697E830]);
  v34 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v33 - v16;
  sub_1CFF062C8();
  v36 = v18;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v33 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFF0E6DC();
  v35 = sub_1CFF0E6CC();
  sub_1CFF0E66C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *v14 = sub_1CFF0E0EC();
  v14[1] = v21;
  sub_1CFF06C0C();
  sub_1CFF0593C(a2, a3, v14 + *(v22 + 44));
  v23 = type metadata accessor for SingleMetricMinorPointMarks();
  v24 = *(v23 + 20);
  sub_1CFE6BB40(a1 + v24, v11);
  v25 = type metadata accessor for IndividualOvernightMetricChartPoint(0);
  v26 = *(*(v25 - 8) + 48);
  v27 = 0;
  if (v26(v11, 1, v25) == 1)
  {
    v27 = *(a1 + *(v23 + 24));
  }

  sub_1CFE6BBD4(v11);
  sub_1CFF06D40(v14, v17, sub_1CFF06400);
  *&v17[*(v34 + 36)] = v27;
  v28 = sub_1CFF0E13C();
  v29 = v37;
  sub_1CFE6BB40(a1 + v24, v37);
  v30 = v26(v29, 1, v25) != 1;
  sub_1CFE6BBD4(v29);
  sub_1CFF06CA4(v17, v20);
  v31 = &v20[*(v36 + 36)];
  *v31 = v28;
  v31[8] = v30;
  sub_1CFF06D40(v20, v38, sub_1CFF062C8);
}

uint64_t sub_1CFF0593C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v32 = a3;
  sub_1CFF06394(0, &qword_1EDEC1EC0, sub_1CFF065D4, MEMORY[0x1E697E048], MEMORY[0x1E697E830]);
  v6 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v31 - v10;
  sub_1CFF0E6DC();
  v31 = sub_1CFF0E6CC();
  sub_1CFF0E66C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v12 = sub_1CFF0DE8C();
  sub_1CFF065D4();
  v14 = *(v13 + 36);
  v15 = *MEMORY[0x1E6981DC0];
  v16 = sub_1CFF0E15C();
  (*(*(v16 - 8) + 104))(&v11[v14], v15, v16);
  *v11 = v12;
  *(v11 + 4) = 256;
  type metadata accessor for SingleMetricMinorPointMarks();
  type metadata accessor for OvernightMetricsChartLayout(0);
  sub_1CFF0E0EC();
  sub_1CFF0D50C();
  v17 = &v11[*(v6 + 36)];
  v18 = v34;
  *v17 = v33;
  *(v17 + 1) = v18;
  *(v17 + 2) = v35;
  if (*(a1 + *(type metadata accessor for IndividualOvernightMetricChartPoint(0) + 32) + 8))
  {
    v19 = sub_1CFF0DE6C();
  }

  else
  {
    v20 = *(a2 + 72);
    v19 = *(a2 + 80);
    if (sub_1CFF0CCCC())
    {
    }

    else
    {

      v19 = v20;
    }
  }

  sub_1CFF0E0EC();
  sub_1CFF0D50C();
  v21 = v36;
  v22 = v37;
  v23 = v38;
  v24 = v39;
  v26 = v40;
  v25 = v41;
  sub_1CFF06DA8(v11, v8);
  v27 = v32;
  sub_1CFF06DA8(v8, v32);
  sub_1CFF064F8();
  v29 = v27 + *(v28 + 48);
  *v29 = v19;
  *(v29 + 8) = v21;
  *(v29 + 16) = v22;
  *(v29 + 24) = v23;
  *(v29 + 32) = v24;
  *(v29 + 40) = v26;
  *(v29 + 48) = v25;

  sub_1CFF06E44(v11);

  sub_1CFF06E44(v8);
}

uint64_t sub_1CFF05C4C(uint64_t a1)
{
  v2 = *(a1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](a1 - 8);
  v8[1] = *v1;
  sub_1CFF06B38(v4, v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SingleMetricMinorPointMarks);
  v5 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v6 = swift_allocObject();
  sub_1CFF06D40(v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5, type metadata accessor for SingleMetricMinorPointMarks);
  sub_1CFF06494(0, &qword_1EDEC4D40, type metadata accessor for IndividualOvernightMetricChartPoint, MEMORY[0x1E69E62F8]);
  type metadata accessor for IndividualOvernightMetricChartPoint.ID(0);
  sub_1CFF06394(0, &qword_1EDEC21F0, sub_1CFF05F08, MEMORY[0x1E695AFD0], MEMORY[0x1E695B1A8]);
  sub_1CFEC8DDC();
  sub_1CFF06944();
  sub_1CFF068FC(qword_1EDEC2B48, type metadata accessor for IndividualOvernightMetricChartPoint);

  return sub_1CFF0E04C();
}

uint64_t sub_1CFF05E88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for SingleMetricMinorPointMarks() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_1CFF04920(a1, v6, a2);
}

void sub_1CFF05F08()
{
  if (!qword_1EDEC22F8)
  {
    sub_1CFF06044();
    sub_1CFF06150();
    sub_1CFF06224();
    sub_1CFF0D3CC();
    sub_1CFF062C8();
    sub_1CFF06794();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EDEC22F8);
    }
  }
}

void sub_1CFF06044()
{
  if (!qword_1EDEC2320)
  {
    sub_1CFF06150();
    sub_1CFF06224();
    sub_1CFF0D3CC();
    sub_1CFF062C8();
    sub_1CFF06794();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EDEC2320);
    }
  }
}

void sub_1CFF06150()
{
  if (!qword_1EDEC2298)
  {
    sub_1CFF06224();
    sub_1CFF0D3CC();
    sub_1CFF062C8();
    sub_1CFF06794();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EDEC2298);
    }
  }
}

void sub_1CFF06224()
{
  if (!qword_1EDEC2268)
  {
    sub_1CFF0D3CC();
    sub_1CFF062C8();
    sub_1CFF06794();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EDEC2268);
    }
  }
}

void sub_1CFF062C8()
{
  if (!qword_1EDEC1DA8)
  {
    sub_1CFF06394(255, &qword_1EDEC1ED8, sub_1CFF06400, MEMORY[0x1E697E5C8], MEMORY[0x1E697E830]);
    sub_1CFF06AE4(255, &qword_1EDEC1C08, MEMORY[0x1E69E6370], MEMORY[0x1E69E6388], MEMORY[0x1E697F540]);
    v0 = sub_1CFF0D62C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDEC1DA8);
    }
  }
}

void sub_1CFF06394(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

void sub_1CFF06400()
{
  if (!qword_1EDEC1958)
  {
    sub_1CFF06494(255, &qword_1EDEC17F8, sub_1CFF064F8, MEMORY[0x1E6981F40]);
    sub_1CFF0670C();
    v0 = sub_1CFF0E01C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDEC1958);
    }
  }
}

void sub_1CFF06494(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1CFF064F8()
{
  if (!qword_1EDEC1EB8)
  {
    v0 = MEMORY[0x1E697E048];
    v1 = MEMORY[0x1E697E830];
    sub_1CFF06394(255, &qword_1EDEC1EC0, sub_1CFF065D4, MEMORY[0x1E697E048], MEMORY[0x1E697E830]);
    sub_1CFF06394(255, &qword_1EDEC1DF8, sub_1CFE82784, v0, v1);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v3)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDEC1EB8);
    }
  }
}

void sub_1CFF065D4()
{
  if (!qword_1EDEC1FE8)
  {
    sub_1CFF0663C();
    sub_1CFF0D6AC();
    v0 = sub_1CFF0D62C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDEC1FE8);
    }
  }
}

void sub_1CFF0663C()
{
  if (!qword_1EDEC2180)
  {
    sub_1CFF066B8();
    v0 = sub_1CFF0D41C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDEC2180);
    }
  }
}

unint64_t sub_1CFF066B8()
{
  result = qword_1EDEC19C8;
  if (!qword_1EDEC19C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEC19C8);
  }

  return result;
}

unint64_t sub_1CFF0670C()
{
  result = qword_1EDEC1800;
  if (!qword_1EDEC1800)
  {
    sub_1CFF06494(255, &qword_1EDEC17F8, sub_1CFF064F8, MEMORY[0x1E6981F40]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEC1800);
  }

  return result;
}

unint64_t sub_1CFF06794()
{
  result = qword_1EDEC1DB0;
  if (!qword_1EDEC1DB0)
  {
    sub_1CFF062C8();
    sub_1CFF06814();
    sub_1CFE82B30();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEC1DB0);
  }

  return result;
}

unint64_t sub_1CFF06814()
{
  result = qword_1EDEC1EE0;
  if (!qword_1EDEC1EE0)
  {
    sub_1CFF06394(255, &qword_1EDEC1ED8, sub_1CFF06400, MEMORY[0x1E697E5C8], MEMORY[0x1E697E830]);
    sub_1CFF068FC(&qword_1EDEC1960, sub_1CFF06400);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEC1EE0);
  }

  return result;
}

uint64_t sub_1CFF068FC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1CFF06944()
{
  result = qword_1EDEC21F8;
  if (!qword_1EDEC21F8)
  {
    sub_1CFF06394(255, &qword_1EDEC21F0, sub_1CFF05F08, MEMORY[0x1E695AFD0], MEMORY[0x1E695B1A8]);
    sub_1CFF06044();
    sub_1CFF06150();
    sub_1CFF06224();
    sub_1CFF0D3CC();
    sub_1CFF062C8();
    sub_1CFF06794();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEC21F8);
  }

  return result;
}

void sub_1CFF06AE4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

uint64_t sub_1CFF06B38(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1CFF06BA0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1CFF06C0C()
{
  if (!qword_1EC512CB8)
  {
    sub_1CFF06494(255, &qword_1EDEC17F8, sub_1CFF064F8, MEMORY[0x1E6981F40]);
    v0 = sub_1CFF0D58C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC512CB8);
    }
  }
}

uint64_t sub_1CFF06CA4(uint64_t a1, uint64_t a2)
{
  sub_1CFF06394(0, &qword_1EDEC1ED8, sub_1CFF06400, MEMORY[0x1E697E5C8], MEMORY[0x1E697E830]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1CFF06D40(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1CFF06DA8(uint64_t a1, uint64_t a2)
{
  sub_1CFF06394(0, &qword_1EDEC1EC0, sub_1CFF065D4, MEMORY[0x1E697E048], MEMORY[0x1E697E830]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1CFF06E44(uint64_t a1)
{
  sub_1CFF06394(0, &qword_1EDEC1EC0, sub_1CFF065D4, MEMORY[0x1E697E048], MEMORY[0x1E697E830]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1CFF06ED8()
{
  result = qword_1EDEC18C0;
  if (!qword_1EDEC18C0)
  {
    sub_1CFF06F50();
    sub_1CFF06944();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEC18C0);
  }

  return result;
}

void sub_1CFF06F50()
{
  if (!qword_1EDEC18B8)
  {
    sub_1CFF06494(255, &qword_1EDEC4D40, type metadata accessor for IndividualOvernightMetricChartPoint, MEMORY[0x1E69E62F8]);
    type metadata accessor for IndividualOvernightMetricChartPoint.ID(255);
    sub_1CFF06394(255, &qword_1EDEC21F0, sub_1CFF05F08, MEMORY[0x1E695AFD0], MEMORY[0x1E695B1A8]);
    sub_1CFEC8DDC();
    sub_1CFF068FC(&qword_1EDEC2BE8, type metadata accessor for IndividualOvernightMetricChartPoint.ID);
    v0 = sub_1CFF0E07C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDEC18B8);
    }
  }
}

void sub_1CFF0708C(double a1)
{
  v2 = sub_1CFF0C80C();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v3 = sub_1CFF0E55C();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v4 = sub_1CFF0E53C();
  MEMORY[0x1EEE9AC00](v4 - 8);
  if (a1 < -1.0)
  {
    v5 = (fabs(a1) + -1.0) * 0.5 * 100.0;
    if ((*&v5 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v5 > -9.22337204e18)
    {
      if (v5 < 9.22337204e18)
      {
        goto LABEL_19;
      }

      goto LABEL_22;
    }

    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (a1 < 0.0)
  {
    v6 = (1.0 - fabs(a1)) * 0.5 * 100.0;
    if ((*&v6 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
    {
      if (v6 > -9.22337204e18)
      {
        if (v6 < 9.22337204e18)
        {
          goto LABEL_19;
        }

        goto LABEL_25;
      }

LABEL_24:
      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (a1 > 1.0)
  {
    v8 = (a1 + -1.0) * 0.5 * 100.0;
    if (COERCE__INT64(fabs(v8)) <= 0x7FEFFFFFFFFFFFFFLL)
    {
      if (v8 > -9.22337204e18)
      {
        if (v8 < 9.22337204e18)
        {
LABEL_19:
          sub_1CFF0E52C();
          sub_1CFF0E51C();
          sub_1CFF0E4FC();
          sub_1CFF0E51C();
          sub_1CFF0E54C();
          type metadata accessor for HealthBalanceUI();
          ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
          v10 = [objc_opt_self() bundleForClass_];
          sub_1CFF0C7FC();
          sub_1CFF0E5AC();
          return;
        }

        goto LABEL_30;
      }

      goto LABEL_28;
    }

    goto LABEL_26;
  }

  v7 = (1.0 - a1) * 0.5 * 100.0;
  if (COERCE_UNSIGNED_INT64(fabs(v7)) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  if (v7 <= -9.22337204e18)
  {
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  if (v7 < 9.22337204e18)
  {
    goto LABEL_19;
  }

LABEL_31:
  __break(1u);
}

void sub_1CFF0764C()
{
  sub_1CFE725E0(319, &qword_1EDEC4D70, MEMORY[0x1E69E63D8], MEMORY[0x1E69E5F90]);
  if (v0 <= 0x3F)
  {
    sub_1CFE69B4C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1CFF07710()
{
  sub_1CFEAF364(*v0, v0[1]);
  v1 = type metadata accessor for BaselineBand.Configuration(0);
  sub_1CFF0C7AC();
  sub_1CFF078DC(&qword_1EDEC49A8, MEMORY[0x1E6969530]);
  sub_1CFF0E45C();
  sub_1CFE69B4C();
  sub_1CFF0E45C();
  v2 = *(v0 + *(v1 + 24));
  if (v2 == 0.0)
  {
    v2 = 0.0;
  }

  MEMORY[0x1D38799A0](*&v2);
  sub_1CFF0DE7C();
  return sub_1CFF0EC5C();
}

uint64_t sub_1CFF07810()
{
  sub_1CFF0EC3C();
  sub_1CFF07710();
  return sub_1CFF0EC7C();
}

uint64_t sub_1CFF07854()
{
  sub_1CFF0EC3C();
  sub_1CFF07710();
  return sub_1CFF0EC7C();
}

uint64_t sub_1CFF078DC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1CFF07924@<X0>(uint64_t a1@<X8>)
{
  v66 = a1;
  v2 = sub_1CFF0D89C();
  v62 = *(v2 - 8);
  v63 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v61 = v50 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFE725E0(0, &qword_1EDEC2220, MEMORY[0x1E695B450], MEMORY[0x1E695B170]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v56 = v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v53 = v50 - v7;
  sub_1CFE7B5F4();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v50[0] = v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v50[1] = v50 - v11;
  v12 = sub_1CFF0D19C();
  v13 = *(v12 - 8);
  v57 = v12;
  v58 = v13;
  MEMORY[0x1EEE9AC00](v12);
  v54 = v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFECBC04();
  v16 = *(v15 - 8);
  v59 = v15;
  v60 = v16;
  MEMORY[0x1EEE9AC00](v15);
  v55 = v50 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFECBB3C();
  v64 = *(v18 - 8);
  v65 = v18;
  MEMORY[0x1EEE9AC00](v18);
  v52 = v50 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFF0D87C();
  v51 = type metadata accessor for BaselineBand.Configuration(0);
  sub_1CFF0C7AC();
  sub_1CFF0D1FC();

  sub_1CFF0D87C();
  sub_1CFE69B4C();
  sub_1CFF0D1FC();

  sub_1CFF0D87C();
  v20 = v1;
  v71[0] = *v1;
  sub_1CFF0D1FC();

  sub_1CFF0D87C();
  v71[0] = v1[1];
  sub_1CFF0D1FC();

  v21 = v54;
  v22 = v20;
  v23 = v52;
  sub_1CFF0D18C();
  v24 = v51;
  v26 = v61;
  v25 = v62;
  v27 = v63;
  (*(v62 + 104))(v61, *MEMORY[0x1E697F468], v63);
  v28 = v55;
  v29 = v57;
  sub_1CFF0D0EC();
  (*(v25 + 8))(v26, v27);
  (*(v58 + 8))(v21, v29);
  v30 = v24;
  v67 = *(v22 + *(v24 + 28));
  v71[0] = v29;
  v71[1] = MEMORY[0x1E695B140];
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v32 = MEMORY[0x1E69815C0];
  v33 = MEMORY[0x1E6981568];
  v34 = v23;
  v35 = v59;
  sub_1CFF0D0FC();
  v36 = v35;
  (*(v60 + 8))(v28, v35);
  LODWORD(v35) = *(v22 + *(v30 + 32));
  v37 = type metadata accessor for BaselineBand(0);
  if (v35 == 1 && *(v22 + *(v37 + 20) + 201))
  {
    sub_1CFF083C8();
    v72 = v38;
    sub_1CFF08548();
    v40 = v39;
    v67 = v36;
    v68 = v32;
    v69 = OpaqueTypeConformance2;
    v70 = v33;
    v41 = swift_getOpaqueTypeConformance2();
    sub_1CFECBB08(255);
    v43 = v42;
    v44 = sub_1CFF078DC(&qword_1EC512A80, sub_1CFECBB08);
    v67 = v43;
    v68 = v44;
    v45 = swift_getOpaqueTypeConformance2();
    v46 = v65;
    v67 = v65;
    v68 = v40;
    v69 = v41;
    v70 = v45;
    v73 = swift_getOpaqueTypeConformance2();
    __swift_allocate_boxed_opaque_existential_1(v71);
    swift_checkMetadataState();
    sub_1CFF0D10C();
    (*(v64 + 8))(v34, v46);
  }

  else
  {
    v47 = v65;
    v72 = v65;
    v67 = v36;
    v68 = v32;
    v69 = OpaqueTypeConformance2;
    v70 = v33;
    v73 = swift_getOpaqueTypeConformance2();
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v71);
    (*(v64 + 32))(boxed_opaque_existential_1, v34, v47);
  }

  sub_1CFF0D13C();
  return sub_1CFE721B0(v71);
}

uint64_t sub_1CFF081B4(double *a1, double *a2)
{
  if (*a1 != *a2 || a1[1] != a2[1])
  {
    return 0;
  }

  v6 = type metadata accessor for BaselineBand.Configuration(0);
  sub_1CFF0C7AC();
  sub_1CFF078DC(&qword_1EDEC4D00, MEMORY[0x1E6969530]);
  if (sub_1CFF0E4CC() & 1) != 0 && (sub_1CFE69B4C(), (sub_1CFF0E4CC()) && *(a1 + *(v6 + 24)) == *(a2 + *(v6 + 24)) && (sub_1CFF0DE4C())
  {
    v7 = *(a1 + *(v6 + 32)) ^ *(a2 + *(v6 + 32)) ^ 1;
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

uint64_t sub_1CFF08338()
{
  result = type metadata accessor for BaselineBand.Configuration(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1CFF083C8()
{
  if (!qword_1EC512CC8)
  {
    sub_1CFECBB3C();
    sub_1CFF08548();
    sub_1CFECBC04();
    sub_1CFF0D19C();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1CFECBB08(255);
    sub_1CFF078DC(&qword_1EC512A80, sub_1CFECBB08);
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EC512CC8);
    }
  }
}

void sub_1CFF08548()
{
  if (!qword_1EC512CD0)
  {
    sub_1CFECBB08(255);
    sub_1CFF078DC(&qword_1EC512A80, sub_1CFECBB08);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EC512CD0);
    }
  }
}

BOOL static BaselineRelativeValue.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8))
  {
    return (*(a2 + 8) & 1) != 0;
  }

  if (*(a2 + 8))
  {
    return 0;
  }

  return *a1 == *a2;
}

uint64_t sub_1CFF08638()
{
  if (*v0)
  {
    return 0x6D72657465646E69;
  }

  else
  {
    return 0x6E696D7265746564;
  }
}

uint64_t sub_1CFF08688@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6E696D7265746564 && a2 == 0xEB00000000657461;
  if (v6 || (sub_1CFF0EBCC() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6D72657465646E69 && a2 == 0xED00006574616E69)
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

uint64_t sub_1CFF08770(uint64_t a1)
{
  v2 = sub_1CFF08D2C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CFF087AC(uint64_t a1)
{
  v2 = sub_1CFF08D2C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1CFF087E8(uint64_t a1)
{
  v2 = sub_1CFF08CD8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CFF08824(uint64_t a1)
{
  v2 = sub_1CFF08CD8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1CFF0886C@<X0>(_BYTE *a1@<X8>)
{

  *a1 = 1;
  return result;
}

uint64_t sub_1CFF0889C(uint64_t a1)
{
  v2 = sub_1CFF08C84();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CFF088D8(uint64_t a1)
{
  v2 = sub_1CFF08C84();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t BaselineRelativeValue.encode(to:)(void *a1)
{
  v3 = MEMORY[0x1E69E6F58];
  sub_1CFF0944C(0, &qword_1EC512CD8, sub_1CFF08C84, &type metadata for BaselineRelativeValue.IndeterminateCodingKeys, MEMORY[0x1E69E6F58]);
  v21 = *(v4 - 8);
  v22 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v18 = &v18 - v5;
  sub_1CFF0944C(0, &qword_1EC512CE8, sub_1CFF08CD8, &type metadata for BaselineRelativeValue.DeterminateCodingKeys, v3);
  v19 = *(v6 - 8);
  v20 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v18 - v7;
  sub_1CFF0944C(0, &qword_1EC512CF8, sub_1CFF08D2C, &type metadata for BaselineRelativeValue.CodingKeys, v3);
  v23 = v9;
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v18 - v11;
  LOBYTE(v3) = *(v1 + 8);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CFF08D2C();
  sub_1CFF0EC9C();
  if (v3)
  {
    v25 = 1;
    sub_1CFF08C84();
    v13 = v18;
    v14 = v23;
    sub_1CFF0EB2C();
    (*(v21 + 8))(v13, v22);
    return (*(v10 + 8))(v12, v14);
  }

  else
  {
    v24 = 0;
    sub_1CFF08CD8();
    v16 = v23;
    sub_1CFF0EB2C();
    v17 = v20;
    sub_1CFF0EB6C();
    (*(v19 + 8))(v8, v17);
    return (*(v10 + 8))(v12, v16);
  }
}

unint64_t sub_1CFF08C84()
{
  result = qword_1EC512CE0;
  if (!qword_1EC512CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC512CE0);
  }

  return result;
}

unint64_t sub_1CFF08CD8()
{
  result = qword_1EC512CF0;
  if (!qword_1EC512CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC512CF0);
  }

  return result;
}

unint64_t sub_1CFF08D2C()
{
  result = qword_1EC512D00;
  if (!qword_1EC512D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC512D00);
  }

  return result;
}

uint64_t BaselineRelativeValue.hash(into:)()
{
  if (v0[1])
  {
    return MEMORY[0x1D3879980](1);
  }

  v2 = *v0;
  MEMORY[0x1D3879980](0);
  if ((v2 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  return MEMORY[0x1D38799A0](v3);
}

uint64_t BaselineRelativeValue.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_1CFF0EC3C();
  if (v2)
  {
    MEMORY[0x1D3879980](1);
  }

  else
  {
    MEMORY[0x1D3879980](0);
    if ((v1 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v3 = v1;
    }

    else
    {
      v3 = 0;
    }

    MEMORY[0x1D38799A0](v3);
  }

  return sub_1CFF0EC7C();
}

uint64_t BaselineRelativeValue.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v38 = a2;
  v3 = MEMORY[0x1E69E6F48];
  sub_1CFF0944C(0, &qword_1EC512D08, sub_1CFF08C84, &type metadata for BaselineRelativeValue.IndeterminateCodingKeys, MEMORY[0x1E69E6F48]);
  v5 = *(v4 - 8);
  v34 = v4;
  v35 = v5;
  MEMORY[0x1EEE9AC00](v4);
  v37 = &v30[-v6];
  sub_1CFF0944C(0, &qword_1EC512D10, sub_1CFF08CD8, &type metadata for BaselineRelativeValue.DeterminateCodingKeys, v3);
  v8 = v7;
  v33 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v30[-v9];
  sub_1CFF0944C(0, &qword_1EC512D18, sub_1CFF08D2C, &type metadata for BaselineRelativeValue.CodingKeys, v3);
  v12 = v11;
  v36 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v30[-v13];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CFF08D2C();
  v15 = v39;
  sub_1CFF0EC8C();
  if (v15)
  {
    goto LABEL_7;
  }

  v17 = v36;
  v16 = v37;
  v32 = v8;
  v39 = a1;
  v18 = v38;
  v19 = sub_1CFF0EB1C();
  if (*(v19 + 16) != 1)
  {
    v22 = sub_1CFF0E9AC();
    swift_allocError();
    v24 = v23;
    sub_1CFF094B4();
    *v24 = &type metadata for BaselineRelativeValue;
    sub_1CFF0EABC();
    sub_1CFF0E98C();
    (*(*(v22 - 8) + 104))(v24, *MEMORY[0x1E69E6AF8], v22);
    swift_willThrow();
    (*(v17 + 8))(v14, v12);
    swift_unknownObjectRelease();
    a1 = v39;
LABEL_7:
    v27 = a1;
    return __swift_destroy_boxed_opaque_existential_0(v27);
  }

  v31 = *(v19 + 32);
  if (v31)
  {
    v41 = 1;
    sub_1CFF08C84();
    sub_1CFF0EAAC();
    v20 = v18;
    (*(v35 + 8))(v16, v34);
    (*(v17 + 8))(v14, v12);
    swift_unknownObjectRelease();
    v21 = 0;
  }

  else
  {
    v40 = 0;
    sub_1CFF08CD8();
    v25 = v10;
    sub_1CFF0EAAC();
    v20 = v18;
    v26 = v32;
    sub_1CFF0EAFC();
    v21 = v29;
    (*(v33 + 8))(v25, v26);
    (*(v17 + 8))(v14, v12);
    swift_unknownObjectRelease();
  }

  *v20 = v21;
  *(v20 + 8) = v31;
  v27 = v39;
  return __swift_destroy_boxed_opaque_existential_0(v27);
}

uint64_t sub_1CFF09358()
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

uint64_t sub_1CFF09390()
{
  if (v0[1])
  {
    return MEMORY[0x1D3879980](1);
  }

  v2 = *v0;
  MEMORY[0x1D3879980](0);
  if ((v2 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  return MEMORY[0x1D38799A0](v3);
}

uint64_t sub_1CFF093E0()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_1CFF0EC3C();
  if (v2)
  {
    MEMORY[0x1D3879980](1);
  }

  else
  {
    MEMORY[0x1D3879980](0);
    if ((v1 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v3 = v1;
    }

    else
    {
      v3 = 0;
    }

    MEMORY[0x1D38799A0](v3);
  }

  return sub_1CFF0EC7C();
}

void sub_1CFF0944C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

void sub_1CFF094B4()
{
  if (!qword_1EC5127B0)
  {
    sub_1CFE9DC00();
    sub_1CFF0E99C();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC5127B0);
    }
  }
}

unint64_t sub_1CFF09528()
{
  result = qword_1EC512D20;
  if (!qword_1EC512D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC512D20);
  }

  return result;
}

uint64_t sub_1CFF095AC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v4 = *(a2 + 8);
  result = v3 & v4;
  if ((v3 & 1) == 0 && (v4 & 1) == 0)
  {
    return *a1 == *a2;
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

uint64_t getEnumTagSinglePayload for BaselineRelativeValue(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for BaselineRelativeValue(uint64_t result, int a2, int a3)
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

uint64_t sub_1CFF09640(uint64_t a1)
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

uint64_t sub_1CFF0965C(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 1;
  }

  else
  {
    *(result + 8) = 0;
  }

  return result;
}

unint64_t sub_1CFF096C0()
{
  result = qword_1EC512D28;
  if (!qword_1EC512D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC512D28);
  }

  return result;
}

unint64_t sub_1CFF09718()
{
  result = qword_1EC512D30;
  if (!qword_1EC512D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC512D30);
  }

  return result;
}

unint64_t sub_1CFF09770()
{
  result = qword_1EC512D38;
  if (!qword_1EC512D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC512D38);
  }

  return result;
}

unint64_t sub_1CFF097C8()
{
  result = qword_1EC512D40;
  if (!qword_1EC512D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC512D40);
  }

  return result;
}

unint64_t sub_1CFF09820()
{
  result = qword_1EC512D48;
  if (!qword_1EC512D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC512D48);
  }

  return result;
}

unint64_t sub_1CFF09878()
{
  result = qword_1EC512D50;
  if (!qword_1EC512D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC512D50);
  }

  return result;
}

unint64_t sub_1CFF098D0()
{
  result = qword_1EC512D58;
  if (!qword_1EC512D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC512D58);
  }

  return result;
}

unint64_t sub_1CFF09928()
{
  result = qword_1EC512D60;
  if (!qword_1EC512D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC512D60);
  }

  return result;
}

uint64_t sub_1CFF0997C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1CFF0C89C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFF0CAAC();
  sub_1CFE55494(a1);
  return (*(v3 + 8))(v5, v2);
}

uint64_t BalanceOneDayWidget.init()@<X0>(void *a1@<X8>)
{
  a1[2] = 0x40B0E00000000000;
  v2 = [objc_allocWithZone(MEMORY[0x1E696C1C0]) init];
  sub_1CFF0CF4C();
  v3 = v2;
  result = sub_1CFF0CF3C();
  *a1 = v3;
  a1[1] = result;
  return result;
}

__n128 BalanceOneDayWidget.init(dataProvider:)@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  a2[1].n128_u64[0] = 0x40B0E00000000000;
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t BalanceOneDayWidget.body.getter@<X0>(uint64_t a1@<X8>)
{
  v63 = a1;
  v2 = sub_1CFF0C80C();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v51[2] = v51 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1CFF0E55C();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v51[1] = v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1CFF0D03C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFF0A550();
  v54 = v10;
  v52 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFF0A5E4();
  v58 = v13;
  v56 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v53 = v51 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFF0A6FC();
  v60 = v15;
  v57 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v55 = v51 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFF0A80C();
  v62 = v17;
  v61 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v59 = v51 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(v1 + 8);
  v20 = *(v1 + 16);
  v21 = *v1;
  v22 = v19;
  sub_1CFF0C9FC();
  v66 = &type metadata for BalanceWidgetDataProvider;
  v67 = &off_1F4C90D28;
  *&v65 = v21;
  *(&v65 + 1) = v22;
  v74 = sub_1CFEB45EC;
  v75 = 0;
  v76 = sub_1CFEB45F0;
  v77 = 0;
  sub_1CFF0D01C();
  v23 = sub_1CFF0D02C();
  v24 = sub_1CFF0E7EC();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v64 = v26;
    *v25 = 136446210;
    *(v25 + 4) = sub_1CFE462A4(0xD00000000000001DLL, 0x80000001CFF16A90, &v64);
    _os_log_impl(&dword_1CFE44000, v23, v24, "[%{public}s] init", v25, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v26);
    MEMORY[0x1D387A160](v26, -1, -1);
    MEMORY[0x1D387A160](v25, -1, -1);
  }

  (*(v7 + 8))(v9, v6);
  sub_1CFE4FF98(&v65, &v68);
  v72 = v20;
  v73 = 0;
  type metadata accessor for BalanceWidgetEntryView();
  sub_1CFF0A6B4(&qword_1EDEC4928, type metadata accessor for BalanceWidgetEntryView);
  sub_1CFF0AA64();
  sub_1CFF0E37C();
  sub_1CFF0E4DC();
  type metadata accessor for HealthBalanceUI();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v51[0] = ObjCClassFromMetadata;
  v28 = objc_opt_self();
  v29 = [v28 bundleForClass_];
  sub_1CFF0C7FC();
  v68 = sub_1CFF0E5AC();
  v69 = v30;
  v31 = sub_1CFF0A6B4(&qword_1EDEC17C8, sub_1CFF0A550);
  v32 = sub_1CFE60C24();
  v33 = v53;
  v34 = v54;
  sub_1CFF0D92C();

  (*(v52 + 8))(v12, v34);
  sub_1CFF0E4DC();
  v35 = [v28 bundleForClass_];
  sub_1CFF0C7FC();
  *&v65 = sub_1CFF0E5AC();
  *(&v65 + 1) = v36;
  v68 = v34;
  v37 = MEMORY[0x1E69E6158];
  v69 = MEMORY[0x1E69E6158];
  v70 = v31;
  v71 = v32;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v39 = v55;
  v40 = v58;
  sub_1CFF0D8FC();

  (*(v56 + 8))(v33, v40);
  _s15HealthBalanceUI0B12OneDayWidgetV17supportedFamiliesSay0F3Kit0F6FamilyOGvgZ_0();
  v68 = v40;
  v69 = v37;
  v70 = OpaqueTypeConformance2;
  v71 = v32;
  v41 = swift_getOpaqueTypeConformance2();
  v42 = v59;
  v43 = v60;
  sub_1CFF0D90C();

  (*(v57 + 8))(v39, v43);
  v44 = MEMORY[0x1E69E6F90];
  sub_1CFF0AF1C(0, &qword_1EDEC15D0, MEMORY[0x1E6985860], MEMORY[0x1E69E6F90]);
  sub_1CFF0E33C();
  *(swift_allocObject() + 16) = xmmword_1CFF0FCB0;
  sub_1CFF0E32C();
  sub_1CFF0E31C();
  sub_1CFF0AF1C(0, &qword_1EDEC15D8, MEMORY[0x1E6985838], v44);
  v45 = sub_1CFF0E30C();
  v46 = *(v45 - 8);
  v47 = (*(v46 + 80) + 32) & ~*(v46 + 80);
  v48 = swift_allocObject();
  *(v48 + 16) = xmmword_1CFF10480;
  (*(v46 + 104))(v48 + v47, *MEMORY[0x1E69857E8], v45);
  v68 = v43;
  v69 = v41;
  swift_getOpaqueTypeConformance2();
  v49 = v62;
  sub_1CFF0D91C();

  return (*(v61 + 8))(v42, v49);
}

void sub_1CFF0A550()
{
  if (!qword_1EDEC17C0)
  {
    type metadata accessor for BalanceWidgetEntryView();
    sub_1CFF0A6B4(&qword_1EDEC4928, type metadata accessor for BalanceWidgetEntryView);
    v0 = sub_1CFF0E38C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDEC17C0);
    }
  }
}

void sub_1CFF0A5E4()
{
  if (!qword_1EDEC1BE0)
  {
    sub_1CFF0A550();
    sub_1CFF0A6B4(&qword_1EDEC17C8, sub_1CFF0A550);
    sub_1CFE60C24();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EDEC1BE0);
    }
  }
}

uint64_t sub_1CFF0A6B4(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1CFF0A6FC()
{
  if (!qword_1EDEC1BF0)
  {
    sub_1CFF0A5E4();
    sub_1CFF0A550();
    sub_1CFF0A6B4(&qword_1EDEC17C8, sub_1CFF0A550);
    sub_1CFE60C24();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EDEC1BF0);
    }
  }
}

void sub_1CFF0A80C()
{
  if (!qword_1EDEC1BE8)
  {
    sub_1CFF0A6FC();
    sub_1CFF0A5E4();
    sub_1CFF0A550();
    sub_1CFF0A6B4(&qword_1EDEC17C8, sub_1CFF0A550);
    sub_1CFE60C24();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EDEC1BE8);
    }
  }
}

uint64_t sub_1CFF0A954@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1CFF0E6DC();
  sub_1CFF0E6CC();
  sub_1CFF0E66C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = type metadata accessor for BalanceWidgetEntryView();
  sub_1CFF0AEB8(a1, a2 + *(v4 + 20));
  *a2 = swift_getKeyPath();
  sub_1CFF0AF1C(0, &qword_1EDEC2138, MEMORY[0x1E6985838], MEMORY[0x1E697DCB8]);
  swift_storeEnumTagMultiPayload();
}

unint64_t sub_1CFF0AA64()
{
  result = qword_1EDEC46B0[0];
  if (!qword_1EDEC46B0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDEC46B0);
  }

  return result;
}

uint64_t sub_1CFF0AABC@<X0>(void *a1@<X8>)
{
  a1[2] = 0x40B0E00000000000;
  v2 = [objc_allocWithZone(MEMORY[0x1E696C1C0]) init];
  sub_1CFF0CF4C();
  v3 = v2;
  result = sub_1CFF0CF3C();
  *a1 = v3;
  a1[1] = result;
  return result;
}

size_t _s15HealthBalanceUI0B12OneDayWidgetV17supportedFamiliesSay0F3Kit0F6FamilyOGvgZ_0()
{
  v20[1] = *MEMORY[0x1E69E9840];
  v0 = sub_1CFF0E30C();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1CFF0D03C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFF0D01C();
  v8 = sub_1CFF0D02C();
  v9 = sub_1CFF0E7EC();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v20[0] = v11;
    *v10 = 136446210;
    *(v10 + 4) = sub_1CFE462A4(0xD000000000000013, 0x80000001CFF14AB0, v20);
    _os_log_impl(&dword_1CFE44000, v8, v9, "[%{public}s] Returning supported families", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x1D387A160](v11, -1, -1);
    MEMORY[0x1D387A160](v10, -1, -1);
  }

  (*(v5 + 8))(v7, v4);
  sub_1CFF0AF1C(0, &qword_1EDEC15D8, MEMORY[0x1E6985838], MEMORY[0x1E69E6F90]);
  v12 = *(v1 + 72);
  v13 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v14 = v13 + 2 * v12;
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1CFF0FCB0;
  v16 = v15 + v13;
  v17 = *(v1 + 104);
  v17(v16, *MEMORY[0x1E6985818], v0);
  v17(v16 + v12, *MEMORY[0x1E6985828], v0);
  v17(v3, *MEMORY[0x1E69857E8], v0);
  v18 = sub_1CFE97E30(1uLL, 3, 1, v15);
  *(v18 + 16) = 3;
  (*(v1 + 32))(v14 + v18, v3, v0);
  return v18;
}

uint64_t sub_1CFF0AEB8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BalanceWidgetTimelineEntry();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1CFF0AF1C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t BalanceSevenDaysWidget.init()@<X0>(void *a1@<X8>)
{
  a1[2] = 0x40B0E00000000000;
  v2 = [objc_allocWithZone(MEMORY[0x1E696C1C0]) init];
  sub_1CFF0CF4C();
  v3 = v2;
  result = sub_1CFF0CF3C();
  *a1 = v3;
  a1[1] = result;
  return result;
}

__n128 BalanceSevenDaysWidget.init(dataProvider:)@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  a2[1].n128_u64[0] = 0x40B0E00000000000;
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t BalanceSevenDaysWidget.body.getter@<X0>(uint64_t a1@<X8>)
{
  v67 = a1;
  v2 = sub_1CFF0C80C();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v55 = &v51 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1CFF0E55C();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v54 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1CFF0D03C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFF0A550();
  v58 = v10;
  v56 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v53 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFF0A5E4();
  v62 = v12;
  v60 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v57 = &v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFF0A6FC();
  v64 = v14;
  v61 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v59 = &v51 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFF0A80C();
  v66 = v16;
  v65 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v63 = &v51 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(v1 + 8);
  v19 = *(v1 + 16);
  v20 = *v1;
  v21 = v18;
  sub_1CFF0CA0C();
  v70 = &type metadata for BalanceWidgetDataProvider;
  v71 = &off_1F4C90D28;
  *&v69 = v20;
  *(&v69 + 1) = v21;
  v78 = sub_1CFEB45EC;
  v79 = 0;
  v80 = sub_1CFEB45F0;
  v81 = 0;
  sub_1CFF0D01C();
  v22 = sub_1CFF0D02C();
  v23 = sub_1CFF0E7EC();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v68 = v25;
    *v24 = 136446210;
    *(v24 + 4) = sub_1CFE462A4(0xD00000000000001DLL, 0x80000001CFF16A90, &v68);
    _os_log_impl(&dword_1CFE44000, v22, v23, "[%{public}s] init", v24, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v25);
    MEMORY[0x1D387A160](v25, -1, -1);
    MEMORY[0x1D387A160](v24, -1, -1);
  }

  (*(v7 + 8))(v9, v6);
  sub_1CFE4FF98(&v69, &v72);
  v76 = v19;
  v77 = 1;
  type metadata accessor for BalanceWidgetEntryView();
  sub_1CFF0A6B4(&qword_1EDEC4928, type metadata accessor for BalanceWidgetEntryView);
  sub_1CFF0AA64();
  v26 = v53;
  sub_1CFF0E37C();
  sub_1CFF0E4DC();
  type metadata accessor for HealthBalanceUI();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v52 = ObjCClassFromMetadata;
  v28 = objc_opt_self();
  v29 = [v28 bundleForClass_];
  sub_1CFF0C7FC();
  v72 = sub_1CFF0E5AC();
  v73 = v30;
  v31 = sub_1CFF0A6B4(&qword_1EDEC17C8, sub_1CFF0A550);
  v32 = sub_1CFE60C24();
  v33 = v57;
  v34 = v58;
  sub_1CFF0D92C();

  (*(v56 + 8))(v26, v34);
  sub_1CFF0E4DC();
  v35 = [v28 bundleForClass_];
  sub_1CFF0C7FC();
  *&v69 = sub_1CFF0E5AC();
  *(&v69 + 1) = v36;
  v72 = v34;
  v37 = MEMORY[0x1E69E6158];
  v73 = MEMORY[0x1E69E6158];
  v74 = v31;
  v75 = v32;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v39 = v59;
  v40 = v62;
  sub_1CFF0D8FC();

  (*(v60 + 8))(v33, v40);
  _s15HealthBalanceUI0B15SevenDaysWidgetV17supportedFamiliesSay0F3Kit0F6FamilyOGvgZ_0();
  v72 = v40;
  v73 = v37;
  v74 = OpaqueTypeConformance2;
  v75 = v32;
  v41 = swift_getOpaqueTypeConformance2();
  v42 = v63;
  v43 = v64;
  sub_1CFF0D90C();

  (*(v61 + 8))(v39, v43);
  v44 = MEMORY[0x1E69E6F90];
  sub_1CFF0AF1C(0, &qword_1EDEC15D0, MEMORY[0x1E6985860], MEMORY[0x1E69E6F90]);
  sub_1CFF0E33C();
  *(swift_allocObject() + 16) = xmmword_1CFF0FCB0;
  sub_1CFF0E32C();
  sub_1CFF0E31C();
  sub_1CFF0AF1C(0, &qword_1EDEC15D8, MEMORY[0x1E6985838], v44);
  v45 = sub_1CFF0E30C();
  v46 = *(v45 - 8);
  v47 = (*(v46 + 80) + 32) & ~*(v46 + 80);
  v48 = swift_allocObject();
  *(v48 + 16) = xmmword_1CFF10480;
  (*(v46 + 104))(v48 + v47, *MEMORY[0x1E69857E8], v45);
  v72 = v43;
  v73 = v41;
  swift_getOpaqueTypeConformance2();
  v49 = v66;
  sub_1CFF0D91C();

  return (*(v65 + 8))(v42, v49);
}

uint64_t sub_1CFF0BA6C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1CFF0E6DC();
  sub_1CFF0E6CC();
  sub_1CFF0E66C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = type metadata accessor for BalanceWidgetEntryView();
  sub_1CFF0AEB8(a1, a2 + *(v4 + 20));
  *a2 = swift_getKeyPath();
  sub_1CFF0AF1C(0, &qword_1EDEC2138, MEMORY[0x1E6985838], MEMORY[0x1E697DCB8]);
  swift_storeEnumTagMultiPayload();
}

size_t _s15HealthBalanceUI0B15SevenDaysWidgetV17supportedFamiliesSay0F3Kit0F6FamilyOGvgZ_0()
{
  v18[1] = *MEMORY[0x1E69E9840];
  v0 = sub_1CFF0E30C();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v18 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1CFF0D03C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFF0D01C();
  v8 = sub_1CFF0D02C();
  v9 = sub_1CFF0E7EC();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v18[0] = v11;
    *v10 = 136446210;
    *(v10 + 4) = sub_1CFE462A4(0xD000000000000016, 0x80000001CFF14B70, v18);
    _os_log_impl(&dword_1CFE44000, v8, v9, "[%{public}s] Returning supported families", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x1D387A160](v11, -1, -1);
    MEMORY[0x1D387A160](v10, -1, -1);
  }

  (*(v5 + 8))(v7, v4);
  sub_1CFF0AF1C(0, &qword_1EDEC15D8, MEMORY[0x1E6985838], MEMORY[0x1E69E6F90]);
  v12 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v13 = v12 + *(v1 + 72);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1CFF10480;
  v15 = *(v1 + 104);
  v15(v14 + v12, *MEMORY[0x1E6985828], v0);
  v15(v3, *MEMORY[0x1E69857E8], v0);
  v16 = sub_1CFE97E30(1uLL, 2, 1, v14);
  *(v16 + 16) = 2;
  (*(v1 + 32))(v13 + v16, v3, v0);
  return v16;
}

id sub_1CFF0BF2C()
{
  type metadata accessor for ResourceBundleClass();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass_];
  qword_1EDEC4BE0 = result;
  return result;
}

uint64_t sub_1CFF0BFBC(uint64_t a1, uint64_t *a2)
{
  v3 = sub_1CFF0CFFC();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  if (qword_1EDEC4BD8 != -1)
  {
    swift_once();
  }

  v4 = qword_1EDEC4BE0;
  return sub_1CFF0CFEC();
}

uint64_t sub_1CFF0C068()
{
  v0 = sub_1CFF0CFFC();
  __swift_allocate_value_buffer(v0, qword_1EC516388);
  __swift_project_value_buffer(v0, qword_1EC516388);
  if (qword_1EDEC4BD8 != -1)
  {
    swift_once();
  }

  v1 = qword_1EDEC4BE0;
  return sub_1CFF0CFEC();
}

uint64_t sub_1CFF0C110()
{
  v0 = sub_1CFF0CFFC();
  __swift_allocate_value_buffer(v0, qword_1EC5163A0);
  __swift_project_value_buffer(v0, qword_1EC5163A0);
  if (qword_1EDEC4BD8 != -1)
  {
    swift_once();
  }

  v1 = qword_1EDEC4BE0;
  return sub_1CFF0CFEC();
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_1CFF0C21C()
{
  v0 = sub_1CFF0CFFC();
  __swift_allocate_value_buffer(v0, qword_1EC5163B8);
  __swift_project_value_buffer(v0, qword_1EC5163B8);
  if (qword_1EDEC4BD8 != -1)
  {
    swift_once();
  }

  v1 = qword_1EDEC4BE0;
  return sub_1CFF0CFEC();
}

uint64_t sub_1CFF0C2C4()
{
  v0 = sub_1CFF0CFFC();
  __swift_allocate_value_buffer(v0, qword_1EC5163D0);
  __swift_project_value_buffer(v0, qword_1EC5163D0);
  if (qword_1EDEC4BD8 != -1)
  {
    swift_once();
  }

  v1 = qword_1EDEC4BE0;
  return sub_1CFF0CFEC();
}

__double2 __sincos_stret(double a1)
{
  MEMORY[0x1EEE73570](a1);
  result.__cosval = v2;
  result.__sinval = v1;
  return result;
}