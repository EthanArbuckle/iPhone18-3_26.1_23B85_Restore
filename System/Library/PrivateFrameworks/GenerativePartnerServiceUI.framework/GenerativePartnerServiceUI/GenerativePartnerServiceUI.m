uint64_t sub_1BE4BA520(uint64_t a1)
{
  v2 = sub_1BE4BF11C(&qword_1EBDABB00, &qword_1BE54DC28);
  sub_1BE4C745C(v2);
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1BE4BA57C(uint64_t *a1)
{
  v1 = *a1;
  if (sub_1BE4C7550())
  {
    sub_1BE54B78C();
  }

  else
  {
    sub_1BE54B73C();
  }

  return sub_1BE54B79C();
}

uint64_t sub_1BE4BA5D4(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (sub_1BE4C7550())
  {
    sub_1BE54B78C();
    sub_1BE54B79C();
    sub_1BE4C6250();
  }

  else
  {
    sub_1BE54B73C();
    sub_1BE54B79C();
    sub_1BE4C6A5C(&qword_1EBDABCA0, MEMORY[0x1E697C028]);
  }

  sub_1BE4C74E8();
  return swift_getWitnessTable();
}

uint64_t sub_1BE4BA698(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1BE4BF11C(&qword_1EBDABC58, &qword_1BE54DD10);
    v9 = a1 + *(a3 + 40);

    return sub_1BE4C63BC(v9, a2, v8);
  }
}

void *sub_1BE4BA72C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_1BE4BF11C(&qword_1EBDABC58, &qword_1BE54DD10);
    v8 = v5 + *(a4 + 40);

    return sub_1BE4C63F8(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1BE4BA7B8()
{
  sub_1BE4C5948(&qword_1EBDABB00, &qword_1BE54DC28);
  sub_1BE4C60E0();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1BE4BA824()
{
  v2 = type metadata accessor for GenerativePartnerOnboardingSheet();
  sub_1BE4C759C(v2);
  v4 = *(v3 + 80);
  v5 = (v4 + 16) & ~v4;
  v7 = *(v6 + 64);
  v8 = v1 + v5;
  v9 = *(v1 + v5);

  v10 = *(v1 + v5 + 8);

  v11 = *(v1 + v5 + 24);

  v12 = *(v1 + v5 + 40);

  if (*(v1 + v5 + 72))
  {
    sub_1BE4C58A8((v8 + 48));
  }

  v13 = (v7 + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v14 = *(v8 + 104);

  v15 = *(v0 + 40);
  v16 = sub_1BE4BF11C(&qword_1EBDABC58, &qword_1BE54DD10);
  sub_1BE4C745C(v16);
  (*(v17 + 8))(v8 + v15);
  v18 = *(v8 + *(v0 + 44));

  sub_1BE4C58A8((v1 + v13));
  sub_1BE4C58A8((v1 + v13 + 40));

  return MEMORY[0x1EEE6BDD0](v1, v13 + 80, v4 | 7);
}

uint64_t sub_1BE4BA964()
{
  if (v0[5])
  {
    sub_1BE4C58A8(v0 + 2);
  }

  v1 = v0[8];

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_1BE4BA9C8()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1BE4BAA00()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1BE4BAA38()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1BE4BAADC()
{
  v3 = sub_1BE4CE8A4();
  v4 = sub_1BE4CE758(v3);
  if (*(v5 + 84) == v1)
  {

    return sub_1BE4C63BC(v0, v1, v4);
  }

  else
  {
    v7 = *(v0 + *(v2 + 24) + 8);
    sub_1BE4CE79C();
    return (v8 + 1);
  }
}

uint64_t sub_1BE4BAB70()
{
  v4 = sub_1BE4CE734();
  result = sub_1BE4CE758(v4);
  if (*(v6 + 84) == v3)
  {
    v7 = sub_1BE4CE884();

    return sub_1BE4C63F8(v7, v8, v9, v10);
  }

  else
  {
    *(v1 + *(v2 + 24) + 8) = (v0 - 1);
  }

  return result;
}

uint64_t sub_1BE4BABF8(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1BE54ADAC();
  v7 = sub_1BE4CE758(v6);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = a1;
LABEL_11:

    return sub_1BE4C63BC(v10, a2, v9);
  }

  v11 = sub_1BE4BF11C(&qword_1EBDABE68, &qword_1BE54E470);
  v12 = sub_1BE4CE758(v11);
  if (*(v13 + 84) == a2)
  {
    v9 = v12;
    v14 = a3[5];
LABEL_10:
    v10 = a1 + v14;
    goto LABEL_11;
  }

  if (a2 != 2147483646)
  {
    v9 = sub_1BE4BF11C(&qword_1EBDABE88, "\u070E");
    v14 = a3[8];
    goto LABEL_10;
  }

  v15 = *(a1 + a3[6]);
  sub_1BE4CE79C();
  v17 = v16 - 1;
  if (v17 < 0)
  {
    v17 = -1;
  }

  return (v17 + 1);
}

uint64_t sub_1BE4BAD20()
{
  v4 = sub_1BE4CE734();
  v5 = sub_1BE4CE758(v4);
  if (*(v6 + 84) == v3)
  {
    v7 = v5;
    v8 = v1;
  }

  else
  {
    v9 = sub_1BE4BF11C(&qword_1EBDABE68, &qword_1BE54E470);
    result = sub_1BE4CE758(v9);
    if (*(v11 + 84) == v3)
    {
      v7 = result;
      v12 = v2[5];
    }

    else
    {
      if (v3 == 2147483646)
      {
        *(v1 + v2[6]) = v0;
        return result;
      }

      v7 = sub_1BE4BF11C(&qword_1EBDABE88, "\u070E");
      v12 = v2[8];
    }

    v8 = v1 + v12;
  }

  return sub_1BE4C63F8(v8, v0, v0, v7);
}

uint64_t sub_1BE4BAE54()
{
  v3 = sub_1BE4CE8A4();
  v4 = sub_1BE4CE758(v3);
  if (*(v5 + 84) == v1)
  {

    return sub_1BE4C63BC(v0, v1, v4);
  }

  else
  {
    v7 = *(v0 + *(v2 + 24));
    sub_1BE4CE79C();
    return (v8 + 1);
  }
}

uint64_t sub_1BE4BAEE4()
{
  v4 = sub_1BE4CE734();
  result = sub_1BE4CE758(v4);
  if (*(v6 + 84) == v3)
  {
    v7 = sub_1BE4CE884();

    return sub_1BE4C63F8(v7, v8, v9, v10);
  }

  else
  {
    *(v1 + *(v2 + 24)) = (v0 - 1);
  }

  return result;
}

uint64_t sub_1BE4BAF68()
{
  v1 = sub_1BE54AE3C();
  sub_1BE4C7470(v1);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4);

  v7 = *(v0 + v6);

  return MEMORY[0x1EEE6BDD0](v0, v6 + 8, v3 | 7);
}

uint64_t sub_1BE4BB038()
{
  v1 = (type metadata accessor for OBKSheetData.ButtonConfiguration(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = sub_1BE54ADAC();
  sub_1BE4C7470(v5);
  (*(v6 + 8))(v0 + v3);
  v7 = *(v0 + v3 + v1[8] + 8);

  v8 = *(v0 + v3 + v1[9] + 8);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1BE4BB138(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = sub_1BE54ADAC();
    v10 = sub_1BE4CE758(v9);
    if (*(v11 + 84) == a2)
    {
      v12 = v10;
      v13 = a3[6];
    }

    else
    {
      v14 = sub_1BE4BF11C(&qword_1EBDABE68, &qword_1BE54E470);
      v15 = sub_1BE4CE758(v14);
      if (*(v16 + 84) == a2)
      {
        v12 = v15;
        v13 = a3[7];
      }

      else
      {
        v12 = sub_1BE4BF11C(&qword_1EBDABF18, &qword_1BE54E4C0);
        v13 = a3[8];
      }
    }

    return sub_1BE4C63BC(a1 + v13, a2, v12);
  }
}

uint64_t sub_1BE4BB264(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v8 = sub_1BE54ADAC();
    v9 = sub_1BE4CE758(v8);
    if (*(v10 + 84) == a3)
    {
      v11 = v9;
      v12 = a4[6];
    }

    else
    {
      v13 = sub_1BE4BF11C(&qword_1EBDABE68, &qword_1BE54E470);
      v14 = sub_1BE4CE758(v13);
      if (*(v15 + 84) == a3)
      {
        v11 = v14;
        v12 = a4[7];
      }

      else
      {
        v11 = sub_1BE4BF11C(&qword_1EBDABF18, &qword_1BE54E4C0);
        v12 = a4[8];
      }
    }

    return sub_1BE4C63F8(v5 + v12, a2, a2, v11);
  }

  return result;
}

uint64_t sub_1BE4BB380(uint64_t a1, int a2, uint64_t a3)
{
  sub_1BE4D97A4();
  v5 = sub_1BE54ADAC();
  sub_1BE4CE758(v5);
  if (*(v6 + 84) != a2)
  {
    return sub_1BE4D9744(*(a3 + 20));
  }

  v7 = sub_1BE4D980C();

  return sub_1BE4C63BC(v7, v8, v9);
}

uint64_t sub_1BE4BB40C()
{
  sub_1BE4D972C();
  v4 = sub_1BE54ADAC();
  result = sub_1BE4CE758(v4);
  if (*(v6 + 84) == v3)
  {
    v7 = sub_1BE4CE884();

    return sub_1BE4C63F8(v7, v8, v9, v10);
  }

  else
  {
    *(v1 + *(v2 + 20)) = (v0 - 1);
  }

  return result;
}

uint64_t sub_1BE4BB494(uint64_t a1, int a2, uint64_t a3)
{
  v5 = sub_1BE4D97A4();
  v6 = type metadata accessor for OnboardingSheetSetup(v5);
  sub_1BE4CE758(v6);
  if (*(v7 + 84) != a2)
  {
    return sub_1BE4D9744(*(a3 + 36));
  }

  v8 = sub_1BE4D980C();

  return sub_1BE4C63BC(v8, v9, v10);
}

uint64_t sub_1BE4BB520()
{
  v4 = sub_1BE4D972C();
  v5 = type metadata accessor for OnboardingSheetSetup(v4);
  result = sub_1BE4CE758(v5);
  if (*(v7 + 84) == v3)
  {
    v8 = sub_1BE4CE884();

    return sub_1BE4C63F8(v8, v9, v10, v11);
  }

  else
  {
    *(v1 + *(v2 + 36)) = (v0 - 1);
  }

  return result;
}

uint64_t sub_1BE4BB5A8(uint64_t *a1)
{
  v1 = *a1;
  sub_1BE4C5948(&qword_1EBDABF38, &qword_1BE54E4D8);
  sub_1BE4D97D4();
  sub_1BE4D97C8();
  swift_getTupleTypeMetadata2();
  sub_1BE4D97D4();
  sub_1BE54C3AC();
  swift_getWitnessTable();
  sub_1BE4D9700();
  sub_1BE54C2FC();
  sub_1BE54B79C();
  sub_1BE54B79C();
  sub_1BE4C5948(&qword_1EBDABF40, &qword_1BE54E4E0);
  sub_1BE4D9700();
  sub_1BE54B79C();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1BE4D97B0();
  sub_1BE4D9668(v2, &qword_1EBDABF40, &qword_1BE54E4E0);
  swift_getWitnessTable();
  sub_1BE4D9700();
  sub_1BE54B5CC();
  sub_1BE4D978C();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  sub_1BE4D975C();
  swift_getOpaqueTypeMetadata2();
  sub_1BE4C5948(&qword_1EBDABF50, &qword_1BE54E4E8);
  sub_1BE4D9700();
  sub_1BE54B79C();
  sub_1BE4C5948(&qword_1EBDABB60, &unk_1BE54E4F0);
  sub_1BE4D97C8();
  swift_getTupleTypeMetadata();
  sub_1BE4D97D4();
  sub_1BE54C3AC();
  swift_getWitnessTable();
  sub_1BE4D96F0();
  sub_1BE54C2FC();
  sub_1BE4C5948(&qword_1EBDABF58, &qword_1BE54F660);
  sub_1BE4D96F0();
  sub_1BE54B79C();
  sub_1BE4C5948(&qword_1EBDABF60, &qword_1BE54E500);
  sub_1BE4D96F0();
  sub_1BE54B79C();
  sub_1BE4D9700();
  sub_1BE54BC1C();
  sub_1BE4C5948(&qword_1EBDABF68, &qword_1BE54E508);
  sub_1BE4D96F0();
  sub_1BE4D97C8();
  swift_getTupleTypeMetadata2();
  sub_1BE4D97D4();
  sub_1BE54C3AC();
  swift_getWitnessTable();
  sub_1BE4D96F0();
  sub_1BE54C2FC();
  sub_1BE4D985C();
  return swift_getWitnessTable();
}

uint64_t sub_1BE4BB8E8(uint64_t a1, int a2, uint64_t a3)
{
  sub_1BE4D97A4();
  v5 = sub_1BE54ADAC();
  sub_1BE4CE758(v5);
  if (*(v6 + 84) != a2)
  {
    return sub_1BE4D9744(*(a3 + 24));
  }

  v7 = sub_1BE4D980C();

  return sub_1BE4C63BC(v7, v8, v9);
}

uint64_t sub_1BE4BB974()
{
  sub_1BE4D972C();
  v4 = sub_1BE54ADAC();
  result = sub_1BE4CE758(v4);
  if (*(v6 + 84) == v3)
  {
    v7 = sub_1BE4CE884();

    return sub_1BE4C63F8(v7, v8, v9, v10);
  }

  else
  {
    *(v1 + *(v2 + 24)) = (v0 - 1);
  }

  return result;
}

double sub_1BE4BBA30(double *a1, void (*a2)(double *__return_ptr))
{
  a2(&v4);
  result = v4;
  *a1 = v4;
  return result;
}

uint64_t sub_1BE4BBAB8(uint64_t a1, uint64_t a2)
{
  v3 = sub_1BE4BF11C(&qword_1EBDAC090, &qword_1BE54E8D0);
  sub_1BE4C7470(v3);
  v5 = *(v4 + 16);
  v6 = sub_1BE4D9800();
  v7(v6);
  return a2;
}

uint64_t sub_1BE4BBB1C(uint64_t a1)
{
  v2 = sub_1BE4BF11C(&qword_1EBDAC090, &qword_1BE54E8D0);
  sub_1BE4C7470(v2);
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1BE4BBB7C()
{
  sub_1BE4D982C();
  result = sub_1BE54B8FC();
  *v0 = result;
  return result;
}

uint64_t sub_1BE4BBBD8()
{
  sub_1BE4D982C();
  result = sub_1BE54B91C();
  *v0 = result;
  return result;
}

uint64_t sub_1BE4BBC04()
{
  v1 = *(v0 + 24);

  sub_1BE4D9838();

  return MEMORY[0x1EEE6BDD0](v2, v3, v4);
}

uint64_t sub_1BE4BBE08()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1BE4BBE68@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = sub_1BE4DB7C0();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1BE4BBF98@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1BE54B9BC();
  *a1 = result;
  return result;
}

uint64_t sub_1BE4BBFD8()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1BE4BC0FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return sub_1BE54CCDC() & 1;
  }
}

uint64_t sub_1BE4BC174()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1BE4BC1C0()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1BE4BC220()
{
  v0 = sub_1BE4FFD44();
  sub_1BE526408(v0);

  return sub_1BE54B6EC();
}

uint64_t sub_1BE4BC360(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BE54ADAC();
  v7 = sub_1BE4CE758(v6);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = a1;
LABEL_5:

    return sub_1BE4C63BC(v10, a2, v9);
  }

  v11 = sub_1BE4BF11C(&qword_1EBDAC4A8, &unk_1BE54F6E0);
  v12 = sub_1BE4CE758(v11);
  if (*(v13 + 84) == a2)
  {
    v9 = v12;
    v10 = a1 + *(a3 + 32);
    goto LABEL_5;
  }

  v15 = *(a1 + *(a3 + 36));
  if (v15 >= 0xFFFFFFFF)
  {
    LODWORD(v15) = -1;
  }

  return (v15 + 1);
}

uint64_t sub_1BE4BC458(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1BE54ADAC();
  v9 = sub_1BE4CE758(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = v9;
    v12 = a1;
  }

  else
  {
    v13 = sub_1BE4BF11C(&qword_1EBDAC4A8, &unk_1BE54F6E0);
    result = sub_1BE4CE758(v13);
    if (*(v15 + 84) != a3)
    {
      *(a1 + *(a4 + 36)) = (a2 - 1);
      return result;
    }

    v11 = result;
    v12 = a1 + *(a4 + 32);
  }

  return sub_1BE4C63F8(v12, a2, a2, v11);
}

uint64_t sub_1BE4BC564()
{
  sub_1BE4FFB64();
  v3 = type metadata accessor for GenerativePartnerSettingsPanelView();
  sub_1BE4C759C(v3);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = *(v6 + 64);
  v8 = *(v0 + 16);
  swift_unknownObjectRelease();
  v9 = sub_1BE4FFEE0();
  sub_1BE4C7470(v9);
  v11 = *(v10 + 8);
  v12 = sub_1BE4FFBCC();
  v11(v12);
  v13 = sub_1BE4FFA28();
  v11(v13);
  v14 = sub_1BE4FFA18();
  v11(v14);
  sub_1BE4FF944();
  sub_1BE4BF11C(&qword_1EBDAC3C0, &qword_1BE54F5E8);
  if (sub_1BE4FFCFC() == 1)
  {
    v15 = sub_1BE54B5BC();
    sub_1BE4C745C(v15);
    (*(v16 + 8))(v1 + v2);
  }

  else
  {
    v17 = *(v1 + v2);
  }

  sub_1BE4FFC1C();
  v18 = *(v2 + 8);

  sub_1BE4FFB30();
  sub_1BE4FFC00();
  v19 = *(v2 + 16);

  sub_1BE4FFB14();
  sub_1BE4FFAD8();
  sub_1BE4FFABC();
  sub_1BE4FFBE4();
  v20 = *(v2 + 8);

  v21 = sub_1BE4FFA08();
  v11(v21);
  v22 = sub_1BE4FF9F8();
  v11(v22);
  sub_1BE4FFAAC();
  sub_1BE4FFB4C();

  return MEMORY[0x1EEE6BDD0](v23, v24, v25);
}

uint64_t sub_1BE4BC6F8()
{
  sub_1BE4FFB64();
  v3 = type metadata accessor for GenerativePartnerSettingsPanelView();
  sub_1BE4C759C(v3);
  v5 = (*(v4 + 80) + 72) & ~*(v4 + 80);
  v7 = *(v6 + 64);
  v8 = *(v0 + 16);
  swift_unknownObjectRelease();
  sub_1BE4C58A8((v0 + 32));
  v9 = sub_1BE4FFEE0();
  sub_1BE4C7470(v9);
  v11 = *(v10 + 8);
  v12 = sub_1BE4FFBCC();
  v11(v12);
  v13 = sub_1BE4FFA28();
  v11(v13);
  v14 = sub_1BE4FFA18();
  v11(v14);
  sub_1BE4FF944();
  sub_1BE4BF11C(&qword_1EBDAC3C0, &qword_1BE54F5E8);
  if (sub_1BE4FFCFC() == 1)
  {
    v15 = sub_1BE54B5BC();
    sub_1BE4C745C(v15);
    (*(v16 + 8))(v1 + v2);
  }

  else
  {
    v17 = *(v1 + v2);
  }

  sub_1BE4FFC1C();
  v18 = *(v2 + 8);

  sub_1BE4FFB30();
  sub_1BE4FFC00();
  v19 = *(v2 + 16);

  sub_1BE4FFB14();
  sub_1BE4FFAD8();
  sub_1BE4FFABC();
  sub_1BE4FFBE4();
  v20 = *(v2 + 8);

  v21 = sub_1BE4FFA08();
  v11(v21);
  v22 = sub_1BE4FF9F8();
  v11(v22);
  sub_1BE4FFAAC();
  sub_1BE4FFB4C();

  return MEMORY[0x1EEE6BDD0](v23, v24, v25);
}

uint64_t sub_1BE4BC898()
{
  sub_1BE4FFB64();
  v3 = type metadata accessor for GenerativePartnerSettingsPanelView();
  sub_1BE4C759C(v3);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = *(v6 + 64);
  v8 = *(v1 + 16);
  swift_unknownObjectRelease();
  v9 = v1 + v5;
  v10 = sub_1BE54ADAC();
  sub_1BE4C7470(v10);
  v12 = *(v11 + 8);
  v13 = sub_1BE4FFBCC();
  v12(v13);
  v14 = sub_1BE4FFA28();
  v12(v14);
  v15 = sub_1BE4FFA18();
  v12(v15);
  sub_1BE4FF944();
  sub_1BE4BF11C(&qword_1EBDAC3C0, &qword_1BE54F5E8);
  if (sub_1BE4FFCFC() == 1)
  {
    v16 = sub_1BE54B5BC();
    sub_1BE4C745C(v16);
    (*(v17 + 8))(v9 + v2);
  }

  else
  {
    v18 = *(v9 + v2);
  }

  sub_1BE4FFC58();
  v19 = *(v7 + 8);

  sub_1BE4FFB30();
  v20 = v9 + *(v0 + 44);
  v21 = *(v20 + 8);

  v22 = *(v20 + 16);

  sub_1BE4FFB14();
  sub_1BE4FFAD8();
  sub_1BE4FFABC();
  v23 = v9 + *(v0 + 60);

  v24 = *(v23 + 8);

  v25 = sub_1BE4FFA08();
  v12(v25);
  v26 = sub_1BE4FF9F8();
  v12(v26);
  sub_1BE4C58A8((v1 + v5));
  sub_1BE4FFB4C();

  return MEMORY[0x1EEE6BDD0](v27, v28, v29);
}

uint64_t sub_1BE4BCA70()
{
  v1 = *(v0 + 16);

  sub_1BE4C58A8((v0 + 32));

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_1BE4BCAC4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1BE54B97C();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1BE4BCB1C()
{
  sub_1BE4FFDA4();
  v1 = sub_1BE4BF11C(&qword_1EBDAC838, &qword_1BE54FAA8);
  sub_1BE4C7470(v1);
  v3 = *(v2 + 32);
  v4 = sub_1BE4D9800();
  v5(v4);
  return v0;
}

uint64_t sub_1BE4BCB7C@<X0>(uint64_t a1@<X8>)
{
  result = sub_1BE54B99C();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_1BE4BCBCC()
{
  sub_1BE4FFB64();
  v3 = type metadata accessor for GenerativePartnerSettingsPanelView();
  sub_1BE4C759C(v3);
  v5 = (*(v4 + 80) + 56) & ~*(v4 + 80);
  v7 = *(v6 + 64);
  sub_1BE4C58A8((v0 + 16));
  v8 = sub_1BE4FFEE0();
  sub_1BE4C7470(v8);
  v10 = *(v9 + 8);
  v11 = sub_1BE4FFBCC();
  v10(v11);
  v12 = sub_1BE4FFA28();
  v10(v12);
  v13 = sub_1BE4FFA18();
  v10(v13);
  sub_1BE4FF944();
  sub_1BE4BF11C(&qword_1EBDAC3C0, &qword_1BE54F5E8);
  if (sub_1BE4FFCFC() == 1)
  {
    v14 = sub_1BE54B5BC();
    sub_1BE4C745C(v14);
    (*(v15 + 8))(v1 + v2);
  }

  else
  {
    v16 = *(v1 + v2);
  }

  sub_1BE4FFC1C();
  v17 = *(v2 + 8);

  sub_1BE4FFB30();
  sub_1BE4FFC00();
  v18 = *(v2 + 16);

  sub_1BE4FFB14();
  sub_1BE4FFAD8();
  sub_1BE4FFABC();
  sub_1BE4FFBE4();
  v19 = *(v2 + 8);

  v20 = sub_1BE4FFA08();
  v10(v20);
  v21 = sub_1BE4FF9F8();
  v10(v21);
  sub_1BE4FFAAC();
  sub_1BE4FFB4C();

  return MEMORY[0x1EEE6BDD0](v22, v23, v24);
}

uint64_t sub_1BE4BCD64()
{
  sub_1BE4FFB64();
  v3 = type metadata accessor for GenerativePartnerSettingsPanelView();
  sub_1BE4C759C(v3);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = *(v6 + 64);
  v8 = v1 + v5;
  v9 = sub_1BE54ADAC();
  sub_1BE4C7470(v9);
  v11 = *(v10 + 8);
  v12 = sub_1BE4FFBCC();
  v11(v12);
  v13 = sub_1BE4FFA28();
  v11(v13);
  v14 = sub_1BE4FFA18();
  v11(v14);
  sub_1BE4FF944();
  sub_1BE4BF11C(&qword_1EBDAC3C0, &qword_1BE54F5E8);
  if (sub_1BE4FFCFC() == 1)
  {
    v15 = sub_1BE54B5BC();
    sub_1BE4C745C(v15);
    (*(v16 + 8))(v8 + v2);
  }

  else
  {
    v17 = *(v8 + v2);
  }

  sub_1BE4FFC58();
  v18 = *(v7 + 8);

  sub_1BE4FFB30();
  v19 = v8 + *(v0 + 44);
  v20 = *(v19 + 8);

  v21 = *(v19 + 16);

  sub_1BE4FFB14();
  sub_1BE4FFAD8();
  sub_1BE4FFABC();
  v22 = v8 + *(v0 + 60);

  v23 = *(v22 + 8);

  v24 = sub_1BE4FFA08();
  v11(v24);
  v25 = sub_1BE4FF9F8();
  v11(v25);
  sub_1BE4C58A8((v1 + v5));
  sub_1BE4FFB4C();

  return MEMORY[0x1EEE6BDD0](v26, v27, v28);
}

uint64_t sub_1BE4BCFD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1BE4D97A4();
  v6 = sub_1BE54AEDC();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return sub_1BE4C63BC(v3, a2, v6);
  }

  else
  {
    v8 = *(v3 + *(a3 + 20));
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    v9 = v8 - 1;
    if (v9 < 0)
    {
      v9 = -1;
    }

    return (v9 + 1);
  }
}

uint64_t sub_1BE4BD084(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1BE54AEDC();
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = sub_1BE50AA28();

    return sub_1BE4C63F8(v9, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2;
  }

  return result;
}

uint64_t sub_1BE4BD150(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BE4BF11C(&qword_1EBDAC548, &qword_1BE54F7C8);
  v5 = sub_1BE4C63BC(a1, a2, v4);
  if (v5 >= 5)
  {
    return v5 - 4;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1BE4BD1A4(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v4 = (a2 + 4);
  }

  else
  {
    v4 = 0;
  }

  sub_1BE4BF11C(&qword_1EBDAC548, &qword_1BE54F7C8);
  v5 = sub_1BE50AA28();

  return sub_1BE4C63F8(v5, v4, a3, v6);
}

uint64_t sub_1BE4BD20C()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[5];

  v3 = v0[6];

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1BE4BD254(uint64_t *a1)
{
  sub_1BE50A878(a1);
  result = sub_1BE5024AC();
  *v1 = result;
  return result;
}

uint64_t sub_1BE4BD280()
{
  v1 = sub_1BE54B40C();
  sub_1BE4C7500(v1);
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 32) & ~v4;
  v7 = (*(v6 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v3 + 8))(v0 + v5, v1);
  v9 = *(v0 + v7);

  return MEMORY[0x1EEE6BDD0](v0, v7 + 8, v4 | 7);
}

uint64_t sub_1BE4BD34C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1BE4BD448(uint64_t *a1)
{
  sub_1BE50A878(a1);
  result = sub_1BE502848();
  *v1 = result;
  return result;
}

uint64_t sub_1BE4BD4D4(uint64_t *a1)
{
  sub_1BE50A878(a1);
  v1 = sub_1BE5023E4();
  return sub_1BE50A8D4(v1);
}

uint64_t sub_1BE4BD520(uint64_t *a1)
{
  sub_1BE50A878(a1);
  result = sub_1BE502204();
  *v1 = result;
  v1[1] = v3;
  return result;
}

uint64_t sub_1BE4BD54C(uint64_t *a1)
{
  sub_1BE50A878(a1);
  v1 = sub_1BE5021C8();
  return sub_1BE50A8D4(v1);
}

uint64_t sub_1BE4BD598(uint64_t *a1)
{
  sub_1BE50A878(a1);
  result = sub_1BE502160();
  *v1 = result;
  return result;
}

uint64_t sub_1BE4BD5C4(uint64_t *a1)
{
  sub_1BE50A878(a1);
  v1 = sub_1BE502110();
  return sub_1BE50A8D4(v1);
}

uint64_t sub_1BE4BD610(uint64_t *a1)
{
  sub_1BE50A878(a1);
  v1 = sub_1BE501FC8();
  return sub_1BE50A8D4(v1);
}

uint64_t sub_1BE4BD65C(uint64_t *a1)
{
  sub_1BE50A878(a1);
  v1 = sub_1BE501F10();
  return sub_1BE50A8D4(v1);
}

uint64_t sub_1BE4BD6A8(uint64_t *a1)
{
  sub_1BE50A878(a1);
  v1 = sub_1BE501D68();
  return sub_1BE50A8D4(v1);
}

uint64_t sub_1BE4BD6F4(uint64_t *a1)
{
  sub_1BE50A878(a1);
  v1 = sub_1BE501CA4();
  return sub_1BE50A8D4(v1);
}

uint64_t sub_1BE4BD740(uint64_t *a1)
{
  sub_1BE50A878(a1);
  v1 = sub_1BE501C68();
  return sub_1BE50A8D4(v1);
}

uint64_t sub_1BE4BD82C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1BE4BD874()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1BE4BD8C8()
{
  MEMORY[0x1BFB48B80](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1BE4BD900()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1BE4BD998()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1BE4BD9D8()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 48);

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1BE4BDA20()
{
  v1 = sub_1BE54B12C();
  sub_1BE4C7500(v1);
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 40) & ~v4;
  v7 = *(v6 + 64);
  v8 = *(v0 + 16);
  swift_unknownObjectRelease();

  (*(v3 + 8))(v0 + v5, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + v7, v4 | 7);
}

