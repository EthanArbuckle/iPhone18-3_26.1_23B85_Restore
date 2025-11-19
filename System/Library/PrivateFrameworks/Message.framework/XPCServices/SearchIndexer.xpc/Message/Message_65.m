uint64_t sub_10041E534(uint64_t result, uint64_t a2, int64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (!__OFADD__(a2, 1))
  {
    v10 = result;
    v36 = a2 + 1;
    if (a2 + 1 >= a3)
    {
      sub_1003A5228();
      swift_allocError();
      *v19 = a3;
    }

    else
    {
      v11 = *result;
      v12 = *(result + 8);
      v34 = *(result + 20);
      v35 = *(result + 16);
      v13 = a2 + 2;
      v33 = *(result + 22);
      if (a2 + 2 >= a3)
      {
        sub_1003A5228();
        swift_allocError();
        *v20 = a3;
      }

      else
      {
        swift_retain_n();

        v17 = sub_100419074(v10, v13, a3, a4, a5, a6, a7);
        if (!v7)
        {
          v32 = v17;

          v29 = sub_10046DE58(v10, v13, a3, a4, a5, a6, a7);

          if (v32 >= v29)
          {
            v30 = v29;
          }

          else
          {
            v30 = v32;
          }

          if (v32 <= v29)
          {
            v31 = v29;
          }

          else
          {
            v31 = v32;
          }

          if ((v29 & &_mh_execute_header) != 0)
          {
            LODWORD(v27) = v32;
          }

          else
          {
            LODWORD(v27) = v30;
          }

          if ((v29 & &_mh_execute_header) != 0)
          {
            v28 = v32;
          }

          else
          {
            v28 = v31;
          }

          return v27 | (v28 << 32);
        }

        v18 = *v10;
      }

      swift_willThrow();

      *v10 = v11;
      *(v10 + 8) = v12;
      *(v10 + 16) = v35;
      *(v10 + 20) = v34;
      *(v10 + 22) = v33;
    }

    swift_willThrow();
    swift_errorRetain();
    sub_10000C9C0(&qword_1005D0460, &qword_1004D3CE0);
    if (swift_dynamicCast())
    {
    }

    else
    {

      swift_errorRetain();
      if ((swift_dynamicCast() & 1) == 0)
      {
      }
    }

    if (v36 < a3)
    {
      v21 = *v10;
      v22 = *(v10 + 8);
      v23 = *(v10 + 16);
      v24 = *(v10 + 20);
      v25 = *(v10 + 22);

      v27 = sub_10041A24C(v10, v36, a3);

      v28 = HIDWORD(v27);
      return v27 | (v28 << 32);
    }

    sub_1003A5228();
    swift_allocError();
    *v26 = a3;
    swift_willThrow();
  }

  __break(1u);
  return result;
}

uint64_t sub_10041E8C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t *a8@<X8>)
{
  sub_10000C9C0(&qword_1005CEC18, &unk_1004D2690);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1004CEAA0;
  result = sub_10041E534(a1, a2, a3, a4, a5, a6, a7);
  if (v8)
  {
    *(v16 + 16) = 0;
  }

  v40 = a4;
  *(v16 + 32) = result;
  if (__OFADD__(a2, 1))
  {
    __break(1u);
    return result;
  }

  if (a2 + 1 >= a3)
  {
    sub_1003A5228();
    swift_allocError();
    *v31 = a3;
LABEL_14:
    swift_willThrow();
  }

  v37 = a5;
  v38 = a6;
  v39 = a7;
  v18 = *a1;
  v19 = *(a1 + 8);
  v20 = *(a1 + 16);
  v21 = *(a1 + 20);
  v22 = a2 + 2;
  v35 = *(a1 + 22);

  if (a2 + 2 < a3)
  {
    while (1)
    {
      v23 = *a1;
      v24 = *(a1 + 8);
      v25 = *(a1 + 16);
      v26 = *(a1 + 20);
      v27 = *(a1 + 22);

      sub_10046B71C(0x2CuLL, 0xE100000000000000, 0, 0, a1, v22, a3);
      v28 = sub_10041E534(a1, v22, a3, v40, v37, v38, v39);

      v30 = *(v16 + 16);
      v29 = *(v16 + 24);
      if (v30 >= v29 >> 1)
      {
        v16 = sub_100085898((v29 > 1), v30 + 1, 1, v16);
      }

      *(v16 + 16) = v30 + 1;
      *(v16 + 8 * v30 + 32) = v28;
    }
  }

  sub_1003A5228();
  swift_allocError();
  *v32 = a3;
  swift_willThrow();
  swift_errorRetain();
  sub_10000C9C0(&qword_1005D0460, &qword_1004D3CE0);
  if (!swift_dynamicCast())
  {

    v33 = *a1;

    *a1 = v18;
    *(a1 + 8) = v19;
    *(a1 + 16) = v20;
    *(a1 + 20) = v21;
    *(a1 + 22) = v35;
    goto LABEL_14;
  }

  if (*(v16 + 16))
  {
    *a8 = v16;
  }

  else
  {

    sub_1003A527C();
    swift_allocError();
    *v34 = 0xD000000000000011;
    v34[1] = 0x80000001004B0B30;
    v34[2] = 0xD000000000000020;
    v34[3] = 0x80000001004B03C0;
    v34[4] = 97;
    return swift_willThrow();
  }

  return result;
}

unint64_t sub_10041EC70(unint64_t a1, uint64_t a2, int64_t a3)
{
  result = sub_10046C278(a1, a2, a3, 0);
  if (!v3)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      v5 = " in body structure";
      v7 = 202;
      v6 = 0xD000000000000011;
    }

    else
    {
      if (result - 0x100000000 >= 0xFFFFFFFF00000001)
      {
        return result;
      }

      v5 = "ts present for SearchCorrelator";
      v6 = 0xD000000000000015;
      v7 = 28;
    }

    v8 = v5 | 0x8000000000000000;
    sub_1003A527C();
    swift_allocError();
    *v9 = v6;
    v9[1] = v8;
    v9[2] = 0xD000000000000020;
    v9[3] = 0x80000001004B03C0;
    v9[4] = v7;
    return swift_willThrow();
  }

  return result;
}

unint64_t sub_10041ED48(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int64_t a6, uint64_t a7)
{
  v8 = a2 + 1;
  if (!__OFADD__(a2, 1))
  {
    v11 = result;
    if (v8 >= a3)
    {
      sub_1003A5228();
      v19 = swift_allocError();
      *v21 = a3;
    }

    else
    {
      v12 = *result;
      v13 = *(result + 8);
      v14 = *(result + 16);
      v31 = *(result + 22);
      v32 = *(result + 20);

      v18 = sub_10041F4F0(v11, v8, a3, a4, a5, a6, a7, sub_10042B7FC);
      v19 = v7;
      if (!v7)
      {
        v22 = v18;

        return v22;
      }

      v20 = *v11;

      *v11 = v12;
      *(v11 + 8) = v13;
      *(v11 + 16) = v14;
      *(v11 + 20) = v32;
      *(v11 + 22) = v31;
    }

    swift_willThrow();
    v34 = v19;
    swift_errorRetain();
    v22 = sub_10000C9C0(&qword_1005D0460, &qword_1004D3CE0);
    if (swift_dynamicCast())
    {
    }

    else
    {

      v34 = v19;
      swift_errorRetain();
      if ((swift_dynamicCast() & 1) == 0)
      {

        goto LABEL_19;
      }

      v22 = v33[3];
    }

    if (v8 >= a3)
    {
      sub_1003A5228();
      swift_allocError();
      *v29 = a3;
      swift_willThrow();
    }

    else
    {
      v22 = *v11;
      v23 = *(v11 + 8);
      v24 = *(v11 + 16);
      v25 = *(v11 + 20);
      v26 = v8 + 1;
      v27 = *(v11 + 22);
      if (v26 < a3)
      {
        v28 = *v11;

        sub_100465520(v11, v33);

        return v33[0];
      }

      sub_1003A5228();
      swift_allocError();
      *v30 = a3;

      swift_willThrow();

      *v11 = v22;
      *(v11 + 8) = v23;
      *(v11 + 16) = v24;
      *(v11 + 20) = v25;
      *(v11 + 22) = v27;
      swift_willThrow();
    }

LABEL_19:

    return v22;
  }

  __break(1u);
  return result;
}

uint64_t sub_10041F0A8(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v2)
  {
    return 0;
  }

  sub_1004A5944();
  return sub_1004A5A94();
}

void sub_10041F128(uint64_t a1)
{
  v2 = *(v1 + 3);
  v3 = *(a1 + 16);
  v4 = v2 + v3;
  if (__CFADD__(v2, v3))
  {
    __break(1u);
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v6 = *v1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v7 = *(v1 + 4);
    v8 = v4 >= v7;
    v9 = v4 - v7;
    if (v8)
    {
      v10 = v9;
    }

    else
    {
      v10 = 0;
    }

    v11 = variable initialization expression of Engine.isProcessingUpdates();
    ByteBuffer._copyStorageAndRebase(extraCapacity:resetIndices:)(v10, v11 & 1);
  }

  if (HIDWORD(v3))
  {
    goto LABEL_11;
  }

  ByteBuffer._ensureAvailableCapacity(_:at:)(v3, v2);
  ByteBuffer._setBytesAssumingUniqueBufferAccess(_:at:)((a1 + 32), a1 + 32 + v3, v2);
  v12 = *(v1 + 3);
  v8 = __CFADD__(v12, v3);
  v13 = v12 + v3;
  if (!v8)
  {
    *(v1 + 3) = v13;
    return;
  }

LABEL_12:
  __break(1u);
}

uint64_t sub_10041F1D8(uint64_t result, uint64_t a2, int64_t a3, uint64_t a4, uint64_t a5, int64_t a6, uint64_t a7)
{
  v8 = a2 + 1;
  if (__OFADD__(a2, 1))
  {
    __break(1u);
  }

  else
  {
    v10 = result;
    if (v8 >= a3)
    {
      sub_1003A5228();
      swift_allocError();
      *v18 = a3;
    }

    else
    {
      v12 = *result;
      v13 = *(result + 8);
      v14 = *(result + 16);
      v15 = *(result + 20);
      v16 = *(result + 22);

      sub_10046B71C(0x4C494EuLL, 0xE300000000000000, 0, 0, v10, v8, a3);
      if (!v7)
      {

        return 0;
      }

      v17 = *v10;

      *v10 = v12;
      *(v10 + 8) = v13;
      *(v10 + 16) = v14;
      *(v10 + 20) = v15;
      *(v10 + 22) = v16;
    }

    swift_willThrow();
    swift_errorRetain();
    sub_10000C9C0(&qword_1005D0460, &qword_1004D3CE0);
    if (swift_dynamicCast())
    {
    }

    else
    {

      swift_errorRetain();
      if ((swift_dynamicCast() & 1) == 0)
      {
      }
    }

    if (v8 >= a3)
    {
      sub_1003A5228();
      swift_allocError();
      *v24 = a3;
      return swift_willThrow();
    }

    else
    {
      v19 = *v10;
      v20 = *(v10 + 8);
      v21 = *(v10 + 16);
      v22 = *(v10 + 20);
      v23 = *(v10 + 22);

      v25 = sub_10041F4F0(v10, v8, a3, a4, a5, a6, a7, sub_10042B7FC);

      return v25;
    }
  }

  return result;
}

uint64_t sub_10041F4F0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int64_t a6, uint64_t a7, void (*a8)(uint64_t *__return_ptr, uint64_t, uint64_t, uint64_t))
{
  v9 = a2 + 1;
  if (!__OFADD__(a2, 1))
  {
    v12 = result;
    if (v9 >= a3)
    {
      sub_1003A5228();
      swift_allocError();
      *v20 = a3;
      swift_retain_n();
    }

    else
    {
      v14 = *result;
      v15 = *(result + 8);
      v16 = *(result + 16);
      v17 = *(result + 20);
      v27 = *(result + 22);
      swift_retain_n();

      v18 = sub_10042DDB0(v12, v9, a3, a8);
      if (!v8)
      {
LABEL_13:
        v26 = v18;

        return v26;
      }

      v19 = *v12;

      *v12 = v14;
      *(v12 + 8) = v15;
      *(v12 + 16) = v16;
      *(v12 + 20) = v17;
      *(v12 + 22) = v27;
    }

    swift_willThrow();
    swift_errorRetain();
    sub_10000C9C0(&qword_1005D0460, &qword_1004D3CE0);
    if (swift_dynamicCast())
    {
    }

    else
    {

      swift_errorRetain();
      if ((swift_dynamicCast() & 1) == 0)
      {
      }
    }

    if (v9 < a3)
    {
      v21 = *v12;
      v22 = *(v12 + 8);
      v28 = *(v12 + 16);
      v23 = *(v12 + 20);
      v24 = *(v12 + 22);

      v18 = sub_1004218EC(v12, v9, a3, a4, a5, a6);
      goto LABEL_13;
    }

    sub_1003A5228();
    swift_allocError();
    *v25 = a3;
    swift_willThrow();
  }

  __break(1u);
  return result;
}

uint64_t sub_10041F7C0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int64_t a6, uint64_t a7)
{
  v8 = a2 + 1;
  if (__OFADD__(a2, 1))
  {
    __break(1u);
  }

  else
  {
    if (v8 >= a3)
    {
      sub_1003A5228();
      swift_allocError();
      *v19 = a3;
      return swift_willThrow();
    }

    v10 = result;
    v11 = *result;
    v12 = *(result + 8);
    v13 = *(result + 16);
    v20 = *(result + 22);
    v21 = *(result + 20);

    sub_100429B44(v10, v8, a3, a4, a5, a6, a7, &v22);
    if (v7)
    {
      v18 = *v10;

      *v10 = v11;
      *(v10 + 8) = v12;
      *(v10 + 16) = v13;
      *(v10 + 20) = v21;
      *(v10 + 22) = v20;
      return swift_willThrow();
    }

    return v22;
  }

  return result;
}

unint64_t sub_10041F8EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int64_t a6, uint64_t a7)
{
  v9 = sub_10041F7C0(a1, a2, a3, a4, a5, a6, a7);
  if (!v8)
  {
    v13 = v10;
    v7 = v11;
    v14 = v12;
    if (qword_1005DBBA0 != -1)
    {
      v20 = v9;
      swift_once();
      v9 = v20;
    }

    v15 = v9 == static Media.TopLevelType.message && v13 == unk_1005DEA00;
    if (!v15 && (sub_1004A6D34() & 1) == 0)
    {

LABEL_20:

      v7 = 0x80000001004B0BE0;
      sub_1003A527C();
      swift_allocError();
      *v18 = 0xD00000000000002ALL;
      v18[1] = 0x80000001004B0BE0;
      v18[2] = 0xD000000000000020;
      v18[3] = 0x80000001004B03C0;
      v18[4] = 1584;
      swift_willThrow();
      return v7;
    }

    if (qword_1005DBBD0 != -1)
    {
      swift_once();
    }

    if (v7 == static Media.Subtype.rfc822 && v14 == unk_1005DEA60)
    {

      return v7;
    }

    v17 = sub_1004A6D34();

    if ((v17 & 1) == 0)
    {
      goto LABEL_20;
    }
  }

  return v7;
}

uint64_t sub_10041FA98(uint64_t result, uint64_t a2, int64_t a3, uint64_t a4, uint64_t a5, int64_t a6, uint64_t a7)
{
  v8 = a2 + 1;
  if (!__OFADD__(a2, 1))
  {
    v9 = a3;
    if (v8 >= a3)
    {
      sub_1003A5228();
      swift_allocError();
      *v18 = v9;
    }

    else
    {
      v10 = result;
      v14 = *result;
      v15 = *(result + 8);
      v16 = *(result + 16);
      v20 = *(result + 22);
      v21 = *(result + 20);

      sub_10046B71C(0x20225458455422uLL, 0xE700000000000000, 0, 0, v10, v8, v9);
      if (!v7)
      {
        v9 = sub_10041FC00(v10, v8, v9, a4, a5, a6, a7);

        return v9;
      }

      v17 = *v10;

      *v10 = v14;
      *(v10 + 8) = v15;
      *(v10 + 16) = v16;
      *(v10 + 20) = v21;
      *(v10 + 22) = v20;
    }

    swift_willThrow();
    return v9;
  }

  __break(1u);
  return result;
}

uint64_t sub_10041FC00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int64_t a6, uint64_t a7)
{
  v9 = sub_10041F4F0(a1, a2, a3, a4, a5, a6, a7, sub_10042B7FC);
  if (!v7)
  {
    sub_10046C184(v9, v10, v11 & 0xFFFFFFFFFFFFFFLL, 0xD000000000000020, 0x80000001004B03C0, 1592);
    v13 = sub_1004A5814();
    v15 = v14;

    v16 = v13 == 0x74616E7265746C61 && v15 == 0xEB00000000657669;
    if (v16 || (sub_1004A6D34() & 1) != 0)
    {

      if (qword_1005DBBB8 != -1)
      {
        swift_once();
      }

      v17 = &static Media.Subtype.alternative;
    }

    else if (v13 == 0x646578696DLL && v15 == 0xE500000000000000 || (sub_1004A6D34() & 1) != 0)
    {

      if (qword_1005DBBC8 != -1)
      {
        swift_once();
      }

      v17 = &static Media.Subtype.mixed;
    }

    else
    {
      if ((v13 != 0x646574616C6572 || v15 != 0xE700000000000000) && (sub_1004A6D34() & 1) == 0)
      {
        v8 = sub_1004A5814();

        return v8;
      }

      if (qword_1005DBBC0 != -1)
      {
        swift_once();
      }

      v17 = &static Media.Subtype.related;
    }

    v8 = *v17;
    v18 = v17[1];
  }

  return v8;
}

uint64_t sub_10041FE74(uint64_t result, uint64_t a2, int64_t a3, uint64_t a4, uint64_t a5, int64_t a6, uint64_t a7)
{
  v9 = a2 + 1;
  if (!__OFADD__(a2, 1))
  {
    v12 = result;
    if (v9 >= a3)
    {
      sub_1003A5228();
      swift_allocError();
      *v18 = a3;
    }

    else
    {
      v13 = *result;
      v14 = *(result + 8);
      v8 = *(result + 16);
      v15 = *(result + 20);
      v16 = *(result + 22);

      sub_10046B71C(0x6C696EuLL, 0xE300000000000000, 0, 0, v12, v9, a3);
      if (!v7)
      {
        v26 = sub_1002FBA8C(_swiftEmptyArrayStorage);
LABEL_20:
        v8 = v26;

        return v8;
      }

      v17 = *v12;

      *v12 = v13;
      *(v12 + 8) = v14;
      *(v12 + 16) = v8;
      *(v12 + 20) = v15;
      *(v12 + 22) = v16;
    }

    swift_willThrow();
    swift_errorRetain();
    sub_10000C9C0(&qword_1005D0460, &qword_1004D3CE0);
    if (swift_dynamicCast())
    {

      v8 = v36;
    }

    else
    {

      swift_errorRetain();
      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_18;
      }

      v8 = v36;
    }

    if (v9 < a3)
    {
      v19 = *v12;
      v20 = *(v12 + 8);
      v29 = *(v12 + 20);
      v30 = *(v12 + 16);
      v28 = *(v12 + 22);

      v8 = sub_100426EF0(v12, v9, a3);

      return v8;
    }

    sub_1003A5228();
    swift_allocError();
    *v21 = a3;
    swift_willThrow();
    swift_errorRetain();
    if (swift_dynamicCast())
    {

      v8 = v36;
LABEL_16:

      if (v9 >= a3)
      {
        sub_1003A5228();
        swift_allocError();
        *v27 = a3;
        swift_willThrow();
        return v8;
      }

      v22 = *v12;
      v23 = *(v12 + 8);
      v24 = a7;
      v25 = *(v12 + 16);
      v31 = *(v12 + 22);
      v32 = *(v12 + 20);

      v26 = sub_1004270D4(v12, v9, a3, a4, a5, a6, v24);
      goto LABEL_20;
    }

    swift_errorRetain();
    if (swift_dynamicCast())
    {

      v8 = v36;

      goto LABEL_16;
    }

LABEL_18:

    return v8;
  }

  __break(1u);
  return result;
}

uint64_t sub_100420280(uint64_t result, uint64_t a2, int64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = a2 + 1;
  if (!__OFADD__(a2, 1))
  {
    v9 = a7;
    v10 = a6;
    v12 = result;
    if (v8 >= a3)
    {
      sub_1003A5228();
      swift_allocError();
      *v20 = a3;
    }

    else
    {
      v13 = *result;
      v14 = *(result + 8);
      v15 = *(result + 16);
      v16 = *(result + 20);
      v17 = *(result + 22);

      v18 = sub_10042C284(v12, v8, a3);
      if (!v7)
      {
        v25 = v18;
LABEL_15:

        return v25;
      }

      v19 = *v12;

      *v12 = v13;
      *(v12 + 8) = v14;
      *(v12 + 16) = v15;
      *(v12 + 20) = v16;
      *(v12 + 22) = v17;
      v10 = a6;
      v9 = a7;
    }

    swift_willThrow();
    swift_errorRetain();
    sub_10000C9C0(&qword_1005D0460, &qword_1004D3CE0);
    if (swift_dynamicCast())
    {
    }

    else
    {

      swift_errorRetain();
      if ((swift_dynamicCast() & 1) == 0)
      {
      }
    }

    if (v8 >= a3)
    {
      sub_1003A5228();
      swift_allocError();
      *v26 = a3;
      return swift_willThrow();
    }

    v21 = *v12;
    v22 = *(v12 + 8);
    v23 = *(v12 + 16);
    v24 = *(v12 + 20);
    v29 = *(v12 + 22);

    sub_10046B71C(0x5BuLL, 0xE100000000000000, 0, 0, v12, v8, a3);
    v25 = sub_10042C3DC(v12, v8, a3, a4, a5, v10, v9);
    sub_10046B71C(0x5DuLL, 0xE100000000000000, 0, 0, v12, v8, a3);
    goto LABEL_15;
  }

  __break(1u);
  return result;
}

unint64_t sub_100420598(uint64_t a1, uint64_t a2, int64_t a3)
{
  if (__OFADD__(a2, 1))
  {
    __break(1u);
    v46[0] = v10;

    sub_1004726D0(v4, v46, v8, v7, v42, v45, v43, v44);
    if (v6)
    {

      v30 = *v4;

      swift_willThrow();
      v9 = v40;
      v16 = v41;
      v18 = v39;
      goto LABEL_9;
    }

    sub_10046B71C(0x29uLL, 0xE100000000000000, 0, 0, v4, v8, v7);
    goto LABEL_16;
  }

  v46[7] = v14;
  v46[8] = v13;
  v46[12] = v9;
  v46[13] = v8;
  v46[15] = v7;
  v46[16] = v6;
  v46[17] = v4;
  v46[18] = v3;
  v46[19] = v11;
  v46[20] = v12;
  if (a2 + 1 < a3)
  {
    v4 = a1;
    v3 = *a1;
    v13 = *(a1 + 8);
    v16 = *(a1 + 16);
    v9 = *(a1 + 20);
    v17 = a2 + 2;
    v18 = *(a1 + 22);
    if (a2 + 2 >= a3)
    {
      sub_1003A5228();
      swift_allocError();
      *v20 = a3;
      goto LABEL_8;
    }

    sub_100469DF8(v4);
    if (v5)
    {

LABEL_8:
      swift_willThrow();
LABEL_9:
      *v4 = v3;
      *(v4 + 8) = v13;
      *(v4 + 16) = v16;
      *(v4 + 20) = v9;
      *(v4 + 22) = v18;
      goto LABEL_10;
    }

    v22 = *v4;
    v23 = *(v4 + 8);
    v24 = *(v4 + 16);
    v25 = *(v4 + 20);
    v26 = *(v4 + 22);

    sub_10046B71C(0x6C696EuLL, 0xE300000000000000, 0, 0, v4, v17, a3);

    v9 = _swiftEmptyArrayStorage;
    v27 = *v4;
    sub_100469DF8(v4);
    v28 = *v4;
    v29 = *(v4 + 8);
    LOWORD(v25) = *(v4 + 20);
    v36 = *(v4 + 22);
    v38 = *(v4 + 16);

    sub_10046B71C(0x6C696EuLL, 0xE300000000000000, 0, 0, v4, v17, a3);

    v31 = *v4;
    sub_100469DF8(v4);
    v32 = *v4;
    v33 = *(v4 + 8);
    v37 = *(v4 + 16);
    v34 = *(v4 + 22);
    v35 = *(v4 + 20);

    sub_10046B71C(0x6C696EuLL, 0xE300000000000000, 0, 0, v4, v17, a3);
LABEL_16:

    return v9;
  }

  sub_1003A5228();
  swift_allocError();
  *v19 = a3;
LABEL_10:
  swift_willThrow();
  return v9;
}

uint64_t sub_100420E2C@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, int64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v9 = a2 + 1;
  if (!__OFADD__(a2, 1))
  {
    v11 = result;
    if (v9 >= a3)
    {
      v19 = a8;
      sub_1003A5228();
      swift_allocError();
      *v21 = a3;
    }

    else
    {
      v13 = *result;
      v14 = *(result + 8);
      v15 = *(result + 16);
      v16 = *(result + 20);
      v17 = *(result + 22);

      sub_10041206C(v11, v9, a3, a4, a5, a6, a7, a8);
      v19 = a8;
      if (!v8)
      {
        type metadata accessor for ParameterValue();
LABEL_17:
        swift_storeEnumTagMultiPayload();
      }

      v20 = *v11;

      *v11 = v13;
      *(v11 + 8) = v14;
      *(v11 + 16) = v15;
      *(v11 + 20) = v16;
      *(v11 + 22) = v17;
    }

    swift_willThrow();
    swift_errorRetain();
    sub_10000C9C0(&qword_1005D0460, &qword_1004D3CE0);
    if (swift_dynamicCast())
    {
    }

    else
    {

      swift_errorRetain();
      if ((swift_dynamicCast() & 1) == 0)
      {
      }
    }

    if (v9 >= a3)
    {
      sub_1003A5228();
      swift_allocError();
      *v28 = a3;
      return swift_willThrow();
    }

    v22 = *v11;
    v23 = *(v11 + 8);
    v24 = *(v11 + 16);
    v25 = *(v11 + 20);
    v26 = *(v11 + 22);

    sub_10046B71C(0x28uLL, 0xE100000000000000, 0, 0, v11, v9, a3);

    v27 = sub_10046DEB0(v11, v9, a3, a4, a5, a6, a7);

    if (!v27)
    {
      v27 = _swiftEmptyArrayStorage;
    }

    sub_10046B71C(0x29uLL, 0xE100000000000000, 0, 0, v11, v9, a3);
    *v19 = v27;
    type metadata accessor for ParameterValue();
    goto LABEL_17;
  }

  __break(1u);
  return result;
}

