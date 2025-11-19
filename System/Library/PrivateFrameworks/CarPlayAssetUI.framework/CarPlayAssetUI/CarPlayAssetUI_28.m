__n128 __swift_memcpy172_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  result = a2[7];
  v8 = a2[8];
  v9 = a2[9];
  *(a1 + 156) = *(a2 + 156);
  *(a1 + 128) = v8;
  *(a1 + 144) = v9;
  *(a1 + 112) = result;
  return result;
}

uint64_t sub_242EA8E4C(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 172))
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

uint64_t sub_242EA8EA8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
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
    *(result + 168) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 172) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 172) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_242EA8F38(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x3E && *(a1 + 53))
  {
    return (*a1 + 62);
  }

  v3 = ((*(a1 + 52) >> 6) & 0xFFFFFFC3 | (4 * ((*(a1 + 52) >> 2) & 0xF))) ^ 0x3F;
  if (v3 >= 0x3D)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_242EA8F8C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x3D)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 52) = 0;
    *(result + 48) = 0;
    *result = a2 - 62;
    if (a3 >= 0x3E)
    {
      *(result + 53) = 1;
    }
  }

  else
  {
    if (a3 >= 0x3E)
    {
      *(result + 53) = 0;
    }

    if (a2)
    {
      *(result + 16) = 0u;
      *(result + 32) = 0u;
      *result = 0u;
      *(result + 48) = 0;
      *(result + 52) = 4 * (((-a2 >> 2) & 0xF) - 16 * a2);
    }
  }

  return result;
}

uint64_t sub_242EA9000(uint64_t a1)
{
  v2 = *(a1 + 48);
  result = a1 + 48;
  v3 = v2 | (*(result + 4) << 32);
  *result = v2;
  *(result + 4) = BYTE4(v3) & 0x3F;
  return result;
}

uint64_t sub_242EA901C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 48);
  result = a1 + 48;
  v4 = (v3 | (*(result + 4) << 32)) & 0x3FFFFFFFFLL | (a2 << 38);
  *result = v3;
  *(result + 4) = BYTE4(v4);
  return result;
}

__n128 __swift_memcpy61_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 45) = *(a2 + 45);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_242EA906C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xEA && *(a1 + 61))
  {
    return (*a1 + 234);
  }

  v3 = *(a1 + 60);
  v4 = v3 >= 0x17;
  v5 = v3 - 23;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_242EA90B0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xE9)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 60) = 0;
    *(result + 56) = 0;
    *result = a2 - 234;
    if (a3 >= 0xEA)
    {
      *(result + 61) = 1;
    }
  }

  else
  {
    if (a3 >= 0xEA)
    {
      *(result + 61) = 0;
    }

    if (a2)
    {
      *(result + 60) = a2 + 22;
    }
  }

  return result;
}

__n128 __swift_memcpy69_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 61) = *(a2 + 61);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_242EA913C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 69))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_242EA9184(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 68) = 0;
    *(result + 64) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 69) = 1;
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

    *(result + 69) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_242EA91EC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 61))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_242EA9234(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 60) = 0;
    *(result + 56) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 61) = 1;
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

    *(result + 61) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_242EA92A0(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 349))
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

uint64_t sub_242EA92FC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
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
    *(result + 348) = 0;
    *(result + 344) = 0;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 349) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 349) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

unint64_t sub_242EA94B4()
{
  result = qword_27ECFB9F0;
  if (!qword_27ECFB9F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFB9F0);
  }

  return result;
}

unint64_t sub_242EA950C()
{
  result = qword_27ECFB9F8;
  if (!qword_27ECFB9F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFB9F8);
  }

  return result;
}

unint64_t sub_242EA9564()
{
  result = qword_27ECFBA00;
  if (!qword_27ECFBA00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFBA00);
  }

  return result;
}

unint64_t sub_242EA95BC()
{
  result = qword_27ECFBA08;
  if (!qword_27ECFBA08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFBA08);
  }

  return result;
}

unint64_t sub_242EA9614()
{
  result = qword_27ECFBA10;
  if (!qword_27ECFBA10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFBA10);
  }

  return result;
}

unint64_t sub_242EA966C()
{
  result = qword_27ECFBA18;
  if (!qword_27ECFBA18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFBA18);
  }

  return result;
}

unint64_t sub_242EA96C4()
{
  result = qword_27ECFBA20;
  if (!qword_27ECFBA20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFBA20);
  }

  return result;
}

unint64_t sub_242EA971C()
{
  result = qword_27ECFBA28;
  if (!qword_27ECFBA28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFBA28);
  }

  return result;
}

unint64_t sub_242EA9774()
{
  result = qword_27ECFBA30;
  if (!qword_27ECFBA30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFBA30);
  }

  return result;
}

unint64_t sub_242EA97CC()
{
  result = qword_27ECFBA38;
  if (!qword_27ECFBA38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFBA38);
  }

  return result;
}

unint64_t sub_242EA9824()
{
  result = qword_27ECFBA40;
  if (!qword_27ECFBA40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFBA40);
  }

  return result;
}

unint64_t sub_242EA987C()
{
  result = qword_27ECFBA48;
  if (!qword_27ECFBA48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFBA48);
  }

  return result;
}

unint64_t sub_242EA98D4()
{
  result = qword_27ECFBA50;
  if (!qword_27ECFBA50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFBA50);
  }

  return result;
}

unint64_t sub_242EA992C()
{
  result = qword_27ECFBA58;
  if (!qword_27ECFBA58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFBA58);
  }

  return result;
}

unint64_t sub_242EA9984()
{
  result = qword_27ECFBA60;
  if (!qword_27ECFBA60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFBA60);
  }

  return result;
}

unint64_t sub_242EA99DC()
{
  result = qword_27ECFBA68;
  if (!qword_27ECFBA68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFBA68);
  }

  return result;
}

unint64_t sub_242EA9A34()
{
  result = qword_27ECFBA70;
  if (!qword_27ECFBA70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFBA70);
  }

  return result;
}

unint64_t sub_242EA9A8C()
{
  result = qword_27ECFBA78;
  if (!qword_27ECFBA78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFBA78);
  }

  return result;
}

unint64_t sub_242EA9AE4()
{
  result = qword_27ECFBA80;
  if (!qword_27ECFBA80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFBA80);
  }

  return result;
}

unint64_t sub_242EA9B3C()
{
  result = qword_27ECFBA88;
  if (!qword_27ECFBA88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFBA88);
  }

  return result;
}

unint64_t sub_242EA9B94()
{
  result = qword_27ECFBA90;
  if (!qword_27ECFBA90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFBA90);
  }

  return result;
}

unint64_t sub_242EA9BEC()
{
  result = qword_27ECFBA98;
  if (!qword_27ECFBA98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFBA98);
  }

  return result;
}

unint64_t sub_242EA9C44()
{
  result = qword_27ECFBAA0;
  if (!qword_27ECFBAA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFBAA0);
  }

  return result;
}

unint64_t sub_242EA9C9C()
{
  result = qword_27ECFBAA8;
  if (!qword_27ECFBAA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFBAA8);
  }

  return result;
}

unint64_t sub_242EA9CF4()
{
  result = qword_27ECFBAB0;
  if (!qword_27ECFBAB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFBAB0);
  }

  return result;
}

unint64_t sub_242EA9D4C()
{
  result = qword_27ECFBAB8;
  if (!qword_27ECFBAB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFBAB8);
  }

  return result;
}

unint64_t sub_242EA9DA4()
{
  result = qword_27ECFBAC0;
  if (!qword_27ECFBAC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFBAC0);
  }

  return result;
}

unint64_t sub_242EA9DFC()
{
  result = qword_27ECFBAC8;
  if (!qword_27ECFBAC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFBAC8);
  }

  return result;
}

unint64_t sub_242EA9E54()
{
  result = qword_27ECFBAD0;
  if (!qword_27ECFBAD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFBAD0);
  }

  return result;
}

unint64_t sub_242EA9EAC()
{
  result = qword_27ECFBAD8;
  if (!qword_27ECFBAD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFBAD8);
  }

  return result;
}

unint64_t sub_242EA9F04()
{
  result = qword_27ECFBAE0;
  if (!qword_27ECFBAE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFBAE0);
  }

  return result;
}

unint64_t sub_242EA9F5C()
{
  result = qword_27ECFBAE8;
  if (!qword_27ECFBAE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFBAE8);
  }

  return result;
}

unint64_t sub_242EA9FB4()
{
  result = qword_27ECFBAF0;
  if (!qword_27ECFBAF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFBAF0);
  }

  return result;
}

unint64_t sub_242EAA00C()
{
  result = qword_27ECFBAF8;
  if (!qword_27ECFBAF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFBAF8);
  }

  return result;
}

unint64_t sub_242EAA064()
{
  result = qword_27ECFBB00;
  if (!qword_27ECFBB00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFBB00);
  }

  return result;
}

unint64_t sub_242EAA0BC()
{
  result = qword_27ECFBB08;
  if (!qword_27ECFBB08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFBB08);
  }

  return result;
}

unint64_t sub_242EAA114()
{
  result = qword_27ECFBB10;
  if (!qword_27ECFBB10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFBB10);
  }

  return result;
}

unint64_t sub_242EAA16C()
{
  result = qword_27ECFBB18;
  if (!qword_27ECFBB18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFBB18);
  }

  return result;
}

unint64_t sub_242EAA1C4()
{
  result = qword_27ECFBB20;
  if (!qword_27ECFBB20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFBB20);
  }

  return result;
}

unint64_t sub_242EAA21C()
{
  result = qword_27ECFBB28;
  if (!qword_27ECFBB28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFBB28);
  }

  return result;
}

unint64_t sub_242EAA274()
{
  result = qword_27ECFBB30;
  if (!qword_27ECFBB30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFBB30);
  }

  return result;
}

unint64_t sub_242EAA2CC()
{
  result = qword_27ECFBB38;
  if (!qword_27ECFBB38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFBB38);
  }

  return result;
}

