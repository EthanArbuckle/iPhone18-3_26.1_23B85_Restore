Swift::Int sub_1000F1308()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  v3 = *(v0 + 2);
  v4 = *(v0 + 3);
  v5 = v0[32];
  sub_1004A6E94();
  sub_1004A6EB4(v1);
  sub_1004A4424();
  if (v5 == 1)
  {
    sub_1004A6EB4(v4 != 0);
  }

  else
  {
    sub_1004A6EB4(2uLL);
    sub_1004A6EE4(v4);
    sub_1004A6EE4(HIDWORD(v4));
  }

  return sub_1004A6F14();
}

uint64_t sub_1000F13C4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v6 = *(a1 + 32);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v8 = *(a2 + 32);
  return sub_1000F2F14(v5, v7) & 1;
}

uint64_t sub_1000F1410(uint64_t result)
{
  v1 = *(result + 16);
  if (!v1)
  {
    return _swiftEmptyArrayStorage;
  }

  v2 = 0;
  v3 = result + 32;
  v4 = _swiftEmptyArrayStorage;
  while (1)
  {
    v5 = (v3 + 8 * v2);
    v7 = *v5;
    v6 = v5[1];
    if (v6 < v7)
    {
      goto LABEL_34;
    }

    v8 = v6 - v7;
    v9 = _swiftEmptyArrayStorage;
    if (v6 - v7 != -1)
    {
      break;
    }

LABEL_7:
    v10 = v9[2];
    v11 = *(v4 + 2);
    v12 = v11 + v10;
    if (__OFADD__(v11, v10))
    {
      goto LABEL_35;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result && v12 <= *(v4 + 3) >> 1)
    {
      if (v9[2])
      {
        goto LABEL_27;
      }
    }

    else
    {
      if (v11 <= v12)
      {
        v17 = v11 + v10;
      }

      else
      {
        v17 = v11;
      }

      result = sub_100085038(result, v17, 1, v4);
      v4 = result;
      if (v9[2])
      {
LABEL_27:
        v18 = *(v4 + 2);
        if ((*(v4 + 3) >> 1) - v18 < v10)
        {
          goto LABEL_37;
        }

        memcpy(&v4[4 * v18 + 32], v9 + 4, 4 * v10);

        if (v10)
        {
          v19 = *(v4 + 2);
          v20 = __OFADD__(v19, v10);
          v21 = v19 + v10;
          if (v20)
          {
            goto LABEL_38;
          }

          *(v4 + 2) = v21;
        }

        goto LABEL_4;
      }
    }

    if (v10)
    {
      goto LABEL_36;
    }

LABEL_4:
    if (++v2 == v1)
    {
      return v4;
    }
  }

  if (v8 < 0)
  {
    goto LABEL_40;
  }

  sub_10000C9C0(&qword_1005CF0D8, &qword_1004D1FE0);
  v9 = swift_allocObject();
  result = j__malloc_size(v9);
  v13 = result - 32;
  if (result < 32)
  {
    v13 = result - 29;
  }

  v9[2] = v6 - v7 + 1;
  v9[3] = 2 * (v13 >> 2);
  v14 = 32;
  while (2)
  {
    if (v6 == v7)
    {
      v15 = 0;
      goto LABEL_19;
    }

    v15 = v7 + 1;
    if (v7 != -1)
    {
LABEL_19:
      *(v9 + v14) = v7;
      if (!v8)
      {
        goto LABEL_7;
      }

      --v8;
      v14 += 4;
      v16 = v6 == v7;
      LODWORD(v7) = v15;
      if (v16)
      {
        goto LABEL_39;
      }

      continue;
    }

    break;
  }

  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_1000F15F0(void (*a1)(__n128))
{
  v2 = type metadata accessor for MoveAndCopyMessages.CommandID();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v6);
  v9 = &v15 - v8;
  a1(v7);
  sub_1000F9948(v9, v5, type metadata accessor for MoveAndCopyMessages.CommandID);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      v13 = 0x45474E55505845;
      goto LABEL_12;
    }

    v13 = 1163284301;
    v12 = v5;
  }

  else
  {
    v11 = EnumCaseMultiPayload == 0;
    if (EnumCaseMultiPayload)
    {
      v12 = v5;
    }

    else
    {
      v12 = v9;
    }

    if (v11)
    {
      v9 = v5;
      v13 = 0x4554454C4544;
    }

    else
    {
      v13 = 1498435395;
    }
  }

  sub_1000F9A28(v12, type metadata accessor for MoveAndCopyMessages.CommandID);
LABEL_12:
  sub_1000F9A28(v9, type metadata accessor for MoveAndCopyMessages.CommandID);
  return v13;
}

uint64_t sub_1000F1774()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

unint64_t sub_1000F17B4()
{
  result = qword_1005D0280;
  if (!qword_1005D0280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D0280);
  }

  return result;
}

uint64_t sub_1000F1808(uint64_t a1, char a2, void *a3)
{
  v33 = *(a1 + 16);
  if (!v33)
  {
  }

  v3 = 0;
  for (i = 32; ; i += 56)
  {
    if (v3 >= *(a1 + 16))
    {
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      sub_1004A6E24();
      __break(1u);
      goto LABEL_23;
    }

    v4 = *(a1 + i + 16);
    v41 = *(a1 + i);
    v42 = v4;
    v43 = *(a1 + i + 32);
    v35 = *(a1 + i + 48);
    v44 = v35;
    v5 = v41;
    v6 = BYTE7(v41);
    v7 = *(&v41 + 5);
    v8 = *(&v41 + 1);
    v9 = *(&v41 + 1);
    v10 = v4;
    v11 = v43;
    sub_10000E268(&v41, v40, &qword_1005D0458, &qword_1004D3CD8);
    if (!v9)
    {
    }

    v12 = (v8 | ((v7 | (v6 << 16)) << 32)) >> 24;
    v13 = v5 & 1;
    LOBYTE(v41) = v5 & 1;
    DWORD1(v41) = v12;
    *(&v41 + 1) = v9;
    LODWORD(v42) = v10;
    *(&v42 + 1) = *(&v10 + 1);
    *&v43 = v11;
    v14 = *a3;
    v48 = v11;
    v47[0] = v41;
    v47[1] = v42;
    v15 = sub_100063FFC(v47);
    v17 = v14[2];
    v18 = (v16 & 1) == 0;
    v19 = __OFADD__(v17, v18);
    v20 = v17 + v18;
    if (v19)
    {
      goto LABEL_20;
    }

    v21 = v16;
    if (v14[3] >= v20)
    {
      break;
    }

    sub_1000C6CC4(v20, a2 & 1);
    v22 = *a3;
    v45[0] = v41;
    v45[1] = v42;
    v46 = v43;
    v15 = sub_100063FFC(v45);
    if ((v21 & 1) != (v23 & 1))
    {
      goto LABEL_22;
    }

LABEL_10:
    if (v21)
    {
      goto LABEL_15;
    }

LABEL_11:
    v24 = *a3;
    *(*a3 + 8 * (v15 >> 6) + 64) |= 1 << v15;
    v25 = v24[6] + 40 * v15;
    *v25 = v13;
    *(v25 + 4) = v12;
    *(v25 + 8) = v9;
    *(v25 + 16) = v10;
    *(v25 + 24) = *(&v10 + 1);
    *(v25 + 32) = v11;
    v26 = v24[7] + 12 * v15;
    *v26 = *(&v11 + 1);
    *(v26 + 8) = v35 & 1;
    v27 = v24[2];
    v19 = __OFADD__(v27, 1);
    v28 = v27 + 1;
    if (v19)
    {
      goto LABEL_21;
    }

    ++v3;
    v24[2] = v28;
    a2 = 1;
    if (v33 == v3)
    {
    }
  }

  if (a2)
  {
    goto LABEL_10;
  }

  v37 = v15;
  sub_10013BDC0();
  v15 = v37;
  if ((v21 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_15:
  v29 = swift_allocError();
  swift_willThrow();

  v49 = v29;
  swift_errorRetain();
  sub_10000C9C0(&qword_1005D0460, &qword_1004D3CE0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v30 = *(&v42 + 1);
    v31 = v43;

    sub_100014D40(v30, v31);
  }

LABEL_23:
  v40[0] = 0;
  v40[1] = 0xE000000000000000;
  sub_1004A6724(30);
  v50._object = 0x80000001004AA380;
  v50._countAndFlagsBits = 0xD00000000000001BLL;
  sub_1004A5994(v50);
  sub_1004A6934();
  v51._countAndFlagsBits = 39;
  v51._object = 0xE100000000000000;
  sub_1004A5994(v51);
  result = sub_1004A69A4();
  __break(1u);
  return result;
}

void *sub_1000F1BB0(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t, uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v6 = result;
      v7 = a2;
      bzero(result, 8 * a2);
      result = v6;
      a2 = v7;
    }

    v8 = a4(result, a2, a3);

    return v8;
  }

  return result;
}

void *sub_1000F1C38(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v5 = result;
      v6 = a2;
      v7 = a4;
      bzero(result, 8 * a2);
      result = v5;
      a2 = v6;
      a4 = v7;
    }

    sub_1000F2C60(result, a2, a3, a4);
    v9 = v8;

    return v9;
  }

  return result;
}

uint64_t sub_1000F1CC8(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for MoveAndCopyMessages.CommandID();
  v33 = *(v4 - 8);
  v34 = v4;
  v5 = *(v33 + 64);
  __chkstk_darwin(v4);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v11 = &v28 - v10;
  v12 = *(a1 + 32);
  v13 = ((1 << v12) + 63) >> 6;
  if ((v12 & 0x3Fu) > 0xD)
  {
    goto LABEL_24;
  }

  while (2)
  {
    v29 = v13;
    v30 = v2;
    v28 = &v28;
    __chkstk_darwin(v9);
    v31 = &v28 - ((v14 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v31, v14);
    v32 = 0;
    v15 = 0;
    v2 = a1 + 56;
    v16 = 1 << *(a1 + 32);
    v17 = -1;
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    v18 = v17 & *(a1 + 56);
    v19 = (v16 + 63) >> 6;
    while (v18)
    {
      v20 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
LABEL_15:
      v13 = v20 | (v15 << 6);
      sub_1000F9948(*(a1 + 48) + *(v33 + 72) * v13, v11, type metadata accessor for MoveAndCopyMessages.CommandID);
      sub_1000F9948(v11, v7, type metadata accessor for MoveAndCopyMessages.CommandID);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload <= 1)
      {
        if (!EnumCaseMultiPayload)
        {
          goto LABEL_6;
        }

        sub_1000F9A28(v7, type metadata accessor for MoveAndCopyMessages.CommandID);
        sub_1000F9A28(v11, type metadata accessor for MoveAndCopyMessages.CommandID);
        *&v31[(v13 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v13;
        if (__OFADD__(v32++, 1))
        {
          __break(1u);
          return sub_100161708(v31, v29, v32, a1);
        }
      }

      else
      {
        if (EnumCaseMultiPayload == 2)
        {
LABEL_6:
          sub_1000F9A28(v7, type metadata accessor for MoveAndCopyMessages.CommandID);
        }

        sub_1000F9A28(v11, type metadata accessor for MoveAndCopyMessages.CommandID);
      }
    }

    v21 = v15;
    while (1)
    {
      v15 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v15 >= v19)
      {
        return sub_100161708(v31, v29, v32, a1);
      }

      v22 = *(v2 + 8 * v15);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v18 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_24:

    if (swift_stdlib_isStackAllocationSafe())
    {

      continue;
    }

    break;
  }

  v26 = swift_slowAlloc();
  v27 = sub_1000F1BB0(v26, v13, a1, sub_1000F29D4);

  if (!v2)
  {
    return v27;
  }

  return result;
}

uint64_t sub_1000F2070(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for MoveAndCopyMessages.CommandID();
  v33 = *(v4 - 8);
  v34 = v4;
  v5 = *(v33 + 64);
  __chkstk_darwin(v4);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v11 = &v28 - v10;
  v12 = *(a1 + 32);
  v13 = ((1 << v12) + 63) >> 6;
  if ((v12 & 0x3Fu) > 0xD)
  {
    goto LABEL_22;
  }

  while (2)
  {
    v29 = v13;
    v30 = v2;
    v28 = &v28;
    __chkstk_darwin(v9);
    v31 = &v28 - ((v14 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v31, v14);
    v32 = 0;
    v15 = 0;
    v2 = a1 + 56;
    v16 = 1 << *(a1 + 32);
    v17 = -1;
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    v18 = v17 & *(a1 + 56);
    v19 = (v16 + 63) >> 6;
    while (v18)
    {
      v20 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
LABEL_14:
      v13 = v20 | (v15 << 6);
      sub_1000F9948(*(a1 + 48) + *(v33 + 72) * v13, v11, type metadata accessor for MoveAndCopyMessages.CommandID);
      sub_1000F9948(v11, v7, type metadata accessor for MoveAndCopyMessages.CommandID);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if ((EnumCaseMultiPayload - 1) < 2)
      {
        sub_1000F9A28(v7, type metadata accessor for MoveAndCopyMessages.CommandID);
        goto LABEL_6;
      }

      if (EnumCaseMultiPayload == 3)
      {
LABEL_6:
        sub_1000F9A28(v11, type metadata accessor for MoveAndCopyMessages.CommandID);
      }

      else
      {
        sub_1000F9A28(v7, type metadata accessor for MoveAndCopyMessages.CommandID);
        sub_1000F9A28(v11, type metadata accessor for MoveAndCopyMessages.CommandID);
        *&v31[(v13 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v13;
        if (__OFADD__(v32++, 1))
        {
          __break(1u);
          return sub_100161708(v31, v29, v32, a1);
        }
      }
    }

    v21 = v15;
    while (1)
    {
      v15 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v15 >= v19)
      {
        return sub_100161708(v31, v29, v32, a1);
      }

      v22 = *(v2 + 8 * v15);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v18 = (v22 - 1) & v22;
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_22:

    if (swift_stdlib_isStackAllocationSafe())
    {

      continue;
    }

    break;
  }

  v26 = swift_slowAlloc();
  v27 = sub_1000F1BB0(v26, v13, a1, sub_1000F274C);

  if (!v2)
  {
    return v27;
  }

  return result;
}

uint64_t sub_1000F2414(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v32 = a1;
  v5 = type metadata accessor for MoveAndCopyMessages.CommandID();
  v31 = *(v5 - 8);
  v6 = *(v31 + 64);
  __chkstk_darwin(v5 - 8);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v8) = *(a3 + 32);
  v10 = ((1 << v8) + 63) >> 6;
  if ((v8 & 0x3Fu) > 0xD)
  {
    goto LABEL_21;
  }

  while (1)
  {
    v27 = v10;
    v29 = &v27;
    __chkstk_darwin(v7);
    v28 = &v27 - ((v11 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v28, v11);
    v30 = 0;
    v10 = 0;
    v33 = a3;
    v13 = *(a3 + 56);
    a3 += 56;
    v12 = v13;
    v14 = 1 << *(a3 - 24);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & v12;
    v17 = (v14 + 63) >> 6;
    while (v16)
    {
      v18 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_12:
      v21 = v18 | (v10 << 6);
      sub_1000F9948(*(v33 + 48) + *(v31 + 72) * v21, v9, type metadata accessor for MoveAndCopyMessages.CommandID);
      v22 = v32(v9);
      sub_1000F9A28(v9, type metadata accessor for MoveAndCopyMessages.CommandID);
      if (v3)
      {

        return swift_willThrow();
      }

      if (v22)
      {
        *&v28[(v21 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v21;
        if (__OFADD__(v30++, 1))
        {
          __break(1u);
          return sub_100161708(v28, v27, v30, v33);
        }
      }
    }

    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v10 >= v17)
      {
        return sub_100161708(v28, v27, v30, v33);
      }

      v20 = *(a3 + 8 * v10);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_21:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v25 = swift_slowAlloc();
  v26 = sub_1000F1C38(v25, v10, a3, v32);

  if (!v3)
  {
    return v26;
  }

  return result;
}

void sub_1000F274C(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v22 = a2;
  v23 = a1;
  v26 = type metadata accessor for MoveAndCopyMessages.CommandID();
  v25 = *(v26 - 8);
  v4 = *(v25 + 64);
  __chkstk_darwin(v26);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v21 - v8;
  v24 = 0;
  v10 = 0;
  v11 = 1 << *(a3 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(a3 + 56);
  v14 = (v11 + 63) >> 6;
  while (v13)
  {
    v15 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
LABEL_13:
    v18 = v15 | (v10 << 6);
    sub_1000F9948(*(a3 + 48) + *(v25 + 72) * v18, v9, type metadata accessor for MoveAndCopyMessages.CommandID);
    sub_1000F9948(v9, v6, type metadata accessor for MoveAndCopyMessages.CommandID);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if ((EnumCaseMultiPayload - 1) < 2)
    {
      sub_1000F9A28(v6, type metadata accessor for MoveAndCopyMessages.CommandID);
      goto LABEL_5;
    }

    if (EnumCaseMultiPayload == 3)
    {
LABEL_5:
      sub_1000F9A28(v9, type metadata accessor for MoveAndCopyMessages.CommandID);
    }

    else
    {
      sub_1000F9A28(v6, type metadata accessor for MoveAndCopyMessages.CommandID);
      sub_1000F9A28(v9, type metadata accessor for MoveAndCopyMessages.CommandID);
      *(v23 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      if (__OFADD__(v24++, 1))
      {
        __break(1u);
LABEL_18:

        sub_100161708(v23, v22, v24, a3);
        return;
      }
    }
  }

  v16 = v10;
  while (1)
  {
    v10 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v10 >= v14)
    {
      goto LABEL_18;
    }

    v17 = *(a3 + 56 + 8 * v10);
    ++v16;
    if (v17)
    {
      v15 = __clz(__rbit64(v17));
      v13 = (v17 - 1) & v17;
      goto LABEL_13;
    }
  }

  __break(1u);
}

void sub_1000F29D4(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v22 = a2;
  v23 = a1;
  v26 = type metadata accessor for MoveAndCopyMessages.CommandID();
  v25 = *(v26 - 8);
  v4 = *(v25 + 64);
  __chkstk_darwin(v26);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v21 - v8;
  v24 = 0;
  v10 = 0;
  v11 = 1 << *(a3 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(a3 + 56);
  v14 = (v11 + 63) >> 6;
  while (v13)
  {
    v15 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
LABEL_14:
    v18 = v15 | (v10 << 6);
    sub_1000F9948(*(a3 + 48) + *(v25 + 72) * v18, v9, type metadata accessor for MoveAndCopyMessages.CommandID);
    sub_1000F9948(v9, v6, type metadata accessor for MoveAndCopyMessages.CommandID);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload <= 1)
    {
      if (!EnumCaseMultiPayload)
      {
        goto LABEL_5;
      }

      sub_1000F9A28(v6, type metadata accessor for MoveAndCopyMessages.CommandID);
      sub_1000F9A28(v9, type metadata accessor for MoveAndCopyMessages.CommandID);
      *(v23 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      if (__OFADD__(v24++, 1))
      {
        __break(1u);
LABEL_20:

        sub_100161708(v23, v22, v24, a3);
        return;
      }
    }

    else
    {
      if (EnumCaseMultiPayload == 2)
      {
LABEL_5:
        sub_1000F9A28(v6, type metadata accessor for MoveAndCopyMessages.CommandID);
      }

      sub_1000F9A28(v9, type metadata accessor for MoveAndCopyMessages.CommandID);
    }
  }

  v16 = v10;
  while (1)
  {
    v10 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v10 >= v14)
    {
      goto LABEL_20;
    }

    v17 = *(a3 + 56 + 8 * v10);
    ++v16;
    if (v17)
    {
      v15 = __clz(__rbit64(v17));
      v13 = (v17 - 1) & v17;
      goto LABEL_14;
    }
  }

  __break(1u);
}

void sub_1000F2C60(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *))
{
  v30 = a4;
  v26 = a2;
  v27 = a1;
  v6 = type metadata accessor for MoveAndCopyMessages.CommandID();
  v29 = *(v6 - 8);
  v7 = *(v29 + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = 0;
  v10 = 0;
  v31 = a3;
  v13 = *(a3 + 56);
  v12 = a3 + 56;
  v11 = v13;
  v14 = 1 << *(v12 - 24);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & v11;
  v17 = (v14 + 63) >> 6;
  while (v16)
  {
    v18 = __clz(__rbit64(v16));
    v16 &= v16 - 1;
LABEL_11:
    v21 = v18 | (v10 << 6);
    sub_1000F9948(*(v31 + 48) + *(v29 + 72) * v21, v9, type metadata accessor for MoveAndCopyMessages.CommandID);
    v22 = v30(v9);
    sub_1000F9A28(v9, type metadata accessor for MoveAndCopyMessages.CommandID);
    if (v4)
    {
      return;
    }

    if (v22)
    {
      *(v27 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
      if (__OFADD__(v28++, 1))
      {
        __break(1u);
LABEL_16:
        v24 = v31;

        sub_100161708(v27, v26, v28, v24);
        return;
      }
    }
  }

  v19 = v10;
  while (1)
  {
    v10 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v10 >= v17)
    {
      goto LABEL_16;
    }

    v20 = *(v12 + 8 * v10);
    ++v19;
    if (v20)
    {
      v18 = __clz(__rbit64(v20));
      v16 = (v20 - 1) & v20;
      goto LABEL_11;
    }
  }

  __break(1u);
}

uint64_t sub_1000F2E78()
{
  v1 = *v0;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result || (v1 & 0x8000000000000000) != 0 || (v1 & 0x4000000000000000) != 0)
  {
    result = sub_100139930(v1);
    v1 = result;
  }

  v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v3)
  {
    v4 = v3 - 1;
    result = *((v1 & 0xFFFFFFFFFFFFFF8) + 8 * v4 + 0x20);
    *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10) = v4;
    *v0 = v1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000F2EDC@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v4 = *(a1 + 1);
  v3 = *(a1 + 2);
  *(a2 + 8) = v4;
  *(a2 + 16) = v3;
  *a2 = v2;
  return sub_100014CEC(v4, v3);
}

uint64_t sub_1000F2EF4@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v4 = *(a1 + 2);
  v3 = *(a1 + 3);
  *(a2 + 8) = *(a1 + 8);
  *(a2 + 16) = v4;
  *(a2 + 24) = v3;
  *a2 = v2;
  return sub_100014CEC(v4, v3);
}

uint64_t sub_1000F2F14(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  if (sub_10003A194(*(a1 + 1), *(a1 + 2), *(a2 + 1), *(a2 + 2)))
  {
    v5 = *(a1 + 3);
    v7 = *(a2 + 6);
    v6 = *(a2 + 7);
    v8 = a2[32];
    if (a1[32])
    {
      if (v5)
      {
        if (a2[32])
        {
          return (v7 | v6) != 0;
        }
      }

      else if (a2[32])
      {
        return (v7 | v6) == 0;
      }
    }

    else if ((a2[32] & 1) == 0 && __PAIR64__(v6, v7) == v5)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_1000F2FCC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v39 - v6;
  v8 = type metadata accessor for MoveAndCopyMessages.CommandID();
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8);
  v12 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v10);
  v15 = &v39 - v14;
  __chkstk_darwin(v13);
  v17 = &v39 - v16;
  v18 = sub_10000C9C0(&qword_1005D02A8, &unk_1004D3A30);
  v19 = *(*(v18 - 8) + 64);
  v20 = __chkstk_darwin(v18 - 8);
  v22 = &v39 - v21;
  v23 = &v39 + *(v20 + 56) - v21;
  sub_1000F9948(a1, &v39 - v21, type metadata accessor for MoveAndCopyMessages.CommandID);
  sub_1000F9948(a2, v23, type metadata accessor for MoveAndCopyMessages.CommandID);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      if (swift_getEnumCaseMultiPayload() == 3)
      {
        goto LABEL_17;
      }

LABEL_19:
      sub_100025F40(v22, &qword_1005D02A8, &unk_1004D3A30);
LABEL_22:
      v37 = 0;
      return v37 & 1;
    }

    sub_1000F9948(v22, v12, type metadata accessor for MoveAndCopyMessages.CommandID);
    v25 = *v12;
    v26 = *(v12 + 2);
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      v27 = *v23;
      v28 = *(v23 + 2);
      v29 = *(v23 + 2);
      if (*(v12 + 2) | (*(v12 + 2) << 32)) == (v28 | (v28 << 32)) && (sub_1000FFC98(v25, v27))
      {
        v30 = sub_1001151F4(v26, v29);
        goto LABEL_14;
      }

LABEL_20:

LABEL_21:
      sub_1000F9A28(v22, type metadata accessor for MoveAndCopyMessages.CommandID);
      goto LABEL_22;
    }

LABEL_18:

    goto LABEL_19;
  }

  if (!EnumCaseMultiPayload)
  {
    sub_1000F9948(v22, v17, type metadata accessor for MoveAndCopyMessages.CommandID);
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_100025FDC(v23, v7, &unk_1005D91B0, &unk_1004CF400);
      sub_100016D2C();
      v37 = sub_1004A7034();
      sub_100025F40(v7, &unk_1005D91B0, &unk_1004CF400);
      sub_100025F40(v17, &unk_1005D91B0, &unk_1004CF400);
      sub_1000F9A28(v22, type metadata accessor for MoveAndCopyMessages.CommandID);
      return v37 & 1;
    }

    sub_100025F40(v17, &unk_1005D91B0, &unk_1004CF400);
    goto LABEL_19;
  }

  sub_1000F9948(v22, v15, type metadata accessor for MoveAndCopyMessages.CommandID);
  v31 = *v15;
  v32 = *(v15 + 2);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    goto LABEL_18;
  }

  v33 = *v23;
  v34 = *(v23 + 2);
  v35 = *(v23 + 2);
  if ((*(v15 + 2) | (*(v15 + 2) << 32)) != (v34 | (v34 << 32)) || (sub_1000FFC98(v31, v33) & 1) == 0)
  {
    goto LABEL_20;
  }

  v30 = sub_100114864(v32, v35);
LABEL_14:
  v36 = v30;

  if ((v36 & 1) == 0)
  {
    goto LABEL_21;
  }

LABEL_17:
  sub_1000F9A28(v22, type metadata accessor for MoveAndCopyMessages.CommandID);
  v37 = 1;
  return v37 & 1;
}