uint64_t sub_1BE4BDAE0()
{
  if (MEMORY[0x1E69E7D58])
  {
    return sub_1BE4BF11C(&qword_1EBDACD70, &qword_1BE550630);
  }

  else
  {
    return MEMORY[0x1E69E7CA8] + 8;
  }
}

uint64_t sub_1BE4BDB10()
{
  if (MEMORY[0x1E69E7D58])
  {
    return sub_1BE4BF11C(&qword_1EBDACCF0, &qword_1BE550508);
  }

  else
  {
    return MEMORY[0x1E69E7CA8] + 8;
  }
}

uint64_t sub_1BE4BDB40()
{
  v1 = *(v0 + 24);

  sub_1BE4D9838();

  return MEMORY[0x1EEE6BDD0](v2, v3, v4);
}

uint64_t sub_1BE4BDB74()
{
  MEMORY[0x1BFB48B80](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1BE4BDBAC()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 56);

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1BE4BDC10@<X0>(void *a1@<X8>)
{
  result = sub_1BE54B87C();
  *a1 = v3;
  return result;
}

uint64_t sub_1BE4BDC94()
{
  v1 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1BE4BDCCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BE4BF11C(&qword_1EBDACF68, &qword_1BE5508F0);
  v7 = sub_1BE4CE758(v6);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = a1;
LABEL_5:

    return sub_1BE4C63BC(v10, a2, v9);
  }

  v11 = sub_1BE4BF11C(&qword_1EBDACF70, &qword_1BE5508F8);
  v12 = sub_1BE4CE758(v11);
  if (*(v13 + 84) == a2)
  {
    v9 = v12;
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v15 = *(a1 + *(a3 + 24) + 24);
  if (v15 >= 0xFFFFFFFF)
  {
    LODWORD(v15) = -1;
  }

  return (v15 + 1);
}

uint64_t sub_1BE4BDDD4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1BE4BF11C(&qword_1EBDACF68, &qword_1BE5508F0);
  v9 = sub_1BE4CE758(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = v9;
    v12 = a1;
  }

  else
  {
    v13 = sub_1BE4BF11C(&qword_1EBDACF70, &qword_1BE5508F8);
    result = sub_1BE4CE758(v13);
    if (*(v15 + 84) != a3)
    {
      *(a1 + *(a4 + 24) + 24) = (a2 - 1);
      return result;
    }

    v11 = result;
    v12 = a1 + *(a4 + 20);
  }

  return sub_1BE4C63F8(v12, a2, a2, v11);
}

uint64_t sub_1BE4BDED8(uint64_t *a1)
{
  v1 = *a1;
  sub_1BE4C5948(&qword_1EBDACE30, &qword_1BE550778);
  sub_1BE4C5948(&qword_1EBDACE38, &unk_1BE550780);
  sub_1BE4D97D4();
  sub_1BE516C40();
  sub_1BE4D97D4();
  sub_1BE54C3AC();
  sub_1BE516B68();
  swift_getWitnessTable();
  sub_1BE516B9C();
  sub_1BE54C2FC();
  sub_1BE4C5948(&qword_1EBDACE40, &qword_1BE551510);
  sub_1BE516B9C();
  sub_1BE54B79C();
  sub_1BE516BAC();
  sub_1BE516C40();
  sub_1BE4D97D4();
  sub_1BE54C3AC();
  swift_getWitnessTable();
  sub_1BE516BAC();
  sub_1BE54C2CC();
  sub_1BE54B79C();
  sub_1BE54B79C();
  sub_1BE54B79C();
  sub_1BE516B84();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1BE4BE060@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1BE54B89C();
  *a1 = result;
  return result;
}

uint64_t sub_1BE4BE1F8(uint64_t *a1)
{
  sub_1BE50A878(a1);
  result = sub_1BE522C74();
  *v1 = result;
  return result;
}

uint64_t sub_1BE4BE248(uint64_t *a1)
{
  sub_1BE50A878(a1);
  result = sub_1BE521FA8();
  *v1 = result;
  return result;
}

uint64_t sub_1BE4BE298(uint64_t *a1)
{
  sub_1BE50A878(a1);
  result = sub_1BE522030();
  *v1 = result;
  return result;
}

uint64_t sub_1BE4BE2C4()
{
  v1 = sub_1BE4BF11C(&qword_1EBDAD140, &qword_1BE551150);
  sub_1BE4C745C(v1);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4);
  v6 = *(v0 + v5);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 8, v3 | 7);
}

uint64_t sub_1BE4BE388()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1BE4BE3D0(uint64_t *a1)
{
  sub_1BE50A878(a1);
  result = sub_1BE522D04();
  *v1 = result;
  v1[1] = v3;
  return result;
}

uint64_t sub_1BE4BE400(uint64_t *a1)
{
  sub_1BE50A878(a1);
  result = sub_1BE5205BC();
  *v1 = result;
  v1[1] = v3;
  return result;
}

uint64_t sub_1BE4BE454()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1BE4BE48C()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  sub_1BE4C58A8(v0 + 6);

  return MEMORY[0x1EEE6BDD0](v0, 88, 7);
}

uint64_t sub_1BE4BE500()
{
  MEMORY[0x1BFB48B80](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1BE4BE538(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BE4BF11C(&qword_1EBDAD1B0, &qword_1BE5513D8);
  v7 = sub_1BE4CE758(v6);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = a1;
LABEL_5:

    return sub_1BE4C63BC(v10, a2, v9);
  }

  v11 = sub_1BE54ADAC();
  v12 = sub_1BE4CE758(v11);
  if (*(v13 + 84) == a2)
  {
    v9 = v12;
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v15 = *(a1 + *(a3 + 24));
  if (v15 >= 0xFFFFFFFF)
  {
    LODWORD(v15) = -1;
  }

  return (v15 + 1);
}

uint64_t sub_1BE4BE630(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1BE4BF11C(&qword_1EBDAD1B0, &qword_1BE5513D8);
  v9 = sub_1BE4CE758(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = v9;
    v12 = a1;
  }

  else
  {
    v13 = sub_1BE54ADAC();
    result = sub_1BE4CE758(v13);
    if (*(v15 + 84) != a3)
    {
      *(a1 + *(a4 + 24)) = (a2 - 1);
      return result;
    }

    v11 = result;
    v12 = a1 + *(a4 + 20);
  }

  return sub_1BE4C63F8(v12, a2, a2, v11);
}

uint64_t sub_1BE4BE748@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = sub_1BE527E4C();
  *a2 = result & 1;
  return result;
}

id sub_1BE4BE7EC@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 useConfirmationPrompts];
  *a2 = result;
  return result;
}

uint64_t sub_1BE4BE820()
{
  MEMORY[0x1BFB48B80](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1BE4BE888()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1BE4BE9BC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_1BE539558();
  *a2 = result;
  return result;
}

unint64_t sub_1BE4BE9EC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1BE53CFF0();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1BE4BEA34()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1BE4BEA74()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1BE4BEAAC()
{
  v1 = sub_1BE54B12C();
  sub_1BE4C7500(v1);
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 48) & ~v4;
  v7 = (*(v6 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v0 + 16);
  swift_unknownObjectRelease();
  v9 = *(v0 + 40);

  (*(v3 + 8))(v0 + v5, v1);
  v10 = *(v0 + v7);

  return MEMORY[0x1EEE6BDD0](v0, ((v7 + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v4 | 7);
}

uint64_t sub_1BE4BEB90()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1BE4BEBC8()
{
  v1 = sub_1BE54B12C();
  sub_1BE4C7500(v1);
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 32) & ~v4;
  v7 = *(v6 + 64);
  v8 = *(v0 + 24);

  (*(v3 + 8))(v0 + v5, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + v7, v4 | 7);
}

char *sub_1BE4BECA8(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[40 * a2] <= a3)
  {
    return sub_1BE543184(a3, result);
  }

  return result;
}

uint64_t sub_1BE4BED44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BE5456C4(a1, a2);
  *a3 = result & 1;
  return result;
}

__n128 sub_1BE4BED7C(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_1BE4BEE74(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1BE54B05C();
    if (*(*(v8 - 8) + 84) == a2)
    {
      v9 = v8;
      v10 = *(a3 + 28);
    }

    else
    {
      v9 = sub_1BE4BF11C(&qword_1EBDABEE8, &unk_1BE54F050);
      v10 = *(a3 + 32);
    }

    return sub_1BE4C63BC(a1 + v10, a2, v9);
  }
}

uint64_t sub_1BE4BEF4C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_1BE54B05C();
    if (*(*(v8 - 8) + 84) == a3)
    {
      v9 = v8;
      v10 = *(a4 + 28);
    }

    else
    {
      v9 = sub_1BE4BF11C(&qword_1EBDABEE8, &unk_1BE54F050);
      v10 = *(a4 + 32);
    }

    return sub_1BE4C63F8(v5 + v10, a2, a2, v9);
  }

  return result;
}

