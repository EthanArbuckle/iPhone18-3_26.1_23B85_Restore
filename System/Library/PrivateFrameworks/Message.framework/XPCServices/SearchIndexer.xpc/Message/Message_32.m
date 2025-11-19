uint64_t sub_10020E62C(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 4;
  v11 = a3 - __src;
  v12 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 4;
  if (v10 < v12 >> 4)
  {
    if (a4 != __dst || &__dst[16 * v10] <= a4)
    {
      memmove(a4, __dst, 16 * v10);
    }

    v14 = &v4[16 * v10];
    if (v8 < 16)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_43;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v16 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (!v16 && (sub_1004A6D34() & 1) != 0)
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 16;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 16;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 16;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[16 * v13] <= a4)
  {
    memmove(a4, __src, 16 * v13);
  }

  v14 = &v4[16 * v13];
  if (v11 >= 16 && v6 > v7)
  {
LABEL_28:
    v17 = v6 - 16;
    v5 -= 16;
    v18 = v14;
    do
    {
      v19 = *(v18 - 2);
      v20 = *(v18 - 1);
      v18 -= 16;
      v21 = v19 == *(v6 - 2) && v20 == *(v6 - 1);
      if (!v21 && (sub_1004A6D34() & 1) != 0)
      {
        if (v5 + 16 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 16, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_43;
        }

        goto LABEL_28;
      }

      if (v5 + 16 != v14)
      {
        *v5 = *v18;
      }

      v5 -= 16;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_43:
  if (v6 != v4 || v6 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(v6, v4, 16 * ((v14 - v4) / 16));
  }

  return 1;
}

uint64_t sub_10020E854(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1004A6D34() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x43676E696E6E7572 && a2 == 0xEF73646E616D6D6FLL || (sub_1004A6D34() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6574617473 && a2 == 0xE500000000000000 || (sub_1004A6D34() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x69796C7265646E75 && a2 == 0xEA0000000000676ELL)
  {

    return 3;
  }

  else
  {
    v6 = sub_1004A6D34();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

unint64_t sub_10020E9BC()
{
  result = qword_1005D4EB0;
  if (!qword_1005D4EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D4EB0);
  }

  return result;
}

unint64_t sub_10020EA10()
{
  result = qword_1005D4EC0;
  if (!qword_1005D4EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D4EC0);
  }

  return result;
}

uint64_t sub_10020EA64(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C9C0(&qword_1005D3CD0, &qword_1004DDA58);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10020EB3C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UnauthenticatedStateWithTasks();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10020EBA0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10020EC08(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10020ECA0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_10020ECE8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_10020ED50()
{
  result = qword_1005D4ED0;
  if (!qword_1005D4ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D4ED0);
  }

  return result;
}

unint64_t sub_10020EDA8()
{
  result = qword_1005D4ED8;
  if (!qword_1005D4ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D4ED8);
  }

  return result;
}

unint64_t sub_10020EE00()
{
  result = qword_1005D4EE0;
  if (!qword_1005D4EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D4EE0);
  }

  return result;
}

unint64_t sub_10020EE58()
{
  result = qword_1005D4EE8;
  if (!qword_1005D4EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D4EE8);
  }

  return result;
}

unint64_t sub_10020EEB0()
{
  result = qword_1005D4EF0;
  if (!qword_1005D4EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D4EF0);
  }

  return result;
}

unint64_t sub_10020EF08()
{
  result = qword_1005D4EF8;
  if (!qword_1005D4EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D4EF8);
  }

  return result;
}

unint64_t sub_10020EF60()
{
  result = qword_1005D4F00;
  if (!qword_1005D4F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D4F00);
  }

  return result;
}

unint64_t sub_10020EFB8()
{
  result = qword_1005D4F08;
  if (!qword_1005D4F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D4F08);
  }

  return result;
}

unint64_t sub_10020F010()
{
  result = qword_1005D4F10;
  if (!qword_1005D4F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D4F10);
  }

  return result;
}

