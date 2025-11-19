uint64_t sub_1C3CC5C48@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v39 = a2;
  v43 = a3;
  v4 = sub_1C3D1E8E4();
  v37 = *(v4 - 8);
  v38 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v36 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1C3D1E9C4();
  v41 = *(v6 - 8);
  v42 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v40 = &v34 - v10;
  v11 = MEMORY[0x1E69A2E68];
  sub_1C3CC7E4C(0, &qword_1EC0862F0, MEMORY[0x1E69A2E68], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v35 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v34 - v15;
  v17 = type metadata accessor for BalanceCoordinateInfo.Context(0);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v34 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1C3D1E8C4();
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v34 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = *a1;
  sub_1C3CC7D9C(v24 + OBJC_IVAR____TtC8HealthUI21BalanceCoordinateInfo_context, v19, type metadata accessor for BalanceCoordinateInfo.Context);
  sub_1C3CC7EB0(v19, v16, &qword_1EC0862F0, v11);
  if ((*(v21 + 48))(v16, 1, v20) == 1)
  {
    result = sub_1C3CC7AC4(v16, &qword_1EC0862F0, MEMORY[0x1E69A2E68]);
LABEL_12:
    v31 = 0;
    goto LABEL_13;
  }

  (*(v21 + 32))(v23, v16, v20);
  __swift_project_boxed_opaque_existential_0((v24 + OBJC_IVAR____TtC8HealthUI21BalanceCoordinateInfo_collection), *(v24 + OBJC_IVAR____TtC8HealthUI21BalanceCoordinateInfo_collection + 24));
  v26 = sub_1C3D1EA24();
  if (!*(v26 + 16))
  {

    goto LABEL_11;
  }

  v28 = v41;
  v27 = v42;
  (*(v41 + 16))(v8, v26 + ((*(v28 + 80) + 32) & ~*(v28 + 80)), v42);

  v29 = v40;
  (*(v28 + 32))(v40, v8, v27);
  if ((sub_1C3D1E934() & 1) == 0)
  {
    v32 = v36;
    sub_1C3D1E9B4();
    v33 = sub_1C3D1E8D4();
    (*(v37 + 8))(v32, v38);
    if (v33)
    {
      v31 = sub_1C3CC6A08(v33, v23);

      goto LABEL_9;
    }

    (*(v28 + 8))(v29, v27);
LABEL_11:
    result = (*(v21 + 8))(v23, v20);
    goto LABEL_12;
  }

  v30 = v35;
  (*(v21 + 16))(v35, v23, v20);
  (*(v21 + 56))(v30, 0, 1, v20);
  v31 = sub_1C3CC61AC(v30);
  sub_1C3CC7AC4(v30, &qword_1EC0862F0, MEMORY[0x1E69A2E68]);
LABEL_9:
  (*(v28 + 8))(v29, v27);
  result = (*(v21 + 8))(v23, v20);
LABEL_13:
  *v43 = v31;
  return result;
}

id sub_1C3CC61AC(uint64_t a1)
{
  v2 = MEMORY[0x1E69A2E68];
  sub_1C3CC7E4C(0, &qword_1EC0862F0, MEMORY[0x1E69A2E68], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v22 - v4;
  v6 = sub_1C3D1E8C4();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v22 - v11;
  v13 = [objc_allocWithZone(HKSelectedRangeData) initWithStatisticsType_];
  sub_1C3CC4F3C(a1, v5, &qword_1EC0862F0, v2);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_1C3CC7AC4(v5, &qword_1EC0862F0, MEMORY[0x1E69A2E68]);
  }

  else
  {
    (*(v7 + 32))(v12, v5, v6);
    (*(v7 + 16))(v9, v12, v6);
    v14 = (*(v7 + 88))(v9, v6);
    if (v14 == *MEMORY[0x1E69A2E60])
    {
      v15 = 36;
    }

    else if (v14 == *MEMORY[0x1E69A2E50])
    {
      v15 = 37;
    }

    else if (v14 == *MEMORY[0x1E69A2E48])
    {
      v15 = 35;
    }

    else if (v14 == *MEMORY[0x1E69A2E58])
    {
      v15 = 39;
    }

    else if (v14 == *MEMORY[0x1E69A2E40])
    {
      v15 = 38;
    }

    else
    {
      (*(v7 + 8))(v9, v6);
      v15 = 0;
    }

    [v13 setDataType_];
    (*(v7 + 8))(v12, v6);
  }

  if (qword_1EC080DC0 != -1)
  {
    swift_once();
  }

  v16 = qword_1EC08DBD8;
  sub_1C3D1DEC4();

  sub_1C3CC49D0();
  v17 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
  v18 = sub_1C3D200C4();

  type metadata accessor for Key(0);
  sub_1C3CC7E04(&qword_1EC080E30, type metadata accessor for Key);
  v19 = sub_1C3D1FEE4();

  v20 = [v17 initWithString:v18 attributes:v19];

  [v13 setAttributedString_];
  return v13;
}

id sub_1C3CC6630(uint64_t a1)
{
  v2 = sub_1C3D1E294();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v3 = sub_1C3D200B4();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v4 = sub_1C3D20094();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = sub_1C3D1E974();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [objc_allocWithZone(HKSelectedRangeData) initWithStatisticsType_];
  if (a1)
  {
    sub_1C3D20084();
    sub_1C3D20074();
    v16[1] = a1;
    sub_1C3D20054();
    sub_1C3D20074();
    sub_1C3D200A4();
    if (qword_1EC080DC0 != -1)
    {
      swift_once();
    }

    v10 = qword_1EC08DBD8;
    sub_1C3D1E284();
    sub_1C3D20124();
  }

  else
  {
    (*(v6 + 104))(v8, *MEMORY[0x1E69A2EF0], v5);
    sub_1C3CE0874();
    (*(v6 + 8))(v8, v5);
  }

  sub_1C3CC49D0();
  v11 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
  v12 = sub_1C3D200C4();

  type metadata accessor for Key(0);
  sub_1C3CC7E04(&qword_1EC080E30, type metadata accessor for Key);
  v13 = sub_1C3D1FEE4();

  v14 = [v11 initWithString:v12 attributes:v13];

  [v9 setAttributedString_];
  return v9;
}

id sub_1C3CC6A08(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1C3D1E8C4();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v84[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v84[-v11];
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = &v84[-v15];
  result = [v3 unitController];
  if (!result)
  {
    return result;
  }

  v92 = a1;
  v18 = result;
  v19 = [result healthStore];

  if (!v19)
  {
    return 0;
  }

  v91 = v7;
  v20 = objc_opt_self();
  v93 = v19;
  result = [v20 sharedInstanceForHealthStore_];
  if (!result)
  {
    __break(1u);
    return result;
  }

  v21 = result;
  v22 = sub_1C3D1E894();
  v23 = [v21 displayTypeForObjectType_];

  if (!v23)
  {

    return 0;
  }

  v24 = [v3 unitController];
  if (!v24)
  {

    return 0;
  }

  v25 = v24;
  v26 = v23;
  v27 = [v25 unitForChartingDisplayType_];

  v90 = v27;
  if (!v27)
  {

    return 0;
  }

  v88 = v26;
  v89 = [objc_allocWithZone(HKSelectedRangeData) initWithStatisticsType_];
  v28 = v91;
  v87 = *(v91 + 16);
  v87(v16, a2, v6);
  v86 = *(v28 + 88);
  v29 = v86(v16, v6);
  v30 = MEMORY[0x1E69A2E58];
  v85 = *MEMORY[0x1E69A2E60];
  if (v29 == v85)
  {
    v31 = 36;
    v32 = v89;
  }

  else
  {
    v32 = v89;
    if (v29 == *MEMORY[0x1E69A2E50])
    {
      v31 = 37;
    }

    else if (v29 == *MEMORY[0x1E69A2E48])
    {
      v31 = 35;
    }

    else if (v29 == *MEMORY[0x1E69A2E58])
    {
      v31 = 39;
    }

    else if (v29 == *MEMORY[0x1E69A2E40])
    {
      v31 = 38;
    }

    else
    {
      (*(v28 + 8))(v16, v6);
      v32 = v89;
      v31 = 0;
    }
  }

  [v32 setDataType_];
  v87(v12, a2, v6);
  v33 = v86(v12, v6);
  v34 = *v30;
  if (v33 == *v30)
  {
    v35 = sub_1C3CC4918();
    v36 = v88;
    [v35 setDisplayType_];

    v37 = v92;
    [v92 _value];
    v91 = sub_1C3D1E804();
    v38 = OBJC_IVAR___HKBalanceChartFormatter____lazy_storage___relativeStatFormatter;
    v39 = *&v3[OBJC_IVAR___HKBalanceChartFormatter____lazy_storage___relativeStatFormatter];
    v40 = v90;
    [v37 doubleValueForUnit_];
    v42 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
    v43 = [v39 valueStringFromNumber_];

    if (!v43)
    {
      sub_1C3D20104();
      v43 = sub_1C3D200C4();
    }

    sub_1C3CC49D0();
    v44 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
    type metadata accessor for Key(0);
    sub_1C3CC7E04(&qword_1EC080E30, type metadata accessor for Key);
    v45 = sub_1C3D1FEE4();

    v46 = [v44 initWithString:v43 attributes:v45];

    v47 = *&v3[v38];
    v48 = v91;
    v49 = [v47 unitStringFromUnit:v40 number:?];
    if (!v49)
    {
      sub_1C3D20104();
      v49 = sub_1C3D200C4();
    }

    sub_1C3CC49EC();
    v50 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
    v51 = sub_1C3D1FEE4();

    v52 = [v50 initWithString:v49 attributes:v51];

    sub_1C396C48C(0, &qword_1EC080D50);
    v53 = swift_allocObject();
    *(v53 + 16) = xmmword_1C3D5DCD0;
    v54 = sub_1C3C27CB4(0, &qword_1EC080E40);
    *(v53 + 32) = v46;
    *(v53 + 88) = v54;
    *(v53 + 56) = v54;
    *(v53 + 64) = v52;
    v55 = v46;
    v56 = v52;
    v57 = sub_1C3D202A4();

    if (qword_1EC080DC0 != -1)
    {
      swift_once();
    }

    v58 = qword_1EC08DBD8;
    sub_1C3D1DEC4();

    v59 = sub_1C3D200C4();

    v60 = HKUIJoinAttributedStringsWithFormat(v57, v59);

    v61 = v89;
    [v89 setAttributedString_];

LABEL_37:
    return v61;
  }

  v62 = *MEMORY[0x1E69A2E40];
  if (v33 == *MEMORY[0x1E69A2E40])
  {
    v63 = v88;

    v64 = [objc_opt_self() secondUnit];
    [v92 doubleValueForUnit_];
    v66 = v65;

    v67 = [v3 majorFont];
    if (!v67)
    {
      v67 = [objc_opt_self() preferredFontForTextStyle_];
    }

    v68 = [v3 minorFont];
    if (!v68)
    {
      v68 = [objc_opt_self() preferredFontForTextStyle_];
    }

    v69 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
    v70 = HKTimePeriodStringWithFonts(v67, v68, v69, 0x1CuLL);

    v61 = v89;
    [v89 setAttributedString_];
    v71 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
    [v61 setValueAsNumber_];

    goto LABEL_37;
  }

  v72 = v88;
  [v3 setDisplayType_];

  v73 = v91;
  [v92 doubleValueForUnit_];
  v75 = v74;
  v87(v9, a2, v6);
  v76 = v86(v9, v6);
  v80 = v76 == v85 || v76 == *MEMORY[0x1E69A2E50] || v76 == *MEMORY[0x1E69A2E48] || v76 == v34;
  if (v76 != v62 && !v80)
  {
    (*(v73 + 8))(v9, v6);
  }

  v81 = v90;
  v82 = [v3 attributedStringWithValue:v90 unit:v80 showUnit:v75];
  v83 = v89;
  [v89 setAttributedString_];

  (*(v73 + 8))(v12, v6);
  return v83;
}

id BalanceChartFormatter.init()()
{
  *&v0[OBJC_IVAR___HKBalanceChartFormatter____lazy_storage___relativeStatFormatter] = 0;
  *&v0[OBJC_IVAR___HKBalanceChartFormatter____lazy_storage___valueAttributes] = 0;
  *&v0[OBJC_IVAR___HKBalanceChartFormatter____lazy_storage___unitAttributes] = 0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BalanceChartFormatter();
  return objc_msgSendSuper2(&v2, sel_init);
}

id BalanceChartFormatter.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BalanceChartFormatter();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

BOOL sub_1C3CC75BC(uint64_t a1, uint64_t a2)
{
  v4 = MEMORY[0x1E69E6720];
  sub_1C3CC7E4C(0, &qword_1EC0862F0, MEMORY[0x1E69A2E68], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v27 - v6;
  sub_1C3CC7E4C(0, &qword_1EC087220, type metadata accessor for BalanceCoordinateInfo.Context, v4);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v27 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v27 - v15;
  sub_1C3CC4F3C(a2, &v27 - v15, &qword_1EC087220, type metadata accessor for BalanceCoordinateInfo.Context);
  v17 = type metadata accessor for BalanceCoordinateInfo.Context(0);
  v18 = *(*(v17 - 8) + 48);
  if (v18(v16, 1, v17) == 1)
  {
    sub_1C3CC7AC4(v16, &qword_1EC087220, type metadata accessor for BalanceCoordinateInfo.Context);
    if (!a1)
    {
      goto LABEL_7;
    }

LABEL_5:
    v20 = &qword_1EC087220;
    v21 = type metadata accessor for BalanceCoordinateInfo.Context;
    v22 = a2;
LABEL_12:
    sub_1C3CC7AC4(v22, v20, v21);
    return 1;
  }

  v19 = v16[*(v17 + 20)];
  sub_1C3CBF418(v16, type metadata accessor for BalanceCoordinateInfo.Context);
  if (a1)
  {
    goto LABEL_5;
  }

  if (!v19)
  {
    sub_1C3CC7AC4(a2, &qword_1EC087220, type metadata accessor for BalanceCoordinateInfo.Context);
    return 0;
  }

LABEL_7:
  sub_1C3CC4F3C(a2, v13, &qword_1EC087220, type metadata accessor for BalanceCoordinateInfo.Context);
  if (v18(v13, 1, v17) == 1)
  {
    sub_1C3CC7AC4(a2, &qword_1EC087220, type metadata accessor for BalanceCoordinateInfo.Context);
    sub_1C3CC7AC4(v13, &qword_1EC087220, type metadata accessor for BalanceCoordinateInfo.Context);
    v23 = sub_1C3D1E8C4();
    (*(*(v23 - 8) + 56))(v7, 1, 1, v23);
LABEL_11:
    v20 = &qword_1EC0862F0;
    v21 = MEMORY[0x1E69A2E68];
    v22 = v7;
    goto LABEL_12;
  }

  sub_1C3CC4F3C(v13, v7, &qword_1EC0862F0, MEMORY[0x1E69A2E68]);
  sub_1C3CBF418(v13, type metadata accessor for BalanceCoordinateInfo.Context);
  v24 = sub_1C3D1E8C4();
  if ((*(*(v24 - 8) + 48))(v7, 1, v24) == 1)
  {
    sub_1C3CC7AC4(a2, &qword_1EC087220, type metadata accessor for BalanceCoordinateInfo.Context);
    goto LABEL_11;
  }

  sub_1C3CC7AC4(v7, &qword_1EC0862F0, MEMORY[0x1E69A2E68]);
  sub_1C3CC7EB0(a2, v10, &qword_1EC087220, type metadata accessor for BalanceCoordinateInfo.Context);
  if (v18(v10, 1, v17) == 1)
  {
    v20 = &qword_1EC087220;
    v21 = type metadata accessor for BalanceCoordinateInfo.Context;
    v22 = v10;
    goto LABEL_12;
  }

  v26 = v10[*(v17 + 20)];
  sub_1C3CBF418(v10, type metadata accessor for BalanceCoordinateInfo.Context);
  return v26 != 1;
}

uint64_t sub_1C3CC7AC4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1C3CC7E4C(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1C3CC7B34(unint64_t a1)
{
  v14 = MEMORY[0x1E69E7CD0];
  result = sub_1C3CC42D8(a1, &v14);
  v2 = result;
  v3 = *(result + 16);
  if (v3)
  {
    v4 = 0;
    v5 = result + 32;
    v6 = MEMORY[0x1E69E7CC0];
    while (v4 < *(v2 + 16))
    {
      sub_1C3C4D7A4(v5, &v11);
      __swift_project_boxed_opaque_existential_0(&v11, v12);
      if (sub_1C3D1EA64() & 1) != 0 || (__swift_project_boxed_opaque_existential_0(&v11, v12), (sub_1C3D02260()))
      {
        sub_1C3972F30(&v11, v10);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v13 = v6;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1C3C23EF4(0, *(v6 + 16) + 1, 1);
          v6 = v13;
        }

        v9 = *(v6 + 16);
        v8 = *(v6 + 24);
        if (v9 >= v8 >> 1)
        {
          sub_1C3C23EF4((v8 > 1), v9 + 1, 1);
          v6 = v13;
        }

        *(v6 + 16) = v9 + 1;
        result = sub_1C3972F30(v10, v6 + 40 * v9 + 32);
      }

      else
      {
        result = __swift_destroy_boxed_opaque_existential_0(&v11);
      }

      ++v4;
      v5 += 40;
      if (v3 == v4)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
    v6 = MEMORY[0x1E69E7CC0];
LABEL_14:

    return v6;
  }

  return result;
}

uint64_t sub_1C3CC7CD4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BalanceCoordinateInfo.Context(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C3CC7D38@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  result = sub_1C3D1EA24();
  *a2 = result;
  return result;
}

uint64_t sub_1C3CC7D9C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1C3CC7E04(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1C3CC7E4C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1C3CC7EB0(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1C3CC7E4C(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

id static NSCollectionLayoutSpacing.healthDefaultInterSectionSpacing.getter()
{
  v0 = [objc_opt_self() healthCollectionViewLayoutDefaultInterSectionSpacing];

  return v0;
}

uint64_t static HKMCPregnancyDatesFactory.gestationalAgeAttributedString(startDate:startDateTimeZone:asOfDate:unitFont:unitColor:digitFont:digitColor:)@<X0>(void *a1@<X4>, void *a2@<X5>, void *a3@<X6>, void *a4@<X7>, uint64_t a5@<X8>)
{
  v56 = a4;
  v54 = a3;
  v65 = a1;
  v66 = a2;
  v68 = a5;
  v5 = sub_1C3D1DD04();
  v63 = *(v5 - 8);
  v64 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v61 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C3CC8878();
  v62 = v7;
  v60 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v59 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C3CC890C();
  v52 = *(v9 - 8);
  v53 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v51 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1C3D1DF24();
  v57 = *(v11 - 8);
  v58 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v55 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v67 = &v44 - v14;
  v50 = sub_1C3D20BC4();
  v49 = *(v50 - 8);
  MEMORY[0x1EEE9AC00](v50);
  v48 = &v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_1C3D20C64();
  v46 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47);
  v17 = &v44 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1C3D20C74();
  v45 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v44 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C3D20664();
  sub_1C3D20C44();
  sub_1C3D20654();
  (*(v46 + 8))(v17, v47);
  v21 = v48;
  sub_1C3D20BD4();
  (*(v45 + 8))(v20, v18);
  sub_1C3CC8968(&unk_1EC080D38, MEMORY[0x1E696A1A8]);
  v22 = v50;
  sub_1C3D20C84();
  (*(v49 + 8))(v21, v22);
  v23 = v65;
  v69 = v65;
  sub_1C3C612C4();
  v24 = v23;
  sub_1C3D1DE94();
  v25 = v66;
  v69 = v66;
  sub_1C3C61364();
  v26 = v25;
  sub_1C3D1DE94();
  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath);
  *(&v44 - 2) = v28;
  swift_getKeyPath();
  v29 = v51;
  sub_1C3D1DEE4();

  v30 = v53;
  v69 = v54;
  v31 = v67;
  sub_1C3D1DEF4();
  (*(v52 + 8))(v29, v30);
  v69 = v56;
  v32 = v56;
  sub_1C3D1DF34();
  v33 = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](v33);
  *(&v44 - 2) = v34;
  swift_getKeyPath();
  sub_1C3CC8968(&qword_1EC0810D0, MEMORY[0x1E6968438]);
  v35 = v59;
  sub_1C3D1DEE4();

  v37 = v63;
  v36 = v64;
  v38 = v61;
  (*(v63 + 104))(v61, *MEMORY[0x1E69683F8], v64);
  v39 = v55;
  v40 = v62;
  sub_1C3D1DEF4();
  (*(v37 + 8))(v38, v36);
  (*(v60 + 8))(v35, v40);
  sub_1C3D1DDD4();
  v41 = v58;
  v42 = *(v57 + 8);
  v42(v39, v58);
  return (v42)(v31, v41);
}

void sub_1C3CC8878()
{
  if (!qword_1EC0810A8)
  {
    sub_1C3D1DD14();
    sub_1C3CC8968(&qword_1EC0810D0, MEMORY[0x1E6968438]);
    v0 = sub_1C3D1DF04();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC0810A8);
    }
  }
}

void sub_1C3CC890C()
{
  if (!qword_1EC0810A0)
  {
    sub_1C3C612C4();
    v0 = sub_1C3D1DF04();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC0810A0);
    }
  }
}

uint64_t sub_1C3CC8968(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1C3CC89F8()
{
  if (!qword_1EC087258)
  {
    sub_1C3D1DD74();
    sub_1C3D1DD14();
    v0 = sub_1C3D20B74();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC087258);
    }
  }
}

void sub_1C3CC8A60()
{
  if (!qword_1EC087260)
  {
    sub_1C3D1DDA4();
    v0 = sub_1C3D20B74();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC087260);
    }
  }
}

id BalanceOverlayRoomViewController.__allocating_init(displayDate:applicationItems:factorDisplayTypes:mode:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = sub_1C3D1E1E4();
  v11 = *(v10 - 8);
  v12 = 0;
  if ((*(v11 + 48))(a1, 1, v10) != 1)
  {
    v12 = sub_1C3D1E174();
    (*(v11 + 8))(a1, v10);
  }

  if (a3)
  {
    sub_1C3C27CB4(0, &unk_1EC085700);
    v13 = sub_1C3D202A4();
  }

  else
  {
    v13 = 0;
  }

  v14 = [objc_allocWithZone(v5) initWithDisplayDate:v12 applicationItems:a2 factorDisplayTypes:v13 mode:a4];

  return v14;
}

id BalanceOverlayRoomViewController.init(displayDate:applicationItems:factorDisplayTypes:mode:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_1C3CCBF20(a1, a2, a3, a4);

  return v5;
}

id sub_1C3CC93BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getObjectType();
  sub_1C3CCDA10(0, &qword_1EC085770, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v38 - v7;
  v9 = sub_1C3D1EDA4();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C3D1ED64();
  v13 = sub_1C3D1ED84();
  v14 = sub_1C3D20514();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v40 = a2;
    v16 = v15;
    v17 = swift_slowAlloc();
    v41 = a3;
    v18 = v17;
    v43 = v17;
    *v16 = 136446466;
    v19 = sub_1C3D20CD4();
    v21 = sub_1C3C22C28(v19, v20, &v43);
    v39 = v8;
    v22 = a1;
    v23 = v21;

    *(v16 + 4) = v23;
    *(v16 + 12) = 2048;
    *(v16 + 14) = v22;
    _os_log_impl(&dword_1C3942000, v13, v14, "[%{public}s] creating view controller for mode: %ld", v16, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v18);
    v24 = v18;
    a3 = v41;
    MEMORY[0x1C69321D0](v24, -1, -1);
    v25 = v16;
    a2 = v40;
    MEMORY[0x1C69321D0](v25, -1, -1);

    (*(v10 + 8))(v12, v9);
    v26 = v22;
    v8 = v39;
  }

  else
  {

    (*(v10 + 8))(v12, v9);
    v26 = a1;
  }

  sub_1C3CCDAE4(a2, v8, &qword_1EC085770, MEMORY[0x1E6969530]);
  v27 = v42;
  v28 = [v42 factorDisplayTypes];
  if (v28)
  {
    v29 = v28;
    sub_1C3C27CB4(0, &unk_1EC085700);
    v30 = sub_1C3D202B4();
  }

  else
  {
    v30 = 0;
  }

  v31 = sub_1C3D1E1E4();
  v32 = *(v31 - 8);
  v33 = 0;
  if ((*(v32 + 48))(v8, 1, v31) != 1)
  {
    v33 = sub_1C3D1E174();
    (*(v32 + 8))(v8, v31);
  }

  if (v30)
  {
    sub_1C3C27CB4(0, &unk_1EC085700);
    v34 = sub_1C3D202A4();
  }

  else
  {
    v34 = 0;
  }

  v35 = [objc_allocWithZone(type metadata accessor for BalanceOverlayRoomViewController()) initWithDisplayDate:v33 applicationItems:a3 factorDisplayTypes:v34 mode:v26];

  v36 = v35;
  [v36 setAdditionalChartOptions_];

  return v36;
}