uint64_t sub_242EAA320(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000012 && 0x8000000242F5CF80 == a2 || (sub_242F06110() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6469576B63617274 && a2 == 0xEA00000000006874 || (sub_242F06110() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x736E496B63617274 && a2 == 0xEA00000000007465 || (sub_242F06110() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x4972657474616C70 && a2 == 0xEC0000007465736ELL || (sub_242F06110() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6E694C6B63617274 && a2 == 0xEC00000070614365)
  {

    return 4;
  }

  else
  {
    v5 = sub_242F06110();

    if (v5)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_242EAA4F0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6469576B63617274 && a2 == 0xEA00000000006874;
  if (v4 || (sub_242F06110() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65736E497466656CLL && a2 == 0xE900000000000074 || (sub_242F06110() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x736E497468676972 && a2 == 0xEA00000000007465 || (sub_242F06110() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x664F7265746E6563 && a2 == 0xEC00000074657366 || (sub_242F06110() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x4C54527369 && a2 == 0xE500000000000000)
  {

    return 4;
  }

  else
  {
    v6 = sub_242F06110();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_242EAA6B4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x615272656E726F63 && a2 == 0xEC00000073756964;
  if (v4 || (sub_242F06110() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x754372656E726F63 && a2 == 0xEB00000000657672 || (sub_242F06110() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x4C54527369 && a2 == 0xE500000000000000 || (sub_242F06110() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x506465646E756F72 && a2 == 0xEF73736572676F72 || (sub_242F06110() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x73736572676F7270 && a2 == 0xED000074696D694CLL || (sub_242F06110() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000242F5CC60 == a2)
  {

    return 5;
  }

  else
  {
    v6 = sub_242F06110();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_242EAA8CC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD000000000000013 && 0x8000000242F5CFA0 == a2;
  if (v4 || (sub_242F06110() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000016 && 0x8000000242F5CFC0 == a2 || (sub_242F06110() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000016 && 0x8000000242F5CFE0 == a2 || (sub_242F06110() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000025 && 0x8000000242F5D000 == a2 || (sub_242F06110() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000025 && 0x8000000242F5D030 == a2 || (sub_242F06110() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD00000000000001ALL && 0x8000000242F5AE80 == a2 || (sub_242F06110() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000018 && 0x8000000242F5D060 == a2)
  {

    return 6;
  }

  else
  {
    v6 = sub_242F06110();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

uint64_t sub_242EAAB14(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD000000000000018 && 0x8000000242F5D080 == a2;
  if (v4 || (sub_242F06110() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD00000000000002ALL && 0x8000000242F5D0A0 == a2 || (sub_242F06110() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD00000000000002ALL && 0x8000000242F5D0D0 == a2 || (sub_242F06110() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD00000000000001ALL && 0x8000000242F5AE80 == a2 || (sub_242F06110() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD00000000000001DLL && 0x8000000242F5D100 == a2)
  {

    return 4;
  }

  else
  {
    v6 = sub_242F06110();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_242EAACC8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C6169646172 && a2 == 0xE600000000000000;
  if (v4 || (sub_242F06110() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7261656E696CLL && a2 == 0xE600000000000000 || (sub_242F06110() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x75676E6174636572 && a2 == 0xEB0000000072616CLL)
  {

    return 2;
  }

  else
  {
    v6 = sub_242F06110();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_242EAADDC(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000013 && 0x8000000242F5D120 == a2 || (sub_242F06110() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C797473 && a2 == 0xE500000000000000 || (sub_242F06110() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6D694C6B63617274 && a2 == 0xED00007061477469 || (sub_242F06110() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000242F5D140 == a2 || (sub_242F06110() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6854746F446E696DLL && a2 == 0xEF646C6F68736572)
  {

    return 4;
  }

  else
  {
    v5 = sub_242F06110();

    if (v5)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_242EAAFA8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656C797473 && a2 == 0xE500000000000000;
  if (v4 || (sub_242F06110() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7478456874646977 && a2 == 0xEE006E6F69736E65 || (sub_242F06110() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x646F4D646E656C62 && a2 == 0xEC00000079654B65)
  {

    return 2;
  }

  else
  {
    v6 = sub_242F06110();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_242EAB0C8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x734449726F6C6F63 && a2 == 0xE800000000000000;
  if (v4 || (sub_242F06110() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x43646573736F7263 && a2 == 0xEF734449726F6C6FLL || (sub_242F06110() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656C797473 && a2 == 0xE500000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_242F06110();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_242EAB1E4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD00000000000001DLL && 0x8000000242F5D160 == a2;
  if (v4 || (sub_242F06110() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000242F5D180 == a2 || (sub_242F06110() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1701869940 && a2 == 0xE400000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_242F06110();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

unint64_t sub_242EAB308()
{
  result = qword_27ECFBB40;
  if (!qword_27ECFBB40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFBB40);
  }

  return result;
}

unint64_t sub_242EAB35C()
{
  result = qword_27ECFBB48;
  if (!qword_27ECFBB48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFBB48);
  }

  return result;
}

unint64_t sub_242EAB3B0()
{
  result = qword_27ECFBB50;
  if (!qword_27ECFBB50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFBB50);
  }

  return result;
}

double SpeedometerDataIdentifiers.init()@<D0>(uint64_t a1@<X8>)
{
  *&result = 1263028551;
  *a1 = 1263028551;
  *(a1 + 4) = 80;
  return result;
}

unint64_t sub_242EAB5A4()
{
  v1 = *v0;
  v2 = 0x6E65644961746164;
  v3 = 0xD00000000000001ALL;
  if (v1 == 3)
  {
    v3 = 0xD000000000000020;
  }

  if (v1 == 2)
  {
    v3 = 0xD00000000000001DLL;
  }

  if (*v0)
  {
    v2 = 0xD000000000000012;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_242EAB658@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_242EAC0CC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_242EAB680(uint64_t a1)
{
  v2 = sub_242EABEC8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_242EAB6BC(uint64_t a1)
{
  v2 = sub_242EABEC8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SpeedometerDataIdentifiers.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFBB68);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v15 - v6;
  v8 = *v1;
  v9 = v1[1];
  v18 = v1[2];
  v19 = v9;
  v10 = v1[3];
  v16 = v1[4];
  v17 = v10;
  __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242EABEC8();
  sub_242F064C0();
  v29 = v8;
  v28 = 0;
  sub_242C8AC28();
  sub_242F05F20();
  if (v2)
  {
    return (*(v5 + 8))(v7, v4);
  }

  v12 = v17;
  v11 = v18;
  v13 = v16;
  v27 = v19;
  v26 = 1;
  sub_242F05F20();
  v25 = v11;
  v24 = 2;
  sub_242F05F20();
  v23 = v12;
  v22 = 3;
  sub_242F05F20();
  v21 = v13;
  v20 = 4;
  sub_242F05F20();
  return (*(v5 + 8))(v7, v4);
}

uint64_t SpeedometerDataIdentifiers.hash(into:)()
{
  InstrumentDataIdentifier.rawValue.getter();
  sub_242F04DD0();

  InstrumentDataIdentifier.rawValue.getter();
  sub_242F04DD0();

  InstrumentDataIdentifier.rawValue.getter();
  sub_242F04DD0();

  InstrumentDataIdentifier.rawValue.getter();
  sub_242F04DD0();

  InstrumentDataIdentifier.rawValue.getter();
  sub_242F04DD0();
}

uint64_t SpeedometerDataIdentifiers.hashValue.getter()
{
  sub_242F06390();
  InstrumentDataIdentifier.rawValue.getter();
  sub_242F04DD0();

  InstrumentDataIdentifier.rawValue.getter();
  sub_242F04DD0();

  InstrumentDataIdentifier.rawValue.getter();
  sub_242F04DD0();

  InstrumentDataIdentifier.rawValue.getter();
  sub_242F04DD0();

  InstrumentDataIdentifier.rawValue.getter();
  sub_242F04DD0();

  return sub_242F063E0();
}

uint64_t SpeedometerDataIdentifiers.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFBB78);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v16 - v7;
  __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242EABEC8();
  sub_242F06480();
  if (!v2)
  {
    v26 = 0;
    sub_242C8AC7C();
    sub_242F05E00();
    v9 = v27;
    v24 = 1;
    sub_242F05E00();
    v17 = v9;
    v10 = v25;
    v22 = 2;
    sub_242F05E00();
    HIDWORD(v16) = v10;
    v11 = v23;
    v20 = 3;
    sub_242F05E00();
    v13 = v21;
    v19 = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF4C20);
    sub_242D83ED4();
    sub_242F05D90();
    (*(v6 + 8))(v8, v5);
    v14 = v18;
    if (v18 == 86)
    {
      v14 = 80;
    }

    v15 = BYTE4(v16);
    *a2 = v17;
    a2[1] = v15;
    a2[2] = v11;
    a2[3] = v13;
    a2[4] = v14;
  }

  return __swift_destroy_boxed_opaque_existential_2Tm(a1);
}

unint64_t sub_242EABEC8()
{
  result = qword_27ECFBB70;
  if (!qword_27ECFBB70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFBB70);
  }

  return result;
}

unint64_t sub_242EABF20()
{
  result = qword_27ECFBB80;
  if (!qword_27ECFBB80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFBB80);
  }

  return result;
}

unint64_t sub_242EABFC8()
{
  result = qword_27ECFBB88;
  if (!qword_27ECFBB88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFBB88);
  }

  return result;
}

unint64_t sub_242EAC020()
{
  result = qword_27ECFBB90;
  if (!qword_27ECFBB90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFBB90);
  }

  return result;
}

unint64_t sub_242EAC078()
{
  result = qword_27ECFBB98;
  if (!qword_27ECFBB98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFBB98);
  }

  return result;
}

uint64_t sub_242EAC0CC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E65644961746164 && a2 == 0xEE00726569666974;
  if (v4 || (sub_242F06110() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000242F59750 == a2 || (sub_242F06110() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD00000000000001DLL && 0x8000000242F5D1A0 == a2 || (sub_242F06110() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000020 && 0x8000000242F5D1C0 == a2 || (sub_242F06110() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD00000000000001ALL && 0x8000000242F5AE80 == a2)
  {

    return 4;
  }

  else
  {
    v6 = sub_242F06110();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_242EAC2D0(uint64_t a1)
{
  v2 = type metadata accessor for ActionConfiguration(0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v9 - v6;
  sub_242EB6514(a1, &v9 - v6, type metadata accessor for ActionConfiguration);
  sub_242EB6514(v7, v4, type metadata accessor for ActionConfiguration);
  sub_242D59324();
  sub_242F04020();
  return sub_242EB644C(v7, type metadata accessor for ActionConfiguration);
}

uint64_t sub_242EAC418(uint64_t a1)
{
  v2 = type metadata accessor for FancyNotificationConfiguration(0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v9 - v6;
  sub_242EB6514(a1, &v9 - v6, type metadata accessor for FancyNotificationConfiguration);
  sub_242EB6514(v7, v4, type metadata accessor for FancyNotificationConfiguration);
  sub_242D598D8();
  sub_242F04020();
  return sub_242EB644C(v7, type metadata accessor for FancyNotificationConfiguration);
}

uint64_t sub_242EAC560(uint64_t a1)
{
  v2 = type metadata accessor for BannerConfiguration(0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v9 - v6;
  sub_242EB6514(a1, &v9 - v6, type metadata accessor for BannerConfiguration);
  sub_242EB6514(v7, v4, type metadata accessor for BannerConfiguration);
  sub_242D59B7C();
  sub_242F04020();
  return sub_242EB644C(v7, type metadata accessor for BannerConfiguration);
}

__n128 NotificationView.init(model:)@<Q0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  *a2 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF7CC0);
  swift_storeEnumTagMultiPayload();
  v4 = type metadata accessor for NotificationView(0);
  v5 = v4[5];
  *(a2 + v5) = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v6 = v4[6];
  *(a2 + v6) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF7F08);
  swift_storeEnumTagMultiPayload();
  v7 = v4[7];
  *(a2 + v7) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF9BD0);
  swift_storeEnumTagMultiPayload();
  v8 = a2 + v4[8];
  v9 = *(a1 + 112);
  *(v8 + 6) = *(a1 + 96);
  *(v8 + 7) = v9;
  *(v8 + 8) = *(a1 + 128);
  *(v8 + 18) = *(a1 + 144);
  v10 = *(a1 + 48);
  *(v8 + 2) = *(a1 + 32);
  *(v8 + 3) = v10;
  v11 = *(a1 + 80);
  *(v8 + 4) = *(a1 + 64);
  *(v8 + 5) = v11;
  result = *a1;
  v13 = *(a1 + 16);
  *v8 = *a1;
  *(v8 + 1) = v13;
  return result;
}

uint64_t sub_242EAC800@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_242F04000();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF7CC0);
  MEMORY[0x28223BE20](v7);
  v9 = &v13 - v8;
  v10 = type metadata accessor for NotificationView(0);
  sub_242CA321C(v1 + *(v10 + 20), v9, &qword_27ECF7CC0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_242EB64AC(v9, a1, type metadata accessor for ActionConfiguration);
  }

  sub_242F05710();
  v12 = sub_242F04360();
  sub_242F03930();

  sub_242F03FF0();
  swift_getAtKeyPath();

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_242EAC9EC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_242F04000();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF7F08);
  MEMORY[0x28223BE20](v7);
  v9 = &v13 - v8;
  v10 = type metadata accessor for NotificationView(0);
  sub_242CA321C(v1 + *(v10 + 24), v9, &qword_27ECF7F08);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_242EB64AC(v9, a1, type metadata accessor for BannerConfiguration);
  }

  sub_242F05710();
  v12 = sub_242F04360();
  sub_242F03930();

  sub_242F03FF0();
  swift_getAtKeyPath();

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_242EACBD8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_242F04000();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF9BD0);
  MEMORY[0x28223BE20](v7);
  v9 = &v13 - v8;
  v10 = type metadata accessor for NotificationView(0);
  sub_242CA321C(v1 + *(v10 + 28), v9, &qword_27ECF9BD0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_242EB64AC(v9, a1, type metadata accessor for FancyNotificationConfiguration);
  }

  sub_242F05710();
  v12 = sub_242F04360();
  sub_242F03930();

  sub_242F03FF0();
  swift_getAtKeyPath();

  return (*(v4 + 8))(v6, v3);
}

uint64_t NotificationView.body.getter@<X0>(uint64_t a1@<X8>)
{
  sub_242EACE38(a1);
  v3 = (v1 + *(type metadata accessor for NotificationView(0) + 32));
  v5 = *v3;
  v4 = v3[1];
  v6 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFBBA0) + 52));
  *v6 = v5;
  v6[1] = v4;
}

uint64_t sub_242EACE38@<X0>(uint64_t a1@<X8>)
{
  v212 = a1;
  v201 = _s21FancyNotificationViewVMa(0);
  MEMORY[0x28223BE20](v201);
  v193 = &v172 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v199 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFBEA0);
  MEMORY[0x28223BE20](v199);
  v4 = &v172 - v3;
  v211 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFBEA8);
  MEMORY[0x28223BE20](v211);
  v202 = &v172 - v5;
  v200 = _s21AlertNotificationViewVMa();
  MEMORY[0x28223BE20](v200);
  v192 = (&v172 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v207 = _s23MinimalNotificationViewVMa(0);
  MEMORY[0x28223BE20](v207);
  v8 = (&v172 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v208 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFBEB0);
  MEMORY[0x28223BE20](v208);
  v210 = &v172 - v9;
  v204 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFBEB8);
  MEMORY[0x28223BE20](v204);
  v205 = &v172 - v10;
  v209 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFBEC0);
  MEMORY[0x28223BE20](v209);
  v206 = &v172 - v11;
  v185 = type metadata accessor for NoticeView(0);
  MEMORY[0x28223BE20](v185);
  v176 = (&v172 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v182 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFBEC8);
  MEMORY[0x28223BE20](v182);
  v183 = &v172 - v13;
  v181 = type metadata accessor for BannerConfiguration(0);
  MEMORY[0x28223BE20](v181);
  v15 = &v172 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v198 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFBED0);
  MEMORY[0x28223BE20](v198);
  v184 = &v172 - v16;
  v194 = type metadata accessor for BannerView(0);
  MEMORY[0x28223BE20](v194);
  v187 = &v172 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v195 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFBED8);
  MEMORY[0x28223BE20](v195);
  v197 = &v172 - v18;
  v189 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFBEE0);
  MEMORY[0x28223BE20](v189);
  v190 = &v172 - v19;
  v196 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFBEE8);
  MEMORY[0x28223BE20](v196);
  v191 = &v172 - v20;
  v177 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFBEF0);
  MEMORY[0x28223BE20](v177);
  v179 = &v172 - v21;
  v186 = type metadata accessor for UserInteractiveView(0);
  MEMORY[0x28223BE20](v186);
  v23 = &v172 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v26 = &v172 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFBEF8);
  MEMORY[0x28223BE20](v27);
  v174 = &v172 - v28;
  v178 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFBF00);
  MEMORY[0x28223BE20](v178);
  v173 = &v172 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v175 = &v172 - v31;
  v188 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFBF08);
  MEMORY[0x28223BE20](v188);
  v180 = &v172 - v32;
  v203 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFBF10);
  MEMORY[0x28223BE20](v203);
  v34 = &v172 - v33;
  v35 = v1 + *(type metadata accessor for NotificationView(0) + 32);
  v36 = *(v35 + 96);
  v37 = *(v35 + 128);
  v238 = *(v35 + 112);
  v239 = v37;
  v38 = *(v35 + 32);
  v39 = *(v35 + 64);
  v234 = *(v35 + 48);
  v235 = v39;
  v40 = *(v35 + 64);
  v41 = *(v35 + 96);
  v236 = *(v35 + 80);
  v237 = v41;
  v42 = *(v35 + 32);
  v232 = *(v35 + 16);
  v233 = v42;
  v43 = *(v35 + 128);
  v241[6] = v238;
  v241[7] = v43;
  v241[2] = v234;
  v241[3] = v40;
  v241[4] = v236;
  v241[5] = v36;
  v240 = *(v35 + 144);
  v242 = *(v35 + 144);
  v241[0] = v232;
  v241[1] = v38;
  v44 = sub_242D3A260(v241);
  if (v44 <= 1)
  {
    if (v44)
    {
      v71 = sub_242C578A0(v241);
      KeyPath = swift_getKeyPath();
      v73 = v192;
      *v192 = KeyPath;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF7CC0);
      swift_storeEnumTagMultiPayload();
      v74 = swift_getKeyPath();
      v75 = v200;
      v76 = v73 + *(v200 + 20);
      *v76 = v74;
      *(v76 + 8) = 0;
      *(v76 + 16) = 0;
      v77 = (v73 + *(v75 + 24));
      v79 = v71[3];
      v78 = v71[4];
      v80 = v71[2];
      v77[1] = v71[1];
      v77[2] = v80;
      v77[3] = v79;
      v77[4] = v78;
      *v77 = *v71;
      sub_242EB6514(v73, v4, _s21AlertNotificationViewVMa);
      swift_storeEnumTagMultiPayload();
      v229 = v238;
      v230 = v239;
      v231 = v240;
      v225 = v234;
      v226 = v235;
      v227 = v236;
      v228 = v237;
      v223 = v232;
      v224 = v233;
      v81 = sub_242C578A0(&v223);
      sub_242CA321C(v81, &v214, &qword_27ECFBF90);
      sub_242EB657C(&qword_27ECFBF20, _s21AlertNotificationViewVMa);
      sub_242EB657C(&qword_27ECFBF28, _s21FancyNotificationViewVMa);
      v82 = v202;
      sub_242F041C0();
      sub_242CA321C(v82, v210, &qword_27ECFBEA8);
      swift_storeEnumTagMultiPayload();
      sub_242EB6C7C();
      sub_242EB7170();
      sub_242F041C0();
      sub_242C6D138(v82, &qword_27ECFBEA8);
      v56 = _s21AlertNotificationViewVMa;
      v57 = v73;
    }

    else
    {
      v45 = sub_242C578A0(v241);
      *v8 = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF7F08);
      swift_storeEnumTagMultiPayload();
      v46 = swift_getKeyPath();
      v47 = v207;
      *(v8 + *(v207 + 20)) = v46;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF7F00);
      swift_storeEnumTagMultiPayload();
      v48 = (v8 + *(v47 + 24));
      v49 = *v45;
      v50 = v45[2];
      v48[1] = v45[1];
      v48[2] = v50;
      *v48 = v49;
      v51 = v45[3];
      v52 = v45[4];
      v53 = v45[6];
      v48[5] = v45[5];
      v48[6] = v53;
      v48[3] = v51;
      v48[4] = v52;
      sub_242EB6514(v8, v205, _s23MinimalNotificationViewVMa);
      swift_storeEnumTagMultiPayload();
      v229 = v238;
      v230 = v239;
      v231 = v240;
      v225 = v234;
      v226 = v235;
      v227 = v236;
      v228 = v237;
      v223 = v232;
      v224 = v233;
      v54 = sub_242C578A0(&v223);
      sub_242CA321C(v54, &v214, &qword_27ECF9A60);
      sub_242EB6D38();
      sub_242EB657C(&qword_27ECFBF80, _s23MinimalNotificationViewVMa);
      v55 = v206;
      sub_242F041C0();
      sub_242CA321C(v55, v210, &qword_27ECFBEC0);
      swift_storeEnumTagMultiPayload();
      sub_242EB6C7C();
      sub_242EB7170();
      sub_242F041C0();
      sub_242C6D138(v55, &qword_27ECFBEC0);
      v56 = _s23MinimalNotificationViewVMa;
      v57 = v8;
    }

    return sub_242EB644C(v57, v56);
  }

  if (v44 == 2)
  {
    v58 = sub_242C578A0(v241);
    v59 = v201;
    v60 = *(v201 + 20);
    v229 = v238;
    v230 = v239;
    v231 = v240;
    v225 = v234;
    v226 = v235;
    v227 = v236;
    v228 = v237;
    v223 = v232;
    v224 = v233;
    v61 = sub_242C578A0(&v223);
    sub_242CA321C(v61, &v214, &qword_27ECFBF18);
    v62 = v193;
    sub_242EACBD8(&v193[v60]);
    *v62 = swift_getKeyPath();
    *(v62 + 8) = 0;
    *(v62 + 16) = 0;
    v63 = (v62 + *(v59 + 24));
    v64 = v58[4];
    v65 = v58[5];
    v66 = v58[7];
    v63[6] = v58[6];
    v63[7] = v66;
    v63[4] = v64;
    v63[5] = v65;
    v68 = v58[2];
    v67 = v58[3];
    v69 = v58[1];
    *v63 = *v58;
    v63[1] = v69;
    v63[2] = v68;
    v63[3] = v67;
    sub_242EB6514(v62, v4, _s21FancyNotificationViewVMa);
    swift_storeEnumTagMultiPayload();
    sub_242EB657C(&qword_27ECFBF20, _s21AlertNotificationViewVMa);
    sub_242EB657C(&qword_27ECFBF28, _s21FancyNotificationViewVMa);
    v70 = v202;
    sub_242F041C0();
    sub_242CA321C(v70, v210, &qword_27ECFBEA8);
    swift_storeEnumTagMultiPayload();
    sub_242EB6C7C();
    sub_242EB7170();
    sub_242F041C0();
    sub_242C6D138(v70, &qword_27ECFBEA8);
    v56 = _s21FancyNotificationViewVMa;
    v57 = v62;
    return sub_242EB644C(v57, v56);
  }

  v84 = sub_242C578A0(v241);
  v85 = v84;
  v86 = *(v84 + 72);
  if (v86 == 255)
  {
    v229 = v238;
    v230 = v239;
    v231 = v240;
    v225 = v234;
    v226 = v235;
    v227 = v236;
    v228 = v237;
    v223 = v232;
    v224 = v233;
    v100 = sub_242C578A0(&v223);
    sub_242CA321C(v100, &v214, &qword_27ECFBF98);
    sub_242EAC9EC(v15);
    v101 = v15[*(v181 + 24)];
    sub_242EB644C(v15, type metadata accessor for BannerConfiguration);
    if (v101 == 1)
    {
      v102 = v194;
      v103 = v187;
      sub_242EAC9EC(&v187[*(v194 + 20)]);
      *v103 = swift_getKeyPath();
      *(v103 + 8) = 0;
      *(v103 + 16) = 0;
      v104 = v103 + *(v102 + 24);
      v105 = *(v85 + 80);
      v106 = *(v85 + 96);
      v107 = *(v85 + 112);
      *(v104 + 128) = *(v85 + 128);
      *(v104 + 96) = v106;
      *(v104 + 112) = v107;
      *(v104 + 80) = v105;
      v108 = *(v85 + 16);
      v109 = *(v85 + 32);
      v110 = *(v85 + 64);
      *(v104 + 48) = *(v85 + 48);
      *(v104 + 64) = v110;
      *(v104 + 16) = v108;
      *(v104 + 32) = v109;
      *v104 = *v85;
      sub_242EB6514(v103, v183, type metadata accessor for BannerView);
      swift_storeEnumTagMultiPayload();
      v220 = v238;
      v221 = v239;
      v222 = v240;
      v216 = v234;
      v217 = v235;
      v218 = v236;
      v219 = v237;
      v214 = v232;
      v215 = v233;
      v111 = sub_242C578A0(&v214);
      sub_242CA321C(v111, v213, &qword_27ECFBF98);
      sub_242EB657C(&qword_27ECFBF68, type metadata accessor for BannerView);
      sub_242EB657C(&qword_27ECFBF78, type metadata accessor for NoticeView);
      v112 = v184;
      sub_242F041C0();
      v113 = type metadata accessor for BannerView;
    }

    else
    {
      v145 = swift_getKeyPath();
      v103 = v176;
      *v176 = v145;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF7F00);
      swift_storeEnumTagMultiPayload();
      v146 = swift_getKeyPath();
      v147 = v185;
      v148 = v103 + *(v185 + 20);
      *v148 = v146;
      *(v148 + 8) = 0;
      *(v148 + 16) = 0;
      v149 = v103 + *(v147 + 24);
      v150 = *(v85 + 128);
      v152 = *(v85 + 96);
      v151 = *(v85 + 112);
      *(v149 + 80) = *(v85 + 80);
      *(v149 + 96) = v152;
      *(v149 + 112) = v151;
      *(v149 + 128) = v150;
      v154 = *(v85 + 48);
      v153 = *(v85 + 64);
      v155 = *(v85 + 32);
      *(v149 + 16) = *(v85 + 16);
      *(v149 + 32) = v155;
      *(v149 + 48) = v154;
      *(v149 + 64) = v153;
      *v149 = *v85;
      sub_242EB6514(v103, v183, type metadata accessor for NoticeView);
      swift_storeEnumTagMultiPayload();
      v220 = v238;
      v221 = v239;
      v222 = v240;
      v216 = v234;
      v217 = v235;
      v218 = v236;
      v219 = v237;
      v214 = v232;
      v215 = v233;
      v156 = sub_242C578A0(&v214);
      sub_242CA321C(v156, v213, &qword_27ECFBF98);
      sub_242EB657C(&qword_27ECFBF68, type metadata accessor for BannerView);
      sub_242EB657C(&qword_27ECFBF78, type metadata accessor for NoticeView);
      v112 = v184;
      sub_242F041C0();
      v113 = type metadata accessor for NoticeView;
    }

    sub_242EB644C(v103, v113);
    v157 = &qword_27ECFBED0;
    sub_242CA321C(v112, v197, &qword_27ECFBED0);
    swift_storeEnumTagMultiPayload();
    sub_242EB6DC4();
    sub_242EB7084();
    sub_242F041C0();
    v158 = v112;
LABEL_23:
    sub_242C6D138(v158, v157);
    goto LABEL_24;
  }

  if ((v86 & 1) == 0)
  {
    if (*(v84 + 104) == 1)
    {
      v114 = v186;
      v115 = *(v186 + 20);
      v220 = v238;
      v221 = v239;
      v222 = v240;
      v214 = v232;
      v215 = v233;
      v216 = v234;
      v217 = v235;
      v218 = v236;
      v219 = v237;
      v116 = sub_242C578A0(&v214);
      sub_242CA321C(v116, &v223, &qword_27ECFBF98);
      sub_242EAC800(&v26[v115]);
      *v26 = swift_getKeyPath();
      *(v26 + 1) = 0;
      v26[16] = 0;
      v117 = &v26[*(v114 + 24)];
      v118 = *(v85 + 128);
      v120 = *(v85 + 96);
      v119 = *(v85 + 112);
      *(v117 + 5) = *(v85 + 80);
      *(v117 + 6) = v120;
      *(v117 + 7) = v119;
      *(v117 + 16) = v118;
      v122 = *(v85 + 48);
      v121 = *(v85 + 64);
      v123 = *(v85 + 32);
      *(v117 + 1) = *(v85 + 16);
      *(v117 + 2) = v123;
      *(v117 + 3) = v122;
      *(v117 + 4) = v121;
      *v117 = *v85;
      v229 = v238;
      v230 = v239;
      v231 = v240;
      v225 = v234;
      v226 = v235;
      v227 = v236;
      v228 = v237;
      v223 = v232;
      v224 = v233;
      v124 = sub_242C578A0(&v223);
      sub_242CA321C(v124, v213, &qword_27ECFBF98);
      sub_242F04A70();
      sub_242F03E40();
      v125 = v174;
      sub_242EB64AC(v26, v174, type metadata accessor for UserInteractiveView);
      v126 = (v125 + *(v27 + 36));
      v127 = v213[5];
      v126[4] = v213[4];
      v126[5] = v127;
      v126[6] = v213[6];
      v128 = v213[1];
      *v126 = v213[0];
      v126[1] = v128;
      v129 = v213[3];
      v126[2] = v213[2];
      v126[3] = v129;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF6A18);
      v130 = swift_allocObject();
      *(v130 + 16) = xmmword_242F0A4E0;
      LOBYTE(v114) = sub_242F043C0();
      *(v130 + 32) = v114;
      v131 = sub_242F043D0();
      *(v130 + 33) = v131;
      v132 = sub_242F043F0();
      sub_242F043F0();
      if (sub_242F043F0() != v114)
      {
        v132 = sub_242F043F0();
      }

      sub_242F043F0();
      if (sub_242F043F0() != v131)
      {
        v132 = sub_242F043F0();
      }

      v133 = v180;
      sub_242F03B50();
      v135 = v134;
      v137 = v136;
      v139 = v138;
      v141 = v140;
      v142 = v173;
      sub_242CF6B3C(v125, v173, &qword_27ECFBEF8);
      v143 = v142 + *(v178 + 36);
      *v143 = v132;
      *(v143 + 8) = v135;
      *(v143 + 16) = v137;
      *(v143 + 24) = v139;
      *(v143 + 32) = v141;
      *(v143 + 40) = 0;
      v144 = v175;
      sub_242CF6B3C(v142, v175, &qword_27ECFBF00);
      sub_242CA321C(v144, v179, &qword_27ECFBF00);
      swift_storeEnumTagMultiPayload();
      sub_242EB6F3C();
      sub_242EB657C(&qword_27ECFBF60, type metadata accessor for UserInteractiveView);
      sub_242F041C0();
      sub_242C6D138(v144, &qword_27ECFBF00);
    }

    else
    {
      v159 = v186;
      v160 = *(v186 + 20);
      v220 = v238;
      v221 = v239;
      v222 = v240;
      v214 = v232;
      v215 = v233;
      v216 = v234;
      v217 = v235;
      v218 = v236;
      v219 = v237;
      v161 = sub_242C578A0(&v214);
      sub_242CA321C(v161, &v223, &qword_27ECFBF98);
      sub_242EAFC90(&qword_27ECF7CC0, type metadata accessor for ActionConfiguration, &v23[v160]);
      *v23 = swift_getKeyPath();
      *(v23 + 1) = 0;
      v23[16] = 0;
      v162 = &v23[*(v159 + 24)];
      v163 = *(v85 + 80);
      v164 = *(v85 + 96);
      v165 = *(v85 + 112);
      *(v162 + 16) = *(v85 + 128);
      *(v162 + 6) = v164;
      *(v162 + 7) = v165;
      *(v162 + 5) = v163;
      v166 = *(v85 + 16);
      v167 = *(v85 + 32);
      v168 = *(v85 + 64);
      *(v162 + 3) = *(v85 + 48);
      *(v162 + 4) = v168;
      *(v162 + 1) = v166;
      *(v162 + 2) = v167;
      *v162 = *v85;
      sub_242EB6514(v23, v179, type metadata accessor for UserInteractiveView);
      swift_storeEnumTagMultiPayload();
      v229 = v238;
      v230 = v239;
      v231 = v240;
      v225 = v234;
      v226 = v235;
      v227 = v236;
      v228 = v237;
      v223 = v232;
      v224 = v233;
      v169 = sub_242C578A0(&v223);
      sub_242CA321C(v169, v213, &qword_27ECFBF98);
      sub_242EB6F3C();
      sub_242EB657C(&qword_27ECFBF60, type metadata accessor for UserInteractiveView);
      v133 = v180;
      sub_242F041C0();
      sub_242EB644C(v23, type metadata accessor for UserInteractiveView);
    }

    v157 = &qword_27ECFBF08;
    sub_242CA321C(v133, v190, &qword_27ECFBF08);
    swift_storeEnumTagMultiPayload();
    sub_242EB6E80();
    sub_242EB657C(&qword_27ECFBF68, type metadata accessor for BannerView);
    v170 = v191;
    sub_242F041C0();
    sub_242CA321C(v170, v197, &qword_27ECFBEE8);
    swift_storeEnumTagMultiPayload();
    sub_242EB6DC4();
    sub_242EB7084();
    sub_242F041C0();
    sub_242C6D138(v170, &qword_27ECFBEE8);
    v158 = v133;
    goto LABEL_23;
  }

  v87 = v194;
  v88 = *(v194 + 20);
  v220 = v238;
  v221 = v239;
  v222 = v240;
  v214 = v232;
  v215 = v233;
  v216 = v234;
  v217 = v235;
  v218 = v236;
  v219 = v237;
  v89 = sub_242C578A0(&v214);
  sub_242CA321C(v89, &v223, &qword_27ECFBF98);
  v90 = v187;
  sub_242EAC9EC(&v187[v88]);
  *v90 = swift_getKeyPath();
  *(v90 + 8) = 0;
  *(v90 + 16) = 0;
  v91 = v90 + *(v87 + 24);
  v92 = *(v85 + 80);
  v93 = *(v85 + 96);
  v94 = *(v85 + 112);
  *(v91 + 128) = *(v85 + 128);
  *(v91 + 96) = v93;
  *(v91 + 112) = v94;
  *(v91 + 80) = v92;
  v95 = *(v85 + 16);
  v96 = *(v85 + 32);
  v97 = *(v85 + 64);
  *(v91 + 48) = *(v85 + 48);
  *(v91 + 64) = v97;
  *(v91 + 16) = v95;
  *(v91 + 32) = v96;
  *v91 = *v85;
  sub_242EB6514(v90, v190, type metadata accessor for BannerView);
  swift_storeEnumTagMultiPayload();
  v229 = v238;
  v230 = v239;
  v231 = v240;
  v225 = v234;
  v226 = v235;
  v227 = v236;
  v228 = v237;
  v223 = v232;
  v224 = v233;
  v98 = sub_242C578A0(&v223);
  sub_242CA321C(v98, v213, &qword_27ECFBF98);
  sub_242EB6E80();
  sub_242EB657C(&qword_27ECFBF68, type metadata accessor for BannerView);
  v99 = v191;
  sub_242F041C0();
  sub_242CA321C(v99, v197, &qword_27ECFBEE8);
  swift_storeEnumTagMultiPayload();
  sub_242EB6DC4();
  sub_242EB7084();
  sub_242F041C0();
  sub_242C6D138(v99, &qword_27ECFBEE8);
  sub_242EB644C(v90, type metadata accessor for BannerView);
LABEL_24:
  sub_242CA321C(v34, v205, &qword_27ECFBF10);
  swift_storeEnumTagMultiPayload();
  sub_242EB6D38();
  sub_242EB657C(&qword_27ECFBF80, _s23MinimalNotificationViewVMa);
  v171 = v206;
  sub_242F041C0();
  sub_242CA321C(v171, v210, &qword_27ECFBEC0);
  swift_storeEnumTagMultiPayload();
  sub_242EB6C7C();
  sub_242EB7170();
  sub_242F041C0();
  sub_242E468BC(&v232);
  sub_242C6D138(v171, &qword_27ECFBEC0);
  return sub_242C6D138(v34, &qword_27ECFBF10);
}

uint64_t sub_242EAEA40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_242EACE38(a2);
  v5 = (v2 + *(a1 + 32));
  v7 = *v5;
  v6 = v5[1];
  v8 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFBBA0) + 52));
  *v8 = v7;
  v8[1] = v6;
}

uint64_t sub_242EAEAB0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF6B18);
  v5 = v4 - 8;
  MEMORY[0x28223BE20](v4);
  v7 = &v24 - v6;
  v8 = v2 + *(type metadata accessor for BannerView(0) + 20);
  *v7 = *(v8 + *(type metadata accessor for IconNotificationButtonConfiguration(0) + 32));
  *(v7 + 1) = 0;
  v7[16] = 0;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFBD60);
  sub_242EAECB4(v2, &v7[*(v9 + 44)]);
  v10 = type metadata accessor for BannerConfiguration(0);
  v11 = *(v8 + v10[5]);
  v12 = &v7[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFBD68) + 36)];
  v13 = type metadata accessor for PlatterView();
  _s7SwiftUI10ShapeStyleP012CarPlayAssetB0AA8MaterialVRszrlE07platterH0AFvgZ_0();
  v14 = (v8 + v10[14]);
  v16 = *v14;
  v15 = v14[1];
  v17 = v14[2];
  *v12 = swift_getKeyPath();
  *(v12 + 1) = 0;
  v12[16] = 0;
  *(v12 + 3) = swift_getKeyPath();
  v12[32] = 0;
  *(v12 + 5) = v11;
  v18 = &v12[*(v13 + 32)];
  *v18 = v16;
  *(v18 + 1) = v15;
  *(v18 + 2) = v17;

  v19 = sub_242F04A70();
  v21 = v20;
  v22 = &v12[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF6960) + 36)];
  *v22 = v19;
  v22[1] = v21;
  v7[*(v5 + 44)] = *(v8 + v10[13]);
  sub_242DCDCD4(*(v8 + v10[12]), *(v8 + v10[12] + 8), *(v8 + v10[12] + 16), *(v8 + v10[11]), *(v8 + v10[11] + 8), *(v8 + v10[11] + 16), a1);
  return sub_242C6D138(v7, &qword_27ECF6B18);
}

uint64_t sub_242EAECB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF7FB0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v19 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFBD70);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v19 - v14;
  *v15 = sub_242F04040();
  *(v15 + 1) = 0;
  v15[16] = 0;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFBD78);
  sub_242EAEECC(a1, &v15[*(v16 + 44)]);
  sub_242EAF7E8(v9);
  sub_242CA321C(v15, v12, &qword_27ECFBD70);
  sub_242CA321C(v9, v6, &qword_27ECF7FB0);
  sub_242CA321C(v12, a2, &qword_27ECFBD70);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFBD80);
  sub_242CA321C(v6, a2 + *(v17 + 48), &qword_27ECF7FB0);
  sub_242C6D138(v9, &qword_27ECF7FB0);
  sub_242C6D138(v15, &qword_27ECFBD70);
  sub_242C6D138(v6, &qword_27ECF7FB0);
  return sub_242C6D138(v12, &qword_27ECFBD70);
}

uint64_t sub_242EAEECC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v104 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF8048);
  MEMORY[0x28223BE20](v3);
  v5 = (&v93 - v4);
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFBD88);
  MEMORY[0x28223BE20](v106);
  v108 = &v93 - v6;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFBD90);
  MEMORY[0x28223BE20](v107);
  v8 = &v93 - v7;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF6A80);
  MEMORY[0x28223BE20](v105);
  v10 = &v93 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v93 - v12;
  v100 = type metadata accessor for SymbolView(0);
  MEMORY[0x28223BE20](v100);
  v101 = &v93 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v93 - v16;
  v18 = sub_242F04000();
  v99 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v20 = &v93 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for BannerView(0);
  v22 = a1;
  v23 = a1 + *(v21 + 24);
  v24 = *(v23 + 88);
  if (v24)
  {
    v96 = v8;
    v97 = v22;
    v98 = v3;
    v109 = *(v23 + 80);
    v25 = *(v23 + 96);
    v27 = *v22;
    v26 = *(v22 + 8);
    v28 = *(v22 + 16) == 1;
    v95 = v13;
    v102 = v17;
    v94 = v10;
    v103 = v25;
    if (v28)
    {
      v110 = v27;
      v111 = v26;
      v29 = v24;
      sub_242CD5460(v109, v24);
      sub_242EB6440();
    }

    else
    {
      v29 = v24;
      sub_242CD5460(v109, v24);
      sub_242EB6440();
      sub_242F05710();
      v30 = sub_242F04360();
      sub_242F03930();

      sub_242F03FF0();
      swift_getAtKeyPath();
      sub_242DD16BC();
      (*(v99 + 8))(v20, v18);
      v27 = v110;
    }

    v99 = v29;
    v27(&v112, v109, v29);

    v31 = v112;
    if (v112)
    {
      v32 = v113;
      v33 = v97 + *(v21 + 20);
      v34 = type metadata accessor for BannerConfiguration(0);
      v35 = v100;
      v36 = v102;
      sub_242EB6514(v33 + *(v34 + 28), &v102[*(v100 + 24)], type metadata accessor for NotificationSymbolConfiguration);
      *v36 = swift_getKeyPath();
      *(v36 + 8) = 0;
      *(v36 + 16) = 0;
      *(v36 + 24) = v31;
      *(v36 + 32) = v32;
      *(v36 + *(v35 + 28)) = v103;
      v37 = *v23;
      v38 = *(v23 + 8);
      v39 = *(v23 + 16);
      v40 = *(v23 + 24);
      v41 = v33 + *(v34 + 36);
      LOBYTE(v33) = *(v23 + 32);
      v42 = type metadata accessor for TextContentView(0);
      v43 = v95;
      sub_242D575E8(v41, v95 + *(v42 + 24));
      *v43 = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0BA0);
      swift_storeEnumTagMultiPayload();
      v44 = v43 + *(v42 + 20);
      *v44 = v37;
      *(v44 + 1) = v38;
      *(v44 + 2) = v39;
      *(v44 + 3) = v40;
      v44[32] = v33;

      sub_242CD52B8(v37, v38, v39, v40, v33);
      LOBYTE(v37) = sub_242F043C0();
      sub_242F03B50();
      v46 = v45;
      v48 = v47;
      v50 = v49;
      v52 = v51;
      v53 = v43 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF6A88) + 36);
      *v53 = v37;
      *(v53 + 1) = v46;
      *(v53 + 2) = v48;
      *(v53 + 3) = v50;
      *(v53 + 4) = v52;
      v53[40] = 0;
      LOBYTE(v37) = sub_242F043D0();
      sub_242F03B50();
      v54 = v43 + *(v105 + 36);
      *v54 = v37;
      *(v54 + 1) = v55;
      *(v54 + 2) = v56;
      *(v54 + 3) = v57;
      *(v54 + 4) = v58;
      v54[40] = 0;
      v59 = v101;
      v60 = v102;
      sub_242EB6514(v102, v101, type metadata accessor for SymbolView);
      v61 = v94;
      sub_242CA321C(v43, v94, &qword_27ECF6A80);
      v62 = v96;
      sub_242EB6514(v59, v96, type metadata accessor for SymbolView);
      v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF6AB0);
      sub_242CA321C(v61, v62 + *(v63 + 48), &qword_27ECF6A80);
      sub_242C6D138(v61, &qword_27ECF6A80);
      sub_242EB644C(v59, type metadata accessor for SymbolView);
      sub_242CA321C(v62, v108, &qword_27ECFBD90);
      swift_storeEnumTagMultiPayload();
      sub_242C7E000(&qword_27ECFBD98, &qword_27ECFBD90);
      sub_242EB65C4();
      sub_242F041C0();
      sub_242CD54A4(v109, v99);
      sub_242C6D138(v62, &qword_27ECFBD90);
      sub_242C6D138(v43, &qword_27ECF6A80);
      return sub_242EB644C(v60, type metadata accessor for SymbolView);
    }

    sub_242CD54A4(v109, v99);
    v22 = v97;
    v3 = v98;
  }

  v65 = *v23;
  v66 = *(v23 + 8);
  v67 = *(v23 + 16);
  v68 = *(v23 + 24);
  v69 = v22 + *(v21 + 20);
  v70 = *(v23 + 32);
  v71 = v69 + *(type metadata accessor for BannerConfiguration(0) + 36);
  v72 = type metadata accessor for TextContentView(0);
  sub_242D575E8(v71, v5 + *(v72 + 24));
  *v5 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0BA0);
  swift_storeEnumTagMultiPayload();
  v73 = v5 + *(v72 + 20);
  *v73 = v65;
  *(v73 + 1) = v66;
  *(v73 + 2) = v67;
  *(v73 + 3) = v68;
  v73[32] = v70;
  sub_242CD52B8(v65, v66, v67, v68, v70);
  LOBYTE(v65) = sub_242F043C0();
  sub_242F03B50();
  v75 = v74;
  v77 = v76;
  v79 = v78;
  v81 = v80;
  v82 = v5 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF6A88) + 36);
  *v82 = v65;
  *(v82 + 1) = v75;
  *(v82 + 2) = v77;
  *(v82 + 3) = v79;
  *(v82 + 4) = v81;
  v82[40] = 0;
  LOBYTE(v65) = sub_242F043D0();
  sub_242F03B50();
  v83 = v5 + *(v105 + 36);
  *v83 = v65;
  *(v83 + 1) = v84;
  *(v83 + 2) = v85;
  *(v83 + 3) = v86;
  *(v83 + 4) = v87;
  v83[40] = 0;
  LOBYTE(v65) = sub_242F043E0();
  sub_242F03B50();
  v88 = v5 + *(v3 + 36);
  *v88 = v65;
  *(v88 + 1) = v89;
  *(v88 + 2) = v90;
  *(v88 + 3) = v91;
  *(v88 + 4) = v92;
  v88[40] = 0;
  sub_242CA321C(v5, v108, &qword_27ECF8048);
  swift_storeEnumTagMultiPayload();
  sub_242C7E000(&qword_27ECFBD98, &qword_27ECFBD90);
  sub_242EB65C4();
  sub_242F041C0();
  return sub_242C6D138(v5, &qword_27ECF8048);
}

