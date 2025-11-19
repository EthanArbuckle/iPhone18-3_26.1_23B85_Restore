BOOL sub_251A6E150(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

void *sub_251A6E1DC@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_251A6E208@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

void *sub_251A6E300@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_251A6E310@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_251A80824(a1);

  *a2 = v3;
  return result;
}

uint64_t sub_251A6E354@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_251C70F14();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_251A6E3CC(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_251C6FAE4();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_251A6E478(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_251C6FAE4();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_251A6E520()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_251A6E55C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_251C6FE64();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 32) + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_251A6E620(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_251C6FE64();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 24);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 32) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_251A6E6E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 12)
  {
    v4 = *(a1 + 8) >> 60;
    if (((4 * v4) & 0xC) != 0)
    {
      return 16 - ((4 * v4) & 0xC | (v4 >> 2));
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = sub_251C703B4();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_251A6E798(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 12)
  {
    *result = 0;
    result[1] = (((-a2 >> 2) & 3) - 4 * a2) << 60;
  }

  else
  {
    v7 = sub_251C703B4();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_251A6E844(uint64_t a1, uint64_t a2, int *a3)
{
  sub_251A85F5C(0, qword_2813E6C90, type metadata accessor for PBTypedData.OneOf_Raw, MEMORY[0x277D83D88]);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[5];
LABEL_5:
    v11 = *(v8 + 48);

    return v11(a1 + v9, a2, v7);
  }

  v10 = sub_251C703B4();
  if (*(*(v10 - 8) + 84) == a2)
  {
    v7 = v10;
    v8 = *(v10 - 8);
    v9 = a3[6];
    goto LABEL_5;
  }

  sub_251A85F5C(0, qword_2813E6EE8, type metadata accessor for PBDateRange, MEMORY[0x277D83D88]);
  v14 = v13;
  v15 = *(*(v13 - 8) + 48);
  v16 = a1 + a3[7];

  return v15(v16, a2, v14);
}

uint64_t sub_251A6E9E0(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  sub_251A85F5C(0, qword_2813E6C90, type metadata accessor for PBTypedData.OneOf_Raw, MEMORY[0x277D83D88]);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_5:
    v13 = *(v10 + 56);

    return v13(a1 + v11, a2, a2, v9);
  }

  v12 = sub_251C703B4();
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[6];
    goto LABEL_5;
  }

  sub_251A85F5C(0, qword_2813E6EE8, type metadata accessor for PBDateRange, MEMORY[0x277D83D88]);
  v16 = v15;
  v17 = *(*(v15 - 8) + 56);
  v18 = a1 + a4[7];

  return v17(v18, a2, a2, v16);
}

uint64_t sub_251A6EB88(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_251C703B4();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_251A6EC34(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_251C703B4();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_251A6ECD8(uint64_t a1, uint64_t a2, int *a3)
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

  sub_251A85F5C(0, &qword_27F478ED8, type metadata accessor for PBReference.OneOf_Metadata, MEMORY[0x277D83D88]);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[7];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = sub_251C703B4();
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[8];
    goto LABEL_9;
  }

  sub_251A85F5C(0, qword_2813E6EE8, type metadata accessor for PBDateRange, MEMORY[0x277D83D88]);
  v15 = v14;
  v16 = *(*(v14 - 8) + 48);
  v17 = a1 + a3[9];

  return v16(v17, a2, v15);
}

uint64_t sub_251A6EEA4(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  sub_251A85F5C(0, &qword_27F478ED8, type metadata accessor for PBReference.OneOf_Metadata, MEMORY[0x277D83D88]);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[7];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = sub_251C703B4();
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[8];
    goto LABEL_7;
  }

  sub_251A85F5C(0, qword_2813E6EE8, type metadata accessor for PBDateRange, MEMORY[0x277D83D88]);
  v15 = v14;
  v16 = *(*(v14 - 8) + 56);
  v17 = v5 + a4[9];

  return v16(v17, a2, a2, v15);
}

uint64_t sub_251A6F070(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_251C703B4();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 52);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_251A6F11C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_251C703B4();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 52);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_251A6F320()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 40));

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_251A6F370()
{
  v1 = sub_251C701E4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 56) & ~v3;
  v5 = *(v2 + 64);
  v6 = sub_251C70014();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return MEMORY[0x2821FE8E8](v0, v9 + v10, v11 | 7);
}

uint64_t sub_251A6F4C0()
{
  v1 = (type metadata accessor for ClinicalSharingQueryDiagnosticsTask(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = sub_251C70014();
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = (v3 + v4 + v7) & ~v7;
  v9 = *(v6 + 64);
  v10 = v2 | v7;
  v11 = v0 + v3;
  v12 = sub_251C70074();
  (*(*(v12 - 8) + 8))(v0 + v3, v12);

  v13 = *(v0 + v3 + v1[8]);

  v14 = v1[9];
  v15 = sub_251C6FE64();
  (*(*(v15 - 8) + 8))(v11 + v14, v15);
  __swift_destroy_boxed_opaque_existential_1((v11 + v1[10]));
  v16 = v1[12];
  v17 = *(v6 + 8);
  v17(v11 + v16, v5);
  v17(v0 + v8, v5);

  return MEMORY[0x2821FE8E8](v0, v8 + v9, v10 | 7);
}

uint64_t sub_251A6F6B0()
{
  v1 = (type metadata accessor for ClinicalSharingQueryDiagnosticsTask(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = sub_251C70074();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);

  v6 = *(v0 + v3 + v1[8]);

  v7 = v1[9];
  v8 = sub_251C6FE64();
  (*(*(v8 - 8) + 8))(v0 + v3 + v7, v8);
  __swift_destroy_boxed_opaque_existential_1((v0 + v3 + v1[10]));
  v9 = v1[12];
  v10 = sub_251C70014();
  (*(*(v10 - 8) + 8))(v0 + v3 + v9, v10);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_251A6F830()
{
  v1 = (type metadata accessor for ClinicalSharingQueryDiagnosticsTask(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*v1 + 64);
  v5 = *(v0 + 16);

  v6 = sub_251C70074();
  (*(*(v6 - 8) + 8))(v0 + v3, v6);

  v7 = *(v0 + v3 + v1[8]);

  v8 = v1[9];
  v9 = sub_251C6FE64();
  (*(*(v9 - 8) + 8))(v0 + v3 + v8, v9);
  __swift_destroy_boxed_opaque_existential_1((v0 + v3 + v1[10]));
  v10 = v1[12];
  v11 = sub_251C70014();
  (*(*(v11 - 8) + 8))(v0 + v3 + v10, v11);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_251A6F9B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_251C70074();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_251A6FA78(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_251C70074();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_251A6FB34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 20);
  v6 = type metadata accessor for PBDateRange(0);
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_251A6FBAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 20);
  v7 = type metadata accessor for PBDateRange(0);
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t sub_251A6FC28(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_251C70074();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_3:

    return v9(v10, a2, v8);
  }

  if (a2 == 0x7FFFFFFF)
  {
    v12 = *(a1 + a3[5]);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }

  else
  {
    v13 = sub_251C6FE64();
    v14 = *(v13 - 8);
    if (*(v14 + 84) == a2)
    {
      v8 = v13;
      v9 = *(v14 + 48);
      v10 = a1 + a3[7];
      goto LABEL_3;
    }

    v15 = sub_251C70014();
    v16 = *(*(v15 - 8) + 48);
    v17 = a1 + a3[10];

    return v16(v17, a2, v15);
  }
}

uint64_t sub_251A6FD9C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = sub_251C70074();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_3:

    return v11(v12, a2, a2, v10);
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[5]) = (a2 - 1);
    return result;
  }

  v13 = sub_251C6FE64();
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + a4[7];
    goto LABEL_3;
  }

  v15 = sub_251C70014();
  v16 = *(*(v15 - 8) + 56);
  v17 = a1 + a4[10];

  return v16(v17, a2, a2, v15);
}

uint64_t sub_251A6FF18(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_251C6FAE4();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_251A6FFC4(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_251C6FAE4();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_251A70068()
{
  v1 = (type metadata accessor for ClinicalSharingSampleQuery() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = *(v0 + v3);

  v6 = v1[7];
  v7 = sub_251C6FAE4();
  (*(*(v7 - 8) + 8))(v0 + v3 + v6, v7);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_251A70164()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_251A7019C()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_251A701D4()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_251A70210()
{
  v1 = sub_251C6F9A4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_251A702AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_251C703B4();
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

uint64_t sub_251A70368(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_251C703B4();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_251A70420(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for PBReference(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_251A704CC(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for PBReference(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_251A705B4(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_251C703B4();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_251A70660(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_251C703B4();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_251A70704(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_251C703B4();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 52);

      return v11(v12, a2, v10);
    }

    else
    {
      sub_251AC2DC8(0, &qword_27F479618, type metadata accessor for PBTestFlowData, MEMORY[0x277D83D88]);
      v14 = v13;
      v15 = *(*(v13 - 8) + 48);
      v16 = a1 + *(a3 + 56);

      return v15(v16, a2, v14);
    }
  }
}

uint64_t sub_251A70858(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_251C703B4();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 52);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      sub_251AC2DC8(0, &qword_27F479618, type metadata accessor for PBTestFlowData, MEMORY[0x277D83D88]);
      v14 = v13;
      v15 = *(*(v13 - 8) + 56);
      v16 = v5 + *(a4 + 56);

      return v15(v16, a2, a2, v14);
    }
  }

  return result;
}

uint64_t sub_251A709B0()
{
  v1 = sub_251C70074();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_251A70A74()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_251A70AB8()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_251A70B00()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_251A70B38()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[5];

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_251A70B90()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_251A70BCC()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_251A70C08()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_251A70C40()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_251A70C78()
{
  v1 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_251A70CB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 56);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_251C703B4();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_251A70D64(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 56) = (a2 - 1);
  }

  else
  {
    v7 = sub_251C703B4();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_251A70E08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for WebRequestResponseError.ErrorType(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_251A70EB4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for WebRequestResponseError.ErrorType(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_251A70F80(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_251C70014();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[6];
LABEL_3:
    v10 = *(v8 + 48);

    return v10(a1 + v9, a2, v7);
  }

  if (a2 == 0x7FFFFFFF)
  {
    v12 = *(a1 + a3[7] + 24);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }

  else
  {
    v13 = sub_251C70074();
    if (*(*(v13 - 8) + 84) == a2)
    {
      v7 = v13;
      v8 = *(v13 - 8);
      v9 = a3[8];
      goto LABEL_3;
    }

    v14 = type metadata accessor for ClinicalSharingCloudStandardAPI();
    v15 = *(*(v14 - 8) + 48);
    v16 = a1 + a3[12];

    return v15(v16, a2, v14);
  }
}

uint64_t sub_251A710F4(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = sub_251C70014();
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = *(result - 8);
    v11 = a4[6];
LABEL_3:
    v12 = *(v10 + 56);

    return v12(a1 + v11, a2, a2, v9);
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[7] + 24) = (a2 - 1);
    return result;
  }

  v13 = sub_251C70074();
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[8];
    goto LABEL_3;
  }

  v14 = type metadata accessor for ClinicalSharingCloudStandardAPI();
  v15 = *(*(v14 - 8) + 56);
  v16 = a1 + a4[12];

  return v15(v16, a2, a2, v14);
}

uint64_t sub_251A7126C()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_251A712A8()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_251A712E0()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_251A71320()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 24));
  v1 = *(v0 + 72);

  v2 = *(v0 + 88);

  v3 = *(v0 + 96);

  __swift_destroy_boxed_opaque_existential_1((v0 + 112));

  return MEMORY[0x2821FE8E8](v0, 152, 7);
}

uint64_t sub_251A71380()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_251A713B8()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[6];

  v4 = v0[7];

  __swift_destroy_boxed_opaque_existential_1(v0 + 9);

  return MEMORY[0x2821FE8E8](v0, 112, 7);
}

uint64_t sub_251A71414()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[6];

  __swift_destroy_boxed_opaque_existential_1(v0 + 8);

  return MEMORY[0x2821FE8E8](v0, 104, 7);
}

uint64_t sub_251A71464()
{
  v1 = v0[3];

  if (v0[4])
  {
    v2 = v0[5];
  }

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_251A714AC()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_251A714E4()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_251A71560()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_251A71598()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v1 = *(v0 + 64);

  v2 = *(v0 + 80);

  v3 = *(v0 + 88);

  __swift_destroy_boxed_opaque_existential_1((v0 + 104));

  return MEMORY[0x2821FE8E8](v0, 152, 7);
}

uint64_t sub_251A715F8()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_251A71638()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_251A71670()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[6];

  __swift_destroy_boxed_opaque_existential_1(v0 + 8);

  return MEMORY[0x2821FE8E8](v0, 104, 7);
}

uint64_t sub_251A716C0()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_251A716F8()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_251A71730()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  sub_251A83028(v0[7], v0[8]);
  v1 = v0[10];

  return MEMORY[0x2821FE8E8](v0, 88, 7);
}

uint64_t sub_251A71778()
{
  v1 = (type metadata accessor for PBDeleteBlobs(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = *(v0 + v3);

  v6 = v1[7];
  v7 = sub_251C703B4();
  (*(*(v7 - 8) + 8))(v0 + v3 + v6, v7);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_251A71864()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_251A7189C()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_251A718D4()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_251A71918(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    sub_251AF2314(0, &qword_27F478D90, MEMORY[0x277CC88A8], MEMORY[0x277D83D88]);
    v9 = v8;
    v10 = *(*(v8 - 8) + 48);
    v11 = a1 + *(a3 + 28);

    return v10(v11, a2, v9);
  }
}

void *sub_251A719F8(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    sub_251AF2314(0, &qword_27F478D90, MEMORY[0x277CC88A8], MEMORY[0x277D83D88]);
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 28);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_251A71ACC()
{
  v1 = (type metadata accessor for ClinicalSharingMedicalRecordsQuery() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = *(v0 + v3);

  v6 = v1[9];
  v7 = sub_251C6FAE4();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(v0 + v3 + v6, 1, v7))
  {
    (*(v8 + 8))(v0 + v3 + v6, v7);
  }

  v9 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(v0 + v9);

  return MEMORY[0x2821FE8E8](v0, v9 + 8, v2 | 7);
}

uint64_t sub_251A71C10()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_251A71C48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_251C6FE64();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 32) + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_251A71D0C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_251C6FE64();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 24);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 32) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_251A71DCC()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[5];

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_251A71E14()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[5];

  v3 = v0[6];

  v4 = v0[7];

  v5 = v0[10];

  return MEMORY[0x2821FE8E8](v0, 96, 7);
}

