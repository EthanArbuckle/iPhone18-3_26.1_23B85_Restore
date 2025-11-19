uint64_t sub_232BA42E4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 264) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 272) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 273) = 1;
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

    *(result + 273) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_232BA4394(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 241))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_232BA43D4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 232) = 0;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 240) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 241) = 1;
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

    *(result + 241) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_232BA446C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 129))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_232BA44AC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 128) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 129) = 1;
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

    *(result + 129) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_232BA4528(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 232))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_232BA4568(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 200) = 0u;
    *(result + 216) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 232) = 1;
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

    *(result + 232) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_232BA45F8(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 264))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_232BA4638(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 248) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 264) = 1;
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

    *(result + 264) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_232BA46D0(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 96))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_232BA4710(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_232BA477C()
{
  result = qword_27DDC7498;
  if (!qword_27DDC7498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDC7498);
  }

  return result;
}

unint64_t sub_232BA47D4()
{
  result = qword_27DDC74A0;
  if (!qword_27DDC74A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDC74A0);
  }

  return result;
}

unint64_t sub_232BA482C()
{
  result = qword_27DDC74A8;
  if (!qword_27DDC74A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDC74A8);
  }

  return result;
}

unint64_t sub_232BA4884()
{
  result = qword_27DDC74B0;
  if (!qword_27DDC74B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDC74B0);
  }

  return result;
}

unint64_t sub_232BA48DC()
{
  result = qword_27DDC74B8;
  if (!qword_27DDC74B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDC74B8);
  }

  return result;
}

unint64_t sub_232BA4934()
{
  result = qword_27DDC74C0;
  if (!qword_27DDC74C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDC74C0);
  }

  return result;
}

unint64_t sub_232BA498C()
{
  result = qword_27DDC74C8;
  if (!qword_27DDC74C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDC74C8);
  }

  return result;
}

