uint64_t sub_20CE727E4(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_20CE92720();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  v11 = sub_20CE92EE0();
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_7:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_8;
  }

  sub_20CE74F38(0, &qword_281111CC0, type metadata accessor for MenstrualCyclesWidgetEntry.State);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_7;
  }

  v16 = *(a1 + a3[7]);
  if (v16 >= 0xFFFFFFFF)
  {
    LODWORD(v16) = -1;
  }

  v17 = v16 - 1;
  if (v17 < 0)
  {
    v17 = -1;
  }

  return (v17 + 1);
}

void sub_20CE72960(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_20CE92720();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    v13 = sub_20CE92EE0();
    if (*(*(v13 - 8) + 84) == a3)
    {
      v10 = v13;
      v14 = *(v13 - 8);
      v15 = a4[5];
    }

    else
    {
      sub_20CE74F38(0, &qword_281111CC0, type metadata accessor for MenstrualCyclesWidgetEntry.State);
      if (*(*(v16 - 8) + 84) != a3)
      {
        *(a1 + a4[7]) = a2;
        return;
      }

      v10 = v16;
      v14 = *(v16 - 8);
      v15 = a4[6];
    }

    v11 = *(v14 + 56);
    v12 = a1 + v15;
  }

  v11(v12, a2, a2, v10);
}