uint64_t sub_10042117C(uint64_t result, uint64_t a2, int64_t a3, uint64_t (*a4)(uint64_t))
{
  v5 = a2 + 1;
  if (__OFADD__(a2, 1))
  {
    __break(1u);
  }

  else
  {
    if (v5 >= a3)
    {
      sub_1003A5228();
      swift_allocError();
      *v15 = a3;
    }

    else
    {
      v7 = result;
      v30 = a4;
      v8 = *result;
      v9 = *(result + 8);
      v10 = *(result + 16);
      v11 = *(result + 20);
      v12 = *(result + 22);

      sub_10046B71C(0x5CuLL, 0xE100000000000000, 0, 0, v7, v5, a3);
      if (!v4)
      {
        if (v5 + 1 < a3)
        {
          v24 = *v7;
          v13 = *(v7 + 8);
          v14 = *(v7 + 16);
          v22 = *(v7 + 22);
          v23 = *(v7 + 20);
          sub_100466470(v7, &v25);
          v18 = sub_10046C184(v25, v26, v27 | (v28 << 32) | (v29 << 48), 0xD000000000000020, 0x80000001004B03C0, 115);
          v19 = v30(v18);
          v21 = v20;

          v25 = 92;
          v26 = 0xE100000000000000;
          v31._countAndFlagsBits = v19;
          v31._object = v21;
          sub_1004A5994(v31);

          return v25;
        }

        sub_1003A5228();
        swift_allocError();
        *v16 = a3;
        swift_willThrow();
      }

      v17 = *v7;

      *v7 = v8;
      *(v7 + 8) = v9;
      *(v7 + 16) = v10;
      *(v7 + 20) = v11;
      *(v7 + 22) = v12;
    }

    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1004213C4@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, int64_t a6@<X5>, uint64_t a7@<X6>, _OWORD *a8@<X8>)
{
  v9 = a2 + 1;
  if (__OFADD__(a2, 1))
  {
    __break(1u);
  }

  else
  {
    if (v9 >= a3)
    {
      sub_1003A5228();
      swift_allocError();
      *v22 = a3;
    }

    else
    {
      v15 = result;
      v16 = *result;
      v17 = *(result + 8);
      v36 = *(result + 20);
      v37 = *(result + 16);
      v35 = *(result + 22);

      v18 = sub_10041ED48(v15, v9, a3, a4, a5, a6, a7);
      if (v8)
      {
        v21 = *v15;
      }

      else
      {
        v33 = v18;
        if (v9 + 1 < a3)
        {
          v31 = v20;
          v32 = *v15;
          v30 = v19;
          sub_100469DF8(v15);
          v24 = sub_10041F1D8(v15, v9, a3, a4, a5, a6, a7);
          v26 = v25;
          v28 = v27;

          *&v39 = v33;
          *(&v39 + 1) = v30;
          *v40 = v31;
          *&v40[4] = WORD2(v31);
          v40[6] = BYTE6(v31);
          *&v40[8] = v24;
          *&v40[16] = v26;
          *&v40[24] = v28;
          v40[30] = BYTE6(v28);
          *&v40[28] = WORD2(v28);
          v41[0] = v33;
          v41[1] = v30;
          v42 = v31;
          v43 = WORD2(v31);
          v44 = BYTE6(v31);
          v45 = v24;
          v46 = v26;
          v47 = v28;
          v49 = BYTE6(v28);
          v48 = WORD2(v28);
          sub_1003A3100(&v39, v38);
          result = sub_1003A315C(v41);
          v29 = *v40;
          *a8 = v39;
          a8[1] = v29;
          *(a8 + 31) = *&v40[15];
          return result;
        }

        sub_1003A5228();
        swift_allocError();
        *v23 = a3;
        swift_willThrow();
      }

      *v15 = v16;
      *(v15 + 8) = v17;
      *(v15 + 16) = v37;
      *(v15 + 20) = v36;
      *(v15 + 22) = v35;
    }

    return swift_willThrow();
  }

  return result;
}

uint64_t sub_100421650(uint64_t result, uint64_t a2, int64_t a3, uint64_t (*a4)(uint64_t), uint64_t a5, int64_t a6, uint64_t a7)
{
  v8 = a2 + 1;
  if (__OFADD__(a2, 1))
  {
    __break(1u);
  }

  else
  {
    v9 = a7;
    v11 = result;
    if (v8 >= a3)
    {
      sub_1003A5228();
      swift_allocError();
      *v19 = a3;
    }

    else
    {
      v12 = *result;
      v13 = *(result + 8);
      v14 = *(result + 16);
      v15 = *(result + 20);
      v16 = *(result + 22);

      v17 = sub_10042DBA0(v11, v8, a3, a4);
      if (!v7)
      {
LABEL_13:
        v26 = v17;

        return v26;
      }

      v18 = *v11;

      *v11 = v12;
      *(v11 + 8) = v13;
      *(v11 + 16) = v14;
      *(v11 + 20) = v15;
      *(v11 + 22) = v16;
      v9 = a7;
    }

    swift_willThrow();
    swift_errorRetain();
    sub_10000C9C0(&qword_1005D0460, &qword_1004D3CE0);
    if (swift_dynamicCast())
    {

LABEL_10:

      if (v8 >= a3)
      {
        sub_1003A5228();
        swift_allocError();
        *v25 = a3;
        return swift_willThrow();
      }

      v20 = *v11;
      v21 = *(v11 + 8);
      v22 = *(v11 + 16);
      v23 = *(v11 + 20);
      v24 = *(v11 + 22);

      v17 = sub_10041ED48(v11, v8, a3, a4, a5, a6, v9);
      goto LABEL_13;
    }

    swift_errorRetain();
    if (swift_dynamicCast())
    {

      goto LABEL_10;
    }
  }

  return result;
}

uint64_t sub_1004218EC(uint64_t result, uint64_t a2, int64_t a3, uint64_t a4, uint64_t a5, int64_t a6)
{
  v7 = a2 + 1;
  if (__OFADD__(a2, 1))
  {
    __break(1u);
  }

  else
  {
    if (v7 >= a3)
    {
      sub_1003A5228();
      swift_allocError();
      *v15 = a3;
      return swift_willThrow();
    }

    v9 = result;
    v10 = *result;
    v11 = *(result + 8);
    v12 = *(result + 16);
    v16 = *(result + 22);
    v17 = *(result + 20);

    sub_10042966C(v9, v7, a3, a6, 0x7BuLL, &v18, 0xE100000000000000, 1470);
    if (v6)
    {
      v14 = *v9;

      *v9 = v10;
      *(v9 + 8) = v11;
      *(v9 + 16) = v12;
      *(v9 + 20) = v17;
      *(v9 + 22) = v16;
      return swift_willThrow();
    }

    return v18;
  }

  return result;
}

unint64_t sub_100421A38(uint64_t a1, uint64_t a2, int64_t a3, uint64_t a4, uint64_t a5, int64_t a6, uint64_t a7)
{
  v13 = a2 + 1;
  if (__OFADD__(a2, 1))
  {
    __break(1u);
    goto LABEL_26;
  }

  v11 = a3;
  if (v13 >= a3)
  {
    sub_1003A5228();
    swift_allocError();
    *v18 = v11;
    goto LABEL_7;
  }

  v7 = a1;
  v10 = a7;
  v9 = *a1;
  v12 = *(a1 + 8);
  v36 = *(a1 + 20);
  v37 = *(a1 + 16);
  v35 = *(a1 + 22);

  sub_10046B71C(0x204449uLL, 0xE300000000000000, 0, 0, v7, v13, v11);
  if (v8)
  {
    v17 = *v7;

LABEL_5:
    *v7 = v9;
    *(v7 + 8) = v12;
    *(v7 + 16) = v37;
    *(v7 + 20) = v36;
    *(v7 + 22) = v35;
LABEL_7:
    swift_willThrow();
    return v10;
  }

  v10 = sub_10041FE74(v7, v13, v11, a4, a5, a6, v10);
  if (v13 + 1 >= v11)
  {
    sub_1003A5228();
    v22 = swift_allocError();
    *v23 = v11;
LABEL_30:
    swift_willThrow();
    v39 = v22;
    swift_errorRetain();
    sub_10000C9C0(&qword_1005D0460, &qword_1004D3CE0);
    if (swift_dynamicCast())
    {

      return v10;
    }

    v29 = *v7;

    goto LABEL_5;
  }

  v32 = *(v7 + 8);
  v34 = *(v7 + 12);
  v31 = *(v7 + 20);
  v30 = *(v7 + 22);
  v33 = *v7;
  if (sub_1004A6D34())
  {
LABEL_26:

    if (v13 + 2 < v11)
    {
      v20 = 10;
      goto LABEL_17;
    }

LABEL_28:
    v27 = v33;

    sub_1003A5228();
    v22 = swift_allocError();
    *v28 = v11;
    v21 = v32;
    goto LABEL_29;
  }

  result = sub_1004A55A4();
  if ((result & 1) == 0)
  {
    __break(1u);
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  result = sub_1001E11BC(0x2BuLL, 0xE100000000000000);
  if ((result & 0x100000000) != 0)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  if ((result & 0xFFFFFF80) != 0)
  {
    goto LABEL_34;
  }

  result = sub_1001E11BC(0x2BuLL, 0xE100000000000000);
  if ((result & 0x100000000) == 0)
  {
    v20 = result;
    if ((result & 0xFFFFFF00) == 0)
    {
      if (v13 + 2 < v11)
      {
LABEL_17:
        v21 = v32;
        if (v34 == v32)
        {
          sub_1003A5324();
          v22 = swift_allocError();
LABEL_24:
          swift_willThrow();
          v27 = v33;

LABEL_29:
          swift_willThrow();
          *v7 = v27;
          *(v7 + 8) = v21;
          *(v7 + 12) = v34;
          *(v7 + 20) = v31;
          *(v7 + 22) = v30;
          goto LABEL_30;
        }

        result = swift_beginAccess();
        if (v32 != -1)
        {
          v24 = *(*(v33 + 24) + (v30 | (v31 << 8)) + v32);
          *(v7 + 8) = v32 + 1;
          if (v24 == v20)
          {

            return v10;
          }

          sub_1004A6724(23);

          strcpy(v38, "looking for ");
          BYTE5(v38[1]) = 0;
          HIWORD(v38[1]) = -5120;
          v40._countAndFlagsBits = sub_1004A6CE4();
          sub_1004A5994(v40);

          v41._countAndFlagsBits = 0x20646E756F6620;
          v41._object = 0xE700000000000000;
          sub_1004A5994(v41);
          LOBYTE(v39) = v24;
          v42._countAndFlagsBits = sub_1004A6CE4();
          sub_1004A5994(v42);

          v25 = v38[1];
          sub_1003A527C();
          v22 = swift_allocError();
          *v26 = v38[0];
          v26[1] = v25;
          v26[2] = 0xD000000000000020;
          v26[3] = 0x80000001004B03C0;
          v26[4] = 295;
          v21 = v32;
          goto LABEL_24;
        }

        goto LABEL_36;
      }

      goto LABEL_28;
    }

LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

LABEL_38:
  __break(1u);
  return result;
}

void *sub_100421F50(void *result, uint64_t a2, int64_t a3, uint64_t (*a4)(uint64_t))
{
  v6 = a2 + 1;
  if (!__OFADD__(a2, 1))
  {
    if (v6 >= a3)
    {
      sub_1003A5228();
      swift_allocError();
      *v14 = a3;
    }

    else
    {
      v8 = result;
      v9 = *result;
      v10 = result[1];
      v11 = *(result + 4);
      v12 = *(result + 10);
      v5 = *(result + 22);

      sub_10046B71C(0x44454C42414E45uLL, 0xE700000000000000, 0, 0, v8, v6, a3);
      if (v4)
      {
        v13 = *v8;
      }

      else
      {
        v46 = v5;
        if (v6 + 1 >= a3)
        {
          sub_1003A5228();
          swift_allocError();
          *v33 = a3;
        }

        else
        {
          v15 = *v8;
          v16 = *(v8 + 8);
          v43 = *(v8 + 16);
          v44 = v12;
          v41 = *(v8 + 22);
          v42 = *(v8 + 20);

          if (v6 + 2 >= a3)
          {
            sub_1003A5228();
            v34 = swift_allocError();
            *v35 = a3;
            v5 = _swiftEmptyArrayStorage;
          }

          else
          {
            v38 = v15;
            v39 = v11;
            v40 = v9;
            v17 = v6 + 3;
            v18 = *v8;
            v19 = *(v8 + 8);
            v20 = *(v8 + 16);
            v21 = *(v8 + 20);
            v22 = *(v8 + 22);
            if (v17 < a3)
            {
              v23 = _swiftEmptyArrayStorage;
              v45 = v17;
              do
              {
                swift_retain_n();
                sub_100469DF8(v8);

                sub_100466470(v8, v50);

                v48 = v48 & 0xFF00000000000000 | v51 | (v52 << 32) | (v53 << 48);
                v24 = sub_10046C184(v50[0], v50[1], v48, 0xD000000000000020, 0x80000001004B03C0, 115);
                v25 = a4(v24);
                v27 = v26;

                v28 = sub_1003BE578(61, 0xE100000000000000, v25, v27);
                v47 = v29;

                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v23 = sub_100461148(0, *(v23 + 2) + 1, 1, v23);
                }

                v31 = *(v23 + 2);
                v30 = *(v23 + 3);
                if (v31 >= v30 >> 1)
                {
                  v23 = sub_100461148((v30 > 1), v31 + 1, 1, v23);
                }

                *(v23 + 2) = v31 + 1;
                v32 = &v23[32 * v31];
                *(v32 + 4) = v25;
                *(v32 + 5) = v27;
                *(v32 + 6) = v28;
                v32[56] = v47 & 1;
                v18 = *v8;
                v19 = *(v8 + 8);
                v20 = *(v8 + 16);
                v21 = *(v8 + 20);
                v22 = *(v8 + 22);
              }

              while (v45 < a3);
            }

            sub_1003A5228();
            v34 = swift_allocError();
            *v36 = a3;

            v5 = _swiftEmptyArrayStorage;
            swift_willThrow();

            v15 = v38;
            *v8 = v18;
            *(v8 + 8) = v19;
            *(v8 + 16) = v20;
            *(v8 + 20) = v21;
            *(v8 + 22) = v22;
            v9 = v40;
            v11 = v39;
          }

          swift_willThrow();
          v54 = v34;
          swift_errorRetain();
          sub_10000C9C0(&qword_1005D0460, &qword_1004D3CE0);
          if (swift_dynamicCast())
          {

            return v5;
          }

          *v8 = v15;
          *(v8 + 8) = v16;
          *(v8 + 16) = v43;
          *(v8 + 20) = v42;
          *(v8 + 22) = v41;
          v12 = v44;
        }

        swift_willThrow();
        v37 = *v8;

        v5 = v46;
      }

      *v8 = v9;
      *(v8 + 8) = v10;
      *(v8 + 16) = v11;
      *(v8 + 20) = v12;
      *(v8 + 22) = v5;
    }

    swift_willThrow();
    return v5;
  }

  __break(1u);
  return result;
}

uint64_t sub_100422470@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, int64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, int64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v9 = a2 + 1;
  if (!__OFADD__(a2, 1))
  {
    v11 = result;
    if (v9 >= a3)
    {
      v20 = a7;
      sub_1003A5228();
      swift_allocError();
      *v22 = a3;
    }

    else
    {
      v12 = *result;
      v13 = *(result + 8);
      v14 = *(result + 16);
      v15 = *(result + 20);
      v16 = *(result + 22);

      v19 = a6;
      v20 = a7;
      sub_10042A340(v11, v9, a3, a4, a5, v19, a7, v36);
      if (!v8)
      {
        v33 = v36[0];
        v35 = v36[1];
        v29 = v37;
LABEL_15:

        *a8 = v33;
        *(a8 + 16) = v35;
        *(a8 + 32) = v29;
        return result;
      }

      v21 = *v11;

      *v11 = v12;
      *(v11 + 8) = v13;
      *(v11 + 16) = v14;
      *(v11 + 20) = v15;
      *(v11 + 22) = v16;
    }

    swift_willThrow();
    swift_errorRetain();
    sub_10000C9C0(&qword_1005D0460, &qword_1004D3CE0);
    if (swift_dynamicCast())
    {
    }

    else
    {

      swift_errorRetain();
      if ((swift_dynamicCast() & 1) == 0)
      {
      }
    }

    if (v9 >= a3)
    {
      sub_1003A5228();
      swift_allocError();
      *v28 = a3;
      return swift_willThrow();
    }

    v23 = *v11;
    v24 = *(v11 + 8);
    v25 = *(v11 + 16);
    v26 = *(v11 + 20);
    v27 = *(v11 + 22);

    sub_10042A5BC(v11, v9, a3, a4, a5, a6, v20, v38);
    v33 = v38[0];
    v35 = v38[1];
    v29 = v39;
    goto LABEL_15;
  }

  __break(1u);
  return result;
}

uint64_t sub_100422734@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, int64_t a3@<X2>, uint64_t (*a4)(uint64_t)@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, _OWORD *a8@<X8>)
{
  v9 = a2 + 1;
  if (__OFADD__(a2, 1))
  {
    __break(1u);
  }

  else
  {
    if (v9 >= a3)
    {
      sub_1003A5228();
      swift_allocError();
      *v20 = a3;
      return swift_willThrow();
    }

    v11 = result;
    v12 = *result;
    v13 = *(result + 8);
    v14 = *(result + 16);
    v30 = *(result + 22);
    v31 = *(result + 20);

    sub_100428524(v11, v9, a3, a4, a5, a6, a7, v32);
    if (v8)
    {
      v19 = *v11;

      *v11 = v12;
      *(v11 + 8) = v13;
      *(v11 + 16) = v14;
      *(v11 + 20) = v31;
      *(v11 + 22) = v30;
      return swift_willThrow();
    }

    v21 = v32[13];
    a8[12] = v32[12];
    a8[13] = v21;
    v22 = v32[15];
    a8[14] = v32[14];
    a8[15] = v22;
    v23 = v32[9];
    a8[8] = v32[8];
    a8[9] = v23;
    v24 = v32[11];
    a8[10] = v32[10];
    a8[11] = v24;
    v25 = v32[5];
    a8[4] = v32[4];
    a8[5] = v25;
    v26 = v32[7];
    a8[6] = v32[6];
    a8[7] = v26;
    v27 = v32[1];
    *a8 = v32[0];
    a8[1] = v27;
    v28 = v32[3];
    a8[2] = v32[2];
    a8[3] = v28;
  }

  return result;
}

uint64_t sub_1004228C4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  v5 = a2 + 1;
  if (!__OFADD__(a2, 1))
  {
    v7 = result;
    if (v5 >= a3)
    {
      sub_1003A5228();
      v13 = swift_allocError();
      *v15 = a3;
    }

    else
    {
      v8 = *result;
      v9 = *(result + 8);
      v10 = *(result + 16);
      v11 = *(result + 20);
      v12 = *(result + 22);
      if (a2 + 2 >= a3)
      {
        sub_1003A5228();
        v13 = swift_allocError();
        *v16 = a3;
      }

      else
      {

        sub_100466470(v7, v29);
        v13 = v4;
        if (!v4)
        {
          v14 = sub_10046C184(v29[0], v29[1], v30 | (v31 << 32) | (v32 << 48), 0xD000000000000020, 0x80000001004B03C0, 115);
          v7 = a4(v14);

          return v7;
        }
      }

      swift_willThrow();

      *v7 = v8;
      *(v7 + 8) = v9;
      *(v7 + 16) = v10;
      *(v7 + 20) = v11;
      *(v7 + 22) = v12;
    }

    swift_willThrow();
    v33 = v13;
    swift_errorRetain();
    sub_10000C9C0(&qword_1005D0460, &qword_1004D3CE0);
    if (swift_dynamicCast())
    {
    }

    else
    {

      v33 = v13;
      swift_errorRetain();
      if ((swift_dynamicCast() & 1) == 0)
      {

        return v7;
      }
    }

    if (v5 >= a3)
    {
      sub_1003A5228();
      swift_allocError();
      *v23 = a3;
      swift_willThrow();
    }

    else
    {
      v17 = *v7;
      v18 = *(v7 + 8);
      v19 = *(v7 + 16);
      v20 = *(v7 + 20);
      v21 = *(v7 + 22);

      v22 = sub_10042DDB0(v7, v5, a3, sub_10042B7FC);
      v25 = v24;
      v26 = v22;
      swift_beginAccess();
      v27 = *(v26 + 24) + ((v25 >> 24) & 0xFFFF00 | BYTE6(v25));
      v7 = sub_1004A58D4();
    }

    return v7;
  }

  __break(1u);
  return result;
}

uint64_t sub_100422C60(uint64_t result, uint64_t a2, int64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = a2 + 1;
  if (__OFADD__(a2, 1))
  {
    __break(1u);
  }

  else
  {
    v10 = result;
    if (v8 >= a3)
    {
      sub_1003A5228();
      swift_allocError();
      *v18 = a3;
    }

    else
    {
      v12 = *result;
      v13 = *(result + 8);
      v14 = *(result + 16);
      v15 = *(result + 20);
      v16 = *(result + 22);

      sub_10046B71C(0x2A5CuLL, 0xE200000000000000, 0, 0, v10, v8, a3);
      if (!v7)
      {

        return 0;
      }

      v17 = *v10;

      *v10 = v12;
      *(v10 + 8) = v13;
      *(v10 + 16) = v14;
      *(v10 + 20) = v15;
      *(v10 + 22) = v16;
    }

    swift_willThrow();
    swift_errorRetain();
    sub_10000C9C0(&qword_1005D0460, &qword_1004D3CE0);
    if (swift_dynamicCast())
    {
    }

    else
    {

      swift_errorRetain();
      if ((swift_dynamicCast() & 1) == 0)
      {
      }
    }

    if (v8 >= a3)
    {
      sub_1003A5228();
      swift_allocError();
      *v24 = a3;
      return swift_willThrow();
    }

    else
    {
      v19 = *v10;
      v20 = *(v10 + 8);
      v21 = *(v10 + 16);
      v22 = *(v10 + 20);
      v23 = *(v10 + 22);

      v25 = sub_100425774(v10, v8, a3, a4, a5, a6, a7);

      return v25;
    }
  }

  return result;
}

uint64_t sub_100422F1C@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(uint64_t)@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, _OWORD *a8@<X8>)
{
  v9 = a2 + 1;
  if (__OFADD__(a2, 1))
  {
    __break(1u);
  }

  else
  {
    if (v9 >= a3)
    {
      sub_1003A5228();
      swift_allocError();
      *v25 = a3;
    }

    else
    {
      v13 = result;
      v14 = *result;
      v15 = *(result + 8);
      v38 = *(result + 20);
      v36 = *(result + 16);
      v37 = *(result + 22);

      v39 = v14;

      v35 = sub_1004704A0(v13, v9, a3, a4, a5, a6, a7);
      v19 = v18;
      v21 = v20;
      v23 = v22;

      if (!v8)
      {
        v26 = sub_100427FDC(v13, v9, a3, a4);
        v28 = v27;
        v33 = v26;
        v29 = sub_10046FDFC(v13, v9, a3);
        v31 = v30;

        v40[64] = v31 & 1;
        *&v41 = v35;
        *(&v41 + 1) = v19;
        *&v42 = v21;
        *(&v42 + 1) = v23;
        *v43 = v33;
        *&v43[8] = v28;
        *&v43[16] = v29;
        v43[24] = v31 & 1;
        v44[0] = v35;
        v44[1] = v19;
        v44[2] = v21;
        v44[3] = v23;
        v44[4] = v33;
        v44[5] = v28;
        v44[6] = v29;
        v45 = v31 & 1;
        sub_100430970(&v41, v40);
        result = sub_10042EC54(v44);
        v32 = v42;
        *a8 = v41;
        a8[1] = v32;
        a8[2] = *v43;
        *(a8 + 41) = *&v43[9];
        return result;
      }

      v24 = *v13;

      *v13 = v39;
      *(v13 + 8) = v15;
      *(v13 + 16) = v36;
      *(v13 + 20) = v38;
      *(v13 + 22) = v37;
    }

    return swift_willThrow();
  }

  return result;
}

uint64_t sub_100423180@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v9 = a2 + 1;
  if (__OFADD__(a2, 1))
  {
    __break(1u);
  }

  else
  {
    if (v9 >= a3)
    {
      sub_1003A5228();
      swift_allocError();
      *v20 = a3;
      return swift_willThrow();
    }

    v11 = result;
    v12 = *result;
    v13 = *(result + 8);
    v14 = *(result + 16);
    v24 = *(result + 22);
    v25 = *(result + 20);

    sub_100428A74(v11, v9, a3, a4, a5, a6, a7, v26);
    if (v8)
    {
      v19 = *v11;

      *v11 = v12;
      *(v11 + 8) = v13;
      *(v11 + 16) = v14;
      *(v11 + 20) = v25;
      *(v11 + 22) = v24;
      return swift_willThrow();
    }

    v21 = v26[3];
    *(a8 + 32) = v26[2];
    *(a8 + 48) = v21;
    *(a8 + 64) = v27;
    v22 = v26[1];
    *a8 = v26[0];
    *(a8 + 16) = v22;
  }

  return result;
}

uint64_t sub_1004232CC@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, int64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  if (!__OFADD__(a2, 1))
  {
    v82 = v17;
    v83 = v14;
    v84 = v13;
    v85 = v12;
    v86 = v11;
    v87 = v9;
    v88 = v8;
    v89 = v15;
    v90 = v16;
    if (a2 + 1 >= a3)
    {
      sub_1003A5228();
      swift_allocError();
      *v24 = a3;
      return swift_willThrow();
    }

    v8 = a1;
    v9 = *a1;
    LODWORD(v13) = *(a1 + 12);
    LODWORD(v14) = *(a1 + 16);
    v63 = *(a1 + 20);
    v64 = *(a1 + 8);
    v19 = a2 + 2;
    LOBYTE(v12) = *(a1 + 22);
    if (a2 + 2 >= a3)
    {
      sub_1003A5228();
      swift_allocError();
      *v25 = a3;
LABEL_16:
      swift_willThrow();
      *v8 = v9;
      *(v8 + 8) = v64;
      *(v8 + 12) = v13;
      *(v8 + 16) = v14;
      *(v8 + 20) = v63;
      *(v8 + 22) = v12;
      return swift_willThrow();
    }

    v21 = a2 + 3;
    v51 = a8;
    v52 = a2 + 3;
    if (a2 + 3 >= a3)
    {
      sub_1003A5228();
      v22 = swift_allocError();
      *v26 = a3;
      swift_retain_n();
    }

    else
    {
      swift_retain_n();

      sub_100430070(v8, v21, a3, v77);
      v22 = v10;
      if (!v10)
      {
        v44 = v77[1];
        v45 = v77[0];
        v48 = v79;
        v49 = v78;
        v47 = v80;
        v46 = v81;

        v43 = 0;
        goto LABEL_14;
      }

      v23 = *v8;

      *v8 = v9;
      *(v8 + 8) = v64;
      *(v8 + 12) = v13;
      *(v8 + 16) = v14;
      *(v8 + 20) = v63;
      *(v8 + 22) = v12;
    }

    swift_willThrow();
    *&v71 = v22;
    swift_errorRetain();
    sub_10000C9C0(&qword_1005D0460, &qword_1004D3CE0);
    if (!swift_dynamicCast())
    {

      goto LABEL_15;
    }

    LOBYTE(v70[0]) = 1;

    v48 = 0;
    v49 = 0;
    v47 = 0;
    v46 = 0;
    v43 = 1;
    v44 = 0u;
    v45 = 0u;
LABEL_14:
    sub_10046B71C(0x485455414C52553BuLL, 0xE90000000000003DLL, 0, 0, v8, v19, a3);
    v28 = sub_100424AE4(v8, v19, a3, a4, a5, a6, a7);
    v57 = v29;
    v61 = v30;

    v72 = v44;
    v71 = v45;
    *&v73 = v49;
    *(&v73 + 1) = v48;
    *&v74 = v47;
    BYTE8(v74) = v46;
    BYTE9(v74) = v43;
    *&v75 = v28;
    *(&v75 + 1) = v57;
    v76 = v61;
    v31 = *v8;

    sub_10046B71C(0x3AuLL, 0xE100000000000000, 0, 0, v8, v19, a3);
    if (v52 < a3)
    {
      v62 = *v8;
      v32 = *(v8 + 8);
      v58 = *(v8 + 16);
      v55 = *(v8 + 20);
      v50 = *(v8 + 22);
      sub_1004660B8(v8, v65);
      v11 = 0;
      v53 = sub_10046C184(v65[0], v65[1], v66 | (v67 << 32) | (v68 << 48), 0xD000000000000020, 0x80000001004B03C0, 2766);
      v59 = v35;

      sub_10046B71C(0x3AuLL, 0xE100000000000000, 0, 0, v8, v19, a3);
      goto LABEL_22;
    }

    sub_1003A5228();
    swift_allocError();
    *v33 = a3;
    swift_willThrow();
    v34 = *v8;

    sub_10042EDE8(&v71);
LABEL_15:

    goto LABEL_16;
  }

  __break(1u);
LABEL_22:
  v36 = *v8;

  sub_10042486C(v70);
  if (v11)
  {
    sub_10042EDE8(&v71);

    swift_willThrow();
    goto LABEL_15;
  }

  v37 = v70[0];
  v38 = v70[1];
  LOBYTE(v69) = v76;
  v39 = v72;
  v40 = v71;
  v41 = v75;
  v42 = v73;
  *(v51 + 48) = v74;
  *(v51 + 64) = v41;
  *(v51 + 16) = v39;
  *(v51 + 32) = v42;
  *v51 = v40;
  *(v51 + 80) = v69;
  *(v51 + 88) = v53;
  *(v51 + 96) = v59;
  *(v51 + 104) = v37;
  *(v51 + 112) = v38;
  return result;
}

unint64_t sub_1004238A8@<X0>(unint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(uint64_t)@<X3>, uint64_t a5@<X8>)
{
  if (__OFADD__(a2, 1))
  {
    __break(1u);
  }

  else
  {
    if (a2 + 1 >= a3)
    {
      sub_1003A5228();
      swift_allocError();
      *v13 = a3;
      return swift_willThrow();
    }

    v7 = result;
    v8 = *result;
    v9 = *(result + 8);
    v10 = *(result + 16);
    v11 = *(result + 20);
    v12 = *(result + 22);
    sub_100469DF8(result);
    if (v5)
    {
      *v7 = v8;
      *(v7 + 8) = v9;
      *(v7 + 16) = v10;
      *(v7 + 20) = v11;
      *(v7 + 22) = v12;
      return swift_willThrow();
    }

    v14 = *v7;
    v15 = *(v7 + 8);
    v16 = *(v7 + 16);
    v17 = *(v7 + 20);
    v18 = *(v7 + 22);
    sub_100466470(v7, v26);
    v19 = sub_10046C184(v26[0], v26[1], v27 | (v28 << 32) | (v29 << 48), 0xD000000000000020, 0x80000001004B03C0, 115);
    v20 = a4(v19);
    v22 = v21;

    result = sub_1003BE578(61, 0xE100000000000000, v20, v22);
    *a5 = v20;
    *(a5 + 8) = v22;
    *(a5 + 16) = result;
    *(a5 + 24) = v23 & 1;
  }

  return result;
}