uint64_t sub_242EAF7E8@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF7FD0);
  MEMORY[0x28223BE20](v3);
  v5 = (v30 - v4);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF7FD8);
  MEMORY[0x28223BE20](v6);
  v8 = v30 - v7;
  v9 = type metadata accessor for IconNotificationButton(0);
  MEMORY[0x28223BE20](v9);
  v11 = (v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = type metadata accessor for BannerView(0);
  v13 = v1 + *(v12 + 24);
  v14 = *(v13 + 72);
  if (v14 == 255 || (v14 & 1) == 0)
  {
    v22 = v1 + *(v12 + 20);
    if (*(v22 + *(type metadata accessor for BannerConfiguration(0) + 24)) == 1)
    {
      v23 = sub_242F047F0();
      v24 = *(v9 + 24);
      if (qword_27ECEF6C0 != -1)
      {
        swift_once();
      }

      v25 = type metadata accessor for IconNotificationButtonConfiguration(0);
      v26 = __swift_project_value_buffer(v25, qword_27ECF7C98);
      sub_242EB6514(v26, v5 + v24, type metadata accessor for IconNotificationButtonConfiguration);
      v5[1] = 0;
      v5[2] = 0;
      *v5 = v23;
      sub_242CA321C(v5, v8, &qword_27ECF7FD0);
      swift_storeEnumTagMultiPayload();
      sub_242EB657C(&qword_27ECF7FE8, type metadata accessor for IconNotificationButton);
      sub_242E07700();
      sub_242F041C0();
      sub_242C6D138(v5, &qword_27ECF7FD0);
      v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF7FE0);
      return (*(*(v27 - 8) + 56))(a1, 0, 1, v27);
    }

    else
    {
      v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF7FE0);
      v29 = *(*(v28 - 8) + 56);

      return v29(a1, 1, 1, v28);
    }
  }

  else
  {
    v30[0] = a1;
    v30[1] = v3;
    v16 = *(v13 + 56);
    v15 = *(v13 + 64);
    v17 = v12;
    sub_242CD53A8(*(v13 + 40), *(v13 + 48), v16, v15, 1);
    v18 = sub_242F047F0();
    sub_242EB6514(v1 + *(v17 + 20), v11 + *(v9 + 24), type metadata accessor for IconNotificationButtonConfiguration);
    *v11 = v18;
    v11[1] = v16;
    v11[2] = v15;
    sub_242EB6514(v11, v8, type metadata accessor for IconNotificationButton);
    swift_storeEnumTagMultiPayload();
    sub_242EB657C(&qword_27ECF7FE8, type metadata accessor for IconNotificationButton);
    sub_242E07700();
    v19 = v30[0];
    sub_242F041C0();
    sub_242EB644C(v11, type metadata accessor for IconNotificationButton);
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF7FE0);
    return (*(*(v20 - 8) + 56))(v19, 0, 1, v20);
  }
}

uint64_t sub_242EAFC90@<X0>(uint64_t *a1@<X0>, uint64_t (*a2)(void)@<X2>, uint64_t a3@<X8>)
{
  v6 = v3;
  v8 = sub_242F04000();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(a1);
  MEMORY[0x28223BE20](v12);
  v14 = &v17 - v13;
  sub_242CA321C(v6, &v17 - v13, a1);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_242EB64AC(v14, a3, a2);
  }

  sub_242F05710();
  v16 = sub_242F04360();
  sub_242F03930();

  sub_242F03FF0();
  swift_getAtKeyPath();

  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_242EAFE64@<X0>(uint64_t a1@<X8>)
{
  v39 = a1;
  v2 = type metadata accessor for NoticeConfiguration(0) - 8;
  v38 = v2;
  MEMORY[0x28223BE20](v2);
  v4 = &v33[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5);
  v7 = &v33[-v6];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF6B08);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v33[-v9];
  sub_242EB01D0(&v33[-v9]);
  v36 = v1;
  sub_242EAFC90(&qword_27ECF7F00, type metadata accessor for NoticeConfiguration, v7);
  v11 = (v7 + *(v2 + 48));
  v12 = v11[1];
  v35 = *v11;
  v34 = *(v11 + 16);
  sub_242EB644C(v7, type metadata accessor for NoticeConfiguration);
  sub_242EAFC90(&qword_27ECF7F00, type metadata accessor for NoticeConfiguration, v4);
  v13 = &v4[*(v2 + 44)];
  v14 = *v13;
  v15 = v13[1];
  LOBYTE(v2) = *(v13 + 16);
  v37 = type metadata accessor for NoticeConfiguration;
  sub_242EB644C(v4, type metadata accessor for NoticeConfiguration);
  v16 = v39;
  sub_242DCDD18(v35, v12, v34, v14, v15, v2, v39);
  sub_242C6D138(v10, &qword_27ECF6B08);
  sub_242EAFC90(&qword_27ECF7F00, type metadata accessor for NoticeConfiguration, v7);
  v17 = *v7;
  sub_242EB644C(v7, type metadata accessor for NoticeConfiguration);
  v18 = v16 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFBD48) + 36);
  v19 = type metadata accessor for PlatterView();
  _s7SwiftUI10ShapeStyleP012CarPlayAssetB0AA8MaterialVRszrlE07platterH0AFvgZ_0();
  sub_242EAFC90(&qword_27ECF7F00, type metadata accessor for NoticeConfiguration, v4);
  v20 = v38;
  v21 = &v4[*(v38 + 56)];
  v22 = *v21;
  v23 = v21[1];
  v24 = v21[2];

  v25 = v4;
  v26 = v37;
  sub_242EB644C(v25, v37);
  *v18 = swift_getKeyPath();
  *(v18 + 8) = 0;
  *(v18 + 16) = 0;
  *(v18 + 24) = swift_getKeyPath();
  *(v18 + 32) = 0;
  *(v18 + 40) = v17;
  v27 = (v18 + *(v19 + 32));
  *v27 = v22;
  v27[1] = v23;
  v27[2] = v24;
  v28 = sub_242F04A70();
  v30 = v29;
  v31 = (v18 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF6960) + 36));
  *v31 = v28;
  v31[1] = v30;
  sub_242EAFC90(&qword_27ECF7F00, type metadata accessor for NoticeConfiguration, v7);
  LOBYTE(v28) = *(v7 + *(v20 + 52));
  sub_242EB644C(v7, v26);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFBD50);
  *(v39 + *(result + 36)) = v28;
  return result;
}

uint64_t sub_242EB01D0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v52 = type metadata accessor for NoticeConfiguration(0);
  MEMORY[0x28223BE20](v52);
  v5 = &v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF8060);
  MEMORY[0x28223BE20](v55);
  v7 = (&v47 - v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFBD58);
  MEMORY[0x28223BE20](v8);
  v54 = &v47 - v9;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF8088);
  MEMORY[0x28223BE20](v53);
  v11 = &v47 - v10;
  v12 = sub_242F04000();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for NoticeView(0);
  v17 = (v2 + *(v16 + 24));
  v18 = v17[11];
  v56 = a1;
  if (!v18)
  {
    goto LABEL_8;
  }

  v50 = v13;
  v57 = v17[10];
  v19 = v17[12];
  v20 = v2 + *(v16 + 20);
  v22 = *v20;
  v21 = *(v20 + 8);
  v23 = *(v20 + 16) == 1;
  v51 = v19;
  if (v23)
  {
    v60[0] = v22;
    v60[1] = v21;
    sub_242CD5460(v57, v18);
    sub_242EB6440();
  }

  else
  {
    sub_242CD5460(v57, v18);
    sub_242EB6440();
    sub_242F05710();
    v48 = v5;
    v24 = sub_242F04360();
    v49 = v2;
    v25 = v24;
    v5 = v48;
    sub_242F03930();

    sub_242F03FF0();
    swift_getAtKeyPath();
    sub_242DD16BC();
    (*(v50 + 8))(v15, v12);
    v22 = v60[0];
  }

  v22(&v58, v57, v18);

  if (!v58)
  {
    sub_242CD54A4(v57, v18);
LABEL_8:
    sub_242EB0C04(v7);
    v29 = sub_242F043E0();
    sub_242EAFC90(&qword_27ECF7F00, type metadata accessor for NoticeConfiguration, v5);
    v30 = v52;
    sub_242D575E8(&v5[*(v52 + 28)], v60);
    sub_242EB644C(v5, type metadata accessor for NoticeConfiguration);
    sub_242D91AA0(v60);
    sub_242F03B50();
    v32 = v31;
    v34 = v33;
    v36 = v35;
    v38 = v37;
    v39 = v7 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF80B8) + 36);
    *v39 = v29;
    *(v39 + 1) = v32;
    *(v39 + 2) = v34;
    *(v39 + 3) = v36;
    *(v39 + 4) = v38;
    v39[40] = 0;
    v40 = sub_242F04400();
    sub_242EAFC90(&qword_27ECF7F00, type metadata accessor for NoticeConfiguration, v5);
    sub_242D575E8(&v5[*(v30 + 28)], v60);
    sub_242EB644C(v5, type metadata accessor for NoticeConfiguration);
    sub_242D91AA0(v60);
    sub_242F03B50();
    v41 = v7 + *(v55 + 36);
    *v41 = v40;
    *(v41 + 1) = v42;
    *(v41 + 2) = v43;
    *(v41 + 3) = v44;
    *(v41 + 4) = v45;
    v41[40] = 0;
    v27 = &qword_27ECF8060;
    sub_242CA321C(v7, v54, &qword_27ECF8060);
    swift_storeEnumTagMultiPayload();
    sub_242E07958();
    sub_242EB63B4();
    sub_242F041C0();
    v28 = v7;
    return sub_242C6D138(v28, v27);
  }

  LOBYTE(v60[0]) = v59;

  sub_242EB0848(v26, v60, v11);

  v27 = &qword_27ECF8088;
  sub_242CA321C(v11, v54, &qword_27ECF8088);
  swift_storeEnumTagMultiPayload();
  sub_242E07958();
  sub_242EB63B4();
  sub_242F041C0();
  sub_242CD54A4(v57, v18);

  v28 = v11;
  return sub_242C6D138(v28, v27);
}

uint64_t sub_242EB0848@<X0>(uint64_t a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t a3@<X8>)
{
  v7 = type metadata accessor for NotificationSymbolConfiguration(0);
  MEMORY[0x28223BE20](v7);
  v38 = &v35[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v9);
  v11 = &v35[-v10];
  v12 = type metadata accessor for NoticeConfiguration(0);
  MEMORY[0x28223BE20](v12);
  v14 = &v35[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v15);
  v17 = &v35[-v16];
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF8098);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v35[-v19];
  LODWORD(a2) = *a2;
  *v20 = sub_242F04040();
  *(v20 + 1) = 0;
  v20[16] = 0;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF8100);
  sub_242EB0F44(a1, a2, v3, &v20[*(v21 + 44)]);
  v22 = sub_242F04400();
  sub_242EAFC90(&qword_27ECF7F00, type metadata accessor for NoticeConfiguration, v17);
  sub_242D575E8(&v17[*(v12 + 28)], v39);
  sub_242EB644C(v17, type metadata accessor for NoticeConfiguration);
  LOBYTE(a2) = v39[144];
  sub_242D91AA0(v39);
  if ((a2 & 1) == 0)
  {
    sub_242EAFC90(&qword_27ECF7F00, type metadata accessor for NoticeConfiguration, v17);
    v23 = *(v12 + 20);
    v36 = v22;
    sub_242EB6514(&v17[v23], v11, type metadata accessor for NotificationSymbolConfiguration);
    v37 = a3;
    sub_242EB644C(v17, type metadata accessor for NoticeConfiguration);
    sub_242EB644C(v11, type metadata accessor for NotificationSymbolConfiguration);
    sub_242EAFC90(&qword_27ECF7F00, type metadata accessor for NoticeConfiguration, v14);
    v24 = v38;
    LOBYTE(v22) = v36;
    sub_242EB6514(&v14[*(v12 + 20)], v38, type metadata accessor for NotificationSymbolConfiguration);
    a3 = v37;
    sub_242EB644C(v14, type metadata accessor for NoticeConfiguration);
    sub_242EB644C(v24, type metadata accessor for NotificationSymbolConfiguration);
  }

  sub_242F03B50();
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  sub_242CF6B3C(v20, a3, &qword_27ECF8098);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF8088);
  v34 = a3 + *(result + 36);
  *v34 = v22;
  *(v34 + 8) = v26;
  *(v34 + 16) = v28;
  *(v34 + 24) = v30;
  *(v34 + 32) = v32;
  *(v34 + 40) = 0;
  return result;
}

uint64_t sub_242EB0C04@<X0>(uint64_t *a1@<X8>)
{
  v43 = a1;
  v2 = type metadata accessor for NoticeConfiguration(0);
  v3 = v2 - 8;
  MEMORY[0x28223BE20](v2);
  v5 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = v1 + *(type metadata accessor for NoticeView(0) + 24);
  v7 = *v6;
  v8 = *(v6 + 8);
  v9 = *(v6 + 16);
  v10 = *(v6 + 24);
  v11 = *(v6 + 32);
  sub_242CD52B8(*v6, v8, v9, v10, v11);
  v42 = type metadata accessor for NoticeConfiguration;
  sub_242EAFC90(&qword_27ECF7F00, type metadata accessor for NoticeConfiguration, v5);
  v12 = *(v3 + 36);
  v13 = type metadata accessor for TextContentView(0);
  v14 = &v5[v12];
  v15 = v43;
  sub_242D575E8(v14, v43 + *(v13 + 24));
  v41 = type metadata accessor for NoticeConfiguration;
  sub_242EB644C(v5, type metadata accessor for NoticeConfiguration);
  *v15 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0BA0);
  swift_storeEnumTagMultiPayload();
  v16 = v15 + *(v13 + 20);
  *v16 = v7;
  *(v16 + 1) = v8;
  *(v16 + 2) = v9;
  *(v16 + 3) = v10;
  v16[32] = v11;
  v17 = v42;
  sub_242EAFC90(&qword_27ECF7F00, v42, v5);
  sub_242D575E8(&v5[*(v3 + 36)], v44);
  v18 = v41;
  sub_242EB644C(v5, v41);
  v19 = v45;
  sub_242D91AA0(v44);
  KeyPath = swift_getKeyPath();
  v21 = (v15 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF80E8) + 36));
  *v21 = KeyPath;
  v21[1] = v19;
  LOBYTE(KeyPath) = sub_242F043C0();
  sub_242EAFC90(&qword_27ECF7F00, v17, v5);
  sub_242D575E8(&v5[*(v3 + 36)], v44);
  sub_242EB644C(v5, v18);
  sub_242D91AA0(v44);
  sub_242F03B50();
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v30 = v15 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF80D8) + 36);
  *v30 = KeyPath;
  *(v30 + 1) = v23;
  *(v30 + 2) = v25;
  *(v30 + 3) = v27;
  *(v30 + 4) = v29;
  v30[40] = 0;
  LOBYTE(KeyPath) = sub_242F043D0();
  sub_242EAFC90(&qword_27ECF7F00, v17, v5);
  sub_242D575E8(&v5[*(v3 + 36)], v44);
  sub_242EB644C(v5, v18);
  sub_242D91AA0(v44);
  sub_242F03B50();
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v38 = v37;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF80C8);
  v40 = v15 + *(result + 36);
  *v40 = KeyPath;
  *(v40 + 1) = v32;
  *(v40 + 2) = v34;
  *(v40 + 3) = v36;
  *(v40 + 4) = v38;
  v40[40] = 0;
  return result;
}

uint64_t sub_242EB0F44@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  LODWORD(v57) = a2;
  *&v58 = a1;
  v65 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF80C8);
  MEMORY[0x28223BE20](v5 - 8);
  v62 = (&v55 - v6);
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF80B8);
  MEMORY[0x28223BE20](v61);
  v64 = &v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v60 = &v55 - v9;
  MEMORY[0x28223BE20](v10);
  v63 = &v55 - v11;
  v12 = type metadata accessor for NotificationSymbolConfiguration(0);
  MEMORY[0x28223BE20](v12 - 8);
  v56 = &v55 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v55 - v15;
  v17 = type metadata accessor for NoticeConfiguration(0);
  MEMORY[0x28223BE20](v17);
  v19 = &v55 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = &v55 - v21;
  MEMORY[0x28223BE20](v23);
  v25 = &v55 - v24;
  v26 = type metadata accessor for SymbolView(0);
  MEMORY[0x28223BE20](v26);
  v59 = &v55 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v30 = &v55 - v29;
  MEMORY[0x28223BE20](v31);
  v33 = &v55 - v32;
  sub_242EAFC90(&qword_27ECF7F00, type metadata accessor for NoticeConfiguration, v25);
  sub_242EB6514(&v25[*(v17 + 20)], v16, type metadata accessor for NotificationSymbolConfiguration);
  sub_242EB644C(v25, type metadata accessor for NoticeConfiguration);
  v34 = a3 + *(type metadata accessor for NoticeView(0) + 24);
  if (*(v34 + 88))
  {
    v35 = *(v34 + 96);
  }

  else
  {
    v35 = 0;
  }

  *v30 = swift_getKeyPath();
  *(v30 + 1) = 0;
  v30[16] = 0;
  *(v30 + 3) = v58;
  v30[32] = v57;
  sub_242EB64AC(v16, &v30[*(v26 + 24)], type metadata accessor for NotificationSymbolConfiguration);
  *&v30[*(v26 + 28)] = v35;
  sub_242EB64AC(v30, v33, type metadata accessor for SymbolView);

  v36 = v62;
  sub_242EB0C04(v62);
  v37 = sub_242F04400();
  sub_242EAFC90(&qword_27ECF7F00, type metadata accessor for NoticeConfiguration, v22);
  sub_242D575E8(&v22[*(v17 + 28)], v66);
  sub_242EB644C(v22, type metadata accessor for NoticeConfiguration);
  v38 = v66[144];
  sub_242D91AA0(v66);
  if (v38 == 1)
  {
    sub_242EAFC90(&qword_27ECF7F00, type metadata accessor for NoticeConfiguration, v22);
    sub_242D575E8(&v22[*(v17 + 28)], v66);
    sub_242EB644C(v22, type metadata accessor for NoticeConfiguration);
    sub_242D91AA0(v66);
LABEL_8:
    sub_242F03B50();
    v42 = 0;
    *(&v45 + 1) = v44;
    v57 = v45;
    *(&v41 + 1) = v46;
    v43 = &v68;
    goto LABEL_9;
  }

  sub_242EAFC90(&qword_27ECF7F00, type metadata accessor for NoticeConfiguration, v19);
  v39 = v56;
  sub_242EB6514(&v19[*(v17 + 20)], v56, type metadata accessor for NotificationSymbolConfiguration);
  sub_242EB644C(v19, type metadata accessor for NoticeConfiguration);
  v40 = *(v39 + 24);
  sub_242EB644C(v39, type metadata accessor for NotificationSymbolConfiguration);
  if ((v40 & 1) == 0)
  {
    goto LABEL_8;
  }

  v41 = 0uLL;
  v58 = 0u;
  v42 = 1;
  v43 = &v67;
LABEL_9:
  *(v43 - 16) = v41;
  v47 = v60;
  sub_242CF6B3C(v36, v60, &qword_27ECF80C8);
  v48 = v47 + *(v61 + 36);
  *v48 = v37;
  *(v48 + 24) = v57;
  *(v48 + 8) = v58;
  *(v48 + 40) = v42;
  v49 = v63;
  sub_242CF6B3C(v47, v63, &qword_27ECF80B8);
  v50 = v59;
  sub_242EB6514(v33, v59, type metadata accessor for SymbolView);
  v51 = v64;
  sub_242CA321C(v49, v64, &qword_27ECF80B8);
  v52 = v65;
  sub_242EB6514(v50, v65, type metadata accessor for SymbolView);
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF8108);
  sub_242CA321C(v51, v52 + *(v53 + 48), &qword_27ECF80B8);
  sub_242C6D138(v49, &qword_27ECF80B8);
  sub_242EB644C(v33, type metadata accessor for SymbolView);
  sub_242C6D138(v51, &qword_27ECF80B8);
  return sub_242EB644C(v50, type metadata accessor for SymbolView);
}

uint64_t sub_242EB166C@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF6B28);
  v4 = v3 - 8;
  MEMORY[0x28223BE20](v3);
  v6 = &v25 - v5;
  sub_242EB186C();
  v7 = v1 + *(type metadata accessor for UserInteractiveView(0) + 20);
  v8 = *(v7 + 72);
  v9 = type metadata accessor for ActionConfiguration(0);
  v10 = v9[14];
  v11 = &v6[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFBDB8) + 36)];
  v12 = type metadata accessor for PlatterView();
  v13 = *(v12 + 28);
  v14 = sub_242F04A30();
  (*(*(v14 - 8) + 16))(&v11[v13], v7 + v10, v14);
  v15 = (v7 + v9[15]);
  v17 = *v15;
  v16 = v15[1];
  v18 = v15[2];
  *v11 = swift_getKeyPath();
  *(v11 + 1) = 0;
  v11[16] = 0;
  *(v11 + 3) = swift_getKeyPath();
  v11[32] = 0;
  *(v11 + 5) = v8;
  v19 = &v11[*(v12 + 32)];
  *v19 = v17;
  *(v19 + 1) = v16;
  *(v19 + 2) = v18;

  v20 = sub_242F04A70();
  v22 = v21;
  v23 = &v11[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF6960) + 36)];
  *v23 = v20;
  v23[1] = v22;
  v6[*(v4 + 44)] = *(v7 + v9[13]);
  sub_242DCDD5C(*(v7 + v9[12]), *(v7 + v9[12] + 8), *(v7 + v9[12] + 16), *(v7 + v9[11]), *(v7 + v9[11] + 8), *(v7 + v9[11] + 16), a1);
  return sub_242C6D138(v6, &qword_27ECF6B28);
}