uint64_t sub_251A71E6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_251C6FE64();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_251A71F28(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_251C6FE64();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_251A71FF0()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_251A72034()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_251A7206C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_251A720A4()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_251A720DC()
{
  v1 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_251A7211C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_251A72154()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_251A72194()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v1 = v0[8];

  v2 = v0[10];

  v3 = v0[11];

  __swift_destroy_boxed_opaque_existential_1(v0 + 13);

  return MEMORY[0x2821FE8E8](v0, 144, 7);
}

uint64_t sub_251A721EC()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_251A72224()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[6];

  __swift_destroy_boxed_opaque_existential_1(v0 + 8);

  return MEMORY[0x2821FE8E8](v0, 104, 7);
}

uint64_t sub_251A72274()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_251A722AC()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_251A722E4()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  sub_251A83028(v0[7], v0[8]);
  v1 = v0[10];

  return MEMORY[0x2821FE8E8](v0, 88, 7);
}

uint64_t sub_251A7232C()
{
  v1 = (type metadata accessor for PBBlobs(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = *(v0 + v3);

  v6 = v1[7];
  v7 = sub_251C703B4();
  (*(*(v7 - 8) + 8))(v0 + v3 + v6, v7);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_251A72428(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_251C6FAE4();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

void *sub_251A724D4(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_251C6FAE4();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_251A7257C()
{
  v1 = (type metadata accessor for ClinicalSharingSleepStatisticsQuery(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*v1 + 64);

  v5 = *(v0 + v3);

  v6 = v1[9];
  v7 = sub_251C6FAE4();
  (*(*(v7 - 8) + 8))(v0 + v3 + v6, v7);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_251A72688(char *a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFFuLL)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = sub_251C6FC94();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[7];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(&a1[v11], a2, v9);
  }

  v12 = sub_251C701E4();
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[9];
    goto LABEL_9;
  }

  v14 = type metadata accessor for PBSleepSeries.Value(0);
  v15 = *(*(v14 - 8) + 48);
  v16 = &a1[a3[13]];

  return v15(v16, a2, v14);
}

char *sub_251A727F4(char *result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
    return result;
  }

  v8 = sub_251C6FC94();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[7];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(&v5[v11], a2, a2, v9);
  }

  v12 = sub_251C701E4();
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[9];
    goto LABEL_7;
  }

  v14 = type metadata accessor for PBSleepSeries.Value(0);
  v15 = *(*(v14 - 8) + 56);
  v16 = &v5[a4[13]];

  return v15(v16, a2, a2, v14);
}

uint64_t sub_251A72964()
{
  _Block_release(*(v0 + 32));

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_251A729BC()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_251A72A08()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_251A72A40()
{
  v1 = type metadata accessor for ClinicalSharingOperationalAnalyticsSubmissionTask();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v12 = *(*(v1 - 1) + 64);
  v4 = v0 + v3;
  __swift_destroy_boxed_opaque_existential_1((v0 + v3));
  v5 = v1[5];
  v6 = sub_251C70014();
  v7 = *(v6 - 8);
  v8 = *(v7 + 8);
  v8(v0 + v3 + v5, v6);

  v9 = *(v0 + v3 + v1[7]);

  v10 = v1[9];
  if (!(*(v7 + 48))(v0 + v3 + v10, 1, v6))
  {
    v8(v4 + v10, v6);
  }

  v8(v4 + v1[10], v6);

  return MEMORY[0x2821FE8E8](v0, v3 + v12, v2 | 7);
}

uint64_t sub_251A72BCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_251C70014();
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
      sub_251B18E10(0, &qword_2813E7500, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
      v14 = v13;
      v15 = *(*(v13 - 8) + 48);
      v16 = a1 + *(a3 + 36);

      return v15(v16, a2, v14);
    }
  }
}

uint64_t sub_251A72D20(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v8 = sub_251C70014();
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
      sub_251B18E10(0, &qword_2813E7500, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
      v14 = v13;
      v15 = *(*(v13 - 8) + 56);
      v16 = v5 + *(a4 + 36);

      return v15(v16, a2, a2, v14);
    }
  }

  return result;
}

uint64_t sub_251A72E74()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_251A72EB4(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_251C703B4();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_251A72F60(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_251C703B4();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_251A73004(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_251C703B4();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_251A730B0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_251C703B4();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_251A73158()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_251A73190()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_251A731C8()
{
  v1 = sub_251C6F9A4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_251A73254()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  v3 = *(v0 + 56);

  v4 = *(v0 + 72);

  v5 = *(v0 + 88);

  return MEMORY[0x2821FE8E8](v0, 128, 7);
}

uint64_t sub_251A732CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_251C70014();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 48) + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_251A73390(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_251C70014();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 32);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 48) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_251A73450()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_251A73488()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 64);

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_251A734D8()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_251A73510()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_251A73548()
{
  v1 = sub_251C6F9A4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_251A735D4()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  v3 = *(v0 + 56);

  v4 = *(v0 + 72);

  v5 = *(v0 + 88);

  return MEMORY[0x2821FE8E8](v0, 128, 7);
}

uint64_t sub_251A73650()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_251A73688()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_251A736CC()
{
  _Block_release(*(v0 + 32));

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_251A73738(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_251C6FAE4();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_251A737E4(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_251C6FAE4();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_251A73888()
{
  v1 = sub_251C70014();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  v6 = sub_251C6FC94();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = v3 | v8;
  v11 = (*(v7 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = (v11 + 15) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);
  v13 = *(v0 + v11);

  return MEMORY[0x2821FE8E8](v0, v12 + 8, v10 | 7);
}

uint64_t sub_251A73A04()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_251A73A44(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_251C6FE64();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_251A73AF0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_251C6FE64();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_251A73F80()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_251A73FB8()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_251A74000()
{
  MEMORY[0x25308E370](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_251A74038()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_251A74078()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_251A740BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_251C70014();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_251A74168(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_251C70014();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_251A74244(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 12)
  {
    v4 = *(a1 + 8) >> 60;
    if (((4 * v4) & 0xC) != 0)
    {
      return 16 - ((4 * v4) & 0xC | (v4 >> 2));
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = sub_251C703B4();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_251A742FC(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 12)
  {
    *result = 0;
    result[1] = (((-a2 >> 2) & 3) - 4 * a2) << 60;
  }

  else
  {
    v7 = sub_251C703B4();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_251A743CC(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_251C6FAE4();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_251A74478(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_251C6FAE4();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_251A74520()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_251A7455C()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_251A74594()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_251A74630(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_251C703B4();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

void *sub_251A746DC(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_251C703B4();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_251A747C0(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_251C703B4();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_251A7486C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_251C703B4();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_251A74A20(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_251C703B4();
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
      sub_251B55C24(0, &qword_27F479130, MEMORY[0x277D21570], MEMORY[0x277D83D88]);
      v14 = v13;
      v15 = *(*(v13 - 8) + 48);
      v16 = a1 + *(a3 + 24);

      return v15(v16, a2, v14);
    }
  }
}

uint64_t sub_251A74B74(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_251C703B4();
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
      sub_251B55C24(0, &qword_27F479130, MEMORY[0x277D21570], MEMORY[0x277D83D88]);
      v14 = v13;
      v15 = *(*(v13 - 8) + 56);
      v16 = v5 + *(a4 + 24);

      return v15(v16, a2, a2, v14);
    }
  }

  return result;
}

unint64_t sub_251A74D70@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result < 3;
  *(a2 + 9) = 0;
  return result;
}

void *sub_251A74D88@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result >= 3uLL;
  *a2 = *result;
  v3 = !v2;
  *(a2 + 8) = v3;
  *(a2 + 9) = 0;
  return result;
}

uint64_t sub_251A74F74@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  v2 = a2 + *(a1 + 24);
  return sub_251C703A4();
}

uint64_t sub_251A74FC8@<X0>(uint64_t a1@<X0>, _WORD *a2@<X8>)
{
  *a2 = 0;
  v2 = a2 + *(a1 + 24);
  return sub_251C703A4();
}

uint64_t sub_251A75010(uint64_t *a1, uint64_t a2, int *a3)
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

  v8 = sub_251C703B4();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[5];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  sub_251B67AAC(0, qword_2813E6D28, type metadata accessor for PBHKConcept, MEMORY[0x277D83D88]);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[6];
    goto LABEL_9;
  }

  sub_251B67AAC(0, qword_2813E4B40, type metadata accessor for PBHKInspectableValue, MEMORY[0x277D83D88]);
  v15 = v14;
  v16 = *(*(v14 - 8) + 48);
  v17 = a1 + a3[7];

  return v16(v17, a2, v15);
}

char *sub_251A751DC(char *result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
    return result;
  }

  v8 = sub_251C703B4();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(&v5[v11], a2, a2, v9);
  }

  sub_251B67AAC(0, qword_2813E6D28, type metadata accessor for PBHKConcept, MEMORY[0x277D83D88]);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[6];
    goto LABEL_7;
  }

  sub_251B67AAC(0, qword_2813E4B40, type metadata accessor for PBHKInspectableValue, MEMORY[0x277D83D88]);
  v15 = v14;
  v16 = *(*(v14 - 8) + 56);
  v17 = &v5[a4[7]];

  return v16(v17, a2, a2, v15);
}

uint64_t sub_251A753A8(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_251C703B4();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 40);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_251A75454(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_251C703B4();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 40);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_251A75558(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_251C703B4();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 28);

      return v11(v12, a2, v10);
    }

    else
    {
      sub_251B67AAC(0, qword_2813E4B40, type metadata accessor for PBHKInspectableValue, MEMORY[0x277D83D88]);
      v14 = v13;
      v15 = *(*(v13 - 8) + 48);
      v16 = a1 + *(a3 + 32);

      return v15(v16, a2, v14);
    }
  }
}

uint64_t sub_251A756AC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v8 = sub_251C703B4();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 28);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      sub_251B67AAC(0, qword_2813E4B40, type metadata accessor for PBHKInspectableValue, MEMORY[0x277D83D88]);
      v14 = v13;
      v15 = *(*(v13 - 8) + 56);
      v16 = v5 + *(a4 + 32);

      return v15(v16, a2, a2, v14);
    }
  }

  return result;
}

uint64_t sub_251A75800(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_251C703B4();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 48);

      return v11(v12, a2, v10);
    }

    else
    {
      sub_251B67AAC(0, qword_2813E52A0, type metadata accessor for PBGeneralMedication, MEMORY[0x277D83D88]);
      v14 = v13;
      v15 = *(*(v13 - 8) + 48);
      v16 = a1 + *(a3 + 52);

      return v15(v16, a2, v14);
    }
  }
}

uint64_t sub_251A75954(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_251C703B4();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 48);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      sub_251B67AAC(0, qword_2813E52A0, type metadata accessor for PBGeneralMedication, MEMORY[0x277D83D88]);
      v14 = v13;
      v15 = *(*(v13 - 8) + 56);
      v16 = v5 + *(a4 + 52);

      return v15(v16, a2, a2, v14);
    }
  }

  return result;
}

uint64_t sub_251A75AA8(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_251C703B4();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 32);

      return v11(v12, a2, v10);
    }

    else
    {
      sub_251B67AAC(0, qword_2813E6D28, type metadata accessor for PBHKConcept, MEMORY[0x277D83D88]);
      v14 = v13;
      v15 = *(*(v13 - 8) + 48);
      v16 = a1 + *(a3 + 36);

      return v15(v16, a2, v14);
    }
  }
}

uint64_t sub_251A75BFC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_251C703B4();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 32);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      sub_251B67AAC(0, qword_2813E6D28, type metadata accessor for PBHKConcept, MEMORY[0x277D83D88]);
      v14 = v13;
      v15 = *(*(v13 - 8) + 56);
      v16 = v5 + *(a4 + 36);

      return v15(v16, a2, a2, v14);
    }
  }

  return result;
}

uint64_t sub_251A75D90(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_251C703B4();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 48);

      return v11(v12, a2, v10);
    }

    else
    {
      sub_251B67AAC(0, qword_2813E6D28, type metadata accessor for PBHKConcept, MEMORY[0x277D83D88]);
      v14 = v13;
      v15 = *(*(v13 - 8) + 48);
      v16 = a1 + *(a3 + 52);

      return v15(v16, a2, v14);
    }
  }
}

void *sub_251A75EE4(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = sub_251C703B4();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 48);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      sub_251B67AAC(0, qword_2813E6D28, type metadata accessor for PBHKConcept, MEMORY[0x277D83D88]);
      v14 = v13;
      v15 = *(*(v13 - 8) + 56);
      v16 = v5 + *(a4 + 52);

      return v15(v16, a2, a2, v14);
    }
  }

  return result;
}

uint64_t sub_251A7607C(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = sub_251C703B4();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[9];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  sub_251B67AAC(0, qword_2813E52A0, type metadata accessor for PBGeneralMedication, MEMORY[0x277D83D88]);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[10];
    goto LABEL_7;
  }

  sub_251B67AAC(0, qword_2813E6D28, type metadata accessor for PBHKConcept, MEMORY[0x277D83D88]);
  v15 = v14;
  v16 = *(*(v14 - 8) + 56);
  v17 = v5 + a4[11];

  return v16(v17, a2, a2, v15);
}

uint64_t sub_251A76248(uint64_t a1, uint64_t a2, int *a3)
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

  v8 = sub_251C703B4();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[6];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  sub_251B67AAC(0, qword_2813E52A0, type metadata accessor for PBGeneralMedication, MEMORY[0x277D83D88]);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[7];
    goto LABEL_9;
  }

  sub_251B67AAC(0, qword_2813E6F88, type metadata accessor for PBQuantity, MEMORY[0x277D83D88]);
  v15 = v14;
  v16 = *(*(v14 - 8) + 48);
  v17 = a1 + a3[8];

  return v16(v17, a2, v15);
}