id sub_1C3CC9A04()
{
  v1 = v0;
  v2 = MEMORY[0x1E69E6720];
  sub_1C3CCDA10(0, &qword_1EC085BE0, MEMORY[0x1E6969AE8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v45 - v4;
  sub_1C3CCDA10(0, &qword_1EC085770, MEMORY[0x1E6969530], v2);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v45 - v8;
  v10 = *&v1[OBJC_IVAR___HKBalanceOverlayRoomViewController_balanceDisplayType];
  v11 = [v10 baseDisplayType];
  if (!v11)
  {
    v13 = 0;
    goto LABEL_5;
  }

  v12 = v11;
  v13 = [v11 hk_interactiveChartOptions];

  if ((v13 & 0x2000) == 0)
  {
LABEL_5:
    v13 |= 0x2000uLL;
  }

  v51 = [v1 additionalChartOptions];
  v14 = [v1 applicationItems];
  v52 = [v14 healthStore];

  v50 = v10;
  v15 = [v1 applicationItems];
  v49 = [v15 unitController];

  v16 = [v1 applicationItems];
  v48 = [v16 dateCache];

  v17 = [v1 applicationItems];
  v47 = [v17 chartDataCacheController];

  v18 = [v1 applicationItems];
  v46 = [v18 timeScopeController];

  v19 = [v1 applicationItems];
  v20 = [v19 sampleDateRangeController];

  v21 = [v1 displayDate];
  if (v21)
  {
    v22 = v21;
    sub_1C3D1E1A4();

    v23 = sub_1C3D1E1E4();
    (*(*(v23 - 8) + 56))(v9, 0, 1, v23);
  }

  else
  {
    v23 = sub_1C3D1E1E4();
    (*(*(v23 - 8) + 56))(v9, 1, 1, v23);
  }

  v24 = sub_1C3D1E3C4();
  v25 = *(v24 - 8);
  (*(v25 + 56))(v5, 1, 1, v24);
  sub_1C3D1E1E4();
  v26 = *(v23 - 8);
  v27 = 0;
  if ((*(v26 + 48))(v9, 1, v23) != 1)
  {
    v27 = sub_1C3D1E174();
    (*(v26 + 8))(v9, v23);
  }

  v28 = (*(v25 + 48))(v5, 1, v24);
  v45 = v1;
  if (v28 == 1)
  {
    v29 = 0;
  }

  else
  {
    v29 = sub_1C3D1E364();
    (*(v25 + 8))(v5, v24);
  }

  v30 = v51;
  if ((v51 & ~v13) == 0)
  {
    v30 = 0;
  }

  v31 = v30 | v13;
  v32 = objc_allocWithZone(type metadata accessor for BalanceInteractiveChartViewController());
  v44 = v20;
  v33 = v52;
  v35 = v49;
  v34 = v50;
  v37 = v47;
  v36 = v48;
  v38 = v20;
  v39 = v46;
  v40 = [v32 initWithHealthStore:v52 primaryDisplayType:v50 unitPreferenceController:v49 dateCache:v48 chartDataCacheController:v47 selectedTimeScopeController:v46 sampleTypeDateRangeController:v44 initialXValue:v27 currentCalendarOverride:v29 options:v31];

  v41 = v40;
  v42 = v45;
  [v41 setCurrentValueViewDataSourceDelegate_];
  [v41 setCurrentOverlayLocationProvider_];

  return v41;
}

id sub_1C3CCA028(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  result = [v3 chartController];
  if (result)
  {
    v7 = result;
    v8 = [result stringForValueRange:a1 timeScope:a2];

    if (v8)
    {
      v9 = sub_1C3D20104();

      return v9;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1C3CCA458(void *a1)
{
  v2 = v1;
  v105 = a1;
  v3 = sub_1C3D1E974();
  v4 = *(v3 - 8);
  v111 = v3;
  v112 = v4;
  MEMORY[0x1EEE9AC00](v3);
  v110 = v94 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v109 = v94 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v98 = v94 - v9;
  sub_1C3CCDA10(0, &qword_1EC0862F0, MEMORY[0x1E69A2E68], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v108 = v94 - v11;
  v12 = sub_1C3D1E8C4();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v107 = v94 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = v94 - v16;
  v18 = MEMORY[0x1E69E7CC0];
  v117 = MEMORY[0x1E69E7CC0];
  v19 = sub_1C3D1E8A4();
  v20 = *(v19 + 16);
  v99 = v2;
  if (v20)
  {
    v116 = v18;
    sub_1C3D208C4();
    v106 = sub_1C3D20374();
    v104 = *(v2 + OBJC_IVAR___HKBalanceOverlayRoomViewController_balanceDisplayType);
    v21 = v13 + 16;
    v22 = *(v13 + 16);
    v23 = (*(v21 + 64) + 32) & ~*(v21 + 64);
    v97 = v19;
    v24 = v19 + v23;
    v25 = *(v21 + 56);
    v101 = (v21 + 40);
    v102 = v25;
    v100 = (v21 - 8);
    *&v103 = v12;
    do
    {
      v113 = v20;
      v22(v17, v24, v12);
      sub_1C3D20364();
      sub_1C3D20314();
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      v26 = v108;
      v12 = v103;
      (v22)(v108, v17);
      (*v101)(v26, 0, 1, v12);
      v27 = v104;
      v28 = sub_1C3C37728(v105, v26);
      sub_1C3CCDA74(v26, &qword_1EC0862F0, MEMORY[0x1E69A2E68]);
      v29 = v17;
      v30 = v107;
      v22(v107, v29, v12);
      v31 = objc_allocWithZone(type metadata accessor for BalanceMetricOverlayContext());
      v22(&v31[OBJC_IVAR____TtC8HealthUI27BalanceMetricOverlayContext_selectedMetric], v30, v12);
      *&v31[OBJC_IVAR____TtC8HealthUI21BalanceOverlayContext_currentContextItem] = 0;
      *&v31[OBJC_IVAR____TtC8HealthUI21BalanceOverlayContext_baseDisplayType] = v27;
      *&v31[OBJC_IVAR____TtC8HealthUI21BalanceOverlayContext_overlayDisplayType] = v28;
      v32 = type metadata accessor for BalanceOverlayContext();
      v115.receiver = v31;
      v115.super_class = v32;
      objc_msgSendSuper2(&v115, sel_init);
      v33 = *v100;
      v34 = v30;
      v17 = v29;
      (*v100)(v34, v12);
      v33(v29, v12);

      sub_1C3D20894();
      sub_1C3D208D4();
      sub_1C3D208E4();
      sub_1C3D208A4();
      v24 += v102;
      v20 = v113 - 1;
    }

    while (v113 != 1);

    v35 = v116;
  }

  else
  {

    v35 = MEMORY[0x1E69E7CC0];
  }

  if (qword_1EC080DC0 != -1)
  {
    swift_once();
  }

  v36 = qword_1EC08DBD8;
  v101 = "BALANCE_TITLE_TYPICAL";
  sub_1C3D1DEC4();
  sub_1C3C27C60();
  v38 = v37;
  v39 = swift_allocObject();
  v103 = xmmword_1C3D5EAE0;
  *(v39 + 16) = xmmword_1C3D5EAE0;
  if (v35 >> 62)
  {
    v40 = sub_1C3C77FEC(0, &qword_1EC085780);

    sub_1C3D20954();
  }

  else
  {

    sub_1C3D20A64();
    v40 = sub_1C3C77FEC(0, &qword_1EC085780);
  }

  v97 = v36;
  v100 = v38;

  v41 = objc_allocWithZone(HKOverlayContextSection);
  sub_1C3C77FEC(0, &qword_1EC085780);
  v104 = v40;
  v42 = sub_1C3D202A4();

  v43 = [v41 initWithSectionTitle:0 overlayContextItems:v42];

  *(v39 + 32) = v43;
  v44 = objc_allocWithZone(HKOverlayContextSectionContainer);
  v45 = sub_1C3D200C4();

  v102 = sub_1C3C27CB4(0, &unk_1EC085790);
  v46 = sub_1C3D202A4();

  v47 = [v44 initWithContainerTitle:v45 overlayContextSections:v46];

  v48 = v47;
  MEMORY[0x1C692F8F0]();
  if (*((v117 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v117 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1C3D202C4();
  }

  v96 = v48;
  sub_1C3D202F4();
  sub_1C3CCDA10(0, &qword_1EC0855B0, MEMORY[0x1E69A2EF8], MEMORY[0x1E69E6F90]);
  v49 = v112;
  v50 = *(v112 + 72);
  v51 = (*(v112 + 80) + 32) & ~*(v112 + 80);
  v95 = swift_allocObject();
  v52 = v95 + v51;
  v53 = *(v49 + 104);
  v54 = v111;
  v53(v95 + v51, *MEMORY[0x1E69A2EE8], v111);
  v55 = *MEMORY[0x1E69A2EF0];
  v113 = v50;
  v53(v52 + v50, v55, v54);
  v53(v52 + 2 * v50, *MEMORY[0x1E69A2EE0], v54);
  v116 = MEMORY[0x1E69E7CC0];
  sub_1C3D208C4();
  v108 = sub_1C3D20374();
  v56 = *(v99 + OBJC_IVAR___HKBalanceOverlayRoomViewController_balanceDisplayType);
  v58 = *(v49 + 16);
  v49 += 16;
  v57 = v58;
  v106 = (v49 - 8);
  v107 = v56;
  v94[1] = v52;
  v59 = 3;
  v60 = v98;
  v112 = v49;
  v58(v98, v52, v54);
  while (1)
  {
    sub_1C3D20364();
    sub_1C3D20314();
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    v61 = v109;
    v57(v109, v60, v54);
    v62 = objc_allocWithZone(type metadata accessor for BalanceClassificationOverlayContext());
    v57(&v62[OBJC_IVAR____TtC8HealthUI35BalanceClassificationOverlayContext_selectedClassification], v61, v54);
    v63 = v110;
    v57(v110, v61, v54);
    v64 = v107;
    v65 = sub_1C3CDB7A0(v64, v63);

    *&v62[OBJC_IVAR____TtC8HealthUI35BalanceClassificationOverlayContext_dataSourceDelegate] = v65;
    *&v62[OBJC_IVAR____TtC8HealthUI35BalanceClassificationOverlayContext_mode] = 3;
    v66 = v65;
    v67 = sub_1C3C37C70(v64, v61, v66);

    *&v62[OBJC_IVAR____TtC8HealthUI21BalanceOverlayContext_currentContextItem] = 0;
    *&v62[OBJC_IVAR____TtC8HealthUI21BalanceOverlayContext_baseDisplayType] = v64;
    *&v62[OBJC_IVAR____TtC8HealthUI21BalanceOverlayContext_overlayDisplayType] = v67;
    v54 = v111;
    v68 = type metadata accessor for BalanceOverlayContext();
    v114.receiver = v62;
    v114.super_class = v68;
    v69 = v64;
    objc_msgSendSuper2(&v114, sel_init);
    v70 = *v106;
    (*v106)(v61, v54);
    v70(v60, v54);

    sub_1C3D20894();
    sub_1C3D208D4();
    sub_1C3D208E4();
    sub_1C3D208A4();
    v52 += v113;
    if (!--v59)
    {
      break;
    }

    v57(v60, v52, v54);
  }

  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v71 = v116;
  v72 = v97;
  sub_1C3D1DEC4();

  v73 = swift_allocObject();
  *(v73 + 16) = v103;

  if ((v71 & 0x8000000000000000) != 0 || (v71 & 0x4000000000000000) != 0)
  {
    sub_1C3D20954();
  }

  else
  {
    sub_1C3D20A64();
  }

  v74 = objc_allocWithZone(HKOverlayContextSection);
  v75 = sub_1C3D202A4();

  v76 = [v74 initWithSectionTitle:0 overlayContextItems:v75];

  *(v73 + 32) = v76;
  v77 = objc_allocWithZone(HKOverlayContextSectionContainer);
  v78 = sub_1C3D200C4();

  v79 = sub_1C3D202A4();

  v80 = [v77 initWithContainerTitle:v78 overlayContextSections:v79];

  v81 = v80;
  MEMORY[0x1C692F8F0]();
  if (*((v117 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v117 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1C3D202C4();
  }

  sub_1C3D202F4();
  v82 = v117;
  if (sub_1C3CCB2E4(v105))
  {
    v83 = v72;
    sub_1C3D1DEC4();

    v84 = swift_allocObject();
    *(v84 + 16) = v103;
    v85 = objc_allocWithZone(HKOverlayContextSection);
    v86 = sub_1C3D202A4();

    v87 = [v85 initWithSectionTitle:0 overlayContextItems:v86];

    *(v84 + 32) = v87;
    v88 = objc_allocWithZone(HKOverlayContextSectionContainer);
    v89 = sub_1C3D200C4();

    v90 = sub_1C3D202A4();

    v91 = [v88 initWithContainerTitle:v89 overlayContextSections:v90];

    v92 = v91;
    MEMORY[0x1C692F8F0]();
    if (*((v117 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v117 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1C3D202C4();
    }

    sub_1C3D202F4();

    return v117;
  }

  else
  {
  }

  return v82;
}

id sub_1C3CCB2E4(uint64_t a1)
{
  v36 = a1;
  v35 = sub_1C3D1E2A4();
  v2 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v4 = &v25[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v34 = sub_1C3D1E3C4();
  v5 = *(v34 - 8);
  v6 = MEMORY[0x1EEE9AC00](v34);
  v8 = &v25[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  result = [v1 factorDisplayTypes];
  if (!result)
  {
    return result;
  }

  v10 = result;
  sub_1C3C27CB4(0, &unk_1EC085700);
  v11 = sub_1C3D202B4();

  v37 = [v1 chartController];
  if (!v37)
  {

    return 0;
  }

  if (([v1 healthFactorsEnabled] & 1) == 0)
  {

    return 0;
  }

  if (!(v11 >> 62))
  {
    v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v12)
    {
      goto LABEL_6;
    }

LABEL_22:

    return MEMORY[0x1E69E7CC0];
  }

  v12 = sub_1C3D20964();
  if (!v12)
  {
    goto LABEL_22;
  }

LABEL_6:
  v38 = MEMORY[0x1E69E7CC0];
  result = sub_1C3D208C4();
  if (v12 < 0)
  {
    __break(1u);
  }

  else
  {
    v32 = sub_1C3D20374();
    v13 = objc_opt_self();
    v14 = 0;
    v30 = *&v1[OBJC_IVAR___HKBalanceOverlayRoomViewController_balanceDisplayType];
    v31 = v13;
    v29 = v11 & 0xC000000000000001;
    v27 = (v2 + 8);
    v28 = (v2 + 104);
    v15 = (v5 + 8);
    v26 = *MEMORY[0x1E6969868];
    v33 = v12;
    do
    {
      if (v29)
      {
        v17 = MEMORY[0x1C692FEB0](v14, v11);
      }

      else
      {
        v17 = *(v11 + 8 * v14 + 32);
      }

      v18 = v17;
      sub_1C3D20364();
      sub_1C3D20314();
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      v19 = [v18 sampleType];
      v20 = v35;
      (*v28)(v4, v26, v35);
      sub_1C3D1E2B4();
      (*v27)(v4, v20);
      v21 = sub_1C3D1E364();
      (*v15)(v8, v34);
      v22 = [v31 generateDisplayTypeForTemplateDisplayType:v18 sampleType:v19 overlayChartController:v37 applicationItems:v36 currentTimeScope:5 currentCalendar:v21];

      v23 = [v22 graphSeriesForTimeScope_];
      if (v23)
      {
        objc_opt_self();
        v24 = swift_dynamicCastObjCClass();
        if (v24)
        {
          [v24 setRoundDaySamples_];
        }
      }

      ++v14;
      v16 = objc_allocWithZone(HKOverlayRoomFactorContext);
      [v16 initWithPrimaryInteractiveChartDisplayType:v30 interactiveChartFactorDisplayType:v22 overlayChartController:v37 currentCalendarOverride:0 applicationItems:v36 overlayMode:3];

      sub_1C3D20894();
      sub_1C3D208D4();
      sub_1C3D208E4();
      sub_1C3D208A4();
    }

    while (v33 != v14);

    return v38;
  }

  return result;
}

id BalanceOverlayRoomViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BalanceOverlayRoomViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1C3CCB840(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = MEMORY[0x1E69A2EF8];
  sub_1C3CCDA10(0, &qword_1EC086180, MEMORY[0x1E69A2EF8], MEMORY[0x1E69E6720]);
  v50 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v47 - v10;
  v12 = sub_1C3D1EDA4();
  v13 = *(v12 - 8);
  v53 = v12;
  v54 = v13;
  MEMORY[0x1EEE9AC00](v12);
  v55 = &v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v47 - v16;
  sub_1C3D1ED64();
  v52 = a1;
  sub_1C3CCDAE4(a1, v11, &qword_1EC086180, v5);
  v18 = sub_1C3D1ED84();
  v19 = sub_1C3D20514();
  v20 = os_log_type_enabled(v18, v19);
  v51 = v8;
  v49 = ObjectType;
  if (v20)
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v56[0] = v22;
    *v21 = 136446466;
    v23 = sub_1C3D20CD4();
    v48 = v2;
    v25 = sub_1C3C22C28(v23, v24, v56);

    *(v21 + 4) = v25;
    *(v21 + 12) = 2082;
    v26 = MEMORY[0x1E69A2EF8];
    sub_1C3CCDAE4(v11, v8, &qword_1EC086180, MEMORY[0x1E69A2EF8]);
    v27 = sub_1C3D20134();
    v29 = v28;
    sub_1C3CCDA74(v11, &qword_1EC086180, v26);
    v30 = sub_1C3C22C28(v27, v29, v56);

    *(v21 + 14) = v30;
    v2 = v48;
    _os_log_impl(&dword_1C3942000, v18, v19, "[%{public}s] most frequent classification updated: %{public}s", v21, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1C69321D0](v22, -1, -1);
    MEMORY[0x1C69321D0](v21, -1, -1);
  }

  else
  {

    sub_1C3CCDA74(v11, &qword_1EC086180, MEMORY[0x1E69A2EF8]);
  }

  v31 = v53;
  v32 = *(v54 + 8);
  result = v32(v17, v53);
  v34 = OBJC_IVAR___HKBalanceOverlayRoomViewController_isMostFrequentClassificationDetermined;
  v35 = v55;
  if ((v2[OBJC_IVAR___HKBalanceOverlayRoomViewController_isMostFrequentClassificationDetermined] & 1) == 0)
  {
    sub_1C3D1ED64();
    v36 = sub_1C3D1ED84();
    v37 = sub_1C3D20514();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v56[0] = v39;
      *v38 = 136446210;
      v40 = sub_1C3D20CD4();
      v42 = sub_1C3C22C28(v40, v41, v56);

      *(v38 + 4) = v42;
      _os_log_impl(&dword_1C3942000, v36, v37, "[%{public}s] reloading overlay context items", v38, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v39);
      MEMORY[0x1C69321D0](v39, -1, -1);
      MEMORY[0x1C69321D0](v38, -1, -1);

      v43 = v55;
    }

    else
    {

      v43 = v35;
    }

    v32(v43, v31);
    v45 = v51;
    v44 = v52;
    v2[v34] = 1;
    sub_1C3CCDAE4(v44, v45, &qword_1EC086180, MEMORY[0x1E69A2EF8]);
    v46 = OBJC_IVAR___HKBalanceOverlayRoomViewController_mostFrequentClassification;
    swift_beginAccess();
    sub_1C3CCDB64(v45, &v2[v46]);
    swift_endAccess();
    return [v2 reloadOverlayContextItems];
  }

  return result;
}

id sub_1C3CCBD2C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v10 = MEMORY[0x1E6969530];
  sub_1C3CCDA10(0, &qword_1EC085770, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v20 - v12;
  sub_1C3CCDAE4(a2, &v20 - v12, &qword_1EC085770, v10);
  v14 = sub_1C3D1E1E4();
  v15 = *(v14 - 8);
  v16 = 0;
  if ((*(v15 + 48))(v13, 1, v14) != 1)
  {
    v16 = sub_1C3D1E174();
    (*(v15 + 8))(v13, v14);
  }

  if (a4)
  {
    sub_1C3C27CB4(0, &unk_1EC085700);
    a4 = sub_1C3D202A4();
  }

  v17 = [objc_allocWithZone(type metadata accessor for BalanceOverlayRoomViewController()) initWithDisplayDate:v16 applicationItems:a1 factorDisplayTypes:a4 mode:1];

  v18 = v17;
  [v18 setRestorationUserActivity_];
  [v18 setAdditionalChartOptions_];

  return v18;
}

id sub_1C3CCBF20(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v30 = a4;
  v9 = MEMORY[0x1E6969530];
  v10 = MEMORY[0x1E69E6720];
  sub_1C3CCDA10(0, &qword_1EC085770, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v29 - v12;
  v14 = MEMORY[0x1E69A2E68];
  sub_1C3CCDA10(0, &qword_1EC0862F0, MEMORY[0x1E69A2E68], v10);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v29 - v16;
  v5[OBJC_IVAR___HKBalanceOverlayRoomViewController_isMostFrequentClassificationDetermined] = 0;
  v18 = OBJC_IVAR___HKBalanceOverlayRoomViewController_mostFrequentClassification;
  v19 = sub_1C3D1E974();
  (*(*(v19 - 8) + 56))(&v5[v18], 1, 1, v19);
  v20 = sub_1C3D1E8C4();
  (*(*(v20 - 8) + 56))(v17, 1, 1, v20);
  v21 = sub_1C3C37728(a2, v17);
  sub_1C3CCDA74(v17, &qword_1EC0862F0, v14);
  *&v5[OBJC_IVAR___HKBalanceOverlayRoomViewController_balanceDisplayType] = v21;
  sub_1C3CCDAE4(a1, v13, &qword_1EC085770, v9);
  v22 = sub_1C3D1E1E4();
  v23 = *(v22 - 8);
  v24 = 0;
  if ((*(v23 + 48))(v13, 1, v22) != 1)
  {
    v24 = sub_1C3D1E174();
    (*(v23 + 8))(v13, v22);
  }

  if (a3)
  {
    sub_1C3C27CB4(0, &unk_1EC085700);
    v25 = sub_1C3D202A4();
  }

  else
  {
    v25 = 0;
  }

  v26 = type metadata accessor for BalanceOverlayRoomViewController();
  v31.receiver = v5;
  v31.super_class = v26;
  v27 = objc_msgSendSuper2(&v31, sel_initWithDisplayDate_applicationItems_factorDisplayTypes_mode_, v24, a2, v25, v30);

  sub_1C3CCDA74(a1, &qword_1EC085770, MEMORY[0x1E6969530]);
  return v27;
}

uint64_t sub_1C3CCC24C()
{
  sub_1C3CCDA10(0, &qword_1EC086180, MEMORY[0x1E69A2EF8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v37 - v2;
  v4 = sub_1C3D1E974();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v37 - v9;
  v11 = *(v0 + OBJC_IVAR___HKBalanceOverlayRoomViewController_balanceDisplayType);
  if (*(v0 + OBJC_IVAR___HKBalanceOverlayRoomViewController_isMostFrequentClassificationDetermined) == 1)
  {
    v12 = OBJC_IVAR___HKBalanceOverlayRoomViewController_mostFrequentClassification;
    swift_beginAccess();
    sub_1C3CCDAE4(v0 + v12, v3, &qword_1EC086180, MEMORY[0x1E69A2EF8]);
    v13 = *(v5 + 48);
    if (v13(v3, 1, v4) == 1)
    {
      (*(v5 + 104))(v10, *MEMORY[0x1E69A2EF0], v4);
      if (v13(v3, 1, v4) != 1)
      {
        sub_1C3CCDA74(v3, &qword_1EC086180, MEMORY[0x1E69A2EF8]);
      }
    }

    else
    {
      (*(v5 + 32))(v10, v3, v4);
    }

    v18 = objc_allocWithZone(type metadata accessor for BalanceClassificationOverlayContext());
    v19 = *(v5 + 16);
    v19(&v18[OBJC_IVAR____TtC8HealthUI35BalanceClassificationOverlayContext_selectedClassification], v10, v4);
    v19(v7, v10, v4);
    v20 = v11;
    v21 = sub_1C3CDB7A0(v20, v7);

    *&v18[OBJC_IVAR____TtC8HealthUI35BalanceClassificationOverlayContext_dataSourceDelegate] = v21;
    *&v18[OBJC_IVAR____TtC8HealthUI35BalanceClassificationOverlayContext_mode] = 1;
    v22 = v21;
    v23 = sub_1C3C37C70(v20, v10, v22);

    *&v18[OBJC_IVAR____TtC8HealthUI21BalanceOverlayContext_currentContextItem] = 0;
    *&v18[OBJC_IVAR____TtC8HealthUI21BalanceOverlayContext_baseDisplayType] = v20;
    *&v18[OBJC_IVAR____TtC8HealthUI21BalanceOverlayContext_overlayDisplayType] = v23;
    v24 = type metadata accessor for BalanceOverlayContext();
    v38.receiver = v18;
    v38.super_class = v24;
    v25 = v20;
    v17 = objc_msgSendSuper2(&v38, sel_init);
    (*(v5 + 8))(v10, v4);
  }

  else
  {
    v14 = objc_allocWithZone(type metadata accessor for BalanceMostFrequentClassificationOverlayContext());
    *&v14[OBJC_IVAR____TtC8HealthUI47BalanceMostFrequentClassificationOverlayContext_delegate + 8] = 0;
    *(swift_unknownObjectWeakInit() + 8) = &off_1F42FD6B0;
    swift_unknownObjectWeakAssign();
    *&v14[OBJC_IVAR____TtC8HealthUI21BalanceOverlayContext_currentContextItem] = 0;
    *&v14[OBJC_IVAR____TtC8HealthUI21BalanceOverlayContext_baseDisplayType] = v11;
    *&v14[OBJC_IVAR____TtC8HealthUI21BalanceOverlayContext_overlayDisplayType] = v11;
    v15 = type metadata accessor for BalanceOverlayContext();
    v39.receiver = v14;
    v39.super_class = v15;
    v16 = v11;
    v17 = objc_msgSendSuper2(&v39, sel_init);
  }

  sub_1C3C27C60();
  v26 = swift_allocObject();
  v37 = xmmword_1C3D5EAE0;
  *(v26 + 16) = xmmword_1C3D5EAE0;
  v27 = swift_allocObject();
  *(v27 + 16) = v37;
  *(v27 + 32) = v17;
  v28 = objc_allocWithZone(HKOverlayContextSection);
  sub_1C3C77FEC(0, &qword_1EC085780);
  v29 = v17;
  v30 = sub_1C3D202A4();

  v31 = [v28 initWithSectionTitle:0 overlayContextItems:v30];

  *(v26 + 32) = v31;
  v32 = objc_allocWithZone(HKOverlayContextSectionContainer);
  sub_1C3C27CB4(0, &unk_1EC085790);
  v33 = sub_1C3D202A4();

  v34 = [v32 initWithContainerTitle:0 overlayContextSections:v33];

  v35 = swift_allocObject();
  *(v35 + 16) = v37;
  *(v35 + 32) = v34;

  return v35;
}

uint64_t sub_1C3CCC7A8(uint64_t a1, void *a2)
{
  swift_getObjectType();
  v4 = sub_1C3D1EDA4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C3D1ED64();
  v8 = sub_1C3D1ED84();
  v9 = sub_1C3D20514();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v20 = v5;
    v11 = v10;
    v12 = swift_slowAlloc();
    v21 = v12;
    *v11 = 136446466;
    v13 = sub_1C3D20CD4();
    v15 = sub_1C3C22C28(v13, v14, &v21);
    v19 = v4;
    v16 = v15;

    *(v11 + 4) = v16;
    *(v11 + 12) = 2048;
    *(v11 + 14) = a1;
    _os_log_impl(&dword_1C3942000, v8, v9, "[%{public}s] building containers for mode: %ld", v11, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x1C69321D0](v12, -1, -1);
    MEMORY[0x1C69321D0](v11, -1, -1);

    (*(v20 + 8))(v7, v19);
    if (a1 != 1)
    {
      goto LABEL_3;
    }

    return sub_1C3CCC24C();
  }

  (*(v5 + 8))(v7, v4);
  if (a1 == 1)
  {
    return sub_1C3CCC24C();
  }

LABEL_3:
  if (a1 == 3)
  {
    return sub_1C3CCA458(a2);
  }

  else
  {
    return MEMORY[0x1E69E7CC0];
  }
}

uint64_t type metadata accessor for BalanceOverlayRoomViewController()
{
  result = qword_1EC087288;
  if (!qword_1EC087288)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_1C3CCCA34()
{
  swift_getObjectType();
  v0 = sub_1C3D1EDA4();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v45 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C3D1ED64();
  v4 = sub_1C3D1ED84();
  v5 = sub_1C3D20514();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v46 = v7;
    *v6 = 136446210;
    v8 = sub_1C3D20CD4();
    v10 = sub_1C3C22C28(v8, v9, &v46);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_1C3942000, v4, v5, "[%{public}s] opening info from current value view", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x1C69321D0](v7, -1, -1);
    MEMORY[0x1C69321D0](v6, -1, -1);
  }

  (*(v1 + 8))(v3, v0);
  sub_1C3C27C60();
  v45 = swift_allocObject();
  *(v45 + 16) = xmmword_1C3D61360;
  if (qword_1EC080DC0 != -1)
  {
    swift_once();
  }

  v11 = qword_1EC08DBD8;
  sub_1C3D1DEC4();
  v12 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
  v13 = sub_1C3D200C4();

  v14 = [v12 initWithString_];

  v15 = v11;
  sub_1C3D1DEC4();

  v16 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
  v17 = sub_1C3D200C4();

  v18 = [v16 initWithString_];

  v19 = [objc_allocWithZone(HKInfographicContentItem) initWithTitle:v14 description:v18];
  v20 = v45;
  *(v45 + 32) = v19;
  v21 = v15;
  sub_1C3D1DEC4();

  v22 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
  v23 = sub_1C3D200C4();

  v24 = [v22 initWithString_];

  v25 = v21;
  sub_1C3D1DEC4();

  v26 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
  v27 = sub_1C3D200C4();

  v28 = [v26 initWithString_];

  v29 = [objc_allocWithZone(HKInfographicContentItem) initWithTitle:v24 description:v28];
  *(v20 + 40) = v29;
  v30 = v25;
  sub_1C3D1DEC4();

  v31 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
  v32 = sub_1C3D200C4();

  v33 = [v31 initWithString_];

  sub_1C3D1DEC4();
  v34 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
  v35 = sub_1C3D200C4();

  v36 = [v34 initWithString_];

  v37 = [objc_allocWithZone(HKInfographicContentItem) initWithTitle:v33 description:v36];
  *(v20 + 48) = v37;
  sub_1C3D1DEC4();

  v38 = objc_allocWithZone(HKInfographicViewController);
  sub_1C3C77FEC(0, &qword_1EC0872A0);
  v39 = sub_1C3D202A4();

  v40 = [v38 initWithItems_];

  v41 = v40;
  v42 = sub_1C3D200C4();

  [v41 setTitle_];

  v43 = [objc_allocWithZone(HKModalNavigationController) initWithRootViewController_];
  return v43;
}

uint64_t sub_1C3CCD168(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v4 = sub_1C3D1EDA4();
  v61 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v53 - v8;
  v10 = sub_1C3D1E8C4();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v53 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v60 = &v53 - v18;
  v19 = *(sub_1C3D1E8A4() + 16);

  if (v19 > a1)
  {
    v20 = sub_1C3D1E8A4();
    if (a1 < 0)
    {
      __break(1u);
    }

    else if (*(v20 + 16) > a1)
    {
      v56 = v4;
      v21 = *(v11 + 16);
      v22 = v20 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * a1;
      v23 = v11;
      v6 = v60;
      v21(v60, v22, v10);

      sub_1C3D1ED64();
      v21(v16, v6, v10);
      v24 = sub_1C3D1ED84();
      v55 = sub_1C3D20514();
      v25 = os_log_type_enabled(v24, v55);
      v57 = v23;
      v58 = v10;
      if (v25)
      {
        v26 = swift_slowAlloc();
        v54 = swift_slowAlloc();
        v62 = v54;
        *v26 = 136446466;
        v27 = sub_1C3D20CD4();
        v29 = sub_1C3C22C28(v27, v28, &v62);
        ObjectType = v2;
        v30 = v29;
        v31 = v58;

        *(v26 + 4) = v30;
        *(v26 + 12) = 2082;
        v21(v13, v16, v31);
        v32 = sub_1C3D20134();
        v34 = v33;
        a1 = *(v23 + 8);
        (a1)(v16, v31);
        v35 = sub_1C3C22C28(v32, v34, &v62);
        v2 = ObjectType;

        *(v26 + 14) = v35;
        _os_log_impl(&dword_1C3942000, v24, v55, "[%{public}s] opening info view for type: %{public}s", v26, 0x16u);
        v36 = v54;
        swift_arrayDestroy();
        MEMORY[0x1C69321D0](v36, -1, -1);
        v37 = v26;
        v6 = v60;
        MEMORY[0x1C69321D0](v37, -1, -1);
      }

      else
      {

        a1 = *(v23 + 8);
        (a1)(v16, v10);
      }

      (*(v61 + 8))(v9, v56);
      if (qword_1EC080DC0 == -1)
      {
        goto LABEL_11;
      }

      goto LABEL_16;
    }

    __break(1u);
LABEL_16:
    swift_once();
LABEL_11:
    v46 = qword_1EC08DBD8;
    sub_1C3D1DEC4();

    if (sub_1C3CDC1B4() >> 62)
    {
      sub_1C3C77FEC(0, &qword_1EC0872A0);
      sub_1C3D20954();
    }

    else
    {

      sub_1C3D20A64();
      sub_1C3C77FEC(0, &qword_1EC0872A0);
    }

    v47 = objc_allocWithZone(HKInfographicViewController);
    sub_1C3C77FEC(0, &qword_1EC0872A0);
    v48 = sub_1C3D202A4();

    v49 = [v47 initWithItems_];

    v50 = v49;
    v51 = sub_1C3D200C4();

    [v50 setTitle_];

    v52 = [objc_allocWithZone(HKModalNavigationController) initWithRootViewController_];
    [v2 hk:v52 presentModalCardViewController:0 fullScreen:1 animated:0 completion:?];

    return (a1)(v6, v58);
  }

  sub_1C3D1ED64();
  v38 = sub_1C3D1ED84();
  v39 = sub_1C3D204F4();
  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v62 = v41;
    *v40 = 136446466;
    v42 = sub_1C3D20CD4();
    v44 = sub_1C3C22C28(v42, v43, &v62);

    *(v40 + 4) = v44;
    *(v40 + 12) = 2048;
    *(v40 + 14) = a1;
    _os_log_impl(&dword_1C3942000, v38, v39, "[%{public}s] tapped unsupported index: %ld", v40, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v41);
    MEMORY[0x1C69321D0](v41, -1, -1);
    MEMORY[0x1C69321D0](v40, -1, -1);
  }

  return (*(v61 + 8))(v6, v4);
}

void sub_1C3CCD884()
{
  sub_1C3CCDA10(319, &qword_1EC086180, MEMORY[0x1E69A2EF8], MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1C3CCDA10(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1C3CCDA74(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1C3CCDA10(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1C3CCDAE4(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1C3CCDA10(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1C3CCDB64(uint64_t a1, uint64_t a2)
{
  sub_1C3CCDA10(0, &qword_1EC086180, MEMORY[0x1E69A2EF8], MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C3CCDBF8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x656D614E776F6C66;
  v3 = a1;
  v4 = 0xE800000000000000;
  v5 = 0x80000001C3D81F60;
  v6 = 0xD000000000000019;
  if (a1 != 4)
  {
    v6 = 0xD000000000000013;
    v5 = 0x80000001C3D81F80;
  }

  if (a1 == 3)
  {
    v6 = 0xD000000000000013;
    v5 = 0x80000001C3D81F40;
  }

  v7 = 0x6172676F69647561;
  v8 = 0xEE00746E756F436DLL;
  if (v3 != 1)
  {
    v7 = 0xD000000000000013;
    v8 = 0x80000001C3D81F20;
  }

  if (v3)
  {
    v4 = v8;
  }

  else
  {
    v7 = 0x656D614E776F6C66;
  }

  if (v3 <= 2)
  {
    v9 = v7;
  }

  else
  {
    v9 = v6;
  }

  if (v3 <= 2)
  {
    v10 = v4;
  }

  else
  {
    v10 = v5;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v11 = 0x80000001C3D81F40;
    }

    else
    {
      if (a2 == 4)
      {
        v11 = 0x80000001C3D81F60;
        v2 = 0xD000000000000019;
        goto LABEL_28;
      }

      v11 = 0x80000001C3D81F80;
    }

LABEL_27:
    v2 = 0xD000000000000013;
    goto LABEL_28;
  }

  if (!a2)
  {
    v11 = 0xE800000000000000;
    goto LABEL_28;
  }

  if (a2 != 1)
  {
    v11 = 0x80000001C3D81F20;
    goto LABEL_27;
  }

  v2 = 0x6172676F69647561;
  v11 = 0xEE00746E756F436DLL;
LABEL_28:
  if (v9 == v2 && v10 == v11)
  {
    v12 = 1;
  }

  else
  {
    v12 = sub_1C3D20A54();
  }

  return v12 & 1;
}

uint64_t sub_1C3CCDD98(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE400000000000000;
  v4 = 0xE600000000000000;
  v5 = 0x796C6B656577;
  v6 = 0xE700000000000000;
  v7 = 0x796C68746E6F6DLL;
  if (a1 != 4)
  {
    v7 = 0x796C72616579;
    v6 = 0xE600000000000000;
  }

  if (a1 != 3)
  {
    v5 = v7;
    v4 = v6;
  }

  v8 = 0xE600000000000000;
  v9 = 0x796C72756F68;
  if (a1 != 1)
  {
    v9 = 0x796C696164;
    v8 = 0xE500000000000000;
  }

  if (a1)
  {
    v3 = v8;
  }

  else
  {
    v9 = 1701736302;
  }

  if (a1 <= 2u)
  {
    v10 = v9;
  }

  else
  {
    v10 = v5;
  }

  if (v2 <= 2)
  {
    v11 = v3;
  }

  else
  {
    v11 = v4;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v12 = 0xE600000000000000;
      v13 = 1801807223;
    }

    else
    {
      if (a2 == 4)
      {
        v12 = 0xE700000000000000;
        if (v10 != 0x796C68746E6F6DLL)
        {
          goto LABEL_33;
        }

        goto LABEL_31;
      }

      v12 = 0xE600000000000000;
      v13 = 1918985593;
    }
  }

  else
  {
    if (!a2)
    {
      v12 = 0xE400000000000000;
      if (v10 != 1701736302)
      {
        goto LABEL_33;
      }

      goto LABEL_31;
    }

    if (a2 != 1)
    {
      v12 = 0xE500000000000000;
      if (v10 != 0x796C696164)
      {
        goto LABEL_33;
      }

      goto LABEL_31;
    }

    v12 = 0xE600000000000000;
    v13 = 1920298856;
  }

  if (v10 != (v13 & 0xFFFF0000FFFFFFFFLL | 0x796C00000000))
  {
LABEL_33:
    v14 = sub_1C3D20A54();
    goto LABEL_34;
  }

LABEL_31:
  if (v11 != v12)
  {
    goto LABEL_33;
  }

  v14 = 1;
LABEL_34:

  return v14 & 1;
}

uint64_t AggregationStrategy.init(statisticsInterval:)@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  sub_1C3D1DCC4();
  if (v4)
  {
    sub_1C3D1DCB4();
    if (v5)
    {
      sub_1C3D1DC84();
      if (v6)
      {
        sub_1C3D1DCE4();
        if (v7)
        {
          sub_1C3D1DCD4();
          v9 = v8;
          v10 = sub_1C3D1DCF4();
          result = (*(*(v10 - 8) + 8))(a1, v10);
          if (v9)
          {
            v12 = 0;
          }

          else
          {
            v12 = 5;
          }
        }

        else
        {
          v16 = sub_1C3D1DCF4();
          result = (*(*(v16 - 8) + 8))(a1, v16);
          v12 = 4;
        }
      }

      else
      {
        v15 = sub_1C3D1DCF4();
        result = (*(*(v15 - 8) + 8))(a1, v15);
        v12 = 3;
      }
    }

    else
    {
      v14 = sub_1C3D1DCF4();
      result = (*(*(v14 - 8) + 8))(a1, v14);
      v12 = 2;
    }
  }

  else
  {
    v13 = sub_1C3D1DCF4();
    result = (*(*(v13 - 8) + 8))(a1, v13);
    v12 = 1;
  }

  *a2 = v12;
  return result;
}

uint64_t sub_1C3CCE0DC()
{
  sub_1C3D20B04();
  sub_1C3D20164();

  return sub_1C3D20B34();
}

uint64_t sub_1C3CCE1CC()
{
  sub_1C3D20B04();
  sub_1C3D20164();

  return sub_1C3D20B34();
}

uint64_t sub_1C3CCE2EC()
{
  sub_1C3D20B04();
  sub_1C3D20164();

  return sub_1C3D20B34();
}

uint64_t sub_1C3CCE3D8()
{
  sub_1C3D20B04();
  sub_1C3D20164();

  return sub_1C3D20B34();
}

uint64_t AggregationStrategy.rawValue.getter()
{
  v1 = *v0;
  v2 = 1701736302;
  v3 = 0x796C6B656577;
  v4 = 0x796C68746E6F6DLL;
  if (v1 != 4)
  {
    v4 = 0x796C72616579;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x796C72756F68;
  if (v1 != 1)
  {
    v5 = 0x796C696164;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1C3CCE598(uint64_t a1)
{
  v25 = sub_1C3D1E3C4();
  v2 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1C3D1FE54();
  v23 = *(v5 - 8);
  v24 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1C3D1E1E4();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v21 - v13;
  v22 = a1;
  v15 = sub_1C3D1E364();
  v16 = sub_1C3D1E2E4();
  v17 = sub_1C3D1E174();
  v18 = [v15 hk:v16 startOfWeekWithFirstWeekday:v17 beforeDate:0 addingWeeks:?];

  sub_1C3D1E1A4();
  (*(v9 + 16))(v12, v14, v8);
  (*(v2 + 16))(v4, v22, v25);
  sub_1C3D1FE14();
  v19 = sub_1C3D1FE34();
  (*(v23 + 8))(v7, v24);
  (*(v9 + 8))(v14, v8);
  return v19;
}

uint64_t sub_1C3CCE854(uint64_t a1)
{
  v18 = a1;
  v21 = sub_1C3D1E3C4();
  v19 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v2 = &v18 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1C3D1FE54();
  v3 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1C3D1E1E4();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v18 - v11;
  v13 = sub_1C3D1E364();
  v14 = sub_1C3D1E174();
  v15 = [v13 hk:v14 startOfMonthForDate:?];

  sub_1C3D1E1A4();
  (*(v7 + 16))(v10, v12, v6);
  (*(v19 + 16))(v2, v18, v21);
  sub_1C3D1FE14();
  v16 = sub_1C3D1FE34();
  (*(v3 + 8))(v5, v20);
  (*(v7 + 8))(v12, v6);
  return v16;
}

void sub_1C3CCEB04(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v29 = a3;
  v6 = sub_1C3D1E3C4();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1C3D1E1E4();
  v28 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1C3D1FE54();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *v3;
  if (v18 > 2)
  {
    if (v18 == 3)
    {
      v19 = MEMORY[0x1E6969A10];
      v20 = sub_1C3CCE598;
    }

    else
    {
      if (v18 != 4)
      {
        sub_1C3CCF30C(a2, v29);
        return;
      }

      v19 = MEMORY[0x1E6969A78];
      v20 = sub_1C3CCE854;
    }

    sub_1C3CCEFF8(a2, v20, v19, v29);
    return;
  }

  if (*v3)
  {
    if (v18 == 1)
    {
      sub_1C3CCEE64();
    }

    else
    {
      v23 = *(v28 + 16);
      v28 = v15;
      v23(v12, a1, v10);
      (*(v7 + 16))(v9, a2, v6);
      sub_1C3D1FE14();
      v24 = sub_1C3D1FE34();
      (*(v14 + 8))(v17, v28);
      v25 = objc_opt_self();
      v26 = sub_1C3D1E364();
      v27 = [v25 hk:v24 noonWithDayIndex:v26 calendar:?];

      sub_1C3D1E1A4();
    }
  }

  else
  {
    v21 = v29;
    v22 = *(v28 + 16);

    v22(v21, a1, v10);
  }
}

uint64_t sub_1C3CCEE64()
{
  v0 = sub_1C3D1E1E4();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x1EEE9AC00](v0);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v13 - v5;
  v7 = sub_1C3D1E174();
  v8 = HKStartOfHourForDate(v7);

  sub_1C3D1E1A4();
  sub_1C3D1E0A4();
  v9 = *(v1 + 8);
  v9(v6, v0);
  v10 = sub_1C3D1E174();
  v11 = HKEndOfHourForDate(v10);

  sub_1C3D1E1A4();
  sub_1C3D1E0A4();
  v9(v4, v0);
  return sub_1C3D1E094();
}

uint64_t sub_1C3CCEFF8@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t)@<X1>, unsigned int *a3@<X2>, uint64_t a4@<X8>)
{
  v30 = a3;
  v27 = a4;
  v6 = sub_1C3D1E3A4();
  v28 = *(v6 - 8);
  v29 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C3C27AE0();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1C3D1E1E4();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v27 - v17;
  v19 = a2(a1);
  v20 = objc_opt_self();
  v21 = sub_1C3D1E364();
  v22 = [v20 hk:v19 dateOnDayIndex:0 atHour:v21 calendar:v27];

  sub_1C3D1E1A4();
  v23 = v29;
  v24 = v28;
  (*(v28 + 104))(v8, *v30, v29);
  sub_1C3D1E394();
  (*(v24 + 8))(v8, v23);
  result = (*(v13 + 48))(v11, 1, v12);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v13 + 32))(v16, v11, v12);
    sub_1C3D1E0A4();
    sub_1C3D1E0A4();
    sub_1C3D1E094();
    v26 = *(v13 + 8);
    v26(v16, v12);
    return (v26)(v18, v12);
  }

  return result;
}

uint64_t sub_1C3CCF30C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v21[1] = a2;
  v21[2] = a1;
  v22 = sub_1C3D1E3A4();
  v2 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v4 = v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C3C27AE0();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1C3D1E1E4();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = v21 - v13;
  v15 = sub_1C3D1E364();
  v16 = sub_1C3D1E174();
  v17 = [v15 hk:v16 startOfYearForDate:0 addingYears:?];

  sub_1C3D1E1A4();
  v18 = v22;
  (*(v2 + 104))(v4, *MEMORY[0x1E6969A68], v22);
  sub_1C3D1E394();
  (*(v2 + 8))(v4, v18);
  result = (*(v9 + 48))(v7, 1, v8);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v9 + 32))(v12, v7, v8);
    sub_1C3D1E0A4();
    sub_1C3D1E0A4();
    sub_1C3D1E094();
    v20 = *(v9 + 8);
    v20(v12, v8);
    return (v20)(v14, v8);
  }

  return result;
}

HealthUI::AggregationStrategy_optional __swiftcall AggregationStrategy.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1C3D209C4();

  v5 = 6;
  if (v3 < 6)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t sub_1C3CCF680()
{
  result = qword_1EC0872A8;
  if (!qword_1EC0872A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0872A8);
  }

  return result;
}

uint64_t sub_1C3CCF6DC()
{
  sub_1C3D20164();
}

void sub_1C3CCF7C8(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 1701736302;
  v5 = 0xE600000000000000;
  v6 = 0x796C6B656577;
  v7 = 0xE700000000000000;
  v8 = 0x796C68746E6F6DLL;
  if (v2 != 4)
  {
    v8 = 0x796C72616579;
    v7 = 0xE600000000000000;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE600000000000000;
  v10 = 0x796C72756F68;
  if (v2 != 1)
  {
    v10 = 0x796C696164;
    v9 = 0xE500000000000000;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  if (*v1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v11;
  a1[1] = v3;
}

unint64_t sub_1C3CCF874()
{
  result = qword_1EC0872B0;
  if (!qword_1EC0872B0)
  {
    sub_1C3CCF8CC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0872B0);
  }

  return result;
}

void sub_1C3CCF8CC()
{
  if (!qword_1EC0872B8)
  {
    v0 = sub_1C3D20304();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC0872B8);
    }
  }
}

uint64_t sub_1C3CCF93C(uint64_t a1)
{
  if (*(v1 + 8))
  {
    sub_1C3D20374();
    sub_1C3D20364();
    sub_1C3D20314();
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    sub_1C3C4999C();

    sub_1C3D1F994();
  }

  MEMORY[0x1EEE9AC00](a1);
  sub_1C3CC2F88();
  sub_1C3CD0C48(0, &qword_1EC0872C0, sub_1C3CD0B0C, MEMORY[0x1E6981F40]);
  sub_1C3CD0DE4();
  sub_1C3CD0E54();
  return sub_1C3D1FCD4();
}

uint64_t sub_1C3CCFB0C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v104 = a2;
  sub_1C3CD0D14();
  v90 = v3;
  v89 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v88 = &v83 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C3CD0CAC();
  v100 = v5;
  v98 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v87 = &v83 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1E69E6720];
  sub_1C3CD0C48(0, &qword_1EC0872E0, sub_1C3CD0CAC, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v103 = &v83 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v83 - v11;
  sub_1C3CD0C48(0, &qword_1EC0872D8, sub_1C3CD0BE8, v7);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v102 = &v83 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v106 = &v83 - v16;
  sub_1C3CD0BE8();
  v94 = v17;
  v93 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v99 = &v83 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v97 = &v83 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v84 = &v83 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v109 = &v83 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v108 = &v83 - v26;
  sub_1C3D20374();
  v96 = sub_1C3D20364();
  sub_1C3D20314();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v27 = a1[4];
  v91 = a1[5];
  v28 = a1[6];
  v83 = a1[7];
  v29 = a1[9];
  v105 = a1[8];
  v86 = v29;
  v85 = a1[10];
  v30 = *a1;
  v31 = a1[1];
  v32 = a1[2];
  v33 = a1[3];

  v107 = v32;
  v34 = [v32 featureVersion];
  v35 = sub_1C3D20104();
  v37 = v36;

  v110 = v33;
  v111 = v27;
  v112 = v35;
  v113 = v37;
  v116 = 0;
  v117 = 0xE000000000000000;
  sub_1C3D20834();
  v38 = a1[11];
  v39 = a1[12];
  v101 = v12;
  v95 = v30;
  v92 = v38;
  if (v31)
  {
    v116 = v38;
    v117 = v39;

    MEMORY[0x1C692F800](46, 0xE100000000000000);
    MEMORY[0x1C692F800](v30, v31);

    v40 = v116;
    v41 = v117;
  }

  else
  {

    v40 = v38;
    v41 = v39;
  }

  v116 = v40;
  v117 = v41;
  MEMORY[0x1C692F800](0x657275746165462ELL, 0xEF6E6F6973726556);
  sub_1C3CD0EDC();
  sub_1C3D1FA64();

  v42 = [v107 updateVersion];
  v43 = sub_1C3D20104();
  v45 = v44;

  v110 = v91;
  v111 = v28;
  v112 = v43;
  v113 = v45;
  v116 = 0;
  v117 = 0xE000000000000000;
  sub_1C3D20834();
  if (v31)
  {
    v46 = v92;
    v116 = v92;
    v117 = v39;

    MEMORY[0x1C692F800](46, 0xE100000000000000);
    v47 = v95;
    MEMORY[0x1C692F800](v95, v31);
    v48 = v46;

    v49 = v116;
    v50 = v117;
  }

  else
  {

    v48 = v92;
    v49 = v92;
    v50 = v39;
    v47 = v95;
  }

  v116 = v49;
  v117 = v50;
  MEMORY[0x1C692F800](0x566574616470552ELL, 0xEE006E6F69737265);
  sub_1C3D1FA64();

  v51 = [v107 yearOfRelease];
  if (v51)
  {
    v52 = v51;
    v53 = sub_1C3D20104();
    v55 = v54;

    v110 = v83;
    v111 = v105;
    v112 = v53;
    v113 = v55;
    v116 = 0;
    v117 = 0xE000000000000000;

    sub_1C3D20834();
    if (v31)
    {
      v116 = v48;
      v117 = v39;

      MEMORY[0x1C692F800](46, 0xE100000000000000);
      MEMORY[0x1C692F800](v47, v31);

      v56 = v116;
      v57 = v117;
    }

    else
    {

      v56 = v48;
      v57 = v39;
    }

    v116 = v56;
    v117 = v57;
    MEMORY[0x1C692F800](0x52664F726165592ELL, 0xEE00657361656C65);
    v60 = v84;
    sub_1C3D1FA64();

    v59 = v106;
    sub_1C3CD1138(v60, v106, sub_1C3CD0BE8);
    v58 = 0;
  }

  else
  {
    v58 = 1;
    v59 = v106;
  }

  v61 = 1;
  (*(v93 + 56))(v59, v58, 1, v94);
  v62 = [v107 UDIDeviceIdentifier];
  if (v62)
  {
    v63 = v62;
    v64 = sub_1C3D20104();
    v66 = v65;

    v67 = v86;
    v68 = v85;
    v116 = v86;
    v117 = v85;
    v110 = v48;
    v111 = v39;
    swift_bridgeObjectRetain_n();

    MEMORY[0x1C692F800](1229215022, 0xE400000000000000);
    v69 = v110;
    v70 = v111;
    v110 = v67;
    v111 = v68;
    v112 = v64;
    v113 = v66;
    v114 = v69;
    v115 = v70;
    sub_1C3CD0D90();
    sub_1C3C4999C();
    v71 = v88;
    sub_1C3D1F164();
    if (v31)
    {
      v110 = v48;
      v111 = v39;

      MEMORY[0x1C692F800](46, 0xE100000000000000);
      MEMORY[0x1C692F800](v47, v31);
      v48 = v110;
      v39 = v111;
    }

    else
    {
    }

    v110 = v48;
    v111 = v39;
    MEMORY[0x1C692F800](1229215022, 0xE400000000000000);
    sub_1C3CD10E0();
    v73 = v87;
    v74 = v90;
    sub_1C3D1FA64();

    (*(v89 + 8))(v71, v74);
    v72 = v101;
    sub_1C3CD1138(v73, v101, sub_1C3CD0CAC);
    v61 = 0;
  }

  else
  {
    v72 = v101;
  }

  (*(v98 + 56))(v72, v61, 1, v100);
  v75 = v97;
  sub_1C3CD0F30(v108, v97);
  v76 = v99;
  sub_1C3CD0F30(v109, v99);
  v77 = v102;
  sub_1C3CD0F94(v59, v102, &qword_1EC0872D8, sub_1C3CD0BE8);
  v78 = v103;
  sub_1C3CD0F94(v72, v103, &qword_1EC0872E0, sub_1C3CD0CAC);
  v79 = v104;
  sub_1C3CD0F30(v75, v104);
  sub_1C3CD0B0C();
  v81 = v80;
  sub_1C3CD0F30(v76, v79 + *(v80 + 48));
  sub_1C3CD0F94(v77, v79 + *(v81 + 64), &qword_1EC0872D8, sub_1C3CD0BE8);
  sub_1C3CD0F94(v78, v79 + *(v81 + 80), &qword_1EC0872E0, sub_1C3CD0CAC);
  sub_1C3CD1014(v72, &qword_1EC0872E0, sub_1C3CD0CAC);
  sub_1C3CD1014(v106, &qword_1EC0872D8, sub_1C3CD0BE8);
  sub_1C3CD1084(v109);
  sub_1C3CD1084(v108);
  sub_1C3CD1014(v78, &qword_1EC0872E0, sub_1C3CD0CAC);
  sub_1C3CD1014(v77, &qword_1EC0872D8, sub_1C3CD0BE8);
  sub_1C3CD1084(v76);
  sub_1C3CD1084(v75);
}

uint64_t DeviceFeatureAttributes.deviceName.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t DeviceFeatureAttributes.deviceName.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t DeviceFeatureAttributes.init(deviceName:featureAttributes:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

uint64_t _s8HealthUI23DeviceFeatureAttributesV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v3 = a1[1];
  v4 = a2[1];
  if (v3)
  {
    if (v4)
    {
      v5 = *a1 == *a2 && v3 == v4;
      if (v5 || (sub_1C3D20A54() & 1) != 0)
      {
        goto LABEL_8;
      }
    }
  }

  else if (!v4)
  {
LABEL_8:
    sub_1C3C5589C();
    return sub_1C3D206B4() & 1;
  }

  return 0;
}

uint64_t sub_1C3CD079C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C3CD07E4(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

void sub_1C3CD0834(uint64_t *a1@<X8>)
{
  if (qword_1EC080DC0 != -1)
  {
    swift_once();
  }

  v2 = qword_1EC08DBD8;
  v15 = sub_1C3D1DEC4();
  v4 = v3;

  v5 = v2;
  v6 = sub_1C3D1DEC4();
  v8 = v7;

  v9 = sub_1C3D1DEC4();
  v11 = v10;

  v12 = sub_1C3D1DEC4();
  v14 = v13;

  *a1 = v15;
  a1[1] = v4;
  a1[2] = v6;
  a1[3] = v8;
  a1[4] = v9;
  a1[5] = v11;
  a1[6] = v12;
  a1[7] = v14;
}

__n128 __swift_memcpy104_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 12);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_1C3CD0A38(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 104))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C3CD0A80(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 104) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 104) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1C3CD0B0C()
{
  if (!qword_1EC0872C8)
  {
    sub_1C3CD0BE8();
    v0 = MEMORY[0x1E69E6720];
    sub_1C3CD0C48(255, &qword_1EC0872D8, sub_1C3CD0BE8, MEMORY[0x1E69E6720]);
    sub_1C3CD0C48(255, &qword_1EC0872E0, sub_1C3CD0CAC, v0);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &qword_1EC0872C8);
    }
  }
}

void sub_1C3CD0BE8()
{
  if (!qword_1EC0872D0)
  {
    sub_1C3D1F6E4();
    v0 = sub_1C3D1F1A4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC0872D0);
    }
  }
}

void sub_1C3CD0C48(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1C3CD0CAC()
{
  if (!qword_1EC0872E8)
  {
    sub_1C3CD0D14();
    sub_1C3D1F6E4();
    v0 = sub_1C3D1F1A4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC0872E8);
    }
  }
}

