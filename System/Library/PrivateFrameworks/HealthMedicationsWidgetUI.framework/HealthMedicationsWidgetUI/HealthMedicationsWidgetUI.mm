uint64_t sub_20CE989C0(uint64_t a1, uint64_t a2, uint64_t a3)
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
    sub_20CE9B1C4(0, qword_281112AB8, type metadata accessor for MedmojiIconConfiguration);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 24);

      return v11(v12, a2, v10);
    }

    else
    {
      sub_20CE9B1C4(0, &qword_281113010, MEMORY[0x277CC9578]);
      v14 = v13;
      v15 = *(*(v13 - 8) + 48);
      v16 = a1 + *(a3 + 32);

      return v15(v16, a2, v14);
    }
  }
}

uint64_t sub_20CE98B1C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    sub_20CE9B1C4(0, qword_281112AB8, type metadata accessor for MedmojiIconConfiguration);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      sub_20CE9B1C4(0, &qword_281113010, MEMORY[0x277CC9578]);
      v14 = v13;
      v15 = *(*(v13 - 8) + 56);
      v16 = v5 + *(a4 + 32);

      return v15(v16, a2, a2, v14);
    }
  }

  return result;
}

uint64_t sub_20CE98C78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_20CEB23F4();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_20CEB23A4();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_20CE98D68(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_20CEB23F4();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_20CEB23A4();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_20CE98E88()
{
  sub_20CE9C38C();
  sub_20CE9C220();
  sub_20CE9C098();
  sub_20CE9C2F0(&qword_2811126A8, sub_20CE9C098);
  sub_20CE9C338();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_20CE98FA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_20CE9FA34(0, &qword_2811128C0, MEMORY[0x277CE3BA0], MEMORY[0x277CDF468]);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = type metadata accessor for MedicationsWidgetEntry();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_20CE990C8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_20CE9FA34(0, &qword_2811128C0, MEMORY[0x277CE3BA0], MEMORY[0x277CDF468]);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = type metadata accessor for MedicationsWidgetEntry();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_20CE992DC()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20CE99314()
{
  v1 = sub_20CEB2A54();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);
  v7 = *(v0 + v5 + 8);

  return MEMORY[0x2821FE8E8](v0, ((v5 + 23) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

uint64_t sub_20CE99400()
{
  v1 = sub_20CEB2274();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  v6 = sub_20CEB2A54();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = v3 | v8;
  v11 = (*(v7 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);
  v13 = *(v0 + v11 + 8);

  return MEMORY[0x2821FE8E8](v0, ((v11 + 23) & 0xFFFFFFFFFFFFFFF8) + 8, v10 | 7);
}

uint64_t sub_20CE99578(uint64_t a1, uint64_t a2, int *a3)
{
  sub_20CEA7994(0, &qword_2811128C0, MEMORY[0x277CE3BA0], MEMORY[0x277CDF468]);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  sub_20CEA7994(0, &qword_2811128C8, MEMORY[0x277CE3AF8], MEMORY[0x277CDF468]);
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

  v14 = type metadata accessor for MedicationsWidgetViewModel();
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_7;
  }

  v16 = *(a1 + a3[7]);
  if (v16 >= 2)
  {
    v17 = ((v16 + 2147483646) & 0x7FFFFFFF) - 1;
  }

  else
  {
    v17 = -2;
  }

  if (v17 < 0)
  {
    v17 = -1;
  }

  return (v17 + 1);
}

uint64_t sub_20CE99748(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  sub_20CEA7994(0, &qword_2811128C0, MEMORY[0x277CE3BA0], MEMORY[0x277CDF468]);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    sub_20CEA7994(0, &qword_2811128C8, MEMORY[0x277CE3AF8], MEMORY[0x277CDF468]);
    if (*(*(v13 - 8) + 84) == a3)
    {
      v10 = v13;
      v14 = *(v13 - 8);
      v15 = a4[5];
    }

    else
    {
      result = type metadata accessor for MedicationsWidgetViewModel();
      if (*(*(result - 8) + 84) != a3)
      {
        *(a1 + a4[7]) = a2 + 2;
        return result;
      }

      v10 = result;
      v14 = *(result - 8);
      v15 = a4[6];
    }

    v11 = *(v14 + 56);
    v12 = a1 + v15;
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_20CE998FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_20CEA7994(0, &qword_2811128C0, MEMORY[0x277CE3BA0], MEMORY[0x277CDF468]);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

void sub_20CE999E8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_20CEA7994(0, &qword_2811128C0, MEMORY[0x277CE3BA0], MEMORY[0x277CDF468]);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    v10(a1, a2, a2, v8);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }
}

uint64_t sub_20CE99AD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for MedicationsWidgetViewModel();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 2)
    {
      v11 = ((v10 + 2147483646) & 0x7FFFFFFF) - 1;
    }

    else
    {
      v11 = -2;
    }

    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_20CE99BA8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for MedicationsWidgetViewModel();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 2;
  }

  return result;
}