uint64_t sub_1BE4BF07C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1BE4BF094(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_1BE4BF0D8(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1BE4BF11C(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_1BE4BF16C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BE4BF11C(&qword_1EBDABAF8, &qword_1BE54DC20);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

BOOL sub_1BE4BF260()
{
  v1 = v0[3];
  LOBYTE(v7) = *(v0 + 16);
  v8 = v1;
  sub_1BE4BF11C(&qword_1EBDABD28, &qword_1BE54DE90);
  sub_1BE54C24C();
  if (v6 != 1)
  {
    return 0;
  }

  sub_1BE4C6EFC((v0 + 6), &v7, &qword_1EBDABAF8, &qword_1BE54DC20);
  v2 = v9;
  sub_1BE4C6F5C(&v7, &qword_1EBDABAF8, &qword_1BE54DC20);
  if (!v2)
  {
    return 0;
  }

  v3 = v0[1];
  v7 = *v0;
  v8 = v3;
  sub_1BE4BF11C(&qword_1EBDABB08, &qword_1BE54DC30);
  sub_1BE54C24C();
  sub_1BE4DB08C(&v7);

  v4 = v9 == 0;
  sub_1BE4C6F5C(&v7, &qword_1EBDABAF8, &qword_1BE54DC20);
  return v4;
}

uint64_t sub_1BE4BF374()
{
  sub_1BE4C6EFC((v0 + 6), v21, &qword_1EBDABAF8, &qword_1BE54DC20);
  v1 = v22;
  if (v22)
  {
    v2 = v23;
    sub_1BE4C52F4(v21, v22);
    v3 = (*(v2 + 8))(v1, v2);
    v1 = v4;
    sub_1BE4C58A8(v21);
  }

  else
  {
    sub_1BE4C6F5C(v21, &qword_1EBDABAF8, &qword_1BE54DC20);
    v3 = 0;
  }

  v5 = v0[1];
  v21[0] = *v0;
  v21[1] = v5;
  sub_1BE4BF11C(&qword_1EBDABB08, &qword_1BE54DC30);
  sub_1BE54C24C();
  sub_1BE4DB08C(v21);

  v6 = v22;
  if (!v22)
  {
    sub_1BE4C6F5C(v21, &qword_1EBDABAF8, &qword_1BE54DC20);
    if (v1)
    {
      goto LABEL_15;
    }

    goto LABEL_17;
  }

  v7 = v23;
  v8 = sub_1BE4C52F4(v21, v22);
  v9 = *(v6 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v21[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v12);
  sub_1BE4C6F5C(v21, &qword_1EBDABAF8, &qword_1BE54DC20);
  v13 = (*(v7 + 8))(v6, v7);
  v15 = v14;
  (*(v9 + 8))(v12, v6);
  if (!v1)
  {
    if (v15)
    {
LABEL_15:

      v18 = 1;
      return v18 & 1;
    }

LABEL_17:
    v18 = 0;
    return v18 & 1;
  }

  if (!v15)
  {
    goto LABEL_15;
  }

  if (v3 == v13 && v1 == v15)
  {

    goto LABEL_17;
  }

  v17 = sub_1BE54CCDC();

  v18 = v17 ^ 1;
  return v18 & 1;
}

uint64_t sub_1BE4BF610()
{
  v10 = *v0;
  v11 = v0[1];
  sub_1BE4BF11C(&qword_1EBDABB08, &qword_1BE54DC30);
  sub_1BE54C24C();
  v1 = sub_1BE4DB5F0();

  sub_1BE4D98B8(v1);
  v3 = v2;
  v5 = v4;

  if (v3)
  {

    if (sub_1BE4D9918(v5) == 0x6F72746E69 && v6 == 0xE500000000000000)
    {

      v8 = 1;
    }

    else
    {
      v8 = sub_1BE54CCDC();
    }
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

uint64_t GenerativePartnerOnboardingSheet.init(skipToDefaultProviderSetup:forceShowNotNowButton:dismissAction:)@<X0>(char a1@<W0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  if (qword_1EBDABAB8 != -1)
  {
    sub_1BE4C7514();
  }

  v8 = sub_1BE54B2EC();
  sub_1BE4C52BC(v8, qword_1EBDB0C68);
  v9 = sub_1BE54B2BC();
  v10 = sub_1BE54C97C();
  if (!os_log_type_enabled(v9, v10))
  {

    if ((a1 & 1) == 0)
    {
      return sub_1BE4BF9A0(a2, a3, a4);
    }

    goto LABEL_12;
  }

  v24 = a3;
  v11 = swift_slowAlloc();
  v12 = swift_slowAlloc();
  v25 = v12;
  *v11 = 136446210;
  if (qword_1EDDD6890 != -1)
  {
    sub_1BE4C7480();
  }

  sub_1BE53C930(v26);
  v13 = v27;
  if (v27)
  {
    v14 = v28;
    sub_1BE4C52F4(v26, v27);
    sub_1BE4C75D0(v14);
    v16 = v15(v13, v14);
    v18 = v17;
    sub_1BE4C58A8(v26);
  }

  else
  {
    sub_1BE4C6F5C(v26, &qword_1EBDABAF8, &qword_1BE54DC20);
    v18 = 0xE600000000000000;
    v16 = 0x3E656E6F6E3CLL;
  }

  v19 = sub_1BE4C5338(v16, v18, &v25);

  *(v11 + 4) = v19;
  _os_log_impl(&dword_1BE4B8000, v9, v10, "[Onboarding.init] defaultLLM.id = %{public}s", v11, 0xCu);
  sub_1BE4C58A8(v12);
  sub_1BE4C75DC();
  sub_1BE4C75DC();

  a3 = v24;
  if (a1)
  {
LABEL_12:
    if (qword_1EDDD6890 != -1)
    {
      sub_1BE4C7480();
    }

    sub_1BE53C930(v26);
    v20 = v27;
    if (v27)
    {
      v21 = v28;
      sub_1BE4C52F4(v26, v27);
      sub_1BE4C75D0(v21);
      v22(v20, v21);
      sub_1BE4C58A8(v26);
    }

    else
    {
      sub_1BE4C6F5C(v26, &qword_1EBDABAF8, &qword_1BE54DC20);
    }
  }

  return sub_1BE4BF9A0(a2, a3, a4);
}

uint64_t sub_1BE4BF9A0@<X0>(uint64_t a1@<X4>, uint64_t a2@<X5>, uint64_t a3@<X8>)
{
  v4 = type metadata accessor for PartnerOnboardingViewModel();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  *&v45[0] = sub_1BE4DC8EC();
  sub_1BE54C23C();
  v7 = *(&v46 + 1);
  *a3 = v46;
  *(a3 + 8) = v7;
  LOBYTE(v45[0]) = 0;
  sub_1BE54C23C();
  v8 = *(&v46 + 1);
  *(a3 + 32) = v46;
  *(a3 + 40) = v8;
  v9 = type metadata accessor for GenerativePartnerOnboardingSheet();
  v10 = *(v9 + 40);
  *&v46 = 0x4042000000000000;
  sub_1BE4C667C();
  sub_1BE54B67C();
  v11 = *(v9 + 44);
  *(a3 + v11) = sub_1BE54C19C();
  if (qword_1EDDD6890 != -1)
  {
    sub_1BE4C7480();
  }

  v12 = off_1EDDD6898;
  sub_1BE53C930(&v46);
  v13 = *(&v47 + 1);
  if (*(&v47 + 1))
  {
    v14 = v48;
    sub_1BE4C52F4(&v46, *(&v47 + 1));
    sub_1BE4C75D0(v14);
    v16 = v15(v13, v14);
    v13 = v17;
    sub_1BE4C58A8(&v46);
  }

  else
  {
    sub_1BE4C6F5C(&v46, &qword_1EBDABAF8, &qword_1BE54DC20);
    v16 = 0;
  }

  sub_1BE53CA80(&v46);
  swift_beginAccess();
  v18 = v12[2];
  v19 = *(v18 + 16);
  v20 = v18 + 32;

  if (!v19)
  {
LABEL_16:
    v44 = 0;
    v42 = 0u;
    v43 = 0u;
    goto LABEL_19;
  }

  while (1)
  {
    sub_1BE4C6918(v20, &v39);
    v21 = v40;
    v22 = v41;
    sub_1BE4C52F4(&v39, v40);
    sub_1BE4C75D0(v22);
    v24 = v23(v21, v22);
    if (!v13)
    {

      goto LABEL_15;
    }

    if (v24 == v16 && v13 == v25)
    {
      break;
    }

    v27 = sub_1BE54CCDC();

    if (v27)
    {
      goto LABEL_18;
    }

LABEL_15:
    sub_1BE4C58A8(&v39);
    v20 += 40;
    if (!--v19)
    {
      goto LABEL_16;
    }
  }

LABEL_18:
  sub_1BE4BF094(&v39, &v42);
LABEL_19:

  if (*(&v43 + 1))
  {
    sub_1BE4BF094(&v42, v45);
    sub_1BE4BF094(v45, a3 + 48);
  }

  else
  {
    sub_1BE4C6F5C(&v42, &qword_1EBDABAF8, &qword_1BE54DC20);
    sub_1BE4C6EFC(&v46, a3 + 48, &qword_1EBDABAF8, &qword_1BE54DC20);
    if (v13)
    {
      if (qword_1EBDABAB8 != -1)
      {
        sub_1BE4C7514();
      }

      v28 = sub_1BE54B2EC();
      sub_1BE4C52BC(v28, qword_1EBDB0C68);

      v29 = sub_1BE54B2BC();
      v30 = sub_1BE54C98C();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        v32 = swift_slowAlloc();
        *&v45[0] = v32;
        *v31 = 136446210;
        v33 = sub_1BE4C5338(v16, v13, v45);

        *(v31 + 4) = v33;
        _os_log_impl(&dword_1BE4B8000, v29, v30, "[Onboarding.preselectedProvider] Failed to find LLM provider with ID '%{public}s'", v31, 0xCu);
        sub_1BE4C58A8(v32);
        sub_1BE4C75DC();
        sub_1BE4C75DC();
      }

      else
      {
      }
    }
  }

  *(a3 + 88) = 1;
  v34 = swift_allocObject();
  v35 = v47;
  *(v34 + 16) = v46;
  *(v34 + 32) = v35;
  *(v34 + 48) = v48;
  *(v34 + 56) = a1;
  *(v34 + 64) = a2;

  *(a3 + 96) = sub_1BE4C7018;
  *(a3 + 104) = v34;
  *(a3 + 16) = 1;
  *(a3 + 24) = 0;
  return result;
}

uint64_t sub_1BE4BFDE0(uint64_t a1, char a2, uint64_t a3, void (*a4)(void))
{
  sub_1BE4C6EFC(a3, v49, &qword_1EBDABAF8, &qword_1BE54DC20);
  sub_1BE4C7024(a1, &v41);
  if (v44)
  {
    if (v44 == 1)
    {
      sub_1BE4C6F5C(v49, &qword_1EBDABAF8, &qword_1BE54DC20);
      sub_1BE4BF094(&v41, &v46);
      sub_1BE4C6918(&v46, v49);
      sub_1BE4C58A8(&v46);
      v40 = 0;
      v7 = 0;
      goto LABEL_9;
    }

    if (*(&v42 + 1) | v43 | v41 | v42 | *(&v41 + 1))
    {
      v7 = 0;
      v40 = v41 == 1 && (*(&v42 + 1) | v43 | v42 | *(&v41 + 1)) == 0;
      goto LABEL_9;
    }

    sub_1BE4C6F5C(v49, &qword_1EBDABAF8, &qword_1BE54DC20);
    v40 = 0;
    memset(v49, 0, sizeof(v49));
    v50 = 0;
  }

  else
  {
    sub_1BE4C6F5C(v49, &qword_1EBDABAF8, &qword_1BE54DC20);
    sub_1BE4BF094(&v41, &v46);
    sub_1BE4C6918(&v46, v49);
    sub_1BE4C58A8(&v46);
    v40 = 0;
  }

  v7 = 1;
LABEL_9:
  sub_1BE4C6EFC(v49, &v46, &qword_1EBDABAF8, &qword_1BE54DC20);
  if (v47)
  {
    v8 = a4;
    sub_1BE4BF094(&v46, &v41);
    v9 = *(&v42 + 1);
    v10 = v43;
    sub_1BE4C52F4(&v41, *(&v42 + 1));
    v11 = (*(v10 + 8))(v9, v10);
    v13 = v12;
    sub_1BE4C6EFC(a3, &v46, &qword_1EBDABAF8, &qword_1BE54DC20);
    v14 = v47;
    if (v47)
    {
      v15 = v48;
      sub_1BE4C52F4(&v46, v47);
      v16 = (*(v15 + 8))(v14, v15);
      v18 = v17;
      sub_1BE4C58A8(&v46);
      if (v11 == v16 && v13 == v18)
      {

LABEL_26:

        goto LABEL_27;
      }

      v20 = sub_1BE54CCDC();

      if (v20)
      {
LABEL_27:
        sub_1BE4C58A8(&v41);
        a4 = v8;
        if (!v7)
        {
          goto LABEL_39;
        }

        goto LABEL_28;
      }
    }

    else
    {
      sub_1BE4C6F5C(&v46, &qword_1EBDABAF8, &qword_1BE54DC20);
    }

    if (qword_1EDDD6890 != -1)
    {
      swift_once();
    }

    v21 = *(&v42 + 1);
    v22 = v43;
    sub_1BE4C52F4(&v41, *(&v42 + 1));
    (*(v22 + 8))(v21, v22);
    sub_1BE53CD40();
    goto LABEL_26;
  }

  sub_1BE4C6F5C(&v46, &qword_1EBDABAF8, &qword_1BE54DC20);
  if (qword_1EDDD6890 != -1)
  {
    swift_once();
  }

  type metadata accessor for GenerativePartnerServiceUserDefaults();
  sub_1BE53F998(0, 0xE000000000000000, 0);
  if (v7)
  {
LABEL_28:
    sub_1BE4C6EFC(v49, &v46, &qword_1EBDABAF8, &qword_1BE54DC20);
    if (v47)
    {
      sub_1BE4BF094(&v46, &v41);
      v23 = *(&v42 + 1);
      v24 = v43;
      sub_1BE4C52F4(&v41, *(&v42 + 1));
      v25 = (*(v24 + 8))(v23, v24);
      v27 = v26;
      sub_1BE4C6EFC(a3, &v46, &qword_1EBDABAF8, &qword_1BE54DC20);
      v28 = v47;
      if (v47)
      {
        v29 = v48;
        sub_1BE4C52F4(&v46, v47);
        v30 = (*(v29 + 8))(v28, v29);
        v32 = v31;
        sub_1BE4C58A8(&v46);
        if (v25 != v30 || v27 != v32)
        {
          sub_1BE54CCDC();
        }
      }

      else
      {
        sub_1BE4C6F5C(&v46, &qword_1EBDABAF8, &qword_1BE54DC20);
      }

      sub_1BE4C58A8(&v41);
    }

    else
    {
      sub_1BE4C6F5C(&v46, &qword_1EBDABAF8, &qword_1BE54DC20);
    }
  }

LABEL_39:
  if (a2 != 5)
  {
    type metadata accessor for GenerativePartnerServiceAnalytics();
    sub_1BE4BF11C(&qword_1EBDABD90, &unk_1BE54E420);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1BE54DC10;
    *(inited + 32) = 0x547373696D736964;
    *(inited + 40) = 0xEB00000000657079;
    v35 = sub_1BE54C6DC();

    *(inited + 48) = v35;
    *(inited + 56) = 0x6567617473;
    *(inited + 64) = 0xE500000000000000;
    sub_1BE4D9918(a2);
    v36 = sub_1BE54C6DC();

    *(inited + 72) = v36;
    sub_1BE4C70B0();
    v37 = sub_1BE54C61C();
    sub_1BE52D9C4(1, v37);
  }

  sub_1BE4C6EFC(v49, &v46, &qword_1EBDABAF8, &qword_1BE54DC20);
  v41 = 0u;
  v42 = 0u;
  v43 = 0;
  sub_1BE4BF16C(&v46, &v41);
  v44 = v7;
  v45 = v40;
  a4(&v41);
  sub_1BE4C6F5C(v49, &qword_1EBDABAF8, &qword_1BE54DC20);
  return sub_1BE4C7080(&v41);
}

uint64_t GenerativePartnerOnboardingSheet.body.getter@<X0>(uint64_t a1@<X8>)
{
  v66 = a1;
  v2 = type metadata accessor for GenerativePartnerOnboardingSheet();
  v3 = *(v2 - 8);
  v64 = v2 - 8;
  v63 = v3;
  v62 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v61 = &v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = sub_1BE4BF11C(&qword_1EBDABB00, &qword_1BE54DC28);
  v5 = sub_1BE4C7470(v65);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v60 = &v48 - v8;
  v9 = *v1;
  v10 = v1[1];
  v11 = v1;
  v59 = v1;
  v79 = v9;
  v80 = v10;
  sub_1BE4BF11C(&qword_1EBDABB08, &qword_1BE54DC30);
  sub_1BE54C26C();
  v12 = v68;
  v13 = v69;
  v14 = v70;
  swift_getKeyPath();
  v79 = v12;
  v80 = v13;
  v81 = v14;
  sub_1BE4BF11C(&qword_1EBDABB10, &qword_1BE54DC60);
  sub_1BE54C31C();

  v15 = v77;
  v58 = v78;

  v75 = v15;
  v76 = v58;
  v67 = v11;
  *&v58 = sub_1BE4BF11C(&qword_1EBDABB18, &qword_1BE54DC68);
  v57 = sub_1BE4BF11C(&qword_1EBDABB20, &qword_1BE54DC70);
  v56 = sub_1BE4C75B4(&qword_1EBDABB28);
  v55 = sub_1BE4C75B4(&qword_1EBDABB30);
  v54 = sub_1BE4C75B4(&qword_1EBDABB38);
  v53 = sub_1BE4C5948(&qword_1EBDABB40, &qword_1BE54DC78);
  v49 = sub_1BE4C5948(&qword_1EBDABB48, &qword_1BE54DC80);
  v52 = sub_1BE4C5948(&qword_1EBDABB50, &qword_1BE54DC88);
  v16 = sub_1BE4C5948(&qword_1EBDABB58, &unk_1BE54DC90);
  v51 = sub_1BE4C5948(&qword_1EBDABB60, &unk_1BE54E4F0);
  v50 = sub_1BE4C5948(&qword_1EBDABB68, &qword_1BE54DCA0);
  v17 = sub_1BE4C5948(&qword_1EBDABB70, &qword_1BE54DCA8);
  v18 = sub_1BE4C5948(&qword_1EBDABB78, &qword_1BE54DCB0);
  v19 = sub_1BE4C5990();
  v20 = sub_1BE4C5A40();
  v21 = sub_1BE4C5948(&qword_1EBDABBA0, &qword_1BE54DCC0);
  v22 = sub_1BE4C5948(&qword_1EBDABBA8, &qword_1BE54DCC8);
  v23 = sub_1BE4C5A94();
  v68 = v22;
  v69 = v23;
  v24 = sub_1BE4C7534();
  v25 = sub_1BE4C5948(&qword_1EBDABC38, &qword_1BE54DD08);
  sub_1BE4C74D0();
  v27 = sub_1BE4C6A14(v26, &qword_1EBDABC38, &qword_1BE54DD08);
  v68 = v25;
  v69 = v27;
  v28 = sub_1BE4C7534();
  v29 = v49;
  v68 = v21;
  v69 = v49;
  v70 = v24;
  v71 = v28;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v68 = v17;
  v69 = &type metadata for PartnerOnboardingStageData;
  v70 = v18;
  v71 = v19;
  v72 = v20;
  v73 = OpaqueTypeConformance2;
  v31 = sub_1BE4C7534();
  sub_1BE4C74A0();
  v33 = sub_1BE4C6A14(v32, &qword_1EBDABB58, &unk_1BE54DC90);
  v68 = v50;
  v69 = v16;
  v70 = MEMORY[0x1E6981148];
  v71 = &type metadata for PartnerOnboardingConfirmationConfiguration;
  v72 = v31;
  v73 = v33;
  v74 = MEMORY[0x1E6981138];
  v34 = sub_1BE4C7534();
  v35 = sub_1BE4C5F2C();
  v68 = v52;
  v69 = v16;
  v70 = v51;
  v71 = v34;
  v72 = v33;
  v73 = v35;
  v36 = sub_1BE4C7534();
  v68 = v53;
  v69 = v29;
  v70 = v36;
  v71 = v28;
  swift_getOpaqueTypeConformance2();
  v37 = v60;
  sub_1BE54B7AC();
  v38 = v59;
  v39 = v61;
  sub_1BE4C5FA8(v59, v61);
  v40 = (*(v63 + 80) + 16) & ~*(v63 + 80);
  v41 = swift_allocObject();
  sub_1BE4C600C(v39, v41 + v40);
  v42 = (v37 + *(sub_1BE4BF11C(&qword_1EBDABC60, &qword_1BE54DD18) + 36));
  *v42 = sub_1BE4C6070;
  v42[1] = v41;
  v42[2] = 0;
  v42[3] = 0;
  v43 = *(v38 + *(v64 + 52));
  KeyPath = swift_getKeyPath();
  v68 = v43;

  v45 = sub_1BE54B6AC();
  v46 = (v37 + *(v65 + 36));
  *v46 = KeyPath;
  v46[1] = v45;
  sub_1BE4C60E0();
  sub_1BE54C0DC();
  return sub_1BE4BA520(v37);
}

uint64_t sub_1BE4C0B64@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_1BE4DB5F0();
  *a2 = result;
  return result;
}

uint64_t sub_1BE4C0B90(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_1BE4DB664(v4);
}

uint64_t sub_1BE4C0BBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v108 = a2;
  v3 = sub_1BE54C69C();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v102 = v85 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1BE54AF6C();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v116 = v85 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = sub_1BE54AD8C();
  v120 = *(v115 - 8);
  v9 = v120[8];
  MEMORY[0x1EEE9AC00](v115);
  v114 = v85 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1BE54C6BC();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v112 = (v85 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v119 = sub_1BE54ADAC();
  v121 = *(v119 - 8);
  v14 = *(v121 + 64);
  v15 = MEMORY[0x1EEE9AC00](v119);
  v117 = v85 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v109 = v85 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v118 = v85 - v19;
  v20 = type metadata accessor for GenerativePartnerOnboardingSheet();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v110 = sub_1BE4BF11C(&qword_1EBDABB70, &qword_1BE54DCA8);
  v23 = *(*(v110 - 8) + 64);
  MEMORY[0x1EEE9AC00](v110);
  v97 = v85 - v24;
  v99 = sub_1BE4BF11C(&qword_1EBDABB68, &qword_1BE54DCA0);
  v98 = *(v99 - 8);
  v25 = *(v98 + 64);
  MEMORY[0x1EEE9AC00](v99);
  v111 = v85 - v26;
  v105 = sub_1BE4BF11C(&qword_1EBDABB50, &qword_1BE54DC88);
  v103 = *(v105 - 8);
  v27 = *(v103 + 64);
  MEMORY[0x1EEE9AC00](v105);
  v113 = v85 - v28;
  v107 = sub_1BE4BF11C(&qword_1EBDABB40, &qword_1BE54DC78);
  v106 = *(v107 - 8);
  v29 = *(v106 + 64);
  MEMORY[0x1EEE9AC00](v107);
  v104 = v85 - v30;
  sub_1BE4C1D2C();
  v122 = a1;
  sub_1BE4C5FA8(a1, v85 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v31 = (*(v21 + 80) + 16) & ~*(v21 + 80);
  v32 = swift_allocObject();
  sub_1BE4C600C(v85 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0), v32 + v31);
  v33 = sub_1BE4BF11C(&qword_1EBDABB78, &qword_1BE54DCB0);
  v34 = sub_1BE4C5990();
  v35 = sub_1BE4C5A40();
  v36 = sub_1BE4C5948(&qword_1EBDABBA0, &qword_1BE54DCC0);
  v37 = sub_1BE4C5948(&qword_1EBDABB48, &qword_1BE54DC80);
  v38 = sub_1BE4C5948(&qword_1EBDABBA8, &qword_1BE54DCC8);
  v39 = sub_1BE4C5A94();
  v129 = v38;
  v130 = v39;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v41 = sub_1BE4C5948(&qword_1EBDABC38, &qword_1BE54DD08);
  v42 = sub_1BE4C6A14(&qword_1EBDABC40, &qword_1EBDABC38, &qword_1BE54DD08);
  v129 = v41;
  v130 = v42;
  v43 = swift_getOpaqueTypeConformance2();
  v129 = v36;
  v130 = v37;
  v101 = v37;
  v131 = OpaqueTypeConformance2;
  v132 = v43;
  v100 = v43;
  v90 = swift_getOpaqueTypeConformance2();
  v93 = v33;
  v92 = v34;
  v91 = v35;
  v44 = v97;
  sub_1BE54C0BC();

  sub_1BE4C6F5C(v44, &qword_1EBDABB70, &qword_1BE54DCA8);
  sub_1BE54C65C();
  if (qword_1EBDABA88 != -1)
  {
    swift_once();
  }

  v45 = sub_1BE4C52BC(v115, qword_1EBDB0C08);
  v46 = v120[2];
  v97 = v45;
  v120 += 2;
  v96 = v46;
  (v46)(v114);
  sub_1BE54AF2C();
  sub_1BE54ADBC();
  v47 = *(v122 + 8);
  v123 = *v122;
  v48 = v123;
  v89 = v123;
  v124 = v47;
  v49 = v47;
  v88 = v47;
  v87 = sub_1BE4BF11C(&qword_1EBDABB08, &qword_1BE54DC30);
  sub_1BE54C26C();
  v50 = v129;
  v51 = v130;
  v52 = v131;
  swift_getKeyPath();
  v139 = v50;
  v140 = v51;
  v141 = v52;
  sub_1BE4BF11C(&qword_1EBDABB10, &qword_1BE54DC60);
  sub_1BE54C31C();

  v85[2] = v136;
  v85[1] = v137;
  v86 = v138;

  v129 = v48;
  v130 = v49;
  sub_1BE54C24C();
  sub_1BE4DB8D0(&v129);

  v85[0] = v85;
  MEMORY[0x1EEE9AC00](v53);
  v54 = v121;
  v55 = *(v121 + 16);
  v95 = v121 + 16;
  v94 = v55;
  v55(v109, v118, v119);
  v56 = sub_1BE54BF7C();
  v58 = v57;
  LOBYTE(v48) = v59;
  v60 = sub_1BE4BF11C(&qword_1EBDABB58, &unk_1BE54DC90);
  v123 = v110;
  v124 = &type metadata for PartnerOnboardingStageData;
  v125 = v93;
  v126 = v92;
  v127 = v91;
  v128 = v90;
  v61 = swift_getOpaqueTypeConformance2();
  v110 = sub_1BE4C6A14(&qword_1EBDABC48, &qword_1EBDABB58, &unk_1BE54DC90);
  v93 = v61;
  v109 = v60;
  v62 = v99;
  v63 = v111;
  sub_1BE54C06C();
  sub_1BE4C68C8(v56, v58, v48 & 1);

  sub_1BE4C6F5C(&v129, &qword_1EBDABD30, &qword_1BE54DEC0);
  v64 = v118;
  v65 = v119;
  v92 = *(v54 + 8);
  v92(v118, v119);
  (*(v98 + 8))(v63, v62);
  sub_1BE54C68C();
  sub_1BE54C67C();
  v129 = v89;
  v130 = v88;
  sub_1BE54C24C();
  sub_1BE4DB08C(&v129);

  v66 = v54 + 8;
  v67 = v62;
  v121 = v66;
  if (v132)
  {
    sub_1BE4C6918(&v129, &v123);
    sub_1BE4C6F5C(&v129, &qword_1EBDABAF8, &qword_1BE54DC20);
    v68 = v126;
    v69 = v127;
    sub_1BE4C52F4(&v123, v126);
    (*(v69 + 16))(v68, v69);
    sub_1BE4C58A8(&v123);
  }

  else
  {
    sub_1BE4C6F5C(&v129, &qword_1EBDABAF8, &qword_1BE54DC20);
  }

  sub_1BE54C66C();

  sub_1BE54C67C();
  sub_1BE54C6AC();
  v96(v114, v97, v115);
  sub_1BE54AF2C();
  v70 = v117;
  sub_1BE54ADBC();
  v71 = *(v122 + 40);
  LOBYTE(v123) = *(v122 + 32);
  v124 = v71;
  sub_1BE4BF11C(&qword_1EBDABD28, &qword_1BE54DE90);
  v72 = sub_1BE54C26C();
  v120 = v85;
  v115 = v129;
  v114 = v130;
  LODWORD(v116) = v131;
  v73 = MEMORY[0x1EEE9AC00](v72);
  MEMORY[0x1EEE9AC00](v73);
  v94(v64, v70, v65);
  v102 = sub_1BE54BF7C();
  v98 = v74;
  LOBYTE(v70) = v75;
  v111 = sub_1BE4BF11C(&qword_1EBDABB60, &unk_1BE54E4F0);
  v129 = v67;
  v130 = v109;
  v131 = MEMORY[0x1E6981148];
  v132 = &type metadata for PartnerOnboardingConfirmationConfiguration;
  v133 = v93;
  v76 = v110;
  v134 = v110;
  v135 = MEMORY[0x1E6981138];
  v112 = swift_getOpaqueTypeConformance2();
  v118 = sub_1BE4C5F2C();
  v77 = v105;
  v78 = v104;
  v79 = v102;
  v80 = v98;
  v81 = v113;
  sub_1BE54C07C();
  sub_1BE4C68C8(v79, v80, v70 & 1);

  v92(v117, v119);
  v82 = (*(v103 + 8))(v81, v77);
  MEMORY[0x1EEE9AC00](v82);
  v129 = v77;
  v130 = v109;
  v131 = v111;
  v132 = v112;
  v133 = v76;
  v134 = v118;
  swift_getOpaqueTypeConformance2();
  v83 = v107;
  sub_1BE54C14C();
  return (*(v106 + 8))(v78, v83);
}

uint64_t sub_1BE4C1D2C()
{
  v0 = sub_1BE4BF11C(&qword_1EBDABD80, &qword_1BE54DF18);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v9 - v2;
  v4 = sub_1BE4BF11C(&qword_1EBDABB90, &qword_1BE54DCB8);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v9 - v6;
  if (AFMontaraRestricted() & 1) == 0 && (static GenerativePartnerRestrictionUtils.isHardDisabled.getter() & 1) == 0 && (sub_1BE52AA84())
  {
    sub_1BE52AC38();
  }

  sub_1BE4C4A60(v7);
  sub_1BE4C6EFC(v7, v3, &qword_1EBDABB90, &qword_1BE54DCB8);
  swift_storeEnumTagMultiPayload();
  sub_1BE4C6A14(&qword_1EBDABB88, &qword_1EBDABB90, &qword_1BE54DCB8);
  sub_1BE54BC0C();
  return sub_1BE4C6F5C(v7, &qword_1EBDABB90, &qword_1BE54DCB8);
}

uint64_t sub_1BE4C1ECC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BE4BF11C(&qword_1EBDABBA0, &qword_1BE54DCC0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v14[-v7];
  sub_1BE4C2108(*a1, *(a1 + 8), *(a1 + 16), a2);
  sub_1BE4BF610();
  v9 = sub_1BE4BF11C(&qword_1EBDABBA8, &qword_1BE54DCC8);
  v10 = sub_1BE4C5A94();
  sub_1BE54C0EC();
  sub_1BE4C6F5C(&v16, &qword_1EBDABBA8, &qword_1BE54DCC8);
  v15 = a2;
  sub_1BE4BF11C(&qword_1EBDABB48, &qword_1BE54DC80);
  v16 = v9;
  v17 = v10;
  swift_getOpaqueTypeConformance2();
  v11 = sub_1BE4C5948(&qword_1EBDABC38, &qword_1BE54DD08);
  v12 = sub_1BE4C6A14(&qword_1EBDABC40, &qword_1EBDABC38, &qword_1BE54DD08);
  v16 = v11;
  v17 = v12;
  swift_getOpaqueTypeConformance2();
  sub_1BE54C14C();
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_1BE4C2108(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v8 = type metadata accessor for GenerativePartnerOnboardingSheet();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = type metadata accessor for OBKSheetData(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  switch(a3)
  {
    case 1:
      result = sub_1BE4D99CC(a1, a2, __src);
      if (!*(&__src[1] + 1))
      {
        goto LABEL_27;
      }

      sub_1BE4C6918(__src, &v49);
      v29 = *(a4 + 8);
      v47 = *a4;
      v48 = v29;
      sub_1BE4BF11C(&qword_1EBDABB08, &qword_1BE54DC30);
      sub_1BE54C24C();
      v30 = v53[0];
      v31 = *(a4 + 88) == 1 && sub_1BE4BF260();
      v43 = sub_1BE4BF610();
      v44 = sub_1BE4BF374();
      type metadata accessor for OBKSheetsManager();
      swift_allocObject();
      sub_1BE4CEA08(&v49, v30, v31, v43 & 1, v44 & 1);
      sub_1BE4CA39C(v14);
      v40 = sub_1BE4CEA6C(v14);
      sub_1BE4C6DB0(v14, type metadata accessor for OBKSheetData);
      v45 = sub_1BE54B7BC();
      v46 = sub_1BE54BE4C();

      sub_1BE4C58A8(__src);
      *&v49 = v40;
      *(&v49 + 1) = v45;
      v50 = v46;
      v51 = 1;
      goto LABEL_20;
    case 2:
      result = sub_1BE4D99CC(a1, a2, __src);
      if (*(&__src[1] + 1))
      {
        sub_1BE4C6918(__src, &v49);
        v19 = *(a4 + 8);
        v47 = *a4;
        v48 = v19;
        sub_1BE4BF11C(&qword_1EBDABB08, &qword_1BE54DC30);
        sub_1BE54C24C();
        v20 = v53[0];
        v21 = *(a4 + 88) == 1 && sub_1BE4BF260();
        v32 = sub_1BE4BF610();
        v33 = sub_1BE4BF374();
        type metadata accessor for OBKSheetsManager();
        swift_allocObject();
        sub_1BE4CEA08(&v49, v20, v21, v32 & 1, v33 & 1);
        sub_1BE4CBE14(v14);
        v34 = sub_1BE4CEA6C(v14);
        sub_1BE4C6DB0(v14, type metadata accessor for OBKSheetData);
        v35 = sub_1BE54B7BC();
        v36 = sub_1BE54BE4C();

        sub_1BE4C58A8(__src);
        *&__src[0] = v34;
        *(&__src[0] + 1) = v35;
        LOBYTE(__src[1]) = v36;
        v55 = 0;
        v37 = v34;
        sub_1BE4BF11C(&qword_1EBDABBF0, &qword_1BE54DCE8);
        sub_1BE4BF11C(&qword_1EBDABC18, &qword_1BE54DCF8);
        sub_1BE4C5CB4();
        sub_1BE4C5E20();
        sub_1BE54BC0C();
        sub_1BE4C6EFC(&v47, __src, &qword_1EBDABC08, &qword_1BE54DCF0);
        v56 = 1;
        sub_1BE4BF11C(&qword_1EBDABBE0, &qword_1BE54DCE0);
        sub_1BE4BF11C(&qword_1EBDABC08, &qword_1BE54DCF0);
        sub_1BE4C5C30();
        sub_1BE4C5D94();
        sub_1BE54BC0C();
        sub_1BE4C6F5C(&v47, &qword_1EBDABC08, &qword_1BE54DCF0);
LABEL_21:
        sub_1BE4C6EFC(&v49, __src, &qword_1EBDABBD0, &qword_1BE54DCD8);
        v57 = 0;
        sub_1BE4BF11C(&qword_1EBDABBD0, &qword_1BE54DCD8);
        sub_1BE4C5BA4();
        sub_1BE54BC0C();

        v26 = &v49;
        v27 = &qword_1EBDABBD0;
        v28 = &qword_1BE54DCD8;
        return sub_1BE4C6F5C(v26, v27, v28);
      }

      else
      {
        __break(1u);
LABEL_25:
        __break(1u);
LABEL_26:
        __break(1u);
LABEL_27:
        __break(1u);
      }

      return result;
    case 3:
      result = sub_1BE4D99CC(a1, a2, &v49);
      if (!v52)
      {
        goto LABEL_25;
      }

      sub_1BE4C5FA8(a4, &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
      v22 = (*(v9 + 80) + 16) & ~*(v9 + 80);
      v23 = swift_allocObject();
      sub_1BE4C600C(&v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v23 + v22);
      sub_1BE4BF094(&v49, __src);
      *(&__src[2] + 1) = sub_1BE4C6CE0;
      *&__src[3] = v23;
      LOBYTE(v53[0]) = 3;
      sub_1BE4BF11C(&qword_1EBDABD70, &qword_1BE54DEE8);
      sub_1BE54C23C();
      BYTE8(__src[3]) = v47;
      *&__src[4] = v48;
      KeyPath = swift_getKeyPath();
      sub_1BE4C5FA8(a4, &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
      v25 = swift_allocObject();
      sub_1BE4C600C(&v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v25 + v22);
      memcpy(v53, __src, 0x48uLL);
      v53[9] = KeyPath;
      v53[10] = sub_1BE4C6D4C;
      v53[11] = v25;
      sub_1BE4C6EFC(v53, __src, &qword_1EBDABC18, &qword_1BE54DCF8);
      v55 = 1;
      sub_1BE4BF11C(&qword_1EBDABBF0, &qword_1BE54DCE8);
      sub_1BE4BF11C(&qword_1EBDABC18, &qword_1BE54DCF8);
      sub_1BE4C5CB4();
      sub_1BE4C5E20();
      sub_1BE54BC0C();
      sub_1BE4C6EFC(&v47, __src, &qword_1EBDABC08, &qword_1BE54DCF0);
      v56 = 1;
      sub_1BE4BF11C(&qword_1EBDABBE0, &qword_1BE54DCE0);
      sub_1BE4BF11C(&qword_1EBDABC08, &qword_1BE54DCF0);
      sub_1BE4C5C30();
      sub_1BE4C5D94();
      sub_1BE54BC0C();
      sub_1BE4C6F5C(&v47, &qword_1EBDABC08, &qword_1BE54DCF0);
      sub_1BE4C6EFC(&v49, __src, &qword_1EBDABBD0, &qword_1BE54DCD8);
      v57 = 0;
      sub_1BE4BF11C(&qword_1EBDABBD0, &qword_1BE54DCD8);
      sub_1BE4C5BA4();
      sub_1BE54BC0C();
      sub_1BE4C6F5C(&v49, &qword_1EBDABBD0, &qword_1BE54DCD8);
      v26 = v53;
      v27 = &qword_1EBDABC18;
      v28 = &qword_1BE54DCF8;
      return sub_1BE4C6F5C(v26, v27, v28);
    case 4:
      v57 = 1;
      sub_1BE4BF11C(&qword_1EBDABBD0, &qword_1BE54DCD8);
      sub_1BE4C5BA4();
      return sub_1BE54BC0C();
    default:
      result = sub_1BE4D99CC(a1, a2, __src);
      if (!*(&__src[1] + 1))
      {
        goto LABEL_26;
      }

      sub_1BE4C6918(__src, &v49);
      v16 = *(a4 + 8);
      v47 = *a4;
      v48 = v16;
      sub_1BE4BF11C(&qword_1EBDABB08, &qword_1BE54DC30);
      sub_1BE54C24C();
      v17 = v53[0];
      v18 = *(a4 + 88) == 1 && sub_1BE4BF260();
      v38 = sub_1BE4BF610();
      v39 = sub_1BE4BF374();
      type metadata accessor for OBKSheetsManager();
      swift_allocObject();
      sub_1BE4CEA08(&v49, v17, v18, v38 & 1, v39 & 1);
      sub_1BE4C8308(v14);
      v40 = sub_1BE4CEA6C(v14);
      sub_1BE4C6DB0(v14, type metadata accessor for OBKSheetData);
      v41 = sub_1BE54B7BC();
      v42 = sub_1BE54BE4C();

      sub_1BE4C58A8(__src);
      *&v49 = v40;
      *(&v49 + 1) = v41;
      v50 = v42;
      v51 = 0;
LABEL_20:
      v37 = v40;
      sub_1BE4BF11C(&qword_1EBDABBF0, &qword_1BE54DCE8);
      sub_1BE4C5CB4();
      sub_1BE54BC0C();
      v56 = 0;
      sub_1BE4BF11C(&qword_1EBDABBE0, &qword_1BE54DCE0);
      sub_1BE4BF11C(&qword_1EBDABC08, &qword_1BE54DCF0);
      sub_1BE4C5C30();
      sub_1BE4C5D94();
      sub_1BE54BC0C();
      goto LABEL_21;
  }
}

uint64_t sub_1BE4C2AAC(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  sub_1BE4BF11C(&qword_1EBDABB08, &qword_1BE54DC30);
  sub_1BE54C24C();
  sub_1BE4DC120(a1);

  sub_1BE54C24C();
  sub_1BE4DB664(&unk_1F3CCAA90);
}

uint64_t sub_1BE4C2B50(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_1BE4BF11C(&qword_1EBDABB08, &qword_1BE54DC30);
  sub_1BE54C24C();
  v3 = sub_1BE4DB5F0();

  v4 = *(v3 + 16);

  if (v4)
  {
    sub_1BE54C24C();
    swift_getKeyPath();
    sub_1BE4C6A5C(&qword_1EBDABD78, type metadata accessor for PartnerOnboardingViewModel);
    sub_1BE54AFCC();

    swift_getKeyPath();
    sub_1BE54AFEC();

    swift_beginAccess();
    sub_1BE4C2CF8();
    swift_endAccess();

    sub_1BE4DB27C();
    swift_getKeyPath();
    sub_1BE54AFDC();
  }

  return result;
}

void sub_1BE4C2CF8()
{
  if (*(*v0 + 16))
  {
    sub_1BE4C6E98();
    if (!v1)
    {
      sub_1BE4C6E04(*(*v0 + 16) - 1);
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1BE4C2D34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v26 = a2;
  v27 = a1;
  v28 = a3;
  v3 = type metadata accessor for GenerativePartnerOnboardingSheet();
  v25 = *(v3 - 8);
  v4 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = sub_1BE54AF6C();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = sub_1BE54AD8C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1BE54C6BC();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = sub_1BE54ADAC();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BE54C65C();
  if (qword_1EBDABA88 != -1)
  {
    swift_once();
  }

  v19 = sub_1BE4C52BC(v7, qword_1EBDB0C08);
  (*(v8 + 16))(v11, v19, v7);
  sub_1BE54AF2C();
  sub_1BE54ADBC();
  sub_1BE4C5FA8(v26, &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1BE4C6B90(v27, __src);
  v20 = (*(v25 + 80) + 16) & ~*(v25 + 80);
  v21 = swift_allocObject();
  sub_1BE4C600C(&v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v21 + v20);
  v22 = memcpy((v21 + ((v4 + v20 + 7) & 0xFFFFFFFFFFFFFFF8)), __src, 0x50uLL);
  MEMORY[0x1EEE9AC00](v22);
  *(&v24 - 2) = v18;
  sub_1BE54C29C();
  return (*(v15 + 8))(v18, v14);
}

uint64_t sub_1BE4C3100(uint64_t *a1, void *a2)
{
  v4 = *a1;
  v5 = a1[1];
  sub_1BE4BF11C(&qword_1EBDABB08, &qword_1BE54DC30);
  sub_1BE54C24C();
  sub_1BE4DBFD4(0, a2);
}

uint64_t sub_1BE4C3168@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1BE54BACC();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  sub_1BE54BABC();
  sub_1BE54BAAC();
  v6 = a1[3];
  v7 = a1[4];
  sub_1BE4C52F4(a1, v6);
  (*(v7 + 16))(v6, v7);
  sub_1BE54BA9C();

  sub_1BE54BAAC();
  v8 = a1[8];
  v9 = a1[9];
  sub_1BE4C52F4(a1 + 5, v8);
  (*(v9 + 16))(v8, v9);
  sub_1BE54BA9C();

  sub_1BE54BAAC();
  sub_1BE54BAEC();
  if (qword_1EBDABA80 != -1)
  {
    swift_once();
  }

  v10 = qword_1EBDB0C00;
  result = sub_1BE54BF6C();
  *a2 = result;
  *(a2 + 8) = v12;
  *(a2 + 16) = v13 & 1;
  *(a2 + 24) = v14;
  return result;
}

uint64_t sub_1BE4C336C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a1;
  v33 = a2;
  v2 = type metadata accessor for GenerativePartnerOnboardingSheet();
  v30 = *(v2 - 8);
  v3 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = sub_1BE4BF11C(&qword_1EBDABD68, &qword_1BE54DEE0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4 - 8);
  v32 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v29 - v8;
  v10 = sub_1BE54AF6C();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = sub_1BE54AD8C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1BE54C6BC();
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v29 = sub_1BE54ADAC();
  v19 = *(v29 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v29);
  v22 = &v29 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BE54C65C();
  if (qword_1EBDABA88 != -1)
  {
    swift_once();
  }

  v23 = sub_1BE4C52BC(v12, qword_1EBDB0C08);
  (*(v13 + 16))(v16, v23, v12);
  sub_1BE54AF2C();
  sub_1BE54ADBC();
  sub_1BE54B56C();
  v24 = sub_1BE54B58C();
  sub_1BE4C63F8(v9, 0, 1, v24);
  sub_1BE4C5FA8(v31, &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v25 = (*(v30 + 80) + 16) & ~*(v30 + 80);
  v26 = swift_allocObject();
  sub_1BE4C600C(&v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v26 + v25);
  v27 = sub_1BE4C6EFC(v9, v32, &qword_1EBDABD68, &qword_1BE54DEE0);
  MEMORY[0x1EEE9AC00](v27);
  *(&v29 - 2) = v22;
  sub_1BE54C28C();
  sub_1BE4C6F5C(v9, &qword_1EBDABD68, &qword_1BE54DEE0);
  return (*(v19 + 8))(v22, v29);
}

uint64_t sub_1BE4C37E4(void *a1)
{
  v1 = a1[1];
  *&v3[0] = *a1;
  sub_1BE4BF11C(&qword_1EBDABB08, &qword_1BE54DC30);
  sub_1BE54C24C();
  v4 = 0;
  memset(v3, 0, sizeof(v3));
  v5 = 2;
  sub_1BE4DC120(v3);

  return sub_1BE4C6AB4(v3);
}

uint64_t sub_1BE4C3860@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_1BE54BACC();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = a1[1];
  v18[0] = *a1;
  v18[1] = v6;
  sub_1BE4BF11C(&qword_1EBDABB08, &qword_1BE54DC30);
  sub_1BE54C24C();
  sub_1BE4DB08C(v18);

  if (v18[3])
  {
    sub_1BE4C6918(v18, v15);
    sub_1BE4C6F5C(v18, &qword_1EBDABAF8, &qword_1BE54DC20);
    v7 = v16;
    v8 = v17;
    sub_1BE4C52F4(v15, v16);
    (*(v8 + 16))(v7, v8);
    sub_1BE4C58A8(v15);
    sub_1BE54BABC();
    sub_1BE54BAAC();
    sub_1BE54BA9C();

    sub_1BE54BAAC();
    sub_1BE54BAEC();
    if (qword_1EBDABA80 != -1)
    {
      swift_once();
    }

    v9 = qword_1EBDB0C00;
    result = sub_1BE54BF6C();
    v14 = v13 & 1;
  }

  else
  {
    sub_1BE4C6F5C(v18, &qword_1EBDABAF8, &qword_1BE54DC20);
    result = 0;
    v11 = 0;
    v14 = 0;
    v12 = 0;
  }

  *a2 = result;
  a2[1] = v11;
  a2[2] = v14;
  a2[3] = v12;
  return result;
}

uint64_t sub_1BE4C3AAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v22[1] = a2;
  v3 = sub_1BE54BCBC();
  v4 = sub_1BE4C7570(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  sub_1BE4C757C();
  v7 = sub_1BE4BF11C(&qword_1EBDABC38, &qword_1BE54DD08);
  v8 = sub_1BE4C7500(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v14 = v22 - v13;
  if (sub_1BE4BF610())
  {
    v15 = sub_1BE54BC9C();
  }

  else
  {
    v15 = sub_1BE54BCAC();
  }

  MEMORY[0x1EEE9AC00](v15);
  v22[-2] = a1;
  sub_1BE4BF11C(&qword_1EBDABD38, &qword_1BE54DEC8);
  sub_1BE4C74A0();
  sub_1BE4C6A14(v16, &qword_1EBDABD38, &qword_1BE54DEC8);
  sub_1BE54B65C();
  sub_1BE4C74D0();
  v20 = sub_1BE4C6A14(v17, v18, v19);
  MEMORY[0x1BFB471E0](v14, v7, v20);
  return (*(v10 + 8))(v14, v7);
}

uint64_t sub_1BE4C3C8C(uint64_t a1)
{
  v2 = type metadata accessor for GenerativePartnerOnboardingSheet();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_1BE4C5FA8(a1, v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  sub_1BE4C600C(v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5);
  sub_1BE4BF11C(&qword_1EBDABD48, &qword_1BE54DED0);
  v7 = sub_1BE4C5948(&qword_1EBDABD50, &qword_1BE54DED8);
  v8 = sub_1BE54BA6C();
  v9 = sub_1BE4C6A14(&qword_1EBDABD58, &qword_1EBDABD50, &qword_1BE54DED8);
  v10 = sub_1BE4C6A5C(&qword_1EBDABD60, MEMORY[0x1E697C4E8]);
  v12[0] = v7;
  v12[1] = v8;
  v12[2] = v9;
  v12[3] = v10;
  swift_getOpaqueTypeConformance2();
  return sub_1BE54C29C();
}

uint64_t sub_1BE4C3E7C(uint64_t *a1)
{
  v2 = type metadata accessor for GenerativePartnerOnboardingSheet();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v50 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *a1;
  v6 = a1[1];
  v53 = *a1;
  v54 = v6;
  v7 = sub_1BE4BF11C(&qword_1EBDABB08, &qword_1BE54DC30);
  sub_1BE54C24C();
  if (qword_1EDDD6890 != -1)
  {
    swift_once();
  }

  v49 = off_1EDDD6898;
  sub_1BE53CA80(&v53);
  sub_1BE4DB16C(&v53);

  v53 = v5;
  v54 = v6;
  sub_1BE54C24C();
  sub_1BE4C6EFC((a1 + 6), &v53, &qword_1EBDABAF8, &qword_1BE54DC20);
  sub_1BE4DAFF8(&v53);

  v46 = v6;
  v47 = v5;
  v53 = v5;
  v54 = v6;
  v48 = v7;
  sub_1BE54C24C();
  v8 = a1[12];
  v9 = a1[13];

  sub_1BE4DBC1C(v8);

  if (qword_1EBDABAB8 != -1)
  {
    swift_once();
  }

  v10 = sub_1BE54B2EC();
  sub_1BE4C52BC(v10, qword_1EBDB0C68);
  v11 = sub_1BE54B2BC();
  v12 = sub_1BE54C97C();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v53 = v14;
    *v13 = 136446210;
    v15 = [objc_opt_self() processInfo];
    v16 = [v15 processName];

    v17 = sub_1BE54C70C();
    v19 = v18;

    v20 = sub_1BE4C5338(v17, v19, &v53);

    *(v13 + 4) = v20;
    _os_log_impl(&dword_1BE4B8000, v11, v12, "[Onboarding.onAppear] process id: %{public}s", v13, 0xCu);
    sub_1BE4C58A8(v14);
    MEMORY[0x1BFB48AC0](v14, -1, -1);
    MEMORY[0x1BFB48AC0](v13, -1, -1);
  }

  v21 = sub_1BE54B2BC();
  v22 = sub_1BE54C97C();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    *&v51 = v24;
    *v23 = 136446210;
    sub_1BE53CA80(&v53);
    v25 = v55;
    if (v55)
    {
      v26 = v56;
      sub_1BE4C52F4(&v53, v55);
      v27 = (*(v26 + 8))(v25, v26);
      v29 = v28;
      sub_1BE4C58A8(&v53);
    }

    else
    {
      v27 = 0x3E656E6F6E3CLL;
      sub_1BE4C6F5C(&v53, &qword_1EBDABAF8, &qword_1BE54DC20);
      v29 = 0xE600000000000000;
    }

    v30 = sub_1BE4C5338(v27, v29, &v51);

    *(v23 + 4) = v30;
    _os_log_impl(&dword_1BE4B8000, v21, v22, "[Onboarding.onAppear] previouslyActiveProvider.id = %{public}s", v23, 0xCu);
    sub_1BE4C58A8(v24);
    MEMORY[0x1BFB48AC0](v24, -1, -1);
    MEMORY[0x1BFB48AC0](v23, -1, -1);
  }

  v31 = v50;
  sub_1BE4C5FA8(a1, v50);
  v32 = sub_1BE54B2BC();
  v33 = sub_1BE54C97C();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    *&v51 = v35;
    *v34 = 136446210;
    sub_1BE4C6EFC(v31 + 48, &v53, &qword_1EBDABAF8, &qword_1BE54DC20);
    v36 = v55;
    if (v55)
    {
      v37 = v56;
      sub_1BE4C52F4(&v53, v55);
      v38 = (*(v37 + 8))(v36, v37);
      v40 = v39;
      sub_1BE4C58A8(&v53);
    }

    else
    {
      v38 = 0x3E656E6F6E3CLL;
      sub_1BE4C6F5C(&v53, &qword_1EBDABAF8, &qword_1BE54DC20);
      v40 = 0xE600000000000000;
    }

    sub_1BE4C6DB0(v50, type metadata accessor for GenerativePartnerOnboardingSheet);
    v41 = sub_1BE4C5338(v38, v40, &v51);

    *(v34 + 4) = v41;
    _os_log_impl(&dword_1BE4B8000, v32, v33, "[Onboarding.onAppear] preselectedProvider.id = %{public}s", v34, 0xCu);
    sub_1BE4C58A8(v35);
    MEMORY[0x1BFB48AC0](v35, -1, -1);
    MEMORY[0x1BFB48AC0](v34, -1, -1);
  }

  else
  {

    sub_1BE4C6DB0(v31, type metadata accessor for GenerativePartnerOnboardingSheet);
  }

  v42 = v47;
  v43 = v46;
  if (sub_1BE4BF260())
  {
    sub_1BE4C6EFC((a1 + 6), &v51, &qword_1EBDABAF8, &qword_1BE54DC20);
    if (v52)
    {
      goto LABEL_23;
    }

    sub_1BE4C6F5C(&v51, &qword_1EBDABAF8, &qword_1BE54DC20);
  }

  v44 = v49;
  result = swift_beginAccess();
  if (*(v44[2] + 16) != 1)
  {
    return result;
  }

  sub_1BE53C930(&v51);
  if (!v52)
  {
    return sub_1BE4C6F5C(&v51, &qword_1EBDABAF8, &qword_1BE54DC20);
  }

LABEL_23:
  sub_1BE4BF094(&v51, &v53);
  *&v51 = v42;
  *(&v51 + 1) = v43;
  sub_1BE54C24C();
  sub_1BE4DBFD4(0, &v53);

  return sub_1BE4C58A8(&v53);
}

uint64_t sub_1BE4C4570@<X0>(uint64_t a1@<X8>)
{
  v30 = a1;
  v1 = sub_1BE54BA6C();
  v31 = *(v1 - 8);
  v32 = v1;
  v2 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v29 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1BE54AF6C();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = sub_1BE54AD8C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1BE54C6BC();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v28 = sub_1BE54ADAC();
  v13 = *(v28 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v28);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1BE4BF11C(&qword_1EBDABD50, &qword_1BE54DED8);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v28 - v20;
  sub_1BE54C65C();
  if (qword_1EBDABA88 != -1)
  {
    swift_once();
  }

  v22 = sub_1BE4C52BC(v6, qword_1EBDB0C08);
  (*(v7 + 16))(v10, v22, v6);
  sub_1BE54AF2C();
  v23 = sub_1BE54ADBC();
  v24 = MEMORY[0x1EEE9AC00](v23);
  *(&v28 - 2) = v16;
  MEMORY[0x1EEE9AC00](v24);
  *(&v28 - 2) = 0x6B72616D78;
  *(&v28 - 1) = 0xE500000000000000;
  sub_1BE54C22C();
  (*(v13 + 8))(v16, v28);
  v25 = v29;
  sub_1BE54BA5C();
  sub_1BE4C6A14(&qword_1EBDABD58, &qword_1EBDABD50, &qword_1BE54DED8);
  sub_1BE4C6A5C(&qword_1EBDABD60, MEMORY[0x1E697C4E8]);
  v26 = v32;
  sub_1BE54C00C();
  (*(v31 + 8))(v25, v26);
  return (*(v18 + 8))(v21, v17);
}

uint64_t sub_1BE4C4A60@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for GenerativePartnerOnboardingSheet();
  v36 = *(v2 - 8);
  v3 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v37 = v4;
  v38 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1BE54AF6C();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = sub_1BE54AD8C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1BE54C6BC();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v35 = sub_1BE54C20C();
  sub_1BE54C65C();
  if (qword_1EBDABA88 != -1)
  {
    swift_once();
  }

  v14 = sub_1BE4C52BC(v7, qword_1EBDB0C08);
  v15 = *(v8 + 16);
  v15(v11, v14, v7);
  sub_1BE54AF2C();
  v16 = type metadata accessor for OnboardingSheetSetup(0);
  v17 = a1 + v16[6];
  sub_1BE54ADBC();
  v18 = a1 + v16[7];
  static GenerativePartnerRestrictionUtils.restrictionReasonText.getter();
  v19 = a1 + v16[8];
  sub_1BE54C65C();
  v15(v11, v14, v7);
  sub_1BE54AF2C();
  sub_1BE54ADBC();
  v20 = v38;
  sub_1BE4C5FA8(v39, v38);
  v21 = (*(v36 + 80) + 16) & ~*(v36 + 80);
  v22 = swift_allocObject();
  sub_1BE4C600C(v20, v22 + v21);
  v23 = type metadata accessor for OnboardingSheetSetup.ButtonSetup(0);
  v24 = (v19 + *(v23 + 20));
  *v24 = sub_1BE4C6FB0;
  v24[1] = v22;
  v25 = (v19 + *(v23 + 24));
  *v25 = sub_1BE4D15F4;
  v25[1] = 0;
  sub_1BE4C63F8(v19, 0, 1, v23);
  sub_1BE4C63F8(a1 + v16[9], 1, 1, v23);
  *a1 = 0;
  *(a1 + 8) = v35;
  v26 = sub_1BE4BF11C(&qword_1EBDABB90, &qword_1BE54DCB8);
  v27 = (a1 + v26[10]);
  v40 = 0;
  sub_1BE54C23C();
  v28 = v42;
  *v27 = v41;
  v27[1] = v28;
  v29 = (a1 + v26[11]);
  v40 = 0;
  sub_1BE54C23C();
  v30 = v42;
  *v29 = v41;
  v29[1] = v30;
  v31 = a1 + v26[12];
  result = swift_getKeyPath();
  *v31 = result;
  *(v31 + 8) = 0;
  *(v31 + 16) = 0;
  *(a1 + v26[13]) = 0x407C200000000000;
  v33 = (a1 + v26[9]);
  *v33 = j_nullsub_1;
  v33[1] = 0;
  return result;
}

uint64_t sub_1BE4C4EFC(uint64_t *a1, uint64_t a2)
{
  v3 = a1[12];
  v2 = a1[13];
  v13 = 0u;
  v14 = 0u;
  v15 = 2;
  v4 = *a1;
  v5 = a1[1];
  v12 = a2;
  sub_1BE4BF11C(&qword_1EBDABB08, &qword_1BE54DC30);
  sub_1BE54C24C();
  v6 = sub_1BE4DB5F0();

  sub_1BE4D98B8(v6);
  v8 = v7;
  v10 = v9;

  if (v8)
  {
  }

  else
  {
    v10 = 5;
  }

  v3(&v12, v10);
  sub_1BE4C6AB4(&v12);
  v12 = v4;
  *&v13 = v5;
  sub_1BE54C24C();
  sub_1BE4DB664(&unk_1F3CCAA90);
}

uint64_t sub_1BE4C5034@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1BE4C7318();
  *a1 = result;
  return result;
}

uint64_t sub_1BE4C505C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  return sub_1BE5337B4();
}

uint64_t sub_1BE4C5068@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_1BE54C6DC();

  *a2 = v5;
  return result;
}

uint64_t sub_1BE4C50B0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1BE4C50DC(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1BE4C50E0(uint64_t a1)
{
  v2 = sub_1BE4C6A5C(&qword_1EBDABDC8, type metadata accessor for NSKeyValueChangeKey);
  v3 = sub_1BE4C6A5C(&qword_1EBDABDD0, type metadata accessor for NSKeyValueChangeKey);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1BE4C519C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1BE54ADAC();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  (*(v7 + 16))(&v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  result = sub_1BE54BF7C();
  *a2 = result;
  *(a2 + 8) = v9;
  *(a2 + 16) = v10 & 1;
  *(a2 + 24) = v11;
  return result;
}

uint64_t sub_1BE4C5274@<X0>(uint64_t *a1@<X8>)
{

  result = sub_1BE54C1FC();
  *a1 = result;
  return result;
}

uint64_t sub_1BE4C52BC(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

void *sub_1BE4C52F4(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_1BE4C5338(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1BE4C53FC(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (v6)
  {
    v8 = v6;

    ObjectType = swift_getObjectType();
    v11[0] = v8;
  }

  else
  {
    ObjectType = MEMORY[0x1E69E6A18];
    v11[0] = a1;
    v11[1] = a2;
  }

  v9 = *a3;
  if (*a3)
  {
    sub_1BE4C6FB8(v11, *a3);
    *a3 = v9 + 32;
  }

  sub_1BE4C58A8(v11);
  return v7;
}

unint64_t sub_1BE4C53FC(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v11 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v11)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v11) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_1BE4C54FC(a5, a6);
    *a1 = v9;
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
    result = sub_1BE54CB0C();
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

uint64_t sub_1BE4C54FC(uint64_t a1, unint64_t a2)
{
  v4 = sub_1BE4C5548(a1, a2);
  sub_1BE4C5660(&unk_1F3CCA928);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_1BE4C5548(uint64_t a1, unint64_t a2)
{
  v4 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_19;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  for (; v5; v5 = sub_1BE54C7AC())
  {
    result = sub_1BE4C5744(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_1BE54CACC();
      if (v11)
      {
        goto LABEL_23;
      }

      v4 = result;
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v13[0] = a1;
        v13[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        if (v5 < v4)
        {
          goto LABEL_23;
        }

        v9 = (result + 32);
        v10 = v13;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v8 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
          v4 = a1 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          result = sub_1BE54CB0C();
          v8 = result;
          v4 = v12;
        }

        if (v5 < v4)
        {
LABEL_23:
          __break(1u);
          return result;
        }

        v9 = (v7 + 32);
        v10 = v8;
      }

      memcpy(v9, v10, v4);
    }

    if (v4 == v5)
    {
      return v7;
    }

    __break(1u);
LABEL_19:
    ;
  }

  return MEMORY[0x1E69E7CC0];
}

uint64_t sub_1BE4C5660(uint64_t result)
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
  if (!result || v5 > *(v3 + 24) >> 1)
  {
    if (v4 <= v5)
    {
      v8 = v4 + v2;
    }

    else
    {
      v8 = v4;
    }

    result = sub_1BE4C57B4(result, v8, 1, v3);
    v3 = result;
  }

  if (!*(v6 + 16))
  {

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  v9 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v9 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v9 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v10 = *(v3 + 16);
  v11 = __OFADD__(v10, v2);
  v12 = v10 + v2;
  if (!v11)
  {
    *(v3 + 16) = v12;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_1BE4C5744(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  sub_1BE4BF11C(&qword_1EBDABD88, qword_1BE54DF20);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

char *sub_1BE4C57B4(char *result, int64_t a2, char a3, char *a4)
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
    sub_1BE4BF11C(&qword_1EBDABD88, qword_1BE54DF20);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[v8] <= v12)
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

uint64_t sub_1BE4C58A8(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t type metadata accessor for GenerativePartnerOnboardingSheet()
{
  result = qword_1EDDD64C0;
  if (!qword_1EDDD64C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1BE4C5948(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_1BE4C5990()
{
  result = qword_1EBDABB80;
  if (!qword_1EBDABB80)
  {
    sub_1BE4C5948(&qword_1EBDABB70, &qword_1BE54DCA8);
    sub_1BE4C6A14(&qword_1EBDABB88, &qword_1EBDABB90, &qword_1BE54DCB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDABB80);
  }

  return result;
}

unint64_t sub_1BE4C5A40()
{
  result = qword_1EBDABB98;
  if (!qword_1EBDABB98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDABB98);
  }

  return result;
}

unint64_t sub_1BE4C5A94()
{
  result = qword_1EBDABBB0;
  if (!qword_1EBDABBB0)
  {
    sub_1BE4C5948(&qword_1EBDABBA8, &qword_1BE54DCC8);
    sub_1BE4C5B18();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDABBB0);
  }

  return result;
}

unint64_t sub_1BE4C5B18()
{
  result = qword_1EBDABBB8;
  if (!qword_1EBDABBB8)
  {
    sub_1BE4C5948(&qword_1EBDABBC0, &qword_1BE54DCD0);
    sub_1BE4C5BA4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDABBB8);
  }

  return result;
}

unint64_t sub_1BE4C5BA4()
{
  result = qword_1EBDABBC8;
  if (!qword_1EBDABBC8)
  {
    sub_1BE4C5948(&qword_1EBDABBD0, &qword_1BE54DCD8);
    sub_1BE4C5C30();
    sub_1BE4C5D94();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDABBC8);
  }

  return result;
}

unint64_t sub_1BE4C5C30()
{
  result = qword_1EBDABBD8;
  if (!qword_1EBDABBD8)
  {
    sub_1BE4C5948(&qword_1EBDABBE0, &qword_1BE54DCE0);
    sub_1BE4C5CB4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDABBD8);
  }

  return result;
}

unint64_t sub_1BE4C5CB4()
{
  result = qword_1EBDABBE8;
  if (!qword_1EBDABBE8)
  {
    sub_1BE4C5948(&qword_1EBDABBF0, &qword_1BE54DCE8);
    sub_1BE4C5D40();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDABBE8);
  }

  return result;
}

unint64_t sub_1BE4C5D40()
{
  result = qword_1EBDABBF8;
  if (!qword_1EBDABBF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDABBF8);
  }

  return result;
}

unint64_t sub_1BE4C5D94()
{
  result = qword_1EBDABC00;
  if (!qword_1EBDABC00)
  {
    sub_1BE4C5948(&qword_1EBDABC08, &qword_1BE54DCF0);
    sub_1BE4C5CB4();
    sub_1BE4C5E20();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDABC00);
  }

  return result;
}

unint64_t sub_1BE4C5E20()
{
  result = qword_1EBDABC10;
  if (!qword_1EBDABC10)
  {
    sub_1BE4C5948(&qword_1EBDABC18, &qword_1BE54DCF8);
    sub_1BE4C5ED8();
    sub_1BE4C6A14(&qword_1EBDABC28, &qword_1EBDABC30, &qword_1BE54DD00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDABC10);
  }

  return result;
}

unint64_t sub_1BE4C5ED8()
{
  result = qword_1EBDABC20;
  if (!qword_1EBDABC20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDABC20);
  }

  return result;
}

unint64_t sub_1BE4C5F2C()
{
  result = qword_1EBDABC50;
  if (!qword_1EBDABC50)
  {
    sub_1BE4C5948(&qword_1EBDABB60, &unk_1BE54E4F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDABC50);
  }

  return result;
}

uint64_t sub_1BE4C5FA8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GenerativePartnerOnboardingSheet();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BE4C600C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GenerativePartnerOnboardingSheet();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BE4C6088@<X0>(uint64_t *a1@<X8>)
{
  result = MEMORY[0x1BFB46E40]();
  *a1 = result;
  return result;
}

uint64_t sub_1BE4C60B4(uint64_t *a1)
{
  v1 = *a1;

  return MEMORY[0x1BFB46E50](v2);
}

unint64_t sub_1BE4C60E0()
{
  result = qword_1EBDABC68;
  if (!qword_1EBDABC68)
  {
    sub_1BE4C5948(&qword_1EBDABB00, &qword_1BE54DC28);
    sub_1BE4C6198();
    sub_1BE4C6A14(&qword_1EBDABC88, &qword_1EBDABC90, &unk_1BE54DD58);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDABC68);
  }

  return result;
}

unint64_t sub_1BE4C6198()
{
  result = qword_1EBDABC70;
  if (!qword_1EBDABC70)
  {
    sub_1BE4C5948(&qword_1EBDABC60, &qword_1BE54DD18);
    sub_1BE4C6A14(&qword_1EBDABC78, &qword_1EBDABC80, &qword_1BE54DD50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDABC70);
  }

  return result;
}

unint64_t sub_1BE4C6250()
{
  result = qword_1EBDABC98;
  if (!qword_1EBDABC98)
  {
    sub_1BE54B78C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDABC98);
  }

  return result;
}

uint64_t sub_1BE4C62B8(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 sub_1BE4C62D0(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 26) = *(a2 + 26);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1BE4C62E4(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 42))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 24);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1BE4C6338(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 42) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 42) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

void sub_1BE4C6420()
{
  sub_1BE4C651C();
  if (v0 <= 0x3F)
  {
    sub_1BE4C7408(319, &qword_1EDDD63F8, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
    if (v1 <= 0x3F)
    {
      sub_1BE4C6574();
      if (v2 <= 0x3F)
      {
        sub_1BE4C65D8();
        if (v3 <= 0x3F)
        {
          sub_1BE4C6620();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1BE4C651C()
{
  if (!qword_1EDDD6400)
  {
    type metadata accessor for PartnerOnboardingViewModel();
    v0 = sub_1BE54C27C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDDD6400);
    }
  }
}

void sub_1BE4C6574()
{
  if (!qword_1EDDD6410[0])
  {
    sub_1BE4C5948(&unk_1EBDABCB8, &qword_1BE54DE88);
    v0 = sub_1BE54C9EC();
    if (!v1)
    {
      atomic_store(v0, qword_1EDDD6410);
    }
  }
}

unint64_t sub_1BE4C65D8()
{
  result = qword_1EDDD63F0;
  if (!qword_1EDDD63F0)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_1EDDD63F0);
  }

  return result;
}

void sub_1BE4C6620()
{
  if (!qword_1EDDD6408)
  {
    sub_1BE4C667C();
    v0 = sub_1BE54B68C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDDD6408);
    }
  }
}

unint64_t sub_1BE4C667C()
{
  result = qword_1EDDD6520;
  if (!qword_1EDDD6520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDD6520);
  }

  return result;
}