void sub_1C3CD0D14()
{
  if (!qword_1EC0872F0)
  {
    sub_1C3CD0D90();
    v0 = sub_1C3D1F174();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC0872F0);
    }
  }
}

unint64_t sub_1C3CD0D90()
{
  result = qword_1EC0872F8;
  if (!qword_1EC0872F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0872F8);
  }

  return result;
}

unint64_t sub_1C3CD0DE4()
{
  result = qword_1EC087300;
  if (!qword_1EC087300)
  {
    sub_1C3CC2F88();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC087300);
  }

  return result;
}

unint64_t sub_1C3CD0E54()
{
  result = qword_1EC087308;
  if (!qword_1EC087308)
  {
    sub_1C3CD0C48(255, &qword_1EC0872C0, sub_1C3CD0B0C, MEMORY[0x1E6981F40]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC087308);
  }

  return result;
}

unint64_t sub_1C3CD0EDC()
{
  result = qword_1EC087310;
  if (!qword_1EC087310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC087310);
  }

  return result;
}

uint64_t sub_1C3CD0F30(uint64_t a1, uint64_t a2)
{
  sub_1C3CD0BE8();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C3CD0F94(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1C3CD0C48(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1C3CD1014(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1C3CD0C48(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1C3CD1084(uint64_t a1)
{
  sub_1C3CD0BE8();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1C3CD10E0()
{
  result = qword_1EC087318;
  if (!qword_1EC087318)
  {
    sub_1C3CD0D14();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC087318);
  }

  return result;
}

uint64_t sub_1C3CD1138(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1C3CD11A0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_1C3CD11E8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1C3CD1248()
{
  result = qword_1EC087320;
  if (!qword_1EC087320)
  {
    sub_1C3CD12D4();
    sub_1C3CD0DE4();
    sub_1C3CD0E54();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC087320);
  }

  return result;
}

void sub_1C3CD12D4()
{
  if (!qword_1EC087328)
  {
    sub_1C3CC2F88();
    sub_1C3CD0C48(255, &qword_1EC0872C0, sub_1C3CD0B0C, MEMORY[0x1E6981F40]);
    v0 = sub_1C3D1FD04();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC087328);
    }
  }
}

double CGRect.center.getter(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  MidX = CGRectGetMidX(*&a1);
  v10.origin.x = a1;
  v10.origin.y = a2;
  v10.size.width = a3;
  v10.size.height = a4;
  CGRectGetMidY(v10);
  return MidX;
}

float64x2_t CGRect.center.setter(float64x2_t a1, float64_t a2)
{
  __asm { FMOV            V3.2D, #-0.5 }

  a1.f64[1] = a2;
  result = vaddq_f64(a1, vmulq_f64(v2[1], _Q3));
  *v2 = result;
  return result;
}

void (*CGRect.center.modify(CGFloat **a1))(uint64_t *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 2) = v1;
  v5 = *v1;
  v6 = v1[1];
  v7 = v1[2];
  v3[3] = v7;
  v8 = v1[3];
  v3[4] = v8;
  v12.origin.x = v5;
  v12.origin.y = v6;
  v12.size.width = v7;
  v12.size.height = v8;
  MidX = CGRectGetMidX(v12);
  v13.origin.x = v5;
  v13.origin.y = v6;
  v13.size.width = v7;
  v13.size.height = v8;
  MidY = CGRectGetMidY(v13);
  *v4 = MidX;
  v4[1] = MidY;
  return sub_1C3CD14BC;
}

void sub_1C3CD14BC(uint64_t *a1)
{
  v1 = *a1;
  __asm { FMOV            V2.2D, #-0.5 }

  **(v1 + 16) = vaddq_f64(*v1, vmulq_f64(*(v1 + 24), _Q2));
  free(v1);
}

id sub_1C3CD14E0()
{
  v1 = OBJC_IVAR____TtC8HealthUI30TitledWeekdayHeaderPaletteView____lazy_storage___titleLabel;
  v2 = *(v0 + OBJC_IVAR____TtC8HealthUI30TitledWeekdayHeaderPaletteView____lazy_storage___titleLabel);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC8HealthUI30TitledWeekdayHeaderPaletteView____lazy_storage___titleLabel);
  }

  else
  {
    v4 = *(v0 + OBJC_IVAR____TtC8HealthUI30TitledWeekdayHeaderPaletteView_width);
    v29 = objc_opt_self();
    v28 = *MEMORY[0x1E69DDCF8];
    v5 = *MEMORY[0x1E69DDC58];
    v6 = [v29 hk_preferredFontForTextStyle_symbolicTraits_maximumContentSizeCategory_];
    v7 = sub_1C3D200C4();
    sub_1C3CD23B8(0, &qword_1EC080D80, sub_1C3C54BC4);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1C3D5F370;
    v9 = *MEMORY[0x1E69DB648];
    *(inited + 32) = *MEMORY[0x1E69DB648];
    *(inited + 64) = sub_1C3C76D9C();
    *(inited + 40) = v6;
    v10 = v9;
    v11 = v6;
    sub_1C3C7556C(inited);
    swift_setDeallocating();
    sub_1C3C7C948(inited + 32);
    type metadata accessor for Key(0);
    sub_1C3C54C30();
    v12 = sub_1C3D1FEE4();

    [v7 boundingRectWithSize:1 options:v12 attributes:0 context:{v4, 1.79769313e308}];
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v20 = v19;

    v30.origin.x = v14;
    v30.origin.y = v16;
    v30.size.width = v18;
    v30.size.height = v20;
    Height = CGRectGetHeight(v30);

    v22 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) initWithFrame_];
    v23 = sub_1C3D200C4();
    [v22 setText_];

    [v22 setTextAlignment_];
    v24 = [v29 hk:v28 preferredFontForTextStyle:2 symbolicTraits:v5 maximumContentSizeCategory:?];
    [v22 setFont_];

    v25 = *(v0 + v1);
    *(v0 + v1) = v22;
    v3 = v22;

    v2 = 0;
  }

  v26 = v2;
  return v3;
}