uint64_t sub_100423A7C(uint64_t a1, uint64_t a2, int64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12 = a3;
  sub_10046B71C(0x2BuLL, 0xE100000000000000, 0, 0, a1, a2, a3);
  if (!v7)
  {
    sub_10000C9C0(&qword_1005DC888, &unk_100504BE0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1004CEA80;
    v16 = swift_allocObject();
    v16[2] = a4;
    v16[3] = a5;
    v16[4] = a6;
    v16[5] = a7;
    v17 = swift_allocObject();
    *(v17 + 16) = sub_1004309CC;
    *(v17 + 24) = v16;
    *(inited + 32) = sub_1004309EC;
    *(inited + 40) = v17;
    v18 = swift_allocObject();
    v18[2] = a4;
    v18[3] = a5;
    v18[4] = a6;
    v18[5] = a7;
    v19 = swift_allocObject();
    *(v19 + 16) = sub_100430A04;
    *(v19 + 24) = v18;
    *(inited + 48) = sub_100430BA4;
    *(inited + 56) = v19;
    *(inited + 64) = sub_100423FD0;
    *(inited + 72) = 0;
    swift_retain_n();
    v12 = sub_1003FABD4(inited, a1, a2, v12, 0xD000000000000020, 0x80000001004B03C0, 323);
    swift_setDeallocating();
    sub_10000C9C0(&qword_1005DA5D8, &qword_100504BA0);
    swift_arrayDestroy();
  }

  return v12;
}

uint64_t sub_100423CD4(uint64_t result, uint64_t a2, uint64_t a3)
{
  v6 = __OFADD__(a2, 1);
  v7 = a2 + 1;
  if (!v6)
  {
    if (v7 >= a3)
    {
      sub_1003A5228();
      swift_allocError();
      *v14 = a3;
    }

    else
    {
      v9 = result;
      v3 = *result;
      v10 = *(result + 8);
      v11 = *(result + 16);
      v12 = *(result + 20);
      v13 = *(result + 22);
      sub_100469DF8(result);
      if (!v4)
      {
        v3 = sub_10042D8C4(v9, a2, a3);
        v16 = v15;
        sub_100464188(v9, a2, a3);
        if (HIDWORD(v16) == v16)
        {
          sub_1003A527C();
          swift_allocError();
          *v17 = 0x6E776F6E6B6E55;
          v17[1] = 0xE700000000000000;
          v17[2] = 0xD000000000000020;
          v17[3] = 0x80000001004B03C0;
          v17[4] = 297;
          swift_willThrow();
        }

        return v3;
      }

      *v9 = v3;
      *(v9 + 8) = v10;
      *(v9 + 16) = v11;
      *(v9 + 20) = v12;
      *(v9 + 22) = v13;
    }

    swift_willThrow();
    return v3;
  }

  __break(1u);
  return result;
}

uint64_t sub_100423E74(uint64_t result, uint64_t a2, int64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7)
{
  v10 = __OFADD__(a2, 1);
  v11 = a2 + 1;
  if (!v10)
  {
    if (v11 >= a3)
    {
      sub_1003A5228();
      swift_allocError();
      *v19 = a3;
    }

    else
    {
      v13 = result;
      v15 = *result;
      v16 = *(result + 8);
      v17 = *(result + 16);
      v8 = *(result + 20);
      v18 = *(result + 22);
      sub_100469DF8(result);
      if (!v7)
      {
        v8 = sub_100413800(v13, a2, a3, a4, a5, a6, a7);
        sub_100464188(v13, a2, a3);
        return v8;
      }

      *v13 = v15;
      *(v13 + 8) = v16;
      *(v13 + 16) = v17;
      *(v13 + 20) = v8;
      *(v13 + 22) = v18;
    }

    swift_willThrow();
    return v8;
  }

  __break(1u);
  return result;
}

double sub_100423FD0@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  sub_100464188(a1, *a2, a2[1]);
  if (!v3)
  {
    result = -3.10503618e231;
    *a3 = xmmword_100504AD0;
    *(a3 + 16) = 0xE000000000000000;
    *(a3 + 24) = 0;
  }

  return result;
}

uint64_t sub_100424018(uint64_t result, uint64_t a2, int64_t a3)
{
  v4 = a2 + 1;
  if (!__OFADD__(a2, 1))
  {
    v6 = result;
    if (v4 >= a3)
    {
      sub_1003A5228();
      swift_allocError();
      *v14 = a3;
    }

    else
    {
      v7 = *result;
      v8 = *(result + 8);
      v9 = *(result + 16);
      v10 = *(result + 20);
      v11 = *(result + 22);

      v12 = sub_10042F624(v6, v4, a3);
      if (!v3)
      {
        v21 = v12;

        goto LABEL_16;
      }

      v13 = *v6;

      *v6 = v7;
      *(v6 + 8) = v8;
      *(v6 + 16) = v9;
      *(v6 + 20) = v10;
      *(v6 + 22) = v11;
    }

    swift_willThrow();
    swift_errorRetain();
    sub_10000C9C0(&qword_1005D0460, &qword_1004D3CE0);
    if (swift_dynamicCast())
    {
    }

    else
    {

      swift_errorRetain();
      if ((swift_dynamicCast() & 1) == 0)
      {
      }
    }

    if (v4 < a3)
    {
      v15 = *v6;
      v16 = *(v6 + 8);
      v17 = *(v6 + 16);
      v18 = *(v6 + 20);
      v19 = *(v6 + 22);
      v21 = sub_100430538(v6);
LABEL_16:

      return v21;
    }

    sub_1003A5228();
    swift_allocError();
    *v20 = a3;
    swift_willThrow();
  }

  __break(1u);
  return result;
}

uint64_t sub_100424288(uint64_t result, uint64_t a2, int64_t a3)
{
  v4 = a2 + 1;
  if (!__OFADD__(a2, 1))
  {
    v6 = result;
    if (v4 >= a3)
    {
      sub_1003A5228();
      swift_allocError();
      *v14 = a3;
    }

    else
    {
      v7 = *result;
      v8 = *(result + 8);
      v9 = *(result + 16);
      v10 = *(result + 20);
      v11 = *(result + 22);

      v12 = sub_100424018(v6, v4, a3);
      if (!v3)
      {
        v21 = v12;

        goto LABEL_16;
      }

      v13 = *v6;

      *v6 = v7;
      *(v6 + 8) = v8;
      *(v6 + 16) = v9;
      *(v6 + 20) = v10;
      *(v6 + 22) = v11;
    }

    swift_willThrow();
    swift_errorRetain();
    sub_10000C9C0(&qword_1005D0460, &qword_1004D3CE0);
    if (swift_dynamicCast())
    {
    }

    else
    {

      swift_errorRetain();
      if ((swift_dynamicCast() & 1) == 0)
      {
      }
    }

    if (v4 < a3)
    {
      v15 = *v6;
      v16 = *(v6 + 8);
      v17 = *(v6 + 16);
      v18 = *(v6 + 20);
      v19 = *(v6 + 22);
      v21 = sub_1004306E4(v6);
LABEL_16:

      return v21;
    }

    sub_1003A5228();
    swift_allocError();
    *v20 = a3;
    swift_willThrow();
  }

  __break(1u);
  return result;
}

uint64_t sub_100424528(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void (*a8)(uint64_t, void **, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v9 = a2 + 1;
  if (__OFADD__(a2, 1))
  {
    __break(1u);
  }

  else
  {
    if (v9 >= a3)
    {
      sub_1003A5228();
      swift_allocError();
      *v20 = a3;
      return swift_willThrow();
    }

    v11 = result;
    v12 = *result;
    v13 = *(result + 8);
    v22 = *(result + 20);
    v23 = *(result + 16);
    v21 = *(result + 22);

    sub_100424660(v11, v9, a3, a4, a5, a6, a7, a8, &v24);
    if (v8)
    {
      v19 = *v11;

      *v11 = v12;
      *(v11 + 8) = v13;
      *(v11 + 16) = v23;
      *(v11 + 20) = v22;
      *(v11 + 22) = v21;
      return swift_willThrow();
    }

    return v24;
  }

  return result;
}

char *sub_100424660@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void (*a8)(uint64_t, void **, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t)@<X7>, uint64_t *a9@<X8>)
{
  v40 = _swiftEmptyArrayStorage;

  a8(a1, &v40, a2, a3, a4, a5, a6, a7);
  if (v9)
  {
  }

  else
  {

    v20 = v40;
    v21 = v40[2];
    if (v21)
    {
      v22 = 0;
      v39 = v40 + 4;
      v23 = _swiftEmptyArrayStorage;
      while (v22 < v20[2])
      {
        v24 = a9;
        v25 = v39[v22];
        v26 = *(v25 + 16);
        v27 = *(v23 + 2);
        v28 = v27 + v26;
        if (__OFADD__(v27, v26))
        {
          goto LABEL_23;
        }

        v29 = v39[v22];

        result = swift_isUniquelyReferenced_nonNull_native();
        if (!result || v28 > *(v23 + 3) >> 1)
        {
          if (v27 <= v28)
          {
            v30 = v27 + v26;
          }

          else
          {
            v30 = v27;
          }

          result = sub_10015BF20(result, v30, 1, v23);
          v23 = result;
        }

        a9 = v24;
        if (*(v25 + 16))
        {
          v31 = *(v23 + 2);
          if ((*(v23 + 3) >> 1) - v31 < v26)
          {
            goto LABEL_25;
          }

          memcpy(&v23[v31 + 32], (v25 + 32), v26);

          if (v26)
          {
            v32 = *(v23 + 2);
            v33 = __OFADD__(v32, v26);
            v34 = v32 + v26;
            if (v33)
            {
              goto LABEL_26;
            }

            *(v23 + 2) = v34;
          }
        }

        else
        {

          if (v26)
          {
            goto LABEL_24;
          }
        }

        if (v21 == ++v22)
        {
          goto LABEL_21;
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
    }

    else
    {
      v23 = _swiftEmptyArrayStorage;
LABEL_21:

      v35 = *(v23 + 2);
      v36 = sub_1004A58D4();
      v38 = v37;

      *a9 = v36;
      a9[1] = v38;
    }
  }

  return result;
}

uint64_t sub_10042486C@<X0>(uint64_t *a1@<X8>)
{
  result = ByteBuffer.readSlice(length:)(0x20uLL);
  if (!result)
  {
    sub_1003A5324();
    swift_allocError();
    return swift_willThrow();
  }

  v5 = v3;
  v6 = HIDWORD(v3);
  v7 = v3;
  if (HIDWORD(v3) < v3)
  {
    goto LABEL_20;
  }

  v8 = (v4 >> 24) & 0xFFFF00 | BYTE6(v4);
  if (v6 <= (v4 - v8))
  {
    v9 = result;
    result = swift_beginAccess();
    if (v7 == v6)
    {
LABEL_5:
      swift_beginAccess();
      v10 = *(v9 + 24);
      v11 = sub_1004A58D4();
      v13 = v12;

      *a1 = v11;
      a1[1] = v13;
      return result;
    }

    v14 = 0;
    while (v7 + v14 < v6)
    {
      if ((v6 - v5) <= v14)
      {
        goto LABEL_19;
      }

      if ((*(*(v9 + 24) + v8 + v7 + v14) - 58) < 0xF6u)
      {
        v15 = *(*(v9 + 24) + v8 + v7 + v14) - 65;
        v16 = v15 > 0x25;
        v17 = (1 << v15) & 0x3F0000003FLL;
        if (v16 || v17 == 0)
        {
          sub_1004A6724(29);

          swift_beginAccess();
          v19 = *(v9 + 24);

          v20 = sub_1004A58D4();
          v22 = v21;

          v24._countAndFlagsBits = v20;
          v24._object = v22;
          sub_1004A5994(v24);

          sub_1003A527C();
          swift_allocError();
          *v23 = 0xD00000000000001BLL;
          v23[1] = 0x80000001004B0C60;
          v23[2] = 0xD000000000000020;
          v23[3] = 0x80000001004B03C0;
          v23[4] = 498;
          swift_willThrow();
        }
      }

      ++v14;
      if (!(v7 - v6 + v14))
      {
        goto LABEL_5;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_100424AE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  sub_10000C9C0(&qword_1005DC868, &unk_100504BC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1004D1B20;
  v14 = swift_allocObject();
  v14[2] = a4;
  v14[3] = a5;
  v14[4] = a6;
  v14[5] = a7;
  v15 = swift_allocObject();
  *(v15 + 16) = sub_1004304A0;
  *(v15 + 24) = v14;
  *(inited + 32) = sub_1004304C0;
  *(inited + 40) = v15;
  v16 = swift_allocObject();
  v16[2] = a4;
  v16[3] = a5;
  v16[4] = a6;
  v16[5] = a7;
  v17 = swift_allocObject();
  *(v17 + 16) = sub_1004304D8;
  *(v17 + 24) = v16;
  *(inited + 48) = sub_100430B8C;
  *(inited + 56) = v17;
  *(inited + 64) = sub_100424E98;
  *(inited + 72) = 0;
  *(inited + 80) = sub_100424EF0;
  *(inited + 88) = 0;
  swift_retain_n();
  v18 = sub_1003FAEB0(inited, a1, a2, a3, 0xD000000000000020, 0x80000001004B03C0, 567);
  if (v22)
  {
    swift_setDeallocating();
    sub_10000C9C0(&qword_1005DA5D8, &qword_100504BA0);
    return swift_arrayDestroy();
  }

  else
  {
    v20 = v18;
    swift_setDeallocating();
    sub_10000C9C0(&qword_1005DA5D8, &qword_100504BA0);
    swift_arrayDestroy();
    return v20;
  }
}

uint64_t sub_100424D1C(uint64_t a1, uint64_t a2, int64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  result = sub_10046B71C(0x2B74696D627573uLL, 0xE700000000000000, 0, 0, a1, a2, a3);
  if (!v7)
  {
    return sub_100424528(a1, a2, a3, a4, a5, a6, a7, sub_100474EDC);
  }

  return result;
}

uint64_t sub_100424DDC(uint64_t a1, uint64_t a2, int64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  result = sub_10046B71C(0x2B72657375uLL, 0xE500000000000000, 0, 0, a1, a2, a3);
  if (!v7)
  {
    return sub_100424528(a1, a2, a3, a4, a5, a6, a7, sub_100474EDC);
  }

  return result;
}

uint64_t sub_100424E98@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_10046B71C(0x7265737568747561uLL, 0xE800000000000000, 0, 0, a1, *a2, a2[1]);
  if (!v3)
  {
    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = 2;
  }

  return result;
}

double sub_100424EF0@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  sub_10046B71C(0x756F6D796E6F6E61uLL, 0xE900000000000073, 0, 0, a1, *a2, a2[1]);
  if (!v3)
  {
    *&result = 1;
    *a3 = xmmword_1004DB2C0;
    *(a3 + 16) = 2;
  }

  return result;
}

unint64_t sub_100424F54(unint64_t result, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  v5 = __OFADD__(a2, 1);
  v6 = a2 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    if (v6 >= a3)
    {
      sub_1003A5228();
      swift_allocError();
      *v15 = a3;
      return swift_willThrow();
    }

    v7 = result;
    v9 = *result;
    v10 = *(result + 8);
    v11 = *(result + 16);
    v12 = *(result + 20);
    v13 = *(result + 22);
    sub_100466FA0(result, v18);
    if (v4)
    {
      *v7 = v9;
      *(v7 + 8) = v10;
      *(v7 + 16) = v11;
      *(v7 + 20) = v12;
      *(v7 + 22) = v13;
      return swift_willThrow();
    }

    v16 = sub_10046C184(v18[0], v18[1], v19 | (v20 << 32) | (v21 << 48), 0xD000000000000020, 0x80000001004B03C0, 628);
    v17 = a4(v16);

    return v17;
  }

  return result;
}

uint64_t sub_1004250AC(uint64_t a1, uint64_t a2, int64_t a3, uint64_t (*a4)(uint64_t))
{
  result = sub_10042117C(a1, a2, a3, a4);
  if (v4)
  {
    return result;
  }

  v7 = result;
  result = sub_1003F1208(result, v6);
  if (!v8)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  if (result == 92 && v8 == 0xE100000000000000)
  {

    return v7;
  }

  v9 = sub_1004A6D34();

  result = v7;
  if ((v9 & 1) == 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  return result;
}

uint64_t sub_100425158@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X7>, uint64_t *a7@<X8>, uint64_t a8)
{
  sub_10000C9C0(&qword_1005CEE68, &unk_1004D1B40);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1004CEAA0;
  sub_10000C9C0(&qword_1005DC858, &qword_100504BB0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1004D01D0;
  v15 = swift_allocObject();
  v15[2] = a2;
  v15[3] = a3;
  v15[4] = a4;
  v15[5] = a5;
  v16 = swift_allocObject();
  *(v16 + 16) = sub_10042EBF8;
  *(v16 + 24) = v15;
  *(inited + 32) = sub_10042EC18;
  *(inited + 40) = v16;
  v17 = swift_allocObject();
  v55 = a2;
  v56 = a4;
  v17[2] = a2;
  v17[3] = a3;
  v17[4] = a4;
  v17[5] = a5;
  v54 = a5;
  v18 = swift_allocObject();
  *(v18 + 16) = sub_10042EC34;
  *(v18 + 24) = v17;
  *(inited + 48) = sub_100430B74;
  *(inited + 56) = v18;
  swift_retain_n();
  v19 = sub_1003FB188(inited, a1, a6, a8, 0xD000000000000020, 0x80000001004B03C0, 600);
  if (v59)
  {
    swift_setDeallocating();
    sub_10000C9C0(&qword_1005DA5D8, &qword_100504BA0);
    swift_arrayDestroy();
    *(v13 + 16) = 0;
  }

  v22 = v19;
  v23 = v20;
  swift_setDeallocating();
  sub_10000C9C0(&qword_1005DA5D8, &qword_100504BA0);
  result = swift_arrayDestroy();
  *(v13 + 32) = v22;
  *(v13 + 40) = v23;
  if (__OFADD__(a6, 1))
  {
    __break(1u);
  }

  else
  {
    v24 = a8;
    if (a6 + 1 >= a8)
    {
      sub_1003A5228();
      swift_allocError();
      *v46 = a8;
    }

    else
    {
      v25 = *a1;
      v26 = *(a1 + 8);
      v27 = *(a1 + 16);
      v28 = *(a1 + 20);
      v29 = a6 + 2;
      v30 = *(a1 + 22);

      if (a6 + 2 < a8)
      {
        v50 = a1;
        v51 = a3;
        v31 = v56;
        while (1)
        {
          v32 = *a1;
          v33 = *(a1 + 8);
          v34 = *(a1 + 16);
          v52 = *(a1 + 22);
          v53 = *(a1 + 20);

          sub_10046B71C(0x20uLL, 0xE100000000000000, 0, 0, a1, v29, v24);
          v58 = v13;
          v35 = swift_initStackObject();
          *(v35 + 16) = xmmword_1004D01D0;
          v36 = swift_allocObject();
          v36[2] = v55;
          v36[3] = v51;
          v36[4] = v31;
          v36[5] = v54;
          v37 = swift_allocObject();
          *(v37 + 16) = sub_100430BBC;
          *(v37 + 24) = v36;
          *(v35 + 32) = sub_100430B74;
          *(v35 + 40) = v37;
          v38 = swift_allocObject();
          v38[2] = v55;
          v38[3] = v51;
          v38[4] = v31;
          v38[5] = v54;
          v39 = swift_allocObject();
          *(v39 + 16) = sub_100430BD4;
          *(v39 + 24) = v38;
          *(v35 + 48) = sub_100430B74;
          *(v35 + 56) = v39;
          a1 = v50;
          swift_retain_n();
          v40 = sub_1003FB188(v35, v50, v29, a8, 0xD000000000000020, 0x80000001004B03C0, 600);
          v42 = v41;
          swift_setDeallocating();
          swift_arrayDestroy();

          v13 = v58;
          v44 = *(v58 + 16);
          v43 = *(v58 + 24);
          if (v44 >= v43 >> 1)
          {
            v13 = sub_10008517C((v43 > 1), v44 + 1, 1, v58);
          }

          v31 = v56;
          *(v13 + 16) = v44 + 1;
          v45 = v13 + 16 * v44;
          *(v45 + 32) = v40;
          *(v45 + 40) = v42;
          v24 = a8;
        }
      }

      sub_1003A5228();
      swift_allocError();
      *v47 = a8;
      swift_willThrow();
      swift_errorRetain();
      sub_10000C9C0(&qword_1005D0460, &qword_1004D3CE0);
      if (swift_dynamicCast())
      {

        *a7 = v13;
        return result;
      }

      v48 = *a1;

      *a1 = v25;
      *(a1 + 8) = v26;
      *(a1 + 16) = v27;
      *(a1 + 20) = v28;
      *(a1 + 22) = v30;
    }

    swift_willThrow();
  }

  return result;
}

uint64_t sub_100425774(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  sub_10000C9C0(&qword_1005DC858, &qword_100504BB0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1004D01D0;
  v14 = swift_allocObject();
  v14[2] = a4;
  v14[3] = a5;
  v14[4] = a6;
  v14[5] = a7;
  v15 = swift_allocObject();
  *(v15 + 16) = sub_100430BBC;
  *(v15 + 24) = v14;
  *(inited + 32) = sub_100430B74;
  *(inited + 40) = v15;
  v16 = swift_allocObject();
  v16[2] = a4;
  v16[3] = a5;
  v16[4] = a6;
  v16[5] = a7;
  v17 = swift_allocObject();
  *(v17 + 16) = sub_100430BD4;
  *(v17 + 24) = v16;
  *(inited + 48) = sub_100430B74;
  *(inited + 56) = v17;
  swift_retain_n();
  v18 = sub_1003FB188(inited, a1, a2, a3, 0xD000000000000020, 0x80000001004B03C0, 600);
  if (v22)
  {
    swift_setDeallocating();
    sub_10000C9C0(&qword_1005DA5D8, &qword_100504BA0);
    return swift_arrayDestroy();
  }

  else
  {
    v20 = v18;
    swift_setDeallocating();
    sub_10000C9C0(&qword_1005DA5D8, &qword_100504BA0);
    swift_arrayDestroy();
    return v20;
  }
}

uint64_t sub_10042597C(uint64_t result, uint64_t a2, int64_t a3, uint64_t a4, uint64_t a5, int64_t a6, uint64_t a7)
{
  v8 = a2 + 1;
  if (__OFADD__(a2, 1))
  {
    __break(1u);
  }

  else
  {
    if (v8 >= a3)
    {
      sub_1003A5228();
      swift_allocError();
      *v19 = a3;
      return swift_willThrow();
    }

    v10 = result;
    v11 = *result;
    v12 = *(result + 8);
    v13 = *(result + 16);
    v20 = *(result + 22);
    v21 = *(result + 20);

    sub_100425AA4(v10, v8, a3, a4, a5, a6, a7, &v22);
    if (v7)
    {
      v18 = *v10;

      *v10 = v11;
      *(v10 + 8) = v12;
      *(v10 + 16) = v13;
      *(v10 + 20) = v21;
      *(v10 + 22) = v20;
      return swift_willThrow();
    }

    return v22;
  }

  return result;
}

uint64_t sub_100425AA4@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, int64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, int64_t a6@<X5>, uint64_t a7@<X6>, uint64_t *a8@<X8>)
{
  result = sub_10046B71C(0x28uLL, 0xE100000000000000, 0, 0, a1, a2, a3);
  if (!v8)
  {
    v63 = a8;
    sub_10000C9C0(&qword_1005CEFD8, &qword_1004D1EC0);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_1004CEAA0;
    v19 = sub_10041ED48(a1, a2, a3, a4, a5, a6, a7);
    v21 = v20;
    v64 = a1;
    v65 = v18;
    v59 = a4;
    v60 = a5;
    v61 = a6;
    v62 = a7;
    v66 = a2;
    v22 = v19;
    swift_beginAccess();
    v23 = *(v22 + 24) + ((v21 >> 24) & 0xFFFF00 | BYTE6(v21));
    v24 = sub_1004A58D4();
    v26 = v25;
    v27 = v65;

    *(v65 + 32) = v24;
    *(v65 + 40) = v26;
    v28 = v66;
    if (__OFADD__(v66, 1))
    {
      __break(1u);
    }

    else
    {
      v29 = a3;
      if (v66 + 1 >= a3)
      {
        sub_1003A5228();
        swift_allocError();
        *v50 = a3;
      }

      else
      {
        v30 = a1;
        v31 = *(a1 + 8);
        v56 = *(a1 + 20);
        v57 = *(a1 + 16);
        v55 = *(a1 + 22);
        v58 = *a1;

        if (v66 + 2 >= v29)
        {
          sub_1003A5228();
          swift_allocError();
          *v51 = v29;
        }

        else
        {
          v32 = *a1;
          v33 = *(a1 + 8);
          v34 = *(a1 + 16);
          v35 = *(a1 + 20);
          v36 = *(a1 + 22);
          if (v66 + 3 < v29)
          {
            v37 = v65;
            do
            {
              v38 = v29;
              v39 = v37;
              swift_retain_n();
              sub_100469DF8(v30);

              v40 = sub_10041ED48(v30, v66 + 2, v38, v59, v60, v61, v62);
              v42 = v41;
              swift_beginAccess();
              v43 = *(v40 + 24) + ((v42 >> 24) & 0xFFFF00 | BYTE6(v42));
              v44 = sub_1004A58D4();
              v46 = v45;

              v37 = v39;
              v48 = *(v39 + 2);
              v47 = *(v39 + 3);
              if (v48 >= v47 >> 1)
              {
                v37 = sub_100085070((v47 > 1), v48 + 1, 1, v39);
              }

              v29 = 0;
              *(v37 + 2) = v48 + 1;
              v49 = &v37[16 * v48];
              *(v49 + 4) = v44;
              *(v49 + 5) = v46;
              v30 = v64;
              v27 = v65;
              v32 = *v64;
              v33 = *(v64 + 8);
              v34 = *(v64 + 16);
              v35 = *(v64 + 20);
              v36 = *(v64 + 22);
              v28 = v66;
            }

            while (v66 + 3 < 0);
          }

          sub_1003A5228();
          swift_allocError();
          *v52 = v29;

          swift_willThrow();
          v53 = *v30;

          *v30 = v32;
          *(v30 + 8) = v33;
          *(v30 + 16) = v34;
          *(v30 + 20) = v35;
          *(v30 + 22) = v36;
        }

        swift_willThrow();
        swift_errorRetain();
        sub_10000C9C0(&qword_1005D0460, &qword_1004D3CE0);
        if (swift_dynamicCast())
        {

          result = sub_10046B71C(0x29uLL, 0xE100000000000000, 0, 0, v30, v28, v29);
          *v63 = v27;
          return result;
        }

        v54 = *v30;

        *v30 = v58;
        *(v30 + 8) = v31;
        *(v30 + 16) = v57;
        *(v30 + 20) = v56;
        *(v30 + 22) = v55;
      }

      swift_willThrow();
    }
  }

  return result;
}

uint64_t sub_100425FC0@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, _OWORD *a8@<X8>)
{
  v9 = a2 + 1;
  if (!__OFADD__(a2, 1))
  {
    v11 = result;
    if (v9 >= a3)
    {
      sub_1003A5228();
      v19 = swift_allocError();
      *v21 = a3;
    }

    else
    {
      v13 = *result;
      v14 = *(result + 8);
      v15 = *(result + 16);
      v16 = *(result + 20);
      v17 = *(result + 22);

      sub_100426588(v11, v9, a3, a4, a5, a6, a7, v55);
      v19 = v8;
      if (!v8)
      {
        v69 = v55[8];
        v70 = v55[9];
        v71 = v55[10];
        v72 = v55[11];
        v65 = v55[4];
        v66 = v55[5];
        v67 = v55[6];
        v68 = v55[7];
        v61 = v55[0];
        v62 = v55[1];
        v63 = v55[2];
        v64 = v55[3];

LABEL_15:
        v32 = v70;
        a8[8] = v69;
        a8[9] = v32;
        v33 = v72;
        a8[10] = v71;
        a8[11] = v33;
        v34 = v66;
        a8[4] = v65;
        a8[5] = v34;
        v35 = v68;
        a8[6] = v67;
        a8[7] = v35;
        v36 = v62;
        *a8 = v61;
        a8[1] = v36;
        v37 = v64;
        a8[2] = v63;
        a8[3] = v37;
        return result;
      }

      v20 = *v11;

      *v11 = v13;
      *(v11 + 8) = v14;
      *(v11 + 16) = v15;
      *(v11 + 20) = v16;
      *(v11 + 22) = v17;
    }

    swift_willThrow();
    v54 = v19;
    swift_errorRetain();
    sub_10000C9C0(&qword_1005D0460, &qword_1004D3CE0);
    if (swift_dynamicCast())
    {
    }

    else
    {

      v54 = v19;
      swift_errorRetain();
      if ((swift_dynamicCast() & 1) == 0)
      {
      }
    }

    if (v9 >= a3)
    {
      sub_1003A5228();
      swift_allocError();
      *v27 = a3;
      return swift_willThrow();
    }

    v22 = *v11;
    v23 = *(v11 + 8);
    v24 = *(v11 + 16);
    v25 = *(v11 + 20);
    v26 = *(v11 + 22);

    sub_100426314(v11, v9, a3, a4, a5, a6, a7, v56);
    v28 = v56[0];
    v29 = v56[1];
    LODWORD(v24) = v57;
    LOBYTE(v25) = v58;
    v30 = v59;
    v31 = v60;

    *&v42 = v28;
    *(&v42 + 1) = v29;
    LODWORD(v43) = v24;
    BYTE4(v43) = v25;
    *(&v43 + 1) = v30;
    *&v44 = v31;
    result = sub_10042ED58(&v42);
    v69 = v50;
    v70 = v51;
    v71 = v52;
    v72 = v53;
    v65 = v46;
    v66 = v47;
    v67 = v48;
    v68 = v49;
    v61 = v42;
    v62 = v43;
    v63 = v44;
    v64 = v45;
    goto LABEL_15;
  }

  __break(1u);
  return result;
}

uint64_t sub_100426314@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v9 = a2 + 1;
  if (__OFADD__(a2, 1))
  {
    __break(1u);
  }

  else
  {
    if (v9 >= a3)
    {
      sub_1003A5228();
      swift_allocError();
      *v20 = a3;
    }

    else
    {
      v11 = result;
      v12 = *(result + 8);
      v30 = *(result + 20);
      v31 = *(result + 16);
      v29 = *(result + 22);
      v32 = *result;
      if (a2 + 2 >= a3)
      {
        sub_1003A5228();
        swift_allocError();
        *v21 = a3;
      }

      else
      {
        swift_retain_n();
        v17 = sub_100424528(v11, v9 + 1, a3, a4, a5, a6, a7, sub_1004738C0);
        if (!v8)
        {
          v26 = v17;
          v27 = v18;
          v25 = sub_100470918(v11, v9 + 1, a3);

          v22 = sub_100470748(v11, v9, a3, a4, a5, a6, a7);
          v24 = v23;

          *a8 = v26;
          *(a8 + 8) = v27;
          *(a8 + 16) = v25;
          *(a8 + 20) = BYTE4(v25) & 1;
          *(a8 + 24) = v22;
          *(a8 + 32) = v24;
          return result;
        }

        v19 = *v11;
      }

      swift_willThrow();
      *v11 = v32;
      *(v11 + 8) = v12;
      *(v11 + 16) = v31;
      *(v11 + 20) = v30;
      *(v11 + 22) = v29;
    }

    return swift_willThrow();
  }

  return result;
}

uint64_t sub_100426588@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, _OWORD *a8@<X8>)
{
  result = sub_100423180(a1, a2, a3, a4, a5, a6, a7, v59);
  if (!v8)
  {
    v56 = v59[2];
    v57 = v59[3];
    v58 = v60;
    v54 = v59[0];
    v55 = v59[1];
    v18 = a2 + 1;
    if (__OFADD__(a2, 1))
    {
      __break(1u);
    }

    else
    {
      if (v18 >= a3)
      {
        sub_1003A5228();
        v21 = swift_allocError();
        *v22 = a3;

        swift_willThrow();
        v53 = v21;
        swift_errorRetain();
        sub_10000C9C0(&qword_1005D0460, &qword_1004D3CE0);
        if (!swift_dynamicCast())
        {
          sub_10042ED74(v59);
        }

        v23 = 0;
        v24 = 0;
        v25 = 0;
        v30 = 0uLL;
        v31 = 0uLL;
        v29 = 0uLL;
        v28 = 0uLL;
        v27 = 0uLL;
        v26 = 0uLL;
      }

      else
      {
        v19 = *a1;
        v20 = *(a1 + 8);
        v45 = *(a1 + 16);
        v43 = *(a1 + 20);
        v41 = *(a1 + 22);

        sub_1004232CC(a1, v18, a3, a4, a5, a6, a7, v61);
        v44 = v61[0];
        v46 = v61[1];
        v40 = v61[2];
        v42 = v61[3];
        v38 = v61[4];
        v39 = v61[5];
        v23 = v62;
        v24 = v63;
        v25 = v64;

        v27 = v38;
        v26 = v39;
        v29 = v40;
        v28 = v42;
        v30 = v44;
        v31 = v46;
      }

      v49 = v56;
      v50 = v57;
      *v51 = v58;
      v47 = v54;
      v48 = v55;
      *&v51[8] = v30;
      *&v51[24] = v31;
      *&v51[40] = v29;
      *&v51[56] = v28;
      *&v51[72] = v27;
      *&v51[88] = v26;
      *&v51[104] = v23;
      *&v52 = v24;
      *(&v52 + 1) = v25;
      result = sub_10042EDC8(&v47);
      v32 = *&v51[80];
      a8[8] = *&v51[64];
      a8[9] = v32;
      v33 = v52;
      a8[10] = *&v51[96];
      a8[11] = v33;
      v34 = *&v51[16];
      a8[4] = *v51;
      a8[5] = v34;
      v35 = *&v51[48];
      a8[6] = *&v51[32];
      a8[7] = v35;
      v36 = v48;
      *a8 = v47;
      a8[1] = v36;
      v37 = v50;
      a8[2] = v49;
      a8[3] = v37;
    }
  }

  return result;
}

uint64_t sub_100426860(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = a2 + 1;
  if (__OFADD__(a2, 1))
  {
    __break(1u);
  }

  else
  {
    if (v8 >= a3)
    {
      sub_1003A5228();
      swift_allocError();
      *v19 = a3;
      return swift_willThrow();
    }

    v10 = result;
    v11 = *result;
    v12 = *(result + 8);
    v13 = *(result + 16);
    v20 = *(result + 22);
    v21 = *(result + 20);

    sub_100424660(v10, v8, a3, a4, a5, a6, a7, sub_100474120, &v22);
    if (v7)
    {
      v18 = *v10;

      *v10 = v11;
      *(v10 + 8) = v12;
      *(v10 + 16) = v13;
      *(v10 + 20) = v21;
      *(v10 + 22) = v20;
      return swift_willThrow();
    }

    return v22;
  }

  return result;
}

uint64_t sub_10042699C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t *a8@<X8>)
{
  result = sub_10046B71C(0x3D485455413BuLL, 0xE600000000000000, 0, 0, a1, a2, a3);
  if (!v8)
  {
    v35 = a5;
    v36 = a6;
    v37 = a7;
    v34 = a8;
    v18 = a2 + 1;
    if (__OFADD__(a2, 1))
    {
      __break(1u);
    }

    else
    {
      if (v18 >= a3)
      {
        sub_1003A5228();
        swift_allocError();
        *v24 = a3;
        swift_willThrow();
        swift_errorRetain();
        sub_10000C9C0(&qword_1005D0460, &qword_1004D3CE0);
        if (swift_dynamicCast())
        {
        }

        else
        {

          swift_errorRetain();
          if ((swift_dynamicCast() & 1) == 0)
          {
          }
        }

        if (v18 >= a3)
        {
          sub_1003A5228();
          swift_allocError();
          *v29 = a3;
          return swift_willThrow();
        }

        v25 = *a1;
        v26 = *(a1 + 8);
        v27 = *(a1 + 16);
        v28 = *(a1 + 20);
        v33 = *(a1 + 22);

        v30 = sub_100426860(a1, v18, a3, a4, v35, v36, v37);
        v31 = v32;
      }

      else
      {
        v19 = *a1;
        v20 = *(a1 + 8);
        v21 = *(a1 + 16);
        v22 = *(a1 + 20);
        v23 = *(a1 + 22);

        sub_10046B71C(0x2AuLL, 0xE100000000000000, 0, 0, a1, v18, a3);

        v30 = 0;
        v31 = 0;
      }

      *v34 = v30;
      v34[1] = v31;
    }
  }

  return result;
}