uint64_t sub_242EB186C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFBDC0);
  MEMORY[0x28223BE20](v2);
  v4 = &v44 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v44 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFBDC8);
  MEMORY[0x28223BE20](v8);
  v49 = &v44 - v9;
  v10 = sub_242F04000();
  v45 = *(v10 - 8);
  v46 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFBDD0);
  MEMORY[0x28223BE20](v48);
  v14 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v44 - v16;
  v18 = type metadata accessor for UserInteractiveView(0);
  if (*(v1 + *(v18 + 20) + 64) == 1)
  {
    v47 = v2;
    v20 = *v1;
    v19 = *(v1 + 8);
    if (*(v1 + 16) == 1)
    {
      v50 = *v1;
      v51 = v19;
    }

    else
    {

      sub_242F05710();
      v24 = sub_242F04360();
      v44 = v8;
      v25 = v24;
      sub_242F03930();

      sub_242F03FF0();
      swift_getAtKeyPath();
      sub_242DD16BC();
      (*(v45 + 8))(v12, v46);
      v20 = v50;
    }

    v26 = v1 + *(v18 + 24);
    v27 = *(v26 + 88);
    if (v27)
    {
      v28 = *(v26 + 80);
    }

    else
    {
      v28 = 0;
    }

    v20(&v52, v28, v27);

    v34 = v52;
    v35 = v53;
    *v14 = sub_242F04090();
    *(v14 + 1) = 0;
    v14[16] = 0;
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFBDF0);
    sub_242EB1ECC(v34, v35, v1, &v14[*(v36 + 44)]);

    v37 = &qword_27ECFBDD0;
    sub_242CF6B3C(v14, v17, &qword_27ECFBDD0);
    sub_242CA321C(v17, v49, &qword_27ECFBDD0);
    swift_storeEnumTagMultiPayload();
    sub_242C7E000(&qword_27ECFBDE0, &qword_27ECFBDD0);
    sub_242C7E000(&qword_27ECFBDE8, &qword_27ECFBDC0);
    sub_242F041C0();
    v38 = v17;
  }

  else
  {
    v22 = *v1;
    v21 = *(v1 + 8);
    v23 = *(v1 + 16);
    v44 = v7;
    if (v23 == 1)
    {
      v50 = v22;
      v51 = v21;
    }

    else
    {

      sub_242F05710();
      v29 = sub_242F04360();
      v47 = v2;
      v30 = v29;
      sub_242F03930();

      sub_242F03FF0();
      swift_getAtKeyPath();
      sub_242DD16BC();
      (*(v45 + 8))(v12, v46);
      v22 = v50;
    }

    v31 = v1 + *(v18 + 24);
    v32 = *(v31 + 88);
    if (v32)
    {
      v33 = *(v31 + 80);
    }

    else
    {
      v33 = 0;
    }

    v22(&v52, v33, v32);

    v39 = v52;
    v40 = v53;
    *v4 = sub_242F04080();
    *(v4 + 1) = 0;
    v4[16] = 0;
    v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFBDD8);
    sub_242EB2E14(v39, v40, v1, &v4[*(v41 + 44)]);

    v37 = &qword_27ECFBDC0;
    v42 = v44;
    sub_242CF6B3C(v4, v44, &qword_27ECFBDC0);
    sub_242CA321C(v42, v49, &qword_27ECFBDC0);
    swift_storeEnumTagMultiPayload();
    sub_242C7E000(&qword_27ECFBDE0, &qword_27ECFBDD0);
    sub_242C7E000(&qword_27ECFBDE8, &qword_27ECFBDC0);
    sub_242F041C0();
    v38 = v42;
  }

  return sub_242C6D138(v38, v37);
}

uint64_t sub_242EB1ECC@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFBDF8);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v23 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFADC8);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v23 - v18;
  *v19 = sub_242F04040();
  *(v19 + 1) = 0;
  v19[16] = 0;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFADD0);
  sub_242EB20FC(a1, a2, a3, &v19[*(v20 + 44)]);
  sub_242EB286C(v13);
  sub_242CA321C(v19, v16, &qword_27ECFADC8);
  sub_242CA321C(v13, v10, &qword_27ECFBDF8);
  sub_242CA321C(v16, a4, &qword_27ECFADC8);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFBE00);
  sub_242CA321C(v10, a4 + *(v21 + 48), &qword_27ECFBDF8);
  sub_242C6D138(v13, &qword_27ECFBDF8);
  sub_242C6D138(v19, &qword_27ECFADC8);
  sub_242C6D138(v10, &qword_27ECFBDF8);
  return sub_242C6D138(v16, &qword_27ECFADC8);
}

uint64_t sub_242EB20FC@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v94 = a2;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF6A88);
  MEMORY[0x28223BE20](v95);
  v8 = &v93[-v7];
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF6A80);
  MEMORY[0x28223BE20](v97);
  v100 = &v93[-v9];
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF8048);
  MEMORY[0x28223BE20](v98);
  v102 = &v93[-v10];
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFAE28);
  MEMORY[0x28223BE20](v101);
  v104 = &v93[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v12);
  v99 = &v93[-v13];
  MEMORY[0x28223BE20](v14);
  v103 = &v93[-v15];
  v16 = type metadata accessor for NotificationSymbolConfiguration(0);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v93[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v19 = type metadata accessor for SymbolView(0);
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v22 = &v93[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v23);
  v25 = &v93[-v24];
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFAE30);
  MEMORY[0x28223BE20](v26 - 8);
  v96 = &v93[-((v27 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v29 = MEMORY[0x28223BE20](v28);
  v30 = a1;
  v105 = a4;
  v106 = &v93[-v31];
  if (a1)
  {
    v32 = type metadata accessor for UserInteractiveView(0);
    v33 = a3 + *(v32 + 20);
    v34 = type metadata accessor for ActionConfiguration(0);
    sub_242EB6514(v33 + *(v34 + 28), v18, type metadata accessor for NotificationSymbolConfiguration);
    v35 = a3 + *(v32 + 24);
    if (*(v35 + 88))
    {
      v36 = *(v35 + 96);
    }

    else
    {
      v36 = 0;
    }

    *v22 = swift_getKeyPath();
    *(v22 + 1) = 0;
    v22[16] = 0;
    *(v22 + 3) = v30;
    v22[32] = v94;
    sub_242EB64AC(v18, &v22[*(v19 + 24)], type metadata accessor for NotificationSymbolConfiguration);
    *&v22[*(v19 + 28)] = v36;
    sub_242EB64AC(v22, v25, type metadata accessor for SymbolView);
    sub_242EB64AC(v25, v106, type metadata accessor for SymbolView);
    (*(v20 + 56))(v37);
  }

  else
  {
    (*(v20 + 56))(v29);
  }

  v38 = type metadata accessor for UserInteractiveView(0);
  v39 = a3 + *(v38 + 24);
  v40 = *v39;
  v41 = *(v39 + 8);
  v42 = *(v39 + 16);
  v43 = *(v39 + 24);
  v44 = a3 + *(v38 + 20);
  v45 = *(v39 + 32);
  v46 = v44 + *(type metadata accessor for ActionConfiguration(0) + 36);
  v47 = type metadata accessor for TextContentView(0);
  sub_242D575E8(v46, v8 + *(v47 + 24));
  *v8 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0BA0);
  swift_storeEnumTagMultiPayload();
  v48 = v8 + *(v47 + 20);
  *v48 = v40;
  *(v48 + 1) = v41;
  *(v48 + 2) = v42;
  *(v48 + 3) = v43;
  v48[32] = v45;
  sub_242CD52B8(v40, v41, v42, v43, v45);

  LOBYTE(v40) = sub_242F04400();
  sub_242F03B50();
  v49 = v8 + *(v95 + 36);
  *v49 = v40;
  *(v49 + 1) = v50;
  *(v49 + 2) = v51;
  *(v49 + 3) = v52;
  *(v49 + 4) = v53;
  v49[40] = 0;
  LOBYTE(v40) = sub_242F043E0();
  sub_242F03B50();
  v55 = v54;
  v57 = v56;
  v59 = v58;
  v61 = v60;
  v62 = v100;
  sub_242CF6B3C(v8, v100, &qword_27ECF6A88);
  v63 = &v62[*(v97 + 36)];
  *v63 = v40;
  *(v63 + 1) = v55;
  *(v63 + 2) = v57;
  *(v63 + 3) = v59;
  *(v63 + 4) = v61;
  v63[40] = 0;
  LOBYTE(v40) = sub_242F043C0();
  sub_242F03B50();
  v65 = v64;
  v67 = v66;
  v69 = v68;
  v71 = v70;
  v72 = v62;
  v73 = v102;
  sub_242CF6B3C(v72, v102, &qword_27ECF6A80);
  v74 = &v73[*(v98 + 36)];
  *v74 = v40;
  *(v74 + 1) = v65;
  *(v74 + 2) = v67;
  *(v74 + 3) = v69;
  *(v74 + 4) = v71;
  v74[40] = 0;
  LOBYTE(v40) = sub_242F043D0();
  sub_242F03B50();
  v76 = v75;
  v78 = v77;
  v80 = v79;
  v82 = v81;
  v83 = v73;
  v84 = v99;
  sub_242CF6B3C(v83, v99, &qword_27ECF8048);
  v85 = &v84[*(v101 + 36)];
  *v85 = v40;
  *(v85 + 1) = v76;
  *(v85 + 2) = v78;
  *(v85 + 3) = v80;
  *(v85 + 4) = v82;
  v85[40] = 0;
  v86 = v103;
  sub_242CF6B3C(v84, v103, &qword_27ECFAE28);
  v87 = v106;
  v88 = v96;
  sub_242CA321C(v106, v96, &qword_27ECFAE30);
  v89 = v104;
  sub_242CA321C(v86, v104, &qword_27ECFAE28);
  v90 = v105;
  sub_242CA321C(v88, v105, &qword_27ECFAE30);
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFAE38);
  sub_242CA321C(v89, v90 + *(v91 + 48), &qword_27ECFAE28);
  sub_242C6D138(v86, &qword_27ECFAE28);
  sub_242C6D138(v87, &qword_27ECFAE30);
  sub_242C6D138(v89, &qword_27ECFAE28);
  return sub_242C6D138(v88, &qword_27ECFAE30);
}

uint64_t sub_242EB286C@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for UserInteractiveView(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFBE08);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v45 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFBE10);
  MEMORY[0x28223BE20](v9);
  v11 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12);
  v16 = v1 + *(v3 + 24);
  v17 = *(v16 + 72);
  if (v17 == 255 || (v17 & 1) != 0)
  {
    v18 = *(v13 + 56);

    return v18(a1, 1, 1, v9, v15);
  }

  else
  {
    v49 = &v45 - v14;
    v50 = v13;
    v51 = a1;
    v21 = *(v16 + 40);
    v20 = *(v16 + 48);
    v22 = *(v16 + 64);
    v46 = *(v16 + 56);
    v47 = v20;
    v23 = *(v1 + *(v3 + 20));
    *v8 = sub_242F04040();
    *(v8 + 1) = v23;
    v8[16] = 0;
    v48 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFBE18) + 44);
    v56 = v21;
    sub_242EB6514(v1, &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for UserInteractiveView);
    v24 = (*(v4 + 80) + 16) & ~*(v4 + 80);
    v25 = swift_allocObject();
    sub_242EB64AC(&v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v25 + v24, type metadata accessor for UserInteractiveView);
    sub_242CD53A8(v21, v47, v46, v22, 0);
    v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFADF0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFBE20);
    sub_242C7E000(&qword_27ECFAE00, &qword_27ECFADF0);
    v26 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECF6B80);
    v27 = sub_242E8AF18();
    v28 = sub_242C7E000(&qword_27ECF6BE8, &qword_27ECF6B80);
    v52 = &type metadata for ActionButton;
    v53 = v26;
    v54 = v27;
    v55 = v28;
    swift_getOpaqueTypeConformance2();
    sub_242E8AF6C();
    sub_242F049A0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF6A18);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_242F15420;
    LOBYTE(v21) = sub_242F043E0();
    *(inited + 32) = v21;
    v30 = sub_242F04400();
    *(inited + 33) = v30;
    v31 = sub_242F043D0();
    *(inited + 34) = v31;
    v32 = sub_242F043F0();
    sub_242F043F0();
    if (sub_242F043F0() != v21)
    {
      v32 = sub_242F043F0();
    }

    sub_242F043F0();
    if (sub_242F043F0() != v30)
    {
      v32 = sub_242F043F0();
    }

    sub_242F043F0();
    if (sub_242F043F0() != v31)
    {
      v32 = sub_242F043F0();
    }

    sub_242F03B50();
    v34 = v33;
    v36 = v35;
    v38 = v37;
    v40 = v39;
    sub_242CF6B3C(v8, v11, &qword_27ECFBE08);
    v41 = &v11[*(v9 + 36)];
    *v41 = v32;
    *(v41 + 1) = v34;
    *(v41 + 2) = v36;
    *(v41 + 3) = v38;
    *(v41 + 4) = v40;
    v41[40] = 0;
    v42 = v49;
    sub_242CF6B3C(v11, v49, &qword_27ECFBE10);
    v43 = v42;
    v44 = v51;
    sub_242CF6B3C(v43, v51, &qword_27ECFBE10);
    return (*(v50 + 56))(v44, 0, 1, v9);
  }
}

uint64_t sub_242EB2E14@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v107 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFBDF8);
  MEMORY[0x28223BE20](v7 - 8);
  v108 = &v95[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v9);
  v106 = &v95[-v10];
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF6A80);
  MEMORY[0x28223BE20](v99);
  v12 = &v95[-v11];
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF8048);
  MEMORY[0x28223BE20](v100);
  v14 = &v95[-v13];
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFAE28);
  MEMORY[0x28223BE20](v102);
  v105 = &v95[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v16);
  v101 = &v95[-v17];
  MEMORY[0x28223BE20](v18);
  v104 = &v95[-v19];
  v20 = type metadata accessor for NotificationSymbolConfiguration(0);
  MEMORY[0x28223BE20](v20 - 8);
  v22 = &v95[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v23 = type metadata accessor for SymbolView(0);
  v24 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v26 = &v95[-((v25 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v27);
  v29 = &v95[-v28];
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFAE30);
  MEMORY[0x28223BE20](v30 - 8);
  v103 = &v95[-((v31 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v33 = MEMORY[0x28223BE20](v32);
  v109 = &v95[-v34];
  if (a1)
  {
    v96 = a2;
    v97 = v14;
    v35 = a1;
    v36 = type metadata accessor for UserInteractiveView(0);
    v37 = a3 + *(v36 + 20);
    v38 = type metadata accessor for ActionConfiguration(0);
    sub_242EB6514(v37 + *(v38 + 28), v22, type metadata accessor for NotificationSymbolConfiguration);
    v39 = a3 + *(v36 + 24);
    if (*(v39 + 88))
    {
      v40 = *(v39 + 96);
    }

    else
    {
      v40 = 0;
    }

    *v26 = swift_getKeyPath();
    *(v26 + 1) = 0;
    v26[16] = 0;
    *(v26 + 3) = v35;
    v26[32] = v96;
    sub_242EB64AC(v22, &v26[*(v23 + 24)], type metadata accessor for NotificationSymbolConfiguration);
    *&v26[*(v23 + 28)] = v40;
    sub_242EB64AC(v26, v29, type metadata accessor for SymbolView);
    v41 = v109;
    sub_242EB64AC(v29, v109, type metadata accessor for SymbolView);
    (*(v24 + 56))(v41, 0, 1, v23);
    v14 = v97;
  }

  else
  {
    (*(v24 + 56))(v33);
  }

  v98 = a3;
  v42 = type metadata accessor for UserInteractiveView(0);
  v43 = a3 + *(v42 + 24);
  v44 = *v43;
  v45 = *(v43 + 8);
  v46 = *(v43 + 16);
  v47 = *(v43 + 24);
  v48 = a3 + *(v42 + 20);
  v49 = *(v43 + 32);
  v50 = v48 + *(type metadata accessor for ActionConfiguration(0) + 36);
  v51 = type metadata accessor for TextContentView(0);
  sub_242D575E8(v50, v12 + *(v51 + 24));
  *v12 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0BA0);
  swift_storeEnumTagMultiPayload();
  v52 = v12 + *(v51 + 20);
  *v52 = v44;
  *(v52 + 1) = v45;
  *(v52 + 2) = v46;
  *(v52 + 3) = v47;
  v52[32] = v49;
  sub_242CD52B8(v44, v45, v46, v47, v49);

  LOBYTE(v44) = sub_242F043E0();
  sub_242F03B50();
  v54 = v53;
  v56 = v55;
  v58 = v57;
  v60 = v59;
  v61 = v12 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF6A88) + 36);
  *v61 = v44;
  *(v61 + 1) = v54;
  *(v61 + 2) = v56;
  *(v61 + 3) = v58;
  *(v61 + 4) = v60;
  v61[40] = 0;
  LOBYTE(v44) = sub_242F04400();
  sub_242F03B50();
  v62 = v12 + *(v99 + 36);
  *v62 = v44;
  *(v62 + 1) = v63;
  *(v62 + 2) = v64;
  *(v62 + 3) = v65;
  *(v62 + 4) = v66;
  v62[40] = 0;
  LOBYTE(v44) = sub_242F043C0();
  sub_242F03B50();
  v68 = v67;
  v70 = v69;
  v72 = v71;
  v74 = v73;
  sub_242CF6B3C(v12, v14, &qword_27ECF6A80);
  v75 = &v14[*(v100 + 36)];
  *v75 = v44;
  *(v75 + 1) = v68;
  *(v75 + 2) = v70;
  *(v75 + 3) = v72;
  *(v75 + 4) = v74;
  v75[40] = 0;
  LOBYTE(v44) = sub_242F043D0();
  sub_242F03B50();
  v77 = v76;
  v79 = v78;
  v81 = v80;
  v83 = v82;
  v84 = v101;
  sub_242CF6B3C(v14, v101, &qword_27ECF8048);
  v85 = &v84[*(v102 + 36)];
  *v85 = v44;
  *(v85 + 1) = v77;
  *(v85 + 2) = v79;
  *(v85 + 3) = v81;
  *(v85 + 4) = v83;
  v85[40] = 0;
  v86 = v104;
  sub_242CF6B3C(v84, v104, &qword_27ECFAE28);
  v87 = v106;
  sub_242EB286C(v106);
  v88 = v109;
  v89 = v103;
  sub_242CA321C(v109, v103, &qword_27ECFAE30);
  v90 = v105;
  sub_242CA321C(v86, v105, &qword_27ECFAE28);
  v91 = v108;
  sub_242CA321C(v87, v108, &qword_27ECFBDF8);
  v92 = v107;
  sub_242CA321C(v89, v107, &qword_27ECFAE30);
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFBE28);
  sub_242CA321C(v90, v92 + *(v93 + 48), &qword_27ECFAE28);
  sub_242CA321C(v91, v92 + *(v93 + 64), &qword_27ECFBDF8);
  sub_242C6D138(v87, &qword_27ECFBDF8);
  sub_242C6D138(v86, &qword_27ECFAE28);
  sub_242C6D138(v88, &qword_27ECFAE30);
  sub_242C6D138(v91, &qword_27ECFBDF8);
  sub_242C6D138(v90, &qword_27ECFAE28);
  return sub_242C6D138(v89, &qword_27ECFAE30);
}

uint64_t sub_242EB3648@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v28[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF6B80);
  MEMORY[0x28223BE20](v5);
  v7 = (v28 - v6);
  v8 = *a1;
  v9 = *(a1 + 1);
  v10 = *(a1 + 2);
  v11 = a1[24];
  v12 = *(a1 + 4);
  v13 = *(a1 + 5);
  v14 = (a2 + *(type metadata accessor for UserInteractiveView(0) + 20));
  v15 = v14[1];
  v16 = v14[3];
  v37 = v14[2];
  v38 = v16;
  v17 = v14[1];
  v36[0] = *v14;
  v36[1] = v17;
  v18 = v38;
  v32 = v36[0];
  v33 = v15;
  v19 = v14[3];
  v34 = v37;
  v35 = v19;
  LOBYTE(v29) = v8;
  *(&v29 + 1) = v9;
  *&v30 = v10;
  BYTE8(v30) = v11;
  *&v31 = v12;
  *(&v31 + 1) = v13;
  v20 = v7 + v5[12];
  v21 = *(sub_242F03E30() + 20);
  v22 = *MEMORY[0x277CE0118];
  v23 = sub_242F04070();
  (*(*(v23 - 8) + 104))(&v20[v21], v22, v23);
  *v20 = v18;
  *(v20 + 1) = v18;
  *v7 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0BA0);
  swift_storeEnumTagMultiPayload();
  v24 = v7 + v5[9];
  *v24 = swift_getKeyPath();
  v24[8] = 0;
  v25 = v7 + v5[10];
  *v25 = swift_getKeyPath();
  v25[8] = 0;
  v26 = v5[11];
  *(v7 + v26) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0BA8);
  swift_storeEnumTagMultiPayload();
  *(v7 + v5[13]) = 0;
  *(v7 + v5[14]) = 0;
  *(v7 + v5[15]) = 0;

  sub_242CA0064(v12, v13);
  sub_242D5A344(v36, v39);
  sub_242E8AF18();
  sub_242C7E000(&qword_27ECF6BE8, &qword_27ECF6B80);
  sub_242F045D0();
  sub_242C6D138(v7, &qword_27ECF6B80);
  v39[4] = v33;
  v39[5] = v34;
  v39[6] = v35;
  v39[0] = v29;
  v39[1] = v30;
  v39[2] = v31;
  v39[3] = v32;
  return sub_242E8AFC0(v39);
}

__n128 SymbolView.body.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFBBA8);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = (&v21 - v5);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFBBB0);
  MEMORY[0x28223BE20](v7);
  v9 = &v21 - v8;
  *v6 = sub_242F04A70();
  v6[1] = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFBBB8);
  sub_242EB3BFC(v2, v6 + *(v11 + 44));
  v12 = v2 + *(type metadata accessor for SymbolView(0) + 24);
  sub_242F04A70();
  sub_242F03E40();
  sub_242CF6B3C(v6, v9, &qword_27ECFBBA8);
  v13 = &v9[*(v7 + 36)];
  v14 = v28;
  *(v13 + 4) = v27;
  *(v13 + 5) = v14;
  *(v13 + 6) = v29;
  v15 = v24;
  *v13 = v23;
  *(v13 + 1) = v15;
  v16 = v26;
  *(v13 + 2) = v25;
  *(v13 + 3) = v16;
  v17 = (v12 + *(type metadata accessor for NotificationSymbolConfiguration(0) + 32));
  v18 = *v17;
  v21 = v17[1];
  v22 = v18;
  LOBYTE(v6) = sub_242F043B0();
  sub_242CF6B3C(v9, a1, &qword_27ECFBBB0);
  v19 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFBBC0) + 36);
  *v19 = v6;
  result = v22;
  *(v19 + 24) = v21;
  *(v19 + 8) = result;
  *(v19 + 40) = 0;
  return result;
}

uint64_t sub_242EB3BFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v44 = a2;
  v3 = sub_242F04800();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &KeyPath - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFBE30);
  MEMORY[0x28223BE20](v43);
  v8 = &KeyPath - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF7E88);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &KeyPath - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFBE38);
  MEMORY[0x28223BE20](v12);
  v14 = (&KeyPath - v13);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFBE40);
  MEMORY[0x28223BE20](v42);
  v16 = &KeyPath - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v17);
  v20 = &KeyPath - v19;
  if (*(a1 + 32) == 3)
  {
    v21 = *(a1 + 24);
    v22 = type metadata accessor for SymbolView(0);
    v23 = *(a1 + *(v22 + 28));
    v41 = v21;

    if (v23)
    {
      KeyPath = swift_getKeyPath();

      sub_242F040A0();
    }

    else
    {
      v23 = sub_242F04780();
      KeyPath = swift_getKeyPath();
      sub_242F040B0();
    }

    v29 = sub_242F040D0();
    (*(*(v29 - 8) + 56))(v11, 0, 1, v29);
    v30 = swift_getKeyPath();
    v31 = (v14 + *(v12 + 36));
    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF7E30);
    sub_242CF6B3C(v11, v31 + *(v32 + 28), &qword_27ECF7E88);
    *v31 = v30;
    v33 = KeyPath;
    *v14 = v41;
    v14[1] = v33;
    v14[2] = v23;
    v34 = (a1 + *(v22 + 24));
    v35 = *v34;
    v36 = *(type metadata accessor for NotificationSymbolConfiguration(0) + 28);
    v37 = &v16[*(v42 + 36)];
    v38 = *(type metadata accessor for NotificationIconStyle(0) + 20);
    v39 = sub_242F04820();
    (*(*(v39 - 8) + 16))(&v37[v38], &v34[v36], v39);
    *v37 = v35;
    sub_242CF6B3C(v14, v16, &qword_27ECFBE38);
    sub_242CF6B3C(v16, v20, &qword_27ECFBE40);
    sub_242CA321C(v20, v8, &qword_27ECFBE40);
    swift_storeEnumTagMultiPayload();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFBE48);
    sub_242EB6940();
    sub_242EB6B6C();
    sub_242F041C0();
    return sub_242C6D138(v20, &qword_27ECFBE40);
  }

  else
  {
    (*(v4 + 104))(v6, *MEMORY[0x277CE0FE0], v3, v18);
    v24 = sub_242F04830();
    (*(v4 + 8))(v6, v3);
    type metadata accessor for SymbolView(0);
    sub_242F04A70();
    sub_242F03E40();
    *&v45[70] = v51;
    *&v45[54] = v50;
    *&v45[22] = v48;
    *&v45[6] = v47;
    *&v45[86] = v52;
    *&v45[102] = v53;
    *&v45[38] = v49;
    v25 = *&v45[80];
    *(v8 + 82) = *&v45[64];
    *(v8 + 98) = v25;
    *(v8 + 114) = *&v45[96];
    v26 = *&v45[16];
    *(v8 + 18) = *v45;
    *(v8 + 34) = v26;
    v27 = *&v45[48];
    *(v8 + 50) = *&v45[32];
    v46 = 1;
    *v8 = v24;
    *(v8 + 1) = 0;
    *(v8 + 8) = 1;
    *(v8 + 16) = *&v45[110];
    *(v8 + 66) = v27;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFBE48);
    sub_242EB6940();
    sub_242EB6B6C();
    return sub_242F041C0();
  }
}

