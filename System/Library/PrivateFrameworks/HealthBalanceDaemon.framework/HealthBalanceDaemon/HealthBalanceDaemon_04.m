uint64_t sub_2289147D4(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = a2;
  v5 = v3();

  return v5 & 1;
}

uint64_t sub_228914830@<X0>(uint64_t a1@<X8>)
{
  sub_228917100(0, &qword_27D85BDD8, type metadata accessor for BloodOxygenMetadataStatistics, MEMORY[0x277D83D88]);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v19 - v5;
  sub_228915070();
  v7 = OBJC_IVAR____TtC19HealthBalanceDaemon36BloodOxygenMetadataStatisticsBuilder_completedBaselineStatistics;
  swift_beginAccess();
  v8 = *(*(v1 + v7) + 16);
  if (v8)
  {
    v20 = *(v1 + v7);
    swift_bridgeObjectRetain_n();
    sub_2289128B0(&v20);

    v9 = v20;
    v10 = v8 >> 1;
    if (v10 >= v20[2])
    {
      __break(1u);

      __break(1u);
    }

    else
    {
      v11 = type metadata accessor for BloodOxygenMetadataStatistics(0);
      v12 = *(v11 - 8);
      sub_228917294(v9 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v10, v6, type metadata accessor for BloodOxygenMetadataStatistics);

      (*(v12 + 56))(v6, 0, 1, v11);
      v13 = OBJC_IVAR____TtC19HealthBalanceDaemon36BloodOxygenMetadataStatisticsBuilder_targetStatistics;
      swift_beginAccess();
      v14 = type metadata accessor for BloodOxygenComparisonSummary(0);
      sub_228915A1C(v1 + v13, a1 + *(v14 + 20));
      return sub_228915B9C(v6, a1);
    }
  }

  else
  {
    v16 = type metadata accessor for BloodOxygenMetadataStatistics(0);
    (*(*(v16 - 8) + 56))(a1, 1, 1, v16);
    v17 = OBJC_IVAR____TtC19HealthBalanceDaemon36BloodOxygenMetadataStatisticsBuilder_targetStatistics;
    swift_beginAccess();
    v18 = type metadata accessor for BloodOxygenComparisonSummary(0);
    return sub_228915A1C(v1 + v17, a1 + *(v18 + 20));
  }

  return result;
}

BOOL sub_228914AC0()
{
  v1 = v0;
  v2 = type metadata accessor for BloodOxygenMetadataStatistics(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v29 - v8;
  sub_228917100(0, &qword_27D85BDD8, type metadata accessor for BloodOxygenMetadataStatistics, MEMORY[0x277D83D88]);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v29 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = &v29 - v18;
  sub_228915A1C(v1, &v29 - v18);
  v20 = *(v3 + 48);
  if (v20(v19, 1, v2) == 1)
  {
    v21 = v19;
LABEL_7:
    sub_228915AB0(v21);
    return 0;
  }

  v22 = *&v19[*(v2 + 24)];
  sub_228915B3C(v19, type metadata accessor for BloodOxygenMetadataStatistics);
  v23 = __exp10(v22 * 0.0154 + -0.445);
  sub_228915A1C(v1, v17);
  if (v20(v17, 1, v2) == 1)
  {
    v21 = v17;
    goto LABEL_7;
  }

  sub_2289172FC(v17, v9, type metadata accessor for BloodOxygenMetadataStatistics);
  v24 = type metadata accessor for BloodOxygenComparisonSummary(0);
  sub_228915A1C(v1 + *(v24 + 20), v14);
  if (v20(v14, 1, v2) == 1)
  {
    sub_228915B3C(v9, type metadata accessor for BloodOxygenMetadataStatistics);
    v21 = v14;
    goto LABEL_7;
  }

  sub_2289172FC(v14, v7, type metadata accessor for BloodOxygenMetadataStatistics);
  v26 = *&v9[*(v2 + 24)];
  sub_228915B3C(v9, type metadata accessor for BloodOxygenMetadataStatistics);
  v27 = v26 - v23;
  v28 = *&v7[*(v2 + 24)];
  sub_228915B3C(v7, type metadata accessor for BloodOxygenMetadataStatistics);
  return v28 <= v27;
}

uint64_t sub_228914DF4()
{
  v1 = OBJC_IVAR____TtC19HealthBalanceDaemon40OxygenSaturationElevationContextProvider_targetDay;
  v2 = sub_22892EFA8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC19HealthBalanceDaemon40OxygenSaturationElevationContextProvider_targetEndDate;
  v4 = sub_22892DEF8();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC19HealthBalanceDaemon40OxygenSaturationElevationContextProvider_gregorianCalendar;
  v6 = sub_22892E048();
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  v7 = *(v0 + OBJC_IVAR____TtC19HealthBalanceDaemon40OxygenSaturationElevationContextProvider_builder);

  v8 = *(*v0 + 12);
  v9 = *(*v0 + 26);

  return swift_deallocClassInstance();
}

uint64_t sub_228914F50()
{
  result = sub_22892EFA8();
  if (v1 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = sub_22892DEF8();
    if (v2 <= 0x3F)
    {
      v5 = *(result - 8) + 64;
      result = sub_22892E048();
      if (v3 <= 0x3F)
      {
        v6 = *(result - 8) + 64;
        return swift_updateClassMetadata2();
      }
    }
  }

  return result;
}

uint64_t sub_228915070()
{
  v1 = v0;
  sub_228917100(0, &qword_27D85BDD8, type metadata accessor for BloodOxygenMetadataStatistics, MEMORY[0x277D83D88]);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v29 - v7;
  v9 = type metadata accessor for BloodOxygenMetadataStatistics(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v29 - v15;
  v17 = OBJC_IVAR____TtC19HealthBalanceDaemon36BloodOxygenMetadataStatisticsBuilder_openStatistics;
  swift_beginAccess();
  sub_228915A1C(v1 + v17, v8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_228915AB0(v8);
  }

  sub_2289172FC(v8, v16, type metadata accessor for BloodOxygenMetadataStatistics);
  sub_22892EFA8();
  sub_2288BAA64(&qword_2813DEE20, MEMORY[0x277CCB6A8]);
  if (sub_22892F048())
  {
    sub_2289171F8(0, &qword_2813DECB8, MEMORY[0x277D83D00]);
    v20 = *(v19 + 36);
    if (sub_22892F028())
    {
      sub_228917294(v16, v14, type metadata accessor for BloodOxygenMetadataStatistics);
      v21 = OBJC_IVAR____TtC19HealthBalanceDaemon36BloodOxygenMetadataStatisticsBuilder_completedBaselineStatistics;
      swift_beginAccess();
      v22 = *(v1 + v21);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v1 + v21) = v22;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v22 = sub_2288D6004(0, v22[2] + 1, 1, v22);
        *(v1 + v21) = v22;
      }

      v25 = v22[2];
      v24 = v22[3];
      v26 = v25 + 1;
      if (v25 >= v24 >> 1)
      {
        v30 = v25 + 1;
        v28 = sub_2288D6004(v24 > 1, v25 + 1, 1, v22);
        v26 = v30;
        v22 = v28;
      }

      v22[2] = v26;
      sub_2289172FC(v14, v22 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v25, type metadata accessor for BloodOxygenMetadataStatistics);
      *(v1 + v21) = v22;
      swift_endAccess();
      goto LABEL_12;
    }
  }

  sub_2288BAA64(&unk_2813DEE10, MEMORY[0x277CCB6A8]);
  if ((sub_22892F088() & 1) == 0)
  {
LABEL_12:
    sub_228915B3C(v16, type metadata accessor for BloodOxygenMetadataStatistics);
    goto LABEL_13;
  }

  sub_2289172FC(v16, v6, type metadata accessor for BloodOxygenMetadataStatistics);
  (*(v10 + 56))(v6, 0, 1, v9);
  v27 = OBJC_IVAR____TtC19HealthBalanceDaemon36BloodOxygenMetadataStatisticsBuilder_targetStatistics;
  swift_beginAccess();
  sub_228917164(v6, v1 + v27);
  swift_endAccess();
LABEL_13:
  (*(v10 + 56))(v6, 1, 1, v9);
  swift_beginAccess();
  sub_228917164(v6, v1 + v17);
  return swift_endAccess();
}