uint64_t sub_100426C94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int64_t a6, uint64_t a7)
{
  v16 = sub_10041F4F0(a1, a2, a3, a4, a5, a6, a7, sub_10042B7FC);
  if (v7)
  {
    return v8;
  }

  result = sub_10046C184(v16, v17, v18 & 0xFFFFFFFFFFFFFFLL, 0xD000000000000020, 0x80000001004B03C0, 849);
  if (!__OFADD__(a2, 1))
  {
    if (a2 + 1 >= a3)
    {

      sub_1003A5228();
      swift_allocError();
      *v21 = a3;
      swift_willThrow();
    }

    else
    {
      v8 = result;
      v20 = *(a1 + 8);
      v26 = *(a1 + 20);
      v27 = *(a1 + 16);
      v25 = *(a1 + 22);
      v28 = *a1;

      sub_100469DF8(a1);

      v22 = sub_10041F1D8(a1, a2, a3, a4, a5, a6, a7);
      if (v22)
      {
        sub_10045C954(v22, v23, v24 & 0xFFFFFFFFFFFFFFLL);

        return v8;
      }
    }

    return v8;
  }

  __break(1u);
  return result;
}

uint64_t sub_100426EF0(uint64_t a1, uint64_t a2, int64_t a3)
{
  result = sub_10046B71C(0x28uLL, 0xE100000000000000, 0, 0, a1, a2, a3);
  if (!v3)
  {
    if (__OFADD__(a2, 1))
    {
      __break(1u);
    }

    else
    {
      if (a2 + 1 >= a3)
      {
        sub_1003A5228();
        swift_allocError();
        *v13 = a3;
      }

      else
      {
        v8 = *a1;
        v9 = *(a1 + 8);
        v10 = *(a1 + 16);
        v11 = *(a1 + 20);
        v12 = *(a1 + 22);
        if (a2 + 2 < a3)
        {
          sub_100469DF8(a1);
LABEL_10:
          sub_10046B71C(0x29uLL, 0xE100000000000000, 0, 0, a1, a2, a3);
          return sub_1002FBA8C(_swiftEmptyArrayStorage);
        }

        sub_1003A5228();
        swift_allocError();
        *v14 = a3;
        swift_willThrow();
        *a1 = v8;
        *(a1 + 8) = v9;
        *(a1 + 16) = v10;
        *(a1 + 20) = v11;
        *(a1 + 22) = v12;
      }

      swift_willThrow();
      swift_errorRetain();
      sub_10000C9C0(&qword_1005D0460, &qword_1004D3CE0);
      if (swift_dynamicCast())
      {

        goto LABEL_10;
      }
    }
  }

  return result;
}

uint64_t sub_1004270D4(uint64_t a1, uint64_t a2, int64_t a3, uint64_t a4, uint64_t a5, int64_t a6, uint64_t a7)
{
  result = sub_10046B71C(0x28uLL, 0xE100000000000000, 0, 0, a1, a2, a3);
  if (v7)
  {
    return result;
  }

  if (__OFADD__(a2, 1))
  {
    __break(1u);
    return result;
  }

  v52 = a4;
  v53 = a6;
  v54 = a7;
  v55 = a5;
  v51 = a2 + 1;
  if (a2 + 1 >= a3)
  {
    sub_1003A5228();
    v21 = swift_allocError();
    *v22 = a3;
LABEL_8:
    swift_willThrow();
    v56[0] = v21;
    swift_errorRetain();
    sub_10000C9C0(&qword_1005D0460, &qword_1004D3CE0);
    if (!swift_dynamicCast())
    {
    }

    goto LABEL_10;
  }

  v16 = *a1;
  v17 = *(a1 + 8);
  v18 = *(a1 + 16);
  v19 = *(a1 + 20);
  v20 = *(a1 + 22);
  if (a2 + 2 >= a3)
  {
    sub_1003A5228();
    v23 = swift_allocError();
    *v24 = a3;
    v21 = v23;
    swift_willThrow();
    *a1 = v16;
    *(a1 + 8) = v17;
    *(a1 + 16) = v18;
    *(a1 + 20) = v19;
    *(a1 + 22) = v20;
    goto LABEL_8;
  }

  sub_100469DF8(a1);
LABEL_10:
  v25 = sub_100426C94(a1, a2, a3, v52, v55, v53, v54);
  v27 = v26;
  v29 = v28;
  v31 = v30;
  sub_10000C9C0(&qword_1005DC878, &qword_100504BD0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1004CEAA0;
  *(inited + 32) = v25;
  v33 = inited + 32;
  *(inited + 40) = v27;
  *(inited + 48) = v29;
  *(inited + 56) = v31;
  v34 = sub_1002FBA8C(inited);
  v36 = v35;
  v38 = v37;
  swift_setDeallocating();
  sub_100025F40(v33, &qword_1005DC880, &qword_100504BD8);
  v56[0] = v34;
  v56[1] = v36;
  v56[2] = v38;
  if (v51 >= a3)
  {
    sub_1003A5228();
    swift_allocError();
    *v43 = a3;

    swift_willThrow();
  }

  v39 = *a1;
  v40 = *(a1 + 8);
  v50 = *(a1 + 16);
  v41 = *(a1 + 20);
  v42 = *(a1 + 22);
  swift_retain_n();

  sub_1004677A0(a1, v51, a3, v56, v52, v55, v53, v54);

  v44 = *a1;
  v45 = *(a1 + 8);
  v46 = *(a1 + 16);
  v47 = *(a1 + 20);
  v48 = *(a1 + 22);
  if (a2 + 2 < a3)
  {
    sub_100469DF8(a1);
LABEL_18:
    sub_10046B71C(0x29uLL, 0xE100000000000000, 0, 0, a1, a2, a3);
    return v56[0];
  }

  sub_1003A5228();
  swift_allocError();
  *v49 = a3;
  swift_willThrow();
  *a1 = v44;
  *(a1 + 8) = v45;
  *(a1 + 16) = v46;
  *(a1 + 20) = v47;
  *(a1 + 22) = v48;
  swift_willThrow();
  swift_errorRetain();
  sub_10000C9C0(&qword_1005D0460, &qword_1004D3CE0);
  if (swift_dynamicCast())
  {

    goto LABEL_18;
  }
}

unint64_t sub_1004275A8(unint64_t result, uint64_t a2, int64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = a2 + 1;
  if (!__OFADD__(a2, 1))
  {
    if (v9 >= a3)
    {
      sub_1003A5228();
      swift_allocError();
      *v16 = a3;
    }

    else
    {
      v11 = result;
      v32 = a6;
      v33 = a7;
      v12 = *result;
      v13 = *(result + 8);
      v8 = *(result + 16);
      v14 = *(result + 20);
      v34 = *(result + 22);
      v35 = v14;

      sub_10046B71C(0x2FuLL, 0xE100000000000000, 0, 0, v11, v9, a3);
      if (v7)
      {
        v15 = *v11;
      }

      else
      {
        v17 = *v11;
        if (v9 + 1 >= a3)
        {
          v19 = *v11;

          sub_1003A5228();
          swift_allocError();
          *v20 = a3;
        }

        else
        {
          v18 = *v11;

          sub_10046B71C(0x4C4149545241503BuLL, 0xE90000000000003DLL, 0, 0, v11, v9 + 1, a3);
          v31 = v17;
          v21 = v9 + 2;
          v22 = *v11;
          if (v21 >= a3)
          {
            v24 = *v11;

            sub_1003A5228();
            swift_allocError();
            *v25 = a3;
            swift_willThrow();
          }

          else
          {
            v30 = v8;

            v23 = sub_10046C278(v11, v21, a3, 1);
            v8 = v23;
            if ((v23 & 0x8000000000000000) == 0)
            {
              v29 = &v29;
              __chkstk_darwin(v23);
              sub_10046FEF0(v11, v21, a3, sub_100430BEC);

              return v8;
            }

            v27 = *v11;

            sub_1003A527C();
            swift_allocError();
            *v28 = 0xD000000000000011;
            v28[1] = 0x80000001004B08A0;
            v28[2] = 0xD000000000000020;
            v28[3] = 0x80000001004B03C0;
            v28[4] = 202;
            swift_willThrow();

            swift_willThrow();

            v8 = v30;
          }
        }

        swift_willThrow();
      }

      *v11 = v12;
      *(v11 + 8) = v13;
      *(v11 + 16) = v8;
      v26 = v34;
      *(v11 + 20) = v35;
      *(v11 + 22) = v26;
    }

    swift_willThrow();
    return v8;
  }

  __break(1u);
  return result;
}

unint64_t sub_100427940(unint64_t result, uint64_t a2, int64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = a2 + 1;
  if (!__OFADD__(a2, 1))
  {
    if (v9 >= a3)
    {
      sub_1003A5228();
      swift_allocError();
      *v16 = a3;
    }

    else
    {
      v11 = result;
      v27 = a6;
      v28 = a7;
      v12 = *result;
      v13 = *(result + 8);
      v8 = *(result + 16);
      v14 = *(result + 20);
      v29 = *(result + 22);

      sub_10046B71C(0x4C4149545241503BuLL, 0xE90000000000003DLL, 0, 0, v11, v9, a3);
      if (v7)
      {
        v15 = *v11;
      }

      else
      {
        v26 = v14;
        v17 = v9 + 1;
        v18 = *v11;
        if (v17 >= a3)
        {
          v20 = *v11;

          sub_1003A5228();
          swift_allocError();
          *v21 = a3;
          swift_willThrow();
        }

        else
        {
          v25 = v8;

          v19 = sub_10046C278(v11, v17, a3, 1);
          v8 = v19;
          if ((v19 & 0x8000000000000000) == 0)
          {
            v24[1] = v24;
            __chkstk_darwin(v19);
            sub_10046FEF0(v11, v17, a3, sub_100430900);

            return v8;
          }

          v22 = *v11;

          sub_1003A527C();
          swift_allocError();
          *v23 = 0xD000000000000011;
          v23[1] = 0x80000001004B08A0;
          v23[2] = 0xD000000000000020;
          v23[3] = 0x80000001004B03C0;
          v23[4] = 202;
          swift_willThrow();

          swift_willThrow();
          v8 = v25;
        }

        LOWORD(v14) = v26;
      }

      *v11 = v12;
      *(v11 + 8) = v13;
      *(v11 + 16) = v8;
      *(v11 + 20) = v14;
      *(v11 + 22) = v29;
    }

    swift_willThrow();
    return v8;
  }

  __break(1u);
  return result;
}

uint64_t sub_100427C30(uint64_t result, uint64_t a2, int64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = a2 + 1;
  if (!__OFADD__(a2, 1))
  {
    v9 = a3;
    if (v8 >= a3)
    {
      sub_1003A5228();
      swift_allocError();
      *v18 = v9;
    }

    else
    {
      v10 = result;
      v14 = *result;
      v15 = *(result + 8);
      v16 = *(result + 16);
      v20 = *(result + 22);
      v21 = *(result + 20);

      sub_10046B71C(0x4F49544345533B2FuLL, 0xEA00000000003D4ELL, 0, 0, v10, v8, v9);
      if (!v7)
      {
        v9 = sub_100424528(v10, v8, v9, a4, a5, a6, a7, sub_100474808);

        return v9;
      }

      v17 = *v10;

      *v10 = v14;
      *(v10 + 8) = v15;
      *(v10 + 16) = v16;
      *(v10 + 20) = v21;
      *(v10 + 22) = v20;
    }

    swift_willThrow();
    return v9;
  }

  __break(1u);
  return result;
}

uint64_t sub_100427DB0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = a2 + 1;
  if (__OFADD__(a2, 1))
  {
    __break(1u);
  }

  else
  {
    if (v8 >= a3)
    {
      sub_1003A5228();
      swift_allocError();
      *v25 = a3;
      return swift_willThrow();
    }

    v12 = result;
    v13 = *result;
    v14 = *(result + 8);
    v30 = *(result + 16);
    v31 = v7;
    v15 = *(result + 20);
    v16 = *(result + 22);

    v29 = a6;
    v19 = a6;
    v20 = v15;
    v21 = v31;
    v28 = sub_10046EA04(v12, v8, a3, a4, a5, v19, a7);
    v32 = v22;

    if (v21)
    {
LABEL_9:
      v27 = *v12;

      *v12 = v13;
      *(v12 + 8) = v14;
      *(v12 + 16) = v30;
      *(v12 + 20) = v20;
      *(v12 + 22) = v16;
      return swift_willThrow();
    }

    sub_10046EA30(v12, v8, a3, a4, a5, v29, a7);
    v24 = v23;

    if (!v32 && v24 == 1)
    {
      sub_1003A527C();
      swift_allocError();
      *v26 = 0xD000000000000021;
      v26[1] = 0x80000001004B0D30;
      v26[2] = 0xD000000000000020;
      v26[3] = 0x80000001004B03C0;
      v26[4] = 1398;
      swift_willThrow();
      goto LABEL_9;
    }

    return v28;
  }

  return result;
}

uint64_t sub_100427FDC(uint64_t result, uint64_t a2, int64_t a3, uint64_t (*a4)(uint64_t))
{
  v5 = a2 + 1;
  if (!__OFADD__(a2, 1))
  {
    v7 = result;
    if (v5 >= a3)
    {
      sub_1003A5228();
      swift_allocError();
      *v16 = a3;
    }

    else
    {
      v8 = *result;
      v9 = *(result + 8);
      v10 = *(result + 16);
      v11 = *(result + 20);
      v12 = *(result + 22);

      v14 = sub_10042EF94(v7, v5, a3, a4);
      if (!v4)
      {
LABEL_19:
        v29 = v14;
        goto LABEL_21;
      }

      v15 = *v7;

      *v7 = v8;
      *(v7 + 8) = v9;
      *(v7 + 16) = v10;
      *(v7 + 20) = v11;
      *(v7 + 22) = v12;
    }

    swift_willThrow();
    swift_errorRetain();
    sub_10000C9C0(&qword_1005D0460, &qword_1004D3CE0);
    if (swift_dynamicCast())
    {
    }

    else
    {

      swift_errorRetain();
      if ((swift_dynamicCast() & 1) == 0)
      {
      }
    }

    if (v5 < a3)
    {
      v17 = *v7;
      v18 = *(v7 + 8);
      v19 = *(v7 + 16);
      v20 = *(v7 + 20);
      v21 = *(v7 + 22);

      v29 = sub_10042F97C(v7, v5, a3);
LABEL_21:

      return v29;
    }

    sub_1003A5228();
    swift_allocError();
    *v22 = a3;
    swift_willThrow();
    swift_errorRetain();
    if (swift_dynamicCast())
    {

LABEL_16:

      if (v5 >= a3)
      {
        sub_1003A5228();
        swift_allocError();
        *v28 = a3;
        return swift_willThrow();
      }

      v23 = *v7;
      v24 = *(v7 + 8);
      v25 = *(v7 + 16);
      v26 = *(v7 + 20);
      v27 = *(v7 + 22);

      v14 = sub_10042FC30(v7, v5, a3);
      goto LABEL_19;
    }

    swift_errorRetain();
    if (swift_dynamicCast())
    {

      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1004283A0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = a2 + 1;
  if (!__OFADD__(a2, 1))
  {
    if (v9 >= a3)
    {
      sub_1003A5228();
      swift_allocError();
      *v20 = a3;
    }

    else
    {
      v11 = result;
      v12 = *result;
      v13 = *(result + 8);
      v14 = *(result + 16);
      v21 = *(result + 22);
      v22 = *(result + 20);
      v8 = a5;

      v18 = sub_100424528(v11, v9, a3, a4, v8, a6, a7, sub_1004738C0);
      if (!v7)
      {
        v8 = v18;
        sub_100470918(v11, v9, a3);

        return v8;
      }

      v19 = *v11;

      *v11 = v12;
      *(v11 + 8) = v13;
      *(v11 + 16) = v14;
      *(v11 + 20) = v22;
      *(v11 + 22) = v21;
    }

    swift_willThrow();
    return v8;
  }

  __break(1u);
  return result;
}

uint64_t sub_100428524@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int64_t a3@<X2>, uint64_t (*a4)(uint64_t)@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, _OWORD *a8@<X8>)
{
  result = sub_10046B71C(0x2F2F3A70616D69uLL, 0xE700000000000000, 0, 0, a1, a2, a3);
  if (!v8)
  {
    sub_100422F1C(a1, a2, a3, a4, a5, a6, a7, v96);
    result = sub_10046B71C(0x2FuLL, 0xE100000000000000, 0, 0, a1, a2, a3);
    v18 = a2 + 1;
    if (__OFADD__(a2, 1))
    {
      __break(1u);
    }

    else
    {
      if (v18 >= a3)
      {
        sub_1003A5228();
        v21 = swift_allocError();
        *v22 = a3;

        swift_willThrow();
        *&v35 = v21;
        swift_errorRetain();
        sub_10000C9C0(&qword_1005D0460, &qword_1004D3CE0);
        if (!swift_dynamicCast())
        {
          sub_10042EC54(v96);
        }

        sub_100395528(&v68);
      }

      else
      {
        v19 = *a1;
        v20 = *(a1 + 8);
        v32 = *(a1 + 20);
        v33 = *(a1 + 16);
        v31 = *(a1 + 22);

        sub_100425FC0(a1, v18, a3, a4, a5, a6, a7, v98);
        v76 = v98[8];
        v77 = v98[9];
        v78 = v98[10];
        v79 = v98[11];
        v72 = v98[4];
        v73 = v98[5];
        v74 = v98[6];
        v75 = v98[7];
        v68 = v98[0];
        v69 = v98[1];
        v70 = v98[2];
        v71 = v98[3];

        UInt32.init(_:)(&v68);
      }

      v92 = v76;
      v93 = v77;
      v94 = v78;
      v95 = v79;
      v88 = v72;
      v89 = v73;
      v90 = v74;
      v91 = v75;
      v84 = v68;
      v85 = v69;
      v86 = v70;
      v87 = v71;
      sub_100395528(v50);
      v35 = v96[0];
      v36 = v96[1];
      *v37 = v97[0];
      *&v37[9] = *(v97 + 9);
      v51[8] = v50[8];
      v51[9] = v50[9];
      v51[10] = v50[10];
      v51[11] = v50[11];
      v51[4] = v50[4];
      v51[5] = v50[5];
      v51[6] = v50[6];
      v51[7] = v50[7];
      v51[0] = v50[0];
      v51[1] = v50[1];
      v51[2] = v50[2];
      v51[3] = v50[3];
      sub_100025F40(v51, &qword_1005DC860, &qword_100504BB8);
      v46 = v92;
      v47 = v93;
      v48 = v94;
      v49 = v95;
      v42 = v88;
      v43 = v89;
      v44 = v90;
      v45 = v91;
      v38 = v84;
      v39 = v85;
      v40 = v86;
      v41 = v87;
      v64 = v92;
      v65 = v93;
      v66 = v94;
      v67 = v95;
      v60 = v88;
      v61 = v89;
      v62 = v90;
      v63 = v91;
      v56 = v84;
      v57 = v85;
      v58 = v86;
      v59 = v87;
      v52 = v35;
      v53 = v36;
      v54 = *v37;
      v55 = *&v37[16];
      v80 = v92;
      v81 = v93;
      v82 = v94;
      v83 = v95;
      v76 = v88;
      v77 = v89;
      v78 = v90;
      v79 = v91;
      v72 = v84;
      v73 = v85;
      v74 = v86;
      v75 = v87;
      v68 = v35;
      v69 = v36;
      v70 = *v37;
      v71 = *&v37[16];
      sub_10042ECA8(&v52, v34);
      result = sub_10042ED04(&v68);
      v23 = v65;
      a8[12] = v64;
      a8[13] = v23;
      v24 = v67;
      a8[14] = v66;
      a8[15] = v24;
      v25 = v61;
      a8[8] = v60;
      a8[9] = v25;
      v26 = v63;
      a8[10] = v62;
      a8[11] = v26;
      v27 = v57;
      a8[4] = v56;
      a8[5] = v27;
      v28 = v59;
      a8[6] = v58;
      a8[7] = v28;
      v29 = v53;
      *a8 = v52;
      a8[1] = v29;
      v30 = v55;
      a8[2] = v54;
      a8[3] = v30;
    }
  }

  return result;
}

uint64_t sub_100428A74@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  result = sub_1004283A0(a1, a2, a3, a4, a5, a6, a7);
  if (!v8)
  {
    v78 = a7;
    v70 = v19;
    v71 = a8;
    if ((v19 & 0x100000000) != 0)
    {
      v72 = result;
      v75 = v18;
      v20 = sub_10041F0A8(result, v18);
      v22 = v21;
      v85[0] = 47;
      v23 = sub_1004A58E4();
      if (v22)
      {
        if (v20 == v23 && v22 == v24)
        {

          goto LABEL_9;
        }

        v25 = sub_1004A6D34();

        result = v72;
        v18 = v75;
        if (v25)
        {
LABEL_9:
          if (__OFADD__(a2, 1))
          {
            __break(1u);
            goto LABEL_36;
          }

          if (a2 + 1 >= a3)
          {
            sub_1003A5228();
            swift_allocError();
            *v30 = a3;
          }

          else
          {
            v26 = *(a1 + 8);
            v65 = *(a1 + 16);
            v62 = *(a1 + 20);
            v61 = *(a1 + 22);
            v76 = *a1;

            sub_1003B1714(1);

            v73 = sub_1004A5864();
            v68 = v27;

            v28 = v68;
            v29 = a2 + 2;
            if (a2 + 2 < a3)
            {

              sub_10046B71C(0x3D4449553BuLL, 0xE500000000000000, 0, 0, a1, v29, a3);
              v54 = sub_100405E9C(a1, v29, a3);

              v55 = v73;
LABEL_14:

              v67 = sub_100470AE0(a1, a2, a3, a4, a5, a6, v78);
              v69 = v31;
              v66 = v54;
              v77 = v28;

              if (v69)
              {
                v74 = v55;
                v32 = sub_10041F0A8(v67, v69);
                v34 = v33;
                v85[0] = 47;
                v35 = sub_1004A58E4();
                v37 = v71;
                if (v34)
                {
                  if (v32 == v35 && v34 == v36)
                  {

                    goto LABEL_31;
                  }

                  v63 = sub_1004A6D34();

                  v55 = v74;
                  if (v63)
                  {
LABEL_31:
                    if (!__OFADD__(a2, 1))
                    {
                      if (a2 + 1 < a3)
                      {
                        v48 = *(a1 + 8);
                        v59 = *(a1 + 20);
                        v60 = *(a1 + 16);
                        v58 = *(a1 + 22);
                        v64 = *a1;

                        sub_1003B1714(1);

                        v49 = sub_1004A5864();
                        v51 = v50;

                        v67 = v49;
                        v52 = sub_100470CE8(a1, a2 + 1, a3, a4, a5, a6, v78);
                        v41 = v56;
                        v43 = v57;
                        v44 = v52;

                        v45 = v51;
                        v37 = v71;
                        v55 = v74;
                        goto LABEL_29;
                      }

                      sub_1003A5228();
                      swift_allocError();
                      *v53 = a3;
                      swift_willThrow();
                    }

LABEL_36:
                    __break(1u);
                    return result;
                  }

LABEL_28:

                  v39 = sub_100470D14(a1, a2, a3, a4, a5, a6, v78);
                  v41 = v40;
                  v43 = v42;
                  v44 = v39;

                  v45 = v69;
LABEL_29:
                  v79[68] = BYTE4(v70) & 1;
                  v79[67] = HIBYTE(v41) & 1;
                  *&v80 = v55;
                  *(&v80 + 1) = v77;
                  LODWORD(v81) = v70;
                  BYTE4(v81) = BYTE4(v70) & 1;
                  DWORD2(v81) = v66;
                  *&v82 = v67;
                  *(&v82 + 1) = v45;
                  *&v83 = v44;
                  *(&v83 + 1) = v43;
                  v84 = v41 & 0x1FF;
                  v85[0] = v55;
                  v85[1] = v77;
                  v86 = v70;
                  v87 = BYTE4(v70) & 1;
                  v88 = v66;
                  v89 = v67;
                  v90 = v45;
                  v91 = v44;
                  v92 = v43;
                  v93 = v41 & 0x1FF;
                  sub_1004308A4(&v80, v79);
                  result = sub_10042ED74(v85);
                  v46 = v83;
                  *(v37 + 32) = v82;
                  *(v37 + 48) = v46;
                  *(v37 + 64) = v84;
                  v47 = v81;
                  *v37 = v80;
                  *(v37 + 16) = v47;
                  return result;
                }

                v55 = v74;
              }

              else
              {
                v85[0] = 47;
                sub_1004A58E4();
                v37 = v71;
              }

              goto LABEL_28;
            }

            sub_1003A5228();
            swift_allocError();
            *v38 = a3;
            swift_willThrow();
            *a1 = v76;
            *(a1 + 8) = v26;
            *(a1 + 16) = v65;
            *(a1 + 20) = v62;
            *(a1 + 22) = v61;
          }

          swift_willThrow();
        }
      }

      else
      {

        result = v72;
        v18 = v75;
      }
    }

    v55 = result;
    v28 = v18;
    v54 = sub_10042FEA4(a1, a2, a3);
    goto LABEL_14;
  }

  return result;
}