uint64_t sub_232BA4BBC(uint64_t a1, uint64_t a2)
{
  v4 = sub_232B124A8(&qword_27DDC6A80, &qword_232CF6D30);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_232BA4C2C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CalendarEvent(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_232BA4C90(uint64_t a1)
{
  v2 = type metadata accessor for CalendarEvent(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_232BA4CEC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CalendarEvent(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_232BA4D50(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_232B124A8(a2, a3);
  sub_232BA5190(v4);
  (*(v5 + 8))(a1);
  return a1;
}

uint64_t sub_232BA4DA4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_232BA4DEC(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

id sub_232BA55B4()
{

  return sub_232B1FCE4();
}

id sub_232BA571C()
{

  return sub_232B1FCE4();
}

void sub_232BA5744()
{
  v3 = *(*(v0 + 56) + 16 * v1 + 8);

  type metadata accessor for DUExtractionAttributeKey();
}

void sub_232BA5764()
{
  v3 = *(*(v0 + 56) + 16 * v1 + 8);

  type metadata accessor for DUExtractionAttributeKey();
}

void sub_232BA5784()
{
  v2 = *(v0 + 16) + 1;

  sub_232B36640();
}

uint64_t sub_232BA57C8()
{
  *(v2 - 112) = v0;
  *(v2 - 104) = v1;
  *(v2 - 136) = 2847580;
  *(v2 - 128) = 0xE300000000000000;
  *(v2 - 152) = 32;
  *(v2 - 144) = 0xE100000000000000;
  return v2 - 136;
}

uint64_t sub_232BA5828()
{

  return sub_232CEA5C0();
}

void sub_232BA5848()
{

  sub_232B36640();
}

uint64_t sub_232BA5890()
{

  return sub_232CEA5C0();
}

void sub_232BA5918()
{
  v3 = *(*(v0 + 56) + 16 * v1 + 8);

  type metadata accessor for DUExtractionAttributeKey();
}

id sub_232BA5938()
{

  return sub_232B1FCE4();
}

id sub_232BA5A50()
{

  return sub_232B1FCE4();
}

void sub_232BA5A70()
{
  v3 = *(*(v0 + 56) + 16 * v1 + 8);

  type metadata accessor for DUExtractionAttributeKey();
}

__n128 *sub_232BA5A90(__n128 *result, __n128 a2)
{
  result[1] = a2;
  result[2].n128_u64[0] = 0x746E6F4372657375;
  result[2].n128_u64[1] = 0xEB00000000746E65;
  return result;
}

uint64_t sub_232BA5AE8()
{

  return sub_232CEA5C0();
}

uint64_t sub_232BA5B08()
{
}

void sub_232BA5BA0()
{
  v3 = *(*(v1 + 56) + 16 * v0 + 8);

  type metadata accessor for DUExtractionAttributeKey();
}

uint64_t sub_232BA5BC0()
{
  result = v0;
  v3 = *(v1 - 216);
  return result;
}

uint64_t sub_232BA5D0C()
{

  return swift_isUniquelyReferenced_nonNull_native();
}

id sub_232BA5D4C()
{

  return sub_232B1FCE4();
}

void sub_232BA5D74()
{
  *(v1 - 128) = v0[85];
  v22 = v0[84];
  v20 = v0[83];
  v15 = v0[82];
  v12 = v0[81];
  *(v1 - 96) = v0[80];
  v2 = v0[79];
  v3 = v0[78];
  v4 = v0[77];
  v5 = v0[76];
  v6 = v0[75];
  v7 = v0[74];
  v9 = v0[73];
  v13 = v0[72];
  v14 = v0[71];
  v16 = v0[70];
  v17 = v0[69];
  v18 = v0[68];
  v19 = v0[67];
  *(v1 - 136) = v0[66];
  v23 = v0[65];
  v24 = v0[64];
  *(v1 - 104) = v0[63];
  *(v1 - 120) = v0[59];
  v10 = v0[48];
  v11 = v0[49];
  v8 = v0[46];
  v21 = v0[47];
}

uint64_t sub_232BA5E28()
{

  return swift_isUniquelyReferenced_nonNull_native();
}

id sub_232BA5E44(uint64_t a1, const char *a2)
{

  return [v4 a2];
}

uint64_t sub_232BA5F0C()
{

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t sub_232BA6004()
{

  return sub_232CE9910();
}

uint64_t sub_232BA6080()
{

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t sub_232BA6194()
{

  return sub_232CE9D20();
}

void sub_232BA626C(uint64_t a1, uint64_t a2)
{
  *(v6 - 320) = a2;
  *(v6 - 328) = v3;
  *(v6 - 336) = v2;
  *(v6 - 304) = v5;
  *(v6 - 312) = v4;
}

uint64_t sub_232BA62D4()
{

  return sub_232CE9CD0();
}

uint64_t sub_232BA6308(__n128 *a1, __n128 a2)
{
  a1[1] = a2;
  strcpy(&a1[2], "promptTemplate");
  a1[2].n128_u8[15] = -18;

  return sub_232CE9780();
}

uint64_t sub_232BA63EC()
{
  *(v0 - 112) = 25180;
  *(v0 - 104) = 0xE200000000000000;
}

uint64_t sub_232BA64B0()
{

  return sub_232CE98C0();
}

uint64_t sub_232BA6504()
{
  sub_232B811AC(v0);

  return sub_232CE9D50();
}

uint64_t sub_232BA6530()
{
  sub_232B8119C(v0);

  return sub_232CE9D50();
}

uint64_t sub_232BA655C()
{

  return sub_232B20540(v0);
}

uint64_t sub_232BA6574()
{

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t sub_232BA658C()
{

  return sub_232B20540(v0);
}

id sub_232BA65A4()
{

  return sub_232B1FCE4();
}

uint64_t sub_232BA65BC()
{

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t sub_232BA6634(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  *(v17 + 728) = *(a17 + 8);
  *(v17 + 736) = (a17 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  return v18;
}

uint64_t sub_232BA66B8()
{

  return sub_232B20540(v0);
}

void sub_232BA66EC()
{

  JUMPOUT(0x238393870);
}

uint64_t sub_232BA6708()
{
  result = v0[26];
  v2 = v0[27];
  v3 = v0[28];
  v4 = v0[29];
  return result;
}

void sub_232BA676C()
{
  v4 = HIBYTE(v0) & 0xF;
  if ((v0 & 0x2000000000000000) == 0)
  {
    v4 = v1;
  }

  *(v3 - 248) = v2 | (v4 << 16);
  *(v3 - 160) = v0;
}

uint64_t sub_232BA67B0()
{

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t sub_232BA680C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  *(v21 + 744) = *(a21 + 8);
  *(v21 + 752) = (a21 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  return v22;
}

uint64_t sub_232BA682C()
{
  *(v1 + 688) = *(v2 + 8);
  *(v1 + 696) = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  return v0;
}

uint64_t sub_232BA6858()
{

  return sub_232B20540(v0);
}

uint64_t sub_232BA6870()
{

  return MEMORY[0x282165FC8](0xD00000000000001CLL, v1 | 0x8000000000000000, v0);
}

void sub_232BA6890()
{
  v3 = *(*(v1 + 56) + 16 * v0 + 8);

  type metadata accessor for NSTextCheckingKey();
}

uint64_t sub_232BA68E8()
{

  return sub_232CE98C0();
}

uint64_t sub_232BA6900()
{

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t sub_232BA6918()
{

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t sub_232BA6930()
{
}

id sub_232BA6980()
{

  return sub_232B1FCE4();
}

uint64_t sub_232BA69B4()
{

  return sub_232CE98C0();
}

uint64_t sub_232BA6A08()
{
  v3 = *(v1 - 288);

  return sub_232C0A394(v0, v3);
}

uint64_t sub_232BA6A24()
{

  return sub_232CE98C0();
}

uint64_t sub_232BA6A3C()
{

  return sub_232CE98C0();
}

uint64_t sub_232BA6A54()
{

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t sub_232BA6A6C()
{

  return swift_isUniquelyReferenced_nonNull_native();
}

void sub_232BA6A84()
{

  JUMPOUT(0x238393870);
}

uint64_t sub_232BA6AFC()
{

  return sub_232B20540(v0);
}

id sub_232BA6B24()
{

  return sub_232B1FCE4();
}

uint64_t sub_232BA6B6C()
{
  v2 = (*(v0 + 80) + 32) & ~*(v0 + 80);

  return swift_allocObject();
}

void sub_232BA6B94()
{

  sub_232B80BB0();
}

uint64_t sub_232BA6BBC()
{

  return sub_232CEA3A0();
}

id sub_232BA6BE4()
{

  return sub_232B1FCE4();
}

uint64_t sub_232BA6BFC()
{

  return sub_232CE98C0();
}

void sub_232BA6C5C()
{
  v2 = *(v0 - 200);
  v1 = *(v0 - 192);
  v3 = *(v0 - 208);
}

uint64_t sub_232BA6C98(uint64_t result, uint64_t a2)
{
  *(v2 - 112) = result;
  *(v2 - 104) = a2;
  return result;
}

uint64_t sub_232BA6D10()
{
  v2 = **(v1 - 256);
  result = v0;
  v4 = *(v1 - 232);
  return result;
}

uint64_t sub_232BA6D40()
{

  return sub_232CE98C0();
}

uint64_t sub_232BA6D58()
{

  return sub_232CE98C0();
}

void sub_232BA6D70()
{
  v2 = *(v0 - 344);
}

void sub_232BA6D88()
{

  sub_232B80BB0();
}

id sub_232BA6DAC()
{

  return sub_232B1FCE4();
}

uint64_t sub_232BA6DC4()
{

  return sub_232CEA610();
}

uint64_t sub_232BA6DE0()
{
  *(v1 - 136) = 15;
  *(v1 - 112) = *(v1 - 168);
  *(v1 - 104) = v0;
}

void sub_232BA6E0C()
{

  sub_232B80BB0();
}

uint64_t sub_232BA6E30@<X0>(uint64_t a1@<X8>)
{
  *(v2 - 112) = a1 - 32;
  v4 = *(v1 + 360);

  return swift_task_alloc();
}

uint64_t sub_232BA6E54()
{

  return sub_232CE9FE0();
}

id sub_232BA6E6C(id a1, SEL a2, uint64_t a3)
{

  return [a1 a2];
}

uint64_t sub_232BA6E88()
{

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t sub_232BA6EA0()
{

  return sub_232CE98C0();
}

BOOL sub_232BA6EB8(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t sub_232BA6ED4()
{

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t sub_232BA6EF8@<X0>(void *a1@<X0>, uint64_t a2@<X8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  a1[9] = v7;
  a1[10] = a2;
  a1[6] = a6;
  *(v8 + 56) = a7;
}

uint64_t sub_232BA6F1C()
{

  return sub_232CE8E80();
}

uint64_t sub_232BA6F34()
{

  return sub_232CE98C0();
}

uint64_t sub_232BA6F4C()
{

  return sub_232CEA750();
}

uint64_t sub_232BA6F64()
{

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t sub_232BA6F7C()
{

  return sub_232CE98C0();
}

uint64_t sub_232BA6F94()
{
  *(v2 + 8) = v0;
  v3 = *(v1 + 32);
  return *(v1 + 16);
}

uint64_t sub_232BA6FBC()
{
  v1 = v0[6];
  v2 = *(v0[7] + 8);
  return v0[8];
}

uint64_t sub_232BA6FE4()
{
  v2 = **(v1 - 192);
  result = v0;
  v4 = *(v1 - 160);
  return result;
}

uint64_t sub_232BA7080()
{
  v2 = **(v1 - 256);
  result = v0;
  v4 = *(v1 - 232);
  return result;
}

void sub_232BA71BC()
{
  v1 = *(v0 - 200);
  v2 = *(v0 - 192);
  v3 = *(v0 - 208);
}

uint64_t sub_232BA7294()
{

  return sub_232CE9B20();
}

void sub_232BA72B4(uint64_t a1@<X8>)
{

  sub_232B649F4(0, a1 + 1, 1);
}

uint64_t sub_232BA72D4()
{

  return sub_232CE8FF0();
}

id sub_232BA72F4(uint64_t a1, const char *a2)
{

  return [v3 a2];
}

uint64_t sub_232BA7314()
{
  *(v3 - 184) = v2;
  *(v3 - 112) = v0;
  *(v3 - 104) = v1;
  v5 = *(v3 - 240);

  return sub_232CE89B0();
}

uint64_t sub_232BA7334@<X0>(uint64_t a1@<X8>)
{
  *(v1 - 256) = a1 + 8;
}

uint64_t sub_232BA7354()
{
}

void sub_232BA7374()
{

  sub_232B9B898();
}

uint64_t sub_232BA7394()
{
}

uint64_t sub_232BA73AC()
{
  v2 = *(v0 - 216);

  return sub_232CE9DD0();
}

void sub_232BA73C4()
{

  JUMPOUT(0x238391C30);
}

uint64_t sub_232BA73DC()
{

  return swift_slowAlloc();
}

uint64_t sub_232BA73F4()
{

  return sub_232CEA3F0();
}

uint64_t sub_232BA7428()
{
  v3 = *v1;

  return sub_232B2053C(v3, v0);
}

uint64_t sub_232BA746C(unsigned __int8 a1, char a2)
{
  v2 = 0x65726F666562;
  v3 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v4 = 0x7265746661;
    }

    else
    {
      v4 = 1701736302;
    }

    if (v3 == 1)
    {
      v5 = 0xE500000000000000;
    }

    else
    {
      v5 = 0xE400000000000000;
    }
  }

  else
  {
    v5 = 0xE600000000000000;
    v4 = 0x65726F666562;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v2 = 0x7265746661;
    }

    else
    {
      v2 = 1701736302;
    }

    if (a2 == 1)
    {
      v6 = 0xE500000000000000;
    }

    else
    {
      v6 = 0xE400000000000000;
    }
  }

  else
  {
    v6 = 0xE600000000000000;
  }

  if (v4 == v2 && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_232BAE0CC();
  }

  return v8 & 1;
}

uint64_t sub_232BA7540(unsigned __int8 a1, char a2)
{
  v2 = 0x73746E657645;
  v3 = 0xE600000000000000;
  v4 = a1;
  v5 = 0x73746E657645;
  switch(v4)
  {
    case 1:
      v5 = 0x724473746E657645;
      v3 = 0xEB00000000746661;
      break;
    case 2:
      v3 = 0xE400000000000000;
      v5 = 1685217603;
      break;
    case 3:
      v5 = 0x6661724464726143;
      v3 = 0xE900000000000074;
      break;
    default:
      break;
  }

  v6 = 0xE600000000000000;
  switch(a2)
  {
    case 1:
      v2 = 0x724473746E657645;
      v6 = 0xEB00000000746661;
      break;
    case 2:
      v6 = 0xE400000000000000;
      v2 = 1685217603;
      break;
    case 3:
      v2 = 0x6661724464726143;
      v6 = 0xE900000000000074;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_232BAE0CC();
  }

  return v8 & 1;
}

uint64_t sub_232BA7684(unsigned __int8 a1, char a2)
{
  v2 = 0x6E69617254;
  v3 = 0xE500000000000000;
  v4 = a1;
  v5 = 0x6E69617254;
  switch(v4)
  {
    case 1:
      v3 = 0xE300000000000000;
      v5 = 7566658;
      break;
    case 2:
      v3 = 0xE400000000000000;
      v5 = 1952542530;
      break;
    case 3:
      v3 = 0xE700000000000000;
      v5 = 0x636972656E6547;
      break;
    default:
      break;
  }

  v6 = 0xE500000000000000;
  switch(a2)
  {
    case 1:
      v6 = 0xE300000000000000;
      v2 = 7566658;
      break;
    case 2:
      v6 = 0xE400000000000000;
      v2 = 1952542530;
      break;
    case 3:
      v6 = 0xE700000000000000;
      v2 = 0x636972656E6547;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_232BAE0CC();
  }

  return v8 & 1;
}

uint64_t sub_232BA77A0(unsigned __int8 a1, char a2)
{
  v2 = 0xE900000000000064;
  v3 = 0x656D7269666E6F43;
  v4 = a1;
  v5 = 0x656D7269666E6F43;
  v6 = 0xE900000000000064;
  switch(v4)
  {
    case 1:
      v6 = 0xE800000000000000;
      v5 = 0x6465696669646F4DLL;
      break;
    case 2:
      v5 = 0x656C6C65636E6143;
      break;
    case 3:
      v6 = 0xE800000000000000;
      v5 = 0x7265646E696D6552;
      break;
    case 4:
      v5 = 0xD000000000000013;
      v7 = "d";
      goto LABEL_8;
    case 5:
      v5 = 0xD000000000000013;
      v7 = "PendingConfirmation";
LABEL_8:
      v6 = v7 | 0x8000000000000000;
      break;
    case 6:
      v6 = 0x8000000232D01730;
      v5 = 0xD000000000000012;
      break;
    case 7:
      v6 = 0xE500000000000000;
      v5 = 0x726568744FLL;
      break;
    default:
      break;
  }

  switch(a2)
  {
    case 1:
      v2 = 0xE800000000000000;
      v3 = 0x6465696669646F4DLL;
      break;
    case 2:
      v3 = 0x656C6C65636E6143;
      break;
    case 3:
      v2 = 0xE800000000000000;
      v3 = 0x7265646E696D6552;
      break;
    case 4:
      v3 = 0xD000000000000013;
      v8 = "d";
      goto LABEL_17;
    case 5:
      v3 = 0xD000000000000013;
      v8 = "PendingConfirmation";
LABEL_17:
      v2 = v8 | 0x8000000000000000;
      break;
    case 6:
      v2 = 0x8000000232D01730;
      v3 = 0xD000000000000012;
      break;
    case 7:
      v2 = 0xE500000000000000;
      v3 = 0x726568744FLL;
      break;
    default:
      break;
  }

  if (v5 == v3 && v6 == v2)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_232BAE194();
  }

  return v10 & 1;
}

uint64_t sub_232BA7998(char a1, char a2)
{
  v2 = "Merchant Shipping Update";
  v3 = (a1 & 1) == 0;
  if (a1)
  {
    v4 = 0xD000000000000017;
  }

  else
  {
    v4 = 0xD000000000000018;
  }

  if (v3)
  {
    v5 = "Yet to be shipped";
  }

  else
  {
    v5 = "Merchant Shipping Update";
  }

  if (a2)
  {
    v6 = 0xD000000000000017;
  }

  else
  {
    v6 = 0xD000000000000018;
  }

  if ((a2 & 1) == 0)
  {
    v2 = "Yet to be shipped";
  }

  if (v4 == v6 && (v5 | 0x8000000000000000) == (v2 | 0x8000000000000000))
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_232BAE0CC();
  }

  return v8 & 1;
}

uint64_t sub_232BA7A44(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3();
  v7 = v6;
  if (v5 == (a3)(a2) && v7 == v8)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_232BAE0CC();
  }

  return v10 & 1;
}

uint64_t sub_232BA7AC8(unsigned __int8 a1, char a2)
{
  v2 = 0xEE00726564724F20;
  v3 = 0x6C61636973796850;
  v4 = a1;
  v5 = 0x6C61636973796850;
  v6 = 0xEE00726564724F20;
  switch(v4)
  {
    case 1:
      v5 = 0x206C617469676944;
      v6 = 0xED0000726564724FLL;
      break;
    case 2:
      v5 = 0x7069726373627553;
      v6 = 0xEC0000006E6F6974;
      break;
    case 3:
      v5 = 0xD000000000000011;
      v6 = 0x8000000232D017B0;
      break;
    case 4:
      v6 = 0xE500000000000000;
      v5 = 0x726568746FLL;
      break;
    default:
      break;
  }

  switch(a2)
  {
    case 1:
      v3 = 0x206C617469676944;
      v2 = 0xED0000726564724FLL;
      break;
    case 2:
      v3 = 0x7069726373627553;
      v2 = 0xEC0000006E6F6974;
      break;
    case 3:
      v3 = 0xD000000000000011;
      v2 = 0x8000000232D017B0;
      break;
    case 4:
      v2 = 0xE500000000000000;
      v3 = 0x726568746FLL;
      break;
    default:
      break;
  }

  if (v5 == v3 && v6 == v2)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_232BAE194();
  }

  return v8 & 1;
}

uint64_t sub_232BA7C64(unsigned __int8 a1, char a2)
{
  v2 = 0xEC0000006E6F6974;
  v3 = 0x616D7269666E6F43;
  v4 = a1;
  v5 = 0x616D7269666E6F43;
  v6 = 0xEC0000006E6F6974;
  switch(v4)
  {
    case 1:
      v6 = 0xE600000000000000;
      v5 = 0x657461647055;
      break;
    case 2:
      v5 = 0x616C6C65636E6143;
      v6 = 0xEC0000006E6F6974;
      break;
    case 3:
      v6 = 0xE500000000000000;
      v5 = 0x6575737349;
      break;
    case 4:
      v6 = 0xE700000000000000;
      v5 = 0x6E776F6E6B6E55;
      break;
    case 5:
      v6 = 0xE600000000000000;
      v5 = 0x6E7275746552;
      break;
    case 6:
      v6 = 0xE600000000000000;
      v5 = 0x646E75666552;
      break;
    default:
      break;
  }

  switch(a2)
  {
    case 1:
      v2 = 0xE600000000000000;
      v3 = 0x657461647055;
      break;
    case 2:
      v3 = 0x616C6C65636E6143;
      break;
    case 3:
      v2 = 0xE500000000000000;
      v3 = 0x6575737349;
      break;
    case 4:
      v2 = 0xE700000000000000;
      v3 = 0x6E776F6E6B6E55;
      break;
    case 5:
      v2 = 0xE600000000000000;
      v3 = 0x6E7275746552;
      break;
    case 6:
      v2 = 0xE600000000000000;
      v3 = 0x646E75666552;
      break;
    default:
      break;
  }

  if (v5 == v3 && v6 == v2)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_232BAE194();
  }

  return v8 & 1;
}

BOOL sub_232BA7E18(uint64_t a1, char a2, uint64_t a3, char a4)
{
  v4 = a1 != 0;
  if ((a2 & 1) == 0)
  {
    v4 = a1;
  }

  v5 = a3 != 0;
  if ((a4 & 1) == 0)
  {
    v5 = a3;
  }

  return v4 == v5;
}

BOOL sub_232BA7E44(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v4 = *(a2 + 40);
  v5 = sub_232CEA470();
  v6 = ~(-1 << *(a2 + 32));
  do
  {
    v7 = v5 & v6;
    v8 = (1 << (v5 & v6)) & *(a2 + 56 + (((v5 & v6) >> 3) & 0xFFFFFFFFFFFFFF8));
    v9 = v8 != 0;
    if (!v8)
    {
      break;
    }

    sub_232B1FA04(*(a2 + 48) + 40 * v7, v12);
    v10 = MEMORY[0x238392210](v12, a1);
    sub_232B1FA60(v12);
    v5 = v7 + 1;
  }

  while ((v10 & 1) == 0);
  return v9;
}

BOOL sub_232BA7F18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v6 = *(a3 + 40);
  sub_232CEA820();
  sub_232CE9E40();
  v7 = sub_232CEA850();
  v8 = ~(-1 << *(a3 + 32));
  do
  {
    v9 = v7 & v8;
    v10 = (1 << (v7 & v8)) & *(a3 + 56 + (((v7 & v8) >> 3) & 0xFFFFFFFFFFFFFF8));
    v11 = v10 != 0;
    if (!v10)
    {
      break;
    }

    v12 = (*(a3 + 48) + 16 * v9);
    if (*v12 == a1 && v12[1] == a2)
    {
      break;
    }

    v14 = sub_232CEA750();
    v7 = v9 + 1;
  }

  while ((v14 & 1) == 0);
  return v11;
}

uint64_t sub_232BA8004(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v3 = *(a2 + 40);
  sub_232CE9D50();
  sub_232CEA820();
  sub_232CE9E40();
  v4 = sub_232CEA850();

  v5 = ~(-1 << *(a2 + 32));
  do
  {
    v6 = v4 & v5;
    v7 = (1 << (v4 & v5)) & *(a2 + 56 + (((v4 & v5) >> 3) & 0xFFFFFFFFFFFFFF8));
    v8 = v7 != 0;
    if (!v7)
    {
      break;
    }

    v9 = *(*(a2 + 48) + 8 * v6);
    v10 = sub_232CE9D50();
    v12 = v11;
    if (v10 == sub_232CE9D50() && v12 == v13)
    {

      return 1;
    }

    v15 = sub_232CEA750();

    v4 = v6 + 1;
  }

  while ((v15 & 1) == 0);
  return v8;
}

void *LanguageDetectionResult.dominantLanguage.getter()
{
  v1 = *(v0 + 8);
  v2 = v1;
  return v1;
}

uint64_t LanguageDetectionResult.processedText.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t DUFoundInEventClassificationImplementation.__allocating_init()()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  DUFoundInEventClassificationImplementation.init()();
  return v3;
}

void *DUFoundInEventClassificationImplementation.init()()
{
  v0[2] = 0;
  v0[3] = 0;
  v0[4] = 0;
  v1 = OBJC_IVAR____TtC21DocumentUnderstanding42DUFoundInEventClassificationImplementation_currentlyLoadedLocale;
  v2 = sub_232CE8E10();
  sub_232B12504(v0 + v1, 1, 1, v2);
  return v0;
}

uint64_t sub_232BA8298@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for DUFoundInEventClassificationSpecification();
  result = swift_allocObject();
  a1[3] = v2;
  a1[4] = &off_281931D38;
  *a1 = result;
  return result;
}

uint64_t sub_232BA82E0()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

void sub_232BA8310()
{
  sub_232B35110();
  v135 = v1;
  v4 = v3;
  v5 = sub_232CE9A30();
  v137 = sub_232B48F0C(v5);
  v138 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v137);
  sub_232B3516C();
  v11 = v9 - v10;
  MEMORY[0x28223BE20](v12);
  sub_232BAE120();
  MEMORY[0x28223BE20](v13);
  sub_232B20628();
  v130 = v14;
  sub_232B20600();
  MEMORY[0x28223BE20](v15);
  sub_232B20628();
  v132 = v16;
  sub_232B20600();
  MEMORY[0x28223BE20](v17);
  v131 = &v124 - v18;
  v19 = sub_232B124A8(&qword_27DDC7538, &unk_232CFA0F0);
  v20 = sub_232B13F24(v19);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  v24 = &v124 - v23;
  v25 = sub_232B124A8(&qword_27DDC7398, &unk_232CF9070);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x28223BE20](v25 - 8);
  sub_232B3516C();
  v133 = v27 - v28;
  sub_232B20600();
  v30 = MEMORY[0x28223BE20](v29);
  v32 = &v124 - v31;
  v33 = MEMORY[0x28223BE20](v30);
  v35 = &v124 - v34;
  MEMORY[0x28223BE20](v33);
  sub_232BAE0B8();
  v36 = sub_232CE8E10();
  v37 = sub_232B48F0C(v36);
  v136 = v38;
  v40 = *(v39 + 64);
  MEMORY[0x28223BE20](v37);
  sub_232B3516C();
  v42 = MEMORY[0x28223BE20](v41);
  v44 = &v124 - v43;
  MEMORY[0x28223BE20](v42);
  v134 = &v124 - v46;
  if (!v4)
  {
    sub_232CE9A20();
    v62 = sub_232CE9A00();
    v63 = sub_232CEA1A0();
    if (os_log_type_enabled(v62, v63))
    {
      sub_232BAE0AC();
      *swift_slowAlloc() = 0;
      sub_232BAE288(&dword_232B02000, v64, v65, "DUFoundInEventClassificationImplementation: Language from language detector is nil, skipping model loading");
      v66 = sub_232BAE07C();
      MEMORY[0x238393870](v66);
    }

    v67 = *(v138 + 8);
    v68 = v11;
    goto LABEL_17;
  }

  v129 = v45;
  v47 = v4;
  getNLAssetLocale(for:)(v47, v0);
  sub_232BAE100(v0);
  if (v76)
  {
    sub_232B13790(v0, &qword_27DDC7398, &unk_232CF9070);
    sub_232CE9A20();
    v48 = v47;
    v49 = sub_232CE9A00();
    sub_232CEA1A0();

    if (sub_232BAE2C0())
    {
      sub_232BAE0E8();
      v50 = swift_slowAlloc();
      sub_232BAE0F4();
      v51 = swift_slowAlloc();
      v140[0] = v51;
      *v50 = 136315138;
      v139 = v48;
      type metadata accessor for NLLanguage();
      v52 = v48;
      v53 = sub_232CE9DC0();
      v55 = sub_232BAD2D4(v53, v54, v140);

      *(v50 + 4) = v55;
      sub_232BA6138();
      _os_log_impl(v56, v57, v58, v59, v60, 0xCu);
      sub_232B2040C(v51);
      v61 = sub_232BAE08C();
      MEMORY[0x238393870](v61);
      sub_232B4ACF0();
      MEMORY[0x238393870]();
    }

    else
    {
    }

    v67 = *(v138 + 8);
    v68 = v2;
LABEL_17:
    v67(v68, v137);
    goto LABEL_18;
  }

  v69 = v134;
  v127 = v136[4];
  v128._rawValue = v47;
  v127(v134, v0, v36);
  v70 = &unk_2814E3000;
  if (!v135[2].isa)
  {
    goto LABEL_23;
  }

  v125 = v136[2];
  v126 = v136 + 2;
  v125(v35, v69, v36);
  sub_232B12504(v35, 0, 1, v36);
  v71 = OBJC_IVAR____TtC21DocumentUnderstanding42DUFoundInEventClassificationImplementation_currentlyLoadedLocale;
  v72 = v135;
  sub_232BA63D0();
  swift_beginAccess();
  v73 = *(v19 + 48);
  v74 = sub_232BA5CAC();
  sub_232BAD840(v74, v75);
  sub_232BAD840(v72 + v71, &v24[v73]);
  sub_232BAE100(v24);
  if (v76)
  {
    sub_232B13790(v35, &qword_27DDC7398, &unk_232CF9070);
    sub_232BAE100(&v24[v73]);
    v69 = v134;
    if (v76)
    {
      sub_232B13790(v24, &qword_27DDC7398, &unk_232CF9070);
LABEL_31:
      v107 = v131;
      sub_232CE9A20();
      v125(v129, v69, v36);
      v108 = sub_232CE9A00();
      v109 = sub_232CEA1A0();
      if (os_log_type_enabled(v108, v109))
      {
        sub_232BAE0E8();
        v110 = swift_slowAlloc();
        v135 = v108;
        v111 = v110;
        sub_232BAE0F4();
        v112 = swift_slowAlloc();
        v140[0] = v112;
        *v111 = 136315138;
        v113 = sub_232CE8D60();
        v115 = v114;
        v116 = v136[1];
        v117 = sub_232BAE188();
        v116(v117);
        v118 = sub_232BAD2D4(v113, v115, v140);

        *(v111 + 4) = v118;
        v119 = v135;
        _os_log_impl(&dword_232B02000, v135, v109, "DUFoundInEventClassificationImplementation: OTA model is already loaded and locale %s matches currently loaded model, early return.", v111, 0xCu);
        sub_232B2040C(v112);
        sub_232B4ACF0();
        MEMORY[0x238393870]();
        sub_232B4ACF0();
        MEMORY[0x238393870]();

        sub_232BAE210();
        v120(v131);
        (v116)(v69, v36);
      }

      else
      {

        v121 = v136[1];
        v122 = sub_232BAE188();
        v121(v122);
        sub_232BAE210();
        v123(v107);
        (v121)(v69, v36);
      }

      goto LABEL_18;
    }

    goto LABEL_22;
  }

  sub_232BAD840(v24, v32);
  sub_232BAE100(&v24[v73]);
  if (v76)
  {
    sub_232B13790(v35, &qword_27DDC7398, &unk_232CF9070);
    (v136[1])(v32, v36);
    v69 = v134;
LABEL_22:
    sub_232B13790(v24, &qword_27DDC7538, &unk_232CFA0F0);
    v70 = &unk_2814E3000;
    goto LABEL_23;
  }

  v127(v44, &v24[v73], v36);
  sub_232BAE00C(&qword_27DDC7540, MEMORY[0x277CC9788]);
  v105 = sub_232CE9CF0();
  v106 = v136[1];
  v106(v44, v36);
  sub_232B13790(v35, &qword_27DDC7398, &unk_232CF9070);
  v106(v32, v36);
  sub_232B13790(v24, &qword_27DDC7398, &unk_232CF9070);
  v69 = v134;
  v70 = &unk_2814E3000;
  if (v105)
  {
    goto LABEL_31;
  }

LABEL_23:
  getLDAsset(for:with:)(0xD00000000000001DLL, 0x8000000232D05960, v69);
  if (v77)
  {
    v78 = v77;
    v79 = v70;
    v80 = v132;
    sub_232CE9A20();
    v81 = sub_232CE9A00();
    sub_232CEA1A0();
    v82 = sub_232BAE140();
    if (os_log_type_enabled(v82, v83))
    {
      sub_232BAE0AC();
      *swift_slowAlloc() = 0;
      sub_232BAE130();
      _os_log_impl(v84, v85, v86, v87, v88, 2u);
      v89 = sub_232BAE08C();
      MEMORY[0x238393870](v89);
    }

    sub_232BAE210();
    v90(v80);
    v91 = v135;
    sub_232BA8CE8();

    v92 = v133;
    v127(v133, v69, v36);
    sub_232B12504(v92, 0, 1, v36);
    v93 = v79[461];
    swift_beginAccess();
    sub_232BAD7D0(v92, v91 + v93);
    swift_endAccess();
  }

  else
  {
    v94 = v130;
    sub_232CE9A20();
    v95 = sub_232CE9A00();
    v96 = sub_232CEA1A0();
    if (sub_232BA6EB8(v96))
    {
      sub_232BAE0AC();
      *swift_slowAlloc() = 0;
      sub_232BAE150();
      _os_log_impl(v97, v98, v99, v100, v101, 2u);
      v102 = sub_232BAE07C();
      MEMORY[0x238393870](v102);
    }

    sub_232BAE210();
    v103(v94);
    rawValue = v128._rawValue;
    requestNLAsset(for:)(v128);

    (v136[1])(v69, v36);
  }

LABEL_18:
  sub_232B20A00();
}

void sub_232BA8CE8()
{
  sub_232B35110();
  v100 = v0;
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v111 = sub_232CE8B40();
  v7 = sub_232B48F0C(v111);
  v108 = v8;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v7);
  sub_232B20704();
  v107 = v12 - v11;
  v13 = sub_232B124A8(&qword_27DDC6AD8, &unk_232CF82F0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v106 = &v99 - v15;
  v105 = sub_232CE8C00();
  v16 = sub_232B13F24(v105);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  sub_232B20704();
  v21 = v20 - v19;
  v22 = sub_232CE9970();
  v23 = sub_232B48F0C(v22);
  v25 = v24;
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v23);
  sub_232B3516C();
  v30 = v28 - v29;
  MEMORY[0x28223BE20](v31);
  v33 = &v99 - v32;
  v34 = sub_232CE9A30();
  v35 = sub_232B48F0C(v34);
  v113 = v36;
  v114 = v35;
  v38 = *(v37 + 64);
  MEMORY[0x28223BE20](v35);
  sub_232B3516C();
  v104 = v39 - v40;
  sub_232B20600();
  v42 = MEMORY[0x28223BE20](v41);
  v44 = &v99 - v43;
  MEMORY[0x28223BE20](v42);
  sub_232B20628();
  v101 = v45;
  sub_232B20600();
  MEMORY[0x28223BE20](v46);
  sub_232B20628();
  v102 = v47;
  sub_232B20600();
  MEMORY[0x28223BE20](v48);
  v50 = &v99 - v49;
  v51 = sub_232CE99A0();
  v52 = sub_232B48F0C(v51);
  v109 = v53;
  v110 = v52;
  v55 = *(v54 + 64);
  MEMORY[0x28223BE20](v52);
  sub_232B20704();
  v112 = v57 - v56;
  v58 = sub_232BD7050(v6, v4, 0x6C65646F6D6C6D2ELL, 0xE900000000000063, v2);
  if (v59)
  {
    v103 = v58;
    if (qword_2814DFA58 != -1)
    {
      sub_232BAE068();
      swift_once();
    }

    v60 = v114;
    v61 = sub_232B135C4(v114, qword_2814E3DC0);
    (*(v113 + 16))(v50, v61, v60);
    sub_232CE9980();
    sub_232CE9990();
    sub_232CE9950();
    v62 = sub_232CE9990();
    v63 = sub_232CEA270();
    if (sub_232CEA340())
    {
      sub_232BAE0AC();
      v64 = swift_slowAlloc();
      *v64 = 0;
      v65 = sub_232CE9960();
      _os_signpost_emit_with_name_impl(&dword_232B02000, v62, v63, v65, "DUFoundInEventClassificationImplementation:loadCompiledNLModel", "", v64, 2u);
      sub_232B4ACF0();
      MEMORY[0x238393870]();
    }

    (*(v25 + 16))(v30, v33, v22);
    v66 = sub_232CE99E0();
    sub_232BAE1EC(v66);
    swift_allocObject();
    sub_232CE99D0();
    (*(v25 + 8))(v33, v22);
    v67 = [objc_allocWithZone(MEMORY[0x277CBFF38]) init];
    [v67 setComputeUnits_];
    sub_232BA4DEC(0, &qword_2814DF8D0, 0x277CBFF20);
    sub_232B12504(v106, 1, 1, v105);
    (*(v108 + 104))(v107, *MEMORY[0x277CC91D8], v111);
    sub_232CE8BE0();
    v68 = v67;
    v74 = sub_232C13FE8(v21, v68);
    v75 = objc_allocWithZone(MEMORY[0x277CD89D0]);
    v76 = v74;
    v77 = sub_232BD6F4C(v74);
    v78 = [v76 modelDescription];
    v79 = [v78 metadata];

    type metadata accessor for MLModelMetadataKey();
    sub_232BAE00C(&qword_2814DF900, type metadata accessor for MLModelMetadataKey);
    v80 = sub_232CE9C40();

    sub_232B1E114(*MEMORY[0x277CBFE98], v80);

    if (v117[3])
    {
      v81 = swift_dynamicCast();
      v82 = v100;
      if (v81)
      {
        v84 = v115;
        v83 = v116;
        v85 = v101;
LABEL_17:
        v87 = v82[4];
        v82[3] = v84;
        v82[4] = v83;

        v88 = v82[2];
        v82[2] = v77;
        v89 = v77;

        sub_232CE9A20();

        v90 = sub_232CE9A00();
        v91 = sub_232CEA1A0();

        if (os_log_type_enabled(v90, v91))
        {
          sub_232BAE0E8();
          v92 = swift_slowAlloc();
          sub_232BAE0F4();
          v93 = swift_slowAlloc();
          v117[0] = v93;
          *v92 = 136315138;
          if (v82[4])
          {
            v94 = v82[3];
            v95 = v82[4];
          }

          else
          {
            v95 = 0xE700000000000000;
            v94 = 0x6E776F6E6B6E75;
          }

          v96 = sub_232BAD2D4(v94, v95, v117);

          *(v92 + 4) = v96;
          _os_log_impl(&dword_232B02000, v90, v91, "DUFoundInEventClassificationImplementation: Successfully loaded model. Description %s", v92, 0xCu);
          sub_232B2040C(v93);
          v97 = sub_232BAE08C();
          MEMORY[0x238393870](v97);
          v98 = sub_232BAE07C();
          MEMORY[0x238393870](v98);

          (*(v113 + 8))(v101, v114);
        }

        else
        {

          (*(v113 + 8))(v85, v114);
        }

        v86 = v112;
        sub_232BAC8AC();

        (*(v109 + 8))(v86, v110);
        goto LABEL_14;
      }
    }

    else
    {
      sub_232B13790(v117, &qword_27DDC68C8, &qword_232CF6210);
      v82 = v100;
    }

    v85 = v101;
    v83 = 0xE300000000000000;
    v84 = 7104878;
    goto LABEL_17;
  }

  sub_232CE9A20();
  v69 = sub_232CE9A00();
  v70 = sub_232CEA1C0();
  if (os_log_type_enabled(v69, v70))
  {
    sub_232BAE0AC();
    *swift_slowAlloc() = 0;
    sub_232BAE288(&dword_232B02000, v71, v72, "DUFoundInEventClassificationImplementation: Unable to find model URL from DocumentUnderstanding bundle.");
    v73 = sub_232BAE07C();
    MEMORY[0x238393870](v73);
  }

  (*(v113 + 8))(v44, v114);
LABEL_14:
  sub_232B20A00();
}

uint64_t sub_232BA9754(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, double a5)
{
  v75 = a3;
  v77 = a1;
  v78 = a2;
  v79 = sub_232CE9970();
  v9 = sub_232B48F0C(v79);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v9);
  sub_232B3516C();
  sub_232BAE120();
  MEMORY[0x28223BE20](v14);
  sub_232BAE0B8();
  v15 = sub_232CE9A30();
  v16 = sub_232B48F0C(v15);
  v18 = v17;
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v16);
  sub_232B3516C();
  v76 = v21 - v22;
  sub_232B20600();
  MEMORY[0x28223BE20](v23);
  v25 = &v72 - v24;
  v26 = sub_232CE99A0();
  v27 = sub_232B48F0C(v26);
  v29 = v28;
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v27);
  sub_232B20704();
  v34 = v33 - v32;
  if (qword_2814DFA58 != -1)
  {
    sub_232BAE068();
    swift_once();
  }

  v35 = sub_232B135C4(v15, qword_2814E3DC0);
  v73 = v18;
  v74 = v15;
  (*(v18 + 16))(v25, v35, v15);
  sub_232CE9980();
  sub_232CE9990();
  sub_232CE9950();
  v81 = v34;
  v36 = sub_232CE9990();
  v37 = sub_232CEA270();
  if (sub_232CEA340())
  {
    sub_232BAE0AC();
    v38 = a4;
    v39 = v29;
    v40 = v26;
    v41 = swift_slowAlloc();
    *v41 = 0;
    v42 = sub_232CE9960();
    _os_signpost_emit_with_name_impl(&dword_232B02000, v36, v37, v42, "DUFoundInEventClassificationImplementation:isDocumentEvent", "", v41, 2u);
    v26 = v40;
    v29 = v39;
    a4 = v38;
    sub_232B4ACF0();
    MEMORY[0x238393870]();
  }

  (*(v11 + 16))(v6, v5, v79);
  v43 = sub_232CE99E0();
  sub_232BAE1EC(v43);
  swift_allocObject();
  sub_232CE99D0();
  v44 = *(v11 + 8);
  v45 = sub_232BA5FEC();
  v46(v45);
  v47 = *(v80 + 16);
  if (!v47)
  {
    goto LABEL_12;
  }

  v86[0] = v77;
  v86[1] = v78;
  v84 = 10;
  v85 = 0xE100000000000000;
  v82 = 32;
  v83 = 0xE100000000000000;
  sub_232B48080();
  v48 = v47;
  sub_232BA63D0();
  sub_232CEA3B0();
  v49 = sub_232CEA2C0();

  if (!*(v49 + 16))
  {

LABEL_12:
    v66 = 2;
    v67 = v81;
    goto LABEL_17;
  }

  v50 = v76;
  sub_232CE9A20();

  v51 = sub_232CE9A00();
  v52 = sub_232CEA1E0();

  LODWORD(v80) = v52;
  if (sub_232BAE2C0())
  {
    sub_232BAE204();
    v53 = swift_slowAlloc();
    v78 = swift_slowAlloc();
    v86[0] = v78;
    *v53 = 136315394;
    v54 = v75;
    *(v53 + 4) = sub_232BAD2D4(v75, a4, v86);
    *(v53 + 12) = 2080;
    sub_232B124A8(&qword_27DDC6910, &unk_232CFA100);
    v55 = swift_allocObject();
    v79 = v26;
    v56 = v55;
    *(v55 + 16) = xmmword_232CF6460;
    v57 = sub_232B1DFEC(v54, a4, v49);
    v58 = MEMORY[0x277D83A80];
    v56[7] = MEMORY[0x277D839F8];
    v56[8] = v58;
    v60 = 0xBFF0000000000000;
    if ((v59 & 1) == 0)
    {
      v60 = v57;
    }

    v56[4] = v60;
    v61 = sub_232CE9D80();
    v63 = v48;
    v64 = sub_232BAD2D4(v61, v62, v86);
    v26 = v79;

    *(v53 + 14) = v64;
    v48 = v63;
    _os_log_impl(&dword_232B02000, v51, v80, "DUFoundInEventClassificationImplementation: Probability for predicting %s, Value: %s", v53, 0x16u);
    swift_arrayDestroy();
    v65 = sub_232BAE07C();
    MEMORY[0x238393870](v65);
    sub_232B4ACF0();
    MEMORY[0x238393870]();

    (*(v73 + 8))(v76, v74);
  }

  else
  {

    (*(v73 + 8))(v50, v74);
    v54 = v75;
  }

  v68 = COERCE_DOUBLE(sub_232B1DFEC(v54, a4, v49));
  v70 = v69;

  v67 = v81;
  if (v70)
  {
    v66 = 2;
  }

  else
  {
    v66 = v68 > a5;
  }

LABEL_17:
  sub_232BAC8AC();

  (*(v29 + 8))(v67, v26);
  return v66;
}

uint64_t sub_232BA9D70(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = *(*(sub_232B124A8(&qword_27DDC7398, &unk_232CF9070) - 8) + 64);
  v2[4] = sub_232B27FCC();
  v4 = sub_232CE9970();
  v2[5] = v4;
  sub_232B27FBC(v4);
  v2[6] = v5;
  v7 = *(v6 + 64) + 15;
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();
  v8 = sub_232CE9A30();
  v2[9] = v8;
  sub_232B27FBC(v8);
  v2[10] = v9;
  v11 = *(v10 + 64);
  v2[11] = sub_232B27FCC();
  v12 = sub_232CE99A0();
  v2[12] = v12;
  sub_232B27FBC(v12);
  v2[13] = v13;
  v15 = *(v14 + 64);
  v2[14] = sub_232B27FCC();
  sub_232B48304();

  return MEMORY[0x2822009F8](v16, v17, v18);
}

uint64_t sub_232BA9EF8()
{
  sub_232BAE1F8();
  v25 = v0;
  if (qword_2814DFA58 != -1)
  {
    sub_232BAE068();
    swift_once();
  }

  v1 = v0[14];
  v3 = v0[10];
  v2 = v0[11];
  v4 = v0[9];
  v5 = sub_232B135C4(v4, qword_2814E3DC0);
  (*(v3 + 16))(v2, v5, v4);
  sub_232CE9980();
  sub_232CE9990();
  sub_232CE9950();
  v6 = sub_232CE9990();
  v7 = sub_232CEA270();
  if (sub_232CEA340())
  {
    v8 = v0[8];
    sub_232BAE0AC();
    v9 = swift_slowAlloc();
    *v9 = 0;
    v10 = sub_232CE9960();
    _os_signpost_emit_with_name_impl(&dword_232B02000, v6, v7, v10, "DUFoundInEventClassificationImplementation:isDocumentEvent", "", v9, 2u);
    v11 = sub_232BAE08C();
    MEMORY[0x238393870](v11);
  }

  v12 = v0[7];
  v13 = v0[8];
  v14 = v0[5];
  v15 = v0[6];
  v16 = v0[4];

  (*(v15 + 16))(v12, v13, v14);
  v17 = sub_232CE99E0();
  sub_232BAE1EC(v17);
  swift_allocObject();
  v0[15] = sub_232CE99D0();
  (*(v15 + 8))(v13, v14);
  type metadata accessor for DUModelRunner();
  v24 = 1;
  v0[16] = DUModelRunner.__allocating_init(extractionCategory:pid:)(&v24, 0, 1);
  sub_232CE8D50();
  v18 = sub_232CE8E10();
  sub_232B12504(v16, 0, 1, v18);
  v19 = swift_task_alloc();
  v0[17] = v19;
  *v19 = v0;
  v19[1] = sub_232BAA154;
  v20 = v0[3];
  v21 = v0[4];
  v22 = v0[2];

  return sub_232BDE98C(v22, v20, v21);
}

uint64_t sub_232BAA154()
{
  sub_232BAE1F8();
  v3 = v2;
  v5 = v4;
  v6 = *v1;
  v7 = *v1;
  sub_232B26B3C();
  *v8 = v7;
  v9 = v6[17];
  *v8 = *v1;
  v7[18] = v0;

  v10 = v6[16];
  v11 = v6[4];
  if (!v0)
  {
    v7[19] = v3;
    v7[20] = v5;
  }

  sub_232B13790(v11, &qword_27DDC7398, &unk_232CF9070);

  sub_232B48304();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

uint64_t sub_232BAA2DC()
{
  v1 = v0[19];
  v2 = v0[20];
  v4 = v0[14];
  v3 = v0[15];
  v5 = v0[12];
  v6 = v0[13];
  v7 = v0[11];
  v9 = v0[7];
  v8 = v0[8];
  v15 = v0[4];

  v10 = HIBYTE(v1) & 0xF;
  if ((v1 & 0x2000000000000000) == 0)
  {
    v10 = v2 & 0xFFFFFFFFFFFFLL;
  }

  v11 = v10 != 0;
  sub_232BAC8AC();

  (*(v6 + 8))(v4, v5);

  v12 = v0[1];
  v13.n128_u64[0] = 1.0;

  return v12(v11, v13);
}

uint64_t sub_232BAA400()
{
  sub_232BAE1F8();
  v1 = v0[14];
  v2 = v0[15];
  v3 = v0[12];
  v4 = v0[13];
  v5 = v0[11];
  v7 = v0[7];
  v6 = v0[8];
  v8 = v0[4];
  sub_232BAC8AC();

  v9 = *(v4 + 8);
  v10 = sub_232BA5FEC();
  v11(v10);

  v12 = v0[1];
  v13 = v0[18];

  return v12(0);
}

void sub_232BAA4E8()
{
  sub_232B35110();
  v1 = v0;
  v3 = v2;
  v187 = v4;
  v5 = sub_232CE9A30();
  v189 = sub_232B48F0C(v5);
  v190 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v189);
  sub_232B3516C();
  v181 = (v9 - v10);
  sub_232B20600();
  MEMORY[0x28223BE20](v11);
  sub_232B20628();
  v183 = v12;
  sub_232B20600();
  MEMORY[0x28223BE20](v13);
  sub_232B20628();
  v186 = v14;
  sub_232B20600();
  MEMORY[0x28223BE20](v15);
  sub_232B20628();
  v191 = v16;
  sub_232B20600();
  MEMORY[0x28223BE20](v17);
  v19 = &v177 - v18;
  v20 = sub_232CE89D0();
  v21 = sub_232B48F0C(v20);
  v23 = v22;
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v21);
  sub_232B20704();
  v28 = v27 - v26;
  v192 = v3;
  v193 = v1;
  v196 = 0x2B5D090A735C5BLL;
  v197 = 0xE700000000000000;
  v194 = 32;
  v195 = 0xE100000000000000;
  sub_232B48080();
  v192 = sub_232BAE160();
  v193 = v29;
  v196 = 0x1000000000000038;
  v197 = 0x8000000232D059C0;
  v194 = 0;
  v195 = 0xE000000000000000;
  v30 = sub_232BAE160();
  v32 = v31;

  v192 = v30;
  v193 = v32;
  sub_232CE89B0();
  sub_232BA5CAC();
  v33 = sub_232CEA3A0();
  v35 = v34;
  (*(v23 + 8))(v28, v20);

  v36 = HIBYTE(v35) & 0xF;
  if ((v35 & 0x2000000000000000) == 0)
  {
    v36 = v33 & 0xFFFFFFFFFFFFLL;
  }

  if (!v36)
  {

    sub_232CE9A20();
    v68 = sub_232CE9A00();
    v69 = sub_232CEA1C0();
    if (sub_232BA6EB8(v69))
    {
      sub_232BAE0AC();
      *swift_slowAlloc() = 0;
      sub_232BA6138();
      _os_log_impl(v70, v71, v72, v73, v74, 2u);
      sub_232B4ACF0();
      MEMORY[0x238393870]();
    }

    (*(v190 + 8))(v19, v189);
    goto LABEL_84;
  }

  v180 = v33;
  v182 = v35;
  v37 = sub_232B57E40(500);
  v38 = MEMORY[0x238391B80](v37);
  v40 = v39;

  v41 = HIBYTE(v40) & 0xF;
  if ((v40 & 0x2000000000000000) == 0)
  {
    v41 = v38 & 0xFFFFFFFFFFFFLL;
  }

  v42 = 4 * v41;
  v43 = 7;
  if (((v40 >> 60) & ((v38 & 0x800000000000000) == 0)) != 0)
  {
    v43 = 11;
  }

  v44 = v43 | (v41 << 16);
  v45 = MEMORY[0x277D84F90];
  for (i = 15; i >> 14 < v42; i = v49)
  {
    v47 = sub_232CE9E80();
    if (v48)
    {
      v49 = v44;
    }

    else
    {
      v49 = v47;
    }

    if (i >> 14 > v49 >> 14)
    {
      __break(1u);
LABEL_87:
      __break(1u);
      goto LABEL_88;
    }

    sub_232BA5FEC();
    v50 = sub_232CE9FB0();
    v51 = MEMORY[0x238391B80](v50);
    v53 = v52;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v56 = *(v45 + 16);
      sub_232B35ECC();
      v45 = v57;
    }

    v54 = *(v45 + 16);
    if (v54 >= *(v45 + 24) >> 1)
    {
      sub_232B35ECC();
      v45 = v58;
    }

    *(v45 + 16) = v54 + 1;
    v55 = v45 + 16 * v54;
    *(v55 + 32) = v51;
    *(v55 + 40) = v53;
  }

  v59 = v191;
  sub_232CE9A20();

  v60 = sub_232CE9A00();
  v61 = sub_232CEA1A0();
  if (sub_232BA6EB8(v61))
  {
    sub_232BAE0E8();
    v62 = swift_slowAlloc();
    *v62 = 134217984;
    *(v62 + 4) = *(v45 + 16);

    sub_232BA6138();
    _os_log_impl(v63, v64, v65, v66, v67, 0xCu);
    sub_232B4ACF0();
    MEMORY[0x238393870]();
  }

  else
  {
  }

  v75 = *(v190 + 8);
  v190 += 8;
  v185 = v75;
  v75(v59, v189);
  type metadata accessor for NLLanguage();
  v77 = v76;
  v78 = sub_232BAE00C(&qword_2814DF970, type metadata accessor for NLLanguage);
  v179 = v77;
  v178 = v78;
  v79 = sub_232CE9C60();
  v188 = 0;
  v80 = 0;
  v81 = *(v45 + 16);
  v82 = v45 + 40;
  *&v83 = 134218242;
  v177 = v83;
  v184 = v45 + 40;
LABEL_26:
  v84 = (v82 + 16 * v80);
  while (v81 != v80)
  {
    if (v80 >= *(v45 + 16))
    {
      goto LABEL_87;
    }

    v85 = *(v84 - 1);
    v86 = *v84;
    v87 = objc_opt_self();

    sub_232BA5FEC();
    v88 = sub_232CE9D20();
    v89 = [v87 dominantLanguageForString_];

    if (v89)
    {
      sub_232B0D210(v188);
      swift_isUniquelyReferenced_nonNull_native();
      v192 = v79;
      v90 = sub_232B20540(v89);
      v91 = *(v79 + 16);
      LODWORD(v191) = v92;
      if (__OFADD__(v91, (v92 & 1) == 0))
      {
        goto LABEL_89;
      }

      v93 = v90;
      sub_232B124A8(&qword_27DDC7548, &qword_232CFA110);
      if (sub_232CEA5C0())
      {
        v79 = v192;
        v94 = sub_232B20540(v89);
        v96 = v191;
        v97 = v186;
        if ((v191 & 1) != (v95 & 1))
        {
          goto LABEL_92;
        }

        v93 = v94;

        if (v96)
        {
          goto LABEL_39;
        }

LABEL_37:
        *(v79 + 8 * (v93 >> 6) + 64) |= 1 << v93;
        *(*(v79 + 48) + 8 * v93) = v89;
        *(*(v79 + 56) + 8 * v93) = 0;
        v98 = *(v79 + 16);
        v99 = __OFADD__(v98, 1);
        v100 = v98 + 1;
        if (v99)
        {
          goto LABEL_91;
        }

        *(v79 + 16) = v100;
        v101 = v89;
      }

      else
      {

        v79 = v192;
        v97 = v186;
        if ((v191 & 1) == 0)
        {
          goto LABEL_37;
        }
      }

LABEL_39:
      v102 = *(v79 + 56);
      v103 = *(v102 + 8 * v93);
      v99 = __OFADD__(v103, 1);
      v104 = v103 + 1;
      if (v99)
      {
        goto LABEL_90;
      }

      ++v80;
      *(v102 + 8 * v93) = v104;
      sub_232CE9A20();
      v105 = v89;
      v106 = sub_232CE9A00();
      v107 = sub_232CEA1A0();

      if (os_log_type_enabled(v106, v107))
      {
        sub_232BAE204();
        v108 = swift_slowAlloc();
        v191 = v106;
        v109 = v108;
        sub_232BAE0F4();
        v110 = swift_slowAlloc();
        v192 = v110;
        *v109 = v177;
        *(v109 + 4) = v80;
        *(v109 + 12) = 2080;
        v111 = sub_232CE9D50();
        v113 = sub_232BAD2D4(v111, v112, &v192);
        v188 = v105;
        v114 = v113;

        *(v109 + 14) = v114;
        v115 = v107;
        v116 = v191;
        _os_log_impl(&dword_232B02000, v191, v115, "DUFoundInEventClassificationImplementation: Chunk %ld language: %s", v109, 0x16u);
        sub_232B2040C(v110);
        sub_232B4ACF0();
        MEMORY[0x238393870]();
        v117 = sub_232BAE08C();
        MEMORY[0x238393870](v117);

        v118 = v186;
      }

      else
      {

        v118 = v97;
      }

      v185(v118, v189);
      v188 = sub_232B0D260;
      v82 = v184;
      goto LABEL_26;
    }

    v84 += 2;
    ++v80;
  }

  v119 = v79 + 64;
  v120 = 1 << *(v79 + 32);
  v121 = -1;
  if (v120 < 64)
  {
    v121 = ~(-1 << v120);
  }

  v122 = v121 & *(v79 + 64);
  v191 = v79;
  if (!v122)
  {
    v127 = 0;
    v126 = (v120 + 63) >> 6;
    while (1)
    {
      v123 = v122 + 1;
      if (v122 + 1 >= v126)
      {
        break;
      }

      v128 = *(v79 + 8 * v122 + 72);
      v127 += 64;
      ++v122;
      if (v128)
      {
        v125 = (v128 - 1) & v128;
        v124 = __clz(__rbit64(v128)) + v127;
        goto LABEL_52;
      }
    }

    v168 = v181;
    sub_232CE9A20();
    v169 = sub_232CE9A00();
    v170 = sub_232CEA1C0();
    if (sub_232BA6EB8(v170))
    {
      sub_232BAE0AC();
      *swift_slowAlloc() = 0;
      sub_232BA6138();
      _os_log_impl(v171, v172, v173, v174, v175, 2u);
      sub_232B4ACF0();
      MEMORY[0x238393870]();
    }

    v185(v168, v189);
    sub_232B0D210(v188);
LABEL_84:
    v176 = v187;
    v187[1] = 0u;
    v176[2] = 0u;
    *v176 = 0u;
LABEL_85:
    sub_232B20A00();
    return;
  }

  v123 = 0;
  v124 = __clz(__rbit64(v122));
  v125 = (v122 - 1) & v122;
  v126 = (v120 + 63) >> 6;
LABEL_52:
  v129 = *(v191[6].isa + v124);
  v130 = *(v191[7].isa + v124);
  v186 = *MEMORY[0x277CD8708];
  v131 = v129;

LABEL_53:
  v132 = v131;
  v184 = v130;
  while (v125)
  {
LABEL_59:
    v134 = __clz(__rbit64(v125));
    v125 &= v125 - 1;
    v135 = (v123 << 9) | (8 * v134);
    v131 = *(v191[6].isa + v135);
    v136 = *(v191[7].isa + v135);
    if (v130 == v136)
    {
      v137 = sub_232CE9D50();
      v139 = v138;
      if (v137 == sub_232CE9D50() && v139 == v140)
      {

        v130 = v184;
      }

      else
      {
        v181 = v132;
        v142 = sub_232BAE248();
        v143 = v131;

        if ((v142 & 1) == 0)
        {
          v145 = sub_232CE9D50();
          v147 = v146;
          if (v145 == sub_232CE9D50() && v147 == v148)
          {

            v132 = v181;
            v130 = v184;
            goto LABEL_76;
          }

          v150 = sub_232BAE248();

          v132 = v181;
          v130 = v184;
          if (v150)
          {
            goto LABEL_76;
          }

          goto LABEL_67;
        }

        v132 = v181;
        v130 = v184;
      }
    }

    else
    {
      v144 = v131;
      if (v130 < v136)
      {
        v130 = v136;
LABEL_76:

        goto LABEL_53;
      }

LABEL_67:
    }
  }

  while (1)
  {
    v133 = v123 + 1;
    if (__OFADD__(v123, 1))
    {
      break;
    }

    if (v133 >= v126)
    {
      v151 = v191;

      v152 = [objc_opt_self() supportedLanguages];
      v153 = sub_232CEA0D0();

      v196 = v132;
      v154 = v132;
      sub_232CEA490();
      v155 = sub_232BA7E44(&v192, v153);

      sub_232B1FA60(&v192);
      v156 = v183;
      sub_232CE9A20();
      v157 = v154;
      v158 = sub_232CE9A00();
      v159 = sub_232CEA1A0();

      if (os_log_type_enabled(v158, v159))
      {
        v160 = swift_slowAlloc();
        sub_232BAE0F4();
        v161 = swift_slowAlloc();
        v192 = v161;
        *v160 = 136315394;
        v162 = sub_232CE9D50();
        v164 = sub_232BAD2D4(v162, v163, &v192);

        *(v160 + 4) = v164;
        *(v160 + 12) = 1024;
        *(v160 + 14) = v155;
        _os_log_impl(&dword_232B02000, v158, v159, "DUFoundInEventClassificationImplementation: Dominant language from chunks: %s, supported: %{BOOL}d", v160, 0x12u);
        sub_232B2040C(v161);
        v151 = v191;
        sub_232B4ACF0();
        MEMORY[0x238393870]();
        sub_232B4ACF0();
        MEMORY[0x238393870]();
      }

      v185(v156, v189);
      sub_232B0D210(v188);
      v165 = v187;
      v166 = v180;
      *v187 = v155;
      v165[1] = v132;
      v167 = v182;
      v165[2] = v166;
      v165[3] = v167;
      v165[4] = v151;
      v165[5] = v45;
      goto LABEL_85;
    }

    v125 = *(v119 + 8 * v133);
    ++v123;
    if (v125)
    {
      v123 = v133;
      goto LABEL_59;
    }
  }

LABEL_88:
  __break(1u);
LABEL_89:
  __break(1u);
LABEL_90:
  __break(1u);
LABEL_91:
  __break(1u);
LABEL_92:
  sub_232CEA7A0();
  __break(1u);
}

