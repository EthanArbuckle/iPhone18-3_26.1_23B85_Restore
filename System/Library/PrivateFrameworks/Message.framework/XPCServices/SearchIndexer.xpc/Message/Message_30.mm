uint64_t sub_1001F158C(uint64_t a1, uint64_t a2)
{
  v2 = a2 - a1;
  if (!a1)
  {
    v2 = 0;
  }

  if ((v2 & 0x8000000000000000) != 0 || (v3 = v2, v2 > 6))
  {
    v3 = 7;
  }

  *&v12 = 0;
  *(&v12 + 1) = v3;
  *&v13 = a1;
  *(&v13 + 1) = v2;
  v14 = xmmword_1004E3720;
  *&v15 = 0xE700000000000000;
  *(&v15 + 1) = 15;
  v16 = 0;
  while (1)
  {
    v4 = sub_1001F4DFC();
    if ((v4 & 0x10000) != 0)
    {
      break;
    }

    if ((v4 & 0x80) != 0 || v4 != BYTE1(v4))
    {
      v9 = v14;
      v10 = v15;
      v11 = v16;
      v7 = v12;
      v8 = v13;
      sub_100025F40(&v7, &qword_1005D4B30, &qword_1004E39C8);
      sub_1001F6EE0();
      swift_allocError();
      *v5 = 0;
      *(v5 + 8) = 2;
      return swift_willThrow();
    }
  }

  v9 = v14;
  v10 = v15;
  v11 = v16;
  v7 = v12;
  v8 = v13;
  return sub_100025F40(&v7, &qword_1005D4B30, &qword_1004E39C8);
}

uint64_t sub_1001F16C8(uint64_t result, char a2, uint64_t a3, uint64_t a4)
{
  v5 = a4 - a3;
  if (a3)
  {
    v6 = a4 - a3;
  }

  else
  {
    v6 = 0;
  }

  if ((v6 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_20:
    __break(1u);
    return result;
  }

  v10 = result;
  result = sub_1001F1824(result, 0, v6, a3, a4);
  if (v4)
  {
    return result;
  }

  if (!result)
  {
    return 0;
  }

  v11 = result;
  result = v10 + 4;
  if (__OFADD__(v10, 4))
  {
    goto LABEL_20;
  }

  v12 = sub_1001F1824(result, 0, v6, a3, a4);
  v13 = 2;
  v14 = 3;
  if (v11 <= 0x7CFu && v12 <= 0x7CFu)
  {
    v14 = 3;
    if (a3)
    {
      v15 = (v12 + v11);
      if (v5 >= v15)
      {
        v14 = v15 - v12;
        if ((a2 & 1) == 0)
        {
          return sub_1001F6218((v12 + a3), v14);
        }

        if ((v14 & 1) == 0)
        {
          return sub_1001F62F0(v12 + a3, v11 >> 1);
        }

        v13 = 1;
      }
    }
  }

  sub_1001F6EE0();
  swift_allocError();
  *v16 = v14;
  *(v16 + 8) = v13;
  return swift_willThrow();
}

uint64_t sub_1001F1824(uint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a1 + 2;
  if (__OFADD__(a1, 2))
  {
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v6 = a5 - a4;
  if (!a4)
  {
    v6 = 0;
  }

  if ((a2 & 0x8000000000000000) != 0 || v6 < a2)
  {
    goto LABEL_21;
  }

  if ((a3 & 0x8000000000000000) != 0 || v6 < a3)
  {
    goto LABEL_22;
  }

  if ((a3 - a2) < v5)
  {
    sub_1001F6EE0();
    swift_allocError();
    *v7 = 1;
    *(v7 + 8) = 2;
    return swift_willThrow();
  }

  v9 = a2 + a1;
  if (__OFADD__(a2, a1))
  {
    goto LABEL_23;
  }

  if ((v9 & 0x8000000000000000) != 0 || v6 < v9)
  {
    goto LABEL_24;
  }

  v10 = __OFADD__(a2, v5);
  v11 = a2 + v5;
  if (v10)
  {
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if ((v11 & 0x8000000000000000) != 0 || v6 < v11)
  {
    goto LABEL_26;
  }

  if (v11 < v9)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (v9 < a2)
  {
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
  }

  if (v11 > a3)
  {
    goto LABEL_29;
  }

  sub_10000C9C0(&qword_1005D4B10, &qword_1004E39C0);
  sub_1001F7048();
  sub_1004A4074();
  return 0;
}

uint64_t sub_1001F19A8(uint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a1 + 4;
  if (__OFADD__(a1, 4))
  {
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v6 = a5 - a4;
  if (!a4)
  {
    v6 = 0;
  }

  if ((a2 & 0x8000000000000000) != 0 || v6 < a2)
  {
    goto LABEL_21;
  }

  if ((a3 & 0x8000000000000000) != 0 || v6 < a3)
  {
    goto LABEL_22;
  }

  if ((a3 - a2) < v5)
  {
    sub_1001F6EE0();
    swift_allocError();
    *v7 = 1;
    *(v7 + 8) = 2;
    return swift_willThrow();
  }

  v9 = a2 + a1;
  if (__OFADD__(a2, a1))
  {
    goto LABEL_23;
  }

  if ((v9 & 0x8000000000000000) != 0 || v6 < v9)
  {
    goto LABEL_24;
  }

  v10 = __OFADD__(a2, v5);
  v11 = a2 + v5;
  if (v10)
  {
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if ((v11 & 0x8000000000000000) != 0 || v6 < v11)
  {
    goto LABEL_26;
  }

  if (v11 < v9)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (v9 < a2)
  {
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
  }

  if (v11 > a3)
  {
    goto LABEL_29;
  }

  sub_10000C9C0(&qword_1005D4B10, &qword_1004E39C0);
  sub_1001F7048();
  sub_1004A4074();
  return 0;
}

uint64_t sub_1001F1B2C(uint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a1 + 1;
  if (__OFADD__(a1, 1))
  {
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v6 = a5 - a4;
  if (!a4)
  {
    v6 = 0;
  }

  if ((a2 & 0x8000000000000000) != 0 || v6 < a2)
  {
    goto LABEL_21;
  }

  if ((a3 & 0x8000000000000000) != 0 || v6 < a3)
  {
    goto LABEL_22;
  }

  if ((a3 - a2) < v5)
  {
    sub_1001F6EE0();
    swift_allocError();
    *v7 = 1;
    *(v7 + 8) = 2;
    return swift_willThrow();
  }

  v9 = a2 + a1;
  if (__OFADD__(a2, a1))
  {
    goto LABEL_23;
  }

  if ((v9 & 0x8000000000000000) != 0 || v6 < v9)
  {
    goto LABEL_24;
  }

  v10 = __OFADD__(a2, v5);
  v11 = a2 + v5;
  if (v10)
  {
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if ((v11 & 0x8000000000000000) != 0 || v6 < v11)
  {
    goto LABEL_26;
  }

  if (v11 < v9)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (v9 < a2)
  {
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
  }

  if (v11 > a3)
  {
    goto LABEL_29;
  }

  sub_10000C9C0(&qword_1005D4B10, &qword_1004E39C0);
  sub_1001F7048();
  sub_1004A4074();
  return 0;
}

uint64_t sub_1001F1CB0(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  if ((sub_1000FFC98(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  return sub_1000FFC98(v2, v3);
}

uint64_t sub_1001F1D0C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v4 = *(a1 + 24);
  v3 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = *(a2 + 16);
  v8 = *(a2 + 24);
  v10 = *(a2 + 32);
  v9 = *(a2 + 40);
  v11 = *(a2 + 48);
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8) || (sub_1004A6D34()) && (v2 == v7 && v4 == v8 || (sub_1004A6D34()) && (sub_1000FFC98(v3, v10))
  {
    return sub_1000FFC98(v5, v9) & (v6 == v11);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1001F1DEC()
{
  v1 = v0;
  v2 = sub_1004A5C64();
  *(v2 + 16) = 64;
  *(v2 + 48) = 0u;
  *(v2 + 64) = 0u;
  *(v2 + 80) = 0u;
  *(v2 + 32) = 0u;
  sub_1001F331C((v2 + 32));
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1001EDF00(v2);
  }

  if (*(v2 + 16) > 0xBuLL)
  {
    *(v2 + 40) = 3;
    v3 = sub_1001F2F30(*(v1 + 16), *(v1 + 24));
    sub_1001F2354(v3, 28);

    v4 = sub_1001F2F30(*(v1 + 32), *(v1 + 40));
    sub_1001F2354(v4, 36);

    v5 = sub_1001F2F30(*(v1 + 48), *(v1 + 56));
    sub_1001F2354(v5, 44);

    sub_1001F2020(*v1, 12);
    sub_1001F2020(*(v1 + 8), 20);
    v6 = *(v1 + 64);
    if (v6)
    {
      sub_1001F21BC(v6 + 32, *(v6 + 16), 52);
    }

    else
    {
      sub_1001F2020(_swiftEmptyArrayStorage, 52);
    }

    if (*(v1 + 76))
    {
      goto LABEL_12;
    }

    v7 = *(v1 + 72);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_1001EDF00(v2);
    }

    if (*(v2 + 16) > 0x3FuLL)
    {
      *(v2 + 92) = v7;
LABEL_12:
      sub_10015BDC0(_swiftEmptyArrayStorage);
      v8 = sub_1001E194C(v2);

      return v8;
    }
  }

  result = sub_1004A69A4();
  __break(1u);
  return result;
}

uint64_t sub_1001F2020(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v6 = v2[1];
  v5 = v2 + 1;
  v7 = *(v6 + 16);
  v8 = *v4;
  v9 = *(*v4 + 16);
  v10 = v7 + v9;
  if (__OFADD__(v7, v9))
  {
    __break(1u);
    goto LABEL_19;
  }

  if ((v10 & 0x8000000000000000) != 0)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (HIDWORD(v10))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v3 = a2;

  sub_10015BDC0(v11);
  v5 = (*(*v5 + 16) - v7);
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result)
  {
    if ((v5 & 0x8000000000000000) == 0)
    {
      goto LABEL_6;
    }

LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

LABEL_21:
  result = sub_1001EDF00(v8);
  v8 = result;
  if ((v5 & 0x8000000000000000) != 0)
  {
    goto LABEL_22;
  }

LABEL_6:
  if (v5 >> 16)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v13 = v3 + 2;
  if (__OFADD__(v3, 2))
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v14 = *(v8 + 16);
  if (v14 < v13)
  {
    goto LABEL_31;
  }

  if (v13 < v3)
  {
    goto LABEL_25;
  }

  v15 = v8 + 32;
  *(v8 + 32 + v3) = v5;
  v16 = v3 + 4;
  if (__OFADD__(v13, 2))
  {
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (v14 < v16)
  {
    goto LABEL_31;
  }

  if (v16 < v13)
  {
    goto LABEL_27;
  }

  *(v15 + v13) = v5;
  v17 = v3 + 4;
  if (__OFADD__(v3, 4))
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v18 = v3 + 8;
  if (__OFADD__(v17, 4))
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (v14 >= v18)
  {
    if (v18 >= v17)
    {
      *(v15 + v17) = v10;
      *v4 = v8;
      return result;
    }

LABEL_30:
    __break(1u);
  }

LABEL_31:
  result = sub_1004A69A4();
  __break(1u);
  return result;
}

uint64_t sub_1001F21BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v7 = v3[1];
  v6 = v3 + 1;
  v8 = *(v7 + 16);
  v9 = *v5;
  v10 = *(*v5 + 16);
  v11 = v8 + v10;
  if (__OFADD__(v8, v10))
  {
    __break(1u);
    goto LABEL_19;
  }

  if ((v11 & 0x8000000000000000) != 0)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (HIDWORD(v11))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v4 = a3;
  sub_1002158A0(a1, a2, 0);
  v6 = (*(*v6 + 16) - v8);
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result)
  {
    if ((v6 & 0x8000000000000000) == 0)
    {
      goto LABEL_6;
    }

LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

LABEL_21:
  result = sub_1001EDF00(v9);
  v9 = result;
  if ((v6 & 0x8000000000000000) != 0)
  {
    goto LABEL_22;
  }

LABEL_6:
  if (v6 >> 16)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v13 = v4 + 2;
  if (__OFADD__(v4, 2))
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v14 = *(v9 + 16);
  if (v14 < v13)
  {
    goto LABEL_31;
  }

  if (v13 < v4)
  {
    goto LABEL_25;
  }

  v15 = v9 + 32;
  *(v9 + 32 + v4) = v6;
  v16 = v4 + 4;
  if (__OFADD__(v13, 2))
  {
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (v14 < v16)
  {
    goto LABEL_31;
  }

  if (v16 < v13)
  {
    goto LABEL_27;
  }

  *(v15 + v13) = v6;
  v17 = v4 + 4;
  if (__OFADD__(v4, 4))
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v18 = v4 + 8;
  if (__OFADD__(v17, 4))
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (v14 >= v18)
  {
    if (v18 >= v17)
    {
      *(v15 + v17) = v11;
      *v5 = v9;
      return result;
    }

LABEL_30:
    __break(1u);
  }

LABEL_31:
  result = sub_1004A69A4();
  __break(1u);
  return result;
}

uint64_t sub_1001F2354(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v6 = v2[1];
  v5 = v2 + 1;
  v7 = *(v6 + 16);
  v8 = *v4;
  v9 = *(*v4 + 16);
  v10 = v7 + v9;
  if (__OFADD__(v7, v9))
  {
    __break(1u);
    goto LABEL_19;
  }

  if ((v10 & 0x8000000000000000) != 0)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (HIDWORD(v10))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v3 = a2;

  sub_100215244();
  v5 = (*(*v5 + 16) - v7);
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result)
  {
    if ((v5 & 0x8000000000000000) == 0)
    {
      goto LABEL_6;
    }

LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

LABEL_21:
  result = sub_1001EDF00(v8);
  v8 = result;
  if ((v5 & 0x8000000000000000) != 0)
  {
    goto LABEL_22;
  }

LABEL_6:
  if (v5 >> 16)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v12 = v3 + 2;
  if (__OFADD__(v3, 2))
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v13 = *(v8 + 16);
  if (v13 < v12)
  {
    goto LABEL_31;
  }

  if (v12 < v3)
  {
    goto LABEL_25;
  }

  v14 = v8 + 32;
  *(v8 + 32 + v3) = v5;
  v15 = v3 + 4;
  if (__OFADD__(v12, 2))
  {
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (v13 < v15)
  {
    goto LABEL_31;
  }

  if (v15 < v12)
  {
    goto LABEL_27;
  }

  *(v14 + v12) = v5;
  v16 = v3 + 4;
  if (__OFADD__(v3, 4))
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v17 = v3 + 8;
  if (__OFADD__(v16, 4))
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (v13 >= v17)
  {
    if (v17 >= v16)
    {
      *(v14 + v16) = v10;
      *v4 = v8;
      return result;
    }

LABEL_30:
    __break(1u);
  }

LABEL_31:
  result = sub_1004A69A4();
  __break(1u);
  return result;
}

uint64_t sub_1001F24F0(uint64_t a1, uint64_t (*a2)(void))
{
  v2 = a2();
  v3 = *(v2 + 2);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_24;
  }

LABEL_2:
  v5 = *(v2 + 2);
  v4 = *(v2 + 3);
  v6 = v5 + 1;
  if (v5 >= v4 >> 1)
  {
    v2 = sub_10015BF20((v4 > 1), v5 + 1, 1, v2);
  }

  *(v2 + 2) = v6;
  v2[v5 + 32] = 0x80;
  v23 = v2;
  if (v5 > 0xFFFFFFFFFFFFFFELL)
  {
    __break(1u);
    goto LABEL_26;
  }

  if ((v6 & 0x100000000000003FLL) == 0x38)
  {
    goto LABEL_12;
  }

  v7 = v5 + 33;
  do
  {
    v8 = *(v2 + 3);
    v9 = v7 - 31;
    if (v7 - 32 >= v8 >> 1)
    {
      v2 = sub_10015BF20((v8 > 1), v7 - 31, 1, v2);
    }

    *(v2 + 2) = v9;
    v2[v7] = 0;
    if (v7 - 32 > 0xFFFFFFFFFFFFFFELL)
    {
      __break(1u);
LABEL_23:
      __break(1u);
LABEL_24:
      v2 = sub_10015BF20(0, v3 + 1, 1, v2);
      goto LABEL_2;
    }

    ++v7;
  }

  while ((v9 & 0x100000000000003FLL) != 0x38);
  v23 = v2;
LABEL_12:
  if (v3 >> 60)
  {
LABEL_26:
    __break(1u);
  }

  v22 = 8 * v3;
  sub_100215418(&v22, &v23);
  v22 = v3 >> 29;
  sub_100215418(&v22, &v23);
  v10 = 1732584193;
  v11 = -271733879;
  v21 = -271733879;
  v22 = 1732584193;
  v12 = -1732584194;
  v13 = 271733878;
  v19 = 271733878;
  v20 = -1732584194;
  v2 = v23;
  v14 = *(v23 + 2);
  if (v14 >= 4)
  {
    v15 = 0;
    v3 = v14 >> 2;
    do
    {
      v16 = &v2[4 * v15 + 32];
      v24[0] = *v16;
      v24[1] = v16[1];
      v24[2] = v16[2];
      v24[3] = v16[3];
      v24[4] = v16[4];
      v24[5] = v16[5];
      v24[6] = v16[6];
      v24[7] = v16[7];
      v24[8] = v16[8];
      v24[9] = v16[9];
      v24[10] = v16[10];
      v24[11] = v16[11];
      v24[12] = v16[12];
      v24[13] = v16[13];
      v24[14] = v16[14];
      v24[15] = v16[15];
      sub_1001F7890(&v22, &v21, &v20, &v19, v24);
      if (v3 - v15 >= 0x10)
      {
        v15 += 16;
      }

      else
      {
        v15 = v3;
      }

      if (v3 < v15)
      {
        goto LABEL_23;
      }
    }

    while (v15 != v3);
    v11 = v21;
    v10 = v22;
    v13 = v19;
    v12 = v20;
  }

  v17 = sub_1004A5C64();
  *(v17 + 16) = 16;
  *(v17 + 32) = v10;
  *(v17 + 36) = v11;
  *(v17 + 40) = v12;
  *(v17 + 44) = v13;

  return v17;
}

uint64_t sub_1001F27D8(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) != 16)
  {
LABEL_9:
    __break(1u);
  }

  swift_bridgeObjectRetain_n();
  sub_1001F4784(a1, a1 + 32, 0, 0xFuLL);
  v6 = v5;
  v20 = v5;
  sub_1001F4784(a1, a1 + 32, 7, 0x1DuLL);
  v8 = v7;

  v21 = v8;
  sub_1001F4784(a1, a1 + 32, 14, 0x21uLL);
  v10 = v9;

  sub_10015BDC0(&off_1005A3868);
  v22 = v10;
  v18 = _swiftEmptyArrayStorage;
  if (*(v6 + 16) != 7)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  sub_1001F2A50(key, 8uLL, v6, a2, &v17);
  if (!v2)
  {
    v11 = v17;

    sub_10015BDC0(v11);
    v12 = v21;
    if (*(v21 + 16) == 7)
    {

      sub_1001F2A50(key, 8uLL, v12, a2, &v17);
      v13 = v17;

      sub_10015BDC0(v13);
      v14 = v22;
      if (*(v22 + 16) == 7)
      {

        sub_1001F2A50(key, 8uLL, v14, a2, &v17);
        v15 = v17;

        sub_10015BDC0(v15);
        sub_10000C9C0(&unk_1005D8FF0, &unk_1004DC230);
        swift_arrayDestroy();
        return v18;
      }
    }

    goto LABEL_8;
  }

  sub_10000C9C0(&unk_1005D8FF0, &unk_1004DC230);
  swift_arrayDestroy();

  swift_willThrow();
}

uint64_t sub_1001F2A50@<X0>(_BYTE *key@<X0>, size_t keyLength@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v7 = *(a3 + 16);
  if (!v7)
  {
    __break(1u);
    goto LABEL_13;
  }

  v8 = *(a3 + 32);
  *key = v8;
  if (v7 == 1)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v9 = *(a3 + 33);
  HIDWORD(v10) = v8;
  LODWORD(v10) = v9 << 24;
  key[1] = v10 >> 25;
  if (v7 < 3)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v11 = *(a3 + 34);
  HIDWORD(v12) = v9;
  LODWORD(v12) = v11 << 24;
  key[2] = v12 >> 26;
  if (v7 == 3)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v13 = *(a3 + 35);
  HIDWORD(v14) = v11;
  LODWORD(v14) = v13 << 24;
  key[3] = v14 >> 27;
  if (v7 < 5)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v15 = *(a3 + 36);
  HIDWORD(v16) = v13;
  LODWORD(v16) = v15 << 24;
  key[4] = v16 >> 28;
  if (v7 == 5)
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
  }

  v17 = *(a3 + 37);
  HIDWORD(v18) = v15;
  LODWORD(v18) = v17 << 24;
  key[5] = v18 >> 29;
  if (v7 < 7)
  {
    goto LABEL_18;
  }

  v19 = *(a3 + 38);
  HIDWORD(v20) = v17;
  LODWORD(v20) = v19 << 24;
  key[6] = v20 >> 30;
  key[7] = 2 * v19;
  result = sub_1001F2BAC(dataOut, key, keyLength, (a4 + 32), &v24, a4 + 32 + *(a4 + 16), &v22);
  if (v5)
  {
    return swift_willThrow();
  }

  *a5 = v22;
  return result;
}

uint64_t sub_1001F2BAC@<X0>(void *dataOut@<X0>, void *key@<X2>, size_t keyLength@<X3>, void *dataIn@<X4>, size_t a5@<X1>, uint64_t a6@<X5>, void *a7@<X8>)
{
  if (dataIn)
  {
    v10 = a6 - dataIn;
  }

  else
  {
    v10 = 0;
  }

  if (dataOut)
  {
    v11 = a5 - dataOut;
  }

  else
  {
    v11 = 0;
  }

  dataOutMoved = 0;
  result = CCCrypt(0, 1u, 2u, key, keyLength, 0, dataIn, v10, dataOut, v11, &dataOutMoved);
  if (result)
  {
    v13 = result;
    sub_1001F720C();
    swift_allocError();
    *v14 = v13;
    return swift_willThrow();
  }

  if ((dataOutMoved & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_19:
    __break(1u);
  }

  if ((v11 & 0x8000000000000000) != 0)
  {
    goto LABEL_19;
  }

  if (v11 >= dataOutMoved)
  {
    v11 = dataOutMoved;
  }

  if (!v11)
  {
    goto LABEL_16;
  }

  v15 = sub_10015BEAC(v11, 0);
  result = sub_1001F4FAC(v17, v15 + 4, v11, 0, v11, dataOut, a5);
  if (result != v11)
  {
    __break(1u);
LABEL_16:
    v15 = _swiftEmptyArrayStorage;
  }

  *a7 = v15;
  return result;
}

uint64_t sub_1001F2D04(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, void *a6)
{
  v10 = sub_1004A5474();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1001F2F30(a3, a4);
  v16 = sub_1001F24F0(v15, sub_1001B429C);

  v22 = sub_1004A5834();
  v23 = v17;

  v24._countAndFlagsBits = a5;
  v24._object = a6;
  sub_1004A5994(v24);

  sub_1001F2F30(v22, v23);

  v22 = sub_1001D93E4(v18);
  v23 = v19;
  v21[1] = v16;
  sub_10000C9C0(&unk_1005D8FF0, &unk_1004DC230);
  sub_10000DF44(&qword_1005D2F10, &unk_1005D8FF0, &unk_1004DC230);
  sub_1004A5464();
  sub_1004A54D4();
  sub_1001CFC28();
  sub_1001CFC80();
  sub_1004A5484();

  (*(v11 + 8))(v14, v10);
  return sub_100014D40(v22, v23);
}

uint64_t sub_1001F2F30(uint64_t a1, unint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = 256;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  *(v6 + 32) = 0;
  *(v6 + 40) = v5;
  *(v6 + 48) = 0;
  *(v6 + 50) = 1;
  sub_10000C9C0(&qword_1005D4B00, &qword_1004E39B8);
  v7 = swift_allocObject();
  *(v7 + 16) = sub_1001F71BC;
  *(v7 + 24) = v6;
  v8 = swift_allocObject();
  *(v8 + 16) = v4;
  *(v8 + 24) = v7;
  sub_10000C9C0(&qword_1005D4B38, &unk_1004E39D0);
  v9 = swift_allocObject();
  *(v9 + 16) = sub_1001F7204;
  *(v9 + 24) = v8;

  return v9;
}

uint64_t sub_1001F3058(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1004A5C64();
  v7 = v6;
  *(v6 + 16) = 28;
  *(v6 + 34) = 0;
  *(v6 + 42) = 0;
  *(v6 + 50) = 0;
  *(v6 + 58) = 0;
  *(v6 + 32) = 257;
  *(v6 + 40) = a1;
  if (*(a2 + 16) >= 8uLL)
  {
    v8 = 8;
  }

  else
  {
    v8 = *(a2 + 16);
  }

  memmove((v6 + 48), (a2 + 32), v8);
  if (a3)
  {

    sub_10015BDC0(v9);
  }

  v10 = sub_1004A5C64();
  *(v10 + 16) = 4;
  *(v10 + 32) = 0;
  sub_10015BDC0(v10);
  return v7;
}

uint64_t sub_1001F3190()
{
  v1 = sub_1004A6CE4();
  v2._countAndFlagsBits = 46;
  v2._object = 0xE100000000000000;
  sub_1004A5994(v2);
  v3._countAndFlagsBits = sub_1004A6CE4();
  sub_1004A5994(v3);

  v4._countAndFlagsBits = 46;
  v4._object = 0xE100000000000000;
  sub_1004A5994(v4);
  v5._countAndFlagsBits = sub_1004A6CE4();
  sub_1004A5994(v5);

  return v1;
}

uint64_t sub_1001F3278(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_1004A6D34(), result = 0, (v7 & 1) != 0))
  {
    if (v2 == v4 && v3 == v5)
    {
      return 1;
    }

    else
    {

      return sub_1004A6D34();
    }
  }

  return result;
}

uint64_t sub_1001F331C(void *a1)
{
  v2 = sub_1004A5844();
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = v2;
    sub_1001D606C(0, v3, 0);
    result = v4;
    for (i = 0; i != v3; ++i)
    {
      if (i >= *(result + 16))
      {
        __break(1u);
        return result;
      }

      v7 = aNtlmssp[i];
      v9 = _swiftEmptyArrayStorage[2];
      v8 = _swiftEmptyArrayStorage[3];
      if (v9 >= v8 >> 1)
      {
        sub_1001D606C((v8 > 1), v9 + 1, 1);
        result = v4;
      }

      _swiftEmptyArrayStorage[2] = v9 + 1;
      *(&_swiftEmptyArrayStorage[4] + v9) = v7;
    }

    if (!a1)
    {
    }
  }

  else
  {

    if (!a1)
    {
    }
  }

  memmove(a1, &_swiftEmptyArrayStorage[4], _swiftEmptyArrayStorage[2]);
}

void *sub_1001F3468(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    if (result <= 0)
    {
      v5 = result + a2;
      if (__OFADD__(result, a2))
      {
LABEL_27:
        __break(1u);
LABEL_28:
        __break(1u);
        goto LABEL_29;
      }

      if (v5 <= 0)
      {
        goto LABEL_11;
      }
    }

LABEL_9:
    sub_1001F6EE0();
    swift_allocError();
    *v6 = 1;
    *(v6 + 8) = 2;
    swift_willThrow();
    return v4;
  }

  if (a4 - a3 < result)
  {
    goto LABEL_9;
  }

  v5 = result + a2;
  if (__OFADD__(result, a2))
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (a4 - a3 < v5)
  {
    goto LABEL_9;
  }

LABEL_11:
  v7 = v5 - result;
  if (v5 < result)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if (v5 == result)
  {
    return _swiftEmptyArrayStorage;
  }

  v9 = result;
  result = sub_10015BEAC(v5 - result, 0);
  v10 = (v9 + v7);
  if (__OFADD__(v9, v7))
  {
    goto LABEL_28;
  }

  if (v10 >= v9)
  {
    v4 = result;
    if (v10 == v9)
    {
      if (v7)
      {
        __break(1u);
        goto LABEL_25;
      }
    }

    else
    {
      if (a3)
      {
        v11 = v9 + a3;
      }

      else
      {
        v11 = 0;
      }

      memcpy(result + 4, v11, v7);
    }

    return v4;
  }

LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_1001F35AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = 1;
  result = swift_beginAccess();
  v6 = *(a1 + 16);
  if (v6)
  {
    if (v6 == *(a1 + 24))
    {
      LOWORD(v6) = 0;
      v4 = 1;
    }

    else
    {
      v4 = 0;
      *(a1 + 16) = v6 + 1;
      LOWORD(v6) = *v6;
    }
  }

  *a2 = v6;
  *(a2 + 2) = v4;
  return result;
}

Swift::UInt32 (__swiftcall *sub_1001F3630(uint64_t *a1))(IMAP2Persistence::CredentialsRequestID)
{
  v2 = v1;
  LODWORD(v4) = *v1;
  v5 = *(v1 + 4);
  v22 = *v1;
  v23 = v5;
  if (!v5)
  {
    v6 = *a1;
    sub_1004A6AA4();
    if (v21)
    {
LABEL_3:
      v7 = 0;
      *v2 = v4;
      *(v2 + 4) = 0;
      v8 = 1;
LABEL_27:
      LOBYTE(v20) = v8;
      return (v7 | (v8 << 32));
    }

    LODWORD(v7) = v20;
    if ((v20 & 0xF800) != 0xD800)
    {
      v12 = 0;
      goto LABEL_26;
    }

    LODWORD(v4) = v4 & 0xFFFF0000 | v20;
    v5 = 16;
LABEL_6:
    v9 = *a1;
    sub_1004A6AA4();
    if (v21)
    {
      v10 = v5;
      goto LABEL_8;
    }

    LODWORD(v4) = ((-65535 << v5) - 1) & v4 | (v20 << v5);
    v10 = v5 + 16;
    if ((v5 + 16) <= 0x1Fu)
    {
      sub_1004A6AA4();
      if (v21)
      {
        goto LABEL_8;
      }

      LODWORD(v4) = ((-65535 << v10) - 1) & v4 | (v20 << v10);
      v10 = v5 + 32;
      if (v5 >= 0xE0)
      {
        sub_1004A6AA4();
        if ((v21 & 1) == 0)
        {
          v11 = ((-65535 << v5) - 1) & v4 | (v20 << v5);
          v10 = v5 + 48;
LABEL_17:
          v13 = v11 & 0xFC00FC00;
          if ((v11 & 0xFC00FC00) == 0xDC00D800)
          {
            v14 = 32;
          }

          else
          {
            v14 = 16;
          }

          v12 = v10 - v14;
          v15 = v13 == -603924480;
          if (v13 == -603924480)
          {
            v16 = 32;
          }

          else
          {
            v16 = 16;
          }

          v4 = v11 >> v16;
          if (!v15)
          {
            *v2 = v4;
            *(v2 + 4) = v12;
            v7 = 1;
            v8 = 1;
            goto LABEL_27;
          }

          LODWORD(v7) = (HIWORD(v11) & 0x3FF | ((v11 & 0x3FF) << 10)) + 0x10000;
LABEL_26:
          v8 = 0;
          *v2 = v4;
          *(v2 + 4) = v12;
          v7 = v7;
          goto LABEL_27;
        }

LABEL_8:
        v11 = v4;
        if (!v10)
        {
          goto LABEL_3;
        }

        goto LABEL_17;
      }
    }

    v11 = v4;
    goto LABEL_17;
  }

  if ((v4 & 0xF800) == 0xD800)
  {
    goto LABEL_6;
  }

  sub_1001F6FF4();
  result = UnsafeExtractedAttachment.part.modify();
  v19 = *(v18 + 4);
  if (v19)
  {
    *v18 = *(v18 + 2);
    *(v18 + 4) = v19 - 16;
    (result)(&v20, 0);
    LODWORD(v7) = v4;
    LODWORD(v4) = v22;
    v12 = v23;
    goto LABEL_26;
  }

  __break(1u);
  return result;
}

uint64_t sub_1001F3878@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  swift_beginAccess();
  if (*(a1 + 17) == 1)
  {
    result = sub_1004A6AA4();
    if (v9)
    {
      v5 = 0;
      v6 = 1;
    }

    else
    {
      v5 = v7;
      result = swift_beginAccess();
      v6 = 0;
      *(a1 + 16) = v8;
    }
  }

  else
  {
    v5 = *(a1 + 16);
    result = swift_beginAccess();
    v6 = 0;
    *(a1 + 16) = 256;
  }

  *a2 = v5;
  a2[1] = v6;
  return result;
}

uint64_t sub_1001F3944@<X0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  v2 = sub_1004A5A44();
  result = swift_endAccess();
  *a1 = v2;
  *(a1 + 2) = BYTE2(v2) & 1;
  return result;
}

BOOL sub_1001F39F0(_DWORD *a1, int *a2)
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

_DWORD *sub_1001F3A20@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 4) = v3 == 0;
  return result;
}