uint64_t sub_100429134(uint64_t a1, uint64_t a2, int64_t a3)
{
  result = sub_10046B71C(0x25uLL, 0xE100000000000000, 0, 0, a1, a2, a3);
  if (v3)
  {
    return result;
  }

  v6 = *(a1 + 8);
  v7 = *(a1 + 12);
  if (v7 == v6)
  {
LABEL_5:
    sub_1003A5324();
    swift_allocError();
    return swift_willThrow();
  }

  v8 = *(a1 + 22);
  v9 = *(a1 + 20);
  v10 = *a1;
  result = swift_beginAccess();
  v11 = v6 + 1;
  if (v6 == -1)
  {
    __break(1u);
    goto LABEL_28;
  }

  v12 = *(v10 + 24) + (v8 | (v9 << 8));
  v13 = *(v12 + v6);
  *(a1 + 8) = v11;
  if (v7 == v11)
  {
    goto LABEL_5;
  }

  if (v11 == -1)
  {
LABEL_28:
    __break(1u);
    return result;
  }

  v14 = *(v12 + v11);
  *(a1 + 8) = v11 + 1;
  if ((v13 - 58) <= 0xF5u && (v13 - 65 <= 0x25 ? (v15 = ((1 << (v13 - 65)) & 0x3F0000003FLL) == 0) : (v15 = 1), v15) || (v14 - 58) <= 0xF5u && (v14 - 65 <= 0x25 ? (v16 = ((1 << (v14 - 65)) & 0x3F0000003FLL) == 0) : (v16 = 1), v16))
  {
    sub_1004A6724(36);

    v20._countAndFlagsBits = sub_1004A6CE4();
    sub_1004A5994(v20);

    v21._countAndFlagsBits = 0x20646E6120;
    v21._object = 0xE500000000000000;
    sub_1004A5994(v21);
    v22._countAndFlagsBits = sub_1004A6CE4();
    sub_1004A5994(v22);

    sub_1003A527C();
    swift_allocError();
    *v19 = 0xD00000000000001BLL;
    v19[1] = 0x80000001004B0CD0;
    v19[2] = 0xD000000000000020;
    v19[3] = 0x80000001004B03C0;
    v19[4] = 1264;
    return swift_willThrow();
  }

  if (v13 <= 0x46u)
  {
    v17 = v13;
  }

  else
  {
    v17 = v13 - 32;
  }

  if (v14 <= 0x46u)
  {
    v18 = v14;
  }

  else
  {
    v18 = v14 - 32;
  }

  sub_10000C9C0(&qword_1005D65C0, &unk_1004DD1B0);
  result = swift_allocObject();
  *(result + 16) = xmmword_1004CEA80;
  *(result + 32) = 37;
  *(result + 33) = v17;
  *(result + 34) = v18;
  return result;
}

uint64_t sub_100429408(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = a2 + 1;
  if (__OFADD__(a2, 1))
  {
    __break(1u);
  }

  else
  {
    if (v8 >= a3)
    {
      sub_1003A5228();
      swift_allocError();
      *v19 = a3;
      return swift_willThrow();
    }

    v10 = result;
    v11 = *result;
    v12 = *(result + 8);
    v13 = *(result + 16);
    v20 = *(result + 22);
    v21 = *(result + 20);

    sub_100424660(v10, v8, a3, a4, a5, a6, a7, sub_100474EDC, &v22);
    if (v7)
    {
      v18 = *v10;

      *v10 = v11;
      *(v10 + 8) = v12;
      *(v10 + 16) = v13;
      *(v10 + 20) = v21;
      *(v10 + 22) = v20;
      return swift_willThrow();
    }

    return v22;
  }

  return result;
}

uint64_t sub_100429544(uint64_t result, uint64_t a2, int64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = a2 + 1;
  if (__OFADD__(a2, 1))
  {
    __break(1u);
  }

  else
  {
    if (v8 >= a3)
    {
      sub_1003A5228();
      swift_allocError();
      *v19 = a3;
      return swift_willThrow();
    }

    v10 = result;
    v11 = *result;
    v12 = *(result + 8);
    v13 = *(result + 16);
    v20 = *(result + 22);
    v21 = *(result + 20);

    sub_10042699C(v10, v8, a3, a4, a5, a6, a7, &v22);
    if (v7)
    {
      v18 = *v10;

      *v10 = v11;
      *(v10 + 8) = v12;
      *(v10 + 16) = v13;
      *(v10 + 20) = v21;
      *(v10 + 22) = v20;
      return swift_willThrow();
    }

    return v22;
  }

  return result;
}

int64_t sub_10042966C@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, int64_t a3@<X2>, int64_t a4@<X5>, unint64_t a5@<X7>, uint64_t a6@<X8>, unint64_t a7, uint64_t a8)
{
  result = sub_10046B71C(a5, a7, 0, 0, a1, a2, a3);
  if (v8)
  {
    return result;
  }

  result = sub_10046C278(a1, a2, a3, 1);
  if (result < 0)
  {
    sub_1003A527C();
    swift_allocError();
    *v17 = 0xD000000000000011;
    v17[1] = 0x80000001004B08A0;
    v17[2] = 0xD000000000000020;
    v17[3] = 0x80000001004B03C0;
    v17[4] = 202;
    return swift_willThrow();
  }

  if (result > a4)
  {
    v15 = result;
    sub_1003FF690();
    swift_allocError();
    *v16 = v15;
    v16[1] = a4;
    return swift_willThrow();
  }

  if (__OFADD__(a2, 1))
  {
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v37 = result;
  if (a2 + 1 >= a3)
  {
    sub_1003A5228();
    swift_allocError();
    *v23 = a3;
    swift_willThrow();
    swift_errorRetain();
    sub_10000C9C0(&qword_1005D0460, &qword_1004D3CE0);
    if (!swift_dynamicCast())
    {
    }
  }

  else
  {
    v18 = *a1;
    v19 = *(a1 + 8);
    v20 = *(a1 + 16);
    v21 = *(a1 + 20);
    v22 = *(a1 + 22);

    sub_10046B71C(0x2BuLL, 0xE100000000000000, 0, 0, a1, a2 + 1, a3);
  }

  sub_10046B71C(0x7DuLL, 0xE100000000000000, 0, 0, a1, a2, a3);
  sub_100464188(a1, a2, a3);
  result = ByteBuffer.readSlice(length:)(v37);
  if (!result)
  {
    sub_1003A5324();
    swift_allocError();
    return swift_willThrow();
  }

  v26 = v24;
  v27 = HIDWORD(v24);
  v28 = v24;
  if (HIDWORD(v24) < v24)
  {
    goto LABEL_25;
  }

  v29 = v25;
  v30 = (WORD2(v25) << 8) | BYTE6(v25);
  if ((v25 - v30) < v27)
  {
LABEL_26:
    __break(1u);
    return result;
  }

  v31 = result;
  v38[0] = result;
  v32 = HIWORD(v25);
  v33 = HIDWORD(v25);
  v38[1] = v24;
  v39 = v25;
  v40 = WORD2(v25);
  v41 = BYTE6(v25);
  v42 = v24;
  v43 = HIDWORD(v24);
  swift_beginAccess();
  v34 = v27 - v28;
  if (v27 == v28)
  {
LABEL_21:

    result = sub_1003A52D0(v38);
    *a6 = v31;
    *(a6 + 8) = v26;
    *(a6 + 12) = v27;
    *(a6 + 16) = v29;
    *(a6 + 20) = v33;
    *(a6 + 22) = v32;
  }

  else
  {
    v35 = (*(v31 + 24) + v30 + v28);
    while (*v35)
    {
      ++v35;
      if (!--v34)
      {
        goto LABEL_21;
      }
    }

    sub_1003A52D0(v38);
    sub_1003A527C();
    swift_allocError();
    *v36 = 0xD000000000000019;
    v36[1] = 0x80000001004B0BC0;
    v36[2] = 0xD000000000000020;
    v36[3] = 0x80000001004B03C0;
    v36[4] = a8;
    swift_willThrow();
  }

  return result;
}

uint64_t sub_100429A90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int64_t a6, uint64_t a7)
{
  result = sub_10041F4F0(a1, a2, a3, a4, a5, a6, a7, sub_10042B7FC);
  if (!v7)
  {
    sub_10046C184(result, v9, v10 & 0xFFFFFFFFFFFFFFLL, 0xD000000000000020, 0x80000001004B03C0, 1554);
    v11 = sub_1004A5814();

    return v11;
  }

  return result;
}

uint64_t sub_100429B44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, int64_t a6@<X5>, uint64_t a7@<X6>, uint64_t *a8@<X8>)
{
  sub_10000C9C0(&qword_1005DC848, &qword_100504B98);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1004D13E0;
  *(inited + 32) = sub_100429E44;
  *(inited + 40) = 0;
  *(inited + 48) = sub_100429F4C;
  *(inited + 56) = 0;
  *(inited + 64) = sub_10042A048;
  *(inited + 72) = 0;
  *(inited + 80) = sub_10042A144;
  *(inited + 88) = 0;
  *(inited + 96) = sub_10042A244;
  *(inited + 104) = 0;
  v15 = swift_allocObject();
  v29 = a6;
  v15[2] = a4;
  v15[3] = a5;
  v15[4] = a6;
  v15[5] = a7;
  v16 = swift_allocObject();
  *(v16 + 16) = sub_10042EB24;
  *(v16 + 24) = v15;
  *(inited + 112) = sub_10042EB44;
  *(inited + 120) = v16;

  v17 = sub_1003FB45C(inited, a1, a2, a3, 0xD000000000000020, 0x80000001004B03C0, 1558);
  v19 = v18;
  swift_setDeallocating();
  sub_10000C9C0(&qword_1005DA5D8, &qword_100504BA0);
  result = swift_arrayDestroy();
  if (!v31)
  {
    if (__OFADD__(a2, 1))
    {
      __break(1u);
    }

    else if (a2 + 1 >= a3)
    {

      sub_1003A5228();
      swift_allocError();
      *v23 = a3;
      return swift_willThrow();
    }

    else
    {
      v21 = *a1;
      v22 = *(a1 + 8);
      v26 = *(a1 + 20);
      v27 = *(a1 + 16);
      v25 = *(a1 + 22);

      sub_100469DF8(a1);

      result = sub_10041FC00(a1, a2, a3, a4, a5, v29, a7);
      *a8 = v17;
      a8[1] = v19;
      a8[2] = result;
      a8[3] = v24;
    }
  }

  return result;
}

uint64_t sub_100429E44@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = *a2;
  v7 = a2[1];
  if (qword_1005DBB88 != -1)
  {
    swift_once();
  }

  v9 = static Media.TopLevelType.application;
  v8 = unk_1005DE9D0;
  result = sub_10046B71C(0x22uLL, 0xE100000000000000, 0, 0, a1, v6, v7);
  if (!v3)
  {
    sub_10046B71C(0x544143494C505041uLL, 0xEB000000004E4F49, 0, 0, a1, v6, v7);
    sub_10046B71C(0x22uLL, 0xE100000000000000, 0, 0, a1, v6, v7);
    *a3 = v9;
    a3[1] = v8;
  }

  return result;
}

uint64_t sub_100429F4C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = *a2;
  v7 = a2[1];
  if (qword_1005DBB90 != -1)
  {
    swift_once();
  }

  v9 = static Media.TopLevelType.audio;
  v8 = unk_1005DE9E0;
  result = sub_10046B71C(0x22uLL, 0xE100000000000000, 0, 0, a1, v6, v7);
  if (!v3)
  {
    sub_10046B71C(0x4F49445541uLL, 0xE500000000000000, 0, 0, a1, v6, v7);
    sub_10046B71C(0x22uLL, 0xE100000000000000, 0, 0, a1, v6, v7);
    *a3 = v9;
    a3[1] = v8;
  }

  return result;
}

uint64_t sub_10042A048@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = *a2;
  v7 = a2[1];
  if (qword_1005DBB98 != -1)
  {
    swift_once();
  }

  v9 = static Media.TopLevelType.image;
  v8 = unk_1005DE9F0;
  result = sub_10046B71C(0x22uLL, 0xE100000000000000, 0, 0, a1, v6, v7);
  if (!v3)
  {
    sub_10046B71C(0x4547414D49uLL, 0xE500000000000000, 0, 0, a1, v6, v7);
    sub_10046B71C(0x22uLL, 0xE100000000000000, 0, 0, a1, v6, v7);
    *a3 = v9;
    a3[1] = v8;
  }

  return result;
}

uint64_t sub_10042A144@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = *a2;
  v7 = a2[1];
  if (qword_1005DBBA0 != -1)
  {
    swift_once();
  }

  v9 = static Media.TopLevelType.message;
  v8 = unk_1005DEA00;
  result = sub_10046B71C(0x22uLL, 0xE100000000000000, 0, 0, a1, v6, v7);
  if (!v3)
  {
    sub_10046B71C(0x4547415353454DuLL, 0xE700000000000000, 0, 0, a1, v6, v7);
    sub_10046B71C(0x22uLL, 0xE100000000000000, 0, 0, a1, v6, v7);
    *a3 = v9;
    a3[1] = v8;
  }

  return result;
}

uint64_t sub_10042A244@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = *a2;
  v7 = a2[1];
  if (qword_1005DBBA8 != -1)
  {
    swift_once();
  }

  v9 = static Media.TopLevelType.video;
  v8 = unk_1005DEA10;
  result = sub_10046B71C(0x22uLL, 0xE100000000000000, 0, 0, a1, v6, v7);
  if (!v3)
  {
    sub_10046B71C(0x4F45444956uLL, 0xE500000000000000, 0, 0, a1, v6, v7);
    sub_10046B71C(0x22uLL, 0xE100000000000000, 0, 0, a1, v6, v7);
    *a3 = v9;
    a3[1] = v8;
  }

  return result;
}

uint64_t sub_10042A340@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, int64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, int64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  result = sub_10046B71C(0x415441444154454DuLL, 0xE900000000000020, 0, 0, a1, a2, a3);
  if (!v8)
  {
    v41 = a8;
    v18 = sub_10041ED48(a1, a2, a3, a4, a5, a6, a7);
    v20 = v19;
    v35 = v21;
    v38 = HIDWORD(v21);
    swift_beginAccess();
    v22 = v38 - v35;
    if (v38 == v35)
    {
      v23 = _swiftEmptyArrayStorage;
    }

    else
    {
      v36 = ((v20 >> 24) & 0xFFFF00 | BYTE6(v20)) + v35;
      v39 = *(v18 + 24);
      __n = v22;
      v24 = sub_10015BEAC(v22, 0);
      memcpy(v24 + 32, (v39 + v36), __n);
      v23 = v24;
    }

    v40 = _s12NIOIMAPCore211MailboxNameVyACSays5UInt8VGcfC_0(v23);
    v37 = v25;

    if (__OFADD__(a2, 1))
    {
      __break(1u);
    }

    else if (a2 + 1 >= a3)
    {

      sub_1003A5228();
      swift_allocError();
      *v28 = a3;
      return swift_willThrow();
    }

    else
    {
      v26 = *a1;
      v27 = *(a1 + 8);
      v32 = *(a1 + 20);
      __na = *(a1 + 16);
      v31 = *(a1 + 22);

      sub_100469DF8(a1);

      result = sub_10040155C(a1, a2, a3, a4, a5, a6, a7);
      *v41 = result;
      *(v41 + 8) = v29;
      *(v41 + 16) = v30;
      *(v41 + 24) = v40;
      *(v41 + 32) = v37;
    }
  }

  return result;
}

uint64_t sub_10042A5BC@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, int64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, int64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  result = sub_10046B71C(0x415441444154454DuLL, 0xE900000000000020, 0, 0, a1, a2, a3);
  if (!v8)
  {
    v39 = a8;
    v18 = sub_10041ED48(a1, a2, a3, a4, a5, a6, a7);
    v20 = v19;
    v33 = v21;
    v36 = HIDWORD(v21);
    swift_beginAccess();
    v22 = v36 - v33;
    if (v36 == v33)
    {
      v23 = _swiftEmptyArrayStorage;
    }

    else
    {
      v34 = ((v20 >> 24) & 0xFFFF00 | BYTE6(v20)) + v33;
      v37 = *(v18 + 24);
      __n = v22;
      v24 = sub_10015BEAC(v22, 0);
      memcpy(v24 + 32, (v37 + v34), __n);
      v23 = v24;
    }

    v38 = _s12NIOIMAPCore211MailboxNameVyACSays5UInt8VGcfC_0(v23);
    v35 = v25;

    if (__OFADD__(a2, 1))
    {
      __break(1u);
    }

    else if (a2 + 1 >= a3)
    {

      sub_1003A5228();
      swift_allocError();
      *v28 = a3;
      return swift_willThrow();
    }

    else
    {
      v26 = *a1;
      v27 = *(a1 + 8);
      v30 = *(a1 + 20);
      __na = *(a1 + 16);
      v29 = *(a1 + 22);

      sub_100469DF8(a1);

      result = sub_100401CE4(a1, a2, a3, a4, a5, a6, a7);
      *v39 = result;
      *(v39 + 8) = v38;
      *(v39 + 16) = v35 | 0x8000000000000000;
      *(v39 + 24) = 0;
      *(v39 + 32) = 0;
    }
  }

  return result;
}

uint64_t sub_10042A840(uint64_t result, uint64_t a2, int64_t a3, uint64_t a4, uint64_t a5, int64_t a6)
{
  v7 = a2 + 1;
  if (__OFADD__(a2, 1))
  {
    __break(1u);
  }

  else
  {
    if (v7 >= a3)
    {
      sub_1003A5228();
      swift_allocError();
      *v15 = a3;
      return swift_willThrow();
    }

    v9 = result;
    v10 = *result;
    v11 = *(result + 8);
    v12 = *(result + 16);
    v16 = *(result + 22);
    v17 = *(result + 20);

    sub_10042966C(v9, v7, a3, a6, 0x7B7EuLL, &v18, 0xE200000000000000, 1488);
    if (v6)
    {
      v14 = *v9;

      *v9 = v10;
      *(v9 + 8) = v11;
      *(v9 + 16) = v12;
      *(v9 + 20) = v17;
      *(v9 + 22) = v16;
      return swift_willThrow();
    }

    return v18;
  }

  return result;
}

uint64_t sub_10042A98C@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, int64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, int64_t a6@<X5>, uint64_t a7@<X6>, _OWORD *a8@<X8>)
{
  v9 = a2 + 1;
  if (__OFADD__(a2, 1))
  {
    __break(1u);
  }

  else
  {
    if (v9 >= a3)
    {
      sub_1003A5228();
      swift_allocError();
      *v20 = a3;
      return swift_willThrow();
    }

    v11 = result;
    v12 = *result;
    v13 = *(result + 8);
    v14 = *(result + 16);
    v24 = *(result + 22);
    v25 = *(result + 20);

    sub_10042AC78(v11, v9, a3, a4, a5, a6, a7, v26);
    if (v8)
    {
      v19 = *v11;

      *v11 = v12;
      *(v11 + 8) = v13;
      *(v11 + 16) = v14;
      *(v11 + 20) = v25;
      *(v11 + 22) = v24;
      return swift_willThrow();
    }

    v21 = v26[1];
    *a8 = v26[0];
    a8[1] = v21;
    v22 = v26[3];
    a8[2] = v26[2];
    a8[3] = v22;
  }

  return result;
}

uint64_t sub_10042AAC8(uint64_t a1, uint64_t a2, int64_t a3)
{
  result = sub_10046B71C(0x22uLL, 0xE100000000000000, 0, 0, a1, a2, a3);
  if (!v3)
  {
    v8 = *(a1 + 8);
    if (*(a1 + 12) == v8)
    {
      sub_1003A5324();
      swift_allocError();
      return swift_willThrow();
    }

    v9 = *(a1 + 22);
    v10 = *(a1 + 20);
    v11 = *a1;
    result = swift_beginAccess();
    v12 = v8 + 1;
    if (v8 == -1)
    {
      __break(1u);
      return result;
    }

    v13 = *(*(v11 + 24) + (v9 | (v10 << 8)) + v8);
    *(a1 + 8) = v12;
    v14 = v13 == 10 || v13 == 13;
    if (v14 || (v13 & 0x80) != 0 || !v13 || v13 == 34 || v13 == 92)
    {
      sub_1003A527C();
      swift_allocError();
      *v15 = 0xD000000000000011;
      v15[1] = 0x80000001004B0D60;
      v15[2] = 0xD000000000000020;
      v15[3] = 0x80000001004B03C0;
      v15[4] = 1761;
      return swift_willThrow();
    }

    sub_10046B71C(0x22uLL, 0xE100000000000000, 0, 0, a1, a2, a3);
    return sub_1004A58E4();
  }

  return result;
}

uint64_t sub_10042AC78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, int64_t a6@<X5>, uint64_t a7@<X6>, _OWORD *a8@<X8>)
{
  result = sub_10046B71C(0x28uLL, 0xE100000000000000, 0, 0, a1, a2, a3);
  if (!v8)
  {
    result = sub_10041F4F0(a1, a2, a3, a4, a5, a6, a7, sub_10042B7FC);
    if (__OFADD__(a2, 1))
    {
      __break(1u);
    }

    else
    {
      v47 = result;
      if (a2 + 1 >= a3)
      {
        sub_1003A5228();
        swift_allocError();
        *v22 = a3;
        swift_willThrow();
      }

      else
      {
        v40 = v18;
        v41 = v19;
        v20 = *a1;
        v21 = *(a1 + 8);
        v46 = *(a1 + 16);
        v43 = *(a1 + 20);
        v42 = *(a1 + 22);
        sub_100469DF8(a1);
        v23 = *a1;
        v44 = *(a1 + 8);
        v36 = *(a1 + 16);
        v38 = *(a1 + 12);
        v33 = *(a1 + 22);
        v34 = *(a1 + 20);

        v24 = sub_10042AAC8(a1, a2 + 1, a3);
        v45 = v25;
        v35 = v24;

        v53 = 0;
        v54 = _swiftEmptyArrayStorage;
        v55 = _swiftEmptyArrayStorage;
        v26 = *a1;
        v27 = *(a1 + 8);
        LODWORD(v23) = *(a1 + 16);
        v37 = *(a1 + 22);
        v39 = *(a1 + 20);

        sub_100469200(a1, a2 + 1, a3, &v53, a4, a5, a6, a7);

        v28 = v53;
        v29 = v54;
        v30 = v55;
        sub_10046B71C(0x29uLL, 0xE100000000000000, 0, 0, a1, a2, a3);
        *&v49 = v47;
        *(&v49 + 1) = v40;
        LODWORD(v50) = v41;
        WORD2(v50) = WORD2(v41);
        BYTE6(v50) = BYTE6(v41);
        *(&v50 + 1) = v35;
        *&v51 = v45;
        *(&v51 + 1) = v28;
        *&v52 = v29;
        *(&v52 + 1) = v30;
        v53 = v47;
        v54 = v40;
        LODWORD(v55) = v41;
        WORD2(v55) = WORD2(v41);
        BYTE6(v55) = BYTE6(v41);
        v56 = v35;
        v57 = v45;
        v58 = v28;
        v59 = v29;
        v60 = v30;
        sub_1003A3310(&v49, v48);
        result = sub_1002EED64(&v53);
        v31 = v50;
        *a8 = v49;
        a8[1] = v31;
        v32 = v52;
        a8[2] = v51;
        a8[3] = v32;
      }
    }
  }

  return result;
}

uint64_t sub_10042B1A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, int64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v18 = a2 + 1;
  if (__OFADD__(a2, 1))
  {
    __break(1u);
    *v8 = v18;
    *(v8 + 8) = v17;
    *(v8 + 16) = v14;
    *(v8 + 20) = v13;
    *(v8 + 22) = i;
  }

  else
  {
    v9 = a3;
    if (v18 >= a3)
    {
      sub_1003A5228();
      swift_allocError();
      *v24 = v9;
      return swift_willThrow();
    }

    v11 = a2;
    v8 = a1;
    v66 = a8;
    v19 = *a1;
    v20 = *(a1 + 8);
    v21 = *(a1 + 16);
    v22 = *(a1 + 20);
    v23 = *(a1 + 22);
    sub_100469DF8(a1);
    if (v10)
    {
      *v8 = v19;
      *(v8 + 8) = v20;
      *(v8 + 16) = v21;
      *(v8 + 20) = v22;
      *(v8 + 22) = v23;
      return swift_willThrow();
    }

    v26 = sub_10041F4F0(v8, v11, v9, a4, a5, a6, a7, sub_10042B7FC);
    v63 = v27;
    v64 = v28;
    v65 = v26;
    v29 = *v8;
    v30 = *(v8 + 8);
    v31 = *(v8 + 16);
    v32 = *(v8 + 20);
    v33 = *(v8 + 22);
    sub_100469DF8(v8);
    sub_10046B71C(0x28uLL, 0xE100000000000000, 0, 0, v8, v11, v9);
    sub_10000C9C0(&qword_1005DC870, &unk_10050A030);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_1004CEAA0;
    *(v15 + 32) = sub_10041F4F0(v8, v11, v9, a4, a5, a6, a7, sub_10042B7FC);
    *(v15 + 40) = v34;
    *(v15 + 44) = v35;
    *(v15 + 48) = v36;
    *(v15 + 52) = v37;
    *(v15 + 54) = v38;
    v39 = *v8;
    v16 = *(v8 + 8);
    v40 = *(v8 + 20);
    v60 = *(v8 + 16);
    v61 = *(v8 + 22);

    v62 = v18 + 1;
    if (v18 + 1 >= v9)
    {
      sub_1003A5228();
      swift_allocError();
      *v53 = v9;
      goto LABEL_17;
    }

    v57 = v15;
    v58 = v39;
    v59 = v40;
    v41 = v18 + 2;
    v18 = *v8;
    v17 = *(v8 + 8);
    v14 = *(v8 + 16);
    v13 = *(v8 + 20);
    for (i = *(v8 + 22); v41 < v9; i = *(v8 + 22))
    {
      swift_retain_n();
      sub_100469DF8(v8);

      v42 = sub_10041F4F0(v8, v62, v9, a4, a5, a6, a7, sub_10042B7FC);
      v44 = v43;
      v45 = v42;
      v47 = v46;

      v49 = *(v15 + 16);
      v48 = *(v15 + 24);
      v50 = v49 + 1;
      if (v49 >= v48 >> 1)
      {
        v52 = sub_100461254((v48 > 1), v49 + 1, 1, v15);
        v50 = v49 + 1;
        v15 = v52;
      }

      *(v15 + 16) = v50;
      v51 = v15 + 24 * v49;
      *(v51 + 32) = v45;
      *(v51 + 40) = v47;
      *(v51 + 48) = v44;
      *(v51 + 52) = WORD2(v44);
      *(v51 + 54) = BYTE6(v44);
      v18 = *v8;
      v17 = *(v8 + 8);
      v14 = *(v8 + 16);
      v13 = *(v8 + 20);
    }

    sub_1003A5228();
    swift_allocError();
    *v54 = v9;

    v15 = v57;
  }

  swift_willThrow();
  v55 = *v8;

  *v8 = v18;
  *(v8 + 8) = v17;
  *(v8 + 16) = v14;
  *(v8 + 20) = v13;
  *(v8 + 22) = i;
  v40 = v59;
  v39 = v58;