void *sub_1000F342C(uint64_t a1, uint64_t a2)
{
  v42 = a2;
  v4 = type metadata accessor for MoveAndCopyMessages.CommandID();
  v41 = *(v4 - 8);
  v5 = *(v41 + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v8 = sub_1004A65D4();
  }

  else
  {
    v8 = *(a1 + 16);
  }

  result = _swiftEmptyArrayStorage;
  if (v8)
  {
    v49 = _swiftEmptyArrayStorage;
    sub_1000921E8(0, v8 & ~(v8 >> 63), 0);
    v44 = v49;
    if (v43)
    {
      result = sub_1004A6584();
    }

    else
    {
      v11 = -1 << *(a1 + 32);
      result = sub_1004A6554();
      v10 = *(a1 + 36);
    }

    v46 = result;
    v47 = v10;
    v48 = v43 != 0;
    if ((v8 & 0x8000000000000000) == 0)
    {
      v12 = 0;
      v13 = a1 & 0xFFFFFFFFFFFFFF8;
      if (a1 < 0)
      {
        v13 = a1;
      }

      v38 = a1 + 56;
      v39 = v13;
      v36 = v2;
      v37 = a1 + 64;
      v40 = v8;
      while (v12 < v8)
      {
        if (__OFADD__(v12++, 1))
        {
          goto LABEL_37;
        }

        v16 = v46;
        v17 = v47;
        v18 = v48;
        v19 = a1;
        sub_100141B98(v46, v47, v48, a1);
        v45[0] = v20;
        swift_getAtKeyPath();

        v21 = v44;
        v49 = v44;
        v22 = v7;
        v24 = v44[2];
        v23 = v44[3];
        if (v24 >= v23 >> 1)
        {
          sub_1000921E8(v23 > 1, v24 + 1, 1);
          v21 = v49;
        }

        v21[2] = v24 + 1;
        v25 = (*(v41 + 80) + 32) & ~*(v41 + 80);
        v44 = v21;
        result = sub_1000F9A88(v22, v21 + v25 + *(v41 + 72) * v24, type metadata accessor for MoveAndCopyMessages.CommandID);
        v7 = v22;
        if (v43)
        {
          if (!v18)
          {
            goto LABEL_42;
          }

          a1 = v19;
          if (sub_1004A65A4())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          v8 = v40;
          sub_10000C9C0(&qword_1005D0430, &qword_1004D3C98);
          v14 = sub_1004A5D94();
          sub_1004A6624();
          result = v14(v45, 0);
          if (v12 == v8)
          {
LABEL_34:
            sub_100020944(v46, v47, v48);
            return v44;
          }
        }

        else
        {
          if (v18)
          {
            goto LABEL_43;
          }

          if ((v16 & 0x8000000000000000) != 0)
          {
            goto LABEL_38;
          }

          a1 = v19;
          v26 = 1 << *(v19 + 32);
          if (v16 >= v26)
          {
            goto LABEL_38;
          }

          v27 = v16 >> 6;
          v28 = *(v38 + 8 * (v16 >> 6));
          if (((v28 >> v16) & 1) == 0)
          {
            goto LABEL_39;
          }

          if (*(v19 + 36) != v17)
          {
            goto LABEL_40;
          }

          v29 = v28 & (-2 << (v16 & 0x3F));
          if (v29)
          {
            v26 = __clz(__rbit64(v29)) | v16 & 0x7FFFFFFFFFFFFFC0;
          }

          else
          {
            v30 = v27 << 6;
            v31 = v27 + 1;
            v32 = (v37 + 8 * v27);
            while (v31 < (v26 + 63) >> 6)
            {
              v34 = *v32++;
              v33 = v34;
              v30 += 64;
              ++v31;
              if (v34)
              {
                result = sub_100020944(v16, v17, 0);
                v26 = __clz(__rbit64(v33)) + v30;
                goto LABEL_33;
              }
            }

            result = sub_100020944(v16, v17, 0);
          }

LABEL_33:
          v35 = *(v19 + 36);
          v46 = v26;
          v47 = v35;
          v48 = 0;
          v8 = v40;
          if (v12 == v40)
          {
            goto LABEL_34;
          }
        }
      }

      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
    }

    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
  }

  return result;
}

