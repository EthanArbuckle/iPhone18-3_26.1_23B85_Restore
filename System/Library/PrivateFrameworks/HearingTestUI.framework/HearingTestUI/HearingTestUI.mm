uint64_t sub_20CD72558(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_20CE12714();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_20CD72604(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_20CE12714();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_20CD726A8(uint64_t a1, uint64_t a2)
{
  sub_20CD7B6A4();
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 3)
  {
    return v5 - 2;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_20CD72714(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 2);
  }

  else
  {
    v5 = 0;
  }

  sub_20CD7B6A4();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

void *sub_20CD727B8@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_20CD727F0@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_20CE13954();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_20CD7281C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_20CD7285C()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20CD72894()
{
  v1 = sub_20CE12714();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 56) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 2);
  swift_unknownObjectRelease();
  v7 = *(v0 + 5);

  v8 = *(v0 + 6);

  (*(v2 + 8))(&v0[v4], v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_20CD72978()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20CD729C4()
{
  v1 = v0[4];

  v2 = v0[6];

  v3 = v0[8];

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_20CD72A0C()
{
  MEMORY[0x20F3141E0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20CD72A70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 104);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    sub_20CD8CBD4(0, &qword_27C812408, MEMORY[0x277CDFA28], MEMORY[0x277CDF468]);
    v9 = v8;
    v10 = *(*(v8 - 8) + 48);
    v11 = a1 + *(a3 + 20);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_20CD72B50(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 104) = (a2 - 1);
  }

  else
  {
    sub_20CD8CBD4(0, &qword_27C812408, MEMORY[0x277CDFA28], MEMORY[0x277CDF468]);
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 20);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_20CD72D30(uint64_t a1)
{
  sub_20CD9273C(0, &qword_27C812590, sub_20CD923D0, MEMORY[0x277CDE470]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_20CD72DBC(uint64_t a1, uint64_t a2, uint64_t a3)
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
    sub_20CD93AF0(0, &qword_27C812598, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
    v9 = v8;
    v10 = *(*(v8 - 8) + 48);
    v11 = a1 + *(a3 + 20);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_20CD72E9C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    sub_20CD93AF0(0, &qword_27C812598, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 20);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_20CD72F74@<X0>(_BYTE *a1@<X8>)
{
  result = sub_20CE13094();
  *a1 = result;
  return result;
}

uint64_t sub_20CD72FC8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC13HearingTestUI23NoResultsViewController_stepStartTime;
  swift_beginAccess();
  return sub_20CD7DC78(v3 + v4, a2);
}

uint64_t sub_20CD7302C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 104);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    sub_20CD9AFE8(0, &qword_27C812408, MEMORY[0x277CDFA28], MEMORY[0x277CDF468]);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      sub_20CD9AFE8(0, &qword_27C812598, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
      v14 = v13;
      v15 = *(*(v13 - 8) + 48);
      v16 = a1 + *(a3 + 24);

      return v15(v16, a2, v14);
    }
  }
}

uint64_t sub_20CD731B0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 104) = (a2 - 1);
  }

  else
  {
    sub_20CD9AFE8(0, &qword_27C812408, MEMORY[0x277CDFA28], MEMORY[0x277CDF468]);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      sub_20CD9AFE8(0, &qword_27C812598, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
      v14 = v13;
      v15 = *(*(v13 - 8) + 56);
      v16 = v5 + *(a4 + 24);

      return v15(v16, a2, a2, v14);
    }
  }

  return result;
}

uint64_t sub_20CD73384()
{
  MEMORY[0x20F3141E0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20CD733BC()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 25, 7);
}

uint64_t sub_20CD733F4()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20CD7342C()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20CD73498()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20CD734D0()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20CD73508()
{
  sub_20CDA4968();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_20CD73590()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20CD735EC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_20CDAC624(v4);
}

uint64_t sub_20CD73618()
{
  v1 = sub_20CE12F24();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_20CD736DC()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

unsigned __int8 *sub_20CD73718(unsigned __int8 *a1, uint64_t *a2)
{
  v2 = *a2;
  v4 = *a1;
  return sub_20CDAC1CC(&v4);
}

uint64_t sub_20CD7375C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_20CD7379C()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20CD737D4(uint64_t a1, uint64_t a2, uint64_t a3)
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
    sub_20CDB1258(0, &qword_27C812408, MEMORY[0x277CDFA28], MEMORY[0x277CDF468]);
    v9 = v8;
    v10 = *(*(v8 - 8) + 48);
    v11 = a1 + *(a3 + 20);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_20CD738B4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    sub_20CDB1258(0, &qword_27C812408, MEMORY[0x277CDFA28], MEMORY[0x277CDF468]);
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 20);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_20CD739D0()
{
  v1 = (type metadata accessor for ClassificationDescriptionView() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = v0 + v3;
  v6 = *(v0 + v3 + 8);

  v7 = *(v0 + v3 + 24);

  v8 = *(v0 + v3 + 40);

  v9 = v1[7];
  sub_20CDB1258(0, &qword_27C812390, MEMORY[0x277CDFA28], MEMORY[0x277CDF458]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = sub_20CE12FA4();
    (*(*(v10 - 8) + 8))(v5 + v9, v10);
  }

  else
  {
    v11 = *(v5 + v9);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_20CD73B20()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20CD73B58()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20CD73B90()
{
  MEMORY[0x20F3141E0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20CD73BD4()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20CD73C0C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20CD73CA8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;

  return sub_20CDB5EB0(v2, v3);
}

uint64_t sub_20CD73CEC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;

  return sub_20CDB5D50(v2, v3);
}

uint64_t sub_20CD73D2C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC13HearingTestUI29HearingTestStepViewController_stepStartTime;
  swift_beginAccess();
  return sub_20CD7DC78(v3 + v4, a2);
}

uint64_t sub_20CD73D8C()
{
  MEMORY[0x20F3141E0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20CD73DC4()
{
  MEMORY[0x20F3141E0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20CD73DFC()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20CD73E34()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_20CD73E7C()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20CD73EB4()
{

  return MEMORY[0x2821FE8E8](v0, 25, 7);
}

uint64_t sub_20CD73F00@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  *a2 = result;
  return result;
}

uint64_t sub_20CD73F5C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_20CD73FB8()
{
  MEMORY[0x20F3141E0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20CD73FF0()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20CD74028()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_20CD740D0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_20CE130B4();
  *a1 = result;
  return result;
}

uint64_t sub_20CD740FC(uint64_t *a1)
{
  v1 = *a1;

  return sub_20CE130C4();
}

uint64_t sub_20CD74150@<X0>(void *a1@<X8>)
{
  result = sub_20CE13074();
  *a1 = v3;
  return result;
}

uint64_t sub_20CD741A4(uint64_t a1, uint64_t a2)
{
  sub_20CDCFFA4(0, &qword_27C813038, sub_20CDCFB0C, sub_20CDCFD98);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_20CD74238(uint64_t a1, uint64_t a2)
{
  sub_20CDCFE64();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

id sub_20CD742A0@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 rightEarMetrics];
  *a2 = result;
  return result;
}

id sub_20CD742DC@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 leftEarMetrics];
  *a2 = result;
  return result;
}

uint64_t sub_20CD74618()
{
  MEMORY[0x20F3141E0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20CD74650()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_20CD74690()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20CD746C8()
{
  if (MEMORY[0x277D85020])
  {
    return type metadata accessor for ResultsProcessor();
  }

  else
  {
    return MEMORY[0x277D84F78] + 8;
  }
}

uint64_t sub_20CD74704()
{
  MEMORY[0x20F3141E0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20CD74740()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20CD74778()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20CD747B4()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20CD74818(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ClassificationHighlightView.Model(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    sub_20CDED9DC(0, &qword_27C812408, MEMORY[0x277CDFA28], MEMORY[0x277CDF468]);
    v11 = v10;
    v12 = *(*(v10 - 8) + 48);
    v13 = a1 + *(a3 + 20);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_20CD74938(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for ClassificationHighlightView.Model(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    sub_20CDED9DC(0, &qword_27C812408, MEMORY[0x277CDFA28], MEMORY[0x277CDF468]);
    v13 = v12;
    v14 = *(*(v12 - 8) + 56);
    v15 = a1 + *(a4 + 20);

    return v14(v15, a2, a2, v13);
  }
}

uint64_t sub_20CD74A64(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_20CE12334();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_20CD74B10(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_20CE12334();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_20CD74BC4()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_20CD74C08()
{
  MEMORY[0x20F3141E0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20CD74C40@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC13HearingTestUI25HTUIResultsViewController_stepStartTime;
  swift_beginAccess();
  return sub_20CD7DC78(v3 + v4, a2);
}

uint64_t sub_20CD74CB0()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20CD74CE8()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20CD74D20()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20CD74E4C()
{

  return MEMORY[0x2821FE8E8](v0, 25, 7);
}

uint64_t sub_20CD74E88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_20CE12644();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 28));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_20CD74F44(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_20CE12644();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 28)) = (a2 - 1);
  }

  return result;
}

void sub_20CD74FFC()
{
  if (MEMORY[0x277D85020])
  {
    sub_20CDFF32C(0, &qword_27C812EB8, &type metadata for ResultsProcessor.Empty, sub_20CDFCB50);
  }
}

void sub_20CD7505C()
{
  if (MEMORY[0x277D85020])
  {
    sub_20CDFF32C(0, &qword_27C8131D8, &type metadata for ResultsProcessor.Partial, sub_20CDFCB50);
  }
}

void sub_20CD750BC()
{
  if (MEMORY[0x277D85020])
  {
    sub_20CDFF32C(0, &qword_27C8131D0, &type metadata for ResultsProcessor.Complete, sub_20CDFCB50);
  }
}

uint64_t sub_20CD75120(unsigned __int8 *a1, uint64_t *a2)
{
  v2 = *a2;
  v4 = *a1;
  return sub_20CE0006C(&v4);
}

uint64_t sub_20CD7515C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_20CE0053C(v4);
}

uint64_t sub_20CD7518C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_20CDAC38C(v4);
}

uint64_t sub_20CD751B8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_20CE00740();
  *a2 = result;
  return result;
}

uint64_t sub_20CD75238()
{
  sub_20CE06E60(0, &unk_27C813720, &qword_27C812CB0, 0x277CBEB70, MEMORY[0x277D11BF0]);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, ((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

uint64_t sub_20CD75308()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 25, 7);
}

uint64_t sub_20CD75340()
{
  MEMORY[0x20F3141E0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20CD754A8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_20CE13054();
  *a1 = result;
  return result;
}

uint64_t sub_20CD754D4(uint64_t *a1)
{
  v1 = *a1;

  return sub_20CE13064();
}

uint64_t sub_20CD75500()
{
  v1 = (type metadata accessor for LabelledProgressView() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = *(v0 + v3);

  v6 = v1[7];
  sub_20CE0D274(0, &qword_27C813818, sub_20CDA1354, MEMORY[0x277D839F8], MEMORY[0x277CDF5B0]);
  v8 = v7;
  v9 = *(*(v7 - 8) + 8);
  v9(v0 + v3 + v6, v7);
  v9(v0 + v3 + v1[8], v8);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_20CD7564C(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    sub_20CE0D274(0, &qword_27C813818, sub_20CDA1354, MEMORY[0x277D839F8], MEMORY[0x277CDF5B0]);
    v9 = v8;
    v10 = *(*(v8 - 8) + 48);
    v11 = a1 + *(a3 + 20);

    return v10(v11, a2, v9);
  }
}

void *sub_20CD75734(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    sub_20CE0D274(0, &qword_27C813818, sub_20CDA1354, MEMORY[0x277D839F8], MEMORY[0x277CDF5B0]);
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 20);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_20CD75924(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

int64x2_t __vfx_script_animationStaticBg2_graph_012A4375_B824_4173_85D5_817D07A2F0C9()
{
  arguments_buffer = vfx_script_get_arguments_buffer();
  result = vdupq_n_s64(0x1680uLL);
  **(arguments_buffer + 16) = result;
  return result;
}

uint64_t sub_20CD75964()
{
  sub_20CE13C14();
  v1 = v0;
  result = sub_20CE13C04();
  if (v1 > v3)
  {
    __break(1u);
  }

  else
  {

    return sub_20CD7CF50(result, v1, v3);
  }

  return result;
}

uint64_t sub_20CD759B0()
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_20CDD377C();
    swift_unknownObjectRelease();
  }

  if ((*(v0 + OBJC_IVAR____TtC13HearingTestUI14SessionManager__sessionIsActive) & 1) == 0)
  {
    *(v0 + OBJC_IVAR____TtC13HearingTestUI14SessionManager__sessionIsActive) = 1;
    sub_20CD76714();
  }

  return sub_20CD77460();
}

uint64_t sub_20CD75A38()
{
  v1 = v0;
  v2 = *v0;
  if (qword_27C811D00 != -1)
  {
    swift_once();
  }

  v3 = sub_20CE12CB4();
  __swift_project_value_buffer(v3, qword_27C817768);
  v4 = sub_20CE12C94();
  v5 = sub_20CE13CD4();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v12 = v7;
    *v6 = 136446210;
    v8 = sub_20CE14414();
    v10 = sub_20CD96DCC(v8, v9, &v12);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_20CD70000, v4, v5, "[%{public}s] Pausing hearing test.", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    MEMORY[0x20F314110](v7, -1, -1);
    MEMORY[0x20F314110](v6, -1, -1);
  }

  result = sub_20CD776F4();
  if (*(v1 + OBJC_IVAR____TtC13HearingTestUI14SessionManager__sessionIsActive) == 1)
  {
    *(v1 + OBJC_IVAR____TtC13HearingTestUI14SessionManager__sessionIsActive) = 0;

    return sub_20CD770DC();
  }

  return result;
}

uint64_t sub_20CD75BFC()
{
  v1 = v0;
  v2 = *v0;
  if (qword_27C811D00 != -1)
  {
    swift_once();
  }

  v3 = sub_20CE12CB4();
  __swift_project_value_buffer(v3, qword_27C817768);
  v4 = sub_20CE12C94();
  v5 = sub_20CE13CD4();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v12 = v7;
    *v6 = 136446210;
    v8 = sub_20CE14414();
    v10 = sub_20CD96DCC(v8, v9, &v12);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_20CD70000, v4, v5, "[%{public}s] Resuming hearing test.", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    MEMORY[0x20F314110](v7, -1, -1);
    MEMORY[0x20F314110](v6, -1, -1);
  }

  if ((*(v1 + OBJC_IVAR____TtC13HearingTestUI14SessionManager__sessionIsActive) & 1) == 0)
  {
    *(v1 + OBJC_IVAR____TtC13HearingTestUI14SessionManager__sessionIsActive) = 1;
    sub_20CD76714();
  }

  return sub_20CD77460();
}

uint64_t sub_20CD75DC0(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  sub_20CE13B84();
  sub_20CE13B74();
  sub_20CE13B24();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  a4(v5);
}

void sub_20CD75E84(int a1)
{
  v2 = v1;
  v65 = a1;
  v61 = *v1;
  sub_20CD7BD14(0, &qword_27C811EA0, MEMORY[0x277D85720]);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v68 = &v59 - v5;
  v6 = sub_20CE12714();
  v62 = *(v6 - 8);
  v63 = v6;
  v7 = *(v62 + 64);
  MEMORY[0x28223BE20](v6);
  v60 = &v59 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20CD7BD14(0, &qword_27C811EE0, MEMORY[0x277D12C38]);
  v64 = *(v9 - 8);
  v10 = *(v64 + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v66 = &v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v67 = &v59 - v12;
  sub_20CD7BD14(0, qword_281111628, type metadata accessor for SessionManager.PlayState);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v59 - v15;
  v17 = type metadata accessor for SessionManager.PlayState(0);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v59 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v24 = &v59 - v23;
  v25 = OBJC_IVAR____TtC13HearingTestUI14SessionManager_playState;
  swift_beginAccess();
  sub_20CD7CA30(v2 + v25, v16, qword_281111628, type metadata accessor for SessionManager.PlayState);
  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {
    sub_20CD7CC30(v16, qword_281111628, type metadata accessor for SessionManager.PlayState);
    if (qword_27C811D00 != -1)
    {
      swift_once();
    }

    v26 = sub_20CE12CB4();
    __swift_project_value_buffer(v26, qword_27C817768);
    v27 = sub_20CE12C94();
    v28 = sub_20CE13CD4();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v69 = v30;
      *v29 = 136446466;
      v31 = sub_20CE14414();
      v33 = sub_20CD96DCC(v31, v32, &v69);

      *(v29 + 4) = v33;
      *(v29 + 12) = 2080;
      *(v29 + 14) = sub_20CD96DCC(0xD000000000000018, 0x800000020CE1B130, &v69);
      _os_log_impl(&dword_20CD70000, v27, v28, "[%{public}s] %s called when no tones are playing.", v29, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x20F314110](v30, -1, -1);
      MEMORY[0x20F314110](v29, -1, -1);
    }
  }

  else
  {
    sub_20CD7C968(v16, v24, type metadata accessor for SessionManager.PlayState);
    if (qword_27C811D00 != -1)
    {
      swift_once();
    }

    v34 = sub_20CE12CB4();
    __swift_project_value_buffer(v34, qword_27C817768);
    sub_20CD7CC94(v24, v22, type metadata accessor for SessionManager.PlayState);
    v35 = sub_20CE12C94();
    v36 = sub_20CE13CD4();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      v69 = v59;
      *v37 = 136446978;
      v38 = sub_20CE14414();
      v40 = sub_20CD96DCC(v38, v39, &v69);

      *(v37 + 4) = v40;
      *(v37 + 12) = 1024;
      *(v37 + 14) = 45;
      *(v37 + 18) = 2080;
      v41 = &v22[*(v17 + 20)];
      v42 = sub_20CDE9430();
      v44 = v43;
      sub_20CD7C9D0(v22, type metadata accessor for SessionManager.PlayState);
      v45 = sub_20CD96DCC(v42, v44, &v69);

      *(v37 + 20) = v45;
      *(v37 + 28) = 1024;
      *(v37 + 30) = v65 & 1;
      _os_log_impl(&dword_20CD70000, v35, v36, "[%{public}s] %-*s Registering %{BOOL}d response.", v37, 0x22u);
      v46 = v59;
      swift_arrayDestroy();
      MEMORY[0x20F314110](v46, -1, -1);
      MEMORY[0x20F314110](v37, -1, -1);
    }

    else
    {

      sub_20CD7C9D0(v22, type metadata accessor for SessionManager.PlayState);
    }

    sub_20CD776F4();
    (*(v62 + 16))(v60, &v24[*(v17 + 20)], v63);
    v47 = v67;
    sub_20CE12624();
    v48 = sub_20CE12634();
    (*(*(v48 - 8) + 56))(v47, 0, 1, v48);
    v49 = sub_20CE13BB4();
    v50 = v68;
    (*(*(v49 - 8) + 56))(v68, 1, 1, v49);
    v51 = MEMORY[0x277D12C38];
    v52 = v66;
    sub_20CD7CA30(v47, v66, &qword_27C811EE0, MEMORY[0x277D12C38]);
    sub_20CE13B84();

    v53 = sub_20CE13B74();
    v54 = (*(v64 + 80) + 40) & ~*(v64 + 80);
    v55 = swift_allocObject();
    v56 = MEMORY[0x277D85700];
    v55[2] = v53;
    v55[3] = v56;
    v55[4] = v2;
    sub_20CD7CA9C(v52, v55 + v54);
    v57 = sub_20CDC37D0(0, 0, v50, &unk_20CE15D88, v55);
    sub_20CD7CC30(v47, &qword_27C811EE0, v51);
    sub_20CD7C9D0(v24, type metadata accessor for SessionManager.PlayState);
    v58 = *(v2 + OBJC_IVAR____TtC13HearingTestUI14SessionManager_continueTestTask);
    *(v2 + OBJC_IVAR____TtC13HearingTestUI14SessionManager_continueTestTask) = v57;
  }
}

uint64_t sub_20CD76714()
{
  v1 = v0;
  v2 = *v0;
  if (qword_27C811D00 != -1)
  {
    swift_once();
  }

  v3 = sub_20CE12CB4();
  __swift_project_value_buffer(v3, qword_27C817768);
  v4 = sub_20CE12C94();
  v5 = sub_20CE13CD4();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v17 = v7;
    *v6 = 136446466;
    v8 = sub_20CE14414();
    v10 = sub_20CD96DCC(v8, v9, &v17);

    *(v6 + 4) = v10;
    *(v6 + 12) = 2080;
    *(v6 + 14) = sub_20CD96DCC(0xD000000000000013, 0x800000020CE1B110, &v17);
    _os_log_impl(&dword_20CD70000, v4, v5, "[%{public}s] %s called.", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F314110](v7, -1, -1);
    MEMORY[0x20F314110](v6, -1, -1);
  }

  v11 = v1[7];
  v12 = v1[8];
  __swift_project_boxed_opaque_existential_1(v1 + 4, v11);
  v13 = swift_allocObject();
  swift_weakInit();
  v14 = swift_allocObject();
  *(v14 + 16) = v13;
  *(v14 + 24) = v2;
  v15 = *(v12 + 8);

  v15(sub_20CD7CC8C, v14, v11, v12);
}

void sub_20CD76974(uint64_t a1)
{
  v2 = sub_20CE12894();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20]();
  v6 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  if (!swift_weakLoadStrong())
  {
    return;
  }

  (*(v3 + 16))(v6, a1, v2);
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 == *MEMORY[0x277D12CC0])
  {
    if (qword_27C811D00 != -1)
    {
      swift_once();
    }

    v8 = sub_20CE12CB4();
    __swift_project_value_buffer(v8, qword_27C817768);
    v9 = sub_20CE12C94();
    v10 = sub_20CE13CC4();
    if (!os_log_type_enabled(v9, v10))
    {
      goto LABEL_23;
    }

    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v47 = v12;
    *v11 = 136446210;
    v13 = sub_20CE14414();
    v15 = sub_20CD96DCC(v13, v14, &v47);

    *(v11 + 4) = v15;
    v16 = "[%{public}s] Received session start failed. No attempt to recover";
    goto LABEL_22;
  }

  if (v7 == *MEMORY[0x277D12CB8])
  {
    if (qword_27C811D00 != -1)
    {
      swift_once();
    }

    v17 = sub_20CE12CB4();
    __swift_project_value_buffer(v17, qword_27C817768);
    v9 = sub_20CE12C94();
    v10 = sub_20CE13CC4();
    if (!os_log_type_enabled(v9, v10))
    {
      goto LABEL_23;
    }

    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v47 = v12;
    *v11 = 136446210;
    v18 = sub_20CE14414();
    v20 = sub_20CD96DCC(v18, v19, &v47);

    *(v11 + 4) = v20;
    v16 = "[%{public}s] Received session stop failed. No attempt to recover";
    goto LABEL_22;
  }

  if (v7 == *MEMORY[0x277D12CC8])
  {
    if (qword_27C811D00 != -1)
    {
      swift_once();
    }

    v21 = sub_20CE12CB4();
    __swift_project_value_buffer(v21, qword_27C817768);
    v9 = sub_20CE12C94();
    v10 = sub_20CE13CD4();
    if (!os_log_type_enabled(v9, v10))
    {
      goto LABEL_23;
    }

    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v47 = v12;
    *v11 = 136446210;
    v22 = sub_20CE14414();
    v24 = sub_20CD96DCC(v22, v23, &v47);

    *(v11 + 4) = v24;
    v16 = "[%{public}s] Received breaking audio interruption.";
    goto LABEL_22;
  }

  if (v7 != *MEMORY[0x277D12CD0])
  {
    if (qword_27C811D00 != -1)
    {
      swift_once();
    }

    v37 = sub_20CE12CB4();
    __swift_project_value_buffer(v37, qword_27C817768);
    v38 = sub_20CE12C94();
    v39 = sub_20CE13CC4();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v47 = v46;
      *v40 = 136446210;
      v41 = sub_20CE14414();
      v43 = sub_20CD96DCC(v41, v42, &v47);

      *(v40 + 4) = v43;
      _os_log_impl(&dword_20CD70000, v38, v39, "[%{public}s] Received unknown interruption type in first-party code.", v40, 0xCu);
      v44 = v46;
      __swift_destroy_boxed_opaque_existential_1Tm(v46);
      MEMORY[0x20F314110](v44, -1, -1);
      MEMORY[0x20F314110](v40, -1, -1);
    }

    (*(v3 + 8))(v6, v2);
    goto LABEL_24;
  }

  if (qword_27C811D00 != -1)
  {
    swift_once();
  }

  v25 = sub_20CE12CB4();
  __swift_project_value_buffer(v25, qword_27C817768);
  v9 = sub_20CE12C94();
  v10 = sub_20CE13CD4();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v47 = v12;
    *v11 = 136446210;
    v26 = sub_20CE14414();
    v28 = sub_20CD96DCC(v26, v27, &v47);

    *(v11 + 4) = v28;
    v16 = "[%{public}s] Received non-breaking audio interruption.";
LABEL_22:
    _os_log_impl(&dword_20CD70000, v9, v10, v16, v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v12);
    MEMORY[0x20F314110](v12, -1, -1);
    MEMORY[0x20F314110](v11, -1, -1);
  }