LABEL_17:
  swift_willThrow();
  swift_errorRetain();
  sub_10000C9C0(&qword_1005D0460, &qword_1004D3CE0);
  if (swift_dynamicCast())
  {

    result = sub_10046B71C(0x29uLL, 0xE100000000000000, 0, 0, v8, v11, v9);
    *v66 = v65;
    *(v66 + 8) = v63;
    *(v66 + 16) = v64;
    *(v66 + 20) = WORD2(v64);
    *(v66 + 22) = BYTE6(v64);
    *(v66 + 24) = v15;
  }

  else
  {

    v56 = *v8;

    *v8 = v39;
    *(v8 + 8) = v16;
    *(v8 + 16) = v60;
    *(v8 + 20) = v40;
    *(v8 + 22) = v61;
    swift_willThrow();
  }

  return result;
}

uint64_t sub_10042B720(unint64_t a1, uint64_t a2, int64_t a3)
{
  result = sub_10046B71C(0x2EuLL, 0xE100000000000000, 0, 0, a1, a2, a3);
  if (!v3)
  {
    result = sub_10046C278(a1, a2, a3, 1);
    if (result < 0)
    {
      sub_1003A527C();
      swift_allocError();
      *v8 = 0xD000000000000011;
      v8[1] = 0x80000001004B08A0;
      v8[2] = 0xD000000000000020;
      v8[3] = 0x80000001004B03C0;
      v8[4] = 202;
      return swift_willThrow();
    }
  }

  return result;
}

uint64_t sub_10042B7FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int64_t a3@<X2>, uint64_t a4@<X8>)
{
  result = sub_10046B71C(0x22uLL, 0xE100000000000000, 1, 0, a1, a2, a3);
  if (v4)
  {
    return result;
  }

  v56 = 0;
  v10 = sub_10046BE40(a1, a2, a3, &v56, &v56 + 1);
  v12 = v11;
  v14 = v13;
  result = sub_10046B71C(0x22uLL, 0xE100000000000000, 1, 0, a1, a2, a3);
  if ((v56 & 0x100) == 0)
  {
    *a4 = v10;
    *(a4 + 8) = v12;
    *(a4 + 16) = v14;
    *(a4 + 20) = WORD2(v14);
    *(a4 + 22) = BYTE6(v14);
    return result;
  }

  v49 = v12;
  v50 = HIDWORD(v12);
  v15 = qword_1005DB9D0;

  if (v15 != -1)
  {
LABEL_48:
    swift_once();
  }

  v48 = a4;
  v16 = static ByteBufferAllocator.zeroCapacityWithDefaultAllocator;
  v17 = HIDWORD(qword_1005DE390);
  v18 = dword_1005DE398;
  v19 = word_1005DE39C;
  v20 = byte_1005DE39E;
  v51 = static ByteBufferAllocator.zeroCapacityWithDefaultAllocator;
  v52 = qword_1005DE390;
  v53 = dword_1005DE398;
  v54 = word_1005DE39C;
  v55 = byte_1005DE39E;

  swift_beginAccess();
  if (v49 == v50)
  {
LABEL_5:

    *v48 = v16;
    *(v48 + 8) = v52;
    *(v48 + 12) = v17;
    *(v48 + 16) = v18;
    *(v48 + 20) = v19;
    *(v48 + 22) = v20;
    return result;
  }

  v47 = v14;
  v21 = BYTE6(v14) | (WORD2(v14) << 8);
  LODWORD(v14) = v49;
  while (1)
  {
    a4 = v10;
    v24 = *(v10 + 24);
    v10 = v21;
    v25 = v24 + v21;
    sub_10000C9C0(&qword_1005D65C0, &unk_1004DD1B0);
    v26 = swift_allocObject();
    v27 = j__malloc_size(v26);
    *(v26 + 16) = 1;
    *(v26 + 24) = 2 * v27 - 64;
    v28 = *(v25 + v14);
    *(v26 + 32) = v28;
    v29 = __CFADD__(v14, 1);
    v14 = (v14 + 1);
    if (v29)
    {
      __break(1u);
LABEL_43:
      __break(1u);
LABEL_44:
      __break(1u);
LABEL_45:
      __break(1u);
LABEL_46:
      __break(1u);
LABEL_47:
      __break(1u);
      goto LABEL_48;
    }

    if (v28 == 92)
    {
      break;
    }

    v37 = v17 + 1;
    if (v17 == -1)
    {
      goto LABEL_43;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      if (v37 >= v18)
      {
        v38 = v37 - v18;
      }

      else
      {
        v38 = 0;
      }

      v39 = variable initialization expression of Engine.isProcessingUpdates();
      ByteBuffer._copyStorageAndRebase(extraCapacity:resetIndices:)(v38, v39 & 1);
    }

    ByteBuffer._ensureAvailableCapacity(_:at:)(1u, v17);
    v16 = v51;
    v18 = v53;
    v19 = v54;
    v20 = v55;
    swift_beginAccess();
    v40 = v55 | (v54 << 8);
    v41 = v53 - v40;
    if (v53 - v40 >= v17)
    {
      v41 = v17;
    }

    if (!v17)
    {
      v41 = 0;
    }

    *(*(v51 + 24) + v40 + v41) = v28;
    v17 = HIDWORD(v52) + 1;
    if (HIDWORD(v52) == -1)
    {
      goto LABEL_44;
    }

LABEL_14:
    v21 = v10;
    HIDWORD(v52) = v17;
    v10 = a4;
    if (v14 == v50)
    {
      goto LABEL_5;
    }
  }

  if (v14 == v50)
  {
    goto LABEL_39;
  }

  v30 = *(a4 + 24) + v10;
  v31 = swift_allocObject();
  v32 = j__malloc_size(v31);
  *(v31 + 16) = 1;
  *(v31 + 24) = 2 * v32 - 64;
  v33 = *(v30 + v14);
  *(v31 + 32) = v33;
  v29 = __CFADD__(v14, 1);
  v14 = (v14 + 1);
  if (v29)
  {
    goto LABEL_45;
  }

  if (v33 == 92 || v33 == 34)
  {
    v34 = v17 + 1;
    if (v17 == -1)
    {
      goto LABEL_46;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      if (v34 >= v18)
      {
        v35 = v34 - v18;
      }

      else
      {
        v35 = 0;
      }

      v36 = variable initialization expression of Engine.isProcessingUpdates();
      ByteBuffer._copyStorageAndRebase(extraCapacity:resetIndices:)(v35, v36 & 1);
    }

    ByteBuffer._ensureAvailableCapacity(_:at:)(1u, v17);
    v16 = v51;
    v18 = v53;
    v19 = v54;
    v20 = v55;
    swift_beginAccess();
    v22 = v55 | (v54 << 8);
    v23 = v53 - v22;
    if (v53 - v22 >= v17)
    {
      v23 = v17;
    }

    if (!v17)
    {
      v23 = 0;
    }

    *(*(v51 + 24) + v22 + v23) = v33;
    v17 = HIDWORD(v52) + 1;
    if (HIDWORD(v52) == -1)
    {
      goto LABEL_47;
    }

    goto LABEL_14;
  }

LABEL_39:
  sub_1004A6724(36);

  if (v50 < v49)
  {
    __break(1u);
  }

  else if (v50 <= (v47 - v10))
  {
    swift_beginAccess();
    v42 = *(a4 + 24);

    v43 = sub_1004A58D4();
    v45 = v44;

    v57._countAndFlagsBits = v43;
    v57._object = v45;
    sub_1004A5994(v57);

    v58._countAndFlagsBits = 39;
    v58._object = 0xE100000000000000;
    sub_1004A5994(v58);
    sub_1003A527C();
    swift_allocError();
    *v46 = 0xD000000000000021;
    v46[1] = 0x80000001004B0B90;
    v46[2] = 0xD000000000000020;
    v46[3] = 0x80000001004B03C0;
    v46[4] = 2065;
    swift_willThrow();
  }

  __break(1u);
  return result;
}

uint64_t sub_10042BD48@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  result = sub_1004712FC(34, 0xE100000000000000, a1, a2, a3);
  if (v4)
  {
    return result;
  }

  v56 = 0;
  v10 = sub_10046CC90(a1, a2, a3, &v56, &v56 + 1);
  v12 = v11;
  v14 = v13;
  result = sub_1004712FC(34, 0xE100000000000000, a1, a2, a3);
  if ((v56 & 0x100) == 0)
  {
    *a4 = v10;
    *(a4 + 8) = v12;
    *(a4 + 16) = v14;
    *(a4 + 20) = WORD2(v14);
    *(a4 + 22) = BYTE6(v14);
    return result;
  }

  v49 = v12;
  v50 = HIDWORD(v12);
  v15 = qword_1005DB9D0;

  if (v15 != -1)
  {
LABEL_48:
    swift_once();
  }

  v48 = a4;
  v16 = static ByteBufferAllocator.zeroCapacityWithDefaultAllocator;
  v17 = HIDWORD(qword_1005DE390);
  v18 = dword_1005DE398;
  v19 = word_1005DE39C;
  v20 = byte_1005DE39E;
  v51 = static ByteBufferAllocator.zeroCapacityWithDefaultAllocator;
  v52 = qword_1005DE390;
  v53 = dword_1005DE398;
  v54 = word_1005DE39C;
  v55 = byte_1005DE39E;

  swift_beginAccess();
  if (v49 == v50)
  {
LABEL_5:

    *v48 = v16;
    *(v48 + 8) = v52;
    *(v48 + 12) = v17;
    *(v48 + 16) = v18;
    *(v48 + 20) = v19;
    *(v48 + 22) = v20;
    return result;
  }

  v47 = v14;
  v21 = BYTE6(v14) | (WORD2(v14) << 8);
  LODWORD(v14) = v49;
  while (1)
  {
    a4 = v10;
    v24 = *(v10 + 24);
    v10 = v21;
    v25 = v24 + v21;
    sub_10000C9C0(&qword_1005D65C0, &unk_1004DD1B0);
    v26 = swift_allocObject();
    v27 = j__malloc_size(v26);
    *(v26 + 16) = 1;
    *(v26 + 24) = 2 * v27 - 64;
    v28 = *(v25 + v14);
    *(v26 + 32) = v28;
    v29 = __CFADD__(v14, 1);
    v14 = (v14 + 1);
    if (v29)
    {
      __break(1u);
LABEL_43:
      __break(1u);
LABEL_44:
      __break(1u);
LABEL_45:
      __break(1u);
LABEL_46:
      __break(1u);
LABEL_47:
      __break(1u);
      goto LABEL_48;
    }

    if (v28 == 92)
    {
      break;
    }

    v37 = v17 + 1;
    if (v17 == -1)
    {
      goto LABEL_43;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      if (v37 >= v18)
      {
        v38 = v37 - v18;
      }

      else
      {
        v38 = 0;
      }

      v39 = variable initialization expression of Engine.isProcessingUpdates();
      ByteBuffer._copyStorageAndRebase(extraCapacity:resetIndices:)(v38, v39 & 1);
    }

    ByteBuffer._ensureAvailableCapacity(_:at:)(1u, v17);
    v16 = v51;
    v18 = v53;
    v19 = v54;
    v20 = v55;
    swift_beginAccess();
    v40 = v55 | (v54 << 8);
    v41 = v53 - v40;
    if (v53 - v40 >= v17)
    {
      v41 = v17;
    }

    if (!v17)
    {
      v41 = 0;
    }

    *(*(v51 + 24) + v40 + v41) = v28;
    v17 = HIDWORD(v52) + 1;
    if (HIDWORD(v52) == -1)
    {
      goto LABEL_44;
    }

LABEL_14:
    v21 = v10;
    HIDWORD(v52) = v17;
    v10 = a4;
    if (v14 == v50)
    {
      goto LABEL_5;
    }
  }

  if (v14 == v50)
  {
    goto LABEL_39;
  }

  v30 = *(a4 + 24) + v10;
  v31 = swift_allocObject();
  v32 = j__malloc_size(v31);
  *(v31 + 16) = 1;
  *(v31 + 24) = 2 * v32 - 64;
  v33 = *(v30 + v14);
  *(v31 + 32) = v33;
  v29 = __CFADD__(v14, 1);
  v14 = (v14 + 1);
  if (v29)
  {
    goto LABEL_45;
  }

  if (v33 == 92 || v33 == 34)
  {
    v34 = v17 + 1;
    if (v17 == -1)
    {
      goto LABEL_46;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      if (v34 >= v18)
      {
        v35 = v34 - v18;
      }

      else
      {
        v35 = 0;
      }

      v36 = variable initialization expression of Engine.isProcessingUpdates();
      ByteBuffer._copyStorageAndRebase(extraCapacity:resetIndices:)(v35, v36 & 1);
    }

    ByteBuffer._ensureAvailableCapacity(_:at:)(1u, v17);
    v16 = v51;
    v18 = v53;
    v19 = v54;
    v20 = v55;
    swift_beginAccess();
    v22 = v55 | (v54 << 8);
    v23 = v53 - v22;
    if (v53 - v22 >= v17)
    {
      v23 = v17;
    }

    if (!v17)
    {
      v23 = 0;
    }

    *(*(v51 + 24) + v22 + v23) = v33;
    v17 = HIDWORD(v52) + 1;
    if (HIDWORD(v52) == -1)
    {
      goto LABEL_47;
    }

    goto LABEL_14;
  }

LABEL_39:
  sub_1004A6724(36);

  if (v50 < v49)
  {
    __break(1u);
  }

  else if (v50 <= (v47 - v10))
  {
    swift_beginAccess();
    v42 = *(a4 + 24);

    v43 = sub_1004A58D4();
    v45 = v44;

    v57._countAndFlagsBits = v43;
    v57._object = v45;
    sub_1004A5994(v57);

    v58._countAndFlagsBits = 39;
    v58._object = 0xE100000000000000;
    sub_1004A5994(v58);
    sub_1003A527C();
    swift_allocError();
    *v46 = 0xD000000000000021;
    v46[1] = 0x80000001004B0B90;
    v46[2] = 0xD000000000000020;
    v46[3] = 0x80000001004B03C0;
    v46[4] = 2110;
    swift_willThrow();
  }

  __break(1u);
  return result;
}

int64_t sub_10042C284(uint64_t a1, uint64_t a2, int64_t a3)
{
  v4 = a2 + 1;
  if (__OFADD__(a2, 1))
  {
    __break(1u);
    goto LABEL_11;
  }

  v5 = a3;
  if (v4 >= a3)
  {
    sub_1003A5228();
    swift_allocError();
    *v13 = v5;
    goto LABEL_6;
  }

  v7 = *a1;
  v8 = *(a1 + 8);
  v9 = *(a1 + 16);
  v10 = *(a1 + 20);
  v11 = *(a1 + 22);

  sub_10046B71C(0x5D5BuLL, 0xE200000000000000, 0, 0, a1, v4, v5);
  if (!v3)
  {
    if (qword_1005DBBD8 == -1)
    {
LABEL_9:
      v5 = static SectionSpecifier.complete;
      v15 = unk_1005DEA70;
      v16 = byte_1005DEA78;

      sub_100051190(v15, v16);

      return v5;
    }

LABEL_11:
    swift_once();
    goto LABEL_9;
  }

  v12 = *a1;

  *a1 = v7;
  *(a1 + 8) = v8;
  *(a1 + 16) = v9;
  *(a1 + 20) = v10;
  *(a1 + 22) = v11;
LABEL_6:
  swift_willThrow();
  return v5;
}

uint64_t sub_10042C3DC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = (a2 + 1);
  if (__OFADD__(a2, 1))
  {
    __break(1u);
    goto LABEL_26;
  }

  v11 = result;
  if (v8 >= a3)
  {
    sub_1003A5228();
    swift_allocError();
    *v19 = a3;
LABEL_7:
    swift_willThrow();
    swift_errorRetain();
    sub_10000C9C0(&qword_1005D0460, &qword_1004D3CE0);
    if (swift_dynamicCast())
    {
    }

    else
    {

      swift_errorRetain();
      if ((swift_dynamicCast() & 1) == 0)
      {

        return v8;
      }
    }

    if (v8 < a3)
    {
      v20 = *v11;
      v21 = *(v11 + 8);
      v22 = *(v11 + 16);
      v23 = *(v11 + 20);
      v24 = *(v11 + 22);

      v8 = sub_10042C764(v11, v8, a3, a4, a5, a6, a7);
LABEL_24:

      return v8;
    }

    sub_1003A5228();
    swift_allocError();
    *v25 = a3;
    swift_willThrow();
    return v8;
  }

  v12 = *result;
  v13 = *(result + 8);
  v14 = *(result + 16);
  v15 = *(result + 20);
  v16 = *(result + 22);

  v17 = sub_10042E0BC(v11, v8, a3);
  if (v7)
  {
    v18 = *v11;

    *v11 = v12;
    *(v11 + 8) = v13;
    *(v11 + 16) = v14;
    *(v11 + 20) = v15;
    *(v11 + 22) = v16;
    goto LABEL_7;
  }

  v30 = v17;

  v26 = sub_10047112C(v11, v8, a3, a4, a5, a6, a7);
  v28 = v27;

  if (v28 == 255)
  {
    v26 = 0;
    v29 = 2;
  }

  else
  {
    v29 = v28;
  }

  v8 = v30;
  if (v30[2] || v29 <= 1u || v26 <= 1 || v26 == 3)
  {
    goto LABEL_24;
  }

LABEL_26:
  __break(1u);
  return result;
}

void *sub_10042C764(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = a2 + 1;
  if (__OFADD__(a2, 1))
  {
    __break(1u);
  }

  else
  {
    if (v8 >= a3)
    {
      sub_1003A5228();
      swift_allocError();
      *v21 = a3;
      return swift_willThrow();
    }

    v10 = result;
    v11 = *result;
    v12 = result[1];
    v13 = *(result + 4);
    v24 = *(result + 22);
    v25 = *(result + 10);

    v18 = sub_10042C924(v10, v8, a3, a4, a5, a6, a7);
    if (v7)
    {
      v20 = *v10;

LABEL_9:
      *v10 = v11;
      *(v10 + 8) = v12;
      *(v10 + 16) = v13;
      *(v10 + 20) = v25;
      *(v10 + 22) = v24;
      return swift_willThrow();
    }

    if (v19 >= 2u && v18 == 2)
    {
      v22 = *v10;

      sub_1003A527C();
      swift_allocError();
      *v23 = 0xD00000000000002ALL;
      v23[1] = 0x80000001004B0C30;
      v23[2] = 0xD000000000000020;
      v23[3] = 0x80000001004B03C0;
      v23[4] = 2240;
      swift_willThrow();
      goto LABEL_9;
    }

    return _swiftEmptyArrayStorage;
  }

  return result;
}

uint64_t sub_10042C924(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  sub_10000C9C0(&qword_1005DC850, &qword_100504BA8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1004D13E0;
  *(inited + 32) = sub_10042CBF8;
  *(inited + 40) = 0;
  v14 = swift_allocObject();
  v14[2] = a4;
  v14[3] = a5;
  v14[4] = a6;
  v14[5] = a7;
  v15 = swift_allocObject();
  *(v15 + 16) = sub_10042EB60;
  *(v15 + 24) = v14;
  *(inited + 48) = sub_10042EBBC;
  *(inited + 56) = v15;
  v16 = swift_allocObject();
  v16[2] = a4;
  v16[3] = a5;
  v16[4] = a6;
  v16[5] = a7;
  v17 = swift_allocObject();
  *(v17 + 16) = sub_10042EBD8;
  *(v17 + 24) = v16;
  *(inited + 64) = sub_100430B5C;
  *(inited + 72) = v17;
  *(inited + 80) = sub_10042CC24;
  *(inited + 88) = 0;
  *(inited + 96) = sub_10042CC54;
  *(inited + 104) = 0;
  *(inited + 112) = sub_10042CC80;
  *(inited + 120) = 0;
  swift_retain_n();
  v18 = sub_1003FB730(inited, a1, a2, a3, 0xD000000000000020, 0x80000001004B03C0, 2314);
  swift_setDeallocating();
  sub_10000C9C0(&qword_1005DA5D8, &qword_100504BA0);
  swift_arrayDestroy();
  return v18;
}

uint64_t sub_10042CB48(uint64_t a1, uint64_t a2, int64_t a3, uint64_t a4, uint64_t a5, int64_t a6, uint64_t a7)
{
  result = sub_10046B71C(0xD000000000000012, 0x80000001004B0C10, 0, 0, a1, a2, a3);
  if (!v7)
  {
    return sub_10042597C(a1, a2, a3, a4, a5, a6, a7);
  }

  return result;
}

uint64_t sub_10042CC90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v5 = *(a1 + 8);
  if (*(a1 + 12) == v5)
  {
    sub_1003A5324();
    swift_allocError();
    return swift_willThrow();
  }

  v10 = *(a1 + 22);
  v11 = *(a1 + 20);
  v13 = *a1;
  result = swift_beginAccess();
  if (v5 == -1)
  {
    __break(1u);
  }

  else
  {
    v14 = *(*(v13 + 24) + (v10 | (v11 << 8)) + v5);
    *(a1 + 8) = v5 + 1;
    v15 = (v14 - 45) > 0x32 || ((1 << (v14 - 45)) & 0x4000000000003) == 0;
    if (v15 && (v14 & 0xFFFFFFDF) - 91 < 0xFFFFFFE6)
    {
      sub_1004A6724(26);
      v19 = sub_1004A6CE4();
      v21 = v20;

      v29._object = 0x80000001004B0D80;
      v29._countAndFlagsBits = 0x1000000000000018;
      sub_1004A5994(v29);
      sub_1003A527C();
      swift_allocError();
      *v22 = v19;
      v22[1] = v21;
      v22[2] = 0xD000000000000020;
      v22[3] = 0x80000001004B03C0;
      v22[4] = 2641;
      return swift_willThrow();
    }

    result = sub_10046C958(a1, a2, a3);
    if (!v4)
    {
      v18 = sub_10046C184(result, v16, v17 & 0xFFFFFFFFFFFFFFLL, 0xD000000000000020, 0x80000001004B03C0, 2647);
      v24 = v23;
      v25 = v18;
      v27 = sub_1004A58D4();
      v28 = v26;

      v30._countAndFlagsBits = v25;
      v30._object = v24;
      sub_1004A5994(v30);

      *a4 = v27;
      a4[1] = v28;
    }
  }

  return result;
}

uint64_t sub_10042CF04(char **a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int64_t a7, uint64_t a8)
{
  v15 = a3 + 1;
  if (__OFADD__(a3, 1))
  {
    __break(1u);
LABEL_26:
    v8 = sub_100085070(0, *(v8 + 2) + 1, 1, v8);
LABEL_12:
    v30 = *(v8 + 2);
    v29 = *(v8 + 3);
    v31 = v43;
    if (v30 >= v29 >> 1)
    {
      v31 = v43;
      v8 = sub_100085070((v29 > 1), v30 + 1, 1, v8);
    }

    *(v8 + 2) = v30 + 1;
    v32 = &v8[16 * v30];
    *(v32 + 4) = v54;
    *(v32 + 5) = v50;
    *v45 = v8;
    if (v57 + 1 >= v11)
    {
      sub_1003A5228();
      swift_allocError();
      *v37 = v11;
    }

    else
    {
      while (1)
      {
        v33 = *v9;
        v34 = *(v9 + 8);
        v52 = *(v9 + 16);
        v35 = *(v9 + 20);
        v36 = *(v9 + 22);

        sub_100469DF8(v9);

        if (v31)
        {
          break;
        }

        v31 = 0;
        sub_10042CF04(v45, v9, v57, v11, v44, v14, v13, v12);
      }

      *v9 = v33;
      *(v9 + 8) = v34;
      *(v9 + 16) = v52;
      *(v9 + 20) = v35;
      *(v9 + 22) = v36;
    }

    swift_willThrow();
  }

  v11 = a4;
  if (v15 >= a4)
  {
    sub_1003A5228();
    swift_allocError();
    *v23 = v11;
    return swift_willThrow();
  }

  v12 = a8;
  v13 = a7;
  v14 = a6;
  v9 = a2;
  v18 = *a2;
  v55 = *(a2 + 8);
  v51 = *(a2 + 12);
  v48 = *(a2 + 16);
  v46 = *(a2 + 22);
  v47 = *(a2 + 20);
  swift_retain_n();
  v19 = sub_10041ED48(v9, v15, v11, a5, v14, v13, v12);
  v44 = a5;
  v45 = a1;
  v57 = v15;
  if (!v10)
  {
    v43 = 0;
    v24 = sub_10046C184(v19, v20, v21 & 0xFFFFFFFFFFFFFFLL, 0xD000000000000020, 0x80000001004B03C0, 2681);
    v50 = v28;
    v54 = v24;
    v8 = *a1;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_12;
    }

    goto LABEL_26;
  }

  v22 = *v9;

  *v9 = v18;
  *(v9 + 8) = v55;
  *(v9 + 12) = v51;
  *(v9 + 16) = v48;
  *(v9 + 20) = v47;
  v25 = v15 + 1;
  *(v9 + 22) = v46;
  if (v15 + 1 >= v11)
  {
    sub_1003A5228();
    swift_allocError();
    *v26 = v11;
    swift_willThrow();

    *v9 = v18;
    *(v9 + 8) = v55;
    *(v9 + 12) = v51;
    *(v9 + 16) = v48;
    *(v9 + 20) = v47;
    *(v9 + 22) = v46;
    return swift_willThrow();
  }

  swift_retain_n();
  sub_10046B71C(0x28uLL, 0xE100000000000000, 0, 0, v9, v25, v11);
  sub_10042CF04(v45, v9, v25, v11, 0, v14, v13, v12);
  sub_10046B71C(0x29uLL, 0xE100000000000000, 0, 0, v9, v25, v11);
  if (v15 + 2 < v11)
  {
    for (i = v11; ; sub_10042CF04(v45, v9, v25, i, a5, v39, v13, v12))
    {
      v39 = v14;
      v40 = *v9;
      v41 = *(v9 + 8);
      v56 = *(v9 + 16);
      v53 = *(v9 + 20);
      v49 = *(v9 + 22);

      sub_100469DF8(v9);

      v14 = v39;
    }
  }

  sub_1003A5228();
  swift_allocError();
  *v42 = v11;
  swift_willThrow();
}

uint64_t sub_10042D47C(uint64_t a1, uint64_t a2, int64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8, unint64_t a9, uint64_t (*a10)(uint64_t, uint64_t, int64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  result = sub_10046B71C(a8, a9, 0, 0, a1, a2, a3);
  if (!v10)
  {
    return a10(a1, a2, a3, a4, a5, a6, a7);
  }

  return result;
}

uint64_t sub_10042D524@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X8>)
{
  result = sub_10046B71C(a3, a4, 0, 0, a1, *a2, a2[1]);
  if (!v7)
  {
    *a7 = a5;
    *(a7 + 8) = a6;
  }

  return result;
}

unint64_t sub_10042D57C@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, int64_t a3@<X2>, uint64_t a4@<X3>, unint64_t *a5@<X8>)
{
  result = sub_10046C278(a1, a2, a3, 1);
  if (!v5)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      sub_1003A527C();
      swift_allocError();
      *v10 = 0xD000000000000011;
      v10[1] = 0x80000001004B08A0;
      v10[2] = 0xD000000000000020;
      v10[3] = 0x80000001004B03C0;
      v11 = 202;
    }

    else
    {
      if (v9 == a4)
      {
        *a5 = result;
        return result;
      }

      sub_1004A6724(26);

      v12._countAndFlagsBits = sub_1004A6CE4();
      sub_1004A5994(v12);

      v13._countAndFlagsBits = 0x2C73746967696420;
      v13._object = 0xED000020746F6720;
      sub_1004A5994(v13);
      v14._countAndFlagsBits = sub_1004A6CE4();
      sub_1004A5994(v14);

      sub_1003A527C();
      swift_allocError();
      *v10 = 0x6465746365707845;
      v10[1] = 0xE900000000000020;
      v10[2] = 0xD000000000000020;
      v10[3] = 0x80000001004B03C0;
      v11 = 3051;
    }

    v10[4] = v11;
    return swift_willThrow();
  }

  return result;
}

unint64_t sub_10042D768(unint64_t result, uint64_t a2, int64_t a3, uint64_t a4)
{
  v5 = a2 + 1;
  if (__OFADD__(a2, 1))
  {
    __break(1u);
  }

  else
  {
    if (v5 >= a3)
    {
      sub_1003A5228();
      swift_allocError();
      *v15 = a3;
      return swift_willThrow();
    }

    v7 = result;
    v8 = *result;
    v9 = *(result + 8);
    v10 = *(result + 16);
    v11 = *(result + 20);
    v12 = *(result + 22);

    sub_10042D57C(v7, v5, a3, a4, &v16);
    if (v4)
    {
      v14 = *v7;

      *v7 = v8;
      *(v7 + 8) = v9;
      *(v7 + 16) = v10;
      *(v7 + 20) = v11;
      *(v7 + 22) = v12;
      return swift_willThrow();
    }

    return v16;
  }

  return result;
}