id sub_1C3CD17B0()
{
  v1 = OBJC_IVAR____TtC8HealthUI30TitledWeekdayHeaderPaletteView____lazy_storage___weekdayPalette;
  v2 = *(v0 + OBJC_IVAR____TtC8HealthUI30TitledWeekdayHeaderPaletteView____lazy_storage___weekdayPalette);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC8HealthUI30TitledWeekdayHeaderPaletteView____lazy_storage___weekdayPalette);
  }

  else
  {
    v4 = *(v0 + OBJC_IVAR____TtC8HealthUI30TitledWeekdayHeaderPaletteView_width);
    [objc_opt_self() preferredHeight];
    v6 = [objc_allocWithZone(HKWeekdayHeaderPaletteView) initWithFrame:HKUICalendarLocaleIsRightToLeft() shouldSupportRTL:{0.0, 0.0, v4, v5}];
    v7 = *(v0 + v1);
    *(v0 + v1) = v6;
    v3 = v6;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

char *TitledWeekdayHeaderPaletteView.init(title:width:)(uint64_t a1, uint64_t a2, double a3)
{
  ObjectType = swift_getObjectType();
  *&v3[OBJC_IVAR____TtC8HealthUI30TitledWeekdayHeaderPaletteView____lazy_storage___titleLabel] = 0;
  *&v3[OBJC_IVAR____TtC8HealthUI30TitledWeekdayHeaderPaletteView____lazy_storage___weekdayPalette] = 0;
  *&v3[OBJC_IVAR____TtC8HealthUI30TitledWeekdayHeaderPaletteView_width] = a3;
  v8 = &v3[OBJC_IVAR____TtC8HealthUI30TitledWeekdayHeaderPaletteView_title];
  *v8 = a1;
  *(v8 + 1) = a2;
  v9 = objc_opt_self();
  v10 = *MEMORY[0x1E69DDCF8];
  v11 = *MEMORY[0x1E69DDC58];

  v12 = [v9 hk:v10 preferredFontForTextStyle:2 symbolicTraits:v11 maximumContentSizeCategory:?];
  v13 = sub_1C3D200C4();
  sub_1C3CD23B8(0, &qword_1EC080D80, sub_1C3C54BC4);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C3D5F370;
  v15 = *MEMORY[0x1E69DB648];
  *(inited + 32) = *MEMORY[0x1E69DB648];
  *(inited + 64) = sub_1C3C76D9C();
  *(inited + 40) = v12;
  v16 = v15;
  v17 = v12;
  sub_1C3C7556C(inited);
  swift_setDeallocating();
  sub_1C3C7C948(inited + 32);
  type metadata accessor for Key(0);
  sub_1C3C54C30();
  v18 = sub_1C3D1FEE4();

  [v13 boundingRectWithSize:1 options:v18 attributes:0 context:{a3, 1.79769313e308}];
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;

  v39.origin.x = v20;
  v39.origin.y = v22;
  v39.size.width = v24;
  v39.size.height = v26;
  Height = CGRectGetHeight(v39);

  v28 = ceil(Height) + 8.0;
  [objc_opt_self() preferredHeight];
  v38.receiver = v3;
  v38.super_class = ObjectType;
  v30 = objc_msgSendSuper2(&v38, sel_initWithFrame_, 0.0, 0.0, a3, v28 + v29);
  [v30 setMaximumContentSizeCategory_];
  v31 = sub_1C3CD14E0();
  [v30 addSubview_];

  v32 = sub_1C3CD17B0();
  [v30 addSubview_];

  v33 = *&v30[OBJC_IVAR____TtC8HealthUI30TitledWeekdayHeaderPaletteView____lazy_storage___weekdayPalette];
  [v33 layoutMargins];
  [v33 setLayoutMargins_];

  sub_1C3CD23B8(0, &qword_1EC087350, sub_1C3CD240C);
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_1C3D5F370;
  v35 = sub_1C3D1EE44();
  v36 = MEMORY[0x1E69DC2B0];
  *(v34 + 32) = v35;
  *(v34 + 40) = v36;
  swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_1C3CD24C0();
  sub_1C3D20684();

  swift_unknownObjectRelease();

  return v30;
}

void sub_1C3CD1C98(uint64_t a1, void *a2)
{
  sub_1C3D20374();
  sub_1C3D20364();
  sub_1C3D20314();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {

    return;
  }

  v4 = Strong;
  if (!a2)
  {
    goto LABEL_10;
  }

  v5 = a2;
  v6 = [v4 traitCollection];
  v7 = [v6 preferredContentSizeCategory];

  v8 = [v5 preferredContentSizeCategory];
  v9 = sub_1C3D20104();
  v11 = v10;
  if (v9 != sub_1C3D20104() || v11 != v12)
  {
    v13 = sub_1C3D20A54();

    if (v13)
    {
      goto LABEL_11;
    }

LABEL_10:
    sub_1C3CD1E5C();
    goto LABEL_11;
  }

LABEL_11:
}

void sub_1C3CD1E5C()
{
  v1 = *&v0[OBJC_IVAR____TtC8HealthUI30TitledWeekdayHeaderPaletteView_width];
  v2 = objc_opt_self();
  v3 = *MEMORY[0x1E69DDCF8];
  v4 = *MEMORY[0x1E69DDC58];
  v5 = [v2 hk:*MEMORY[0x1E69DDCF8] preferredFontForTextStyle:2 symbolicTraits:*MEMORY[0x1E69DDC58] maximumContentSizeCategory:?];
  v6 = sub_1C3D200C4();
  sub_1C3CD23B8(0, &qword_1EC080D80, sub_1C3C54BC4);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C3D5F370;
  v8 = *MEMORY[0x1E69DB648];
  *(inited + 32) = *MEMORY[0x1E69DB648];
  *(inited + 64) = sub_1C3C76D9C();
  *(inited + 40) = v5;
  v9 = v8;
  v10 = v5;
  sub_1C3C7556C(inited);
  swift_setDeallocating();
  sub_1C3C7C948(inited + 32);
  type metadata accessor for Key(0);
  sub_1C3C54C30();
  v11 = sub_1C3D1FEE4();

  [v6 boundingRectWithSize:1 options:v11 attributes:0 context:{v1, 1.79769313e308}];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;

  v26.origin.x = v13;
  v26.origin.y = v15;
  v26.size.width = v17;
  v26.size.height = v19;
  Height = CGRectGetHeight(v26);

  v21 = ceil(Height);
  [objc_opt_self() preferredHeight];
  [v0 setFrame_];
  v23 = sub_1C3CD14E0();
  v24 = [v2 hk:v3 preferredFontForTextStyle:2 symbolicTraits:v4 maximumContentSizeCategory:?];
  [v23 setFont_];

  [*&v0[OBJC_IVAR____TtC8HealthUI30TitledWeekdayHeaderPaletteView____lazy_storage___titleLabel] setFrame_];
  v25 = sub_1C3CD17B0();
  [v25 layoutMargins];
  [v25 setLayoutMargins_];
}

id TitledWeekdayHeaderPaletteView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id TitledWeekdayHeaderPaletteView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1C3CD23B8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1C3D20A24();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_1C3CD240C()
{
  result = qword_1EC087358;
  if (!qword_1EC087358)
  {
    sub_1C3CD2454();
    result = swift_getExistentialMetatypeMetadata();
    atomic_store(result, &qword_1EC087358);
  }

  return result;
}

unint64_t sub_1C3CD2454()
{
  result = qword_1EC087360;
  if (!qword_1EC087360)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EC087360);
  }

  return result;
}

unint64_t sub_1C3CD24C0()
{
  result = qword_1EC087368;
  if (!qword_1EC087368)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EC087368);
  }

  return result;
}

id CalendarYearOverlayView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

char *CalendarYearOverlayView.init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC8HealthUI23CalendarYearOverlayView_background;
  v10 = [objc_allocWithZone(MEMORY[0x1E69DD250]) initWithFrame_];
  v11 = objc_opt_self();
  v12 = [v11 systemBackgroundColor];
  [v10 setBackgroundColor_];

  [v10 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v4[v9] = v10;
  v13 = OBJC_IVAR____TtC8HealthUI23CalendarYearOverlayView_label;
  v14 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  v15 = [v11 labelColor];
  [v14 setTextColor_];

  [v14 setNumberOfLines_];
  [v14 setTextAlignment_];
  [v14 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v4[v13] = v14;
  v16 = OBJC_IVAR____TtC8HealthUI23CalendarYearOverlayView_gradient;
  *&v4[v16] = sub_1C3CD4F08();
  *&v4[OBJC_IVAR____TtC8HealthUI23CalendarYearOverlayView_height] = 0x4056800000000000;
  *&v4[OBJC_IVAR____TtC8HealthUI23CalendarYearOverlayView_animator] = 0;
  v17 = OBJC_IVAR____TtC8HealthUI23CalendarYearOverlayView_displayDate;
  v18 = sub_1C3D1E1E4();
  (*(*(v18 - 8) + 56))(&v4[v17], 1, 1, v18);
  v72.receiver = v4;
  v72.super_class = type metadata accessor for CalendarYearOverlayView();
  v19 = objc_msgSendSuper2(&v72, sel_initWithFrame_, a1, a2, a3, a4);
  v20 = [v11 clearColor];
  [v19 setBackgroundColor_];

  [v19 setAlpha_];
  v21 = OBJC_IVAR____TtC8HealthUI23CalendarYearOverlayView_label;
  [*&v19[OBJC_IVAR____TtC8HealthUI23CalendarYearOverlayView_label] setAlpha_];
  [v19 setHidden_];
  v22 = OBJC_IVAR____TtC8HealthUI23CalendarYearOverlayView_background;
  [*&v19[OBJC_IVAR____TtC8HealthUI23CalendarYearOverlayView_background] addSubview_];
  [v19 addSubview_];
  v23 = OBJC_IVAR____TtC8HealthUI23CalendarYearOverlayView_gradient;
  [v19 addSubview_];
  v71 = objc_opt_self();
  sub_1C3C27C60();
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_1C3D62B10;
  v25 = [*&v19[v22] topAnchor];
  v26 = [v19 topAnchor];
  v27 = [v25 constraintEqualToAnchor_];

  *(v24 + 32) = v27;
  v28 = [*&v19[v22] leadingAnchor];
  v29 = [v19 &selRef_localizedStringByJoiningStrings_ + 1];
  v30 = [v28 constraintEqualToAnchor_];

  *(v24 + 40) = v30;
  v31 = [v19 trailingAnchor];
  v32 = [*&v19[v22] &selRef_titleAlignment + 4];
  v33 = [v31 constraintEqualToAnchor_];

  *(v24 + 48) = v33;
  v34 = [*&v19[v23] topAnchor];
  v35 = [*&v19[v22] bottomAnchor];
  v36 = [v34 constraintEqualToAnchor_];

  *(v24 + 56) = v36;
  v37 = [*&v19[v23] leadingAnchor];
  v38 = [v19 leadingAnchor];
  v39 = [v37 constraintEqualToAnchor_];

  *(v24 + 64) = v39;
  v40 = [v19 trailingAnchor];
  v41 = [*&v19[v23] trailingAnchor];
  v42 = [v40 constraintEqualToAnchor_];

  *(v24 + 72) = v42;
  v43 = [v19 bottomAnchor];

  v44 = [*&v19[v23] bottomAnchor];
  v45 = [v43 constraintEqualToAnchor_];

  *(v24 + 80) = v45;
  v46 = [*&v19[v23] heightAnchor];
  v47 = [v46 constraintEqualToConstant_];

  *(v24 + 88) = v47;
  v48 = [*&v19[v21] topAnchor];
  v49 = [*&v19[v22] topAnchor];
  v50 = [v48 constraintEqualToAnchor:v49 constant:12.0];

  *(v24 + 96) = v50;
  v51 = [*&v19[v21] leadingAnchor];
  v52 = [*&v19[v22] layoutMarginsGuide];
  v53 = [v52 leadingAnchor];

  v54 = [v51 constraintEqualToAnchor_];
  *(v24 + 104) = v54;
  v55 = [*&v19[v22] layoutMarginsGuide];
  v56 = [v55 trailingAnchor];

  v57 = [*&v19[v21] trailingAnchor];
  v58 = [v56 constraintEqualToAnchor_];

  *(v24 + 112) = v58;
  v59 = [*&v19[v22] bottomAnchor];
  v60 = [*&v19[v21] bottomAnchor];
  v61 = [v59 constraintEqualToAnchor_];

  *(v24 + 120) = v61;
  sub_1C3CD508C();
  v62 = sub_1C3D202A4();

  [v71 activateConstraints_];

  v63 = *&v19[v21];
  v64 = objc_opt_self();
  if (qword_1EC085118 != -1)
  {
    v70 = v64;
    swift_once();
    v64 = v70;
  }

  v65 = [v64 hk:qword_1EC087370 preferredFontForTextStyle:2 symbolicTraits:?];
  [v63 setFont_];

  sub_1C3CD52E0(0, &qword_1EC087350, sub_1C3CD240C, MEMORY[0x1E69E6F90]);
  v66 = swift_allocObject();
  *(v66 + 16) = xmmword_1C3D5F370;
  v67 = sub_1C3D1EE44();
  v68 = MEMORY[0x1E69DC2B0];
  *(v66 + 32) = v67;
  *(v66 + 40) = v68;
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_1C3CD24C0();
  sub_1C3D20684();

  swift_unknownObjectRelease();

  return v19;
}

void sub_1C3CD2F20(uint64_t a1, void *a2)
{
  sub_1C3D20374();
  sub_1C3D20364();
  sub_1C3D20314();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {

    return;
  }

  v4 = Strong;
  if (!a2)
  {
    goto LABEL_10;
  }

  v5 = a2;
  v6 = [v4 traitCollection];
  v7 = [v6 preferredContentSizeCategory];

  v8 = [v5 preferredContentSizeCategory];
  v9 = sub_1C3D20104();
  v11 = v10;
  if (v9 != sub_1C3D20104() || v11 != v12)
  {
    v13 = sub_1C3D20A54();

    if (v13)
    {
      goto LABEL_13;
    }

LABEL_10:
    v14 = *&v4[OBJC_IVAR____TtC8HealthUI23CalendarYearOverlayView_label];
    v15 = objc_opt_self();
    if (qword_1EC085118 != -1)
    {
      v21 = v15;
      swift_once();
      v15 = v21;
    }

    v16 = [v15 hk:qword_1EC087370 preferredFontForTextStyle:2 symbolicTraits:?];
    [v14 setFont_];

    [v4 frame];
    Width = CGRectGetWidth(v22);
    LODWORD(v18) = 1148846080;
    LODWORD(v19) = 1112014848;
    [v4 systemLayoutSizeFittingSize:Width withHorizontalFittingPriority:0.0 verticalFittingPriority:{v18, v19}];
    *&v4[OBJC_IVAR____TtC8HealthUI23CalendarYearOverlayView_height] = v20;
    [v4 frame];
    [v4 setFrame_];
    goto LABEL_13;
  }

LABEL_13:
}

id CalendarYearOverlayView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

uint64_t sub_1C3CD34F0(uint64_t a1, uint64_t *a2)
{
  sub_1C3CD52E0(0, &qword_1EC085770, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v13[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v13[-v8];
  sub_1C3C3A228(a1, &v13[-v8]);
  v10 = *a2;
  v11 = OBJC_IVAR____TtC8HealthUI23CalendarYearOverlayView_displayDate;
  swift_beginAccess();
  sub_1C3C3A228(v10 + v11, v6);
  swift_beginAccess();
  sub_1C3C3A2A8(v9, v10 + v11);
  swift_endAccess();
  sub_1C3CD3630(v6);
  sub_1C3C27B38(v6);
  return sub_1C3C27B38(v9);
}

uint64_t sub_1C3CD3630(uint64_t a1)
{
  v43 = a1;
  sub_1C3C5F164();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C3CD52E0(0, &qword_1EC085770, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v41 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v39 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v39 - v12;
  v14 = sub_1C3D1E1E4();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v40 = &v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v39 - v18;
  v20 = OBJC_IVAR____TtC8HealthUI23CalendarYearOverlayView_displayDate;
  swift_beginAccess();
  v42 = v1;
  sub_1C3C3A228(&v1[v20], v13);
  v21 = *(v15 + 48);
  if (v21(v13, 1, v14) == 1)
  {
    return sub_1C3C27B38(v13);
  }

  v23 = v13;
  v24 = *(v15 + 32);
  v24(v19, v23, v14);
  (*(v15 + 16))(v11, v19, v14);
  (*(v15 + 56))(v11, 0, 1, v14);
  v25 = *(v3 + 48);
  sub_1C3C3A228(v43, v5);
  sub_1C3C3A228(v11, &v5[v25]);
  if (v21(v5, 1, v14) == 1)
  {
    sub_1C3C27B38(v11);
    if (v21(&v5[v25], 1, v14) == 1)
    {
      sub_1C3C27B38(v5);
      return (*(v15 + 8))(v19, v14);
    }

    goto LABEL_8;
  }

  v43 = v19;
  v26 = v41;
  sub_1C3C3A228(v5, v41);
  if (v21(&v5[v25], 1, v14) == 1)
  {
    sub_1C3C27B38(v11);
    (*(v15 + 8))(v26, v14);
    v19 = v43;
LABEL_8:
    sub_1C3CD5510(v5);
LABEL_9:
    v27 = v42;
    v28 = *&v42[OBJC_IVAR____TtC8HealthUI23CalendarYearOverlayView_label];
    v29 = sub_1C3D1E174();
    v30 = HKLocalizedStringForDateAndTemplate(v29, 6);

    [v28 setText_];
    [v27 frame];
    Width = CGRectGetWidth(v44);
    LODWORD(v32) = 1148846080;
    LODWORD(v33) = 1112014848;
    [v27 systemLayoutSizeFittingSize:Width withHorizontalFittingPriority:0.0 verticalFittingPriority:{v32, v33}];
    *&v27[OBJC_IVAR____TtC8HealthUI23CalendarYearOverlayView_height] = v34;
    [v27 frame];
    [v27 setFrame_];
    return (*(v15 + 8))(v19, v14);
  }

  v35 = &v5[v25];
  v36 = v40;
  v24(v40, v35, v14);
  sub_1C3CD556C();
  v37 = sub_1C3D20034();
  v38 = *(v15 + 8);
  v38(v36, v14);
  sub_1C3C27B38(v11);
  v38(v26, v14);
  sub_1C3C27B38(v5);
  v19 = v43;
  if ((v37 & 1) == 0)
  {
    goto LABEL_9;
  }

  return (v38)(v43, v14);
}

uint64_t sub_1C3CD3B2C@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC8HealthUI23CalendarYearOverlayView_displayDate;
  swift_beginAccess();
  return sub_1C3C3A228(v1 + v3, a1);
}

uint64_t sub_1C3CD3B84(uint64_t a1)
{
  sub_1C3CD52E0(0, &qword_1EC085770, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v8[-v4];
  v6 = OBJC_IVAR____TtC8HealthUI23CalendarYearOverlayView_displayDate;
  swift_beginAccess();
  sub_1C3C3A228(v1 + v6, v5);
  swift_beginAccess();
  sub_1C3C3A2A8(a1, v1 + v6);
  swift_endAccess();
  sub_1C3CD3630(v5);
  sub_1C3C27B38(a1);
  return sub_1C3C27B38(v5);
}

void (*sub_1C3CD3C8C(uint64_t *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x70uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  sub_1C3CD52E0(0, &qword_1EC085770, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  v7 = *(*(v6 - 8) + 64);
  if (v3)
  {
    v5[10] = swift_coroFrameAlloc();
    v5[11] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v5[10] = malloc(v7);
    v5[11] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = v8;
  v10 = OBJC_IVAR____TtC8HealthUI23CalendarYearOverlayView_displayDate;
  v5[12] = v8;
  v5[13] = v10;
  swift_beginAccess();
  sub_1C3C3A228(v1 + v10, v9);
  return sub_1C3CD3DD0;
}

void sub_1C3CD3DD0(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 96);
  v4 = *(*a1 + 104);
  v5 = *(*a1 + 80);
  v6 = *(*a1 + 88);
  v7 = *(*a1 + 72);
  if (a2)
  {
    sub_1C3C3A228(*(*a1 + 96), v6);
    sub_1C3C3A228(v7 + v4, v5);
    swift_beginAccess();
    sub_1C3C3A2A8(v6, v7 + v4);
    swift_endAccess();
    sub_1C3CD3630(v5);
    sub_1C3C27B38(v5);
  }

  else
  {
    sub_1C3C3A228(v7 + v4, v6);
    swift_beginAccess();
    sub_1C3C3A2A8(v3, v7 + v4);
    swift_endAccess();
    sub_1C3CD3630(v6);
  }

  sub_1C3C27B38(v6);
  sub_1C3C27B38(v3);
  free(v3);
  free(v6);
  free(v5);

  free(v2);
}

void sub_1C3CD3EDC(char a1, uint64_t a2, uint64_t a3, double a4)
{
  v9 = OBJC_IVAR____TtC8HealthUI23CalendarYearOverlayView_animator;
  v10 = *(v4 + OBJC_IVAR____TtC8HealthUI23CalendarYearOverlayView_animator);
  v11 = &unk_1EC087000;
  if (!v10)
  {
LABEL_6:
    v15 = *(v4 + OBJC_IVAR____TtC8HealthUI23CalendarYearOverlayView_label);
    v38 = type metadata accessor for StaggeredAlphaAnimator();
    v39 = a2;
    v16 = objc_allocWithZone(v38);
    v40 = a3;
    v17 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v18 = swift_allocObject();
    v19 = v18;
    if (a1)
    {
      v20 = 1.0;
    }

    else
    {
      v20 = 0.0;
    }

    *(v18 + 16) = v17;
    *(v18 + 24) = v20;
    if (a1)
    {
      v21 = a4;
    }

    else
    {
      v21 = a4 * 0.8;
    }

    v22 = objc_allocWithZone(MEMORY[0x1E69DD278]);
    v46 = sub_1C3CD55C4;
    v47 = v19;
    aBlock = MEMORY[0x1E69E9820];
    v43 = 1107296256;
    v44 = sub_1C3C95F84;
    v45 = &block_descriptor_18;
    v23 = _Block_copy(&aBlock);
    v24 = v15;

    v25 = v22;
    v11 = &unk_1EC087000;
    v26 = [v25 initWithDuration:3 curve:v23 animations:a4];
    _Block_release(v23);

    *&v16[OBJC_IVAR____TtC8HealthUIP33_2CCCC3E80CB68C77458B1C83C70AE82122StaggeredAlphaAnimator_backgroundAnimator] = v26;
    v27 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v28 = swift_allocObject();
    *(v28 + 16) = v27;
    *(v28 + 24) = v20;
    v29 = objc_allocWithZone(MEMORY[0x1E69DD278]);
    v46 = sub_1C3CD5600;
    v47 = v28;
    aBlock = MEMORY[0x1E69E9820];
    v43 = 1107296256;
    v44 = sub_1C3C95F84;
    v45 = &block_descriptor_23;
    v30 = _Block_copy(&aBlock);

    v31 = [v29 initWithDuration:3 curve:v30 animations:v21];
    _Block_release(v30);

    *&v16[OBJC_IVAR____TtC8HealthUIP33_2CCCC3E80CB68C77458B1C83C70AE82122StaggeredAlphaAnimator_foregroundAnimator] = v31;
    v41.receiver = v16;
    a2 = v39;
    a3 = v40;
    v41.super_class = v38;
    v32 = objc_msgSendSuper2(&v41, sel_init);

    v33 = *(v4 + v9);
    *(v4 + v9) = v32;
    v13 = v32;

    goto LABEL_13;
  }

  v12 = v10;
  if (![v12 isRunning])
  {

    v14 = *(v4 + v9);
    if (v14)
    {
      [v14 stopAnimation_];
    }

    goto LABEL_6;
  }

  v13 = v12;
  [v13 setReversed_];
LABEL_13:
  v34 = swift_allocObject();
  *(v34 + 16) = a2;
  *(v34 + 24) = a3;
  v35 = *&v13[v11[118]];
  v46 = sub_1C3C6EEA4;
  v47 = v34;
  aBlock = MEMORY[0x1E69E9820];
  v43 = 1107296256;
  v44 = sub_1C3CD4EB4;
  v45 = &block_descriptor_29;
  v36 = _Block_copy(&aBlock);

  [v35 addCompletion_];
  _Block_release(v36);

  v37 = [v13 isRunning];

  if ((v37 & 1) == 0)
  {
    [v13 startAnimation];
  }
}

id static CalendarYearOverlayView.configure(attributes:in:initialFrame:)(void *a1, void *a2, double a3, double a4, double a5, double a6)
{
  [a1 setZIndex_];
  [a1 setFrame_];
  [a2 adjustedContentInset];
  v13 = v12;
  v15 = v14;
  [a2 contentOffset];
  v17 = v15 + v16;
  v19 = v13 + v18;
  [a1 frame];

  return [a1 setFrame_];
}

id sub_1C3CD44C0(void *a1, void *a2, double a3, double a4, double a5, double a6)
{
  [a1 setZIndex_];
  [a1 setFrame_];
  [a2 adjustedContentInset];
  v13 = v12;
  v15 = v14;
  [a2 contentOffset];
  v17 = v15 + v16;
  v19 = v13 + v18;
  [a1 frame];

  return [a1 setFrame_];
}

double static OverlayConfiguration.calendarYearOverlay.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for CalendarYearOverlayView();
  type metadata accessor for OverlayConfiguration();
  MEMORY[0x1C692DBE0](0, 0);
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0;
  *(a1 + 40) = v2;
  *(a1 + 48) = &protocol witness table for CalendarYearOverlayView;
  return result;
}

void sub_1C3CD4614(double a1)
{
  sub_1C3D20374();
  sub_1C3D20364();
  sub_1C3D20314();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    [Strong setAlpha_];
  }

  else
  {
  }
}

id sub_1C3CD47A4(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

id sub_1C3CD4908(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, SEL *a5)
{
  sub_1C3D20374();
  sub_1C3D20364();
  sub_1C3D20314();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v8 = [*(a1 + *a4) *a5];

  return v8;
}

void sub_1C3CD4AB4(char *a1, double a2, uint64_t a3, uint64_t a4, SEL *a5)
{
  sub_1C3D20374();
  sub_1C3D20364();
  sub_1C3D20314();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v8 = *&a1[OBJC_IVAR____TtC8HealthUIP33_2CCCC3E80CB68C77458B1C83C70AE82122StaggeredAlphaAnimator_backgroundAnimator];
  v9 = a1;
  [v8 *a5];
  [*&v9[OBJC_IVAR____TtC8HealthUIP33_2CCCC3E80CB68C77458B1C83C70AE82122StaggeredAlphaAnimator_foregroundAnimator] *a5];
}

void sub_1C3CD4BC4(char *a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  sub_1C3D20374();
  sub_1C3D20364();
  sub_1C3D20314();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v6 = *&a1[OBJC_IVAR____TtC8HealthUIP33_2CCCC3E80CB68C77458B1C83C70AE82122StaggeredAlphaAnimator_backgroundAnimator];
  v7 = a1;
  [v6 *a4];
  [*&v7[OBJC_IVAR____TtC8HealthUIP33_2CCCC3E80CB68C77458B1C83C70AE82122StaggeredAlphaAnimator_foregroundAnimator] *a4];
}

void sub_1C3CD4CC0(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, SEL *a5)
{
  sub_1C3D20374();
  sub_1C3D20364();
  sub_1C3D20314();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v8 = *&a1[OBJC_IVAR____TtC8HealthUIP33_2CCCC3E80CB68C77458B1C83C70AE82122StaggeredAlphaAnimator_backgroundAnimator];
  v9 = a1;
  [v8 *a5];
  [*&v9[OBJC_IVAR____TtC8HealthUIP33_2CCCC3E80CB68C77458B1C83C70AE82122StaggeredAlphaAnimator_foregroundAnimator] *a5];
}

uint64_t sub_1C3CD4EB4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

char *sub_1C3CD4F08()
{
  v0 = [objc_allocWithZone(type metadata accessor for GradientView()) initWithFrame_];
  v1 = objc_opt_self();
  v2 = [v1 systemBackgroundColor];
  v3 = [v1 systemBackgroundColor];
  v4 = [v3 colorWithAlphaComponent_];

  v5 = sub_1C3C5A2C4();
  [v5 setStartPoint_];

  v6 = *&v0[OBJC_IVAR____TtC8HealthUI12GradientView____lazy_storage___gradientLayer];
  if (v6)
  {
    [v6 setEndPoint_];
  }

  v7 = v2;
  v8 = v4;
  sub_1C3C5A450(v2, v4);

  [v0 setTranslatesAutoresizingMaskIntoConstraints_];
  return v0;
}

uint64_t type metadata accessor for CalendarYearOverlayView()
{
  result = qword_1EC0873A0;
  if (!qword_1EC0873A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1C3CD508C()
{
  result = qword_1EC086860;
  if (!qword_1EC086860)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC086860);
  }

  return result;
}

void _s8HealthUI23CalendarYearOverlayViewC5coderACSgSo7NSCoderC_tcfc_0()
{
  v1 = OBJC_IVAR____TtC8HealthUI23CalendarYearOverlayView_background;
  v2 = [objc_allocWithZone(MEMORY[0x1E69DD250]) initWithFrame_];
  v3 = objc_opt_self();
  v4 = [v3 systemBackgroundColor];
  [v2 setBackgroundColor_];

  [v2 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v0 + v1) = v2;
  v5 = OBJC_IVAR____TtC8HealthUI23CalendarYearOverlayView_label;
  v6 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  v7 = [v3 labelColor];
  [v6 setTextColor_];

  [v6 setNumberOfLines_];
  [v6 setTextAlignment_];
  [v6 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v0 + v5) = v6;
  v8 = OBJC_IVAR____TtC8HealthUI23CalendarYearOverlayView_gradient;
  *(v0 + v8) = sub_1C3CD4F08();
  *(v0 + OBJC_IVAR____TtC8HealthUI23CalendarYearOverlayView_height) = 0x4056800000000000;
  *(v0 + OBJC_IVAR____TtC8HealthUI23CalendarYearOverlayView_animator) = 0;
  v9 = OBJC_IVAR____TtC8HealthUI23CalendarYearOverlayView_displayDate;
  v10 = sub_1C3D1E1E4();
  (*(*(v10 - 8) + 56))(v0 + v9, 1, 1, v10);
  sub_1C3D20944();
  __break(1u);
}

void sub_1C3CD52E0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1C3CD534C()
{
  sub_1C3CD52E0(319, &qword_1EC085770, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1C3CD5510(uint64_t a1)
{
  sub_1C3C5F164();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1C3CD556C()
{
  result = qword_1EC086280;
  if (!qword_1EC086280)
  {
    sub_1C3D1E1E4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC086280);
  }

  return result;
}

uint64_t block_copy_helper_18(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1C3CD5634(uint64_t a1, uint64_t a2)
{
  sub_1C3D20364();

  swift_task_getMainExecutor();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    goto LABEL_8;
  }

  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  sub_1C3CD66BC();
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (v2)
  {
    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return result;
    }

    __break(1u);
  }

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
LABEL_8:
    sub_1C3D20834();
    MEMORY[0x1C692F800](0xD00000000000003FLL, 0x80000001C3D873A0);
    v8 = sub_1C3D20CD4();
    MEMORY[0x1C692F800](v8);

    MEMORY[0x1C692F800](46, 0xE100000000000000);
    result = sub_1C3D20944();
    __break(1u);
  }

  return result;
}

uint64_t sub_1C3CD57BC(uint64_t a1, uint64_t a2, char a3)
{
  sub_1C3D20364();

  swift_task_getMainExecutor();
  if (swift_task_isCurrentExecutor())
  {
    v7 = swift_allocObject();
    *(v7 + 16) = a1;
    *(v7 + 24) = a2;
    sub_1C3CD66E4(v12);
    if (v3)
    {
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if ((isEscapingClosureAtFileLocation & 1) == 0)
      {
        return a3 & 1;
      }

      __break(1u);
    }

    a3 = v12[0];
    v9 = swift_isEscapingClosureAtFileLocation();

    if ((v9 & 1) == 0)
    {
      return a3 & 1;
    }

    __break(1u);
  }

  v12[0] = 0;
  v12[1] = 0xE000000000000000;
  sub_1C3D20834();
  MEMORY[0x1C692F800](0xD00000000000003FLL, 0x80000001C3D873A0);
  v11 = sub_1C3D20CD4();
  MEMORY[0x1C692F800](v11);

  MEMORY[0x1C692F800](46, 0xE100000000000000);
  result = sub_1C3D20944();
  __break(1u);
  return result;
}

double sub_1C3CD5974()
{
  v1 = OBJC_IVAR____TtC8HealthUI28CalendarViewLayoutAttributes_horizontalSectionInset;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1C3CD59B8(double a1)
{
  v3 = OBJC_IVAR____TtC8HealthUI28CalendarViewLayoutAttributes_horizontalSectionInset;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1C3CD5A68()
{
  v1 = OBJC_IVAR____TtC8HealthUI28CalendarViewLayoutAttributes_numberOfDaysPerWeek;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1C3CD5AAC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8HealthUI28CalendarViewLayoutAttributes_numberOfDaysPerWeek;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1C3CD5B5C()
{
  v1 = v0 + OBJC_IVAR____TtC8HealthUI28CalendarViewLayoutAttributes_weekdayRange;
  swift_beginAccess();
  return *v1;
}

uint64_t sub_1C3CD5BA4(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC8HealthUI28CalendarViewLayoutAttributes_weekdayRange);
  result = swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t sub_1C3CD5C5C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = type metadata accessor for CalendarViewLayoutAttributes();
  v18.receiver = v2;
  v18.super_class = v5;
  objc_msgSendSuper2(&v18, sel_copyWithZone_, a1);
  sub_1C3D20774();
  swift_unknownObjectRelease();
  swift_dynamicCast();
  v6 = OBJC_IVAR____TtC8HealthUI28CalendarViewLayoutAttributes_horizontalSectionInset;
  swift_beginAccess();
  v7 = *&v2[v6];
  v8 = OBJC_IVAR____TtC8HealthUI28CalendarViewLayoutAttributes_horizontalSectionInset;
  swift_beginAccess();
  *(v17 + v8) = v7;
  v9 = OBJC_IVAR____TtC8HealthUI28CalendarViewLayoutAttributes_numberOfDaysPerWeek;
  swift_beginAccess();
  v10 = *&v2[v9];
  v11 = OBJC_IVAR____TtC8HealthUI28CalendarViewLayoutAttributes_numberOfDaysPerWeek;
  swift_beginAccess();
  *(v17 + v11) = v10;
  v12 = &v2[OBJC_IVAR____TtC8HealthUI28CalendarViewLayoutAttributes_weekdayRange];
  swift_beginAccess();
  v13 = *v12;
  v14 = *(v12 + 1);
  v15 = (v17 + OBJC_IVAR____TtC8HealthUI28CalendarViewLayoutAttributes_weekdayRange);
  result = swift_beginAccess();
  *v15 = v13;
  v15[1] = v14;
  a2[3] = v5;
  *a2 = v17;
  return result;
}

id sub_1C3CD5EC8(uint64_t a1)
{
  sub_1C396C578(a1, v19);
  if (!v20)
  {
    sub_1C396C69C(v19);
    return 0;
  }

  v3 = type metadata accessor for CalendarViewLayoutAttributes();
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  v4 = v18;
  v5 = sub_1C3D20374();
  MEMORY[0x1EEE9AC00](v5);
  v16[2] = v18;
  v16[3] = v1;
  v6 = v1;
  if (sub_1C3CD57BC(sub_1C3CD6290, v16, "HealthUI/CalendarViewLayoutAttributes.swift"))
  {

    return 0;
  }

  sub_1C396C578(a1, v19);
  v8 = v20;
  if (v20)
  {
    v9 = __swift_project_boxed_opaque_existential_0(v19, v20);
    v10 = *(v8 - 8);
    v11 = MEMORY[0x1EEE9AC00](v9);
    v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v10 + 16))(v13, v11);
    v14 = sub_1C3D20A44();
    (*(v10 + 8))(v13, v8);
    __swift_destroy_boxed_opaque_existential_0(v19);
  }

  else
  {
    v14 = 0;
  }

  v17.receiver = v6;
  v17.super_class = v3;
  v15 = objc_msgSendSuper2(&v17, sel_isEqual_, v14);

  swift_unknownObjectRelease();
  return v15;
}

uint64_t sub_1C3CD60EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, BOOL *a3@<X8>)
{
  sub_1C3D20374();
  sub_1C3D20364();
  sub_1C3D20314();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v6 = OBJC_IVAR____TtC8HealthUI28CalendarViewLayoutAttributes_horizontalSectionInset;
  swift_beginAccess();
  v7 = *(a1 + v6);
  v8 = OBJC_IVAR____TtC8HealthUI28CalendarViewLayoutAttributes_horizontalSectionInset;
  swift_beginAccess();
  if (v7 == *(a2 + v8) && (v9 = OBJC_IVAR____TtC8HealthUI28CalendarViewLayoutAttributes_numberOfDaysPerWeek, swift_beginAccess(), v10 = *(a1 + v9), v11 = OBJC_IVAR____TtC8HealthUI28CalendarViewLayoutAttributes_numberOfDaysPerWeek, swift_beginAccess(), v10 == *(a2 + v11)))
  {
    v12 = (a1 + OBJC_IVAR____TtC8HealthUI28CalendarViewLayoutAttributes_weekdayRange);
    swift_beginAccess();
    v14 = *v12;
    v13 = v12[1];
    v15 = (a2 + OBJC_IVAR____TtC8HealthUI28CalendarViewLayoutAttributes_weekdayRange);
    swift_beginAccess();
    v17 = *v15;
    v16 = v15[1];

    v20 = v14 != v17 || v13 != v16;
  }

  else
  {

    v20 = 1;
  }

  *a3 = v20;
  return result;
}

id CalendarViewLayoutAttributes.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id CalendarViewLayoutAttributes.init()()
{
  *&v0[OBJC_IVAR____TtC8HealthUI28CalendarViewLayoutAttributes_horizontalSectionInset] = 0;
  *&v0[OBJC_IVAR____TtC8HealthUI28CalendarViewLayoutAttributes_numberOfDaysPerWeek] = 7;
  *&v0[OBJC_IVAR____TtC8HealthUI28CalendarViewLayoutAttributes_weekdayRange] = xmmword_1C3D62BA0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CalendarViewLayoutAttributes();
  return objc_msgSendSuper2(&v2, sel_init);
}

id CalendarViewLayoutAttributes.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CalendarViewLayoutAttributes();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void *sub_1C3CD66E4@<X0>(_BYTE *a1@<X8>)
{
  result = (*(v1 + 16))(&v5);
  if (!v2)
  {
    *a1 = v5;
  }

  return result;
}

uint64_t HKHostingController.__allocating_init(rootView:)(uint64_t a1)
{
  v2 = v1;
  v4 = objc_allocWithZone(v1);
  v5 = sub_1C3CD6DF0(a1);
  (*(*(*(v2 + class metadata base offset for HKHostingController) - 8) + 8))(a1);
  return v5;
}

uint64_t HKHostingController.init(rootView:)(uint64_t a1)
{
  v3 = *MEMORY[0x1E69E7D40] & *v1;
  v4 = sub_1C3CD6DF0(a1);
  (*(*(*(v3 + class metadata base offset for HKHostingController) - 8) + 8))(a1);
  return v4;
}

void sub_1C3CD6850()
{
  sub_1C3D20374();
  sub_1C3D20364();
  sub_1C3D20314();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_1C3CD6ED8();
}

uint64_t sub_1C3CD6910(uint64_t a1)
{
  v3 = v1;

  return a1;
}

void sub_1C3CD6938(char a1)
{
  v3 = [v1 navigationItem];
  v4 = sub_1C3CD6A0C((a1 & 1) == 0);
  [v3 setRightBarButtonItem:v4 animated:0];

  v5 = [v1 navigationItem];
  v6 = sub_1C3CD6A0C(a1);
  [v5 setRightBarButtonItem:v6 animated:0];
}

id sub_1C3CD6A0C(char a1)
{
  if ((a1 & 1) == 0)
  {
    return 0;
  }

  v1 = objc_allocWithZone(MEMORY[0x1E69DC708]);
  type metadata accessor for HKHostingController();
  v2 = [v1 initWithBarButtonSystemItem:0 target:sub_1C3D20A44() action:sel_didTapDone_];
  swift_unknownObjectRelease();
  return v2;
}

uint64_t sub_1C3CD6B04(void *a1, uint64_t a2, uint64_t a3)
{
  sub_1C3D20374();
  sub_1C3D20364();
  sub_1C3D20314();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (a3)
  {
    v5 = a1;
    swift_unknownObjectRetain();
    sub_1C3D20774();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    v6 = a1;
  }

  sub_1C3CD6AEC();

  sub_1C396C69C(v8);
}

void sub_1C3CD6C30(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  sub_1C3D20374();
  sub_1C3D20364();
  sub_1C3D20314();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v6 = a1;
  a4();
}

id HKHostingController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HKHostingController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1C3CD6DF0(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  (*(v3 + 16))(&v5 - v2, v1);
  return sub_1C3D1F474();
}

void sub_1C3CD7104()
{
  v1 = sub_1C3CD7264(&unk_1F42FA868);
  v3 = v2;
  [v0 pointTransform];
  v5 = v4;
  v7 = v6;
  v8 = [v0 transform];
  v9 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
  [v8 coordinateForValue_];
  v11 = v10;

  HKLinearTransformValue(v5, v7, v11);
  [v0 pointTransform];
  v13 = v12;
  v15 = v14;
  v16 = [v0 transform];
  v17 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
  [v16 coordinateForValue_];
  v19 = v18;

  HKLinearTransformValue(v13, v15, v19);
}

double sub_1C3CD7264(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return -1.79769313e308;
  }

  v2 = (a1 + 40);
  v3 = 1.79769313e308;
  result = -1.79769313e308;
  do
  {
    v6 = *v2;
    v7 = *(*v2 + 16);
    if (v7)
    {
      if (*(v6 + 32) > result)
      {
        result = *(v6 + 32);
      }

      v5 = *(v6 + 8 * v7 + 24);
    }

    else
    {
      result = fmax(result, -1.79769313e308);
      v5 = 1.79769313e308;
    }

    if (v3 >= v5)
    {
      v3 = v5;
    }

    v2 += 2;
    --v1;
  }

  while (v1);
  return result;
}

id sub_1C3CD72E0()
{
  sub_1C3CD7104();
  v1 = &qword_1F42FA888;
  v2 = qword_1F42FA878 + 1;
  v3 = &unk_1F42FA8B8;
  while (--v2)
  {
    v4 = *v1 <= v0;
    v1 += 2;
    if (!v4)
    {

      break;
    }
  }

  v5 = *(v3 + 2);
  if (v5)
  {
    v6 = *(v3 + 4);
    v7 = *(v3 + v5 + 3);

    v8 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
    v9 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
  }

  else
  {

    v8 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
    v9 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
  }

  v10 = v9;
  v11 = [objc_opt_self() valueRangeWithMinValue:v8 maxValue:v9];

  return v11;
}

void sub_1C3CD7580()
{
  v0 = [objc_allocWithZone(HKNumericAxisConfiguration) init];
  v1 = objc_opt_self();
  v2 = v0;
  v3 = [v1 preferredAxisStyle];
  [v2 setPreferredStyle_];

  [v2 setTopVerticalLabelPadding_];
  [v2 setBottomVerticalLabelPadding_];
  v4 = [objc_allocWithZone(type metadata accessor for DecibelsHearingLossAxisLabelDimension()) init];
  [v2 setLabelDimension_];

  v5 = [objc_allocWithZone(MEMORY[0x1E696C608]) init];
  v6 = [v5 features];

  if (v6)
  {
    v7 = [v6 yodel];

    if (v7)
    {
      v8 = 8;
    }

    else
    {
      v8 = 7;
    }

    [v2 setMaxLabels_];
    [v2 setAxisLabelsDependOnPointTransform_];

    [objc_allocWithZone(type metadata accessor for AudiogramNumericAxis()) initWithConfiguration_];
  }

  else
  {
    __break(1u);
  }
}

id sub_1C3CD7888(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void sub_1C3CD78E4(uint64_t a1, void *a2, char a3)
{
  v5 = sub_1C3D1E0D4();
  v24 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1C3D1E104();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1C3D1E174();
  v13 = [a2 isDateInToday_];

  if ((v13 & 1) == 0)
  {
    v14 = sub_1C3D1E174();
    v15 = [a2 isDateInYesterday_];

    if (!v15)
    {
      sub_1C3D1E0E4();
      sub_1C3D1E0C4();
      sub_1C3D1E1C4();
      (*(v24 + 8))(v7, v5);
      (*(v9 + 8))(v11, v8);
      goto LABEL_6;
    }
  }

  v16 = sub_1C3D1E174();
  v17 = HKLastUpdatedTextWithOptions(v16, a2, a3 & 1);

  if (v17)
  {
    sub_1C3D20104();

LABEL_6:
    v18 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) initWithFrame_];
    v19 = sub_1C3D200C4();

    [v18 setText_];

    v20 = v18;
    [v20 setTranslatesAutoresizingMaskIntoConstraints_];
    [v20 setAdjustsFontSizeToFitWidth_];
    [v20 setBaselineAdjustment_];
    v21 = [objc_opt_self() hk_chartCurrentValueDateFont];
    [v20 setFont_];

    v22 = [objc_opt_self() hk_chartLollipopLabelColor];
    [v20 setTextColor_];

    return;
  }

  __break(1u);
}

uint64_t sub_1C3CD7C2C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    v13 = MEMORY[0x1E69E7CC0];
    sub_1C3D208C4();
    v6 = (a1 + 32);
    do
    {
      v7 = *v6++;
      v8 = v7;
      v9 = [objc_allocWithZone(HKAxisLabel) init];
      v10 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
      [v9 setLocation_];

      if (v7 != 0.0)
      {
        v8 = -v8;
      }

      v11 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
      v12 = [a2 stringFromNumber_];

      [v9 setText_];
      [v9 setLabelType_];
      sub_1C3D20894();
      sub_1C3D208D4();
      sub_1C3D208E4();
      sub_1C3D208A4();
      --v3;
    }

    while (v3);
    return v13;
  }

  return result;
}