LABEL_23:

LABEL_24:
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_20CDD4870();

    swift_unknownObjectRelease();
  }

  else
  {
    if (qword_27C811D00 != -1)
    {
      swift_once();
    }

    v29 = sub_20CE12CB4();
    __swift_project_value_buffer(v29, qword_27C817768);
    v30 = sub_20CE12C94();
    v31 = sub_20CE13CC4();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v47 = v33;
      *v32 = 136446210;
      v34 = sub_20CE14414();
      v36 = sub_20CD96DCC(v34, v35, &v47);

      *(v32 + 4) = v36;
      _os_log_impl(&dword_20CD70000, v30, v31, "[%{public}s] Received audio interruption but no delegate to handle it", v32, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v33);
      MEMORY[0x20F314110](v33, -1, -1);
      MEMORY[0x20F314110](v32, -1, -1);
    }
  }
}

uint64_t sub_20CD770DC()
{
  v1 = v0;
  v2 = *v0;
  if (qword_27C811D00 != -1)
  {
    swift_once();
  }

  v3 = sub_20CE12CB4();
  __swift_project_value_buffer(v3, qword_27C817768);
  v4 = sub_20CE12C94();
  v5 = sub_20CE13CD4();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v15 = v7;
    *v6 = 136446466;
    v8 = sub_20CE14414();
    v10 = sub_20CD96DCC(v8, v9, &v15);

    *(v6 + 4) = v10;
    *(v6 + 12) = 2080;
    *(v6 + 14) = sub_20CD96DCC(0xD000000000000012, 0x800000020CE1B150, &v15);
    _os_log_impl(&dword_20CD70000, v4, v5, "[%{public}s] %s called.", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F314110](v7, -1, -1);
    MEMORY[0x20F314110](v6, -1, -1);
  }

  v11 = v1[7];
  v12 = v1[8];
  __swift_project_boxed_opaque_existential_1(v1 + 4, v11);
  v13 = swift_allocObject();
  *(v13 + 16) = v2;
  (*(v12 + 16))(sub_20CD7CF48, v13, v11, v12);
}

void sub_20CD77308()
{
  if (qword_27C811D00 != -1)
  {
    swift_once();
  }

  v0 = sub_20CE12CB4();
  __swift_project_value_buffer(v0, qword_27C817768);
  oslog = sub_20CE12C94();
  v1 = sub_20CE13CC4();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v8 = v3;
    *v2 = 136446210;
    v4 = sub_20CE14414();
    v6 = sub_20CD96DCC(v4, v5, &v8);

    *(v2 + 4) = v6;
    _os_log_impl(&dword_20CD70000, oslog, v1, "[%{public}s] TonePlayer errored on session stop. Ignoring.", v2, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v3);
    MEMORY[0x20F314110](v3, -1, -1);
    MEMORY[0x20F314110](v2, -1, -1);
  }
}

uint64_t sub_20CD77460()
{
  v1 = v0;
  sub_20CD7BD14(0, &qword_27C811EA0, MEMORY[0x277D85720]);
  v3 = (*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (MEMORY[0x28223BE20])();
  v5 = &v23 - v4;
  v6 = MEMORY[0x277D12C38];
  sub_20CD7BD14(0, &qword_27C811EE0, MEMORY[0x277D12C38]);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = (MEMORY[0x28223BE20])();
  v11 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v23 - v12;
  v14 = sub_20CE12634();
  (*(*(v14 - 8) + 56))(v13, 1, 1, v14);
  v15 = sub_20CE13BB4();
  (*(*(v15 - 8) + 56))(v5, 1, 1, v15);
  sub_20CD7CA30(v13, v11, &qword_27C811EE0, v6);
  sub_20CE13B84();

  v16 = sub_20CE13B74();
  v17 = (*(v8 + 80) + 40) & ~*(v8 + 80);
  v18 = swift_allocObject();
  v19 = MEMORY[0x277D85700];
  v18[2] = v16;
  v18[3] = v19;
  v18[4] = v1;
  sub_20CD7CA9C(v11, v18 + v17);
  v20 = sub_20CDC37D0(0, 0, v5, &unk_20CE15D80, v18);
  sub_20CD7CC30(v13, &qword_27C811EE0, v6);
  v21 = *(v1 + OBJC_IVAR____TtC13HearingTestUI14SessionManager_continueTestTask);
  *(v1 + OBJC_IVAR____TtC13HearingTestUI14SessionManager_continueTestTask) = v20;
}

uint64_t sub_20CD776F4()
{
  v1 = type metadata accessor for SessionManager.PlayState(0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v20[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_20CD7BD14(0, qword_281111628, type metadata accessor for SessionManager.PlayState);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v10 = &v20[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v8);
  v12 = &v20[-v11];
  v13 = OBJC_IVAR____TtC13HearingTestUI14SessionManager_playState;
  swift_beginAccess();
  sub_20CD7CA30(v0 + v13, v12, qword_281111628, type metadata accessor for SessionManager.PlayState);
  if ((*(v2 + 48))(v12, 1, v1))
  {
    sub_20CD7CC30(v12, qword_281111628, type metadata accessor for SessionManager.PlayState);
  }

  else
  {
    sub_20CD7CC94(v12, v5, type metadata accessor for SessionManager.PlayState);
    sub_20CD7CC30(v12, qword_281111628, type metadata accessor for SessionManager.PlayState);
    v14 = *v5;

    sub_20CD7C9D0(v5, type metadata accessor for SessionManager.PlayState);
    sub_20CD7B62C();
    sub_20CE13BC4();
  }

  (*(v2 + 56))(v10, 1, 1, v1);
  swift_beginAccess();
  sub_20CD7C8E8(v10, v0 + v13);
  swift_endAccess();
  v15 = OBJC_IVAR____TtC13HearingTestUI14SessionManager_continueTestTask;
  if (*(v0 + OBJC_IVAR____TtC13HearingTestUI14SessionManager_continueTestTask))
  {
    sub_20CD7B62C();

    sub_20CE13BC4();

    v16 = *(v0 + v15);
  }

  *(v0 + v15) = 0;

  v17 = v0[7];
  v18 = v0[8];
  __swift_project_boxed_opaque_existential_1(v0 + 4, v17);
  return (*(v18 + 32))(v17, v18);
}

uint64_t sub_20CD77A10(uint64_t a1)
{
  v2 = v1;
  v81 = a1;
  v3 = *v1;
  v79 = sub_20CE12714();
  v89 = *(v79 - 8);
  v4 = *(v89 + 64);
  v5 = MEMORY[0x28223BE20](v79);
  v88 = &v73 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = v6;
  MEMORY[0x28223BE20](v5);
  v84 = &v73 - v7;
  sub_20CD7BD14(0, &qword_27C811EA0, MEMORY[0x277D85720]);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v73 - v10;
  sub_20CD7BD14(0, qword_281111628, type metadata accessor for SessionManager.PlayState);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v86 = (&v73 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v14);
  v17 = &v73 - v16;
  v18 = type metadata accessor for SessionManager.PlayState(0);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v22 = (&v73 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = OBJC_IVAR____TtC13HearingTestUI14SessionManager_playState;
  swift_beginAccess();
  v82 = v23;
  sub_20CD7CA30(v2 + v23, v17, qword_281111628, type metadata accessor for SessionManager.PlayState);
  v80 = v19;
  v24 = *(v19 + 48);
  v83 = v18;
  v25 = v24(v17, 1, v18);
  v87 = v3;
  if (v25 == 1)
  {
    sub_20CD7CC30(v17, qword_281111628, type metadata accessor for SessionManager.PlayState);
  }

  else
  {
    sub_20CD7C968(v17, v22, type metadata accessor for SessionManager.PlayState);
    if (qword_27C811D00 != -1)
    {
      swift_once();
    }

    v26 = sub_20CE12CB4();
    __swift_project_value_buffer(v26, qword_27C817768);
    v27 = sub_20CE12C94();
    v28 = sub_20CE13CC4();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v90[0] = v30;
      *v29 = 136446466;
      v31 = sub_20CE14414();
      v33 = v11;
      v34 = sub_20CD96DCC(v31, v32, v90);

      *(v29 + 4) = v34;
      v11 = v33;
      *(v29 + 12) = 2080;
      *(v29 + 14) = sub_20CD96DCC(0x656C756465686373, 0xEF293A656E6F7428, v90);
      _os_log_impl(&dword_20CD70000, v27, v28, "[%{public}s] %s is being called while a playState still exists.", v29, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x20F314110](v30, -1, -1);
      MEMORY[0x20F314110](v29, -1, -1);
    }

    v35 = *v22;
    sub_20CD7B62C();
    sub_20CE13BC4();
    sub_20CD7C9D0(v22, type metadata accessor for SessionManager.PlayState);
  }

  v77 = v11;
  v36 = sub_20CE13BB4();
  (*(*(v36 - 8) + 56))(v11, 1, 1, v36);
  v37 = swift_allocObject();
  swift_weakInit();
  v38 = *(v2 + OBJC_IVAR____TtC13HearingTestUI14SessionManager_tonePlayDelay + 8);
  v76 = *(v2 + OBJC_IVAR____TtC13HearingTestUI14SessionManager_tonePlayDelay);
  v74 = v38;
  v39 = v89;
  v78 = v2;
  v75 = *(v89 + 16);
  v40 = v84;
  v41 = v81;
  v42 = v79;
  v75(v84, v81, v79);
  sub_20CE13B84();

  v43 = sub_20CE13B74();
  v44 = (*(v39 + 80) + 56) & ~*(v39 + 80);
  v45 = (v85 + v44 + 7) & 0xFFFFFFFFFFFFFFF8;
  v46 = swift_allocObject();
  v47 = MEMORY[0x277D85700];
  v46[2] = v43;
  v46[3] = v47;
  v48 = v74;
  v46[4] = v76;
  v46[5] = v48;
  v46[6] = v37;
  v49 = v46 + v44;
  v50 = v42;
  v51 = v41;
  v52 = v40;
  v53 = v75;
  (*(v39 + 32))(v49, v52, v50);
  *(v46 + v45) = v87;

  v54 = sub_20CDC37D0(0, 0, v77, &unk_20CE15D68, v46);
  v55 = v83;
  v56 = v86;
  v53(v86 + *(v83 + 20), v51, v50);
  *v56 = v54;
  (*(v80 + 56))(v56, 0, 1, v55);
  v57 = v82;
  v58 = v78;
  swift_beginAccess();

  sub_20CD7C8E8(v56, v58 + v57);
  swift_endAccess();
  if (qword_27C811D00 != -1)
  {
    swift_once();
  }

  v59 = sub_20CE12CB4();
  __swift_project_value_buffer(v59, qword_27C817768);
  v60 = v88;
  v53(v88, v51, v50);
  v61 = sub_20CE12C94();
  v62 = sub_20CE13CD4();
  if (os_log_type_enabled(v61, v62))
  {
    v63 = swift_slowAlloc();
    v64 = swift_slowAlloc();
    v90[0] = v64;
    *v63 = 136446722;
    v65 = sub_20CE14414();
    v67 = sub_20CD96DCC(v65, v66, v90);

    *(v63 + 4) = v67;
    *(v63 + 12) = 1024;
    *(v63 + 14) = 45;
    *(v63 + 18) = 2080;
    v68 = sub_20CDE9430();
    v70 = v69;
    (*(v89 + 8))(v60, v50);
    v71 = sub_20CD96DCC(v68, v70, v90);

    *(v63 + 20) = v71;
    _os_log_impl(&dword_20CD70000, v61, v62, "[%{public}s] %-*s Scheduled.", v63, 0x1Cu);
    swift_arrayDestroy();
    MEMORY[0x20F314110](v64, -1, -1);
    MEMORY[0x20F314110](v63, -1, -1);
  }

  else
  {

    return (*(v89 + 8))(v60, v50);
  }
}

uint64_t sub_20CD782CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[17] = a7;
  v8[18] = a8;
  v8[15] = a5;
  v8[16] = a6;
  v8[14] = a4;
  v9 = sub_20CE12714();
  v8[19] = v9;
  v10 = *(v9 - 8);
  v8[20] = v10;
  v11 = *(v10 + 64) + 15;
  v8[21] = swift_task_alloc();
  v12 = sub_20CE14194();
  v8[22] = v12;
  v13 = *(v12 - 8);
  v8[23] = v13;
  v14 = *(v13 + 64) + 15;
  v8[24] = swift_task_alloc();
  sub_20CE13B84();
  v8[25] = sub_20CE13B74();
  v16 = sub_20CE13B24();
  v8[26] = v16;
  v8[27] = v15;

  return MEMORY[0x2822009F8](sub_20CD78424, v16, v15);
}

uint64_t sub_20CD78424()
{
  v1 = *(v0 + 192);
  v2 = *(v0 + 120);
  (*(v0 + 112))();
  v3 = sub_20CE143D4();
  v5 = v4;
  sub_20CE14314();
  v6 = swift_task_alloc();
  *(v0 + 224) = v6;
  *v6 = v0;
  v6[1] = sub_20CD7850C;
  v7 = *(v0 + 192);

  return sub_20CD7BE24(v3, v5, 0, 0, 1);
}

uint64_t sub_20CD7850C()
{
  v2 = *v1;
  v3 = *(*v1 + 224);
  v4 = *v1;
  *(*v1 + 232) = v0;

  (*(v2[23] + 8))(v2[24], v2[22]);
  v5 = v2[27];
  v6 = v2[26];
  if (v0)
  {
    v7 = sub_20CD78BD8;
  }

  else
  {
    v7 = sub_20CD78694;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_20CD78694()
{
  v54 = v0;
  v1 = v0[29];
  sub_20CE13BF4();
  if (v1)
  {
    v2 = v0[25];

    v3 = v0[24];
    v4 = v0[21];

    v5 = v0[1];
LABEL_3:

    return v5();
  }

  v7 = v0[16];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[30] = Strong;
  if (!Strong)
  {
    v30 = v0[25];

    if (qword_27C811D00 != -1)
    {
      swift_once();
    }

    v31 = sub_20CE12CB4();
    __swift_project_value_buffer(v31, qword_27C817768);
    v32 = sub_20CE12C94();
    v33 = sub_20CE13CD4();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = v0[18];
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v53[0] = v36;
      *v35 = 136446210;
      v37 = sub_20CE14414();
      v39 = sub_20CD96DCC(v37, v38, v53);

      *(v35 + 4) = v39;
      _os_log_impl(&dword_20CD70000, v32, v33, "[%{public}s] Aborting play tone task as the session manager has been deallocated.", v35, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v36);
      MEMORY[0x20F314110](v36, -1, -1);
      MEMORY[0x20F314110](v35, -1, -1);
    }

    v40 = v0[24];
    v41 = v0[21];

    v5 = v0[1];
    goto LABEL_3;
  }

  v9 = Strong;
  if (qword_27C811D00 != -1)
  {
    swift_once();
  }

  v11 = v0[20];
  v10 = v0[21];
  v12 = v0[19];
  v13 = v0[17];
  v14 = sub_20CE12CB4();
  v0[31] = __swift_project_value_buffer(v14, qword_27C817768);
  (*(v11 + 16))(v10, v13, v12);
  v15 = sub_20CE12C94();
  v16 = sub_20CE13CD4();
  v17 = os_log_type_enabled(v15, v16);
  v19 = v0[20];
  v18 = v0[21];
  v20 = v0[19];
  if (v17)
  {
    v21 = v0[18];
    v22 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    v53[0] = v51;
    *v22 = 136446722;
    v23 = sub_20CE14414();
    v25 = sub_20CD96DCC(v23, v24, v53);

    *(v22 + 4) = v25;
    *(v22 + 12) = 1024;
    *(v22 + 14) = 45;
    *(v22 + 18) = 2080;
    v26 = sub_20CDE9430();
    v28 = v27;
    (*(v19 + 8))(v18, v20);
    v29 = sub_20CD96DCC(v26, v28, v53);

    *(v22 + 20) = v29;
    _os_log_impl(&dword_20CD70000, v15, v16, "[%{public}s] %-*s Playing.", v22, 0x1Cu);
    swift_arrayDestroy();
    MEMORY[0x20F314110](v51, -1, -1);
    MEMORY[0x20F314110](v22, -1, -1);
  }

  else
  {

    (*(v19 + 8))(v18, v20);
  }

  v42 = v0[17];
  sub_20CD7C388((v9 + 9), (v0 + 2));
  v43 = v0[5];
  v44 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v43);
  (*(v44 + 16))(v42, v43, v44);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  v45 = v9[7];
  v46 = v9[8];
  __swift_project_boxed_opaque_existential_1(v9 + 4, v45);
  v47 = *(v46 + 24);
  v52 = (v47 + *v47);
  v48 = v47[1];
  v49 = swift_task_alloc();
  v0[32] = v49;
  *v49 = v0;
  v49[1] = sub_20CD78C50;
  v50 = v0[17];

  return v52(v50, v45, v46);
}

uint64_t sub_20CD78BD8()
{
  v1 = v0[25];

  v2 = v0[29];
  v3 = v0[24];
  v4 = v0[21];

  v5 = v0[1];

  return v5();
}

uint64_t sub_20CD78C50()
{
  v2 = *v1;
  v3 = *(*v1 + 256);
  v4 = *v1;
  *(*v1 + 264) = v0;

  v5 = *(v2 + 216);
  v6 = *(v2 + 208);
  if (v0)
  {
    v7 = sub_20CD78E58;
  }

  else
  {
    v7 = sub_20CD78D8C;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_20CD78D8C()
{
  v1 = v0[25];

  v2 = v0[33];
  sub_20CE13BF4();
  v3 = v0[30];
  if (v2)
  {
    v4 = v0[30];
  }

  else
  {
    sub_20CD75E84(0);
  }

  v5 = v0[24];
  v6 = v0[21];

  v7 = v0[1];

  return v7();
}

uint64_t sub_20CD78E58()
{
  v28 = v0;
  v1 = v0[33];
  v2 = v0[31];
  v3 = v0[25];

  v4 = v1;
  v5 = sub_20CE12C94();
  v6 = sub_20CE13CB4();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[33];
    v8 = v0[18];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v27[0] = v10;
    *v9 = 136446466;
    v11 = sub_20CE14414();
    v13 = sub_20CD96DCC(v11, v12, v27);

    *(v9 + 4) = v13;
    *(v9 + 12) = 2082;
    swift_getErrorValue();
    v14 = v0[10];
    v15 = *(v0[11] - 8);
    v16 = *(v15 + 64) + 15;
    swift_task_alloc();
    (*(v15 + 16))();
    v17 = sub_20CE13974();
    v19 = v18;

    v20 = sub_20CD96DCC(v17, v19, v27);

    *(v9 + 14) = v20;
    _os_log_impl(&dword_20CD70000, v5, v6, "[%{public}s] Will not play tone. Error: %{public}s.", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F314110](v10, -1, -1);
    MEMORY[0x20F314110](v9, -1, -1);
  }

  else
  {
    v21 = v0[33];
  }

  sub_20CE13BF4();
  v22 = v0[30];
  sub_20CD75E84(0);

  v23 = v0[24];
  v24 = v0[21];

  v25 = v0[1];

  return v25();
}

uint64_t sub_20CD79114(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = sub_20CE13B84();
  v5[3] = sub_20CE13B74();
  v7 = swift_task_alloc();
  v5[4] = v7;
  *v7 = v5;
  v7[1] = sub_20CD791D0;

  return sub_20CD79370(a5);
}

uint64_t sub_20CD791D0()
{
  v1 = *(*v0 + 32);
  v2 = *(*v0 + 24);
  v3 = *(*v0 + 16);
  v7 = *v0;

  v5 = sub_20CE13B24();

  return MEMORY[0x2822009F8](sub_20CD7930C, v5, v4);
}

uint64_t sub_20CD7930C()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_20CD79370(uint64_t a1)
{
  v2[9] = a1;
  v2[10] = v1;
  v2[11] = *v1;
  v3 = sub_20CE12434();
  v2[12] = v3;
  v4 = *(v3 - 8);
  v2[13] = v4;
  v5 = *(v4 + 64) + 15;
  v2[14] = swift_task_alloc();
  v6 = *(*(sub_20CE12544() - 8) + 64) + 15;
  v2[15] = swift_task_alloc();
  sub_20CD7BC64();
  v2[16] = v7;
  v8 = *(v7 - 8);
  v2[17] = v8;
  v9 = *(v8 + 64) + 15;
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();
  v10 = sub_20CE12714();
  v2[20] = v10;
  v11 = *(v10 - 8);
  v2[21] = v11;
  v12 = *(v11 + 64) + 15;
  v2[22] = swift_task_alloc();
  sub_20CD7BD14(0, &qword_27C811EA0, MEMORY[0x277D85720]);
  v14 = *(*(v13 - 8) + 64) + 15;
  v2[23] = swift_task_alloc();
  v15 = sub_20CE12724();
  v2[24] = v15;
  v16 = *(v15 - 8);
  v2[25] = v16;
  v17 = *(v16 + 64) + 15;
  v2[26] = swift_task_alloc();
  v2[27] = swift_task_alloc();
  v2[28] = swift_task_alloc();
  v18 = *(*(type metadata accessor for SessionManager.EndReason(0) - 8) + 64) + 15;
  v2[29] = swift_task_alloc();
  v2[30] = swift_task_alloc();
  v19 = sub_20CE12694();
  v2[31] = v19;
  v20 = *(v19 - 8);
  v2[32] = v20;
  v21 = *(v20 + 64) + 15;
  v2[33] = swift_task_alloc();
  v22 = sub_20CE127E4();
  v2[34] = v22;
  v23 = *(v22 - 8);
  v2[35] = v23;
  v24 = *(v23 + 64) + 15;
  v2[36] = swift_task_alloc();
  sub_20CD7C2DC();
  v2[37] = v25;
  v26 = *(*(v25 - 8) + 64) + 15;
  v2[38] = swift_task_alloc();
  v2[39] = swift_task_alloc();
  v27 = sub_20CE126A4();
  v2[40] = v27;
  v28 = *(v27 - 8);
  v2[41] = v28;
  v29 = *(v28 + 64) + 15;
  v2[42] = swift_task_alloc();
  v2[43] = swift_task_alloc();
  v2[44] = sub_20CE13B84();
  v2[45] = sub_20CE13B74();
  v31 = sub_20CE13B24();
  v2[46] = v31;
  v2[47] = v30;

  return MEMORY[0x2822009F8](sub_20CD797D0, v31, v30);
}

uint64_t sub_20CD797D0()
{
  sub_20CD7C388(v0[10] + 72, (v0 + 2));
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  v3 = *(v2 + 8);
  v9 = (v3 + *v3);
  v4 = v3[1];
  v5 = swift_task_alloc();
  v0[48] = v5;
  *v5 = v0;
  v5[1] = sub_20CD79910;
  v6 = v0[43];
  v7 = v0[9];

  return v9(v6, v7, v1, v2);
}

uint64_t sub_20CD79910()
{
  v1 = *v0;
  v2 = *(*v0 + 384);
  v6 = *v0;

  v3 = *(v1 + 376);
  v4 = *(v1 + 368);

  return MEMORY[0x2822009F8](sub_20CD79A30, v4, v3);
}

id sub_20CD79A30()
{
  v162 = v0;
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  sub_20CE13BF4();
  v1 = v0[42];
  v2 = v0[40];
  v3 = v0[41];
  (*(v3 + 16))(v1, v0[43], v2);
  v4 = (*(v3 + 88))(v1, v2);
  if (v4 != *MEMORY[0x277D12C78])
  {
    if (v4 != *MEMORY[0x277D12C70])
    {
      return sub_20CE141B4();
    }

    v45 = v0[45];
    v47 = v0[41];
    v46 = v0[42];
    v48 = v0[40];
    v49 = v0[21];
    log = v0[20];
    v147 = v0[22];
    v50 = v0[18];
    v159 = v0[17];
    v52 = v0[15];
    v51 = v0[16];
    v53 = v0[13];
    v54 = v0[14];
    v150 = v0[19];
    v154 = v0[12];

    (*(v47 + 96))(v46, v48);
    sub_20CD7C468();
    v56 = v55;
    v57 = *(v46 + *(v55 + 48));
    (*(v49 + 32))(v147, v46, log);
    *(v0 + 98) = v57;
    sub_20CE12534();
    sub_20CD7BCC0();
    sub_20CE123C4();
    sub_20CE12424();
    MEMORY[0x20F3118E0](v54, v51);
    (*(v53 + 8))(v54, v154);
    v58 = *(v159 + 8);
    v58(v50, v51);
    sub_20CD7C4E4(&qword_27C811EC0, sub_20CD7BC64);
    v59 = v0;
    sub_20CE13864();
    v58(v150, v51);
    v61 = v0[7];
    v60 = v0[8];
    if (qword_27C811D00 != -1)
    {
      swift_once();
    }

    v62 = sub_20CE12CB4();
    __swift_project_value_buffer(v62, qword_27C817768);

    v63 = sub_20CE12C94();
    v64 = sub_20CE13CD4();

    if (os_log_type_enabled(v63, v64))
    {
      v65 = v0[11];
      v66 = swift_slowAlloc();
      v67 = swift_slowAlloc();
      v161[0] = v67;
      *v66 = 136446466;
      v68 = sub_20CE14414();
      v70 = sub_20CD96DCC(v68, v69, v161);
      v59 = v0;

      *(v66 + 4) = v70;
      *(v66 + 12) = 2080;
      v71 = sub_20CD96DCC(v61, v60, v161);

      *(v66 + 14) = v71;
      _os_log_impl(&dword_20CD70000, v63, v64, "[%{public}s] Hearing test %s complete.", v66, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x20F314110](v67, -1, -1);
      MEMORY[0x20F314110](v66, -1, -1);
    }

    else
    {
    }

    v118 = v59[10];
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      result = [Strong view];
      if (!result)
      {
        goto LABEL_41;
      }

      v120 = result;
      type metadata accessor for HTUIEvaluationViewController.View();
      [swift_dynamicCastClassUnconditional() updateProgressTo:0 immediately:v57];

      swift_unknownObjectRelease();
    }

    v122 = v59[42];
    v121 = v59[43];
    v123 = v59[40];
    v124 = v59[41];
    v125 = v59[22];
    v126 = v0[20];
    v127 = v0[21];
    v128 = v0[10];
    v129 = *(v56 + 64);
    sub_20CD77A10(v125);
    (*(v127 + 8))(v125, v126);
    (*(v124 + 8))(v121, v123);
    v130 = sub_20CE12744();
    (*(*(v130 - 8) + 8))(v122 + v129, v130);
    goto LABEL_37;
  }

  v5 = v0[45];
  v7 = v0[41];
  v6 = v0[42];
  v9 = v0[39];
  v8 = v0[40];
  v11 = v0[37];
  v10 = v0[38];
  v12 = v0[36];
  v158 = v0;
  v13 = v0[35];
  v14 = v0[34];

  (*(v7 + 96))(v6, v8);
  sub_20CD7C52C();
  v16 = *(v15 + 48);
  sub_20CD7C968(v6, v9, sub_20CD7C2DC);
  (*(v13 + 32))(v12, v6 + v16, v14);
  v17 = v158;
  sub_20CD7CC94(v9, v10, sub_20CD7C2DC);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v19 = v158[38];
  if (EnumCaseMultiPayload != 1)
  {
    v21 = v158 + 31;
    (*(v158[32] + 32))(v158[33], v19, v158[31]);
    if (qword_27C811D00 != -1)
    {
      swift_once();
    }

    v72 = sub_20CE12CB4();
    __swift_project_value_buffer(v72, qword_27C817768);
    v73 = sub_20CE12C94();
    v74 = sub_20CE13CD4();
    if (os_log_type_enabled(v73, v74))
    {
      v75 = v158[11];
      v76 = swift_slowAlloc();
      v77 = swift_slowAlloc();
      v161[0] = v77;
      *v76 = 136446210;
      v78 = sub_20CE14414();
      v80 = sub_20CD96DCC(v78, v79, v161);

      *(v76 + 4) = v80;
      _os_log_impl(&dword_20CD70000, v73, v74, "[%{public}s] Session completed successfully.", v76, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v77);
      MEMORY[0x20F314110](v77, -1, -1);
      MEMORY[0x20F314110](v76, -1, -1);
    }

    v81 = v158[10];
    v82 = swift_unknownObjectWeakLoadStrong();
    if (!v82)
    {
      goto LABEL_19;
    }

    result = [v82 view];
    if (result)
    {
      v84 = result;
      type metadata accessor for HTUIEvaluationViewController.View();
      [swift_dynamicCastClassUnconditional() updateProgressTo:0 immediately:1.0];

      swift_unknownObjectRelease();
LABEL_19:
      if (swift_unknownObjectWeakLoadStrong())
      {
        v85 = v158[35];
        v155 = v158[36];
        v87 = v158[33];
        v86 = v158[34];
        v88 = v158[32];
        v89 = v158[31];
        v90 = v158[30];
        sub_20CD7B6A4();
        v92 = v91;
        v93 = *(v91 + 48);
        (*(v88 + 16))(v90, v87, v89);
        v17 = v158;
        v94 = v90 + v93;
        v21 = v158 + 31;
        (*(v85 + 16))(v94, v155, v86);
        (*(*(v92 - 8) + 56))(v90, 0, 2, v92);
        sub_20CDD3C78(v90);
        swift_unknownObjectRelease();
        sub_20CD7C9D0(v90, type metadata accessor for SessionManager.EndReason);
      }

      v20 = v21 + 2;
      v95 = v17[10];
      if (*(v95 + OBJC_IVAR____TtC13HearingTestUI14SessionManager__sessionIsActive) == 1)
      {
        *(v95 + OBJC_IVAR____TtC13HearingTestUI14SessionManager__sessionIsActive) = 0;
        sub_20CD770DC();
      }

      v96 = *(v17[32] + 8);
      goto LABEL_31;
    }

    __break(1u);
LABEL_41:
    __break(1u);
    return result;
  }

  v20 = v158 + 28;
  v21 = v158 + 24;
  (*(v158[25] + 32))(v158[28], v19, v158[24]);
  if (qword_27C811D00 != -1)
  {
    swift_once();
  }

  v22 = v158[27];
  v23 = v158[28];
  v24 = v158[24];
  v25 = v158[25];
  v26 = sub_20CE12CB4();
  __swift_project_value_buffer(v26, qword_27C817768);
  v27 = *(v25 + 16);
  v27(v22, v23, v24);
  v28 = sub_20CE12C94();
  v29 = sub_20CE13CB4();
  v30 = os_log_type_enabled(v28, v29);
  v31 = v158[27];
  if (v30)
  {
    v146 = v158[26];
    v153 = v29;
    v33 = v158[24];
    v32 = v158[25];
    v34 = v158[11];
    v35 = swift_slowAlloc();
    v149 = swift_slowAlloc();
    v161[0] = v149;
    *v35 = 136446466;
    v36 = sub_20CE14414();
    v38 = sub_20CD96DCC(v36, v37, v161);

    *(v35 + 4) = v38;
    v21 = v158 + 24;
    *(v35 + 12) = 2080;
    v27(v146, v31, v33);
    v39 = sub_20CE13974();
    v41 = v40;
    v42 = v33;
    v43 = *(v32 + 8);
    v43(v31, v42);
    v44 = sub_20CD96DCC(v39, v41, v161);
    v17 = v158;

    *(v35 + 14) = v44;
    _os_log_impl(&dword_20CD70000, v28, v153, "[%{public}s] Session completed with failure. Error: %s", v35, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F314110](v149, -1, -1);
    MEMORY[0x20F314110](v35, -1, -1);
  }

  else
  {
    v97 = v158[24];
    v98 = v158[25];

    v43 = *(v98 + 8);
    v43(v31, v97);
  }

  v99 = v17[29];
  v100 = v17[10];
  sub_20CD7B6A4();
  (*(*(v101 - 8) + 56))(v99, 1, 2, v101);
  sub_20CD776F4();
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_20CDD3C78(v17[29]);
    swift_unknownObjectRelease();
  }

  v102 = v17[10];
  if (*(v102 + OBJC_IVAR____TtC13HearingTestUI14SessionManager__sessionIsActive) == 1)
  {
    *(v102 + OBJC_IVAR____TtC13HearingTestUI14SessionManager__sessionIsActive) = 0;
    sub_20CD770DC();
  }

  v103 = v17[25];
  sub_20CD7C9D0(v17[29], type metadata accessor for SessionManager.EndReason);
  v96 = v43;
LABEL_31:
  v104 = *v21;
  v105 = v17[44];
  v106 = v17[41];
  v151 = v17[40];
  v156 = v17[43];
  v107 = v17[39];
  v109 = v17[35];
  v108 = v17[36];
  v110 = v17[34];
  v111 = v17[23];
  v112 = v17[11];
  v113 = v158[10];
  v96(*v20, v104);
  v114 = sub_20CE13BB4();
  (*(*(v114 - 8) + 56))(v111, 1, 1, v114);

  v115 = sub_20CE13B74();
  v116 = swift_allocObject();
  v117 = MEMORY[0x277D85700];
  v116[2] = v115;
  v116[3] = v117;
  v116[4] = v113;
  v116[5] = v112;
  v0 = v158;
  sub_20CDDA798(0, 0, v111, &unk_20CE15D58, v116);

  (*(v109 + 8))(v108, v110);
  sub_20CD7C9D0(v107, sub_20CD7C2DC);
  (*(v106 + 8))(v156, v151);
LABEL_37:
  v132 = v0[42];
  v131 = v0[43];
  v134 = v0[38];
  v133 = v0[39];
  v135 = v0[36];
  v136 = v0[33];
  v137 = v0[29];
  v138 = v0[30];
  v140 = v0[27];
  v139 = v0[28];
  v142 = v0[26];
  v143 = v0[23];
  loga = v0[22];
  v148 = v0[19];
  v152 = v0[18];
  v157 = v0[15];
  v160 = v0[14];

  v141 = v0[1];

  return v141();
}

uint64_t sub_20CD7A974(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = sub_20CE12714();
  v5[4] = v6;
  v7 = *(v6 - 8);
  v5[5] = v7;
  v8 = *(v7 + 64) + 15;
  v5[6] = swift_task_alloc();
  sub_20CE13B84();
  v5[7] = sub_20CE13B74();
  v10 = sub_20CE13B24();
  v5[8] = v10;
  v5[9] = v9;

  return MEMORY[0x2822009F8](sub_20CD7AA68, v10, v9);
}

uint64_t sub_20CD7AA68()
{
  v21 = v0;
  if (qword_27C811D00 != -1)
  {
    swift_once();
  }

  v1 = sub_20CE12CB4();
  v0[10] = __swift_project_value_buffer(v1, qword_27C817768);
  v2 = sub_20CE12C94();
  v3 = sub_20CE13CD4();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[3];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v20 = v6;
    *v5 = 136446210;
    v7 = sub_20CE14414();
    v9 = sub_20CD96DCC(v7, v8, &v20);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_20CD70000, v2, v3, "[%{public}s] Playing the ear completion tone.", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    MEMORY[0x20F314110](v6, -1, -1);
    MEMORY[0x20F314110](v5, -1, -1);
  }

  v10 = v0[6];
  v11 = v0[2];
  v12 = v11[7];
  v13 = v11[8];
  __swift_project_boxed_opaque_existential_1(v11 + 4, v12);
  sub_20CE126D4();
  v14 = *(v13 + 24);
  v19 = (v14 + *v14);
  v15 = v14[1];
  v16 = swift_task_alloc();
  v0[11] = v16;
  *v16 = v0;
  v16[1] = sub_20CD7ACD0;
  v17 = v0[6];

  return v19(v17, v12, v13);
}