uint64_t sub_251A76414(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = sub_251C703B4();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[6];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  sub_251B67AAC(0, qword_2813E52A0, type metadata accessor for PBGeneralMedication, MEMORY[0x277D83D88]);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[7];
    goto LABEL_7;
  }

  sub_251B67AAC(0, qword_2813E6F88, type metadata accessor for PBQuantity, MEMORY[0x277D83D88]);
  v15 = v14;
  v16 = *(*(v14 - 8) + 56);
  v17 = v5 + a4[8];

  return v16(v17, a2, a2, v15);
}

uint64_t sub_251A765E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_251C703B4();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_251A7668C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v7 = sub_251C703B4();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_251A76730(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_251C703B4();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 56);

      return v11(v12, a2, v10);
    }

    else
    {
      sub_251B67AAC(0, qword_2813E6D28, type metadata accessor for PBHKConcept, MEMORY[0x277D83D88]);
      v14 = v13;
      v15 = *(*(v13 - 8) + 48);
      v16 = a1 + *(a3 + 60);

      return v15(v16, a2, v14);
    }
  }
}

uint64_t sub_251A76884(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_251C703B4();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 56);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      sub_251B67AAC(0, qword_2813E6D28, type metadata accessor for PBHKConcept, MEMORY[0x277D83D88]);
      v14 = v13;
      v15 = *(*(v13 - 8) + 56);
      v16 = v5 + *(a4 + 60);

      return v15(v16, a2, a2, v14);
    }
  }

  return result;
}

uint64_t sub_251A769D8(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_251C703B4();
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
      sub_251B67AAC(0, qword_2813E6D28, type metadata accessor for PBHKConcept, MEMORY[0x277D83D88]);
      v14 = v13;
      v15 = *(*(v13 - 8) + 48);
      v16 = a1 + *(a3 + 28);

      return v15(v16, a2, v14);
    }
  }
}

void *sub_251A76B2C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = sub_251C703B4();
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
      sub_251B67AAC(0, qword_2813E6D28, type metadata accessor for PBHKConcept, MEMORY[0x277D83D88]);
      v14 = v13;
      v15 = *(*(v13 - 8) + 56);
      v16 = v5 + *(a4 + 28);

      return v15(v16, a2, a2, v14);
    }
  }

  return result;
}

uint64_t sub_251A76C88(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_251C703B4();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 52);

      return v11(v12, a2, v10);
    }

    else
    {
      sub_251B67AAC(0, qword_2813E2930, type metadata accessor for PBMedicationTrackingScheduleCompatibilityVersionRange, MEMORY[0x277D83D88]);
      v14 = v13;
      v15 = *(*(v13 - 8) + 48);
      v16 = a1 + *(a3 + 56);

      return v15(v16, a2, v14);
    }
  }
}

uint64_t sub_251A76DDC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_251C703B4();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 52);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      sub_251B67AAC(0, qword_2813E2930, type metadata accessor for PBMedicationTrackingScheduleCompatibilityVersionRange, MEMORY[0x277D83D88]);
      v14 = v13;
      v15 = *(*(v13 - 8) + 56);
      v16 = v5 + *(a4 + 56);

      return v15(v16, a2, a2, v14);
    }
  }

  return result;
}

uint64_t sub_251A76F30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_251C703B4();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 32);

      return v11(v12, a2, v10);
    }

    else
    {
      sub_251B67AAC(0, qword_2813E2CC0, type metadata accessor for PBHKMedicationScheduleIntervalData.HKReminderWeekdayOptions, MEMORY[0x277D83D88]);
      v14 = v13;
      v15 = *(*(v13 - 8) + 48);
      v16 = a1 + *(a3 + 36);

      return v15(v16, a2, v14);
    }
  }
}

uint64_t sub_251A77084(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v8 = sub_251C703B4();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 32);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      sub_251B67AAC(0, qword_2813E2CC0, type metadata accessor for PBHKMedicationScheduleIntervalData.HKReminderWeekdayOptions, MEMORY[0x277D83D88]);
      v14 = v13;
      v15 = *(*(v13 - 8) + 56);
      v16 = v5 + *(a4 + 36);

      return v15(v16, a2, a2, v14);
    }
  }

  return result;
}

uint64_t sub_251A771D8(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *a1;
    v5 = v4 >= 2;
    v6 = (v4 + 2147483646) & 0x7FFFFFFF;
    if (v5)
    {
      return (v6 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v10 = sub_251C703B4();
    v11 = *(*(v10 - 8) + 48);
    v12 = &a1[*(a3 + 44)];

    return v11(v12, a2, v10);
  }
}

_BYTE *sub_251A77284(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *result = a2 + 1;
  }

  else
  {
    v7 = sub_251C703B4();
    v8 = *(*(v7 - 8) + 56);
    v9 = &v5[*(a4 + 44)];

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_251A7732C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 40);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_251C703B4();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 48);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_251A773D8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 40) = (a2 - 1);
  }

  else
  {
    v7 = sub_251C703B4();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 48);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_251A77484(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 28);
  v6 = sub_251C703B4();
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_251A774FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 28);
  v7 = sub_251C703B4();
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t sub_251A77578(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_251C703B4();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_251A77624(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_251C703B4();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_251A776C8(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *a1;
    v5 = v4 >= 2;
    v6 = (v4 + 2147483646) & 0x7FFFFFFF;
    if (v5)
    {
      return (v6 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v10 = sub_251C703B4();
    v11 = *(*(v10 - 8) + 48);
    v12 = &a1[*(a3 + 52)];

    return v11(v12, a2, v10);
  }
}

_BYTE *sub_251A77774(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *result = a2 + 1;
  }

  else
  {
    v7 = sub_251C703B4();
    v8 = *(*(v7 - 8) + 56);
    v9 = &v5[*(a4 + 52)];

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_251A77850(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = sub_251C703B4();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[9];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  sub_251B67AAC(0, qword_2813E6890, type metadata accessor for PBPatientMeta.HeartRateMeds, MEMORY[0x277D83D88]);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[10];
    goto LABEL_7;
  }

  sub_251B67AAC(0, qword_2813E6758, type metadata accessor for PBPatientMeta.HumanName, MEMORY[0x277D83D88]);
  v15 = v14;
  v16 = *(*(v14 - 8) + 56);
  v17 = v5 + a4[11];

  return v16(v17, a2, a2, v15);
}

uint64_t sub_251A77A44(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_251C703B4();
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
      sub_251B67AAC(0, qword_2813E6EE8, type metadata accessor for PBDateRange, MEMORY[0x277D83D88]);
      v14 = v13;
      v15 = *(*(v13 - 8) + 48);
      v16 = a1 + *(a3 + 24);

      return v15(v16, a2, v14);
    }
  }
}

void *sub_251A77B98(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = sub_251C703B4();
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
      sub_251B67AAC(0, qword_2813E6EE8, type metadata accessor for PBDateRange, MEMORY[0x277D83D88]);
      v14 = v13;
      v15 = *(*(v13 - 8) + 56);
      v16 = v5 + *(a4 + 24);

      return v15(v16, a2, a2, v14);
    }
  }

  return result;
}

uint64_t sub_251A77CEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 32);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_251C703B4();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 44);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_251A77D98(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 32) = (a2 - 1);
  }

  else
  {
    v7 = sub_251C703B4();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 44);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_251A77E3C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_251C703B4();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 56);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_251A77EE8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_251C703B4();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 56);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_251A77F8C(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_251C703B4();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 32);

      return v11(v12, a2, v10);
    }

    else
    {
      sub_251B67AAC(0, qword_2813E6108, type metadata accessor for PBCycleTracking.Range, MEMORY[0x277D83D88]);
      v14 = v13;
      v15 = *(*(v13 - 8) + 48);
      v16 = a1 + *(a3 + 36);

      return v15(v16, a2, v14);
    }
  }
}

void *sub_251A780E0(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = sub_251C703B4();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 32);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      sub_251B67AAC(0, qword_2813E6108, type metadata accessor for PBCycleTracking.Range, MEMORY[0x277D83D88]);
      v14 = v13;
      v15 = *(*(v13 - 8) + 56);
      v16 = v5 + *(a4 + 36);

      return v15(v16, a2, a2, v14);
    }
  }

  return result;
}

uint64_t sub_251A78234(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_251C703B4();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_251A782E0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_251C703B4();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_251A78384(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_251C703B4();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 44);

      return v11(v12, a2, v10);
    }

    else
    {
      sub_251B67AAC(0, qword_2813E62F8, type metadata accessor for PBCycleTracking.SexualActivity, MEMORY[0x277D83D88]);
      v14 = v13;
      v15 = *(*(v13 - 8) + 48);
      v16 = a1 + *(a3 + 48);

      return v15(v16, a2, v14);
    }
  }
}

uint64_t sub_251A784D8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_251C703B4();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 44);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      sub_251B67AAC(0, qword_2813E62F8, type metadata accessor for PBCycleTracking.SexualActivity, MEMORY[0x277D83D88]);
      v14 = v13;
      v15 = *(*(v13 - 8) + 56);
      v16 = v5 + *(a4 + 48);

      return v15(v16, a2, a2, v14);
    }
  }

  return result;
}

uint64_t sub_251A7863C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_251C703B4();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 44);

    return v9(v10, a2, v8);
  }

  else
  {
    sub_251B67AAC(0, qword_2813E6EE8, type metadata accessor for PBDateRange, MEMORY[0x277D83D88]);
    v13 = v12;
    v14 = *(*(v12 - 8) + 48);
    v15 = a1 + *(a3 + 48);

    return v14(v15, a2, v13);
  }
}

uint64_t sub_251A78760(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_251C703B4();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 44);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    sub_251B67AAC(0, qword_2813E6EE8, type metadata accessor for PBDateRange, MEMORY[0x277D83D88]);
    v15 = v14;
    v16 = *(*(v14 - 8) + 56);
    v17 = a1 + *(a4 + 48);

    return v16(v17, a2, a2, v15);
  }
}

uint64_t sub_251A78890(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_251C703B4();
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
      sub_251B67AAC(0, qword_2813E6EE8, type metadata accessor for PBDateRange, MEMORY[0x277D83D88]);
      v14 = v13;
      v15 = *(*(v13 - 8) + 48);
      v16 = a1 + *(a3 + 28);

      return v15(v16, a2, v14);
    }
  }
}

uint64_t sub_251A789E4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_251C703B4();
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
      sub_251B67AAC(0, qword_2813E6EE8, type metadata accessor for PBDateRange, MEMORY[0x277D83D88]);
      v14 = v13;
      v15 = *(*(v13 - 8) + 56);
      v16 = v5 + *(a4 + 28);

      return v15(v16, a2, a2, v14);
    }
  }

  return result;
}

uint64_t sub_251A78B38(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  sub_251B67AAC(0, qword_2813E5FC8, type metadata accessor for PBCategorySeries.Event.OneOf_AdditionalData, MEMORY[0x277D83D88]);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[7];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = sub_251C703B4();
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[8];
    goto LABEL_9;
  }

  sub_251B67AAC(0, qword_2813E6EE8, type metadata accessor for PBDateRange, MEMORY[0x277D83D88]);
  v15 = v14;
  v16 = *(*(v14 - 8) + 48);
  v17 = a1 + a3[9];

  return v16(v17, a2, v15);
}

uint64_t sub_251A78D04(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
    return result;
  }

  sub_251B67AAC(0, qword_2813E5FC8, type metadata accessor for PBCategorySeries.Event.OneOf_AdditionalData, MEMORY[0x277D83D88]);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[7];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = sub_251C703B4();
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[8];
    goto LABEL_7;
  }

  sub_251B67AAC(0, qword_2813E6EE8, type metadata accessor for PBDateRange, MEMORY[0x277D83D88]);
  v15 = v14;
  v16 = *(*(v14 - 8) + 56);
  v17 = v5 + a4[9];

  return v16(v17, a2, a2, v15);
}

uint64_t sub_251A78ED8(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_251C703B4();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 28);

      return v11(v12, a2, v10);
    }

    else
    {
      sub_251B67AAC(0, qword_2813E6EE8, type metadata accessor for PBDateRange, MEMORY[0x277D83D88]);
      v14 = v13;
      v15 = *(*(v13 - 8) + 48);
      v16 = a1 + *(a3 + 32);

      return v15(v16, a2, v14);
    }
  }
}

uint64_t sub_251A7902C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_251C703B4();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 28);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      sub_251B67AAC(0, qword_2813E6EE8, type metadata accessor for PBDateRange, MEMORY[0x277D83D88]);
      v14 = v13;
      v15 = *(*(v13 - 8) + 56);
      v16 = v5 + *(a4 + 32);

      return v15(v16, a2, a2, v14);
    }
  }

  return result;
}

uint64_t sub_251A79180(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 32);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_251C703B4();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 80);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_251A7922C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 32) = (a2 - 1);
  }

  else
  {
    v7 = sub_251C703B4();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 80);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_251A792D0(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_251C703B4();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 52);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_251A7937C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_251C703B4();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 52);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_251A7956C()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_251A795A4()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 64));

  return MEMORY[0x2821FE8E8](v0, 104, 7);
}

uint64_t sub_251A7960C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_251A7965C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_251A7969C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_251A796D8(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_251C703B4();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_251A79784(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_251C703B4();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_251A79828(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 72);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_251C703B4();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 36);

      return v11(v12, a2, v10);
    }

    else
    {
      sub_251BBE77C(0, &qword_27F47B9A8, type metadata accessor for PBAssociatedData, MEMORY[0x277D83D88]);
      v14 = v13;
      v15 = *(*(v13 - 8) + 48);
      v16 = a1 + *(a3 + 40);

      return v15(v16, a2, v14);
    }
  }
}