void sub_232BAB1FC()
{
  sub_232B35110();
  v0 = sub_232CE9A30();
  v1 = sub_232B48F0C(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v1);
  sub_232B20704();
  v8 = v7 - v6;
  sub_232BAE188();
  sub_232BAA4E8();
  if (v21)
  {
    if (v20)
    {
      v9 = v20;
      v10 = sub_232BA5CAC();
      sub_232BAE268(v10, v11);
      goto LABEL_8;
    }

    sub_232BAE268(v18, 0);
  }

  sub_232CE9A20();

  v12 = sub_232CE9A00();
  v13 = sub_232CEA1A0();

  if (os_log_type_enabled(v12, v13))
  {
    sub_232BAE0E8();
    v14 = swift_slowAlloc();
    sub_232BAE0F4();
    v19 = swift_slowAlloc();
    *v14 = 136380675;
    v15 = sub_232BAE188();
    *(v14 + 4) = sub_232BAD2D4(v15, v16, v17);
    _os_log_impl(&dword_232B02000, v12, v13, "DUFoundInEventClassificationImplementation: Cannot detect language for text: %{private}s", v14, 0xCu);
    sub_232B2040C(v19);
    sub_232B4ACF0();
    MEMORY[0x238393870]();
    sub_232B4ACF0();
    MEMORY[0x238393870]();
  }

  (*(v3 + 8))(v8, v0);
LABEL_8:
  sub_232B20A00();
}

uint64_t sub_232BAB3D4(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentEmailData_headers;
  sub_232BA63D0();
  swift_beginAccess();
  v3 = *(a1 + v2);
  v4 = (a1 + OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentEmailData_senderEmail);
  sub_232BA63D0();
  swift_beginAccess();
  v6 = *v4;
  v5 = v4[1];

  sub_232BAB484();
  v8 = v7;

  return v8;
}

void sub_232BAB484()
{
  sub_232B35110();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = sub_232CE9A30();
  v7 = sub_232B48F0C(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7);
  sub_232B3516C();
  v14 = v12 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v28 - v16;
  if (v5 && v1)
  {
    type metadata accessor for DUInhumans();
    swift_initStackObject();
    if (*(v5 + 16))
    {
      [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
    }

    else
    {
      sub_232CE9A20();
      v18 = sub_232CE9A00();
      v19 = sub_232CEA1E0();
      if (os_log_type_enabled(v18, v19))
      {
        sub_232BAE0AC();
        v20 = swift_slowAlloc();
        *v20 = 0;
        _os_log_impl(&dword_232B02000, v18, v19, "DUFoundInEventClassificationImplementation: empty emailHeadersDictionary", v20, 2u);
        sub_232B4ACF0();
        MEMORY[0x238393870]();
      }

      (*(v9 + 8))(v17, v6);
    }

    v21 = HIBYTE(v1) & 0xF;
    if ((v1 & 0x2000000000000000) == 0)
    {
      v21 = v3 & 0xFFFFFFFFFFFFLL;
    }

    if (v21)
    {
      v22 = objc_opt_self();
      v23 = sub_232CE9D20();
      LOBYTE(v22) = [v22 isInhumanEmailAddress_];

      if (v22)
      {
        LOBYTE(v24) = 0;
      }

      else
      {
        v24 = sub_232BD7D58(v3, v1) ^ 1;
      }

      [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
    }

    else
    {
      sub_232CE9A20();
      v25 = sub_232CE9A00();
      v26 = sub_232CEA1E0();
      if (os_log_type_enabled(v25, v26))
      {
        sub_232BAE0AC();
        v27 = swift_slowAlloc();
        *v27 = 0;
        _os_log_impl(&dword_232B02000, v25, v26, "DUFoundInEventClassificationImplementation: empty senderEmail", v27, 2u);
        sub_232B4ACF0();
        MEMORY[0x238393870]();
      }

      (*(v9 + 8))(v14, v6);
    }
  }

  sub_232B20A00();
}

void *sub_232BAB768(void *a1, uint64_t a2, unint64_t a3)
{
  v6 = sub_232B124A8(&qword_27DDC7550, &qword_232CFA118);
  v7 = sub_232B48F0C(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7);
  sub_232B3516C();
  v14 = v12 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = v25 - v16;
  if (a1)
  {
    if (a1[2] && (v18 = sub_232B1F160(0x7463656A627573, 0xE700000000000000), (v19 & 1) != 0))
    {
      v20 = (a1[7] + 16 * v18);
      a2 = *v20;
      a3 = v20[1];
    }

    else
    {
      if (!a3)
      {
        return 0;
      }

      swift_bridgeObjectRetain_n();
    }

    v21 = HIBYTE(a3) & 0xF;
    if ((a3 & 0x2000000000000000) == 0)
    {
      v21 = a2 & 0xFFFFFFFFFFFFLL;
    }

    if (v21)
    {
      sub_232B124A8(&qword_27DDC7558, &qword_232CFA120);
      sub_232CE9220();
      sub_232CE9230();
      v22 = *(v9 + 8);
      v22(v14, v6);
      v25[0] = a2;
      v25[1] = a3;
      sub_232BAD8B0();
      sub_232BAD904();
      v23 = sub_232CE9CC0();

      a1 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
      v22(v17, v6);
      return a1;
    }

    return 0;
  }

  return a1;
}

char *sub_232BAB9A0()
{
  v1 = v0;
  v2 = sub_232B5821C();
  if (v3)
  {
    v4 = v2;
    v5 = v3;
    v6 = sub_232B58760();
    if (v6)
    {
      v7 = OBJC_IVAR____TtC21DocumentUnderstanding18DUDocumentHTMLData_documentEmailData;
      sub_232BA63D0();
      swift_beginAccess();
      v8 = *&v6[v7];
      v9 = v8;

      if (v8)
      {
        v10 = &v9[OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentEmailData_subject];
        sub_232BA63D0();
        swift_beginAccess();
        v6 = *v10;
        v8 = *(v10 + 1);
        v11 = OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentEmailData_headers;
        sub_232BA63D0();
        swift_beginAccess();
        v12 = *&v9[v11];
        v13 = &v9[OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentEmailData_senderEmail];
        sub_232BA63D0();
        swift_beginAccess();
        v14 = *(v13 + 1);

LABEL_9:
        v1 = sub_232BABB6C(v4, v5, v6, v8);

        return v1;
      }

      v6 = 0;
    }

    else
    {
      v8 = 0;
    }

    v9 = 0;
    goto LABEL_9;
  }

  sub_232B4A95C();
  sub_232B4ACD4();
  swift_allocError();
  sub_232BAE228(v15, 74);
  return v1;
}

char *sub_232BABB6C(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  v136 = a4;
  v131 = a3;
  v135 = a2;
  v134 = a1;
  v6 = sub_232CE89D0();
  v7 = sub_232B48F0C(v6);
  v137 = v8;
  v138 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v7);
  sub_232B20704();
  v11 = sub_232CE9970();
  v12 = sub_232B48F0C(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v12);
  sub_232B3516C();
  sub_232BAE120();
  MEMORY[0x28223BE20](v17);
  v19 = v130 - v18;
  v20 = sub_232CE9A30();
  v21 = sub_232B48F0C(v20);
  v23 = v22;
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v21);
  sub_232B3516C();
  v130[1] = v26 - v27;
  sub_232B20600();
  MEMORY[0x28223BE20](v28);
  sub_232B20628();
  v130[2] = v29;
  sub_232B20600();
  MEMORY[0x28223BE20](v30);
  sub_232B20628();
  v130[3] = v31;
  sub_232B20600();
  MEMORY[0x28223BE20](v32);
  sub_232B20628();
  v130[4] = v33;
  sub_232B20600();
  MEMORY[0x28223BE20](v34);
  sub_232BAE0B8();
  v35 = sub_232CE99A0();
  v36 = sub_232B48F0C(v35);
  v141 = v37;
  v142 = v36;
  v39 = *(v38 + 64);
  MEMORY[0x28223BE20](v36);
  sub_232B20704();
  v42 = v41 - v40;
  if (qword_2814DFA58 != -1)
  {
    sub_232BAE068();
    swift_once();
  }

  v43 = sub_232B135C4(v20, qword_2814E3DC0);
  v132 = v23;
  v44 = *(v23 + 16);
  v133 = v20;
  v44(v4, v43, v20);
  sub_232CE9980();
  sub_232CE9990();
  sub_232CE9950();
  v140 = v42;
  v45 = sub_232CE9990();
  v46 = sub_232CEA270();
  if (sub_232CEA340())
  {
    sub_232BAE0AC();
    v47 = swift_slowAlloc();
    *v47 = 0;
    v48 = sub_232CE9960();
    _os_signpost_emit_with_name_impl(&dword_232B02000, v45, v46, v48, "DUFoundInEventClassificationImplementation:isCandidateForEventExtraction", "", v47, 2u);
    sub_232B4ACF0();
    MEMORY[0x238393870]();
  }

  (*(v14 + 16))(v5, v19, v11);
  v49 = sub_232CE99E0();
  sub_232BAE1EC(v49);
  swift_allocObject();
  v139 = sub_232CE99D0();
  (*(v14 + 8))(v19, v11);
  v50 = static DULLMInput.cleanText(_:)(v134, v135);
  v52 = v51;
  if (v136)
  {
    v145 = v131;
    v146 = v136;

    MEMORY[0x238391C30](32, 0xE100000000000000);

    MEMORY[0x238391C30](v50, v52);

    v53 = v146;
    v135 = v145;
  }

  else
  {

    v135 = v50;
    v53 = v52;
  }

  v145 = v50;
  v146 = v52;
  sub_232CE89B0();
  sub_232B48080();
  v136 = sub_232CEA3A0();
  v55 = v54;
  v56 = *(v137 + 8);
  v57 = sub_232BA5CAC();
  v56(v57);

  v145 = v135;
  v146 = v53;
  sub_232CE89B0();
  v137 = sub_232CEA3A0();
  v59 = v58;
  v60 = sub_232BA5CAC();
  v56(v60);

  v61 = [objc_allocWithZone(type metadata accessor for DUFoundInEventClassificationResult()) init];
  sub_232BA4DEC(0, &qword_2814DF8C0, 0x277CCABB0);
  v62 = sub_232BAE1D4();
  v63 = OBJC_IVAR____TtC21DocumentUnderstanding34DUFoundInEventClassificationResult_isEventCandidate;
  sub_232B13F5C();
  v64 = *(v61 + v63);
  *(v61 + v63) = v62;

  type metadata accessor for DUIDClassificationImplementation();
  if (!static DUIDClassificationImplementation.textLengthGate(for:minLength:maxLength:)(v136, v55, 40, 0x7FFFFFFFFFFFFFFFLL))
  {
    v86 = v65;

    sub_232CE9A20();
    v87 = sub_232CE9A00();
    sub_232CEA1E0();
    v88 = sub_232BAE140();
    if (os_log_type_enabled(v88, v89))
    {
      sub_232BAE204();
      v90 = swift_slowAlloc();
      v59 = v63;
      *v90 = 134218240;
      *(v90 + 4) = v86;
      *(v90 + 12) = 2048;
      *(v90 + 14) = 40;
      sub_232BAE130();
      _os_log_impl(v91, v92, v93, v94, v95, 0x16u);
      sub_232B4ACF0();
      MEMORY[0x238393870]();
    }

    goto LABEL_19;
  }

  sub_232CEA2F0();
  sub_232B13F5C();
  sub_232BAE2A8();
  v66 = v137;
  static DUIDClassificationImplementation.containsDataDetector(for:)();
  v68 = v67;

  if ((v68 & 1) == 0)
  {

    sub_232CE9A20();
    v87 = sub_232CE9A00();
    sub_232CEA1E0();
    v96 = sub_232BAE140();
    if (os_log_type_enabled(v96, v97))
    {
      sub_232BAE0AC();
      v59 = v63;
      *swift_slowAlloc() = 0;
      sub_232BAE130();
      _os_log_impl(v98, v99, v100, v101, v102, 2u);
      sub_232B4ACF0();
      MEMORY[0x238393870]();
    }

LABEL_19:

    sub_232BAE09C();
    sub_232BAE21C();
    v103();
    sub_232BAE1D4();
    sub_232B13F5C();
    sub_232BAE2A8();
    v104 = sub_232BAE1D4();
    goto LABEL_20;
  }

  v69 = v66;
  sub_232CEA2F0();
  sub_232B13F5C();
  sub_232BAE2A8();
  sub_232BAB1FC();
  v71 = v70;
  v73 = v72;

  if (!v73)
  {

    sub_232B4A95C();
    sub_232B4ACD4();
    swift_allocError();
    sub_232BAE228(v107, 78);
    v108 = v61;
LABEL_31:

    sub_232BAE1B0();

    (*(v141 + 8))(v108, v142);
    return v61;
  }

  v138 = v63;
  if (v71)
  {
    v136 = v59;
    v74 = sub_232CEA2F0();
    v75 = OBJC_IVAR____TtC21DocumentUnderstanding34DUFoundInEventClassificationResult_isSupportedLocale;
    sub_232B13F5C();
    v76 = *(v61 + v75);
    *(v61 + v75) = v74;

    sub_232CE9A20();
    v77 = v73;
    v78 = sub_232CE9A00();
    v79 = sub_232CEA1E0();

    if (os_log_type_enabled(v78, v79))
    {
      sub_232BAE0E8();
      v80 = swift_slowAlloc();
      sub_232BAE0F4();
      v135 = swift_slowAlloc();
      v143 = v135;
      *v80 = 136315138;
      v147 = v77;
      type metadata accessor for NLLanguage();
      v81 = v77;
      v82 = sub_232CE9DC0();
      v84 = sub_232BAD2D4(v82, v83, &v143);

      *(v80 + 4) = v84;
      _os_log_impl(&dword_232B02000, v78, v79, "DUFoundInEventClassificationImplementation: Loading classifier model from OTA for %s", v80, 0xCu);
      sub_232B2040C(v135);
      v85 = sub_232BAE08C();
      MEMORY[0x238393870](v85);
      sub_232B4ACF0();
      MEMORY[0x238393870]();
    }

    sub_232BAE09C();
    sub_232BAE21C();
    v122();
    v63 = v138;
    v108 = v77;
    v123 = v130[0];
    sub_232BA8310();

    if (!*(v123 + 16))
    {

      sub_232B4A95C();
      sub_232B4ACD4();
      swift_allocError();
      *v125 = 0;
      *(v125 + 8) = 0;
      v126 = 2;
      goto LABEL_30;
    }

    v124 = sub_232BA9754(v69, v136, 0x746E657665, 0xE500000000000000, 0.3);

    if (v124 == 2)
    {
      sub_232B4A95C();
      sub_232B4ACD4();
      swift_allocError();
      *v125 = 0xD000000000000058;
      *(v125 + 8) = 0x8000000232D05AC0;
      v126 = 1;
LABEL_30:
      *(v125 + 16) = v126;
      swift_willThrow();

      goto LABEL_31;
    }

    v104 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];

    v59 = OBJC_IVAR____TtC21DocumentUnderstanding34DUFoundInEventClassificationResult_isClassifiedAsEvent;
    sub_232B13F5C();
    v128 = *&v59[v61];
    *&v59[v61] = v104;
    v129 = v104;
  }

  else
  {

    sub_232CE9A20();
    v59 = v73;
    v109 = sub_232CE9A00();
    v110 = sub_232CEA1E0();

    if (os_log_type_enabled(v109, v110))
    {
      sub_232BAE204();
      v111 = swift_slowAlloc();
      LODWORD(v136) = v110;
      v112 = v111;
      v137 = swift_slowAlloc();
      v144[0] = v137;
      *v112 = 136315394;
      v113 = sub_232CE9D50();
      v115 = sub_232BAD2D4(v113, v114, v144);

      *(v112 + 4) = v115;
      *(v112 + 12) = 2080;
      v116 = [objc_opt_self() supportedLanguages];
      sub_232CEA0D0();

      v117 = sub_232CEA0E0();
      v119 = v118;

      v120 = sub_232BAD2D4(v117, v119, v144);

      *(v112 + 14) = v120;
      _os_log_impl(&dword_232B02000, v109, v136, "DUFoundInEventClassificationImplementation: Dominant Language is %s, not supported in %s", v112, 0x16u);
      swift_arrayDestroy();
      v121 = sub_232BAE07C();
      MEMORY[0x238393870](v121);
      sub_232B4ACF0();
      MEMORY[0x238393870]();
    }

    sub_232BAE09C();
    sub_232BAE21C();
    v127();
    sub_232BAE1D4();
    sub_232B13F5C();
    sub_232BAE2A8();
    v104 = sub_232BAE1D4();

    v63 = v138;
  }