uint64_t sub_20CD7ACD0()
{
  v2 = *v1;
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 48);
  v5 = *(*v1 + 40);
  v6 = *(*v1 + 32);
  v7 = *v1;
  *(*v1 + 96) = v0;

  (*(v5 + 8))(v4, v6);
  v8 = *(v2 + 72);
  v9 = *(v2 + 64);
  if (v0)
  {
    v10 = sub_20CD7AFB8;
  }

  else
  {
    v10 = sub_20CD7AE68;
  }

  return MEMORY[0x2822009F8](v10, v9, v8);
}

uint64_t sub_20CD7AE68()
{
  v15 = v0;
  v1 = v0[10];
  v2 = v0[7];

  v3 = sub_20CE12C94();
  v4 = sub_20CE13CD4();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[3];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v14 = v7;
    *v6 = 136446210;
    v8 = sub_20CE14414();
    v10 = sub_20CD96DCC(v8, v9, &v14);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_20CD70000, v3, v4, "[%{public}s] Ear completion tone finished playing.", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    MEMORY[0x20F314110](v7, -1, -1);
    MEMORY[0x20F314110](v6, -1, -1);
  }

  v11 = v0[6];

  v12 = v0[1];

  return v12();
}

uint64_t sub_20CD7AFB8()
{
  v17 = v0;
  v1 = v0[10];
  v2 = v0[7];

  v3 = sub_20CE12C94();
  v4 = sub_20CE13CB4();
  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[12];
  if (v5)
  {
    v7 = v0[3];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v16 = v9;
    *v8 = 136446210;
    v10 = sub_20CE14414();
    v12 = sub_20CD96DCC(v10, v11, &v16);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_20CD70000, v3, v4, "[%{public}s] Playing the ear completion tone failed.", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    MEMORY[0x20F314110](v9, -1, -1);
    MEMORY[0x20F314110](v8, -1, -1);
  }

  v13 = v0[6];

  v14 = v0[1];

  return v14();
}

uint64_t sub_20CD7B114(uint64_t a1)
{
  v2 = *(*(a1 - 8) + 64);
  MEMORY[0x28223BE20](a1 - 8);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20CD7CC94(v1, v4, type metadata accessor for SessionManager.EndReason);
  sub_20CD7B6A4();
  v6 = v5;
  v7 = (*(*(v5 - 8) + 48))(v4, 2, v5);
  if (v7)
  {
    if (v7 == 1)
    {
      return 0x756C636E6F636E49;
    }

    else
    {
      return 0x4120746E65696C43;
    }
  }

  else
  {
    v9 = *(v6 + 48);
    v10 = sub_20CE127E4();
    (*(*(v10 - 8) + 8))(&v4[v9], v10);
    v11 = sub_20CE12694();
    (*(*(v11 - 8) + 8))(v4, v11);
    return 0x6574656C706D6F43;
  }
}

uint64_t sub_20CD7B2AC()
{
  sub_20CD758EC((v0 + 2));
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 4);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 9);
  sub_20CD7CC30(v0 + OBJC_IVAR____TtC13HearingTestUI14SessionManager_playState, qword_281111628, type metadata accessor for SessionManager.PlayState);
  v1 = *(v0 + OBJC_IVAR____TtC13HearingTestUI14SessionManager_continueTestTask);

  v2 = *(v0 + OBJC_IVAR____TtC13HearingTestUI14SessionManager_tonePlayDelay + 8);

  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

void sub_20CD7B390()
{
  sub_20CD7BD14(319, qword_281111628, type metadata accessor for SessionManager.PlayState);
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_20CD7B4A4(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_20CD7B4C4(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 16) = v3;
  return result;
}

void sub_20CD7B53C()
{
  sub_20CD7B5C0();
  if (v0 <= 0x3F)
  {
    sub_20CE12714();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_20CD7B5C0()
{
  if (!qword_281111360)
  {
    sub_20CD7B62C();
    v0 = sub_20CE13BD4();
    if (!v1)
    {
      atomic_store(v0, &qword_281111360);
    }
  }
}

unint64_t sub_20CD7B62C()
{
  result = qword_281111358;
  if (!qword_281111358)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_281111358);
  }

  return result;
}

void sub_20CD7B6A4()
{
  if (!qword_27C811E78)
  {
    sub_20CE12694();
    sub_20CE127E4();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27C811E78);
    }
  }
}

uint64_t sub_20CD7B74C(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_20CD7B784()
{
  sub_20CD7B6A4();
  v1 = v0;
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

uint64_t sub_20CD7B7DC()
{
  v1 = *v0;
  v2 = sub_20CE13954();
  v3 = MEMORY[0x20F312F60](v2);

  return v3;
}

uint64_t sub_20CD7B818()
{
  v1 = *v0;
  sub_20CE13954();
  sub_20CE139C4();
}

uint64_t sub_20CD7B86C()
{
  v1 = *v0;
  sub_20CE13954();
  sub_20CE14384();
  sub_20CE139C4();
  v2 = sub_20CE143B4();

  return v2;
}

uint64_t sub_20CD7B8E0(uint64_t a1, id *a2)
{
  result = sub_20CE13934();
  *a2 = 0;
  return result;
}

uint64_t sub_20CD7B958(uint64_t a1, id *a2)
{
  v3 = sub_20CE13944();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_20CD7B9D8@<X0>(uint64_t *a1@<X8>)
{
  sub_20CE13954();
  v2 = sub_20CE13914();

  *a1 = v2;
  return result;
}

uint64_t sub_20CD7BA1C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = sub_20CE13954();
  v6 = v5;
  if (v4 == sub_20CE13954() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_20CE14284();
  }

  return v9 & 1;
}

uint64_t sub_20CD7BAA4(uint64_t a1)
{
  v2 = sub_20CD7C4E4(&qword_27C811FB8, type metadata accessor for VFXWorldLoaderOption);
  v3 = sub_20CD7C4E4(&qword_27C811FC0, type metadata accessor for VFXWorldLoaderOption);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_20CD7BB60(uint64_t a1)
{
  v2 = sub_20CD7C4E4(&qword_27C811FD8, type metadata accessor for OpenExternalURLOptionsKey);
  v3 = sub_20CD7C4E4(&unk_27C811FE0, type metadata accessor for OpenExternalURLOptionsKey);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_20CD7BC1C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_20CE13914();

  *a2 = v5;
  return result;
}

void sub_20CD7BC64()
{
  if (!qword_27C811E90)
  {
    sub_20CD7BCC0();
    v0 = sub_20CE123E4();
    if (!v1)
    {
      atomic_store(v0, &qword_27C811E90);
    }
  }
}

unint64_t sub_20CD7BCC0()
{
  result = qword_27C811E98;
  if (!qword_27C811E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C811E98);
  }

  return result;
}

void sub_20CD7BD14(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_20CE13F44();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_20CD7BD68(uint64_t a1)
{
  v2 = sub_20CD7C4E4(&qword_27C811FC8, type metadata accessor for NSKeyValueChangeKey);
  v3 = sub_20CD7C4E4(&qword_27C811FD0, type metadata accessor for NSKeyValueChangeKey);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_20CD7BE24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = v5;
  v12 = sub_20CE14184();
  *(v6 + 64) = v12;
  v13 = *(v12 - 8);
  *(v6 + 72) = v13;
  v14 = *(v13 + 64) + 15;
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 40) = a1;
  *(v6 + 48) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5 & 1;

  return MEMORY[0x2822009F8](sub_20CD7BF24, 0, 0);
}

uint64_t sub_20CD7BF24()
{
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[8];
  v4 = v0[9];
  v5 = v0[7];
  v6 = sub_20CE14194();
  v7 = sub_20CD7C4E4(&qword_27C811ED0, MEMORY[0x277D85928]);
  sub_20CE142F4();
  sub_20CD7C4E4(&qword_27C811ED8, MEMORY[0x277D858F8]);
  sub_20CE141A4();
  v8 = *(v4 + 8);
  v0[12] = v8;
  v0[13] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8(v1, v3);
  v9 = *(MEMORY[0x277D85A58] + 4);
  v10 = swift_task_alloc();
  v0[14] = v10;
  *v10 = v0;
  v10[1] = sub_20CD7C0B4;
  v11 = v0[11];
  v12 = v0[7];

  return MEMORY[0x2822008C8](v11, v0 + 2, v6, v7);
}

uint64_t sub_20CD7C0B4()
{
  v2 = *(*v1 + 112);
  v3 = *(*v1 + 104);
  v4 = *(*v1 + 96);
  v5 = *(*v1 + 88);
  v6 = *(*v1 + 64);
  v7 = *v1;
  v7[15] = v0;

  v4(v5, v6);
  if (v0)
  {

    return MEMORY[0x2822009F8](sub_20CD7C270, 0, 0);
  }

  else
  {
    v9 = v7[10];
    v8 = v7[11];

    v10 = v7[1];

    return v10();
  }
}

uint64_t sub_20CD7C270()
{
  v2 = v0[10];
  v1 = v0[11];

  v3 = v0[1];
  v4 = v0[15];

  return v3();
}

void sub_20CD7C2DC()
{
  if (!qword_27C811EA8)
  {
    sub_20CE12694();
    sub_20CE12724();
    sub_20CD7C4E4(&qword_27C811EB0, MEMORY[0x277D12C90]);
    v0 = sub_20CE143C4();
    if (!v1)
    {
      atomic_store(v0, &qword_27C811EA8);
    }
  }
}

uint64_t sub_20CD7C388(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

void sub_20CD7C468()
{
  if (!qword_27C811EB8)
  {
    sub_20CE12714();
    sub_20CE12744();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_27C811EB8);
    }
  }
}

uint64_t sub_20CD7C4E4(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_20CD7C52C()
{
  if (!qword_27C811EC8)
  {
    sub_20CD7C2DC();
    sub_20CE127E4();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27C811EC8);
    }
  }
}

uint64_t sub_20CD7C5A0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_20CD7C660;

  return sub_20CD7A974(a1, v4, v5, v7, v6);
}