uint64_t sub_242EB42E4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_242F04000();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0BA0);
  MEMORY[0x28223BE20](v8);
  v10 = &v14 - v9;
  sub_242CA321C(v2, &v14 - v9, &qword_27ECF0BA0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_242F03BB0();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    sub_242F05710();
    v13 = sub_242F04360();
    sub_242F03930();

    sub_242F03FF0();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

__n128 TextContentView.body.getter@<Q0>(uint64_t a1@<X8>)
{
  v55 = a1;
  v50 = sub_242F03BB0();
  v2 = *(v50 - 8);
  MEMORY[0x28223BE20](v50);
  v4 = &v41[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5);
  v7 = &v41[-v6];
  v8 = sub_242F04AD0();
  v52 = *(v8 - 8);
  v53 = v8;
  MEMORY[0x28223BE20](v8);
  v47 = &v41[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFBBC8);
  MEMORY[0x28223BE20](v46);
  v11 = &v41[-v10];
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFBBD0);
  MEMORY[0x28223BE20](v49);
  v51 = &v41[-v12];
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFBBD8);
  MEMORY[0x28223BE20](v48);
  v54 = &v41[-v13];
  v14 = v1 + *(type metadata accessor for TextContentView(0) + 24);
  v45 = *(v14 + 144);
  if (v45 == 1)
  {
    v15 = sub_242F04090();
  }

  else
  {
    v15 = sub_242F04080();
  }

  v43 = *(v14 + 128);
  v44 = v15;
  v64 = 0;
  sub_242EB4A90(v1, &v65);
  v59 = v67;
  v60 = v68;
  v57 = v65;
  v58 = v66;
  v62[2] = v67;
  v62[3] = v68;
  v62[4] = v69;
  v62[1] = v66;
  v61 = v69;
  v62[0] = v65;
  sub_242CA321C(&v57, &v56, &qword_27ECFBBE0);
  sub_242C6D138(v62, &qword_27ECFBBE0);
  *&v63[23] = v58;
  *&v63[39] = v59;
  *&v63[55] = v60;
  *&v63[71] = v61;
  *&v63[7] = v57;
  v42 = v64;
  sub_242EB42E4(v7);
  v16 = v4;
  v17 = v4;
  v18 = v50;
  (*(v2 + 104))(v17, *MEMORY[0x277CDF3C0], v50);
  v19 = sub_242F03BA0();
  v20 = *(v2 + 8);
  v20(v16, v18);
  v20(v7, v18);
  v21 = v52;
  v22 = MEMORY[0x277CE13B8];
  if ((v19 & 1) == 0)
  {
    v22 = MEMORY[0x277CE13B0];
  }

  v23 = v47;
  v24 = v53;
  (*(v52 + 104))(v47, *v22, v53);
  (*(v21 + 32))(&v11[*(v46 + 36)], v23, v24);
  v25 = *&v63[48];
  *(v11 + 49) = *&v63[32];
  *(v11 + 65) = v25;
  *(v11 + 81) = *&v63[64];
  v26 = *&v63[16];
  *(v11 + 17) = *v63;
  v27 = v43;
  *v11 = v44;
  *(v11 + 1) = v27;
  v11[16] = v42;
  *(v11 + 12) = *&v63[79];
  *(v11 + 33) = v26;
  v28 = *(v14 + 136);
  KeyPath = swift_getKeyPath();
  v30 = v51;
  sub_242CF6B3C(v11, v51, &qword_27ECFBBC8);
  v31 = &v30[*(v49 + 36)];
  *v31 = KeyPath;
  *(v31 + 1) = v28;
  v31[16] = 0;
  LOBYTE(v28) = v45 ^ 1;
  v32 = swift_getKeyPath();
  v33 = v30;
  v34 = v54;
  sub_242CF6B3C(v33, v54, &qword_27ECFBBD0);
  v35 = &v34[*(v48 + 36)];
  *v35 = v32;
  v35[8] = v28;
  if (v28)
  {
    sub_242F04A70();
  }

  else
  {
    sub_242F04A80();
  }

  sub_242F03E40();
  v36 = v55;
  sub_242CF6B3C(v34, v55, &qword_27ECFBBD8);
  v37 = v36 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFBBE8) + 36);
  v38 = v70;
  *(v37 + 64) = v69;
  *(v37 + 80) = v38;
  *(v37 + 96) = v71;
  v39 = v66;
  *v37 = v65;
  *(v37 + 16) = v39;
  result = v68;
  *(v37 + 32) = v67;
  *(v37 + 48) = result;
  return result;
}

uint64_t sub_242EB4A90@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = type metadata accessor for TextContentView(0);
  v4 = a1 + *(v3 + 20);
  if (*(v4 + 32) > 1u)
  {
    v42 = 0;
    v43 = 0;
    v44 = 0;
    v45 = 0;
  }

  else
  {

    v40 = a1;
    __swift_project_boxed_opaque_existential_2Tm((a1 + *(v3 + 24) + 16), *(a1 + *(v3 + 24) + 40));
    sub_242C6CB78();
    v5 = sub_242F04550();
    v7 = v6;
    v9 = v8;
    v10 = sub_242F04530();
    v12 = v11;
    v14 = v13;
    sub_242DD225C(v5, v7, v9 & 1);

    v43 = sub_242F04540();
    v44 = v15;
    LOBYTE(v5) = v16;
    v45 = v17;
    sub_242DD225C(v10, v12, v14 & 1);

    v18 = v5 & 1;
    v19 = *(v4 + 32);
    if (!*(v4 + 32))
    {
      v32 = *(v4 + 32);
      v38 = v32;
      v35 = v32;
      KeyPath = v32;
      v36 = v32;
      goto LABEL_6;
    }

    v42 = v18;
    a1 = v40;
  }

  v20 = (a1 + *(v3 + 24));
  __swift_project_boxed_opaque_existential_2Tm(v20 + 7, v20[10]);
  sub_242C6CB78();
  v21 = sub_242F04550();
  v23 = v22;
  v25 = v24;
  v26 = sub_242F04530();
  v28 = v27;
  v30 = v29;
  sub_242DD225C(v21, v23, v25 & 1);

  v19 = sub_242F04540();
  v32 = v31;
  v41 = v33;
  v35 = v34;
  sub_242DD225C(v26, v28, v30 & 1);

  v36 = v20[19];
  KeyPath = swift_getKeyPath();
  v38 = v41 & 1;
  v18 = v42;
LABEL_6:
  *a2 = v43;
  a2[1] = v44;
  a2[2] = v18;
  a2[3] = v45;
  a2[4] = v19;
  a2[5] = v32;
  a2[6] = v38;
  a2[7] = v35;
  a2[8] = KeyPath;
  a2[9] = v36;
  sub_242EB6818(v43, v44, v18, v45);
  sub_242EB685C(v19, v32, v38, v35);
  sub_242EB68AC(v19, v32, v38, v35);
  return sub_242EB68FC(v43, v44, v18, v45);
}

uint64_t sub_242EB4DB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = (a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFBD28) + 36));
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF7E30) + 28);
  sub_242F040B0();
  v9 = sub_242F040D0();
  (*(*(v9 - 8) + 56))(v7 + v8, 0, 1, v9);
  *v7 = swift_getKeyPath();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFBD30);
  (*(*(v10 - 8) + 16))(a3, a1, v10);
  v11 = *v3;
  KeyPath = swift_getKeyPath();
  v13 = (a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFBD38) + 36));
  *v13 = KeyPath;
  v13[1] = v11;
  v14 = *(a2 + 20);
  v15 = swift_getKeyPath();
  v16 = (a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFBD40) + 36));
  v17 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF7E50) + 28);
  v18 = sub_242F04820();
  (*(*(v18 - 8) + 16))(v16 + v17, &v3[v14], v18);
  *v16 = v15;
}

uint64_t sub_242EB4F8C@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFBCF0);
  MEMORY[0x28223BE20](v6);
  v8 = v21 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFBCF8);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v21 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFBD00);
  v14 = MEMORY[0x28223BE20](v13);
  v16 = v21 - v15;
  if (a2)
  {
    *v16 = sub_242F04080();
    *(v16 + 1) = 0;
    v16[16] = 1;
    v17 = &v16[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFBD18) + 44)];
    v21[1] = a3;
    v18 = *(v10 + 16);
    v18(v12, a1, v9);
    *v17 = 0;
    v17[8] = 0;
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFBD20);
    v18(&v17[*(v19 + 48)], v12, v9);
    (*(v10 + 8))(v12, v9);
    sub_242CA321C(v16, v8, &qword_27ECFBD00);
    swift_storeEnumTagMultiPayload();
    sub_242C7E000(&qword_27ECFBD08, &qword_27ECFBD00);
    sub_242C7E000(&qword_27ECFBD10, &qword_27ECFBCF8);
    sub_242F041C0();
    return sub_242C6D138(v16, &qword_27ECFBD00);
  }

  else
  {
    (*(v10 + 16))(v8, a1, v9, v14);
    swift_storeEnumTagMultiPayload();
    sub_242C7E000(&qword_27ECFBD08, &qword_27ECFBD00);
    sub_242C7E000(&qword_27ECFBD10, &qword_27ECFBCF8);
    return sub_242F041C0();
  }
}

uint64_t sub_242EB531C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_242F03F70();
  *a1 = result;
  return result;
}

uint64_t sub_242EB5374@<X0>(void *a1@<X8>)
{
  result = sub_242F03F10();
  *a1 = v3;
  return result;
}

uint64_t sub_242EB53C8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_242F03F50();
  *a1 = result;
  return result;
}

void sub_242EB5498()
{
  sub_242EB5DB0(319, &qword_27ECF7E70, type metadata accessor for ActionConfiguration);
  if (v0 <= 0x3F)
  {
    sub_242EB5DB0(319, &qword_27ECF7ED8, type metadata accessor for BannerConfiguration);
    if (v1 <= 0x3F)
    {
      sub_242EB5DB0(319, &qword_27ECFBC08, type metadata accessor for FancyNotificationConfiguration);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_242EB55B8()
{
  sub_242E975C8(319, &qword_27ECF6948, &type metadata for SymbolImageProvider, MEMORY[0x277CDF468]);
  if (v0 <= 0x3F)
  {
    sub_242EB56B4();
    if (v1 <= 0x3F)
    {
      type metadata accessor for NotificationSymbolConfiguration(319);
      if (v2 <= 0x3F)
      {
        sub_242E975C8(319, &qword_27ECFBC28, MEMORY[0x277CE0F78], MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_242EB56B4()
{
  if (!qword_27ECFBC20)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27ECFBC20);
    }
  }
}

void sub_242EB5740()
{
  sub_242EB5DB0(319, &qword_27ECF0CA0, MEMORY[0x277CDF3E0]);
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

unint64_t sub_242EB57E0()
{
  result = qword_27ECFBC48;
  if (!qword_27ECFBC48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECFBBC0);
    sub_242EB586C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFBC48);
  }

  return result;
}

unint64_t sub_242EB586C()
{
  result = qword_27ECFBC50;
  if (!qword_27ECFBC50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECFBBB0);
    sub_242C7E000(&qword_27ECFBC58, &qword_27ECFBBA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFBC50);
  }

  return result;
}

unint64_t sub_242EB5924()
{
  result = qword_27ECFBC60;
  if (!qword_27ECFBC60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECFBBE8);
    sub_242EB59B0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFBC60);
  }

  return result;
}

unint64_t sub_242EB59B0()
{
  result = qword_27ECFBC68;
  if (!qword_27ECFBC68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECFBBD8);
    sub_242EB5A68();
    sub_242C7E000(&qword_27ECFBCA0, &qword_27ECFBCA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFBC68);
  }

  return result;
}

unint64_t sub_242EB5A68()
{
  result = qword_27ECFBC70;
  if (!qword_27ECFBC70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECFBBD0);
    sub_242EB5B20();
    sub_242C7E000(&qword_27ECFBC90, &qword_27ECFBC98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFBC70);
  }

  return result;
}

unint64_t sub_242EB5B20()
{
  result = qword_27ECFBC78;
  if (!qword_27ECFBC78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECFBBC8);
    sub_242C7E000(&qword_27ECFBC80, &qword_27ECFBC88);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFBC78);
  }

  return result;
}

uint64_t sub_242EB5C20()
{
  result = sub_242F04820();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_242EB5CE4()
{
  sub_242EB5DB0(319, &qword_27ECF7EE0, type metadata accessor for NoticeConfiguration);
  if (v0 <= 0x3F)
  {
    sub_242E975C8(319, &qword_27ECF6948, &type metadata for SymbolImageProvider, MEMORY[0x277CDF468]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_242EB5DB0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_242F03BC0();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_242EB5E64(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  sub_242E975C8(319, &qword_27ECF6948, &type metadata for SymbolImageProvider, MEMORY[0x277CDF468]);
  if (v5 <= 0x3F)
  {
    a4(319);
    if (v6 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_68Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v7 = a4(0);
  v8 = *(v7 - 8);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = *(v8 + 48);
    v11 = a1 + *(a3 + 20);

    return v10(v11, a2, v9);
  }

  else
  {
    v13 = *(a1 + *(a3 + 24) + 112);
    if (v13 >= 0xFFFFFFFF)
    {
      LODWORD(v13) = -1;
    }

    return (v13 + 1);
  }
}

uint64_t __swift_store_extra_inhabitant_index_69Tm(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = a5(0);
  v10 = *(result - 8);
  if (*(v10 + 84) == a3)
  {
    v11 = result;
    v12 = *(v10 + 56);
    v13 = a1 + *(a4 + 20);

    return v12(v13, a2, a2, v11);
  }

  else
  {
    *(a1 + *(a4 + 24) + 112) = (a2 - 1);
  }

  return result;
}

uint64_t sub_242EB61A4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_242F03ED0();
  *a1 = result;
  return result;
}

uint64_t sub_242EB6220(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF7E88);
  MEMORY[0x28223BE20](v2 - 8);
  sub_242CA321C(a1, &v5 - v3, &qword_27ECF7E88);
  return sub_242F03F40();
}

uint64_t sub_242EB62EC(uint64_t a1)
{
  v2 = sub_242F04820();
  v3 = MEMORY[0x28223BE20](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return sub_242F03E90();
}

unint64_t sub_242EB63B4()
{
  result = qword_27ECF80A8;
  if (!qword_27ECF80A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECF8060);
    sub_242E07A10();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF80A8);
  }

  return result;
}

uint64_t sub_242EB644C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_242EB64AC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_242EB6514(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_242EB657C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_242EB65C4()
{
  result = qword_27ECFBDA0;
  if (!qword_27ECFBDA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECF8048);
    sub_242EB6650();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFBDA0);
  }

  return result;
}

unint64_t sub_242EB6650()
{
  result = qword_27ECFBDA8;
  if (!qword_27ECFBDA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECF6A80);
    sub_242EB66DC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFBDA8);
  }

  return result;
}

unint64_t sub_242EB66DC()
{
  result = qword_27ECFBDB0;
  if (!qword_27ECFBDB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECF6A88);
    sub_242EB657C(&qword_27ECF80F0, type metadata accessor for TextContentView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFBDB0);
  }

  return result;
}

uint64_t sub_242EB6798@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for UserInteractiveView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_242EB3648(a1, v6, a2);
}

uint64_t sub_242EB6818(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_242DD226C(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_242EB685C(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_242DD226C(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_242EB68AC(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_242DD225C(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_242EB68FC(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_242DD225C(result, a2, a3 & 1);
  }

  return result;
}

unint64_t sub_242EB6940()
{
  result = qword_27ECFBE50;
  if (!qword_27ECFBE50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECFBE40);
    sub_242EB69FC();
    sub_242EB657C(&qword_27ECFBE80, type metadata accessor for NotificationIconStyle);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFBE50);
  }

  return result;
}

unint64_t sub_242EB69FC()
{
  result = qword_27ECFBE58;
  if (!qword_27ECFBE58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECFBE38);
    sub_242EB6AB4();
    sub_242C7E000(&qword_27ECF7E28, &qword_27ECF7E30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFBE58);
  }

  return result;
}

unint64_t sub_242EB6AB4()
{
  result = qword_27ECFBE60;
  if (!qword_27ECFBE60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECFBE68);
    sub_242C7E000(&qword_27ECFBE70, &qword_27ECFBE78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFBE60);
  }

  return result;
}

unint64_t sub_242EB6B6C()
{
  result = qword_27ECFBE88;
  if (!qword_27ECFBE88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECFBE48);
    sub_242EB6BF8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFBE88);
  }

  return result;
}

unint64_t sub_242EB6BF8()
{
  result = qword_27ECFBE90;
  if (!qword_27ECFBE90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECFBE98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFBE90);
  }

  return result;
}

unint64_t sub_242EB6C7C()
{
  result = qword_27ECFBF30;
  if (!qword_27ECFBF30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECFBEC0);
    sub_242EB6D38();
    sub_242EB657C(&qword_27ECFBF80, _s23MinimalNotificationViewVMa);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFBF30);
  }

  return result;
}

unint64_t sub_242EB6D38()
{
  result = qword_27ECFBF38;
  if (!qword_27ECFBF38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECFBF10);
    sub_242EB6DC4();
    sub_242EB7084();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFBF38);
  }

  return result;
}

unint64_t sub_242EB6DC4()
{
  result = qword_27ECFBF40;
  if (!qword_27ECFBF40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECFBEE8);
    sub_242EB6E80();
    sub_242EB657C(&qword_27ECFBF68, type metadata accessor for BannerView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFBF40);
  }

  return result;
}

unint64_t sub_242EB6E80()
{
  result = qword_27ECFBF48;
  if (!qword_27ECFBF48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECFBF08);
    sub_242EB6F3C();
    sub_242EB657C(&qword_27ECFBF60, type metadata accessor for UserInteractiveView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFBF48);
  }

  return result;
}

unint64_t sub_242EB6F3C()
{
  result = qword_27ECFBF50;
  if (!qword_27ECFBF50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECFBF00);
    sub_242EB6FC8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFBF50);
  }

  return result;
}

unint64_t sub_242EB6FC8()
{
  result = qword_27ECFBF58;
  if (!qword_27ECFBF58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECFBEF8);
    sub_242EB657C(&qword_27ECFBF60, type metadata accessor for UserInteractiveView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFBF58);
  }

  return result;
}

unint64_t sub_242EB7084()
{
  result = qword_27ECFBF70;
  if (!qword_27ECFBF70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECFBED0);
    sub_242EB657C(&qword_27ECFBF68, type metadata accessor for BannerView);
    sub_242EB657C(&qword_27ECFBF78, type metadata accessor for NoticeView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFBF70);
  }

  return result;
}

unint64_t sub_242EB7170()
{
  result = qword_27ECFBF88;
  if (!qword_27ECFBF88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECFBEA8);
    sub_242EB657C(&qword_27ECFBF20, _s21AlertNotificationViewVMa);
    sub_242EB657C(&qword_27ECFBF28, _s21FancyNotificationViewVMa);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFBF88);
  }

  return result;
}

unint64_t sub_242EB725C()
{
  result = qword_27ECFBFA0;
  if (!qword_27ECFBFA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECFBFA8);
    sub_242C7E000(&qword_27ECFBD08, &qword_27ECFBD00);
    sub_242C7E000(&qword_27ECFBD10, &qword_27ECFBCF8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFBFA0);
  }

  return result;
}

unint64_t sub_242EB7340()
{
  result = qword_27ECFBFB0;
  if (!qword_27ECFBFB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECFBD40);
    sub_242EB73F8();
    sub_242C7E000(&qword_27ECF7E48, &qword_27ECF7E50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFBFB0);
  }

  return result;
}

unint64_t sub_242EB73F8()
{
  result = qword_27ECFBFB8;
  if (!qword_27ECFBFB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECFBD38);
    sub_242EB74B0();
    sub_242C7E000(&qword_27ECF7E38, &qword_27ECF7E40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFBFB8);
  }

  return result;
}

unint64_t sub_242EB74B0()
{
  result = qword_27ECFBFC0;
  if (!qword_27ECFBFC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECFBD28);
    sub_242C7E000(&qword_27ECFBFC8, &qword_27ECFBD30);
    sub_242C7E000(&qword_27ECF7E28, &qword_27ECF7E30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFBFC0);
  }

  return result;
}

unint64_t sub_242EB7594()
{
  result = qword_27ECFBFD0;
  if (!qword_27ECFBFD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECFBD50);
    sub_242EB7620();
    sub_242DD1FE0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFBFD0);
  }

  return result;
}

unint64_t sub_242EB7620()
{
  result = qword_27ECFBFD8;
  if (!qword_27ECFBFD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECFBD48);
    sub_242EB76D8();
    sub_242C7E000(&qword_27ECF6B70, &qword_27ECF6960);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFBFD8);
  }

  return result;
}

unint64_t sub_242EB76D8()
{
  result = qword_27ECFBFE0;
  if (!qword_27ECFBFE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECF6B10);
    sub_242EB7764();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFBFE0);
  }

  return result;
}

unint64_t sub_242EB7764()
{
  result = qword_27ECFBFE8;
  if (!qword_27ECFBFE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECF6B08);
    sub_242E07958();
    sub_242EB63B4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFBFE8);
  }

  return result;
}

unint64_t sub_242EB77F0()
{
  result = qword_27ECFBFF0;
  if (!qword_27ECFBFF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECF6B20);
    sub_242EB78A8(&qword_27ECFBFF8, &qword_27ECF6B18, &unk_242F307F0, sub_242EB792C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFBFF0);
  }

  return result;
}

uint64_t sub_242EB78A8(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    sub_242DD1FE0();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_242EB792C()
{
  result = qword_27ECFC000;
  if (!qword_27ECFC000)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECFBD68);
    sub_242C7E000(&qword_27ECFC008, &qword_27ECFC010);
    sub_242C7E000(&qword_27ECF6B70, &qword_27ECF6960);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFC000);
  }

  return result;
}

unint64_t sub_242EB7A10()
{
  result = qword_27ECFC018;
  if (!qword_27ECFC018)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECF6B30);
    sub_242EB78A8(&qword_27ECFC020, &qword_27ECF6B28, &unk_242F30800, sub_242EB7AC8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFC018);
  }

  return result;
}

unint64_t sub_242EB7AC8()
{
  result = qword_27ECFC028;
  if (!qword_27ECFC028)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECFBDB8);
    sub_242EB7B80();
    sub_242C7E000(&qword_27ECF6B70, &qword_27ECF6960);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFC028);
  }

  return result;
}

unint64_t sub_242EB7B80()
{
  result = qword_27ECFC030;
  if (!qword_27ECFC030)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECFC038);
    sub_242C7E000(&qword_27ECFBDE0, &qword_27ECFBDD0);
    sub_242C7E000(&qword_27ECFBDE8, &qword_27ECFBDC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFC030);
  }

  return result;
}

Swift::Void __swiftcall SetNeedsFocusUpdateAction.callAsFunction()()
{
  v1 = sub_242F04B60();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &aBlock[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_242F04B80();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &aBlock[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_242D3DCD0();
  v9 = sub_242F05750();
  sub_242E199E8(v0, v14);
  v10 = swift_allocObject();
  sub_242E193EC(v14, v10 + 16);
  aBlock[4] = sub_242EB7F90;
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_242DEA248;
  aBlock[3] = &block_descriptor_2;
  v11 = _Block_copy(aBlock);

  sub_242F04B70();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_242DFCA68();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECFC610);
  sub_242D3DC6C();
  sub_242F05930();
  MEMORY[0x245D26D60](0, v8, v4, v11);
  _Block_release(v11);

  (*(v2 + 8))(v4, v1);
  (*(v6 + 8))(v8, v5);
}

uint64_t SetNeedsFocusUpdateAction.init(focusEnvironment:)()
{
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

void *sub_242EB7F3C()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    [result setNeedsFocusUpdate];

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_242EB7FB0()
{
  swift_unknownObjectWeakInit();

  return swift_unknownObjectWeakAssign();
}

uint64_t static SetNeedsFocusUpdateKey.defaultValue.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = a1;
  if (qword_27ECEF7E8 != -1)
  {
    swift_once();
    v2 = a1;
  }

  return sub_242E199E8(&unk_27ECFC040, v2);
}

uint64_t sub_242EB8058@<X0>(uint64_t a1@<X8>)
{
  v2 = a1;
  if (qword_27ECEF7E8 != -1)
  {
    swift_once();
    v2 = a1;
  }

  return sub_242E199E8(&unk_27ECFC040, v2);
}

uint64_t EnvironmentValues.setNeedsFocusUpdate.getter()
{
  sub_242E19A44();

  return sub_242F04010();
}

uint64_t EnvironmentValues.setNeedsFocusUpdate.setter(uint64_t a1)
{
  sub_242E199E8(a1, v3);
  sub_242E19A44();
  sub_242F04020();
  return sub_242E192D4(a1);
}

void (*EnvironmentValues.setNeedsFocusUpdate.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 24) = v1;
  *(v3 + 32) = sub_242E19A44();
  sub_242F04010();
  return sub_242EB81F4;
}

void sub_242EB81F4(uint64_t *a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    sub_242E199E8(*a1, v2 + 8);
    sub_242E199E8(v2 + 8, v2 + 16);
    sub_242F04020();
    sub_242E192D4(v2 + 8);
  }

  else
  {
    sub_242E199E8(*a1, v2 + 8);
    sub_242F04020();
  }

  sub_242E192D4(v2);

  free(v2);
}

CarPlayAssetUI::LocalNotificationState __swiftcall LocalNotificationState.init(id:isDismissible:on:)(CarPlayAssetUI::LocalNotificationState id, Swift::Bool isDismissible, Swift::Bool on)
{
  *v3 = id.id;
  *(v3 + 16) = isDismissible;
  *(v3 + 17) = on;
  id.isDismissible = isDismissible;
  return id;
}

uint64_t LocalNotificationState.id.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t LocalNotificationState.id.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t static LocalNotificationState.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 17);
  v4 = *(a2 + 16);
  v5 = *(a2 + 17);
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8))
  {
    if (v2 != v4)
    {
      return 0;
    }

    return v3 ^ v5 ^ 1u;
  }

  v7 = sub_242F06110();
  result = 0;
  if ((v7 & 1) != 0 && ((v2 ^ v4) & 1) == 0)
  {
    return v3 ^ v5 ^ 1u;
  }

  return result;
}

uint64_t sub_242EB8448(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 17);
  v4 = *(a2 + 16);
  v5 = *(a2 + 17);
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8))
  {
    if (v2 != v4)
    {
      return 0;
    }

    return v3 ^ v5 ^ 1u;
  }

  v7 = sub_242F06110();
  result = 0;
  if ((v7 & 1) != 0 && ((v2 ^ v4) & 1) == 0)
  {
    return v3 ^ v5 ^ 1u;
  }

  return result;
}

Swift::Double_optional __swiftcall LocalNotificationState.doubleValue()()
{
  v0 = 0;
  result.is_nil = v0;
  return result;
}

__n128 __swift_memcpy18_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u16[0] = a2[1].n128_u16[0];
  *a1 = result;
  return result;
}

uint64_t sub_242EB84F4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 18))
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