uint64_t sub_22891552C()
{
  sub_2288BA8EC(v0 + OBJC_IVAR____TtC19HealthBalanceDaemon36BloodOxygenMetadataStatisticsBuilder_baselineRange, &qword_2813DECB8, MEMORY[0x277D83D00]);
  v1 = OBJC_IVAR____TtC19HealthBalanceDaemon36BloodOxygenMetadataStatisticsBuilder_targetDay;
  v2 = sub_22892EFA8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC19HealthBalanceDaemon36BloodOxygenMetadataStatisticsBuilder_gregorianCalendar;
  v4 = sub_22892E048();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = *(v0 + OBJC_IVAR____TtC19HealthBalanceDaemon36BloodOxygenMetadataStatisticsBuilder_completedBaselineStatistics);

  sub_228915AB0(v0 + OBJC_IVAR____TtC19HealthBalanceDaemon36BloodOxygenMetadataStatisticsBuilder_targetStatistics);
  sub_228915AB0(v0 + OBJC_IVAR____TtC19HealthBalanceDaemon36BloodOxygenMetadataStatisticsBuilder_openStatistics);

  v6 = *(*v0 + 48);
  v7 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

void sub_22891569C()
{
  sub_2289171F8(319, &qword_2813DECB8, MEMORY[0x277D83D00]);
  if (v1 <= 0x3F)
  {
    v8 = *(v0 - 8) + 64;
    v2 = sub_22892EFA8();
    if (v3 <= 0x3F)
    {
      v9 = *(v2 - 8) + 64;
      v4 = sub_22892E048();
      if (v5 <= 0x3F)
      {
        v10 = *(v4 - 8) + 64;
        sub_228917100(319, &qword_27D85BDD8, type metadata accessor for BloodOxygenMetadataStatistics, MEMORY[0x277D83D88]);
        if (v7 <= 0x3F)
        {
          v11 = *(v6 - 8) + 64;
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void sub_228915874()
{
  if (!qword_27D85BDE0)
  {
    sub_22892DEF8();
    sub_2288BAA64(&qword_2813DFEE8, MEMORY[0x277CC9578]);
    v0 = sub_22892F348();
    if (!v1)
    {
      atomic_store(v0, &qword_27D85BDE0);
    }
  }
}

void sub_22891591C()
{
  sub_22892EFA8();
  if (v0 <= 0x3F)
  {
    sub_228915874();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_2289159E0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1() & 1;
}

uint64_t block_copy_helper_9(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_228915A1C(uint64_t a1, uint64_t a2)
{
  sub_228917100(0, &qword_27D85BDD8, type metadata accessor for BloodOxygenMetadataStatistics, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_228915AB0(uint64_t a1)
{
  sub_228917100(0, &qword_27D85BDD8, type metadata accessor for BloodOxygenMetadataStatistics, MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_228915B3C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_228915B9C(uint64_t a1, uint64_t a2)
{
  sub_228917100(0, &qword_27D85BDD8, type metadata accessor for BloodOxygenMetadataStatistics, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_228915C30(unint64_t *a1)
{
  v2 = a1[1];
  result = sub_22892F7D8();
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
        type metadata accessor for BloodOxygenMetadataStatistics(0);
        v6 = sub_22892F248();
        *(v6 + 16) = v5;
      }

      v7 = *(type metadata accessor for BloodOxygenMetadataStatistics(0) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_228915FB4(v8, v9, a1, v4);
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
    return sub_228915D5C(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_228915D5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = type metadata accessor for BloodOxygenMetadataStatistics(0);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v30 - v14;
  result = MEMORY[0x28223BE20](v13);
  v19 = &v30 - v18;
  v32 = a2;
  if (a3 != a2)
  {
    v20 = *a4;
    v21 = *(v17 + 72);
    v22 = *a4 + v21 * (a3 - 1);
    v23 = -v21;
    v24 = a1 - a3;
    v37 = v20;
    v31 = v21;
    v25 = v20 + v21 * a3;
LABEL_5:
    v35 = v22;
    v36 = a3;
    v33 = v25;
    v34 = v24;
    while (1)
    {
      sub_228917294(v25, v19, type metadata accessor for BloodOxygenMetadataStatistics);
      sub_228917294(v22, v15, type metadata accessor for BloodOxygenMetadataStatistics);
      v26 = *(v8 + 24);
      v27 = *&v19[v26];
      v28 = *&v15[v26];
      sub_228915B3C(v15, type metadata accessor for BloodOxygenMetadataStatistics);
      result = sub_228915B3C(v19, type metadata accessor for BloodOxygenMetadataStatistics);
      if (v27 >= v28)
      {
LABEL_4:
        a3 = v36 + 1;
        v22 = v35 + v31;
        v24 = v34 - 1;
        v25 = v33 + v31;
        if (v36 + 1 == v32)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v37)
      {
        break;
      }

      sub_2289172FC(v25, v12, type metadata accessor for BloodOxygenMetadataStatistics);
      swift_arrayInitWithTakeFrontToBack();
      result = sub_2289172FC(v12, v22, type metadata accessor for BloodOxygenMetadataStatistics);
      v22 += v23;
      v25 += v23;
      if (__CFADD__(v24++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_228915FB4(unint64_t *a1, uint64_t a2, unint64_t *a3, unint64_t a4)
{
  v6 = v4;
  v111 = a1;
  v9 = type metadata accessor for BloodOxygenMetadataStatistics(0);
  v119 = *(v9 - 8);
  v10 = *(v119 + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v114 = &v108 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v122 = &v108 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v123 = &v108 - v16;
  result = MEMORY[0x28223BE20](v15);
  v19 = &v108 - v18;
  v121 = a3;
  v20 = a3[1];
  if (v20 < 1)
  {
    v22 = MEMORY[0x277D84F90];
LABEL_96:
    v5 = *v111;
    if (!*v111)
    {
      goto LABEL_135;
    }

    a4 = v22;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      result = a4;
    }

    else
    {
LABEL_129:
      result = sub_228916EB0(a4);
    }

    v125 = result;
    a4 = *(result + 16);
    if (a4 >= 2)
    {
      while (*v121)
      {
        v104 = *(result + 16 * a4);
        v105 = result;
        v106 = *(result + 16 * (a4 - 1) + 40);
        sub_228916918(*v121 + *(v119 + 72) * v104, *v121 + *(v119 + 72) * *(result + 16 * (a4 - 1) + 32), *v121 + *(v119 + 72) * v106, v5);
        if (v6)
        {
        }

        if (v106 < v104)
        {
          goto LABEL_122;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v105 = sub_228916EB0(v105);
        }

        if (a4 - 2 >= *(v105 + 2))
        {
          goto LABEL_123;
        }

        v107 = &v105[16 * a4];
        *v107 = v104;
        *(v107 + 1) = v106;
        v125 = v105;
        sub_228916E24(a4 - 1);
        result = v125;
        a4 = *(v125 + 16);
        if (a4 <= 1)
        {
        }
      }

      goto LABEL_133;
    }
  }

  v21 = 0;
  v22 = MEMORY[0x277D84F90];
  v110 = a4;
  v124 = v9;
  while (1)
  {
    v23 = v21;
    v24 = v21 + 1;
    v115 = v22;
    if (v21 + 1 >= v20)
    {
      v20 = v21 + 1;
    }

    else
    {
      v25 = *(v119 + 72);
      v5 = *v121 + v25 * v24;
      v118 = *v121;
      v26 = v118;
      sub_228917294(v118 + v25 * v24, v19, type metadata accessor for BloodOxygenMetadataStatistics);
      v27 = v26 + v25 * v23;
      v28 = v23;
      v29 = v123;
      sub_228917294(v27, v123, type metadata accessor for BloodOxygenMetadataStatistics);
      v30 = *(v9 + 24);
      v31 = *&v19[v30];
      v32 = *(v29 + v30);
      sub_228915B3C(v29, type metadata accessor for BloodOxygenMetadataStatistics);
      result = sub_228915B3C(v19, type metadata accessor for BloodOxygenMetadataStatistics);
      v109 = v28;
      v33 = v28 + 2;
      v120 = v25;
      v34 = v118 + v25 * (v28 + 2);
      while (v20 != v33)
      {
        sub_228917294(v34, v19, type metadata accessor for BloodOxygenMetadataStatistics);
        v35 = v123;
        sub_228917294(v5, v123, type metadata accessor for BloodOxygenMetadataStatistics);
        v36 = *(v124 + 24);
        v37 = *&v19[v36];
        v38 = *(v35 + v36);
        sub_228915B3C(v35, type metadata accessor for BloodOxygenMetadataStatistics);
        result = sub_228915B3C(v19, type metadata accessor for BloodOxygenMetadataStatistics);
        ++v33;
        v34 += v120;
        v5 += v120;
        if (v31 < v32 == v37 >= v38)
        {
          v20 = v33 - 1;
          break;
        }
      }

      v23 = v109;
      a4 = v110;
      v9 = v124;
      if (v31 < v32)
      {
        if (v20 < v109)
        {
          goto LABEL_126;
        }

        if (v109 < v20)
        {
          v108 = v6;
          v39 = v120 * (v20 - 1);
          v40 = v20 * v120;
          v41 = v20;
          v42 = v20;
          v43 = v109;
          v44 = v109 * v120;
          do
          {
            if (v43 != --v42)
            {
              v45 = *v121;
              if (!*v121)
              {
                goto LABEL_132;
              }

              v5 = v45 + v44;
              sub_2289172FC(v45 + v44, v114, type metadata accessor for BloodOxygenMetadataStatistics);
              if (v44 < v39 || v5 >= v45 + v40)
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v44 != v39)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              result = sub_2289172FC(v114, v45 + v39, type metadata accessor for BloodOxygenMetadataStatistics);
            }

            ++v43;
            v39 -= v120;
            v40 -= v120;
            v44 += v120;
          }

          while (v43 < v42);
          v6 = v108;
          v23 = v109;
          a4 = v110;
          v9 = v124;
          v20 = v41;
        }
      }
    }

    v46 = v121[1];
    if (v20 < v46)
    {
      if (__OFSUB__(v20, v23))
      {
        goto LABEL_125;
      }

      if (v20 - v23 < a4)
      {
        if (__OFADD__(v23, a4))
        {
          goto LABEL_127;
        }

        if ((v23 + a4) >= v46)
        {
          v47 = v121[1];
        }

        else
        {
          v47 = v23 + a4;
        }

        if (v47 < v23)
        {
LABEL_128:
          __break(1u);
          goto LABEL_129;
        }

        if (v20 != v47)
        {
          break;
        }
      }
    }

    v21 = v20;
    if (v20 < v23)
    {
      goto LABEL_124;
    }

LABEL_33:
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v22 = v115;
    }

    else
    {
      result = sub_2288D605C(0, *(v115 + 2) + 1, 1, v115);
      v22 = result;
    }

    a4 = *(v22 + 2);
    v48 = *(v22 + 3);
    v5 = a4 + 1;
    if (a4 >= v48 >> 1)
    {
      result = sub_2288D605C((v48 > 1), a4 + 1, 1, v22);
      v22 = result;
    }

    *(v22 + 2) = v5;
    v49 = &v22[16 * a4];
    *(v49 + 4) = v23;
    *(v49 + 5) = v21;
    v50 = *v111;
    if (!*v111)
    {
      goto LABEL_134;
    }

    if (a4)
    {
      while (1)
      {
        v51 = v5 - 1;
        if (v5 >= 4)
        {
          break;
        }

        if (v5 == 3)
        {
          v52 = *(v22 + 4);
          v53 = *(v22 + 5);
          v62 = __OFSUB__(v53, v52);
          v54 = v53 - v52;
          v55 = v62;
LABEL_52:
          if (v55)
          {
            goto LABEL_113;
          }

          v68 = &v22[16 * v5];
          v70 = *v68;
          v69 = *(v68 + 1);
          v71 = __OFSUB__(v69, v70);
          v72 = v69 - v70;
          v73 = v71;
          if (v71)
          {
            goto LABEL_116;
          }

          v74 = &v22[16 * v51 + 32];
          v76 = *v74;
          v75 = *(v74 + 1);
          v62 = __OFSUB__(v75, v76);
          v77 = v75 - v76;
          if (v62)
          {
            goto LABEL_119;
          }

          if (__OFADD__(v72, v77))
          {
            goto LABEL_120;
          }

          if (v72 + v77 >= v54)
          {
            if (v54 < v77)
            {
              v51 = v5 - 2;
            }

            goto LABEL_73;
          }

          goto LABEL_66;
        }

        v78 = &v22[16 * v5];
        v80 = *v78;
        v79 = *(v78 + 1);
        v62 = __OFSUB__(v79, v80);
        v72 = v79 - v80;
        v73 = v62;
LABEL_66:
        if (v73)
        {
          goto LABEL_115;
        }

        v81 = &v22[16 * v51];
        v83 = *(v81 + 4);
        v82 = *(v81 + 5);
        v62 = __OFSUB__(v82, v83);
        v84 = v82 - v83;
        if (v62)
        {
          goto LABEL_118;
        }

        if (v84 < v72)
        {
          goto LABEL_3;
        }

LABEL_73:
        a4 = v51 - 1;
        if (v51 - 1 >= v5)
        {
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
LABEL_127:
          __break(1u);
          goto LABEL_128;
        }

        if (!*v121)
        {
          goto LABEL_131;
        }

        v89 = v22;
        v90 = *&v22[16 * a4 + 32];
        v5 = *&v22[16 * v51 + 40];
        sub_228916918(*v121 + *(v119 + 72) * v90, *v121 + *(v119 + 72) * *&v22[16 * v51 + 32], *v121 + *(v119 + 72) * v5, v50);
        if (v6)
        {
        }

        if (v5 < v90)
        {
          goto LABEL_109;
        }

        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v91 = v89;
        }

        else
        {
          v91 = sub_228916EB0(v89);
        }

        v9 = v124;
        if (a4 >= *(v91 + 2))
        {
          goto LABEL_110;
        }

        v92 = &v91[16 * a4];
        *(v92 + 4) = v90;
        *(v92 + 5) = v5;
        v125 = v91;
        result = sub_228916E24(v51);
        v22 = v125;
        v5 = *(v125 + 16);
        if (v5 <= 1)
        {
          goto LABEL_3;
        }
      }

      v56 = &v22[16 * v5 + 32];
      v57 = *(v56 - 64);
      v58 = *(v56 - 56);
      v62 = __OFSUB__(v58, v57);
      v59 = v58 - v57;
      if (v62)
      {
        goto LABEL_111;
      }

      v61 = *(v56 - 48);
      v60 = *(v56 - 40);
      v62 = __OFSUB__(v60, v61);
      v54 = v60 - v61;
      v55 = v62;
      if (v62)
      {
        goto LABEL_112;
      }

      v63 = &v22[16 * v5];
      v65 = *v63;
      v64 = *(v63 + 1);
      v62 = __OFSUB__(v64, v65);
      v66 = v64 - v65;
      if (v62)
      {
        goto LABEL_114;
      }

      v62 = __OFADD__(v54, v66);
      v67 = v54 + v66;
      if (v62)
      {
        goto LABEL_117;
      }

      if (v67 >= v59)
      {
        v85 = &v22[16 * v51 + 32];
        v87 = *v85;
        v86 = *(v85 + 1);
        v62 = __OFSUB__(v86, v87);
        v88 = v86 - v87;
        if (v62)
        {
          goto LABEL_121;
        }

        if (v54 < v88)
        {
          v51 = v5 - 2;
        }

        goto LABEL_73;
      }

      goto LABEL_52;
    }

LABEL_3:
    v20 = v121[1];
    a4 = v110;
    if (v21 >= v20)
    {
      goto LABEL_96;
    }
  }

  v108 = v6;
  v109 = v23;
  a4 = *v121;
  v93 = *(v119 + 72);
  v94 = *v121 + v93 * (v20 - 1);
  v95 = -v93;
  v96 = v23 - v20;
  v112 = v93;
  v113 = v47;
  v5 = a4 + v20 * v93;
LABEL_86:
  v120 = v20;
  v116 = v5;
  v117 = v96;
  v118 = v94;
  v97 = v124;
  while (1)
  {
    sub_228917294(v5, v19, type metadata accessor for BloodOxygenMetadataStatistics);
    v98 = v123;
    sub_228917294(v94, v123, type metadata accessor for BloodOxygenMetadataStatistics);
    v99 = *(v97 + 24);
    v100 = *&v19[v99];
    v101 = *(v98 + v99);
    sub_228915B3C(v98, type metadata accessor for BloodOxygenMetadataStatistics);
    result = sub_228915B3C(v19, type metadata accessor for BloodOxygenMetadataStatistics);
    if (v100 >= v101)
    {
LABEL_85:
      v20 = v120 + 1;
      v21 = v113;
      v94 = v118 + v112;
      v96 = v117 - 1;
      v5 = v116 + v112;
      if (v120 + 1 != v113)
      {
        goto LABEL_86;
      }

      v6 = v108;
      v23 = v109;
      v9 = v124;
      if (v113 < v109)
      {
        goto LABEL_124;
      }

      goto LABEL_33;
    }

    if (!a4)
    {
      break;
    }

    v102 = v122;
    sub_2289172FC(v5, v122, type metadata accessor for BloodOxygenMetadataStatistics);
    v97 = v124;
    swift_arrayInitWithTakeFrontToBack();
    sub_2289172FC(v102, v94, type metadata accessor for BloodOxygenMetadataStatistics);
    v94 += v95;
    v5 += v95;
    if (__CFADD__(v96++, 1))
    {
      goto LABEL_85;
    }
  }

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
  return result;
}

uint64_t sub_228916918(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v49 = a3;
  v48 = type metadata accessor for BloodOxygenMetadataStatistics(0);
  v8 = *(*(v48 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v48);
  v47 = v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v9);
  v13 = v43 - v12;
  v15 = *(v14 + 72);
  if (!v15)
  {
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_61;
  }

  v16 = v49 - a2;
  if (v49 - a2 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_62;
  }

  v17 = (a2 - a1) / v15;
  v52 = a1;
  v51 = a4;
  if (v17 >= v16 / v15)
  {
    v19 = v16 / v15 * v15;
    if (a4 < a2 || a2 + v19 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v43[1] = v4;
    v26 = a4 + v19;
    if (v19 < 1)
    {
      v29 = a4 + v19;
    }

    else
    {
      v27 = -v15;
      v28 = a4 + v19;
      v29 = v26;
      v45 = v27;
      v46 = a4;
      do
      {
        v43[0] = v29;
        v30 = a2;
        v31 = a2 + v27;
        while (1)
        {
          v33 = v49;
          if (v30 <= a1)
          {
            v52 = v30;
            v50 = v43[0];
            goto LABEL_59;
          }

          v44 = v29;
          v49 += v27;
          v34 = v28 + v27;
          sub_228917294(v34, v13, type metadata accessor for BloodOxygenMetadataStatistics);
          v35 = v31;
          v36 = v31;
          v37 = v13;
          v38 = v47;
          sub_228917294(v36, v47, type metadata accessor for BloodOxygenMetadataStatistics);
          v39 = *(v48 + 24);
          v40 = *(v37 + v39);
          v41 = *(v38 + v39);
          v42 = v38;
          v13 = v37;
          sub_228915B3C(v42, type metadata accessor for BloodOxygenMetadataStatistics);
          sub_228915B3C(v37, type metadata accessor for BloodOxygenMetadataStatistics);
          if (v40 < v41)
          {
            break;
          }

          v29 = v34;
          if (v33 < v28 || v49 >= v28)
          {
            swift_arrayInitWithTakeFrontToBack();
            v31 = v35;
          }

          else
          {
            v31 = v35;
            if (v33 != v28)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v28 = v34;
          v32 = v34 > v46;
          v27 = v45;
          if (!v32)
          {
            a2 = v30;
            goto LABEL_58;
          }
        }

        if (v33 < v30 || v49 >= v30)
        {
          a2 = v35;
          swift_arrayInitWithTakeFrontToBack();
          v29 = v44;
          v27 = v45;
        }

        else
        {
          v29 = v44;
          v27 = v45;
          a2 = v35;
          if (v33 != v30)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      while (v28 > v46);
    }

LABEL_58:
    v52 = a2;
    v50 = v29;
  }

  else
  {
    v18 = v17 * v15;
    if (a4 < a1 || a1 + v18 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v20 = a4 + v18;
    v50 = a4 + v18;
    if (v18 >= 1 && a2 < v49)
    {
      do
      {
        sub_228917294(a2, v13, type metadata accessor for BloodOxygenMetadataStatistics);
        v22 = v47;
        sub_228917294(a4, v47, type metadata accessor for BloodOxygenMetadataStatistics);
        v23 = *(v48 + 24);
        v24 = *&v13[v23];
        v25 = *(v22 + v23);
        sub_228915B3C(v22, type metadata accessor for BloodOxygenMetadataStatistics);
        sub_228915B3C(v13, type metadata accessor for BloodOxygenMetadataStatistics);
        if (v24 >= v25)
        {
          if (a1 < a4 || a1 >= a4 + v15)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v51 = a4 + v15;
          a4 += v15;
        }

        else
        {
          if (a1 < a2 || a1 >= a2 + v15)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 += v15;
        }

        a1 += v15;
        v52 = a1;
      }

      while (a4 < v20 && a2 < v49);
    }
  }

LABEL_59:
  sub_228916EDC(&v52, &v51, &v50, type metadata accessor for BloodOxygenMetadataStatistics);
  return 1;
}

uint64_t sub_228916E24(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_228916EB0(v3);
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
    v9 = *(v7 + 40);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_228916EDC(unint64_t *a1, unint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
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

char *sub_228916FC4(char *result, int64_t a2, char a3, char *a4)
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
    sub_228917100(0, &qword_27D85B3F0, sub_2288D6B8C, MEMORY[0x277D84560]);
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
    v10 = MEMORY[0x277D84F90];
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

void sub_228917100(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_228917164(uint64_t a1, uint64_t a2)
{
  sub_228917100(0, &qword_27D85BDD8, type metadata accessor for BloodOxygenMetadataStatistics, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_2289171F8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = sub_22892EFA8();
    v7 = sub_2288BAA64(&qword_2813DEE20, MEMORY[0x277CCB6A8]);
    v8 = a3(a1, v6, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_228917294(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2289172FC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_228917364(uint64_t a1, uint64_t a2)
{
  sub_2289171F8(0, &qword_2813DECB8, MEMORY[0x277D83D00]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_22891740C()
{
  sub_228917100(319, &qword_27D85BDD8, type metadata accessor for BloodOxygenMetadataStatistics, MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_2289174BC(uint64_t a1@<X8>)
{
  v120 = a1;
  v150 = sub_22892DDC8();
  v1 = *(v150 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x28223BE20](v150);
  v133 = &v112 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v3);
  v132 = &v112 - v6;
  MEMORY[0x28223BE20](v5);
  v131 = &v112 - v7;
  v8 = sub_22892DEF8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v115 = &v112 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v114 = &v112 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v112 - v16;
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v112 - v19;
  v21 = MEMORY[0x28223BE20](v18);
  v130 = &v112 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v129 = &v112 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v128 = &v112 - v26;
  MEMORY[0x28223BE20](v25);
  v134 = &v112 - v27;
  sub_228918778(0, &qword_2813DFEE0, MEMORY[0x277CC9578]);
  v29 = *(*(v28 - 8) + 64);
  v30 = MEMORY[0x28223BE20](v28 - 8);
  v135 = &v112 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x28223BE20](v30);
  v117 = &v112 - v33;
  v34 = MEMORY[0x28223BE20](v32);
  v136 = &v112 - v35;
  v36 = MEMORY[0x28223BE20](v34);
  v127 = &v112 - v37;
  v38 = MEMORY[0x28223BE20](v36);
  v40 = &v112 - v39;
  v41 = MEMORY[0x28223BE20](v38);
  v126 = &v112 - v42;
  v43 = MEMORY[0x28223BE20](v41);
  v45 = &v112 - v44;
  MEMORY[0x28223BE20](v43);
  v47 = &v112 - v46;
  v48 = *(v9 + 56);
  v48(&v112 - v46, 1, 1, v8);
  v144 = v48;
  v145 = v9 + 56;
  v48(v45, 1, 1, v8);
  v49 = [v149 primarySleepPeriod];
  if (!v49)
  {
    v97 = MEMORY[0x277CC9578];
    sub_228918DE4(v45, &qword_2813DFEE0, MEMORY[0x277CC9578]);
    sub_228918DE4(v47, &qword_2813DFEE0, v97);
    (*(v1 + 56))(v120, 1, 1, v150);
    return;
  }

  v146 = v45;
  v147 = v47;
  v116 = v49;
  v50 = [v49 segments];
  sub_228918D2C();
  v51 = sub_22892F218();

  v118 = v9;
  v119 = v1;
  v113 = v20;
  v112 = v17;
  if (v51 >> 62)
  {
    v52 = sub_22892F588();
    v53 = v134;
    v54 = v135;
    if (!v52)
    {
      goto LABEL_35;
    }
  }

  else
  {
    v52 = *((v51 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v53 = v134;
    v54 = v135;
    if (!v52)
    {
      goto LABEL_35;
    }
  }

  if (v52 < 1)
  {
    __break(1u);
    return;
  }

  v55 = 0;
  v56 = v51 & 0xC000000000000001;
  v143 = (v118 + 48);
  v121 = (v118 + 32);
  v142 = (v118 + 8);
  v57 = &off_278609000;
  v124 = v51;
  v123 = v52;
  v122 = v51 & 0xC000000000000001;
  v125 = v40;
  v149 = (v119 + 8);
  do
  {
    if (v56)
    {
      v58 = MEMORY[0x22AAC3CC0](v55, v51);
    }

    else
    {
      v58 = *(v51 + 8 * v55 + 32);
    }

    v59 = v58;
    [v58 v57[489]];
    if (_HKCategoryValueSleepAnalysisIsAsleep())
    {
      sub_2288D3C38(v147, v40);
      v60 = *v143;
      v61 = (*v143)(v40, 1, v8);
      v141 = v60;
      if (v61 == 1)
      {
        v62 = [v59 dateInterval];
        v63 = v131;
        sub_22892DD68();

        sub_22892DD98();
        (*v149)(v63, v150);
        v64 = v60(v40, 1, v8);
        v65 = v121;
        if (v64 != 1)
        {
          sub_228918DE4(v40, &qword_2813DFEE0, MEMORY[0x277CC9578]);
        }
      }

      else
      {
        v65 = v121;
        (*v121)(v53, v40, v8);
      }

      v66 = [v59 dateInterval];
      v67 = v132;
      sub_22892DD68();

      v68 = v128;
      sub_22892DD98();
      v148 = *v149;
      v148(v67, v150);
      v137 = sub_2288CE514();
      v69 = sub_22892F028();
      v70 = MEMORY[0x277CC9578];
      v71 = v147;
      v72 = v59;
      sub_228918DE4(v147, &qword_2813DFEE0, MEMORY[0x277CC9578]);
      v73 = *v142;
      if (v69)
      {
        v74 = v53;
      }

      else
      {
        v74 = v68;
      }

      if (v69)
      {
        v75 = v68;
      }

      else
      {
        v75 = v53;
      }

      v140 = *v142;
      v73(v74, v8);
      v76 = *v65;
      v77 = v126;
      (*v65)(v126, v75, v8);
      v144(v77, 0, 1, v8);
      sub_228918D78(v77, v71, &qword_2813DFEE0, v70);
      v78 = v136;
      sub_2288D3C38(v146, v136);
      v79 = v141;
      v80 = v141(v78, 1, v8);
      v138 = v72;
      v139 = v76;
      if (v80 == 1)
      {
        v81 = [v72 dateInterval];
        v82 = v131;
        sub_22892DD68();

        v83 = v129;
        sub_22892DD78();
        v84 = v136;
        v148(v82, v150);
        v85 = v79(v84, 1, v8);
        v57 = &off_278609000;
        if (v85 != 1)
        {
          sub_228918DE4(v84, &qword_2813DFEE0, MEMORY[0x277CC9578]);
        }
      }

      else
      {
        v83 = v129;
        v76(v129, v78, v8);
        v57 = &off_278609000;
      }

      v86 = v138;
      v87 = [v138 dateInterval];
      v88 = v133;
      sub_22892DD68();

      v89 = v130;
      sub_22892DD78();
      v148(v88, v150);
      v90 = sub_22892F038();

      v91 = v83;
      v92 = MEMORY[0x277CC9578];
      v93 = v146;
      sub_228918DE4(v146, &qword_2813DFEE0, MEMORY[0x277CC9578]);
      if (v90)
      {
        v94 = v91;
      }

      else
      {
        v94 = v89;
      }

      if (v90)
      {
        v95 = v89;
      }

      else
      {
        v95 = v91;
      }

      v140(v94, v8);
      v96 = v127;
      v139(v127, v95, v8);
      v144(v96, 0, 1, v8);
      sub_228918D78(v96, v93, &qword_2813DFEE0, v92);
      v53 = v134;
      v54 = v135;
      v40 = v125;
      v51 = v124;
      v52 = v123;
      v56 = v122;
    }

    else
    {
    }

    ++v55;
  }

  while (v52 != v55);
LABEL_35:

  v98 = v117;
  sub_2288D3C38(v147, v117);
  v99 = v118;
  v100 = *(v118 + 48);
  if (v100(v98, 1, v8) == 1)
  {

    v101 = v120;
    v102 = v119;
LABEL_39:
    v107 = MEMORY[0x277CC9578];
    sub_228918DE4(v146, &qword_2813DFEE0, MEMORY[0x277CC9578]);
    sub_228918DE4(v147, &qword_2813DFEE0, v107);
    sub_228918DE4(v98, &qword_2813DFEE0, v107);
    (*(v102 + 56))(v101, 1, 1, v150);
    return;
  }

  v103 = *(v99 + 32);
  v104 = v113;
  v103(v113, v98, v8);
  sub_2288D3C38(v146, v54);
  v105 = v100(v54, 1, v8);
  v101 = v120;
  v106 = v54;
  v102 = v119;
  if (v105 == 1)
  {

    (*(v99 + 8))(v104, v8);
    v98 = v106;
    goto LABEL_39;
  }

  v108 = v112;
  v103(v112, v106, v8);
  v109 = *(v99 + 16);
  v109(v114, v104, v8);
  v109(v115, v108, v8);
  sub_22892DD88();

  v110 = *(v99 + 8);
  v110(v108, v8);
  v110(v104, v8);
  v111 = MEMORY[0x277CC9578];
  sub_228918DE4(v146, &qword_2813DFEE0, MEMORY[0x277CC9578]);
  sub_228918DE4(v147, &qword_2813DFEE0, v111);
  (*(v102 + 56))(v101, 0, 1, v150);
}

void sub_2289181B4(uint64_t a1@<X8>)
{
  v2 = v1;
  v40 = a1;
  v3 = sub_22892E538();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228918778(0, &qword_2813DFEF0, MEMORY[0x277CC88A8]);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v38 - v10;
  v12 = sub_22892E048();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = sub_22892EFA8();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228918778(0, &qword_2813DFEE0, MEMORY[0x277CC9578]);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v18 - 8);
  v22 = v38 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v24 = v38 - v23;
  v25 = [v1 summaryFilteredToPrimaryPeriod];
  if (v25)
  {
    v26 = v25;
    v39 = v3;
    [v25 sleepDuration];
    if (v27 <= COERCE_DOUBLE(1))
    {
      [v2 morningIndex];
      sub_22892EED8();
      v35 = [v2 calendar];
      sub_22892E018();

      v36 = sub_22892DDC8();
      (*(*(v36 - 8) + 56))(v11, 1, 1, v36);
      v37 = sub_22892DEF8();
      (*(*(v37 - 8) + 56))(v24, 1, 1, v37);
      (*(v4 + 104))(v7, *MEMORY[0x277D0FF70], v39);
      sub_22892E568();
    }

    else
    {
      sub_2289187CC(v26, v2, v24);
      [v2 morningIndex];
      v38[1] = v17;
      sub_22892EED8();
      v28 = [v2 calendar];
      sub_22892E018();

      v29 = [objc_opt_self() secondUnit];
      [v26 sleepDuration];
      v31 = [objc_opt_self() quantityWithUnit:v29 doubleValue:v30];

      sub_2289174BC(v11);
      sub_2288D3C38(v24, v22);
      (*(v4 + 104))(v7, *MEMORY[0x277D0FF78], v39);
      sub_22892E568();

      sub_228918DE4(v24, &qword_2813DFEE0, MEMORY[0x277CC9578]);
    }
  }

  else
  {
    [v1 morningIndex];
    sub_22892EED8();
    v32 = [v1 calendar];
    sub_22892E018();

    v33 = sub_22892DDC8();
    (*(*(v33 - 8) + 56))(v11, 1, 1, v33);
    v34 = sub_22892DEF8();
    (*(*(v34 - 8) + 56))(v24, 1, 1, v34);
    (*(v4 + 104))(v7, *MEMORY[0x277D0FF70], v3);
    sub_22892E568();
  }
}

void sub_228918778(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_22892F498();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_2289187CC@<X0>(void *a1@<X0>, void *a2@<X1>, char *a3@<X8>)
{
  v51 = a2;
  v56 = a3;
  v4 = sub_22892E048();
  v54 = *(v4 - 8);
  v55 = v4;
  v5 = *(v54 + 64);
  MEMORY[0x28223BE20](v4);
  v52 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = sub_22892EFA8();
  v50 = *(v53 - 8);
  v7 = *(v50 + 64);
  MEMORY[0x28223BE20](v53);
  v49 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22892DDC8();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228918778(0, &qword_2813DFEF0, MEMORY[0x277CC88A8]);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14 - 8);
  v18 = &v45 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v45 - v19;
  v21 = sub_22892DEF8();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  v24 = MEMORY[0x28223BE20](v21);
  v48 = &v45 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v24);
  v28 = &v45 - v27;
  MEMORY[0x28223BE20](v26);
  v30 = &v45 - v29;
  v31 = [a1 creationInterval];
  if (v31)
  {
    v32 = v31;
    sub_22892DD68();

    (*(v10 + 56))(v18, 0, 1, v9);
  }

  else
  {
    (*(v10 + 56))(v18, 1, 1, v9);
  }

  sub_228918D78(v18, v20, &qword_2813DFEF0, MEMORY[0x277CC88A8]);
  if ((*(v10 + 48))(v20, 1, v9) == 1)
  {
    sub_228918DE4(v20, &qword_2813DFEF0, MEMORY[0x277CC88A8]);
    v33 = 1;
    v34 = v56;
  }

  else
  {
    sub_22892DD78();
    v46 = *(v10 + 8);
    v46(v20, v9);
    v47 = *(v22 + 32);
    v47(v30, v28, v21);
    v35 = v51;
    [v51 morningIndex];
    v36 = v49;
    sub_22892EED8();
    v37 = [v35 calendar];
    v38 = v52;
    sub_22892E018();

    sub_22892EEC8();
    (*(v54 + 8))(v38, v55);
    (*(v50 + 8))(v36, v53);
    v39 = v48;
    sub_22892DD78();
    v46(v13, v9);
    sub_2288CE514();
    v40 = sub_22892F028();
    v41 = (v40 & 1) == 0;
    if (v40)
    {
      v42 = v30;
    }

    else
    {
      v42 = v39;
    }

    if (v41)
    {
      v43 = v30;
    }

    else
    {
      v43 = v39;
    }

    (*(v22 + 8))(v42, v21);
    v34 = v56;
    v47(v56, v43, v21);
    v33 = 0;
  }

  return (*(v22 + 56))(v34, v33, 1, v21);
}

unint64_t sub_228918D2C()
{
  result = qword_2813DEC00;
  if (!qword_2813DEC00)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2813DEC00);
  }

  return result;
}

uint64_t sub_228918D78(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t))
{
  sub_228918778(0, a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_228918DE4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_228918778(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_228918E40(void *a1, uint64_t a2, int a3)
{
  v4 = v3;
  LODWORD(v145) = a3;
  v147 = a1;
  sub_2288BB4E0();
  v123 = v6;
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6);
  v122 = &v117 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v117 = &v117 - v10;
  sub_2288B4B3C(0);
  v119 = v11;
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v120 = &v117 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v128 = sub_22892E828();
  v127 = *(v128 - 8);
  v14 = *(v127 + 64);
  v15 = MEMORY[0x28223BE20](v128);
  v121 = &v117 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v125 = &v117 - v17;
  v126 = sub_22892E858();
  v124 = *(v126 - 8);
  v18 = *(v124 + 8);
  v19 = MEMORY[0x28223BE20](v126);
  v118 = &v117 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v144 = &v117 - v21;
  v22 = sub_22892EFA8();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  v25 = MEMORY[0x28223BE20](v22);
  v133 = &v117 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v25);
  v135 = &v117 - v28;
  v29 = MEMORY[0x28223BE20](v27);
  v134 = &v117 - v30;
  v31 = MEMORY[0x28223BE20](v29);
  v137 = &v117 - v32;
  MEMORY[0x28223BE20](v31);
  v146 = &v117 - v33;
  v34 = sub_22892E7F8();
  v142 = *(v34 - 8);
  v143 = v34;
  v35 = *(v142 + 64);
  v36 = MEMORY[0x28223BE20](v34);
  v132 = &v117 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36);
  v140 = &v117 - v38;
  v141 = sub_22892E7D8();
  v139 = *(v141 - 8);
  v39 = *(v139 + 64);
  v40 = MEMORY[0x28223BE20](v141);
  v129 = &v117 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v40);
  v138 = &v117 - v42;
  sub_2288BF284(0);
  v44 = *(*(v43 - 8) + 64);
  v45 = MEMORY[0x28223BE20](v43 - 8);
  v131 = &v117 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = MEMORY[0x28223BE20](v45);
  v49 = &v117 - v48;
  v50 = MEMORY[0x28223BE20](v47);
  v52 = &v117 - v51;
  MEMORY[0x28223BE20](v50);
  v54 = &v117 - v53;
  v55 = OBJC_IVAR____TtC19HealthBalanceDaemon22EWMABaselineCalculator_firstDayWithData;
  swift_beginAccess();
  sub_2288C33E4(v4 + v55, v54, sub_2288BF284);
  v130 = *(v23 + 48);
  v56 = v130(v54, 1, v22);
  v57 = v54;
  v58 = a2;
  sub_22891A3A0(v57);
  if (v56 == 1 && (v145 & 1) == 0)
  {
    (*(v23 + 16))(v52, a2, v22);
    (*(v23 + 56))(v52, 0, 1, v22);
    swift_beginAccess();
    sub_2288EEC4C(v52, v4 + v55);
    swift_endAccess();
  }

  v59 = OBJC_IVAR____TtC19HealthBalanceDaemon22EWMABaselineCalculator_lastDayIndex;
  v60 = (v23 + 16);
  v145 = *(v23 + 16);
  v145(v52, v58, v22);
  (*(v23 + 56))(v52, 0, 1, v22);
  swift_beginAccess();
  sub_2288EEC4C(v52, v4 + v59);
  swift_endAccess();
  [v147 _value];
  v62 = v61;
  v63 = v4[7];
  v64 = *(v63 + 16);
  v65 = 0.0;
  v66 = 0.0;
  if (v64)
  {
    v66 = *(v63 + 8 * v64 + 24) * 0.931034483;
  }

  [v147 _value];
  v68 = v67;
  v69 = v4[8];
  v70 = *(v69 + 16);
  if (v70)
  {
    v65 = *(v69 + 8 * v70 + 24) * 0.75;
  }

  v136 = v23;
  v71 = v62 * 0.0689655172;
  v72 = v4[7];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4[7] = v72;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v72 = sub_2288D6184(0, *(v72 + 2) + 1, 1, v72);
    v4[7] = v72;
  }

  v74 = v71 + v66;
  v76 = *(v72 + 2);
  v75 = *(v72 + 3);
  if (v76 >= v75 >> 1)
  {
    v72 = sub_2288D6184((v75 > 1), v76 + 1, 1, v72);
  }

  v77 = v68 * 0.25;
  *(v72 + 2) = v76 + 1;
  *&v72[8 * v76 + 32] = v74;
  v4[7] = v72;
  v78 = v4[8];
  v79 = swift_isUniquelyReferenced_nonNull_native();
  v4[8] = v78;
  if ((v79 & 1) == 0)
  {
    v78 = sub_2288D6184(0, *(v78 + 2) + 1, 1, v78);
    v4[8] = v78;
  }

  v80 = v77 + v65;
  v82 = *(v78 + 2);
  v81 = *(v78 + 3);
  if (v82 >= v81 >> 1)
  {
    v78 = sub_2288D6184((v81 > 1), v82 + 1, 1, v78);
  }

  *(v78 + 2) = v82 + 1;
  *&v78[8 * v82 + 32] = v80;
  v4[8] = v78;
  v83 = [v147 _unit];
  v84 = v4[8];
  v85 = *(v84 + 16);
  if (v85)
  {
    v86 = *(v84 + 8 * v85 + 24);
  }

  else
  {
    v86 = 0.0;
  }

  v87 = [objc_opt_self() quantityWithUnit:v83 doubleValue:v86];

  v88 = v138;
  sub_22892E7C8();
  v145(v146, v58, v22);
  sub_2288C33E4(v4 + v55, v49, sub_2288BF284);
  v89 = v4[7];
  v90 = *(v89 + 16);
  if (v90)
  {
    v91 = *(v89 + 8 * v90 + 24);
  }

  v92 = v136;
  v93 = v140;
  sub_22892E7E8();
  (*(v139 + 16))(v129, v88, v141);
  (*(v142 + 16))(v132, v93, v143);
  sub_22892E848();
  v94 = v145;
  v145(v137, v58, v22);
  v95 = v131;
  sub_2288C33E4(v4 + v55, v131, sub_2288BF284);
  v96 = v130;
  if (v130(v95, 1, v22) == 1)
  {
    v97 = v134;
    v94(v134, v58, v22);
    v98 = v96(v95, 1, v22);
    v99 = v135;
    if (v98 != 1)
    {
      sub_22891A3A0(v95);
    }
  }

  else
  {
    v97 = v134;
    (*(v92 + 32))(v134, v95, v22);
    v99 = v135;
  }

  v100 = v133;
  sub_22892EED8();
  sub_22892EEF8();
  v101 = *(v92 + 8);
  v101(v100, v22);
  sub_2288BAAAC(&qword_2813DEE20, MEMORY[0x277CCB6A8]);
  if ((sub_22892F048() & 1) == 0)
  {
    __break(1u);
    goto LABEL_29;
  }

  v102 = *(v92 + 32);
  v147 = v4;
  v103 = v117;
  v102(v117, v97, v22);
  v104 = v123;
  v102((v103 + *(v123 + 48)), v99, v22);
  v105 = v122;
  sub_2288C33E4(v103, v122, sub_2288BB4E0);
  v106 = *(v104 + 48);
  v107 = v120;
  v102(v120, v105, v22);
  v101((v105 + v106), v22);
  sub_22891A3FC(v103, v105);
  v102(&v107[*(v119 + 36)], (v105 + *(v104 + 48)), v22);
  v108 = v147;
  v109 = v105;
  v60 = v125;
  v110 = v144;
  v101(v109, v22);
  v97 = v124;
  v101 = v126;
  (*(v124 + 2))(v118, v110, v126);
  v111 = v108[5];
  v112 = *(v108 + 48);
  sub_22892E818();
  v58 = v127;
  v92 = v128;
  (*(v127 + 16))(v121, v60, v128);
  sub_2288C351C();
  v114 = objc_allocWithZone(v113);
  sub_22892EE58();
  v115 = swift_beginAccess();
  MEMORY[0x22AAC3860](v115);
  if (*((v108[9] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v108[9] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
LABEL_29:
    sub_22892F228();
    v110 = v144;
  }

  sub_22892F258();
  swift_endAccess();
  (*(v58 + 8))(v60, v92);
  (*(v97 + 1))(v110, v101);
  (*(v142 + 8))(v140, v143);
  return (*(v139 + 8))(v138, v141);
}

uint64_t sub_228919C44(uint64_t *a1, uint64_t a2, void (*a3)(char *, uint64_t), uint64_t a4)
{
  v41 = a4;
  v43 = a3;
  v44 = a2;
  sub_2288BF284(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v42 = v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22892EFA8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v39 = v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = v38 - v13;
  v15 = sub_22892E828();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = v38 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *a1;
  sub_22892EE68();
  sub_22892E808();
  v21 = *(v16 + 8);
  v21(v19, v15);
  LOBYTE(a1) = sub_22892EEE8();
  v40 = v9;
  v22 = v9 + 8;
  v23 = *(v9 + 8);
  v44 = v8;
  v24 = v8;
  v25 = v22;
  v23(v14, v24);
  if (a1)
  {
    goto LABEL_3;
  }

  v38[2] = v20;
  sub_22892EE68();
  sub_22892E808();
  v21(v19, v15);
  v26 = sub_2288BAAAC(&qword_2813DEE20, MEMORY[0x277CCB6A8]);
  v27 = v44;
  v38[1] = v26;
  v28 = sub_22892F018();
  v43 = v23;
  v23(v14, v27);
  if (v28)
  {
LABEL_3:
    v29 = 0;
  }

  else
  {
    v38[0] = v25;
    v31 = OBJC_IVAR____TtC19HealthBalanceDaemon22EWMABaselineCalculator_firstDayWithData;
    v32 = v41;
    swift_beginAccess();
    v33 = v32 + v31;
    v34 = v40;
    v35 = v42;
    sub_2288C33E4(v33, v42, sub_2288BF284);
    if ((*(v34 + 48))(v35, 1, v27) == 1)
    {
      sub_22891A3A0(v35);
      v29 = 0;
    }

    else
    {
      v36 = v39;
      (*(v34 + 32))(v39, v35, v27);
      sub_22892EE68();
      sub_22892E808();
      v21(v19, v15);
      v29 = sub_22892F038();
      v37 = v43;
      v43(v14, v27);
      v37(v36, v27);
    }
  }

  return v29 & 1;
}

uint64_t sub_22891A034()
{
  v1 = v0[7];

  v2 = v0[8];

  v3 = v0[9];

  sub_22891A3A0(v0 + OBJC_IVAR____TtC19HealthBalanceDaemon22EWMABaselineCalculator_firstDayWithData);
  sub_22891A3A0(v0 + OBJC_IVAR____TtC19HealthBalanceDaemon22EWMABaselineCalculator_lastDayIndex);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for EWMABaselineCalculator()
{
  result = qword_27D85BE30;
  if (!qword_27D85BE30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_22891A114()
{
  sub_2288BF284(319);
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t sub_22891A1D4@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t *a3@<X8>)
{
  v7 = *(v3 + 48);
  v8 = *(v3 + 52);
  v9 = swift_allocObject();
  *(v9 + 16) = 14;
  v10 = MEMORY[0x277D84F90];
  *(v9 + 24) = xmmword_228932AC0;
  *(v9 + 56) = v10;
  *(v9 + 64) = v10;
  *(v9 + 72) = v10;
  v11 = OBJC_IVAR____TtC19HealthBalanceDaemon22EWMABaselineCalculator_firstDayWithData;
  v12 = sub_22892EFA8();
  v13 = *(*(v12 - 8) + 56);
  v13(v9 + v11, 1, 1, v12);
  result = (v13)(v9 + OBJC_IVAR____TtC19HealthBalanceDaemon22EWMABaselineCalculator_lastDayIndex, 1, 1, v12);
  *(v9 + 40) = a1;
  *(v9 + 48) = a2 & 1;
  *a3 = v9;
  return result;
}

uint64_t sub_22891A2F0(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  swift_beginAccess();
  v6 = *(v5 + 72);
  v8[2] = a1;
  v8[3] = a2;
  v8[4] = v5;

  return sub_2288D5E2C(sub_22891A37C, v8, v6);
}

uint64_t sub_22891A3A0(uint64_t a1)
{
  sub_2288BF284(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22891A3FC(uint64_t a1, uint64_t a2)
{
  sub_2288BB4E0();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_22891A460(uint64_t a1)
{
  v1 = *(a1 + 80);
  v2 = *(*(*(a1 + 88) + 8) + 8);
  v3 = type metadata accessor for SleepingSampleBaselineCalculator();
  if (v4 <= 0x3F)
  {
    v7 = *(v3 - 8) + 64;
    sub_2288FC574(319);
    if (v6 <= 0x3F)
    {
      v8 = *(v5 - 8) + 64;
      swift_initClassMetadata2();
    }
  }
}

uint64_t sub_22891A540()
{
  v1 = *(*v0 + 96);
  v2 = *(*v0 + 80);
  v3 = *(*(*(*v0 + 88) + 8) + 8);
  v4 = type metadata accessor for SleepingSampleBaselineCalculator();
  (*(*(v4 - 8) + 8))(v0 + v1, v4);
  v5 = *(v0 + *(*v0 + 104));
  swift_unknownObjectRelease();
  sub_22891B844(v0 + *(*v0 + 112), sub_2288FC574);
  return v0;
}

uint64_t sub_22891A62C()
{
  sub_22891A540();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

BOOL sub_22891A69C(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2;
  v5 = *(a2 + 8);
  if (*a1)
  {
    if (v4)
    {
      sub_2288BC0FC(0, &qword_27D85BE40, 0x277CCD800);
      v6 = v4;
      v7 = v2;
      v8 = sub_22892F468();

      if (v8)
      {
        return v3 == v5;
      }
    }
  }

  else if (!v4)
  {
    return v3 == v5;
  }

  return 0;
}

uint64_t sub_22891A730(uint64_t a1)
{
  v45 = a1;
  v2 = sub_22892EEA8();
  v40 = *(v2 - 8);
  v41 = v2;
  v3 = *(v40 + 64);
  MEMORY[0x28223BE20](v2);
  v39 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_22892EEB8();
  v43 = *(v5 - 8);
  v44 = v5;
  v6 = *(v43 + 64);
  MEMORY[0x28223BE20](v5);
  v42 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22892DEF8();
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  MEMORY[0x28223BE20](v10);
  v11 = sub_22892DDC8();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(v1 + 24);
  v16 = *(v1 + 32);
  v18 = v17;
  if (v17 == 1)
  {
    v18 = sub_22891AB50();
    v20 = v19;
    v21 = *(v1 + 24);
    v22 = *(v1 + 32);
    *(v1 + 24) = v18;
    *(v1 + 32) = v20;
    sub_2288C4298(v21);
    if (v18 == 1)
    {
      return 0;
    }

    v23 = v18;
  }

  if (v18)
  {
    sub_22891B834(v17);
    v24 = v18;
    v25 = [v24 startDate];
    sub_22892DEC8();

    v26 = [v24 endDate];
    sub_22892DEC8();

    sub_22892DD88();
    LOBYTE(v26) = sub_22892DD28();
    (*(v12 + 8))(v15, v11);
    if ((v26 & 1) == 0)
    {
      goto LABEL_11;
    }

    v27 = v42;
    sub_22892EE88();
    v29 = v43;
    v28 = v44;
    v30 = (*(v43 + 88))(v27, v44);
    if (v30 == *MEMORY[0x277CCB688])
    {
      (*(v29 + 96))(v27, v28);
      v31 = v39;
      v32 = v40;
      v33 = v41;
      (*(v40 + 32))(v39, v27, v41);
      v34 = sub_22892EE98();

      (*(v32 + 8))(v31, v33);
      return v34;
    }

    if (v30 == *MEMORY[0x277CCB690] || v30 == *MEMORY[0x277CCB6A0])
    {
LABEL_11:
    }

    else
    {
      v36 = *MEMORY[0x277CCB698];
      v37 = v30;

      if (v37 != v36)
      {
        (*(v29 + 8))(v27, v28);
      }
    }
  }

  else
  {
    sub_22891B834(v17);
  }

  return 0;
}

void *sub_22891AB50()
{
  v1 = v0;
  v2 = *v0;
  v3 = sub_22892EDE8();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  sub_2288BC0FC(0, &qword_2813DEC40, 0x277CCD830);
  v5 = MEMORY[0x22AAC3A10](*MEMORY[0x277CCC938]);
  sub_22891B578(v5, v1[2], 0);
  v7 = v6;

  result = v7;
  if (v7)
  {
    sub_22891AE40(v7);
    return v7;
  }

  return result;
}

id sub_22891AE40(void *a1)
{
  v60[1] = *MEMORY[0x277D85DE8];
  v2 = sub_22892DEF8();
  v54 = *(v2 - 8);
  v55 = v2;
  v3 = *(v54 + 64);
  v4 = MEMORY[0x28223BE20](v2);
  MEMORY[0x28223BE20](v4);
  v6 = v49 - v5;
  v7 = sub_22892DDC8();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = v49 - v13;
  v15 = sub_2288BC0FC(0, &qword_2813DEC40, 0x277CCD830);
  v52 = *MEMORY[0x277CCC938];
  v53 = v15;
  v16 = MEMORY[0x22AAC3A10]();
  v17 = [v16 _rollingBaselineConfiguration];

  if (!v17)
  {
    __break(1u);
  }

  v18 = [a1 startDate];
  sub_22892DEC8();

  v19 = [a1 endDate];
  sub_22892DEC8();

  sub_22892DD88();
  v57 = v14;
  sub_22892F448();

  v20 = *(v8 + 8);
  v58 = v8 + 8;
  v20(v12, v7);
  v21 = [a1 sourceRevision];
  v22 = [v21 source];

  v23 = *(v59 + 16);
  v24 = [v23 sourceManager];
  v25 = [v22 bundleIdentifier];
  if (!v25)
  {
    sub_22892F0C8();
    v25 = sub_22892F098();
  }

  v60[0] = 0;
  v26 = [v24 allSourcesForBundleIdentifier:v25 error:v60];

  v27 = v60[0];
  if (v26)
  {
    v50 = v22;
    v51 = v20;
    v59 = v7;
    v49[3] = sub_2288BC0FC(0, &qword_27D85BE48, 0x277D10878);
    v49[2] = sub_22891B510();
    v49[1] = sub_22892F2A8();
    v28 = v27;

    v52 = MEMORY[0x22AAC3A10](v52);
    sub_22891B7DC(0, &qword_2813DE950, MEMORY[0x277D84560]);
    v29 = swift_allocObject();
    v53 = v23;
    v30 = v29;
    *(v29 + 16) = xmmword_228931EA0;
    v31 = v57;
    sub_22892DD98();
    v32 = sub_22892DE58();
    v33 = v55;
    v25 = (v54 + 8);
    v34 = *(v54 + 8);
    v34(v6, v55);
    v35 = HDSampleEntityPredicateForStartDate();

    v36 = sub_2288BC0FC(0, &qword_2813DEC18, 0x277D10B70);
    v30[7] = v36;
    v30[4] = v35;
    sub_22892DD78();
    v37 = sub_22892DE58();
    v34(v6, v33);
    v38 = HDSampleEntityPredicateForStartDate();

    v30[11] = v36;
    v30[8] = v38;
    v39 = v52;
    v40 = sub_22892F298();

    v41 = HDDataEntityPredicateForSourceEntitySet();

    v30[15] = v36;
    v30[12] = v41;
    v42 = sub_22892F208();

    v43 = [objc_opt_self() predicateMatchingAllPredicates_];

    v44 = v56;
    v45 = sub_22891B70C(v39, v53, v43);
    if (!v44)
    {
      v25 = v45;
    }

    v51(v31, v59);
  }

  else
  {
    v46 = v60[0];
    sub_22892DE38();

    swift_willThrow();
    v20(v57, v7);
  }

  v47 = *MEMORY[0x277D85DE8];
  return v25;
}

uint64_t sub_22891B454(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_22891B4B0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

unint64_t sub_22891B510()
{
  result = qword_27D85BE50;
  if (!qword_27D85BE50)
  {
    sub_2288BC0FC(255, &qword_27D85BE48, 0x277D10878);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D85BE50);
  }

  return result;
}

void sub_22891B578(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v15 = *MEMORY[0x277D85DE8];
  sub_2288BC0FC(0, &qword_27D85BDF8, 0x277D10810);
  *&v11 = 0;
  v6 = [swift_getObjCClassFromMetadata() mostRecentSampleWithType:a1 profile:a2 encodingOptions:0 predicate:a3 anchor:0 error:&v11];
  v7 = v11;
  if (v6)
  {
    v8 = v11;
    sub_22892F4F8();
    swift_unknownObjectRelease();
  }

  else
  {
    v11 = 0u;
    v12 = 0u;
    v9 = v7;
  }

  v13 = v11;
  v14 = v12;
  if (v7)
  {
    if (!*(&v14 + 1))
    {
      swift_willThrow();
      sub_2288DB2A4(&v13);

      goto LABEL_12;
    }
  }

  v11 = v13;
  v12 = v14;
  if (*(&v14 + 1))
  {
    sub_2288BC0FC(0, &qword_27D85BE40, 0x277CCD800);
    swift_dynamicCast();
  }

  else
  {
    sub_2288DB2A4(&v11);
  }

LABEL_12:
  v10 = *MEMORY[0x277D85DE8];
}

id sub_22891B70C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v12[1] = *MEMORY[0x277D85DE8];
  sub_2288BC0FC(0, &qword_27D85BDF8, 0x277D10810);
  v12[0] = 0;
  result = [swift_getObjCClassFromMetadata() countOfSamplesWithType:a1 profile:a2 matchingPredicate:a3 withError:v12];
  v7 = v12[0];
  if (v12[0])
  {
    v8 = result == 0;
  }

  else
  {
    v8 = 0;
  }

  if (v8)
  {
    v9 = result;
    swift_willThrow();
    v10 = v7;
    result = v9;
  }

  v11 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_22891B7DC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, uint64_t))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x277D84F70] + 8);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

id sub_22891B834(id result)
{
  if (result != 1)
  {
    return result;
  }

  return result;
}

uint64_t sub_22891B844(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_22891B8A4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v85 = a2;
  v87[1] = *MEMORY[0x277D85DE8];
  v3 = sub_22892EDE8();
  v84 = *(v3 - 8);
  v4 = *(v84 + 64);
  v5 = MEMORY[0x28223BE20](v3);
  v83 = &v75 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v75 - v7;
  v9 = sub_22892DFA8();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v75 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v75 - v15;
  sub_22891C618(0, &qword_2813DFEC8, MEMORY[0x277CC9698], MEMORY[0x277D83D88]);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v17 - 8);
  v21 = &v75 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v23 = &v75 - v22;
  v82 = *MEMORY[0x277CCC0F8];
  v86 = [a1 featureAvailabilityProvidingForFeatureIdentifier_];
  if (!v86)
  {
    goto LABEL_6;
  }

  v76 = *MEMORY[0x277CCC0B0];
  v81 = [a1 featureAvailabilityProvidingForFeatureIdentifier_];
  if (!v81)
  {
    swift_unknownObjectRelease();
LABEL_6:
    sub_22892EDC8();
    v29 = sub_22892EDD8();
    v30 = sub_22892F388();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v87[0] = v32;
      *v31 = 136446210;
      *(v31 + 4) = sub_2288B748C(0xD000000000000023, 0x8000000228935420, v87);
      _os_log_impl(&dword_2288B2000, v29, v30, "[%{public}s] Unable to find feature availability providing", v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v32);
      MEMORY[0x22AAC47E0](v32, -1, -1);
      MEMORY[0x22AAC47E0](v31, -1, -1);
    }

    (*(v84 + 8))(v8, v3);
    goto LABEL_9;
  }

  v80 = v3;
  sub_22892DF98();
  sub_22892DF88();
  v78 = *(v10 + 8);
  v79 = v10 + 8;
  v78(v16, v9);
  v24 = sub_22892DF78();
  v25 = *(v24 - 8);
  v77 = *(v25 + 48);
  if (v77(v23, 1, v24) == 1)
  {
    sub_22891C58C(v23);
    v26 = a1;
    v27 = v86;
    swift_unknownObjectRetain();
    v28 = 0;
  }

  else
  {
    sub_22892DF68();
    (*(v25 + 8))(v23, v24);
    v38 = a1;
    v27 = v86;
    swift_unknownObjectRetain();
    v28 = sub_22892F098();
  }

  v39 = [objc_allocWithZone(MEMORY[0x277CCD460]) initWithFeatureAvailabilityProviding:v27 healthDataSource:a1 currentCountryCode:v28];
  swift_unknownObjectRelease();

  sub_22892DF98();
  sub_22892DF88();
  v78(v14, v9);
  if (v77(v21, 1, v24) == 1)
  {
    sub_22891C58C(v21);
    v40 = a1;
    v41 = v81;
    swift_unknownObjectRetain();
    v42 = 0;
  }

  else
  {
    sub_22892DF68();
    (*(v25 + 8))(v21, v24);
    v43 = a1;
    v41 = v81;
    swift_unknownObjectRetain();
    v42 = sub_22892F098();
  }

  v44 = v80;
  v45 = v83;
  v46 = [objc_allocWithZone(MEMORY[0x277CCD460]) initWithFeatureAvailabilityProviding:v41 healthDataSource:a1 currentCountryCode:v42];
  swift_unknownObjectRelease();

  v87[0] = 0;
  v47 = v39;
  v48 = [v39 featureStatusWithError_];
  v49 = v87[0];
  if (v48)
  {
    v50 = v48;
    v87[0] = 0;
    v51 = v49;
    v52 = [v46 featureStatusWithError_];
    v53 = v87[0];
    if (v52)
    {
      v54 = v52;
      sub_22891C618(0, &qword_27D85BE68, sub_22891C67C, MEMORY[0x277D84560]);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_2289315C0;
      v56 = v82;
      *(inited + 32) = v82;
      v57 = v76;
      *(inited + 40) = v50;
      *(inited + 48) = v57;
      *(inited + 56) = v54;
      v58 = v53;
      v59 = v56;
      v60 = v50;
      v61 = v57;
      v62 = v54;
      sub_22891CD08(inited);
      swift_setDeallocating();
      sub_22891C67C();
      swift_arrayDestroy();
      v34 = v85;
      sub_22892EB28();

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      v33 = 0;
      goto LABEL_10;
    }

    v65 = v87[0];
    v64 = sub_22892DE38();

    swift_willThrow();
  }

  else
  {
    v63 = v87[0];
    v64 = sub_22892DE38();

    swift_willThrow();
  }

  sub_22892EDC8();
  v66 = v64;
  v67 = sub_22892EDD8();
  v68 = sub_22892F378();

  if (os_log_type_enabled(v67, v68))
  {
    v69 = swift_slowAlloc();
    v70 = swift_slowAlloc();
    v71 = v47;
    v72 = swift_slowAlloc();
    v87[0] = v72;
    *v69 = 136446466;
    *(v69 + 4) = sub_2288B748C(0xD000000000000023, 0x8000000228935420, v87);
    *(v69 + 12) = 2114;
    v73 = v64;
    v74 = _swift_stdlib_bridgeErrorToNSError();
    *(v69 + 14) = v74;
    *v70 = v74;
    _os_log_impl(&dword_2288B2000, v67, v68, "[%{public}s] Error retrieving feature status: %{public}@", v69, 0x16u);
    sub_2288DDB10(v70);
    MEMORY[0x22AAC47E0](v70, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v72);
    MEMORY[0x22AAC47E0](v72, -1, -1);
    MEMORY[0x22AAC47E0](v69, -1, -1);

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    (*(v84 + 8))(v45, v80);
  }

  else
  {

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    (*(v84 + 8))(v45, v44);
  }

LABEL_9:
  v33 = 1;
  v34 = v85;
LABEL_10:
  v35 = sub_22892EB38();
  result = (*(*(v35 - 8) + 56))(v34, v33, 1, v35);
  v37 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_22891C1E4(uint64_t a1@<X8>)
{
  v2 = sub_22892E7B8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = 0;
  v7 = sub_22891C544(&qword_27D85BE58, MEMORY[0x277D0FFE8]);
  sub_22892F938();
  v8 = *MEMORY[0x277CCC0F8];
  v9 = sub_22892EB48();
  v10 = MEMORY[0x277CCBE08];
  v11 = &off_278609000;
  if (v9)
  {
    v12 = v9;
    v13 = [v9 objectForKeyedSubscript_];
    v14 = [v13 areAllRequirementsSatisfied];

    if (v14)
    {
      sub_22892E7A8();
      sub_22891C544(&qword_27D85BE60, MEMORY[0x277D0FFE8]);
      sub_22892F1E8();
      v22 = v7;
      v15 = *(v3 + 8);
      v15(a1, v2);
      sub_22892F1E8();
      v25 = v23 | v24;
      sub_22892F938();

      v15(v6, v2);
      v11 = &off_278609000;
    }

    else
    {
    }

    v10 = MEMORY[0x277CCBE08];
  }

  v16 = *MEMORY[0x277CCC0B0];
  v17 = sub_22892EB48();
  if (v17)
  {
    v18 = v17;
    v19 = [v17 objectForKeyedSubscript_];
    v20 = [v19 v11[497]];

    if (v20)
    {
      sub_22892E798();
      sub_22891C544(&qword_27D85BE60, MEMORY[0x277D0FFE8]);
      sub_22892F1E8();
      v21 = *(v3 + 8);
      v21(a1, v2);
      sub_22892F1E8();
      v25 = v23 | v24;
      sub_22892F938();

      v21(v6, v2);
    }

    else
    {
    }
  }
}

uint64_t sub_22891C544(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_22891C58C(uint64_t a1)
{
  sub_22891C618(0, &qword_2813DFEC8, MEMORY[0x277CC9698], MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_22891C618(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_22891C67C()
{
  if (!qword_27D85BE70)
  {
    type metadata accessor for HKFeatureIdentifier(255);
    sub_2288BC0FC(255, &qword_27D85BE78, 0x277CCD458);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27D85BE70);
    }
  }
}

unint64_t sub_22891C6FC(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_22892F458();

  return sub_22891C88C(a1, v5);
}

unint64_t sub_22891C740(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_22892F8A8();
  sub_22892F0F8();
  v6 = sub_22892F8C8();

  return sub_22891C960(a1, a2, v6);
}

unint64_t sub_22891C7B8(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_22892F5B8();

  return sub_22891CA18(a1, v5);
}

unint64_t sub_22891C7FC(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_22892F0C8();
  sub_22892F8A8();
  sub_22892F0F8();
  v4 = sub_22892F8C8();

  return sub_22891CAE0(a1, v4);
}

unint64_t sub_22891C88C(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    sub_2288BC0FC(0, &qword_2813DEC58, 0x277CCD8D8);
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_22892F468();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_22891C960(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_22892F818())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_22891CA18(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_22891D1FC(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x22AAC3C30](v9, a1);
      sub_22891D258(v9);
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

unint64_t sub_22891CAE0(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_22892F0C8();
      v9 = v8;
      if (v7 == sub_22892F0C8() && v9 == v10)
      {
        break;
      }

      v12 = sub_22892F818();

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

unint64_t sub_22891CBE4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_228908640();
    v3 = sub_22892F788();
    v4 = a1 + 32;

    while (1)
    {
      sub_22891D5EC(v4, &v13, sub_22890CE94);
      v5 = v13;
      v6 = v14;
      result = sub_22891C740(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_2288D3C20(&v15, v3[7] + 40 * result);
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 56;
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

unint64_t sub_22891CD08(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_22891CDF4();
    v3 = sub_22892F788();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      v7 = v5;
      result = sub_22891C7FC(v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v7;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
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

void sub_22891CDF4()
{
  if (!qword_27D85BE80)
  {
    type metadata accessor for HKFeatureIdentifier(255);
    sub_2288BC0FC(255, &qword_27D85BE78, 0x277CCD458);
    sub_22891C544(&qword_27D85B150, type metadata accessor for HKFeatureIdentifier);
    v0 = sub_22892F798();
    if (!v1)
    {
      atomic_store(v0, &qword_27D85BE80);
    }
  }
}

unint64_t sub_22891CEB0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_2288DDC70(0, &qword_2813DEA50);
    v3 = sub_22892F788();
    v4 = a1 + 32;

    while (1)
    {
      sub_22891D12C(v4, &v13, &qword_2813DED38);
      v5 = v13;
      v6 = v14;
      result = sub_22891C740(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_2288DDB00(&v15, (v3[7] + 32 * result));
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

unint64_t sub_22891CFE8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_2288DDC70(0, &qword_27D85B508);
    v3 = sub_22892F788();
    v4 = a1 + 32;

    while (1)
    {
      sub_22891D12C(v4, v13, &qword_27D85B528);
      result = sub_22891C7B8(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_2288DDB00(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
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

uint64_t sub_22891D12C(uint64_t a1, uint64_t a2, unint64_t *a3)
{
  sub_22891D198(0, a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_22891D198(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v4)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

unint64_t sub_22891D2AC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_22891D654();
    v3 = sub_22892F788();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);

      result = sub_22891C7FC(v6);
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

unint64_t sub_22891D398(uint64_t a1)
{
  sub_22891D56C();
  v3 = v2;
  v4 = *(v2 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v2);
  v7 = (&v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(a1 + 16);
  if (v8)
  {
    sub_2289086A8();
    v9 = sub_22892F788();
    v10 = *(v3 + 48);
    v11 = a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v12 = *(v4 + 72);

    while (1)
    {
      sub_22891D5EC(v11, v7, sub_22891D56C);
      v13 = *v7;
      result = sub_22891C6FC(*v7);
      if (v15)
      {
        break;
      }

      v16 = result;
      *(v9 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v9[6] + 8 * result) = v13;
      v17 = v9[7];
      v18 = sub_22892DDC8();
      result = (*(*(v18 - 8) + 32))(v17 + *(*(v18 - 8) + 72) * v16, v7 + v10, v18);
      v19 = v9[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v9[2] = v21;
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

void sub_22891D56C()
{
  if (!qword_2813DEC48)
  {
    sub_2288BC0FC(255, &qword_2813DEC58, 0x277CCD8D8);
    sub_22892DDC8();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_2813DEC48);
    }
  }
}

uint64_t sub_22891D5EC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_22891D654()
{
  if (!qword_2813DEA40)
  {
    type metadata accessor for HKFeatureAvailabilityContext(255);
    sub_22891C618(255, &qword_2813DED00, sub_22891D730, MEMORY[0x277D83940]);
    sub_22891C544(&qword_2813DEBE0, type metadata accessor for HKFeatureAvailabilityContext);
    v0 = sub_22892F798();
    if (!v1)
    {
      atomic_store(v0, &qword_2813DEA40);
    }
  }
}

unint64_t sub_22891D730()
{
  result = qword_2813DEB98;
  if (!qword_2813DEB98)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_2813DEB98);
  }

  return result;
}

uint64_t ObserverSet.__allocating_init(name:loggingCategory:)(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = swift_allocObject();
  ObserverSet.init(name:loggingCategory:)(a1, a2, a3);
  return v6;
}

void ObserverSet.notifyObservers(_:)(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = v2[2];
  v7 = swift_allocObject();
  v7[2] = *(v5 + 80);
  v7[3] = a1;
  v7[4] = a2;
  v9[4] = sub_22891DC34;
  v9[5] = v7;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 1107296256;
  v9[2] = sub_2288E19DC;
  v9[3] = &block_descriptor_10;
  v8 = _Block_copy(v9);

  [v6 notifyObservers_];
  _Block_release(v8);
}

uint64_t ObserverSet.init(name:loggingCategory:)(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = objc_allocWithZone(MEMORY[0x277CCD738]);
  v6 = sub_22892F098();

  v7 = [v5 initWithName:v6 loggingCategory:a3];

  *(v3 + 16) = v7;
  return v3;
}

uint64_t sub_22891D9AC(uint64_t a1)
{
  swift_unknownObjectRetain();
  swift_getObjectType();
  v2 = swift_conformsToProtocol2();
  if (v2 && a1)
  {
    v3 = v2;
    ObjectType = swift_getObjectType();
    (*(v3 + 16))(ObjectType, v3);
  }

  return swift_unknownObjectRelease();
}

uint64_t sub_22891DA2C(uint64_t a1, void (*a2)(char *), uint64_t a3, uint64_t a4)
{
  v7 = sub_22892F498();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = v20 - v11;
  v13 = *(a4 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v10);
  v16 = v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20[1] = a1;
  swift_unknownObjectRetain();
  v17 = swift_dynamicCast();
  v18 = *(v13 + 56);
  if (v17)
  {
    v18(v12, 0, 1, a4);
    (*(v13 + 32))(v16, v12, a4);
    a2(v16);
    return (*(v13 + 8))(v16, a4);
  }

  else
  {
    v18(v12, 1, 1, a4);
    return (*(v8 + 8))(v12, v7);
  }
}

uint64_t block_copy_helper_10(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t ObserverSet.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

id sub_22891DD38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *MEMORY[0x277CCBDB0];
  sub_22891DE6C();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_228931960;
  v8 = *MEMORY[0x277CCA450];
  *(inited + 32) = sub_22892F0C8();
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 40) = v9;
  *(inited + 48) = a2;
  *(inited + 56) = a3;
  v10 = v6;

  sub_22891CEB0(inited);
  swift_setDeallocating();
  sub_22891DF28(inited + 32);
  v11 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
  v12 = sub_22892EFB8();

  v13 = [v11 initWithDomain:v10 code:a1 userInfo:v12];

  return v13;
}

void sub_22891DE6C()
{
  if (!qword_2813DE9B0)
  {
    sub_22891DEC4();
    v0 = sub_22892F7F8();
    if (!v1)
    {
      atomic_store(v0, &qword_2813DE9B0);
    }
  }
}

void sub_22891DEC4()
{
  if (!qword_2813DED38)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_2813DED38);
    }
  }
}

uint64_t sub_22891DF28(uint64_t a1)
{
  sub_22891DEC4();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22891DF84(char a1)
{
  sub_2288DB154();
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_228930B00;
  if (a1)
  {
    sub_22892E3B8();
  }

  else
  {
    sub_22892E408();
  }

  sub_22892E3D8();
  v3 = objc_allocWithZone(MEMORY[0x277CFA320]);
  v4 = sub_22892F098();

  v5 = sub_22892F098();

  v6 = [v3 initWithExtensionBundleIdentifier:v4 kind:v5];

  *(v2 + 32) = v6;
  if (a1)
  {
    sub_22892E3B8();
  }

  else
  {
    sub_22892E408();
  }

  sub_22892E3F8();
  v7 = objc_allocWithZone(MEMORY[0x277CFA320]);
  v8 = sub_22892F098();

  v9 = sub_22892F098();

  v10 = [v7 initWithExtensionBundleIdentifier:v8 kind:v9];

  *(v2 + 40) = v10;
  return v2;
}

uint64_t getEnumTagSinglePayload for BalanceWidgetTimelineControllerProvider(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

id sub_22891E1AC(uint64_t a1)
{
  v3 = *MEMORY[0x277D85DE8];
  result = sub_22891E254(a1, MEMORY[0x277D10110]);
  v2 = *MEMORY[0x277D85DE8];
  return result;
}

id sub_22891E200(uint64_t a1)
{
  v3 = *MEMORY[0x277D85DE8];
  result = sub_22891E254(a1, MEMORY[0x277D10128]);
  v2 = *MEMORY[0x277D85DE8];
  return result;
}

id sub_22891E254(uint64_t a1, unsigned int *a2)
{
  v22[1] = *MEMORY[0x277D85DE8];
  v4 = sub_22892F3F8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2288B5C84(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2288D3C38(a1, v12);
  v13 = sub_22892DEF8();
  v14 = *(v13 - 8);
  v15 = 0;
  if ((*(v14 + 48))(v12, 1, v13) != 1)
  {
    v15 = sub_22892DE58();
    (*(v14 + 8))(v12, v13);
  }

  (*(v5 + 104))(v8, *a2, v4);
  sub_22892F3E8();
  (*(v5 + 8))(v8, v4);
  v16 = sub_22892F098();

  v22[0] = 0;
  v17 = [v21[1] setDate:v15 forKey:v16 error:v22];

  if (v17)
  {
    result = v22[0];
  }

  else
  {
    v19 = v22[0];
    sub_22892DE38();

    result = swift_willThrow();
  }

  v20 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_22891E4DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v6 = *(a3 + 40);
  sub_22892F8A8();
  sub_22892F0F8();
  v7 = sub_22892F8C8();
  v8 = -1 << *(a3 + 32);
  v9 = v7 & ~v8;
  if (((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
    return 0;
  }

  v10 = ~v8;
  while (1)
  {
    v11 = (*(a3 + 48) + 16 * v9);
    v12 = *v11 == a1 && v11[1] == a2;
    if (v12 || (sub_22892F818() & 1) != 0)
    {
      break;
    }

    v9 = (v9 + 1) & v10;
    if (((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_22891E5D4(uint64_t a1, uint64_t a2)
{
  v3 = sub_22892E068();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16) && (v8 = *(a2 + 40), sub_2288BAAF4(&qword_27D85BF28, MEMORY[0x277D62560]), v9 = sub_22892EFF8(), v10 = -1 << *(a2 + 32), v11 = v9 & ~v10, v20 = a2 + 56, ((*(a2 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0))
  {
    v19 = a2;
    v12 = ~v10;
    v13 = v4 + 16;
    v14 = *(v4 + 16);
    v15 = *(v13 + 56);
    v16 = (v13 - 8);
    do
    {
      v14(v7, *(v19 + 48) + v15 * v11, v3);
      sub_2288BAAF4(&qword_27D85BF30, MEMORY[0x277D62560]);
      v17 = sub_22892F088();
      (*v16)(v7, v3);
      if (v17)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
    }

    while (((*(v20 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  else
  {
    v17 = 0;
  }

  return v17 & 1;
}

id sub_22891E83C()
{
  v0 = objc_allocWithZone(MEMORY[0x277D62528]);
  v1 = sub_22892F098();
  v2 = [v0 initWithIdentifier_];

  return v2;
}

uint64_t sub_22891E8A8()
{
  v0 = sub_22892E298();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  sub_22892E288();
  v3 = sub_22892E278();

  return v3;
}

uint64_t sub_22891E908(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  if (v6)
  {
    v7 = a1[1];
    sub_2288DEB1C(v6);
  }

  v8 = swift_allocObject();
  *(v8 + 16) = a2;
  *(v8 + 24) = a3;
  *a1 = sub_228926A14;
  a1[1] = v8;
}

void sub_22891E984(void *a1, uint64_t a2, void (*a3)(void))
{
  v12[1] = *MEMORY[0x277D85DE8];
  a3();
  sub_2288BC0FC(0, &unk_27D85BBF8, 0x277D10598);
  v4 = sub_22892F208();
  v12[0] = 0;
  v5 = [a1 removeEvents:v4 error:v12];

  v6 = v12[0];
  if (v5)
  {
    v7 = *MEMORY[0x277D85DE8];

    v8 = v6;
  }

  else
  {
    v9 = v12[0];
    v10 = sub_22892DE38();

    swift_willThrow();
    v11 = *MEMORY[0x277D85DE8];
  }
}

id sub_22891EAAC()
{
  v1 = v0;
  v31[1] = *MEMORY[0x277D85DE8];
  v2 = *v0;
  v3 = sub_22892EDE8();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = v1[6];
  v31[0] = 0;
  v9 = [v8 featureStatusWithError_];
  if (v9)
  {
    v10 = v9;
    v11 = *MEMORY[0x277CCBEA8];
    v12 = v31[0];
    v13 = [v10 objectForKeyedSubscript_];

    v14 = [v13 areAllRequirementsSatisfied];
  }

  else
  {
    v15 = v31[0];
    v16 = sub_22892DE38();

    swift_willThrow();
    sub_22892EDC8();
    v17 = v16;
    v18 = sub_22892EDD8();
    v19 = sub_22892F378();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v31[0] = v30;
      *v20 = 136446466;
      v22 = sub_22892F948();
      v24 = sub_2288B748C(v22, v23, v31);

      *(v20 + 4) = v24;
      *(v20 + 12) = 2114;
      v25 = v16;
      v26 = _swift_stdlib_bridgeErrorToNSError();
      *(v20 + 14) = v26;
      *v21 = v26;
      _os_log_impl(&dword_2288B2000, v18, v19, "[%{public}s] Error reading feature status: %{public}@", v20, 0x16u);
      sub_2289266D4(v21, sub_2288D6D64);
      MEMORY[0x22AAC47E0](v21, -1, -1);
      v27 = v30;
      __swift_destroy_boxed_opaque_existential_0(v30);
      MEMORY[0x22AAC47E0](v27, -1, -1);
      MEMORY[0x22AAC47E0](v20, -1, -1);
    }

    else
    {
    }

    (*(v4 + 8))(v7, v3);
    v14 = 0;
  }

  v28 = *MEMORY[0x277D85DE8];
  return v14;
}

uint64_t sub_22891EDD4@<X0>(uint64_t a1@<X8>)
{
  v29 = a1;
  v1 = sub_22892DFB8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v30[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22892E048();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v30[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22892DEF8();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v30[-1] - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22892DED8();
  (*(v2 + 104))(v5, *MEMORY[0x277CC9830], v1);
  sub_22892DFC8();
  (*(v2 + 8))(v5, v1);
  sub_2288DB468(v15, v30);
  (*(v7 + 8))(v10, v6);
  (*(v12 + 8))(v15, v11);
  v16 = v31;
  v17 = __swift_project_boxed_opaque_existential_1(v30, v31);
  v18 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v17);
  (*(v20 + 16))(&v30[-1] - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = sub_22892F1D8();
  if (*(v21 + 16))
  {
    v22 = v21;
    sub_2288C0BA8();
    v24 = v23;
    v25 = *(v23 - 8);
    v26 = v29;
    sub_228926574(v22 + ((*(v25 + 80) + 32) & ~*(v25 + 80)), v29, sub_2288C0BA8);

    (*(v25 + 56))(v26, 0, 1, v24);
  }

  else
  {

    sub_2288C0BA8();
    (*(*(v27 - 8) + 56))(v29, 1, 1, v27);
  }

  return __swift_destroy_boxed_opaque_existential_0(v30);
}

uint64_t sub_22891F1AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v77 = a1;
  v67 = a2;
  v74 = sub_22892E948();
  v66 = *(v74 - 8);
  v2 = *(v66 + 64);
  v3 = MEMORY[0x28223BE20](v74);
  v71 = &v65 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v73 = &v65 - v5;
  v6 = sub_22892E6D8();
  v78 = *(v6 - 8);
  v7 = *(v78 + 64);
  v8 = MEMORY[0x28223BE20](v6);
  v70 = &v65 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v72 = &v65 - v11;
  MEMORY[0x28223BE20](v10);
  v76 = &v65 - v12;
  sub_2288C0BA8();
  v75 = v13;
  v65 = *(v13 - 1);
  v14 = *(v65 + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v65 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v65 - v18;
  v20 = sub_22892DFB8();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  v24 = &v65 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = sub_22892E048();
  v25 = *(v69 - 8);
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v69);
  v28 = &v65 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = sub_22892DEF8();
  v29 = *(v68 - 8);
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v68);
  v32 = &v65 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22892DED8();
  (*(v21 + 104))(v24, *MEMORY[0x277CC9830], v20);
  sub_22892DFC8();
  (*(v21 + 8))(v24, v20);
  sub_2288DB468(v32, v81);
  (*(v25 + 8))(v28, v69);
  (*(v29 + 8))(v32, v68);
  v33 = v82;
  v34 = __swift_project_boxed_opaque_existential_1(v81, v82);
  v35 = *(*(v33 - 8) + 64);
  MEMORY[0x28223BE20](v34);
  (*(v37 + 16))(&v65 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0));
  v38 = sub_22892F1D8();
  v39 = *(v38 + 16);
  v77 = v6;
  if (v39)
  {
    v40 = *(v65 + 80);
    v69 = v38;
    v41 = v38 + ((v40 + 32) & ~v40);
    v42 = *(v65 + 72);
    v43 = (v78 + 32);
    v44 = MEMORY[0x277D84F90];
    do
    {
      sub_228926574(v41, v19, sub_2288C0BA8);
      sub_228926574(v19, v17, sub_2288C0BA8);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v79 = *v17;
        v45 = v79;
        v80 = v17[8];
        sub_2288B7AEC();
        swift_willThrowTypedImpl();
        sub_2289266D4(v19, sub_2288C0BA8);
      }

      else
      {
        sub_2289266D4(v19, sub_2288C0BA8);
        v46 = *v43;
        v47 = v72;
        (*v43)(v72, v17, v6);
        v46(v76, v47, v6);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v44 = sub_2288D5FD8(0, v44[2] + 1, 1, v44);
        }

        v49 = v44[2];
        v48 = v44[3];
        if (v49 >= v48 >> 1)
        {
          v44 = sub_2288D5FD8(v48 > 1, v49 + 1, 1, v44);
        }

        v44[2] = v49 + 1;
        v50 = v44 + ((*(v78 + 80) + 32) & ~*(v78 + 80)) + *(v78 + 72) * v49;
        v6 = v77;
        v46(v50, v76, v77);
      }

      v41 += v42;
      --v39;
    }

    while (v39);
  }

  else
  {

    v44 = MEMORY[0x277D84F90];
  }

  result = __swift_destroy_boxed_opaque_existential_0(v81);
  v52 = v78;
  v53 = v70;
  v76 = v44[2];
  if (v76)
  {
    v54 = 0;
    v75 = v44 + ((*(v78 + 80) + 32) & ~*(v78 + 80));
    v55 = (v66 + 8);
    v56 = (v78 + 8);
    while (v54 < v44[2])
    {
      (*(v52 + 16))(v53, &v75[*(v52 + 72) * v54], v6);
      v57 = v73;
      sub_22892E5C8();
      v58 = sub_22892E868();
      v59 = *v55;
      (*v55)(v57, v74);
      if (v58)
      {
        v60 = v71;
        sub_22892E5C8();
        v61 = sub_22892E898();
        v59(v60, v74);
        if ((v61 & 1) == 0)
        {

          v6 = v77;
          v52 = v78;
          v62 = v67;
          (*(v78 + 32))(v67, v53, v77);
          v63 = v62;
          v64 = 0;
          return (*(v52 + 56))(v63, v64, 1, v6);
        }
      }

      ++v54;
      v6 = v77;
      result = (*v56)(v53, v77);
      v52 = v78;
      if (v76 == v54)
      {
        goto LABEL_20;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_20:

    v64 = 1;
    v63 = v67;
    return (*(v52 + 56))(v63, v64, 1, v6);
  }

  return result;
}

uint64_t sub_22891F9F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  v25[1] = *v2;
  v25[2] = a1;
  v3 = sub_22892EDE8();
  v26 = *(v3 - 8);
  v27 = v3;
  v4 = *(v26 + 64);
  MEMORY[0x28223BE20](v3);
  v5 = type metadata accessor for VitalsOutlierNotificationAnalysisState(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2289251A8(0, &qword_27D85BC08, type metadata accessor for VitalsOutlierNotificationAnalysisState, MEMORY[0x277D83D88]);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v14 = v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = v25 - v15;
  v17 = v2[14];
  v29 = v2[2];
  v18 = *(*v17 + *MEMORY[0x277D841D0] + 16);
  v19 = (*(*v17 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v17 + v19));
  sub_228925974(v17 + v18, v16);
  os_unfair_lock_unlock((v17 + v19));
  sub_22892600C(v16, v14, &qword_27D85BC08, type metadata accessor for VitalsOutlierNotificationAnalysisState);
  if ((*(v6 + 48))(v14, 1, v5) == 1)
  {
    sub_2289264F4(v16, &qword_27D85BC08, type metadata accessor for VitalsOutlierNotificationAnalysisState);
    sub_2289264F4(v14, &qword_27D85BC08, type metadata accessor for VitalsOutlierNotificationAnalysisState);
LABEL_6:
    v23 = 1;
    v22 = v28;
    return (*(v6 + 56))(v22, v23, 1, v5);
  }

  sub_22892608C(v14, v9, type metadata accessor for VitalsOutlierNotificationAnalysisState);
  sub_22892EFA8();
  sub_2288BAAF4(&unk_2813DEE10, MEMORY[0x277CCB6A8]);
  v20 = sub_22892F088();
  sub_2289264F4(v16, &qword_27D85BC08, type metadata accessor for VitalsOutlierNotificationAnalysisState);
  if ((v20 & 1) == 0)
  {
    sub_2289266D4(v9, type metadata accessor for VitalsOutlierNotificationAnalysisState);
    goto LABEL_6;
  }

  v21 = v28;
  sub_22892608C(v9, v28, type metadata accessor for VitalsOutlierNotificationAnalysisState);
  v22 = v21;
  v23 = 0;
  return (*(v6 + 56))(v22, v23, 1, v5);
}

uint64_t sub_22891FF8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_2289251A8(0, &qword_27D85BC08, type metadata accessor for VitalsOutlierNotificationAnalysisState, MEMORY[0x277D83D88]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v16 - v9;
  v11 = type metadata accessor for VitalsOutlierNotificationAnalysisStateCache.CachedValue(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v16 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228926574(a1, v14, type metadata accessor for VitalsOutlierNotificationAnalysisStateCache.CachedValue);
  if ((*(v7 + 48))(v14, 1, v6) == 1)
  {
    result = sub_228922BE0(MEMORY[0x277D10148], MEMORY[0x277D10140], MEMORY[0x277D10150], type metadata accessor for VitalsOutlierNotificationAnalysisState, v10);
    if (v2)
    {
      return result;
    }

    sub_2289266D4(a1, type metadata accessor for VitalsOutlierNotificationAnalysisStateCache.CachedValue);
    sub_22892600C(v10, a1, &qword_27D85BC08, type metadata accessor for VitalsOutlierNotificationAnalysisState);
    (*(v7 + 56))(a1, 0, 1, v6);
  }

  else
  {
    v10 = v14;
  }

  return sub_228925990(v10, a2);
}

uint64_t sub_2289201C0()
{
  v1 = *v0;
  v11 = sub_22892EDE8();
  v2 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v3 = sub_22892F3F8();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = v0[2];
  (*(v4 + 104))(v7, *MEMORY[0x277D10138], v3);
  sub_22892F3E8();
  (*(v4 + 8))(v7, v3);
  sub_22892F3B8();
}

uint64_t sub_228920558(uint64_t a1)
{
  v3 = *v1;
  v4 = sub_22892EDE8();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v6 = v1[2];
  sub_228920854(a1);
  return sub_2289264F4(a1, &qword_2813DFEE0, MEMORY[0x277CC9578]);
}

id sub_228920854(uint64_t a1)
{
  v21[1] = *MEMORY[0x277D85DE8];
  v2 = sub_22892F3F8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x277CC9578];
  sub_2289251A8(0, &qword_2813DFEE0, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v20 - v10;
  sub_22892600C(a1, v20 - v10, &qword_2813DFEE0, v7);
  v12 = sub_22892DEF8();
  v13 = *(v12 - 8);
  v14 = 0;
  if ((*(v13 + 48))(v11, 1, v12) != 1)
  {
    v14 = sub_22892DE58();
    (*(v13 + 8))(v11, v12);
  }

  (*(v3 + 104))(v6, *MEMORY[0x277D10138], v2);
  sub_22892F3E8();
  (*(v3 + 8))(v6, v2);
  v15 = sub_22892F098();

  v21[0] = 0;
  v16 = [v20[1] setDate:v14 forKey:v15 error:v21];

  if (v16)
  {
    result = v21[0];
  }

  else
  {
    v18 = v21[0];
    sub_22892DE38();

    result = swift_willThrow();
  }

  v19 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_228920B20(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = sub_22892EDE8();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v7 = v1[2];
  sub_228920EAC(a1);
  v8 = v2[14];
  v9 = *(*v8 + *MEMORY[0x277D841D0] + 16);
  v10 = (*(*v8 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v8 + v10));
  sub_2289266D4(v8 + v9, type metadata accessor for VitalsOutlierNotificationAnalysisStateCache.CachedValue);
  sub_2289251A8(0, &qword_27D85BC08, type metadata accessor for VitalsOutlierNotificationAnalysisState, MEMORY[0x277D83D88]);
  (*(*(v11 - 8) + 56))(v8 + v9, 1, 1, v11);

  os_unfair_lock_unlock((v8 + v10));
}

id sub_228920EAC(uint64_t a1)
{
  v40 = a1;
  v46 = *MEMORY[0x277D85DE8];
  v1 = sub_22892F3F8();
  v2 = *(v1 - 8);
  v3 = v2[8];
  v4 = MEMORY[0x28223BE20](v1);
  v41 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v39 = &v36 - v7;
  MEMORY[0x28223BE20](v6);
  v9 = &v36 - v8;
  sub_2289251A8(0, &qword_27D85B520, sub_2288DDB6C, MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_228931EA0;
  v11 = *MEMORY[0x277D10140];
  v12 = v2[13];
  v43 = v2 + 13;
  v12(v9, v11, v1);
  v13 = sub_22892F3E8();
  v15 = v14;
  v37 = v2[1];
  v37(v9, v1);
  v44 = v13;
  v45 = v15;
  sub_22892F5D8();
  v38 = type metadata accessor for VitalsOutlierNotificationAnalysisState(0);
  v16 = *(v38 + 20);
  v17 = sub_22892DEF8();
  *(inited + 96) = v17;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 72));
  v19 = v40;
  (*(*(v17 - 8) + 16))(boxed_opaque_existential_1, v40 + v16, v17);
  v20 = v39;
  v12(v39, *MEMORY[0x277D10148], v1);
  v21 = sub_22892F3E8();
  v23 = v22;
  v24 = v37;
  v37(v20, v1);
  v44 = v21;
  v45 = v23;
  sub_22892F5D8();
  v25 = sub_22892EF68();
  *(inited + 168) = MEMORY[0x277D83B88];
  *(inited + 144) = v25;
  v26 = v41;
  v12(v41, *MEMORY[0x277D10150], v1);
  v27 = v26;
  v28 = sub_22892F3E8();
  v30 = v29;
  v24(v27, v1);
  v44 = v28;
  v45 = v30;
  sub_22892F5D8();
  v31 = *(v19 + *(v38 + 24));
  *(inited + 240) = MEMORY[0x277D83B88];
  *(inited + 216) = v31;
  sub_22891CFE8(inited);
  swift_setDeallocating();
  sub_2288DDB6C();
  swift_arrayDestroy();
  v32 = sub_22892EFB8();

  v44 = 0;
  LOBYTE(v30) = [v42 setValuesWithDictionary:v32 error:&v44];

  if (v30)
  {
    result = v44;
  }

  else
  {
    v34 = v44;
    sub_22892DE38();

    result = swift_willThrow();
  }

  v35 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2289212D8()
{
  v31[1] = *MEMORY[0x277D85DE8];
  v1 = *v0;
  v2 = sub_22892EDE8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = v0[3];
  sub_2288DB154();
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_228930AF0;
  v9 = sub_22892F098();
  v10 = sub_22892DE58();
  v11 = [v7 eventWithIdentifier:v9 dueDate:v10 eventOptions:0];

  *(v8 + 32) = v11;
  sub_2288BC0FC(0, &unk_27D85BBF8, 0x277D10598);
  v12 = sub_22892F208();

  v31[0] = 0;
  v13 = [v7 replaceAllScheduledEventsWithEvents:v12 error:v31];

  if (v13)
  {
    v14 = v31[0];
  }

  else
  {
    v15 = v31[0];
    v16 = sub_22892DE38();

    swift_willThrow();
    sub_22892EDC8();
    v17 = v16;
    v18 = sub_22892EDD8();
    v19 = sub_22892F378();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v30 = v3;
      v22 = v21;
      v23 = swift_slowAlloc();
      v31[0] = v23;
      *v20 = 136446466;
      v24 = sub_22892F948();
      v26 = sub_2288B748C(v24, v25, v31);

      *(v20 + 4) = v26;
      *(v20 + 12) = 2114;
      v27 = v16;
      v28 = _swift_stdlib_bridgeErrorToNSError();
      *(v20 + 14) = v28;
      *v22 = v28;
      _os_log_impl(&dword_2288B2000, v18, v19, "[%{public}s] Error scheduling event %{public}@", v20, 0x16u);
      sub_2289266D4(v22, sub_2288D6D64);
      MEMORY[0x22AAC47E0](v22, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v23);
      MEMORY[0x22AAC47E0](v23, -1, -1);
      MEMORY[0x22AAC47E0](v20, -1, -1);

      (*(v30 + 8))(v6, v2);
    }

    else
    {

      (*(v3 + 8))(v6, v2);
    }
  }

  v29 = *MEMORY[0x277D85DE8];
}

uint64_t sub_22892168C(uint64_t a1)
{
  v27 = a1;
  sub_2289251A8(0, &qword_2813DFEE0, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v24 - v3;
  v24 = sub_22892E9E8();
  v5 = *(v24 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v24);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22892EFA8();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = sub_22892DF58();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_22892EA08();
  v25 = *(v16 - 8);
  v26 = v16;
  v17 = *(v25 + 64);
  MEMORY[0x28223BE20](v16);
  v19 = &v24 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22892DF48();
  sub_22892DF08();
  (*(v12 + 8))(v15, v11);
  sub_22892E5E8();
  sub_22892EB58();
  (*(v5 + 104))(v8, *MEMORY[0x277D10088], v24);
  v20 = v28;
  sub_22892E988();
  if (*(v20 + 64))
  {
    sub_2288DBD40(v19);
  }

  v21 = *(v20 + 16);
  sub_22892DED8();
  v22 = sub_22892DEF8();
  (*(*(v22 - 8) + 56))(v4, 0, 1, v22);
  sub_22891E1AC(v4);
  sub_2289264F4(v4, &qword_2813DFEE0, MEMORY[0x277CC9578]);
  return (*(v25 + 8))(v19, v26);
}

uint64_t sub_228921A20(uint64_t a1)
{
  v17[1] = a1;
  v18 = sub_22892E9E8();
  v17[0] = *(v18 - 8);
  v1 = *(v17[0] + 64);
  MEMORY[0x28223BE20](v18);
  v3 = v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_22892EFA8();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = sub_22892DF58();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22892EA08();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = v17 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22892DF48();
  sub_22892DF08();
  (*(v7 + 8))(v10, v6);
  sub_22892E5E8();
  (*(v17[0] + 104))(v3, *MEMORY[0x277D10080], v18);
  sub_22892E988();
  if (*(v19 + 64))
  {
    sub_2288DBD40(v15);
  }

  return (*(v12 + 8))(v15, v11);
}

uint64_t sub_228921CBC()
{
  v1 = sub_22892E968();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  result = MEMORY[0x28223BE20](v1);
  v6 = aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v0 + 64);
  if (v7)
  {
    (*(v2 + 104))(v6, *MEMORY[0x277D10070], v1);
    v8 = *(v7 + OBJC_IVAR____TtC19HealthBalanceDaemon36ImbalanceUserNotificationCoordinator_notificationManager);
    sub_22892E958();
    v9 = sub_22892F098();

    aBlock[4] = nullsub_1;
    aBlock[5] = 0;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2288F3CC4;
    aBlock[3] = &block_descriptor_11;
    v10 = _Block_copy(aBlock);

    [v8 removeDeliveredNotificationsWithCategoryIdentifier:v9 completionHandler:v10];
    _Block_release(v10);

    return (*(v2 + 8))(v6, v1);
  }

  return result;
}

uint64_t sub_228921E6C()
{
  v1 = v0;
  v48[1] = *MEMORY[0x277D85DE8];
  v45 = *v0;
  v2 = sub_22892EDE8();
  v46 = *(v2 - 8);
  v47 = v2;
  v3 = *(v46 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2289251A8(0, &qword_27D85BF20, MEMORY[0x277D62618], MEMORY[0x277D83D88]);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v10 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v45 - v11;
  v13 = sub_22892E1C8();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v45 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v45 - v19;
  v21 = v0[7];
  sub_22892E178();
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    v22 = sub_2289264F4(v12, &qword_27D85BF20, MEMORY[0x277D62618]);
    v23 = v0[10];
    v24 = (v1[9])(v22);
    v48[0] = 0;
    v25 = [v24 currentSleepEventRecordWithError_];

    if (!v25)
    {
      v30 = v48[0];
      v31 = sub_22892DE38();

      swift_willThrow();
      sub_22892EDC8();
      v32 = v31;
      v33 = sub_22892EDD8();
      v34 = sub_22892F378();

      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        v36 = swift_slowAlloc();
        v37 = swift_slowAlloc();
        v48[0] = v37;
        *v35 = 136446466;
        v38 = sub_22892F948();
        v40 = sub_2288B748C(v38, v39, v48);

        *(v35 + 4) = v40;
        *(v35 + 12) = 2114;
        v41 = v31;
        v42 = _swift_stdlib_bridgeErrorToNSError();
        *(v35 + 14) = v42;
        *v36 = v42;
        _os_log_impl(&dword_2288B2000, v33, v34, "[%{public}s] Error reading sleep event record: %{public}@", v35, 0x16u);
        sub_2289266D4(v36, sub_2288D6D64);
        MEMORY[0x22AAC47E0](v36, -1, -1);
        __swift_destroy_boxed_opaque_existential_0(v37);
        MEMORY[0x22AAC47E0](v37, -1, -1);
        MEMORY[0x22AAC47E0](v35, -1, -1);
      }

      else
      {
      }

      (*(v46 + 8))(v5, v47);
      goto LABEL_11;
    }

    v26 = v48[0];
    v27 = [v25 lastWakeUpResultsIntroductionNotificationVersionSent];

    if (v27 >= 1)
    {
      sub_22892E1B8();
      (*(v14 + 56))(v10, 0, 1, v13);
      sub_22892E188();
LABEL_11:
      v28 = 0;
      goto LABEL_12;
    }

    v28 = 1;
  }

  else
  {
    (*(v14 + 32))(v20, v12, v13);
    sub_22892E1B8();
    v28 = sub_22892E1A8();
    v29 = *(v14 + 8);
    v29(v18, v13);
    v29(v20, v13);
  }

LABEL_12:
  v43 = *MEMORY[0x277D85DE8];
  return v28 & 1;
}

id sub_2289223A4(uint64_t a1)
{
  v30[1] = *MEMORY[0x277D85DE8];
  v2 = sub_22892EDE8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 72);
  v9 = *(a1 + 80);
  v10 = v8(v5);
  v30[0] = 0;
  v11 = [v10 currentSleepSettingsWithError_];

  if (v11)
  {
    v12 = v30[0];
    v13 = [v11 wakeUpResults];
  }

  else
  {
    v14 = v30[0];
    v15 = sub_22892DE38();

    swift_willThrow();
    sub_22892EDC8();
    v16 = v15;
    v17 = sub_22892EDD8();
    v18 = sub_22892F378();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v30[0] = v29;
      *v19 = 136446466;
      v21 = sub_22892F948();
      v23 = sub_2288B748C(v21, v22, v30);

      *(v19 + 4) = v23;
      *(v19 + 12) = 2114;
      v24 = v15;
      v25 = _swift_stdlib_bridgeErrorToNSError();
      *(v19 + 14) = v25;
      *v20 = v25;
      _os_log_impl(&dword_2288B2000, v17, v18, "[%{public}s] Error reading sleep settings: %{public}@", v19, 0x16u);
      sub_2289266D4(v20, sub_2288D6D64);
      MEMORY[0x22AAC47E0](v20, -1, -1);
      v26 = v29;
      __swift_destroy_boxed_opaque_existential_0(v29);
      MEMORY[0x22AAC47E0](v26, -1, -1);
      MEMORY[0x22AAC47E0](v19, -1, -1);
    }

    else
    {
    }

    (*(v3 + 8))(v7, v2);
    v13 = 0;
  }

  v27 = *MEMORY[0x277D85DE8];
  return v13;
}

uint64_t sub_22892268C@<X0>(uint64_t a1@<X8>)
{
  v24 = a1;
  v2 = *v1;
  v3 = sub_22892EDE8();
  v22 = *(v3 - 8);
  v23 = v3;
  v4 = *(v22 + 64);
  MEMORY[0x28223BE20](v3);
  v5 = type metadata accessor for SleepScoreNotificationState();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2289251A8(0, &qword_27D85BF18, type metadata accessor for SleepScoreNotificationState, MEMORY[0x277D83D88]);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v21 - v15;
  v17 = v1[2];
  sub_228922BE0(MEMORY[0x277D10130], MEMORY[0x277D10118], MEMORY[0x277D10120], type metadata accessor for SleepScoreNotificationState, &v21 - v15);
  sub_22892600C(v16, v14, &qword_27D85BF18, type metadata accessor for SleepScoreNotificationState);
  if ((*(v6 + 48))(v14, 1, v5) == 1)
  {
    sub_2289264F4(v16, &qword_27D85BF18, type metadata accessor for SleepScoreNotificationState);
    sub_2289264F4(v14, &qword_27D85BF18, type metadata accessor for SleepScoreNotificationState);
LABEL_6:
    v19 = 1;
    return (*(v6 + 56))(v24, v19, 1, v5);
  }

  sub_22892608C(v14, v9, type metadata accessor for SleepScoreNotificationState);
  sub_22892EFA8();
  sub_2288BAAF4(&unk_2813DEE10, MEMORY[0x277CCB6A8]);
  v18 = sub_22892F088();
  sub_2289264F4(v16, &qword_27D85BF18, type metadata accessor for SleepScoreNotificationState);
  if ((v18 & 1) == 0)
  {
    sub_2289266D4(v9, type metadata accessor for SleepScoreNotificationState);
    goto LABEL_6;
  }

  sub_22892608C(v9, v24, type metadata accessor for SleepScoreNotificationState);
  v19 = 0;
  return (*(v6 + 56))(v24, v19, 1, v5);
}

uint64_t sub_228922BE0@<X0>(unsigned int *a1@<X0>, void (*a2)(char *, uint64_t, uint64_t)@<X1>, unsigned int *a3@<X2>, uint64_t (*a4)(void)@<X3>, char *a5@<X8>)
{
  v66 = a2;
  v67 = a4;
  v64 = a3;
  v72 = a1;
  v68 = a5;
  v6 = sub_22892F3F8();
  v69 = *(v6 - 8);
  v70 = v6;
  v7 = *(v69 + 64);
  v8 = MEMORY[0x28223BE20](v6);
  v63 = v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = v55 - v10;
  v12 = MEMORY[0x277D83D88];
  sub_2289251A8(0, &qword_2813DFEE0, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = v55 - v15;
  v17 = sub_22892DEF8();
  v65 = *(v17 - 8);
  v18 = *(v65 + 64);
  MEMORY[0x28223BE20](v17);
  v20 = v55 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2289251A8(0, &unk_2813DEDE0, MEMORY[0x277CCB6A8], v12);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21 - 8);
  v24 = v55 - v23;
  v25 = sub_22892EFA8();
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v25);
  v29 = v55 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = v71;
  result = sub_228925770(v72, v24);
  if (!v30)
  {
    v61 = v5;
    v62 = v16;
    v71 = v29;
    v59 = v20;
    v60 = v17;
    v33 = v69;
    v32 = v70;
    v72 = 0;
    if ((*(v26 + 48))(v24, 1, v25) == 1)
    {
      v34 = &unk_2813DEDE0;
      v35 = MEMORY[0x277CCB6A8];
      v36 = v24;
      goto LABEL_4;
    }

    v57 = *(v26 + 32);
    v58 = v25;
    v57(v71, v24, v25);
    v39 = *v66;
    v66 = *(v33 + 104);
    v66(v11, v39, v32);
    sub_22892F3E8();
    v40 = *(v33 + 8);
    v40(v11, v32);
    v41 = v72;
    sub_22892F3B8();
    v72 = v41;
    if (!v41)
    {
      v55[1] = v33 + 104;
      v56 = v40;
      v42 = v66;
      v55[0] = v26 + 32;
      v69 = v26;

      v43 = v65;
      v44 = v62;
      v45 = v60;
      if ((*(v65 + 48))(v62, 1, v60) != 1)
      {
        v62 = *(v43 + 32);
        v62(v59, v44, v45);
        v46 = v63;
        v42(v63, *v64, v32);
        sub_22892F3E8();
        v56(v46, v32);
        v47 = v72;
        v48 = sub_22892F3C8();
        v72 = v47;
        if (v47)
        {

          (*(v43 + 8))(v59, v45);
          return (*(v69 + 8))(v71, v58);
        }

        v49 = v48;
        v50 = v62;

        v51 = v71;
        if (v49)
        {
          v52 = [v49 integerValue];

          v53 = v68;
          v57(v68, v51, v58);
          v54 = v67(0);
          v50(&v53[*(v54 + 20)], v59, v60);
          *&v53[*(v54 + 24)] = v52;
          return (*(*(v54 - 8) + 56))(v53, 0, 1, v54);
        }

        (*(v65 + 8))(v59, v60);
        (*(v69 + 8))(v51, v58);
        goto LABEL_5;
      }

      (*(v69 + 8))(v71, v58);
      v34 = &qword_2813DFEE0;
      v35 = MEMORY[0x277CC9578];
      v36 = v44;
LABEL_4:
      sub_2289264F4(v36, v34, v35);
LABEL_5:
      v37 = v68;
      v38 = v67(0);
      return (*(*(v38 - 8) + 56))(v37, 1, 1, v38);
    }

    (*(v26 + 8))(v71, v58);
  }

  return result;
}

id sub_22892324C(uint64_t a1)
{
  v3 = *v1;
  v4 = sub_22892EDE8();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v6 = v1[2];
  return sub_2289234C8(a1);
}

id sub_2289234C8(uint64_t a1)
{
  v38 = a1;
  v44 = *MEMORY[0x277D85DE8];
  v1 = sub_22892F3F8();
  v2 = *(v1 - 8);
  v3 = v2[8];
  v4 = MEMORY[0x28223BE20](v1);
  v39 = v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v37 = v36 - v7;
  MEMORY[0x28223BE20](v6);
  v9 = v36 - v8;
  sub_2289251A8(0, &qword_27D85B520, sub_2288DDB6C, MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_228931EA0;
  v11 = *MEMORY[0x277D10130];
  v41 = v2[13];
  v41(v9, v11, v1);
  v36[2] = v2 + 13;
  v12 = sub_22892F3E8();
  v14 = v13;
  v15 = v2[1];
  v15(v9, v1);
  v36[3] = v2 + 1;
  v42 = v12;
  v43 = v14;
  sub_22892F5D8();
  v16 = v38;
  v17 = sub_22892EF68();
  *(inited + 96) = MEMORY[0x277D83B88];
  *(inited + 72) = v17;
  v18 = v37;
  v41(v37, *MEMORY[0x277D10118], v1);
  v19 = v18;
  v20 = sub_22892F3E8();
  v22 = v21;
  v15(v19, v1);
  v42 = v20;
  v43 = v22;
  sub_22892F5D8();
  v23 = type metadata accessor for SleepScoreNotificationState();
  v24 = *(v23 + 20);
  v25 = sub_22892DEF8();
  *(inited + 168) = v25;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 144));
  (*(*(v25 - 8) + 16))(boxed_opaque_existential_1, v16 + v24, v25);
  v27 = v39;
  v41(v39, *MEMORY[0x277D10120], v1);
  v28 = sub_22892F3E8();
  v30 = v29;
  v15(v27, v1);
  v42 = v28;
  v43 = v30;
  sub_22892F5D8();
  v31 = *(v16 + *(v23 + 24));
  *(inited + 240) = MEMORY[0x277D83B88];
  *(inited + 216) = v31;
  sub_22891CFE8(inited);
  swift_setDeallocating();
  sub_2288DDB6C();
  swift_arrayDestroy();
  v32 = sub_22892EFB8();

  v42 = 0;
  LOBYTE(v30) = [v40 setValuesWithDictionary:v32 error:&v42];

  if (v30)
  {
    result = v42;
  }

  else
  {
    v34 = v42;
    sub_22892DE38();

    result = swift_willThrow();
  }

  v35 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_2289238F8(void *a1)
{
  v2 = v1;
  v4 = MEMORY[0x277D83D88];
  sub_2289251A8(0, &qword_27D85BF20, MEMORY[0x277D62618], MEMORY[0x277D83D88]);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v18[-v7];
  sub_2289251A8(0, &qword_2813DFEE0, MEMORY[0x277CC9578], v4);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v18[-v11];
  if (v2[8])
  {
    sub_2288DD008(a1);
  }

  v13 = v2[2];
  sub_22892DED8();
  v14 = sub_22892DEF8();
  (*(*(v14 - 8) + 56))(v12, 0, 1, v14);
  sub_22891E200(v12);
  sub_2289264F4(v12, &qword_2813DFEE0, MEMORY[0x277CC9578]);
  result = sub_22892E0E8();
  if (result)
  {
    v16 = v2[7];
    sub_22892E1B8();
    v17 = sub_22892E1C8();
    (*(*(v17 - 8) + 56))(v8, 0, 1, v17);
    return sub_22892E188();
  }

  return result;
}

uint64_t sub_228923B00(uint64_t a1)
{
  v137 = a1;
  v118[1] = *v1;
  v2 = sub_22892EDE8();
  v139 = *(v2 - 8);
  v140 = v2;
  v3 = *(v139 + 64);
  v4 = MEMORY[0x28223BE20](v2);
  v138 = v118 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v119 = v118 - v6;
  v136 = type metadata accessor for SleepingSampleCacheRange();
  v7 = *(*(v136 - 8) + 64);
  MEMORY[0x28223BE20](v136);
  v144 = v118 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x277D83D88];
  sub_2289251A8(0, &qword_27D85BC08, type metadata accessor for VitalsOutlierNotificationAnalysisState, MEMORY[0x277D83D88]);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v135 = v118 - v12;
  sub_2289251A8(0, &qword_2813DFEE0, MEMORY[0x277CC9578], v9);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v143 = v118 - v15;
  v132 = sub_22892E478();
  v131 = *(v132 - 1);
  v16 = *(v131 + 8);
  MEMORY[0x28223BE20](v132);
  v129 = v118 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v134 = sub_22892DDC8();
  v133 = *(v134 - 8);
  v18 = *(v133 + 64);
  MEMORY[0x28223BE20](v134);
  v130 = v118 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2288BB4E0();
  v128 = v20;
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x28223BE20](v20);
  v124 = v118 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v126 = v118 - v24;
  sub_2288B5D1C();
  v125 = v25;
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x28223BE20](v25);
  v127 = v118 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_22892E778();
  v141 = *(v28 - 8);
  v142 = v28;
  v29 = *(v141 + 64);
  MEMORY[0x28223BE20](v28);
  v151 = v118 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v145 = sub_22892DEF8();
  v152 = *(v145 - 8);
  v31 = *(v152 + 64);
  v32 = MEMORY[0x28223BE20](v145);
  v154 = v118 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v34 = sub_22892EFA8();
  v146 = *(v34 - 8);
  v35 = *(v146 + 64);
  v36 = MEMORY[0x28223BE20](v34);
  v123 = v118 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36);
  v39 = v118 - v38;
  v40 = sub_22892DFB8();
  v41 = *(v40 - 8);
  v42 = *(v41 + 64);
  MEMORY[0x28223BE20](v40);
  v44 = v118 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_22892E048();
  v46 = *(v45 - 8);
  v47 = *(v46 + 64);
  v48 = MEMORY[0x28223BE20](v45);
  v50 = v118 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v48);
  v52 = v118 - v51;
  (*(v41 + 104))(v44, *MEMORY[0x277CC9830], v40);
  sub_22892DFC8();
  (*(v41 + 8))(v44, v40);
  sub_22892DED8();
  v53 = *(v46 + 16);
  v149 = v45;
  v53(v50, v52, v45);
  v122 = v50;
  sub_22892EF48();
  sub_2288BAAF4(&qword_2813DEE20, MEMORY[0x277CCB6A8]);
  result = sub_22892F048();
  if (result)
  {
    v121 = v46 + 16;
    v55 = v146;
    v153 = v46;
    v56 = *(v146 + 16);
    v120 = v53;
    v57 = v126;
    v148 = v39;
    v56(v126, v39, v34);
    v58 = v124;
    v59 = v34;
    v60 = v128;
    v56((v57 + *(v128 + 48)), v39, v59);
    sub_228926574(v57, v58, sub_2288BB4E0);
    v61 = *(v60 + 48);
    v150 = v52;
    v62 = *(v55 + 32);
    v63 = v127;
    v62(v127, v58, v59);
    v65 = *(v55 + 8);
    v64 = v55 + 8;
    v65(v58 + v61, v59);
    sub_22892608C(v57, v58, sub_2288BB4E0);
    v62(&v63[*(v125 + 36)], v58 + *(v60 + 48), v59);
    v65(v58, v59);
    v66 = v122;
    v67 = v149;
    v120(v122, v150, v149);
    sub_22892E738();
    sub_22892E6E8();
    v68 = v123;
    sub_22892E758();
    v69 = v129;
    sub_22892E708();
    sub_22892E468();
    (*(v131 + 1))(v69, v132);
    v70 = v130;
    sub_22892EEC8();
    v71 = *(v153 + 8);
    v153 += 8;
    v131 = v71;
    v71(v66, v67);
    v132 = v65;
    v65(v68, v59);
    sub_22892DD98();
    (*(v133 + 8))(v70, v134);
    v72 = v135;
    v73 = v148;
    sub_22891F9F8(v148, v135);
    v74 = type metadata accessor for VitalsOutlierNotificationAnalysisState(0);
    v75 = (*(*(v74 - 8) + 48))(v72, 1, v74);
    v134 = v59;
    if (v75 == 1)
    {
      sub_2289264F4(v72, &qword_27D85BC08, type metadata accessor for VitalsOutlierNotificationAnalysisState);
      v76 = v152;
      v77 = v143;
      v78 = v145;
      (*(v152 + 56))(v143, 1, 1, v145);
      v79 = *(v76 + 16);
    }

    else
    {
      v80 = *(v74 + 20);
      v81 = v152;
      v79 = *(v152 + 16);
      v77 = v143;
      v78 = v145;
      v79(v143, v72 + v80, v145);
      sub_2289266D4(v72, type metadata accessor for VitalsOutlierNotificationAnalysisState);
      (*(v81 + 56))(v77, 0, 1, v78);
    }

    v82 = v144;
    v83 = v138;
    v79(v144, v154, v78);
    v84 = v136;
    sub_22892600C(v77, v82 + *(v136 + 20), &qword_2813DFEE0, MEMORY[0x277CC9578]);
    sub_2288BC0FC(0, &qword_2813DEC40, 0x277CCD830);
    v85 = MEMORY[0x22AAC3A10](*MEMORY[0x277CCC938]);
    v86 = HKRollingBaselineConfigurationForQuantityType();

    [v86 maximumWindowDuration];
    v88 = v87;

    *(v82 + *(v84 + 24)) = v88;
    if (sub_2288CD2A4(v137))
    {
      v89 = v119;
      sub_22892EDC8();
      v90 = sub_22892EDD8();
      v91 = sub_22892F398();
      if (os_log_type_enabled(v90, v91))
      {
        v92 = swift_slowAlloc();
        v93 = swift_slowAlloc();
        v155 = v93;
        *v92 = 136446210;
        v94 = sub_22892F948();
        v96 = sub_2288B748C(v94, v95, &v155);

        *(v92 + 4) = v96;
        v97 = v134;
        v78 = v145;
        _os_log_impl(&dword_2288B2000, v90, v91, "[%{public}s] Requesting analysis for relevant samples added", v92, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v93);
        MEMORY[0x22AAC47E0](v93, -1, -1);
        MEMORY[0x22AAC47E0](v92, -1, -1);

        (*(v139 + 8))(v119, v140);
        v98 = v142;
        v99 = v147;
      }

      else
      {

        (*(v139 + 8))(v89, v140);
        v98 = v142;
        v99 = v147;
        v97 = v134;
      }

      v109 = *(v99 + 104);
      os_unfair_lock_lock((v109 + 32));
      v110 = *(v109 + 16);
      if (v110)
      {
        v111 = *(v109 + 24);
        v112 = swift_allocObject();
        *(v112 + 16) = v110;
        *(v112 + 24) = v111;
        v113 = swift_allocObject();
        *(v113 + 16) = sub_228926A10;
        *(v113 + 24) = v112;
        v114 = swift_allocObject();
        *(v114 + 16) = sub_228926A10;
        *(v114 + 24) = v112;
        *(v109 + 16) = sub_228926A14;
        *(v109 + 24) = v114;

        os_unfair_lock_unlock((v109 + 32));
        v115 = *(v113 + 24);
        (*(v113 + 16))();
        sub_2288DEB1C(sub_228926A14);
      }

      else
      {
        os_unfair_lock_unlock((v109 + 32));
      }

      sub_2289266D4(v82, type metadata accessor for SleepingSampleCacheRange);
      sub_2289264F4(v77, &qword_2813DFEE0, MEMORY[0x277CC9578]);
      (*(v152 + 8))(v154, v78);
      (*(v141 + 8))(v151, v98);
      v132(v148, v97);
    }

    else
    {
      sub_22892EDC8();
      v100 = sub_22892EDD8();
      v101 = v83;
      v102 = sub_22892F368();
      if (!os_log_type_enabled(v100, v102))
      {

        (*(v139 + 8))(v101, v140);
        sub_2289266D4(v82, type metadata accessor for SleepingSampleCacheRange);
        sub_2289264F4(v77, &qword_2813DFEE0, MEMORY[0x277CC9578]);
        (*(v152 + 8))(v154, v78);
        (*(v141 + 8))(v151, v142);
        v132(v73, v134);
        v116 = v150;
        v117 = v67;
        return v131(v116, v117);
      }

      v103 = swift_slowAlloc();
      v104 = swift_slowAlloc();
      v155 = v104;
      *v103 = 136446210;
      v105 = sub_22892F948();
      v107 = sub_2288B748C(v105, v106, &v155);
      v146 = v64;
      v108 = v107;

      *(v103 + 4) = v108;
      _os_log_impl(&dword_2288B2000, v100, v102, "[%{public}s] Ignoring irrelevant samples added", v103, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v104);
      MEMORY[0x22AAC47E0](v104, -1, -1);
      MEMORY[0x22AAC47E0](v103, -1, -1);

      (*(v139 + 8))(v101, v140);
      sub_2289266D4(v82, type metadata accessor for SleepingSampleCacheRange);
      sub_2289264F4(v77, &qword_2813DFEE0, MEMORY[0x277CC9578]);
      (*(v152 + 8))(v154, v78);
      (*(v141 + 8))(v151, v142);
      v132(v148, v134);
    }

    v117 = v149;
    v116 = v150;
    return v131(v116, v117);
  }

  __break(1u);
  return result;
}

void sub_228924C78()
{
  v1 = v0;
  v2 = *v0;
  v3 = sub_22892EDE8();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22892EDC8();
  v8 = sub_22892EDD8();
  v9 = sub_22892F398();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v23 = v11;
    *v10 = 136446210;
    v12 = sub_22892F948();
    v14 = sub_2288B748C(v12, v13, &v23);

    *(v10 + 4) = v14;
    _os_log_impl(&dword_2288B2000, v8, v9, "[%{public}s] Received notification of samples removed", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x22AAC47E0](v11, -1, -1);
    MEMORY[0x22AAC47E0](v10, -1, -1);
  }

  (*(v4 + 8))(v7, v3);
  v15 = v1[13];
  os_unfair_lock_lock((v15 + 32));
  v16 = *(v15 + 16);
  if (v16)
  {
    v17 = *(v15 + 24);
    v18 = swift_allocObject();
    *(v18 + 16) = v16;
    *(v18 + 24) = v17;
    v19 = swift_allocObject();
    *(v19 + 16) = sub_228925924;
    *(v19 + 24) = v18;
    v20 = swift_allocObject();
    *(v20 + 16) = sub_228925924;
    *(v20 + 24) = v18;
    *(v15 + 16) = sub_228926A14;
    *(v15 + 24) = v20;

    os_unfair_lock_unlock((v15 + 32));
    v21 = *(v19 + 24);
    (*(v19 + 16))();
    sub_2288DEB1C(sub_22892594C);
  }

  else
  {
    os_unfair_lock_unlock((v15 + 32));
  }
}

uint64_t sub_228924F68()
{
  v1 = *(v0 + 32);
  swift_unknownObjectRelease();
  v2 = *(v0 + 48);
  swift_unknownObjectRelease();
  v3 = *(v0 + 56);

  v4 = *(v0 + 80);

  v5 = *(v0 + 96);

  v6 = *(v0 + 104);

  v7 = *(v0 + 112);

  return v0;
}

uint64_t sub_228924FD0()
{
  sub_228924F68();

  return swift_deallocClassInstance();
}

void sub_228925090()
{
  type metadata accessor for VitalsOutlierNotificationAnalysisStateCache.CachedValue(319);
  if (v0 <= 0x3F)
  {
    sub_2289251A8(319, &qword_27D85BEF8, sub_228925144, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_228925144()
{
  result = qword_27D85BF00;
  if (!qword_27D85BF00)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_27D85BF00);
  }

  return result;
}

void sub_2289251A8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_228925220()
{
  sub_2289251A8(319, &qword_27D85BC08, type metadata accessor for VitalsOutlierNotificationAnalysisState, MEMORY[0x277D83D88]);
  v1 = v0;
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

uint64_t sub_2289252D8(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = sub_22892E088();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v13[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = v1[7];
  v14 = v2;
  v15 = v4;
  sub_22892E198();
  v11 = sub_22892E078();
  LOBYTE(a1) = sub_22891E5D4(a1, v11);

  (*(v6 + 8))(v9, v5);
  return a1 & 1;
}

uint64_t sub_228925428()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 96);
  return v1();
}

uint64_t sub_228925454()
{
  v1 = *(v0 + 64);
  if (v1)
  {
    v2 = *(v1 + OBJC_IVAR____TtC19HealthBalanceDaemon36ImbalanceUserNotificationCoordinator_notificationSyncClient);
    v3 = sub_2288CC5E4();
    sub_22892EF68();
    v4 = sub_22892F7E8();
    MEMORY[0x22AAC3770](v4);

    v5 = sub_22891E4DC(0x6F63737065656C73, 0xEB000000002E6572, v3);
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

uint64_t sub_228925538()
{
  v0 = sub_22892DFB8();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v4, *MEMORY[0x277CC9830], v0);
  sub_22892DFC8();
  return (*(v1 + 8))(v4, v0);
}

double sub_228925650(void *a1)
{
  v1 = [a1 daemon];
  if (v1 && (v2 = v1, v3 = [v1 behavior], v4 = objc_msgSend(v3, sel_isAppleWatch), v3, v2, v4))
  {
    return 300.0;
  }

  else
  {
    return 600.0;
  }
}

uint64_t sub_228925728()
{
  v1 = *(v0 + 64);
  if (!v1)
  {
    return MEMORY[0x277D84FA0];
  }

  v2 = *(v1 + OBJC_IVAR____TtC19HealthBalanceDaemon36ImbalanceUserNotificationCoordinator_notificationSyncClient);
  return sub_2288CC5E4();
}

uint64_t sub_228925770@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_22892F3F8();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 104))(v9, *a1, v5);
  sub_22892F3E8();
  (*(v6 + 8))(v9, v5);
  v10 = sub_22892F3C8();
  if (v2)
  {
  }

  v12 = v10;

  if (v12)
  {
    v13 = v12;
    [v13 integerValue];
    sub_22892EED8();

    v14 = 0;
  }

  else
  {
    v14 = 1;
  }

  v15 = sub_22892EFA8();
  return (*(*(v15 - 8) + 56))(a2, v14, 1, v15);
}

uint64_t sub_228925924()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_22892594C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_228925990(uint64_t a1, uint64_t a2)
{
  sub_2289251A8(0, &qword_27D85BC08, type metadata accessor for VitalsOutlierNotificationAnalysisState, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_228925A24(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for VitalsOutlierNotificationAnalysisState(0);
  v43 = *(v4 - 8);
  v44 = v4;
  v5 = *(v43 + 64);
  MEMORY[0x28223BE20](v4);
  v41 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2289251A8(0, &qword_27D85BC08, type metadata accessor for VitalsOutlierNotificationAnalysisState, MEMORY[0x277D83D88]);
  v8 = v7;
  v9 = *(v7 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v7);
  v42 = &v41 - v11;
  sub_2289265DC();
  v13 = v12;
  v14 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for VitalsOutlierNotificationAnalysisStateCache.CachedValue(0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228926670();
  v22 = *(*(v21 - 8) + 64);
  v23 = MEMORY[0x28223BE20](v21 - 8);
  v25 = &v41 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = *(v23 + 56);
  sub_228926574(a1, v25, type metadata accessor for VitalsOutlierNotificationAnalysisStateCache.CachedValue);
  sub_228926574(a2, &v25[v26], type metadata accessor for VitalsOutlierNotificationAnalysisStateCache.CachedValue);
  v27 = *(v9 + 48);
  if (v27(v25, 1, v8) == 1)
  {
    v28 = 1;
    v29 = v27(&v25[v26], 1, v8);
    v30 = type metadata accessor for VitalsOutlierNotificationAnalysisStateCache.CachedValue;
    if (v29 == 1)
    {
      goto LABEL_20;
    }

    goto LABEL_6;
  }

  sub_228926574(v25, v20, type metadata accessor for VitalsOutlierNotificationAnalysisStateCache.CachedValue);
  if (v27(&v25[v26], 1, v8) != 1)
  {
    v31 = *(v13 + 48);
    sub_228925990(v20, v16);
    sub_228925990(&v25[v26], &v16[v31]);
    v32 = v44;
    v33 = *(v43 + 48);
    if (v33(v16, 1, v44) == 1)
    {
      if (v33(&v16[v31], 1, v32) == 1)
      {
        sub_2289264F4(v16, &qword_27D85BC08, type metadata accessor for VitalsOutlierNotificationAnalysisState);
        v28 = 1;
LABEL_19:
        v30 = type metadata accessor for VitalsOutlierNotificationAnalysisStateCache.CachedValue;
        goto LABEL_20;
      }
    }

    else
    {
      v34 = v42;
      sub_22892600C(v16, v42, &qword_27D85BC08, type metadata accessor for VitalsOutlierNotificationAnalysisState);
      if (v33(&v16[v31], 1, v32) != 1)
      {
        v35 = v41;
        sub_22892608C(&v16[v31], v41, type metadata accessor for VitalsOutlierNotificationAnalysisState);
        sub_22892EFA8();
        sub_2288BAAF4(&unk_2813DEE10, MEMORY[0x277CCB6A8]);
        if (sub_22892F088() & 1) != 0 && (v36 = *(v32 + 20), (sub_22892DEB8()))
        {
          v37 = *(v32 + 24);
          v38 = *(v34 + v37);
          v39 = *(v35 + v37);
          sub_2289266D4(v35, type metadata accessor for VitalsOutlierNotificationAnalysisState);
          sub_2289266D4(v34, type metadata accessor for VitalsOutlierNotificationAnalysisState);
          sub_2289264F4(v16, &qword_27D85BC08, type metadata accessor for VitalsOutlierNotificationAnalysisState);
          v30 = type metadata accessor for VitalsOutlierNotificationAnalysisStateCache.CachedValue;
          if (v38 == v39)
          {
            v28 = 1;
            goto LABEL_20;
          }
        }

        else
        {
          sub_2289266D4(v35, type metadata accessor for VitalsOutlierNotificationAnalysisState);
          sub_2289266D4(v34, type metadata accessor for VitalsOutlierNotificationAnalysisState);
          sub_2289264F4(v16, &qword_27D85BC08, type metadata accessor for VitalsOutlierNotificationAnalysisState);
        }

        goto LABEL_18;
      }

      sub_2289266D4(v34, type metadata accessor for VitalsOutlierNotificationAnalysisState);
    }

    sub_2289266D4(v16, sub_2289265DC);
LABEL_18:
    v28 = 0;
    goto LABEL_19;
  }

  sub_2289264F4(v20, &qword_27D85BC08, type metadata accessor for VitalsOutlierNotificationAnalysisState);
LABEL_6:
  v28 = 0;
  v30 = sub_228926670;
LABEL_20:
  sub_2289266D4(v25, v30);
  return v28;
}

uint64_t sub_22892600C(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_2289251A8(0, a3, a4, MEMORY[0x277D83D88]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_22892608C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2289260F4(uint64_t a1)
{
  v32 = a1;
  v1 = sub_22892DFB8();
  v2 = *(v1 - 8);
  v3 = v2[8];
  MEMORY[0x28223BE20](v1);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22892E048();
  v30 = *(v6 - 8);
  v31 = v6;
  v7 = *(v30 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22892DEF8();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = sub_22892EFA8();
  v28 = *(v12 - 8);
  v29 = v12;
  v13 = *(v28 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22892DED8();
  v16 = *MEMORY[0x277CC9830];
  v17 = v2[13];
  v17(v5, v16, v1);
  sub_22892DFC8();
  v18 = v2[1];
  v18(v5, v1);
  sub_22892EF48();
  result = sub_22892EF68();
  if (__OFSUB__(result, 13))
  {
    __break(1u);
  }

  else
  {
    v27 = result - 13;
    v17(v5, v16, v1);
    sub_22892DFC8();
    v18(v5, v1);
    v33 = 0;
    v34 = 0xE000000000000000;
    sub_22892F648();

    v33 = 0xD00000000000002ELL;
    v34 = 0x80000002289355B0;
    sub_2288BAAF4(&qword_2813DEDF0, MEMORY[0x277CCB6A8]);
    v20 = v29;
    v21 = sub_22892F7E8();
    MEMORY[0x22AAC3770](v21);

    v22 = objc_allocWithZone(MEMORY[0x277D10868]);
    v23 = sub_22892DFF8();
    v24 = sub_22892F098();

    v25 = [v22 initWithProfile:v32 cachingSession:0 gregorianCalendar:v23 morningIndexRange:v27 ascending:14 options:1 debugIdentifier:{132, v24}];

    (*(v30 + 8))(v9, v31);
    v26 = sub_2288E72B4();

    (*(v28 + 8))(v15, v20);
    return v26;
  }

  return result;
}

uint64_t sub_2289264F4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_2289251A8(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t block_copy_helper_11(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_228926574(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_2289265DC()
{
  if (!qword_27D85BF38)
  {
    sub_2289251A8(255, &qword_27D85BC08, type metadata accessor for VitalsOutlierNotificationAnalysisState, MEMORY[0x277D83D88]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27D85BF38);
    }
  }
}

void sub_228926670()
{
  if (!qword_27D85BF40[0])
  {
    type metadata accessor for VitalsOutlierNotificationAnalysisStateCache.CachedValue(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, qword_27D85BF40);
    }
  }
}

uint64_t sub_2289266D4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_228926734()
{
  v1 = v0;
  v2 = *v0;
  v3 = sub_22892EDE8();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22892EDC8();
  v8 = sub_22892EDD8();
  v9 = sub_22892F398();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v22 = v11;
    *v10 = 136446210;
    v12 = sub_22892F948();
    v14 = sub_2288B748C(v12, v13, &v22);

    *(v10 + 4) = v14;
    _os_log_impl(&dword_2288B2000, v8, v9, "[%{public}s] Received notification of key-value domain change", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x22AAC47E0](v11, -1, -1);
    MEMORY[0x22AAC47E0](v10, -1, -1);
  }

  (*(v4 + 8))(v7, v3);
  v15 = v1[14];
  v16 = v15 + *(*v15 + *MEMORY[0x277D841D0] + 16);
  v17 = (*(*v15 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v15 + v17));
  sub_2289266D4(v16, type metadata accessor for VitalsOutlierNotificationAnalysisStateCache.CachedValue);
  sub_2289251A8(0, &qword_27D85BC08, type metadata accessor for VitalsOutlierNotificationAnalysisState, MEMORY[0x277D83D88]);
  (*(*(v18 - 8) + 56))(v16, 1, 1, v18);
  v19 = v16 + *(type metadata accessor for VitalsOutlierNotificationAnalysisStateCache(0) + 20);
  if (*v19)
  {
    v20 = *(v19 + 8);
    (*v19)();
  }

  os_unfair_lock_unlock((v15 + v17));
}

uint64_t sub_228926A5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  v30 = sub_22892EB78();
  v3 = *(v30 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v30);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22892E9E8();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for VitalsOutlierNotificationHoldIdentifier(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22892E9F8();
  v17 = (*(v8 + 88))(v11, v7);
  if (v17 == *MEMORY[0x277D10088])
  {
    (*(v8 + 96))(v11, v7);
    v18 = v30;
    (*(v3 + 32))(v6, v11, v30);
    *&v16[*(v12 + 20)] = sub_22892EB68();
    sub_22892E9A8();
    v19 = sub_22892EA08();
    (*(*(v19 - 8) + 8))(a1, v19);
    (*(v3 + 8))(v6, v18);
    v20 = v31;
    sub_22892B004(v16, v31, type metadata accessor for VitalsOutlierNotificationHoldIdentifier);
    v21 = 0;
    v22 = v20;
  }

  else
  {
    v23 = a1;
    v24 = v31;
    if (v17 == *MEMORY[0x277D10078])
    {
      v25 = sub_22892EA08();
      (*(*(v25 - 8) + 8))(v23, v25);
    }

    else
    {
      v26 = *MEMORY[0x277D10080];
      v27 = v17;
      v28 = sub_22892EA08();
      (*(*(v28 - 8) + 8))(v23, v28);
      if (v27 != v26)
      {
        (*(v8 + 8))(v11, v7);
      }
    }

    v21 = 1;
    v22 = v24;
  }

  return (*(v13 + 56))(v22, v21, 1, v12);
}

uint64_t sub_228926E04()
{
  sub_22892F648();

  sub_22892EF68();
  v1 = sub_22892F7E8();
  MEMORY[0x22AAC3770](v1);

  MEMORY[0x22AAC3770](46, 0xE100000000000000);
  v4 = *(v0 + *(type metadata accessor for VitalsOutlierNotificationHoldIdentifier(0) + 20));
  v2 = sub_22892F7E8();
  MEMORY[0x22AAC3770](v2);

  return 0x756F736C61746976;
}

uint64_t sub_228926F08(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t sub_228926F3C(void (*a1)(char *, void, uint64_t), void (*a2)(uint64_t), uint64_t a3)
{
  v233 = a2;
  v234 = a3;
  v238 = a1;
  v240 = *v3;
  v220 = sub_22892EFA8();
  v217 = *(v220 - 8);
  v4 = *(v217 + 64);
  MEMORY[0x28223BE20](v220);
  v219 = &v204 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22892A5FC(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v216 = &v204 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v218 = type metadata accessor for VitalsOutlierNotificationAnalysisState(0);
  v215 = *(v218 - 8);
  v9 = *(v215 + 64);
  v10 = MEMORY[0x28223BE20](v218);
  v211 = &v204 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v213 = &v204 - v12;
  sub_2288B5C84(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v207 = &v204 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v221 = &v204 - v17;
  v18 = sub_22892DEF8();
  v224 = *(v18 - 8);
  v19 = *(v224 + 64);
  v20 = MEMORY[0x28223BE20](v18);
  v208 = &v204 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v20);
  v209 = &v204 - v23;
  MEMORY[0x28223BE20](v22);
  v222 = &v204 - v24;
  v25 = sub_22892E6D8();
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v25);
  v231 = (&v204 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_2288BF3F4();
  v30 = *(*(v29 - 8) + 64);
  MEMORY[0x28223BE20](v29 - 8);
  v32 = &v204 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2288C0BA8();
  v235 = *(v33 - 1);
  v236 = v33;
  v34 = *(v235 + 64);
  v35 = MEMORY[0x28223BE20](v33);
  v228 = &v204 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35);
  v38 = &v204 - v37;
  v39 = sub_22892EDE8();
  v40 = *(v39 - 8);
  v41 = *(v40 + 64);
  v42 = MEMORY[0x28223BE20](v39);
  v229 = &v204 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = MEMORY[0x28223BE20](v42);
  v223 = &v204 - v45;
  v46 = MEMORY[0x28223BE20](v44);
  v206 = &v204 - v47;
  v48 = MEMORY[0x28223BE20](v46);
  v212 = &v204 - v49;
  v50 = MEMORY[0x28223BE20](v48);
  v210 = &v204 - v51;
  v52 = MEMORY[0x28223BE20](v50);
  v226 = &v204 - v53;
  MEMORY[0x28223BE20](v52);
  v55 = &v204 - v54;
  sub_22892EDC8();
  v56 = sub_22892EDD8();
  v57 = sub_22892F398();
  v58 = os_log_type_enabled(v56, v57);
  v232 = v38;
  v227 = v25;
  v239 = v39;
  v225 = v18;
  if (v58)
  {
    v59 = swift_slowAlloc();
    v214 = v26;
    v60 = v59;
    v61 = swift_slowAlloc();
    v205 = v32;
    v62 = v61;
    v241 = v61;
    *v60 = 136446210;
    v63 = sub_22892F948();
    v230 = v40;
    v65 = sub_2288B748C(v63, v64, &v241);
    v40 = v230;

    *(v60 + 4) = v65;
    _os_log_impl(&dword_2288B2000, v56, v57, "[%{public}s] Beginning notification determination", v60, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v62);
    v66 = v62;
    v32 = v205;
    MEMORY[0x22AAC47E0](v66, -1, -1);
    v67 = v60;
    v26 = v214;
    MEMORY[0x22AAC47E0](v67, -1, -1);

    v68 = *(v40 + 8);
    v68(v55, v239);
  }

  else
  {

    v68 = *(v40 + 8);
    v68(v55, v39);
  }

  v69 = *(v237 + 16);
  v70 = *(v240 + 80);
  v71 = *(v240 + 88);
  (*(v71 + 48))(v238, v70, v71);
  if ((*(v235 + 48))(v32, 1, v236) != 1)
  {
    v82 = v232;
    sub_22892B004(v32, v232, sub_2288C0BA8);
    v83 = v228;
    sub_2288BFDEC(v82, v228, sub_2288C0BA8);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v85 = *(v83 + 8);
      v241 = *v83;
      v84 = v241;
      v242 = v85;
      sub_2288B7AEC();
      swift_willThrowTypedImpl();
      v86 = v226;
      sub_22892EDC8();
      v87 = v84;
      v88 = sub_22892EDD8();
      v89 = sub_22892F378();

      if (os_log_type_enabled(v88, v89))
      {
        v90 = swift_slowAlloc();
        v230 = v40;
        v236 = v68;
        v91 = v90;
        v238 = swift_slowAlloc();
        v92 = swift_slowAlloc();
        v241 = v92;
        *v91 = 136446466;
        v93 = sub_22892F948();
        v95 = sub_2288B748C(v93, v94, &v241);
        v96 = v232;

        *(v91 + 4) = v95;
        *(v91 + 12) = 2114;
        swift_allocError();
        *v97 = v84;
        *(v97 + 8) = v85;
        v98 = v84;
        v99 = _swift_stdlib_bridgeErrorToNSError();
        *(v91 + 14) = v99;
        v100 = v238;
        *v238 = v99;
        _os_log_impl(&dword_2288B2000, v88, v89, "[%{public}s] Error enumerating day summary %{public}@", v91, 0x16u);
        sub_22892B324(v100, sub_2288D6D64);
        MEMORY[0x22AAC47E0](v100, -1, -1);
        __swift_destroy_boxed_opaque_existential_0(v92);
        MEMORY[0x22AAC47E0](v92, -1, -1);
        MEMORY[0x22AAC47E0](v91, -1, -1);

        v101 = v236(v86, v239);
      }

      else
      {

        v101 = (v68)(v86, v239);
        v96 = v232;
      }

      v233(v101);

      v119 = v96;
      return sub_22892B324(v119, sub_2288C0BA8);
    }

    v235 = v70;
    v103 = v227;
    (*(v26 + 32))(v231, v83, v227);
    if ((sub_22892E698() & 1) == 0)
    {
      goto LABEL_15;
    }

    v104 = v221;
    sub_22892EC18();
    v105 = v104;
    v106 = v224;
    v107 = v225;
    if ((*(v224 + 48))(v105, 1, v225) == 1)
    {
      sub_22892B324(v105, sub_2288B5C84);
      v103 = v227;
LABEL_15:
      v108 = v223;
      sub_22892EDC8();
      v109 = sub_22892EDD8();
      v110 = sub_22892F398();
      if (os_log_type_enabled(v109, v110))
      {
        v111 = swift_slowAlloc();
        v112 = swift_slowAlloc();
        v230 = v40;
        v236 = v68;
        v113 = v112;
        v241 = v112;
        *v111 = 136446210;
        v114 = sub_22892F948();
        v116 = v108;
        v117 = sub_2288B748C(v114, v115, &v241);

        *(v111 + 4) = v117;
        _os_log_impl(&dword_2288B2000, v109, v110, "[%{public}s] No data available for analysis, returning.", v111, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v113);
        MEMORY[0x22AAC47E0](v113, -1, -1);
        MEMORY[0x22AAC47E0](v111, -1, -1);

        v118 = v236(v116, v239);
      }

      else
      {

        v118 = (v68)(v108, v239);
      }

      v233(v118);
      (*(v26 + 8))(v231, v103);
      goto LABEL_21;
    }

    v236 = v68;
    v230 = v40;
    v120 = (*(v106 + 32))(v222, v105, v107);
    v121 = MEMORY[0x22AAC2D10](v120);
    v122 = v235;
    v123 = (*(v71 + 24))(v235, v71);
    if (v121 < v123)
    {
      (*(v71 + 136))(v122, v71);
    }

    v124 = v219;
    sub_22892E5E8();
    v125 = v216;
    (*(v71 + 64))(v124, v122, v71);
    v126 = *(v217 + 8);
    v126(v124, v220);
    v127 = v218;
    if ((*(v215 + 48))(v125, 1, v218) == 1)
    {
      sub_22892B324(v125, sub_22892A5FC);
      v128 = v121;
    }

    else
    {
      v129 = v213;
      sub_22892B004(v125, v213, type metadata accessor for VitalsOutlierNotificationAnalysisState);
      if (*(v129 + *(v127 + 24)) >= v121)
      {
        v175 = v210;
        sub_22892EDC8();
        v176 = sub_22892EDD8();
        v177 = sub_22892F398();
        if (os_log_type_enabled(v176, v177))
        {
          v178 = swift_slowAlloc();
          v179 = swift_slowAlloc();
          v241 = v179;
          *v178 = 136446210;
          v180 = sub_22892F948();
          v214 = v26;
          v182 = sub_2288B748C(v180, v181, &v241);
          v26 = v214;

          *(v178 + 4) = v182;
          v136 = v222;
          v137 = v227;
          _os_log_impl(&dword_2288B2000, v176, v177, "[%{public}s] Notification state unchanged", v178, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v179);
          MEMORY[0x22AAC47E0](v179, -1, -1);
          MEMORY[0x22AAC47E0](v178, -1, -1);

          v183 = v236(v175, v239);
          v144 = v232;
        }

        else
        {

          v183 = v236(v175, v239);
          v144 = v232;
          v136 = v222;
          v137 = v227;
        }

        v233(v183);
        sub_22892B324(v213, type metadata accessor for VitalsOutlierNotificationAnalysisState);
LABEL_48:
        (*(v224 + 8))(v136, v225);
        (*(v26 + 8))(v231, v137);
        v119 = v144;
        return sub_22892B324(v119, sub_2288C0BA8);
      }

      v128 = v121;
      sub_22892B324(v129, type metadata accessor for VitalsOutlierNotificationAnalysisState);
    }

    v130 = v219;
    sub_22892E5E8();
    v131 = sub_22892877C(v130, v128, v235, v71);
    v126(v130, v220);
    if (v131)
    {
      v132 = v212;
      sub_22892EDC8();
      v133 = sub_22892EDD8();
      v134 = sub_22892F398();
      v135 = os_log_type_enabled(v133, v134);
      v136 = v222;
      v137 = v227;
      if (v135)
      {
        v138 = swift_slowAlloc();
        v139 = swift_slowAlloc();
        v241 = v139;
        *v138 = 136446210;
        v140 = sub_22892F948();
        v214 = v26;
        v142 = sub_2288B748C(v140, v141, &v241);
        v26 = v214;

        *(v138 + 4) = v142;
        _os_log_impl(&dword_2288B2000, v133, v134, "[%{public}s] Notification is held", v138, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v139);
        MEMORY[0x22AAC47E0](v139, -1, -1);
        MEMORY[0x22AAC47E0](v138, -1, -1);
      }

      v143 = v236(v132, v239);
      v144 = v232;
      v233(v143);
      goto LABEL_48;
    }

    v145 = v227;
    v146 = sub_22892EC38();
    v147 = v222;
    if (v146)
    {
      v148 = sub_228928BB0(v235, v71);
      v149 = v128 < v123 || v148;
      if (v128 >= v123 || v148)
      {
        goto LABEL_36;
      }
    }

    else if (v128 >= v123)
    {
      v149 = 0;
LABEL_36:
      LODWORD(v229) = v149;
      v214 = v26;
      v150 = v235;
      (*(v71 + 40))(v238, v235, v71);
      v151 = v209;
      sub_22892DE88();
      v152 = *(v71 + 8);
      v153 = v208;
      v228 = v71 + 8;
      v226 = v152;
      (v152)(v150, v71);
      sub_22892B3D4(&qword_2813DFEE8, MEMORY[0x277CC9578]);
      v154 = v225;
      v155 = sub_22892F048();
      v156 = (v224 + 8);
      v157 = v153;
      v158 = *(v224 + 8);
      v158(v157, v154);
      if (v155)
      {
        v221 = v158;
        v223 = v156;
        v159 = v150;
        if ((*(v71 + 32))(v150, v71))
        {
          result = sub_228928CA8(v238, v128, v231);
          if (result)
          {
            v160 = v206;
            sub_22892EDC8();
            v161 = sub_22892EDD8();
            v162 = sub_22892F398();
            if (os_log_type_enabled(v161, v162))
            {
              v163 = swift_slowAlloc();
              v164 = swift_slowAlloc();
              v241 = v164;
              *v163 = 136446210;
              v165 = sub_22892F948();
              v167 = sub_2288B748C(v165, v166, &v241);

              *(v163 + 4) = v167;
              _os_log_impl(&dword_2288B2000, v161, v162, "[%{public}s] Suppressing outlier notification due to likelihood of it being due to a nap", v163, 0xCu);
              __swift_destroy_boxed_opaque_existential_0(v164);
              MEMORY[0x22AAC47E0](v164, -1, -1);
              MEMORY[0x22AAC47E0](v163, -1, -1);
            }

            v168 = v236(v160, v239);
            v169 = v214;
            v170 = v227;
            v171 = v222;
            v172 = v209;
            v173 = v221;
            v233(v168);
            v174 = v225;
            v173(v172, v225);
            v173(v171, v174);
            (*(v169 + 8))(v231, v170);
            goto LABEL_21;
          }

          if (v128 < v123)
          {
            if ((v229 & 1) == 0)
            {
              __break(1u);
              return result;
            }

            (*(v71 + 120))(v231, v150, v71);
          }

          else
          {
            (*(v71 + 112))(v231, v150, v71);
          }
        }

        v194 = v128;
        v195 = v211;
        sub_22892E5E8();
        v196 = v218;
        v197 = v195 + *(v218 + 20);
        v198 = v150;
        v199 = v226;
        (v226)(v198, v71);
        *(v195 + *(v196 + 24)) = v194;
        (*(v71 + 96))(v195, v159, v71);
        v200 = sub_22892B324(v195, type metadata accessor for VitalsOutlierNotificationAnalysisState);
        v201 = v225;
        if (v229)
        {
          v202 = v207;
          v199(v159, v71);
          (*(v224 + 56))(v202, 0, 1, v201);
          v200 = (*(v71 + 80))(v202, v159, v71);
        }

        v233(v200);
        v203 = v221;
        (v221)(v209, v201);
        v203(v222, v201);
      }

      else
      {
        v193 = (*(v71 + 104))(v151, v150, v71);
        v233(v193);
        v158(v151, v154);
        v158(v222, v154);
      }

      (*(v214 + 8))(v231, v227);
LABEL_21:
      v119 = v232;
      return sub_22892B324(v119, sub_2288C0BA8);
    }

    v184 = v147;
    v185 = v128;
    v186 = v211;
    v187 = v231;
    sub_22892E5E8();
    v188 = v145;
    v189 = v218;
    v190 = v186 + *(v218 + 20);
    v191 = v235;
    (*(v71 + 8))(v235, v71);
    *(v186 + *(v189 + 24)) = v185;
    (*(v71 + 96))(v186, v191, v71);
    v192 = sub_22892B324(v186, type metadata accessor for VitalsOutlierNotificationAnalysisState);
    v233(v192);
    (*(v224 + 8))(v184, v225);
    (*(v26 + 8))(v187, v188);
    goto LABEL_21;
  }

  sub_22892B324(v32, sub_2288BF3F4);
  v72 = v229;
  sub_22892EDC8();
  v73 = sub_22892EDD8();
  v74 = sub_22892F378();
  if (os_log_type_enabled(v73, v74))
  {
    v75 = swift_slowAlloc();
    v76 = v68;
    v77 = swift_slowAlloc();
    v241 = v77;
    *v75 = 136446210;
    v78 = sub_22892F948();
    v80 = sub_2288B748C(v78, v79, &v241);

    *(v75 + 4) = v80;
    _os_log_impl(&dword_2288B2000, v73, v74, "[%{public}s] Configuration issue: no day summary result returned", v75, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v77);
    MEMORY[0x22AAC47E0](v77, -1, -1);
    MEMORY[0x22AAC47E0](v75, -1, -1);

    v81 = v76(v72, v239);
  }

  else
  {

    v81 = (v68)(v72, v239);
  }

  return (v233)(v81);
}

uint64_t sub_22892877C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v38 = a2;
  sub_22892B0D4(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22892B108(0);
  v46 = v11;
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v42 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22892B1C8(0);
  v16 = v15;
  v43 = *(v15 - 8);
  v17 = *(v43 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v38 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = a1;
  sub_22892B13C();
  sub_22892B3D4(&qword_27D85C010, sub_22892B1C8);
  v47 = v19;
  v20 = v16;
  sub_22892ECE8();
  result = (*(a4 + 128))(a3, a4);
  v22 = result;
  v23 = 0;
  v24 = result + 56;
  v25 = 1 << *(result + 32);
  v26 = -1;
  if (v25 < 64)
  {
    v26 = ~(-1 << v25);
  }

  v27 = v26 & *(result + 56);
  v28 = (v25 + 63) >> 6;
  v44 = (v12 + 48);
  v45 = v12 + 56;
  v40 = (v12 + 8);
  v41 = (v12 + 32);
  v29 = v20;
  while (v27)
  {
LABEL_9:
    v31 = __clz(__rbit64(v27));
    v27 &= v27 - 1;
    v32 = (*(v22 + 48) + ((v23 << 10) | (16 * v31)));
    v34 = *v32;
    v33 = v32[1];

    sub_22892ECF8();

    v35 = v46;
    if ((*v44)(v10, 1, v46) == 1)
    {
      result = sub_22892B324(v10, sub_22892B0D4);
    }

    else
    {
      v39 = v29;
      v36 = v42;
      (*v41)(v42, v10, v35);
      swift_getKeyPath();
      sub_22892ED08();

      result = (*v40)(v36, v35);
      if (v50 == 1)
      {
        v29 = v39;
      }

      else
      {
        v29 = v39;
        if (v49 >= v38)
        {
          v37 = 1;
LABEL_16:

          (*(v43 + 8))(v47, v29);
          return v37;
        }
      }
    }
  }

  while (1)
  {
    v30 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      break;
    }

    if (v30 >= v28)
    {
      v37 = 0;
      goto LABEL_16;
    }

    v27 = *(v24 + 8 * v30);
    ++v23;
    if (v27)
    {
      v23 = v30;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

BOOL sub_228928BB0(uint64_t a1, uint64_t a2)
{
  sub_2288B5C84(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(a2 + 72))(a1, a2);
  v8 = sub_22892DEF8();
  v9 = (*(*(v8 - 8) + 48))(v7, 1, v8) == 1;
  sub_22892B324(v7, sub_2288B5C84);
  return v9;
}

uint64_t sub_228928CA8(void (*a1)(char *, void, uint64_t), uint64_t a2, void (*a3)(char *, uint64_t))
{
  v4 = v3;
  v227 = a3;
  v216 = v4;
  v217 = a1;
  v218 = *v4;
  v195 = sub_22892EDE8();
  v194 = *(v195 - 8);
  v6 = *(v194 + 64);
  MEMORY[0x28223BE20](v195);
  v193 = &v176 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22892B06C();
  v187 = v8;
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v186 = &v176 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v184 = &v176 - v12;
  sub_228915874();
  v185 = v13;
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v188 = &v176 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v189 = &v176 - v17;
  v208 = sub_22892E038();
  v207 = *(v208 - 8);
  v18 = v207[8];
  MEMORY[0x28223BE20](v208);
  v206 = &v176 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2288B5C84(0);
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x28223BE20](v20 - 8);
  v191 = &v176 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v205 = &v176 - v24;
  v25 = sub_22892DEF8();
  v26 = *(v25 - 8);
  v209 = v25;
  v210 = v26;
  v27 = *(v26 + 64);
  v28 = MEMORY[0x28223BE20](v25);
  v190 = &v176 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x28223BE20](v28);
  v204 = &v176 - v31;
  MEMORY[0x28223BE20](v30);
  v211 = &v176 - v32;
  v197 = sub_22892E048();
  v196 = *(v197 - 8);
  v33 = *(v196 + 64);
  MEMORY[0x28223BE20](v197);
  v214 = &v176 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v203 = sub_22892EFA8();
  v202 = *(v203 - 8);
  v35 = *(v202 + 64);
  v36 = MEMORY[0x28223BE20](v203);
  v200 = &v176 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = MEMORY[0x28223BE20](v36);
  v199 = &v176 - v39;
  MEMORY[0x28223BE20](v38);
  v201 = &v176 - v40;
  sub_2288BF32C(0);
  v42 = *(*(v41 - 8) + 64);
  MEMORY[0x28223BE20](v41 - 8);
  v225 = &v176 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v222 = sub_22892E6D8();
  v220 = *(v222 - 8);
  v44 = *(v220 + 64);
  MEMORY[0x28223BE20](v222);
  v219 = &v176 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2288CD8F0(0);
  v47 = *(*(v46 - 8) + 64);
  v48 = MEMORY[0x28223BE20](v46 - 8);
  v213 = &v176 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v48);
  v51 = &v176 - v50;
  v52 = sub_22892DDC8();
  v53 = *(v52 - 8);
  v223 = v52;
  v224 = v53;
  v54 = *(v53 + 64);
  v55 = MEMORY[0x28223BE20](v52);
  v192 = &v176 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = MEMORY[0x28223BE20](v55);
  v215 = &v176 - v58;
  MEMORY[0x28223BE20](v57);
  v221 = &v176 - v59;
  v226 = sub_22892E5A8();
  v60 = *(v226 - 8);
  v61 = *(v60 + 64);
  v62 = MEMORY[0x28223BE20](v226);
  v198 = &v176 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = MEMORY[0x28223BE20](v62);
  v212 = &v176 - v65;
  v66 = MEMORY[0x28223BE20](v64);
  v68 = &v176 - v67;
  MEMORY[0x28223BE20](v66);
  v70 = &v176 - v69;
  v71 = sub_22892E948();
  v72 = *(v71 - 8);
  v73 = *(v72 + 64);
  v74 = MEMORY[0x28223BE20](v71);
  v75 = MEMORY[0x28223BE20](v74);
  v77 = &v176 - v76;
  v78 = MEMORY[0x28223BE20](v75);
  v80 = &v176 - v79;
  MEMORY[0x28223BE20](v78);
  v83 = &v176 - v82;
  if (a2 != 2)
  {
    return 0;
  }

  v182 = v81;
  v183 = v51;
  sub_22892E5C8();
  v84 = sub_22892E898();
  v85 = *(v72 + 8);
  v85(v83, v71);
  if ((v84 & 1) == 0)
  {
    return 0;
  }

  sub_22892E5C8();
  sub_22892E938();
  v179 = v71;
  v180 = v85;
  v85(v80, v71);
  v86 = sub_22892E598();
  v87 = *(v60 + 8);
  v181 = v60 + 8;
  result = v87(v70, v226);
  if (v86)
  {
    v89 = [objc_opt_self() minuteUnit];
    v90 = [objc_opt_self() quantityWithUnit:v89 doubleValue:90.0];

    LODWORD(v89) = [v86 hk:v90 isGreaterThanQuantity:?];
    v91 = v225;
    v92 = v183;
    if (!v89)
    {
      return 1;
    }

    sub_22892E5C8();
    sub_22892E938();
    v93 = v87;
    v94 = v179;
    v180(v77, v179);
    sub_22892E588();
    v178 = v93;
    v93(v68, v226);
    v96 = v223;
    v95 = v224;
    v97 = *(v224 + 48);
    if (v97(v92, 1, v223) == 1)
    {
LABEL_6:
      v98 = sub_2288CD8F0;
      v99 = v92;
LABEL_9:
      sub_22892B324(v99, v98);
      return 0;
    }

    v177 = v97;
    v100 = *(v95 + 32);
    v101 = v221;
    v183 = (v95 + 32);
    v176 = v100;
    v100(v221, v92, v96);
    v102 = *(v216 + 2);
    (*(*(v218 + 88) + 56))(v217, *(v218 + 80));
    v103 = v220;
    if ((*(v220 + 48))(v91, 1, v222) == 1)
    {
      (*(v95 + 8))(v101, v96);
      v98 = sub_2288BF32C;
      v99 = v91;
      goto LABEL_9;
    }

    (*(v103 + 32))(v219, v91, v222);
    v104 = v182;
    sub_22892E5C8();
    v105 = v212;
    sub_22892E938();
    v106 = v104;
    v107 = v180;
    v180(v106, v94);
    v92 = v213;
    sub_22892E588();
    v178(v105, v226);
    if (v177(v92, 1, v96) == 1)
    {
      (*(v103 + 8))(v219, v222);
      (*(v224 + 8))(v221, v96);
      goto LABEL_6;
    }

    v176(v215, v92, v96);
    sub_22892E5C8();
    v108 = v199;
    sub_22892E8A8();
    v107(v83, v94);
    v109 = v107;
    v110 = v200;
    sub_22892E5E8();
    v111 = v201;
    sub_22892EF18();
    v112 = *(v202 + 8);
    v113 = v110;
    v114 = v203;
    v112(v113, v203);
    v112(v108, v114);
    v115 = sub_22892EF68();
    v112(v111, v114);
    sub_22892E5C8();
    v116 = v198;
    sub_22892E938();
    v109(v83, v94);
    sub_22892E578();
    v178(v116, v226);
    v117 = v207;
    v118 = v207[13];
    v119 = v206;
    LODWORD(v226) = *MEMORY[0x277CC9968];
    v120 = v208;
    v217 = v118;
    v118(v206);
    v121 = v204;
    sub_22892DD98();
    v122 = v205;
    v225 = v115;
    sub_22892E028();
    v124 = v209;
    v123 = v210;
    v125 = v210 + 8;
    v227 = *(v210 + 8);
    v227(v121, v209);
    v216 = v117[1];
    v216(v119, v120);
    v213 = *(v123 + 48);
    if ((v213)(v122, 1, v124) == 1)
    {
      v126 = v122;
LABEL_17:
      sub_22892B324(v126, sub_2288B5C84);
      v131 = v214;
      v133 = v223;
      v132 = v224;
      goto LABEL_18;
    }

    v127 = *(v123 + 32);
    v212 = (v123 + 32);
    v207 = v127;
    (v127)(v211, v122, v124);
    v217(v119, v226, v120);
    sub_22892DD78();
    v128 = v191;
    sub_22892E028();
    v129 = v227;
    v227(v121, v124);
    v216(v119, v120);
    v130 = v124;
    if ((v213)(v128, 1, v124) == 1)
    {
      v129(v211, v124);
      v126 = v128;
      goto LABEL_17;
    }

    v226 = v125;
    v151 = v190;
    (v207)(v190, v128, v124);
    v152 = sub_22892B3D4(&qword_2813DFEE8, MEMORY[0x277CC9578]);
    v153 = v211;
    v154 = sub_22892F048();
    v133 = v223;
    v132 = v224;
    if ((v154 & 1) == 0)
    {
      v171 = v227;
      v227(v151, v130);
      v171(v153, v130);
      v131 = v214;
LABEL_18:
      v134 = v215;
      v135 = v193;
      sub_22892EDC8();
      v136 = v192;
      (*(v132 + 16))(v192, v134, v133);
      v137 = sub_22892EDD8();
      v138 = sub_22892F378();
      if (os_log_type_enabled(v137, v138))
      {
        v139 = v132;
        v140 = swift_slowAlloc();
        v141 = swift_slowAlloc();
        v228 = v141;
        *v140 = 136446722;
        v142 = sub_22892F948();
        v144 = sub_2288B748C(v142, v143, &v228);

        *(v140 + 4) = v144;
        *(v140 + 12) = 2080;
        sub_22892B3D4(&qword_27D85BFE0, MEMORY[0x277CC88A8]);
        v145 = sub_22892F7E8();
        v147 = v146;
        v148 = *(v139 + 8);
        v148(v136, v133);
        v149 = sub_2288B748C(v145, v147, &v228);

        *(v140 + 14) = v149;
        *(v140 + 22) = 2048;
        *(v140 + 24) = v225;
        _os_log_impl(&dword_2288B2000, v137, v138, "[%{public}s] Unexpectedly could not shift %s by %ld", v140, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x22AAC47E0](v141, -1, -1);
        MEMORY[0x22AAC47E0](v140, -1, -1);

        (*(v194 + 8))(v135, v195);
        (*(v196 + 8))(v214, v197);
        v148(v215, v133);
        (*(v220 + 8))(v219, v222);
        v148(v221, v133);
      }

      else
      {

        v150 = *(v132 + 8);
        v150(v136, v133);
        (*(v194 + 8))(v135, v195);
        (*(v196 + 8))(v131, v197);
        v150(v134, v133);
        (*(v220 + 8))(v219, v222);
        v150(v221, v133);
      }

      return 0;
    }

    v225 = v152;
    result = sub_22892F048();
    if (result)
    {
      v155 = *(v210 + 16);
      v156 = v184;
      v155(v184, v153, v130);
      v157 = v187;
      v155((v156 + *(v187 + 48)), v151, v130);
      v158 = v186;
      sub_2288BFDEC(v156, v186, sub_22892B06C);
      v159 = *(v157 + 48);
      v160 = v189;
      v161 = v207;
      (v207)(v189, v158, v130);
      v162 = v227;
      v227((v158 + v159), v130);
      sub_22892B004(v156, v158, sub_22892B06C);
      v163 = *(v157 + 48);
      v164 = v185;
      v218 = *(v185 + 36);
      v161(v160 + v218, v158 + v163, v130);
      v162(v158, v130);
      v165 = v188;
      v166 = v221;
      sub_22892DD48();
      v167 = *(v164 + 36);
      if (sub_22892F048() & 1) != 0 || (sub_22892F048() & 1) != 0 || (sub_22892B3D4(&qword_27D85BFE8, MEMORY[0x277CC9578]), (sub_22892F088()))
      {
        sub_22892B324(v165, sub_228915874);
        sub_22892B324(v160, sub_228915874);
        v168 = v227;
        v227(v190, v130);
        v168(v211, v130);
        (*(v196 + 8))(v214, v197);
        v169 = *(v132 + 8);
        v170 = v223;
        v169(v215, v223);
        (*(v220 + 8))(v219, v222);
        v169(v166, v170);
        return 1;
      }

      v172 = sub_22892F088();
      sub_22892B324(v165, sub_228915874);
      sub_22892B324(v160, sub_228915874);
      v173 = v227;
      v227(v190, v130);
      v173(v211, v130);
      (*(v196 + 8))(v214, v197);
      v174 = *(v132 + 8);
      v175 = v223;
      v174(v215, v223);
      (*(v220 + 8))(v219, v222);
      v174(v166, v175);
      return (v172 & 1) != 0;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_22892A400()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_22892A498()
{
  result = sub_22892EFA8();
  if (v1 <= 0x3F)
  {
    result = sub_22892DEF8();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

BOOL sub_22892A524(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_22892EFA8();
  sub_22892B3D4(&unk_2813DEE10, MEMORY[0x277CCB6A8]);
  if (sub_22892F088() & 1) != 0 && (v6 = *(a3 + 20), (sub_22892DEB8()))
  {
    return *(a1 + *(a3 + 24)) == *(a2 + *(a3 + 24));
  }

  else
  {
    return 0;
  }
}

uint64_t sub_22892A630@<X0>(uint64_t a1@<X8>)
{
  v76 = a1;
  sub_22892B204(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v61 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = sub_22892E2D8();
  v72 = *(v69 - 8);
  v5 = *(v72 + 64);
  MEMORY[0x28223BE20](v69);
  v7 = &v61 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x277D83E40];
  v71 = MEMORY[0x277D85418];
  sub_22892BF48(0, &qword_27D85C020, MEMORY[0x277D83E40], MEMORY[0x277D85418]);
  v10 = v9;
  v73 = *(v9 - 8);
  v11 = *(v73 + 8);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v61 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v67 = &v61 - v15;
  v74 = MEMORY[0x277D85AB8];
  sub_22892BF48(0, &qword_27D85C028, v8, MEMORY[0x277D85AB8]);
  v75 = v16;
  v81 = *(v16 - 8);
  v17 = *(v81 + 64);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v61 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v65 = &v61 - v21;
  sub_22892B1C8(0);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22 - 8);
  v68 = &v61 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = sub_22892ECB8();
  v25 = *(v78 - 8);
  v26 = *(v25 + 64);
  v27 = MEMORY[0x28223BE20](v78);
  v29 = &v61 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v62 = &v61 - v30;
  sub_22892B238(0);
  v70 = v31;
  v80 = *(v31 - 8);
  v32 = *(v80 + 64);
  v33 = MEMORY[0x28223BE20](v31);
  v64 = &v61 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v66 = &v61 - v35;
  v84 = 0;
  v85 = 0xE000000000000000;
  sub_22892F648();

  v84 = 0x756F736C61746976;
  v85 = 0xEF2E737265696C74;
  v82 = sub_22892EF68();
  v36 = sub_22892F7E8();
  MEMORY[0x22AAC3770](v36);

  MEMORY[0x22AAC3770](46, 0xE100000000000000);
  v82 = v84;
  v83 = v85;
  v63 = sub_22892B2D0();
  MEMORY[0x22AAC2910](&v84, &v82, MEMORY[0x277D837D0], v63);

  sub_22892E2C8();
  sub_22892ECC8();
  v37 = sub_22892ECD8();
  v38 = v4;
  (*(*(v37 - 8) + 56))(v4, 1, 1, v37);
  sub_22892E2C8();
  sub_22892B3D4(&qword_27D85C040, MEMORY[0x277D853D0]);
  v61 = v20;
  v39 = MEMORY[0x277D83E40];
  v40 = v69;
  sub_22892ECA8();
  v77 = *(v25 + 8);
  v79 = v25 + 8;
  v41 = v29;
  v42 = v78;
  v77(v41, v78);
  sub_22892B324(v38, sub_22892B204);
  (*(v72 + 8))(v7, v40);
  MEMORY[0x22AAC2960](v20, v39);
  v43 = sub_22892B384(&qword_27D85C048, &qword_27D85C020, v71);
  v44 = v67;
  MEMORY[0x22AAC2910](v14, v10, v43);
  v45 = *(v73 + 1);
  v45(v14, v10);
  v46 = v65;
  sub_22892E2B8();
  v45(v44, v10);
  sub_22892B13C();
  v48 = v47;
  sub_22892BF48(0, &qword_27D85AF60, MEMORY[0x277D83B88], MEMORY[0x277D83D88]);
  v74 = sub_22892B384(&qword_27D85C050, &qword_27D85C028, v74);
  v49 = v75;
  v50 = v68;
  v72 = v48;
  v51 = v62;
  sub_22892EC98();
  v52 = *(v81 + 8);
  v81 += 8;
  v73 = v52;
  v52(v46, v49);
  v77(v51, v42);
  v53 = v64;
  MEMORY[0x22AAC2950](v50, v48);
  v54 = sub_22892B3D4(&qword_27D85C058, sub_22892B238);
  v55 = v66;
  v56 = v70;
  MEMORY[0x22AAC2910](v53, v70, v54);
  v57 = *(v80 + 8);
  v80 += 8;
  v57(v53, v56);
  v82 = v84;
  v83 = v85;
  sub_22892E2B8();

  sub_22892E2C8();
  v58 = v61;
  sub_22892EC88();
  sub_22892EC78();
  v59 = v73;
  v73(v58, v49);
  v77(v51, v78);
  v59(v46, v49);
  return (v57)(v55, v56);
}

unint64_t *sub_22892AF44@<X0>(unint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = result[1];
  if ((v4 ^ *result) < 0x4000)
  {
    v11 = 0;
    LOBYTE(v7) = 1;
  }

  else
  {
    v6 = result[2];
    v5 = result[3];
    result = sub_22892BE28(*result, v4, v6, v5, 10);
    if ((v7 & 0x100) != 0)
    {

      v8 = sub_22892B41C(v3, v4, v6, v5, 10);
      v10 = v9;

      result = v8;
      LOBYTE(v7) = v10;
    }

    if (v7)
    {
      v11 = 0;
    }

    else
    {
      v11 = result;
    }
  }

  *a2 = v11;
  *(a2 + 8) = v7 & 1;
  return result;
}

uint64_t sub_22892B004(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_22892B06C()
{
  if (!qword_27D85BFD8)
  {
    sub_22892DEF8();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27D85BFD8);
    }
  }
}

void sub_22892B13C()
{
  if (!qword_27D85C000)
  {
    sub_22892BF48(255, &qword_27D85AF60, MEMORY[0x277D83B88], MEMORY[0x277D83D88]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27D85C000);
    }
  }
}

void sub_22892B26C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_22892B2D0()
{
  result = qword_27D85C038;
  if (!qword_27D85C038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D85C038);
  }

  return result;
}

uint64_t sub_22892B324(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_22892B384(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(void, uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_22892BF48(255, a2, MEMORY[0x277D83E40], a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_22892B3D4(unint64_t *a1, void (*a2)(uint64_t))
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

unsigned __int8 *sub_22892B41C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v64 = a1;
  v65 = a2;
  v66 = a3;
  v67 = a4;
  sub_22892BEF4();

  result = sub_22892F188();
  v8 = result;
  if ((v7 & 0x1000000000000000) != 0)
  {
    v8 = sub_22892B9B4();
    v37 = v36;

    v7 = v37;
    if ((v37 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v7 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v8 & 0x1000000000000000) != 0)
    {
      result = ((v7 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v9 = v8 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_22892F698();
      v9 = v63;
    }

    v10 = *result;
    if (v10 == 43)
    {
      if (v9 >= 1)
      {
        v21 = v9 - 1;
        if (v21)
        {
          v22 = a5 + 48;
          v23 = a5 + 55;
          v24 = a5 + 87;
          if (a5 > 10)
          {
            v22 = 58;
          }

          else
          {
            v24 = 97;
            v23 = 65;
          }

          if (result)
          {
            v15 = 0;
            v25 = result + 1;
            do
            {
              v26 = *v25;
              if (v26 < 0x30 || v26 >= v22)
              {
                if (v26 < 0x41 || v26 >= v23)
                {
                  v19 = 0;
                  if (v26 < 0x61 || v26 >= v24)
                  {
                    goto LABEL_127;
                  }

                  v27 = -87;
                }

                else
                {
                  v27 = -55;
                }
              }

              else
              {
                v27 = -48;
              }

              v28 = v15 * a5;
              if ((v15 * a5) >> 64 != (v15 * a5) >> 63)
              {
                goto LABEL_126;
              }

              v15 = v28 + (v26 + v27);
              if (__OFADD__(v28, (v26 + v27)))
              {
                goto LABEL_126;
              }

              ++v25;
              --v21;
            }

            while (v21);
LABEL_46:
            v19 = v15;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v19 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v10 != 45)
    {
      if (v9)
      {
        v29 = a5 + 48;
        v30 = a5 + 55;
        v31 = a5 + 87;
        if (a5 > 10)
        {
          v29 = 58;
        }

        else
        {
          v31 = 97;
          v30 = 65;
        }

        if (result)
        {
          v32 = 0;
          do
          {
            v33 = *result;
            if (v33 < 0x30 || v33 >= v29)
            {
              if (v33 < 0x41 || v33 >= v30)
              {
                v19 = 0;
                if (v33 < 0x61 || v33 >= v31)
                {
                  goto LABEL_127;
                }

                v34 = -87;
              }

              else
              {
                v34 = -55;
              }
            }

            else
            {
              v34 = -48;
            }

            v35 = v32 * a5;
            if ((v32 * a5) >> 64 != (v32 * a5) >> 63)
            {
              goto LABEL_126;
            }

            v32 = v35 + (v33 + v34);
            if (__OFADD__(v35, (v33 + v34)))
            {
              goto LABEL_126;
            }

            ++result;
            --v9;
          }

          while (v9);
          v19 = v35 + (v33 + v34);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v9 >= 1)
    {
      v11 = v9 - 1;
      if (v11)
      {
        v12 = a5 + 48;
        v13 = a5 + 55;
        v14 = a5 + 87;
        if (a5 > 10)
        {
          v12 = 58;
        }

        else
        {
          v14 = 97;
          v13 = 65;
        }

        if (result)
        {
          v15 = 0;
          v16 = result + 1;
          while (1)
          {
            v17 = *v16;
            if (v17 < 0x30 || v17 >= v12)
            {
              if (v17 < 0x41 || v17 >= v13)
              {
                v19 = 0;
                if (v17 < 0x61 || v17 >= v14)
                {
                  goto LABEL_127;
                }

                v18 = -87;
              }

              else
              {
                v18 = -55;
              }
            }

            else
            {
              v18 = -48;
            }

            v20 = v15 * a5;
            if ((v15 * a5) >> 64 != (v15 * a5) >> 63)
            {
              goto LABEL_126;
            }

            v15 = v20 - (v17 + v18);
            if (__OFSUB__(v20, (v17 + v18)))
            {
              goto LABEL_126;
            }

            ++v16;
            if (!--v11)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v19 = 0;
LABEL_127:

        return v19;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v38 = HIBYTE(v7) & 0xF;
  v64 = v8;
  v65 = v7 & 0xFFFFFFFFFFFFFFLL;
  if (v8 != 43)
  {
    if (v8 != 45)
    {
      if (v38)
      {
        v40 = 0;
        v56 = a5 + 48;
        v57 = a5 + 55;
        v58 = a5 + 87;
        if (a5 > 10)
        {
          v56 = 58;
        }

        else
        {
          v58 = 97;
          v57 = 65;
        }

        v59 = &v64;
        while (1)
        {
          v60 = *v59;
          if (v60 < 0x30 || v60 >= v56)
          {
            if (v60 < 0x41 || v60 >= v57)
            {
              v19 = 0;
              if (v60 < 0x61 || v60 >= v58)
              {
                goto LABEL_127;
              }

              v61 = -87;
            }

            else
            {
              v61 = -55;
            }
          }

          else
          {
            v61 = -48;
          }

          v62 = v40 * a5;
          if ((v40 * a5) >> 64 != (v40 * a5) >> 63)
          {
            goto LABEL_126;
          }

          v40 = v62 + (v60 + v61);
          if (__OFADD__(v62, (v60 + v61)))
          {
            goto LABEL_126;
          }

          v59 = (v59 + 1);
          if (!--v38)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v38)
    {
      v39 = v38 - 1;
      if (v39)
      {
        v40 = 0;
        v41 = a5 + 48;
        v42 = a5 + 55;
        v43 = a5 + 87;
        if (a5 > 10)
        {
          v41 = 58;
        }

        else
        {
          v43 = 97;
          v42 = 65;
        }

        v44 = &v64 + 1;
        while (1)
        {
          v45 = *v44;
          if (v45 < 0x30 || v45 >= v41)
          {
            if (v45 < 0x41 || v45 >= v42)
            {
              v19 = 0;
              if (v45 < 0x61 || v45 >= v43)
              {
                goto LABEL_127;
              }

              v46 = -87;
            }

            else
            {
              v46 = -55;
            }
          }

          else
          {
            v46 = -48;
          }

          v47 = v40 * a5;
          if ((v40 * a5) >> 64 != (v40 * a5) >> 63)
          {
            goto LABEL_126;
          }

          v40 = v47 - (v45 + v46);
          if (__OFSUB__(v47, (v45 + v46)))
          {
            goto LABEL_126;
          }

          ++v44;
          if (!--v39)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v38)
  {
    v48 = v38 - 1;
    if (v48)
    {
      v40 = 0;
      v49 = a5 + 48;
      v50 = a5 + 55;
      v51 = a5 + 87;
      if (a5 > 10)
      {
        v49 = 58;
      }

      else
      {
        v51 = 97;
        v50 = 65;
      }

      v52 = &v64 + 1;
      do
      {
        v53 = *v52;
        if (v53 < 0x30 || v53 >= v49)
        {
          if (v53 < 0x41 || v53 >= v50)
          {
            v19 = 0;
            if (v53 < 0x61 || v53 >= v51)
            {
              goto LABEL_127;
            }

            v54 = -87;
          }

          else
          {
            v54 = -55;
          }
        }

        else
        {
          v54 = -48;
        }

        v55 = v40 * a5;
        if ((v40 * a5) >> 64 != (v40 * a5) >> 63)
        {
          goto LABEL_126;
        }

        v40 = v55 + (v53 + v54);
        if (__OFADD__(v55, (v53 + v54)))
        {
          goto LABEL_126;
        }

        ++v52;
        --v48;
      }

      while (v48);
LABEL_125:
      v19 = v40;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_22892B9B4()
{
  v0 = sub_22892F198();
  v4 = sub_22892BA34(v0, v1, v2, v3);

  return v4;
}

uint64_t sub_22892BA34(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) == 0)
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v15[0] = a3;
      v15[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_22892F0E8();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  v9 = sub_22892F4A8();
  if (!v9)
  {
    v11 = MEMORY[0x277D84F90];
    goto LABEL_13;
  }

  v10 = v9;
  v11 = sub_2288C025C(v9, 0);
  v12 = sub_22892BB8C(v15, (v11 + 4), v10, a1, a2, a3, a4);

  if (v12 == v10)
  {
LABEL_13:
    v13 = v11[2];
    v14 = sub_22892F0E8();

    return v14;
  }

  __break(1u);
LABEL_11:
  sub_22892F698();
LABEL_4:

  return sub_22892F0E8();
}

unint64_t sub_22892BB8C(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_22892BDAC(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_22892F158();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_22892F698();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_22892BDAC(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = sub_22892F128();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

uint64_t sub_22892BDAC(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_22892F168();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x22AAC37A0](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

uint64_t sub_22892BE28(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    result = 0;
    goto LABEL_8;
  }

  if ((a4 & 0x2000000000000000) != 0)
  {
    v14[0] = a3;
    v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
    v11 = v14;
  }

  else if ((a3 & 0x1000000000000000) != 0)
  {
    v11 = ((a4 & 0xFFFFFFFFFFFFFFFLL) + 32);
  }

  else
  {
    v11 = sub_22892F698();
  }

  result = sub_22892BF98(v11, a1, a2, a3, a4, a5);
  if (!v5)
  {
    v15 = v13 & 1;
LABEL_8:
    v16 = (a4 & 0x1000000000000000) != 0;
  }

  return result;
}

unint64_t sub_22892BEF4()
{
  result = qword_27D85C060;
  if (!qword_27D85C060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D85C060);
  }

  return result;
}

void sub_22892BF48(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_22892BF98(uint64_t result, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, uint64_t a6)
{
  v8 = result;
  v9 = (a4 >> 59) & 1;
  if ((a5 & 0x1000000000000000) == 0)
  {
    LOBYTE(v9) = 1;
  }

  v10 = 4 << v9;
  v11 = a2 & 0xC;
  v12 = a2;
  if (v11 == v10)
  {
    v14 = a2;
    v15 = a3;
    v16 = a5;
    result = sub_22892BDAC(a2, a4, a5);
    a2 = v14;
    a3 = v15;
    a5 = v16;
    v12 = result;
    if ((v16 & 0x1000000000000000) == 0)
    {
LABEL_5:
      v13 = v12 >> 16;
      if (v11 != v10)
      {
        goto LABEL_6;
      }

      goto LABEL_14;
    }
  }

  else if ((a5 & 0x1000000000000000) == 0)
  {
    goto LABEL_5;
  }

  v17 = a4 & 0xFFFFFFFFFFFFLL;
  if ((a5 & 0x2000000000000000) != 0)
  {
    v17 = HIBYTE(a5) & 0xF;
  }

  if (v17 < v12 >> 16)
  {
    goto LABEL_95;
  }

  v18 = a2;
  v19 = a3;
  v20 = a5;
  result = sub_22892F148();
  a5 = v20;
  v13 = result;
  a3 = v19;
  a2 = v18;
  if (v11 == v10)
  {
LABEL_14:
    v21 = a3;
    v22 = a5;
    result = sub_22892BDAC(a2, a4, a5);
    a3 = v21;
    a5 = v22;
    a2 = result;
  }

LABEL_6:
  if ((a3 & 0xC) == v10)
  {
    v23 = a2;
    v24 = a5;
    result = sub_22892BDAC(a3, a4, a5);
    a2 = v23;
    a5 = v24;
    a3 = result;
    if ((v24 & 0x1000000000000000) == 0)
    {
      goto LABEL_8;
    }
  }

  else if ((a5 & 0x1000000000000000) == 0)
  {
LABEL_8:
    result = (a3 >> 16) - (a2 >> 16);
    goto LABEL_21;
  }

  v25 = HIBYTE(a5) & 0xF;
  if ((a5 & 0x2000000000000000) == 0)
  {
    v25 = a4 & 0xFFFFFFFFFFFFLL;
  }

  if (v25 < a2 >> 16)
  {
    goto LABEL_91;
  }

  if (v25 < a3 >> 16)
  {
LABEL_92:
    __break(1u);
    goto LABEL_93;
  }

  result = sub_22892F148();
LABEL_21:
  v26 = v13 + result;
  if (__OFADD__(v13, result))
  {
    __break(1u);
    goto LABEL_90;
  }

  if (v26 < v13)
  {
LABEL_90:
    __break(1u);
LABEL_91:
    __break(1u);
    goto LABEL_92;
  }

  v27 = (v13 + v8);
  if (!v8)
  {
    v27 = 0;
  }

  v28 = *v27;
  if (v28 == 43)
  {
    if (result >= 1)
    {
      if (result != 1)
      {
        v39 = a6 + 48;
        v40 = a6 + 55;
        v41 = a6 + 87;
        if (a6 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        if (v27)
        {
          v32 = 0;
          v42 = v27 + 1;
          v43 = result - 1;
          do
          {
            v44 = *v42;
            if (v44 < 0x30 || v44 >= v39)
            {
              if (v44 < 0x41 || v44 >= v40)
              {
                v37 = 0;
                if (v44 < 0x61 || v44 >= v41)
                {
                  return v37;
                }

                v45 = -87;
              }

              else
              {
                v45 = -55;
              }
            }

            else
            {
              v45 = -48;
            }

            v46 = v32 * a6;
            if ((v32 * a6) >> 64 != (v32 * a6) >> 63)
            {
              return 0;
            }

            v32 = v46 + (v44 + v45);
            if (__OFADD__(v46, (v44 + v45)))
            {
              return 0;
            }

            ++v42;
            --v43;
          }

          while (v43);
          return v32;
        }

        return 0;
      }

      return 0;
    }

    goto LABEL_94;
  }

  if (v28 != 45)
  {
    if (v26 != v13)
    {
      v47 = a6 + 48;
      v48 = a6 + 55;
      v49 = a6 + 87;
      if (a6 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      if (v27)
      {
        v32 = 0;
        while (1)
        {
          v50 = *v27;
          if (v50 < 0x30 || v50 >= v47)
          {
            if (v50 < 0x41 || v50 >= v48)
            {
              v37 = 0;
              if (v50 < 0x61 || v50 >= v49)
              {
                return v37;
              }

              v51 = -87;
            }

            else
            {
              v51 = -55;
            }
          }

          else
          {
            v51 = -48;
          }

          v52 = v32 * a6;
          if ((v32 * a6) >> 64 != (v32 * a6) >> 63)
          {
            return 0;
          }

          v32 = v52 + (v50 + v51);
          if (__OFADD__(v52, (v50 + v51)))
          {
            return 0;
          }

          ++v27;
          if (!--result)
          {
            return v32;
          }
        }
      }

      return 0;
    }

    return 0;
  }

  if (result >= 1)
  {
    if (result != 1)
    {
      v29 = a6 + 48;
      v30 = a6 + 55;
      v31 = a6 + 87;
      if (a6 > 10)
      {
        v29 = 58;
      }

      else
      {
        v31 = 97;
        v30 = 65;
      }

      if (v27)
      {
        v32 = 0;
        v33 = v27 + 1;
        v34 = result - 1;
        while (1)
        {
          v35 = *v33;
          if (v35 < 0x30 || v35 >= v29)
          {
            if (v35 < 0x41 || v35 >= v30)
            {
              v37 = 0;
              if (v35 < 0x61 || v35 >= v31)
              {
                return v37;
              }

              v36 = -87;
            }

            else
            {
              v36 = -55;
            }
          }

          else
          {
            v36 = -48;
          }

          v38 = v32 * a6;
          if ((v32 * a6) >> 64 != (v32 * a6) >> 63)
          {
            return 0;
          }

          v32 = v38 - (v35 + v36);
          if (__OFSUB__(v38, (v35 + v36)))
          {
            return 0;
          }

          ++v33;
          if (!--v34)
          {
            return v32;
          }
        }
      }

      return 0;
    }

    return 0;
  }

LABEL_93:
  __break(1u);
LABEL_94:
  __break(1u);
LABEL_95:
  __break(1u);
  return result;
}

uint64_t sub_22892C42C()
{
  result = sub_22892EFA8();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_22892C4E4(uint64_t a1, void (*a2)(uint64_t), uint64_t a3)
{
  v198 = a3;
  v199 = a2;
  v182 = a1;
  v189 = *v3;
  v4 = v189;
  v179 = sub_22892E0B8();
  v178 = *(v179 - 8);
  v5 = *(v178 + 64);
  MEMORY[0x28223BE20](v179);
  v177 = &v166 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v173 = sub_22892E068();
  v172 = *(v173 - 8);
  v7 = *(v172 + 64);
  MEMORY[0x28223BE20](v173);
  v171 = &v166 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22892EDE8();
  v202 = *(v9 - 8);
  v203 = v9;
  v10 = *(v202 + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v188 = &v166 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v170 = &v166 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v169 = &v166 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v180 = &v166 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v167 = &v166 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v168 = &v166 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v181 = &v166 - v24;
  MEMORY[0x28223BE20](v23);
  v184 = &v166 - v25;
  sub_22892DA2C(0, &qword_27D85BF18, type metadata accessor for SleepScoreNotificationState);
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x28223BE20](v26 - 8);
  v186 = &v166 - v28;
  v190 = type metadata accessor for SleepScoreNotificationState();
  v185 = *(v190 - 8);
  v29 = *(v185 + 64);
  v30 = MEMORY[0x28223BE20](v190);
  v176 = &v166 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x28223BE20](v30);
  v183 = &v166 - v33;
  MEMORY[0x28223BE20](v32);
  v187 = (&v166 - v34);
  v193 = type metadata accessor for VitalsOutlierNotificationAnalysisState;
  sub_22892DA2C(0, &qword_27D85BC08, type metadata accessor for VitalsOutlierNotificationAnalysisState);
  v36 = *(*(v35 - 8) + 64);
  MEMORY[0x28223BE20](v35 - 8);
  v192 = &v166 - v37;
  v38 = sub_22892EFA8();
  v195 = *(v38 - 8);
  v196 = v38;
  v39 = *(v195 + 64);
  MEMORY[0x28223BE20](v38);
  v41 = &v166 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_22892E048();
  v43 = *(v42 - 8);
  v204 = v42;
  v205 = v43;
  v44 = *(v43 + 64);
  v45 = MEMORY[0x28223BE20](v42);
  v47 = &v166 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v45);
  v49 = &v166 - v48;
  v50 = sub_22892DEF8();
  v51 = *(v50 - 8);
  v52 = *(v51 + 64);
  v53 = MEMORY[0x28223BE20](v50);
  v55 = &v166 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v53);
  v57 = &v166 - v56;
  v58 = v3[2];
  v59 = v4;
  v191 = *(v4 + 88);
  v60 = *(v191 + 8);
  v61 = *(v60 + 8);
  v62 = *(v59 + 80);
  v175 = v60 + 8;
  v174 = v61;
  v61(v62, v60);
  (*(v60 + 16))(v62, v60);
  v200 = v51;
  v201 = v50;
  v63 = *(v51 + 16);
  v197 = v57;
  v64 = v58;
  v65 = v50;
  v66 = v204;
  v63(v55, v57, v65);
  v67 = *(v205 + 16);
  v194 = v49;
  v67(v47, v49, v66);
  v68 = v41;
  sub_22892EF48();
  v69 = v192;
  v70 = v41;
  v71 = v60;
  (*(v60 + 64))(v70, v62, v60);
  v72 = type metadata accessor for VitalsOutlierNotificationAnalysisState(0);
  v73 = v69;
  LODWORD(v69) = (*(*(v72 - 8) + 48))(v69, 1, v72);
  sub_22892DB38(v73, &qword_27D85BC08, v193);
  if (v69 == 1)
  {
    v74 = v188;
    sub_22892EDC8();
    v75 = sub_22892EDD8();
    v76 = sub_22892F398();
    if (!os_log_type_enabled(v75, v76))
    {
LABEL_5:

      v83 = (*(v202 + 8))(v74, v203);
      v84 = v201;
      v199(v83);
LABEL_6:
      (*(v195 + 8))(v68, v196);
      (*(v205 + 8))(v194, v66);
      return (*(v200 + 8))(v197, v84);
    }

    v77 = swift_slowAlloc();
    v78 = swift_slowAlloc();
    v206 = v78;
    *v77 = 136446210;
    v79 = sub_22892F948();
    v81 = sub_2288B748C(v79, v80, &v206);

    *(v77 + 4) = v81;
    v82 = "[%{public}s] No vitals state yet persisted. Not continuing.";
LABEL_4:
    _os_log_impl(&dword_2288B2000, v75, v76, v82, v77, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v78);
    MEMORY[0x22AAC47E0](v78, -1, -1);
    MEMORY[0x22AAC47E0](v77, -1, -1);
    goto LABEL_5;
  }

  v86 = v191;
  v87 = v186;
  (*(v191 + 72))(v68, v62, v191);
  v88 = v190;
  if ((*(v185 + 48))(v87, 1, v190) != 1)
  {
    v100 = v88;
    v101 = v187;
    sub_22892DBF0(v87, v187);
    v102 = v184;
    sub_22892EDC8();
    v103 = v183;
    sub_22892DC54(v101, v183);
    v104 = sub_22892EDD8();
    v105 = sub_22892F398();
    if (os_log_type_enabled(v104, v105))
    {
      v106 = swift_slowAlloc();
      v107 = swift_slowAlloc();
      v206 = v107;
      *v106 = 136446466;
      v108 = sub_22892F948();
      v110 = sub_2288B748C(v108, v109, &v206);

      *(v106 + 4) = v110;
      *(v106 + 12) = 2080;
      v111 = *(v100 + 20);
      sub_22892DCE0(&qword_27D85B550, MEMORY[0x277CC9578]);
      v93 = v201;
      v112 = sub_22892F7E8();
      v114 = v113;
      sub_22892DB94(v103);
      v115 = sub_2288B748C(v112, v114, &v206);

      *(v106 + 14) = v115;
      _os_log_impl(&dword_2288B2000, v104, v105, "[%{public}s] Skipping Sleep Score notification because one was already sent at %s.", v106, 0x16u);
      swift_arrayDestroy();
      v116 = v107;
      v66 = v204;
      MEMORY[0x22AAC47E0](v116, -1, -1);
      MEMORY[0x22AAC47E0](v106, -1, -1);

      v117 = (*(v202 + 8))(v102, v203);
    }

    else
    {

      sub_22892DB94(v103);
      v117 = (*(v202 + 8))(v102, v203);
      v93 = v201;
    }

    v199(v117);
    sub_22892DB94(v187);
    goto LABEL_21;
  }

  sub_22892DB38(v87, &qword_27D85BF18, type metadata accessor for SleepScoreNotificationState);
  if ((*(v86 + 64))(v68, v62, v86))
  {
    v89 = v181;
    sub_22892EDC8();
    v90 = sub_22892EDD8();
    v91 = sub_22892F398();
    v92 = os_log_type_enabled(v90, v91);
    v93 = v201;
    if (v92)
    {
      v94 = swift_slowAlloc();
      v95 = swift_slowAlloc();
      v206 = v95;
      *v94 = 136446210;
      v96 = sub_22892F948();
      v98 = sub_2288B748C(v96, v97, &v206);

      *(v94 + 4) = v98;
      _os_log_impl(&dword_2288B2000, v90, v91, "[%{public}s] Skipping Sleep Score notification because one was sent by another device.", v94, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v95);
      MEMORY[0x22AAC47E0](v95, -1, -1);
      MEMORY[0x22AAC47E0](v94, -1, -1);
    }

    v99 = (*(v202 + 8))(v89, v203);
    v199(v99);
LABEL_21:
    (*(v195 + 8))(v68, v196);
    (*(v205 + 8))(v194, v66);
    return (*(v200 + 8))(v197, v93);
  }

  v192 = v62;
  v118 = sub_22892D888(v182, v62, v86);
  if (!v118)
  {
    v74 = v170;
    sub_22892EDC8();
    v75 = sub_22892EDD8();
    v76 = sub_22892F398();
    if (!os_log_type_enabled(v75, v76))
    {
      goto LABEL_5;
    }

    v77 = swift_slowAlloc();
    v78 = swift_slowAlloc();
    v206 = v78;
    *v77 = 136446210;
    v133 = sub_22892F948();
    v135 = sub_2288B748C(v133, v134, &v206);

    *(v77 + 4) = v135;
    v82 = "[%{public}s] Skipping Sleep Score notification because of insufficient data.";
    goto LABEL_4;
  }

  v119 = v118;
  v193 = sub_22892E148();
  if (!v193)
  {
    v136 = v169;
    sub_22892EDC8();
    v137 = sub_22892EDD8();
    v138 = sub_22892F398();
    if (os_log_type_enabled(v137, v138))
    {
      v139 = swift_slowAlloc();
      v140 = swift_slowAlloc();
      v206 = v140;
      *v139 = 136446210;
      v141 = sub_22892F948();
      v143 = sub_2288B748C(v141, v142, &v206);

      *(v139 + 4) = v143;
      _os_log_impl(&dword_2288B2000, v137, v138, "[%{public}s] Skipping Sleep Score notification because none was built.", v139, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v140);
      MEMORY[0x22AAC47E0](v140, -1, -1);
      MEMORY[0x22AAC47E0](v139, -1, -1);
    }

    v144 = (*(v202 + 8))(v136, v203);
    v84 = v201;
    v199(v144);

    goto LABEL_6;
  }

  v120 = v171;
  sub_22892E0D8();
  v121 = v192;
  v122 = (*(v86 + 32))(v120, v192, v86);
  (*(v172 + 8))(v120, v173);
  v188 = v119;
  v166 = v64;
  if (v122)
  {
    (*(v86 + 56))(v193, v121, v86);
    v123 = v168;
    sub_22892EDC8();
    v124 = sub_22892EDD8();
    v125 = sub_22892F398();
    if (os_log_type_enabled(v124, v125))
    {
      v126 = swift_slowAlloc();
      v127 = swift_slowAlloc();
      v206 = v127;
      *v126 = 136446210;
      v128 = sub_22892F948();
      v130 = v68;
      v131 = sub_2288B748C(v128, v129, &v206);

      *(v126 + 4) = v131;
      v68 = v130;
      v132 = "[%{public}s] Fired Sleep Score notification";
LABEL_30:
      _os_log_impl(&dword_2288B2000, v124, v125, v132, v126, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v127);
      MEMORY[0x22AAC47E0](v127, -1, -1);
      MEMORY[0x22AAC47E0](v126, -1, -1);
    }
  }

  else
  {
    v123 = v167;
    sub_22892EDC8();
    v124 = sub_22892EDD8();
    v125 = sub_22892F398();
    if (os_log_type_enabled(v124, v125))
    {
      v126 = swift_slowAlloc();
      v127 = swift_slowAlloc();
      v206 = v127;
      *v126 = 136446210;
      v145 = sub_22892F948();
      v147 = v68;
      v148 = sub_2288B748C(v145, v146, &v206);

      *(v126 + 4) = v148;
      v68 = v147;
      v132 = "[%{public}s] Skipping Sleep Score notification because they're off.";
      goto LABEL_30;
    }
  }

  v187 = *(v202 + 8);
  (v187)(v123, v203);
  v149 = v180;
  v150 = v176;
  sub_22892E108();
  v151 = v190;
  v152 = v150 + *(v190 + 20);
  v153 = v192;
  v174(v192, v71);
  v154 = v177;
  sub_22892E118();
  v155 = sub_22892E0A8();
  (*(v178 + 8))(v154, v179);
  *(v150 + *(v151 + 24)) = v155;
  (*(v191 + 80))(v150, v153);
  v156 = sub_22892DB94(v150);
  v199(v156);
  sub_22892EDC8();
  v157 = sub_22892EDD8();
  v158 = sub_22892F398();
  if (os_log_type_enabled(v157, v158))
  {
    v159 = swift_slowAlloc();
    v160 = v149;
    v161 = swift_slowAlloc();
    v206 = v161;
    *v159 = 136446210;
    v162 = sub_22892F948();
    v164 = sub_2288B748C(v162, v163, &v206);

    *(v159 + 4) = v164;
    _os_log_impl(&dword_2288B2000, v157, v158, "[%{public}s] Completed Sleep Score notification work.", v159, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v161);
    MEMORY[0x22AAC47E0](v161, -1, -1);
    MEMORY[0x22AAC47E0](v159, -1, -1);

    v165 = v160;
  }

  else
  {

    v165 = v149;
  }

  (v187)(v165, v203);
  (*(v195 + 8))(v68, v196);
  (*(v205 + 8))(v194, v204);
  return (*(v200 + 8))(v197, v201);
}

uint64_t sub_22892D888(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22892E098();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  sub_22892E168();
  (*(a3 + 40))(a1, a2, a3);
  (*(a3 + 16))(a2, a3);
  (*(a3 + 48))(a2, a3);
  (*(a3 + 24))(a2, a3);
  return sub_22892E158();
}

uint64_t type metadata accessor for SleepScoreNotificationState()
{
  result = qword_27D85C0F8;
  if (!qword_27D85C0F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_22892DA2C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_22892F498();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

BOOL sub_22892DA80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_22892EFA8();
  sub_22892DCE0(&unk_2813DEE10, MEMORY[0x277CCB6A8]);
  if (sub_22892F088() & 1) != 0 && (v6 = *(a3 + 20), (sub_22892DEB8()))
  {
    return *(a1 + *(a3 + 24)) == *(a2 + *(a3 + 24));
  }

  else
  {
    return 0;
  }
}

uint64_t sub_22892DB38(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_22892DA2C(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_22892DB94(uint64_t a1)
{
  v2 = type metadata accessor for SleepScoreNotificationState();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22892DBF0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SleepScoreNotificationState();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22892DC54(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SleepScoreNotificationState();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22892DCE0(unint64_t *a1, void (*a2)(uint64_t))
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