uint64_t sub_1C3CD7DB0(uint64_t a1)
{
  v3 = [objc_msgSend(v1 labelDimension)];
  swift_unknownObjectRelease();
  if (!v3)
  {
    return MEMORY[0x1E69E7CC0];
  }

  if (!a1)
  {

    return MEMORY[0x1E69E7CC0];
  }

  sub_1C3CD7104();
  v5 = &qword_1F42FA888;
  v6 = qword_1F42FA878 + 1;
  v7 = &unk_1F42FA8B8;
  while (--v6)
  {
    v8 = v5 + 2;
    v9 = *v5 <= v4;
    v5 += 2;
    if (!v9)
    {
      v7 = *(v8 - 1);

      break;
    }
  }

  v10 = sub_1C3CD7C2C(v7, v3);

  return v10;
}

id sub_1C3CD7E94()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = sub_1C3CD72E0();
  }

  else
  {
    v3 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
    v1 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
    v2 = [objc_opt_self() valueRangeWithMinValue:v3 maxValue:v1];
  }

  return v2;
}

uint64_t sub_1C3CD7F88(uint64_t a1)
{
  sub_1C3C617FC();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1C3D1E8C4();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C3C37FE0(a1, v5);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_1C3CC0A94(v5);

    v11 = sub_1C3CA2E48(v10);

    v12 = *(v11 + 16);
    if (v12)
    {
      goto LABEL_3;
    }

LABEL_20:
    v16 = MEMORY[0x1E69E7CC0];
    goto LABEL_21;
  }

  (*(v7 + 32))(v9, v5, v6);
  v22 = *(v1 + OBJC_IVAR____TtC8HealthUI17BalanceCoordinate_yValuesByMetric);
  if (*(v22 + 16))
  {
    v23 = sub_1C3CA0330(v9);
    if (v24)
    {
      v11 = *(*(v22 + 56) + 8 * v23);
    }

    else
    {
      v11 = MEMORY[0x1E69E7CC0];
    }
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  (*(v7 + 8))(v9, v6);
  v12 = *(v11 + 16);
  if (!v12)
  {
    goto LABEL_20;
  }

LABEL_3:
  v13 = *(v1 + OBJC_IVAR____TtC8HealthUI17BalanceCoordinate_yValueMedialRange);
  v14 = *(v1 + OBJC_IVAR____TtC8HealthUI17BalanceCoordinate_yValueMedialRange + 8);
  v15 = (v11 + 32);
  v16 = MEMORY[0x1E69E7CC0];
  do
  {
    v19 = *v15;
    if (v13 <= *v15 && v19 <= v14)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v27 = v16;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1C3C23DF8(0, *(v16 + 16) + 1, 1);
        v16 = v27;
      }

      v18 = *(v16 + 16);
      v17 = *(v16 + 24);
      if (v18 >= v17 >> 1)
      {
        sub_1C3C23DF8((v17 > 1), v18 + 1, 1);
        v16 = v27;
      }

      *(v16 + 16) = v18 + 1;
      *(v16 + 8 * v18 + 32) = v19;
    }

    ++v15;
    --v12;
  }

  while (v12);
LABEL_21:

  return v16;
}

uint64_t sub_1C3CD8244(uint64_t a1)
{
  sub_1C3C617FC();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1C3D1E8C4();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C3C37FE0(a1, v5);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_1C3CC0A94(v5);

    v11 = sub_1C3CA2E48(v10);

    v12 = *(v11 + 16);
    if (v12)
    {
      goto LABEL_3;
    }

LABEL_21:
    v16 = MEMORY[0x1E69E7CC0];
    goto LABEL_22;
  }

  (*(v7 + 32))(v9, v5, v6);
  v22 = *(v1 + OBJC_IVAR____TtC8HealthUI17BalanceCoordinate_yValuesByMetric);
  if (*(v22 + 16))
  {
    v23 = sub_1C3CA0330(v9);
    if (v24)
    {
      v11 = *(*(v22 + 56) + 8 * v23);
    }

    else
    {
      v11 = MEMORY[0x1E69E7CC0];
    }
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  (*(v7 + 8))(v9, v6);
  v12 = *(v11 + 16);
  if (!v12)
  {
    goto LABEL_21;
  }

LABEL_3:
  v13 = *(v1 + OBJC_IVAR____TtC8HealthUI17BalanceCoordinate_yValueMedialRange);
  v14 = *(v1 + OBJC_IVAR____TtC8HealthUI17BalanceCoordinate_yValueMedialRange + 8);
  v15 = (v11 + 32);
  v16 = MEMORY[0x1E69E7CC0];
  do
  {
    v19 = *v15;
    if (v13 > *v15 || v19 > v14)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v27 = v16;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1C3C23DF8(0, *(v16 + 16) + 1, 1);
        v16 = v27;
      }

      v18 = *(v16 + 16);
      v17 = *(v16 + 24);
      if (v18 >= v17 >> 1)
      {
        sub_1C3C23DF8((v17 > 1), v18 + 1, 1);
        v16 = v27;
      }

      *(v16 + 16) = v18 + 1;
      *(v16 + 8 * v18 + 32) = v19;
    }

    ++v15;
    --v12;
  }

  while (v12);
LABEL_22:

  return v16;
}

uint64_t sub_1C3CD8500(uint64_t a1)
{
  sub_1C3C617FC();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1C3D1E8C4();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C3C37FE0(a1, v5);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_1C3CC0A94(v5);
    return *(v1 + OBJC_IVAR____TtC8HealthUI17BalanceCoordinate_yValueRange);
  }

  (*(v7 + 32))(v9, v5, v6);
  v11 = *(v1 + OBJC_IVAR____TtC8HealthUI17BalanceCoordinate_yValuesByMetric);
  if (*(v11 + 16) && (v12 = sub_1C3CA0330(v9), (v13 & 1) != 0))
  {
    v14 = *(*(v11 + 56) + 8 * v12);
  }

  else
  {
    v14 = MEMORY[0x1E69E7CC0];
  }

  v15 = sub_1C3C9D880(v14);
  if (v16)
  {
    (*(v7 + 8))(v9, v6);

    return 0;
  }

  v17 = *&v15;
  v18 = COERCE_DOUBLE(sub_1C3C9DAB0(v14));
  v20 = v19;

  (*(v7 + 8))(v9, v6);
  if (v20)
  {
    return 0;
  }

  result = *&v17;
  if (v17 > v18)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C3CD8740(uint64_t a1)
{
  v2 = v1;
  v3 = *(v1 + OBJC_IVAR____TtC8HealthUI17BalanceCoordinate_yValuesByMetric);
  if (!*(v3 + 16))
  {
    return MEMORY[0x1E69E7CC0];
  }

  v4 = sub_1C3CA0330(a1);
  if ((v5 & 1) == 0)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v6 = *(*(v3 + 56) + 8 * v4);
  v7 = *(v6 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v7)
  {
    v19 = MEMORY[0x1E69E7CC0];

    sub_1C3C23EB8(0, v7, 0);
    v9 = v19;
    v10 = *(v2 + OBJC_IVAR____TtC8HealthUI17BalanceCoordinate_xValue);
    v11 = *(v19 + 16);
    v12 = 16 * v11;
    v13 = 32;
    do
    {
      v14 = *(v6 + v13);
      v20 = v9;
      v15 = *(v9 + 24);
      v16 = v11 + 1;
      if (v11 >= v15 >> 1)
      {
        sub_1C3C23EB8((v15 > 1), v11 + 1, 1);
        v9 = v20;
      }

      *(v9 + 16) = v16;
      v17 = v9 + v12;
      *(v17 + 32) = v10;
      *(v17 + 40) = v14;
      v12 += 16;
      v13 += 8;
      v11 = v16;
      --v7;
    }

    while (v7);
    v18 = v9;

    return v18;
  }

  return result;
}