uint64_t sub_20CE99C60()
{
  sub_20CEA8FA0();
  sub_20CEA95AC();
  sub_20CEA94F4(&qword_281112718, sub_20CEA8FA0);
  sub_20CEA9660();
  sub_20CEA94F4(&qword_2811128A8, sub_20CEA9660);
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_20CE99D70@<X0>(uint64_t a1@<X8>)
{
  result = sub_20CEB2604();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_20CE99DA4(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  return sub_20CEB2614();
}

uint64_t sub_20CE99DD4(uint64_t a1, uint64_t a2)
{
  sub_20CEA918C(0, &qword_281112798, sub_20CEAC988, sub_20CEACB9C, MEMORY[0x277CE0338]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_20CE99E7C@<X0>(uint64_t *a1@<X8>)
{
  sub_20CEB2044();
  result = sub_20CEB2034();
  *a1 = result;
  return result;
}

uint64_t sub_20CE99F14(uint64_t a1, uint64_t a2, int *a3)
{
  sub_20CEAD61C(0, &qword_2811128B8, MEMORY[0x277CDFB98], MEMORY[0x277CDF468]);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  sub_20CEAD61C(0, &qword_2811128C0, MEMORY[0x277CE3BA0], MEMORY[0x277CDF468]);
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

  sub_20CEAD61C(0, &qword_2811128C8, MEMORY[0x277CE3AF8], MEMORY[0x277CDF468]);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_7;
  }

  if (a2 == 254)
  {
    v16 = *(a1 + a3[7] + 8);
    if (v16 > 1)
    {
      return (v16 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v17 = type metadata accessor for MedicationsWidgetViewModel();
    v18 = *(*(v17 - 8) + 48);
    v19 = a1 + a3[8];

    return v18(v19, a2, v17);
  }
}

void sub_20CE9A15C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  sub_20CEAD61C(0, &qword_2811128B8, MEMORY[0x277CDFB98], MEMORY[0x277CDF468]);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_8:

    v11(v12, a2, a2, v10);
    return;
  }

  sub_20CEAD61C(0, &qword_2811128C0, MEMORY[0x277CE3BA0], MEMORY[0x277CDF468]);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_7:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_8;
  }

  sub_20CEAD61C(0, &qword_2811128C8, MEMORY[0x277CE3AF8], MEMORY[0x277CDF468]);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_7;
  }

  if (a3 == 254)
  {
    *(a1 + a4[7] + 8) = -a2;
  }

  else
  {
    v17 = type metadata accessor for MedicationsWidgetViewModel();
    v18 = *(*(v17 - 8) + 56);
    v19 = a1 + a4[8];

    v18(v19, a2, a2, v17);
  }
}

uint64_t sub_20CE9A3A8(uint64_t a1, uint64_t a2)
{
  sub_20CEAF808();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_20CE9A434@<X0>(uint64_t *a1@<X8>)
{
  result = sub_20CEB25B4();
  *a1 = result;
  return result;
}

uint64_t sub_20CE9A460(uint64_t *a1)
{
  v1 = *a1;

  return sub_20CEB25C4();
}

uint64_t sub_20CE9A48C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_20CEB2584();
  *a1 = result;
  return result;
}

uint64_t sub_20CE9A4B8(uint64_t *a1)
{
  v1 = *a1;

  return sub_20CEB2594();
}

uint64_t sub_20CE9A4E4()
{
  v1 = type metadata accessor for MedicationsWidgetRectangularView();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = (v0 + v3);
  sub_20CEAD61C(0, &qword_27C8184F8, MEMORY[0x277CDFB98], MEMORY[0x277CDF458]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_20CEB2544();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  else
  {
    v7 = *v5;
  }

  v8 = v1[5];
  sub_20CEAD61C(0, &qword_2811128D0, MEMORY[0x277CE3BA0], MEMORY[0x277CDF458]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_20CEB2A54();
    (*(*(v9 - 8) + 8))(&v5[v8], v9);
  }

  else
  {
    v10 = *&v5[v8];
  }

  v11 = v1[6];
  sub_20CEAD61C(0, &qword_2811128D8, MEMORY[0x277CE3AF8], MEMORY[0x277CDF458]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_20CEB2A44();
    (*(*(v12 - 8) + 8))(&v5[v11], v12);
  }

  else
  {
    v13 = *&v5[v11];
  }

  sub_20CEB0828(*&v5[v1[7]], v5[v1[7] + 8]);
  v14 = &v5[v1[8]];
  v15 = *(v14 + 1);

  v16 = *(v14 + 2);

  v17 = type metadata accessor for MedicationsWidgetViewModel();
  v18 = &v14[*(v17 + 24)];
  v19 = type metadata accessor for MedmojiIconConfiguration();
  if (!(*(*(v19 - 8) + 48))(v18, 1, v19))
  {
    v20 = sub_20CEB23F4();
    (*(*(v20 - 8) + 8))(v18, v20);
    v21 = *(v19 + 20);
    v22 = sub_20CEB23A4();
    (*(*(v22 - 8) + 8))(&v18[v21], v22);
  }

  v23 = *(v17 + 32);
  v24 = sub_20CEB2274();
  v25 = *(v24 - 8);
  if (!(*(v25 + 48))(&v14[v23], 1, v24))
  {
    (*(v25 + 8))(&v14[v23], v24);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_20CE9A8D0()
{
  sub_20CEB0224();
  sub_20CEB031C();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_20CE9A93C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_20CEB0B0C(0, &qword_2811128B8, MEMORY[0x277CDFB98], MEMORY[0x277CDF468]);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  sub_20CEB0B0C(0, &qword_2811128C0, MEMORY[0x277CE3BA0], MEMORY[0x277CDF468]);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = type metadata accessor for MedicationsWidgetViewModel();
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + *(a3 + 24);

  return v15(v16, a2, v14);
}

uint64_t sub_20CE9AADC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_20CEB0B0C(0, &qword_2811128B8, MEMORY[0x277CDFB98], MEMORY[0x277CDF468]);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  sub_20CEB0B0C(0, &qword_2811128C0, MEMORY[0x277CE3BA0], MEMORY[0x277CDF468]);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  v16 = type metadata accessor for MedicationsWidgetViewModel();
  v17 = *(*(v16 - 8) + 56);
  v18 = a1 + *(a4 + 24);

  return v17(v18, a2, a2, v16);
}

uint64_t sub_20CE9AC88(uint64_t a1, uint64_t a2)
{
  sub_20CEB175C();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_20CE9ACF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_20CEB2274();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = type metadata accessor for MedicationsWidgetViewModel();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_20CE9ADE0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_20CEB2274();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = type metadata accessor for MedicationsWidgetViewModel();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_20CE9AF00@<X0>(uint64_t *a1@<X8>)
{
  if (qword_281112628 != -1)
  {
    swift_once();
  }

  v2 = sub_20CEB2104();
  v4 = v3;
  sub_20CE9B334(0, &qword_2811125F0, MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20CEB33D0;
  *(inited + 32) = sub_20CEB2104();
  *(inited + 40) = v6;
  *(inited + 48) = sub_20CEB2104();
  *(inited + 56) = v7;
  v8 = sub_20CEA6B44(inited);
  swift_setDeallocating();
  swift_arrayDestroy();

  v9 = type metadata accessor for MedicationsWidgetViewModel();
  v10 = v9[6];
  v11 = type metadata accessor for MedmojiIconConfiguration();
  (*(*(v11 - 8) + 56))(a1 + v10, 1, 1, v11);
  v12 = v9[8];
  v13 = sub_20CEB2274();
  result = (*(*(v13 - 8) + 56))(a1 + v12, 1, 1, v13);
  *a1 = v2;
  a1[1] = v4;
  a1[2] = v8;
  *(a1 + v9[7]) = 3;
  return result;
}

uint64_t type metadata accessor for MedicationsWidgetViewModel()
{
  result = qword_281112B88;
  if (!qword_281112B88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20CE9B1C4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_20CEB2CE4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_20CE9B22C()
{
  sub_20CE9B334(319, &qword_281112688, MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    sub_20CE9B1C4(319, qword_281112AB8, type metadata accessor for MedmojiIconConfiguration);
    if (v1 <= 0x3F)
    {
      sub_20CE9B1C4(319, &qword_281113010, MEMORY[0x277CC9578]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_20CE9B334(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x277D837D0]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t type metadata accessor for MedmojiIconConfiguration()
{
  result = qword_281112AE8;
  if (!qword_281112AE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_20CE9B3FC()
{
  result = sub_20CEB23F4();
  if (v1 <= 0x3F)
  {
    result = sub_20CEB23A4();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_20CE9B4C0()
{
  result = qword_27C8184E0;
  if (!qword_27C8184E0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27C8184E0);
  }

  return result;
}

uint64_t HKMedicationUserDomainConcept.visualConfig.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  sub_20CE9B720();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [v2 userVisualizationConfigJSONString];
  if (v8)
  {
    v9 = v8;
    sub_20CEB2B54();

    sub_20CEB23E4();
    v10 = sub_20CEB23F4();
    v11 = *(v10 - 8);
    if ((*(v11 + 48))(v7, 1, v10) != 1)
    {
      (*(v11 + 32))(a1, v7, v10);
      return (*(v11 + 56))(a1, 0, 1, v10);
    }

    sub_20CE9B778(v7);
  }

  v12 = sub_20CEB23F4();
  return (*(*(v12 - 8) + 56))(a1, 1, 1, v12);
}

void sub_20CE9B720()
{
  if (!qword_281112920)
  {
    sub_20CEB23F4();
    v0 = sub_20CEB2CE4();
    if (!v1)
    {
      atomic_store(v0, &qword_281112920);
    }
  }
}

uint64_t sub_20CE9B778(uint64_t a1)
{
  sub_20CE9B720();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_20CE9B800@<X0>(uint64_t a1@<X8>)
{
  v42 = a1;
  sub_20CE9C098();
  v2 = v1;
  OpaqueTypeConformance2 = *(v1 - 8);
  v3 = *(OpaqueTypeConformance2 + 64);
  MEMORY[0x28223BE20]();
  v5 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20CE9C220();
  v40 = v6;
  v37 = *(v6 - 8);
  v7 = *(v37 + 64);
  MEMORY[0x28223BE20]();
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20CE9C38C();
  v41 = v10;
  v39 = *(v10 - 8);
  v11 = *(v39 + 64);
  MEMORY[0x28223BE20]();
  v38 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *MEMORY[0x277D114E0];
  sub_20CEB2B54();
  v14 = type metadata accessor for MedicationsWidgetTimelineGenerator();
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  swift_allocObject();
  v47 = sub_20CEA41D4();
  sub_20CE9C16C();
  v17 = type metadata accessor for MedicationsWidgetEntryView();
  v18 = sub_20CE9C2F0(qword_281112C28, type metadata accessor for MedicationsWidgetEntryView);
  v43 = v17;
  v44 = v18;
  swift_getOpaqueTypeConformance2();
  sub_20CE9C49C();
  sub_20CEB2A84();
  if (qword_281112628 != -1)
  {
    swift_once();
  }

  v43 = sub_20CEB2104();
  v44 = v19;
  v20 = sub_20CE9C2F0(&qword_2811126A8, sub_20CE9C098);
  v21 = sub_20CE9C338();
  v22 = MEMORY[0x277D837D0];
  sub_20CEB2704();

  (*(OpaqueTypeConformance2 + 8))(v5, v2);
  v47 = sub_20CEB2104();
  v48 = v23;
  v43 = v2;
  v44 = v22;
  v45 = v20;
  v46 = v21;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v24 = v38;
  v25 = v40;
  sub_20CEB26E4();

  (*(v37 + 8))(v9, v25);
  sub_20CE9C578(0, &qword_2811125F8, MEMORY[0x277CE3BA0], MEMORY[0x277D84560]);
  v26 = sub_20CEB2A54();
  v27 = *(v26 - 8);
  v28 = *(v27 + 72);
  v29 = (*(v27 + 80) + 32) & ~*(v27 + 80);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_20CEB3440;
  v31 = v30 + v29;
  v32 = *(v27 + 104);
  v32(v31, *MEMORY[0x277CE3B90], v26);
  v32(v31 + v28, *MEMORY[0x277CE3B80], v26);
  v32(v31 + 2 * v28, *MEMORY[0x277CE3B98], v26);
  v43 = v25;
  v44 = MEMORY[0x277D837D0];
  v45 = OpaqueTypeConformance2;
  v46 = v21;
  swift_getOpaqueTypeConformance2();
  v33 = v41;
  sub_20CEB26F4();

  return (*(v39 + 8))(v24, v33);
}

uint64_t sub_20CE9BE10(uint64_t a1)
{
  sub_20CE9C578(0, &qword_281113030, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
  v3 = (*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v5 = &v13 - v4;
  v6 = type metadata accessor for MedicationsWidgetEntryView();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20]();
  v9 = (&v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_20CEB2BF4();
  sub_20CEB2BE4();
  sub_20CEB2BD4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_20CE9C4F0(a1, v9 + *(v6 + 20));
  *v9 = swift_getKeyPath();
  sub_20CE9C578(0, &qword_2811128D0, MEMORY[0x277CE3BA0], MEMORY[0x277CDF458]);
  swift_storeEnumTagMultiPayload();
  v10 = HKMedicationsRoomDeepLink();
  sub_20CEB2194();

  v11 = sub_20CEB21A4();
  (*(*(v11 - 8) + 56))(v5, 0, 1, v11);
  sub_20CE9C2F0(qword_281112C28, type metadata accessor for MedicationsWidgetEntryView);
  sub_20CEB2864();
  sub_20CE9C5DC(v5);
  sub_20CE9C668(v9);
}

void sub_20CE9C098()
{
  if (!qword_2811126A0)
  {
    sub_20CE9C16C();
    type metadata accessor for MedicationsWidgetEntryView();
    sub_20CE9C2F0(qword_281112C28, type metadata accessor for MedicationsWidgetEntryView);
    swift_getOpaqueTypeConformance2();
    v0 = sub_20CEB2A94();
    if (!v1)
    {
      atomic_store(v0, &qword_2811126A0);
    }
  }
}

void sub_20CE9C16C()
{
  if (!qword_281112760)
  {
    type metadata accessor for MedicationsWidgetEntryView();
    sub_20CE9C2F0(qword_281112C28, type metadata accessor for MedicationsWidgetEntryView);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_281112760);
    }
  }
}

void sub_20CE9C220()
{
  if (!qword_281112838)
  {
    sub_20CE9C098();
    sub_20CE9C2F0(&qword_2811126A8, sub_20CE9C098);
    sub_20CE9C338();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_281112838);
    }
  }
}

uint64_t sub_20CE9C2F0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_20CE9C338()
{
  result = qword_281112698;
  if (!qword_281112698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281112698);
  }

  return result;
}

void sub_20CE9C38C()
{
  if (!qword_281112840)
  {
    sub_20CE9C220();
    sub_20CE9C098();
    sub_20CE9C2F0(&qword_2811126A8, sub_20CE9C098);
    sub_20CE9C338();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_281112840);
    }
  }
}

unint64_t sub_20CE9C49C()
{
  result = qword_281112E10[0];
  if (!qword_281112E10[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_281112E10);
  }

  return result;
}

uint64_t sub_20CE9C4F0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MedicationsWidgetEntry();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_20CE9C578(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_20CE9C5DC(uint64_t a1)
{
  sub_20CE9C578(0, &qword_281113030, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_20CE9C668(uint64_t a1)
{
  v2 = type metadata accessor for MedicationsWidgetEntryView();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_20CE9C6C4()
{
  v0 = sub_20CEB22B4();
  v1 = *(v0 - 8);
  v2 = v1[8];
  v3 = MEMORY[0x28223BE20](v0);
  v25 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v3);
  v24 = &v23 - v6;
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v23 - v8;
  MEMORY[0x28223BE20](v7);
  v11 = &v23 - v10;
  v12 = sub_20CEB22D4();
  v26 = *(v12 - 8);
  v27 = v12;
  v13 = *(v26 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20CEB22A4();
  v28 = v15;
  sub_20CEB22C4();
  v16 = *MEMORY[0x277CC9768];
  v23 = v1[13];
  v23(v9, v16, v0);
  sub_20CE9CD88();
  sub_20CEB2BB4();
  sub_20CEB2BB4();
  if (v31 == v29 && v32 == v30)
  {
    v17 = 1;
  }

  else
  {
    v17 = sub_20CEB2E24();
  }

  v18 = v1[1];
  v18(v9, v0);
  v18(v11, v0);

  if (v17)
  {
    (*(v26 + 8))(v28, v27);
    v19 = 1;
  }

  else
  {
    v20 = v24;
    sub_20CEB22C4();
    v21 = v25;
    v23(v25, *MEMORY[0x277CC9770], v0);
    sub_20CEB2BB4();
    sub_20CEB2BB4();
    if (v31 == v29 && v32 == v30)
    {
      v19 = 1;
    }

    else
    {
      v19 = sub_20CEB2E24();
    }

    v18(v21, v0);
    v18(v20, v0);
    (*(v26 + 8))(v28, v27);
  }

  return v19 & 1;
}

uint64_t sub_20CE9CA48(uint64_t a1)
{
  v2 = sub_20CEB22B4();
  v3 = *(v2 - 8);
  v4 = v3[8];
  v5 = MEMORY[0x28223BE20](v2);
  v24 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v25 = &v23 - v8;
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v23 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = &v23 - v12;
  v26 = a1;
  sub_20CEB22C4();
  v14 = *MEMORY[0x277CC9758];
  v23 = v3[13];
  v23(v11, v14, v2);
  sub_20CE9CD88();
  sub_20CEB2BB4();
  sub_20CEB2BB4();
  if (v29 == v27 && v30 == v28)
  {
    v15 = 1;
  }

  else
  {
    v15 = sub_20CEB2E24();
  }

  v16 = v3[1];
  v16(v11, v2);
  v16(v13, v2);

  if ((v15 & 1) == 0)
  {
    v17 = v25;
    sub_20CEB22C4();
    v18 = v24;
    v23(v24, *MEMORY[0x277CC9760], v2);
    sub_20CEB2BB4();
    sub_20CEB2BB4();
    if (v29 == v27 && v30 == v28)
    {
      v16(v18, v2);
      v16(v17, v2);
    }

    else
    {
      v19 = sub_20CEB2E24();
      v16(v18, v2);
      v16(v17, v2);

      if ((v19 & 1) == 0)
      {
        return 2;
      }
    }
  }

  v20 = sub_20CEB2284();
  v21 = [v20 positionOfDayPeriodInFormattedTime];

  if (v21 <= 2)
  {
    return (2 - v21);
  }

  else
  {
    return 2;
  }
}

unint64_t sub_20CE9CD88()
{
  result = qword_281113008;
  if (!qword_281113008)
  {
    sub_20CEB22B4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281113008);
  }

  return result;
}

id sub_20CE9CDE0()
{
  type metadata accessor for MedicationsWidgetTimelineGenerator();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass_];
  qword_281113680 = result;
  return result;
}

unint64_t sub_20CE9CE4C()
{
  result = qword_281112CC0;
  if (!qword_281112CC0)
  {
    type metadata accessor for MedicationsWidgetEntry();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281112CC0);
  }

  return result;
}

uint64_t sub_20CE9CEA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_20CEB2AF4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = (MEMORY[0x28223BE20])();
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v29 - v10;
  v12 = sub_20CEB2474();
  v32 = *(v12 - 8);
  v33 = v12;
  v13 = *(v32 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20CEB2454();
  v16 = *(v5 + 16);
  v16(v11, a1, v4);
  v17 = sub_20CEB2464();
  v18 = sub_20CEB2C74();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v31 = a2;
    v20 = v19;
    v30 = swift_slowAlloc();
    v34 = v30;
    *v20 = 136446466;
    *(v20 + 4) = sub_20CEA47DC(0xD000000000000021, 0x800000020CEB3500, &v34);
    *(v20 + 12) = 2082;
    v16(v9, v11, v4);
    v21 = sub_20CEB2B64();
    v23 = v22;
    (*(v5 + 8))(v11, v4);
    v24 = sub_20CEA47DC(v21, v23, &v34);

    *(v20 + 14) = v24;
    _os_log_impl(&dword_20CE97000, v17, v18, "[%{public}s] Returning placeholder for context %{public}s", v20, 0x16u);
    v25 = v30;
    swift_arrayDestroy();
    MEMORY[0x20F318720](v25, -1, -1);
    v26 = v20;
    a2 = v31;
    MEMORY[0x20F318720](v26, -1, -1);
  }

  else
  {

    (*(v5 + 8))(v11, v4);
  }

  (*(v32 + 8))(v15, v33);
  sub_20CEB2264();
  v27 = type metadata accessor for MedicationsWidgetEntry();
  return sub_20CE9AF00((a2 + *(v27 + 20)));
}

uint64_t sub_20CE9D1C4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t a4)
{
  v35 = a1;
  v36 = a4;
  v6 = sub_20CEB2AF4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v30 - v12;
  v14 = sub_20CEB2474();
  v33 = *(v14 - 8);
  v34 = v14;
  v15 = *(v33 + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20CEB2454();
  v18 = *(v7 + 16);
  v18(v13, a2, v6);
  v19 = sub_20CEB2464();
  v20 = sub_20CEB2C74();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v32 = a3;
    v22 = v21;
    v31 = swift_slowAlloc();
    v37 = v31;
    *v22 = 136446466;
    *(v22 + 4) = sub_20CEA47DC(0xD000000000000021, 0x800000020CEB3500, &v37);
    *(v22 + 12) = 2082;
    v18(v11, v13, v6);
    v23 = sub_20CEB2B64();
    v25 = v24;
    (*(v7 + 8))(v13, v6);
    v26 = sub_20CEA47DC(v23, v25, &v37);

    *(v22 + 14) = v26;
    _os_log_impl(&dword_20CE97000, v19, v20, "[%{public}s] Returning snapshot for context %{public}s", v22, 0x16u);
    v27 = v31;
    swift_arrayDestroy();
    MEMORY[0x20F318720](v27, -1, -1);
    v28 = v22;
    a3 = v32;
    MEMORY[0x20F318720](v28, -1, -1);
  }

  else
  {

    (*(v7 + 8))(v13, v6);
  }

  (*(v33 + 8))(v17, v34);
  return a3(v35);
}

uint64_t sub_20CE9D4D8(char *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v69 = a4;
  v63 = a2;
  v64 = a3;
  v70 = sub_20CEB2A54();
  v68 = *(v70 - 8);
  v5 = *(v68 + 64);
  MEMORY[0x28223BE20](v70);
  v67 = &v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_20CEB2274();
  v65 = *(v7 - 8);
  v66 = v7;
  v8 = *(v65 + 64);
  MEMORY[0x28223BE20](v7);
  v72 = &v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_20CEB2AF4();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v61 = &v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v55 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = &v55 - v17;
  v19 = sub_20CEB2474();
  v60 = *(v19 - 8);
  v20 = *(v60 + 64);
  MEMORY[0x28223BE20](v19);
  v22 = &v55 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20CEB2454();
  v71 = v11;
  v23 = v11;
  v24 = v10;
  v27 = *(v23 + 16);
  v26 = v23 + 16;
  v25 = v27;
  v62 = a1;
  v27(v18, a1, v24);
  v28 = sub_20CEB2464();
  v29 = sub_20CEB2C74();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v56 = v29;
    v31 = v30;
    v57 = swift_slowAlloc();
    v73[0] = v57;
    *v31 = 136446466;
    *(v31 + 4) = sub_20CEA47DC(0xD000000000000021, 0x800000020CEB3500, v73);
    *(v31 + 12) = 2082;
    v25(v16, v18, v24);
    v32 = sub_20CEB2B64();
    v55 = v19;
    v33 = v25;
    v34 = v32;
    v58 = v26;
    v35 = v16;
    v37 = v36;
    (*(v71 + 8))(v18, v24);
    v38 = v34;
    v25 = v33;
    v39 = sub_20CEA47DC(v38, v37, v73);
    v16 = v35;

    *(v31 + 14) = v39;
    _os_log_impl(&dword_20CE97000, v28, v56, "[%{public}s] Requesting timeline for context %{public}s", v31, 0x16u);
    v40 = v57;
    swift_arrayDestroy();
    MEMORY[0x20F318720](v40, -1, -1);
    MEMORY[0x20F318720](v31, -1, -1);

    (*(v60 + 8))(v22, v55);
  }

  else
  {

    (*(v71 + 8))(v18, v24);
    (*(v60 + 8))(v22, v19);
  }

  v59 = v25;
  v41 = v62;
  v25(v16, v62, v24);
  v42 = v71;
  v43 = (*(v71 + 80) + 16) & ~*(v71 + 80);
  v44 = (v12 + v43 + 7) & 0xFFFFFFFFFFFFFFF8;
  v45 = swift_allocObject();
  v46 = *(v42 + 32);
  v46(v45 + v43, v16, v24);
  v47 = (v45 + v44);
  v48 = v64;
  *v47 = v63;
  v47[1] = v48;

  sub_20CEB2264();
  v49 = v67;
  sub_20CEB2AE4();
  v50 = v61;
  v59(v61, v41, v24);
  v51 = swift_allocObject();
  v46(v51 + v43, v50, v24);
  v52 = (v51 + v44);
  *v52 = sub_20CE9E488;
  v52[1] = v45;

  v53 = v72;
  sub_20CEA0794(v72, v49, sub_20CE9E4A0, v51);

  (*(v68 + 8))(v49, v70);
  return (*(v65 + 8))(v53, v66);
}

uint64_t sub_20CE9DAB8(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4)
{
  v51 = a4;
  v49 = a1;
  v6 = sub_20CEB2AB4();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v48 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20CE9E4B8();
  v50 = v9;
  v47 = *(v9 - 8);
  v10 = *(v47 + 64);
  MEMORY[0x28223BE20](v9);
  v46 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_20CEB2AF4();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v41 - v18;
  v20 = sub_20CEB2474();
  v44 = *(v20 - 8);
  v45 = v20;
  v21 = *(v44 + 64);
  MEMORY[0x28223BE20](v20);
  v23 = &v41 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20CEB2454();
  v24 = *(v13 + 16);
  v24(v19, a2, v12);
  v25 = sub_20CEB2464();
  v26 = sub_20CEB2C74();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v43 = a3;
    v28 = v27;
    v42 = swift_slowAlloc();
    v52 = v42;
    *v28 = 136446466;
    *(v28 + 4) = sub_20CEA47DC(0xD000000000000021, 0x800000020CEB3500, &v52);
    *(v28 + 12) = 2082;
    v24(v17, v19, v12);
    v29 = sub_20CEB2B64();
    v31 = v30;
    (*(v13 + 8))(v19, v12);
    v32 = sub_20CEA47DC(v29, v31, &v52);

    *(v28 + 14) = v32;
    _os_log_impl(&dword_20CE97000, v25, v26, "[%{public}s] Returning timeline for context %{public}s", v28, 0x16u);
    v33 = v42;
    swift_arrayDestroy();
    MEMORY[0x20F318720](v33, -1, -1);
    v34 = v28;
    a3 = v43;
    MEMORY[0x20F318720](v34, -1, -1);
  }

  else
  {

    (*(v13 + 8))(v19, v12);
  }

  (*(v44 + 8))(v23, v45);
  sub_20CE9E51C();
  v35 = *(type metadata accessor for MedicationsWidgetEntry() - 8);
  v36 = *(v35 + 72);
  v37 = (*(v35 + 80) + 32) & ~*(v35 + 80);
  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_20CEB34F0;
  sub_20CE9C4F0(v49, v38 + v37);
  sub_20CEB2AA4();
  sub_20CE9CE4C();
  v39 = v46;
  sub_20CEB2B04();
  a3(v39);
  return (*(v47 + 8))(v39, v50);
}

uint64_t sub_20CE9DF78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v26 = a2;
  v27 = a3;
  v5 = sub_20CEB2AF4();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_20CEB2A54();
  v9 = *(v25 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v25);
  v12 = v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_20CEB2274();
  v13 = *(v24 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v24);
  v16 = v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23[1] = *v3;
  sub_20CEB2264();
  sub_20CEB2AE4();
  (*(v6 + 16))(v8, a1, v5);
  v17 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v18 = (v7 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = swift_allocObject();
  (*(v6 + 32))(v19 + v17, v8, v5);
  v20 = (v19 + v18);
  v21 = v27;
  *v20 = v26;
  v20[1] = v21;

  sub_20CEA0794(v16, v12, sub_20CE9E6CC, v19);

  (*(v9 + 8))(v12, v25);
  return (*(v13 + 8))(v16, v24);
}

uint64_t sub_20CE9E22C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(MEMORY[0x277CE3CF8] + 4);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_20CE9E2E0;

  return MEMORY[0x282136270](a1, a2, a3);
}

uint64_t sub_20CE9E2E0()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_20CE9E3D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(MEMORY[0x277CE3D00] + 4);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_20CE9E6C8;

  return MEMORY[0x282136278](a1, a2, a3);
}

void sub_20CE9E4B8()
{
  if (!qword_27C8184E8)
  {
    type metadata accessor for MedicationsWidgetEntry();
    sub_20CE9CE4C();
    v0 = sub_20CEB2B14();
    if (!v1)
    {
      atomic_store(v0, &qword_27C8184E8);
    }
  }
}

void sub_20CE9E51C()
{
  if (!qword_27C8184F0)
  {
    type metadata accessor for MedicationsWidgetEntry();
    v0 = sub_20CEB2E14();
    if (!v1)
    {
      atomic_store(v0, &qword_27C8184F0);
    }
  }
}

uint64_t objectdestroyTm()
{
  v1 = sub_20CEB2AF4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  v6 = *(v0 + v5 + 8);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_20CE9E614(uint64_t a1, uint64_t (*a2)(uint64_t, unint64_t, uint64_t, uint64_t))
{
  v4 = *(sub_20CEB2AF4() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = (v2 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v7 = *v6;
  v8 = v6[1];

  return a2(a1, v2 + v5, v7, v8);
}

uint64_t type metadata accessor for MedicationsWidgetEntryView()
{
  result = qword_281112C18;
  if (!qword_281112C18)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20CE9E744()
{
  sub_20CE9FA34(319, &qword_2811128C0, MEMORY[0x277CE3BA0], MEMORY[0x277CDF468]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for MedicationsWidgetEntry();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_20CE9E814@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_20CEB2634();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20CE9FA34(0, &qword_2811128D0, MEMORY[0x277CE3BA0], MEMORY[0x277CDF458]);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = (&v17 - v11);
  sub_20CE9FDAC(v2, &v17 - v11);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_20CEB2A54();
    return (*(*(v13 - 8) + 32))(a1, v12, v13);
  }

  else
  {
    v15 = *v12;
    sub_20CEB2C64();
    v16 = sub_20CEB2774();
    sub_20CEB2444();

    sub_20CEB2624();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v8, v4);
  }
}

uint64_t sub_20CE9EA20@<X0>(uint64_t a1@<X8>)
{
  v72 = a1;
  v2 = MEMORY[0x277CE0330];
  sub_20CE9F6C4(0, &qword_281112828, MEMORY[0x277CE0330]);
  v60[1] = v3;
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v62 = v60 - v5;
  v6 = MEMORY[0x277CE0338];
  sub_20CE9F6C4(0, &qword_2811127E0, MEMORY[0x277CE0338]);
  v71 = v7;
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v63 = v60 - v9;
  v61 = type metadata accessor for MedicationsWidgetRectangularView();
  v10 = *(*(v61 - 8) + 64);
  MEMORY[0x28223BE20](v61);
  v12 = (v60 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v67 = type metadata accessor for MedicationsWidgetInlineView();
  v13 = *(*(v67 - 8) + 64);
  MEMORY[0x28223BE20](v67);
  v60[0] = v60 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20CE9FEDC(0, &qword_281112808, v2);
  v68 = v15;
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  v70 = v60 - v17;
  sub_20CE9F72C(0, &qword_281112830, v2);
  v64 = v18;
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18);
  v65 = v60 - v20;
  sub_20CE9F72C(0, &qword_2811127F0, v6);
  v69 = v21;
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21);
  v66 = v60 - v23;
  v24 = sub_20CEB22D4();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v24);
  v28 = v60 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = type metadata accessor for MedicationsWidgetCircularView(0);
  v30 = *(*(v29 - 1) + 64);
  MEMORY[0x28223BE20](v29);
  v32 = (v60 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0));
  v33 = sub_20CEB2A54();
  v34 = *(v33 - 8);
  v35 = *(v34 + 64);
  MEMORY[0x28223BE20](v33);
  v37 = v60 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20CE9E814(v37);
  v38 = (*(v34 + 88))(v37, v33);
  if (v38 == *MEMORY[0x277CE3B78] || v38 == *MEMORY[0x277CE3B90])
  {
    v48 = v1 + *(type metadata accessor for MedicationsWidgetEntryView() + 20);
    v49 = type metadata accessor for MedicationsWidgetEntry();
    sub_20CE9FBA4(v48 + *(v49 + 20), v32 + v29[6], type metadata accessor for MedicationsWidgetViewModel);
    *v32 = swift_getKeyPath();
    v50 = MEMORY[0x277CDF458];
    sub_20CE9FA34(0, &qword_2811128D0, MEMORY[0x277CE3BA0], MEMORY[0x277CDF458]);
    swift_storeEnumTagMultiPayload();
    *(v32 + v29[5]) = swift_getKeyPath();
    sub_20CE9FA34(0, &qword_2811128D8, MEMORY[0x277CE3AF8], v50);
    swift_storeEnumTagMultiPayload();
    sub_20CEB22A4();
    LOBYTE(v50) = sub_20CE9CA48(v28);
    (*(v25 + 8))(v28, v24);
    *(v32 + v29[7]) = v50;
    sub_20CE9FBA4(v32, v65, type metadata accessor for MedicationsWidgetCircularView);
    swift_storeEnumTagMultiPayload();
    sub_20CE9FD64(qword_281112F60, type metadata accessor for MedicationsWidgetCircularView);
    sub_20CE9FD64(&qword_281113000, type metadata accessor for MedicationsWidgetInlineView);
    v51 = v66;
    sub_20CEB2724();
    sub_20CE9FC0C(v51, v70, &qword_2811127F0, sub_20CE9F72C);
    swift_storeEnumTagMultiPayload();
    sub_20CE9F79C();
    sub_20CE9F898();
    sub_20CEB2724();
    sub_20CE9FC8C(v51, &qword_2811127F0, sub_20CE9F72C);
    v46 = type metadata accessor for MedicationsWidgetCircularView;
    v47 = v32;
  }

  else if (v38 == *MEMORY[0x277CE3B98])
  {
    v39 = v1 + *(type metadata accessor for MedicationsWidgetEntryView() + 20);
    v40 = type metadata accessor for MedicationsWidgetEntry();
    v41 = v61;
    sub_20CE9FBA4(v39 + *(v40 + 20), v12 + *(v61 + 32), type metadata accessor for MedicationsWidgetViewModel);
    *v12 = swift_getKeyPath();
    v42 = MEMORY[0x277CDF458];
    sub_20CE9FA34(0, &qword_27C8184F8, MEMORY[0x277CDFB98], MEMORY[0x277CDF458]);
    swift_storeEnumTagMultiPayload();
    *(v12 + v41[5]) = swift_getKeyPath();
    sub_20CE9FA34(0, &qword_2811128D0, MEMORY[0x277CE3BA0], v42);
    swift_storeEnumTagMultiPayload();
    *(v12 + v41[6]) = swift_getKeyPath();
    sub_20CE9FA34(0, &qword_2811128D8, MEMORY[0x277CE3AF8], v42);
    swift_storeEnumTagMultiPayload();
    KeyPath = swift_getKeyPath();
    v44 = v12 + v41[7];
    *v44 = KeyPath;
    v44[8] = 0;
    sub_20CE9FBA4(v12, v62, type metadata accessor for MedicationsWidgetRectangularView);
    swift_storeEnumTagMultiPayload();
    sub_20CE9FD64(&qword_281112EB8, type metadata accessor for MedicationsWidgetRectangularView);
    v45 = v63;
    sub_20CEB2724();
    sub_20CE9FC0C(v45, v70, &qword_2811127E0, sub_20CE9F6C4);
    swift_storeEnumTagMultiPayload();
    sub_20CE9F79C();
    sub_20CE9F898();
    sub_20CEB2724();
    sub_20CE9FC8C(v45, &qword_2811127E0, sub_20CE9F6C4);
    v46 = type metadata accessor for MedicationsWidgetRectangularView;
    v47 = v12;
  }

  else
  {
    if (v38 != *MEMORY[0x277CE3B80])
    {
      swift_storeEnumTagMultiPayload();
      sub_20CE9FD64(&qword_281112EB8, type metadata accessor for MedicationsWidgetRectangularView);
      v59 = v63;
      sub_20CEB2724();
      sub_20CE9FC0C(v59, v70, &qword_2811127E0, sub_20CE9F6C4);
      swift_storeEnumTagMultiPayload();
      sub_20CE9F79C();
      sub_20CE9F898();
      sub_20CEB2724();
      sub_20CE9FC8C(v59, &qword_2811127E0, sub_20CE9F6C4);
      return (*(v34 + 8))(v37, v33);
    }

    v53 = v1 + *(type metadata accessor for MedicationsWidgetEntryView() + 20);
    v54 = type metadata accessor for MedicationsWidgetEntry();
    v55 = v67;
    v56 = v60[0];
    sub_20CE9FBA4(v53 + *(v54 + 20), v60[0] + *(v67 + 24), type metadata accessor for MedicationsWidgetViewModel);
    *v56 = swift_getKeyPath();
    v57 = MEMORY[0x277CDF458];
    sub_20CE9FA34(0, &qword_27C8184F8, MEMORY[0x277CDFB98], MEMORY[0x277CDF458]);
    swift_storeEnumTagMultiPayload();
    *(v56 + *(v55 + 20)) = swift_getKeyPath();
    sub_20CE9FA34(0, &qword_2811128D0, MEMORY[0x277CE3BA0], v57);
    swift_storeEnumTagMultiPayload();
    sub_20CE9FBA4(v56, v65, type metadata accessor for MedicationsWidgetInlineView);
    swift_storeEnumTagMultiPayload();
    sub_20CE9FD64(qword_281112F60, type metadata accessor for MedicationsWidgetCircularView);
    sub_20CE9FD64(&qword_281113000, type metadata accessor for MedicationsWidgetInlineView);
    v58 = v66;
    sub_20CEB2724();
    sub_20CE9FC0C(v58, v70, &qword_2811127F0, sub_20CE9F72C);
    swift_storeEnumTagMultiPayload();
    sub_20CE9F79C();
    sub_20CE9F898();
    sub_20CEB2724();
    sub_20CE9FC8C(v58, &qword_2811127F0, sub_20CE9F72C);
    v46 = type metadata accessor for MedicationsWidgetInlineView;
    v47 = v56;
  }

  return sub_20CE9FD04(v47, v46);
}

void sub_20CE9F6C4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, void))
{
  if (!*a2)
  {
    v6 = type metadata accessor for MedicationsWidgetRectangularView();
    v7 = a3(a1, v6, MEMORY[0x277CE1428]);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_20CE9F72C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for MedicationsWidgetCircularView(255);
    v7 = type metadata accessor for MedicationsWidgetInlineView();
    v8 = a3(a1, v6, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

unint64_t sub_20CE9F79C()
{
  result = qword_2811127F8;
  if (!qword_2811127F8)
  {
    sub_20CE9F72C(255, &qword_2811127F0, MEMORY[0x277CE0338]);
    sub_20CE9FD64(qword_281112F60, type metadata accessor for MedicationsWidgetCircularView);
    sub_20CE9FD64(&qword_281113000, type metadata accessor for MedicationsWidgetInlineView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811127F8);
  }

  return result;
}

unint64_t sub_20CE9F898()
{
  result = qword_2811127E8;
  if (!qword_2811127E8)
  {
    sub_20CE9F6C4(255, &qword_2811127E0, MEMORY[0x277CE0338]);
    sub_20CE9FD64(&qword_281112EB8, type metadata accessor for MedicationsWidgetRectangularView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811127E8);
  }

  return result;
}

uint64_t sub_20CE9F964(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(char *))
{
  v8 = (*(*(a5(0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v10 = &v13 - v9;
  (*(v11 + 16))(&v13 - v9, a1);
  return a6(v10);
}

void sub_20CE9FA34(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_20CE9FA98()
{
  sub_20CEB25D4();
  sub_20CE9FD64(&qword_27C818500, MEMORY[0x277CE3940]);
  sub_20CEB2644();
  return v1;
}

uint64_t sub_20CE9FB14@<X0>(_BYTE *a1@<X8>)
{
  sub_20CEB25D4();
  sub_20CE9FD64(&qword_27C818500, MEMORY[0x277CE3940]);
  result = sub_20CEB2644();
  *a1 = v3;
  return result;
}

uint64_t sub_20CE9FBA4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_20CE9FC0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void, uint64_t, void))
{
  v6 = a4(0, a3, MEMORY[0x277CE0338]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_20CE9FC8C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void, uint64_t, void))
{
  v4 = a3(0, a2, MEMORY[0x277CE0338]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_20CE9FD04(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_20CE9FD64(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_20CE9FDAC(uint64_t a1, uint64_t a2)
{
  sub_20CE9FA34(0, &qword_2811128D0, MEMORY[0x277CE3BA0], MEMORY[0x277CDF458]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_20CE9FE40()
{
  result = qword_2811127B0;
  if (!qword_2811127B0)
  {
    sub_20CE9FEDC(255, &qword_2811127A8, MEMORY[0x277CE0338]);
    sub_20CE9F79C();
    sub_20CE9F898();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811127B0);
  }

  return result;
}

void sub_20CE9FEDC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = MEMORY[0x277CE0338];
    sub_20CE9F72C(255, &qword_2811127F0, MEMORY[0x277CE0338]);
    v8 = v7;
    sub_20CE9F6C4(255, &qword_2811127E0, v6);
    v10 = a3(a1, v8, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for MedicationsWidget(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for MedicationsWidget(_WORD *result, int a2, int a3)
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

unint64_t sub_20CEA008C()
{
  result = qword_281112EC0[0];
  if (!qword_281112EC0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_281112EC0);
  }

  return result;
}

uint64_t sub_20CEA00E0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xED000064656C7564;
  v3 = 0x65686353656E6F6ELL;
  v4 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = 0x657461446F547075;
    }

    else
    {
      v5 = 0x6567676F4C6C6C61;
    }

    if (v4 == 2)
    {
      v6 = 0xE800000000000000;
    }

    else
    {
      v6 = 0xE900000000000064;
    }
  }

  else
  {
    if (a1)
    {
      v5 = 0x65754474736170;
    }

    else
    {
      v5 = 0x65686353656E6F6ELL;
    }

    if (v4)
    {
      v6 = 0xE700000000000000;
    }

    else
    {
      v6 = 0xED000064656C7564;
    }
  }

  v7 = 0xE800000000000000;
  v8 = 0x657461446F547075;
  if (a2 != 2)
  {
    v8 = 0x6567676F4C6C6C61;
    v7 = 0xE900000000000064;
  }

  if (a2)
  {
    v3 = 0x65754474736170;
    v2 = 0xE700000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v3;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = v2;
  }

  else
  {
    v10 = v7;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_20CEB2E24();
  }

  return v11 & 1;
}

uint64_t sub_20CEA0240()
{
  v1 = *v0;
  sub_20CEB2E84();
  sub_20CEB2B74();

  return sub_20CEB2EA4();
}

uint64_t sub_20CEA0314()
{
  *v0;
  *v0;
  *v0;
  sub_20CEB2B74();
}

uint64_t sub_20CEA03D4()
{
  v1 = *v0;
  sub_20CEB2E84();
  sub_20CEB2B74();

  return sub_20CEB2EA4();
}

uint64_t sub_20CEA04A4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_20CEA7934();
  *a2 = result;
  return result;
}

void sub_20CEA04D4(uint64_t *a1@<X8>)
{
  v2 = 0xED000064656C7564;
  v3 = 0x65686353656E6F6ELL;
  v4 = 0xE800000000000000;
  v5 = 0x657461446F547075;
  if (*v1 != 2)
  {
    v5 = 0x6567676F4C6C6C61;
    v4 = 0xE900000000000064;
  }

  if (*v1)
  {
    v3 = 0x65754474736170;
    v2 = 0xE700000000000000;
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

uint64_t sub_20CEA056C()
{
  sub_20CEB2E84();
  MEMORY[0x20F318300](0);
  return sub_20CEB2EA4();
}

uint64_t sub_20CEA05D8()
{
  sub_20CEB2E84();
  MEMORY[0x20F318300](0);
  return sub_20CEB2EA4();
}

id sub_20CEA0628()
{
  v1 = v0;
  v2 = sub_20CEB22D4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR____TtC25HealthMedicationsWidgetUI34MedicationsWidgetTimelineGenerator____lazy_storage___dateFormatter;
  v8 = *(v1 + OBJC_IVAR____TtC25HealthMedicationsWidgetUI34MedicationsWidgetTimelineGenerator____lazy_storage___dateFormatter);
  if (v8)
  {
    v9 = *(v1 + OBJC_IVAR____TtC25HealthMedicationsWidgetUI34MedicationsWidgetTimelineGenerator____lazy_storage___dateFormatter);
  }

  else
  {
    v10 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
    [v10 setDateStyle_];
    [v10 setTimeStyle_];
    sub_20CEB22A4();
    v11 = sub_20CEB2284();
    (*(v3 + 8))(v6, v2);
    [v10 setLocale_];

    v12 = *(v1 + v7);
    *(v1 + v7) = v10;
    v9 = v10;

    v8 = 0;
  }

  v13 = v8;
  return v9;
}

uint64_t sub_20CEA0794(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v96 = a4;
  v97 = a3;
  v95 = a2;
  v91 = a1;
  v100 = *v4;
  v94 = sub_20CEB2A54();
  v99 = *(v94 - 8);
  v90 = *(v99 + 64);
  MEMORY[0x28223BE20](v94);
  v93 = &v73 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = MEMORY[0x277D85248];
  sub_20CEA4778(0, &qword_281112640, MEMORY[0x277D85248], MEMORY[0x277D83D88]);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v77 = &v73 - v8;
  v9 = sub_20CEB2CB4();
  v85 = *(v9 - 8);
  v86 = v9;
  v10 = *(v85 + 64);
  MEMORY[0x28223BE20](v9);
  v74 = &v73 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20CEA4778(0, &qword_2811128E0, MEMORY[0x277D11688], MEMORY[0x277CBCEC0]);
  v13 = v12;
  v14 = *(v12 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v12);
  v17 = &v73 - v16;
  sub_20CEA6E78();
  v19 = v18;
  v20 = *(v18 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v18);
  v23 = &v73 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20CEA6F94();
  v75 = v24;
  v78 = *(v24 - 8);
  v25 = *(v78 + 64);
  MEMORY[0x28223BE20](v24);
  v27 = &v73 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20CEA7060();
  v29 = *(v28 - 8);
  v88 = v28;
  v89 = v29;
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v28);
  v92 = &v73 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = sub_20CEB2274();
  v83 = *(v79 - 8);
  v84 = *(v83 + 64);
  MEMORY[0x28223BE20](v79);
  v33 = v4[2];
  v80 = *(v34 + 16);
  v81 = v34 + 16;
  v76 = &v73 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80(v76, v91);
  v35 = objc_allocWithZone(sub_20CEB2424());
  v36 = v33;
  v82 = sub_20CEB2414();
  sub_20CEB2404();
  sub_20CEA6F0C();
  sub_20CEB24D4();
  (*(v14 + 8))(v17, v13);
  sub_20CEA74CC(0, &qword_2811125D8);
  sub_20CEA7350(&qword_281112918, sub_20CEA6E78);
  sub_20CEB24F4();
  (*(v20 + 8))(v23, v19);
  v37 = v74;
  sub_20CEB2CA4();
  v101 = *(v98 + OBJC_IVAR____TtC25HealthMedicationsWidgetUI34MedicationsWidgetTimelineGenerator_queue);
  v38 = v101;
  v39 = sub_20CEB2C94();
  v40 = v77;
  (*(*(v39 - 8) + 56))(v77, 1, 1, v39);
  *(swift_allocObject() + 16) = v100;
  sub_20CEA44CC();
  sub_20CEA7350(&qword_281112908, sub_20CEA6F94);
  sub_20CEA7350(&qword_281112638, sub_20CEA44CC);
  v41 = v38;
  v42 = v75;
  sub_20CEB24E4();

  sub_20CEA7398(v40, &qword_281112640, v87);

  (*(v85 + 8))(v37, v86);
  (*(v78 + 8))(v27, v42);
  v43 = swift_allocObject();
  swift_weakInit();
  v44 = v99;
  v85 = *(v99 + 16);
  v46 = v93;
  v45 = v94;
  (v85)(v93, v95, v94);
  v47 = *(v44 + 80);
  v48 = (v47 + 24) & ~v47;
  v86 = v47 | 7;
  v87 = (v90 + 7);
  v49 = &v90[v48 + 7] & 0xFFFFFFFFFFFFFFF8;
  v50 = swift_allocObject();
  *(v50 + 16) = v43;
  v51 = *(v44 + 32);
  v99 = v44 + 32;
  v90 = v51;
  v52 = v50 + v48;
  v53 = v46;
  v54 = v46;
  v55 = v45;
  (v51)(v52, v54, v45);
  v56 = (v50 + v49);
  v57 = v96;
  *v56 = v97;
  v56[1] = v57;
  *(v50 + ((v49 + 23) & 0xFFFFFFFFFFFFFFF8)) = v100;
  v58 = swift_allocObject();
  swift_weakInit();
  v59 = v76;
  v60 = v79;
  (v80)(v76, v91, v79);
  (v85)(v53, v95, v55);
  v61 = v83;
  v62 = (*(v83 + 80) + 32) & ~*(v83 + 80);
  v63 = (v84 + v47 + v62) & ~v47;
  v64 = (v87 + v63) & 0xFFFFFFFFFFFFFFF8;
  v65 = swift_allocObject();
  *(v65 + 16) = v58;
  v66 = v82;
  *(v65 + 24) = v82;
  (*(v61 + 32))(v65 + v62, v59, v60);
  (v90)(v65 + v63, v93, v94);
  v67 = (v65 + v64);
  v68 = v96;
  *v67 = v97;
  v67[1] = v68;
  *(v65 + ((v64 + 23) & 0xFFFFFFFFFFFFFFF8)) = v100;
  sub_20CEA7350(&qword_2811128F8, sub_20CEA7060);
  swift_retain_n();
  v69 = v66;
  v70 = v88;
  v71 = v92;
  sub_20CEB24C4();

  (*(v89 + 8))(v71, v70);
  swift_beginAccess();
  sub_20CEB24B4();
  swift_endAccess();
}

uint64_t sub_20CEA1238(uint64_t *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t), uint64_t a5, uint64_t a6)
{
  v55 = a6;
  v57 = a5;
  v58 = a4;
  sub_20CEA4778(0, &qword_281113010, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v53 - v10;
  v12 = sub_20CEB2274();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for MedicationsWidgetEntry();
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v56 = &v53 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_20CEB2474();
  v59 = *(v20 - 8);
  v60 = v20;
  v21 = *(v59 + 64);
  v22 = MEMORY[0x28223BE20](v20);
  v24 = &v53 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v26 = &v53 - v25;
  v27 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  v61 = result;
  if (result)
  {
    if (v27)
    {
      sub_20CEB2454();
      v29 = sub_20CEB2464();
      v30 = sub_20CEB2C54();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        v32 = swift_slowAlloc();
        v54 = v16;
        v33 = v32;
        v62 = v32;
        *v31 = 136446210;
        v34 = sub_20CEB2EB4();
        v55 = a3;
        v36 = v13;
        v37 = v11;
        v38 = v12;
        v39 = sub_20CEA47DC(v34, v35, &v62);
        a3 = v55;

        *(v31 + 4) = v39;
        v12 = v38;
        v11 = v37;
        v13 = v36;
        _os_log_impl(&dword_20CE97000, v29, v30, "[%{public}s] Timed out waiting for medication summary", v31, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v33);
        v40 = v33;
        v16 = v54;
        MEMORY[0x20F318720](v40, -1, -1);
        MEMORY[0x20F318720](v31, -1, -1);
      }

      (*(v59 + 8))(v26, v60);
      sub_20CEB2264();
      sub_20CEA6E2C(0, &qword_2811125F0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_20CEB33D0;
      if (qword_281112628 != -1)
      {
        swift_once();
      }

      *(inited + 32) = sub_20CEB2104();
      *(inited + 40) = v42;
      *(inited + 48) = sub_20CEB2104();
      *(inited + 56) = v43;
      (*(v13 + 56))(v11, 1, 1, v12);
      v44 = v56;
      sub_20CEA32D4(v16, inited, a3, 3, 0, v11, v56);
      swift_setDeallocating();
      v45 = *(inited + 16);
      swift_arrayDestroy();
      sub_20CEA7398(v11, &qword_281113010, MEMORY[0x277CC9578]);
      (*(v13 + 8))(v16, v12);
      v58(v44);

      return sub_20CEA7408(v44);
    }

    else
    {
      sub_20CEB2454();
      v46 = sub_20CEB2464();
      v47 = sub_20CEB2C74();
      if (os_log_type_enabled(v46, v47))
      {
        v48 = swift_slowAlloc();
        v49 = swift_slowAlloc();
        v62 = v49;
        *v48 = 136446210;
        v50 = sub_20CEB2EB4();
        v52 = sub_20CEA47DC(v50, v51, &v62);

        *(v48 + 4) = v52;
        _os_log_impl(&dword_20CE97000, v46, v47, "[%{public}s] Finished fetching medication day summary", v48, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v49);
        MEMORY[0x20F318720](v49, -1, -1);
        MEMORY[0x20F318720](v48, -1, -1);
      }

      return (*(v59 + 8))(v24, v60);
    }
  }

  return result;
}

uint64_t sub_20CEA1838(void (**a1)(_BYTE *, uint64_t), uint64_t a2, void *a3, void (*a4)(void, void), uint64_t a5, void (*a6)(_BYTE *), uint64_t a7, uint64_t a8)
{
  v245 = a8;
  v251 = a5;
  v249 = a4;
  v256 = a1;
  v11 = sub_20CEB2314();
  v247 = *(v11 - 8);
  *&v248 = v11;
  v12 = *(v247 + 64);
  MEMORY[0x28223BE20](v11);
  v246 = &v227[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_20CEA4778(0, &qword_281113010, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14 - 8);
  v255 = &v227[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = MEMORY[0x28223BE20](v16);
  v230 = &v227[-v19];
  v20 = MEMORY[0x28223BE20](v18);
  v22 = &v227[-v21];
  MEMORY[0x28223BE20](v20);
  v240 = &v227[-v23];
  v24 = sub_20CEB2274();
  v252 = *(v24 - 8);
  v25 = *(v252 + 64);
  v26 = MEMORY[0x28223BE20](v24);
  v237 = &v227[-((v27 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v28 = MEMORY[0x28223BE20](v26);
  v233 = &v227[-v29];
  v30 = MEMORY[0x28223BE20](v28);
  v232 = &v227[-v31];
  v32 = MEMORY[0x28223BE20](v30);
  v234 = &v227[-v33];
  v34 = MEMORY[0x28223BE20](v32);
  v238 = &v227[-v35];
  v36 = MEMORY[0x28223BE20](v34);
  v38 = &v227[-v37];
  v39 = MEMORY[0x28223BE20](v36);
  v239 = &v227[-v40];
  MEMORY[0x28223BE20](v39);
  v250 = &v227[-v41];
  v42 = type metadata accessor for MedicationsWidgetEntry();
  v43 = *(*(v42 - 8) + 64);
  v44 = MEMORY[0x28223BE20](v42 - 8);
  v236 = &v227[-((v45 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v46 = MEMORY[0x28223BE20](v44);
  v231 = &v227[-v47];
  v48 = MEMORY[0x28223BE20](v46);
  v235 = &v227[-v49];
  MEMORY[0x28223BE20](v48);
  *&v241 = &v227[-v50];
  v254 = sub_20CEB2474();
  v51 = *(v254 - 8);
  v52 = *(v51 + 64);
  MEMORY[0x28223BE20](v254);
  v54 = &v227[-((v53 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  v253 = result;
  if (result)
  {
    v244 = a6;
    sub_20CEB2454();
    v56 = a3;
    v57 = sub_20CEB2464();
    v58 = sub_20CEB2C74();

    v59 = os_log_type_enabled(v57, v58);
    v242 = v22;
    v243 = a7;
    v257 = v24;
    if (v59)
    {
      v60 = swift_slowAlloc();
      v228 = v58;
      v61 = v60;
      v229 = swift_slowAlloc();
      v262 = v229;
      *v61 = 136446466;
      v62 = sub_20CEB2EB4();
      v64 = sub_20CEA47DC(v62, v63, &v262);

      *(v61 + 4) = v64;
      *(v61 + 12) = 2080;
      v65 = v56;
      v66 = [v65 description];
      v67 = sub_20CEB2B54();
      v69 = v68;

      v70 = sub_20CEA47DC(v67, v69, &v262);

      *(v61 + 14) = v70;
      _os_log_impl(&dword_20CE97000, v57, v228, "[%{public}s] Creating snapshot from provider: %s", v61, 0x16u);
      v71 = v229;
      swift_arrayDestroy();
      MEMORY[0x20F318720](v71, -1, -1);
      MEMORY[0x20F318720](v61, -1, -1);
    }

    (*(v51 + 8))(v54, v254);
    v262 = MEMORY[0x277D84F90];
    v72 = sub_20CEB23B4();
    sub_20CEA4518(v72);
    v73 = sub_20CEB23C4();
    sub_20CEA4518(v73);
    sub_20CEA4608(&v262);
    v74 = v262;
    if (v262 >> 62)
    {
LABEL_46:
      v75 = sub_20CEB2DD4();
      if (v75)
      {
        goto LABEL_6;
      }
    }

    else
    {
      v75 = *((v262 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v75)
      {
LABEL_6:
        v76 = 0;
        v77 = 0;
        v254 = v74 & 0xFFFFFFFFFFFFFF8;
        v256 = (v252 + 8);
        while (1)
        {
          if ((v74 & 0xC000000000000001) != 0)
          {
            v81 = MEMORY[0x20F3181E0](v76, v74);
            v82 = v76 + 1;
            if (__OFADD__(v76, 1))
            {
              goto LABEL_44;
            }
          }

          else
          {
            if (v76 >= *(v254 + 16))
            {
              goto LABEL_45;
            }

            v81 = *(v74 + 8 * v76 + 32);

            v82 = v76 + 1;
            if (__OFADD__(v76, 1))
            {
LABEL_44:
              __break(1u);
LABEL_45:
              __break(1u);
              goto LABEL_46;
            }
          }

          sub_20CEB2364();
          sub_20CEB2254();
          if (v83 < 0.0 && sub_20CEB2374() != 4 && sub_20CEB2374() != 5)
          {

            v147 = v253;
            v148 = sub_20CEA0628();
            v149 = sub_20CEB2B34();
            v150 = sub_20CEB2234();
            v151 = [v148 hm:v149 localizableTimeStringKeyWithPrefix:v150 date:?];

            sub_20CEB2B54();
            if (qword_281112628 != -1)
            {
              swift_once();
            }

            v250 = qword_281113680;
            v255 = sub_20CEB2104();
            v237 = v152;

            sub_20CEA7464();
            v245 = v153;
            v154 = swift_allocObject();
            v241 = xmmword_20CEB34F0;
            *(v154 + 16) = xmmword_20CEB34F0;
            v236 = OBJC_IVAR____TtC25HealthMedicationsWidgetUI34MedicationsWidgetTimelineGenerator____lazy_storage___dateFormatter;
            v155 = *(v147 + OBJC_IVAR____TtC25HealthMedicationsWidgetUI34MedicationsWidgetTimelineGenerator____lazy_storage___dateFormatter);
            v156 = sub_20CEB2234();
            v157 = [v155 stringFromDate_];

            v158 = sub_20CEB2B54();
            v160 = v159;

            v262 = v158;
            v263 = v160;
            v260 = 32;
            v261 = 0xE100000000000000;
            v258 = 41154;
            v259 = 0xA200000000000000;
            v240 = sub_20CE9C338();
            v161 = MEMORY[0x277D837D0];
            v162 = sub_20CEB2D14();
            v164 = v163;

            *(v154 + 56) = v161;
            v239 = sub_20CEA7528();
            *(v154 + 64) = v239;
            *(v154 + 32) = v162;
            *(v154 + 40) = v164;
            v165 = sub_20CEB2B44();
            v254 = v166;
            v255 = v165;

            v167 = v236;
            v168 = *&v236[v147];
            v169 = sub_20CEB2B34();
            v170 = sub_20CEB2234();
            v171 = [v168 hm:v169 localizableTimeStringKeyWithPrefix:v170 date:?];

            sub_20CEB2B54();
            v250 = sub_20CEB2104();
            v237 = v172;

            v173 = swift_allocObject();
            *(v173 + 16) = v241;
            v174 = *&v167[v147];
            v175 = sub_20CEB2234();
            v176 = [v174 stringFromDate_];

            v177 = sub_20CEB2B54();
            v179 = v178;

            v262 = v177;
            v263 = v179;
            v260 = 32;
            v261 = 0xE100000000000000;
            v258 = 41154;
            v259 = 0xA200000000000000;
            v180 = MEMORY[0x277D837D0];
            v181 = sub_20CEB2D14();
            v183 = v182;

            v184 = v239;
            *(v173 + 56) = v180;
            *(v173 + 64) = v184;
            *(v173 + 32) = v181;
            *(v173 + 40) = v183;
            v250 = sub_20CEB2B44();
            v245 = v185;

            v186 = OBJC_IVAR____TtC25HealthMedicationsWidgetUI34MedicationsWidgetTimelineGenerator_calendar;
            v188 = v246;
            v187 = v247;
            v189 = v248;
            (*(v247 + 104))(v246, *MEMORY[0x277CC9968], v248);
            *&v241 = v186;
            v190 = v230;
            v191 = v249;
            sub_20CEB2304();
            (*(v187 + 8))(v188, v189);
            v192 = v252;
            v193 = *(v252 + 48);
            v194 = v257;
            if (v193(v190, 1, v257) == 1)
            {
              (*(v192 + 16))(v234, v191, v194);
              v195 = v193(v190, 1, v194);
              v196 = v234;
              if (v195 != 1)
              {
                sub_20CEA7398(v190, &qword_281113010, MEMORY[0x277CC9578]);
              }
            }

            else
            {
              v196 = v234;
              (*(v192 + 32))(v234, v190, v194);
            }

            sub_20CEB22E4();
            v249 = *(v192 + 8);
            v249(v196, v194);
            sub_20CEA6E2C(0, &qword_2811125F0);
            inited = swift_initStackObject();
            *(inited + 16) = xmmword_20CEB33D0;
            v204 = v254;
            *(inited + 32) = v255;
            v205 = v250;
            *(inited + 40) = v204;
            *(inited + 48) = v205;
            *(inited + 56) = v245;
            v255 = sub_20CEB2354();
            v206 = v242;
            sub_20CEB2364();
            (*(v192 + 56))(v206, 0, 1, v194);
            v207 = v255;
            sub_20CEA32D4(v238, inited, v251, 1, v255, v206, v235);

            swift_setDeallocating();
            v208 = *(inited + 16);
            swift_arrayDestroy();
            sub_20CEA7398(v206, &qword_281113010, MEMORY[0x277CC9578]);
            v209 = v249;
            v249(v238, v194);
            v210 = v235;
            v244(v235);

            sub_20CEA7408(v210);
            return v209(v38, v194);
          }

          if (v77)
          {

            v78 = *v256;
            (*v256)(v38, v257);
          }

          else
          {
            sub_20CEB2254();
            if (v84 <= 0.0 || sub_20CEB2374() == 4)
            {
              v78 = *v256;
              (*v256)(v38, v257);
            }

            else
            {
              v85 = sub_20CEB2374();
              v78 = *v256;
              (*v256)(v38, v257);
              if (v85 != 5)
              {
                v77 = v81;
                goto LABEL_9;
              }
            }

            v77 = 0;
          }

LABEL_9:
          ++v76;
          v79 = v82 == v75;
          v80 = v255;
          if (v79)
          {

            if (v77)
            {
              v86 = v253;
              v87 = v77;
              v88 = sub_20CEA0628();
              v89 = sub_20CEB2B34();
              v90 = v237;
              sub_20CEB2364();
              v91 = sub_20CEB2234();
              v78(v90, v257);
              v92 = [v88 hm:v89 localizableTimeStringKeyWithPrefix:v91 date:?];

              sub_20CEB2B54();
              if (qword_281112628 != -1)
              {
                swift_once();
              }

              v245 = qword_281113680;
              v255 = sub_20CEB2104();
              *&v241 = v93;

              sub_20CEA7464();
              v249 = v94;
              v95 = swift_allocObject();
              v248 = xmmword_20CEB34F0;
              *(v95 + 16) = xmmword_20CEB34F0;
              sub_20CEB2364();
              v247 = OBJC_IVAR____TtC25HealthMedicationsWidgetUI34MedicationsWidgetTimelineGenerator____lazy_storage___dateFormatter;
              v96 = *(v86 + OBJC_IVAR____TtC25HealthMedicationsWidgetUI34MedicationsWidgetTimelineGenerator____lazy_storage___dateFormatter);
              v97 = sub_20CEB2234();
              v98 = [v96 stringFromDate_];

              v99 = sub_20CEB2B54();
              v250 = v87;
              v101 = v100;

              v262 = v99;
              v263 = v101;
              v260 = 32;
              v261 = 0xE100000000000000;
              v258 = 41154;
              v259 = 0xA200000000000000;
              sub_20CE9C338();
              v102 = MEMORY[0x277D837D0];
              v103 = sub_20CEB2D14();
              v105 = v104;
              v78(v90, v257);

              *(v95 + 56) = v102;
              v246 = sub_20CEA7528();
              *(v95 + 64) = v246;
              *(v95 + 32) = v103;
              *(v95 + 40) = v105;
              v106 = sub_20CEB2B44();
              v254 = v107;
              v255 = v106;

              sub_20CEB2104();
              v245 = sub_20CEB2104();
              *&v241 = v108;

              v109 = swift_allocObject();
              *(v109 + 16) = v248;
              sub_20CEB2364();
              v110 = *(v86 + v247);
              v111 = v90;
              v112 = sub_20CEB2234();
              v113 = [v110 stringFromDate_];

              v114 = sub_20CEB2B54();
              v116 = v115;

              v262 = v114;
              v263 = v116;
              v260 = 32;
              v261 = 0xE100000000000000;
              v258 = 41154;
              v259 = 0xA200000000000000;
              v117 = MEMORY[0x277D837D0];
              v118 = sub_20CEB2D14();
              v120 = v119;
              v121 = v90;
              v122 = v257;
              v78(v121, v257);

              v123 = v246;
              *(v109 + 56) = v117;
              *(v109 + 64) = v123;
              *(v109 + 32) = v118;
              *(v109 + 40) = v120;
              v124 = sub_20CEB2B44();
              v126 = v125;

              sub_20CEB2364();
              sub_20CEA6E2C(0, &qword_2811125F0);
              v127 = swift_initStackObject();
              *(v127 + 16) = xmmword_20CEB33D0;
              v128 = v254;
              *(v127 + 32) = v255;
              *(v127 + 40) = v128;
              *(v127 + 48) = v124;
              *(v127 + 56) = v126;
              v129 = sub_20CEB2354();
              v130 = v242;
              sub_20CEB2364();
              (*(v252 + 56))(v130, 0, 1, v122);
              v131 = v236;
              sub_20CEA32D4(v111, v127, v251, 2, v129, v130, v236);

              swift_setDeallocating();
              v132 = *(v127 + 16);
              swift_arrayDestroy();
              sub_20CEA7398(v130, &qword_281113010, MEMORY[0x277CC9578]);
              v78(v111, v257);
              v244(v131);

              v133 = v131;
            }

            else
            {
              v135 = v246;
              v134 = v247;
              v136 = v248;
              (*(v247 + 104))(v246, *MEMORY[0x277CC9968], v248);
              v137 = v80;
              v138 = v249;
              sub_20CEB2304();
              (*(v134 + 8))(v135, v136);
              v139 = v252;
              v140 = *(v252 + 48);
              v141 = v257;
              if (v140(v137, 1, v257) == 1)
              {
                v142 = *(v139 + 16);
                v143 = v233;
                v142(v233, v138, v141);
                v144 = v140(v137, 1, v141);
                v145 = v143;
                v146 = v242;
                if (v144 != 1)
                {
                  sub_20CEA7398(v137, &qword_281113010, MEMORY[0x277CC9578]);
                }
              }

              else
              {
                v145 = v233;
                (*(v139 + 32))(v233, v137, v141);
                v146 = v242;
              }

              v197 = v232;
              sub_20CEB22E4();
              v78(v145, v141);
              sub_20CEA6E2C(0, &qword_2811125F0);
              v198 = swift_initStackObject();
              *(v198 + 16) = xmmword_20CEB33D0;
              if (qword_281112628 != -1)
              {
                swift_once();
              }

              *(v198 + 32) = sub_20CEB2104();
              *(v198 + 40) = v199;
              *(v198 + 48) = sub_20CEB2104();
              *(v198 + 56) = v200;
              (*(v252 + 56))(v146, 1, 1, v141);
              v201 = v231;
              sub_20CEA32D4(v197, v198, v251, 3, 0, v146, v231);
              swift_setDeallocating();
              v202 = *(v198 + 16);
              swift_arrayDestroy();
              sub_20CEA7398(v146, &qword_281113010, MEMORY[0x277CC9578]);
              v78(v197, v141);
              v244(v201);

              v133 = v201;
            }

            return sub_20CEA7408(v133);
          }
        }
      }
    }

    v212 = v246;
    v211 = v247;
    v213 = v248;
    (*(v247 + 104))(v246, *MEMORY[0x277CC9968], v248);
    v214 = v240;
    v215 = v249;
    sub_20CEB2304();
    (*(v211 + 8))(v212, v213);
    v216 = v252;
    v217 = *(v252 + 48);
    v218 = v257;
    if (v217(v214, 1, v257) == 1)
    {
      v219 = v239;
      (*(v216 + 16))(v239, v215, v218);
      if (v217(v214, 1, v218) != 1)
      {
        sub_20CEA7398(v214, &qword_281113010, MEMORY[0x277CC9578]);
      }
    }

    else
    {
      v219 = v239;
      (*(v216 + 32))(v239, v214, v218);
    }

    sub_20CEB22E4();
    v256 = *(v216 + 8);
    (v256)(v219, v218);
    sub_20CEA6E2C(0, &qword_2811125F0);
    v220 = swift_initStackObject();
    *(v220 + 16) = xmmword_20CEB33D0;
    if (qword_281112628 != -1)
    {
      swift_once();
    }

    *(v220 + 32) = sub_20CEB2104();
    *(v220 + 40) = v221;
    *(v220 + 48) = sub_20CEB2104();
    *(v220 + 56) = v222;
    v223 = v242;
    (*(v216 + 56))(v242, 1, 1, v218);
    v224 = v241;
    v225 = v250;
    sub_20CEA32D4(v250, v220, v251, 0, 0, v223, v241);
    swift_setDeallocating();
    v226 = *(v220 + 16);
    swift_arrayDestroy();
    sub_20CEA7398(v223, &qword_281113010, MEMORY[0x277CC9578]);
    (v256)(v225, v218);
    v244(v224);

    v133 = v224;
    return sub_20CEA7408(v133);
  }

  return result;
}

uint64_t sub_20CEA32D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, void *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v8 = v7;
  v132 = a2;
  v133 = a6;
  v129 = a5;
  v141 = a4;
  v142 = a3;
  v138 = a7;
  v127 = *v8;
  v10 = MEMORY[0x277D83D88];
  sub_20CEA4778(0, &qword_281112920, MEMORY[0x277D116C8], MEMORY[0x277D83D88]);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v122 = &v112 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v119 = &v112 - v15;
  v16 = sub_20CEB23F4();
  v124 = *(v16 - 8);
  v125 = v16;
  v17 = *(v124 + 64);
  v18 = MEMORY[0x28223BE20](v16);
  v118 = &v112 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v116 = &v112 - v20;
  sub_20CEA4778(0, qword_281112AB8, type metadata accessor for MedmojiIconConfiguration, v10);
  v22 = *(*(v21 - 8) + 64);
  v23 = MEMORY[0x28223BE20](v21 - 8);
  v121 = &v112 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v137 = &v112 - v25;
  v26 = sub_20CEB2A54();
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  v29 = MEMORY[0x28223BE20](v26);
  v139 = &v112 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v32 = &v112 - v31;
  v33 = sub_20CEB2274();
  v34 = *(v33 - 8);
  v35 = *(v34 + 64);
  MEMORY[0x28223BE20](v33);
  v37 = &v112 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_20CEB2474();
  v39 = *(v38 - 8);
  v40 = *(v39 + 64);
  v41 = MEMORY[0x28223BE20](v38);
  v120 = &v112 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v41);
  v44 = &v112 - v43;
  sub_20CEB2454();
  v45 = *(v34 + 16);
  v134 = a1;
  v130 = v45;
  v131 = v34 + 16;
  v45(v37, a1, v33);
  v135 = *(v27 + 16);
  v136 = v27 + 16;
  v135(v32, v142, v26);
  v46 = sub_20CEB2464();
  v126 = sub_20CEB2C74();
  v47 = os_log_type_enabled(v46, v126);
  v140 = v33;
  v128 = v38;
  if (v47)
  {
    v115 = v46;
    v114 = v39;
    v123 = v26;
    v48 = swift_slowAlloc();
    v113 = swift_slowAlloc();
    v143 = v113;
    *v48 = 136315906;
    v49 = sub_20CEB2EB4();
    v51 = sub_20CEA47DC(v49, v50, &v143);

    v52 = v141;
    *(v48 + 4) = v51;
    v53 = 0xED000064656C7564;
    *(v48 + 12) = 2082;
    v54 = 0x65686353656E6F6ELL;
    v55 = 0xE800000000000000;
    v56 = 0x657461446F547075;
    if (v52 != 2)
    {
      v56 = 0x6567676F4C6C6C61;
      v55 = 0xE900000000000064;
    }

    if (v52)
    {
      v54 = 0x65754474736170;
      v53 = 0xE700000000000000;
    }

    if (v52 <= 1)
    {
      v57 = v54;
    }

    else
    {
      v57 = v56;
    }

    if (v52 <= 1)
    {
      v58 = v53;
    }

    else
    {
      v58 = v55;
    }

    v59 = sub_20CEA47DC(v57, v58, &v143);

    *(v48 + 14) = v59;
    *(v48 + 22) = 2082;
    sub_20CEA7350(&qword_281113018, MEMORY[0x277CC9578]);
    v60 = v140;
    v61 = sub_20CEB2E04();
    v63 = v62;
    (*(v34 + 8))(v37, v60);
    v64 = sub_20CEA47DC(v61, v63, &v143);

    *(v48 + 24) = v64;
    *(v48 + 32) = 2082;
    sub_20CEA7350(&qword_2811126B0, MEMORY[0x277CE3BA0]);
    v65 = v123;
    v66 = sub_20CEB2E04();
    v68 = v67;
    v117 = *(v27 + 8);
    v117(v32, v65);
    v69 = sub_20CEA47DC(v66, v68, &v143);

    *(v48 + 34) = v69;
    v70 = v65;
    v71 = v115;
    _os_log_impl(&dword_20CE97000, v115, v126, "[%s] Creating entry for state: %{public}s date: %{public}s family: %{public}s", v48, 0x2Au);
    v72 = v113;
    swift_arrayDestroy();
    MEMORY[0x20F318720](v72, -1, -1);
    MEMORY[0x20F318720](v48, -1, -1);

    v73 = *(v114 + 8);
    v73(v44, v128);
  }

  else
  {

    v117 = *(v27 + 8);
    v117(v32, v26);
    (*(v34 + 8))(v37, v33);
    v73 = *(v39 + 8);
    v73(v44, v38);
    v70 = v26;
  }

  v74 = type metadata accessor for MedmojiIconConfiguration();
  v75 = *(*(v74 - 8) + 56);
  v76 = v137;
  v75(v137, 1, 1, v74);
  v77 = v139;
  v135(v139, v142, v70);
  v78 = (*(v27 + 88))(v77, v70);
  v79 = v141;
  if (v78 == *MEMORY[0x277CE3B78])
  {
    if (v141 == 1 && v129)
    {
      v80 = v129;
      v81 = v122;
      HKMedicationUserDomainConcept.visualConfig.getter(v122);
      v83 = v124;
      v82 = v125;
      if ((*(v124 + 48))(v81, 1, v125) != 1)
      {
        v84 = *(v83 + 32);
        v85 = &v145;
LABEL_28:
        v95 = *(v85 - 32);
        v84(v95, v81, v82);
        v96 = v121;
        (*(v83 + 16))(v121, v95, v82);
        v97 = v96 + *(v74 + 20);
        sub_20CEB2394();

        v98 = v95;
        v79 = v141;
        (*(v83 + 8))(v98, v82);
        sub_20CEA7398(v76, qword_281112AB8, type metadata accessor for MedmojiIconConfiguration);
        v75(v96, 0, 1, v74);
        sub_20CEA6CA4(v96, v76);
        goto LABEL_29;
      }

LABEL_22:

      sub_20CEA7398(v81, &qword_281112920, MEMORY[0x277D116C8]);
      goto LABEL_29;
    }

    goto LABEL_29;
  }

  if (v78 == *MEMORY[0x277CE3B90])
  {
    if (v129)
    {
      v80 = v129;
      v81 = v119;
      HKMedicationUserDomainConcept.visualConfig.getter(v119);
      v83 = v124;
      v82 = v125;
      if ((*(v124 + 48))(v81, 1, v125) != 1)
      {
        v84 = *(v83 + 32);
        v85 = &v144;
        goto LABEL_28;
      }

      goto LABEL_22;
    }

LABEL_29:
    if (qword_281112628 != -1)
    {
      swift_once();
    }

    v99 = sub_20CEB2104();
    v101 = v100;
    v143 = MEMORY[0x277D84FA0];

    v103 = sub_20CEA6B44(v102);

    v104 = type metadata accessor for MedicationsWidgetEntry();
    v105 = v138;
    v106 = (v138 + *(v104 + 20));
    v107 = type metadata accessor for MedicationsWidgetViewModel();
    sub_20CEA6CA4(v76, v106 + v107[6]);
    sub_20CEA6D38(v133, v106 + v107[8]);
    *v106 = v99;
    v106[1] = v101;
    v106[2] = v103;
    *(v106 + v107[7]) = v79;
    return v130(v105, v134, v140);
  }

  if (v78 == *MEMORY[0x277CE3B98] || v78 == *MEMORY[0x277CE3B80])
  {
    goto LABEL_29;
  }

  v123 = v70;
  v86 = v120;
  sub_20CEB2454();
  v87 = sub_20CEB2464();
  v88 = sub_20CEB2C64();
  if (os_log_type_enabled(v87, v88))
  {
    v89 = swift_slowAlloc();
    v90 = swift_slowAlloc();
    v143 = v90;
    *v89 = 136446210;
    v91 = sub_20CEB2EB4();
    v93 = sub_20CEA47DC(v91, v92, &v143);

    *(v89 + 4) = v93;
    _os_log_impl(&dword_20CE97000, v87, v88, "[%{public}s] Requested unsupported widget family entry", v89, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v90);
    MEMORY[0x20F318720](v90, -1, -1);
    MEMORY[0x20F318720](v89, -1, -1);

    v94 = v120;
  }

  else
  {

    v94 = v86;
  }

  v73(v94, v128);
  v109 = v123;
  v110 = v138;
  sub_20CEB2264();
  v111 = type metadata accessor for MedicationsWidgetEntry();
  sub_20CE9AF00((v110 + *(v111 + 20)));
  sub_20CEA7398(v76, qword_281112AB8, type metadata accessor for MedmojiIconConfiguration);
  return (v117)(v139, v109);
}

uint64_t sub_20CEA3FE4()
{
  v1 = OBJC_IVAR____TtC25HealthMedicationsWidgetUI34MedicationsWidgetTimelineGenerator_calendar;
  v2 = sub_20CEB2324();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC25HealthMedicationsWidgetUI34MedicationsWidgetTimelineGenerator_cancellables);

  v4 = *(*v0 + 12);
  v5 = *(*v0 + 26);

  return MEMORY[0x2821FE8D8](v0, v4, v5);
}

uint64_t type metadata accessor for MedicationsWidgetTimelineGenerator()
{
  result = qword_281112DD8;
  if (!qword_281112DD8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_20CEA410C()
{
  result = sub_20CEB2324();
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

uint64_t sub_20CEA41D4()
{
  v12 = sub_20CEB2CC4();
  v1 = *(v12 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20]();
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(*(sub_20CEB2C84() - 8) + 64);
  MEMORY[0x28223BE20]();
  v6 = *(*(sub_20CEB29F4() - 8) + 64);
  MEMORY[0x28223BE20]();
  *(v0 + 16) = [objc_allocWithZone(MEMORY[0x277CCD4D8]) init];
  sub_20CEB22F4();
  *(v0 + OBJC_IVAR____TtC25HealthMedicationsWidgetUI34MedicationsWidgetTimelineGenerator_cancellables) = MEMORY[0x277D84FA0];
  v11 = OBJC_IVAR____TtC25HealthMedicationsWidgetUI34MedicationsWidgetTimelineGenerator_queue;
  v7 = sub_20CEA44CC();
  v10[1] = "$__lazy_storage_$_dateFormatter";
  v10[2] = v7;
  sub_20CEB29E4();
  v13 = MEMORY[0x277D84F90];
  sub_20CEA7350(&qword_281112648, MEMORY[0x277D85230]);
  v8 = MEMORY[0x277D85230];
  sub_20CEA4778(0, &qword_281112678, MEMORY[0x277D85230], MEMORY[0x277D83940]);
  sub_20CEA757C(&qword_281112670, &qword_281112678, v8);
  sub_20CEB2D34();
  (*(v1 + 104))(v4, *MEMORY[0x277D85260], v12);
  *(v0 + v11) = sub_20CEB2CD4();
  *(v0 + OBJC_IVAR____TtC25HealthMedicationsWidgetUI34MedicationsWidgetTimelineGenerator_timeoutInterval) = 0x4024000000000000;
  *(v0 + OBJC_IVAR____TtC25HealthMedicationsWidgetUI34MedicationsWidgetTimelineGenerator____lazy_storage___dateFormatter) = 0;
  return v0;
}

unint64_t sub_20CEA44CC()
{
  result = qword_281112630;
  if (!qword_281112630)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_281112630);
  }

  return result;
}

uint64_t sub_20CEA4518(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = sub_20CEB2DD4();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = *v1;
  if (!(*v1 >> 62))
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v6 = __OFADD__(v5, v3);
    result = v5 + v3;
    if (!v6)
    {
      goto LABEL_5;
    }

LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v4 < 0)
  {
    v14 = *v1;
  }

  v15 = sub_20CEB2DD4();
  v6 = __OFADD__(v15, v3);
  result = v15 + v3;
  if (v6)
  {
    goto LABEL_15;
  }

LABEL_5:
  sub_20CEA582C(result);
  v8 = *v1;
  v9 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_20CEA6890(v9 + 8 * *(v9 + 0x10) + 32, (*(v9 + 0x18) >> 1) - *(v9 + 0x10), a1);
  v11 = v10;

  if (v11 < v3)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v11 < 1)
  {
LABEL_9:
    *v1 = v8;
    return result;
  }

  v12 = *(v9 + 16);
  v6 = __OFADD__(v12, v11);
  v13 = v12 + v11;
  if (!v6)
  {
    *(v9 + 16) = v13;
    goto LABEL_9;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_20CEA4608(unint64_t *a1)
{
  v2 = *a1;
  if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v2 & 0x8000000000000000) != 0 || (v2 & 0x4000000000000000) != 0)
  {
    v2 = sub_20CEA6AE0(v2);
  }

  v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v5[0] = (v2 & 0xFFFFFFFFFFFFFF8) + 32;
  v5[1] = v3;
  result = sub_20CEA58CC(v5);
  *a1 = v2;
  return result;
}

char *sub_20CEA4680(char *result, int64_t a2, char a3, char *a4)
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
    sub_20CEA75D4();
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

void sub_20CEA4778(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_20CEA47DC(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_20CEA48A8(v11, 0, 0, 1, a1, a2);
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
    sub_20CEA6DD0(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_20CEA48A8(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_20CEA49B4(a5, a6);
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
    result = sub_20CEB2D94();
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

uint64_t sub_20CEA49B4(uint64_t a1, unint64_t a2)
{
  v4 = sub_20CEA4A00(a1, a2);
  sub_20CEA4B30(&unk_2823C84D8);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_20CEA4A00(uint64_t a1, unint64_t a2)
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

  v6 = sub_20CEA4C1C(v5, 0);
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

  result = sub_20CEB2D94();
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
        v10 = sub_20CEB2B84();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_20CEA4C1C(v10, 0);
        result = sub_20CEB2D64();
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

uint64_t sub_20CEA4B30(uint64_t result)
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

  result = sub_20CEA4C94(result, v12, 1, v3);
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

void *sub_20CEA4C1C(uint64_t a1, uint64_t a2)
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

  sub_20CEA6E2C(0, &qword_2811125E8);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_20CEA4C94(char *result, int64_t a2, char a3, char *a4)
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
    sub_20CEA6E2C(0, &qword_2811125E8);
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

uint64_t __swift_destroy_boxed_opaque_existential_0(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

char *sub_20CEA4DD8(char *a1, int64_t a2, char a3)
{
  result = sub_20CEA4DF8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_20CEA4DF8(char *result, int64_t a2, char a3, char *a4)
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
    sub_20CEA6E2C(0, &qword_2811125F0);
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_20CEA4F08(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_20CEB2E84();
  sub_20CEB2B74();
  v9 = sub_20CEB2EA4();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = (*(v7 + 48) + 16 * v11);
      v14 = *v13 == a2 && v13[1] == a3;
      if (v14 || (sub_20CEB2E24() & 1) != 0)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v18 = (*(v7 + 48) + 16 * v11);
    v19 = v18[1];
    *a1 = *v18;
    a1[1] = v19;

    return 0;
  }

  else
  {
LABEL_9:
    v15 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;

    sub_20CEA52D8(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_20CEA5058(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_20CEA7658(0, &qword_281112620, MEMORY[0x277D837D0], MEMORY[0x277D837E0], MEMORY[0x277D84098]);
  result = sub_20CEB2D54();
  v6 = result;
  if (*(v3 + 16))
  {
    v31 = v2;
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
      v19 = (*(v3 + 48) + 16 * (v16 | (v7 << 6)));
      v20 = *v19;
      v21 = v19[1];
      v22 = *(v6 + 40);
      sub_20CEB2E84();
      sub_20CEB2B74();
      result = sub_20CEB2EA4();
      v23 = -1 << *(v6 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v13 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v13 + 8 * v25);
          if (v29 != -1)
          {
            v14 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v24) & ~*(v13 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v6 + 48) + 16 * v14);
      *v15 = v20;
      v15[1] = v21;
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

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      bzero((v3 + 56), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_20CEA52D8(uint64_t result, uint64_t a2, unint64_t a3, char a4)
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
    sub_20CEA5058(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_20CEA5458();
      goto LABEL_16;
    }

    sub_20CEA55D4(v8 + 1);
  }

  v10 = *v4;
  v11 = *(*v4 + 40);
  sub_20CEB2E84();
  sub_20CEB2B74();
  result = sub_20CEB2EA4();
  v12 = -1 << *(v10 + 32);
  a3 = result & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      if (*v14 == v7 && v14[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_20CEB2E24();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = v7;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_20CEB2E34();
  __break(1u);
  return result;
}

void *sub_20CEA5458()
{
  v1 = v0;
  sub_20CEA7658(0, &qword_281112620, MEMORY[0x277D837D0], MEMORY[0x277D837E0], MEMORY[0x277D84098]);
  v2 = *v0;
  v3 = sub_20CEB2D44();
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

uint64_t sub_20CEA55D4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_20CEA7658(0, &qword_281112620, MEMORY[0x277D837D0], MEMORY[0x277D837E0], MEMORY[0x277D84098]);
  result = sub_20CEB2D54();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v18 = (*(v3 + 48) + 16 * (v15 | (v7 << 6)));
      v19 = *v18;
      v20 = v18[1];
      v21 = *(v6 + 40);
      sub_20CEB2E84();

      sub_20CEB2B74();
      result = sub_20CEB2EA4();
      v22 = -1 << *(v6 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v6 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v29;
        goto LABEL_28;
      }

      v17 = *(v3 + 56 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_20CEA582C(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      v5 = v3 & 0xFFFFFFFFFFFFFF8;
      if (a1 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }

LABEL_10:
    sub_20CEB2DD4();
    goto LABEL_11;
  }

  if (v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
    goto LABEL_10;
  }

  v5 = v3 & 0xFFFFFFFFFFFFFF8;
LABEL_9:
  v6 = *(v5 + 16);
LABEL_11:
  result = sub_20CEB2D84();
  *v1 = result;
  return result;
}

uint64_t sub_20CEA58CC(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_20CEB2DF4();
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
        sub_20CEB2384();
        v6 = sub_20CEB2BC4();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = (v6 & 0xFFFFFFFFFFFFFF8) + 32;
      v8[1] = v5;
      sub_20CEA5BC4(v8, v9, a1, v4);
      *(v7 + 16) = 0;
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
    return sub_20CEA59D0(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_20CEA59D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v34 = sub_20CEB2274();
  v8 = *(*(v34 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v34);
  v33 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v9);
  v14 = &v28 - v13;
  v29 = a2;
  if (a3 != a2)
  {
    v15 = (v12 + 8);
    v35 = *a4;
    v16 = v35 + 8 * a3 - 8;
    v17 = a1 - a3;
LABEL_5:
    v31 = v16;
    v32 = a3;
    v18 = *(v35 + 8 * a3);
    v30 = v17;
    v19 = v16;
    while (1)
    {
      v20 = *v19;

      sub_20CEB2364();
      v21 = v33;
      sub_20CEB2364();
      v22 = sub_20CEB2244();
      v23 = *v15;
      v24 = v21;
      v25 = v34;
      (*v15)(v24, v34);
      v23(v14, v25);

      if ((v22 & 1) == 0)
      {
LABEL_4:
        a3 = v32 + 1;
        v16 = v31 + 8;
        v17 = v30 - 1;
        if (v32 + 1 == v29)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v35)
      {
        break;
      }

      v26 = *v19;
      *v19 = v19[1];
      v19[1] = v26;
      --v19;
      if (__CFADD__(v17++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_20CEA5BC4(int64_t *a1, uint64_t a2, void *a3, unint64_t a4)
{
  v6 = v4;
  v107 = a1;
  v116 = sub_20CEB2274();
  v9 = *(*(v116 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v116);
  v115 = &v101 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v10);
  v114 = &v101 - v14;
  v15 = a3[1];
  if (v15 < 1)
  {
    v17 = MEMORY[0x277D84F90];
LABEL_88:
    v18 = *v107;
    if (!*v107)
    {
      goto LABEL_127;
    }

    a4 = v17;
    v5 = a3;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      result = a4;
    }

    else
    {
LABEL_121:
      result = sub_20CEA687C(a4);
    }

    v117 = result;
    v97 = *(result + 16);
    if (v97 >= 2)
    {
      while (*v5)
      {
        a4 = *(result + 16 * v97);
        v98 = result;
        v99 = *(result + 16 * (v97 - 1) + 40);
        sub_20CEA63AC((*v5 + 8 * a4), (*v5 + 8 * *(result + 16 * (v97 - 1) + 32)), (*v5 + 8 * v99), v18);
        if (v6)
        {
        }

        if (v99 < a4)
        {
          goto LABEL_114;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v98 = sub_20CEA687C(v98);
        }

        if (v97 - 2 >= *(v98 + 2))
        {
          goto LABEL_115;
        }

        v100 = &v98[16 * v97];
        *v100 = a4;
        v100[1] = v99;
        v117 = v98;
        sub_20CEA67F0(v97 - 1);
        result = v117;
        v97 = *(v117 + 16);
        if (v97 <= 1)
        {
        }
      }

      goto LABEL_125;
    }
  }

  v16 = 0;
  v113 = (v13 + 8);
  v17 = MEMORY[0x277D84F90];
  v106 = a4;
  v102 = a3;
  while (1)
  {
    v18 = v16++;
    if (v16 < v15)
    {
      v111 = v15;
      v104 = v17;
      v105 = v6;
      v19 = *a3;
      v20 = *(*a3 + 8 * v16);
      v110 = 8 * v18;
      v21 = (v19 + 8 * v18);
      v22 = *v21;
      v5 = (v21 + 2);

      v23 = v114;
      sub_20CEB2364();
      v24 = v115;
      sub_20CEB2364();
      LODWORD(v112) = sub_20CEB2244();
      v25 = *v113;
      v26 = v116;
      (*v113)(v24, v116);
      v25(v23, v26);

      v103 = v18;
      v27 = v18 + 2;
      while (1)
      {
        v16 = v111;
        if (v111 == v27)
        {
          break;
        }

        v29 = *(v5 - 8);
        v28 = *v5;

        v30 = v114;
        sub_20CEB2364();
        v31 = v115;
        sub_20CEB2364();
        v32 = sub_20CEB2244() & 1;
        v33 = v31;
        v34 = v116;
        v25(v33, v116);
        v25(v30, v34);

        ++v27;
        v5 += 8;
        if ((v112 & 1) != v32)
        {
          v16 = v27 - 1;
          break;
        }
      }

      v17 = v104;
      v6 = v105;
      a4 = v106;
      v18 = v103;
      v35 = v110;
      if (v112)
      {
        if (v16 < v103)
        {
          goto LABEL_118;
        }

        a3 = v102;
        if (v103 < v16)
        {
          v36 = 8 * v16 - 8;
          v37 = v16;
          v38 = v103;
          do
          {
            if (v38 != --v37)
            {
              v40 = *a3;
              if (!*a3)
              {
                goto LABEL_124;
              }

              v39 = *(v40 + v35);
              *(v40 + v35) = *(v40 + v36);
              *(v40 + v36) = v39;
            }

            ++v38;
            v36 -= 8;
            v35 += 8;
          }

          while (v38 < v37);
        }
      }

      else
      {
        a3 = v102;
      }
    }

    v41 = a3[1];
    if (v16 < v41)
    {
      if (__OFSUB__(v16, v18))
      {
        goto LABEL_117;
      }

      if (v16 - v18 < a4)
      {
        v42 = v18 + a4;
        if (__OFADD__(v18, a4))
        {
          goto LABEL_119;
        }

        if (v42 >= v41)
        {
          v42 = a3[1];
        }

        if (v42 < v18)
        {
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (v16 != v42)
        {
          break;
        }
      }
    }

LABEL_36:
    if (v16 < v18)
    {
      goto LABEL_116;
    }

    v53 = v17;
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v17 = v53;
    }

    else
    {
      result = sub_20CEA4680(0, *(v53 + 16) + 1, 1, v53);
      v17 = result;
    }

    v5 = *(v17 + 16);
    v54 = *(v17 + 24);
    a4 = v5 + 1;
    if (v5 >= v54 >> 1)
    {
      result = sub_20CEA4680((v54 > 1), v5 + 1, 1, v17);
      v17 = result;
    }

    *(v17 + 16) = a4;
    v55 = v17 + 16 * v5;
    *(v55 + 32) = v18;
    *(v55 + 40) = v16;
    v56 = *v107;
    if (!*v107)
    {
      goto LABEL_126;
    }

    if (v5)
    {
      while (1)
      {
        v18 = a4 - 1;
        if (a4 >= 4)
        {
          break;
        }

        if (a4 == 3)
        {
          v57 = *(v17 + 32);
          v58 = *(v17 + 40);
          v67 = __OFSUB__(v58, v57);
          v59 = v58 - v57;
          v60 = v67;
LABEL_56:
          if (v60)
          {
            goto LABEL_105;
          }

          v73 = (v17 + 16 * a4);
          v75 = *v73;
          v74 = v73[1];
          v76 = __OFSUB__(v74, v75);
          v77 = v74 - v75;
          v78 = v76;
          if (v76)
          {
            goto LABEL_108;
          }

          v79 = (v17 + 32 + 16 * v18);
          v81 = *v79;
          v80 = v79[1];
          v67 = __OFSUB__(v80, v81);
          v82 = v80 - v81;
          if (v67)
          {
            goto LABEL_111;
          }

          if (__OFADD__(v77, v82))
          {
            goto LABEL_112;
          }

          if (v77 + v82 >= v59)
          {
            if (v59 < v82)
            {
              v18 = a4 - 2;
            }

            goto LABEL_77;
          }

          goto LABEL_70;
        }

        v83 = (v17 + 16 * a4);
        v85 = *v83;
        v84 = v83[1];
        v67 = __OFSUB__(v84, v85);
        v77 = v84 - v85;
        v78 = v67;
LABEL_70:
        if (v78)
        {
          goto LABEL_107;
        }

        v86 = v17 + 16 * v18;
        v88 = *(v86 + 32);
        v87 = *(v86 + 40);
        v67 = __OFSUB__(v87, v88);
        v89 = v87 - v88;
        if (v67)
        {
          goto LABEL_110;
        }

        if (v89 < v77)
        {
          goto LABEL_3;
        }

LABEL_77:
        v5 = v18 - 1;
        if (v18 - 1 >= a4)
        {
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
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
          goto LABEL_120;
        }

        if (!*a3)
        {
          goto LABEL_123;
        }

        v94 = v17;
        a4 = *(v17 + 32 + 16 * v5);
        v95 = *(v17 + 32 + 16 * v18 + 8);
        sub_20CEA63AC((*a3 + 8 * a4), (*a3 + 8 * *(v17 + 32 + 16 * v18)), (*a3 + 8 * v95), v56);
        if (v6)
        {
        }

        if (v95 < a4)
        {
          goto LABEL_101;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v94 = sub_20CEA687C(v94);
        }

        if (v5 >= *(v94 + 2))
        {
          goto LABEL_102;
        }

        v96 = &v94[16 * v5];
        *(v96 + 4) = a4;
        *(v96 + 5) = v95;
        v117 = v94;
        result = sub_20CEA67F0(v18);
        v17 = v117;
        a4 = *(v117 + 16);
        if (a4 <= 1)
        {
          goto LABEL_3;
        }
      }

      v61 = v17 + 32 + 16 * a4;
      v62 = *(v61 - 64);
      v63 = *(v61 - 56);
      v67 = __OFSUB__(v63, v62);
      v64 = v63 - v62;
      if (v67)
      {
        goto LABEL_103;
      }

      v66 = *(v61 - 48);
      v65 = *(v61 - 40);
      v67 = __OFSUB__(v65, v66);
      v59 = v65 - v66;
      v60 = v67;
      if (v67)
      {
        goto LABEL_104;
      }

      v68 = (v17 + 16 * a4);
      v70 = *v68;
      v69 = v68[1];
      v67 = __OFSUB__(v69, v70);
      v71 = v69 - v70;
      if (v67)
      {
        goto LABEL_106;
      }

      v67 = __OFADD__(v59, v71);
      v72 = v59 + v71;
      if (v67)
      {
        goto LABEL_109;
      }

      if (v72 >= v64)
      {
        v90 = (v17 + 32 + 16 * v18);
        v92 = *v90;
        v91 = v90[1];
        v67 = __OFSUB__(v91, v92);
        v93 = v91 - v92;
        if (v67)
        {
          goto LABEL_113;
        }

        if (v59 < v93)
        {
          v18 = a4 - 2;
        }

        goto LABEL_77;
      }

      goto LABEL_56;
    }

LABEL_3:
    v15 = a3[1];
    a4 = v106;
    if (v16 >= v15)
    {
      goto LABEL_88;
    }
  }

  v104 = v17;
  v105 = v6;
  v112 = *a3;
  v43 = (v112 + 8 * v16 - 8);
  v103 = v18;
  v44 = v18 - v16;
  v108 = v42;
LABEL_29:
  v110 = v43;
  v111 = v16;
  v45 = *(v112 + 8 * v16);
  v109 = v44;
  while (1)
  {
    v46 = *v43;

    v5 = v114;
    sub_20CEB2364();
    v47 = v115;
    sub_20CEB2364();
    a4 = sub_20CEB2244();
    v48 = *v113;
    v49 = v47;
    v50 = v116;
    (*v113)(v49, v116);
    v48(v5, v50);

    if ((a4 & 1) == 0)
    {
LABEL_28:
      v16 = v111 + 1;
      v43 = (v110 + 8);
      v44 = v109 - 1;
      if (v111 + 1 != v108)
      {
        goto LABEL_29;
      }

      v16 = v108;
      v17 = v104;
      v6 = v105;
      a3 = v102;
      v18 = v103;
      goto LABEL_36;
    }

    if (!v112)
    {
      break;
    }

    v51 = *v43;
    *v43 = v43[1];
    v43[1] = v51;
    --v43;
    if (__CFADD__(v44++, 1))
    {
      goto LABEL_28;
    }
  }

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
  return result;
}

uint64_t sub_20CEA63AC(char *a1, char *a2, char *a3, char *a4)
{
  v53 = a4;
  v51 = sub_20CEB2274();
  v7 = *(v51 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v51);
  v50 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v49 = &v44 - v11;
  v12 = a2 - a1 + 7;
  if (a2 - a1 >= 0)
  {
    v12 = a2 - a1;
  }

  v13 = v12 >> 3;
  v14 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v14 = a3 - a2;
  }

  v15 = v14 >> 3;
  if (v13 >= v14 >> 3)
  {
    if (v53 != a2 || &a2[8 * v15] <= v53)
    {
      memmove(v53, a2, 8 * v15);
    }

    v52 = &v53[8 * v15];
    if (a3 - a2 >= 8 && a2 > a1)
    {
      v45 = (v7 + 8);
      v48 = a1;
      do
      {
        v44 = a2;
        v28 = a2 - 8;
        v29 = a3 - 8;
        v30 = v52;
        v46 = a2 - 8;
        while (1)
        {
          v47 = v29;
          v31 = v29 + 8;
          v32 = *(v30 - 1);
          v30 -= 8;
          v33 = *v28;

          v34 = v49;
          sub_20CEB2364();
          v35 = v50;
          sub_20CEB2364();
          v36 = sub_20CEB2244();
          v37 = *v45;
          v38 = v35;
          v39 = v51;
          (*v45)(v38, v51);
          v37(v34, v39);

          if (v36)
          {
            break;
          }

          v40 = v47;
          if (v31 != v52)
          {
            *v47 = *v30;
          }

          v29 = v40 - 8;
          v52 = v30;
          v28 = v46;
          if (v30 <= v53)
          {
            v52 = v30;
            a2 = v44;
            goto LABEL_39;
          }
        }

        a3 = v47;
        v41 = v48;
        v42 = v46;
        if (v31 != v44)
        {
          *v47 = *v46;
        }

        if (v52 <= v53)
        {
          break;
        }

        a2 = v42;
      }

      while (v42 > v41);
      a2 = v42;
    }
  }

  else
  {
    if (v53 != a1 || &a1[8 * v13] <= v53)
    {
      memmove(v53, a1, 8 * v13);
    }

    v52 = &v53[8 * v13];
    if (a2 - a1 >= 8 && a2 < a3)
    {
      v16 = (v7 + 8);
      while (1)
      {
        v48 = a1;
        v17 = *a2;
        v18 = *v53;

        v19 = v49;
        sub_20CEB2364();
        v20 = v50;
        sub_20CEB2364();
        v21 = sub_20CEB2244();
        v22 = *v16;
        v23 = v20;
        v24 = v51;
        (*v16)(v23, v51);
        v22(v19, v24);

        if ((v21 & 1) == 0)
        {
          break;
        }

        v25 = a2;
        v26 = v48;
        v27 = v48 == a2;
        a2 += 8;
        if (!v27)
        {
          goto LABEL_17;
        }

LABEL_18:
        a1 = v26 + 8;
        if (v53 >= v52 || a2 >= a3)
        {
          goto LABEL_20;
        }
      }

      v25 = v53;
      v26 = v48;
      v53 += 8;
      if (v48 == v25)
      {
        goto LABEL_18;
      }

LABEL_17:
      *v26 = *v25;
      goto LABEL_18;
    }

LABEL_20:
    a2 = a1;
  }

LABEL_39:
  if (a2 != v53 || a2 >= &v53[(v52 - v53 + (v52 - v53 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(a2, v53, 8 * ((v52 - v53) / 8));
  }

  return 1;
}

uint64_t sub_20CEA67F0(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_20CEA687C(v3);
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

uint64_t sub_20CEA6890(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v13 = a2;
    result = sub_20CEB2DD4();
    a2 = v13;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_20CEB2DD4();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          v8 = MEMORY[0x277D11628];
          sub_20CEA4778(0, &qword_27C818508, MEMORY[0x277D11628], MEMORY[0x277D83940]);
          sub_20CEA757C(&qword_27C818510, &qword_27C818508, v8);
          for (i = 0; i != v6; ++i)
          {
            v10 = sub_20CEA6A58(v14, i, a3);
            v12 = *v11;

            (v10)(v14, 0);
            *(v4 + 8 * i) = v12;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_20CEB2384();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t (*sub_20CEA6A58(uint64_t (*result)(uint64_t *a1), unint64_t a2, uint64_t a3))(uint64_t *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v5 = MEMORY[0x20F3181E0](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);

LABEL_5:
    *v3 = v5;
    return sub_20CEA6AD8;
  }

  __break(1u);
  return result;
}

uint64_t sub_20CEA6AE0(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_20CEB2DD4();
  }

  else
  {
    v1 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return sub_20CEB2D84();
}

uint64_t sub_20CEA6B44(uint64_t result)
{
  v1 = *(result + 16);
  if (!v1)
  {
    return MEMORY[0x277D84F90];
  }

  v2 = 0;
  v3 = result + 40;
  v4 = MEMORY[0x277D84F90];
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
      v9 = sub_20CEA4F08(&v14, v8, v7);

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
      result = sub_20CEA4DD8(0, *(v4 + 16) + 1, 1);
      v4 = v15;
    }

    v11 = *(v4 + 16);
    v10 = *(v4 + 24);
    if (v11 >= v10 >> 1)
    {
      result = sub_20CEA4DD8((v10 > 1), v11 + 1, 1);
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

uint64_t sub_20CEA6CA4(uint64_t a1, uint64_t a2)
{
  sub_20CEA4778(0, qword_281112AB8, type metadata accessor for MedmojiIconConfiguration, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_20CEA6D38(uint64_t a1, uint64_t a2)
{
  sub_20CEA4778(0, &qword_281113010, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20CEA6DD0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

void sub_20CEA6E2C(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_20CEB2E14();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void sub_20CEA6E78()
{
  if (!qword_281112910)
  {
    sub_20CEA4778(255, &qword_2811128E0, MEMORY[0x277D11688], MEMORY[0x277CBCEC0]);
    sub_20CEA6F0C();
    v0 = sub_20CEB2484();
    if (!v1)
    {
      atomic_store(v0, &qword_281112910);
    }
  }
}

unint64_t sub_20CEA6F0C()
{
  result = qword_2811128E8;
  if (!qword_2811128E8)
  {
    sub_20CEA4778(255, &qword_2811128E0, MEMORY[0x277D11688], MEMORY[0x277CBCEC0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811128E8);
  }

  return result;
}

void sub_20CEA6F94()
{
  if (!qword_281112900)
  {
    sub_20CEA6E78();
    sub_20CEA74CC(255, &qword_2811125D8);
    sub_20CEA7350(&qword_281112918, sub_20CEA6E78);
    v0 = sub_20CEB2494();
    if (!v1)
    {
      atomic_store(v0, &qword_281112900);
    }
  }
}

void sub_20CEA7060()
{
  if (!qword_2811128F0)
  {
    sub_20CEA6F94();
    sub_20CEA44CC();
    sub_20CEA7350(&qword_281112908, sub_20CEA6F94);
    sub_20CEA7350(&qword_281112638, sub_20CEA44CC);
    v0 = sub_20CEB24A4();
    if (!v1)
    {
      atomic_store(v0, &qword_2811128F0);
    }
  }
}

uint64_t sub_20CEA714C@<X0>(uint64_t *a1@<X8>)
{
  sub_20CEA76AC();
  result = swift_allocError();
  *a1 = result;
  return result;
}

uint64_t sub_20CEA718C(uint64_t *a1)
{
  v3 = *(sub_20CEB2A54() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + 16);
  v8 = v1 + v5;
  v9 = *v8;
  v10 = *(v8 + 8);
  v11 = *(v1 + v6);

  return sub_20CEA1238(a1, v7, v1 + v4, v9, v10, v11);
}

uint64_t sub_20CEA723C(void (**a1)(_BYTE *, uint64_t))
{
  v3 = *(sub_20CEB2274() - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(sub_20CEB2A54() - 8);
  v7 = (v4 + v5 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = (*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 23) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = v1 + v8;
  v13 = *v12;
  v14 = *(v12 + 8);
  v15 = *(v1 + v9);

  return sub_20CEA1838(a1, v10, v11, (v1 + v4), v1 + v7, v13, v14, v15);
}

uint64_t sub_20CEA7350(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_20CEA7398(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_20CEA4778(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_20CEA7408(uint64_t a1)
{
  v2 = type metadata accessor for MedicationsWidgetEntry();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_20CEA7464()
{
  if (!qword_2811125E0)
  {
    sub_20CEA74CC(255, &qword_2811125D0);
    v0 = sub_20CEB2E14();
    if (!v1)
    {
      atomic_store(v0, &qword_2811125E0);
    }
  }
}

uint64_t sub_20CEA74CC(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

unint64_t sub_20CEA7528()
{
  result = qword_281112690;
  if (!qword_281112690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281112690);
  }

  return result;
}

uint64_t sub_20CEA757C(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_20CEA4778(255, a2, a3, MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_20CEA75D4()
{
  if (!qword_27C818518)
  {
    sub_20CEA7658(255, &qword_27C818520, MEMORY[0x277D83B88], MEMORY[0x277D83BA0], MEMORY[0x277D83D00]);
    v0 = sub_20CEB2E14();
    if (!v1)
    {
      atomic_store(v0, &qword_27C818518);
    }
  }
}

void sub_20CEA7658(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

unint64_t sub_20CEA76AC()
{
  result = qword_27C818528;
  if (!qword_27C818528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C818528);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MedicationsWidgetTimelineGenerator.State(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for MedicationsWidgetTimelineGenerator.State(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_20CEA7888()
{
  result = qword_27C818530;
  if (!qword_27C818530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C818530);
  }

  return result;
}

unint64_t sub_20CEA78E0()
{
  result = qword_27C818538;
  if (!qword_27C818538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C818538);
  }

  return result;
}

uint64_t sub_20CEA7934()
{
  v0 = sub_20CEB2DE4();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

void sub_20CEA7994(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_20CEA7A2C()
{
  sub_20CEA7994(319, &qword_2811128C0, MEMORY[0x277CE3BA0], MEMORY[0x277CDF468]);
  if (v0 <= 0x3F)
  {
    sub_20CEA7994(319, &qword_2811128C8, MEMORY[0x277CE3AF8], MEMORY[0x277CDF468]);
    if (v1 <= 0x3F)
    {
      type metadata accessor for MedicationsWidgetViewModel();
      if (v2 <= 0x3F)
      {
        sub_20CEACB4C(319, &qword_281112668, MEMORY[0x277D839B0], MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_20CEA7B80@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v42 = a2;
  v43 = a1;
  v41 = type metadata accessor for ImageView(0);
  v2 = *(*(v41 - 8) + 64);
  MEMORY[0x28223BE20](v41);
  v4 = (v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_20CEA918C(0, &qword_281112820, sub_20CEA90E4, type metadata accessor for ImageView, MEMORY[0x277CE0330]);
  v39[1] = v5;
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v8 = v39 - v7;
  sub_20CEA90E4();
  v39[2] = v9;
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20CEA909C(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v40 = v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v18 = v39 - v17;
  v19 = sub_20CEB2A14();
  v20 = *(v19 - 8);
  v21 = v20[8];
  v22 = MEMORY[0x28223BE20](v19);
  v24 = v39 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v26 = v39 - v25;
  sub_20CEB2BF4();
  v39[3] = sub_20CEB2BE4();
  sub_20CEB2BD4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_20CEB2A04();
  v27 = v43 + *(type metadata accessor for MedicationsWidgetCircularView(0) + 24);
  if (*(v27 + *(type metadata accessor for MedicationsWidgetViewModel() + 28)) == 1)
  {
  }

  else
  {
    v28 = sub_20CEB2E24();

    if ((v28 & 1) == 0)
    {
      v32 = sub_20CEB27B4();
      *v4 = swift_getKeyPath();
      sub_20CEA7994(0, &qword_2811128D0, MEMORY[0x277CE3BA0], MEMORY[0x277CDF458]);
      swift_storeEnumTagMultiPayload();
      *(v4 + *(v41 + 20)) = v32;
      sub_20CEAD274(v4, v8, type metadata accessor for ImageView);
      swift_storeEnumTagMultiPayload();
      sub_20CEA94F4(&qword_281112738, sub_20CEA90E4);
      sub_20CEA94F4(&qword_2811129C0, type metadata accessor for ImageView);
      sub_20CEB2724();
      v30 = type metadata accessor for ImageView;
      v31 = v4;
      goto LABEL_8;
    }
  }

  *v12 = sub_20CEB26C4();
  *(v12 + 1) = 0;
  v12[16] = 1;
  sub_20CEAC908(0, &qword_281112898, &qword_2811127C8, sub_20CEA9210, sub_20CEA92F0);
  sub_20CEA826C(v43, &v12[*(v29 + 44)]);
  sub_20CEAD274(v12, v8, sub_20CEA90E4);
  swift_storeEnumTagMultiPayload();
  sub_20CEA94F4(&qword_281112738, sub_20CEA90E4);
  sub_20CEA94F4(&qword_2811129C0, type metadata accessor for ImageView);
  sub_20CEB2724();
  v30 = sub_20CEA90E4;
  v31 = v12;
LABEL_8:
  sub_20CEA9924(v31, v30);
  v33 = v20[2];
  v33(v24, v26, v19);
  v34 = v40;
  sub_20CEAD274(v18, v40, sub_20CEA909C);
  v35 = v42;
  v33(v42, v24, v19);
  sub_20CEA9068(0);
  sub_20CEAD274(v34, &v35[*(v36 + 48)], sub_20CEA909C);
  sub_20CEA9924(v18, sub_20CEA909C);
  v37 = v20[1];
  v37(v26, v19);
  sub_20CEA9924(v34, sub_20CEA909C);
  v37(v24, v19);
}

uint64_t sub_20CEA826C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v51 = a2;
  sub_20CEA92F0(0);
  v50 = v3;
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20CEA918C(0, &qword_281112818, sub_20CEA9210, sub_20CEA92F0, MEMORY[0x277CE0330]);
  v45 = v7;
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v49 = &v42 - v9;
  sub_20CEA9210(0);
  v48 = v10;
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v43 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = type metadata accessor for ImageView(0);
  v13 = *(*(v44 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v44);
  v16 = &v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = (&v42 - v17);
  v19 = type metadata accessor for TimeView(0);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19);
  v23 = &v42 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = &v42 - v24;
  sub_20CEA918C(0, &qword_2811127C8, sub_20CEA9210, sub_20CEA92F0, MEMORY[0x277CE0338]);
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x28223BE20](v26 - 8);
  v47 = &v42 - v28;
  sub_20CEB2BF4();
  v46 = sub_20CEB2BE4();
  sub_20CEB2BD4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v29 = type metadata accessor for MedicationsWidgetCircularView(0);
  v30 = v29;
  v31 = a1;
  v32 = *(a1 + *(v29 + 28));
  if (v32 == 2 || (v32 & 1) == 0)
  {
    v39 = sub_20CEB27D4();
    *v18 = swift_getKeyPath();
    sub_20CEA7994(0, &qword_2811128D0, MEMORY[0x277CE3BA0], MEMORY[0x277CDF458]);
    swift_storeEnumTagMultiPayload();
    *(v18 + *(v44 + 20)) = v39;
    sub_20CEAD274(v31 + *(v30 + 24), v25, type metadata accessor for MedicationsWidgetViewModel);
    v25[*(v19 + 20)] = v32;
    sub_20CEAD274(v18, v16, type metadata accessor for ImageView);
    sub_20CEAD274(v25, v23, type metadata accessor for TimeView);
    sub_20CEAD274(v16, v6, type metadata accessor for ImageView);
    sub_20CEA9324(0);
    sub_20CEAD274(v23, &v6[*(v40 + 48)], type metadata accessor for TimeView);
    sub_20CEA9924(v23, type metadata accessor for TimeView);
    sub_20CEA9924(v16, type metadata accessor for ImageView);
    sub_20CEAD274(v6, v49, sub_20CEA92F0);
    swift_storeEnumTagMultiPayload();
    sub_20CEA94F4(&qword_2811126F8, sub_20CEA9210);
    sub_20CEA94F4(&qword_2811126E8, sub_20CEA92F0);
    v36 = v47;
    sub_20CEB2724();
    sub_20CEA9924(v6, sub_20CEA92F0);
    sub_20CEA9924(v25, type metadata accessor for TimeView);
    v37 = v18;
    v38 = type metadata accessor for ImageView;
  }

  else
  {
    sub_20CEAD274(v31 + *(v29 + 24), v25, type metadata accessor for MedicationsWidgetViewModel);
    v25[*(v19 + 20)] = v32;
    v33 = sub_20CEB27D4();
    *v18 = swift_getKeyPath();
    sub_20CEA7994(0, &qword_2811128D0, MEMORY[0x277CE3BA0], MEMORY[0x277CDF458]);
    swift_storeEnumTagMultiPayload();
    *(v18 + *(v44 + 20)) = v33;
    sub_20CEAD274(v25, v23, type metadata accessor for TimeView);
    sub_20CEAD274(v18, v16, type metadata accessor for ImageView);
    v34 = v43;
    sub_20CEAD274(v23, v43, type metadata accessor for TimeView);
    sub_20CEA9244(0);
    sub_20CEAD274(v16, v34 + *(v35 + 48), type metadata accessor for ImageView);
    sub_20CEA9924(v16, type metadata accessor for ImageView);
    sub_20CEA9924(v23, type metadata accessor for TimeView);
    sub_20CEAD274(v34, v49, sub_20CEA9210);
    swift_storeEnumTagMultiPayload();
    sub_20CEA94F4(&qword_2811126F8, sub_20CEA9210);
    sub_20CEA94F4(&qword_2811126E8, sub_20CEA92F0);
    v36 = v47;
    sub_20CEB2724();
    sub_20CEA9924(v34, sub_20CEA9210);
    sub_20CEA9924(v18, type metadata accessor for ImageView);
    v37 = v25;
    v38 = type metadata accessor for TimeView;
  }

  sub_20CEA9924(v37, v38);
  sub_20CEAC4C4(v36, v51);
}

uint64_t sub_20CEA8A24(uint64_t a1)
{
  sub_20CEA9660();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v5 = v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20CEB2BF4();
  sub_20CEB2BE4();
  sub_20CEB2BD4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *v5 = sub_20CEB2784();
  sub_20CEB2BE4();
  sub_20CEB2BD4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_20CEA9864();
  v7 = *(v6 + 44);
  v9[1] = *(a1 + *(type metadata accessor for MedicationsWidgetCircularView(0) + 24) + 16);
  swift_getKeyPath();
  sub_20CEACB4C(0, &qword_281112688, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
  sub_20CEA9778();

  sub_20CEB2984();

  sub_20CEA94F4(&qword_2811128A8, sub_20CEA9660);
  sub_20CEB28B4();
  sub_20CEA9924(v5, sub_20CEA9660);
}

uint64_t sub_20CEA8CA8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  sub_20CEB2BF4();
  sub_20CEB2BE4();
  sub_20CEB2BD4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_20CE9C338();
  sub_20CEB2CF4();
  v5 = sub_20CEB2834();
  v7 = v6;
  v9 = v8;
  sub_20CEB28F4();
  v10 = sub_20CEB2804();
  v12 = v11;
  v14 = v13;
  v16 = v15;

  sub_20CEA9984(v5, v7, v9 & 1);

  *a2 = v10;
  *(a2 + 8) = v12;
  *(a2 + 16) = v14 & 1;
  *(a2 + 24) = v16;
  return result;
}

uint64_t sub_20CEA8DFC()
{
  sub_20CEA8FA0();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *v4 = sub_20CEB29A4();
  v4[1] = v5;
  sub_20CEA953C();
  sub_20CEA7B80(v0, v4 + *(v6 + 44));
  v12 = v0;
  sub_20CEA95AC();
  sub_20CEA94F4(&qword_281112718, sub_20CEA8FA0);
  sub_20CEA9660();
  v8 = v7;
  v9 = sub_20CEA94F4(&qword_2811128A8, sub_20CEA9660);
  v13 = v8;
  v14 = v9;
  swift_getOpaqueTypeConformance2();
  sub_20CEB2844();
  return sub_20CEA9924(v4, sub_20CEA8FA0);
}

void sub_20CEA8FA0()
{
  if (!qword_281112710)
  {
    sub_20CEA9034(255);
    sub_20CEA94F4(&qword_2811126D8, sub_20CEA9034);
    v0 = sub_20CEB2974();
    if (!v1)
    {
      atomic_store(v0, &qword_281112710);
    }
  }
}

void sub_20CEA90E4()
{
  if (!qword_281112730)
  {
    sub_20CEA918C(255, &qword_2811127C8, sub_20CEA9210, sub_20CEA92F0, MEMORY[0x277CE0338]);
    sub_20CEA93D4();
    v0 = sub_20CEB2964();
    if (!v1)
    {
      atomic_store(v0, &qword_281112730);
    }
  }
}

void sub_20CEA918C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

uint64_t sub_20CEA92B8(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20CEA9358(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v7)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

unint64_t sub_20CEA93D4()
{
  result = qword_2811127D0;
  if (!qword_2811127D0)
  {
    sub_20CEA918C(255, &qword_2811127C8, sub_20CEA9210, sub_20CEA92F0, MEMORY[0x277CE0338]);
    sub_20CEA94F4(&qword_2811126F8, sub_20CEA9210);
    sub_20CEA94F4(&qword_2811126E8, sub_20CEA92F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811127D0);
  }

  return result;
}

uint64_t sub_20CEA94F4(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_20CEA953C()
{
  if (!qword_281112888)
  {
    sub_20CEA9034(255);
    v0 = sub_20CEB2514();
    if (!v1)
    {
      atomic_store(v0, &qword_281112888);
    }
  }
}

void sub_20CEA95AC()
{
  if (!qword_281112750)
  {
    sub_20CEA9660();
    sub_20CEA94F4(&qword_2811128A8, sub_20CEA9660);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_281112750);
    }
  }
}

void sub_20CEA9660()
{
  if (!qword_2811128A0)
  {
    sub_20CEA96C4();
    sub_20CEA97F4();
    v0 = sub_20CEB2504();
    if (!v1)
    {
      atomic_store(v0, &qword_2811128A0);
    }
  }
}

void sub_20CEA96C4()
{
  if (!qword_281112700)
  {
    sub_20CEACB4C(255, &qword_281112688, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
    sub_20CEA9778();
    v0 = sub_20CEB2994();
    if (!v1)
    {
      atomic_store(v0, &qword_281112700);
    }
  }
}

unint64_t sub_20CEA9778()
{
  result = qword_281112680;
  if (!qword_281112680)
  {
    sub_20CEACB4C(255, &qword_281112688, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281112680);
  }

  return result;
}

unint64_t sub_20CEA97F4()
{
  result = qword_281112708;
  if (!qword_281112708)
  {
    sub_20CEA96C4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281112708);
  }

  return result;
}

void sub_20CEA9864()
{
  if (!qword_281112880)
  {
    sub_20CEA96C4();
    sub_20CEA98D0();
    v0 = sub_20CEB2514();
    if (!v1)
    {
      atomic_store(v0, &qword_281112880);
    }
  }
}

unint64_t sub_20CEA98D0()
{
  result = qword_281112848;
  if (!qword_281112848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281112848);
  }

  return result;
}

uint64_t sub_20CEA9924(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_20CEA9984(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_20CEA9994()
{
  sub_20CEACF5C();
  v143 = v0;
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0);
  v144 = &v136 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20CEACFF0();
  v141 = v3;
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v142 = &v136 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v146 = sub_20CEB1FF4();
  v152 = *(v146 - 8);
  v6 = *(v152 + 64);
  MEMORY[0x28223BE20](v146);
  v150 = &v136 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v162 = sub_20CEB2064();
  v8 = *(*(v162 - 8) + 64);
  MEMORY[0x28223BE20](v162);
  v161 = &v136 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v149 = sub_20CEB2144();
  v151 = *(v149 - 8);
  v10 = *(v151 + 64);
  MEMORY[0x28223BE20](v149);
  v148 = &v136 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20CEAD084();
  v147 = v12;
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v145 = &v136 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20CEAD118(0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v185 = (&v136 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_20CEAD14C();
  v184 = v18;
  v175 = *(v18 - 1);
  v19 = *(v175 + 64);
  MEMORY[0x28223BE20](v18);
  v183 = &v136 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v182 = sub_20CEB2124();
  v176 = *(v182 - 8);
  v21 = *(v176 + 64);
  MEMORY[0x28223BE20](v182);
  v181 = &v136 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v186 = sub_20CEB2014();
  v172 = *(v186 - 8);
  v23 = *(v172 + 64);
  v24 = MEMORY[0x28223BE20](v186);
  v168 = &v136 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v169 = &v136 - v26;
  v188 = sub_20CEB20A4();
  v179 = *(v188 - 8);
  v27 = *(v179 + 64);
  MEMORY[0x28223BE20](v188);
  v187 = &v136 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v170 = sub_20CEB2094();
  v160 = *(v170 - 8);
  v29 = *(v160 + 64);
  v30 = MEMORY[0x28223BE20](v170);
  v171 = &v136 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v180 = &v136 - v32;
  v159 = sub_20CEB20B4();
  v157 = *(v159 - 8);
  v33 = *(v157 + 64);
  MEMORY[0x28223BE20](v159);
  v178 = (&v136 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_20CEAD1AC();
  v177 = v35;
  v36 = *(*(v35 - 8) + 64);
  MEMORY[0x28223BE20](v35);
  v38 = &v136 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v174 = sub_20CEB2204();
  v167 = *(v174 - 1);
  v39 = v167[8];
  MEMORY[0x28223BE20](v174);
  v166 = (&v136 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0));
  v156 = sub_20CEB20E4();
  v155 = *(v156 - 8);
  v41 = *(v155 + 64);
  MEMORY[0x28223BE20](v156);
  v43 = &v136 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_20CEB2184();
  v45 = *(*(v44 - 8) + 64);
  MEMORY[0x28223BE20](v44 - 8);
  v165 = &v136 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_20CEB2344();
  v48 = *(*(v47 - 8) + 64);
  MEMORY[0x28223BE20](v47 - 8);
  v164 = &v136 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_20CEB2324();
  v51 = *(*(v50 - 8) + 64);
  MEMORY[0x28223BE20](v50 - 8);
  v158 = &v136 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = sub_20CEB22D4();
  v54 = *(*(v53 - 8) + 64);
  MEMORY[0x28223BE20](v53 - 8);
  v55 = MEMORY[0x277D83D88];
  sub_20CEA7994(0, &qword_281113028, MEMORY[0x277CC9388], MEMORY[0x277D83D88]);
  v57 = *(*(v56 - 8) + 64);
  MEMORY[0x28223BE20](v56 - 8);
  v59 = &v136 - v58;
  sub_20CEA7994(0, &qword_281113020, MEMORY[0x277CC93A0], v55);
  v61 = *(*(v60 - 8) + 64);
  MEMORY[0x28223BE20](v60 - 8);
  v63 = &v136 - v62;
  v154 = sub_20CEB2224();
  v153 = *(v154 - 8);
  v64 = *(v153 + 64);
  MEMORY[0x28223BE20](v154);
  v66 = &v136 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20CEAD240(0);
  v68 = *(*(v67 - 8) + 64);
  MEMORY[0x28223BE20](v67 - 8);
  v70 = &v136 - ((v69 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = sub_20CEB2274();
  v72 = *(v71 - 8);
  v73 = *(v72 + 64);
  MEMORY[0x28223BE20](v71);
  v75 = &v136 - ((v74 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = type metadata accessor for MedicationsWidgetViewModel();
  sub_20CEAD274(v163 + *(v76 + 32), v70, sub_20CEAD240);
  if ((*(v72 + 48))(v70, 1, v71) == 1)
  {
    sub_20CEA9924(v70, sub_20CEAD240);
    return 0;
  }

  v138 = v72;
  v78 = *(v72 + 32);
  v139 = v71;
  v78(v75, v70, v71);
  v79 = sub_20CEB21E4();
  (*(*(v79 - 8) + 56))(v63, 1, 1, v79);
  sub_20CEB21C4();
  v80 = sub_20CEB21D4();
  (*(*(v80 - 8) + 56))(v59, 0, 1, v80);
  sub_20CEB2294();
  sub_20CEB22F4();
  sub_20CEB2334();
  sub_20CEB2174();
  sub_20CEB2214();
  v81 = v166;
  v140 = v66;
  sub_20CEB21B4();
  v137 = v75;
  sub_20CEB21F4();
  v167[1](v81, v174);
  v82 = v178;
  v158 = v43;
  sub_20CEB20C4();
  v83 = v157;
  v84 = v159;
  (*(v157 + 16))(v38, v82, v159);
  v85 = *(v177 + 36);
  sub_20CEA94F4(&qword_281113050, MEMORY[0x277CC8C08]);
  sub_20CEB2C04();
  (*(v83 + 8))(v82, v84);
  v179 += 8;
  v177 = v160 + 32;
  v178 = (v160 + 16);
  v175 += 8;
  v176 += 8;
  v174 = (v172 + 48);
  v166 = (v172 + 32);
  LODWORD(v165) = *MEMORY[0x277CC8A98];
  v164 = (v172 + 104);
  v167 = (v172 + 8);
  v172 = v160 + 8;
  v86 = v170;
  v87 = v171;
  v173 = v38;
  while (1)
  {
    v88 = v187;
    sub_20CEB2C14();
    sub_20CEA94F4(&qword_281113058, MEMORY[0x277CC8BF8]);
    v89 = v188;
    v90 = sub_20CEB2B24();
    (*v179)(v88, v89);
    if (v90)
    {
      sub_20CEA9924(v38, sub_20CEAD1AC);
      v104 = v158;
      sub_20CEB2054();
      sub_20CEA94F4(&qword_281113060, MEMORY[0x277CC8B30]);
      v105 = sub_20CEB2BA4();
      (*(v155 + 8))(v104, v156);
      (*(v153 + 8))(v140, v154);
      (*(v138 + 8))(v137, v139);
      return v105;
    }

    v91 = sub_20CEB2C34();
    v92 = v180;
    (*v178)(v180);
    v91(&v189, 0);
    v93 = v84;
    sub_20CEB2C24();
    (*v177)(v87, v92, v86);
    v94 = v181;
    sub_20CEB2074();
    swift_getKeyPath();
    v95 = v87;
    sub_20CEB2034();
    v96 = v183;
    sub_20CEB2114();

    (*v176)(v94, v182);
    swift_getKeyPath();
    sub_20CEAD2DC();
    v97 = v184;
    v98 = v185;
    sub_20CEB2154();

    (*v175)(v96, v97);
    v99 = v186;
    if ((*v174)(v98, 1, v186) == 1)
    {
      (*v172)(v95, v86);
      sub_20CEA9924(v98, sub_20CEAD118);
      v87 = v95;
      goto LABEL_5;
    }

    v100 = v169;
    (*v166)(v169, v98, v99);
    v101 = v168;
    (*v164)(v168, v165, v99);
    v102 = sub_20CEB2004();
    v103 = *v167;
    (*v167)(v101, v99);
    if (v102)
    {
      break;
    }

    v103(v100, v99);
    v87 = v171;
    v86 = v170;
    (*v172)(v171, v170);
LABEL_5:
    v38 = v173;
    v84 = v93;
  }

  v185 = v103;
  v106 = v145;
  v107 = v171;
  sub_20CEB2084();
  sub_20CEA94F4(&qword_281112650, sub_20CEAD084);
  v108 = v148;
  sub_20CEB20F4();
  sub_20CEA9924(v106, sub_20CEAD084);
  sub_20CEB2134();
  v109 = *(v151 + 8);
  v151 += 8;
  v109(v108, v149);
  sub_20CEA94F4(&qword_281113060, MEMORY[0x277CC8B30]);
  v189 = sub_20CEB2BA4();
  v190 = v110;
  v111 = v150;
  sub_20CEB1FE4();
  sub_20CE9C338();
  v112 = sub_20CEB2D04();
  v187 = v113;
  v188 = v112;
  v114 = *(v152 + 8);
  v115 = v146;
  v152 += 8;
  v184 = v114;
  v114(v111, v146);

  v116 = *(v163 + *(type metadata accessor for TimeView(0) + 20));
  if (v116 == 2 || (v116 & 1) == 0)
  {
    sub_20CEB2084();
    v128 = sub_20CEB20D4();
    v129 = v144;
    (*(*(v128 - 8) + 16))(v144, v106, v128);
    sub_20CEA9924(v106, sub_20CEAD084);
    sub_20CEA94F4(&qword_281113040, MEMORY[0x277CC8C20]);
    result = sub_20CEB2B24();
    v130 = v107;
    v131 = v169;
    if ((result & 1) == 0)
    {
      __break(1u);
      goto LABEL_20;
    }

    sub_20CEA94F4(&qword_281112608, sub_20CEACF5C);
    v132 = v148;
    v133 = v158;
    sub_20CEB20F4();
    sub_20CEA9924(v129, sub_20CEACF5C);
    sub_20CEB2134();
    v109(v132, v149);
    v189 = sub_20CEB2BA4();
    v190 = v134;
    v135 = v150;
    sub_20CEB1FE4();
    v127 = sub_20CEB2D04();
    v184(v135, v115);

    v185(v131, v186);
    (*v172)(v130, v170);
    sub_20CEA9924(v173, sub_20CEAD1AC);
    (*(v155 + 8))(v133, v156);
LABEL_18:
    (*(v153 + 8))(v140, v154);
    (*(v138 + 8))(v137, v139);
    return v127;
  }

  else
  {
    sub_20CEB2084();
    v117 = *(v147 + 36);
    v118 = sub_20CEB20D4();
    v119 = v106 + v117;
    v120 = v142;
    (*(*(v118 - 8) + 16))(v142, v119, v118);
    sub_20CEA9924(v106, sub_20CEAD084);
    sub_20CEA94F4(&qword_281113040, MEMORY[0x277CC8C20]);
    result = sub_20CEB2B24();
    v121 = v107;
    v122 = v169;
    if (result)
    {
      sub_20CEA94F4(&qword_27C818540, sub_20CEACFF0);
      v123 = v148;
      v124 = v158;
      sub_20CEB20F4();
      sub_20CEA9924(v120, sub_20CEACFF0);
      sub_20CEB2134();
      v109(v123, v149);
      v189 = sub_20CEB2BA4();
      v190 = v125;
      v126 = v150;
      sub_20CEB1FE4();
      v127 = sub_20CEB2D04();
      v184(v126, v115);

      v185(v122, v186);
      (*v172)(v121, v170);
      sub_20CEA9924(v173, sub_20CEAD1AC);
      (*(v155 + 8))(v124, v156);
      goto LABEL_18;
    }

LABEL_20:
    __break(1u);
  }

  return result;
}

uint64_t sub_20CEAB2CC@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v174 = a2;
  sub_20CEACB9C();
  v173 = v3;
  v163 = *(v3 - 8);
  v4 = *(v163 + 8);
  MEMORY[0x28223BE20](v3);
  v162 = &v157 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20CEA918C(0, &qword_281112800, sub_20CEAC988, sub_20CEACB9C, MEMORY[0x277CE0330]);
  v171 = v6;
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v172 = &v157 - v8;
  sub_20CEACD88(0, &qword_281112810, MEMORY[0x277CE0330]);
  v10 = v9;
  v11 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v157 - v12;
  sub_20CEAC9A8(0);
  v15 = v14;
  v16 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v157 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20CEACA40();
  v164 = v19;
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19);
  v23 = &v157 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v21);
  v165 = &v157 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v166 = &v157 - v27;
  MEMORY[0x28223BE20](v26);
  v167 = &v157 - v28;
  sub_20CEAC988(0);
  v170 = v29;
  v30 = *(*(v29 - 8) + 64);
  MEMORY[0x28223BE20](v29);
  v32 = &v157 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20CEA918C(0, &qword_281112798, sub_20CEAC988, sub_20CEACB9C, MEMORY[0x277CE0338]);
  v34 = *(*(v33 - 8) + 64);
  MEMORY[0x28223BE20](v33 - 8);
  v36 = &v157 - v35;
  sub_20CEB2BF4();
  v168 = sub_20CEB2BE4();
  sub_20CEB2BD4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v37 = sub_20CE9C6C4();
  v169 = v36;
  if (v37)
  {
    v38 = sub_20CEA9994();
    v40 = v39;

    v175 = v38;
    v176 = v40;
    sub_20CE9C338();
    v41 = sub_20CEB2834();
    v43 = v42;
    v45 = v44;
    sub_20CEB27A4();
    v46 = sub_20CEB2814();
    v48 = v47;
    v49 = v173;
    v51 = v50;

    sub_20CEA9984(v41, v43, v45 & 1);

    sub_20CEB27C4();
    v52 = sub_20CEB27F4();
    v54 = v53;
    LOBYTE(v43) = v55;
    v57 = v56;
    sub_20CEA9984(v46, v48, v51 & 1);

    KeyPath = swift_getKeyPath();
    v175 = v52;
    v176 = v54;
    v177 = v43 & 1;
    v178 = v57;
    v179 = KeyPath;
    v180 = 1;
    v181 = 0;
    sub_20CEACC20();
    v60 = v59;
    v61 = sub_20CEACC98();
    v62 = v162;
    sub_20CEB28B4();
    v63 = v52;
    v64 = v169;
    sub_20CEA9984(v63, v54, v43 & 1);

    v65 = v163;
    (*(v163 + 2))(v172, v62, v49);
    swift_storeEnumTagMultiPayload();
    sub_20CEACEB4();
    v175 = v60;
    v176 = v61;
    swift_getOpaqueTypeConformance2();
    sub_20CEB2724();
    (*(v65 + 8))(v62, v49);
  }

  else
  {
    v158 = v23;
    v159 = v18;
    v160 = v10;
    v161 = v15;
    v162 = v32;
    v163 = v13;
    v66 = a1;
    v67 = *(a1 + *(type metadata accessor for TimeView(0) + 20));
    if (v67 == 2 || (v67 & 1) == 0)
    {
      v110 = sub_20CEA9994();
      v112 = v111;

      v175 = v110;
      v176 = v112;
      sub_20CE9C338();
      v113 = sub_20CEB2834();
      v115 = v114;
      v117 = v116;
      sub_20CEB27A4();
      v118 = sub_20CEB2814();
      v120 = v119;
      v122 = v121;
      v157 = v66;

      sub_20CEA9984(v113, v115, v117 & 1);

      sub_20CEB27C4();
      v123 = sub_20CEB27F4();
      v125 = v124;
      LOBYTE(v115) = v126;
      v128 = v127;
      sub_20CEA9984(v118, v120, v122 & 1);

      v175 = v123;
      v176 = v125;
      v177 = v115 & 1;
      v178 = v128;
      v129 = v167;
      sub_20CEB28B4();
      sub_20CEA9984(v123, v125, v115 & 1);

      v130 = swift_getKeyPath();
      v85 = (v164 + 36);
      v131 = &v129[*(v164 + 36)];
      *v131 = v130;
      *(v131 + 1) = 1;
      v131[16] = 0;
      sub_20CEA9994();
      v133 = v132;
      v135 = v134;

      v175 = v133;
      v176 = v135;
      v136 = sub_20CEB2834();
      v138 = v137;
      LOBYTE(v125) = v139;
      sub_20CEB27D4();
      v140 = sub_20CEB2814();
      v142 = v141;
      LOBYTE(v129) = v143;
      v145 = v144;

      sub_20CEA9984(v136, v138, v125 & 1);

      v175 = v140;
      v176 = v142;
      LOBYTE(v136) = v129 & 1;
      v83 = v167;
      v177 = v136;
      v178 = v145;
      v109 = v166;
      sub_20CEB28B4();
      sub_20CEA9984(v140, v142, v136);
    }

    else
    {
      sub_20CEA9994();
      v69 = v68;
      v71 = v70;

      v175 = v69;
      v176 = v71;
      v157 = sub_20CE9C338();
      v72 = sub_20CEB2834();
      v74 = v73;
      LOBYTE(v71) = v75;
      sub_20CEB27D4();
      v76 = sub_20CEB2814();
      v78 = v77;
      v80 = v79;
      v82 = v81;

      sub_20CEA9984(v72, v74, v71 & 1);

      v175 = v76;
      v176 = v78;
      v177 = v80 & 1;
      v178 = v82;
      v83 = v167;
      sub_20CEB28B4();
      sub_20CEA9984(v76, v78, v80 & 1);

      v84 = swift_getKeyPath();
      v85 = (v164 + 36);
      v86 = v83 + *(v164 + 36);
      *v86 = v84;
      *(v86 + 8) = 1;
      *(v86 + 16) = 0;
      v87 = sub_20CEA9994();
      v89 = v88;

      v175 = v87;
      v176 = v89;
      v90 = sub_20CEB2834();
      v92 = v91;
      v94 = v93;
      sub_20CEB27A4();
      v95 = sub_20CEB2814();
      v97 = v96;
      v99 = v98;
      v164 = v100;

      sub_20CEA9984(v90, v92, v94 & 1);

      sub_20CEB27C4();
      v101 = sub_20CEB27F4();
      v103 = v102;
      LOBYTE(v92) = v104;
      v106 = v105;
      sub_20CEA9984(v95, v97, v99 & 1);

      v175 = v101;
      v176 = v103;
      v177 = v92 & 1;
      v178 = v106;
      v107 = v166;
      sub_20CEB28B4();
      v108 = v103;
      v109 = v107;
      sub_20CEA9984(v101, v108, v92 & 1);
    }

    v146 = swift_getKeyPath();
    v147 = v109 + *v85;
    *v147 = v146;
    *(v147 + 8) = 1;
    *(v147 + 16) = 0;
    v148 = v165;
    sub_20CEACDEC(v83, v165, sub_20CEACA40);
    v149 = v158;
    sub_20CEACDEC(v109, v158, sub_20CEACA40);
    v150 = v159;
    sub_20CEACDEC(v148, v159, sub_20CEACA40);
    sub_20CEAC9DC();
    sub_20CEACDEC(v149, v150 + *(v151 + 48), sub_20CEACA40);
    sub_20CEACE54(v149, sub_20CEACA40);
    sub_20CEACE54(v148, sub_20CEACA40);
    sub_20CEACDEC(v150, v163, sub_20CEAC9A8);
    swift_storeEnumTagMultiPayload();
    sub_20CEA94F4(&qword_2811126C8, sub_20CEAC9A8);
    v152 = v162;
    sub_20CEB2724();
    sub_20CEACE54(v150, sub_20CEAC9A8);
    sub_20CEACE54(v109, sub_20CEACA40);
    sub_20CEACE54(v83, sub_20CEACA40);
    sub_20CEACDEC(v152, v172, sub_20CEAC988);
    swift_storeEnumTagMultiPayload();
    sub_20CEACEB4();
    sub_20CEACC20();
    v154 = v153;
    v155 = sub_20CEACC98();
    v175 = v154;
    v176 = v155;
    swift_getOpaqueTypeConformance2();
    v64 = v169;
    sub_20CEB2724();
    sub_20CEACE54(v152, sub_20CEAC988);
  }

  sub_20CE99DD4(v64, v174);
}

uint64_t sub_20CEABFDC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_20CEB2634();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20CEA7994(0, &qword_2811128D0, MEMORY[0x277CE3BA0], MEMORY[0x277CDF458]);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = (&v17 - v11);
  sub_20CE9FDAC(v2, &v17 - v11);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_20CEB2A54();
    return (*(*(v13 - 8) + 32))(a1, v12, v13);
  }

  else
  {
    v15 = *v12;
    sub_20CEB2C64();
    v16 = sub_20CEB2774();
    sub_20CEB2444();

    sub_20CEB2624();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v8, v4);
  }
}

uint64_t sub_20CEAC1E8@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_20CEB26C4();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  sub_20CEAC908(0, &qword_281112890, &qword_281112798, sub_20CEAC988, sub_20CEACB9C);
  return sub_20CEAB2CC(v1, a1 + *(v3 + 44));
}

uint64_t sub_20CEAC268@<X0>(uint64_t a1@<X8>)
{
  v22 = a1;
  v2 = sub_20CEB2A54();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x277CE1078];
  sub_20CEACAEC(0, &qword_281112768);
  v9 = v8;
  v10 = *(v8 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v8);
  v13 = &v21 - v12;
  sub_20CEABFDC(v6);
  (*(v3 + 8))(v6, v2);
  v23 = sub_20CEB2934();
  v14 = MEMORY[0x277CE1088];
  sub_20CEB2854();

  v23 = v14;
  v24 = v7;
  swift_getOpaqueTypeConformance2();
  v15 = v22;
  sub_20CEB2894();
  (*(v10 + 8))(v13, v9);
  v16 = *(v1 + *(type metadata accessor for ImageView(0) + 20));
  KeyPath = swift_getKeyPath();
  sub_20CEAC740();
  v19 = (v15 + *(v18 + 36));
  *v19 = KeyPath;
  v19[1] = v16;
}

uint64_t sub_20CEAC4C4(uint64_t a1, uint64_t a2)
{
  sub_20CEA918C(0, &qword_2811127C8, sub_20CEA9210, sub_20CEA92F0, MEMORY[0x277CE0338]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_20CEAC594()
{
  sub_20CEA7994(319, &qword_2811128C0, MEMORY[0x277CE3BA0], MEMORY[0x277CDF468]);
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_20CEAC660()
{
  type metadata accessor for MedicationsWidgetViewModel();
  if (v0 <= 0x3F)
  {
    sub_20CEACB4C(319, &qword_281112668, MEMORY[0x277D839B0], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_20CEAC740()
{
  if (!qword_281112860)
  {
    sub_20CEAC7C0();
    sub_20CEAC89C(255, &qword_281112788, &qword_281112770, MEMORY[0x277CE0AE0]);
    v0 = sub_20CEB2524();
    if (!v1)
    {
      atomic_store(v0, &qword_281112860);
    }
  }
}

void sub_20CEAC7C0()
{
  if (!qword_281112758)
  {
    sub_20CEACAEC(255, &qword_281112768);
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_281112758);
    }
  }
}

void sub_20CEAC89C(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (!*a2)
  {
    sub_20CEACB4C(255, a3, a4, MEMORY[0x277D83D88]);
    v5 = sub_20CEB2754();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_20CEAC908(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t))
{
  if (!*a2)
  {
    sub_20CEA918C(255, a3, a4, a5, MEMORY[0x277CE0338]);
    v6 = sub_20CEB2514();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_20CEAC9DC()
{
  if (!qword_281112850)
  {
    sub_20CEACA40();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_281112850);
    }
  }
}

void sub_20CEACA40()
{
  if (!qword_281112858)
  {
    sub_20CEACAEC(255, &qword_281112740);
    sub_20CEAC89C(255, &qword_281112778, &qword_281112660, MEMORY[0x277D83B88]);
    v0 = sub_20CEB2524();
    if (!v1)
    {
      atomic_store(v0, &qword_281112858);
    }
  }
}

void sub_20CEACAEC(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v4)
    {
      atomic_store(OpaqueTypeMetadata2, a2);
    }
  }
}

void sub_20CEACB4C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_20CEACB9C()
{
  if (!qword_281112748)
  {
    sub_20CEACC20();
    sub_20CEACC98();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_281112748);
    }
  }
}

void sub_20CEACC20()
{
  if (!qword_281112870)
  {
    sub_20CEAC89C(255, &qword_281112778, &qword_281112660, MEMORY[0x277D83B88]);
    v0 = sub_20CEB2524();
    if (!v1)
    {
      atomic_store(v0, &qword_281112870);
    }
  }
}

unint64_t sub_20CEACC98()
{
  result = qword_281112878;
  if (!qword_281112878)
  {
    sub_20CEACC20();
    sub_20CEACD38(&qword_281112780, &qword_281112778, &qword_281112660, MEMORY[0x277D83B88]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281112878);
  }

  return result;
}

uint64_t sub_20CEACD38(unint64_t *a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_20CEAC89C(255, a2, a3, a4);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_20CEACD88(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_20CEAC9A8(255);
    v7 = a3(a1, v6, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_20CEACDEC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_20CEACE54(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_20CEACEB4()
{
  result = qword_2811127C0;
  if (!qword_2811127C0)
  {
    sub_20CEAC988(255);
    sub_20CEA94F4(&qword_2811126C8, sub_20CEAC9A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811127C0);
  }

  return result;
}

void sub_20CEACF5C()
{
  if (!qword_281112600)
  {
    sub_20CEB20D4();
    sub_20CEA94F4(&qword_281113048, MEMORY[0x277CC8C20]);
    v0 = sub_20CEB2DC4();
    if (!v1)
    {
      atomic_store(v0, &qword_281112600);
    }
  }
}

void sub_20CEACFF0()
{
  if (!qword_281112610)
  {
    sub_20CEB20D4();
    sub_20CEA94F4(&qword_281113048, MEMORY[0x277CC8C20]);
    v0 = sub_20CEB2DB4();
    if (!v1)
    {
      atomic_store(v0, &qword_281112610);
    }
  }
}

void sub_20CEAD084()
{
  if (!qword_281112658)
  {
    sub_20CEB20D4();
    sub_20CEA94F4(&qword_281113048, MEMORY[0x277CC8C20]);
    v0 = sub_20CEB2C44();
    if (!v1)
    {
      atomic_store(v0, &qword_281112658);
    }
  }
}

void sub_20CEAD14C()
{
  if (!qword_281113038)
  {
    sub_20CEB2034();
    v0 = sub_20CEB2164();
    if (!v1)
    {
      atomic_store(v0, &qword_281113038);
    }
  }
}

void sub_20CEAD1AC()
{
  if (!qword_281112618)
  {
    sub_20CEB20B4();
    sub_20CEA94F4(&qword_281113050, MEMORY[0x277CC8C08]);
    v0 = sub_20CEB2DA4();
    if (!v1)
    {
      atomic_store(v0, &qword_281112618);
    }
  }
}

uint64_t sub_20CEAD274(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_20CEAD2DC()
{
  result = qword_281113068;
  if (!qword_281113068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281113068);
  }

  return result;
}

unint64_t sub_20CEAD330()
{
  result = qword_281112868;
  if (!qword_281112868)
  {
    sub_20CEAC740();
    sub_20CEACAEC(255, &qword_281112768);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_20CEACD38(&qword_281112790, &qword_281112788, &qword_281112770, MEMORY[0x277CE0AE0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281112868);
  }

  return result;
}

void sub_20CEAD458()
{
  if (!qword_281112720)
  {
    sub_20CEA918C(255, &qword_281112798, sub_20CEAC988, sub_20CEACB9C, MEMORY[0x277CE0338]);
    sub_20CEAD500();
    v0 = sub_20CEB2964();
    if (!v1)
    {
      atomic_store(v0, &qword_281112720);
    }
  }
}

unint64_t sub_20CEAD500()
{
  result = qword_2811127A0;
  if (!qword_2811127A0)
  {
    sub_20CEA918C(255, &qword_281112798, sub_20CEAC988, sub_20CEACB9C, MEMORY[0x277CE0338]);
    sub_20CEACEB4();
    sub_20CEACC20();
    sub_20CEACC98();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811127A0);
  }

  return result;
}

void sub_20CEAD61C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t type metadata accessor for MedicationsWidgetRectangularView()
{
  result = qword_281112EA8;
  if (!qword_281112EA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20CEAD6E0()
{
  sub_20CEAD61C(319, &qword_2811128B8, MEMORY[0x277CDFB98], MEMORY[0x277CDF468]);
  if (v0 <= 0x3F)
  {
    sub_20CEAD61C(319, &qword_2811128C0, MEMORY[0x277CE3BA0], MEMORY[0x277CDF468]);
    if (v1 <= 0x3F)
    {
      sub_20CEAD61C(319, &qword_2811128C8, MEMORY[0x277CE3AF8], MEMORY[0x277CDF468]);
      if (v2 <= 0x3F)
      {
        sub_20CEB009C(319, &qword_2811128B0, MEMORY[0x277D839B0], MEMORY[0x277CDF468]);
        if (v3 <= 0x3F)
        {
          type metadata accessor for MedicationsWidgetViewModel();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_20CEAD87C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_20CEB2634();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x277CDFB98];
  sub_20CEAD61C(0, &qword_27C8184F8, MEMORY[0x277CDFB98], MEMORY[0x277CDF458]);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = (&v18 - v12);
  sub_20CEB0A78(v2, &v18 - v12, &qword_27C8184F8, v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = sub_20CEB2544();
    return (*(*(v14 - 8) + 32))(a1, v13, v14);
  }

  else
  {
    v16 = *v13;
    sub_20CEB2C64();
    v17 = sub_20CEB2774();
    sub_20CEB2444();

    sub_20CEB2624();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v8, v4);
  }
}

uint64_t sub_20CEADAA0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_20CEB2634();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x277CE3BA0];
  sub_20CEAD61C(0, &qword_2811128D0, MEMORY[0x277CE3BA0], MEMORY[0x277CDF458]);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = (&v18 - v11);
  v13 = type metadata accessor for MedicationsWidgetRectangularView();
  sub_20CEB0A78(v1 + *(v13 + 20), v12, &qword_2811128D0, v8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = sub_20CEB2A54();
    return (*(*(v14 - 8) + 32))(a1, v12, v14);
  }

  else
  {
    v16 = *v12;
    sub_20CEB2C64();
    v17 = sub_20CEB2774();
    sub_20CEB2444();

    sub_20CEB2624();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v7, v3);
  }
}

uint64_t sub_20CEADCCC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_20CEB2634();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x277CE3AF8];
  sub_20CEAD61C(0, &qword_2811128D8, MEMORY[0x277CE3AF8], MEMORY[0x277CDF458]);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = (&v18 - v11);
  v13 = type metadata accessor for MedicationsWidgetRectangularView();
  sub_20CEB0A78(v1 + *(v13 + 24), v12, &qword_2811128D8, v8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = sub_20CEB2A44();
    return (*(*(v14 - 8) + 32))(a1, v12, v14);
  }

  else
  {
    v16 = *v12;
    sub_20CEB2C64();
    v17 = sub_20CEB2774();
    sub_20CEB2444();

    sub_20CEB2624();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v7, v3);
  }
}

uint64_t sub_20CEADEF8()
{
  v1 = sub_20CEB2634();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v10[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = v0 + *(type metadata accessor for MedicationsWidgetRectangularView() + 28);
  v7 = *v6;
  if (*(v6 + 8) != 1)
  {

    sub_20CEB2C64();
    v8 = sub_20CEB2774();
    sub_20CEB2444();

    sub_20CEB2624();
    swift_getAtKeyPath();
    sub_20CEB0828(v7, 0);
    (*(v2 + 8))(v5, v1);
    LOBYTE(v7) = v10[15];
  }

  return v7 & 1;
}

uint64_t sub_20CEAE050()
{
  v1 = sub_20CEB2744();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20CEAF808();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20CEB0224();
  v11 = v10;
  v12 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v14 = v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v9 = sub_20CEB26D4();
  *(v9 + 1) = 0;
  v9[16] = 1;
  sub_20CEB0284();
  sub_20CEAE2C8(v0, &v9[*(v15 + 44)]);
  sub_20CEB29B4();
  sub_20CEB2554();
  sub_20CE9A3A8(v9, v14);
  v16 = &v14[*(v11 + 36)];
  v17 = v27;
  *(v16 + 4) = v26;
  *(v16 + 5) = v17;
  *(v16 + 6) = v28;
  v18 = v23;
  *v16 = v22;
  *(v16 + 1) = v18;
  v19 = v25;
  *(v16 + 2) = v24;
  *(v16 + 3) = v19;
  v21[1] = sub_20CEB2914();
  sub_20CEB2734();
  sub_20CEB031C();
  sub_20CEB28D4();
  (*(v2 + 8))(v5, v1);

  return sub_20CEB071C(v14, sub_20CEB0224);
}

uint64_t sub_20CEAE2C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v190 = a2;
  v174 = type metadata accessor for MedicationsWidgetRectangularView();
  v156 = *(v174 - 8);
  v3 = *(v156 + 64);
  MEMORY[0x28223BE20](v174);
  v157 = v4;
  v158 = &v155 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20CEAFFF8(0);
  v184 = v5;
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v180 = &v155 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20CEAFF6C(0, &qword_27C8185E0, sub_20CEAFFF8, sub_20CEB00EC);
  v187 = v8;
  v160 = *(v8 - 8);
  v9 = *(v160 + 64);
  MEMORY[0x28223BE20](v8);
  v159 = &v155 - v10;
  sub_20CEAFE78();
  v189 = v11;
  v162 = *(v11 - 8);
  v12 = *(v162 + 64);
  MEMORY[0x28223BE20](v11);
  v161 = &v155 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20CEB03CC(0, &qword_27C818620, MEMORY[0x277CE0330]);
  v183 = v14;
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  v185 = (&v155 - v16);
  v179 = sub_20CEB2544();
  v178 = *(v179 - 8);
  v17 = *(v178 + 64);
  v18 = MEMORY[0x28223BE20](v179);
  v177 = &v155 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v176 = &v155 - v20;
  sub_20CEAFDFC(0);
  v22 = *(*(v21 - 8) + 64);
  v23 = MEMORY[0x28223BE20](v21 - 8);
  v188 = &v155 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v186 = &v155 - v25;
  v175 = sub_20CEB2A44();
  v173 = *(v175 - 8);
  v26 = *(v173 + 64);
  v27 = MEMORY[0x28223BE20](v175);
  v172 = &v155 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v171 = &v155 - v29;
  v30 = sub_20CEB2A54();
  v31 = *(v30 - 8);
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v30);
  v34 = &v155 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_20CEB26A4();
  v36 = *(*(v35 - 8) + 64);
  MEMORY[0x28223BE20](v35 - 8);
  sub_20CEAFAE8(0);
  v165 = v37;
  v38 = *(*(v37 - 8) + 64);
  MEMORY[0x28223BE20](v37);
  v40 = &v155 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20CEAFF6C(0, &qword_27C818578, sub_20CEAFAE8, sub_20CEAFC04);
  v164 = v41;
  v163 = *(v41 - 8);
  v42 = *(v163 + 64);
  MEMORY[0x28223BE20](v41);
  v44 = &v155 - v43;
  sub_20CEAF9F4();
  v168 = v45;
  v167 = *(v45 - 8);
  v46 = *(v167 + 64);
  MEMORY[0x28223BE20](v45);
  v166 = &v155 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20CEAF974();
  v169 = v48;
  v49 = *(*(v48 - 8) + 64);
  MEMORY[0x28223BE20](v48);
  v170 = &v155 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20CEAF90C();
  v52 = *(*(v51 - 8) + 64);
  v53 = MEMORY[0x28223BE20](v51 - 8);
  v182 = &v155 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v53);
  v191 = &v155 - v55;
  v56 = sub_20CEB2BF4();
  v181 = sub_20CEB2BE4();
  v155 = v56;
  sub_20CEB2BD4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_20CEB2694();
  sub_20CEB2684();
  sub_20CEADAA0(v34);
  (*(v31 + 8))(v34, v30);
  sub_20CEB2934();
  sub_20CEB2664();

  sub_20CEB2684();
  v57 = (a1 + *(v174 + 32));
  v58 = *v57;
  v59 = v57[1];
  v174 = v57;
  sub_20CEB2674();
  sub_20CEB2684();
  sub_20CEB26B4();
  v60 = sub_20CEB2824();
  v62 = v61;
  v64 = v63;
  v66 = v65;
  sub_20CEAFB08();
  v68 = &v40[*(v67 + 36)];
  sub_20CEAD61C(0, &qword_27C818590, MEMORY[0x277CE1060], MEMORY[0x277CE0860]);
  v69 = a1;
  v71 = *(v70 + 28);
  v72 = *MEMORY[0x277CE1050];
  v73 = sub_20CEB2944();
  v74 = v68 + v71;
  v75 = v69;
  (*(*(v73 - 8) + 104))(v74, v72, v73);
  *v68 = swift_getKeyPath();
  *v40 = v60;
  *(v40 + 1) = v62;
  v40[16] = v64 & 1;
  *(v40 + 3) = v66;
  v76 = sub_20CEB27E4();
  KeyPath = swift_getKeyPath();
  v78 = v165;
  v79 = &v40[*(v165 + 36)];
  *v79 = KeyPath;
  v79[1] = v76;
  v80 = sub_20CEAFC04();
  sub_20CEB2894();
  sub_20CEB0918(v40, sub_20CEAFAE8);
  v195 = v78;
  v196 = v80;
  swift_getOpaqueTypeConformance2();
  v81 = v166;
  v82 = v164;
  sub_20CEB2854();
  (*(v163 + 8))(v44, v82);
  v83 = v171;
  sub_20CEADCCC(v171);
  v84 = v172;
  sub_20CEB2A34();
  LOBYTE(v82) = sub_20CEB2A24();
  v85 = *(v173 + 8);
  v86 = v84;
  v87 = v175;
  v85(v86, v175);
  v85(v83, v87);
  if (v82)
  {
    v88 = sub_20CEB2914();
  }

  else
  {
    v88 = sub_20CEB28F4();
  }

  v89 = v88;
  v90 = v170;
  v91 = v169;
  v92 = swift_getKeyPath();
  (*(v167 + 32))(v90, v81, v168);
  v93 = (v90 + *(v91 + 36));
  *v93 = v92;
  v93[1] = v89;
  if (qword_281112628 != -1)
  {
    swift_once();
  }

  v195 = sub_20CEB2104();
  v196 = v94;
  sub_20CE9C338();
  v95 = sub_20CEB2834();
  v97 = v96;
  v99 = v98;
  sub_20CEB058C();
  sub_20CEB28C4();
  sub_20CEA9984(v95, v97, v99 & 1);

  sub_20CEB071C(v90, sub_20CEAF974);
  v100 = v176;
  sub_20CEAD87C(v176);
  v101 = v177;
  sub_20CEB2534();
  sub_20CEB077C(&qword_27C818638, MEMORY[0x277CDFB98]);
  v102 = v179;
  LOBYTE(v95) = sub_20CEB2D24();
  v103 = *(v178 + 8);
  v103(v101, v102);
  v103(v100, v102);
  if (v95)
  {
    sub_20CEB29C4();
    v195 = sub_20CEB2B94();
    v196 = v104;
    v105 = sub_20CEB2834();
    v180 = v106;
    LODWORD(v177) = v107;
    v178 = v108;
    sub_20CEB29D4();
    v195 = sub_20CEB2B94();
    v196 = v109;
    v110 = sub_20CEB2834();
    v112 = v111;
    v114 = v113;
    sub_20CEB2924();
    v115 = sub_20CEB2804();
    v117 = v116;
    v119 = v118;
    v121 = v120;

    sub_20CEA9984(v110, v112, v114 & 1);

    v122 = v177 & 1;
    v192 = v177 & 1;
    v194 = v177 & 1;
    LOBYTE(v110) = v119 & 1;
    v193 = v119 & 1;
    v123 = v105;
    v124 = v180;
    sub_20CEB0A68(v105, v180, v177 & 1);
    v125 = v178;

    sub_20CEB0A68(v115, v117, v110);

    sub_20CEB0A68(v123, v124, v122);

    sub_20CEB0A68(v115, v117, v110);

    sub_20CEA9984(v115, v117, v110);

    v179 = v123;
    sub_20CEA9984(v123, v124, v192);

    v126 = v194;
    v127 = v193;
    v128 = v185;
    *v185 = v123;
    v128[1] = v124;
    *(v128 + 16) = v126;
    v128[3] = v125;
    v128[4] = v115;
    v128[5] = v117;
    *(v128 + 48) = v127;
    v128[7] = v121;
    swift_storeEnumTagMultiPayload();
    sub_20CEAD61C(0, &qword_27C8185C8, sub_20CEAFE1C, MEMORY[0x277CE14B8]);
    sub_20CEB0978();
    v129 = sub_20CEB00EC();
    v195 = v184;
    v196 = v129;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v195 = v187;
    v196 = OpaqueTypeConformance2;
    swift_getOpaqueTypeConformance2();
    v131 = v186;
    sub_20CEB2724();
    sub_20CEA9984(v115, v117, v110);

    sub_20CEA9984(v179, v180, v122);
  }

  else
  {
    *v180 = sub_20CEB2794();
    sub_20CEB2BE4();
    sub_20CEB2BD4();
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    sub_20CEA9864();
    v133 = *(v132 + 44);
    v195 = *(v174 + 16);
    swift_getKeyPath();
    v134 = v158;
    sub_20CEB07C4(v75, v158);
    v135 = (*(v156 + 80) + 16) & ~*(v156 + 80);
    v136 = swift_allocObject();
    sub_20CEB0834(v134, v136 + v135);
    sub_20CEB009C(0, &qword_281112688, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
    sub_20CEA9778();

    v137 = v180;
    sub_20CEB2984();

    v138 = sub_20CEB27A4();
    v139 = swift_getKeyPath();
    v140 = v184;
    v141 = &v137[*(v184 + 36)];
    *v141 = v139;
    v141[1] = v138;
    v142 = sub_20CEB00EC();
    v143 = v159;
    sub_20CEB28E4();
    sub_20CEB0918(v137, sub_20CEAFFF8);
    v195 = v140;
    v196 = v142;
    v144 = swift_getOpaqueTypeConformance2();
    v145 = v161;
    v146 = v187;
    sub_20CEB28B4();
    (*(v160 + 8))(v143, v146);
    v147 = v162;
    v148 = v189;
    (*(v162 + 16))(v185, v145, v189);
    swift_storeEnumTagMultiPayload();
    sub_20CEAD61C(0, &qword_27C8185C8, sub_20CEAFE1C, MEMORY[0x277CE14B8]);
    sub_20CEB0978();
    v195 = v146;
    v196 = v144;
    swift_getOpaqueTypeConformance2();
    v131 = v186;
    sub_20CEB2724();
    (*(v147 + 8))(v145, v148);
  }

  v149 = v191;
  v150 = v182;
  sub_20CEB0A00(v191, v182, sub_20CEAF90C);
  v151 = v188;
  sub_20CEB0A00(v131, v188, sub_20CEAFDFC);
  v152 = v190;
  sub_20CEB0A00(v150, v190, sub_20CEAF90C);
  sub_20CEAF89C();
  sub_20CEB0A00(v151, v152 + *(v153 + 48), sub_20CEAFDFC);
  sub_20CEB071C(v131, sub_20CEAFDFC);
  sub_20CEB071C(v149, sub_20CEAF90C);
  sub_20CEB071C(v151, sub_20CEAFDFC);
  sub_20CEB071C(v150, sub_20CEAF90C);
}

uint64_t sub_20CEAF6A4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  sub_20CEB2BF4();
  sub_20CEB2BE4();
  sub_20CEB2BD4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_20CE9C338();

  v5 = sub_20CEB2834();
  v7 = v6;
  v9 = v8;
  if (sub_20CEADEF8())
  {
    sub_20CEB2904();
  }

  v10 = sub_20CEB2804();
  v12 = v11;
  v14 = v13;
  v16 = v15;

  sub_20CEA9984(v5, v7, v9 & 1);

  *a2 = v10;
  *(a2 + 8) = v12;
  *(a2 + 16) = v14 & 1;
  *(a2 + 24) = v16;
  return result;
}

void sub_20CEAF808()
{
  if (!qword_27C818548)
  {
    sub_20CEAD61C(255, &qword_27C818550, sub_20CEAF89C, MEMORY[0x277CE14B8]);
    sub_20CEB019C();
    v0 = sub_20CEB2964();
    if (!v1)
    {
      atomic_store(v0, &qword_27C818548);
    }
  }
}

void sub_20CEAF89C()
{
  if (!qword_27C818558)
  {
    sub_20CEAF90C();
    sub_20CEAFDFC(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27C818558);
    }
  }
}

void sub_20CEAF90C()
{
  if (!qword_27C818560)
  {
    sub_20CEAF974();
    sub_20CEB2764();
    v0 = sub_20CEB2524();
    if (!v1)
    {
      atomic_store(v0, &qword_27C818560);
    }
  }
}

void sub_20CEAF974()
{
  if (!qword_27C818568)
  {
    sub_20CEAF9F4();
    sub_20CEAFB98(255, &qword_27C8185B0, &qword_27C8185B8, MEMORY[0x277CE0F78]);
    v0 = sub_20CEB2524();
    if (!v1)
    {
      atomic_store(v0, &qword_27C818568);
    }
  }
}

void sub_20CEAF9F4()
{
  if (!qword_27C818570)
  {
    sub_20CEAFF6C(255, &qword_27C818578, sub_20CEAFAE8, sub_20CEAFC04);
    sub_20CEAFAE8(255);
    sub_20CEAFC04();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27C818570);
    }
  }
}

void sub_20CEAFB08()
{
  if (!qword_27C818588)
  {
    sub_20CEAD61C(255, &qword_27C818590, MEMORY[0x277CE1060], MEMORY[0x277CE0860]);
    v0 = sub_20CEB2524();
    if (!v1)
    {
      atomic_store(v0, &qword_27C818588);
    }
  }
}

void sub_20CEAFB98(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (!*a2)
  {
    sub_20CEB009C(255, a3, a4, MEMORY[0x277D83D88]);
    v5 = sub_20CEB2754();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_20CEAFC04()
{
  result = qword_27C818598;
  if (!qword_27C818598)
  {
    sub_20CEAFAE8(255);
    sub_20CEAFC84();
    sub_20CEAFD8C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C818598);
  }

  return result;
}

unint64_t sub_20CEAFC84()
{
  result = qword_27C8185A0;
  if (!qword_27C8185A0)
  {
    sub_20CEAFB08();
    sub_20CEAFD04();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8185A0);
  }

  return result;
}

unint64_t sub_20CEAFD04()
{
  result = qword_27C8185A8;
  if (!qword_27C8185A8)
  {
    sub_20CEAD61C(255, &qword_27C818590, MEMORY[0x277CE1060], MEMORY[0x277CE0860]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8185A8);
  }

  return result;
}

unint64_t sub_20CEAFD8C()
{
  result = qword_281112790;
  if (!qword_281112790)
  {
    sub_20CEAFB98(255, &qword_281112788, &qword_281112770, MEMORY[0x277CE0AE0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281112790);
  }

  return result;
}

void sub_20CEAFE1C()
{
  if (!qword_27C8185D0)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27C8185D0);
    }
  }
}

void sub_20CEAFE78()
{
  if (!qword_27C8185D8)
  {
    sub_20CEAFF6C(255, &qword_27C8185E0, sub_20CEAFFF8, sub_20CEB00EC);
    sub_20CEAFFF8(255);
    sub_20CEB00EC();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27C8185D8);
    }
  }
}

void sub_20CEAFF6C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(void))
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

void sub_20CEB0018(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_20CEAFB98(255, &qword_281112788, &qword_281112770, MEMORY[0x277CE0AE0]);
    v4 = sub_20CEB2524();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_20CEB009C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_20CEB00EC()
{
  result = qword_27C8185F0;
  if (!qword_27C8185F0)
  {
    sub_20CEAFFF8(255);
    sub_20CEB077C(&qword_2811128A8, sub_20CEA9660);
    sub_20CEAFD8C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8185F0);
  }

  return result;
}

unint64_t sub_20CEB019C()
{
  result = qword_27C8185F8;
  if (!qword_27C8185F8)
  {
    sub_20CEAD61C(255, &qword_27C818550, sub_20CEAF89C, MEMORY[0x277CE14B8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8185F8);
  }

  return result;
}

void sub_20CEB0224()
{
  if (!qword_27C818600)
  {
    sub_20CEAF808();
    v0 = sub_20CEB2524();
    if (!v1)
    {
      atomic_store(v0, &qword_27C818600);
    }
  }
}

void sub_20CEB0284()
{
  if (!qword_27C818608)
  {
    sub_20CEAD61C(255, &qword_27C818550, sub_20CEAF89C, MEMORY[0x277CE14B8]);
    v0 = sub_20CEB2514();
    if (!v1)
    {
      atomic_store(v0, &qword_27C818608);
    }
  }
}

unint64_t sub_20CEB031C()
{
  result = qword_27C818610;
  if (!qword_27C818610)
  {
    sub_20CEB0224();
    sub_20CEB077C(&qword_27C818618, sub_20CEAF808);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C818610);
  }

  return result;
}

void sub_20CEB03CC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_20CEAD61C(255, &qword_27C8185C8, sub_20CEAFE1C, MEMORY[0x277CE14B8]);
    v7 = v6;
    sub_20CEAFE78();
    v9 = a3(a1, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_20CEB046C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_20CEB25B4();
  *a1 = result;
  return result;
}

uint64_t sub_20CEB0498(uint64_t *a1)
{
  v1 = *a1;

  return sub_20CEB25C4();
}

uint64_t sub_20CEB04C4(uint64_t a1)
{
  v2 = sub_20CEB2944();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_20CEB2574();
}

unint64_t sub_20CEB058C()
{
  result = qword_27C818628;
  if (!qword_27C818628)
  {
    sub_20CEAF974();
    sub_20CEAFF6C(255, &qword_27C818578, sub_20CEAFAE8, sub_20CEAFC04);
    sub_20CEAFAE8(255);
    sub_20CEAFC04();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_20CEB06AC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C818628);
  }

  return result;
}

unint64_t sub_20CEB06AC()
{
  result = qword_27C818630;
  if (!qword_27C818630)
  {
    sub_20CEAFB98(255, &qword_27C8185B0, &qword_27C8185B8, MEMORY[0x277CE0F78]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C818630);
  }

  return result;
}

uint64_t sub_20CEB071C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_20CEB077C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_20CEB07C4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MedicationsWidgetRectangularView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20CEB0828(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_20CEB0834(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MedicationsWidgetRectangularView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_20CEB0898@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(*(type metadata accessor for MedicationsWidgetRectangularView() - 8) + 80);

  return sub_20CEAF6A4(a1, a2);
}

uint64_t sub_20CEB0918(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_20CEB0978()
{
  result = qword_27C818640;
  if (!qword_27C818640)
  {
    sub_20CEAD61C(255, &qword_27C8185C8, sub_20CEAFE1C, MEMORY[0x277CE14B8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C818640);
  }

  return result;
}

uint64_t sub_20CEB0A00(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_20CEB0A68(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_20CEB0A78(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_20CEAD61C(0, a3, a4, MEMORY[0x277CDF458]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

void sub_20CEB0B0C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t type metadata accessor for MedicationsWidgetInlineView()
{
  result = qword_281112FF0;
  if (!qword_281112FF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20CEB0BD0()
{
  sub_20CEB0B0C(319, &qword_2811128B8, MEMORY[0x277CDFB98], MEMORY[0x277CDF468]);
  if (v0 <= 0x3F)
  {
    sub_20CEB0B0C(319, &qword_2811128C0, MEMORY[0x277CE3BA0], MEMORY[0x277CDF468]);
    if (v1 <= 0x3F)
    {
      type metadata accessor for MedicationsWidgetViewModel();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_20CEB0CE8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_20CEB2634();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20CEB0B0C(0, &qword_2811128D0, MEMORY[0x277CE3BA0], MEMORY[0x277CDF458]);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = (&v17 - v10);
  v12 = type metadata accessor for MedicationsWidgetInlineView();
  sub_20CE9FDAC(v1 + *(v12 + 20), v11);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_20CEB2A54();
    return (*(*(v13 - 8) + 32))(a1, v11, v13);
  }

  else
  {
    v15 = *v11;
    sub_20CEB2C64();
    v16 = sub_20CEB2774();
    sub_20CEB2444();

    sub_20CEB2624();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v7, v3);
  }
}

__n128 sub_20CEB0EFC@<Q0>(uint64_t a1@<X8>)
{
  sub_20CEB175C();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v6 = sub_20CEB26D4();
  *(v6 + 1) = 0;
  v6[16] = 1;
  sub_20CEB2BF4();
  sub_20CEB2BE4();
  sub_20CEB2BD4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_20CEB1A94();
  v8 = &v6[*(v7 + 44)];
  *v8 = sub_20CEB2654();
  *(v8 + 1) = 0;
  v8[16] = 1;
  sub_20CEB1AFC();
  sub_20CEB10AC(v1, &v8[*(v9 + 44)]);

  sub_20CEB29B4();
  sub_20CEB2554();
  sub_20CE9AC88(v6, a1);
  sub_20CEB1B94();
  v11 = a1 + *(v10 + 36);
  v12 = v15[5];
  *(v11 + 64) = v15[4];
  *(v11 + 80) = v12;
  *(v11 + 96) = v15[6];
  v13 = v15[1];
  *v11 = v15[0];
  *(v11 + 16) = v13;
  result = v15[3];
  *(v11 + 32) = v15[2];
  *(v11 + 48) = result;
  return result;
}

uint64_t sub_20CEB10AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v67 = a2;
  sub_20CEACAEC(0, &qword_281112740);
  v63 = *(v3 - 8);
  v64 = v3;
  v4 = *(v63 + 64);
  MEMORY[0x28223BE20](v3);
  v58 = &v58 - v5;
  sub_20CEB1988();
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v66 = &v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v65 = &v58 - v10;
  v11 = sub_20CEB2A54();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v58 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20CEACAEC(0, &qword_27C818670);
  v60 = v16;
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v58 - v19;
  sub_20CEB18F4();
  v22 = *(*(v21 - 8) + 64);
  v23 = MEMORY[0x28223BE20](v21 - 8);
  v62 = &v58 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v68 = &v58 - v25;
  sub_20CEB2BF4();
  v61 = sub_20CEB2BE4();
  sub_20CEB2BD4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_20CEB0CE8(v15);
  (*(v12 + 8))(v15, v11);
  v69 = sub_20CEB2934();
  v26 = MEMORY[0x277CE1088];
  v27 = MEMORY[0x277CE1078];
  sub_20CEB2894();

  v59 = a1;
  if (qword_281112628 != -1)
  {
    swift_once();
  }

  v69 = sub_20CEB2104();
  v70 = v28;
  sub_20CE9C338();
  v29 = sub_20CEB2834();
  v31 = v30;
  v33 = v32;
  v69 = v26;
  v70 = v27;
  v34 = 1;
  swift_getOpaqueTypeConformance2();
  v35 = v60;
  sub_20CEB28C4();
  sub_20CEA9984(v29, v31, v33 & 1);

  (*(v17 + 8))(v20, v35);
  v36 = *(v59 + *(type metadata accessor for MedicationsWidgetInlineView() + 24) + 16);
  v39 = *(v36 + 16);
  v37 = v36 + 16;
  v38 = v39;
  if (v39)
  {
    v40 = (v37 + 16 * v38);
    v41 = v40[1];
    v69 = *v40;
    v70 = v41;

    v42 = sub_20CEB2834();
    v44 = v43;
    v69 = v42;
    v70 = v43;
    v46 = v45 & 1;
    v71 = v45 & 1;
    v72 = v47;
    v48 = v58;
    sub_20CEB28B4();
    sub_20CEA9984(v42, v44, v46);

    v50 = v63;
    v49 = v64;
    v51 = v65;
    (*(v63 + 32))(v65, v48, v64);
    v34 = 0;
  }

  else
  {
    v49 = v64;
    v51 = v65;
    v50 = v63;
  }

  (*(v50 + 56))(v51, v34, 1, v49);
  v52 = v68;
  v53 = v62;
  sub_20CEB1BF4(v68, v62, sub_20CEB18F4);
  v54 = v66;
  sub_20CEB1BF4(v51, v66, sub_20CEB1988);
  v55 = v67;
  sub_20CEB1BF4(v53, v67, sub_20CEB18F4);
  sub_20CEB1884();
  sub_20CEB1BF4(v54, v55 + *(v56 + 48), sub_20CEB1988);
  sub_20CEB1C5C(v51, sub_20CEB1988);
  sub_20CEB1C5C(v52, sub_20CEB18F4);
  sub_20CEB1C5C(v54, sub_20CEB1988);
  sub_20CEB1C5C(v53, sub_20CEB18F4);
}

void sub_20CEB175C()
{
  if (!qword_27C818648)
  {
    sub_20CEB17F0();
    sub_20CEB1D6C(&qword_27C818688, sub_20CEB17F0);
    v0 = sub_20CEB2964();
    if (!v1)
    {
      atomic_store(v0, &qword_27C818648);
    }
  }
}

void sub_20CEB17F0()
{
  if (!qword_27C818650)
  {
    sub_20CEB0B0C(255, &qword_27C818658, sub_20CEB1884, MEMORY[0x277CE14B8]);
    sub_20CEB1A0C();
    v0 = sub_20CEB2954();
    if (!v1)
    {
      atomic_store(v0, &qword_27C818650);
    }
  }
}

void sub_20CEB1884()
{
  if (!qword_27C818660)
  {
    sub_20CEB18F4();
    sub_20CEB1988();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27C818660);
    }
  }
}

void sub_20CEB18F4()
{
  if (!qword_27C818668)
  {
    sub_20CEACAEC(255, &qword_27C818670);
    sub_20CEB2764();
    v0 = sub_20CEB2524();
    if (!v1)
    {
      atomic_store(v0, &qword_27C818668);
    }
  }
}

void sub_20CEB1988()
{
  if (!qword_27C818678)
  {
    sub_20CEACAEC(255, &qword_281112740);
    v0 = sub_20CEB2CE4();
    if (!v1)
    {
      atomic_store(v0, &qword_27C818678);
    }
  }
}

unint64_t sub_20CEB1A0C()
{
  result = qword_27C818680;
  if (!qword_27C818680)
  {
    sub_20CEB0B0C(255, &qword_27C818658, sub_20CEB1884, MEMORY[0x277CE14B8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C818680);
  }

  return result;
}

void sub_20CEB1A94()
{
  if (!qword_27C818690)
  {
    sub_20CEB17F0();
    v0 = sub_20CEB2514();
    if (!v1)
    {
      atomic_store(v0, &qword_27C818690);
    }
  }
}

void sub_20CEB1AFC()
{
  if (!qword_27C818698)
  {
    sub_20CEB0B0C(255, &qword_27C818658, sub_20CEB1884, MEMORY[0x277CE14B8]);
    v0 = sub_20CEB2514();
    if (!v1)
    {
      atomic_store(v0, &qword_27C818698);
    }
  }
}

void sub_20CEB1B94()
{
  if (!qword_27C8186A0)
  {
    sub_20CEB175C();
    v0 = sub_20CEB2524();
    if (!v1)
    {
      atomic_store(v0, &qword_27C8186A0);
    }
  }
}

uint64_t sub_20CEB1BF4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_20CEB1C5C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_20CEB1CBC()
{
  result = qword_27C8186A8;
  if (!qword_27C8186A8)
  {
    sub_20CEB1B94();
    sub_20CEB1D6C(&unk_27C8186B0, sub_20CEB175C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8186A8);
  }

  return result;
}

uint64_t sub_20CEB1D6C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for MedicationsWidgetEntry()
{
  result = qword_281112CB0;
  if (!qword_281112CB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_20CEB1E28()
{
  result = sub_20CEB2274();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for MedicationsWidgetViewModel();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_20CEB1EAC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_20CEB2274();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_20CEB1F14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = v2 + *(a1 + 20);
  v5 = dword_20CEB3D50[*(v4 + *(type metadata accessor for MedicationsWidgetViewModel() + 28))];
  sub_20CEB2AC4();
  v6 = sub_20CEB2AD4();
  v7 = *(*(v6 - 8) + 56);

  return v7(a2, 0, 1, v6);
}