uint64_t sub_251A7997C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 72) = (a2 - 1);
  }

  else
  {
    v8 = sub_251C703B4();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 36);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      sub_251BBE77C(0, &qword_27F47B9A8, type metadata accessor for PBAssociatedData, MEMORY[0x277D83D88]);
      v14 = v13;
      v15 = *(*(v13 - 8) + 56);
      v16 = v5 + *(a4 + 40);

      return v15(v16, a2, a2, v14);
    }
  }

  return result;
}

uint64_t sub_251A79AD0(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for PBReference(0);
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
      v13 = type metadata accessor for PBTypedData(0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 28);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_251A79BF4(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for PBReference(0);
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
      v13 = type metadata accessor for PBTypedData(0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_251A79D18()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_251A79D54(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_251C6FAE4();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_251A79E00(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_251C6FAE4();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_251A79EF8()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_251A79F30()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_251A79F68()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_251A79FB8()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_251A79FF8()
{
  v1 = *(v0 + 16);

  if (*(v0 + 32))
  {
    v2 = *(v0 + 40);
  }

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_251A7A048()
{
  v1 = *(v0 + 16);

  if (*(v0 + 24))
  {
    v2 = *(v0 + 32);
  }

  v3 = *(v0 + 48);

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_251A7A0A0()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 56);

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_251A7A0F8()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_251A7A130()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_251A7A168()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 48);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_251A7A1B0(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_251C70014();
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
      sub_251BD2AD0(0, &qword_2813E7500, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
      v14 = v13;
      v15 = *(*(v13 - 8) + 48);
      v16 = a1 + *(a3 + 28);

      return v15(v16, a2, v14);
    }
  }
}

void *sub_251A7A304(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = sub_251C70014();
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
      sub_251BD2AD0(0, &qword_2813E7500, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
      v14 = v13;
      v15 = *(*(v13 - 8) + 56);
      v16 = v5 + *(a4 + 28);

      return v15(v16, a2, a2, v14);
    }
  }

  return result;
}

uint64_t sub_251A7A458(uint64_t a1, uint64_t a2)
{
  v4 = sub_251C70014();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_251A7A4C4(uint64_t a1, uint64_t a2)
{
  v4 = sub_251C70014();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_251A7A548(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for PBTypedData(0);
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

uint64_t sub_251A7A604(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for PBTypedData(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_251A7A6BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_251C6FE64();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 32) + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_251A7A780(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_251C6FE64();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 24);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 32) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_251A7A840(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_251C6FE64();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 32) + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_251A7A904(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_251C6FE64();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 24);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 32) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_251A7A9C4()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_251A7AA00()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_251A7AA3C()
{
  v1 = sub_251C70074();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_251A7AB00()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_251A7AB40()
{
  v1 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_251A7AB80()
{
  v1 = *(v0 + 16);

  if (*(v0 + 24))
  {
    v2 = *(v0 + 32);
  }

  v3 = *(v0 + 48);

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_251A7ABDC()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 40);

  v3 = *(v0 + 64);

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_251A7AC2C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 64);

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_251A7ACA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_251C703B4();
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

uint64_t sub_251A7AD60(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_251C703B4();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_251A7AE18(uint64_t a1, uint64_t a2, int *a3)
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

  v8 = sub_251C703B4();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[16];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  sub_251BE161C(0, &qword_27F479130, MEMORY[0x277D21570], MEMORY[0x277D83D88]);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[17];
    goto LABEL_9;
  }

  sub_251BE161C(0, &qword_27F47BD70, type metadata accessor for PBOtherData, MEMORY[0x277D83D88]);
  v15 = v14;
  v16 = *(*(v14 - 8) + 48);
  v17 = a1 + a3[18];

  return v16(v17, a2, v15);
}

uint64_t sub_251A7AFE4(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = sub_251C703B4();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[16];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  sub_251BE161C(0, &qword_27F479130, MEMORY[0x277D21570], MEMORY[0x277D83D88]);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[17];
    goto LABEL_7;
  }

  sub_251BE161C(0, &qword_27F47BD70, type metadata accessor for PBOtherData, MEMORY[0x277D83D88]);
  v15 = v14;
  v16 = *(*(v14 - 8) + 56);
  v17 = v5 + a4[18];

  return v16(v17, a2, a2, v15);
}

uint64_t sub_251A7B1B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_251C703B4();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_251A7B25C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v7 = sub_251C703B4();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_251A7B338(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_251C703B4();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_251A7B3E4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_251C703B4();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_251A7B4C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    sub_251BE161C(0, &qword_27F47BF48, type metadata accessor for PBUpdateParameters.OneOf_Data, MEMORY[0x277D83D88]);
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
      v13 = sub_251C703B4();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 32);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_251A7B61C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    sub_251BE161C(0, &qword_27F47BF48, type metadata accessor for PBUpdateParameters.OneOf_Data, MEMORY[0x277D83D88]);
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
      v13 = sub_251C703B4();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 32);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_251A7B7B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 28);
  v6 = sub_251C703B4();
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_251A7B828(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 28);
  v7 = sub_251C703B4();
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t sub_251A7B8A4()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_251A7B8E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_251C70014();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_251A7B994(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_251C70014();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_251A7BA58()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_251A7BAEC()
{
  v1 = (type metadata accessor for ClinicalSharingElectrocardiogramQuery(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = *(v0 + v3);

  v6 = v1[7];
  v7 = sub_251C6FAE4();
  (*(*(v7 - 8) + 8))(v0 + v3 + v6, v7);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_251A7BBF4()
{
  v1 = (type metadata accessor for ClinicalSharingElectrocardiogramQuery(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = v0 + v3;
  v6 = *(v0 + v3);

  v7 = v1[7];
  v8 = sub_251C6FAE4();
  (*(*(v8 - 8) + 8))(v5 + v7, v8);

  return MEMORY[0x2821FE8E8](v0, v4 + 8, v2 | 7);
}

uint64_t sub_251A7BD40()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_251A7BD7C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_251A7BDBC()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_251A7BDF4()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_251A7BE2C()
{
  v1 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_251A7C270()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 50, 7);
}

uint64_t sub_251A7C2B8()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_251A7C300()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_251A7C344(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_251C70074();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_3:

    return v9(v10, a2, v8);
  }

  if (a2 == 0x7FFFFFFF)
  {
    v12 = *(a1 + a3[5]);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }

  else
  {
    v13 = sub_251C6FAE4();
    v14 = *(v13 - 8);
    if (*(v14 + 84) == a2)
    {
      v8 = v13;
      v9 = *(v14 + 48);
      v10 = a1 + a3[6];
      goto LABEL_3;
    }

    v15 = sub_251C701E4();
    v16 = *(*(v15 - 8) + 48);
    v17 = a1 + a3[10];

    return v16(v17, a2, v15);
  }
}

uint64_t sub_251A7C4B8(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = sub_251C70074();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_3:

    return v11(v12, a2, a2, v10);
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[5]) = (a2 - 1);
    return result;
  }

  v13 = sub_251C6FAE4();
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + a4[6];
    goto LABEL_3;
  }

  v15 = sub_251C701E4();
  v16 = *(*(v15 - 8) + 56);
  v17 = a1 + a4[10];

  return v16(v17, a2, a2, v15);
}

uint64_t sub_251A7C648()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 48);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_251A7C698()
{
  sub_251C1F190();
  v2 = v1;
  v3 = *(v1 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 64) & ~v4;
  v6 = (*(v3 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v0 + 16);

  v8 = *(v0 + 40);

  v9 = *(v0 + 56);

  (*(v3 + 8))(v0 + v5, v2);
  v10 = v0 + v6;

  if (*(v0 + v6 + 40))
  {
    __swift_destroy_boxed_opaque_existential_1((v10 + 16));
  }

  v11 = *(v10 + 64);

  return MEMORY[0x2821FE8E8](v0, v6 + 72, v4 | 7);
}

uint64_t sub_251A7C7D4()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_251A7C80C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_251A7C84C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_251C70014();
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
      sub_251C291E4(0, &qword_2813E7500, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
      v14 = v13;
      v15 = *(*(v13 - 8) + 48);
      v16 = a1 + *(a3 + 24);

      return v15(v16, a2, v14);
    }
  }
}

uint64_t sub_251A7C9A0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_251C70014();
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
      sub_251C291E4(0, &qword_2813E7500, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
      v14 = v13;
      v15 = *(*(v13 - 8) + 56);
      v16 = v5 + *(a4 + 24);

      return v15(v16, a2, a2, v14);
    }
  }

  return result;
}

uint64_t sub_251A7CAF4()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_251A7CB2C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_251A7CB6C()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_251A7CBB4()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_251A7CBF8()
{
  v1 = *(v0 + 16);

  __swift_destroy_boxed_opaque_existential_1((v0 + 40));
  v2 = *(v0 + 80);

  return MEMORY[0x2821FE8E8](v0, 96, 7);
}

uint64_t sub_251A7CC50()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[5];

  __swift_destroy_boxed_opaque_existential_1(v0 + 6);

  return MEMORY[0x2821FE8E8](v0, 88, 7);
}

uint64_t sub_251A7CD5C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_251A7CD9C()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_251A7CDF0()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_251A7CE28()
{
  v1 = sub_251C70074();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 24);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_251A7CEEC()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_251A7CF2C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_251A7CF6C()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_251A7CFB0()
{
  v1 = sub_251C70014();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_251A7D04C()
{
  v1 = sub_251C70014();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_251A7D124()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_251A7D15C()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_251A7D19C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 12)
  {
    v4 = *(a1 + 8) >> 60;
    if (((4 * v4) & 0xC) != 0)
    {
      return 16 - ((4 * v4) & 0xC | (v4 >> 2));
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = sub_251C703B4();
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
      sub_251C3DAB0(0, &qword_27F47C278, type metadata accessor for PBPlainText, MEMORY[0x277D83D88]);
      v14 = v13;
      v15 = *(*(v13 - 8) + 48);
      v16 = a1 + *(a3 + 24);

      return v15(v16, a2, v14);
    }
  }
}

void *sub_251A7D2FC(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 12)
  {
    *result = 0;
    result[1] = (((-a2 >> 2) & 3) - 4 * a2) << 60;
  }

  else
  {
    v8 = sub_251C703B4();
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
      sub_251C3DAB0(0, &qword_27F47C278, type metadata accessor for PBPlainText, MEMORY[0x277D83D88]);
      v14 = v13;
      v15 = *(*(v13 - 8) + 56);
      v16 = v5 + *(a4 + 24);

      return v15(v16, a2, a2, v14);
    }
  }

  return result;
}

uint64_t sub_251A7D458()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_251A7D498(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_251C6FE64();
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

uint64_t sub_251A7D554(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_251C6FE64();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_251A7D60C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_251C6FE64();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    sub_251AF3A84();
    v12 = v11;
    v13 = *(*(v11 - 8) + 48);
    v14 = a1 + *(a3 + 24);

    return v13(v14, a2, v12);
  }
}

uint64_t sub_251A7D734(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_251C6FE64();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  else
  {
    sub_251AF3A84();
    v12 = v11;
    v13 = *(*(v11 - 8) + 56);
    v14 = a1 + *(a4 + 24);

    return v13(v14, a2, a2, v12);
  }

  return result;
}

uint64_t sub_251A7D85C()
{
  sub_251C4D444();
  v2 = v1;
  v3 = *(v1 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 32) & ~v4;
  v6 = *(v3 + 64);
  sub_251A83028(*(v0 + 16), *(v0 + 24));
  (*(v3 + 8))(v0 + v5, v2);

  return MEMORY[0x2821FE8E8](v0, v5 + v6, v4 | 7);
}