int *sub_1001F3A4C@<X0>(int *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 4) = v5 == 0;
  return result;
}

_DWORD *sub_1001F3B38@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

uint64_t sub_1001F3B48@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  v3 = sub_1001F7278(a1);

  *a2 = v3;
  return result;
}

uint64_t sub_1001F3B88(int a1)
{
  if (a1)
  {
    v2 = sub_100085070(0, 1, 1, _swiftEmptyArrayStorage);
    v4 = *(v2 + 2);
    v3 = *(v2 + 3);
    if (v4 >= v3 >> 1)
    {
      v2 = sub_100085070((v3 > 1), v4 + 1, 1, v2);
    }

    *(v2 + 2) = v4 + 1;
    v5 = &v2[16 * v4];
    *(v5 + 4) = 0xD000000000000010;
    *(v5 + 5) = 0x80000001004AC0C0;
  }

  else
  {
    v2 = _swiftEmptyArrayStorage;
  }

  if ((a1 & 2) != 0)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_100085070(0, *(v2 + 2) + 1, 1, v2);
    }

    v7 = *(v2 + 2);
    v6 = *(v2 + 3);
    if (v7 >= v6 >> 1)
    {
      v2 = sub_100085070((v6 > 1), v7 + 1, 1, v2);
    }

    *(v2 + 2) = v7 + 1;
    v8 = &v2[16 * v7];
    strcpy(v8 + 32, "negotiateOEM");
    v8[45] = 0;
    *(v8 + 23) = -5120;
    if ((a1 & 4) == 0)
    {
LABEL_8:
      if ((a1 & 0x10) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_38;
    }
  }

  else if ((a1 & 4) == 0)
  {
    goto LABEL_8;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_100085070(0, *(v2 + 2) + 1, 1, v2);
  }

  v10 = *(v2 + 2);
  v9 = *(v2 + 3);
  if (v10 >= v9 >> 1)
  {
    v2 = sub_100085070((v9 > 1), v10 + 1, 1, v2);
  }

  *(v2 + 2) = v10 + 1;
  v11 = &v2[16 * v10];
  strcpy(v11 + 32, "requestTarget");
  *(v11 + 23) = -4864;
  if ((a1 & 0x10) == 0)
  {
LABEL_9:
    if ((a1 & 0x20) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_43;
  }

LABEL_38:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_100085070(0, *(v2 + 2) + 1, 1, v2);
  }

  v13 = *(v2 + 2);
  v12 = *(v2 + 3);
  if (v13 >= v12 >> 1)
  {
    v2 = sub_100085070((v12 > 1), v13 + 1, 1, v2);
  }

  *(v2 + 2) = v13 + 1;
  v14 = &v2[16 * v13];
  strcpy(v14 + 32, "negotiateSign");
  *(v14 + 23) = -4864;
  if ((a1 & 0x20) == 0)
  {
LABEL_10:
    if ((a1 & 0x40) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_48;
  }

LABEL_43:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_100085070(0, *(v2 + 2) + 1, 1, v2);
  }

  v16 = *(v2 + 2);
  v15 = *(v2 + 3);
  if (v16 >= v15 >> 1)
  {
    v2 = sub_100085070((v15 > 1), v16 + 1, 1, v2);
  }

  *(v2 + 2) = v16 + 1;
  v17 = &v2[16 * v16];
  strcpy(v17 + 32, "negotiateSeal");
  *(v17 + 23) = -4864;
  if ((a1 & 0x40) == 0)
  {
LABEL_11:
    if ((a1 & 0x80) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_53;
  }

LABEL_48:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_100085070(0, *(v2 + 2) + 1, 1, v2);
  }

  v19 = *(v2 + 2);
  v18 = *(v2 + 3);
  if (v19 >= v18 >> 1)
  {
    v2 = sub_100085070((v18 > 1), v19 + 1, 1, v2);
  }

  *(v2 + 2) = v19 + 1;
  v20 = &v2[16 * v19];
  *(v20 + 4) = 0xD000000000000016;
  *(v20 + 5) = 0x80000001004AC0A0;
  if ((a1 & 0x80) == 0)
  {
LABEL_12:
    if ((a1 & 0x200) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_58;
  }

LABEL_53:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_100085070(0, *(v2 + 2) + 1, 1, v2);
  }

  v22 = *(v2 + 2);
  v21 = *(v2 + 3);
  if (v22 >= v21 >> 1)
  {
    v2 = sub_100085070((v21 > 1), v22 + 1, 1, v2);
  }

  *(v2 + 2) = v22 + 1;
  v23 = &v2[16 * v22];
  *(v23 + 4) = 0xD000000000000016;
  *(v23 + 5) = 0x80000001004AC080;
  if ((a1 & 0x200) == 0)
  {
LABEL_13:
    if ((a1 & 0x800) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_63;
  }

LABEL_58:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_100085070(0, *(v2 + 2) + 1, 1, v2);
  }

  v25 = *(v2 + 2);
  v24 = *(v2 + 3);
  if (v25 >= v24 >> 1)
  {
    v2 = sub_100085070((v24 > 1), v25 + 1, 1, v2);
  }

  *(v2 + 2) = v25 + 1;
  v26 = &v2[16 * v25];
  strcpy(v26 + 32, "negotiateNTLM");
  *(v26 + 23) = -4864;
  if ((a1 & 0x800) == 0)
  {
LABEL_14:
    if ((a1 & 0x1000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_68;
  }

LABEL_63:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_100085070(0, *(v2 + 2) + 1, 1, v2);
  }

  v28 = *(v2 + 2);
  v27 = *(v2 + 3);
  if (v28 >= v27 >> 1)
  {
    v2 = sub_100085070((v27 > 1), v28 + 1, 1, v2);
  }

  *(v2 + 2) = v28 + 1;
  v29 = &v2[16 * v28];
  *(v29 + 4) = 0xD000000000000012;
  *(v29 + 5) = 0x80000001004AC060;
  if ((a1 & 0x1000) == 0)
  {
LABEL_15:
    if ((a1 & 0x2000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_73;
  }

LABEL_68:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_100085070(0, *(v2 + 2) + 1, 1, v2);
  }

  v31 = *(v2 + 2);
  v30 = *(v2 + 3);
  if (v31 >= v30 >> 1)
  {
    v2 = sub_100085070((v30 > 1), v31 + 1, 1, v2);
  }

  *(v2 + 2) = v31 + 1;
  v32 = &v2[16 * v31];
  *(v32 + 4) = 0xD000000000000017;
  *(v32 + 5) = 0x80000001004AC040;
  if ((a1 & 0x2000) == 0)
  {
LABEL_16:
    if ((a1 & 0x8000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_78;
  }

LABEL_73:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_100085070(0, *(v2 + 2) + 1, 1, v2);
  }

  v34 = *(v2 + 2);
  v33 = *(v2 + 3);
  if (v34 >= v33 >> 1)
  {
    v2 = sub_100085070((v33 > 1), v34 + 1, 1, v2);
  }

  *(v2 + 2) = v34 + 1;
  v35 = &v2[16 * v34];
  *(v35 + 4) = 0xD00000000000001CLL;
  *(v35 + 5) = 0x80000001004AC020;
  if ((a1 & 0x8000) == 0)
  {
LABEL_17:
    if ((a1 & 0x10000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_83;
  }

LABEL_78:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_100085070(0, *(v2 + 2) + 1, 1, v2);
  }

  v37 = *(v2 + 2);
  v36 = *(v2 + 3);
  if (v37 >= v36 >> 1)
  {
    v2 = sub_100085070((v36 > 1), v37 + 1, 1, v2);
  }

  *(v2 + 2) = v37 + 1;
  v38 = &v2[16 * v37];
  *(v38 + 4) = 0xD000000000000013;
  *(v38 + 5) = 0x80000001004AC000;
  if ((a1 & 0x10000) == 0)
  {
LABEL_18:
    if ((a1 & 0x20000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_88;
  }

LABEL_83:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_100085070(0, *(v2 + 2) + 1, 1, v2);
  }

  v40 = *(v2 + 2);
  v39 = *(v2 + 3);
  if (v40 >= v39 >> 1)
  {
    v2 = sub_100085070((v39 > 1), v40 + 1, 1, v2);
  }

  *(v2 + 2) = v40 + 1;
  v41 = &v2[16 * v40];
  *(v41 + 4) = 0xD000000000000010;
  *(v41 + 5) = 0x80000001004ABFE0;
  if ((a1 & 0x20000) == 0)
  {
LABEL_19:
    if ((a1 & 0x80000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_93;
  }

LABEL_88:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_100085070(0, *(v2 + 2) + 1, 1, v2);
  }

  v43 = *(v2 + 2);
  v42 = *(v2 + 3);
  if (v43 >= v42 >> 1)
  {
    v2 = sub_100085070((v42 > 1), v43 + 1, 1, v2);
  }

  *(v2 + 2) = v43 + 1;
  v44 = &v2[16 * v43];
  *(v44 + 4) = 0xD000000000000010;
  *(v44 + 5) = 0x80000001004ABFC0;
  if ((a1 & 0x80000) == 0)
  {
LABEL_20:
    if ((a1 & 0x100000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_98;
  }

LABEL_93:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_100085070(0, *(v2 + 2) + 1, 1, v2);
  }

  v46 = *(v2 + 2);
  v45 = *(v2 + 3);
  if (v46 >= v45 >> 1)
  {
    v2 = sub_100085070((v45 > 1), v46 + 1, 1, v2);
  }

  *(v2 + 2) = v46 + 1;
  v47 = &v2[16 * v46];
  *(v47 + 4) = 0xD000000000000011;
  *(v47 + 5) = 0x80000001004ABFA0;
  if ((a1 & 0x100000) == 0)
  {
LABEL_21:
    if ((a1 & 0x400000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_103;
  }

LABEL_98:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_100085070(0, *(v2 + 2) + 1, 1, v2);
  }

  v49 = *(v2 + 2);
  v48 = *(v2 + 3);
  if (v49 >= v48 >> 1)
  {
    v2 = sub_100085070((v48 > 1), v49 + 1, 1, v2);
  }

  *(v2 + 2) = v49 + 1;
  v50 = &v2[16 * v49];
  *(v50 + 4) = 0xD000000000000011;
  *(v50 + 5) = 0x80000001004ABF80;
  if ((a1 & 0x400000) == 0)
  {
LABEL_22:
    if ((a1 & 0x800000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_108;
  }

LABEL_103:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_100085070(0, *(v2 + 2) + 1, 1, v2);
  }

  v52 = *(v2 + 2);
  v51 = *(v2 + 3);
  if (v52 >= v51 >> 1)
  {
    v2 = sub_100085070((v51 > 1), v52 + 1, 1, v2);
  }

  *(v2 + 2) = v52 + 1;
  v53 = &v2[16 * v52];
  *(v53 + 4) = 0xD000000000000016;
  *(v53 + 5) = 0x80000001004ABF60;
  if ((a1 & 0x800000) == 0)
  {
LABEL_23:
    if ((a1 & 0x2000000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_113;
  }

LABEL_108:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_100085070(0, *(v2 + 2) + 1, 1, v2);
  }

  v55 = *(v2 + 2);
  v54 = *(v2 + 3);
  if (v55 >= v54 >> 1)
  {
    v2 = sub_100085070((v54 > 1), v55 + 1, 1, v2);
  }

  *(v2 + 2) = v55 + 1;
  v56 = &v2[16 * v55];
  *(v56 + 4) = 0xD000000000000013;
  *(v56 + 5) = 0x80000001004ABF40;
  if ((a1 & 0x2000000) == 0)
  {
LABEL_24:
    if ((a1 & 0x20000000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_118;
  }

LABEL_113:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_100085070(0, *(v2 + 2) + 1, 1, v2);
  }

  v58 = *(v2 + 2);
  v57 = *(v2 + 3);
  if (v58 >= v57 >> 1)
  {
    v2 = sub_100085070((v57 > 1), v58 + 1, 1, v2);
  }

  *(v2 + 2) = v58 + 1;
  v59 = &v2[16 * v58];
  *(v59 + 4) = 0xD000000000000010;
  *(v59 + 5) = 0x80000001004ABF20;
  if ((a1 & 0x20000000) == 0)
  {
LABEL_25:
    if ((a1 & 0x40000000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_123;
  }

LABEL_118:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_100085070(0, *(v2 + 2) + 1, 1, v2);
  }

  v61 = *(v2 + 2);
  v60 = *(v2 + 3);
  if (v61 >= v60 >> 1)
  {
    v2 = sub_100085070((v60 > 1), v61 + 1, 1, v2);
  }

  *(v2 + 2) = v61 + 1;
  v62 = &v2[16 * v61];
  strcpy(v62 + 32, "negotiate128");
  v62[45] = 0;
  *(v62 + 23) = -5120;
  if ((a1 & 0x40000000) == 0)
  {
LABEL_26:
    if ((a1 & 0x80000000) == 0)
    {
      goto LABEL_133;
    }

    goto LABEL_128;
  }

LABEL_123:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_100085070(0, *(v2 + 2) + 1, 1, v2);
  }

  v64 = *(v2 + 2);
  v63 = *(v2 + 3);
  if (v64 >= v63 >> 1)
  {
    v2 = sub_100085070((v63 > 1), v64 + 1, 1, v2);
  }

  *(v2 + 2) = v64 + 1;
  v65 = &v2[16 * v64];
  *(v65 + 4) = 0xD000000000000014;
  *(v65 + 5) = 0x80000001004ABF00;
  if (a1 < 0)
  {
LABEL_128:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_100085070(0, *(v2 + 2) + 1, 1, v2);
    }

    v67 = *(v2 + 2);
    v66 = *(v2 + 3);
    if (v67 >= v66 >> 1)
    {
      v2 = sub_100085070((v66 > 1), v67 + 1, 1, v2);
    }

    *(v2 + 2) = v67 + 1;
    v68 = &v2[16 * v67];
    *(v68 + 4) = 0x746169746F67656ELL;
    *(v68 + 5) = 0xEB00000000363565;
  }

LABEL_133:
  sub_10000C9C0(&unk_1005DA9A0, &unk_1004CF770);
  sub_10000DF44(&qword_1005CDA18, &unk_1005DA9A0, &unk_1004CF770);
  v69 = sub_1004A5614();

  return v69;
}

void sub_1001F4784(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_9:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      v8 = _swiftEmptyArrayStorage;
      if (v4 != a3)
      {
        goto LABEL_5;
      }
    }

    else
    {
      sub_10000C9C0(&qword_1005D65C0, &unk_1004DD1B0);
      v8 = swift_allocObject();
      v9 = j__malloc_size(v8);
      v8[2] = v5;
      v8[3] = 2 * v9 - 64;
      if (v4 != a3)
      {
LABEL_5:
        memcpy(v8 + 4, (a2 + a3), v5);
        return;
      }
    }

    __break(1u);
    goto LABEL_9;
  }
}

uint64_t _s9OSVersionVwet(uint64_t a1, int a2)
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

uint64_t _s9OSVersionVwst(uint64_t result, int a2, int a3)
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

unint64_t sub_1001F48BC()
{
  result = qword_1005D4AC8;
  if (!qword_1005D4AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D4AC8);
  }

  return result;
}

unint64_t sub_1001F4914()
{
  result = qword_1005D4AD0;
  if (!qword_1005D4AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D4AD0);
  }

  return result;
}

unint64_t sub_1001F496C()
{
  result = qword_1005D4AD8;
  if (!qword_1005D4AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D4AD8);
  }

  return result;
}

unint64_t sub_1001F49C4()
{
  result = qword_1005D4AE0;
  if (!qword_1005D4AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D4AE0);
  }

  return result;
}

uint64_t sub_1001F4A18(uint64_t a1, unint64_t a2)
{
  v2 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v2)
    {
      sub_1004A54D4();
      sub_1001CFC28();
      return sub_1004A5414();
    }

    v4 = a1;
    v5 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

    return sub_1001F4CB8(v4, v5);
  }

  if (v2 == 2)
  {
    v4 = *(a1 + 16);
    v5 = *(a1 + 24);
    return sub_1001F4CB8(v4, v5);
  }

  sub_1004A54D4();
  sub_1001CFC28();
  return sub_1004A5414();
}

uint64_t sub_1001F4B98@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v3 != 2)
    {
      memset(v8, 0, 14);
      v4 = v8;
      return sub_1001F121C(v8, v4, a3);
    }

    v5 = *(a1 + 16);
    v6 = *(a1 + 24);
    return sub_1001F4D68(v5, v6, a3);
  }

  if (v3)
  {
    v5 = a1;
    v6 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

    return sub_1001F4D68(v5, v6, a3);
  }

  v8[0] = a1;
  LOWORD(v8[1]) = a2;
  BYTE2(v8[1]) = BYTE2(a2);
  BYTE3(v8[1]) = BYTE3(a2);
  BYTE4(v8[1]) = BYTE4(a2);
  BYTE5(v8[1]) = BYTE5(a2);
  v4 = v8 + BYTE6(a2);
  return sub_1001F121C(v8, v4, a3);
}