uint64_t sub_1BE4C66D0()
{
  sub_1BE54C70C();
  sub_1BE54C77C();
}

uint64_t sub_1BE4C6724()
{
  v2 = type metadata accessor for GenerativePartnerOnboardingSheet();
  sub_1BE4C759C(v2);
  v4 = *(v3 + 80);
  v5 = (v4 + 16) & ~v4;
  v7 = *(v6 + 64);
  v8 = v1 + v5;
  v9 = *(v1 + v5);

  v10 = *(v1 + v5 + 8);

  v11 = *(v1 + v5 + 24);

  v12 = *(v1 + v5 + 40);

  if (*(v1 + v5 + 72))
  {
    sub_1BE4C58A8((v8 + 48));
  }

  v13 = *(v8 + 104);

  v14 = *(v0 + 40);
  v15 = sub_1BE4BF11C(&qword_1EBDABC58, &qword_1BE54DD10);
  sub_1BE4C745C(v15);
  (*(v16 + 8))(v8 + v14);
  v17 = *(v8 + *(v0 + 44));

  return MEMORY[0x1EEE6BDD0](v1, v5 + v7, v4 | 7);
}

uint64_t sub_1BE4C6844(uint64_t a1)
{
  v3 = type metadata accessor for GenerativePartnerOnboardingSheet();
  sub_1BE4C7570(v3);
  v5 = v1 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return sub_1BE4C1ECC(a1, v5);
}