uint64_t sub_10020F064(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 6775156 && a2 == 0xE300000000000000;
  if (v3 || (sub_1004A6D34() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1684957547 && a2 == 0xE400000000000000 || (sub_1004A6D34() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 6645601 && a2 == 0xE300000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1004A6D34();

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

uint64_t sub_10020F17C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696C696261706163 && a2 == 0xEC00000073656974;
  if (v4 || (sub_1004A6D34() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4449726576726573 && a2 == 0xE800000000000000 || (sub_1004A6D34() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x614D64656C696166 && a2 == 0xED0000786F626C69 || (sub_1004A6D34() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001004AC270 == a2 || (sub_1004A6D34() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x64657463656C6573 && a2 == 0xEF786F626C69614DLL)
  {

    return 4;
  }

  else
  {
    v6 = sub_1004A6D34();

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

uint64_t sub_10020F348(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x697463656E6E6F63 && a2 == 0xEA0000000000676ELL;
  if (v4 || (sub_1004A6D34() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E65687475616E75 && a2 == 0xEF64657461636974 || (sub_1004A6D34() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x69746E6568747561 && a2 == 0xED00006465746163 || (sub_1004A6D34() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001004AB580 == a2 || (sub_1004A6D34() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x64656C696166 && a2 == 0xE600000000000000 || (sub_1004A6D34() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x656C6C65636E6163 && a2 == 0xE900000000000064)
  {

    return 5;
  }

  else
  {
    v6 = sub_1004A6D34();

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

unint64_t sub_10020F568()
{
  result = qword_1005D4F20;
  if (!qword_1005D4F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D4F20);
  }

  return result;
}

uint64_t sub_10020F5BC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 6645601 && a2 == 0xE300000000000000;
  if (v3 || (sub_1004A6D34() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6574617473 && a2 == 0xE500000000000000 || (sub_1004A6D34() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1752457584 && a2 == 0xE400000000000000 || (sub_1004A6D34() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x746E696F70646E65 && a2 == 0xE800000000000000 || (sub_1004A6D34() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 30574 && a2 == 0xE200000000000000)
  {

    return 4;
  }

  else
  {
    v6 = sub_1004A6D34();

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

unint64_t sub_10020F774()
{
  result = qword_1005D4F28;
  if (!qword_1005D4F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D4F28);
  }

  return result;
}

unint64_t sub_10020F7CC()
{
  result = qword_1005D4F30;
  if (!qword_1005D4F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D4F30);
  }

  return result;
}

unint64_t sub_10020F824()
{
  result = qword_1005D4F38;
  if (!qword_1005D4F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D4F38);
  }

  return result;
}

uint64_t sub_10020F894()
{
  v1 = *v0;
  v2 = *(v0 + 64);
  if (v2 > 2)
  {
    if (v2 == 3)
    {
      return 0x454C42414E45;
    }

    else if (v2 == 4)
    {
      return 0xD000000000000011;
    }

    else
    {
      v5 = *(v0 + 48);
      v4 = *(v0 + 56);
      v6 = *(v0 + 32);
      v7 = *(v0 + 40);
      v9 = *(v0 + 16);
      v8 = *(v0 + 24);
      if (v1._object | v1._countAndFlagsBits | v4 | v5 | v7 | v6 | v8 | v9)
      {
        if (v4 | v1._object | v5 | v7 | v6 | v8 | v9)
        {
          v10 = 0;
        }

        else
        {
          v10 = v1._countAndFlagsBits == 1;
        }

        if (v10)
        {
          return 0x534C545452415453;
        }

        else
        {
          return 0x53534552504D4F43;
        }
      }

      else
      {
        return 0x494C494241504143;
      }
    }
  }

  else if (*(v0 + 64))
  {
    if (v2 == 1)
    {
      sub_1004A5994(v1);
      return 0x2048545541;
    }

    else
    {
      return 17481;
    }
  }

  else
  {
    return 0x4E49474F4CLL;
  }
}

uint64_t sub_10020F9E8(uint64_t a1, int8x16_t *a2)
{
  v2 = *(a1 + 48);
  v7[2] = *(a1 + 32);
  v7[3] = v2;
  v8 = *(a1 + 64);
  v3 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v3;
  v4 = a2[3];
  v9[2] = a2[2];
  v9[3] = v4;
  v10 = a2[4].i8[0];
  v5 = a2[1];
  v9[0] = *a2;
  v9[1] = v5;
  return sub_10020FCF0(v7, v9) & 1;
}

unint64_t sub_10020FA48()
{
  result = qword_1005D4F40;
  if (!qword_1005D4F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D4F40);
  }

  return result;
}

uint64_t sub_10020FA9C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    v4 = (a2 + 40);
    do
    {
      v5 = *v4;
      if (*v3)
      {
        if (!v5)
        {
          return 0;
        }

        v6 = *(v3 - 1) == *(v4 - 1) && *v3 == v5;
        if (!v6 && (sub_1004A6D34() & 1) == 0)
        {
          return 0;
        }
      }

      else if (v5)
      {
        return 0;
      }

      v3 += 2;
      v4 += 2;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t sub_10020FB40(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (sub_1004A6D34() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

BOOL sub_10020FBD0(uint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v6 = HIDWORD(a2);
  if (HIDWORD(a2) - a2 != HIDWORD(a5) - a5)
  {
    return 0;
  }

  v7 = HIDWORD(a3);
  v8 = HIDWORD(a6);
  if (a3 == a6 && WORD2(a3) == WORD2(a6) && BYTE6(a3) == BYTE6(a6) && a1 == a4)
  {
    return 1;
  }

  v10 = a2;
  v12 = BYTE6(a3);
  v14 = a5;
  v15 = BYTE6(a6);
  swift_beginAccess();
  v16 = *(a1 + 24);
  swift_beginAccess();
  return memcmp((v16 + (v12 | (v7 << 8)) + v10), (*(a4 + 24) + (v15 | (v8 << 8)) + v14), v6 - v10) == 0;
}

uint64_t sub_10020FCF0(uint64_t a1, int8x16_t *a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  v7 = *(a1 + 32);
  v8 = *(a1 + 64);
  if (v8 > 2)
  {
    if (v8 != 3)
    {
      v17 = *(a1 + 40);
      v16 = *(a1 + 48);
      v18 = *(a1 + 56);
      if (v8 == 4)
      {
        v32[0] = v3;
        v32[1] = v4;
        v32[2] = v5;
        v32[3] = v6;
        v32[4] = v7;
        v32[5] = v17;
        v32[6] = v16;
        v32[7] = v18;
        if (a2[4].i8[0] == 4)
        {
          v19 = a2[1];
          v31[0] = *a2;
          v31[1] = v19;
          v20 = a2[3];
          v31[2] = a2[2];
          v31[3] = v20;
          v21 = static PushRegistrationInfo.__derived_struct_equals(_:_:)(v32, v31);
          return v21 & 1;
        }

        goto LABEL_47;
      }

      v27 = v5 | v4;
      v28 = v7 | v17 | v16;
      if (!(v27 | v3 | v6 | v28 | v18))
      {
        if (a2[4].i8[0] == 5)
        {
          v29 = vorrq_s8(vorrq_s8(*a2, a2[2]), vorrq_s8(a2[1], a2[3]));
          if (!*&vorr_s8(*v29.i8, *&vextq_s8(v29, v29, 8uLL)))
          {
            goto LABEL_45;
          }
        }

        goto LABEL_47;
      }

      if (v3 != 1 || v27 | v6 | v28 | v18)
      {
        if (a2[4].i8[0] != 5 || a2->i64[0] != 2)
        {
          goto LABEL_47;
        }
      }

      else if (a2[4].i8[0] != 5 || a2->i64[0] != 1)
      {
        goto LABEL_47;
      }

      v30 = vorrq_s8(a2[2], a2[3]);
      if (*&vorr_s8(*v30.i8, *&vextq_s8(v30, v30, 8uLL)) | a2[1].i64[1] | a2[1].i64[0] | a2->i64[1])
      {
LABEL_47:
        v21 = 0;
        return v21 & 1;
      }

LABEL_45:
      v21 = 1;
      return v21 & 1;
    }

    if (a2[4].i8[0] != 3)
    {
      goto LABEL_47;
    }

    v25 = a2->i64[0];

    return sub_1001CE84C(v3, v25);
  }

  else
  {
    if (*(a1 + 64))
    {
      if (v8 != 1)
      {
        if (a2[4].i8[0] == 2)
        {
          v26 = a2[1].i64[0];
          if (sub_10020FB40(v4, a2->i64[1]) & 1) != 0 && (sub_10020FA9C(v5, v26))
          {
            goto LABEL_45;
          }
        }

        goto LABEL_47;
      }

      if (a2[4].i8[0] != 1)
      {
        goto LABEL_47;
      }

      v9 = a2[1].i64[0];
      v10 = a2[1].i64[1];
      v11 = a2[2].u8[6];
      v12 = a2[2].u16[2];
      v13 = a2[2].u32[0];
      if ((v3 != a2->i64[0] || v4 != a2->i64[1]) && (sub_1004A6D34() & 1) == 0)
      {
        goto LABEL_47;
      }

      if (v5)
      {
        if (v9)
        {

          v15 = sub_10020FBD0(v14, v6, v7 & 0xFFFFFFFFFFFFFFLL, v9, v10, (v13 | ((v12 | (v11 << 16)) << 32)) & 0xFFFFFFFFFFFFFFLL);

          if (v15)
          {
            goto LABEL_45;
          }
        }

        goto LABEL_47;
      }

      if (v9)
      {
        goto LABEL_47;
      }

      goto LABEL_45;
    }

    if (a2[4].i8[0])
    {
      goto LABEL_47;
    }

    v22 = a2[1].i64[0];
    v23 = a2[1].i64[1];
    if ((v3 != a2->i64[0] || v4 != a2->i64[1]) && (sub_1004A6D34() & 1) == 0)
    {
      goto LABEL_47;
    }

    if (v5 == v22 && v6 == v23)
    {
      goto LABEL_45;
    }

    return sub_1004A6D34();
  }
}

uint64_t sub_100210008(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFB && *(a1 + 65))
  {
    return (*a1 + 251);
  }

  v3 = *(a1 + 64);
  if (v3 <= 5)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_100210050(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFA)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 - 251;
    if (a3 >= 0xFB)
    {
      *(result + 65) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFB)
    {
      *(result + 65) = 0;
    }

    if (a2)
    {
      *(result + 64) = -a2;
    }
  }

  return result;
}

uint64_t sub_1002100A8(uint64_t result, unsigned int a2)
{
  if (a2 >= 5)
  {
    *result = a2 - 5;
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *(result + 40) = 0u;
    *(result + 56) = 0;
    LOBYTE(a2) = 5;
  }

  *(result + 64) = a2;
  return result;
}

unint64_t sub_1002100F8()
{
  result = qword_1005D4F48;
  if (!qword_1005D4F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D4F48);
  }

  return result;
}

void *Timer.__allocating_init(queue:)(uint64_t a1)
{
  result = swift_allocObject();
  result[2] = 0;
  result[3] = 0;
  result[4] = 0;
  result[5] = a1;
  return result;
}

void *Timer.init(queue:)(uint64_t a1)
{
  v1[2] = 0;
  v1[3] = 0;
  v1[4] = 0;
  v1[5] = a1;
  return v1;
}

uint64_t Timer.deinit()
{
  if (*(v0 + 16))
  {

    sub_1004A53D4();
  }

  if (*(v0 + 24))
  {
    v1 = *(v0 + 24);
    swift_getObjectType();
    swift_unknownObjectRetain();
    sub_1004A6104();
    swift_unknownObjectRelease();
  }

  v2 = *(v0 + 16);

  v3 = *(v0 + 24);
  swift_unknownObjectRelease();

  return v0;
}

uint64_t Timer.__deallocating_deinit()
{
  if (*(v0 + 16))
  {

    sub_1004A53D4();
  }

  if (*(v0 + 24))
  {
    v1 = *(v0 + 24);
    swift_getObjectType();
    swift_unknownObjectRetain();
    sub_1004A6104();
    swift_unknownObjectRelease();
  }

  v2 = *(v0 + 16);

  v3 = *(v0 + 24);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t Timer.cancelPreviousAndAsync(after:closure:)(uint64_t a1, void *a2, uint64_t a3)
{
  v19 = a3;
  v4 = sub_1004A5234();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = (&v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_1004A53B4();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v19 - v15;
  sub_1004A5394();
  sub_1004A53A4();
  v17 = *(v10 + 8);
  v17(v13, v9);
  *v8 = 100;
  (*(v5 + 104))(v8, enum case for DispatchTimeInterval.milliseconds(_:), v4);
  Timer.cancelPreviousAndAsync(at:leeway:closure:)(v16, v8, a2, v19);
  (*(v5 + 8))(v8, v4);
  return (v17)(v16, v9);
}

uint64_t Timer.cancelPreviousAndAsync(at:leeway:closure:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = v4;
  v42 = a3;
  v43 = a4;
  v49 = a1;
  v50 = a2;
  v6 = sub_1004A5234();
  v48 = *(v6 - 8);
  v7 = *(v48 + 64);
  __chkstk_darwin(v6);
  v47 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1004A60A4();
  v45 = *(v9 - 8);
  v46 = v9;
  v10 = *(v45 + 64);
  __chkstk_darwin(v9);
  v44 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1004A5244();
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12);
  v14 = sub_1004A5274();
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v16 = sub_1004A53F4();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = __chkstk_darwin(v16);
  v21 = (&v42 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = v5[5];
  *v21 = v22;
  (*(v17 + 104))(v21, enum case for DispatchPredicate.onQueue(_:), v16, v19);
  v23 = v22;
  v24 = sub_1004A5404();
  result = (*(v17 + 8))(v21, v16);
  if (v24)
  {
    Timer.cancel()();
    v26 = v5[4];
    sub_1004A5264();
    v27 = swift_allocObject();
    swift_weakInit();
    v28 = swift_allocObject();
    v28[2] = v27;
    v28[3] = v26;
    v29 = v43;
    v28[4] = v42;
    v28[5] = v29;
    aBlock[4] = sub_100210D58;
    aBlock[5] = v28;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10019C778;
    aBlock[3] = &unk_1005A8D00;
    _Block_copy(aBlock);
    v51 = _swiftEmptyArrayStorage;
    sub_100210DC8(&qword_1005D4F50, &type metadata accessor for DispatchWorkItemFlags);

    v42 = v23;
    sub_10000C9C0(&unk_1005D91A0, &unk_1004DDA60);
    v43 = v6;
    sub_1000CBB00(&qword_1005D4F60, &unk_1005D91A0, &unk_1004DDA60);
    sub_1004A6544();
    v30 = sub_1004A53E4();
    v31 = *(v30 + 48);
    v32 = *(v30 + 52);
    swift_allocObject();
    v33 = sub_1004A53C4();

    sub_100210D7C();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_100210DC8(&unk_1005D4F70, &type metadata accessor for OS_dispatch_source.TimerFlags);
    sub_10000C9C0(&qword_1005D5510, &qword_1004E8DB0);
    sub_1000CBB00(&qword_1005D4F80, &qword_1005D5510, &qword_1004E8DB0);
    v34 = v44;
    v35 = v46;
    sub_1004A6544();
    v36 = sub_1004A60B4();
    (*(v45 + 8))(v34, v35);
    swift_getObjectType();
    sub_1004A60D4();
    v38 = v47;
    v37 = v48;
    v39 = v43;
    (*(v48 + 104))(v47, enum case for DispatchTimeInterval.never(_:), v43);
    sub_1004A6254();
    (*(v37 + 8))(v38, v39);
    sub_1004A6114();
    v40 = v5[2];
    v5[2] = v33;

    v41 = v5[3];
    v5[3] = v36;
    return swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100210A94(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v6 = *(result + 32);

    if (v6 == a2)
    {
      swift_beginAccess();
      Strong = swift_weakLoadStrong();
      if (Strong)
      {
        v8 = *(Strong + 16);
        *(Strong + 16) = 0;
      }

      return a3(Strong);
    }
  }

  return result;
}

Swift::Void __swiftcall Timer.cancel()()
{
  v1 = v0;
  v2 = sub_1004A53F4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = (&v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = v1[5];
  *v7 = v8;
  (*(v3 + 104))(v7, enum case for DispatchPredicate.onQueue(_:), v2, v5);
  v9 = v8;
  LOBYTE(v8) = sub_1004A5404();
  (*(v3 + 8))(v7, v2);
  if (v8)
  {
    if (v1[2])
    {
      v10 = v1[2];

      sub_1004A53D4();

      v11 = v1[2];
      v12 = 1;
    }

    else
    {
      v12 = v1[3] != 0;
    }

    v1[2] = 0;

    if (v1[3])
    {
      v13 = v1[3];
      swift_getObjectType();
      swift_unknownObjectRetain();
      sub_1004A6104();
      swift_unknownObjectRelease();
      v14 = v1[3];
    }

    v1[3] = 0;
    swift_unknownObjectRelease();
    if (v12)
    {
      ++v1[4];
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_100210CE0()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100210D18()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100210D64(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_100210D7C()
{
  result = qword_1005D5500;
  if (!qword_1005D5500)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1005D5500);
  }

  return result;
}

uint64_t sub_100210DC8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100210E34()
{
  v1 = v0;
  v2 = type metadata accessor for ConnectionState();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  v5 = &v15[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_100210F9C(v1, v5);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      sub_100211000(v5);
      return 7;
    }

    else if (EnumCaseMultiPayload == 4)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }

  else if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_100211000(v5);
      return 1;
    }

    else
    {
      memcpy(v15, v5, 0x162uLL);
      v8 = *(v5 + 21);
      v16[8] = *(v5 + 20);
      v16[9] = v8;
      v17 = *(v5 + 176);
      v9 = *(v5 + 17);
      v16[4] = *(v5 + 16);
      v16[5] = v9;
      v10 = *(v5 + 19);
      v16[6] = *(v5 + 18);
      v16[7] = v10;
      v11 = *(v5 + 13);
      v16[0] = *(v5 + 12);
      v16[1] = v11;
      v12 = *(v5 + 15);
      v16[2] = *(v5 + 14);
      v16[3] = v12;
      v13 = sub_1001ACFC0(v16);
      sub_1001AD074(v16);
      sub_1001ACFCC(v15);
      return (v13 + 2);
    }
  }

  else
  {
    sub_100211000(v5);
    return 0;
  }
}

uint64_t sub_100210F9C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ConnectionState();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100211000(uint64_t a1)
{
  v2 = type metadata accessor for ConnectionState();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10021105C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a3;
  *(v8 + 24) = a4;

  sub_1002110F8(a1, a2, sub_100214414, v8);
}

uint64_t sub_1002110F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = sub_1004A5244();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_1004A5274();
  v15 = *(v23 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v23);
  v18 = v22 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1005D2D60 != -1)
  {
    swift_once();
  }

  v22[1] = qword_1005D30F0;
  v19 = swift_allocObject();
  v19[2] = v5;
  v19[3] = a1;
  v19[4] = a2;
  v19[5] = a3;
  v19[6] = a4;
  aBlock[4] = sub_10021446C;
  aBlock[5] = v19;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10019C778;
  aBlock[3] = &unk_1005A8DF0;
  v20 = _Block_copy(aBlock);

  swift_unknownObjectRetain();
  swift_unknownObjectRetain();

  sub_1004A5254();
  v24 = _swiftEmptyArrayStorage;
  sub_100214AF8(&qword_1005D4F50, &type metadata accessor for DispatchWorkItemFlags);
  sub_10000C9C0(&unk_1005D91A0, &unk_1004DDA60);
  sub_1000CBB00(&qword_1005D4F60, &unk_1005D91A0, &unk_1004DDA60);
  sub_1004A6544();
  sub_1004A6084();
  _Block_release(v20);
  (*(v11 + 8))(v14, v10);
  (*(v15 + 8))(v18, v23);
}

uint64_t sub_100211418(uint64_t a1, uint64_t a2, uint64_t a3, void *aBlock)
{
  v7 = *(a1 + 32);
  v6 = *(a1 + 40);
  v8 = _Block_copy(aBlock);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;

  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v7(a2, a3, sub_10021438C, v9);

  swift_unknownObjectRelease();

  return swift_unknownObjectRelease();
}

uint64_t sub_1002114E4(int a1, sec_protocol_metadata_t metadata, NSObject *a3, uint64_t a4, uint64_t a5)
{
  negotiated_tls_protocol_version = sec_protocol_metadata_get_negotiated_tls_protocol_version(metadata);
  negotiated_tls_ciphersuite = sec_protocol_metadata_get_negotiated_tls_ciphersuite(metadata);
  if (sec_protocol_metadata_get_server_name(metadata))
  {
    v11 = sub_1004A59B4();
    v13 = v12;
  }

  else
  {
    v11 = 0;
    v13 = 0;
  }

  v14 = sec_trust_copy_ref(a3);
  sub_1002115AC(negotiated_tls_protocol_version | (negotiated_tls_ciphersuite << 16), v11, v13, v14, a4, a5);
}

uint64_t sub_1002115AC(unsigned int a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v35 = a5;
  v38 = a2;
  v11 = _s6LoggerVMa();
  v36 = *(v11 - 8);
  v12 = *(v36 + 64);
  __chkstk_darwin(v11 - 8);
  v37 = &v31[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = sub_1004A53F4();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = &v31[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_1005D2D60 != -1)
  {
    swift_once();
  }

  v18 = qword_1005D30F0;
  *v17 = qword_1005D30F0;
  (*(v14 + 104))(v17, enum case for DispatchPredicate.onQueue(_:), v13);
  v19 = v18;
  LOBYTE(v18) = sub_1004A5404();
  result = (*(v14 + 8))(v17, v13);
  if (v18)
  {
    v32 = HIWORD(a1);
    v21 = swift_allocObject();
    v21[2] = v6;
    v21[3] = a4;
    v21[4] = v35;
    v21[5] = a6;
    v34 = qword_1005DDFB8;
    v22 = *v6;
    v33 = a6;
    v23 = *(v22 + 136);
    v35 = qword_1005DDFA8;
    v24 = *(v6 + qword_1005DDFC0);
    v25 = v37;
    sub_1002143A4(v6 + qword_1005DDFB8, v37, _s6LoggerVMa);
    v26 = a4;
    v27 = (*(v36 + 80) + 64) & ~*(v36 + 80);
    v28 = swift_allocObject();
    *(v28 + 16) = sub_1002144C4;
    *(v28 + 24) = v21;
    *(v28 + 32) = v24;
    *(v28 + 40) = a1;
    *(v28 + 42) = v32;
    *(v28 + 48) = v38;
    *(v28 + 56) = a3;
    sub_1001993A4(v25, v28 + v27);
    v29 = *(v6 + v23);

    v30 = v26;

    sub_10021280C(v24, v6 + v35, v30, v6 + v34, sub_1002145D0, v28, v29);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1002118F4(void *a1, char a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  v9 = sub_1004A53F4();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = (&v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_1005D2D60 != -1)
  {
    swift_once();
  }

  v14 = qword_1005D30F0;
  *v13 = qword_1005D30F0;
  (*(v10 + 104))(v13, enum case for DispatchPredicate.onQueue(_:), v9);
  v15 = v14;
  LOBYTE(v14) = sub_1004A5404();
  result = (*(v10 + 8))(v13, v9);
  if (v14)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v17 = 0;
      }

      else
      {
        v17 = sub_100199788(*(v4 + qword_1005DDFB0), *(v4 + qword_1005DDFB0 + 8), v4 + qword_1005DDFB8);
        if (v17)
        {
          sub_100211B9C(a1, v17, v24, a3, a4);
          return swift_unknownObjectRelease();
        }
      }
    }

    else
    {
      if (*(v4 + qword_1005DDFC0) == 2)
      {
        v18 = sub_100199788(*(v4 + qword_1005DDFB0), *(v4 + qword_1005DDFB0 + 8), v4 + qword_1005DDFB8);
        if (v18)
        {
          v19 = *(v18 + 16);
          v20 = objc_allocWithZone(NSNumber);
          v21 = v19;
          v22 = [v20 initWithBool:1];
          v23 = sub_1004A5734();
          [v21 setAccountProperty:v22 forKey:v23];
          swift_unknownObjectRelease();
        }
      }

      v17 = 1;
    }

    return a3(v17);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_100211B9C(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void), uint64_t a5)
{
  v104 = a5;
  v103 = a4;
  v100 = a3;
  v101 = a1;
  v102 = _s6LoggerVMa();
  v98 = *(v102 - 8);
  v6 = *(v98 + 64);
  v7 = __chkstk_darwin(v102);
  v99 = &v95 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v7);
  v95 = &v95 - v9;
  v10 = __chkstk_darwin(v8);
  v96 = (&v95 - v11);
  v12 = __chkstk_darwin(v10);
  v14 = &v95 - v13;
  v15 = __chkstk_darwin(v12);
  v97 = &v95 - v16;
  v17 = __chkstk_darwin(v15);
  v19 = &v95 - v18;
  v20 = __chkstk_darwin(v17);
  v22 = &v95 - v21;
  __chkstk_darwin(v20);
  v106 = &v95 - v23;
  v24 = sub_1004A53F4();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  __chkstk_darwin(v24);
  v28 = (&v95 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_1005D2D60 != -1)
  {
    swift_once();
  }

  v29 = qword_1005D30F0;
  *v28 = qword_1005D30F0;
  (*(v25 + 104))(v28, enum case for DispatchPredicate.onQueue(_:), v24);
  v30 = v29;
  LOBYTE(v29) = sub_1004A5404();
  (*(v25 + 8))(v28, v24);
  if (v29)
  {
    v31 = v106;
    sub_1002143A4(v105 + qword_1005DDFB8, v106, _s6LoggerVMa);
    v32 = a2;
    v33 = *(a2 + 16);
    v34 = sub_1001994A0();

    if (v34)
    {
      sub_1002143A4(v31, v22, _s6LoggerVMa);
      sub_1002143A4(v31, v19, _s6LoggerVMa);
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      v35 = sub_1004A4A54();
      v36 = sub_1004A6014();
      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        v105 = swift_slowAlloc();
        v107[0] = v105;
        *v37 = 68158210;
        *(v37 + 4) = 2;
        *(v37 + 8) = 256;
        v38 = v102;
        v39 = v19[*(v102 + 20)];
        sub_100214A98(v19, _s6LoggerVMa);
        *(v37 + 10) = v39;
        *(v37 + 11) = 2082;
        v40 = *&v22[*(v38 + 20) + 4];
        sub_100214A98(v22, _s6LoggerVMa);
        v41 = ConnectionID.debugDescription.getter(v40);
        v43 = sub_10015BA6C(v41, v42, v107);

        *(v37 + 13) = v43;
        _os_log_impl(&_mh_execute_header, v35, v36, "[%.*hhx-%{public}s] Another certificate has already been trusted. Failing on certificate change.", v37, 0x15u);
        sub_1000197E0(v105);

LABEL_13:

LABEL_19:
        v103(0);
        sub_100214A98(v31, _s6LoggerVMa);
        return;
      }

      sub_100214A98(v19, _s6LoggerVMa);

      v58 = v22;
      goto LABEL_18;
    }

    v44 = *(a2 + 16);
    v45 = sub_100199598();

    if ((v45 & 1) == 0)
    {
      v59 = v96;
      sub_1002143A4(v31, v96, _s6LoggerVMa);
      v60 = v95;
      sub_1002143A4(v31, v95, _s6LoggerVMa);
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      v35 = sub_1004A4A54();
      v61 = sub_1004A6014();
      if (os_log_type_enabled(v35, v61))
      {
        v62 = swift_slowAlloc();
        v63 = swift_slowAlloc();
        v107[0] = v63;
        *v62 = 68158210;
        *(v62 + 4) = 2;
        *(v62 + 8) = 256;
        v64 = v102;
        v65 = *(v60 + *(v102 + 20));
        sub_100214A98(v60, _s6LoggerVMa);
        *(v62 + 10) = v65;
        *(v62 + 11) = 2082;
        v66 = *(v59 + *(v64 + 20) + 4);
        sub_100214A98(v59, _s6LoggerVMa);
        v67 = ConnectionID.debugDescription.getter(v66);
        v69 = sub_10015BA6C(v67, v68, v107);

        *(v62 + 13) = v69;
        _os_log_impl(&_mh_execute_header, v35, v61, "[%.*hhx-%{public}s] User (previously) denied untrusted certificate(s).", v62, 0x15u);
        sub_1000197E0(v63);

        goto LABEL_13;
      }

      sub_100214A98(v60, _s6LoggerVMa);

      v58 = v59;
LABEL_18:
      sub_100214A98(v58, _s6LoggerVMa);
      goto LABEL_19;
    }

    v46 = v97;
    sub_1002143A4(v31, v97, _s6LoggerVMa);
    sub_1002143A4(v31, v14, _s6LoggerVMa);
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    swift_unknownObjectRetain_n();
    v47 = sub_1004A4A54();
    v48 = sub_1004A6034();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = v46;
      v50 = swift_slowAlloc();
      v96 = swift_slowAlloc();
      v107[0] = v96;
      *v50 = 68158466;
      *(v50 + 4) = 2;
      *(v50 + 8) = 256;
      v51 = v102;
      v52 = v14[*(v102 + 20)];
      LODWORD(v95) = v48;
      sub_100214A98(v14, _s6LoggerVMa);
      *(v50 + 10) = v52;
      *(v50 + 11) = 2082;
      v53 = *(v49 + *(v51 + 20) + 4);
      sub_100214A98(v49, _s6LoggerVMa);
      v54 = ConnectionID.debugDescription.getter(v53);
      v56 = sub_10015BA6C(v54, v55, v107);

      *(v50 + 13) = v56;
      *(v50 + 21) = 1024;
      v57 = *(v32 + 16);
      LOBYTE(v56) = sub_100199598();
      swift_unknownObjectRelease();

      *(v50 + 23) = v56 & 1;
      swift_unknownObjectRelease();
      _os_log_impl(&_mh_execute_header, v47, v95, "[%.*hhx-%{public}s] [Prompt] Prompting user about untrusted certificate(s) (allowTrust: %{BOOL}d).", v50, 0x1Bu);
      sub_1000197E0(v96);
    }

    else
    {
      swift_unknownObjectRelease();
      sub_100214A98(v14, _s6LoggerVMa);

      swift_unknownObjectRelease();
      sub_100214A98(v46, _s6LoggerVMa);
    }

    v70 = v32;
    v71 = v105;
    v72 = *(*v105 + 136);
    v97 = sub_1001B6CEC();
    v102 = v73;
    v74 = *(v70 + 16);
    v75 = sub_100199598();

    v76 = v99;
    sub_1002143A4(v106, v99, _s6LoggerVMa);
    v77 = (*(v98 + 80) + 16) & ~*(v98 + 80);
    v78 = (v6 + v77 + 7) & 0xFFFFFFFFFFFFFFF8;
    v79 = swift_allocObject();
    sub_1001993A4(v76, v79 + v77);
    v80 = (v79 + v78);
    v81 = v100;
    *v80 = v70;
    v80[1] = v81;
    v82 = (v79 + ((v78 + 23) & 0xFFFFFFFFFFFFFFF8));
    v83 = v104;
    *v82 = v103;
    v82[1] = v83;
    v84 = *(v71 + v72);
    sub_10000C9C0(&qword_1005D51A8, &qword_1004E6C40);
    if (v75)
    {
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1004CEAA0;
      strcpy(v107, "showContinue");
      BYTE5(v107[1]) = 0;
      HIWORD(v107[1]) = -5120;
      swift_unknownObjectRetain();

      sub_1004A6674();
      v86 = [objc_allocWithZone(NSNumber) initWithBool:0];
      *(inited + 96) = sub_10019A8E4(0, &qword_1005D51B0, NSNumber_ptr);
      *(inited + 72) = v86;
      v87 = sub_100213AA4(inited);
      swift_setDeallocating();
      sub_100025F40(inited + 32, &qword_1005D51B8, &qword_1004F7780);
    }

    else
    {
      v88 = swift_initStackObject();
      *(v88 + 16) = xmmword_1004D01D0;
      strcpy(v107, "showContinue");
      BYTE5(v107[1]) = 0;
      HIWORD(v107[1]) = -5120;
      swift_unknownObjectRetain();

      sub_1004A6674();
      v89 = [objc_allocWithZone(NSNumber) initWithBool:0];
      v90 = sub_10019A8E4(0, &qword_1005D51B0, NSNumber_ptr);
      *(v88 + 96) = v90;
      *(v88 + 72) = v89;
      v107[0] = 0xD000000000000015;
      v107[1] = 0x80000001004AC3D0;
      sub_1004A6674();
      v91 = [objc_allocWithZone(NSNumber) initWithBool:0];
      *(v88 + 168) = v90;
      *(v88 + 144) = v91;
      v87 = sub_100213AA4(v88);
      swift_setDeallocating();
      sub_10000C9C0(&qword_1005D51B8, &qword_1004F7780);
      swift_arrayDestroy();
    }

    v92 = swift_allocObject();
    *(v92 + 16) = sub_100214C3C;
    *(v92 + 24) = v79;
    v93 = v101;
    v94 = v101;

    CertUITrustManager.showPrompt(hostname:service:trust:options:_:)(v97, v102, 0xD000000000000016, 0x80000001004AC3B0, v93, v87, sub_100214CEC, v92);

    sub_100214A98(v106, _s6LoggerVMa);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_10021280C(unsigned __int8 a1, uint64_t a2, __SecTrust *a3, uint64_t a4, uint64_t (*a5)(uint64_t), uint64_t (*a6)(uint64_t), uint64_t a7)
{
  v62 = a2;
  v63 = a7;
  v71 = a5;
  v72 = a6;
  v70 = a3;
  v8 = a1;
  v9 = sub_1004A5244();
  v68 = *(v9 - 8);
  v69 = v9;
  v10 = *(v68 + 64);
  __chkstk_darwin(v9);
  v66 = &v59 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = sub_1004A5274();
  v65 = *(v67 - 8);
  v12 = *(v65 + 64);
  __chkstk_darwin(v67);
  v14 = &v59 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = _s6LoggerVMa();
  v15 = *(v60 - 8);
  v16 = *(v15 + 64);
  v17 = __chkstk_darwin(v60);
  v61 = &v59 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v17);
  v64 = &v59 - v19;
  __chkstk_darwin(v18);
  v21 = &v59 - v20;
  v22 = sub_1004A4C04();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  __chkstk_darwin(v22);
  v25 = &v59 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v8 >= 2)
  {
    v64 = v14;
    if (qword_1005D2D60 != -1)
    {
      swift_once();
    }

    v61 = qword_1005D30F0;
    (*(v23 + 16))(&v59 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0), v62, v22);
    sub_1002143A4(a4, v21, _s6LoggerVMa);
    v48 = (*(v23 + 80) + 32) & ~*(v23 + 80);
    v49 = (v24 + *(v15 + 80) + v48) & ~*(v15 + 80);
    v50 = swift_allocObject();
    v51 = v70;
    *(v50 + 16) = v63;
    *(v50 + 24) = v51;
    (*(v23 + 32))(v50 + v48, v25, v22);
    sub_1001993A4(v21, v50 + v49);
    v52 = (v50 + ((v16 + v49 + 7) & 0xFFFFFFFFFFFFFFF8));
    v53 = v72;
    *v52 = v71;
    v52[1] = v53;
    v78 = sub_1002147D0;
    v79 = v50;
    aBlock = _NSConcreteStackBlock;
    v75 = 1107296256;
    v76 = sub_10019C778;
    v77 = &unk_1005A8E90;
    v54 = _Block_copy(&aBlock);

    v55 = v51;

    v56 = v64;
    sub_1004A5254();
    v73 = _swiftEmptyArrayStorage;
    sub_100214AF8(&qword_1005D4F50, &type metadata accessor for DispatchWorkItemFlags);
    sub_10000C9C0(&unk_1005D91A0, &unk_1004DDA60);
    sub_1000CBB00(&qword_1005D4F60, &unk_1005D91A0, &unk_1004DDA60);
    v57 = v66;
    v58 = v69;
    sub_1004A6544();
    sub_1004A6084();
    _Block_release(v54);
    (*(v68 + 8))(v57, v58);
    (*(v65 + 8))(v56, v67);
  }

  else
  {
    if (qword_1005D2D60 != -1)
    {
      swift_once();
    }

    v26 = qword_1005D30F0;
    sub_1002143A4(a4, v21, _s6LoggerVMa);
    v27 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    v28 = swift_allocObject();
    v29 = v71;
    v30 = a4;
    v31 = v72;
    *(v28 + 16) = v71;
    *(v28 + 24) = v31;
    sub_1001993A4(v21, v28 + v27);
    v32 = swift_allocObject();
    *(v32 + 16) = sub_1002149A4;
    *(v32 + 24) = v28;
    v78 = sub_100214A60;
    v79 = v32;
    aBlock = _NSConcreteStackBlock;
    v75 = 1107296256;
    v76 = sub_100213038;
    v77 = &unk_1005A8F08;
    v33 = _Block_copy(&aBlock);

    LODWORD(v26) = SecTrustEvaluateAsyncWithError(v70, v26, v33);
    _Block_release(v33);

    v35 = v64;
    if (v26)
    {
      sub_1002143A4(v30, v64, _s6LoggerVMa);
      v36 = v61;
      sub_1002143A4(v30, v61, _s6LoggerVMa);
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      v37 = sub_1004A4A54();
      v38 = sub_1004A6014();
      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        v40 = swift_slowAlloc();
        aBlock = v40;
        *v39 = 68158210;
        *(v39 + 4) = 2;
        *(v39 + 8) = 256;
        v41 = v60;
        v42 = v36;
        v43 = *(v36 + *(v60 + 20));
        sub_100214A98(v42, _s6LoggerVMa);
        *(v39 + 10) = v43;
        *(v39 + 11) = 2082;
        v44 = *(v35 + *(v41 + 20) + 4);
        sub_100214A98(v35, _s6LoggerVMa);
        v45 = ConnectionID.debugDescription.getter(v44);
        v47 = sub_10015BA6C(v45, v46, &aBlock);

        *(v39 + 13) = v47;
        _os_log_impl(&_mh_execute_header, v37, v38, "[%.*hhx-%{public}s] SecTrustEvaluateAsyncWithError() failed.", v39, 0x15u);
        sub_1000197E0(v40);
      }

      else
      {
        sub_100214A98(v36, _s6LoggerVMa);

        sub_100214A98(v35, _s6LoggerVMa);
      }

      return v29(5);
    }
  }

  return result;
}

void sub_100213038(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);

  v10 = a2;
  v9 = a4;
  v8(v10, a3, a4);
}

uint64_t sub_1002130CC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(unint64_t), uint64_t a6)
{
  v46[1] = a6;
  v47 = a5;
  v46[0] = _s6LoggerVMa();
  v8 = *(*(v46[0] - 8) + 64);
  v9 = __chkstk_darwin(v46[0]);
  v11 = v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v14 = v46 - v13;
  v15 = __chkstk_darwin(v12);
  v17 = v46 - v16;
  __chkstk_darwin(v15);
  v19 = v46 - v18;
  v20 = a2;
  v21 = sub_1001B6CEC();
  v23 = CertUITrustManager.rawTrustResult(forSSLTrust:hostname:service:)(a2, v21, v22, 0xD000000000000016, 0x80000001004AC3B0);

  if (v23 != 1)
  {
    sub_1002143A4(a4, v14, _s6LoggerVMa);
    sub_1002143A4(a4, v11, _s6LoggerVMa);
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    v35 = sub_1004A4A54();
    v36 = sub_1004A6034();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v48 = v38;
      *v37 = 68158466;
      *(v37 + 4) = 2;
      *(v37 + 8) = 256;
      v39 = v46[0];
      v40 = v11[*(v46[0] + 20)];
      sub_100214A98(v11, _s6LoggerVMa);
      *(v37 + 10) = v40;
      *(v37 + 11) = 2082;
      v41 = *&v14[*(v39 + 20) + 4];
      sub_100214A98(v14, _s6LoggerVMa);
      v42 = ConnectionID.debugDescription.getter(v41);
      v44 = sub_10015BA6C(v42, v43, &v48);

      *(v37 + 13) = v44;
      *(v37 + 21) = 1024;
      *(v37 + 23) = v23;
      _os_log_impl(&_mh_execute_header, v35, v36, "[%.*hhx-%{public}s] Got %u from CertUI.", v37, 0x1Bu);
      sub_1000197E0(v38);

      if (v23 >= 8)
      {
LABEL_7:
        v34 = 5;
        return v47(v34);
      }
    }

    else
    {
      sub_100214A98(v11, _s6LoggerVMa);

      sub_100214A98(v14, _s6LoggerVMa);
      if (v23 >= 8)
      {
        goto LABEL_7;
      }
    }

    v34 = 0x504030201050505uLL >> (8 * v23);
    return v47(v34);
  }

  sub_1002143A4(a4, v19, _s6LoggerVMa);
  sub_1002143A4(a4, v17, _s6LoggerVMa);
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  v24 = sub_1004A4A54();
  v25 = sub_1004A5FF4();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v48 = v27;
    *v26 = 68158466;
    *(v26 + 4) = 2;
    *(v26 + 8) = 256;
    v28 = v46[0];
    v29 = v17[*(v46[0] + 20)];
    sub_100214A98(v17, _s6LoggerVMa);
    *(v26 + 10) = v29;
    *(v26 + 11) = 2082;
    v30 = *&v19[*(v28 + 20) + 4];
    sub_100214A98(v19, _s6LoggerVMa);
    v31 = ConnectionID.debugDescription.getter(v30);
    v33 = sub_10015BA6C(v31, v32, &v48);

    *(v26 + 13) = v33;
    *(v26 + 21) = 1024;
    *(v26 + 23) = 1;
    _os_log_impl(&_mh_execute_header, v24, v25, "[%.*hhx-%{public}s] Got %u from CertUI.", v26, 0x1Bu);
    sub_1000197E0(v27);
  }

  else
  {
    sub_100214A98(v17, _s6LoggerVMa);

    sub_100214A98(v19, _s6LoggerVMa);
  }

  v34 = 0;
  return v47(v34);
}

uint64_t sub_1002135C0(uint64_t a1)
{
  v2 = sub_1004A4FB4();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  v5 = sub_1004A4FA4();
  v6 = sub_1004A4F94();
  sec_protocol_options_add_tls_application_protocol(v6, "imap");
  swift_unknownObjectRelease();
  v7 = sub_1004A4F94();
  v10[4] = sub_10021440C;
  v10[5] = a1;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 1107296256;
  v10[2] = sub_100211418;
  v10[3] = &unk_1005A8D78;
  v8 = _Block_copy(v10);

  if (qword_1005D2D60 != -1)
  {
    swift_once();
  }

  sec_protocol_options_set_verify_block(v7, v8, qword_1005D30F0);
  _Block_release(v8);
  swift_unknownObjectRelease();
  return v5;
}

uint64_t sub_100213738()
{
  v10 = sub_1004A6074();
  v0 = *(v10 - 8);
  v1 = *(v0 + 64);
  __chkstk_darwin(v10);
  v3 = v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1004A6064();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v6 = sub_1004A5274();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9[1] = sub_10019A8E4(0, &qword_1005D3248, OS_dispatch_queue_ptr);
  sub_1004A5254();
  v11 = _swiftEmptyArrayStorage;
  sub_100214AF8(&qword_1005D50B0, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_10000C9C0(&qword_1005D3250, &qword_1004F5CA0);
  sub_1000CBB00(&qword_1005D50C0, &qword_1005D3250, &qword_1004F5CA0);
  sub_1004A6544();
  (*(v0 + 104))(v3, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v10);
  result = sub_1004A6094();
  qword_1005D50A0 = result;
  return result;
}

unint64_t sub_100213998(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1004A6644(*(v2 + 40));

  return sub_1002139DC(a1, v4);
}

unint64_t sub_1002139DC(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_100214D64(*(v2 + 48) + 40 * v4, v8);
      v6 = sub_1004A6654();
      sub_100214DC0(v8);
      if (v6)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_100213AA4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000C9C0(&unk_1005D51C0, &qword_1004E6C48);
    v3 = sub_1004A6A74();
    v4 = a1 + 32;

    while (1)
    {
      sub_100214CF4(v4, v13);
      result = sub_100213998(v13);
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
      result = sub_10019A8D4(&v15, (v3[7] + 32 * result));
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

void sub_100213BC0(char a1, void *a2, void (*a3)(uint64_t), uint64_t a4, uint64_t a5)
{
  v9 = _s6LoggerVMa();
  v10 = *(*(v9 - 8) + 64);
  v11 = __chkstk_darwin(v9);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v11);
  v16 = &v34 - v15;
  if (a1)
  {
    v17 = 0;
LABEL_7:
    a3(v17);
    return;
  }

  if (!a2)
  {
    v17 = 1;
    goto LABEL_7;
  }

  v18 = v14;
  sub_1002143A4(a5, &v34 - v15, _s6LoggerVMa);
  sub_1002143A4(a5, v13, _s6LoggerVMa);
  v19 = a2;
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  v20 = v19;
  v21 = sub_1004A4A54();
  v22 = sub_1004A6014();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v35 = v22;
    v24 = v23;
    v34 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v37 = v36;
    *v24 = 68158466;
    *(v24 + 4) = 2;
    *(v24 + 8) = 256;
    v25 = v13[*(v18 + 20)];
    sub_100214A98(v13, _s6LoggerVMa);
    *(v24 + 10) = v25;
    *(v24 + 11) = 2082;
    v26 = *&v16[*(v18 + 20) + 4];
    sub_100214A98(v16, _s6LoggerVMa);
    v27 = ConnectionID.debugDescription.getter(v26);
    v29 = sub_10015BA6C(v27, v28, &v37);

    *(v24 + 13) = v29;
    *(v24 + 21) = 2112;
    type metadata accessor for CFError(0);
    sub_100214AF8(&qword_1005D5198, type metadata accessor for CFError);
    swift_allocError();
    *v30 = v20;
    v31 = v20;
    v32 = _swift_stdlib_bridgeErrorToNSError();
    *(v24 + 23) = v32;
    v33 = v34;
    *v34 = v32;
    _os_log_impl(&_mh_execute_header, v21, v35, "[%.*hhx-%{public}s] SecTrustEvaluateAsyncWithError() completed with error: %@", v24, 0x1Fu);
    sub_100025F40(v33, &qword_1005D51A0, &qword_1004D0940);

    sub_1000197E0(v36);
  }

  else
  {
    sub_100214A98(v13, _s6LoggerVMa);

    sub_100214A98(v16, _s6LoggerVMa);
  }

  a3(1);
}

uint64_t sub_100213F20(uint64_t a1, char a2, uint64_t a3)
{
  v6 = sub_1004A4C04();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = _s6LoggerVMa();
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for ConnectionConfiguration(0);
  v16 = v15 - 8;
  v17 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15);
  v19 = &v32 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1002143A4(a1, v19, type metadata accessor for ConnectionConfiguration);
  sub_1002143A4(a3, v14, _s6LoggerVMa);
  (*(v7 + 16))(v10, v19, v6);
  v20 = &v19[*(v16 + 44)];
  v22 = *v20;
  v21 = *(v20 + 1);
  v23 = qword_1005D2D68;

  if (v23 != -1)
  {
    swift_once();
  }

  v24 = qword_1005D30F8;

  sub_100214A98(v19, type metadata accessor for ConnectionConfiguration);
  v25 = sub_10000C9C0(&qword_1005D50C8, qword_1004E6C28);
  v26 = *(v25 + 48);
  v27 = *(v25 + 52);
  v28 = swift_allocObject();
  (*(v7 + 32))(v28 + qword_1005DDFA8, v10, v6);
  v29 = (v28 + qword_1005DDFB0);
  *v29 = v22;
  v29[1] = v21;
  *(v28 + qword_1005DDFC0) = a2;
  *(v28 + *(*v28 + 136)) = v24;
  sub_1001993A4(v14, v28 + qword_1005DDFB8);
  v30 = sub_1002135C0(v28);

  return v30;
}

uint64_t sub_1002141F8()
{
  v0 = sub_1004A4FB4();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  v3 = sub_1004A4FA4();
  v4 = sub_1004A4F94();
  sec_protocol_options_add_tls_application_protocol(v4, "imap");
  swift_unknownObjectRelease();
  v5 = sub_1004A4F94();
  sec_protocol_options_set_min_tls_protocol_version(v5, tls_protocol_version_TLSv10);
  swift_unknownObjectRelease();
  v6 = sub_1004A4F94();
  v9[4] = sub_10021370C;
  v9[5] = 0;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = sub_100211418;
  v9[3] = &unk_1005A8D28;
  v7 = _Block_copy(v9);
  if (qword_1005D2DB8 != -1)
  {
    swift_once();
  }

  sec_protocol_options_set_verify_block(v6, v7, qword_1005D50A0);
  _Block_release(v7);
  swift_unknownObjectRelease();
  return v3;
}

uint64_t sub_10021433C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100214354()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1002143A4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10021441C()
{
  v1 = v0[2];

  v2 = v0[3];
  swift_unknownObjectRelease();
  v3 = v0[4];
  swift_unknownObjectRelease();
  v4 = v0[6];

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10021447C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1002144C4(char a1)
{
  v3 = v1[4];
  v4 = v1[5];
  v5 = v1[3];
  v6 = v1[2];
  return sub_1002118F4(v5, a1, v3, v4);
}

uint64_t sub_1002144F4()
{
  v1 = *(_s6LoggerVMa() - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 64) & ~v2;
  v4 = *(v1 + 64);
  v5 = *(v0 + 24);

  v6 = *(v0 + 56);

  v7 = sub_1004A4A74();
  (*(*(v7 - 8) + 8))(v0 + v3, v7);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_1002145D0(int a1)
{
  v3 = *(_s6LoggerVMa() - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 40);
  v7 = *(v1 + 48);
  v8 = *(v1 + 56);
  v9 = *(v1 + 32);
  v10 = v1 + ((*(v3 + 80) + 64) & ~*(v3 + 80));

  return sub_100198974(a1, v4, v5, v9, v6, v7, v8, v10);
}

uint64_t sub_100214650()
{
  v1 = sub_1004A4C04();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(_s6LoggerVMa() - 8);
  v7 = *(v6 + 80);
  v8 = (v4 + v5 + v7) & ~v7;
  v9 = v3 | v7;
  v10 = (*(v6 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);
  v12 = sub_1004A4A74();
  (*(*(v12 - 8) + 8))(v0 + v8, v12);
  v13 = *(v0 + v10 + 8);

  return _swift_deallocObject(v0, v10 + 16, v9 | 7);
}

uint64_t sub_1002147D0()
{
  v1 = *(sub_1004A4C04() - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(_s6LoggerVMa() - 8);
  v5 = (v2 + v3 + *(v4 + 80)) & ~*(v4 + 80);
  v6 = v0 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8);
  v7 = *v6;
  v8 = *(v6 + 8);
  v9 = *(v0 + 16);
  v10 = *(v0 + 24);

  return sub_1002130CC(v9, v10, v0 + v2, v0 + v5, v7, v8);
}

uint64_t sub_1002148D0()
{
  v1 = *(_s6LoggerVMa() - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);
  v5 = *(v0 + 24);

  v6 = sub_1004A4A74();
  (*(*(v6 - 8) + 8))(v0 + v3, v6);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

void sub_1002149A4(uint64_t a1, char a2, void *a3)
{
  v6 = *(_s6LoggerVMa() - 8);
  v7 = *(v3 + 16);
  v8 = *(v3 + 24);
  v9 = v3 + ((*(v6 + 80) + 32) & ~*(v6 + 80));

  sub_100213BC0(a2, a3, v7, v8, v9);
}

uint64_t sub_100214A28()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100214A60(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = a1;
  return v2(&v5);
}

uint64_t sub_100214A98(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100214AF8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100214B40()
{
  v1 = *(_s6LoggerVMa() - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 23) & 0xFFFFFFFFFFFFFFF8;
  v6 = sub_1004A4A74();
  (*(*(v6 - 8) + 8))(v0 + v3, v6);
  v7 = *(v0 + v4);
  swift_unknownObjectRelease();
  v8 = *(v0 + v5 + 8);

  return _swift_deallocObject(v0, v5 + 16, v2 | 7);
}

uint64_t sub_100214C3C(char a1)
{
  v3 = *(_s6LoggerVMa() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v1 + v5);
  v8 = *v7;
  v9 = v7[1];
  v10 = *(v1 + v6);
  v11 = *(v1 + v6 + 8);

  return sub_10019835C(a1, v1 + v4, v8, v9, v10, v11);
}

uint64_t sub_100214CF4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C9C0(&qword_1005D51B8, &qword_1004F7780);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for UnauthenticatedState()
{
  result = qword_1005D5240;
  if (!qword_1005D5240)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100214E88()
{
  sub_1001922D4();
  if (v0 <= 0x3F)
  {
    sub_100214F50();
    if (v1 <= 0x3F)
    {
      type metadata accessor for Authenticator();
      if (v2 <= 0x3F)
      {
        sub_100214FA0();
        if (v3 <= 0x3F)
        {
          sub_100215014();
          if (v4 <= 0x3F)
          {
            swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_100214F50()
{
  if (!qword_1005D5250)
  {
    v0 = sub_1004A5CD4();
    if (!v1)
    {
      atomic_store(v0, &qword_1005D5250);
    }
  }
}

void sub_100214FA0()
{
  if (!qword_1005D5258)
  {
    sub_10000DEFC(&unk_1005D2FB0, &qword_1004DC9D8);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1005D5258);
    }
  }
}

void sub_100215014()
{
  if (!qword_1005D5260)
  {
    sub_10000DEFC(&unk_1005D2FB0, &qword_1004DC9D8);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_1005D5260);
    }
  }
}

uint64_t sub_100215090(uint64_t a1)
{
  v1 = *(a1 + 24) >> 6;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t sub_1002150AC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x3D && *(a1 + 25))
  {
    return (*a1 + 61);
  }

  v3 = (*(a1 + 24) & 0x3C | (*(a1 + 24) >> 6)) ^ 0x3F;
  if (v3 >= 0x3C)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1002150FC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x3C)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 61;
    if (a3 >= 0x3D)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0x3D)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 0;
      *(result + 24) = 4 * (((-a2 >> 2) & 0xF) - 16 * a2);
    }
  }

  return result;
}

uint64_t sub_100215168(uint64_t result, unsigned int a2)
{
  if (a2 < 3)
  {
    *(result + 24) = *(result + 24) & 3 | (a2 << 6);
  }

  else
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 3;
    *(result + 24) = -64;
  }

  return result;
}

uint64_t sub_1002151A8(uint64_t a1)
{
  v2 = -1 << *(a1 + 32);
  v3 = sub_1004A6554();
  if (v3 == 1 << *(a1 + 32))
  {
    return 0;
  }

  v5 = sub_10021DB74(v3, *(a1 + 36), 0, a1);

  return v5;
}

uint64_t sub_100215244()
{
  v1 = *v0;
  v2 = *(*v0 + 2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || (v4 = *(v1 + 3) >> 1, v4 < v2))
  {
    v1 = sub_10015BF20(isUniquelyReferenced_nonNull_native, v2, 1, v1);
    v4 = *(v1 + 3) >> 1;
  }

  v5 = *(v1 + 2);
  v6 = v4 - v5;
  if (v4 == v5)
  {
    v8 = 0;
    goto LABEL_17;
  }

  if (v6 < 1)
  {
    __break(1u);
LABEL_21:
    v14 = *(v1 + 2);
    sub_1004A6AA4();
    if ((v25 & 1) == 0)
    {
      v15 = v24;
LABEL_24:
      v16 = *(v1 + 3);
      v17 = v16 >> 1;
      if ((v16 >> 1) < v14 + 1)
      {
        v19 = v1;
        v20 = v15;
        v21 = sub_10015BF20((v16 > 1), v14 + 1, 1, v19);
        v15 = v20;
        v1 = v21;
        v17 = *(v21 + 3) >> 1;
      }

      if (v14 <= v17)
      {
        v18 = v17;
      }

      else
      {
        v18 = v14;
      }

      do
      {
        if (v18 == v14)
        {
          *(v1 + 2) = v18;
          v14 = v18;
          goto LABEL_24;
        }

        v1[v14++ + 32] = v15;
        sub_1004A6AA4();
        v15 = v22;
      }

      while ((v23 & 1) == 0);

      *(v1 + 2) = v14;
      goto LABEL_19;
    }

LABEL_18:

LABEL_19:
    *v0 = v1;
    return result;
  }

  result = sub_1004A6AA4();
  if (v27)
  {
    v8 = 0;
LABEL_12:
    if (!v8)
    {
LABEL_17:
      if (v8 != v6)
      {
        goto LABEL_18;
      }

      goto LABEL_21;
    }
  }

  else
  {
    v8 = 0;
    v9 = v26;
    v10 = ~v5 + v4;
    while (1)
    {
      v1[v5 + 32 + v8] = v9;
      if (v10 == v8)
      {
        break;
      }

      result = sub_1004A6AA4();
      v9 = v26;
      ++v8;
      if (v27)
      {
        goto LABEL_12;
      }
    }

    v8 = v6;
  }

  v11 = *(v1 + 2);
  v12 = __OFADD__(v11, v8);
  v13 = v11 + v8;
  if (!v12)
  {
    *(v1 + 2) = v13;
    goto LABEL_17;
  }

  __break(1u);
  return result;
}

uint64_t sub_100215418(uint64_t result, char *a2)
{
  v5 = &a2[-result];
  if (result)
  {
    v6 = &a2[-result];
  }

  else
  {
    v6 = 0;
  }

  v7 = *v2;
  v8 = *(*v2 + 16);
  v9 = v8 + v6;
  if (__OFADD__(v8, v6))
  {
    __break(1u);
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v4 = a2;
  v3 = result;
  v10 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (!result || (v11 = *(v7 + 24) >> 1, v11 < v9))
  {
    if (v8 <= v9)
    {
      v12 = v8 + v6;
    }

    else
    {
      v12 = v8;
    }

    result = sub_10015BF20(result, v12, 1, v7);
    v7 = result;
    v11 = *(result + 24) >> 1;
  }

  v13 = *(v7 + 16);
  v14 = v11 - v13;
  v15 = 0;
  if (v3 && v4 && v4 > v3 && v11 != v13)
  {
    if (v5 >= v14)
    {
      v15 = v11 - v13;
    }

    else
    {
      v15 = v5;
    }

    if (v15 < 0)
    {
      __break(1u);
      return result;
    }

    result = memmove((v7 + v13 + 32), v3, v15);
    v3 += v15;
  }

  if (v15 < v6)
  {
    goto LABEL_34;
  }

  if (!v15)
  {
    goto LABEL_24;
  }

  v16 = *(v7 + 16);
  v17 = __OFADD__(v16, v15);
  v18 = v16 + v15;
  if (!v17)
  {
    *(v7 + 16) = v18;
LABEL_24:
    if (v15 != v14 || v3 == 0 || v3 == v4)
    {
      goto LABEL_32;
    }

    goto LABEL_36;
  }

LABEL_35:
  __break(1u);
LABEL_36:
  v21 = *(v7 + 16);
  v24 = *v3;
  v22 = v3 + 1;
  v23 = v24;
  while (1)
  {
    v25 = *(v7 + 24);
    v26 = v25 >> 1;
    if ((v25 >> 1) < v21 + 1)
    {
      break;
    }

    if (v21 < v26)
    {
      goto LABEL_40;
    }

LABEL_37:
    *(v7 + 16) = v21;
  }

  result = sub_10015BF20((v25 > 1), v21 + 1, 1, v7);
  v7 = result;
  v26 = *(result + 24) >> 1;
  if (v21 >= v26)
  {
    goto LABEL_37;
  }

LABEL_40:
  v27 = v21 + 32;
  while (1)
  {
    *(v7 + v27) = v23;
    if (v22 == v4)
    {
      break;
    }

    v28 = *v22++;
    v23 = v28;
    if (++v27 - v26 == 32)
    {
      v21 = v26;
      goto LABEL_37;
    }
  }

  *(v7 + 16) = v27 - 31;
LABEL_32:
  *v2 = v7;
  return result;
}

uint64_t sub_1002155C8(unint64_t a1)
{
  v2 = v1;
  v4 = sub_10000C9C0(&qword_1005D4018, &qword_1004DFEA0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v29 - v7;
  sub_10000DF44(&qword_1005D4B40, &qword_1005D4018, &qword_1004DFEA0);
  result = sub_1004A5AE4();
  v10 = *v1;
  v11 = *(*v1 + 2);
  v12 = v11 + result;
  if (__OFADD__(v11, result))
  {
    __break(1u);
  }

  else
  {
    v13 = result;
    v14 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (!isUniquelyReferenced_nonNull_native || (v16 = *(v10 + 3) >> 1, v16 < v12))
    {
      if (v11 <= v12)
      {
        v17 = v12;
      }

      else
      {
        v17 = v11;
      }

      v10 = sub_10015BF20(isUniquelyReferenced_nonNull_native, v17, 1, v10);
      v16 = *(v10 + 3) >> 1;
    }

    v18 = v16 - *(v10 + 2);
    (*(v5 + 16))(v8, a1, v4);
    v19 = sub_1004A5AD4();
    result = (*(v5 + 8))(a1, v4);
    if (v19 >= v13)
    {
      if (v19 >= 1)
      {
        v20 = *(v10 + 2);
        v21 = __OFADD__(v20, v19);
        v22 = v20 + v19;
        if (v21)
        {
          __break(1u);
LABEL_20:
          v24 = v22;
          goto LABEL_21;
        }

        *(v10 + 2) = v22;
      }

      result = v29;
      if (v19 != v18)
      {
        goto LABEL_13;
      }

      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_16:
  v23 = *(result + 16);
  if (v30 == v23)
  {
LABEL_13:

    *v2 = v10;
    return result;
  }

  if (v30 >= v23)
  {
    goto LABEL_33;
  }

  v24 = *(v10 + 2);
  v19 = result + 32;
  LOBYTE(v4) = *(result + 32 + v30);
  a1 = v30 + 1;
  while (1)
  {
    v25 = *(v10 + 3);
    v22 = v25 >> 1;
    if ((v25 >> 1) < v24 + 1)
    {
      break;
    }

    if (v24 < v22)
    {
      goto LABEL_24;
    }

LABEL_21:
    *(v10 + 2) = v24;
  }

  v28 = result;
  v10 = sub_10015BF20((v25 > 1), v24 + 1, 1, v10);
  result = v28;
  v22 = *(v10 + 3) >> 1;
  if (v24 >= v22)
  {
    goto LABEL_21;
  }

LABEL_24:
  v26 = v24 + 32;
  while (1)
  {
    v10[v26] = v4;
    v27 = *(result + 16);
    if (a1 == v27)
    {
      *(v10 + 2) = v26 - 31;
      goto LABEL_13;
    }

    if (a1 >= v27)
    {
      break;
    }

    LOBYTE(v4) = *(v19 + a1++);
    if (++v26 - v22 == 32)
    {
      goto LABEL_20;
    }
  }

  __break(1u);
LABEL_33:
  __break(1u);
  return result;
}

uint64_t sub_1002158A0@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = *v3;
  v6 = *(*v3 + 16);
  v7 = v6 + a2;
  if (__OFADD__(v6, a2))
  {
    __break(1u);
  }

  else
  {
    v4 = result;
    v9 = *v3;
    result = swift_isUniquelyReferenced_nonNull_native();
    if (!result || (v10 = *(v5 + 24) >> 1, v10 < v7))
    {
      if (v6 <= v7)
      {
        v11 = v7;
      }

      else
      {
        v11 = v6;
      }

      result = sub_10015BF20(result, v11, 1, v5);
      v5 = result;
      v10 = *(result + 24) >> 1;
    }

    v12 = *(v5 + 16);
    v13 = v10 - v12;
    if (!a2 || v10 == v12)
    {
      a3 = &v4[a2];
      if (!v4)
      {
        a3 = 0;
      }

      if (a2 <= 0)
      {
        v14 = 0;
LABEL_22:
        if (v14 != v13 || v4 == 0 || v4 == a3)
        {
          goto LABEL_30;
        }

        goto LABEL_33;
      }
    }

    else
    {
      if (a2 >= v13)
      {
        v14 = v10 - v12;
      }

      else
      {
        v14 = a2;
      }

      result = memcpy((v5 + v12 + 32), v4, v14);
      if (v13 >= a2)
      {
        a3 = &v4[a2];
        if (v14 >= 1)
        {
          v15 = *(v5 + 16);
          v16 = __OFADD__(v15, v14);
          v17 = v15 + v14;
          if (v16)
          {
            __break(1u);
            return result;
          }

          *(v5 + 16) = v17;
        }

        v4 += v14;
        goto LABEL_22;
      }
    }
  }

  __break(1u);
LABEL_33:
  v20 = *(v5 + 16);
  v23 = *v4;
  v21 = v4 + 1;
  v22 = v23;
  while (1)
  {
    v24 = *(v5 + 24);
    v25 = v24 >> 1;
    if ((v24 >> 1) < v20 + 1)
    {
      break;
    }

    if (v20 < v25)
    {
      goto LABEL_37;
    }

LABEL_34:
    *(v5 + 16) = v20;
  }

  v28 = v5;
  v29 = a3;
  result = sub_10015BF20((v24 > 1), v20 + 1, 1, v28);
  a3 = v29;
  v5 = result;
  v25 = *(result + 24) >> 1;
  if (v20 >= v25)
  {
    goto LABEL_34;
  }

LABEL_37:
  v26 = v20 + 32;
  while (1)
  {
    *(v5 + v26) = v22;
    if (v21 == a3)
    {
      break;
    }

    v27 = *v21++;
    v22 = v27;
    if (++v26 - v25 == 32)
    {
      v20 = v25;
      goto LABEL_34;
    }
  }

  *(v5 + 16) = v26 - 31;
LABEL_30:
  *v3 = v5;
  return result;
}

uint64_t sub_100215A50(uint64_t result)
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
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= v3[3] >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v16 = v4 + v2;
  }

  else
  {
    v16 = v4;
  }

  v3 = sub_1001EBC34(isUniquelyReferenced_nonNull_native, v16, 1, v3);
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
  v9 = (v3[3] >> 1) - v3[2];
  result = type metadata accessor for CommandConnection.RecentErrors.Error(0);
  v10 = *(result - 8);
  if (v9 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v12 = *(v10 + 72);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v13 = v3[2];
  v14 = __OFADD__(v13, v2);
  v15 = v13 + v2;
  if (!v14)
  {
    v3[2] = v15;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_100215B7C(uint64_t result)
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
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_1001EC0F0(result, v11, 1, v3);
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
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_100215C70(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 56);
    do
    {
      v8 = *v7;
      v10 = *(v7 - 2);
      v9 = *(v7 - 1);
      v14[0] = *(v7 - 3);
      v14[1] = v10;
      v14[2] = v9;
      v15 = v8;

      v11 = a1(v14);

      if (v3)
      {
        break;
      }

      v12 = v6-- == 0;
      v7 += 32;
    }

    while (((v11 | v12) & 1) == 0);
  }

  else
  {
    LOBYTE(v11) = 0;
  }

  return v11 & 1;
}

uint64_t sub_100215D2C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 144);
  v13[8] = *(a1 + 128);
  v13[9] = v2;
  v13[10] = *(a1 + 160);
  v14 = *(a1 + 176);
  v3 = *(a1 + 80);
  v13[4] = *(a1 + 64);
  v13[5] = v3;
  v4 = *(a1 + 112);
  v13[6] = *(a1 + 96);
  v13[7] = v4;
  v5 = *(a1 + 16);
  v13[0] = *a1;
  v13[1] = v5;
  v6 = *(a1 + 48);
  v13[2] = *(a1 + 32);
  v13[3] = v6;
  v7 = *(a2 + 144);
  v15[8] = *(a2 + 128);
  v15[9] = v7;
  v15[10] = *(a2 + 160);
  v16 = *(a2 + 176);
  v8 = *(a2 + 80);
  v15[4] = *(a2 + 64);
  v15[5] = v8;
  v9 = *(a2 + 112);
  v15[6] = *(a2 + 96);
  v15[7] = v9;
  v10 = *(a2 + 16);
  v15[0] = *a2;
  v15[1] = v10;
  v11 = *(a2 + 48);
  v15[2] = *(a2 + 32);
  v15[3] = v11;
  return sub_10021D0C8(v13, v15) & 1;
}

uint64_t sub_100215DF8(uint64_t a1, unint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v78 = a3;
  v82 = a1;
  v8 = type metadata accessor for UnauthenticatedState();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v79 = &v75 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Authenticator();
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v81 = (&v75 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = _s6LoggerVMa();
  v15 = *(*(v14 - 8) + 64);
  v16 = __chkstk_darwin(v14);
  v18 = &v75 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v16);
  v21 = &v75 - v20;
  v22 = __chkstk_darwin(v19);
  v24 = &v75 - v23;
  __chkstk_darwin(v22);
  v26 = &v75 - v25;
  v80 = a5;
  if (a4)
  {
    v76 = v8;
    sub_1002201C8(a5, &v75 - v25, _s6LoggerVMa);
    sub_1002201C8(a5, v24, _s6LoggerVMa);
    sub_1000110B0(a2);

    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    v27 = v82;
    sub_10019782C(v82, v88);
    sub_1000110B0(a2);

    v28 = sub_1004A4A54();
    v29 = sub_1004A6014();
    sub_100193BF0(v27);
    sub_10001114C(a2);

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v77 = a2;
      v31 = v30;
      *&v88[0] = swift_slowAlloc();
      *v31 = 68158722;
      *(v31 + 4) = 2;
      *(v31 + 8) = 256;
      v32 = v24[*(v14 + 20)];
      sub_100220230(v24, _s6LoggerVMa);
      *(v31 + 10) = v32;
      *(v31 + 11) = 2082;
      v33 = *&v26[*(v14 + 20) + 4];
      sub_100220230(v26, _s6LoggerVMa);
      v34 = ConnectionID.debugDescription.getter(v33);
      v36 = sub_10015BA6C(v34, v35, v88);

      *(v31 + 13) = v36;
      *(v31 + 21) = 2082;
      v37 = v82;
      v38 = sub_1001EE5E8();
      v40 = sub_10015BA6C(v38, v39, v88);

      *(v31 + 23) = v40;
      *(v31 + 31) = 2082;
      v41 = ResponseText.debugDescription.getter(v77, v78, a4);
      v43 = sub_10015BA6C(v41, v42, v88);

      *(v31 + 33) = v43;
      _os_log_impl(&_mh_execute_header, v28, v29, "[%.*hhx-%{public}s] Authentication failed for mechanism '%{public}s': %{public}s", v31, 0x29u);
      swift_arrayDestroy();

      a2 = v77;

      sub_10001114C(a2);

      v44 = v37;
      goto LABEL_9;
    }

    sub_100220230(v24, _s6LoggerVMa);
    sub_10001114C(a2);

    sub_100220230(v26, _s6LoggerVMa);
  }

  else
  {
    v77 = a2;
    sub_1002201C8(a5, v21, _s6LoggerVMa);
    sub_1002201C8(a5, v18, _s6LoggerVMa);
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    v45 = v82;
    sub_10019782C(v82, v88);
    v46 = sub_1004A4A54();
    v47 = sub_1004A6014();
    sub_100193BF0(v45);
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v76 = v8;
      *&v88[0] = v49;
      *v48 = 68158466;
      *(v48 + 4) = 2;
      *(v48 + 8) = 256;
      v50 = v18[*(v14 + 20)];
      sub_100220230(v18, _s6LoggerVMa);
      *(v48 + 10) = v50;
      *(v48 + 11) = 2082;
      v51 = *&v21[*(v14 + 20) + 4];
      sub_100220230(v21, _s6LoggerVMa);
      v52 = ConnectionID.debugDescription.getter(v51);
      v54 = sub_10015BA6C(v52, v53, v88);

      *(v48 + 13) = v54;
      *(v48 + 21) = 2082;
      v55 = v82;
      v56 = sub_1001EE5E8();
      v58 = sub_10015BA6C(v56, v57, v88);

      *(v48 + 23) = v58;
      _os_log_impl(&_mh_execute_header, v46, v47, "[%.*hhx-%{public}s] Authentication failed for mechanism '%{public}s'.", v48, 0x1Fu);
      swift_arrayDestroy();

      a2 = v77;
      v44 = v55;
      goto LABEL_9;
    }

    sub_100220230(v18, _s6LoggerVMa);

    sub_100220230(v21, _s6LoggerVMa);
    a2 = v77;
  }

  v44 = v82;
LABEL_9:
  v59 = v79;
  sub_1002201C8(v83, v79, type metadata accessor for UnauthenticatedState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v61 = v80;
  if (EnumCaseMultiPayload != 2)
  {
    return sub_100220230(v59, type metadata accessor for UnauthenticatedState);
  }

  sub_100220230(v83, type metadata accessor for UnauthenticatedState);
  v62 = v59;
  v63 = v81;
  sub_100220160(v62, v81, type metadata accessor for Authenticator);
  v64 = sub_100195D34(v44, a2, v78, a4, v61);
  v65 = *v63;
  __chkstk_darwin(v64);
  *(&v75 - 2) = v63;
  sub_100195F08(sub_100191D20, v66, v84);
  v89 = v86;
  v90 = v87;
  v88[1] = v84[1];
  v88[2] = v85;
  v88[0] = v84[0];
  if ((~*(&v85 + 1) & 0x3000000000000000) != 0 || (*(&v89 + 1) & 0x1000000000000000) == 0)
  {
    sub_100025F40(v88, &qword_1005D2F38, &unk_1004DC8E0);
    sub_100220160(v81, v83, type metadata accessor for Authenticator);
  }

  else
  {
    v67 = v81;
    v68 = sub_100195004();
    v70 = v69;
    v72 = v71;
    sub_100220230(v67, type metadata accessor for Authenticator);
    v73 = v83;
    *v83 = v68;
    v73[1] = v70;
    v73[2] = v72;
    *(v73 + 24) = 0;
  }

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_100216684(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v115 = a1;
  v116 = a3;
  v114 = _s6LoggerVMa();
  v6 = *(*(v114 - 8) + 64);
  v7 = __chkstk_darwin(v114);
  v9 = &v109 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v12 = &v109 - v11;
  v13 = __chkstk_darwin(v10);
  v15 = &v109 - v14;
  v16 = __chkstk_darwin(v13);
  v18 = &v109 - v17;
  v19 = __chkstk_darwin(v16);
  v21 = &v109 - v20;
  v22 = __chkstk_darwin(v19);
  v24 = &v109 - v23;
  v25 = __chkstk_darwin(v22);
  v112 = &v109 - v26;
  v27 = __chkstk_darwin(v25);
  v113 = (&v109 - v28);
  v29 = __chkstk_darwin(v27);
  v110 = &v109 - v30;
  __chkstk_darwin(v29);
  v111 = &v109 - v31;
  v117 = v4;
  sub_100220230(v4, type metadata accessor for UnauthenticatedState);
  v33 = *a2;
  v32 = a2[1];
  v34 = a2[2];
  v35 = *a2 >> 62;
  if (v35)
  {
    if (v35 == 1)
    {
      v36 = v116;
      v37 = v24;
      sub_1002201C8(v116, v24, _s6LoggerVMa);
      sub_1002201C8(v36, v21, _s6LoggerVMa);
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      sub_1001CDA98(v33);
      sub_1001CDA98(v33);
      sub_1001CDA98(v33);

      v38 = sub_1004A4A54();
      v39 = sub_1004A6034();
      if (os_log_type_enabled(v38, v39))
      {
        v112 = v33 >> 16;
        v40 = swift_slowAlloc();
        v116 = v38;
        v41 = v40;
        v113 = swift_slowAlloc();
        v118[0] = v113;
        *v41 = 68158722;
        *(v41 + 4) = 2;
        *(v41 + 8) = 256;
        v42 = v114;
        v43 = v21[*(v114 + 20)];
        sub_100220230(v21, _s6LoggerVMa);
        *(v41 + 10) = v43;
        *(v41 + 11) = 2082;
        v44 = *(v37 + *(v42 + 20) + 4);
        sub_100220230(v37, _s6LoggerVMa);
        v45 = ConnectionID.debugDescription.getter(v44);
        v47 = sub_10015BA6C(v45, v46, v118);

        *(v41 + 13) = v47;
        *(v41 + 21) = 512;
        sub_1001CDB04(v33);
        *(v41 + 23) = v33;
        sub_1001CDB04(v33);
        *(v41 + 25) = 512;
        sub_1001CDB04(v33);
        *(v41 + 27) = v112;
        sub_1001CDB04(v33);
        v48 = v39;
        v49 = v116;
        _os_log_impl(&_mh_execute_header, v116, v48, "[%.*hhx-%{public}s] Using TLS protocol %hu, cipher suite %hu", v41, 0x1Du);
        sub_1000197E0(v113);

LABEL_19:
        v105 = v117;
        v65 = v115;
LABEL_20:
        *v105 = v65;
        type metadata accessor for UnauthenticatedState();
        swift_storeEnumTagMultiPayload();

        return 0x8000000000000001;
      }

      sub_1001CDB04(v33);
      sub_1001CDB04(v33);
      sub_100220230(v21, _s6LoggerVMa);
      sub_1001CDB04(v33);
      sub_1001CDB04(v33);

      v80 = v24;
      goto LABEL_18;
    }

    v61 = Capability.startTLS.unsafeMutableAddressor();
    v62 = v61[1];
    v63 = v61[2];
    v64 = *(v61 + 24);
    v118[0] = *v61;
    v118[1] = v62;
    v118[2] = v63;
    v119 = v64;
    __chkstk_darwin(v61);
    *(&v109 - 2) = v118;

    v65 = v115;
    v66 = sub_100215C70(sub_1001F0EE0, (&v109 - 4), v115);

    if ((v66 & 1) == 0)
    {
      v92 = v116;
      v93 = v113;
      sub_1002201C8(v116, v113, _s6LoggerVMa);
      v94 = v112;
      sub_1002201C8(v92, v112, _s6LoggerVMa);
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      v95 = sub_1004A4A54();
      v96 = sub_1004A6014();
      if (os_log_type_enabled(v95, v96))
      {
        v97 = swift_slowAlloc();
        v98 = swift_slowAlloc();
        v118[0] = v98;
        *v97 = 68158210;
        *(v97 + 4) = 2;
        *(v97 + 8) = 256;
        v99 = v114;
        v100 = *(v94 + *(v114 + 20));
        sub_100220230(v94, _s6LoggerVMa);
        *(v97 + 10) = v100;
        *(v97 + 11) = 2082;
        v101 = *(v93 + *(v99 + 20) + 4);
        sub_100220230(v93, _s6LoggerVMa);
        v102 = ConnectionID.debugDescription.getter(v101);
        v104 = sub_10015BA6C(v102, v103, v118);

        *(v97 + 13) = v104;
        _os_log_impl(&_mh_execute_header, v95, v96, "[%.*hhx-%{public}s] Connection is insecure, but server does not support STARTTLS.", v97, 0x15u);
        sub_1000197E0(v98);
      }

      else
      {
        sub_100220230(v94, _s6LoggerVMa);

        sub_100220230(v93, _s6LoggerVMa);
      }

      v105 = v117;
      goto LABEL_20;
    }

    v67 = v116;
    v68 = v111;
    sub_1002201C8(v116, v111, _s6LoggerVMa);
    v69 = v110;
    sub_1002201C8(v67, v110, _s6LoggerVMa);
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    v70 = sub_1004A4A54();
    v71 = sub_1004A6034();
    if (os_log_type_enabled(v70, v71))
    {
      v72 = swift_slowAlloc();
      v73 = swift_slowAlloc();
      v118[0] = v73;
      *v72 = 68158210;
      *(v72 + 4) = 2;
      *(v72 + 8) = 256;
      v74 = v114;
      v75 = *(v69 + *(v114 + 20));
      sub_100220230(v69, _s6LoggerVMa);
      *(v72 + 10) = v75;
      *(v72 + 11) = 2082;
      v76 = *(v68 + *(v74 + 20) + 4);
      sub_100220230(v68, _s6LoggerVMa);
      v77 = ConnectionID.debugDescription.getter(v76);
      v79 = sub_10015BA6C(v77, v78, v118);

      *(v72 + 13) = v79;
      _os_log_impl(&_mh_execute_header, v70, v71, "[%.*hhx-%{public}s] Server supports STARTTLS and connection is insecure. Attempting STARTTLS.", v72, 0x15u);
      sub_1000197E0(v73);
    }

    else
    {
      sub_100220230(v69, _s6LoggerVMa);

      sub_100220230(v68, _s6LoggerVMa);
    }

    type metadata accessor for UnauthenticatedState();
    swift_storeEnumTagMultiPayload();

    return ClientCommand.EncodingOptions.init(_:)(v108) & 0x101FF;
  }

  else
  {
    if (a2[5] == 1)
    {
      v50 = v12;
      v51 = v116;
      sub_1002201C8(v116, v12, _s6LoggerVMa);
      sub_1002201C8(v51, v9, _s6LoggerVMa);
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      sub_1001CDA98(v33);
      sub_1001CDA98(v33);
      sub_1001CDA98(v33);

      v52 = sub_1004A4A54();
      v53 = sub_1004A6034();
      if (os_log_type_enabled(v52, v53))
      {
        v113 = (v33 >> 16);
        v54 = swift_slowAlloc();
        v116 = swift_slowAlloc();
        v118[0] = v116;
        *v54 = 68158722;
        *(v54 + 4) = 2;
        *(v54 + 8) = 256;
        v55 = v114;
        v56 = v9[*(v114 + 20)];
        sub_100220230(v9, _s6LoggerVMa);
        *(v54 + 10) = v56;
        *(v54 + 11) = 2082;
        v57 = *(v50 + *(v55 + 20) + 4);
        sub_100220230(v50, _s6LoggerVMa);
        v58 = ConnectionID.debugDescription.getter(v57);
        v60 = sub_10015BA6C(v58, v59, v118);

        *(v54 + 13) = v60;
        *(v54 + 21) = 512;
        sub_1001CDB04(v33);
        *(v54 + 23) = v33;
        sub_1001CDB04(v33);
        *(v54 + 25) = 512;
        sub_1001CDB04(v33);
        *(v54 + 27) = v113;
        sub_1001CDB04(v33);
        _os_log_impl(&_mh_execute_header, v52, v53, "[%.*hhx-%{public}s] Using opportunistic TLS protocol %hu, cipher suite %hu", v54, 0x1Du);
        sub_1000197E0(v116);

        goto LABEL_19;
      }

      sub_1001CDB04(v33);
      sub_1001CDB04(v33);
      sub_100220230(v9, _s6LoggerVMa);
      sub_1001CDB04(v33);
      sub_1001CDB04(v33);

      v80 = v50;
LABEL_18:
      sub_100220230(v80, _s6LoggerVMa);
      goto LABEL_19;
    }

    v81 = v116;
    sub_1002201C8(v116, v18, _s6LoggerVMa);
    sub_1002201C8(v81, v15, _s6LoggerVMa);
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    v82 = sub_1004A4A54();
    v83 = sub_1004A6014();
    if (os_log_type_enabled(v82, v83))
    {
      v84 = swift_slowAlloc();
      v85 = swift_slowAlloc();
      v118[0] = v85;
      *v84 = 68158210;
      *(v84 + 4) = 2;
      *(v84 + 8) = 256;
      v86 = v114;
      v87 = v15[*(v114 + 20)];
      sub_100220230(v15, _s6LoggerVMa);
      *(v84 + 10) = v87;
      *(v84 + 11) = 2082;
      v88 = *&v18[*(v86 + 20) + 4];
      sub_100220230(v18, _s6LoggerVMa);
      v89 = ConnectionID.debugDescription.getter(v88);
      v91 = sub_10015BA6C(v89, v90, v118);

      *(v84 + 13) = v91;
      _os_log_impl(&_mh_execute_header, v82, v83, "[%.*hhx-%{public}s] Connection is using opportunistic TLS. But we require a secure connection.", v84, 0x15u);
      sub_1000197E0(v85);
    }

    else
    {
      sub_100220230(v15, _s6LoggerVMa);

      sub_100220230(v18, _s6LoggerVMa);
    }

    v107 = v117;
    v117[1] = 0;
    v107[2] = 0;
    *v107 = 5;
    *(v107 + 24) = -64;
    type metadata accessor for UnauthenticatedState();
    swift_storeEnumTagMultiPayload();
    return 0xFFFFFFFF00000000;
  }
}

uint64_t sub_1002173C8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = _s6LoggerVMa();
  v7 = *(*(v6 - 8) + 64);
  v8 = __chkstk_darwin(v6);
  v10 = &v78 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v78 - v11;
  sub_100220230(v3, type metadata accessor for UnauthenticatedState);
  if (!a1)
  {
    type metadata accessor for UnauthenticatedState();
    swift_storeEnumTagMultiPayload();
    return 0xFFFFFFFF00000000;
  }

  sub_1002201C8(a2, v12, _s6LoggerVMa);
  sub_1002201C8(a2, v10, _s6LoggerVMa);

  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  v13 = sub_1004A4A54();
  v14 = sub_1004A6004();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v79 = v3;
    v16 = v15;
    v17 = swift_slowAlloc();
    v78 = a1;
    v18 = v17;
    *&v92 = v17;
    *v16 = 68158210;
    *(v16 + 4) = 2;
    *(v16 + 8) = 256;
    v19 = v10[*(v6 + 20)];
    sub_100220230(v10, _s6LoggerVMa);
    *(v16 + 10) = v19;
    *(v16 + 11) = 2082;
    v20 = *&v12[*(v6 + 20) + 4];
    sub_100220230(v12, _s6LoggerVMa);
    v21 = ConnectionID.debugDescription.getter(v20);
    v23 = sub_10015BA6C(v21, v22, &v92);

    *(v16 + 13) = v23;
    _os_log_impl(&_mh_execute_header, v13, v14, "[%.*hhx-%{public}s] Received capabilities from server", v16, 0x15u);
    sub_1000197E0(v18);
    a1 = v78;

    v3 = v79;
  }

  else
  {
    sub_100220230(v10, _s6LoggerVMa);

    sub_100220230(v12, _s6LoggerVMa);
  }

  v25 = Capability.id.unsafeMutableAddressor();
  v26 = v25[1];
  v27 = v25[2];
  v28 = *(v25 + 24);
  *&v92 = *v25;
  *(&v92 + 1) = v26;
  *&v93 = v27;
  BYTE8(v93) = v28;
  __chkstk_darwin(v25);
  *(&v78 - 2) = &v92;

  v29 = sub_100215C70(sub_1001F0EE0, (&v78 - 4), a1);

  if (v29)
  {
    *v3 = a1;
    type metadata accessor for UnauthenticatedState();
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    if (sub_100217C58(a1))
    {
      v30 = Capability.CompressionKind.deflate.unsafeMutableAddressor();
      v31 = *v30;
      v32 = v30[1];

      v103._countAndFlagsBits = v31;
      v103._object = v32;
      v33 = static Capability.compression(_:)(v103);
      v35 = v34;
      v37 = v36;
      v39 = v38;

      *&v92 = v33;
      *(&v92 + 1) = v35;
      *&v93 = v37;
      BYTE8(v93) = v39 & 1;
      __chkstk_darwin(v40);
      *(&v78 - 2) = &v92;
      LOBYTE(v33) = sub_100215C70(sub_1001F0EE0, (&v78 - 4), a1);

      if ((v33 & 1) == 0)
      {
        v41 = Capability.applePushService.unsafeMutableAddressor();
        v42 = v41[1];
        v43 = v41[2];
        v44 = *(v41 + 24);
        *&v92 = *v41;
        *(&v92 + 1) = v42;
        *&v93 = v43;
        BYTE8(v93) = v44;
        __chkstk_darwin(v41);
        *(&v78 - 2) = &v92;

        v45 = sub_100215C70(sub_1001F0EE0, (&v78 - 4), a1);

        if (v45)
        {
          v46 = ServerID.empty.unsafeMutableAddressor();
          v48 = v46[1];
          v47 = v46[2];
          v81 = *v46;
          v82 = v48;
          v83 = v47;
          v49 = v46[6];
          v51 = v46[3];
          v50 = v46[4];
          v86 = v46[5];
          v87 = v49;
          v84 = v51;
          v85 = v50;
          v52 = v46[10];
          v54 = v46[7];
          v53 = v46[8];
          v90 = v46[9];
          v91 = v52;
          v88 = v54;
          v89 = v53;
          v99 = v46[7];
          v100 = v46[8];
          v101 = v46[9];
          v102 = v46[10];
          v95 = v46[3];
          v55 = v95;
          v96 = v46[4];
          v97 = v46[5];
          v98 = v46[6];
          v92 = *v46;
          v93 = v46[1];
          v94 = v46[2];
          *v3 = a1;
          *(v3 + 56) = v55;
          v56 = v93;
          *(v3 + 40) = v94;
          v57 = v92;
          *(v3 + 24) = v56;
          *(v3 + 8) = v57;
          v58 = v96;
          v59 = v97;
          *(v3 + 104) = v98;
          *(v3 + 88) = v59;
          *(v3 + 72) = v58;
          v60 = v101;
          *(v3 + 168) = v102;
          *(v3 + 152) = v60;
          v61 = v99;
          *(v3 + 136) = v100;
          *(v3 + 120) = v61;
          type metadata accessor for UnauthenticatedState();
          swift_storeEnumTagMultiPayload();
          sub_10010E800(&v81, v80);
          return 0x8000000000000003;
        }
      }
    }

    v62 = ServerID.empty.unsafeMutableAddressor();
    v64 = v62[1];
    v63 = v62[2];
    v81 = *v62;
    v82 = v64;
    v83 = v63;
    v65 = v62[6];
    v67 = v62[3];
    v66 = v62[4];
    v86 = v62[5];
    v87 = v65;
    v84 = v67;
    v85 = v66;
    v68 = v62[10];
    v70 = v62[7];
    v69 = v62[8];
    v90 = v62[9];
    v91 = v68;
    v88 = v70;
    v89 = v69;
    v99 = v62[7];
    v100 = v62[8];
    v101 = v62[9];
    v102 = v62[10];
    v95 = v62[3];
    v71 = v95;
    v96 = v62[4];
    v97 = v62[5];
    v98 = v62[6];
    v92 = *v62;
    v93 = v62[1];
    v94 = v62[2];
    *v3 = a1;
    *(v3 + 56) = v71;
    v72 = v93;
    *(v3 + 40) = v94;
    v73 = v92;
    *(v3 + 24) = v72;
    *(v3 + 8) = v73;
    v74 = v96;
    v75 = v97;
    *(v3 + 104) = v98;
    *(v3 + 88) = v75;
    *(v3 + 72) = v74;
    v76 = v101;
    *(v3 + 168) = v102;
    *(v3 + 152) = v76;
    v77 = v99;
    *(v3 + 136) = v100;
    *(v3 + 120) = v77;
    type metadata accessor for UnauthenticatedState();
    swift_storeEnumTagMultiPayload();
    sub_10010E800(&v81, v80);
  }

  return ClientCommand.EncodingOptions.init(_:)(a1) & 0x101FF;
}

BOOL sub_100217C58(uint64_t a1)
{
  sub_10000C9C0(&qword_1005D52A0, &unk_1004E75A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1004D2DE0;
  v3 = Capability.uidOnly.unsafeMutableAddressor();
  v4 = v3[1];
  v5 = v3[2];
  v6 = *(v3 + 24);
  *(inited + 32) = *v3;
  *(inited + 40) = v4;
  *(inited + 48) = v5;
  *(inited + 56) = v6;

  v7 = Capability.enable.unsafeMutableAddressor();
  v8 = v7[1];
  v9 = v7[2];
  v10 = *(v7 + 24);
  *(inited + 64) = *v7;
  *(inited + 72) = v8;
  *(inited + 80) = v9;
  *(inited + 88) = v10;

  v11 = Capability.uidBatches.unsafeMutableAddressor();
  v12 = v11[1];
  v13 = v11[2];
  v14 = *(v11 + 24);
  *(inited + 96) = *v11;
  *(inited + 104) = v12;
  *(inited + 112) = v13;
  *(inited + 120) = v14;

  v15 = Capability.partial.unsafeMutableAddressor();
  v16 = v15[1];
  v17 = v15[2];
  v18 = *(v15 + 24);
  *(inited + 128) = *v15;
  *(inited + 136) = v16;
  *(inited + 144) = v17;
  *(inited + 152) = v18;

  v19 = Capability.extendedSearch.unsafeMutableAddressor();
  v20 = v19[1];
  v21 = v19[2];
  v22 = *(v19 + 24);
  *(inited + 160) = *v19;
  *(inited + 168) = v20;
  *(inited + 176) = v21;
  *(inited + 184) = v22;

  v23 = sub_1001CADD0(inited);
  swift_setDeallocating();
  swift_arrayDestroy();
  LOBYTE(a1) = sub_10021BE0C(a1, v23);

  return (a1 & 1) == 0;
}

uint64_t sub_100217DB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v62[1] = a2;
  v63 = a1;
  v64 = a3;
  v5 = sub_10000C9C0(&qword_1005D3008, &qword_1004DCCE0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v62 - v7;
  v9 = type metadata accessor for AuthenticationTask();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v62 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Authenticator();
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14);
  v17 = v62 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for UnauthenticatedState();
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18);
  v21 = v62 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1002201C8(v4, v21, type metadata accessor for UnauthenticatedState);
  result = swift_getEnumCaseMultiPayload();
  switch(result)
  {
    case 2:
      sub_100220160(v21, v17, type metadata accessor for Authenticator);
      sub_10000E268(&v17[*(v14 + 32)], v8, &qword_1005D3008, &qword_1004DCCE0);
      if ((*(v10 + 48))(v8, 1, v9) != 1)
      {
        sub_100220160(v8, v13, type metadata accessor for AuthenticationTask);
        v84 = v9;
        v85 = &off_1005A4510;
        v59 = sub_1000B3774(&v82);
        sub_100220160(v13, v59, type metadata accessor for AuthenticationTask);
        sub_100220230(v17, type metadata accessor for Authenticator);
        v24 = v84;
        v25 = v85;
        goto LABEL_15;
      }

      sub_100220230(v17, type metadata accessor for Authenticator);
      result = sub_100025F40(v8, &qword_1005D3008, &qword_1004DCCE0);
      v31 = v64;
      *v64 = 0u;
      *(v31 + 16) = 0u;
      *(v31 + 32) = 0;
      return result;
    case 3:
      v32 = *v21;
      v33 = Capability.id.unsafeMutableAddressor();
      v34 = v33[1];
      v35 = v33[2];
      v36 = *(v33 + 24);
      *&v71 = *v33;
      *(&v71 + 1) = v34;
      *&v72 = v35;
      BYTE8(v72) = v36;
      __chkstk_darwin(v33);
      v62[-2] = &v71;

      v37 = sub_100215C70(sub_1001F0EE0, &v62[-4], v32);

      if ((v37 & 1) == 0)
      {
        goto LABEL_3;
      }

      sub_1001E7A04(v38, &v71);
      *(&v65[1] + 7) = v72;
      *(&v65[2] + 7) = v73;
      *(&v65[3] + 7) = v74;
      *(&v65[4] + 7) = v75;
      *(v65 + 7) = v71;
      v24 = &type metadata for IdentifyServer;
      v25 = &off_1005A6600;
      v84 = &type metadata for IdentifyServer;
      v85 = &off_1005A6600;
      v39 = swift_allocObject();
      v40 = v65[0];
      *(v39 + 33) = v65[1];
      v41 = v65[3];
      *(v39 + 49) = v65[2];
      *(v39 + 65) = v41;
      *(v39 + 80) = *(&v65[3] + 15);
      *&v82 = v39;
      *(v39 + 16) = 3;
      *(v39 + 17) = v40;
      *(v39 + 104) = 0;
      *(v39 + 112) = 0;
      *(v39 + 96) = 0;
      goto LABEL_15;
    case 4:
      sub_100220230(v21, type metadata accessor for UnauthenticatedState);
      sub_10000C9C0(&qword_1005D52A0, &unk_1004E75A0);
      v26 = swift_allocObject();
      *(v26 + 16) = xmmword_1004CEAA0;
      v27 = Capability.uidOnly.unsafeMutableAddressor();
      v28 = v27[1];
      v29 = v27[2];
      v30 = *(v27 + 24);
      *(v26 + 32) = *v27;
      *(v26 + 40) = v28;
      *(v26 + 48) = v29;
      *(v26 + 56) = v30;
      v24 = &type metadata for Enable;
      v25 = &off_1005A6148;
      v84 = &type metadata for Enable;
      v85 = &off_1005A6148;
      LOBYTE(v82) = 4;
      *(&v82 + 1) = v26;
      v83 = _swiftEmptySetSingleton;

      goto LABEL_15;
    case 5:
      sub_100220230(v21, type metadata accessor for UnauthenticatedState);
      v24 = &type metadata for Compress;
      v25 = &off_1005A50C0;
      v84 = &type metadata for Compress;
      v85 = &off_1005A50C0;
      LOBYTE(v82) = 6;
      goto LABEL_15;
    case 8:
      v42 = *(v21 + 1);
      v67 = *v21;
      v68 = v42;
      v43 = *(v21 + 3);
      v69 = *(v21 + 2);
      v70 = v43;
      v44 = *(v21 + 8);
      v45 = *(v21 + 184);
      v46 = *(v21 + 216);
      v79 = *(v21 + 200);
      v80 = v46;
      v81 = *(v21 + 232);
      v47 = *(v21 + 120);
      v48 = *(v21 + 152);
      v75 = *(v21 + 136);
      v76 = v48;
      v77 = *(v21 + 168);
      v78 = v45;
      v49 = *(v21 + 88);
      v71 = *(v21 + 72);
      v72 = v49;
      v73 = *(v21 + 104);
      v74 = v47;
      sub_10010E990(&v71);
      v50 = Capability.applePushService.unsafeMutableAddressor();
      v51 = v50[1];
      v52 = v50[2];
      v53 = *(v50 + 24);
      *&v82 = *v50;
      *(&v82 + 1) = v51;
      v83 = v52;
      LOBYTE(v84) = v53;
      __chkstk_darwin(v50);
      v62[-2] = &v82;

      v54 = sub_100215C70(sub_1001F0EE0, &v62[-4], v44);

      if (v54)
      {
        LOBYTE(v82) = 1;
        *(v66 + 7) = v67;
        *(&v66[1] + 7) = v68;
        *(&v66[2] + 7) = v69;
        *(&v66[3] + 7) = v70;
        v24 = &type metadata for RegisterForPush;
        v25 = &off_1005A8180;
        v84 = &type metadata for RegisterForPush;
        v85 = &off_1005A8180;
        v55 = swift_allocObject();
        v56 = v66[0];
        *(v55 + 33) = v66[1];
        v57 = v66[3];
        *(v55 + 49) = v66[2];
        *(v55 + 65) = v57;
        *&v82 = v55;
        *(v55 + 16) = 5;
        v58 = *(&v66[3] + 15);
        *(v55 + 17) = v56;
        *(v55 + 80) = v58;
        *(v55 + 88) = _swiftEmptyArrayStorage;
        *(v55 + 96) = 0;
        *(v55 + 104) = 1;
        *(v55 + 112) = 0;
        *(v55 + 120) = 0;
LABEL_15:
        v60 = v64;
        sub_10002587C(&v82, v24);
        v61 = (v25[1])(v24, v25);
        if (sub_100011D94(v61, v63))
        {
          result = sub_1000197E0(&v82);
          *(v60 + 32) = 0;
          *v60 = 0u;
          *(v60 + 16) = 0u;
        }

        else
        {
          return sub_1000B364C(&v82, v60);
        }
      }

      else
      {
        result = sub_10021D02C(&v67);
LABEL_3:
        v23 = v64;
        *(v64 + 32) = 0;
        *v23 = 0u;
        v23[1] = 0u;
      }

      return result;
    case 11:
    case 14:
      goto LABEL_3;
    case 12:
    case 15:
      v24 = &type metadata for GetCapabilities;
      v25 = &off_1005A4790;
      v84 = &type metadata for GetCapabilities;
      v85 = &off_1005A4790;
      LOBYTE(v82) = 0;
      goto LABEL_15;
    case 13:
      v24 = &type metadata for StartTLS;
      v25 = &off_1005A8558;
      v84 = &type metadata for StartTLS;
      v85 = &off_1005A8558;
      LOWORD(v82) = 0;
      goto LABEL_15;
    default:
      result = sub_100220230(v21, type metadata accessor for UnauthenticatedState);
      goto LABEL_3;
  }
}

_UNKNOWN **sub_100218558(uint64_t a1, uint64_t a2)
{
  *&v557 = a2;
  v3 = *(a1 + 144);
  v641 = *(a1 + 128);
  v642 = v3;
  v643 = *(a1 + 160);
  v644 = *(a1 + 176);
  v4 = *(a1 + 80);
  v637 = *(a1 + 64);
  v638 = v4;
  v5 = *(a1 + 112);
  v639 = *(a1 + 96);
  v640 = v5;
  v6 = *(a1 + 16);
  v633 = *a1;
  v634 = v6;
  v7 = *(a1 + 48);
  v635 = *(a1 + 32);
  v636 = v7;
  *&v556 = _s6LoggerVMa();
  v8 = *(*(v556 - 8) + 64);
  v9 = __chkstk_darwin(v556);
  v544 = &v520 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v546 = &v520 - v12;
  v13 = __chkstk_darwin(v11);
  v543 = &v520 - v14;
  v15 = __chkstk_darwin(v13);
  v545 = &v520 - v16;
  v17 = __chkstk_darwin(v15);
  v526 = &v520 - v18;
  v19 = __chkstk_darwin(v17);
  v527 = &v520 - v20;
  v21 = __chkstk_darwin(v19);
  v528 = &v520 - v22;
  v23 = __chkstk_darwin(v21);
  v529 = &v520 - v24;
  v25 = __chkstk_darwin(v23);
  v524 = &v520 - v26;
  v27 = __chkstk_darwin(v25);
  v525 = &v520 - v28;
  v29 = __chkstk_darwin(v27);
  v522 = &v520 - v30;
  v31 = __chkstk_darwin(v29);
  v523 = &v520 - v32;
  v33 = __chkstk_darwin(v31);
  v547 = &v520 - v34;
  v35 = __chkstk_darwin(v33);
  *&v548 = &v520 - v36;
  v37 = __chkstk_darwin(v35);
  *&v552 = &v520 - v38;
  v39 = __chkstk_darwin(v37);
  *&v554 = &v520 - v40;
  v41 = __chkstk_darwin(v39);
  v541 = &v520 - v42;
  v43 = __chkstk_darwin(v41);
  v542 = &v520 - v44;
  v45 = __chkstk_darwin(v43);
  *&v551 = &v520 - v46;
  v47 = __chkstk_darwin(v45);
  *&v553 = &v520 - v48;
  v49 = __chkstk_darwin(v47);
  v537 = &v520 - v50;
  v51 = __chkstk_darwin(v49);
  v538 = &v520 - v52;
  v53 = __chkstk_darwin(v51);
  v539 = &v520 - v54;
  v55 = __chkstk_darwin(v53);
  v540 = &v520 - v56;
  v57 = __chkstk_darwin(v55);
  v535 = &v520 - v58;
  v59 = __chkstk_darwin(v57);
  v536 = &v520 - v60;
  v61 = __chkstk_darwin(v59);
  v533 = &v520 - v62;
  v63 = __chkstk_darwin(v61);
  v534 = &v520 - v64;
  v65 = __chkstk_darwin(v63);
  v532 = &v520 - v66;
  v67 = __chkstk_darwin(v65);
  v530 = &v520 - v68;
  v69 = __chkstk_darwin(v67);
  v531 = &v520 - v70;
  v71 = __chkstk_darwin(v69);
  v520 = &v520 - v72;
  __chkstk_darwin(v71);
  v521 = &v520 - v73;
  v558 = type metadata accessor for UnauthenticatedState();
  v74 = *(*(v558 - 8) + 64);
  v75 = __chkstk_darwin(v558);
  v77 = &v520 - ((v76 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = __chkstk_darwin(v75);
  *&v549 = &v520 - v79;
  v80 = __chkstk_darwin(v78);
  v82 = &v520 - v81;
  v83 = __chkstk_darwin(v80);
  v85 = (&v520 - v84);
  v86 = __chkstk_darwin(v83);
  *&v550 = &v520 - v87;
  v88 = __chkstk_darwin(v86);
  v90 = (&v520 - v89);
  v91 = __chkstk_darwin(v88);
  v93 = &v520 - v92;
  v94 = __chkstk_darwin(v91);
  v96 = &v520 - v95;
  v97 = __chkstk_darwin(v94);
  v99 = &v520 - v98;
  v100 = __chkstk_darwin(v97);
  v102 = &v520 - v101;
  __chkstk_darwin(v100);
  *&v555 = &v520 - v103;
  v104 = *(a1 + 144);
  v627[8] = *(a1 + 128);
  v627[9] = v104;
  v627[10] = *(a1 + 160);
  v628 = *(a1 + 176);
  v105 = *(a1 + 80);
  v627[4] = *(a1 + 64);
  v627[5] = v105;
  v106 = *(a1 + 112);
  v627[6] = *(a1 + 96);
  v627[7] = v106;
  v107 = *(a1 + 16);
  v627[0] = *a1;
  v627[1] = v107;
  v108 = *(a1 + 48);
  v627[2] = *(a1 + 32);
  v627[3] = v108;
  v109 = sub_10021D080(v627);
  if (v109 <= 5)
  {
    if (v109 <= 2)
    {
      if (!v109)
      {
        v174 = UInt32.init(_:)(v627);
        v175 = *v174;
        v176 = v174[3];
        if ((~*v174 & 0xF000000000000007) != 0 && ((v175 >> 59) & 0x1E | (v175 >> 2) & 1) == 1)
        {
          v176 = *((v175 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        }

        else if (v176)
        {
          v296 = v174[3];
        }

        v297 = sub_1002173C8(v176, v557);
LABEL_62:

        if (v297 <= 0xFFFFFFFEFFFFFFFFLL)
        {
          sub_10000C9C0(&qword_1005D4A90, &qword_1004E2A78);
          result = swift_allocObject();
          *(result + 1) = xmmword_1004CEAA0;
          result[4] = v297;
          result[5] = 0;
          result[6] = 0;
          result[7] = 0;
          return result;
        }

        return _swiftEmptyArrayStorage;
      }

      if (v109 == 1)
      {
        v110 = UInt32.init(_:)(v627);
        v111 = *v110;
        v112 = v110[1];
        v114 = v110[2];
        v113 = v110[3];
        v115 = v110[4];
        v116 = v110[5];
        v117 = v110[6];
        v118 = v555;
        sub_1002201C8(v559, v555, type metadata accessor for UnauthenticatedState);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        if (EnumCaseMultiPayload != 1)
        {
          if (!EnumCaseMultiPayload)
          {
            v120 = *v118;
            v121 = *(v111 + 16);
            if (!v121)
            {
LABEL_85:

              sub_1001CDA98(v112);
              sub_100175598(v115, v116, v117);
              sub_100220230(v559, type metadata accessor for UnauthenticatedState);

              sub_1001CDB04(v112);
              sub_1001ADD88(v115, v116, v117);
LABEL_86:

LABEL_87:
              v388 = v557;
              v389 = v531;
              sub_1002201C8(v557, v531, _s6LoggerVMa);
              v390 = v530;
              sub_1002201C8(v388, v530, _s6LoggerVMa);
              variable initialization expression of Engine.isProcessingUpdates();
              variable initialization expression of Engine.isProcessingUpdates();
              variable initialization expression of Engine.isProcessingUpdates();
              v391 = sub_1004A4A54();
              v392 = sub_1004A6024();
              if (os_log_type_enabled(v391, v392))
              {
                v393 = swift_slowAlloc();
                v394 = swift_slowAlloc();
                *&v615 = v394;
                *v393 = 68158210;
                *(v393 + 4) = 2;
                *(v393 + 8) = 256;
                v395 = v556;
                v396 = *(v390 + *(v556 + 20));
                sub_100220230(v390, _s6LoggerVMa);
                *(v393 + 10) = v396;
                *(v393 + 11) = 2082;
                v397 = *(v389 + *(v395 + 20) + 4);
                sub_100220230(v389, _s6LoggerVMa);
                v398 = ConnectionID.debugDescription.getter(v397);
                v400 = sub_10015BA6C(v398, v399, &v615);

                *(v393 + 13) = v400;
                _os_log_impl(&_mh_execute_header, v391, v392, "[%.*hhx-%{public}s] Credentials don't allow PREAUTH.", v393, 0x15u);
                sub_1000197E0(v394);
              }

              else
              {
                sub_100220230(v390, _s6LoggerVMa);

                sub_100220230(v389, _s6LoggerVMa);
              }

              v479 = v559;
              *(v559 + 8) = 0;
              *(v479 + 16) = 0;
              *v479 = 2;
              *(v479 + 24) = -64;
              swift_storeEnumTagMultiPayload();
              return _swiftEmptyArrayStorage;
            }

            v122 = (v111 + 104);
            while (1)
            {
              v125 = *(v122 - 2);
              if (((*v122 >> 59) & 6 | ((v125 & 0x2000000000000000) != 0)) == 4)
              {
                v126 = vorrq_s8(*(v122 - 9), *(v122 - 7));
                v127 = *&vorr_s8(*v126.i8, *&vextq_s8(v126, v126, 8uLL)) | *(v122 - 5) | *(v122 - 4) | *(v122 - 3) | *(v122 - 1) | v125;
                if (*v122 == 0x2000000000000000 && v127 == 0)
                {
                  break;
                }
              }

              v122 += 10;
              if (!--v121)
              {
                goto LABEL_85;
              }
            }

            sub_100175598(v115, v116, v117);
            if (v117 == 1)
            {
              goto LABEL_22;
            }

            if (v112 >> 62 != 1)
            {

              sub_1001ADD88(v115, v116, v117);
              v518 = v559;
LABEL_153:
              sub_100220230(v518, type metadata accessor for UnauthenticatedState);
              goto LABEL_87;
            }

            if (v117)
            {
              if (v115)
              {
                v502 = v559;
                if (v115 == 1)
                {
                  if (v112 != 772)
                  {
                    goto LABEL_152;
                  }
                }

                else if (v112 - 771 >= 2)
                {
                  goto LABEL_152;
                }
              }

              else
              {
                v502 = v559;
                if (v112 - 771 >= 2)
                {
                  goto LABEL_152;
                }
              }

              if (v113)
              {
                if (v116 == v114 && v117 == v113)
                {
                  sub_1001ADD88(v115, v114, v113);
                  goto LABEL_22;
                }

                v519 = sub_1004A6D34();
                sub_1001ADD88(v115, v116, v117);
                if (v519)
                {
                  goto LABEL_22;
                }

                goto LABEL_155;
              }

LABEL_152:

              sub_1001ADD88(v115, v116, v117);
              v518 = v502;
              goto LABEL_153;
            }

            sub_1001ADD88(v115, v116, 0);
            if (v115 == 1)
            {
              if (v112 != 772)
              {
LABEL_155:
                sub_100220230(v559, type metadata accessor for UnauthenticatedState);
                goto LABEL_86;
              }
            }

            else if (v112 - 771 >= 2)
            {
              goto LABEL_155;
            }

LABEL_22:
            v129 = v557;
            v130 = v521;
            sub_1002201C8(v557, v521, _s6LoggerVMa);
            v131 = v520;
            sub_1002201C8(v129, v520, _s6LoggerVMa);
            variable initialization expression of Engine.isProcessingUpdates();
            variable initialization expression of Engine.isProcessingUpdates();
            variable initialization expression of Engine.isProcessingUpdates();
            v132 = sub_1004A4A54();
            v133 = sub_1004A6004();
            if (os_log_type_enabled(v132, v133))
            {
              v134 = swift_slowAlloc();
              v135 = swift_slowAlloc();
              v136 = v131;
              v137 = v135;
              *&v615 = v135;
              *v134 = 68158210;
              *(v134 + 4) = 2;
              *(v134 + 8) = 256;
              v138 = v556;
              v139 = *(v136 + *(v556 + 20));
              sub_100220230(v136, _s6LoggerVMa);
              *(v134 + 10) = v139;
              *(v134 + 11) = 2082;
              v140 = *(v130 + *(v138 + 20) + 4);
              sub_100220230(v130, _s6LoggerVMa);
              v141 = ConnectionID.debugDescription.getter(v140);
              v143 = sub_10015BA6C(v141, v142, &v615);

              *(v134 + 13) = v143;
              _os_log_impl(&_mh_execute_header, v132, v133, "[%.*hhx-%{public}s] Authenticated with PREAUTH.", v134, 0x15u);
              sub_1000197E0(v137);
            }

            else
            {
              sub_100220230(v131, _s6LoggerVMa);

              sub_100220230(v130, _s6LoggerVMa);
            }

            v297 = sub_1002173C8(v120, v557);
            goto LABEL_62;
          }

          v375 = v557;
          v376 = v534;
          sub_1002201C8(v557, v534, _s6LoggerVMa);
          v377 = v533;
          sub_1002201C8(v375, v533, _s6LoggerVMa);
          variable initialization expression of Engine.isProcessingUpdates();
          variable initialization expression of Engine.isProcessingUpdates();
          variable initialization expression of Engine.isProcessingUpdates();
          v378 = sub_1004A4A54();
          v379 = sub_1004A6014();
          if (os_log_type_enabled(v378, v379))
          {
            v380 = swift_slowAlloc();
            v381 = swift_slowAlloc();
            *&v615 = v381;
            *v380 = 68158210;
            *(v380 + 4) = 2;
            *(v380 + 8) = 256;
            v382 = v556;
            v383 = *(v377 + *(v556 + 20));
            sub_100220230(v377, _s6LoggerVMa);
            *(v380 + 10) = v383;
            *(v380 + 11) = 2082;
            v384 = *(v376 + *(v382 + 20) + 4);
            sub_100220230(v376, _s6LoggerVMa);
            v385 = ConnectionID.debugDescription.getter(v384);
            v387 = sub_10015BA6C(v385, v386, &v615);

            *(v380 + 13) = v387;
            _os_log_impl(&_mh_execute_header, v378, v379, "[%.*hhx-%{public}s] Received unexpected credentials.", v380, 0x15u);
            sub_1000197E0(v381);
          }

          else
          {
            sub_100220230(v377, _s6LoggerVMa);

            sub_100220230(v376, _s6LoggerVMa);
          }

          v370 = type metadata accessor for UnauthenticatedState;
          v371 = v555;
          goto LABEL_127;
        }

        sub_1001CDA98(v112);
        sub_100175598(v115, v116, v117);
        *&v556 = v117;
        v372 = v116;
        v373 = v559;
        sub_100220230(v559, type metadata accessor for UnauthenticatedState);
        v156 = *v118;
        *&v615 = v111;
        *(&v615 + 1) = v156;
        *&v616 = v112;
        *(&v616 + 1) = v114;
        *&v617 = v113;
        *(&v617 + 1) = v115;
        *&v618 = v372;
        *(&v618 + 1) = v556;
        v374 = v532;
        sub_1002201C8(v557, v532, _s6LoggerVMa);

        sub_100195250(&v615, v374, v102);
        swift_storeEnumTagMultiPayload();
        sub_100220160(v102, v373, type metadata accessor for UnauthenticatedState);
LABEL_118:
        sub_10000C9C0(&qword_1005D4A90, &qword_1004E2A78);
        v487 = swift_allocObject();
        *(v487 + 16) = xmmword_1004CEAA0;
        v488 = ClientCommand.EncodingOptions.init(_:)(v156);
        result = v487;
        *(v487 + 32) = v488 & 0x101FF;
        *(v487 + 40) = 0;
        *(v487 + 48) = 0;
        *(v487 + 56) = 0;
        return result;
      }

      v240 = UInt32.init(_:)(v627);
      v616 = *(v240 + 16);
      v617 = *(v240 + 32);
      v618 = *(v240 + 48);
      v619 = *(v240 + 64);
      v615 = *v240;
      sub_100215DF8(&v615, *(v240 + 80), *(v240 + 88), *(v240 + 96), v557);
      return _swiftEmptyArrayStorage;
    }

    if (v109 != 3)
    {
      v144 = v559;
      if (v109 != 4)
      {
        v262 = UInt32.init(_:)(v627);
        v263 = *v262;
        v265 = v262[1];
        v264 = v262[2];
        v266 = v262[3];
        sub_1002201C8(v144, v77, type metadata accessor for UnauthenticatedState);
        v267 = swift_getEnumCaseMultiPayload();
        if (v267 == 8)
        {

          sub_100220230(v144, type metadata accessor for UnauthenticatedState);
          v268 = *(v77 + 1);
          v593 = *v77;
          v594 = v268;
          v269 = *(v77 + 3);
          v595 = *(v77 + 2);
          v596 = v269;
          v270 = *(v77 + 8);
          v271 = *(v77 + 184);
          v272 = *(v77 + 216);
          v623 = *(v77 + 200);
          v624 = v272;
          v625 = *(v77 + 232);
          v273 = *(v77 + 120);
          v274 = *(v77 + 152);
          v619 = *(v77 + 136);
          v620 = v274;
          v275 = *(v77 + 168);
          v622 = v271;
          v621 = v275;
          v276 = *(v77 + 88);
          v615 = *(v77 + 72);
          v616 = v276;
          v277 = *(v77 + 104);
          v618 = v273;
          v617 = v277;
          sub_10021D02C(&v593);
          v278 = v621;
          *(v144 + 120) = v622;
          v279 = v624;
          *(v144 + 136) = v623;
          *(v144 + 152) = v279;
          *(v144 + 168) = v625;
          v280 = v617;
          *(v144 + 56) = v618;
          v281 = v620;
          *(v144 + 72) = v619;
          *(v144 + 88) = v281;
          *(v144 + 104) = v278;
          v282 = v616;
          *(v144 + 8) = v615;
          *(v144 + 24) = v282;
          *v144 = v270;
          *(v144 + 40) = v280;
          swift_storeEnumTagMultiPayload();
          sub_10000C9C0(&qword_1005D4A90, &qword_1004E2A78);
          result = swift_allocObject();
          *(result + 1) = xmmword_1004CEAA0;
          result[4] = (v263 | 0x4000000000000000);
          result[5] = v265;
          result[6] = v264;
          result[7] = v266;
          return result;
        }

        sub_100220230(v77, type metadata accessor for UnauthenticatedState);
        v363 = v557;
        v299 = v546;
        sub_1002201C8(v557, v546, _s6LoggerVMa);
        v300 = v544;
        sub_1002201C8(v363, v544, _s6LoggerVMa);
        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();
        v301 = sub_1004A4A54();
        v302 = sub_1004A6014();
        if (os_log_type_enabled(v301, v302))
        {
          v303 = swift_slowAlloc();
          v304 = swift_slowAlloc();
          *&v615 = v304;
          *v303 = 68158210;
          *(v303 + 4) = 2;
          *(v303 + 8) = 256;
          v364 = v556;
          v365 = *(v300 + *(v556 + 20));
          sub_100220230(v300, _s6LoggerVMa);
          *(v303 + 10) = v365;
          *(v303 + 11) = 2082;
          v366 = *(v299 + *(v364 + 20) + 4);
          sub_100220230(v299, _s6LoggerVMa);
          v367 = ConnectionID.debugDescription.getter(v366);
          v369 = sub_10015BA6C(v367, v368, &v615);

          *(v303 + 13) = v369;
          v311 = "[%.*hhx-%{public}s] Unexpected gotPushResponse";
          goto LABEL_125;
        }

        goto LABEL_126;
      }

      v145 = UInt32.init(_:)(v627);
      v632 = *v145;
      v146 = *(v145 + 16);
      v147 = *(v145 + 40);
      v629 = *(v145 + 24);
      v630 = v147;
      v631 = *(v145 + 56);
      v148 = v549;
      sub_1002201C8(v144, v549, type metadata accessor for UnauthenticatedState);
      if (swift_getEnumCaseMultiPayload() == 7)
      {
        v149 = *(a1 + 144);
        v623 = *(a1 + 128);
        v624 = v149;
        v625 = *(a1 + 160);
        v626 = *(a1 + 176);
        v150 = *(a1 + 80);
        v619 = *(a1 + 64);
        v620 = v150;
        v151 = *(a1 + 112);
        v621 = *(a1 + 96);
        v622 = v151;
        v152 = *(a1 + 16);
        v615 = *a1;
        v616 = v152;
        v153 = *(a1 + 48);
        v617 = *(a1 + 32);
        v618 = v153;
        v154 = UInt32.init(_:)(&v615);
        sub_10000E268(v154, &v593, &qword_1005D5298, &unk_1004E7590);
        sub_100220230(v144, type metadata accessor for UnauthenticatedState);
        v157 = *v148;
        v155 = v148 + 1;
        v156 = v157;
        if (v146)
        {
          *v144 = v632;
          *(v144 + 16) = v146;
          v158 = v630;
          *(v144 + 24) = v629;
          *(v144 + 40) = v158;
          *(v144 + 56) = v631;
          v159 = (v144 + 64);
          v160 = 72;
        }

        else
        {
          v160 = 8;
          v159 = v144;
        }

        *v159 = v156;
        v433 = (v144 + v160);
        v434 = v155[9];
        v433[8] = v155[8];
        v433[9] = v434;
        v433[10] = v155[10];
        v435 = v155[5];
        v433[4] = v155[4];
        v433[5] = v435;
        v436 = v155[7];
        v433[6] = v155[6];
        v433[7] = v436;
        v437 = v155[1];
        *v433 = *v155;
        v433[1] = v437;
        v438 = v155[3];
        v433[2] = v155[2];
        v433[3] = v438;
        swift_storeEnumTagMultiPayload();

        v439 = Capability.id.unsafeMutableAddressor();
        v440 = v439[1];
        v441 = v439[2];
        v442 = *(v439 + 24);
        *&v593 = *v439;
        *(&v593 + 1) = v440;
        *&v594 = v441;
        BYTE8(v594) = v442;
        __chkstk_darwin(v439);
        *(&v520 - 2) = &v593;

        v443 = sub_100215C70(sub_100197740, (&v520 - 4), v156);

        if ((v443 & 1) == 0)
        {
          goto LABEL_118;
        }

        return _swiftEmptyArrayStorage;
      }

      sub_100220230(v148, type metadata accessor for UnauthenticatedState);
      v349 = v557;
      v299 = v545;
      sub_1002201C8(v557, v545, _s6LoggerVMa);
      v300 = v543;
      sub_1002201C8(v349, v543, _s6LoggerVMa);
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      v301 = sub_1004A4A54();
      v302 = sub_1004A6014();
      if (os_log_type_enabled(v301, v302))
      {
        v303 = swift_slowAlloc();
        v304 = swift_slowAlloc();
        *&v615 = v304;
        *v303 = 68158210;
        *(v303 + 4) = 2;
        *(v303 + 8) = 256;
        v350 = v556;
        v351 = *(v300 + *(v556 + 20));
        sub_100220230(v300, _s6LoggerVMa);
        *(v303 + 10) = v351;
        *(v303 + 11) = 2082;
        v352 = *(v299 + *(v350 + 20) + 4);
        sub_100220230(v299, _s6LoggerVMa);
        v353 = ConnectionID.debugDescription.getter(v352);
        v355 = sub_10015BA6C(v353, v354, &v615);

        *(v303 + 13) = v355;
        v311 = "[%.*hhx-%{public}s] Unexpected setPushInformation";
        goto LABEL_125;
      }

LABEL_126:
      sub_100220230(v300, _s6LoggerVMa);

      v371 = v299;
      v370 = _s6LoggerVMa;
LABEL_127:
      sub_100220230(v371, v370);
      return _swiftEmptyArrayStorage;
    }

    v208 = UInt32.init(_:)(v627);
    v209 = *(v208 + 16);
    v577 = *v208;
    v578 = v209;
    v210 = *(v208 + 48);
    v579 = *(v208 + 32);
    v580 = v210;
    v212 = *(v208 + 64);
    v211 = *(v208 + 72);
    v213 = *(v208 + 128);
    v573 = *(v208 + 112);
    v574 = v213;
    v214 = *(v208 + 160);
    v575 = *(v208 + 144);
    v576 = v214;
    v215 = *(v208 + 96);
    v571 = *(v208 + 80);
    v572 = v215;
    v216 = v559;
    sub_1002201C8(v559, v90, type metadata accessor for UnauthenticatedState);
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      v217 = *(a1 + 144);
      v623 = *(a1 + 128);
      v624 = v217;
      v625 = *(a1 + 160);
      v626 = *(a1 + 176);
      v218 = *(a1 + 80);
      v619 = *(a1 + 64);
      v620 = v218;
      v219 = *(a1 + 112);
      v621 = *(a1 + 96);
      v622 = v219;
      v220 = *(a1 + 16);
      v615 = *a1;
      v616 = v220;
      v221 = *(a1 + 48);
      v617 = *(a1 + 32);
      v618 = v221;
      v222 = UInt32.init(_:)(&v615);
      sub_10010E800(v222, &v593);
      sub_100220230(v216, type metadata accessor for UnauthenticatedState);
      v223 = *v90;
      if (v211)
      {
        if (sub_1004A5814() == 0xD000000000000012 && 0x80000001004AC440 == v224)
        {

LABEL_106:
          v445 = &off_1005A3978;
LABEL_108:
          *&v557 = v445;
          if (sub_100217C58(v223))
          {
            v446 = Capability.CompressionKind.deflate.unsafeMutableAddressor();
            v447 = *v446;
            v448 = v446[1];

            v646._countAndFlagsBits = v447;
            v646._object = v448;
            v449 = static Capability.compression(_:)(v646);
            v451 = v450;
            v453 = v452;
            v455 = v454;

            *&v593 = v449;
            *(&v593 + 1) = v451;
            *&v594 = v453;
            BYTE8(v594) = v455 & 1;
            __chkstk_darwin(v456);
            *(&v520 - 2) = &v593;
            LOBYTE(v448) = sub_100215C70(sub_1001F0EE0, (&v520 - 4), v223);

            if (v448)
            {
              v457 = v578;
              v458 = v559;
              *(v559 + 8) = v577;
              *(v458 + 24) = v457;
              v459 = v580;
              *(v458 + 40) = v579;
              *(v458 + 56) = v459;
              v460 = v574;
              *(v458 + 120) = v573;
              *(v458 + 136) = v460;
              v461 = v576;
              *(v458 + 152) = v575;
              *(v458 + 168) = v461;
              v462 = v572;
              *(v458 + 88) = v571;
              *v458 = v223;
              *(v458 + 72) = v212;
              *(v458 + 80) = v211;
              *(v458 + 104) = v462;
            }

            else
            {
              v468 = Capability.applePushService.unsafeMutableAddressor();
              v469 = v468[1];
              v470 = v468[2];
              v471 = *(v468 + 24);
              *&v593 = *v468;
              *(&v593 + 1) = v469;
              *&v594 = v470;
              BYTE8(v594) = v471;
              __chkstk_darwin(v468);
              *(&v520 - 2) = &v593;

              v472 = sub_100215C70(sub_1001F0EE0, (&v520 - 4), v223);

              v473 = v578;
              v474 = v559;
              *(v559 + 8) = v577;
              *(v474 + 24) = v473;
              v475 = v580;
              *(v474 + 40) = v579;
              *(v474 + 56) = v475;
              v476 = v574;
              *(v474 + 120) = v573;
              *(v474 + 136) = v476;
              v477 = v576;
              *(v474 + 152) = v575;
              *(v474 + 168) = v477;
              v478 = v572;
              *(v474 + 88) = v571;
              *v474 = v223;
              *(v474 + 72) = v212;
              *(v474 + 80) = v211;
              *(v474 + 104) = v478;
              if (v472)
              {
                swift_storeEnumTagMultiPayload();
                *&v593 = v557;
                sub_100215B7C(&off_1005A39B8);
                return v593;
              }
            }
          }

          else
          {
            v463 = v578;
            *(v216 + 8) = v577;
            *(v216 + 24) = v463;
            v464 = v580;
            *(v216 + 40) = v579;
            *(v216 + 56) = v464;
            v465 = v574;
            *(v216 + 120) = v573;
            *(v216 + 136) = v465;
            v466 = v576;
            *(v216 + 152) = v575;
            *(v216 + 168) = v466;
            v467 = v572;
            *(v216 + 88) = v571;
            *v216 = v223;
            *(v216 + 72) = v212;
            *(v216 + 80) = v211;
            *(v216 + 104) = v467;
          }

          swift_storeEnumTagMultiPayload();
          return v557;
        }

        v444 = sub_1004A6D34();

        if (v444)
        {
          goto LABEL_106;
        }
      }

      v445 = _swiftEmptyArrayStorage;
      goto LABEL_108;
    }

    sub_100220230(v90, type metadata accessor for UnauthenticatedState);
    v298 = v557;
    v299 = v542;
    sub_1002201C8(v557, v542, _s6LoggerVMa);
    v300 = v541;
    sub_1002201C8(v298, v541, _s6LoggerVMa);
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    v301 = sub_1004A4A54();
    v302 = sub_1004A6014();
    if (!os_log_type_enabled(v301, v302))
    {
      goto LABEL_126;
    }

    v303 = swift_slowAlloc();
    v304 = swift_slowAlloc();
    *&v615 = v304;
    *v303 = 68158210;
    *(v303 + 4) = 2;
    *(v303 + 8) = 256;
    v305 = v556;
    v306 = *(v300 + *(v556 + 20));
    sub_100220230(v300, _s6LoggerVMa);
    *(v303 + 10) = v306;
    *(v303 + 11) = 2082;
    v307 = *(v299 + *(v305 + 20) + 4);
    sub_100220230(v299, _s6LoggerVMa);
    v308 = ConnectionID.debugDescription.getter(v307);
    v310 = sub_10015BA6C(v308, v309, &v615);

    *(v303 + 13) = v310;
    v311 = "[%.*hhx-%{public}s] Unexpected identifiedServer";
LABEL_125:
    _os_log_impl(&_mh_execute_header, v301, v302, v311, v303, 0x15u);
    sub_1000197E0(v304);

    return _swiftEmptyArrayStorage;
  }

  if (v109 > 8)
  {
    if ((v109 - 9) >= 2)
    {
      v225 = v557;
      v226 = v554;
      sub_1002201C8(v557, v554, _s6LoggerVMa);
      v227 = v552;
      sub_1002201C8(v225, v552, _s6LoggerVMa);
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      v228 = sub_1004A4A54();
      v229 = sub_1004A6034();
      v230 = os_log_type_enabled(v228, v229);
      v231 = v559;
      if (v230)
      {
        v232 = swift_slowAlloc();
        v233 = swift_slowAlloc();
        *&v615 = v233;
        *v232 = 68158210;
        *(v232 + 4) = 2;
        *(v232 + 8) = 256;
        v234 = v556;
        v235 = *(v227 + *(v556 + 20));
        sub_100220230(v227, _s6LoggerVMa);
        *(v232 + 10) = v235;
        *(v232 + 11) = 2082;
        v236 = *(v226 + *(v234 + 20) + 4);
        sub_100220230(v226, _s6LoggerVMa);
        v237 = ConnectionID.debugDescription.getter(v236);
        v239 = sub_10015BA6C(v237, v238, &v615);

        *(v232 + 13) = v239;
        _os_log_impl(&_mh_execute_header, v228, v229, "[%.*hhx-%{public}s] Did enable UIDONLY", v232, 0x15u);
        sub_1000197E0(v233);
      }

      else
      {
        sub_100220230(v227, _s6LoggerVMa);

        sub_100220230(v226, _s6LoggerVMa);
      }

      v312 = v550;
      sub_1002201C8(v231, v550, type metadata accessor for UnauthenticatedState);
      if (swift_getEnumCaseMultiPayload() != 4)
      {
        sub_100220230(v312, type metadata accessor for UnauthenticatedState);
        v335 = v557;
        v299 = v548;
        sub_1002201C8(v557, v548, _s6LoggerVMa);
        v300 = v547;
        sub_1002201C8(v335, v547, _s6LoggerVMa);
        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();
        v301 = sub_1004A4A54();
        v302 = sub_1004A6014();
        if (!os_log_type_enabled(v301, v302))
        {
          goto LABEL_126;
        }

        v303 = swift_slowAlloc();
        v304 = swift_slowAlloc();
        *&v615 = v304;
        *v303 = 68158210;
        *(v303 + 4) = 2;
        *(v303 + 8) = 256;
        v336 = v556;
        v337 = *(v300 + *(v556 + 20));
        sub_100220230(v300, _s6LoggerVMa);
        *(v303 + 10) = v337;
        *(v303 + 11) = 2082;
        v338 = *(v299 + *(v336 + 20) + 4);
        sub_100220230(v299, _s6LoggerVMa);
        v339 = ConnectionID.debugDescription.getter(v338);
        v341 = sub_10015BA6C(v339, v340, &v615);

        *(v303 + 13) = v341;
        v311 = "[%.*hhx-%{public}s] Unexpected enabledCapabilities";
        goto LABEL_125;
      }

      sub_100220230(v231, type metadata accessor for UnauthenticatedState);
      v313 = *v312;
      v314 = *(v312 + 120);
      v315 = *(v312 + 152);
      v589 = *(v312 + 136);
      v590 = v315;
      v591 = *(v312 + 168);
      v316 = *(v312 + 56);
      v317 = *(v312 + 88);
      v585 = *(v312 + 72);
      v586 = v317;
      v587 = *(v312 + 104);
      v588 = v314;
      v318 = *(v312 + 24);
      v581 = *(v312 + 8);
      v582 = v318;
      v583 = *(v312 + 40);
      v584 = v316;
      v319 = Capability.CompressionKind.deflate.unsafeMutableAddressor();
      v320 = *v319;
      v321 = v319[1];

      v645._countAndFlagsBits = v320;
      v645._object = v321;
      v322 = static Capability.compression(_:)(v645);
      v324 = v323;
      v326 = v325;
      v328 = v327;

      *&v615 = v322;
      *(&v615 + 1) = v324;
      *&v616 = v326;
      BYTE8(v616) = v328 & 1;
      __chkstk_darwin(v329);
      *(&v520 - 2) = &v615;
      LOBYTE(v321) = sub_100215C70(sub_1001F0EE0, (&v520 - 4), v313);

      if (v321)
      {
        v330 = v587;
        *(v231 + 120) = v588;
        v331 = v590;
        *(v231 + 136) = v589;
        *(v231 + 152) = v331;
        *(v231 + 168) = v591;
        v332 = v583;
        *(v231 + 56) = v584;
        v333 = v586;
        *(v231 + 72) = v585;
        *(v231 + 88) = v333;
        *(v231 + 104) = v330;
        v334 = v582;
        *(v231 + 8) = v581;
        *(v231 + 24) = v334;
        *v231 = v313;
        *(v231 + 40) = v332;
        swift_storeEnumTagMultiPayload();
        return _swiftEmptyArrayStorage;
      }

      v401 = Capability.applePushService.unsafeMutableAddressor();
      v402 = v401[1];
      v403 = v401[2];
      v404 = *(v401 + 24);
      *&v615 = *v401;
      *(&v615 + 1) = v402;
      *&v616 = v403;
      BYTE8(v616) = v404;
      __chkstk_darwin(v401);
      *(&v520 - 2) = &v615;

      v405 = sub_100215C70(sub_1001F0EE0, (&v520 - 4), v313);

      v406 = v587;
      *(v231 + 120) = v588;
      v407 = v590;
      *(v231 + 136) = v589;
      *(v231 + 152) = v407;
      *(v231 + 168) = v591;
      v408 = v583;
      *(v231 + 56) = v584;
      v409 = v586;
      *(v231 + 72) = v585;
      *(v231 + 88) = v409;
      *(v231 + 104) = v406;
      v410 = v582;
      *(v231 + 8) = v581;
      *(v231 + 24) = v410;
      *v231 = v313;
      *(v231 + 40) = v408;
      if (v405)
      {
        swift_storeEnumTagMultiPayload();
        return &off_1005A39F8;
      }
    }

    else
    {
      v161 = v559;
      sub_1002201C8(v559, v93, type metadata accessor for UnauthenticatedState);
      if (swift_getEnumCaseMultiPayload() - 5 > 1)
      {
        v283 = v557;
        v284 = v553;
        sub_1002201C8(v557, v553, _s6LoggerVMa);
        v285 = v551;
        sub_1002201C8(v283, v551, _s6LoggerVMa);
        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();
        v286 = sub_1004A4A54();
        v287 = sub_1004A6014();
        if (os_log_type_enabled(v286, v287))
        {
          v288 = swift_slowAlloc();
          v289 = swift_slowAlloc();
          *&v615 = v289;
          *v288 = 68158210;
          *(v288 + 4) = 2;
          *(v288 + 8) = 256;
          v290 = v556;
          v291 = *(v285 + *(v556 + 20));
          sub_100220230(v285, _s6LoggerVMa);
          *(v288 + 10) = v291;
          *(v288 + 11) = 2082;
          v292 = *(v284 + *(v290 + 20) + 4);
          sub_100220230(v284, _s6LoggerVMa);
          v293 = ConnectionID.debugDescription.getter(v292);
          v295 = sub_10015BA6C(v293, v294, &v615);

          *(v288 + 13) = v295;
          _os_log_impl(&_mh_execute_header, v286, v287, "[%.*hhx-%{public}s] Unexpected enabledCompress", v288, 0x15u);
          sub_1000197E0(v289);
        }

        else
        {
          sub_100220230(v285, _s6LoggerVMa);

          sub_100220230(v284, _s6LoggerVMa);
        }

        v370 = type metadata accessor for UnauthenticatedState;
        v371 = v93;
        goto LABEL_127;
      }

      sub_100220230(v161, type metadata accessor for UnauthenticatedState);
      v163 = *(v93 + 21);
      v162 = *(v93 + 22);
      v164 = *v93;
      v165 = *(v93 + 8);
      v166 = *(v93 + 24);
      v556 = *(v93 + 40);
      v557 = v165;
      v551 = *(v93 + 56);
      v552 = v166;
      v167 = *(v93 + 72);
      v168 = *(v93 + 88);
      v554 = *(v93 + 104);
      v555 = v167;
      v549 = *(v93 + 120);
      v550 = v168;
      v553 = *(v93 + 136);
      v548 = *(v93 + 152);
      v169 = Capability.applePushService.unsafeMutableAddressor();
      v170 = v169[1];
      v171 = v169[2];
      v172 = *(v169 + 24);
      *&v615 = *v169;
      *(&v615 + 1) = v170;
      *&v616 = v171;
      BYTE8(v616) = v172;
      __chkstk_darwin(v169);
      *(&v520 - 2) = &v615;

      v173 = sub_100215C70(sub_1001F0EE0, (&v520 - 4), v164);

      *v161 = v164;
      *(v161 + 24) = v552;
      *(v161 + 8) = v557;
      *(v161 + 56) = v551;
      *(v161 + 40) = v556;
      *(v161 + 88) = v550;
      *(v161 + 72) = v555;
      *(v161 + 120) = v549;
      *(v161 + 104) = v554;
      *(v161 + 152) = v548;
      *(v161 + 136) = v553;
      *(v161 + 168) = v163;
      *(v161 + 176) = v162;
      if (v173)
      {
        swift_storeEnumTagMultiPayload();
        return &off_1005A3938;
      }
    }

LABEL_122:
    swift_storeEnumTagMultiPayload();
    return _swiftEmptyArrayStorage;
  }

  if (v109 == 6)
  {
    v177 = UInt32.init(_:)(v627);
    v178 = *v177;
    v179 = *(v177 + 8);
    v180 = *(v177 + 16);
    v181 = *(v177 + 24);
    if (v181 >= 0xC0)
    {
      v182 = v180 | v179;
      if (v181 == 192 && v178 == 8 && !v182)
      {
        v183 = v559;
        sub_1002201C8(v559, v82, type metadata accessor for UnauthenticatedState);
        if (swift_getEnumCaseMultiPayload() != 8)
        {
          sub_100220230(v82, type metadata accessor for UnauthenticatedState);
          v480 = v557;
          v299 = v527;
          sub_1002201C8(v557, v527, _s6LoggerVMa);
          v300 = v526;
          sub_1002201C8(v480, v526, _s6LoggerVMa);
          variable initialization expression of Engine.isProcessingUpdates();
          variable initialization expression of Engine.isProcessingUpdates();
          variable initialization expression of Engine.isProcessingUpdates();
          v301 = sub_1004A4A54();
          v302 = sub_1004A6014();
          if (os_log_type_enabled(v301, v302))
          {
            v303 = swift_slowAlloc();
            v304 = swift_slowAlloc();
            *&v615 = v304;
            *v303 = 68158210;
            *(v303 + 4) = 2;
            *(v303 + 8) = 256;
            v481 = v556;
            v482 = *(v300 + *(v556 + 20));
            sub_100220230(v300, _s6LoggerVMa);
            *(v303 + 10) = v482;
            *(v303 + 11) = 2082;
            v483 = *(v299 + *(v481 + 20) + 4);
            sub_100220230(v299, _s6LoggerVMa);
            v484 = ConnectionID.debugDescription.getter(v483);
            v486 = sub_10015BA6C(v484, v485, &v615);

            *(v303 + 13) = v486;
            v311 = "[%.*hhx-%{public}s] Unexpected unableToGetPushResponse";
            goto LABEL_125;
          }

          goto LABEL_126;
        }

        sub_100220230(v183, type metadata accessor for UnauthenticatedState);
        v184 = *(v82 + 1);
        v615 = *v82;
        v616 = v184;
        v185 = *(v82 + 3);
        v617 = *(v82 + 2);
        v618 = v185;
        v186 = *(v82 + 8);
        v187 = *(v82 + 184);
        v188 = *(v82 + 216);
        v612 = *(v82 + 200);
        v613 = v188;
        v614 = *(v82 + 232);
        v189 = *(v82 + 120);
        v190 = *(v82 + 152);
        v608 = *(v82 + 136);
        v609 = v190;
        v191 = *(v82 + 168);
        v611 = v187;
        v610 = v191;
        v192 = *(v82 + 88);
        v604 = *(v82 + 72);
        v605 = v192;
        v193 = *(v82 + 104);
        v607 = v189;
        v606 = v193;
        sub_10021D02C(&v615);
        v194 = v557;
        v195 = v529;
        sub_1002201C8(v557, v529, _s6LoggerVMa);
        v196 = v528;
        sub_1002201C8(v194, v528, _s6LoggerVMa);
        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();
        v197 = sub_1004A4A54();
        v198 = sub_1004A6014();
        if (os_log_type_enabled(v197, v198))
        {
          v199 = swift_slowAlloc();
          v200 = swift_slowAlloc();
          *&v593 = v200;
          *v199 = 68158210;
          *(v199 + 4) = 2;
          *(v199 + 8) = 256;
          v201 = v556;
          v202 = *(v556 + 20);
          *&v557 = v186;
          v203 = *(v196 + v202);
          sub_100220230(v196, _s6LoggerVMa);
          *(v199 + 10) = v203;
          *(v199 + 11) = 2082;
          v204 = *(v195 + *(v201 + 20) + 4);
          sub_100220230(v195, _s6LoggerVMa);
          v205 = ConnectionID.debugDescription.getter(v204);
          v207 = sub_10015BA6C(v205, v206, &v593);

          *(v199 + 13) = v207;
          v186 = v557;
          _os_log_impl(&_mh_execute_header, v197, v198, "[%.*hhx-%{public}s] Unable to get push response", v199, 0x15u);
          sub_1000197E0(v200);
        }

        else
        {
          sub_100220230(v196, _s6LoggerVMa);

          sub_100220230(v195, _s6LoggerVMa);
        }

        v489 = v610;
        v490 = v559;
        *(v559 + 120) = v611;
        v491 = v613;
        *(v490 + 136) = v612;
        *(v490 + 152) = v491;
        *(v490 + 168) = v614;
        v492 = v606;
        *(v490 + 56) = v607;
        v493 = v609;
        *(v490 + 72) = v608;
        *(v490 + 88) = v493;
        *(v490 + 104) = v489;
        v494 = v605;
        *(v490 + 8) = v604;
        *(v490 + 24) = v494;
        *v490 = v186;
        *(v490 + 40) = v492;
        goto LABEL_122;
      }

      if (v181 == 192 && v178 == 9 && !v182)
      {
        v411 = v559;
        sub_1002201C8(v559, v85, type metadata accessor for UnauthenticatedState);
        if (swift_getEnumCaseMultiPayload() == 3)
        {
          sub_100220230(v411, type metadata accessor for UnauthenticatedState);
          v412 = *v85;
          v413 = v557;
          v414 = v523;
          sub_1002201C8(v557, v523, _s6LoggerVMa);
          v415 = v522;
          sub_1002201C8(v413, v522, _s6LoggerVMa);
          variable initialization expression of Engine.isProcessingUpdates();
          variable initialization expression of Engine.isProcessingUpdates();
          variable initialization expression of Engine.isProcessingUpdates();
          v416 = sub_1004A4A54();
          v417 = sub_1004A6014();
          if (os_log_type_enabled(v416, v417))
          {
            v418 = swift_slowAlloc();
            *&v555 = swift_slowAlloc();
            *&v615 = v555;
            *v418 = 68158210;
            *(v418 + 4) = 2;
            *(v418 + 8) = 256;
            v419 = v556;
            v420 = *(v556 + 20);
            *&v557 = v412;
            v421 = *(v415 + v420);
            sub_100220230(v415, _s6LoggerVMa);
            *(v418 + 10) = v421;
            *(v418 + 11) = 2082;
            v422 = *(v414 + *(v419 + 20) + 4);
            sub_100220230(v414, _s6LoggerVMa);
            v423 = ConnectionID.debugDescription.getter(v422);
            v425 = sub_10015BA6C(v423, v424, &v615);

            *(v418 + 13) = v425;
            v412 = v557;
            _os_log_impl(&_mh_execute_header, v416, v417, "[%.*hhx-%{public}s] Unable to identify server.", v418, 0x15u);
            sub_1000197E0(v555);
          }

          else
          {
            sub_100220230(v415, _s6LoggerVMa);

            sub_100220230(v414, _s6LoggerVMa);
          }

          v503 = ServerID.empty.unsafeMutableAddressor();
          v505 = v503[1];
          v504 = v503[2];
          v593 = *v503;
          v594 = v505;
          v595 = v504;
          v506 = v503[5];
          v508 = v503[3];
          v507 = v503[4];
          v599 = v503[6];
          v598 = v506;
          v596 = v508;
          v597 = v507;
          v509 = v503[9];
          v511 = v503[7];
          v510 = v503[8];
          v603 = v503[10];
          v602 = v509;
          v600 = v511;
          v601 = v510;
          v622 = v503[7];
          v623 = v503[8];
          v624 = v503[9];
          v625 = v503[10];
          v618 = v503[3];
          v512 = v618;
          v619 = v503[4];
          v620 = v503[5];
          v621 = v503[6];
          v615 = *v503;
          v616 = v503[1];
          v617 = v503[2];
          *v411 = v412;
          *(v411 + 56) = v512;
          v513 = v619;
          *(v411 + 40) = v617;
          v514 = v615;
          *(v411 + 24) = v616;
          *(v411 + 8) = v514;
          v515 = v620;
          *(v411 + 104) = v621;
          *(v411 + 88) = v515;
          *(v411 + 72) = v513;
          v516 = v624;
          *(v411 + 168) = v625;
          *(v411 + 152) = v516;
          v517 = v622;
          *(v411 + 136) = v623;
          *(v411 + 120) = v517;
          swift_storeEnumTagMultiPayload();
          sub_10010E800(&v593, &v592);
          return _swiftEmptyArrayStorage;
        }

        sub_100220230(v85, type metadata accessor for UnauthenticatedState);
        v495 = v557;
        v299 = v525;
        sub_1002201C8(v557, v525, _s6LoggerVMa);
        v300 = v524;
        sub_1002201C8(v495, v524, _s6LoggerVMa);
        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();
        v301 = sub_1004A4A54();
        v302 = sub_1004A6014();
        if (os_log_type_enabled(v301, v302))
        {
          v303 = swift_slowAlloc();
          v304 = swift_slowAlloc();
          *&v615 = v304;
          *v303 = 68158210;
          *(v303 + 4) = 2;
          *(v303 + 8) = 256;
          v496 = v556;
          v497 = *(v300 + *(v556 + 20));
          sub_100220230(v300, _s6LoggerVMa);
          *(v303 + 10) = v497;
          *(v303 + 11) = 2082;
          v498 = *(v299 + *(v496 + 20) + 4);
          sub_100220230(v299, _s6LoggerVMa);
          v499 = ConnectionID.debugDescription.getter(v498);
          v501 = sub_10015BA6C(v499, v500, &v615);

          *(v303 + 13) = v501;
          v311 = "[%.*hhx-%{public}s] Unexpected unableToIdentifyServer";
          goto LABEL_125;
        }

        goto LABEL_126;
      }
    }

    v426 = v559;
    sub_100220230(v559, type metadata accessor for UnauthenticatedState);
    *v426 = v178;
    *(v426 + 8) = v179;
    *(v426 + 16) = v180;
    *(v426 + 24) = v181;
    swift_storeEnumTagMultiPayload();
    v623 = v641;
    v624 = v642;
    v625 = v643;
    v626 = v644;
    v619 = v637;
    v620 = v638;
    v621 = v639;
    v622 = v640;
    v615 = v633;
    v616 = v634;
    v617 = v635;
    v618 = v636;
    v427 = UInt32.init(_:)(&v615);
    sub_10021D098(*v427, *(v427 + 8), *(v427 + 16), *(v427 + 24));
    return _swiftEmptyArrayStorage;
  }

  if (v109 == 7)
  {
    v123 = v559;
    sub_1002201C8(v559, v99, type metadata accessor for UnauthenticatedState);
    if (swift_getEnumCaseMultiPayload() == 13)
    {
      sub_100220230(v123, type metadata accessor for UnauthenticatedState);
      sub_100220230(v99, type metadata accessor for UnauthenticatedState);
      swift_storeEnumTagMultiPayload();
      return &off_1005A38B8;
    }

    sub_100220230(v99, type metadata accessor for UnauthenticatedState);
    v342 = v557;
    v299 = v536;
    sub_1002201C8(v557, v536, _s6LoggerVMa);
    v300 = v535;
    sub_1002201C8(v342, v535, _s6LoggerVMa);
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    v301 = sub_1004A4A54();
    v302 = sub_1004A6014();
    if (!os_log_type_enabled(v301, v302))
    {
      goto LABEL_126;
    }

    v303 = swift_slowAlloc();
    v304 = swift_slowAlloc();
    *&v615 = v304;
    *v303 = 68158210;
    *(v303 + 4) = 2;
    *(v303 + 8) = 256;
    v343 = v556;
    v344 = *(v300 + *(v556 + 20));
    sub_100220230(v300, _s6LoggerVMa);
    *(v303 + 10) = v344;
    *(v303 + 11) = 2082;
    v345 = *(v299 + *(v343 + 20) + 4);
    sub_100220230(v299, _s6LoggerVMa);
    v346 = ConnectionID.debugDescription.getter(v345);
    v348 = sub_10015BA6C(v346, v347, &v615);

    *(v303 + 13) = v348;
    v311 = "[%.*hhx-%{public}s] Unexpected startTLS";
    goto LABEL_125;
  }

  v241 = v559;
  sub_1002201C8(v559, v96, type metadata accessor for UnauthenticatedState);
  if (swift_getEnumCaseMultiPayload() != 5)
  {
    sub_100220230(v96, type metadata accessor for UnauthenticatedState);
    v356 = v557;
    v299 = v538;
    sub_1002201C8(v557, v538, _s6LoggerVMa);
    v300 = v537;
    sub_1002201C8(v356, v537, _s6LoggerVMa);
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    v301 = sub_1004A4A54();
    v302 = sub_1004A6014();
    if (os_log_type_enabled(v301, v302))
    {
      v303 = swift_slowAlloc();
      v304 = swift_slowAlloc();
      *&v615 = v304;
      *v303 = 68158210;
      *(v303 + 4) = 2;
      *(v303 + 8) = 256;
      v357 = v556;
      v358 = *(v300 + *(v556 + 20));
      sub_100220230(v300, _s6LoggerVMa);
      *(v303 + 10) = v358;
      *(v303 + 11) = 2082;
      v359 = *(v299 + *(v357 + 20) + 4);
      sub_100220230(v299, _s6LoggerVMa);
      v360 = ConnectionID.debugDescription.getter(v359);
      v362 = sub_10015BA6C(v360, v361, &v615);

      *(v303 + 13) = v362;
      v311 = "[%.*hhx-%{public}s] Unexpected serverAcceptedCompress";
      goto LABEL_125;
    }

    goto LABEL_126;
  }

  sub_100220230(v241, type metadata accessor for UnauthenticatedState);
  v242 = *v96;
  v243 = *(v96 + 120);
  v244 = *(v96 + 152);
  v568 = *(v96 + 136);
  v569 = v244;
  v570 = *(v96 + 168);
  v245 = *(v96 + 56);
  v246 = *(v96 + 88);
  v564 = *(v96 + 72);
  v565 = v246;
  v566 = *(v96 + 104);
  v567 = v243;
  v247 = *(v96 + 24);
  v560 = *(v96 + 8);
  v561 = v247;
  v562 = *(v96 + 40);
  v563 = v245;
  v248 = v557;
  v249 = v540;
  sub_1002201C8(v557, v540, _s6LoggerVMa);
  v250 = v539;
  sub_1002201C8(v248, v539, _s6LoggerVMa);
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  v251 = sub_1004A4A54();
  v252 = sub_1004A6004();
  if (os_log_type_enabled(v251, v252))
  {
    v253 = swift_slowAlloc();
    v254 = swift_slowAlloc();
    *&v615 = v254;
    *v253 = 68158210;
    *(v253 + 4) = 2;
    *(v253 + 8) = 256;
    v255 = v556;
    v256 = *(v556 + 20);
    *&v557 = v242;
    v257 = *(v250 + v256);
    sub_100220230(v250, _s6LoggerVMa);
    *(v253 + 10) = v257;
    *(v253 + 11) = 2082;
    v258 = *(v249 + *(v255 + 20) + 4);
    sub_100220230(v249, _s6LoggerVMa);
    v259 = ConnectionID.debugDescription.getter(v258);
    v261 = sub_10015BA6C(v259, v260, &v615);

    *(v253 + 13) = v261;
    v242 = v557;
    _os_log_impl(&_mh_execute_header, v251, v252, "[%.*hhx-%{public}s] Server accepted compression.", v253, 0x15u);
    sub_1000197E0(v254);
  }

  else
  {
    sub_100220230(v250, _s6LoggerVMa);

    sub_100220230(v249, _s6LoggerVMa);
  }

  v428 = v566;
  *(v241 + 120) = v567;
  v429 = v569;
  *(v241 + 136) = v568;
  *(v241 + 152) = v429;
  *(v241 + 168) = v570;
  v430 = v562;
  *(v241 + 56) = v563;
  v431 = v565;
  *(v241 + 72) = v564;
  *(v241 + 88) = v431;
  *(v241 + 104) = v428;
  v432 = v561;
  *(v241 + 8) = v560;
  *(v241 + 24) = v432;
  *v241 = v242;
  *(v241 + 40) = v430;
  swift_storeEnumTagMultiPayload();
  return &off_1005A38F8;
}

uint64_t sub_10021BC44(unint64_t *a1, unint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;
  v5 = a2[1];
  v6 = a2[2];
  if (!(v3 >> 62))
  {
    if (v4 >> 62)
    {
      return 0;
    }

    return sub_1001FCCD8(v3, a1[1], a1[2], v4, v5, v6);
  }

  if (v3 >> 62 == 1)
  {
    if (v4 >> 62 != 1)
    {
      return 0;
    }

    return sub_1001FCCD8(v3, a1[1], a1[2], v4, v5, v6);
  }

  return v4 >> 62 == 2 && v4 == 0x8000000000000000 && (v6 | v5) == 0;
}

uint64_t sub_10021BCB4(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    sub_1004A6724(44);
    v1._countAndFlagsBits = 0xD000000000000020;
    v1._object = 0x80000001004AC410;
    goto LABEL_5;
  }

  if (a1 >> 62 == 1)
  {
    sub_1004A6724(28);
    v1._object = 0x80000001004AC3F0;
    v1._countAndFlagsBits = 0xD000000000000010;
LABEL_5:
    sub_1004A5994(v1);
    type metadata accessor for tls_protocol_version_t(0);
    sub_1004A6934();
    v3._countAndFlagsBits = 0x206574697573202CLL;
    v3._object = 0xE800000000000000;
    sub_1004A5994(v3);
    type metadata accessor for tls_ciphersuite_t(0);
    sub_1004A6934();
    return 0;
  }

  return 1701736302;
}

uint64_t sub_10021BE0C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2 == 1)
  {
    result = sub_1002151A8(a2);
    v10[0] = result;
    v10[1] = v6;
    v10[2] = v7;
    v11 = v8;
    if (v6)
    {
      __chkstk_darwin(result);
      v9[2] = v10;
      v3 = sub_100215C70(sub_1001F0EE0, v9, a1);

      return v3 & 1;
    }

    __break(1u);
  }

  else
  {
    if (!v2)
    {
      v3 = 1;
      return v3 & 1;
    }

    return sub_10021BEF4(a1, a2);
  }

  return result;
}

uint64_t sub_10021BEF4(uint64_t isStackAllocationSafe, uint64_t a2)
{
  v3 = isStackAllocationSafe;
  v15 = isStackAllocationSafe;
  v4 = *(a2 + 32);
  v5 = v4 & 0x3F;
  v17 = &v15;
  v18 = a2;
  v6 = (1 << v4) + 63;
  if (v5 <= 0xD || (v11 = 8 * (v6 >> 6), isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    __chkstk_darwin(isStackAllocationSafe);
    v8 = &v14 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v8, v7);
    v9 = sub_10021DC08(v8, v3, a2);
  }

  else
  {
    v12 = swift_slowAlloc();
    bzero(v12, v11);
    sub_10021DBD0(v12, &v16);
    v13 = v16;

    v9 = v13;
  }

  return v9 & 1;
}

uint64_t sub_10021C074(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  v6 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (v6 || (v7 = sub_1004A6D34(), result = 0, (v7 & 1) != 0))
  {
    if (v3)
    {
      if (v5)
      {
        return 1;
      }
    }

    else
    {
      if (((v4 ^ v2) & 0xFFFFFFFFFFFFC000) != 0)
      {
        v9 = 1;
      }

      else
      {
        v9 = v5;
      }

      if ((v9 & 1) == 0)
      {
        return 1;
      }
    }

    return 0;
  }

  return result;
}

uint64_t sub_10021C10C(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4, uint64_t a5, uint64_t a6, unint64_t a7, unsigned __int8 a8)
{
  if ((a4 >> 6) <= 1u)
  {
    if (a4 >> 6)
    {
      if ((a8 & 0xC0) != 0x40)
      {
        return 0;
      }

      v9 = a8 & 0x3F;
      if ((a4 & 0x3F) != 0)
      {
        if ((a4 & 0x3F) == 1)
        {
          if (v9 != 1)
          {
            return 0;
          }
        }

        else if (v9 != 2)
        {
          return 0;
        }
      }

      else if ((a8 & 0x3F) != 0)
      {
        return 0;
      }
    }

    else
    {
      if (a8 > 0x3Fu)
      {
        return 0;
      }

      if (a3 > 1)
      {
        if (a3 == 2)
        {
          return a7 == 2;
        }

        if (a3 == 3)
        {
          return a7 == 3;
        }
      }

      else
      {
        if (!a3)
        {
          return !a7;
        }

        if (a3 == 1)
        {
          return a7 == 1;
        }
      }

      if (a7 < 4)
      {
        return 0;
      }
    }

    return (static ResponseText.__derived_struct_equals(_:_:)(a1, a2) & 1) != 0;
  }

  if (a4 >> 6 != 2)
  {
    v10 = a3 | a2;
    if (!(a3 | a2 | a1) && a4 == 192)
    {
      return a8 >= 0xC0u && !(a7 | a6 | a5) && a8 == 192;
    }

    if (a4 == 192 && a1 == 1 && !v10)
    {
      if (a8 != 192 || a5 != 1)
      {
        return 0;
      }
    }

    else if (a4 == 192 && a1 == 2 && !v10)
    {
      if (a8 != 192 || a5 != 2)
      {
        return 0;
      }
    }

    else if (a4 == 192 && a1 == 3 && !v10)
    {
      if (a8 != 192 || a5 != 3)
      {
        return 0;
      }
    }

    else if (a4 == 192 && a1 == 4 && !v10)
    {
      if (a8 != 192 || a5 != 4)
      {
        return 0;
      }
    }

    else if (a4 == 192 && a1 == 5 && !v10)
    {
      if (a8 != 192 || a5 != 5)
      {
        return 0;
      }
    }

    else if (a4 == 192 && a1 == 6 && !v10)
    {
      if (a8 != 192 || a5 != 6)
      {
        return 0;
      }
    }

    else if (a4 == 192 && a1 == 7 && !v10)
    {
      if (a8 != 192 || a5 != 7)
      {
        return 0;
      }
    }

    else if (a4 == 192 && a1 == 8 && !v10)
    {
      if (a8 != 192 || a5 != 8)
      {
        return 0;
      }
    }

    else if (a8 != 192 || a5 != 9)
    {
      return 0;
    }

    return !(a7 | a6);
  }

  if ((a8 & 0xC0) != 0x80)
  {
    return 0;
  }

  if (a1 == a5 && a2 == a6)
  {
    return 1;
  }

  return sub_1004A6D34();
}

uint64_t sub_10021C42C(uint64_t a1, uint64_t *a2)
{
  v132 = a1;
  v133 = a2;
  v2 = type metadata accessor for Authenticator();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v125 = &v124 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for UnauthenticatedState();
  v6 = *(*(v5 - 8) + 64);
  v7 = __chkstk_darwin(v5);
  v129 = &v124 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v130 = &v124 - v10;
  v11 = __chkstk_darwin(v9);
  v131 = &v124 - v12;
  v13 = __chkstk_darwin(v11);
  v128 = &v124 - v14;
  v15 = __chkstk_darwin(v13);
  v127 = &v124 - v16;
  v17 = __chkstk_darwin(v15);
  v19 = &v124 - v18;
  v20 = __chkstk_darwin(v17);
  v22 = &v124 - v21;
  v23 = __chkstk_darwin(v20);
  v25 = (&v124 - v24);
  v26 = __chkstk_darwin(v23);
  v126 = &v124 - v27;
  v28 = __chkstk_darwin(v26);
  v30 = (&v124 - v29);
  __chkstk_darwin(v28);
  v32 = (&v124 - v31);
  v33 = sub_10000C9C0(&qword_1005D5290, &unk_1004E7580);
  v34 = *(*(v33 - 8) + 64);
  v35 = __chkstk_darwin(v33 - 8);
  v37 = &v124 - v36;
  v38 = (&v124 + *(v35 + 56) - v36);
  sub_1002201C8(v132, &v124 - v36, type metadata accessor for UnauthenticatedState);
  v39 = v133;
  v133 = v38;
  sub_1002201C8(v39, v38, type metadata accessor for UnauthenticatedState);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_1002201C8(v37, v30, type metadata accessor for UnauthenticatedState);
      v68 = *v30;
      v69 = v133;
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        goto LABEL_19;
      }

      goto LABEL_32;
    case 2u:
      v65 = v126;
      sub_1002201C8(v37, v126, type metadata accessor for UnauthenticatedState);
      v66 = v133;
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        v67 = v125;
        sub_100220160(v66, v125, type metadata accessor for Authenticator);
        v58 = sub_100197290(v65, v67);
        sub_100220230(v67, type metadata accessor for Authenticator);
        sub_100220230(v65, type metadata accessor for Authenticator);
        goto LABEL_33;
      }

      sub_100220230(v65, type metadata accessor for Authenticator);
      goto LABEL_20;
    case 3u:
      sub_1002201C8(v37, v25, type metadata accessor for UnauthenticatedState);
      v68 = *v25;
      v69 = v133;
      if (swift_getEnumCaseMultiPayload() != 3)
      {
        goto LABEL_19;
      }

LABEL_32:
      v58 = sub_1001CE84C(v68, *v69);

      goto LABEL_33;
    case 4u:
      sub_1002201C8(v37, v22, type metadata accessor for UnauthenticatedState);
      v44 = *v22;
      v45 = *(v22 + 120);
      v46 = *(v22 + 152);
      v144 = *(v22 + 136);
      v145 = v46;
      v146 = *(v22 + 168);
      v47 = *(v22 + 56);
      v48 = *(v22 + 88);
      v140 = *(v22 + 72);
      v141 = v48;
      v142 = *(v22 + 104);
      v143 = v45;
      v49 = *(v22 + 24);
      v136 = *(v22 + 8);
      v137 = v49;
      v138 = *(v22 + 40);
      v139 = v47;
      v50 = v133;
      if (swift_getEnumCaseMultiPayload() == 4)
      {
        goto LABEL_12;
      }

      goto LABEL_18;
    case 5u:
      sub_1002201C8(v37, v19, type metadata accessor for UnauthenticatedState);
      v44 = *v19;
      v85 = *(v19 + 120);
      v86 = *(v19 + 152);
      v144 = *(v19 + 136);
      v145 = v86;
      v146 = *(v19 + 168);
      v87 = *(v19 + 56);
      v88 = *(v19 + 88);
      v140 = *(v19 + 72);
      v141 = v88;
      v142 = *(v19 + 104);
      v143 = v85;
      v89 = *(v19 + 24);
      v136 = *(v19 + 8);
      v137 = v89;
      v138 = *(v19 + 40);
      v139 = v87;
      v50 = v133;
      if (swift_getEnumCaseMultiPayload() != 5)
      {
        goto LABEL_18;
      }

      goto LABEL_12;
    case 6u:
      v91 = v127;
      sub_1002201C8(v37, v127, type metadata accessor for UnauthenticatedState);
      v44 = *v91;
      v92 = *(v91 + 120);
      v93 = *(v91 + 152);
      v144 = *(v91 + 136);
      v145 = v93;
      v146 = *(v91 + 168);
      v94 = *(v91 + 56);
      v95 = *(v91 + 88);
      v140 = *(v91 + 72);
      v141 = v95;
      v142 = *(v91 + 104);
      v143 = v92;
      v96 = *(v91 + 24);
      v136 = *(v91 + 8);
      v137 = v96;
      v138 = *(v91 + 40);
      v139 = v94;
      v50 = v133;
      if (swift_getEnumCaseMultiPayload() != 6)
      {
        goto LABEL_18;
      }

      goto LABEL_12;
    case 7u:
      v70 = v128;
      sub_1002201C8(v37, v128, type metadata accessor for UnauthenticatedState);
      v71 = *v70;
      v72 = *(v70 + 120);
      v73 = *(v70 + 152);
      v144 = *(v70 + 136);
      v145 = v73;
      v146 = *(v70 + 168);
      v74 = *(v70 + 56);
      v75 = *(v70 + 88);
      v140 = *(v70 + 72);
      v141 = v75;
      v142 = *(v70 + 104);
      v143 = v72;
      v76 = *(v70 + 24);
      v136 = *(v70 + 8);
      v137 = v76;
      v138 = *(v70 + 40);
      v139 = v74;
      v77 = v133;
      if (swift_getEnumCaseMultiPayload() != 7)
      {
        goto LABEL_18;
      }

      v78 = *v77;
      v79 = *(v77 + 15);
      v80 = *(v77 + 19);
      v155 = *(v77 + 17);
      v156 = v80;
      v157 = *(v77 + 21);
      v81 = *(v77 + 7);
      v82 = *(v77 + 11);
      v151 = *(v77 + 9);
      v152 = v82;
      v153 = *(v77 + 13);
      v154 = v79;
      v83 = *(v77 + 3);
      v147 = *(v77 + 1);
      v148 = v83;
      v149 = *(v77 + 5);
      v150 = v81;
      v84 = sub_1001CE84C(v71, v78);

      if ((v84 & 1) == 0)
      {
        goto LABEL_30;
      }

      goto LABEL_14;
    case 8u:
      v107 = v131;
      sub_1002201C8(v37, v131, type metadata accessor for UnauthenticatedState);
      v108 = *(v107 + 16);
      v134[0] = *v107;
      v134[1] = v108;
      v109 = *(v107 + 48);
      v134[2] = *(v107 + 32);
      v134[3] = v109;
      v44 = *(v107 + 64);
      v110 = *(v107 + 184);
      v111 = *(v107 + 216);
      v144 = *(v107 + 200);
      v145 = v111;
      v146 = *(v107 + 232);
      v112 = *(v107 + 120);
      v113 = *(v107 + 152);
      v140 = *(v107 + 136);
      v141 = v113;
      v142 = *(v107 + 168);
      v143 = v110;
      v114 = *(v107 + 88);
      v136 = *(v107 + 72);
      v137 = v114;
      v138 = *(v107 + 104);
      v139 = v112;
      v115 = v133;
      if (swift_getEnumCaseMultiPayload() != 8)
      {
        sub_10010E990(&v136);

        sub_10021D02C(v134);
        goto LABEL_20;
      }

      v116 = *(v115 + 1);
      v135[0] = *v115;
      v135[1] = v116;
      v117 = *(v115 + 3);
      v135[2] = *(v115 + 2);
      v135[3] = v117;
      v51 = v115[8];
      v118 = *(v115 + 23);
      v119 = *(v115 + 27);
      v155 = *(v115 + 25);
      v156 = v119;
      v157 = *(v115 + 29);
      v120 = *(v115 + 15);
      v121 = *(v115 + 19);
      v151 = *(v115 + 17);
      v152 = v121;
      v153 = *(v115 + 21);
      v154 = v118;
      v122 = *(v115 + 11);
      v147 = *(v115 + 9);
      v148 = v122;
      v149 = *(v115 + 13);
      v150 = v120;
      v123 = static PushRegistrationInfo.__derived_struct_equals(_:_:)(v134, v135);
      sub_10021D02C(v134);
      sub_10021D02C(v135);
      if (v123)
      {
        goto LABEL_13;
      }

      sub_10010E990(&v147);

      sub_10010E990(&v136);
      goto LABEL_51;
    case 9u:
      v59 = v130;
      sub_1002201C8(v37, v130, type metadata accessor for UnauthenticatedState);
      v44 = *v59;
      v60 = *(v59 + 120);
      v61 = *(v59 + 152);
      v144 = *(v59 + 136);
      v145 = v61;
      v146 = *(v59 + 168);
      v62 = *(v59 + 56);
      v63 = *(v59 + 88);
      v140 = *(v59 + 72);
      v141 = v63;
      v142 = *(v59 + 104);
      v143 = v60;
      v64 = *(v59 + 24);
      v136 = *(v59 + 8);
      v137 = v64;
      v138 = *(v59 + 40);
      v139 = v62;
      v50 = v133;
      if (swift_getEnumCaseMultiPayload() != 9)
      {
LABEL_18:
        sub_10010E990(&v136);
LABEL_19:

        goto LABEL_20;
      }

LABEL_12:
      v51 = *v50;
      v52 = *(v50 + 15);
      v53 = *(v50 + 19);
      v155 = *(v50 + 17);
      v156 = v53;
      v157 = *(v50 + 21);
      v54 = *(v50 + 7);
      v55 = *(v50 + 11);
      v151 = *(v50 + 9);
      v152 = v55;
      v153 = *(v50 + 13);
      v154 = v52;
      v56 = *(v50 + 3);
      v147 = *(v50 + 1);
      v148 = v56;
      v149 = *(v50 + 5);
      v150 = v54;
LABEL_13:
      v57 = sub_1001CE84C(v44, v51);

      if ((v57 & 1) == 0)
      {
LABEL_30:
        sub_10010E990(&v147);
        sub_10010E990(&v136);
        goto LABEL_52;
      }

LABEL_14:
      v58 = static ServerID.__derived_struct_equals(_:_:)(&v136, &v147);
      sub_10010E990(&v136);
      sub_10010E990(&v147);
LABEL_33:
      sub_100220230(v37, type metadata accessor for UnauthenticatedState);
      return v58 & 1;
    case 0xAu:
      v97 = v129;
      sub_1002201C8(v37, v129, type metadata accessor for UnauthenticatedState);
      v98 = *v97;
      v99 = *(v97 + 8);
      v100 = *(v97 + 16);
      v101 = *(v97 + 24);
      v102 = v133;
      if (swift_getEnumCaseMultiPayload() == 10)
      {
        v132 = v37;
        v103 = *v102;
        v104 = v102[1];
        v105 = v102[2];
        v106 = *(v102 + 24);
        v58 = sub_10021C10C(v98, v99, v100, v101, *v102, v104, v105, v106);
        sub_100191E14(v103, v104, v105, v106);
        sub_100191E14(v98, v99, v100, v101);
        sub_100220230(v132, type metadata accessor for UnauthenticatedState);
        return v58 & 1;
      }

      sub_100191E14(v98, v99, v100, v101);
LABEL_20:
      sub_100025F40(v37, &qword_1005D5290, &unk_1004E7580);
      goto LABEL_21;
    case 0xBu:
      if (swift_getEnumCaseMultiPayload() == 11)
      {
        goto LABEL_37;
      }

      goto LABEL_20;
    case 0xCu:
      if (swift_getEnumCaseMultiPayload() == 12)
      {
        goto LABEL_37;
      }

      goto LABEL_20;
    case 0xDu:
      if (swift_getEnumCaseMultiPayload() == 13)
      {
        goto LABEL_37;
      }

      goto LABEL_20;
    case 0xEu:
      if (swift_getEnumCaseMultiPayload() == 14)
      {
        goto LABEL_37;
      }

      goto LABEL_20;
    case 0xFu:
      if (swift_getEnumCaseMultiPayload() == 15)
      {
        goto LABEL_37;
      }

      goto LABEL_20;
    default:
      sub_1002201C8(v37, v32, type metadata accessor for UnauthenticatedState);
      v40 = *v32;
      v41 = v133;
      if (swift_getEnumCaseMultiPayload())
      {
        goto LABEL_19;
      }

      v42 = *v41;
      if (!v40)
      {
        if (!v42)
        {
          goto LABEL_37;
        }

LABEL_51:

        goto LABEL_52;
      }

      if (!v42)
      {
        goto LABEL_51;
      }

      v43 = sub_1001CE84C(v40, v42);

      if (v43)
      {
LABEL_37:
        sub_100220230(v37, type metadata accessor for UnauthenticatedState);
        v58 = 1;
        return v58 & 1;
      }

LABEL_52:
      sub_100220230(v37, type metadata accessor for UnauthenticatedState);
LABEL_21:
      v58 = 0;
      return v58 & 1;
  }
}

uint64_t sub_10021D080(uint64_t a1)
{
  if (*(a1 + 176) <= 6u)
  {
    return *(a1 + 176);
  }

  else
  {
    return (*a1 + 7);
  }
}

uint64_t sub_10021D098(uint64_t result, uint64_t a2, unint64_t a3, unsigned __int8 a4)
{
  if ((a4 >> 6) > 1u)
  {
    if (a4 >> 6 == 2)
    {
    }
  }

  else if (a4 >> 6)
  {
    return sub_10001123C(result, a2, a3, a4 & 0x3F);
  }

  else
  {
    return sub_1001978DC(result, a2, a3);
  }

  return result;
}

uint64_t sub_10021D0C8(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 144);
  v192[8] = *(a1 + 128);
  v192[9] = v4;
  v192[10] = *(a1 + 160);
  v193 = *(a1 + 176);
  v5 = *(a1 + 80);
  v192[4] = *(a1 + 64);
  v192[5] = v5;
  v6 = *(a1 + 112);
  v192[6] = *(a1 + 96);
  v192[7] = v6;
  v7 = *(a1 + 16);
  v192[0] = *a1;
  v192[1] = v7;
  v8 = *(a1 + 48);
  v192[2] = *(a1 + 32);
  v192[3] = v8;
  v9 = sub_10021D080(v192);
  if (v9 > 5)
  {
    if (v9 > 8)
    {
      if (v9 == 9)
      {
        v87 = *(a2 + 144);
        v188 = *(a2 + 128);
        v189 = v87;
        v190 = *(a2 + 160);
        v191 = *(a2 + 176);
        v88 = *(a2 + 80);
        v184 = *(a2 + 64);
        v185 = v88;
        v89 = *(a2 + 112);
        v186 = *(a2 + 96);
        v187 = v89;
        v90 = *(a2 + 16);
        v180 = *a2;
        v181 = v90;
        v91 = *(a2 + 48);
        v182 = *(a2 + 32);
        v183 = v91;
        if (sub_10021D080(&v180) == 9)
        {
          goto LABEL_55;
        }
      }

      else if (v9 == 10)
      {
        v49 = *(a2 + 144);
        v188 = *(a2 + 128);
        v189 = v49;
        v190 = *(a2 + 160);
        v191 = *(a2 + 176);
        v50 = *(a2 + 80);
        v184 = *(a2 + 64);
        v185 = v50;
        v51 = *(a2 + 112);
        v186 = *(a2 + 96);
        v187 = v51;
        v52 = *(a2 + 16);
        v180 = *a2;
        v181 = v52;
        v53 = *(a2 + 48);
        v182 = *(a2 + 32);
        v183 = v53;
        if (sub_10021D080(&v180) == 10)
        {
          goto LABEL_55;
        }
      }

      else
      {
        v135 = *(a2 + 144);
        v188 = *(a2 + 128);
        v189 = v135;
        v190 = *(a2 + 160);
        v191 = *(a2 + 176);
        v136 = *(a2 + 80);
        v184 = *(a2 + 64);
        v185 = v136;
        v137 = *(a2 + 112);
        v186 = *(a2 + 96);
        v187 = v137;
        v138 = *(a2 + 16);
        v180 = *a2;
        v181 = v138;
        v139 = *(a2 + 48);
        v182 = *(a2 + 32);
        v183 = v139;
        if (sub_10021D080(&v180) == 11)
        {
          goto LABEL_55;
        }
      }
    }

    else if (v9 == 6)
    {
      v69 = UInt32.init(_:)(v192);
      v70 = *v69;
      v71 = *(v69 + 8);
      v72 = *(v69 + 16);
      v73 = *(v69 + 24);
      v74 = *(a2 + 144);
      v188 = *(a2 + 128);
      v189 = v74;
      v190 = *(a2 + 160);
      v191 = *(a2 + 176);
      v75 = *(a2 + 80);
      v184 = *(a2 + 64);
      v185 = v75;
      v76 = *(a2 + 112);
      v186 = *(a2 + 96);
      v187 = v76;
      v77 = *(a2 + 16);
      v180 = *a2;
      v181 = v77;
      v78 = *(a2 + 48);
      v182 = *(a2 + 32);
      v183 = v78;
      if (sub_10021D080(&v180) == 6)
      {
        v79 = UInt32.init(_:)(&v180);
        v31 = sub_10021C10C(v70, v71, v72, v73, *v79, *(v79 + 8), *(v79 + 16), *(v79 + 24));
        return v31 & 1;
      }
    }

    else if (v9 == 7)
    {
      v32 = *(a2 + 144);
      v188 = *(a2 + 128);
      v189 = v32;
      v190 = *(a2 + 160);
      v191 = *(a2 + 176);
      v33 = *(a2 + 80);
      v184 = *(a2 + 64);
      v185 = v33;
      v34 = *(a2 + 112);
      v186 = *(a2 + 96);
      v187 = v34;
      v35 = *(a2 + 16);
      v180 = *a2;
      v181 = v35;
      v36 = *(a2 + 48);
      v182 = *(a2 + 32);
      v183 = v36;
      if (sub_10021D080(&v180) == 7)
      {
        goto LABEL_55;
      }
    }

    else
    {
      v119 = *(a2 + 144);
      v188 = *(a2 + 128);
      v189 = v119;
      v190 = *(a2 + 160);
      v191 = *(a2 + 176);
      v120 = *(a2 + 80);
      v184 = *(a2 + 64);
      v185 = v120;
      v121 = *(a2 + 112);
      v186 = *(a2 + 96);
      v187 = v121;
      v122 = *(a2 + 16);
      v180 = *a2;
      v181 = v122;
      v123 = *(a2 + 48);
      v182 = *(a2 + 32);
      v183 = v123;
      if (sub_10021D080(&v180) == 8)
      {
        goto LABEL_55;
      }
    }

    goto LABEL_64;
  }

  if (v9 > 2)
  {
    if (v9 == 3)
    {
      v80 = UInt32.init(_:)(v192);
      v165 = v80[7];
      v166 = v80[8];
      v167 = v80[9];
      v168 = v80[10];
      *&v161[32] = v80[3];
      v162 = v80[4];
      v163 = v80[5];
      v164 = v80[6];
      v160 = *v80;
      *v161 = v80[1];
      *&v161[16] = v80[2];
      v191 = *(a2 + 176);
      v81 = *(a2 + 160);
      v189 = *(a2 + 144);
      v190 = v81;
      v82 = *(a2 + 128);
      v187 = *(a2 + 112);
      v188 = v82;
      v83 = *(a2 + 96);
      v185 = *(a2 + 80);
      v186 = v83;
      v84 = *(a2 + 64);
      v183 = *(a2 + 48);
      v184 = v84;
      v85 = *(a2 + 32);
      v181 = *(a2 + 16);
      v182 = v85;
      v180 = *a2;
      if (sub_10021D080(&v180) == 3)
      {
        v86 = UInt32.init(_:)(&v180);
        *&v176[32] = v86[7];
        v177 = v86[8];
        v178 = v86[9];
        v179 = v86[10];
        *&v174[32] = v86[3];
        v175 = v86[4];
        *v176 = v86[5];
        *&v176[16] = v86[6];
        v173 = *v86;
        *v174 = v86[1];
        *&v174[16] = v86[2];
        v31 = static ServerID.__derived_struct_equals(_:_:)(&v160, &v173);
        return v31 & 1;
      }
    }

    else if (v9 == 4)
    {
      v37 = UInt32.init(_:)(v192);
      v197 = *v37;
      v38 = *(v37 + 16);
      v39 = *(v37 + 40);
      v194 = *(v37 + 24);
      v195 = v39;
      v196 = *(v37 + 56);
      v40 = *(a2 + 144);
      v188 = *(a2 + 128);
      v189 = v40;
      v190 = *(a2 + 160);
      v191 = *(a2 + 176);
      v41 = *(a2 + 80);
      v184 = *(a2 + 64);
      v185 = v41;
      v42 = *(a2 + 112);
      v186 = *(a2 + 96);
      v187 = v42;
      v43 = *(a2 + 48);
      v182 = *(a2 + 32);
      v183 = v43;
      v44 = *(a2 + 16);
      v180 = *a2;
      v181 = v44;
      if (sub_10021D080(&v180) == 4)
      {
        v45 = UInt32.init(_:)(&v180);
        v172 = *v45;
        v46 = *(v45 + 16);
        v47 = *(v45 + 40);
        v169 = *(v45 + 24);
        v170 = v47;
        v171 = *(v45 + 56);
        if (v38)
        {
          if (v46)
          {
            v158 = v172;
            *v159 = v46;
            *&v159[8] = v169;
            *&v159[24] = v170;
            *&v159[40] = v171;
            v173 = v172;
            *v174 = *v159;
            *&v174[16] = *&v159[16];
            *&v174[32] = *&v159[32];
            v155 = v197;
            v157 = v196;
            *&v156[24] = v195;
            *&v156[8] = v194;
            *v156 = v38;
            sub_1002204DC(a1, &v160);
            sub_1002204DC(a2, &v160);
            v48 = static PushRegistrationInfo.__derived_struct_equals(_:_:)(&v155, &v173);
            sub_100025F40(&v158, &qword_1005D5298, &unk_1004E7590);
            v160 = v197;
            *&v161[8] = v194;
            *&v161[24] = v195;
            *v161 = v38;
            *&v161[40] = v196;
            sub_100025F40(&v160, &qword_1005D5298, &unk_1004E7590);
            v31 = v48;
            return v31 & 1;
          }
        }

        else if (!v46)
        {
          v173 = v197;
          *&v174[8] = v194;
          *&v174[24] = v195;
          *v174 = 0;
          *&v174[40] = v196;
          sub_1002204DC(a1, &v160);
          sub_1002204DC(a2, &v160);
          sub_100025F40(&v173, &qword_1005D5298, &unk_1004E7590);
          v31 = 1;
          return v31 & 1;
        }

        v173 = v197;
        *&v174[8] = v194;
        *&v174[24] = v195;
        v175 = v172;
        *&v176[24] = v170;
        *v174 = v38;
        *&v174[40] = v196;
        *v176 = v46;
        *&v176[40] = v171;
        *&v176[8] = v169;
        sub_1002204DC(a1, &v160);
        sub_1002204DC(a2, &v160);
        sub_100025F40(&v173, &qword_1005D52B0, &unk_1004E8A70);
      }
    }

    else
    {
      v124 = UInt32.init(_:)(v192);
      v125 = *v124;
      v126 = *(v124 + 8);
      v127 = *(v124 + 16);
      v128 = *(v124 + 24);
      v129 = *(a2 + 144);
      v188 = *(a2 + 128);
      v189 = v129;
      v190 = *(a2 + 160);
      v191 = *(a2 + 176);
      v130 = *(a2 + 80);
      v184 = *(a2 + 64);
      v185 = v130;
      v131 = *(a2 + 112);
      v186 = *(a2 + 96);
      v187 = v131;
      v132 = *(a2 + 16);
      v180 = *a2;
      v181 = v132;
      v133 = *(a2 + 48);
      v182 = *(a2 + 32);
      v183 = v133;
      if (sub_10021D080(&v180) == 5)
      {
        v134 = UInt32.init(_:)(&v180);
        v31 = static PushRegistrationResponse.__derived_struct_equals(_:_:)(v125, v126, v127, v128, *v134, *(v134 + 8), *(v134 + 16), *(v134 + 24));
        return v31 & 1;
      }
    }

    goto LABEL_64;
  }

  if (!v9)
  {
    v54 = UInt32.init(_:)(v192);
    v55 = *v54;
    v56 = v54[1];
    v58 = v54[2];
    v57 = v54[3];
    v59 = *(a2 + 144);
    v188 = *(a2 + 128);
    v189 = v59;
    v190 = *(a2 + 160);
    v191 = *(a2 + 176);
    v60 = *(a2 + 80);
    v184 = *(a2 + 64);
    v185 = v60;
    v61 = *(a2 + 112);
    v186 = *(a2 + 96);
    v187 = v61;
    v62 = *(a2 + 16);
    v180 = *a2;
    v181 = v62;
    v63 = *(a2 + 48);
    v182 = *(a2 + 32);
    v183 = v63;
    if (sub_10021D080(&v180))
    {
      goto LABEL_64;
    }

    v64 = UInt32.init(_:)(&v180);
    v65 = *v64;
    v66 = v64[1];
    v67 = v64[2];
    v68 = v64[3];
    if ((static ResponseText.__derived_struct_equals(_:_:)(v55, v56) & 1) == 0)
    {
      goto LABEL_64;
    }

    if (v57)
    {
      if (!v68 || (sub_1001CE84C(v57, v68) & 1) == 0)
      {
        goto LABEL_64;
      }

      goto LABEL_55;
    }

    if (!v68)
    {
      goto LABEL_55;
    }

LABEL_64:
    v31 = 0;
    return v31 & 1;
  }

  if (v9 != 1)
  {
    v92 = UInt32.init(_:)(v192);
    v94 = *v92;
    v93 = v92[1];
    v152 = v92[2];
    v154 = v92[3];
    v95 = v92[4];
    v96 = v92[5];
    v97 = v92[6];
    v98 = v92[7];
    v100 = v92[8];
    v99 = v92[9];
    v148 = v92[10];
    v146 = v92[11];
    v150 = v92[12];
    v101 = *(a2 + 144);
    v188 = *(a2 + 128);
    v189 = v101;
    v190 = *(a2 + 160);
    v191 = *(a2 + 176);
    v102 = *(a2 + 112);
    v186 = *(a2 + 96);
    v187 = v102;
    v103 = *(a2 + 80);
    v184 = *(a2 + 64);
    v185 = v103;
    v104 = *(a2 + 48);
    v182 = *(a2 + 32);
    v183 = v104;
    v105 = *(a2 + 16);
    v180 = *a2;
    v181 = v105;
    if (sub_10021D080(&v180) == 2)
    {
      v106 = UInt32.init(_:)(&v180);
      v107 = *v106;
      v108 = *(v106 + 8);
      v109 = *(v106 + 16);
      v110 = *(v106 + 24);
      v111 = *(v106 + 56);
      v112 = *(v106 + 80);
      v113 = *(v106 + 88);
      v114 = *(v106 + 96);
      if ((v98 & 0x1000000000000000) != 0)
      {
        v140 = *(v106 + 40);
        v141 = *(v106 + 64);
        *&v173 = v94;
        *(&v173 + 1) = v93;
        *v174 = v152;
        *&v174[8] = v154;
        *&v174[16] = v95;
        *&v174[24] = v96;
        *&v174[32] = v97;
        *&v174[40] = v98 & 0xEFFFFFFFFFFFFFFFLL;
        *&v175 = v100;
        *(&v175 + 1) = v99;
        if ((v111 & 0x1000000000000000) == 0)
        {
          goto LABEL_64;
        }

        v116 = v112;
        v117 = v114;
        *&v160 = v107;
        *(&v160 + 1) = v108;
        *&v161[8] = v110;
        *&v161[24] = v140;
        *v161 = v109;
        *&v161[40] = v111 & 0xEFFFFFFFFFFFFFFFLL;
        v162 = v141;
        if ((sub_1001EFF14(&v173, &v160) & 1) == 0)
        {
          goto LABEL_64;
        }
      }

      else
      {
        if ((v111 & 0x1000000000000000) != 0)
        {
          goto LABEL_64;
        }

        v115 = *(v106 + 88);
        v116 = *(v106 + 80);
        v117 = *(v106 + 96);
        if (v94 != v107 || v93 != v108)
        {
          v144 = *(v106 + 24);
          v118 = sub_1004A6D34();
          *&v110 = v144;
          if ((v118 & 1) == 0)
          {
            goto LABEL_64;
          }
        }

        if ((v152 != v109 || v154 != v110) && (sub_1004A6D34() & 1) == 0)
        {
          goto LABEL_64;
        }
      }

      if (v150)
      {
        if (!v117)
        {
          goto LABEL_64;
        }

        sub_1000110B0(v116);

        v142 = static ResponseText.__derived_struct_equals(_:_:)(v148, v146);
        sub_10001114C(v116);

        if ((v142 & 1) == 0)
        {
          goto LABEL_64;
        }

LABEL_55:
        v31 = 1;
        return v31 & 1;
      }

      if (!v117)
      {
        goto LABEL_55;
      }
    }

    goto LABEL_64;
  }

  v10 = UInt32.init(_:)(v192);
  v11 = *v10;
  v151 = *(v10 + 8);
  v153 = *(v10 + 24);
  v12 = *(v10 + 40);
  v13 = *(v10 + 48);
  v14 = *(a2 + 48);
  v182 = *(a2 + 32);
  v183 = v14;
  v15 = *(a2 + 112);
  v186 = *(a2 + 96);
  v187 = v15;
  v16 = *(a2 + 80);
  v184 = *(a2 + 64);
  v185 = v16;
  v191 = *(a2 + 176);
  v17 = *(a2 + 160);
  v189 = *(a2 + 144);
  v190 = v17;
  v188 = *(a2 + 128);
  v18 = *(a2 + 16);
  v180 = *a2;
  v181 = v18;
  if (sub_10021D080(&v180) != 1)
  {
    goto LABEL_64;
  }

  v19 = UInt32.init(_:)(&v180);
  v20 = *v19;
  v21 = *(v11 + 16);
  if (v21 != *(*v19 + 16))
  {
    goto LABEL_64;
  }

  v147 = *(v19 + 24);
  v149 = *(v19 + 8);
  v145 = *(v19 + 40);
  if (v21 && v11 != v20)
  {
    v22 = (v11 + 32);
    v23 = (v20 + 32);
    do
    {
      v173 = *v22;
      v24 = v22[1];
      v25 = v22[2];
      v26 = v22[4];
      *&v174[32] = v22[3];
      v175 = v26;
      *v174 = v24;
      *&v174[16] = v25;
      v160 = *v23;
      v27 = v23[1];
      v28 = v23[2];
      v29 = v23[4];
      *&v161[32] = v23[3];
      v162 = v29;
      *v161 = v27;
      *&v161[16] = v28;
      sub_1001F0C7C(&v173, &v155);
      sub_1001F0C7C(&v160, &v155);
      v30 = static Credentials.__derived_enum_equals(_:_:)(&v173, &v160);
      sub_1001F0CD8(&v160);
      sub_1001F0CD8(&v173);
      if ((v30 & 1) == 0)
      {
        goto LABEL_64;
      }

      v22 += 5;
      v23 += 5;
    }

    while (--v21);
  }

  v158 = v151;
  *v159 = v153;
  *&v159[16] = v12;
  *&v159[24] = v13;
  v155 = v149;
  *v156 = v147;
  *&v156[16] = v145;
  v31 = sub_1001C2230(&v158, &v155);
  return v31 & 1;
}

uint64_t sub_10021DB74(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || 1 << *(a4 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    v4 = *(a4 + 48) + 32 * result;
    result = *v4;
    v5 = *(v4 + 8);
    v6 = *(v4 + 16);
    v7 = *(v4 + 24);
    return result;
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_10021DBD0@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10021DC08(a1, **(v2 + 16), *(v2 + 24));
  if (!v3)
  {
    *a2 = result & 1;
  }

  return result;
}

uint64_t sub_10021DC08(uint64_t result, uint64_t a2, uint64_t a3)
{
  v27 = result;
  v26 = 0;
  v3 = 0;
  v4 = *(a2 + 16);
  v29 = a2 + 32;
  v34 = a3 + 56;
  v28 = v4;
  while (2)
  {
    if (v3 == v4)
    {
      return 0;
    }

    v5 = v3;
    while (1)
    {
      if (v5 >= v4)
      {
        __break(1u);
LABEL_31:
        __break(1u);
LABEL_32:
        __break(1u);
        return result;
      }

      if (__OFADD__(v5, 1))
      {
        goto LABEL_31;
      }

      v30 = v5 + 1;
      v6 = (v29 + 32 * v5);
      v8 = *v6;
      v7 = v6[1];
      v9 = v6[2];
      v10 = *(v6 + 24);
      v11 = *(a3 + 40);
      sub_1004A6E94();

      _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
      v33 = v10;
      v32 = v9;
      if (v10)
      {
        sub_1004A6EC4(0);
      }

      else
      {
        sub_1004A6EC4(1u);
        sub_1004A6EF4(v9 >> 14);
      }

      v12 = sub_1004A6F14();
      v13 = -1 << *(a3 + 32);
      v14 = v12 & ~v13;
      v15 = v14 >> 6;
      v16 = 1 << v14;
      if (((1 << v14) & *(v34 + 8 * (v14 >> 6))) == 0)
      {
LABEL_4:

        goto LABEL_5;
      }

      v17 = ~v13;
      v18 = *(a3 + 48);
      while (1)
      {
        v20 = v18 + 32 * v14;
        v21 = *(v20 + 16);
        v22 = *(v20 + 24);
        v23 = *v20 == v8 && *(v20 + 8) == v7;
        if (!v23 && (sub_1004A6D34() & 1) == 0)
        {
          goto LABEL_16;
        }

        if ((v22 & 1) == 0)
        {
          break;
        }

        if (v33)
        {
          goto LABEL_24;
        }

LABEL_16:
        v14 = (v14 + 1) & v17;
        v15 = v14 >> 6;
        v16 = 1 << v14;
        if ((*(v34 + 8 * (v14 >> 6)) & (1 << v14)) == 0)
        {
          goto LABEL_4;
        }
      }

      v19 = v33;
      if (((v21 ^ v32) & 0xFFFFFFFFFFFFC000) != 0)
      {
        v19 = 1;
      }

      if (v19)
      {
        goto LABEL_16;
      }

LABEL_24:

      v24 = *(v27 + 8 * v15);
      *(v27 + 8 * v15) = v24 | v16;
      if ((v24 & v16) == 0)
      {
        break;
      }

LABEL_5:
      v5 = v30;
      v4 = v28;
      if (v30 == v28)
      {
        return 0;
      }
    }

    v25 = v26 + 1;
    v3 = v30;
    if (__OFADD__(v26, 1))
    {
      goto LABEL_32;
    }

    ++v26;
    v23 = v25 == *(a3 + 16);
    v4 = v28;
    result = 1;
    if (!v23)
    {
      continue;
    }

    return result;
  }
}

uint64_t sub_10021DE50()
{
  v1 = v0[5];

  v2 = v0[7];

  v3 = v0[9];

  v4 = v0[10];

  v5 = v0[11];

  v6 = v0[15];

  return _swift_deallocObject(v0, 128, 7);
}

unint64_t sub_10021DEB0(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(__int128 *__return_ptr, uint64_t), uint64_t a5)
{
  v266 = a5;
  v267 = a4;
  v290 = a3;
  v287 = a2;
  v286 = type metadata accessor for UnauthenticatedState();
  v6 = *(v286[-1].isa + 8);
  __chkstk_darwin(v286);
  v282 = &v263 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v283 = _s6LoggerVMa();
  v8 = *(*(v283 - 8) + 64);
  v9 = __chkstk_darwin(v283);
  v278 = &v263 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v279 = &v263 - v12;
  v13 = __chkstk_darwin(v11);
  v285 = &v263 - v14;
  v15 = __chkstk_darwin(v13);
  v284 = &v263 - v16;
  v17 = __chkstk_darwin(v15);
  v19 = &v263 - v18;
  v20 = __chkstk_darwin(v17);
  v22 = &v263 - v21;
  v23 = __chkstk_darwin(v20);
  v268 = &v263 - v24;
  v25 = __chkstk_darwin(v23);
  v269 = &v263 - v26;
  v27 = __chkstk_darwin(v25);
  v264 = &v263 - v28;
  v29 = __chkstk_darwin(v27);
  v265 = &v263 - v30;
  v31 = __chkstk_darwin(v29);
  v273 = &v263 - v32;
  v33 = __chkstk_darwin(v31);
  v275 = &v263 - v34;
  v35 = __chkstk_darwin(v33);
  v272 = &v263 - v36;
  v37 = __chkstk_darwin(v35);
  v274 = &v263 - v38;
  v39 = __chkstk_darwin(v37);
  v270 = &v263 - v40;
  v41 = __chkstk_darwin(v39);
  v271 = &v263 - v42;
  v43 = __chkstk_darwin(v41);
  v280 = &v263 - v44;
  __chkstk_darwin(v43);
  v281 = &v263 - v45;
  v46 = type metadata accessor for UntaggedResponse(0);
  v47 = *(*(v46 - 8) + 64);
  v48 = __chkstk_darwin(v46);
  v276 = &v263 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = __chkstk_darwin(v48);
  v52 = (&v263 - v51);
  v53 = __chkstk_darwin(v50);
  v55 = (&v263 - v54);
  v56 = __chkstk_darwin(v53);
  v58 = (&v263 - v57);
  __chkstk_darwin(v56);
  v60 = (&v263 - v59);
  v61 = sub_10000C9C0(&qword_1005D52A8, &unk_1004E75B0);
  v62 = *(*(v61 - 8) + 64);
  v63 = __chkstk_darwin(v61 - 8);
  v65 = &v263 - v64;
  v66 = *(v63 + 56);
  v277 = a1;
  sub_1002201C8(a1, &v263 - v64, type metadata accessor for UntaggedResponse);
  v288 = v66;
  sub_1002201C8(v290, &v65[v66], type metadata accessor for UnauthenticatedState);
  v289 = v65;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 4)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 3)
      {
        v68 = v289;
        if (EnumCaseMultiPayload == 4)
        {
          sub_1002201C8(v289, v52, type metadata accessor for UntaggedResponse);
          v70 = *v52;
          v69 = v52[1];
          v71 = v52[2];
          v72 = v287;
          v73 = v281;
          sub_1002201C8(v287, v281, _s6LoggerVMa);
          v74 = v280;
          sub_1002201C8(v72, v280, _s6LoggerVMa);
          variable initialization expression of Engine.isProcessingUpdates();
          variable initialization expression of Engine.isProcessingUpdates();
          variable initialization expression of Engine.isProcessingUpdates();
          sub_1000110B0(v70);

          v75 = sub_1004A4A54();
          v76 = sub_1004A6014();
          sub_10001114C(v70);

          if (os_log_type_enabled(v75, v76))
          {
            v77 = swift_slowAlloc();
            v287 = swift_slowAlloc();
            *&v291 = v287;
            *v77 = 68158466;
            *(v77 + 4) = 2;
            *(v77 + 8) = 256;
            v78 = v74;
            v79 = v283;
            v80 = *(v78 + *(v283 + 20));
            sub_100220230(v78, _s6LoggerVMa);
            *(v77 + 10) = v80;
            *(v77 + 11) = 2082;
            v81 = v73;
            v82 = *(v73 + *(v79 + 20) + 4);
            sub_100220230(v81, _s6LoggerVMa);
            v83 = ConnectionID.debugDescription.getter(v82);
            v85 = sub_10015BA6C(v83, v84, &v291);

            *(v77 + 13) = v85;
            *(v77 + 21) = 2082;
            v86 = ResponseText.debugDescription.getter(v70, v69, v71);
            v88 = sub_10015BA6C(v86, v87, &v291);

            *(v77 + 23) = v88;
            _os_log_impl(&_mh_execute_header, v75, v76, "[%.*hhx-%{public}s] Server sent BYE: %{public}s", v77, 0x1Fu);
            swift_arrayDestroy();
            v68 = v289;
          }

          else
          {
            sub_100220230(v74, _s6LoggerVMa);

            sub_100220230(v73, _s6LoggerVMa);
          }

          v168 = v282;
          v169 = v290;
          sub_100220160(v290, v282, type metadata accessor for UnauthenticatedState);
          if (swift_getEnumCaseMultiPayload() != 15)
          {
            sub_100220230(v168, type metadata accessor for UnauthenticatedState);
          }

          v170 = sub_10018E934(v70);
          if (v172 == 4)
          {
            v170 = 0;
            v171 = 0;
            v172 = 0;
            v173 = -64;
          }

          else
          {
            v173 = 0;
          }

          *v169 = v170;
          *(v169 + 8) = v171;
          *(v169 + 16) = v172;
          *(v169 + 24) = v173;
          swift_storeEnumTagMultiPayload();
          goto LABEL_43;
        }

LABEL_71:
        v227 = v287;
        v228 = v279;
        sub_1002201C8(v287, v279, _s6LoggerVMa);
        v229 = v278;
        sub_1002201C8(v227, v278, _s6LoggerVMa);
        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();
        v230 = v276;
        sub_1002201C8(v277, v276, type metadata accessor for UntaggedResponse);
        v231 = sub_1004A4A54();
        v232 = sub_1004A6014();
        if (os_log_type_enabled(v231, v232))
        {
          v233 = swift_slowAlloc();
          v290 = swift_slowAlloc();
          *&v291 = v290;
          *v233 = 68158466;
          *(v233 + 4) = 2;
          *(v233 + 8) = 256;
          v234 = v283;
          v235 = *(v229 + *(v283 + 20));
          sub_100220230(v229, _s6LoggerVMa);
          *(v233 + 10) = v235;
          *(v233 + 11) = 2082;
          v236 = *(v228 + *(v234 + 20) + 4);
          sub_100220230(v228, _s6LoggerVMa);
          v237 = ConnectionID.debugDescription.getter(v236);
          v239 = sub_10015BA6C(v237, v238, &v291);

          *(v233 + 13) = v239;
          *(v233 + 21) = 2080;
          v240 = UntaggedResponse.name.getter();
          v242 = v241;
          sub_100220230(v230, type metadata accessor for UntaggedResponse);
          v243 = sub_10015BA6C(v240, v242, &v291);

          *(v233 + 23) = v243;
          _os_log_impl(&_mh_execute_header, v231, v232, "[%.*hhx-%{public}s] Ignoring unexpected %s.", v233, 0x1Fu);
          swift_arrayDestroy();
        }

        else
        {
          sub_100220230(v229, _s6LoggerVMa);

          sub_100220230(v230, type metadata accessor for UntaggedResponse);
          sub_100220230(v228, _s6LoggerVMa);
        }

        sub_100025F40(v68, &qword_1005D52A8, &unk_1004E75B0);
        return 0xFFFFFFFF00000000;
      }

      v116 = v290;
      sub_100220230(v290, type metadata accessor for UnauthenticatedState);
      sub_1002201C8(v289, v60, type metadata accessor for UntaggedResponse);
      v117 = *v60;
      v118 = v60[2];
      if (swift_getEnumCaseMultiPayload() != 11)
      {
        sub_10001114C(v117);

        v177 = v287;
        v178 = v274;
        sub_1002201C8(v287, v274, _s6LoggerVMa);
        v179 = v272;
        sub_1002201C8(v177, v272, _s6LoggerVMa);
        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();
        v180 = sub_1004A4A54();
        v181 = sub_1004A6014();
        if (os_log_type_enabled(v180, v181))
        {
          v182 = swift_slowAlloc();
          v183 = swift_slowAlloc();
          *&v291 = v183;
          *v182 = 68158210;
          *(v182 + 4) = 2;
          *(v182 + 8) = 256;
          v184 = v283;
          v185 = *(v179 + *(v283 + 20));
          sub_100220230(v179, _s6LoggerVMa);
          *(v182 + 10) = v185;
          *(v182 + 11) = 2082;
          v186 = *(v178 + *(v184 + 20) + 4);
          sub_100220230(v178, _s6LoggerVMa);
          v187 = ConnectionID.debugDescription.getter(v186);
          v189 = sub_10015BA6C(v187, v188, &v291);

          *(v182 + 13) = v189;
          _os_log_impl(&_mh_execute_header, v180, v181, "[%.*hhx-%{public}s] Received unexpected PREAUTH greeting from server.", v182, 0x15u);
          sub_1000197E0(v183);
        }

        else
        {
          sub_100220230(v179, _s6LoggerVMa);

          sub_100220230(v178, _s6LoggerVMa);
        }

        v207 = v288;
        v206 = v289;
        *(v116 + 8) = 0;
        *(v116 + 16) = 0;
        *v116 = 3;
        *(v116 + 24) = -64;
        swift_storeEnumTagMultiPayload();
        sub_100220230(v206 + v207, type metadata accessor for UnauthenticatedState);
        v175 = v206;
        goto LABEL_46;
      }

      v119 = v287;
      v120 = v271;
      sub_1002201C8(v287, v271, _s6LoggerVMa);
      v121 = v270;
      sub_1002201C8(v119, v270, _s6LoggerVMa);
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      v122 = sub_1004A4A54();
      v123 = sub_1004A6004();
      if (os_log_type_enabled(v122, v123))
      {
        v124 = swift_slowAlloc();
        v125 = swift_slowAlloc();
        *&v291 = v125;
        *v124 = 68158210;
        *(v124 + 4) = 2;
        *(v124 + 8) = 256;
        v126 = v283;
        v127 = v121;
        v128 = *(v121 + *(v283 + 20));
        sub_100220230(v127, _s6LoggerVMa);
        *(v124 + 10) = v128;
        *(v124 + 11) = 2082;
        v129 = v120;
        v130 = *(v120 + *(v126 + 20) + 4);
        v116 = v290;
        sub_100220230(v129, _s6LoggerVMa);
        v131 = ConnectionID.debugDescription.getter(v130);
        v133 = sub_10015BA6C(v131, v132, &v291);

        *(v124 + 13) = v133;
        _os_log_impl(&_mh_execute_header, v122, v123, "[%.*hhx-%{public}s] Received PREAUTH greeting from server. Requesting credentials.", v124, 0x15u);
        sub_1000197E0(v125);
      }

      else
      {
        sub_100220230(v121, _s6LoggerVMa);

        sub_100220230(v120, _s6LoggerVMa);
      }

      v204 = ~v117 & 0xF000000000000007;

      v205 = v289;
      if (v204)
      {
        if (((v117 >> 59) & 0x1E | (v117 >> 2) & 1) == 1)
        {
          v204 = *((v117 & 0xFFFFFFFFFFFFFFBLL) + 0x10);

          sub_10001114C(v117);
        }

        else
        {
          sub_10001114C(v117);
          v204 = 0;
        }
      }

      *v116 = v204;
      swift_storeEnumTagMultiPayload();
      sub_100220230(v205, type metadata accessor for UntaggedResponse);
      return 0x8000000000000001;
    }

    else
    {
      v68 = v289;
      sub_1002201C8(v289, v58, type metadata accessor for UntaggedResponse);
      v92 = *v58;
      v93 = v58[2];
      v94 = v288;
      if (swift_getEnumCaseMultiPayload() != 11)
      {
        sub_10001114C(v92);

        v155 = v287;
        v156 = v275;
        sub_1002201C8(v287, v275, _s6LoggerVMa);
        v157 = v273;
        sub_1002201C8(v155, v273, _s6LoggerVMa);
        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();
        v158 = sub_1004A4A54();
        v159 = sub_1004A6004();
        if (os_log_type_enabled(v158, v159))
        {
          v160 = swift_slowAlloc();
          v161 = swift_slowAlloc();
          *&v291 = v161;
          *v160 = 68158210;
          *(v160 + 4) = 2;
          *(v160 + 8) = 256;
          v162 = v283;
          v163 = *(v157 + *(v283 + 20));
          sub_100220230(v157, _s6LoggerVMa);
          *(v160 + 10) = v163;
          *(v160 + 11) = 2082;
          v164 = *(v156 + *(v162 + 20) + 4);
          sub_100220230(v156, _s6LoggerVMa);
          v165 = ConnectionID.debugDescription.getter(v164);
          v167 = sub_10015BA6C(v165, v166, &v291);
          v94 = v288;

          *(v160 + 13) = v167;
          _os_log_impl(&_mh_execute_header, v158, v159, "[%.*hhx-%{public}s] Untagged OK from server.", v160, 0x15u);
          sub_1000197E0(v161);
        }

        else
        {
          sub_100220230(v157, _s6LoggerVMa);

          sub_100220230(v156, _s6LoggerVMa);
        }

        v174 = v68 + v94;
        goto LABEL_44;
      }

      v95 = v287;
      if ((~v92 & 0xF000000000000007) == 0 || ((v92 >> 59) & 0x1E | (v92 >> 2) & 1) != 1)
      {
        sub_100220230(v290, type metadata accessor for UnauthenticatedState);
        v190 = v269;
        sub_1002201C8(v95, v269, _s6LoggerVMa);
        v191 = v268;
        sub_1002201C8(v95, v268, _s6LoggerVMa);
        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();
        v192 = sub_1004A4A54();
        v193 = sub_1004A6004();
        if (os_log_type_enabled(v192, v193))
        {
          v194 = swift_slowAlloc();
          v195 = swift_slowAlloc();
          v288 = v92;
          v196 = v195;
          *&v291 = v195;
          *v194 = 68158210;
          *(v194 + 4) = 2;
          *(v194 + 8) = 256;
          v287 = v93;
          v197 = v283;
          v198 = v191;
          v199 = *(v191 + *(v283 + 20));
          sub_100220230(v198, _s6LoggerVMa);
          *(v194 + 10) = v199;
          *(v194 + 11) = 2082;
          v200 = *(v190 + *(v197 + 20) + 4);
          sub_100220230(v190, _s6LoggerVMa);
          v201 = ConnectionID.debugDescription.getter(v200);
          v203 = sub_10015BA6C(v201, v202, &v291);

          *(v194 + 13) = v203;
          _os_log_impl(&_mh_execute_header, v192, v193, "[%.*hhx-%{public}s] Received OK greeting from server.", v194, 0x15u);
          sub_1000197E0(v196);

          sub_10001114C(v288);
        }

        else
        {
          sub_100220230(v191, _s6LoggerVMa);
          sub_10001114C(v92);

          sub_100220230(v190, _s6LoggerVMa);
        }

        swift_storeEnumTagMultiPayload();
        goto LABEL_45;
      }

      v96 = *((v92 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v97 = v265;
      sub_1002201C8(v287, v265, _s6LoggerVMa);
      v98 = v264;
      sub_1002201C8(v95, v264, _s6LoggerVMa);

      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();

      v99 = sub_1004A4A54();
      v100 = sub_1004A6004();

      if (os_log_type_enabled(v99, v100))
      {
        LODWORD(v284) = v100;
        v286 = v99;
        v101 = swift_slowAlloc();
        v282 = swift_slowAlloc();
        *&v291 = v282;
        *v101 = 68158466;
        *(v101 + 4) = 2;
        *(v101 + 8) = 256;
        v102 = v283;
        v103 = *(v98 + *(v283 + 20));
        sub_100220230(v98, _s6LoggerVMa);
        *(v101 + 10) = v103;
        *(v101 + 11) = 2082;
        v104 = *(v97 + *(v102 + 20) + 4);
        sub_100220230(v97, _s6LoggerVMa);
        v105 = ConnectionID.debugDescription.getter(v104);
        v107 = sub_10015BA6C(v105, v106, &v291);

        *(v101 + 13) = v107;
        v285 = v101;
        *(v101 + 21) = 2080;
        v108 = *(v96 + 16);
        v109 = _swiftEmptyArrayStorage;
        v288 = v96;
        if (v108)
        {
          *&v297 = _swiftEmptyArrayStorage;
          sub_100091A08(0, v108, 0);
          v109 = v297;
          v110 = (v96 + 40);
          do
          {
            v111 = *(v110 - 1);
            v112 = *v110;
            *&v297 = v109;
            v114 = v109[2];
            v113 = v109[3];

            if (v114 >= v113 >> 1)
            {
              sub_100091A08((v113 > 1), v114 + 1, 1);
              v109 = v297;
            }

            v109[2] = v114 + 1;
            v115 = &v109[2 * v114];
            v115[4] = v111;
            v115[5] = v112;
            v110 += 4;
            --v108;
          }

          while (v108);
        }

        *&v297 = v109;
        sub_10000C9C0(&unk_1005DA9A0, &unk_1004CF770);
        sub_10000DF44(&qword_1005CDA18, &unk_1005DA9A0, &unk_1004CF770);
        v246 = sub_1004A5614();
        v248 = v247;

        v249 = sub_10015BA6C(v246, v248, &v291);

        v250 = v285;
        *(v285 + 23) = v249;
        v251 = v286;
        _os_log_impl(&_mh_execute_header, v286, v284, "[%.*hhx-%{public}s] Received OK greeting with capabilities from server: %s.", v250, 0x1Fu);
        swift_arrayDestroy();

        v68 = v289;
        v95 = v287;
        v96 = v288;
      }

      else
      {
        sub_100220230(v98, _s6LoggerVMa);

        v245 = sub_100220230(v97, _s6LoggerVMa);
      }

      v267(&v291, v245);
      v252 = sub_100216684(v96, &v291, v95);
      v297 = v291;
      v298 = v292;
      sub_100220290(&v297);
      v295 = v293;
      v296 = v294;
      sub_1001CDB14(&v295);

      sub_10001114C(v92);

      sub_100220230(v68, type metadata accessor for UntaggedResponse);
      return v252;
    }
  }

  v89 = v19;
  v90 = v284;
  v91 = v285;
  v68 = v289;
  if ((EnumCaseMultiPayload - 21) < 2)
  {
LABEL_43:
    v174 = v68 + v288;
LABEL_44:
    sub_100220230(v174, type metadata accessor for UnauthenticatedState);
LABEL_45:
    v175 = v68;
LABEL_46:
    sub_100220230(v175, type metadata accessor for UntaggedResponse);
    return 0xFFFFFFFF00000000;
  }

  if (EnumCaseMultiPayload != 5)
  {
    if (EnumCaseMultiPayload != 6)
    {
      goto LABEL_71;
    }

    goto LABEL_43;
  }

  sub_1002201C8(v289, v55, type metadata accessor for UntaggedResponse);
  v134 = *v55;
  v135 = v288;
  v136 = swift_getEnumCaseMultiPayload();
  switch(v136)
  {
    case 2:

      v174 = v68 + v135;
      goto LABEL_44;
    case 12:
      v208 = v287;
      sub_1002201C8(v287, v22, _s6LoggerVMa);
      v209 = v89;
      sub_1002201C8(v208, v89, _s6LoggerVMa);
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();

      v210 = sub_1004A4A54();
      v211 = sub_1004A6034();

      if (os_log_type_enabled(v210, v211))
      {
        LODWORD(v288) = v211;
        v212 = swift_slowAlloc();
        v286 = swift_slowAlloc();
        *&v291 = v286;
        *v212 = 68158466;
        *(v212 + 4) = 2;
        *(v212 + 8) = 256;
        v213 = v283;
        v214 = *(v209 + *(v283 + 20));
        sub_100220230(v209, _s6LoggerVMa);
        *(v212 + 10) = v214;
        *(v212 + 11) = 2082;
        v215 = *&v22[*(v213 + 20) + 4];
        sub_100220230(v22, _s6LoggerVMa);
        v216 = ConnectionID.debugDescription.getter(v215);
        v218 = sub_10015BA6C(v216, v217, &v291);

        *(v212 + 13) = v218;
        *(v212 + 21) = 2082;
        v219 = *(v134 + 16);
        v220 = _swiftEmptyArrayStorage;
        if (v219)
        {
          v285 = v210;
          *&v297 = _swiftEmptyArrayStorage;
          sub_100091A08(0, v219, 0);
          v220 = v297;
          v221 = (v134 + 40);
          do
          {
            v222 = *(v221 - 1);
            v223 = *v221;
            *&v297 = v220;
            v225 = v220[2];
            v224 = v220[3];

            if (v225 >= v224 >> 1)
            {
              sub_100091A08((v224 > 1), v225 + 1, 1);
              v220 = v297;
            }

            v220[2] = v225 + 1;
            v226 = &v220[2 * v225];
            v226[4] = v222;
            v226[5] = v223;
            v221 += 4;
            --v219;
          }

          while (v219);
          v210 = v285;
        }

        *&v297 = v220;
        sub_10000C9C0(&unk_1005DA9A0, &unk_1004CF770);
        sub_10000DF44(&qword_1005CDA18, &unk_1005DA9A0, &unk_1004CF770);
        v253 = sub_1004A5614();
        v255 = v254;

        v256 = sub_10015BA6C(v253, v255, &v291);

        *(v212 + 23) = v256;
        _os_log_impl(&_mh_execute_header, v210, v288, "[%.*hhx-%{public}s] Got pre-auth capabilities: %{public}s.", v212, 0x1Fu);
        swift_arrayDestroy();

        v68 = v289;
        v208 = v287;
      }

      else
      {
        sub_100220230(v89, _s6LoggerVMa);

        v244 = sub_100220230(v22, _s6LoggerVMa);
      }

      v267(&v291, v244);
      v257 = sub_100216684(v134, &v291, v208);
      v297 = v291;
      v298 = v292;
      sub_100220290(&v297);
      v295 = v293;
      v296 = v294;
      sub_1001CDB14(&v295);

      sub_100220230(v68, type metadata accessor for UntaggedResponse);
      return v257;
    case 15:
      v137 = v287;
      sub_1002201C8(v287, v90, _s6LoggerVMa);
      sub_1002201C8(v137, v91, _s6LoggerVMa);
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();

      v138 = sub_1004A4A54();
      v139 = sub_1004A6034();

      if (os_log_type_enabled(v138, v139))
      {
        LODWORD(v288) = v139;
        v140 = swift_slowAlloc();
        v286 = swift_slowAlloc();
        *&v291 = v286;
        *v140 = 68158466;
        *(v140 + 4) = 2;
        *(v140 + 8) = 256;
        v141 = v283;
        v142 = *(v91 + *(v283 + 20));
        sub_100220230(v91, _s6LoggerVMa);
        *(v140 + 10) = v142;
        *(v140 + 11) = 2082;
        v143 = *(v90 + *(v141 + 20) + 4);
        sub_100220230(v90, _s6LoggerVMa);
        v144 = ConnectionID.debugDescription.getter(v143);
        v146 = sub_10015BA6C(v144, v145, &v291);

        *(v140 + 13) = v146;
        *(v140 + 21) = 2082;
        v147 = *(v134 + 16);
        v148 = _swiftEmptyArrayStorage;
        if (v147)
        {
          v285 = v138;
          *&v297 = _swiftEmptyArrayStorage;
          sub_100091A08(0, v147, 0);
          v148 = v297;
          v149 = (v134 + 40);
          do
          {
            v150 = *(v149 - 1);
            v151 = *v149;
            *&v297 = v148;
            v152 = v148[2];
            v153 = v148[3];

            if (v152 >= v153 >> 1)
            {
              sub_100091A08((v153 > 1), v152 + 1, 1);
              v148 = v297;
            }

            v148[2] = v152 + 1;
            v154 = &v148[2 * v152];
            v154[4] = v150;
            v154[5] = v151;
            v149 += 4;
            --v147;
          }

          while (v147);
          v138 = v285;
        }

        *&v297 = v148;
        sub_10000C9C0(&unk_1005DA9A0, &unk_1004CF770);
        sub_10000DF44(&qword_1005CDA18, &unk_1005DA9A0, &unk_1004CF770);
        v258 = sub_1004A5614();
        v260 = v259;

        v261 = sub_10015BA6C(v258, v260, &v291);

        *(v140 + 23) = v261;
        _os_log_impl(&_mh_execute_header, v138, v288, "[%.*hhx-%{public}s] Got post-auth capabilities: %{public}s.", v140, 0x1Fu);
        swift_arrayDestroy();

        v68 = v289;
        v137 = v287;
      }

      else
      {
        sub_100220230(v91, _s6LoggerVMa);

        sub_100220230(v90, _s6LoggerVMa);
      }

      v262 = sub_1002173C8(v134, v137);

      sub_100220230(v68, type metadata accessor for UntaggedResponse);
      return v262;
    default:

      goto LABEL_71;
  }
}

unint64_t sub_10021FE80(unint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(__int128 *__return_ptr, uint64_t), uint64_t a5)
{
  v10 = type metadata accessor for UntaggedResponse(0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for UnauthenticatedState();
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14);
  v17 = &v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = 0xFFFFFFFF00000000;
  if (((1 << (a1 >> 60)) & 0x1F5) == 0)
  {
    if (a1 >> 60 != 1)
    {
      v22 = swift_projectBox();
      sub_1002201C8(v22, v13, type metadata accessor for UntaggedResponse);
      v23 = sub_10021DEB0(v13, a2, a3, a4, a5);
      sub_100220230(v13, type metadata accessor for UntaggedResponse);
      return v23;
    }

    sub_100220160(a3, v17, type metadata accessor for UnauthenticatedState);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 10)
    {
      if ((EnumCaseMultiPayload - 11) < 4)
      {
        goto LABEL_12;
      }
    }

    else
    {
      if ((EnumCaseMultiPayload - 3) < 8 || EnumCaseMultiPayload < 2)
      {
        sub_100220230(v17, type metadata accessor for UnauthenticatedState);
LABEL_12:
        *(a3 + 8) = 0;
        *(a3 + 16) = 0;
        *a3 = 1;
        *(a3 + 24) = -64;
LABEL_13:
        swift_storeEnumTagMultiPayload();
        return 0xFFFFFFFF00000000;
      }

      sub_100220230(v17, type metadata accessor for UnauthenticatedState);
    }

    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = 1;
    *(a3 + 24) = 0;
    goto LABEL_13;
  }

  return v18;
}

uint64_t sub_1002200E8()
{
  v1 = v0[4];

  v2 = v0[6];

  v3 = v0[8];

  v4 = v0[10];

  v5 = v0[11];

  if (v0[13])
  {
    v6 = v0[12];

    v7 = v0[13];

    v8 = v0[14];
  }

  return _swift_deallocObject(v0, 120, 7);
}

uint64_t sub_100220160(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1002201C8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100220230(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1002202C0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1002202D8(uint64_t a1)
{
  if ((*(a1 + 176) & 7) == 7)
  {
    return (*a1 + 7);
  }

  else
  {
    return *(a1 + 176) & 7;
  }
}

uint64_t sub_1002202F4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF9 && *(a1 + 177))
  {
    return (*a1 + 249);
  }

  v3 = *(a1 + 176);
  if (v3 <= 7)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_10022033C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF8)
  {
    *(result + 168) = 0;
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
    *(result + 176) = 0;
    *result = a2 - 249;
    if (a3 >= 0xF9)
    {
      *(result + 177) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF9)
    {
      *(result + 177) = 0;
    }

    if (a2)
    {
      *(result + 176) = -a2;
    }
  }

  return result;
}

uint64_t sub_1002203B0(uint64_t result, unsigned int a2)
{
  if (a2 >= 7)
  {
    *result = a2 - 7;
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *(result + 40) = 0u;
    *(result + 56) = 0u;
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 104) = 0u;
    *(result + 120) = 0u;
    *(result + 136) = 0u;
    *(result + 152) = 0u;
    LOBYTE(a2) = 7;
    *(result + 168) = 0;
  }

  *(result + 176) = a2;
  return result;
}