uint64_t sub_1001F4CB8(uint64_t a1, uint64_t a2)
{
  result = sub_1004A40D4();
  if (!result || (result = sub_1004A4104(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      sub_1004A40F4();
      sub_1004A54D4();
      sub_1001CFC28();
      return sub_1004A5414();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1001F4D68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_1004A40D4();
  v7 = result;
  if (result)
  {
    result = sub_1004A4104();
    if (__OFSUB__(a1, result))
    {
LABEL_13:
      __break(1u);
      return result;
    }

    v7 += a1 - result;
  }

  v8 = __OFSUB__(a2, a1);
  v9 = a2 - a1;
  if (v8)
  {
    __break(1u);
    goto LABEL_13;
  }

  v10 = sub_1004A40F4();
  if (v10 >= v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = v10;
  }

  v12 = v11 + v7;
  if (v7)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  return sub_1001F121C(v7, v13, a3);
}

uint64_t sub_1001F4DFC()
{
  if (*(v0 + 64))
  {
    v1 = 0;
    v2 = 1;
    return v1 | (v2 << 16);
  }

  v3 = *(v0 + 32);
  if (v3 == *(v0 + 8) || ((v4 = *(*(v0 + 16) + v3), *(v0 + 32) = v3 + 1, v5 = *(v0 + 40), v6 = *(v0 + 48), (v6 & 0x2000000000000000) != 0) ? (v7 = HIBYTE(v6) & 0xF) : (v7 = v5 & 0xFFFFFFFFFFFFLL), v8 = *(v0 + 56), v8 >> 14 == 4 * v7))
  {
    v1 = 0;
    v2 = 1;
    *(v0 + 64) = 1;
    return v1 | (v2 << 16);
  }

  v9 = (v5 >> 59) & 1;
  if ((v6 & 0x1000000000000000) == 0)
  {
    LOBYTE(v9) = 1;
  }

  v10 = *(v0 + 56) & 0xCLL;
  v11 = 4 << v9;
  v12 = *(v0 + 56);
  if (v10 == v11)
  {
    v24 = *(v0 + 56);
    v27 = *(v0 + 40);
    v16 = *(v0 + 48);
    v17 = sub_10010C210(v8, v5, v6);
    v6 = v16;
    v12 = v17;
    v8 = v24;
    v5 = v27;
  }

  v13 = v12 >> 16;
  if (v12 >> 16 >= v7)
  {
    __break(1u);
LABEL_23:
    v25 = v8;
    v28 = v5;
    v18 = v6;
    v19 = sub_1004A5A24();
    v6 = v18;
    v13 = v19;
    v8 = v25;
    v5 = v28;
    if (v10 == v11)
    {
      goto LABEL_24;
    }

    goto LABEL_20;
  }

  if ((v6 & 0x1000000000000000) != 0)
  {
    goto LABEL_23;
  }

  if ((v6 & 0x2000000000000000) != 0)
  {
    v31[0] = v5;
    v31[1] = v6 & 0xFFFFFFFFFFFFFFLL;
    v14 = v31;
  }

  else
  {
    if ((v5 & 0x1000000000000000) == 0)
    {
      goto LABEL_30;
    }

    v14 = ((v6 & 0xFFFFFFFFFFFFFFFLL) + 32);
  }

  while (1)
  {
    LOBYTE(v13) = *(v14 + v13);
    if (v10 == v11)
    {
LABEL_24:
      v29 = v5;
      v22 = v6;
      v8 = sub_10010C210(v8, v5, v6);
      v6 = v22;
      v5 = v29;
      if ((v22 & 0x1000000000000000) == 0)
      {
LABEL_21:
        v15 = (v8 & 0xFFFFFFFFFFFF0000) + 65540;
        goto LABEL_27;
      }
    }

    else
    {
LABEL_20:
      if ((v6 & 0x1000000000000000) == 0)
      {
        goto LABEL_21;
      }
    }

    if (v7 > v8 >> 16)
    {
      break;
    }

    __break(1u);
LABEL_30:
    v26 = v8;
    v30 = v5;
    v23 = v6;
    v21 = sub_1004A67E4();
    v5 = v30;
    v14 = v21;
    v6 = v23;
    v8 = v26;
  }

  v15 = sub_1004A59F4();
LABEL_27:
  v2 = 0;
  *(v0 + 56) = v15;
  v1 = v4 & 0xFFFF00FF | (v13 << 8);
  return v1 | (v2 << 16);
}

size_t *sub_1001F4FAC(size_t *result, void *__dst, int64_t a3, size_t a4, size_t a5, size_t a6, size_t a7)
{
  if (!a6)
  {
    goto LABEL_16;
  }

  v7 = a7 - a6;
  if ((a7 - a6) < 0)
  {
    __break(1u);
    goto LABEL_21;
  }

  if (v7 < a4)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v7 < a5)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (__OFADD__(a4, a5 - a4))
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (a5 < a4)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v8 = 0;
  if (a5 != a4 && a3)
  {
    if ((a5 - a4) >= a3)
    {
      v8 = a3;
    }

    else
    {
      v8 = a5 - a4;
    }

    v9 = result;
    v10 = a7;
    v11 = a6;
    v12 = a5;
    v13 = a4;
    memcpy(__dst, (a6 + a4), v8);
    a4 = v13;
    result = v9;
    a5 = v12;
    a6 = v11;
    a7 = v10;
  }

  v14 = a4 + v8;
  if (__OFADD__(a4, v8))
  {
    goto LABEL_25;
  }

  if (v14 <= v7)
  {
LABEL_19:
    result[3] = a7;
    result[4] = v14;
    *result = a4;
    result[1] = a5;
    result[2] = a6;
    return v8;
  }

  __break(1u);
LABEL_16:
  if (a4)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if (!a5)
  {
    v14 = 0;
    v8 = 0;
    goto LABEL_19;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_1001F50B4(unint64_t a1, uint64_t a2, unsigned __int8 a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a3 <= 2u)
  {
    if (a3)
    {
      if (a3 == 1)
      {
        if (a6 == 1)
        {
          if (a1 == a4 && a2 == a5)
          {
            return 1;
          }

          return sub_1004A6D34();
        }
      }

      else if (a6 == 2)
      {
        if (a1 == a4 && a2 == a5)
        {
          return 1;
        }

        return sub_1004A6D34();
      }
    }

    else if (!a6)
    {
      if (a1 == a4 && a2 == a5)
      {
        return 1;
      }

      return sub_1004A6D34();
    }
  }

  else if (a3 > 4u)
  {
    if (a3 == 5)
    {
      if (a6 == 5)
      {
        if (a1 == a4 && a2 == a5)
        {
          return 1;
        }

        return sub_1004A6D34();
      }
    }

    else if (a1 > 1)
    {
      if (a1 ^ 2 | a2)
      {
        if (a6 == 6 && a4 == 3 && !a5)
        {
          return 1;
        }
      }

      else if (a6 == 6 && a4 == 2 && !a5)
      {
        return 1;
      }
    }

    else if (a1 | a2)
    {
      if (a6 == 6 && a4 == 1 && !a5)
      {
        return 1;
      }
    }

    else if (a6 == 6 && !(a5 | a4))
    {
      return 1;
    }
  }

  else if (a3 == 3)
  {
    if (a6 == 3)
    {
      if (a1 == a4 && a2 == a5)
      {
        return 1;
      }

      return sub_1004A6D34();
    }
  }

  else if (a6 == 4)
  {
    if (a1 == a4 && a2 == a5)
    {
      return 1;
    }

    return sub_1004A6D34();
  }

  return 0;
}

BOOL sub_1001F5270(uint64_t *a1, uint64_t *a2)
{
  v4 = *(a1 + 16);
  v5 = *(a2 + 16);
  if (v4 == 255)
  {
    if (v5 != 255)
    {
      return 0;
    }

    goto LABEL_3;
  }

  if (v5 == 255)
  {
    return 0;
  }

  v9 = *a1;
  v10 = *a2;
  v11 = a2[1];
  if (!v4)
  {
    if (*(a2 + 16))
    {
      return 0;
    }

LABEL_16:
    if ((v9 != v10 || a1[1] != v11) && (sub_1004A6D34() & 1) == 0)
    {
      return 0;
    }

LABEL_3:
    if (sub_1001CE964(a1[3], a2[3]))
    {
      v6 = a1[4];
      v7 = a2[4];
      if (v6)
      {
        if (!v7 || (sub_1000FFC98(v6, v7) & 1) == 0)
        {
          return 0;
        }

LABEL_24:
        if (sub_1000FFC98(a1[5], a2[5]))
        {
          return *(a1 + 12) == *(a2 + 12);
        }

        return 0;
      }

      if (!v7)
      {
        goto LABEL_24;
      }
    }

    return 0;
  }

  if (v4 == 1)
  {
    if (v5 != 1)
    {
      return 0;
    }

    goto LABEL_16;
  }

  result = 0;
  if (v5 == 2 && !(v11 | v10))
  {
    goto LABEL_3;
  }

  return result;
}

uint64_t sub_1001F5368@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, int a7@<W6>, uint64_t a8@<X7>, void *a9@<X8>)
{
  v10 = v9;
  v45 = a7;
  v42 = a1;
  v43 = a2;
  v44 = a9;
  v16 = sub_1004A54D4();
  v49 = *(v16 - 8);
  v17 = *(v49 + 64);
  __chkstk_darwin(v16);
  v19 = &v40 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_10000C9C0(&qword_1005D3648, &unk_1004DD4F0);
  v20 = *(*(v47 - 8) + 64);
  __chkstk_darwin(v47);
  v22 = &v40 - v21;
  v23 = *(a5 + 16);
  if (v23)
  {
    v24 = (a5 + 48);
    while (*v24 != 1)
    {
      v24 += 24;
      if (!--v23)
      {
        goto LABEL_5;
      }
    }

    v25 = *(v24 - 1);
    v41 = *(v24 - 2);
    v48 = v25;
  }

  else
  {
LABEL_5:
    v41 = 0;
    v48 = 0xE000000000000000;
  }

  v26 = sub_1001F2F30(a3, a4);
  v27 = sub_1001F24F0(v26, sub_1001B429C);

  v28 = sub_1004A5C64();
  v28[2] = 16;
  v28[4] = 0;
  v28[5] = 0;
  v50 = a8;

  sub_10015BDC0(v28);
  v46 = v50;
  v50 = a6;

  sub_10015BDC0(v29);
  v30 = sub_1001E194C(v50);
  v32 = v31;

  sub_1001CFC28();
  sub_1004A5434();
  sub_100014CEC(v30, v32);
  sub_1001F4A18(v30, v32);
  sub_100014D40(v30, v32);
  sub_1004A5424();
  sub_100014D40(v30, v32);
  (*(v49 + 8))(v19, v16);
  *&v22[*(v47 + 36)] = 8;
  v33 = sub_1001B3D68(v22);
  sub_100025F40(v22, &qword_1005D3648, &unk_1004DD4F0);
  v34 = sub_1001F27D8(v27, v33);
  if (v10)
  {
  }

  else
  {
    v36 = v34;

    v37 = v44;
    v38 = v41;
    *v44 = v42;
    v37[1] = result;
    v39 = v48;
    v37[2] = v38;
    v37[3] = v39;
    v37[4] = v46;
    v37[5] = v36;
    *(v37 + 12) = v45;
  }

  return result;
}

uint64_t sub_1001F56C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, int a7@<W6>, uint64_t a8@<X8>)
{
  v15 = sub_1001F2F30(a3, a4);
  v16 = sub_1001F24F0(v15, sub_1001B429C);

  v17 = sub_1001F27D8(v16, a6);

  if (!v8)
  {
    v19 = *(a5 + 16);
    if (v19)
    {
      v20 = (a5 + 48);
      while (*v20 != 1)
      {
        v20 += 24;
        if (!--v19)
        {
          goto LABEL_6;
        }
      }

      v21 = *(v20 - 2);
      v22 = *(v20 - 1);
      sub_1001F7260(v21, v22, 1u);
    }

    else
    {
LABEL_6:
      v21 = 0;
      v22 = 0xE000000000000000;
    }

    *a8 = a1;
    *(a8 + 8) = a2;
    *(a8 + 16) = v21;
    *(a8 + 24) = v22;
    *(a8 + 32) = v17;
    *(a8 + 40) = v17;
    *(a8 + 48) = a7;
  }

  return result;
}

uint64_t sub_1001F57E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, void (*a6)(unint64_t, char *, uint64_t)@<X5>, char *a7@<X6>, int a8@<W7>, uint64_t a9@<X8>, char a10)
{
  v127 = a7;
  v117 = a6;
  v17 = sub_1004A5474();
  v18 = *(v17 - 8);
  v123 = v17;
  v124 = v18;
  v19 = *(v18 + 64);
  __chkstk_darwin(v17);
  v119 = &v95 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v121 = sub_10000C9C0(&qword_1005D4018, &qword_1004DFEA0);
  v21 = *(v121 - 8);
  v22 = *(v21 + 64);
  __chkstk_darwin(v121);
  v115 = &v95 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v122 = &v95 - v25;
  __chkstk_darwin(v26);
  v120 = &v95 - v27;
  __chkstk_darwin(v28);
  v118 = &v95 - v29;
  __chkstk_darwin(v30);
  v125 = &v95 - v31;
  v32 = sub_1004A44E4();
  v33 = *(*(v32 - 8) + 64);
  __chkstk_darwin(v32);
  v35 = &v95 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v36);
  if ((a8 & 0x80000) != 0)
  {
    v50 = sub_1004A5C64();
    *(v50 + 16) = 8;
    *(v50 + 32) = 0;
    CCRandomGenerateBytes((v50 + 32), 8uLL);
    v51 = v126;
    sub_1001F5368(a1, a2, a3, a4, a5, v127, a8, v50, v130);

    if (v51)
    {
      return result;
    }

    v53 = v131;
    v55 = v130[4];
    v54 = v130[5];
    v56 = v130[2];
    v57 = v130[3];
    v58 = v130[0];
    v59 = v130[1];
    goto LABEL_20;
  }

  v113 = a3;
  v114 = a4;
  v116 = a2;
  v112 = a8;
  if (a10)
  {
    v40 = v39;
    v110 = v37;
    v111 = v21;
    v109 = &v95 - v38;
    sub_1004A44D4();
    v41 = sub_1004A5C64();
    *(v41 + 16) = 8;
    v42 = v41;
    *(v41 + 32) = 0;
    CCRandomGenerateBytes((v41 + 32), 8uLL);
    v43 = *(a5 + 16);
    if (v43)
    {
      v44 = (a5 + 48);
      v45 = v121;
      v46 = v114;
      v47 = v113;
      while (*v44 != 1)
      {
        v44 += 24;
        if (!--v43)
        {
          v48 = 0;
          v49 = 0xE000000000000000;
          goto LABEL_14;
        }
      }

      v62 = *(v44 - 2);
      v61 = *(v44 - 1);
      v63 = v114;
      v64 = v113;

      v48 = v62;
      v47 = v64;
      v46 = v63;
    }

    else
    {
      v48 = 0;
      v49 = 0xE000000000000000;
      v45 = v121;
      v46 = v114;
      v47 = v113;
    }

LABEL_14:
    v108 = a1;
    v107 = v48;
    v106 = v49;
    sub_1001F2D04(a1, v116, v47, v46, v48, v49);
    v65 = v110;
    (*(v40 + 16))(v35, v109, v110);
    sub_1004A44A4();
    v67 = round((v66 + 1.16444736e10) * 10000000.0);
    v68 = *(v40 + 8);
    v105 = v40 + 8;
    result = v68(v35, v65);
    if ((*&v67 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v67 > -1.0)
    {
      if (v67 < 1.84467441e19)
      {
        v96 = v68;
        v97 = a9;
        v104 = v42;
        v69 = sub_1001F3058(v67, v42, v117);
        v128 = v127;
        swift_bridgeObjectRetain_n();

        sub_10015BDC0(v70);
        v71 = sub_1001E194C(v128);
        v73 = v72;

        v128 = v71;
        v129 = v73;
        v74 = v111;
        v75 = *(v111 + 16);
        v76 = v120;
        v121 = v111 + 16;
        v117 = v75;
        v75(v120, v125, v45);
        v77 = sub_10000DF44(&qword_1005D4030, &qword_1005D4018, &qword_1004DFEA0);
        v78 = v119;
        v103 = v77;
        sub_1004A5464();
        v79 = sub_1004A54D4();
        v80 = sub_1001CFC28();
        v81 = sub_1001CFC80();
        v82 = v118;
        v102 = v79;
        v101 = v80;
        v100 = v81;
        sub_1004A5484();
        v83 = v124 + 8;
        v99 = *(v124 + 8);
        v99(v78, v123);
        sub_100014D40(v128, v129);
        v84 = *(v69 + 16);
        v98 = sub_10000DF44(&qword_1005D4B40, &qword_1005D4018, &qword_1004DFEA0);
        result = sub_1004A5AE4();
        if (!__OFADD__(v84, result))
        {
          v128 = sub_10015BF20(0, (v84 + result) & ~((v84 + result) >> 63), 0, _swiftEmptyArrayStorage);
          v117(v76, v82, v45);
          sub_1002155C8(v76);
          sub_10015BDC0(v69);
          v124 = v83;
          v85 = *(v74 + 8);
          v85(v82, v45);
          v111 = v74 + 8;
          v118 = v85;
          v85(v125, v45);
          v125 = v128;
          v86 = v122;
          v87 = v78;
          v59 = v116;
          sub_1001F2D04(v108, v116, v113, v114, v107, v106);
          v128 = v127;
          v88 = v104;
          swift_bridgeObjectRetain_n();
          sub_10015BDC0(v88);
          v89 = sub_1001E194C(v128);
          v91 = v90;

          v128 = v89;
          v129 = v91;
          v117(v76, v86, v45);
          sub_1004A5464();
          v92 = v115;
          sub_1004A5484();
          v99(v87, v123);
          sub_100014D40(v128, v129);
          v93 = *(v88 + 16);
          result = sub_1004A5AE4();
          if (!__OFADD__(v93, result))
          {
            v128 = sub_10015BF20(0, (v93 + result) & ~((v93 + result) >> 63), 0, _swiftEmptyArrayStorage);
            v117(v76, v92, v45);
            sub_1002155C8(v76);
            sub_10015BDC0(v88);
            v94 = v118;
            (v118)(v92, v45);
            v94(v122, v45);
            v55 = v128;

            v96(v109, v110);

            v54 = v125;
            a9 = v97;
            v53 = v112;
            v58 = v108;
            v56 = v107;
            v57 = v106;
            goto LABEL_20;
          }

LABEL_26:
          __break(1u);
          return result;
        }

LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    __break(1u);
    goto LABEL_24;
  }

  v60 = v126;
  result = sub_1001F56C4(a1, v116, v113, v114, a5, v127, v112, v132);
  if (v60)
  {
    return result;
  }

  v53 = v133;
  v55 = v132[4];
  v54 = v132[5];
  v56 = v132[2];
  v57 = v132[3];
  v58 = v132[0];
  v59 = v132[1];
LABEL_20:
  *a9 = v58;
  *(a9 + 8) = v59;
  *(a9 + 16) = v56;
  *(a9 + 24) = v57;
  *(a9 + 32) = v55;
  *(a9 + 40) = v54;
  *(a9 + 48) = v53;
  return result;
}

uint64_t sub_1001F6218(unsigned __int8 *a1, Swift::Int a2)
{
  v2 = a2;
  sub_1004A5874(a2);
  if (!a1)
  {
    return 0;
  }

  result = 0;
  v5 = 0xE000000000000000;
  if (v2)
  {
    while (*a1 - 127 >= 0xFFFFFFA1)
    {
      ++a1;
      v7 = result;
      v8 = v5;
      sub_1004A58C4();
      result = v7;
      v5 = v8;
      if (!--v2)
      {
        return result;
      }
    }

    sub_1001F6EE0();
    swift_allocError();
    *v6 = 5;
    *(v6 + 8) = 2;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1001F62F0(uint64_t a1, Swift::Int a2)
{
  v14 = 0;
  v15 = 0xE000000000000000;
  sub_1004A5874(a2);
  v12 = 0;
  v13 = 0;
  if (a1)
  {
    v4 = a1 + 2 * a2;
  }

  else
  {
    v4 = 0;
  }

  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = v4;
  sub_10000C9C0(&qword_1005D4B00, &qword_1004E39B8);
  v6 = swift_allocObject();
  *(v6 + 16) = sub_1001F6FEC;
  *(v6 + 24) = v5;
  v11 = v6;

  v7 = v14;
  while (1)
  {
    v8 = sub_1001F3630(&v11);
    if ((v8 & 0x100000000) != 0)
    {
      break;
    }

    sub_1004A58C4();
  }

  if (v8)
  {

    sub_1001F6EE0();
    swift_allocError();
    *v9 = 4;
    *(v9 + 8) = 2;
    swift_willThrow();
  }

  return v7;
}

uint64_t sub_1001F6454@<X0>(uint64_t result@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = result;
  v6 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v6 != 2)
    {
      v11 = 0;
      goto LABEL_21;
    }

    v8 = *(result + 16);
    v7 = *(result + 24);
    v9 = __OFSUB__(v7, v8);
    v10 = v7 - v8;
    if (!v9)
    {
      if (v10 >= 32)
      {
        goto LABEL_14;
      }

      goto LABEL_8;
    }

    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (v6)
  {
    if (!__OFSUB__(HIDWORD(result), result))
    {
      if (HIDWORD(result) - result >= 32)
      {
        goto LABEL_14;
      }

LABEL_8:
      if (v6 == 2)
      {
        v19 = *(result + 16);
        v18 = *(result + 24);
        v11 = v18 - v19;
        if (!__OFSUB__(v18, v19))
        {
          goto LABEL_21;
        }

        __break(1u);
      }

      else if (v6 == 1)
      {
        if (!__OFSUB__(HIDWORD(result), result))
        {
          v11 = HIDWORD(result) - result;
LABEL_21:
          sub_1001F6EE0();
          swift_allocError();
          *v20 = v11;
          *(v20 + 8) = 0;
          swift_willThrow();
          return sub_100014D40(v5, a2);
        }

LABEL_25:
        __break(1u);
        return result;
      }

      v11 = BYTE6(a2);
      goto LABEL_21;
    }

    goto LABEL_24;
  }

  if (BYTE6(a2) < 0x20uLL)
  {
    goto LABEL_8;
  }

LABEL_14:
  sub_1001F4B98(result, a2, &v21);
  result = sub_100014D40(v5, a2);
  if (!v3)
  {
    v13 = v22;
    v14 = v23;
    v15 = v24;
    v16 = v25;
    v17 = v26;
    *a3 = v21;
    *(a3 + 8) = v13;
    *(a3 + 24) = v14;
    *(a3 + 32) = v15;
    *(a3 + 40) = v16;
    *(a3 + 44) = v17;
  }

  return result;
}

uint64_t sub_1001F65BC(uint64_t result)
{
  if (result >= 0xAu)
  {
    return 10;
  }

  else
  {
    return result;
  }
}

uint64_t sub_1001F65D0(uint64_t result)
{
  v2 = *result;
  v3 = *(result + 16);
  v4 = *(result + 24);
  v5 = v4 - v3;
  v6 = v3 == 0;
  if (v3)
  {
    v7 = v4 - v3;
  }

  else
  {
    v7 = 0;
  }

  if ((v2 & 0x8000000000000000) == 0 && v7 >= v2)
  {
    v8 = result;
    v9 = _swiftEmptyArrayStorage;
    while (1)
    {
      v10 = v8;
      v11 = v8[1];
      if ((v11 & 0x8000000000000000) != 0 || v7 < v11)
      {
        goto LABEL_120;
      }

      if ((v11 - v2) < 4)
      {

        sub_1001F6F88();
        goto LABEL_115;
      }

      v63 = v9;
      v12 = sub_1001F1824(0, v2, v11, v3, v4);
      if (v1)
      {

        return v9;
      }

      v13 = v12;
      result = sub_1001F1824(2, v2, v11, v3, v4);
      if (!(v13 | result))
      {
        return v63;
      }

      if (v6)
      {
        if (v2)
        {
          goto LABEL_135;
        }

        v14 = 0;
      }

      else
      {
        v14 = v5;
        if (v5 < v2)
        {
          goto LABEL_134;
        }
      }

      if (v14 < v11)
      {
        goto LABEL_121;
      }

      v15 = v6;
      v16 = v2 + 4;
      if (__OFADD__(v2, 4))
      {
        goto LABEL_122;
      }

      if ((v16 & 0x8000000000000000) != 0 || v7 < v16)
      {
        goto LABEL_123;
      }

      if (v11 < v16)
      {
        goto LABEL_124;
      }

      if (v16 < v2)
      {
        goto LABEL_125;
      }

      *v10 = v16;
      v10[1] = v11;
      v10[2] = v3;
      v10[3] = v4;
      if (v15)
      {
        goto LABEL_136;
      }

      if (v5 < v16)
      {
        goto LABEL_126;
      }

      if (v5 < v11)
      {
        goto LABEL_127;
      }

      if ((v11 - v16) < result)
      {
        v9 = v63;

        sub_1001F6F34();
LABEL_115:
        swift_allocError();
        swift_willThrow();
        return v9;
      }

      v17 = v16 + result;
      if (__OFADD__(v16, result))
      {
        goto LABEL_128;
      }

      if ((v17 & 0x8000000000000000) != 0 || v5 < v17)
      {
        goto LABEL_129;
      }

      v18 = result;
      if (v17 < v16)
      {
        goto LABEL_130;
      }

      if (v11 < v17)
      {
        goto LABEL_131;
      }

      if (!result)
      {
        v17 = v16;
      }

      if (v5 < v17)
      {
        goto LABEL_132;
      }

      if (v11 < v17)
      {
        goto LABEL_119;
      }

      if (v17 < v16)
      {
        goto LABEL_133;
      }

      v8 = v10;
      *v10 = v17;
      v10[2] = v3;
      v10[3] = v4;
      result = sub_1001F65BC(v13);
      if (result > 4u)
      {
        break;
      }

      v1 = 0;
      v9 = v63;
      if (result <= 1u)
      {
        if (result)
        {
          if (v18)
          {
            goto LABEL_116;
          }

          v34 = sub_1001F62F0(v3 + v16, v18 >> 1);
          v36 = v35;
          result = swift_isUniquelyReferenced_nonNull_native();
          if ((result & 1) == 0)
          {
            result = sub_1001EC670(0, *(v63 + 2) + 1, 1, v63);
            v9 = result;
          }

          v38 = *(v9 + 2);
          v37 = *(v9 + 3);
          if (v38 >= v37 >> 1)
          {
            result = sub_1001EC670((v37 > 1), v38 + 1, 1, v9);
            v9 = result;
          }

          *(v9 + 2) = v38 + 1;
          v39 = &v9[24 * v38];
          *(v39 + 4) = v34;
          *(v39 + 5) = v36;
          v39[48] = 0;
        }
      }

      else
      {
        if (result == 2)
        {
          if (v18)
          {
            goto LABEL_116;
          }

          v40 = sub_1001F62F0(v3 + v16, v18 >> 1);
          v42 = v41;
          result = swift_isUniquelyReferenced_nonNull_native();
          if ((result & 1) == 0)
          {
            result = sub_1001EC670(0, *(v63 + 2) + 1, 1, v63);
            v9 = result;
          }

          v44 = *(v9 + 2);
          v43 = *(v9 + 3);
          if (v44 >= v43 >> 1)
          {
            result = sub_1001EC670((v43 > 1), v44 + 1, 1, v9);
            v9 = result;
          }

          *(v9 + 2) = v44 + 1;
          v21 = &v9[24 * v44];
          *(v21 + 4) = v40;
          *(v21 + 5) = v42;
          v33 = 1;
          goto LABEL_104;
        }

        if (result != 3)
        {
          if (v18)
          {
LABEL_116:
            sub_1001F6EE0();
            swift_allocError();
            *v62 = v18;
            *(v62 + 8) = 1;
            swift_willThrow();

            return v9;
          }

          v53 = sub_1001F62F0(v3 + v16, v18 >> 1);
          v55 = v54;
          result = swift_isUniquelyReferenced_nonNull_native();
          if ((result & 1) == 0)
          {
            result = sub_1001EC670(0, *(v63 + 2) + 1, 1, v63);
            v9 = result;
          }

          v57 = *(v9 + 2);
          v56 = *(v9 + 3);
          if (v57 >= v56 >> 1)
          {
            result = sub_1001EC670((v56 > 1), v57 + 1, 1, v9);
            v9 = result;
          }

          *(v9 + 2) = v57 + 1;
          v21 = &v9[24 * v57];
          *(v21 + 4) = v53;
          *(v21 + 5) = v55;
          v33 = 3;
          goto LABEL_104;
        }

        if (v18)
        {
          goto LABEL_116;
        }

        v22 = sub_1001F62F0(v3 + v16, v18 >> 1);
        v24 = v23;
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_1001EC670(0, *(v63 + 2) + 1, 1, v63);
          v9 = result;
        }

        v26 = *(v9 + 2);
        v25 = *(v9 + 3);
        if (v26 >= v25 >> 1)
        {
          result = sub_1001EC670((v25 > 1), v26 + 1, 1, v9);
          v9 = result;
        }

        *(v9 + 2) = v26 + 1;
        v27 = &v9[24 * v26];
        *(v27 + 4) = v22;
        *(v27 + 5) = v24;
        v27[48] = 2;
      }

LABEL_105:
      v2 = *v8;
      v3 = v8[2];
      v4 = v8[3];
      v5 = v4 - v3;
      v6 = v3 == 0;
      if (v3)
      {
        v7 = v4 - v3;
      }

      else
      {
        v7 = 0;
      }

      if (v2 < 0 || v7 < v2)
      {
        goto LABEL_118;
      }
    }

    v1 = 0;
    v9 = v63;
    if (result > 7u)
    {
      if (result == 8)
      {
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_1001EC670(0, *(v63 + 2) + 1, 1, v63);
          v9 = result;
        }

        v51 = *(v9 + 2);
        v50 = *(v9 + 3);
        v1 = 0;
        if (v51 >= v50 >> 1)
        {
          result = sub_1001EC670((v50 > 1), v51 + 1, 1, v9);
          v1 = 0;
          v9 = result;
        }

        *(v9 + 2) = v51 + 1;
        v21 = &v9[24 * v51];
        v52 = xmmword_1004E3730;
      }

      else
      {
        if (result == 9)
        {
          if (v18)
          {
            goto LABEL_116;
          }

          v28 = sub_1001F62F0(v3 + v16, v18 >> 1);
          v30 = v29;
          result = swift_isUniquelyReferenced_nonNull_native();
          if ((result & 1) == 0)
          {
            result = sub_1001EC670(0, *(v63 + 2) + 1, 1, v63);
            v9 = result;
          }

          v32 = *(v9 + 2);
          v31 = *(v9 + 3);
          if (v32 >= v31 >> 1)
          {
            result = sub_1001EC670((v31 > 1), v32 + 1, 1, v9);
            v9 = result;
          }

          *(v9 + 2) = v32 + 1;
          v21 = &v9[24 * v32];
          *(v21 + 4) = v28;
          *(v21 + 5) = v30;
          v33 = 5;
          goto LABEL_104;
        }

        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_1001EC670(0, *(v63 + 2) + 1, 1, v63);
          v9 = result;
        }

        v61 = *(v9 + 2);
        v60 = *(v9 + 3);
        v1 = 0;
        if (v61 >= v60 >> 1)
        {
          result = sub_1001EC670((v60 > 1), v61 + 1, 1, v9);
          v1 = 0;
          v9 = result;
        }

        *(v9 + 2) = v61 + 1;
        v21 = &v9[24 * v61];
        v52 = xmmword_1004E3740;
      }
    }

    else
    {
      if (result == 5)
      {
        if (v18)
        {
          goto LABEL_116;
        }

        v45 = sub_1001F62F0(v3 + v16, v18 >> 1);
        v47 = v46;
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_1001EC670(0, *(v63 + 2) + 1, 1, v63);
          v9 = result;
        }

        v49 = *(v9 + 2);
        v48 = *(v9 + 3);
        if (v49 >= v48 >> 1)
        {
          result = sub_1001EC670((v48 > 1), v49 + 1, 1, v9);
          v9 = result;
        }

        *(v9 + 2) = v49 + 1;
        v21 = &v9[24 * v49];
        *(v21 + 4) = v45;
        *(v21 + 5) = v47;
        v33 = 4;
        goto LABEL_104;
      }

      if (result == 6)
      {
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_1001EC670(0, *(v63 + 2) + 1, 1, v63);
          v9 = result;
        }

        v20 = *(v9 + 2);
        v19 = *(v9 + 3);
        v1 = 0;
        if (v20 >= v19 >> 1)
        {
          result = sub_1001EC670((v19 > 1), v20 + 1, 1, v9);
          v1 = 0;
          v9 = result;
        }

        *(v9 + 2) = v20 + 1;
        v21 = &v9[24 * v20];
        *(v21 + 4) = 0;
        *(v21 + 5) = 0;
        goto LABEL_103;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_1001EC670(0, *(v63 + 2) + 1, 1, v63);
        v9 = result;
      }

      v59 = *(v9 + 2);
      v58 = *(v9 + 3);
      v1 = 0;
      if (v59 >= v58 >> 1)
      {
        result = sub_1001EC670((v58 > 1), v59 + 1, 1, v9);
        v1 = 0;
        v9 = result;
      }

      *(v9 + 2) = v59 + 1;
      v21 = &v9[24 * v59];
      v52 = xmmword_1004DB2C0;
    }

    *(v21 + 2) = v52;
LABEL_103:
    v33 = 6;
LABEL_104:
    v21[48] = v33;
    goto LABEL_105;
  }

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
LABEL_128:
  __break(1u);
LABEL_129:
  __break(1u);
LABEL_130:
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
LABEL_136:
  __break(1u);
  return result;
}

unint64_t sub_1001F6EE0()
{
  result = qword_1005D4AE8;
  if (!qword_1005D4AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D4AE8);
  }

  return result;
}

unint64_t sub_1001F6F34()
{
  result = qword_1005D4AF0;
  if (!qword_1005D4AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D4AF0);
  }

  return result;
}

unint64_t sub_1001F6F88()
{
  result = qword_1005D4AF8;
  if (!qword_1005D4AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D4AF8);
  }

  return result;
}

unint64_t sub_1001F6FF4()
{
  result = qword_1005D4B08;
  if (!qword_1005D4B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D4B08);
  }

  return result;
}

unint64_t sub_1001F7048()
{
  result = qword_1005D4B18;
  if (!qword_1005D4B18)
  {
    sub_10000DEFC(&qword_1005D4B10, &qword_1004E39C0);
    sub_1001F70CC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D4B18);
  }

  return result;
}

unint64_t sub_1001F70CC()
{
  result = qword_1005D4B20;
  if (!qword_1005D4B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D4B20);
  }

  return result;
}

unint64_t sub_1001F7120()
{
  result = qword_1005D4B28;
  if (!qword_1005D4B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D4B28);
  }

  return result;
}

uint64_t sub_1001F7184()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 51, 7);
}

uint64_t sub_1001F71C4()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

unint64_t sub_1001F720C()
{
  result = qword_1005D4B48;
  if (!qword_1005D4B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D4B48);
  }

  return result;
}

uint64_t sub_1001F7260(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 5u)
  {
  }

  return result;
}

uint64_t sub_1001F7278(uint64_t result)
{
  v1 = *(result + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = result;
  LODWORD(result) = 0;
  v3 = (v2 + 32);
  do
  {
    v5 = *v3++;
    v4 = v5;
    if ((v5 & ~result) == 0)
    {
      v4 = 0;
    }

    result = v4 | result;
    --v1;
  }

  while (v1);
  return result;
}

__n128 sub_1001F72C0(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1001F72DC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 52))
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

uint64_t sub_1001F7324(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 52) = 1;
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

    *(result + 52) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_1001F7384(uint64_t a1, uint64_t a2)
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

uint64_t sub_1001F73A8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 77))
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

uint64_t sub_1001F73F0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 76) = 0;
    *(result + 72) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 77) = 1;
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

    *(result + 77) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1001F7468(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

uint64_t sub_1001F7484(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 > 2)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1001F7498(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 52))
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

uint64_t sub_1001F74E0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 52) = 1;
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

    *(result + 52) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1001F7540(uint64_t a1)
{
  if ((*(a1 + 16) & 7u) <= 5)
  {
    return *(a1 + 16) & 7;
  }

  else
  {
    return (*a1 + 6);
  }
}

uint64_t sub_1001F755C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFA && *(a1 + 17))
  {
    return (*a1 + 250);
  }

  v3 = *(a1 + 16);
  if (v3 <= 6)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1001F75A4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF9)
  {
    *(result + 16) = 0;
    *result = a2 - 250;
    *(result + 8) = 0;
    if (a3 >= 0xFA)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFA)
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

uint64_t sub_1001F75E8(uint64_t result, unsigned int a2)
{
  if (a2 >= 6)
  {
    *result = a2 - 6;
    *(result + 8) = 0;
    LOBYTE(a2) = 6;
  }

  *(result + 16) = a2;
  return result;
}