LABEL_20:
  v105 = *(v61 + v63);
  *(v61 + v63) = v104;

  sub_232BAE1B0();

  (*(v141 + 8))(v59, v142);
  return v61;
}

void sub_232BAC8AC()
{
  sub_232B35110();
  v1 = v0;
  v27 = v2;
  v3 = sub_232CE99B0();
  v4 = sub_232B48F0C(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  sub_232B20704();
  v11 = v10 - v9;
  v12 = sub_232CE9970();
  v13 = sub_232B48F0C(v12);
  v15 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v13);
  sub_232B20704();
  v18 = sub_232CE9990();
  sub_232CE99C0();
  v26 = sub_232CEA260();
  if ((sub_232CEA340() & 1) == 0)
  {
LABEL_13:

    v23 = *(v15 + 8);
    v24 = sub_232BAE188();
    v25(v24);
    sub_232B20A00();
    return;
  }

  if ((v1 & 1) == 0)
  {
    v19 = v27;
    if (v27)
    {
LABEL_9:

      sub_232CE99F0();

      if ((*(v6 + 88))(v11, v3) == *MEMORY[0x277D85B00])
      {
        v20 = "[Error] Interval already ended";
      }

      else
      {
        (*(v6 + 8))(v11, v3);
        v20 = "";
      }

      sub_232BAE0AC();
      v21 = swift_slowAlloc();
      *v21 = 0;
      v22 = sub_232CE9960();
      _os_signpost_emit_with_name_impl(&dword_232B02000, v18, v26, v22, v19, v20, v21, 2u);
      sub_232B4ACF0();
      MEMORY[0x238393870]();
      goto LABEL_13;
    }

    __break(1u);
  }

  if (v27 >> 32)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if ((v27 & 0xFFFFF800) != 0xD800)
  {
    if (v27 >> 16 <= 0x10)
    {
      v19 = &v28;
      goto LABEL_9;
    }

    goto LABEL_15;
  }

LABEL_16:
  __break(1u);
}