uint64_t sub_20CE72ACC(uint64_t a1, uint64_t a2)
{
  sub_20CE76084();
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 2)
  {
    return v5 - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_20CE72B38(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  sub_20CE76084();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_20CE72BB8()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20CE72BF0()
{
  v1 = sub_20CE93030();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  v6 = *(v0 + v5 + 8);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_20CE72C90(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_20CE92810();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_20CE72D3C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_20CE92810();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_20CE72DE0()
{
  sub_20CE7CDA8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_20CE72E68(uint64_t a1, uint64_t a2, int *a3)
{
  sub_20CE83968(0, &qword_281111FF8, MEMORY[0x277CE3BA0], MEMORY[0x277CDF468]);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_10:

    return v9(v10, a2, v8);
  }

  sub_20CE83968(0, &qword_281111AE0, MEMORY[0x277CE3AF8], MEMORY[0x277CDF468]);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_9:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_10;
  }

  sub_20CE83968(0, &qword_281111AD8, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_9;
  }

  sub_20CE83968(0, &qword_281111AD0, MEMORY[0x277CDFA28], MEMORY[0x277CDF468]);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[7];
    goto LABEL_9;
  }

  if (a2 == 254)
  {
    v17 = *(a1 + a3[8] + 8);
    if (v17 > 1)
    {
      return (v17 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_20CE831C8(0);
    v19 = v18;
    v20 = *(*(v18 - 8) + 48);
    v21 = a1 + a3[9];

    return v20(v21, a2, v19);
  }
}

void sub_20CE73128(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  sub_20CE83968(0, &qword_281111FF8, MEMORY[0x277CE3BA0], MEMORY[0x277CDF468]);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_10:

    v11(v12, a2, a2, v10);
    return;
  }

  sub_20CE83968(0, &qword_281111AE0, MEMORY[0x277CE3AF8], MEMORY[0x277CDF468]);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_9:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_10;
  }

  sub_20CE83968(0, &qword_281111AD8, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_9;
  }

  sub_20CE83968(0, &qword_281111AD0, MEMORY[0x277CDFA28], MEMORY[0x277CDF468]);
  if (*(*(v17 - 8) + 84) == a3)
  {
    v10 = v17;
    v14 = *(v17 - 8);
    v15 = a4[7];
    goto LABEL_9;
  }

  if (a3 == 254)
  {
    *(a1 + a4[8] + 8) = -a2;
  }

  else
  {
    sub_20CE831C8(0);
    v19 = v18;
    v20 = *(*(v18 - 8) + 56);
    v21 = a1 + a4[9];

    v20(v21, a2, a2, v19);
  }
}

uint64_t sub_20CE733EC()
{
  sub_20CE7D994();
  sub_20CE83474(&qword_281111888, sub_20CE7D994);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_20CE73474(uint64_t a1, uint64_t a2)
{
  sub_20CE834BC(0, &qword_281111970, sub_20CE7DA3C, sub_20CE7E8B4, MEMORY[0x277CE0338]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_20CE7351C@<X0>(void *a1@<X8>)
{
  result = sub_20CE92A60();
  *a1 = v3;
  return result;
}

uint64_t sub_20CE73570@<X0>(uint64_t *a1@<X8>)
{
  result = sub_20CE92AA0();
  *a1 = result;
  return result;
}

uint64_t sub_20CE7359C(uint64_t *a1)
{
  v1 = *a1;

  return sub_20CE92AB0();
}

uint64_t sub_20CE735C8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_20CE92A80();
  *a1 = result;
  return result;
}

uint64_t sub_20CE7361C@<X0>(uint64_t a1@<X8>)
{
  result = sub_20CE92AF0();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_20CE73650(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  return sub_20CE92B00();
}

uint64_t sub_20CE736A8@<X0>(void *a1@<X8>)
{
  result = sub_20CE92A00();
  *a1 = v3;
  return result;
}

uint64_t sub_20CE73700()
{
  v1 = sub_20CE92720();
  v2 = *(v1 - 8);
  v3 = *(v2 + 8);
  v4 = *(v2 + 80);
  v5 = (v4 + 16) & ~v4;
  v6 = *(v2 + 64) + 7;
  v7 = (v6 + v5) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v4 + 16 + v8) & ~v4;
  v10 = (v6 + v9) & 0xFFFFFFFFFFFFFFF8;
  v3(v0 + v5, v1);
  v11 = *(v0 + v7);

  v12 = *(v0 + v8 + 8);

  v3(v0 + v9, v1);

  return MEMORY[0x2821FE8E8](v0, v10 + 8, v4 | 7);
}

uint64_t sub_20CE737F0()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20CE73828()
{
  v1 = sub_20CE92720();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  v6 = sub_20CE92EE0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = v3 | v8;
  v11 = (*(v7 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = *(v0 + 16);

  v13 = *(v0 + 32);

  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return MEMORY[0x2821FE8E8](v0, v11 + 8, v10 | 7);
}

uint64_t sub_20CE73990()
{
  v1 = sub_20CE92720();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  v6 = sub_20CE92EE0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = v3 | v8;
  v11 = (*(v7 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = *(v0 + 24);

  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return MEMORY[0x2821FE8E8](v0, ((v11 + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v10 | 7);
}

uint64_t sub_20CE73AFC()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20CE73B34()
{
  v19 = sub_20CE92720();
  v1 = *(v19 - 8);
  v2 = *(v1 + 80);
  v3 = *(v1 + 64);
  v17 = sub_20CE92EE0();
  v4 = *(v17 - 8);
  v5 = *(v4 + 80);
  v6 = (((v2 + 16) & ~v2) + v3 + v5) & ~v5;
  v20 = v2 | v5;
  v7 = (*(v4 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 23) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v9 + 15) & 0xFFFFFFFFFFFFFFF8;
  v16 = (v2 + v10 + 8) & ~v2;
  v18 = (v3 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = *(v1 + 8);
  v11(v0 + ((v2 + 16) & ~v2), v19);
  (*(v4 + 8))(v0 + v6, v17);

  v12 = *(v0 + v8 + 8);

  v13 = *(v0 + v9);

  v14 = *(v0 + v10);

  v11(v0 + v16, v19);

  return MEMORY[0x2821FE8E8](v0, v18 + 8, v20 | 7);
}

uint64_t sub_20CE73D1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_20CE8E598(0, &qword_281111FF8, MEMORY[0x277CE3BA0], MEMORY[0x277CDF468]);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    sub_20CE8E598(0, &qword_281111AE0, MEMORY[0x277CE3AF8], MEMORY[0x277CDF468]);
    v11 = v10;
    v12 = *(*(v10 - 8) + 48);
    v13 = a1 + *(a3 + 20);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_20CE73E6C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_20CE8E598(0, &qword_281111FF8, MEMORY[0x277CE3BA0], MEMORY[0x277CDF468]);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    sub_20CE8E598(0, &qword_281111AE0, MEMORY[0x277CE3AF8], MEMORY[0x277CDF468]);
    v13 = v12;
    v14 = *(*(v12 - 8) + 56);
    v15 = a1 + *(a4 + 20);

    return v14(v15, a2, a2, v13);
  }
}

uint64_t sub_20CE73FCC(uint64_t a1, uint64_t a2)
{
  sub_20CE8DEC8();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20CE74034()
{
  sub_20CE8F664();
  sub_20CE8F554();
  sub_20CE8F484();
  sub_20CE8F3F0();
  sub_20CE8F7AC(&qword_281111850, sub_20CE8F3F0);
  sub_20CE835D8();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_20CE742D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_20CE90B08(0, &qword_281111FF8, MEMORY[0x277CE3BA0], MEMORY[0x277CDF468]);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = type metadata accessor for MenstrualCyclesWidgetEntry(0);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_20CE743F4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_20CE90B08(0, &qword_281111FF8, MEMORY[0x277CE3BA0], MEMORY[0x277CDF468]);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = type metadata accessor for MenstrualCyclesWidgetEntry(0);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t getEnumTagSinglePayload for MenstrualCyclesWidget(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for MenstrualCyclesWidget(_WORD *result, int a2, int a3)
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

unint64_t sub_20CE74630()
{
  result = qword_281111F08;
  if (!qword_281111F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281111F08);
  }

  return result;
}

id sub_20CE74684()
{
  type metadata accessor for MenstrualCyclesWidgetTimelineGenerator();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass_];
  qword_2811123B0 = result;
  return result;
}

uint64_t MenstrualCyclesWidgetEntry.date.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_20CE92720();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t MenstrualCyclesWidgetEntry.dayIndex.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MenstrualCyclesWidgetEntry(0) + 20);
  v4 = sub_20CE92EE0();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t MenstrualCyclesWidgetEntry.dayIndex.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for MenstrualCyclesWidgetEntry(0) + 20);
  v4 = sub_20CE92EE0();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t sub_20CE74918(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *MenstrualCyclesWidgetEntry.projection.getter()
{
  v1 = *(v0 + *(type metadata accessor for MenstrualCyclesWidgetEntry(0) + 28));
  v2 = v1;
  return v1;
}

uint64_t MenstrualCyclesWidgetEntry.relevance.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for MenstrualCyclesWidgetEntry(0);
  v4 = (v1 + *(v3 + 32));
  if (v4[1] & 1) != 0 || (v5 = (v1 + *(v3 + 36)), (v5[1]))
  {
    v6 = 1;
  }

  else
  {
    v7 = *v5;
    v8 = *v4;
    sub_20CE92FE0();
    v6 = 0;
  }

  v9 = sub_20CE93010();
  v10 = *(*(v9 - 8) + 56);

  return v10(a1, v6, 1, v9);
}

uint64_t MenstrualCyclesWidgetEntry.lastMenstrualFlowDayIndex.getter()
{
  v1 = (v0 + *(type metadata accessor for MenstrualCyclesWidgetEntry(0) + 40));
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

BOOL MenstrualCyclesWidgetEntry.hasFlow.getter()
{
  v1 = type metadata accessor for MenstrualCyclesWidgetEntry(0);
  v2 = (v0 + *(v1 + 40));
  if (v2[1])
  {
    return 0;
  }

  v4 = *v2;
  v5 = v0 + *(v1 + 20);
  return v4 == sub_20CE92ED0();
}

uint64_t MenstrualCyclesWidgetEntry.init(date:dayIndex:pregnancyState:projection:relevance:lastMenstrualFlowDayIndex:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, int a7@<W6>, uint64_t a8@<X8>)
{
  v54 = a7;
  v53 = a6;
  v14 = MEMORY[0x277CE3E20];
  sub_20CE74F38(0, &qword_281111FD0, MEMORY[0x277CE3E20]);
  v16 = *(*(v15 - 8) + 64);
  v17 = (MEMORY[0x28223BE20])();
  v51 = &v45 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v20 = &v45 - v19;
  v21 = sub_20CE92720();
  v47 = *(v21 - 8);
  v48 = v21;
  v22 = *(v47 + 16);
  v52 = a1;
  v22(a8, a1);
  v23 = type metadata accessor for MenstrualCyclesWidgetEntry(0);
  v24 = v23[5];
  v25 = sub_20CE92EE0();
  v26 = *(v25 - 8);
  v27 = *(v26 + 16);
  v50 = a2;
  v46 = v25;
  v27(a8 + v24, a2);
  v28 = a8 + v23[6];
  v49 = a3;
  sub_20CE761D8(a3, v28, &qword_281111CC0, type metadata accessor for MenstrualCyclesWidgetEntry.State);
  *(a8 + v23[7]) = a4;
  v29 = a5;
  sub_20CE761D8(a5, v20, &qword_281111FD0, v14);
  v30 = sub_20CE93010();
  v31 = *(v30 - 8);
  v32 = *(v31 + 48);
  v33 = v32(v20, 1, v30);
  if (v33 == 1)
  {
    sub_20CE7617C(v20, &qword_281111FD0, MEMORY[0x277CE3E20]);
    v34 = 0;
  }

  else
  {
    sub_20CE92FF0();
    v34 = v35;
    (*(v31 + 8))(v20, v30);
  }

  v36 = a8 + v23[8];
  *v36 = v34;
  *(v36 + 4) = v33 == 1;
  v37 = v51;
  sub_20CE761D8(v29, v51, &qword_281111FD0, MEMORY[0x277CE3E20]);
  v38 = v32(v37, 1, v30);
  if (v38 == 1)
  {
    v39 = MEMORY[0x277CE3E20];
    sub_20CE7617C(v29, &qword_281111FD0, MEMORY[0x277CE3E20]);
    sub_20CE7617C(v49, &qword_281111CC0, type metadata accessor for MenstrualCyclesWidgetEntry.State);
    (*(v26 + 8))(v50, v46);
    (*(v47 + 8))(v52, v48);
    result = sub_20CE7617C(v37, &qword_281111FD0, v39);
    v41 = 0;
  }

  else
  {
    sub_20CE93000();
    v41 = v42;
    sub_20CE7617C(v29, &qword_281111FD0, MEMORY[0x277CE3E20]);
    sub_20CE7617C(v49, &qword_281111CC0, type metadata accessor for MenstrualCyclesWidgetEntry.State);
    (*(v26 + 8))(v50, v46);
    (*(v47 + 8))(v52, v48);
    result = (*(v31 + 8))(v37, v30);
  }

  v43 = a8 + v23[9];
  *v43 = v41;
  *(v43 + 8) = v38 == 1;
  v44 = a8 + v23[10];
  *v44 = v53;
  *(v44 + 8) = v54 & 1;
  return result;
}

void sub_20CE74F38(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_20CE93210();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_20CE74F8C@<X0>(void *a1@<X0>, double *a2@<X8>)
{
  v90 = sub_20CE92750();
  v88 = *(v90 - 8);
  v4 = *(v88 + 64);
  MEMORY[0x28223BE20](v90);
  v86 = v78 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_20CE92810();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v84 = v78 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_20CE92EE0();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v85 = v78 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = sub_20CE92870();
  v89 = *(v91 - 8);
  v12 = *(v89 + 64);
  MEMORY[0x28223BE20](v91);
  v87 = v78 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = sub_20CE925B0();
  v14 = *(v94 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v94);
  v92 = v78 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_20CE92720();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x28223BE20](v17);
  v83 = v78 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v20);
  v93 = v78 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v26 = v78 - v25;
  MEMORY[0x28223BE20](v24);
  v95 = v78 - v27;
  sub_20CE74F38(0, &qword_281112028, MEMORY[0x277CC88A8]);
  v29 = *(*(v28 - 8) + 64);
  v30 = MEMORY[0x28223BE20](v28 - 8);
  v32 = v78 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v34 = v78 - v33;
  sub_20CE74F38(0, &qword_281111FB0, MEMORY[0x277CC9578]);
  v36 = *(*(v35 - 8) + 64);
  v37 = MEMORY[0x28223BE20](v35 - 8);
  v39 = v78 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v37);
  v41 = v78 - v40;
  if ([a1 state] == 1)
  {
    v42 = [a1 sample];
    if (v42)
    {
      v82 = a2;
      v81 = v42;
      v43 = [a1 estimatedDueDate];
      if (v43)
      {
        v44 = v43;
        sub_20CE92700();

        (*(v18 + 56))(v41, 0, 1, v17);
      }

      else
      {
        (*(v18 + 56))(v41, 1, 1, v17);
      }

      v48 = [a1 pregnancyDuration];
      if (v48)
      {
        v49 = v48;
        sub_20CE92580();

        v50 = 0;
      }

      else
      {
        v50 = 1;
      }

      v51 = v14;
      v52 = *(v14 + 56);
      v53 = v94;
      v52(v34, v50, 1, v94);
      sub_20CE761D8(v41, v39, &qword_281111FB0, MEMORY[0x277CC9578]);
      if ((*(v18 + 48))(v39, 1, v17) == 1)
      {
        v54 = &qword_281111FB0;
        v55 = MEMORY[0x277CC9578];
        v56 = v39;
      }

      else
      {
        (*(v18 + 32))(v95, v39, v17);
        sub_20CE761D8(v34, v32, &qword_281112028, MEMORY[0x277CC88A8]);
        if ((*(v51 + 48))(v32, 1, v53) != 1)
        {
          v80 = v51;
          (*(v51 + 32))(v92, v32, v53);
          v81 = v81;
          v59 = [v81 startDate];
          sub_20CE92700();

          sub_20CE926D0();
          v61 = v60;
          v62 = *(v18 + 8);
          v78[1] = v18 + 8;
          v79 = v62;
          v62(v26, v17);
          sub_20CE925A0();
          v64 = v63 / v61;
          sub_20CE92710();
          v78[0] = *(v18 + 16);
          (v78[0])(v93, v26, v17);
          v65 = v88;
          v66 = v86;
          v67 = v90;
          (*(v88 + 104))(v86, *MEMORY[0x277CC9830], v90);
          sub_20CE92760();
          (*(v65 + 8))(v66, v67);
          v68 = v93;
          sub_20CE92EC0();
          v69 = v68;
          v70 = v78[0];
          (v78[0])(v69, v95, v17);
          v70(v83, v26, v17);
          v71 = v81;
          v72 = v87;
          sub_20CE92830();
          v73 = v79;
          v79(v26, v17);
          (*(v80 + 8))(v92, v94);
          v73(v95, v17);
          sub_20CE76084();
          v75 = v74;
          v76 = *(v74 + 64);
          v77 = v82;
          *v82 = v71;
          v77[1] = v64;
          (*(v89 + 32))(v77 + v76, v72, v91);
          (*(*(v75 - 8) + 56))(v77, 0, 1, v75);

          goto LABEL_18;
        }

        (*(v18 + 8))(v95, v17);
        v54 = &qword_281112028;
        v55 = MEMORY[0x277CC88A8];
        v56 = v32;
      }

      sub_20CE7617C(v56, v54, v55);
      sub_20CE76084();
      (*(*(v57 - 8) + 56))(v82, 1, 1, v57);

      v58 = v81;
LABEL_18:
      sub_20CE7617C(v34, &qword_281112028, MEMORY[0x277CC88A8]);
      return sub_20CE7617C(v41, &qword_281111FB0, MEMORY[0x277CC9578]);
    }
  }

  sub_20CE76084();
  v46 = *(*(v45 - 8) + 56);

  return v46(a2, 1, 1, v45);
}

uint64_t sub_20CE7595C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_20CE92720();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_20CE759C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = (v2 + *(a1 + 32));
  if (v4[1] & 1) != 0 || (v5 = (v2 + *(a1 + 36)), (v5[1]))
  {
    v6 = 1;
  }

  else
  {
    v7 = *v5;
    v8 = *v4;
    sub_20CE92FE0();
    v6 = 0;
  }

  v9 = sub_20CE93010();
  v10 = *(*(v9 - 8) + 56);

  return v10(a2, v6, 1, v9);
}

uint64_t _s29HealthMenstrualCyclesWidgetUI0bcD5EntryV5StateO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_20CE92870();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v43 = &v40 - v10;
  v11 = type metadata accessor for MenstrualCyclesWidgetEntry.State(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = (&v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_20CE76244();
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15 - 8);
  v19 = &v40 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = &v19[*(v17 + 56)];
  sub_20CE762A8(a1, v19);
  sub_20CE762A8(a2, v20);
  sub_20CE76084();
  v22 = v21;
  v23 = *(*(v21 - 8) + 48);
  if (v23(v19, 1, v21) == 1)
  {
    v24 = 1;
    v25 = v23(v20, 1, v22);
    v26 = type metadata accessor for MenstrualCyclesWidgetEntry.State;
    if (v25 == 1)
    {
      goto LABEL_14;
    }

    goto LABEL_6;
  }

  v42 = v5;
  sub_20CE762A8(v19, v14);
  v27 = *v14;
  v28 = v14[1];
  v29 = *(v22 + 64);
  if (v23(v20, 1, v22) != 1)
  {
    v41 = *v20;
    v30 = *(v20 + 8);
    v31 = v42;
    v32 = *(v42 + 32);
    v32(v43, v14 + v29, v4);
    v32(v9, (v20 + v29), v4);
    sub_20CE7636C(0, &qword_2811117F8, 0x277D82BB8);
    v33 = v41;
    v34 = sub_20CE931F0();

    if (v34)
    {
      if (v28 == v30)
      {
        v35 = v43;
        v24 = MEMORY[0x20F316440](v43, v9);
        v36 = *(v42 + 8);
        v36(v9, v4);
        v36(v35, v4);
LABEL_13:
        v26 = type metadata accessor for MenstrualCyclesWidgetEntry.State;
        goto LABEL_14;
      }

      v38 = *(v42 + 8);
      v38(v9, v4);
      v38(v43, v4);
    }

    else
    {
      v37 = *(v31 + 8);
      v37(v9, v4);
      v37(v43, v4);
    }

    v24 = 0;
    goto LABEL_13;
  }

  (*(v42 + 8))(v14 + v29, v4);

LABEL_6:
  v24 = 0;
  v26 = sub_20CE76244;
LABEL_14:
  sub_20CE7630C(v19, v26);
  return v24 & 1;
}

void sub_20CE75E74()
{
  sub_20CE92720();
  if (v0 <= 0x3F)
  {
    sub_20CE92EE0();
    if (v1 <= 0x3F)
    {
      sub_20CE74F38(319, &qword_281111CC0, type metadata accessor for MenstrualCyclesWidgetEntry.State);
      if (v2 <= 0x3F)
      {
        sub_20CE75FBC();
        if (v3 <= 0x3F)
        {
          sub_20CE76024(319, &qword_281111828);
          if (v4 <= 0x3F)
          {
            sub_20CE76024(319, &qword_281111830);
            if (v5 <= 0x3F)
            {
              sub_20CE76024(319, &qword_281111820);
              if (v6 <= 0x3F)
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

void sub_20CE75FBC()
{
  if (!qword_281111818)
  {
    sub_20CE7636C(255, &qword_281111FC8, 0x277D119D0);
    v0 = sub_20CE93210();
    if (!v1)
    {
      atomic_store(v0, &qword_281111818);
    }
  }
}

void sub_20CE76024(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_20CE93210();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void sub_20CE76084()
{
  if (!qword_281111810)
  {
    sub_20CE7636C(255, &qword_281111FC0, 0x277CCD0B0);
    sub_20CE92870();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_281111810);
    }
  }
}

uint64_t sub_20CE76124()
{
  sub_20CE76084();
  v1 = v0;
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

uint64_t sub_20CE7617C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_20CE74F38(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_20CE761D8(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t))
{
  sub_20CE74F38(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

void sub_20CE76244()
{
  if (!qword_27C818160)
  {
    type metadata accessor for MenstrualCyclesWidgetEntry.State(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27C818160);
    }
  }
}

uint64_t sub_20CE762A8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MenstrualCyclesWidgetEntry.State(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20CE7630C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_20CE7636C(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_20CE763B4()
{
  v0 = sub_20CE928F0();
  __swift_allocate_value_buffer(v0, qword_2811123D0);
  __swift_project_value_buffer(v0, qword_2811123D0);
  return sub_20CE928E0();
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

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t MenstrualCyclesWidgetTimelineProvider.init()@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_20CE92750();
  v3 = *(v2 - 8);
  v4 = v3[8];
  MEMORY[0x28223BE20](v2);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [objc_allocWithZone(MEMORY[0x277CCD4D8]) init];
  v8 = type metadata accessor for MenstrualCyclesWidgetTimelineGenerator();
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  v11 = swift_allocObject();
  sub_20CE927F0();
  v12 = *MEMORY[0x277CC9830];
  v13 = v3[13];
  v13(v6, v12, v2);
  sub_20CE92760();
  v14 = v3[1];
  v14(v6, v2);
  *(v11 + 16) = v7;
  *(v11 + 24) = [objc_allocWithZone(MEMORY[0x277D11A10]) initWithHealthStore_];
  *a1 = v11;
  LODWORD(v7) = *(type metadata accessor for MenstrualCyclesWidgetTimelineProvider() + 24);
  v13(v6, v12, v2);
  sub_20CE92760();
  return (v14)(v6, v2);
}

uint64_t MenstrualCyclesWidgetTimelineProvider.placeholder(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v108 = a2;
  v5 = MEMORY[0x277D83D88];
  sub_20CE7C1FC(0, &qword_281111FD0, MEMORY[0x277CE3E20], MEMORY[0x277D83D88]);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v106 = &v91 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v91 - v11;
  MEMORY[0x28223BE20](v10);
  v103 = &v91 - v13;
  sub_20CE7C1FC(0, &qword_281111CC0, type metadata accessor for MenstrualCyclesWidgetEntry.State, v5);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v102 = &v91 - v16;
  v17 = sub_20CE92810();
  v94 = *(v17 - 8);
  v95 = v17;
  v18 = *(v94 + 64);
  MEMORY[0x28223BE20](v17);
  v93 = &v91 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_20CE92EE0();
  v104 = *(v20 - 8);
  v105 = v20;
  v21 = v104[8];
  v22 = MEMORY[0x28223BE20](v20);
  v107 = &v91 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v99 = &v91 - v24;
  v25 = sub_20CE92720();
  v100 = *(v25 - 8);
  v101 = v25;
  v26 = v100[8];
  v27 = MEMORY[0x28223BE20](v25);
  v97 = &v91 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x28223BE20](v27);
  v92 = &v91 - v30;
  MEMORY[0x28223BE20](v29);
  v98 = &v91 - v31;
  v32 = sub_20CE93030();
  v33 = *(v32 - 8);
  v34 = *(v33 + 64);
  v35 = MEMORY[0x28223BE20](v32);
  v37 = &v91 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35);
  v39 = &v91 - v38;
  if (qword_281111B08 != -1)
  {
    swift_once();
  }

  v96 = v12;
  v40 = sub_20CE92970();
  __swift_project_value_buffer(v40, qword_2811123B8);
  v41 = *(v33 + 16);
  v41(v39, a1, v32);
  v42 = sub_20CE92950();
  v43 = sub_20CE931A0();
  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v91 = v3;
    v46 = v45;
    v109[0] = v45;
    *v44 = 136446466;
    *(v44 + 4) = sub_20CE7C260(0xD000000000000025, 0x800000020CE93A50, v109);
    *(v44 + 12) = 2082;
    v41(v37, v39, v32);
    v47 = sub_20CE930D0();
    v49 = v48;
    (*(v33 + 8))(v39, v32);
    v50 = sub_20CE7C260(v47, v49, v109);

    *(v44 + 14) = v50;
    _os_log_impl(&dword_20CE71000, v42, v43, "[%{public}s] Returning placeholder for context: %{public}s", v44, 0x16u);
    swift_arrayDestroy();
    v51 = v46;
    v3 = v91;
    MEMORY[0x20F317370](v51, -1, -1);
    MEMORY[0x20F317370](v44, -1, -1);
  }

  else
  {

    (*(v33 + 8))(v39, v32);
  }

  v52 = v98;
  sub_20CE92710();
  v53 = v101;
  v54 = v100[2];
  v54(v92, v52, v101);
  v91 = v54;
  v55 = type metadata accessor for MenstrualCyclesWidgetTimelineProvider();
  (*(v94 + 16))(v93, &v3[*(v55 + 24)], v95);
  v56 = v99;
  sub_20CE92EC0();
  v57 = v97;
  v54(v97, v52, v53);
  v58 = v105;
  v95 = v104[2];
  v95(v107, v56, v105);
  v59 = type metadata accessor for MenstrualCyclesWidgetEntry.State(0);
  v60 = v102;
  (*(*(v59 - 8) + 56))(v102, 1, 1, v59);
  v61 = sub_20CE93010();
  v62 = *(v61 - 8);
  v63 = v103;
  (*(v62 + 56))(v103, 1, 1, v61);
  v64 = v108;
  (v91)(v108, v57, v53);
  v65 = type metadata accessor for MenstrualCyclesWidgetEntry(0);
  v95((v64 + v65[5]), v107, v58);
  sub_20CE7C96C(v60, v64 + v65[6], &qword_281111CC0, type metadata accessor for MenstrualCyclesWidgetEntry.State);
  *(v64 + v65[7]) = 0;
  v66 = v96;
  sub_20CE7C96C(v63, v96, &qword_281111FD0, MEMORY[0x277CE3E20]);
  v67 = *(v62 + 48);
  v68 = v67(v66, 1, v61);
  if (v68 == 1)
  {
    sub_20CE7C8FC(v66, &qword_281111FD0, MEMORY[0x277CE3E20]);
    v69 = 0;
  }

  else
  {
    sub_20CE92FF0();
    v69 = v70;
    (*(v62 + 8))(v66, v61);
  }

  v71 = v108 + v65[8];
  *v71 = v69;
  *(v71 + 4) = v68 == 1;
  v72 = v103;
  v73 = v106;
  sub_20CE7C96C(v103, v106, &qword_281111FD0, MEMORY[0x277CE3E20]);
  v74 = v67(v73, 1, v61);
  if (v74 == 1)
  {
    v75 = MEMORY[0x277CE3E20];
    sub_20CE7C8FC(v72, &qword_281111FD0, MEMORY[0x277CE3E20]);
    sub_20CE7C8FC(v102, &qword_281111CC0, type metadata accessor for MenstrualCyclesWidgetEntry.State);
    v76 = v105;
    v77 = v104[1];
    v77(v107, v105);
    v78 = v101;
    v79 = v100[1];
    v79(v97, v101);
    v77(v99, v76);
    v79(v98, v78);
    result = sub_20CE7C8FC(v106, &qword_281111FD0, v75);
    v81 = 0;
  }

  else
  {
    sub_20CE93000();
    v81 = v82;
    sub_20CE7C8FC(v72, &qword_281111FD0, MEMORY[0x277CE3E20]);
    sub_20CE7C8FC(v102, &qword_281111CC0, type metadata accessor for MenstrualCyclesWidgetEntry.State);
    v83 = v104[1];
    v84 = v62;
    v85 = v105;
    v83(v107, v105);
    v86 = v101;
    v87 = v100[1];
    v87(v97, v101);
    v83(v99, v85);
    v87(v98, v86);
    result = (*(v84 + 8))(v106, v61);
  }

  v88 = v108;
  v89 = v108 + v65[9];
  *v89 = v81;
  *(v89 + 8) = v74 == 1;
  v90 = v88 + v65[10];
  *v90 = 0;
  *(v90 + 8) = 1;
  return result;
}

uint64_t MenstrualCyclesWidgetTimelineProvider.getSnapshot(in:completion:)(void (*a1)(char *, char *, uint64_t), void (*a2)(uint64_t), uint64_t a3)
{
  v117 = a2;
  v5 = MEMORY[0x277D83D88];
  sub_20CE7C1FC(0, &qword_281111FD0, MEMORY[0x277CE3E20], MEMORY[0x277D83D88]);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v108 = &v103 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v105 = &v103 - v11;
  MEMORY[0x28223BE20](v10);
  v106 = &v103 - v12;
  sub_20CE7C1FC(0, &qword_281111CC0, type metadata accessor for MenstrualCyclesWidgetEntry.State, v5);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v116 = &v103 - v15;
  v125 = type metadata accessor for MenstrualCyclesWidgetEntry(0);
  v16 = *(*(v125 - 1) + 64);
  v17 = MEMORY[0x28223BE20](v125);
  v124 = &v103 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v107 = &v103 - v19;
  v130 = sub_20CE92F30();
  v127 = *(v130 - 8);
  v20 = *(v127 + 64);
  v21 = MEMORY[0x28223BE20](v130);
  v104 = &v103 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v123 = &v103 - v23;
  v112 = sub_20CE92810();
  v111 = *(v112 - 8);
  v24 = *(v111 + 64);
  MEMORY[0x28223BE20](v112);
  v110 = &v103 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v126 = sub_20CE92EE0();
  v26 = *(v126 - 8);
  v27 = *(v26 + 64);
  v28 = MEMORY[0x28223BE20](v126);
  v114 = &v103 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v122 = &v103 - v30;
  v31 = sub_20CE92720();
  v128 = *(v31 - 8);
  v129 = v31;
  v32 = *(v128 + 64);
  v33 = MEMORY[0x28223BE20](v31);
  v120 = &v103 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = MEMORY[0x28223BE20](v33);
  v109 = &v103 - v36;
  MEMORY[0x28223BE20](v35);
  v121 = &v103 - v37;
  v38 = sub_20CE93030();
  v39 = *(v38 - 8);
  v40 = *(v39 + 64);
  v41 = MEMORY[0x28223BE20](v38);
  v43 = &v103 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v41);
  v45 = &v103 - v44;
  if (qword_281111B08 != -1)
  {
    swift_once();
  }

  v46 = sub_20CE92970();
  __swift_project_value_buffer(v46, qword_2811123B8);
  v47 = *(v39 + 16);
  v119 = a1;
  v47(v45, a1, v38);
  v48 = sub_20CE92950();
  v49 = sub_20CE931A0();
  v50 = os_log_type_enabled(v48, v49);
  v118 = a3;
  v115 = v26;
  if (v50)
  {
    v51 = swift_slowAlloc();
    v52 = swift_slowAlloc();
    v131[0] = v52;
    *v51 = 136446466;
    *(v51 + 4) = sub_20CE7C260(0xD000000000000025, 0x800000020CE93A50, v131);
    *(v51 + 12) = 2082;
    v47(v43, v45, v38);
    v53 = sub_20CE930D0();
    v55 = v54;
    (*(v39 + 8))(v45, v38);
    v56 = sub_20CE7C260(v53, v55, v131);

    *(v51 + 14) = v56;
    _os_log_impl(&dword_20CE71000, v48, v49, "[%{public}s] Requesting snapshot for context: %{public}s", v51, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F317370](v52, -1, -1);
    v57 = v51;
    v26 = v115;
    MEMORY[0x20F317370](v57, -1, -1);
  }

  else
  {

    (*(v39 + 8))(v45, v38);
  }

  v58 = v121;
  sub_20CE92710();
  v59 = v129;
  v60 = *(v128 + 16);
  v60(v109, v58, v129);
  v61 = type metadata accessor for MenstrualCyclesWidgetTimelineProvider();
  v62 = v113;
  (*(v111 + 16))(v110, v113 + *(v61 + 24), v112);
  v63 = v122;
  sub_20CE92EC0();
  v64 = v123;
  sub_20CE93020();
  v65 = v127;
  v66 = (*(v127 + 88))(v64, v130);
  if (v66 == *MEMORY[0x277CE3B68] || v66 == *MEMORY[0x277CE3B98])
  {
    v81 = *v62;
    v82 = v104;
    sub_20CE93020();
    v83 = swift_allocObject();
    *(v83 + 16) = v117;
    *(v83 + 24) = v118;

    sub_20CE88D48(v58, v82, sub_20CE7C838, v83);

    (*(v65 + 8))(v82, v130);
    (*(v26 + 8))(v63, v126);
    return (*(v128 + 8))(v58, v59);
  }

  else
  {
    v60(v120, v58, v59);
    v119 = *(v26 + 16);
    v67 = v114;
    v68 = v126;
    v119(v114, v63, v126);
    v69 = type metadata accessor for MenstrualCyclesWidgetEntry.State(0);
    v70 = v116;
    (*(*(v69 - 8) + 56))(v116, 1, 1, v69);
    v71 = sub_20CE93010();
    v72 = *(v71 - 8);
    v73 = v106;
    (*(v72 + 56))(v106, 1, 1, v71);
    v74 = v124;
    v60(v124, v120, v129);
    v75 = v125;
    v119(&v74[v125[5]], v67, v68);
    sub_20CE7C96C(v70, &v74[v75[6]], &qword_281111CC0, type metadata accessor for MenstrualCyclesWidgetEntry.State);
    *&v74[v75[7]] = 0;
    v76 = v73;
    v77 = v105;
    sub_20CE7C96C(v73, v105, &qword_281111FD0, MEMORY[0x277CE3E20]);
    v78 = *(v72 + 48);
    v79 = v78(v77, 1, v71);
    if (v79 == 1)
    {
      sub_20CE7C8FC(v77, &qword_281111FD0, MEMORY[0x277CE3E20]);
      v80 = 0;
    }

    else
    {
      sub_20CE92FF0();
      v80 = v85;
      (*(v72 + 8))(v77, v71);
    }

    v86 = v108;
    v87 = &v124[v125[8]];
    *v87 = v80;
    v87[4] = v79 == 1;
    sub_20CE7C96C(v73, v86, &qword_281111FD0, MEMORY[0x277CE3E20]);
    v88 = v78(v86, 1, v71);
    v89 = v115;
    if (v88 == 1)
    {
      v90 = v86;
      v91 = MEMORY[0x277CE3E20];
      sub_20CE7C8FC(v76, &qword_281111FD0, MEMORY[0x277CE3E20]);
      sub_20CE7C8FC(v116, &qword_281111CC0, type metadata accessor for MenstrualCyclesWidgetEntry.State);
      v92 = *(v89 + 8);
      v93 = v126;
      v92(v114, v126);
      v94 = v129;
      v95 = *(v128 + 8);
      v95(v120, v129);
      sub_20CE7C8FC(v90, &qword_281111FD0, v91);
      v96 = 0;
    }

    else
    {
      sub_20CE93000();
      v96 = v97;
      sub_20CE7C8FC(v76, &qword_281111FD0, MEMORY[0x277CE3E20]);
      sub_20CE7C8FC(v116, &qword_281111CC0, type metadata accessor for MenstrualCyclesWidgetEntry.State);
      v92 = *(v89 + 8);
      v93 = v126;
      v92(v114, v126);
      v94 = v129;
      v95 = *(v128 + 8);
      v95(v120, v129);
      (*(v72 + 8))(v86, v71);
    }

    v98 = v124;
    v99 = v125;
    v100 = &v124[v125[9]];
    *v100 = v96;
    v100[8] = v88 == 1;
    v101 = v98 + v99[10];
    *v101 = 0;
    *(v101 + 8) = 1;
    v102 = v107;
    sub_20CE7CAE4(v98, v107, type metadata accessor for MenstrualCyclesWidgetEntry);
    v117(v102);
    sub_20CE7CBB4(v102, type metadata accessor for MenstrualCyclesWidgetEntry);
    v92(v122, v93);
    v95(v121, v94);
    return (*(v127 + 8))(v123, v130);
  }
}

uint64_t sub_20CE77E40(uint64_t a1, uint64_t (*a2)(void))
{
  sub_20CE7C1FC(0, &qword_281111FD0, MEMORY[0x277CE3E20], MEMORY[0x277D83D88]);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v28 - v6;
  v8 = type metadata accessor for MenstrualCyclesWidgetEntry(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281111B08 != -1)
  {
    swift_once();
  }

  v12 = sub_20CE92970();
  __swift_project_value_buffer(v12, qword_2811123B8);
  sub_20CE7CB4C(a1, v11, type metadata accessor for MenstrualCyclesWidgetEntry);
  v13 = sub_20CE92950();
  v14 = sub_20CE931A0();
  if (os_log_type_enabled(v13, v14))
  {
    v28 = a2;
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v29 = v16;
    *v15 = 136446466;
    *(v15 + 4) = sub_20CE7C260(0xD000000000000025, 0x800000020CE93A50, &v29);
    *(v15 + 12) = 2080;
    v17 = &v11[*(v8 + 32)];
    if (v17[4] & 1) != 0 || (v18 = &v11[*(v8 + 36)], (v18[8]))
    {
      v19 = 1;
    }

    else
    {
      v20 = *v18;
      v21 = *v17;
      sub_20CE92FE0();
      v19 = 0;
    }

    v22 = sub_20CE93010();
    (*(*(v22 - 8) + 56))(v7, v19, 1, v22);
    v23 = sub_20CE930D0();
    v25 = v24;
    sub_20CE7CBB4(v11, type metadata accessor for MenstrualCyclesWidgetEntry);
    v26 = sub_20CE7C260(v23, v25, &v29);

    *(v15 + 14) = v26;
    _os_log_impl(&dword_20CE71000, v13, v14, "[%{public}s] Submitting entry with relevance: %s", v15, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F317370](v16, -1, -1);
    MEMORY[0x20F317370](v15, -1, -1);

    a2 = v28;
  }

  else
  {

    sub_20CE7CBB4(v11, type metadata accessor for MenstrualCyclesWidgetEntry);
  }

  return a2(a1);
}

uint64_t MenstrualCyclesWidgetTimelineProvider.getTimeline(in:completion:)(uint64_t a1, void (*a2)(char *), void (*a3)(char *))
{
  v167 = a3;
  v166 = a2;
  v4 = sub_20CE92FD0();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v162 = &v146 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20CE7C840();
  v164 = v7;
  v163 = *(v7 - 8);
  v8 = *(v163 + 64);
  MEMORY[0x28223BE20](v7);
  v161 = &v146 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x277D83D88];
  sub_20CE7C1FC(0, &qword_281111FD0, MEMORY[0x277CE3E20], MEMORY[0x277D83D88]);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v158 = &v146 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v156 = &v146 - v16;
  MEMORY[0x28223BE20](v15);
  v157 = &v146 - v17;
  sub_20CE7C1FC(0, &qword_281111CC0, type metadata accessor for MenstrualCyclesWidgetEntry.State, v10);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v177 = &v146 - v20;
  v178 = type metadata accessor for MenstrualCyclesWidgetEntry(0);
  v159 = *(v178 - 8);
  v21 = *(v159 + 64);
  v22 = MEMORY[0x28223BE20](v178);
  v182 = &v146 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v160 = &v146 - v24;
  v25 = sub_20CE92F30();
  v184 = *(v25 - 8);
  v185 = v25;
  v26 = *(v184 + 64);
  MEMORY[0x28223BE20](v25);
  v183 = &v146 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v174 = sub_20CE92800();
  v172 = *(v174 - 8);
  v28 = *(v172 + 64);
  MEMORY[0x28223BE20](v174);
  v171 = &v146 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20CE7C1FC(0, &qword_281111FB0, MEMORY[0x277CC9578], v10);
  v31 = *(*(v30 - 8) + 64);
  v32 = MEMORY[0x28223BE20](v30 - 8);
  v155 = &v146 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = MEMORY[0x28223BE20](v32);
  v173 = &v146 - v35;
  MEMORY[0x28223BE20](v34);
  v187 = &v146 - v36;
  v37 = sub_20CE92810();
  v170 = *(v37 - 8);
  v38 = *(v170 + 64);
  MEMORY[0x28223BE20](v37);
  v169 = &v146 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_20CE92EE0();
  v181 = *(v40 - 8);
  v41 = *(v181 + 64);
  v42 = MEMORY[0x28223BE20](v40);
  v180 = &v146 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v42);
  v189 = &v146 - v44;
  v190 = sub_20CE92720();
  v45 = *(v190 - 8);
  v46 = *(v45 + 64);
  v47 = MEMORY[0x28223BE20](v190);
  v175 = &v146 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = MEMORY[0x28223BE20](v47);
  v154 = &v146 - v50;
  v51 = MEMORY[0x28223BE20](v49);
  v168 = &v146 - v52;
  MEMORY[0x28223BE20](v51);
  v188 = &v146 - v53;
  v54 = sub_20CE93030();
  v55 = *(v54 - 8);
  v56 = *(v55 + 64);
  v57 = MEMORY[0x28223BE20](v54);
  v165 = &v146 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  v149 = v58;
  MEMORY[0x28223BE20](v57);
  v60 = &v146 - v59;
  if (qword_281111B08 != -1)
  {
    swift_once();
  }

  v186 = v45;
  v61 = sub_20CE92970();
  __swift_project_value_buffer(v61, qword_2811123B8);
  v62 = *(v55 + 16);
  v62(v60, a1, v54);
  v63 = sub_20CE92950();
  v64 = sub_20CE931A0();
  v65 = os_log_type_enabled(v63, v64);
  v191 = v40;
  v176 = a1;
  v151 = v54;
  v150 = v55;
  v148 = v55 + 16;
  v147 = v62;
  if (v65)
  {
    v66 = swift_slowAlloc();
    v67 = swift_slowAlloc();
    v153 = v37;
    v68 = v67;
    v192 = v67;
    *v66 = 136446466;
    *(v66 + 4) = sub_20CE7C260(0xD000000000000025, 0x800000020CE93A50, &v192);
    *(v66 + 12) = 2082;
    v62(v165, v60, v54);
    v69 = sub_20CE930D0();
    v70 = v55;
    v71 = v69;
    v73 = v72;
    (*(v70 + 8))(v60, v54);
    v74 = sub_20CE7C260(v71, v73, &v192);

    *(v66 + 14) = v74;
    _os_log_impl(&dword_20CE71000, v63, v64, "[%{public}s] Requesting timeline for context: %{public}s", v66, 0x16u);
    swift_arrayDestroy();
    v75 = v68;
    v37 = v153;
    MEMORY[0x20F317370](v75, -1, -1);
    MEMORY[0x20F317370](v66, -1, -1);
  }

  else
  {

    (*(v55 + 8))(v60, v54);
  }

  v76 = v188;
  sub_20CE92710();
  v77 = v186;
  v78 = *(v186 + 16);
  v79 = v190;
  v153 = v186 + 16;
  v152 = v78;
  v78(v168, v76, v190);
  v80 = type metadata accessor for MenstrualCyclesWidgetTimelineProvider();
  (*(v170 + 16))(v169, v179 + *(v80 + 24), v37);
  sub_20CE92EC0();
  v81 = v187;
  v170 = *(v77 + 56);
  (v170)(v187, 1, 1, v79);
  v82 = v172;
  v83 = v171;
  v84 = v174;
  (*(v172 + 104))(v171, *MEMORY[0x277CC9998], v174);
  v85 = v173;
  sub_20CE927E0();
  (*(v82 + 8))(v83, v84);
  v86 = *(v77 + 48);
  if (v86(v85, 1, v79) == 1)
  {
    sub_20CE7C8FC(v85, &qword_281111FB0, MEMORY[0x277CC9578]);
  }

  else
  {
    sub_20CE7C8FC(v81, &qword_281111FB0, MEMORY[0x277CC9578]);
    (*(v77 + 32))(v81, v85, v79);
    (v170)(v81, 0, 1, v79);
  }

  v87 = v191;
  v88 = v183;
  v89 = v176;
  sub_20CE93020();
  v90 = (*(v184 + 88))(v88, v185);
  if (v90 == *MEMORY[0x277CE3B68] || v90 == *MEMORY[0x277CE3B98])
  {
    v109 = v187;
    v110 = v155;
    sub_20CE7C96C(v187, v155, &qword_281111FB0, MEMORY[0x277CC9578]);
    v111 = v190;
    if (v86(v110, 1, v190) == 1)
    {
      v112 = MEMORY[0x277CC9578];
      sub_20CE7C8FC(v109, &qword_281111FB0, MEMORY[0x277CC9578]);
      (*(v181 + 8))(v189, v87);
      (*(v186 + 8))(v188, v111);
      return sub_20CE7C8FC(v110, &qword_281111FB0, v112);
    }

    else
    {
      v114 = v186;
      (*(v186 + 32))(v154, v110, v111);
      v115 = *v179;
      v116 = v165;
      v117 = v151;
      v147(v165, v89, v151);
      v118 = v150;
      v119 = (*(v150 + 80) + 16) & ~*(v150 + 80);
      v120 = (v149 + v119 + 7) & 0xFFFFFFFFFFFFFFF8;
      v121 = swift_allocObject();
      (*(v118 + 32))(v121 + v119, v116, v117);
      v122 = (v121 + v120);
      v123 = v167;
      *v122 = v166;
      v122[1] = v123;

      v124 = v188;
      v125 = v154;
      sub_20CE83E7C(v188, v154, sub_20CE7C9EC, v121);

      v126 = *(v114 + 8);
      v126(v125, v111);
      sub_20CE7C8FC(v109, &qword_281111FB0, MEMORY[0x277CC9578]);
      (*(v181 + 8))(v189, v191);
      return (v126)(v124, v111);
    }
  }

  else
  {
    v91 = v175;
    v92 = v190;
    v93 = v152;
    v152(v175, v188, v190);
    v179 = *(v181 + 16);
    v179(v180, v189, v191);
    v94 = type metadata accessor for MenstrualCyclesWidgetEntry.State(0);
    v95 = v177;
    (*(*(v94 - 8) + 56))(v177, 1, 1, v94);
    v96 = sub_20CE93010();
    v97 = *(v96 - 8);
    v98 = v157;
    (*(v97 + 56))(v157, 1, 1, v96);
    v99 = v182;
    v100 = v91;
    v101 = v92;
    v102 = v98;
    v103 = v178;
    v93(v182, v100, v101);
    v104 = v191;
    v179(&v99[v103[5]], v180, v191);
    sub_20CE7C96C(v95, &v99[v103[6]], &qword_281111CC0, type metadata accessor for MenstrualCyclesWidgetEntry.State);
    *&v99[v103[7]] = 0;
    v105 = v156;
    sub_20CE7C96C(v102, v156, &qword_281111FD0, MEMORY[0x277CE3E20]);
    v106 = *(v97 + 48);
    v107 = v106(v105, 1, v96);
    if (v107 == 1)
    {
      sub_20CE7C8FC(v105, &qword_281111FD0, MEMORY[0x277CE3E20]);
      v108 = 0;
    }

    else
    {
      sub_20CE92FF0();
      v108 = v127;
      (*(v97 + 8))(v105, v96);
    }

    v128 = v158;
    v129 = &v182[v103[8]];
    *v129 = v108;
    v129[4] = v107 == 1;
    sub_20CE7C96C(v102, v128, &qword_281111FD0, MEMORY[0x277CE3E20]);
    v130 = v106(v128, 1, v96);
    if (v130 == 1)
    {
      v131 = v128;
      v132 = MEMORY[0x277CE3E20];
      sub_20CE7C8FC(v102, &qword_281111FD0, MEMORY[0x277CE3E20]);
      sub_20CE7C8FC(v177, &qword_281111CC0, type metadata accessor for MenstrualCyclesWidgetEntry.State);
      v181 = *(v181 + 8);
      (v181)(v180, v104);
      v133 = *(v186 + 8);
      v134 = v190;
      v133(v175, v190);
      sub_20CE7C8FC(v131, &qword_281111FD0, v132);
      v135 = 0;
    }

    else
    {
      sub_20CE93000();
      v135 = v136;
      sub_20CE7C8FC(v102, &qword_281111FD0, MEMORY[0x277CE3E20]);
      sub_20CE7C8FC(v177, &qword_281111CC0, type metadata accessor for MenstrualCyclesWidgetEntry.State);
      v181 = *(v181 + 8);
      (v181)(v180, v104);
      v133 = *(v186 + 8);
      v134 = v190;
      v133(v175, v190);
      (*(v97 + 8))(v128, v96);
    }

    v137 = v178;
    v138 = v182;
    v139 = &v182[*(v178 + 36)];
    *v139 = v135;
    v139[8] = v130 == 1;
    v140 = v138 + *(v137 + 40);
    *v140 = 0;
    *(v140 + 8) = 1;
    v141 = v160;
    sub_20CE7CAE4(v138, v160, type metadata accessor for MenstrualCyclesWidgetEntry);
    sub_20CE7C1FC(0, &qword_27C818178, type metadata accessor for MenstrualCyclesWidgetEntry, MEMORY[0x277D84560]);
    v142 = *(v159 + 72);
    v143 = (*(v159 + 80) + 32) & ~*(v159 + 80);
    v144 = swift_allocObject();
    *(v144 + 16) = xmmword_20CE93A50;
    sub_20CE7CB4C(v141, v144 + v143, type metadata accessor for MenstrualCyclesWidgetEntry);
    sub_20CE92FC0();
    sub_20CE7C8A4();
    v145 = v161;
    sub_20CE93040();
    v166(v145);
    (*(v163 + 8))(v145, v164);
    sub_20CE7CBB4(v141, type metadata accessor for MenstrualCyclesWidgetEntry);
    sub_20CE7C8FC(v187, &qword_281111FB0, MEMORY[0x277CC9578]);
    (v181)(v189, v191);
    v133(v188, v134);
    return (*(v184 + 8))(v183, v185);
  }
}

uint64_t sub_20CE7957C(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4)
{
  v39 = a1;
  v40 = a4;
  v6 = sub_20CE92FD0();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v36 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20CE7C840();
  v37 = *(v9 - 8);
  v38 = v9;
  v10 = *(v37 + 64);
  MEMORY[0x28223BE20](v9);
  v35 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_20CE93030();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v34 - v18;
  if (qword_281111B08 != -1)
  {
    swift_once();
  }

  v20 = sub_20CE92970();
  __swift_project_value_buffer(v20, qword_2811123B8);
  v21 = *(v13 + 16);
  v21(v19, a2, v12);
  v22 = sub_20CE92950();
  v23 = sub_20CE931A0();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v34 = a3;
    v26 = v25;
    v41 = v25;
    *v24 = 136446466;
    *(v24 + 4) = sub_20CE7C260(0xD000000000000025, 0x800000020CE93A50, &v41);
    *(v24 + 12) = 2082;
    v21(v17, v19, v12);
    v27 = sub_20CE930D0();
    v29 = v28;
    (*(v13 + 8))(v19, v12);
    v30 = sub_20CE7C260(v27, v29, &v41);

    *(v24 + 14) = v30;
    _os_log_impl(&dword_20CE71000, v22, v23, "[%{public}s] Returning timeline for context: %{public}s", v24, 0x16u);
    swift_arrayDestroy();
    v31 = v26;
    a3 = v34;
    MEMORY[0x20F317370](v31, -1, -1);
    MEMORY[0x20F317370](v24, -1, -1);
  }

  else
  {

    (*(v13 + 8))(v19, v12);
  }

  sub_20CE92FB0();
  type metadata accessor for MenstrualCyclesWidgetEntry(0);
  sub_20CE7C8A4();
  v32 = v35;
  sub_20CE93040();
  a3(v32);
  return (*(v37 + 8))(v32, v38);
}

uint64_t sub_20CE79970(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(MEMORY[0x277CE3CF8] + 4);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_20CE79A24;

  return MEMORY[0x282136270](a1, a2, a3);
}

uint64_t sub_20CE79A24()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_20CE79B18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(MEMORY[0x277CE3D00] + 4);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_20CE7CF30;

  return MEMORY[0x282136278](a1, a2, a3);
}

uint64_t MenstrualCyclesWidgetTimelineProvider.relevance()(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_20CE92F30();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  v6 = sub_20CE92720();
  v2[7] = v6;
  v7 = *(v6 - 8);
  v2[8] = v7;
  v8 = *(v7 + 64) + 15;
  v2[9] = swift_task_alloc();
  v9 = type metadata accessor for MenstrualCyclesWidgetEntry(0);
  v2[10] = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  v2[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20CE79D18, 0, 0);
}

uint64_t sub_20CE79D18()
{
  v18 = v0;
  if (qword_281111B08 != -1)
  {
    swift_once();
  }

  v1 = sub_20CE92970();
  v0[12] = __swift_project_value_buffer(v1, qword_2811123B8);
  v2 = sub_20CE92950();
  v3 = sub_20CE931A0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v17 = v5;
    *v4 = 136446210;
    *(v4 + 4) = sub_20CE7C260(0xD000000000000025, 0x800000020CE93A50, &v17);
    _os_log_impl(&dword_20CE71000, v2, v3, "[%{public}s] Fetching widget relevance", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
    MEMORY[0x20F317370](v5, -1, -1);
    MEMORY[0x20F317370](v4, -1, -1);
  }

  v6 = v0[9];
  v8 = v0[5];
  v7 = v0[6];
  v10 = v0[3];
  v9 = v0[4];
  sub_20CE92710();
  (*(v8 + 104))(v7, *MEMORY[0x277CE3B98], v9);
  v11 = swift_task_alloc();
  v0[13] = v11;
  v11[2] = v10;
  v11[3] = v6;
  v11[4] = v7;
  v12 = *(MEMORY[0x277D859E0] + 4);
  v13 = swift_task_alloc();
  v0[14] = v13;
  *v13 = v0;
  v13[1] = sub_20CE79F5C;
  v15 = v0[10];
  v14 = v0[11];

  return MEMORY[0x2822007B8](v14, 0, 0, 0xD00000000000001ALL, 0x800000020CE94F00, sub_20CE7CA8C, v11, v15);
}

uint64_t sub_20CE79F5C()
{
  v1 = *(*v0 + 112);
  v2 = *(*v0 + 104);
  v3 = *(*v0 + 72);
  v4 = *(*v0 + 64);
  v5 = *(*v0 + 56);
  v6 = *(*v0 + 48);
  v7 = *(*v0 + 40);
  v8 = *(*v0 + 32);
  v10 = *v0;

  (*(v7 + 8))(v6, v8);
  (*(v4 + 8))(v3, v5);

  return MEMORY[0x2822009F8](sub_20CE7A134, 0, 0);
}

uint64_t sub_20CE7A134()
{
  v30 = v0;
  v1 = MenstrualCyclesWidgetRelevanceProvider.widgetRelevances(_:)(v0[11]);
  v2 = v0[12];
  v3 = MEMORY[0x277D84F78];
  if (v1)
  {
    v4 = v1;

    v5 = sub_20CE92950();
    v6 = sub_20CE931A0();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v29 = v8;
      *v7 = 136446466;
      *(v7 + 4) = sub_20CE7C260(0xD000000000000025, 0x800000020CE93A50, &v29);
      *(v7 + 12) = 2082;
      sub_20CE7CEDC(0, &qword_281111FD8, v3 + 8, MEMORY[0x277CE3B48]);
      v10 = MEMORY[0x20F316CF0](v4, v9);
      v12 = sub_20CE7C260(v10, v11, &v29);

      *(v7 + 14) = v12;
      _os_log_impl(&dword_20CE71000, v5, v6, "[%{public}s] Returning widget relevances %{public}s", v7, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x20F317370](v8, -1, -1);
      MEMORY[0x20F317370](v7, -1, -1);
    }

    v13 = v0[11];
    v14 = v0[2];
    sub_20CE92F60();
    sub_20CE7CBB4(v13, type metadata accessor for MenstrualCyclesWidgetEntry);
    v15 = 0;
  }

  else
  {
    v16 = sub_20CE92950();
    v17 = sub_20CE931A0();
    v18 = os_log_type_enabled(v16, v17);
    v19 = v0[11];
    if (v18)
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v29 = v21;
      *v20 = 136446210;
      *(v20 + 4) = sub_20CE7C260(0xD000000000000025, 0x800000020CE93A50, &v29);
      _os_log_impl(&dword_20CE71000, v16, v17, "[%{public}s] No widget relevance", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v21);
      MEMORY[0x20F317370](v21, -1, -1);
      MEMORY[0x20F317370](v20, -1, -1);
    }

    sub_20CE7CBB4(v19, type metadata accessor for MenstrualCyclesWidgetEntry);
    v15 = 1;
  }

  v22 = v0[11];
  v23 = v0[9];
  v24 = v0[6];
  v25 = v0[2];
  sub_20CE7CEDC(0, &qword_27C818180, v3 + 8, MEMORY[0x277CE3BE0]);
  (*(*(v26 - 8) + 56))(v25, v15, 1, v26);

  v27 = v0[1];

  return v27();
}

uint64_t MenstrualCyclesWidgetRelevanceProvider.widgetRelevances(_:)(uint64_t a1)
{
  v195 = sub_20CE92720();
  v193 = *(v195 - 1);
  v2 = *(v193 + 64);
  MEMORY[0x28223BE20](v195);
  v194 = &v184 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v203 = sub_20CE92EE0();
  v197 = *(v203 - 8);
  v4 = *(v197 + 64);
  v5 = MEMORY[0x28223BE20](v203);
  v189 = &v184 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v186 = &v184 - v8;
  v9 = MEMORY[0x28223BE20](v7);
  v187 = &v184 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v188 = &v184 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v185 = &v184 - v14;
  MEMORY[0x28223BE20](v13);
  v204 = &v184 - v15;
  v192 = sub_20CE92750();
  v191 = *(v192 - 8);
  v16 = *(v191 + 64);
  MEMORY[0x28223BE20](v192);
  v18 = &v184 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_20CE92810();
  v20 = *(v19 - 8);
  v206 = v19;
  v207 = v20;
  v21 = *(v20 + 64);
  v22 = MEMORY[0x28223BE20](v19);
  v190 = &v184 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v205 = &v184 - v24;
  v25 = sub_20CE92550();
  v201 = *(v25 - 8);
  v202 = v25;
  v26 = *(v201 + 64);
  MEMORY[0x28223BE20](v25);
  v200 = &v184 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_20CE92570();
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x28223BE20](v28 - 8);
  v199 = (&v184 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_20CE7C1FC(0, &qword_281111CC0, type metadata accessor for MenstrualCyclesWidgetEntry.State, MEMORY[0x277D83D88]);
  v32 = *(*(v31 - 8) + 64);
  MEMORY[0x28223BE20](v31 - 8);
  v34 = &v184 - v33;
  v35 = type metadata accessor for MenstrualCyclesWidgetEntry.State(0);
  v36 = *(v35 - 8);
  v37 = *(v36 + 64);
  v38 = MEMORY[0x28223BE20](v35);
  v40 = (&v184 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v38);
  v42 = &v184 - v41;
  v43 = type metadata accessor for MenstrualCyclesWidgetEntry(0);
  v44 = v43[6];
  v196 = a1;
  sub_20CE7C96C(a1 + v44, v34, &qword_281111CC0, type metadata accessor for MenstrualCyclesWidgetEntry.State);
  if ((*(v36 + 48))(v34, 1, v35) == 1)
  {
    sub_20CE7C8FC(v34, &qword_281111CC0, type metadata accessor for MenstrualCyclesWidgetEntry.State);
    if (HKShowSensitiveLogItems())
    {
      if (qword_281111B08 != -1)
      {
        swift_once();
      }

      v45 = sub_20CE92970();
      __swift_project_value_buffer(v45, qword_2811123B8);
      v46 = sub_20CE92950();
      v47 = sub_20CE931A0();
      if (!os_log_type_enabled(v46, v47))
      {
        goto LABEL_22;
      }

      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v208[0] = v49;
      *v48 = 136315138;
      *(v48 + 4) = sub_20CE7C260(0xD000000000000026, 0x800000020CE93A80, v208);
      v50 = "[%s] WidgetEntry pregnancy state was nil. Returning no relevance entries";
    }

    else
    {
      if (qword_281111B08 != -1)
      {
        swift_once();
      }

      v90 = sub_20CE92970();
      __swift_project_value_buffer(v90, qword_2811123B8);
      v46 = sub_20CE92950();
      v47 = sub_20CE931A0();
      if (!os_log_type_enabled(v46, v47))
      {
        goto LABEL_22;
      }

      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v208[0] = v49;
      *v48 = 136315138;
      *(v48 + 4) = sub_20CE7C260(0xD000000000000026, 0x800000020CE93A80, v208);
      v50 = "[%s] Returning no relevance entries";
    }

    _os_log_impl(&dword_20CE71000, v46, v47, v50, v48, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v49);
    MEMORY[0x20F317370](v49, -1, -1);
    MEMORY[0x20F317370](v48, -1, -1);
LABEL_22:

    return 0;
  }

  sub_20CE7CAE4(v34, v42, type metadata accessor for MenstrualCyclesWidgetEntry.State);
  sub_20CE7CB4C(v42, v40, type metadata accessor for MenstrualCyclesWidgetEntry.State);
  sub_20CE76084();
  v52 = v51;
  v53 = (*(*(v51 - 8) + 48))(v40, 1, v51);
  v198 = v40;
  v54 = v42;
  if (v53 != 1)
  {

    if (HKShowSensitiveLogItems())
    {
      if (qword_281111B08 != -1)
      {
        swift_once();
      }

      v91 = v42;
      v92 = sub_20CE92970();
      __swift_project_value_buffer(v92, qword_2811123B8);
      v93 = sub_20CE92950();
      v94 = sub_20CE931A0();
      if (!os_log_type_enabled(v93, v94))
      {
        goto LABEL_33;
      }

      v95 = swift_slowAlloc();
      v96 = swift_slowAlloc();
      v208[0] = v96;
      *v95 = 136315138;
      *(v95 + 4) = sub_20CE7C260(0xD000000000000026, 0x800000020CE93A80, v208);
      v97 = "[%s] Pregnancy state is ongoing. Returning relevance entries";
    }

    else
    {
      if (qword_281111B08 != -1)
      {
        swift_once();
      }

      v91 = v42;
      v98 = sub_20CE92970();
      __swift_project_value_buffer(v98, qword_2811123B8);
      v93 = sub_20CE92950();
      v94 = sub_20CE931A0();
      if (!os_log_type_enabled(v93, v94))
      {
        goto LABEL_33;
      }

      v95 = swift_slowAlloc();
      v96 = swift_slowAlloc();
      v208[0] = v96;
      *v95 = 136315138;
      *(v95 + 4) = sub_20CE7C260(0xD000000000000026, 0x800000020CE93A80, v208);
      v97 = "[%s] Returning relevance entries";
    }

    _os_log_impl(&dword_20CE71000, v93, v94, v97, v95, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v96);
    MEMORY[0x20F317370](v96, -1, -1);
    MEMORY[0x20F317370](v95, -1, -1);
LABEL_33:

    v99 = *(v52 + 64);
    sub_20CE7CC58();
    sub_20CE7CEDC(0, &qword_281111FD8, MEMORY[0x277D84F78] + 8, MEMORY[0x277CE3B48]);
    v101 = *(*(v100 - 8) + 72);
    v102 = (*(*(v100 - 8) + 80) + 32) & ~*(*(v100 - 8) + 80);
    v103 = swift_allocObject();
    *(v103 + 16) = xmmword_20CE93A60;
    v104 = v200;
    sub_20CE92530();
    sub_20CE92560();
    v105 = v202;
    v106 = *(v201 + 8);
    v106(v104, v202);
    sub_20CE92F20();
    sub_20CE92540();
    sub_20CE92560();
    v106(v104, v105);
    sub_20CE92F20();
    sub_20CE7CBB4(v91, type metadata accessor for MenstrualCyclesWidgetEntry.State);
    v107 = sub_20CE92870();
    (*(*(v107 - 8) + 8))(v198 + v99, v107);
    return v103;
  }

  v55 = v191;
  v56 = v192;
  (*(v191 + 104))(v18, *MEMORY[0x277CC9830], v192);
  v57 = v205;
  sub_20CE92760();
  (*(v55 + 8))(v18, v56);
  v58 = v196;
  (*(v193 + 16))(v194, v196, v195);
  (*(v207 + 16))(v190, v57, v206);
  v59 = v204;
  sub_20CE92EC0();
  v60 = *(v58 + v43[7]);
  if (!v60)
  {
    v109 = v197;
    v110 = v203;
    if (qword_281111B08 != -1)
    {
      swift_once();
    }

    v111 = sub_20CE92970();
    __swift_project_value_buffer(v111, qword_2811123B8);
    v112 = *(v109 + 16);
    v113 = v189;
    v112(v189, v59, v110);
    v114 = v59;
    v115 = sub_20CE92950();
    v116 = sub_20CE93170();
    if (os_log_type_enabled(v115, v116))
    {
      v117 = swift_slowAlloc();
      v201 = swift_slowAlloc();
      v202 = v54;
      v210[0] = v201;
      *v117 = 136315394;
      *(v117 + 4) = sub_20CE7C260(0xD000000000000026, 0x800000020CE93A80, v210);
      *(v117 + 12) = 2080;
      v118 = v188;
      v112(v188, v113, v110);
      v112(v187, v118, v110);
      sub_20CE932E0();
      v119 = HKSensitiveLogItem();
      swift_unknownObjectRelease();
      sub_20CE93220();
      swift_unknownObjectRelease();
      v120 = v209;
      v121 = __swift_project_boxed_opaque_existential_0(v208, v209);
      v122 = *(*(v120 - 8) + 64);
      MEMORY[0x28223BE20](v121);
      (*(v124 + 16))(&v184 - ((v123 + 15) & 0xFFFFFFFFFFFFFFF0));
      v125 = sub_20CE930D0();
      v127 = v126;
      v128 = *(v109 + 8);
      v128(v118, v110);
      v128(v189, v110);
      __swift_destroy_boxed_opaque_existential_0(v208);
      v129 = sub_20CE7C260(v125, v127, v210);

      *(v117 + 14) = v129;
      _os_log_impl(&dword_20CE71000, v115, v116, "[%s].WidgetRelevances: Current entry:%s has no projection", v117, 0x16u);
      v130 = v201;
      swift_arrayDestroy();
      MEMORY[0x20F317370](v130, -1, -1);
      MEMORY[0x20F317370](v117, -1, -1);

      v128(v204, v110);
LABEL_42:
      (*(v207 + 8))(v205, v206);
      v165 = v202;
LABEL_51:
      sub_20CE7CBB4(v165, type metadata accessor for MenstrualCyclesWidgetEntry.State);
      sub_20CE7CBB4(v198, type metadata accessor for MenstrualCyclesWidgetEntry.State);
      return 0;
    }

    v173 = *(v109 + 8);
    v173(v113, v110);
    v173(v114, v110);
LABEL_50:
    (*(v207 + 8))(v205, v206);
    v165 = v54;
    goto LABEL_51;
  }

  v61 = v60;
  [v61 allDays];
  v62 = sub_20CE931B0();
  v63 = v197;
  v64 = v203;
  if ((v62 & 1) == 0)
  {
    if (qword_281111B08 != -1)
    {
      swift_once();
    }

    v131 = sub_20CE92970();
    __swift_project_value_buffer(v131, qword_2811123B8);
    v132 = *(v63 + 16);
    v133 = v186;
    v132(v186, v59, v64);
    v134 = v61;
    v135 = v59;
    v136 = sub_20CE92950();
    v137 = sub_20CE931A0();

    if (os_log_type_enabled(v136, v137))
    {
      v138 = swift_slowAlloc();
      v201 = swift_slowAlloc();
      v202 = v54;
      v210[0] = v201;
      *v138 = 136446722;
      *(v138 + 4) = sub_20CE7C260(0xD000000000000026, 0x800000020CE93A80, v210);
      *(v138 + 12) = 2080;
      LODWORD(v200) = v137;
      v139 = v188;
      v132(v188, v133, v64);
      v132(v187, v139, v64);
      sub_20CE932E0();
      v140 = HKSensitiveLogItem();
      swift_unknownObjectRelease();
      sub_20CE93220();
      swift_unknownObjectRelease();
      v141 = v209;
      v142 = __swift_project_boxed_opaque_existential_0(v208, v209);
      v199 = v136;
      v143 = *(*(v141 - 8) + 64);
      MEMORY[0x28223BE20](v142);
      (*(v145 + 16))(&v184 - ((v144 + 15) & 0xFFFFFFFFFFFFFFF0));
      v146 = sub_20CE930D0();
      v148 = v147;
      v149 = *(v63 + 8);
      v149(v139, v64);
      v150 = v133;
      v151 = v64;
      v149(v150, v64);
      __swift_destroy_boxed_opaque_existential_0(v208);
      v152 = sub_20CE7C260(v146, v148, v210);

      *(v138 + 14) = v152;
      *(v138 + 22) = 2080;
      v153 = HKSensitiveLogItem();
      sub_20CE93220();
      swift_unknownObjectRelease();
      v154 = v209;
      v155 = __swift_project_boxed_opaque_existential_0(v208, v209);
      v156 = *(*(v154 - 8) + 64);
      MEMORY[0x28223BE20](v155);
      (*(v158 + 16))(&v184 - ((v157 + 15) & 0xFFFFFFFFFFFFFFF0));
      v159 = sub_20CE930D0();
      v161 = v160;
      __swift_destroy_boxed_opaque_existential_0(v208);
      v162 = sub_20CE7C260(v159, v161, v210);

      *(v138 + 24) = v162;
      v163 = v199;
      _os_log_impl(&dword_20CE71000, v199, v200, "[%{public}s].WidgetRelevances: Current entry:%s Conditions for relevances were not met. Returning no relevance entries. Projection : %s", v138, 0x20u);
      v164 = v201;
      swift_arrayDestroy();
      MEMORY[0x20F317370](v164, -1, -1);
      MEMORY[0x20F317370](v138, -1, -1);

      v149(v204, v151);
      goto LABEL_42;
    }

    v174 = *(v63 + 8);
    v174(v133, v64);
    v174(v135, v64);
    goto LABEL_50;
  }

  v65 = (v58 + v43[10]);
  if ((v65[1] & 1) == 0)
  {
    v66 = *v65;
    v67 = v58 + v43[5];
    v68 = v66 == sub_20CE92ED0();
    v69 = v204;
    if (v68)
    {
      v202 = v42;
      if (qword_281111B08 != -1)
      {
        swift_once();
      }

      v70 = sub_20CE92970();
      __swift_project_value_buffer(v70, qword_2811123B8);
      v71 = *(v63 + 16);
      v72 = v185;
      v71(v185, v69, v64);
      v73 = v69;
      v74 = sub_20CE92950();
      v75 = sub_20CE931A0();
      if (os_log_type_enabled(v74, v75))
      {
        v76 = swift_slowAlloc();
        v201 = swift_slowAlloc();
        v210[0] = v201;
        *v76 = 136446466;
        *(v76 + 4) = sub_20CE7C260(0xD000000000000026, 0x800000020CE93A80, v210);
        *(v76 + 12) = 2080;
        v195 = v61;
        v77 = v188;
        v71(v188, v72, v64);
        v71(v187, v77, v64);
        sub_20CE932E0();
        v78 = HKSensitiveLogItem();
        swift_unknownObjectRelease();
        sub_20CE93220();
        swift_unknownObjectRelease();
        v79 = v209;
        v80 = __swift_project_boxed_opaque_existential_0(v208, v209);
        v81 = *(*(v79 - 8) + 64);
        MEMORY[0x28223BE20](v80);
        (*(v83 + 16))(&v184 - ((v82 + 15) & 0xFFFFFFFFFFFFFFF0));
        v84 = sub_20CE930D0();
        v86 = v85;
        v87 = *(v63 + 8);
        v87(v77, v64);
        v87(v185, v64);
        __swift_destroy_boxed_opaque_existential_0(v208);
        v88 = sub_20CE7C260(v84, v86, v210);

        *(v76 + 14) = v88;
        _os_log_impl(&dword_20CE71000, v74, v75, "[%{public}s].WidgetRelevances: User has a log for entry:%s Returning no relevance", v76, 0x16u);
        v89 = v201;
        swift_arrayDestroy();
        MEMORY[0x20F317370](v89, -1, -1);
        MEMORY[0x20F317370](v76, -1, -1);

        v87(v204, v64);
      }

      else
      {

        v183 = *(v63 + 8);
        v183(v72, v64);
        v183(v73, v64);
      }

      goto LABEL_42;
    }
  }

  v166 = HKShowSensitiveLogItems();
  v195 = v61;
  if (v166)
  {
    if (qword_281111B08 != -1)
    {
      swift_once();
    }

    v167 = sub_20CE92970();
    __swift_project_value_buffer(v167, qword_2811123B8);
    v168 = sub_20CE92950();
    v169 = sub_20CE931A0();
    if (!os_log_type_enabled(v168, v169))
    {
      goto LABEL_58;
    }

    v170 = swift_slowAlloc();
    v171 = swift_slowAlloc();
    v208[0] = v171;
    *v170 = 136315138;
    *(v170 + 4) = sub_20CE7C260(0xD000000000000026, 0x800000020CE93A80, v208);
    v172 = "[%s].WidgetRelevances: Current day is a projected light red or dark red day and the user has not logged yet. Returning relevance entries";
  }

  else
  {
    if (qword_281111B08 != -1)
    {
      swift_once();
    }

    v175 = sub_20CE92970();
    __swift_project_value_buffer(v175, qword_2811123B8);
    v168 = sub_20CE92950();
    v169 = sub_20CE931A0();
    if (!os_log_type_enabled(v168, v169))
    {
      goto LABEL_58;
    }

    v170 = swift_slowAlloc();
    v171 = swift_slowAlloc();
    v208[0] = v171;
    *v170 = 136315138;
    *(v170 + 4) = sub_20CE7C260(0xD000000000000026, 0x800000020CE93A80, v208);
    v172 = "[%s] Returning relevance entries";
  }

  _os_log_impl(&dword_20CE71000, v168, v169, v172, v170, 0xCu);
  __swift_destroy_boxed_opaque_existential_0(v171);
  MEMORY[0x20F317370](v171, -1, -1);
  MEMORY[0x20F317370](v170, -1, -1);
LABEL_58:

  sub_20CE7CC58();
  sub_20CE7CEDC(0, &qword_281111FD8, MEMORY[0x277D84F78] + 8, MEMORY[0x277CE3B48]);
  v177 = *(*(v176 - 8) + 72);
  v178 = (*(*(v176 - 8) + 80) + 32) & ~*(*(v176 - 8) + 80);
  v179 = swift_allocObject();
  *(v179 + 16) = xmmword_20CE93A60;
  v180 = v200;
  sub_20CE92530();
  sub_20CE92560();
  v181 = v202;
  v182 = *(v201 + 8);
  v182(v180, v202);
  sub_20CE92F20();
  sub_20CE92540();
  sub_20CE92560();
  v182(v180, v181);
  sub_20CE92F20();

  (*(v63 + 8))(v204, v203);
  (*(v207 + 8))(v205, v206);
  sub_20CE7CBB4(v42, type metadata accessor for MenstrualCyclesWidgetEntry.State);
  sub_20CE7CBB4(v198, type metadata accessor for MenstrualCyclesWidgetEntry.State);
  return v179;
}

uint64_t sub_20CE7BFB0(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  sub_20CE7CDA8();
  v9 = v8;
  v10 = *(v8 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = *a2;
  (*(v10 + 16))(&v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v9);
  v13 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v14 = swift_allocObject();
  (*(v10 + 32))(v14 + v13, &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v9);
  sub_20CE88D48(a3, a4, sub_20CE7CE10, v14);
}

uint64_t sub_20CE7C108(uint64_t a1)
{
  v2 = type metadata accessor for MenstrualCyclesWidgetEntry(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_20CE7CB4C(a1, &v6 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for MenstrualCyclesWidgetEntry);
  sub_20CE7CDA8();
  return sub_20CE93130();
}

uint64_t type metadata accessor for MenstrualCyclesWidgetTimelineProvider()
{
  result = qword_281111E48;
  if (!qword_281111E48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20CE7C1FC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_20CE7C260(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_20CE7C32C(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_20CE7CE80(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_20CE7C32C(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_20CE7C438(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_20CE93270();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_20CE7C438(uint64_t a1, unint64_t a2)
{
  v4 = sub_20CE7C484(a1, a2);
  sub_20CE7C5B4(&unk_2823C7248);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_20CE7C484(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = sub_20CE7C6A0(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_20CE93270();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_20CE930F0();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_20CE7C6A0(v10, 0);
        result = sub_20CE93250();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_20CE7C5B4(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_20CE7C72C(result, v12, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_20CE7C6A0(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  sub_20CE7CEDC(0, &qword_27C818188, MEMORY[0x277D84B78], MEMORY[0x277D84560]);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_20CE7C72C(char *result, int64_t a2, char a3, char *a4)
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
    sub_20CE7CEDC(0, &qword_27C818188, MEMORY[0x277D84B78], MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
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

void sub_20CE7C840()
{
  if (!qword_27C818168)
  {
    type metadata accessor for MenstrualCyclesWidgetEntry(255);
    sub_20CE7C8A4();
    v0 = sub_20CE93050();
    if (!v1)
    {
      atomic_store(v0, &qword_27C818168);
    }
  }
}

unint64_t sub_20CE7C8A4()
{
  result = qword_27C818170;
  if (!qword_27C818170)
  {
    type metadata accessor for MenstrualCyclesWidgetEntry(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C818170);
  }

  return result;
}

uint64_t sub_20CE7C8FC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_20CE7C1FC(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_20CE7C96C(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_20CE7C1FC(0, a3, a4, MEMORY[0x277D83D88]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_20CE7C9EC(uint64_t a1)
{
  v3 = *(sub_20CE93030() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8);
  v6 = *v5;
  v7 = *(v5 + 8);

  return sub_20CE7957C(a1, v1 + v4, v6, v7);
}

uint64_t __swift_destroy_boxed_opaque_existential_0(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_20CE7CAE4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_20CE7CB4C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_20CE7CBB4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void *__swift_project_boxed_opaque_existential_0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

void sub_20CE7CC58()
{
  if (!qword_2811117F0)
  {
    sub_20CE7CEDC(255, &qword_281111FD8, MEMORY[0x277D84F78] + 8, MEMORY[0x277CE3B48]);
    v0 = sub_20CE932B0();
    if (!v1)
    {
      atomic_store(v0, &qword_2811117F0);
    }
  }
}

uint64_t sub_20CE7CD04()
{
  result = type metadata accessor for MenstrualCyclesWidgetTimelineGenerator();
  if (v1 <= 0x3F)
  {
    result = sub_20CE92810();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_20CE7CDA8()
{
  if (!qword_281111838)
  {
    type metadata accessor for MenstrualCyclesWidgetEntry(255);
    v0 = sub_20CE93140();
    if (!v1)
    {
      atomic_store(v0, &qword_281111838);
    }
  }
}

uint64_t sub_20CE7CE10(uint64_t a1)
{
  sub_20CE7CDA8();
  v3 = *(*(v2 - 8) + 80);

  return sub_20CE7C108(a1);
}

uint64_t sub_20CE7CE80(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

void sub_20CE7CEDC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

id sub_20CE7CF34()
{
  result = [objc_opt_self() sharedBehavior];
  if (result)
  {
    v1 = result;
    v2 = [result isAppleWatch];

    if (v2)
    {
      sub_20CE92AC0();
      sub_20CE83474(&qword_27C818190, MEMORY[0x277CE3940]);
      sub_20CE92B30();
      return v3;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_20CE7D004@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_20CE92B20();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x277CE3BA0];
  sub_20CE83968(0, &qword_281111AF8, MEMORY[0x277CE3BA0], MEMORY[0x277CDF458]);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = (&v18 - v12);
  sub_20CE83690(v2, &v18 - v12, &qword_281111AF8, v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = sub_20CE92F30();
    return (*(*(v14 - 8) + 32))(a1, v13, v14);
  }

  else
  {
    v16 = *v13;
    sub_20CE93190();
    v17 = sub_20CE92C50();
    sub_20CE92890();

    sub_20CE92B10();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v8, v4);
  }
}

uint64_t sub_20CE7D228@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_20CE92B20();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x277CE3AF8];
  sub_20CE83968(0, &qword_281111B00, MEMORY[0x277CE3AF8], MEMORY[0x277CDF458]);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = (&v18 - v11);
  v13 = type metadata accessor for MenstrualCyclesWidgetRectangularView();
  sub_20CE83690(v1 + *(v13 + 20), v12, &qword_281111B00, v8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = sub_20CE92F10();
    return (*(*(v14 - 8) + 32))(a1, v12, v14);
  }

  else
  {
    v16 = *v12;
    sub_20CE93190();
    v17 = sub_20CE92C50();
    sub_20CE92890();

    sub_20CE92B10();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v7, v3);
  }
}

uint64_t sub_20CE7D454@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_20CE92B20();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x277CDFA28];
  sub_20CE83968(0, &qword_281111AE8, MEMORY[0x277CDFA28], MEMORY[0x277CDF458]);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = (&v18 - v11);
  v13 = type metadata accessor for MenstrualCyclesWidgetRectangularView();
  sub_20CE83690(v1 + *(v13 + 28), v12, &qword_281111AE8, v8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = sub_20CE929C0();
    return (*(*(v14 - 8) + 32))(a1, v12, v14);
  }

  else
  {
    v16 = *v12;
    sub_20CE93190();
    v17 = sub_20CE92C50();
    sub_20CE92890();

    sub_20CE92B10();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v7, v3);
  }
}

uint64_t sub_20CE7D680()
{
  v1 = sub_20CE92B20();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v10[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = v0 + *(type metadata accessor for MenstrualCyclesWidgetRectangularView() + 32);
  v7 = *v6;
  if (*(v6 + 8) != 1)
  {

    sub_20CE93190();
    v8 = sub_20CE92C50();
    sub_20CE92890();

    sub_20CE92B10();
    swift_getAtKeyPath();
    sub_20CE8395C(v7, 0);
    (*(v2 + 8))(v5, v1);
    LOBYTE(v7) = v10[15];
  }

  return v7 & 1;
}

uint64_t MenstrualCyclesWidgetRectangularView.body.getter()
{
  v1 = v0;
  sub_20CE7D960(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20CE7D994();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = (&v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v9 = sub_20CE92EB0();
  v9[1] = v10;
  sub_20CE7FFC8();
  sub_20CE7F490(v1, v9 + *(v11 + 44));
  sub_20CE926C0();
  sub_20CE83474(&qword_281111888, sub_20CE7D994);
  sub_20CE92D50();
  sub_20CE838A8(v5, sub_20CE7D960);
  return sub_20CE83848(v9, sub_20CE7D994);
}

void sub_20CE7D994()
{
  if (!qword_281111880)
  {
    sub_20CE834BC(255, &qword_281111970, sub_20CE7DA3C, sub_20CE7E8B4, MEMORY[0x277CE0338]);
    sub_20CE7F2A8();
    v0 = sub_20CE92E80();
    if (!v1)
    {
      atomic_store(v0, &qword_281111880);
    }
  }
}

void sub_20CE7DA3C()
{
  if (!qword_2811118D0)
  {
    sub_20CE7DB0C(255);
    sub_20CE7F208(&qword_281111A50, sub_20CE7DB0C, &qword_2811118A8, sub_20CE7DB34);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2811118D0);
    }
  }
}

void sub_20CE7DB70(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), unint64_t *a4, void (*a5)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_20CE83474(a4, a5);
    v8 = sub_20CE92E70();
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_20CE7DC38()
{
  if (!qword_2811118F8)
  {
    sub_20CE7EC30(255, &qword_281111900, sub_20CE7DD28, sub_20CE7DDD4);
    sub_20CE7DFB4(255);
    sub_20CE7EC30(255, &qword_2811118F0, sub_20CE7E2D4, sub_20CE7E5BC);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata, &qword_2811118F8);
    }
  }
}

void sub_20CE7DD28()
{
  if (!qword_281111A20)
  {
    sub_20CE7F088(255, &qword_281111A98, &qword_281111940, MEMORY[0x277D85048]);
    sub_20CE7EDA8(255, &qword_281111950, MEMORY[0x277CE0F78], MEMORY[0x277CE0F60], MEMORY[0x277CE0730]);
    v0 = sub_20CE929E0();
    if (!v1)
    {
      atomic_store(v0, &qword_281111A20);
    }
  }
}

unint64_t sub_20CE7DE1C()
{
  result = qword_281111AA0;
  if (!qword_281111AA0)
  {
    sub_20CE7F088(255, &qword_281111A98, &qword_281111940, MEMORY[0x277D85048]);
    sub_20CE7DEB4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281111AA0);
  }

  return result;
}

unint64_t sub_20CE7DEB4()
{
  result = qword_281111948;
  if (!qword_281111948)
  {
    sub_20CE83424(255, &qword_281111940, MEMORY[0x277D85048], MEMORY[0x277CE0860]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281111948);
  }

  return result;
}

unint64_t sub_20CE7DF30()
{
  result = qword_281111958;
  if (!qword_281111958)
  {
    sub_20CE7EDA8(255, &qword_281111950, MEMORY[0x277CE0F78], MEMORY[0x277CE0F60], MEMORY[0x277CE0730]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281111958);
  }

  return result;
}

void sub_20CE7DFE4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), unint64_t *a4, uint64_t a5)
{
  if (!*a2)
  {
    a3(255);
    sub_20CE83424(255, a4, a5, MEMORY[0x277CE0860]);
    v8 = sub_20CE929E0();
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_20CE7E07C()
{
  if (!qword_2811119C0)
  {
    sub_20CE7DFE4(255, &qword_2811119D0, sub_20CE7E128, &qword_281111938, MEMORY[0x277CDF720]);
    sub_20CE7E268(255, &qword_281111918, &qword_281111820, MEMORY[0x277D83B88]);
    v0 = sub_20CE929E0();
    if (!v1)
    {
      atomic_store(v0, &qword_2811119C0);
    }
  }
}

void sub_20CE7E128()
{
  if (!qword_2811119F0)
  {
    sub_20CE7E1BC();
    sub_20CE7EDA8(255, &qword_281111950, MEMORY[0x277CE0F78], MEMORY[0x277CE0F60], MEMORY[0x277CE0730]);
    v0 = sub_20CE929E0();
    if (!v1)
    {
      atomic_store(v0, &qword_2811119F0);
    }
  }
}

void sub_20CE7E1BC()
{
  if (!qword_281111A30)
  {
    sub_20CE7EDA8(255, &qword_281111AA8, MEMORY[0x277CE0BD8], MEMORY[0x277CDF928], MEMORY[0x277CDFAB8]);
    sub_20CE7E268(255, &qword_281111930, &qword_281111908, MEMORY[0x277CE0AE0]);
    v0 = sub_20CE929E0();
    if (!v1)
    {
      atomic_store(v0, &qword_281111A30);
    }
  }
}

void sub_20CE7E268(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (!*a2)
  {
    sub_20CE83424(255, a3, a4, MEMORY[0x277D83D88]);
    v5 = sub_20CE92C30();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_20CE7E2D4()
{
  if (!qword_2811119D8)
  {
    sub_20CE834BC(255, &qword_281111A08, sub_20CE7E3A4, sub_20CE7E554, MEMORY[0x277CDFAB8]);
    sub_20CE83424(255, &qword_281111940, MEMORY[0x277D85048], MEMORY[0x277CE0860]);
    v0 = sub_20CE929E0();
    if (!v1)
    {
      atomic_store(v0, &qword_2811119D8);
    }
  }
}

void sub_20CE7E3CC()
{
  if (!qword_2811118D8)
  {
    sub_20CE7E4D0();
    sub_20CE92880();
    sub_20CE83474(&qword_2811118B8, sub_20CE7E4D0);
    sub_20CE83474(&qword_281111FA8, MEMORY[0x277D11A20]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2811118D8);
    }
  }
}

void sub_20CE7E4D0()
{
  if (!qword_2811118B0)
  {
    v0 = sub_20CE92E30();
    if (!v1)
    {
      atomic_store(v0, &qword_2811118B0);
    }
  }
}

uint64_t sub_20CE7E604(unint64_t *a1, void (*a2)(uint64_t), void (*a3)(void), void (*a4)(void))
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

unint64_t sub_20CE7E690()
{
  result = qword_281111A10;
  if (!qword_281111A10)
  {
    sub_20CE834BC(255, &qword_281111A08, sub_20CE7E3A4, sub_20CE7E554, MEMORY[0x277CDFAB8]);
    sub_20CE7E784();
    sub_20CE83474(&qword_281111928, sub_20CE7E554);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281111A10);
  }

  return result;
}

unint64_t sub_20CE7E784()
{
  result = qword_281111A70;
  if (!qword_281111A70)
  {
    sub_20CE7E3A4(255);
    sub_20CE7E4D0();
    sub_20CE92880();
    sub_20CE83474(&qword_2811118B8, sub_20CE7E4D0);
    sub_20CE83474(&qword_281111FA8, MEMORY[0x277D11A20]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281111A70);
  }

  return result;
}

void sub_20CE7E8B4()
{
  if (!qword_2811118C0)
  {
    sub_20CE7E9BC();
    sub_20CE7EA8C(255);
    sub_20CE7F208(&qword_281111A40, sub_20CE7EA8C, &qword_281111898, sub_20CE7EAB4);
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2811118C0);
    }
  }
}

void sub_20CE7E9BC()
{
  if (!qword_2811118C8)
  {
    sub_20CE7EA8C(255);
    sub_20CE7F208(&qword_281111A40, sub_20CE7EA8C, &qword_281111898, sub_20CE7EAB4);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2811118C8);
    }
  }
}

void sub_20CE7EB24()
{
  if (!qword_281111A80)
  {
    sub_20CE7EBB4(255);
    sub_20CE7EF98(255);
    sub_20CE7F0FC(255);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata, &qword_281111A80);
    }
  }
}

void sub_20CE7EC30(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(void))
{
  if (!*a2)
  {
    a3(255);
    a4();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v7)
    {
      atomic_store(OpaqueTypeMetadata2, a2);
    }
  }
}

void sub_20CE7ECC0()
{
  if (!qword_281111980)
  {
    sub_20CE7ED1C();
    v0 = sub_20CE92BE0();
    if (!v1)
    {
      atomic_store(v0, &qword_281111980);
    }
  }
}

void sub_20CE7ED1C()
{
  if (!qword_2811119F8)
  {
    sub_20CE7EDA8(255, &qword_281111A58, MEMORY[0x277CE1088], MEMORY[0x277CE01B8], MEMORY[0x277CDFAB8]);
    v0 = sub_20CE929E0();
    if (!v1)
    {
      atomic_store(v0, &qword_2811119F8);
    }
  }
}

void sub_20CE7EDA8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

unint64_t sub_20CE7EDFC()
{
  result = qword_281111988;
  if (!qword_281111988)
  {
    sub_20CE7ECC0();
    sub_20CE7EE74();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281111988);
  }

  return result;
}

unint64_t sub_20CE7EE74()
{
  result = qword_281111A00;
  if (!qword_281111A00)
  {
    sub_20CE7ED1C();
    sub_20CE7EEF4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281111A00);
  }

  return result;
}

unint64_t sub_20CE7EEF4()
{
  result = qword_281111A60;
  if (!qword_281111A60)
  {
    sub_20CE7EDA8(255, &qword_281111A58, MEMORY[0x277CE1088], MEMORY[0x277CE01B8], MEMORY[0x277CDFAB8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281111A60);
  }

  return result;
}

void sub_20CE7EFF0()
{
  if (!qword_281111A18)
  {
    sub_20CE7F088(255, &qword_281111A90, &qword_281111938, MEMORY[0x277CDF720]);
    sub_20CE7E268(255, &qword_281111918, &qword_281111820, MEMORY[0x277D83B88]);
    v0 = sub_20CE929E0();
    if (!v1)
    {
      atomic_store(v0, &qword_281111A18);
    }
  }
}

void sub_20CE7F088(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (!*a2)
  {
    sub_20CE83424(255, a3, a4, MEMORY[0x277CE0860]);
    v5 = sub_20CE929E0();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_20CE7F124(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_20CE929E0();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_20CE7F188()
{
  if (!qword_2811118E0)
  {
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2811118E0);
    }
  }
}

uint64_t sub_20CE7F208(unint64_t *a1, void (*a2)(uint64_t), unint64_t *a3, void (*a4)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    sub_20CE83474(a3, a4);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_20CE7F2A8()
{
  result = qword_281111978;
  if (!qword_281111978)
  {
    sub_20CE834BC(255, &qword_281111970, sub_20CE7DA3C, sub_20CE7E8B4, MEMORY[0x277CE0338]);
    sub_20CE7DB0C(255);
    sub_20CE7F208(&qword_281111A50, sub_20CE7DB0C, &qword_2811118A8, sub_20CE7DB34);
    swift_getOpaqueTypeConformance2();
    sub_20CE7E9BC();
    sub_20CE7EA8C(255);
    sub_20CE7F208(&qword_281111A40, sub_20CE7EA8C, &qword_281111898, sub_20CE7EAB4);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281111978);
  }

  return result;
}

uint64_t sub_20CE7F490@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v95 = a2;
  sub_20CE7E8B4();
  v94 = v3;
  v89 = *(v3 - 8);
  v4 = v89[8];
  MEMORY[0x28223BE20](v3);
  v88 = &v80 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20CE834BC(0, &qword_2811119A8, sub_20CE7DA3C, sub_20CE7E8B4, MEMORY[0x277CE0330]);
  v91 = v6;
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v80 - v8;
  v83 = sub_20CE92C20();
  v82 = *(v83 - 8);
  v10 = *(v82 + 64);
  MEMORY[0x28223BE20](v83);
  v81 = &v80 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20CE7DB34(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v80 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20CE7DB0C(0);
  v90 = v16;
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16);
  v19 = &v80 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20CE7DA3C();
  v21 = v20;
  v84 = *(v20 - 8);
  v22 = *(v84 + 64);
  MEMORY[0x28223BE20](v20);
  v85 = &v80 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = sub_20CE92870();
  v86 = *(v87 - 8);
  v24 = *(v86 + 64);
  MEMORY[0x28223BE20](v87);
  v26 = (&v80 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_20CE831C8(0);
  v28 = *(*(v27 - 8) + 64);
  v29 = MEMORY[0x28223BE20](v27 - 8);
  v31 = &v80 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v96 = &v80 - v32;
  sub_20CE834BC(0, &qword_281111970, sub_20CE7DA3C, sub_20CE7E8B4, MEMORY[0x277CE0338]);
  v34 = *(*(v33 - 8) + 64);
  MEMORY[0x28223BE20](v33 - 8);
  v93 = &v80 - v35;
  sub_20CE93160();
  v92 = sub_20CE93150();
  sub_20CE93120();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v36 = type metadata accessor for MenstrualCyclesWidgetRectangularView();
  v37 = v96;
  sub_20CE837E0(a1 + *(v36 + 36), v96, sub_20CE831C8);
  v38 = type metadata accessor for MenstrualCyclesWidgetEntry.State(0);
  if ((*(*(v38 - 8) + 48))(v37, 1, v38) != 1)
  {
    sub_20CE837E0(v96, v31, sub_20CE831C8);
    sub_20CE76084();
    v40 = v39;
    if ((*(*(v39 - 8) + 48))(v31, 1, v39) != 1)
    {
      v89 = *v31;
      v56 = v89;
      v57 = *(v31 + 1);
      v58 = *(v86 + 32);
      v59 = &v31[*(v40 + 64)];
      v80 = v26;
      v58(v26, v59, v87);
      *v15 = sub_20CE92B70();
      *(v15 + 1) = 0;
      v15[16] = 0;
      sub_20CE83540(0, &qword_27C818198, sub_20CE7DC04);
      sub_20CE81ADC(a1, v56, v26, &v15[*(v60 + 44)]);
      sub_20CE92EA0();
      sub_20CE929F0();
      sub_20CE83710(v15, v19, sub_20CE7DB34);
      v61 = v90;
      v62 = &v19[*(v90 + 36)];
      v63 = v106;
      *(v62 + 4) = v105;
      *(v62 + 5) = v63;
      *(v62 + 6) = v107;
      v64 = v102;
      *v62 = v101;
      *(v62 + 1) = v64;
      v65 = v104;
      *(v62 + 2) = v103;
      *(v62 + 3) = v65;
      v66 = v81;
      sub_20CE92C10();
      v67 = sub_20CE7F208(&qword_281111A50, sub_20CE7DB0C, &qword_2811118A8, sub_20CE7DB34);
      v68 = MEMORY[0x277CDF950];
      v69 = MEMORY[0x277CDF948];
      v70 = v85;
      sub_20CE92DD0();
      (*(v82 + 8))(v66, v83);
      sub_20CE83848(v19, sub_20CE7DB0C);
      v71 = v84;
      (*(v84 + 16))(v9, v70, v21);
      swift_storeEnumTagMultiPayload();
      v97 = v61;
      v98 = v68;
      v99 = v67;
      v100 = v69;
      swift_getOpaqueTypeConformance2();
      sub_20CE7E9BC();
      v73 = v72;
      sub_20CE7EA8C(255);
      v74 = v21;
      v76 = v75;
      v77 = sub_20CE7F208(&qword_281111A40, sub_20CE7EA8C, &qword_281111898, sub_20CE7EAB4);
      v97 = v76;
      v98 = v68;
      v99 = v77;
      v100 = v69;
      OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
      v97 = v73;
      v98 = OpaqueTypeConformance2;
      swift_getOpaqueTypeConformance2();
      v55 = v93;
      sub_20CE92BD0();

      (*(v71 + 8))(v70, v74);
      (*(v86 + 8))(v80, v87);
      goto LABEL_8;
    }

    sub_20CE838A8(v31, type metadata accessor for MenstrualCyclesWidgetEntry.State);
  }

  v41 = v88;
  sub_20CE80090(v88);
  v42 = v89;
  v43 = v89[2];
  v44 = v9;
  v87 = v21;
  v45 = v94;
  v43(v44, v41, v94);
  swift_storeEnumTagMultiPayload();
  v46 = sub_20CE7F208(&qword_281111A50, sub_20CE7DB0C, &qword_2811118A8, sub_20CE7DB34);
  v47 = MEMORY[0x277CDF950];
  *&v101 = v90;
  *(&v101 + 1) = MEMORY[0x277CDF950];
  v48 = MEMORY[0x277CDF948];
  *&v102 = v46;
  *(&v102 + 1) = MEMORY[0x277CDF948];
  swift_getOpaqueTypeConformance2();
  sub_20CE7E9BC();
  v50 = v49;
  sub_20CE7EA8C(255);
  v52 = v51;
  v53 = sub_20CE7F208(&qword_281111A40, sub_20CE7EA8C, &qword_281111898, sub_20CE7EAB4);
  *&v101 = v52;
  *(&v101 + 1) = v47;
  *&v102 = v53;
  *(&v102 + 1) = v48;
  v54 = swift_getOpaqueTypeConformance2();
  *&v101 = v50;
  *(&v101 + 1) = v54;
  swift_getOpaqueTypeConformance2();
  v55 = v93;
  sub_20CE92BD0();
  (v42[1])(v41, v45);
LABEL_8:
  sub_20CE838A8(v96, sub_20CE831C8);
  sub_20CE73474(v55, v95);
}

void sub_20CE7FFC8()
{
  if (!qword_281111AB8)
  {
    sub_20CE834BC(255, &qword_281111970, sub_20CE7DA3C, sub_20CE7E8B4, MEMORY[0x277CE0338]);
    v0 = sub_20CE929B0();
    if (!v1)
    {
      atomic_store(v0, &qword_281111AB8);
    }
  }
}

uint64_t sub_20CE80090@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v36 = a1;
  v37 = sub_20CE92C00();
  v35 = *(v37 - 8);
  v3 = *(v35 + 64);
  MEMORY[0x28223BE20](v37);
  v5 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_20CE92C20();
  v33 = *(v34 - 8);
  v6 = *(v33 + 64);
  MEMORY[0x28223BE20](v34);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20CE7EAB4(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20CE7EA8C(0);
  v14 = v13;
  v15 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20CE7E9BC();
  v19 = v18;
  v20 = *(v18 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v18);
  v23 = &v33 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v12 = sub_20CE92B70();
  *(v12 + 1) = 0;
  v12[16] = 0;
  sub_20CE83540(0, &qword_281111AC0, sub_20CE7EAF0);
  sub_20CE808D0(v2, &v12[*(v24 + 44)]);
  sub_20CE92EA0();
  sub_20CE929F0();
  sub_20CE83710(v12, v17, sub_20CE7EAB4);
  v25 = &v17[*(v14 + 36)];
  v26 = v47;
  *(v25 + 4) = v46;
  *(v25 + 5) = v26;
  *(v25 + 6) = v48;
  v27 = v43;
  *v25 = v42;
  *(v25 + 1) = v27;
  v28 = v45;
  *(v25 + 2) = v44;
  *(v25 + 3) = v28;
  sub_20CE92C10();
  v29 = sub_20CE7F208(&qword_281111A40, sub_20CE7EA8C, &qword_281111898, sub_20CE7EAB4);
  v30 = MEMORY[0x277CDF950];
  v31 = MEMORY[0x277CDF948];
  sub_20CE92DD0();
  (*(v33 + 8))(v8, v34);
  sub_20CE83848(v17, sub_20CE7EA8C);
  sub_20CE92BF0();
  v38 = v14;
  v39 = v30;
  v40 = v29;
  v41 = v31;
  swift_getOpaqueTypeConformance2();
  sub_20CE92DE0();
  (*(v35 + 8))(v5, v37);
  return (*(v20 + 8))(v23, v19);
}

__n128 sub_20CE804F0@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v22 = a2;
  v5 = sub_20CE92E40();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v23[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0) - 4];
  v10 = sub_20CE92F30();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v23[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0) - 4];
  (*(v11 + 16))(v14, a1, v10);
  v15 = (*(v11 + 88))(v14, v10);
  v16 = (v6 + 104);
  v17 = (v6 + 8);
  if (v15 == *MEMORY[0x277CE3B68])
  {
    (*v16)(v9, *MEMORY[0x277CE0FE0], v5);
    v18 = sub_20CE92E50();
    (*v17)(v9, v5);
    sub_20CE92EB0();
    sub_20CE929A0();
    *&v23[38] = v30;
    *&v23[22] = v29;
    *&v23[6] = v28;
    *(v27 + 2) = *v23;
    LOBYTE(v31) = 1;
    v25 = 0;
    v26 = v18;
    LOWORD(v27[0]) = 1;
    *(&v27[1] + 2) = *&v23[16];
    *(&v27[2] + 2) = *&v23[32];
    *&v27[3] = *(&v30 + 1);
    BYTE8(v27[3]) = 0;
    sub_20CE7ED1C();
    sub_20CE7EE74();
    sub_20CE92BD0();
  }

  else
  {
    (*v16)(v9, *MEMORY[0x277CE0FE0], v5);
    v19 = sub_20CE92E50();
    (*v17)(v9, v5);
    sub_20CE92EB0();
    sub_20CE929A0();
    *&v24[38] = v30;
    *&v24[22] = v29;
    *&v24[6] = v28;
    *&v32[2] = *v24;
    v25 = 1;
    v31 = v19;
    *v32 = 1;
    *&v32[18] = *&v24[16];
    *&v32[34] = *&v24[32];
    *&v32[48] = *(&v30 + 1);
    v32[56] = 1;
    sub_20CE7ED1C();
    sub_20CE7EE74();
    sub_20CE92BD0();
    (*(v11 + 8))(v14, v10);
    *&v32[16] = v27[1];
    *&v32[32] = v27[2];
    *&v32[41] = *(&v27[2] + 9);
    v31 = v26;
    *v32 = v27[0];
  }

  v20 = *&v32[32];
  *(a3 + 32) = *&v32[16];
  *(a3 + 48) = v20;
  *(a3 + 57) = *&v32[41];
  result = *v32;
  *a3 = v31;
  *(a3 + 16) = result;
  return result;
}

uint64_t sub_20CE808D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v194 = a1;
  v178 = a2;
  sub_20CE7F188();
  v174 = *(v2 - 8);
  v175 = v2;
  v3 = *(v174 + 64);
  MEMORY[0x28223BE20](v2);
  v173 = &v149 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20CE7F0FC(0);
  v172 = v5;
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v177 = &v149 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v171 = &v149 - v10;
  MEMORY[0x28223BE20](v9);
  v176 = &v149 - v11;
  v189 = sub_20CE929C0();
  v193 = *(v189 - 8);
  v12 = *(v193 + 64);
  v13 = MEMORY[0x28223BE20](v189);
  v188 = &v149 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v187 = &v149 - v15;
  v16 = sub_20CE92CD0();
  v182 = *(v16 - 8);
  KeyPath = v16;
  v17 = *(v182 + 64);
  MEMORY[0x28223BE20](v16);
  v181 = &v149 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20CE835A4(0);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v186 = &v149 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v185 = sub_20CE92CF0();
  v191 = *(v185 - 8);
  v22 = *(v191 + 64);
  MEMORY[0x28223BE20](v185);
  v184 = &v149 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v168 = sub_20CE92F10();
  v24 = *(v168 - 1);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v168);
  v27 = &v149 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v169 = sub_20CE92F30();
  v28 = *(v169 - 8);
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v169);
  v31 = &v149 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20CE7EBFC(0);
  v179 = *(v32 - 8);
  v180 = v32;
  v33 = *(v179 + 64);
  MEMORY[0x28223BE20](v32);
  v167 = &v149 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20CE7EBB4(0);
  v36 = *(*(v35 - 8) + 64);
  v37 = MEMORY[0x28223BE20](v35 - 8);
  v190 = &v149 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v37);
  v192 = &v149 - v39;
  sub_20CE93160();
  v170 = sub_20CE93150();
  sub_20CE93120();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_20CE7D004(v31);
  sub_20CE7D228(v27);
  (*(v24 + 8))(v27, v168);
  v40 = *(v28 + 8);
  v41 = v169;
  v40(v31, v169);
  if (qword_281111808 != -1)
  {
    swift_once();
  }

  v168 = qword_2811123B0;
  v42 = sub_20CE92E60();
  sub_20CE7D004(v31);
  sub_20CE804F0(v31, v42, &v203);

  v40(v31, v41);
  v197 = v205;
  v198[0] = v206[0];
  *(v198 + 9) = *(v206 + 9);
  v195 = v203;
  v196 = v204;
  sub_20CE7ECC0();
  v44 = v43;
  v45 = sub_20CE7EDFC();
  v46 = v167;
  sub_20CE92D40();
  v222[2] = v197;
  v223[0] = v198[0];
  *(v223 + 9) = *(v198 + 9);
  v222[0] = v195;
  v222[1] = v196;
  sub_20CE838A8(v222, sub_20CE7ECC0);
  *&v203 = v44;
  *(&v203 + 1) = v45;
  swift_getOpaqueTypeConformance2();
  v47 = v180;
  sub_20CE92DC0();
  (*(v179 + 8))(v46, v47);
  v48 = v168;
  v166 = "IDGET_PREGNANCY_TITLE";
  *&v203 = sub_20CE926B0();
  *(&v203 + 1) = v49;
  v165 = sub_20CE835D8();
  v50 = sub_20CE92D30();
  v179 = v51;
  v180 = v50;
  v53 = v52;
  v55 = v54;
  v162 = v48;

  v56 = *MEMORY[0x277CE0A70];
  v57 = v191;
  v59 = v184;
  v58 = v185;
  v163 = *(v191 + 104);
  v164 = v191 + 104;
  v163(v184, v56, v185);
  v60 = *MEMORY[0x277CE09A0];
  v61 = sub_20CE92C80();
  v62 = *(v61 - 8);
  v63 = *(v62 + 104);
  v64 = v186;
  v160 = v60;
  v157 = v63;
  v158 = v62 + 104;
  v63(v186, v60, v61);
  v65 = *(v62 + 56);
  v161 = v61;
  v159 = v62 + 56;
  v156 = v65;
  v65(v64, 0, 1, v61);
  sub_20CE92CB0();
  sub_20CE838A8(v64, sub_20CE835A4);
  v66 = *(v57 + 8);
  v191 = v57 + 8;
  v155 = v66;
  v66(v59, v58);
  sub_20CE92C90();
  sub_20CE92CC0();

  v68 = v181;
  v67 = v182;
  v69 = KeyPath;
  (*(v182 + 104))(v181, *MEMORY[0x277CE0A10], KeyPath);
  sub_20CE92CE0();

  (*(v67 + 8))(v68, v69);
  v70 = v180;
  v71 = sub_20CE92D10();
  v73 = v72;
  v75 = v74;

  sub_20CE8362C(v70, v53, v55 & 1);

  if (sub_20CE7D680())
  {
    *&v203 = sub_20CE92DF0();
    sub_20CE83908();
    v76 = sub_20CE92E10();
  }

  else
  {
    v77 = [objc_opt_self() labelColor];
    v76 = sub_20CE92E00();
  }

  *&v203 = v76;
  v180 = sub_20CE92D00();
  v181 = v78;
  v169 = v79;
  v81 = v80;
  sub_20CE8362C(v71, v73, v75 & 1);

  KeyPath = swift_getKeyPath();
  v182 = swift_getKeyPath();
  LODWORD(v179) = v81 & 1;
  v218 = v81 & 1;
  v215 = 0;
  v168 = swift_getKeyPath();
  LODWORD(v167) = sub_20CE92C70();
  v82 = v187;
  sub_20CE7D454(v187);
  v154 = *MEMORY[0x277CDFA00];
  v83 = v193;
  v84 = *(v193 + 104);
  v152 = v193 + 104;
  v153 = v84;
  v86 = v188;
  v85 = v189;
  v84(v188);
  v151 = sub_20CE83474(&qword_281111AB0, MEMORY[0x277CDFA28]);
  sub_20CE93070();
  v87 = *(v83 + 8);
  v193 = v83 + 8;
  v150 = v87;
  v87(v86, v85);
  v87(v82, v85);
  sub_20CE92980();
  v89 = v88;
  v91 = v90;
  v93 = v92;
  v95 = v94;
  v220 = 0;
  v96 = v162;
  *&v203 = sub_20CE926B0();
  *(&v203 + 1) = v97;
  v98 = sub_20CE92D30();
  v100 = v99;
  LOBYTE(v86) = v101;

  v103 = v184;
  v102 = v185;
  v163(v184, *MEMORY[0x277CE0A90], v185);
  v104 = v186;
  v105 = v161;
  v157(v186, v160, v161);
  v156(v104, 0, 1, v105);
  sub_20CE92CB0();
  sub_20CE838A8(v104, sub_20CE835A4);
  v155(v103, v102);
  sub_20CE92CA0();
  sub_20CE92CC0();

  v106 = sub_20CE92D10();
  v108 = v107;
  LOBYTE(v103) = v109;

  sub_20CE8362C(v98, v100, v86 & 1);

  v110 = [objc_opt_self() systemIndigoColor];
  *&v203 = sub_20CE92E00();
  v111 = sub_20CE92D00();
  v113 = v112;
  LOBYTE(v100) = v114;
  v116 = v115;
  sub_20CE8362C(v106, v108, v103 & 1);

  *&v203 = v111;
  *(&v203 + 1) = v113;
  LOBYTE(v105) = v100 & 1;
  LOBYTE(v204) = v100 & 1;
  *(&v204 + 1) = v116;
  v117 = v173;
  sub_20CE92D40();
  sub_20CE8362C(v111, v113, v105);

  LOBYTE(v111) = sub_20CE92C70();
  v118 = v187;
  sub_20CE7D454(v187);
  v119 = v188;
  v120 = v189;
  v153(v188, v154, v189);
  sub_20CE93070();
  v121 = v150;
  v150(v119, v120);
  v121(v118, v120);
  sub_20CE92980();
  v123 = v122;
  v125 = v124;
  v127 = v126;
  v129 = v128;
  v130 = v171;
  (*(v174 + 32))(v171, v117, v175);
  v131 = v130 + *(v172 + 36);
  *v131 = v111;
  *(v131 + 8) = v123;
  *(v131 + 16) = v125;
  *(v131 + 24) = v127;
  *(v131 + 32) = v129;
  *(v131 + 40) = 0;
  v132 = v176;
  sub_20CE83710(v130, v176, sub_20CE7F0FC);
  v133 = v190;
  sub_20CE83778(v192, v190, sub_20CE7EBB4);
  v134 = v177;
  sub_20CE83778(v132, v177, sub_20CE7F0FC);
  v135 = v178;
  sub_20CE83778(v133, v178, sub_20CE7EBB4);
  sub_20CE7EB24();
  v137 = v135 + v136[12];
  *v137 = 0;
  *(v137 + 8) = 0;
  v138 = v135 + v136[16];
  v139 = v169;
  *&v195 = v180;
  *(&v195 + 1) = v169;
  LOBYTE(v196) = v179;
  *(&v196 + 1) = *v217;
  DWORD1(v196) = *&v217[3];
  *(&v196 + 1) = v181;
  *&v197 = KeyPath;
  BYTE8(v197) = 0;
  *(&v197 + 9) = *v216;
  HIDWORD(v197) = *&v216[3];
  *&v198[0] = v182;
  *(&v198[0] + 1) = 2;
  LOBYTE(v198[1]) = 0;
  *(&v198[1] + 1) = *v219;
  DWORD1(v198[1]) = *&v219[3];
  v140 = v168;
  *(&v198[1] + 1) = v168;
  *&v199 = 0x3FE0000000000000;
  LOBYTE(v106) = v167;
  BYTE8(v199) = v167;
  *(&v199 + 9) = *v221;
  HIDWORD(v199) = *&v221[3];
  *&v200 = v89;
  *(&v200 + 1) = v91;
  *&v201 = v93;
  *(&v201 + 1) = v95;
  v202 = 0;
  v141 = v195;
  v142 = v196;
  v143 = v198[0];
  *(v138 + 32) = v197;
  *(v138 + 48) = v143;
  *v138 = v141;
  *(v138 + 16) = v142;
  v144 = v198[1];
  v145 = v199;
  v146 = v200;
  v147 = v201;
  *(v138 + 128) = 0;
  *(v138 + 96) = v146;
  *(v138 + 112) = v147;
  *(v138 + 64) = v144;
  *(v138 + 80) = v145;
  sub_20CE83778(v134, v135 + v136[20], sub_20CE7F0FC);
  sub_20CE837E0(&v195, &v203, sub_20CE7EF98);
  sub_20CE83848(v132, sub_20CE7F0FC);
  sub_20CE83848(v192, sub_20CE7EBB4);
  sub_20CE83848(v134, sub_20CE7F0FC);
  *&v203 = v180;
  *(&v203 + 1) = v139;
  LOBYTE(v204) = v179;
  *(&v204 + 1) = *v217;
  DWORD1(v204) = *&v217[3];
  *(&v204 + 1) = v181;
  *&v205 = KeyPath;
  BYTE8(v205) = 0;
  *(&v205 + 9) = *v216;
  HIDWORD(v205) = *&v216[3];
  *&v206[0] = v182;
  *(&v206[0] + 1) = 2;
  LOBYTE(v206[1]) = 0;
  DWORD1(v206[1]) = *&v219[3];
  *(&v206[1] + 1) = *v219;
  *(&v206[1] + 1) = v140;
  v207 = 0x3FE0000000000000;
  v208 = v106;
  *&v209[3] = *&v221[3];
  *v209 = *v221;
  v210 = v89;
  v211 = v91;
  v212 = v93;
  v213 = v95;
  v214 = 0;
  sub_20CE838A8(&v203, sub_20CE7EF98);
  sub_20CE83848(v190, sub_20CE7EBB4);
}

uint64_t sub_20CE81ADC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(char *, uint64_t, uint64_t)@<X2>, char *a4@<X8>)
{
  v115 = a3;
  v124 = a2;
  v125 = a1;
  v117 = a4;
  sub_20CE7EC30(0, &qword_2811118F0, sub_20CE7E2D4, sub_20CE7E5BC);
  v118 = *(v4 - 8);
  v119 = v4;
  v5 = *(v118 + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v132 = v99 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v131 = v99 - v8;
  v112 = sub_20CE92CD0();
  *&v133 = *(v112 - 8);
  v9 = *(v133 + 64);
  MEMORY[0x28223BE20](v112);
  v120 = v99 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20CE835A4(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = v99 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v127 = sub_20CE92CF0();
  *(&v133 + 1) = *(v127 - 8);
  v15 = *(*(&v133 + 1) + 64);
  MEMORY[0x28223BE20](v127);
  v126 = v99 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20CE7EC30(0, &qword_281111900, sub_20CE7DD28, sub_20CE7DDD4);
  v129 = *(v17 - 8);
  v130 = v17;
  v18 = v129[8];
  v19 = MEMORY[0x28223BE20](v17);
  v128 = v99 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v134 = v99 - v21;
  sub_20CE93160();
  v116 = sub_20CE93150();
  sub_20CE93120();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (qword_281111808 != -1)
  {
    swift_once();
  }

  v22 = qword_2811123B0;
  v151 = sub_20CE926B0();
  v152 = v23;
  v123 = sub_20CE835D8();
  v24 = sub_20CE92D30();
  v122 = v25;
  v27 = v26;

  v28 = *MEMORY[0x277CE0A58];
  v29 = *(&v133 + 1);
  v30 = *(*(&v133 + 1) + 104);
  v113 = *(&v133 + 1) + 104;
  v114 = v30;
  v31 = v126;
  v32 = v127;
  v30(v126, v28, v127);
  v110 = *MEMORY[0x277CE09A0];
  v33 = v110;
  v34 = sub_20CE92C80();
  v35 = *(v34 - 8);
  v109 = *(v35 + 104);
  v111 = v35 + 104;
  v36 = v33;
  v37 = v34;
  v105 = v34;
  v109(v14, v36);
  v38 = *(v35 + 56);
  v99[1] = v35 + 56;
  v108 = v38;
  v38(v14, 0, 1, v37);
  sub_20CE92CB0();
  v107 = sub_20CE835A4;
  sub_20CE838A8(v14, sub_20CE835A4);
  v39 = *(v29 + 8);
  *(&v133 + 1) = v29 + 8;
  v106 = v39;
  v39(v31, v32);
  sub_20CE92CA0();
  sub_20CE92CC0();
  v100 = v14;

  v104 = *MEMORY[0x277CE0A10];
  v40 = v133;
  v41 = *(v133 + 104);
  v102 = v133 + 104;
  v103 = v41;
  v42 = v120;
  v43 = v112;
  v41(v120);
  sub_20CE92CE0();

  v44 = *(v40 + 8);
  *&v133 = v40 + 8;
  v101 = v44;
  v44(v42, v43);
  v45 = v27;
  v46 = v122;
  v47 = sub_20CE92D10();
  v49 = v48;
  LOBYTE(v35) = v50;
  v121 = v51;

  sub_20CE8362C(v24, v46, v45 & 1);

  KeyPath = swift_getKeyPath();
  sub_20CE7636C(0, &qword_27C8181A0, 0x277D75348);
  sub_20CE931E0();
  v53 = sub_20CE92E00();
  v151 = v47;
  v152 = v49;
  v153 = v35 & 1;
  v155 = v121;
  v156 = KeyPath;
  v157 = 0x3FE0000000000000;
  v158 = v53;
  sub_20CE7DD28();
  v54 = v43;
  sub_20CE7DDD4();
  sub_20CE92D40();
  sub_20CE8362C(v47, v49, v35 & 1);

  v151 = sub_20CE82778(v124);
  v152 = v55;
  v56 = sub_20CE92D30();
  v122 = v57;
  v123 = v56;
  LOBYTE(v47) = v58;
  v125 = v59;
  LODWORD(v124) = sub_20CE92C70();
  sub_20CE92980();
  v61 = v60;
  v63 = v62;
  v65 = v64;
  v67 = v66;
  LODWORD(v121) = v47 & 1;
  LOBYTE(v151) = v47 & 1;
  LOBYTE(v141) = 0;
  v68 = v126;
  v69 = v127;
  v114(v126, *MEMORY[0x277CE0A70], v127);
  v70 = v100;
  v71 = v105;
  (v109)(v100, v110, v105);
  v108(v70, 0, 1, v71);
  sub_20CE92CB0();
  sub_20CE838A8(v70, v107);
  v106(v68, v69);
  sub_20CE92C90();
  sub_20CE92CC0();

  v72 = v120;
  v103(v120, v104, v54);
  *(&v133 + 1) = sub_20CE92CE0();

  v101(v72, v54);
  *&v133 = swift_getKeyPath();
  v73 = [objc_opt_self() labelColor];
  v127 = sub_20CE92E00();
  v120 = swift_getKeyPath();
  v126 = swift_getKeyPath();
  LOBYTE(v151) = 0;
  v74 = swift_getKeyPath();
  v75 = v131;
  sub_20CE82A80(v131);
  v76 = v128;
  v77 = v129[2];
  v78 = v130;
  v77(v128, v134, v130);
  v135 = 0;
  v79 = v118;
  v80 = v119;
  v115 = *(v118 + 16);
  v115(v132, v75, v119);
  v81 = v117;
  v77(v117, v76, v78);
  sub_20CE7DC38();
  v83 = &v81[v82[12]];
  v84 = v135;
  *v83 = 0;
  v83[8] = v84;
  v85 = &v81[v82[16]];
  *&v141 = v123;
  *(&v141 + 1) = v122;
  LOBYTE(v142) = v121;
  *(&v142 + 1) = *v140;
  DWORD1(v142) = *&v140[3];
  *(&v142 + 1) = v125;
  LOBYTE(v143) = v124;
  DWORD1(v143) = *&v139[3];
  *(&v143 + 1) = *v139;
  *(&v143 + 1) = v61;
  *&v144 = v63;
  *(&v144 + 1) = v65;
  *&v145 = v67;
  BYTE8(v145) = 0;
  HIDWORD(v145) = *&v136[3];
  *(&v145 + 9) = *v136;
  v146 = v133;
  *&v147 = v127;
  *(&v147 + 1) = v120;
  LOBYTE(v148) = 0;
  DWORD1(v148) = *&v137[3];
  *(&v148 + 1) = *v137;
  *(&v148 + 1) = v126;
  *&v149 = 2;
  BYTE8(v149) = 0;
  HIDWORD(v149) = *(v138 + 3);
  *(&v149 + 9) = v138[0];
  v86 = v74;
  *&v150 = v74;
  *(&v150 + 1) = 0x3FE0000000000000;
  v87 = v142;
  *v85 = v141;
  *(v85 + 1) = v87;
  v88 = v143;
  v89 = v144;
  v90 = v146;
  *(v85 + 4) = v145;
  *(v85 + 5) = v90;
  *(v85 + 2) = v88;
  *(v85 + 3) = v89;
  v91 = v147;
  v92 = v148;
  v93 = v150;
  *(v85 + 8) = v149;
  *(v85 + 9) = v93;
  *(v85 + 6) = v91;
  *(v85 + 7) = v92;
  v94 = v132;
  v115(&v81[v82[20]], v132, v80);
  sub_20CE837E0(&v141, &v151, sub_20CE7DFB4);
  v95 = *(v79 + 8);
  v95(v131, v80);
  v96 = v130;
  v97 = v129[1];
  v97(v134, v130);
  v95(v94, v80);
  v151 = v123;
  v152 = v122;
  v153 = v121;
  *v154 = *v140;
  *&v154[3] = *&v140[3];
  v155 = v125;
  LOBYTE(v156) = v124;
  *(&v156 + 1) = *v139;
  HIDWORD(v156) = *&v139[3];
  v157 = v61;
  v158 = v63;
  v159 = v65;
  v160 = v67;
  v161 = 0;
  *&v162[3] = *&v136[3];
  *v162 = *v136;
  v163 = v133;
  v164 = v127;
  v165 = v120;
  v166 = 0;
  *v167 = *v137;
  *&v167[3] = *&v137[3];
  v168 = v126;
  v169 = 2;
  v170 = 0;
  *&v171[3] = *(v138 + 3);
  *v171 = v138[0];
  v172 = v86;
  v173 = 0x3FE0000000000000;
  sub_20CE838A8(&v151, sub_20CE7DFB4);
  v97(v128, v96);
}

uint64_t sub_20CE82778(uint64_t a1)
{
  v26 = a1;
  v1 = sub_20CE929C0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](v1);
  v6 = v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = v23 - v7;
  v9 = sub_20CE92720();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = objc_opt_self();
  sub_20CE92710();
  v15 = sub_20CE926E0();
  v16 = *(v10 + 8);
  v25 = v9;
  v23[0] = v16;
  v23[1] = v10 + 8;
  v16(v13, v9);
  v24 = v14;
  v17 = [v14 gestationalAgeStringOnDate:v15 pregnancySample:v26];

  v18 = sub_20CE930B0();
  sub_20CE7D454(v8);
  (*(v2 + 104))(v6, *MEMORY[0x277CDFA10], v1);
  sub_20CE83474(&qword_281111AB0, MEMORY[0x277CDFA28]);
  LOBYTE(v17) = sub_20CE93070();
  v19 = *(v2 + 8);
  v19(v6, v1);
  v19(v8, v1);
  if (v17)
  {

    sub_20CE92710();
    v20 = sub_20CE926E0();
    (v23[0])(v13, v25);
    v21 = [v24 gestationalAgeCompactStringOnDate:v20 pregnancySample:v26];

    v18 = sub_20CE930B0();
  }

  return v18;
}

uint64_t sub_20CE82A80@<X0>(uint64_t a1@<X8>)
{
  v31[0] = a1;
  v1 = sub_20CE92880();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20CE7E4D0();
  v7 = v6;
  v8 = *(v6 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v6);
  v11 = v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20CE7E2D4();
  v13 = v12;
  v14 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v16 = v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20CE92840();
  v31[1] = v17;
  v32 = xmmword_20CE93B30;
  sub_20CE8363C();
  sub_20CE92E20();
  sub_20CE92990();
  sub_20CE83474(&qword_2811118B8, sub_20CE7E4D0);
  sub_20CE83474(&qword_281111FA8, MEMORY[0x277D11A20]);
  sub_20CE92D80();
  (*(v2 + 8))(v5, v1);
  (*(v8 + 8))(v11, v7);
  sub_20CE92EB0();
  sub_20CE929A0();
  sub_20CE7E3A4(0);
  v19 = &v16[*(v18 + 36)];
  v20 = v33;
  *v19 = v32;
  v19[1] = v20;
  v19[2] = v34;
  KeyPath = swift_getKeyPath();
  sub_20CE834BC(0, &qword_281111A08, sub_20CE7E3A4, sub_20CE7E554, MEMORY[0x277CDFAB8]);
  v23 = &v16[*(v22 + 36)];
  sub_20CE7E554(0);
  v25 = *(v24 + 28);
  v26 = sub_20CE92E90();
  (*(*(v26 - 8) + 56))(v23 + v25, 1, 1, v26);
  *v23 = KeyPath;
  v27 = swift_getKeyPath();
  sub_20CE92850();
  v28 = &v16[*(v13 + 36)];
  *v28 = v27;
  v28[1] = v29;
  sub_20CE7E5BC();
  sub_20CE92D40();
  return sub_20CE83848(v16, sub_20CE7E2D4);
}

uint64_t sub_20CE82E84@<X0>(uint64_t a1@<X8>)
{
  sub_20CE93160();
  sub_20CE93150();
  sub_20CE93120();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_20CE92B40();
  v2 = sub_20CE92D20();
  v4 = v3;
  v6 = v5;
  v8 = v7;

  *a1 = v2;
  *(a1 + 8) = v4;
  *(a1 + 16) = v6 & 1;
  *(a1 + 24) = v8;
  return result;
}

uint64_t sub_20CE82F6C(uint64_t a1)
{
  sub_20CE7E588(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_20CE837E0(a1, &v6 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), sub_20CE7E588);
  return sub_20CE92A50();
}

uint64_t sub_20CE8302C()
{
  v1 = v0;
  sub_20CE7D960(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20CE7D994();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = (&v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v9 = sub_20CE92EB0();
  v9[1] = v10;
  sub_20CE7FFC8();
  sub_20CE7F490(v1, v9 + *(v11 + 44));
  sub_20CE926C0();
  sub_20CE83474(&qword_281111888, sub_20CE7D994);
  sub_20CE92D50();
  sub_20CE838A8(v5, sub_20CE7D960);
  return sub_20CE83848(v9, sub_20CE7D994);
}

uint64_t type metadata accessor for MenstrualCyclesWidgetRectangularView()
{
  result = qword_281111EF0;
  if (!qword_281111EF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20CE8325C()
{
  sub_20CE83968(319, &qword_281111FF8, MEMORY[0x277CE3BA0], MEMORY[0x277CDF468]);
  if (v0 <= 0x3F)
  {
    sub_20CE83968(319, &qword_281111AE0, MEMORY[0x277CE3AF8], MEMORY[0x277CDF468]);
    if (v1 <= 0x3F)
    {
      sub_20CE83968(319, &qword_281111AD8, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
      if (v2 <= 0x3F)
      {
        sub_20CE83968(319, &qword_281111AD0, MEMORY[0x277CDFA28], MEMORY[0x277CDF468]);
        if (v3 <= 0x3F)
        {
          sub_20CE83424(319, &qword_281111AC8, MEMORY[0x277D839B0], MEMORY[0x277CDF468]);
          if (v4 <= 0x3F)
          {
            sub_20CE831C8(319);
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_20CE83424(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_20CE83474(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_20CE834BC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

void sub_20CE83540(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_20CE929B0();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_20CE835D8()
{
  result = qword_281111840;
  if (!qword_281111840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281111840);
  }

  return result;
}

uint64_t sub_20CE8362C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

unint64_t sub_20CE8363C()
{
  result = qword_27C8181A8;
  if (!qword_27C8181A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8181A8);
  }

  return result;
}

uint64_t sub_20CE83690(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_20CE83968(0, a3, a4, MEMORY[0x277CDF458]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_20CE83710(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_20CE83778(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_20CE837E0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_20CE83848(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_20CE838A8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_20CE83908()
{
  result = qword_27C8181B0;
  if (!qword_27C8181B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8181B0);
  }

  return result;
}

uint64_t sub_20CE8395C(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

void sub_20CE83968(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

id sub_20CE839CC()
{
  type metadata accessor for MenstrualCyclesWidgetTimelineGenerator();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass_];
  qword_2811123F0 = result;
  return result;
}

uint64_t sub_20CE83A24()
{
  v0 = sub_20CE92970();
  __swift_allocate_value_buffer(v0, qword_2811123B8);
  __swift_project_value_buffer(v0, qword_2811123B8);
  return sub_20CE92960();
}

uint64_t MenstrualCyclesWidgetTimelineGenerator.__allocating_init(healthStore:)(uint64_t a1)
{
  v3 = sub_20CE92750();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v1 + 48);
  v9 = *(v1 + 52);
  v10 = swift_allocObject();
  sub_20CE927F0();
  (*(v4 + 104))(v7, *MEMORY[0x277CC9830], v3);
  sub_20CE92760();
  (*(v4 + 8))(v7, v3);
  *(v10 + 16) = a1;
  *(v10 + 24) = [objc_allocWithZone(MEMORY[0x277D11A10]) initWithHealthStore_];
  return v10;
}

uint64_t String.init<A>(describingSensitive:)(uint64_t a1, uint64_t a2)
{
  sub_20CE932D0();
  v4 = HKSensitiveLogItem();
  swift_unknownObjectRelease();
  sub_20CE93220();
  swift_unknownObjectRelease();
  v5 = v13;
  v6 = __swift_project_boxed_opaque_existential_0(v12, v13);
  v7 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  (*(v9 + 16))(v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = sub_20CE930D0();
  (*(*(a2 - 8) + 8))(a1, a2);
  __swift_destroy_boxed_opaque_existential_0(v12);
  return v10;
}

uint64_t MenstrualCyclesWidgetTimelineGenerator.init(healthStore:)(uint64_t a1)
{
  v3 = sub_20CE92750();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20CE927F0();
  (*(v4 + 104))(v7, *MEMORY[0x277CC9830], v3);
  sub_20CE92760();
  (*(v4 + 8))(v7, v3);
  *(v1 + 16) = a1;
  *(v1 + 24) = [objc_allocWithZone(MEMORY[0x277D11A10]) initWithHealthStore_];
  return v1;
}

uint64_t sub_20CE83E7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a3;
  v31 = a4;
  v29 = *v4;
  v7 = sub_20CE92720();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v28 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v26 - v11;
  v13 = *(v8 + 16);
  v13(&v26 - v11, a1, v7);
  v13(&v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v7);
  v14 = *(v8 + 80);
  v15 = (v14 + 16) & ~v14;
  v16 = v9 + 7;
  v17 = (v9 + 7 + v15) & 0xFFFFFFFFFFFFFFF8;
  v18 = (v17 + 15) & 0xFFFFFFFFFFFFFFF8;
  v19 = (v14 + 16 + v18) & ~v14;
  v27 = (v16 + v19) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  v21 = *(v8 + 32);
  v21(v20 + v15, v12, v7);
  *(v20 + v17) = v4;
  v22 = (v20 + v18);
  v23 = v31;
  *v22 = v30;
  v22[1] = v23;
  v21(v20 + v19, v28, v7);
  *(v20 + v27) = v29;
  v24 = *(*v4 + 144);

  v24(sub_20CE8C668, v20);
}

uint64_t sub_20CE840B8(void *a1, char *a2, unint64_t a3, void (*a4)(uint64_t), uint64_t a5, char *a6, uint64_t a7)
{
  v243 = a7;
  v251 = a6;
  v254 = a4;
  v255 = a5;
  v258 = a3;
  v246 = a1;
  v225 = sub_20CE927B0();
  v224 = *(v225 - 8);
  v8 = *(v224 + 64);
  MEMORY[0x28223BE20](v225);
  v222 = &v207 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v223 = sub_20CE927C0();
  v221 = *(v223 - 8);
  v10 = *(v221 + 64);
  MEMORY[0x28223BE20](v223);
  v220 = &v207 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v233 = sub_20CE92770();
  v219 = *(v233 - 8);
  v12 = *(v219 + 64);
  MEMORY[0x28223BE20](v233);
  v218 = &v207 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x277D83D88];
  sub_20CE8CAF8(0, &qword_27C8181C0, MEMORY[0x277CC9A70], MEMORY[0x277D83D88]);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v215 = &v207 - v17;
  sub_20CE8CAF8(0, &qword_27C8181C8, MEMORY[0x277CC99E8], v14);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v214 = &v207 - v20;
  v217 = sub_20CE926A0();
  v216 = *(v217 - 8);
  v21 = *(v216 + 64);
  MEMORY[0x28223BE20](v217);
  v231 = &v207 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v247 = sub_20CE93010();
  v248 = *(v247 - 8);
  v23 = *(v248 + 64);
  MEMORY[0x28223BE20](v247);
  v236 = &v207 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v238 = type metadata accessor for MenstrualCyclesWidgetEntry(0);
  v237 = *(v238 - 8);
  v25 = *(v237 + 64);
  v26 = MEMORY[0x28223BE20](v238);
  v213 = &v207 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x28223BE20](v26);
  v210 = &v207 - v29;
  v30 = MEMORY[0x28223BE20](v28);
  v235 = &v207 - v31;
  MEMORY[0x28223BE20](v30);
  v227 = &v207 - v32;
  sub_20CE8CAC4(0);
  v34 = *(*(v33 - 8) + 64);
  v35 = MEMORY[0x28223BE20](v33 - 8);
  v209 = &v207 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = MEMORY[0x28223BE20](v35);
  v207 = &v207 - v38;
  v39 = MEMORY[0x28223BE20](v37);
  v208 = &v207 - v40;
  v41 = MEMORY[0x28223BE20](v39);
  v228 = (&v207 - v42);
  v43 = MEMORY[0x28223BE20](v41);
  v226 = &v207 - v44;
  MEMORY[0x28223BE20](v43);
  v240 = (&v207 - v45);
  sub_20CE831C8(0);
  v47 = *(*(v46 - 8) + 64);
  v48 = MEMORY[0x28223BE20](v46 - 8);
  v229 = (&v207 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v48);
  v242 = &v207 - v50;
  v51 = sub_20CE92810();
  v52 = *(v51 - 8);
  v53 = *(v52 + 64);
  MEMORY[0x28223BE20](v51);
  v55 = &v207 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = sub_20CE92720();
  v57 = *(v56 - 8);
  v58 = *(v57 + 64);
  v59 = MEMORY[0x28223BE20](v56);
  v250 = &v207 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = MEMORY[0x28223BE20](v59);
  v245 = &v207 - v62;
  v63 = MEMORY[0x28223BE20](v61);
  v241 = &v207 - v64;
  v234 = v65;
  MEMORY[0x28223BE20](v63);
  v67 = &v207 - v66;
  v260 = sub_20CE92EE0();
  v68 = *(v260 - 8);
  v69 = *(v68 + 64);
  v70 = MEMORY[0x28223BE20](v260);
  v249 = &v207 - ((v71 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = MEMORY[0x28223BE20](v70);
  v244 = (&v207 - v73);
  v74 = MEMORY[0x28223BE20](v72);
  v239 = &v207 - v75;
  v232 = v76;
  MEMORY[0x28223BE20](v74);
  v78 = &v207 - v77;
  v79 = swift_allocObject();
  v253 = v79;
  *(v79 + 16) = MEMORY[0x277D84F90];
  v230 = (v79 + 16);
  v252 = v57;
  v82 = *(v57 + 16);
  v81 = (v57 + 16);
  v80 = v82;
  v259 = v56;
  (v82)(v67, a2, v56);
  v211 = v52;
  v83 = *(v52 + 16);
  v212 = v51;
  v83(v55, v258 + OBJC_IVAR____TtC29HealthMenstrualCyclesWidgetUI38MenstrualCyclesWidgetTimelineGenerator_gregorianCalendar, v51);
  v256 = v67;
  sub_20CE92EC0();
  v257 = v78;
  v261 = v68;
  if (v246)
  {
    v84 = v246;
    v85 = [v84 state];
    v86 = v259;
    v87 = v260;
    v88 = v251;
    v89 = v80;
    v242 = v84;
    if (v85 == 1)
    {
      v90 = v256;
      (v89)(v256, a2, v259);
      v91 = v84;
      sub_20CE91194(v91, v90, &v262);
      v92 = dword_20CE93D4C[v262];
      v93 = v236;
      sub_20CE92FE0();
      v241 = a2;
      (v89)(v245, a2, v86);
      v94 = v81;
      v228 = *(v261 + 16);
      v228(v244, v257, v87);
      v95 = v91;
      v96 = v86;
      v97 = v229;
      v239 = v95;
      sub_20CE74F8C(v95, v229);
      v98 = type metadata accessor for MenstrualCyclesWidgetEntry.State(0);
      (*(*(v98 - 8) + 56))(v97, 0, 1, v98);
      v99 = v248;
      v100 = v208;
      v101 = v93;
      v102 = v247;
      (*(v248 + 16))(v208, v101, v247);
      (*(v99 + 56))(v100, 0, 1, v102);
      v103 = v210;
      v246 = v94;
      v240 = v89;
      (v89)(v210, v245, v96);
      v104 = v238;
      v105 = v87;
      v106 = v100;
      v228((v103 + *(v238 + 20)), v244, v105);
      sub_20CE8CF98(v97, v103 + v104[6], sub_20CE831C8);
      v107 = v104;
      *(v103 + v104[7]) = 0;
      v108 = v207;
      sub_20CE8CF98(v100, v207, sub_20CE8CAC4);
      v109 = *(v99 + 48);
      v110 = v109(v108, 1, v102);
      if (v110 == 1)
      {
        sub_20CE8CB5C(v108, sub_20CE8CAC4);
        v111 = 0;
      }

      else
      {
        sub_20CE92FF0();
        v111 = v140;
        (*(v99 + 8))(v108, v102);
      }

      v141 = v209;
      v142 = v103 + v107[8];
      *v142 = v111;
      *(v142 + 4) = v110 == 1;
      sub_20CE8CF98(v106, v141, sub_20CE8CAC4);
      v143 = v109(v141, 1, v102);
      if (v143 == 1)
      {
        sub_20CE8CB5C(v106, sub_20CE8CAC4);
        sub_20CE8CB5C(v229, sub_20CE831C8);
        (*(v261 + 8))(v244, v260);
        (*(v252 + 8))(v245, v259);
        sub_20CE8CB5C(v141, sub_20CE8CAC4);
        v144 = 0;
      }

      else
      {
        sub_20CE93000();
        v144 = v145;
        sub_20CE8CB5C(v106, sub_20CE8CAC4);
        sub_20CE8CB5C(v229, sub_20CE831C8);
        (*(v261 + 8))(v244, v260);
        (*(v252 + 8))(v245, v259);
        (*(v99 + 8))(v141, v102);
      }

      v146 = v237;
      v147 = v213;
      v148 = v103 + v107[9];
      *v148 = v144;
      *(v148 + 8) = v143 == 1;
      v149 = v103 + v107[10];
      *v149 = 0;
      *(v149 + 8) = 1;
      v150 = v235;
      sub_20CE8CBBC(v103, v235);
      sub_20CE8CF98(v150, v147, type metadata accessor for MenstrualCyclesWidgetEntry);
      v151 = v230;
      v152 = *v230;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v151 = v152;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v152 = sub_20CE8F7F4(0, v152[2] + 1, 1, v152);
        *v151 = v152;
      }

      v155 = v152[2];
      v154 = v152[3];
      if (v155 >= v154 >> 1)
      {
        v152 = sub_20CE8F7F4(v154 > 1, v155 + 1, 1, v152);
      }

      v152[2] = v155 + 1;
      sub_20CE8CBBC(v147, v152 + ((*(v146 + 80) + 32) & ~*(v146 + 80)) + *(v146 + 72) * v155);
      *v151 = v152;
      v245 = OBJC_IVAR____TtC29HealthMenstrualCyclesWidgetUI38MenstrualCyclesWidgetTimelineGenerator_currentCalendar;
      (*(v211 + 56))(v214, 1, 1, v212);
      v156 = sub_20CE92820();
      (*(*(v156 - 8) + 56))(v215, 1, 1, v156);
      sub_20CE92690();
      v157 = v219;
      v158 = v218;
      (*(v219 + 104))(v218, *MEMORY[0x277CC9878], v233);
      v159 = v221;
      v160 = v220;
      v161 = v223;
      (*(v221 + 104))(v220, *MEMORY[0x277CC9900], v223);
      v162 = v224;
      v163 = v222;
      v164 = v225;
      v165 = (*(v224 + 104))(v222, *MEMORY[0x277CC98E8], v225);
      v244 = &v207;
      MEMORY[0x28223BE20](v165);
      v166 = v231;
      sub_20CE927A0();
      (*(v162 + 8))(v163, v164);
      (*(v159 + 8))(v160, v161);
      (*(v157 + 8))(v158, v233);
      (*(v216 + 8))(v166, v217);
      if (qword_281111B08 != -1)
      {
        swift_once();
      }

      v167 = sub_20CE92970();
      __swift_project_value_buffer(v167, qword_2811123B8);
      v168 = v253;

      v169 = sub_20CE92950();
      v170 = sub_20CE93170();
      v171 = os_log_type_enabled(v169, v170);
      v172 = v248;
      v87 = v260;
      if (v171)
      {
        v173 = swift_slowAlloc();
        v174 = swift_slowAlloc();
        v262 = v174;
        *v173 = 136380931;
        v175 = sub_20CE93320();
        v177 = sub_20CE7C260(v175, v176, &v262);

        *(v173 + 4) = v177;
        *(v173 + 12) = 2080;
        sub_20CE8CAF8(0, &qword_27C8181D0, sub_20CE8CF30, MEMORY[0x277D84560]);
        v178 = swift_allocObject();
        *(v178 + 16) = xmmword_20CE93A50;
        v179 = v230;
        swift_beginAccess();
        *(v178 + 32) = *(v168 + 16);

        sub_20CE8CF30(0);
        v181 = MEMORY[0x20F316CF0](v178, v180);
        v183 = v182;

        v87 = v260;
        v184 = sub_20CE7C260(v181, v183, &v262);

        *(v173 + 14) = v184;
        a2 = v241;
        _os_log_impl(&dword_20CE71000, v169, v170, "[%{private}s] TimelineEntries in the generator are: %s", v173, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x20F317370](v174, -1, -1);
        MEMORY[0x20F317370](v173, -1, -1);

        v89 = v240;
      }

      else
      {

        v89 = v240;
        v179 = v230;
        a2 = v241;
      }

      swift_beginAccess();
      v185 = *v179;

      v254(v186);

      sub_20CE8CB5C(v235, type metadata accessor for MenstrualCyclesWidgetEntry);
      (*(v172 + 8))(v236, v247);
      v86 = v259;
      v88 = v251;
    }

    (v89)(v256, a2, v86);
    v187 = v261;
    (*(v261 + 16))(v249, v257, v87);
    (v89)(v250, v88, v86);
    v188 = v252;
    v189 = *(v252 + 80);
    v190 = (v189 + 16) & ~v189;
    v191 = (v234 + *(v187 + 80) + v190) & ~*(v187 + 80);
    v248 = (v232 + v191 + 7) & 0xFFFFFFFFFFFFFFF8;
    v192 = (v248 + 15) & 0xFFFFFFFFFFFFFFF8;
    v193 = v87;
    v251 = ((v192 + 23) & 0xFFFFFFFFFFFFFFF8);
    v194 = (v251 + 15) & 0xFFFFFFFFFFFFFFF8;
    v195 = (v189 + v194 + 8) & ~v189;
    v247 = (v234 + v195 + 7) & 0xFFFFFFFFFFFFFFF8;
    v196 = swift_allocObject();
    v197 = *(v188 + 32);
    v197(v196 + v190, v256, v86);
    (*(v261 + 32))(v196 + v191, v249, v193);
    v198 = v242;
    *(v196 + v248) = v242;
    v199 = (v196 + v192);
    v200 = v255;
    *v199 = v254;
    v199[1] = v200;
    v201 = v250;
    *&v251[v196] = v253;
    v203 = v258;
    v202 = v259;
    *(v196 + v194) = v258;
    v197(v196 + v195, v201, v202);
    *(v196 + v247) = v243;
    v204 = *(*v203 + 136);
    v205 = v198;

    v204(sub_20CE8CDD4, v196);

    (*(v261 + 8))(v257, v260);
  }

  else
  {
    sub_20CE8CAF8(0, &qword_27C818178, type metadata accessor for MenstrualCyclesWidgetEntry, MEMORY[0x277D84560]);
    v112 = *(v237 + 72);
    v258 = (*(v237 + 80) + 32) & ~*(v237 + 80);
    v256 = swift_allocObject();
    *(v256 + 16) = xmmword_20CE93A50;
    v113 = v241;
    v114 = v259;
    (v80)(v241, a2, v259);
    v246 = v81;
    v251 = *(v68 + 16);
    v115 = v239;
    v116 = v260;
    (v251)(v239, v78, v260);
    v117 = type metadata accessor for MenstrualCyclesWidgetEntry.State(0);
    v118 = v242;
    (*(*(v117 - 8) + 56))(v242, 1, 1, v117);
    v119 = v248;
    v120 = v247;
    (*(v248 + 56))(v240, 1, 1, v247);
    v121 = v227;
    (v80)(v227, v113, v114);
    v122 = v238;
    (v251)(v121 + *(v238 + 20), v115, v116);
    sub_20CE8CF98(v118, v121 + v122[6], sub_20CE831C8);
    *(v121 + v122[7]) = 0;
    v123 = v240;
    v124 = v226;
    sub_20CE8CF98(v240, v226, sub_20CE8CAC4);
    v125 = *(v119 + 48);
    v126 = v125(v124, 1, v120);
    if (v126 == 1)
    {
      sub_20CE8CB5C(v124, sub_20CE8CAC4);
      v127 = 0;
    }

    else
    {
      sub_20CE92FF0();
      v127 = v128;
      (*(v119 + 8))(v124, v120);
    }

    v129 = v228;
    v130 = v121 + v122[8];
    *v130 = v127;
    *(v130 + 4) = v126 == 1;
    sub_20CE8CF98(v123, v129, sub_20CE8CAC4);
    v131 = v125(v129, 1, v120);
    v132 = v257;
    if (v131 == 1)
    {
      sub_20CE8CB5C(v123, sub_20CE8CAC4);
      sub_20CE8CB5C(v242, sub_20CE831C8);
      v133 = v260;
      v134 = *(v261 + 8);
      v134(v239, v260);
      (*(v252 + 8))(v241, v259);
      sub_20CE8CB5C(v129, sub_20CE8CAC4);
      v135 = 0;
    }

    else
    {
      sub_20CE93000();
      v135 = v136;
      sub_20CE8CB5C(v123, sub_20CE8CAC4);
      sub_20CE8CB5C(v242, sub_20CE831C8);
      v133 = v260;
      v134 = *(v261 + 8);
      v134(v239, v260);
      (*(v252 + 8))(v241, v259);
      (*(v248 + 8))(v129, v120);
    }

    v137 = v121 + v122[9];
    *v137 = v135;
    *(v137 + 8) = v131 == 1;
    v138 = v121 + v122[10];
    *v138 = 0;
    *(v138 + 8) = 1;
    v139 = v256;
    sub_20CE8CBBC(v121, v256 + v258);
    v254(v139);

    v134(v132, v133);
  }
}

uint64_t sub_20CE85C04(uint64_t a1, uint64_t a2, void (*a3)(char *, char *, uint64_t), uint64_t a4, void (*a5)(char *, char *, uint64_t), char *a6, size_t *a7)
{
  v109 = a7;
  v98 = a6;
  v97 = a5;
  v105 = a4;
  v96 = a3;
  sub_20CE8CAC4(0);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v101 = &v96 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v99 = &v96 - v13;
  MEMORY[0x28223BE20](v12);
  v100 = &v96 - v14;
  sub_20CE831C8(0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = (&v96 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = type metadata accessor for MenstrualCyclesWidgetEntry(0);
  v104 = *(v19 - 8);
  v20 = *(v104 + 64);
  v21 = MEMORY[0x28223BE20](v19);
  v103 = &v96 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v21);
  v113 = &v96 - v24;
  MEMORY[0x28223BE20](v23);
  v108 = &v96 - v25;
  v102 = sub_20CE93010();
  v110 = *(v102 - 8);
  v26 = *(v110 + 64);
  MEMORY[0x28223BE20](v102);
  v107 = &v96 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_20CE92810();
  v29 = *(v28 - 8);
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v28);
  v32 = &v96 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_20CE92EE0();
  v114 = *(v33 - 8);
  v115 = v33;
  v34 = v114[8];
  v35 = MEMORY[0x28223BE20](v33);
  v112 = &v96 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35);
  v106 = &v96 - v37;
  sub_20CE8CF64(0);
  v39 = *(*(v38 - 8) + 64);
  MEMORY[0x28223BE20](v38 - 8);
  v41 = &v96 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_20CE92720();
  v43 = *(*(v42 - 8) + 64);
  v44 = MEMORY[0x28223BE20](v42);
  v111 = &v96 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = MEMORY[0x28223BE20](v44);
  v48 = &v96 - v47;
  MEMORY[0x28223BE20](v46);
  v50 = &v96 - v49;
  v51 = a1;
  v53 = v52;
  sub_20CE8CF98(v51, v41, sub_20CE8CF64);
  if ((*(v53 + 48))(v41, 1, v42) == 1)
  {
    return sub_20CE8CB5C(v41, sub_20CE8CF64);
  }

  (*(v53 + 32))(v50, v41, v42);
  if (sub_20CE926F0())
  {
    result = (*(v53 + 8))(v50, v42);
    *v96 = 1;
  }

  else
  {
    v105 = v53;
    v55 = *(v53 + 16);
    v55(v48, v50, v42);
    (*(v29 + 16))(v32, v97 + OBJC_IVAR____TtC29HealthMenstrualCyclesWidgetUI38MenstrualCyclesWidgetTimelineGenerator_gregorianCalendar, v28);
    v56 = v106;
    sub_20CE92EC0();
    v55(v48, v50, v42);
    v57 = v55;
    v96 = v55;
    v58 = v98;
    sub_20CE91194(v58, v48, v116);
    v59 = dword_20CE93D4C[v116[0]];
    v60 = v107;
    sub_20CE92FE0();
    v98 = v50;
    v57(v111, v50, v42);
    v97 = v114[2];
    v61 = v19;
    v62 = v115;
    v97(v112, v56, v115);
    sub_20CE74F8C(v58, v18);
    v63 = type metadata accessor for MenstrualCyclesWidgetEntry.State(0);
    (*(*(v63 - 8) + 56))(v18, 0, 1, v63);
    v64 = v110;
    v65 = v100;
    v66 = v60;
    v67 = v102;
    (*(v110 + 16))(v100, v66, v102);
    (*(v64 + 56))(v65, 0, 1, v67);
    v68 = v113;
    v96(v113, v111, v42);
    v69 = v62;
    v70 = v61;
    v97(&v68[v61[5]], v112, v69);
    sub_20CE8CF98(v18, &v68[v61[6]], sub_20CE831C8);
    *&v68[v61[7]] = 0;
    v71 = v99;
    sub_20CE8CF98(v65, v99, sub_20CE8CAC4);
    v72 = *(v64 + 48);
    v73 = v72(v71, 1, v67);
    if (v73 == 1)
    {
      sub_20CE8CB5C(v71, sub_20CE8CAC4);
      v74 = 0;
    }

    else
    {
      sub_20CE92FF0();
      v74 = v75;
      (*(v64 + 8))(v71, v67);
    }

    v76 = v103;
    v77 = v101;
    v78 = &v113[v61[8]];
    *v78 = v74;
    v78[4] = v73 == 1;
    sub_20CE8CF98(v65, v77, sub_20CE8CAC4);
    v79 = v72(v77, 1, v67);
    if (v79 == 1)
    {
      sub_20CE8CB5C(v65, sub_20CE8CAC4);
      sub_20CE8CB5C(v18, sub_20CE831C8);
      v80 = v114[1];
      v80(v112, v115);
      v81 = *(v105 + 8);
      v81(v111, v42);
      sub_20CE8CB5C(v77, sub_20CE8CAC4);
      v82 = 0;
    }

    else
    {
      sub_20CE93000();
      v82 = v83;
      sub_20CE8CB5C(v65, sub_20CE8CAC4);
      sub_20CE8CB5C(v18, sub_20CE831C8);
      v80 = v114[1];
      v80(v112, v115);
      v81 = *(v105 + 8);
      v81(v111, v42);
      (*(v110 + 8))(v77, v67);
    }

    v85 = v108;
    v84 = v109;
    v86 = v113;
    v87 = &v113[v70[9]];
    *v87 = v82;
    v87[8] = v79 == 1;
    v88 = v86 + v70[10];
    *v88 = 0;
    *(v88 + 8) = 1;
    sub_20CE8CBBC(v86, v85);
    sub_20CE8CF98(v85, v76, type metadata accessor for MenstrualCyclesWidgetEntry);
    v89 = *v84;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v84 = v89;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v89 = sub_20CE8F7F4(0, v89[2] + 1, 1, v89);
      *v84 = v89;
    }

    v91 = v98;
    v93 = v89[2];
    v92 = v89[3];
    if (v93 >= v92 >> 1)
    {
      v95 = sub_20CE8F7F4(v92 > 1, v93 + 1, 1, v89);
      *v109 = v95;
    }

    sub_20CE8CB5C(v108, type metadata accessor for MenstrualCyclesWidgetEntry);
    (*(v110 + 8))(v107, v67);
    v80(v106, v115);
    v81(v91, v42);
    v94 = *v109;
    v94[2] = v93 + 1;
    return sub_20CE8CBBC(v76, v94 + ((*(v104 + 80) + 32) & ~*(v104 + 80)) + *(v104 + 72) * v93);
  }

  return result;
}

uint64_t sub_20CE86708(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void (*a5)(uint64_t), uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10)
{
  v139 = a8;
  v154 = a7;
  v151 = a6;
  v152 = a5;
  v147 = a4;
  v155 = a3;
  v150 = a1;
  v140 = sub_20CE927B0();
  v138 = *(v140 - 8);
  v11 = *(v138 + 64);
  MEMORY[0x28223BE20](v140);
  v135 = &v123 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v136 = sub_20CE927C0();
  v134 = *(v136 - 8);
  v13 = *(v134 + 64);
  MEMORY[0x28223BE20](v136);
  v133 = &v123 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v153 = sub_20CE92770();
  v132 = *(v153 - 8);
  v15 = *(v132 + 64);
  MEMORY[0x28223BE20](v153);
  v131 = &v123 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x277D83D88];
  sub_20CE8CAF8(0, &qword_27C8181C0, MEMORY[0x277CC9A70], MEMORY[0x277D83D88]);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v127 = &v123 - v20;
  sub_20CE8CAF8(0, &qword_27C8181C8, MEMORY[0x277CC99E8], v17);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21 - 8);
  v126 = &v123 - v23;
  v130 = sub_20CE926A0();
  v129 = *(v130 - 8);
  v24 = *(v129 + 64);
  MEMORY[0x28223BE20](v130);
  v128 = &v123 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20CE8CAC4(0);
  v27 = *(*(v26 - 8) + 64);
  v28 = MEMORY[0x28223BE20](v26 - 8);
  v148 = &v123 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x28223BE20](v28);
  v143 = &v123 - v31;
  MEMORY[0x28223BE20](v30);
  v142 = &v123 - v32;
  sub_20CE831C8(0);
  v34 = *(*(v33 - 8) + 64);
  MEMORY[0x28223BE20](v33 - 8);
  v159 = (&v123 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0));
  v36 = sub_20CE92EE0();
  v157 = v36;
  v37 = *(v36 - 8);
  v38 = *(v37 + 64);
  MEMORY[0x28223BE20](v36);
  v40 = &v123 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v156 = v40;
  v41 = sub_20CE92720();
  v42 = *(v41 - 1);
  v43 = *(v42 + 64);
  MEMORY[0x28223BE20](v41);
  v45 = &v123 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v141 = type metadata accessor for MenstrualCyclesWidgetEntry(0);
  v149 = *(v141 - 8);
  v46 = v149[8];
  v47 = MEMORY[0x28223BE20](v141);
  v124 = &v123 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = MEMORY[0x28223BE20](v47);
  v51 = &v123 - v50;
  MEMORY[0x28223BE20](v49);
  v158 = &v123 - v52;
  v145 = v42;
  v53 = *(v42 + 16);
  v137 = a2;
  v53(v45, a2, v41);
  v146 = v37;
  v54 = *(v37 + 16);
  v54(v40, v155, v36);
  v55 = v147;
  v56 = v159;
  v125 = v55;
  sub_20CE74F8C(v55, v159);
  v57 = type metadata accessor for MenstrualCyclesWidgetEntry.State(0);
  (*(*(v57 - 8) + 56))(v56, 0, 1, v57);
  v58 = sub_20CE93010();
  v59 = *(v58 - 8);
  v60 = v142;
  (*(v59 + 56))(v142, 1, 1, v58);
  v144 = v45;
  v61 = v45;
  v62 = v143;
  v147 = v41;
  v63 = v41;
  v64 = v141;
  v53(v51, v61, v63);
  v54(&v51[v64[5]], v156, v157);
  sub_20CE8CF98(v159, &v51[v64[6]], sub_20CE831C8);
  *&v51[v64[7]] = 0;
  sub_20CE8CF98(v60, v62, sub_20CE8CAC4);
  v65 = *(v59 + 48);
  v66 = v65(v62, 1, v58);
  v123 = v59;
  if (v66 == 1)
  {
    sub_20CE8CB5C(v62, sub_20CE8CAC4);
    v67 = 0;
  }

  else
  {
    sub_20CE92FF0();
    v67 = v68;
    (*(v59 + 8))(v62, v58);
  }

  v69 = &v51[v64[8]];
  *v69 = v67;
  v69[4] = v66 == 1;
  v70 = v148;
  sub_20CE8CF98(v60, v148, sub_20CE8CAC4);
  v71 = v65(v70, 1, v58);
  v72 = v158;
  if (v71 == 1)
  {
    sub_20CE8CB5C(v60, sub_20CE8CAC4);
    sub_20CE8CB5C(v159, sub_20CE831C8);
    (*(v146 + 8))(v156, v157);
    (*(v145 + 8))(v144, v147);
    sub_20CE8CB5C(v70, sub_20CE8CAC4);
    v73 = 0;
  }

  else
  {
    sub_20CE93000();
    v73 = v74;
    sub_20CE8CB5C(v60, sub_20CE8CAC4);
    sub_20CE8CB5C(v159, sub_20CE831C8);
    (*(v146 + 8))(v156, v157);
    (*(v145 + 8))(v144, v147);
    (*(v123 + 8))(v70, v58);
  }

  v75 = &v51[v64[9]];
  *v75 = v73;
  v75[8] = v71 == 1;
  v76 = &v51[v64[10]];
  *v76 = 0;
  v76[8] = 1;
  sub_20CE8CBBC(v51, v72);
  v77 = v150;
  if (v150)
  {
    v78 = (v154 + 16);
    v79 = v124;
    sub_20CE8CF98(v72, v124, type metadata accessor for MenstrualCyclesWidgetEntry);
    swift_beginAccess();
    v80 = *v78;
    v159 = v77;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v78 = v80;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v80 = sub_20CE8F7F4(0, v80[2] + 1, 1, v80);
      *v78 = v80;
    }

    v156 = a9;
    v157 = a10;
    v83 = v80[2];
    v82 = v80[3];
    if (v83 >= v82 >> 1)
    {
      v80 = sub_20CE8F7F4(v82 > 1, v83 + 1, 1, v80);
    }

    v80[2] = v83 + 1;
    sub_20CE8CBBC(v79, v80 + ((*(v149 + 80) + 32) & ~*(v149 + 80)) + v149[9] * v83);
    *v78 = v80;
    swift_endAccess();
    v150 = OBJC_IVAR____TtC29HealthMenstrualCyclesWidgetUI38MenstrualCyclesWidgetTimelineGenerator_currentCalendar;
    v84 = sub_20CE92810();
    (*(*(v84 - 8) + 56))(v126, 1, 1, v84);
    v85 = sub_20CE92820();
    (*(*(v85 - 8) + 56))(v127, 1, 1, v85);
    v86 = v128;
    sub_20CE92690();
    v87 = v132;
    v88 = v131;
    (*(v132 + 104))(v131, *MEMORY[0x277CC9878], v153);
    v89 = v134;
    v90 = v133;
    v91 = v136;
    (*(v134 + 104))(v133, *MEMORY[0x277CC9900], v136);
    v92 = v138;
    v93 = v78;
    v94 = v135;
    v95 = v140;
    v96 = (*(v138 + 104))(v135, *MEMORY[0x277CC98E8], v140);
    v149 = &v123;
    MEMORY[0x28223BE20](v96);
    v156 = v93;
    sub_20CE927A0();
    (*(v92 + 8))(v94, v95);
    (*(v89 + 8))(v90, v91);
    (*(v87 + 8))(v88, v153);
    (*(v129 + 8))(v86, v130);
    if (qword_281111B08 != -1)
    {
      swift_once();
    }

    v97 = sub_20CE92970();
    __swift_project_value_buffer(v97, qword_2811123B8);

    v98 = sub_20CE92950();
    v99 = sub_20CE93170();

    if (os_log_type_enabled(v98, v99))
    {
      v100 = swift_slowAlloc();
      v101 = swift_slowAlloc();
      v162 = v101;
      *v100 = 136380931;
      v102 = sub_20CE93320();
      v104 = sub_20CE7C260(v102, v103, &v162);

      *(v100 + 4) = v104;
      *(v100 + 12) = 2080;
      sub_20CE8CAF8(0, &qword_27C8181D0, sub_20CE8CF30, MEMORY[0x277D84560]);
      v105 = swift_allocObject();
      *(v105 + 16) = xmmword_20CE93A50;
      v106 = v156;
      swift_beginAccess();
      *(v105 + 32) = *v106;
      v160 = v105;
      sub_20CE8CAF8(0, &qword_27C8181E0, sub_20CE8CF30, MEMORY[0x277D83940]);

      sub_20CE932E0();
      v107 = HKSensitiveLogItem();
      swift_unknownObjectRelease();
      sub_20CE93220();
      swift_unknownObjectRelease();
      v108 = v161;
      v109 = __swift_project_boxed_opaque_existential_0(&v160, v161);
      v110 = *(*(v108 - 8) + 64);
      MEMORY[0x28223BE20](v109);
      (*(v112 + 16))(&v123 - ((v111 + 15) & 0xFFFFFFFFFFFFFFF0));
      v113 = sub_20CE930D0();
      v115 = v114;
      __swift_destroy_boxed_opaque_existential_0(&v160);
      v116 = sub_20CE7C260(v113, v115, &v162);

      *(v100 + 14) = v116;
      _os_log_impl(&dword_20CE71000, v98, v99, "[%{private}s] TimelineEntries in the generator are: %s", v100, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x20F317370](v101, -1, -1);
      MEMORY[0x20F317370](v100, -1, -1);

      v72 = v158;
    }

    else
    {

      v72 = v158;
      v106 = v156;
    }

    swift_beginAccess();
    v120 = *v106;

    v152(v121);
  }

  else
  {
    sub_20CE8CAF8(0, &qword_27C818178, type metadata accessor for MenstrualCyclesWidgetEntry, MEMORY[0x277D84560]);
    v117 = v149[9];
    v118 = (*(v149 + 80) + 32) & ~*(v149 + 80);
    v119 = swift_allocObject();
    *(v119 + 16) = xmmword_20CE93A50;
    sub_20CE8CF98(v72, v119 + v118, type metadata accessor for MenstrualCyclesWidgetEntry);
    v152(v119);
  }

  return sub_20CE8CB5C(v72, type metadata accessor for MenstrualCyclesWidgetEntry);
}

uint64_t sub_20CE87924(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void (*a6)(char *, uint64_t, uint64_t), uint64_t a7, uint64_t a8, void *a9, void **a10, uint64_t a11, uint64_t a12)
{
  v168 = a8;
  v167 = a7;
  v166 = a6;
  v186 = a5;
  v183 = a3;
  sub_20CE831C8(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v179 = (&v157 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v181 = type metadata accessor for MenstrualCyclesWidgetEntry(0);
  v184 = *(v181 - 1);
  v16 = *(v184 + 64);
  v17 = MEMORY[0x28223BE20](v181);
  v175 = &v157 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v171 = &v157 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v180 = &v157 - v22;
  MEMORY[0x28223BE20](v21);
  v172 = &v157 - v23;
  sub_20CE8CAC4(0);
  v25 = *(*(v24 - 8) + 64);
  v26 = MEMORY[0x28223BE20](v24 - 8);
  v170 = &v157 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x28223BE20](v26);
  v169 = &v157 - v29;
  v30 = MEMORY[0x28223BE20](v28);
  v173 = &v157 - v31;
  MEMORY[0x28223BE20](v30);
  v174 = &v157 - v32;
  v33 = sub_20CE92810();
  v34 = *(v33 - 8);
  v35 = *(v34 + 64);
  MEMORY[0x28223BE20](v33);
  v37 = &v157 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v182 = sub_20CE92EE0();
  v185 = *(v182 - 8);
  v38 = *(v185 + 64);
  v39 = MEMORY[0x28223BE20](v182);
  v178 = &v157 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = MEMORY[0x28223BE20](v39);
  v43 = &v157 - v42;
  MEMORY[0x28223BE20](v41);
  v176 = &v157 - v44;
  sub_20CE8CF64(0);
  v46 = *(*(v45 - 8) + 64);
  MEMORY[0x28223BE20](v45 - 8);
  v48 = &v157 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_20CE92720();
  v50 = *(v49 - 8);
  v51 = *(v50 + 64);
  v52 = MEMORY[0x28223BE20](v49);
  v177 = &v157 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = MEMORY[0x28223BE20](v52);
  v56 = &v157 - v55;
  MEMORY[0x28223BE20](v54);
  v58 = &v157 - v57;
  v59 = a1;
  v61 = v60;
  sub_20CE8CF98(v59, v48, sub_20CE8CF64);
  if ((*(v50 + 48))(v48, 1, v61) == 1)
  {
    return sub_20CE8CB5C(v48, sub_20CE8CF64);
  }

  (*(v50 + 32))(v58, v48, v61);
  if (sub_20CE926F0())
  {
    result = (*(v50 + 8))(v58, v61);
    *v183 = 1;
  }

  else
  {
    v165 = v58;
    v183 = v50;
    v164 = a12;
    v63 = v186;
    if ([v186 menstruationProjectionsEnabled] && ((v64 = objc_msgSend(v63, sel_menstruationProjections), v65 = sub_20CE8CD30(), v66 = sub_20CE93100(), v64, v66 >> 62) ? (v67 = sub_20CE93290()) : (v67 = *((v66 & 0xFFFFFFFFFFFFFF8) + 0x10)), , v67))
    {
      v161 = v65;
      v163 = a10;
      v162 = a9;
      v69 = v183 + 16;
      v68 = *(v183 + 16);
      v70 = v165;
      v68(v56, v165, v61);
      (*(v34 + 16))(v37, v166 + OBJC_IVAR____TtC29HealthMenstrualCyclesWidgetUI38MenstrualCyclesWidgetTimelineGenerator_gregorianCalendar, v33);
      sub_20CE92EC0();
      v175 = sub_20CE88BD4();
      v166 = v68;
      if (v175)
      {
        v71 = v68;
        v68(v56, v70, v61);
        v72 = v175;
        v73 = v175;
        sub_20CE90E0C(v72, v56, v187);
        v74 = dword_20CE93D4C[SLOBYTE(v187[0])];
        v75 = v174;
        sub_20CE92FE0();
        v76 = 0;
        v77 = v182;
      }

      else
      {
        v159 = v69;
        v160 = v61;
        if (qword_281111B08 != -1)
        {
          swift_once();
        }

        v93 = sub_20CE92970();
        __swift_project_value_buffer(v93, qword_2811123B8);
        v94 = v185;
        v95 = v182;
        (*(v185 + 16))(v43, v176, v182);
        v96 = v186;
        v97 = sub_20CE92950();
        v98 = sub_20CE93170();

        if (os_log_type_enabled(v97, v98))
        {
          v99 = swift_slowAlloc();
          v158 = swift_slowAlloc();
          v189 = v158;
          *v99 = 136446722;
          v100 = sub_20CE93320();
          LODWORD(v164) = v98;
          v102 = sub_20CE7C260(v100, v101, &v189);

          *(v99 + 4) = v102;
          *(v99 + 12) = 2082;
          sub_20CE8CD7C();
          v103 = sub_20CE932A0();
          v105 = v104;
          (*(v94 + 8))(v43, v95);
          v106 = sub_20CE7C260(v103, v105, &v189);

          *(v99 + 14) = v106;
          *(v99 + 22) = 2080;
          v107 = [v96 menstruationProjections];
          v108 = sub_20CE93100();

          v187[0] = v108;
          sub_20CE8CAF8(0, &qword_27C8181E8, sub_20CE8CD30, MEMORY[0x277D83940]);
          sub_20CE932E0();
          v109 = HKSensitiveLogItem();
          swift_unknownObjectRelease();
          sub_20CE93220();
          swift_unknownObjectRelease();
          v110 = v188;
          v111 = __swift_project_boxed_opaque_existential_0(v187, v188);
          v112 = *(*(v110 - 8) + 64);
          MEMORY[0x28223BE20](v111);
          (*(v114 + 16))(&v157 - ((v113 + 15) & 0xFFFFFFFFFFFFFFF0));
          v115 = sub_20CE930D0();
          v117 = v116;
          __swift_destroy_boxed_opaque_existential_0(v187);
          v118 = sub_20CE7C260(v115, v117, &v189);

          *(v99 + 24) = v118;
          _os_log_impl(&dword_20CE71000, v97, v164, "[%{public}s] TimelineEntries: No projection found that contains %{public}s in %s", v99, 0x20u);
          v119 = v158;
          swift_arrayDestroy();
          MEMORY[0x20F317370](v119, -1, -1);
          MEMORY[0x20F317370](v99, -1, -1);
        }

        else
        {

          (*(v94 + 8))(v43, v95);
        }

        v76 = 1;
        v61 = v160;
        v75 = v174;
        v77 = v95;
        v71 = v166;
      }

      v120 = sub_20CE93010();
      v121 = *(v120 - 8);
      (*(v121 + 56))(v75, v76, 1, v120);
      v122 = v61;
      v71(v177, v167, v61);
      v123 = *(v185 + 16);
      v123(v178, v168, v77);
      v124 = v162;
      v125 = v179;
      sub_20CE74F8C(v124, v179);
      v126 = type metadata accessor for MenstrualCyclesWidgetEntry.State(0);
      (*(*(v126 - 8) + 56))(v125, 0, 1, v126);
      sub_20CE8CF98(v75, v173, sub_20CE8CAC4);
      v127 = [v186 lastMenstrualFlowDayIndex];
      v128 = v127;
      if (v127)
      {
        v186 = [v127 integerValue];
      }

      else
      {
        v186 = 0;
      }

      v129 = v180;
      v166(v180, v177, v122);
      v130 = v181;
      v123(&v129[v181[5]], v178, v77);
      sub_20CE8CF98(v179, &v129[v130[6]], sub_20CE831C8);
      v131 = v175;
      *&v129[v130[7]] = v175;
      v132 = v173;
      v133 = v169;
      sub_20CE8CF98(v173, v169, sub_20CE8CAC4);
      v134 = *(v121 + 48);
      v135 = v134(v133, 1, v120);
      v136 = v131;
      if (v135 == 1)
      {
        sub_20CE8CB5C(v133, sub_20CE8CAC4);
        v137 = 0;
      }

      else
      {
        sub_20CE92FF0();
        v137 = v138;
        (*(v121 + 8))(v133, v120);
      }

      v139 = v170;
      v140 = &v180[v181[8]];
      *v140 = v137;
      v140[4] = v135 == 1;
      sub_20CE8CF98(v132, v139, sub_20CE8CAC4);
      v141 = v134(v139, 1, v120);
      if (v141 == 1)
      {
        sub_20CE8CB5C(v132, sub_20CE8CAC4);
        sub_20CE8CB5C(v179, sub_20CE831C8);
        v142 = *(v185 + 8);
        v142(v178, v182);
        v143 = *(v183 + 8);
        v143(v177, v122);
        sub_20CE8CB5C(v139, sub_20CE8CAC4);
        v144 = 0;
      }

      else
      {
        sub_20CE93000();
        v144 = v145;
        sub_20CE8CB5C(v132, sub_20CE8CAC4);
        sub_20CE8CB5C(v179, sub_20CE831C8);
        v142 = *(v185 + 8);
        v142(v178, v182);
        v143 = *(v183 + 8);
        v143(v177, v122);
        (*(v121 + 8))(v139, v120);
      }

      v146 = v180;
      v147 = v181;
      v148 = &v180[v181[9]];
      *v148 = v144;
      v148[8] = v141 == 1;
      v149 = v146 + v147[10];
      *v149 = v186;
      *(v149 + 8) = v128 == 0;
      v150 = v172;
      sub_20CE8CBBC(v146, v172);
      v151 = v171;
      sub_20CE8CF98(v150, v171, type metadata accessor for MenstrualCyclesWidgetEntry);
      v152 = v163;
      swift_beginAccess();
      v153 = *v152;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v152 = v153;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v153 = sub_20CE8F7F4(0, v153[2] + 1, 1, v153);
        *v152 = v153;
      }

      v156 = v153[2];
      v155 = v153[3];
      if (v156 >= v155 >> 1)
      {
        v153 = sub_20CE8F7F4(v155 > 1, v156 + 1, 1, v153);
        *v163 = v153;
      }

      v153[2] = v156 + 1;
      sub_20CE8CBBC(v151, v153 + ((*(v184 + 80) + 32) & ~*(v184 + 80)) + *(v184 + 72) * v156);
      swift_endAccess();

      sub_20CE8CB5C(v150, type metadata accessor for MenstrualCyclesWidgetEntry);
      sub_20CE8CB5C(v174, sub_20CE8CAC4);
      v142(v176, v182);
      return (v143)(v165, v122);
    }

    else
    {
      if (qword_281111B08 != -1)
      {
        swift_once();
      }

      v78 = sub_20CE92970();
      __swift_project_value_buffer(v78, qword_2811123B8);
      v79 = sub_20CE92950();
      v80 = sub_20CE931A0();
      if (os_log_type_enabled(v79, v80))
      {
        v81 = swift_slowAlloc();
        v82 = swift_slowAlloc();
        v187[0] = v82;
        *v81 = 136446210;
        v83 = sub_20CE93320();
        v85 = v61;
        v86 = sub_20CE7C260(v83, v84, v187);

        *(v81 + 4) = v86;
        v61 = v85;
        _os_log_impl(&dword_20CE71000, v79, v80, "[%{public}s] TimelineEntries: Projections unavailable.", v81, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v82);
        MEMORY[0x20F317370](v82, -1, -1);
        MEMORY[0x20F317370](v81, -1, -1);
      }

      v87 = v183;
      v88 = v175;
      sub_20CE8CF98(a11, v175, type metadata accessor for MenstrualCyclesWidgetEntry);
      swift_beginAccess();
      v89 = *a10;
      v90 = swift_isUniquelyReferenced_nonNull_native();
      *a10 = v89;
      if ((v90 & 1) == 0)
      {
        v89 = sub_20CE8F7F4(0, v89[2] + 1, 1, v89);
        *a10 = v89;
      }

      v92 = v89[2];
      v91 = v89[3];
      if (v92 >= v91 >> 1)
      {
        v89 = sub_20CE8F7F4(v91 > 1, v92 + 1, 1, v89);
        *a10 = v89;
      }

      v89[2] = v92 + 1;
      sub_20CE8CBBC(v88, v89 + ((*(v184 + 80) + 32) & ~*(v184 + 80)) + *(v184 + 72) * v92);
      swift_endAccess();
      return (*(v87 + 8))(v165, v61);
    }
  }

  return result;
}

void *sub_20CE88BD4()
{
  v1 = [v0 menstruationProjections];
  sub_20CE8CD30();
  v2 = sub_20CE93100();

  if (v2 >> 62)
  {
    goto LABEL_19;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_20CE93290())
  {
    v4 = 0;
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x20F316E40](v4, v2);
      }

      else
      {
        if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_18;
        }

        v5 = *(v2 + 8 * v4 + 32);
      }

      v6 = v5;
      v7 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      v8 = [v5 allDays];
      if (sub_20CE92ED0() < v8)
      {

        goto LABEL_14;
      }

      [v6 allDays];
      if (sub_20CE931B0())
      {

        return v6;
      }

      ++v4;
      if (v7 == i)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    ;
  }

LABEL_14:

  return 0;
}

uint64_t sub_20CE88D48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v45 = a4;
  v46 = a3;
  v47 = *v4;
  v48 = v4;
  v6 = sub_20CE92810();
  v42 = *(v6 - 8);
  v43 = v6;
  v7 = *(v42 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_20CE92720();
  v37 = *(v10 - 8);
  v11 = v37;
  v44 = *(v37 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_20CE92EE0();
  v39 = *(v41 - 8);
  v14 = *(v39 + 64);
  v15 = MEMORY[0x28223BE20](v41);
  v38 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v35 - v16;
  v18 = *(v11 + 16);
  v35 = v10;
  v18(v13, a1, v10);
  (*(v42 + 16))(v9, v48 + OBJC_IVAR____TtC29HealthMenstrualCyclesWidgetUI38MenstrualCyclesWidgetTimelineGenerator_gregorianCalendar, v43);
  v40 = v17;
  v36 = v13;
  sub_20CE92EC0();
  v43 = swift_allocObject();
  swift_weakInit();
  v18(v13, a1, v10);
  v19 = v38;
  v20 = v39;
  v21 = v17;
  v22 = v41;
  (*(v39 + 16))(v38, v21, v41);
  v23 = v37;
  v24 = (*(v37 + 80) + 40) & ~*(v37 + 80);
  v25 = (v44 + *(v20 + 80) + v24) & ~*(v20 + 80);
  v26 = (v14 + v25 + 7) & 0xFFFFFFFFFFFFFFF8;
  v27 = swift_allocObject();
  v29 = v45;
  v28 = v46;
  *(v27 + 2) = v43;
  *(v27 + 3) = v28;
  *(v27 + 4) = v29;
  (*(v23 + 32))(&v27[v24], v36, v35);
  v30 = &v27[v25];
  v31 = v22;
  (*(v20 + 32))(v30, v19, v22);
  v32 = v48;
  *&v27[v26] = v47;
  v33 = *(*v32 + 144);

  v33(sub_20CE8C72C, v27);

  (*(v20 + 8))(v40, v31);
}

uint64_t sub_20CE89124(char *a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4, char *a5, uint64_t a6, uint64_t a7)
{
  v130 = a7;
  v131 = a1;
  v132 = a6;
  v133 = a5;
  v134 = a3;
  v135 = a4;
  sub_20CE8CAC4(0);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v128 = &v119 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v126 = &v119 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v127 = &v119 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v119 - v16;
  v18 = MEMORY[0x28223BE20](v15);
  v119 = &v119 - v19;
  MEMORY[0x28223BE20](v18);
  v120 = &v119 - v20;
  sub_20CE831C8(0);
  v22 = *(*(v21 - 8) + 64);
  v23 = MEMORY[0x28223BE20](v21 - 8);
  v138 = &v119 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v121 = (&v119 - v25);
  v141 = sub_20CE92EE0();
  v26 = *(v141 - 8);
  v27 = *(v26 + 64);
  v28 = MEMORY[0x28223BE20](v141);
  v137 = &v119 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x28223BE20](v28);
  v31 = &v119 - v30;
  MEMORY[0x28223BE20](v29);
  v124 = &v119 - v32;
  v140 = sub_20CE92720();
  v33 = *(v140 - 8);
  v34 = *(v33 + 64);
  v35 = MEMORY[0x28223BE20](v140);
  v136 = &v119 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = MEMORY[0x28223BE20](v35);
  v38 = &v119 - v37;
  MEMORY[0x28223BE20](v36);
  v122 = &v119 - v39;
  v139 = type metadata accessor for MenstrualCyclesWidgetEntry(0);
  v40 = *(*(v139 - 1) + 64);
  v41 = MEMORY[0x28223BE20](v139 - 2);
  v43 = &v119 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = MEMORY[0x28223BE20](v41);
  v125 = &v119 - v45;
  v46 = MEMORY[0x28223BE20](v44);
  v123 = &v119 - v47;
  MEMORY[0x28223BE20](v46);
  v49 = &v119 - v48;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
LABEL_7:
    v129 = v33;
    v124 = *(v33 + 16);
    v131 = v43;
    v70 = v136;
    v71 = v140;
    (v124)(v136, v133, v140);
    v130 = v26;
    v133 = *(v26 + 16);
    v72 = v137;
    v73 = v141;
    (v133)(v137, v132, v141);
    v74 = type metadata accessor for MenstrualCyclesWidgetEntry.State(0);
    v75 = v138;
    (*(*(v74 - 8) + 56))(v138, 1, 1, v74);
    v76 = sub_20CE93010();
    v77 = *(v76 - 8);
    v78 = v127;
    (*(v77 + 56))(v127, 1, 1, v76);
    v79 = v70;
    v80 = v131;
    (v124)(v131, v79, v71);
    (v133)(&v80[v139[5]], v72, v73);
    v81 = v139;
    sub_20CE8CF98(v75, &v80[v139[6]], sub_20CE831C8);
    *&v80[v81[7]] = 0;
    v82 = v126;
    sub_20CE8CF98(v78, v126, sub_20CE8CAC4);
    v83 = *(v77 + 48);
    v84 = v83(v82, 1, v76);
    if (v84 == 1)
    {
      sub_20CE8CB5C(v82, sub_20CE8CAC4);
      v85 = 0;
    }

    else
    {
      sub_20CE92FF0();
      v85 = v86;
      (*(v77 + 8))(v82, v76);
    }

    v87 = &v80[v81[8]];
    *v87 = v85;
    v87[4] = v84 == 1;
    v88 = v128;
    sub_20CE8CF98(v78, v128, sub_20CE8CAC4);
    v89 = v83(v88, 1, v76);
    v90 = v78;
    v92 = v129;
    v91 = v130;
    if (v89 == 1)
    {
      sub_20CE8CB5C(v90, sub_20CE8CAC4);
      sub_20CE8CB5C(v138, sub_20CE831C8);
      (*(v91 + 8))(v137, v141);
      (*(v92 + 8))(v136, v140);
      sub_20CE8CB5C(v88, sub_20CE8CAC4);
      v93 = 0;
    }

    else
    {
      sub_20CE93000();
      v93 = v94;
      sub_20CE8CB5C(v90, sub_20CE8CAC4);
      sub_20CE8CB5C(v138, sub_20CE831C8);
      (*(v91 + 8))(v137, v141);
      (*(v92 + 8))(v136, v140);
      (*(v77 + 8))(v88, v76);
    }

    v95 = &v80[v81[9]];
    *v95 = v93;
    v95[8] = v89 == 1;
    v96 = &v80[v81[10]];
    *v96 = 0;
    v96[8] = 1;
    v97 = v125;
    sub_20CE8CBBC(v80, v125);
    v134(v97);
    v98 = v97;
    return sub_20CE8CB5C(v98, type metadata accessor for MenstrualCyclesWidgetEntry);
  }

  if (!v131)
  {

    goto LABEL_7;
  }

  v136 = v49;
  v137 = v17;
  v138 = Strong;
  v51 = v131;
  v52 = [v51 state];
  v53 = *(v33 + 16);
  if (v52 != 1)
  {
    v53(v38, v133, v140);
    (*(v26 + 16))(v31, v132, v141);
    v99 = (*(v33 + 80) + 32) & ~*(v33 + 80);
    v100 = (v34 + *(v26 + 80) + v99) & ~*(v26 + 80);
    v139 = ((v27 + v100 + 7) & 0xFFFFFFFFFFFFFFF8);
    v101 = (v139 + 15) & 0xFFFFFFFFFFFFFFF8;
    v102 = swift_allocObject();
    v103 = v135;
    *(v102 + 16) = v134;
    *(v102 + 24) = v103;
    (*(v33 + 32))(v102 + v99, v38, v140);
    (*(v26 + 32))(v102 + v100, v31, v141);
    v104 = v138;
    *(v139 + v102) = v51;
    *(v102 + v101) = v130;
    v105 = *(*v104 + 136);
    v106 = v51;

    v105(sub_20CE8CC20, v102);
  }

  v129 = v33;
  v130 = v26;
  v54 = v133;
  v55 = v140;
  v53(v122, v133, v140);
  v131 = *(v26 + 16);
  v56 = v141;
  (v131)(v124, v132, v141);
  v57 = v51;
  v58 = v121;
  sub_20CE74F8C(v57, v121);
  v59 = type metadata accessor for MenstrualCyclesWidgetEntry.State(0);
  (*(*(v59 - 8) + 56))(v58, 0, 1, v59);
  v53(v38, v54, v55);
  v133 = v57;
  sub_20CE91194(v133, v38, &v142);
  v60 = dword_20CE93D4C[v142];
  v61 = v120;
  sub_20CE92FE0();
  v62 = sub_20CE93010();
  v63 = *(v62 - 8);
  (*(v63 + 56))(v61, 0, 1, v62);
  v64 = v123;
  v53(v123, v122, v55);
  v65 = v139;
  (v131)(&v64[v139[5]], v124, v56);
  sub_20CE8CF98(v58, &v64[v65[6]], sub_20CE831C8);
  *&v64[v65[7]] = 0;
  v66 = v119;
  sub_20CE8CF98(v61, v119, sub_20CE8CAC4);
  v67 = *(v63 + 48);
  v68 = v67(v66, 1, v62);
  if (v68 == 1)
  {
    sub_20CE8CB5C(v66, sub_20CE8CAC4);
    v69 = 0;
  }

  else
  {
    sub_20CE92FF0();
    v69 = v108;
    (*(v63 + 8))(v66, v62);
  }

  v109 = &v123[v139[8]];
  *v109 = v69;
  v109[4] = v68 == 1;
  v110 = v137;
  sub_20CE8CF98(v61, v137, sub_20CE8CAC4);
  v111 = v67(v110, 1, v62);
  if (v111 == 1)
  {
    sub_20CE8CB5C(v61, sub_20CE8CAC4);
    sub_20CE8CB5C(v121, sub_20CE831C8);
    (*(v130 + 8))(v124, v141);
    (*(v129 + 8))(v122, v140);
    sub_20CE8CB5C(v110, sub_20CE8CAC4);
    v112 = 0;
  }

  else
  {
    sub_20CE93000();
    v112 = v113;
    sub_20CE8CB5C(v61, sub_20CE8CAC4);
    sub_20CE8CB5C(v121, sub_20CE831C8);
    (*(v130 + 8))(v124, v141);
    (*(v129 + 8))(v122, v140);
    (*(v63 + 8))(v110, v62);
  }

  v114 = v139;
  v115 = v123;
  v116 = &v123[v139[9]];
  *v116 = v112;
  v116[8] = v111 == 1;
  v117 = v115 + v114[10];
  *v117 = 0;
  *(v117 + 8) = 1;
  v118 = v136;
  sub_20CE8CBBC(v115, v136);
  v134(v118);

  v98 = v118;
  return sub_20CE8CB5C(v98, type metadata accessor for MenstrualCyclesWidgetEntry);
}

uint64_t sub_20CE89F50(uint64_t a1, void (*a2)(double *), uint64_t a3, void (*a4)(void, void, void), uint64_t a5, void *a6, uint64_t a7)
{
  v202 = a7;
  v216 = a5;
  v217 = a6;
  v218 = a4;
  v219 = a3;
  v220 = a2;
  sub_20CE8CAC4(0);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v209 = &v196 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v207 = &v196 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v208 = &v196 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v196 - v16;
  v18 = MEMORY[0x28223BE20](v15);
  v200 = &v196 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v205 = &v196 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v204 = (&v196 - v23);
  v24 = MEMORY[0x28223BE20](v22);
  v203 = &v196 - v25;
  MEMORY[0x28223BE20](v24);
  v213 = &v196 - v26;
  sub_20CE831C8(0);
  v28 = *(*(v27 - 8) + 64);
  v29 = MEMORY[0x28223BE20](v27 - 8);
  v215 = (&v196 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  v31 = MEMORY[0x28223BE20](v29);
  v212 = (&v196 - v32);
  MEMORY[0x28223BE20](v31);
  v34 = (&v196 - v33);
  v35 = sub_20CE92EE0();
  v36 = *(v35 - 8);
  v37 = *(v36 + 64);
  v38 = MEMORY[0x28223BE20](v35);
  v223 = (&v196 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0));
  v40 = MEMORY[0x28223BE20](v38);
  v211 = &v196 - v41;
  v42 = MEMORY[0x28223BE20](v40);
  v198 = &v196 - v43;
  MEMORY[0x28223BE20](v42);
  v45 = &v196 - v44;
  v46 = sub_20CE92720();
  v47 = *(v46 - 8);
  v48 = *(v47 + 64);
  v49 = MEMORY[0x28223BE20](v46);
  v214 = &v196 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = MEMORY[0x28223BE20](v49);
  v199 = &v196 - v52;
  v53 = MEMORY[0x28223BE20](v51);
  v210 = &v196 - v54;
  MEMORY[0x28223BE20](v53);
  v56 = &v196 - v55;
  v57 = type metadata accessor for MenstrualCyclesWidgetEntry(0);
  v58 = *(*(v57 - 1) + 64);
  v59 = MEMORY[0x28223BE20](v57);
  v206 = &v196 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = MEMORY[0x28223BE20](v59);
  v62 = MEMORY[0x28223BE20](v61);
  v63 = MEMORY[0x28223BE20](v62);
  v65 = &v196 - v64;
  MEMORY[0x28223BE20](v63);
  v224 = v35;
  v225 = v46;
  v221 = v36;
  v222 = v47;
  if (v69)
  {
    v203 = v68;
    v197 = v17;
    v204 = v67;
    v201 = v57;
    v70 = v69;
    v71 = [v70 menstruationProjectionsEnabled];
    v213 = v70;
    if ((v71 & 1) != 0 && ((v72 = [v70 menstruationProjections], v73 = sub_20CE8CD30(), v74 = sub_20CE93100(), v72, v74 >> 62) ? (v75 = sub_20CE93290()) : (v75 = *((v74 & 0xFFFFFFFFFFFFFF8) + 0x10)), , v75))
    {
      v76 = v216;
      v77 = sub_20CE88BD4();
      v78 = v36;
      v223 = v77;
      if (!v77)
      {
        v79 = v213;
        if (qword_281111B08 != -1)
        {
          swift_once();
        }

        v80 = sub_20CE92970();
        __swift_project_value_buffer(v80, qword_2811123B8);
        v81 = v198;
        v82 = v224;
        (*(v36 + 16))(v198, v76, v224);
        v83 = v79;
        v84 = sub_20CE92950();
        v85 = sub_20CE93170();

        if (os_log_type_enabled(v84, v85))
        {
          v86 = swift_slowAlloc();
          v215 = swift_slowAlloc();
          v228 = v215;
          *v86 = 136446466;
          v87 = sub_20CE93320();
          LODWORD(v214) = v85;
          v89 = sub_20CE7C260(v87, v88, &v228);

          *(v86 + 4) = v89;
          *(v86 + 12) = 2080;
          sub_20CE8CD7C();
          v226[0] = sub_20CE932A0();
          v226[1] = v90;
          MEMORY[0x20F316CC0](544106784, 0xE400000000000000);
          v91 = [v83 0x277DAFEF3];
          v92 = sub_20CE93100();

          v93 = MEMORY[0x20F316CF0](v92, v73);
          v95 = v94;

          MEMORY[0x20F316CC0](v93, v95);

          sub_20CE932E0();
          v96 = HKSensitiveLogItem();
          swift_unknownObjectRelease();
          sub_20CE93220();
          swift_unknownObjectRelease();
          v97 = v227;
          v98 = __swift_project_boxed_opaque_existential_0(v226, v227);
          v99 = *(*(v97 - 8) + 64);
          MEMORY[0x28223BE20](v98);
          (*(v101 + 16))(&v196 - ((v100 + 15) & 0xFFFFFFFFFFFFFFF0));
          v102 = sub_20CE930D0();
          v104 = v103;
          v78 = v221;
          (*(v221 + 8))(v81, v82);
          __swift_destroy_boxed_opaque_existential_0(v226);
          v105 = sub_20CE7C260(v102, v104, &v228);

          *(v86 + 14) = v105;
          _os_log_impl(&dword_20CE71000, v84, v214, "[%{public}s] Snapshot: No projections found that contains %s", v86, 0x16u);
          v106 = v215;
          swift_arrayDestroy();
          MEMORY[0x20F317370](v106, -1, -1);
          v107 = v86;
          v47 = v222;
          MEMORY[0x20F317370](v107, -1, -1);
        }

        else
        {

          (*(v36 + 8))(v81, v82);
        }

        v46 = v225;
        v77 = v223;
      }

      v168 = *(v47 + 16);
      v169 = v218;
      v168(v210, v218, v46);
      v216 = *(v78 + 16);
      (v216)(v211, v76, v224);
      v170 = v217;
      v171 = v212;
      sub_20CE74F8C(v170, v212);
      v172 = type metadata accessor for MenstrualCyclesWidgetEntry.State(0);
      v173 = 1;
      (*(*(v172 - 8) + 56))(v171, 0, 1, v172);
      if (v77)
      {
        v174 = v199;
        v168(v199, v169, v46);
        v175 = v77;
        sub_20CE90E0C(v77, v174, v226);
        v176 = dword_20CE93D4C[SLOBYTE(v226[0])];
        v177 = v205;
        sub_20CE92FE0();
        v173 = 0;
      }

      else
      {
        v177 = v205;
      }

      v178 = sub_20CE93010();
      v179 = *(v178 - 8);
      (*(v179 + 56))(v177, v173, 1, v178);
      v180 = [v213 lastMenstrualFlowDayIndex];
      v155 = v180 == 0;
      if (v180)
      {
        v181 = v180;
        v151 = [v180 integerValue];
      }

      else
      {
        v151 = 0;
      }

      v182 = v203;
      v168(v203, v210, v225);
      v183 = v201;
      (v216)(v182 + v201[5], v211, v224);
      v129 = v183;
      sub_20CE8CF98(v212, v182 + v183[6], sub_20CE831C8);
      *(v182 + v183[7]) = v223;
      v184 = v205;
      v185 = v200;
      sub_20CE8CF98(v205, v200, sub_20CE8CAC4);
      v186 = *(v179 + 48);
      v187 = v186(v185, 1, v178);
      if (v187 == 1)
      {
        sub_20CE8CB5C(v185, sub_20CE8CAC4);
        v188 = 0;
      }

      else
      {
        sub_20CE92FF0();
        v188 = v189;
        (*(v179 + 8))(v185, v178);
      }

      v190 = &v203[v129[8]];
      *v190 = v188;
      v190[4] = v187 == 1;
      v191 = v197;
      sub_20CE8CF98(v184, v197, sub_20CE8CAC4);
      if (v186(v191, 1, v178) == 1)
      {
        sub_20CE8CB5C(v184, sub_20CE8CAC4);
        sub_20CE8CB5C(v212, sub_20CE831C8);
        (*(v221 + 8))(v211, v224);
        (*(v222 + 8))(v210, v225);
        sub_20CE8CB5C(v191, sub_20CE8CAC4);
        v152 = 1;
        v153 = 0;
      }

      else
      {
        sub_20CE93000();
        v153 = v192;
        sub_20CE8CB5C(v184, sub_20CE8CAC4);
        sub_20CE8CB5C(v212, sub_20CE831C8);
        (*(v221 + 8))(v211, v224);
        (*(v222 + 8))(v210, v225);
        (*(v179 + 8))(v191, v178);
        v152 = 0;
      }

      v157 = v204;
      v158 = v213;
      v154 = v203;
    }

    else
    {
      if (qword_281111B08 != -1)
      {
        swift_once();
      }

      v108 = sub_20CE92970();
      __swift_project_value_buffer(v108, qword_2811123B8);
      v109 = sub_20CE92950();
      v110 = sub_20CE931A0();
      if (os_log_type_enabled(v109, v110))
      {
        v111 = swift_slowAlloc();
        v112 = swift_slowAlloc();
        v226[0] = v112;
        *v111 = 136446210;
        v113 = sub_20CE93320();
        v115 = sub_20CE7C260(v113, v114, v226);

        *(v111 + 4) = v115;
        _os_log_impl(&dword_20CE71000, v109, v110, "[%{public}s] Snapshot: Projections unavailable.", v111, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v112);
        v47 = v222;
        MEMORY[0x20F317370](v112, -1, -1);
        MEMORY[0x20F317370](v111, -1, -1);
      }

      v116 = v217;
      v117 = v208;
      v217 = *(v47 + 16);
      v118 = v214;
      v119 = v225;
      (v217)(v214, v218, v225);
      v218 = *(v36 + 16);
      v120 = v224;
      v218(v223, v216, v224);
      v121 = v116;
      v122 = v215;
      sub_20CE74F8C(v121, v215);
      v123 = type metadata accessor for MenstrualCyclesWidgetEntry.State(0);
      (*(*(v123 - 8) + 56))(v122, 0, 1, v123);
      v124 = sub_20CE93010();
      v125 = *(v124 - 8);
      (*(v125 + 56))(v117, 1, 1, v124);
      v126 = v206;
      (v217)(v206, v118, v119);
      v127 = v201;
      v218(&v126[v201[5]], v223, v120);
      v128 = v122;
      v129 = v127;
      sub_20CE8CF98(v128, &v126[v127[6]], sub_20CE831C8);
      *&v126[v127[7]] = 0;
      v130 = v207;
      sub_20CE8CF98(v117, v207, sub_20CE8CAC4);
      v131 = *(v125 + 48);
      v132 = v131(v130, 1, v124);
      if (v132 == 1)
      {
        sub_20CE8CB5C(v130, sub_20CE8CAC4);
        v133 = 0;
      }

      else
      {
        sub_20CE92FF0();
        v133 = v146;
        (*(v125 + 8))(v130, v124);
      }

      v147 = &v126[v129[8]];
      *v147 = v133;
      v147[4] = v132 == 1;
      v148 = v209;
      sub_20CE8CF98(v117, v209, sub_20CE8CAC4);
      v149 = v131(v148, 1, v124);
      v150 = v214;
      if (v149 == 1)
      {
        sub_20CE8CB5C(v117, sub_20CE8CAC4);
        sub_20CE8CB5C(v215, sub_20CE831C8);
        (*(v221 + 8))(v223, v224);
        (*(v222 + 8))(v150, v225);
        sub_20CE8CB5C(v148, sub_20CE8CAC4);
        v151 = 0;
        v152 = 1;
        v153 = 0;
        v154 = v126;
        v155 = 1;
      }

      else
      {
        sub_20CE93000();
        v153 = v156;
        sub_20CE8CB5C(v117, sub_20CE8CAC4);
        sub_20CE8CB5C(v215, sub_20CE831C8);
        (*(v221 + 8))(v223, v224);
        (*(v222 + 8))(v150, v225);
        (*(v125 + 8))(v148, v124);
        v152 = 0;
        v151 = 0;
        v155 = 1;
        v154 = v126;
      }

      v157 = v204;
      v158 = v213;
    }

    v193 = v154 + v129[9];
    *v193 = v153;
    *(v193 + 8) = v152;
    v194 = v154 + v129[10];
    *v194 = v151;
    *(v194 + 8) = v155;
    sub_20CE8CBBC(v154, v157);
    v220(v157);
  }

  else
  {
    v215 = (&v196 - v66);
    v223 = *(v47 + 16);
    (v223)(v56, v218, v46);
    v214 = *(v36 + 16);
    (v214)(v45, v216, v35);
    sub_20CE74F8C(v217, v34);
    v134 = type metadata accessor for MenstrualCyclesWidgetEntry.State(0);
    (*(*(v134 - 8) + 56))(v34, 0, 1, v134);
    v135 = sub_20CE93010();
    v136 = v34;
    v137 = *(v135 - 8);
    (*(v137 + 56))(v213, 1, 1, v135);
    v217 = v56;
    (v223)(v65, v56, v225);
    v138 = &v65[v57[5]];
    v218 = v45;
    (v214)(v138, v45, v35);
    v139 = &v65[v57[6]];
    v223 = v136;
    sub_20CE8CF98(v136, v139, sub_20CE831C8);
    v140 = v57;
    *&v65[v57[7]] = 0;
    v141 = v213;
    v142 = v203;
    sub_20CE8CF98(v213, v203, sub_20CE8CAC4);
    v143 = *(v137 + 48);
    v144 = v143(v142, 1, v135);
    v216 = v137;
    if (v144 == 1)
    {
      sub_20CE8CB5C(v142, sub_20CE8CAC4);
      v145 = 0;
    }

    else
    {
      sub_20CE92FF0();
      v145 = v159;
      (*(v137 + 8))(v142, v135);
    }

    v160 = v204;
    v161 = &v65[v140[8]];
    *v161 = v145;
    v161[4] = v144 == 1;
    sub_20CE8CF98(v141, v160, sub_20CE8CAC4);
    v162 = v143(v160, 1, v135);
    v163 = v218;
    if (v162 == 1)
    {
      sub_20CE8CB5C(v141, sub_20CE8CAC4);
      sub_20CE8CB5C(v223, sub_20CE831C8);
      (*(v221 + 8))(v163, v224);
      (*(v222 + 8))(v217, v225);
      sub_20CE8CB5C(v160, sub_20CE8CAC4);
      v164 = 0;
    }

    else
    {
      sub_20CE93000();
      v164 = v165;
      sub_20CE8CB5C(v141, sub_20CE8CAC4);
      sub_20CE8CB5C(v223, sub_20CE831C8);
      (*(v221 + 8))(v163, v224);
      (*(v222 + 8))(v217, v225);
      (*(v216 + 8))(v160, v135);
    }

    v166 = &v65[v140[9]];
    *v166 = v164;
    v166[8] = v162 == 1;
    v167 = &v65[v140[10]];
    *v167 = 0;
    v167[8] = 1;
    v157 = v215;
    sub_20CE8CBBC(v65, v215);
    v220(v157);
  }

  return sub_20CE8CB5C(v157, type metadata accessor for MenstrualCyclesWidgetEntry);
}

uint64_t sub_20CE8B670(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v32 = *v2;
  v6 = sub_20CE928C0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v31 - v12;
  if (qword_281112000 != -1)
  {
    swift_once();
  }

  v14 = sub_20CE928F0();
  __swift_project_value_buffer(v14, qword_2811123D0);
  sub_20CE928B0();
  v15 = sub_20CE928D0();
  v16 = sub_20CE931D0();
  if (sub_20CE93200())
  {
    v17 = swift_slowAlloc();
    v31 = a2;
    v18 = a1;
    v19 = v17;
    *v17 = 0;
    v20 = sub_20CE928A0();
    _os_signpost_emit_with_name_impl(&dword_20CE71000, v15, v16, v20, "getCycleAnalysis", "", v19, 2u);
    v21 = v19;
    a1 = v18;
    a2 = v31;
    MEMORY[0x20F317370](v21, -1, -1);
  }

  (*(v7 + 16))(v11, v13, v6);
  v22 = sub_20CE92930();
  v23 = *(v22 + 48);
  v24 = *(v22 + 52);
  swift_allocObject();
  v25 = sub_20CE92920();
  (*(v7 + 8))(v13, v6);
  v26 = v3[3];
  v27 = swift_allocObject();
  v27[2] = v25;
  v27[3] = a1;
  v28 = v32;
  v27[4] = a2;
  v27[5] = v28;
  aBlock[4] = sub_20CE8C834;
  aBlock[5] = v27;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_20CE8D044;
  aBlock[3] = &block_descriptor;
  v29 = _Block_copy(aBlock);

  [v26 fetchCurrentAnalysisWithCompletion_];
  _Block_release(v29);
}

uint64_t sub_20CE8B984(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v32 = *v2;
  v6 = sub_20CE928C0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v31 - v12;
  if (qword_281112000 != -1)
  {
    swift_once();
  }

  v14 = sub_20CE928F0();
  __swift_project_value_buffer(v14, qword_2811123D0);
  sub_20CE928B0();
  v15 = sub_20CE928D0();
  v16 = sub_20CE931D0();
  if (sub_20CE93200())
  {
    v17 = swift_slowAlloc();
    v31 = a2;
    v18 = a1;
    v19 = v17;
    *v17 = 0;
    v20 = sub_20CE928A0();
    _os_signpost_emit_with_name_impl(&dword_20CE71000, v15, v16, v20, "getPregnancyModel", "", v19, 2u);
    v21 = v19;
    a1 = v18;
    a2 = v31;
    MEMORY[0x20F317370](v21, -1, -1);
  }

  (*(v7 + 16))(v11, v13, v6);
  v22 = sub_20CE92930();
  v23 = *(v22 + 48);
  v24 = *(v22 + 52);
  swift_allocObject();
  v25 = sub_20CE92920();
  (*(v7 + 8))(v13, v6);
  v26 = v3[3];
  v27 = swift_allocObject();
  v27[2] = v25;
  v27[3] = a1;
  v28 = v32;
  v27[4] = a2;
  v27[5] = v28;
  aBlock[4] = sub_20CE8C8D0;
  aBlock[5] = v27;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_20CE8D044;
  aBlock[3] = &block_descriptor_15;
  v29 = _Block_copy(aBlock);

  [v26 fetchCurrentPregnancyModelWithCompletion_];
  _Block_release(v29);
}

void sub_20CE8BC98(uint64_t a1, void *a2, uint64_t a3, void (*a4)(uint64_t), uint64_t a5, uint64_t a6, const char *a7, const char *a8, const char *a9)
{
  v73 = a7;
  v74 = a8;
  v78 = a5;
  v75 = a3;
  v12 = sub_20CE92900();
  v13 = *(v12 - 8);
  v14 = *(v13 + 8);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v70 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v70 - v18;
  v20 = sub_20CE928C0();
  v76 = *(v20 - 8);
  v77 = v20;
  v21 = *(v76 + 64);
  v22 = MEMORY[0x28223BE20](v20);
  v24 = &v70 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v26 = &v70 - v25;
  if (a2)
  {
    v72 = v19;
    v27 = a2;
    if (qword_281111B08 != -1)
    {
      swift_once();
    }

    v28 = sub_20CE92970();
    __swift_project_value_buffer(v28, qword_2811123B8);
    v29 = a2;
    v30 = sub_20CE92950();
    v31 = sub_20CE93180();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v70 = swift_slowAlloc();
      v80 = v70;
      *v32 = 136446466;
      v33 = sub_20CE93320();
      v35 = sub_20CE7C260(v33, v34, &v80);
      v71 = v12;
      v36 = v35;

      *(v32 + 4) = v36;
      *(v32 + 12) = 2080;
      ErrorValue = swift_getErrorValue();
      v38 = *(*(v79 - 8) + 64);
      MEMORY[0x28223BE20](ErrorValue);
      (*(v40 + 16))(&v70 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0));
      v41 = sub_20CE930D0();
      v43 = sub_20CE7C260(v41, v42, &v80);
      v12 = v71;

      *(v32 + 14) = v43;
      _os_log_impl(&dword_20CE71000, v30, v31, v73, v32, 0x16u);
      v44 = v70;
      swift_arrayDestroy();
      MEMORY[0x20F317370](v44, -1, -1);
      MEMORY[0x20F317370](v32, -1, -1);
    }

    if (qword_281112000 != -1)
    {
      swift_once();
    }

    v45 = sub_20CE928F0();
    __swift_project_value_buffer(v45, qword_2811123D0);
    v46 = sub_20CE928D0();
    sub_20CE92910();
    v47 = sub_20CE931C0();
    if (sub_20CE93200())
    {

      v48 = v72;
      sub_20CE92940();

      if ((*(v13 + 11))(v48, v12) == *MEMORY[0x277D85B00])
      {
        v49 = "[Error] Interval already ended";
      }

      else
      {
        (*(v13 + 1))(v48, v12);
        v49 = "";
      }

      v66 = swift_slowAlloc();
      *v66 = 0;
      v67 = sub_20CE928A0();
      _os_signpost_emit_with_name_impl(&dword_20CE71000, v46, v47, v67, v74, v49, v66, 2u);
      MEMORY[0x20F317370](v66, -1, -1);
    }

    (*(v76 + 8))(v26, v77);
    a4(0);
  }

  else
  {
    if (a1)
    {
      v73 = v13;
      if (qword_281111B08 != -1)
      {
        swift_once();
      }

      v50 = sub_20CE92970();
      __swift_project_value_buffer(v50, qword_2811123B8);
      v51 = sub_20CE92950();
      v52 = sub_20CE931A0();
      if (os_log_type_enabled(v51, v52))
      {
        v72 = a9;
        v53 = swift_slowAlloc();
        v71 = v12;
        v54 = v53;
        v55 = swift_slowAlloc();
        v80 = v55;
        *v54 = 136446210;
        v56 = sub_20CE93320();
        v58 = sub_20CE7C260(v56, v57, &v80);

        *(v54 + 4) = v58;
        _os_log_impl(&dword_20CE71000, v51, v52, v72, v54, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v55);
        MEMORY[0x20F317370](v55, -1, -1);
        v59 = v54;
        v12 = v71;
        MEMORY[0x20F317370](v59, -1, -1);
      }

      v13 = v73;
    }

    v60 = v13;
    v61 = v12;
    if (qword_281112000 != -1)
    {
      swift_once();
    }

    v62 = sub_20CE928F0();
    __swift_project_value_buffer(v62, qword_2811123D0);
    v63 = sub_20CE928D0();
    sub_20CE92910();
    v64 = sub_20CE931C0();
    if (sub_20CE93200())
    {

      sub_20CE92940();

      if ((*(v60 + 11))(v17, v61) == *MEMORY[0x277D85B00])
      {
        v65 = "[Error] Interval already ended";
      }

      else
      {
        (*(v60 + 1))(v17, v61);
        v65 = "";
      }

      v68 = swift_slowAlloc();
      *v68 = 0;
      v69 = sub_20CE928A0();
      _os_signpost_emit_with_name_impl(&dword_20CE71000, v63, v64, v69, v74, v65, v68, 2u);
      MEMORY[0x20F317370](v68, -1, -1);
    }

    (*(v76 + 8))(v24, v77);
    a4(a1);
  }
}

void sub_20CE8C460(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v8 = a2;
  v7 = a3;
  v6(a2, a3);
}

uint64_t MenstrualCyclesWidgetTimelineGenerator.deinit()
{
  v1 = OBJC_IVAR____TtC29HealthMenstrualCyclesWidgetUI38MenstrualCyclesWidgetTimelineGenerator_currentCalendar;
  v2 = sub_20CE92810();
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtC29HealthMenstrualCyclesWidgetUI38MenstrualCyclesWidgetTimelineGenerator_gregorianCalendar, v2);
  return v0;
}

uint64_t MenstrualCyclesWidgetTimelineGenerator.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC29HealthMenstrualCyclesWidgetUI38MenstrualCyclesWidgetTimelineGenerator_currentCalendar;
  v2 = sub_20CE92810();
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtC29HealthMenstrualCyclesWidgetUI38MenstrualCyclesWidgetTimelineGenerator_gregorianCalendar, v2);
  v4 = *(*v0 + 12);
  v5 = *(*v0 + 26);

  return swift_deallocClassInstance();
}

uint64_t sub_20CE8C668(void *a1)
{
  v3 = *(sub_20CE92720() - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 16) & ~v4;
  v6 = *(v3 + 64) + 7;
  v7 = (v6 + v5) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v4 + 16 + v8) & ~v4;
  v10 = *(v1 + v7);
  v11 = *(v1 + v8);
  v12 = *(v1 + v8 + 8);
  v13 = *(v1 + ((v6 + v9) & 0xFFFFFFFFFFFFFFF8));

  return sub_20CE840B8(a1, (v1 + v5), v10, v11, v12, (v1 + v9), v13);
}

uint64_t sub_20CE8C72C(char *a1)
{
  v3 = *(sub_20CE92720() - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(sub_20CE92EE0() - 8);
  v7 = (v4 + v5 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = *(v1 + 2);
  v9 = *(v1 + 3);
  v10 = *(v1 + 4);
  v11 = *&v1[(*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8];

  return sub_20CE89124(a1, v8, v9, v10, &v1[v4], &v1[v7], v11);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t objectdestroy_8Tm()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t type metadata accessor for MenstrualCyclesWidgetTimelineGenerator()
{
  result = qword_281111DB0;
  if (!qword_281111DB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_20CE8C968()
{
  result = sub_20CE92810();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void sub_20CE8CAF8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_20CE8CB5C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_20CE8CBBC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MenstrualCyclesWidgetEntry(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_20CE8CC20(uint64_t a1)
{
  v3 = *(sub_20CE92720() - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(sub_20CE92EE0() - 8);
  v7 = (v4 + v5 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = (*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v1 + 16);
  v10 = *(v1 + 24);
  v11 = *(v1 + v8);
  v12 = *(v1 + ((v8 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_20CE89F50(a1, v9, v10, (v1 + v4), v1 + v7, v11, v12);
}

unint64_t sub_20CE8CD30()
{
  result = qword_281111FC8;
  if (!qword_281111FC8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_281111FC8);
  }

  return result;
}

unint64_t sub_20CE8CD7C()
{
  result = qword_27C8181B8;
  if (!qword_27C8181B8)
  {
    sub_20CE92EE0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8181B8);
  }

  return result;
}

uint64_t sub_20CE8CDD4(uint64_t a1)
{
  v3 = *(sub_20CE92720() - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 16) & ~v4;
  v6 = *(v3 + 64);
  v7 = *(sub_20CE92EE0() - 8);
  v8 = (v5 + v6 + *(v7 + 80)) & ~*(v7 + 80);
  v9 = (*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v9 + 15) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v10 + 23) & 0xFFFFFFFFFFFFFFF8;
  return sub_20CE86708(a1, v1 + v5, v1 + v8, *(v1 + v9), *(v1 + v10), *(v1 + v10 + 8), *(v1 + v11), *(v1 + ((v11 + 15) & 0xFFFFFFFFFFFFFFF8)), (v1 + ((v4 + ((v11 + 15) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v4)), *(v1 + ((v6 + ((v4 + ((v11 + 15) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v4) + 7) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_20CE8CF98(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_20CE8D048@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_20CE92B20();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x277CE3BA0];
  sub_20CE8E598(0, &qword_281111AF8, MEMORY[0x277CE3BA0], MEMORY[0x277CDF458]);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = (&v18 - v12);
  sub_20CE8E5FC(v2, &v18 - v12, &qword_281111AF8, v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = sub_20CE92F30();
    return (*(*(v14 - 8) + 32))(a1, v13, v14);
  }

  else
  {
    v16 = *v13;
    sub_20CE93190();
    v17 = sub_20CE92C50();
    sub_20CE92890();

    sub_20CE92B10();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v8, v4);
  }
}

uint64_t sub_20CE8D26C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_20CE92B20();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x277CE3AF8];
  sub_20CE8E598(0, &qword_281111B00, MEMORY[0x277CE3AF8], MEMORY[0x277CDF458]);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = (&v18 - v11);
  v13 = type metadata accessor for MenstrualCyclesWidgetCircularView();
  sub_20CE8E5FC(v1 + *(v13 + 20), v12, &qword_281111B00, v8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = sub_20CE92F10();
    return (*(*(v14 - 8) + 32))(a1, v12, v14);
  }

  else
  {
    v16 = *v12;
    sub_20CE93190();
    v17 = sub_20CE92C50();
    sub_20CE92890();

    sub_20CE92B10();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v7, v3);
  }
}

uint64_t MenstrualCyclesWidgetCircularView.body.getter@<X0>(uint64_t *a1@<X8>)
{
  *a1 = sub_20CE92EB0();
  a1[1] = v3;
  sub_20CE8DDC0();
  return sub_20CE8D4D8(v1, a1 + *(v4 + 44));
}

uint64_t sub_20CE8D4D8@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v72 = a1;
  v88 = a2;
  v2 = sub_20CE92B60();
  v86 = *(v2 - 8);
  v87 = v2;
  v3 = *(v86 + 64);
  MEMORY[0x28223BE20](v2);
  v85 = &v69 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_20CE92740();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v84 = &v69 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_20CE93090();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v83 = &v69 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_20CE92E40();
  v74 = *(v11 - 8);
  v75 = v11;
  v12 = *(v74 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v69 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = sub_20CE92F10();
  v15 = *(v70 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v70);
  v18 = &v69 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = sub_20CE92F30();
  v19 = *(v69 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v69);
  v22 = &v69 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20CE8E04C();
  v73 = v23;
  v71 = *(v23 - 8);
  v24 = *(v71 + 64);
  MEMORY[0x28223BE20](v23);
  v26 = &v69 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20CE8DF30();
  v76 = v27;
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x28223BE20](v27);
  v30 = &v69 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20CE8DEC8();
  v77 = v31;
  v32 = *(*(v31 - 8) + 64);
  v33 = MEMORY[0x28223BE20](v31);
  v35 = &v69 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v80 = &v69 - v36;
  v37 = sub_20CE92F00();
  v81 = *(v37 - 8);
  v82 = v37;
  v38 = *(v81 + 64);
  v39 = MEMORY[0x28223BE20](v37);
  v79 = &v69 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v39);
  v89 = &v69 - v41;
  sub_20CE93160();
  v78 = sub_20CE93150();
  sub_20CE93120();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_20CE92EF0();
  sub_20CE8D048(v22);
  sub_20CE8D26C(v18);
  (*(v15 + 8))(v18, v70);
  (*(v19 + 8))(v22, v69);
  if (qword_281111808 != -1)
  {
    swift_once();
  }

  v42 = qword_2811123B0;
  sub_20CE92E60();
  v44 = v74;
  v43 = v75;
  (*(v74 + 104))(v14, *MEMORY[0x277CE0FE0], v75);
  v45 = sub_20CE92E50();

  (*(v44 + 8))(v14, v43);
  v90 = v45;
  v91 = 0;
  v92 = 1;
  sub_20CE8E0D0();
  v47 = v46;
  v48 = sub_20CE7EEF4();
  sub_20CE92D90();

  v90 = v47;
  v91 = v48;
  swift_getOpaqueTypeConformance2();
  v49 = v73;
  sub_20CE92D40();
  (*(v71 + 8))(v26, v49);
  v50 = sub_20CE92C60();
  sub_20CE92980();
  v51 = &v30[*(v76 + 36)];
  *v51 = v50;
  *(v51 + 1) = v52;
  *(v51 + 2) = v53;
  *(v51 + 3) = v54;
  *(v51 + 4) = v55;
  v51[40] = 0;
  sub_20CE930A0();
  if (qword_281111800 != -1)
  {
    swift_once();
  }

  v56 = qword_2811123F0;
  sub_20CE92730();
  v90 = sub_20CE930C0();
  v91 = v57;
  sub_20CE8E450();
  sub_20CE835D8();
  sub_20CE92DB0();

  sub_20CE8E538(v30, sub_20CE8DF30);
  v58 = v85;
  sub_20CE92B50();
  v59 = v80;
  sub_20CE929D0();
  (*(v86 + 8))(v58, v87);
  sub_20CE8E538(v35, sub_20CE8DEC8);
  v61 = v81;
  v60 = v82;
  v62 = *(v81 + 16);
  v63 = v79;
  v64 = v89;
  v62(v79, v89, v82);
  sub_20CE73FCC(v59, v35);
  v65 = v88;
  v62(v88, v63, v60);
  sub_20CE8DE58();
  sub_20CE73FCC(v35, &v65[*(v66 + 48)]);
  sub_20CE8E538(v59, sub_20CE8DEC8);
  v67 = *(v61 + 8);
  v67(v64, v60);
  sub_20CE8E538(v35, sub_20CE8DEC8);
  v67(v63, v60);
}

void sub_20CE8DDC0()
{
  if (!qword_27C8181F0)
  {
    sub_20CE8E598(255, &qword_27C8181F8, sub_20CE8DE58, MEMORY[0x277CE14B8]);
    v0 = sub_20CE929B0();
    if (!v1)
    {
      atomic_store(v0, &qword_27C8181F0);
    }
  }
}

void sub_20CE8DE58()
{
  if (!qword_27C818200)
  {
    sub_20CE92F00();
    sub_20CE8DEC8();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27C818200);
    }
  }
}

void sub_20CE8DEC8()
{
  if (!qword_27C818208)
  {
    sub_20CE8DF30();
    sub_20CE92C40();
    v0 = sub_20CE929E0();
    if (!v1)
    {
      atomic_store(v0, &qword_27C818208);
    }
  }
}

void sub_20CE8DF30()
{
  if (!qword_27C818210)
  {
    sub_20CE8DF90();
    v0 = sub_20CE929E0();
    if (!v1)
    {
      atomic_store(v0, &qword_27C818210);
    }
  }
}

void sub_20CE8DF90()
{
  if (!qword_27C818218)
  {
    sub_20CE8E04C();
    sub_20CE8E0D0();
    sub_20CE7EEF4();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27C818218);
    }
  }
}

void sub_20CE8E04C()
{
  if (!qword_27C818220)
  {
    sub_20CE8E0D0();
    sub_20CE7EEF4();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27C818220);
    }
  }
}

void sub_20CE8E0D0()
{
  if (!qword_281111A58)
  {
    v0 = sub_20CE929E0();
    if (!v1)
    {
      atomic_store(v0, &qword_281111A58);
    }
  }
}

uint64_t sub_20CE8E144@<X0>(uint64_t *a1@<X8>)
{
  *a1 = sub_20CE92EB0();
  a1[1] = v3;
  sub_20CE8DDC0();
  return sub_20CE8D4D8(v1, a1 + *(v4 + 44));
}

uint64_t type metadata accessor for MenstrualCyclesWidgetCircularView()
{
  result = qword_281111F68;
  if (!qword_281111F68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20CE8E1F8()
{
  sub_20CE8E598(319, &qword_281111FF8, MEMORY[0x277CE3BA0], MEMORY[0x277CDF468]);
  if (v0 <= 0x3F)
  {
    sub_20CE8E598(319, &qword_281111AE0, MEMORY[0x277CE3AF8], MEMORY[0x277CDF468]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_20CE8E2DC()
{
  result = qword_27C818228;
  if (!qword_27C818228)
  {
    sub_20CE8E334();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C818228);
  }

  return result;
}

void sub_20CE8E334()
{
  if (!qword_27C818230)
  {
    sub_20CE8E598(255, &qword_27C8181F8, sub_20CE8DE58, MEMORY[0x277CE14B8]);
    sub_20CE8E3C8();
    v0 = sub_20CE92E80();
    if (!v1)
    {
      atomic_store(v0, &qword_27C818230);
    }
  }
}

unint64_t sub_20CE8E3C8()
{
  result = qword_27C818238;
  if (!qword_27C818238)
  {
    sub_20CE8E598(255, &qword_27C8181F8, sub_20CE8DE58, MEMORY[0x277CE14B8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C818238);
  }

  return result;
}

unint64_t sub_20CE8E450()
{
  result = qword_27C818240;
  if (!qword_27C818240)
  {
    sub_20CE8DF30();
    sub_20CE8E04C();
    sub_20CE8E0D0();
    sub_20CE7EEF4();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C818240);
  }

  return result;
}

uint64_t sub_20CE8E538(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_20CE8E598(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_20CE8E5FC(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_20CE8E598(0, a3, a4, MEMORY[0x277CDF458]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_20CE8E6A8@<X0>(uint64_t a1@<X8>)
{
  v95 = a1;
  v90 = sub_20CE92F30();
  v98 = *(v90 - 8);
  v1 = *(v98 + 64);
  v2 = MEMORY[0x28223BE20](v90);
  v94 = v78 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v91 = v78 - v4;
  v5 = sub_20CE92740();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v88 = v78 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_20CE93090();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v81 = v78 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_20CE92750();
  v12 = *(v11 - 8);
  v13 = v12[8];
  MEMORY[0x28223BE20](v11);
  v15 = v78 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = type metadata accessor for MenstrualCyclesWidgetTimelineProvider();
  v16 = *(*(v80 - 8) + 64);
  MEMORY[0x28223BE20](v80);
  v18 = (v78 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_20CE8F3F0();
  v84 = v19;
  v82 = *(v19 - 1);
  v20 = *(v82 + 64);
  MEMORY[0x28223BE20](v19);
  v79 = v78 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20CE8F484();
  v87 = v22;
  v85 = *(v22 - 8);
  v23 = *(v85 + 64);
  MEMORY[0x28223BE20](v22);
  v83 = v78 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20CE8F554();
  v97 = v25;
  v89 = *(v25 - 8);
  v26 = *(v89 + 64);
  MEMORY[0x28223BE20](v25);
  v86 = v78 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20CE8F664();
  v92 = *(v28 - 8);
  v93 = v28;
  v29 = *(v92 + 64);
  MEMORY[0x28223BE20](v28);
  v96 = v78 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = *MEMORY[0x277D118C0];
  v78[1] = sub_20CE930B0();
  v78[0] = v32;
  v33 = [objc_allocWithZone(MEMORY[0x277CCD4D8]) init];
  v34 = type metadata accessor for MenstrualCyclesWidgetTimelineGenerator();
  v35 = *(v34 + 48);
  v36 = *(v34 + 52);
  v37 = swift_allocObject();
  sub_20CE927F0();
  v38 = *MEMORY[0x277CC9830];
  v39 = v12[13];
  v39(v15, v38, v11);
  sub_20CE92760();
  v40 = v12[1];
  v40(v15, v11);
  *(v37 + 16) = v33;
  *(v37 + 24) = [objc_allocWithZone(MEMORY[0x277D11A10]) initWithHealthStore_];
  *v18 = v37;
  v41 = *(v80 + 24);
  v39(v15, v38, v11);
  sub_20CE92760();
  v42 = v79;
  v40(v15, v11);
  type metadata accessor for MenstrualCyclesWidgetEntryView();
  sub_20CE8F7AC(qword_281111BA0, type metadata accessor for MenstrualCyclesWidgetEntryView);
  sub_20CE8F7AC(qword_281111E58, type metadata accessor for MenstrualCyclesWidgetTimelineProvider);
  sub_20CE92F90();
  sub_20CE930A0();
  if (qword_281111800 != -1)
  {
    swift_once();
  }

  v43 = qword_2811123F0;
  sub_20CE92730();
  v44 = v43;
  v99 = sub_20CE930C0();
  v100 = v45;
  v46 = sub_20CE8F7AC(&qword_281111850, sub_20CE8F3F0);
  v47 = sub_20CE835D8();
  v48 = v83;
  v49 = v84;
  v50 = MEMORY[0x277D837D0];
  sub_20CE92BB0();

  (*(v82 + 8))(v42, v49);
  sub_20CE930A0();
  sub_20CE92730();
  v103 = sub_20CE930C0();
  v104 = v51;
  v99 = v49;
  v100 = v50;
  v101 = v46;
  v102 = v47;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v54 = v86;
  v53 = v87;
  v82 = OpaqueTypeConformance2;
  v88 = v47;
  sub_20CE92B80();

  (*(v85 + 8))(v48, v53);
  v55 = v98;
  v56 = *(v98 + 104);
  v57 = v91;
  LODWORD(v85) = *MEMORY[0x277CE3B68];
  v58 = v90;
  v84 = v56;
  v56(v91);
  v59 = sub_20CE8F828(0, 1, 1, MEMORY[0x277D84F90], &qword_2811117E8, MEMORY[0x277CE3BA0], MEMORY[0x277CE3BA0]);
  v61 = v59[2];
  v60 = v59[3];
  if (v61 >= v60 >> 1)
  {
    v59 = sub_20CE8F828(v60 > 1, v61 + 1, 1, v59, &qword_2811117E8, MEMORY[0x277CE3BA0], MEMORY[0x277CE3BA0]);
  }

  v59[2] = v61 + 1;
  v63 = *(v55 + 32);
  v62 = v55 + 32;
  v87 = (*(v62 + 48) + 32) & ~*(v62 + 48);
  v64 = v62;
  v65 = *(v62 + 40);
  v98 = v64;
  v91 = v63;
  (v63)(v59 + v87 + v65 * v61, v57, v58);
  v99 = v53;
  v100 = MEMORY[0x277D837D0];
  v101 = v82;
  v102 = v88;
  v66 = swift_getOpaqueTypeConformance2();
  v67 = v97;
  sub_20CE92B90();

  (*(v89 + 8))(v54, v67);
  sub_20CE8FA80(0, &qword_2811117E0, MEMORY[0x277CE3BD8], MEMORY[0x277D84560]);
  v68 = *(sub_20CE92F50() - 8);
  v69 = *(v68 + 72);
  v70 = (*(v68 + 80) + 32) & ~*(v68 + 80);
  *(swift_allocObject() + 16) = xmmword_20CE93A50;
  sub_20CE92F40();
  v71 = v94;
  v84(v94, v85, v58);
  v72 = sub_20CE8F828(0, 1, 1, MEMORY[0x277D84F90], &qword_2811117E8, MEMORY[0x277CE3BA0], MEMORY[0x277CE3BA0]);
  v74 = v72[2];
  v73 = v72[3];
  if (v74 >= v73 >> 1)
  {
    v72 = sub_20CE8F828(v73 > 1, v74 + 1, 1, v72, &qword_2811117E8, MEMORY[0x277CE3BA0], MEMORY[0x277CE3BA0]);
  }

  v72[2] = v74 + 1;
  (v91)(v72 + v87 + v74 * v65, v71, v58);
  v99 = v97;
  v100 = v66;
  swift_getOpaqueTypeConformance2();
  v75 = v96;
  v76 = v93;
  sub_20CE92BA0();

  return (*(v92 + 8))(v75, v76);
}

uint64_t sub_20CE8F2D8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_20CE93160();
  sub_20CE93150();
  sub_20CE93120();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = type metadata accessor for MenstrualCyclesWidgetEntryView();
  sub_20CE8FA1C(a1, a2 + *(v4 + 20));
  *a2 = swift_getKeyPath();
  sub_20CE8FA80(0, &qword_281111AF8, MEMORY[0x277CE3BA0], MEMORY[0x277CDF458]);
  swift_storeEnumTagMultiPayload();
}

void sub_20CE8F3F0()
{
  if (!qword_281111848)
  {
    type metadata accessor for MenstrualCyclesWidgetEntryView();
    sub_20CE8F7AC(qword_281111BA0, type metadata accessor for MenstrualCyclesWidgetEntryView);
    v0 = sub_20CE92FA0();
    if (!v1)
    {
      atomic_store(v0, &qword_281111848);
    }
  }
}

void sub_20CE8F484()
{
  if (!qword_281111FE0)
  {
    sub_20CE8F3F0();
    sub_20CE8F7AC(&qword_281111850, sub_20CE8F3F0);
    sub_20CE835D8();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_281111FE0);
    }
  }
}

void sub_20CE8F554()
{
  if (!qword_281111FF0)
  {
    sub_20CE8F484();
    sub_20CE8F3F0();
    sub_20CE8F7AC(&qword_281111850, sub_20CE8F3F0);
    sub_20CE835D8();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_281111FF0);
    }
  }
}

void sub_20CE8F664()
{
  if (!qword_281111FE8)
  {
    sub_20CE8F554();
    sub_20CE8F484();
    sub_20CE8F3F0();
    sub_20CE8F7AC(&qword_281111850, sub_20CE8F3F0);
    sub_20CE835D8();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_281111FE8);
    }
  }
}

uint64_t sub_20CE8F7AC(unint64_t *a1, void (*a2)(uint64_t))
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

size_t sub_20CE8F828(size_t result, int64_t a2, char a3, void *a4, unint64_t *a5, uint64_t (*a6)(uint64_t), uint64_t (*a7)(void))
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
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  sub_20CE8FA80(0, a5, a6, MEMORY[0x277D84560]);
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

uint64_t sub_20CE8FA1C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MenstrualCyclesWidgetEntry(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_20CE8FA80(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t MenstrualCyclesWidgetEntryView.init(entry:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  *a2 = swift_getKeyPath();
  sub_20CE90B08(0, &qword_281111AF8, MEMORY[0x277CE3BA0], MEMORY[0x277CDF458]);
  swift_storeEnumTagMultiPayload();
  v4 = a2 + *(type metadata accessor for MenstrualCyclesWidgetEntryView() + 20);

  return sub_20CE8CBBC(a1, v4);
}

uint64_t sub_20CE8FB84@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_20CE92B20();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x277CE3BA0];
  v10 = MEMORY[0x277CDF458];
  sub_20CE90B08(0, &qword_281111AF8, MEMORY[0x277CE3BA0], MEMORY[0x277CDF458]);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = (&v19 - v13);
  sub_20CE90D9C(v2, &v19 - v13, &qword_281111AF8, v9, v10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = sub_20CE92F30();
    return (*(*(v15 - 8) + 32))(a1, v14, v15);
  }

  else
  {
    v17 = *v14;
    sub_20CE93190();
    v18 = sub_20CE92C50();
    sub_20CE92890();

    sub_20CE92B10();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v8, v4);
  }
}

uint64_t MenstrualCyclesWidgetEntryView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v38[4] = a1;
  v2 = type metadata accessor for MenstrualCyclesWidgetRectangularView();
  v3 = *(*(v2 - 1) + 64);
  MEMORY[0x28223BE20](v2);
  v5 = (v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_20CE90CD0(0, &qword_2811119A0, MEMORY[0x277CE0330]);
  v38[3] = v6;
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = v38 - v8;
  sub_20CE90600(0, &qword_2811119B0, MEMORY[0x277CE0330]);
  v38[1] = v10;
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = v38 - v12;
  sub_20CE90600(0, &qword_281111990, MEMORY[0x277CE0338]);
  v38[2] = v14;
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  v17 = v38 - v16;
  v39 = type metadata accessor for MenstrualCyclesWidgetCircularView();
  v18 = *(*(v39 - 8) + 64);
  MEMORY[0x28223BE20](v39);
  v20 = (v38 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = sub_20CE92F30();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  v25 = v38 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20CE8FB84(v25);
  v26 = (*(v22 + 88))(v25, v21);
  if (v26 != *MEMORY[0x277CE3B68])
  {
    v38[0] = v2;
    v34 = v39;
    if (v26 == *MEMORY[0x277CE3B78] || v26 == *MEMORY[0x277CE3B90])
    {
      *v20 = swift_getKeyPath();
      v36 = MEMORY[0x277CDF458];
      sub_20CE90B08(0, &qword_281111AF8, MEMORY[0x277CE3BA0], MEMORY[0x277CDF458]);
      swift_storeEnumTagMultiPayload();
      v37 = *(v34 + 20);
      *(v20 + v37) = swift_getKeyPath();
      sub_20CE90B08(0, &qword_281111B00, MEMORY[0x277CE3AF8], v36);
      swift_storeEnumTagMultiPayload();
      v32 = type metadata accessor for MenstrualCyclesWidgetCircularView;
      sub_20CE90918(v20, v13, type metadata accessor for MenstrualCyclesWidgetCircularView);
      swift_storeEnumTagMultiPayload();
      sub_20CE90D54(&qword_281111FA0, type metadata accessor for MenstrualCyclesWidgetCircularView);
      sub_20CE90D54(&qword_281111F00, type metadata accessor for MenstrualCyclesWidgetRectangularView);
      sub_20CE92BD0();
      sub_20CE90980(v17, v9);
      swift_storeEnumTagMultiPayload();
      sub_20CE90670();
      sub_20CE92BD0();
      sub_20CE90A00(v17);
      v33 = v20;
      return sub_20CE90A78(v33, v32);
    }

    v2 = v38[0];
    if (v26 != *MEMORY[0x277CE3B98])
    {
      swift_storeEnumTagMultiPayload();
      sub_20CE90670();
      sub_20CE92BD0();
      return (*(v22 + 8))(v25, v21);
    }
  }

  v27 = v1 + *(type metadata accessor for MenstrualCyclesWidgetEntryView() + 20);
  v28 = type metadata accessor for MenstrualCyclesWidgetEntry(0);
  sub_20CE90D9C(v27 + *(v28 + 24), v5 + v2[9], &qword_281111CC0, type metadata accessor for MenstrualCyclesWidgetEntry.State, MEMORY[0x277D83D88]);
  *v5 = swift_getKeyPath();
  v29 = MEMORY[0x277CDF458];
  sub_20CE90B08(0, &qword_281111AF8, MEMORY[0x277CE3BA0], MEMORY[0x277CDF458]);
  swift_storeEnumTagMultiPayload();
  *(v5 + v2[5]) = swift_getKeyPath();
  sub_20CE90B08(0, &qword_281111B00, MEMORY[0x277CE3AF8], v29);
  swift_storeEnumTagMultiPayload();
  *(v5 + v2[6]) = swift_getKeyPath();
  sub_20CE90B08(0, &qword_281111AF0, MEMORY[0x277CDF3E0], v29);
  swift_storeEnumTagMultiPayload();
  *(v5 + v2[7]) = swift_getKeyPath();
  sub_20CE90B08(0, &qword_281111AE8, MEMORY[0x277CDFA28], v29);
  swift_storeEnumTagMultiPayload();
  KeyPath = swift_getKeyPath();
  v31 = v5 + v2[8];
  *v31 = KeyPath;
  v31[8] = 0;
  v32 = type metadata accessor for MenstrualCyclesWidgetRectangularView;
  sub_20CE90918(v5, v13, type metadata accessor for MenstrualCyclesWidgetRectangularView);
  swift_storeEnumTagMultiPayload();
  sub_20CE90D54(&qword_281111FA0, type metadata accessor for MenstrualCyclesWidgetCircularView);
  sub_20CE90D54(&qword_281111F00, type metadata accessor for MenstrualCyclesWidgetRectangularView);
  sub_20CE92BD0();
  sub_20CE90980(v17, v9);
  swift_storeEnumTagMultiPayload();
  sub_20CE90670();
  sub_20CE92BD0();
  sub_20CE90A00(v17);
  v33 = v5;
  return sub_20CE90A78(v33, v32);
}

uint64_t type metadata accessor for MenstrualCyclesWidgetEntryView()
{
  result = qword_281111B90;
  if (!qword_281111B90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20CE90600(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for MenstrualCyclesWidgetCircularView();
    v7 = type metadata accessor for MenstrualCyclesWidgetRectangularView();
    v8 = a3(a1, v6, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

unint64_t sub_20CE90670()
{
  result = qword_281111998;
  if (!qword_281111998)
  {
    sub_20CE90600(255, &qword_281111990, MEMORY[0x277CE0338]);
    sub_20CE90D54(&qword_281111FA0, type metadata accessor for MenstrualCyclesWidgetCircularView);
    sub_20CE90D54(&qword_281111F00, type metadata accessor for MenstrualCyclesWidgetRectangularView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281111998);
  }

  return result;
}

uint64_t sub_20CE9076C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(char *))
{
  v8 = (*(*(a5(0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v10 = &v13 - v9;
  (*(v11 + 16))(&v13 - v9, a1);
  return a6(v10);
}

void sub_20CE9083C(_BYTE *a1@<X8>)
{
  v2 = [objc_opt_self() sharedBehavior];
  if (v2)
  {
    v3 = v2;
    v4 = [v2 isAppleWatch];

    if (v4)
    {
      sub_20CE92AC0();
      sub_20CE90D54(&qword_27C818190, MEMORY[0x277CE3940]);
      sub_20CE92B30();
      v5 = v6;
    }

    else
    {
      v5 = 0;
    }

    *a1 = v5;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_20CE90918(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_20CE90980(uint64_t a1, uint64_t a2)
{
  sub_20CE90600(0, &qword_281111990, MEMORY[0x277CE0338]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20CE90A00(uint64_t a1)
{
  sub_20CE90600(0, &qword_281111990, MEMORY[0x277CE0338]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_20CE90A78(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_20CE90B08(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_20CE90B80()
{
  sub_20CE90B08(319, &qword_281111FF8, MEMORY[0x277CE3BA0], MEMORY[0x277CDF468]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for MenstrualCyclesWidgetEntry(319);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_20CE90C34()
{
  result = qword_281111968;
  if (!qword_281111968)
  {
    sub_20CE90CD0(255, &qword_281111960, MEMORY[0x277CE0338]);
    sub_20CE90670();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281111968);
  }

  return result;
}

void sub_20CE90CD0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, void))
{
  if (!*a2)
  {
    sub_20CE90600(255, &qword_281111990, MEMORY[0x277CE0338]);
    v7 = a3(a1, v6, MEMORY[0x277CE1428]);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_20CE90D54(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_20CE90D9C(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t))
{
  sub_20CE90B08(0, a3, a4, a5);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  return a2;
}

uint64_t sub_20CE90E0C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v30 = a3;
  v5 = sub_20CE92750();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_20CE92810();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = sub_20CE92720();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_20CE92EE0();
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v17);
  v22 = &v27 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v27 = v20;
    v28 = v19;
    v23 = *(v13 + 16);
    v29 = a2;
    v23(v16, a2, v12);
    (*(v6 + 104))(v9, *MEMORY[0x277CC9830], v5);
    sub_20CE92760();
    (*(v6 + 8))(v9, v5);
    sub_20CE92EC0();
    if (([a1 isPartiallyLogged] & 1) != 0 || (objc_msgSend(a1, sel_mostLikelyDays), (sub_20CE931B0() & 1) == 0))
    {
      [a1 allDays];
      v26 = sub_20CE931B0();

      (*(v13 + 8))(v29, v12);
      result = (*(v27 + 8))(v22, v28);
      v25 = v26 & 1;
    }

    else
    {

      (*(v13 + 8))(v29, v12);
      result = (*(v27 + 8))(v22, v28);
      v25 = 2;
    }
  }

  else
  {
    result = (*(v13 + 8))(a2, v12);
    v25 = 0;
  }

  *v30 = v25;
  return result;
}

void sub_20CE91194(void *a1@<X0>, char *a2@<X1>, char *a3@<X8>)
{
  v105 = a2;
  v101 = a3;
  sub_20CE92040(0, &qword_281111FB0, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  *&v91 = &v81 - v6;
  v108 = sub_20CE92810();
  v110 = *(v108 - 8);
  v7 = *(v110 + 64);
  MEMORY[0x28223BE20](v108);
  v107 = &v81 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_20CE926A0();
  v106 = *(v9 - 8);
  v10 = *(v106 + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v93 = &v81 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v81 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v81 - v16;
  v18 = sub_20CE92720();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v21 = MEMORY[0x28223BE20](v18);
  v92 = &v81 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v102 = &v81 - v23;
  v24 = sub_20CE925B0();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  v27 = MEMORY[0x28223BE20](v24);
  v29 = &v81 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v31 = &v81 - v30;
  v32 = [a1 pregnancyDuration];
  if (!v32)
  {
    (*(v19 + 8))(v105, v18);

    v74 = 0;
    goto LABEL_14;
  }

  v109 = v19;
  v89 = v15;
  v104 = v18;
  v100 = v9;
  v90 = a1;
  v33 = v32;
  sub_20CE92580();

  v87 = v25;
  v34 = *(v25 + 32);
  v99 = v31;
  v88 = v24;
  v34(v31, v29, v24);
  v35 = v107;
  sub_20CE927F0();
  sub_20CE92040(0, &qword_27C818250, MEMORY[0x277CC99D0], MEMORY[0x277D84560]);
  v37 = v36;
  v38 = sub_20CE92800();
  v39 = *(v38 - 8);
  v40 = *(v39 + 72);
  v41 = (*(v39 + 80) + 32) & ~*(v39 + 80);
  v96 = *(v39 + 80);
  v98 = v37;
  v42 = swift_allocObject();
  *(v42 + 16) = xmmword_20CE94000;
  v85 = v41;
  v43 = *MEMORY[0x277CC9978];
  v86 = v39;
  v44 = *(v39 + 104);
  v44(v42 + v41, v43, v38);
  v44(v42 + v41 + v40, *MEMORY[0x277CC9988], v38);
  v44(v42 + v41 + 2 * v40, *MEMORY[0x277CC9998], v38);
  v44(v42 + v41 + 3 * v40, *MEMORY[0x277CC9968], v38);
  v44(v42 + v41 + 4 * v40, *MEMORY[0x277CC9980], v38);
  v44(v42 + v41 + 5 * v40, *MEMORY[0x277CC99A0], v38);
  v97 = v40;
  v45 = *MEMORY[0x277CC99A8];
  v94 = v44;
  v95 = v39 + 104;
  v44(v42 + v41 + 6 * v40, v45, v38);
  sub_20CE920A4(v42);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_20CE92790();

  v46 = *(v110 + 8);
  v110 += 8;
  v103 = v46;
  v46(v35, v108);
  sub_20CE92610();
  sub_20CE92630();
  v47 = sub_20CE925D0();
  if (v48)
  {
    v49 = 0;
  }

  else
  {
    v49 = v47;
  }

  v84 = sub_20CE925F0();
  v83 = v50;
  v51 = sub_20CE92650();
  sub_20CE92670();
  sub_20CE92620();
  sub_20CE92640();
  if (__OFSUB__(v49, 1))
  {
    __break(1u);
  }

  else
  {
    sub_20CE925E0();
    sub_20CE92600();
    sub_20CE92660();
    sub_20CE92680();
    v52 = v107;
    sub_20CE927F0();
    v51 = v91;
    sub_20CE927D0();
    v103(v52, v108);
    v53 = v109;
    v54 = v104;
    if ((*(v109 + 48))(v51, 1, v104) != 1)
    {
      v55 = *(v106 + 8);
      v106 += 8;
      v84 = v55;
      v55(v17, v100);
      (*(v53 + 32))(v102, v51, v54);
      v56 = v107;
      sub_20CE927F0();
      v57 = v85;
      v58 = swift_allocObject();
      v91 = xmmword_20CE93A50;
      *(v58 + 16) = xmmword_20CE93A50;
      v83 = *MEMORY[0x277CC9940];
      v94(v58 + v57);
      sub_20CE920A4(v58);
      swift_setDeallocating();
      v86 = *(v86 + 8);
      (v86)(v58 + v57, v38);
      swift_deallocClassInstance();
      v59 = v92;
      v82 = v38;
      sub_20CE92590();
      v60 = v89;
      sub_20CE92780();

      v61 = *(v109 + 8);
      v109 += 8;
      v61(v59, v104);
      v103(v56, v108);
      sub_20CE927F0();
      v62 = swift_allocObject();
      *(v62 + 16) = v91;
      v63 = v82;
      (v94)(v62 + v57, v83, v82);
      sub_20CE920A4(v62);
      swift_setDeallocating();
      (v86)(v62 + v57, v63);
      v64 = v60;
      v65 = v104;
      swift_deallocClassInstance();
      v66 = v61;
      v67 = v64;
      sub_20CE92590();
      v68 = v93;
      v69 = v105;
      sub_20CE92780();

      v66(v59, v65);
      v103(v56, v108);
      v70 = sub_20CE925C0();
      if (v71)
      {

        v66(v69, v65);
        v72 = v100;
        v73 = v84;
        v84(v68, v100);
        v73(v67, v72);
        v66(v102, v65);
        (*(v87 + 8))(v99, v88);
      }

      else
      {
        v75 = v70;
        v76 = sub_20CE925C0();
        v78 = v77;

        v66(v69, v65);
        v79 = v100;
        v80 = v84;
        v84(v68, v100);
        v80(v67, v79);
        v66(v102, v65);
        (*(v87 + 8))(v99, v88);
        if ((v78 & 1) == 0 && v75 < v76)
        {
          v74 = 2;
          goto LABEL_14;
        }
      }

      v74 = 0;
LABEL_14:
      *v101 = v74;
      return;
    }
  }

  sub_20CE92390(v51);
  sub_20CE93280();
  __break(1u);
}

void MenstrualCyclesWidgetEntry.RelevanceScore.init(rawValue:)(char *a1@<X8>, float a2@<S0>)
{
  if (a2 == 0.0)
  {
    *a1 = 0;
  }

  else
  {
    if (a2 == 20.0)
    {
      v2 = 2;
    }

    else
    {
      v2 = 3;
    }

    if (a2 == 10.0)
    {
      v3 = 1;
    }

    else
    {
      v3 = v2;
    }

    *a1 = v3;
  }
}

unint64_t sub_20CE91DB4()
{
  result = qword_27C818248;
  if (!qword_27C818248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C818248);
  }

  return result;
}

uint64_t sub_20CE91E5C(uint64_t a1, char a2)
{
  sub_20CE932F0();
  LODWORD(flt_20CE940D0[a2]);
  sub_20CE93300();
  return sub_20CE93310();
}

float sub_20CE91EBC@<S0>(float *a1@<X8>)
{
  result = flt_20CE940D0[*v1];
  *a1 = result;
  return result;
}

uint64_t _s14RelevanceScoreOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s14RelevanceScoreOwst(uint64_t result, unsigned int a2, unsigned int a3)
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

void sub_20CE92040(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_20CE920A4(uint64_t a1)
{
  v2 = sub_20CE92800();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v39 = &v32 - v8;
  v9 = *(a1 + 16);
  if (v9)
  {
    sub_20CE9241C();
    v10 = sub_20CE93230();
    v11 = 0;
    v13 = *(v3 + 16);
    v12 = v3 + 16;
    v37 = v13;
    v38 = v10 + 56;
    v14 = *(v12 + 64);
    v34 = v9;
    v35 = a1 + ((v14 + 32) & ~v14);
    v15 = *(v12 + 56);
    v16 = (v12 - 8);
    v33 = (v12 + 16);
    while (1)
    {
      v36 = v11;
      v37(v39, v35 + v15 * v11, v2);
      v17 = *(v10 + 40);
      sub_20CE9249C(&qword_27C818260);
      v18 = sub_20CE93060();
      v19 = ~(-1 << *(v10 + 32));
      v20 = v18 & v19;
      v21 = (v18 & v19) >> 6;
      v22 = *(v38 + 8 * v21);
      v23 = 1 << (v18 & v19);
      if ((v23 & v22) != 0)
      {
        while (1)
        {
          v24 = v12;
          v37(v7, *(v10 + 48) + v20 * v15, v2);
          sub_20CE9249C(&qword_27C818268);
          v25 = sub_20CE93080();
          v26 = *v16;
          (*v16)(v7, v2);
          if (v25)
          {
            break;
          }

          v20 = (v20 + 1) & v19;
          v21 = v20 >> 6;
          v22 = *(v38 + 8 * (v20 >> 6));
          v23 = 1 << v20;
          v12 = v24;
          if (((1 << v20) & v22) == 0)
          {
            goto LABEL_8;
          }
        }

        v26(v39, v2);
        v12 = v24;
      }

      else
      {
LABEL_8:
        v27 = v39;
        *(v38 + 8 * v21) = v23 | v22;
        result = (*v33)(*(v10 + 48) + v20 * v15, v27, v2);
        v29 = *(v10 + 16);
        v30 = __OFADD__(v29, 1);
        v31 = v29 + 1;
        if (v30)
        {
          __break(1u);
          return result;
        }

        *(v10 + 16) = v31;
      }

      v11 = v36 + 1;
      if (v36 + 1 == v34)
      {
        return v10;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

uint64_t sub_20CE92390(uint64_t a1)
{
  sub_20CE92040(0, &qword_281111FB0, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_20CE9241C()
{
  if (!qword_27C818258)
  {
    sub_20CE92800();
    sub_20CE9249C(&qword_27C818260);
    v0 = sub_20CE93240();
    if (!v1)
    {
      atomic_store(v0, &qword_27C818258);
    }
  }
}

uint64_t sub_20CE9249C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_20CE92800();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}