__n128 sub_1001F7640(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 29) = *(a2 + 29);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1001F7654(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 45))
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

uint64_t sub_1001F769C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 44) = 0;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 45) = 1;
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

    *(result + 45) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1001F7720()
{
  result = qword_1005D4B50;
  if (!qword_1005D4B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D4B50);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ResponseParser.Mode(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 17))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 16);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for ResponseParser.Mode(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
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

uint64_t sub_1001F7840(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 16) = a2;
  return result;
}

int *sub_1001F7890(int *result, int *a2, int *a3, int *a4, int *a5)
{
  v5 = *a2;
  v6 = *a3;
  v8 = *a5;
  v72 = *a4;
  v7 = *a4;
  v73 = *result;
  HIDWORD(v10) = *a5 + *result + (*a3 & *a2 | *a4 & ~*a2);
  LODWORD(v10) = HIDWORD(v10);
  v9 = v10 >> 29;
  *result = v9;
  v11 = a5[1];
  HIDWORD(v10) = v11 + v7 + (v5 & v9 | v6 & ~v9);
  LODWORD(v10) = HIDWORD(v10);
  v12 = v10 >> 25;
  *a4 = v12;
  v13 = a5[2];
  HIDWORD(v10) = v13 + v6 + (v9 & v12 | v5 & ~v12);
  LODWORD(v10) = HIDWORD(v10);
  v14 = v10 >> 21;
  *a3 = v14;
  v15 = a5[3];
  HIDWORD(v10) = v15 + v5 + (v12 & v14 | v9 & ~v14);
  LODWORD(v10) = HIDWORD(v10);
  v16 = v10 >> 13;
  *a2 = v16;
  v17 = a5[4];
  HIDWORD(v10) = v17 + v9 + (v14 & v16 | v12 & ~v16);
  LODWORD(v10) = HIDWORD(v10);
  v18 = v10 >> 29;
  *result = v18;
  v19 = a5[5];
  HIDWORD(v10) = v12 + v19 + (v16 & v18 | v14 & ~v18);
  LODWORD(v10) = HIDWORD(v10);
  v20 = v10 >> 25;
  *a4 = v20;
  v21 = a5[6];
  HIDWORD(v10) = v14 + v21 + (v18 & v20 | v16 & ~v20);
  LODWORD(v10) = HIDWORD(v10);
  v22 = v10 >> 21;
  *a3 = v22;
  v23 = a5[7];
  HIDWORD(v10) = v16 + v23 + (v20 & v22 | v18 & ~v22);
  LODWORD(v10) = HIDWORD(v10);
  v24 = v10 >> 13;
  *a2 = v24;
  v25 = a5[8];
  HIDWORD(v10) = v18 + v25 + (v22 & v24 | v20 & ~v24);
  LODWORD(v10) = HIDWORD(v10);
  v26 = v10 >> 29;
  *result = v26;
  v27 = a5[9];
  HIDWORD(v10) = v20 + v27 + (v24 & v26 | v22 & ~v26);
  LODWORD(v10) = HIDWORD(v10);
  v28 = v10 >> 25;
  *a4 = v28;
  v29 = a5[10];
  HIDWORD(v10) = v22 + v29 + (v26 & v28 | v24 & ~v28);
  LODWORD(v10) = HIDWORD(v10);
  v30 = v10 >> 21;
  *a3 = v30;
  v31 = a5[11];
  HIDWORD(v10) = v24 + v31 + (v28 & v30 | v26 & ~v30);
  LODWORD(v10) = HIDWORD(v10);
  v32 = v10 >> 13;
  *a2 = v32;
  v33 = a5[12];
  HIDWORD(v10) = v26 + v33 + (v30 & v32 | v28 & ~v32);
  LODWORD(v10) = HIDWORD(v10);
  v34 = v10 >> 29;
  *result = v34;
  v35 = a5[13];
  HIDWORD(v10) = v28 + v35 + (v32 & v34 | v30 & ~v34);
  LODWORD(v10) = HIDWORD(v10);
  v36 = v10 >> 25;
  *a4 = v36;
  v37 = a5[14];
  HIDWORD(v10) = v30 + v37 + (v34 & v36 | v32 & ~v36);
  LODWORD(v10) = HIDWORD(v10);
  v38 = v10 >> 21;
  *a3 = v38;
  v39 = a5[15];
  HIDWORD(v10) = v32 + v39 + (v38 & v36 | v34 & ~v38);
  LODWORD(v10) = HIDWORD(v10);
  v40 = v10 >> 13;
  HIDWORD(v10) = v8 + v34 + 1518500249 + (v40 & (v38 | v36) | v38 & v36);
  LODWORD(v10) = HIDWORD(v10);
  v41 = v10 >> 29;
  HIDWORD(v10) = v17 + v36 + 1518500249 + (v41 & (v40 | v38) | v40 & v38);
  LODWORD(v10) = HIDWORD(v10);
  v42 = v10 >> 27;
  HIDWORD(v10) = v25 + v38 + 1518500249 + (v42 & (v41 | v40) | v41 & v40);
  LODWORD(v10) = HIDWORD(v10);
  v43 = v10 >> 23;
  HIDWORD(v10) = v33 + v40 + 1518500249 + (v43 & (v42 | v41) | v42 & v41);
  LODWORD(v10) = HIDWORD(v10);
  v44 = v10 >> 19;
  HIDWORD(v10) = v11 + v41 + 1518500249 + (v44 & (v43 | v42) | v43 & v42);
  LODWORD(v10) = HIDWORD(v10);
  v45 = v10 >> 29;
  HIDWORD(v10) = v19 + v42 + 1518500249 + (v45 & (v44 | v43) | v44 & v43);
  LODWORD(v10) = HIDWORD(v10);
  v46 = v10 >> 27;
  HIDWORD(v10) = v27 + v43 + 1518500249 + (v46 & (v45 | v44) | v45 & v44);
  LODWORD(v10) = HIDWORD(v10);
  v47 = v10 >> 23;
  HIDWORD(v10) = v35 + v44 + 1518500249 + (v47 & (v46 | v45) | v46 & v45);
  LODWORD(v10) = HIDWORD(v10);
  v48 = v10 >> 19;
  HIDWORD(v10) = v13 + v45 + 1518500249 + (v48 & (v47 | v46) | v47 & v46);
  LODWORD(v10) = HIDWORD(v10);
  v49 = v10 >> 29;
  HIDWORD(v10) = v21 + v46 + 1518500249 + (v49 & (v48 | v47) | v48 & v47);
  LODWORD(v10) = HIDWORD(v10);
  v50 = v10 >> 27;
  HIDWORD(v10) = v29 + v47 + 1518500249 + (v50 & (v49 | v48) | v49 & v48);
  LODWORD(v10) = HIDWORD(v10);
  v51 = v10 >> 23;
  HIDWORD(v10) = v37 + v48 + 1518500249 + (v51 & (v50 | v49) | v50 & v49);
  LODWORD(v10) = HIDWORD(v10);
  v52 = v10 >> 19;
  HIDWORD(v10) = v15 + v49 + 1518500249 + (v52 & (v51 | v50) | v51 & v50);
  LODWORD(v10) = HIDWORD(v10);
  v53 = v10 >> 29;
  HIDWORD(v10) = v23 + v50 + 1518500249 + (v53 & (v52 | v51) | v52 & v51);
  LODWORD(v10) = HIDWORD(v10);
  v54 = v10 >> 27;
  HIDWORD(v10) = v31 + v51 + 1518500249 + (v54 & (v53 | v52) | v53 & v52);
  LODWORD(v10) = HIDWORD(v10);
  v55 = v10 >> 23;
  HIDWORD(v10) = v39 + v52 + 1518500249 + (v55 & (v54 | v53) | v54 & v53);
  LODWORD(v10) = HIDWORD(v10);
  v56 = v10 >> 19;
  HIDWORD(v10) = v8 + v53 + 1859775393 + (v56 ^ v55 ^ v54);
  LODWORD(v10) = HIDWORD(v10);
  v57 = v10 >> 29;
  HIDWORD(v10) = v25 + v54 + 1859775393 + (v56 ^ v55 ^ v57);
  LODWORD(v10) = HIDWORD(v10);
  v58 = v10 >> 23;
  HIDWORD(v10) = v17 + v55 + 1859775393 + (v57 ^ v56 ^ v58);
  LODWORD(v10) = HIDWORD(v10);
  v59 = v10 >> 21;
  HIDWORD(v10) = v33 + v56 + 1859775393 + (v58 ^ v57 ^ v59);
  LODWORD(v10) = HIDWORD(v10);
  v60 = v10 >> 17;
  HIDWORD(v10) = v13 + v57 + 1859775393 + (v59 ^ v58 ^ v60);
  LODWORD(v10) = HIDWORD(v10);
  v61 = v10 >> 29;
  HIDWORD(v10) = v29 + v58 + 1859775393 + (v60 ^ v59 ^ v61);
  LODWORD(v10) = HIDWORD(v10);
  v62 = v10 >> 23;
  HIDWORD(v10) = v21 + v59 + 1859775393 + (v61 ^ v60 ^ v62);
  LODWORD(v10) = HIDWORD(v10);
  v63 = v10 >> 21;
  HIDWORD(v10) = v37 + v60 + 1859775393 + (v62 ^ v61 ^ v63);
  LODWORD(v10) = HIDWORD(v10);
  v64 = v10 >> 17;
  HIDWORD(v10) = v11 + v61 + 1859775393 + (v63 ^ v62 ^ v64);
  LODWORD(v10) = HIDWORD(v10);
  v65 = v10 >> 29;
  HIDWORD(v10) = v27 + v62 + 1859775393 + (v64 ^ v63 ^ v65);
  LODWORD(v10) = HIDWORD(v10);
  v66 = v10 >> 23;
  HIDWORD(v10) = v19 + v63 + 1859775393 + (v65 ^ v64 ^ v66);
  LODWORD(v10) = HIDWORD(v10);
  v67 = v10 >> 21;
  HIDWORD(v10) = v35 + v64 + 1859775393 + (v66 ^ v65 ^ v67);
  LODWORD(v10) = HIDWORD(v10);
  v68 = v10 >> 17;
  HIDWORD(v10) = v15 + v65 + 1859775393 + (v67 ^ v66 ^ v68);
  LODWORD(v10) = HIDWORD(v10);
  v69 = v10 >> 29;
  HIDWORD(v10) = v31 + v66 + 1859775393 + (v68 ^ v67 ^ v69);
  LODWORD(v10) = HIDWORD(v10);
  v70 = v10 >> 23;
  HIDWORD(v10) = v23 + v67 + 1859775393 + (v69 ^ v68 ^ v70);
  LODWORD(v10) = HIDWORD(v10);
  v71 = v10 >> 21;
  HIDWORD(v10) = v39 + v68 + 1859775393 + (v70 ^ v69 ^ v71);
  LODWORD(v10) = HIDWORD(v10);
  *result = v69 + v73;
  *a2 = (v10 >> 17) + v5;
  *a3 = v71 + v6;
  *a4 = v70 + v72;
  return result;
}

uint64_t sub_1001F7E90(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 sub_1001F7EA8(uint64_t a1, __int128 *a2)
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

uint64_t sub_1001F7EE4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 172))
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

uint64_t sub_1001F7F2C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 172) = 1;
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

    *(result + 172) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1001F7FA8()
{
  v2 = (v0 + 120);
  v3 = *(v0 + 120);
  v4 = *(v0 + 144);
  if ((v4 - 1) < 2)
  {
    return 0;
  }

  v6 = (v0 + 152);
  v7 = *(v0 + 152);
  if (v4)
  {
    v9 = *(v0 + 128);
    v10 = *(v0 + 168);
    v11 = *(v0 + 160);
    v12 = *(v0 + 136);
    *v2 = 0;
    *(v0 + 128) = 0;
    *(v0 + 136) = 0;
    *(v0 + 144) = 2;
    *v6 = 0;
    *(v0 + 160) = 0;
    *(v0 + 168) = 0;
    sub_1001F57E4(*(v0 + 8), *(v0 + 16), *(v0 + 24), *(v0 + 32), v4, v7, v11, v10, &v16, *v0);
    sub_100191644(v3, v9, v12);

    if (v1)
    {
    }

    else
    {

      v14[0] = v18;
      v14[1] = v17;
      v14[2] = v16;
      *v15 = 0;
      *&v15[8] = 0xE000000000000000;
      *&v15[16] = 0;
      *&v15[24] = v19 & 0x80201;
      v15[28] = 0;
      v27 = v16;
      v28[0] = *v15;
      v25 = v18;
      v26 = v17;
      *(v28 + 13) = *&v15[13];

      v13 = sub_1001F1DEC();
      sub_100191670(v14);
      sub_1001916C4(&v16);
      return v13;
    }
  }

  else
  {
    *v2 = 0;
    *(v0 + 128) = 0;
    *(v0 + 136) = 0;
    *(v0 + 144) = 1;
    *v6 = 0;
    *(v0 + 160) = 0;
    *(v0 + 168) = 0;
    v8 = *v0;
    v20 = 0;
    v21 = 0xE000000000000000;
    v22 = 0;
    v23 = 0xE000000000000000;
    v24 = (v8 & 1) == 0;
    return sub_1001F0F00();
  }
}

uint64_t sub_1001F8198(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v103 = a3;
  v7 = _s6LoggerVMa();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7);
  __chkstk_darwin(v9);
  __chkstk_darwin(v10);
  v12 = &v95 - v11;
  __chkstk_darwin(v13);
  __chkstk_darwin(v14);
  v16 = &v95 - v15;
  __chkstk_darwin(v17);
  v19 = &v95 - v18;
  __chkstk_darwin(v20);
  v22 = &v95 - v21;
  __chkstk_darwin(v23);
  v29 = &v95 - v28;
  v102 = v3;
  if (*(v3 + 144) == 1)
  {
    v98 = v26;
    v99 = v27;
    v100 = v25;
    v101 = v24;
    sub_100014CEC(a1, a2);
    result = sub_1001F6454(a1, a2, &v105);
    if (!v4)
    {
      v31 = v103;
      sub_100190B00(v103, v29);
      sub_100190B00(v31, v22);
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      sub_1001F8DF8(&v105, v104);
      v32 = sub_1004A4A54();
      v33 = sub_1004A5FF4();
      sub_1001F8E54(&v105);
      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        v96 = v32;
        v35 = v34;
        v97 = swift_slowAlloc();
        v104[0] = v97;
        *v35 = 68158722;
        *(v35 + 4) = 2;
        *(v35 + 8) = 256;
        v36 = v101;
        v37 = *(v101 + 20);
        v112 = v33;
        v38 = v22[v37];
        sub_100190CD4(v22);
        *(v35 + 10) = v38;
        *(v35 + 11) = 2082;
        v39 = *&v29[*(v36 + 20) + 4];
        sub_100190CD4(v29);
        v40 = ConnectionID.debugDescription.getter(v39);
        v42 = sub_10015BA6C(v40, v41, v104);

        *(v35 + 13) = v42;
        *(v35 + 21) = 2080;
        v44 = v107;
        v43 = v108;

        v45 = sub_10015BA6C(v44, v43, v104);

        *(v35 + 23) = v45;
        *(v35 + 31) = 2082;
        v113 = v105;
        v46 = sub_1004A5824();
        v48 = sub_10015BA6C(v46, v47, v104);

        *(v35 + 33) = v48;
        v49 = v96;
        _os_log_impl(&_mh_execute_header, v96, v112, "[%.*hhx-%{public}s] NTLM: Received challenge with target: '%s', flags: {%{public}s}", v35, 0x29u);
        swift_arrayDestroy();

        if (v111)
        {
          goto LABEL_12;
        }
      }

      else
      {
        sub_100190CD4(v22);

        sub_100190CD4(v29);
        if (v111)
        {
          goto LABEL_12;
        }
      }

      v50 = v110;
      v51 = v103;
      sub_100190B00(v103, v19);
      sub_100190B00(v51, v16);
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      v52 = sub_1004A4A54();
      v53 = sub_1004A5FF4();
      if (os_log_type_enabled(v52, v53))
      {
        v54 = swift_slowAlloc();
        v97 = swift_slowAlloc();
        v104[0] = v97;
        *v54 = 68158978;
        *(v54 + 4) = 2;
        *(v54 + 8) = 256;
        v55 = v101;
        v56 = *(v101 + 20);
        LODWORD(v96) = v53;
        v57 = v16[v56];
        sub_100190CD4(v16);
        *(v54 + 10) = v57;
        *(v54 + 11) = 2082;
        v58 = *&v19[*(v55 + 20) + 4];
        sub_100190CD4(v19);
        v59 = ConnectionID.debugDescription.getter(v58);
        v61 = sub_10015BA6C(v59, v60, v104);

        *(v54 + 13) = v61;
        *(v54 + 21) = 256;
        *(v54 + 23) = v50;
        *(v54 + 24) = 256;
        *(v54 + 26) = BYTE1(v50);
        *(v54 + 27) = 512;
        *(v54 + 29) = HIWORD(v50);
        _os_log_impl(&_mh_execute_header, v52, v96, "[%.*hhx-%{public}s] NTLM: Received challenge with OS version %hhu.%hhu.%hu", v54, 0x1Fu);
        sub_1000197E0(v97);
      }

      else
      {
        sub_100190CD4(v16);

        sub_100190CD4(v19);
      }

LABEL_12:
      v62 = v105;
      v63 = v99;
      if ((v105 & 0x200) == 0)
      {
        v64 = v100;
        if ((v105 & 0x80000) == 0)
        {
          goto LABEL_14;
        }

LABEL_20:
        v79 = v103;
        sub_100190B00(v103, v64);
        v80 = v98;
        sub_100190B00(v79, v98);
        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();
        v81 = sub_1004A4A54();
        v82 = sub_1004A6034();
        if (os_log_type_enabled(v81, v82))
        {
          v83 = swift_slowAlloc();
          v84 = swift_slowAlloc();
          LODWORD(v97) = v62;
          v85 = v84;
          v104[0] = v84;
          *v83 = 68158210;
          *(v83 + 4) = 2;
          *(v83 + 8) = 256;
          v86 = v101;
          v87 = *(v80 + *(v101 + 20));
          sub_100190CD4(v80);
          *(v83 + 10) = v87;
          *(v83 + 11) = 2082;
          v88 = *(v64 + *(v86 + 20) + 4);
          sub_100190CD4(v64);
          v89 = ConnectionID.debugDescription.getter(v88);
          v91 = sub_10015BA6C(v89, v90, v104);

          *(v83 + 13) = v91;
          _os_log_impl(&_mh_execute_header, v81, v82, "[%.*hhx-%{public}s] NTLM: NTLM2 Session Response flag set", v83, 0x15u);
          sub_1000197E0(v85);
          v62 = v97;

          v65 = v109;
          if (v109)
          {
            goto LABEL_15;
          }
        }

        else
        {
          sub_100190CD4(v80);

          sub_100190CD4(v64);
          v65 = v109;
          if (v109)
          {
            goto LABEL_15;
          }
        }

        goto LABEL_24;
      }

      v67 = v103;
      sub_100190B00(v103, v99);
      sub_100190B00(v67, v12);
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      v68 = sub_1004A4A54();
      v69 = sub_1004A5FF4();
      if (os_log_type_enabled(v68, v69))
      {
        v70 = swift_slowAlloc();
        v71 = swift_slowAlloc();
        LODWORD(v97) = v62;
        v72 = v71;
        v104[0] = v71;
        *v70 = 68158210;
        *(v70 + 4) = 2;
        *(v70 + 8) = 256;
        v73 = v101;
        v74 = v12[*(v101 + 20)];
        sub_100190CD4(v12);
        *(v70 + 10) = v74;
        *(v70 + 11) = 2082;
        v75 = *(v63 + *(v73 + 20) + 4);
        sub_100190CD4(v63);
        v76 = ConnectionID.debugDescription.getter(v75);
        v78 = sub_10015BA6C(v76, v77, v104);

        *(v70 + 13) = v78;
        _os_log_impl(&_mh_execute_header, v68, v69, "[%.*hhx-%{public}s] NTLM: NTLM Authentication flag set", v70, 0x15u);
        sub_1000197E0(v72);
        v62 = v97;

        v64 = v100;
        if ((v62 & 0x80000) != 0)
        {
          goto LABEL_20;
        }
      }

      else
      {
        sub_100190CD4(v12);

        sub_100190CD4(v63);
        v64 = v100;
        if ((v62 & 0x80000) != 0)
        {
          goto LABEL_20;
        }
      }

LABEL_14:
      v65 = v109;
      if (v109)
      {
LABEL_15:
        v66 = *(v65 + 16);
        v104[0] = 0;
        v104[1] = v66;
        v104[2] = v65 + 32;
        v104[3] = v65 + 32 + v66;

        v92 = sub_1001F65D0(v104);

LABEL_25:
        v93 = v106;

        result = sub_1001F8E54(&v105);
        v94 = v102;
        *(v102 + 120) = 0;
        *(v94 + 128) = 0;
        *(v94 + 136) = 255;
        *(v94 + 144) = v92;
        *(v94 + 152) = v65;
        *(v94 + 160) = v93;
        *(v94 + 168) = v62;
        return result;
      }

LABEL_24:
      v92 = _swiftEmptyArrayStorage;
      goto LABEL_25;
    }
  }

  else
  {
    sub_1001F8C00();
    swift_allocError();
    return swift_willThrow();
  }

  return result;
}

BOOL sub_1001F8A74(__int128 *a1, __int128 *a2)
{
  v2 = *(a1 + 3);
  v3 = *(a2 + 3);
  if (v2)
  {
    if (v2 == 1)
    {
      if (v3 != 1)
      {
        return 0;
      }
    }

    else
    {
      if (v2 != 2)
      {
        v5 = *a2;
        v6 = *(a2 + 2);
        v7 = *(a2 + 4);
        v8 = *(a2 + 5);
        v9 = *(a2 + 12);
        v10 = *(a1 + 12);
        v12 = *(a1 + 4);
        v11 = *(a1 + 5);
        v13 = *(a1 + 2);
        v15 = *a1;
        v16 = v13;
        v17 = v2;
        v18 = v12;
        v19 = v11;
        v20 = v10;
        if (v3 >= 3)
        {
          v21 = v5;
          v22 = v6;
          v23 = v3;
          v24 = v7;
          v25 = v8;
          v26 = v9;
          return sub_1001F5270(&v15, &v21);
        }

        return 0;
      }

      if (v3 != 2)
      {
        return 0;
      }
    }
  }

  else if (v3)
  {
    return 0;
  }

  return 1;
}

BOOL sub_1001F8B38(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[9];
  v13[8] = a1[8];
  v14[0] = v2;
  *(v14 + 12) = *(a1 + 156);
  v3 = a1[5];
  v13[4] = a1[4];
  v13[5] = v3;
  v4 = a1[7];
  v13[6] = a1[6];
  v13[7] = v4;
  v5 = a1[1];
  v13[0] = *a1;
  v13[1] = v5;
  v6 = a1[3];
  v13[2] = a1[2];
  v13[3] = v6;
  v7 = a2[9];
  v15[8] = a2[8];
  v16[0] = v7;
  *(v16 + 12) = *(a2 + 156);
  v8 = a2[5];
  v15[4] = a2[4];
  v15[5] = v8;
  v9 = a2[7];
  v15[6] = a2[6];
  v15[7] = v9;
  v10 = a2[1];
  v15[0] = *a2;
  v15[1] = v10;
  v11 = a2[3];
  v15[2] = a2[2];
  v15[3] = v11;
  return sub_1001F8C54(v13, v15);
}

unint64_t sub_1001F8C00()
{
  result = qword_1005D4B58;
  if (!qword_1005D4B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D4B58);
  }

  return result;
}

BOOL sub_1001F8C54(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v33 = v2;
  v34 = v3;
  v7 = *(a1 + 3);
  v8 = *(a1 + 4);
  v9 = *(a2 + 3);
  v10 = *(a2 + 4);
  v11 = *(a1 + 1) == *(a2 + 1) && *(a1 + 2) == *(a2 + 2);
  if (!v11 && (sub_1004A6D34() & 1) == 0)
  {
    return 0;
  }

  v12 = v7 == v9 && v8 == v10;
  if (!v12 && (sub_1004A6D34() & 1) == 0)
  {
    return 0;
  }

  v13 = *(a1 + 56);
  v14 = *(a1 + 88);
  v22[2] = *(a1 + 72);
  v22[3] = v14;
  v22[4] = *(a1 + 104);
  v22[0] = *(a1 + 40);
  v22[1] = v13;
  v15 = *(a2 + 56);
  v16 = *(a2 + 88);
  v21[2] = *(a2 + 72);
  v21[3] = v16;
  v21[4] = *(a2 + 104);
  v21[0] = *(a2 + 40);
  v21[1] = v15;
  if ((sub_1001EFF14(v22, v21) & 1) == 0)
  {
    return 0;
  }

  v17 = *(a1 + 18);
  v18 = *(a2 + 18);
  if (v17 == 2)
  {
    return v18 == 2;
  }

  if (v17 == 1)
  {
    return v18 == 1;
  }

  if (v17)
  {
    v23 = *(a1 + 120);
    v19 = *(a1 + 17);
    v26 = *(a1 + 152);
    v27 = *(a1 + 42);
    v24 = v19;
    v25 = v17;
    if (v18 >= 3)
    {
      v28 = *(a2 + 120);
      v20 = *(a2 + 17);
      v31 = *(a2 + 152);
      v32 = *(a2 + 42);
      v29 = v20;
      v30 = v18;
      if (sub_1001F5270(&v23, &v28))
      {
        return 1;
      }
    }
  }

  else if (!v18)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_1001F8EB8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 52))
  {
    return (*a1 + 2147483645);
  }

  v3 = *(a1 + 24);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 2;
  if (v4 >= 4)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1001F8F14(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFD)
  {
    *(result + 48) = 0;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 52) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 52) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2 + 2;
    }
  }

  return result;
}

double sub_1001F8F70(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    *(a1 + 40) = 0;
    result = 0.0;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *(a1 + 48) = 0;
    *a1 = a2 & 0x7FFFFFFF;
  }

  else if (a2)
  {
    *(a1 + 24) = (a2 - 1);
  }

  return result;
}

void sub_1001F8FB4(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v79 = _s6LoggerVMa();
  v6 = *(*(v79 - 8) + 64);
  __chkstk_darwin(v79);
  __chkstk_darwin(v7);
  __chkstk_darwin(v8);
  v10 = &v75 - v9;
  __chkstk_darwin(v11);
  v13 = &v75 - v12;
  __chkstk_darwin(v14);
  v16 = (&v75 - v15);
  __chkstk_darwin(v17);
  v20 = &v75 - v19;
  v21 = a2 >> 62;
  v81 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v21)
    {
      goto LABEL_8;
    }

    LODWORD(v22) = HIDWORD(a1) - a1;
    if (!__OFSUB__(HIDWORD(a1), a1))
    {
      v22 = v22;
      goto LABEL_7;
    }

    __break(1u);
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  if (v21 != 2)
  {
    goto LABEL_8;
  }

  v24 = *(a1 + 16);
  v23 = *(a1 + 24);
  v25 = __OFSUB__(v23, v24);
  v22 = v23 - v24;
  if (v25)
  {
    goto LABEL_47;
  }