id sub_1C3CD8898()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BalanceCoordinate();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1C3CD898C(CGFloat *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = a1[4];
  v7 = a1[5];
  v8 = sub_1C3D1E8C4();
  v9 = *(v8 - 1);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v80 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v90 = &v80 - v13;
  v99.x = *(v1 + OBJC_IVAR____TtC8HealthUI17BalanceCoordinate_xValue);
  v98.a = v2;
  v98.b = v3;
  v98.c = v4;
  v98.d = v5;
  v98.tx = v6;
  v98.ty = v7;
  v99.y = 0.0;
  x = v99.x;
  *&v14 = *&CGPointApplyAffineTransform(v99, &v98);
  v81 = v1;
  v15 = *(v1 + OBJC_IVAR____TtC8HealthUI17BalanceCoordinate_yValuesByMetric);
  sub_1C3CC0E84();
  v17 = v16;
  v18 = sub_1C3D20974();
  v19 = v18;
  v20 = 0;
  v22 = v15 + 64;
  v21 = *(v15 + 64);
  v89 = v15;
  v23 = 1 << *(v15 + 32);
  v24 = -1;
  if (v23 < 64)
  {
    v24 = ~(-1 << v23);
  }

  v25 = v24 & v21;
  v26 = (v23 + 63) >> 6;
  v88 = v9 + 16;
  v91 = v9;
  *&v95 = v9 + 32;
  v87 = v18 + 64;
  v86 = v18;
  v85 = v8;
  v84 = v11;
  if (v25)
  {
    while (1)
    {
      v27 = __clz(__rbit64(v25));
      v92 = (v25 - 1) & v25;
LABEL_10:
      v30 = v27 | (v20 << 6);
      v31 = v89;
      v32 = *(v89 + 48);
      v33 = v91;
      v34 = *(v91 + 16);
      *&v94 = *(v91 + 72) * v30;
      v35 = v90;
      v34(v90, v32 + *&v94, v8);
      v36 = *(*(v31 + 56) + 8 * v30);
      v93 = *(v33 + 32);
      v93(v11, v35, v8);
      v37 = *(v36 + 16);
      if (v37)
      {
        v97 = MEMORY[0x1E69E7CC0];

        sub_1C3C23DF8(0, v37, 0);
        v17 = v97;
        v38 = 32;
        do
        {
          v100.y = *(v36 + v38);
          v98.a = v2;
          v98.b = v3;
          v98.c = v4;
          v98.d = v5;
          v98.tx = v6;
          v98.ty = v7;
          v100.x = 0.0;
          v40 = CGPointApplyAffineTransform(v100, &v98);
          y = v40.y;
          v97 = v17;
          v42 = v17[2];
          v41 = v17[3];
          if (v42 >= v41 >> 1)
          {
            sub_1C3C23DF8((v41 > 1), v42 + 1, 1);
            y = v40.y;
            v17 = v97;
          }

          v17[2] = v42 + 1;
          *&v17[v42 + 4] = y;
          v38 += 8;
          --v37;
        }

        while (v37);

        v19 = v86;
        v8 = v85;
        v11 = v84;
      }

      else
      {
        v17 = MEMORY[0x1E69E7CC0];
      }

      *(v87 + ((v30 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v30;
      v93((v19[6] + *&v94), v11, v8);
      *(v19[7] + 8 * v30) = v17;
      v43 = v19[2];
      v44 = __OFADD__(v43, 1);
      v45 = v43 + 1;
      if (v44)
      {
        break;
      }

      v19[2] = v45;
      v25 = v92;
      if (!v92)
      {
        goto LABEL_5;
      }
    }

LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

LABEL_5:
  v28 = v20;
  while (1)
  {
    v20 = v28 + 1;
    if (__OFADD__(v28, 1))
    {
      __break(1u);
      goto LABEL_46;
    }

    if (v20 >= v26)
    {
      break;
    }

    v29 = *(v22 + 8 * v20);
    ++v28;
    if (v29)
    {
      v27 = __clz(__rbit64(v29));
      v92 = (v29 - 1) & v29;
      goto LABEL_10;
    }
  }

  v82 = v14;
  v46 = v81;
  v101.y = *(v81 + OBJC_IVAR____TtC8HealthUI17BalanceCoordinate_yValueMedialRange);
  v95 = *(v81 + OBJC_IVAR____TtC8HealthUI17BalanceCoordinate_yValueMedialRange + 8);
  v98.a = v2;
  v98.b = v3;
  v98.c = v4;
  v98.d = v5;
  v98.tx = v6;
  v98.ty = v7;
  v47 = x;
  v101.x = x;
  v48 = CGPointApplyAffineTransform(v101, &v98).y;
  v98.a = v2;
  v98.b = v3;
  v98.c = v4;
  v98.d = v5;
  v98.tx = v6;
  v98.ty = v7;
  v102.x = v47;
  v102.y = v95;
  v49 = CGPointApplyAffineTransform(v102, &v98).y;
  v50 = v48;
  if (v48 > v49)
  {
    v51 = v49;
    v52 = v82;
    if (v49 <= v50)
    {
      goto LABEL_24;
    }

    __break(1u);
  }

  v51 = v50;
  v50 = v49;
  v52 = v82;
LABEL_24:
  v94 = v51;
  v95 = v50;
  v53 = v19;
  v54 = *(v46 + OBJC_IVAR____TtC8HealthUI17BalanceCoordinate_yValueWarmupRange);
  v14 = *(v46 + OBJC_IVAR____TtC8HealthUI17BalanceCoordinate_yValueWarmupRange + 8);
  v55 = *(v46 + OBJC_IVAR____TtC8HealthUI17BalanceCoordinate_yValueWarmupRange + 16);
  if (v55)
  {
    v4 = *(v46 + OBJC_IVAR____TtC8HealthUI17BalanceCoordinate_yValueWarmupRange);
    goto LABEL_31;
  }

  v98.a = v2;
  v98.b = v3;
  v98.c = v4;
  v98.d = v5;
  v98.tx = v6;
  v98.ty = v7;
  v56 = x;
  v57 = x;
  v58 = CGPointApplyAffineTransform(*(&v54 - 1), &v98);
  v59 = v14;
  v14 = v58.y;
  v98.a = v2;
  v98.b = v3;
  v98.c = v4;
  v98.d = v5;
  v98.tx = v6;
  v98.ty = v7;
  v103.x = v56;
  v103.y = v59;
  v60 = CGPointApplyAffineTransform(v103, &v98);
  if (v58.y <= v60.y)
  {
    goto LABEL_29;
  }

  v4 = v60.y;
  if (v60.y > v58.y)
  {
    __break(1u);
LABEL_29:
    v4 = v58.y;
    v14 = v60.y;
  }

  v52 = v82;
LABEL_31:
  v61 = *(v46 + OBJC_IVAR____TtC8HealthUI17BalanceCoordinate_userInfo);
  v8 = type metadata accessor for BalanceCoordinate();
  v17 = objc_allocWithZone(v8);
  *(v17 + OBJC_IVAR____TtC8HealthUI17BalanceCoordinate_xValue) = v52;
  *(v17 + OBJC_IVAR____TtC8HealthUI17BalanceCoordinate_yValuesByMetric) = v53;
  v62 = (v17 + OBJC_IVAR____TtC8HealthUI17BalanceCoordinate_yValueMedialRange);
  v63 = v95;
  *v62 = v94;
  v62[1] = v63;
  v64 = (v17 + OBJC_IVAR____TtC8HealthUI17BalanceCoordinate_yValueWarmupRange);
  *v64 = v4;
  v64[1] = v14;
  *(v64 + 16) = v55;
  *(v17 + OBJC_IVAR____TtC8HealthUI17BalanceCoordinate_userInfo) = v61;
  swift_unknownObjectRetain();

  v26 = sub_1C3CA2E48(v65);

  if (v55)
  {
    goto LABEL_38;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_47:
    v26 = sub_1C3C46D00(0, *(v26 + 16) + 1, 1, v26);
  }

  v67 = *(v26 + 16);
  v66 = *(v26 + 24);
  v68 = v66 >> 1;
  v69 = v67 + 1;
  if (v66 >> 1 <= v67)
  {
    v26 = sub_1C3C46D00((v66 > 1), v67 + 1, 1, v26);
    v66 = *(v26 + 24);
    v68 = v66 >> 1;
  }

  *(v26 + 16) = v69;
  *(v26 + 8 * v67 + 32) = v4;
  v70 = v67 + 2;
  if (v68 < v70)
  {
    v26 = sub_1C3C46D00((v66 > 1), v70, 1, v26);
  }

  *(v26 + 16) = v70;
  *(v26 + 8 * v69 + 32) = v14;
LABEL_38:
  *&v71 = COERCE_DOUBLE(sub_1C3C9D880(v26));
  if (v72)
  {

LABEL_41:
    v78 = v17 + OBJC_IVAR____TtC8HealthUI17BalanceCoordinate_yValueRange;
    *v78 = 0;
    *(v78 + 1) = 0;
    v78[16] = 1;
LABEL_44:
    v96.receiver = v17;
    v96.super_class = v8;
    return [(CGFloat *)&v96 init];
  }

  v73 = *&v71;
  v74 = COERCE_DOUBLE(sub_1C3C9DAB0(v26));
  v76 = v75;

  if (v76)
  {
    goto LABEL_41;
  }

  if (v73 <= v74)
  {
    v79 = (v17 + OBJC_IVAR____TtC8HealthUI17BalanceCoordinate_yValueRange);
    *v79 = v73;
    v79[1] = v74;
    *(v79 + 16) = 0;
    goto LABEL_44;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C3CD907C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1C3CDB73C(0, &qword_1EC085D60, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v25 - v10;
  sub_1C3CDB3A0(a3, v25 - v10);
  v12 = sub_1C3D203A4();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_1C3CDB434(v11);
  }

  else
  {
    sub_1C3D20394();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_1C3D20314();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_1C3D20144() + 32;
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

      sub_1C3CDB434(a3);

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

  sub_1C3CDB434(a3);
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

void sub_1C3CD9360(uint64_t a1, void *a2)
{
  v5 = MEMORY[0x1E69E7CC0];
  *&v2[OBJC_IVAR____TtC8HealthUI51ClinicalAuthorizationAccountsOverviewViewController_cancellables] = MEMORY[0x1E69E7CC0];
  swift_unknownObjectWeakInit();
  *&v2[OBJC_IVAR____TtC8HealthUI51ClinicalAuthorizationAccountsOverviewViewController_delegate] = a1;
  *&v2[OBJC_IVAR____TtC8HealthUI51ClinicalAuthorizationAccountsOverviewViewController_context] = a2;
  v6 = type metadata accessor for ClinicalAccountsOverviewDataSourceAndDelegate();
  v7 = objc_allocWithZone(v6);
  swift_unknownObjectWeakInit();
  *&v7[OBJC_IVAR____TtC8HealthUI45ClinicalAccountsOverviewDataSourceAndDelegate_accounts] = v5;
  v7[OBJC_IVAR____TtC8HealthUI45ClinicalAccountsOverviewDataSourceAndDelegate_healthAppIsAvailable] = 1;
  *&v7[OBJC_IVAR____TtC8HealthUI45ClinicalAccountsOverviewDataSourceAndDelegate_context] = a2;
  v23.receiver = v7;
  v23.super_class = v6;
  v8 = a2;
  swift_unknownObjectRetain();
  *&v2[OBJC_IVAR____TtC8HealthUI51ClinicalAuthorizationAccountsOverviewViewController_tableSourceAndDelegate] = objc_msgSendSuper2(&v23, sel_init);
  v9 = sub_1C3D200C4();
  v10 = HKHealthRecordsAPILocalizedString(v9);

  if (v10)
  {
    v11 = sub_1C3D200C4();
    v12 = HKHealthRecordsAPILocalizedString(v11);

    if (v12)
    {
      sub_1C3D20104();

      sub_1C3CDB73C(0, &qword_1EC080D70, sub_1C3C54AB8, MEMORY[0x1E69E6F90]);
      v13 = swift_allocObject();
      *(v13 + 16) = xmmword_1C3D5F370;
      v14 = [v8 source];
      v15 = [v14 name];

      v16 = sub_1C3D20104();
      v18 = v17;

      *(v13 + 56) = MEMORY[0x1E69E6158];
      *(v13 + 64) = sub_1C3C54B1C();
      *(v13 + 32) = v16;
      *(v13 + 40) = v18;
      sub_1C3D20114();

      v19 = sub_1C3D200C4();

      v22.receiver = v2;
      v22.super_class = type metadata accessor for ClinicalAuthorizationAccountsOverviewViewController();
      v20 = objc_msgSendSuper2(&v22, sel_initWithTitle_detailText_icon_adoptTableViewScrollView_, v10, v19, 0, 1);

      v21 = v20;
      [v21 setShouldMoveHeaderViewTitleToNavigationTitleWhenScrolledOffScreen_];
      swift_unknownObjectRelease();

      swift_unknownObjectWeakAssign();
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1C3CD9680()
{
  ObjectType = swift_getObjectType();
  sub_1C3CDB73C(0, &qword_1EC085D60, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v32 - v3;
  v5 = type metadata accessor for ClinicalAuthorizationAccountsOverviewViewController();
  v35.receiver = v0;
  v35.super_class = v5;
  objc_msgSendSuper2(&v35, sel_viewDidLoad);
  v6 = [v0 navigationItem];
  [v6 setLargeTitleDisplayMode_];

  v7 = [v0 navigationItem];
  v8 = sub_1C3D200C4();
  v9 = HKHealthRecordsAPILocalizedString(v8);

  [v7 setTitle_];
  v10 = [v0 navigationItem];
  v11 = sub_1C3D200C4();
  v12 = HKHealthRecordsAPILocalizedString(v11);

  [v10 setAccessibilityLabel_];
  v13 = [v0 navigationItem];
  v14 = [objc_allocWithZone(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:1 target:v0 action:sel_cancelButtonPressed_];
  [v13 setRightBarButtonItem_];

  sub_1C3CDA6E0();
  v15 = [objc_opt_self() boldButton];
  v16 = objc_opt_self();
  v17 = v15;
  v18 = [v16 systemBlueColor];
  [v17 setTintColor_];

  [v17 addTarget:v0 action:sel_nextButtonPressed_ forControlEvents:64];
  v19 = [v0 buttonTray];
  v20 = v17;
  [v19 addButton_];

  swift_unknownObjectWeakAssign();
  sub_1C3CDA90C();

  v21 = [*&v0[OBJC_IVAR____TtC8HealthUI51ClinicalAuthorizationAccountsOverviewViewController_context] wrappedFlowManager];
  sub_1C3D20774();
  swift_unknownObjectRelease();
  type metadata accessor for ClinicalAuthorizationFlowManager();
  swift_dynamicCast();
  v22 = v33;
  v23 = *&v33[OBJC_IVAR___HKClinicalAuthorizationFlowManager_accountsEvents];

  v34 = v23;
  v24 = swift_allocObject();
  *(v24 + 16) = v0;
  *(v24 + 24) = ObjectType;
  sub_1C3CDB1A4();
  sub_1C3CDB20C();
  v25 = v0;
  sub_1C3D1EFF4();

  swift_beginAccess();
  sub_1C3CDB73C(0, &qword_1EC087540, MEMORY[0x1E695BF10], MEMORY[0x1E69E62F8]);
  sub_1C3CDB264();
  sub_1C3D1EEB4();
  swift_endAccess();

  v26 = sub_1C3D203A4();
  (*(*(v26 - 8) + 56))(v4, 1, 1, v26);
  sub_1C3D20374();
  v27 = v25;
  v28 = sub_1C3D20364();
  v29 = swift_allocObject();
  v30 = MEMORY[0x1E69E85E0];
  v29[2] = v28;
  v29[3] = v30;
  v29[4] = v27;
  sub_1C3CD907C(0, 0, v4, &unk_1C3D62CE8, v29);
}

uint64_t sub_1C3CD9BC8(uint64_t a1, void *a2, uint64_t a3)
{
  sub_1C3CDB73C(0, &qword_1EC085D60, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v14 - v6;
  sub_1C3D20374();
  sub_1C3D20364();
  v8 = MEMORY[0x1E69E85E0];
  sub_1C3D20314();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v9 = sub_1C3D203A4();
  (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
  v10 = a2;
  v11 = sub_1C3D20364();
  v12 = swift_allocObject();
  v12[2] = v11;
  v12[3] = v8;
  v12[4] = v10;
  v12[5] = a3;
  sub_1C3CD907C(0, 0, v7, &unk_1C3D62D10, v12);
}

uint64_t sub_1C3CD9D84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v5[4] = sub_1C3D20374();
  v5[5] = sub_1C3D20364();
  v7 = sub_1C3D20314();
  v5[6] = v7;
  v5[7] = v6;

  return MEMORY[0x1EEE6DFA0](sub_1C3CD9E20, v7, v6);
}

uint64_t sub_1C3CD9E20()
{
  v13 = v0;
  if (qword_1EC0850C8 != -1)
  {
    swift_once();
  }

  v1 = sub_1C3D1EDA4();
  __swift_project_value_buffer(v1, qword_1EC08DCF8);
  v2 = sub_1C3D1ED84();
  v3 = sub_1C3D204D4();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v12 = v5;
    *v4 = 136315138;
    v6 = sub_1C3D20CD4();
    v8 = sub_1C3C22C28(v6, v7, &v12);

    *(v4 + 4) = v8;
    _os_log_impl(&dword_1C3942000, v2, v3, "%s received accounts event, reloading accounts list", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
    MEMORY[0x1C69321D0](v5, -1, -1);
    MEMORY[0x1C69321D0](v4, -1, -1);
  }

  v0[8] = sub_1C3D20364();
  v10 = sub_1C3D20314();
  v0[9] = v10;
  v0[10] = v9;

  return MEMORY[0x1EEE6DFA0](sub_1C3CD9FD8, v10, v9);
}

uint64_t sub_1C3CD9FD8()
{
  v1 = swift_task_alloc();
  *(v0 + 88) = v1;
  *v1 = v0;
  v1[1] = sub_1C3CDA074;

  return sub_1C3CA3B40();
}

uint64_t sub_1C3CDA074()
{
  v1 = *v0;

  v2 = *(v1 + 80);
  v3 = *(v1 + 72);

  return MEMORY[0x1EEE6DFA0](sub_1C3CDA194, v3, v2);
}

uint64_t sub_1C3CDA194()
{
  v1 = [*(v0 + 16) tableView];
  if (v1)
  {
    v4 = v1;

    [v4 reloadData];

    sub_1C3CDA90C();
    v2 = *(v0 + 48);
    v3 = *(v0 + 56);
    v1 = sub_1C3CDA238;
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x1EEE6DFA0](v1, v2, v3);
}

uint64_t sub_1C3CDA238()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1C3CDA298(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v4[3] = sub_1C3D20374();
  v4[4] = sub_1C3D20364();
  v4[5] = sub_1C3D20364();
  v6 = sub_1C3D20314();
  v4[6] = v6;
  v4[7] = v5;

  return MEMORY[0x1EEE6DFA0](sub_1C3CDA340, v6, v5);
}

uint64_t sub_1C3CDA340()
{
  v1 = swift_task_alloc();
  *(v0 + 64) = v1;
  *v1 = v0;
  v1[1] = sub_1C3CDA3DC;

  return sub_1C3CA3B40();
}

uint64_t sub_1C3CDA3DC()
{
  v1 = *v0;

  v2 = *(v1 + 56);
  v3 = *(v1 + 48);

  return MEMORY[0x1EEE6DFA0](sub_1C3CDA4FC, v3, v2);
}

uint64_t sub_1C3CDA4FC()
{
  v1 = [*(v0 + 16) tableView];
  if (v1)
  {
    v4 = v1;

    [v4 reloadData];

    sub_1C3CDA90C();
    v5 = sub_1C3D20314();
    v7 = v6;
    v1 = sub_1C3CDA5C8;
    v2 = v5;
    v3 = v7;
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x1EEE6DFA0](v1, v2, v3);
}

uint64_t sub_1C3CDA5C8()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_1C3CDA6E0()
{
  v1 = [objc_allocWithZone(MEMORY[0x1E69DD020]) initWithFrame:2 style:{0.0, 0.0, 0.0, 0.0}];
  [v0 setTableView_];

  v2 = [v0 tableView];
  if (!v2)
  {
    __break(1u);
    goto LABEL_11;
  }

  v3 = v2;
  v4 = *&v0[OBJC_IVAR____TtC8HealthUI51ClinicalAuthorizationAccountsOverviewViewController_tableSourceAndDelegate];
  [v2 setDataSource_];

  v5 = [v0 tableView];
  if (!v5)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v6 = v5;
  [v5 setDelegate_];

  v7 = [v0 traitCollection];
  v8 = [v7 userInterfaceIdiom];

  if (v8 == 6)
  {
    return;
  }

  v9 = [v0 view];
  if (!v9)
  {
    goto LABEL_12;
  }

  v10 = v9;
  v11 = [objc_opt_self() systemBackgroundColor];
  [v10 setBackgroundColor_];

  v15 = [v0 tableView];
  if (!v15)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v12 = [v0 view];
  if (!v12)
  {
LABEL_14:
    __break(1u);
    return;
  }

  v13 = v12;
  v14 = [v12 backgroundColor];

  [v15 setBackgroundColor_];
}

void sub_1C3CDA90C()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v2 = *(v0 + OBJC_IVAR____TtC8HealthUI51ClinicalAuthorizationAccountsOverviewViewController_tableSourceAndDelegate);
    v3 = OBJC_IVAR____TtC8HealthUI45ClinicalAccountsOverviewDataSourceAndDelegate_accounts;
    if (*(v2 + OBJC_IVAR____TtC8HealthUI45ClinicalAccountsOverviewDataSourceAndDelegate_accounts) >> 62)
    {
      sub_1C3D20964();
    }

    v4 = sub_1C3D200C4();
    v5 = HKHealthRecordsAPILocalizedString(v4);

    [v6 setTitle:v5 forState:0];
    if (*(v2 + v3) >> 62)
    {
      sub_1C3D20964();
    }

    [v6 setEnabled_];
  }
}

void sub_1C3CDAA54()
{
  v1 = *(*(v0 + OBJC_IVAR____TtC8HealthUI51ClinicalAuthorizationAccountsOverviewViewController_tableSourceAndDelegate) + OBJC_IVAR____TtC8HealthUI45ClinicalAccountsOverviewDataSourceAndDelegate_accounts);
  if (v1 >> 62)
  {
    if (sub_1C3D20964())
    {
      goto LABEL_3;
    }
  }

  else if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_3:
    v2 = *(v0 + OBJC_IVAR____TtC8HealthUI51ClinicalAuthorizationAccountsOverviewViewController_context);
    v3 = [v2 wrappedFlowManager];
    sub_1C3D20774();
    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_0(&v9);
    v4 = *(v0 + OBJC_IVAR____TtC8HealthUI51ClinicalAuthorizationAccountsOverviewViewController_delegate);
    v5 = [objc_allocWithZone(HKClinicalAuthorizationSettingsViewController) initWithContext:v2 style:1];
    [v5 setDelegate_];
    objc_allocWithZone(type metadata accessor for ClinicalAuthorizationYouShouldKnowViewController());
    v6 = v2;
    swift_unknownObjectRetain();
    sub_1C3C7A76C(v6, v5, v4);
    v8 = v7;
    sub_1C3CDAE34(v7, 1);

    return;
  }

  sub_1C3CA443C();
}

void sub_1C3CDAC84()
{
  v1 = *(v0 + OBJC_IVAR____TtC8HealthUI51ClinicalAuthorizationAccountsOverviewViewController_delegate);
  v2 = objc_opt_self();
  v3 = sub_1C3D200C4();
  v4 = [v2 hk:7 error:v3 description:?];

  v5 = sub_1C3D1DF94();
  [v1 promptControllerDidFinish:v0 error:v5];
}

void sub_1C3CDAE34(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = [v3 navigationController];
  if (v6)
  {
    oslog = v6;
    [v6 pushViewController:a1 animated:a2 & 1];
  }

  else
  {
    if (qword_1EC0850C8 != -1)
    {
      swift_once();
    }

    v7 = sub_1C3D1EDA4();
    __swift_project_value_buffer(v7, qword_1EC08DCF8);
    oslog = sub_1C3D1ED84();
    v8 = sub_1C3D20504();
    if (os_log_type_enabled(oslog, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_1C3942000, oslog, v8, "ClinicalAuthorizationAccountsOverviewViewController tasked to push but doesn't live in a navigation controller", v9, 2u);
      MEMORY[0x1C69321D0](v9, -1, -1);
    }
  }
}

uint64_t sub_1C3CDAF80()
{
  sub_1C3D20374();
  sub_1C3D20364();
  sub_1C3D20314();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

uint64_t sub_1C3CDB034()
{
  sub_1C3D20374();
  sub_1C3D20364();
  sub_1C3D20314();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

id sub_1C3CDB0C8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ClinicalAuthorizationAccountsOverviewViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1C3CDB1A4()
{
  if (!qword_1EC087530)
  {
    type metadata accessor for HKHealthRecordsAccountsEvent(255);
    v0 = sub_1C3D1EF04();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC087530);
    }
  }
}

unint64_t sub_1C3CDB20C()
{
  result = qword_1EC087538;
  if (!qword_1EC087538)
  {
    sub_1C3CDB1A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC087538);
  }

  return result;
}

unint64_t sub_1C3CDB264()
{
  result = qword_1EC087548;
  if (!qword_1EC087548)
  {
    sub_1C3CDB73C(255, &qword_1EC087540, MEMORY[0x1E695BF10], MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC087548);
  }

  return result;
}

uint64_t sub_1C3CDB2EC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1C3C56614;

  return sub_1C3CDA298(a1, v4, v5, v6);
}

uint64_t sub_1C3CDB3A0(uint64_t a1, uint64_t a2)
{
  sub_1C3CDB73C(0, &qword_1EC085D60, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C3CDB434(uint64_t a1)
{
  sub_1C3CDB73C(0, &qword_1EC085D60, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C3CDB4C0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1C3C56614;

  return sub_1C3C5D60C(a1, v4);
}

uint64_t sub_1C3CDB578(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1C3C42AC8;

  return sub_1C3C5D60C(a1, v4);
}

uint64_t objectdestroy_13Tm_0(uint64_t a1)
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v1, a1, 7);
}

uint64_t sub_1C3CDB67C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1C3C42AC8;

  return sub_1C3CD9D84(a1, v4, v5, v7, v6);
}

void sub_1C3CDB73C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

id sub_1C3CDB7A0(void *a1, uint64_t a2)
{
  v4 = [objc_opt_self() countUnit];
  v5 = sub_1C3CE0B2C();
  v6 = v5;
  v7 = 0;
  v8 = 0;
  if (v5)
  {
    [v5 doubleValueForUnit_];
    v8 = v9;
  }

  v10 = sub_1C3CE0D0C();
  v11 = v10;
  if (v10)
  {
    [v10 doubleValueForUnit_];
    v7 = v12;
  }

  v13 = v6 == 0;
  v14 = type metadata accessor for LevelDateRangeDataSourceDelegate();
  v15 = objc_allocWithZone(v14);
  *&v15[OBJC_IVAR____TtC8HealthUI32LevelDateRangeDataSourceDelegate_baseDisplayType] = a1;
  v16 = &v15[OBJC_IVAR____TtC8HealthUI32LevelDateRangeDataSourceDelegate_lowerBound];
  *v16 = v8;
  v16[8] = v13;
  v17 = &v15[OBJC_IVAR____TtC8HealthUI32LevelDateRangeDataSourceDelegate_upperBound];
  *v17 = v7;
  v17[8] = v11 == 0;
  v22.receiver = v15;
  v22.super_class = v14;
  v18 = a1;
  v19 = objc_msgSendSuper2(&v22, sel_init);

  v20 = sub_1C3D1E974();
  (*(*(v20 - 8) + 8))(a2, v20);
  return v19;
}

double CALayer.center.getter()
{
  [v0 frame];
  x = v7.origin.x;
  y = v7.origin.y;
  width = v7.size.width;
  height = v7.size.height;
  MidX = CGRectGetMidX(v7);
  v8.origin.x = x;
  v8.origin.y = y;
  v8.size.width = width;
  v8.size.height = height;
  CGRectGetMidY(v8);
  return MidX;
}

void sub_1C3CDB98C(id *a1@<X0>, CGFloat *a2@<X8>)
{
  [*a1 frame];
  x = v9.origin.x;
  y = v9.origin.y;
  width = v9.size.width;
  height = v9.size.height;
  MidX = CGRectGetMidX(v9);
  v10.origin.x = x;
  v10.origin.y = y;
  v10.size.width = width;
  v10.size.height = height;
  MidY = CGRectGetMidY(v10);
  *a2 = MidX;
  a2[1] = MidY;
}

id CALayer.center.setter(double a1, double a2)
{
  [v2 frame];

  return [v2 setFrame_];
}

id (*CALayer.center.modify(uint64_t a1))(uint64_t a1)
{
  *(a1 + 16) = v1;
  [v1 frame];
  x = v10.origin.x;
  y = v10.origin.y;
  width = v10.size.width;
  height = v10.size.height;
  MidX = CGRectGetMidX(v10);
  v11.origin.x = x;
  v11.origin.y = y;
  v11.size.width = width;
  v11.size.height = height;
  MidY = CGRectGetMidY(v11);
  *a1 = MidX;
  *(a1 + 8) = MidY;
  return sub_1C3CDBB00;
}

id sub_1C3CDBB00(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *a1;
  v3 = *(a1 + 8);
  [v1 frame];

  return [v1 setFrame_];
}

uint64_t sub_1C3CDBB6C()
{
  v1 = v0;
  v2 = sub_1C3D1EDA4();
  v34 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1C3D1E8C4();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v30 - v10;
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = &v30 - v14;
  v16 = *(v6 + 16);
  v16(&v30 - v14, v1, v5, v13);
  v17 = (*(v6 + 88))(v15, v5);
  if (v17 == *MEMORY[0x1E69A2E60])
  {
    if (qword_1EC080DC0 == -1)
    {
      goto LABEL_6;
    }

    goto LABEL_21;
  }

  if (v17 == *MEMORY[0x1E69A2E50])
  {
    if (qword_1EC080DC0 == -1)
    {
LABEL_6:
      v18 = qword_1EC08DBD8;
      v19 = sub_1C3D1DEC4();

      return v19;
    }

LABEL_21:
    swift_once();
    goto LABEL_6;
  }

  if (v17 == *MEMORY[0x1E69A2E48])
  {
    if (qword_1EC080DC0 == -1)
    {
      goto LABEL_6;
    }

    goto LABEL_21;
  }

  if (v17 == *MEMORY[0x1E69A2E58])
  {
    if (qword_1EC080DC0 == -1)
    {
      goto LABEL_6;
    }

    goto LABEL_21;
  }

  if (v17 == *MEMORY[0x1E69A2E40])
  {
    if (qword_1EC080DC0 == -1)
    {
      goto LABEL_6;
    }

    goto LABEL_21;
  }

  sub_1C3D1ED64();
  (v16)(v11, v1, v5);
  v21 = sub_1C3D1ED84();
  v33 = sub_1C3D20504();
  if (os_log_type_enabled(v21, v33))
  {
    v22 = swift_slowAlloc();
    v31 = v21;
    v23 = v22;
    v32 = swift_slowAlloc();
    v35 = v32;
    *v23 = 136446466;
    *(v23 + 4) = sub_1C3C22C28(0xD000000000000016, 0x80000001C3D87890, &v35);
    *(v23 + 12) = 2080;
    (v16)(v8, v11, v5);
    v30 = sub_1C3D20134();
    v25 = v24;
    v26 = *(v6 + 8);
    v26(v11, v5);
    v27 = sub_1C3C22C28(v30, v25, &v35);

    *(v23 + 14) = v27;
    v28 = v31;
    _os_log_impl(&dword_1C3942000, v31, v33, "[%{public}s] unknown sleeping sample data type: %s", v23, 0x16u);
    v29 = v32;
    swift_arrayDestroy();
    MEMORY[0x1C69321D0](v29, -1, -1);
    MEMORY[0x1C69321D0](v23, -1, -1);
  }

  else
  {

    v26 = *(v6 + 8);
    v26(v11, v5);
  }

  (*(v34 + 8))(v4, v2);
  v26(v15, v5);
  return 0;
}

uint64_t sub_1C3CDC1B4()
{
  sub_1C3C27C60();
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1C3D5EAE0;
  sub_1C3CDBB6C();
  v1 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
  v2 = sub_1C3D200C4();

  v3 = [v1 initWithString_];

  sub_1C3CDC3C4();
  v4 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
  v5 = sub_1C3D200C4();

  v6 = [v4 initWithString_];

  v7 = [objc_allocWithZone(HKInfographicContentItem) initWithTitle:v3 description:v6];
  *(v0 + 32) = v7;
  v13 = v0;
  v8 = sub_1C3CDCFAC();
  if (v8)
  {
    v9 = v8;
    MEMORY[0x1C692F8F0]();
    if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1C3D202C4();
    }

    sub_1C3D202F4();

    v0 = v13;
  }

  v10 = sub_1C3CDD140();
  if (v10)
  {
    v11 = v10;
    MEMORY[0x1C692F8F0]();
    if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1C3D202C4();
    }

    sub_1C3D202F4();

    return v13;
  }

  return v0;
}

uint64_t sub_1C3CDC3C4()
{
  v1 = v0;
  v2 = sub_1C3D1EDA4();
  v34 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1C3D1E8C4();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v30 - v10;
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = &v30 - v14;
  v16 = *(v6 + 16);
  v16(&v30 - v14, v1, v5, v13);
  v17 = (*(v6 + 88))(v15, v5);
  if (v17 == *MEMORY[0x1E69A2E60])
  {
    if (qword_1EC080DC0 == -1)
    {
      goto LABEL_15;
    }

    goto LABEL_21;
  }

  if (v17 == *MEMORY[0x1E69A2E50])
  {
    if (qword_1EC080DC0 == -1)
    {
      goto LABEL_15;
    }

    goto LABEL_21;
  }

  if (v17 == *MEMORY[0x1E69A2E48])
  {
    if (qword_1EC080DC0 == -1)
    {
      goto LABEL_15;
    }

    goto LABEL_21;
  }

  if (v17 == *MEMORY[0x1E69A2E58])
  {
    if (qword_1EC080DC0 == -1)
    {
      goto LABEL_15;
    }

    goto LABEL_21;
  }

  if (v17 == *MEMORY[0x1E69A2E40])
  {
    if (qword_1EC080DC0 == -1)
    {
LABEL_15:
      v18 = qword_1EC08DBD8;
      v19 = sub_1C3D1DEC4();

      return v19;
    }

LABEL_21:
    swift_once();
    goto LABEL_15;
  }

  sub_1C3D1ED64();
  (v16)(v11, v1, v5);
  v21 = sub_1C3D1ED84();
  v33 = sub_1C3D20504();
  if (os_log_type_enabled(v21, v33))
  {
    v22 = swift_slowAlloc();
    v31 = v21;
    v23 = v22;
    v32 = swift_slowAlloc();
    v35 = v32;
    *v23 = 136446466;
    *(v23 + 4) = sub_1C3C22C28(0xD000000000000016, 0x80000001C3D87890, &v35);
    *(v23 + 12) = 2080;
    (v16)(v8, v11, v5);
    v30 = sub_1C3D20134();
    v25 = v24;
    v26 = *(v6 + 8);
    v26(v11, v5);
    v27 = sub_1C3C22C28(v30, v25, &v35);

    *(v23 + 14) = v27;
    v28 = v31;
    _os_log_impl(&dword_1C3942000, v31, v33, "[%{public}s] unknown sleeping sample data type: %s", v23, 0x16u);
    v29 = v32;
    swift_arrayDestroy();
    MEMORY[0x1C69321D0](v29, -1, -1);
    MEMORY[0x1C69321D0](v23, -1, -1);
  }

  else
  {

    v26 = *(v6 + 8);
    v26(v11, v5);
  }

  (*(v34 + 8))(v4, v2);
  v26(v15, v5);
  return 0;
}

uint64_t sub_1C3CDCA1C()
{
  v1 = v0;
  v2 = sub_1C3D1E8C4();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, v1, v2, v4);
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 == *MEMORY[0x1E69A2E60])
  {
    if (qword_1EC080DC0 == -1)
    {
      goto LABEL_9;
    }

    goto LABEL_12;
  }

  if (v7 == *MEMORY[0x1E69A2E50])
  {
    if (qword_1EC080DC0 == -1)
    {
      goto LABEL_9;
    }

    goto LABEL_12;
  }

  if (v7 != *MEMORY[0x1E69A2E58])
  {
    (*(v3 + 8))(v6, v2);
    return 0;
  }

  if (qword_1EC080DC0 != -1)
  {
LABEL_12:
    swift_once();
  }

LABEL_9:
  v8 = qword_1EC08DBD8;
  v9 = sub_1C3D1DEC4();

  return v9;
}

uint64_t sub_1C3CDCCE4()
{
  v1 = v0;
  v2 = sub_1C3D1E8C4();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, v1, v2, v4);
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 == *MEMORY[0x1E69A2E60])
  {
    if (qword_1EC080DC0 == -1)
    {
      goto LABEL_9;
    }

    goto LABEL_12;
  }

  if (v7 == *MEMORY[0x1E69A2E50])
  {
    if (qword_1EC080DC0 == -1)
    {
      goto LABEL_9;
    }

    goto LABEL_12;
  }

  if (v7 != *MEMORY[0x1E69A2E48])
  {
    (*(v3 + 8))(v6, v2);
    return 0;
  }

  if (qword_1EC080DC0 != -1)
  {
LABEL_12:
    swift_once();
  }

LABEL_9:
  v8 = qword_1EC08DBD8;
  v9 = sub_1C3D1DEC4();

  return v9;
}

id sub_1C3CDCFAC()
{
  sub_1C3CDCA1C();
  v1 = v0;
  if (v0)
  {
    if (qword_1EC080DC0 != -1)
    {
      swift_once();
    }

    v2 = qword_1EC08DBD8;
    sub_1C3D1DEC4();

    v3 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
    v4 = sub_1C3D200C4();

    v5 = [v3 initWithString_];

    v6 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
    v7 = sub_1C3D200C4();

    v8 = [v6 initWithString_];

    v1 = [objc_allocWithZone(HKInfographicContentItem) initWithTitle:v5 description:v8];
  }

  return v1;
}

id sub_1C3CDD140()
{
  sub_1C3CDCCE4();
  v1 = v0;
  if (v0)
  {
    if (qword_1EC080DC0 != -1)
    {
      swift_once();
    }

    v2 = qword_1EC08DBD8;
    sub_1C3D1DEC4();

    v3 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
    v4 = sub_1C3D200C4();

    v5 = [v3 initWithString_];

    v6 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
    v7 = sub_1C3D200C4();

    v8 = [v6 initWithString_];

    v1 = [objc_allocWithZone(HKInfographicContentItem) initWithTitle:v5 description:v8];
  }

  return v1;
}

Swift::Bool __swiftcall EnableSmallCapsForUnits()()
{
  if (qword_1EC080DC0 != -1)
  {
    swift_once();
  }

  v0 = qword_1EC08DBD8;
  v1 = sub_1C3D1DEC4();
  v3 = v2;

  if (v1 == 49 && v3 == 0xE100000000000000)
  {

    return 1;
  }

  else
  {
    v5 = sub_1C3D20A54();

    return v5 & 1;
  }
}

id static UIImageConfiguration.infoButton.getter()
{
  sub_1C3C27C60();
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1C3D62D20;
  v1 = objc_opt_self();
  *(v0 + 32) = [v1 labelColor];
  *(v0 + 40) = [v1 quaternaryLabelColor];
  sub_1C3CDD4B8();
  v2 = sub_1C3D202A4();

  v3 = [objc_opt_self() configurationWithPaletteColors_];

  return v3;
}

unint64_t sub_1C3CDD4B8()
{
  result = qword_1EC080DD0;
  if (!qword_1EC080DD0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC080DD0);
  }

  return result;
}

uint64_t sub_1C3CDD504(unint64_t a1, unint64_t a2)
{
  sub_1C3CDF7B0(0, &qword_1EC085770, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = (&v35 - v8);
  v10 = sub_1C3C81FAC(a1);
  v11 = MEMORY[0x1E69E7CC0];
  if (!v10)
  {
    return v11;
  }

  v12 = v10;
  v13 = v10 & 0xFFFFFFFFFFFFFF8;
  if (v10 >> 62)
  {
    goto LABEL_71;
  }

  v14 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v14)
  {
LABEL_30:

    return v11;
  }

LABEL_4:
  sub_1C3CDEA40(v12, v9);
  v38 = v11;
  if (!a2)
  {
    goto LABEL_18;
  }

  if (a2 != 1)
  {
LABEL_29:
    sub_1C3CDF8A8(v9, &qword_1EC085770, MEMORY[0x1E6969530]);
    goto LABEL_30;
  }

  v36 = v6;
  v37 = v9;
  a2 = 0;
  v11 = 0;
  v9 = &OBJC_IVAR____TtC8HealthUI25StateOfMindCoordinateInfo_momentaryReflectiveCount;
  while (1)
  {
    if (v14 == a2)
    {
LABEL_42:

      v22 = sub_1C3D1E1E4();
      v23 = v36;
      (*(*(v22 - 8) + 56))(v36, 1, 1, v22);
      v24 = sub_1C3CDDAD4(v11, v23);
      sub_1C3CDF8A8(v23, &qword_1EC085770, MEMORY[0x1E6969530]);
      if (!v24)
      {
        v31 = MEMORY[0x1E6969530];
        v32 = v37;
LABEL_60:
        sub_1C3CDF8A8(v32, &qword_1EC085770, v31);
        return MEMORY[0x1E69E7CC0];
      }

      v25 = v24;
      MEMORY[0x1C692F8F0]();
      v27 = v37;
      v26 = v38;
LABEL_56:
      if (*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v26 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1C3D202C4();
      }

      sub_1C3D202F4();

      sub_1C3CDF8A8(v27, &qword_1EC085770, MEMORY[0x1E6969530]);
      return v38;
    }

    if ((v12 & 0xC000000000000001) == 0)
    {
      break;
    }

    v15 = MEMORY[0x1C692FEB0](a2, v12);
    if (__OFADD__(a2, 1))
    {
      goto LABEL_17;
    }

LABEL_11:
    v16 = *&v15[OBJC_IVAR____TtC8HealthUI25StateOfMindCoordinateInfo_dailyReflectiveCount];
    v17 = __OFADD__(v11, v16);
    v11 += v16;
    if (v17)
    {
      goto LABEL_67;
    }

    v6 = *&v15[OBJC_IVAR____TtC8HealthUI25StateOfMindCoordinateInfo_momentaryReflectiveCount];

    ++a2;
    v17 = __OFADD__(v11, v6);
    v11 += v6;
    if (v17)
    {
      goto LABEL_68;
    }
  }

  if (a2 >= *(v13 + 16))
  {
    goto LABEL_66;
  }

  v15 = *(v12 + 8 * a2 + 32);
  if (!__OFADD__(a2, 1))
  {
    goto LABEL_11;
  }

LABEL_17:
  __break(1u);
LABEL_18:
  v37 = v9;
  v11 = 0;
  v6 = 0;
  v18 = v12 & 0xC000000000000001;
  v9 = &OBJC_IVAR____TtC8HealthUI25StateOfMindCoordinateInfo_dailyReflectiveCount;
  while (2)
  {
    if (v14 != v11)
    {
      if (v18)
      {
        v19 = MEMORY[0x1C692FEB0](v11, v12);
        if (__OFADD__(v11, 1))
        {
LABEL_28:
          __break(1u);
          goto LABEL_29;
        }

LABEL_23:
        a2 = *&v19[OBJC_IVAR____TtC8HealthUI25StateOfMindCoordinateInfo_dailyReflectiveCount];

        ++v11;
        v17 = __OFADD__(v6, a2);
        v6 += a2;
        if (v17)
        {
          goto LABEL_65;
        }

        continue;
      }

      if (v11 < *(v13 + 16))
      {
        v19 = *(v12 + 8 * v11 + 32);
        if (__OFADD__(v11, 1))
        {
          goto LABEL_28;
        }

        goto LABEL_23;
      }

      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
LABEL_67:
      __break(1u);
LABEL_68:
      __break(1u);
LABEL_69:
      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      v14 = sub_1C3D20964();
      if (!v14)
      {
        goto LABEL_30;
      }

      goto LABEL_4;
    }

    break;
  }

  a2 = 0;
  v11 = 0;
  v9 = &OBJC_IVAR____TtC8HealthUI25StateOfMindCoordinateInfo_momentaryReflectiveCount;
  while (v14 != a2)
  {
    if (v18)
    {
      v20 = MEMORY[0x1C692FEB0](a2, v12);
      if (__OFADD__(a2, 1))
      {
        goto LABEL_41;
      }
    }

    else
    {
      if (a2 >= *(v13 + 16))
      {
        goto LABEL_69;
      }

      v20 = *(v12 + 8 * a2 + 32);
      if (__OFADD__(a2, 1))
      {
LABEL_41:
        __break(1u);
        goto LABEL_42;
      }
    }

    v21 = *&v20[OBJC_IVAR____TtC8HealthUI25StateOfMindCoordinateInfo_momentaryReflectiveCount];

    ++a2;
    v17 = __OFADD__(v11, v21);
    v11 += v21;
    if (v17)
    {
      goto LABEL_70;
    }
  }

  if (v6 < 1)
  {
    v27 = v37;
    if (v11 < 1)
    {
      sub_1C3CDF8A8(v37, &qword_1EC085770, MEMORY[0x1E6969530]);

      return MEMORY[0x1E69E7CC0];
    }

    v33 = sub_1C3CDE500(v12, v11, v37);
    goto LABEL_53;
  }

  v27 = v37;
  if (v11 < 1)
  {
    v33 = sub_1C3CDDC24(v12, v6, v37);
LABEL_53:
    v34 = v33;

    if (v34)
    {
      v30 = v34;
      goto LABEL_55;
    }

LABEL_59:
    v31 = MEMORY[0x1E6969530];
    v32 = v27;
    goto LABEL_60;
  }

  result = v6 + v11;
  if (!__OFADD__(v6, v11))
  {
    v29 = sub_1C3CDDAD4(result, v27);
    if (v29)
    {
      v30 = v29;
LABEL_55:
      v25 = v30;
      MEMORY[0x1C692F8F0]();
      v26 = v38;
      goto LABEL_56;
    }

    goto LABEL_59;
  }

  __break(1u);
  return result;
}

id sub_1C3CDDAD4(uint64_t a1, uint64_t a2)
{
  v5 = [objc_allocWithZone(HKSelectedRangeData) initWithStatisticsType_];
  [v5 setDataType_];
  v6 = [objc_opt_self() countUnit];
  v7 = [v2 attributedStringWithValue:v6 unit:1 showUnit:a1];

  [v5 setAttributedString_];
  v8 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
  [v5 setValueAsNumber_];

  (*((*MEMORY[0x1E69E7D40] & *v2) + 0x98))(v5, a2);
  return v5;
}

uint64_t sub_1C3CDDC24(unint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 < 1)
  {
    return 0;
  }

  v4 = a1 >> 62;
  if (a2 == 1)
  {
    if (v4)
    {
LABEL_53:
      v5 = sub_1C3D20964();
    }

    else
    {
      v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v5)
    {
      v6 = 0;
      v7 = 0.0;
      v8 = 1;
      v9 = 0.0;
      do
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          v10 = MEMORY[0x1C692FEB0](v6, a1);
          v11 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
            goto LABEL_21;
          }
        }

        else
        {
          if (v6 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_51;
          }

          v10 = *(a1 + 8 * v6 + 32);
          v11 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
LABEL_21:
            __break(1u);
            return 0;
          }
        }

        v12 = &v10[OBJC_IVAR____TtC8HealthUI25StateOfMindCoordinateInfo_dailyValenceRange];
        v13 = v10[OBJC_IVAR____TtC8HealthUI25StateOfMindCoordinateInfo_dailyValenceRange + 16];
        v14 = *&v10[OBJC_IVAR____TtC8HealthUI25StateOfMindCoordinateInfo_dailyValenceRange];
        if ((v8 | v13))
        {
          v8 = v8 ^ 1 | v13;
          v7 = v12[1];

          v9 = v14;
        }

        else
        {
          v15 = v12[1];

          if (v14 < v9)
          {
            v9 = v14;
          }

          if (v7 <= v15)
          {
            v7 = v15;
          }

          if (v9 > v7)
          {
            goto LABEL_52;
          }

          v8 = 0;
        }

        ++v6;
      }

      while (v11 != v5);
      if ((v8 & 1) == 0)
      {
        v28 = HKUILocalizedStringForValenceRange(v9, v7);
        if (v28)
        {
          v29 = v28;
          sub_1C3D20104();
        }
      }
    }

    v16 = [objc_allocWithZone(HKSelectedRangeData) initWithStatisticsType_];
    [v16 setDataType_];
    sub_1C3CDF7B0(0, &qword_1EC080D80, sub_1C3C54BC4, MEMORY[0x1E69E6F90]);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1C3D5DCD0;
    v31 = *MEMORY[0x1E69DB648];
    *(inited + 32) = *MEMORY[0x1E69DB648];
    v32 = v31;
    v33 = [v66 majorFont];
    *(inited + 64) = sub_1C3C27CB4(0, &qword_1EC080DF0);
    if (!v33)
    {
      v33 = [objc_opt_self() preferredFontForTextStyle_];
    }

    v34 = MEMORY[0x1E69DB650];
    *(inited + 40) = v33;
    v35 = *v34;
    *(inited + 72) = *v34;
    v36 = objc_opt_self();
    v37 = v35;
    v38 = [v36 hk_chartLollipopValueColor];
    *(inited + 104) = sub_1C3C27CB4(0, &qword_1EC080DD0);
    *(inited + 80) = v38;
    sub_1C3C7556C(inited);
    swift_setDeallocating();
    sub_1C3C54BC4();
    swift_arrayDestroy();
    v39 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
    v40 = sub_1C3D200C4();

    type metadata accessor for Key(0);
    sub_1C3CDF9AC(&qword_1EC080E30, type metadata accessor for Key);
    v41 = sub_1C3D1FEE4();

    v42 = [v39 initWithString:v40 attributes:v41];

    goto LABEL_70;
  }

  if (!v4)
  {
    v17 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v17)
    {
      goto LABEL_25;
    }