uint64_t sub_10042D8C4(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 + 1;
  if (__OFADD__(a2, 1))
  {
    __break(1u);
    goto LABEL_12;
  }

  v5 = a3;
  if (v4 >= a3)
  {
    sub_1003A5228();
    swift_allocError();
    *v15 = v5;
    goto LABEL_9;
  }

  v6 = result;
  v7 = *result;
  v8 = *(result + 8);
  v9 = *(result + 16);
  v10 = *(result + 20);
  v11 = *(result + 22);

  result = sub_10046C660(v6, v4, v5);
  if (v3)
  {
    v14 = *v6;

    *v6 = v7;
    *(v6 + 8) = v8;
    *(v6 + 16) = v9;
    *(v6 + 20) = v10;
    *(v6 + 22) = v11;
LABEL_9:
    swift_willThrow();
    return v5;
  }

  if (HIDWORD(v12) < v12)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (v13 - (BYTE6(v13) | (WORD2(v13) << 8)) >= HIDWORD(v12))
  {
    v17[0] = result;
    v17[1] = v12;
    v18 = v13;
    v19 = WORD2(v13);
    v20 = BYTE6(v13);
    v21 = v12;
    v22 = HIDWORD(v12);

    v16 = sub_1003C5B5C(v17, 0);
    sub_1003A52D0(v17);
    v5 = sub_1003F5A98(v16, j__malloc, j__realloc, sub_100127C74, sub_100127C84);

    return v5;
  }

LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_10042DBA0(unint64_t a1, uint64_t a2, int64_t a3, uint64_t (*a4)(uint64_t))
{
  result = sub_10046B71C(0x5CuLL, 0xE100000000000000, 0, 0, a1, a2, a3);
  if (v4)
  {
    return a4;
  }

  if (!__OFADD__(a2, 1))
  {
    if (a2 + 1 >= a3)
    {
      sub_1003A5228();
      v15 = swift_allocError();
      *v16 = a3;
      a4 = v15;
      swift_willThrow();
    }

    else
    {
      v10 = *a1;
      v11 = *(a1 + 8);
      v12 = *(a1 + 16);
      v13 = *(a1 + 20);
      v14 = *(a1 + 22);
      sub_100466470(a1, &v21);
      v17 = sub_10046C184(v21, v22, v23 | (v24 << 32) | (v25 << 48), 0xD000000000000020, 0x80000001004B03C0, 115);
      v18 = a4(v17);
      v20 = v19;

      v21 = 92;
      v22 = 0xE100000000000000;
      v26._countAndFlagsBits = v18;
      v26._object = v20;
      sub_1004A5994(v26);

      a4 = ByteBufferAllocator.buffer(string:)(v21, v22, j__malloc, j__realloc, sub_100127C74, sub_100127C84);
    }

    return a4;
  }

  __break(1u);
  return result;
}

uint64_t sub_10042DDB0(uint64_t result, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *__return_ptr, uint64_t, uint64_t, uint64_t))
{
  v5 = a2 + 1;
  if (__OFADD__(a2, 1))
  {
    __break(1u);
  }

  else
  {
    if (v5 >= a3)
    {
      sub_1003A5228();
      swift_allocError();
      *v15 = a3;
      return swift_willThrow();
    }

    v8 = result;
    v9 = *result;
    v10 = *(result + 8);
    v11 = *(result + 16);
    v12 = *(result + 20);
    v13 = *(result + 22);

    a4(&v16, v8, v5, a3);
    if (v4)
    {
      v14 = *v8;

      *v8 = v9;
      *(v8 + 8) = v10;
      *(v8 + 16) = v11;
      *(v8 + 20) = v12;
      *(v8 + 22) = v13;
      return swift_willThrow();
    }

    return v16;
  }

  return result;
}

uint64_t sub_10042DEC4@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, int64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = a2 + 1;
  if (__OFADD__(a2, 1))
  {
    __break(1u);
  }

  else
  {
    if (v5 >= a3)
    {
      sub_1003A5228();
      swift_allocError();
      *v14 = a3;
    }

    else
    {
      v7 = result;
      v8 = *result;
      v9 = *(result + 8);
      v10 = *(result + 16);
      v11 = *(result + 20);
      v12 = *(result + 22);
      if (a2 + 2 >= a3)
      {
        sub_1003A5228();
        swift_allocError();
        *v15 = a3;
      }

      else
      {

        sub_1004660B8(v7, v24);
        if (!v4)
        {
          v21 = sub_10046C184(v24[0], v24[1], v25 | (v26 << 32) | (v27 << 48), 0xD000000000000020, 0x80000001004B03C0, 2766);
          v22 = v13;

          v16 = sub_10046F8E8(v7, v5, a3);
          v18 = v17;
          v20 = v19;

          *a4 = v21;
          *(a4 + 8) = v22;
          *(a4 + 16) = v16;
          *(a4 + 24) = v20;
          *(a4 + 32) = v18;
          *(a4 + 38) = BYTE6(v18);
          *(a4 + 36) = WORD2(v18);
          return result;
        }
      }

      swift_willThrow();

      *v7 = v8;
      *(v7 + 8) = v9;
      *(v7 + 16) = v10;
      *(v7 + 20) = v11;
      *(v7 + 22) = v12;
    }

    return swift_willThrow();
  }

  return result;
}

unint64_t sub_10042E0BC(unint64_t result, uint64_t a2, int64_t a3)
{
  v5 = a2 + 1;
  if (!__OFADD__(a2, 1))
  {
    if (v5 >= a3)
    {
      sub_1003A5228();
      swift_allocError();
      *v15 = a3;
      goto LABEL_8;
    }

    v7 = result;
    v8 = *result;
    v9 = *(result + 8);
    v10 = *(result + 16);
    v11 = *(result + 20);
    v12 = *(result + 22);
    sub_10000C9C0(&qword_1005D14D8, &qword_1004F1B10);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_1004CEAA0;

    v13 = sub_10046C278(v7, v5, a3, 0);
    if (v3)
    {
      v14 = *v7;
    }

    else
    {
      if ((v13 & 0x8000000000000000) == 0)
      {
        *(v4 + 32) = v13;
        if (v5 + 1 >= a3)
        {
          sub_1003A5228();
          swift_allocError();
          *v30 = a3;
        }

        else
        {
          v16 = *(v7 + 8);
          v43 = *(v7 + 20);
          v44 = *(v7 + 16);
          v42 = *(v7 + 22);
          v50 = *v7;

          if (v5 + 2 >= a3)
          {
            sub_1003A5228();
            v31 = swift_allocError();
            *v32 = a3;
            v33 = v50;
          }

          else
          {
            v17 = v5 + 3;
            v18 = *v7;
            v19 = *(v7 + 8);
            v52 = *(v7 + 20);
            v53 = *(v7 + 16);
            v51 = *(v7 + 22);
            if (v5 + 3 >= a3)
            {
LABEL_24:
              v34 = v18;
              sub_1003A5228();
              v31 = swift_allocError();
              *v35 = a3;

              v33 = v50;
            }

            else
            {
              v49 = v5 + 4;
              v20 = v4;
              v47 = v12;
              v48 = v11;
              v46 = v5 + 3;
              while (1)
              {
                v54 = v20;
                v55 = v18;
                swift_retain_n();
                sub_10046B71C(0x2EuLL, 0xE100000000000000, 0, 0, v7, v17, a3);
                if (v49 >= a3)
                {
                  sub_1003A5228();
                  v31 = swift_allocError();
                  *v36 = a3;
                  v33 = v50;
                  swift_willThrow();
                  v37 = *v7;

                  goto LABEL_27;
                }

                v21 = *v7;
                v22 = *(v7 + 8);
                v23 = *(v7 + 16);
                v24 = *(v7 + 20);
                v45 = *(v7 + 22);

                sub_1004698A4(v7, v49, a3, 0, v56);

                v25 = v56[0];
                if ((v56[0] & 0x8000000000000000) != 0)
                {
                  break;
                }

                v20 = v54;
                v27 = *(v54 + 2);
                v26 = *(v54 + 3);
                if (v27 >= v26 >> 1)
                {
                  v20 = sub_100460CC0((v26 > 1), v27 + 1, 1, v54);
                }

                v17 = v46;
                *(v20 + 2) = v27 + 1;
                *&v20[8 * v27 + 32] = v25;
                v18 = *v7;
                v19 = *(v7 + 8);
                v52 = *(v7 + 20);
                v53 = *(v7 + 16);
                v51 = *(v7 + 22);
                v12 = v47;
                v11 = v48;
                if (v46 >= a3)
                {
                  goto LABEL_24;
                }
              }

              v38 = *v7;

              sub_1003A527C();
              v31 = swift_allocError();
              *v39 = 0xD000000000000011;
              v39[1] = 0x80000001004B08A0;
              v39[2] = 0xD000000000000020;
              v39[3] = 0x80000001004B03C0;
              v39[4] = 202;
              swift_willThrow();
              v4 = v54;
              v12 = v47;
              v11 = v48;
              v33 = v50;
LABEL_27:
              v34 = v55;
            }

            swift_willThrow();

            *v7 = v34;
            *(v7 + 8) = v19;
            *(v7 + 16) = v53;
            *(v7 + 20) = v52;
            *(v7 + 22) = v51;
          }

          swift_willThrow();
          v56[10] = v31;
          swift_errorRetain();
          sub_10000C9C0(&qword_1005D0460, &qword_1004D3CE0);
          if (swift_dynamicCast())
          {

            return v4;
          }

          v40 = *v7;

          *v7 = v33;
          *(v7 + 8) = v16;
          *(v7 + 16) = v44;
          *(v7 + 20) = v43;
          *(v7 + 22) = v42;
        }

        swift_willThrow();
        v41 = *v7;

        goto LABEL_6;
      }

      v28 = *v7;

      sub_1003A527C();
      swift_allocError();
      *v29 = 0xD000000000000011;
      v29[1] = 0x80000001004B08A0;
      v29[2] = 0xD000000000000020;
      v29[3] = 0x80000001004B03C0;
      v29[4] = 202;
      swift_willThrow();
    }

    *(v4 + 16) = 0;
LABEL_6:

    *v7 = v8;
    *(v7 + 8) = v9;
    *(v7 + 16) = v10;
    *(v7 + 20) = v11;
    *(v7 + 22) = v12;
LABEL_8:
    swift_willThrow();
    return v4;
  }

  __break(1u);
  return result;
}

unint64_t sub_10042E674(unint64_t result, uint64_t a2, int64_t a3, int64_t a4)
{
  v6 = a2 + 1;
  if (!__OFADD__(a2, 1))
  {
    if (v6 >= a3)
    {
      sub_1003A5228();
      swift_allocError();
      *v14 = a3;
LABEL_18:
      swift_willThrow();
      return v5;
    }

    v8 = result;
    v9 = *result;
    v5 = *(result + 8);
    v10 = *(result + 12);
    v11 = *(result + 16);
    v23 = *(result + 20);
    v12 = *(result + 22);
    if (a2 + 2 >= a3)
    {
      sub_1003A5228();
      swift_allocError();
      *v15 = a3;
    }

    else
    {
      swift_retain_n();
      sub_10046B71C(0x7EuLL, 0xE100000000000000, 0, 0, v8, v6 + 1, a3);
      if (!v4)
      {

        goto LABEL_12;
      }

      v13 = *v8;

      *v8 = v9;
      *(v8 + 8) = v5;
      *(v8 + 12) = v10;
      *(v8 + 16) = v11;
      *(v8 + 20) = v23;
      *(v8 + 22) = v12;
    }

    swift_willThrow();
    swift_errorRetain();
    sub_10000C9C0(&qword_1005D0460, &qword_1004D3CE0);
    if (!swift_dynamicCast())
    {

LABEL_17:
      *v8 = v9;
      *(v8 + 8) = v5;
      *(v8 + 12) = v10;
      *(v8 + 16) = v11;
      *(v8 + 20) = v23;
      *(v8 + 22) = v12;
      goto LABEL_18;
    }

LABEL_12:
    sub_10046B71C(0x7BuLL, 0xE100000000000000, 0, 0, v8, v6, a3);
    v21 = v5;
    v16 = sub_10046C278(v8, v6, a3, 1);
    v5 = v16;
    if (v16 < 0)
    {
      v19 = *v8;

      sub_1003A527C();
      swift_allocError();
      *v20 = 0xD000000000000011;
      v20[1] = 0x80000001004B08A0;
      v20[2] = 0xD000000000000020;
      v20[3] = 0x80000001004B03C0;
      v20[4] = 202;
    }

    else
    {
      if (v16 <= a4)
      {
        sub_10046B71C(0x7DuLL, 0xE100000000000000, 0, 0, v8, v6, a3);
        sub_100464188(v8, v6, a3);

        return v5;
      }

      v17 = *v8;

      sub_1003FF690();
      swift_allocError();
      *v18 = v5;
      v18[1] = a4;
    }

    swift_willThrow();
    v5 = v21;
    goto LABEL_17;
  }

  __break(1u);
  return result;
}

unint64_t sub_10042E9D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_10046D2B8(a1, a2, a3);
  if (!v3)
  {
    v4 = sub_10046C184(v5, v6, v7 & 0xFFFFFFFFFFFFFFLL, 0xD000000000000020, 0x80000001004B03C0, 3028);
    v9 = v8;
    if ((sub_1004A5924() - 256) < 0xFFFFFFFFFFFFFF01 || (sub_1003E3E9C(v4, v9) & 1) == 0)
    {

      sub_1003A527C();
      swift_allocError();
      *v10 = 0xD000000000000012;
      v10[1] = 0x80000001004B0B70;
      v10[2] = 0xD000000000000020;
      v10[3] = 0x80000001004B03C0;
      v10[4] = 3030;
      swift_willThrow();
    }
  }

  return v4;
}

uint64_t sub_10042EAEC()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 48, 7);
}

unint64_t sub_10042EBF8(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 24);
  v5 = *(v3 + 32);
  v6 = *(v3 + 40);
  return sub_100424F54(a1, a2, a3, *(v3 + 16));
}

uint64_t sub_10042EC34(uint64_t a1, uint64_t a2, int64_t a3)
{
  v4 = *(v3 + 24);
  v5 = *(v3 + 32);
  v6 = *(v3 + 40);
  return sub_1004250AC(a1, a2, a3, *(v3 + 16));
}

uint64_t sub_10042ED58(uint64_t result)
{
  v1 = *(result + 64) & 0x1FFLL;
  *(result + 16) &= 0x1FFFFFFFFuLL;
  *(result + 64) = v1;
  return result;
}

uint64_t sub_10042EDC8(uint64_t result)
{
  v1 = *(result + 64) & 0x1FFLL | 0x8000000000000000;
  *(result + 16) &= 0x1FFFFFFFFuLL;
  *(result + 64) = v1;
  return result;
}

unint64_t sub_10042EE3C(unint64_t result, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  v5 = __OFADD__(a2, 1);
  v6 = a2 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    if (v6 >= a3)
    {
      sub_1003A5228();
      swift_allocError();
      *v15 = a3;
      return swift_willThrow();
    }

    v7 = result;
    v9 = *result;
    v10 = *(result + 8);
    v11 = *(result + 16);
    v12 = *(result + 20);
    v13 = *(result + 22);
    sub_100466470(result, v18);
    if (v4)
    {
      *v7 = v9;
      *(v7 + 8) = v10;
      *(v7 + 16) = v11;
      *(v7 + 20) = v12;
      *(v7 + 22) = v13;
      return swift_willThrow();
    }

    v16 = sub_10046C184(v18[0], v18[1], v19 | (v20 << 32) | (v21 << 48), 0xD000000000000020, 0x80000001004B03C0, 115);
    v17 = a4(v16);

    return v17;
  }

  return result;
}

uint64_t sub_10042EF94(unint64_t a1, uint64_t a2, int64_t a3, uint64_t (*a4)(uint64_t))
{
  result = sub_10046B71C(0x5BuLL, 0xE100000000000000, 0, 0, a1, a2, a3);
  if (v4)
  {
    return a4;
  }

  v10 = a2 + 1;
  if (!__OFADD__(a2, 1))
  {
    if (v10 >= a3)
    {
      sub_1003A5228();
      swift_allocError();
      *v14 = a3;
      swift_willThrow();
      swift_errorRetain();
      sub_10000C9C0(&qword_1005D0460, &qword_1004D3CE0);
      if (swift_dynamicCast())
      {
      }

      else
      {

        swift_errorRetain();
        if ((swift_dynamicCast() & 1) == 0)
        {

          return a4;
        }
      }

      if (v10 >= a3)
      {
        sub_1003A5228();
        swift_allocError();
        *v18 = a3;
        swift_willThrow();
        return a4;
      }

      v15 = *a1;
      v16 = *(a1 + 8);
      v17 = *(a1 + 16);
      v22 = *(a1 + 22);
      v23 = *(a1 + 20);

      v13 = sub_10042EE3C(a1, v10, a3, a4);
    }

    else
    {
      v11 = *a1;
      v12 = *(a1 + 8);
      v20 = *(a1 + 20);
      v21 = *(a1 + 16);
      v19 = *(a1 + 22);

      v13 = sub_10042EE3C(a1, a2 + 1, a3, a4);
    }

    a4 = v13;

    sub_10046B71C(0x5DuLL, 0xE100000000000000, 0, 0, a1, a2, a3);
    return a4;
  }

  __break(1u);
  return result;
}

uint64_t sub_10042F2A8(uint64_t *a1)
{
  v1 = *(a1 + 2);
  if (*(a1 + 3) == v1)
  {
    sub_1003A5324();
    swift_allocError();
    return swift_willThrow();
  }

  v4 = *(a1 + 22);
  v5 = *(a1 + 10);
  v6 = *a1;
  result = swift_beginAccess();
  v7 = v1 + 1;
  if (v1 == -1)
  {
    __break(1u);
  }

  else
  {
    v8 = *(*(v6 + 24) + (v4 | (v5 << 8)) + v1);
    *(a1 + 2) = v7;
    if (!isalnum(v8) && (v8 - 45) >= 2 && v8 != 95 && v8 != 126)
    {
      sub_1004A6724(32);

      v10._countAndFlagsBits = sub_1004A6CE4();
      sub_1004A5994(v10);

      sub_1003A527C();
      swift_allocError();
      *v9 = 0xD00000000000001ELL;
      v9[1] = 0x80000001004B0C80;
      v9[2] = 0xD000000000000020;
      v9[3] = 0x80000001004B03C0;
      v9[4] = 1242;
      return swift_willThrow();
    }

    sub_10000C9C0(&qword_1005D65C0, &unk_1004DD1B0);
    result = swift_allocObject();
    *(result + 16) = xmmword_1004CEAA0;
    *(result + 32) = v8;
  }

  return result;
}

uint64_t sub_10042F46C(uint64_t *a1)
{
  v1 = *(a1 + 2);
  if (*(a1 + 3) == v1)
  {
    sub_1003A5324();
    swift_allocError();
    return swift_willThrow();
  }

  v4 = *(a1 + 22);
  v5 = *(a1 + 10);
  v6 = *a1;
  result = swift_beginAccess();
  v7 = v1 + 1;
  if (v1 == -1)
  {
    __break(1u);
  }

  else
  {
    v8 = *(*(v6 + 24) + (v4 | (v5 << 8)) + v1);
    *(a1 + 2) = v7;
    if ((v8 - 39) >= 6 && v8 != 33 && v8 != 36)
    {
      sub_1004A6724(35);

      v10._countAndFlagsBits = sub_1004A6CE4();
      sub_1004A5994(v10);

      sub_1003A527C();
      swift_allocError();
      *v9 = 0xD000000000000021;
      v9[1] = 0x80000001004B0CA0;
      v9[2] = 0xD000000000000020;
      v9[3] = 0x80000001004B03C0;
      v9[4] = 1250;
      return swift_willThrow();
    }

    sub_10000C9C0(&qword_1005D65C0, &unk_1004DD1B0);
    result = swift_allocObject();
    *(result + 16) = xmmword_1004CEAA0;
    *(result + 32) = v8;
  }

  return result;
}

uint64_t sub_10042F624(uint64_t result, uint64_t a2, int64_t a3)
{
  v4 = a2 + 1;
  if (__OFADD__(a2, 1))
  {
    __break(1u);
    return result;
  }

  v6 = result;
  if (v4 >= a3)
  {
    sub_1003A5228();
    swift_allocError();
    *v12 = a3;
  }

  else
  {
    v7 = *result;
    v8 = *(result + 8);
    v9 = *(result + 16);
    v10 = *(result + 20);
    v11 = *(result + 22);
    result = sub_10042F2A8(result);
    if (!v3)
    {
      return result;
    }

    *v6 = v7;
    *(v6 + 8) = v8;
    *(v6 + 16) = v9;
    *(v6 + 20) = v10;
    *(v6 + 22) = v11;
  }

  swift_willThrow();
  swift_errorRetain();
  sub_10000C9C0(&qword_1005D0460, &qword_1004D3CE0);
  if (swift_dynamicCast())
  {
  }

  else
  {

    swift_errorRetain();
    if ((swift_dynamicCast() & 1) == 0)
    {
    }
  }

  if (v4 < a3)
  {
    v13 = *v6;
    v14 = *(v6 + 8);
    v15 = *(v6 + 16);
    v16 = *(v6 + 20);
    v17 = *(v6 + 22);
    return sub_10042F46C(v6);
  }

  sub_1003A5228();
  swift_allocError();
  *v18 = a3;
  swift_willThrow();
  swift_errorRetain();
  if (swift_dynamicCast())
  {

    goto LABEL_16;
  }

  swift_errorRetain();
  if ((swift_dynamicCast() & 1) == 0)
  {
  }

LABEL_16:

  if (v4 >= a3)
  {
    sub_1003A5228();
    swift_allocError();
    *v24 = a3;
    return swift_willThrow();
  }

  else
  {
    v19 = *v6;
    v20 = *(v6 + 8);
    v21 = *(v6 + 16);
    v22 = *(v6 + 20);
    v23 = *(v6 + 22);

    v25 = sub_100429134(v6, v4, a3);

    return v25;
  }
}

uint64_t sub_10042F97C(uint64_t a1, uint64_t a2, size_t a3)
{
  if (qword_1005DB9D0 != -1)
  {
    goto LABEL_25;
  }

  while (1)
  {
    v7 = HIDWORD(qword_1005DE390);
    v8 = dword_1005DE398;
    v9 = word_1005DE39C;
    v10 = byte_1005DE39E;
    v23 = static ByteBufferAllocator.zeroCapacityWithDefaultAllocator;
    v24 = qword_1005DE390;
    v25 = dword_1005DE398;
    v26 = word_1005DE39C;
    v27 = byte_1005DE39E;

    v11 = sub_10042F624(a1, a2, a3);
    v12 = a1;
    a1 = v3;
    if (v3)
    {
      break;
    }

    v13 = v11;
    v21 = v12;
    for (i = a2; ; v13 = sub_10042F624(v21, i, a2))
    {
      a2 = a3;
      a3 = *(v13 + 16);
      v14 = v7 + a3;
      if (__CFADD__(v7, a3))
      {
        break;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        if (v14 >= v8)
        {
          v15 = v14 - v8;
        }

        else
        {
          v15 = 0;
        }

        v16 = variable initialization expression of Engine.isProcessingUpdates();
        ByteBuffer._copyStorageAndRebase(extraCapacity:resetIndices:)(v15, v16 & 1);
      }

      if (HIDWORD(a3))
      {
        goto LABEL_23;
      }

      ByteBuffer._ensureAvailableCapacity(_:at:)(a3, v7);
      LODWORD(v8) = v25;
      swift_beginAccess();
      v17 = v27 | (v26 << 8);
      LODWORD(v18) = v25 - v17;
      if (v25 - v17 >= v7)
      {
        LODWORD(v18) = v7;
      }

      if (v7)
      {
        v18 = v18;
      }

      else
      {
        v18 = 0;
      }

      memmove((*(v23 + 24) + v17 + v18), (v13 + 32), a3);

      LODWORD(v7) = HIDWORD(v24) + a3;
      if (__CFADD__(HIDWORD(v24), a3))
      {
        goto LABEL_24;
      }

      HIDWORD(v24) += a3;
      a3 = a2;
      v3 = 0;
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    swift_once();
  }

  swift_errorRetain();
  sub_10000C9C0(&qword_1005D0460, &qword_1004D3CE0);
  if (swift_dynamicCast())
  {

    v8 = sub_10046C184(v19, v24 | (v7 << 32), v8 | (v9 << 32) | (v10 << 48), 0xD000000000000020, 0x80000001004B03C0, 989);
  }

  else
  {
  }

  return v8;
}

unint64_t sub_10042FC30(unint64_t a1, uint64_t a2, int64_t a3)
{
  result = sub_10046C278(a1, a2, a3, 1);
  if (!v3)
  {
    if ((result & 0x8000000000000000) != 0 || (sub_10046B71C(0x2EuLL, 0xE100000000000000, 0, 0, a1, a2, a3), (sub_10046C278(a1, a2, a3, 1) & 0x8000000000000000) != 0) || (sub_10046B71C(0x2EuLL, 0xE100000000000000, 0, 0, a1, a2, a3), (sub_10046C278(a1, a2, a3, 1) & 0x8000000000000000) != 0) || (sub_10046B71C(0x2EuLL, 0xE100000000000000, 0, 0, a1, a2, a3), (sub_10046C278(a1, a2, a3, 1) & 0x8000000000000000) != 0))
    {
      sub_1003A527C();
      swift_allocError();
      *v8 = 0xD000000000000011;
      v8[1] = 0x80000001004B08A0;
      v8[2] = 0xD000000000000020;
      v8[3] = 0x80000001004B03C0;
      v8[4] = 202;
      return swift_willThrow();
    }

    else
    {
      v9 = sub_1004A6CE4();
      v10._countAndFlagsBits = 46;
      v10._object = 0xE100000000000000;
      sub_1004A5994(v10);
      v11._countAndFlagsBits = sub_1004A6CE4();
      sub_1004A5994(v11);

      v12._countAndFlagsBits = 46;
      v12._object = 0xE100000000000000;
      sub_1004A5994(v12);
      v13._countAndFlagsBits = sub_1004A6CE4();
      sub_1004A5994(v13);

      v14._countAndFlagsBits = 46;
      v14._object = 0xE100000000000000;
      sub_1004A5994(v14);
      v15._countAndFlagsBits = sub_1004A6CE4();
      sub_1004A5994(v15);

      return v9;
    }
  }

  return result;
}

unint64_t sub_10042FEA4(unint64_t result, uint64_t a2, int64_t a3)
{
  v4 = a2 + 1;
  if (!__OFADD__(a2, 1))
  {
    v5 = a3;
    if (v4 >= a3)
    {
      sub_1003A5228();
      swift_allocError();
      *v13 = v5;
    }

    else
    {
      v6 = result;
      v7 = *result;
      v8 = *(result + 8);
      v9 = *(result + 16);
      v10 = *(result + 20);
      v11 = *(result + 22);

      sub_10046B71C(0x2FuLL, 0xE100000000000000, 0, 0, v6, v4, v5);
      if (v3)
      {
        v12 = *v6;
      }

      else
      {
        v14 = v4 + 1;
        v15 = *v6;
        if (v14 < v5)
        {
          v16 = *v6;

          sub_10046B71C(0x3D4449553BuLL, 0xE500000000000000, 0, 0, v6, v14, v5);
          v5 = sub_100405E9C(v6, v14, v5);

          return v5;
        }

        v17 = *v6;

        sub_1003A5228();
        swift_allocError();
        *v18 = v5;
        swift_willThrow();
      }

      *v6 = v7;
      *(v6 + 8) = v8;
      *(v6 + 16) = v9;
      *(v6 + 20) = v10;
      *(v6 + 22) = v11;
    }

    swift_willThrow();
    return v5;
  }

  __break(1u);
  return result;
}

uint64_t sub_100430070@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, int64_t a3@<X2>, uint64_t a4@<X8>)
{
  v14 = a2 + 1;
  if (__OFADD__(a2, 1))
  {
    __break(1u);
  }

  else
  {
    v9 = a3;
    if (v14 >= a3)
    {
      sub_1003A5228();
      swift_allocError();
      *v16 = v9;
      return swift_willThrow();
    }

    v4 = a1;
    v10 = a4;
    v5 = *a1;
    v13 = *(a1 + 8);
    v12 = *(a1 + 16);
    v11 = *(a1 + 20);
    v8 = *(a1 + 22);

    sub_10046B71C(0x3D4552495058453BuLL, 0xE800000000000000, 0, 0, v4, v14, v9);
    if (v6)
    {
      v15 = *v4;

LABEL_13:
      *v4 = v5;
      *(v4 + 8) = v13;
      *(v4 + 16) = v12;
      *(v4 + 20) = v11;
      *(v4 + 22) = v8;
      return swift_willThrow();
    }

    v17 = v14 + 1;
    v18 = *v4;
    if (v14 + 1 >= v9)
    {

      sub_1003A5228();
      swift_allocError();
      *v20 = v9;
LABEL_12:
      swift_willThrow();
      goto LABEL_13;
    }

    v19 = v14 + 2;
    if (v19 >= v9)
    {
      v21 = *v4;
      sub_1003A5228();
      swift_allocError();
      *v22 = v9;
      swift_willThrow();
LABEL_11:

      goto LABEL_12;
    }

    v34 = v17;
    swift_retain_n();
    v33 = sub_10042D768(v4, v19, v9, 4);
    sub_10046B71C(0x2DuLL, 0xE100000000000000, 0, 0, v4, v19, v9);
    v32 = sub_10042D768(v4, v19, v9, 2);
    sub_10046B71C(0x2DuLL, 0xE100000000000000, 0, 0, v4, v19, v9);
    a1 = sub_10042D768(v4, v19, v9, 2);
    v7 = 0;
  }

  v24 = a1;

  if (v32 - 13 < 0xFFFFFFFFFFFFFFF4 || v24 - 32 < 0xFFFFFFFFFFFFFFE1)
  {
    __break(1u);
  }

  else
  {
    v31 = v24;
    sub_10046B71C(0x54uLL, 0xE100000000000000, 0, 0, v4, v34, v9);
    if (v7)
    {
      v25 = *v4;

      goto LABEL_11;
    }

    v30 = sub_10042D768(v4, v34, v9, 2);
    sub_10046B71C(0x3AuLL, 0xE100000000000000, 0, 0, v4, v34, v9);
    v26 = sub_10042D768(v4, v34, v9, 2);
    sub_10046B71C(0x3AuLL, 0xE100000000000000, 0, 0, v4, v34, v9);
    v29 = sub_10042D768(v4, v34, v9, 2);
    v35 = sub_10046FED4(v4, v34, v9);
    v28 = v27;

    *v10 = v33;
    *(v10 + 8) = v32;
    *(v10 + 16) = v31;
    *(v10 + 24) = v30;
    *(v10 + 32) = v26;
    *(v10 + 40) = v29;
    *(v10 + 48) = v35;
    *(v10 + 56) = v28 & 1;
  }

  return result;
}