uint64_t sub_242EB853C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 18) = 1;
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

    *(result + 18) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_242EB858C(unint64_t a1, unint64_t a2)
{
  v3 = a1;
  v45 = a1 >> 62;
  if (!(a1 >> 62))
  {
    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_3;
  }

  while (1)
  {
    v4 = sub_242F059B0();
LABEL_3:
    v43 = *(a2 + 16);
    v5 = v43 >= v4 ? v4 : *(a2 + 16);
    v50 = MEMORY[0x277D84F90];
    sub_242E3BCF0(0, v5 & ~(v5 >> 63), 0);
    if (v4 < 0)
    {
      break;
    }

    v6 = v50;
    v42 = v3;
    if (!v5)
    {
      v8 = v3 & 0xFFFFFFFFFFFFFF8;
      v44 = v3 & 0xC000000000000001;
LABEL_34:
      v37 = v8;
      v39 = a2 + 32;
      v41 = v3 + 32;
      if (!v45)
      {
LABEL_35:
        if (v5 != *(v8 + 16))
        {
          goto LABEL_38;
        }

        return;
      }

      while (2)
      {
        if (v5 == sub_242F059B0())
        {
          return;
        }

LABEL_38:
        v47 = v6;
        if (v44)
        {
          v22 = MEMORY[0x245D270D0](v5, v3);
        }

        else
        {
          if (v5 >= *(v8 + 16))
          {
            goto LABEL_64;
          }

          v22 = *(v41 + 8 * v5);
        }

        v23 = v22;
        v24 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          goto LABEL_63;
        }

        if (v5 == v43)
        {

          return;
        }

        if (v5 >= v43)
        {
          goto LABEL_65;
        }

        v25 = (v39 + 16 * v5);
        v26 = *v25;
        v27 = v25[1];
        v28 = CTLineGetGlyphRuns(v22);
        v3 = sub_242F05310();

        if (v3 >> 62)
        {
          v29 = sub_242F059B0();
          if (!v29)
          {
            goto LABEL_55;
          }

LABEL_46:
          v49 = MEMORY[0x277D84F90];
          sub_242F05BA0();
          if (v29 < 0)
          {
            goto LABEL_67;
          }

          v30 = 0;
          do
          {
            if ((v3 & 0xC000000000000001) != 0)
            {
              MEMORY[0x245D270D0](v30, v3);
            }

            else
            {
              swift_unknownObjectRetain();
            }

            ++v30;
            type metadata accessor for CTRun(0);
            swift_dynamicCastUnknownClassUnconditional();
            sub_242F05B70();
            sub_242F05BB0();
            sub_242F05BC0();
            sub_242F05B80();
          }

          while (v29 != v30);

          v31 = v49;
          v8 = v37;
        }

        else
        {
          v29 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v29)
          {
            goto LABEL_46;
          }

LABEL_55:

          v31 = MEMORY[0x277D84F90];
        }

        v6 = v47;
        a2 = *(v47 + 16);
        v32 = *(v47 + 24);
        v3 = v42;
        if (a2 >= v32 >> 1)
        {
          sub_242E3BCF0((v32 > 1), a2 + 1, 1);
          v8 = v37;
          v6 = v47;
        }

        *(v6 + 16) = a2 + 1;
        v33 = (v6 + 24 * a2);
        v33[4] = v31;
        v33[5] = v26;
        v33[6] = v27;
        v5 = v24;
        if (!v45)
        {
          goto LABEL_35;
        }

        continue;
      }
    }

    v7 = 0;
    v44 = v3 & 0xC000000000000001;
    v8 = v3 & 0xFFFFFFFFFFFFFF8;
    v35 = v3 + 32;
    v34 = a2;
    v36 = v5;
    v38 = a2 + 32;
    while (1)
    {
      v9 = v45 ? sub_242F059B0() : *(v8 + 16);
      if (v7 == v9)
      {
        break;
      }

      if (v44)
      {
        v10 = MEMORY[0x245D270D0](v7, v3);
      }

      else
      {
        if (v7 >= *(v8 + 16))
        {
          goto LABEL_68;
        }

        v10 = *(v35 + 8 * v7);
      }

      v5 = v10;
      if (v7 == v43)
      {
        goto LABEL_71;
      }

      v11 = v8;
      v46 = v6;
      v12 = (v38 + 16 * v7);
      v13 = *v12;
      v14 = v12[1];
      v15 = CTLineGetGlyphRuns(v10);
      v16 = sub_242F05310();

      if (v16 >> 62)
      {
        v17 = sub_242F059B0();
        if (v17)
        {
LABEL_20:
          v48 = MEMORY[0x277D84F90];
          sub_242F05BA0();
          if (v17 < 0)
          {
            goto LABEL_66;
          }

          v40 = v5;
          v18 = 0;
          do
          {
            if ((v16 & 0xC000000000000001) != 0)
            {
              MEMORY[0x245D270D0](v18, v16);
            }

            else
            {
              swift_unknownObjectRetain();
            }

            ++v18;
            type metadata accessor for CTRun(0);
            swift_dynamicCastUnknownClassUnconditional();
            sub_242F05B70();
            sub_242F05BB0();
            sub_242F05BC0();
            sub_242F05B80();
          }

          while (v17 != v18);

          v19 = v48;
          v3 = v42;
          goto LABEL_29;
        }
      }

      else
      {
        v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v17)
        {
          goto LABEL_20;
        }
      }

      v19 = MEMORY[0x277D84F90];
LABEL_29:
      v8 = v11;
      v6 = v46;
      a2 = *(v46 + 16);
      v20 = *(v46 + 24);
      if (a2 >= v20 >> 1)
      {
        sub_242E3BCF0((v20 > 1), a2 + 1, 1);
        v8 = v11;
        v6 = v46;
      }

      *(v6 + 16) = a2 + 1;
      v21 = (v6 + 24 * a2);
      v21[4] = v19;
      ++v7;
      v21[5] = v13;
      v21[6] = v14;
      v5 = v36;
      if (v7 == v36)
      {
        a2 = v34;
        goto LABEL_34;
      }
    }

    __break(1u);
LABEL_63:
    __break(1u);
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
  }

  __break(1u);
LABEL_71:

  __break(1u);
}

uint64_t sub_242EB8B1C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFC0D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_242F0A4E0;
  v2 = *MEMORY[0x277D740A8];
  *(inited + 32) = *MEMORY[0x277D740A8];
  v3 = sub_242C8760C(0, &qword_27ECFC0D8);
  *(inited + 40) = v0;
  v4 = *MEMORY[0x277D740D8];
  *(inited + 64) = v3;
  *(inited + 72) = v4;
  v5 = sub_242C8760C(0, &qword_27ECF9578);
  v6 = v2;
  v7 = v0;
  v8 = v4;
  v9 = sub_242F057F0();
  *(inited + 104) = v5;
  *(inited + 80) = v9;
  sub_242CE6B34(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2220);
  swift_arrayDestroy();
  v10 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v11 = sub_242F04F00();
  type metadata accessor for Key(0);
  sub_242EBDC4C(&qword_27ECEFB38, type metadata accessor for Key);
  v12 = sub_242F04CC0();

  v13 = [v10 initWithString:v11 attributes:v12];

  v14 = CTFramesetterCreateWithAttributedString(v13);
  v21.width = 1.79769313e308;
  v19.location = 0;
  v19.length = 0;
  v21.height = 1.79769313e308;
  v15 = CTFramesetterSuggestFrameSizeWithConstraints(v14, v19, 0, v21, 0);
  v22.size.width = v15.width;
  v22.size.height = v15.height;
  v22.origin.x = 0.0;
  v22.origin.y = 0.0;
  v16 = CGPathCreateWithRect(v22, 0);
  v20.location = 0;
  v20.length = 0;
  Frame = CTFramesetterCreateFrame(v14, v20, v16, 0);

  CTFrameGetLines(Frame);
  objc_opt_self();
  swift_dynamicCastObjCClassUnconditional();
  type metadata accessor for CTLine(0);
  sub_242F052F0();
  __break(1u);
  __break(1u);
  result = sub_242F05C60();
  __break(1u);
  return result;
}

uint64_t UIFontDescriptorSystemDesign.name.getter()
{
  v0 = 0x746C7561666544;
  v1 = sub_242F04F30();
  v3 = v2;
  if (v1 == sub_242F04F30() && v3 == v4)
  {
    goto LABEL_16;
  }

  v6 = sub_242F06110();

  if (v6)
  {
    return v0;
  }

  v0 = 0x6669726553;
  v7 = sub_242F04F30();
  v9 = v8;
  if (v7 == sub_242F04F30() && v9 == v10)
  {
    goto LABEL_16;
  }

  v12 = sub_242F06110();

  if (v12)
  {
    return v0;
  }

  v0 = 0x6465646E756F52;
  v13 = sub_242F04F30();
  v15 = v14;
  if (v13 == sub_242F04F30() && v15 == v16)
  {
    goto LABEL_16;
  }

  v18 = sub_242F06110();

  if (v18)
  {
    return v0;
  }

  v0 = 0x636170736F6E6F4DLL;
  v19 = sub_242F04F30();
  v21 = v20;
  if (v19 == sub_242F04F30() && v21 == v22)
  {
LABEL_16:

    return v0;
  }

  v23 = sub_242F06110();

  if (v23)
  {
    return v0;
  }

  sub_242F05A80();

  v24 = sub_242F04F30();
  MEMORY[0x245D26660](v24);

  result = sub_242F05C60();
  __break(1u);
  return result;
}

uint64_t UIFontWeight.name.getter(double a1)
{
  if (*MEMORY[0x277D74438] == a1)
  {
    return 0x67694C6172746C55;
  }

  if (*MEMORY[0x277D74428] == a1)
  {
    return 1852401748;
  }

  if (*MEMORY[0x277D74408] == a1)
  {
    return 0x746867694CLL;
  }

  if (*MEMORY[0x277D74418] == a1)
  {
    return 0x72616C75676552;
  }

  if (*MEMORY[0x277D74410] == a1)
  {
    return 0x6D756964654DLL;
  }

  if (*MEMORY[0x277D74420] == a1)
  {
    return 0x646C6F62696D6553;
  }

  if (*MEMORY[0x277D743F8] == a1)
  {
    return 1684827970;
  }

  if (*MEMORY[0x277D74400] == a1)
  {
    return 0x7976616548;
  }

  if (*MEMORY[0x277D743E8] == a1)
  {
    return 0x6B63616C42;
  }

  sub_242F05A80();

  v2 = sub_242F05470();
  MEMORY[0x245D26660](v2);

  result = sub_242F05C60();
  __break(1u);
  return result;
}

uint64_t sub_242EB96E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D1>)
{
  v4 = v3;
  v6 = a2;
  v7 = *(a1 + 16);
  v8 = MEMORY[0x277D84F90];
  v43 = v7;
  if (v7)
  {
    v55 = MEMORY[0x277D84F90];
    sub_242E3BD70(0, v7, 0);
    v8 = v55;
    v10 = a1 + 32;
    do
    {
      v11 = *(v10 + 96);
      v52 = *(v10 + 80);
      v53 = v11;
      v54 = *(v10 + 112);
      v12 = *(v10 + 64);
      v50 = *(v10 + 48);
      v51 = v12;
      v13 = *(v10 + 32);
      v49[1] = *(v10 + 16);
      v49[2] = v13;
      v49[0] = *v10;
      v14 = *(&v52 + 1);
      v15 = v11;
      rect = v54;
      v16 = v49[0];
      v17 = v13;
      rect1 = *(&v13 + 1);
      v44 = v12;
      v47 = v50;
      sub_242EBD6A4(v49, v48);

      v56.origin.x = v14;
      *&v56.origin.y = v15;
      v56.size.height = rect;
      MaxY = CGRectGetMaxY(v56);
      *&v57.origin.x = v17;
      v57.size = v47;
      v58.origin.x = 0.0;
      v58.origin.y = 0.0;
      v58.size.width = 0.0;
      v58.size.height = 0.0;
      v57.origin.y = rect1;
      v19 = CGRectEqualToRect(v57, v58);
      sub_242EBD6DC(v49);
      v55 = v8;
      v21 = *(v8 + 16);
      v20 = *(v8 + 24);
      if (v21 >= v20 >> 1)
      {
        sub_242E3BD70((v20 > 1), v21 + 1, 1);
        v8 = v55;
      }

      *(v8 + 16) = v21 + 1;
      v22 = v8 + 104 * v21;
      *(v22 + 32) = v16;
      *(v22 + 48) = v14;
      *(v22 + 56) = a3 - MaxY;
      *&v23 = *(&v15 + 1);
      *&v24 = v17;
      *(&v23 + 1) = rect;
      *(&v24 + 1) = rect1;
      *(v22 + 64) = v23;
      *(v22 + 80) = v24;
      *(v22 + 96) = v47;
      *(v22 + 112) = v44;
      *(v22 + 128) = v19;
      v10 += 120;
      --v7;
    }

    while (v7);
    v4 = v3;
    v6 = a2;
  }

  if (*(v8 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2B20);
    v25 = sub_242F05CB0();
  }

  else
  {
    v25 = MEMORY[0x277D84F98];
  }

  *&v49[0] = v25;

  sub_242EBB004(v26, 1, v49);

  v27 = *&v49[0];
  Ascent = CTFontGetAscent(v4);
  Descent = CTFontGetDescent(v4);
  if (v43)
  {
    v30 = Descent;
    v31 = *(a1 + 112);
    v32 = [(__CTFont *)v4 fontDescriptor];
    v33 = [v32 symbolicTraits];

    v34 = sub_242D0C0E8();
    v35 = sub_242C7FC20(0x1000000000000050, 0x8000000242F5B550);
    v36 = v4;
    v37 = sub_242EBC3B8(v35, v35);

    if (*(v37 + 16))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2B28);
      v38 = sub_242F05CB0();
    }

    else
    {
      v38 = MEMORY[0x277D84F98];
    }

    *&v49[0] = v38;

    sub_242EBAC70(v39, 1, v49);

    v41 = *&v49[0];
    *v6 = v27;
    *(v6 + 8) = ceil(Ascent + v30);
    *(v6 + 16) = v31;
    *(v6 + 24) = (v33 & 0x400) != 0;
    *(v6 + 25) = v34 & 1;
    *(v6 + 32) = v41;
    *(v6 + 40) = 0;
  }

  else
  {
    __break(1u);
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

uint64_t sub_242EB9A78@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v30 = a1[1];
  *a3 = *a1;
  a3[1] = v30;
  v4 = a2 + 56;
  v5 = 1 << *(a2 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a2 + 56);
  v8 = (v5 + 63) >> 6;

  v32 = a2;

  v9 = 0;
  v27 = MEMORY[0x277D84F90];
  v28 = v8;
  v29 = v4;
LABEL_4:
  v10 = v9;
  if (!v7)
  {
    goto LABEL_6;
  }

  do
  {
    v9 = v10;
LABEL_9:
    v11 = (*(v32 + 48) + ((v9 << 10) | (16 * __clz(__rbit64(v7)))));
    v13 = *v11;
    v12 = v11[1];

    sub_242F04DE0();
    sub_242F04DE0();
    v31[0] = 0;
    v31[1] = 0xE000000000000000;
    sub_242F04DE0();
    v14 = sub_242EB8B1C();

    if (!*(v14 + 16))
    {
      goto LABEL_26;
    }

    v15 = *(v14 + 32);

    v16 = sub_242EB8B1C();

    if (!*(v16 + 16))
    {
LABEL_25:
      __break(1u);
LABEL_26:

      sub_242F05C60();
      __break(1u);
      goto LABEL_27;
    }

    v7 &= v7 - 1;
    v17 = *(v16 + 32);

    v18 = v17 - v15;
    if (v18 != 0.0)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v27 = sub_242C84900(0, v27[2] + 1, 1, v27);
      }

      v20 = v27[2];
      v19 = v27[3];
      if (v20 >= v19 >> 1)
      {
        v27 = sub_242C84900((v19 > 1), v20 + 1, 1, v27);
      }

      v27[2] = v20 + 1;
      v21 = &v27[3 * v20];
      *(v21 + 4) = v13;
      *(v21 + 5) = v12;
      v21[6] = v18;
      v8 = v28;
      v4 = v29;
      goto LABEL_4;
    }

    v10 = v9;
    v8 = v28;
    v4 = v29;
  }

  while (v7);
  while (1)
  {
LABEL_6:
    v9 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      __break(1u);
      goto LABEL_25;
    }

    if (v9 >= v8)
    {
      break;
    }

    v7 = *(v4 + 8 * v9);
    ++v10;
    if (v7)
    {
      goto LABEL_9;
    }
  }

  if (v27[2])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2B30);
    v22 = sub_242F05CB0();
  }

  else
  {
    v22 = MEMORY[0x277D84F98];
  }

  v31[0] = v22;

  sub_242EBB334(v23, 1, v31);
  if (!v25)
  {

    a3[2] = v31[0];
    return result;
  }

LABEL_27:
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

id sub_242EB9DF8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFC0D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_242F09530;
  v2 = *MEMORY[0x277D740A8];
  *(inited + 32) = *MEMORY[0x277D740A8];
  v3 = sub_242C8760C(0, &qword_27ECFC0D8);
  *(inited + 40) = v0;
  v4 = *MEMORY[0x277D740D8];
  *(inited + 64) = v3;
  *(inited + 72) = v4;
  v5 = sub_242C8760C(0, &qword_27ECF9578);
  v6 = v2;
  v7 = v0;
  v8 = v4;
  *(inited + 80) = sub_242F057F0();
  v9 = *MEMORY[0x277D740D0];
  *(inited + 104) = v5;
  *(inited + 112) = v9;
  v10 = MEMORY[0x277D83B88];
  v11 = MEMORY[0x277D740C0];
  *(inited + 120) = 0;
  v12 = *v11;
  *(inited + 144) = v10;
  *(inited + 152) = v12;
  v13 = objc_opt_self();
  v14 = v9;
  v15 = v12;
  v16 = [v13 whiteColor];
  v17 = [v16 CGColor];

  type metadata accessor for CGColor(0);
  *(inited + 184) = v18;
  *(inited + 160) = v17;
  sub_242CE6B34(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2220);
  swift_arrayDestroy();
  v19 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v20 = sub_242F04F00();
  type metadata accessor for Key(0);
  sub_242EBDC4C(&qword_27ECEFB38, type metadata accessor for Key);
  v21 = sub_242F04CC0();

  v22 = [v19 initWithString:v20 attributes:v21];

  return v22;
}