LABEL_55:
    v19 = MEMORY[0x1E69E7CC0];
    goto LABEL_56;
  }

  v17 = sub_1C3D20964();
  if (!v17)
  {
    goto LABEL_55;
  }

LABEL_25:
  v18 = 0;
  v19 = MEMORY[0x1E69E7CC0];
  while (2)
  {
    v20 = v18;
    while ((a1 & 0xC000000000000001) != 0)
    {
      result = MEMORY[0x1C692FEB0](v20, a1);
      v18 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        return result;
      }

      v23 = *(result + OBJC_IVAR____TtC8HealthUI25StateOfMindCoordinateInfo_dailyValenceRange);
      v24 = *(result + OBJC_IVAR____TtC8HealthUI25StateOfMindCoordinateInfo_dailyValenceRange + 8);
      v25 = *(result + OBJC_IVAR____TtC8HealthUI25StateOfMindCoordinateInfo_dailyValenceRange + 16);
      swift_unknownObjectRelease();
      if ((v25 & 1) == 0)
      {
        goto LABEL_37;
      }

LABEL_31:
      v20 = v18;
      if (v18 == v17)
      {
        goto LABEL_56;
      }
    }

    if ((v20 & 0x8000000000000000) != 0)
    {
      __break(1u);
LABEL_50:
      __break(1u);
LABEL_51:
      __break(1u);
LABEL_52:
      __break(1u);
      goto LABEL_53;
    }

    if (v20 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_50;
    }

    v18 = v20 + 1;
    v21 = *(a1 + 32 + 8 * v20) + OBJC_IVAR____TtC8HealthUI25StateOfMindCoordinateInfo_dailyValenceRange;
    if (*(v21 + 16))
    {
      goto LABEL_31;
    }

    v23 = *v21;
    v24 = *(v21 + 8);
LABEL_37:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v19 = sub_1C3C467D0(0, *(v19 + 2) + 1, 1, v19);
    }

    v27 = *(v19 + 2);
    v26 = *(v19 + 3);
    if (v27 >= v26 >> 1)
    {
      v19 = sub_1C3C467D0((v26 > 1), v27 + 1, 1, v19);
    }

    *(v19 + 2) = v27 + 1;
    *&v19[8 * v27 + 32] = (v23 + v24) * 0.5;
    if (v18 != v17)
    {
      continue;
    }

    break;
  }

LABEL_56:
  v43 = *(v19 + 2);
  if (v43)
  {
    if (v43 <= 3)
    {
      v44 = 0;
      v45 = 0.0;
      goto LABEL_63;
    }

    v44 = v43 & 0x7FFFFFFFFFFFFFFCLL;
    v46 = (v19 + 48);
    v45 = 0.0;
    v47 = v43 & 0x7FFFFFFFFFFFFFFCLL;
    do
    {
      v45 = v45 + *(v46 - 2) + *(v46 - 1) + *v46 + v46[1];
      v46 += 4;
      v47 -= 4;
    }

    while (v47);
    if (v43 != v44)
    {
LABEL_63:
      v48 = v43 - v44;
      v49 = &v19[8 * v44 + 32];
      do
      {
        v50 = *v49++;
        v45 = v45 + v50;
        --v48;
      }

      while (v48);
    }

    v51 = HKUILocalizedStringForValenceRange(v45 / v43, v45 / v43);
    if (v51)
    {
      v52 = v51;
      sub_1C3D20104();
    }
  }

  else
  {
  }

  v16 = [objc_allocWithZone(HKSelectedRangeData) initWithStatisticsType_];
  [v16 setDataType_];
  sub_1C3CDF7B0(0, &qword_1EC080D80, sub_1C3C54BC4, MEMORY[0x1E69E6F90]);
  v53 = swift_initStackObject();
  *(v53 + 16) = xmmword_1C3D5DCD0;
  v54 = *MEMORY[0x1E69DB648];
  *(v53 + 32) = *MEMORY[0x1E69DB648];
  v55 = v54;
  v56 = [v66 majorFont];
  *(v53 + 64) = sub_1C3C27CB4(0, &qword_1EC080DF0);
  if (!v56)
  {
    v56 = [objc_opt_self() preferredFontForTextStyle_];
  }

  v57 = MEMORY[0x1E69DB650];
  *(v53 + 40) = v56;
  v58 = *v57;
  *(v53 + 72) = *v57;
  v59 = objc_opt_self();
  v60 = v58;
  v61 = [v59 hk_chartLollipopValueColor];
  *(v53 + 104) = sub_1C3C27CB4(0, &qword_1EC080DD0);
  *(v53 + 80) = v61;
  sub_1C3C7556C(v53);
  swift_setDeallocating();
  sub_1C3C54BC4();
  swift_arrayDestroy();
  v62 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
  v63 = sub_1C3D200C4();

  type metadata accessor for Key(0);
  sub_1C3CDF9AC(&qword_1EC080E30, type metadata accessor for Key);
  v64 = sub_1C3D1FEE4();

  v42 = [v62 initWithString:v63 attributes:v64];

LABEL_70:
  [v16 setAttributedString_];

  (*((*MEMORY[0x1E69E7D40] & *v66) + 0x98))(v16, a3);
  return v16;
}

id sub_1C3CDE500(unint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 < 1)
  {
    return 0;
  }

  if (a2 == 1)
  {
    if (a1 >> 62)
    {
LABEL_34:
      v6 = sub_1C3D20964();
    }

    else
    {
      v6 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v6)
    {
      v7 = 0;
      v8 = 0.0;
      v9 = 1;
      v10 = 0.0;
      do
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          v11 = MEMORY[0x1C692FEB0](v7, a1);
          v12 = v7 + 1;
          if (__OFADD__(v7, 1))
          {
LABEL_22:
            __break(1u);
            return 0;
          }
        }

        else
        {
          if (v7 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
LABEL_33:
            __break(1u);
            goto LABEL_34;
          }

          v11 = *(a1 + 8 * v7 + 32);
          v12 = v7 + 1;
          if (__OFADD__(v7, 1))
          {
            goto LABEL_22;
          }
        }

        v13 = &v11[OBJC_IVAR____TtC8HealthUI25StateOfMindCoordinateInfo_momentaryValenceRange];
        v14 = v11[OBJC_IVAR____TtC8HealthUI25StateOfMindCoordinateInfo_momentaryValenceRange + 16];
        v15 = *&v11[OBJC_IVAR____TtC8HealthUI25StateOfMindCoordinateInfo_momentaryValenceRange];
        if ((v9 | v14))
        {
          v9 = v9 ^ 1 | v14;
          v8 = v13[1];

          v10 = v15;
        }

        else
        {
          v16 = v13[1];

          if (v15 < v10)
          {
            v10 = v15;
          }

          if (v8 <= v16)
          {
            v8 = v16;
          }

          if (v10 > v8)
          {
            goto LABEL_33;
          }

          v9 = 0;
        }

        ++v7;
      }

      while (v12 != v6);
      if ((v9 & 1) == 0)
      {
        v22 = HKUILocalizedStringForValenceRange(v10, v8);
        if (v22)
        {
          v23 = v22;
          sub_1C3D20104();
        }
      }
    }

    v18 = [objc_allocWithZone(HKSelectedRangeData) initWithStatisticsType_];
    [v18 setDataType_];
    sub_1C3CDF7B0(0, &qword_1EC080D80, sub_1C3C54BC4, MEMORY[0x1E69E6F90]);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1C3D5DCD0;
    v25 = *MEMORY[0x1E69DB648];
    *(inited + 32) = *MEMORY[0x1E69DB648];
    v26 = v25;
    v27 = [v3 majorFont];
    *(inited + 64) = sub_1C3C27CB4(0, &qword_1EC080DF0);
    if (!v27)
    {
      v27 = [objc_opt_self() preferredFontForTextStyle_];
    }

    v28 = MEMORY[0x1E69DB650];
    *(inited + 40) = v27;
    v29 = *v28;
    *(inited + 72) = *v28;
    v30 = objc_opt_self();
    v31 = v29;
    v32 = [v30 hk_chartLollipopValueColor];
    *(inited + 104) = sub_1C3C27CB4(0, &qword_1EC080DD0);
    *(inited + 80) = v32;
    sub_1C3C7556C(inited);
    swift_setDeallocating();
    sub_1C3C54BC4();
    swift_arrayDestroy();
    v33 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
    v34 = sub_1C3D200C4();

    type metadata accessor for Key(0);
    sub_1C3CDF9AC(&qword_1EC080E30, type metadata accessor for Key);
    v35 = sub_1C3D1FEE4();

    v36 = [v33 initWithString:v34 attributes:v35];

    [v18 setAttributedString_];
  }

  else
  {
    v18 = [objc_allocWithZone(HKSelectedRangeData) initWithStatisticsType_];
    [v18 setDataType_];
    v19 = [objc_opt_self() countUnit];
    v20 = [v3 attributedStringWithValue:v19 unit:1 showUnit:a2];

    [v18 setAttributedString_];
    v21 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
    [v18 setValueAsNumber_];
  }

  (*((*MEMORY[0x1E69E7D40] & *v3) + 0x98))(v18, a3);
  return v18;
}