uint64_t sub_20CD7C660()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t __swift_destroy_boxed_opaque_existential_1Tm(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_20CD7C7A0(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_20CE12714() - 8);
  v6 = (*(v5 + 80) + 56) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = v1[5];
  v11 = v1[6];
  v12 = *(v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_20CD7D35C;

  return sub_20CD782CC(a1, v7, v8, v9, v10, v11, v1 + v6, v12);
}

uint64_t sub_20CD7C8E8(uint64_t a1, uint64_t a2)
{
  sub_20CD7BD14(0, qword_281111628, type metadata accessor for SessionManager.PlayState);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_20CD7C968(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_20CD7C9D0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_20CD7CA30(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t))
{
  sub_20CD7BD14(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_20CD7CA9C(uint64_t a1, uint64_t a2)
{
  sub_20CD7BD14(0, &qword_27C811EE0, MEMORY[0x277D12C38]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_20CD7CB1C(uint64_t a1)
{
  sub_20CD7BD14(0, &qword_27C811EE0, MEMORY[0x277D12C38]);
  v5 = (*(*(v4 - 8) + 80) + 40) & ~*(*(v4 - 8) + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_20CD7D35C;

  return sub_20CD79114(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_20CD7CC30(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_20CD7BD14(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_20CD7CC8C(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  sub_20CD76974(a1);
}

uint64_t sub_20CD7CC94(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t objectdestroy_79Tm()
{
  sub_20CD7BD14(0, &qword_27C811EE0, MEMORY[0x277D12C38]);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  v6 = *(v0 + 32);

  v7 = sub_20CE12634();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(v0 + v3, 1, v7))
  {
    (*(v8 + 8))(v0 + v3, v7);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_20CD7CE34(uint64_t a1)
{
  sub_20CD7BD14(0, &qword_27C811EE0, MEMORY[0x277D12C38]);
  v5 = (*(*(v4 - 8) + 80) + 40) & ~*(*(v4 - 8) + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_20CD7C660;

  return sub_20CD79114(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_20CD7CF50(uint64_t result, double a2, double a3)
{
  if (a2 == a3)
  {
    __break(1u);
    goto LABEL_7;
  }

  v5 = a3 - a2;
  if (COERCE__INT64(fabs(a3 - a2)) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v6 = result;
  v7 = 0;
  result = MEMORY[0x20F314120](&v7, 8);
  if (v5 * vcvtd_n_f64_u64(v7 & 0x1FFFFFFFFFFFFFLL, 0x35uLL) + a2 == a3)
  {
    return sub_20CD7CF50(v6, a2, a3);
  }

  return result;
}

void sub_20CD7D058(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t sub_20CD7D364()
{
  v1 = v0;
  v2 = sub_20CE12644();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, v1, v2);
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 == *MEMORY[0x277D12C48] || v7 == *MEMORY[0x277D12C50])
  {
    return 0;
  }

  if (v7 != *MEMORY[0x277D12C58])
  {
    if (v7 != *MEMORY[0x277D12C40])
    {
      if (v7 == *MEMORY[0x277D12C60])
      {
        if (qword_27C811DC8 == -1)
        {
          return sub_20CE12354();
        }

        goto LABEL_15;
      }

      (*(v3 + 8))(v6, v2);
    }

    return 0;
  }

  if (qword_27C811DC8 != -1)
  {
LABEL_15:
    swift_once();
  }

  return sub_20CE12354();
}

uint64_t sub_20CD7D5BC()
{
  v1 = v0;
  v2 = sub_20CE12644();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, v1, v2);
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 == *MEMORY[0x277D12C48] || v7 == *MEMORY[0x277D12C50])
  {
    return 0;
  }

  if (v7 != *MEMORY[0x277D12C58])
  {
    if (v7 != *MEMORY[0x277D12C40])
    {
      if (v7 == *MEMORY[0x277D12C60])
      {
        if (qword_27C811DC8 == -1)
        {
          return sub_20CE12354();
        }

        goto LABEL_15;
      }

      (*(v3 + 8))(v6, v2);
    }

    return 0;
  }

  if (qword_27C811DC8 != -1)
  {
LABEL_15:
    swift_once();
  }

  return sub_20CE12354();
}

uint64_t sub_20CD7D814@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_20CE12644();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a1 - 1) >= 5)
  {
    v12 = *(v6 + 56);

    return v12(a2, 1, 1, v4);
  }

  else
  {
    v9 = **(&unk_277DACF90 + a1 - 1);
    v10 = *(v6 + 104);
    v14 = v6;
    v10(v8, v9, v4);
    (*(v14 + 32))(a2, v8, v4);
    return (*(v14 + 56))(a2, 0, 1, v4);
  }
}

uint64_t HearingTestSetUpDetails.__allocating_init(dateOfBirth:congestionExperience:loudNoiseExposure:)(uint64_t a1, char a2, char a3)
{
  v6 = swift_allocObject();
  HearingTestSetUpDetails.init(dateOfBirth:congestionExperience:loudNoiseExposure:)(a1, a2, a3);
  return v6;
}

_BYTE *HearingTestSetUpDetails.init(dateOfBirth:congestionExperience:loudNoiseExposure:)(uint64_t a1, char a2, char a3)
{
  v7 = sub_20CE124E4();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v20[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_20CD82044(0, &qword_281111770, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v20[-v14];
  v3[16] = 2;
  v3[17] = a2;
  v3[18] = a3;
  sub_20CD7DC78(a1, &v20[-v14]);
  if ((*(v8 + 48))(v15, 1, v7) == 1)
  {
    sub_20CD7DD0C(a1, &qword_281111770, MEMORY[0x277CC9578], MEMORY[0x277D83D88], sub_20CD82044);
    v16 = 2;
  }

  else
  {
    (*(v8 + 32))(v11, v15, v7);
    sub_20CD7DD6C(v11, &v21);
    (*(v8 + 8))(v11, v7);
    v17 = v21;
    v18 = *MEMORY[0x277CCE410];
    sub_20CD7DD0C(a1, &qword_281111770, MEMORY[0x277CC9578], MEMORY[0x277D83D88], sub_20CD82044);
    if (v17 >= v18)
    {
      v16 = 1;
    }

    else
    {
      v16 = 2;
    }
  }

  v3[16] = v16;
  return v3;
}

uint64_t sub_20CD7DC78(uint64_t a1, uint64_t a2)
{
  sub_20CD82044(0, &qword_281111770, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20CD7DD0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = a5(0);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t sub_20CD7DD6C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v28 = a1;
  v31 = a2;
  v2 = sub_20CE124E4();
  v29 = *(v2 - 8);
  v30 = v2;
  v3 = *(v29 + 64);
  MEMORY[0x28223BE20](v2);
  v27 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_20CE125B4();
  v24 = *(v26 - 8);
  v5 = *(v24 + 64);
  MEMORY[0x28223BE20](v26);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_20CE12274();
  v23 = *(v25 - 8);
  v8 = *(v23 + 64);
  MEMORY[0x28223BE20](v25);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [objc_opt_self() hk_gregorianCalendarWithUTCTimeZone];
  sub_20CE12574();

  sub_20CD82044(0, &unk_27C812250, MEMORY[0x277CC99D0], MEMORY[0x277D84560]);
  v12 = sub_20CE125A4();
  v13 = *(v12 - 8);
  v14 = *(v13 + 72);
  v15 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_20CE16340;
  v17 = v16 + v15;
  v18 = *(v13 + 104);
  v18(v17, *MEMORY[0x277CC9968], v12);
  v18(v17 + v14, *MEMORY[0x277CC9998], v12);
  v18(v17 + 2 * v14, *MEMORY[0x277CC9988], v12);
  sub_20CDE8A00(v16);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_20CE12564();

  (*(v24 + 8))(v7, v26);
  v19 = v27;
  sub_20CE124D4();
  v20 = sub_20CE12234();
  (*(v29 + 8))(v19, v30);
  result = (*(v23 + 8))(v10, v25);
  *v31 = v20;
  return result;
}

uint64_t sub_20CD7E180()
{
  v1 = *v0;
  sub_20CE14384();
  MEMORY[0x20F3138A0](v1);
  return sub_20CE143B4();
}

uint64_t sub_20CD7E1F4()
{
  v1 = *v0;
  sub_20CE14384();
  MEMORY[0x20F3138A0](v1);
  return sub_20CE143B4();
}

uint64_t sub_20CD7E238()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return swift_deallocClassInstance();
}

uint64_t sub_20CD7E2F8(uint64_t *a1, uint64_t (*a2)(uint64_t))
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = a2(v2);
    v6 = *(v2 + v3);
    *(v2 + v3) = v5;
  }

  return v5;
}

uint64_t sub_20CD7E360()
{
  v1 = OBJC_IVAR____TtC13HearingTestUI30HearingTestSetUpViewController____lazy_storage___sections;
  if (*(v0 + OBJC_IVAR____TtC13HearingTestUI30HearingTestSetUpViewController____lazy_storage___sections))
  {
    v2 = *(v0 + OBJC_IVAR____TtC13HearingTestUI30HearingTestSetUpViewController____lazy_storage___sections);
  }

  else
  {
    sub_20CD82278(0, &qword_27C812230, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
    v2 = swift_allocObject();
    *(v2 + 16) = xmmword_20CE16350;
    *(v2 + 32) = sub_20CD7E298();
    *(v2 + 40) = sub_20CD7E2B8();
    *(v2 + 48) = sub_20CD7E2D8();
    v3 = *(v0 + v1);
    *(v0 + v1) = v2;
  }

  return v2;
}

id sub_20CD7E440(uint64_t a1)
{
  v2 = [objc_opt_self() boldButton];
  if (qword_27C811DC8 != -1)
  {
    swift_once();
  }

  sub_20CE12354();
  v3 = sub_20CE13914();

  [v2 setTitle:v3 forState:{0, 0xE000000000000000}];

  [v2 addTarget:a1 action:sel_continueButtonTapped_ forControlEvents:64];
  v4 = qword_27C811D30;
  v5 = v2;
  if (v4 != -1)
  {
    swift_once();
  }

  v7 = qword_27C817868;
  v6 = unk_27C817870;
  v8 = MEMORY[0x277D837D0];
  sub_20CD82278(0, &unk_27C813730, MEMORY[0x277D837D0], MEMORY[0x277D84560]);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_20CE16360;
  *(v9 + 32) = v7;
  *(v9 + 40) = v6;
  strcpy((v9 + 48), "ContinueButton");
  *(v9 + 63) = -18;
  sub_20CD82278(0, &qword_27C8121F0, v8, MEMORY[0x277D83940]);
  sub_20CD81F60();

  sub_20CE138C4();

  v10 = sub_20CE13914();

  [v5 setAccessibilityIdentifier_];

  return v5;
}

id sub_20CD7E6E8(uint64_t *a1, uint64_t (*a2)(uint64_t))
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = *(v2 + *a1);
  }

  else
  {
    v6 = a2(v2);
    v7 = *(v2 + v3);
    *(v2 + v3) = v6;
    v5 = v6;

    v4 = 0;
  }

  v8 = v4;
  return v5;
}

id sub_20CD7E74C(uint64_t a1)
{
  v1 = [objc_allocWithZone(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:1 target:a1 action:sel_cancelButtonTapped_];
  v2 = qword_27C811D30;
  v3 = v1;
  if (v2 != -1)
  {
    swift_once();
  }

  v5 = qword_27C817868;
  v4 = unk_27C817870;
  v6 = MEMORY[0x277D837D0];
  sub_20CD82278(0, &unk_27C813730, MEMORY[0x277D837D0], MEMORY[0x277D84560]);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_20CE16360;
  *(v7 + 32) = v5;
  *(v7 + 40) = v4;
  *(v7 + 48) = 0x61426C65636E6143;
  *(v7 + 56) = 0xEF6E6F7474754272;
  sub_20CD82278(0, &qword_27C8121F0, v6, MEMORY[0x277D83940]);
  sub_20CD81F60();

  sub_20CE138C4();

  v8 = sub_20CE13914();

  [v3 setAccessibilityIdentifier_];

  return v3;
}

void sub_20CD7E908(void *a1, char *a2)
{
  v3 = v2;
  sub_20CD82044(0, &qword_281111770, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v35 - v8;
  v10 = *a2;
  *&v3[OBJC_IVAR____TtC13HearingTestUI30HearingTestSetUpViewController____lazy_storage___minimumAgeSection] = 0;
  *&v3[OBJC_IVAR____TtC13HearingTestUI30HearingTestSetUpViewController____lazy_storage___congestionSection] = 0;
  *&v3[OBJC_IVAR____TtC13HearingTestUI30HearingTestSetUpViewController____lazy_storage___loudNoiseSection] = 0;
  *&v3[OBJC_IVAR____TtC13HearingTestUI30HearingTestSetUpViewController____lazy_storage___sections] = 0;
  v11 = &v3[OBJC_IVAR____TtC13HearingTestUI30HearingTestSetUpViewController_automationIdentifierBase];
  if (qword_27C811D30 != -1)
  {
    swift_once();
  }

  v13 = qword_27C817868;
  v12 = unk_27C817870;
  v14 = MEMORY[0x277D837D0];
  sub_20CD82278(0, &unk_27C813730, MEMORY[0x277D837D0], MEMORY[0x277D84560]);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_20CE16360;
  *(v15 + 32) = v13;
  *(v15 + 40) = v12;
  strcpy((v15 + 48), "SetUpDetails");
  *(v15 + 61) = 0;
  *(v15 + 62) = -5120;
  v37 = v15;
  sub_20CD82278(0, &qword_27C8121F0, v14, MEMORY[0x277D83940]);
  sub_20CD81F60();

  v16 = sub_20CE138C4();
  v18 = v17;

  *v11 = v16;
  v11[1] = v18;
  v19 = OBJC_IVAR____TtC13HearingTestUI30HearingTestSetUpViewController_stepStartTime;
  v20 = sub_20CE124E4();
  (*(*(v20 - 8) + 56))(&v3[v19], 1, 1, v20);
  *&v3[OBJC_IVAR____TtC13HearingTestUI30HearingTestSetUpViewController____lazy_storage___continueButton] = 0;
  *&v3[OBJC_IVAR____TtC13HearingTestUI30HearingTestSetUpViewController____lazy_storage___cancelButton] = 0;
  sub_20CDE0B80(v9);
  v21 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v22 = sub_20CE13914();
  v23 = [v21 initWithSuiteName_];

  if (!v23)
  {
    __break(1u);
    goto LABEL_9;
  }

  v24 = sub_20CE0EB20();

  v25 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v26 = sub_20CE13914();
  v27 = [v25 initWithSuiteName_];

  if (!v27)
  {
LABEL_9:
    __break(1u);
    return;
  }

  v28 = sub_20CE0EB20();

  type metadata accessor for HearingTestSetUpDetails();
  v29 = swift_allocObject();
  HearingTestSetUpDetails.init(dateOfBirth:congestionExperience:loudNoiseExposure:)(v9, v24, v28);
  *&v3[OBJC_IVAR____TtC13HearingTestUI30HearingTestSetUpViewController_setUpDetails] = v29;
  *&v3[OBJC_IVAR____TtC13HearingTestUI30HearingTestSetUpViewController_flowManager] = a1;
  v3[OBJC_IVAR____TtC13HearingTestUI30HearingTestSetUpViewController_currentStep] = v10;
  v30 = qword_27C811DC8;
  v31 = a1;
  if (v30 != -1)
  {
    swift_once();
  }

  sub_20CE12354();
  v32 = sub_20CE13914();

  sub_20CE12354();
  v33 = sub_20CE13914();

  v34 = type metadata accessor for HearingTestSetUpViewController();
  v36.receiver = v3;
  v36.super_class = v34;
  objc_msgSendSuper2(&v36, sel_initWithTitle_detailText_icon_adoptTableViewScrollView_, v32, v33, 0, 1);
}

void sub_20CD7EDB4()
{
  v1 = v0;
  v2 = [objc_allocWithZone(MEMORY[0x277D75B40]) initWithFrame:2 style:{0.0, 0.0, 0.0, 0.0}];
  [v1 setTableView_];

  v3 = [v1 tableView];
  if (!v3)
  {
    __break(1u);
    goto LABEL_19;
  }

  v4 = v3;
  v5 = [objc_opt_self() systemBackgroundColor];
  [v4 setBackgroundColor_];

  v6 = [v1 tableView];
  if (!v6)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v7 = v6;
  [v6 setTranslatesAutoresizingMaskIntoConstraints_];

  v8 = [v1 tableView];
  if (!v8)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v9 = v8;
  [v8 setShowsVerticalScrollIndicator_];

  v10 = [v1 tableView];
  if (!v10)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v11 = v10;
  [v10 setShowsHorizontalScrollIndicator_];

  v12 = [v1 tableView];
  if (!v12)
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v13 = v12;
  type metadata accessor for BinaryConfirmationSelectTableViewCell();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  if (qword_27C811D60 != -1)
  {
    swift_once();
  }

  v15 = sub_20CE13914();
  [v13 registerClass:ObjCClassFromMetadata forCellReuseIdentifier:v15];

  v16 = [v1 tableView];
  if (!v16)
  {
    goto LABEL_23;
  }

  v17 = v16;
  sub_20CD83128(0, &qword_27C812248, 0x277D75B70);
  v18 = swift_getObjCClassFromMetadata();
  v19 = sub_20CE13914();
  [v17 registerClass:v18 forHeaderFooterViewReuseIdentifier:v19];

  v20 = [v1 tableView];
  if (!v20)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v21 = v20;
  [v20 setDelegate_];

  v22 = [v1 tableView];
  if (!v22)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v23 = v22;
  [v22 setDataSource_];

  v24 = [v1 tableView];
  if (!v24)
  {
LABEL_26:
    __break(1u);
    return;
  }

  v25 = v24;
  v27 = *&v1[OBJC_IVAR____TtC13HearingTestUI30HearingTestSetUpViewController_automationIdentifierBase];
  v26 = *&v1[OBJC_IVAR____TtC13HearingTestUI30HearingTestSetUpViewController_automationIdentifierBase + 8];
  v28 = MEMORY[0x277D837D0];
  sub_20CD82278(0, &unk_27C813730, MEMORY[0x277D837D0], MEMORY[0x277D84560]);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_20CE16360;
  *(v29 + 32) = v27;
  *(v29 + 40) = v26;
  *(v29 + 48) = 0x656956656C626154;
  *(v29 + 56) = 0xE900000000000077;
  v36 = v29;
  sub_20CD82278(0, &qword_27C8121F0, v28, MEMORY[0x277D83940]);
  sub_20CD81F60();

  sub_20CE138C4();

  v30 = sub_20CE13914();

  [v25 setAccessibilityIdentifier_];

  v35.receiver = v1;
  v35.super_class = type metadata accessor for HearingTestSetUpViewController();
  objc_msgSendSuper2(&v35, sel_viewDidLoad);
  sub_20CD7F804();
  sub_20CD7F31C();
  v31 = *&v1[OBJC_IVAR____TtC13HearingTestUI30HearingTestSetUpViewController_setUpDetails];
  v32 = v31[16];
  v33 = v32 != 2 && (v32 & 1) != 0 && v31[17] != 2 && v31[18] != 2;
  v34 = sub_20CD7E420();
  [v34 setEnabled_];
}

void sub_20CD7F31C()
{
  v1 = v0;
  v16 = MEMORY[0x277D84F90];
  v2 = [v0 buttonTray];
  v3 = sub_20CD7E420();
  [v2 addButton_];

  sub_20CD7E6C8();
  MEMORY[0x20F312FA0]();
  if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v13 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_20CE13AD4();
  }

  sub_20CE13AF4();
  v4 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v5 = sub_20CE13914();
  v6 = [v4 initWithSuiteName_];

  if (v6)
  {
    sub_20CE11910();
    v8 = v7;

    if (v8)
    {
      v15[3] = type metadata accessor for HearingTestSetUpViewController();
      v15[0] = v1;
      v9 = v1;
      sub_20CDEA770(v15, sel_invokeTapToRadar);
      v10 = sub_20CD7DD0C(v15, &qword_27C812D30, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_20CD82278);
      MEMORY[0x20F312FA0](v10);
      if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v14 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_20CE13AD4();
      }

      sub_20CE13AF4();
    }

    v11 = [v1 navigationItem];
    sub_20CD83128(0, &qword_27C812220, 0x277D751E0);
    v12 = sub_20CE13AA4();

    [v11 setRightBarButtonItems_];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_20CD7F588(char a1)
{
  sub_20CD82044(0, &qword_281111770, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v17[-v5 - 8];
  v7 = type metadata accessor for HearingTestSetUpViewController();
  v18.receiver = v1;
  v18.super_class = v7;
  objc_msgSendSuper2(&v18, sel_viewDidAppear_, a1 & 1);
  sub_20CE124D4();
  v8 = sub_20CE124E4();
  (*(*(v8 - 8) + 56))(v6, 0, 1, v8);
  v9 = OBJC_IVAR____TtC13HearingTestUI30HearingTestSetUpViewController_stepStartTime;
  swift_beginAccess();
  sub_20CD83094(v6, &v1[v9]);
  swift_endAccess();
  v10 = (*&v1[OBJC_IVAR____TtC13HearingTestUI30HearingTestSetUpViewController_flowManager] + OBJC_IVAR____TtC13HearingTestUI22HearingTestFlowManager_analyticsManager);
  v11 = *v10;
  v12 = v10[1];
  ObjectType = swift_getObjectType();
  v17[0] = 0;
  v14 = *(v12 + 48);
  swift_unknownObjectRetain();
  v14(v17, v1, &off_2823BBD50, ObjectType, v12);
  return swift_unknownObjectRelease();
}

void sub_20CD7F804()
{
  v1 = v0;
  v2 = [v0 headerView];
  [v2 setTitleStyle_];

  v3 = [v1 &selRef_makeIHAGatedEventPayloadWithDataSource_error_];
  v5 = *&v1[OBJC_IVAR____TtC13HearingTestUI30HearingTestSetUpViewController_automationIdentifierBase];
  v4 = *&v1[OBJC_IVAR____TtC13HearingTestUI30HearingTestSetUpViewController_automationIdentifierBase + 8];
  v6 = MEMORY[0x277D837D0];
  sub_20CD82278(0, &unk_27C813730, MEMORY[0x277D837D0], MEMORY[0x277D84560]);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_20CE16360;
  *(v7 + 32) = v5;
  *(v7 + 40) = v4;
  *(v7 + 48) = 0x656C746954;
  *(v7 + 56) = 0xE500000000000000;
  sub_20CD82278(0, &qword_27C8121F0, v6, MEMORY[0x277D83940]);
  sub_20CD81F60();

  sub_20CE138C4();

  v8 = sub_20CE13914();

  [v3 setTitleAccessibilityIdentifier_];

  v9 = [v1 headerView];
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_20CE16360;
  *(v10 + 32) = v5;
  *(v10 + 40) = v4;
  *(v10 + 48) = 0x656C746974627553;
  *(v10 + 56) = 0xE800000000000000;

  sub_20CE138C4();

  v11 = sub_20CE13914();

  [v9 setDetailTextAccessibilityIdentifier_];
}

void sub_20CD7FA6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    v6 = sub_20CE13914();
    if (a4)
    {
LABEL_3:
      v7 = sub_20CE13914();
      goto LABEL_6;
    }
  }

  else
  {
    v6 = 0;
    if (a4)
    {
      goto LABEL_3;
    }
  }

  v7 = 0;
LABEL_6:
  v8 = [objc_opt_self() alertControllerWithTitle:v6 message:v7 preferredStyle:1];

  if (qword_27C811DC8 != -1)
  {
    swift_once();
  }

  sub_20CE12354();
  v9 = sub_20CE13914();

  v10 = [objc_opt_self() actionWithTitle:v9 style:0 handler:{0, 0xE000000000000000}];

  [v8 addAction_];
  [v4 presentViewController:v8 animated:1 completion:0];
}

void sub_20CD7FC1C(char a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC13HearingTestUI30HearingTestSetUpViewController_setUpDetails);
  v2[16] = a1;
  v3 = *(v1 + OBJC_IVAR____TtC13HearingTestUI30HearingTestSetUpViewController_flowManager);
  v4 = *(v3 + OBJC_IVAR____TtC13HearingTestUI22HearingTestFlowManager_setupDetails);
  *(v3 + OBJC_IVAR____TtC13HearingTestUI22HearingTestFlowManager_setupDetails) = v2;

  v5 = v2[16];
  v6 = v5 != 2 && (v5 & 1) != 0 && v2[17] != 2 && v2[18] != 2;
  v7 = sub_20CD7E420();
  [v7 setEnabled_];
}

void sub_20CD7FCE4(unsigned __int8 a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC13HearingTestUI30HearingTestSetUpViewController_setUpDetails);
  v2[17] = a1;
  v3 = *(v1 + OBJC_IVAR____TtC13HearingTestUI30HearingTestSetUpViewController_flowManager);
  v4 = *(v3 + OBJC_IVAR____TtC13HearingTestUI22HearingTestFlowManager_setupDetails);
  *(v3 + OBJC_IVAR____TtC13HearingTestUI22HearingTestFlowManager_setupDetails) = v2;

  v5 = v2[16];
  v6 = v5 != 2 && (v5 & 1) != 0 && v2[17] != 2 && v2[18] != 2;
  v7 = sub_20CD7E420();
  [v7 setEnabled_];
}

void sub_20CD7FDAC(unsigned __int8 a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC13HearingTestUI30HearingTestSetUpViewController_setUpDetails);
  v2[18] = a1;
  v3 = *(v1 + OBJC_IVAR____TtC13HearingTestUI30HearingTestSetUpViewController_flowManager);
  v4 = *(v3 + OBJC_IVAR____TtC13HearingTestUI22HearingTestFlowManager_setupDetails);
  *(v3 + OBJC_IVAR____TtC13HearingTestUI22HearingTestFlowManager_setupDetails) = v2;

  v5 = v2[16];
  v6 = v5 != 2 && (v5 & 1) != 0 && v2[17] != 2 && v2[18] != 2;
  v7 = sub_20CD7E420();
  [v7 setEnabled_];
}

void sub_20CD800F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    if (a4 > 1)
    {
      if (a4 == 2)
      {
        v10 = sub_20CD7E420();
        [v10 hidesBusyIndicator];
        goto LABEL_13;
      }

      if (a4 != 3)
      {
LABEL_9:
        sub_20CD7FA6C(a1, a2, a3, a4);
LABEL_14:

        return;
      }

      v11 = (*(Strong + OBJC_IVAR____TtC13HearingTestUI30HearingTestSetUpViewController_flowManager) + OBJC_IVAR____TtC13HearingTestUI22HearingTestFlowManager_analyticsManager);
      v12 = *v11;
      v13 = v11[1];
      ObjectType = swift_getObjectType();
      v15 = 3;
    }

    else
    {
      if (a4)
      {
        if (a4 == 1)
        {
          v10 = sub_20CD7E420();
          [v10 showsBusyIndicator];
LABEL_13:

          goto LABEL_14;
        }

        goto LABEL_9;
      }

      v16 = (*(Strong + OBJC_IVAR____TtC13HearingTestUI30HearingTestSetUpViewController_flowManager) + OBJC_IVAR____TtC13HearingTestUI22HearingTestFlowManager_analyticsManager);
      v17 = *v16;
      v13 = v16[1];
      ObjectType = swift_getObjectType();
      v15 = 1;
    }

    v19 = v15;
    v18 = *(v13 + 48);
    swift_unknownObjectRetain();
    v18(&v19, v9, &off_2823BBD50, ObjectType, v13);

    swift_unknownObjectRelease();
  }
}

uint64_t sub_20CD80284()
{
  v1 = v0;
  v2 = (*(v0 + OBJC_IVAR____TtC13HearingTestUI30HearingTestSetUpViewController_flowManager) + OBJC_IVAR____TtC13HearingTestUI22HearingTestFlowManager_analyticsManager);
  v3 = *v2;
  v4 = v2[1];
  ObjectType = swift_getObjectType();
  v6 = *(v4 + 8);
  swift_unknownObjectRetain();
  v7 = v6(ObjectType, v4);
  swift_unknownObjectRelease();
  v8 = *(v1 + OBJC_IVAR____TtC13HearingTestUI30HearingTestSetUpViewController_setUpDetails);
  *(v7 + OBJC_IVAR____TtC13HearingTestUI28HearingTestFlowAnalyticsData_hasCongestionSelected) = v8[17] & 1;

  v10 = *v2;
  v9 = v2[1];
  v11 = swift_getObjectType();
  v12 = *(v9 + 8);
  swift_unknownObjectRetain();
  v13 = v12(v11, v9);
  swift_unknownObjectRelease();
  *(v13 + OBJC_IVAR____TtC13HearingTestUI28HearingTestFlowAnalyticsData_hasLoudEnvironmentExposureSelected) = v8[18] & 1;

  v15 = *v2;
  v14 = v2[1];
  v16 = swift_getObjectType();
  v17 = *(v14 + 8);
  swift_unknownObjectRetain();
  v18 = v17(v16, v14);
  swift_unknownObjectRelease();
  *(v18 + OBJC_IVAR____TtC13HearingTestUI28HearingTestFlowAnalyticsData_isOlderThanMinimumAge) = v8[16];
}

uint64_t sub_20CD8042C()
{
  sub_20CE13B84();
  sub_20CE13B74();
  sub_20CE13B24();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

uint64_t sub_20CD804E0()
{
  sub_20CE13B84();
  sub_20CE13B74();
  sub_20CE13B24();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

id sub_20CD80574()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HearingTestSetUpViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_20CD806C0@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC13HearingTestUI30HearingTestSetUpViewController_stepStartTime;
  swift_beginAccess();
  return sub_20CD7DC78(v1 + v3, a1);
}

uint64_t sub_20CD80910(void *a1)
{
  v2 = sub_20CE12604();
  v3 = sub_20CD7E360();
  if ((v3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x20F313610](v2, v3);
  }

  else
  {
    if ((v2 & 0x8000000000000000) != 0)
    {
      __break(1u);
      goto LABEL_12;
    }

    if (v2 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    v4 = *(v3 + 8 * v2 + 32);
  }

  v5 = sub_20CE125F4();
  if ((v5 & 0x8000000000000000) != 0)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v6 = *(v4 + 32);
  if (v5 < *(v6 + 16))
  {
    sub_20CD7C388(v6 + 40 * v5 + 32, v18);
    if (qword_27C811D60 == -1)
    {
      goto LABEL_8;
    }

    goto LABEL_15;
  }

LABEL_14:
  __break(1u);
LABEL_15:
  swift_once();
LABEL_8:
  v7 = sub_20CE13914();
  v8 = sub_20CE125C4();
  v9 = [a1 dequeueReusableCellWithIdentifier:v7 forIndexPath:v8];

  swift_getObjectType();
  result = swift_conformsToProtocol2();
  if (result)
  {
    sub_20CD7C388(v18, v17);
    v11 = OBJC_IVAR____TtC13HearingTestUI37BinaryConfirmationSelectTableViewCell_item;
    swift_beginAccess();
    sub_20CD82160(v17, v9 + v11);
    swift_endAccess();
    sub_20CDAA220();
    sub_20CD821F0(v17);
    v12 = __swift_project_boxed_opaque_existential_1(v18, v18[3]);
    v13 = v12[5];
    v14 = v12[6];
    v15 = v9;

    v16 = sub_20CE13914();

    [v15 setAccessibilityIdentifier_];

    __swift_destroy_boxed_opaque_existential_1Tm(v18);
    return v15;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_20CD80CD0(void *a1, unint64_t a2)
{
  v3 = v2;
  result = sub_20CD7E360();
  if ((result & 0xC000000000000001) != 0)
  {
    v23 = MEMORY[0x20F313610](a2, result);

    v24 = *(v23 + 16);
    v25 = *(v23 + 24);

    swift_unknownObjectRelease();
    if (v25)
    {
LABEL_5:
      v10 = sub_20CE13914();
      v11 = [a1 dequeueReusableHeaderFooterViewWithIdentifier_];

      if (v11)
      {
        v27[3] = sub_20CE12D24();
        v27[4] = MEMORY[0x277D74C30];
        __swift_allocate_boxed_opaque_existential_1(v27);
        v12 = v11;
        sub_20CE12D04();

        sub_20CE12D14();
        v13 = [objc_opt_self() hk:*MEMORY[0x277D76918] preferredFontForTextStyle:2 symbolicTraits:?];
        v14 = sub_20CE12CF4();
        sub_20CE12CD4();
        v14(v26, 0);
        v15 = [objc_opt_self() labelColor];
        v16 = sub_20CE12CF4();
        sub_20CE12CE4();
        v16(v26, 0);

        MEMORY[0x20F313180](v27);

        v18 = *(v3 + OBJC_IVAR____TtC13HearingTestUI30HearingTestSetUpViewController_automationIdentifierBase);
        v17 = *(v3 + OBJC_IVAR____TtC13HearingTestUI30HearingTestSetUpViewController_automationIdentifierBase + 8);
        v19 = MEMORY[0x277D837D0];
        sub_20CD82278(0, &unk_27C813730, MEMORY[0x277D837D0], MEMORY[0x277D84560]);
        v20 = swift_allocObject();
        *(v20 + 16) = xmmword_20CE16360;
        *(v20 + 32) = v18;
        *(v20 + 40) = v17;
        *(v20 + 48) = 0x726564616548;
        *(v20 + 56) = 0xE600000000000000;
        v27[0] = v20;
        sub_20CD82278(0, &qword_27C8121F0, v19, MEMORY[0x277D83940]);
        sub_20CD81F60();
        v21 = v12;

        sub_20CE138C4();

        v22 = sub_20CE13914();

        [v21 setAccessibilityIdentifier_];
      }

      else
      {
      }

      return v11;
    }

    return 0;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v7 = *(result + 8 * a2 + 32);

    v8 = *(v7 + 16);
    v9 = *(v7 + 24);

    if (v9)
    {
      goto LABEL_5;
    }

    return 0;
  }

  __break(1u);
  return result;
}

unint64_t sub_20CD81108(void *a1, uint64_t a2)
{
  v5 = sub_20CE12614();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v65 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_20CE12604();
  result = sub_20CD7E360();
  if ((result & 0xC000000000000001) != 0)
  {
    v12 = MEMORY[0x20F313610](v10, result);
  }

  else
  {
    if ((v10 & 0x8000000000000000) != 0)
    {
      __break(1u);
      goto LABEL_42;
    }

    if (v10 >= *((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_43:
      __break(1u);
      goto LABEL_44;
    }

    v12 = *(result + 8 * v10 + 32);
  }

  result = sub_20CE125F4();
  if ((result & 0x8000000000000000) != 0)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v13 = *(v12 + 32);
  if (result >= *(v13 + 16))
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  sub_20CD7C388(v13 + 40 * result + 32, v101);
  sub_20CD83038(0, &qword_27C812200);
  if ((swift_dynamicCast() & 1) == 0)
  {
  }

  v93 = v97;
  v94 = v98;
  v95 = v99;
  v96 = v100;
  if (BYTE1(v97))
  {
    sub_20CD820A8(&v93);
  }

  v78 = a1;
  v79 = v2;
  v14 = v93;
  result = sub_20CE125F4();
  v81 = v14;
  if (v14)
  {
    v15 = result - 1;
    if (!__OFSUB__(result, 1))
    {
      goto LABEL_16;
    }

    __break(1u);
  }

  v15 = result + 1;
  if (__OFADD__(result, 1))
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

LABEL_16:
  v16 = sub_20CE12604();
  MEMORY[0x20F311AF0](v15, v16);
  result = sub_20CE125F4();
  if ((result & 0x8000000000000000) != 0)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  v17 = *(v12 + 32);
  v18 = *(v17 + 16);
  if (result >= v18)
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  v19 = v17 + 32;
  result = sub_20CD7C388(v17 + 32 + 40 * result, v91);
  v80 = v6;
  if ((v81 & 1) == 0)
  {
    v21 = v94;
    v74 = *(&v93 + 1);
    v22 = v95;
    v23 = v96;
    v72 = *(&v95 + 1);
    *&v73 = *(&v94 + 1);
    sub_20CD7C388(v91, v90);
    v76 = v22;

    v75 = v23;

    v77 = v21;

    if (swift_dynamicCast())
    {
      v82 = v86;
      v83 = v87;
      v84 = v88;
      v85 = v89;
      v70 = v87;
      v71 = *(&v86 + 1);

      sub_20CD820A8(&v82);
    }

    else
    {
      v70 = 0;
      v71 = 0;
    }

    sub_20CD7C388(v91, v90);
    if (swift_dynamicCast())
    {
      v83 = v87;
      v84 = v88;
      v82 = v86;
      v85 = v89;
      v68 = v88;
      v69 = *(&v87 + 1);

      sub_20CD820A8(&v82);
    }

    else
    {
      v68 = 0;
      v69 = 0;
    }

    v24 = __swift_project_boxed_opaque_existential_1(v91, v92);
    v25 = v24[6];
    v66 = v24[5];
    sub_20CD81FDC(0, &qword_27C812208, &qword_27C812200, &protocol descriptor for DataSourceItem, MEMORY[0x277D84560]);
    v26 = swift_allocObject();
    v67 = xmmword_20CE16360;
    *(v26 + 16) = xmmword_20CE16360;
    *(v26 + 56) = &type metadata for BinaryConfirmationSelectItem;
    *(v26 + 64) = &off_2823BCCD8;
    v27 = swift_allocObject();
    *(v26 + 32) = v27;
    *(v27 + 16) = 256;
    *(v27 + 18) = v86;
    *(v27 + 22) = WORD2(v86);
    v28 = v77;
    *(v27 + 24) = v74;
    *(v27 + 32) = v28;
    v29 = v76;
    *(v27 + 40) = v73;
    *(v27 + 48) = v29;
    v30 = v75;
    *(v27 + 56) = v72;
    *(v27 + 64) = v30;
    *(v26 + 96) = &type metadata for BinaryConfirmationSelectItem;
    *(v26 + 104) = &off_2823BCCD8;
    v31 = swift_allocObject();
    *(v26 + 72) = v31;
    *(v31 + 16) = 1;
    v32 = v70;
    *(v31 + 24) = v71;
    *(v31 + 32) = v32;
    v33 = v68;
    *(v31 + 40) = v69;
    *(v31 + 48) = v33;
    *(v31 + 56) = v66;
    *(v31 + 64) = v25;
    v34 = *(v12 + 32);
    *(v12 + 32) = v26;

    sub_20CD82044(0, &qword_27C812210, MEMORY[0x277CC9AF8], MEMORY[0x277D84560]);
    v35 = v80;
    v36 = *(v80 + 72);
    v37 = (*(v80 + 80) + 32) & ~*(v80 + 80);
    v38 = swift_allocObject();
    *(v38 + 16) = v67;
    v39 = v38 + v37;
    v40 = *(v35 + 16);
    v40(v39, a2, v5);
    v40(v39 + v36, v9, v5);
    v41 = sub_20CE13AA4();

    v42 = v78;
    [v78 reloadRowsAtIndexPaths:v41 withRowAnimation:5];

    v43 = v42;
    goto LABEL_31;
  }

  if (v15 >= v18)
  {
LABEL_48:
    __break(1u);
    return result;
  }

  sub_20CD7C388(v19 + 40 * v15, v90);
  if (swift_dynamicCast())
  {
    v82 = v86;
    v83 = v87;
    v84 = v88;
    v85 = v89;
    v20 = v87;
    v76 = *(&v86 + 1);
    v77 = *(&v87 + 1);
    v75 = v88;

    v74 = v20;

    sub_20CD820A8(&v82);
  }

  else
  {
    v76 = 0;
    v77 = 0;
    v74 = 0;
    v75 = 0;
  }

  v71 = *(&v94 + 1);
  v72 = *(&v93 + 1);
  *&v67 = v95;
  v69 = v94;
  v70 = *(&v95 + 1);
  v68 = v96;
  v44 = __swift_project_boxed_opaque_existential_1(v91, v92);
  v45 = v44[6];
  v66 = v44[5];
  sub_20CD81FDC(0, &qword_27C812208, &qword_27C812200, &protocol descriptor for DataSourceItem, MEMORY[0x277D84560]);
  v46 = swift_allocObject();
  v73 = xmmword_20CE16360;
  *(v46 + 16) = xmmword_20CE16360;
  *(v46 + 56) = &type metadata for BinaryConfirmationSelectItem;
  *(v46 + 64) = &off_2823BCCD8;
  v47 = swift_allocObject();
  *(v46 + 32) = v47;
  *(v47 + 16) = 0;
  v48 = v74;
  *(v47 + 24) = v76;
  *(v47 + 32) = v48;
  v49 = v75;
  *(v47 + 40) = v77;
  *(v47 + 48) = v49;
  *(v47 + 56) = v66;
  *(v47 + 64) = v45;
  *(v46 + 96) = &type metadata for BinaryConfirmationSelectItem;
  *(v46 + 104) = &off_2823BCCD8;
  v50 = swift_allocObject();
  *(v46 + 72) = v50;
  *(v50 + 16) = 257;
  v51 = v71;
  v53 = v68;
  v52 = v69;
  *(v50 + 24) = v72;
  *(v50 + 32) = v52;
  v54 = v67;
  *(v50 + 40) = v51;
  *(v50 + 48) = v54;
  *(v50 + 56) = v70;
  *(v50 + 64) = v53;
  v55 = *(v12 + 32);
  *(v12 + 32) = v46;

  sub_20CD82044(0, &qword_27C812210, MEMORY[0x277CC9AF8], MEMORY[0x277D84560]);
  v56 = v80;
  v57 = *(v80 + 72);
  v58 = (*(v80 + 80) + 32) & ~*(v80 + 80);
  v59 = swift_allocObject();
  *(v59 + 16) = v73;
  v60 = v59 + v58;
  v61 = *(v56 + 16);
  v61(v60, a2, v5);
  v61(v60 + v57, v9, v5);
  v62 = sub_20CE13AA4();

  v43 = v78;
  [v78 reloadRowsAtIndexPaths:v62 withRowAnimation:5];

LABEL_31:
  v63 = sub_20CE125C4();
  [v43 deselectRowAtIndexPath:v63 animated:1];

  if (v94 | v95)
  {
    sub_20CD7FA6C(*(&v93 + 1), v94, *(&v94 + 1), v95);
  }

  sub_20CD820A8(&v93);
  v64 = v80;
  if (*(v12 + 40))
  {
    if (*(v12 + 40) == 1)
    {
      sub_20CD7FCE4(v81 ^ 1);
    }

    else
    {
      sub_20CD7FDAC(v81 ^ 1);
    }
  }

  else
  {
    sub_20CD7FC1C(v81 ^ 1);
  }

  (*(v64 + 8))(v9, v5);
  return __swift_destroy_boxed_opaque_existential_1Tm(v91);
}

BOOL _s13HearingTestUI0aB12SetUpDetailsC2eeoiySbAC_ACtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = a1[16];
  v3 = a2[16];
  if (v2 == 2)
  {
    if (v3 != 2)
    {
      return 0;
    }
  }

  else
  {
    v4 = 0;
    if (v3 == 2 || ((v3 ^ v2) & 1) != 0)
    {
      return v4;
    }
  }

  v5 = a1[17];
  v6 = a2[17];
  if (v5 == 2)
  {
    if (v6 != 2)
    {
      return 0;
    }
  }

  else
  {
    v4 = 0;
    if (v6 == 2 || ((v6 ^ v5) & 1) != 0)
    {
      return v4;
    }
  }

  v8 = a1[18];
  v4 = v8 == 2;
  v9 = a2[18];
  if (v9 != 2)
  {
    v4 = 0;
  }

  if (v8 == 2)
  {
    return v4;
  }

  v10 = v9 ^ v8 ^ 1;
  if (v9 != 2)
  {
    return v10;
  }

  return v4;
}

uint64_t type metadata accessor for HearingTestSetUpViewController()
{
  result = qword_27C812110;
  if (!qword_27C812110)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20CD81CAC()
{
  sub_20CD82044(319, &qword_281111770, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t getEnumTagSinglePayload for SetUpSection(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for SetUpSection(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_20CD81F0C()
{
  result = qword_27C8121E0;
  if (!qword_27C8121E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8121E0);
  }

  return result;
}

unint64_t sub_20CD81F60()
{
  result = qword_27C813740;
  if (!qword_27C813740)
  {
    sub_20CD82278(255, &qword_27C8121F0, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C813740);
  }

  return result;
}

void sub_20CD81FDC(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_20CD83038(255, a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_20CD82044(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_20CD82160(uint64_t a1, uint64_t a2)
{
  sub_20CD81FDC(0, &qword_27C812218, &qword_27C812200, &protocol descriptor for DataSourceItem, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_20CD821F0(uint64_t a1)
{
  sub_20CD81FDC(0, &qword_27C812218, &qword_27C812200, &protocol descriptor for DataSourceItem, MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_20CD82278(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_20CD822C8(uint64_t a1)
{
  v3 = *(a1 + OBJC_IVAR____TtC13HearingTestUI30HearingTestSetUpViewController_automationIdentifierBase);
  v2 = *(a1 + OBJC_IVAR____TtC13HearingTestUI30HearingTestSetUpViewController_automationIdentifierBase + 8);
  v4 = MEMORY[0x277D837D0];
  sub_20CD82278(0, &unk_27C813730, MEMORY[0x277D837D0], MEMORY[0x277D84560]);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_20CE16360;
  *(v5 + 32) = v3;
  *(v5 + 40) = v2;
  *(v5 + 48) = 0xD000000000000013;
  *(v5 + 56) = 0x800000020CE1B7F0;
  sub_20CD82278(0, &qword_27C8121F0, v4, MEMORY[0x277D83940]);
  sub_20CD81F60();

  v6 = sub_20CE138C4();
  v8 = v7;

  v9 = *(a1 + OBJC_IVAR____TtC13HearingTestUI30HearingTestSetUpViewController_setUpDetails);
  v10 = *(v9 + 16);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_20CE16360;
  *(v11 + 32) = v6;
  *(v11 + 40) = v8;
  *(v11 + 48) = 7562585;
  *(v11 + 56) = 0xE300000000000000;

  v12 = sub_20CE138C4();
  v37 = v13;
  v38 = v12;

  v14 = *(v9 + 16);
  if (qword_27C811DC8 != -1)
  {
    swift_once();
  }

  v36 = (v14 != 2) & (v14 ^ 1);
  v35 = v10 & 1;
  sub_20CE12354();
  v15 = MEMORY[0x277D84560];
  sub_20CD81FDC(0, &qword_27C8135A0, &qword_27C812240, MEMORY[0x277D84D98], MEMORY[0x277D84560]);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_20CE16370;
  v17 = *MEMORY[0x277CCE410];
  v18 = MEMORY[0x277D83C10];
  *(v16 + 56) = MEMORY[0x277D83B88];
  *(v16 + 64) = v18;
  *(v16 + 32) = v17;
  v19 = sub_20CE13924();
  v33 = v20;
  v34 = v19;

  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_20CE16360;
  *(v21 + 32) = v6;
  *(v21 + 40) = v8;
  *(v21 + 48) = 28494;
  *(v21 + 56) = 0xE200000000000000;
  v41 = v21;
  v22 = sub_20CE138C4();
  v24 = v23;

  sub_20CE12354();
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_20CE16370;
  *(v25 + 56) = MEMORY[0x277D83B88];
  *(v25 + 64) = MEMORY[0x277D83C10];
  *(v25 + 32) = v17;
  v26 = sub_20CE13924();
  v28 = v27;

  sub_20CD81FDC(0, &qword_27C812208, &qword_27C812200, &protocol descriptor for DataSourceItem, v15);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_20CE16360;
  *(v29 + 56) = &type metadata for BinaryConfirmationSelectItem;
  *(v29 + 64) = &off_2823BCCD8;
  v30 = swift_allocObject();
  *(v29 + 32) = v30;
  *(v30 + 16) = 0;
  *(v30 + 17) = v35;
  *(v30 + 18) = v41;
  *(v30 + 22) = WORD2(v41);
  *(v30 + 24) = 0u;
  *(v30 + 40) = 0u;
  *(v30 + 56) = v38;
  *(v30 + 64) = v37;
  *(v29 + 96) = &type metadata for BinaryConfirmationSelectItem;
  *(v29 + 104) = &off_2823BCCD8;
  v31 = swift_allocObject();
  *(v29 + 72) = v31;
  *(v31 + 16) = 1;
  *(v31 + 17) = v36;
  *(v31 + 18) = v39;
  *(v31 + 22) = v40;
  *(v31 + 24) = 0;
  *(v31 + 32) = 0;
  *(v31 + 40) = v34;
  *(v31 + 48) = v33;
  *(v31 + 56) = v22;
  *(v31 + 64) = v24;
  type metadata accessor for DataSourceSection();
  result = swift_allocObject();
  *(result + 16) = v26;
  *(result + 24) = v28;
  *(result + 32) = v29;
  *(result + 40) = 0;
  return result;
}

uint64_t sub_20CD827D0(uint64_t a1)
{
  v3 = *(a1 + OBJC_IVAR____TtC13HearingTestUI30HearingTestSetUpViewController_automationIdentifierBase);
  v2 = *(a1 + OBJC_IVAR____TtC13HearingTestUI30HearingTestSetUpViewController_automationIdentifierBase + 8);
  v4 = MEMORY[0x277D837D0];
  sub_20CD82278(0, &unk_27C813730, MEMORY[0x277D837D0], MEMORY[0x277D84560]);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_20CE16360;
  *(v5 + 32) = v3;
  *(v5 + 40) = v2;
  *(v5 + 48) = 0x69747365676E6F43;
  *(v5 + 56) = 0xEA00000000006E6FLL;
  sub_20CD82278(0, &qword_27C8121F0, v4, MEMORY[0x277D83940]);
  sub_20CD81F60();

  v29 = sub_20CE138C4();
  v7 = v6;

  if (qword_27C811DC8 != -1)
  {
    swift_once();
  }

  v8 = sub_20CE12354();
  v32 = v9;
  v33 = v8;
  v10 = *(*(a1 + OBJC_IVAR____TtC13HearingTestUI30HearingTestSetUpViewController_setUpDetails) + 17);
  v11 = sub_20CE12354();
  v30 = v12;
  v31 = v11;
  v13 = sub_20CE12354();
  v27 = v14;
  v28 = v13;
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_20CE16360;
  *(v15 + 32) = v29;
  *(v15 + 40) = v7;
  *(v15 + 48) = 7562585;
  *(v15 + 56) = 0xE300000000000000;

  v16 = sub_20CE138C4();
  v18 = v17;

  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_20CE16360;
  *(v19 + 32) = v29;
  *(v19 + 40) = v7;
  *(v19 + 48) = 28494;
  *(v19 + 56) = 0xE200000000000000;
  v36 = v19;
  v20 = sub_20CE138C4();
  v22 = v21;

  sub_20CD81FDC(0, &qword_27C812208, &qword_27C812200, &protocol descriptor for DataSourceItem, MEMORY[0x277D84560]);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_20CE16360;
  *(v23 + 56) = &type metadata for BinaryConfirmationSelectItem;
  *(v23 + 64) = &off_2823BCCD8;
  v24 = swift_allocObject();
  *(v23 + 32) = v24;
  *(v24 + 16) = 0;
  *(v24 + 17) = v10 & 1;
  *(v24 + 18) = v34;
  *(v24 + 22) = v35;
  *(v24 + 24) = v31;
  *(v24 + 32) = v30;
  *(v24 + 40) = v28;
  *(v24 + 48) = v27;
  *(v24 + 56) = v16;
  *(v24 + 64) = v18;
  *(v23 + 96) = &type metadata for BinaryConfirmationSelectItem;
  *(v23 + 104) = &off_2823BCCD8;
  v25 = swift_allocObject();
  *(v23 + 72) = v25;
  *(v25 + 16) = 1;
  *(v25 + 17) = ((v10 != 2) ^ v10) & 1;
  *(v25 + 18) = v36;
  *(v25 + 22) = WORD2(v36);
  *(v25 + 24) = 0u;
  *(v25 + 40) = 0u;
  *(v25 + 56) = v20;
  *(v25 + 64) = v22;
  type metadata accessor for DataSourceSection();
  result = swift_allocObject();
  *(result + 16) = v33;
  *(result + 24) = v32;
  *(result + 32) = v23;
  *(result + 40) = 1;
  return result;
}

uint64_t sub_20CD82BFC(uint64_t a1)
{
  if (qword_27C811DC8 != -1)
  {
    swift_once();
  }

  v2 = sub_20CE12354();
  v32 = v3;
  v33 = v2;
  v5 = *(a1 + OBJC_IVAR____TtC13HearingTestUI30HearingTestSetUpViewController_automationIdentifierBase);
  v4 = *(a1 + OBJC_IVAR____TtC13HearingTestUI30HearingTestSetUpViewController_automationIdentifierBase + 8);
  v6 = MEMORY[0x277D837D0];
  sub_20CD82278(0, &unk_27C813730, MEMORY[0x277D837D0], MEMORY[0x277D84560]);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_20CE16360;
  *(v7 + 32) = v5;
  *(v7 + 40) = v4;
  *(v7 + 48) = 0x73696F4E64756F4CLL;
  *(v7 + 56) = 0xE900000000000065;
  sub_20CD82278(0, &qword_27C8121F0, v6, MEMORY[0x277D83940]);
  sub_20CD81F60();

  v8 = sub_20CE138C4();
  v10 = v9;

  v11 = *(*(a1 + OBJC_IVAR____TtC13HearingTestUI30HearingTestSetUpViewController_setUpDetails) + 18);
  v12 = sub_20CE12354();
  v30 = v13;
  v31 = v12;
  v14 = sub_20CE12354();
  v28 = v15;
  v29 = v14;
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_20CE16360;
  *(v16 + 32) = v8;
  *(v16 + 40) = v10;
  *(v16 + 48) = 7562585;
  *(v16 + 56) = 0xE300000000000000;

  v17 = sub_20CE138C4();
  v19 = v18;

  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_20CE16360;
  *(v20 + 32) = v8;
  *(v20 + 40) = v10;
  *(v20 + 48) = 28494;
  *(v20 + 56) = 0xE200000000000000;
  v36 = v20;
  v21 = sub_20CE138C4();
  v23 = v22;

  sub_20CD81FDC(0, &qword_27C812208, &qword_27C812200, &protocol descriptor for DataSourceItem, MEMORY[0x277D84560]);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_20CE16360;
  *(v24 + 56) = &type metadata for BinaryConfirmationSelectItem;
  *(v24 + 64) = &off_2823BCCD8;
  v25 = swift_allocObject();
  *(v24 + 32) = v25;
  *(v25 + 16) = 0;
  *(v25 + 17) = v11 & 1;
  *(v25 + 18) = v34;
  *(v25 + 22) = v35;
  *(v25 + 24) = v31;
  *(v25 + 32) = v30;
  *(v25 + 40) = v29;
  *(v25 + 48) = v28;
  *(v25 + 56) = v17;
  *(v25 + 64) = v19;
  *(v24 + 96) = &type metadata for BinaryConfirmationSelectItem;
  *(v24 + 104) = &off_2823BCCD8;
  v26 = swift_allocObject();
  *(v24 + 72) = v26;
  *(v26 + 16) = 1;
  *(v26 + 17) = ((v11 != 2) ^ v11) & 1;
  *(v26 + 18) = v36;
  *(v26 + 22) = WORD2(v36);
  *(v26 + 24) = 0u;
  *(v26 + 40) = 0u;
  *(v26 + 56) = v21;
  *(v26 + 64) = v23;
  type metadata accessor for DataSourceSection();
  result = swift_allocObject();
  *(result + 16) = v33;
  *(result + 24) = v32;
  *(result + 32) = v24;
  *(result + 40) = 2;
  return result;
}

uint64_t sub_20CD83038(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_20CD83094(uint64_t a1, uint64_t a2)
{
  sub_20CD82044(0, &qword_281111770, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_20CD83128(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

id sub_20CD831D0(uint64_t a1, uint64_t *a2, SEL *a3)
{
  v4 = *a2;
  v5 = [objc_opt_self() *a3];
  if (qword_27C811DC8 != -1)
  {
    swift_once();
  }

  sub_20CE12354();
  v6 = sub_20CE13914();

  [v5 setTitle:v6 forState:{0, 0xE000000000000000}];

  [v5 addTarget:a1 action:sel_continueButtonTapped_ forControlEvents:64];
  v8 = *(a1 + OBJC_IVAR____TtC13HearingTestUI38HearingTestInterruptionsViewController_automationIdentifierBase);
  v7 = *(a1 + OBJC_IVAR____TtC13HearingTestUI38HearingTestInterruptionsViewController_automationIdentifierBase + 8);
  sub_20CD84DC0(0, &unk_27C813730, MEMORY[0x277D84560]);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_20CE16360;
  *(v9 + 32) = v8;
  *(v9 + 40) = v7;
  strcpy((v9 + 48), "ContinueButton");
  *(v9 + 63) = -18;
  sub_20CD84DC0(0, &qword_27C8121F0, MEMORY[0x277D83940]);
  sub_20CD81F60();
  v10 = v5;

  sub_20CE138C4();

  v11 = sub_20CE13914();

  [v10 setAccessibilityIdentifier_];

  return v10;
}

id sub_20CD83478(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  v5 = *a1;
  v6 = *(v4 + *a1);
  if (v6)
  {
    v7 = *(v4 + *a1);
  }

  else
  {
    v8 = a4(v4);
    v9 = *(v4 + v5);
    *(v4 + v5) = v8;
    v7 = v8;

    v6 = 0;
  }

  v10 = v6;
  return v7;
}

id sub_20CD834DC(uint64_t a1, uint64_t *a2, SEL *a3)
{
  v4 = *a2;
  v5 = [objc_opt_self() *a3];
  if (qword_27C811DC8 != -1)
  {
    swift_once();
  }

  sub_20CE12354();
  v6 = sub_20CE13914();

  [v5 setTitle:v6 forState:{0, 0xE000000000000000}];

  [v5 addTarget:a1 action:sel_didTapEndTest forControlEvents:64];
  v8 = *(a1 + OBJC_IVAR____TtC13HearingTestUI38HearingTestInterruptionsViewController_automationIdentifierBase);
  v7 = *(a1 + OBJC_IVAR____TtC13HearingTestUI38HearingTestInterruptionsViewController_automationIdentifierBase + 8);
  sub_20CD84DC0(0, &unk_27C813730, MEMORY[0x277D84560]);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_20CE16360;
  *(v9 + 32) = v8;
  *(v9 + 40) = v7;
  strcpy((v9 + 48), "EndTestButton");
  *(v9 + 62) = -4864;
  sub_20CD84DC0(0, &qword_27C8121F0, MEMORY[0x277D83940]);
  sub_20CD81F60();
  v10 = v5;

  sub_20CE138C4();

  v11 = sub_20CE13914();

  [v10 setAccessibilityIdentifier_];

  return v10;
}

id sub_20CD83744(uint64_t a1)
{
  v2 = [objc_opt_self() boldButton];
  if (qword_27C811DC8 != -1)
  {
    swift_once();
  }

  sub_20CE12354();
  v3 = sub_20CE13914();

  [v2 setTitle:v3 forState:{0, 0xE000000000000000}];

  [v2 addTarget:a1 action:sel_startOverButtonTapped_ forControlEvents:64];
  v5 = *(a1 + OBJC_IVAR____TtC13HearingTestUI38HearingTestInterruptionsViewController_automationIdentifierBase);
  v4 = *(a1 + OBJC_IVAR____TtC13HearingTestUI38HearingTestInterruptionsViewController_automationIdentifierBase + 8);
  sub_20CD84DC0(0, &unk_27C813730, MEMORY[0x277D84560]);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_20CE16360;
  *(v6 + 32) = v5;
  *(v6 + 40) = v4;
  *(v6 + 48) = 0x65764F7472617453;
  *(v6 + 56) = 0xEF6E6F7474754272;
  sub_20CD84DC0(0, &qword_27C8121F0, MEMORY[0x277D83940]);
  sub_20CD81F60();
  v7 = v2;

  sub_20CE138C4();

  v8 = sub_20CE13914();

  [v7 setAccessibilityIdentifier_];

  return v7;
}

id sub_20CD839B0(uint64_t *a1, uint64_t (*a2)(uint64_t))
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = *(v2 + *a1);
  }

  else
  {
    v6 = a2(v2);
    v7 = *(v2 + v3);
    *(v2 + v3) = v6;
    v5 = v6;

    v4 = 0;
  }

  v8 = v4;
  return v5;
}

id sub_20CD83A14(uint64_t a1)
{
  v2 = [objc_opt_self() linkButton];
  if (qword_27C811DC8 != -1)
  {
    swift_once();
  }

  sub_20CE12354();
  v3 = sub_20CE13914();

  [v2 setTitle:v3 forState:{0, 0xE000000000000000}];

  [v2 addTarget:a1 action:sel_didTapDone forControlEvents:64];
  v5 = *(a1 + OBJC_IVAR____TtC13HearingTestUI38HearingTestInterruptionsViewController_automationIdentifierBase);
  v4 = *(a1 + OBJC_IVAR____TtC13HearingTestUI38HearingTestInterruptionsViewController_automationIdentifierBase + 8);
  sub_20CD84DC0(0, &unk_27C813730, MEMORY[0x277D84560]);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_20CE16360;
  *(v6 + 32) = v5;
  *(v6 + 40) = v4;
  *(v6 + 48) = 0x74747542656E6F44;
  *(v6 + 56) = 0xEA00000000006E6FLL;
  sub_20CD84DC0(0, &qword_27C8121F0, MEMORY[0x277D83940]);
  sub_20CD81F60();
  v7 = v2;

  sub_20CE138C4();

  v8 = sub_20CE13914();

  [v7 setAccessibilityIdentifier_];

  return v7;
}

id sub_20CD83D04(char *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v9 = *a1;
  v10 = &v4[OBJC_IVAR____TtC13HearingTestUI38HearingTestInterruptionsViewController_continueButtonHandler];
  *v10 = 0;
  v10[1] = 0;
  v11 = &v4[OBJC_IVAR____TtC13HearingTestUI38HearingTestInterruptionsViewController_startOverButtonHandler];
  *v11 = 0;
  v11[1] = 0;
  v12 = &v4[OBJC_IVAR____TtC13HearingTestUI38HearingTestInterruptionsViewController_doneButtonHandler];
  *v12 = 0;
  v12[1] = 0;
  v13 = &v4[OBJC_IVAR____TtC13HearingTestUI38HearingTestInterruptionsViewController_endTestButtonHandler];
  *v13 = 0;
  v13[1] = 0;
  v14 = OBJC_IVAR____TtC13HearingTestUI38HearingTestInterruptionsViewController_automationIdentifierBase;
  if (qword_27C811D30 != -1)
  {
    swift_once();
  }

  v15 = &v5[v14];
  v17 = qword_27C817868;
  v16 = unk_27C817870;
  sub_20CD84DC0(0, &unk_27C813730, MEMORY[0x277D84560]);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_20CE16360;
  *(v18 + 32) = v17;
  *(v18 + 40) = v16;
  strcpy((v18 + 48), "Interruption");
  *(v18 + 61) = 0;
  *(v18 + 62) = -5120;
  v30 = v18;
  sub_20CD84DC0(0, &qword_27C8121F0, MEMORY[0x277D83940]);
  sub_20CD81F60();

  v19 = sub_20CE138C4();
  v21 = v20;

  *v15 = v19;
  v15[1] = v21;
  v22 = OBJC_IVAR____TtC13HearingTestUI38HearingTestInterruptionsViewController_interruptionStartTime;
  v23 = sub_20CE124E4();
  (*(*(v23 - 8) + 56))(&v5[v22], 1, 1, v23);
  *&v5[OBJC_IVAR____TtC13HearingTestUI38HearingTestInterruptionsViewController____lazy_storage___continueButton] = 0;
  *&v5[OBJC_IVAR____TtC13HearingTestUI38HearingTestInterruptionsViewController____lazy_storage___linkContinueButton] = 0;
  *&v5[OBJC_IVAR____TtC13HearingTestUI38HearingTestInterruptionsViewController____lazy_storage___boldEndTestButton] = 0;
  *&v5[OBJC_IVAR____TtC13HearingTestUI38HearingTestInterruptionsViewController____lazy_storage___endTestButton] = 0;
  *&v5[OBJC_IVAR____TtC13HearingTestUI38HearingTestInterruptionsViewController____lazy_storage___startOverButton] = 0;
  *&v5[OBJC_IVAR____TtC13HearingTestUI38HearingTestInterruptionsViewController____lazy_storage___doneButton] = 0;
  v5[OBJC_IVAR____TtC13HearingTestUI38HearingTestInterruptionsViewController_interruptionType] = v9;
  sub_20CDD9DF0();
  v24 = sub_20CE13914();

  LOBYTE(v30) = v9;
  sub_20CDD9F8C(a2, a3);

  v25 = sub_20CE13914();

  v29.receiver = v5;
  v29.super_class = type metadata accessor for HearingTestInterruptionsViewController();
  v26 = objc_msgSendSuper2(&v29, sel_initWithTitle_detailText_icon_contentLayout_, v24, v25, 0, a4);

  v27 = v26;
  sub_20CD83FF4();

  return v27;
}

void sub_20CD83FF4()
{
  v1 = v0[OBJC_IVAR____TtC13HearingTestUI38HearingTestInterruptionsViewController_interruptionType];
  switch(v1)
  {
    case 2:
      goto LABEL_4;
    case 7:
      v6 = [v0 buttonTray];
      v7 = sub_20CD83418();
      [v6 addButton_];

      v4 = [v0 buttonTray];
      v5 = sub_20CD831A0();
      goto LABEL_6;
    case 5:
LABEL_4:
      v2 = [v0 buttonTray];
      v3 = sub_20CD83724();
      [v2 addButton_];

      v4 = [v0 buttonTray];
      v5 = sub_20CD83990();
LABEL_6:
      v13 = v5;
      [v4 addButton_];

      return;
  }

  v8 = [v0 buttonTray];
  v9 = sub_20CD83170();
  [v8 addButton_];

  v10 = [v0 buttonTray];
  v11 = sub_20CD83448();
  [v10 addButton_];

  v12 = *&v0[OBJC_IVAR____TtC13HearingTestUI38HearingTestInterruptionsViewController____lazy_storage___continueButton];

  [v12 setEnabled_];
}

uint64_t sub_20CD8420C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  sub_20CE13B84();
  sub_20CE13B74();
  sub_20CE13B24();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_unknownObjectRetain();
  v7 = a1;
  sub_20CE13FC4();
  swift_unknownObjectRelease();
  v8 = &v7[*a5];
  v9 = *v8;
  if (*v8)
  {
    v10 = *(v8 + 1);

    v9(v11);
    sub_20CD84E24(v9);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v13);
}

uint64_t sub_20CD8433C(char *a1, uint64_t a2, uint64_t a3, void *a4)
{
  sub_20CE13B84();
  sub_20CE13B74();
  sub_20CE13B24();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v6 = &a1[*a4];
  v7 = *v6;
  if (*v6)
  {
    v8 = *(v6 + 1);
    v9 = a1;
    v10 = sub_20CD84E14(v7);
    v7(v10);

    sub_20CD84E24(v7);
  }
}

void sub_20CD84424()
{
  v4.receiver = v0;
  v4.super_class = type metadata accessor for HearingTestInterruptionsViewController();
  objc_msgSendSuper2(&v4, sel_viewDidLoad);
  v1 = [v0 contentView];
  v2 = [objc_opt_self() clearColor];
  [v1 setBackgroundColor_];

  v3 = [v0 headerView];
  [v3 setTitleStyle_];

  sub_20CD8478C();
  sub_20CD8478C();
}

uint64_t type metadata accessor for HearingTestInterruptionsViewController()
{
  result = qword_2811116E8;
  if (!qword_2811116E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20CD8478C()
{
  v1 = v0;
  v2 = [v0 headerView];
  v4 = *&v0[OBJC_IVAR____TtC13HearingTestUI38HearingTestInterruptionsViewController_automationIdentifierBase];
  v3 = *&v0[OBJC_IVAR____TtC13HearingTestUI38HearingTestInterruptionsViewController_automationIdentifierBase + 8];
  sub_20CD84DC0(0, &unk_27C813730, MEMORY[0x277D84560]);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_20CE16360;
  *(v5 + 32) = v4;
  *(v5 + 40) = v3;
  *(v5 + 48) = 0x656C746954;
  *(v5 + 56) = 0xE500000000000000;
  sub_20CD84DC0(0, &qword_27C8121F0, MEMORY[0x277D83940]);
  sub_20CD81F60();

  sub_20CE138C4();

  v6 = sub_20CE13914();

  [v2 setTitleAccessibilityIdentifier_];

  v7 = [v1 headerView];
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_20CE16360;
  *(v8 + 32) = v4;
  *(v8 + 40) = v3;
  *(v8 + 48) = 2036625218;
  *(v8 + 56) = 0xE400000000000000;

  sub_20CE138C4();

  v9 = sub_20CE13914();

  [v7 setDetailTextAccessibilityIdentifier_];
}

void sub_20CD849AC()
{
  if (!qword_281111770)
  {
    sub_20CE124E4();
    v0 = sub_20CE13F44();
    if (!v1)
    {
      atomic_store(v0, &qword_281111770);
    }
  }
}

id HearingTestInterruptionsViewController.__allocating_init(title:detailText:symbolName:contentLayout:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v12 = sub_20CE13914();

  if (!a4)
  {
    v13 = 0;
    if (a6)
    {
      goto LABEL_3;
    }

LABEL_5:
    v14 = 0;
    goto LABEL_6;
  }

  v13 = sub_20CE13914();

  if (!a6)
  {
    goto LABEL_5;
  }

LABEL_3:
  v14 = sub_20CE13914();

LABEL_6:
  v15 = [objc_allocWithZone(v8) initWithTitle:v12 detailText:v13 symbolName:v14 contentLayout:a7];

  return v15;
}

id HearingTestInterruptionsViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HearingTestInterruptionsViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_20CD84CE0()
{
  sub_20CD849AC();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_20CD84DC0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void))
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

uint64_t sub_20CD84E14(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_20CD84E24(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

void sub_20CD84E34()
{
  v1 = v0;
  v2 = (v0 + OBJC_IVAR____TtC13HearingTestUI38HearingTestInterruptionsViewController_continueButtonHandler);
  *v2 = 0;
  v2[1] = 0;
  v3 = (v0 + OBJC_IVAR____TtC13HearingTestUI38HearingTestInterruptionsViewController_startOverButtonHandler);
  *v3 = 0;
  v3[1] = 0;
  v4 = (v0 + OBJC_IVAR____TtC13HearingTestUI38HearingTestInterruptionsViewController_doneButtonHandler);
  *v4 = 0;
  v4[1] = 0;
  v5 = (v0 + OBJC_IVAR____TtC13HearingTestUI38HearingTestInterruptionsViewController_endTestButtonHandler);
  *v5 = 0;
  v5[1] = 0;
  v6 = OBJC_IVAR____TtC13HearingTestUI38HearingTestInterruptionsViewController_automationIdentifierBase;
  if (qword_27C811D30 != -1)
  {
    swift_once();
  }

  v7 = (v1 + v6);
  v9 = qword_27C817868;
  v8 = unk_27C817870;
  sub_20CD84DC0(0, &unk_27C813730, MEMORY[0x277D84560]);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_20CE16360;
  *(v10 + 32) = v9;
  *(v10 + 40) = v8;
  strcpy((v10 + 48), "Interruption");
  *(v10 + 61) = 0;
  *(v10 + 62) = -5120;
  sub_20CD84DC0(0, &qword_27C8121F0, MEMORY[0x277D83940]);
  sub_20CD81F60();

  v11 = sub_20CE138C4();
  v13 = v12;

  *v7 = v11;
  v7[1] = v13;
  v14 = OBJC_IVAR____TtC13HearingTestUI38HearingTestInterruptionsViewController_interruptionStartTime;
  v15 = sub_20CE124E4();
  (*(*(v15 - 8) + 56))(v1 + v14, 1, 1, v15);
  *(v1 + OBJC_IVAR____TtC13HearingTestUI38HearingTestInterruptionsViewController____lazy_storage___continueButton) = 0;
  *(v1 + OBJC_IVAR____TtC13HearingTestUI38HearingTestInterruptionsViewController____lazy_storage___linkContinueButton) = 0;
  *(v1 + OBJC_IVAR____TtC13HearingTestUI38HearingTestInterruptionsViewController____lazy_storage___boldEndTestButton) = 0;
  *(v1 + OBJC_IVAR____TtC13HearingTestUI38HearingTestInterruptionsViewController____lazy_storage___endTestButton) = 0;
  *(v1 + OBJC_IVAR____TtC13HearingTestUI38HearingTestInterruptionsViewController____lazy_storage___startOverButton) = 0;
  *(v1 + OBJC_IVAR____TtC13HearingTestUI38HearingTestInterruptionsViewController____lazy_storage___doneButton) = 0;
  sub_20CE141B4();
  __break(1u);
}

uint64_t sub_20CD85070(uint64_t a1)
{
  sub_20CD849AC();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_20CD8518C(uint64_t a1, uint64_t *a2)
{
  v3 = sub_20CE12CB4();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  return sub_20CE12CA4();
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

uint64_t sub_20CD85268()
{
  v1 = v0[7];
  v2 = v0[8];
  __swift_project_boxed_opaque_existential_1(v0 + 4, v1);
  (*(v2 + 8))(v7, v1, v2);
  sub_20CD85360(v7);
  sub_20CD85934(v7);
  v3 = v0[7];
  v4 = v0[8];
  __swift_project_boxed_opaque_existential_1(v0 + 4, v3);
  v7[3] = type metadata accessor for NoiseDataProvider();
  v7[4] = &off_2823BBDD8;
  v7[0] = v0;
  sub_20CD85988();

  v5 = sub_20CE13D44();
  (*(v4 + 16))(v7, v5, v3, v4);

  return __swift_destroy_boxed_opaque_existential_1Tm(v7);
}

uint64_t sub_20CD85360(uint64_t a1)
{
  sub_20CD85764(a1, v4);
  swift_beginAccess();
  sub_20CD857C0(v4, v1 + 88);
  swift_endAccess();
  if (!swift_unknownObjectWeakLoadStrong())
  {
    return sub_20CD858D8(v4);
  }

  sub_20CD85874(v1 + 88, v3);
  sub_20CE13B84();
  sub_20CE13B74();
  sub_20CE13B24();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_20CDA95EC(v3);
  swift_unknownObjectRelease();
  sub_20CD858D8(v3);
  sub_20CD858D8(v4);
}

uint64_t sub_20CD8546C()
{
  sub_20CD758EC(v0 + 16);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 32));
  v1 = *(v0 + 80);

  sub_20CD858D8(v0 + 88);

  return swift_deallocClassInstance();
}

uint64_t sub_20CD854E0()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 80);

  return v1;
}

uint64_t sub_20CD8552C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return sub_20CDA3DD4(a1, a2, WitnessTable);
}

uint64_t sub_20CD855B4()
{
  v1 = *v0;
  sub_20CE14384();
  v2 = *(v1 + 72);
  v3 = *(v1 + 80);
  sub_20CE139C4();
  return sub_20CE143B4();
}

uint64_t sub_20CD855FC()
{
  v1 = *(*v0 + 72);
  v2 = *(*v0 + 80);
  return sub_20CE139C4();
}

uint64_t sub_20CD85608()
{
  sub_20CE14384();
  v1 = *(*v0 + 72);
  v2 = *(*v0 + 80);
  sub_20CE139C4();
  return sub_20CE143B4();
}

uint64_t sub_20CD8564C(uint64_t a1, uint64_t a2)
{
  if (*(*a1 + 72) == *(*a2 + 72) && *(*a1 + 80) == *(*a2 + 80))
  {
    return 1;
  }

  else
  {
    return sub_20CE14284();
  }
}

uint64_t sub_20CD856E0(uint64_t a1)
{
  result = sub_20CD85724(&qword_27C812300);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_20CD85724(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for NoiseDataProvider();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_20CD857C0(uint64_t a1, uint64_t a2)
{
  sub_20CD85824();
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

void sub_20CD85824()
{
  if (!qword_27C812308)
  {
    v0 = sub_20CE13F44();
    if (!v1)
    {
      atomic_store(v0, &qword_27C812308);
    }
  }
}

uint64_t sub_20CD85874(uint64_t a1, uint64_t a2)
{
  sub_20CD85824();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20CD858D8(uint64_t a1)
{
  sub_20CD85824();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_20CD85988()
{
  result = qword_27C812AB0;
  if (!qword_27C812AB0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27C812AB0);
  }

  return result;
}

uint64_t sub_20CD859D4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_20CD85A1C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_20CD85A68(unsigned __int8 a1)
{
  if (a1 >> 6 && a1 >> 6 != 1)
  {
    if (qword_27C811DC8 != -1)
    {
      swift_once();
    }

    return sub_20CE12354();
  }

  else
  {
    if (qword_27C811DC8 != -1)
    {
      swift_once();
    }

    v1 = sub_20CE12354();

    return v1;
  }
}

uint64_t sub_20CD85C18(unsigned __int8 a1)
{
  v1 = 0xD000000000000012;
  v2 = "Results.SetUpHearingAidButton";
  if (a1 >> 6 == 1)
  {
    v1 = 0xD00000000000001ELL;
    v2 = "ULTS_HEARING_AID_UPDATE";
  }

  if (a1 >> 6)
  {
    v3 = v1;
  }

  else
  {
    v3 = 0xD00000000000001DLL;
  }

  if (a1 >> 6)
  {
    v4 = v2;
  }

  else
  {
    v4 = "Results.SetUpMediaAssistButton";
  }

  if (qword_27C811D30 != -1)
  {
    swift_once();
  }

  v5 = v4 | 0x8000000000000000;
  v7 = qword_27C817868;
  v6 = unk_27C817870;
  sub_20CD84DC0(0, &unk_27C813730, MEMORY[0x277D84560]);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_20CE16360;
  *(v8 + 32) = v7;
  *(v8 + 40) = v6;
  *(v8 + 48) = v3;
  *(v8 + 56) = v5;
  sub_20CD84DC0(0, &qword_27C8121F0, MEMORY[0x277D83940]);
  sub_20CD81F60();

  v9 = sub_20CE138C4();

  return v9;
}

uint64_t sub_20CD85D90(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 >> 6)
  {
    if (v2 >> 6 == 1)
    {
      if ((v3 & 0xC0) != 0x40)
      {
        return 0;
      }

      return (v3 ^ v2 ^ 1) & 1;
    }

    if (v3 == 128)
    {
      return 1;
    }
  }

  else if (v3 < 0x40)
  {
    return (v3 ^ v2 ^ 1) & 1;
  }

  return 0;
}

uint64_t sub_20CD85DEC(char a1)
{
  if (!a1)
  {
    if (qword_27C811DC8 == -1)
    {
      return sub_20CE12354();
    }

    goto LABEL_9;
  }

  if (a1 == 1)
  {
    if (qword_27C811DC8 == -1)
    {
      return sub_20CE12354();
    }

    goto LABEL_9;
  }

  if (qword_27C811DC8 != -1)
  {
LABEL_9:
    swift_once();
  }

  return sub_20CE12354();
}

uint64_t _s9ViewModelV17PrimaryButtonModeOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0x7E)
  {
    goto LABEL_17;
  }

  if (a2 + 130 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 130) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 130;
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

      return (*a1 | (v4 << 8)) - 130;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 130;
    }
  }

LABEL_17:
  v6 = ((*a1 >> 6) & 0xFFFFFF83 | (4 * ((*a1 >> 1) & 0x1F))) ^ 0x7F;
  if (v6 >= 0x7D)
  {
    v6 = -1;
  }

  return v6 + 1;
}

uint64_t _s9ViewModelV17PrimaryButtonModeOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 130 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 130) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0x7E)
  {
    v4 = 0;
  }

  if (a2 > 0x7D)
  {
    v5 = ((a2 - 126) >> 8) + 1;
    *result = a2 - 126;
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
    *result = 2 * (((-a2 >> 2) & 0x1F) - 32 * a2);
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_20CD860B8(_BYTE *a1)
{
  v1 = *a1;
  if (v1 >= 0)
  {
    return *a1 >> 6;
  }

  else
  {
    return v1 & 1 | 2u;
  }
}

_BYTE *sub_20CD860E4(_BYTE *result, unsigned int a2)
{
  if (a2 < 2)
  {
    *result = *result & 1 | (a2 << 6);
  }

  else
  {
    *result = a2 & 1 | 0x80;
  }

  return result;
}

unint64_t sub_20CD86124()
{
  result = qword_27C812310;
  if (!qword_27C812310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C812310);
  }

  return result;
}

void sub_20CD86178(void *a1@<X0>, char *a2@<X8>)
{
  v4 = [a1 hearingLevelSummary];
  v5 = [v4 leftEarMetrics];

  v6 = [v5 averageSensitivity];
  v7 = [a1 hearingLevelSummary];
  v8 = [v7 rightEarMetrics];

  v9 = [v8 averageSensitivity];
  if (v6)
  {
    v10 = v9 == 0;
  }

  else
  {
    v10 = 1;
  }

  if (v10)
  {
    if (qword_27C811D28 != -1)
    {
      swift_once();
    }

    v11 = sub_20CE12CB4();
    __swift_project_value_buffer(v11, qword_27C8177E0);
    v12 = sub_20CE12C94();
    v13 = sub_20CE13CB4();
    if (!os_log_type_enabled(v12, v13))
    {
      goto LABEL_25;
    }

    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v32 = v15;
    *v14 = 136446466;
    *(v14 + 4) = sub_20CD96DCC(0x6E656D6D6F636552, 0xEE006E6F69746164, &v32);
    *(v14 + 12) = 2080;
    v16 = sub_20CE13974();
    v18 = sub_20CD96DCC(v16, v17, &v32);

    *(v14 + 14) = v18;
    v19 = "[%{public}s] Missing metrics for one or both of the ears. Defaulting to %s.";
    goto LABEL_24;
  }

  v20 = HKHearingLevelClassificationForSensitivity();
  v21 = HKHearingLevelClassificationForSensitivity();
  if (!v20 || !v21)
  {
    if (qword_27C811D28 != -1)
    {
      swift_once();
    }

    v24 = sub_20CE12CB4();
    __swift_project_value_buffer(v24, qword_27C8177E0);
    v12 = sub_20CE12C94();
    v13 = sub_20CE13CB4();
    if (!os_log_type_enabled(v12, v13))
    {
      goto LABEL_25;
    }

    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v32 = v15;
    *v14 = 136446466;
    *(v14 + 4) = sub_20CD96DCC(0x6E656D6D6F636552, 0xEE006E6F69746164, &v32);
    *(v14 + 12) = 2080;
    v25 = sub_20CE13974();
    v27 = sub_20CD96DCC(v25, v26, &v32);

    *(v14 + 14) = v27;
    v19 = "[%{public}s] Classification unavailable for one or both of the ears. Defaulting to %s.";
    goto LABEL_24;
  }

  if (v21 <= v20)
  {
    v22 = v20;
  }

  else
  {
    v22 = v21;
  }

  if (v22 > 2)
  {
    if (v22 != 3)
    {
      if (v22 == 4 || v22 == 5)
      {

        v23 = 6;
        goto LABEL_26;
      }

      goto LABEL_33;
    }

    goto LABEL_29;
  }

  if (v22 != 1)
  {
    if (v22 != 2)
    {
LABEL_33:
      if (qword_27C811D28 != -1)
      {
        swift_once();
      }

      v28 = sub_20CE12CB4();
      __swift_project_value_buffer(v28, qword_27C8177E0);
      v12 = sub_20CE12C94();
      v13 = sub_20CE13CB4();
      if (!os_log_type_enabled(v12, v13))
      {
        goto LABEL_25;
      }

      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v32 = v15;
      *v14 = 136446466;
      *(v14 + 4) = sub_20CD96DCC(0x6E656D6D6F636552, 0xEE006E6F69746164, &v32);
      *(v14 + 12) = 2080;
      v29 = sub_20CE13974();
      v31 = sub_20CD96DCC(v29, v30, &v32);

      *(v14 + 14) = v31;
      v19 = "[%{public}s] Unknown case of HKHearingLevelClassification. Defaulting to %s";
LABEL_24:
      _os_log_impl(&dword_20CD70000, v12, v13, v19, v14, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x20F314110](v15, -1, -1);
      MEMORY[0x20F314110](v14, -1, -1);
LABEL_25:

      v23 = 0;
      goto LABEL_26;
    }

LABEL_29:

    v23 = 5;
    goto LABEL_26;
  }

  sub_20CD866A8(a1, &v32);

  v23 = v32;
  if (v32 == 7)
  {
    v23 = 0;
  }

LABEL_26:
  *a2 = v23;
}

void sub_20CD866A8(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = [a1 hearingLevelSummary];
  v5 = [v4 leftEarMetrics];

  if (!v5)
  {
    goto LABEL_88;
  }

  v6 = [v5 averageSensitivity];

  if (!v6)
  {
    goto LABEL_88;
  }

  v7 = objc_opt_self();
  v8 = [v7 decibelHearingLevelUnit];
  [v6 doubleValueForUnit_];
  v10 = v9;

  v11 = [a1 hearingLevelSummary];
  v12 = [v11 rightEarMetrics];

  if (!v12 || (v13 = [v12 averageSensitivity], v12, !v13))
  {
LABEL_88:
    if (qword_27C811D28 != -1)
    {
      goto LABEL_107;
    }

    goto LABEL_89;
  }

  v14 = [v7 decibelHearingLevelUnit];
  [v13 doubleValueForUnit_];
  v16 = v15;

  if (v10 > 15.0 || v16 > 15.0)
  {
    if (qword_27C811D28 != -1)
    {
LABEL_111:
      swift_once();
    }

    v79 = sub_20CE12CB4();
    __swift_project_value_buffer(v79, qword_27C8177E0);
    v80 = sub_20CE12C94();
    v81 = sub_20CE13CD4();
    if (os_log_type_enabled(v80, v81))
    {
      v82 = swift_slowAlloc();
      v83 = swift_slowAlloc();
      v109 = v83;
      *v82 = 136446210;
      *(v82 + 4) = sub_20CD96DCC(0x6E656D6D6F636552, 0xEE006E6F69746164, &v109);
      _os_log_impl(&dword_20CD70000, v80, v81, "[%{public}s] Returning B. Obfuscated for privacy.", v82, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v83);
      MEMORY[0x20F314110](v83, -1, -1);
      MEMORY[0x20F314110](v82, -1, -1);
    }

    v78 = 1;
  }

  else
  {
    v17 = [a1 sensitivityPoints];
    sub_20CD83128(0, &qword_27C812330, 0x277CCD040);
    sub_20CE13AB4();

    v109 = sub_20CDFF1E0(v18);
    sub_20CD878BC(&v109);

    v19 = v109;
    v20 = (v109 >> 62) & 1;
    if ((v109 & 0x8000000000000000) != 0)
    {
      LODWORD(v20) = 1;
    }

    v105 = v20;
    if (v20 == 1)
    {
      v21 = sub_20CE141C4();
      if (v21)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v21 = *(v109 + 16);
      if (v21)
      {
LABEL_11:
        v100 = 0;
        v22 = 0;
        v23 = v19 & 0xC000000000000001;
        v106 = v19 + 32;
        v102 = v21;
        v103 = v19;
        v101 = v19 & 0xC000000000000001;
        v104 = a2;
        while (1)
        {
          if (v23)
          {
            v24 = MEMORY[0x20F313610](v22, v19);
          }

          else
          {
            if (v22 >= *(v19 + 16))
            {
              goto LABEL_109;
            }

            v24 = *(v106 + 8 * v22);
          }

          v25 = v24;
          if (__OFADD__(v22++, 1))
          {
            __break(1u);
LABEL_109:
            __break(1u);
LABEL_110:
            __break(1u);
            goto LABEL_111;
          }

          if ((v22 & 0x8000000000000000) != 0 || (!v105 ? (v27 = *(v19 + 16)) : (v27 = sub_20CE141C4()), v22 >= v27))
          {

            goto LABEL_114;
          }

          if (v23)
          {
            v28 = MEMORY[0x20F313610](v22, v19);
          }

          else
          {
            if (v22 >= *(v19 + 16))
            {
              goto LABEL_110;
            }

            v28 = *(v106 + 8 * v22);
          }

          v107 = v28;
          v29 = [v25 tests];
          sub_20CD83128(0, &qword_27C812338, 0x277CCD050);
          v30 = sub_20CE13AB4();

          v108 = v25;
          if (v30 >> 62)
          {
            a2 = sub_20CE141C4();
            if (a2)
            {
LABEL_27:
              v31 = 0;
              while (1)
              {
                if ((v30 & 0xC000000000000001) != 0)
                {
                  v32 = MEMORY[0x20F313610](v31, v30);
                }

                else
                {
                  if (v31 >= *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10))
                  {
                    goto LABEL_100;
                  }

                  v32 = *(v30 + 8 * v31 + 32);
                }

                v33 = v32;
                v34 = (v31 + 1);
                if (__OFADD__(v31, 1))
                {
                  __break(1u);
LABEL_100:
                  __break(1u);
                  goto LABEL_101;
                }

                if (![v32 side])
                {
                  break;
                }

                ++v31;
                if (v34 == a2)
                {
                  goto LABEL_54;
                }
              }

              v35 = [v33 sensitivity];

              v36 = [v7 decibelHearingLevelUnit];
              [v35 doubleValueForUnit_];
              v38 = v37;

              v39 = [v107 tests];
              v40 = sub_20CE13AB4();

              if (v40 >> 62)
              {
                a2 = sub_20CE141C4();
                if (!a2)
                {
                  goto LABEL_54;
                }
              }

              else
              {
                a2 = *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10);
                if (!a2)
                {
                  goto LABEL_54;
                }
              }

              v41 = 0;
              while (1)
              {
                if ((v40 & 0xC000000000000001) != 0)
                {
                  v42 = MEMORY[0x20F313610](v41, v40);
                }

                else
                {
                  if (v41 >= *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10))
                  {
                    goto LABEL_104;
                  }

                  v42 = *(v40 + 8 * v41 + 32);
                }

                v43 = v42;
                v44 = (v41 + 1);
                if (__OFADD__(v41, 1))
                {
                  break;
                }

                if (![v42 side])
                {

                  v45 = [v43 sensitivity];

                  v46 = [v7 decibelHearingLevelUnit];
                  [v45 doubleValueForUnit_];
                  v48 = v47;

                  v49 = HIDWORD(v100);
                  if (v38 > 40.0)
                  {
                    v49 = (v48 > 40.0) | HIDWORD(v100);
                  }

                  HIDWORD(v100) = v49;
                  goto LABEL_55;
                }

                ++v41;
                if (v44 == a2)
                {
                  goto LABEL_54;
                }
              }

LABEL_103:
              __break(1u);
LABEL_104:
              __break(1u);
LABEL_105:
              __break(1u);
LABEL_106:
              __break(1u);
LABEL_107:
              swift_once();
LABEL_89:
              v72 = sub_20CE12CB4();
              __swift_project_value_buffer(v72, qword_27C8177E0);
              v73 = sub_20CE12C94();
              v74 = sub_20CE13CD4();
              if (os_log_type_enabled(v73, v74))
              {
                v75 = swift_slowAlloc();
                v76 = swift_slowAlloc();
                v109 = v76;
                *v75 = 136446210;
                *(v75 + 4) = sub_20CD96DCC(0x6E656D6D6F636552, 0xEE006E6F69746164, &v109);
                v77 = "[%{public}s] Returning A. Obfuscated for privacy.";
                goto LABEL_91;
              }

              goto LABEL_92;
            }
          }

          else
          {
            a2 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (a2)
            {
              goto LABEL_27;
            }
          }

LABEL_54:

LABEL_55:
          v50 = v108;
          v51 = [v108 tests];
          v52 = sub_20CE13AB4();

          if (v52 >> 62)
          {
            a2 = sub_20CE141C4();
            if (a2)
            {
LABEL_57:
              v53 = 0;
              while (1)
              {
                if ((v52 & 0xC000000000000001) != 0)
                {
                  v54 = MEMORY[0x20F313610](v53, v52);
                }

                else
                {
                  if (v53 >= *((v52 & 0xFFFFFFFFFFFFFF8) + 0x10))
                  {
                    goto LABEL_102;
                  }

                  v54 = *(v52 + 8 * v53 + 32);
                }

                v55 = v54;
                v56 = (v53 + 1);
                if (__OFADD__(v53, 1))
                {
                  break;
                }

                if ([v54 side] == 1)
                {

                  v57 = [v55 sensitivity];

                  v58 = [v7 decibelHearingLevelUnit];
                  [v57 doubleValueForUnit_];
                  v60 = v59;

                  v61 = [v107 tests];
                  v62 = sub_20CE13AB4();

                  if (v62 >> 62)
                  {
                    a2 = sub_20CE141C4();
                    v50 = v108;
                    if (!a2)
                    {
                      goto LABEL_78;
                    }
                  }

                  else
                  {
                    a2 = *((v62 & 0xFFFFFFFFFFFFFF8) + 0x10);
                    v50 = v108;
                    if (!a2)
                    {
                      goto LABEL_78;
                    }
                  }

                  v63 = 0;
                  while (1)
                  {
                    if ((v62 & 0xC000000000000001) != 0)
                    {
                      v64 = MEMORY[0x20F313610](v63, v62);
                    }

                    else
                    {
                      if (v63 >= *((v62 & 0xFFFFFFFFFFFFFF8) + 0x10))
                      {
                        goto LABEL_106;
                      }

                      v64 = *(v62 + 8 * v63 + 32);
                    }

                    v65 = v64;
                    v66 = (v63 + 1);
                    if (__OFADD__(v63, 1))
                    {
                      goto LABEL_105;
                    }

                    if ([v64 side] == 1)
                    {

                      v67 = [v65 sensitivity];

                      v68 = [v7 decibelHearingLevelUnit];
                      [v67 doubleValueForUnit_];
                      v70 = v69;

                      v71 = v60 > 40.0;
                      if (v70 <= 40.0)
                      {
                        v71 = 0;
                      }

                      LODWORD(v100) = v71 | v100;
                      goto LABEL_79;
                    }

                    ++v63;
                    if (v66 == a2)
                    {
                      goto LABEL_77;
                    }
                  }
                }

                ++v53;
                if (v56 == a2)
                {
LABEL_77:
                  v50 = v108;
                  goto LABEL_78;
                }
              }

LABEL_101:
              __break(1u);
LABEL_102:
              __break(1u);
              goto LABEL_103;
            }
          }

          else
          {
            a2 = *((v52 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (a2)
            {
              goto LABEL_57;
            }
          }

LABEL_78:

LABEL_79:
          v19 = v103;
          a2 = v104;
          v23 = v101;
          if (v22 == v102)
          {
            goto LABEL_114;
          }
        }
      }
    }

    v100 = 0;
LABEL_114:

    if ((v100 & 0x100000000) != 0)
    {
      if (v100)
      {
        if (qword_27C811D28 != -1)
        {
          swift_once();
        }

        v84 = sub_20CE12CB4();
        __swift_project_value_buffer(v84, qword_27C8177E0);
        v85 = sub_20CE12C94();
        v86 = sub_20CE13CD4();
        if (os_log_type_enabled(v85, v86))
        {
          v87 = swift_slowAlloc();
          v88 = swift_slowAlloc();
          v109 = v88;
          *v87 = 136446210;
          *(v87 + 4) = sub_20CD96DCC(0x6E656D6D6F636552, 0xEE006E6F69746164, &v109);
          _os_log_impl(&dword_20CD70000, v85, v86, "[%{public}s] Returning C. Obfuscated for privacy.", v87, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v88);
          MEMORY[0x20F314110](v88, -1, -1);
          MEMORY[0x20F314110](v87, -1, -1);
        }

        v78 = 2;
      }

      else
      {
        if (qword_27C811D28 != -1)
        {
          swift_once();
        }

        v94 = sub_20CE12CB4();
        __swift_project_value_buffer(v94, qword_27C8177E0);
        v95 = sub_20CE12C94();
        v96 = sub_20CE13CD4();
        if (os_log_type_enabled(v95, v96))
        {
          v97 = swift_slowAlloc();
          v98 = swift_slowAlloc();
          v109 = v98;
          *v97 = 136446210;
          *(v97 + 4) = sub_20CD96DCC(0x6E656D6D6F636552, 0xEE006E6F69746164, &v109);
          _os_log_impl(&dword_20CD70000, v95, v96, "[%{public}s] Returning D. Obfuscated for privacy.", v97, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v98);
          MEMORY[0x20F314110](v98, -1, -1);
          MEMORY[0x20F314110](v97, -1, -1);
        }

        v78 = 3;
      }
    }

    else if (v100)
    {
      if (qword_27C811D28 != -1)
      {
        swift_once();
      }

      v89 = sub_20CE12CB4();
      __swift_project_value_buffer(v89, qword_27C8177E0);
      v90 = sub_20CE12C94();
      v91 = sub_20CE13CD4();
      if (os_log_type_enabled(v90, v91))
      {
        v92 = swift_slowAlloc();
        v93 = swift_slowAlloc();
        v109 = v93;
        *v92 = 136446210;
        *(v92 + 4) = sub_20CD96DCC(0x6E656D6D6F636552, 0xEE006E6F69746164, &v109);
        _os_log_impl(&dword_20CD70000, v90, v91, "[%{public}s] Returning E. Obfuscated for privacy.", v92, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v93);
        MEMORY[0x20F314110](v93, -1, -1);
        MEMORY[0x20F314110](v92, -1, -1);
      }

      v78 = 4;
    }

    else
    {
      if (qword_27C811D28 != -1)
      {
        swift_once();
      }

      v99 = sub_20CE12CB4();
      __swift_project_value_buffer(v99, qword_27C8177E0);
      v73 = sub_20CE12C94();
      v74 = sub_20CE13CD4();
      if (os_log_type_enabled(v73, v74))
      {
        v75 = swift_slowAlloc();
        v76 = swift_slowAlloc();
        v109 = v76;
        *v75 = 136446210;
        *(v75 + 4) = sub_20CD96DCC(0x6E656D6D6F636552, 0xEE006E6F69746164, &v109);
        v77 = "[%{public}s] Returning F. Obfuscated for privacy.";
LABEL_91:
        _os_log_impl(&dword_20CD70000, v73, v74, v77, v75, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v76);
        MEMORY[0x20F314110](v76, -1, -1);
        MEMORY[0x20F314110](v75, -1, -1);
      }

LABEL_92:

      v78 = 7;
    }
  }

  *a2 = v78;
}

uint64_t Recommendation.hashValue.getter()
{
  v1 = *v0;
  sub_20CE14384();
  MEMORY[0x20F3138A0](v1);
  return sub_20CE143B4();
}

unint64_t sub_20CD8765C()
{
  result = qword_27C812318;
  if (!qword_27C812318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C812318);
  }

  return result;
}

unint64_t sub_20CD876B4()
{
  result = qword_27C812320;
  if (!qword_27C812320)
  {
    sub_20CD8770C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C812320);
  }

  return result;
}

void sub_20CD8770C()
{
  if (!qword_27C812328)
  {
    v0 = sub_20CE13B04();
    if (!v1)
    {
      atomic_store(v0, &qword_27C812328);
    }
  }
}

uint64_t getEnumTagSinglePayload for Recommendation(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for Recommendation(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_20CD878BC(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_20CDFF274(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_20CD87938(v6);
  return sub_20CE14144();
}

void sub_20CD87938(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_20CE14254();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_20CD83128(0, &qword_27C812330, 0x277CCD040);
        v6 = sub_20CE13AE4();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = ((v6 & 0xFFFFFFFFFFFFFF8) + 32);
      v8[1] = v5;
      sub_20CD87BF8(v8, v9, a1, v4);
      *(v7 + 16) = 0;

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
    sub_20CD87A4C(0, v2, 1, a1);
  }
}

void sub_20CD87A4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v28 = objc_opt_self();
    v7 = v6 + 8 * v4 - 8;
    v8 = a1 - v4;
LABEL_5:
    v26 = v7;
    v27 = v4;
    v9 = *(v6 + 8 * v4);
    v25 = v8;
    v10 = v7;
    while (1)
    {
      v11 = *v10;
      v12 = v9;
      v13 = v11;
      v14 = [v12 frequency];
      v15 = [v28 hertzUnit];
      [v14 doubleValueForUnit_];
      v17 = v16;

      v18 = [v13 frequency];
      v19 = [v28 hertzUnit];
      [v18 doubleValueForUnit_];
      v21 = v20;

      if (v17 >= v21)
      {
LABEL_4:
        v4 = v27 + 1;
        v7 = v26 + 8;
        v8 = v25 - 1;
        if (v27 + 1 == a2)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      v22 = *v10;
      v9 = *(v10 + 8);
      *v10 = v9;
      *(v10 + 8) = v22;
      v10 -= 8;
      if (__CFADD__(v8++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_20CD87BF8(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v6 = v4;
  v7 = a3;
  v8 = a3[1];
  if (v8 < 1)
  {
    v10 = MEMORY[0x277D84F90];
LABEL_87:
    v5 = v10;
    v10 = *a1;
    if (!*a1)
    {
      goto LABEL_125;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_119:
      v5 = sub_20CDFF0D4(v5);
    }

    v109 = v5[2];
    if (v109 >= 2)
    {
      do
      {
        v110 = *v7;
        if (!*v7)
        {
          goto LABEL_123;
        }

        v7 = (v109 - 1);
        v111 = v5[2 * v109];
        v112 = v5[2 * v109 + 3];
        sub_20CD8842C((v110 + 8 * v111), (v110 + 8 * v5[2 * v109 + 2]), (v110 + 8 * v112), v10);
        if (v6)
        {
          break;
        }

        if (v112 < v111)
        {
          goto LABEL_112;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v5 = sub_20CDFF0D4(v5);
        }

        if (v109 - 2 >= v5[2])
        {
          goto LABEL_113;
        }

        v113 = &v5[2 * v109];
        *v113 = v111;
        v113[1] = v112;
        sub_20CDFF048(v109 - 1);
        v109 = v5[2];
        v7 = a3;
      }

      while (v109 > 1);
    }

LABEL_97:

    return;
  }

  v9 = 0;
  v10 = MEMORY[0x277D84F90];
  while (1)
  {
    v11 = v9 + 1;
    v121 = v9;
    if (v9 + 1 < v8)
    {
      v129 = v8;
      v115 = v10;
      v117 = v6;
      v124 = 8 * v9;
      v12 = (*v7 + 8 * v9);
      v14 = *v12;
      v13 = v12 + 2;
      v15 = *(*v7 + 8 * v11);
      v16 = v14;
      v17 = [v15 frequency];
      v5 = objc_opt_self();
      v18 = [v5 hertzUnit];
      [v17 doubleValueForUnit_];
      v20 = v19;

      v21 = [v16 frequency];
      v126 = v5;
      v22 = [v5 hertzUnit];
      [v21 doubleValueForUnit_];
      v24 = v23;

      v25 = (v9 + 2);
      while (1)
      {
        v11 = v129;
        if (v129 == v25)
        {
          break;
        }

        v26 = *(v13 - 1);
        v27 = *v13;
        v28 = v26;
        v29 = [v27 frequency];
        v5 = &unk_277DAD000;
        v30 = [v126 hertzUnit];
        [v29 doubleValueForUnit_];
        v32 = v31;

        v33 = [v28 frequency];
        v34 = [v126 hertzUnit];
        [v33 doubleValueForUnit_];
        v36 = v35;

        ++v25;
        ++v13;
        if (v20 < v24 == v32 >= v36)
        {
          v11 = (v25 - 1);
          break;
        }
      }

      v10 = v115;
      v6 = v117;
      v7 = a3;
      v9 = v121;
      v37 = v124;
      if (v20 < v24)
      {
        if (v11 < v121)
        {
          goto LABEL_116;
        }

        if (v121 < v11)
        {
          v38 = 8 * v11 - 8;
          v39 = v11;
          v40 = v121;
          do
          {
            if (v40 != --v39)
            {
              v42 = *a3;
              if (!*a3)
              {
                goto LABEL_122;
              }

              v41 = *(v42 + v37);
              *(v42 + v37) = *(v42 + v38);
              *(v42 + v38) = v41;
            }

            ++v40;
            v38 -= 8;
            v37 += 8;
          }

          while (v40 < v39);
        }
      }
    }

    v43 = v7[1];
    if (v11 < v43)
    {
      if (__OFSUB__(v11, v9))
      {
        goto LABEL_115;
      }

      if (v11 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_117;
        }

        if (v9 + a4 >= v43)
        {
          v44 = v7[1];
        }

        else
        {
          v44 = (v9 + a4);
        }

        if (v44 < v9)
        {
LABEL_118:
          __break(1u);
          goto LABEL_119;
        }

        if (v11 != v44)
        {
          break;
        }
      }
    }

LABEL_36:
    if (v11 < v9)
    {
      goto LABEL_114;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v10 = sub_20CD894AC(0, *(v10 + 2) + 1, 1, v10);
    }

    v64 = *(v10 + 2);
    v63 = *(v10 + 3);
    v65 = v64 + 1;
    if (v64 >= v63 >> 1)
    {
      v10 = sub_20CD894AC((v63 > 1), v64 + 1, 1, v10);
    }

    *(v10 + 2) = v65;
    v66 = &v10[16 * v64];
    *(v66 + 4) = v121;
    *(v66 + 5) = v11;
    v5 = *a1;
    if (!*a1)
    {
      goto LABEL_124;
    }

    v128 = v11;
    if (v64)
    {
      while (1)
      {
        v67 = v65 - 1;
        if (v65 >= 4)
        {
          break;
        }

        if (v65 == 3)
        {
          v68 = *(v10 + 4);
          v69 = *(v10 + 5);
          v78 = __OFSUB__(v69, v68);
          v70 = v69 - v68;
          v71 = v78;
LABEL_56:
          if (v71)
          {
            goto LABEL_103;
          }

          v84 = &v10[16 * v65];
          v86 = *v84;
          v85 = *(v84 + 1);
          v87 = __OFSUB__(v85, v86);
          v88 = v85 - v86;
          v89 = v87;
          if (v87)
          {
            goto LABEL_106;
          }

          v90 = &v10[16 * v67 + 32];
          v92 = *v90;
          v91 = *(v90 + 1);
          v78 = __OFSUB__(v91, v92);
          v93 = v91 - v92;
          if (v78)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v88, v93))
          {
            goto LABEL_110;
          }

          if (v88 + v93 >= v70)
          {
            if (v70 < v93)
            {
              v67 = v65 - 2;
            }

            goto LABEL_77;
          }

          goto LABEL_70;
        }

        v94 = &v10[16 * v65];
        v96 = *v94;
        v95 = *(v94 + 1);
        v78 = __OFSUB__(v95, v96);
        v88 = v95 - v96;
        v89 = v78;
LABEL_70:
        if (v89)
        {
          goto LABEL_105;
        }

        v97 = &v10[16 * v67];
        v99 = *(v97 + 4);
        v98 = *(v97 + 5);
        v78 = __OFSUB__(v98, v99);
        v100 = v98 - v99;
        if (v78)
        {
          goto LABEL_108;
        }

        if (v100 < v88)
        {
          goto LABEL_3;
        }

LABEL_77:
        v105 = v67 - 1;
        if (v67 - 1 >= v65)
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
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
          goto LABEL_118;
        }

        if (!*v7)
        {
          goto LABEL_121;
        }

        v106 = *&v10[16 * v105 + 32];
        v107 = *&v10[16 * v67 + 40];
        sub_20CD8842C((*v7 + 8 * v106), (*v7 + 8 * *&v10[16 * v67 + 32]), (*v7 + 8 * v107), v5);
        if (v6)
        {
          goto LABEL_97;
        }

        if (v107 < v106)
        {
          goto LABEL_99;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = sub_20CDFF0D4(v10);
        }

        if (v105 >= *(v10 + 2))
        {
          goto LABEL_100;
        }

        v108 = &v10[16 * v105];
        *(v108 + 4) = v106;
        *(v108 + 5) = v107;
        sub_20CDFF048(v67);
        v65 = *(v10 + 2);
        if (v65 <= 1)
        {
          goto LABEL_3;
        }
      }

      v72 = &v10[16 * v65 + 32];
      v73 = *(v72 - 64);
      v74 = *(v72 - 56);
      v78 = __OFSUB__(v74, v73);
      v75 = v74 - v73;
      if (v78)
      {
        goto LABEL_101;
      }

      v77 = *(v72 - 48);
      v76 = *(v72 - 40);
      v78 = __OFSUB__(v76, v77);
      v70 = v76 - v77;
      v71 = v78;
      if (v78)
      {
        goto LABEL_102;
      }

      v79 = &v10[16 * v65];
      v81 = *v79;
      v80 = *(v79 + 1);
      v78 = __OFSUB__(v80, v81);
      v82 = v80 - v81;
      if (v78)
      {
        goto LABEL_104;
      }

      v78 = __OFADD__(v70, v82);
      v83 = v70 + v82;
      if (v78)
      {
        goto LABEL_107;
      }

      if (v83 >= v75)
      {
        v101 = &v10[16 * v67 + 32];
        v103 = *v101;
        v102 = *(v101 + 1);
        v78 = __OFSUB__(v102, v103);
        v104 = v102 - v103;
        if (v78)
        {
          goto LABEL_111;
        }

        if (v70 < v104)
        {
          v67 = v65 - 2;
        }

        goto LABEL_77;
      }

      goto LABEL_56;
    }

LABEL_3:
    v8 = v7[1];
    v9 = v128;
    if (v128 >= v8)
    {
      goto LABEL_87;
    }
  }

  v116 = v10;
  v118 = v6;
  v45 = *v7;
  v130 = objc_opt_self();
  v46 = v45 + 8 * v11 - 8;
  v47 = (v9 - v11);
  v122 = v44;
LABEL_29:
  v125 = v46;
  v127 = v11;
  v48 = *(v45 + 8 * v11);
  v123 = v47;
  v49 = v46;
  while (1)
  {
    v50 = *v49;
    v51 = v48;
    v52 = v50;
    v53 = [v51 frequency];
    v54 = [v130 hertzUnit];
    v5 = &unk_277DAD000;
    [v53 doubleValueForUnit_];
    v56 = v55;

    v57 = [v52 frequency];
    v58 = [v130 hertzUnit];
    [v57 doubleValueForUnit_];
    v60 = v59;

    if (v56 >= v60)
    {
LABEL_28:
      ++v11;
      v46 = v125 + 8;
      v47 = v123 - 1;
      if (v127 + 1 != v122)
      {
        goto LABEL_29;
      }

      v11 = v122;
      v10 = v116;
      v6 = v118;
      v7 = a3;
      v9 = v121;
      goto LABEL_36;
    }

    if (!v45)
    {
      break;
    }

    v61 = *v49;
    v48 = *(v49 + 8);
    *v49 = v48;
    *(v49 + 8) = v61;
    v49 -= 8;
    if (__CFADD__(v47++, 1))
    {
      goto LABEL_28;
    }
  }

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
}

uint64_t sub_20CD8842C(void **__src, void **a2, id *a3, void **a4)
{
  v4 = a3;
  v5 = __src;
  v6 = a2 - __src;
  v7 = a2 - __src + 7;
  if (a2 - __src >= 0)
  {
    v7 = a2 - __src;
  }

  v8 = v7 >> 3;
  v9 = a3 - a2;
  v10 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v10 = a3 - a2;
  }

  v11 = v10 >> 3;
  if (v8 >= v10 >> 3)
  {
    v14 = a4;
    if (a4 != a2 || &a2[v11] <= a4)
    {
      v31 = a2;
      memmove(a4, a2, 8 * v11);
      a2 = v31;
    }

    v30 = a2;
    v52 = &v14[v11];
    if (v9 >= 8 && a2 > v5)
    {
      v51 = v14;
LABEL_27:
      __dst = v30;
      v32 = v30 - 1;
      --v4;
      v33 = v52;
      v50 = v30 - 1;
      do
      {
        v34 = (v4 + 1);
        v35 = *--v33;
        v36 = *v32;
        v37 = v35;
        v38 = v36;
        v39 = [v37 frequency];
        v40 = objc_opt_self();
        v41 = [v40 hertzUnit];
        [v39 doubleValueForUnit_];
        v43 = v42;

        v44 = [v38 frequency];
        v45 = [v40 hertzUnit];
        [v44 doubleValueForUnit_];
        v47 = v46;

        if (v43 < v47)
        {
          if (v34 != __dst)
          {
            *v4 = *v50;
          }

          v14 = v51;
          if (v52 <= v51 || (v30 = v50, v50 <= v5))
          {
            v30 = v50;
            goto LABEL_38;
          }

          goto LABEL_27;
        }

        if (v34 != v52)
        {
          *v4 = *v33;
        }

        --v4;
        v52 = v33;
        v32 = v50;
      }

      while (v33 > v51);
      v52 = v33;
      v14 = v51;
      v30 = __dst;
    }
  }

  else
  {
    v12 = a2;
    if (a4 != __src || &__src[v8] <= a4)
    {
      v13 = a4;
      memmove(a4, __src, 8 * v8);
      a4 = v13;
    }

    v52 = &a4[v8];
    v14 = a4;
    if (v6 >= 8 && v12 < v4)
    {
      v15 = v12;
      while (1)
      {
        v16 = *v14;
        v17 = *v15;
        v18 = v16;
        v19 = [v17 frequency];
        v20 = objc_opt_self();
        v21 = [v20 hertzUnit];
        [v19 doubleValueForUnit_];
        v23 = v22;

        v24 = [v18 frequency];
        v25 = [v20 hertzUnit];
        [v24 doubleValueForUnit_];
        v27 = v26;

        if (v23 >= v27)
        {
          break;
        }

        v28 = v15;
        v29 = v5 == v15++;
        if (!v29)
        {
          goto LABEL_17;
        }

LABEL_18:
        ++v5;
        if (v14 >= v52 || v15 >= v4)
        {
          goto LABEL_20;
        }
      }

      v28 = v14;
      v29 = v5 == v14++;
      if (v29)
      {
        goto LABEL_18;
      }

LABEL_17:
      *v5 = *v28;
      goto LABEL_18;
    }

LABEL_20:
    v30 = v5;
  }

LABEL_38:
  if (v30 != v14 || v30 >= (v14 + ((v52 - v14 + (v52 - v14 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v30, v14, 8 * ((v52 - v14) / 8));
  }

  return 1;
}

uint64_t Array<A>.asHKAudiogramSensitivityPoints.getter(uint64_t a1)
{
  v2 = sub_20CE12854();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v41 - v8;
  v10 = *(a1 + 16);
  if (!v10)
  {
    v15 = MEMORY[0x277D84F98];
LABEL_21:
    v39 = sub_20CD89210(v15);

    return v39;
  }

  v12 = *(v3 + 16);
  v11 = v3 + 16;
  v50 = v12;
  v45 = (*(v11 + 64) + 32) & ~*(v11 + 64);
  v13 = (a1 + v45);
  v14 = *(v11 + 56);
  v43 = (v11 - 8);
  v44 = v14;
  v15 = MEMORY[0x277D84F98];
  v42 = (v11 + 16);
  v48 = v11;
  v49 = v2;
  v46 = &v41 - v8;
  v47 = v7;
  while (1)
  {
    v16 = v50;
    v50(v9, v13, v2);
    sub_20CE12834();
    v18 = v17;
    v16(v7, v9, v2);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v51 = v15;
    v21 = sub_20CD899FC(v18);
    v22 = v15[2];
    v23 = (v20 & 1) == 0;
    v24 = v22 + v23;
    if (__OFADD__(v22, v23))
    {
      break;
    }

    v25 = v20;
    if (v15[3] >= v24)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        if (v20)
        {
          goto LABEL_12;
        }
      }

      else
      {
        sub_20CD8A7E0();
        v15 = v51;
        if (v25)
        {
          goto LABEL_12;
        }
      }
    }

    else
    {
      sub_20CD89B50(v24, isUniquelyReferenced_nonNull_native);
      v15 = v51;
      v26 = sub_20CD899FC(v18);
      if ((v25 & 1) != (v27 & 1))
      {
        goto LABEL_24;
      }

      v21 = v26;
      if (v25)
      {
        goto LABEL_12;
      }
    }

    v15[(v21 >> 6) + 8] |= 1 << v21;
    *(v15[6] + 8 * v21) = v18;
    *(v15[7] + 8 * v21) = MEMORY[0x277D84F90];
    v28 = v15[2];
    v29 = __OFADD__(v28, 1);
    v30 = v28 + 1;
    if (v29)
    {
      goto LABEL_23;
    }

    v15[2] = v30;
LABEL_12:
    v31 = v15[7];
    v32 = *(v31 + 8 * v21);
    v33 = swift_isUniquelyReferenced_nonNull_native();
    *(v31 + 8 * v21) = v32;
    if ((v33 & 1) == 0)
    {
      v32 = sub_20CD89710(0, v32[2] + 1, 1, v32, &qword_27C812388, MEMORY[0x277D12CA8], MEMORY[0x277D12CA8]);
      *(v31 + 8 * v21) = v32;
    }

    v35 = v32[2];
    v34 = v32[3];
    if (v35 >= v34 >> 1)
    {
      *(v31 + 8 * v21) = sub_20CD89710(v34 > 1, v35 + 1, 1, v32, &qword_27C812388, MEMORY[0x277D12CA8], MEMORY[0x277D12CA8]);
    }

    v9 = v46;
    v36 = v49;
    (*v43)(v46, v49);
    v37 = *(v31 + 8 * v21);
    *(v37 + 16) = v35 + 1;
    v38 = v44;
    v2 = v36;
    v7 = v47;
    (*v42)(v37 + v45 + v35 * v44, v47, v36);
    v13 += v38;
    if (!--v10)
    {
      goto LABEL_21;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  result = sub_20CE142E4();
  __break(1u);
  return result;
}

id sub_20CD88C1C(uint64_t a1, double a2)
{
  v68 = *MEMORY[0x277D85DE8];
  v59 = sub_20CE12924();
  v5 = *(v59 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v59);
  v62 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v61 = &v49 - v9;
  v10 = sub_20CE12854();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = objc_opt_self();
  v15 = [v60 hertzUnit];
  v58 = objc_opt_self();
  v16 = [v58 quantityWithUnit:v15 doubleValue:a2];

  v17 = *(a1 + 16);
  if (!v17)
  {
LABEL_17:
    sub_20CD83128(0, &qword_27C812330, 0x277CCD040);
    v30 = sub_20CE11808(v16);

    goto LABEL_21;
  }

  v49 = v2;
  v50 = v16;
  v67 = MEMORY[0x277D84F90];
  sub_20CE14154();
  v19 = *(v11 + 16);
  v18 = v11 + 16;
  v56 = v19;
  v20 = a1 + ((*(v18 + 64) + 32) & ~*(v18 + 64));
  v55 = *MEMORY[0x277D12CD8];
  v53 = (v5 + 8);
  v54 = (v5 + 104);
  v57 = (v18 - 8);
  v51 = *(v18 + 56);
  v52 = v18;
  v21 = v10;
  v63 = v10;
  while (1)
  {
    v56(v14, v20, v21);
    v22 = [v60 decibelHearingLevelUnit];
    sub_20CE12844();
    v64 = [v58 quantityWithUnit:v22 doubleValue:?];

    v23 = v61;
    sub_20CE12814();
    v24 = v62;
    v25 = v59;
    (*v54)(v62, v55, v59);
    sub_20CD8B030();
    sub_20CE13A84();
    sub_20CE13A84();
    v26 = *v53;
    (*v53)(v24, v25);
    v26(v23, v25);
    v27 = v66 != v65;
    sub_20CE127F4();
    if (v28)
    {
      sub_20CE12804();
      if (v29)
      {
        v30 = 0;
        goto LABEL_14;
      }
    }

    v31 = sub_20CE127F4();
    v33 = (v32 & 1) != 0 ? 0 : [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
    v34 = v63;
    v35 = sub_20CE12804();
    v37 = (v36 & 1) != 0 ? 0 : [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
    v38 = objc_opt_self();
    v66 = 0;
    v39 = [v38 clampingRangeWithLowerBound:v33 upperBound:v37 error:&v66];
    if (!v39)
    {
      break;
    }

    v30 = v39;
    v40 = v66;

LABEL_14:
    v41 = objc_allocWithZone(MEMORY[0x277CCD050]);
    v66 = 0;
    v42 = v64;
    if (![v41 initWithSensitivity:v64 type:0 masked:0 side:v27 clampingRange:v30 error:&v66])
    {
      v46 = v66;

      sub_20CE12394();
      swift_willThrow();

      (*v57)(v14, v63);
      goto LABEL_20;
    }

    v43 = *v57;
    v44 = v66;
    v21 = v63;
    v43(v14, v63);

    sub_20CE14134();
    v45 = *(v67 + 16);
    sub_20CE14164();
    sub_20CE14174();
    sub_20CE14144();
    v20 += v51;
    if (!--v17)
    {
      v16 = v50;
      goto LABEL_17;
    }
  }

  v30 = v66;
  sub_20CE12394();

  swift_willThrow();
  (*v57)(v14, v34);

LABEL_20:

LABEL_21:
  v47 = *MEMORY[0x277D85DE8];
  return v30;
}

uint64_t sub_20CD89210(uint64_t a1)
{
  v2 = v1;
  v4 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v4)
  {
    v28 = MEMORY[0x277D84F90];
    sub_20CE14154();
    v6 = a1 + 64;
    v7 = -1 << *(a1 + 32);
    result = sub_20CE14054();
    v8 = result;
    v9 = 0;
    v10 = *(a1 + 36);
    v25 = v4;
    v26 = v10;
    while ((v8 & 0x8000000000000000) == 0 && v8 < 1 << *(a1 + 32))
    {
      v13 = v8 >> 6;
      if ((*(v6 + 8 * (v8 >> 6)) & (1 << v8)) == 0)
      {
        goto LABEL_23;
      }

      if (v10 != *(a1 + 36))
      {
        goto LABEL_24;
      }

      v27 = v9;
      v14 = *(*(a1 + 48) + 8 * v8);
      v15 = *(*(a1 + 56) + 8 * v8);

      sub_20CD88C1C(v16, v14);

      if (v2)
      {
      }

      sub_20CE14134();
      v17 = *(v28 + 16);
      sub_20CE14164();
      sub_20CE14174();
      result = sub_20CE14144();
      v11 = 1 << *(a1 + 32);
      if (v8 >= v11)
      {
        goto LABEL_25;
      }

      v18 = *(v6 + 8 * v13);
      if ((v18 & (1 << v8)) == 0)
      {
        goto LABEL_26;
      }

      v10 = v26;
      if (v26 != *(a1 + 36))
      {
        goto LABEL_27;
      }

      v19 = v18 & (-2 << (v8 & 0x3F));
      if (v19)
      {
        v11 = __clz(__rbit64(v19)) | v8 & 0x7FFFFFFFFFFFFFC0;
        v12 = v25;
        v2 = 0;
      }

      else
      {
        v20 = v13 << 6;
        v21 = v13 + 1;
        v12 = v25;
        v22 = (a1 + 72 + 8 * v13);
        v2 = 0;
        while (v21 < (v11 + 63) >> 6)
        {
          v24 = *v22++;
          v23 = v24;
          v20 += 64;
          ++v21;
          if (v24)
          {
            result = sub_20CD8B024(v8, v26, 0);
            v11 = __clz(__rbit64(v23)) + v20;
            goto LABEL_4;
          }
        }

        result = sub_20CD8B024(v8, v26, 0);
      }

LABEL_4:
      v9 = v27 + 1;
      v8 = v11;
      if (v27 + 1 == v12)
      {
        return v28;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
  }

  return result;
}

char *sub_20CD894AC(char *result, int64_t a2, char a3, char *a4)
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
    sub_20CD8B088(0, &qword_27C812340, sub_20CD8A930, MEMORY[0x277D84560]);
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

char *sub_20CD895D4(char *result, int64_t a2, char a3, char *a4)
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
    sub_20CD8AF40(0, &qword_27C812B80);
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
    v10 = MEMORY[0x277D84F90];
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

size_t sub_20CD89710(size_t result, int64_t a2, char a3, void *a4, unint64_t *a5, uint64_t (*a6)(uint64_t), uint64_t (*a7)(void))
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

  sub_20CD8B088(0, a5, a6, MEMORY[0x277D84560]);
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

char *sub_20CD89904(char *result, int64_t a2, char a3, char *a4)
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
    sub_20CD8AF40(0, &unk_27C812B30);
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

unint64_t sub_20CD899FC(double a1)
{
  v3 = *(v1 + 40);
  v4 = sub_20CE14374();

  return sub_20CD8A5BC(v4, a1);
}

unint64_t sub_20CD89A48(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_20CE14384();
  sub_20CE139C4();
  v6 = sub_20CE143B4();

  return sub_20CD8A624(a1, a2, v6);
}

unint64_t sub_20CD89AC0(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_20CE13954();
  sub_20CE14384();
  sub_20CE139C4();
  v4 = sub_20CE143B4();

  return sub_20CD8A6DC(a1, v4);
}

uint64_t sub_20CD89B50(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_20CD8AF8C();
  result = sub_20CE141F4();
  v8 = result;
  if (*(v5 + 16))
  {
    v34 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(v5 + 56);
      v22 = *(*(v5 + 48) + 8 * v20);
      v23 = *(v21 + 8 * v20);
      if ((a2 & 1) == 0)
      {
        v24 = *(v21 + 8 * v20);
      }

      v25 = *(v8 + 40);
      result = sub_20CE14374();
      v26 = -1 << *(v8 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v15 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v15 + 8 * v28);
          if (v32 != -1)
          {
            v16 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v27) & ~*(v15 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v22;
      *(*(v8 + 56) + 8 * v16) = v23;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if (a2)
    {
      v33 = 1 << *(v5 + 32);
      if (v33 >= 64)
      {
        bzero((v5 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v33;
      }

      *(v5 + 16) = 0;
    }

    v3 = v34;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

uint64_t sub_20CD89DC0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_20CD8AEE8(0, &qword_27C812350);
  v36 = a2;
  result = sub_20CE141F4();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = (*(v5 + 56) + 32 * v21);
      if (v36)
      {
        sub_20CD8A9E8(v25, v37);
      }

      else
      {
        sub_20CD8A98C(v25, v37);
      }

      v26 = *(v8 + 40);
      sub_20CE14384();
      sub_20CE139C4();
      result = sub_20CE143B4();
      v27 = -1 << *(v8 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      result = sub_20CD8A9E8(v37, (*(v8 + 56) + 32 * v16));
      ++*(v8 + 16);
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_36;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}