uint64_t sub_242EBA05C(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFC138);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v12 - v7;
  __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242EBDBF8();
  sub_242F064C0();
  v9 = v3[1];
  v14 = *v3;
  v15 = v9;
  v13 = 0;
  type metadata accessor for CGRect(0);
  sub_242EBDC4C(&qword_27ECF2330, type metadata accessor for CGRect);
  sub_242F05F20();
  if (!v2)
  {
    v11 = v3[3];
    v14 = v3[2];
    v15 = v11;
    v13 = 1;
    sub_242F05F20();
    v14 = v3[4];
    v13 = 2;
    type metadata accessor for CGSize(0);
    sub_242EBDC4C(&qword_27ECF58C8, type metadata accessor for CGSize);
    sub_242F05F20();
    LOBYTE(v14) = 3;
    sub_242F05ED0();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_242EBA2F8()
{
  v1 = 0x676E69646E756F62;
  v2 = 0x65636E61766461;
  if (*v0 != 2)
  {
    v2 = 0x7365746968577369;
  }

  if (!*v0)
  {
    v1 = 0xD000000000000012;
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

uint64_t sub_242EBA388@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_242EBE0BC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_242EBA3B0(uint64_t a1)
{
  v2 = sub_242EBDBF8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_242EBA3EC(uint64_t a1)
{
  v2 = sub_242EBDBF8();

  return MEMORY[0x2821FE720](a1, v2);
}

double sub_242EBA428@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_242EBCC50(a1, v7);
  if (!v2)
  {
    v5 = v7[3];
    *(a2 + 32) = v7[2];
    *(a2 + 48) = v5;
    *(a2 + 64) = v7[4];
    *(a2 + 80) = v8;
    result = *v7;
    v6 = v7[1];
    *a2 = v7[0];
    *(a2 + 16) = v6;
  }

  return result;
}

uint64_t sub_242EBA49C(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFC0E0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10 - v7;
  __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242EBD9AC();
  sub_242F064C0();
  v11 = *v3;
  HIBYTE(v10) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFC0F0);
  sub_242EBDA00();
  sub_242F05F20();
  if (!v2)
  {
    v11 = v3[1];
    HIBYTE(v10) = 1;
    sub_242C7DB7C();
    sub_242F05F20();
    v11 = v3[2];
    HIBYTE(v10) = 2;
    sub_242F05F20();
    LOBYTE(v11) = 3;
    sub_242F05ED0();
    LOBYTE(v11) = 4;
    sub_242F05ED0();
    v11 = v3[4];
    HIBYTE(v10) = 5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFC108);
    sub_242EBDAE0();
    sub_242F05F20();
    LOBYTE(v11) = 6;
    sub_242F05ED0();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_242EBA750()
{
  v1 = *v0;
  v2 = 0x6574636172616863;
  v3 = 0x54676E696E72656BLL;
  if (v1 != 5)
  {
    v3 = 0x656C62617473;
  }

  v4 = 0xD000000000000010;
  if (v1 != 3)
  {
    v4 = 0xD000000000000013;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x746867696568;
  if (v1 != 1)
  {
    v5 = 0x6769724F656E696CLL;
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

uint64_t sub_242EBA83C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_242EBE234(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_242EBA864(uint64_t a1)
{
  v2 = sub_242EBD9AC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_242EBA8A0(uint64_t a1)
{
  v2 = sub_242EBD9AC();

  return MEMORY[0x2821FE720](a1, v2);
}

double sub_242EBA8DC@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_242EBCF28(a1, &v6);
  if (!v2)
  {
    v5 = v7[0];
    *a2 = v6;
    a2[1] = v5;
    result = *(v7 + 9);
    *(a2 + 25) = *(v7 + 9);
  }

  return result;
}

uint64_t UIFontDescriptorSystemDesign.init(from:)(uint64_t a1)
{
  sub_242C6CF00(a1, v5);
  sub_242F04FE0();
  if (!v1)
  {
    v2 = sub_242F04F00();
  }

  __swift_destroy_boxed_opaque_existential_2Tm(a1);
  return v2;
}

uint64_t UIFontDescriptorSystemDesign.encode(to:)()
{
  sub_242F04F30();
  sub_242F05070();
}

uint64_t sub_242EBAA18@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_242C6CF00(a1, v7);
  sub_242F04FE0();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_2Tm(a1);
  }

  v6 = sub_242F04F00();

  result = __swift_destroy_boxed_opaque_existential_2Tm(a1);
  *a2 = v6;
  return result;
}

uint64_t sub_242EBAAA4()
{
  sub_242F04F30();
  sub_242F05070();
}

uint64_t UIFontWeight.encode(to:)(void *a1)
{
  __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242F064B0();
  __swift_mutable_project_boxed_opaque_existential_1(v2, v3);
  sub_242F06190();
  return __swift_destroy_boxed_opaque_existential_2Tm(v2);
}

void sub_242EBABB0(uint64_t a1@<X0>, double *a2@<X8>)
{
  v4 = sub_242EBD2B8(a1);
  if (!v2)
  {
    *a2 = v4;
  }
}

uint64_t sub_242EBABDC(void *a1)
{
  __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242F064B0();
  __swift_mutable_project_boxed_opaque_existential_1(v2, v3);
  sub_242F06190();
  return __swift_destroy_boxed_opaque_existential_2Tm(v2);
}

void sub_242EBAC70(void *a1, char a2, void *a3)
{
  v37 = a1[2];
  if (!v37)
  {
    goto LABEL_21;
  }

  LOBYTE(v5) = a2;
  v7 = a1[4];
  v6 = a1[5];
  v8 = a1[6];
  v9 = *a3;

  v10 = sub_242CE519C(v7, v6);
  v12 = v9[2];
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v16 = v11;
  if (v9[3] < v15)
  {
    sub_242D04780(v15, v5 & 1);
    v10 = sub_242CE519C(v7, v6);
    if ((v16 & 1) == (v17 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    v10 = sub_242F06320();
    __break(1u);
  }

  if (v5)
  {
LABEL_7:
    if (v16)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  v20 = v10;
  sub_242D01554();
  v10 = v20;
  if (v16)
  {
LABEL_8:
    v18 = swift_allocError();
    swift_willThrow();
    v19 = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27ECF1F50);
    if ((swift_dynamicCast() & 1) == 0)
    {

      return;
    }

    goto LABEL_26;
  }

LABEL_11:
  v21 = *a3;
  *(*a3 + 8 * (v10 >> 6) + 64) |= 1 << v10;
  v22 = (v21[6] + 16 * v10);
  *v22 = v7;
  v22[1] = v6;
  *(v21[7] + 8 * v10) = v8;
  v23 = v21[2];
  v14 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v14)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    sub_242F05A80();
    MEMORY[0x245D26660](0xD00000000000001BLL, 0x8000000242F59E10);
    sub_242F05C20();
    MEMORY[0x245D26660](39, 0xE100000000000000);
    sub_242F05C60();
    __break(1u);
    return;
  }

  v21[2] = v24;
  if (v37 != 1)
  {
    v5 = a1 + 9;
    v25 = 1;
    while (v25 < a1[2])
    {
      v7 = *(v5 - 2);
      v6 = *(v5 - 1);
      v8 = *v5;
      v26 = *a3;

      v27 = sub_242CE519C(v7, v6);
      v29 = v26[2];
      v30 = (v28 & 1) == 0;
      v14 = __OFADD__(v29, v30);
      v31 = v29 + v30;
      if (v14)
      {
        goto LABEL_23;
      }

      v16 = v28;
      if (v26[3] < v31)
      {
        sub_242D04780(v31, 1);
        v27 = sub_242CE519C(v7, v6);
        if ((v16 & 1) != (v32 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v16)
      {
        goto LABEL_8;
      }

      v33 = *a3;
      *(*a3 + 8 * (v27 >> 6) + 64) |= 1 << v27;
      v34 = (v33[6] + 16 * v27);
      *v34 = v7;
      v34[1] = v6;
      *(v33[7] + 8 * v27) = v8;
      v35 = v33[2];
      v14 = __OFADD__(v35, 1);
      v36 = v35 + 1;
      if (v14)
      {
        goto LABEL_24;
      }

      ++v25;
      v33[2] = v36;
      v5 += 3;
      if (v37 == v25)
      {
        goto LABEL_21;
      }
    }

    goto LABEL_25;
  }

LABEL_21:
}

void sub_242EBB004(uint64_t a1, char a2, void *a3)
{
  v3 = a1;
  v30 = *(a1 + 16);
  if (!v30)
  {
LABEL_17:

    return;
  }

  v5 = 0;
  v6 = 32;
  while (1)
  {
    if (v5 >= *(v3 + 16))
    {
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      sub_242F06320();
      __break(1u);
      goto LABEL_23;
    }

    v7 = *(v3 + v6 + 80);
    v41 = *(v3 + v6 + 64);
    v42 = v7;
    v8 = *(v3 + v6 + 48);
    v39 = *(v3 + v6 + 32);
    v40 = v8;
    v9 = *(v3 + v6 + 16);
    v38[0] = *(v3 + v6);
    v38[1] = v9;
    v10 = *(v3 + v6 + 96);
    v43 = v10;
    v11 = v42;
    v34 = v41;
    v35 = v40;
    v32 = v39;
    v33 = v9;
    v12 = v38[0];
    sub_242EBD72C(v38, v37);
    if (!*(&v12 + 1))
    {
      goto LABEL_17;
    }

    v31 = v6;
    v38[0] = v12;
    v13 = *a3;
    v14 = sub_242CE519C(v12, *(&v12 + 1));
    v16 = v13[2];
    v17 = (v15 & 1) == 0;
    v18 = __OFADD__(v16, v17);
    v19 = v16 + v17;
    if (v18)
    {
      goto LABEL_20;
    }

    v20 = v15;
    if (v13[3] >= v19)
    {
      break;
    }

    sub_242D04794(v19, a2 & 1);
    v14 = sub_242CE519C(v12, *(&v12 + 1));
    if ((v20 & 1) != (v21 & 1))
    {
      goto LABEL_22;
    }

LABEL_10:
    if (v20)
    {
      goto LABEL_15;
    }

LABEL_11:
    v22 = *a3;
    *(*a3 + 8 * (v14 >> 6) + 64) |= 1 << v14;
    *(v22[6] + 16 * v14) = v12;
    v23 = v22[7] + 88 * v14;
    *v23 = v33;
    *(v23 + 16) = v32;
    *(v23 + 32) = v35;
    *(v23 + 48) = v34;
    *(v23 + 64) = v11;
    *(v23 + 80) = v10;
    v24 = v22[2];
    v18 = __OFADD__(v24, 1);
    v25 = v24 + 1;
    if (v18)
    {
      goto LABEL_21;
    }

    ++v5;
    v22[2] = v25;
    v6 = v31 + 104;
    a2 = 1;
    v3 = a1;
    if (v30 == v5)
    {
      goto LABEL_17;
    }
  }

  if (a2)
  {
    goto LABEL_10;
  }

  v28 = v14;
  sub_242D01568();
  v14 = v28;
  if ((v20 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_15:
  v26 = swift_allocError();
  swift_willThrow();
  v44 = v26;
  v27 = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27ECF1F50);
  if ((swift_dynamicCast() & 1) == 0)
  {

    return;
  }

LABEL_23:
  v37[0] = 0;
  v37[1] = 0xE000000000000000;
  sub_242F05A80();
  MEMORY[0x245D26660](0xD00000000000001BLL, 0x8000000242F59E10);
  sub_242F05C20();
  MEMORY[0x245D26660](39, 0xE100000000000000);
  sub_242F05C60();
  __break(1u);
}

void sub_242EBB334(void *a1, char a2, void *a3)
{
  v4 = a1[2];
  if (!v4)
  {
    goto LABEL_21;
  }

  LOBYTE(v6) = a2;
  v8 = a1[4];
  v7 = a1[5];
  v9 = a1[6];
  v10 = *a3;

  v11 = sub_242CE519C(v8, v7);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v17 = v12;
  if (v10[3] < v16)
  {
    sub_242D08EA0(v16, v6 & 1);
    v11 = sub_242CE519C(v8, v7);
    if ((v17 & 1) == (v18 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    v11 = sub_242F06320();
    __break(1u);
  }

  if (v6)
  {
LABEL_7:
    if (v17)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  v21 = v11;
  sub_242D03C38();
  v11 = v21;
  if (v17)
  {
LABEL_8:
    v19 = swift_allocError();
    swift_willThrow();
    v20 = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27ECF1F50);
    if ((swift_dynamicCast() & 1) == 0)
    {

      return;
    }

    goto LABEL_25;
  }

LABEL_11:
  v22 = *a3;
  *(*a3 + 8 * (v11 >> 6) + 64) |= 1 << v11;
  v23 = (v22[6] + 16 * v11);
  *v23 = v8;
  v23[1] = v7;
  *(v22[7] + 8 * v11) = v9;
  v24 = v22[2];
  v15 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (!v15)
  {
    v22[2] = v25;
    if (v4 != 1)
    {
      v6 = a1 + 9;
      v26 = 1;
      while (v26 < a1[2])
      {
        v8 = *(v6 - 2);
        v7 = *(v6 - 1);
        v9 = *v6;
        v27 = *a3;

        v28 = sub_242CE519C(v8, v7);
        v30 = v27[2];
        v31 = (v29 & 1) == 0;
        v15 = __OFADD__(v30, v31);
        v32 = v30 + v31;
        if (v15)
        {
          goto LABEL_22;
        }

        v17 = v29;
        if (v27[3] < v32)
        {
          sub_242D08EA0(v32, 1);
          v28 = sub_242CE519C(v8, v7);
          if ((v17 & 1) != (v33 & 1))
          {
            goto LABEL_5;
          }
        }

        if (v17)
        {
          goto LABEL_8;
        }

        v34 = *a3;
        *(*a3 + 8 * (v28 >> 6) + 64) |= 1 << v28;
        v35 = (v34[6] + 16 * v28);
        *v35 = v8;
        v35[1] = v7;
        *(v34[7] + 8 * v28) = v9;
        v36 = v34[2];
        v15 = __OFADD__(v36, 1);
        v37 = v36 + 1;
        if (v15)
        {
          goto LABEL_23;
        }

        ++v26;
        v34[2] = v37;
        v6 += 3;
        if (v4 == v26)
        {
          goto LABEL_21;
        }
      }

      goto LABEL_24;
    }

LABEL_21:

    return;
  }

LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  sub_242F05A80();
  MEMORY[0x245D26660](0xD00000000000001BLL, 0x8000000242F59E10);
  sub_242F05C20();
  MEMORY[0x245D26660](39, 0xE100000000000000);
  sub_242F05C60();
  __break(1u);
}

uint64_t sub_242EBB6B0(CTRunRef *a1)
{
  v1 = *a1;
  CTRunGetGlyphCount(*a1);
  CTRunGetAttributes(v1);
  v3 = 0;
  sub_242F04CD0();
  __break(1u);

  __break(1u);
  return result;
}

void sub_242EBBB68(unint64_t a1)
{
  if (a1 >> 62)
  {
    goto LABEL_14;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_242F059B0())
  {
    v4 = 0;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x245D270D0](v4, a1);
      }

      else
      {
        if (v4 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_13;
        }

        v5 = *(a1 + 8 * v4 + 32);
      }

      v6 = v5;
      v7 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      v8 = v5;
      sub_242EBB6B0(&v8);

      if (!v1)
      {
        ++v4;
        if (v7 != i)
        {
          continue;
        }
      }

      return;
    }

    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    ;
  }
}

int64_t *sub_242EBBC7C(const __CTFrame *a1)
{
  v1 = a1;
  v25 = MEMORY[0x277D84F90];
  CTFrameGetLines(a1);
  objc_opt_self();
  swift_dynamicCastObjCClassUnconditional();
  type metadata accessor for CTLine(0);
  sub_242F052F0();
LABEL_19:
  __break(1u);
  do
  {
    v22 = sub_242F05C60();
    __break(1u);
    while (1)
    {
      v23 = v22;
      v2 = MEMORY[0x277D84F90];
      if (v22)
      {
        type metadata accessor for CGPoint(0);
        v2 = sub_242F05360();
        *(v2 + 16) = v23;
        bzero((v2 + 32), 16 * v23);
      }

      v26.location = 0;
      v26.length = 0;
      CTFrameGetLineOrigins(v1, v26, (v2 + 32));

      v1 = 0;
      sub_242EB858C(v3, v2);
      v5 = v4;

      v6 = *(v5 + 16);
      if (!v6)
      {
        break;
      }

      v7 = 0;
      v8 = v5 + 48;
      while (v7 < *(v5 + 16))
      {
        ++v7;
        v9 = *(v8 - 16);

        sub_242EBBB68(v9);

        v8 += 24;
        if (v6 == v7)
        {
          goto LABEL_8;
        }
      }

      __break(1u);
      v22 = sub_242F059B0();
      if (v22 < 0)
      {
        __break(1u);
        goto LABEL_19;
      }
    }

LABEL_8:

    v1 = v25;
    v10 = v25[2];
    if (v10)
    {
      v24 = MEMORY[0x277D84F90];

      sub_242E3BC70(0, v10, 0);
      v11 = v24;
      v12 = v25 + 5;
      v13 = v10;
      do
      {
        v15 = *(v12 - 1);
        v14 = *v12;
        v17 = *(v24 + 16);
        v16 = *(v24 + 24);

        if (v17 >= v16 >> 1)
        {
          sub_242E3BC70((v16 > 1), v17 + 1, 1);
        }

        *(v24 + 16) = v17 + 1;
        v18 = v24 + 16 * v17;
        *(v18 + 32) = v15;
        *(v18 + 40) = v14;
        v12 += 11;
        --v13;
      }

      while (v13);
    }

    else
    {

      v11 = MEMORY[0x277D84F90];
    }

    v19 = sub_242C86440(v11);

    v20 = *(v19 + 16);
  }

  while (v20 != v10);

  return v25;
}

double sub_242EBBF9C(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = MEMORY[0x277D84F90];
  if (v2)
  {
    v74 = MEMORY[0x277D84F90];
    sub_242E3BD30(0, v2, 0);
    v3 = v74;
    v4 = (a1 + 32);
    v5 = v2;
    do
    {
      v6 = v4[3];
      v70 = v4[2];
      v71 = v6;
      v72 = v4[4];
      v73 = *(v4 + 10);
      v7 = v4[1];
      v68 = *v4;
      *font = v7;
      v8 = v70;
      v9 = v71;
      sub_242EBD79C(&v68, &v62);
      v75.origin = v8;
      v75.size = v9;
      v10 = ceil(CGRectGetMaxX(v75)) - floor(v8.x);
      v11 = font[1];
      Ascent = CTFontGetAscent(font[1]);
      v76.size.height = ceil(Ascent + CTFontGetDescent(v11));
      v76.origin.x = 1.0;
      v76.origin.y = 1.0;
      v76.size.width = v10;
      v77 = CGRectInset(v76, -1.0, -1.0);
      x = v77.origin.x;
      y = v77.origin.y;
      width = v77.size.width;
      height = v77.size.height;
      sub_242EBD7D4(&v68);
      v74 = v3;
      v18 = *(v3 + 16);
      v17 = *(v3 + 24);
      if (v18 >= v17 >> 1)
      {
        sub_242E3BD30((v17 > 1), v18 + 1, 1);
        v3 = v74;
      }

      *(v3 + 16) = v18 + 1;
      v19 = (v3 + 32 * v18);
      v19[4] = x;
      v19[5] = y;
      v19[6] = width;
      v19[7] = height;
      v4 = (v4 + 88);
      --v5;
    }

    while (v5);
  }

  v20 = *(v3 + 16);
  if (v20)
  {
    v21 = (v3 + 56);
    v22 = 0.0;
    v23 = 0.0;
    do
    {
      v24 = *(v21 - 3);
      v25 = *(v21 - 2);
      v26 = *(v21 - 1);
      v27 = *v21;
      v78.origin.x = v24;
      v78.origin.y = v25;
      v78.size.width = v26;
      v78.size.height = *v21;
      MaxX = CGRectGetMaxX(v78);
      v79.origin.x = v24;
      v79.origin.y = v25;
      v79.size.width = v26;
      v79.size.height = v27;
      v29 = CGRectGetHeight(v79);
      if (v22 <= v29)
      {
        v22 = v29;
      }

      v23 = v23 + MaxX;
      v21 += 4;
      --v20;
    }

    while (v20);
  }

  else
  {
    v23 = 0.0;
    v22 = 0.0;
  }

  if (!v2)
  {
    return 1.0;
  }

  v60 = ceil(sqrt(v23 * v22));
  v74 = MEMORY[0x277D84F90];
  sub_242E3BD10(0, v2, 0);
  v30 = v74;
  v31 = (a1 + 32);
  v59 = v22 + 1.0;
  v61 = 1.0;
  v32 = 1.0;
  v33 = 1.0;
  v34 = 1.0;
  do
  {
    v35 = v31[3];
    v70 = v31[2];
    v71 = v35;
    v72 = v31[4];
    v73 = *(v31 + 10);
    v36 = v31[1];
    v68 = *v31;
    *font = v36;
    v37 = v70;
    v38 = v35;
    v39 = *(&v36 + 1);
    sub_242EBD79C(&v68, &v62);
    v80.origin = v37;
    v80.size = v38;
    v40 = ceil(CGRectGetMaxX(v80)) - floor(v37.x);
    v41 = CTFontGetAscent(v39);
    v81.size.height = ceil(v41 + CTFontGetDescent(v39));
    v81.origin.x = 1.0;
    v81.origin.y = 1.0;
    v81.size.width = v40;
    v82 = CGRectInset(v81, -1.0, -1.0);
    v83 = CGRectOffset(v82, v34, v33);
    v42 = v83.origin.x;
    v43 = v83.origin.y;
    v44 = v83.size.width;
    v45 = v83.size.height;
    v46 = CGRectGetMaxX(v83) + 1.0;
    if (v60 >= v46)
    {
      v34 = v46;
    }

    else
    {
      v33 = v59 + v33;
      v34 = 1.0;
    }

    v84.origin.x = v42;
    v84.origin.y = v43;
    v84.size.width = v44;
    v84.size.height = v45;
    v47 = CGRectGetMaxX(v84) + 1.0;
    if (v32 <= v47)
    {
      v32 = v47;
    }

    v85.origin.x = v42;
    v85.origin.y = v43;
    v85.size.width = v44;
    v85.size.height = v45;
    v48 = CGRectGetMaxY(v85) + 1.0;
    v49 = v61;
    if (v61 <= v48)
    {
      v49 = v48;
    }

    v61 = v49;
    v74 = v30;
    v51 = *(v30 + 16);
    v50 = *(v30 + 24);
    if (v51 >= v50 >> 1)
    {
      sub_242E3BD10((v50 > 1), v51 + 1, 1);
      v30 = v74;
    }

    v64 = v70;
    v65 = v71;
    v66 = v72;
    v67 = v73;
    v52 = v68;
    v62 = v68;
    v63 = *font;
    *(v30 + 16) = v51 + 1;
    v53 = v30 + 120 * v51;
    v54 = v67;
    v56 = v65;
    v55 = v66;
    *(v53 + 64) = v64;
    *(v53 + 80) = v56;
    *(v53 + 96) = v55;
    *(v53 + 112) = v54;
    v57 = v63;
    *(v53 + 32) = v52;
    *(v53 + 48) = v57;
    *(v53 + 120) = v42;
    *(v53 + 128) = v43;
    *(v53 + 136) = v44;
    *(v53 + 144) = v45;
    v31 = (v31 + 88);
    --v2;
  }

  while (v2);
  return v32;
}

uint64_t sub_242EBC3B8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  v4 = MEMORY[0x277D84F90];
  if (!v3)
  {
    return v4;
  }

  v5 = a1;
  v38 = MEMORY[0x277D84F90];
  sub_242E3BD50(0, v3, 0);
  v4 = v38;
  v6 = v5 + 56;
  v7 = sub_242F05940();
  v8 = 0;
  v31 = v5 + 64;
  v32 = v3;
  while ((v7 & 0x8000000000000000) == 0 && v7 < 1 << *(v5 + 32))
  {
    v10 = v7 >> 6;
    if ((*(v6 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
    {
      goto LABEL_22;
    }

    v34 = v8;
    v11 = *(v5 + 36);
    v12 = v5;
    v13 = (*(v5 + 48) + 16 * v7);
    v14 = v13[1];
    v35[0] = *v13;
    v35[1] = v14;

    sub_242EB9A78(v35, a2, &v36);
    if (v2)
    {
      goto LABEL_26;
    }

    v15 = v36;
    v16 = v37;
    v38 = v4;
    v18 = *(v4 + 16);
    v17 = *(v4 + 24);
    if (v18 >= v17 >> 1)
    {
      v30 = v37;
      v29 = v36;
      sub_242E3BD50((v17 > 1), v18 + 1, 1);
      v15 = v29;
      v16 = v30;
      v4 = v38;
    }

    *(v4 + 16) = v18 + 1;
    v19 = v4 + 24 * v18;
    *(v19 + 32) = v15;
    *(v19 + 40) = v16;
    v9 = 1 << *(v12 + 32);
    if (v7 >= v9)
    {
      goto LABEL_23;
    }

    v20 = *(v6 + 8 * v10);
    if ((v20 & (1 << v7)) == 0)
    {
      goto LABEL_24;
    }

    v5 = v12;
    v21 = v11;
    if (v11 != *(v12 + 36))
    {
      goto LABEL_25;
    }

    v22 = v20 & (-2 << (v7 & 0x3F));
    if (v22)
    {
      v9 = __clz(__rbit64(v22)) | v7 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v23 = v10 << 6;
      v24 = v10 + 1;
      v25 = (v31 + 8 * v10);
      while (v24 < (v9 + 63) >> 6)
      {
        v27 = *v25++;
        v26 = v27;
        v23 += 64;
        ++v24;
        if (v27)
        {
          sub_242C9E060(v7, v21, 0);
          v9 = __clz(__rbit64(v26)) + v23;
          goto LABEL_4;
        }
      }

      sub_242C9E060(v7, v21, 0);
    }

LABEL_4:
    v2 = 0;
    v8 = v34 + 1;
    v7 = v9;
    if (v34 + 1 == v32)
    {
      return v4;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:

  __break(1u);
  return result;
}

uint64_t sub_242EBC638(double a1, double a2)
{
  v2 = ceil(a1);
  if ((*&v2 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (v2 <= -9.22337204e18)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v2 >= 9.22337204e18)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v3 = ceil(a2);
  if ((*&v3 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (v3 <= -9.22337204e18)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v3 >= 9.22337204e18)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v4 = CGColorSpaceCreateWithName(*MEMORY[0x277CBF4B8]);
  if (v4)
  {
    v5 = v4;
    v6 = __CGBitmapContextCreate(v2, v3, v4);

    if (v6)
    {
      return v6;
    }
  }

LABEL_16:
  result = sub_242F05C60();
  __break(1u);
  return result;
}

id sub_242EBC770(uint64_t a1, double a2, double a3)
{
  v61 = sub_242F037C0();
  v6 = *(v61 - 8);
  MEMORY[0x28223BE20](v61);
  v60 = &v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_242EBC638(a2, a3);
  v9 = *(a1 + 16);
  if (!v9)
  {
    v12 = MEMORY[0x277D84F90];
    goto LABEL_16;
  }

  v10 = 0;
  v11 = a1 + 32;
  v12 = MEMORY[0x277D84F90];
  do
  {
    v13 = (v11 + 120 * v10);
    v14 = v10;
    while (1)
    {
      if (v14 >= v9)
      {
        __break(1u);
LABEL_24:
        __break(1u);
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      v15 = v13[4];
      v16 = v13[6];
      v68 = v13[5];
      v69 = v16;
      v17 = v13[1];
      v63 = *v13;
      v18 = v13[2];
      v19 = v13[3];
      v64 = v17;
      v65 = v18;
      v70 = *(v13 + 14);
      v66 = v19;
      v67 = v15;
      v10 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        goto LABEL_24;
      }

      v20 = v65;
      v21 = v66;
      sub_242EBD6A4(&v63, v62);
      v73.origin.x = 0.0;
      v73.origin.y = 0.0;
      v73.size.width = 0.0;
      v73.size.height = 0.0;
      v72.origin = v20;
      v72.size = v21;
      if (!CGRectEqualToRect(v72, v73))
      {
        break;
      }

      sub_242EBD6DC(&v63);
      ++v14;
      v13 = (v13 + 120);
      if (v10 == v9)
      {
        goto LABEL_16;
      }
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v71 = v12;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_242E3BD10(0, *(v12 + 16) + 1, 1);
      v12 = v71;
    }

    v24 = *(v12 + 16);
    v23 = *(v12 + 24);
    v25 = v12;
    if (v24 >= v23 >> 1)
    {
      sub_242E3BD10((v23 > 1), v24 + 1, 1);
      v25 = v71;
    }

    *(v25 + 16) = v24 + 1;
    v26 = v25 + 120 * v24;
    v27 = v63;
    v28 = v64;
    v29 = v66;
    *(v26 + 64) = v65;
    *(v26 + 80) = v29;
    *(v26 + 32) = v27;
    *(v26 + 48) = v28;
    v30 = v67;
    v31 = v68;
    v32 = v69;
    *(v26 + 144) = v70;
    *(v26 + 112) = v31;
    *(v26 + 128) = v32;
    *(v26 + 96) = v30;
    v12 = v25;
  }

  while (v10 != v9);
LABEL_16:
  v59 = *(v12 + 16);
  if (v59)
  {
    v33 = 0;
    v34 = (v12 + 32);
    v58 = *MEMORY[0x277CBF258];
    v57 = (v6 + 104);
    v35 = (v6 + 8);
    while (v33 < *(v12 + 16))
    {
      v36 = v12;
      v38 = v34[2];
      v37 = v34[3];
      v39 = *v34;
      v64 = v34[1];
      v65 = v38;
      v40 = *(v34 + 14);
      v41 = v34[6];
      v42 = v34[4];
      v68 = v34[5];
      v69 = v41;
      v63 = v39;
      v70 = v40;
      v66 = v37;
      v67 = v42;
      v43 = v64;
      v44 = *(&v64 + 1);
      x = v65.x;
      v46 = v68;
      v47 = *&v41;
      sub_242EBD6A4(&v63, v62);
      PathForGlyph = CTFontCreatePathForGlyph(v44, v43, 0);
      if (!PathForGlyph)
      {
        goto LABEL_26;
      }

      v49 = PathForGlyph;
      ++v33;
      CGContextSaveGState(v8);
      CGContextTranslateCTM(v8, *(&v46 + 1) + 1.0 - x, *&v46 + v47 + 1.0);
      GenericGray = CGColorCreateGenericGray(1.0, 1.0);
      CGContextSetFillColorWithColor(v8, GenericGray);

      CGContextAddPath(v8, v49);
      v51 = v60;
      v52 = v61;
      (*v57)(v60, v58, v61);
      sub_242F056D0();
      (*v35)(v51, v52);
      CGContextRestoreGState(v8);

      sub_242EBD6DC(&v63);
      v34 = (v34 + 120);
      v12 = v36;
      if (v59 == v33)
      {
        goto LABEL_21;
      }
    }

    goto LABEL_25;
  }

LABEL_21:

  Image = CGBitmapContextCreateImage(v8);
  if (!Image)
  {
    while (1)
    {
LABEL_26:
      sub_242F05C60();
      __break(1u);
    }
  }

  v54 = Image;
  v55 = [objc_allocWithZone(MEMORY[0x277D755B8]) initWithCGImage_];

  return v55;
}

uint64_t sub_242EBCC50@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFC128);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v14 - v7;
  __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242EBDBF8();
  sub_242F06480();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_2Tm(a1);
  }

  type metadata accessor for CGRect(0);
  v20 = 0;
  sub_242EBDC4C(&qword_27ECF23A0, type metadata accessor for CGRect);
  sub_242F05E00();
  v16 = v19;
  v17 = v18;
  v20 = 1;
  sub_242F05E00();
  v14 = v19;
  v15 = v18;
  type metadata accessor for CGSize(0);
  v20 = 2;
  sub_242EBDC4C(&qword_27ECF58D8, type metadata accessor for CGSize);
  sub_242F05E00();
  v9 = v18;
  LOBYTE(v18) = 3;
  v10 = sub_242F05DB0();
  (*(v6 + 8))(v8, v5);
  result = __swift_destroy_boxed_opaque_existential_2Tm(a1);
  v12 = v16;
  *a2 = v17;
  *(a2 + 16) = v12;
  v13 = v14;
  *(a2 + 32) = v15;
  *(a2 + 48) = v13;
  *(a2 + 64) = v9;
  *(a2 + 80) = v10 & 1;
  return result;
}

uint64_t sub_242EBCF28@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFC140);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v18 - v7;
  __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242EBD9AC();
  sub_242F06480();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_2Tm(a1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFC0F0);
  v20 = 0;
  sub_242EBDC94();
  sub_242F05E00();
  v9 = v21;
  v20 = 1;
  sub_242C7DBD0();
  sub_242F05E00();
  v10 = v21;
  v20 = 2;
  sub_242F05E00();
  v11 = v21;
  LOBYTE(v21) = 3;
  v12 = sub_242F05DB0();
  LOBYTE(v21) = 4;
  v19 = sub_242F05DB0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFC108);
  v20 = 5;
  sub_242EBDD74();
  sub_242F05E00();
  v18 = v21;
  LOBYTE(v21) = 6;
  v13 = sub_242F05DB0();
  (*(v6 + 8))(v8, v5);
  v14 = v12 & 1;
  v15 = v19 & 1;

  v16 = v18;

  __swift_destroy_boxed_opaque_existential_2Tm(a1);

  *a2 = v9;
  *(a2 + 8) = v10;
  *(a2 + 16) = v11;
  *(a2 + 24) = v14;
  *(a2 + 25) = v15;
  *(a2 + 32) = v16;
  *(a2 + 40) = v13 & 1;
  return result;
}

double sub_242EBD2B8(uint64_t a1)
{
  v4 = sub_242F05B00();
  v11[3] = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_242F05B10();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v12 = a1;
  sub_242C6CF00(a1, v14);
  __swift_project_boxed_opaque_existential_2Tm(v14, v14[3]);
  sub_242F06470();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_2Tm(v12);
  }

  else
  {
    v11[1] = v8;
    v11[2] = v6;
    __swift_project_boxed_opaque_existential_2Tm(v13, v13[3]);
    sub_242F06130();
    v2 = v9;
    __swift_destroy_boxed_opaque_existential_2Tm(v12);
    __swift_destroy_boxed_opaque_existential_2Tm(v13);
  }

  __swift_destroy_boxed_opaque_existential_2Tm(v14);
  return v2;
}

uint64_t sub_242EBD72C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF5598);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

__n128 __swift_memcpy81_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_242EBD848(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 81))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 80);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_242EBD89C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 80) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 81) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 81) = 0;
    }

    if (a2)
    {
      *(result + 80) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_242EBD908(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 41))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_242EBD950(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 41) = 1;
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

    *(result + 41) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_242EBD9AC()
{
  result = qword_27ECFC0E8;
  if (!qword_27ECFC0E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFC0E8);
  }

  return result;
}