uint64_t sub_1C3CDEA40@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v95 = sub_1C3D1E1E4();
  v76 = *(v95 - 8);
  MEMORY[0x1EEE9AC00](v95);
  v92 = (&v70 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v5);
  v91 = (&v70 - v6);
  MEMORY[0x1EEE9AC00](v7);
  v90 = &v70 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v89 = &v70 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v88 = &v70 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v87 = &v70 - v14;
  v104 = sub_1C3D1DC54();
  v15 = *(v104 - 8);
  MEMORY[0x1EEE9AC00](v104);
  v17 = (&v70 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v18);
  v102 = &v70 - v19;
  sub_1C3CDF7B0(0, &qword_1EC087558, MEMORY[0x1E6968130], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v22 = (&v70 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v70 - v24;
  MEMORY[0x1EEE9AC00](v26);
  v94 = &v70 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v70 - v29;
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v70 - v32;
  v35.n128_f64[0] = MEMORY[0x1EEE9AC00](v34);
  v37 = &v70 - v36;
  v101 = a1;
  if (a1 >> 62)
  {
    goto LABEL_44;
  }

  result = *((v101 & 0xFFFFFFFFFFFFFF8) + 0x10);
  for (i = result; result; i = result)
  {
    v100 = v101 & 0xC000000000000001;
    if ((v101 & 0xC000000000000001) != 0)
    {
      v69 = MEMORY[0x1C692FEB0](0, v101, v35);
    }

    else
    {
      if (!*((v101 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        return result;
      }

      v69 = *(v101 + 32);
    }

    if (*(v69 + OBJC_IVAR____TtC8HealthUI25StateOfMindCoordinateInfo_isSharingPreview))
    {

      break;
    }

    v74 = v69;
    v72 = v22;
    v73 = v37;
    v70 = v17;
    v75 = a2;
    v41 = v15[7];
    v15 += 7;
    v99 = v41;
    v41(v33, 1, 1, v104);
    v71 = v33;
    sub_1C3CDF814(v33, v30);
    v33 = 0;
    v77 = v101 & 0xFFFFFFFFFFFFFF8;
    v37 = (v15 - 1);
    v85 = (v15 - 3);
    v80 = (v76 + 8);
    v79 = (v76 + 32);
    v86 = (v15 - 6);
    v78 = (v15 - 5);
    v22 = &qword_1EC087558;
    a2 = i;
    v42 = v94;
    v84 = v15;
    v83 = v25;
    v82 = v30;
    v81 = (v15 - 1);
    while (v100)
    {
      v43 = MEMORY[0x1C692FEB0](v33, v101);
      v44 = v33 + 1;
      if (__OFADD__(v33, 1))
      {
        goto LABEL_42;
      }

LABEL_21:
      v15 = v43;
      v103 = v44;
      sub_1C3CDF814(v30, v25);
      v98 = *v37;
      if (v98(v25, 1, v104) == 1)
      {
        v17 = MEMORY[0x1E6968130];
        sub_1C3CDF8A8(v30, &qword_1EC087558, MEMORY[0x1E6968130]);
        sub_1C3CDF8A8(v25, &qword_1EC087558, v17);
        (*v78)(v42, v15 + OBJC_IVAR____TtC8HealthUI25StateOfMindCoordinateInfo_dateInterval, v104);
      }

      else
      {
        (*v85)(v102, v25, v104);
        v45 = v88;
        sub_1C3D1DC34();
        v46 = v89;
        sub_1C3D1DC34();
        v97 = sub_1C3CDF9AC(qword_1EC087560, MEMORY[0x1E6969530]);
        v47 = v95;
        v48 = sub_1C3D1FFE4();
        v49 = *v80;
        v96 = *v80;
        v50 = (v48 & 1) == 0;
        if (v48)
        {
          v51 = v45;
        }

        else
        {
          v51 = v46;
        }

        if (v50)
        {
          v52 = v45;
        }

        else
        {
          v52 = v46;
        }

        v49(v51, v47);
        v53 = *v79;
        (*v79)(v87, v52, v47);
        v54 = v91;
        sub_1C3D1DC14();
        v55 = v92;
        sub_1C3D1DC14();
        v56 = sub_1C3D1FFF4();
        v57 = (v56 & 1) == 0;
        if (v56)
        {
          v58 = v54;
        }

        else
        {
          v58 = v55;
        }

        if (v57)
        {
          v17 = v54;
        }

        else
        {
          v17 = v55;
        }

        v96(v58, v47);
        v59 = v47;
        v37 = v81;
        v42 = v94;
        v53(v90, v17, v59);
        v22 = &qword_1EC087558;
        v25 = v83;
        a2 = i;
        sub_1C3D1DC24();

        v30 = v82;
        (*v86)(v102, v104);
        sub_1C3CDF8A8(v30, &qword_1EC087558, MEMORY[0x1E6968130]);
      }

      v99(v42, 0, 1, v104);
      sub_1C3CDF918(v42, v30);
      ++v33;
      if (v103 == a2)
      {
        sub_1C3CDF8A8(v71, &qword_1EC087558, MEMORY[0x1E6968130]);
        v60 = v73;
        sub_1C3CDF918(v30, v73);
        v61 = v72;
        sub_1C3CDF814(v60, v72);
        if (v98(v61, 1, v104) == 1)
        {
          v62 = MEMORY[0x1E6968130];
          sub_1C3CDF8A8(v60, &qword_1EC087558, MEMORY[0x1E6968130]);

          sub_1C3CDF8A8(v61, &qword_1EC087558, v62);
          v63 = *(v76 + 56);
          v64 = v75;
          goto LABEL_39;
        }

        v65 = v70;
        (*v85)(v70, v61, v104);
        sub_1C3D1DC44();
        v66 = v75;
        if (v67 <= 86401.0)
        {
          sub_1C3D1DC34();

          (*v86)(v65, v104);
          sub_1C3CDF8A8(v60, &qword_1EC087558, MEMORY[0x1E6968130]);
          v63 = *(v76 + 56);
          v64 = v66;
          v68 = 0;
        }

        else
        {

          (*v86)(v65, v104);
          sub_1C3CDF8A8(v60, &qword_1EC087558, MEMORY[0x1E6968130]);
          v63 = *(v76 + 56);
          v64 = v66;
LABEL_39:
          v68 = 1;
        }

        return v63(v64, v68, 1, v95);
      }
    }

    if (v33 >= *(v77 + 16))
    {
      goto LABEL_43;
    }

    v43 = *(v101 + 8 * v33 + 32);
    v44 = v33 + 1;
    if (!__OFADD__(v33, 1))
    {
      goto LABEL_21;
    }

LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    result = sub_1C3D20964();
  }

  v39 = *(v76 + 56);
  v40 = v95;

  return v39(a2, 1, 1, v40, v35);
}

id StateOfMindChartFormatter.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id StateOfMindChartFormatter.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for StateOfMindChartFormatter();
  return objc_msgSendSuper2(&v2, sel_init);
}

id StateOfMindChartFormatter.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for StateOfMindChartFormatter();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1C3CDF5CC(void *a1)
{
  v1 = [a1 integerValue];
  if (qword_1EC080DC0 != -1)
  {
    swift_once();
  }

  v2 = qword_1EC08DBD8;
  sub_1C3D1DEC4();

  sub_1C3CDF7B0(0, &qword_1EC080D70, sub_1C3C54AB8, MEMORY[0x1E69E6F90]);
  v3 = swift_allocObject();
  v4 = MEMORY[0x1E69E6530];
  *(v3 + 16) = xmmword_1C3D5F370;
  v5 = MEMORY[0x1E69E65A8];
  *(v3 + 56) = v4;
  *(v3 + 64) = v5;
  *(v3 + 32) = v1;
  v6 = sub_1C3D200D4();

  return v6;
}

void sub_1C3CDF7B0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1C3CDF814(uint64_t a1, uint64_t a2)
{
  sub_1C3CDF7B0(0, &qword_1EC087558, MEMORY[0x1E6968130], MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C3CDF8A8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1C3CDF7B0(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1C3CDF918(uint64_t a1, uint64_t a2)
{
  sub_1C3CDF7B0(0, &qword_1EC087558, MEMORY[0x1E6968130], MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C3CDF9AC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t OptionSetIterator.init(element:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for OptionSetIterator();
  v7 = a3 + *(v6 + 36);
  *v7 = 0;
  *(v7 + 8) = 1;
  *(a3 + *(v6 + 40)) = 1;
  v8 = *(*(a2 - 8) + 32);

  return v8(a3, a1, a2);
}

uint64_t sub_1C3CDFAA0(uint64_t a1)
{
  v3 = MEMORY[0x1EEE9AC00](a1);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = (v7 + *(v6 + 44));
  if (v8[8] != 1)
  {
    return *v8;
  }

  (*(v2 + 16))(v5, v3);
  v9 = *(a1 + 16);
  sub_1C3D20254();
  (*(*(v9 - 8) + 8))(v5, v9);
  result = v12;
  *v8 = v12;
  v8[8] = 0;
  return result;
}

uint64_t OptionSetIterator.next()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (sub_1C3CDFAA0(a1))
  {
    while (1)
    {
      v5 = sub_1C3CDFAA0(a1);
      v6 = *(v2 + *(a1 + 40));
      if ((v6 & v5) != 0)
      {
        break;
      }

      v7 = *(a1 + 16);
      v8 = type metadata accessor for OptionSetIterator();
      *(v2 + *(v8 + 40)) *= 2;
      if (!sub_1C3CDFAA0(a1))
      {
        goto LABEL_6;
      }
    }

    v11 = sub_1C3CDFAA0(a1);
    v12 = v2 + *(a1 + 36);
    *v12 = v11 & ~v6;
    *(v12 + 8) = 0;
    sub_1C3D20264();
    result = type metadata accessor for OptionSetIterator();
    *(v2 + *(result + 40)) *= 2;
  }

  else
  {
    v7 = *(a1 + 16);
LABEL_6:
    v9 = *(*(v7 - 8) + 56);

    return v9(a2, 1, 1, v7);
  }

  return result;
}

uint64_t OptionSet<>.makeIterator()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a1 - 8);
  v6 = MEMORY[0x1EEE9AC00](a1);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, v2, a1, v6);
  v9 = type metadata accessor for OptionSetIterator();
  v10 = a2 + *(v9 + 36);
  *v10 = 0;
  *(v10 + 8) = 1;
  *(a2 + *(v9 + 40)) = 1;
  return (*(v5 + 32))(a2, v8, a1);
}

void sub_1C3CDFE34()
{
  swift_checkMetadataState();
  if (v0 <= 0x3F)
  {
    sub_1C3CE014C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1C3CDFEC4(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (!a2)
  {
    return 0;
  }

  if (v5 >= a2)
  {
    return (*(v4 + 48))();
  }

  v6 = ((*(*(*(a3 + 16) - 8) + 64) + 23) & 0xFFFFFFFFFFFFFFF8) + 8;
  v7 = a2 - v5;
  v8 = v6 & 0xFFFFFFF8;
  if ((v6 & 0xFFFFFFF8) != 0)
  {
    v9 = 2;
  }

  else
  {
    v9 = v7 + 1;
  }

  if (v9 >= 0x10000)
  {
    v10 = 4;
  }

  else
  {
    v10 = 2;
  }

  if (v9 < 0x100)
  {
    v10 = 1;
  }

  if (v9 >= 2)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  if (v11 > 1)
  {
    if (v11 == 2)
    {
      v12 = *(a1 + v6);
      if (!v12)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v12 = *(a1 + v6);
      if (!v12)
      {
        goto LABEL_24;
      }
    }
  }

  else if (!v11 || (v12 = *(a1 + v6)) == 0)
  {
LABEL_24:
    if (v5)
    {
      return (*(v4 + 48))();
    }

    return 0;
  }

  v13 = v12 - 1;
  if (v8)
  {
    v13 = 0;
    LODWORD(v8) = *a1;
  }

  return v5 + (v8 | v13) + 1;
}

unsigned int *sub_1C3CDFFC8(unsigned int *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = ((*(v5 + 64) + 23) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v6 >= a3)
  {
    v11 = 0;
    v12 = a2 - v6;
    if (a2 <= v6)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v8 = a3 - v6;
    if (((*(v5 + 64) + 23) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v9 = v8 + 1;
    }

    else
    {
      v9 = 2;
    }

    if (v9 >= 0x10000)
    {
      v10 = 4;
    }

    else
    {
      v10 = 2;
    }

    if (v9 < 0x100)
    {
      v10 = 1;
    }

    if (v9 >= 2)
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    v12 = a2 - v6;
    if (a2 <= v6)
    {
LABEL_14:
      if (v11 > 1)
      {
        if (v11 != 2)
        {
          *(result + v7) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_30;
        }

        *(result + v7) = 0;
      }

      else if (v11)
      {
        *(result + v7) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_30;
      }

      if (!a2)
      {
        return result;
      }

LABEL_30:
      v16 = *(v5 + 56);

      return v16();
    }
  }

  if (((*(v5 + 64) + 23) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v13 = v12;
  }

  else
  {
    v13 = 1;
  }

  if (((*(v5 + 64) + 23) & 0xFFFFFFF8) != 0xFFFFFFF8)
  {
    v14 = ~v6 + a2;
    v15 = result;
    bzero(result, v7);
    result = v15;
    *v15 = v14;
  }

  if (v11 > 1)
  {
    if (v11 == 2)
    {
      *(result + v7) = v13;
    }

    else
    {
      *(result + v7) = v13;
    }
  }

  else if (v11)
  {
    *(result + v7) = v13;
  }

  return result;
}

void sub_1C3CE014C()
{
  if (!qword_1EC0813B0)
  {
    v0 = sub_1C3D206E4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC0813B0);
    }
  }
}

uint64_t HKOverlayRoomPreferredOverlay.init(stateOfMindDomain:)(uint64_t a1)
{
  v2 = sub_1C3D1EDA4();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a1 - 1) < 0x12)
  {
    return a1 + 99;
  }

  sub_1C3D1ED74();
  v7 = sub_1C3D1ED84();
  v8 = sub_1C3D20504();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v12 = v10;
    *v9 = 136446466;
    *(v9 + 4) = sub_1C3C22C28(0xD00000000000001DLL, 0x80000001C3D87BE0, &v12);
    *(v9 + 12) = 2048;
    *(v9 + 14) = a1;
    _os_log_impl(&dword_1C3942000, v7, v8, "[%{public}s] Cannot create preferred overlay for unknown domain: %ld", v9, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x1C69321D0](v10, -1, -1);
    MEMORY[0x1C69321D0](v9, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  return 104;
}

void sub_1C3CE035C()
{
  v1 = v0;
  v2 = sub_1C3D1E974();
  v3 = *(v2 - 1);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, v1, v2, v4);
  v7 = (*(v3 + 88))(v6, v2);
  v8 = qword_1EC080DC0;
  if (v7 != *MEMORY[0x1E69A2EE8] && v7 != *MEMORY[0x1E69A2EE0])
  {
    goto LABEL_10;
  }

  if (qword_1EC080DC0 != -1)
  {
    swift_once();
  }

  v2 = qword_1EC08DBD8;
  v6 = sub_1C3D200C4();
  v10 = [objc_opt_self() colorNamed:v6 inBundle:v2 compatibleWithTraitCollection:0];

  if (!v10)
  {
    __break(1u);
LABEL_10:
    if (v8 != -1)
    {
      swift_once();
    }

    v11 = qword_1EC08DBD8;
    v12 = sub_1C3D200C4();
    v13 = [objc_opt_self() colorNamed:v12 inBundle:v11 compatibleWithTraitCollection:0];

    if (v13)
    {
      (*(v3 + 8))(v6, v2);
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_1C3CE05BC()
{
  v1 = v0;
  v2 = sub_1C3D1E974();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, v1, v2, v4);
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 == *MEMORY[0x1E69A2EE8])
  {
    if (qword_1EC080DC0 == -1)
    {
      goto LABEL_9;
    }

    goto LABEL_12;
  }

  if (v7 == *MEMORY[0x1E69A2EE0])
  {
    if (qword_1EC080DC0 == -1)
    {
      goto LABEL_9;
    }

    goto LABEL_12;
  }

  if (v7 != *MEMORY[0x1E69A2EF0])
  {
    (*(v3 + 8))(v6, v2);
    return 0;
  }

  if (qword_1EC080DC0 != -1)
  {
LABEL_12:
    swift_once();
  }

LABEL_9:
  v8 = qword_1EC08DBD8;
  v9 = sub_1C3D1DEC4();

  return v9;
}

uint64_t sub_1C3CE0874()
{
  v1 = v0;
  v2 = sub_1C3D1E974();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, v1, v2, v4);
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 == *MEMORY[0x1E69A2EE8])
  {
    if (qword_1EC080DC0 == -1)
    {
      goto LABEL_9;
    }

    goto LABEL_12;
  }

  if (v7 == *MEMORY[0x1E69A2EE0])
  {
    if (qword_1EC080DC0 == -1)
    {
      goto LABEL_9;
    }

    goto LABEL_12;
  }

  if (v7 != *MEMORY[0x1E69A2EF0])
  {
    (*(v3 + 8))(v6, v2);
    return 0;
  }

  if (qword_1EC080DC0 != -1)
  {
LABEL_12:
    swift_once();
  }

LABEL_9:
  v8 = qword_1EC08DBD8;
  v9 = sub_1C3D1DEC4();

  return v9;
}

id sub_1C3CE0B2C()
{
  v1 = v0;
  v2 = sub_1C3D1E974();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C3D1E994();
  v7 = v6;
  v9 = v8;
  (*(v3 + 16))(v5, v1, v2);
  v10 = (*(v3 + 88))(v5, v2);
  if (v10 == *MEMORY[0x1E69A2EE8])
  {
    v11 = [objc_opt_self() countUnit];
    v12 = [objc_opt_self() quantityWithUnit:v11 doubleValue:v9];
  }

  else
  {
    if (v10 != *MEMORY[0x1E69A2EF0])
    {
      (*(v3 + 8))(v5, v2);
      return 0;
    }

    v11 = [objc_opt_self() countUnit];
    v12 = [objc_opt_self() quantityWithUnit:v11 doubleValue:v7];
  }

  v13 = v12;

  return v13;
}

id sub_1C3CE0D0C()
{
  v1 = v0;
  v2 = sub_1C3D1E974();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C3D1E994();
  v7 = v6;
  v9 = v8;
  (*(v3 + 16))(v5, v1, v2);
  v10 = (*(v3 + 88))(v5, v2);
  if (v10 == *MEMORY[0x1E69A2EE0])
  {
    v11 = [objc_opt_self() countUnit];
    v12 = [objc_opt_self() quantityWithUnit:v11 doubleValue:v7];
  }

  else
  {
    if (v10 != *MEMORY[0x1E69A2EF0])
    {
      (*(v3 + 8))(v5, v2);
      return 0;
    }

    v11 = [objc_opt_self() countUnit];
    v12 = [objc_opt_self() quantityWithUnit:v11 doubleValue:v9];
  }

  v13 = v12;

  return v13;
}

id sub_1C3CE0EEC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  if (a2)
  {
    ObjectType = swift_getObjectType();
    *&v6 = a2;
    sub_1C3C233B8(&v6, v8);
  }

  else
  {
    memset(v8, 0, sizeof(v8));
  }

  swift_unknownObjectRetain();
  v4 = v3(v8);

  sub_1C3CB41C0(v8, &qword_1EC0810F0, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720], sub_1C396C43C);

  return v4;
}

void sub_1C3CE0FCC(uint64_t a1, void *a2, uint64_t a3)
{
  sub_1C396C578(a1, v12);
  v5 = v13;
  if (!v13)
  {
    v11 = 0;
    if (!a2)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v6 = __swift_project_boxed_opaque_existential_0(v12, v13);
  v7 = *(v5 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v10, v8);
  v11 = sub_1C3D20A44();
  (*(v7 + 8))(v10, v5);
  __swift_destroy_boxed_opaque_existential_0(v12);
  if (a2)
  {
LABEL_3:
    a2 = sub_1C3D1DF94();
  }

LABEL_4:
  (*(a3 + 16))(a3, v11, a2);
  swift_unknownObjectRelease();
}

id BalanceChartDataSource.__allocating_init(displayType:healthStore:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithDisplayType:a1 healthStore:a2];

  return v5;
}

char *BalanceChartDataSource.init(displayType:healthStore:)(void *a1, void *a2)
{
  v4 = sub_1C3D1E3C4();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [objc_opt_self() hk_gregorianCalendarWithFirstWeekdayFromRegion];
  sub_1C3D1E384();

  v8 = objc_allocWithZone(type metadata accessor for BalanceChartDataSource());
  v9 = sub_1C3CE1444(a1, a2, v6);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v9;
}

uint64_t type metadata accessor for BalanceChartDataSource()
{
  result = qword_1EC087620;
  if (!qword_1EC087620)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

char *sub_1C3CE1444(void *a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v47 = a2;
  v48 = a3;
  v46 = a1;
  v43[1] = swift_getObjectType();
  v5 = sub_1C3D1EDA4();
  v44 = *(v5 - 8);
  v45 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1C3D1E224();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = &v4[OBJC_IVAR___HKBalanceChartDataSource_debugIdentifier];
  sub_1C3D1E214();
  v13 = sub_1C3D1E1F4();
  v15 = v14;
  (*(v9 + 8))(v11, v8);
  v17 = sub_1C3CE44DC(5, v13, v15, v16);
  v19 = v18;
  v21 = v20;
  v23 = v22;

  v24 = MEMORY[0x1C692F7B0](v17, v19, v21, v23);
  v26 = v25;

  *v12 = v24;
  v12[1] = v26;
  v27 = OBJC_IVAR___HKBalanceChartDataSource_gregorianCalendar;
  v28 = sub_1C3D1E3C4();
  v29 = *(v28 - 8);
  (*(v29 + 16))(&v4[v27], v48, v28);
  v30 = type metadata accessor for BalanceChartDataSource();
  v50.receiver = v4;
  v50.super_class = v30;
  v31 = objc_msgSendSuper2(&v50, sel_initWithDisplayType_healthStore_, v46, v47);
  sub_1C3D1ED64();
  v32 = sub_1C3D1ED84();
  v33 = sub_1C3D20514();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v49 = v35;
    *v34 = 136446466;
    v36 = sub_1C3D20CD4();
    v38 = sub_1C3C22C28(v36, v37, &v49);

    *(v34 + 4) = v38;
    *(v34 + 12) = 2080;
    v39 = *&v31[OBJC_IVAR___HKBalanceChartDataSource_debugIdentifier];
    v40 = *&v31[OBJC_IVAR___HKBalanceChartDataSource_debugIdentifier + 8];

    v41 = sub_1C3C22C28(v39, v40, &v49);

    *(v34 + 14) = v41;
    _os_log_impl(&dword_1C3942000, v32, v33, "[%{public}s.%s] init", v34, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1C69321D0](v35, -1, -1);
    MEMORY[0x1C69321D0](v34, -1, -1);
  }

  (*(v29 + 8))(v48, v28);
  (*(v44 + 8))(v7, v45);
  return v31;
}

uint64_t sub_1C3CE1A20(void *a1, uint64_t a2, uint64_t a3)
{
  v139 = a2;
  v140 = a3;
  ObjectType = swift_getObjectType();
  v5 = sub_1C3D1E9E4();
  v130 = *(v5 - 8);
  v131 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v121[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_1C3D1E3C4();
  v136 = *(v8 - 8);
  v137 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v138 = &v121[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_1C3D1E884();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v129 = &v121[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = sub_1C3D1DCF4();
  v141 = *(v12 - 8);
  v142 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v134 = &v121[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v14);
  v132 = &v121[-v15];
  v16 = sub_1C3D1EDA4();
  v148 = *(v16 - 8);
  v149 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v145 = &v121[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v18);
  v146 = &v121[-v19];
  sub_1C3C29314();
  v128 = v20;
  MEMORY[0x1EEE9AC00](v20);
  v135 = &v121[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v22);
  v144 = &v121[-v23];
  MEMORY[0x1EEE9AC00](v24);
  v143 = &v121[-v25];
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v121[-v27];
  v29 = sub_1C3D1E1E4();
  v30 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v32 = &v121[-((v31 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v34 = MEMORY[0x1EEE9AC00](v33);
  v36 = &v121[-v35];
  v37 = [a1 startDate];
  sub_1C3D1E1A4();

  sub_1C3D1E1B4();
  LOBYTE(v37) = sub_1C3D1E194();
  v38 = *(v30 + 8);
  v38(v32, v29);
  v133 = v38;
  v38(v36, v29);
  if (v37)
  {
    v127 = v7;
    sub_1C3CE3180(a1, v28);
    sub_1C3D1ED64();
    sub_1C3C7E020(v28, v143, sub_1C3C29314);
    sub_1C3C7E020(v28, v144, sub_1C3C29314);
    v39 = a1;
    v40 = v3;
    v41 = sub_1C3D1ED84();
    v42 = sub_1C3D20514();

    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v126 = v40;
      v44 = v43;
      v124 = swift_slowAlloc();
      v150[0] = v124;
      *v44 = 136447746;
      v45 = sub_1C3D20CD4();
      v123 = v41;
      v47 = sub_1C3C22C28(v45, v46, v150);
      v145 = v39;
      v48 = v47;

      *(v44 + 4) = v48;
      *(v44 + 12) = 2080;
      *(v44 + 14) = sub_1C3C22C28(*&v126[OBJC_IVAR___HKBalanceChartDataSource_debugIdentifier], *&v126[OBJC_IVAR___HKBalanceChartDataSource_debugIdentifier + 8], v150);
      *(v44 + 22) = 2082;
      v49 = [v145 statisticsInterval];
      v122 = v42;
      v50 = v132;
      sub_1C3D1DCA4();

      sub_1C3CE41C8(&unk_1EC087600, MEMORY[0x1E6968278]);
      v125 = v28;
      v51 = v142;
      v52 = sub_1C3D20A14();
      v54 = v53;
      v55 = v141;
      (*(v141 + 8))(v50, v51);
      v56 = sub_1C3C22C28(v52, v54, v150);

      *(v44 + 24) = v56;
      *(v44 + 32) = 2082;
      v57 = [v145 startDate];
      sub_1C3D1E1A4();

      sub_1C3CE41C8(&unk_1EC086A00, MEMORY[0x1E6969530]);
      v58 = sub_1C3D20A14();
      v60 = v59;
      v61 = v133;
      v133(v36, v29);
      v62 = sub_1C3C22C28(v58, v60, v150);
      v63 = v51;
      v28 = v125;

      *(v44 + 34) = v62;
      *(v44 + 42) = 2082;
      v64 = [v145 endDate];
      sub_1C3D1E1A4();

      v65 = sub_1C3D20A14();
      v67 = v66;
      v61(v36, v29);
      v68 = sub_1C3C22C28(v65, v67, v150);

      *(v44 + 44) = v68;
      *(v44 + 52) = 2048;
      v69 = v143;
      v70 = sub_1C3D1FE34();
      sub_1C3CE4418(v69, sub_1C3C29314);
      *(v44 + 54) = v70;
      *(v44 + 62) = 2048;
      v71 = v144;
      v72 = sub_1C3D1FE34();
      v39 = v145;
      sub_1C3CE4418(v71, sub_1C3C29314);
      *(v44 + 64) = v72;
      v73 = v123;
      _os_log_impl(&dword_1C3942000, v123, v122, "[%{public}s.%s] Creating query: %{public}s dates: %{public}s to %{public}s day indices: %ld-%ld", v44, 0x48u);
      v74 = v124;
      swift_arrayDestroy();
      MEMORY[0x1C69321D0](v74, -1, -1);
      v75 = v44;
      v40 = v126;
      MEMORY[0x1C69321D0](v75, -1, -1);

      (*(v148 + 8))(v146, v149);
    }

    else
    {
      sub_1C3CE4418(v144, sub_1C3C29314);
      sub_1C3CE4418(v143, sub_1C3C29314);

      (*(v148 + 8))(v146, v149);
      v55 = v141;
      v63 = v142;
    }

    v105 = *&v40[OBJC_IVAR___HKBalanceChartDataSource_debugIdentifier];
    v104 = *&v40[OBJC_IVAR___HKBalanceChartDataSource_debugIdentifier + 8];

    v106 = [v39 statisticsInterval];
    v107 = v134;
    sub_1C3D1DCA4();

    v108 = sub_1C3D1DC84();
    v110 = v109;
    (*(v55 + 8))(v107, v63);
    sub_1C3C7E020(v28, v135, sub_1C3C29314);
    (*(v136 + 16))(v138, &v40[OBJC_IVAR___HKBalanceChartDataSource_gregorianCalendar], v137);
    if ((v110 & 1) != 0 || v108 != 1)
    {
      v114 = swift_allocObject();
      v114[2] = v105;
      v114[3] = v104;
      v115 = v140;
      v114[4] = v139;
      v114[5] = v115;
      v114[6] = ObjectType;
      sub_1C3CE4134();
      v117 = objc_allocWithZone(v116);

      v113 = sub_1C3D1E904();
    }

    else
    {
      sub_1C3D1E874();
      (*(v130 + 104))(v127, *MEMORY[0x1E69A2F90], v131);
      v111 = swift_allocObject();
      v111[2] = v105;
      v111[3] = v104;
      v112 = v140;
      v111[4] = v139;
      v111[5] = v112;
      v111[6] = ObjectType;
      sub_1C3D1EA04();
      swift_allocObject();

      sub_1C3D1E9D4();
      v113 = sub_1C3D1E9F4();
    }

    v118 = v113;
    v119 = [v40 queryDescription];
    [v118 setDebugIdentifier_];

    sub_1C396C43C(0, &qword_1EC080D60, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
    v120 = swift_allocObject();
    *(v120 + 16) = xmmword_1C3D5EAE0;
    *(v120 + 32) = v118;

    sub_1C3CE4418(v28, sub_1C3C29314);
    return v120;
  }

  else
  {
    sub_1C3D1ED64();
    v76 = a1;
    v77 = v3;
    v78 = sub_1C3D1ED84();
    v79 = sub_1C3D20514();

    if (os_log_type_enabled(v78, v79))
    {
      v80 = swift_slowAlloc();
      v146 = swift_slowAlloc();
      v150[0] = v146;
      *v80 = 136447234;
      v81 = sub_1C3D20CD4();
      LODWORD(ObjectType) = v79;
      v83 = sub_1C3C22C28(v81, v82, v150);

      *(v80 + 4) = v83;
      *(v80 + 12) = 2080;
      *(v80 + 14) = sub_1C3C22C28(*&v77[OBJC_IVAR___HKBalanceChartDataSource_debugIdentifier], *&v77[OBJC_IVAR___HKBalanceChartDataSource_debugIdentifier + 8], v150);
      *(v80 + 22) = 2082;
      v84 = [v76 statisticsInterval];
      v85 = v132;
      sub_1C3D1DCA4();

      sub_1C3CE41C8(&unk_1EC087600, MEMORY[0x1E6968278]);
      v86 = v142;
      v87 = sub_1C3D20A14();
      v89 = v88;
      (*(v141 + 8))(v85, v86);
      v90 = sub_1C3C22C28(v87, v89, v150);

      *(v80 + 24) = v90;
      *(v80 + 32) = 2082;
      v91 = [v76 startDate];
      sub_1C3D1E1A4();

      sub_1C3CE41C8(&unk_1EC086A00, MEMORY[0x1E6969530]);
      v92 = sub_1C3D20A14();
      v94 = v93;
      v95 = v133;
      v133(v36, v29);
      v96 = sub_1C3C22C28(v92, v94, v150);

      *(v80 + 34) = v96;
      *(v80 + 42) = 2082;
      v97 = [v76 endDate];
      sub_1C3D1E1A4();

      v98 = sub_1C3D20A14();
      v100 = v99;
      v95(v36, v29);
      v101 = sub_1C3C22C28(v98, v100, v150);

      *(v80 + 44) = v101;
      _os_log_impl(&dword_1C3942000, v78, ObjectType, "[%{public}s.%s] Skipping query: %{public}s dates: %{public}s to %{public}s", v80, 0x34u);
      v102 = v146;
      swift_arrayDestroy();
      MEMORY[0x1C69321D0](v102, -1, -1);
      MEMORY[0x1C69321D0](v80, -1, -1);
    }

    (*(v148 + 8))(v145, v149);
    return MEMORY[0x1E69E7CC0];
  }
}