LABEL_7:
  if (v22 > 499)
  {
    if (v21 > 1)
    {
      if (v21 != 2)
      {
LABEL_34:
        __chkstk_darwin(v18);
        *(&v75 - 2) = v60;
        sub_100172534(sub_1001FA114, (&v75 - 4), a1, a2);
        return;
      }

      v59 = *(a1 + 16);
      v58 = *(a1 + 24);
      v25 = __OFSUB__(v58, v59);
      v57 = v58 - v59;
      if (!v25)
      {
        goto LABEL_33;
      }

LABEL_49:
      __break(1u);
      goto LABEL_50;
    }

    LODWORD(v57) = HIDWORD(a1) - a1;
    if (!__OFSUB__(HIDWORD(a1), a1))
    {
      v57 = v57;
LABEL_33:
      if (v57 <= 4999)
      {
        goto LABEL_34;
      }

      sub_100190B00(a3, v13);
      sub_100190B00(a3, v10);
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      sub_100014CEC(a1, a2);
      sub_100014CEC(a1, a2);
      v20 = v10;
      v61 = sub_1004A4A54();
      v62 = sub_1004A6014();
      if (!os_log_type_enabled(v61, v62))
      {
        sub_100014D40(a1, a2);
        sub_100190CD4(v20);
        sub_100014D40(a1, a2);

        v74 = v13;
        goto LABEL_42;
      }

      v63 = v13;
      v64 = swift_slowAlloc();
      v65 = swift_slowAlloc();
      v66 = v79;
      v16 = v65;
      v82[0] = v65;
      *v64 = 68158466;
      *(v64 + 4) = 2;
      *(v64 + 8) = 256;
      v67 = v20[*(v66 + 20)];
      sub_100190CD4(v20);
      *(v64 + 10) = v67;
      *(v64 + 11) = 2082;
      v68 = *(v63 + *(v66 + 20) + 4);
      sub_100190CD4(v63);
      v69 = ConnectionID.debugDescription.getter(v68);
      v71 = sub_10015BA6C(v69, v70, v82);

      *(v64 + 13) = v71;
      *(v64 + 21) = 2048;
      if (v81 == 2)
      {
        v72 = *(a1 + 16);
        v36 = *(a1 + 24);
        sub_100014D40(a1, a2);
        v73 = v36 - v72;
        if (__OFSUB__(v36, v72))
        {
          __break(1u);
          goto LABEL_40;
        }

LABEL_45:
        *(v64 + 23) = v73;
        sub_100014D40(a1, a2);
        _os_log_impl(&_mh_execute_header, v61, v62, "[%.*hhx-%{public}s] XOAUTH2 error (%{iec-bytes}ld)", v64, 0x1Fu);
        sub_1000197E0(v16);

        return;
      }

      sub_100014D40(a1, a2);
      LODWORD(v73) = HIDWORD(a1) - a1;
      if (!__OFSUB__(HIDWORD(a1), a1))
      {
        v73 = v73;
        goto LABEL_45;
      }

LABEL_50:
      __break(1u);
      return;
    }

LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

LABEL_8:
  v77 = v10;
  v78 = v13;
  v26 = sub_1004A3F54();
  v27 = *(v26 + 48);
  v28 = *(v26 + 52);
  swift_allocObject();
  v29 = sub_1004A3F44();
  sub_1001FA130();
  v80 = v29;
  sub_1004A3F34();
  v31 = v82[0];
  v30 = v82[1];
  v33 = v82[2];
  v32 = v82[3];
  v35 = v82[4];
  v34 = v82[5];
  sub_100190B00(a3, v20);
  sub_100190B00(a3, v16);
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();

  v36 = sub_1004A4A54();
  v37 = sub_1004A6014();

  if (!os_log_type_enabled(v36, v37))
  {
LABEL_40:
    sub_100190CD4(v16);

    v74 = v20;
LABEL_42:
    sub_100190CD4(v74);
    return;
  }

  v38 = swift_slowAlloc();
  v76 = v31;
  v39 = v79;
  v78 = v35;
  v40 = v38;
  v81 = swift_slowAlloc();
  v82[0] = v81;
  *v40 = 68158978;
  *(v40 + 4) = 2;
  *(v40 + 8) = 256;
  v41 = *(v39 + 20);
  v77 = v33;
  v42 = *(v16 + v41);
  sub_100190CD4(v16);
  *(v40 + 10) = v42;
  *(v40 + 11) = 2082;
  v43 = v34;
  v44 = *&v20[*(v39 + 20) + 4];
  sub_100190CD4(v20);
  v45 = ConnectionID.debugDescription.getter(v44);
  v47 = sub_10015BA6C(v45, v46, v82);

  *(v40 + 13) = v47;
  *(v40 + 21) = 2082;
  if (v30)
  {
    v48 = v76;
  }

  else
  {
    v48 = 0;
  }

  if (v30)
  {
    v49 = v30;
  }

  else
  {
    v49 = 0xE000000000000000;
  }

  v50 = sub_10015BA6C(v48, v49, v82);

  *(v40 + 23) = v50;
  *(v40 + 31) = 2082;
  if (v32)
  {
    v51 = v77;
  }

  else
  {
    v51 = 0;
  }

  if (v32)
  {
    v52 = v32;
  }

  else
  {
    v52 = 0xE000000000000000;
  }

  v53 = sub_10015BA6C(v51, v52, v82);

  *(v40 + 33) = v53;
  *(v40 + 41) = 2082;

  if (v43)
  {
    v54 = v78;
  }

  else
  {
    v54 = 0;
  }

  if (v43)
  {
    v55 = v43;
  }

  else
  {
    v55 = 0xE000000000000000;
  }

  v56 = sub_10015BA6C(v54, v55, v82);

  *(v40 + 43) = v56;
  _os_log_impl(&_mh_execute_header, v36, v37, "[%.*hhx-%{public}s] XOAUTH2 error: status '%{public}s',  schemes '%{public}s',  scope '%{public}s'", v40, 0x33u);
  swift_arrayDestroy();
}

uint64_t sub_1001F983C(uint64_t *a1, uint64_t *a2)
{
  v3 = a1[1];
  v4 = a2[1];
  if (v3 >> 60 == 11)
  {
    return v4 >> 60 == 11;
  }

  if (v3 >> 60 == 15)
  {
    return v4 >> 60 == 15;
  }

  if (((v4 >> 60) | 4) == 0xF)
  {
    return 0;
  }

  return sub_10003A194(*a1, v3, *a2, v4);
}

BOOL sub_1001F98A0(uint64_t a1, __int128 *a2)
{
  v2 = *(a1 + 48);
  v12[2] = *(a1 + 32);
  v12[3] = v2;
  v3 = *(a1 + 64);
  v4 = *(a1 + 16);
  v12[0] = *a1;
  v12[1] = v4;
  v5 = *(a1 + 80);
  v6 = *(a1 + 88);
  v7 = a2[3];
  v13[2] = a2[2];
  v13[3] = v7;
  v13[4] = a2[4];
  v8 = *a2;
  v13[1] = a2[1];
  v12[4] = v3;
  v13[0] = v8;
  v10 = *(a2 + 10);
  v9 = *(a2 + 11);
  if ((sub_1001EFF14(v12, v13) & 1) == 0)
  {
    return 0;
  }

  if (v6 >> 60 == 11)
  {
    return v9 >> 60 == 11;
  }

  if (v6 >> 60 != 15)
  {
    return ((v9 >> 60) | 4) != 0xF && (sub_10003A194(v5, v6, v10, v9) & 1) != 0;
  }

  return v9 >> 60 == 15;
}

uint64_t sub_1001F997C()
{
  v2 = *(v0 + 88);
  if (v2 >> 60 == 11)
  {
    return 0;
  }

  if (v2 >> 60 == 15)
  {
    sub_10018D6F4();
    swift_allocError();
    *v3 = xmmword_1004DB2C0;
    *(v3 + 16) = 1;
    swift_willThrow();
  }

  else
  {
    v1 = *(v0 + 80);
    sub_100014CEC(v1, *(v0 + 88));
    sub_100191718(v1, v2);
    *(v0 + 80) = xmmword_1004D25F0;
  }

  return v1;
}

uint64_t sub_1001F9A40(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if (*(v3 + 88) >> 60 == 15)
  {
    sub_1001F8FB4(a1, a2, a3);
    result = sub_100191718(*(v3 + 80), *(v3 + 88));
    *(v3 + 80) = xmmword_1004DA570;
  }

  else
  {
    sub_10018D6F4();
    swift_allocError();
    *v5 = xmmword_1004DB2C0;
    *(v5 + 16) = 1;
    return swift_willThrow();
  }

  return result;
}

void sub_1001F9ACC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = _s6LoggerVMa();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v25 - v12;
  sub_100190B00(a3, &v25 - v12);
  sub_100190B00(a3, v10);
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  v14 = sub_1004A4A54();
  v15 = sub_1004A6014();
  if (!os_log_type_enabled(v14, v15))
  {
    sub_100190CD4(v10);

    sub_100190CD4(v13);
    return;
  }

  v25 = v3;
  v16 = swift_slowAlloc();
  v26 = a2;
  v17 = v16;
  v18 = swift_slowAlloc();
  v27 = v18;
  *v17 = 68158722;
  *(v17 + 4) = 2;
  *(v17 + 8) = 256;
  v19 = v10[*(v7 + 20)];
  sub_100190CD4(v10);
  *(v17 + 10) = v19;
  *(v17 + 11) = 2082;
  v20 = *&v13[*(v7 + 20) + 4];
  sub_100190CD4(v13);
  v21 = ConnectionID.debugDescription.getter(v20);
  v23 = sub_10015BA6C(v21, v22, &v27);

  *(v17 + 13) = v23;
  *(v17 + 21) = 1040;
  v24 = v26 - a1;
  if (!a1)
  {
    v24 = 0;
  }

  if (v24 < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (v24 <= 0x7FFFFFFF)
  {
    *(v17 + 23) = v24;
    *(v17 + 27) = 2098;
    if (a1)
    {
      *(v17 + 29) = a1;
      _os_log_impl(&_mh_execute_header, v14, v15, "[%.*hhx-%{public}s] XOAUTH2 error: %{public}.*P", v17, 0x25u);
      sub_1000197E0(v18);

      return;
    }

    goto LABEL_11;
  }

  __break(1u);
LABEL_11:
  __break(1u);
}

uint64_t sub_1001F9D2C()
{
  v1 = 0x73656D65686373;
  if (*v0 != 1)
  {
    v1 = 0x65706F6373;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x737574617473;
  }
}

uint64_t sub_1001F9D80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1001FA260(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1001F9DA8(uint64_t a1)
{
  v2 = sub_1001FA574();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001F9DE4(uint64_t a1)
{
  v2 = sub_1001FA574();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_1001F9E20@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1001FA370(a1, v6);
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

uint64_t sub_1001F9E64(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v28 = xmmword_1004DC1F0;
  v8 = sub_1001D9734(0x3D72657375, 0xE500000000000000);
  v10 = v9;
  sub_1004A4434();
  sub_100014D40(v8, v10);

  v11 = sub_1001D9734(a1, a2);
  v13 = v12;
  sub_1004A4434();
  sub_100014D40(v11, v13);
  v26 = sub_10000C9C0(&qword_1005D4B60, &qword_1004E49A8);
  v27 = sub_1001FA078();
  LOBYTE(v25[0]) = 1;
  v24 = *sub_10002587C(v25, v26);
  sub_1004A43D4();
  sub_1000197E0(v25);
  v14 = sub_1001D9734(0x6165423D68747561, 0xEC00000020726572);
  v16 = v15;
  sub_1004A4434();
  sub_100014D40(v14, v16);

  v17 = sub_1001D9734(a3, a4);
  v19 = v18;
  sub_1004A4434();
  sub_100014D40(v17, v19);
  v20 = sub_1001E194C(&off_1005A3890);
  v22 = v21;
  sub_1004A4434();
  sub_100014D40(v20, v22);
  return v28;
}

unint64_t sub_1001FA078()
{
  result = qword_1005D4B68;
  if (!qword_1005D4B68)
  {
    sub_10000DEFC(&qword_1005D4B60, &qword_1004E49A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D4B68);
  }

  return result;
}

uint64_t sub_1001FA0DC(uint64_t a1)
{
  v1 = *(a1 + 8) >> 60;
  if (((4 * v1) & 0xC) != 0)
  {
    return 16 - ((4 * v1) & 0xC | (v1 >> 2));
  }

  else
  {
    return 0;
  }
}

unint64_t sub_1001FA130()
{
  result = qword_1005D4B70;
  if (!qword_1005D4B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D4B70);
  }

  return result;
}

uint64_t sub_1001FA184(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 48))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_1001FA1E0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_1001FA260(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x737574617473 && a2 == 0xE600000000000000;
  if (v4 || (sub_1004A6D34() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x73656D65686373 && a2 == 0xE700000000000000 || (sub_1004A6D34() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x65706F6373 && a2 == 0xE500000000000000)
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

uint64_t sub_1001FA370@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_10000C9C0(&qword_1005D4B78, &qword_1004E5110);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v23 - v8;
  v10 = a1[4];
  sub_10002587C(a1, a1[3]);
  sub_1001FA574();
  sub_1004A6F84();
  if (v2)
  {
    return sub_1000197E0(a1);
  }

  v27 = 0;
  v11 = sub_1004A6B24();
  v13 = v12;
  v24 = v11;
  v26 = 1;
  v14 = sub_1004A6B24();
  v16 = v15;
  v23 = v14;
  v25 = 2;
  v17 = sub_1004A6B24();
  v18 = v9;
  v20 = v19;
  (*(v6 + 8))(v18, v5);
  result = sub_1000197E0(a1);
  v22 = v23;
  *a2 = v24;
  a2[1] = v13;
  a2[2] = v22;
  a2[3] = v16;
  a2[4] = v17;
  a2[5] = v20;
  return result;
}

unint64_t sub_1001FA574()
{
  result = qword_1005D4B80;
  if (!qword_1005D4B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D4B80);
  }

  return result;
}

unint64_t sub_1001FA5DC()
{
  result = qword_1005D4B88;
  if (!qword_1005D4B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D4B88);
  }

  return result;
}

unint64_t sub_1001FA634()
{
  result = qword_1005D4B90;
  if (!qword_1005D4B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D4B90);
  }

  return result;
}

unint64_t sub_1001FA68C()
{
  result = qword_1005D4B98;
  if (!qword_1005D4B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D4B98);
  }

  return result;
}

unint64_t sub_1001FA6E8()
{
  result = qword_1005D4BA0;
  if (!qword_1005D4BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D4BA0);
  }

  return result;
}

unint64_t sub_1001FA740()
{
  result = qword_1005D4BA8;
  if (!qword_1005D4BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D4BA8);
  }

  return result;
}

unint64_t sub_1001FA798()
{
  result = qword_1005D4BB0;
  if (!qword_1005D4BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D4BB0);
  }

  return result;
}

uint64_t sub_1001FA828()
{
  v0 = sub_10000C9C0(&qword_1005D4BC0, &unk_1004E53B0);
  v1 = v0 - 8;
  v2 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0);
  v4 = &v19 - v3;
  v5 = sub_1004A5194();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1004A51C4();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1004A51D4();
  sub_1004A51A4();
  v15 = *(v1 + 56);
  (*(v11 + 32))(v4, v14, v10);
  (*(v6 + 32))(&v4[v15], v9, v5);
  v16 = (*(v11 + 88))(v4, v10);
  if (v16 == enum case for NWPath.Status.satisfied(_:))
  {
    (*(v6 + 8))(&v4[v15], v5);
    return 0x6569667369746173;
  }

  else if (v16 == enum case for NWPath.Status.unsatisfied(_:))
  {
    v18 = (*(v6 + 88))(&v4[v15], v5);
    if (v18 == enum case for NWPath.UnsatisfiedReason.notAvailable(_:))
    {
      return 0x6C69617641746F6ELL;
    }

    else if (v18 == enum case for NWPath.UnsatisfiedReason.cellularDenied(_:))
    {
      return 0x72616C756C6C6563;
    }

    else if (v18 == enum case for NWPath.UnsatisfiedReason.wifiDenied(_:))
    {
      return 0x696E654469666977;
    }

    else if (v18 == enum case for NWPath.UnsatisfiedReason.localNetworkDenied(_:))
    {
      return 0xD000000000000012;
    }

    else if (v18 == enum case for NWPath.UnsatisfiedReason.vpnInactive(_:))
    {
      return 0x7463616E496E7076;
    }

    else
    {
      (*(v6 + 8))(&v4[v15], v5);
      return 0x6673697461736E75;
    }
  }

  else if (v16 == enum case for NWPath.Status.requiresConnection(_:))
  {
    (*(v6 + 8))(&v4[v15], v5);
    return 0xD000000000000012;
  }

  else
  {
    sub_100025F40(v4, &qword_1005D4BC0, &unk_1004E53B0);
    return 63;
  }
}

uint64_t sub_1001FAC30()
{
  v0 = sub_1004A4C14();
  v44 = *(v0 - 8);
  v1 = *(v44 + 64);
  __chkstk_darwin(v0);
  v3 = &v43 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v43 - v5;
  __chkstk_darwin(v7);
  v9 = &v43 - v8;
  __chkstk_darwin(v10);
  v12 = &v43 - v11;
  v13 = sub_10000C9C0(&qword_1005D4BB8, &qword_1004E53A8);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v16 = &v43 - v15;
  v17 = sub_1004A4C74();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin(v17);
  v21 = &v43 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1004A4C84();
  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {
    sub_100025F40(v16, &qword_1005D4BB8, &qword_1004E53A8);
    sub_1004A4C34();
    v22 = v44;
    (*(v44 + 16))(v3, v6, v0);
    v23 = (*(v22 + 88))(v3, v0);
    v24 = v0;
    if (v23 == enum case for NWInterface.InterfaceType.other(_:))
    {
      v25 = 0x726568746FLL;
      (*(v22 + 8))(v6, v0);
    }

    else if (v23 == enum case for NWInterface.InterfaceType.wifi(_:))
    {
      v25 = 1768319351;
      (*(v22 + 8))(v6, v0);
    }

    else if (v23 == enum case for NWInterface.InterfaceType.cellular(_:))
    {
      v25 = 0x72616C756C6C6563;
      (*(v22 + 8))(v6, v0);
    }

    else if (v23 == enum case for NWInterface.InterfaceType.wiredEthernet(_:))
    {
      v25 = 0x6874456465726977;
      (*(v22 + 8))(v6, v0);
    }

    else
    {
      v33 = enum case for NWInterface.InterfaceType.loopback(_:);
      v34 = *(v22 + 8);
      v35 = v23;
      v36 = v24;
      v34(v6);
      if (v35 == v33)
      {
        return 0x6B636162706F6F6CLL;
      }

      else
      {
        v25 = 0x6E776F6E6B6E75;
        (v34)(v3, v36);
      }
    }
  }

  else
  {
    (*(v18 + 32))(v21, v16, v17);
    v45 = 0;
    v46 = 0xE000000000000000;
    sub_1004A4C34();
    v26 = v44;
    (*(v44 + 16))(v9, v12, v0);
    v27 = (*(v26 + 88))(v9, v0);
    v28 = v0;
    v29 = v12;
    if (v27 == enum case for NWInterface.InterfaceType.other(_:))
    {
      v30 = v18;
      v31 = 0x726568746FLL;
      (*(v26 + 8))(v29, v28);
      v32 = 0xE500000000000000;
    }

    else if (v27 == enum case for NWInterface.InterfaceType.wifi(_:))
    {
      v30 = v18;
      v31 = 1768319351;
      (*(v26 + 8))(v29, v28);
      v32 = 0xE400000000000000;
    }

    else
    {
      v30 = v18;
      if (v27 == enum case for NWInterface.InterfaceType.cellular(_:))
      {
        v31 = 0x72616C756C6C6563;
        (*(v26 + 8))(v29, v28);
        v32 = 0xE800000000000000;
      }

      else if (v27 == enum case for NWInterface.InterfaceType.wiredEthernet(_:))
      {
        v31 = 0x6874456465726977;
        (*(v26 + 8))(v29, v28);
        v32 = 0xED000074656E7265;
      }

      else
      {
        v37 = v28;
        v38 = v21;
        v39 = enum case for NWInterface.InterfaceType.loopback(_:);
        v40 = *(v26 + 8);
        v41 = v27;
        v40(v29);
        if (v41 == v39)
        {
          v31 = 0x6B636162706F6F6CLL;
          v32 = 0xE800000000000000;
        }

        else
        {
          v31 = 0x6E776F6E6B6E75;
          (v40)(v9, v37);
          v32 = 0xE700000000000000;
        }

        v21 = v38;
      }
    }

    v47._countAndFlagsBits = v31;
    v47._object = v32;
    sub_1004A5994(v47);

    v48._countAndFlagsBits = 45;
    v48._object = 0xE100000000000000;
    sub_1004A5994(v48);
    v49._countAndFlagsBits = sub_1001FB280();
    sub_1004A5994(v49);

    v25 = v45;
    (*(v30 + 8))(v21, v17);
  }

  return v25;
}

uint64_t sub_1001FB280()
{
  v1 = v0;
  v2 = sub_1004A4C74();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v7, v1, v2, v5);
  v8 = (*(v3 + 88))(v7, v2);
  if (v8 == enum case for NWInterface.RadioType.wifi(_:))
  {
    (*(v3 + 96))(v7, v2);
    v2 = sub_1004A4C44();
    v3 = *(v2 - 8);
    v9 = (*(v3 + 88))(v7, v2);
    if (v9 == enum case for NWInterface.RadioType.WiFi.b(_:))
    {
      return 98;
    }

    if (v9 == enum case for NWInterface.RadioType.WiFi.a(_:))
    {
      return 97;
    }

    if (v9 == enum case for NWInterface.RadioType.WiFi.g(_:))
    {
      return 103;
    }

    if (v9 == enum case for NWInterface.RadioType.WiFi.n(_:))
    {
      return 110;
    }

    if (v9 == enum case for NWInterface.RadioType.WiFi.ac(_:))
    {
      return 25441;
    }

    if (v9 == enum case for NWInterface.RadioType.WiFi.ax(_:))
    {
      return 30817;
    }

    goto LABEL_33;
  }

  if (v8 != enum case for NWInterface.RadioType.cell(_:))
  {
LABEL_33:
    v14 = 63;
    goto LABEL_34;
  }

  (*(v3 + 96))(v7, v2);
  v2 = sub_1004A4C64();
  v3 = *(v2 - 8);
  v11 = (*(v3 + 88))(v7, v2);
  if (v11 == enum case for NWInterface.RadioType.Cellular.dualConnectivity5G(_:))
  {
    (*(v3 + 96))(v7, v2);
    v2 = sub_1004A4C54();
    v3 = *(v2 - 8);
    v12 = (*(v3 + 88))(v7, v2);
    if (v12 == enum case for NWInterface.RadioType.Cellular.NewRadio5GVariant.sub6GHz(_:))
    {
      return 0x732E47356C617564;
    }

    if (v12 == enum case for NWInterface.RadioType.Cellular.NewRadio5GVariant.mmWave(_:))
    {
      return 0x6D2E47356C617564;
    }

    v14 = 0x47356C617564;
  }

  else if (v11 == enum case for NWInterface.RadioType.Cellular.standalone5G(_:))
  {
    (*(v3 + 96))(v7, v2);
    v2 = sub_1004A4C54();
    v3 = *(v2 - 8);
    v13 = (*(v3 + 88))(v7, v2);
    if (v13 == enum case for NWInterface.RadioType.Cellular.NewRadio5GVariant.sub6GHz(_:))
    {
      return 0x47366275732E4735;
    }

    if (v13 == enum case for NWInterface.RadioType.Cellular.NewRadio5GVariant.mmWave(_:))
    {
      return 0x7661576D6D2E4735;
    }

    v14 = 18229;
  }

  else
  {
    if (v11 == enum case for NWInterface.RadioType.Cellular.lte(_:))
    {
      return 6648940;
    }

    if (v11 == enum case for NWInterface.RadioType.Cellular.wcdma(_:))
    {
      return 0x616D646377;
    }

    if (v11 == enum case for NWInterface.RadioType.Cellular.gsm(_:))
    {
      return 7172967;
    }

    if (v11 == enum case for NWInterface.RadioType.Cellular.cdma(_:))
    {
      return 1634559075;
    }

    if (v11 == enum case for NWInterface.RadioType.Cellular.evdo(_:))
    {
      return 1868854885;
    }

    v14 = 1819043171;
  }

LABEL_34:
  (*(v3 + 8))(v7, v2);
  return v14;
}