uint64_t sub_1BE4C68C8(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_1BE4C6918(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1BE4C69BC(uint64_t a1)
{
  v2 = type metadata accessor for GenerativePartnerOnboardingSheet();
  sub_1BE4C7570(v2);
  v4 = sub_1BE4C758C(*(v3 + 80));
  return sub_1BE4C4EFC(v4, a1);
}

uint64_t sub_1BE4C6A14(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1BE4C5948(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1BE4C6A5C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1BE4C6AAC@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_1BE4C5274(a1);
}

uint64_t sub_1BE4C6B20(uint64_t (*a1)(uint64_t))
{
  v1 = type metadata accessor for GenerativePartnerOnboardingSheet();
  sub_1BE4C7570(v1);
  v3 = sub_1BE4C758C(*(v2 + 80));

  return a1(v3);
}

uint64_t sub_1BE4C6BEC()
{
  v1 = *(type metadata accessor for GenerativePartnerOnboardingSheet() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1BE4C3100((v0 + v2), v3);
}

uint64_t sub_1BE4C6CE0(uint64_t a1)
{
  v3 = type metadata accessor for GenerativePartnerOnboardingSheet();
  sub_1BE4C7570(v3);
  v5 = (v1 + ((*(v4 + 80) + 16) & ~*(v4 + 80)));

  return sub_1BE4C2AAC(a1, v5);
}

uint64_t sub_1BE4C6D4C()
{
  v0 = type metadata accessor for GenerativePartnerOnboardingSheet();
  sub_1BE4C7570(v0);
  v2 = sub_1BE4C758C(*(v1 + 80));

  return sub_1BE4C2B50(v2);
}

uint64_t sub_1BE4C6DB0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_1BE4C745C(v3);
  (*(v4 + 8))(a1);
  return a1;
}

void sub_1BE4C6E04(unint64_t a1)
{
  v3 = *v1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1BE542DB8(v3);
    v3 = v11;
  }

  v4 = *(v3 + 16);
  if (v4 <= a1)
  {
    __break(1u);
  }

  else
  {
    v5 = v4 - 1;
    v6 = v4 - 1 - a1;
    v7 = v3 + 24 * a1;
    v8 = *(v7 + 32);
    v9 = *(v7 + 40);
    v7 += 32;
    v10 = *(v7 + 16);
    sub_1BE542548((v7 + 24), v6, v7);
    *(v3 + 16) = v5;
    *v1 = v3;
  }
}

void sub_1BE4C6E98()
{
  v1 = *v0;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1BE542DB8(v1);
    v1 = v8;
  }

  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v2 - 1;
    v4 = v1 + 24 * v2;
    v5 = *(v4 + 8);
    v6 = *(v4 + 16);
    v7 = *(v4 + 24);
    *(v1 + 16) = v3;
    *v0 = v1;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1BE4C6EFC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_1BE4BF11C(a3, a4);
  sub_1BE4C7470(v6);
  (*(v7 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1BE4C6F5C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_1BE4BF11C(a2, a3);
  sub_1BE4C745C(v4);
  (*(v5 + 8))(a1);
  return a1;
}

uint64_t sub_1BE4C6FB8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_1BE4C70B0()
{
  result = qword_1EBDABD98;
  if (!qword_1EBDABD98)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EBDABD98);
  }

  return result;
}

uint64_t sub_1BE4C721C(uint64_t a1, id *a2)
{
  v3 = sub_1BE54C6FC();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_1BE4C72A0(uint64_t a1, id *a2)
{
  result = sub_1BE54C6EC();
  *a2 = 0;
  return result;
}

uint64_t sub_1BE4C7318()
{
  sub_1BE54C70C();
  v0 = sub_1BE54C6DC();

  return v0;
}

uint64_t sub_1BE4C7350()
{
  v0 = sub_1BE54C70C();
  v1 = MEMORY[0x1BFB47CC0](v0);

  return v1;
}

__n128 sub_1BE4C7388(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_1BE4C7398(uint64_t a1, int a2)
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

uint64_t sub_1BE4C73B8(uint64_t result, int a2, int a3)
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

void sub_1BE4C7408(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1BE4C7480()
{

  return swift_once();
}

uint64_t sub_1BE4C7514()
{

  return swift_once();
}

uint64_t sub_1BE4C7534()
{

  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1BE4C7550()
{

  return sub_1BE54A794(2, 26, 4, 0);
}

uint64_t sub_1BE4C75B4(unint64_t *a1)
{

  return sub_1BE4C6A14(a1, v1, v2);
}

void sub_1BE4C75DC()
{

  JUMPOUT(0x1BFB48AC0);
}

uint64_t GenerativePartnerOnboardingSheetController.__allocating_init(willDismissAction:)(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  swift_getObjectType();
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  GenerativePartnerOnboardingSheetController.__allocating_init(skipToDefaultProviderSetup:forceShowNotNowButton:willDismissAction:)(1, 0, sub_1BE4C76F4, v6);
  sub_1BE4C81EC();
  return a2;
}

uint64_t GenerativePartnerOnboardingSheetController.init(willDismissAction:)(uint64_t a1, uint64_t a2)
{
  swift_getObjectType();
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  GenerativePartnerOnboardingSheetController.__allocating_init(skipToDefaultProviderSetup:forceShowNotNowButton:willDismissAction:)(1, 0, sub_1BE4C81CC, v4);
  sub_1BE4C81EC();
  return a2;
}

uint64_t sub_1BE4C76F4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

char *GenerativePartnerOnboardingSheetController.__allocating_init(skipToDefaultProviderSetup:forceShowNotNowButton:willDismissAction:)(char a1, char a2, uint64_t a3, uint64_t a4)
{
  if (a1)
  {
    if (qword_1EDDD6890 != -1)
    {
      swift_once();
    }

    sub_1BE53C930(v14);
    v8 = v15;
    if (v15)
    {
      v9 = v16;
      sub_1BE4C52F4(v14, v15);
      v10 = (*(v9 + 8))(v8, v9);
      v8 = v11;
      sub_1BE4C58A8(v14);
    }

    else
    {
      sub_1BE4C8048(v14);
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
    v8 = 0;
  }

  v12 = objc_allocWithZone(type metadata accessor for GenerativePartnerOnboardingSheetController());
  return sub_1BE4C78C0(v10, v8, a1 & 1, a2 & 1, a3, a4);
}

char *sub_1BE4C78C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = type metadata accessor for GenerativePartnerOnboardingSheet();
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v9 - 8);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v24 - v14;
  *&v6[OBJC_IVAR____TtC26GenerativePartnerServiceUI42GenerativePartnerOnboardingSheetController_hostingController] = 0;
  v16 = type metadata accessor for GenerativePartnerOnboardingSheetController();
  v24.receiver = v6;
  v24.super_class = v16;
  v17 = objc_msgSendSuper2(&v24, sel_initWithNibName_bundle_, 0, 0);
  [v17 setModalInPresentation_];
  [v17 setModalPresentationStyle_];
  v18 = swift_allocObject();
  v18[2] = a5;
  v18[3] = a6;
  v18[4] = v17;

  sub_1BE4BF9A0(sub_1BE4C811C, v18, v15);
  sub_1BE4C5FA8(v15, v13);
  v19 = objc_allocWithZone(sub_1BE4BF11C(&qword_1EBDABE58, &unk_1BE54E180));
  v20 = sub_1BE54BB2C();
  v21 = *&v17[OBJC_IVAR____TtC26GenerativePartnerServiceUI42GenerativePartnerOnboardingSheetController_hostingController];
  *&v17[OBJC_IVAR____TtC26GenerativePartnerServiceUI42GenerativePartnerOnboardingSheetController_hostingController] = v20;
  v22 = v20;

  [v17 addChildViewController_];

  sub_1BE4C8170(v15);
  return v17;
}

void sub_1BE4C7AB4()
{
  *(v0 + OBJC_IVAR____TtC26GenerativePartnerServiceUI42GenerativePartnerOnboardingSheetController_hostingController) = 0;
  sub_1BE54CBBC();
  __break(1u);
}

void sub_1BE4C7B34()
{
  v45.receiver = v0;
  v45.super_class = type metadata accessor for GenerativePartnerOnboardingSheetController();
  objc_msgSendSuper2(&v45, sel_viewDidLoad);
  v1 = sub_1BE4C8210();
  if (!v1)
  {
    __break(1u);
    goto LABEL_20;
  }

  v2 = v1;
  v3 = OBJC_IVAR____TtC26GenerativePartnerServiceUI42GenerativePartnerOnboardingSheetController_hostingController;
  v4 = *&v0[OBJC_IVAR____TtC26GenerativePartnerServiceUI42GenerativePartnerOnboardingSheetController_hostingController];
  if (!v4)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v5 = [v4 view];
  if (!v5)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v6 = v5;
  [v2 addSubview_];

  v7 = *&v0[v3];
  if (!v7)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v8 = [v7 view];
  if (!v8)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v9 = v8;
  [v8 setTranslatesAutoresizingMaskIntoConstraints_];

  sub_1BE4BF11C(&qword_1EBDABE48, &unk_1BE550660);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1BE54E130;
  v11 = sub_1BE4C8210();
  if (!v11)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v12 = v11;
  v13 = [v11 leadingAnchor];

  v14 = *&v0[v3];
  if (!v14)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v15 = [v14 view];
  if (!v15)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v16 = v15;
  v17 = [v15 leadingAnchor];

  v18 = sub_1BE4C81D0();
  *(v10 + 32) = v18;
  v19 = sub_1BE4C8210();
  if (!v19)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v20 = v19;
  v21 = [v19 trailingAnchor];

  v22 = *&v0[v3];
  if (!v22)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v23 = [v22 view];
  if (!v23)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v24 = v23;
  v25 = [v23 trailingAnchor];

  v26 = sub_1BE4C81D0();
  *(v10 + 40) = v26;
  v27 = sub_1BE4C8210();
  if (!v27)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v28 = v27;
  v29 = [v27 topAnchor];

  v30 = *&v0[v3];
  if (!v30)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v31 = [v30 view];
  if (!v31)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v32 = v31;
  v33 = [v31 topAnchor];

  v34 = sub_1BE4C81D0();
  *(v10 + 48) = v34;
  v35 = sub_1BE4C8210();
  if (!v35)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v36 = v35;
  v37 = [v35 bottomAnchor];

  v38 = *&v0[v3];
  if (!v38)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v39 = [v38 view];
  if (v39)
  {
    v40 = v39;
    v41 = objc_opt_self();
    v42 = [v40 bottomAnchor];

    v43 = sub_1BE4C81D0();
    *(v10 + 56) = v43;
    sub_1BE4C80B0();
    v44 = sub_1BE54C80C();

    [v41 activateConstraints_];

    return;
  }

LABEL_35:
  __break(1u);
}

id GenerativePartnerOnboardingSheetController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_1BE54C6DC();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id GenerativePartnerOnboardingSheetController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for GenerativePartnerOnboardingSheetController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1BE4C8048(uint64_t a1)
{
  v2 = sub_1BE4BF11C(&qword_1EBDABAF8, &qword_1BE54DC20);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1BE4C80B0()
{
  result = qword_1EBDABE50;
  if (!qword_1EBDABE50)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EBDABE50);
  }

  return result;
}

id sub_1BE4C811C()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  (*(v0 + 16))();

  return [v2 dismissViewControllerAnimated:1 completion:0];
}

uint64_t sub_1BE4C8170(uint64_t a1)
{
  v2 = type metadata accessor for GenerativePartnerOnboardingSheet();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_1BE4C81D0()
{

  return [v0 (v2 + 3941)];
}

uint64_t sub_1BE4C81EC()
{

  return MEMORY[0x1EEE6BDD8](v0, v1, 16, 7);
}

id sub_1BE4C8210()
{

  return [v0 (v1 + 2808)];
}

uint64_t sub_1BE4C8260(char a1)
{
  sub_1BE54CD8C();
  MEMORY[0x1BFB482A0](a1 & 1);
  return sub_1BE54CDAC();
}

uint64_t sub_1BE4C82C4()
{
  v1 = *v0;
  sub_1BE54CD8C();
  MEMORY[0x1BFB482A0](v1);
  return sub_1BE54CDAC();
}

uint64_t sub_1BE4C8308@<X0>(uint64_t a1@<X8>)
{
  v153 = a1;
  v3 = sub_1BE4BF11C(&qword_1EBDABE60, &unk_1BE54E1D0);
  v4 = sub_1BE4CE78C(v3);
  v160 = v5;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v4);
  sub_1BE4CE770();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v141 - v9;
  v11 = type metadata accessor for OBKSheetData.BulletPoint(0);
  v12 = sub_1BE4C7500(v11);
  v169 = v13;
  v170 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v12);
  sub_1BE4CE5E4();
  v171 = v16;
  sub_1BE4CE6F8();
  MEMORY[0x1EEE9AC00](v17);
  sub_1BE4CE710();
  sub_1BE4CE6A0();
  MEMORY[0x1EEE9AC00](v18);
  sub_1BE4CE710();
  sub_1BE4CE6A0();
  MEMORY[0x1EEE9AC00](v19);
  sub_1BE4CE710();
  sub_1BE4CE6A0();
  MEMORY[0x1EEE9AC00](v20);
  sub_1BE4CE764();
  v142 = v21;
  v22 = sub_1BE4BF11C(&qword_1EBDABE68, &qword_1BE54E470);
  v23 = sub_1BE4C7570(v22);
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v23);
  v158 = &v141 - v26;
  sub_1BE4CE71C();
  v27 = sub_1BE54AF6C();
  v28 = sub_1BE4C7570(v27);
  v30 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v28);
  sub_1BE4C757C();
  v162 = v32 - v31;
  sub_1BE4CE71C();
  v168 = sub_1BE54AD8C();
  v33 = sub_1BE4C7500(v168);
  v164 = v34;
  v36 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v33);
  sub_1BE4C757C();
  v39 = v38 - v37;
  sub_1BE4CE71C();
  v40 = sub_1BE54C6BC();
  v41 = sub_1BE4C7570(v40);
  v43 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v41);
  sub_1BE4C757C();
  v46 = v45 - v44;
  v47 = sub_1BE54C69C();
  v48 = sub_1BE4C7570(v47);
  v50 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v48);
  sub_1BE4C757C();
  v51 = sub_1BE54ADAC();
  v52 = sub_1BE4C7500(v51);
  v165 = v53;
  v166 = v52;
  v55 = *(v54 + 64);
  MEMORY[0x1EEE9AC00](v52);
  sub_1BE4CE5E4();
  sub_1BE4CE6A0();
  MEMORY[0x1EEE9AC00](v56);
  sub_1BE4CE710();
  v157 = v57;
  sub_1BE4CE6F8();
  MEMORY[0x1EEE9AC00](v58);
  sub_1BE4CE710();
  sub_1BE4CE6A0();
  MEMORY[0x1EEE9AC00](v59);
  sub_1BE4CE710();
  v156 = v60;
  sub_1BE4CE6F8();
  MEMORY[0x1EEE9AC00](v61);
  sub_1BE4CE710();
  sub_1BE4CE6A0();
  MEMORY[0x1EEE9AC00](v62);
  sub_1BE4CE710();
  v155 = v63;
  sub_1BE4CE6F8();
  MEMORY[0x1EEE9AC00](v64);
  sub_1BE4CE710();
  sub_1BE4CE6A0();
  MEMORY[0x1EEE9AC00](v65);
  sub_1BE4CE710();
  v154 = v66;
  sub_1BE4CE6F8();
  MEMORY[0x1EEE9AC00](v67);
  v69 = &v141 - v68;
  sub_1BE54C68C();
  _s26GenerativePartnerServiceUI0aB17SettingsDeepLinksO11DestinationO8rawValueSSvg_0();
  sub_1BE54C67C();
  v71 = v1[5];
  v70 = v1[6];
  v167 = v1;
  sub_1BE4C52F4(v1 + 2, v71);
  sub_1BE4CE704(v70);
  v72(v71, v70);
  sub_1BE54C66C();

  _s26GenerativePartnerServiceUI0aB17SettingsDeepLinksO11DestinationO8rawValueSSvg_0();
  sub_1BE54C67C();
  sub_1BE54C6AC();
  if (qword_1EBDABA88 != -1)
  {
    sub_1BE4CE5C4();
  }

  v73 = v168;
  v163 = sub_1BE4C52BC(v168, qword_1EBDB0C08);
  v74 = (v164 + 16);
  v161 = *(v164 + 2);
  v161(v39, v163, v73);
  sub_1BE54AF2C();
  v152 = v69;
  sub_1BE4CE690();
  sub_1BE4CE6D0();
  sub_1BE4C90CC(v167, v158);
  sub_1BE4BF11C(&qword_1EBDABE70, &qword_1BE54E1E0);
  sub_1BE4CE870(v160);
  v75 = swift_allocObject();
  *(v75 + 16) = xmmword_1BE54E190;
  v150 = v75;
  v76 = v75 + v73;
  v175[0] = 0;
  v146 = sub_1BE4C9400(v175);
  sub_1BE4CE6B0();
  sub_1BE54C65C();
  v77 = v163;
  v78 = v161;
  v161(v39, v163, v168);
  sub_1BE54AF2C();
  sub_1BE4CE690();
  sub_1BE4CE6D0();
  sub_1BE4CE6B0();
  sub_1BE54C65C();
  v164 = v74;
  v78(v39, v77, v168);
  sub_1BE54AF2C();
  v79 = v147;
  v159 = v46;
  v160 = v39;
  sub_1BE4CE690();
  sub_1BE4CE6D0();
  v80 = v79;
  v81 = v166;
  if (v146)
  {
    v82 = *(v165 + 32);
    v74 = v142;
    v82(v142, v154, v166);
    v83 = v170;
    v82((v74 + *(v170 + 20)), v80, v81);
    v84 = (v74 + *(v83 + 24));
    *v84 = 1769105779;
    v84[1] = 0xE400000000000000;
    sub_1BE4CD62C(v74, v76);
    v85 = 0;
  }

  else
  {
    v86 = *(v165 + 8);
    v86(v80, v166);
    v86(v154, v81);
    v85 = 1;
    v83 = v170;
  }

  sub_1BE4C63F8(v76, v85, 1, v83);
  v174[0] = 1;
  LODWORD(v154) = sub_1BE4C9400(v174);
  sub_1BE4CE6B0();
  sub_1BE54C65C();
  v87 = sub_1BE4CE7F4();
  v74(v87);
  sub_1BE54AF2C();
  sub_1BE4CE60C();
  sub_1BE4CE6B0();
  sub_1BE54C65C();
  v88 = sub_1BE4CE80C();
  v74(v88);
  sub_1BE54AF2C();
  v89 = v148;
  sub_1BE4CE60C();
  v90 = v166;
  if (v154)
  {
    v91 = *(v165 + 32);
    v92 = v143;
    v91(v143, v155, v166);
    v93 = v170;
    v91(v92 + *(v170 + 20), v89, v90);
    v94 = (v92 + *(v93 + 24));
    *v94 = 0x6275622E74786574;
    v94[1] = 0xEB00000000656C62;
    sub_1BE4CD62C(v92, &v69[v76]);
    v95 = 0;
    v96 = v93;
  }

  else
  {
    v97 = *(v165 + 8);
    v97(v89, v166);
    v97(v155, v90);
    v95 = 1;
    v96 = v170;
  }

  sub_1BE4C63F8(&v69[v76], v95, 1, v96);
  v155 = v76 + 2 * v69;
  v173[0] = 2;
  LODWORD(v154) = sub_1BE4C9400(v173);
  sub_1BE4CE6B0();
  sub_1BE54C65C();
  v98 = sub_1BE4CE7F4();
  v89(v98);
  sub_1BE54AF2C();
  sub_1BE4CE60C();
  sub_1BE4CE6B0();
  sub_1BE54C65C();
  v99 = sub_1BE4CE80C();
  v89(v99);
  sub_1BE54AF2C();
  v100 = v149;
  sub_1BE4CE60C();
  if (v154)
  {
    v154 = 0x80000001BE552F20;
    v101 = v166;
    v102 = *(v165 + 32);
    v103 = v100;
    v104 = v144;
    v102(v144, v156, v166);
    v105 = v170;
    v102(v104 + *(v170 + 20), v103, v101);
    v106 = (v104 + *(v105 + 24));
    *v106 = 0xD000000000000013;
    v107 = v155;
    v106[1] = v154;
    sub_1BE4CD62C(v104, v107);
    v108 = 0;
    v109 = v105;
    v110 = v107;
  }

  else
  {
    v111 = v166;
    v112 = *(v165 + 8);
    v112(v100, v166);
    v112(v156, v111);
    v108 = 1;
    v109 = v170;
    v110 = v155;
  }

  sub_1BE4C63F8(v110, v108, 1, v109);
  v156 = 3 * v69;
  v172[0] = 3;
  LODWORD(v155) = sub_1BE4C9400(v172);
  sub_1BE54C65C();
  v113 = v160;
  v114 = v161;
  v161(v160, v163, v168);
  sub_1BE54AF2C();
  sub_1BE4CE6EC();
  sub_1BE4CE6D0();
  sub_1BE4CE6B0();
  sub_1BE54C65C();
  v114(v113, v163, v168);
  sub_1BE54AF2C();
  v115 = v151;
  sub_1BE4CE6EC();
  sub_1BE4CE6D0();
  v116 = v166;
  if (v155)
  {
    v117 = *(v165 + 32);
    v118 = v145;
    v117(v145, v157, v166);
    v117(v118 + *(v170 + 20), v115, v116);
    v109 = v170;
    v119 = (v118 + *(v170 + 24));
    *v119 = 0xD000000000000016;
    v119[1] = 0x80000001BE552FB0;
    v120 = v156;
    sub_1BE4CD62C(v118, v76 + v156);
    v121 = 0;
    v122 = v120;
  }

  else
  {
    v123 = *(v165 + 8);
    v123(v115, v166);
    v123(v157, v116);
    v121 = 1;
    v122 = v156;
  }

  sub_1BE4C63F8(v76 + v122, v121, 1, v109);
  sub_1BE4C94E8(v167, v76 + 4 * v69);
  v124 = MEMORY[0x1E69E7CC0];
  v125 = 5;
  do
  {
    sub_1BE4CD474(v76, v10);
    sub_1BE4CD5C4(v10, v2, &qword_1EBDABE60, &unk_1BE54E1D0);
    if (sub_1BE4C63BC(v2, 1, v109) == 1)
    {
      sub_1BE4CD4E4(v2);
    }

    else
    {
      sub_1BE4CD62C(v2, v171);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v130 = *(v124 + 16);
        v131 = sub_1BE4CE7AC();
        v124 = sub_1BE541A70(v131, v132, v133, v124);
      }

      v127 = *(v124 + 16);
      v126 = *(v124 + 24);
      if (v127 >= v126 >> 1)
      {
        v124 = sub_1BE541A70(v126 > 1, v127 + 1, 1, v124);
      }

      *(v124 + 16) = v127 + 1;
      sub_1BE4CE7CC();
      sub_1BE4CD62C(v171, v124 + v128 + *(v129 + 72) * v127);
      v109 = v170;
    }

    v76 += v69;
    --v125;
  }

  while (v125);
  swift_setDeallocating();
  sub_1BE52B734();
  v134 = type metadata accessor for OBKSheetData(0);
  v135 = v153;
  v136 = v167;
  sub_1BE4C9AB4(v167, v153 + v134[8]);
  v137 = v134[9];
  v138 = 1;
  if (*(v136 + 64) == 1)
  {
    sub_1BE4CA12C(v135 + v137);
    v138 = 0;
  }

  v139 = type metadata accessor for OBKSheetData.ButtonConfiguration(0);
  sub_1BE4C63F8(v135 + v137, v138, 1, v139);
  (*(v165 + 32))(v135, v152, v166);
  result = sub_1BE4CD5C4(v158, v135 + v134[5], &qword_1EBDABE68, &qword_1BE54E470);
  *(v135 + v134[6]) = v124;
  *(v135 + v134[7]) = 1;
  return result;
}

uint64_t sub_1BE4C90CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1BE54AF6C();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = sub_1BE54AD8C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1BE54C6BC();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = sub_1BE54C69C();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  if (*(a1 + 66) == 1)
  {
    v22 = a2;
    sub_1BE54C68C();
    sub_1BE54C67C();
    v15 = *(a1 + 40);
    v16 = *(a1 + 48);
    sub_1BE4C52F4((a1 + 16), v15);
    (*(v16 + 16))(v15, v16);
    sub_1BE54C66C();

    sub_1BE54C67C();
    sub_1BE54C6AC();
    if (qword_1EBDABA88 != -1)
    {
      swift_once();
    }

    v17 = sub_1BE4C52BC(v6, qword_1EBDB0C08);
    (*(v7 + 16))(v10, v17, v6);
    sub_1BE54AF2C();
    v18 = v22;
    sub_1BE54ADBC();
    v19 = sub_1BE54ADAC();
    return sub_1BE4C63F8(v18, 0, 1, v19);
  }

  else
  {
    v21 = sub_1BE54ADAC();

    return sub_1BE4C63F8(a2, 1, 1, v21);
  }
}

uint64_t sub_1BE4C9400(char *a1)
{
  v2 = v1[5];
  v3 = v1[6];
  v4 = *a1;
  sub_1BE4C52F4(v1 + 2, v2);
  v5 = (*(v3 + 224))(v2, v3);
  v6 = sub_1BE52DE30(v5);
  v7 = [objc_opt_self() currentDevice];
  v8 = [v7 userInterfaceIdiom];

  v9 = sub_1BE5433EC(v8);

  v10 = sub_1BE4CD6B0(v9, v6);

  v11 = sub_1BE52913C(v4, v10);

  return v11 & 1;
}

uint64_t sub_1BE4C94E8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v53 = a2;
  v54 = type metadata accessor for OBKSheetData.BulletPoint(0);
  v3 = *(*(v54 - 8) + 64);
  MEMORY[0x1EEE9AC00](v54);
  v52 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1BE54AF6C();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v50 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = sub_1BE54AD8C();
  v51 = *(v48 - 8);
  v8 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](v48);
  v10 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1BE54C6BC();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v49 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1BE54C69C();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = sub_1BE54ADAC();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x1EEE9AC00](v16);
  v21 = &v42 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v42 - v22;
  v25 = a1[5];
  v24 = a1[6];
  sub_1BE4C52F4(a1 + 2, v25);
  (*(v24 + 216))(&v55, v25, v24);
  if (v55 >> 6)
  {
    v26 = v53;
    v27 = v54;

    return sub_1BE4C63F8(v26, 1, 1, v27);
  }

  else
  {
    v46 = v10;
    v47 = v23;
    v43 = v21;
    v44 = v17;
    v45 = v16;
    v29 = v48;
    sub_1BE54C68C();
    sub_1BE54C67C();
    v30 = a1[5];
    v31 = a1[6];
    sub_1BE4C52F4(a1 + 2, v30);
    (*(v31 + 16))(v30, v31);
    sub_1BE54C66C();

    sub_1BE54C67C();
    sub_1BE54C6AC();
    if (qword_1EBDABA88 != -1)
    {
      swift_once();
    }

    v42 = sub_1BE4C52BC(v29, qword_1EBDB0C08);
    v51 = *(v51 + 16);
    v32 = v46;
    (v51)(v46, v42, v29);
    sub_1BE54AF2C();
    sub_1BE54ADBC();
    sub_1BE54C68C();
    sub_1BE54C67C();
    v33 = a1[5];
    v34 = a1[6];
    sub_1BE4C52F4(a1 + 2, v33);
    (*(v34 + 16))(v33, v34);
    sub_1BE54C66C();

    sub_1BE54C67C();
    sub_1BE54C6AC();
    (v51)(v32, v42, v29);
    sub_1BE54AF2C();
    v35 = v43;
    sub_1BE54ADBC();
    v36 = v45;
    v37 = *(v44 + 32);
    v38 = v52;
    v37(v52, v47, v45);
    v39 = v54;
    v37((v38 + *(v54 + 20)), v35, v36);
    v40 = (v38 + *(v39 + 24));
    *v40 = 0xD000000000000012;
    v40[1] = 0x80000001BE553070;
    v41 = v53;
    sub_1BE4CD62C(v38, v53);
    return sub_1BE4C63F8(v41, 0, 1, v39);
  }
}

uint64_t sub_1BE4C9AB4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[5];
  v4 = a1[6];
  sub_1BE4C52F4(a1 + 2, v3);
  (*(v4 + 216))(&v7, v3, v4);
  if (v7 == 128)
  {
    sub_1BE4C9B74(a2);
  }

  else
  {
    sub_1BE4C9EC4(a2);
  }

  v5 = type metadata accessor for OBKSheetData.ButtonConfiguration(0);

  return sub_1BE4C63F8(a2, 0, 1, v5);
}

id sub_1BE4C9B74@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1BE54AF6C();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = sub_1BE54AD8C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v26[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_1BE54C6BC();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = sub_1BE54ADAC();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v26[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1BE54C65C();
  if (qword_1EBDABA88 != -1)
  {
    swift_once();
  }

  v17 = sub_1BE4C52BC(v5, qword_1EBDB0C08);
  (*(v6 + 16))(v9, v17, v5);
  sub_1BE54AF2C();
  sub_1BE54ADBC();
  result = [objc_opt_self() sharedConnection];
  if (result)
  {
    v19 = result;
    v20 = [result isExternalIntelligenceSignInAllowed];

    if (qword_1EBDABA48 != -1)
    {
      swift_once();
    }

    v22 = qword_1EBDB0BA8;
    v21 = unk_1EBDB0BB0;
    v23 = type metadata accessor for OBKSheetData.ButtonConfiguration(0);
    v24 = (a1 + v23[7]);
    (*(v13 + 32))(a1, v16, v12);
    *(a1 + v23[5]) = v20;
    *v24 = v22;
    v24[1] = v21;
    v25 = (a1 + v23[6]);
    *v25 = &sub_1BE4CE5C0;
    v25[1] = v1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BE4C9EC4@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1BE54AF6C();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = sub_1BE54AD8C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1BE54C6BC();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  sub_1BE54C65C();
  if (qword_1EBDABA88 != -1)
  {
    swift_once();
  }

  v12 = sub_1BE4C52BC(v5, qword_1EBDB0C08);
  (*(v6 + 16))(v9, v12, v5);
  sub_1BE54AF2C();
  sub_1BE54ADBC();
  if (qword_1EBDABA48 != -1)
  {
    swift_once();
  }

  v14 = qword_1EBDB0BA8;
  v13 = unk_1EBDB0BB0;
  v15 = type metadata accessor for OBKSheetData.ButtonConfiguration(0);
  v16 = (a1 + v15[7]);
  *(a1 + v15[5]) = 1;
  *v16 = v14;
  v16[1] = v13;
  v17 = (a1 + v15[6]);
  *v17 = sub_1BE4CD6A0;
  v17[1] = v1;
}

uint64_t sub_1BE4CA12C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1BE54AF6C();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = sub_1BE54AD8C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1BE54C6BC();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  sub_1BE54C65C();
  if (qword_1EBDABA88 != -1)
  {
    swift_once();
  }

  v12 = sub_1BE4C52BC(v5, qword_1EBDB0C08);
  (*(v6 + 16))(v9, v12, v5);
  sub_1BE54AF2C();
  sub_1BE54ADBC();
  if (qword_1EBDABA40 != -1)
  {
    swift_once();
  }

  v14 = qword_1EBDB0B98;
  v13 = unk_1EBDB0BA0;
  v15 = type metadata accessor for OBKSheetData.ButtonConfiguration(0);
  v16 = (a1 + v15[7]);
  *(a1 + v15[5]) = 1;
  *v16 = v14;
  v16[1] = v13;
  v17 = (a1 + v15[6]);
  *v17 = sub_1BE4CD690;
  v17[1] = v1;
}

uint64_t sub_1BE4CA39C@<X0>(uint64_t a1@<X8>)
{
  v124 = a1;
  v3 = sub_1BE4BF11C(&qword_1EBDABE60, &unk_1BE54E1D0);
  v4 = sub_1BE4CE78C(v3);
  v118 = v5;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v4);
  sub_1BE4CE770();
  MEMORY[0x1EEE9AC00](v8);
  sub_1BE4CE764();
  v137 = v9;
  v10 = sub_1BE4CE71C();
  v123 = type metadata accessor for OBKSheetData.BulletPoint(v10);
  v11 = sub_1BE4C7500(v123);
  v135 = v12;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v11);
  sub_1BE4CE5E4();
  v136 = v15;
  sub_1BE4CE6F8();
  MEMORY[0x1EEE9AC00](v16);
  sub_1BE4CE764();
  v121 = v17;
  v18 = sub_1BE4BF11C(&qword_1EBDABE68, &qword_1BE54E470);
  v19 = sub_1BE4C7570(v18);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v128 = v117 - v22;
  sub_1BE4CE71C();
  v23 = sub_1BE54AF6C();
  v24 = sub_1BE4C7570(v23);
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v24);
  sub_1BE4C757C();
  v130 = v28 - v27;
  sub_1BE4CE71C();
  v127 = sub_1BE54AD8C();
  v29 = sub_1BE4C7500(v127);
  v133 = v30;
  v32 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v29);
  sub_1BE4C757C();
  v120 = v34 - v33;
  sub_1BE4CE71C();
  v35 = sub_1BE54C6BC();
  v36 = sub_1BE4C7570(v35);
  v38 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v36);
  sub_1BE4C757C();
  v41 = v40 - v39;
  v42 = sub_1BE54C69C();
  v43 = sub_1BE4C7570(v42);
  v45 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v43);
  sub_1BE4C757C();
  v46 = sub_1BE54ADAC();
  v47 = sub_1BE4C7500(v46);
  v131 = v48;
  v132 = v47;
  v50 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v47);
  sub_1BE4CE5E4();
  v119 = v51;
  sub_1BE4CE6F8();
  MEMORY[0x1EEE9AC00](v52);
  sub_1BE4CE710();
  v126 = v53;
  sub_1BE4CE6F8();
  MEMORY[0x1EEE9AC00](v54);
  v56 = v117 - v55;
  sub_1BE54C68C();
  sub_1BE54C67C();
  v58 = v1[5];
  v57 = v1[6];
  v134 = v1;
  sub_1BE4C52F4(v1 + 2, v58);
  sub_1BE4CE704(v57);
  v59(v58, v57);
  sub_1BE54C66C();

  _s26GenerativePartnerServiceUI0aB17SettingsDeepLinksO11DestinationO8rawValueSSvg_0();
  sub_1BE54C67C();
  sub_1BE54C6AC();
  if (qword_1EBDABA88 != -1)
  {
    sub_1BE4CE5C4();
  }

  v60 = v127;
  v125 = sub_1BE4C52BC(v127, qword_1EBDB0C08);
  v61 = *(v133 + 2);
  v133 += 16;
  v129 = v61;
  v62 = v120;
  v61(v120, v125, v60);
  v63 = v130;
  sub_1BE54AF2C();
  v122 = v56;
  sub_1BE4CE690();
  sub_1BE4CE6D0();
  sub_1BE54C68C();
  sub_1BE4CE7BC();
  sub_1BE54C67C();
  v64 = v134[5];
  v65 = v134[6];
  sub_1BE4CE670(v134 + 2, v64);
  v66(v64, v65);
  sub_1BE54C66C();

  sub_1BE54C67C();
  v67 = v41;
  sub_1BE54C6AC();
  v68 = v125;
  v129(v62, v125, v60);
  v69 = v63;
  sub_1BE54AF2C();
  v70 = v128;
  sub_1BE4CE6EC();
  sub_1BE4CE6D0();
  sub_1BE4CE728();
  sub_1BE4C63F8(v71, v72, v73, v132);
  sub_1BE4BF11C(&qword_1EBDABE70, &qword_1BE54E1E0);
  sub_1BE4CE870(v118);
  v74 = swift_allocObject();
  *(v74 + 16) = xmmword_1BE54DC10;
  v118 = v74;
  v75 = v74 + v70;
  v117[1] = v67;
  sub_1BE54C65C();
  v129(v62, v68, v60);
  sub_1BE54AF2C();
  sub_1BE4CE6EC();
  sub_1BE4CE6D0();
  sub_1BE54C68C();
  sub_1BE54C67C();
  v76 = v134;
  v78 = v134[5];
  v77 = v134[6];
  sub_1BE4C52F4(v134 + 2, v78);
  sub_1BE4CE704(v77);
  v79(v78, v77);
  sub_1BE54C66C();

  sub_1BE54C67C();
  v80 = v76[5];
  v81 = v76[6];
  sub_1BE4C52F4(v76 + 2, v80);
  sub_1BE4CE704(v81);
  v82(v80, v81);
  sub_1BE54C66C();

  sub_1BE54C67C();
  sub_1BE54C6AC();
  v129(v62, v125, v127);
  sub_1BE54AF2C();
  v83 = v119;
  sub_1BE4CE6EC();
  sub_1BE54ADBC();
  v84 = v132;
  v85 = v131 + 32;
  v86 = *(v131 + 32);
  v87 = v121;
  v86(v121, v126, v132);
  v88 = v123;
  v89 = v87 + *(v123 + 20);
  v131 = v85;
  v133 = v86;
  v86(v89, v83, v84);
  v90 = (v87 + *(v88 + 24));
  *v90 = 0xD000000000000010;
  v90[1] = 0x80000001BE5531F0;
  sub_1BE4CD62C(v87, v75);
  sub_1BE4CE728();
  sub_1BE4C63F8(v91, v92, v93, v88);
  sub_1BE4CAD18(v134, v75 + v69);
  v94 = 0;
  v95 = 0;
  v96 = MEMORY[0x1E69E7CC0];
  v97 = v88;
  do
  {
    v98 = v94;
    v99 = v137;
    sub_1BE4CD474(v75 + v95 * v69, v137);
    sub_1BE4CD5C4(v99, v2, &qword_1EBDABE60, &unk_1BE54E1D0);
    if (sub_1BE4C63BC(v2, 1, v88) == 1)
    {
      sub_1BE4CD4E4(v2);
    }

    else
    {
      sub_1BE4CD62C(v2, v136);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v105 = *(v96 + 16);
        v106 = sub_1BE4CE7AC();
        v96 = sub_1BE541A70(v106, v107, v108, v96);
      }

      v101 = *(v96 + 16);
      v100 = *(v96 + 24);
      if (v101 >= v100 >> 1)
      {
        v96 = sub_1BE541A70(v100 > 1, v101 + 1, 1, v96);
      }

      *(v96 + 16) = v101 + 1;
      sub_1BE4CE7CC();
      sub_1BE4CD62C(v104, v96 + v102 + *(v103 + 72) * v101);
      v88 = v97;
    }

    v94 = 1;
    v95 = 1;
  }

  while ((v98 & 1) == 0);
  swift_setDeallocating();
  sub_1BE52B734();
  v109 = type metadata accessor for OBKSheetData(0);
  v110 = v124;
  v111 = v134;
  sub_1BE4CB654(v124 + v109[8]);
  type metadata accessor for OBKSheetData.ButtonConfiguration(0);
  sub_1BE4CE728();
  sub_1BE4C63F8(v112, v113, v114, v115);
  sub_1BE4CB988(v111, v110 + v109[9]);
  (v133)(v110, v122, v132);
  result = sub_1BE4CD5C4(v128, v110 + v109[5], &qword_1EBDABE68, &qword_1BE54E470);
  *(v110 + v109[6]) = v96;
  *(v110 + v109[7]) = 0;
  return result;
}