uint64_t sub_100220408(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  HIDWORD(v3) = *(a1 + 4);
  LODWORD(v3) = HIDWORD(v3);
  v2 = v3 >> 30;
  if (v2 > 0x80000000)
  {
    v4 = ~v2;
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_100220458(uint64_t result, int a2, int a3)
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
      HIDWORD(v3) = -a2;
      LODWORD(v3) = -a2;
      *(result + 8) = 0;
      *(result + 16) = 0;
      *result = (v3 >> 2) << 32;
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

unint64_t *sub_1002204A4(unint64_t *result, uint64_t a2)
{
  if (a2 < 2)
  {
    *result = *result | (a2 << 62);
  }

  else
  {
    result[1] = 0;
    result[2] = 0;
    *result = (a2 - 2) | 0x8000000000000000;
  }

  return result;
}

uint64_t sub_10022051C(uint64_t a1, unint64_t a2, char a3, void (*a4)(unint64_t, uint64_t, uint64_t, uint64_t), uint64_t a5, uint64_t a6)
{
  v8 = v7;
  sub_100193D28(a1, a2, a3 & 1);
  sub_100221F3C(v6, a1, a2, a3 & 1, &v38);
  if (!v7)
  {
    v53 = 0;
    v8 = v38;
    v24[8] = v47;
    v24[9] = v48;
    v24[10] = v49;
    v25 = v50;
    v24[4] = v43;
    v24[5] = v44;
    v24[6] = v45;
    v24[7] = v46;
    v24[0] = v39;
    v24[1] = v40;
    v24[2] = v41;
    v24[3] = v42;
    v34 = v47;
    v35 = v48;
    v36 = v49;
    v37 = v50;
    v30 = v43;
    v31 = v44;
    v32 = v45;
    v33 = v46;
    v26 = v39;
    v27 = v40;
    v28 = v41;
    v29 = v42;
    if (sub_100222B94(&v26) != 1)
    {
      v22 = v8;
      v51[8] = v34;
      v51[9] = v35;
      v51[10] = v36;
      v52 = v37;
      v51[4] = v30;
      v51[5] = v31;
      v51[6] = v32;
      v51[7] = v33;
      v51[0] = v26;
      v51[1] = v27;
      v51[2] = v28;
      v51[3] = v29;
      v14 = v6 + *(type metadata accessor for UnauthenticatedStateWithTasks() + 24);
      v23 = sub_100218558(v51, a6);
      v15 = v23[2];
      if (v15)
      {
        v16 = (v23 + 7);
        do
        {
          v17 = *(v16 - 3);
          v18 = *(v16 - 2);
          v19 = *(v16 - 1);
          v20 = *v16;
          sub_1001AD7AC(v17);
          a4(v17, v18, v19, v20);
          sub_1001AD7F8(v17);
          v16 += 4;
          --v15;
        }

        while (v15);
      }

      sub_100025F40(v24, &qword_1005D5368, &unk_1004E8AD8);
      return v22;
    }
  }

  return v8;
}

uint64_t sub_100220760(unint64_t *a1, uint64_t a2)
{
  v129 = _s6LoggerVMa();
  v5 = *(*(v129 - 8) + 64);
  v6 = __chkstk_darwin(v129);
  v8 = &v115 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v11 = &v115 - v10;
  v12 = __chkstk_darwin(v9);
  v125 = (&v115 - v13);
  v14 = __chkstk_darwin(v12);
  v118 = &v115 - v15;
  v16 = __chkstk_darwin(v14);
  v122 = (&v115 - v17);
  v18 = __chkstk_darwin(v16);
  v123 = &v115 - v19;
  v20 = __chkstk_darwin(v18);
  v124 = (&v115 - v21);
  v22 = __chkstk_darwin(v20);
  v119 = &v115 - v23;
  v24 = __chkstk_darwin(v22);
  v120 = &v115 - v25;
  v26 = __chkstk_darwin(v24);
  v121 = (&v115 - v27);
  v28 = __chkstk_darwin(v26);
  v30 = &v115 - v29;
  __chkstk_darwin(v28);
  v32 = &v115 - v31;
  v33 = type metadata accessor for UnauthenticatedState();
  v34 = *(*(v33 - 8) + 64);
  __chkstk_darwin(v33);
  v36 = &v115 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v127 = v2 + *(type metadata accessor for UnauthenticatedStateWithTasks() + 24);
  sub_100222C50(v127, v36, type metadata accessor for UnauthenticatedState);
  v128 = v33;
  LODWORD(v33) = swift_getEnumCaseMultiPayload();
  sub_100222CB8(v36, type metadata accessor for UnauthenticatedState);
  if (v33 == 14)
  {
    v126 = a2;
    v37 = *a1;
    v38 = a1[1];
    v39 = a1[2];
    v40 = *a1 >> 62;
    v41 = a1;
    if (v40)
    {
      if (v40 != 1)
      {
        v85 = v126;
        sub_100222C50(v126, v32, _s6LoggerVMa);
        sub_100222C50(v85, v30, _s6LoggerVMa);
        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();
        v86 = sub_1004A4A54();
        v87 = sub_1004A6024();
        if (os_log_type_enabled(v86, v87))
        {
          v88 = swift_slowAlloc();
          v89 = swift_slowAlloc();
          v130 = v89;
          *v88 = 68158210;
          *(v88 + 4) = 2;
          *(v88 + 8) = 256;
          v90 = v129;
          v91 = v30[*(v129 + 20)];
          sub_100222CB8(v30, _s6LoggerVMa);
          *(v88 + 10) = v91;
          *(v88 + 11) = 2082;
          v92 = *&v32[*(v90 + 20) + 4];
          sub_100222CB8(v32, _s6LoggerVMa);
          v93 = ConnectionID.debugDescription.getter(v92);
          v95 = sub_10015BA6C(v93, v94, &v130);

          *(v88 + 13) = v95;
          _os_log_impl(&_mh_execute_header, v86, v87, "[%.*hhx-%{public}s] We ran STARTTLS, but the connection is not using TLS.", v88, 0x15u);
          sub_1000197E0(v89);
        }

        else
        {
          sub_100222CB8(v30, _s6LoggerVMa);

          sub_100222CB8(v32, _s6LoggerVMa);
        }

        v101 = v127;
        sub_100222CB8(v127, type metadata accessor for UnauthenticatedState);
        v102 = 4;
        goto LABEL_41;
      }

      LODWORD(v124) = *a1;
      v42 = v126;
      v43 = v123;
      sub_100222C50(v126, v123, _s6LoggerVMa);
      v44 = v122;
      sub_100222C50(v42, v122, _s6LoggerVMa);
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      sub_1001CDA98(v37);
      sub_1001CDA98(v37);
      sub_1001CDA98(v37);

      v45 = sub_1004A4A54();
      v46 = sub_1004A6034();
      v121 = v45;
      if (os_log_type_enabled(v45, v46))
      {
        v116 = v37 >> 16;
        v47 = swift_slowAlloc();
        v48 = swift_slowAlloc();
        v120 = v41;
        v117 = v48;
        v130 = v48;
        *v47 = 68158722;
        *(v47 + 4) = 2;
        *(v47 + 8) = 256;
        v49 = v129;
        v50 = *(v129 + 20);
        v119 = v38;
        v51 = *(&v44->isa + v50);
        sub_100222CB8(v44, _s6LoggerVMa);
        *(v47 + 10) = v51;
        *(v47 + 11) = 2082;
        v52 = v124;
        v53 = *(v43 + *(v49 + 20) + 4);
        sub_100222CB8(v43, _s6LoggerVMa);
        v54 = ConnectionID.debugDescription.getter(v53);
        v56 = sub_10015BA6C(v54, v55, &v130);

        *(v47 + 13) = v56;
        v38 = v119;
        *(v47 + 21) = 512;
        sub_1001CDB04(v37);
        *(v47 + 23) = v52;
        sub_1001CDB04(v37);
        *(v47 + 25) = 512;
        sub_1001CDB04(v37);
        *(v47 + 27) = v116;
        sub_1001CDB04(v37);
        v57 = v46;
        v58 = v121;
        _os_log_impl(&_mh_execute_header, v121, v57, "[%.*hhx-%{public}s] STARTTLS completed: %hu / %hu", v47, 0x1Du);
        sub_1000197E0(v117);
        v41 = v120;

        v42 = v126;
      }

      else
      {
        sub_1001CDB04(v37);
        sub_1001CDB04(v37);
        sub_100222CB8(v44, _s6LoggerVMa);
        sub_1001CDB04(v37);
        sub_1001CDB04(v37);

        sub_100222CB8(v43, _s6LoggerVMa);
      }

      v96 = *(v41 + 24);
      v97 = *(v41 + 40);
      v98 = v125;
      if (v97)
      {
        if (v97 != 1)
        {
          if (v96 == 1)
          {
            if (v124 != 772)
            {
              goto LABEL_36;
            }
          }

          else if ((v124 - 773) < 0xFFFFFFFE)
          {
LABEL_36:
            v99 = v42;
            v100 = v118;
            goto LABEL_37;
          }

          if (!v39 || (*(v41 + 32) != v38 || v97 != v39) && (sub_1004A6D34() & 1) == 0)
          {
            goto LABEL_36;
          }
        }
      }

      else if (v96 == 1)
      {
        if (v124 != 772)
        {
          goto LABEL_36;
        }
      }

      else if ((v124 - 771) >= 2)
      {
        goto LABEL_36;
      }
    }

    else
    {
      v42 = v126;
      v70 = v121;
      sub_100222C50(v126, v121, _s6LoggerVMa);
      v71 = v120;
      sub_100222C50(v42, v120, _s6LoggerVMa);
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      sub_1001CDA98(v37);
      sub_1001CDA98(v37);
      sub_1001CDA98(v37);

      v72 = sub_1004A4A54();
      v73 = sub_1004A6034();
      if (os_log_type_enabled(v72, v73))
      {
        v123 = v37 >> 16;
        v74 = swift_slowAlloc();
        v125 = swift_slowAlloc();
        v130 = v125;
        *v74 = 68158722;
        *(v74 + 4) = 2;
        *(v74 + 8) = 256;
        v122 = v72;
        v75 = v129;
        v76 = *(v129 + 20);
        LODWORD(v118) = v73;
        v77 = *(v71 + v76);
        sub_100222CB8(v71, _s6LoggerVMa);
        *(v74 + 10) = v77;
        *(v74 + 11) = 2082;
        v78 = v70;
        v79 = *(&v70->isa + *(v75 + 20) + 4);
        sub_100222CB8(v78, _s6LoggerVMa);
        v80 = ConnectionID.debugDescription.getter(v79);
        v82 = v41;
        v83 = sub_10015BA6C(v80, v81, &v130);

        *(v74 + 13) = v83;
        v41 = v82;
        *(v74 + 21) = 512;
        sub_1001CDB04(v37);
        *(v74 + 23) = v37;
        sub_1001CDB04(v37);
        *(v74 + 25) = 512;
        sub_1001CDB04(v37);
        *(v74 + 27) = v123;
        sub_1001CDB04(v37);
        v84 = v122;
        _os_log_impl(&_mh_execute_header, v122, v118, "[%.*hhx-%{public}s] Opportunistic STARTTLS completed: %hu / %hu", v74, 0x1Du);
        sub_1000197E0(v125);

        v42 = v126;
      }

      else
      {
        sub_1001CDB04(v37);
        sub_1001CDB04(v37);
        sub_100222CB8(v71, _s6LoggerVMa);
        sub_1001CDB04(v37);
        sub_1001CDB04(v37);

        sub_100222CB8(v70, _s6LoggerVMa);
      }

      v98 = v124;
      if (*(v41 + 40) != 1)
      {
        v99 = v42;
        v100 = v119;
LABEL_37:
        sub_100222C50(v99, v100, _s6LoggerVMa);
        sub_100222C50(v42, v98, _s6LoggerVMa);
        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();
        v103 = sub_1004A4A54();
        v104 = sub_1004A6014();
        if (os_log_type_enabled(v103, v104))
        {
          v105 = swift_slowAlloc();
          v106 = swift_slowAlloc();
          v107 = v98;
          v108 = v106;
          v130 = v106;
          *v105 = 68158210;
          *(v105 + 4) = 2;
          *(v105 + 8) = 256;
          v109 = v129;
          v110 = *(v107 + *(v129 + 20));
          sub_100222CB8(v107, _s6LoggerVMa);
          *(v105 + 10) = v110;
          *(v105 + 11) = 2082;
          v111 = *(v100 + *(v109 + 20) + 4);
          sub_100222CB8(v100, _s6LoggerVMa);
          v112 = ConnectionID.debugDescription.getter(v111);
          v114 = sub_10015BA6C(v112, v113, &v130);

          *(v105 + 13) = v114;
          _os_log_impl(&_mh_execute_header, v103, v104, "[%.*hhx-%{public}s] We ran STARTTLS, but the connection is not secure.", v105, 0x15u);
          sub_1000197E0(v108);
        }

        else
        {
          sub_100222CB8(v98, _s6LoggerVMa);

          sub_100222CB8(v100, _s6LoggerVMa);
        }

        v101 = v127;
        sub_100222CB8(v127, type metadata accessor for UnauthenticatedState);
        v102 = 6;
LABEL_41:
        *(v101 + 8) = 0;
        *(v101 + 16) = 0;
        *v101 = v102;
        *(v101 + 24) = -64;
        return swift_storeEnumTagMultiPayload();
      }
    }

    sub_100222CB8(v127, type metadata accessor for UnauthenticatedState);
    return swift_storeEnumTagMultiPayload();
  }

  sub_100222C50(a2, v11, _s6LoggerVMa);
  sub_100222C50(a2, v8, _s6LoggerVMa);
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  v59 = sub_1004A4A54();
  v60 = sub_1004A6024();
  if (os_log_type_enabled(v59, v60))
  {
    v61 = swift_slowAlloc();
    v62 = swift_slowAlloc();
    v130 = v62;
    *v61 = 68158210;
    *(v61 + 4) = 2;
    *(v61 + 8) = 256;
    v63 = v129;
    v64 = v8[*(v129 + 20)];
    sub_100222CB8(v8, _s6LoggerVMa);
    *(v61 + 10) = v64;
    *(v61 + 11) = 2082;
    v65 = *&v11[*(v63 + 20) + 4];
    sub_100222CB8(v11, _s6LoggerVMa);
    v66 = ConnectionID.debugDescription.getter(v65);
    v68 = sub_10015BA6C(v66, v67, &v130);

    *(v61 + 13) = v68;
    _os_log_impl(&_mh_execute_header, v59, v60, "[%.*hhx-%{public}s] Received did-start-TLS from network, but we’re in the wrong state.", v61, 0x15u);
    sub_1000197E0(v62);
  }

  else
  {
    sub_100222CB8(v8, _s6LoggerVMa);

    sub_100222CB8(v11, _s6LoggerVMa);
  }

  sub_100222D18();
  swift_allocError();
  return swift_willThrow();
}