uint64_t sub_1001FB7F8(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = 0;
  v12 = a2;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 56);
  for (i = (v5 + 63) >> 6; v7; result = sub_10020163C(&v11, *(*(v2 + 48) + ((v9 << 8) | (4 * v10)))))
  {
    v9 = v3;
LABEL_9:
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
  }

  while (1)
  {
    v9 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v9 >= i)
    {

      return v12;
    }

    v7 = *(v4 + 8 * v9);
    ++v3;
    if (v7)
    {
      v3 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1001FB8D8(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = 0;
  v12 = a2;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 56);
  for (i = (v5 + 63) >> 6; v7; result = sub_100201A38(&v11, *(*(v2 + 48) + (v10 | (v9 << 6)))))
  {
    v9 = v3;
LABEL_9:
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
  }

  while (1)
  {
    v9 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v9 >= i)
    {

      return v12;
    }

    v7 = *(v4 + 8 * v9);
    ++v3;
    if (v7)
    {
      v3 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1001FB9B4(uint64_t result)
{
  v1 = result;
  v2 = 0;
  v3 = result + 56;
  v4 = 1 << *(result + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(result + 56);
  v7 = (v4 + 63) >> 6;
  if (v6)
  {
    while (1)
    {
      v8 = v2;
LABEL_9:
      v9 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      result = sub_100201A1C(&v10, *(*(v1 + 48) + (v9 | (v8 << 6))));
      if (!v6)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
      return result;
    }

    if (v8 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v8);
    ++v2;
    if (v6)
    {
      v2 = v8;
      goto LABEL_9;
    }
  }
}

void *sub_1001FBAA0()
{
  v1 = type metadata accessor for ClientCommand(0);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1);
  v4 = (&v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100197BAC(v0, v4);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 12)
  {
    if (EnumCaseMultiPayload <= 10)
    {
      if ((EnumCaseMultiPayload - 6) < 2 || EnumCaseMultiPayload == 3)
      {
        sub_10016D98C(v4);
        return sub_1001CC12C(&off_1005A3A88);
      }

LABEL_25:
      sub_10016D98C(v4);
      return _swiftEmptySetSingleton;
    }

    if (EnumCaseMultiPayload != 11)
    {
      v17 = *v4;
      v16 = v4[1];

      v18 = sub_1001FBD14(v17);
      sub_1000B37D8(v17);
      return v18;
    }

    v19 = *v4;
    v24 = sub_1001FBD14(v19);
    v20 = 5;
    goto LABEL_23;
  }

  if (EnumCaseMultiPayload <= 14)
  {
    if (EnumCaseMultiPayload != 13)
    {
      v9 = *v4;
      v8 = v4[1];

      v24 = sub_1001FBD14(v9);
      sub_100201A1C(&v23 + 7, 1);
      v10 = v9;
LABEL_24:
      sub_1000B37D8(v10);
      return v24;
    }

    v19 = *v4;
    v24 = sub_1001FBD14(v19);
    sub_100201A1C(&v23 + 7, 5);
    v20 = 1;
LABEL_23:
    sub_100201A1C(&v23 + 7, v20);
    v10 = v19;
    goto LABEL_24;
  }

  if (EnumCaseMultiPayload == 15)
  {
    v21 = sub_10000C9C0(&qword_1005CD558, &unk_1004CF330);
    v22 = sub_1001FBD90(*(v4 + *(v21 + 48)));

    sub_100025F40(v4, &unk_1005D91B0, &unk_1004CF400);
    return v22;
  }

  if (EnumCaseMultiPayload != 16)
  {
    goto LABEL_25;
  }

  v11 = v4 + *(sub_10000C9C0(&qword_1005D0488, &qword_1004DA4C0) + 48);
  v12 = v11[1];
  v13 = *(v11 + 1);

  if (v12)
  {
    v14 = &off_1005A3AB0;
  }

  else
  {
    v14 = &off_1005A3AD8;
  }

  v15 = sub_1001CC12C(v14);
  sub_100025F40(v4, &unk_1005D91B0, &unk_1004CF400);
  return v15;
}

void *sub_1001FBD14(unint64_t a1)
{
  v6 = _swiftEmptySetSingleton;
  if (sub_1001FC4C0(a1))
  {
    sub_100201A1C(&v4, 1);
    sub_100201A1C(&v3, 2);
  }

  if (sub_1001FC608(a1))
  {
    sub_100201A1C(&v5, 3);
  }

  return v6;
}

void *sub_1001FBD90(uint64_t a1)
{
  v1 = _swiftEmptySetSingleton;
  v17 = _swiftEmptySetSingleton;
  v2 = *(a1 + 16);
  if (v2)
  {
    for (i = (a1 + 64); ; i += 10)
    {
      v5 = *(i - 4);
      v6 = *(i - 3);
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *(i + 4);
      v10 = *i | (*(i + 4) << 32);
      v16 = _swiftEmptySetSingleton;
      v11 = v9 >> 5;
      if (v11 <= 2)
      {
        if (v11)
        {
          v12 = v11 == 1;
        }

        else
        {
          v12 = 0;
        }

        v4 = _swiftEmptySetSingleton;
        if (!v12)
        {
          goto LABEL_4;
        }

        sub_100051190(v7, v8);
      }

      else if (v11 > 4)
      {
        v4 = _swiftEmptySetSingleton;
        if (v11 == 5)
        {
          goto LABEL_4;
        }

        if (v7 | v6 | v5 | v8)
        {
          v13 = 0;
        }

        else
        {
          v13 = v10 == 0xC000000000;
        }

        if (!v13 && v10 == 0xC000000000 && v5 == 1 && !(v7 | v6 | v8))
        {
          sub_100201A1C(&v15, 3);
          v4 = v16;
          goto LABEL_4;
        }
      }

      else
      {
      }

      v4 = _swiftEmptySetSingleton;
LABEL_4:
      sub_1001FB9B4(v4);
      sub_1001FC9B4(v5, v6, v7, v8, v10);
      if (!--v2)
      {
        return v17;
      }
    }
  }

  return v1;
}

Swift::Int sub_1001FBFB0()
{
  v1 = type metadata accessor for ClientCommand(0);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1);
  v4 = (&v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100197BAC(v0, v4);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
    case 2u:
    case 4u:
    case 5u:
    case 6u:
    case 7u:
    case 8u:
    case 9u:
    case 0x14u:
      sub_10016D98C(v4);
      goto LABEL_3;
    case 3u:
      sub_10016D98C(v4);
      v5 = &off_1005A3B00;
      return sub_1001CC140(v5);
    case 0xAu:
      v14 = *v4;

      v15 = v4[2];

      v16 = sub_10000C9C0(&qword_1005D0F18, &unk_1004E53C0);
      v17 = *(v16 + 64);
      sub_100014D40(*(v4 + *(v16 + 80)), *(v4 + *(v16 + 80) + 8));
      sub_100025F40(v4 + v17, &qword_1005D0F20, &qword_1004E9390);
      goto LABEL_3;
    case 0xBu:
      v34 = *v4;
      v35 = &off_1005A3BC8;
      goto LABEL_40;
    case 0xCu:
      v12 = *v4;
      v18 = v4[1];

      v13 = &off_1005A3C18;
      goto LABEL_15;
    case 0xDu:
      v34 = *v4;
      v35 = &off_1005A3BF0;
LABEL_40:
      v36 = sub_1001CC140(v35);
      v40 = _swiftEmptySetSingleton;
      if (sub_1001FC608(v34))
      {
        sub_100201A38(&v39 + 7, 5);
      }

      if (sub_1001FC7E4(v34))
      {
        sub_100201A38(&v39 + 7, 3);
      }

      v37 = sub_1001FB8D8(v40, v36);
      sub_1000B37D8(v34);
      return v37;
    case 0xEu:
      v12 = *v4;
      v11 = v4[1];

      v13 = &off_1005A3C40;
LABEL_15:
      v19 = sub_1001CC140(v13);
      v40 = _swiftEmptySetSingleton;
      if (sub_1001FC608(v12))
      {
        sub_100201A38(&v39 + 7, 5);
      }

      if (sub_1001FC7E4(v12))
      {
        sub_100201A38(&v39 + 7, 3);
      }

      v20 = sub_1001FB8D8(v40, v19);
      sub_1000B37D8(v12);
      return v20;
    case 0xFu:
      v22 = *(v4 + *(sub_10000C9C0(&qword_1005CD558, &unk_1004CF330) + 48));
      v23 = *(v22 + 16);
      if (v23)
      {
        v24 = (v22 + 64);
        v25 = &off_1005A3B50;
        while (1)
        {
          if (*(v24 + 4) >> 5 >= 6u)
          {
            v26 = *v24 | (*(v24 + 4) << 32);
            v27 = *(v24 - 1);
            v28 = *(v24 - 4);
            v29 = *(v24 - 2) | *(v24 - 3);
            if (v29 | v28 | v27 || v26 != 0xC000000000)
            {
              v31 = v29 | v27;
              v32 = v26 == 0xC000000000 && v28 == 1;
              if (v32 && v31 == 0)
              {
                break;
              }
            }
          }

          v24 += 10;
          if (!--v23)
          {
            v25 = &off_1005A3B78;
            break;
          }
        }
      }

      else
      {
        v25 = &off_1005A3B78;
      }

      v10 = v25;
LABEL_48:
      v38 = sub_1001CC140(v10);
      sub_100025F40(v4, &unk_1005D91B0, &unk_1004CF400);
      return v38;
    case 0x10u:
      v7 = v4 + *(sub_10000C9C0(&qword_1005D0488, &qword_1004DA4C0) + 48);
      v8 = v7[1];
      v9 = *(v7 + 1);

      if (v8)
      {
        v10 = &off_1005A3C68;
      }

      else
      {
        v10 = &off_1005A3C90;
      }

      goto LABEL_48;
    case 0x11u:
    case 0x12u:
      v6 = *(v4 + *(sub_10000C9C0(&qword_1005D0480, &qword_1004D3D00) + 48));

      sub_100025F40(v4, &unk_1005D91B0, &unk_1004CF400);
      v5 = &off_1005A3BA0;
      return sub_1001CC140(v5);
    case 0x13u:
      v5 = &off_1005A3CE0;
      return sub_1001CC140(v5);
    case 0x16u:
    case 0x17u:
    case 0x19u:
    case 0x1Bu:
LABEL_3:
      v5 = &off_1005A3D08;
      return sub_1001CC140(v5);
    case 0x18u:
    case 0x1Du:
      goto LABEL_5;
    case 0x1Au:
    case 0x1Cu:
      v5 = &off_1005A3B28;
      return sub_1001CC140(v5);
    default:
      sub_10016D98C(v4);
LABEL_5:
      v5 = &off_1005A3CB8;
      return sub_1001CC140(v5);
  }
}

unint64_t sub_1001FC4C0(unint64_t a1)
{
  while (1)
  {
    v2 = (a1 >> 59) & 0x1E | (a1 >> 2) & 1;
    if (v2 > 15)
    {
      break;
    }

    if (v2 != 15)
    {
      result = 0;
      if (v2 >= 0xE)
      {
        v6 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        sub_1000B3664(v6);
        v7 = sub_1001FC4C0(v6);
        sub_1000B37D8(v6);
        return v7 & 1;
      }

      return result;
    }

    v3 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
    a1 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
    if (sub_1001FC4C0(v3))
    {
      return 1;
    }
  }

  result = 0;
  v5 = 1 << v2;
  if ((v5 & 0xF67F0000) != 0)
  {
    return result;
  }

  if ((v5 & 0x8800000) != 0)
  {
    return 1;
  }

  v8 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
  v9 = *(v8 + 16);

  v10 = 0;
  while (1)
  {
    if (v9 == v10)
    {

      return 0;
    }

    if (v10 >= *(v8 + 16))
    {
      break;
    }

    v11 = v10 + 1;
    v12 = *(v8 + 8 * v10 + 32);
    sub_1000B3664(v12);
    v13 = sub_1001FC4C0(v12);
    result = sub_1000B37D8(v12);
    v10 = v11;
    if (v13)
    {

      return 1;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1001FC608(unint64_t a1)
{
  while (2)
  {
    LOBYTE(v2) = 0;
    switch((a1 >> 59) & 0x1E | (a1 >> 2) & 1)
    {
      case 5uLL:
      case 0xBuLL:
      case 0x1BuLL:
        goto LABEL_3;
      case 0xEuLL:
        v4 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        sub_1000B3664(v4);
        v5 = sub_1001FC608(v4);
        sub_1000B37D8(v4);
        return v5 & 1;
      case 0xFuLL:
        v3 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        a1 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
        if ((sub_1001FC608(v3) & 1) == 0)
        {
          continue;
        }

LABEL_3:
        LOBYTE(v2) = 1;
        return v2 & 1;
      case 0x18uLL:
        v7 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        v8 = *(v7 + 16);

        v9 = 0;
        break;
      case 0x1CuLL:
        LOBYTE(v2) = *(*((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x20) + 16) != 0;
        return v2 & 1;
      case 0x1FuLL:
        v2 = 0x3F8Eu >> ((a1 + 131068) >> 3);
        return v2 & 1;
      default:
        return v2 & 1;
    }

    break;
  }

  while (v8 != v9)
  {
    if (v9 >= *(v7 + 16))
    {
      __break(1u);
      JUMPOUT(0x1001FC764);
    }

    v10 = v9 + 1;
    v11 = *(v7 + 8 * v9 + 32);
    sub_1000B3664(v11);
    v12 = sub_1001FC608(v11);
    sub_1000B37D8(v11);
    v9 = v10;
    if (v12)
    {

      LOBYTE(v2) = 1;
      return v2 & 1;
    }
  }

  LOBYTE(v2) = 0;
  return v2 & 1;
}

unint64_t sub_1001FC7E4(unint64_t a1)
{
  while (1)
  {
    v2 = (a1 >> 59) & 0x1E | (a1 >> 2) & 1;
    if (v2 > 15)
    {
      break;
    }

    if (v2 != 15)
    {
      result = 0;
      if (v2 >= 0xE)
      {
        v6 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        sub_1000B3664(v6);
        v7 = sub_1001FC7E4(v6);
        sub_1000B37D8(v6);
        return v7 & 1;
      }

      return result;
    }

    v3 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
    a1 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
    if (sub_1001FC7E4(v3))
    {
      return 1;
    }
  }

  result = 0;
  v5 = 1 << v2;
  if ((v5 & 0xF68F0000) != 0)
  {
    return result;
  }

  if ((v5 & 0x8700000) != 0)
  {
    return 1;
  }

  v8 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
  v9 = *(v8 + 16);

  v10 = 0;
  while (1)
  {
    if (v9 == v10)
    {

      return 0;
    }

    if (v10 >= *(v8 + 16))
    {
      break;
    }

    v11 = v10 + 1;
    v12 = *(v8 + 8 * v10 + 32);
    sub_1000B3664(v12);
    v13 = sub_1001FC7E4(v12);
    result = sub_1000B37D8(v12);
    v10 = v11;
    if (v13)
    {

      return 1;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1001FC92C(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    v2 = (result + 56);
    do
    {
      v3 = *v2;
      v5 = *(v2 - 2);
      v4 = *(v2 - 1);
      v6 = *(v2 - 3);

      sub_100201734(&v7, v6, v5, v4, v3);

      v2 += 32;
      --v1;
    }

    while (v1);
  }

  return result;
}

void sub_1001FC9B4(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4, unint64_t a5)
{
  v6 = (a5 >> 37) & 7;
  if (v6 == 4 || v6 == 3)
  {
  }

  else if (v6 == 1)
  {

    sub_1000511A4(a3, a4);
  }
}

unint64_t sub_1001FCA50()
{
  result = qword_1005D4BC8;
  if (!qword_1005D4BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D4BC8);
  }

  return result;
}

unint64_t sub_1001FCAA8()
{
  result = qword_1005D4BD0;
  if (!qword_1005D4BD0)
  {
    sub_10000DEFC(&qword_1005D4BD8, qword_1004E5470);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D4BD0);
  }

  return result;
}

unint64_t sub_1001FCB10()
{
  result = qword_1005D4BE0;
  if (!qword_1005D4BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D4BE0);
  }

  return result;
}

uint64_t sub_1001FCB64(uint64_t a1)
{
  v1 = *(a1 + 8) >> 60;
  if (((4 * v1) & 0xC) != 0)
  {
    return 16 - ((4 * v1) & 0xC | (v1 >> 2));
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1001FCB9C()
{
  v2 = *(v0 + 88);
  if (v2 >> 60 == 15)
  {
    sub_10018D6F4();
    swift_allocError();
    *v3 = xmmword_1004DB2C0;
    *(v3 + 16) = 1;
    swift_willThrow();
  }

  else
  {
    v1 = *(v0 + 80);
    sub_100014CEC(v1, *(v0 + 88));
    sub_100191720(v1, v2);
    *(v0 + 80) = xmmword_1004D25F0;
  }

  return v1;
}

uint64_t sub_1001FCC58(unsigned __int16 *a1, unsigned __int16 *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    v3 = *(a1 + 2);
    v4 = *(a2 + 2);
    if (v3)
    {
      if (v4 && (*(a1 + 1) == *(a2 + 1) && v3 == v4 || (sub_1004A6D34() & 1) != 0))
      {
        return 1;
      }
    }

    else if (!v4)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_1001FCCD8(int a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  if (a1 == a4)
  {
    if (a3)
    {
      if (a6)
      {
        if (a2 == a5 && a3 == a6)
        {
          return 1;
        }

        if (sub_1004A6D34())
        {
          return 1;
        }
      }
    }

    else if (!a6)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t CommandConnection.RecentErrors.Error.kind.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for CommandConnection.RecentErrors.Error(0) + 20);

  return sub_1001FCE5C(a1, v3);
}

uint64_t sub_1001FCE5C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CommandConnection.RecentErrors.Error.Kind(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t CommandConnection.RecentErrors.Error.init(time:kind:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for CommandConnection.RecentErrors.Error.Kind(0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v9 = (&v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = type metadata accessor for CommandConnection.RecentErrors.Error(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = (&v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1002076F0(a2, v9, type metadata accessor for CommandConnection.RecentErrors.Error.Kind);
  if (swift_getEnumCaseMultiPayload() != 4)
  {
    sub_100207758(v9, type metadata accessor for CommandConnection.RecentErrors.Error.Kind);
    goto LABEL_8;
  }

  v15 = sub_1004A5214();
  v16 = *(v15 - 8);
  if ((*(v16 + 88))(v9, v15) != enum case for NWError.posix(_:))
  {
    (*(v16 + 8))(v9, v15);
    goto LABEL_8;
  }

  (*(v16 + 96))(v9, v15);
  if (*v9 == 94)
  {
    sub_100207758(a2, type metadata accessor for CommandConnection.RecentErrors.Error.Kind);
    *v14 = a1;
    v19 = *(v10 + 20);
    swift_storeEnumTagMultiPayload();
    goto LABEL_9;
  }

  if (*v9 != 89)
  {
LABEL_8:
    *v14 = a1;
    sub_100207668(a2, v14 + *(v10 + 20), type metadata accessor for CommandConnection.RecentErrors.Error.Kind);
LABEL_9:
    sub_100207668(v14, a3, type metadata accessor for CommandConnection.RecentErrors.Error);
    v17 = 0;
    return (*(v11 + 56))(a3, v17, 1, v10);
  }

  sub_100207758(a2, type metadata accessor for CommandConnection.RecentErrors.Error.Kind);
  v17 = 1;
  return (*(v11 + 56))(a3, v17, 1, v10);
}

uint64_t static CommandConnection.RecentErrors.Error.__derived_struct_equals(_:_:)(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v5 = *(type metadata accessor for CommandConnection.RecentErrors.Error(0) + 20);

  return _s15IMAP2Connection07CommandB0C12RecentErrorsV5ErrorV4KindO21__derived_enum_equalsySbAI_AItFZ_0(a1 + v5, a2 + v5);
}

uint64_t sub_1001FD254(void *a1, void *a2, uint64_t a3)
{
  if (*a1 == *a2)
  {
    return _s15IMAP2Connection07CommandB0C12RecentErrorsV5ErrorV4KindO21__derived_enum_equalsySbAI_AItFZ_0(a1 + *(a3 + 20), a2 + *(a3 + 20));
  }

  else
  {
    return 0;
  }
}

unint64_t CommandConnection.RecentErrors.statistics.getter@<X0>(uint64_t a1@<X8>)
{

  return CommandConnection.RecentErrors.Statistics.init(_:)(v2, a1);
}

unint64_t CommandConnection.RecentErrors.Statistics.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1004A5214();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v52 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = type metadata accessor for CommandConnection.RecentErrors.Error.Kind(0);
  v8 = *(*(v43 - 8) + 64);
  __chkstk_darwin(v43);
  v10 = (&v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = type metadata accessor for CommandConnection.RecentErrors.Error(0);
  v54 = *(v11 - 8);
  v12 = *(v54 + 64);
  __chkstk_darwin(v11);
  v14 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for CommandConnection.RecentErrors.Statistics(0);
  *a2 = 0;
  *(a2 + 8) = 0u;
  *(a2 + 24) = 0u;
  *(a2 + 40) = 0u;
  v16 = v5;
  v17 = *(v5 + 56);
  v42 = *(v15 + 48);
  v17(a2 + v42, 1, 1, v4);
  v41 = *(v15 + 52);
  v55 = v4;
  v50 = v17;
  v51 = v5 + 56;
  v17(a2 + v41, 1, 1, v4);
  v18 = a1;
  v19 = *(a1 + 16);
  if (!v19)
  {
  }

  v48 = 0;
  v49 = 0;
  v46 = 0;
  v47 = 0;
  v44 = 0;
  v45 = 0;
  v20 = *(v11 + 20);
  v21 = *(v54 + 80);
  v40 = v18;
  v22 = v18 + ((v21 + 32) & ~v21);
  v23 = *(v54 + 72);
  v24 = (v16 + 32);
  v53 = v23;
  v54 = v20;
  while (1)
  {
    sub_1002076F0(v22, v14, type metadata accessor for CommandConnection.RecentErrors.Error);
    sub_1002076F0(&v14[v20], v10, type metadata accessor for CommandConnection.RecentErrors.Error.Kind);
    sub_100207758(v14, type metadata accessor for CommandConnection.RecentErrors.Error);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload <= 2)
    {
      if (EnumCaseMultiPayload)
      {
        if (EnumCaseMultiPayload == 1)
        {
          v26 = v24;
          v27 = *v10;
          v28 = v10[1];
          v29 = v10[2];
          result = sub_10010E7C0(v46, v45, v44);
          v31 = v47 + 1;
          if (__OFADD__(v47, 1))
          {
            goto LABEL_27;
          }

          v46 = v27;
          ++v47;
          *(a2 + 8) = v31;
          *(a2 + 32) = v27;
          *(a2 + 40) = v28;
          v44 = v29;
          v45 = v28;
          *(a2 + 48) = v29;
          v24 = v26;
          v23 = v53;
          v20 = v54;
        }

        else
        {
          sub_100207758(v10, type metadata accessor for CommandConnection.RecentErrors.Error.Kind);
          *(a2 + 2) = 1;
        }
      }

      else
      {
        sub_100207758(v10, type metadata accessor for CommandConnection.RecentErrors.Error.Kind);
        *(a2 + 1) = 1;
      }

      goto LABEL_4;
    }

    if (EnumCaseMultiPayload > 4)
    {
      break;
    }

    if (EnumCaseMultiPayload != 3)
    {
      v32 = *v24;
      v33 = v52;
      result = (*v24)(v52, v10, v55);
      v36 = v48 + 1;
      if (__OFADD__(v48, 1))
      {
        goto LABEL_26;
      }

      ++v48;
      *(a2 + 16) = v36;
      v35 = v42;
      goto LABEL_19;
    }

    sub_100207758(v10, type metadata accessor for CommandConnection.RecentErrors.Error.Kind);
    *(a2 + 3) = 1;
LABEL_4:
    v22 += v23;
    if (!--v19)
    {
    }
  }

  if (EnumCaseMultiPayload != 5)
  {
    *a2 = 1;
    goto LABEL_4;
  }

  v32 = *v24;
  v33 = v52;
  result = (*v24)(v52, v10, v55);
  v34 = v49 + 1;
  if (!__OFADD__(v49, 1))
  {
    ++v49;
    *(a2 + 24) = v34;
    v35 = v41;
LABEL_19:
    sub_100025F40(a2 + v35, &unk_1005D54F0, &unk_1004E8DA0);
    v37 = v33;
    v38 = v55;
    v32((a2 + v35), v37, v55);
    v39 = a2 + v35;
    v20 = v54;
    v50(v39, 0, 1, v38);
    v23 = v53;
    goto LABEL_4;
  }

  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

unint64_t CommandConnection.RecentErrors.Statistics.lastResponseText.getter()
{
  v1 = v0[4];
  sub_10010E780(v1, v0[5], v0[6]);
  return v1;
}

unint64_t CommandConnection.RecentErrors.Statistics.lastResponseText.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_10010E7C0(*(v3 + 32), *(v3 + 40), *(v3 + 48));
  *(v3 + 32) = a1;
  *(v3 + 40) = a2;
  *(v3 + 48) = a3;
  return result;
}

uint64_t CommandConnection.RecentErrors.Statistics.lastNetworkError.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for CommandConnection.RecentErrors.Statistics(0) + 48);

  return sub_1002077B8(v3, a1);
}

uint64_t CommandConnection.RecentErrors.Statistics.lastNetworkError.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for CommandConnection.RecentErrors.Statistics(0) + 48);

  return sub_100207828(a1, v3);
}

uint64_t CommandConnection.RecentErrors.Statistics.lastNoViableNetworkError.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for CommandConnection.RecentErrors.Statistics(0) + 52);

  return sub_1002077B8(v3, a1);
}

uint64_t CommandConnection.RecentErrors.Statistics.lastNoViableNetworkError.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for CommandConnection.RecentErrors.Statistics(0) + 52);

  return sub_100207828(a1, v3);
}

uint64_t sub_1001FDA58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v134 = a3;
  v135 = a2;
  v126 = a1;
  v117 = sub_1004A4064();
  v116 = *(v117 - 8);
  v3 = *(v116 + 64);
  __chkstk_darwin(v117);
  v115 = &v113 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v124 = type metadata accessor for CommandConnection.RecentErrors.Error.Kind(0);
  v5 = *(*(v124 - 8) + 64);
  __chkstk_darwin(v124);
  v125 = (&v113 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_10000C9C0(&qword_1005D35E0, &qword_1004DD1C8);
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v130 = &v113 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v123 = &v113 - v12;
  v13 = __chkstk_darwin(v11);
  v120 = &v113 - v14;
  v15 = __chkstk_darwin(v13);
  v118 = &v113 - v16;
  v17 = __chkstk_darwin(v15);
  v119 = &v113 - v18;
  v19 = __chkstk_darwin(v17);
  v129 = &v113 - v20;
  v21 = __chkstk_darwin(v19);
  v128 = &v113 - v22;
  v23 = __chkstk_darwin(v21);
  v122 = &v113 - v24;
  __chkstk_darwin(v23);
  v121 = &v113 - v25;
  v26 = sub_1004A5214();
  v127 = *(v26 - 8);
  v27 = *(v127 + 64);
  v28 = __chkstk_darwin(v26);
  v30 = &v113 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __chkstk_darwin(v28);
  v33 = &v113 - v32;
  __chkstk_darwin(v31);
  v35 = &v113 - v34;
  v36 = sub_1004A4E34();
  v131 = *(v36 - 8);
  v37 = *(v131 + 64);
  v38 = __chkstk_darwin(v36);
  v40 = &v113 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v38);
  v42 = &v113 - v41;
  v43 = type metadata accessor for ConnectionEvent(0);
  v44 = *(*(v43 - 8) + 64);
  __chkstk_darwin(v43);
  v46 = &v113 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = type metadata accessor for CommandConnection.RecentErrors.Error(0);
  v132 = *(v47 - 8);
  v133 = v47;
  v48 = *(v132 + 64);
  __chkstk_darwin(v47);
  v50 = &v113 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1002076F0(v135, v46, type metadata accessor for ConnectionEvent);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    v113 = v35;
    v114 = v33;
    v56 = v128;
    v57 = v129;
    v58 = v42;
    v59 = v130;
    v60 = v131;
    v61 = v36;
    v62 = v127;
    if (EnumCaseMultiPayload <= 1)
    {
      if (!EnumCaseMultiPayload)
      {
        v63 = v58;
        v64 = v61;
        (*(v131 + 32))(v58, v46, v61);
        (*(v60 + 16))(v40, v63, v64);
        v65 = (*(v60 + 88))(v40, v64);
        v66 = v26;
        if (v65 == enum case for NWConnection.State.waiting(_:))
        {
          (*(v60 + 96))(v40, v64);
          v67 = v114;
          (*(v62 + 32))(v114, v40, v66);
          v68 = v125;
          (*(v62 + 16))(v125, v67, v66);
          swift_storeEnumTagMultiPayload();
          v69 = v122;
          CommandConnection.RecentErrors.Error.init(time:kind:)(v126, v68, v122);
          sub_100207758(v135, type metadata accessor for ConnectionEvent);
          (*(v62 + 8))(v67, v66);
          (*(v60 + 8))(v63, v64);
          v52 = v132;
          v54 = v133;
          v70 = (*(v132 + 48))(v69, 1, v133);
          v53 = v134;
          if (v70)
          {
            v71 = v69;
LABEL_25:
            sub_100025F40(v71, &qword_1005D35E0, &qword_1004DD1C8);
            v55 = 1;
            return (*(v52 + 56))(v53, v55, 1, v54);
          }

          v97 = v69;
          v72 = v50;
        }

        else
        {
          v86 = v26;
          v54 = v133;
          v53 = v134;
          v87 = v125;
          if (v65 != enum case for NWConnection.State.failed(_:))
          {
            sub_100207758(v135, type metadata accessor for ConnectionEvent);
            v103 = *(v60 + 8);
            v103(v63, v64);
            v103(v40, v64);
            v55 = 1;
            v52 = v132;
            return (*(v52 + 56))(v53, v55, 1, v54);
          }

          (*(v60 + 96))(v40, v64);
          v88 = v113;
          v89 = v40;
          v90 = v86;
          (*(v62 + 32))(v113, v89, v86);
          (*(v62 + 16))(v87, v88, v86);
          swift_storeEnumTagMultiPayload();
          v91 = v121;
          CommandConnection.RecentErrors.Error.init(time:kind:)(v126, v87, v121);
          sub_100207758(v135, type metadata accessor for ConnectionEvent);
          (*(v62 + 8))(v88, v90);
          (*(v131 + 8))(v63, v64);
          v52 = v132;
          if ((*(v132 + 48))(v91, 1, v54))
          {
            v71 = v91;
            goto LABEL_25;
          }

          v97 = v91;
          v72 = v50;
        }

LABEL_58:
        sub_100207668(v97, v72, type metadata accessor for CommandConnection.RecentErrors.Error);
        sub_100207668(v72, v53, type metadata accessor for CommandConnection.RecentErrors.Error);
        v55 = 0;
        return (*(v52 + 56))(v53, v55, 1, v54);
      }

      type metadata accessor for ConnectionEvent.FailureReason(0);
      v79 = swift_getEnumCaseMultiPayload();
      if (v79 > 1)
      {
        v52 = v132;
        if (v79 == 2)
        {
          goto LABEL_37;
        }

        v94 = v50;
        v95 = v125;
        swift_storeEnumTagMultiPayload();
        CommandConnection.RecentErrors.Error.init(time:kind:)(v126, v95, v57);
        sub_100207758(v135, type metadata accessor for ConnectionEvent);
        v54 = v133;
        v96 = (*(v52 + 48))(v57, 1, v133);
        v53 = v134;
        if (v96)
        {
          v71 = v57;
          goto LABEL_25;
        }

        v97 = v57;
        v72 = v94;
        goto LABEL_58;
      }

      v52 = v132;
      v72 = v50;
      if (v79)
      {
        v98 = v30;
        v99 = v30;
        v100 = v26;
        (*(v62 + 32))(v99, v46, v26);
        v101 = v125;
        (*(v62 + 16))(v125, v98, v26);
        swift_storeEnumTagMultiPayload();
        v102 = v119;
        CommandConnection.RecentErrors.Error.init(time:kind:)(v126, v101, v119);
        sub_100207758(v135, type metadata accessor for ConnectionEvent);
        (*(v62 + 8))(v98, v100);
        v54 = v133;
        if ((*(v52 + 48))(v102, 1, v133))
        {
          v82 = v102;
          goto LABEL_41;
        }

        v97 = v102;
      }

      else
      {
        v80 = *(v46 + 2);
        v81 = v125;
        *v125 = *v46;
        *(v81 + 16) = v80;
        swift_storeEnumTagMultiPayload();
        CommandConnection.RecentErrors.Error.init(time:kind:)(v126, v81, v56);
        sub_100207758(v135, type metadata accessor for ConnectionEvent);
        v54 = v133;
        if ((*(v52 + 48))(v56, 1, v133))
        {
          v82 = v56;
LABEL_41:
          sub_100025F40(v82, &qword_1005D35E0, &qword_1004DD1C8);
          v55 = 1;
          v53 = v134;
          return (*(v52 + 56))(v53, v55, 1, v54);
        }

        v97 = v56;
      }

      goto LABEL_57;
    }

    v72 = v50;
    if (EnumCaseMultiPayload == 2)
    {
      type metadata accessor for UntaggedResponse(0);
      v73 = swift_getEnumCaseMultiPayload();
      v52 = v132;
      v74 = v126;
      if ((v73 - 1) >= 2)
      {
        if (v73 != 4)
        {
          sub_100207758(v135, type metadata accessor for ConnectionEvent);
          v78 = type metadata accessor for UntaggedResponse;
          v77 = v46;
          goto LABEL_38;
        }

        v92 = *(v46 + 2);
        v93 = v125;
        *v125 = *v46;
        *(v93 + 16) = v92;
        swift_storeEnumTagMultiPayload();
        CommandConnection.RecentErrors.Error.init(time:kind:)(v74, v93, v59);
        sub_100207758(v135, type metadata accessor for ConnectionEvent);
        v54 = v133;
        if ((*(v52 + 48))(v59, 1, v133))
        {
          v82 = v59;
          goto LABEL_41;
        }

        v97 = v59;
LABEL_57:
        v53 = v134;
        goto LABEL_58;
      }

      v75 = *v46;
      v76 = *(v46 + 2);
      v54 = v133;
      v53 = v134;
    }

    else
    {
      v75 = *v46;
      v76 = *(v46 + 2);
      v83 = v46[24];
      v52 = v132;
      v74 = v126;
      if (!v46[24])
      {
        sub_10001114C(*v46);

        goto LABEL_37;
      }

      v54 = v133;
      v53 = v134;
      if (v83 == 1)
      {
        if ((~v75 & 0xF000000000000007) != 0 && v75 == 0x800000000000006CLL)
        {
          v104 = v72;
          v136 = *(&v75 + 1);
          v137 = v76;
          sub_1000110B0(0x800000000000006CLL);

          v105 = v115;
          sub_1004A4014();
          sub_1001C2190();
          v106 = sub_1004A6444();
          v108 = v107;
          (*(v116 + 8))(v105, v117);

          v109 = HIBYTE(v108) & 0xF;
          if ((v108 & 0x2000000000000000) == 0)
          {
            v109 = v106 & 0xFFFFFFFFFFFFLL;
          }

          if (!v109)
          {

            v106 = 0;
            v108 = 0;
          }

          v110 = v125;
          *v125 = v106;
          *(v110 + 8) = v108;
          swift_storeEnumTagMultiPayload();
          v111 = v118;
          CommandConnection.RecentErrors.Error.init(time:kind:)(v74, v110, v118);
          sub_10001114C(0x800000000000006CLL);

          sub_100207758(v135, type metadata accessor for ConnectionEvent);
          v85 = v111;
          if (!(*(v52 + 48))(v111, 1, v54))
          {
            v97 = v111;
            v72 = v104;
            goto LABEL_58;
          }

          goto LABEL_24;
        }

        v84 = v125;
        *v125 = v75;
        *(v84 + 16) = v76;
        swift_storeEnumTagMultiPayload();
        v85 = v120;
LABEL_23:
        CommandConnection.RecentErrors.Error.init(time:kind:)(v74, v84, v85);
        sub_100207758(v135, type metadata accessor for ConnectionEvent);
        if (!(*(v52 + 48))(v85, 1, v54))
        {
          v97 = v85;
          goto LABEL_58;
        }

LABEL_24:
        v71 = v85;
        goto LABEL_25;
      }
    }

    v84 = v125;
    *v125 = v75;
    *(v84 + 16) = v76;
    swift_storeEnumTagMultiPayload();
    v85 = v123;
    goto LABEL_23;
  }

  if (EnumCaseMultiPayload <= 5)
  {
    v52 = v132;
    sub_100207758(v135, type metadata accessor for ConnectionEvent);
    v77 = v46;
    v78 = type metadata accessor for ConnectionEvent;
LABEL_38:
    sub_100207758(v77, v78);
    v55 = 1;
    v54 = v133;
    v53 = v134;
    return (*(v52 + 56))(v53, v55, 1, v54);
  }

  v52 = v132;
  if (EnumCaseMultiPayload == 6)
  {
LABEL_37:
    v78 = type metadata accessor for ConnectionEvent;
    v77 = v135;
    goto LABEL_38;
  }

  v54 = v133;
  v53 = v134;
  sub_100207758(v135, type metadata accessor for ConnectionEvent);
  v55 = 1;
  return (*(v52 + 56))(v53, v55, 1, v54);
}

uint64_t CommandConnection.RecentErrors.backOffBehavior.getter(uint64_t a1)
{
  v2 = type metadata accessor for CommandConnection.RecentErrors.Error.Kind(0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for CommandConnection.RecentErrors.Error(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_1001FEBF4(a1);
  if (*(result + 16))
  {
    v12 = 0;
    v13 = 1 << *(result + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(result + 56);
    if (v15)
    {
      while (1)
      {
        v16 = v12;
LABEL_9:
        v17 = *(*(result + 48) + 24 * (__clz(__rbit64(v15)) | (v16 << 6)) + 16);
        if (v17 > 3 || v17 == 2)
        {
          break;
        }

        v15 &= v15 - 1;
        v12 = v16;
        if (!v15)
        {
          goto LABEL_6;
        }
      }

      return 1;
    }

LABEL_6:
    while (1)
    {
      v16 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v16 >= ((v13 + 63) >> 6))
      {

        return 2;
      }

      v15 = *(result + 56 + 8 * v16);
      ++v12;
      if (v15)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  else
  {

    if (sub_1001FEDFC(a1))
    {
      return 1;
    }

    v19 = 0;
    v20 = *(a1 + 16);
    while (v20 != v19)
    {
      sub_1002076F0(a1 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v19++, v10, type metadata accessor for CommandConnection.RecentErrors.Error);
      v21 = *(v6 + 20);
      swift_storeEnumTagMultiPayload();
      LOBYTE(v21) = _s15IMAP2Connection07CommandB0C12RecentErrorsV5ErrorV4KindO21__derived_enum_equalsySbAI_AItFZ_0(&v10[v21], v5);
      sub_100207758(v5, type metadata accessor for CommandConnection.RecentErrors.Error.Kind);
      sub_100207758(v10, type metadata accessor for CommandConnection.RecentErrors.Error);
      if (v21)
      {
        return 1;
      }
    }

    if (sub_1001FF004(a1))
    {
      return 1;
    }

    v22 = sub_1001FF1B8(a1);
    if (v20)
    {
      v23 = 0;
    }

    else
    {
      v23 = 3;
    }

    if (v22)
    {
      return 1;
    }

    else
    {
      return v23;
    }
  }

  return result;
}

void *sub_1001FEBF4(uint64_t a1)
{
  v2 = type metadata accessor for CommandConnection.RecentErrors.Error.Kind(0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  v5 = v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for CommandConnection.RecentErrors.Error(0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v11 = v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = _swiftEmptySetSingleton;
  v21 = _swiftEmptySetSingleton;
  v13 = *(a1 + 16);
  if (v13)
  {
    v14 = *(v8 + 20);
    v15 = a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
    v16 = *(v9 + 72);
    do
    {
      sub_1002076F0(v15, v11, type metadata accessor for CommandConnection.RecentErrors.Error);
      sub_1002076F0(&v11[v14], v5, type metadata accessor for CommandConnection.RecentErrors.Error.Kind);
      if (swift_getEnumCaseMultiPayload())
      {
        sub_100207758(v11, type metadata accessor for CommandConnection.RecentErrors.Error);
        v17 = type metadata accessor for CommandConnection.RecentErrors.Error.Kind;
        v18 = v5;
      }

      else
      {
        sub_1001FF578(v20, *v5, *(v5 + 1), *(v5 + 2));
        sub_100191E44(v20[0], v20[1], v20[2]);
        v17 = type metadata accessor for CommandConnection.RecentErrors.Error;
        v18 = v11;
      }

      sub_100207758(v18, v17);
      v15 += v16;
      --v13;
    }

    while (v13);
    return v21;
  }

  return v12;
}

uint64_t sub_1001FEDFC(uint64_t a1)
{
  v2 = type metadata accessor for CommandConnection.RecentErrors.Error.Kind(0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  v5 = (&v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = type metadata accessor for CommandConnection.RecentErrors.Error(0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a1 + 16);
  if (v12)
  {
    v13 = *(v8 + 20);
    v14 = a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
    v15 = *(v9 + 72);
    do
    {
      sub_1002076F0(v14, v11, type metadata accessor for CommandConnection.RecentErrors.Error);
      sub_100207668(&v11[v13], v5, type metadata accessor for CommandConnection.RecentErrors.Error.Kind);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v16 = *v5;
        v17 = v5[2];
        v18 = ~*v5 & 0xF000000000000007;

        if (v18)
        {
          v19 = __ROR8__(v16 + 0x7FFFFFFFFFFFFF94, 3);
          v20 = ((v16 >> 59) & 0x1E | (v16 >> 2) & 1) != 0x11 || v19 >= 0xF;
          if (!v20 && ((0x6E27u >> v19) & 1) != 0)
          {
            return 1;
          }

          sub_10001114C(v16);
        }
      }

      else
      {
        sub_100207758(v5, type metadata accessor for CommandConnection.RecentErrors.Error.Kind);
      }

      v14 += v15;
      --v12;
    }

    while (v12);
  }

  return 0;
}

BOOL sub_1001FF004(uint64_t a1)
{
  v2 = type metadata accessor for CommandConnection.RecentErrors.Error.Kind(0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for CommandConnection.RecentErrors.Error(0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a1 + 16);
  if (!v11)
  {
    return 0;
  }

  v12 = a1 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
  v13 = *(v8 + 72);
  v14 = v11 - 1;
  do
  {
    v15 = v14;
    sub_1002076F0(v12, v10, type metadata accessor for CommandConnection.RecentErrors.Error);
    sub_100207668(&v10[*(v6 + 20)], v5, type metadata accessor for CommandConnection.RecentErrors.Error.Kind);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    sub_100207758(v5, type metadata accessor for CommandConnection.RecentErrors.Error.Kind);
    result = EnumCaseMultiPayload == 2;
    if (EnumCaseMultiPayload == 2)
    {
      break;
    }

    v14 = v15 - 1;
    v12 += v13;
  }

  while (v15);
  return result;
}

BOOL sub_1001FF1B8(uint64_t a1)
{
  v2 = type metadata accessor for CommandConnection.RecentErrors.Error.Kind(0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for CommandConnection.RecentErrors.Error(0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a1 + 16);
  if (!v11)
  {
    return 0;
  }

  v12 = a1 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
  v13 = *(v8 + 72);
  v14 = v11 - 1;
  do
  {
    v15 = v14;
    sub_1002076F0(v12, v10, type metadata accessor for CommandConnection.RecentErrors.Error);
    sub_100207668(&v10[*(v6 + 20)], v5, type metadata accessor for CommandConnection.RecentErrors.Error.Kind);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    sub_100207758(v5, type metadata accessor for CommandConnection.RecentErrors.Error.Kind);
    result = EnumCaseMultiPayload == 3;
    if (EnumCaseMultiPayload == 3)
    {
      break;
    }

    v14 = v15 - 1;
    v12 += v13;
  }

  while (v15);
  return result;
}

uint64_t CommandConnection.RecentErrors.containsAuthenticationFailure.getter(uint64_t a1)
{
  v2 = type metadata accessor for CommandConnection.RecentErrors.Error.Kind(0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for CommandConnection.RecentErrors.Error(0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a1 + 16);
  if (v11)
  {
    v12 = a1 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v13 = *(v8 + 72);
    do
    {
      sub_1002076F0(v12, v10, type metadata accessor for CommandConnection.RecentErrors.Error);
      sub_1002076F0(&v10[*(v6 + 20)], v5, type metadata accessor for CommandConnection.RecentErrors.Error.Kind);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if ((EnumCaseMultiPayload - 1) < 5)
      {
        sub_100207758(v5, type metadata accessor for CommandConnection.RecentErrors.Error.Kind);
      }

      else if (EnumCaseMultiPayload != 6)
      {
        sub_100207758(v5, type metadata accessor for CommandConnection.RecentErrors.Error.Kind);
        sub_100207758(v10, type metadata accessor for CommandConnection.RecentErrors.Error);
        return 1;
      }

      sub_100207758(v10, type metadata accessor for CommandConnection.RecentErrors.Error);
      v12 += v13;
      --v11;
    }

    while (v11);
  }

  return 0;
}

uint64_t sub_1001FF578(unint64_t *a1, unint64_t a2, unint64_t a3, uint64_t a4)
{
  v8 = *v4;
  v9 = *(*v4 + 40);
  sub_1004A6E94();
  v24 = a1;
  v23 = v4;
  if (a4 > 1)
  {
    if (a4 == 2)
    {
      sub_1004A6EB4(3uLL);
      goto LABEL_14;
    }

    if (a4 == 3)
    {
      sub_1004A6EB4(4uLL);
      goto LABEL_14;
    }

LABEL_8:
    sub_1004A6EB4(0);
    if ((~a2 & 0xF000000000000007) != 0)
    {
      sub_1004A6EC4(1u);
      ResponseTextCode.hash(into:)(v26, a2);
    }

    else
    {
      sub_1004A6EC4(0);
    }

    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
    goto LABEL_14;
  }

  if (!a4)
  {
    sub_1004A6EB4(1uLL);
    goto LABEL_14;
  }

  if (a4 != 1)
  {
    goto LABEL_8;
  }

  sub_1004A6EB4(2uLL);
LABEL_14:
  v10 = sub_1004A6F14();
  v11 = -1 << *(v8 + 32);
  v12 = v10 & ~v11;
  if (((*(v8 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
  {
LABEL_32:
    v19 = *v23;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v26[0] = *v23;
    sub_1001978DC(a2, a3, a4);
    sub_100202F4C(a2, a3, a4, v12, isUniquelyReferenced_nonNull_native);
    *v23 = v26[0];
    *v24 = a2;
    v24[1] = a3;
    v24[2] = a4;
    return 1;
  }

  v13 = ~v11;
  while (1)
  {
    v14 = (*(v8 + 48) + 24 * v12);
    v15 = *v14;
    v16 = v14[1];
    v17 = v14[2];
    if (v17 > 1)
    {
      break;
    }

    if (v17)
    {
      if (v17 != 1)
      {
        goto LABEL_27;
      }

      if (a4 == 1)
      {
        goto LABEL_33;
      }
    }

    else if (!a4)
    {
      goto LABEL_33;
    }

LABEL_17:
    v12 = (v12 + 1) & v13;
    if (((*(v8 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
    {
      goto LABEL_32;
    }
  }

  if (v17 == 2)
  {
    if (a4 == 2)
    {
      goto LABEL_33;
    }

    goto LABEL_17;
  }

  if (v17 == 3)
  {
    if (a4 == 3)
    {
      goto LABEL_33;
    }

    goto LABEL_17;
  }

LABEL_27:
  if (a4 < 4)
  {
    goto LABEL_17;
  }

  sub_1000110B0(*v14);

  v18 = static ResponseText.__derived_struct_equals(_:_:)(v15, v16);
  sub_100191E44(v15, v16, v17);
  if ((v18 & 1) == 0)
  {
    goto LABEL_17;
  }

  sub_100191E44(a2, a3, a4);
  v22 = (*(v8 + 48) + 24 * v12);
  v15 = *v22;
  v16 = v22[1];
  v17 = v22[2];
LABEL_33:
  *v24 = v15;
  v24[1] = v16;
  v24[2] = v17;
  sub_1001978DC(v15, v16, v17);
  return 0;
}

uint64_t sub_1001FF838(__int128 *a1, __int128 *a2)
{
  v3 = a2;
  v4 = a2[3];
  v272 = a2[2];
  v273 = v4;
  v274 = a2[4];
  v5 = a2[1];
  v270 = *a2;
  v271 = v5;
  v248 = *v2;
  v6 = *(*v2 + 40);
  sub_1004A6E94();
  v8 = *v3;
  v7 = *(v3 + 1);
  v10 = *(v3 + 2);
  v9 = *(v3 + 3);
  v11 = *(v3 + 7);
  if ((v11 & 0x1000000000000000) != 0)
  {
    v12 = *(v3 + 6);
    v262 = *v3;
    v263 = v7;
    v264 = v10;
    v265 = v9;
    v266 = v3[2];
    v267 = v12;
    v268 = v11 & 0xEFFFFFFFFFFFFFFFLL;
    v269 = v3[4];
    sub_1004A6EB4(1uLL);
    sub_1001EEF30();
  }

  else
  {
    sub_1004A6EB4(0);
    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  }

  v13 = sub_1004A6F14();
  v14 = v248;
  v15 = v248 + 56;
  v16 = -1 << *(v248 + 32);
  v17 = v13 & ~v16;
  if (((*(v248 + 56 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
  {
LABEL_410:
    v209 = *v246;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v252 = *v246;
    sub_10019782C(v3, &v257);
    sub_10020320C(v3, v17, isUniquelyReferenced_nonNull_native);
    *v246 = v252;
    v211 = v3[3];
    a1[2] = v3[2];
    a1[3] = v211;
    a1[4] = v3[4];
    v212 = v3[1];
    result = 1;
    *a1 = *v3;
    a1[1] = v212;
    return result;
  }

  v18 = ~v16;
  v249 = ~v16;
  while (1)
  {
    v19 = (*(v14 + 48) + 80 * v17);
    v257 = *v19;
    v21 = v19[3];
    v20 = v19[4];
    v22 = v19[2];
    v258 = v19[1];
    v259 = v22;
    v260 = v21;
    v261 = v20;
    v23 = *(&v257 + 1);
    v24 = *(&v258 + 1);
    v25 = v258;
    v26 = *(&v21 + 1);
    if ((*(&v21 + 1) & 0x1000000000000000) == 0)
    {
      if ((*(v3 + 63) & 0x10) != 0)
      {
        goto LABEL_10;
      }

      v27 = *(v3 + 2);
      v28 = *(v3 + 3);
      if (v257 != *v3 && (sub_1004A6D34() & 1) == 0)
      {
        goto LABEL_9;
      }

      if (v25 == v27 && v24 == v28)
      {
        goto LABEL_413;
      }

      v29 = sub_1004A6D34();
      v18 = v249;
      v15 = v248 + 56;
      if (v29)
      {
        goto LABEL_413;
      }

      goto LABEL_10;
    }

    v30 = *(v3 + 7);
    if ((v30 & 0x1000000000000000) == 0)
    {
      goto LABEL_10;
    }

    v31 = *(&v261 + 1);
    v33 = *v3;
    v32 = *(v3 + 1);
    v34 = *(v3 + 2);
    v35 = *(v3 + 3);
    v36 = *(v3 + 9);
    v37 = (*(&v261 + 1) >> 59) & 6 | ((*(&v260 + 1) & 0x2000000000000000) != 0);
    if (v37 <= 2)
    {
      break;
    }

    if (v37 > 4)
    {
      v40 = (v30 >> 61) & 1;
      v41 = v36 >> 59;
      if (v37 == 5)
      {
        if ((v41 & 6 | v40) != 5)
        {
          goto LABEL_10;
        }
      }

      else if ((v41 & 6 | v40) != 6)
      {
        goto LABEL_10;
      }

LABEL_59:
      if (v257 == __PAIR128__(v32, v33))
      {
        goto LABEL_465;
      }

      v49 = *(v3 + 2);
      v50 = *v3;
      v51 = *(v3 + 3);
      v52 = *(v3 + 1);
      v53 = sub_1004A6D34();
      v34 = v49;
      v35 = v51;
      v18 = v249;
      v15 = v248 + 56;
      if (v53)
      {
LABEL_465:
        if (v25 == v34 && v24 == v35)
        {
          goto LABEL_413;
        }

        v54 = sub_1004A6D34();
        v18 = v249;
        v15 = v248 + 56;
        if (v54)
        {
          goto LABEL_413;
        }
      }

      goto LABEL_10;
    }

    if (v37 == 3)
    {
      if (((v36 >> 59) & 6 | ((v30 & 0x2000000000000000) != 0)) != 3)
      {
        goto LABEL_10;
      }

      goto LABEL_59;
    }

    if (((v36 >> 59) & 6 | ((v30 & 0x2000000000000000) != 0)) != 4)
    {
      goto LABEL_10;
    }

    v46 = *(&v257 + 1) >> 62;
    v47 = v32 >> 62;
    if (*(&v257 + 1) >> 62 == 3)
    {
      v48 = 0;
      if (v257 == __PAIR128__(0xC000000000000000, 0) && v32 >> 62 == 3)
      {
        v48 = 0;
        if (!v33 && v32 == 0xC000000000000000)
        {
          goto LABEL_163;
        }
      }

      goto LABEL_151;
    }

    if (v46 > 1)
    {
      if (v46 != 2)
      {
        v48 = 0;
        if (v47 > 1)
        {
LABEL_74:
          if (v47 == 2)
          {
            v56 = *(v33 + 16);
            v55 = *(v33 + 24);
            v57 = __OFSUB__(v55, v56);
            v58 = v55 - v56;
            if (v57)
            {
              goto LABEL_418;
            }

LABEL_154:
            v14 = v248;
            if (v48 != v58)
            {
              goto LABEL_10;
            }

LABEL_158:
            if (v48 >= 1)
            {
              v238 = *(v3 + 3);
              if (v46 > 1)
              {
                v235 = *(v3 + 2);
                if (v46 == 2)
                {
                  v103 = *(v257 + 16);
                  v104 = *(v257 + 24);
                  v105 = *(v3 + 1);
                  v106 = *v3;
                  sub_100014CEC(v33, v32);
                  sub_100014CEC(v106, v105);
                  sub_10019782C(&v257, &v252);
                  sub_100014CEC(v106, v105);
                  v107 = sub_10003A0DC(v103, v104, v23 & 0x3FFFFFFFFFFFFFFFLL, v106, v105);
                  sub_100014D40(v106, v105);
                  sub_100014D40(v106, v105);
                  v108 = v106;
                  v109 = v105;
                  goto LABEL_276;
                }

                *&v251[6] = 0;
                *v251 = 0;
                v154 = v32;
                v155 = v33;
                sub_100014CEC(v33, v32);
                sub_10019782C(&v257, &v252);
                sub_100014CEC(v155, v154);
                sub_100066884(v251, v155, v154, &v252);
                sub_100014D40(v155, v154);
                sub_100014D40(v155, v154);
                v93 = v235;
                v92 = v238;
                if ((v252 & 1) == 0)
                {
                  goto LABEL_7;
                }
              }

              else
              {
                if (!v46)
                {
                  v89 = *(v3 + 2);
                  *v251 = v257;
                  *&v251[8] = WORD4(v257);
                  *&v251[10] = *(&v257 + 10);
                  v90 = v32;
                  v91 = v33;
                  sub_100014CEC(v33, v32);
                  sub_10019782C(&v257, &v252);
                  sub_100014CEC(v91, v90);
                  sub_100066884(v251, v91, v90, &v252);
                  sub_100014D40(v91, v90);
                  sub_100014D40(v91, v90);
                  v92 = v238;
                  v93 = v89;
                  if ((v252 & 1) == 0)
                  {
                    goto LABEL_7;
                  }

                  goto LABEL_164;
                }

                v235 = *(v3 + 2);
                v150 = v257;
                v151 = v257 >> 32;
                if (v257 >> 32 < v257)
                {
                  goto LABEL_442;
                }

                v152 = *(v3 + 1);
                v153 = *v3;
                sub_100014CEC(v33, v32);
                sub_100014CEC(v153, v152);
                sub_10019782C(&v257, &v252);
                sub_100014CEC(v153, v152);
                v107 = sub_10003A0DC(v150, v151, v23 & 0x3FFFFFFFFFFFFFFFLL, v153, v152);
                sub_100014D40(v153, v152);
                sub_100014D40(v153, v152);
                v108 = v153;
                v109 = v152;
LABEL_276:
                sub_100014D40(v108, v109);
                v93 = v235;
                v92 = v238;
                if ((v107 & 1) == 0)
                {
                  goto LABEL_7;
                }
              }

LABEL_164:
              v95 = v24 >> 62;
              v96 = v92 >> 62;
              if (v24 >> 62 == 3)
              {
                v97 = 0;
                if (!v25 && v24 == 0xC000000000000000 && v92 >> 62 == 3)
                {
                  v97 = 0;
                  if (!v93 && v92 == 0xC000000000000000)
                  {
                    goto LABEL_411;
                  }
                }
              }

              else if (v95 == 2)
              {
                v133 = *(v25 + 16);
                v132 = *(v25 + 24);
                v57 = __OFSUB__(v132, v133);
                v97 = v132 - v133;
                if (v57)
                {
                  goto LABEL_437;
                }
              }

              else if (v95 == 1)
              {
                LODWORD(v97) = HIDWORD(v25) - v25;
                if (__OFSUB__(HIDWORD(v25), v25))
                {
                  goto LABEL_438;
                }

                v97 = v97;
              }

              else
              {
                v97 = BYTE6(v24);
              }

              if (v96 > 1)
              {
                if (v96 != 2)
                {
                  goto LABEL_6;
                }

                v136 = *(v93 + 16);
                v135 = *(v93 + 24);
                v57 = __OFSUB__(v135, v136);
                v134 = v135 - v136;
                if (v57)
                {
                  goto LABEL_429;
                }
              }

              else if (v96)
              {
                LODWORD(v134) = HIDWORD(v93) - v93;
                if (__OFSUB__(HIDWORD(v93), v93))
                {
                  goto LABEL_428;
                }

                v134 = v134;
              }

              else
              {
                v134 = BYTE6(v92);
              }

              if (v97 != v134)
              {
                goto LABEL_7;
              }

              if (v97 < 1)
              {
                goto LABEL_411;
              }

              v137 = v93;
              sub_100014CEC(v93, v92);
              v138 = v25;
              v139 = v24;
              v140 = v137;
              v141 = v92;
              goto LABEL_246;
            }
          }

          else if (v48)
          {
            goto LABEL_118;
          }

LABEL_163:
          v254 = v259;
          *&v255 = v260;
          v256 = v261;
          v252 = v257;
          v253 = v258;
          *(&v255 + 1) = *(&v260 + 1) & 0xEFFFFFFFFFFFFFFFLL;
          v92 = v35;
          v94 = v34;
          sub_1001915E8(&v252, v251);
          v93 = v94;
          goto LABEL_164;
        }

        goto LABEL_152;
      }

      v64 = *(v257 + 16);
      v63 = *(v257 + 24);
      v57 = __OFSUB__(v63, v64);
      v48 = v63 - v64;
      if (v57)
      {
        goto LABEL_424;
      }

      goto LABEL_151;
    }

    if (v46)
    {
      LODWORD(v48) = DWORD1(v257) - v257;
      if (__OFSUB__(DWORD1(v257), v257))
      {
        goto LABEL_426;
      }

      v48 = v48;
LABEL_151:
      if (v47 > 1)
      {
        goto LABEL_74;
      }

      goto LABEL_152;
    }

    v48 = BYTE14(v257);
    if (v47 > 1)
    {
      goto LABEL_74;
    }

LABEL_152:
    if (!v47)
    {
      v58 = BYTE6(v32);
      goto LABEL_154;
    }

    v14 = v248;
    if (__OFSUB__(HIDWORD(v33), v33))
    {
      goto LABEL_416;
    }

    if (v48 == HIDWORD(v33) - v33)
    {
      goto LABEL_158;
    }

LABEL_10:
    v17 = (v17 + 1) & v18;
    if (((*(v15 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
    {
      goto LABEL_410;
    }
  }

  if (v37)
  {
    if (v37 == 1)
    {
      if (((v36 >> 59) & 6 | ((v30 & 0x2000000000000000) != 0)) != 1)
      {
        goto LABEL_10;
      }

      v240 = v260;
      v241 = *(v3 + 4);
      v242 = v259;
      v243 = *(v3 + 5);
      v244 = *(&v259 + 1);
      v38 = *(&v257 + 1) >> 62;
      if (*(&v257 + 1) >> 62 == 3)
      {
        v39 = 0;
        if (v257 == __PAIR128__(0xC000000000000000, 0) && v32 >> 62 == 3)
        {
          v39 = 0;
          if (!v33 && v32 == 0xC000000000000000)
          {
            goto LABEL_119;
          }
        }
      }

      else if (v38 > 1)
      {
        if (v38 == 2)
        {
          v60 = *(v257 + 16);
          v59 = *(v257 + 24);
          v57 = __OFSUB__(v59, v60);
          v39 = v59 - v60;
          if (v57)
          {
            goto LABEL_422;
          }
        }

        else
        {
          v39 = 0;
        }
      }

      else if (v38)
      {
        LODWORD(v39) = DWORD1(v257) - v257;
        if (__OFSUB__(DWORD1(v257), v257))
        {
          goto LABEL_423;
        }

        v39 = v39;
      }

      else
      {
        v39 = BYTE14(v257);
      }

      v67 = v32 >> 62;
      if ((v32 >> 62) > 1)
      {
        if (v67 == 2)
        {
          v70 = *(v33 + 16);
          v69 = *(v33 + 24);
          v57 = __OFSUB__(v69, v70);
          v68 = v69 - v70;
          if (v57)
          {
            goto LABEL_419;
          }

LABEL_109:
          v14 = v248;
          if (v39 != v68)
          {
            goto LABEL_10;
          }

LABEL_113:
          if (v39 >= 1)
          {
            v234 = *(v3 + 2);
            v237 = *(v3 + 3);
            v230 = *(v3 + 6);
            v231 = *(v3 + 1);
            v225 = *v3;
            v227 = v261;
            v228 = *(v3 + 9);
            v229 = *(v3 + 8);
            if (v38 <= 1)
            {
              if (!v38)
              {
                *v251 = v257;
                *&v251[8] = WORD4(v257);
                *&v251[10] = *(&v257 + 10);
                v71 = v32;
                v72 = v33;
                sub_100014CEC(v33, v32);
                sub_10019782C(&v257, &v252);
                sub_100014CEC(v72, v71);
                goto LABEL_272;
              }

              v221 = v257;
              v224 = v257 >> 32;
              if (v257 >> 32 < v257)
              {
                goto LABEL_441;
              }

              v149 = *v3;
              sub_100014CEC(v33, v32);
              sub_100014CEC(v149, v231);
              sub_10019782C(&v257, &v252);
              sub_100014CEC(v149, v231);
              v223 = sub_10003A0DC(v221, v224, v23 & 0x3FFFFFFFFFFFFFFFLL, v225, v231);
              sub_100014D40(v225, v231);
              sub_100014D40(v225, v231);
              v101 = v225;
              v102 = v231;
LABEL_269:
              sub_100014D40(v101, v102);
              v75 = v234;
              v76 = v237;
              if (v223)
              {
                goto LABEL_120;
              }

LABEL_7:
              sub_100193BF0(&v257);
LABEL_8:
              v14 = v248;
LABEL_9:
              v18 = v249;
              v15 = v248 + 56;
              goto LABEL_10;
            }

            if (v38 == 2)
            {
              v220 = *(v257 + 24);
              v222 = *(v257 + 16);
              v100 = *v3;
              sub_100014CEC(v33, v32);
              sub_100014CEC(v100, v231);
              sub_10019782C(&v257, &v252);
              sub_100014CEC(v100, v231);
              v223 = sub_10003A0DC(v222, v220, v23 & 0x3FFFFFFFFFFFFFFFLL, v225, v231);
              sub_100014D40(v225, v231);
              sub_100014D40(v225, v231);
              v101 = v225;
              v102 = v231;
              goto LABEL_269;
            }

            *&v251[6] = 0;
            *v251 = 0;
            v71 = v32;
            v72 = v33;
            sub_100014CEC(v33, v32);
            sub_10019782C(&v257, &v252);
            sub_100014CEC(v72, v71);
LABEL_272:
            sub_100066884(v251, v72, v71, &v252);
            sub_100014D40(v72, v231);
            sub_100014D40(v225, v231);
            v75 = v234;
            v76 = v237;
            if ((v252 & 1) == 0)
            {
              goto LABEL_7;
            }

LABEL_120:
            v77 = v24 >> 62;
            if (v24 >> 62 == 3)
            {
              v78 = 0;
              if (v25)
              {
                goto LABEL_251;
              }

              if (v24 != 0xC000000000000000)
              {
                goto LABEL_251;
              }

              if (v76 >> 62 != 3)
              {
                goto LABEL_251;
              }

              v78 = 0;
              if (v75 || v76 != 0xC000000000000000)
              {
                goto LABEL_251;
              }

LABEL_325:
              v178 = v244 >> 62;
              v179 = v243 >> 62;
              if (v244 >> 62 == 3)
              {
                v180 = 0;
                v181 = v242;
                if (v242)
                {
                  goto LABEL_340;
                }

                if (v244 != 0xC000000000000000)
                {
                  goto LABEL_340;
                }

                if (v243 >> 62 != 3)
                {
                  goto LABEL_340;
                }

                v180 = 0;
                if (v241 || v243 != 0xC000000000000000)
                {
                  goto LABEL_340;
                }
              }

              else
              {
                v181 = v242;
                if (v178 == 2)
                {
                  v183 = *(v242 + 16);
                  v182 = *(v242 + 24);
                  v57 = __OFSUB__(v182, v183);
                  v180 = v182 - v183;
                  if (v57)
                  {
                    goto LABEL_450;
                  }
                }

                else if (v178 == 1)
                {
                  LODWORD(v180) = HIDWORD(v242) - v242;
                  if (__OFSUB__(HIDWORD(v242), v242))
                  {
                    goto LABEL_449;
                  }

                  v180 = v180;
                }

                else
                {
                  v180 = BYTE6(v244);
                }

LABEL_340:
                if (v179 > 1)
                {
                  if (v179 != 2)
                  {
                    if (v180)
                    {
                      goto LABEL_7;
                    }

                    goto LABEL_354;
                  }

                  v186 = *(v241 + 16);
                  v185 = *(v241 + 24);
                  v57 = __OFSUB__(v185, v186);
                  v184 = v185 - v186;
                  if (v57)
                  {
                    goto LABEL_443;
                  }
                }

                else if (v179)
                {
                  LODWORD(v184) = HIDWORD(v241) - v241;
                  if (__OFSUB__(HIDWORD(v241), v241))
                  {
                    goto LABEL_444;
                  }

                  v184 = v184;
                }

                else
                {
                  v184 = BYTE6(v243);
                }

                if (v180 != v184)
                {
                  goto LABEL_7;
                }

                if (v180 >= 1)
                {
                  sub_100014CEC(v241, v243);
                  if ((sub_100039F4C(v181, v244, v241, v243) & 1) == 0)
                  {
                    goto LABEL_7;
                  }
                }
              }

LABEL_354:
              v187 = v26 & 0xCFFFFFFFFFFFFFFFLL;
              v188 = v30 & 0xCFFFFFFFFFFFFFFFLL;
              v189 = v26 >> 62;
              v190 = v30 >> 62;
              if (v26 >> 62 == 3)
              {
                v191 = 0;
                v192 = v240;
                if (v240)
                {
                  goto LABEL_369;
                }

                if (v187 != 0xC000000000000000)
                {
                  goto LABEL_369;
                }

                if (v30 >> 62 != 3)
                {
                  goto LABEL_369;
                }

                v191 = 0;
                if (v230 || v188 != 0xC000000000000000)
                {
                  goto LABEL_369;
                }
              }

              else
              {
                if (v189 == 2)
                {
                  v192 = v240;
                  v194 = *(v240 + 16);
                  v193 = *(v240 + 24);
                  v57 = __OFSUB__(v193, v194);
                  v191 = v193 - v194;
                  if (v57)
                  {
                    goto LABEL_458;
                  }
                }

                else if (v189 == 1)
                {
                  v192 = v240;
                  LODWORD(v191) = HIDWORD(v240) - v240;
                  if (__OFSUB__(HIDWORD(v240), v240))
                  {
                    goto LABEL_457;
                  }

                  v191 = v191;
                }

                else
                {
                  v191 = BYTE6(v26);
                  v192 = v240;
                }

LABEL_369:
                if (v190 > 1)
                {
                  if (v190 != 2)
                  {
                    if (v191)
                    {
                      goto LABEL_7;
                    }

                    goto LABEL_383;
                  }

                  v197 = *(v230 + 16);
                  v196 = *(v230 + 24);
                  v57 = __OFSUB__(v196, v197);
                  v195 = v196 - v197;
                  if (v57)
                  {
                    goto LABEL_455;
                  }
                }

                else if (v190)
                {
                  LODWORD(v195) = HIDWORD(v230) - v230;
                  if (__OFSUB__(HIDWORD(v230), v230))
                  {
                    goto LABEL_456;
                  }

                  v195 = v195;
                }

                else
                {
                  v195 = BYTE6(v30);
                }

                if (v191 != v195)
                {
                  goto LABEL_7;
                }

                if (v191 >= 1)
                {
                  sub_100014CEC(v230, v30 & 0xCFFFFFFFFFFFFFFFLL);
                  if ((sub_100039F4C(v192, v187, v230, v188) & 1) == 0)
                  {
                    goto LABEL_7;
                  }
                }
              }

LABEL_383:
              v198 = v31 & 0xCFFFFFFFFFFFFFFFLL;
              v199 = v31 >> 62;
              v200 = v228 >> 62;
              if (v31 >> 62 == 3)
              {
                v97 = 0;
                v201 = v227;
                if (!v227 && v198 == 0xC000000000000000 && v228 >> 62 == 3)
                {
                  v97 = 0;
                  if (!v229 && (v228 & 0xCFFFFFFFFFFFFFFFLL) == 0xC000000000000000)
                  {
                    goto LABEL_411;
                  }
                }
              }

              else if (v199 == 2)
              {
                v201 = v227;
                v203 = *(v227 + 16);
                v202 = *(v227 + 24);
                v57 = __OFSUB__(v202, v203);
                v97 = v202 - v203;
                if (v57)
                {
                  goto LABEL_462;
                }
              }

              else if (v199 == 1)
              {
                LODWORD(v97) = HIDWORD(v227) - v227;
                if (__OFSUB__(HIDWORD(v227), v227))
                {
                  __break(1u);
LABEL_462:
                  __break(1u);
                  sub_100193BF0(v3);
                  sub_100193BF0(v3);
                  v254 = v272;
                  *&v255 = v273;
                  v256 = v274;
                  v252 = v270;
                  v253 = v271;
                  *(&v255 + 1) = *(&v273 + 1) & 0xEFFFFFFFFFFFFFFFLL;
                  sub_1001B4100(&v252);

                  __break(1u);
                  return result;
                }

                v201 = v227;
                v97 = v97;
              }

              else
              {
                v201 = v227;
                v97 = BYTE6(v31);
              }

              if (v200 <= 1)
              {
                v204 = v229;
                if (v200)
                {
                  LODWORD(v205) = HIDWORD(v229) - v229;
                  if (__OFSUB__(HIDWORD(v229), v229))
                  {
                    goto LABEL_460;
                  }

                  v205 = v205;
                }

                else
                {
                  v205 = BYTE6(v228);
                }

LABEL_407:
                if (v97 != v205)
                {
                  goto LABEL_7;
                }

                if (v97 < 1)
                {
                  goto LABEL_411;
                }

                v208 = v204;
                sub_100014CEC(v204, v228 & 0xCFFFFFFFFFFFFFFFLL);
                v138 = v201;
                v139 = v198;
                v140 = v208;
                v141 = v228 & 0xCFFFFFFFFFFFFFFFLL;
LABEL_246:
                v142 = sub_100039F4C(v138, v139, v140, v141);
                sub_100193BF0(&v257);
                if (v142)
                {
                  goto LABEL_412;
                }

                goto LABEL_8;
              }

              v204 = v229;
              if (v200 == 2)
              {
                v207 = *(v229 + 16);
                v206 = *(v229 + 24);
                v57 = __OFSUB__(v206, v207);
                v205 = v206 - v207;
                if (v57)
                {
                  goto LABEL_459;
                }

                goto LABEL_407;
              }

LABEL_6:
              if (!v97)
              {
                goto LABEL_411;
              }

              goto LABEL_7;
            }

            if (v77 > 1)
            {
              if (v77 == 2)
              {
                v99 = *(v25 + 16);
                v98 = *(v25 + 24);
                v57 = __OFSUB__(v98, v99);
                v78 = v98 - v99;
                if (v57)
                {
                  goto LABEL_439;
                }
              }

              else
              {
                v78 = 0;
              }
            }

            else if (v77)
            {
              LODWORD(v78) = HIDWORD(v25) - v25;
              if (__OFSUB__(HIDWORD(v25), v25))
              {
                goto LABEL_440;
              }

              v78 = v78;
            }

            else
            {
              v78 = BYTE6(v24);
            }

LABEL_251:
            v143 = v76 >> 62;
            if ((v76 >> 62) > 1)
            {
              if (v143 != 2)
              {
                if (v78)
                {
                  goto LABEL_7;
                }

                goto LABEL_325;
              }

              v146 = *(v75 + 16);
              v145 = *(v75 + 24);
              v57 = __OFSUB__(v145, v146);
              v144 = v145 - v146;
              if (v57)
              {
                goto LABEL_431;
              }
            }

            else if (v143)
            {
              LODWORD(v144) = HIDWORD(v75) - v75;
              if (__OFSUB__(HIDWORD(v75), v75))
              {
                goto LABEL_430;
              }

              v144 = v144;
            }

            else
            {
              v144 = BYTE6(v76);
            }

            if (v78 != v144)
            {
              goto LABEL_7;
            }

            if (v78 < 1)
            {
              goto LABEL_325;
            }

            if (v77 > 1)
            {
              if (v77 != 2)
              {
                *(&v252 + 6) = 0;
                *&v252 = 0;
                v147 = v76;
                v148 = v75;
                sub_100014CEC(v75, v76);
                sub_100014CEC(v148, v147);
LABEL_324:
                sub_100066884(&v252, v148, v147, v251);
                sub_100014D40(v148, v147);
                sub_100014D40(v148, v147);
                if ((v251[0] & 1) == 0)
                {
                  goto LABEL_7;
                }

                goto LABEL_325;
              }

              v156 = *(v25 + 24);
              v233 = *(v25 + 16);
            }

            else
            {
              if (!v77)
              {
                *&v252 = v25;
                WORD4(v252) = v24;
                BYTE10(v252) = BYTE2(v24);
                BYTE11(v252) = BYTE3(v24);
                BYTE12(v252) = BYTE4(v24);
                BYTE13(v252) = BYTE5(v24);
                v147 = v76;
                v148 = v75;
                sub_100014CEC(v75, v76);
                sub_100014CEC(v148, v147);
                goto LABEL_324;
              }

              v156 = v25 >> 32;
              v233 = v25;
              if (v25 >> 32 < v25)
              {
                goto LABEL_454;
              }
            }

            v175 = v76;
            v176 = v75;
            sub_100014CEC(v75, v76);
            sub_100014CEC(v176, v175);
            sub_100014CEC(v176, v175);
            v177 = sub_10003A0DC(v233, v156, v24 & 0x3FFFFFFFFFFFFFFFLL, v176, v175);
            sub_100014D40(v176, v175);
            sub_100014D40(v176, v175);
            sub_100014D40(v176, v175);
            if ((v177 & 1) == 0)
            {
              goto LABEL_7;
            }

            goto LABEL_325;
          }
        }

        else if (v39)
        {
LABEL_118:
          v14 = v248;
          goto LABEL_10;
        }

LABEL_119:
        v229 = *(v3 + 8);
        v230 = *(v3 + 6);
        v227 = v261;
        v228 = *(v3 + 9);
        v254 = v259;
        *&v255 = v260;
        v256 = v261;
        v252 = v257;
        v253 = v258;
        *(&v255 + 1) = *(&v260 + 1) & 0xEFFFFFFFFFFFFFFFLL;
        v73 = v35;
        v74 = v34;
        sub_1001915E8(&v252, v251);
        v75 = v74;
        v76 = v73;
        goto LABEL_120;
      }

      if (!v67)
      {
        v68 = BYTE6(v32);
        goto LABEL_109;
      }

      v14 = v248;
      if (__OFSUB__(HIDWORD(v33), v33))
      {
        goto LABEL_417;
      }

      if (v39 == HIDWORD(v33) - v33)
      {
        goto LABEL_113;
      }
    }

    else
    {
      if (((v36 >> 59) & 6 | ((v30 & 0x2000000000000000) != 0)) != 2)
      {
        goto LABEL_10;
      }

      v44 = *(&v257 + 1) >> 62;
      if (*(&v257 + 1) >> 62 == 3)
      {
        v45 = 0;
        if (v257 == __PAIR128__(0xC000000000000000, 0) && v32 >> 62 == 3)
        {
          v45 = 0;
          if (!v33 && v32 == 0xC000000000000000)
          {
            goto LABEL_413;
          }
        }
      }

      else if (v44 > 1)
      {
        if (v44 == 2)
        {
          v62 = *(v257 + 16);
          v61 = *(v257 + 24);
          v57 = __OFSUB__(v61, v62);
          v45 = v61 - v62;
          if (v57)
          {
            goto LABEL_425;
          }
        }

        else
        {
          v45 = 0;
        }
      }

      else if (v44)
      {
        LODWORD(v45) = DWORD1(v257) - v257;
        if (__OFSUB__(DWORD1(v257), v257))
        {
          goto LABEL_427;
        }

        v45 = v45;
      }

      else
      {
        v45 = BYTE14(v257);
      }

      v79 = v32 >> 62;
      if ((v32 >> 62) <= 1)
      {
        if (v79)
        {
          if (__OFSUB__(HIDWORD(v33), v33))
          {
            goto LABEL_415;
          }

          if (v45 != HIDWORD(v33) - v33)
          {
            goto LABEL_10;
          }
        }

        else if (v45 != BYTE6(v32))
        {
          goto LABEL_10;
        }

LABEL_141:
        if (v45 < 1)
        {
          goto LABEL_413;
        }

        if (v44 <= 1)
        {
          if (!v44)
          {
            *v251 = v257;
            *&v251[8] = DWORD2(v257);
            *&v251[12] = WORD6(v257);
            v83 = v32;
            v84 = v33;
            sub_10019782C(v3, &v252);
            sub_10019782C(v3, &v252);
            sub_10019782C(&v257, &v252);
            v85 = v84;
            goto LABEL_219;
          }

          v87 = v257;
          v88 = v257 >> 32;
          if (v257 >> 32 < v257)
          {
            goto LABEL_434;
          }

          v86 = *v3;
          v83 = *(v3 + 1);
LABEL_217:
          sub_10019782C(v3, &v252);
          sub_10019782C(v3, &v252);
          sub_10019782C(v3, &v252);
          sub_10019782C(&v257, &v252);
          v123 = sub_10003A0DC(v87, v88, v23 & 0x3FFFFFFFFFFFFFFFLL, v86, v83);
          sub_100193BF0(v3);
          sub_100193BF0(&v257);
          sub_100193BF0(v3);
          sub_100193BF0(v3);
LABEL_314:
          v14 = v248;
          v18 = v249;
          v15 = v248 + 56;
          if (v123)
          {
            goto LABEL_413;
          }

          goto LABEL_10;
        }

        v86 = *v3;
        v83 = *(v3 + 1);
        if (v44 == 2)
        {
          v87 = *(v257 + 16);
          v88 = *(v257 + 24);
          goto LABEL_217;
        }

        *&v251[6] = 0;
        *v251 = 0;
        sub_10019782C(v3, &v252);
        sub_10019782C(v3, &v252);
        sub_10019782C(&v257, &v252);
        v85 = v86;
LABEL_219:
        sub_100066884(v251, v85, v83, &v252);
        sub_100193BF0(&v257);
        sub_100193BF0(v3);
        sub_100193BF0(v3);
        v124 = v252;
LABEL_318:
        v14 = v248;
        v18 = v249;
        v15 = v248 + 56;
        if (v124)
        {
          goto LABEL_413;
        }

        goto LABEL_10;
      }

      if (v79 != 2)
      {
        if (!v45)
        {
          goto LABEL_413;
        }

        goto LABEL_10;
      }

      v81 = *(v33 + 16);
      v80 = *(v33 + 24);
      v57 = __OFSUB__(v80, v81);
      v82 = v80 - v81;
      if (v57)
      {
        __break(1u);
LABEL_415:
        __break(1u);
LABEL_416:
        __break(1u);
LABEL_417:
        __break(1u);
LABEL_418:
        __break(1u);
LABEL_419:
        __break(1u);
LABEL_420:
        __break(1u);
LABEL_421:
        __break(1u);
LABEL_422:
        __break(1u);
LABEL_423:
        __break(1u);
LABEL_424:
        __break(1u);
LABEL_425:
        __break(1u);
LABEL_426:
        __break(1u);
LABEL_427:
        __break(1u);
LABEL_428:
        __break(1u);
LABEL_429:
        __break(1u);
LABEL_430:
        __break(1u);
LABEL_431:
        __break(1u);
LABEL_432:
        __break(1u);
LABEL_433:
        __break(1u);
LABEL_434:
        __break(1u);
LABEL_435:
        __break(1u);
LABEL_436:
        __break(1u);
LABEL_437:
        __break(1u);
LABEL_438:
        __break(1u);
LABEL_439:
        __break(1u);
LABEL_440:
        __break(1u);
LABEL_441:
        __break(1u);
LABEL_442:
        __break(1u);
LABEL_443:
        __break(1u);
LABEL_444:
        __break(1u);
LABEL_445:
        __break(1u);
LABEL_446:
        __break(1u);
LABEL_447:
        __break(1u);
LABEL_448:
        __break(1u);
LABEL_449:
        __break(1u);
LABEL_450:
        __break(1u);
LABEL_451:
        __break(1u);
LABEL_452:
        __break(1u);
LABEL_453:
        __break(1u);
LABEL_454:
        __break(1u);
LABEL_455:
        __break(1u);
LABEL_456:
        __break(1u);
LABEL_457:
        __break(1u);
LABEL_458:
        __break(1u);
LABEL_459:
        __break(1u);
LABEL_460:
        __break(1u);
      }

      if (v45 == v82)
      {
        goto LABEL_141;
      }
    }

    goto LABEL_10;
  }

  if ((v36 >> 59) & 6 | ((v30 & 0x2000000000000000) != 0))
  {
    goto LABEL_10;
  }

  v42 = *(&v257 + 1) >> 62;
  if (*(&v257 + 1) >> 62 == 3)
  {
    v43 = 0;
    if (v257 != __PAIR128__(0xC000000000000000, 0))
    {
      goto LABEL_188;
    }

    if (v32 >> 62 != 3)
    {
      goto LABEL_188;
    }

    v43 = 0;
    if (v33 || v32 != 0xC000000000000000)
    {
      goto LABEL_188;
    }

    goto LABEL_204;
  }

  if (v42 > 1)
  {
    if (v42 == 2)
    {
      v66 = *(v257 + 16);
      v65 = *(v257 + 24);
      v57 = __OFSUB__(v65, v66);
      v43 = v65 - v66;
      if (v57)
      {
        goto LABEL_433;
      }
    }

    else
    {
      v43 = 0;
    }
  }

  else if (v42)
  {
    LODWORD(v43) = DWORD1(v257) - v257;
    if (__OFSUB__(DWORD1(v257), v257))
    {
      goto LABEL_432;
    }

    v43 = v43;
  }

  else
  {
    v43 = BYTE14(v257);
  }

LABEL_188:
  v110 = v32 >> 62;
  if ((v32 >> 62) > 1)
  {
    if (v110 != 2)
    {
      if (v43)
      {
        goto LABEL_10;
      }

      goto LABEL_204;
    }

    v113 = *(v33 + 16);
    v112 = *(v33 + 24);
    v57 = __OFSUB__(v112, v113);
    v111 = v112 - v113;
    if (v57)
    {
      goto LABEL_420;
    }
  }

  else if (v110)
  {
    LODWORD(v111) = HIDWORD(v33) - v33;
    if (__OFSUB__(HIDWORD(v33), v33))
    {
      goto LABEL_421;
    }

    v111 = v111;
  }

  else
  {
    v111 = BYTE6(v32);
  }

  if (v43 != v111)
  {
    goto LABEL_10;
  }

  if (v43 < 1)
  {
LABEL_204:
    v254 = v259;
    *&v255 = v260;
    v256 = v261;
    v252 = v257;
    v253 = v258;
    *(&v255 + 1) = *(&v260 + 1) & 0xEFFFFFFFFFFFFFFFLL;
    v119 = v35;
    v120 = v34;
    sub_1001915E8(&v252, v251);
    v118 = v120;
    v117 = v119;
    goto LABEL_205;
  }

  if (v42 > 1)
  {
    v127 = *v3;
    v232 = *(v3 + 1);
    v236 = *(v3 + 2);
    v239 = *(v3 + 3);
    if (v42 == 2)
    {
      v128 = *(v257 + 16);
      v245 = *(v257 + 24);
      v252 = v257;
      v253 = v258;
      v254 = v259;
      *&v255 = v260;
      v256 = v261;
      *(&v255 + 1) = *(&v260 + 1) & 0xEFFFFFFFFFFFFFFFLL;
      sub_1001915E8(&v252, v251);
      v129 = sub_1004A40D4();
      if (v129)
      {
        v130 = sub_1004A4104();
        if (__OFSUB__(v128, v130))
        {
          goto LABEL_452;
        }

        v129 += v128 - v130;
      }

      if (__OFSUB__(v245, v128))
      {
        goto LABEL_448;
      }

      sub_1004A40F4();
      v131 = v129;
    }

    else
    {
      memset(v250, 0, 14);
      v254 = v259;
      *&v255 = v260;
      v256 = v261;
      v252 = v257;
      v253 = v258;
      *(&v255 + 1) = *(&v260 + 1) & 0xEFFFFFFFFFFFFFFFLL;
      sub_1001915E8(&v252, v251);
      v131 = v250;
    }

    v170 = v127;
  }

  else
  {
    v226 = *v3;
    if (!v42)
    {
      v114 = *(v3 + 2);
      v115 = *(v3 + 3);
      v250[0] = v257;
      LOWORD(v250[1]) = WORD4(v257);
      *(&v250[1] + 2) = *(&v257 + 10);
      *&v255 = v260;
      v256 = v261;
      v254 = v259;
      v252 = v257;
      v253 = v258;
      *(&v255 + 1) = *(&v260 + 1) & 0xEFFFFFFFFFFFFFFFLL;
      v116 = v32;
      sub_1001915E8(&v252, v251);
      sub_100066884(v250, v226, v116, v251);
      v117 = v115;
      v118 = v114;
      if ((v251[0] & 1) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_205;
    }

    v232 = *(v3 + 1);
    v236 = *(v3 + 2);
    v239 = *(v3 + 3);
    v167 = v257;
    if (v257 >> 32 < v257)
    {
      goto LABEL_447;
    }

    v254 = v259;
    *&v255 = v260;
    v256 = v261;
    v252 = v257;
    v253 = v258;
    *(&v255 + 1) = *(&v260 + 1) & 0xEFFFFFFFFFFFFFFFLL;
    sub_1001915E8(&v252, v251);
    v168 = sub_1004A40D4();
    if (v168)
    {
      v169 = sub_1004A4104();
      if (__OFSUB__(v167, v169))
      {
        goto LABEL_453;
      }

      v168 += v167 - v169;
    }

    sub_1004A40F4();
    v131 = v168;
    v170 = v226;
  }

  sub_100066884(v131, v170, v232, v251);
  v118 = v236;
  v117 = v239;
  if ((v251[0] & 1) == 0)
  {
    goto LABEL_7;
  }

LABEL_205:
  v121 = v24 >> 62;
  if (v24 >> 62 != 3)
  {
    if (v121 > 1)
    {
      if (v121 == 2)
      {
        v126 = *(v25 + 16);
        v125 = *(v25 + 24);
        v57 = __OFSUB__(v125, v126);
        v122 = v125 - v126;
        if (v57)
        {
          goto LABEL_445;
        }
      }

      else
      {
        v122 = 0;
      }
    }

    else if (v121)
    {
      LODWORD(v122) = HIDWORD(v25) - v25;
      if (__OFSUB__(HIDWORD(v25), v25))
      {
        goto LABEL_446;
      }

      v122 = v122;
    }

    else
    {
      v122 = BYTE6(v24);
    }

LABEL_285:
    v157 = v117 >> 62;
    if ((v117 >> 62) > 1)
    {
      if (v157 != 2)
      {
        if (!v122)
        {
          goto LABEL_411;
        }

        goto LABEL_7;
      }

      v160 = *(v118 + 16);
      v159 = *(v118 + 24);
      v57 = __OFSUB__(v159, v160);
      v158 = v159 - v160;
      if (v57)
      {
        goto LABEL_435;
      }
    }

    else if (v157)
    {
      LODWORD(v158) = HIDWORD(v118) - v118;
      if (__OFSUB__(HIDWORD(v118), v118))
      {
        goto LABEL_436;
      }

      v158 = v158;
    }

    else
    {
      v158 = BYTE6(v117);
    }

    if (v122 != v158)
    {
      goto LABEL_7;
    }

    if (v122 < 1)
    {
      goto LABEL_411;
    }

    if (v121 > 1)
    {
      if (v121 != 2)
      {
        *(&v252 + 6) = 0;
        *&v252 = 0;
        v173 = v117;
        v174 = v118;
        sub_100014CEC(v118, v117);
        sub_100014CEC(v174, v173);
        sub_100066884(&v252, v174, v173, v251);
        sub_100193BF0(&v257);
        sub_100014D40(v174, v173);
        v163 = v174;
        v164 = v173;
        goto LABEL_317;
      }

      v165 = *(v25 + 16);
      v166 = *(v25 + 24);
    }

    else
    {
      if (!v121)
      {
        *&v252 = v25;
        WORD4(v252) = v24;
        BYTE10(v252) = BYTE2(v24);
        BYTE11(v252) = BYTE3(v24);
        BYTE12(v252) = BYTE4(v24);
        BYTE13(v252) = BYTE5(v24);
        v161 = v117;
        v162 = v118;
        sub_100014CEC(v118, v117);
        sub_100014CEC(v162, v161);
        sub_100066884(&v252, v162, v161, v251);
        sub_100193BF0(&v257);
        sub_100014D40(v162, v161);
        v163 = v162;
        v164 = v161;
LABEL_317:
        sub_100014D40(v163, v164);
        v124 = v251[0];
        goto LABEL_318;
      }

      v165 = v25;
      v166 = v25 >> 32;
      if (v25 >> 32 < v25)
      {
        goto LABEL_451;
      }
    }

    v171 = v117;
    v172 = v118;
    sub_100014CEC(v118, v117);
    sub_100014CEC(v172, v171);
    sub_100014CEC(v172, v171);
    v123 = sub_10003A0DC(v165, v166, v24 & 0x3FFFFFFFFFFFFFFFLL, v172, v171);
    sub_100014D40(v172, v171);
    sub_100193BF0(&v257);
    sub_100014D40(v172, v171);
    sub_100014D40(v172, v171);
    goto LABEL_314;
  }

  v122 = 0;
  if (v25)
  {
    goto LABEL_285;
  }

  if (v24 != 0xC000000000000000)
  {
    goto LABEL_285;
  }

  if (v117 >> 62 != 3)
  {
    goto LABEL_285;
  }

  v122 = 0;
  if (v118 || v117 != 0xC000000000000000)
  {
    goto LABEL_285;
  }

LABEL_411:
  sub_100193BF0(v3);
  v3 = &v257;
LABEL_412:
  v14 = v248;
LABEL_413:
  sub_100193BF0(v3);
  v214 = (*(v14 + 48) + 80 * v17);
  v252 = *v214;
  v215 = v214[3];
  v216 = v214[4];
  v217 = v214[2];
  v253 = v214[1];
  v255 = v215;
  v256 = v216;
  v254 = v217;
  v218 = v214[3];
  a1[2] = v214[2];
  a1[3] = v218;
  a1[4] = v214[4];
  v219 = v214[1];
  *a1 = *v214;
  a1[1] = v219;
  sub_10019782C(&v252, v251);
  return 0;
}