uint64_t sub_1BE4CAD18@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v81 = a2;
  v82 = type metadata accessor for OBKSheetData.BulletPoint(0);
  v3 = *(*(v82 - 8) + 64);
  v4 = MEMORY[0x1EEE9AC00](v82);
  v72 = &v70 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v7 = (&v70 - v6);
  v8 = sub_1BE54AF6C();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v80 = &v70 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1BE54AD8C();
  v78 = *(v11 - 8);
  v79 = v11;
  v12 = *(v78 + 8);
  MEMORY[0x1EEE9AC00](v11);
  v77 = &v70 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1BE54C6BC();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = sub_1BE54C69C();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = sub_1BE54ADAC();
  v75 = *(v18 - 8);
  v76 = v18;
  v19 = v75[8];
  v20 = MEMORY[0x1EEE9AC00](v18);
  v73 = &v70 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1EEE9AC00](v20);
  v24 = &v70 - v23;
  v25 = MEMORY[0x1EEE9AC00](v22);
  v27 = &v70 - v26;
  MEMORY[0x1EEE9AC00](v25);
  v29 = &v70 - v28;
  v31 = a1[5];
  v30 = a1[6];
  sub_1BE4C52F4(a1 + 2, v31);
  (*(v30 + 216))(&v83, v31, v30);
  v32 = v83 >> 6;
  if (!v32)
  {
    v73 = v27;
    v74 = v83;
    v70 = v7;
    sub_1BE54C68C();
    sub_1BE54C67C();
    v47 = a1[5];
    v48 = a1[6];
    sub_1BE4C52F4(a1 + 2, v47);
    (*(v48 + 16))(v47, v48);
    sub_1BE54C66C();

    sub_1BE54C67C();
    sub_1BE54C6AC();
    if (qword_1EBDABA88 != -1)
    {
      swift_once();
    }

    v49 = v79;
    v50 = sub_1BE4C52BC(v79, qword_1EBDB0C08);
    v51 = v77;
    v71 = *(v78 + 2);
    v72 = v50;
    v71(v77, v50, v49);
    sub_1BE54AF2C();
    v78 = v29;
    sub_1BE54ADBC();
    sub_1BE54C68C();
    sub_1BE54C67C();
    v52 = a1[5];
    v53 = a1[6];
    sub_1BE4C52F4(a1 + 2, v52);
    (*(v53 + 16))(v52, v53);
    sub_1BE54C66C();

    sub_1BE54C67C();
    v54 = a1[6];
    sub_1BE4C52F4(a1 + 2, a1[5]);
    LLMProvider.localizedAttributionDisplayName()();
    sub_1BE54C66C();

    sub_1BE54C67C();
    sub_1BE54C6AC();
    v71(v51, v72, v49);
    sub_1BE54AF2C();
    v55 = v73;
    sub_1BE54ADBC();
    if (v74)
    {
      v56 = v76;
      v57 = v75[4];
      v58 = v70;
      v57(v70, v78, v76);
      v59 = v82;
      v57(v58 + *(v82 + 20), v55, v56);
      v60 = (v58 + *(v59 + 24));
      *v60 = 0xD00000000000001ELL;
      v60[1] = 0x80000001BE553330;
      v61 = v81;
      sub_1BE4CD62C(v58, v81);
      v44 = v61;
      v45 = 0;
      v46 = v59;
      return sub_1BE4C63F8(v44, v45, 1, v46);
    }

    v68 = v76;
    v69 = v75[1];
    v69(v55, v76);
    v69(v78, v68);
LABEL_16:
    v44 = v81;
    v46 = v82;
    v45 = 1;
    return sub_1BE4C63F8(v44, v45, 1, v46);
  }

  if (v32 == 1)
  {
    v74 = v83;
    v33 = v77;
    sub_1BE54C65C();
    if (qword_1EBDABA88 != -1)
    {
      swift_once();
    }

    v34 = v79;
    v35 = sub_1BE4C52BC(v79, qword_1EBDB0C08);
    v70 = *(v78 + 2);
    v71 = v35;
    v70(v33, v35, v34);
    sub_1BE54AF2C();
    v78 = v24;
    sub_1BE54ADBC();
    sub_1BE54C68C();
    sub_1BE54C67C();
    v36 = a1[6];
    sub_1BE4C52F4(a1 + 2, a1[5]);
    LLMProvider.localizedAttributionDisplayName()();
    sub_1BE54C66C();

    sub_1BE54C67C();
    sub_1BE54C6AC();
    v70(v33, v71, v34);
    sub_1BE54AF2C();
    v37 = v73;
    sub_1BE54ADBC();
    if (v74)
    {
      v38 = v76;
      v39 = v75[4];
      v40 = v72;
      v39(v72, v78, v76);
      v41 = v82;
      v39((v40 + *(v82 + 20)), v37, v38);
      v42 = (v40 + *(v41 + 24));
      *v42 = 0xD000000000000016;
      v42[1] = 0x80000001BE553290;
      v43 = v81;
      sub_1BE4CD62C(v40, v81);
      v44 = v43;
      v45 = 0;
      v46 = v41;
      return sub_1BE4C63F8(v44, v45, 1, v46);
    }

    v65 = v75[1];
    v66 = v37;
    v67 = v76;
    v65(v66, v76);
    v65(v78, v67);
    goto LABEL_16;
  }

  v62 = v81;
  v63 = v82;

  return sub_1BE4C63F8(v62, 1, 1, v63);
}

uint64_t sub_1BE4CB654@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v25 = a1;
  v3 = sub_1BE54AF6C();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = sub_1BE54AD8C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1BE54C6BC();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = sub_1BE54C69C();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  sub_1BE54C68C();
  sub_1BE54C67C();
  v14 = *(v1 + 40);
  v15 = *(v1 + 48);
  sub_1BE4C52F4((v2 + 16), *(v2 + 40));
  (*(v15 + 16))(v14, v15);
  sub_1BE54C66C();

  sub_1BE54C67C();
  sub_1BE54C6AC();
  if (qword_1EBDABA88 != -1)
  {
    swift_once();
  }

  v16 = sub_1BE4C52BC(v5, qword_1EBDB0C08);
  (*(v6 + 16))(v9, v16, v5);
  sub_1BE54AF2C();
  v17 = v25;
  sub_1BE54ADBC();
  v18 = v17;
  if (qword_1EBDABA48 != -1)
  {
    swift_once();
  }

  v20 = qword_1EBDB0BA8;
  v19 = unk_1EBDB0BB0;
  v21 = type metadata accessor for OBKSheetData.ButtonConfiguration(0);
  v22 = (v18 + v21[7]);
  *(v18 + v21[5]) = 1;
  *v22 = v20;
  v22[1] = v19;
  v23 = (v18 + v21[6]);
  *v23 = sub_1BE4CE014;
  v23[1] = v2;
}

uint64_t sub_1BE4CB988@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[5];
  v4 = a1[6];
  sub_1BE4C52F4(a1 + 2, v3);
  (*(v4 + 216))(&v8, v3, v4);
  if (v8 > 0x3Fu)
  {
    v5 = 1;
  }

  else
  {
    sub_1BE4CBA44(a2);
    v5 = 0;
  }

  v6 = type metadata accessor for OBKSheetData.ButtonConfiguration(0);

  return sub_1BE4C63F8(a2, v5, 1, v6);
}

id sub_1BE4CBA44@<X0>(uint64_t a1@<X8>)
{
  v31 = a1;
  v2 = sub_1BE54AF6C();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v33 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1BE54AD8C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1BE54C6BC();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = sub_1BE54C69C();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = sub_1BE54ADAC();
  v29 = *(v14 - 8);
  v30 = v14;
  v15 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BE54C68C();
  sub_1BE54C67C();
  v19 = *(v1 + 5);
  v18 = *(v1 + 6);
  v32 = v1;
  sub_1BE4C52F4(v1 + 2, v19);
  (*(v18 + 16))(v19, v18);
  sub_1BE54C66C();

  sub_1BE54C67C();
  sub_1BE54C6AC();
  if (qword_1EBDABA88 != -1)
  {
    swift_once();
  }

  v20 = sub_1BE4C52BC(v5, qword_1EBDB0C08);
  (*(v6 + 16))(v9, v20, v5);
  sub_1BE54AF2C();
  sub_1BE54ADBC();
  result = [objc_opt_self() sharedConnection];
  if (result)
  {
    v22 = result;
    v23 = [result isExternalIntelligenceSignInAllowed];

    v24 = type metadata accessor for OBKSheetData.ButtonConfiguration(0);
    v25 = v31;
    v26 = (v31 + v24[7]);
    (*(v29 + 32))(v31, v17, v30);
    *(v25 + v24[5]) = v23;
    *v26 = 0;
    v26[1] = 0;
    v27 = (v25 + v24[6]);
    v28 = v32;
    *v27 = sub_1BE4CE004;
    v27[1] = v28;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BE4CBE14@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1BE4BF11C(&qword_1EBDABE60, &unk_1BE54E1D0);
  v5 = sub_1BE4CE78C(v4);
  v154 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v5);
  sub_1BE4CE5E4();
  v160 = v9;
  sub_1BE4CE6F8();
  MEMORY[0x1EEE9AC00](v10);
  sub_1BE4CE764();
  v158 = v11;
  v12 = sub_1BE4CE71C();
  v159 = type metadata accessor for OBKSheetData.BulletPoint(v12);
  v13 = sub_1BE4C7500(v159);
  v151 = v14;
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v13);
  sub_1BE4CE5E4();
  v150 = v17;
  sub_1BE4CE6F8();
  MEMORY[0x1EEE9AC00](v18);
  sub_1BE4CE764();
  v156 = v19;
  v20 = sub_1BE4BF11C(&qword_1EBDABE68, &qword_1BE54E470);
  v21 = sub_1BE4C7570(v20);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v164 = &v148 - v24;
  sub_1BE4CE71C();
  v25 = sub_1BE54AF6C();
  v26 = sub_1BE4C7570(v25);
  v28 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v26);
  sub_1BE4C757C();
  v162 = v30 - v29;
  sub_1BE4CE71C();
  v166 = sub_1BE54AD8C();
  v31 = sub_1BE4C7500(v166);
  v33 = v32;
  v35 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v31);
  sub_1BE4C757C();
  v38 = v37 - v36;
  sub_1BE4CE71C();
  v39 = sub_1BE54C6BC();
  v40 = sub_1BE4C7570(v39);
  v42 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v40);
  sub_1BE4C757C();
  v45 = v44 - v43;
  v46 = sub_1BE54C69C();
  v47 = sub_1BE4C7570(v46);
  v49 = *(v48 + 64);
  MEMORY[0x1EEE9AC00](v47);
  sub_1BE4C757C();
  v167 = sub_1BE54ADAC();
  v50 = sub_1BE4C7500(v167);
  v157 = v51;
  v53 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](v50);
  sub_1BE4CE5E4();
  v155 = v54;
  sub_1BE4CE6F8();
  MEMORY[0x1EEE9AC00](v55);
  sub_1BE4CE710();
  v161 = v56;
  sub_1BE4CE6F8();
  MEMORY[0x1EEE9AC00](v57);
  sub_1BE4CE764();
  v163 = v58;
  v59 = v1[5];
  v60 = v1[6];
  sub_1BE4C52F4(v1 + 2, v59);
  (*(v60 + 216))(&v168, v59, v60);
  if (v168 == 128)
  {
    v149 = a1;
    sub_1BE54C68C();
    sub_1BE54C67C();
    v61 = sub_1BE4CE63C();
    v62(v61);
    sub_1BE4CE7DC();

    _s26GenerativePartnerServiceUI0aB17SettingsDeepLinksO11DestinationO8rawValueSSvg_0();
    sub_1BE54C67C();
    sub_1BE54C6AC();
    if (qword_1EBDABA88 != -1)
    {
      sub_1BE4CE5C4();
    }

    v63 = v166;
    v64 = sub_1BE4C52BC(v166, qword_1EBDB0C08);
    v65 = *(v33 + 16);
    v165 = v33 + 16;
    v152 = v65;
    v153 = v64;
    v65(v38, v64, v63);
    sub_1BE54AF2C();
    sub_1BE4CE5F8();
    sub_1BE4CE6D0();
    sub_1BE54C68C();
    sub_1BE54C67C();
    v67 = v1[5];
    v66 = v1[6];
    sub_1BE4C52F4(v1 + 2, v67);
    sub_1BE4CE704(v66);
    v68(v67, v66);
    sub_1BE4CE7DC();

    sub_1BE54C67C();
    v69 = sub_1BE4CE63C();
    v70(v69);
    sub_1BE4CE7DC();

    sub_1BE54C67C();
    v71 = sub_1BE4CE63C();
    v72(v71);
    sub_1BE4CE7DC();

    sub_1BE54C67C();
    v73 = sub_1BE4CE63C();
    v74(v73);
    sub_1BE4CE7DC();

    sub_1BE54C67C();
    sub_1BE54C6AC();
    v76 = v152;
    v75 = v153;
    v152(v38, v153, v63);
    sub_1BE54AF2C();
    sub_1BE4CE5F8();
    sub_1BE54ADBC();
    sub_1BE4CE728();
    sub_1BE4C63F8(v77, v78, v79, v167);
    sub_1BE4BF11C(&qword_1EBDABE70, &qword_1BE54E1E0);
    v80 = *(v154 + 72);
    v81 = (*(v154 + 80) + 32) & ~*(v154 + 80);
    v154 = swift_allocObject();
    *(v154 + 16) = xmmword_1BE54E1A0;
    sub_1BE54C65C();
    v76(v38, v75, v63);
    sub_1BE54AF2C();
    sub_1BE4CE5F8();
    sub_1BE4CE6D0();
    sub_1BE54C68C();
    sub_1BE54C67C();
    v82 = v2[6];
    sub_1BE4C52F4(v2 + 2, v2[5]);
    v83 = sub_1BE4CE6C0(v82);
    v84(v83, v82);
    sub_1BE4CE7DC();

    sub_1BE54C67C();
    v85 = v2[6];
    sub_1BE4C52F4(v2 + 2, v2[5]);
    v86 = sub_1BE4CE6C0(v85);
    v87(v86, v85);
    sub_1BE4CE7DC();

    sub_1BE54C67C();
    sub_1BE54C6AC();
    v152(v38, v153, v166);
    sub_1BE54AF2C();
    v88 = v155;
    sub_1BE4CE5F8();
    sub_1BE54ADBC();
    v89 = v156;
    v90 = *(v157 + 32);
    v91 = v167;
    v90(v156, v161, v167);
    v92 = v159;
    v93 = v88;
    v94 = v154;
    v90(v89 + *(v159 + 20), v93, v91);
    v95 = (v89 + *(v92 + 24));
    *v95 = 0xD000000000000010;
    v95[1] = 0x80000001BE5531F0;
    sub_1BE4CD62C(v89, v94 + v81);
    sub_1BE4CE728();
    sub_1BE4C63F8(v96, v97, v98, v92);
    v99 = v94 + v81;
    v100 = v158;
    sub_1BE4CD474(v99, v158);
    v101 = v100;
    v102 = v160;
    sub_1BE4CD5C4(v101, v160, &qword_1EBDABE60, &unk_1BE54E1D0);
    if (sub_1BE4C63BC(v102, 1, v92) == 1)
    {
      sub_1BE4CD4E4(v102);
      v103 = MEMORY[0x1E69E7CC0];
    }

    else
    {
      v134 = v150;
      sub_1BE4CD62C(v102, v150);
      v103 = MEMORY[0x1E69E7CC0];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v144 = *(v103 + 16);
        v145 = sub_1BE4CE7AC();
        v103 = sub_1BE541A70(v145, v146, v147, v103);
      }

      v136 = *(v103 + 16);
      v135 = *(v103 + 24);
      if (v136 >= v135 >> 1)
      {
        v103 = sub_1BE541A70(v135 > 1, v136 + 1, 1, v103);
      }

      *(v103 + 16) = v136 + 1;
      sub_1BE4CE7CC();
      sub_1BE4CD62C(v134, v103 + v137 + *(v138 + 72) * v136);
    }

    swift_setDeallocating();
    sub_1BE52B734();
    v111 = type metadata accessor for OBKSheetData(0);
    v139 = v149;
    sub_1BE4C9B74(v149 + v111[8]);
    v140 = type metadata accessor for OBKSheetData.ButtonConfiguration(0);
    v129 = v139;
    sub_1BE4CE728();
    sub_1BE4C63F8(v141, v142, v143, v140);
    sub_1BE4C63F8(v139 + v111[9], 1, 1, v140);
    v90(v139, v163, v167);
    result = sub_1BE4CD5C4(v164, v139 + v111[5], &qword_1EBDABE68, &qword_1BE54E470);
  }

  else
  {
    sub_1BE54C68C();
    sub_1BE54C67C();
    v104 = v45;
    v105 = v1[6];
    sub_1BE4C52F4(v1 + 2, v1[5]);
    v106 = sub_1BE4CE6C0(v105);
    v107(v106, v105);
    sub_1BE4CE7DC();

    sub_1BE54C67C();
    sub_1BE54C6AC();
    if (qword_1EBDABA88 != -1)
    {
      sub_1BE4CE5C4();
    }

    v108 = v166;
    v109 = sub_1BE4C52BC(v166, qword_1EBDB0C08);
    v110 = *(v33 + 16);
    v164 = v109;
    v165 = v33 + 16;
    v163 = v110;
    v110(v38, v109, v108);
    sub_1BE54AF2C();
    sub_1BE4CE5F8();
    sub_1BE4CE6D0();
    v111 = type metadata accessor for OBKSheetData(0);
    v161 = v111[5];
    sub_1BE54C68C();
    sub_1BE4CE7BC();
    sub_1BE54C67C();
    v160 = v104;
    v112 = v2[6];
    sub_1BE4CE670(v2 + 2, v2[5]);
    v113 = sub_1BE4CE80C();
    v114(v113);
    sub_1BE4CE858();

    sub_1BE54C67C();
    v115 = v2[6];
    sub_1BE4CE670(v2 + 2, v2[5]);
    v116 = sub_1BE4CE80C();
    v117(v116);
    sub_1BE4CE858();

    sub_1BE54C67C();
    v118 = v2[6];
    sub_1BE4CE670(v2 + 2, v2[5]);
    v119 = sub_1BE4CE80C();
    v120(v119);
    sub_1BE4CE858();

    sub_1BE4CE7BC();
    sub_1BE54C67C();
    sub_1BE4CE818();
    sub_1BE4CE858();

    sub_1BE54C67C();
    sub_1BE4CE818();
    sub_1BE4CE858();

    sub_1BE54C67C();
    sub_1BE54C6AC();
    v163(v38, v164, v166);
    sub_1BE54AF2C();
    sub_1BE4CE5F8();
    sub_1BE54ADBC();
    sub_1BE4CE728();
    sub_1BE4C63F8(v121, v122, v123, v167);
    v124 = a1;
    sub_1BE4CCAFC(a1 + v111[8]);
    v125 = type metadata accessor for OBKSheetData.ButtonConfiguration(0);
    sub_1BE4CE728();
    sub_1BE4C63F8(v126, v127, v128, v125);
    sub_1BE4CCCA8(v124 + v111[9]);
    v129 = v124;
    sub_1BE4CE728();
    result = sub_1BE4C63F8(v130, v131, v132, v125);
    v103 = 0;
  }

  *(v129 + v111[6]) = v103;
  *(v129 + v111[7]) = 0;
  return result;
}

id sub_1BE4CCAFC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1BE54ADAC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BE4CCFA8(v1, v7);
  result = [objc_opt_self() sharedConnection];
  if (result)
  {
    v9 = result;
    v10 = [result isExternalIntelligenceSignInAllowed];

    if (qword_1EBDABA48 != -1)
    {
      swift_once();
    }

    v12 = qword_1EBDB0BA8;
    v11 = unk_1EBDB0BB0;
    v13 = type metadata accessor for OBKSheetData.ButtonConfiguration(0);
    v14 = (a1 + v13[7]);
    (*(v4 + 32))(a1, v7, v3);
    *(a1 + v13[5]) = v10;
    *v14 = v12;
    v14[1] = v11;
    v15 = (a1 + v13[6]);
    *v15 = sub_1BE4CE024;
    v15[1] = v1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BE4CCCA8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1BE54AF6C();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v22[0] = v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1BE54AD8C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1BE54C6BC();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = sub_1BE54C69C();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  sub_1BE54C68C();
  sub_1BE54C67C();
  v15 = *(v1 + 5);
  v16 = *(v1 + 6);
  sub_1BE4C52F4(v1 + 2, v15);
  (*(v16 + 16))(v15, v16);
  sub_1BE54C66C();

  sub_1BE54C67C();
  sub_1BE54C6AC();
  if (qword_1EBDABA88 != -1)
  {
    swift_once();
  }

  v17 = sub_1BE4C52BC(v6, qword_1EBDB0C08);
  (*(v7 + 16))(v10, v17, v6);
  sub_1BE54AF2C();
  sub_1BE54ADBC();
  v18 = type metadata accessor for OBKSheetData.ButtonConfiguration(0);
  v19 = (a1 + v18[7]);
  *(a1 + v18[5]) = 1;
  *v19 = 0;
  v19[1] = 0;
  v20 = (a1 + v18[6]);
  *v20 = sub_1BE4CE5BC;
  v20[1] = v1;
}

uint64_t sub_1BE4CCFA8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v18 = a2;
  v3 = sub_1BE54AF6C();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = sub_1BE54AD8C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1BE54C6BC();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = sub_1BE54C69C();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  sub_1BE54C68C();
  sub_1BE54C67C();
  v14 = a1[5];
  v15 = a1[6];
  sub_1BE4C52F4(a1 + 2, v14);
  (*(v15 + 16))(v14, v15);
  sub_1BE54C66C();

  sub_1BE54C67C();
  sub_1BE54C6AC();
  if (qword_1EBDABA88 != -1)
  {
    swift_once();
  }

  v16 = sub_1BE4C52BC(v5, qword_1EBDB0C08);
  (*(v6 + 16))(v9, v16, v5);
  sub_1BE54AF2C();
  return sub_1BE54ADBC();
}

uint64_t sub_1BE4CD260(uint64_t a1, uint64_t a2, char a3)
{

  sub_1BE4CD35C(a3);
}

uint64_t sub_1BE4CD2AC(uint64_t a1, uint64_t a2, uint64_t a3)
{

  sub_1BE4CD2F0(a3);
}

uint64_t sub_1BE4CD2F0(uint64_t a1)
{
  v3 = *(v1 + 56);
  swift_unownedRetainStrong();
  v5 = a1;
  v6 = 0u;
  v7 = 0u;
  v8 = 2;
  sub_1BE4DC120(&v5);

  return sub_1BE4C6AB4(&v5);
}

uint64_t sub_1BE4CD35C(char a1)
{
  v3 = *(v1 + 56);
  swift_unownedRetainStrong();
  sub_1BE4DBCF0(a1, (v1 + 16));
}

uint64_t sub_1BE4CD3BC()
{
  v1 = *(v0 + 56);
  swift_unownedRetainStrong();
  sub_1BE4C6918(v0 + 16, v3);
  v3[40] = 0;
  sub_1BE4DC120(v3);

  return sub_1BE4C6AB4(v3);
}