uint64_t sub_1004304F8@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  result = v6(a1, *a2, a2[1]);
  if (!v4)
  {
    *a3 = result;
    *(a3 + 8) = v9;
    *(a3 + 16) = v10;
  }

  return result;
}

uint64_t sub_100430538(uint64_t *a1)
{
  v1 = *(a1 + 2);
  if (*(a1 + 3) == v1)
  {
    sub_1003A5324();
    swift_allocError();
    return swift_willThrow();
  }

  v3 = *(a1 + 22);
  v4 = *(a1 + 10);
  v5 = *a1;
  result = swift_beginAccess();
  v7 = v1 + 1;
  if (v1 != -1)
  {
    v8 = *(*(v5 + 24) + (v3 | (v4 << 8)) + v1);
    *(a1 + 2) = v7;
    if (v8 == 38 || v8 == 61)
    {
      sub_10000C9C0(&qword_1005D65C0, &unk_1004DD1B0);
      result = swift_allocObject();
      *(result + 16) = xmmword_1004CEAA0;
      *(result + 32) = v8;
      return result;
    }

    sub_1004A6724(20);

    v10._countAndFlagsBits = sub_1004A6CE4();
    sub_1004A5994(v10);

    sub_1003A527C();
    swift_allocError();
    *v9 = 0xD000000000000012;
    v9[1] = 0x80000001004B0CF0;
    v9[2] = 0xD000000000000020;
    v9[3] = 0x80000001004B03C0;
    v9[4] = 1293;
    return swift_willThrow();
  }

  __break(1u);
  return result;
}

uint64_t sub_1004306E4(uint64_t *a1)
{
  v1 = *(a1 + 2);
  if (*(a1 + 3) == v1)
  {
    sub_1003A5324();
    swift_allocError();
    return swift_willThrow();
  }

  v4 = *(a1 + 22);
  v5 = *(a1 + 10);
  v6 = *a1;
  result = swift_beginAccess();
  v7 = v1 + 1;
  if (v1 == -1)
  {
    __break(1u);
  }

  else
  {
    v8 = *(*(v6 + 24) + (v4 | (v5 << 8)) + v1);
    *(a1 + 2) = v7;
    if ((v8 - 47) > 0x11 || ((1 << (v8 - 47)) & 0x20801) == 0)
    {
      sub_1004A6724(20);

      v11._countAndFlagsBits = sub_1004A6CE4();
      sub_1004A5994(v11);

      sub_1003A527C();
      swift_allocError();
      *v10 = 0xD000000000000012;
      v10[1] = 0x80000001004B0D10;
      v10[2] = 0xD000000000000020;
      v10[3] = 0x80000001004B03C0;
      v10[4] = 1312;
      return swift_willThrow();
    }

    sub_10000C9C0(&qword_1005D65C0, &unk_1004DD1B0);
    result = swift_allocObject();
    *(result + 16) = xmmword_1004CEAA0;
    *(result + 32) = v8;
  }

  return result;
}

uint64_t sub_100430900(unint64_t a1, uint64_t a2, int64_t a3)
{
  v4 = v3[2];
  v5 = v3[3];
  v6 = v3[4];
  v7 = v3[5];
  return sub_10042B720(a1, a2, a3);
}

void sub_100430920(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != 1)
  {

    sub_1000C9FC8(a3, a4);
  }
}

uint64_t sub_1004309CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3[2];
  v5 = v3[3];
  v6 = v3[4];
  v7 = v3[5];
  return sub_100423CD4(a1, a2, a3);
}

uint64_t sub_100430A24@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  result = v6(a1, *a2, a2[1]);
  if (!v4)
  {
    *a3 = result;
    *(a3 + 8) = v9;
    *(a3 + 16) = v10;
    *(a3 + 24) = v11 & 1;
  }

  return result;
}

uint64_t sub_100430A6C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  result = v6(a1, *a2, a2[1]);
  if (!v4)
  {
    *a3 = result;
    a3[1] = v9;
  }

  return result;
}

uint64_t sub_100430AA8@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  result = v6(a1, *a2, a2[1]);
  if (!v4)
  {
    *a3 = result;
    *(a3 + 8) = v9;
  }

  return result;
}

uint64_t sub_100430C04(void *a1)
{
  v2 = v1;
  v32 = a1;
  v4 = a1[2];
  if (v4)
  {
    v5 = *(v1 + 20);
    result = sub_1002F178C(0, 0xE000000000000000, (v1 + 8), *(v1 + 20));
    if (v7)
    {
      v8._countAndFlagsBits = 0;
      v8._object = 0xE000000000000000;
      result = ByteBuffer._setStringSlowpath(_:at:)(v8, v5);
    }

    v9 = result;
    v10 = *(v1 + 20);
    v11 = __CFADD__(v10, result);
    v12 = v10 + result;
    if (v11)
    {
      goto LABEL_29;
    }

    *(v1 + 20) = v12;
  }

  else
  {
    v9 = 0;
    v12 = *(v1 + 20);
  }

  v13 = v12;
  result = sub_1002F178C(40, 0xE100000000000000, (v1 + 8), v12);
  if (v14)
  {
    v15._countAndFlagsBits = 40;
    v15._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v15, v13);
  }

  v16 = *(v1 + 20);
  v11 = __CFADD__(v16, result);
  v17 = v16 + result;
  if (v11)
  {
    goto LABEL_24;
  }

  *(v1 + 20) = v17;
  v18 = v9 + result;
  if (__OFADD__(v9, result))
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  __chkstk_darwin(result);
  v31[2] = sub_100430E24;
  v31[3] = 0;
  v31[4] = v2;
  v31[5] = &v32;
  v31[6] = 32;
  v31[7] = 0xE100000000000000;
  result = sub_100451B60(0, sub_100430E50, v31, a1);
  v19 = v18 + result;
  if (__OFADD__(v18, result))
  {
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v20 = *(v2 + 20);
  result = sub_1002F178C(41, 0xE100000000000000, (v2 + 8), *(v2 + 20));
  if (v21)
  {
    v22._countAndFlagsBits = 41;
    v22._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v22, v20);
  }

  v23 = *(v2 + 20);
  v24 = (v23 + result);
  if (__CFADD__(v23, result))
  {
    goto LABEL_27;
  }

  *(v2 + 20) = v24;
  v25 = __OFADD__(v19, result);
  v26 = v19 + result;
  if (v25)
  {
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
    return result;
  }

  if (!v4)
  {
    return v26;
  }

  result = sub_1002F178C(0, 0xE000000000000000, (v2 + 8), v24);
  if (v27)
  {
    v28._countAndFlagsBits = 0;
    v28._object = 0xE000000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v28, v24);
  }

  v29 = *(v2 + 20);
  v11 = __CFADD__(v29, result);
  v30 = v29 + result;
  if (v11)
  {
    goto LABEL_30;
  }

  *(v2 + 20) = v30;
  v25 = __OFADD__(v26, result);
  result += v26;
  if (v25)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  return result;
}

unint64_t sub_100430E74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v66 = *(a3 + 16);
  if (!v66)
  {
    v57 = *(v3 + 5);
    result = sub_1002F178C(4999502, 0xE300000000000000, v3 + 1, *(v3 + 5));
    if (v58)
    {
      v59._countAndFlagsBits = 4999502;
      v59._object = 0xE300000000000000;
      result = ByteBuffer._setStringSlowpath(_:at:)(v59, v57);
    }

    v60 = *(v3 + 5);
    v17 = __CFADD__(v60, result);
    v61 = v60 + result;
    if (!v17)
    {
      *(v3 + 5) = v61;
      return result;
    }

    goto LABEL_62;
  }

  v6 = *v3;
  *v3 = 0;
  v7 = *(v3 + 5);
  result = sub_1002F178C(0, 0xE000000000000000, v3 + 1, *(v3 + 5));
  if (v9)
  {
    v10._countAndFlagsBits = 0;
    v10._object = 0xE000000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v10, v7);
  }

  v11 = result;
  v12 = *(v3 + 5);
  v13 = (v12 + result);
  if (__CFADD__(v12, result))
  {
LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

  *(v3 + 5) = v13;
  result = sub_1002F178C(40, 0xE100000000000000, v3 + 1, v13);
  if (v14)
  {
    v15._countAndFlagsBits = 40;
    v15._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v15, v13);
  }

  v16 = *(v3 + 5);
  v17 = __CFADD__(v16, result);
  v18 = v16 + result;
  if (v17)
  {
    goto LABEL_55;
  }

  *(v3 + 5) = v18;
  if (__OFADD__(v11, result))
  {
    goto LABEL_56;
  }

  v63 = v11 + result;
  v62 = v6;

  v19 = 0;
  v20 = 0;
  v21 = 0;
  v64 = a2;
  while (v66 != v20)
  {
    if (v20 >= *(a2 + 16))
    {
      __break(1u);
LABEL_47:
      __break(1u);
LABEL_48:
      __break(1u);
LABEL_49:
      __break(1u);
LABEL_50:
      __break(1u);
LABEL_51:
      __break(1u);
LABEL_52:
      __break(1u);
LABEL_53:
      __break(1u);
      goto LABEL_54;
    }

    v24 = *(a2 + v19 + 32);
    v25 = *(a2 + v19 + 40);
    v26 = *(a3 + v19 + 40);
    v67 = *(a3 + v19 + 32);

    v27 = sub_100441B60(v24, v25);
    v28 = *(v4 + 5);
    result = sub_1002F178C(32, 0xE100000000000000, v4 + 1, *(v4 + 5));
    if (v29)
    {
      v30._countAndFlagsBits = 32;
      v30._object = 0xE100000000000000;
      result = ByteBuffer._setStringSlowpath(_:at:)(v30, v28);
    }

    v31 = *(v4 + 5);
    v32 = (v31 + result);
    if (__CFADD__(v31, result))
    {
      goto LABEL_47;
    }

    *(v4 + 5) = v32;
    v23 = __OFADD__(v27, result);
    v33 = v27 + result;
    if (v23)
    {
      goto LABEL_48;
    }

    if (v26)
    {
      result = sub_100441B60(v67, v26);
      v34 = v33 + result;
      if (__OFADD__(v33, result))
      {
        goto LABEL_49;
      }
    }

    else
    {
      result = sub_1002F178C(4999502, 0xE300000000000000, v4 + 1, v32);
      if (v35)
      {
        v36._countAndFlagsBits = 4999502;
        v36._object = 0xE300000000000000;
        result = ByteBuffer._setStringSlowpath(_:at:)(v36, v32);
      }

      v37 = *(v4 + 5);
      v17 = __CFADD__(v37, result);
      v38 = v37 + result;
      if (v17)
      {
        goto LABEL_53;
      }

      *(v4 + 5) = v38;
      v34 = v33 + result;
      if (__OFADD__(v33, result))
      {
        goto LABEL_49;
      }
    }

    v23 = __OFADD__(v21, v34);
    v39 = v21 + v34;
    if (v23)
    {
      goto LABEL_50;
    }

    if (v20 >= v66 - 1)
    {

      v22 = 0;
      a2 = v64;
    }

    else
    {
      v40 = *(v4 + 5);
      v41 = sub_1002F178C(32, 0xE100000000000000, v4 + 1, *(v4 + 5));
      if (v42)
      {
        v43._countAndFlagsBits = 32;
        v43._object = 0xE100000000000000;
        v41 = ByteBuffer._setStringSlowpath(_:at:)(v43, v40);
      }

      v22 = v41;

      v44 = *(v4 + 5);
      v17 = __CFADD__(v44, v22);
      v45 = v44 + v22;
      a2 = v64;
      if (v17)
      {
        goto LABEL_52;
      }

      *(v4 + 5) = v45;
    }

    v19 += 16;
    ++v20;
    v23 = __OFADD__(v39, v22);
    v21 = v39 + v22;
    if (v23)
    {
      goto LABEL_51;
    }
  }

  v46 = v63 + v21;
  if (__OFADD__(v63, v21))
  {
    goto LABEL_57;
  }

  v47 = *(v4 + 5);
  result = sub_1002F178C(41, 0xE100000000000000, v4 + 1, *(v4 + 5));
  if (v48)
  {
    v49._countAndFlagsBits = 41;
    v49._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v49, v47);
  }

  v50 = *(v4 + 5);
  v51 = (v50 + result);
  if (__CFADD__(v50, result))
  {
    goto LABEL_58;
  }

  *(v4 + 5) = v51;
  v23 = __OFADD__(v46, result);
  v52 = v46 + result;
  if (v23)
  {
    goto LABEL_59;
  }

  result = sub_1002F178C(0, 0xE000000000000000, v4 + 1, v51);
  if (v53)
  {
    v54._countAndFlagsBits = 0;
    v54._object = 0xE000000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v54, v51);
  }

  v55 = *(v4 + 5);
  v17 = __CFADD__(v55, result);
  v56 = v55 + result;
  if (v17)
  {
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    return result;
  }

  *(v4 + 5) = v56;
  v23 = __OFADD__(v52, result);
  result += v52;
  if (v23)
  {
    goto LABEL_61;
  }

  *v4 = v62;
  return result;
}

NIOIMAPCore2::IMAPCalendarDay_optional __swiftcall IMAPCalendarDay.init(year:month:day:)(Swift::Int year, Swift::Int month, Swift::Int day)
{
  v5 = (day - 32) < 0xFFFFFFFFFFFFFFE1 || (month - 13) < 0xFFFFFFFFFFFFFFF4 || (year - 2501) < 0xFFFFFFFFFFFFFDA7;
  if (v5)
  {
    year = 0;
    month = 0;
    day = 0;
  }

  result.value.day = day;
  result.value.month = month;
  result.value.year = year;
  result.is_nil = v5;
  return result;
}

unint64_t sub_1004312C8()
{
  result = qword_1005DC890;
  if (!qword_1005DC890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DC890);
  }

  return result;
}

uint64_t sub_10043132C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v15._countAndFlagsBits = sub_1004A6CE4();
  v15._object = v5;
  v16._countAndFlagsBits = 45;
  v16._object = 0xE100000000000000;
  sub_1004A5994(v16);
  v17._countAndFlagsBits = sub_100431454(v6, a2);
  v17._object = 0xE300000000000000;
  sub_1004A5994(v17);

  v18._countAndFlagsBits = 45;
  v18._object = 0xE100000000000000;
  sub_1004A5994(v18);
  v19._countAndFlagsBits = sub_1004A6CE4();
  sub_1004A5994(v19);

  v7 = *(v2 + 20);
  v8 = sub_1002F178C(v15._countAndFlagsBits, v15._object, (v3 + 8), *(v3 + 20));
  if (v9)
  {
    v8 = ByteBuffer._setStringSlowpath(_:at:)(v15, v7);
  }

  v10 = v8;

  v12 = *(v3 + 20);
  v13 = __CFADD__(v12, v10);
  v14 = v12 + v10;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 20) = v14;
    return v10;
  }

  return result;
}

uint64_t sub_100431454(uint64_t a1, uint64_t a2)
{
  if ((a2 - 1) <= 0xB)
  {
    return *&aJan[8 * a2 - 8];
  }

  __break(1u);
  return result;
}

uint64_t sub_100431478()
{
  v1 = sub_1004A5814();
  v2 = v0;
  if (v1 == 7233898 && v0 == 0xE300000000000000 || (sub_1004A6D34() & 1) != 0)
  {

    return 1;
  }

  else if (v1 == 6448486 && v2 == 0xE300000000000000 || (sub_1004A6D34() & 1) != 0)
  {

    return 2;
  }

  else if (v1 == 7496045 && v2 == 0xE300000000000000 || (sub_1004A6D34() & 1) != 0)
  {

    return 3;
  }

  else if (v1 == 7499873 && v2 == 0xE300000000000000 || (sub_1004A6D34() & 1) != 0)
  {

    return 4;
  }

  else if (v1 == 7954797 && v2 == 0xE300000000000000 || (sub_1004A6D34() & 1) != 0)
  {

    return 5;
  }

  else if (v1 == 7239018 && v2 == 0xE300000000000000 || (sub_1004A6D34() & 1) != 0)
  {

    return 6;
  }

  else if (v1 == 7107946 && v2 == 0xE300000000000000 || (sub_1004A6D34() & 1) != 0)
  {

    return 7;
  }

  else if (v1 == 6780257 && v2 == 0xE300000000000000 || (sub_1004A6D34() & 1) != 0)
  {

    return 8;
  }

  else if (v1 == 7366003 && v2 == 0xE300000000000000 || (sub_1004A6D34() & 1) != 0)
  {

    return 9;
  }

  else if (v1 == 7627631 && v2 == 0xE300000000000000 || (sub_1004A6D34() & 1) != 0)
  {

    return 10;
  }

  else if (v1 == 7761774 && v2 == 0xE300000000000000 || (sub_1004A6D34() & 1) != 0)
  {

    return 11;
  }

  else if (v1 == 6514020 && v2 == 0xE300000000000000)
  {

    return 12;
  }

  else
  {
    v4 = sub_1004A6D34();

    if (v4)
    {
      return 12;
    }

    else
    {
      return 0;
    }
  }
}

double IMAPServer.init(userAuthenticationMechanism:host:port:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char a8@<W7>, _OWORD *a9@<X8>)
{
  v12[64] = a8 & 1;
  *&v13 = a1;
  *(&v13 + 1) = a2;
  *&v14 = a3;
  *(&v14 + 1) = a4;
  *v15 = a5;
  *&v15[8] = a6;
  *&v15[16] = a7;
  v15[24] = a8 & 1;
  v16[0] = a1;
  v16[1] = a2;
  v16[2] = a3;
  v16[3] = a4;
  v16[4] = a5;
  v16[5] = a6;
  v16[6] = a7;
  v17 = a8 & 1;
  sub_100430970(&v13, v12);
  sub_10042EC54(v16);
  v10 = v14;
  *a9 = v13;
  a9[1] = v10;
  a9[2] = *v15;
  result = *&v15[9];
  *(a9 + 41) = *&v15[9];
  return result;
}

uint64_t IMAPServer.userAuthenticationMechanism.getter()
{
  v1 = *v0;
  sub_10043194C(*v0, v0[1], v0[2], v0[3]);
  return v1;
}

void sub_10043194C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != 1)
  {

    sub_10043199C(a3, a4);
  }
}

uint64_t sub_10043199C(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

void IMAPServer.userAuthenticationMechanism.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_100430920(*v4, v4[1], v4[2], v4[3]);
  *v4 = a1;
  v4[1] = a2;
  v4[2] = a3;
  v4[3] = a4;
}

uint64_t MailboxStatus.unseenCount.setter(uint64_t result, char a2)
{
  *(v2 + 48) = result;
  *(v2 + 56) = a2 & 1;
  return result;
}

void IMAPServer.hash(into:)()
{
  v1 = v0[1];
  if (v1 == 1)
  {
    goto LABEL_4;
  }

  v2 = *v0;
  v3 = v0[2];
  v4 = v0[3];
  sub_1004A6EC4(1u);
  if (!v1)
  {
    sub_1004A6EC4(0);
    if (v4 == 1)
    {
      goto LABEL_4;
    }

LABEL_9:
    sub_1004A6EC4(1u);
    if (v4)
    {
      sub_1004A6EB4(1uLL);
      _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
    }

    else
    {
      sub_1004A6EB4(0);
    }

    goto LABEL_5;
  }

  sub_1004A6EC4(1u);
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  if (v4 != 1)
  {
    goto LABEL_9;
  }

LABEL_4:
  sub_1004A6EC4(0);
LABEL_5:
  v5 = v0[4];
  v6 = v0[5];
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  if (v0[7])
  {
    sub_1004A6EC4(0);
  }

  else
  {
    v7 = v0[6];
    sub_1004A6EC4(1u);
    sub_1004A6EB4(v7);
  }
}

Swift::Int IMAPServer.hashValue.getter()
{
  sub_1004A6E94();
  IMAPServer.hash(into:)();
  return sub_1004A6F14();
}

Swift::Int sub_100431B4C()
{
  sub_1004A6E94();
  IMAPServer.hash(into:)();
  return sub_1004A6F14();
}

uint64_t sub_100431B88(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  v5[0] = *a1;
  v5[1] = v2;
  v6[0] = a1[2];
  *(v6 + 9) = *(a1 + 41);
  v3 = a2[1];
  v7[0] = *a2;
  v7[1] = v3;
  v8[0] = a2[2];
  *(v8 + 9) = *(a2 + 41);
  return _s12NIOIMAPCore210IMAPServerV23__derived_struct_equalsySbAC_ACtFZ_0(v5, v7) & 1;
}

uint64_t sub_100431BE4(uint64_t a1)
{
  v2 = v1;
  v4 = *(a1 + 8);
  if (v4 == 1)
  {
    v5 = 0;
    v6 = *(v1 + 20);
  }

  else
  {
    v7 = sub_1004A382C(*a1, v4, *(a1 + 16), *(a1 + 24));
    v8 = *(v1 + 20);
    result = sub_1002F178C(64, 0xE100000000000000, (v1 + 8), *(v1 + 20));
    if (v10)
    {
      v11._countAndFlagsBits = 64;
      v11._object = 0xE100000000000000;
      result = ByteBuffer._setStringSlowpath(_:at:)(v11, v8);
    }

    v12 = *(v1 + 20);
    v13 = __CFADD__(v12, result);
    v6 = v12 + result;
    if (v13)
    {
      goto LABEL_22;
    }

    *(v1 + 20) = v6;
    v5 = v7 + result;
    if (__OFADD__(v7, result))
    {
LABEL_23:
      __break(1u);
LABEL_24:
      __break(1u);
      return result;
    }
  }

  v15 = *(a1 + 32);
  v14 = *(a1 + 40);
  v16 = v6;

  v17 = sub_1002F178C(v15, v14, (v1 + 8), v16);
  if (v18)
  {
    v19._countAndFlagsBits = v15;
    v19._object = v14;
    v17 = ByteBuffer._setStringSlowpath(_:at:)(v19, v16);
  }

  v20 = v17;

  v21 = *(v2 + 20);
  v22 = (v21 + v20);
  if (__CFADD__(v21, v20))
  {
    __break(1u);
    goto LABEL_20;
  }

  *(v2 + 20) = v22;
  v23 = v5 + v20;
  if (__OFADD__(v5, v20))
  {
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (*(a1 + 56))
  {
    v24 = 0;
  }

  else
  {
    v30 = *(a1 + 48);
    v31._countAndFlagsBits = sub_1004A6CE4();
    sub_1004A5994(v31);

    v25 = sub_1002F178C(58, 0xE100000000000000, (v2 + 8), v22);
    if (v26)
    {
      v27._countAndFlagsBits = 58;
      v27._object = 0xE100000000000000;
      v25 = ByteBuffer._setStringSlowpath(_:at:)(v27, v22);
    }

    v24 = v25;

    v28 = *(v2 + 20);
    v13 = __CFADD__(v28, v24);
    v29 = v28 + v24;
    if (v13)
    {
      goto LABEL_24;
    }

    *(v2 + 20) = v29;
  }

  result = v23 + v24;
  if (__OFADD__(v23, v24))
  {
    goto LABEL_21;
  }

  return result;
}

uint64_t _s12NIOIMAPCore210IMAPServerV23__derived_struct_equalsySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v5 = *(a1 + 16);
  v4 = *(a1 + 24);
  v7 = *a2;
  v6 = *(a2 + 8);
  v9 = *(a2 + 16);
  v8 = *(a2 + 24);
  if (v2 == 1)
  {
    if (v6 == 1)
    {
      goto LABEL_3;
    }

    goto LABEL_10;
  }

  if (v6 == 1)
  {
LABEL_10:
    sub_10043194C(*a2, *(a2 + 8), v9, v8);
    sub_10043194C(v3, v2, v5, v4);
    sub_100430920(v3, v2, v5, v4);
    v17 = v7;
    v18 = v6;
    v19 = v9;
    v20 = v8;
LABEL_35:
    sub_100430920(v17, v18, v19, v20);
    return 0;
  }

  if (v2)
  {
    if (!v6)
    {
      sub_10043194C(*a2, 0, v9, v8);
      sub_10043194C(v3, v2, v5, v4);
LABEL_34:
      sub_1000C9FC8(v9, v8);
      v17 = v3;
      v18 = v2;
      v19 = v5;
      v20 = v4;
      goto LABEL_35;
    }

    if (v3 != v7 || v2 != v6)
    {
      v21 = a1;
      v22 = *a1;
      v23 = a2;
      v24 = sub_1004A6D34();
      a2 = v23;
      v25 = v24;
      a1 = v21;
      if ((v25 & 1) == 0)
      {
        v26 = v7;
        v27 = v6;
        v28 = v9;
        v29 = v8;
LABEL_31:
        sub_10043194C(v26, v27, v28, v29);
        v30 = v3;
        v31 = v2;
        goto LABEL_32;
      }
    }
  }

  else if (v6)
  {
    sub_10043194C(*a2, *(a2 + 8), v9, v8);
    v30 = v3;
    v31 = 0;
LABEL_32:
    v38 = v5;
    v39 = v4;
LABEL_33:
    sub_10043194C(v30, v31, v38, v39);

    goto LABEL_34;
  }

  if (v4 == 1)
  {
    if (v8 != 1)
    {
      sub_10043194C(v7, v6, v9, v8);
      v30 = v3;
      v31 = v2;
      v38 = v5;
      v39 = 1;
      goto LABEL_33;
    }

    v32 = a2;
    v33 = a1;
    sub_10043194C(v7, v6, v9, 1);
    v34 = v3;
    v35 = v2;
    v36 = v5;
    v37 = 1;
    goto LABEL_26;
  }

  if (v8 == 1)
  {
    v26 = v7;
    v27 = v6;
    v28 = v9;
    v29 = 1;
    goto LABEL_31;
  }

  if (!v4)
  {
    if (v8)
    {
      sub_10043194C(v7, v6, v9, v8);
      v30 = v3;
      v31 = v2;
      v38 = v5;
      v39 = 0;
      goto LABEL_33;
    }

    v32 = a2;
    v33 = a1;
    sub_10043194C(v7, v6, v9, 0);
    v34 = v3;
    v35 = v2;
    v36 = v5;
    v37 = 0;
    goto LABEL_26;
  }

  if (!v8)
  {
    v26 = v7;
    v27 = v6;
    v28 = v9;
    v29 = 0;
    goto LABEL_31;
  }

  v32 = a2;
  v33 = a1;
  if (v5 == v9 && v4 == v8)
  {
    sub_10043194C(v7, v6, v5, v4);
    v34 = v3;
    v35 = v2;
    v36 = v5;
    v37 = v4;
LABEL_26:
    sub_10043194C(v34, v35, v36, v37);

    goto LABEL_27;
  }

  v41 = sub_1004A6D34();
  sub_10043194C(v7, v6, v9, v8);
  sub_10043194C(v3, v2, v5, v4);

  if ((v41 & 1) == 0)
  {
    goto LABEL_34;
  }

LABEL_27:
  sub_1000C9FC8(v9, v8);
  sub_100430920(v3, v2, v5, v4);
  a1 = v33;
  a2 = v32;
LABEL_3:
  if (*(a1 + 32) == *(a2 + 32) && *(a1 + 40) == *(a2 + 40))
  {
    goto LABEL_6;
  }

  v10 = a1;
  v11 = *(a1 + 32);
  v12 = a2;
  v13 = sub_1004A6D34();
  a2 = v12;
  v14 = v13;
  a1 = v10;
  v15 = 0;
  if (v14)
  {
LABEL_6:
    v16 = *(a2 + 56);
    if (*(a1 + 56))
    {
      if ((*(a2 + 56) & 1) == 0)
      {
        return 0;
      }
    }

    else
    {
      if (*(a1 + 48) != *(a2 + 48))
      {
        v16 = 1;
      }

      if (v16)
      {
        return 0;
      }
    }

    return 1;
  }

  return v15;
}