uint64_t sub_251A7D920(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 40);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_251C70014();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_251A7D9CC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 40) = (a2 - 1);
  }

  else
  {
    v7 = sub_251C70014();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_251A7DACC()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_251A7DB0C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_251A7DB48()
{
  v1 = (type metadata accessor for ClinicalSharingQueryDiagnosticsTask(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + 16);

  v6 = v0 + v3;
  v7 = sub_251C70074();
  (*(*(v7 - 8) + 8))(v6, v7);

  v8 = *(v6 + v1[8]);

  v9 = v1[9];
  v10 = sub_251C6FE64();
  (*(*(v10 - 8) + 8))(v6 + v9, v10);
  __swift_destroy_boxed_opaque_existential_1((v6 + v1[10]));
  v11 = v1[12];
  v12 = sub_251C70014();
  (*(*(v12 - 8) + 8))(v6 + v11, v12);
  v13 = *(v0 + v4 + 8);

  return MEMORY[0x2821FE8E8](v0, v4 + 16, v2 | 7);
}

uint64_t sub_251A7DCE0()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[5];

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_251A7DD28()
{
  v1 = (type metadata accessor for ClinicalSharingSyncTask() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v26 = *(*v1 + 64);
  v4 = *(v0 + 16);

  v5 = v1[8];
  v6 = sub_251C70014();
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);
  __swift_destroy_boxed_opaque_existential_1((v0 + v3 + v1[9]));
  v7 = v1[10];
  v8 = sub_251C70074();
  (*(*(v8 - 8) + 8))(v0 + v3 + v7, v8);
  v9 = *(v0 + v3 + v1[11] + 8);

  v10 = (v0 + v3 + v1[13]);
  v11 = v10[1];

  v12 = v10[3];

  v13 = v10[4];

  __swift_destroy_boxed_opaque_existential_1(v10 + 6);
  v14 = v0 + v3 + v1[14];
  v15 = sub_251C6FE64();
  v16 = *(*(v15 - 8) + 8);
  v16(v14, v15);
  v17 = type metadata accessor for ClinicalSharingCloudStandardAPI();
  v16(v14 + v17[5], v15);

  v18 = *(v14 + v17[8] + 8);

  v19 = *(v14 + v17[9] + 8);

  v20 = *(v0 + v3 + v1[16]);

  v21 = (v0 + v3 + v1[17]);
  if (*v21)
  {
    v22 = v21[1];
  }

  v23 = (v26 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v24 = *(v0 + v23 + 8);

  return MEMORY[0x2821FE8E8](v0, v23 + 16, v2 | 7);
}

uint64_t sub_251A7DF98()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_251A7DFD0()
{
  v1 = type metadata accessor for ClinicalSharingSyncTask();
  v2 = (v1 - 8);
  v3 = *(*(v1 - 8) + 80);
  v4 = (v3 + 16) & ~v3;
  v30 = *(*(v1 - 8) + 64);
  v5 = *(v1 + 24);
  v6 = sub_251C70014();
  (*(*(v6 - 8) + 8))(v0 + v4 + v5, v6);
  __swift_destroy_boxed_opaque_existential_1((v0 + v4 + v2[9]));
  v7 = v2[10];
  v8 = sub_251C70074();
  (*(*(v8 - 8) + 8))(v0 + v4 + v7, v8);
  v9 = *(v0 + v4 + v2[11] + 8);

  v10 = (v0 + v4 + v2[13]);
  v11 = v10[1];

  v12 = v10[3];

  v13 = v10[4];

  __swift_destroy_boxed_opaque_existential_1(v10 + 6);
  v14 = v0 + v4 + v2[14];
  v15 = sub_251C6FE64();
  v16 = *(*(v15 - 8) + 8);
  v16(v14, v15);
  v17 = type metadata accessor for ClinicalSharingCloudStandardAPI();
  v16(v14 + v17[5], v15);

  v18 = *(v14 + v17[8] + 8);

  v19 = *(v14 + v17[9] + 8);

  v20 = *(v0 + v4 + v2[16]);

  v21 = (v0 + v4 + v2[17]);
  if (*v21)
  {
    v22 = v21[1];
  }

  v23 = (v30 + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v24 = (v23 + 15) & 0xFFFFFFFFFFFFFFF8;
  v25 = (v24 + 15) & 0xFFFFFFFFFFFFFFF8;
  v26 = *(v0 + v23);

  v27 = *(v0 + v24);

  v28 = *(v0 + v25);

  return MEMORY[0x2821FE8E8](v0, v25 + 8, v3 | 7);
}

uint64_t sub_251A7E254()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_251A7E28C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_251A7E2C4()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_251A7E300()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_251A7E338()
{
  v1 = sub_251C70074();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_251A7E3C0(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_251C6FAE4();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

void *sub_251A7E46C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_251C6FAE4();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_251A7E52C()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_251A7E564()
{
  v1 = sub_251C6F9A4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_251A7E5EC()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_251A7E628()
{
  v1 = sub_251C6F9A4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  v6 = *(v0 + v5);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_251A7E6C4()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_251A7E6FC()
{
  v1 = sub_251C6F9A4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  v8 = *(v0 + v5);

  v9 = *(v0 + v7);

  return MEMORY[0x2821FE8E8](v0, v7 + 8, v3 | 7);
}

uint64_t sub_251A7E7C0()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_251A7E808()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_251A7E840()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_251A7E8D8(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t getEnumTagSinglePayload for PBTimeSeries.Value.OneOf_AdditionalData(uint64_t a1, int a2)
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

uint64_t sub_251A7E910(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for PBNodeType(uint64_t result, int a2, int a3)
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

uint64_t sub_251A7E960(uint64_t a1)
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

uint64_t sub_251A7E97C(uint64_t result, int a2)
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

uint64_t sub_251A7E99C@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  *a2 = xmmword_251C745D0;
  v2 = a2 + *(a1 + 20);
  return sub_251C703A4();
}

uint64_t sub_251A7E9D0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = MEMORY[0x277D84F90];
  v2 = a2 + *(a1 + 20);
  return sub_251C703A4();
}

uint64_t sub_251A7EA10@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t sub_251A7EA4C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_251A7EA74@<X0>(uint64_t *a1@<X8>)
{
  result = nullsub_1(*v1, *(v1 + 8));
  *a1 = result;
  return result;
}

uint64_t sub_251A7EB2C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_251A7EB4C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 4) = v3;
  return result;
}

uint64_t sub_251A7EBF0()
{
  v1 = *v0;
  sub_251C71AA4();
  MEMORY[0x25308D860](v1);
  return sub_251C71AD4();
}

uint64_t sub_251A7EC38()
{
  v1 = *v0;
  sub_251C71AA4();
  MEMORY[0x25308D860](v1);
  return sub_251C71AD4();
}

uint64_t sub_251A7EC7C()
{
  if (*v0)
  {
    result = 1635017060;
  }

  else
  {
    result = 0x54746E65746E6F63;
  }

  *v0;
  return result;
}

uint64_t sub_251A7ECB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x54746E65746E6F63 && a2 == 0xEB00000000657079;
  if (v6 || (sub_251C719D4() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 1635017060 && a2 == 0xE400000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_251C719D4();

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

uint64_t sub_251A7EDB0(uint64_t a1)
{
  v2 = sub_251A80A40();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_251A7EDEC(uint64_t a1)
{
  v2 = sub_251A80A40();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_251A7EE28@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_251A7FC44(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
    a2[3] = v7;
  }

  return result;
}

uint64_t sub_251A7EE58()
{
  v1 = *v0;
  sub_251C71AA4();
  MEMORY[0x25308D860](v1);
  return sub_251C71AD4();
}

uint64_t sub_251A7EECC()
{
  v1 = *v0;
  sub_251C71AA4();
  MEMORY[0x25308D860](v1);
  return sub_251C71AD4();
}

uint64_t sub_251A7EF18(uint64_t a1, id *a2)
{
  result = sub_251C70EF4();
  *a2 = 0;
  return result;
}

uint64_t sub_251A7EF90(uint64_t a1, id *a2)
{
  v3 = sub_251C70F04();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_251A7F010@<X0>(uint64_t *a1@<X8>)
{
  sub_251C70F14();
  v2 = sub_251C70EE4();

  *a1 = v2;
  return result;
}

uint64_t sub_251A7F054(uint64_t a1)
{
  v2 = sub_251A7F4A0(&qword_27F478C18, type metadata accessor for HKError);

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_251A7F0C0(uint64_t a1)
{
  v2 = sub_251A7F4A0(&qword_27F478C18, type metadata accessor for HKError);

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t sub_251A7F12C(uint64_t a1)
{
  v2 = sub_251A7F4A0(&qword_27F478C50, type metadata accessor for HKError);

  return MEMORY[0x28211CA68](a1, v2);
}

uint64_t sub_251A7F1A8(uint64_t a1)
{
  v2 = sub_251A7F4A0(&qword_27F478C50, type metadata accessor for HKError);

  return MEMORY[0x28211CAD0](a1, v2);
}

uint64_t sub_251A7F214(uint64_t a1)
{
  v2 = sub_251A7F4A0(&qword_27F478C50, type metadata accessor for HKError);

  return MEMORY[0x28211CA88](a1, v2);
}

uint64_t sub_251A7F280(void *a1, uint64_t a2)
{
  v4 = sub_251A7F4A0(&qword_27F478C50, type metadata accessor for HKError);
  v5 = a1;

  return MEMORY[0x28211CA70](v5, a2, v4);
}

uint64_t sub_251A7F334(uint64_t a1, uint64_t a2)
{
  v4 = sub_251A7F4A0(&qword_27F478C50, type metadata accessor for HKError);

  return MEMORY[0x28211CAB8](a1, a2, v4);
}

uint64_t sub_251A7F3B0()
{
  v2 = *v0;
  sub_251C71AA4();
  sub_251C70E94();
  return sub_251C71AD4();
}

uint64_t sub_251A7F4A0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_251A7F7B8(uint64_t a1)
{
  v2 = sub_251A7F4A0(&qword_27F478C78, type metadata accessor for HKClinicalGatewayFeatureName);
  v3 = sub_251A7F4A0(&qword_27F478C80, type metadata accessor for HKClinicalGatewayFeatureName);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_251A7F874()
{
  sub_251A7F4A0(&qword_27F478C50, type metadata accessor for HKError);

  return sub_251C6FD24();
}

uint64_t sub_251A7F8F8(uint64_t a1)
{
  v2 = sub_251A7F4A0(&qword_27F478C58, type metadata accessor for FileProtectionType);
  v3 = sub_251A7F4A0(&qword_27F478C60, type metadata accessor for FileProtectionType);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_251A7F9B4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_251C70EE4();

  *a2 = v5;
  return result;
}

uint64_t sub_251A7F9FC(uint64_t a1)
{
  v2 = sub_251A7F4A0(&qword_27F478C68, type metadata accessor for FileAttributeKey);
  v3 = sub_251A7F4A0(&qword_27F478C70, type metadata accessor for FileAttributeKey);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_251A7FAB8()
{
  v1 = *v0;
  v2 = sub_251C70F14();
  v3 = MEMORY[0x25308CE20](v2);

  return v3;
}

uint64_t sub_251A7FAF4()
{
  v1 = *v0;
  sub_251C70F14();
  sub_251C70FB4();
}

uint64_t sub_251A7FB48()
{
  v1 = *v0;
  sub_251C70F14();
  sub_251C71AA4();
  sub_251C70FB4();
  v2 = sub_251C71AD4();

  return v2;
}

uint64_t sub_251A7FBBC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = sub_251C70F14();
  v6 = v5;
  if (v4 == sub_251C70F14() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_251C719D4();
  }

  return v9 & 1;
}

uint64_t sub_251A7FC44(uint64_t *a1)
{
  sub_251A809E4();
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_251A80A40();
  sub_251C71B04();
  if (!v1)
  {
    v13 = 0;
    v9 = sub_251C718B4();
    v12 = 1;
    sub_251C71874();
    (*(v5 + 8))(v8, v4);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v9;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_251A7FEF8(uint64_t a1, int a2)
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

uint64_t sub_251A7FF18(uint64_t result, int a2, int a3)
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

unint64_t sub_251A80740()
{
  result = qword_27F478C40;
  if (!qword_27F478C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F478C40);
  }

  return result;
}

uint64_t sub_251A80824(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = (a1 + 32);
  do
  {
    v6 = *v4++;
    v5 = v6;
    if ((v6 & ~result) == 0)
    {
      v5 = 0;
    }

    result |= v5;
    --v1;
  }

  while (v1);
  return result;
}

void sub_251A808AC(uint64_t a1, unint64_t *a2)
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

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_251A8094C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_251A80994(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_251A809E4()
{
  if (!qword_27F478CB8)
  {
    sub_251A80A40();
    v0 = sub_251C718E4();
    if (!v1)
    {
      atomic_store(v0, &qword_27F478CB8);
    }
  }
}

unint64_t sub_251A80A40()
{
  result = qword_27F478CC0;
  if (!qword_27F478CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F478CC0);
  }

  return result;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_1(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t getEnumTagSinglePayload for ClinicalSharingFHIRAttachment.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ClinicalSharingFHIRAttachment.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_251A80C94()
{
  result = qword_27F478CC8;
  if (!qword_27F478CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F478CC8);
  }

  return result;
}

unint64_t sub_251A80CEC()
{
  result = qword_27F478CD0;
  if (!qword_27F478CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F478CD0);
  }

  return result;
}

unint64_t sub_251A80D44()
{
  result = qword_27F478CD8;
  if (!qword_27F478CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F478CD8);
  }

  return result;
}

uint64_t type metadata accessor for ClinicalSharingWalkingSteadinessClassificationQuery()
{
  result = qword_27F478D40;
  if (!qword_27F478D40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_251A80E90()
{
  result = type metadata accessor for ClinicalSharingQueryContext(319);
  if (v1 <= 0x3F)
  {
    result = sub_251C6FAE4();
    if (v2 <= 0x3F)
    {
      result = sub_251A8223C(319, &qword_27F478D50, 0x277CCD8D8);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_251A80F3C()
{
  v1 = type metadata accessor for ClinicalSharingWalkingSteadinessClassificationQuery();
  v2 = v1 - 8;
  v47 = *(v1 - 8);
  v46 = *(v47 + 64);
  MEMORY[0x28223BE20](v1);
  v45 = v41 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251A82308(0, &qword_27F478D58, type metadata accessor for PBTypedData);
  v5 = *(v4 - 8);
  v50 = v4;
  v51 = v5;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v48 = v41 - v7;
  sub_251A822E8(0);
  v9 = *(v8 - 8);
  v52 = v8;
  v53 = v9;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v49 = v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_251C70014();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(v2 + 28);
  v18 = *(v0 + *(v2 + 32));
  v19 = objc_opt_self();
  v20 = v0;
  sub_251C6FAB4();
  v21 = sub_251C6FF94();
  v22 = *(v13 + 8);
  v22(v16, v12);
  sub_251C6FA84();
  v23 = sub_251C6FF94();
  v22(v16, v12);
  v24 = [v19 predicateForSamplesWithStartDate:v21 endDate:v23 options:0];

  v25 = [objc_allocWithZone(MEMORY[0x277CCD848]) initWithSampleType:v18 predicate:v24];
  sub_251BFC460(0xD000000000000021, 0x8000000251C89CD0, v18, 5, 1);
  v43 = v20;
  sub_251A823B4(*v20 + 16, v55);
  __swift_project_boxed_opaque_existential_1(v55, v55[3]);
  sub_251A82418();
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_251C74560;
  *(v26 + 32) = v25;
  v27 = off_2863FD750;
  v44 = v25;
  v28 = v27();
  v41[1] = v28;

  v54 = v28;
  v42 = type metadata accessor for ClinicalSharingWalkingSteadinessClassificationQuery;
  v29 = v20;
  v30 = v45;
  sub_251A82718(v29, v45, type metadata accessor for ClinicalSharingWalkingSteadinessClassificationQuery);
  v31 = (*(v47 + 80) + 16) & ~*(v47 + 80);
  v32 = swift_allocObject();
  sub_251A82780(v30, v32 + v31, type metadata accessor for ClinicalSharingWalkingSteadinessClassificationQuery);
  v33 = swift_allocObject();
  *(v33 + 16) = sub_251A8246C;
  *(v33 + 24) = v32;
  sub_251A82164();
  type metadata accessor for PBTypedData(0);
  sub_251A8265C(&qword_27F478D78, sub_251A82164);
  v34 = v48;
  sub_251C70AA4();

  __swift_destroy_boxed_opaque_existential_1(v55);
  sub_251A82718(v43, v30, v42);
  v35 = swift_allocObject();
  sub_251A82780(v30, v35 + v31, type metadata accessor for ClinicalSharingWalkingSteadinessClassificationQuery);
  type metadata accessor for ClinicalSharingQueryOutput(0);
  v37 = v49;
  v36 = v50;
  sub_251C70774();

  (*(v51 + 8))(v34, v36);
  sub_251A8265C(&qword_27F478D88, sub_251A822E8);
  v38 = v52;
  v39 = sub_251C70A94();

  (*(v53 + 8))(v37, v38);
  return v39;
}

uint64_t sub_251A81570@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_251A826A4(0, &qword_27F478D90, MEMORY[0x277CC88A8]);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v53 - v7;
  v9 = type metadata accessor for PBDateRange(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v62 = &v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for PBTypedData(0);
  v63 = *(v13 - 1);
  v14 = *(v63 + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for PBCategorySeries(0);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v17);
  MEMORY[0x28223BE20](v19);
  v22 = &v53 - v21;
  if (a1 >> 62)
  {
    v61 = a1;
    v45 = v20;
    v46 = sub_251C717F4();
    v20 = v45;
    a1 = v61;
    if (v46)
    {
LABEL_3:
      v59 = v20;
      v60 = v8;
      v61 = a2;
      v23 = sub_251B14FF0(a1);
      if (v23)
      {
        v24 = v23;
        MEMORY[0x28223BE20](v23);
        v52 = v2;
        sub_251C5608C(sub_251A826F8, (&v53 - 4), v24);
        v26 = v25;

        *v22 = 0;
        *(v22 + 1) = 0xE000000000000000;
        v27 = &v22[*(v17 + 24)];
        sub_251C703A4();
        v28 = *(v10 + 56);
        v28(&v22[*(v17 + 28)], 1, 1, v9);
        v55 = v28;
        *(v22 + 2) = v26;
        *v16 = 0;
        v16[8] = 1;
        v29 = v13[5];
        v30 = type metadata accessor for PBTypedData.OneOf_Raw(0);
        v31 = *(v30 - 8);
        v57 = *(v31 + 56);
        v58 = v31 + 56;
        v57(&v16[v29], 1, 1, v30);
        v32 = &v16[v13[6]];
        sub_251C703A4();
        v33 = v9;
        v54 = v9;
        v34 = v13[7];
        v28(&v16[v34], 1, 1, v33);
        v35 = *(type metadata accessor for ClinicalSharingWalkingSteadinessClassificationQuery() + 20);
        v36 = sub_251C6FAE4();
        v37 = *(v36 - 8);
        v56 = v13;
        v38 = v37;
        v39 = v2 + v35;
        v40 = v60;
        (*(v37 + 16))(v60, v39, v36);
        (*(v38 + 56))(v40, 0, 1, v36);
        v41 = v62;
        sub_251BFC464(5, 1, v40);
        sub_251A82844(v40, &qword_27F478D90, MEMORY[0x277CC88A8]);
        sub_251A82844(&v16[v34], qword_2813E6EE8, type metadata accessor for PBDateRange);
        sub_251A82780(v41, &v16[v34], type metadata accessor for PBDateRange);
        v55(&v16[v34], 0, 1, v54);
        *v16 = 125;
        v16[8] = 1;
        v42 = v59;
        sub_251A82718(v22, v59, type metadata accessor for PBCategorySeries);
        sub_251A82844(&v16[v29], qword_2813E6C90, type metadata accessor for PBTypedData.OneOf_Raw);
        sub_251A82780(v42, &v16[v29], type metadata accessor for PBCategorySeries);
        swift_storeEnumTagMultiPayload();
        v57(&v16[v29], 0, 1, v30);
        v43 = v61;
        sub_251A82780(v16, v61, type metadata accessor for PBTypedData);
        (*(v63 + 56))(v43, 0, 1, v56);
        return sub_251A827E8(v22);
      }

      else
      {
        v64 = 0;
        v65 = 0xE000000000000000;
        sub_251C716A4();

        v64 = 0xD000000000000023;
        v65 = 0x8000000251C89D50;
        v48 = [*(v2 + *(type metadata accessor for ClinicalSharingWalkingSteadinessClassificationQuery() + 24)) description];
        v49 = sub_251C70F14();
        v51 = v50;

        MEMORY[0x25308CDA0](v49, v51);

        result = sub_251C717E4();
        __break(1u);
      }

      return result;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v47 = *(v63 + 56);

  return v47(a2, 1, 1, v13);
}

void sub_251A81C28(void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v55 = a2;
  v54 = MEMORY[0x277CC9578];
  sub_251A826A4(0, &qword_2813E7500, MEMORY[0x277CC9578]);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v9 = v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = v45 - v10;
  v12 = type metadata accessor for PBDateRange(0);
  v51 = v12;
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v53 = v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *a1;
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0xE000000000000000;
  *(a3 + 24) = 0;
  *(a3 + 32) = 0xE000000000000000;
  v17 = type metadata accessor for PBCategorySeries.Event(0);
  v18 = a3 + v17[7];
  v19 = type metadata accessor for PBCategorySeries.Event.OneOf_AdditionalData(0);
  v20 = *(v19 - 8);
  v21 = *(v20 + 56);
  v47 = v19;
  v48 = v18;
  v45[1] = v20 + 56;
  v46 = v21;
  (v21)(v18, 1, 1);
  v22 = a3 + v17[8];
  sub_251C703A4();
  v23 = v17[9];
  v24 = *(v13 + 56);
  v50 = v13 + 56;
  v52 = v24;
  v24(a3 + v23, 1, 1, v12);
  v25 = [v16 startDate];
  sub_251C6FFE4();

  v26 = sub_251C70014();
  v27 = *(*(v26 - 8) + 56);
  v27(v11, 0, 1, v26);
  v28 = [v16 endDate];
  sub_251C6FFE4();

  v27(v9, 0, 1, v26);
  v29 = v53;
  sub_251C15BE4(v11, v9);
  v30 = v54;
  sub_251A82844(v9, &qword_2813E7500, v54);
  sub_251A82844(v11, &qword_2813E7500, v30);
  sub_251A82844(a3 + v23, qword_2813E6EE8, type metadata accessor for PBDateRange);
  sub_251A82780(v29, a3 + v23, type metadata accessor for PBDateRange);
  v52(a3 + v23, 0, 1, v51);
  v31 = [v16 quantity];
  v32 = [objc_opt_self() percentUnit];
  [v31 doubleValueForUnit_];
  v34 = v33;

  v35 = v34 * 100.0;
  if (COERCE__INT64(fabs(v34 * 100.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_15;
  }

  if (v35 <= -2147483650.0)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v35 >= 2147483650.0)
  {
LABEL_16:
    __break(1u);
    return;
  }

  *a3 = v35;
  v36 = [v16 quantity];
  v37 = v49;
  v38 = sub_251C71504();
  if (v37)
  {
  }

  else
  {
    if (v38 == 1)
    {
      v42 = 1;
      v43 = 0xE200000000000000;
      v44 = 27503;
      v40 = v47;
      v39 = v48;
      v41 = v46;
    }

    else
    {
      v40 = v47;
      v39 = v48;
      v41 = v46;
      if (v38 == 3)
      {
        v42 = 3;
        v43 = 0xE700000000000000;
        v44 = 0x776F4C79726576;
      }

      else if (v38 == 2)
      {
        v42 = 2;
        v43 = 0xE300000000000000;
        v44 = 7827308;
      }

      else
      {
        v42 = 0;
        v43 = 0xE600000000000000;
        v44 = 0x746553746F6ELL;
      }
    }

    *(a3 + 8) = v44;
    *(a3 + 16) = v43;
    sub_251A82844(v39, qword_2813E5FC8, type metadata accessor for PBCategorySeries.Event.OneOf_AdditionalData);
    *v39 = v42;
    *(v39 + 8) = 1;
    swift_storeEnumTagMultiPayload();
    v41(v39, 0, 1, v40);
  }
}

void sub_251A82164()
{
  if (!qword_27F478D60)
  {
    sub_251A821D4();
    sub_251A82284();
    v0 = sub_251C70974();
    if (!v1)
    {
      atomic_store(v0, &qword_27F478D60);
    }
  }
}

void sub_251A821D4()
{
  if (!qword_27F478D68)
  {
    sub_251A8223C(255, &qword_27F478D70, 0x277CCD8A8);
    v0 = sub_251C711A4();
    if (!v1)
    {
      atomic_store(v0, &qword_27F478D68);
    }
  }
}

uint64_t sub_251A8223C(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

unint64_t sub_251A82284()
{
  result = qword_2813E1C30;
  if (!qword_2813E1C30)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_2813E1C30);
  }

  return result;
}

void sub_251A82308(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    sub_251A82164();
    a3(255);
    sub_251A8265C(&qword_27F478D78, sub_251A82164);
    v5 = sub_251C70784();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_251A823B4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

void sub_251A82418()
{
  if (!qword_27F47BD20)
  {
    v0 = sub_251C719B4();
    if (!v1)
    {
      atomic_store(v0, &qword_27F47BD20);
    }
  }
}

uint64_t sub_251A8246C@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for ClinicalSharingWalkingSteadinessClassificationQuery() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));
  return sub_251A81570(a1, a2);
}

uint64_t objectdestroyTm()
{
  v1 = (type metadata accessor for ClinicalSharingWalkingSteadinessClassificationQuery() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = *(v0 + v3);

  v6 = v1[7];
  v7 = sub_251C6FAE4();
  (*(*(v7 - 8) + 8))(v0 + v3 + v6, v7);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_251A825E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for ClinicalSharingWalkingSteadinessClassificationQuery() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));
  return sub_251BEFD70(a1, 0, a2);
}

uint64_t sub_251A8265C(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_251A826A4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_251C71574();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_251A82718(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_251A82780(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_251A827E8(uint64_t a1)
{
  v2 = type metadata accessor for PBCategorySeries(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_251A82844(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_251A826A4(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_251A828A0(uint64_t a1, uint64_t a2)
{
  v5 = [v2 interactions];
  sub_251A82AA4();
  v6 = sub_251C71154();

  if (v6 >> 62)
  {
LABEL_20:
    v7 = sub_251C717F4();
    if (v7)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v7)
    {
LABEL_3:
      v8 = 0;
      do
      {
        if ((v6 & 0xC000000000000001) != 0)
        {
          v9 = MEMORY[0x25308D460](v8, v6);
          v10 = v8 + 1;
          if (__OFADD__(v8, 1))
          {
LABEL_16:
            __break(1u);
LABEL_17:

LABEL_18:

            return v21;
          }
        }

        else
        {
          if (v8 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_20;
          }

          v9 = *(v6 + 8 * v8 + 32);
          v10 = v8 + 1;
          if (__OFADD__(v8, 1))
          {
            goto LABEL_16;
          }
        }

        v21 = v9;
        v11 = a1;
        v12 = a2;
        v13 = [v9 name];
        v14 = sub_251C70F14();
        v16 = v15;

        a2 = v12;
        if (v14 == v11 && v16 == v12)
        {
          goto LABEL_17;
        }

        a1 = v11;
        v18 = sub_251C719D4();

        if (v18)
        {
          goto LABEL_18;
        }

        ++v8;
      }

      while (v10 != v7);
    }
  }

  sub_251A82AF0();
  swift_allocError();
  *v20 = a1;
  *(v20 + 8) = a2;
  *(v20 + 16) = 3;
  swift_willThrow();
}

unint64_t sub_251A82AA4()
{
  result = qword_27F478D98;
  if (!qword_27F478D98)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F478D98);
  }

  return result;
}

unint64_t sub_251A82AF0()
{
  result = qword_27F478DA0;
  if (!qword_27F478DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F478DA0);
  }

  return result;
}

uint64_t sub_251A82B44@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *a5 = xmmword_251C745D0;
  *(a5 + 16) = 0;
  *(a5 + 24) = 1;
  *(a5 + 32) = 0;
  *(a5 + 40) = 1;
  *(a5 + 48) = 0;
  *(a5 + 56) = 0xE000000000000000;
  v10 = a5 + *(type metadata accessor for PBRevocationAuthorization() + 32);
  sub_251C703A4();
  v11 = sub_251C6FBB4();
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  swift_allocObject();
  v20 = 0x2000000000;
  v21 = sub_251C6FB84() | 0x4000000000000000;
  v14 = sub_251A82C9C(&v20, 0x20uLL);
  if (v14)
  {
    v15 = v14;

    sub_251A82FD4();
    swift_allocError();
    *v16 = v15;
    swift_willThrow();
    sub_251A83028(v20, v21);
    return sub_251A8307C(a5);
  }

  else
  {
    v18 = v20;
    v19 = v21;
    result = sub_251A83028(*a5, *(a5 + 8));
    *a5 = v18;
    *(a5 + 8) = v19;
    *(a5 + 48) = a3;
    *(a5 + 56) = a4;
    *(a5 + 16) = 1;
    *(a5 + 24) = 1;
    *(a5 + 32) = a1;
    *(a5 + 40) = a2 & 1;
  }

  return result;
}

uint64_t sub_251A82C9C(uint64_t *a1, size_t count)
{
  v22 = *MEMORY[0x277D85DE8];
  v6 = *a1;
  v5 = a1[1];
  v7 = v5 >> 62;
  if ((v5 >> 62) > 1)
  {
    if (v7 == 2)
    {
      v10 = *a1;

      sub_251A83028(v6, v5);
      *&bytes = v6;
      *(&bytes + 1) = v5 & 0x3FFFFFFFFFFFFFFFLL;
      *a1 = xmmword_251C745D0;
      sub_251A83028(0, 0xC000000000000000);
      sub_251C6FE74();
      v11 = *(&bytes + 1);
      result = sub_251A830D8(*(bytes + 16), *(bytes + 24), *(&bytes + 1), count);
      *a1 = bytes;
      a1[1] = v11 | 0x8000000000000000;
    }

    else
    {
      *(&bytes + 7) = 0;
      *&bytes = 0;
      result = SecRandomCopyBytes(*MEMORY[0x277CDC540], count, &bytes);
    }

    goto LABEL_16;
  }

  if (!v7)
  {
    sub_251A83028(v6, v5);
    *&bytes = v6;
    WORD4(bytes) = v5;
    BYTE10(bytes) = BYTE2(v5);
    BYTE11(bytes) = BYTE3(v5);
    BYTE12(bytes) = BYTE4(v5);
    BYTE13(bytes) = BYTE5(v5);
    BYTE14(bytes) = BYTE6(v5);
    result = SecRandomCopyBytes(*MEMORY[0x277CDC540], count, &bytes);
    v9 = DWORD2(bytes) | ((WORD6(bytes) | (BYTE14(bytes) << 16)) << 32);
    *a1 = bytes;
    a1[1] = v9;
    goto LABEL_16;
  }

  v12 = v5 & 0x3FFFFFFFFFFFFFFFLL;

  sub_251A83028(v6, v5);
  *a1 = xmmword_251C745D0;
  sub_251A83028(0, 0xC000000000000000);
  v13 = v6 >> 32;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    if (v13 < v6)
    {
LABEL_18:
      __break(1u);
      goto LABEL_19;
    }

    if (sub_251C6FB74() && __OFSUB__(v6, sub_251C6FBA4()))
    {
LABEL_19:
      __break(1u);
    }

    v14 = sub_251C6FBB4();
    v15 = *(v14 + 48);
    v16 = *(v14 + 52);
    swift_allocObject();
    v17 = sub_251C6FB54();

    v12 = v17;
  }

  if (v13 < v6)
  {
    __break(1u);
    goto LABEL_18;
  }

  v18 = sub_251A830D8(v6, v6 >> 32, v12, count);

  *a1 = v6;
  a1[1] = v12 | 0x4000000000000000;
  if (!v2)
  {
    result = v18;
  }

LABEL_16:
  v19 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t sub_251A82FD4()
{
  result = qword_27F478DA8;
  if (!qword_27F478DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F478DA8);
  }

  return result;
}

uint64_t sub_251A83028(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_251A8307C(uint64_t a1)
{
  v2 = type metadata accessor for PBRevocationAuthorization();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_251A830D8(uint64_t a1, uint64_t a2, uint64_t a3, size_t a4)
{
  result = sub_251C6FB74();
  if (result)
  {
    v8 = result;
    result = sub_251C6FBA4();
    v9 = a1 - result;
    if (__OFSUB__(a1, result))
    {
      __break(1u);
    }

    else if (!__OFSUB__(a2, a1))
    {
      sub_251C6FB94();
      return SecRandomCopyBytes(*MEMORY[0x277CDC540], a4, (v8 + v9));
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_251A8316C()
{
  v1 = [v0 sampleType];
  v2 = [v1 code];

  if (v2 != 147 && v2 != 140)
  {
    return;
  }

  v3 = [v0 metadata];
  if (!v3)
  {
    return;
  }

  v4 = v3;
  v5 = sub_251C70E54();

  v6 = *MEMORY[0x277CCC4B0];
  v7 = sub_251C70F14();
  if (!*(v5 + 16))
  {

    goto LABEL_12;
  }

  v9 = sub_251AC8C58(v7, v8);
  v11 = v10;

  if ((v11 & 1) == 0)
  {
LABEL_12:

    return;
  }

  sub_251A83384(*(v5 + 56) + 32 * v9, v17);

  sub_251A833E0();
  if (swift_dynamicCast())
  {
    v12 = [objc_opt_self() _countPerMinuteUnit];
    [v16 doubleValueForUnit_];
    v14 = v13;
    v15 = v13;

    if ((*&v15 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v14 > -9.22337204e18)
    {
      if (v14 < 9.22337204e18)
      {
        v17[0] = v14;
        sub_251C719A4();

        return;
      }

      goto LABEL_16;
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }
}

uint64_t sub_251A83384(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_251A833E0()
{
  result = qword_27F478DB0;
  if (!qword_27F478DB0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F478DB0);
  }

  return result;
}

id sub_251A8345C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DefaultDaemonXPCService();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_251A835F8(uint64_t a1, char a2)
{
  *(v3 + 240) = a2;
  *(v3 + 136) = a1;
  *(v3 + 144) = v2;
  v4 = type metadata accessor for WebRequestResponseError(0);
  *(v3 + 152) = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  *(v3 + 160) = swift_task_alloc();
  v6 = sub_251C6FE64();
  *(v3 + 168) = v6;
  v7 = *(v6 - 8);
  *(v3 + 176) = v7;
  v8 = *(v7 + 64) + 15;
  *(v3 + 184) = swift_task_alloc();
  *(v3 + 192) = swift_task_alloc();
  v9 = type metadata accessor for IssuerDirectoryWebRequest();
  *(v3 + 200) = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  *(v3 + 208) = swift_task_alloc();
  *(v3 + 216) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_251A83734, 0, 0);
}

void sub_251A83734()
{
  v1 = *(v0 + 216);
  v2 = *(v0 + 192);
  v3 = *(v0 + 200);
  v4 = *(v0 + 144);
  sub_251C37288(*(v0 + 240) & 1, v2);
  sub_251A83F04(v2, v1);
  v5 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v4[3]);
  *(v0 + 104) = v3;
  *(v0 + 112) = &off_2863F5F98;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 80));
  sub_251A85630(v1, boxed_opaque_existential_1);
  v7 = *(v5 + 8);
  v11 = v7 + *v7;
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v0 + 224) = v9;
  *v9 = v0;
  v9[1] = sub_251A838D4;
  v10 = *(v0 + 160);

  __asm { BRAA            X8, X16 }
}

uint64_t sub_251A838D4()
{
  v2 = *v1;
  v3 = *(*v1 + 224);
  v6 = *v1;
  *(*v1 + 232) = v0;

  if (v0)
  {
    v4 = sub_251A83DFC;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1((v2 + 80));
    v4 = sub_251A839F0;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_251A839F0()
{
  v46 = v0;
  v1 = v0[8];
  if (v1 >> 60 == 15)
  {
    if (qword_2813E26F8 != -1)
    {
      swift_once();
    }

    v2 = v0[26];
    v3 = v0[27];
    v4 = sub_251C70764();
    __swift_project_value_buffer(v4, qword_2813E8130);
    sub_251A85630(v3, v2);
    v5 = sub_251C70744();
    v6 = sub_251C713D4();
    v7 = os_log_type_enabled(v5, v6);
    v8 = v0[26];
    if (v7)
    {
      v43 = v0[25];
      v10 = v0[22];
      v9 = v0[23];
      v11 = v0[21];
      v12 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v45[0] = v44;
      *v12 = 136315394;
      v0[15] = &type metadata for IssuerDirectoryWebRequestHandler;
      sub_251A85834();
      v13 = sub_251C70F74();
      v15 = sub_251B10780(v13, v14, v45);

      *(v12 + 4) = v15;
      *(v12 + 12) = 2080;
      v16 = v8 + *(v43 + 24);
      sub_251C6FD94();
      sub_251A8587C(&qword_27F478E68, MEMORY[0x277CC9260]);
      v17 = sub_251C719A4();
      v19 = v18;
      (*(v10 + 8))(v9, v11);
      sub_251A856F8(v8);
      v20 = sub_251B10780(v17, v19, v45);

      *(v12 + 14) = v20;
      _os_log_impl(&dword_251A6C000, v5, v6, "%s: No response data received from URL %s", v12, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x25308E2B0](v44, -1, -1);
      MEMORY[0x25308E2B0](v12, -1, -1);
    }

    else
    {

      sub_251A856F8(v8);
    }

    v29 = v0[27];
    sub_251A8578C();
    swift_allocError();
    *v30 = 0;
    swift_willThrow();
    sub_251A857E0((v0 + 2));
    v28 = v29;
    goto LABEL_10;
  }

  v21 = v0[7];
  v22 = v0[29];
  v23 = sub_251C6F9F4();
  v24 = *(v23 + 48);
  v25 = *(v23 + 52);
  swift_allocObject();
  sub_251A858C4(v21, v1);
  sub_251C6F9E4();
  sub_251A859D4();
  sub_251C6F9D4();
  v26 = v22;
  v27 = v0[27];
  if (v26)
  {

    sub_251A8596C(v21, v1);
    sub_251A857E0((v0 + 2));
    v28 = v27;
LABEL_10:
    sub_251A856F8(v28);
    v32 = v0[26];
    v31 = v0[27];
    v34 = v0[23];
    v33 = v0[24];
    v35 = v0[20];

    v36 = v0[1];
    goto LABEL_11;
  }

  v38 = v0[26];
  v40 = v0[23];
  v39 = v0[24];
  v41 = v0[20];
  v42 = v0[17];

  sub_251A8596C(v21, v1);
  sub_251A857E0((v0 + 2));
  sub_251A856F8(v27);
  *v42 = v0[16];

  v36 = v0[1];
LABEL_11:

  return v36();
}

uint64_t sub_251A83DFC()
{
  v1 = v0[27];
  v3 = v0[19];
  v2 = v0[20];
  sub_251A8587C(&qword_27F478E50, type metadata accessor for WebRequestResponseError);
  swift_allocError();
  sub_251A85694(v2, v4);
  sub_251A856F8(v1);
  __swift_destroy_boxed_opaque_existential_1(v0 + 10);
  v6 = v0[26];
  v5 = v0[27];
  v8 = v0[23];
  v7 = v0[24];
  v9 = v0[20];

  v10 = v0[1];

  return v10();
}

uint64_t sub_251A83F04@<X0>(uint64_t a1@<X0>, unsigned __int8 *a2@<X8>)
{
  *a2 = 2;
  *(a2 + 1) = 0;
  v4 = type metadata accessor for IssuerDirectoryWebRequest();
  *&a2[v4[7]] = xmmword_251C74660;
  v5 = v4[6];
  v6 = sub_251C6FE64();
  v7 = *(v6 - 8);
  (*(v7 + 16))(&a2[v5], a1, v6);
  sub_251C716A4();

  v8 = 0xE700000000000000;
  v9 = *a2;
  v10 = 0x5443454E4E4F43;
  v11 = 0xE300000000000000;
  v12 = 5526864;
  if (v9 != 6)
  {
    v12 = 0x4543415254;
    v11 = 0xE500000000000000;
  }

  v13 = 0xE700000000000000;
  v14 = 0x534E4F4954504FLL;
  if (v9 != 4)
  {
    v14 = 1414745936;
    v13 = 0xE400000000000000;
  }

  if (*a2 <= 5u)
  {
    v12 = v14;
    v11 = v13;
  }

  v15 = 0xE300000000000000;
  v16 = 5522759;
  if (v9 != 2)
  {
    v16 = 1145128264;
    v15 = 0xE400000000000000;
  }

  if (*a2)
  {
    v10 = 0x4554454C4544;
    v8 = 0xE600000000000000;
  }

  if (*a2 > 1u)
  {
    v10 = v16;
    v8 = v15;
  }

  if (*a2 <= 3u)
  {
    v17 = v10;
  }

  else
  {
    v17 = v12;
  }

  if (*a2 <= 3u)
  {
    v18 = v8;
  }

  else
  {
    v18 = v11;
  }

  MEMORY[0x25308CDA0](v17, v18);

  MEMORY[0x25308CDA0](32, 0xE100000000000000);
  v19 = sub_251C6FDA4();
  MEMORY[0x25308CDA0](v19);

  result = (*(v7 + 8))(a1, v6);
  v21 = &a2[v4[8]];
  *v21 = 0xD00000000000001ALL;
  *(v21 + 1) = 0x8000000251C89E50;
  return result;
}

uint64_t sub_251A8413C(uint64_t a1, uint64_t a2)
{
  v3[19] = a2;
  v3[20] = v2;
  v3[18] = a1;
  v4 = type metadata accessor for WebRequestResponseError(0);
  v3[21] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v3[22] = swift_task_alloc();
  v6 = sub_251C6FE64();
  v3[23] = v6;
  v7 = *(v6 - 8);
  v3[24] = v7;
  v8 = *(v7 + 64) + 15;
  v3[25] = swift_task_alloc();
  v3[26] = swift_task_alloc();
  v9 = type metadata accessor for IssuerDirectoryWebRequest();
  v3[27] = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  v3[28] = swift_task_alloc();
  v3[29] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_251A84278, 0, 0);
}

void sub_251A84278()
{
  v1 = v0[29];
  v2 = v0[26];
  v3 = v0[27];
  v4 = v0[23];
  v5 = v0[24];
  v7 = v0[19];
  v6 = v0[20];
  v8 = type metadata accessor for CatalogEntry();
  (*(v5 + 16))(v2, v7 + *(v8 + 24), v4);
  sub_251A83F04(v2, v1);
  v9 = v6[4];
  __swift_project_boxed_opaque_existential_1(v6, v6[3]);
  v0[13] = v3;
  v0[14] = &off_2863F5F98;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 10);
  sub_251A85630(v1, boxed_opaque_existential_1);
  v11 = *(v9 + 8);
  v15 = v11 + *v11;
  v12 = v11[1];
  v13 = swift_task_alloc();
  v0[30] = v13;
  *v13 = v0;
  v13[1] = sub_251A84434;
  v14 = v0[22];

  __asm { BRAA            X8, X16 }
}

uint64_t sub_251A84434()
{
  v2 = *v1;
  v3 = *(*v1 + 240);
  v6 = *v1;
  *(*v1 + 248) = v0;

  if (v0)
  {
    v4 = sub_251A8495C;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1((v2 + 80));
    v4 = sub_251A84550;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_251A84550()
{
  v47 = v0;
  v1 = v0[8];
  if (v1 >> 60 == 15)
  {
    if (qword_2813E26F8 != -1)
    {
      swift_once();
    }

    v2 = v0[28];
    v3 = v0[29];
    v4 = sub_251C70764();
    __swift_project_value_buffer(v4, qword_2813E8130);
    sub_251A85630(v3, v2);
    v5 = sub_251C70744();
    v6 = sub_251C713D4();
    v7 = os_log_type_enabled(v5, v6);
    v8 = v0[28];
    if (v7)
    {
      v44 = v0[27];
      v10 = v0[24];
      v9 = v0[25];
      v11 = v0[23];
      v12 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v46[0] = v45;
      *v12 = 136315394;
      v0[17] = &type metadata for IssuerDirectoryWebRequestHandler;
      sub_251A85834();
      v13 = sub_251C70F74();
      v15 = sub_251B10780(v13, v14, v46);

      *(v12 + 4) = v15;
      *(v12 + 12) = 2080;
      v16 = v8 + *(v44 + 24);
      sub_251C6FD94();
      sub_251A8587C(&qword_27F478E68, MEMORY[0x277CC9260]);
      v17 = sub_251C719A4();
      v19 = v18;
      (*(v10 + 8))(v9, v11);
      sub_251A856F8(v8);
      v20 = sub_251B10780(v17, v19, v46);

      *(v12 + 14) = v20;
      _os_log_impl(&dword_251A6C000, v5, v6, "%s: No response data received from URL %s", v12, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x25308E2B0](v45, -1, -1);
      MEMORY[0x25308E2B0](v12, -1, -1);
    }

    else
    {

      sub_251A856F8(v8);
    }

    v29 = v0[29];
    sub_251A8578C();
    swift_allocError();
    *v30 = 0;
    swift_willThrow();
    sub_251A857E0((v0 + 2));
    v28 = v29;
    goto LABEL_10;
  }

  v21 = v0[7];
  v22 = v0[31];
  v23 = sub_251C6F9F4();
  v24 = *(v23 + 48);
  v25 = *(v23 + 52);
  swift_allocObject();
  sub_251A858C4(v21, v1);
  sub_251C6F9E4();
  sub_251A85918();
  sub_251C6F9D4();
  v26 = v22;
  v27 = v0[29];
  if (v26)
  {

    sub_251A8596C(v21, v1);
    sub_251A857E0((v0 + 2));
    v28 = v27;
LABEL_10:
    sub_251A856F8(v28);
    v32 = v0[28];
    v31 = v0[29];
    v34 = v0[25];
    v33 = v0[26];
    v35 = v0[22];

    v36 = v0[1];
    goto LABEL_11;
  }

  v38 = v0[28];
  v40 = v0[25];
  v39 = v0[26];
  v41 = v0[22];
  v42 = v0[18];

  sub_251A8596C(v21, v1);
  sub_251A857E0((v0 + 2));
  sub_251A856F8(v27);
  v43 = v0[16];
  *v42 = v0[15];
  v42[1] = v43;

  v36 = v0[1];
LABEL_11:

  return v36();
}

uint64_t sub_251A8495C()
{
  v1 = v0[29];
  v3 = v0[21];
  v2 = v0[22];
  sub_251A8587C(&qword_27F478E50, type metadata accessor for WebRequestResponseError);
  swift_allocError();
  sub_251A85694(v2, v4);
  sub_251A856F8(v1);
  __swift_destroy_boxed_opaque_existential_1(v0 + 10);
  v6 = v0[28];
  v5 = v0[29];
  v8 = v0[25];
  v7 = v0[26];
  v9 = v0[22];

  v10 = v0[1];

  return v10();
}

uint64_t sub_251A84A64(uint64_t a1, uint64_t a2)
{
  v3[19] = a2;
  v3[20] = v2;
  v3[18] = a1;
  v4 = sub_251C6F9B4();
  v3[21] = v4;
  v5 = *(v4 - 8);
  v3[22] = v5;
  v6 = *(v5 + 64) + 15;
  v3[23] = swift_task_alloc();
  v7 = type metadata accessor for WebRequestResponseError(0);
  v3[24] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v3[25] = swift_task_alloc();
  v9 = sub_251C6FE64();
  v3[26] = v9;
  v10 = *(v9 - 8);
  v3[27] = v10;
  v11 = *(v10 + 64) + 15;
  v3[28] = swift_task_alloc();
  v3[29] = swift_task_alloc();
  v12 = type metadata accessor for IssuerDirectoryWebRequest();
  v3[30] = v12;
  v13 = *(*(v12 - 8) + 64) + 15;
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_251A84BFC, 0, 0);
}

void sub_251A84BFC()
{
  v1 = v0[32];
  v2 = v0[29];
  v3 = v0[30];
  v4 = v0[26];
  v5 = v0[27];
  v7 = v0[19];
  v6 = v0[20];
  v8 = type metadata accessor for CatalogEntry();
  (*(v5 + 16))(v2, v7 + *(v8 + 24), v4);
  sub_251A83F04(v2, v1);
  v9 = v6[4];
  __swift_project_boxed_opaque_existential_1(v6, v6[3]);
  v0[13] = v3;
  v0[14] = &off_2863F5F98;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 10);
  sub_251A85630(v1, boxed_opaque_existential_1);
  v11 = *(v9 + 8);
  v15 = v11 + *v11;
  v12 = v11[1];
  v13 = swift_task_alloc();
  v0[33] = v13;
  *v13 = v0;
  v13[1] = sub_251A84DB8;
  v14 = v0[25];

  __asm { BRAA            X8, X16 }
}

uint64_t sub_251A84DB8()
{
  v2 = *v1;
  v3 = *(*v1 + 264);
  v6 = *v1;
  *(*v1 + 272) = v0;

  if (v0)
  {
    v4 = sub_251A85330;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1((v2 + 80));
    v4 = sub_251A84ED4;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_251A84ED4()
{
  v52 = v0;
  v1 = v0[8];
  if (v1 >> 60 == 15)
  {
    if (qword_2813E26F8 != -1)
    {
      swift_once();
    }

    v2 = v0[31];
    v3 = v0[32];
    v4 = sub_251C70764();
    __swift_project_value_buffer(v4, qword_2813E8130);
    sub_251A85630(v3, v2);
    v5 = sub_251C70744();
    v6 = sub_251C713D4();
    v7 = os_log_type_enabled(v5, v6);
    v8 = v0[31];
    if (v7)
    {
      v48 = v0[30];
      v10 = v0[27];
      v9 = v0[28];
      v11 = v0[26];
      v12 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v51[0] = v49;
      *v12 = 136315394;
      v0[17] = &type metadata for IssuerDirectoryWebRequestHandler;
      sub_251A85834();
      v13 = sub_251C70F74();
      v15 = sub_251B10780(v13, v14, v51);

      *(v12 + 4) = v15;
      *(v12 + 12) = 2080;
      v16 = v8 + *(v48 + 24);
      sub_251C6FD94();
      sub_251A8587C(&qword_27F478E68, MEMORY[0x277CC9260]);
      v17 = sub_251C719A4();
      v19 = v18;
      (*(v10 + 8))(v9, v11);
      sub_251A856F8(v8);
      v20 = sub_251B10780(v17, v19, v51);

      *(v12 + 14) = v20;
      _os_log_impl(&dword_251A6C000, v5, v6, "%s: No response data received from URL %s", v12, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x25308E2B0](v49, -1, -1);
      MEMORY[0x25308E2B0](v12, -1, -1);
    }

    else
    {

      sub_251A856F8(v8);
    }

    v32 = v0[32];
    sub_251A8578C();
    swift_allocError();
    *v33 = 0;
    swift_willThrow();
    sub_251A857E0((v0 + 2));
    v31 = v32;
    goto LABEL_10;
  }

  v21 = v0[7];
  v22 = v0[34];
  v24 = v0[22];
  v23 = v0[23];
  v25 = v0[21];
  v26 = sub_251C6F9F4();
  v27 = *(v26 + 48);
  v28 = *(v26 + 52);
  swift_allocObject();
  sub_251A858C4(v21, v1);
  sub_251C6F9E4();
  (*(v24 + 104))(v23, *MEMORY[0x277CC86D0], v25);
  sub_251C6F9C4();
  sub_251A85980();
  sub_251C6F9D4();
  v29 = v22;
  v30 = v0[32];
  if (v29)
  {

    sub_251A8596C(v21, v1);
    sub_251A857E0((v0 + 2));
    v31 = v30;
LABEL_10:
    sub_251A856F8(v31);
    v35 = v0[31];
    v34 = v0[32];
    v37 = v0[28];
    v36 = v0[29];
    v38 = v0[25];
    v39 = v0[23];

    v40 = v0[1];
    goto LABEL_11;
  }

  v42 = v0[31];
  v44 = v0[28];
  v43 = v0[29];
  v45 = v0[25];
  v50 = v0[23];
  v46 = v0[18];

  sub_251A8596C(v21, v1);
  sub_251A857E0((v0 + 2));
  sub_251A856F8(v30);
  v47 = v0[16];
  *v46 = v0[15];
  v46[1] = v47;

  v40 = v0[1];
LABEL_11:

  return v40();
}

uint64_t sub_251A85330()
{
  v1 = v0[32];
  v3 = v0[24];
  v2 = v0[25];
  sub_251A8587C(&qword_27F478E50, type metadata accessor for WebRequestResponseError);
  swift_allocError();
  sub_251A85694(v2, v4);
  sub_251A856F8(v1);
  __swift_destroy_boxed_opaque_existential_1(v0 + 10);
  v6 = v0[31];
  v5 = v0[32];
  v8 = v0[28];
  v7 = v0[29];
  v9 = v0[25];
  v10 = v0[23];

  v11 = v0[1];

  return v11();
}

uint64_t sub_251A8544C(uint64_t a1)
{
  v3 = *(v1 + 8);

  *(v1 + 8) = a1;
  return result;
}

uint64_t sub_251A85498@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 24);
  v5 = sub_251C6FE64();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_251A8550C(uint64_t a1)
{
  v2 = v1 + *(a1 + 28);
  v3 = *v2;
  sub_251A85E50(*v2, *(v2 + 8));
  return v3;
}

uint64_t sub_251A85548(uint64_t a1)
{
  v2 = (v1 + *(a1 + 32));
  v3 = *v2;
  v4 = v2[1];

  return v3;
}

uint64_t type metadata accessor for IssuerDirectoryWebRequest()
{
  result = qword_27F478E88;
  if (!qword_27F478E88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
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

uint64_t sub_251A85630(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IssuerDirectoryWebRequest();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_251A85694(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WebRequestResponseError(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_251A856F8(uint64_t a1)
{
  v2 = type metadata accessor for IssuerDirectoryWebRequest();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

unint64_t sub_251A8578C()
{
  result = qword_27F478E58;
  if (!qword_27F478E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F478E58);
  }

  return result;
}

unint64_t sub_251A85834()
{
  result = qword_27F478E60;
  if (!qword_27F478E60)
  {
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_27F478E60);
  }

  return result;
}

uint64_t sub_251A8587C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_251A858C4(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

unint64_t sub_251A85918()
{
  result = qword_27F478E70;
  if (!qword_27F478E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F478E70);
  }

  return result;
}

uint64_t sub_251A8596C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_251A83028(a1, a2);
  }

  return a1;
}

unint64_t sub_251A85980()
{
  result = qword_27F478E78;
  if (!qword_27F478E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F478E78);
  }

  return result;
}

unint64_t sub_251A859D4()
{
  result = qword_27F478E80;
  if (!qword_27F478E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F478E80);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for IssuerDirectoryWebRequestHandlerError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for IssuerDirectoryWebRequestHandlerError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void sub_251A85BA0()
{
  sub_251A85C78();
  if (v0 <= 0x3F)
  {
    sub_251C6FE64();
    if (v1 <= 0x3F)
    {
      sub_251A85CF4(319, &qword_2813E7518, MEMORY[0x277CC9318], MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_251A85C78()
{
  if (!qword_27F478E98)
  {
    sub_251A85CF4(255, &qword_27F478EA0, &type metadata for HTTPHeader, MEMORY[0x277D83940]);
    v0 = sub_251C71574();
    if (!v1)
    {
      atomic_store(v0, &qword_27F478E98);
    }
  }
}

void sub_251A85CF4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_251A85D58(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_251A85DA0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_251A85DFC()
{
  result = qword_27F478EA8;
  if (!qword_27F478EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F478EA8);
  }

  return result;
}

uint64_t sub_251A85E50(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_251A858C4(a1, a2);
  }

  return a1;
}

uint64_t sub_251A85EAC()
{
  result = sub_251C703B4();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_251A85F5C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_251A85FF4()
{
  sub_251A85F5C(319, qword_2813E6C90, type metadata accessor for PBTypedData.OneOf_Raw, MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_251C703B4();
    if (v1 <= 0x3F)
    {
      sub_251A85F5C(319, qword_2813E6EE8, type metadata accessor for PBDateRange, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_251A86150()
{
  result = type metadata accessor for PBTimeSeries(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for PBCategorySeries(319);
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for PBWorkout(319);
      if (v3 <= 0x3F)
      {
        result = type metadata accessor for PBCharacteristics(319);
        if (v4 <= 0x3F)
        {
          result = type metadata accessor for PBAllClinicalRecords(319);
          if (v5 <= 0x3F)
          {
            result = type metadata accessor for PBECGs(319);
            if (v6 <= 0x3F)
            {
              result = type metadata accessor for PBCycleTracking(319);
              if (v7 <= 0x3F)
              {
                result = type metadata accessor for PBECGMeasurement(319);
                if (v8 <= 0x3F)
                {
                  result = type metadata accessor for PBActivitySummarySeries(319);
                  if (v9 <= 0x3F)
                  {
                    result = type metadata accessor for PBPatientMeta(319);
                    if (v10 <= 0x3F)
                    {
                      result = type metadata accessor for PBSleepSummary(319);
                      if (v11 <= 0x3F)
                      {
                        result = type metadata accessor for PBSleepSeries(319);
                        if (v12 <= 0x3F)
                        {
                          result = type metadata accessor for PBHistogramSeries(319);
                          if (v13 <= 0x3F)
                          {
                            result = type metadata accessor for PBMedicationTrackings(319);
                            if (v14 <= 0x3F)
                            {
                              result = type metadata accessor for PBMedicationTrackingDoseEvents(319);
                              if (v15 <= 0x3F)
                              {
                                result = type metadata accessor for PBMedicationTrackingSchedules(319);
                                if (v16 <= 0x3F)
                                {
                                  result = type metadata accessor for PBActiveMedications(319);
                                  if (v17 <= 0x3F)
                                  {
                                    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
                                    return 0;
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
              }
            }
          }
        }
      }
    }
  }

  return result;
}