uint64_t sub_232BACB04(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_232CE9A30();
  v2[4] = v3;
  sub_232B27FBC(v3);
  v2[5] = v4;
  v6 = *(v5 + 64);
  v2[6] = sub_232B27FCC();
  sub_232B48304();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_232BACBB0()
{
  sub_232BAE1F8();
  v1 = *(v0[2] + 24);
  if (v1)
  {
    v2 = v0[3];
    v3 = v1;
    v4 = 0;
    v6 = sub_232BAB9A0();

    v7 = v6;
    v8 = v0[3];
    v9 = *(v8 + 16);
    *(v8 + 16) = 0;
  }

  else
  {
    sub_232B4A95C();
    sub_232B4ACD4();
    v7 = swift_allocError();
    *v5 = 0xD000000000000041;
    *(v5 + 8) = 0x8000000232D05BE0;
    *(v5 + 16) = 0;
    v4 = 1;
  }

  v10 = v0[6];

  v11 = v0[1];

  return v11(v7, v4);
}

uint64_t DUFoundInEventClassificationImplementation.deinit()
{
  v1 = *(v0 + 32);

  sub_232B13790(v0 + OBJC_IVAR____TtC21DocumentUnderstanding42DUFoundInEventClassificationImplementation_currentlyLoadedLocale, &qword_27DDC7398, &unk_232CF9070);
  return v0;
}

uint64_t DUFoundInEventClassificationImplementation.__deallocating_deinit()
{
  DUFoundInEventClassificationImplementation.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_232BACE6C(uint64_t a1, uint64_t a2)
{
  *(v3 + 16) = a1;
  v5 = *v2;
  v6 = swift_task_alloc();
  *(v3 + 24) = v6;
  *v6 = v3;
  v6[1] = sub_232BACF08;

  return sub_232BACB04(a2);
}

uint64_t sub_232BACF08(uint64_t a1, char a2)
{
  v5 = *(*v2 + 24);
  v6 = *(*v2 + 16);
  v7 = *v2;
  sub_232B26B3C();
  *v8 = v7;

  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  v9 = *(v7 + 8);

  return v9();
}

uint64_t sub_232BAD114(uint64_t (*a1)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v1 = v3;
  if (!result)
  {
    result = a1(result, *(v3 + 16) + 1, 1, v3);
    *v1 = result;
  }

  return result;
}

uint64_t sub_232BAD248(uint64_t result)
{
  if (result + 1 > *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    return sub_232CEA000();
  }

  return result;
}

uint64_t sub_232BAD28C(uint64_t result, uint64_t (*a2)(BOOL))
{
  v3 = *(*v2 + 24);
  if (result + 1 > (v3 >> 1))
  {
    result = a2(v3 > 1);
    *v2 = result;
  }

  return result;
}

uint64_t sub_232BAD2D4(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  sub_232B48304();
  v9 = sub_232BAD394(v6, v7, v8, 1, a1, a2);
  v10 = v14[0];
  if (v9)
  {
    v11 = v9;

    ObjectType = swift_getObjectType();
    v14[0] = v11;
  }

  else
  {
    ObjectType = MEMORY[0x277D840A0];
    v14[0] = a1;
    v14[1] = a2;
  }

  v12 = *a3;
  if (*a3)
  {
    sub_232B204B4(v14, *a3);
    *a3 = v12 + 32;
  }

  sub_232B2040C(v14);
  return v10;
}

unint64_t sub_232BAD394(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_232BAD494(a5, a6);
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
    result = sub_232CEA550();
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

uint64_t sub_232BAD494(uint64_t a1, unint64_t a2)
{
  v4 = sub_232BAD4E0(a1, a2);
  sub_232BAD5F8(&unk_28480CC60);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_232BAD4E0(uint64_t a1, unint64_t a2)
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

  for (; v5; v5 = sub_232CE9EC0())
  {
    result = sub_232BA2A94(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_232CEA4D0();
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
          result = sub_232CEA550();
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

  return MEMORY[0x277D84F90];
}

uint64_t sub_232BAD5F8(uint64_t result)
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

    result = sub_232BAD6DC(result, v8, 1, v3);
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

char *sub_232BAD6DC(char *result, int64_t a2, char a3, char *a4)
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
    sub_232B124A8(&qword_27DDC7488, &qword_232CF9168);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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

uint64_t sub_232BAD7D0(uint64_t a1, uint64_t a2)
{
  v4 = sub_232B124A8(&qword_27DDC7398, &unk_232CF9070);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_232BAD840(uint64_t a1, uint64_t a2)
{
  v4 = sub_232B124A8(&qword_27DDC7398, &unk_232CF9070);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_232BAD8B0()
{
  result = qword_2814DFA38;
  if (!qword_2814DFA38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814DFA38);
  }

  return result;
}

unint64_t sub_232BAD904()
{
  result = qword_2814E25A8;
  if (!qword_2814E25A8)
  {
    sub_232B27EEC(&qword_27DDC7550, &qword_232CFA118);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814E25A8);
  }

  return result;
}

__n128 sub_232BAD974(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_232BAD988(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_232BAD9C8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t type metadata accessor for DUFoundInEventClassificationImplementation()
{
  result = qword_2814E0050;
  if (!qword_2814E0050)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_232BADA78()
{
  sub_232BADED8();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t dispatch thunk of DUFoundInEventClassificationImplementation.isDocumentEventLLM(for:labelThreshold:)(uint64_t a1, uint64_t a2, double a3)
{
  v8 = *(*v3 + 232);
  v13 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_232BADCEC;
  v11.n128_f64[0] = a3;

  return v13(a1, a2, v11);
}

uint64_t sub_232BADCEC(uint64_t a1, double a2)
{
  v5 = *(*v2 + 16);
  v6 = *v2;
  sub_232B26B3C();
  *v7 = v6;

  v8 = *(v6 + 8);
  v9.n128_f64[0] = a2;

  return v8(a1, v9);
}

void sub_232BADED8()
{
  if (!qword_2814E25D8)
  {
    sub_232CE8E10();
    v0 = sub_232CEA350();
    if (!v1)
    {
      atomic_store(v0, &qword_2814E25D8);
    }
  }
}

uint64_t sub_232BADF30()
{
  v0 = sub_232CE9D50();
  v2 = v1;
  if (v0 == sub_232CE9D50() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_232BAE0CC();
  }

  return v5 & 1;
}

void sub_232BADFA8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
  }
}

uint64_t sub_232BAE00C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_232BAE0CC()
{

  return sub_232CEA750();
}

uint64_t sub_232BAE160()
{

  return sub_232CEA3B0();
}

uint64_t sub_232BAE194()
{

  return sub_232CEA750();
}

void sub_232BAE1B0()
{
  v3 = *(v0 - 240);
  v2 = *(v0 - 232);

  sub_232BAC8AC();
}

uint64_t sub_232BAE1D4()
{

  return sub_232CEA2F0();
}

uint64_t sub_232BAE1EC(uint64_t result)
{
  v1 = *(result + 48);
  v2 = *(result + 52);
  return result;
}

uint64_t sub_232BAE228@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  *a1 = a2 & 0xFFFFFFFFFFFFLL | 0xD000000000000000;
  *(a1 + 8) = v2;
  *(a1 + 16) = 0;

  return swift_willThrow();
}

uint64_t sub_232BAE248()
{

  return sub_232CEA750();
}

void sub_232BAE268(uint64_t a1, void *a2)
{

  sub_232BADFA8(a1, a2, v3, v2);
}

void sub_232BAE288(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

void sub_232BAE2A8()
{
  v4 = *(v2 + v1);
  *(v2 + v1) = v0;
}

BOOL sub_232BAE2C0()
{

  return os_log_type_enabled(v0, v1);
}

id DUFoundInEventClassificationResult.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

void *sub_232BAE340()
{
  v1 = OBJC_IVAR____TtC21DocumentUnderstanding34DUFoundInEventClassificationResult_isSupportedLocale;
  sub_232B26BFC();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_232BAE418(id *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *a1;
  sub_232BAE3D8();
}

void *sub_232BAE4C8()
{
  v1 = OBJC_IVAR____TtC21DocumentUnderstanding34DUFoundInEventClassificationResult_containsDataDetectors;
  sub_232B26BFC();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_232BAE5A0(id *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *a1;
  sub_232BAE560();
}

void *sub_232BAE650()
{
  v1 = OBJC_IVAR____TtC21DocumentUnderstanding34DUFoundInEventClassificationResult_isClassifiedAsEvent;
  sub_232B26BFC();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_232BAE728(id *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *a1;
  sub_232BAE6E8();
}

void *sub_232BAE7D8()
{
  v1 = OBJC_IVAR____TtC21DocumentUnderstanding34DUFoundInEventClassificationResult_textLengthPass;
  sub_232B26BFC();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_232BAE8B0(id *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *a1;
  sub_232BAE870();
}

void *sub_232BAE960()
{
  v1 = OBJC_IVAR____TtC21DocumentUnderstanding34DUFoundInEventClassificationResult_isEventCandidate;
  sub_232B26BFC();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_232BAEA38(id *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *a1;
  sub_232BAE9F8();
}

char *sub_232BAEAB4(uint64_t a1)
{
  v2 = type metadata accessor for DocumentUnderstanding_ClientInterface_FoundInEventClassificationResult();
  v3 = sub_232B13F24(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  sub_232B20704();
  v8 = v7 - v6;
  sub_232BAFF70(a1, v7 - v6);
  v9 = [objc_allocWithZone(type metadata accessor for DUFoundInEventClassificationResult()) init];
  if (*(v8 + v2[5]) != 2)
  {
    sub_232BB0058(objc_allocWithZone(MEMORY[0x277CCABB0]));
    sub_232B13F5C();
    sub_232BB0088();
  }

  if (*(v8 + v2[6]) != 2)
  {
    sub_232BB0058(objc_allocWithZone(MEMORY[0x277CCABB0]));
    sub_232B13F5C();
    sub_232BB0088();
  }

  if (*(v8 + v2[7]) != 2)
  {
    sub_232BB0058(objc_allocWithZone(MEMORY[0x277CCABB0]));
    sub_232B13F5C();
    sub_232BB0088();
  }

  if (*(v8 + v2[8]) != 2)
  {
    sub_232BB0058(objc_allocWithZone(MEMORY[0x277CCABB0]));
    sub_232B13F5C();
    sub_232BB0088();
  }

  v10 = *(v8 + v2[9]);
  if (v10 == 2)
  {
    sub_232BAF318(a1);
    sub_232BAF318(v8);
  }

  else
  {
    v11 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
    sub_232BAF318(a1);
    sub_232BAF318(v8);
    v12 = OBJC_IVAR____TtC21DocumentUnderstanding34DUFoundInEventClassificationResult_isEventCandidate;
    sub_232B13F5C();
    v13 = *&v9[v12];
    *&v9[v12] = v11;
  }

  return v9;
}

char *sub_232BAECAC(uint64_t a1)
{
  v3 = type metadata accessor for DocumentUnderstanding_ClientInterface_FoundInEventClassificationResult();
  v4 = *(*(v3 - 1) + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_232BAFF70(a1, v6);
  v7 = [objc_allocWithZone(v1) init];
  v8 = v6[v3[5]];
  if (v8 != 2)
  {
    v9 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
    v10 = OBJC_IVAR____TtC21DocumentUnderstanding34DUFoundInEventClassificationResult_isSupportedLocale;
    swift_beginAccess();
    v11 = *&v7[v10];
    *&v7[v10] = v9;
  }

  v12 = v6[v3[6]];
  if (v12 != 2)
  {
    v13 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
    v14 = OBJC_IVAR____TtC21DocumentUnderstanding34DUFoundInEventClassificationResult_containsDataDetectors;
    swift_beginAccess();
    v15 = *&v7[v14];
    *&v7[v14] = v13;
  }

  v16 = v6[v3[7]];
  if (v16 != 2)
  {
    v17 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
    v18 = OBJC_IVAR____TtC21DocumentUnderstanding34DUFoundInEventClassificationResult_isClassifiedAsEvent;
    swift_beginAccess();
    v19 = *&v7[v18];
    *&v7[v18] = v17;
  }

  v20 = v6[v3[8]];
  if (v20 != 2)
  {
    v21 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
    v22 = OBJC_IVAR____TtC21DocumentUnderstanding34DUFoundInEventClassificationResult_textLengthPass;
    swift_beginAccess();
    v23 = *&v7[v22];
    *&v7[v22] = v21;
  }

  v24 = v6[v3[9]];
  if (v24 == 2)
  {
    sub_232BAF318(a1);
    sub_232BAF318(v6);
  }

  else
  {
    v25 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
    sub_232BAF318(a1);
    sub_232BAF318(v6);
    v26 = OBJC_IVAR____TtC21DocumentUnderstanding34DUFoundInEventClassificationResult_isEventCandidate;
    swift_beginAccess();
    v27 = *&v7[v26];
    *&v7[v26] = v25;
  }

  return v7;
}

char *DUFoundInEventClassificationResult.__allocating_init<A>(proto:)(uint64_t a1, uint64_t a2)
{
  v5 = sub_232B124A8(&qword_27DDC7588, &qword_232CFA250);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v9 = &v34 - v8;
  v10 = *(a2 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7);
  sub_232B20704();
  v14 = v13 - v12;
  v15 = type metadata accessor for DocumentUnderstanding_ClientInterface_FoundInEventClassificationResult();
  v16 = sub_232B13F24(v15);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  sub_232B20704();
  v21 = v20 - v19;
  (*(v10 + 16))(v14, a1, a2);
  if (swift_dynamicCast())
  {
    sub_232B12504(v9, 0, 1, v15);
    sub_232BAF2B4(v9, v21);
    v22 = [objc_allocWithZone(v2) init];
    if (*(v21 + v15[5]) != 2)
    {
      sub_232BAFFFC(objc_allocWithZone(MEMORY[0x277CCABB0]));
      sub_232B13F5C();
      sub_232BB0070();
    }

    sub_232BB002C(v15[6]);
    if (!v23)
    {
      sub_232BAFFFC(objc_allocWithZone(MEMORY[0x277CCABB0]));
      sub_232B13F5C();
      sub_232BB0070();
    }

    sub_232BB002C(v15[7]);
    if (!v23)
    {
      sub_232BAFFFC(objc_allocWithZone(MEMORY[0x277CCABB0]));
      sub_232B13F5C();
      sub_232BB0070();
    }

    sub_232BB002C(v15[8]);
    if (!v23)
    {
      sub_232BAFFFC(objc_allocWithZone(MEMORY[0x277CCABB0]));
      sub_232B13F5C();
      sub_232BB0070();
    }

    sub_232BB002C(v15[9]);
    if (v23)
    {
      v24 = sub_232BAFFEC();
      v25(v24);
      sub_232BAF318(v21);
    }

    else
    {
      v28 = sub_232BAFFFC(objc_allocWithZone(MEMORY[0x277CCABB0]));
      v29 = sub_232BAFFEC();
      v30(v29);
      sub_232BAF318(v21);
      v31 = OBJC_IVAR____TtC21DocumentUnderstanding34DUFoundInEventClassificationResult_isEventCandidate;
      sub_232B13F5C();
      v32 = *&v22[v31];
      *&v22[v31] = v28;
    }
  }

  else
  {
    v26 = sub_232BAFFEC();
    v27(v26);
    sub_232B12504(v9, 1, 1, v15);
    sub_232BAF24C(v9);
    return 0;
  }

  return v22;
}

uint64_t sub_232BAF24C(uint64_t a1)
{
  v2 = sub_232B124A8(&qword_27DDC7588, &qword_232CFA250);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_232BAF2B4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DocumentUnderstanding_ClientInterface_FoundInEventClassificationResult();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_232BAF318(uint64_t a1)
{
  v2 = type metadata accessor for DocumentUnderstanding_ClientInterface_FoundInEventClassificationResult();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_232BAF374@<X0>(uint64_t a1@<X8>)
{
  sub_232CE9330();
  v3 = type metadata accessor for DocumentUnderstanding_ClientInterface_FoundInEventClassificationResult();
  v4 = v3[5];
  *(a1 + v4) = 2;
  v5 = v3[6];
  *(a1 + v5) = 2;
  v6 = v3[7];
  *(a1 + v6) = 2;
  v7 = v3[8];
  *(a1 + v7) = 2;
  v8 = v3[9];
  *(a1 + v8) = 2;
  v9 = OBJC_IVAR____TtC21DocumentUnderstanding34DUFoundInEventClassificationResult_isSupportedLocale;
  sub_232B13F74();
  v10 = *(v1 + v9);
  if (v10)
  {
    *(a1 + v4) = [v10 BOOLValue];
  }

  v11 = OBJC_IVAR____TtC21DocumentUnderstanding34DUFoundInEventClassificationResult_containsDataDetectors;
  sub_232B13F74();
  v12 = *(v1 + v11);
  if (v12)
  {
    *(a1 + v5) = [v12 BOOLValue];
  }

  v13 = OBJC_IVAR____TtC21DocumentUnderstanding34DUFoundInEventClassificationResult_isClassifiedAsEvent;
  sub_232B13F74();
  v14 = *(v1 + v13);
  if (v14)
  {
    *(a1 + v6) = [v14 BOOLValue];
  }

  v15 = OBJC_IVAR____TtC21DocumentUnderstanding34DUFoundInEventClassificationResult_textLengthPass;
  sub_232B13F74();
  v16 = *(v1 + v15);
  if (v16)
  {
    *(a1 + v7) = [v16 BOOLValue];
  }

  v17 = OBJC_IVAR____TtC21DocumentUnderstanding34DUFoundInEventClassificationResult_isEventCandidate;
  sub_232B13F74();
  result = *(v1 + v17);
  if (result)
  {
    result = [result BOOLValue];
    *(a1 + v8) = result;
  }

  return result;
}

uint64_t sub_232BAF4B8@<X0>(char **a1@<X8>)
{
  v2 = type metadata accessor for DocumentUnderstanding_ClientInterface_FoundInEventClassificationResult();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_232B20704();
  v6 = v5 - v4;
  sub_232BAF374(v5 - v4);
  v7 = sub_232BAEAB4(v6);
  result = sub_232B124A8(&qword_27DDC7590, &qword_232CFA258);
  a1[3] = result;
  *a1 = v7;
  return result;
}

id sub_232BAF5B0()
{
  v0 = type metadata accessor for DocumentUnderstanding_ClientInterface_FoundInEventClassificationResult();
  v1 = sub_232B13F24(v0);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  sub_232B20704();
  v6 = v5 - v4;
  sub_232BAF374(v5 - v4);
  sub_232BAFFD4();
  sub_232BAFF28(v7, 255, v8);
  v9 = sub_232CE94E0();
  v11 = v10;
  sub_232BAF318(v6);
  sub_232B1F870();
  return sub_232C2EB20(v9, v11);
}

void sub_232BAF6EC(void *a1)
{
  v2 = sub_232BAF5B0();
  if (v2)
  {
    v3 = v2;
    v4 = sub_232CE9D20();
    [a1 encodeObject:v3 forKey:v4];
  }
}

uint64_t DUFoundInEventClassificationResult.init(coder:)(void *a1)
{
  swift_getObjectType();
  sub_232B1F870();
  if (!sub_232CEA2D0())
  {

    goto LABEL_5;
  }

  swift_getObjectType();
  sub_232BAFF28(&qword_27DDC7598, v2, type metadata accessor for DUFoundInEventClassificationResult);
  sub_232CE98B0();

  v3 = v5;
  if (!v5)
  {
LABEL_5:
    swift_getObjectType();
    sub_232BB0038();
    return 0;
  }

  swift_getObjectType();
  sub_232BB0038();
  return v3;
}

id DUFoundInEventClassificationResult.init()()
{
  *&v0[OBJC_IVAR____TtC21DocumentUnderstanding34DUFoundInEventClassificationResult_isSupportedLocale] = 0;
  *&v0[OBJC_IVAR____TtC21DocumentUnderstanding34DUFoundInEventClassificationResult_containsDataDetectors] = 0;
  *&v0[OBJC_IVAR____TtC21DocumentUnderstanding34DUFoundInEventClassificationResult_isClassifiedAsEvent] = 0;
  *&v0[OBJC_IVAR____TtC21DocumentUnderstanding34DUFoundInEventClassificationResult_textLengthPass] = 0;
  *&v0[OBJC_IVAR____TtC21DocumentUnderstanding34DUFoundInEventClassificationResult_isEventCandidate] = 0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DUFoundInEventClassificationResult();
  return objc_msgSendSuper2(&v2, sel_init);
}

id DUFoundInEventClassificationResult.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DUFoundInEventClassificationResult();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

char *sub_232BAFB08@<X0>(uint64_t a1@<X0>, char **a2@<X8>)
{
  result = sub_232BAECAC(a1);
  *a2 = result;
  return result;
}

uint64_t sub_232BAFF28(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_232BAFF70(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DocumentUnderstanding_ClientInterface_FoundInEventClassificationResult();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id sub_232BAFFFC(void *a1)
{

  return [a1 (v2 + 3468)];
}

void sub_232BB0014()
{
  v4 = *(v1 + v2);
  *(v1 + v2) = v0;
}

uint64_t sub_232BB0038()
{

  return swift_deallocPartialClassInstance();
}

id sub_232BB0058(void *a1)
{

  return [a1 (v2 + 3468)];
}

void sub_232BB0070()
{
  v4 = *(v1 + v2);
  *(v1 + v2) = v0;
}

void sub_232BB0088()
{
  v4 = *(v0 + v2);
  *(v0 + v2) = v1;
}

uint64_t sub_232BB0100(uint64_t a1, uint64_t a2)
{
  v3[6] = a2;
  v3[7] = v2;
  v3[5] = a1;
  v4 = sub_232CE9A30();
  v3[8] = v4;
  v5 = *(v4 - 8);
  v3[9] = v5;
  v6 = *(v5 + 64) + 15;
  v3[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_232BB01C4, 0, 0);
}

uint64_t sub_232BB01C4()
{
  v15 = v0;
  v1 = v0[10];
  sub_232CE9A20();
  v2 = sub_232CE9A00();
  v3 = sub_232CEA1B0();
  v4 = os_log_type_enabled(v2, v3);
  v6 = v0[9];
  v5 = v0[10];
  v7 = v0[8];
  if (v4)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v14 = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_232BAD2D4(0xD000000000000024, 0x8000000232D05EF0, &v14);
    _os_log_impl(&dword_232B02000, v2, v3, "FoundInEventClassification phase ID: %s", v8, 0xCu);
    sub_232B2040C(v9);
    MEMORY[0x238393870](v9, -1, -1);
    MEMORY[0x238393870](v8, -1, -1);
  }

  (*(v6 + 8))(v5, v7);
  v10 = swift_task_alloc();
  v0[11] = v10;
  *v10 = v0;
  v10[1] = sub_232BB037C;
  v11 = v0[6];
  v12 = v0[7];

  return sub_232B50954(v11);
}

uint64_t sub_232BB037C(uint64_t a1)
{
  v2 = *(*v1 + 88);
  v4 = *v1;
  *(*v1 + 96) = a1;

  return MEMORY[0x2822009F8](sub_232BB047C, 0, 0);
}

uint64_t sub_232BB047C()
{
  v1 = v0[12];
  if (v1)
  {
    v2 = v0[5];
    v3 = OBJC_IVAR____TtC21DocumentUnderstanding10DUResponse_foundInEventClassificationResult;
    swift_beginAccess();
    v4 = *(v2 + v3);
    *(v2 + v3) = v1;
  }

  v5 = v0[10];

  v6 = v0[1];

  return v6();
}

id sub_232BB051C()
{
  v0 = type metadata accessor for DURequestContentType();
  v1 = objc_allocWithZone(v0);
  *&v1[OBJC_IVAR____TtC21DocumentUnderstanding20DURequestContentType_rawValue] = 4096;
  v3.receiver = v1;
  v3.super_class = v0;
  return objc_msgSendSuper2(&v3, sel_init);
}

uint64_t sub_232BB0578(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_232BB0620;

  return sub_232BB0100(a1, a2);
}

uint64_t sub_232BB0620()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_232BB072C@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for DUFoundInEventDDSpecification();
  result = swift_allocObject();
  a1[3] = v2;
  a1[4] = &off_281931D88;
  *a1 = result;
  return result;
}

uint64_t sub_232BB0774(uint64_t a1)
{
  v1[10] = a1;
  v2 = *(*(sub_232B124A8(&qword_27DDC6A80, &qword_232CF6D30) - 8) + 64) + 15;
  v1[11] = swift_task_alloc();
  v3 = sub_232CE8D10();
  v1[12] = v3;
  v4 = *(v3 - 8);
  v1[13] = v4;
  v5 = *(v4 + 64) + 15;
  v1[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_232BB086C, 0, 0);
}

uint64_t sub_232BB086C()
{
  v1 = *(v0[10] + 24);
  if (!v1)
  {
    v14 = 0x8000000232D04650;
    sub_232B4A95C();
    swift_allocError();
    sub_232BB0CDC();
LABEL_14:
    *v15 = v16;
    *(v15 + 8) = v14;
    *(v15 + 16) = 0;
    goto LABEL_15;
  }

  v2 = sub_232B5821C();
  if (!v3)
  {
    v14 = 0x8000000232D05F60;
    sub_232B4A95C();
    swift_allocError();
    sub_232BB0CDC();
    v16 = v25 + 14;
    goto LABEL_14;
  }

  v4 = v2;
  v5 = v3;
  type metadata accessor for DUDataDetectors();
  swift_initStackObject();
  v6 = sub_232B58760();
  if (!v6 || (v7 = v6, v8 = OBJC_IVAR____TtC21DocumentUnderstanding18DUDocumentHTMLData_documentEmailData, swift_beginAccess(), v9 = *&v7[v8], v10 = v9, v7, !v9))
  {
    sub_232B12504(v0[11], 1, 1, v0[12]);
LABEL_9:
    v17 = v0[14];
    v19 = v0[11];
    v18 = v0[12];
    sub_232CE8D00();
    if (sub_232B12480(v19, 1, v18) != 1)
    {
      sub_232BB0C04(v0[11]);
    }

    goto LABEL_11;
  }

  v12 = v0[11];
  v11 = v0[12];
  v13 = OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentEmailData_dateReceived;
  swift_beginAccess();
  sub_232BB0C6C(v10 + v13, v12);

  if (sub_232B12480(v12, 1, v11) == 1)
  {
    goto LABEL_9;
  }

  (*(v0[13] + 32))(v0[14], v0[11], v0[12]);
LABEL_11:
  sub_232B54C3C(v4, v5, v0[14]);
  v1 = v20;

  v22 = v0[13];
  v21 = v0[14];
  v23 = v0[12];
  if (v1)
  {
    (*(v22 + 8))(v0[14], v0[12]);
    v24 = 0;
    goto LABEL_16;
  }

  sub_232B4A95C();
  swift_allocError();
  sub_232BB0CDC();
  *v31 = v30 + 23;
  *(v31 + 8) = 0x8000000232D05F90;
  *(v31 + 16) = 0;
  (*(v22 + 8))(v21, v23);
LABEL_15:
  v24 = 1;
LABEL_16:
  v26 = v0[14];
  v27 = v0[11];

  v28 = v0[1];

  return v28(v1, v24);
}

uint64_t sub_232BB0B6C(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_232B4A838;

  return sub_232BB0774(a2);
}

uint64_t sub_232BB0C04(uint64_t a1)
{
  v2 = sub_232B124A8(&qword_27DDC6A80, &qword_232CF6D30);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_232BB0C6C(uint64_t a1, uint64_t a2)
{
  v4 = sub_232B124A8(&qword_27DDC6A80, &qword_232CF6D30);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_232BB0D4C@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for DUFoundInEventSpecification();
  result = sub_232BB18A8();
  a1[3] = v2;
  a1[4] = &off_281932028;
  *a1 = result;
  return result;
}

uint64_t sub_232BB0D8C()
{
  sub_232B26C44();
  *(v0 + 16) = v1;
  v2 = *(*(sub_232B124A8(&qword_27DDC6F98, &unk_232CF7CA0) - 8) + 64) + 15;
  *(v0 + 24) = swift_task_alloc();
  v3 = sub_232B5138C();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_232BB0E1C()
{
  sub_232B26C7C();
  if (*(v0[2] + 24))
  {
    type metadata accessor for DUFoundInEventHTMLPreprocessingSpecification();
    v0[4] = sub_232BB18A8();
    sub_232BB1878(&dword_232CF8058);
    v9 = v1;
    v2 = swift_task_alloc();
    v0[5] = v2;
    *v2 = v0;
    v3 = sub_232BB1888(v2);

    return v9(v3);
  }

  else
  {
    sub_232B4A95C();
    v5 = sub_232B4EC24();
    *v6 = 0xD000000000000015;
    *(v6 + 8) = 0x8000000232D04650;
    *(v6 + 16) = 0;
    v7 = v0[3];

    sub_232BB189C();

    return v8(v5, 1);
  }
}

uint64_t sub_232BB0F48()
{
  sub_232B26C44();
  sub_232B26C70();
  v2 = *(v1 + 40);
  v3 = *(v1 + 32);
  v4 = *v0;
  sub_232B26B3C();
  *v5 = v4;
  *(v7 + 48) = v6;

  v8 = sub_232B5138C();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_232BB1050()
{
  sub_232B26C7C();
  v1 = v0[6];
  if (v1)
  {
    sub_232B5821C();
    if (v2)
    {

      type metadata accessor for DUFoundInEventDDSpecification();
      v0[7] = sub_232BB18A8();
      sub_232BB1878(&dword_232CF8040);
      v12 = v3;
      v4 = swift_task_alloc();
      v0[8] = v4;
      *v4 = v0;
      v5 = sub_232BB1888(v4);

      return v12(v5);
    }

    sub_232B4A95C();
    v7 = sub_232B4EC24();
    *v9 = 0xD000000000000020;
    *(v9 + 8) = 0x8000000232D06090;
    *(v9 + 16) = 0;
  }

  else
  {
    sub_232B4A95C();
    v7 = sub_232B4EC24();
    *v8 = 0xD000000000000017;
    *(v8 + 8) = 0x8000000232D06070;
    *(v8 + 16) = 0;
  }

  v10 = v0[3];

  sub_232BB189C();

  return v11(v7, 1);
}

uint64_t sub_232BB11D0()
{
  sub_232B26C44();
  sub_232B26C70();
  v2 = *(v1 + 64);
  v3 = *(v1 + 56);
  v4 = *v0;
  sub_232B26B3C();
  *v5 = v4;
  *(v7 + 72) = v6;

  v8 = sub_232B5138C();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_232BB12D8()
{
  sub_232B26C7C();
  if (v0[9])
  {

    type metadata accessor for DUWordPieceTokenizerSpecification();
    v0[10] = sub_232BB18A8();
    sub_232BB1878(&dword_232CF8038);
    v11 = v1;
    v2 = swift_task_alloc();
    v0[11] = v2;
    *v2 = v0;
    v2[1] = sub_232BB141C;
    v4 = v0[2];
    v3 = v0[3];

    return v11(v3, v4);
  }

  else
  {
    v6 = v0[6];
    sub_232B4A95C();
    v7 = sub_232B4EC24();
    *v8 = 0xD00000000000001BLL;
    *(v8 + 8) = 0x8000000232D060C0;
    *(v8 + 16) = 0;

    v9 = v0[3];

    sub_232BB189C();

    return v10(v7, 1);
  }
}

uint64_t sub_232BB141C()
{
  sub_232B26C44();
  sub_232B26C70();
  v2 = *(v1 + 88);
  v3 = *(v1 + 80);
  v4 = *v0;
  sub_232B26B3C();
  *v5 = v4;

  v6 = sub_232B5138C();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_232BB151C()
{
  sub_232B26C7C();
  v1 = *(v0 + 24);
  v2 = sub_232CE9700();
  v3 = sub_232B12480(v1, 1, v2);
  sub_232BB1810(v1);
  v4 = *(v0 + 48);
  if (v3 == 1)
  {
    sub_232B4A95C();
    v5 = sub_232B4EC24();
    *v6 = 0xD000000000000018;
    *(v6 + 8) = 0x8000000232D060E0;
    *(v6 + 16) = 0;
  }

  else
  {
    v5 = [objc_allocWithZone(type metadata accessor for DUFoundInEventResult()) init];
  }

  v7 = *(v0 + 24);

  sub_232BB189C();

  return v8(v5, v3 == 1);
}

uint64_t sub_232BB1664(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_232BB16FC;

  return sub_232BB0D8C();
}

uint64_t sub_232BB16FC()
{
  sub_232B26C7C();
  v2 = v1;
  v4 = v3;
  sub_232B26C70();
  v6 = *(v5 + 24);
  v7 = *(v5 + 16);
  v8 = *v0;
  sub_232B26B3C();
  *v9 = v8;

  *v7 = v4;
  *(v7 + 8) = v2 & 1;
  v10 = *(v8 + 8);

  return v10();
}

uint64_t sub_232BB1810(uint64_t a1)
{
  v2 = sub_232B124A8(&qword_27DDC6F98, &unk_232CF7CA0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_232BB1878@<X0>(int *a1@<X8>)
{
  result = a1[1];
  v2 = a1 + *a1;
  return result;
}

uint64_t sub_232BB18A8()
{

  return swift_allocObject();
}

uint64_t sub_232BB18C0@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for DUFoundInEventEncodingSmolBERToSpecification();
  result = swift_allocObject();
  a1[3] = v2;
  a1[4] = &off_281931E10;
  *a1 = result;
  return result;
}

uint64_t sub_232BB1908(uint64_t a1)
{
  v4 = sub_232B124A8(&qword_27DDC6FA0, &unk_232CF7CB0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v36 - v10;
  v12 = *a1;
  sub_232BB2CCC();
  v13 = sub_232CE9D20();
  v14 = [v12 featureValueForName_];

  if (v14)
  {
    v38 = *(a1 + 8);

    sub_232B124A8(&qword_27DDC6FB0, &unk_232CF8840);
    v37 = v1;
    sub_232BB2C48();
    sub_232CE9A50();
    sub_232B124A8(&qword_27DDC6FC0, &unk_232CF7CC0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_232CF5E60;
    *(inited + 32) = 0xD00000000000001DLL;
    *(inited + 40) = v2;
    v16 = sub_232B4AA60();
    *(inited + 48) = v14;
    *(inited + 72) = v16;
    strcpy((inited + 80), "attention_mask");
    *(inited + 95) = -18;
    (*(v5 + 16))(v9, v11, v4);
    v17 = v14;
    v18 = sub_232CEA200();
    *(inited + 120) = v16;
    *(inited + 96) = v18;
    sub_232CE9C60();
    v19 = objc_allocWithZone(MEMORY[0x277CBFED0]);
    v20 = v37;
    v21 = sub_232C3B328();
    if (v20)
    {
      if (qword_2814DFA50 != -1)
      {
        sub_232BB2CAC();
      }

      v22 = sub_232CE9A30();
      sub_232B135C4(v22, qword_2814E3DA8);
      v23 = v20;
      v24 = sub_232CE9A00();
      v2 = sub_232CEA1C0();

      if (os_log_type_enabled(v24, v2))
      {
        v25 = swift_slowAlloc();
        v26 = swift_slowAlloc();
        *v25 = 138412290;
        v27 = v20;
        v28 = _swift_stdlib_bridgeErrorToNSError();
        *(v25 + 4) = v28;
        *v26 = v28;
        _os_log_impl(&dword_232B02000, v24, v2, "Error building FoundInEventSmolBERToClassificationModel model inputs: %@", v25, 0xCu);
        sub_232B267AC(v26, &qword_27DDC6FD0, &unk_232CFA240);
        MEMORY[0x238393870](v26, -1, -1);
        MEMORY[0x238393870](v25, -1, -1);
      }

      sub_232B4AA0C();
      sub_232B4ACD4();
      swift_allocError();
      *v29 = 1;
      swift_willThrow();

      (*(v5 + 8))(v11, v4);
    }

    else
    {
      v2 = v21;
      (*(v5 + 8))(v11, v4);
    }
  }

  else
  {
    if (qword_2814DFA50 != -1)
    {
      sub_232BB2CAC();
    }

    v30 = sub_232CE9A30();
    sub_232B135C4(v30, qword_2814E3DA8);
    v31 = sub_232CE9A00();
    v32 = sub_232CEA1C0();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&dword_232B02000, v31, v32, "Error extracting encoding output from FoundInEventSmolBERToEncodingModel", v33, 2u);
      MEMORY[0x238393870](v33, -1, -1);
    }

    sub_232B4AA0C();
    sub_232B4ACD4();
    swift_allocError();
    *v34 = 0;
    swift_willThrow();
  }

  return v2;
}

uint64_t sub_232BB1E0C()
{
  sub_232B26C44();
  v1[5] = v2;
  v1[6] = v0;
  v3 = type metadata accessor for FeatureProviderWithMask();
  v1[7] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v1[8] = swift_task_alloc();
  v5 = *(*(sub_232B124A8(&qword_27DDC6F98, &unk_232CF7CA0) - 8) + 64) + 15;
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  v6 = sub_232CE9700();
  v1[11] = v6;
  v7 = *(v6 - 8);
  v1[12] = v7;
  v8 = *(v7 + 64) + 15;
  v1[13] = swift_task_alloc();
  v9 = sub_232B5138C();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_232BB1F34()
{
  sub_232B26C44();
  type metadata accessor for DUTrialAssetLoader();
  *(v0 + 112) = swift_initStackObject();
  *(v0 + 120) = sub_232C14534();
  *(v0 + 208) = sub_232C149A0();
  type metadata accessor for DUBackboneEncodingSmolBERToSpecification();
  *(v0 + 128) = swift_allocObject();
  v1 = swift_task_alloc();
  *(v0 + 136) = v1;
  *v1 = v0;
  v1[1] = sub_232BB2054;
  v2 = *(v0 + 40);

  return sub_232B4EC3C(v2);
}

uint64_t sub_232BB2054()
{
  sub_232B26C44();
  sub_232B26C70();
  v2 = *(v1 + 136);
  v3 = *(v1 + 128);
  v4 = *v0;
  sub_232B26B3C();
  *v5 = v4;
  *(v7 + 144) = v6;

  v8 = sub_232B5138C();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_232BB215C()
{
  v1 = *(v0 + 144);
  if (v1)
  {
    v2 = *(v0 + 120);
    v3 = sub_232C15424(0xD00000000000001FLL, 0x8000000232D06190, 0xD000000000000022, 0x8000000232D061B0, *(v0 + 208) & 1);
    *(v0 + 152) = v3;
    if (v3)
    {
      v4 = objc_allocWithZone(MEMORY[0x277CBFF68]);
      v5 = v1;
      v6 = [v4 init];
      *(v0 + 160) = v6;
      v7 = *(MEMORY[0x277CBFDF0] + 4);
      v8 = swift_task_alloc();
      *(v0 + 168) = v8;
      *v8 = v0;
      v8[1] = sub_232BB237C;

      return MEMORY[0x282111978](v5, v6);
    }

    v12 = *(v0 + 120);
    sub_232B4A95C();
    sub_232B4ACD4();
    v10 = swift_allocError();
    *v13 = 0xD000000000000037;
    *(v13 + 8) = 0x8000000232D061E0;
    *(v13 + 16) = 0;
  }

  else
  {
    v9 = *(v0 + 120);
    sub_232B4A95C();
    sub_232B4ACD4();
    v10 = swift_allocError();
    *v11 = 0xD00000000000003FLL;
    *(v11 + 8) = 0x8000000232D06150;
    *(v11 + 16) = 0;
  }

  v14 = *(v0 + 104);
  v16 = *(v0 + 72);
  v15 = *(v0 + 80);
  v17 = *(v0 + 64);

  v18 = *(v0 + 8);

  return v18(v10, 1);
}

uint64_t sub_232BB237C()
{
  sub_232B26C70();
  v3 = v2;
  v4 = *(v2 + 168);
  v5 = *v1;
  *(v3 + 176) = v6;
  *(v3 + 184) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_232BB28D8, 0, 0);
  }

  else
  {
    v7 = *(v3 + 144);

    type metadata accessor for DUWordPieceTokenizerSpecification();
    *(v3 + 192) = swift_allocObject();
    v8 = swift_task_alloc();
    *(v3 + 200) = v8;
    *v8 = v5;
    v8[1] = sub_232BB2534;
    v9 = *(v3 + 80);
    v10 = *(v3 + 40);

    return sub_232B4EE70(v9, v10);
  }
}

uint64_t sub_232BB2534()
{
  sub_232B26C44();
  sub_232B26C70();
  v2 = *(v1 + 200);
  v3 = *(v1 + 192);
  v4 = *v0;
  sub_232B26B3C();
  *v5 = v4;

  v6 = sub_232B5138C();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_232BB2634()
{
  v3 = v0[10];
  v2 = v0[11];
  if (sub_232B12480(v3, 1, v2) == 1)
  {
    v4 = v0[22];
    v6 = v0[18];
    v5 = v0[19];
    v7 = v0[15];
    sub_232B267AC(v3, &qword_27DDC6F98, &unk_232CF7CA0);
    sub_232BB2CCC();
    sub_232B4A95C();
    sub_232B4ACD4();
    v8 = swift_allocError();
    *v9 = 0xD00000000000001ALL;
    *(v9 + 8) = v1;
    *(v9 + 16) = 0;
    swift_unknownObjectRelease();

LABEL_5:

    v25 = 1;
    goto LABEL_6;
  }

  v11 = v0[22];
  v10 = v0[23];
  v13 = v0[12];
  v12 = v0[13];
  v15 = v0[8];
  v14 = v0[9];
  v16 = v0[7];
  (*(v13 + 32))(v12, v3, v2);
  v17 = sub_232CE96A0();
  (*(v13 + 16))(v14, v12, v2);
  sub_232B12504(v14, 0, 1, v2);
  v18 = *(v16 + 24);
  sub_232B12504(v15 + v18, 1, 1, v2);
  *v15 = v11;
  v15[1] = v17;
  sub_232BB2BD8(v14, v15 + v18);
  v19 = sub_232BB1908(v15);
  if (v10)
  {
    v20 = v0[8];
    (*(v0[12] + 8))(v0[13], v0[11]);
    sub_232B4A9B0(v20);
    v22 = v0[18];
    v21 = v0[19];
    v23 = v0[15];
    sub_232BB2CCC();
    sub_232B4A95C();
    sub_232B4ACD4();
    v8 = swift_allocError();
    *v24 = 0xD000000000000038;
    *(v24 + 8) = v15;
    *(v24 + 16) = 0;

    goto LABEL_5;
  }

  v8 = v19;
  v33 = v0[18];
  v32 = v0[19];
  v34 = v0[15];
  v35 = v0[8];
  (*(v0[12] + 8))(v0[13], v0[11]);

  sub_232B4A9B0(v35);
  v25 = 0;
LABEL_6:
  v26 = v0[13];
  v28 = v0[9];
  v27 = v0[10];
  v29 = v0[8];

  v30 = v0[1];

  return v30(v8, v25);
}

uint64_t sub_232BB28D8()
{
  v2 = *(v0 + 144);

  v3 = *(v0 + 184);
  v5 = *(v0 + 144);
  v4 = *(v0 + 152);
  v6 = *(v0 + 120);
  sub_232BB2CCC();
  sub_232B4A95C();
  sub_232B4ACD4();
  v7 = swift_allocError();
  *v8 = 0xD000000000000038;
  *(v8 + 8) = v1;
  *(v8 + 16) = 0;

  v9 = *(v0 + 104);
  v10 = *(v0 + 72);
  v11 = *(v0 + 80);
  v12 = *(v0 + 64);

  v13 = *(v0 + 8);

  return v13(v7, 1);
}

uint64_t sub_232BB2A24(uint64_t a1)
{
  *(v2 + 16) = a1;
  v3 = *v1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_232BB2AC0;

  return sub_232BB1E0C();
}

uint64_t sub_232BB2AC0(uint64_t a1, char a2)
{
  sub_232B26C70();
  v6 = *(v5 + 24);
  v7 = *(v5 + 16);
  v8 = *v2;
  sub_232B26B3C();
  *v9 = v8;

  *v7 = a1;
  *(v7 + 8) = a2 & 1;
  v10 = *(v8 + 8);

  return v10();
}

uint64_t sub_232BB2BD8(uint64_t a1, uint64_t a2)
{
  v4 = sub_232B124A8(&qword_27DDC6F98, &unk_232CF7CA0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_232BB2C48()
{
  result = qword_27DDC6FB8;
  if (!qword_27DDC6FB8)
  {
    sub_232B27EEC(&qword_27DDC6FB0, &unk_232CF8840);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDC6FB8);
  }

  return result;
}

uint64_t sub_232BB2CAC()
{

  return swift_once();
}

uint64_t sub_232BB2D38(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6F7250656C797473 && a2 == 0xEF73656974726570;
  if (v4 || (sub_232CEA750() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000015 && 0x8000000232D03FB0 == a2;
    if (v6 || (sub_232CEA750() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000013 && 0x8000000232D03E80 == a2;
      if (v7 || (sub_232CEA750() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x65676E6172 && a2 == 0xE500000000000000;
        if (v8 || (sub_232CEA750() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 1954047348 && a2 == 0xE400000000000000)
        {

          return 4;
        }

        else
        {
          v10 = sub_232CEA750();

          if (v10)
          {
            return 4;
          }

          else
          {
            return 5;
          }
        }
      }
    }
  }
}

uint64_t sub_232BB2EF0(unsigned __int8 a1)
{
  sub_232CEA820();
  MEMORY[0x2383925C0](a1);
  return sub_232CEA850();
}

unint64_t sub_232BB2F44(char a1)
{
  result = 0x6F7250656C797473;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000015;
      break;
    case 2:
      result = 0xD000000000000013;
      break;
    case 3:
      result = 0x65676E6172;
      break;
    case 4:
      result = 1954047348;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_232BB2FFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_232BB2D38(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_232BB3044@<X0>(_BYTE *a1@<X8>)
{
  result = sub_232BB2EE8();
  *a1 = result;
  return result;
}

uint64_t sub_232BB306C(uint64_t a1)
{
  v2 = sub_232BB6304();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_232BB30A8(uint64_t a1)
{
  v2 = sub_232BB6304();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_232BB30E4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = sub_232B124A8(&qword_27DDC75F8, &unk_232CFA5D8);
  v6 = sub_232B48F0C(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = a1[4];
  sub_232B203C8(a1, a1[3]);
  sub_232BB6304();
  sub_232CEA870();
  if (v2)
  {
    return sub_232B2040C(a1);
  }

  sub_232B124A8(&qword_27DDC6908, &unk_232CF64D0);
  sub_232BB6358(&qword_27DDC7608, &qword_27DDC6908, &unk_232CF64D0);
  sub_232BB65C8();
  sub_232CEA6D0();
  sub_232B124A8(&qword_27DDC75C0, &qword_232CFCB20);
  sub_232BB6358(&qword_27DDC7610, &qword_27DDC75C0, &qword_232CFCB20);
  sub_232BB6618();
  sub_232CEA690();
  sub_232BB65C8();
  sub_232CEA6D0();
  sub_232BB6618();
  sub_232CEA6D0();
  v10 = sub_232CEA6A0();
  v12 = v11;
  v13 = sub_232BB65B8();
  v14(v13);
  result = sub_232B2040C(a1);
  *a2 = v16;
  a2[1] = v16;
  a2[2] = v16;
  a2[3] = v16;
  a2[4] = v10;
  a2[5] = v12;
  return result;
}

double sub_232BB3440@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_232BB30E4(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    a2[1] = v5;
    result = *&v7;
    a2[2] = v7;
  }

  return result;
}

id sub_232BB3484()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = *(v0 + 16);
  }

  else
  {
    v3 = [objc_allocWithZone(PageContentFetcher) init];
    v4 = *(v0 + 16);
    *(v0 + 16) = v3;
    v2 = v3;

    v1 = 0;
  }

  v5 = v1;
  return v2;
}

uint64_t sub_232BB34F0@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for DUFoundInEventHTMLPreprocessingSpecification();
  result = swift_allocObject();
  a1[3] = v2;
  a1[4] = &off_281931E60;
  *a1 = result;
  return result;
}

void sub_232BB3538(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_232C237B8(v3);
    v3 = v10;
  }

  v4 = v3[2];
  if (!v4)
  {
    __break(1u);
    goto LABEL_9;
  }

  v5 = v3[4];
  v6 = __OFADD__(v5, a2);
  v7 = v5 + a2;
  if (v6)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v3[4] = v7;
  if (v4 == 1)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v8 = v3[5];
  v6 = __OFADD__(v8, a2);
  v9 = v8 + a2;
  if (!v6)
  {
    v3[5] = v9;
    return;
  }

LABEL_11:
  __break(1u);
}

uint64_t sub_232BB35C0(uint64_t a1, uint64_t a2)
{
  v4 = [objc_allocWithZone(type metadata accessor for DUDocumentUIElement()) init];
  v5 = (a1 + OBJC_IVAR____TtC21DocumentUnderstanding13DURawDocument_headline);
  sub_232B13F74();
  v7 = *v5;
  v6 = v5[1];
  v8 = &v4[OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentUIElement_text];
  sub_232B13F5C();
  v9 = *(v8 + 1);
  *v8 = v7;
  *(v8 + 1) = v6;

  v10 = OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentUIElement_superviewClassNames;
  sub_232B13F5C();
  v11 = *&v4[v10];
  *&v4[v10] = &unk_28480CE58;

  v12 = OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentUIElement_superviewClassIndices;
  sub_232B13F5C();
  v13 = *&v4[v12];
  *&v4[v12] = &unk_28480CE88;

  v14 = OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentUIElement_styleProperties;
  sub_232B13F5C();
  v15 = *&v4[v14];
  *&v4[v14] = MEMORY[0x277D84F90];

  sub_232B124A8(&qword_27DDC6B80, &qword_232CF89B0);
  result = swift_allocObject();
  *(result + 16) = xmmword_232CF5E60;
  *(result + 32) = 0;
  if (__OFSUB__(a2, 1))
  {
    __break(1u);
  }

  else
  {
    v17 = result;
    *(result + 40) = a2 - 1;
    v18 = OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentUIElement_range;
    sub_232B13F5C();
    v19 = *&v4[v18];
    *&v4[v18] = v17;

    return v4;
  }

  return result;
}

uint64_t sub_232BB375C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v31 = a5;
  v32 = a6;
  v11 = sub_232CE9AA0();
  v12 = sub_232B48F0C(v11);
  v35 = v13;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v12);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_232CE9AD0();
  v18 = sub_232B48F0C(v34);
  v20 = v19;
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v18);
  v24 = &v30 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_232BB6128();
  v33 = sub_232CEA230();
  v25 = swift_allocObject();
  v25[2] = v6;
  v25[3] = a1;
  v25[4] = a2;
  v25[5] = a3;
  v26 = v31;
  v25[6] = a4;
  v25[7] = v26;
  v25[8] = v32;
  aBlock[4] = sub_232BB616C;
  aBlock[5] = v25;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_232BB4000;
  aBlock[3] = &unk_284811C00;
  v27 = _Block_copy(aBlock);

  sub_232CE9AC0();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_232BB6198();
  sub_232B124A8(&qword_27DDC75E8, qword_232CFA540);
  sub_232BB61F0();
  sub_232CEA440();
  v28 = v33;
  MEMORY[0x238391FD0](0, v24, v17, v27);
  _Block_release(v27);

  (*(v35 + 8))(v17, v11);
  return (*(v20 + 8))(v24, v34);
}

void sub_232BB3A14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = sub_232BB3484();
  v10 = sub_232CE9D20();
  v11 = sub_232CE9D20();
  v12 = swift_allocObject();
  *(v12 + 16) = a6;
  *(v12 + 24) = a7;
  v14[4] = sub_232BB6254;
  v14[5] = v12;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 1107296256;
  v14[2] = sub_232BB4044;
  v14[3] = &unk_284811C50;
  v13 = _Block_copy(v14);

  [v9 runJavaScriptOnHTML:v10 javaScript:v11 completionHandler:v13];
  _Block_release(v13);
}

uint64_t sub_232BB3B54(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v42 = a1;
  v7 = sub_232CE9AA0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_232CE9AD0();
  v43 = *(v12 - 8);
  v44 = v12;
  v13 = *(v43 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_232CE9A30();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v37 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v40 = a3;
    v41 = v8;
    v21 = a2;
    sub_232CE9A20();
    v22 = a2;
    v23 = sub_232CE9A00();
    v24 = sub_232CEA1C0();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v38 = a4;
      v26 = v25;
      v27 = swift_slowAlloc();
      v39 = v7;
      v28 = v27;
      *v26 = 138412290;
      v29 = a2;
      v30 = _swift_stdlib_bridgeErrorToNSError();
      *(v26 + 4) = v30;
      *v28 = v30;
      _os_log_impl(&dword_232B02000, v23, v24, "Error evaluating Javascript: %@", v26, 0xCu);
      sub_232BA4D50(v28, &qword_27DDC6FD0, &unk_232CFA240);
      v31 = v28;
      v7 = v39;
      MEMORY[0x238393870](v31, -1, -1);
      v32 = v26;
      a4 = v38;
      MEMORY[0x238393870](v32, -1, -1);
    }

    else
    {
    }

    (*(v17 + 8))(v20, v16);
    a3 = v40;
    v8 = v41;
  }

  sub_232BB6128();
  v33 = sub_232CEA230();
  v34 = swift_allocObject();
  v34[2] = a3;
  v34[3] = a4;
  v34[4] = v42;
  aBlock[4] = sub_232BB625C;
  aBlock[5] = v34;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_232BB4000;
  aBlock[3] = &unk_284811CA0;
  v35 = _Block_copy(aBlock);

  sub_232CE9AC0();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_232BB6198();
  sub_232B124A8(&qword_27DDC75E8, qword_232CFA540);
  sub_232BB61F0();
  sub_232CEA440();
  MEMORY[0x238391FD0](0, v15, v11, v35);
  _Block_release(v35);

  (*(v8 + 8))(v11, v7);
  return (*(v43 + 8))(v15, v44);
}

uint64_t sub_232BB3F9C(void (*a1)(unint64_t), uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = sub_232BC2D04(a3);
  }

  else
  {
    v4 = 0;
  }

  a1(v4);
}

uint64_t sub_232BB4000(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t sub_232BB4044(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  if (a2)
  {
    v6 = sub_232CE9C40();
  }

  else
  {
    v6 = 0;
  }

  v7 = a3;
  v5(v6, a3);
}

uint64_t sub_232BB40F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[6] = a4;
  v5[7] = v4;
  v5[4] = a2;
  v5[5] = a3;
  v5[3] = a1;
  return sub_232B512BC();
}

uint64_t sub_232BB410C()
{
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  v9 = *(v0 + 32);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v0 + 64) = v4;
  *(v4 + 16) = v1;
  *(v4 + 24) = v3;
  *(v4 + 32) = v9;
  *(v4 + 48) = v2;
  v5 = *(MEMORY[0x277D859E0] + 4);
  v6 = swift_task_alloc();
  *(v0 + 72) = v6;
  v7 = sub_232B124A8(&qword_27DDC75C8, &qword_232CFA530);
  *v6 = v0;
  v6[1] = sub_232BB4234;

  return MEMORY[0x2822007B8](v0 + 16, 0, 0, 0xD00000000000001CLL, 0x8000000232D064F0, sub_232BB609C, v4, v7);
}

uint64_t sub_232BB4234()
{
  sub_232B26C44();
  v1 = *(*v0 + 72);
  v2 = *(*v0 + 64);
  v3 = *v0;
  sub_232B26B3C();
  *v4 = v3;

  return MEMORY[0x2822009F8](sub_232BB4340, 0, 0);
}

uint64_t sub_232BB4358(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v19 = a6;
  v10 = sub_232B124A8(&qword_27DDC75D0, &qword_232CFA538);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v18 - v13;
  (*(v11 + 16))(&v18 - v13, a1, v10);
  v15 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v16 = swift_allocObject();
  (*(v11 + 32))(v16 + v15, v14, v10);
  sub_232BB375C(a3, a4, a5, v19, sub_232BB60AC, v16);
}

uint64_t sub_232BB44CC()
{

  sub_232B124A8(&qword_27DDC75D0, &qword_232CFA538);
  return sub_232CEA060();
}

uint64_t sub_232BB451C()
{
  sub_232B26C44();
  v11 = *MEMORY[0x277D85DE8];
  v1[75] = v0;
  v1[74] = v2;
  v3 = sub_232CE9A30();
  v1[76] = v3;
  v4 = *(v3 - 8);
  v1[77] = v4;
  v5 = *(v4 + 64) + 15;
  v1[78] = swift_task_alloc();
  v1[79] = swift_task_alloc();
  v6 = sub_232CE9DA0();
  v1[80] = v6;
  v7 = *(v6 - 8);
  v1[81] = v7;
  v8 = *(v7 + 64) + 15;
  v1[82] = swift_task_alloc();
  v1[83] = swift_task_alloc();
  v9 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_232BB467C, 0, 0);
}

uint64_t sub_232BB467C()
{
  v48 = *MEMORY[0x277D85DE8];
  v1 = v0[74];
  v2 = OBJC_IVAR____TtC21DocumentUnderstanding13DURawDocument_documentHTMLData;
  sub_232B13F5C();
  v3 = *(v1 + v2);
  v0[84] = v3;
  if (v3)
  {
    v4 = &v3[OBJC_IVAR____TtC21DocumentUnderstanding18DUDocumentHTMLData_htmlString];
    sub_232B13F74();
    v5 = *v4;
    v6 = v4[1];
    v0[85] = v6;
    if (v6)
    {
      v7 = OBJC_IVAR____TtC21DocumentUnderstanding18DUDocumentHTMLData_documentEmailData;
      sub_232B13F74();
      v8 = *&v3[v7];
      v0[86] = v8;
      if (v8)
      {
        v9 = v5;
        v10 = objc_allocWithZone(type metadata accessor for DUDocumentHTMLData());
        v11 = v8;
        v46 = v3;

        v12 = [v10 init];
        v0[87] = v12;
        v13 = &v12[OBJC_IVAR____TtC21DocumentUnderstanding18DUDocumentHTMLData_htmlString];
        sub_232B13F5C();
        v14 = v6;
        v15 = v13[1];
        v47 = v9;
        *v13 = v9;
        v13[1] = v14;
        v45 = v14;

        v16 = OBJC_IVAR____TtC21DocumentUnderstanding18DUDocumentHTMLData_documentEmailData;
        sub_232B13F5C();
        v17 = *&v12[v16];
        *&v12[v16] = v8;
        v18 = v11;

        v19 = *(v1 + v2);
        *(v1 + v2) = v3;
        v20 = v46;

        type metadata accessor for DUFoundInEventHTMLPreprocessingImplementation();
        ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
        v22 = [objc_opt_self() bundleForClass_];
        v0[88] = v22;
        sub_232BD8000(0xD000000000000010, 0x8000000232D06410, 29546, 0xE200000000000000, v22);
        if (v23)
        {
          v24 = v0[83];
          sub_232CE9D90();
          sub_232BB6644();
          v39 = sub_232CE9D10();
          v41 = v40;
        }

        else
        {
          v31 = v0[78];
          sub_232CE9A20();
          v32 = sub_232CE9A00();
          v33 = sub_232CEA1C0();
          v34 = os_log_type_enabled(v32, v33);
          v35 = v0[78];
          v36 = v0[77];
          v37 = v0[76];
          if (v34)
          {
            v38 = swift_slowAlloc();
            *v38 = 0;
            _os_log_impl(&dword_232B02000, v32, v33, "Error accessing file", v38, 2u);
            MEMORY[0x238393870](v38, -1, -1);
          }

          (*(v36 + 8))(v35, v37);
          v39 = 0;
          v41 = 0xE000000000000000;
        }

        v0[90] = v41;
        v0[89] = 0;
        v42 = swift_task_alloc();
        v0[91] = v42;
        *v42 = v0;
        v42[1] = sub_232BB4C08;
        v43 = v0[75];
        v44 = *MEMORY[0x277D85DE8];

        return sub_232BB40F0(v47, v45, v39, v41);
      }

      v25 = 0x8000000232D063F0;
      sub_232B4A95C();
      sub_232B4EC24();
      v27 = 0xD00000000000001BLL;
    }

    else
    {
      v25 = 0x8000000232D063D0;
      sub_232B4A95C();
      sub_232B4EC24();
      v27 = 0xD00000000000001CLL;
    }
  }

  else
  {
    v25 = 0x8000000232D063B0;
    sub_232B4A95C();
    sub_232B4EC24();
    v27 = 0xD00000000000001ELL;
  }

  *v26 = v27;
  *(v26 + 8) = v25;
  *(v26 + 16) = 0;
  swift_willThrow();
  sub_232BB6650();

  v28 = v0[1];
  v29 = *MEMORY[0x277D85DE8];

  return v28();
}

uint64_t sub_232BB4C08()
{
  sub_232B26C7C();
  v10 = *MEMORY[0x277D85DE8];
  v1 = *(*v0 + 728);
  v2 = *(*v0 + 720);
  v3 = *(*v0 + 680);
  v4 = *v0;
  sub_232B26B3C();
  *v5 = v4;
  *(v7 + 736) = v6;

  v8 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_232BB4D6C, 0, 0);
}

uint64_t sub_232BB4D6C()
{
  v126 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 736);
  if (!v1)
  {
    *(v0 + 112) = 0u;
    *(v0 + 128) = 0u;
    goto LABEL_10;
  }

  v2 = *(v0 + 736);

  sub_232B1E16C(1954047348, 0xE400000000000000, v1);

  if (!*(v0 + 136))
  {
LABEL_10:
    sub_232BA4D50(v0 + 112, &qword_27DDC68C8, &qword_232CF6210);
    v4 = 0;
    v5 = 0;
    goto LABEL_11;
  }

  v3 = swift_dynamicCast();
  if (v3)
  {
    v4 = *(v0 + 520);
  }

  else
  {
    v4 = 0;
  }

  if (v3)
  {
    v5 = *(v0 + 528);
  }

  else
  {
    v5 = 0;
  }

LABEL_11:
  v6 = *(v0 + 592);
  v7 = (v6 + OBJC_IVAR____TtC21DocumentUnderstanding13DURawDocument_text);
  sub_232B13F5C();
  v8 = v7[1];
  *v7 = v4;
  v7[1] = v5;

  v9 = (v6 + OBJC_IVAR____TtC21DocumentUnderstanding13DURawDocument_headline);
  sub_232B13F74();
  v10 = v9[1];
  v114 = v10;
  if (!v10)
  {
    v112 = 0;
    if (v1)
    {
      goto LABEL_20;
    }

LABEL_36:
    *(v0 + 144) = 0u;
    *(v0 + 160) = 0u;
    goto LABEL_37;
  }

  v11 = *v9;

  v12 = sub_232CE9E60();
  v112 = v12 + 1;
  if (__OFADD__(v12, 1))
  {
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  v124 = v11;
  v125 = v10;

  MEMORY[0x238391C30](32, 0xE100000000000000);

  v13 = v7[1];
  if (v13)
  {
    v14 = *v7;
  }

  else
  {
    v14 = 0;
  }

  if (v13)
  {
    v15 = v7[1];
  }

  else
  {
    v15 = 0xE000000000000000;
  }

  MEMORY[0x238391C30](v14, v15);

  v16 = v7[1];
  *v7 = v11;
  v7[1] = v10;

  if (!v1)
  {
    goto LABEL_36;
  }

LABEL_20:
  sub_232B1E16C(0xD000000000000012, 0x8000000232D03580, *(v0 + 736));

  if (!*(v0 + 168))
  {
LABEL_37:
    sub_232BA4D50(v0 + 144, &qword_27DDC68C8, &qword_232CF6210);
    goto LABEL_38;
  }

  sub_232B124A8(&qword_27DDC75A8, &qword_232CFA518);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_38:
    v60 = *(v0 + 704);
    v61 = *(v0 + 696);
    v62 = *(v0 + 688);
    v63 = *(v0 + 672);
    sub_232B4A95C();
    sub_232B4EC24();
    *v64 = 0xD000000000000044;
    *(v64 + 8) = 0x8000000232D06430;
    *(v64 + 16) = 0;
    swift_willThrow();

    goto LABEL_39;
  }

  v17 = 0;
  v18 = MEMORY[0x277D84F90];
  v19 = *(v0 + 552);
  v123 = MEMORY[0x277D84F90];
  v110 = *(v19 + 16);
  v111 = v19;
  v20 = v19 + 32;
  v109 = (*(v0 + 648) + 8);
  v21 = *(v0 + 712);
  v22 = v10;
  while (1)
  {
    if (v110 == v17)
    {

      if (v22)
      {
        v76 = sub_232BB35C0(*(v0 + 592), v112);
        sub_232BB5E3C(0, v18);
        if (sub_232B25E10(v18) < 0)
        {
LABEL_56:
          __break(1u);
LABEL_57:
          __break(1u);
        }

        v77 = sub_232B26B10(v18);
        v78 = __OFADD__(v77, 1);
        v79 = v77 + 1;
        if (v78)
        {
          goto LABEL_57;
        }

        sub_232C61858(v79, 1);
        sub_232BB5E94(0, 0, 1, v76);
        v80 = v123;
      }

      else
      {
        v80 = v18;
      }

      v96 = *(v0 + 704);
      v97 = *(v0 + 696);
      v98 = *(v0 + 688);
      v99 = *(v0 + 672);
      v100 = *(v0 + 664);
      v101 = *(v0 + 656);
      v120 = *(v0 + 632);
      v122 = *(v0 + 624);
      v102 = *(v0 + 592);
      v103 = OBJC_IVAR____TtC21DocumentUnderstanding13DURawDocument_documentUIElements;
      sub_232B13F5C();
      v104 = *&v102[v103];
      *&v102[v103] = v80;

      v105 = objc_allocWithZone(type metadata accessor for DUDocument());
      v106 = DUDocument.init(rawDocument:maxLength:)(v102, 100000);

      v107 = *(v0 + 8);
      v108 = *MEMORY[0x277D85DE8];

      return v107(v106);
    }

    if (v17 >= *(v111 + 16))
    {
      __break(1u);
      goto LABEL_55;
    }

    sub_232B204B4(v20, v0 + 176);
    v23 = objc_opt_self();
    sub_232B203C8((v0 + 176), *(v0 + 200));
    v24 = sub_232CEA740();
    *(v0 + 568) = 0;
    v25 = [v23 dataWithJSONObject:v24 options:1 error:v0 + 568];
    swift_unknownObjectRelease();
    v26 = *(v0 + 568);
    if (!v25)
    {
      v81 = *(v0 + 704);
      v82 = *(v0 + 696);
      v83 = *(v0 + 688);
      v84 = *(v0 + 672);
      v85 = v26;

      v86 = sub_232CE8B30();

      swift_willThrow();

      sub_232BB6608();
      sub_232CEA4F0();
      *(v0 + 536) = v124;
      *(v0 + 544) = v125;
      MEMORY[0x238391C30](0xD000000000000014, 0x8000000232D06480);
      sub_232CEA5B0();
      MEMORY[0x238391C30](0x4E4F534A20736120, 0xED00006174616420);
      v87 = *(v0 + 536);
      v88 = *(v0 + 544);
      sub_232B4A95C();
      v89 = sub_232B4EC24();
      sub_232BB65E8(v89, v90);

      goto LABEL_49;
    }

    v115 = v17;
    v117 = v20;
    v27 = *(v0 + 656);
    v28 = v26;
    v29 = sub_232CE8C80();
    v31 = v30;

    sub_232CE9D90();
    v121 = v29;
    sub_232CE9D70();
    if (!v32 || (v33 = *(v0 + 656), v34 = *(v0 + 640), sub_232CE9D90(), v35 = sub_232CE9D60(), v37 = v36, , (*v109)(v33, v34), v37 >> 60 == 15))
    {
      v68 = *(v0 + 704);
      v69 = *(v0 + 696);
      v70 = *(v0 + 688);
      v118 = *(v0 + 672);

      sub_232BB6608();
      sub_232CEA4F0();

      sub_232BB6630();
      sub_232BB6644();
      v71 = sub_232CE8C30();
      MEMORY[0x238391C30](v71);

      sub_232B4A95C();
      v72 = sub_232B4EC24();
      sub_232BB65E8(v72, v73);

      v74 = sub_232BB6644();
      sub_232B41BEC(v74, v75);

      goto LABEL_49;
    }

    v38 = sub_232CE8940();
    v39 = *(v38 + 48);
    v40 = *(v38 + 52);
    swift_allocObject();
    sub_232CE8930();
    sub_232BB5FC4();
    sub_232CE8920();
    if (v21)
    {
      break;
    }

    v113 = v31;

    v41 = *(v0 + 80);
    *(v0 + 16) = *(v0 + 64);
    *(v0 + 32) = v41;
    *(v0 + 48) = *(v0 + 96);
    v42 = [objc_allocWithZone(type metadata accessor for DUDocumentUIElement()) init];
    v44 = *(v0 + 48);
    v43 = *(v0 + 56);
    v45 = &v42[OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentUIElement_text];
    sub_232B13F5C();
    v46 = *(v45 + 1);
    *v45 = v44;
    *(v45 + 1) = v43;

    v47 = *(v0 + 32);
    v48 = OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentUIElement_superviewClassNames;
    sub_232B13F5C();
    v49 = *&v42[v48];
    *&v42[v48] = v47;

    *(v0 + 576) = *(v0 + 24);
    v50 = OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentUIElement_superviewClassIndices;
    sub_232B13F5C();
    v51 = *&v42[v50];
    *&v42[v50] = *(v0 + 576);
    sub_232BB602C(v0 + 576, v0 + 560);

    v52 = *(v0 + 16);
    v53 = OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentUIElement_styleProperties;
    sub_232B13F5C();
    v54 = *&v42[v53];
    *&v42[v53] = v52;
    v22 = v114;

    if (v114)
    {
      sub_232BB3538(v0 + 16, v112);
      v56 = v55;

      sub_232BA4D50(v0 + 576, &qword_27DDC75B8, &unk_232CFA520);

      *(v0 + 584) = *(v0 + 40);
      sub_232BA4D50(v0 + 584, &qword_27DDC75C0, &qword_232CFCB20);
    }

    else
    {
      v56 = *(v0 + 40);

      sub_232BA4D50(v0 + 576, &qword_27DDC75B8, &unk_232CFA520);
    }

    v57 = OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentUIElement_range;
    sub_232B13F5C();
    v58 = *&v42[v57];
    *&v42[v57] = v56;

    v59 = v42;
    MEMORY[0x238391D50]();
    if (*((v123 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v123 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_232CEA000();
    }

    sub_232CEA020();
    sub_232BB6018(v35, v37);
    sub_232B41BEC(v121, v113);

    v18 = v123;
    sub_232B2040C((v0 + 176));
    v21 = 0;
    v20 = v117 + 32;
    v17 = v115 + 1;
  }

  v91 = *(v0 + 704);
  v92 = *(v0 + 688);
  v116 = *(v0 + 696);
  v119 = *(v0 + 672);

  sub_232BB6608();
  sub_232CEA4F0();

  sub_232BB6630();
  v93 = sub_232CE8C30();
  MEMORY[0x238391C30](v93);

  sub_232B4A95C();
  v94 = sub_232B4EC24();
  sub_232BB65E8(v94, v95);

  sub_232BB6018(v35, v37);
  sub_232B41BEC(v29, v31);

LABEL_49:
  sub_232B2040C((v0 + 176));
LABEL_39:
  sub_232BB6650();

  v65 = *(v0 + 8);
  v66 = *MEMORY[0x277D85DE8];

  return v65();
}

uint64_t sub_232BB58E0(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return sub_232B512BC();
}

uint64_t sub_232BB58F4()
{
  sub_232B26C7C();
  v1 = *(v0[2] + 24);
  if (v1 && (v2 = v1, v3 = sub_232B591FC(), v0[4] = v3, v2, v3))
  {
    v4 = swift_task_alloc();
    v0[5] = v4;
    *v4 = v0;
    v4[1] = sub_232BB5A24;
    v5 = v0[3];

    return sub_232BB451C();
  }

  else
  {
    sub_232B4A95C();
    v7 = sub_232B4EC24();
    *v8 = 0xD000000000000024;
    *(v8 + 8) = 0x8000000232D06380;
    *(v8 + 16) = 0;
    v9 = v0[1];

    return v9(v7, 1);
  }
}

uint64_t sub_232BB5A24()
{
  sub_232B26C7C();
  v3 = v2;
  v4 = *v1;
  v5 = *(*v1 + 40);
  v6 = *v1;
  sub_232B26B3C();
  *v7 = v6;
  *(v4 + 48) = v0;

  if (v0)
  {
    v8 = sub_232BB5BA4;
  }

  else
  {
    *(v4 + 56) = v3;
    v8 = sub_232BB5B40;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_232BB5B40()
{
  sub_232B26C44();

  v1 = *(v0 + 56);
  v2 = *(v0 + 8);

  return v2(v1, 0);
}

uint64_t sub_232BB5BA4()
{
  sub_232B26C44();

  v1 = *(v0 + 48);
  v2 = *(v0 + 8);

  return v2(v1, 1);
}

uint64_t sub_232BB5C08()
{

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t sub_232BB5C88(uint64_t a1, uint64_t a2)
{
  *(v3 + 16) = a1;
  v5 = *v2;
  v6 = swift_task_alloc();
  *(v3 + 24) = v6;
  *v6 = v3;
  v6[1] = sub_232BB5D24;

  return sub_232BB58E0(a2);
}

uint64_t sub_232BB5D24()
{
  sub_232B26C7C();
  v2 = v1;
  v4 = v3;
  v5 = *(*v0 + 24);
  v6 = *(*v0 + 16);
  v7 = *v0;
  sub_232B26B3C();
  *v8 = v7;

  *v6 = v4;
  *(v6 + 8) = v2 & 1;
  v9 = *(v7 + 8);

  return v9();
}

uint64_t sub_232BB5E3C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62)
  {
    result = sub_232CEA610();
  }

  else
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (result < a1)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (a1 < 0)
  {
LABEL_8:
    __break(1u);
  }

  return result;
}

void sub_232BB5E94(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{
  v10 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_19;
  }

  v4 = a3;
  v6 = a2;
  v15 = a4;
  v11 = *v5;
  v7 = *v5 & 0xFFFFFFFFFFFFFF8;
  v8 = v7 + 32;
  v5 = (v7 + 32 + 8 * a1);
  type metadata accessor for DUDocumentUIElement();
  swift_arrayDestroy();
  v12 = __OFSUB__(v4, v10);
  v10 = v4 - v10;
  if (v12)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (!v10)
  {
    goto LABEL_12;
  }

  v9 = v11 >> 62;
  if (!(v11 >> 62))
  {
    v13 = *(v7 + 16);
    goto LABEL_6;
  }

LABEL_20:
  v13 = sub_232CEA610();
LABEL_6:
  if (__OFSUB__(v13, v6))
  {
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  sub_232B37A20(v8 + 8 * v6, &v13[-v6], &v5[v4]);
  if (v9)
  {
    v13 = sub_232CEA610();
  }

  else
  {
    v13 = *(v7 + 16);
  }

  if (__OFADD__(v13, v10))
  {
    goto LABEL_22;
  }

  *(v7 + 16) = &v13[v10];
LABEL_12:
  v13 = v15;
  if (v4 >= 1)
  {
    *v5 = v15;
    if (v4 == 1)
    {
      return;
    }

LABEL_23:
    v14 = v13;
    __break(1u);
    return;
  }
}

unint64_t sub_232BB5FC4()
{
  result = qword_27DDC75B0;
  if (!qword_27DDC75B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDC75B0);
  }

  return result;
}

uint64_t sub_232BB6018(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_232B41BEC(a1, a2);
  }

  return a1;
}

uint64_t sub_232BB602C(uint64_t a1, uint64_t a2)
{
  v4 = sub_232B124A8(&qword_27DDC75B8, &unk_232CFA520);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_232BB60AC()
{
  v0 = *(*(sub_232B124A8(&qword_27DDC75D0, &qword_232CFA538) - 8) + 80);

  return sub_232BB44CC();
}

unint64_t sub_232BB6128()
{
  result = qword_27DDC75D8;
  if (!qword_27DDC75D8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27DDC75D8);
  }

  return result;
}

uint64_t sub_232BB6180(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_232BB6198()
{
  result = qword_27DDC75E0;
  if (!qword_27DDC75E0)
  {
    sub_232CE9AA0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDC75E0);
  }

  return result;
}

unint64_t sub_232BB61F0()
{
  result = qword_27DDC75F0;
  if (!qword_27DDC75F0)
  {
    sub_232B27EEC(&qword_27DDC75E8, qword_232CFA540);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDC75F0);
  }

  return result;
}

uint64_t sub_232BB6268(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_232BB62A8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_232BB6304()
{
  result = qword_27DDC7600;
  if (!qword_27DDC7600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDC7600);
  }

  return result;
}

uint64_t sub_232BB6358(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_232B27EEC(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for DUDocumentFoundInUIElements.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_232BB64A0()
{
  result = qword_27DDC7618;
  if (!qword_27DDC7618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDC7618);
  }

  return result;
}

unint64_t sub_232BB64F8()
{
  result = qword_27DDC7620;
  if (!qword_27DDC7620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDC7620);
  }

  return result;
}

unint64_t sub_232BB6550()
{
  result = qword_27DDC7628;
  if (!qword_27DDC7628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDC7628);
  }

  return result;
}

uint64_t sub_232BB65E8(uint64_t a1, uint64_t a2)
{
  *a2 = v2;
  *(a2 + 8) = v3;
  *(a2 + 16) = 0;

  return swift_willThrow();
}

uint64_t sub_232BB6650()
{
  v2 = v0[83];
  v3 = v0[82];
  v4 = v0[79];
  v5 = v0[78];
}

uint64_t static DUFoundInEventLLMImplementationError.== infix(_:_:)(uint64_t a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v6 = *a2;
  v5 = a2[1];
  v7 = *(a2 + 16);
  switch(v4)
  {
    case 1u:
      if (v7 != 1)
      {
        goto LABEL_84;
      }

      if (v3 != v6 || v2 != v5)
      {
        sub_232B5EFF4();
        v10 = sub_232BB7D84();
        v34 = sub_232BAE188();
        v36 = sub_232BB7D68(v34, v35, 1u);
        v38 = sub_232BB7D68(v36, v37, 1u);
        sub_232BB6A10(v38, v39, 1u);
        v17 = sub_232BAE188();
        v19 = 1;
        goto LABEL_27;
      }

      v47 = 1;
      v48 = sub_232B5EFF4();
      v50 = sub_232BB7D68(v48, v49, 1u);
      v52 = sub_232BB7D68(v50, v51, 1u);
      sub_232BB6A10(v52, v53, 1u);
      v54 = sub_232B5EFF4();
      v56 = 1;
LABEL_30:
      sub_232BB6A10(v54, v55, v56);
      return v47;
    case 2u:
      if (v7 != 2)
      {
        goto LABEL_84;
      }

      v20 = *a1;
      if (v3 != v6 || v2 != v5)
      {
        v10 = sub_232BB7D84();
        v22 = sub_232BAE188();
        v24 = sub_232BB7D68(v22, v23, 2u);
        v26 = sub_232BB7D68(v24, v25, 2u);
        sub_232BB6A10(v26, v27, 2u);
        v17 = sub_232BAE188();
        v19 = 2;
        goto LABEL_27;
      }

      v41 = sub_232BB7D68(v20, v2, 2u);
      v43 = sub_232BB7D68(v41, v42, 2u);
      sub_232BB6A10(v43, v44, 2u);
      v32 = sub_232B5EFF4();
      v46 = 2;
      goto LABEL_87;
    case 3u:
      v28 = *a1;
      switch(v3)
      {
        case 1:
          if (v7 != 3 || v6 != 1 || v5 != 0)
          {
            goto LABEL_84;
          }

          v75 = sub_232B5EFF4();
          sub_232BB6A10(v75, v76, 3u);
          v47 = 1;
          v54 = 1;
          v55 = 0;
          v56 = 3;
          goto LABEL_30;
        case 2:
          if (v7 != 3 || v6 != 2 || v5 != 0)
          {
            goto LABEL_84;
          }

          v67 = sub_232B5EFF4();
          sub_232BB6A10(v67, v68, 3u);
          v32 = 2;
          break;
        case 3:
          if (v7 != 3 || v6 != 3 || v5 != 0)
          {
            goto LABEL_84;
          }

          v71 = sub_232B5EFF4();
          sub_232BB6A10(v71, v72, 3u);
          v32 = 3;
          break;
        case 4:
          if (v7 != 3 || v6 != 4 || v5 != 0)
          {
            goto LABEL_84;
          }

          v63 = sub_232B5EFF4();
          sub_232BB6A10(v63, v64, 3u);
          v32 = 4;
          break;
        case 5:
          if (v7 != 3 || v6 != 5 || v5 != 0)
          {
            goto LABEL_84;
          }

          v79 = sub_232B5EFF4();
          sub_232BB6A10(v79, v80, 3u);
          v32 = 5;
          break;
        case 6:
          if (v7 != 3 || v6 != 6 || v5 != 0)
          {
            goto LABEL_84;
          }

          v91 = sub_232B5EFF4();
          sub_232BB6A10(v91, v92, 3u);
          v32 = 6;
          break;
        default:
          if (v7 != 3 || (v5 | v6) != 0)
          {
            goto LABEL_84;
          }

          v30 = sub_232B5EFF4();
          sub_232BB6A10(v30, v31, 3u);
          v32 = 0;
          break;
      }

      v45 = 0;
      v46 = 3;
      goto LABEL_87;
    default:
      if (*(a2 + 16))
      {
LABEL_84:
        v83 = sub_232BAE188();
        v85 = sub_232BB7D68(v83, v84, v7);
        v87 = sub_232BB7D68(v85, v86, v4);
        sub_232BB6A10(v87, v88, v4);
        v89 = sub_232BAE188();
        sub_232BB6A10(v89, v90, v7);
        return 0;
      }

      v8 = *a1;
      if (v3 == v6 && v2 == v5)
      {
        v57 = sub_232BB7D68(v8, v2, 0);
        v59 = sub_232BB7D68(v57, v58, 0);
        sub_232BB6A10(v59, v60, 0);
        v32 = sub_232B5EFF4();
        v46 = 0;
LABEL_87:
        sub_232BB6A10(v32, v45, v46);
        return 1;
      }

      v10 = sub_232BB7D84();
      v11 = sub_232BAE188();
      v13 = sub_232BB7D68(v11, v12, 0);
      v15 = sub_232BB7D68(v13, v14, 0);
      sub_232BB6A10(v15, v16, 0);
      v17 = sub_232BAE188();
      v19 = 0;
LABEL_27:
      sub_232BB6A10(v17, v18, v19);
      return v10 & 1;
  }
}

uint64_t sub_232BB69F8(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 2u)
  {
  }

  return result;
}

uint64_t sub_232BB6A10(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 2u)
  {
  }

  return result;
}

uint64_t sub_232BB6A2C(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 24) = a2;
  *(v4 + 32) = v3;
  *(v4 + 160) = a3;
  *(v4 + 16) = a1;
  v5 = *(*(sub_232B124A8(&qword_27DDC7398, &unk_232CF9070) - 8) + 64) + 15;
  *(v4 + 40) = swift_task_alloc();
  v6 = sub_232CE8E10();
  *(v4 + 48) = v6;
  v7 = *(v6 - 8);
  *(v4 + 56) = v7;
  v8 = *(v7 + 64) + 15;
  *(v4 + 64) = swift_task_alloc();
  *(v4 + 72) = swift_task_alloc();
  v9 = sub_232CE9A30();
  *(v4 + 80) = v9;
  v10 = *(v9 - 8);
  *(v4 + 88) = v10;
  v11 = *(v10 + 64) + 15;
  *(v4 + 96) = swift_task_alloc();
  *(v4 + 104) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_232BB6BA0, 0, 0);
}

uint64_t sub_232BB6BA0()
{
  v60 = v0;
  sub_232CE9810();
  if (sub_232CE97C0())
  {
    v1 = *(v0 + 104);
    v2 = *(v0 + 16);
    v3 = DULLMInput.constructModelInput()();
    countAndFlagsBits = v3._countAndFlagsBits;
    object = v3._object;
    *(v0 + 112) = v3._object;
    sub_232CE9A20();

    v6 = sub_232CE9A00();
    v7 = sub_232CEA1B0();

    v8 = os_log_type_enabled(v6, v7);
    v9 = *(v0 + 104);
    v11 = *(v0 + 80);
    v10 = *(v0 + 88);
    if (v8)
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v59[0] = v13;
      *v12 = 136642819;
      *(v12 + 4) = sub_232BAD2D4(v3._countAndFlagsBits, v3._object, v59);
      _os_log_impl(&dword_232B02000, v6, v7, "DUFoundInEventLLMImplementation: calling LLM extraction with %{sensitive}s", v12, 0xCu);
      sub_232B2040C(v13);
      sub_232BA6A84();
      sub_232BA6A84();
    }

    v57 = *(v10 + 8);
    v57(v9, v11);
    v14 = *(v0 + 96);
    v16 = *(v0 + 64);
    v15 = *(v0 + 72);
    v18 = *(v0 + 48);
    v17 = *(v0 + 56);
    type metadata accessor for DUFoundInEventLLMImplementation();
    sub_232BB7438();
    sub_232CE9A20();
    v58 = *(v17 + 16);
    v58(v16, v15, v18);
    v19 = sub_232CE9A00();
    v20 = sub_232CEA1B0();
    v21 = os_log_type_enabled(v19, v20);
    v22 = *(v0 + 96);
    v56 = *(v0 + 88);
    v23 = *(v0 + 80);
    v25 = *(v0 + 56);
    v24 = *(v0 + 64);
    v26 = *(v0 + 48);
    if (v21)
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v59[0] = v28;
      *v27 = 136315138;
      sub_232BB7C34();
      v54 = v22;
      v55 = v23;
      v29 = sub_232CEA720();
      v31 = v30;
      v53 = v20;
      v32 = *(v25 + 8);
      v33 = sub_232B5EFF4();
      v32(v33);
      v34 = sub_232BAD2D4(v29, v31, v59);

      *(v27 + 4) = v34;
      _os_log_impl(&dword_232B02000, v19, v53, "DUFoundInEventLLMImplementation: preferredLocale %s", v27, 0xCu);
      sub_232B2040C(v28);
      object = v3._object;
      sub_232BA6A84();
      countAndFlagsBits = v3._countAndFlagsBits;
      sub_232BA6A84();

      v35 = v54;
      v36 = v55;
    }

    else
    {

      v32 = *(v25 + 8);
      v45 = sub_232B5EFF4();
      v32(v45);
      v35 = v22;
      v36 = v23;
    }

    v57(v35, v36);
    *(v0 + 120) = v32;
    v46 = *(v0 + 72);
    v48 = *(v0 + 40);
    v47 = *(v0 + 48);
    v49 = *(v0 + 160);
    v50 = *(v0 + 24);
    type metadata accessor for DUModelRunner();
    LOBYTE(v59[0]) = 0;
    *(v0 + 128) = DUModelRunner.__allocating_init(extractionCategory:pid:)(v59, v50, v49 & 1);
    v58(v48, v46, v47);
    sub_232B12504(v48, 0, 1, v47);
    v51 = swift_task_alloc();
    *(v0 + 136) = v51;
    *v51 = v0;
    v51[1] = sub_232BB7010;
    v52 = *(v0 + 40);

    return sub_232BDE050(countAndFlagsBits, object, v52);
  }

  else
  {
    sub_232BB7B64();
    swift_allocError();
    *v37 = 0;
    *(v37 + 8) = 0;
    *(v37 + 16) = 3;
    swift_willThrow();
    v39 = *(v0 + 96);
    v38 = *(v0 + 104);
    v41 = *(v0 + 64);
    v40 = *(v0 + 72);
    v42 = *(v0 + 40);

    v43 = *(v0 + 8);

    return v43();
  }
}

uint64_t sub_232BB7010(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 136);
  v5 = *(*v2 + 128);
  v6 = *(*v2 + 112);
  v7 = *(*v2 + 40);
  v10 = *v2;
  *(v3 + 144) = a1;
  *(v3 + 152) = v1;

  sub_232BB7BB8(v7);

  if (v1)
  {
    v8 = sub_232BB7380;
  }

  else
  {
    v8 = sub_232BB7184;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_232BB7184()
{
  v30 = v0;
  v1 = sub_232BB7650(v28, *(v0 + 144), **(v0 + 16));
  v3 = v28[0];
  v2 = v28[1];
  v4 = v29;
  if (v1)
  {
    v6 = *(v0 + 96);
    v5 = *(v0 + 104);
    v7 = *(v0 + 64);
    v8 = *(v0 + 40);
    v9 = *(v0 + 56) + 8;
    (*(v0 + 120))(*(v0 + 72), *(v0 + 48));
    sub_232BB7C20(v3, v2, v4);

    v10 = *(v0 + 8);
    v11 = *(v0 + 144);

    return v10(v11);
  }

  else
  {
    v13 = *(v0 + 144);
    v14 = *(v0 + 120);
    v15 = *(v0 + 72);
    v16 = *(v0 + 48);
    v17 = *(v0 + 56);

    sub_232BB7B64();
    swift_allocError();
    v19 = 0x8000000232D06610;
    v20 = 0xD000000000000029;
    if (v4 == 255)
    {
      v21 = 2;
    }

    else
    {
      v20 = v3;
      v19 = v2;
      v21 = v4;
    }

    *v18 = v20;
    *(v18 + 8) = v19;
    *(v18 + 16) = v21;
    swift_willThrow();
    v14(v15, v16);
    v23 = *(v0 + 96);
    v22 = *(v0 + 104);
    v25 = *(v0 + 64);
    v24 = *(v0 + 72);
    v26 = *(v0 + 40);

    v27 = *(v0 + 8);

    return v27();
  }
}

uint64_t sub_232BB7380()
{
  v1 = *(v0 + 56) + 8;
  (*(v0 + 120))(*(v0 + 72), *(v0 + 48));
  v2 = *(v0 + 152);
  v4 = *(v0 + 96);
  v3 = *(v0 + 104);
  v6 = *(v0 + 64);
  v5 = *(v0 + 72);
  v7 = *(v0 + 40);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_232BB7438()
{
  v0 = sub_232CE9A30();
  v1 = sub_232B48F0C(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v1);
  v7 = v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = objc_opt_self();
  v9 = sub_232BB8098(&unk_28480FFD0);
  v10 = sub_232CE8D90();
  v11 = sub_232BB8098(v10);

  v12 = sub_232BB7C8C(v9, v11, 2, 1, v8);
  if (v13)
  {
    v18[4] = v12;
    v18[5] = v13;
    v18[2] = 95;
    v18[3] = 0xE100000000000000;
    v18[0] = 45;
    v18[1] = 0xE100000000000000;
    sub_232B48080();
    sub_232CEA3B0();
  }

  else
  {
    sub_232CE9A20();
    v14 = sub_232CE9A00();
    v15 = sub_232CEA1E0();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_232B02000, v14, v15, "DUFoundInEventImplementation: Preferred language not found, defaulting to en_US", v16, 2u);
      sub_232BA6A84();
    }

    (*(v3 + 8))(v7, v0);
  }

  return sub_232CE8D50();
}

uint64_t sub_232BB7650(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v44 = a3;
  v5 = sub_232CE9A30();
  v6 = sub_232B48F0C(v5);
  v47 = v7;
  v48 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v6);
  v49 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_232B124A8(&qword_27DDC6B30, &unk_232CF8960);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_232CF5E60;
  v12 = *MEMORY[0x277D067E0];
  *(inited + 32) = sub_232CE9D50();
  *(inited + 40) = v13;
  v14 = *MEMORY[0x277D067D8];
  *(inited + 48) = sub_232CE9D50();
  *(inited + 56) = v15;
  v16 = sub_232C0D410(inited);
  v17 = *(a2 + 16);
  if (!v17)
  {
LABEL_21:

    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = -1;
    return 1;
  }

  v18 = 0;
  v19 = *MEMORY[0x277D06608];
  v20 = a2 + 32;
  v21 = *MEMORY[0x277D06578];
  v46 = a1;
  v45 = v21;
  while (1)
  {
    v22 = *(v20 + 8 * v18);
    v23 = *(v22 + 16);

    if (v23)
    {
      sub_232B20540(v19);
      if (*(v22 + 16))
      {
        v24 = sub_232B20540(v21);
        if (v25)
        {
          break;
        }
      }
    }

LABEL_16:
    if (++v18 == v17)
    {
      goto LABEL_21;
    }
  }

  v26 = (*(v22 + 56) + 16 * v24);
  v28 = *v26;
  v27 = v26[1];

  if (!*(v16 + 16))
  {

LABEL_20:
    v21 = v45;
    goto LABEL_16;
  }

  v29 = *(v16 + 40);
  sub_232CEA820();
  sub_232CE9E40();
  v30 = sub_232CEA850();
  v31 = ~(-1 << *(v16 + 32));
  do
  {
    v32 = v30 & v31;
    if (((*(v16 + 56 + (((v30 & v31) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v30 & v31)) & 1) == 0)
    {

      a1 = v46;
      goto LABEL_20;
    }

    v33 = (*(v16 + 48) + 16 * v32);
    if (*v33 == v28 && v33[1] == v27)
    {
      break;
    }

    v35 = sub_232CEA750();
    v30 = v32 + 1;
  }

  while ((v35 & 1) == 0);

  v37 = v49;
  sub_232CE9A20();

  v38 = sub_232CE9A00();
  v39 = sub_232CEA1C0();

  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v50 = v41;
    *v40 = 136315394;
    *(v40 + 4) = sub_232BAD2D4(v28, v27, &v50);
    *(v40 + 12) = 2048;
    *(v40 + 14) = v44;
    _os_log_impl(&dword_232B02000, v38, v39, "(DUFoundInEventLLMImplementation): Unsupported Event Status: %s, documentType: %ld", v40, 0x16u);
    sub_232B2040C(v41);
    sub_232BA6A84();
    sub_232BA6A84();
  }

  (*(v47 + 8))(v37, v48);
  v42 = v46;
  v50 = 0;
  v51 = 0xE000000000000000;
  sub_232CEA4F0();

  v50 = 0xD000000000000025;
  v51 = 0x8000000232D06640;
  MEMORY[0x238391C30](v28, v27);

  result = 0;
  v43 = v51;
  *v42 = v50;
  *(v42 + 8) = v43;
  *(v42 + 16) = 2;
  return result;
}

uint64_t sub_232BB7A4C(uint64_t a1)
{
  if ((*(a1 + 16) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

__n128 sub_232BB7A68(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_232BB7A7C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFD && *(a1 + 17))
    {
      v2 = *a1 + 252;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 3)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_232BB7ABC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_232BB7B00(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    *(result + 8) = 0;
    LOBYTE(a2) = 3;
  }

  *(result + 16) = a2;
  return result;
}

unint64_t sub_232BB7B64()
{
  result = qword_2814E0598[0];
  if (!qword_2814E0598[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2814E0598);
  }

  return result;
}

uint64_t sub_232BB7BB8(uint64_t a1)
{
  v2 = sub_232B124A8(&qword_27DDC7398, &unk_232CF9070);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_232BB7C20(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 != 0xFF)
  {
    return sub_232BB6A10(a1, a2, a3);
  }

  return a1;
}

unint64_t sub_232BB7C34()
{
  result = qword_27DDC7630;
  if (!qword_27DDC7630)
  {
    sub_232CE8E10();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDC7630);
  }

  return result;
}

uint64_t sub_232BB7C8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v8 = sub_232CE9FD0();

  v9 = sub_232CE9FD0();

  v10 = [a5 mostPreferredLanguageOf:v8 withPreferredLanguages:v9 forUsage:a3 options:a4];

  if (!v10)
  {
    return 0;
  }

  v11 = sub_232CE9D50();

  return v11;
}

uint64_t sub_232BB7D84()
{

  return sub_232CEA750();
}

void sub_232BB7DA0(int64_t a1, int64_t a2, unint64_t a3, uint64_t a4, unint64_t a5)
{
  for (i = a1; ; ++i)
  {
    if (a2 == i)
    {
LABEL_7:

      return;
    }

    if (a2 < a1)
    {
      break;
    }

    if (i >= a2)
    {
      goto LABEL_9;
    }

    v12 = i;
    sub_232BBC42C(&v12, a3, a4, a5);
    if (v5)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
LABEL_9:
  __break(1u);
}

uint64_t sub_232BB7E50(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v6 = *(a1 + 16);
  v7 = (a1 + 40);
  if (v6)
  {
    while (1)
    {
      v8 = *v7;
      v10[0] = *(v7 - 1);
      v10[1] = v8;

      sub_232BB8F58(v10, a2, a3);
      if (v3)
      {
        break;
      }

      v7 += 2;
      if (!--v6)
      {
      }
    }
  }
}

uint64_t sub_232BB7EFC(uint64_t a1, uint64_t a2)
{
  sub_232B124A8(&qword_27DDC6900, &unk_232CF6480);
  v4 = sub_232B4EC24();
  *v5 = a2;

  return MEMORY[0x282200958](a1, v4);
}

unint64_t sub_232BB7F84(unint64_t result, uint64_t a2, uint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v3 = *(a3 + 16);
  if (v3 < result || v3 < a2)
  {
    goto LABEL_9;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_232BB7FF0(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v2)
  {
    v7 = MEMORY[0x277D84F90];
    sub_232CEA580();
    v4 = (a1 + 32);
    do
    {
      v5 = *v4++;
      sub_232CEA0B0();
      sub_232CEA560();
      v6 = *(v7 + 16);
      sub_232CEA590();
      sub_232CEA5A0();
      sub_232CEA570();
      --v2;
    }

    while (v2);
    return v7;
  }

  return result;
}

uint64_t sub_232BB8098(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v16 = MEMORY[0x277D84F90];
    v4 = sub_232BC1D78();
    sub_232B64B60(v4, v5, v6);
    v2 = v16;
    v7 = (a1 + 40);
    do
    {
      v13 = *(v7 - 1);
      v14 = *v7;

      swift_dynamicCast();
      v16 = v2;
      v8 = *(v2 + 16);
      if (v8 >= *(v2 + 24) >> 1)
      {
        sub_232BC1E24();
        sub_232B64B60(v9, v10, v11);
        v2 = v16;
      }

      *(v2 + 16) = v8 + 1;
      sub_232B20510(&v15, (v2 + 32 * v8 + 32));
      v7 += 2;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_232BB818C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v13 = MEMORY[0x277D84F90];
    v4 = sub_232BC1D78();
    sub_232B64CC8(v4, v5, v6);
    v7 = (a1 + 32);
    v2 = v13;
    do
    {
      v11 = *v7;

      sub_232B124A8(&qword_27DDC6C58, &qword_232CF89A0);
      sub_232B124A8(&qword_27DDC72C8, &qword_232CFF860);
      swift_dynamicCast();
      v9 = *(v13 + 16);
      v8 = *(v13 + 24);
      if (v9 >= v8 >> 1)
      {
        sub_232B64CC8((v8 > 1), v9 + 1, 1);
      }

      *(v13 + 16) = v9 + 1;
      *(v13 + 8 * v9 + 32) = v12;
      ++v7;
      --v1;
    }

    while (v1);
  }

  return v2;
}

id sub_232BB82CC(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = sub_232CE9D20();
  }

  else
  {
    v2 = 0;
  }

  v3 = [swift_getObjCClassFromMetadata() contextualEmbeddingWithIdentifier_];

  return v3;
}

uint64_t sub_232BB833C@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for DUFoundInEventSpecification();
  result = swift_allocObject();
  a1[3] = v2;
  a1[4] = &off_281932028;
  *a1 = result;
  return result;
}

_BYTE *sub_232BB8384(uint64_t a1, void *a2)
{
  LOBYTE(v5) = 105;
  type metadata accessor for DUFoundInEventsPostprocessing();
  sub_232BC1ECC();
  swift_allocObject();
  v6 = sub_232BCE8BC(a2);
  v7 = objc_allocWithZone(type metadata accessor for DUFoundInEventResult());
  v8 = a2;
  v9 = [v7 init];
  v10 = OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_detectedEventPolarity;
  sub_232B13F5C();
  *(v9 + v10) = 1;
  sub_232BCE960();
  if (v11)
  {
    sub_232BC1EC0();
    if (!v12)
    {
      sub_232BC1DC4();
      v5 = (v9 + OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_reservationId);
      sub_232B13F5C();
      v16 = v5[1];
      *v5 = v6;
      v5[1] = v2;

      goto LABEL_8;
    }

    v13 = sub_232BC1B94();
    v15 = 0;
  }

  else
  {
    sub_232BC1F98();
    if ((v3 & 1) == 0)
    {
      goto LABEL_8;
    }

    v13 = sub_232BC1B94();
    v15 = 1;
  }

  static DUFoundInEventResult.getErrorForField(field:errorCode:)(v13, v14, v15);
  sub_232BC1D98();
  sub_232B13F5C();
  sub_232BC1D60();
LABEL_8:
  sub_232BCF130();
  if (v17 == 1)
  {
    v18 = sub_232BC1CD0();
    static DUFoundInEventResult.getErrorForField(field:errorCode:)(v18, v19, 0);
LABEL_10:
    sub_232B13F5C();
    sub_232BC1D60();
    goto LABEL_19;
  }

  sub_232BC1DF4();
  if (v20)
  {
    v21 = OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_startAddressComponents;
    sub_232B13F5C();
    v22 = *(v9 + v21);
    *(v9 + v21) = v6;

    if (!v2)
    {
      goto LABEL_18;
    }
  }

  else if (!v2)
  {
LABEL_18:

    goto LABEL_19;
  }

  v23 = v9 + OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_startAddress;
  sub_232B13F5C();
  v24 = v23[1];
  *v23 = v3;
  v23[1] = v2;

  if (!v6)
  {
    goto LABEL_18;
  }

  if (v5)
  {
    v25 = sub_232BC1CD0();
    static DUFoundInEventResult.getErrorForField(field:errorCode:)(v25, v26, 1);
    goto LABEL_10;
  }

LABEL_19:
  sub_232BCF130();
  if (v27 == 1)
  {
    v28 = sub_232BC1EA0();
    static DUFoundInEventResult.getErrorForField(field:errorCode:)(v28, 0xEA00000000007373, 0);
LABEL_21:
    sub_232B13F5C();
    sub_232BC1D60();
    goto LABEL_30;
  }

  sub_232BC1DF4();
  if (v29)
  {
    v30 = OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_endAddressComponents;
    sub_232B13F5C();
    v31 = *(v9 + v30);
    *(v9 + v30) = v6;

    if (!v2)
    {
      goto LABEL_29;
    }
  }

  else if (!v2)
  {
LABEL_29:

    goto LABEL_30;
  }

  v32 = v9 + OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_endAddress;
  sub_232BC1C58();
  v33 = v32[1];
  *v32 = v3;
  v32[1] = v2;

  if (!v6)
  {
    goto LABEL_29;
  }

  if (v5)
  {
    v34 = sub_232BC1EA0();
    static DUFoundInEventResult.getErrorForField(field:errorCode:)(v34, 0xEA00000000007373, 1);
    goto LABEL_21;
  }

LABEL_30:
  sub_232BCF408();
  if (!v35)
  {
    v2 = v36;

    if ((v2 & 1) == 0)
    {
      goto LABEL_37;
    }

    v38 = sub_232BC1D10();
    v40 = 1;
    goto LABEL_35;
  }

  v37 = v35;
  if (v35 == 1)
  {
    v38 = sub_232BC1D10();
    v40 = 0;
LABEL_35:
    static DUFoundInEventResult.getErrorForField(field:errorCode:)(v38, v39, v40);
    sub_232BC1D98();
    sub_232B13F5C();
    sub_232BC1D60();
    goto LABEL_37;
  }

  sub_232BC1DC4();
  v41 = (v9 + OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_startDate);
  sub_232BC1C58();
  v42 = v41[1];
  *v41 = v6;
  v41[1] = v37;

LABEL_37:
  sub_232BCF408();
  if (!v43)
  {
    v2 = v44;

    if ((v2 & 1) == 0)
    {
      goto LABEL_44;
    }

    v46 = sub_232BC1DDC();
    v48 = 1;
    goto LABEL_42;
  }

  v45 = v43;
  if (v43 == 1)
  {
    v46 = sub_232BC1DDC();
    v48 = 0;
LABEL_42:
    static DUFoundInEventResult.getErrorForField(field:errorCode:)(v46, v47, v48);
    sub_232BC1D98();
    sub_232B13F5C();
    sub_232BC1D60();
    goto LABEL_44;
  }

  sub_232BC1DC4();
  v49 = (v9 + OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_endDate);
  sub_232BC1C58();
  v50 = v49[1];
  *v49 = v6;
  v49[1] = v45;

LABEL_44:
  sub_232BA61D4();
  sub_232BCE960();
  if (v51)
  {
    sub_232BC1EC0();
    if (!v12)
    {
      sub_232BC1DC4();
      v53 = (v9 + OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_startPlace);
      sub_232BC1C58();
      v54 = v53[1];
      *v53 = v6;
      v53[1] = v2;

      goto LABEL_51;
    }

    v52 = 0;
  }

  else
  {
    sub_232BC1F98();
    if ((v3 & 1) == 0)
    {
      goto LABEL_51;
    }

    v52 = 1;
  }

  static DUFoundInEventResult.getErrorForField(field:errorCode:)(0x616C507472617473, 0xEA00000000006563, v52);
  sub_232B13F5C();
  sub_232BC1D60();
LABEL_51:
  sub_232BA61D4();
  sub_232BCE960();
  if (v55)
  {
    sub_232BC1EC0();
    if (!v12)
    {
      sub_232BC1DC4();
      v57 = (v9 + OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_endPlace);
      sub_232BC1C58();
      v58 = v57[1];
      *v57 = v6;
      v57[1] = v2;

      goto LABEL_58;
    }

    v56 = 0;
  }

  else
  {
    sub_232BC1F98();
    if ((v3 & 1) == 0)
    {
      goto LABEL_58;
    }

    v56 = 1;
  }

  static DUFoundInEventResult.getErrorForField(field:errorCode:)(0x6563616C50646E65, 0xE800000000000000, v56);
  sub_232B13F5C();
  sub_232BC1D60();
LABEL_58:
  sub_232BCE960();
  if (v59)
  {
    sub_232BC1EC0();
    if (!v12)
    {
      sub_232BC1DC4();
      v63 = (v9 + OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_reservationName);
      sub_232BC1C58();
      v64 = v63[1];
      *v63 = v6;
      v63[1] = v2;

      goto LABEL_65;
    }

    v60 = sub_232BC1B94();
    v62 = 0;
  }

  else
  {
    sub_232BC1F98();
    if ((v3 & 1) == 0)
    {
      goto LABEL_65;
    }

    v60 = sub_232BC1B94();
    v62 = 1;
  }

  static DUFoundInEventResult.getErrorForField(field:errorCode:)(v60, v61, v62);
  sub_232B13F5C();
  sub_232BC1D60();
LABEL_65:
  sub_232BCE960();
  if (!v65)
  {
    v69 = v66;

    if ((v69 & 1) == 0)
    {
      goto LABEL_72;
    }

    v68 = 1;
    goto LABEL_70;
  }

  v67 = v65;
  if (v65 == 1)
  {
    v68 = 0;
LABEL_70:
    static DUFoundInEventResult.getErrorForField(field:errorCode:)(0xD000000000000013, 0x8000000232D06F20, v68);
    sub_232B13F5C();
    sub_232BC1D60();
    goto LABEL_72;
  }

  sub_232BC1DC4();
  v70 = (v9 + OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_hotelName);
  sub_232B13F5C();
  v71 = v70[1];
  *v70 = v6;
  v70[1] = v67;

LABEL_72:
  sub_232BCE960();
  if (!v72)
  {
    v76 = v73;

    if ((v76 & 1) == 0)
    {
      goto LABEL_79;
    }

    v75 = 1;
    goto LABEL_77;
  }

  v74 = v72;
  if (v72 == 1)
  {
    v75 = 0;
LABEL_77:
    static DUFoundInEventResult.getErrorForField(field:errorCode:)(0x6D614E7473657567, 0xE900000000000065, v75);
    sub_232B13F5C();
    sub_232BC1D60();
    goto LABEL_79;
  }

  sub_232BC1DC4();
  v77 = (v9 + OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_guestName);
  sub_232BC1C58();
  v78 = v77[1];
  *v77 = v6;
  v77[1] = v74;

LABEL_79:
  sub_232BA61D4();
  sub_232BCE960();
  if (v80)
  {
    v82 = v80;
    if (v80 != 1)
    {
      v88 = v79;

      v89 = v9 + OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_movieName;
      sub_232B13F5C();
      v90 = v89[1];
      *v89 = v88;
      v89[1] = v82;

      return v9;
    }

    v83 = 0;
  }

  else
  {
    v84 = v81;

    if ((v84 & 1) == 0)
    {

      return v9;
    }

    v83 = 1;
  }

  v85 = static DUFoundInEventResult.getErrorForField(field:errorCode:)(0x6369546569766F6DLL, 0xEF656D614E74656BLL, v83);

  v86 = OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_movieNameError;
  sub_232B13F5C();
  v87 = *&v86[v9];
  *&v86[v9] = v85;

  return v9;
}

uint64_t sub_232BB8CBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a4 + 16);
  v5 = MEMORY[0x277D84F90];
  if (v4)
  {
    v6 = a4;
    v43 = MEMORY[0x277D84F90];
    sub_232B649D4(0, v4, 0);
    v7 = v43;
    result = sub_232B66AD8(v6);
    v11 = result;
    v12 = 0;
    v13 = v6 + 64;
    v34 = v9;
    v35 = v4;
    v33 = v6 + 72;
    v36 = v6 + 64;
    while ((v11 & 0x8000000000000000) == 0 && v11 < 1 << *(v6 + 32))
    {
      v14 = v11 >> 6;
      if ((*(v13 + 8 * (v11 >> 6)) & (1 << v11)) == 0)
      {
        goto LABEL_26;
      }

      if (*(v6 + 36) != v9)
      {
        goto LABEL_27;
      }

      v39 = v12;
      v40 = v9;
      v38 = v10;
      v15 = (*(v6 + 48) + 16 * v11);
      v16 = v15[1];
      v41 = *v15;
      v17 = *(*(v6 + 56) + 8 * v11);
      v42 = v5;
      swift_bridgeObjectRetain_n();

      sub_232BB7E50(a3, v17, &v42);

      v18 = v42;
      v43 = v7;
      v19 = v6;
      v21 = *(v7 + 16);
      v20 = *(v7 + 24);
      if (v21 >= v20 >> 1)
      {
        v32 = sub_232BC1BBC(v20);
        result = sub_232B649D4(v32, v21 + 1, 1);
        v7 = v43;
      }

      *(v7 + 16) = v21 + 1;
      v22 = (v7 + 24 * v21);
      v22[4] = v41;
      v22[5] = v16;
      v22[6] = v18;
      v23 = 1 << *(v19 + 32);
      if (v11 >= v23)
      {
        goto LABEL_28;
      }

      v13 = v36;
      v24 = *(v36 + 8 * v14);
      if ((v24 & (1 << v11)) == 0)
      {
        goto LABEL_29;
      }

      v6 = v19;
      if (*(v19 + 36) != v40)
      {
        goto LABEL_30;
      }

      v25 = v24 & (-2 << (v11 & 0x3F));
      if (v25)
      {
        v23 = __clz(__rbit64(v25)) | v11 & 0x7FFFFFFFFFFFFFC0;
        v26 = v35;
      }

      else
      {
        v27 = v14 << 6;
        v28 = v14 + 1;
        v29 = (v33 + 8 * v14);
        v26 = v35;
        while (v28 < (v23 + 63) >> 6)
        {
          v31 = *v29++;
          v30 = v31;
          v27 += 64;
          ++v28;
          if (v31)
          {
            result = sub_232B48E94(v11, v40, v38 & 1);
            v23 = __clz(__rbit64(v30)) + v27;
            goto LABEL_19;
          }
        }

        result = sub_232B48E94(v11, v40, v38 & 1);
      }

LABEL_19:
      v10 = 0;
      v12 = v39 + 1;
      v11 = v23;
      v9 = v34;
      v5 = MEMORY[0x277D84F90];
      if (v39 + 1 == v26)
      {
        goto LABEL_22;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
LABEL_22:

    return sub_232B63200(v7);
  }

  return result;
}

uint64_t sub_232BB8F58(uint64_t *a1, uint64_t a2, uint64_t *a3)
{
  v5 = *a1;
  v6 = a1[1];
  sub_232BAD8B0();
  sub_232BC1AB8();
  if (sub_232CE9CB0())
  {
    v7 = sub_232CE9CA0();
    v19 = a3;
    if (v7[2])
    {
      v8 = v7[5];
      v20 = v7[4];
      v10 = v7[6];
      v9 = v7[7];
    }

    else
    {

      sub_232CEA370();
    }

    v13 = *(a2 + 16);
    v14 = (a2 + 40);
    if (v13)
    {
      while (1)
      {
        v12 = *(v14 - 1);
        v11 = *v14;
        sub_232B48080();
        sub_232BC1B0C();

        if (sub_232CEA3F0())
        {
          break;
        }

        v14 += 2;
        if (!--v13)
        {
          goto LABEL_9;
        }
      }
    }

    else
    {
LABEL_9:
      v11 = 0xE400000000000000;
      v12 = 1162760014;
    }

    a3 = v19;
  }

  else
  {
    v11 = 0xE400000000000000;
    v12 = 1162760014;
  }

  sub_232BAD03C();
  v15 = *(*a3 + 16);
  result = sub_232BAD188(v15);
  v17 = *a3;
  *(v17 + 16) = v15 + 1;
  v18 = v17 + 16 * v15;
  *(v18 + 32) = v12;
  *(v18 + 40) = v11;
  return result;
}

uint64_t sub_232BB914C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v24 = MEMORY[0x277D84F90];
  v25 = MEMORY[0x277D84F90];
  v22 = MEMORY[0x277D84F90];
  v23 = MEMORY[0x277D84F90];
  v21 = 0;
  v6 = sub_232B26B10(a3);
  v12 = v6;
  for (i = 0; v12 != i; ++i)
  {
    if ((a3 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x2383922C0](i, a3);
      v14 = v6;
    }

    else
    {
      if (i >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_13;
      }

      v14 = *(a3 + 8 * i + 32);
    }

    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_13:
      __break(1u);
      return MEMORY[0x2821D8B78](v6, v7, v8, v9, v10, v11);
    }

    v20 = v14;
    sub_232BB9288(&v20, &v25, &v21, &v22, &v24, &v23);
  }

  v16 = v24;
  v15 = v25;
  v18 = v22;
  v17 = v23;

  v6 = v15;
  v7 = v16;
  v8 = v17;
  v9 = v18;
  v10 = a1;
  v11 = a2;

  return MEMORY[0x2821D8B78](v6, v7, v8, v9, v10, v11);
}

uint64_t sub_232BB9288(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  v11 = *a1;
  v12 = *a3;
  sub_232BAD084();
  v13 = *(*a2 + 16);
  sub_232BAD1D0(v13);
  v14 = *a2;
  *(v14 + 16) = v13 + 1;
  *(v14 + 4 * v13 + 32) = v12;
  v15 = *a3;
  sub_232BAD054();
  v16 = *(*a4 + 16);
  sub_232BAD1A0(v16);
  v17 = *a4;
  *(v17 + 16) = v16 + 1;
  *(v17 + 8 * v16 + 32) = v15;
  sub_232BAD084();
  v18 = *(*a5 + 16);
  sub_232BAD1D0(v18);
  v19 = *a5;
  *(v19 + 16) = v18 + 1;
  *(v19 + 4 * v18 + 32) = 0;
  result = swift_beginAccess();
  v21 = *(v11 + 32);
  v22 = v21[2];
  if (!v22)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (v22 == 1)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v24 = v21[4];
  v23 = v21[5];
  v25 = v23 - v24;
  if (__OFSUB__(v23, v24))
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  sub_232BAD06C();
  v26 = *(*a6 + 16);
  result = sub_232BAD1B8(v26);
  v27 = *a6;
  *(v27 + 16) = v26 + 1;
  v28 = v27 + 16 * v26;
  *(v28 + 32) = v24;
  *(v28 + 40) = v25;
  if (!__OFADD__(*a3, 1))
  {
    ++*a3;
    return result;
  }

LABEL_9:
  __break(1u);
  return result;
}