uint64_t sub_1000F3830(uint64_t a1, uint64_t a2, int a3)
{
  v3 = *(a1 + 16);
  if (!v3)
  {
    return _swiftEmptyArrayStorage;
  }

  v5 = a1;
  sub_1000922A8(0, v3, 0);
  v6 = -1 << *(v5 + 32);
  v35 = v5 + 64;
  result = sub_1004A6554();
  if (result < 0 || (v8 = result, result >= 1 << *(v5 + 32)))
  {
LABEL_24:
    __break(1u);
  }

  else
  {
    v26 = v5 + 72;
    v27 = v3;
    v36 = *(v5 + 36);
    v9 = 1;
    v28 = v5;
    while (1)
    {
      v10 = v8 >> 6;
      if ((*(v35 + 8 * (v8 >> 6)) & (1 << v8)) == 0)
      {
        break;
      }

      if (v36 != *(v5 + 36))
      {
        goto LABEL_26;
      }

      v30 = v9;
      v33 = *(*(v5 + 48) + 4 * v8);
      v11 = *(v5 + 56) + 40 * v8;
      v31 = *v11;
      v12 = *(v11 + 8);
      v13 = *(v11 + 16);
      v32 = *(v11 + 24);
      v14 = *(v11 + 32);
      sub_100014CEC(v12, v13);
      v16 = _swiftEmptyArrayStorage[2];
      v15 = _swiftEmptyArrayStorage[3];
      v34 = v16 + 1;

      if (v16 >= v15 >> 1)
      {
        result = sub_1000922A8((v15 > 1), v34, 1);
      }

      _swiftEmptyArrayStorage[2] = v34;
      v17 = &_swiftEmptyArrayStorage[7 * v16];
      *(v17 + 32) = v31;
      *(v17 + 35) = v38;
      *(v17 + 33) = v37;
      *(v17 + 9) = v33;
      v17[5] = a2;
      *(v17 + 12) = a3;
      v17[7] = v12;
      v17[8] = v13;
      v17[9] = v32;
      *(v17 + 80) = v14;
      v5 = v28;
      v18 = 1 << *(v28 + 32);
      if (v8 >= v18)
      {
        goto LABEL_27;
      }

      v19 = *(v35 + 8 * v10);
      if ((v19 & (1 << v8)) == 0)
      {
        goto LABEL_28;
      }

      if (v36 != *(v28 + 36))
      {
        goto LABEL_29;
      }

      v20 = v19 & (-2 << (v8 & 0x3F));
      if (v20)
      {
        v8 = __clz(__rbit64(v20)) | v8 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v21 = v10 << 6;
        v22 = v10 + 1;
        v23 = (v26 + 8 * v10);
        while (v22 < (v18 + 63) >> 6)
        {
          v25 = *v23++;
          v24 = v25;
          v21 += 64;
          ++v22;
          if (v25)
          {
            result = sub_100020944(v8, v36, 0);
            v8 = __clz(__rbit64(v24)) + v21;
            goto LABEL_19;
          }
        }

        result = sub_100020944(v8, v36, 0);
        v8 = v18;
      }

LABEL_19:
      if (v30 == v27)
      {
        return _swiftEmptyArrayStorage;
      }

      if ((v8 & 0x8000000000000000) == 0)
      {
        v9 = v30 + 1;
        if (v8 < 1 << *(v28 + 32))
        {
          continue;
        }
      }

      goto LABEL_24;
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
  return result;
}

void *sub_1000F3B10(uint64_t a1)
{
  v2 = type metadata accessor for MoveAndCopyMessages.CommandID();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2 - 8);
  v7 = v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = v19 - v8;
  v10 = sub_1001637EC(_swiftEmptyArrayStorage);
  sub_1001637EC(_swiftEmptyArrayStorage);
  result = _swiftEmptySetSingleton;
  v21 = _swiftEmptySetSingleton;
  v12 = *(a1 + 16);
  if (v12)
  {
    v19[1] = v10;
    v13 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v14 = *(v3 + 72);
    do
    {
      sub_1000F9948(v13, v9, type metadata accessor for MoveAndCopyMessages.CommandID);
      sub_1000F9948(v9, v7, type metadata accessor for MoveAndCopyMessages.CommandID);
      v15 = sub_10000C9C0(&qword_1005CEF30, &unk_1004D1E00);
      v16 = *(v15 + 48);
      v17 = *(v15 + 52);
      v18 = swift_allocObject();
      sub_1000F9A88(v7, v18 + *(*v18 + 96), type metadata accessor for MoveAndCopyMessages.CommandID);
      sub_1000893BC(&v20, v18);
      sub_1000F9A28(v9, type metadata accessor for MoveAndCopyMessages.CommandID);

      v13 += v14;
      --v12;
    }

    while (v12);
    return v21;
  }

  return result;
}

uint64_t sub_1000F3D18(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MoveAndCopyMessages.CommandID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23[0] = v9;
  v23[1] = sub_1000F7764(&qword_1005CF830);
  KeyPath = swift_getKeyPath();

  v11 = sub_1000F342C(a1, KeyPath);

  v12 = sub_1000CE800(v11);

  v13 = 1 << *(v12 + 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & *(v12 + 56);
  v16 = (v13 + 63) >> 6;

  v18 = 0;
  while (v15)
  {
LABEL_9:
    sub_1000F9948(*(v12 + 48) + *(v5 + 72) * (__clz(__rbit64(v15)) | (v18 << 6)), v8, type metadata accessor for MoveAndCopyMessages.CommandID);
    if (!*(a2 + 16) || (v20 = sub_100063E04(v8), (v21 & 1) == 0))
    {
      sub_1000F9A28(v8, type metadata accessor for MoveAndCopyMessages.CommandID);
LABEL_15:

      return 0;
    }

    v15 &= v15 - 1;
    v22 = *(*(a2 + 56) + v20);
    result = sub_1000F9A28(v8, type metadata accessor for MoveAndCopyMessages.CommandID);
    if ((v22 & 1) == 0)
    {
      goto LABEL_15;
    }
  }

  while (1)
  {
    v19 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v19 >= v16)
    {

      return 1;
    }

    v15 = *(v12 + 56 + 8 * v19);
    ++v18;
    if (v15)
    {
      v18 = v19;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1000F3F74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10000C9C0(&qword_1005D02A8, &unk_1004D3A30);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v9 = &v388 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v412 = &v388 - v11;
  __chkstk_darwin(v12);
  v14 = &v388 - v13;
  v15 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v411 = &v388 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v394 = &v388 - v19;
  __chkstk_darwin(v20);
  v398 = &v388 - v21;
  __chkstk_darwin(v22);
  v392 = &v388 - v23;
  v442 = type metadata accessor for MoveAndCopyMessages.CommandID();
  v24 = *(*(v442 - 8) + 64);
  __chkstk_darwin(v442);
  v389 = &v388 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v390 = &v388 - v27;
  __chkstk_darwin(v28);
  v426 = &v388 - v29;
  __chkstk_darwin(v30);
  v425 = &v388 - v31;
  __chkstk_darwin(v32);
  v424 = &v388 - v33;
  __chkstk_darwin(v34);
  v36 = &v388 - v35;
  __chkstk_darwin(v37);
  v39 = &v388 - v38;
  __chkstk_darwin(v40);
  v406 = &v388 - v41;
  __chkstk_darwin(v42);
  v405 = &v388 - v43;
  __chkstk_darwin(v44);
  v404 = &v388 - v45;
  __chkstk_darwin(v46);
  v416 = &v388 - v47;
  __chkstk_darwin(v48);
  v433 = &v388 - v49;
  __chkstk_darwin(v50);
  v393 = &v388 - v51;
  __chkstk_darwin(v52);
  v396 = &v388 - v53;
  __chkstk_darwin(v54);
  v403 = (&v388 - v55);
  __chkstk_darwin(v56);
  v410 = &v388 - v57;
  __chkstk_darwin(v58);
  v415 = &v388 - v59;
  __chkstk_darwin(v60);
  v414 = &v388 - v61;
  __chkstk_darwin(v62);
  v413 = &v388 - v63;
  __chkstk_darwin(v64);
  v435 = &v388 - v65;
  __chkstk_darwin(v66);
  v434 = &v388 - v67;
  __chkstk_darwin(v68);
  v402 = (&v388 - v69);
  __chkstk_darwin(v70);
  v409 = &v388 - v71;
  __chkstk_darwin(v72);
  v420 = &v388 - v73;
  __chkstk_darwin(v74);
  v419 = &v388 - v75;
  sub_10000C9C0(qword_1005D9010, &unk_1004D3CA0);
  v76 = swift_allocObject();
  *(v76 + 16) = xmmword_1004D3930;
  *(v76 + 32) = a1;
  v454 = v76;
  v418 = *(*a2 + 96);

  v77 = sub_1000EAE00();
  if (v77)
  {
    v78 = v77;
    v417 = a2;
    v438 = v6;
    v439 = v39;
    v440 = _swiftEmptySetSingleton;
    v399 = _swiftEmptySetSingleton;
    v427 = v14;
    v395 = a3;
    v431 = v36;
    v432 = v9;
    while (1)
    {
      if (*(a3 + 16))
      {

        v80 = sub_100063E70(v79);
        v81 = _swiftEmptySetSingleton;
        if (v82)
        {
          v81 = *(*(a3 + 56) + 8 * v80);
        }

        v83 = v81;
        if ((v81 & 0xC000000000000001) == 0)
        {
LABEL_9:
          v86 = 0;
          v88 = -1 << *(v83 + 32);
          v84 = (v83 + 56);
          v85 = ~v88;
          v89 = -v88;
          if (v89 < 64)
          {
            v90 = ~(-1 << v89);
          }

          else
          {
            v90 = -1;
          }

          v87 = v90 & *(v83 + 56);
          goto LABEL_13;
        }
      }

      else
      {
        v83 = _swiftEmptySetSingleton;
        if ((_swiftEmptySetSingleton & 0xC000000000000001) == 0)
        {
          goto LABEL_9;
        }
      }

      sub_1004A6594();
      sub_10000C9C0(&qword_1005CEF30, &unk_1004D1E00);
      sub_10000DF44(&qword_1005D0438, &qword_1005CEF30, &unk_1004D1E00);
      sub_1004A5DB4();
      v83 = v455;
      v84 = v456;
      v85 = v457;
      v86 = v458;
      v87 = v459;
LABEL_13:
      v400 = v85;
      v401 = v78;
      v91 = (v85 + 64) >> 6;
      v422 = v84;
      v423 = v83;
      v92 = v440;
      v421 = v91;
      while (1)
      {
        v430 = v92 & 0xC000000000000001;
        v93 = v92 < 0 ? v92 : v92 & 0xFFFFFFFFFFFFFF8;
        v440 = v92;
        v437 = v92 + 56;
        v94 = v87;
LABEL_18:
        if ((v83 & 0x8000000000000000) == 0)
        {
          break;
        }

        v99 = sub_1004A6604();
        if (!v99)
        {
          goto LABEL_295;
        }

        *&v443 = v99;
        sub_10000C9C0(&qword_1005CEF30, &unk_1004D1E00);
        swift_dynamicCast();
        v98 = v448;
        v97 = v86;
        v429 = v94;
        if (!v448)
        {
          goto LABEL_295;
        }

LABEL_27:
        v428 = v97;
        v100 = *(*v98 + 96);
        swift_beginAccess();
        v436 = v98;
        v441 = v100;
        v101 = v419;
        sub_1000F9948(v98 + v100, v419, type metadata accessor for MoveAndCopyMessages.CommandID);
        v103 = v417;
        v102 = v418;
        swift_beginAccess();
        v104 = v103 + v102;
        v105 = v420;
        sub_1000F9948(v104, v420, type metadata accessor for MoveAndCopyMessages.CommandID);
        v106 = sub_1000F2FCC(v101, v105);
        sub_1000F9A28(v105, type metadata accessor for MoveAndCopyMessages.CommandID);
        sub_1000F9A28(v101, type metadata accessor for MoveAndCopyMessages.CommandID);
        if (v106)
        {

          sub_100020D08();
          v386 = 1;
          goto LABEL_300;
        }

        if (!v430)
        {
          v109 = v440;
          v86 = v427;
          v107 = v436;
          if (!*(v440 + 16))
          {
            goto LABEL_100;
          }

          v110 = *(v440 + 40);
          sub_1004A6E94();
          v111 = v409;
          sub_1000F9948(v107 + v441, v409, type metadata accessor for MoveAndCopyMessages.CommandID);
          sub_1000F9948(v111, v402, type metadata accessor for MoveAndCopyMessages.CommandID);
          EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
          if (EnumCaseMultiPayload > 1)
          {
            if (EnumCaseMultiPayload == 2)
            {
              v408 = v93;
              v397 = *v402;
              v114 = *(v402 + 2);
              v115 = v402[2];
              sub_1004A6EB4(3uLL);
              sub_1004A6EB4(v114 | (v114 << 32));
              v116 = v115 + 64;
              v117 = 1 << *(v115 + 32);
              if (v117 < 64)
              {
                v118 = ~(-1 << v117);
              }

              else
              {
                v118 = -1;
              }

              v119 = v118 & *(v115 + 64);
              v120 = (v117 + 63) >> 6;
              v407 = v115;

              v121 = 0;
              v122 = 0;
              if (v119)
              {
                while (1)
                {
                  v123 = v122;
LABEL_44:
                  v124 = __clz(__rbit64(v119)) | (v123 << 6);
                  v125 = *(*(v407 + 48) + 4 * v124);
                  v126 = (*(v407 + 56) + 16 * v124);
                  v127 = *v126;
                  v86 = v126[1];
                  sub_100014CEC(*v126, v86);
                  if (v86 >> 60 == 15)
                  {
                    break;
                  }

                  v119 &= v119 - 1;
                  v445 = v450;
                  v446 = v451;
                  v447 = v452;
                  v443 = v448;
                  v444 = v449;
                  sub_1004A6EE4(v125);
                  sub_1004A4424();
                  sub_100014D40(v127, v86);
                  v121 ^= sub_1004A6F14();
                  v122 = v123;
                  if (!v119)
                  {
                    goto LABEL_41;
                  }
                }
              }

              else
              {
                while (1)
                {
LABEL_41:
                  v123 = v122 + 1;
                  if (__OFADD__(v122, 1))
                  {
                    goto LABEL_305;
                  }

                  if (v123 >= v120)
                  {
                    break;
                  }

                  v119 = *(v116 + 8 * v123);
                  ++v122;
                  if (v119)
                  {
                    goto LABEL_44;
                  }
                }
              }

              sub_1004A6EB4(v121);

              v86 = v427;
              goto LABEL_61;
            }

            sub_1004A6EB4(1uLL);
          }

          else
          {
            if (!EnumCaseMultiPayload)
            {
              v113 = v392;
              sub_100025FDC(v402, v392, &unk_1005D91B0, &unk_1004CF400);
              sub_1004A6EB4(0);
              sub_10000C9C0(&qword_1005CD7A8, &unk_1004CF5A0);
              sub_1000956A0();
              sub_1004A5564();
              sub_100025F40(v113, &unk_1005D91B0, &unk_1004CF400);
              v107 = v436;
              goto LABEL_62;
            }

            v408 = v93;
            v391 = *v402;
            v128 = *(v402 + 2);
            v129 = v402[2];
            sub_1004A6EB4(2uLL);
            sub_1004A6EB4(v128 | (v128 << 32));
            v130 = v129 + 64;
            v131 = 1 << *(v129 + 32);
            if (v131 < 64)
            {
              v132 = ~(-1 << v131);
            }

            else
            {
              v132 = -1;
            }

            v133 = v132 & *(v129 + 64);
            v134 = (v131 + 63) >> 6;
            v397 = v129;

            v135 = 0;
            v136 = 0;
            if (v133)
            {
              while (1)
              {
                v407 = v135;
                v137 = v136;
LABEL_56:
                v138 = __clz(__rbit64(v133));
                v133 &= v133 - 1;
                v139 = v138 | (v137 << 6);
                v140 = *(*(v397 + 48) + 4 * v139);
                v141 = (*(v397 + 56) + 24 * v139);
                v142 = *v141;
                v144 = *(v141 + 1);
                v143 = *(v141 + 2);
                sub_100014CEC(v144, v143);
                v445 = v450;
                v446 = v451;
                v447 = v452;
                v443 = v448;
                v444 = v449;
                sub_1004A6EE4(v140);
                sub_1004A6EB4(v142);
                sub_100014CEC(v144, v143);
                sub_1004A4424();
                sub_100014D40(v144, v143);
                sub_100014D40(v144, v143);
                v135 = sub_1004A6F14() ^ v407;
                v86 = v427;
                if (!v133)
                {
                  goto LABEL_52;
                }
              }
            }

            while (1)
            {
LABEL_52:
              v137 = v136 + 1;
              if (__OFADD__(v136, 1))
              {
                goto LABEL_303;
              }

              if (v137 >= v134)
              {
                break;
              }

              v133 = *(v130 + 8 * v137);
              ++v136;
              if (v133)
              {
                v407 = v135;
                v136 = v137;
                goto LABEL_56;
              }
            }

            sub_1004A6EB4(v135);

LABEL_61:
            v107 = v436;
            v109 = v440;
            v93 = v408;
          }

LABEL_62:
          sub_1000F9A28(v409, type metadata accessor for MoveAndCopyMessages.CommandID);
          v145 = sub_1004A6F14();
          v146 = -1 << *(v109 + 32);
          v147 = v145 & ~v146;
          if (((*(v437 + ((v147 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v147) & 1) == 0)
          {
            goto LABEL_100;
          }

          v148 = ~v146;
          while (2)
          {
            v149 = *(*(v109 + 48) + 8 * v147);
            v150 = *(*v149 + 96);
            swift_beginAccess();
            v151 = v434;
            sub_1000F9948(v149 + v150, v434, type metadata accessor for MoveAndCopyMessages.CommandID);
            v152 = v107 + v441;
            v153 = v435;
            sub_1000F9948(v152, v435, type metadata accessor for MoveAndCopyMessages.CommandID);
            v154 = v86 + *(v438 + 48);
            sub_1000F9948(v151, v86, type metadata accessor for MoveAndCopyMessages.CommandID);
            sub_1000F9948(v153, v154, type metadata accessor for MoveAndCopyMessages.CommandID);
            v155 = swift_getEnumCaseMultiPayload();
            if (v155 > 1)
            {
              if (v155 != 2)
              {
                sub_1000F9A28(v435, type metadata accessor for MoveAndCopyMessages.CommandID);
                sub_1000F9A28(v434, type metadata accessor for MoveAndCopyMessages.CommandID);
                v177 = swift_getEnumCaseMultiPayload();
                v107 = v436;
                if (v177 == 3)
                {
LABEL_175:
                  sub_1000F9A28(v86, type metadata accessor for MoveAndCopyMessages.CommandID);
LABEL_30:

                  v86 = v428;
                  v94 = v429;
                  v84 = v422;
                  v83 = v423;
                  v91 = v421;
                  goto LABEL_18;
                }

                goto LABEL_92;
              }

              v158 = v415;
              sub_1000F9948(v86, v415, type metadata accessor for MoveAndCopyMessages.CommandID);
              v159 = *v158;
              v160 = *(v158 + 16);
              if (swift_getEnumCaseMultiPayload() != 2)
              {
                goto LABEL_91;
              }

              v161 = *v154;
              v162 = *(v154 + 8);
              v163 = *(v154 + 16);
              if ((*(v158 + 8) | (*(v158 + 8) << 32)) != (v162 | (v162 << 32)))
              {
                goto LABEL_93;
              }

              v164 = *(v159 + 16);
              v107 = v436;
              if (v164 != *(v161 + 16))
              {
                goto LABEL_96;
              }

              if (!v164 || v159 == v161)
              {
LABEL_77:

                v167 = sub_1001151F4(v160, v163);
                goto LABEL_87;
              }

              v165 = (v159 + 32);
              v166 = (v161 + 32);
              while (*v165 == *v166)
              {
                ++v165;
                ++v166;
                if (!--v164)
                {
                  goto LABEL_77;
                }
              }

LABEL_96:
              sub_1000F9A28(v435, type metadata accessor for MoveAndCopyMessages.CommandID);
              sub_1000F9A28(v434, type metadata accessor for MoveAndCopyMessages.CommandID);

              v86 = v427;
LABEL_97:
              sub_1000F9A28(v86, type metadata accessor for MoveAndCopyMessages.CommandID);
            }

            else
            {
              if (!v155)
              {
                v156 = v413;
                sub_1000F9948(v86, v413, type metadata accessor for MoveAndCopyMessages.CommandID);
                v157 = swift_getEnumCaseMultiPayload();
                v107 = v436;
                if (v157)
                {
                  sub_1000F9A28(v435, type metadata accessor for MoveAndCopyMessages.CommandID);
                  sub_1000F9A28(v434, type metadata accessor for MoveAndCopyMessages.CommandID);
                  sub_100025F40(v156, &unk_1005D91B0, &unk_1004CF400);
                  goto LABEL_92;
                }

                v178 = v154;
                v179 = v156;
                v180 = v398;
                sub_100025FDC(v178, v398, &unk_1005D91B0, &unk_1004CF400);
                sub_100016D2C();
                v181 = sub_1004A7034();
                sub_100025F40(v180, &unk_1005D91B0, &unk_1004CF400);
                sub_1000F9A28(v435, type metadata accessor for MoveAndCopyMessages.CommandID);
                sub_1000F9A28(v434, type metadata accessor for MoveAndCopyMessages.CommandID);
                v107 = v436;
                sub_100025F40(v179, &unk_1005D91B0, &unk_1004CF400);
                sub_1000F9A28(v86, type metadata accessor for MoveAndCopyMessages.CommandID);
                v109 = v440;
                if (v181)
                {
                  goto LABEL_30;
                }

LABEL_99:
                v147 = (v147 + 1) & v148;
                if (((*(v437 + ((v147 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v147) & 1) == 0)
                {
                  goto LABEL_100;
                }

                continue;
              }

              v168 = v414;
              sub_1000F9948(v86, v414, type metadata accessor for MoveAndCopyMessages.CommandID);
              v169 = *v168;
              v170 = *(v168 + 16);
              if (swift_getEnumCaseMultiPayload() == 1)
              {
                v171 = *v154;
                v172 = *(v154 + 8);
                v173 = *(v154 + 16);
                if ((*(v168 + 8) | (*(v168 + 8) << 32)) == (v172 | (v172 << 32)))
                {
                  v174 = *(v169 + 16);
                  v107 = v436;
                  if (v174 != *(v171 + 16))
                  {
                    goto LABEL_96;
                  }

                  if (v174 && v169 != v171)
                  {
                    v175 = (v169 + 32);
                    v176 = (v171 + 32);
                    while (*v175 == *v176)
                    {
                      ++v175;
                      ++v176;
                      if (!--v174)
                      {
                        goto LABEL_86;
                      }
                    }

                    goto LABEL_96;
                  }

LABEL_86:

                  v167 = sub_100114864(v170, v173);
LABEL_87:
                  LODWORD(v407) = v167;

                  sub_1000F9A28(v435, type metadata accessor for MoveAndCopyMessages.CommandID);
                  sub_1000F9A28(v434, type metadata accessor for MoveAndCopyMessages.CommandID);

                  v86 = v427;
                  if (v407)
                  {
                    goto LABEL_175;
                  }

                  goto LABEL_97;
                }

LABEL_93:
                sub_1000F9A28(v435, type metadata accessor for MoveAndCopyMessages.CommandID);
                sub_1000F9A28(v434, type metadata accessor for MoveAndCopyMessages.CommandID);

                v86 = v427;
                v107 = v436;
                goto LABEL_97;
              }

LABEL_91:

              sub_1000F9A28(v435, type metadata accessor for MoveAndCopyMessages.CommandID);
              sub_1000F9A28(v434, type metadata accessor for MoveAndCopyMessages.CommandID);
              v107 = v436;
LABEL_92:
              sub_100025F40(v86, &qword_1005D02A8, &unk_1004D3A30);
            }

            break;
          }

          v109 = v440;
          goto LABEL_99;
        }

        v107 = v436;

        v108 = sub_1004A6614();

        v109 = v440;
        if (v108)
        {
          goto LABEL_30;
        }

LABEL_100:

        sub_1004A5BF4();
        if (*((v454 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v454 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v256 = *((v454 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_1004A5C44();
        }

        sub_1004A5C84();
        if (v430)
        {

          v182 = sub_1004A65E4();

          v91 = v421;
          if (v182)
          {

            *&v443 = v182;
            sub_10000C9C0(&qword_1005CEF30, &unk_1004D1E00);
            swift_dynamicCast();

            v86 = v428;
            v94 = v429;
            v84 = v422;
            v83 = v423;
            goto LABEL_18;
          }

          v339 = sub_1004A65D4();
          if (__OFADD__(v339, 1))
          {
            goto LABEL_312;
          }

          v86 = sub_100089C5C(v93, v339 + 1);
          v453 = v86;
          v340 = *(v86 + 16);
          if (*(v86 + 24) <= v340)
          {
            sub_10008B4AC(v340 + 1);
            v86 = v453;
          }

          v341 = *(v86 + 40);
          sub_1004A6E94();
          v342 = v390;
          sub_1000F9948(v107 + v441, v390, type metadata accessor for MoveAndCopyMessages.CommandID);
          sub_1000F9948(v342, v389, type metadata accessor for MoveAndCopyMessages.CommandID);
          v343 = swift_getEnumCaseMultiPayload();
          v399 = v86;
          if (v343 > 1)
          {
            if (v343 == 2)
            {
              v437 = *v389;
              v345 = *(v389 + 8);
              v346 = *(v389 + 16);
              sub_1004A6EB4(3uLL);
              sub_1004A6EB4(v345 | (v345 << 32));
              v347 = v346 + 64;
              v348 = 1 << *(v346 + 32);
              if (v348 < 64)
              {
                v349 = ~(-1 << v348);
              }

              else
              {
                v349 = -1;
              }

              v350 = v349 & *(v346 + 64);
              v351 = (v348 + 63) >> 6;

              v441 = v346;

              v352 = 0;
              v353 = 0;
              if (v350)
              {
                while (1)
                {
                  v354 = v353;
LABEL_267:
                  v355 = __clz(__rbit64(v350)) | (v354 << 6);
                  v356 = *(*(v441 + 48) + 4 * v355);
                  v357 = (*(v441 + 56) + 16 * v355);
                  v358 = *v357;
                  v86 = v357[1];
                  sub_100014CEC(*v357, v86);
                  if (v86 >> 60 == 15)
                  {
                    break;
                  }

                  v350 &= v350 - 1;
                  v445 = v450;
                  v446 = v451;
                  v447 = v452;
                  v443 = v448;
                  v444 = v449;
                  sub_1004A6EE4(v356);
                  sub_1004A4424();
                  sub_100014D40(v358, v86);
                  v352 ^= sub_1004A6F14();
                  v353 = v354;
                  if (!v350)
                  {
                    goto LABEL_264;
                  }
                }
              }

              else
              {
                while (1)
                {
LABEL_264:
                  v354 = v353 + 1;
                  if (__OFADD__(v353, 1))
                  {
                    goto LABEL_310;
                  }

                  if (v354 >= v351)
                  {
                    break;
                  }

                  v350 = *(v347 + 8 * v354);
                  ++v353;
                  if (v350)
                  {
                    goto LABEL_267;
                  }
                }
              }

              sub_1004A6EB4(v352);

              v91 = v421;
              v107 = v436;
              v86 = v399;
            }

            else
            {
              sub_1004A6EB4(1uLL);
            }
          }

          else
          {
            if (v343)
            {
              v430 = *v389;
              v359 = *(v389 + 8);
              v360 = *(v389 + 16);
              sub_1004A6EB4(2uLL);
              sub_1004A6EB4(v359 | (v359 << 32));
              v361 = v360 + 64;
              v362 = 1 << *(v360 + 32);
              if (v362 < 64)
              {
                v363 = ~(-1 << v362);
              }

              else
              {
                v363 = -1;
              }

              v364 = v363 & *(v360 + 64);
              v365 = (v362 + 63) >> 6;

              v437 = v360;

              v366 = 0;
              for (i = 0; v364; v86 = v399)
              {
                v368 = i;
LABEL_279:
                v369 = __clz(__rbit64(v364));
                v364 &= v364 - 1;
                v370 = v369 | (v368 << 6);
                v371 = *(*(v437 + 48) + 4 * v370);
                v372 = (*(v437 + 56) + 24 * v370);
                v441 = *v372;
                v374 = *(v372 + 1);
                v373 = *(v372 + 2);
                sub_100014CEC(v374, v373);
                v445 = v450;
                v446 = v451;
                v447 = v452;
                v443 = v448;
                v444 = v449;
                sub_1004A6EE4(v371);
                sub_1004A6EB4(v441);
                sub_100014CEC(v374, v373);
                sub_1004A4424();
                sub_100014D40(v374, v373);
                sub_100014D40(v374, v373);
                v366 ^= sub_1004A6F14();
              }

              while (1)
              {
                v368 = i + 1;
                if (__OFADD__(i, 1))
                {
                  goto LABEL_309;
                }

                if (v368 >= v365)
                {

                  sub_1004A6EB4(v366);

                  v91 = v421;
                  v107 = v436;
                  goto LABEL_284;
                }

                v364 = *(v361 + 8 * v368);
                ++i;
                if (v364)
                {
                  i = v368;
                  goto LABEL_279;
                }
              }
            }

            v344 = v392;
            sub_100025FDC(v389, v392, &unk_1005D91B0, &unk_1004CF400);
            sub_1004A6EB4(0);

            sub_10000C9C0(&qword_1005CD7A8, &unk_1004CF5A0);
            sub_1000956A0();
            sub_1004A5564();
            v107 = v436;
            sub_100025F40(v344, &unk_1005D91B0, &unk_1004CF400);
            v91 = v421;
          }

LABEL_284:
          sub_1000F9A28(v390, type metadata accessor for MoveAndCopyMessages.CommandID);
          v375 = sub_1004A6F14();
          v376 = v86 + 56;
          v377 = -1 << *(v86 + 32);
          v378 = v375 & ~v377;
          v379 = v378 >> 6;
          if (((-1 << v378) & ~*(v86 + 56 + 8 * (v378 >> 6))) == 0)
          {
            v381 = 0;
            v382 = (63 - v377) >> 6;
            v86 = v428;
            while (++v379 != v382 || (v381 & 1) == 0)
            {
              v383 = v379 == v382;
              if (v379 == v382)
              {
                v379 = 0;
              }

              v381 |= v383;
              v384 = *(v376 + 8 * v379);
              if (v384 != -1)
              {
                v380 = __clz(__rbit64(~v384)) + (v379 << 6);
                goto LABEL_294;
              }
            }

            goto LABEL_311;
          }

          v380 = __clz(__rbit64((-1 << v378) & ~*(v86 + 56 + 8 * (v378 >> 6)))) | v378 & 0x7FFFFFFFFFFFFFC0;
          v86 = v428;
LABEL_294:
          *(v376 + ((v380 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v380;
          v385 = v399;
          *(v399[6] + 8 * v380) = v107;
          ++v385[2];

          v92 = v385;
          v84 = v422;
          v83 = v423;
          v87 = v429;
        }

        else
        {
          v183 = *(v109 + 40);
          sub_1004A6E94();
          v184 = v410;
          sub_1000F9948(v107 + v441, v410, type metadata accessor for MoveAndCopyMessages.CommandID);
          sub_1000F9948(v184, v403, type metadata accessor for MoveAndCopyMessages.CommandID);
          v185 = swift_getEnumCaseMultiPayload();
          v408 = v93;
          if (v185 <= 1)
          {
            if (v185)
            {
              v391 = *v403;
              v201 = *(v403 + 2);
              v202 = v403[2];
              sub_1004A6EB4(2uLL);
              sub_1004A6EB4(v201 | (v201 << 32));
              v203 = v202 + 64;
              v204 = 1 << *(v202 + 32);
              if (v204 < 64)
              {
                v205 = ~(-1 << v204);
              }

              else
              {
                v205 = -1;
              }

              v206 = v205 & *(v202 + 64);
              v207 = (v204 + 63) >> 6;
              v397 = v202;

              v208 = 0;
              v209 = 0;
              if (v206)
              {
                while (1)
                {
                  v407 = v208;
                  v210 = v209;
LABEL_129:
                  v211 = __clz(__rbit64(v206));
                  v206 &= v206 - 1;
                  v212 = v211 | (v210 << 6);
                  v213 = *(*(v397 + 48) + 4 * v212);
                  v214 = (*(v397 + 56) + 24 * v212);
                  v215 = *v214;
                  v86 = *(v214 + 1);
                  v216 = *(v214 + 2);
                  sub_100014CEC(v86, v216);
                  v445 = v450;
                  v446 = v451;
                  v447 = v452;
                  v443 = v448;
                  v444 = v449;
                  sub_1004A6EE4(v213);
                  sub_1004A6EB4(v215);
                  sub_100014CEC(v86, v216);
                  sub_1004A4424();
                  sub_100014D40(v86, v216);
                  sub_100014D40(v86, v216);
                  v208 = sub_1004A6F14() ^ v407;
                  if (!v206)
                  {
                    goto LABEL_125;
                  }
                }
              }

              while (1)
              {
LABEL_125:
                v210 = v209 + 1;
                if (__OFADD__(v209, 1))
                {
                  goto LABEL_302;
                }

                if (v210 >= v207)
                {
                  break;
                }

                v206 = *(v203 + 8 * v210);
                ++v209;
                if (v206)
                {
                  v407 = v208;
                  v209 = v210;
                  goto LABEL_129;
                }
              }

              sub_1004A6EB4(v208);

              goto LABEL_134;
            }

            v186 = v392;
            sub_100025FDC(v403, v392, &unk_1005D91B0, &unk_1004CF400);
            sub_1004A6EB4(0);
            sub_10000C9C0(&qword_1005CD7A8, &unk_1004CF5A0);
            sub_1000956A0();
            sub_1004A5564();
            sub_100025F40(v186, &unk_1005D91B0, &unk_1004CF400);
LABEL_135:
            v217 = v431;
            v86 = v432;
            v107 = v436;
            goto LABEL_136;
          }

          if (v185 == 2)
          {
            v397 = *v403;
            v187 = *(v403 + 2);
            v188 = v403[2];
            sub_1004A6EB4(3uLL);
            sub_1004A6EB4(v187 | (v187 << 32));
            v189 = v188 + 64;
            v190 = 1 << *(v188 + 32);
            if (v190 < 64)
            {
              v191 = ~(-1 << v190);
            }

            else
            {
              v191 = -1;
            }

            v192 = v191 & *(v188 + 64);
            v193 = (v190 + 63) >> 6;
            v407 = v188;

            v194 = 0;
            v195 = 0;
            if (v192)
            {
              while (1)
              {
                v196 = v195;
LABEL_117:
                v197 = __clz(__rbit64(v192)) | (v196 << 6);
                v198 = *(*(v407 + 48) + 4 * v197);
                v199 = (*(v407 + 56) + 16 * v197);
                v200 = *v199;
                v86 = v199[1];
                sub_100014CEC(*v199, v86);
                if (v86 >> 60 == 15)
                {
                  break;
                }

                v192 &= v192 - 1;
                v445 = v450;
                v446 = v451;
                v447 = v452;
                v443 = v448;
                v444 = v449;
                sub_1004A6EE4(v198);
                sub_1004A4424();
                sub_100014D40(v200, v86);
                v194 ^= sub_1004A6F14();
                v195 = v196;
                if (!v192)
                {
                  goto LABEL_114;
                }
              }
            }

            else
            {
              while (1)
              {
LABEL_114:
                v196 = v195 + 1;
                if (__OFADD__(v195, 1))
                {
                  goto LABEL_304;
                }

                if (v196 >= v193)
                {
                  break;
                }

                v192 = *(v189 + 8 * v196);
                ++v195;
                if (v192)
                {
                  goto LABEL_117;
                }
              }
            }

            sub_1004A6EB4(v194);

LABEL_134:

            goto LABEL_135;
          }

          sub_1004A6EB4(1uLL);
          v217 = v431;
          v86 = v432;
LABEL_136:
          sub_1000F9A28(v410, type metadata accessor for MoveAndCopyMessages.CommandID);
          v218 = sub_1004A6F14();
          v219 = ~(-1 << *(v440 + 32));
          v220 = v218 & v219;
          while (2)
          {
            if ((*(v437 + ((v220 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v220))
            {
              v221 = *(*(v440 + 48) + 8 * v220);
              v222 = *(*v221 + 96);
              swift_beginAccess();
              v223 = v439;
              sub_1000F9948(v221 + v222, v439, type metadata accessor for MoveAndCopyMessages.CommandID);
              sub_1000F9948(v107 + v441, v217, type metadata accessor for MoveAndCopyMessages.CommandID);
              v224 = v86 + *(v438 + 48);
              sub_1000F9948(v223, v86, type metadata accessor for MoveAndCopyMessages.CommandID);
              sub_1000F9948(v217, v224, type metadata accessor for MoveAndCopyMessages.CommandID);
              v225 = swift_getEnumCaseMultiPayload();
              if (v225 > 1)
              {
                if (v225 != 2)
                {
                  sub_1000F9A28(v217, type metadata accessor for MoveAndCopyMessages.CommandID);
                  sub_1000F9A28(v439, type metadata accessor for MoveAndCopyMessages.CommandID);
                  if (swift_getEnumCaseMultiPayload() == 3)
                  {
                    goto LABEL_173;
                  }

                  goto LABEL_138;
                }

                v227 = v86;
                v228 = v426;
                sub_1000F9948(v227, v426, type metadata accessor for MoveAndCopyMessages.CommandID);
                v229 = *v228;
                v230 = *(v228 + 16);
                if (swift_getEnumCaseMultiPayload() != 2)
                {

                  v217 = v431;
                  sub_1000F9A28(v431, type metadata accessor for MoveAndCopyMessages.CommandID);
                  sub_1000F9A28(v439, type metadata accessor for MoveAndCopyMessages.CommandID);
                  v86 = v432;
                  goto LABEL_138;
                }

                v231 = *(v228 + 8);
                v232 = *v224;
                v233 = *(v224 + 8);
                v234 = *(v224 + 16);
                if ((v231 | (v231 << 32)) == (v233 | (v233 << 32)))
                {
                  v235 = *(v229 + 16);
                  if (v235 == *(v232 + 16))
                  {
                    if (!v235 || v229 == v232)
                    {
LABEL_154:

                      LODWORD(v407) = sub_1001151F4(v230, v234);

                      v238 = v431;
                      sub_1000F9A28(v431, type metadata accessor for MoveAndCopyMessages.CommandID);
                      sub_1000F9A28(v439, type metadata accessor for MoveAndCopyMessages.CommandID);

                      v217 = v238;

                      v86 = v432;
                      if (v407)
                      {
                        goto LABEL_173;
                      }

                      goto LABEL_170;
                    }

                    v236 = (v229 + 32);
                    v237 = (v232 + 32);
                    while (*v236 == *v237)
                    {
                      ++v236;
                      ++v237;
                      if (!--v235)
                      {
                        goto LABEL_154;
                      }
                    }
                  }
                }

                v251 = v431;
                sub_1000F9A28(v431, type metadata accessor for MoveAndCopyMessages.CommandID);
                sub_1000F9A28(v439, type metadata accessor for MoveAndCopyMessages.CommandID);

                v217 = v251;

                v86 = v432;
LABEL_170:
                sub_1000F9A28(v86, type metadata accessor for MoveAndCopyMessages.CommandID);
                goto LABEL_139;
              }

              if (!v225)
              {
                v226 = v424;
                sub_1000F9948(v86, v424, type metadata accessor for MoveAndCopyMessages.CommandID);
                if (swift_getEnumCaseMultiPayload())
                {
                  sub_1000F9A28(v217, type metadata accessor for MoveAndCopyMessages.CommandID);
                  sub_1000F9A28(v439, type metadata accessor for MoveAndCopyMessages.CommandID);
                  sub_100025F40(v226, &unk_1005D91B0, &unk_1004CF400);
LABEL_138:
                  sub_100025F40(v86, &qword_1005D02A8, &unk_1004D3A30);
                  goto LABEL_139;
                }

                v252 = v224;
                v253 = v226;
                v254 = v411;
                sub_100025FDC(v252, v411, &unk_1005D91B0, &unk_1004CF400);
                sub_100016D2C();
                v255 = sub_1004A7034();
                sub_100025F40(v254, &unk_1005D91B0, &unk_1004CF400);
                sub_1000F9A28(v217, type metadata accessor for MoveAndCopyMessages.CommandID);
                sub_1000F9A28(v439, type metadata accessor for MoveAndCopyMessages.CommandID);
                v107 = v436;
                sub_100025F40(v253, &unk_1005D91B0, &unk_1004CF400);
                sub_1000F9A28(v86, type metadata accessor for MoveAndCopyMessages.CommandID);
                if (v255)
                {
                  goto LABEL_174;
                }

LABEL_139:
                v220 = (v220 + 1) & v219;
                continue;
              }

              v239 = v86;
              v240 = v425;
              sub_1000F9948(v239, v425, type metadata accessor for MoveAndCopyMessages.CommandID);
              v241 = *v240;
              v242 = *(v240 + 16);
              if (swift_getEnumCaseMultiPayload() != 1)
              {

                v217 = v431;
                sub_1000F9A28(v431, type metadata accessor for MoveAndCopyMessages.CommandID);
                sub_1000F9A28(v439, type metadata accessor for MoveAndCopyMessages.CommandID);
                v86 = v432;
                v107 = v436;
                goto LABEL_138;
              }

              v243 = *(v240 + 8);
              v244 = *v224;
              v245 = *(v224 + 8);
              v246 = *(v224 + 16);
              if ((v243 | (v243 << 32)) != (v245 | (v245 << 32)) || (v247 = *(v241 + 16), v247 != *(v244 + 16)))
              {
LABEL_169:
                v217 = v431;
                sub_1000F9A28(v431, type metadata accessor for MoveAndCopyMessages.CommandID);
                sub_1000F9A28(v439, type metadata accessor for MoveAndCopyMessages.CommandID);

                v86 = v432;
                v107 = v436;
                goto LABEL_170;
              }

              if (v247 && v241 != v244)
              {
                v248 = (v241 + 32);
                v249 = (v244 + 32);
                while (*v248 == *v249)
                {
                  ++v248;
                  ++v249;
                  if (!--v247)
                  {
                    goto LABEL_164;
                  }
                }

                goto LABEL_169;
              }

LABEL_164:

              v250 = sub_100114864(v242, v246);

              v217 = v431;
              sub_1000F9A28(v431, type metadata accessor for MoveAndCopyMessages.CommandID);
              sub_1000F9A28(v439, type metadata accessor for MoveAndCopyMessages.CommandID);

              v86 = v432;
              v107 = v436;
              if ((v250 & 1) == 0)
              {
                goto LABEL_170;
              }

LABEL_173:
              sub_1000F9A28(v86, type metadata accessor for MoveAndCopyMessages.CommandID);
LABEL_174:

              v86 = v428;
              v94 = v429;
              v84 = v422;
              v83 = v423;
              v91 = v421;
              v93 = v408;
              goto LABEL_18;
            }

            break;
          }

          v257 = v399;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v453 = v257;
          v259 = v257[2];
          v260 = v257[3];

          if (v260 <= v259)
          {
            v86 = v412;
            v261 = v416;
            v262 = v259 + 1;
            if (isUniquelyReferenced_nonNull_native)
            {
              sub_10008B4AC(v262);
            }

            else
            {
              sub_1000905EC(v262);
            }

            v263 = v453;
            v264 = *(v453 + 40);
            sub_1004A6E94();
            v265 = v396;
            sub_1000F9948(v107 + v441, v396, type metadata accessor for MoveAndCopyMessages.CommandID);
            sub_1000F9948(v265, v393, type metadata accessor for MoveAndCopyMessages.CommandID);
            v266 = swift_getEnumCaseMultiPayload();
            if (v266 > 1)
            {
              if (v266 == 2)
              {
                v430 = v263;
                v437 = *v393;
                v268 = *(v393 + 8);
                v269 = *(v393 + 16);
                sub_1004A6EB4(3uLL);
                sub_1004A6EB4(v268 | (v268 << 32));
                v270 = v269 + 64;
                v271 = 1 << *(v269 + 32);
                if (v271 < 64)
                {
                  v272 = ~(-1 << v271);
                }

                else
                {
                  v272 = -1;
                }

                v273 = v272 & *(v269 + 64);
                v274 = (v271 + 63) >> 6;
                v440 = v269;

                v275 = 0;
                v276 = 0;
                if (v273)
                {
                  while (1)
                  {
                    v277 = v276;
LABEL_194:
                    v278 = __clz(__rbit64(v273)) | (v277 << 6);
                    v86 = *(*(v440 + 48) + 4 * v278);
                    v279 = (*(v440 + 56) + 16 * v278);
                    v280 = *v279;
                    v281 = v279[1];
                    sub_100014CEC(*v279, v281);
                    if (v281 >> 60 == 15)
                    {
                      break;
                    }

                    v273 &= v273 - 1;
                    v445 = v450;
                    v446 = v451;
                    v447 = v452;
                    v443 = v448;
                    v444 = v449;
                    sub_1004A6EE4(v86);
                    sub_1004A4424();
                    sub_100014D40(v280, v281);
                    v275 ^= sub_1004A6F14();
                    v276 = v277;
                    if (!v273)
                    {
                      goto LABEL_191;
                    }
                  }
                }

                else
                {
                  while (1)
                  {
LABEL_191:
                    v277 = v276 + 1;
                    if (__OFADD__(v276, 1))
                    {
                      goto LABEL_307;
                    }

                    if (v277 >= v274)
                    {
                      break;
                    }

                    v273 = *(v270 + 8 * v277);
                    ++v276;
                    if (v273)
                    {
                      goto LABEL_194;
                    }
                  }
                }

                sub_1004A6EB4(v275);

                v86 = v412;
                goto LABEL_211;
              }

              sub_1004A6EB4(1uLL);
            }

            else
            {
              if (!v266)
              {
                v267 = v392;
                sub_100025FDC(v393, v392, &unk_1005D91B0, &unk_1004CF400);
                sub_1004A6EB4(0);
                sub_10000C9C0(&qword_1005CD7A8, &unk_1004CF5A0);
                sub_1000956A0();
                sub_1004A5564();
                sub_100025F40(v267, &unk_1005D91B0, &unk_1004CF400);
                v107 = v436;
                goto LABEL_212;
              }

              v430 = v263;
              v408 = *v393;
              v282 = *(v393 + 8);
              v283 = *(v393 + 16);
              sub_1004A6EB4(2uLL);
              sub_1004A6EB4(v282 | (v282 << 32));
              v284 = v283 + 64;
              v285 = 1 << *(v283 + 32);
              if (v285 < 64)
              {
                v286 = ~(-1 << v285);
              }

              else
              {
                v286 = -1;
              }

              v287 = v286 & *(v283 + 64);
              v288 = (v285 + 63) >> 6;
              v437 = v283;

              v289 = 0;
              v290 = 0;
              if (v287)
              {
                while (1)
                {
                  v440 = v289;
                  v291 = v290;
LABEL_206:
                  v292 = __clz(__rbit64(v287));
                  v287 &= v287 - 1;
                  v293 = v292 | (v291 << 6);
                  v294 = *(*(v437 + 48) + 4 * v293);
                  v295 = (*(v437 + 56) + 24 * v293);
                  v296 = *v295;
                  v298 = *(v295 + 1);
                  v297 = *(v295 + 2);
                  sub_100014CEC(v298, v297);
                  v445 = v450;
                  v446 = v451;
                  v447 = v452;
                  v443 = v448;
                  v444 = v449;
                  sub_1004A6EE4(v294);
                  sub_1004A6EB4(v296);
                  sub_100014CEC(v298, v297);
                  sub_1004A4424();
                  sub_100014D40(v298, v297);
                  sub_100014D40(v298, v297);
                  v289 = sub_1004A6F14() ^ v440;
                  v86 = v412;
                  if (!v287)
                  {
                    goto LABEL_202;
                  }
                }
              }

              while (1)
              {
LABEL_202:
                v291 = v290 + 1;
                if (__OFADD__(v290, 1))
                {
                  goto LABEL_306;
                }

                if (v291 >= v288)
                {
                  break;
                }

                v287 = *(v284 + 8 * v291);
                ++v290;
                if (v287)
                {
                  v440 = v289;
                  v290 = v291;
                  goto LABEL_206;
                }
              }

              sub_1004A6EB4(v289);

LABEL_211:
              v261 = v416;
              v107 = v436;
              v263 = v430;
            }

LABEL_212:
            sub_1000F9A28(v396, type metadata accessor for MoveAndCopyMessages.CommandID);
            v299 = sub_1004A6F14();
            v300 = -1 << *(v263 + 32);
            v220 = v299 & ~v300;
            v440 = v263 + 56;
            if (((*(v263 + 56 + ((v220 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v220) & 1) == 0)
            {
              goto LABEL_250;
            }

            v437 = ~v300;
            v430 = sub_10000C9C0(&qword_1005CEF30, &unk_1004D1E00);
            while (2)
            {
              v301 = *(*(v263 + 48) + 8 * v220);
              v302 = *(*v301 + 96);
              swift_beginAccess();
              v303 = v301 + v302;
              v304 = v433;
              sub_1000F9948(v303, v433, type metadata accessor for MoveAndCopyMessages.CommandID);
              sub_1000F9948(v107 + v441, v261, type metadata accessor for MoveAndCopyMessages.CommandID);
              v305 = v86 + *(v438 + 48);
              sub_1000F9948(v304, v86, type metadata accessor for MoveAndCopyMessages.CommandID);
              sub_1000F9948(v261, v305, type metadata accessor for MoveAndCopyMessages.CommandID);
              v306 = swift_getEnumCaseMultiPayload();
              if (v306 <= 1)
              {
                if (!v306)
                {
                  v307 = v404;
                  sub_1000F9948(v86, v404, type metadata accessor for MoveAndCopyMessages.CommandID);
                  if (swift_getEnumCaseMultiPayload())
                  {
                    sub_1000F9A28(v261, type metadata accessor for MoveAndCopyMessages.CommandID);
                    sub_1000F9A28(v433, type metadata accessor for MoveAndCopyMessages.CommandID);
                    sub_100025F40(v307, &unk_1005D91B0, &unk_1004CF400);
                    goto LABEL_215;
                  }

                  v330 = v307;
                  v331 = v394;
                  sub_100025FDC(v305, v394, &unk_1005D91B0, &unk_1004CF400);
                  sub_100016D2C();
                  v332 = sub_1004A7034();
                  sub_100025F40(v331, &unk_1005D91B0, &unk_1004CF400);
                  sub_1000F9A28(v261, type metadata accessor for MoveAndCopyMessages.CommandID);
                  sub_1000F9A28(v433, type metadata accessor for MoveAndCopyMessages.CommandID);
                  v333 = v330;
                  v107 = v436;
                  sub_100025F40(v333, &unk_1005D91B0, &unk_1004CF400);
                  if (v332)
                  {
                    goto LABEL_313;
                  }

LABEL_249:
                  sub_1000F9A28(v86, type metadata accessor for MoveAndCopyMessages.CommandID);
LABEL_216:
                  v220 = (v220 + 1) & v437;
                  if (((*(v440 + ((v220 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v220) & 1) == 0)
                  {
                    goto LABEL_250;
                  }

                  continue;
                }

                v318 = v405;
                sub_1000F9948(v86, v405, type metadata accessor for MoveAndCopyMessages.CommandID);
                v319 = *v318;
                v320 = *(v318 + 16);
                if (swift_getEnumCaseMultiPayload() == 1)
                {
                  v321 = *v305;
                  v322 = *(v305 + 8);
                  v323 = *(v305 + 16);
                  if ((*(v318 + 8) | (*(v318 + 8) << 32)) == (v322 | (v322 << 32)))
                  {
                    v324 = *(v319 + 16);
                    if (v324 != *(v321 + 16))
                    {
                      goto LABEL_242;
                    }

                    if (v324 && v319 != v321)
                    {
                      v325 = (v319 + 32);
                      v326 = (v321 + 32);
                      while (*v325 == *v326)
                      {
                        ++v325;
                        ++v326;
                        if (!--v324)
                        {
                          goto LABEL_239;
                        }
                      }

                      goto LABEL_242;
                    }

LABEL_239:

                    v317 = sub_100114864(v320, v323);
LABEL_240:
                    v327 = v317;

                    v328 = v416;
                    sub_1000F9A28(v416, type metadata accessor for MoveAndCopyMessages.CommandID);
                    sub_1000F9A28(v433, type metadata accessor for MoveAndCopyMessages.CommandID);

                    v261 = v328;
                    v107 = v436;

                    v86 = v412;
                    if (v327)
                    {
                      goto LABEL_313;
                    }

                    goto LABEL_249;
                  }

                  v334 = v416;
                  sub_1000F9A28(v416, type metadata accessor for MoveAndCopyMessages.CommandID);
                  sub_1000F9A28(v433, type metadata accessor for MoveAndCopyMessages.CommandID);

                  v261 = v334;
                  goto LABEL_248;
                }

                goto LABEL_243;
              }

              break;
            }

            if (v306 == 2)
            {
              v308 = v406;
              sub_1000F9948(v86, v406, type metadata accessor for MoveAndCopyMessages.CommandID);
              v309 = *v308;
              v310 = *(v308 + 16);
              if (swift_getEnumCaseMultiPayload() == 2)
              {
                v311 = *v305;
                v312 = *(v305 + 8);
                v313 = *(v305 + 16);
                if ((*(v308 + 8) | (*(v308 + 8) << 32)) != (v312 | (v312 << 32)))
                {
                  goto LABEL_242;
                }

                v314 = *(v309 + 16);
                if (v314 != *(v311 + 16))
                {
                  goto LABEL_242;
                }

                if (!v314 || v309 == v311)
                {
LABEL_230:

                  v317 = sub_1001151F4(v310, v313);
                  goto LABEL_240;
                }

                v315 = (v309 + 32);
                v316 = (v311 + 32);
                while (*v315 == *v316)
                {
                  ++v315;
                  ++v316;
                  if (!--v314)
                  {
                    goto LABEL_230;
                  }
                }

LABEL_242:
                v329 = v416;
                sub_1000F9A28(v416, type metadata accessor for MoveAndCopyMessages.CommandID);
                sub_1000F9A28(v433, type metadata accessor for MoveAndCopyMessages.CommandID);

                v261 = v329;
                v107 = v436;
LABEL_248:

                v86 = v412;
                goto LABEL_249;
              }

LABEL_243:

              v261 = v416;
              sub_1000F9A28(v416, type metadata accessor for MoveAndCopyMessages.CommandID);
              sub_1000F9A28(v433, type metadata accessor for MoveAndCopyMessages.CommandID);
            }

            else
            {
              sub_1000F9A28(v261, type metadata accessor for MoveAndCopyMessages.CommandID);
              sub_1000F9A28(v433, type metadata accessor for MoveAndCopyMessages.CommandID);
              if (swift_getEnumCaseMultiPayload() == 3)
              {
                goto LABEL_313;
              }
            }

LABEL_215:
            sub_100025F40(v86, &qword_1005D02A8, &unk_1004D3A30);
            goto LABEL_216;
          }

          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_10008EFFC();
          }

LABEL_250:
          v335 = v453;
          *(v453 + ((v220 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) |= 1 << v220;
          *(v335[6] + 8 * v220) = v107;
          v336 = v335[2];
          v337 = __OFADD__(v336, 1);
          v338 = v336 + 1;
          if (v337)
          {
            goto LABEL_308;
          }

          v335[2] = v338;

          v399 = v335;
          v92 = v335;
          v84 = v422;
          v83 = v423;
          v91 = v421;
          v86 = v428;
          v87 = v429;
        }
      }

      v95 = v86;
      v96 = v94;
      v97 = v86;
      if (v94)
      {
LABEL_23:
        v429 = (v96 - 1) & v96;
        v98 = *(*(v83 + 48) + ((v97 << 9) | (8 * __clz(__rbit64(v96)))));

        if (!v98)
        {
          goto LABEL_295;
        }

        goto LABEL_27;
      }

      while (1)
      {
        v97 = v95 + 1;
        if (__OFADD__(v95, 1))
        {
          __break(1u);
LABEL_302:
          __break(1u);
LABEL_303:
          __break(1u);
LABEL_304:
          __break(1u);
LABEL_305:
          __break(1u);
          __break(1u);
          __break(1u);
LABEL_306:
          __break(1u);
          __break(1u);
          __break(1u);
LABEL_307:
          __break(1u);
          __break(1u);
          __break(1u);
LABEL_308:
          __break(1u);
LABEL_309:
          __break(1u);
LABEL_310:
          __break(1u);
LABEL_311:
          __break(1u);
LABEL_312:
          __break(1u);
LABEL_313:
          sub_1000F9A28(v86, type metadata accessor for MoveAndCopyMessages.CommandID);
          result = sub_1004A6E14();
          __break(1u);
          return result;
        }

        if (v97 >= v91)
        {
          break;
        }

        v96 = v84[v97];
        ++v95;
        if (v96)
        {
          goto LABEL_23;
        }
      }

LABEL_295:
      sub_100020D08();

      v78 = sub_1000EAE00();
      a3 = v395;
      if (!v78)
      {
        goto LABEL_299;
      }
    }
  }

  v440 = _swiftEmptySetSingleton;
LABEL_299:

  v386 = 0;
LABEL_300:

  return v386;
}

uint64_t sub_1000F6ED8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MoveAndCopyMessages.CommandID();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v7 = &v20[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1000F9948(a1, v7, type metadata accessor for MoveAndCopyMessages.CommandID);
  v8 = sub_10000C9C0(&qword_1005CEF30, &unk_1004D1E00);
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  v11 = swift_allocObject();
  sub_1000F9A88(v7, v11 + *(*v11 + 96), type metadata accessor for MoveAndCopyMessages.CommandID);
  if (*(a2 + 16) && (v12 = sub_100063E70(v11), (v13 & 1) != 0))
  {
    v14 = *(*(a2 + 56) + 8 * v12);
  }

  else
  {
    v14 = _swiftEmptySetSingleton;
  }

  __chkstk_darwin(v15);
  *&v20[-16] = v4;
  *&v20[-8] = sub_1000F7764(&qword_1005CF830);
  KeyPath = swift_getKeyPath();

  v17 = sub_1000F342C(v14, KeyPath);

  v18 = sub_1000CE800(v17);

  return v18;
}

void *sub_1000F70B8(uint64_t a1)
{
  v2 = type metadata accessor for MoveAndCopyMessages.CommandID();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2 - 8);
  v7 = v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = v23 - v8;
  v10 = sub_1000F3B10(_swiftEmptyArrayStorage);
  v12 = v11;
  v14 = v13;
  sub_100163608(_swiftEmptyArrayStorage);
  v25 = v10;
  v15 = *(a1 + 16);
  if (v15)
  {
    v23[0] = v14;
    v23[1] = v12;
    v16 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v17 = *(v3 + 72);
    do
    {
      sub_1000F9948(v16, v9, type metadata accessor for MoveAndCopyMessages.CommandID);
      sub_1000F9948(v9, v7, type metadata accessor for MoveAndCopyMessages.CommandID);
      v18 = sub_10000C9C0(&qword_1005CEF30, &unk_1004D1E00);
      v19 = *(v18 + 48);
      v20 = *(v18 + 52);
      v21 = swift_allocObject();
      sub_1000F9A88(v7, v21 + *(*v21 + 96), type metadata accessor for MoveAndCopyMessages.CommandID);
      sub_1000893BC(&v24, v21);
      sub_1000F9A28(v9, type metadata accessor for MoveAndCopyMessages.CommandID);

      v16 += v17;
      --v15;
    }

    while (v15);
    return v25;
  }

  return v10;
}

uint64_t type metadata accessor for MoveAndCopyMessages.CommandID()
{
  result = qword_1005D0320;
  if (!qword_1005D0320)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

__n128 sub_1000F7414(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  result = a2[8];
  v9 = a2[9];
  v10 = a2[11];
  *(a1 + 160) = a2[10];
  *(a1 + 176) = v10;
  *(a1 + 128) = result;
  *(a1 + 144) = v9;
  return result;
}

uint64_t sub_1000F7448(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 192))
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

uint64_t sub_1000F7490(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 184) = 0;
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
      *(result + 192) = 1;
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

    *(result + 192) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1000F7510()
{
  sub_100050DB8();
  if (v0 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
  }
}

unint64_t sub_1000F75B8()
{
  result = qword_1005D0360;
  if (!qword_1005D0360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D0360);
  }

  return result;
}

unint64_t sub_1000F760C(uint64_t a1)
{
  result = sub_1000F7634();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1000F7634()
{
  result = qword_1005D0418;
  if (!qword_1005D0418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D0418);
  }

  return result;
}

unint64_t sub_1000F768C()
{
  result = qword_1005D0420;
  if (!qword_1005D0420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D0420);
  }

  return result;
}

unint64_t sub_1000F76E4()
{
  result = qword_1005D0428;
  if (!qword_1005D0428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D0428);
  }

  return result;
}

uint64_t sub_1000F7764(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for MoveAndCopyMessages.CommandID();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000F77A8(uint64_t a1, uint64_t a2)
{
  if (sub_100020580(0, a1, a2))
  {
    v3 = *(v2 + 176);
    if (*(v3 + 16))
    {
      v4 = *(v3 + 32);
      v5 = *(v3 + 40);
      v6 = *(v3 + 48);

      sub_100164D40(0, 1);

      v8 = sub_1000F3830(v7, v4, v5);
      swift_bridgeObjectRelease_n();
      swift_bridgeObjectRelease_n();
      v9 = swift_allocObject();
      v10 = *(v2 + 40);
      *(v9 + 16) = *(v2 + 32);
      *(v9 + 24) = v10;
      if (*(v8 + 16))
      {
        sub_10000C9C0(&qword_1005CF7C8, &qword_1004D3CD0);
        v11 = sub_1004A6A74();
      }

      else
      {
        v11 = _swiftEmptyDictionarySingleton;
      }

      v15 = v11;

      sub_1000F1808(v8, 1, &v15);
      *(v9 + 32) = v15;
      return 1;
    }

    else
    {
      return 2;
    }
  }

  else
  {
    v12 = swift_allocObject();
    v13 = *(v2 + 40);
    *(v12 + 16) = *(v2 + 32);
    *(v12 + 24) = v13;
    *(v12 + 32) = 257;

    return 0;
  }
}

uint64_t sub_1000F7974(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for MailboxTaskLogger(0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v9 = v72 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = v72 - v11;
  v13 = type metadata accessor for UntaggedResponse(0);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13);
  v16 = (v72 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1000F9948(a1, v16, type metadata accessor for UntaggedResponse);
  if (swift_getEnumCaseMultiPayload())
  {
    return sub_1000F9A28(v16, type metadata accessor for UntaggedResponse);
  }

  v18 = *v16;
  v19 = v16[2];
  if ((~*v16 & 0xF000000000000007) == 0)
  {
  }

  if (((v18 >> 59) & 0x1E | (v18 >> 2) & 1) != 8)
  {
    sub_10001114C(*v16);
  }

  v80 = v3;
  v79 = *((v18 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
  v20 = *((v18 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
  v21 = *((v18 & 0xFFFFFFFFFFFFFFBLL) + 0x20);
  sub_1000F9948(a3, v12, type metadata accessor for MailboxTaskLogger);
  sub_1000F9948(a3, v9, type metadata accessor for MailboxTaskLogger);

  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  v22 = sub_1004A4A54();
  v23 = sub_1004A6004();

  v24 = os_log_type_enabled(v22, v23);
  v81 = v21;
  v82 = v20;
  if (v24)
  {
    v76 = v23;
    v77 = v22;
    v25 = swift_slowAlloc();
    v75 = swift_slowAlloc();
    v86 = v75;
    *v25 = 68160003;
    *(v25 + 4) = 2;
    *(v25 + 8) = 256;
    v26 = &v9[*(v6 + 20)];
    *(v25 + 10) = *v26;
    *(v25 + 11) = 2082;
    v27 = &v12[*(v6 + 20)];
    *(v25 + 13) = sub_10015BA6C(*(v27 + 1), *(v27 + 2), &v86);
    *(v25 + 21) = 1040;
    *(v25 + 23) = 2;
    *(v25 + 27) = 512;
    LOWORD(v26) = *(v26 + 12);
    sub_1000F9A28(v9, type metadata accessor for MailboxTaskLogger);
    *(v25 + 29) = v26;
    *(v25 + 31) = 2160;
    *(v25 + 33) = 0x786F626C69616DLL;
    *(v25 + 41) = 2085;
    v28 = *(v27 + 4);
    LODWORD(v27) = *(v27 + 10);

    sub_1000F9A28(v12, type metadata accessor for MailboxTaskLogger);
    v84 = v28;
    v85 = v27;
    v29 = sub_1004A5824();
    v31 = sub_10015BA6C(v29, v30, &v86);

    *(v25 + 43) = v31;
    v32 = v82;
    *(v25 + 51) = 2082;
    v33 = *(v32 + 16);
    v34 = _swiftEmptyArrayStorage;
    v78 = v25;
    if (v33)
    {
      v73 = v19;
      v74 = v18;
      v84 = _swiftEmptyArrayStorage;

      sub_100134BC4(0, v33, 0);
      v35 = v82;
      v36 = 32;
      v34 = v84;
      do
      {
        v83 = *(v35 + v36);
        sub_10000C9C0(&qword_1005CD198, &qword_1004CEC20);
        v37 = sub_1004A5804();
        v39 = v38;
        v84 = v34;
        v41 = v34[2];
        v40 = v34[3];
        if (v41 >= v40 >> 1)
        {
          sub_100134BC4((v40 > 1), v41 + 1, 1);
          v35 = v82;
          v34 = v84;
        }

        v34[2] = v41 + 1;
        v42 = &v34[2 * v41];
        v42[4] = v37;
        v42[5] = v39;
        v36 += 8;
        --v33;
      }

      while (v33);

      v18 = v74;
      v25 = v78;
    }

    v84 = v34;
    v45 = sub_10000C9C0(&unk_1005DA9A0, &unk_1004CF770);
    v46 = sub_10000DF44(&qword_1005CDA18, &unk_1005DA9A0, &unk_1004CF770);
    v47 = sub_1004A5614();
    v49 = v48;

    v50 = sub_10015BA6C(v47, v49, &v86);

    *(v25 + 53) = v50;
    *(v25 + 61) = 2082;
    v51 = *(v81 + 16);
    v52 = _swiftEmptyArrayStorage;
    if (v51)
    {
      v72[1] = v46;
      v73 = v45;
      v84 = _swiftEmptyArrayStorage;

      sub_100134BC4(0, v51, 0);
      v53 = v81;
      v54 = 32;
      v52 = v84;
      do
      {
        v83 = *(v53 + v54);
        sub_10000C9C0(&qword_1005CD198, &qword_1004CEC20);
        v55 = sub_1004A5804();
        v84 = v52;
        v58 = v52[2];
        v57 = v52[3];
        if (v58 >= v57 >> 1)
        {
          v74 = v18;
          v60 = v55;
          v61 = v56;
          sub_100134BC4((v57 > 1), v58 + 1, 1);
          v53 = v81;
          v56 = v61;
          v55 = v60;
          v18 = v74;
          v52 = v84;
        }

        v52[2] = v58 + 1;
        v59 = &v52[2 * v58];
        v59[4] = v55;
        v59[5] = v56;
        v54 += 8;
        --v51;
      }

      while (v51);

      v25 = v78;
    }

    v84 = v52;
    v62 = sub_1004A5614();
    v64 = v63;

    v65 = sub_10015BA6C(v62, v64, &v86);

    *(v25 + 63) = v65;
    *(v25 + 71) = 1024;

    v44 = v79;
    *(v25 + 73) = v79;

    v66 = v77;
    _os_log_impl(&_mh_execute_header, v77, v76, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Server moved messages %{public}s with destination UIDs %{public}s and UIDValidity 0x%x", v25, 0x4Du);
    swift_arrayDestroy();

    v43 = v80;
  }

  else
  {

    sub_1000F9A28(v9, type metadata accessor for MailboxTaskLogger);

    sub_1000F9A28(v12, type metadata accessor for MailboxTaskLogger);
    v43 = v80;
    v44 = v79;
  }

  v67 = *(v43 + 168);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v67 = sub_100086FF4(0, *(v67 + 2) + 1, 1, v67);
  }

  v69 = *(v67 + 2);
  v68 = *(v67 + 3);
  if (v69 >= v68 >> 1)
  {
    v67 = sub_100086FF4((v68 > 1), v69 + 1, 1, v67);
  }

  sub_10001114C(v18);

  *(v67 + 2) = v69 + 1;
  v70 = &v67[24 * v69];
  *(v70 + 8) = v44;
  v71 = v81;
  *(v70 + 5) = v82;
  *(v70 + 6) = v71;
  *(v43 + 168) = v67;
  return result;
}

void sub_1000F8150(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = type metadata accessor for MoveAndCopyMessages.CommandID();
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11);
  v121 = &v112 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v120 = (&v112 - v15);
  __chkstk_darwin(v16);
  v119 = (&v112 - v17);
  __chkstk_darwin(v18);
  v124 = &v112 - v19;
  __chkstk_darwin(v20);
  v123 = (&v112 - v21);
  v22 = type metadata accessor for MailboxTaskLogger(0);
  v23 = *(*(v22 - 8) + 64);
  __chkstk_darwin(v22);
  v25 = &v112 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v29 = &v112 - v28;
  if (((a1 >> 59) & 0x1E | (a1 >> 2) & 1) == 0x12 && (*(v5 + 40) | (*(v5 + 40) << 32)) == (*((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x18) | (*((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x18) << 32)))
  {
    v30 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x20);
    LODWORD(v122) = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x28);
    v31 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
    v32 = v27;
    if (sub_1000FFC98(*(v5 + 32), v31))
    {
      v116 = v5;

      if (sub_100071044(0, a2, a3, a4))
      {
        sub_1000F9948(a5, v29, type metadata accessor for MailboxTaskLogger);
        sub_1000F9948(a5, v25, type metadata accessor for MailboxTaskLogger);
        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();
        swift_bridgeObjectRetain_n();
        v33 = sub_1004A4A54();
        v34 = sub_1004A6034();
        v35 = os_log_type_enabled(v33, v34);
        v117 = v30;
        if (v35)
        {
          v36 = swift_slowAlloc();
          v127 = swift_slowAlloc();
          *v36 = 68159491;
          *(v36 + 4) = 2;
          *(v36 + 8) = 256;
          v37 = &v25[*(v32 + 20)];
          *(v36 + 10) = *v37;
          *(v36 + 11) = 2082;
          v38 = &v29[*(v32 + 20)];
          *(v36 + 13) = sub_10015BA6C(*(v38 + 1), *(v38 + 2), &v127);
          *(v36 + 21) = 1040;
          *(v36 + 23) = 2;
          *(v36 + 27) = 512;
          LOWORD(v37) = *(v37 + 12);
          sub_1000F9A28(v25, type metadata accessor for MailboxTaskLogger);
          *(v36 + 29) = v37;
          *(v36 + 31) = 2160;
          *(v36 + 33) = 0x786F626C69616DLL;
          *(v36 + 41) = 2085;
          v39 = *(v38 + 4);
          LODWORD(v38) = *(v38 + 10);

          sub_1000F9A28(v29, type metadata accessor for MailboxTaskLogger);
          v125 = v39;
          v126 = v38;
          v40 = sub_1004A5824();
          v42 = sub_10015BA6C(v40, v41, &v127);

          *(v36 + 43) = v42;
          *(v36 + 51) = 2048;
          v43 = *(v117 + 16);

          *(v36 + 53) = v43;

          _os_log_impl(&_mh_execute_header, v33, v34, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Persistence returned %ld moves / copies.", v36, 0x3Du);
          swift_arrayDestroy();

          v44 = v117;
        }

        else
        {
          v44 = v30;

          sub_1000F9A28(v25, type metadata accessor for MailboxTaskLogger);

          sub_1000F9A28(v29, type metadata accessor for MailboxTaskLogger);
        }

        v45 = v116;
        v118 = v11;
        if ((v122 & 1) == 0)
        {
          *(v116 + 120) = 1;
        }

        v115 = *(v44 + 16);
        if (v115)
        {
          v46 = 0;
          v47 = (v44 + 64);
          while (v46 < *(v44 + 16))
          {
            v61 = *(v45 + 112);
            if (v61 >= 257)
            {

              *(v45 + 120) = 1;
              return;
            }

            v62 = *(v47 - 7);
            v63 = *(v47 - 3);
            LODWORD(v122) = *(v47 - 4);
            v64 = *(v47 - 1);
            v65 = *v47;
            v66 = *(v47 - 32);
            *(v45 + 112) = v61 + 1;
            if (v66 == 1)
            {
              v114 = v46;
              v128 = v62;
              v129 = 1;
              v130 = v64;
              v131 = v65;
              sub_10000C9C0(&qword_1005CF7D0, &qword_1004D3CB0);
              v67 = sub_1004A6A74();
              v68 = v128;
              v69 = v129;
              v70 = v130;
              v71 = v131;
              v72 = sub_100067004(v128);
              if (v73)
              {
                goto LABEL_33;
              }

              v67[(v72 >> 6) + 8] |= 1 << v72;
              *(v67[6] + 4 * v72) = v68;
              v74 = v67[7] + 24 * v72;
              *v74 = v69;
              *(v74 + 8) = v70;
              *(v74 + 16) = v71;
              v75 = v67[2];
              v76 = __OFADD__(v75, 1);
              v77 = v75 + 1;
              if (v76)
              {
                goto LABEL_34;
              }

              v67[2] = v77;

              sub_100014CEC(v64, v65);

              sub_100014CEC(v64, v65);
              sub_100014CEC(v70, v71);
              sub_100025F40(&v128, &qword_1005D0448, &qword_1004D3CB8);
              v78 = v123;
              *v123 = v63;
              *(v78 + 8) = v122;
              *(v78 + 16) = v67;
              swift_storeEnumTagMultiPayload();
              v79 = v124;
              sub_1000F9948(v78, v124, type metadata accessor for MoveAndCopyMessages.CommandID);
              v80 = sub_10000C9C0(&qword_1005CEF30, &unk_1004D1E00);
              v81 = *(v80 + 48);
              v82 = *(v80 + 52);
              v83 = swift_allocObject();
              sub_1000F9A88(v79, v83 + *(*v83 + 96), type metadata accessor for MoveAndCopyMessages.CommandID);
              v84 = v116;
              sub_1000893BC(&v125, v83);

              v45 = v84;
              sub_100014D40(v64, v65);

              sub_1000F9A28(v78, type metadata accessor for MoveAndCopyMessages.CommandID);
              v46 = v114;
            }

            else
            {
              if (*(v45 + 105))
              {
                LODWORD(v114) = v62;
                v135 = v62;
                v136 = 0;
                v85 = v64;
                v137 = v64;
                v138 = v65;
                v86 = v65;
                sub_10000C9C0(&qword_1005CF7D0, &qword_1004D3CB0);
                v87 = sub_1004A6A74();
                v88 = v135;
                v89 = v136;
                v90 = v137;
                v91 = v138;
                v92 = sub_100067004(v135);
                if (v93)
                {
                  goto LABEL_36;
                }

                v87[(v92 >> 6) + 8] |= 1 << v92;
                *(v87[6] + 4 * v92) = v88;
                v94 = v87[7] + 24 * v92;
                *v94 = v89;
                *(v94 + 8) = v90;
                *(v94 + 16) = v91;
                v95 = v87[2];
                v76 = __OFADD__(v95, 1);
                v96 = v95 + 1;
                if (v76)
                {
                  goto LABEL_37;
                }

                v87[2] = v96;

                v113 = v85;
                sub_100014CEC(v85, v86);

                sub_100014CEC(v85, v86);
                sub_100014CEC(v90, v91);
                sub_100025F40(&v135, &qword_1005D0448, &qword_1004D3CB8);
                v48 = v120;
                *v120 = v63;
                *(v48 + 8) = v122;
                *(v48 + 16) = v87;
                swift_storeEnumTagMultiPayload();
                v122 = type metadata accessor for MoveAndCopyMessages.CommandID;
                v49 = v124;
                sub_1000F9948(v48, v124, type metadata accessor for MoveAndCopyMessages.CommandID);
                v50 = sub_10000C9C0(&qword_1005CEF30, &unk_1004D1E00);
                v51 = *(v50 + 48);
                v52 = *(v50 + 52);
                v53 = swift_allocObject();
                v54 = *(*v53 + 96);
                v112 = type metadata accessor for MoveAndCopyMessages.CommandID;
                sub_1000F9A88(v49, v53 + v54, type metadata accessor for MoveAndCopyMessages.CommandID);
                v45 = v116;
                sub_1000893BC(&v125, v53);

                sub_1000F9A28(v48, type metadata accessor for MoveAndCopyMessages.CommandID);
                LODWORD(v125) = v114;
                v55 = sub_100016948();
                MessageIdentifierSet.init(_:)(&v125, &type metadata for UID, v55);
                swift_storeEnumTagMultiPayload();
                v56 = v121;
                sub_1000F9948(v49, v121, v122);
                v57 = *(v50 + 48);
                v58 = *(v50 + 52);
                v59 = swift_allocObject();
                sub_1000F9A88(v56, v59 + *(*v59 + 96), v112);
                sub_1000893BC(&v125, v59);

                sub_100014D40(v113, v86);

                v60 = v49;
              }

              else
              {
                v132 = v62;
                v133 = v64;
                v134 = v65;
                sub_10000C9C0(&qword_1005CF7D8, &qword_1004D3CC0);
                v97 = sub_1004A6A74();
                v98 = v132;
                v99 = v133;
                v100 = v134;
                v101 = sub_100067004(v132);
                if (v102)
                {
                  goto LABEL_35;
                }

                v97[(v101 >> 6) + 8] |= 1 << v101;
                *(v97[6] + 4 * v101) = v98;
                v103 = (v97[7] + 16 * v101);
                *v103 = v99;
                v103[1] = v100;
                v104 = v97[2];
                v76 = __OFADD__(v104, 1);
                v105 = v104 + 1;
                if (v76)
                {
                  goto LABEL_38;
                }

                v97[2] = v105;

                sub_100014CEC(v64, v65);

                sub_100014CEC(v64, v65);
                sub_100014CEC(v99, v100);
                sub_100025F40(&v132, &qword_1005D0450, &qword_1004D3CC8);
                v106 = v119;
                *v119 = v63;
                *(v106 + 8) = v122;
                *(v106 + 16) = v97;
                swift_storeEnumTagMultiPayload();
                v107 = v124;
                sub_1000F9948(v106, v124, type metadata accessor for MoveAndCopyMessages.CommandID);
                v108 = sub_10000C9C0(&qword_1005CEF30, &unk_1004D1E00);
                v109 = *(v108 + 48);
                v110 = *(v108 + 52);
                v111 = swift_allocObject();
                sub_1000F9A88(v107, v111 + *(*v111 + 96), type metadata accessor for MoveAndCopyMessages.CommandID);
                sub_1000893BC(&v125, v111);

                sub_100014D40(v64, v65);

                v60 = v106;
              }

              sub_1000F9A28(v60, type metadata accessor for MoveAndCopyMessages.CommandID);
            }

            v44 = v117;
            ++v46;
            v47 += 5;
            if (v115 == v46)
            {
              goto LABEL_29;
            }
          }

          __break(1u);
LABEL_33:
          __break(1u);
LABEL_34:
          __break(1u);
LABEL_35:
          __break(1u);
LABEL_36:
          __break(1u);
LABEL_37:
          __break(1u);
LABEL_38:
          __break(1u);
        }

        else
        {
LABEL_29:
        }
      }

      else
      {

        *(v116 + 120) = 1;
      }
    }
  }
}

uint64_t sub_1000F8DD0(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2)
  {
    v3 = 0;
    v4 = (result + 36);
    do
    {
      v5 = *v4 - *(v4 - 1) + 1;
      v6 = __OFADD__(v3, v5);
      v3 += v5;
      if (v6)
      {
        __break(1u);
        goto LABEL_17;
      }

      v4 += 2;
      --v2;
    }

    while (v2);
    v7 = *(a2 + 16);
    if (v7)
    {
      goto LABEL_10;
    }

    if (v3)
    {
LABEL_14:

      sub_1000F98F4();
      swift_allocError();
      return swift_willThrow();
    }
  }

  else
  {
    v7 = *(a2 + 16);
    if (v7)
    {
      v3 = 0;
LABEL_10:
      v8 = 0;
      v9 = (a2 + 36);
      while (1)
      {
        v10 = *v9 - *(v9 - 1) + 1;
        v6 = __OFADD__(v8, v10);
        v8 += v10;
        if (v6)
        {
          break;
        }

        v9 += 2;
        if (!--v7)
        {
          if (v3 == v8)
          {
            return result;
          }

          goto LABEL_14;
        }
      }

LABEL_17:
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1000F8EAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  v10 = sub_1000F8DD0(a2, a3);
  if (v4)
  {
    return v5;
  }

  v12 = v11;
  v13 = sub_1000F1410(v10);
  v14 = sub_1000F1410(v12);
  v15 = v14;
  v49 = *(v13 + 16);
  if (!v49)
  {

    v5 = _swiftEmptyDictionarySingleton;
LABEL_23:

    return v5;
  }

  v16 = 0;
  v47 = a1 << 32;
  v48 = v13 + 32;
  v5 = _swiftEmptyDictionarySingleton;
  v45 = v13;
  v46 = a4;
  v44 = v14;
  while (v16 < *(v13 + 16))
  {
    if (v16 >= *(v15 + 16))
    {
      goto LABEL_26;
    }

    if (!*(a4 + 16))
    {
      goto LABEL_27;
    }

    v20 = *(v48 + 4 * v16);
    v21 = *(v15 + 4 * v16 + 32);
    v22 = sub_100067004(v20);
    if ((v23 & 1) == 0)
    {
      goto LABEL_28;
    }

    if (!*(a4 + 16))
    {
      goto LABEL_29;
    }

    v24 = *(*(a4 + 56) + 24 * v22);
    v25 = sub_100067004(v20);
    if ((v26 & 1) == 0)
    {
      goto LABEL_30;
    }

    v27 = *(a4 + 56) + 24 * v25;
    v28 = *(v27 + 8);
    v50 = *(v27 + 16);
    v51 = v21;
    sub_100014CEC(v28, v50);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v31 = sub_100067004(v20);
    v32 = _swiftEmptyDictionarySingleton[2];
    v33 = (v30 & 1) == 0;
    v34 = v32 + v33;
    if (__OFADD__(v32, v33))
    {
      goto LABEL_31;
    }

    v35 = v30;
    if (_swiftEmptyDictionarySingleton[3] >= v34)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_10013BF78();
      }
    }

    else
    {
      sub_1000C7000(v34, isUniquelyReferenced_nonNull_native);
      v36 = sub_100067004(v20);
      if ((v35 & 1) != (v37 & 1))
      {
        goto LABEL_33;
      }

      v31 = v36;
    }

    v38 = v47 | v51;
    if (v35)
    {
      v17 = _swiftEmptyDictionarySingleton[7] + 40 * v31;
      v18 = *(v17 + 8);
      v19 = *(v17 + 16);
      *v17 = v24;
      *(v17 + 8) = v28;
      *(v17 + 16) = v50;
      *(v17 + 24) = v38;
      *(v17 + 32) = 0;
      sub_100014D40(v18, v19);
    }

    else
    {
      _swiftEmptyDictionarySingleton[(v31 >> 6) + 8] |= 1 << v31;
      *(_swiftEmptyDictionarySingleton[6] + 4 * v31) = v20;
      v39 = _swiftEmptyDictionarySingleton[7] + 40 * v31;
      *v39 = v24;
      *(v39 + 8) = v28;
      *(v39 + 16) = v50;
      *(v39 + 24) = v38;
      *(v39 + 32) = 0;
      v40 = _swiftEmptyDictionarySingleton[2];
      v41 = __OFADD__(v40, 1);
      v42 = v40 + 1;
      if (v41)
      {
        goto LABEL_32;
      }

      _swiftEmptyDictionarySingleton[2] = v42;
    }

    ++v16;
    v13 = v45;
    a4 = v46;
    v15 = v44;
    if (v49 == v16)
    {

      goto LABEL_23;
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
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  result = sub_1004A6E24();
  __break(1u);
  return result;
}

uint64_t sub_1000F918C(uint64_t a1, char a2, uint64_t a3)
{
  sub_10000C9C0(&qword_1005CF7B8, &qword_1004D2CC8);
  result = sub_1004A6A54();
  v7 = result;
  v8 = 0;
  v9 = 1 << *(a3 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(a3 + 64);
  v12 = (v9 + 63) >> 6;
  v13 = result + 64;
  v14 = a2 & 1;
  if (v11)
  {
    while (1)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_10:
      v18 = v15 | (v8 << 6);
      v19 = *(*(a3 + 48) + 4 * v18);
      v20 = *(a3 + 56) + 24 * v18;
      v21 = *v20;
      result = *(v20 + 8);
      v22 = *(v20 + 16);
      *(v13 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      *(v7[6] + 4 * v18) = v19;
      v23 = v7[7] + 40 * v18;
      *v23 = v21;
      *(v23 + 8) = result;
      *(v23 + 16) = v22;
      *(v23 + 24) = a1;
      *(v23 + 32) = v14;
      v24 = v7[2];
      v25 = __OFADD__(v24, 1);
      v26 = v24 + 1;
      if (v25)
      {
        break;
      }

      v7[2] = v26;
      result = sub_100014CEC(result, v22);
      if (!v11)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v8 >= v12)
      {
        return v7;
      }

      v17 = *(a3 + 64 + 8 * v8);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1000F92FC()
{
  v2 = type metadata accessor for MoveAndCopyMessages.CommandID();
  v59 = *(v2 - 8);
  v3 = *(v59 + 64);
  __chkstk_darwin(v2);
  v53 = &v52 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v54 = &v52 - v6;
  __chkstk_darwin(v7);
  v9 = &v52 - v8;
  __chkstk_darwin(v10);
  v12 = &v52 - v11;
  __chkstk_darwin(v13);
  v14 = *(v0 + 128);
  v57 = (v0 + 128);
  v58 = &v52 - v15;
  v64 = v16;
  v17 = sub_1000F7764(&qword_1005CF830);
  v65 = v17;
  KeyPath = swift_getKeyPath();

  v19 = sub_1000F342C(v14, KeyPath);

  v20 = sub_1000CE800(v19);

  v21 = sub_1000F1CC8(v20);
  v55 = v17;
  v56 = v21;
  v61 = v2;
  v62 = v2;
  v63 = v17;
  v22 = swift_getKeyPath();

  v23 = sub_1000F342C(v14, v22);
  v60 = v1;

  v24 = sub_1000CE800(v23);

  v26 = 0;
  v27 = 1 << *(v24 + 32);
  v28 = -1;
  if (v27 < 64)
  {
    v28 = ~(-1 << v27);
  }

  v29 = v28 & *(v24 + 56);
  v30 = (v27 + 63) >> 6;
  while (v29)
  {
LABEL_11:
    v36 = v58;
    sub_1000F9948(*(v24 + 48) + *(v59 + 72) * (__clz(__rbit64(v29)) | (v26 << 6)), v58, type metadata accessor for MoveAndCopyMessages.CommandID);
    sub_1000F9A88(v36, v12, type metadata accessor for MoveAndCopyMessages.CommandID);
    sub_1000F9948(v12, v9, type metadata accessor for MoveAndCopyMessages.CommandID);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
LABEL_4:
        v31 = sub_1000F9A28(v9, type metadata accessor for MoveAndCopyMessages.CommandID);
        __chkstk_darwin(v31);
        *(&v52 - 2) = v12;
        v32 = v56;

        v33 = v60;
        v34 = sub_1000F2414(sub_1000F98B4, (&v52 - 4), v32);
        v60 = v33;
        sub_1000EA544(v12, v34);
      }
    }

    else
    {
      if (!EnumCaseMultiPayload)
      {
        goto LABEL_4;
      }

      sub_1000F9A28(v9, type metadata accessor for MoveAndCopyMessages.CommandID);
    }

    v29 &= v29 - 1;
    result = sub_1000F9A28(v12, type metadata accessor for MoveAndCopyMessages.CommandID);
  }

  while (1)
  {
    v35 = v26 + 1;
    if (__OFADD__(v26, 1))
    {
      __break(1u);
      return result;
    }

    if (v35 >= v30)
    {
      break;
    }

    v29 = *(v24 + 56 + 8 * v35);
    ++v26;
    if (v29)
    {
      v26 = v35;
      goto LABEL_11;
    }
  }

  v39 = *v57;
  __chkstk_darwin(v38);
  v40 = v55;
  *(&v52 - 2) = v61;
  *(&v52 - 1) = v40;
  v41 = swift_getKeyPath();

  v42 = sub_1000F342C(v39, v41);

  v43 = sub_1000CE800(v42);

  v44 = sub_1000F2070(v43);
  if (!*(v44 + 16))
  {
  }

  v45 = v44;
  v46 = v54;
  swift_storeEnumTagMultiPayload();
  v47 = v53;
  sub_1000F9948(v46, v53, type metadata accessor for MoveAndCopyMessages.CommandID);
  v48 = sub_10000C9C0(&qword_1005CEF30, &unk_1004D1E00);
  v49 = *(v48 + 48);
  v50 = *(v48 + 52);
  v51 = swift_allocObject();
  sub_1000F9A88(v47, v51 + *(*v51 + 96), type metadata accessor for MoveAndCopyMessages.CommandID);
  sub_1000893BC(&v66, v51);
  sub_1000F9A28(v46, type metadata accessor for MoveAndCopyMessages.CommandID);

  swift_storeEnumTagMultiPayload();
  sub_1000EA544(v46, v45);

  return sub_1000F9A28(v46, type metadata accessor for MoveAndCopyMessages.CommandID);
}

unint64_t sub_1000F98F4()
{
  result = qword_1005D0440;
  if (!qword_1005D0440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D0440);
  }

  return result;
}

uint64_t sub_1000F9948(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000F99B0()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000F99E8()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000F9A28(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1000F9A88(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000F9AF0(uint64_t a1, void (*a2)(uint64_t *__return_ptr, int *), uint64_t a3, char a4, uint64_t *a5)
{
  v58 = a5;
  v6 = a1 + 64;
  v7 = -1 << *(a1 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a1 + 64);
  v44 = -1 << *(a1 + 32);
  v10 = (63 - v7) >> 6;

  v11 = 0;
  v45 = v6;
  while (1)
  {
    v15 = v9;
    v16 = v11;
    if (!v9)
    {
      break;
    }

LABEL_12:
    v18 = __clz(__rbit64(v15)) | (v16 << 6);
    v19 = *(*(a1 + 48) + 4 * v18);
    v20 = *(a1 + 56) + 24 * v18;
    v21 = *v20;
    v22 = *(v20 + 8);
    v23 = *(v20 + 16);
    v50 = v19;
    v51 = v21;
    v52 = v22;
    v53 = v23;
    sub_100014CEC(v22, v23);
    a2(&v54, &v50);
    sub_100014D40(v52, v53);
    v24 = v55;
    if (v55 == 2)
    {
LABEL_22:
      sub_100020D08();
    }

    v25 = v54;
    v48 = v56;
    v49 = v57;
    v26 = *v58;
    v28 = sub_100067004(v54);
    v29 = *(v26 + 16);
    v30 = (v27 & 1) == 0;
    v31 = v29 + v30;
    if (__OFADD__(v29, v30))
    {
      goto LABEL_24;
    }

    v32 = v27;
    if (*(v26 + 24) >= v31)
    {
      if ((a4 & 1) == 0)
      {
        sub_10013C26C();
      }
    }

    else
    {
      v33 = v58;
      sub_1000C7564(v31, a4 & 1);
      v34 = *v33;
      v35 = sub_100067004(v25);
      if ((v32 & 1) != (v36 & 1))
      {
        goto LABEL_26;
      }

      v28 = v35;
    }

    v37 = (v15 - 1) & v15;
    v38 = *v58;
    if (v32)
    {
      v12 = v38[7] + 24 * v28;
      v13 = *(v12 + 8);
      v14 = *(v12 + 16);
      *v12 = v24 & 1;
      *(v12 + 8) = v48;
      *(v12 + 16) = v49;
      sub_100014D40(v13, v14);
    }

    else
    {
      v38[(v28 >> 6) + 8] |= 1 << v28;
      *(v38[6] + 4 * v28) = v25;
      v39 = v38[7] + 24 * v28;
      *v39 = v24 & 1;
      *(v39 + 8) = v48;
      *(v39 + 16) = v49;
      v40 = v38[2];
      v41 = __OFADD__(v40, 1);
      v42 = v40 + 1;
      if (v41)
      {
        goto LABEL_25;
      }

      v38[2] = v42;
    }

    a4 = 1;
    v11 = v16;
    v6 = v45;
    v9 = v37;
  }

  v17 = v11;
  while (1)
  {
    v16 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v16 >= v10)
    {
      goto LABEL_22;
    }

    v15 = *(v6 + 8 * v16);
    ++v17;
    if (v15)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  result = sub_1004A6E24();
  __break(1u);
  return result;
}

uint64_t sub_1000F9D98(uint64_t a1, void (*a2)(void *__return_ptr, int *), uint64_t a3, char a4, uint64_t *a5)
{
  v49 = a5;
  v6 = a1 + 64;
  v7 = -1 << *(a1 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a1 + 64);
  v40 = -1 << *(a1 + 32);
  v10 = (63 - v7) >> 6;

  v11 = 0;
  v41 = v10;
  v42 = v6;
  while (1)
  {
    v15 = v9;
    v16 = v11;
    if (!v9)
    {
      break;
    }

LABEL_12:
    v18 = __clz(__rbit64(v15)) | (v16 << 6);
    v19 = *(a1 + 56);
    v45 = *(*(a1 + 48) + 4 * v18);
    v46 = *(v19 + 16 * v18);
    sub_100014CEC(v46, *(&v46 + 1));
    a2(v47, &v45);
    sub_100014D40(v46, *(&v46 + 1));
    v20 = v48;
    if (v48 >> 60 == 15)
    {
LABEL_22:
      sub_100020D08();
    }

    v21 = LODWORD(v47[0]);
    v22 = v47[1];
    v23 = *v49;
    v25 = sub_100067004(LODWORD(v47[0]));
    v26 = *(v23 + 16);
    v27 = (v24 & 1) == 0;
    v28 = v26 + v27;
    if (__OFADD__(v26, v27))
    {
      goto LABEL_24;
    }

    v29 = v24;
    if (*(v23 + 24) >= v28)
    {
      if ((a4 & 1) == 0)
      {
        sub_10013C104();
      }
    }

    else
    {
      v30 = v49;
      sub_1000C72D0(v28, a4 & 1);
      v31 = *v30;
      v32 = sub_100067004(v21);
      if ((v29 & 1) != (v33 & 1))
      {
        goto LABEL_26;
      }

      v25 = v32;
    }

    v34 = *v49;
    if (v29)
    {
      v12 = (v34[7] + 16 * v25);
      v13 = *v12;
      v14 = v12[1];
      *v12 = v22;
      v12[1] = v20;
      sub_100014D40(v13, v14);
    }

    else
    {
      v34[(v25 >> 6) + 8] |= 1 << v25;
      *(v34[6] + 4 * v25) = v21;
      v35 = (v34[7] + 16 * v25);
      *v35 = v22;
      v35[1] = v20;
      v36 = v34[2];
      v37 = __OFADD__(v36, 1);
      v38 = v36 + 1;
      if (v37)
      {
        goto LABEL_25;
      }

      v34[2] = v38;
    }

    a4 = 1;
    v11 = v16;
    v10 = v41;
    v6 = v42;
    v9 = (v15 - 1) & v15;
  }

  v17 = v11;
  while (1)
  {
    v16 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v16 >= v10)
    {
      goto LABEL_22;
    }

    v15 = *(v6 + 8 * v16);
    ++v17;
    if (v15)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  result = sub_1004A6E24();
  __break(1u);
  return result;
}

uint64_t sub_1000FA030(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[24])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = v3 - 2;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1000FA074(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

__n128 initializeWithCopy for IdleTimer.State(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1000FA0DC(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[33])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = v3 - 2;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1000FA120(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_1000FA17C()
{
  result = qword_1005D0490;
  if (!qword_1005D0490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D0490);
  }

  return result;
}

unint64_t sub_1000FA1D4()
{
  result = qword_1005D0498;
  if (!qword_1005D0498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D0498);
  }

  return result;
}

uint64_t sub_1000FA270(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1000FA2FC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t type metadata accessor for NewestMessages()
{
  result = qword_1005D04F8;
  if (!qword_1005D04F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000FA3C4()
{
  sub_100050DB8();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_1000FA440(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10000C9C0(&qword_1005CDA38, &unk_1004D14C0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v7 = &v31[-v6];
  v8 = sub_10000C9C0(&qword_1005CD7A8, &unk_1004CF5A0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v31[-v11];
  v13 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  if (MessageIdentifierSet.count.getter() > 520)
  {
    v14 = sub_1000E5314();
    if ((v14 & &_mh_execute_header) != 0)
    {
      v15 = 1;
    }

    else
    {
      v15 = v14;
    }

    sub_10002A54C(a1, v7);
    v16 = MessageIdentifierSet.startIndex.getter(v13);
    v18 = v17;
    if (v16 != MessageIdentifierSet.endIndex.getter(v13) || v18 != v19)
    {
      do
      {
        MessageIdentifierSet.subscript.getter(v18, v13, &v34);
        v21 = v34;
        v16 = MessageIdentifierSet.index(_:offsetBy:)(v16, v18, 1);
        v18 = v22;
        if (v15 < v21)
        {
          v32 = v21;
          MessageIdentifierSet.insert(_:)(v33, &v32, v13);
        }
      }

      while (v16 != MessageIdentifierSet.endIndex.getter(v13) || v18 != v23);
    }

    v24 = &v7[*(v4 + 36)];
    *v24 = v16;
    v24[1] = v18;
    sub_1000FA734(v7);
  }

  else
  {
    (*(v9 + 16))(v12, a1, v8);
    sub_1004A7104();
  }

  v25 = MessageIdentifierSet.count.getter();
  result = type metadata accessor for NewestMessages();
  v27 = *(result + 20);
  v28 = *(v2 + v27);
  v29 = __OFADD__(v28, v25);
  v30 = v28 + v25;
  if (v29)
  {
    __break(1u);
  }

  else
  {
    *(v2 + v27) = v30;
  }

  return result;
}

uint64_t sub_1000FA734(uint64_t a1)
{
  v2 = sub_10000C9C0(&qword_1005CDA38, &unk_1004D14C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000FA7B0(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_10000C9C0(&qword_1005CD1D0, &unk_1004CF2C0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_1000FA880(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_10000C9C0(&qword_1005CD1D0, &unk_1004CF2C0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for NewServerMessages()
{
  result = qword_1005D0590;
  if (!qword_1005D0590)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000FA97C()
{
  sub_100051C44();
  if (v0 <= 0x3F)
  {
    sub_1000FAA2C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1000FAA2C()
{
  if (!qword_1005D05A0)
  {
    type metadata accessor for MessageMetadata(255);
    v0 = sub_1004A5CD4();
    if (!v1)
    {
      atomic_store(v0, &qword_1005D05A0);
    }
  }
}

uint64_t sub_1000FAA84@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10000C9C0(&qword_1005CD1D0, &unk_1004CF2C0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v18 - v5;
  v7 = type metadata accessor for NewServerMessages();
  v8 = *(v1 + v7[8]);
  if ((*(v1 + v7[7]) & 1) == 0)
  {
    if (*(v1 + v7[8]))
    {
      v9 = &off_100598DC0;
      goto LABEL_9;
    }

    sub_10000C9C0(&qword_1005CE240, &unk_100509A40);
    v9 = swift_allocObject();
    *(v9 + 1) = xmmword_1004D13E0;
    v9[4] = 7;
    v9[5] = 0;
    v9[6] = 0;
    v9[7] = 0;
    *(v9 + 68) = -64;
    *(v9 + 16) = 0;
    v9[9] = 2;
    v9[10] = 0;
    v9[11] = 0;
    v9[12] = 0;
    *(v9 + 108) = -64;
    *(v9 + 26) = 0;
    v9[14] = 5;
    v9[15] = 0;
    v9[16] = 0;
    v9[17] = 0;
    *(v9 + 148) = -64;
    *(v9 + 36) = 0;
    v9[19] = 1;
    v9[20] = 0;
    v9[21] = 0;
    v9[22] = 0;
    *(v9 + 188) = -64;
    *(v9 + 46) = 0;
    v14 = SectionSpecifier.header.unsafeMutableAddressor();
    v15 = *v14;
    v12 = v14[1];
    v13 = *(v14 + 16);
    v9[24] = 1;
    v9[25] = v15;
    v9[26] = v12;
    v9[27] = v13;
    *(v9 + 228) = 33;
    *(v9 + 56) = 0;
    v9[29] = 11;
    v9[30] = 0;
    v9[31] = 0;
    v9[32] = 0;
    *(v9 + 268) = -64;
    *(v9 + 66) = 0;
LABEL_8:

    sub_100051190(v12, v13);
    goto LABEL_9;
  }

  if ((*(v1 + v7[8]) & 1) == 0)
  {
    sub_10000C9C0(&qword_1005CE240, &unk_100509A40);
    v9 = swift_allocObject();
    *(v9 + 1) = xmmword_1004D2DE0;
    v9[4] = 7;
    v9[5] = 0;
    v9[6] = 0;
    v9[7] = 0;
    *(v9 + 68) = -64;
    *(v9 + 16) = 0;
    v9[9] = 2;
    v9[10] = 0;
    v9[11] = 0;
    v9[12] = 0;
    *(v9 + 108) = -64;
    *(v9 + 26) = 0;
    v9[14] = 5;
    v9[15] = 0;
    v9[16] = 0;
    v9[17] = 0;
    *(v9 + 148) = -64;
    *(v9 + 36) = 0;
    v9[19] = 1;
    v9[20] = 0;
    v9[21] = 0;
    v9[22] = 0;
    *(v9 + 188) = -64;
    *(v9 + 46) = 0;
    v10 = SectionSpecifier.header.unsafeMutableAddressor();
    v11 = *v10;
    v12 = v10[1];
    v13 = *(v10 + 16);
    v9[24] = 1;
    v9[25] = v11;
    v9[26] = v12;
    v9[27] = v13;
    *(v9 + 228) = 33;
    *(v9 + 56) = 0;
    goto LABEL_8;
  }

  v9 = &off_100598EA8;
LABEL_9:
  sub_10000E268(v1 + v7[5], v6, &qword_1005CD1D0, &unk_1004CF2C0);
  v16 = a1 + *(sub_10000C9C0(&qword_1005CD558, &unk_1004CF330) + 48);
  sub_10000E268(v6, a1, &unk_1005D91B0, &unk_1004CF400);
  *v16 = v9;
  *(v16 + 8) = 0;
  *(v16 + 16) = 1;
  type metadata accessor for ClientCommand(0);
  swift_storeEnumTagMultiPayload();
  return sub_100025F40(v6, &unk_1005D91B0, &unk_1004CF400);
}

void sub_1000FAD60(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v143 = a2;
  v147 = type metadata accessor for MailboxTaskLogger(0);
  v5 = *(*(v147 - 8) + 64);
  __chkstk_darwin(v147);
  v7 = &v125 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v125 - v9;
  __chkstk_darwin(v11);
  v13 = &v125 - v12;
  __chkstk_darwin(v14);
  v16 = &v125 - v15;
  __chkstk_darwin(v17);
  v139 = &v125 - v18;
  __chkstk_darwin(v19);
  v140 = &v125 - v20;
  v21 = sub_10000C9C0(&qword_1005CD1D0, &unk_1004CF2C0);
  v22 = *(*(v21 - 8) + 64);
  __chkstk_darwin(v21 - 8);
  v141 = &v125 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v142 = &v125 - v25;
  __chkstk_darwin(v26);
  v144 = &v125 - v27;
  v28 = sub_10000C9C0(&qword_1005D05E0, &qword_1004D65C0);
  v29 = *(*(v28 - 8) + 64);
  __chkstk_darwin(v28 - 8);
  v31 = &v125 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  v34 = &v125 - v33;
  v35 = sub_10000C9C0(&qword_1005D05E8, &unk_1004D4000);
  v36 = *(*(v35 - 8) + 64);
  __chkstk_darwin(v35 - 8);
  v145 = &v125 - v37;
  v38 = type metadata accessor for MessageMetadata(0);
  v39 = *(*(v38 - 1) + 64);
  __chkstk_darwin(v38);
  __chkstk_darwin(v40);
  __chkstk_darwin(v41);
  v43 = &v125 - v42;
  __chkstk_darwin(v44);
  if (*(a1 + 12))
  {
    sub_1000FC184(a3, v10, type metadata accessor for MailboxTaskLogger);
    sub_1000FC184(a3, v7, type metadata accessor for MailboxTaskLogger);
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    v49 = sub_1004A4A54();
    v50 = sub_1004A6004();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      v151[0] = swift_slowAlloc();
      *v51 = 68159235;
      *(v51 + 4) = 2;
      *(v51 + 8) = 256;
      v52 = v147;
      v53 = &v7[*(v147 + 20)];
      *(v51 + 10) = *v53;
      *(v51 + 11) = 2082;
      v54 = &v10[*(v52 + 20)];
      *(v51 + 13) = sub_10015BA6C(*(v54 + 1), *(v54 + 2), v151);
      *(v51 + 21) = 1040;
      *(v51 + 23) = 2;
      *(v51 + 27) = 512;
      LOWORD(v53) = *(v53 + 12);
      sub_1000FC254(v7, type metadata accessor for MailboxTaskLogger);
      *(v51 + 29) = v53;
      *(v51 + 31) = 2160;
      *(v51 + 33) = 0x786F626C69616DLL;
      *(v51 + 41) = 2085;
      v55 = *(v54 + 4);
      LODWORD(v54) = *(v54 + 10);

      sub_1000FC254(v10, type metadata accessor for MailboxTaskLogger);
      v149 = v55;
      v150 = v54;
      v56 = sub_1004A5824();
      v58 = sub_10015BA6C(v56, v57, v151);

      *(v51 + 43) = v58;
      _os_log_impl(&_mh_execute_header, v49, v50, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] No Message UID found.", v51, 0x33u);
      swift_arrayDestroy();
LABEL_9:

      return;
    }

    sub_1000FC254(v7, type metadata accessor for MailboxTaskLogger);

    v73 = v10;
LABEL_12:
    v74 = type metadata accessor for MailboxTaskLogger;
LABEL_13:
    sub_1000FC254(v73, v74);
    return;
  }

  v135 = v46;
  v136 = v48;
  v134 = v47;
  v137 = (&v125 - v45);
  v138 = a3;
  v59 = *(a1 + 8);
  v60 = type metadata accessor for NewServerMessages();
  if (*(a1 + 536) & 1) != 0 || (v61 = *(a1 + 512)) == 0 || (*(a1 + 544))
  {
    v62 = v138;
    sub_1000FC184(v138, v16, type metadata accessor for MailboxTaskLogger);
    sub_1000FC184(v62, v13, type metadata accessor for MailboxTaskLogger);
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    v49 = sub_1004A4A54();
    v63 = sub_1004A6004();
    if (os_log_type_enabled(v49, v63))
    {
      v64 = swift_slowAlloc();
      v151[0] = swift_slowAlloc();
      *v64 = 68159235;
      *(v64 + 4) = 2;
      *(v64 + 8) = 256;
      v65 = v147;
      v66 = &v13[*(v147 + 20)];
      *(v64 + 10) = *v66;
      *(v64 + 11) = 2082;
      v67 = &v16[*(v65 + 20)];
      *(v64 + 13) = sub_10015BA6C(*(v67 + 1), *(v67 + 2), v151);
      *(v64 + 21) = 1040;
      *(v64 + 23) = 2;
      *(v64 + 27) = 512;
      LOWORD(v66) = *(v66 + 12);
      sub_1000FC254(v13, type metadata accessor for MailboxTaskLogger);
      *(v64 + 29) = v66;
      *(v64 + 31) = 2160;
      *(v64 + 33) = 0x786F626C69616DLL;
      *(v64 + 41) = 2085;
      v68 = *(v67 + 4);
      v69 = *(v67 + 10);

      sub_1000FC254(v16, type metadata accessor for MailboxTaskLogger);
      v149 = v68;
      v150 = v69;
      v70 = sub_1004A5824();
      v72 = sub_10015BA6C(v70, v71, v151);

      *(v64 + 43) = v72;
      _os_log_impl(&_mh_execute_header, v49, v63, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Ignoring message data.", v64, 0x33u);
      swift_arrayDestroy();
      goto LABEL_9;
    }

    sub_1000FC254(v13, type metadata accessor for MailboxTaskLogger);

    v73 = v16;
    goto LABEL_12;
  }

  v133 = v60;
  v75 = (v146 + *(v60 + 24));
  v130 = *v75;
  v129 = v75[1];
  v128 = v75[2];
  v127 = v75[3];
  v126 = v75[4];
  v76 = *(a1 + 540);
  v131 = *(a1 + 528);
  v132 = v76;
  sub_1000FBCE8(v34);
  sub_1000FC0A4(v34, v31);
  v77 = sub_1004A5384();
  v78 = *(v77 - 8);
  v79 = 1;
  if ((*(v78 + 48))(v31, 1, v77) != 1)
  {
    (*(v78 + 32))(v145, v31, v77);
    v79 = 0;
  }

  v143 = v59 < v143;
  v80 = type metadata accessor for MessageMetadata.UnparsedHeader(0);
  v81 = *(*(v80 - 8) + 56);
  v81(v145, v79, 1, v80);
  v82 = &_mh_execute_header;
  if (!v126)
  {
    v82 = 0;
  }

  v83 = 0x1000000;
  if (!v127)
  {
    v83 = 0;
  }

  v84 = 0x10000;
  if (!v128)
  {
    v84 = 0;
  }

  v85 = 256;
  if (!v129)
  {
    v85 = 0;
  }

  v86 = FlagDecoder.decode(_:)(v61, v85 | v130 | v84 | v83 | v82);
  v88 = v87;
  v151[0] = *(a1 + 520);
  v89 = v38[8];
  v81(&v43[v89], 1, 1, v80);
  *v43 = v59;
  *(v43 + 1) = v131;
  sub_10000E268(v151, &v149, qword_1005CF958, &qword_1004D3040);
  sub_1000FC114(v145, &v43[v89]);
  *(v43 + 2) = v86;
  v43[24] = v88;
  *(v43 + 4) = v151[0];
  *&v43[v38[9]] = v132;
  v43[v38[10]] = v143;
  v90 = v137;
  sub_1000FC1EC(v43, v137, type metadata accessor for MessageMetadata);
  v91 = *(v133 + 20);
  v92 = v144;
  sub_10000E268(v146 + v91, v144, &qword_1005CD1D0, &unk_1004CF2C0);
  LODWORD(v149) = *v90;
  v93 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  LOBYTE(v89) = MessageIdentifierSet.contains(_:)(&v149, v93);
  sub_100025F40(v92, &unk_1005D91B0, &unk_1004CF400);
  if ((v89 & 1) == 0)
  {
    v99 = v142;
    sub_10000E268(v146 + v91, v142, &qword_1005CD1D0, &unk_1004CF2C0);
    v100 = v138;
    v101 = v140;
    sub_1000FC184(v138, v140, type metadata accessor for MailboxTaskLogger);
    v102 = v139;
    sub_1000FC184(v100, v139, type metadata accessor for MailboxTaskLogger);
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    v103 = v135;
    sub_1000FC184(v90, v135, type metadata accessor for MessageMetadata);
    v104 = v141;
    sub_10000E268(v99, v141, &qword_1005CD1D0, &unk_1004CF2C0);
    v105 = sub_1004A4A54();
    v106 = sub_1004A6004();
    if (os_log_type_enabled(v105, v106))
    {
      v107 = swift_slowAlloc();
      LODWORD(v145) = v106;
      v108 = v107;
      v146 = swift_slowAlloc();
      v148 = v146;
      *v108 = 68159747;
      *(v108 + 4) = 2;
      *(v108 + 8) = 256;
      v109 = v147;
      v110 = v102;
      v111 = v102 + *(v147 + 20);
      *(v108 + 10) = *v111;
      *(v108 + 11) = 2082;
      v112 = v101;
      v113 = v101 + *(v109 + 20);
      *(v108 + 13) = sub_10015BA6C(*(v113 + 8), *(v113 + 16), &v148);
      *(v108 + 21) = 1040;
      *(v108 + 23) = 2;
      *(v108 + 27) = 512;
      LOWORD(v111) = *(v111 + 24);
      sub_1000FC254(v110, type metadata accessor for MailboxTaskLogger);
      *(v108 + 29) = v111;
      *(v108 + 31) = 2160;
      *(v108 + 33) = 0x786F626C69616DLL;
      *(v108 + 41) = 2085;
      v114 = *(v113 + 32);
      LODWORD(v113) = *(v113 + 40);

      sub_1000FC254(v112, type metadata accessor for MailboxTaskLogger);
      v149 = v114;
      v150 = v113;
      v115 = sub_1004A5824();
      v117 = sub_10015BA6C(v115, v116, &v148);

      *(v108 + 43) = v117;
      *(v108 + 51) = 1024;
      v118 = *v103;
      sub_1000FC254(v103, type metadata accessor for MessageMetadata);
      *(v108 + 53) = v118;
      *(v108 + 57) = 2082;
      v119 = v141;
      v120 = v144;
      sub_10000E268(v141, v144, &qword_1005CD1D0, &unk_1004CF2C0);
      v121 = MessageIdentifierSet.debugDescription.getter(v93);
      v123 = v122;
      sub_100025F40(v119, &qword_1005CD1D0, &unk_1004CF2C0);
      sub_100025F40(v120, &unk_1005D91B0, &unk_1004CF400);
      v124 = sub_10015BA6C(v121, v123, &v148);

      *(v108 + 59) = v124;
      _os_log_impl(&_mh_execute_header, v105, v145, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Ignoring UID %u outside of range-of-interest %{public}s.", v108, 0x43u);
      swift_arrayDestroy();

      sub_100025F40(v142, &qword_1005CD1D0, &unk_1004CF2C0);
    }

    else
    {
      sub_1000FC254(v103, type metadata accessor for MessageMetadata);
      sub_1000FC254(v102, type metadata accessor for MailboxTaskLogger);

      sub_100025F40(v104, &qword_1005CD1D0, &unk_1004CF2C0);
      sub_1000FC254(v101, type metadata accessor for MailboxTaskLogger);
      sub_100025F40(v99, &qword_1005CD1D0, &unk_1004CF2C0);
    }

    v73 = v90;
    v74 = type metadata accessor for MessageMetadata;
    goto LABEL_13;
  }

  sub_1000FC184(v90, v136, type metadata accessor for MessageMetadata);
  v94 = *(v133 + 36);
  v95 = v146;
  v96 = *(v146 + v94);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v96 = sub_1000862E8(0, v96[2] + 1, 1, v96);
  }

  v98 = v96[2];
  v97 = v96[3];
  if (v98 >= v97 >> 1)
  {
    v96 = sub_1000862E8(v97 > 1, v98 + 1, 1, v96);
  }

  sub_1000FC254(v137, type metadata accessor for MessageMetadata);
  v96[2] = v98 + 1;
  sub_1000FC1EC(v136, v96 + ((*(v134 + 80) + 32) & ~*(v134 + 80)) + *(v134 + 72) * v98, type metadata accessor for MessageMetadata);
  *(v95 + v94) = v96;
}

uint64_t sub_1000FBCE8@<X0>(uint64_t a1@<X8>)
{
  v33 = a1;
  v31 = type metadata accessor for MessageData.BodySection();
  v2 = *(v31 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v31);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v30 = &v30 - v7;
  v8 = sub_10000C9C0(&qword_1005CE218, &unk_1004F3FD0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v32 = &v30 - v10;
  v11 = *(v1 + 200);
  v12 = *(v11 + 16);
  if (v12)
  {
    v13 = v11 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v14 = *(v2 + 72);
    while (1)
    {
      sub_1000FC184(v13, v5, type metadata accessor for MessageData.BodySection);
      v15 = *v5;
      v16 = *(v5 + 1);
      v17 = v5[16];
      v18 = SectionSpecifier.header.unsafeMutableAddressor();
      v20 = *v18;
      v19 = v18[1];
      v21 = *(v18 + 16);

      sub_100051190(v19, v21);
      LOBYTE(v15) = static SectionSpecifier.__derived_struct_equals(_:_:)(v15, v16, v17, v20, v19, v21);

      sub_1000511A4(v19, v21);
      if ((v15 & 1) != 0 && v5[24] == 1)
      {
        break;
      }

      sub_1000FC254(v5, type metadata accessor for MessageData.BodySection);
      v13 += v14;
      if (!--v12)
      {
        goto LABEL_8;
      }
    }

    v22 = v30;
    sub_1000FC1EC(v5, v30, type metadata accessor for MessageData.BodySection);
    v23 = v32;
    sub_10000E268(v22 + *(v31 + 24), v32, &qword_1005CE218, &unk_1004F3FD0);
    sub_1000FC254(v22, type metadata accessor for MessageData.BodySection);
    v24 = type metadata accessor for MessageData.BodyData();
    if ((*(*(v24 - 8) + 48))(v23, 1, v24) != 1)
    {
      v27 = sub_1004A5384();
      v28 = *(v27 - 8);
      v29 = v33;
      (*(v28 + 16))(v33, v23, v27);
      sub_1000FC254(v23, type metadata accessor for MessageData.BodyData);
      return (*(v28 + 56))(v29, 0, 1, v27);
    }

    sub_100025F40(v23, &qword_1005CE218, &unk_1004F3FD0);
  }

LABEL_8:
  v25 = sub_1004A5384();
  return (*(*(v25 - 8) + 56))(v33, 1, 1, v25);
}

uint64_t sub_1000FC0A4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C9C0(&qword_1005D05E0, &qword_1004D65C0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000FC114(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C9C0(&qword_1005D05E8, &unk_1004D4000);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000FC184(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000FC1EC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000FC254(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1000FC2B4@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v30 = a1;
  v31 = a3;
  v4 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v7 = &v30 - v6;
  v8 = sub_10000C9C0(&qword_1005CD518, &qword_1004CF2F0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v30 - v10;
  v12 = sub_10000C9C0(&qword_1005CD1D0, &unk_1004CF2C0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = __chkstk_darwin(v12);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v15);
  v20 = &v30 - v19;
  __chkstk_darwin(v18);
  v22 = &v30 - v21;
  sub_10000E268(a2, v7, &unk_1005D91B0, &unk_1004CF400);
  if (MessageIdentifierSet.count.getter() < 1)
  {
    sub_100025F40(v7, &unk_1005D91B0, &unk_1004CF400);
    v23 = 1;
  }

  else
  {
    sub_100025FDC(v7, v20, &unk_1005D91B0, &unk_1004CF400);
    sub_100025FDC(v20, v11, &qword_1005CD1D0, &unk_1004CF2C0);
    v23 = 0;
  }

  (*(v13 + 56))(v11, v23, 1, v12);
  v24 = (*(v13 + 48))(v11, 1, v12);
  v25 = v31;
  if (v24 == 1)
  {
    sub_100025F40(a2, &unk_1005D91B0, &unk_1004CF400);
    v26 = v30;
    v34 = *v30;
    sub_1000D69D0(&v34);
    v32 = *(v26 + 3);
    v33 = *(v26 + 8);
    sub_10009DA94(&v32);
    sub_100025F40(v11, &qword_1005CD518, &qword_1004CF2F0);
    v27 = 1;
  }

  else
  {
    sub_100025FDC(v11, v22, &qword_1005CD1D0, &unk_1004CF2C0);
    sub_10000E268(v22, v17, &qword_1005CD1D0, &unk_1004CF2C0);
    sub_1000FC674(v30, v17, v25);
    sub_100025F40(a2, &unk_1005D91B0, &unk_1004CF400);
    sub_100025F40(v22, &qword_1005CD1D0, &unk_1004CF2C0);
    v27 = 0;
  }

  v28 = type metadata accessor for NotifyMessagesVanished();
  return (*(*(v28 - 8) + 56))(v25, v27, 1, v28);
}

Swift::Int sub_1000FC64C()
{
  result = sub_100093190(&off_1005990A8);
  qword_1005DDF68 = result;
  return result;
}

uint64_t sub_1000FC674@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for NotifyMessagesVanished();
  v7 = (a3 + v6[7]);
  *v7 = 0xD000000000000016;
  v7[1] = 0x80000001004D3FF0;
  *(a3 + v6[9]) = _swiftEmptySetSingleton;
  *(a3 + v6[10]) = 1;
  v8 = a1[1];
  v17 = *a1;
  v15 = *(a1 + 3);
  v16 = *(a1 + 8);
  LODWORD(v7) = v16;
  *a3 = v17;
  *(a3 + 16) = v8;
  *(a3 + 32) = v7;
  sub_10000E268(a2, a3 + v6[6], &qword_1005CD1D0, &unk_1004CF2C0);
  v13 = *(a1 + 3);
  v14 = *(a1 + 8);
  *(a3 + 40) = v6;

  sub_1000F72C8(&v15, &v11);
  sub_1000F7324(&v17, &v11);
  sub_100026044();
  sub_1004A6674();
  sub_10000C9C0(&qword_1005CD560, &unk_1004CF410);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1004CEAA0;
  v11 = v15;
  v12 = v16;
  *(v9 + 32) = &type metadata for MoveAndCopyMessages;

  sub_1004A6674();
  sub_1000D69D0(&v17);
  sub_10009DA94(&v15);
  result = sub_100025F40(a2, &qword_1005CD1D0, &unk_1004CF2C0);
  *(a3 + v6[8]) = v9;
  return result;
}

uint64_t sub_1000FC844(uint64_t a1)
{
  v88 = type metadata accessor for MailboxTaskLogger(0);
  v3 = *(*(v88 - 8) + 64);
  __chkstk_darwin(v88);
  v91 = &v87 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v93 = &v87 - v6;
  __chkstk_darwin(v7);
  v90 = &v87 - v8;
  __chkstk_darwin(v9);
  v92 = &v87 - v10;
  v11 = sub_10000C9C0(&qword_1005CD7A0, &unk_1004CF590);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v87 = &v87 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v87 - v15;
  v17 = sub_10000C9C0(&qword_1005CD1D0, &unk_1004CF2C0);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  v95 = &v87 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = &v87 - v21;
  __chkstk_darwin(v23);
  v94 = &v87 - v24;
  __chkstk_darwin(v25);
  v27 = &v87 - v26;
  __chkstk_darwin(v28);
  v30 = &v87 - v29;
  v31 = type metadata accessor for NotifyMessagesVanished();
  sub_10000E268(v1 + *(v31 + 24), v30, &qword_1005CD1D0, &unk_1004CF2C0);
  v89 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  MessageIdentifierSet.ranges.getter(v16);
  sub_10000C9C0(&qword_1005CD7B0, &unk_1004D16C0);
  v32 = sub_1004A7044();
  v33 = sub_1004A7074();
  v34 = sub_1004A7044();
  result = sub_1004A7074();
  if (v32 < v34 || result < v32)
  {
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v36 = sub_1004A7044();
  v37 = sub_1004A7074();
  result = sub_100025F40(v16, &qword_1005CD7A0, &unk_1004CF590);
  if (v33 < v36 || v37 < v33)
  {
    goto LABEL_19;
  }

  if (__OFSUB__(v33, v32))
  {
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (v33 - v32 <= 9)
  {
    v38 = v92;
    sub_1000118A4(a1, v92);
    v39 = v90;
    sub_1000118A4(a1, v90);
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    sub_10000E268(v30, v27, &qword_1005CD1D0, &unk_1004CF2C0);
    v40 = v94;
    sub_10000E268(v30, v94, &qword_1005CD1D0, &unk_1004CF2C0);
    v41 = sub_1004A4A54();
    v42 = sub_1004A6034();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v95 = swift_slowAlloc();
      v98 = v95;
      *v43 = 68159747;
      *(v43 + 4) = 2;
      *(v43 + 8) = 256;
      v44 = v88;
      v45 = v39 + *(v88 + 20);
      *(v43 + 10) = *v45;
      *(v43 + 11) = 2082;
      v46 = v38 + *(v44 + 20);
      *(v43 + 13) = sub_10015BA6C(*(v46 + 8), *(v46 + 16), &v98);
      *(v43 + 21) = 1040;
      *(v43 + 23) = 2;
      *(v43 + 27) = 512;
      v47 = *(v45 + 24);
      sub_100011908(v39);
      *(v43 + 29) = v47;
      *(v43 + 31) = 2160;
      *(v43 + 33) = 0x786F626C69616DLL;
      *(v43 + 41) = 2085;
      v48 = *(v46 + 32);
      LODWORD(v45) = *(v46 + 40);

      sub_100011908(v38);
      v96 = v48;
      v97 = v45;
      v49 = sub_1004A5824();
      v51 = sub_10015BA6C(v49, v50, &v98);

      *(v43 + 43) = v51;
      *(v43 + 51) = 2048;
      v52 = v89;
      v53 = MessageIdentifierSet.count.getter();
      sub_100025F40(v27, &qword_1005CD1D0, &unk_1004CF2C0);
      *(v43 + 53) = v53;
      *(v43 + 61) = 2082;
      v54 = v94;
      v55 = MessageIdentifierSet.debugDescription.getter(v52);
      v57 = v56;
      sub_100025F40(v54, &qword_1005CD1D0, &unk_1004CF2C0);
      v58 = sub_10015BA6C(v55, v57, &v98);

      *(v43 + 63) = v58;
      _os_log_impl(&_mh_execute_header, v41, v42, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Created task. %ld UID(s) vanished: %{public}s", v43, 0x47u);
      swift_arrayDestroy();
    }

    else
    {
      sub_100025F40(v27, &qword_1005CD1D0, &unk_1004CF2C0);
      sub_100011908(v39);

      sub_100025F40(v40, &qword_1005CD1D0, &unk_1004CF2C0);
      sub_100011908(v38);
    }

    v59 = v30;
    return sub_100025F40(v59, &qword_1005CD1D0, &unk_1004CF2C0);
  }

  v60 = v93;
  sub_1000118A4(a1, v93);
  v61 = v91;
  sub_1000118A4(a1, v91);
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  sub_10000E268(v30, v22, &qword_1005CD1D0, &unk_1004CF2C0);
  v62 = v95;
  sub_10000E268(v30, v95, &qword_1005CD1D0, &unk_1004CF2C0);
  v63 = sub_1004A4A54();
  v64 = sub_1004A6034();
  if (!os_log_type_enabled(v63, v64))
  {
    sub_100025F40(v22, &qword_1005CD1D0, &unk_1004CF2C0);
    sub_100011908(v61);

    sub_100025F40(v62, &qword_1005CD1D0, &unk_1004CF2C0);
    sub_100011908(v60);
    v59 = v30;
    return sub_100025F40(v59, &qword_1005CD1D0, &unk_1004CF2C0);
  }

  v65 = swift_slowAlloc();
  v94 = swift_slowAlloc();
  v98 = v94;
  *v65 = 68159747;
  *(v65 + 4) = 2;
  *(v65 + 8) = 256;
  v66 = v88;
  v67 = v61 + *(v88 + 20);
  *(v65 + 10) = *v67;
  *(v65 + 11) = 2082;
  v68 = v60;
  v69 = v60 + *(v66 + 20);
  *(v65 + 13) = sub_10015BA6C(*(v69 + 8), *(v69 + 16), &v98);
  *(v65 + 21) = 1040;
  *(v65 + 23) = 2;
  *(v65 + 27) = 512;
  v70 = *(v67 + 24);
  sub_100011908(v61);
  *(v65 + 29) = v70;
  *(v65 + 31) = 2160;
  *(v65 + 33) = 0x786F626C69616DLL;
  *(v65 + 41) = 2085;
  v71 = *(v69 + 32);
  LODWORD(v67) = *(v69 + 40);
  v72 = v95;

  sub_100011908(v68);
  v96 = v71;
  v97 = v67;
  v73 = sub_1004A5824();
  v75 = sub_10015BA6C(v73, v74, &v98);

  *(v65 + 43) = v75;
  *(v65 + 51) = 2048;
  v76 = MessageIdentifierSet.count.getter();
  sub_100025F40(v22, &qword_1005CD1D0, &unk_1004CF2C0);
  *(v65 + 53) = v76;
  *(v65 + 61) = 2082;
  result = sub_1000E5314();
  if ((result & 0x100000000) != 0)
  {
    goto LABEL_22;
  }

  v77 = result;
  v78 = v87;
  MessageIdentifierSet.ranges.getter(v87);
  v79 = sub_1000E4C0C();
  v81 = v80;
  result = sub_100025F40(v78, &qword_1005CD7A0, &unk_1004CF590);
  if ((v81 & 1) == 0)
  {
    if (HIDWORD(v79) >= v77)
    {
      v96 = __PAIR64__(HIDWORD(v79), v77);
      v82 = sub_10000C9C0(&qword_1005CD198, &qword_1004CEC20);
      v83 = MessageIdentifierRange.debugDescription.getter(v82);
      v85 = v84;
      sub_100025F40(v72, &qword_1005CD1D0, &unk_1004CF2C0);
      v86 = sub_10015BA6C(v83, v85, &v98);

      *(v65 + 63) = v86;
      _os_log_impl(&_mh_execute_header, v63, v64, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Created task. %ld UID(s) vanished in range %{public}s.", v65, 0x47u);
      swift_arrayDestroy();

      v59 = v30;
      return sub_100025F40(v59, &qword_1005CD1D0, &unk_1004CF2C0);
    }

    goto LABEL_21;
  }

LABEL_23:
  __break(1u);
  return result;
}

uint64_t sub_1000FD200(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v124 = a3;
  v127 = a2;
  v121 = type metadata accessor for MailboxTaskLogger(0);
  v4 = *(*(v121 - 8) + 64);
  __chkstk_darwin(v121);
  v118 = &v114 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v120 = &v114 - v7;
  __chkstk_darwin(v8);
  v117 = &v114 - v9;
  __chkstk_darwin(v10);
  v119 = &v114 - v11;
  v12 = sub_10000C9C0(&qword_1005CD7A0, &unk_1004CF590);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v115 = &v114 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v125 = &v114 - v16;
  v17 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17);
  v20 = &v114 - v19;
  v21 = sub_10000C9C0(&qword_1005CD518, &qword_1004CF2F0);
  v22 = *(*(v21 - 8) + 64);
  __chkstk_darwin(v21 - 8);
  v24 = &v114 - v23;
  v25 = sub_10000C9C0(&qword_1005CD1D0, &unk_1004CF2C0);
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  __chkstk_darwin(v25);
  v122 = &v114 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v128 = &v114 - v30;
  __chkstk_darwin(v31);
  v123 = &v114 - v32;
  __chkstk_darwin(v33);
  v116 = &v114 - v34;
  __chkstk_darwin(v35);
  v37 = &v114 - v36;
  __chkstk_darwin(v38);
  v126 = &v114 - v39;
  __chkstk_darwin(v40);
  v42 = &v114 - v41;
  v43 = type metadata accessor for NotifyMessagesVanished();
  sub_10000E268(v127 + *(v43 + 24), v42, &qword_1005CD1D0, &unk_1004CF2C0);
  v44 = a1 + *(type metadata accessor for MailboxSyncState() + 48);
  v45 = *(type metadata accessor for PendingServerResponses() + 24);
  sub_10000C9C0(&qword_1005CD7A8, &unk_1004CF5A0);
  sub_1004A70F4();
  sub_100025F40(v42, &unk_1005D91B0, &unk_1004CF400);
  sub_10000E268(v44 + v45, v20, &unk_1005D91B0, &unk_1004CF400);
  v127 = v17;
  if (MessageIdentifierSet.count.getter() < 1)
  {
    sub_100025F40(v20, &unk_1005D91B0, &unk_1004CF400);
    v46 = 1;
  }

  else
  {
    sub_100025FDC(v20, v37, &unk_1005D91B0, &unk_1004CF400);
    sub_100025FDC(v37, v24, &qword_1005CD1D0, &unk_1004CF2C0);
    v46 = 0;
  }

  (*(v26 + 56))(v24, v46, 1, v25);
  v47 = (*(v26 + 48))(v24, 1, v25);
  v48 = v128;
  if (v47 == 1)
  {
    v49 = &qword_1005CD518;
    v50 = &qword_1004CF2F0;
    v51 = v24;
    return sub_100025F40(v51, v49, v50);
  }

  v52 = v24;
  v53 = v126;
  sub_100025FDC(v52, v126, &qword_1005CD1D0, &unk_1004CF2C0);
  v54 = v125;
  MessageIdentifierSet.ranges.getter(v125);
  sub_10000C9C0(&qword_1005CD7B0, &unk_1004D16C0);
  v55 = sub_1004A7044();
  v56 = sub_1004A7074();
  v57 = sub_1004A7044();
  result = sub_1004A7074();
  if (v55 < v57 || result < v55)
  {
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v59 = sub_1004A7044();
  v60 = sub_1004A7074();
  result = sub_100025F40(v54, &qword_1005CD7A0, &unk_1004CF590);
  if (v56 < v59 || v60 < v56)
  {
    goto LABEL_25;
  }

  if (__OFSUB__(v56, v55))
  {
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  if (v56 - v55 <= 9)
  {
    v61 = v124;
    v62 = v119;
    sub_1000118A4(v124, v119);
    v63 = v117;
    sub_1000118A4(v61, v117);
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    v64 = v116;
    sub_10000E268(v53, v116, &qword_1005CD1D0, &unk_1004CF2C0);
    v65 = v123;
    sub_10000E268(v53, v123, &qword_1005CD1D0, &unk_1004CF2C0);
    v66 = sub_1004A4A54();
    v67 = sub_1004A6034();
    if (os_log_type_enabled(v66, v67))
    {
      v68 = swift_slowAlloc();
      LODWORD(v125) = v67;
      v69 = v68;
      v128 = swift_slowAlloc();
      v131 = v128;
      *v69 = 68159747;
      *(v69 + 4) = 2;
      *(v69 + 8) = 256;
      v70 = v121;
      v71 = v64;
      v72 = v62;
      v73 = v63 + *(v121 + 20);
      *(v69 + 10) = *v73;
      *(v69 + 11) = 2082;
      v74 = v127;
      v75 = v72 + *(v70 + 20);
      *(v69 + 13) = sub_10015BA6C(*(v75 + 8), *(v75 + 16), &v131);
      *(v69 + 21) = 1040;
      *(v69 + 23) = 2;
      *(v69 + 27) = 512;
      v76 = *(v73 + 24);
      sub_100011908(v63);
      *(v69 + 29) = v76;
      *(v69 + 31) = 2160;
      *(v69 + 33) = 0x786F626C69616DLL;
      *(v69 + 41) = 2085;
      v77 = *(v75 + 32);
      LODWORD(v73) = *(v75 + 40);

      sub_100011908(v72);
      v129 = v77;
      v130 = v73;
      v78 = sub_1004A5824();
      v80 = sub_10015BA6C(v78, v79, &v131);

      *(v69 + 43) = v80;
      *(v69 + 51) = 2048;
      v81 = MessageIdentifierSet.count.getter();
      sub_100025F40(v71, &qword_1005CD1D0, &unk_1004CF2C0);
      *(v69 + 53) = v81;
      *(v69 + 61) = 2082;
      v82 = v123;
      v83 = MessageIdentifierSet.debugDescription.getter(v74);
      v85 = v84;
      sub_100025F40(v82, &qword_1005CD1D0, &unk_1004CF2C0);
      v86 = sub_10015BA6C(v83, v85, &v131);

      *(v69 + 63) = v86;
      _os_log_impl(&_mh_execute_header, v66, v125, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Done. Still %ld vanished UID(s) remaining: %{public}s", v69, 0x47u);
      swift_arrayDestroy();

      v51 = v53;
      v49 = &qword_1005CD1D0;
      v50 = &unk_1004CF2C0;
      return sub_100025F40(v51, v49, v50);
    }

    sub_100025F40(v64, &qword_1005CD1D0, &unk_1004CF2C0);
    sub_100011908(v63);

    sub_100025F40(v65, &qword_1005CD1D0, &unk_1004CF2C0);
    v113 = v62;
    goto LABEL_21;
  }

  v87 = v124;
  v88 = v120;
  sub_1000118A4(v124, v120);
  v89 = v118;
  sub_1000118A4(v87, v118);
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  sub_10000E268(v53, v48, &qword_1005CD1D0, &unk_1004CF2C0);
  v90 = v122;
  sub_10000E268(v53, v122, &qword_1005CD1D0, &unk_1004CF2C0);
  v91 = sub_1004A4A54();
  v92 = sub_1004A6034();
  if (!os_log_type_enabled(v91, v92))
  {
    sub_100025F40(v48, &qword_1005CD1D0, &unk_1004CF2C0);
    sub_100011908(v89);

    sub_100025F40(v90, &qword_1005CD1D0, &unk_1004CF2C0);
    v113 = v88;
LABEL_21:
    sub_100011908(v113);
    goto LABEL_22;
  }

  LODWORD(v125) = v92;
  v93 = swift_slowAlloc();
  v124 = swift_slowAlloc();
  v131 = v124;
  *v93 = 68159747;
  *(v93 + 4) = 2;
  *(v93 + 8) = 256;
  v94 = v121;
  v95 = v89 + *(v121 + 20);
  *(v93 + 10) = *v95;
  *(v93 + 11) = 2082;
  v96 = v88 + *(v94 + 20);
  *(v93 + 13) = sub_10015BA6C(*(v96 + 8), *(v96 + 16), &v131);
  *(v93 + 21) = 1040;
  *(v93 + 23) = 2;
  *(v93 + 27) = 512;
  v97 = *(v95 + 24);
  sub_100011908(v89);
  *(v93 + 29) = v97;
  *(v93 + 31) = 2160;
  *(v93 + 33) = 0x786F626C69616DLL;
  *(v93 + 41) = 2085;
  v98 = *(v96 + 32);
  LODWORD(v95) = *(v96 + 40);

  sub_100011908(v88);
  v129 = v98;
  v130 = v95;
  v99 = sub_1004A5824();
  v101 = sub_10015BA6C(v99, v100, &v131);

  *(v93 + 43) = v101;
  *(v93 + 51) = 2048;
  v102 = MessageIdentifierSet.count.getter();
  sub_100025F40(v48, &qword_1005CD1D0, &unk_1004CF2C0);
  *(v93 + 53) = v102;
  *(v93 + 61) = 2082;
  result = sub_1000E5314();
  if ((result & 0x100000000) != 0)
  {
    goto LABEL_28;
  }

  v103 = result;
  v104 = v115;
  MessageIdentifierSet.ranges.getter(v115);
  v105 = sub_1000E4C0C();
  v107 = v106;
  result = sub_100025F40(v104, &qword_1005CD7A0, &unk_1004CF590);
  if ((v107 & 1) == 0)
  {
    if (HIDWORD(v105) >= v103)
    {
      v129 = __PAIR64__(HIDWORD(v105), v103);
      v108 = sub_10000C9C0(&qword_1005CD198, &qword_1004CEC20);
      v109 = MessageIdentifierRange.debugDescription.getter(v108);
      v111 = v110;
      sub_100025F40(v122, &qword_1005CD1D0, &unk_1004CF2C0);
      v112 = sub_10015BA6C(v109, v111, &v131);

      *(v93 + 63) = v112;
      _os_log_impl(&_mh_execute_header, v91, v125, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Done. Still %ld vanished UID(s) remaining in range %{public}s.", v93, 0x47u);
      swift_arrayDestroy();

LABEL_22:
      v51 = v53;
      v49 = &qword_1005CD1D0;
      v50 = &unk_1004CF2C0;
      return sub_100025F40(v51, v49, v50);
    }

    goto LABEL_27;
  }

LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_1000FDE5C()
{
  if (qword_1005CCE70 != -1)
  {
    swift_once();
  }
}

uint64_t type metadata accessor for NotifyMessagesVanished()
{
  result = qword_1005D0648;
  if (!qword_1005D0648)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1000FDF20@<X0>(uint64_t a1@<X1>, uint64_t a2@<X3>, uint64_t a3@<X6>, uint64_t *a4@<X8>)
{
  result = sub_10002078C(a1, a2);
  if (result)
  {
    v8 = 0xF000000000000007;
  }

  else
  {
    v9 = sub_10000C9C0(&qword_1005CD530, &unk_1004D40A0);
    v10 = swift_allocBox();
    v11 = *(v9 + 48);
    v12 = v4[1];
    *v13 = *v4;
    v13[1] = v12;
    sub_10000E268(v4 + *(a3 + 24), v13 + v11, &qword_1005CD1D0, &unk_1004CF2C0);
    v8 = v10 | 0x3000000000000000;
  }

  *a4 = v8;
  return result;
}

uint64_t sub_1000FDFC8(uint64_t result)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  if (*(result + 192) == 1)
  {
    v5 = *(result + 176);
    v4 = *(result + 184);
    v9 = *(result + 168);
    v6 = v9;
    v7 = result;

    sub_1000BE940(&v9, v2, v3, 0, sub_1000FE50C);
    result = sub_100020D58(v6, v5, v4, 1);
    v8 = v9;
    *(v7 + 176) = 0;
    *(v7 + 184) = 0;
    *(v7 + 168) = v8;
    *(v7 + 192) = 1;
  }

  return result;
}

uint64_t sub_1000FE080(uint64_t a1)
{
  v2 = (v1 + *(a1 + 28));
  v3 = *v2;
  v4 = v2[1];

  return v3;
}

uint64_t sub_1000FE0CC(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_10000C9C0(&qword_1005CD1D0, &unk_1004CF2C0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_1000FE19C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_10000C9C0(&qword_1005CD1D0, &unk_1004CF2C0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_1000FE24C()
{
  sub_1000FE3D0(319, &qword_1005CE2B8, sub_100016948, &type metadata for UID, type metadata accessor for MessageIdentifierSetNonEmpty);
  if (v0 <= 0x3F)
  {
    sub_1000FE380();
    if (v1 <= 0x3F)
    {
      sub_1000FE3D0(319, &qword_1005CD828, sub_10002AB18, &type metadata for SyncStep, &type metadata accessor for Set);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1000FE380()
{
  if (!qword_1005D0658)
  {
    v0 = sub_1004A5CD4();
    if (!v1)
    {
      atomic_store(v0, &qword_1005D0658);
    }
  }
}

void sub_1000FE3D0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

unint64_t sub_1000FE438()
{
  result = qword_1005D06A0;
  if (!qword_1005D06A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D06A0);
  }

  return result;
}

unint64_t sub_1000FE48C(uint64_t a1)
{
  result = sub_1000FE4B4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1000FE4B4()
{
  result = qword_1005D0758;
  if (!qword_1005D0758)
  {
    type metadata accessor for NotifyMessagesVanished();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D0758);
  }

  return result;
}

void sub_1000FE52C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 184);
  v4 = *(a1 + 216);
  v38 = *(a1 + 200);
  v39[0] = v4;
  *(v39 + 12) = *(a1 + 228);
  v36 = *(a1 + 168);
  v37 = v3;
  v5 = sub_1000B7A20();
  v6 = v5;
  v29 = a1;
  v7 = *(a1 + 64);
  v8 = v7 + 64;
  v9 = 1 << *(v7 + 32);
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & *(v7 + 64);
  v12 = (v9 + 63) >> 6;
  v13 = v5 + 56;

  v14 = 0;
  v15 = _swiftEmptyArrayStorage;
  v31 = v6;
  v32 = v7;
  while (1)
  {
    v16 = v14;
    if (!v11)
    {
      break;
    }

LABEL_9:
    v17 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v18 = *(*(v7 + 48) + ((v14 << 8) | (4 * v17)));
    if (*(v6 + 16) && (v19 = *(v6 + 40), sub_1004A6E94(), sub_1004A6EE4(v18), v20 = sub_1004A6F14(), v21 = -1 << *(v6 + 32), v22 = v20 & ~v21, ((*(v13 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22) & 1) != 0))
    {
      v23 = ~v21;
      while (*(*(v6 + 48) + 4 * v22) != v18)
      {
        v22 = (v22 + 1) & v23;
        if (((*(v13 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22) & 1) == 0)
        {
          goto LABEL_14;
        }
      }
    }

    else
    {
LABEL_14:
      v35 = v15;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1000920E8(0, v15[2] + 1, 1);
        v15 = v35;
      }

      v25 = v15[2];
      v24 = v15[3];
      if (v25 >= v24 >> 1)
      {
        sub_1000920E8((v24 > 1), v25 + 1, 1);
        v15 = v35;
      }

      v15[2] = v25 + 1;
      *(v15 + v25 + 8) = v18;
      v6 = v31;
      v7 = v32;
    }
  }

  while (1)
  {
    v14 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      __break(1u);
      return;
    }

    if (v14 >= v12)
    {
      break;
    }

    v11 = *(v8 + 8 * v14);
    ++v16;
    if (v11)
    {
      goto LABEL_9;
    }
  }

  sub_1000FF070(v29);

  v26 = sub_1000CE718(v15);

  sub_1000FE7B0(v26, v33);
  if (*&v33[0])
  {
    v27 = v33[3];
    *(a2 + 32) = v33[2];
    *(a2 + 48) = v27;
    *(a2 + 64) = v34;
    v28 = v33[1];
    *a2 = v33[0];
    *(a2 + 16) = v28;
  }

  else
  {
    sub_1000FF0C4(v33);
    *(a2 + 64) = 0;
    *(a2 + 32) = 0u;
    *(a2 + 48) = 0u;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }
}

double sub_1000FE7B0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5[0] = &type metadata for NotifySyncRequestCompletion;
  sub_1004A6674();
  v5[6] = 0xD00000000000001BLL;
  v5[7] = 0x80000001004D4100;
  if (*(a1 + 16))
  {
    v5[8] = a1;
    sub_1000FF12C(v5, a2);
    sub_1000FF164(v5);
  }

  else
  {

    sub_100014BEC(v5);
    *(a2 + 64) = 0;
    result = 0.0;
    *(a2 + 32) = 0u;
    *(a2 + 48) = 0u;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

void sub_1000FE870(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for Task.Logger(0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v7 = &v28[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  __chkstk_darwin(v8);
  v10 = &v28[-v9 - 8];
  sub_1000D696C(a1, &v28[-v9 - 8]);
  sub_1000D696C(a1, v7);
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  sub_1000FF12C(v2, v30);
  sub_1000FF12C(v2, v28);
  v11 = sub_1004A4A54();
  v12 = sub_1004A6034();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    *v13 = 68158722;
    *(v13 + 4) = 2;
    *(v13 + 8) = 256;
    v14 = *&v7[*(v4 + 20)];
    sub_1000FF274(v7);
    *(v13 + 10) = v14;
    *(v13 + 11) = 2082;
    v15 = &v10[*(v4 + 20)];
    v16 = *(v15 + 1);
    v17 = *(v15 + 2);
    v18 = *(v15 + 3);
    v19 = *(v15 + 4);
    v20 = *(v15 + 10);
    sub_100018BD0(*v15, v16, v17, v18);
    sub_1000FF274(v10);
    if (v18 < 0)
    {
    }

    v21 = sub_10015BA6C(v16, v17, &v27);

    *(v13 + 13) = v21;
    *(v13 + 21) = 2048;
    v22 = *(v31 + 16);
    sub_1000FF164(v30);
    *(v13 + 23) = v22;
    *(v13 + 31) = 2082;
    v23 = sub_100134BF8(v29);
    v25 = v24;
    sub_1000FF164(v28);
    v26 = sub_10015BA6C(v23, v25, &v27);

    *(v13 + 33) = v26;
    _os_log_impl(&_mh_execute_header, v11, v12, "[%.*hhx-%{public}s] Created task to notify that %ld sync requests completed: %{public}s.", v13, 0x29u);
    swift_arrayDestroy();
  }

  else
  {
    sub_1000FF164(v30);
    sub_1000FF274(v7);

    sub_1000FF274(v10);
    sub_1000FF164(v28);
  }
}

void sub_1000FEB20(uint64_t a1, uint64_t a2)
{
  v59 = type metadata accessor for Task.Logger(0);
  v5 = *(*(v59 - 8) + 64);
  __chkstk_darwin(v59);
  v7 = &v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v57 - v9;
  v11 = *(v2 + 64);
  v14 = *(v11 + 56);
  v13 = v11 + 56;
  v12 = v14;
  v15 = 1 << *(*(v2 + 64) + 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & v12;
  v18 = (v15 + 63) >> 6;
  v69 = *(v2 + 64);

  v19 = 0;
  *&v20 = 68158978;
  v57 = v20;
  v60 = a2;
  v63 = a1;
  v64 = v10;
  v58 = v7;
  while (v17)
  {
LABEL_10:
    v22 = __clz(__rbit64(v17));
    v17 &= v17 - 1;
    v23 = *(*(v69 + 48) + ((v19 << 8) | (4 * v22)));
    v24 = *(a1 + 64);
    v25 = sub_100067004(v23);
    if (v26)
    {
      v67 = v23;
      v27 = v25;
      v28 = *(a1 + 64);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v30 = *(a1 + 64);
      v70 = v30;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_10013A7B4();
        v30 = v70;
      }

      v31 = v27;
      v32 = (*(v30 + 56) + 32 * v27);
      v33 = *v32;
      v68 = *(v32 + 1);
      v34 = *(v32 + 3);
      sub_10013D3A0(v31, v30);
      *(a1 + 64) = v30;
      v35 = static MonotonicTime.now()();
      v36 = v35 - v34;
      if (v35 >= v34)
      {
        v37 = v64;
        if (__OFSUB__(v35, v34))
        {
          goto LABEL_32;
        }
      }

      else
      {
        v37 = v64;
        if (__OFSUB__(v34, v35))
        {
          goto LABEL_31;
        }

        v36 = v35 - v34;
        if (__OFSUB__(0, v34 - v35))
        {
          goto LABEL_33;
        }
      }

      v38 = v36 / 1000000000.0;
      if (COERCE__INT64(fabs(v38)) > 0x7FEFFFFFFFFFFFFFLL)
      {
        goto LABEL_28;
      }

      if (v38 <= -9.22337204e18)
      {
        goto LABEL_29;
      }

      if (v38 >= 9.22337204e18)
      {
        goto LABEL_30;
      }

      v66 = v33;
      sub_1000D696C(a2, v37);
      sub_1000D696C(a2, v7);
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();

      v39 = sub_1004A4A54();
      v40 = sub_1004A6034();

      v65 = v40;
      if (os_log_type_enabled(v39, v40))
      {
        v62 = v39;
        v41 = v7;
        v42 = swift_slowAlloc();
        v61 = swift_slowAlloc();
        v70 = v61;
        *v42 = v57;
        *(v42 + 4) = 2;
        *(v42 + 8) = 256;
        v43 = v59;
        v44 = v37;
        v45 = *(v41 + *(v59 + 20));
        sub_1000FF274(v41);
        *(v42 + 10) = v45;
        *(v42 + 11) = 2082;
        v46 = v44 + *(v43 + 20);
        v47 = *(v46 + 8);
        v49 = *(v46 + 16);
        v48 = *(v46 + 24);
        v50 = *(v46 + 32);
        v51 = *(v46 + 40);
        sub_100018BD0(*v46, v47, v49, v48);
        sub_1000FF274(v44);
        if (v48 < 0)
        {
        }

        v52 = sub_10015BA6C(v47, v49, &v70);

        *(v42 + 13) = v52;
        *(v42 + 21) = 1024;
        *(v42 + 23) = v67;
        *(v42 + 27) = 2082;

        v53 = v62;
        a1 = v63;
        v54 = sub_1004A6754();
        v56 = sub_10015BA6C(v54, v55, &v70);

        *(v42 + 29) = v56;
        *(v42 + 37) = 2048;
        *(v42 + 39) = v38;
        _os_log_impl(&_mh_execute_header, v53, v65, "[%.*hhx-%{public}s] Sync request #%u (%{public}s) completed after %ld seconds.", v42, 0x2Fu);
        swift_arrayDestroy();

        a2 = v60;
        v7 = v58;
      }

      else
      {
        sub_1000FF274(v7);

        sub_1000FF274(v37);
        a1 = v63;
      }
    }
  }

  while (1)
  {
    v21 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v21 >= v18)
    {

      return;
    }

    v17 = *(v13 + 8 * v21);
    ++v19;
    if (v17)
    {
      v19 = v21;
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
}

unint64_t sub_1000FF008@<X0>(uint64_t a1@<X1>, uint64_t a2@<X3>, uint64_t *a3@<X8>)
{
  result = sub_10001E3D8(a1, a2);
  if (result)
  {
    v6 = 0xF000000000000007;
  }

  else
  {
    v7 = swift_allocObject();
    *(v7 + 16) = *(v3 + 64);
    v6 = v7 | 2;
  }

  *a3 = v6;
  return result;
}

uint64_t sub_1000FF0C4(uint64_t a1)
{
  v2 = sub_10000C9C0(&qword_1005D0760, &unk_1004D4110);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1000FF1A4()
{
  result = qword_1005D0768;
  if (!qword_1005D0768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D0768);
  }

  return result;
}

unint64_t sub_1000FF1F8(uint64_t a1)
{
  result = sub_1000FF220();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1000FF220()
{
  result = qword_1005D07E8;
  if (!qword_1005D07E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D07E8);
  }

  return result;
}

uint64_t sub_1000FF274(uint64_t a1)
{
  v2 = type metadata accessor for Task.Logger(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000FF2D0()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000FF334(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
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
    v10 = type metadata accessor for MessagesPendingDownloadPerPass();
    v11 = *(v10 - 8);
    if (*(v11 + 84) == a2)
    {
      v12 = v10;
      v13 = *(v11 + 48);
      v14 = &a1[*(a3 + 28)];

      return v13(v14, a2, v12);
    }

    else
    {
      v15 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
      v16 = *(*(v15 - 8) + 48);
      v17 = &a1[*(a3 + 32)];

      return v16(v17, a2, v15);
    }
  }
}

_BYTE *sub_1000FF478(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *result = a2 + 1;
  }

  else
  {
    v8 = type metadata accessor for MessagesPendingDownloadPerPass();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = &v5[*(a4 + 28)];

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
      v14 = *(*(v13 - 8) + 56);
      v15 = &v5[*(a4 + 32)];

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t type metadata accessor for PendingPersistenceUpdates()
{
  result = qword_1005D0848;
  if (!qword_1005D0848)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000FF5F0()
{
  type metadata accessor for MessagesPendingDownloadPerPass();
  if (v0 <= 0x3F)
  {
    sub_100050DB8();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void *sub_1000FF68C()
{
  v5 = _swiftEmptySetSingleton;
  if (*v0 == 1)
  {
    sub_100088568(&v2, 6);
  }

  if (v0[1] == 1)
  {
    sub_100088568(&v3, 7);
  }

  if (v0[2] == 1)
  {
    sub_100088568(&v4, 8);
  }

  return v5;
}

uint64_t sub_1000FF71C(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  if (a1[1] != a2[1])
  {
    return 0;
  }

  if (a1[2] != a2[2])
  {
    return 0;
  }

  v4 = type metadata accessor for PendingPersistenceUpdates();
  v5 = *(v4 + 28);
  v6 = &a1[v5];
  v7 = &a2[v5];
  if ((sub_1001145B4(*&a1[v5], *&a2[v5]) & 1) == 0)
  {
    return 0;
  }

  v8 = type metadata accessor for MessagesPendingDownload();
  v9 = *(v8 + 20);
  sub_100016D2C();
  if ((sub_1004A7034() & 1) == 0)
  {
    return 0;
  }

  v10 = type metadata accessor for MessagesPendingDownloadPerPass();
  if ((sub_1001145B4(*&v6[*(v10 + 20)], *&v7[*(v10 + 20)]) & 1) == 0)
  {
    return 0;
  }

  v11 = *(v8 + 20);
  if ((sub_1004A7034() & 1) == 0)
  {
    return 0;
  }

  v12 = *(v4 + 32);

  return sub_1004A7034();
}

uint64_t sub_1000FF880(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1000FF950(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for PendingServerResponses()
{
  result = qword_1005D08E8;
  if (!qword_1005D08E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000FFA4C()
{
  sub_1000FFAD8();
  if (v0 <= 0x3F)
  {
    sub_100050DB8();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_1000FFAD8()
{
  result = qword_1005D08F8;
  if (!qword_1005D08F8)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1005D08F8);
  }

  return result;
}

uint64_t sub_1000FFB58(uint64_t result)
{
  if (result >= 1)
  {
    v4 = *v1;
    if (*(v1 + 8))
    {
      v5 = v4 - result;
      if (!__OFSUB__(v4, result))
      {
        v6 = v5 > 0;
        if (v5 <= 0)
        {
          v7 = _swiftEmptyArrayStorage;
        }

        else
        {
          v7 = (v4 - result);
        }

        goto LABEL_16;
      }

      __break(1u);
    }

    else
    {
      v3 = *(v4 + 16);
      v8 = v3 - result;
      if (v3 < result)
      {
        result = sub_10002A758(*v1, 0);
        v6 = 0;
        v7 = _swiftEmptyArrayStorage;
LABEL_16:
        *v1 = v7;
        *(v1 + 8) = v6;
        return result;
      }

      v2 = result;
      sub_1004A6DA4();
      swift_unknownObjectRetain_n();
      v9 = swift_dynamicCastClass();
      if (!v9)
      {
        swift_unknownObjectRelease();
        v9 = _swiftEmptyArrayStorage;
      }

      v10 = v9[2];

      if (v10 == v8)
      {
        v7 = swift_dynamicCastClass();
        result = swift_unknownObjectRelease();
        if (v7)
        {
LABEL_15:
          v6 = 0;
          goto LABEL_16;
        }

        v7 = _swiftEmptyArrayStorage;
LABEL_14:
        result = swift_unknownObjectRelease();
        goto LABEL_15;
      }
    }

    swift_unknownObjectRelease();
    sub_1000B13B4(v4, v4 + 32, v2, (2 * v3) | 1);
    v7 = v11;
    goto LABEL_14;
  }

  return result;
}

uint64_t sub_1000FFC98(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v6 = *v3++;
    v5 = v6;
    v7 = *v4++;
    result = v5 == v7;
    if (v5 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1000FFCF4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      v11 = 1;
    }

    else
    {
      v3 = (a1 + 48);
      v4 = (a2 + 48);
      do
      {
        v6 = *(v3 - 1);
        v5 = *v3;
        v7 = *(v3 - 4);
        v8 = *(v4 - 4);
        v9 = *(v4 - 1);
        v10 = *v4;
        sub_1000C9E18(v6, *v3);
        sub_1000C9E18(v9, v10);
        v11 = static SearchRequest.__derived_struct_equals(_:_:)(v7, v6, v5, v8, v9, v10);
        sub_1000C9EF0(v9, v10);
        sub_1000C9EF0(v6, v5);
        if ((v11 & 1) == 0)
        {
          break;
        }

        v3 += 3;
        v4 += 3;
        --v2;
      }

      while (v2);
    }
  }

  else
  {
    v11 = 0;
  }

  return v11 & 1;
}

uint64_t sub_1000FFDEC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      v8 = 1;
    }

    else
    {
      v3 = a1 + 32;
      v4 = a2 + 32;
      do
      {
        v5 = *(v3 + 16);
        v11[0] = *v3;
        v11[1] = v5;
        v11[2] = *(v3 + 32);
        v12 = *(v3 + 48);
        v6 = *(v4 + 16);
        v13[0] = *v4;
        v7 = *(v4 + 32);
        v13[1] = v6;
        v13[2] = v7;
        v14 = *(v4 + 48);
        sub_100104FE8(v11, v10);
        sub_100104FE8(v13, v10);
        v8 = static DownloadRequest.__derived_struct_equals(_:_:)(v11, v13);
        sub_100105044(v13);
        sub_100105044(v11);
        if ((v8 & 1) == 0)
        {
          break;
        }

        v4 += 56;
        v3 += 56;
        --v2;
      }

      while (v2);
    }
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

BOOL sub_1000FFEE8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    else
    {
      v3 = (a1 + 32);
      v4 = (a2 + 32);
      do
      {
        v5 = v3[9];
        v18[8] = v3[8];
        v18[9] = v5;
        v18[10] = v3[10];
        v6 = v3[5];
        v18[4] = v3[4];
        v18[5] = v6;
        v7 = v3[7];
        v18[6] = v3[6];
        v18[7] = v7;
        v8 = v3[1];
        v18[0] = *v3;
        v18[1] = v8;
        v9 = v3[3];
        v18[2] = v3[2];
        v18[3] = v9;
        v10 = v4[9];
        v19[8] = v4[8];
        v19[9] = v10;
        v19[10] = v4[10];
        v11 = v4[5];
        v19[4] = v4[4];
        v19[5] = v11;
        v12 = v4[7];
        v19[6] = v4[6];
        v19[7] = v12;
        v13 = v4[1];
        v19[0] = *v4;
        v19[1] = v13;
        v14 = v4[3];
        v19[2] = v4[2];
        v19[3] = v14;
        sub_10000E08C(v18, v17);
        sub_10000E08C(v19, v17);
        v15 = sub_10009D400(v18, v19);
        sub_10000E0E8(v19);
        sub_10000E0E8(v18);
        if (!v15)
        {
          break;
        }

        v3 += 11;
        v4 += 11;
        --v2;
      }

      while (v2);
    }
  }

  else
  {
    return 0;
  }

  return v15;
}

uint64_t sub_100100010(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || a1 == a2)
  {
    return 1;
  }

  v3 = 0;
  v4 = a1 + 32;
  v89 = a2 + 32;
  v86 = a1 + 32;
  while (1)
  {
    if (v3 == v2)
    {
      goto LABEL_161;
    }

    v5 = v4 + 48 * v3;
    v7 = *v5;
    v6 = *(v5 + 8);
    v8 = *(v5 + 16);
    v10 = *(v5 + 24);
    v9 = *(v5 + 32);
    v11 = *(v5 + 40);
    v12 = v89 + 48 * v3;
    v14 = *v12;
    v13 = *(v12 + 8);
    v15 = *(v12 + 16);
    v17 = *(v12 + 24);
    v16 = *(v12 + 32);
    v18 = *(v12 + 40);
    v19 = v6 >> 62;
    v20 = v13 >> 62;
    v96 = v14;
    v90 = v18;
    v91 = v11;
    v92 = v16;
    v93 = v9;
    v94 = v15;
    v95 = v8;
    if (v6 >> 62 == 3)
    {
      if (v7)
      {
        v21 = 0;
      }

      else
      {
        v21 = v6 == 0xC000000000000000;
      }

      if (v21 && v13 >> 62 == 3 && !v14 && v13 == 0xC000000000000000)
      {
        sub_100014CEC(0, 0xC000000000000000);

        v24 = 0;
        v25 = 0xC000000000000000;
        goto LABEL_50;
      }

LABEL_30:
      v26 = 0;
      if (v20 <= 1)
      {
        goto LABEL_28;
      }

      goto LABEL_31;
    }

    if (v19 > 1)
    {
      if (v19 != 2)
      {
        goto LABEL_30;
      }

      v28 = *(v7 + 16);
      v27 = *(v7 + 24);
      v29 = __OFSUB__(v27, v28);
      v26 = v27 - v28;
      if (v29)
      {
        goto LABEL_164;
      }

      if (v20 <= 1)
      {
        goto LABEL_28;
      }
    }

    else if (v19)
    {
      LODWORD(v26) = HIDWORD(v7) - v7;
      if (__OFSUB__(HIDWORD(v7), v7))
      {
        goto LABEL_165;
      }

      v26 = v26;
      if (v20 <= 1)
      {
LABEL_28:
        if (v20)
        {
          LODWORD(v30) = HIDWORD(v14) - v14;
          if (__OFSUB__(HIDWORD(v14), v14))
          {
            goto LABEL_162;
          }

          v30 = v30;
        }

        else
        {
          v30 = BYTE6(v13);
        }

        goto LABEL_37;
      }
    }

    else
    {
      v26 = BYTE6(v6);
      if (v20 <= 1)
      {
        goto LABEL_28;
      }
    }

LABEL_31:
    if (v20 != 2)
    {
      if (v26)
      {
        return 0;
      }

LABEL_49:
      sub_100014CEC(v7, v6);

      v24 = v14;
      v25 = v13;
LABEL_50:
      sub_100014CEC(v24, v25);

      goto LABEL_142;
    }

    v32 = *(v14 + 16);
    v31 = *(v14 + 24);
    v29 = __OFSUB__(v31, v32);
    v30 = v31 - v32;
    if (v29)
    {
      goto LABEL_163;
    }

LABEL_37:
    if (v26 != v30)
    {
      return 0;
    }

    if (v26 < 1)
    {
      goto LABEL_49;
    }

    v87 = v6;
    if (v19 <= 1)
    {
      if (!v19)
      {
        __s1[0] = v7;
        LOWORD(__s1[1]) = v6;
        BYTE2(__s1[1]) = BYTE2(v6);
        BYTE3(__s1[1]) = BYTE3(v6);
        BYTE4(__s1[1]) = BYTE4(v6);
        BYTE5(__s1[1]) = BYTE5(v6);
        if (v20)
        {
          if (v20 == 1)
          {
            v33 = v14;
            v88 = (v14 >> 32) - v14;
            if (v14 >> 32 < v14)
            {
              goto LABEL_169;
            }

            sub_100014CEC(v7, v6);

            sub_100014CEC(v14, v13);

            v34 = sub_1004A40D4();
            if (!v34)
            {
              goto LABEL_196;
            }

            v35 = v34;
            v36 = sub_1004A4104();
            if (__OFSUB__(v33, v36))
            {
              goto LABEL_174;
            }

            v37 = (v33 - v36 + v35);
            result = sub_1004A40F4();
            if (!v37)
            {
              goto LABEL_195;
            }

LABEL_110:
            if (result >= v88)
            {
              v66 = v88;
            }

            else
            {
              v66 = result;
            }

            v61 = memcmp(__s1, v37, v66);
            goto LABEL_114;
          }

          v58 = *(v14 + 16);
          v85 = *(v14 + 24);
          sub_100014CEC(v7, v6);

          sub_100014CEC(v14, v13);

          v46 = sub_1004A40D4();
          if (v46)
          {
            v59 = sub_1004A4104();
            if (__OFSUB__(v58, v59))
            {
              goto LABEL_179;
            }

            v46 += v58 - v59;
          }

          v48 = v85 - v58;
          if (__OFSUB__(v85, v58))
          {
            goto LABEL_172;
          }

          result = sub_1004A40F4();
          if (!v46)
          {
            goto LABEL_194;
          }

          goto LABEL_102;
        }

LABEL_70:
        v97 = v14;
        v98 = v13;
        v99 = BYTE2(v13);
        v100 = BYTE3(v13);
        v101 = BYTE4(v13);
        v102 = BYTE5(v13);
        sub_100014CEC(v7, v6);

        sub_100014CEC(v14, v13);

        v49 = __s1;
        v50 = &v97;
        v51 = BYTE6(v13);
        v4 = v86;
        goto LABEL_141;
      }

      if (v7 > v7 >> 32)
      {
        goto LABEL_166;
      }

      sub_100014CEC(v7, v6);

      sub_100014CEC(v14, v13);

      v42 = sub_1004A40D4();
      if (v42)
      {
        v43 = v42;
        v44 = sub_1004A4104();
        if (__OFSUB__(v7, v44))
        {
          goto LABEL_168;
        }

        v81 = (v7 - v44 + v43);
      }

      else
      {
        v81 = 0;
      }

      sub_1004A40F4();
      if (v20 == 2)
      {
        v72 = *(v96 + 16);
        v73 = *(v96 + 24);
        v52 = sub_1004A40D4();
        if (v52)
        {
          v74 = sub_1004A4104();
          if (__OFSUB__(v72, v74))
          {
            goto LABEL_182;
          }

          v52 += v72 - v74;
        }

        v29 = __OFSUB__(v73, v72);
        v75 = v73 - v72;
        if (v29)
        {
          goto LABEL_178;
        }

        v76 = sub_1004A40F4();
        if (v76 >= v75)
        {
          v55 = v75;
        }

        else
        {
          v55 = v76;
        }

        v49 = v81;
        if (!v81)
        {
          goto LABEL_193;
        }

        v4 = v86;
        v6 = v87;
        if (!v52)
        {
          goto LABEL_192;
        }

        goto LABEL_137;
      }

      if (v20 == 1)
      {
        if (v96 >> 32 < v96)
        {
          goto LABEL_177;
        }

        v52 = sub_1004A40D4();
        if (v52)
        {
          v56 = sub_1004A4104();
          if (__OFSUB__(v96, v56))
          {
            goto LABEL_184;
          }

          v52 += v96 - v56;
        }

        v57 = sub_1004A40F4();
        if (v57 >= (v96 >> 32) - v96)
        {
          v55 = (v96 >> 32) - v96;
        }

        else
        {
          v55 = v57;
        }

        v49 = v81;
        if (!v81)
        {
          goto LABEL_191;
        }

        v4 = v86;
        if (!v52)
        {
          goto LABEL_190;
        }

        goto LABEL_137;
      }

      v4 = v86;
      v49 = v81;
      __s1[0] = v96;
      LOWORD(__s1[1]) = v13;
      BYTE2(__s1[1]) = BYTE2(v13);
      BYTE3(__s1[1]) = BYTE3(v13);
      BYTE4(__s1[1]) = BYTE4(v13);
      BYTE5(__s1[1]) = BYTE5(v13);
      if (!v81)
      {
        goto LABEL_189;
      }

      goto LABEL_140;
    }

    if (v19 != 2)
    {
      memset(__s1, 0, 14);
      if (v20)
      {
        if (v20 != 2)
        {
          v62 = v14;
          v88 = (v14 >> 32) - v14;
          if (v14 >> 32 < v14)
          {
            goto LABEL_170;
          }

          sub_100014CEC(v7, v6);

          sub_100014CEC(v14, v13);

          v63 = sub_1004A40D4();
          if (!v63)
          {
            goto LABEL_197;
          }

          v64 = v63;
          v65 = sub_1004A4104();
          if (__OFSUB__(v62, v65))
          {
            goto LABEL_175;
          }

          v37 = (v62 - v65 + v64);
          result = sub_1004A40F4();
          if (!v37)
          {
            goto LABEL_198;
          }

          goto LABEL_110;
        }

        v45 = *(v14 + 16);
        v84 = *(v14 + 24);
        sub_100014CEC(v7, v6);

        sub_100014CEC(v14, v13);

        v46 = sub_1004A40D4();
        if (v46)
        {
          v47 = sub_1004A4104();
          if (__OFSUB__(v45, v47))
          {
            goto LABEL_180;
          }

          v46 += v45 - v47;
        }

        v48 = v84 - v45;
        if (__OFSUB__(v84, v45))
        {
          goto LABEL_171;
        }

        result = sub_1004A40F4();
        if (!v46)
        {
          goto LABEL_199;
        }

LABEL_102:
        if (result >= v48)
        {
          v60 = v48;
        }

        else
        {
          v60 = result;
        }

        v61 = memcmp(__s1, v46, v60);
        v6 = v87;
LABEL_114:
        v4 = v86;
        if (v61)
        {
          goto LABEL_157;
        }

        goto LABEL_142;
      }

      goto LABEL_70;
    }

    v82 = *(v7 + 16);
    sub_100014CEC(v7, v6);

    sub_100014CEC(v14, v13);

    v39 = sub_1004A40D4();
    if (v39)
    {
      v40 = v39;
      v41 = sub_1004A4104();
      if (__OFSUB__(v82, v41))
      {
        goto LABEL_167;
      }

      v83 = (v82 - v41 + v40);
    }

    else
    {
      v83 = 0;
    }

    sub_1004A40F4();
    if (v20 == 2)
    {
      v67 = *(v96 + 16);
      v68 = *(v96 + 24);
      v52 = sub_1004A40D4();
      if (v52)
      {
        v69 = sub_1004A4104();
        if (__OFSUB__(v67, v69))
        {
          goto LABEL_181;
        }

        v52 += v67 - v69;
      }

      v29 = __OFSUB__(v68, v67);
      v70 = v68 - v67;
      if (v29)
      {
        goto LABEL_176;
      }

      v71 = sub_1004A40F4();
      if (v71 >= v70)
      {
        v55 = v70;
      }

      else
      {
        v55 = v71;
      }

      v49 = v83;
      if (!v83)
      {
        goto LABEL_188;
      }

      v4 = v86;
      v6 = v87;
      if (!v52)
      {
        goto LABEL_187;
      }

      goto LABEL_137;
    }

    if (v20 == 1)
    {
      if (v96 >> 32 < v96)
      {
        goto LABEL_173;
      }

      v52 = sub_1004A40D4();
      if (v52)
      {
        v53 = sub_1004A4104();
        if (__OFSUB__(v96, v53))
        {
          goto LABEL_183;
        }

        v52 += v96 - v53;
      }

      v54 = sub_1004A40F4();
      if (v54 >= (v96 >> 32) - v96)
      {
        v55 = (v96 >> 32) - v96;
      }

      else
      {
        v55 = v54;
      }

      v49 = v83;
      if (!v83)
      {
        goto LABEL_186;
      }

      v4 = v86;
      if (!v52)
      {
        goto LABEL_185;
      }

LABEL_137:
      if (v49 == v52)
      {
        goto LABEL_142;
      }

      v51 = v55;
      v50 = v52;
      goto LABEL_141;
    }

    v49 = v83;
    v4 = v86;
    __s1[0] = v96;
    LOWORD(__s1[1]) = v13;
    BYTE2(__s1[1]) = BYTE2(v13);
    BYTE3(__s1[1]) = BYTE3(v13);
    BYTE4(__s1[1]) = BYTE4(v13);
    BYTE5(__s1[1]) = BYTE5(v13);
    if (!v83)
    {
      break;
    }

LABEL_140:
    v51 = BYTE6(v13);
    v50 = __s1;
LABEL_141:
    if (memcmp(v49, v50, v51))
    {
      goto LABEL_157;
    }

LABEL_142:
    if (v95 != v94)
    {
LABEL_157:
      v77 = v96;
LABEL_158:
      sub_100014D40(v77, v13);

      sub_100014D40(v7, v6);

      return 0;
    }

    v77 = v96;
    if (v93 != v92)
    {
      goto LABEL_158;
    }

    v78 = *(v10 + 16);
    if (v78 != *(v17 + 16))
    {
      goto LABEL_158;
    }

    if (v78)
    {
      v79 = v10 == v17;
    }

    else
    {
      v79 = 1;
    }

    if (!v79)
    {
      v80 = 32;
      while (v78)
      {
        if (*(v10 + v80) != *(v17 + v80))
        {
          goto LABEL_158;
        }

        ++v80;
        if (!--v78)
        {
          goto LABEL_153;
        }
      }

      __break(1u);
LABEL_161:
      __break(1u);
LABEL_162:
      __break(1u);
LABEL_163:
      __break(1u);
LABEL_164:
      __break(1u);
LABEL_165:
      __break(1u);
LABEL_166:
      __break(1u);
LABEL_167:
      __break(1u);
LABEL_168:
      __break(1u);
LABEL_169:
      __break(1u);
LABEL_170:
      __break(1u);
LABEL_171:
      __break(1u);
LABEL_172:
      __break(1u);
LABEL_173:
      __break(1u);
LABEL_174:
      __break(1u);
LABEL_175:
      __break(1u);
LABEL_176:
      __break(1u);
LABEL_177:
      __break(1u);
LABEL_178:
      __break(1u);
LABEL_179:
      __break(1u);
LABEL_180:
      __break(1u);
LABEL_181:
      __break(1u);
LABEL_182:
      __break(1u);
LABEL_183:
      __break(1u);
LABEL_184:
      __break(1u);
    }

LABEL_153:
    sub_100014D40(v96, v13);

    sub_100014D40(v7, v6);

    if (v91 != v90)
    {
      return 0;
    }

    ++v3;
    result = 1;
    if (v3 == v2)
    {
      return result;
    }
  }

  __break(1u);
LABEL_185:
  __break(1u);
LABEL_186:
  __break(1u);
LABEL_187:
  __break(1u);
LABEL_188:
  __break(1u);
LABEL_189:
  __break(1u);
LABEL_190:
  __break(1u);
LABEL_191:
  __break(1u);
LABEL_192:
  __break(1u);
LABEL_193:
  __break(1u);
LABEL_194:
  __break(1u);
LABEL_195:
  __break(1u);
LABEL_196:
  sub_1004A40F4();
  __break(1u);
LABEL_197:
  result = sub_1004A40F4();
LABEL_198:
  __break(1u);
LABEL_199:
  __break(1u);
  return result;
}

uint64_t sub_100100A64(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2)
  {
    v3 = a2;
    v4 = a1;
    if (a1 != a2)
    {
      for (i = 0; ; i += 40)
      {
        v6 = v4 + i;
        v7 = v3 + i;
        if (*(v4 + i + 32) != *(v3 + i + 32))
        {
          return 0;
        }

        v9 = *(v6 + 40);
        v8 = *(v6 + 48);
        v11 = *(v7 + 40);
        v10 = *(v7 + 48);
        v77 = *(v6 + 56);
        v78 = *(v7 + 56);
        v12 = *(v7 + 64);
        v13 = v8 >> 62;
        v14 = v10 >> 62;
        v75 = v12;
        v76 = *(v6 + 64);
        if (v8 >> 62 == 3)
        {
          break;
        }

        if (v13 > 1)
        {
          if (v13 == 2)
          {
            v25 = *(v9 + 16);
            v24 = *(v9 + 24);
            v22 = __OFSUB__(v24, v25);
            v16 = v24 - v25;
            if (v22)
            {
              goto LABEL_151;
            }

            goto LABEL_27;
          }

          v16 = 0;
          if (v14 <= 1)
          {
            goto LABEL_28;
          }
        }

        else if (v13)
        {
          LODWORD(v16) = HIDWORD(v9) - v9;
          if (__OFSUB__(HIDWORD(v9), v9))
          {
            goto LABEL_152;
          }

          v16 = v16;
          if (v14 <= 1)
          {
LABEL_28:
            if (v14)
            {
              LODWORD(v23) = HIDWORD(v11) - v11;
              if (__OFSUB__(HIDWORD(v11), v11))
              {
                goto LABEL_150;
              }

              v23 = v23;
            }

            else
            {
              v23 = BYTE6(v10);
            }

            goto LABEL_34;
          }
        }

        else
        {
          v16 = BYTE6(v8);
          if (v14 <= 1)
          {
            goto LABEL_28;
          }
        }

LABEL_21:
        if (v14 != 2)
        {
          if (v16)
          {
            return 0;
          }

LABEL_45:
          sub_100014CEC(v9, v8);

          v18 = v11;
          v19 = v10;
LABEL_46:
          sub_100014CEC(v18, v19);

          goto LABEL_140;
        }

        v21 = *(v11 + 16);
        v20 = *(v11 + 24);
        v22 = __OFSUB__(v20, v21);
        v23 = v20 - v21;
        if (v22)
        {
          __break(1u);
LABEL_150:
          __break(1u);
LABEL_151:
          __break(1u);
LABEL_152:
          __break(1u);
LABEL_153:
          __break(1u);
LABEL_154:
          __break(1u);
LABEL_155:
          __break(1u);
LABEL_156:
          __break(1u);
LABEL_157:
          __break(1u);
LABEL_158:
          __break(1u);
LABEL_159:
          __break(1u);
LABEL_160:
          __break(1u);
LABEL_161:
          __break(1u);
LABEL_162:
          __break(1u);
LABEL_163:
          __break(1u);
LABEL_164:
          __break(1u);
LABEL_165:
          __break(1u);
LABEL_166:
          __break(1u);
LABEL_167:
          __break(1u);
LABEL_168:
          __break(1u);
LABEL_169:
          __break(1u);
LABEL_170:
          __break(1u);
LABEL_171:
          __break(1u);
        }

LABEL_34:
        if (v16 != v23)
        {
          return 0;
        }

        if (v16 < 1)
        {
          goto LABEL_45;
        }

        if (v13 > 1)
        {
          if (v13 != 2)
          {
            memset(__s1, 0, 14);
            if (v14)
            {
              if (v14 == 2)
              {
                v38 = *(v11 + 16);
                v71 = *(v11 + 24);
                sub_100014CEC(v9, v8);

                sub_100014CEC(v11, v10);

                v39 = sub_1004A40D4();
                if (v39)
                {
                  v40 = sub_1004A4104();
                  if (__OFSUB__(v38, v40))
                  {
                    goto LABEL_167;
                  }

                  v39 += v38 - v40;
                }

                v41 = &v71[-v38];
                if (__OFSUB__(v71, v38))
                {
                  goto LABEL_160;
                }

                result = sub_1004A40F4();
                if (!v39)
                {
                  goto LABEL_184;
                }

                goto LABEL_100;
              }

              v68 = ((v11 >> 32) - v11);
              if (v11 >> 32 < v11)
              {
                goto LABEL_156;
              }

              sub_100014CEC(v9, v8);

              sub_100014CEC(v11, v10);

              v54 = sub_1004A40D4();
              if (!v54)
              {
                goto LABEL_182;
              }

              v55 = v54;
              v56 = sub_1004A4104();
              if (__OFSUB__(v11, v56))
              {
                goto LABEL_161;
              }

              v29 = (v11 - v56 + v55);
              result = sub_1004A40F4();
              if (!v29)
              {
                goto LABEL_183;
              }

LABEL_108:
              if (result >= v68)
              {
                v57 = v68;
              }

              else
              {
                v57 = result;
              }

              v53 = memcmp(__s1, v29, v57);
              goto LABEL_112;
            }

            goto LABEL_68;
          }

          v31 = *(v9 + 16);
          sub_100014CEC(v9, v8);

          sub_100014CEC(v11, v10);

          v32 = sub_1004A40D4();
          if (v32)
          {
            v33 = v32;
            v34 = sub_1004A4104();
            if (__OFSUB__(v31, v34))
            {
              goto LABEL_154;
            }

            v69 = (v31 - v34 + v33);
          }

          else
          {
            v69 = 0;
          }

          sub_1004A40F4();
          if (v14 == 2)
          {
            v58 = *(v11 + 16);
            v59 = *(v11 + 24);
            v44 = sub_1004A40D4();
            if (v44)
            {
              v60 = sub_1004A4104();
              if (__OFSUB__(v58, v60))
              {
                goto LABEL_168;
              }

              v44 += v58 - v60;
            }

            v22 = __OFSUB__(v59, v58);
            v61 = v59 - v58;
            if (v22)
            {
              goto LABEL_163;
            }

            v62 = sub_1004A40F4();
            if (v62 >= v61)
            {
              v47 = v61;
            }

            else
            {
              v47 = v62;
            }

            result = v69;
            if (!v69)
            {
              goto LABEL_176;
            }

            v3 = a2;
            v4 = a1;
            if (!v44)
            {
              goto LABEL_175;
            }

            goto LABEL_135;
          }

          if (v14 == 1)
          {
            if (v11 >> 32 < v11)
            {
              goto LABEL_158;
            }

            v44 = sub_1004A40D4();
            if (v44)
            {
              v45 = sub_1004A4104();
              if (__OFSUB__(v11, v45))
              {
                goto LABEL_170;
              }

              v44 += v11 - v45;
            }

            v3 = a2;
            v46 = sub_1004A40F4();
            if (v46 >= (v11 >> 32) - v11)
            {
              v47 = (v11 >> 32) - v11;
            }

            else
            {
              v47 = v46;
            }

            result = v69;
            if (!v69)
            {
              goto LABEL_172;
            }

            v4 = a1;
            if (!v44)
            {
              __break(1u);
LABEL_172:
              __break(1u);
LABEL_173:
              __break(1u);
LABEL_174:
              sub_1004A40F4();
              __break(1u);
LABEL_175:
              __break(1u);
LABEL_176:
              __break(1u);
LABEL_177:
              __break(1u);
LABEL_178:
              __break(1u);
LABEL_179:
              __break(1u);
LABEL_180:
              __break(1u);
LABEL_181:
              __break(1u);
LABEL_182:
              result = sub_1004A40F4();
LABEL_183:
              __break(1u);
LABEL_184:
              __break(1u);
LABEL_185:
              __break(1u);
LABEL_186:
              __break(1u);
              return result;
            }

            goto LABEL_135;
          }

          v3 = a2;
          v4 = a1;
          result = v69;
          __s1[0] = v11;
          LOWORD(__s1[1]) = v10;
          BYTE2(__s1[1]) = BYTE2(v10);
          BYTE3(__s1[1]) = BYTE3(v10);
          BYTE4(__s1[1]) = BYTE4(v10);
          BYTE5(__s1[1]) = BYTE5(v10);
          if (!v69)
          {
            goto LABEL_185;
          }
        }

        else
        {
          if (!v13)
          {
            __s1[0] = v9;
            LOWORD(__s1[1]) = v8;
            BYTE2(__s1[1]) = BYTE2(v8);
            BYTE3(__s1[1]) = BYTE3(v8);
            BYTE4(__s1[1]) = BYTE4(v8);
            BYTE5(__s1[1]) = BYTE5(v8);
            if (v14)
            {
              if (v14 == 1)
              {
                v68 = ((v11 >> 32) - v11);
                if (v11 >> 32 < v11)
                {
                  goto LABEL_157;
                }

                sub_100014CEC(v9, v8);

                sub_100014CEC(v11, v10);

                v26 = sub_1004A40D4();
                if (!v26)
                {
                  goto LABEL_174;
                }

                v27 = v26;
                v28 = sub_1004A4104();
                if (__OFSUB__(v11, v28))
                {
                  goto LABEL_162;
                }

                v29 = (v11 - v28 + v27);
                result = sub_1004A40F4();
                if (!v29)
                {
                  goto LABEL_173;
                }

                goto LABEL_108;
              }

              v50 = *(v11 + 16);
              v72 = *(v11 + 24);
              sub_100014CEC(v9, v8);

              sub_100014CEC(v11, v10);

              v39 = sub_1004A40D4();
              if (v39)
              {
                v51 = sub_1004A4104();
                if (__OFSUB__(v50, v51))
                {
                  goto LABEL_166;
                }

                v39 += v50 - v51;
              }

              v41 = &v72[-v50];
              if (__OFSUB__(v72, v50))
              {
                goto LABEL_159;
              }

              result = sub_1004A40F4();
              if (!v39)
              {
                goto LABEL_186;
              }

LABEL_100:
              if (result >= v41)
              {
                v52 = v41;
              }

              else
              {
                v52 = result;
              }

              v53 = memcmp(__s1, v39, v52);
              v3 = a2;
LABEL_112:
              v4 = a1;
              if (v53)
              {
                goto LABEL_148;
              }

              goto LABEL_140;
            }

LABEL_68:
            v79 = v11;
            v80 = v10;
            v81 = BYTE2(v10);
            v82 = BYTE3(v10);
            v83 = BYTE4(v10);
            v84 = BYTE5(v10);
            sub_100014CEC(v9, v8);

            sub_100014CEC(v11, v10);

            result = __s1;
            v42 = &v79;
            v43 = BYTE6(v10);
            v4 = a1;
            goto LABEL_139;
          }

          if (v9 > v9 >> 32)
          {
            goto LABEL_153;
          }

          sub_100014CEC(v9, v8);

          sub_100014CEC(v11, v10);

          v35 = sub_1004A40D4();
          if (v35)
          {
            v36 = v35;
            v37 = sub_1004A4104();
            if (__OFSUB__(v9, v37))
            {
              goto LABEL_155;
            }

            v70 = (v9 - v37 + v36);
          }

          else
          {
            v70 = 0;
          }

          sub_1004A40F4();
          if (v14 == 2)
          {
            v63 = *(v11 + 16);
            v64 = *(v11 + 24);
            v44 = sub_1004A40D4();
            if (v44)
            {
              v65 = sub_1004A4104();
              if (__OFSUB__(v63, v65))
              {
                goto LABEL_169;
              }

              v44 += v63 - v65;
            }

            v22 = __OFSUB__(v64, v63);
            v66 = v64 - v63;
            if (v22)
            {
              goto LABEL_165;
            }

            v67 = sub_1004A40F4();
            if (v67 >= v66)
            {
              v47 = v66;
            }

            else
            {
              v47 = v67;
            }

            result = v70;
            if (!v70)
            {
              goto LABEL_181;
            }

            v3 = a2;
            v4 = a1;
            if (!v44)
            {
              goto LABEL_180;
            }

            goto LABEL_135;
          }

          if (v14 == 1)
          {
            if (v11 >> 32 < v11)
            {
              goto LABEL_164;
            }

            v44 = sub_1004A40D4();
            if (v44)
            {
              v48 = sub_1004A4104();
              if (__OFSUB__(v11, v48))
              {
                goto LABEL_171;
              }

              v44 += v11 - v48;
            }

            v3 = a2;
            v49 = sub_1004A40F4();
            if (v49 >= (v11 >> 32) - v11)
            {
              v47 = (v11 >> 32) - v11;
            }

            else
            {
              v47 = v49;
            }

            result = v70;
            if (!v70)
            {
              goto LABEL_179;
            }

            v4 = a1;
            if (!v44)
            {
              goto LABEL_178;
            }

LABEL_135:
            if (result == v44)
            {
              goto LABEL_140;
            }

            v43 = v47;
            v42 = v44;
            goto LABEL_139;
          }

          v3 = a2;
          v4 = a1;
          result = v70;
          __s1[0] = v11;
          LOWORD(__s1[1]) = v10;
          BYTE2(__s1[1]) = BYTE2(v10);
          BYTE3(__s1[1]) = BYTE3(v10);
          BYTE4(__s1[1]) = BYTE4(v10);
          BYTE5(__s1[1]) = BYTE5(v10);
          if (!v70)
          {
            goto LABEL_177;
          }
        }

        v43 = BYTE6(v10);
        v42 = __s1;
LABEL_139:
        if (memcmp(result, v42, v43))
        {
          goto LABEL_148;
        }

LABEL_140:
        if (v77)
        {
          if (!v78 || (static SectionSpecifier.Part.__derived_struct_equals(_:_:)(v77, v78) & 1) == 0)
          {
LABEL_148:
            sub_100014D40(v11, v10);

            sub_100014D40(v9, v8);

            return 0;
          }
        }

        else if (v78)
        {
          goto LABEL_148;
        }

        sub_100014D40(v11, v10);

        sub_100014D40(v9, v8);

        if (v76 != v75)
        {
          return 0;
        }

        if (!--v2)
        {
          return 1;
        }
      }

      if (v9)
      {
        v15 = 0;
      }

      else
      {
        v15 = v8 == 0xC000000000000000;
      }

      v16 = 0;
      v17 = v15 && v10 >> 62 == 3;
      if (v17 && !v11 && v10 == 0xC000000000000000)
      {
        sub_100014CEC(0, 0xC000000000000000);

        v18 = 0;
        v19 = 0xC000000000000000;
        goto LABEL_46;
      }

LABEL_27:
      if (v14 <= 1)
      {
        goto LABEL_28;
      }

      goto LABEL_21;
    }
  }

  return 1;
}