unint64_t sub_242EBDA00()
{
  result = qword_27ECFC0F8;
  if (!qword_27ECFC0F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECFC0F0);
    sub_242EBDA8C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFC0F8);
  }

  return result;
}

unint64_t sub_242EBDA8C()
{
  result = qword_27ECFC100;
  if (!qword_27ECFC100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFC100);
  }

  return result;
}

unint64_t sub_242EBDAE0()
{
  result = qword_27ECFC110;
  if (!qword_27ECFC110)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECFC108);
    sub_242EBDB6C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFC110);
  }

  return result;
}

unint64_t sub_242EBDB6C()
{
  result = qword_27ECFC118;
  if (!qword_27ECFC118)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECFC120);
    sub_242C7DB7C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFC118);
  }

  return result;
}

unint64_t sub_242EBDBF8()
{
  result = qword_27ECFC130;
  if (!qword_27ECFC130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFC130);
  }

  return result;
}

uint64_t sub_242EBDC4C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_242EBDC94()
{
  result = qword_27ECFC148;
  if (!qword_27ECFC148)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECFC0F0);
    sub_242EBDD20();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFC148);
  }

  return result;
}

unint64_t sub_242EBDD20()
{
  result = qword_27ECFC150;
  if (!qword_27ECFC150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFC150);
  }

  return result;
}

unint64_t sub_242EBDD74()
{
  result = qword_27ECFC158;
  if (!qword_27ECFC158)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECFC108);
    sub_242EBDE00();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFC158);
  }

  return result;
}

unint64_t sub_242EBDE00()
{
  result = qword_27ECFC160;
  if (!qword_27ECFC160)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECFC120);
    sub_242C7DBD0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFC160);
  }

  return result;
}

unint64_t sub_242EBDEB0()
{
  result = qword_27ECFC168;
  if (!qword_27ECFC168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFC168);
  }

  return result;
}

unint64_t sub_242EBDF08()
{
  result = qword_27ECFC170;
  if (!qword_27ECFC170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFC170);
  }

  return result;
}

unint64_t sub_242EBDF60()
{
  result = qword_27ECFC178;
  if (!qword_27ECFC178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFC178);
  }

  return result;
}

unint64_t sub_242EBDFB8()
{
  result = qword_27ECFC180;
  if (!qword_27ECFC180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFC180);
  }

  return result;
}

unint64_t sub_242EBE010()
{
  result = qword_27ECFC188;
  if (!qword_27ECFC188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFC188);
  }

  return result;
}

unint64_t sub_242EBE068()
{
  result = qword_27ECFC190;
  if (!qword_27ECFC190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFC190);
  }

  return result;
}

uint64_t sub_242EBE0BC(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000012 && 0x8000000242F5D390 == a2 || (sub_242F06110() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x676E69646E756F62 && a2 == 0xEB00000000786F42 || (sub_242F06110() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x65636E61766461 && a2 == 0xE700000000000000 || (sub_242F06110() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7365746968577369 && a2 == 0xEC00000065636170)
  {

    return 3;
  }

  else
  {
    v5 = sub_242F06110();

    if (v5)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_242EBE234(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6574636172616863 && a2 == 0xEA00000000007372;
  if (v4 || (sub_242F06110() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x746867696568 && a2 == 0xE600000000000000 || (sub_242F06110() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6769724F656E696CLL && a2 == 0xEB00000000596E69 || (sub_242F06110() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000242F5D350 == a2 || (sub_242F06110() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000242F5D370 == a2 || (sub_242F06110() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x54676E696E72656BLL && a2 == 0xEC000000656C6261 || (sub_242F06110() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x656C62617473 && a2 == 0xE600000000000000)
  {

    return 6;
  }

  else
  {
    v6 = sub_242F06110();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

uint64_t Wallpaper.assets.getter()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[6];
  v4 = v0[7];
  v5 = v0[8];
  v6 = v0[9];
  v7 = v0[14];
  v8 = v7 >> 61;
  result = MEMORY[0x277D84F90];
  if ((v7 >> 61) > 2)
  {
    if (v8 == 3)
    {
      return result;
    }

    if (v8 == 4)
    {
      v21 = v0[13];
      v22 = v0[15];
      v19 = v0[11];
      v20 = v0[12];
      v18 = v0[10];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0200);
      v12 = swift_allocObject();
      *(v12 + 16) = xmmword_242F0A4E0;
      *(v12 + 56) = &type metadata for ImageAsset;
      *(v12 + 64) = &protocol witness table for ImageAsset;
      v13 = swift_allocObject();
      *(v12 + 32) = v13;
      *(v13 + 16) = v2;
      *(v13 + 24) = v1;
      *(v13 + 32) = v3;
      *(v13 + 40) = v4;
      *(v13 + 48) = v5;
      *(v13 + 56) = v6;
      *(v12 + 96) = &type metadata for ImageAsset;
      *(v12 + 104) = &protocol witness table for ImageAsset;
      v14 = swift_allocObject();
      *(v12 + 72) = v14;
      *(v14 + 16) = v18;
      *(v14 + 24) = v19;
      *(v14 + 32) = v20;
      *(v14 + 40) = v21;
      *(v14 + 48) = v7;
      *(v14 + 56) = v22;
      sub_242C7F6C4(v2, v1, v3, v4, v5);
      sub_242C7F6C4(v18, v19, v20, v21, v7);
      return v12;
    }
  }

  else
  {
    if (!v8)
    {
      return result;
    }

    if (v8 == 1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0200);
      v10 = swift_allocObject();
      *(v10 + 16) = xmmword_242F09510;
      *(v10 + 56) = &type metadata for ImageAsset;
      *(v10 + 64) = &protocol witness table for ImageAsset;
      v11 = swift_allocObject();
      *(v10 + 32) = v11;
      *(v11 + 16) = v2;
      *(v11 + 24) = v1;
      *(v11 + 32) = v3;
      *(v11 + 40) = v4;
      *(v11 + 48) = v5;
      *(v11 + 56) = v6;
      sub_242C7F6C4(v2, v1, v3, v4, v5);
      return v10;
    }
  }

  v15 = v2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0200);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_242F09510;
  *(v16 + 56) = &type metadata for CAPackageAsset;
  *(v16 + 64) = &protocol witness table for CAPackageAsset;
  v17 = swift_allocObject();
  result = v16;
  *(v16 + 32) = v17;
  v17[2] = v2;
  v17[3] = v1;
  v17[4] = v3;
  v17[5] = v4;
  v17[6] = v5;
  return result;
}

__n128 Wallpaper.restoreAssets(from:)(void *a1)
{
  v3 = v1;
  v5 = v1[4];
  v6 = v1[5];
  v7 = (v1 + 4);
  v9 = v1[6];
  v8 = v1[7];
  v10 = v1[8];
  v11 = v1[9];
  v12 = v1[10];
  v13 = v1[11];
  v15 = v1[12];
  v14 = v1[13];
  v17 = v1[14];
  v16 = v1[15];
  v18 = v17 >> 61;
  if ((v17 >> 61) <= 2)
  {
    if (!v18)
    {
      return result;
    }

    if (v18 == 1)
    {
      *&v93 = v5;
      *(&v93 + 1) = v6;
      *&v94 = v9;
      *(&v94 + 1) = v8;
      LOBYTE(v95) = v10;
      *(&v95 + 1) = v11;
      sub_242C7F6C4(v5, v6, v9, v8, v10);
      ImageAsset.restore(from:)(a1);
      if (v2)
      {
        sub_242C7F724(v93, *(&v93 + 1), v94, *(&v94 + 1), v95);
      }

      else
      {
        v45 = v95;
        v46 = *(&v95 + 1);
        v47 = v7[3];
        v101 = v7[2];
        v102 = v47;
        v48 = v7[5];
        v103 = v7[4];
        v104 = v48;
        v49 = v7[1];
        v99 = *v7;
        v100 = v49;
        sub_242EC31D8(&v99);
        result.n128_u64[0] = v93;
        v50 = v94;
        *(v3 + 2) = v93;
        *(v3 + 3) = v50;
        v3[8] = v45;
        v3[9] = v46;
        v3[14] = 0x2000000000000000;
      }

      return result;
    }

    v75 = v3;
    v105 = v10;
    v20 = v5;
    v73 = a1[3];
    *&v85 = v12;
    *(&v85 + 1) = v13;
    v81 = v14;
    v83 = v11;
    v21 = a1[4];
    v22 = v6;
    v77 = v15;
    v23 = v8;
    __swift_project_boxed_opaque_existential_2Tm(a1, v73);
    *&v89 = 1;
    v70 = *(v21 + 24);
    v78 = v22;
    v80 = v20;
    *&v99 = v20;
    *(&v99 + 1) = v22;
    v24 = v9;
    *&v100 = v9;
    *(&v100 + 1) = v23;
    *&v101 = v105;
    *(&v101 + 1) = v83;
    v102 = v85;
    *&v103 = v77;
    *(&v103 + 1) = v81;
    *&v104 = v17 & 0x1FFFFFFFFFFFFFFFLL;
    *(&v104 + 1) = v16;
    sub_242CA321C(&v99, &v93, &qword_27ECFC208);
    if (v70(&v89, v73, v21))
    {
      v25 = a1[3];
      v26 = a1[4];
      __swift_project_boxed_opaque_existential_2Tm(a1, v25);
      LOBYTE(v93) = 0;
      v27 = v78;
      v28 = (*(v26 + 8))(v78, v9, &v93, v25, v26);
      if (v2)
      {

LABEL_16:

        return result;
      }

      v52 = v28;

      v42 = v52;
      v41 = *(&v85 + 1);
    }

    else
    {
      v41 = *(&v85 + 1);
      v27 = v78;
      v42 = v80;
    }

    v53 = v7[3];
    v95 = v7[2];
    v96 = v53;
    v54 = v7[5];
    v97 = v7[4];
    v98 = v54;
    v55 = v7[1];
    v93 = *v7;
    v94 = v55;
    sub_242EC31D8(&v93);
    v56 = v75;
    v75[4] = v42;
    v75[5] = v27;
    v75[6] = v24;
    v75[7] = v23;
    v75[8] = v105;
    v75[9] = v83;
    v75[10] = v85;
    v75[11] = v41;
    v57 = 0x4000000000000000;
    goto LABEL_25;
  }

  if (v18 == 3)
  {
    return result;
  }

  if (v18 != 4)
  {
    v74 = v9;
    v76 = v3;
    v29 = a1[3];
    v30 = a1[4];
    v71 = v29;
    v31 = v5;
    v105 = v10;
    v72 = v30;
    v32 = a1;
    v33 = v6;
    v82 = v14;
    v84 = v11;
    v34 = v15;
    v35 = v8;
    v68 = a1;
    v36 = v12;
    __swift_project_boxed_opaque_existential_2Tm(v32, v29);
    *&v89 = 1;
    v69 = *(v72 + 24);
    v79 = v33;
    v80 = v31;
    *&v99 = v31;
    *(&v99 + 1) = v33;
    *&v100 = v74;
    *(&v100 + 1) = v35;
    *&v101 = v105;
    *(&v101 + 1) = v84;
    v86 = v36;
    *&v102 = v36;
    *(&v102 + 1) = v13;
    *&v103 = v34;
    *(&v103 + 1) = v82;
    *&v104 = v17 & 0x1FFFFFFFFFFFFFFFLL;
    *(&v104 + 1) = v16;
    sub_242CA321C(&v99, &v93, &qword_27ECFC1F8);
    if (v69(&v89, v71, v72))
    {
      v37 = v68[3];
      v38 = v68[4];
      __swift_project_boxed_opaque_existential_2Tm(v68, v37);
      LOBYTE(v93) = 0;
      v39 = v79;
      v40 = (*(v38 + 8))(v79, v74, &v93, v37, v38);
      if (v2)
      {

        goto LABEL_16;
      }

      v58 = v40;
      v43 = v74;

      v44 = v58;
    }

    else
    {
      v43 = v74;
      v39 = v33;
      v44 = v80;
    }

    v59 = v7[3];
    v95 = v7[2];
    v96 = v59;
    v60 = v7[5];
    v97 = v7[4];
    v98 = v60;
    v61 = v7[1];
    v93 = *v7;
    v94 = v61;
    sub_242EC31D8(&v93);
    v56 = v76;
    v76[4] = v44;
    v76[5] = v39;
    v76[6] = v43;
    v76[7] = v35;
    v76[8] = v105;
    v76[9] = v84;
    v76[10] = v86;
    v76[11] = v13;
    v76[12] = v34;
    v76[13] = v82;
    v57 = 0xA000000000000000;
LABEL_25:
    v56[14] = v57;
    return result;
  }

  *&v89 = v5;
  *(&v89 + 1) = v6;
  *&v90 = v9;
  *(&v90 + 1) = v8;
  v91 = v10;
  v92 = v11;
  v87.n128_u64[0] = v12;
  v87.n128_u64[1] = v13;
  v88 = v14;
  *&v99 = v5;
  *(&v99 + 1) = v6;
  *&v100 = v9;
  *(&v100 + 1) = v8;
  *&v101 = v10;
  *(&v101 + 1) = v11;
  *&v102 = v12;
  *(&v102 + 1) = v13;
  *&v103 = v15;
  *(&v103 + 1) = v14;
  *&v104 = v17 & 0x1FFFFFFFFFFFFFFFLL;
  *(&v104 + 1) = v16;
  v19 = v12;
  sub_242CA321C(&v99, &v93, &qword_27ECFC200);
  ImageAsset.restore(from:)(a1);
  if (v2)
  {
    sub_242C7F724(v19, v13, v15, v14, v17);
    sub_242C7F724(v89, *(&v89 + 1), v90, *(&v90 + 1), v91);
  }

  else
  {
    ImageAsset.restore(from:)(a1);
    v62 = v91;
    v63 = v92;
    v64 = v7[3];
    v95 = v7[2];
    v96 = v64;
    v65 = v7[5];
    v97 = v7[4];
    v98 = v65;
    v66 = v7[1];
    v93 = *v7;
    v94 = v66;
    sub_242EC31D8(&v93);
    v67 = v90;
    *(v3 + 2) = v89;
    *(v3 + 3) = v67;
    v3[8] = v62;
    v3[9] = v63;
    result = v87;
    *(v3 + 5) = v87;
    v3[12] = v15;
    v3[13] = v88;
    v3[14] = v17 & 0x81 | 0x8000000000000000;
    v3[15] = v16;
  }

  return result;
}

CarPlayAssetUI::Wallpaper::Traits __swiftcall Wallpaper.Traits.init(supportsDashBoardPlatterMaterials:iconLabelsRequireBackground:hideRoundedCorners:isBlack:)(Swift::Bool supportsDashBoardPlatterMaterials, Swift::Bool iconLabelsRequireBackground, Swift::Bool hideRoundedCorners, Swift::Bool isBlack)
{
  *v4 = supportsDashBoardPlatterMaterials;
  v4[1] = iconLabelsRequireBackground;
  v4[2] = hideRoundedCorners;
  v4[3] = isBlack;
  result.supportsDashBoardPlatterMaterials = supportsDashBoardPlatterMaterials;
  return result;
}

unint64_t sub_242EBEDC0()
{
  v1 = 0x6B63616C427369;
  if (*v0 == 2)
  {
    v1 = 0xD000000000000012;
  }

  v2 = 0xD00000000000001BLL;
  if (!*v0)
  {
    v2 = 0xD000000000000021;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_242EBEE44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_242EC4FC4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_242EBEE6C(uint64_t a1)
{
  v2 = sub_242EC3B44();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_242EBEEA8(uint64_t a1)
{
  v2 = sub_242EC3B44();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Wallpaper.Traits.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFC210);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v10 - v6;
  v10[6] = v1[1];
  v8 = v1[2];
  v10[2] = v1[3];
  v10[3] = v8;
  __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242EC3B44();
  sub_242F064C0();
  v14 = 0;
  sub_242F05ED0();
  if (v2)
  {
    return (*(v5 + 8))(v7, v4);
  }

  v13 = 1;
  sub_242F05ED0();
  v12 = 2;
  sub_242F05ED0();
  v11 = 3;
  sub_242F05ED0();
  return (*(v5 + 8))(v7, v4);
}

uint64_t Wallpaper.Traits.hash(into:)()
{
  sub_242F063B0();
  sub_242F063B0();
  sub_242F063B0();
  return sub_242F063B0();
}

uint64_t Wallpaper.Traits.hashValue.getter()
{
  sub_242F06390();
  sub_242F063B0();
  sub_242F063B0();
  sub_242F063B0();
  sub_242F063B0();
  return sub_242F063E0();
}

uint64_t Wallpaper.Traits.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFC220);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v14 - v7;
  __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242EC3B44();
  sub_242F06480();
  if (!v2)
  {
    v20 = 0;
    v9 = sub_242F05DB0();
    v19 = 1;
    v10 = sub_242F05DB0();
    v18 = 2;
    v16 = sub_242F05DB0();
    v17 = 3;
    v12 = sub_242F05DB0();
    v15 = v9 & 1;
    v13 = v16 & 1;
    (*(v6 + 8))(v8, v5);
    *a2 = v15;
    a2[1] = v10 & 1;
    a2[2] = v13;
    a2[3] = v12 & 1;
  }

  return __swift_destroy_boxed_opaque_existential_2Tm(a1);
}

uint64_t sub_242EBF400()
{
  sub_242F06390();
  sub_242F063B0();
  sub_242F063B0();
  sub_242F063B0();
  sub_242F063B0();
  return sub_242F063E0();
}

CarPlayAssetUI::Wallpaper::WallpaperType::PackageType_optional __swiftcall Wallpaper.WallpaperType.PackageType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_242F05CD0();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t Wallpaper.WallpaperType.PackageType.rawValue.getter()
{
  v1 = 0x70616373646E616CLL;
  if (*v0 != 1)
  {
    v1 = 0x706172676F706F74;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x746E656964617267;
  }
}

uint64_t sub_242EBF548(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x70616373646E616CLL;
  v4 = 0xE900000000000065;
  if (v2 != 1)
  {
    v3 = 0x706172676F706F74;
    v4 = 0xEA00000000007968;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x746E656964617267;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE800000000000000;
  }

  v7 = 0x70616373646E616CLL;
  v8 = 0xE900000000000065;
  if (*a2 != 1)
  {
    v7 = 0x706172676F706F74;
    v8 = 0xEA00000000007968;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x746E656964617267;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE800000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_242F06110();
  }

  return v11 & 1;
}

void sub_242EBF668(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE800000000000000;
  v4 = 0xE900000000000065;
  v5 = 0x70616373646E616CLL;
  if (v2 != 1)
  {
    v5 = 0x706172676F706F74;
    v4 = 0xEA00000000007968;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x746E656964617267;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_242EBF780()
{
  sub_242F06390();
  sub_242F04DD0();

  return sub_242F063E0();
}

uint64_t sub_242EBF82C()
{
  sub_242F04DD0();
}

uint64_t sub_242EBF8C4()
{
  sub_242F06390();
  sub_242F04DD0();

  return sub_242F063E0();
}

uint64_t sub_242EBF970()
{
  v1 = 1701869940;
  if (*v0 != 1)
  {
    v1 = 0x6574617473;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7465737361;
  }
}

uint64_t sub_242EBF9BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_242EC5130(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_242EBF9E4(uint64_t a1)
{
  v2 = sub_242EC3D3C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_242EBFA20(uint64_t a1)
{
  v2 = sub_242EC3D3C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_242EBFA5C()
{
  v1 = *v0;
  v2 = 0x726F6C6F63;
  v3 = 0x4363696D616E7964;
  v4 = 0x4963696D616E7964;
  if (v1 != 4)
  {
    v4 = 0xD000000000000010;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x6567616D69;
  if (v1 != 1)
  {
    v5 = 0x67616B6361706163;
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

uint64_t sub_242EBFB28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_242EC5240(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_242EBFB50(uint64_t a1)
{
  v2 = sub_242EC3B98();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_242EBFB8C(uint64_t a1)
{
  v2 = sub_242EC3B98();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_242EBFBC8(uint64_t a1)
{
  v2 = sub_242EC3DE4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_242EBFC04(uint64_t a1)
{
  v2 = sub_242EC3DE4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_242EBFC40()
{
  v1 = 0x7465737361;
  v2 = 0x646F4D746867696CLL;
  if (*v0 != 2)
  {
    v2 = 0x65646F4D6B726164;
  }

  if (*v0)
  {
    v1 = 1701869940;
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

uint64_t sub_242EBFCC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_242EC544C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_242EBFCF0(uint64_t a1)
{
  v2 = sub_242EC3BEC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_242EBFD2C(uint64_t a1)
{
  v2 = sub_242EC3BEC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_242EBFD68(uint64_t a1)
{
  v2 = sub_242EC3CE8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_242EBFDA4(uint64_t a1)
{
  v2 = sub_242EC3CE8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_242EBFDE0()
{
  if (*v0)
  {
    return 0x65646F4D6B726164;
  }

  else
  {
    return 0x646F4D746867696CLL;
  }
}

uint64_t sub_242EBFE20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x646F4D746867696CLL && a2 == 0xE900000000000065;
  if (v6 || (sub_242F06110() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x65646F4D6B726164 && a2 == 0xE800000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_242F06110();

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

uint64_t sub_242EBFF04(uint64_t a1)
{
  v2 = sub_242EC3C94();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_242EBFF40(uint64_t a1)
{
  v2 = sub_242EC3C94();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_242EBFF7C(uint64_t a1)
{
  v2 = sub_242EC3D90();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_242EBFFB8(uint64_t a1)
{
  v2 = sub_242EC3D90();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Wallpaper.WallpaperType.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFC228);
  v61 = *(v3 - 8);
  v62 = v3;
  MEMORY[0x28223BE20](v3);
  v60 = &v43 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFC230);
  v58 = *(v5 - 8);
  v59 = v5;
  MEMORY[0x28223BE20](v5);
  v57 = &v43 - v6;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFC238);
  v52 = *(v53 - 8);
  MEMORY[0x28223BE20](v53);
  v51 = &v43 - v7;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFC240);
  v55 = *(v56 - 8);
  MEMORY[0x28223BE20](v56);
  v54 = &v43 - v8;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFC248);
  v49 = *(v50 - 8);
  MEMORY[0x28223BE20](v50);
  v10 = &v43 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFC250);
  v48 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v43 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFC258);
  v70 = *(v14 - 8);
  v71 = v14;
  MEMORY[0x28223BE20](v14);
  v16 = &v43 - v15;
  v17 = *v1;
  v67 = v1[1];
  v68 = v17;
  v18 = v1[3];
  v64 = v1[2];
  v65 = v18;
  v19 = v1[5];
  v66 = v1[4];
  v63 = v19;
  v20 = v1[7];
  v46 = v1[6];
  v47 = v20;
  v21 = v1[9];
  v44 = v1[8];
  v45 = v21;
  v22 = v1[10];
  v43 = v1[11];
  __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242EC3B98();
  v23 = v16;
  sub_242F064C0();
  v24 = v22 >> 61;
  if ((v22 >> 61) > 2)
  {
    if (v24 == 3)
    {
      LOBYTE(v72) = 3;
      sub_242EC3CE8();
      v35 = v51;
      v28 = v71;
      v29 = v23;
      sub_242F05E40();
      v72 = v68;
      v73 = v67;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECEFEC0);
      sub_242C7C690(&qword_27ECEFEC8);
      v36 = v53;
      sub_242F05F20();
      (*(v52 + 8))(v35, v36);
    }

    else
    {
      v28 = v71;
      v29 = v23;
      if (v24 == 4)
      {
        LOBYTE(v72) = 4;
        sub_242EC3C94();
        v30 = v57;
        sub_242F05E40();
        v72 = v68;
        v73 = v67;
        v74 = v64;
        v75 = v65;
        LOBYTE(v76) = v66;
        v77 = v63;
        v78 = 0;
        sub_242C8B8E8();
        v31 = v59;
        v32 = v69;
        sub_242F05F20();
        if (!v32)
        {
          v72 = v46;
          v73 = v47;
          v74 = v44;
          v75 = v45;
          LOBYTE(v76) = v22;
          v77 = v43;
          v78 = 1;
          sub_242F05F20();
        }

        (*(v58 + 8))(v30, v31);
      }

      else
      {
        LOBYTE(v72) = 5;
        sub_242EC3BEC();
        v40 = v60;
        sub_242F05E40();
        v72 = v68;
        v73 = v67;
        v74 = v64;
        v75 = v65;
        v76 = v66;
        v78 = 0;
        sub_242D7D2E0();
        v41 = v62;
        v42 = v69;
        sub_242F05F20();
        if (!v42)
        {
          LOBYTE(v72) = v63;
          v78 = 1;
          sub_242EC3C40();
          sub_242F05F20();
          LOBYTE(v72) = 2;
          sub_242F05E50();
          LOBYTE(v72) = 3;
          sub_242F05E50();
        }

        (*(v61 + 8))(v40, v41);
      }
    }

    return (*(v70 + 8))(v29, v28);
  }

  else if (v24)
  {
    v25 = v16;
    if (v24 == 1)
    {
      LOBYTE(v72) = 1;
      sub_242EC3D90();
      v26 = v71;
      sub_242F05E40();
      v72 = v68;
      v73 = v67;
      v74 = v64;
      v75 = v65;
      LOBYTE(v76) = v66;
      v77 = v63;
      sub_242C8B8E8();
      v27 = v50;
      sub_242F05F20();
      (*(v49 + 8))(v10, v27);
    }

    else
    {
      LOBYTE(v72) = 2;
      sub_242EC3D3C();
      v37 = v54;
      v26 = v71;
      sub_242F05E40();
      v72 = v68;
      v73 = v67;
      v74 = v64;
      v75 = v65;
      v76 = v66;
      v78 = 0;
      sub_242D7D2E0();
      v38 = v56;
      v39 = v69;
      sub_242F05F20();
      if (!v39)
      {
        LOBYTE(v72) = v63;
        v78 = 1;
        sub_242EC3C40();
        sub_242F05F20();
        LOBYTE(v72) = 2;
        sub_242F05E50();
      }

      (*(v55 + 8))(v37, v38);
    }

    return (*(v70 + 8))(v25, v26);
  }

  else
  {
    LOBYTE(v72) = 0;
    sub_242EC3DE4();
    v33 = v71;
    sub_242F05E40();
    v72 = v68;
    sub_242C7C594();
    sub_242F05F20();
    (*(v48 + 8))(v13, v11);
    return (*(v70 + 8))(v16, v33);
  }
}