uint64_t sub_1BE4CD474(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BE4BF11C(&qword_1EBDABE60, &unk_1BE54E1D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BE4CD4E4(uint64_t a1)
{
  v2 = sub_1BE4BF11C(&qword_1EBDABE60, &unk_1BE54E1D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BE4CD58C(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1BE4CD5C4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_1BE4BF11C(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_1BE4CD62C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OBKSheetData.BulletPoint(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t *sub_1BE4CD6B0(uint64_t a1, uint64_t a2)
{
  v14[1] = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 32);
  v5 = v4 & 0x3F;
  v6 = ((1 << v4) + 63) >> 6;

  if (v5 <= 0xD || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    MEMORY[0x1EEE9AC00](isStackAllocationSafe);
    v8 = (v14 - ((8 * v6 + 15) & 0x3FFFFFFFFFFFFFF0));
    sub_1BE530F88(0, v6, v8);
    sub_1BE4CD908(v8, v6, a2, a1);
    v10 = v9;
  }

  else
  {
    v13 = swift_slowAlloc();

    v10 = sub_1BE4CD878(v13, v6, a2, a1);

    MEMORY[0x1BFB48AC0](v13, -1, -1);
  }

  v11 = *MEMORY[0x1E69E9840];
  return v10;
}

unint64_t *sub_1BE4CD878(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    sub_1BE4CD908(v7, a2, a3, a4);
    v9 = v8;

    return v9;
  }

  return result;
}

void sub_1BE4CD908(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) >= *(a3 + 16))
  {
LABEL_34:
    v59 = 0;
    v28 = 0;
    v29 = v5 + 56;
    v30 = 1 << *(v5 + 32);
    if (v30 < 64)
    {
      v31 = ~(-1 << v30);
    }

    else
    {
      v31 = -1;
    }

    v32 = v31 & *(v5 + 56);
    v53 = (v30 + 63) >> 6;
    v33 = v4 + 56;
LABEL_38:
    while (v32)
    {
      v34 = __clz(__rbit64(v32));
      v32 &= v32 - 1;
LABEL_45:
      v61 = v34 | (v28 << 6);
      v37 = *(*(v5 + 48) + v61);
      v38 = *(v4 + 40);
      sub_1BE54CD8C();
      sub_1BE54C77C();

      v39 = sub_1BE54CDAC();
      v40 = -1 << *(v4 + 32);
      v41 = v39 & ~v40;
      if ((*(v33 + ((v41 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v41))
      {
        v57 = v32;
        v42 = ~v40;
        v43 = v37;
        while (1)
        {
          v44 = 0xEF6E6F6974617267;
          v45 = 0x65746E4969726973;
          switch(*(*(v4 + 48) + v41))
          {
            case 1:
              v45 = 0xD000000000000016;
              v44 = 0x80000001BE552A90;
              break;
            case 2:
              v45 = 0xD000000000000013;
              v44 = 0x80000001BE552AB0;
              break;
            case 3:
              v45 = 0xD000000000000018;
              v44 = 0x80000001BE552AD0;
              break;
            default:
              break;
          }

          v46 = 0x65746E4969726973;
          v47 = 0xEF6E6F6974617267;
          switch(v43)
          {
            case 1:
              v46 = 0xD000000000000016;
              v47 = 0x80000001BE552A90;
              break;
            case 2:
              v46 = 0xD000000000000013;
              v47 = 0x80000001BE552AB0;
              break;
            case 3:
              v46 = 0xD000000000000018;
              v47 = 0x80000001BE552AD0;
              break;
            default:
              break;
          }

          if (v45 == v46 && v44 == v47)
          {
            break;
          }

          v49 = sub_1BE54CCDC();

          if (v49)
          {
            goto LABEL_63;
          }

          v41 = (v41 + 1) & v42;
          v4 = a4;
          if (((*(v33 + ((v41 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v41) & 1) == 0)
          {
            v5 = a3;
            v32 = v57;
            goto LABEL_38;
          }
        }

LABEL_63:
        v32 = v57;
        *(a1 + ((v61 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v61;
        v50 = __OFADD__(v59++, 1);
        v5 = a3;
        v4 = a4;
        if (v50)
        {
          __break(1u);
LABEL_66:
          v6 = v59;
          goto LABEL_67;
        }
      }
    }

    v35 = v28;
    while (1)
    {
      v28 = v35 + 1;
      if (__OFADD__(v35, 1))
      {
        break;
      }

      if (v28 >= v53)
      {
        goto LABEL_66;
      }

      v36 = *(v29 + 8 * v28);
      ++v35;
      if (v36)
      {
        v34 = __clz(__rbit64(v36));
        v32 = (v36 - 1) & v36;
        goto LABEL_45;
      }
    }
  }

  else
  {
    v6 = 0;
    v7 = 0;
    v52 = a4 + 56;
    v8 = 1 << *(a4 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v56 = v9 & *(a4 + 56);
    v51 = (v8 + 63) >> 6;
    v60 = a3 + 56;
LABEL_6:
    while (v56)
    {
      v10 = __clz(__rbit64(v56));
      v56 &= v56 - 1;
LABEL_13:
      v13 = *(*(v4 + 48) + (v10 | (v7 << 6)));
      v14 = *(v5 + 40);
      sub_1BE54CD8C();
      sub_1BE54C77C();

      v15 = sub_1BE54CDAC();
      v16 = -1 << *(v5 + 32);
      v17 = v15 & ~v16;
      v18 = v17 >> 6;
      v19 = 1 << v17;
      if (((1 << v17) & *(v60 + 8 * (v17 >> 6))) != 0)
      {
        v58 = v6;
        v20 = ~v16;
        v21 = v13;
        while (1)
        {
          v22 = 0xEF6E6F6974617267;
          v23 = 0x65746E4969726973;
          switch(*(*(v5 + 48) + v17))
          {
            case 1:
              v23 = 0xD000000000000016;
              v22 = 0x80000001BE552A90;
              break;
            case 2:
              v23 = 0xD000000000000013;
              v22 = 0x80000001BE552AB0;
              break;
            case 3:
              v23 = 0xD000000000000018;
              v22 = 0x80000001BE552AD0;
              break;
            default:
              break;
          }

          v24 = 0x65746E4969726973;
          v25 = 0xEF6E6F6974617267;
          switch(v21)
          {
            case 1:
              v24 = 0xD000000000000016;
              v25 = 0x80000001BE552A90;
              break;
            case 2:
              v24 = 0xD000000000000013;
              v25 = 0x80000001BE552AB0;
              break;
            case 3:
              v24 = 0xD000000000000018;
              v25 = 0x80000001BE552AD0;
              break;
            default:
              break;
          }

          if (v23 == v24 && v22 == v25)
          {
            break;
          }

          v27 = sub_1BE54CCDC();

          if (v27)
          {
            goto LABEL_31;
          }

          v17 = (v17 + 1) & v20;
          v18 = v17 >> 6;
          v19 = 1 << v17;
          v5 = a3;
          if ((*(v60 + 8 * (v17 >> 6)) & (1 << v17)) == 0)
          {
            v4 = a4;
            v6 = v58;
            goto LABEL_6;
          }
        }

LABEL_31:
        a1[v18] |= v19;
        v6 = v58 + 1;
        v5 = a3;
        v4 = a4;
        if (__OFADD__(v58, 1))
        {
          __break(1u);
          goto LABEL_34;
        }
      }
    }

    v11 = v7;
    while (1)
    {
      v7 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v7 >= v51)
      {
LABEL_67:

        sub_1BE531E18(a1, a2, v6, v5);
        return;
      }

      v12 = *(v52 + 8 * v7);
      ++v11;
      if (v12)
      {
        v10 = __clz(__rbit64(v12));
        v56 = (v12 - 1) & v12;
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1BE4CE05C()
{
  result = sub_1BE54ADAC();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1BE4CE100()
{
  sub_1BE54ADAC();
  if (v0 <= 0x3F)
  {
    sub_1BE4CE278(319, &qword_1EBDABEA0, MEMORY[0x1E6968E10]);
    if (v1 <= 0x3F)
    {
      sub_1BE4CE214();
      if (v2 <= 0x3F)
      {
        sub_1BE4CE518(319, &qword_1EBDABEB8);
        if (v3 <= 0x3F)
        {
          sub_1BE4CE278(319, &qword_1EBDABEC0, type metadata accessor for OBKSheetData.ButtonConfiguration);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1BE4CE214()
{
  if (!qword_1EBDABEA8)
  {
    sub_1BE4C5948(&qword_1EBDABEB0, "̎");
    v0 = sub_1BE54C9EC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBDABEA8);
    }
  }
}

void sub_1BE4CE278(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1BE54C9EC();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for OBKSheetData.LegalLink(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 2;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v5 = v6 - 2;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for OBKSheetData.LegalLink(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

void sub_1BE4CE464()
{
  sub_1BE54ADAC();
  if (v0 <= 0x3F)
  {
    sub_1BE4C65D8();
    if (v1 <= 0x3F)
    {
      sub_1BE4CE518(319, &qword_1EDDD6558);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1BE4CE518(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_1BE54C9EC();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

unint64_t sub_1BE4CE568()
{
  result = qword_1EBDABED8;
  if (!qword_1EBDABED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDABED8);
  }

  return result;
}

uint64_t sub_1BE4CE5C4()
{

  return swift_once();
}

uint64_t sub_1BE4CE60C()
{

  return sub_1BE54ADBC();
}

uint64_t sub_1BE4CE63C()
{
  v1 = v0[5];
  v2 = v0[6];
  sub_1BE4C52F4(v0 + 2, v1);
  v3 = *(v2 + 16);
  return v1;
}

void *sub_1BE4CE670(void *a1, uint64_t a2)
{
  result = sub_1BE4C52F4(a1, a2);
  v4 = *(v2 + 16);
  return result;
}

uint64_t sub_1BE4CE6D0()
{

  return sub_1BE54ADBC();
}

uint64_t sub_1BE4CE734()
{

  return sub_1BE54ADAC();
}

uint64_t sub_1BE4CE7DC()
{

  return sub_1BE54C66C();
}

uint64_t sub_1BE4CE7F4()
{
  v1 = *(v0 - 192);
  result = *(v0 - 200);
  v4 = *(v0 - 176);
  v3 = *(v0 - 168);
  v5 = *(v0 - 136);
  return result;
}

uint64_t sub_1BE4CE818()
{
  v1 = v0[6];
  sub_1BE4C52F4(v0 + 2, v0[5]);

  return LLMProvider.localizedAttributionDisplayName()()._countAndFlagsBits;
}

uint64_t sub_1BE4CE858()
{

  return sub_1BE54C66C();
}

uint64_t sub_1BE4CE8A4()
{

  return sub_1BE54ADAC();
}

uint64_t sub_1BE4CE918(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BE4D01DC();

  return MEMORY[0x1EEDDB778](a1, a2, a3, v6);
}

uint64_t sub_1BE4CE97C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BE4D01DC();

  return MEMORY[0x1EEDDB740](a1, a2, a3, v6);
}

void sub_1BE4CE9E0()
{
  sub_1BE4D01DC();
  sub_1BE54BDDC();
  __break(1u);
}

uint64_t sub_1BE4CEA08(__int128 *a1, uint64_t a2, char a3, char a4, char a5)
{
  sub_1BE4BF094(a1, v5 + 16);
  *(v5 + 56) = a2;
  *(v5 + 64) = a3;
  *(v5 + 65) = a4;
  *(v5 + 66) = a5;
  swift_unownedRetain();

  return v5;
}

id sub_1BE4CEA6C(uint64_t a1)
{
  v3 = sub_1BE4BF11C(&qword_1EBDABE88, "\u070E");
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  sub_1BE4CE5E4();
  v79 = v5;
  MEMORY[0x1EEE9AC00](v6);
  v77 = &v71 - v7;
  v78 = type metadata accessor for OBKSheetData.ButtonConfiguration(0);
  v8 = sub_1BE4C7470(v78);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  sub_1BE4CE5E4();
  v73 = v11;
  MEMORY[0x1EEE9AC00](v12);
  v72 = &v71 - v13;
  v14 = type metadata accessor for OBKSheetData.BulletPoint(0);
  v15 = sub_1BE4C7500(v14);
  v81 = v16;
  v82 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v15);
  sub_1BE4C757C();
  v21 = v20 - v19;
  v22 = sub_1BE54ADAC();
  v23 = sub_1BE4C7500(v22);
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v23);
  sub_1BE4C757C();
  v28 = v27 - v26;
  v30 = *(v29 + 16);
  v76 = v31;
  v32 = v30;
  (v30)(v28, a1);
  v33 = sub_1BE54C72C();
  v83 = v34;
  v84 = v33;
  v35 = sub_1BE4CF020(a1);
  v37 = v36;
  v38 = v1[5];
  v39 = v1[6];
  v80 = v1;
  sub_1BE4C52F4(v1 + 2, v38);
  v40 = (*(v39 + 88))(v38, v39);
  v41 = objc_allocWithZone(MEMORY[0x1E69B7D70]);
  v42 = sub_1BE4D0A9C(v84, v83, v35, v37, v40);
  result = [v42 view];
  if (result)
  {
    v44 = result;
    v45 = [objc_opt_self() systemBlueColor];
    [v44 setTintColor_];

    v74 = type metadata accessor for OBKSheetData(0);
    v75 = a1;
    v46 = *(a1 + *(v74 + 24));
    v84 = v42;
    v47 = v76;
    if (v46)
    {
      v48 = *(v46 + 16);
      if (v48)
      {
        v49 = *(v82 + 20);
        v82 = v21 + *(v82 + 24);
        v83 = v49;
        v50 = v46 + ((*(v81 + 80) + 32) & ~*(v81 + 80));
        v81 = *(v81 + 72);
        do
        {
          sub_1BE4D0D88(v50, v21, type metadata accessor for OBKSheetData.BulletPoint);
          v32(v28, v21, v47);
          sub_1BE54C72C();
          v51 = sub_1BE54C6DC();

          v32(v28, v21 + v83, v47);
          sub_1BE54C72C();
          v52 = v32;
          v53 = v47;
          v54 = sub_1BE54C6DC();

          v55 = *v82;
          v56 = *(v82 + 8);
          v57 = sub_1BE54C6DC();
          sub_1BE4D0BA0(v21, type metadata accessor for OBKSheetData.BulletPoint);
          [v84 addBulletedListItemWithTitle:v51 description:v54 symbolName:v57];

          v47 = v53;
          v32 = v52;

          v50 += v81;
          --v48;
        }

        while (v48);
      }
    }

    v59 = v74;
    v58 = v75;
    v60 = *(v75 + *(v74 + 28));
    v61 = v77;
    v62 = v78;
    v63 = v84;
    if (v60 != 2)
    {
      if (v60)
      {
        sub_1BE4CF348(v84);
      }

      else
      {
        sub_1BE4CF214(v84);
      }
    }

    sub_1BE4C6EFC(v58 + *(v59 + 32), v61, &qword_1EBDABE88, "\u070E");
    if (sub_1BE4C63BC(v61, 1, v62) == 1)
    {
      sub_1BE4D0E58(v61, &qword_1EBDABE88, "\u070E");
    }

    else
    {
      v64 = v72;
      sub_1BE4D0B3C(v61, v72);
      v65 = [objc_opt_self() boldButton];
      sub_1BE4CFEE0(v65, v64, v63);

      sub_1BE4D0EB4();
      sub_1BE4D0BA0(v64, v66);
    }

    v67 = v79;
    sub_1BE4C6EFC(v58 + *(v59 + 36), v79, &qword_1EBDABE88, "\u070E");
    if (sub_1BE4C63BC(v67, 1, v62) == 1)
    {
      sub_1BE4D0E58(v67, &qword_1EBDABE88, "\u070E");
    }

    else
    {
      v68 = v73;
      sub_1BE4D0B3C(v67, v73);
      v69 = [objc_opt_self() linkButton];
      sub_1BE4CFEE0(v69, v68, v63);

      sub_1BE4D0EB4();
      sub_1BE4D0BA0(v68, v70);
    }

    return v63;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BE4CF020(uint64_t a1)
{
  v2 = sub_1BE4BF11C(&qword_1EBDABE68, &qword_1BE54E470);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v17 - v4;
  v6 = sub_1BE54ADAC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v17 - v12;
  v14 = type metadata accessor for OBKSheetData(0);
  sub_1BE4C6EFC(a1 + *(v14 + 20), v5, &qword_1EBDABE68, &qword_1BE54E470);
  if (sub_1BE4C63BC(v5, 1, v6) == 1)
  {
    sub_1BE4D0E58(v5, &qword_1EBDABE68, &qword_1BE54E470);
    return 0;
  }

  else
  {
    (*(v7 + 32))(v13, v5, v6);
    (*(v7 + 16))(v11, v13, v6);
    v15 = sub_1BE54C72C();
    (*(v7 + 8))(v13, v6);
  }

  return v15;
}

void sub_1BE4CF214(void *a1)
{
  v3 = [a1 buttonTray];
  v4 = sub_1BE54C80C();
  [v3 setPrivacyLinkForBundles_];

  v5 = [a1 buttonTray];
  v7[4] = sub_1BE4D0BF8;
  v8 = v1;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 1107296256;
  v7[2] = sub_1BE4D0388;
  v7[3] = &unk_1F3CCB440;
  v6 = _Block_copy(v7);

  [v5 setPrivacyLinkCallback_];
  _Block_release(v6);
}

void sub_1BE4CF348(void *a1)
{
  v85 = a1;
  v84 = type metadata accessor for CaptionWithModalLink();
  v2 = *(*(v84 - 8) + 64);
  MEMORY[0x1EEE9AC00](v84);
  v86 = (v78 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = sub_1BE54AF6C();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v83 = v78 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = sub_1BE54AD8C();
  v97 = *(v101 - 8);
  v7 = *(v97 + 64);
  MEMORY[0x1EEE9AC00](v101);
  v82 = v78 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1BE54C6BC();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v81 = v78 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1BE54C69C();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = sub_1BE54ADAC();
  v93 = *(v14 - 8);
  v94 = v14;
  v15 = *(v93 + 64);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v92 = v78 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v91 = v78 - v19;
  MEMORY[0x1EEE9AC00](v18);
  v90 = v78 - v20;
  v21 = sub_1BE54AE3C();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  v24 = MEMORY[0x1EEE9AC00](v21);
  v79 = v78 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = v25;
  MEMORY[0x1EEE9AC00](v24);
  v100 = v78 - v26;
  v27 = sub_1BE4BF11C(&qword_1EBDABEE8, &unk_1BE54F050);
  v28 = *(*(v27 - 8) + 64);
  v29 = MEMORY[0x1EEE9AC00](v27 - 8);
  v31 = v78 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x1EEE9AC00](v29);
  v34 = v78 - v33;
  MEMORY[0x1EEE9AC00](v32);
  v36 = v78 - v35;
  v38 = v1[5];
  v37 = v1[6];
  v95 = v1;
  sub_1BE4C52F4(v1 + 2, v38);
  (*(v37 + 176))(v38, v37);
  v39 = sub_1BE4C63BC(v36, 1, v21);
  v99 = v22;
  if (v39 == 1)
  {
    sub_1BE4D0E58(v36, &qword_1EBDABEE8, &unk_1BE54F050);
    v40 = 0;
    v89 = 0xE000000000000000;
  }

  else
  {
    v40 = sub_1BE54ADEC();
    v89 = v41;
    (*(v22 + 8))(v36, v21);
  }

  v42 = v95;
  v43 = v95[5];
  v44 = v95[6];
  sub_1BE4C52F4(v95 + 2, v43);
  (*(v44 + 176))(v43, v44);
  v45 = sub_1BE4C63BC(v34, 1, v21);
  v78[1] = v40;
  if (v45 == 1)
  {
    sub_1BE54AE1C();
    if (sub_1BE4C63BC(v31, 1, v21) == 1)
    {
      goto LABEL_16;
    }

    (*(v99 + 32))(v100, v31, v21);
    if (sub_1BE4C63BC(v34, 1, v21) != 1)
    {
      sub_1BE4D0E58(v34, &qword_1EBDABEE8, &unk_1BE54F050);
    }
  }

  else
  {
    (*(v99 + 32))(v100, v34, v21);
  }

  v88 = v21;
  v46 = v42[6];
  sub_1BE4C52F4(v42 + 2, v42[5]);
  v47 = LLMProvider.localizedTermsTitle()();
  sub_1BE54C68C();
  sub_1BE54C67C();
  countAndFlagsBits = v47._countAndFlagsBits;
  object = v47._object;
  sub_1BE54C66C();
  sub_1BE54C67C();
  sub_1BE54C6AC();
  v48 = v42;
  if (qword_1EBDABA88 != -1)
  {
    swift_once();
  }

  v49 = v101;
  v50 = sub_1BE4C52BC(v101, qword_1EBDB0C08);
  v97 = *(v97 + 16);
  v98 = v50;
  v51 = v82;
  (v97)(v82, v50, v49);
  sub_1BE54AF2C();
  sub_1BE54ADBC();
  sub_1BE54C68C();
  v78[0] = "s of use link title";
  sub_1BE54C67C();
  v52 = v42[5];
  v53 = v42[6];
  sub_1BE4C52F4(v42 + 2, v52);
  (*(v53 + 16))(v52, v53);
  sub_1BE54C66C();

  sub_1BE54C67C();
  sub_1BE54C66C();
  sub_1BE54C67C();
  sub_1BE54C6AC();
  (v97)(v51, v98, v101);
  sub_1BE54AF2C();
  sub_1BE54ADBC();
  sub_1BE54C68C();
  sub_1BE54C67C();
  v54 = v42[5];
  v55 = v42[6];
  sub_1BE4C52F4(v42 + 2, v54);
  (*(v55 + 16))(v54, v55);
  sub_1BE54C66C();

  sub_1BE54C67C();
  sub_1BE54C66C();
  sub_1BE54C67C();
  sub_1BE54C66C();
  sub_1BE54C67C();
  sub_1BE54C6AC();
  (v97)(v51, v98, v101);
  sub_1BE54AF2C();
  v56 = v92;
  sub_1BE54ADBC();
  v57 = v84;
  v58 = v86;
  (*(v93 + 16))(v86 + *(v84 + 20), v56, v94);
  v59 = v99;
  v60 = v79;
  v61 = v88;
  (*(v99 + 16))(v79, v100, v88);
  v62 = (*(v59 + 80) + 16) & ~*(v59 + 80);
  v63 = (v80 + v62 + 7) & 0xFFFFFFFFFFFFFFF8;
  v64 = swift_allocObject();
  (*(v59 + 32))(v64 + v62, v60, v61);
  v65 = v85;
  *(v64 + v63) = v85;
  *(v64 + ((v63 + 15) & 0xFFFFFFFFFFFFFFF8)) = v48;
  *v58 = swift_getKeyPath();
  sub_1BE4BF11C(&qword_1EBDABEF0, &qword_1BE54E460);
  swift_storeEnumTagMultiPayload();
  v66 = (v58 + *(v57 + 24));
  *v66 = sub_1BE4D0C18;
  v66[1] = v64;
  v67 = v58 + *(v57 + 28);
  v102 = 0;
  v68 = v65;

  sub_1BE54C23C();
  v69 = v104;
  *v67 = v103;
  *(v67 + 1) = v69;
  v70 = objc_allocWithZone(sub_1BE4BF11C(&qword_1EBDABEF8, &qword_1BE54E468));
  v71 = sub_1BE54BB2C();
  v72 = [v71 view];
  if (v72)
  {
    v73 = v72;
    v74 = [objc_opt_self() clearColor];
    [v73 setBackgroundColor_];

    v75 = [v71 view];
    if (v75)
    {

      sub_1BE4D06D0(v75, v68);

      v76 = *(v93 + 8);
      v77 = v94;
      v76(v92, v94);
      v76(v91, v77);
      v76(v90, v77);
      (*(v59 + 8))(v100, v88);
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
LABEL_16:
  __break(1u);
}

void sub_1BE4CFEE0(void *a1, uint64_t a2, void *a3)
{
  v6 = type metadata accessor for OBKSheetData.ButtonConfiguration(0);
  v7 = v6 - 8;
  v8 = *(v6 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1BE54ADAC();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11);
  (*(v14 + 16))(&v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), a2);
  v15 = sub_1BE54C72C();
  sub_1BE4D0CD4(v15, v16, 0, a1);
  sub_1BE4D0D48(0, &qword_1EBDABF10, 0x1E69DC628);
  sub_1BE4D0D88(a2, v10, type metadata accessor for OBKSheetData.ButtonConfiguration);
  v17 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v18 = swift_allocObject();
  sub_1BE4D0B3C(v10, v18 + v17);
  v19 = sub_1BE54C9DC();
  [a1 addAction:v19 forControlEvents:64];

  [a1 setEnabled_];
  v20 = [a3 buttonTray];
  [v20 addButton_];
}

uint64_t sub_1BE4D0158()
{
  sub_1BE4C58A8((v0 + 16));
  v1 = *(v0 + 56);
  swift_unownedRelease();

  return MEMORY[0x1EEE6BDC0](v0, 67, 7);
}

unint64_t sub_1BE4D01DC()
{
  result = qword_1EBDABEE0;
  if (!qword_1EBDABEE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDABEE0);
  }

  return result;
}

uint64_t sub_1BE4D0230(uint64_t a1)
{
  v1 = *(a1 + 56);
  swift_unownedRetainStrong();
  v2 = sub_1BE4DB5F0();

  sub_1BE4D98B8(v2);
  v4 = v3;
  v6 = v5;

  if (v4)
  {

    type metadata accessor for GenerativePartnerServiceAnalytics();
    sub_1BE4BF11C(&qword_1EBDABD90, &unk_1BE54E420);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1BE54DC10;
    *(inited + 32) = 1802398060;
    *(inited + 40) = 0xE400000000000000;
    *(inited + 48) = sub_1BE54C6DC();
    *(inited + 56) = 0x6567617473;
    *(inited + 64) = 0xE500000000000000;
    sub_1BE4D9918(v6);
    v9 = sub_1BE54C6DC();

    *(inited + 72) = v9;
    sub_1BE4D0D48(0, &qword_1EBDABD98, 0x1E69E58C0);
    v10 = sub_1BE54C61C();
    sub_1BE52D9C4(2, v10);
  }

  return result;
}

uint64_t sub_1BE4D0388(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

void sub_1BE4D03CC(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = sub_1BE54AE3C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v24[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1BE54D74C(v11);
  sub_1BE4D0D48(0, v13, (v12 + 2104));
  (*(v7 + 16))(v10, a1, v6);
  v14 = sub_1BE4D0634(v10);
  [v14 setModalPresentationStyle_];
  [a2 presentViewController:v14 animated:1 completion:0];
  v15 = *(a3 + 56);
  swift_unownedRetainStrong();
  v16 = sub_1BE4DB5F0();

  sub_1BE4D98B8(v16);
  v18 = v17;
  v20 = v19;

  if (v18)
  {

    type metadata accessor for GenerativePartnerServiceAnalytics();
    sub_1BE4BF11C(&qword_1EBDABD90, &unk_1BE54E420);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1BE54DC10;
    *(inited + 32) = 1802398060;
    *(inited + 40) = 0xE400000000000000;
    *(inited + 48) = sub_1BE54C6DC();
    *(inited + 56) = 0x6567617473;
    *(inited + 64) = 0xE500000000000000;
    sub_1BE4D9918(v20);
    v22 = sub_1BE54C6DC();

    *(inited + 72) = v22;
    sub_1BE4D0D48(0, &qword_1EBDABD98, 0x1E69E58C0);
    v23 = sub_1BE54C61C();
    sub_1BE52D9C4(2, v23);
  }
}

id sub_1BE4D0634(uint64_t a1)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = sub_1BE54ADFC();
  v4 = [v2 initWithURL_];

  v5 = sub_1BE54AE3C();
  (*(*(v5 - 8) + 8))(a1, v5);
  return v4;
}

void sub_1BE4D06D0(uint64_t a1, id a2)
{
  v3 = [a2 buttonTray];
  v4 = [v3 subviews];

  sub_1BE4D0D48(0, &qword_1EBDABF00, 0x1E69DD250);
  v5 = sub_1BE54C82C();

  v6 = sub_1BE4D0CB0(v5);
  for (i = 0; v6 != i; ++i)
  {
    if ((v5 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x1BFB47FF0](i, v5);
    }

    else
    {
      if (i >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_17;
      }

      v8 = *(v5 + 8 * i + 32);
    }

    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_17:
      __break(1u);
      return;
    }

    v11 = v8;
    objc_opt_self();
    v9 = swift_dynamicCastObjCClass();
    if (v9)
    {
      v10 = v9;

      [v10 insertArrangedSubview:a1 atIndex:0];

      return;
    }
  }
}

uint64_t sub_1BE4D086C(uint64_t a1, uint64_t a2)
{
  v2 = a2 + *(type metadata accessor for OBKSheetData.ButtonConfiguration(0) + 24);
  v3 = *(v2 + 8);
  return (*v2)();
}

uint64_t sub_1BE4D08E0(uint64_t a1, void (*a2)(void), uint64_t *a3, void *a4)
{
  v7 = sub_1BE54B6DC();
  v8 = sub_1BE4C7500(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v8);
  sub_1BE4C757C();
  v15 = v14 - v13;
  a2();
  v16 = sub_1BE54B6CC();
  v18 = v17;
  result = (*(v10 + 8))(v15, v7);
  *a3 = v16;
  *a4 = v18;
  return result;
}

uint64_t sub_1BE4D09E8(uint64_t a1)
{
  v2 = sub_1BE54B70C();
  v3 = sub_1BE4C7500(v2);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  sub_1BE4C757C();
  (*(v8 + 16))(v7 - v6, a1);
  return sub_1BE54B96C();
}

id sub_1BE4D0A9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v8 = sub_1BE54C6DC();

  if (a4)
  {
    v9 = sub_1BE54C6DC();
  }

  else
  {
    v9 = 0;
  }

  v10 = [v5 initWithTitle:v8 detailText:v9 icon:a5];

  return v10;
}

uint64_t sub_1BE4D0B3C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OBKSheetData.ButtonConfiguration(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BE4D0BA0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_1BE4C7470(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1BE4D0C00(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_1BE4D0C18()
{
  v1 = *(sub_1BE54AE3C() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(v0 + v3);
  v5 = *(v0 + ((v3 + 15) & 0xFFFFFFFFFFFFFFF8));

  sub_1BE4D03CC(v0 + v2, v4, v5);
}

uint64_t sub_1BE4D0CB0(unint64_t a1)
{
  if (a1 >> 62)
  {
    return sub_1BE54CBCC();
  }

  else
  {
    return *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }
}

void sub_1BE4D0CD4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = sub_1BE54C6DC();

  [a4 setTitle:v6 forState:a3];
}

uint64_t sub_1BE4D0D48(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t sub_1BE4D0D88(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  sub_1BE4C7470(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1BE4D0DE8(uint64_t a1)
{
  v3 = *(type metadata accessor for OBKSheetData.ButtonConfiguration(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_1BE4D086C(a1, v4);
}

uint64_t sub_1BE4D0E58(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_1BE4BF11C(a2, a3);
  sub_1BE4C7470(v4);
  (*(v5 + 8))(a1);
  return a1;
}

uint64_t sub_1BE4D0F10(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BE54BBFC();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  (*(*(a2 - 8) + 16))(&v8 - v6, a1, a2);
  swift_storeEnumTagMultiPayload();
  return sub_1BE54BC0C();
}

uint64_t sub_1BE4D1008(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1BE54BBFC();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  (*(*(a3 - 8) + 16))(&v9 - v7, a1, a3);
  swift_storeEnumTagMultiPayload();
  return sub_1BE54BC0C();
}

uint64_t (*sub_1BE4D1100())()
{
  sub_1BE4D92B0();
  sub_1BE54B9FC();
  if (!v2)
  {
    return 0;
  }

  sub_1BE4D9838();
  v0 = swift_allocObject();
  *(v0 + 16) = v2;
  *(v0 + 24) = v3;
  return sub_1BE4D96CC;
}

uint64_t sub_1BE4D1184()
{
  sub_1BE4D982C();
  result = sub_1BE4D1100();
  if (result)
  {
    v3 = result;
    v4 = v2;
    sub_1BE4D9838();
    result = swift_allocObject();
    *(result + 16) = v3;
    *(result + 24) = v4;
    v5 = sub_1BE4D96E8;
  }

  else
  {
    v5 = 0;
  }

  *v0 = v5;
  v0[1] = result;
  return result;
}

uint64_t sub_1BE4D11EC(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    sub_1BE4D9838();
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = sub_1BE4D92A8;
  }

  else
  {
    v4 = 0;
    v3 = 0;
  }

  sub_1BE4BF0D8(v1);
  return sub_1BE4D1274(v4, v3);
}

uint64_t sub_1BE4D1274(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    sub_1BE4D9838();
    v4 = swift_allocObject();
    *(v4 + 16) = a1;
    *(v4 + 24) = a2;
  }

  sub_1BE4D92B0();
  return sub_1BE54BA0C();
}

uint64_t OnboardingSheetView.init(setup:contentView:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for OnboardingSheetView();
  v9 = (a4 + v8[10]);
  v10 = sub_1BE4D2128();
  *v9 = v11;
  v9[1] = v10;
  v12 = (a4 + v8[11]);
  v13 = sub_1BE4D2128();
  *v12 = v14;
  v12[1] = v13;
  v15 = a4 + v8[12];
  *v15 = swift_getKeyPath();
  *(v15 + 8) = 0;
  *(v15 + 16) = 0;
  *(a4 + v8[13]) = 0x407C200000000000;
  result = sub_1BE4D224C(a1, a4, type metadata accessor for OnboardingSheetSetup);
  v17 = (a4 + v8[9]);
  *v17 = a2;
  v17[1] = a3;
  return result;
}

uint64_t sub_1BE4D13E8(uint64_t TupleTypeMetadata, uint64_t a2, uint64_t a3)
{
  v5 = TupleTypeMetadata;
  if (a2 == 1)
  {
    v6 = *(a3 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    MEMORY[0x1EEE9AC00](TupleTypeMetadata);
    sub_1BE4C757C();
    v9 = v8 - v7;
    for (i = 0; a2 != i; ++i)
    {
      *(v9 + 8 * i) = *((a3 & 0xFFFFFFFFFFFFFFFELL) + 8 * i);
    }

    sub_1BE4D97C8();
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v6 = TupleTypeMetadata;
  }

  v11 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata);
  sub_1BE4C757C();
  v14 = v13 - v12;
  if (a2)
  {
    v15 = (a3 & 0xFFFFFFFFFFFFFFFELL);
    v16 = (v6 + 32);
    v17 = a2;
    do
    {
      if (a2 == 1)
      {
        v18 = 0;
      }

      else
      {
        v18 = *v16;
      }

      v20 = *v15++;
      v19 = v20;
      v21 = *v5++;
      (*(*(v19 - 8) + 16))(v14 + v18, v21);
      v16 += 4;
      --v17;
    }

    while (v17);
  }

  return sub_1BE54C3BC();
}

uint64_t OnboardingSheetSetup.SheetStyle.hashValue.getter()
{
  v1 = *v0;
  sub_1BE54CD8C();
  MEMORY[0x1BFB482A0](v1);
  return sub_1BE54CDAC();
}

uint64_t OnboardingSheetSetup.icon.setter(uint64_t a1)
{
  v3 = *(v1 + 8);

  *(v1 + 8) = a1;
  return result;
}

uint64_t OnboardingSheetSetup.title.getter()
{
  v2 = *(sub_1BE4D9868() + 24);
  v3 = sub_1BE54ADAC();
  v4 = sub_1BE4C7470(v3);
  v6 = *(v5 + 16);

  return v6(v0, v1 + v2, v4);
}

uint64_t OnboardingSheetSetup.title.setter()
{
  v2 = sub_1BE4D97A4();
  v3 = *(type metadata accessor for OnboardingSheetSetup(v2) + 24);
  v4 = sub_1BE54ADAC();
  sub_1BE4C7470(v4);
  v6 = *(v5 + 40);

  return v6(v1 + v3, v0);
}

uint64_t OnboardingSheetSetup.title.modify()
{
  v0 = sub_1BE4D97A4();
  v1 = *(type metadata accessor for OnboardingSheetSetup(v0) + 24);
  return sub_1BE4D9850();
}

uint64_t OnboardingSheetSetup.detailText.setter()
{
  v0 = sub_1BE4D97A4();
  v1 = *(type metadata accessor for OnboardingSheetSetup(v0) + 28);
  v2 = sub_1BE4D9844();
  return sub_1BE4D2184(v2, v3, v4, v5);
}

uint64_t OnboardingSheetSetup.detailText.modify()
{
  v0 = sub_1BE4D97A4();
  v1 = *(type metadata accessor for OnboardingSheetSetup(v0) + 28);
  return sub_1BE4D9850();
}

uint64_t OnboardingSheetSetup.primaryButton.setter()
{
  v0 = sub_1BE4D97A4();
  v1 = *(type metadata accessor for OnboardingSheetSetup(v0) + 32);
  v2 = sub_1BE4D9844();
  return sub_1BE4D2184(v2, v3, v4, v5);
}

uint64_t OnboardingSheetSetup.primaryButton.modify()
{
  v0 = sub_1BE4D97A4();
  v1 = *(type metadata accessor for OnboardingSheetSetup(v0) + 32);
  return sub_1BE4D9850();
}

uint64_t OnboardingSheetSetup.secondaryButton.setter()
{
  v0 = sub_1BE4D97A4();
  v1 = *(type metadata accessor for OnboardingSheetSetup(v0) + 36);
  v2 = sub_1BE4D9844();
  return sub_1BE4D2184(v2, v3, v4, v5);
}

uint64_t OnboardingSheetSetup.secondaryButton.modify()
{
  v0 = sub_1BE4D97A4();
  v1 = *(type metadata accessor for OnboardingSheetSetup(v0) + 36);
  return sub_1BE4D9850();
}

BOOL static OnboardingSheetSetup.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v4 = type metadata accessor for OnboardingSheetSetup.ButtonSetup(0);
  v5 = sub_1BE4C7470(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  sub_1BE4C757C();
  v10 = v9 - v8;
  v11 = sub_1BE4BF11C(&qword_1EBDABF18, &qword_1BE54E4C0);
  v12 = sub_1BE4C7570(v11);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  sub_1BE4D981C();
  v81 = v15 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v83 = &v78 - v18;
  v84 = sub_1BE4BF11C(&qword_1EBDABF20, &qword_1BE54E4C8);
  v19 = sub_1BE4C7470(v84);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19);
  sub_1BE4D981C();
  v82 = v22 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v78 - v25;
  v27 = sub_1BE54ADAC();
  v28 = sub_1BE4C7500(v27);
  v85 = v29;
  v31 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v28);
  sub_1BE4C757C();
  v34 = v33 - v32;
  v35 = sub_1BE4BF11C(&qword_1EBDABE68, &qword_1BE54E470);
  v36 = sub_1BE4C7570(v35);
  v38 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v36);
  v40 = &v78 - v39;
  v41 = sub_1BE4BF11C(&qword_1EBDABF28, &qword_1BE54E4D0);
  v42 = sub_1BE4C7470(v41);
  v44 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v42);
  v46 = &v78 - v45;
  if (*a1 != *a2)
  {
    return 0;
  }

  v79 = v10;
  v80 = v4;
  v48 = *(a2 + 1);
  if (*(a1 + 1))
  {
    if (!v48)
    {
      return 0;
    }

    v49 = *(a2 + 1);

    v50 = sub_1BE54C21C();

    if ((v50 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v48)
  {
    return 0;
  }

  v51 = type metadata accessor for OnboardingSheetSetup(0);
  if ((MEMORY[0x1BFB462A0](&a1[*(v51 + 24)], &a2[*(v51 + 24)]) & 1) == 0)
  {
    return 0;
  }

  v78 = v51;
  v52 = *(v51 + 28);
  v53 = *(v41 + 48);
  sub_1BE4D9250(&a1[v52], v46, &qword_1EBDABE68, &qword_1BE54E470);
  sub_1BE4D9250(&a2[v52], &v46[v53], &qword_1EBDABE68, &qword_1BE54E470);
  sub_1BE4D9898(v46);
  if (v54)
  {
    sub_1BE4D9898(&v46[v53]);
    if (v54)
    {
      sub_1BE4D0E58(v46, &qword_1EBDABE68, &qword_1BE54E470);
      goto LABEL_20;
    }

LABEL_18:
    v55 = &qword_1EBDABF28;
    v56 = &qword_1BE54E4D0;
    v57 = v46;
LABEL_39:
    sub_1BE4D0E58(v57, v55, v56);
    return 0;
  }

  sub_1BE4D9250(v46, v40, &qword_1EBDABE68, &qword_1BE54E470);
  sub_1BE4D9898(&v46[v53]);
  if (v54)
  {
    (*(v85 + 8))(v40, v27);
    goto LABEL_18;
  }

  v58 = v85;
  (*(v85 + 32))(v34, &v46[v53], v27);
  sub_1BE4D83D4(&qword_1EBDABF30, MEMORY[0x1E6968E10]);
  v59 = sub_1BE54C64C();
  v60 = *(v58 + 8);
  v61 = sub_1BE4D9800();
  v60(v61);
  (v60)(v40, v27);
  sub_1BE4D0E58(v46, &qword_1EBDABE68, &qword_1BE54E470);
  if ((v59 & 1) == 0)
  {
    return 0;
  }

LABEL_20:
  v62 = *(v78 + 32);
  v63 = v84;
  v64 = *(v84 + 48);
  sub_1BE4D9880(&a1[v62], v26);
  sub_1BE4D9880(&a2[v62], &v26[v64]);
  sub_1BE4D970C(v26);
  if (v54)
  {
    sub_1BE4D970C(&v26[v64]);
    v65 = v79;
    if (v54)
    {
      sub_1BE4D0E58(v26, &qword_1EBDABF18, &qword_1BE54E4C0);
      goto LABEL_30;
    }

    goto LABEL_28;
  }

  v66 = v83;
  sub_1BE4D9250(v26, v83, &qword_1EBDABF18, &qword_1BE54E4C0);
  sub_1BE4D970C(&v26[v64]);
  v65 = v79;
  if (v67)
  {
    sub_1BE4D21F0(v66);
LABEL_28:
    v55 = &qword_1EBDABF20;
    v56 = &qword_1BE54E4C8;
    v57 = v26;
    goto LABEL_39;
  }

  sub_1BE4D9774();
  sub_1BE4D224C(&v26[v64], v65, v68);
  v69 = MEMORY[0x1BFB462A0](v66, v65);
  sub_1BE4D21F0(v65);
  sub_1BE4D21F0(v66);
  sub_1BE4D0E58(v26, &qword_1EBDABF18, &qword_1BE54E4C0);
  if ((v69 & 1) == 0)
  {
    return 0;
  }

LABEL_30:
  v70 = *(v78 + 36);
  v71 = *(v63 + 48);
  v72 = &a1[v70];
  v73 = v82;
  sub_1BE4D9880(v72, v82);
  sub_1BE4D9880(&a2[v70], v73 + v71);
  sub_1BE4D970C(v73);
  if (v54)
  {
    sub_1BE4D970C(v73 + v71);
    if (v54)
    {
      sub_1BE4D0E58(v73, &qword_1EBDABF18, &qword_1BE54E4C0);
      return 1;
    }

    goto LABEL_38;
  }

  v74 = v81;
  sub_1BE4D9250(v73, v81, &qword_1EBDABF18, &qword_1BE54E4C0);
  sub_1BE4D970C(v73 + v71);
  if (v75)
  {
    sub_1BE4D21F0(v74);
LABEL_38:
    v55 = &qword_1EBDABF20;
    v56 = &qword_1BE54E4C8;
    v57 = v73;
    goto LABEL_39;
  }

  sub_1BE4D9774();
  sub_1BE4D224C(v73 + v71, v65, v76);
  v77 = MEMORY[0x1BFB462A0](v74, v65);
  sub_1BE4D21F0(v65);
  sub_1BE4D21F0(v74);
  sub_1BE4D0E58(v73, &qword_1EBDABF18, &qword_1BE54E4C0);
  return (v77 & 1) != 0;
}

double sub_1BE4D2064(uint64_t a1)
{
  v2 = (v1 + *(a1 + 40));
  v5 = *v2;
  v6 = v2[1];
  sub_1BE4BF11C(&qword_1EBDAC1A0, &qword_1BE54E9A0);
  sub_1BE54C24C();
  return v4;
}

uint64_t sub_1BE4D20C4(uint64_t a1)
{
  v2 = (v1 + *(a1 + 40));
  v4 = *v2;
  v5 = v2[1];
  sub_1BE4BF11C(&qword_1EBDAC1A0, &qword_1BE54E9A0);
  return sub_1BE54C25C();
}

uint64_t sub_1BE4D2184(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = sub_1BE4D97E0(a1, a2, a3, a4);
  sub_1BE4C7470(v5);
  v7 = *(v6 + 40);
  v8 = sub_1BE4D9800();
  v9(v8);
  return v4;
}

uint64_t sub_1BE4D21F0(uint64_t a1)
{
  v2 = type metadata accessor for OnboardingSheetSetup.ButtonSetup(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BE4D224C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  sub_1BE4C7470(v4);
  v6 = *(v5 + 32);
  v7 = sub_1BE4D9800();
  v8(v7);
  return a2;
}

double sub_1BE4D22A8(uint64_t a1)
{
  v2 = (v1 + *(a1 + 44));
  v5 = *v2;
  v6 = v2[1];
  sub_1BE4BF11C(&qword_1EBDAC1A0, &qword_1BE54E9A0);
  sub_1BE54C24C();
  return v4;
}

uint64_t sub_1BE4D2308(uint64_t a1)
{
  v2 = (v1 + *(a1 + 44));
  v4 = *v2;
  v5 = v2[1];
  sub_1BE4BF11C(&qword_1EBDAC1A0, &qword_1BE54E9A0);
  return sub_1BE54C25C();
}

uint64_t OnboardingSheetView.body.getter@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v24 = a2;
  sub_1BE4C5948(&qword_1EBDABF38, &qword_1BE54E4D8);
  v3 = *(a1 + 16);
  sub_1BE4D97C8();
  swift_getTupleTypeMetadata2();
  sub_1BE4D97D4();
  sub_1BE54C3AC();
  swift_getWitnessTable();
  sub_1BE4D9700();
  sub_1BE54C2FC();
  sub_1BE54B79C();
  sub_1BE54B79C();
  sub_1BE4C5948(&qword_1EBDABF40, &qword_1BE54E4E0);
  sub_1BE4D96F0();
  sub_1BE54B79C();
  WitnessTable = swift_getWitnessTable();
  v38 = MEMORY[0x1E697E5D8];
  v35 = swift_getWitnessTable();
  v36 = MEMORY[0x1E697EBF8];
  v4 = swift_getWitnessTable();
  sub_1BE4D97B0();
  v33 = v4;
  v34 = sub_1BE4D9668(v5, &qword_1EBDABF40, &qword_1BE54E4E0);
  swift_getWitnessTable();
  sub_1BE4D9700();
  sub_1BE54B5CC();
  sub_1BE4D978C();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  sub_1BE4D975C();
  swift_getOpaqueTypeMetadata2();
  sub_1BE4C5948(&qword_1EBDABF50, &qword_1BE54E4E8);
  sub_1BE4D9700();
  sub_1BE54B79C();
  v6 = MEMORY[0x1E6981840];
  v28 = MEMORY[0x1E6981840];
  v29 = v3;
  v30 = MEMORY[0x1E6981148];
  v31 = sub_1BE4C5948(&qword_1EBDABB60, &unk_1BE54E4F0);
  v32 = v6;
  sub_1BE4D97C8();
  swift_getTupleTypeMetadata();
  sub_1BE4D97D4();
  sub_1BE54C3AC();
  swift_getWitnessTable();
  sub_1BE4D9700();
  sub_1BE54C2FC();
  sub_1BE4C5948(&qword_1EBDABF58, &qword_1BE54F660);
  sub_1BE4D9700();
  sub_1BE54B79C();
  sub_1BE4C5948(&qword_1EBDABF60, &qword_1BE54E500);
  sub_1BE4D9700();
  sub_1BE54B79C();
  sub_1BE4D9700();
  sub_1BE54BC1C();
  sub_1BE4C5948(&qword_1EBDABF68, &qword_1BE54E508);
  sub_1BE4D9700();
  sub_1BE4D97C8();
  swift_getTupleTypeMetadata2();
  sub_1BE4D97D4();
  sub_1BE54C3AC();
  swift_getWitnessTable();
  v7 = sub_1BE54C2FC();
  v8 = sub_1BE4C7500(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v8);
  sub_1BE4D981C();
  v15 = v13 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v23 - v17;
  v19 = *(a1 + 24);
  v25 = v3;
  v26 = v19;
  v27 = v23;
  sub_1BE54BB0C();
  sub_1BE54C2EC();
  swift_getWitnessTable();
  v20 = *(v10 + 16);
  v20(v18, v15, v7);
  v21 = *(v10 + 8);
  v21(v15, v7);
  v20(v24, v18, v7);
  return (v21)(v18, v7);
}

uint64_t sub_1BE4D27F4@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v74 = a3;
  v88 = a1;
  v81 = a4;
  v78 = sub_1BE4BF11C(&qword_1EBDABF68, &qword_1BE54E508);
  v5 = *(*(v78 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v78);
  v80 = &v71 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v79 = &v71 - v8;
  v9 = MEMORY[0x1E6981840];
  v106 = MEMORY[0x1E6981840];
  v107 = a2;
  v108 = MEMORY[0x1E6981148];
  v109 = sub_1BE4C5948(&qword_1EBDABB60, &unk_1BE54E4F0);
  v110 = v9;
  swift_getTupleTypeMetadata();
  sub_1BE54C3AC();
  swift_getWitnessTable();
  v10 = sub_1BE54C2FC();
  sub_1BE4C5948(&qword_1EBDABF58, &qword_1BE54F660);
  v84 = v10;
  v11 = sub_1BE54B79C();
  sub_1BE4C5948(&qword_1EBDABF60, &qword_1BE54E500);
  v85 = v11;
  v12 = sub_1BE54B79C();
  v73 = *(v12 - 8);
  v13 = *(v73 + 64);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v71 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v72 = &v71 - v17;
  sub_1BE4C5948(&qword_1EBDABF38, &qword_1BE54E4D8);
  swift_getTupleTypeMetadata2();
  sub_1BE54C3AC();
  swift_getWitnessTable();
  sub_1BE54C2FC();
  sub_1BE54B79C();
  sub_1BE54B79C();
  sub_1BE4C5948(&qword_1EBDABF40, &qword_1BE54E4E0);
  sub_1BE54B79C();
  v105[12] = swift_getWitnessTable();
  v105[13] = MEMORY[0x1E697E5D8];
  v105[10] = swift_getWitnessTable();
  v105[11] = MEMORY[0x1E697EBF8];
  WitnessTable = swift_getWitnessTable();
  v19 = sub_1BE4D9668(&qword_1EBDABF48, &qword_1EBDABF40, &qword_1BE54E4E0);
  v105[8] = WitnessTable;
  v105[9] = v19;
  swift_getWitnessTable();
  v20 = sub_1BE54B5CC();
  v21 = swift_getWitnessTable();
  v106 = v20;
  v107 = v21;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v106 = v20;
  v107 = v21;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v83 = OpaqueTypeMetadata2;
  v106 = OpaqueTypeMetadata2;
  v107 = OpaqueTypeConformance2;
  swift_getOpaqueTypeMetadata2();
  sub_1BE4C5948(&qword_1EBDABF50, &qword_1BE54E4E8);
  v23 = sub_1BE54B79C();
  v24 = *(v23 - 8);
  v25 = v24[8];
  v26 = MEMORY[0x1EEE9AC00](v23);
  v28 = &v71 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v30 = &v71 - v29;
  v86 = v12;
  v75 = sub_1BE54BC1C();
  v77 = *(v75 - 8);
  v31 = *(v77 + 64);
  v32 = MEMORY[0x1EEE9AC00](v75);
  v76 = &v71 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v87 = &v71 - v34;
  LOBYTE(v20) = *v88;
  v35 = type metadata accessor for OnboardingSheetView();
  v36 = v35;
  if (v20)
  {
    sub_1BE4D3C40(v35, v16);
    v37 = swift_getWitnessTable();
    v38 = sub_1BE4D9668(&qword_1EBDAC0B8, &qword_1EBDABF58, &qword_1BE54F660);
    v105[6] = v37;
    v105[7] = v38;
    v39 = swift_getWitnessTable();
    v40 = sub_1BE4D9668(&qword_1EBDAC0F8, &qword_1EBDABF60, &qword_1BE54E500);
    v105[4] = v39;
    v105[5] = v40;
    v41 = v86;
    v71 = swift_getWitnessTable();
    v74 = v36;
    v42 = v72;
    v43 = v73;
    v44 = *(v73 + 16);
    v44(v72, v16, v41);
    v45 = *(v43 + 8);
    v45(v16, v41);
    v44(v16, v42, v41);
    v106 = v83;
    v107 = OpaqueTypeConformance2;
    v46 = swift_getOpaqueTypeConformance2();
    v47 = sub_1BE4D9668(&qword_1EBDAC100, &qword_1EBDABF50, &qword_1BE54E4E8);
    v105[2] = v46;
    v105[3] = v47;
    swift_getWitnessTable();
    sub_1BE4D1008(v16, v23, v41);
    v45(v16, v41);
    v45(v42, v41);
    v36 = v74;
  }

  else
  {
    sub_1BE4D345C(v35, v28);
    v106 = v83;
    v107 = OpaqueTypeConformance2;
    v48 = swift_getOpaqueTypeConformance2();
    v49 = sub_1BE4D9668(&qword_1EBDAC100, &qword_1EBDABF50, &qword_1BE54E4E8);
    v93 = v48;
    v94 = v49;
    v74 = swift_getWitnessTable();
    v50 = v24[2];
    v50(v30, v28, v23);
    v51 = v24[1];
    v51(v28, v23);
    v50(v28, v30, v23);
    v52 = swift_getWitnessTable();
    v53 = sub_1BE4D9668(&qword_1EBDAC0B8, &qword_1EBDABF58, &qword_1BE54F660);
    v91 = v52;
    v92 = v53;
    v54 = swift_getWitnessTable();
    v55 = sub_1BE4D9668(&qword_1EBDAC0F8, &qword_1EBDABF60, &qword_1BE54E500);
    v89 = v54;
    v90 = v55;
    swift_getWitnessTable();
    sub_1BE4D0F10(v28, v23);
    v51(v28, v23);
    v51(v30, v23);
  }

  v56 = v79;
  sub_1BE4D4094(v36);
  v58 = v76;
  v57 = v77;
  v59 = v75;
  (*(v77 + 16))(v76, v87, v75);
  v106 = v58;
  v60 = v80;
  sub_1BE4D9250(v56, v80, &qword_1EBDABF68, &qword_1BE54E508);
  v107 = v60;
  v105[0] = v59;
  v105[1] = v78;
  v103 = v83;
  v104 = OpaqueTypeConformance2;
  v61 = swift_getOpaqueTypeConformance2();
  v62 = sub_1BE4D9668(&qword_1EBDAC100, &qword_1EBDABF50, &qword_1BE54E4E8);
  v101 = v61;
  v102 = v62;
  v63 = swift_getWitnessTable();
  v64 = swift_getWitnessTable();
  v65 = sub_1BE4D9668(&qword_1EBDAC0B8, &qword_1EBDABF58, &qword_1BE54F660);
  v99 = v64;
  v100 = v65;
  v66 = swift_getWitnessTable();
  v67 = sub_1BE4D9668(&qword_1EBDAC0F8, &qword_1EBDABF60, &qword_1BE54E500);
  v97 = v66;
  v98 = v67;
  v68 = swift_getWitnessTable();
  v95 = v63;
  v96 = v68;
  v103 = swift_getWitnessTable();
  v104 = sub_1BE4D8558();
  sub_1BE4D13E8(&v106, 2, v105);
  sub_1BE4D0E58(v56, &qword_1EBDABF68, &qword_1BE54E508);
  v69 = *(v57 + 8);
  v69(v87, v59);
  sub_1BE4D0E58(v60, &qword_1EBDABF68, &qword_1BE54E508);
  return (v69)(v58, v59);
}

unint64_t sub_1BE4D33C4()
{
  result = qword_1EBDABF70;
  if (!qword_1EBDABF70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDABF70);
  }

  return result;
}

uint64_t sub_1BE4D345C@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v54 = a1;
  v61 = a2;
  v60 = sub_1BE54BC8C();
  v59 = *(v60 - 8);
  v3 = *(v59 + 64);
  MEMORY[0x1EEE9AC00](v60);
  v58 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BE4C5948(&qword_1EBDABF38, &qword_1BE54E4D8);
  v43 = *(a1 + 16);
  v5 = v43;
  swift_getTupleTypeMetadata2();
  sub_1BE54C3AC();
  swift_getWitnessTable();
  sub_1BE54C2FC();
  sub_1BE54B79C();
  sub_1BE54B79C();
  sub_1BE4C5948(&qword_1EBDABF40, &qword_1BE54E4E0);
  v6 = sub_1BE54B79C();
  WitnessTable = swift_getWitnessTable();
  v78 = MEMORY[0x1E697E5D8];
  v7 = MEMORY[0x1E697E858];
  v75 = swift_getWitnessTable();
  v76 = MEMORY[0x1E697EBF8];
  v56 = v7;
  v8 = swift_getWitnessTable();
  v55 = MEMORY[0x1E697F940];
  v9 = sub_1BE4D9668(&qword_1EBDABF48, &qword_1EBDABF40, &qword_1BE54E4E0);
  v73 = v8;
  v74 = v9;
  v51 = v6;
  v50 = swift_getWitnessTable();
  v10 = sub_1BE54B5CC();
  v52 = *(v10 - 8);
  v11 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v42 - v12;
  v14 = swift_getWitnessTable();
  v71 = v10;
  v72 = v14;
  v15 = v14;
  v44 = v14;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v49 = *(OpaqueTypeMetadata2 - 8);
  v17 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v19 = &v42 - v18;
  v71 = v10;
  v72 = v15;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v71 = OpaqueTypeMetadata2;
  v72 = OpaqueTypeConformance2;
  v46 = MEMORY[0x1E697D298];
  v47 = swift_getOpaqueTypeMetadata2();
  v53 = *(v47 - 8);
  v21 = *(v53 + 64);
  MEMORY[0x1EEE9AC00](v47);
  v23 = &v42 - v22;
  sub_1BE4C5948(&qword_1EBDABF50, &qword_1BE54E4E8);
  v24 = sub_1BE54B79C();
  v25 = *(v24 - 8);
  v26 = v25[8];
  v27 = MEMORY[0x1EEE9AC00](v24);
  v45 = &v42 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v48 = &v42 - v29;
  v30 = *(v54 + 24);
  v66 = v5;
  v67 = v30;
  v31 = v57;
  v68 = v57;
  v32 = sub_1BE54BE2C();
  sub_1BE4D4D88(v32, sub_1BE4D89B0, v65, v51, v50);
  sub_1BE54C08C();
  (*(v52 + 8))(v13, v10);
  v33 = v58;
  sub_1BE54BC7C();
  sub_1BE4D4DA0();
  sub_1BE54C0AC();
  (*(v59 + 8))(v33, v60);
  (*(v49 + 8))(v19, OpaqueTypeMetadata2);
  v62 = v43;
  v63 = v30;
  v64 = v31;
  sub_1BE4BF11C(&qword_1EBDAC190, &qword_1BE54E998);
  v71 = OpaqueTypeMetadata2;
  v72 = OpaqueTypeConformance2;
  v34 = swift_getOpaqueTypeConformance2();
  sub_1BE4D9668(&qword_1EBDAC198, &qword_1EBDAC190, &qword_1BE54E998);
  sub_1BE54C39C();
  v35 = v45;
  v36 = v47;
  sub_1BE54BFEC();
  (*(v53 + 8))(v23, v36);
  v37 = sub_1BE4D9668(&qword_1EBDAC100, &qword_1EBDABF50, &qword_1BE54E4E8);
  v69 = v34;
  v70 = v37;
  swift_getWitnessTable();
  v38 = v25[2];
  v39 = v48;
  v38(v48, v35, v24);
  v40 = v25[1];
  v40(v35, v24);
  v38(v61, v39, v24);
  return (v40)(v39, v24);
}

uint64_t sub_1BE4D3C40@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v30 = a1;
  v32 = a2;
  v2 = MEMORY[0x1E6981840];
  v29 = *(a1 + 16);
  v40 = MEMORY[0x1E6981840];
  v41 = v29;
  v42 = MEMORY[0x1E6981148];
  v43 = sub_1BE4C5948(&qword_1EBDABB60, &unk_1BE54E4F0);
  v44 = v2;
  swift_getTupleTypeMetadata();
  sub_1BE54C3AC();
  swift_getWitnessTable();
  v3 = sub_1BE54C2FC();
  v27 = *(v3 - 8);
  v4 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v27 - v5;
  sub_1BE4C5948(&qword_1EBDABF58, &qword_1BE54F660);
  v7 = sub_1BE54B79C();
  v28 = *(v7 - 8);
  v8 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v27 - v9;
  sub_1BE4C5948(&qword_1EBDABF60, &qword_1BE54E500);
  v11 = sub_1BE54B79C();
  v12 = *(v11 - 8);
  v13 = v12[8];
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v27 - v17;
  sub_1BE54BB0C();
  v19 = *(v30 + 24);
  v33 = v29;
  v34 = v19;
  v35 = v31;
  sub_1BE54C2EC();
  WitnessTable = swift_getWitnessTable();
  sub_1BE54C0CC();
  (*(v27 + 8))(v6, v3);
  v21 = sub_1BE4D9668(&qword_1EBDAC0B8, &qword_1EBDABF58, &qword_1BE54F660);
  v38 = WitnessTable;
  v39 = v21;
  v22 = swift_getWitnessTable();
  sub_1BE54C18C();
  (*(v28 + 8))(v10, v7);
  v23 = sub_1BE4D9668(&qword_1EBDAC0F8, &qword_1EBDABF60, &qword_1BE54E500);
  v36 = v22;
  v37 = v23;
  swift_getWitnessTable();
  v24 = v12[2];
  v24(v18, v16, v11);
  v25 = v12[1];
  v25(v16, v11);
  v24(v32, v18, v11);
  return (v25)(v18, v11);
}

uint64_t sub_1BE4D4094(uint64_t a1)
{
  v2 = sub_1BE4BF11C(&qword_1EBDAC178, &qword_1BE54E988);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v21 - v4;
  v6 = sub_1BE4BF11C(&qword_1EBDAC258, &qword_1BE54EA80);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v21 - v8;
  v10 = sub_1BE4BF11C(&qword_1EBDAC118, &qword_1BE54E958);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v21 - v12;
  v14 = sub_1BE4D2064(a1);
  if (v14 - sub_1BE4D22A8(a1) >= 1.0)
  {
    sub_1BE4D6420(a1, v5);
    v18 = &v5[*(v2 + 36)];
    sub_1BE54C38C();
    v19 = sub_1BE54BE4C();
    v18[*(sub_1BE4BF11C(&qword_1EBDAC188, &qword_1BE54E990) + 36)] = v19;
    sub_1BE4D9250(v5, v9, &qword_1EBDAC178, &qword_1BE54E988);
    swift_storeEnumTagMultiPayload();
    sub_1BE4D85E4();
    sub_1BE4D88F8();
    sub_1BE54BC0C();
    v15 = v5;
    v16 = &qword_1EBDAC178;
    v17 = &qword_1BE54E988;
  }

  else
  {
    sub_1BE4D6420(a1, v13);
    sub_1BE4D9250(v13, v9, &qword_1EBDAC118, &qword_1BE54E958);
    swift_storeEnumTagMultiPayload();
    sub_1BE4D85E4();
    sub_1BE4D88F8();
    sub_1BE54BC0C();
    v15 = v13;
    v16 = &qword_1EBDAC118;
    v17 = &qword_1BE54E958;
  }

  return sub_1BE4D0E58(v15, v16, v17);
}

uint64_t sub_1BE4D4328@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v48 = a4;
  sub_1BE4C5948(&qword_1EBDABF38, &qword_1BE54E4D8);
  swift_getTupleTypeMetadata2();
  sub_1BE54C3AC();
  swift_getWitnessTable();
  v7 = sub_1BE54C2FC();
  v40 = *(v7 - 8);
  v8 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v37 - v9;
  v11 = sub_1BE54B79C();
  v43 = *(v11 - 8);
  v12 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v37 - v13;
  v41 = sub_1BE54B79C();
  v47 = *(v41 - 8);
  v15 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v41);
  v39 = &v37 - v16;
  sub_1BE4C5948(&qword_1EBDABF40, &qword_1BE54E4E0);
  v17 = sub_1BE54B79C();
  v18 = *(v17 - 8);
  v45 = v17;
  v46 = v18;
  v19 = *(v18 + 64);
  v20 = MEMORY[0x1EEE9AC00](v17);
  v42 = &v37 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v44 = &v37 - v22;
  v38 = a2;
  v52 = a2;
  v53 = a3;
  v54 = a1;
  sub_1BE54BB0C();
  sub_1BE54C2EC();
  sub_1BE54BE3C();
  WitnessTable = swift_getWitnessTable();
  sub_1BE54C13C();
  (*(v40 + 8))(v10, v7);
  v24 = *(a1 + *(type metadata accessor for OnboardingSheetView() + 52));
  v59 = WitnessTable;
  v60 = MEMORY[0x1E697E5D8];
  v36 = swift_getWitnessTable();
  sub_1BE54C39C();
  v25 = v39;
  sub_1BE54C11C();
  (*(v43 + 8))(v14, v11);
  v49 = v38;
  v50 = a3;
  v51 = a1;
  sub_1BE4BF11C(&qword_1EBDAC1A8, &qword_1BE54E9A8);
  v57 = v36;
  v58 = MEMORY[0x1E697EBF8];
  v26 = v41;
  v27 = swift_getWitnessTable();
  sub_1BE4D9668(&qword_1EBDAC1B0, &qword_1EBDAC1A8, &qword_1BE54E9A8);
  sub_1BE54C39C();
  v28 = v42;
  sub_1BE54BFEC();
  (*(v47 + 8))(v25, v26);
  v29 = sub_1BE4D9668(&qword_1EBDABF48, &qword_1EBDABF40, &qword_1BE54E4E0);
  v55 = v27;
  v56 = v29;
  v30 = v45;
  swift_getWitnessTable();
  v31 = v46;
  v32 = *(v46 + 16);
  v33 = v44;
  v32(v44, v28, v30);
  v34 = *(v31 + 8);
  v34(v28, v30);
  v32(v48, v33, v30);
  return (v34)(v33, v30);
}