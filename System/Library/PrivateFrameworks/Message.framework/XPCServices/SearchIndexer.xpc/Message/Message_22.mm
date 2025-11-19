uint64_t sub_10016680C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

BOOL sub_100166874(IMAP2Persistence::OpaqueMailboxID *a1)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  v4 = *(v1 + 16);
  return SyncRequest.includes(_:)(a1[1]);
}

uint64_t sub_1001668B4()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[6];

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100166900(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100166960(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

uint64_t sub_1001669C8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100166A54@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = result;
  if ((result & 0x1000000) == 0)
  {
    v4 = _swiftEmptyArrayStorage;
    if ((result & 0xFF0000) != 0)
    {
      goto LABEL_14;
    }

    goto LABEL_9;
  }

  result = sub_1000864D4(0, 1, 1, _swiftEmptyArrayStorage);
  v4 = result;
  v6 = *(result + 16);
  v5 = *(result + 24);
  v7 = v5 >> 1;
  v8 = v6 + 1;
  if (v5 >> 1 <= v6)
  {
    result = sub_1000864D4((v5 > 1), v6 + 1, 1, result);
    v4 = result;
    v5 = *(result + 24);
    v7 = v5 >> 1;
  }

  v4[2] = v8;
  *(v4 + v6 + 32) = 2;
  v9 = v6 + 2;
  if (v7 < v9)
  {
    result = sub_1000864D4((v5 > 1), v9, 1, v4);
    v4 = result;
  }

  v4[2] = v9;
  *(v4 + v8 + 32) = 4;
  if ((*&v2 & 0xFF0000) == 0)
  {
LABEL_9:
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1000864D4(0, v4[2] + 1, 1, v4);
      v4 = result;
    }

    v11 = v4[2];
    v10 = v4[3];
    if (v11 >= v10 >> 1)
    {
      result = sub_1000864D4((v10 > 1), v11 + 1, 1, v4);
      v4 = result;
    }

    v4[2] = v11 + 1;
    *(v4 + v11 + 32) = 10;
  }

LABEL_14:
  *a2 = v4;
  return result;
}

BOOL sub_100166BDC(char *a1, char *a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  v7 = a1[4];
  v8 = a1[5];
  v9 = a1[6];
  v10 = a1[7];
  v11 = *a2;
  v12 = a2[1];
  v13 = a2[2];
  v14 = a2[3];
  v15 = a2[4];
  v16 = a2[5];
  v17 = a2[6];
  v18 = a2[7];
  if (v10)
  {
    v19 = 0x100000000000000;
  }

  else
  {
    v19 = 0;
  }

  v20 = (v9 & 1) == 0;
  v21 = 0x1000000000000;
  if (v20)
  {
    v22 = 0;
  }

  else
  {
    v22 = 0x1000000000000;
  }

  v20 = (v8 & 1) == 0;
  v23 = 0x10000000000;
  if (v20)
  {
    v24 = 0;
  }

  else
  {
    v24 = 0x10000000000;
  }

  v20 = (v7 & 1) == 0;
  v25 = &_mh_execute_header;
  if (v20)
  {
    v26 = 0;
  }

  else
  {
    v26 = &_mh_execute_header;
  }

  v20 = (v6 & 1) == 0;
  v27 = 0x1000000;
  if (v20)
  {
    v28 = 0;
  }

  else
  {
    v28 = 0x1000000;
  }

  v29 = v3 & 1;
  v30 = ((v4 << 8) | (v5 << 16) | v28 | v26 | v24 | v22) + v19;
  if (v18)
  {
    v31 = 0x100000000000000;
  }

  else
  {
    v31 = 0;
  }

  if ((v17 & 1) == 0)
  {
    v21 = 0;
  }

  if ((v16 & 1) == 0)
  {
    v23 = 0;
  }

  if ((v15 & 1) == 0)
  {
    v25 = 0;
  }

  if ((v14 & 1) == 0)
  {
    v27 = 0;
  }

  v32 = (v12 << 8) | (v13 << 16) | v27 | v25;

  return sub_100166EB4(v30 | v29, ((v32 | v23 | v21) + v31) | v11 & 1);
}

unint64_t sub_100166CE8()
{
  if (*v0)
  {
    result = 0xD000000000000014;
  }

  else
  {
    result = 0x746C7561666564;
  }

  *v0;
  return result;
}

uint64_t sub_100166D28()
{
  v1 = *(v0 + 64);
  v11 = _swiftEmptySetSingleton;
  v2 = 1 << *(v1 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(v1 + 64);
  v5 = (v2 + 63) >> 6;

  for (i = 0; v4; result = sub_100088064(&v10, *(*(v1 + 56) + ((v8 << 11) | (32 * v9)))))
  {
    v8 = i;
LABEL_9:
    v9 = __clz(__rbit64(v4));
    v4 &= v4 - 1;
  }

  while (1)
  {
    v8 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v8 >= v5)
    {

      return v11;
    }

    v4 = *(v1 + 64 + 8 * v8);
    ++i;
    if (v4)
    {
      i = v8;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100166E18(uint64_t result)
{
  v1 = 0;
  v2 = 1 << *(result + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(result + 56);
  v5 = (v2 + 63) >> 6;
  while (v4)
  {
    v6 = v1;
LABEL_10:
    v7 = __clz(__rbit64(v4));
    v4 &= v4 - 1;
    if (*(*(result + 48) + (v7 | (v6 << 6))) - 2 >= 3)
    {
      return 1;
    }
  }

  while (1)
  {
    v6 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      break;
    }

    if (v6 >= v5)
    {
      return 0;
    }

    v4 = *(result + 56 + 8 * v6);
    ++v1;
    if (v4)
    {
      v1 = v6;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_100166F34()
{
  result = qword_1005D1DC8;
  if (!qword_1005D1DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D1DC8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SyncBehavior(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[8])
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

uint64_t storeEnumTagSinglePayload for SyncBehavior(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_10016708C()
{
  result = qword_1005D1DD0;
  if (!qword_1005D1DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D1DD0);
  }

  return result;
}

unint64_t sub_1001670E4()
{
  result = qword_1005D1DD8;
  if (!qword_1005D1DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D1DD8);
  }

  return result;
}

unint64_t sub_10016716C()
{
  result = qword_1005D1DF0;
  if (!qword_1005D1DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D1DF0);
  }

  return result;
}

unint64_t sub_1001671C4()
{
  result = qword_1005D1DF8;
  if (!qword_1005D1DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D1DF8);
  }

  return result;
}

unint64_t sub_10016721C()
{
  result = qword_1005D1E00;
  if (!qword_1005D1E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D1E00);
  }

  return result;
}

uint64_t sub_1001672A0(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_10000DEFC(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1001672F8()
{
  result = qword_1005D1E18;
  if (!qword_1005D1E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D1E18);
  }

  return result;
}

void *sub_10016735C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_100091A08(0, v1, 0);
  v3 = -1 << *(a1 + 32);
  v25 = a1 + 56;
  result = sub_1004A6554();
  v5 = result;
  v6 = 0;
  v24 = v1;
  while ((v5 & 0x8000000000000000) == 0 && v5 < 1 << *(a1 + 32))
  {
    v9 = v5 >> 6;
    if ((*(v25 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
    {
      goto LABEL_21;
    }

    v10 = *(a1 + 36);
    result = sub_100167A8C(*(*(a1 + 48) + v5));
    v13 = _swiftEmptyArrayStorage[2];
    v12 = _swiftEmptyArrayStorage[3];
    if (v13 >= v12 >> 1)
    {
      v22 = v11;
      v23 = result;
      sub_100091A08((v12 > 1), v13 + 1, 1);
      v11 = v22;
      result = v23;
    }

    _swiftEmptyArrayStorage[2] = v13 + 1;
    v14 = &_swiftEmptyArrayStorage[2 * v13];
    v14[4] = result;
    v14[5] = v11;
    v7 = 1 << *(a1 + 32);
    if (v5 >= v7)
    {
      goto LABEL_22;
    }

    v15 = *(v25 + 8 * v9);
    if ((v15 & (1 << v5)) == 0)
    {
      goto LABEL_23;
    }

    if (v10 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v16 = v15 & (-2 << (v5 & 0x3F));
    if (v16)
    {
      v7 = __clz(__rbit64(v16)) | v5 & 0x7FFFFFFFFFFFFFC0;
      v8 = v24;
    }

    else
    {
      v17 = v9 << 6;
      v18 = v9 + 1;
      v8 = v24;
      v19 = (a1 + 64 + 8 * v9);
      while (v18 < (v7 + 63) >> 6)
      {
        v21 = *v19++;
        v20 = v21;
        v17 += 64;
        ++v18;
        if (v21)
        {
          result = sub_100020944(v5, v10, 0);
          v7 = __clz(__rbit64(v20)) + v17;
          goto LABEL_4;
        }
      }

      result = sub_100020944(v5, v10, 0);
    }

LABEL_4:
    ++v6;
    v5 = v7;
    if (v6 == v8)
    {
      return _swiftEmptyArrayStorage;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

char *sub_100167580(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v4 = a1;
  v5 = 0;
  v6 = a1 + 56;
  v7 = a2 + 56;
  v8 = a3 + 56;
  v9 = _swiftEmptyArrayStorage;
  do
  {
    v10 = *(&off_100598680 + v5 + 32);
    if (*(v4 + 16) && (v11 = *(v4 + 40), sub_1004A6E94(), sub_1004A6EB4(v10), v12 = sub_1004A6F14(), v13 = -1 << *(v4 + 32), v14 = v12 & ~v13, ((*(v6 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) != 0))
    {
      v15 = ~v13;
      while (*(*(v4 + 48) + v14) != v10)
      {
        v14 = (v14 + 1) & v15;
        if (((*(v6 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
        {
          goto LABEL_9;
        }
      }

      v16 = _swiftEmptyArrayStorage;
    }

    else
    {
LABEL_9:
      v16 = sub_100085070(0, 1, 1, _swiftEmptyArrayStorage);
      v18 = *(v16 + 2);
      v17 = *(v16 + 3);
      if (v18 >= v17 >> 1)
      {
        v16 = sub_100085070((v17 > 1), v18 + 1, 1, v16);
      }

      *(v16 + 2) = v18 + 1;
      v19 = &v16[16 * v18];
      strcpy(v19 + 32, "not-completed");
      *(v19 + 23) = -4864;
      v3 = a3;
    }

    if (!*(a2 + 16))
    {
      v4 = a1;
      if (!*(v3 + 16))
      {
        goto LABEL_39;
      }

LABEL_22:
      v25 = *(v3 + 40);
      sub_1004A6E94();
      sub_1004A6EB4(v10);
      v26 = sub_1004A6F14();
      v27 = -1 << *(v3 + 32);
      v28 = v26 & ~v27;
      if ((*(v8 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28))
      {
        v29 = ~v27;
        while (*(*(v3 + 48) + v28) != v10)
        {
          v28 = (v28 + 1) & v29;
          if (((*(v8 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
          {
            goto LABEL_39;
          }
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v16 = sub_100085070(0, *(v16 + 2) + 1, 1, v16);
        }

        v34 = *(v16 + 2);
        v33 = *(v16 + 3);
        if (v34 >= v33 >> 1)
        {
          v16 = sub_100085070((v33 > 1), v34 + 1, 1, v16);
        }

        *(v16 + 2) = v34 + 1;
        v35 = &v16[16 * v34];
        *(v35 + 4) = 0x6E65646E65706564;
        *(v35 + 5) = 0xEA00000000007963;
        v3 = a3;
      }

      goto LABEL_39;
    }

    v20 = *(a2 + 40);
    sub_1004A6E94();
    sub_1004A6EB4(v10);
    v21 = sub_1004A6F14();
    v22 = -1 << *(a2 + 32);
    v23 = v21 & ~v22;
    if ((*(v7 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23))
    {
      v24 = ~v22;
      v4 = a1;
      while (*(*(a2 + 48) + v23) != v10)
      {
        v23 = (v23 + 1) & v24;
        if (((*(v7 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23) & 1) == 0)
        {
          goto LABEL_21;
        }
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v16 = sub_100085070(0, *(v16 + 2) + 1, 1, v16);
      }

      v31 = *(v16 + 2);
      v30 = *(v16 + 3);
      if (v31 >= v30 >> 1)
      {
        v16 = sub_100085070((v30 > 1), v31 + 1, 1, v16);
      }

      *(v16 + 2) = v31 + 1;
      v32 = &v16[16 * v31];
      *(v32 + 4) = 0x74726174736572;
      *(v32 + 5) = 0xE700000000000000;
      v3 = a3;
      if (*(a3 + 16))
      {
        goto LABEL_22;
      }
    }

    else
    {
      v4 = a1;
LABEL_21:
      if (*(v3 + 16))
      {
        goto LABEL_22;
      }
    }

LABEL_39:
    if (*(v16 + 2))
    {
      v47 = sub_100167A8C(v10);
      v48 = v36;
      v49._countAndFlagsBits = 8250;
      v49._object = 0xE200000000000000;
      sub_1004A5994(v49);
      sub_10000C9C0(&unk_1005DA9A0, &unk_1004CF770);
      sub_10000DF44(&qword_1005CDA18, &unk_1005DA9A0, &unk_1004CF770);
      v37 = sub_1004A5614();
      v39 = v38;

      v50._countAndFlagsBits = v37;
      v50._object = v39;
      sub_1004A5994(v50);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v9 = sub_100085070(0, *(v9 + 2) + 1, 1, v9);
      }

      v41 = *(v9 + 2);
      v40 = *(v9 + 3);
      if (v41 >= v40 >> 1)
      {
        v9 = sub_100085070((v40 > 1), v41 + 1, 1, v9);
      }

      *(v9 + 2) = v41 + 1;
      v42 = &v9[16 * v41];
      *(v42 + 4) = v47;
      *(v42 + 5) = v48;
      v3 = a3;
    }

    else
    {
    }

    ++v5;
  }

  while (v5 != 15);
  return v9;
}

unint64_t sub_100167A8C(char a1)
{
  result = 0x636E79736552;
  switch(a1)
  {
    case 1:
      result = 0x73654D6863746546;
      break;
    case 2:
      result = 0xD000000000000015;
      break;
    case 3:
      result = 0xD00000000000001DLL;
      break;
    case 4:
    case 7:
      result = 0xD000000000000011;
      break;
    case 5:
      result = 0xD000000000000019;
      break;
    case 6:
      result = 0x654D64616F6C7055;
      break;
    case 8:
      result = 0xD000000000000013;
      break;
    case 9:
    case 10:
      result = 0xD000000000000016;
      break;
    case 11:
      result = 0xD000000000000010;
      break;
    case 12:
      result = 0xD000000000000013;
      break;
    case 13:
      result = 0xD00000000000001CLL;
      break;
    case 14:
      result = 0xD000000000000013;
      break;
    default:
      return result;
  }

  return result;
}

Swift::Int sub_100167C8C(Swift::Int *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = a2[1];
  v5 = a2[2];
  if ((sub_100082EA0(*a1, *a2) & 1) == 0 || (sub_100082EA0(v2, v4) & 1) == 0)
  {
    return 0;
  }

  return sub_100082EA0(v3, v5);
}

uint64_t sub_100167D14(uint64_t a1, uint64_t a2)
{
  v4 = 0;
  v5 = a1 + 56;
  v6 = a2 + 56;
  while (*(a1 + 16))
  {
    v7 = *(&off_100598680 + v4 + 32);
    v8 = *(a1 + 40);
    sub_1004A6E94();
    sub_1004A6EB4(v7);
    v9 = sub_1004A6F14();
    v10 = -1 << *(a1 + 32);
    v11 = v9 & ~v10;
    if (((*(v5 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
    {
      break;
    }

    ++v4;
    v12 = ~v10;
    while (*(*(a1 + 48) + v11) != v7)
    {
      v11 = (v11 + 1) & v12;
      if (((*(v5 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        return 0;
      }
    }

    if (*(a2 + 16))
    {
      v13 = *(a2 + 40);
      sub_1004A6E94();
      sub_1004A6EB4(v7);
      v14 = sub_1004A6F14();
      v15 = -1 << *(a2 + 32);
      v16 = v14 & ~v15;
      if ((*(v6 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
      {
        v17 = ~v15;
        while (*(*(a2 + 48) + v16) != v7)
        {
          v16 = (v16 + 1) & v17;
          if (((*(v6 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
          {
            goto LABEL_13;
          }
        }

        return 0;
      }
    }

LABEL_13:
    if (v4 == 15)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_100167E8C(uint64_t a1, uint64_t a2)
{
  sub_1004A6724(30);

  strcpy(v11, "completed: {");
  sub_10016735C(a1);
  sub_10000C9C0(&unk_1005DA9A0, &unk_1004CF770);
  sub_10000DF44(&qword_1005CDA18, &unk_1005DA9A0, &unk_1004CF770);
  v4 = sub_1004A5614();
  v6 = v5;

  v12._countAndFlagsBits = v4;
  v12._object = v6;
  sub_1004A5994(v12);

  v13._countAndFlagsBits = 0x6174736572202C7DLL;
  v13._object = 0xED00007B203A7472;
  sub_1004A5994(v13);
  sub_10016735C(a2);
  v7 = sub_1004A5614();
  v9 = v8;

  v14._countAndFlagsBits = v7;
  v14._object = v9;
  sub_1004A5994(v14);

  v15._countAndFlagsBits = 125;
  v15._object = 0xE100000000000000;
  sub_1004A5994(v15);
  return v11[0];
}

Swift::Int sub_100168038(Swift::Int result)
{
  v1 = result;
  v2 = 0;
  v3 = 0;
  v4 = result + 56;
LABEL_3:
  if (v3 <= 0xF)
  {
    v5 = 15;
  }

  else
  {
    v5 = v3;
  }

  while (v3 != v5)
  {
    v6 = v3++;
    if (*(v1 + 16))
    {
      v7 = *(&off_100598680 + v6 + 32);
      v8 = *(v1 + 40);
      sub_1004A6E94();
      sub_1004A6EB4(v7);
      result = sub_1004A6F14();
      v9 = -1 << *(v1 + 32);
      v10 = result & ~v9;
      if ((*(v4 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
      {
        v11 = ~v9;
        while (*(*(v1 + 48) + v10) != v7)
        {
          v10 = (v10 + 1) & v11;
          if (((*(v4 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
          {
            goto LABEL_6;
          }
        }

        v2 = (1 << v6) | v2;
        if (v3 == 15)
        {
          return v2;
        }

        goto LABEL_3;
      }
    }

LABEL_6:
    if (v3 == 15)
    {
      return v2;
    }
  }

  __break(1u);
  return result;
}

uint64_t getEnumTagSinglePayload for SyncStep(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF2)
  {
    goto LABEL_17;
  }

  if (a2 + 14 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 14) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 14;
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

      return (*a1 | (v4 << 8)) - 14;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 14;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xF;
  v8 = v6 - 15;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SyncStep(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 14 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 14) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF2)
  {
    v4 = 0;
  }

  if (a2 > 0xF1)
  {
    v5 = ((a2 - 242) >> 8) + 1;
    *result = a2 + 14;
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
    *result = a2 + 14;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1001682FC()
{
  result = qword_1005D1E30;
  if (!qword_1005D1E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D1E30);
  }

  return result;
}

uint64_t sub_100168350@<X0>(uint64_t a1@<X0>, unsigned __int8 a2@<W1>, uint64_t a3@<X8>)
{
  sub_10011D9F0(a1, v29);
  if (v30)
  {
    sub_1000B364C(v29, v26);
    sub_1004A4A64();
    v6 = v27;
    v7 = v28;
    sub_10002587C(v26, v27);
    v8 = (*(v7 + 72))(v6, v7);
    v10 = v9;
    v11 = v27;
    v12 = v28;
    sub_10002587C(v26, v27);
    (*(v12 + 32))(&v31, v11, v12);
    v13 = v32;
    v41 = v31;
    sub_1000D69D0(&v41);
    v39 = v33;
    v40 = v34;
    sub_10009DA94(&v39);
    v14 = v27;
    v15 = v28;
    sub_10002587C(v26, v27);
    (*(v15 + 32))(&v35, v14, v15);
    sub_10011DA4C(a1);
    v16 = v36;
    v17 = v37;
    v38 = v35;
    sub_1000D69D0(&v38);
    v18 = a3 + *(type metadata accessor for Task.Logger(0) + 20);
    *v18 = a2;
    *(v18 + 8) = v8;
    *(v18 + 16) = v10;
    *(v18 + 24) = v13 | 0x8000000000000000;
    *(v18 + 32) = v16;
    *(v18 + 40) = v17;
  }

  else
  {
    sub_1000B364C(v29, v26);
    sub_1004A4A64();
    v19 = v27;
    v20 = v28;
    sub_10002587C(v26, v27);
    v21 = (*(v20 + 32))(v19, v20);
    v23 = v22;
    sub_10011DA4C(a1);
    v24 = a3 + *(type metadata accessor for Task.Logger(0) + 20);
    *v24 = a2;
    *(v24 + 8) = v21;
    *(v24 + 24) = 0;
    *(v24 + 32) = 0;
    *(v24 + 16) = v23;
    *(v24 + 40) = 0;
  }

  return sub_1000197E0(v26);
}

uint64_t sub_1001685A8(uint64_t a1)
{
  sub_10011D9F0(v1, v11);
  if (v12)
  {
    sub_1000B364C(v11, v8);
    v3 = v9;
    v4 = v10;
    sub_10002587C(v8, v9);
    (*(v4 + 64))(a1, v3, v4);
  }

  else
  {
    sub_1000B364C(v11, v8);
    v5 = v9;
    v6 = v10;
    sub_10002587C(v8, v9);
    (*(v6 + 24))(a1, v5, v6);
  }

  return sub_1000197E0(v8);
}

uint64_t TaskID.debugDescription.getter()
{
  v1 = *v0;
  v3 = sub_1004A7164();
  v4._countAndFlagsBits = 32;
  v4._object = 0xE100000000000000;
  sub_1004A5994(v4);
  v5._countAndFlagsBits = sub_1004A6634();
  sub_1004A5994(v5);

  return v3;
}

uint64_t static TaskID.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 == *a2)
  {
    return sub_1004A6654();
  }

  else
  {
    return 0;
  }
}

Swift::Int TaskID.hashValue.getter()
{
  sub_1004A6E94();
  sub_1004A6664();
  return sub_1004A6F14();
}

Swift::Int sub_100168774()
{
  sub_1004A6E94();
  sub_1004A6664();
  return sub_1004A6F14();
}

unint64_t sub_1001687B8()
{
  result = qword_1005D1E38;
  if (!qword_1005D1E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D1E38);
  }

  return result;
}

uint64_t sub_10016880C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_100168854(uint64_t result, int a2, int a3)
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

ValueMetadata *type metadata accessor for TaskID()
{
  return &type metadata for TaskID;
}

{
  return &type metadata for TaskID;
}

uint64_t sub_1001688C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1004A4A74();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 1);
    if (v10 > 0x80000000)
    {
      return -v10;
    }

    else
    {
      return 0;
    }
  }
}

double sub_100168994(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1004A4A74();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = a1 + *(a4 + 20);
    *v12 = -a2 << 8;
    result = 0.0;
    *(v12 + 8) = 0u;
    *(v12 + 24) = 0u;
    *(v12 + 40) = 0;
  }

  return result;
}

uint64_t sub_100168A9C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 44))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 1);
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

double sub_100168AE8(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    result = 0.0;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *(a1 + 40) = 0;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 44) = 1;
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
      *a1 = -a2 << 8;
      result = 0.0;
      *(a1 + 8) = 0u;
      *(a1 + 24) = 0u;
      *(a1 + 40) = 0;
      return result;
    }

    *(a1 + 44) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unsigned __int8 *sub_100168B58(unsigned __int8 *result, uint64_t a2)
{
  v2 = *(result + 12) | (a2 << 63);
  *result = *result;
  *(result + 3) = v2;
  return result;
}

uint64_t sub_100168B94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1004A4A74();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 16);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_100168C68(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1004A4A74();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 16) = (a2 - 1);
  }

  return result;
}

uint64_t sub_100168D50()
{
  result = sub_1004A4A74();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_100168DE0@<X0>(unint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_100139804(v5);
    v5 = result;
  }

  v7 = *(v5 + 16);
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = (v5 + 176 * a1);
    v9 = v8[11];
    v10 = v7 - 1;
    a2[8] = v8[10];
    a2[9] = v9;
    a2[10] = v8[12];
    v11 = v8[7];
    a2[4] = v8[6];
    a2[5] = v11;
    v12 = v8[9];
    a2[6] = v8[8];
    a2[7] = v12;
    v13 = v8[3];
    *a2 = v8[2];
    a2[1] = v13;
    v14 = v8[5];
    a2[2] = v8[4];
    a2[3] = v14;
    result = memmove(v8 + 2, v8 + 13, 176 * (v7 - 1 - a1));
    *(v5 + 16) = v10;
    *v2 = v5;
  }

  return result;
}

uint64_t sub_100168E9C(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_10013982C(v3);
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
    v7 = v3 + 24 * a1;
    v9 = *(v7 + 32);
    v7 += 32;
    v8 = v9;
    v10 = *(v7 + 4);
    v11 = *(v7 + 8);
    v12 = *(v7 + 16);
    v13 = *(v7 + 17);
    memmove(v7, (v7 + 24), 24 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    v14 = &_mh_execute_header;
    if (!v10)
    {
      v14 = 0;
    }

    return v14 | v8;
  }

  return result;
}

uint64_t sub_100168FA8@<X0>(unint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_100139890(v5);
    v5 = result;
  }

  v7 = *(v5 + 16);
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = (v5 + 240 * a1);
    v10 = v9[15];
    a2[12] = v9[14];
    a2[13] = v10;
    *(a2 + 217) = *(v9 + 249);
    v11 = v9[11];
    a2[8] = v9[10];
    a2[9] = v11;
    v12 = v9[13];
    a2[10] = v9[12];
    a2[11] = v12;
    v13 = v9[7];
    a2[4] = v9[6];
    a2[5] = v13;
    v14 = v9[9];
    a2[6] = v9[8];
    a2[7] = v14;
    v15 = v9[3];
    *a2 = v9[2];
    a2[1] = v15;
    v16 = v9[5];
    a2[2] = v9[4];
    a2[3] = v16;
    result = memmove(v9 + 2, v9 + 17, 240 * (v8 - a1));
    *(v5 + 16) = v8;
    *v2 = v5;
  }

  return result;
}

uint64_t sub_100169078@<X0>(unint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1001398B8(v5);
    v5 = result;
  }

  v7 = *(v5 + 16);
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = (v5 + 192 * a1);
    v9 = v8[11];
    v10 = v7 - 1;
    a2[8] = v8[10];
    a2[9] = v9;
    a2[10] = v8[12];
    *(a2 + 169) = *(v8 + 201);
    v11 = v8[7];
    a2[4] = v8[6];
    a2[5] = v11;
    v12 = v8[9];
    a2[6] = v8[8];
    a2[7] = v12;
    v13 = v8[3];
    *a2 = v8[2];
    a2[1] = v13;
    v14 = v8[5];
    a2[2] = v8[4];
    a2[3] = v14;
    result = memmove(v8 + 2, v8 + 14, 192 * (v7 - 1 - a1));
    *(v5 + 16) = v10;
    *v2 = v5;
  }

  return result;
}

uint64_t sub_100169180(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result || (v3 & 0x8000000000000000) != 0 || (v3 & 0x4000000000000000) != 0)
  {
    result = sub_100139930(v3);
    v3 = result;
  }

  v5 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = *((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 0x20);
    memmove(((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 32), ((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 40), 8 * (v5 - 1 - a1));
    *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10) = v6;
    *v1 = v3;
    return v7;
  }

  return result;
}

uint64_t sub_100169210(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_100139994(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v3 + 24 * a1;
    v7 = *(v6 + 32);
    v6 += 32;
    v8 = v5 - 1;
    v9 = *(v6 + 8);
    v10 = *(v6 + 16);
    memmove(v6, (v6 + 24), 24 * (v5 - 1 - a1));
    *(v3 + 16) = v8;
    *v1 = v3;
    return v7;
  }

  return result;
}

uint64_t sub_1001692B4@<X0>(unint64_t a1@<X0>, uint64_t (*a2)(uint64_t)@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t (*a4)(void)@<X3>, uint64_t a5@<X8>)
{
  v11 = *v5;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = a2(v11);
    v11 = result;
  }

  v13 = *(v11 + 16);
  if (v13 <= a1)
  {
    __break(1u);
  }

  else
  {
    v14 = v13 - 1;
    v15 = *(a3(0) - 8);
    v16 = *(v15 + 72);
    v17 = v11 + ((*(v15 + 80) + 32) & ~*(v15 + 80)) + v16 * a1;
    result = sub_10016B7A0(v17, a5, a4);
    if (v16 > 0 || v17 >= v17 + v16 + v16 * (v14 - a1))
    {
      result = swift_arrayInitWithTakeFrontToBack();
    }

    else if (v16)
    {
      result = swift_arrayInitWithTakeBackToFront();
    }

    *(v11 + 16) = v14;
    *v5 = v11;
  }

  return result;
}

uint64_t sub_1001693F4()
{
  v1 = v0;
  v2 = type metadata accessor for ClientCommand(0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v21[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = type metadata accessor for TaskHistory.Running(0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v9 = &v21[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_10016AF30(v1, v9, type metadata accessor for TaskHistory.Running);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v11 = *v9;
  v12 = *(v9 + 1);
  if (EnumCaseMultiPayload == 1)
  {
    v13 = *(v9 + 1);
    v22 = *v9;
    v23 = sub_1004A6CE4();
    v24 = v14;
    v25._countAndFlagsBits = 2304032;
    v25._object = 0xE300000000000000;
    sub_1004A5994(v25);
    v22 = v12;
    v26._countAndFlagsBits = sub_1004A6CE4();
    sub_1004A5994(v26);

    v27._countAndFlagsBits = 8233;
    v27._object = 0xE200000000000000;
    sub_1004A5994(v27);
    v15 = Action.kind.getter(v13);
    v28._countAndFlagsBits = Action.Kind.description.getter(v15);
    sub_1004A5994(v28);

    sub_100020EDC(v13);
    return v23;
  }

  else
  {
    v17 = *(v9 + 2);
    v18 = sub_10000C9C0(&qword_1005CD278, &qword_1004CF7B0);
    sub_10016B7A0(&v9[*(v18 + 64)], v5, type metadata accessor for ClientCommand);
    LOBYTE(v23) = v11;
    HIDWORD(v23) = v12;
    v23 = sub_1004A5804();
    v24 = v19;
    v29._countAndFlagsBits = 2304032;
    v29._object = 0xE300000000000000;
    sub_1004A5994(v29);
    v22 = v17;
    v30._countAndFlagsBits = sub_1004A6CE4();
    sub_1004A5994(v30);

    v31._countAndFlagsBits = 8233;
    v31._object = 0xE200000000000000;
    sub_1004A5994(v31);
    v32._countAndFlagsBits = ClientCommand.logIdentifier.getter();
    sub_1004A5994(v32);

    v16 = v23;
    sub_10016AF98(v5, type metadata accessor for ClientCommand);
  }

  return v16;
}

uint64_t sub_100169680@<X0>(unint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  v42 = a1;
  v39 = a2;
  v3 = type metadata accessor for ClientCommand(0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v36 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TaskHistory.Running(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v37 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v13 = (&v35 - v12);
  result = __chkstk_darwin(v11);
  v16 = &v35 - v15;
  v38 = v2;
  v17 = *v2;
  v18 = *(*v2 + 16);
  if (!v18)
  {
LABEL_12:
    v29 = sub_10000C9C0(&qword_1005D0F50, &qword_1004D6060);
    return (*(*(v29 - 8) + 56))(v39, 1, 1, v29);
  }

  v19 = 0;
  v40 = HIDWORD(v42);
  v20 = v17 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
  while (1)
  {
    if (v19 >= *(v17 + 16))
    {
      __break(1u);
      return result;
    }

    sub_10016AF30(v20 + *(v7 + 72) * v19, v16, type metadata accessor for TaskHistory.Running);
    sub_10016B7A0(v16, v13, type metadata accessor for TaskHistory.Running);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      break;
    }

    result = sub_10016AF98(v13, type metadata accessor for TaskHistory.Running);
LABEL_4:
    if (v18 == ++v19)
    {
      goto LABEL_12;
    }
  }

  v21 = v17;
  v22 = v18;
  v23 = v7;
  v24 = v6;
  v26 = *v13;
  v25 = v13[1];
  v41 = sub_10000C9C0(&qword_1005CD278, &qword_1004CF7B0);
  result = sub_10016AF98(v13 + *(v41 + 64), type metadata accessor for ClientCommand);
  v27 = v26 == v42;
  v6 = v24;
  v7 = v23;
  v18 = v22;
  v17 = v21;
  if (!v27 || v25 != v40)
  {
    goto LABEL_4;
  }

  v28 = v37;
  sub_1001692B4(v19, sub_1001399A8, type metadata accessor for TaskHistory.Running, type metadata accessor for TaskHistory.Running, v37);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_10016AF98(v28, type metadata accessor for TaskHistory.Running);
    goto LABEL_12;
  }

  v30 = *(v28 + 8);
  v31 = v36;
  sub_10016B7A0(v28 + *(v41 + 64), v36, type metadata accessor for ClientCommand);
  v32 = sub_10000C9C0(&qword_1005D0F50, &qword_1004D6060);
  v33 = *(v32 + 48);
  v34 = v39;
  *v39 = v30;
  sub_10016B7A0(v31, v34 + v33, type metadata accessor for ClientCommand);
  return (*(*(v32 - 8) + 56))(v34, 0, 1, v32);
}

uint64_t sub_100169A68(int a1)
{
  v3 = type metadata accessor for TaskHistory.Running(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v3);
  v7 = __chkstk_darwin(v6);
  v9 = &v22 - v8;
  result = __chkstk_darwin(v7);
  v13 = &v22 - v12;
  v14 = *v1;
  v15 = *(*v1 + 16);
  if (v15)
  {
    v22 = v1;
    v23 = v11;
    v16 = 0;
    v17 = v14 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v18 = a1;
    do
    {
      if (v16 >= *(v14 + 16))
      {
        __break(1u);
        return result;
      }

      sub_10016AF30(v17 + *(v4 + 72) * v16, v13, type metadata accessor for TaskHistory.Running);
      sub_10016B7A0(v13, v9, type metadata accessor for TaskHistory.Running);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v19 = *v9;
        result = sub_100020EDC(*(v9 + 1));
        if (v19 == v18)
        {
          v20 = v23;
          sub_1001692B4(v16, sub_1001399A8, type metadata accessor for TaskHistory.Running, type metadata accessor for TaskHistory.Running, v23);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            result = *(v20 + 4);
            v21 = *(v20 + 8);
            return result;
          }

          sub_10016AF98(v20, type metadata accessor for TaskHistory.Running);
          return 0;
        }
      }

      else
      {
        result = sub_10016AF98(v9, type metadata accessor for TaskHistory.Running);
      }

      ++v16;
    }

    while (v15 != v16);
  }

  return 0;
}

uint64_t sub_100169CC8(uint64_t a1, uint64_t a2, int a3)
{
  v6 = type metadata accessor for TaskHistory.Previous(0);
  v7 = *(v6 - 8);
  v36 = v6;
  v37 = v7;
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for TaskHistory.Running(0);
  v35 = *(v11 - 8);
  v12 = *(v35 + 64);
  __chkstk_darwin(v11);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10000C9C0(&qword_1005D0F28, &qword_1004D6018);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v18 = &v34 - v17;
  v19 = type metadata accessor for ClientCommand(0);
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  __chkstk_darwin(v19);
  v23 = &v34 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10016B730(a1, v18);
  if ((*(v20 + 48))(v18, 1, v19) == 1)
  {
    return sub_100025F40(v18, &qword_1005D0F28, &qword_1004D6018);
  }

  sub_10016B7A0(v18, v23, type metadata accessor for ClientCommand);
  v25 = *(sub_10000C9C0(&qword_1005CD278, &qword_1004CF7B0) + 64);
  *v14 = a2;
  *(v14 + 2) = a3;
  sub_10016AF30(v23, &v14[v25], type metadata accessor for ClientCommand);
  swift_storeEnumTagMultiPayload();
  v26 = v34;
  v27 = *v34;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v27 = sub_10008732C(0, v27[2] + 1, 1, v27);
  }

  v29 = v27[2];
  v28 = v27[3];
  if (v29 >= v28 >> 1)
  {
    v27 = sub_10008732C(v28 > 1, v29 + 1, 1, v27);
  }

  v27[2] = v29 + 1;
  sub_10016B7A0(v14, v27 + ((*(v35 + 80) + 32) & ~*(v35 + 80)) + *(v35 + 72) * v29, type metadata accessor for TaskHistory.Running);
  *v26 = v27;
  v30 = *(sub_10000C9C0(&qword_1005CD270, &qword_1004CF7F0) + 48);
  sub_10016AF30(v23, v10, type metadata accessor for ClientCommand);
  *&v10[v30] = a3;
  swift_storeEnumTagMultiPayload();
  v31 = v26[1];
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v31 = sub_100087354(0, v31[2] + 1, 1, v31);
  }

  v33 = v31[2];
  v32 = v31[3];
  if (v33 >= v32 >> 1)
  {
    v31 = sub_100087354(v32 > 1, v33 + 1, 1, v31);
  }

  sub_10016AF98(v23, type metadata accessor for ClientCommand);
  v31[2] = v33 + 1;
  result = sub_10016B7A0(v10, v31 + ((*(v37 + 80) + 32) & ~*(v37 + 80)) + *(v37 + 72) * v33, type metadata accessor for TaskHistory.Previous);
  v26[1] = v31;
  return result;
}

uint64_t sub_10016A138(unint64_t a1, int a2, int a3)
{
  v7 = type metadata accessor for TaskHistory.Previous(0);
  v24 = *(v7 - 8);
  v8 = *(v24 + 64);
  __chkstk_darwin(v7);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for TaskHistory.Running(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v15 = a2;
  *(v15 + 1) = a3;
  *(v15 + 1) = a1;
  swift_storeEnumTagMultiPayload();
  v16 = *v3;
  sub_10011D8FC(a1);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v16 = sub_10008732C(0, v16[2] + 1, 1, v16);
  }

  v18 = v16[2];
  v17 = v16[3];
  if (v18 >= v17 >> 1)
  {
    v16 = sub_10008732C(v17 > 1, v18 + 1, 1, v16);
  }

  v16[2] = v18 + 1;
  sub_10016B7A0(v15, v16 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v18, type metadata accessor for TaskHistory.Running);
  *v3 = v16;
  *v10 = a1;
  *(v10 + 2) = a3;
  swift_storeEnumTagMultiPayload();
  v19 = *(v3 + 8);
  sub_10011D8FC(a1);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v19 = sub_100087354(0, v19[2] + 1, 1, v19);
  }

  v21 = v19[2];
  v20 = v19[3];
  if (v21 >= v20 >> 1)
  {
    v19 = sub_100087354(v20 > 1, v21 + 1, 1, v19);
  }

  v19[2] = v21 + 1;
  result = sub_10016B7A0(v10, v19 + ((*(v24 + 80) + 32) & ~*(v24 + 80)) + *(v24 + 72) * v21, type metadata accessor for TaskHistory.Previous);
  *(v3 + 8) = v19;
  return result;
}

uint64_t sub_10016A3F0()
{
  v1 = type metadata accessor for TaskHistory.Running(0);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1);
  v4 = (&v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10016AF30(v0, v4, type metadata accessor for TaskHistory.Running);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = *v4;
    sub_100020EDC(v4[1]);
  }

  else
  {
    v5 = *v4;
    v6 = sub_10000C9C0(&qword_1005CD278, &qword_1004CF7B0);
    sub_10016AF98(v4 + *(v6 + 64), type metadata accessor for ClientCommand);
  }

  return v5;
}

uint64_t sub_10016A4F8(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  if ((sub_100102B68(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  return sub_100102D20(v2, v3);
}

uint64_t sub_10016A554(uint64_t a1, uint64_t a2)
{
  v51 = type metadata accessor for TaskHistory.Previous(0);
  v4 = *(v51 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v51);
  v50 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v49 = &v45 - v8;
  v48 = type metadata accessor for TaskHistory.Running(0);
  v9 = *(v48 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v48);
  v12 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v45 - v14;
  v53 = 0;
  v54 = 0xE000000000000000;
  sub_1004A6724(40);

  v53 = 0x20676E696E6E7572;
  v54 = 0xE900000000000028;
  v52 = *(a1 + 16);
  v16 = v52;
  v55._countAndFlagsBits = sub_1004A6CE4();
  sub_1004A5994(v55);

  v56._countAndFlagsBits = 2065709609;
  v56._object = 0xE400000000000000;
  sub_1004A5994(v56);
  v17 = _swiftEmptyArrayStorage;
  if (v16)
  {
    v45 = v4;
    v46 = a2;
    v52 = _swiftEmptyArrayStorage;
    sub_100091A08(0, v16, 0);
    v17 = v52;
    v18 = v9;
    v19 = a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
    v47 = *(v18 + 72);
    do
    {
      sub_10016AF30(v19, v15, type metadata accessor for TaskHistory.Running);
      sub_10016AF30(v15, v12, type metadata accessor for TaskHistory.Running);
      v20 = sub_1004A5824();
      v22 = v21;
      sub_10016AF98(v15, type metadata accessor for TaskHistory.Running);
      v52 = v17;
      v24 = v17[2];
      v23 = v17[3];
      if (v24 >= v23 >> 1)
      {
        sub_100091A08((v23 > 1), v24 + 1, 1);
        v17 = v52;
      }

      v17[2] = v24 + 1;
      v25 = &v17[2 * v24];
      v25[4] = v20;
      v25[5] = v22;
      v19 += v47;
      --v16;
    }

    while (v16);
    v4 = v45;
    a2 = v46;
  }

  v52 = v17;
  v26 = sub_10000C9C0(&unk_1005DA9A0, &unk_1004CF770);
  sub_100031CDC();
  v27 = sub_1004A5614();
  v29 = v28;

  v57._countAndFlagsBits = v27;
  v57._object = v29;
  sub_1004A5994(v57);

  v58._countAndFlagsBits = 0x6976657270202C7DLL;
  v58._object = 0xEE0028203A73756FLL;
  sub_1004A5994(v58);
  v52 = *(a2 + 16);
  v30 = v52;
  v59._countAndFlagsBits = sub_1004A6CE4();
  sub_1004A5994(v59);

  v60._countAndFlagsBits = 2065709609;
  v60._object = 0xE400000000000000;
  sub_1004A5994(v60);
  v31 = _swiftEmptyArrayStorage;
  if (v30)
  {
    v48 = v26;
    v52 = _swiftEmptyArrayStorage;
    sub_100091A08(0, v30, 0);
    v31 = v52;
    v32 = a2 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v33 = *(v4 + 72);
    do
    {
      v34 = v49;
      sub_10016AF30(v32, v49, type metadata accessor for TaskHistory.Previous);
      sub_10016AF30(v34, v50, type metadata accessor for TaskHistory.Previous);
      v35 = sub_1004A5824();
      v37 = v36;
      sub_10016AF98(v34, type metadata accessor for TaskHistory.Previous);
      v52 = v31;
      v39 = v31[2];
      v38 = v31[3];
      if (v39 >= v38 >> 1)
      {
        sub_100091A08((v38 > 1), v39 + 1, 1);
        v31 = v52;
      }

      v31[2] = v39 + 1;
      v40 = &v31[2 * v39];
      v40[4] = v35;
      v40[5] = v37;
      v32 += v33;
      --v30;
    }

    while (v30);
  }

  v52 = v31;
  v41 = sub_1004A5614();
  v43 = v42;

  v61._countAndFlagsBits = v41;
  v61._object = v43;
  sub_1004A5994(v61);

  v62._countAndFlagsBits = 125;
  v62._object = 0xE100000000000000;
  sub_1004A5994(v62);
  return v53;
}

unint64_t sub_10016AA64(uint64_t a1)
{
  v3 = v1;
  v4 = type metadata accessor for ClientCommand(0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(*(a1 - 8) + 64);
  __chkstk_darwin(v9);
  v11 = (&v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10016AF30(v3, v11, type metadata accessor for TaskHistory.Previous);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = *v11;
    v13 = Action.kind.getter(*v11);
    v14 = Action.Kind.description.getter(v13);
    sub_100020EDC(v12);
  }

  else
  {
    sub_10016B7A0(v11, v7, type metadata accessor for ClientCommand);
    v14 = ClientCommand.logIdentifier.getter();
    sub_10016AF98(v7, type metadata accessor for ClientCommand);
  }

  return v14;
}

BOOL sub_10016AC00(uint64_t a1, uint64_t a2)
{
  v2 = *a1 == *a2;
  if (!*(a2 + 8))
  {
    v2 = 0;
  }

  if (*(a1 + 8))
  {
    return v2;
  }

  else
  {
    return (*a1 == *a2) & ~*(a2 + 8);
  }
}

uint64_t sub_10016AC38(uint64_t a1, void **a2)
{
  v4 = type metadata accessor for TaskHistory.Running(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4 - 8);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10016AF30(a1, v8, type metadata accessor for TaskHistory.Running);
  v9 = *a2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a2 = v9;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v9 = sub_10008732C(0, v9[2] + 1, 1, v9);
    *a2 = v9;
  }

  v12 = v9[2];
  v11 = v9[3];
  if (v12 >= v11 >> 1)
  {
    v9 = sub_10008732C(v11 > 1, v12 + 1, 1, v9);
    *a2 = v9;
  }

  v9[2] = v12 + 1;
  return sub_10016B7A0(v8, v9 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v12, type metadata accessor for TaskHistory.Running);
}

uint64_t sub_10016ADA4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TaskHistory.Running(0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v7 = (&v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10016AF30(a1, v7, type metadata accessor for TaskHistory.Running);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    v9 = *v7;
    sub_100020EDC(v7[1]);
  }

  else
  {
    v9 = *v7;
    v10 = sub_10000C9C0(&qword_1005CD278, &qword_1004CF7B0);
    sub_10016AF98(v7 + *(v10 + 64), type metadata accessor for ClientCommand);
  }

  v11 = *(a2 + 8);
  result = swift_isUniquelyReferenced_nonNull_native();
  *(a2 + 8) = v11;
  if ((result & 1) == 0)
  {
    result = sub_100087F48(0, *(v11 + 16) + 1, 1, v11);
    v11 = result;
    *(a2 + 8) = result;
  }

  v14 = *(v11 + 16);
  v13 = *(v11 + 24);
  if (v14 >= v13 >> 1)
  {
    result = sub_100087F48((v13 > 1), v14 + 1, 1, v11);
    v11 = result;
    *(a2 + 8) = result;
  }

  *(v11 + 16) = v14 + 1;
  v15 = v11 + 12 * v14;
  *(v15 + 32) = v9;
  *(v15 + 40) = EnumCaseMultiPayload == 1;
  return result;
}

uint64_t sub_10016AF30(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10016AF98(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10016AFF8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ClientCommand(0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v36[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v8);
  v10 = &v36[-v9];
  v11 = type metadata accessor for TaskHistory.Running(0);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11);
  v14 = &v36[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v15);
  v17 = &v36[-v16];
  v18 = sub_10000C9C0(&qword_1005D1F60, &qword_1004D9BB8);
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8);
  v21 = &v36[-v20];
  v23 = &v36[*(v22 + 56) - v20];
  sub_10016AF30(a1, &v36[-v20], type metadata accessor for TaskHistory.Running);
  sub_10016AF30(a2, v23, type metadata accessor for TaskHistory.Running);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_10016AF30(v21, v17, type metadata accessor for TaskHistory.Running);
    v28 = v17[2];
    v29 = *(sub_10000C9C0(&qword_1005CD278, &qword_1004CF7B0) + 64);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v31 = *v17;
      v30 = v17[1];
      v38 = v28;
      v39 = v30;
      v32 = *v23;
      v33 = *(v23 + 1);
      v37 = *(v23 + 2);
      sub_10016B7A0(v17 + v29, v10, type metadata accessor for ClientCommand);
      sub_10016B7A0(&v23[v29], v7, type metadata accessor for ClientCommand);
      v34 = v31 == v32 && v39 == v33;
      if (v34 && v38 == v37)
      {
        v27 = static ClientCommand.__derived_enum_equals(_:_:)(v10, v7);
        sub_10016AF98(v7, type metadata accessor for ClientCommand);
        sub_10016AF98(v10, type metadata accessor for ClientCommand);
        goto LABEL_17;
      }

      sub_10016AF98(v7, type metadata accessor for ClientCommand);
      sub_10016AF98(v10, type metadata accessor for ClientCommand);
      goto LABEL_20;
    }

    sub_10016AF98(v17 + v29, type metadata accessor for ClientCommand);
LABEL_9:
    sub_100025F40(v21, &qword_1005D1F60, &qword_1004D9BB8);
LABEL_21:
    v27 = 0;
    return v27 & 1;
  }

  sub_10016AF30(v21, v14, type metadata accessor for TaskHistory.Running);
  v24 = *(v14 + 1);
  v25 = *(v14 + 1);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_100020EDC(v25);
    goto LABEL_9;
  }

  if (*v14 != *v23 || v24 != *(v23 + 1))
  {
    sub_100020EDC(*(v23 + 1));
    sub_100020EDC(v25);
LABEL_20:
    sub_10016AF98(v21, type metadata accessor for TaskHistory.Running);
    goto LABEL_21;
  }

  v26 = *(v23 + 1);
  v27 = static Action.__derived_enum_equals(_:_:)(v25, v26);
  sub_100020EDC(v26);
  sub_100020EDC(v25);
LABEL_17:
  sub_10016AF98(v21, type metadata accessor for TaskHistory.Running);
  return v27 & 1;
}

uint64_t sub_10016B3E8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ClientCommand(0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for TaskHistory.Previous(0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v33 - v13;
  v15 = sub_10000C9C0(&qword_1005D0940, &qword_1004D43A8);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v18 = &v33 - v17;
  v20 = &v33 + *(v19 + 56) - v17;
  sub_10016AF30(a1, &v33 - v17, type metadata accessor for TaskHistory.Previous);
  sub_10016AF30(a2, v20, type metadata accessor for TaskHistory.Previous);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_10016AF30(v18, v14, type metadata accessor for TaskHistory.Previous);
    v27 = *(sub_10000C9C0(&qword_1005CD270, &qword_1004CF7F0) + 48);
    v28 = *&v14[v27];
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v29 = *&v20[v27];
      sub_10016B7A0(v20, v7, type metadata accessor for ClientCommand);
      v30 = static ClientCommand.__derived_enum_equals(_:_:)(v14, v7);
      sub_10016AF98(v7, type metadata accessor for ClientCommand);
      sub_10016AF98(v14, type metadata accessor for ClientCommand);
      if (v30)
      {
        v26 = v28 == v29;
        goto LABEL_11;
      }

      goto LABEL_15;
    }

    sub_10016AF98(v14, type metadata accessor for ClientCommand);
LABEL_8:
    sub_100025F40(v18, &qword_1005D0940, &qword_1004D43A8);
    return 0;
  }

  sub_10016AF30(v18, v11, type metadata accessor for TaskHistory.Previous);
  v21 = *v11;
  v22 = *(v11 + 2);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_100020EDC(v21);
    goto LABEL_8;
  }

  v23 = *v20;
  v24 = *(v20 + 2);
  v25 = static Action.__derived_enum_equals(_:_:)(v21, v23);
  sub_100020EDC(v23);
  sub_100020EDC(v21);
  if ((v25 & 1) == 0)
  {
LABEL_15:
    sub_10016AF98(v18, type metadata accessor for TaskHistory.Previous);
    return 0;
  }

  v26 = v22 == v24;
LABEL_11:
  v31 = v26;
  sub_10016AF98(v18, type metadata accessor for TaskHistory.Previous);
  return v31;
}

uint64_t sub_10016B730(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C9C0(&qword_1005D0F28, &qword_1004D6018);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10016B7A0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_10016BC28()
{
  if (!qword_1005D1FE8)
  {
    type metadata accessor for ClientCommand(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1005D1FE8);
    }
  }
}

void sub_10016BC90()
{
  if (!qword_1005D1FF0)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1005D1FF0);
    }
  }
}

uint64_t sub_10016BD1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t))
{
  result = a4(319);
  if (v7 <= 0x3F)
  {
    result = a5(319);
    if (v8 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_10016BD9C()
{
  if (!qword_1005D20A0)
  {
    type metadata accessor for ClientCommand(255);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_1005D20A0);
    }
  }
}

void sub_10016BE0C()
{
  if (!qword_1005D20A8)
  {
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_1005D20A8);
    }
  }
}

uint64_t sub_10016BE7C@<X0>(void (*a1)(char *, char *)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X6>, uint64_t a6@<X8>)
{
  v29 = a5;
  v30 = a2;
  v32 = a4;
  v31 = a1;
  v28 = *(a3 - 8);
  v10 = *(v28 + 64);
  v11 = (__chkstk_darwin)();
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v14 + 16);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = __chkstk_darwin(v11);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *(*(v21 - 8) + 64);
  __chkstk_darwin(v18);
  v24 = &v28 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v25 + 16))(v24, v6);
  v26 = 1;
  if ((*(v16 + 48))(v24, 1, v15) != 1)
  {
    (*(v16 + 32))(v20, v24, v15);
    v31(v20, v13);
    (*(v16 + 8))(v20, v15);
    if (v7)
    {
      return (*(v28 + 32))(v29, v13, a3);
    }

    v26 = 0;
  }

  return (*(*(v32 - 8) + 56))(a6, v26, 1);
}

uint64_t sub_10016C124(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a1;
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(a1);
  v10 = &v21.i8[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = *(v11 + 40);
  v8.i64[0] = v5;
  v21 = *(v11 + 24);
  *&v13 = vdupq_laneq_s64(v21, 1).u64[0];
  *(&v13 + 1) = v12;
  *v22 = vzip1q_s64(v8, v21);
  *&v22[16] = v13;
  v14 = type metadata accessor for TaskHistoryWithCustomIDs.CustomIDMap.Command();
  v15 = *(*(v14 - 8) + 64);
  v16 = __chkstk_darwin(v14);
  v18 = &v21.i8[-v17];
  (*(v6 + 16))(v10, a2, v5, v16);
  *v18 = v4;
  *v22 = v5;
  *&v22[8] = v21;
  *&v22[24] = v12;
  v19 = type metadata accessor for TaskHistoryWithCustomIDs.CustomIDMap.Command();
  (*(v6 + 32))(&v18[*(v19 + 52)], v10, v5);
  sub_1004A5CD4();
  return sub_1004A5CA4();
}

uint64_t sub_10016C2C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a1;
  v5 = *(a3 + 24);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(a1);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v10 + 16);
  *&v12 = v11;
  *(&v12 + 1) = v5;
  v20 = *(v10 + 32);
  v21 = v12;
  v22 = v20;
  v13 = type metadata accessor for TaskHistoryWithCustomIDs.CustomIDMap.Action();
  v14 = *(*(v13 - 8) + 64);
  v15 = __chkstk_darwin(v13);
  v17 = &v20 - v16;
  (*(v6 + 16))(v9, a2, v5, v15);
  *v17 = v4;
  *&v21 = v11;
  *(&v21 + 1) = v5;
  v22 = v20;
  v18 = type metadata accessor for TaskHistoryWithCustomIDs.CustomIDMap.Action();
  (*(v6 + 32))(&v17[*(v18 + 52)], v9, v5);
  sub_1004A5CD4();
  return sub_1004A5CA4();
}

uint64_t sub_10016C45C@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  v26 = a7;
  v32 = a3;
  v33 = a4;
  v34 = a5;
  v35 = a6;
  v13 = type metadata accessor for TaskHistoryWithCustomIDs.CustomIDMap.Command();
  v14 = sub_1004A6374();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = &v25 - v17;
  v32 = a2;
  v27 = a3;
  v28 = a4;
  v29 = a5;
  v30 = a6;
  v31 = a1;
  sub_1004A5CD4();

  swift_getWitnessTable();
  sub_1004A5B54();

  v19 = *(v13 - 8);
  if ((*(v19 + 48))(v18, 1, v13) == 1)
  {
    (*(v15 + 8))(v18, v14);
    v20 = *(a3 - 8);
    v21 = 1;
    v22 = v26;
  }

  else
  {
    v20 = *(a3 - 8);
    v23 = v26;
    (*(v20 + 16))(v26, &v18[*(v13 + 52)], a3);
    (*(v19 + 8))(v18, v13);
    v21 = 0;
    v22 = v23;
  }

  return (*(v20 + 56))(v22, v21, 1, a3);
}

uint64_t sub_10016C704@<X0>(int a1@<W0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  v26 = a7;
  v32 = a3;
  v33 = a4;
  v34 = a5;
  v35 = a6;
  v13 = type metadata accessor for TaskHistoryWithCustomIDs.CustomIDMap.Action();
  v14 = sub_1004A6374();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = &v25 - v17;
  v32 = a2;
  v27 = a3;
  v28 = a4;
  v29 = a5;
  v30 = a6;
  v31 = a1;
  sub_1004A5CD4();

  swift_getWitnessTable();
  sub_1004A5B54();

  v19 = *(v13 - 8);
  if ((*(v19 + 48))(v18, 1, v13) == 1)
  {
    (*(v15 + 8))(v18, v14);
    v20 = *(a4 - 8);
    v21 = 1;
    v22 = v26;
  }

  else
  {
    v20 = *(a4 - 8);
    v23 = v26;
    (*(v20 + 16))(v26, &v18[*(v13 + 52)], a4);
    (*(v19 + 8))(v18, v13);
    v21 = 0;
    v22 = v23;
  }

  return (*(v20 + 56))(v22, v21, 1, a4);
}

uint64_t sub_10016C9AC(_DWORD *a1, _DWORD *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = *(type metadata accessor for TaskHistoryWithCustomIDs.CustomIDMap.Command() + 52);
  return sub_1004A5724() & 1;
}

uint64_t sub_10016CA34(_DWORD *a1, _DWORD *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = *(type metadata accessor for TaskHistoryWithCustomIDs.CustomIDMap.Action() + 52);
  return sub_1004A5724() & 1;
}

uint64_t sub_10016CABC(_DWORD *a1, _DWORD *a2, void *a3)
{
  v4 = a3[2];
  v3 = a3[3];
  v5 = a3[4];
  v6 = a3[5];
  return sub_10016C9AC(a1, a2);
}

uint64_t sub_10016CACC(_DWORD *a1, _DWORD *a2, void *a3)
{
  v4 = a3[2];
  v3 = a3[3];
  v5 = a3[4];
  v6 = a3[5];
  return sub_10016CA34(a1, a2);
}

uint64_t sub_10016CADC()
{
  type metadata accessor for TaskHistoryWithCustomIDs.CustomIDMap.Command();
  swift_getWitnessTable();
  if (sub_1004A5CE4())
  {
    type metadata accessor for TaskHistoryWithCustomIDs.CustomIDMap.Action();
    swift_getWitnessTable();
    v0 = sub_1004A5CE4();
  }

  else
  {
    v0 = 0;
  }

  return v0 & 1;
}

uint64_t sub_10016CBE0(uint64_t *a1, uint64_t *a2, void *a3)
{
  v3 = *a1;
  v4 = a1[1];
  v6 = *a2;
  v5 = a2[1];
  v7 = a3[2];
  v8 = a3[3];
  v9 = a3[4];
  v10 = a3[5];
  return sub_10016CADC();
}

uint64_t sub_10016CC00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a2;
  v9 = *(a1 + 16);
  v10 = _swiftEmptyArrayStorage;
  v42 = v9;
  if (v9)
  {
    v53 = _swiftEmptyArrayStorage;
    sub_100091A08(0, v9, 0);
    v12 = a8;
    v10 = _swiftEmptyArrayStorage;
    v13 = *(type metadata accessor for TaskHistory.Running(0) - 8);
    v14 = a1 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
    v15 = *(v13 + 72);
    v16 = v9;
    do
    {
      sub_10016D034(v14, a3, a4, a5, a6, a7, &v51, v12);
      v17 = v51;
      v18 = v52;
      v53 = v10;
      v20 = v10[2];
      v19 = v10[3];
      if (v20 >= v19 >> 1)
      {
        sub_100091A08((v19 > 1), v20 + 1, 1);
        v12 = a8;
        v10 = v53;
      }

      v10[2] = v20 + 1;
      v21 = &v10[2 * v20];
      v21[4] = v17;
      v21[5] = v18;
      v14 += v15;
      --v16;
      v8 = a2;
    }

    while (v16);
    v9 = v42;
  }

  v22 = *(v8 + 16);
  v23 = _swiftEmptyArrayStorage;
  if (v22)
  {
    v53 = _swiftEmptyArrayStorage;
    v24 = v8;
    sub_100091A08(0, v22, 0);
    v25 = a8;
    v23 = v53;
    v26 = *(type metadata accessor for TaskHistory.Previous(0) - 8);
    v27 = v24 + ((*(v26 + 80) + 32) & ~*(v26 + 80));
    v44 = *(v26 + 72);
    v41 = v22;
    v28 = v22;
    do
    {
      sub_10016D514(v27, a3, a4, a5, a6, a7, &v51, v25);
      v29 = v51;
      v30 = v52;
      v53 = v23;
      v32 = v23[2];
      v31 = v23[3];
      if (v32 >= v31 >> 1)
      {
        sub_100091A08((v31 > 1), v32 + 1, 1);
        v25 = a8;
        v23 = v53;
      }

      v23[2] = v32 + 1;
      v33 = &v23[2 * v32];
      v33[4] = v29;
      v33[5] = v30;
      v27 += v44;
      --v28;
    }

    while (v28);
    v22 = v41;
    v9 = v42;
  }

  v51 = 0;
  v52 = 0xE000000000000000;
  sub_1004A6724(39);

  v51 = 0x20676E696E6E7572;
  v52 = 0xE900000000000028;
  v53 = v9;
  v54._countAndFlagsBits = sub_1004A6CE4();
  sub_1004A5994(v54);

  v55._countAndFlagsBits = 2065709609;
  v55._object = 0xE400000000000000;
  sub_1004A5994(v55);
  v53 = v10;
  sub_10000C9C0(&unk_1005DA9A0, &unk_1004CF770);
  sub_100031CDC();
  v34 = sub_1004A5614();
  v36 = v35;

  v56._countAndFlagsBits = v34;
  v56._object = v36;
  sub_1004A5994(v56);

  v57._countAndFlagsBits = 0x7472617473202C7DLL;
  v57._object = 0xED000028203A6465;
  sub_1004A5994(v57);
  v53 = v22;
  v58._countAndFlagsBits = sub_1004A6CE4();
  sub_1004A5994(v58);

  v59._countAndFlagsBits = 2065709609;
  v59._object = 0xE400000000000000;
  sub_1004A5994(v59);
  v53 = v23;
  v37 = sub_1004A5614();
  v39 = v38;

  v60._countAndFlagsBits = v37;
  v60._object = v39;
  sub_1004A5994(v60);

  v61._countAndFlagsBits = 125;
  v61._object = 0xE100000000000000;
  sub_1004A5994(v61);
  return v51;
}

uint64_t sub_10016D034@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X7>, uint64_t *a7@<X8>, uint64_t a8)
{
  v51 = a6;
  v46 = a2;
  v47 = a3;
  v52 = a7;
  v50 = a8;
  v11 = sub_1004A6374();
  v48 = *(v11 - 8);
  v49 = v11;
  v12 = *(v48 + 64);
  __chkstk_darwin(v11);
  v14 = &v46 - v13;
  v15 = sub_1004A6374();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v19 = &v46 - v18;
  v20 = type metadata accessor for TaskHistory.Running(0);
  v21 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20);
  v23 = &v46 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10016DA2C(a1, v23, type metadata accessor for TaskHistory.Running);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v26 = *v23;
  v25 = *(v23 + 1);
  if (EnumCaseMultiPayload == 1)
  {
    sub_100020EDC(*(v23 + 1));
    v28 = v50;
    v27 = v51;
    v29 = sub_10016C704(v25, v47, a4, a5, v51, v50, v14);
    __chkstk_darwin(v29);
    *(&v46 - 4) = a4;
    *(&v46 - 3) = a5;
    *(&v46 - 2) = v27;
    *(&v46 - 1) = v28;
    v30 = v49;
    sub_10016BE7C(sub_10016DA94, (&v46 - 6), &type metadata for Never, &type metadata for String, v31, &v53);
    (*(v48 + 8))(v14, v30);
    if (v54)
    {
      v32 = v53;
    }

    else
    {
      v32 = 15932;
    }

    if (v54)
    {
      v33 = v54;
    }

    else
    {
      v33 = 0xE200000000000000;
    }

    v55 = v26;
    v53 = sub_1004A6CE4();
    v54 = v34;
    v57._countAndFlagsBits = 2304032;
    v57._object = 0xE300000000000000;
    sub_1004A5994(v57);
    v55 = v25;
    v58._countAndFlagsBits = sub_1004A6CE4();
    sub_1004A5994(v58);

    v59._countAndFlagsBits = 8233;
    v59._object = 0xE200000000000000;
    sub_1004A5994(v59);
    v60._countAndFlagsBits = v32;
    v60._object = v33;
    sub_1004A5994(v60);

    v36 = v53;
    v37 = v54;
  }

  else
  {
    LODWORD(v48) = *(v23 + 1);
    LODWORD(v49) = *(v23 + 2);
    LODWORD(v47) = v26;
    v38 = v50;
    v39 = v51;
    v40 = sub_10016C45C(v49, v46, a4, a5, v51, v50, v19);
    __chkstk_darwin(v40);
    *(&v46 - 4) = a4;
    *(&v46 - 3) = a5;
    *(&v46 - 2) = v39;
    *(&v46 - 1) = v38;
    sub_10016BE7C(sub_10016DB00, (&v46 - 6), &type metadata for Never, &type metadata for String, v41, &v53);
    (*(v16 + 8))(v19, v15);
    if (v54)
    {
      v42 = v53;
    }

    else
    {
      v42 = 15932;
    }

    if (v54)
    {
      v43 = v54;
    }

    else
    {
      v43 = 0xE200000000000000;
    }

    v44 = *(sub_10000C9C0(&qword_1005CD278, &qword_1004CF7B0) + 64);
    v53 = 0;
    v54 = 0xE000000000000000;
    LOBYTE(v55) = v47;
    v56 = v48;
    sub_1004A6934();
    v61._countAndFlagsBits = 2304032;
    v61._object = 0xE300000000000000;
    sub_1004A5994(v61);
    v55 = v49;
    v62._countAndFlagsBits = sub_1004A6CE4();
    sub_1004A5994(v62);

    v63._countAndFlagsBits = 8233;
    v63._object = 0xE200000000000000;
    sub_1004A5994(v63);
    v64._countAndFlagsBits = v42;
    v64._object = v43;
    sub_1004A5994(v64);

    v36 = v53;
    v37 = v54;
    result = sub_10016D98C(&v23[v44]);
  }

  v45 = v52;
  *v52 = v36;
  v45[1] = v37;
  return result;
}

uint64_t sub_10016D514@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X7>, uint64_t *a7@<X8>, uint64_t a8)
{
  v46 = a6;
  v41 = a3;
  v42 = a2;
  v47 = a7;
  v45 = a8;
  v11 = sub_1004A6374();
  v44 = *(v11 - 8);
  v12 = *(v44 + 64);
  __chkstk_darwin(v11);
  v14 = &v41 - v13;
  v15 = sub_1004A6374();
  v43 = *(v15 - 8);
  v16 = *(v43 + 64);
  __chkstk_darwin(v15);
  v18 = &v41 - v17;
  v19 = type metadata accessor for TaskHistory.Previous(0);
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19);
  v22 = &v41 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10016DA2C(a1, v22, type metadata accessor for TaskHistory.Previous);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v23 = *(v22 + 2);
    sub_100020EDC(*v22);
    v25 = v45;
    v24 = v46;
    v26 = sub_10016C704(v23, v41, a4, a5, v46, v45, v14);
    __chkstk_darwin(v26);
    *(&v41 - 4) = a4;
    *(&v41 - 3) = a5;
    *(&v41 - 2) = v24;
    *(&v41 - 1) = v25;
    sub_10016BE7C(sub_10016E424, (&v41 - 6), &type metadata for Never, &type metadata for String, v27, &v48);
    (*(v44 + 8))(v14, v11);
    if (v49)
    {
      v28 = v48;
    }

    else
    {
      v28 = 15932;
    }

    if (v49)
    {
      v29 = v49;
    }

    else
    {
      v29 = 0xE200000000000000;
    }

    v48 = 9000;
    v49 = 0xE200000000000000;
    v50 = v23;
    v51._countAndFlagsBits = sub_1004A6CE4();
    sub_1004A5994(v51);

    v52._countAndFlagsBits = 8233;
    v52._object = 0xE200000000000000;
    sub_1004A5994(v52);
    v53._countAndFlagsBits = v28;
    v53._object = v29;
    sub_1004A5994(v53);

    v31 = v48;
    v32 = v49;
  }

  else
  {
    v33 = *&v22[*(sub_10000C9C0(&qword_1005CD270, &qword_1004CF7F0) + 48)];
    v35 = v45;
    v34 = v46;
    v36 = sub_10016C45C(v33, v42, a4, a5, v46, v45, v18);
    __chkstk_darwin(v36);
    *(&v41 - 4) = a4;
    *(&v41 - 3) = a5;
    *(&v41 - 2) = v34;
    *(&v41 - 1) = v35;
    sub_10016BE7C(sub_10016E43C, (&v41 - 6), &type metadata for Never, &type metadata for String, v37, &v48);
    (*(v43 + 8))(v18, v15);
    if (v49)
    {
      v38 = v48;
    }

    else
    {
      v38 = 15932;
    }

    if (v49)
    {
      v39 = v49;
    }

    else
    {
      v39 = 0xE200000000000000;
    }

    v48 = 9000;
    v49 = 0xE200000000000000;
    v50 = v33;
    v54._countAndFlagsBits = sub_1004A6CE4();
    sub_1004A5994(v54);

    v55._countAndFlagsBits = 8233;
    v55._object = 0xE200000000000000;
    sub_1004A5994(v55);
    v56._countAndFlagsBits = v38;
    v56._object = v39;
    sub_1004A5994(v56);

    v31 = v48;
    v32 = v49;
    result = sub_10016D98C(v22);
  }

  v40 = v47;
  *v47 = v31;
  v40[1] = v32;
  return result;
}

uint64_t sub_10016D98C(uint64_t a1)
{
  v2 = type metadata accessor for ClientCommand(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10016DA2C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10016DAAC@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + 24);
  result = sub_1004A6CF4();
  *a1 = 0;
  a1[1] = 0xE000000000000000;
  return result;
}

uint64_t sub_10016DB18@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + 16);
  result = sub_1004A6CF4();
  *a1 = 0;
  a1[1] = 0xE000000000000000;
  return result;
}

uint64_t sub_10016DB6C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_10016DBC8(uint64_t a1)
{
  v1 = *(a1 + 24);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_10016DC48(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 24) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))((a1 + v6 + 4) & ~v6);
  }

  v8 = ((v6 + 4) & ~v6) + *(*(*(a3 + 24) - 8) + 64);
  v9 = 8 * v8;
  if (v8 <= 3)
  {
    v11 = ((v7 + ~(-1 << v9)) >> v9) + 1;
    if (HIWORD(v11))
    {
      v10 = *(a1 + v8);
      if (!v10)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v11 > 0xFF)
    {
      v10 = *(a1 + v8);
      if (!*(a1 + v8))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v11 < 2)
    {
LABEL_22:
      if (v5)
      {
        return (*(v4 + 48))((a1 + v6 + 4) & ~v6);
      }

      return 0;
    }
  }

  v10 = *(a1 + v8);
  if (!*(a1 + v8))
  {
    goto LABEL_22;
  }

LABEL_11:
  v12 = (v10 - 1) << v9;
  if (v8 > 3)
  {
    v12 = 0;
  }

  if (v8)
  {
    if (v8 > 3)
    {
      LODWORD(v8) = 4;
    }

    if (v8 > 2)
    {
      if (v8 == 3)
      {
        LODWORD(v8) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v8) = *a1;
      }
    }

    else if (v8 == 1)
    {
      LODWORD(v8) = *a1;
    }

    else
    {
      LODWORD(v8) = *a1;
    }
  }

  return v5 + (v8 | v12) + 1;
}

void sub_10016DDA8(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 24) - 8);
  v7 = *(v6 + 84);
  v8 = *(v6 + 80);
  v9 = ((v8 + 4) & ~v8) + *(v6 + 64);
  v10 = a3 >= v7;
  v11 = a3 - v7;
  if (v11 != 0 && v10)
  {
    if (v9 <= 3)
    {
      v15 = ((v11 + ~(-1 << (8 * v9))) >> (8 * v9)) + 1;
      if (HIWORD(v15))
      {
        v12 = 4;
      }

      else
      {
        if (v15 < 0x100)
        {
          v16 = 1;
        }

        else
        {
          v16 = 2;
        }

        if (v15 >= 2)
        {
          v12 = v16;
        }

        else
        {
          v12 = 0;
        }
      }
    }

    else
    {
      v12 = 1;
    }
  }

  else
  {
    v12 = 0;
  }

  if (v7 < a2)
  {
    v13 = ~v7 + a2;
    if (v9 < 4)
    {
      v14 = (v13 >> (8 * v9)) + 1;
      if (v9)
      {
        v17 = v13 & ~(-1 << (8 * v9));
        bzero(a1, v9);
        if (v9 != 3)
        {
          if (v9 == 2)
          {
            *a1 = v17;
            if (v12 > 1)
            {
LABEL_39:
              if (v12 == 2)
              {
                *&a1[v9] = v14;
              }

              else
              {
                *&a1[v9] = v14;
              }

              return;
            }
          }

          else
          {
            *a1 = v13;
            if (v12 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *a1 = v17;
        a1[2] = BYTE2(v17);
      }

      if (v12 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      bzero(a1, v9);
      *a1 = v13;
      v14 = 1;
      if (v12 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v12)
    {
      a1[v9] = v14;
    }

    return;
  }

  if (v12 > 1)
  {
    if (v12 != 2)
    {
      *&a1[v9] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_28;
    }

    *&a1[v9] = 0;
  }

  else if (v12)
  {
    a1[v9] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return;
  }

LABEL_28:
  v18 = *(v6 + 56);
  v19 = &a1[v8 + 4] & ~v8;

  v18(v19);
}

uint64_t sub_10016DFCC(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_10016E04C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))((a1 + v6 + 4) & ~v6);
  }

  v8 = ((v6 + 4) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
  v9 = 8 * v8;
  if (v8 <= 3)
  {
    v11 = ((v7 + ~(-1 << v9)) >> v9) + 1;
    if (HIWORD(v11))
    {
      v10 = *(a1 + v8);
      if (!v10)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v11 > 0xFF)
    {
      v10 = *(a1 + v8);
      if (!*(a1 + v8))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v11 < 2)
    {
LABEL_22:
      if (v5)
      {
        return (*(v4 + 48))((a1 + v6 + 4) & ~v6);
      }

      return 0;
    }
  }

  v10 = *(a1 + v8);
  if (!*(a1 + v8))
  {
    goto LABEL_22;
  }

LABEL_11:
  v12 = (v10 - 1) << v9;
  if (v8 > 3)
  {
    v12 = 0;
  }

  if (v8)
  {
    if (v8 > 3)
    {
      LODWORD(v8) = 4;
    }

    if (v8 > 2)
    {
      if (v8 == 3)
      {
        LODWORD(v8) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v8) = *a1;
      }
    }

    else if (v8 == 1)
    {
      LODWORD(v8) = *a1;
    }

    else
    {
      LODWORD(v8) = *a1;
    }
  }

  return v5 + (v8 | v12) + 1;
}

void sub_10016E1AC(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  v8 = *(v6 + 80);
  v9 = ((v8 + 4) & ~v8) + *(v6 + 64);
  v10 = a3 >= v7;
  v11 = a3 - v7;
  if (v11 != 0 && v10)
  {
    if (v9 <= 3)
    {
      v15 = ((v11 + ~(-1 << (8 * v9))) >> (8 * v9)) + 1;
      if (HIWORD(v15))
      {
        v12 = 4;
      }

      else
      {
        if (v15 < 0x100)
        {
          v16 = 1;
        }

        else
        {
          v16 = 2;
        }

        if (v15 >= 2)
        {
          v12 = v16;
        }

        else
        {
          v12 = 0;
        }
      }
    }

    else
    {
      v12 = 1;
    }
  }

  else
  {
    v12 = 0;
  }

  if (v7 < a2)
  {
    v13 = ~v7 + a2;
    if (v9 < 4)
    {
      v14 = (v13 >> (8 * v9)) + 1;
      if (v9)
      {
        v17 = v13 & ~(-1 << (8 * v9));
        bzero(a1, v9);
        if (v9 != 3)
        {
          if (v9 == 2)
          {
            *a1 = v17;
            if (v12 > 1)
            {
LABEL_39:
              if (v12 == 2)
              {
                *&a1[v9] = v14;
              }

              else
              {
                *&a1[v9] = v14;
              }

              return;
            }
          }

          else
          {
            *a1 = v13;
            if (v12 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *a1 = v17;
        a1[2] = BYTE2(v17);
      }

      if (v12 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      bzero(a1, v9);
      *a1 = v13;
      v14 = 1;
      if (v12 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v12)
    {
      a1[v9] = v14;
    }

    return;
  }

  if (v12 > 1)
  {
    if (v12 != 2)
    {
      *&a1[v9] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_28;
    }

    *&a1[v9] = 0;
  }

  else if (v12)
  {
    a1[v9] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return;
  }

LABEL_28:
  v18 = *(v6 + 56);
  v19 = &a1[v8 + 4] & ~v8;

  v18(v19);
}

uint64_t sub_10016E3D0()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_10016E474(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10016E494(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
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

  *(result + 32) = v3;
  return result;
}

Swift::Int sub_10016E4F0()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_1004A6E94();
  sub_1004A6EB4(v1);
  v3 = 0.0;
  if (v2 != 0.0)
  {
    v3 = v2;
  }

  sub_1004A6EF4(*&v3);
  return sub_1004A6F14();
}

void sub_10016E55C()
{
  v1 = *(v0 + 8);
  sub_1004A6EB4(*v0);
  v2 = 0.0;
  if (v1 != 0.0)
  {
    v2 = v1;
  }

  sub_1004A6EF4(*&v2);
}

Swift::Int sub_10016E5A8()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_1004A6E94();
  sub_1004A6EB4(v1);
  v3 = 0.0;
  if (v2 != 0.0)
  {
    v3 = v2;
  }

  sub_1004A6EF4(*&v3);
  return sub_1004A6F14();
}

unint64_t sub_10016E640()
{
  result = qword_1005D22D8;
  if (!qword_1005D22D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D22D8);
  }

  return result;
}

Swift::Int DisplayPart.PlainTextLineKind.hashValue.getter(unsigned __int8 a1)
{
  sub_1004A6E94();
  sub_1004A6EB4(a1);
  return sub_1004A6F14();
}

unint64_t sub_10016E72C()
{
  result = qword_1005D22E0;
  if (!qword_1005D22E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D22E0);
  }

  return result;
}

unint64_t sub_10016E780(uint64_t *a1)
{
  if (*a1 >= 0)
  {
    return *a1 >> 62;
  }

  else
  {
    return (*a1 >> 3) + 2;
  }
}

uint64_t sub_10016E79C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7E && *(a1 + 8))
  {
    return (*a1 + 126);
  }

  v3 = (((*a1 >> 57) >> 5) | (4 * ((*a1 >> 57) & 0x18 | *a1 & 7))) ^ 0x7F;
  if (v3 >= 0x7D)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_10016E7F8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7D)
  {
    *result = a2 - 126;
    if (a3 >= 0x7E)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7E)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 2) & 0x1F | (32 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

void *sub_10016E858(void *result, uint64_t a2)
{
  if (a2 < 2)
  {
    *result = *result & 0xFFFFFFFFFFFFFF8 | (a2 << 62);
  }

  else
  {
    *result = (8 * (a2 - 2)) | 0x8000000000000000;
  }

  return result;
}

uint64_t sub_10016E8A4(char *a1, unint64_t a2, int a3)
{
  LODWORD(v466) = a3;
  v469 = a1;
  v4 = sub_10000C9C0(&qword_1005D0F20, &qword_1004E9390);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v448 = &v437 - v6;
  v7 = sub_10000C9C0(&qword_1005CD1D0, &unk_1004CF2C0);
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v449 = &v437 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v462 = (&v437 - v11);
  v463.i64[0] = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  v12 = *(*(v463.i64[0] - 8) + 64);
  v13 = __chkstk_darwin(v463.i64[0]);
  v447 = &v437 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v460 = (&v437 - v16);
  v17 = __chkstk_darwin(v15);
  v445 = &v437 - v18;
  v19 = __chkstk_darwin(v17);
  v450 = &v437 - v20;
  v21 = __chkstk_darwin(v19);
  v446 = &v437 - v22;
  v23 = __chkstk_darwin(v21);
  v465 = (&v437 - v24);
  v25 = __chkstk_darwin(v23);
  v444 = &v437 - v26;
  __chkstk_darwin(v25);
  v459 = (&v437 - v27);
  v28 = sub_1004A4944();
  v29 = *(v28 - 8);
  v30 = *(v29 + 64);
  v31 = __chkstk_darwin(v28);
  v458 = &v437 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __chkstk_darwin(v31);
  v464 = &v437 - v34;
  v35 = __chkstk_darwin(v33);
  v456 = &v437 - v36;
  v37 = __chkstk_darwin(v35);
  v454 = &v437 - v38;
  v39 = __chkstk_darwin(v37);
  v461 = &v437 - v40;
  v41 = __chkstk_darwin(v39);
  v453 = &v437 - v42;
  v43 = __chkstk_darwin(v41);
  v455 = &v437 - v44;
  v45 = __chkstk_darwin(v43);
  v457 = &v437 - v46;
  v47 = __chkstk_darwin(v45);
  v443 = &v437 - v48;
  v49 = __chkstk_darwin(v47);
  v452 = &v437 - v50;
  v51 = __chkstk_darwin(v49);
  v451 = &v437 - v52;
  v53 = __chkstk_darwin(v51);
  v441 = &v437 - v54;
  v55 = __chkstk_darwin(v53);
  v440 = &v437 - v56;
  v57 = __chkstk_darwin(v55);
  v438 = &v437 - v58;
  v59 = __chkstk_darwin(v57);
  v442 = &v437 - v60;
  v61 = __chkstk_darwin(v59);
  v63 = &v437 - v62;
  v64 = __chkstk_darwin(v61);
  v439 = &v437 - v65;
  v66 = __chkstk_darwin(v64);
  v68 = &v437 - v67;
  v69 = __chkstk_darwin(v66);
  v71 = &v437 - v70;
  v72 = __chkstk_darwin(v69);
  v74 = &v437 - v73;
  v75 = __chkstk_darwin(v72);
  v77 = &v437 - v76;
  v78 = __chkstk_darwin(v75);
  v80 = &v437 - v79;
  __chkstk_darwin(v78);
  v82 = &v437 - v81;
  v83 = sub_1004A4904();
  v467 = *(v83 - 8);
  v468 = v83;
  v84 = *(v467 + 64);
  __chkstk_darwin(v83);
  v469 = &v437 - ((v85 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1004A4914();
  if (v466)
  {
    v466 = v28;
    v437 = v29;
    v87 = v464;
    v86 = v465;
    switch((a2 >> 59) & 0x1E | (a2 >> 2) & 1)
    {
      case 1uLL:
        v246 = tracingSignposter.unsafeMutableAddressor();
        v247 = v437;
        v248 = v466;
        (*(v437 + 16))(v77, v246, v466);
        v249 = sub_1004A4934();
        v250 = sub_1004A6154();
        if (sub_1004A6354())
        {
          v251 = swift_slowAlloc();
          *v251 = 0;
          v96 = v469;
          v252 = sub_1004A48F4();
          _os_signpost_emit_with_name_impl(&_mh_execute_header, v249, v250, v252, "PersistenceEvent.update.credentials", "", v251, 2u);

          (*(v247 + 8))(v77, v248);
          goto LABEL_9;
        }

        (*(v247 + 8))(v77, v248);
        goto LABEL_99;
      case 2uLL:
        v202 = *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        v203 = *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
        v204 = *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x20);
        v205 = tracingSignposter.unsafeMutableAddressor();
        v206 = v437;
        v207 = v439;
        v208 = v466;
        (*(v437 + 16))(v439, v205, v466);

        v209 = sub_1004A4934();
        v210 = sub_1004A6154();
        if ((sub_1004A6354() & 1) == 0)
        {

          goto LABEL_84;
        }

        v211 = swift_slowAlloc();
        *v211 = 67109632;
        *(v211 + 4) = v202;
        *(v211 + 8) = 256;
        v212 = 0x403010505uLL >> (8 * v203);
        if (v203 >= 5)
        {
          LOBYTE(v212) = 5;
        }

        *(v211 + 10) = v212;
        *(v211 + 11) = 2048;
        v96 = v469;
        if (v204)
        {
          v213 = *(v204 + 16);
        }

        else
        {
          v213 = 0;
        }

        *(v211 + 13) = v213;
        v435 = v211;

        v436 = sub_1004A48F4();
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v209, v210, v436, "PersistenceEvent.update.sync", "%u %hhu %ld", v435, 0x15u);

        goto LABEL_103;
      case 3uLL:
        v230 = *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        v231 = tracingSignposter.unsafeMutableAddressor();
        v232 = v437;
        v233 = v466;
        (*(v437 + 16))(v63, v231, v466);
        v234 = sub_1004A4934();
        v235 = sub_1004A6154();
        v236 = sub_1004A6354();
        v96 = v469;
        if (v236)
        {
          v237 = swift_slowAlloc();
          *v237 = 67109120;
          *(v237 + 4) = v230;
          v238 = sub_1004A48F4();
          _os_signpost_emit_with_name_impl(&_mh_execute_header, v234, v235, v238, "PersistenceEvent.update.sync", "%u", v237, 8u);
        }

        (*(v232 + 8))(v63, v233);
        goto LABEL_9;
      case 4uLL:
        v155 = *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x10);

        v156 = tracingSignposter.unsafeMutableAddressor();
        v157 = v437;
        v158 = v466;
        (*(v437 + 16))(v68, v156, v466);

        v159 = sub_1004A4934();
        v160 = sub_1004A6154();
        if (sub_1004A6354())
        {
          v161 = swift_slowAlloc();
          *v161 = 134217984;
          *(v161 + 4) = *(v155 + 16);
          swift_bridgeObjectRelease_n();
          v162 = sub_1004A48F4();
          _os_signpost_emit_with_name_impl(&_mh_execute_header, v159, v160, v162, "PersistenceEvent.update.setLocalMailboxes", "count %ld", v161, 0xCu);
        }

        else
        {

          swift_bridgeObjectRelease_n();
        }

        v106 = v467;
        v403 = v468;
        (*(v157 + 8))(v68, v158);
        v105 = v403;
        v96 = v469;
        return (*(v106 + 8))(v96, v105);
      case 5uLL:
        v286 = *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        v287 = *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x18);

        v288 = tracingSignposter.unsafeMutableAddressor();
        v206 = v437;
        v207 = v442;
        v208 = v466;
        (*(v437 + 16))(v442, v288, v466);

        v289 = sub_1004A4934();
        v290 = sub_1004A6154();
        if (sub_1004A6354())
        {
          v291 = swift_slowAlloc();
          *v291 = 134218240;
          *(v291 + 4) = *(v286 + 16);
          *(v291 + 12) = 2048;
          *(v291 + 14) = *(v287 + 16);
          swift_bridgeObjectRelease_n();
          swift_bridgeObjectRelease_n();
          v96 = v469;
          v292 = sub_1004A48F4();
          _os_signpost_emit_with_name_impl(&_mh_execute_header, v289, v290, v292, "PersistenceEvent.update.setUserVisibleMailboxes", "%ld %ld", v291, 0x16u);

LABEL_103:
          v106 = v467;
          v404 = v468;
        }

        else
        {

          swift_bridgeObjectRelease_n();
          swift_bridgeObjectRelease_n();
LABEL_84:
          v106 = v467;
          v404 = v468;
          v96 = v469;
        }

        (*(v206 + 8))(v207, v208);
        v105 = v404;
        return (*(v106 + 8))(v96, v105);
      case 6uLL:
        v333 = tracingSignposter.unsafeMutableAddressor();
        v334 = v437;
        v335 = v438;
        v336 = v466;
        (*(v437 + 16))(v438, v333, v466);
        v337 = sub_1004A4934();
        v338 = sub_1004A6154();
        if (sub_1004A6354())
        {
          v339 = swift_slowAlloc();
          *v339 = 0;
          v96 = v469;
          v340 = sub_1004A48F4();
          _os_signpost_emit_with_name_impl(&_mh_execute_header, v337, v338, v340, "PersistenceEvent.update.temporarilyGrowWindowOfInterest", "", v339, 2u);

          (*(v334 + 8))(v335, v336);
          goto LABEL_9;
        }

        (*(v334 + 8))(v335, v336);
        goto LABEL_99;
      case 7uLL:
        v239 = tracingSignposter.unsafeMutableAddressor();
        v240 = v437;
        v241 = v466;
        (*(v437 + 16))(v71, v239, v466);
        v242 = sub_1004A4934();
        v243 = sub_1004A6154();
        if (sub_1004A6354())
        {
          v244 = swift_slowAlloc();
          *v244 = 0;
          v96 = v469;
          v245 = sub_1004A48F4();
          _os_signpost_emit_with_name_impl(&_mh_execute_header, v242, v243, v245, "PersistenceEvent.update.pushRegistrationInfo", "", v244, 2u);

          (*(v240 + 8))(v71, v241);
          goto LABEL_9;
        }

        (*(v240 + 8))(v71, v241);
        goto LABEL_99;
      case 8uLL:
        v372 = *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        v373 = *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
        v374 = *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x20);
        v375 = tracingSignposter.unsafeMutableAddressor();
        v376 = v437;
        v377 = v452;
        v378 = v466;
        (*(v437 + 16))(v452, v375, v466);
        swift_bridgeObjectRetain_n();
        v379 = sub_1004A4934();
        v380 = sub_1004A6154();
        if (sub_1004A6354())
        {
          v381 = swift_slowAlloc();
          v471 = swift_slowAlloc();
          *v381 = 136315394;

          v383 = OpaqueMailboxID.description.getter(v382);
          v385 = v384;

          v386 = sub_10015BA6C(v383, v385, &v471);

          *(v381 + 4) = v386;
          *(v381 + 12) = 2082;
          v473 = v374;
          v387 = sub_10000C9C0(&qword_1005CD198, &qword_1004CEC20);
          v388 = MessageIdentifierRange.debugDescription.getter(v387);
          v390 = sub_10015BA6C(v388, v389, &v471);

          *(v381 + 14) = v390;
          swift_bridgeObjectRelease_n();
          v96 = v469;
          v391 = sub_1004A48F4();
          _os_signpost_emit_with_name_impl(&_mh_execute_header, v379, v380, v391, "PersistenceEvent.update.didFindWindowOfInterest", "mailbox %s, UID range %{public}s", v381, 0x16u);
          swift_arrayDestroy();

          (*(v376 + 8))(v452, v378);
          goto LABEL_9;
        }

        swift_bridgeObjectRelease_n();
        (*(v376 + 8))(v377, v378);
        goto LABEL_99;
      case 9uLL:
        v180 = sub_10000C9C0(&qword_1005CDA40, &qword_1004CF7A0);
        v181 = swift_projectBox();
        v182 = *v181;
        v183 = v181[1];
        v184 = *(v181 + *(v180 + 64));
        v185 = v459;
        sub_10000E268(v181 + *(v180 + 48), v459, &unk_1005D91B0, &unk_1004CF400);

        v186 = tracingSignposter.unsafeMutableAddressor();
        v187 = v437;
        v188 = v443;
        v189 = v466;
        (*(v437 + 16))(v443, v186, v466);
        v190 = v444;
        sub_10000E268(v185, v444, &unk_1005D91B0, &unk_1004CF400);
        swift_bridgeObjectRetain_n();
        v191 = sub_1004A4934();
        LODWORD(v465) = sub_1004A6154();
        if (sub_1004A6354())
        {
          v192 = swift_slowAlloc();
          v464 = v184;
          v193 = v192;
          v194 = swift_slowAlloc();
          v471 = v194;
          *v193 = 136315650;

          v196 = OpaqueMailboxID.description.getter(v195);
          v198 = v197;

          v199 = sub_10015BA6C(v196, v198, &v471);

          *(v193 + 4) = v199;
          *(v193 + 12) = 2048;
          v200 = MessageIdentifierSet.count.getter();
          sub_100025F40(v190, &unk_1005D91B0, &unk_1004CF400);
          *(v193 + 14) = v200;
          *(v193 + 22) = 2048;
          *(v193 + 24) = v464;
          swift_bridgeObjectRelease_n();
          v96 = v469;
          v201 = sub_1004A48F4();
          _os_signpost_emit_with_name_impl(&_mh_execute_header, v191, v465, v201, "PersistenceEvent.update.didFindMessageBatches", "mailbox %s, UID range count %ld, message count: %ld", v193, 0x20u);
          sub_1000197E0(v194);

          (*(v187 + 8))(v188, v189);
          v154 = v459;
          goto LABEL_64;
        }

        sub_100025F40(v190, &unk_1005D91B0, &unk_1004CF400);
        swift_bridgeObjectRelease_n();

        (*(v187 + 8))(v188, v189);
        v402 = v185;
        goto LABEL_88;
      case 0xAuLL:
        v346 = sub_10000C9C0(&qword_1005CD4F8, &unk_1004CF790);
        v347 = swift_projectBox();
        v348 = *v347;
        v464 = v347[1];
        v349 = *(v346 + 64);
        sub_10000E268(v347 + *(v346 + 48), v86, &unk_1005D91B0, &unk_1004CF400);
        v350 = v86;
        v351 = v462;
        sub_10000E268(v347 + v349, v462, &qword_1005CD1D0, &unk_1004CF2C0);

        v352 = tracingSignposter.unsafeMutableAddressor();
        v353 = v437;
        v354 = v457;
        (*(v437 + 16))(v457, v352, v466);
        v355 = v350;
        v356 = v446;
        sub_10000E268(v355, v446, &unk_1005D91B0, &unk_1004CF400);
        v357 = v449;
        sub_10000E268(v351, v449, &qword_1005CD1D0, &unk_1004CF2C0);
        swift_bridgeObjectRetain_n();
        v358 = sub_1004A4934();
        v359 = sub_1004A6154();
        if (sub_1004A6354())
        {
          v360 = swift_slowAlloc();
          LODWORD(v461) = v359;
          v361 = v360;
          v362 = swift_slowAlloc();
          v471 = v362;
          *v361 = 136315650;

          v364 = OpaqueMailboxID.description.getter(v363);
          v366 = v365;

          v367 = sub_10015BA6C(v364, v366, &v471);

          *(v361 + 4) = v367;
          *(v361 + 12) = 2048;
          v368 = MessageIdentifierSet.count.getter();
          sub_100025F40(v356, &unk_1005D91B0, &unk_1004CF400);
          *(v361 + 14) = v368;
          *(v361 + 22) = 2048;
          v369 = MessageIdentifierSet.count.getter();
          sub_100025F40(v357, &qword_1005CD1D0, &unk_1004CF2C0);
          *(v361 + 24) = v369;
          swift_bridgeObjectRelease_n();
          v370 = v469;
          v371 = sub_1004A48F4();
          _os_signpost_emit_with_name_impl(&_mh_execute_header, v358, v461, v371, "PersistenceEvent.update.didFindMessageUIDs", "mailbox %s, UID count %ld range UID count %ld)", v361, 0x20u);
          sub_1000197E0(v362);

          (*(v353 + 8))(v457, v466);
          v96 = v370;
          sub_100025F40(v462, &qword_1005CD1D0, &unk_1004CF2C0);
          v154 = v465;
          goto LABEL_64;
        }

        sub_100025F40(v357, &qword_1005CD1D0, &unk_1004CF2C0);
        sub_100025F40(v356, &unk_1005D91B0, &unk_1004CF400);
        swift_bridgeObjectRelease_n();

        (*(v353 + 8))(v354, v466);
        sub_100025F40(v351, &qword_1005CD1D0, &unk_1004CF2C0);
        v402 = v465;
        goto LABEL_88;
      case 0xBuLL:
        v131 = sub_10000C9C0(&qword_1005CDC20, &qword_1004CF9E8);
        v132 = swift_projectBox();
        v133 = *v132;
        v134 = v132[1];
        v135 = *(v132 + *(v131 + 64));
        v136 = v450;
        sub_10000E268(v132 + *(v131 + 48), v450, &unk_1005D91B0, &unk_1004CF400);

        v137 = tracingSignposter.unsafeMutableAddressor();
        v138 = v437;
        v139 = v455;
        v140 = v466;
        (*(v437 + 16))(v455, v137, v466);
        v141 = v445;
        sub_10000E268(v136, v445, &unk_1005D91B0, &unk_1004CF400);
        swift_bridgeObjectRetain_n();
        v142 = sub_1004A4934();
        LODWORD(v465) = sub_1004A6154();
        if (sub_1004A6354())
        {
          v143 = swift_slowAlloc();
          v464 = v135;
          v144 = v143;
          v145 = swift_slowAlloc();
          v471 = v145;
          *v144 = 136315650;

          v147 = OpaqueMailboxID.description.getter(v146);
          v149 = v148;

          v150 = sub_10015BA6C(v147, v149, &v471);

          *(v144 + 4) = v150;
          v151 = v136;
          *(v144 + 12) = 2048;
          v152 = MessageIdentifierSet.count.getter();
          sub_100025F40(v141, &unk_1005D91B0, &unk_1004CF400);
          *(v144 + 14) = v152;
          *(v144 + 22) = 2048;
          *(v144 + 24) = v464;
          swift_bridgeObjectRelease_n();
          v96 = v469;
          v153 = sub_1004A48F4();
          _os_signpost_emit_with_name_impl(&_mh_execute_header, v142, v465, v153, "PersistenceEvent.update.didFindNewestMessageUIDs", "mailbox %s, UID count %ld, limit %ld", v144, 0x20u);
          sub_1000197E0(v145);

          (*(v138 + 8))(v455, v140);
          v154 = v151;
          goto LABEL_64;
        }

        sub_100025F40(v141, &unk_1005D91B0, &unk_1004CF400);
        swift_bridgeObjectRelease_n();

        (*(v138 + 8))(v139, v140);
        v402 = v136;
        goto LABEL_88;
      case 0xCuLL:
        v163 = *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        v164 = *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
        v165 = *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x20);
        v166 = *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x28);
        v167 = tracingSignposter.unsafeMutableAddressor();
        v118 = v437;
        v119 = v453;
        v120 = v466;
        (*(v437 + 16))(v453, v167, v466);
        swift_bridgeObjectRetain_n();
        swift_bridgeObjectRetain_n();
        v121 = sub_1004A4934();
        v168 = sub_1004A6154();
        if ((sub_1004A6354() & 1) == 0)
        {
          goto LABEL_74;
        }

        v169 = swift_slowAlloc();
        v170 = swift_slowAlloc();
        LODWORD(v465) = v168;
        v171 = v170;
        v471 = v170;
        *v169 = 136315650;

        v173 = OpaqueMailboxID.description.getter(v172);
        v175 = v174;

        v176 = sub_10015BA6C(v173, v175, &v471);

        *(v169 + 4) = v176;
        *(v169 + 12) = 256;
        if (v165)
        {
          v177 = 2;
        }

        else
        {
          v177 = 1;
        }

        *(v169 + 14) = v177;
        *(v169 + 15) = 2048;
        v178 = *(v166 + 16);

        *(v169 + 17) = v178;

        swift_bridgeObjectRelease_n();
        v96 = v469;
        v179 = sub_1004A48F4();
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v121, v465, v179, "PersistenceEvent.update.downloadSectionsInMessages", "mailbox %s, downloadPass %hhu, messageCount %ld", v169, 0x19u);
        sub_1000197E0(v171);

        (*(v118 + 8))(v453, v120);
        goto LABEL_9;
      case 0xDuLL:
        v306 = *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        v307 = *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
        v308 = *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x1C);
        v309 = *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x20);
        v310 = *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x28);
        v311 = tracingSignposter.unsafeMutableAddressor();
        v312 = v437;
        v313 = v461;
        v314 = v466;
        (*(v437 + 16))(v461, v311, v466);
        swift_bridgeObjectRetain_n();
        swift_bridgeObjectRetain_n();
        v315 = sub_1004A4934();
        v316 = sub_1004A6154();
        if ((sub_1004A6354() & 1) == 0)
        {

          swift_bridgeObjectRelease_n();
          swift_bridgeObjectRelease_n();
          (*(v312 + 8))(v313, v314);
          goto LABEL_99;
        }

        v463.i32[0] = v316;
        v465 = v315;
        v317 = swift_slowAlloc();
        v318 = swift_slowAlloc();
        v473 = v318;
        *v317 = 141559043;
        *(v317 + 4) = 0x786F626C69616DLL;
        *(v317 + 12) = 2085;
        v471 = v306;
        v472 = v307;

        v319 = sub_1004A5824();
        v321 = sub_10015BA6C(v319, v320, &v473);

        *(v317 + 14) = v321;
        *(v317 + 22) = 256;
        if (v308)
        {
          v322 = 2;
        }

        else
        {
          v322 = 1;
        }

        *(v317 + 24) = v322;
        *(v317 + 25) = 1024;
        *(v317 + 27) = v309;
        *(v317 + 31) = 2080;
        v323 = *(v310 + 2);
        v324 = v310;
        v325 = _swiftEmptyArrayStorage;
        v464 = v324;
        if (v323)
        {
          v460 = v318;
          v462 = v306;
          v471 = _swiftEmptyArrayStorage;
          sub_100091A08(0, v323, 0);
          v325 = v471;
          v326 = (v324 + 32);
          do
          {
            v470 = *v326;

            v327 = sub_1004A5804();
            v329 = v328;
            v471 = v325;
            v331 = v325[2];
            v330 = v325[3];
            if (v331 >= v330 >> 1)
            {
              sub_100091A08((v330 > 1), v331 + 1, 1);
              v325 = v471;
            }

            v325[2] = v331 + 1;
            v332 = &v325[2 * v331];
            v332[4] = v327;
            v332[5] = v329;
            ++v326;
            --v323;
          }

          while (v323);
        }

        v471 = v325;
        sub_10000C9C0(&unk_1005DA9A0, &unk_1004CF770);
        sub_100031CDC();
        v429 = sub_1004A5614();
        v431 = v430;

        v432 = sub_10015BA6C(v429, v431, &v473);

        *(v317 + 33) = v432;
        swift_bridgeObjectRelease_n();
        swift_bridgeObjectRelease_n();
        v96 = v469;
        v433 = sub_1004A48F4();
        v434 = v465;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v465, v463.i8[0], v433, "PersistenceEvent.update.downloadSectionData", "mailbox %{sensitive,mask.mailbox}s, downloadPass %hhu, UID %u, sections, %s", v317, 0x29u);
        swift_arrayDestroy();

        (*(v437 + 8))(v461, v466);
        goto LABEL_9;
      case 0xEuLL:
        v113 = *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        v114 = *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
        v115 = *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x20);
        v116 = *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x28);
        v117 = tracingSignposter.unsafeMutableAddressor();
        v118 = v437;
        v119 = v454;
        v120 = v466;
        (*(v437 + 16))(v454, v117, v466);
        swift_bridgeObjectRetain_n();
        swift_bridgeObjectRetain_n();
        v121 = sub_1004A4934();
        v122 = sub_1004A6154();
        if ((sub_1004A6354() & 1) == 0)
        {
          goto LABEL_74;
        }

        v123 = swift_slowAlloc();
        v124 = swift_slowAlloc();
        LODWORD(v465) = v122;
        v125 = v124;
        v473 = v124;
        *v123 = 141558787;
        *(v123 + 4) = 0x786F626C69616DLL;
        *(v123 + 12) = 2085;
        v471 = v113;
        v472 = v114;

        v126 = sub_1004A5824();
        v128 = sub_10015BA6C(v126, v127, &v473);

        *(v123 + 14) = v128;
        *(v123 + 22) = 2048;
        v129 = *(v115 + 16);

        *(v123 + 24) = v129;
        *(v123 + 32) = 1024;
        *(v123 + 34) = v116;
        swift_bridgeObjectRelease_n();

        v96 = v469;
        v130 = sub_1004A48F4();
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v121, v465, v130, "PersistenceEvent.update.uploadMessages", "mailbox %{sensitive,mask.mailbox}s, count %ld, isLast: %{BOOL}d", v123, 0x26u);
        sub_1000197E0(v125);

        (*(v118 + 8))(v454, v120);
        goto LABEL_9;
      case 0xFuLL:
        v214 = sub_10000C9C0(&qword_1005D22F0, &unk_1004EFDE0);
        v215 = swift_projectBox();
        v216 = *v215;
        v217 = *(v215 + 8);
        v218 = *(v215 + 16);
        v219 = *(v215 + 24);
        v220 = *(v215 + 36);
        v221 = *(v215 + 37);
        LODWORD(v465) = *(v215 + 38);
        LODWORD(v464) = *(v215 + 40);
        v222 = *(v214 + 80);
        v223 = (v215 + *(v214 + 96));
        v224.i32[0] = *(v215 + 32);
        v463 = vmovl_u8(v224);
        v225 = *v223;
        v226 = v223[1];
        v227 = v448;
        v228 = sub_10000E268(v215 + v222, v448, &qword_1005D0F20, &qword_1004E9390);
        v466 = &v437;
        __chkstk_darwin(v228);
        v229 = v469;
        *(&v437 - 8) = v469;
        *(&v437 - 7) = v216;
        *(&v437 - 12) = v217;
        v96 = v229;
        *(&v437 - 11) = vuzp1_s8((v463.i64[0] & 0xFF01FF01FF01FF01), (v463.i64[0] & 0xFF01FF01FF01FF01)).u32[0];
        *(&v437 - 40) = v220 & 1;
        *(&v437 - 39) = v221 & 1;
        *(&v437 - 19) = v465;
        *(&v437 - 36) = v464 & 1;
        *(&v437 - 4) = v227;
        *(&v437 - 3) = v225;
        *(&v437 - 2) = v226;

        sub_100014CEC(v218, v219);
        sub_100014CEC(v225, v226);
        sub_100172534(sub_1001735CC, (&v437 - 10), v218, v219);

        sub_100014D40(v225, v226);
        sub_100014D40(v218, v219);
        sub_100025F40(v227, &qword_1005D0F20, &qword_1004E9390);
        goto LABEL_9;
      case 0x10uLL:
        v108 = *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        v109 = *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x20);
        v110 = *(v109 + 16);
        if (v110)
        {
          v111 = *(v109 + 32);
          v112 = *(v109 + 32 * v110);
        }

        else
        {
          v112 = 0;
          v111 = 0;
        }

        v119 = v456;
        v405 = *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
        LODWORD(v465) = *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x28);
        v406 = tracingSignposter.unsafeMutableAddressor();
        v118 = v437;
        v120 = v466;
        (*(v437 + 16))(v119, v406, v466);
        swift_bridgeObjectRetain_n();
        swift_bridgeObjectRetain_n();
        v407 = sub_1004A4934();
        LODWORD(v464) = sub_1004A6154();
        if ((sub_1004A6354() & 1) == 0)
        {
          goto LABEL_97;
        }

        v408 = swift_slowAlloc();
        v409 = swift_slowAlloc();
        v463.i32[0] = v112;
        v410 = v409;
        v471 = v409;
        *v408 = 136316162;

        v412 = OpaqueMailboxID.description.getter(v411);
        v414 = v413;

        v415 = sub_10015BA6C(v412, v414, &v471);

        *(v408 + 4) = v415;
        *(v408 + 12) = 2048;
        v416 = *(v109 + 16);

        *(v408 + 14) = v416;
        *(v408 + 22) = 1024;
        *(v408 + 24) = v111;
        *(v408 + 28) = 1024;
        *(v408 + 30) = v463.i32[0];
        *(v408 + 34) = 1024;
        *(v408 + 36) = v465;
        swift_bridgeObjectRelease_n();

        v96 = v469;
        v417 = sub_1004A48F4();
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v407, v464, v417, "PersistenceEvent.update.uploadChangedFlags", "mailbox %s, message count %ld, {%u %u}, isLast: %{BOOL}d", v408, 0x28u);
        sub_1000197E0(v410);

        (*(v118 + 8))(v456, v120);
        goto LABEL_9;
      case 0x11uLL:
        v253 = sub_10000C9C0(&qword_1005D22E8, &unk_1004DA480);
        v254 = swift_projectBox();
        v255 = *v254;
        v256 = v254[1];
        v257 = v460;
        sub_10000E268(v254 + *(v253 + 48), v460, &unk_1005D91B0, &unk_1004CF400);

        v258 = tracingSignposter.unsafeMutableAddressor();
        v259 = v437;
        v260 = v87;
        v261 = v87;
        v262 = v466;
        (*(v437 + 16))(v260, v258, v466);
        v263 = v447;
        sub_10000E268(v257, v447, &unk_1005D91B0, &unk_1004CF400);
        swift_bridgeObjectRetain_n();
        v264 = sub_1004A4934();
        v265 = sub_1004A6154();
        if (sub_1004A6354())
        {
          v266 = swift_slowAlloc();
          LODWORD(v465) = v265;
          v267 = v266;
          v268 = swift_slowAlloc();
          v471 = v268;
          *v267 = 136315394;

          v270 = OpaqueMailboxID.description.getter(v269);
          v272 = v271;

          v273 = sub_10015BA6C(v270, v272, &v471);

          *(v267 + 4) = v273;
          *(v267 + 12) = 2048;
          v274 = MessageIdentifierSet.count.getter();
          sub_100025F40(v263, &unk_1005D91B0, &unk_1004CF400);
          *(v267 + 14) = v274;
          swift_bridgeObjectRelease_n();
          v96 = v469;
          v275 = sub_1004A48F4();
          _os_signpost_emit_with_name_impl(&_mh_execute_header, v264, v465, v275, "PersistenceEvent.update.uploadMessagesWithChangedFlagAfterCopy", "mailbox %s, message count %ld", v267, 0x16u);
          sub_1000197E0(v268);

          (*(v259 + 8))(v261, v262);
          v154 = v460;
LABEL_64:
          sub_100025F40(v154, &unk_1005D91B0, &unk_1004CF400);
          goto LABEL_9;
        }

        sub_100025F40(v263, &unk_1005D91B0, &unk_1004CF400);
        swift_bridgeObjectRelease_n();

        (*(v259 + 8))(v261, v262);
        v402 = v257;
LABEL_88:
        sub_100025F40(v402, &unk_1005D91B0, &unk_1004CF400);
        goto LABEL_99;
      case 0x12uLL:
        v341 = *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        v342 = *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x20);
        v343 = *(v342 + 16);
        if (v343)
        {
          v344 = *(v342 + 36);
          v345 = *(v342 + 40 * v343 - 4);
        }

        else
        {
          v345 = 0;
          v344 = 0;
        }

        v119 = v458;
        v418 = *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
        LODWORD(v465) = *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x28);
        v419 = tracingSignposter.unsafeMutableAddressor();
        v118 = v437;
        v120 = v466;
        (*(v437 + 16))(v119, v419, v466);
        swift_bridgeObjectRetain_n();
        swift_bridgeObjectRetain_n();
        v407 = sub_1004A4934();
        LODWORD(v464) = sub_1004A6154();
        if (sub_1004A6354())
        {
          v420 = swift_slowAlloc();
          v421 = swift_slowAlloc();
          v463.i32[0] = v345;
          v422 = v344;
          v423 = v421;
          v473 = v421;
          *v420 = 141559299;
          *(v420 + 4) = 0x786F626C69616DLL;
          *(v420 + 12) = 2085;
          v471 = v341;
          v472 = v418;

          v424 = sub_1004A5824();
          v426 = sub_10015BA6C(v424, v425, &v473);

          *(v420 + 14) = v426;
          *(v420 + 22) = 2048;
          v427 = *(v342 + 16);

          *(v420 + 24) = v427;
          *(v420 + 32) = 1024;
          *(v420 + 34) = v422;
          *(v420 + 38) = 1024;
          *(v420 + 40) = v463.i32[0];
          *(v420 + 44) = 1024;
          *(v420 + 46) = v465;
          swift_bridgeObjectRelease_n();

          v96 = v469;
          v428 = sub_1004A48F4();
          _os_signpost_emit_with_name_impl(&_mh_execute_header, v407, v464, v428, "PersistenceEvent.update.moveOrCopyMessages", "mailbox %{sensitive,mask.mailbox}s, moves count %ld, {%u %u}, isLast: %{BOOL}d", v420, 0x32u);
          sub_1000197E0(v423);

          (*(v118 + 8))(v458, v120);
          goto LABEL_9;
        }

LABEL_97:

        swift_bridgeObjectRelease_n();
        goto LABEL_98;
      case 0x13uLL:
        v399 = *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x10);

        v400 = tracingSignposter.unsafeMutableAddressor();
        v278 = v437;
        v279 = v440;
        v280 = v466;
        (*(v437 + 16))(v440, v400, v466);

        v281 = sub_1004A4934();
        v282 = sub_1004A6154();
        if ((sub_1004A6354() & 1) == 0)
        {
          goto LABEL_72;
        }

        v283 = swift_slowAlloc();
        *v283 = 134217984;
        *(v283 + 4) = *(v399 + 16);
        swift_bridgeObjectRelease_n();
        v96 = v469;
        v284 = sub_1004A48F4();
        v285 = "PersistenceEvent.update.setSearchRequests";
        goto LABEL_71;
      case 0x14uLL:
        v276 = *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x10);

        v277 = tracingSignposter.unsafeMutableAddressor();
        v278 = v437;
        v279 = v441;
        v280 = v466;
        (*(v437 + 16))(v441, v277, v466);

        v281 = sub_1004A4934();
        v282 = sub_1004A6154();
        if (sub_1004A6354())
        {
          v283 = swift_slowAlloc();
          *v283 = 134217984;
          *(v283 + 4) = *(v276 + 16);
          swift_bridgeObjectRelease_n();
          v96 = v469;
          v284 = sub_1004A48F4();
          v285 = "PersistenceEvent.update.setDownloadRequests";
LABEL_71:
          _os_signpost_emit_with_name_impl(&_mh_execute_header, v281, v282, v284, v285, "count %ld", v283, 0xCu);

          v106 = v467;
          v401 = v468;
        }

        else
        {
LABEL_72:

          swift_bridgeObjectRelease_n();
          v106 = v467;
          v401 = v468;
          v96 = v469;
        }

        (*(v278 + 8))(v279, v280);
        v105 = v401;
        return (*(v106 + 8))(v96, v105);
      case 0x15uLL:
        v293 = *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        v294 = *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
        v295 = *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x20);
        v296 = tracingSignposter.unsafeMutableAddressor();
        v118 = v437;
        v119 = v451;
        v120 = v466;
        (*(v437 + 16))(v451, v296, v466);
        swift_bridgeObjectRetain_n();
        swift_bridgeObjectRetain_n();
        v121 = sub_1004A4934();
        v297 = sub_1004A6154();
        if (sub_1004A6354())
        {
          v298 = swift_slowAlloc();
          v299 = swift_slowAlloc();
          LODWORD(v465) = v297;
          v300 = v299;
          v473 = v299;
          *v298 = 141558531;
          *(v298 + 4) = 0x786F626C69616DLL;
          *(v298 + 12) = 2085;
          v471 = v293;
          v472 = v294;

          v301 = sub_1004A5824();
          v303 = sub_10015BA6C(v301, v302, &v473);

          *(v298 + 14) = v303;
          *(v298 + 22) = 2048;
          v304 = *(v295 + 16);

          *(v298 + 24) = v304;

          swift_bridgeObjectRelease_n();
          v96 = v469;
          v305 = sub_1004A48F4();
          _os_signpost_emit_with_name_impl(&_mh_execute_header, v121, v465, v305, "PersistenceEvent.update.setUIDsForDownloadRequests", "mailbox %{sensitive,mask.mailbox}s, UID count %ld", v298, 0x20u);
          sub_1000197E0(v300);

          (*(v118 + 8))(v451, v120);
          goto LABEL_9;
        }

LABEL_74:

        swift_bridgeObjectRelease_n();
LABEL_98:
        swift_bridgeObjectRelease_n();
        (*(v118 + 8))(v119, v120);
        goto LABEL_99;
      case 0x16uLL:
        v392 = tracingSignposter.unsafeMutableAddressor();
        v393 = v437;
        v394 = v466;
        (*(v437 + 16))(v74, v392, v466);
        v395 = sub_1004A4934();
        v396 = sub_1004A6154();
        if (sub_1004A6354())
        {
          v397 = swift_slowAlloc();
          *v397 = 0;
          v96 = v469;
          v398 = sub_1004A48F4();
          _os_signpost_emit_with_name_impl(&_mh_execute_header, v395, v396, v398, "PersistenceEvent.update.credentialsDidChange", "", v397, 2u);

          (*(v393 + 8))(v74, v394);
          goto LABEL_9;
        }

        (*(v393 + 8))(v74, v394);
LABEL_99:
        v106 = v467;
        v105 = v468;
        v96 = v469;
        break;
      default:
        v88 = *(a2 + 16);
        v89 = *(a2 + 17);
        v90 = *(a2 + 18);
        v91 = *(a2 + 24);
        v92 = tracingSignposter.unsafeMutableAddressor();
        (*(v437 + 16))(v80, v92, v466);
        v93 = sub_1004A4934();
        v94 = sub_1004A6154();
        v95 = sub_1004A6354();
        v96 = v469;
        if (v95)
        {
          v97 = swift_slowAlloc();
          *v97 = 16778240;
          *(v97 + 4) = v88 + 1;
          *(v97 + 5) = 1024;
          *(v97 + 7) = v89 ^ 1;
          *(v97 + 11) = 1024;
          *(v97 + 13) = v90;
          *(v97 + 17) = 2048;
          *(v97 + 19) = v91;
          v98 = sub_1004A48F4();
          _os_signpost_emit_with_name_impl(&_mh_execute_header, v93, v94, v98, "PersistenceEvent.update.environmentDidChange", "power %hhu, app visible %{BOOL}d, locked %{BOOL}d, thermals %ld", v97, 0x1Bu);
        }

        (*(v437 + 8))(v80, v466);
        goto LABEL_9;
    }
  }

  else
  {
    v99 = tracingSignposter.unsafeMutableAddressor();
    (*(v29 + 16))(v82, v99, v28);
    v100 = sub_1004A4934();
    v101 = sub_1004A6154();
    v102 = sub_1004A6354();
    v96 = v469;
    if (v102)
    {
      v103 = swift_slowAlloc();
      *v103 = 67109120;
      *(v103 + 4) = a2;
      v104 = sub_1004A48F4();
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v100, v101, v104, "PersistenceEvent.actionDidComplete", "ID %u", v103, 8u);
    }

    (*(v29 + 8))(v82, v28);
LABEL_9:
    v106 = v467;
    v105 = v468;
  }

  return (*(v106 + 8))(v96, v105);
}

uint64_t sub_10017178C()
{
  v1 = type metadata accessor for UntaggedResponse(0);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100124EFC(v0, v4);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  result = 12;
  switch(EnumCaseMultiPayload)
  {
    case 1:
      sub_100124F60(v4);
      result = 2;
      break;
    case 2:
      sub_100124F60(v4);
      result = 3;
      break;
    case 3:
      sub_100124F60(v4);
      result = 4;
      break;
    case 4:
      sub_100124F60(v4);
      result = 5;
      break;
    case 5:
      sub_100124F60(v4);
      result = 6;
      break;
    case 6:
      sub_100124F60(v4);
      result = 20;
      break;
    case 7:
      sub_100124F60(v4);
      result = 7;
      break;
    case 8:
      sub_100124F60(v4);
      result = 8;
      break;
    case 9:
      sub_100124F60(v4);
      result = 9;
      break;
    case 10:
      sub_100124F60(v4);
      result = 19;
      break;
    case 11:
      sub_100124F60(v4);
      result = 10;
      break;
    case 12:
      sub_100124F60(v4);
      result = 18;
      break;
    case 13:
      sub_100124F60(v4);
      result = 11;
      break;
    case 14:
      sub_100124F60(v4);
      result = 23;
      break;
    case 15:
      return result;
    case 16:
      result = 13;
      break;
    case 17:
      result = 14;
      break;
    case 18:
      sub_100124F60(v4);
      result = 21;
      break;
    case 19:
      sub_100124F60(v4);
      result = 22;
      break;
    case 20:
      sub_100124F60(v4);
      result = 15;
      break;
    case 21:
      sub_100124F60(v4);
      result = 16;
      break;
    case 22:
      sub_100124F60(v4);
      result = 17;
      break;
    default:
      sub_100124F60(v4);
      result = 1;
      break;
  }

  return result;
}

uint64_t sub_1001719EC(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, int a7, uint64_t a8, uint64_t a9, unint64_t a10)
{
  v63 = a1;
  v59 = a7;
  v57 = a3;
  v58 = a6;
  v61 = a5;
  v62 = a2;
  v12 = sub_10000C9C0(&qword_1005D0F20, &qword_1004E9390);
  v13 = *(*(v12 - 8) + 64);
  v14 = __chkstk_darwin(v12 - 8);
  v60 = &v51[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v14);
  v17 = &v51[-v16];
  v18 = sub_1004A4944();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v22 = &v51[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v23 = tracingSignposter.unsafeMutableAddressor();
  (*(v19 + 16))(v22, v23, v18);
  sub_10000E268(a8, v17, &qword_1005D0F20, &qword_1004E9390);
  sub_100014CEC(a9, a10);
  sub_100014CEC(a9, a10);

  v24 = sub_1004A4934();
  v25 = sub_1004A6154();

  if ((sub_1004A6354() & 1) == 0)
  {
    sub_100014D40(a9, a10);

    sub_100014D40(a9, a10);
    sub_100025F40(v17, &qword_1005D0F20, &qword_1004E9390);
    return (*(v19 + 8))(v22, v18);
  }

  v53 = v22;
  v54 = v24;
  v55 = v18;
  v56 = v17;
  v52 = v25;
  v26 = swift_slowAlloc();
  v27 = swift_slowAlloc();
  v28 = swift_slowAlloc();
  v66 = v28;
  *v26 = 141559555;
  *(v26 + 4) = 0x786F626C69616DLL;
  *(v26 + 12) = 2085;
  v64 = a4;
  v65 = v61;

  v29 = sub_1004A5824();
  v31 = sub_10015BA6C(v29, v30, &v66);

  *(v26 + 14) = v31;
  *(v26 + 22) = 1040;
  v32 = v63;
  v33 = v62 - v63;
  if (!v63)
  {
    v33 = 0;
  }

  if (v33 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_23;
  }

  if (v33 > 0x7FFFFFFF)
  {
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v62 = v28;
  *(v26 + 24) = v33;
  *(v26 + 28) = 2096;
  if (v32)
  {
    *(v26 + 30) = v32;
    *(v26 + 38) = 2112;
    v34 = sub_100171FC0(v58 & 0xFFFF010101010101, v59 & 1);
    *(v26 + 40) = v34;
    v35 = v27;
    *v27 = v34;
    *(v26 + 48) = 2048;
    v36 = v56;
    v37 = v60;
    sub_10000E268(v56, v60, &qword_1005D0F20, &qword_1004E9390);
    v38 = sub_1004A44E4();
    v39 = *(v38 - 8);
    if ((*(v39 + 48))(v37, 1, v38) == 1)
    {
      sub_100025F40(v36, &qword_1005D0F20, &qword_1004E9390);
      sub_100025F40(v37, &qword_1005D0F20, &qword_1004E9390);
      v40 = 0;
    }

    else
    {
      sub_1004A4464();
      v40 = v42;
      sub_100025F40(v36, &qword_1005D0F20, &qword_1004E9390);
      (*(v39 + 8))(v37, v38);
    }

    v43 = v19;
    *(v26 + 50) = v40;
    *(v26 + 58) = 2048;
    v44 = a10 >> 62;
    v46 = v54;
    v45 = v55;
    if ((a10 >> 62) > 1)
    {
      if (v44 != 2)
      {
        sub_100014D40(a9, a10);
        v47 = 0;
        goto LABEL_21;
      }

      v49 = *(a9 + 16);
      v48 = *(a9 + 24);
      sub_100014D40(a9, a10);
      v47 = v48 - v49;
      if (!__OFSUB__(v48, v49))
      {
        goto LABEL_21;
      }

      __break(1u);
    }

    else if (!v44)
    {
      sub_100014D40(a9, a10);
      v47 = BYTE6(a10);
LABEL_21:
      *(v26 + 60) = v47;
      sub_100014D40(a9, a10);
      v50 = sub_1004A48F4();
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v46, v52, v50, "PersistenceEvent.update.messageDataForUpload", "mailbox %{sensitive,mask.mailbox}s, id %.*P, flags: %@, date %f, data %ld", v26, 0x44u);
      sub_100025F40(v35, &qword_1005D51A0, &qword_1004D0940);

      sub_1000197E0(v62);

      return (*(v43 + 8))(v53, v45);
    }

    sub_100014D40(a9, a10);
    LODWORD(v47) = HIDWORD(a9) - a9;
    if (!__OFSUB__(HIDWORD(a9), a9))
    {
      v47 = v47;
      goto LABEL_21;
    }

    goto LABEL_24;
  }

LABEL_25:
  sub_100014D40(a9, a10);
  sub_100014D40(a9, a10);
  result = sub_100025F40(v56, &qword_1005D0F20, &qword_1004E9390);
  __break(1u);
  return result;
}

NSString sub_100171FC0(unint64_t a1, char a2)
{
  if ((a1 & 1) == 0)
  {
    v4 = _swiftEmptyArrayStorage;
    if ((a1 & 0x100) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_7;
  }

  v4 = sub_100085070(0, 1, 1, _swiftEmptyArrayStorage);
  v6 = *(v4 + 2);
  v5 = *(v4 + 3);
  if (v6 >= v5 >> 1)
  {
    v4 = sub_100085070((v5 > 1), v6 + 1, 1, v4);
  }

  *(v4 + 2) = v6 + 1;
  v7 = &v4[16 * v6];
  *(v7 + 4) = 0x646165726E75;
  *(v7 + 5) = 0xE600000000000000;
  if ((a1 & 0x100) != 0)
  {
LABEL_7:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v4 = sub_100085070(0, *(v4 + 2) + 1, 1, v4);
    }

    v9 = *(v4 + 2);
    v8 = *(v4 + 3);
    if (v9 >= v8 >> 1)
    {
      v4 = sub_100085070((v8 > 1), v9 + 1, 1, v4);
    }

    *(v4 + 2) = v9 + 1;
    v10 = &v4[16 * v9];
    *(v10 + 4) = 0x646574656C6564;
    *(v10 + 5) = 0xE700000000000000;
  }

LABEL_12:
  if ((a1 & 0x10000) != 0)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v4 = sub_100085070(0, *(v4 + 2) + 1, 1, v4);
    }

    v12 = *(v4 + 2);
    v11 = *(v4 + 3);
    if (v12 >= v11 >> 1)
    {
      v4 = sub_100085070((v11 > 1), v12 + 1, 1, v4);
    }

    *(v4 + 2) = v12 + 1;
    v13 = &v4[16 * v12];
    *(v13 + 4) = 0x6465726577736E61;
    *(v13 + 5) = 0xE800000000000000;
    if ((a1 & 0x1000000) == 0)
    {
LABEL_14:
      if ((a1 & 0x100000000) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_30;
    }
  }

  else if ((a1 & 0x1000000) == 0)
  {
    goto LABEL_14;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v4 = sub_100085070(0, *(v4 + 2) + 1, 1, v4);
  }

  v15 = *(v4 + 2);
  v14 = *(v4 + 3);
  if (v15 >= v14 >> 1)
  {
    v4 = sub_100085070((v14 > 1), v15 + 1, 1, v4);
  }

  *(v4 + 2) = v15 + 1;
  v16 = &v4[16 * v15];
  *(v16 + 4) = 0x7466617264;
  *(v16 + 5) = 0xE500000000000000;
  if ((a1 & 0x100000000) == 0)
  {
LABEL_15:
    if ((a1 & 0x10000000000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_35;
  }

LABEL_30:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v4 = sub_100085070(0, *(v4 + 2) + 1, 1, v4);
  }

  v18 = *(v4 + 2);
  v17 = *(v4 + 3);
  if (v18 >= v17 >> 1)
  {
    v4 = sub_100085070((v17 > 1), v18 + 1, 1, v4);
  }

  *(v4 + 2) = v18 + 1;
  v19 = &v4[16 * v18];
  *(v19 + 4) = 0x6564726177726F66;
  *(v19 + 5) = 0xE900000000000064;
  if ((a1 & 0x10000000000) == 0)
  {
LABEL_16:
    if ((a1 & 0xFF000000000000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_40;
  }

LABEL_35:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v4 = sub_100085070(0, *(v4 + 2) + 1, 1, v4);
  }

  v21 = *(v4 + 2);
  v20 = *(v4 + 3);
  if (v21 >= v20 >> 1)
  {
    v4 = sub_100085070((v20 > 1), v21 + 1, 1, v4);
  }

  *(v4 + 2) = v21 + 1;
  v22 = &v4[16 * v21];
  *(v22 + 4) = 0x7463657269646572;
  *(v22 + 5) = 0xEA00000000006465;
  if ((a1 & 0xFF000000000000) == 0)
  {
LABEL_17:
    if (!HIBYTE(a1))
    {
      goto LABEL_18;
    }

    goto LABEL_45;
  }

LABEL_40:
  v23 = sub_1004A5804();
  v25 = v24;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v4 = sub_100085070(0, *(v4 + 2) + 1, 1, v4);
  }

  v27 = *(v4 + 2);
  v26 = *(v4 + 3);
  if (v27 >= v26 >> 1)
  {
    v4 = sub_100085070((v26 > 1), v27 + 1, 1, v4);
  }

  *(v4 + 2) = v27 + 1;
  v28 = &v4[16 * v27];
  *(v28 + 4) = v23;
  *(v28 + 5) = v25;
  if (!HIBYTE(a1))
  {
LABEL_18:
    if ((a2 & 1) == 0)
    {
      goto LABEL_55;
    }

    goto LABEL_50;
  }

LABEL_45:
  v29 = sub_1004A5804();
  v31 = v30;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v4 = sub_100085070(0, *(v4 + 2) + 1, 1, v4);
  }

  v33 = *(v4 + 2);
  v32 = *(v4 + 3);
  if (v33 >= v32 >> 1)
  {
    v4 = sub_100085070((v32 > 1), v33 + 1, 1, v4);
  }

  *(v4 + 2) = v33 + 1;
  v34 = &v4[16 * v33];
  *(v34 + 4) = v29;
  *(v34 + 5) = v31;
  if (a2)
  {
LABEL_50:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v4 = sub_100085070(0, *(v4 + 2) + 1, 1, v4);
    }

    v36 = *(v4 + 2);
    v35 = *(v4 + 3);
    if (v36 >= v35 >> 1)
    {
      v4 = sub_100085070((v35 > 1), v36 + 1, 1, v4);
    }

    *(v4 + 2) = v36 + 1;
    v37 = &v4[16 * v36];
    strcpy(v37 + 32, "iCloudCleanup");
    *(v37 + 23) = -4864;
  }

LABEL_55:
  sub_10000C9C0(&unk_1005DA9A0, &unk_1004CF770);
  sub_100031CDC();
  sub_1004A5614();

  v38 = sub_1004A5734();

  return v38;
}

uint64_t sub_100172534(uint64_t (*a1)(uint64_t, uint64_t), uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    if (v5 != 2)
    {
      memset(v10, 0, 14);
      v6 = v10;
      return a1(v10, v6);
    }

    v7 = *(a3 + 16);
    v8 = *(a3 + 24);
    return sub_10017266C(v7, v8, a1);
  }

  if (v5)
  {
    v7 = a3;
    v8 = a3 >> 32;
    if (a3 >> 32 < a3)
    {
      __break(1u);
    }

    return sub_10017266C(v7, v8, a1);
  }

  v10[0] = a3;
  LOWORD(v10[1]) = a4;
  BYTE2(v10[1]) = BYTE2(a4);
  BYTE3(v10[1]) = BYTE3(a4);
  BYTE4(v10[1]) = BYTE4(a4);
  BYTE5(v10[1]) = BYTE5(a4);
  v6 = v10 + BYTE6(a4);
  return a1(v10, v6);
}

uint64_t sub_10017266C(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
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

  return a3(v7, v13);
}

uint64_t sub_100172714(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v4 = type metadata accessor for UntaggedResponse(0);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v8 = &v138 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v138 - v9;
  v148 = sub_1004A4944();
  v145 = *(v148 - 8);
  v11 = *(v145 + 64);
  v12 = __chkstk_darwin(v148);
  v142 = &v138 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v141 = &v138 - v15;
  v16 = __chkstk_darwin(v14);
  v143 = &v138 - v17;
  v18 = __chkstk_darwin(v16);
  v140 = &v138 - v19;
  v20 = __chkstk_darwin(v18);
  v139 = &v138 - v21;
  v22 = __chkstk_darwin(v20);
  v24 = &v138 - v23;
  v25 = __chkstk_darwin(v22);
  v27 = &v138 - v26;
  v28 = __chkstk_darwin(v25);
  v144 = &v138 - v29;
  v30 = __chkstk_darwin(v28);
  v32 = &v138 - v31;
  v33 = __chkstk_darwin(v30);
  v35 = &v138 - v34;
  __chkstk_darwin(v33);
  v37 = &v138 - v36;
  v38 = sub_1004A4904();
  v39 = *(v38 - 8);
  v146 = v38;
  v147 = v39;
  v40 = *(v39 + 64);
  __chkstk_darwin(v38);
  v42 = &v138 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1004A4914();
  v43 = a3 >> 60;
  if ((a3 >> 60) > 3)
  {
    if (v43 > 5)
    {
      v44 = v145;
      v45 = v148;
      if (v43 == 6)
      {
        v96 = tracingSignposter.unsafeMutableAddressor();
        v97 = v141;
        (*(v44 + 16))(v141, v96, v45);
        v98 = sub_1004A4934();
        v99 = sub_1004A6154();
        if (sub_1004A6354())
        {
          v100 = swift_slowAlloc();
          *v100 = 0;
          v101 = sub_1004A48F4();
          _os_signpost_emit_with_name_impl(&_mh_execute_header, v98, v99, v101, "ConnectionEvent.pathAttributesDidChange", "", v100, 2u);
        }

        v53 = *(v44 + 8);
        v54 = v97;
        goto LABEL_48;
      }

      if (v43 == 7)
      {
        v46 = *((a3 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
        v47 = tracingSignposter.unsafeMutableAddressor();
        v48 = v142;
        (*(v44 + 16))(v142, v47, v45);
        v49 = sub_1004A4934();
        v50 = sub_1004A6154();
        if (sub_1004A6354())
        {
          v51 = swift_slowAlloc();
          *v51 = 16777472;
          v51[4] = v46;
          v52 = sub_1004A48F4();
          _os_signpost_emit_with_name_impl(&_mh_execute_header, v49, v50, v52, "ConnectionEvent.betterPathDidChange", "%hhu", v51, 5u);
        }

        v53 = *(v44 + 8);
        v54 = v48;
        goto LABEL_48;
      }

      v118 = v143;
      if (a3 == 0x8000000000000000)
      {
        v131 = tracingSignposter.unsafeMutableAddressor();
        v132 = v139;
        (*(v44 + 16))(v139, v131, v45);
        v133 = sub_1004A4934();
        v134 = sub_1004A6154();
        if (sub_1004A6354())
        {
          v135 = swift_slowAlloc();
          *v135 = 0;
          v136 = sub_1004A48F4();
          _os_signpost_emit_with_name_impl(&_mh_execute_header, v133, v134, v136, "ConnectionEvent.mailboxSelected", "no mailbox", v135, 2u);
        }

        v53 = *(v44 + 8);
        v54 = v132;
        goto LABEL_48;
      }

      if (a3 == 0x8000000000000008)
      {
        v119 = tracingSignposter.unsafeMutableAddressor();
        v118 = v140;
        (*(v44 + 16))(v140, v119, v45);
        v120 = sub_1004A4934();
        v121 = sub_1004A6154();
        if (sub_1004A6354())
        {
          v122 = swift_slowAlloc();
          *v122 = 0;
          v123 = sub_1004A48F4();
          v124 = "ConnectionEvent.empty";
LABEL_46:
          _os_signpost_emit_with_name_impl(&_mh_execute_header, v120, v121, v123, v124, "", v122, 2u);
        }
      }

      else
      {
        v137 = tracingSignposter.unsafeMutableAddressor();
        (*(v44 + 16))(v118, v137, v45);
        v120 = sub_1004A4934();
        v121 = sub_1004A6154();
        if (sub_1004A6354())
        {
          v122 = swift_slowAlloc();
          *v122 = 0;
          v123 = sub_1004A48F4();
          v124 = "ConnectionEvent.stateDidChange";
          goto LABEL_46;
        }
      }

      v53 = *(v44 + 8);
      v54 = v118;
      goto LABEL_48;
    }

    v79 = v148;
    if (v43 != 4)
    {
      v125 = tracingSignposter.unsafeMutableAddressor();
      v126 = v145;
      (*(v145 + 16))(v27, v125, v79);
      v127 = sub_1004A4934();
      v128 = sub_1004A6154();
      if (sub_1004A6354())
      {
        v129 = swift_slowAlloc();
        *v129 = 0;
        v130 = sub_1004A48F4();
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v127, v128, v130, "ConnectionEvent.mailboxSelectFailed", "", v129, 2u);
      }

      (*(v126 + 8))(v27, v79);
      return (*(v147 + 8))(v42, v146);
    }

    v143 = v42;
    v141 = *((a3 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
    v80 = *((a3 & 0xFFFFFFFFFFFFFFFLL) + 0x14);
    v82 = *((a3 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
    v81 = *((a3 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
    v83 = *((a3 & 0xFFFFFFFFFFFFFFFLL) + 0x28);
    v84 = *((a3 & 0xFFFFFFFFFFFFFFFLL) + 0x30);
    v85 = tracingSignposter.unsafeMutableAddressor();
    v86 = v144;
    v87 = v145;
    (*(v145 + 16))(v144, v85, v79);
    sub_10001123C(v82, v81, v83, v84);
    sub_10001123C(v82, v81, v83, v84);
    v88 = sub_1004A4934();
    LODWORD(v142) = sub_1004A6154();
    if (sub_1004A6354())
    {
      v89 = swift_slowAlloc();
      v90 = swift_slowAlloc();
      v149 = v90;
      *v89 = 136446466;
      v91 = Tag.debugDescription.getter(v141 | (v80 << 32));
      v93 = sub_10015BA6C(v91, v92, &v149);

      *(v89 + 4) = v93;
      *(v89 + 12) = 256;
      sub_100173584(v82, v81, v83, v84);
      *(v89 + 14) = v84 + 1;
      sub_100173584(v82, v81, v83, v84);
      v77 = v143;
      v94 = sub_1004A48F4();
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v88, v142, v94, "ConnectionEvent.commandDidComplete", "tag: %{public}s response: %hhu", v89, 0xFu);
      sub_1000197E0(v90);

      (*(v87 + 8))(v144, v148);
      return (*(v147 + 8))(v77, v146);
    }

    sub_100173584(v82, v81, v83, v84);

    sub_100173584(v82, v81, v83, v84);
    (*(v87 + 8))(v86, v79);
    return (*(v147 + 8))(v143, v146);
  }

  if (v43 > 1)
  {
    v61 = v145;
    if (v43 != 2)
    {
      v108 = swift_projectBox();
      v109 = v10;
      sub_100124EFC(v108, v10);
      v110 = tracingSignposter.unsafeMutableAddressor();
      v111 = v148;
      (*(v61 + 16))(v32, v110, v148);
      v112 = v8;
      sub_100124EFC(v10, v8);
      v113 = sub_1004A4934();
      v114 = sub_1004A6154();
      if (sub_1004A6354())
      {
        v115 = swift_slowAlloc();
        *v115 = 16777472;
        v116 = sub_10017178C();
        sub_100124F60(v112);
        v115[4] = v116;
        v117 = sub_1004A48F4();
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v113, v114, v117, "ConnectionEvent.untagged", "response: %hhu", v115, 5u);
      }

      else
      {
        sub_100124F60(v112);
      }

      (*(v61 + 8))(v32, v111);
      sub_100124F60(v109);
      return (*(v147 + 8))(v42, v146);
    }

    v143 = v42;
    v62 = *((a3 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
    v63 = *((a3 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
    v64 = *((a3 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
    v65 = *((a3 & 0xFFFFFFFFFFFFFFFLL) + 0x38);

    v66 = tracingSignposter.unsafeMutableAddressor();
    v67 = v148;
    (*(v61 + 16))(v24, v66, v148);

    v68 = sub_1004A4934();
    v69 = sub_1004A6154();

    if (sub_1004A6354())
    {
      v70 = swift_slowAlloc();
      v71 = swift_slowAlloc();
      v144 = v24;
      v72 = v61;
      v73 = v71;
      v151 = v71;
      *v70 = 141558275;
      *(v70 + 4) = 0x786F626C69616DLL;
      *(v70 + 12) = 2085;

      v149 = v62;
      v150 = v63;
      v74 = sub_1004A5824();
      v76 = sub_10015BA6C(v74, v75, &v151);

      *(v70 + 14) = v76;
      v77 = v143;
      v78 = sub_1004A48F4();
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v68, v69, v78, "ConnectionEvent.mailboxSelected", "mailbox %{sensitive,mask.mailbox}s", v70, 0x16u);
      sub_1000197E0(v73);

      (*(v72 + 8))(v144, v148);
      return (*(v147 + 8))(v77, v146);
    }

    (*(v61 + 8))(v24, v67);
    return (*(v147 + 8))(v143, v146);
  }

  v55 = v145;
  if (v43)
  {
    v102 = *((a3 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
    v103 = tracingSignposter.unsafeMutableAddressor();
    (*(v55 + 16))(v35, v103, v148);

    v104 = sub_1004A4934();
    v105 = sub_1004A6154();
    if (sub_1004A6354())
    {
      v106 = swift_slowAlloc();
      *v106 = 16777472;
      v106[4] = !CommandConnection.RecentErrors.isEmpty.getter(v102);

      v107 = sub_1004A48F4();
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v104, v105, v107, "ConnectionEvent.connectionDidFail", "error: %hhu", v106, 5u);
    }

    else
    {
    }

    (*(v55 + 8))(v35, v148);
    return (*(v147 + 8))(v42, v146);
  }

  v56 = tracingSignposter.unsafeMutableAddressor();
  v45 = v148;
  (*(v55 + 16))(v37, v56, v148);
  v57 = sub_1004A4934();
  v58 = sub_1004A6154();
  if (sub_1004A6354())
  {
    v59 = swift_slowAlloc();
    *v59 = 0;
    v60 = sub_1004A48F4();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v57, v58, v60, "ConnectionEvent.connectionDidAuthenticate", "", v59, 2u);
  }

  v53 = *(v55 + 8);
  v54 = v37;
LABEL_48:
  v53(v54, v45);
  return (*(v147 + 8))(v42, v146);
}

unint64_t sub_100173584(unint64_t result, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  if (a4 <= 2u)
  {
    sub_10001114C(result);
  }

  return result;
}

uint64_t sub_1001735CC(uint64_t a1, uint64_t *a2)
{
  v3 = 256;
  if (!*(v2 + 37))
  {
    v3 = 0;
  }

  v4 = v3 | *(v2 + 36);
  v5 = 0x10000;
  if (!*(v2 + 38))
  {
    v5 = 0;
  }

  v6 = 0x1000000;
  if (!*(v2 + 39))
  {
    v6 = 0;
  }

  v7 = v4 | v5 | v6;
  v8 = &_mh_execute_header;
  if (!*(v2 + 40))
  {
    v8 = 0;
  }

  v9 = 0x10000000000;
  if (!*(v2 + 41))
  {
    v9 = 0;
  }

  return sub_1001719EC(a1, a2, *(v2 + 16), *(v2 + 24), *(v2 + 32), v7 | v8 | v9 | (*(v2 + 42) << 48) | (*(v2 + 43) << 56), *(v2 + 44), *(v2 + 48), *(v2 + 56), *(v2 + 64));
}

uint64_t sub_10017368C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(a2 + 8);
  if (*(a1 + 8))
  {
    if (*(a1 + 8) == 1)
    {
      if (v4 != 1 || v2 != v3)
      {
        return 0;
      }
    }

    else if (v4 != 2 || v3 != 0)
    {
      return 0;
    }
  }

  else
  {
    if (*(a2 + 8))
    {
      v7 = 0;
    }

    else
    {
      v7 = v2 == v3;
    }

    if (!v7)
    {
      return 0;
    }
  }

  return 1;
}

BOOL sub_1001736F8(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *(a2 + 8);
  if (!*(a1 + 8))
  {
    if (*(a2 + 8))
    {
      return 0;
    }

    return *a1 == v2;
  }

  if (*(a1 + 8) == 1)
  {
    if (v3 != 1)
    {
      return 0;
    }

    return *a1 == v2;
  }

  return v3 == 2 && v2 == 0;
}

Swift::Int sub_100173754()
{
  result = sub_100093190(&off_1005990F8);
  qword_1005DDF90 = result;
  return result;
}

void sub_10017377C(uint64_t a1)
{
  v3 = type metadata accessor for MailboxTaskLogger(0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3);
  v6 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v40 - v8;
  __chkstk_darwin(v10);
  v12 = &v40 - v11;
  __chkstk_darwin(v13);
  v15 = &v40 - v14;
  if (*(v1 + 112) == 1)
  {
    sub_1000118A4(a1, &v40 - v14);
    sub_1000118A4(a1, v12);
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    v16 = sub_1004A4A54();
    v17 = sub_1004A6034();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      *v18 = 68159235;
      *(v18 + 4) = 2;
      *(v18 + 8) = 256;
      v19 = &v12[*(v3 + 20)];
      *(v18 + 10) = *v19;
      *(v18 + 11) = 2082;
      v20 = &v15[*(v3 + 20)];
      *(v18 + 13) = sub_10015BA6C(*(v20 + 1), *(v20 + 2), &v43);
      *(v18 + 21) = 1040;
      *(v18 + 23) = 2;
      *(v18 + 27) = 512;
      v21 = *(v19 + 12);
      sub_100011908(v12);
      *(v18 + 29) = v21;
      *(v18 + 31) = 2160;
      *(v18 + 33) = 0x786F626C69616DLL;
      *(v18 + 41) = 2085;
      v22 = *(v20 + 4);
      v23 = *(v20 + 10);

      sub_100011908(v15);
      v41 = v22;
      v42 = v23;
      v24 = sub_1004A5824();
      v26 = sub_10015BA6C(v24, v25, &v43);

      *(v18 + 43) = v26;
      _os_log_impl(&_mh_execute_header, v16, v17, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Created task.", v18, 0x33u);
      swift_arrayDestroy();

LABEL_6:

      return;
    }

    sub_100011908(v12);

    v39 = v15;
  }

  else
  {
    v27 = *(v1 + 104);
    sub_1000118A4(a1, v9);
    sub_1000118A4(a1, v6);
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    v16 = sub_1004A4A54();
    v28 = sub_1004A6034();
    if (os_log_type_enabled(v16, v28))
    {
      v29 = swift_slowAlloc();
      v40 = v27;
      v30 = v29;
      v43 = swift_slowAlloc();
      *v30 = 68159491;
      *(v30 + 4) = 2;
      *(v30 + 8) = 256;
      v31 = &v6[*(v3 + 20)];
      *(v30 + 10) = *v31;
      *(v30 + 11) = 2082;
      v32 = &v9[*(v3 + 20)];
      *(v30 + 13) = sub_10015BA6C(*(v32 + 1), *(v32 + 2), &v43);
      *(v30 + 21) = 1040;
      *(v30 + 23) = 2;
      *(v30 + 27) = 512;
      v33 = *(v31 + 12);
      sub_100011908(v6);
      *(v30 + 29) = v33;
      *(v30 + 31) = 2160;
      *(v30 + 33) = 0x786F626C69616DLL;
      *(v30 + 41) = 2085;
      v34 = *(v32 + 4);
      v35 = *(v32 + 10);

      sub_100011908(v9);
      v41 = v34;
      v42 = v35;
      v36 = sub_1004A5824();
      v38 = sub_10015BA6C(v36, v37, &v43);

      *(v30 + 43) = v38;
      *(v30 + 51) = 2048;
      *(v30 + 53) = v40;
      _os_log_impl(&_mh_execute_header, v16, v28, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Created task (XYHIGHESTMODSEQ %llu).", v30, 0x3Du);
      swift_arrayDestroy();

      goto LABEL_6;
    }

    sub_100011908(v6);

    v39 = v9;
  }

  sub_100011908(v39);
}

void sub_100173C24(uint64_t a1, uint64_t a2)
{
  v94 = type metadata accessor for MailboxTaskLogger(0);
  v5 = *(*(v94 - 8) + 64);
  __chkstk_darwin(v94);
  v7 = &v86[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v8);
  v93 = &v86[-v9];
  __chkstk_darwin(v10);
  v91 = &v86[-v11];
  __chkstk_darwin(v12);
  v92 = &v86[-v13];
  __chkstk_darwin(v14);
  v89 = &v86[-v15];
  __chkstk_darwin(v16);
  v90 = &v86[-v17];
  __chkstk_darwin(v18);
  v20 = &v86[-v19];
  __chkstk_darwin(v21);
  v23 = &v86[-v22];
  v105 = 0;
  v106 = 1;
  v96 = *(v2 + 40);
  v95 = *(v2 + 48);
  v97 = &v105;
  v98 = v2;
  if (*(a1 + 192) == 1)
  {
    v25 = v7;
    v27 = *(a1 + 176);
    v26 = *(a1 + 184);
    v102 = *(a1 + 168);
    v24 = v102;

    sub_1000BE940(&v102, v96, v95, 0, sub_100174A5C);
    v28 = v27;
    v7 = v25;
    sub_100020D58(v24, v28, v26, 1);
    v29 = v102;
    *(a1 + 176) = 0;
    *(a1 + 184) = 0;
    *(a1 + 168) = v29;
    *(a1 + 192) = 1;
  }

  if (*(*(v2 + 120) + 16))
  {
    sub_1000118A4(a2, v23);
    sub_1000118A4(a2, v20);
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    sub_1000B3F58(v2, &v102);
    v30 = sub_1004A4A54();
    v31 = sub_1004A6034();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v88 = swift_slowAlloc();
      v101 = v88;
      *v32 = 68159491;
      *(v32 + 4) = 2;
      *(v32 + 8) = 256;
      v33 = v94;
      v34 = &v20[*(v94 + 20)];
      *(v32 + 10) = *v34;
      *(v32 + 11) = 2082;
      v35 = *(v33 + 20);
      v87 = v31;
      v36 = &v23[v35];
      *(v32 + 13) = sub_10015BA6C(*&v23[v35 + 8], *&v23[v35 + 16], &v101);
      *(v32 + 21) = 1040;
      *(v32 + 23) = 2;
      *(v32 + 27) = 512;
      v37 = *(v34 + 12);
      sub_100011908(v20);
      *(v32 + 29) = v37;
      *(v32 + 31) = 2160;
      *(v32 + 33) = 0x786F626C69616DLL;
      *(v32 + 41) = 2085;
      v38 = *(v36 + 4);
      LODWORD(v36) = *(v36 + 10);

      sub_100011908(v23);
      v99 = v38;
      v100 = v36;
      v39 = sub_1004A5824();
      v41 = sub_10015BA6C(v39, v40, &v101);

      *(v32 + 43) = v41;
      *(v32 + 51) = 2048;
      v42 = *(v104 + 16);
      sub_1000B3FB4(&v102);
      *(v32 + 53) = v42;
      _os_log_impl(&_mh_execute_header, v30, v87, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Sent %ld changes to the persistence.", v32, 0x3Du);
      swift_arrayDestroy();
    }

    else
    {
      sub_1000B3FB4(&v102);
      sub_100011908(v20);

      sub_100011908(v23);
    }
  }

  v43 = v105;
  if (v106 != 1)
  {
    v58 = v93;
    sub_1000118A4(a2, v93);
    sub_1000118A4(a2, v7);
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    v59 = sub_1004A4A54();
    v60 = sub_1004A6034();
    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      v92 = swift_slowAlloc();
      v99 = v92;
      *v61 = 68159491;
      *(v61 + 4) = 2;
      *(v61 + 8) = 256;
      v62 = v94;
      v63 = &v7[*(v94 + 20)];
      *(v61 + 10) = *v63;
      *(v61 + 11) = 2082;
      v64 = &v58[*(v62 + 20)];
      *(v61 + 13) = sub_10015BA6C(*(v64 + 1), *(v64 + 2), &v99);
      *(v61 + 21) = 1040;
      *(v61 + 23) = 2;
      *(v61 + 27) = 512;
      v65 = *(v63 + 12);
      sub_100011908(v7);
      *(v61 + 29) = v65;
      *(v61 + 31) = 2160;
      *(v61 + 33) = 0x786F626C69616DLL;
      *(v61 + 41) = 2085;
      v66 = *(v64 + 4);
      v67 = *(v64 + 10);

      sub_100011908(v58);
      v102 = v66;
      v103 = v67;
      v68 = sub_1004A5824();
      v70 = sub_10015BA6C(v68, v69, &v99);

      *(v61 + 43) = v70;
      *(v61 + 51) = 2048;
      *(v61 + 53) = v43;
      _os_log_impl(&_mh_execute_header, v59, v60, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Updating local HIGHESTMODSEQ to %llu.", v61, 0x3Du);
      swift_arrayDestroy();
    }

    else
    {
      sub_100011908(v7);

      sub_100011908(v58);
    }

    v71 = v43;
    v72 = 0;
    goto LABEL_19;
  }

  if (v105)
  {
    v44 = v92;
    sub_1000118A4(a2, v92);
    v45 = v91;
    sub_1000118A4(a2, v91);
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    v46 = sub_1004A4A54();
    v47 = sub_1004A6034();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      v99 = swift_slowAlloc();
      *v48 = 68159235;
      *(v48 + 4) = 2;
      *(v48 + 8) = 256;
      v49 = v94;
      v50 = &v45[*(v94 + 20)];
      *(v48 + 10) = *v50;
      *(v48 + 11) = 2082;
      v51 = &v44[*(v49 + 20)];
      *(v48 + 13) = sub_10015BA6C(*(v51 + 1), *(v51 + 2), &v99);
      *(v48 + 21) = 1040;
      *(v48 + 23) = 2;
      *(v48 + 27) = 512;
      v52 = *(v50 + 12);
      sub_100011908(v45);
      *(v48 + 29) = v52;
      *(v48 + 31) = 2160;
      *(v48 + 33) = 0x786F626C69616DLL;
      *(v48 + 41) = 2085;
      v53 = *(v51 + 4);
      v54 = *(v51 + 10);

      sub_100011908(v44);
      v102 = v53;
      v103 = v54;
      v55 = sub_1004A5824();
      v57 = sub_10015BA6C(v55, v56, &v99);

      *(v48 + 43) = v57;
      _os_log_impl(&_mh_execute_header, v46, v47, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Clearing local HIGHESTMODSEQ.", v48, 0x33u);
      swift_arrayDestroy();
    }

    else
    {
      sub_100011908(v45);

      sub_100011908(v44);
    }

    v71 = 0;
    v72 = 1;
LABEL_19:
    sub_1000BEC60(v71, v72, v96, v95);
    return;
  }

  v73 = v90;
  sub_1000118A4(a2, v90);
  v74 = v89;
  sub_1000118A4(a2, v89);
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  v75 = sub_1004A4A54();
  v76 = sub_1004A6034();
  if (os_log_type_enabled(v75, v76))
  {
    v77 = swift_slowAlloc();
    v99 = swift_slowAlloc();
    *v77 = 68159235;
    *(v77 + 4) = 2;
    *(v77 + 8) = 256;
    v78 = v94;
    v79 = &v74[*(v94 + 20)];
    *(v77 + 10) = *v79;
    *(v77 + 11) = 2082;
    v80 = &v73[*(v78 + 20)];
    *(v77 + 13) = sub_10015BA6C(*(v80 + 1), *(v80 + 2), &v99);
    *(v77 + 21) = 1040;
    *(v77 + 23) = 2;
    *(v77 + 27) = 512;
    v81 = *(v79 + 12);
    sub_100011908(v74);
    *(v77 + 29) = v81;
    *(v77 + 31) = 2160;
    *(v77 + 33) = 0x786F626C69616DLL;
    *(v77 + 41) = 2085;
    v82 = *(v80 + 4);
    LODWORD(v79) = *(v80 + 10);

    sub_100011908(v73);
    v102 = v82;
    v103 = v79;
    v83 = sub_1004A5824();
    v85 = sub_10015BA6C(v83, v84, &v99);

    *(v77 + 43) = v85;
    _os_log_impl(&_mh_execute_header, v75, v76, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] No change to local HIGHESTMODSEQ.", v77, 0x33u);
    swift_arrayDestroy();
  }

  else
  {
    sub_100011908(v74);

    sub_100011908(v73);
  }
}

uint64_t sub_1001746E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 112))
  {
    v5 = (a1 + *(type metadata accessor for MailboxSyncState() + 48));
    v6 = v5[3];
    v7 = v5[4];
    sub_10002587C(v5, v6);
    v8 = (*(v7 + 72))(v6, v7);
  }

  else
  {
    v9 = 0;
    v8 = *(a3 + 104);
  }

  *a2 = v8;
  *(a2 + 8) = v9 & 1;
  v10 = a1 + *(type metadata accessor for MailboxSyncState() + 48);
  v11 = *(v10 + 24);
  v12 = *(v10 + 32);
  sub_100025928(v10, v11);
  (*(v12 + 48))(v11, v12);
  v13 = *(v10 + 24);
  v14 = *(v10 + 32);
  sub_100025928(v10, v13);
  return (*(v14 + 80))(v13, v14);
}

uint64_t sub_1001747E0()
{
  if (qword_1005CCE98 != -1)
  {
    swift_once();
  }
}

uint64_t sub_100174840@<X0>(uint64_t a1@<X1>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t *a5@<X8>)
{
  result = sub_100174A64(a1, a2, a3, a4);
  *a5 = result;
  a5[1] = v7;
  a5[2] = v8;
  return result;
}

__n128 sub_10017489C(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  *(a1 + 80) = result;
  return result;
}

uint64_t sub_1001748D0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 136))
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

uint64_t sub_100174918(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 120) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 136) = 1;
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

    *(result + 136) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_10017498C()
{
  result = qword_1005D22F8;
  if (!qword_1005D22F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D22F8);
  }

  return result;
}

unint64_t sub_1001749E0(uint64_t a1)
{
  result = sub_100174A08();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100174A08()
{
  result = qword_1005D23B0;
  if (!qword_1005D23B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D23B0);
  }

  return result;
}

uint64_t sub_100174A64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v105 = a4;
  v108 = a1;
  v109 = a2;
  v104 = type metadata accessor for MailboxTaskLogger(0);
  v7 = *(*(v104 - 8) + 64);
  __chkstk_darwin(v104);
  v9 = &v101[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v10);
  v106 = &v101[-v11];
  v118 = 0;
  v119 = _swiftEmptyArrayStorage;
  v120 = _swiftEmptyArrayStorage;
  v12 = (a3 + *(type metadata accessor for MailboxSyncState() + 48));
  v13 = v12[3];
  v14 = v12[4];
  v103 = v12;
  sub_10002587C(v12, v13);
  v107 = (*(v14 + 40))(v13, v14);
  v113 = v16;
  v114 = v15;
  v17 = v16[2];

  v115 = v5;
  v112 = v17;
  if (v17)
  {
    v18 = 0;
    v110 = v9;
    v111 = v114 + 32;
    for (i = v113 + 6; ; i += 3)
    {
      if (v18 >= *(v114 + 16))
      {
        __break(1u);
LABEL_76:
        __break(1u);
LABEL_77:
        __break(1u);
LABEL_78:
        __break(1u);
LABEL_79:
        __break(1u);
LABEL_80:
        __break(1u);
LABEL_81:
        __break(1u);
LABEL_82:
        result = sub_1004A6E24();
        __break(1u);
        return result;
      }

      if (v18 >= v113[2])
      {
        goto LABEL_76;
      }

      v20 = *(v111 + 4 * v18);
      v21 = *(i - 2);
      v22 = *(i - 8);
      v23 = *i;
      v24 = (v18 + 1);
      v25 = *(v5 + 120);
      if (!*(v25 + 16) || (v26 = sub_100067004(*(v111 + 4 * v18)), (v27 & 1) == 0))
      {
        v30 = 0;
        v29 = 0;
        if (v23 == 1)
        {
LABEL_16:

          sub_100175584(v29, v30, 1);
          v9 = v110;
          if (v24 >= v112)
          {
            break;
          }

          goto LABEL_41;
        }

        goto LABEL_9;
      }

      v116 = (v18 + 1);
      v28 = *(v25 + 56) + 24 * v26;
      v29 = *v28;
      v30 = *(v28 + 8);
      v31 = *(v28 + 16);

      if (v31 == 1)
      {
        v24 = v116;
        if (v23 == 1)
        {
          goto LABEL_16;
        }

LABEL_9:
        v116 = v24;
        v31 = 1;
LABEL_10:
        swift_bridgeObjectRetain_n();
        sub_100175584(v29, v30, v31);
        sub_100175584(v21, v22, v23);
        goto LABEL_11;
      }

      if (v23 == 1)
      {
        goto LABEL_10;
      }

      if (v29 == 2)
      {
        if (v21 != 2)
        {
          goto LABEL_32;
        }
      }

      else if (v21 == 2 || (static FlagsUpdate.__derived_struct_equals(_:_:)(v29 & 0xFFFFFFFF01010101, v30, v21 & 0xFFFFFFFF01010101, v22) & 1) == 0)
      {
        goto LABEL_32;
      }

      if (v31)
      {
        if (v23)
        {
          swift_bridgeObjectRetain_n();
          sub_100175598(v29, v30, v31);
          sub_100175598(v21, v22, v23);
          v102 = sub_100083478(v31, v23);
          sub_100175584(v21, v22, v23);
          sub_100175584(v29, v30, v31);
          sub_100175584(v21, v22, v23);
          if (v102)
          {
LABEL_34:
            sub_100175584(v29, v30, v31);

            v5 = v115;
            goto LABEL_40;
          }
        }

        goto LABEL_33;
      }

      if (!v23)
      {
        goto LABEL_34;
      }

LABEL_32:
      swift_bridgeObjectRetain_n();
      sub_100175584(v21, v22, v23);
LABEL_33:
      sub_100175584(v29, v30, v31);
LABEL_11:

      v5 = v115;
      v32 = *(v115 + 120);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v117 = *(v5 + 120);
      v34 = v117;
      v35 = sub_100067004(v20);
      v37 = *(v34 + 16);
      v38 = (v36 & 1) == 0;
      v39 = __OFADD__(v37, v38);
      v40 = v37 + v38;
      if (v39)
      {
        goto LABEL_79;
      }

      v41 = v36;
      if (*(v34 + 24) < v40)
      {
        sub_1000C8954(v40, isUniquelyReferenced_nonNull_native);
        v35 = sub_100067004(v20);
        if ((v41 & 1) != (v42 & 1))
        {
          goto LABEL_82;
        }

LABEL_19:
        v43 = v117;
        if ((v41 & 1) == 0)
        {
          goto LABEL_37;
        }

        goto LABEL_20;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_19;
      }

      v46 = v35;
      sub_10013CA80();
      v35 = v46;
      v43 = v117;
      if ((v41 & 1) == 0)
      {
LABEL_37:
        *&v43[8 * (v35 >> 6) + 64] |= 1 << v35;
        *(*(v43 + 6) + 4 * v35) = v20;
        v47 = *(v43 + 7) + 24 * v35;
        *v47 = v21;
        *(v47 + 8) = v22;
        *(v47 + 16) = v23;
        v48 = *(v43 + 2);
        v39 = __OFADD__(v48, 1);
        v49 = v48 + 1;
        if (v39)
        {
          goto LABEL_80;
        }

        *(v43 + 2) = v49;
        goto LABEL_39;
      }

LABEL_20:
      v44 = *(v43 + 7) + 24 * v35;
      v45 = *(v44 + 16);
      *v44 = v21;
      *(v44 + 8) = v22;
      *(v44 + 16) = v23;

LABEL_39:
      *(v5 + 120) = v43;
      sub_100186664(v21, v22, v23, v20);
LABEL_40:
      v9 = v110;
      if (v116 >= v112)
      {
        break;
      }

LABEL_41:
      ++v18;
    }
  }

  v50 = v118;
  v51 = v119;
  v52 = v120;
  if (!v120[2])
  {
    v70 = *(v5 + 128);
    if (sub_1000201A4(v70, 0, v108, v109))
    {

      return 0;
    }

    if (*(v5 + 112) == 1)
    {
      v93 = v103[3];
      v94 = v103[4];
      sub_10002587C(v103, v93);
      v95 = (*(v94 + 72))(v93, v94);
      LOBYTE(v93) = v96;

      if (v93)
      {
        if (!v95)
        {
          return 0;
        }

        v97 = swift_allocObject();
        v98 = *(v5 + 48);
        *(v97 + 16) = *(v5 + 40);
        *(v97 + 24) = v98;
        *(v97 + 32) = 0;
        *(v97 + 40) = 1;
LABEL_74:

        return v70;
      }
    }

    else
    {
      v95 = *(v5 + 104);
    }

    v99 = swift_allocObject();
    v100 = *(v5 + 48);
    *(v99 + 16) = *(v5 + 40);
    *(v99 + 24) = v100;
    *(v99 + 32) = v95;
    *(v99 + 40) = 0;
    goto LABEL_74;
  }

  v53 = v105;
  v54 = v106;
  sub_1000118A4(v105, v106);
  sub_1000118A4(v53, v9);
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  swift_retain_n();
  swift_retain_n();
  swift_retain_n();
  v55 = sub_1004A4A54();
  v56 = sub_1004A6034();
  v57 = os_log_type_enabled(v55, v56);
  v114 = v50;
  if (v57)
  {
    v58 = v54;
    v59 = swift_slowAlloc();
    v116 = swift_slowAlloc();
    v117 = v116;
    *v59 = 68159491;
    *(v59 + 4) = 2;
    *(v59 + 8) = 256;
    v60 = v104;
    v61 = &v9[*(v104 + 20)];
    *(v59 + 10) = *v61;
    *(v59 + 11) = 2082;
    v62 = v58 + *(v60 + 20);
    *(v59 + 13) = sub_10015BA6C(*(v62 + 8), *(v62 + 16), &v117);
    *(v59 + 21) = 1040;
    *(v59 + 23) = 2;
    *(v59 + 27) = 512;
    v63 = *(v61 + 12);
    sub_100011908(v9);
    *(v59 + 29) = v63;
    *(v59 + 31) = 2160;
    *(v59 + 33) = 0x786F626C69616DLL;
    *(v59 + 41) = 2085;
    v64 = *(v62 + 32);
    v65 = *(v62 + 40);

    sub_100011908(v58);
    v118 = v64;
    LODWORD(v119) = v65;
    v66 = sub_1004A5824();
    v68 = sub_10015BA6C(v66, v67, &v117);
    v5 = v115;

    *(v59 + 43) = v68;
    *(v59 + 51) = 2048;
    v69 = v52[2];

    *(v59 + 53) = v69;

    _os_log_impl(&_mh_execute_header, v55, v56, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Got %ld flag/label changes.", v59, 0x3Du);
    swift_arrayDestroy();
  }

  else
  {

    sub_100011908(v9);

    sub_100011908(v54);
  }

  v72 = *(v5 + 128);
  if (sub_1000201A4(v72, 0, v108, v109))
  {
    if (__OFADD__(v72, 1))
    {
      goto LABEL_81;
    }

    *(v5 + 128) = v72 + 1;
  }

  v73 = v52[2];

  if (v73)
  {
    v74 = 0;
    v75 = v52 + 6;
    v116 = _swiftEmptyArrayStorage;
    v113 = v52 + 6;
LABEL_54:
    v76 = &v75[3 * v74];
    while (v74 < v51[2])
    {
      if (v74 >= v52[2])
      {
        goto LABEL_78;
      }

      v77 = *(v51 + v74 + 8);
      v78 = *(v76 - 2);
      v79 = *v76;
      ++v74;
      v80 = *(v76 - 8);
      swift_bridgeObjectRetain_n();
      v81 = MessageFlagUpdate.init(message:flags:gmailLabels:)(v77, v78, v80, v79);
      v83 = v82;
      v85 = v84;

      if (v85 != 1)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v116 = sub_100086DB4(0, *(v116 + 2) + 1, 1, v116);
        }

        v87 = *(v116 + 2);
        v86 = *(v116 + 3);
        if (v87 >= v86 >> 1)
        {
          v116 = sub_100086DB4((v86 > 1), v87 + 1, 1, v116);
        }

        *(&v88 + 1) = v83;
        *&v88 = v81;
        v89 = v116;
        *(v116 + 2) = v87 + 1;
        v90 = &v89[24 * v87];
        *(v90 + 8) = v81;
        *(v90 + 36) = v88 >> 32;
        v90[44] = BYTE4(v83);
        *(v90 + 6) = v85;
        v5 = v115;
        v75 = v113;
        if (v74 < v73)
        {
          goto LABEL_54;
        }

        goto LABEL_67;
      }

      v76 += 3;
      v5 = v115;
      if (v74 >= v73)
      {
        goto LABEL_67;
      }
    }

    goto LABEL_77;
  }

  v116 = _swiftEmptyArrayStorage;
LABEL_67:

  v91 = swift_allocObject();
  v92 = *(v5 + 24);
  v91[2] = *(v5 + 16);
  v91[3] = v92;
  v91[4] = v116;

  return 0;
}

uint64_t sub_10017550C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10017554C()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 41, 7);
}

uint64_t sub_100175584(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 != 1)
  {
  }

  return result;
}

uint64_t sub_100175598(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 != 1)
  {
  }

  return result;
}

double sub_1001755BC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6[0] = &type metadata for UpdateServerUnreadCount;
  sub_1004A6674();
  v6[6] = 0xD000000000000017;
  v6[7] = 0x80000001004DA190;
  if (*(a1 + 16))
  {
    v5 = a1;
    sub_10014256C(&v5, a2);
    sub_1001425C8(&v5);
  }

  else
  {

    sub_100014BEC(v6);
    *(a2 + 64) = 0;
    result = 0.0;
    *(a2 + 32) = 0u;
    *(a2 + 48) = 0u;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

uint64_t sub_1001756A4(uint64_t *a1, uint64_t *a2)
{
  if (a1[1] != a2[1])
  {
    return 0;
  }

  v2 = a2[2];
  v3 = a1[2];
  return sub_1000FFC98(*a1, *a2) & (v3 == v2);
}

void sub_1001756FC(uint64_t a1)
{
  v3 = type metadata accessor for Task.Logger(0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3);
  v6 = &v24[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v24[-1] - v8;
  sub_1000D696C(a1, &v24[-1] - v8);
  sub_1000D696C(a1, v6);
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  sub_10014256C(v1, v24);
  v10 = sub_1004A4A54();
  v11 = sub_1004A6034();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v23 = v13;
    *v12 = 68158466;
    *(v12 + 4) = 2;
    *(v12 + 8) = 256;
    v14 = *&v6[*(v3 + 20)];
    sub_1000FF274(v6);
    *(v12 + 10) = v14;
    *(v12 + 11) = 2082;
    v15 = &v9[*(v3 + 20)];
    v16 = *(v15 + 1);
    v17 = *(v15 + 2);
    v18 = *(v15 + 3);
    v19 = *(v15 + 4);
    v20 = *(v15 + 10);
    sub_100018BD0(*v15, v16, v17, v18);
    sub_1000FF274(v9);
    if (v18 < 0)
    {
    }

    v21 = sub_10015BA6C(v16, v17, &v23);

    *(v12 + 13) = v21;
    *(v12 + 21) = 2048;
    v22 = *(v24[0] + 16);
    sub_1001425C8(v24);
    *(v12 + 23) = v22;
    _os_log_impl(&_mh_execute_header, v10, v11, "[%.*hhx-%{public}s] Updating local server unread count for %ld mailboxes.", v12, 0x1Fu);
    sub_1000197E0(v13);
  }

  else
  {
    sub_1001425C8(v24);
    sub_1000FF274(v6);

    sub_1000FF274(v9);
  }
}

void sub_10017594C(uint64_t a1, uint64_t a2)
{
  v99 = type metadata accessor for Task.Logger(0);
  v4 = *(*(v99 - 8) + 64);
  __chkstk_darwin(v99);
  v91 = &v89 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v89 - v7;
  __chkstk_darwin(v9);
  v103 = &v89 - v10;
  v12 = __chkstk_darwin(v11);
  v14 = &v89 - v13;
  v94 = a1;
  v15 = *(a1 + 176);
  a1 += 176;
  v16 = *(a1 - 8);
  v105 = *(a1 + 8);
  v106 = v15;
  v93 = a1;
  v110 = *(a1 + 16);
  v90 = v8;
  if (v110 == 1 && (v17 = *(v16 + 16)) != 0)
  {
    v18 = (v16 + 32);
    while (1)
    {
      v19 = *v18;
      v20 = v18[2];
      v116 = v18[1];
      v117 = v20;
      v115 = v19;
      v21 = v18[3];
      v22 = v18[4];
      v23 = v18[6];
      v120 = v18[5];
      v121 = v23;
      v118 = v21;
      v119 = v22;
      v24 = v18[7];
      v25 = v18[8];
      v26 = v18[10];
      v124 = v18[9];
      v125 = v26;
      v122 = v24;
      v123 = v25;
      v28 = *(&v115 + 1);
      v27 = v115;
      v29 = DWORD2(v116);
      sub_10000E08C(&v115, v114);

      LOBYTE(v29) = MailboxName.isInbox.getter(v30, v29);

      if (v29)
      {
        break;
      }

      sub_10000E0E8(&v115);
      v18 += 11;
      if (!--v17)
      {
        v31 = 0;
        v28 = 0;
        goto LABEL_9;
      }
    }

    sub_10000E0E8(&v115);
    v31 = v27;
LABEL_9:
    v8 = v90;
  }

  else
  {
    v31 = 0;
    v28 = 0;
  }

  v32 = *v92;
  v109 = *(*v92 + 16);
  if (v109)
  {
    v98 = v28;
    v33 = 0;
    v34 = 0;
    v108 = v32 + 32;
    v12.n128_u64[0] = 68158722;
    v95 = v12;
    v104 = v31;
    v35 = v32;
    v96 = v32;
    v97 = a2;
    while (1)
    {
      if (v34 >= *(v35 + 16))
      {
LABEL_67:
        __break(1u);
LABEL_68:
        __break(1u);
        __break(1u);
LABEL_69:
        __break(1u);
LABEL_70:
        __break(1u);
        return;
      }

      v36 = (v108 + 24 * v34);
      v38 = *v36;
      v37 = v36[1];
      v112 = v36[2];
      v113 = v37;
      if (v110 && (v39 = *(v16 + 16)) != 0)
      {
        v40 = 0;
        while (1)
        {
          v41 = (v16 + 32 + 176 * v40);
          if (v41[1] == v37)
          {
            v42 = *v41;
            v43 = *(*v41 + 16);
            if (v43 == *(v38 + 16))
            {
              break;
            }
          }

LABEL_18:
          if (++v40 == v39)
          {

            v31 = v104;
            goto LABEL_37;
          }
        }

        if (v43)
        {
          v44 = v42 == v38;
        }

        else
        {
          v44 = 1;
        }

        if (!v44)
        {
          v45 = (v42 + 32);
          v46 = (v38 + 32);
          while (v43)
          {
            if (*v45 != *v46)
            {
              goto LABEL_18;
            }

            ++v45;
            ++v46;
            if (!--v43)
            {
              goto LABEL_29;
            }
          }

          __break(1u);
          goto LABEL_67;
        }

LABEL_29:

        sub_100020D10(v16, v106, v105, 1);
        v47 = v16;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v47 = sub_100139804(v16);
        }

        if (v40 >= *(v47 + 2))
        {
          goto LABEL_69;
        }

        v48 = &v47[176 * v40];
        if (!v48[200] && v112 == *(v48 + 24))
        {
          v48[200] = 1;
        }

        sub_100020D58(v16, v106, v105, 1);
        v105 = 0;
        v106 = 0;
        v50 = v93;
        v49 = v94;
        *(v94 + 168) = v47;
        *v50 = 0;
        v50[1] = 0;
        v16 = v47;
        *(v49 + 192) = 1;
        v31 = v104;
      }

      else
      {
      }

LABEL_37:
      if (v33 >= 5)
      {
        if (!v31)
        {
          goto LABEL_12;
        }

        if (v113 != v98)
        {
          goto LABEL_12;
        }

        v68 = *(v38 + 16);
        if (v68 != *(v31 + 16))
        {
          goto LABEL_12;
        }

        if (v68 && v38 != v31)
        {
          break;
        }
      }

LABEL_38:
      v111 = v16;
      sub_1000D696C(a2, v14);
      v51 = v103;
      sub_1000D696C(a2, v103);
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      swift_bridgeObjectRetain_n();
      v52 = sub_1004A4A54();
      v107 = sub_1004A6034();
      if (os_log_type_enabled(v52, v107))
      {
        v101 = v52;
        v102 = v33;
        v53 = swift_slowAlloc();
        v100 = swift_slowAlloc();
        *&v115 = v100;
        *v53 = v95.n128_u32[0];
        *(v53 + 4) = 2;
        *(v53 + 8) = 256;
        v54 = v99;
        v55 = *(v51 + *(v99 + 20));
        sub_1000FF274(v51);
        *(v53 + 10) = v55;
        *(v53 + 11) = 2082;
        v56 = &v14[*(v54 + 20)];
        v57 = *(v56 + 1);
        v58 = *(v56 + 2);
        v59 = *(v56 + 3);
        v60 = *(v56 + 4);
        v61 = *(v56 + 10);
        sub_100018BD0(*v56, v57, v58, v59);
        sub_1000FF274(v14);
        if (v59 < 0)
        {
        }

        v62 = sub_10015BA6C(v57, v58, &v115);

        *(v53 + 13) = v62;
        *(v53 + 21) = 2048;

        *(v53 + 23) = v112;

        *(v53 + 31) = 2080;
        v63 = OpaqueMailboxID.description.getter(v38);
        v65 = v64;

        v66 = sub_10015BA6C(v63, v65, &v115);

        *(v53 + 33) = v66;
        v67 = v101;
        _os_log_impl(&_mh_execute_header, v101, v107, "[%.*hhx-%{public}s] Did store server unread count %ld (aka. UNSEEN) for %s.", v53, 0x29u);
        swift_arrayDestroy();

        v35 = v96;
        a2 = v97;
        v33 = v102;
        v31 = v104;
      }

      else
      {

        sub_1000FF274(v51);

        swift_bridgeObjectRelease_n();
        sub_1000FF274(v14);
      }

      v70 = __OFADD__(v33++, 1);
      v16 = v111;
      if (v70)
      {
        goto LABEL_68;
      }

LABEL_13:
      if (++v34 == v109)
      {
        v8 = v90;
        goto LABEL_58;
      }
    }

    v69 = 32;
    while (*(v38 + v69) == *(v31 + v69))
    {
      ++v69;
      if (!--v68)
      {
        goto LABEL_38;
      }
    }

LABEL_12:

    goto LABEL_13;
  }

  v33 = 0;
  v35 = v32;
LABEL_58:

  v71 = *(v35 + 16);
  v72 = v91;
  if (v33 < v71)
  {
    sub_1000D696C(a2, v8);
    sub_1000D696C(a2, v72);
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    sub_10014256C(v92, &v115);
    v73 = sub_1004A4A54();
    v74 = sub_1004A6034();
    if (os_log_type_enabled(v73, v74))
    {
      v102 = v33;
      v75 = swift_slowAlloc();
      v76 = swift_slowAlloc();
      v114[0] = v76;
      *v75 = 68158466;
      *(v75 + 4) = 2;
      *(v75 + 8) = 256;
      v77 = v99;
      v78 = *(v72 + *(v99 + 20));
      sub_1000FF274(v72);
      *(v75 + 10) = v78;
      *(v75 + 11) = 2082;
      v79 = &v8[*(v77 + 20)];
      v80 = v8;
      v81 = *(v79 + 1);
      v82 = *(v79 + 2);
      v83 = *(v79 + 3);
      v84 = *(v79 + 4);
      v85 = *(v79 + 10);
      sub_100018BD0(*v79, v81, v82, v83);
      sub_1000FF274(v80);
      if (v83 < 0)
      {
      }

      v86 = sub_10015BA6C(v81, v82, v114);

      *(v75 + 13) = v86;
      *(v75 + 21) = 2048;
      v87 = *(v115 + 16);
      v88 = v87 - v102;
      if (__OFSUB__(v87, v102))
      {
        goto LABEL_70;
      }

      sub_1001425C8(&v115);
      *(v75 + 23) = v88;
      _os_log_impl(&_mh_execute_header, v73, v74, "[%.*hhx-%{public}s] Did store server unread counts for %ld more mailboxes.", v75, 0x1Fu);
      sub_1000197E0(v76);
    }

    else
    {
      sub_1001425C8(&v115);
      sub_1000FF274(v72);

      sub_1000FF274(v8);
    }
  }
}

uint64_t sub_1001761A4@<X0>(uint64_t a1@<X1>, uint64_t a2@<X3>, uint64_t *a3@<X8>)
{
  result = sub_100176548(a1, a2);
  *a3 = result;
  return result;
}

uint64_t WatchOSHeaderInfo.messageIDHeader.getter()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);

  return v1;
}

unint64_t sub_100176208()
{
  result = qword_1005D23B8;
  if (!qword_1005D23B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D23B8);
  }

  return result;
}

unint64_t sub_10017625C(uint64_t a1)
{
  result = sub_100176284();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100176284()
{
  result = qword_1005D2438;
  if (!qword_1005D2438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D2438);
  }

  return result;
}

void *sub_1001762D8(void *result, char a2, void *a3)
{
  v3 = result[2];
  if (v3)
  {
    v6 = result;
    v7 = result[4];
    v8 = result[5];
    v45 = result[6];
    v9 = *a3;
    v10 = sub_100063C84(v7, v8);
    v12 = v9[2];
    v13 = (v11 & 1) == 0;
    v14 = v12 + v13;
    if (__OFADD__(v12, v13))
    {
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

    v15 = v10;
    v16 = v11;
    v17 = v9[3];

    if (v17 < v14)
    {
      sub_1000C2D38(v14, a2 & 1);
      v18 = *a3;
      result = sub_100063C84(v7, v8);
      if ((v16 & 1) != (v19 & 1))
      {
LABEL_27:
        result = sub_1004A6E24();
        __break(1u);
        return result;
      }

      v15 = result;
      v20 = *a3;
      if ((v16 & 1) == 0)
      {
        goto LABEL_12;
      }

LABEL_9:

      *(v20[7] + 8 * v15) = v45;
      v21 = v3 - 1;
      if (v3 == 1)
      {
        return result;
      }

LABEL_15:
      for (i = v6 + 9; ; i += 3)
      {
        v27 = *(i - 2);
        v28 = *(i - 1);
        v29 = *i;
        v30 = *a3;
        v31 = sub_100063C84(v27, v28);
        v33 = v30[2];
        v34 = (v32 & 1) == 0;
        v35 = v33 + v34;
        if (__OFADD__(v33, v34))
        {
          break;
        }

        v36 = v31;
        v37 = v32;
        v38 = v30[3];

        if (v38 < v35)
        {
          sub_1000C2D38(v35, 1);
          v39 = *a3;
          result = sub_100063C84(v27, v28);
          if ((v37 & 1) != (v40 & 1))
          {
            goto LABEL_27;
          }

          v36 = result;
        }

        v41 = *a3;
        if (v37)
        {

          *(v41[7] + 8 * v36) = v29;
        }

        else
        {
          v41[(v36 >> 6) + 8] |= 1 << v36;
          v42 = (v41[6] + 16 * v36);
          *v42 = v27;
          v42[1] = v28;
          *(v41[7] + 8 * v36) = v29;
          v43 = v41[2];
          v24 = __OFADD__(v43, 1);
          v44 = v43 + 1;
          if (v24)
          {
            goto LABEL_26;
          }

          v41[2] = v44;
        }

        if (!--v21)
        {
          return result;
        }
      }

      goto LABEL_25;
    }

    if (a2)
    {
      v20 = *a3;
      if (v16)
      {
        goto LABEL_9;
      }
    }

    else
    {
      result = sub_10013A16C();
      v20 = *a3;
      if (v16)
      {
        goto LABEL_9;
      }
    }

LABEL_12:
    v20[(v15 >> 6) + 8] |= 1 << v15;
    v22 = (v20[6] + 16 * v15);
    *v22 = v7;
    v22[1] = v8;
    *(v20[7] + 8 * v15) = v45;
    v23 = v20[2];
    v24 = __OFADD__(v23, 1);
    v25 = v23 + 1;
    if (v24)
    {
LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

    v20[2] = v25;
    v21 = v3 - 1;
    if (v3 == 1)
    {
      return result;
    }

    goto LABEL_15;
  }

  return result;
}

uint64_t sub_100176548(uint64_t a1, uint64_t a2)
{
  if (sub_10001E3C0(a1, a2))
  {
    return 0xF000000000000007;
  }

  v4 = *v2;
  v5 = *(*v2 + 16);
  if (v5)
  {
    v17 = _swiftEmptyArrayStorage;
    sub_100091B08(0, v5, 0);
    v6 = _swiftEmptyArrayStorage;
    v7 = (v4 + 48);
    do
    {
      v8 = *(v7 - 2);
      v9 = *(v7 - 1);
      v10 = *v7;
      v17 = v6;
      v12 = v6[2];
      v11 = v6[3];

      if (v12 >= v11 >> 1)
      {
        sub_100091B08((v11 > 1), v12 + 1, 1);
        v6 = v17;
      }

      v7 += 3;
      v6[2] = v12 + 1;
      v13 = &v6[3 * v12];
      v13[4] = v8;
      v13[5] = v9;
      v13[6] = v10;
      --v5;
    }

    while (v5);
  }

  else
  {
    v6 = _swiftEmptyArrayStorage;
    if (!_swiftEmptyArrayStorage[2])
    {
      v14 = _swiftEmptyDictionarySingleton;
      goto LABEL_11;
    }
  }

  sub_10000C9C0(&qword_1005CF770, &qword_1004D2C90);
  v14 = sub_1004A6A74();
LABEL_11:
  v17 = v14;
  sub_1001762D8(v6, 1, &v17);

  v15 = v17;
  v16 = swift_allocObject();
  *(v16 + 16) = v15;
  return v16 | 0x4000000000000000;
}

uint64_t sub_1001766CC()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10017671C@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  *(a3 + 40) = sub_1000CE570(&off_1005992B0);
  *(a3 + 48) = 0;
  v6 = type metadata accessor for UploadFlagChanges(0);
  v7 = v6[10];
  sub_100016D2C();
  sub_1004A7114();
  v8 = a3 + v6[11];
  sub_1004A7114();
  *(a3 + v6[12]) = 0;
  *(a3 + v6[13]) = 0;
  v9 = *(a1 + 24);
  v10 = *(a1 + 32);
  v11 = *(a1 + 16);
  *a3 = *a1;
  *(a3 + 16) = v11;
  *(a3 + 32) = v10;
  *(a3 + 56) = v6;
  sub_100026044();

  sub_1004A6674();
  v12 = v6[8];
  type metadata accessor for UploadFlagChanges.FlagsToUpload(0);
  result = swift_storeEnumTagMultiPayload();
  *(a3 + v6[9]) = a2;
  return result;
}

void sub_100176838(void **a1)
{
  v2 = *(type metadata accessor for UploadFlagChanges.EncodedFlags.Element(0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_100141B10(v3);
  }

  v4 = v3[2];
  v5[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v5[1] = v4;
  sub_10017C094(v5);
  *a1 = v3;
}

Swift::Int sub_1001768E0()
{
  result = sub_100093190(&off_100599288);
  qword_1005DDF98 = result;
  return result;
}

uint64_t sub_100176908@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for UploadFlagChanges.EncodedFlags(0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for UploadFlagChanges.EncodedFlags.Element(0);
  v9 = *(v8 - 8);
  (*(v9 + 56))(v7, 1, 1, v8);
  v17 = a1;

  sub_100176838(&v17);

  v10 = *(v4 + 24);
  v11 = v17;
  *&v7[*(v4 + 20)] = v17;
  v12 = &v7[v10];
  v13 = v11 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
  v14 = (2 * v11[2]) | 1;
  *v12 = v11;
  *(v12 + 1) = v13;
  *(v12 + 2) = 0;
  *(v12 + 3) = v14;
  sub_10017F180(v7, a2, type metadata accessor for UploadFlagChanges.EncodedFlags);
}

uint64_t sub_100176A78()
{
  v0 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  v1 = MessageIdentifierSet.startIndex.getter(v0);
  v3 = v2;
  v5 = v1 == MessageIdentifierSet.endIndex.getter(v0) && v3 == v4;
  v6 = v5;
  if (v5)
  {
    v7 = 0;
  }

  else
  {
    MessageIdentifierSet.subscript.getter(v3, v0, &v18);
    v7 = v18;
  }

  v8 = MessageIdentifierSet.startIndex.getter(v0);
  v10 = v9;
  v12 = v8 == MessageIdentifierSet.endIndex.getter(v0) && v10 == v11;
  v13 = !v12;
  if (v12)
  {
    v14 = 0;
  }

  else
  {
    MessageIdentifierSet.subscript.getter(v10, v0, &v17);
    v14 = v17;
  }

  if (v7 < v14)
  {
    v15 = v13;
  }

  else
  {
    v15 = 0;
  }

  if (v6)
  {
    return v13;
  }

  else
  {
    return v15;
  }
}

void sub_100176B84(uint64_t a1)
{
  v2 = type metadata accessor for MailboxTaskLogger(0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  v5 = v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = v20 - v7;
  sub_10017EF90(a1, v20 - v7, type metadata accessor for MailboxTaskLogger);
  sub_10017EF90(a1, v5, type metadata accessor for MailboxTaskLogger);
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  v9 = sub_1004A4A54();
  v10 = sub_1004A6034();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    *v11 = 68159235;
    *(v11 + 4) = 2;
    *(v11 + 8) = 256;
    v12 = &v5[*(v2 + 20)];
    *(v11 + 10) = *v12;
    *(v11 + 11) = 2082;
    v13 = &v8[*(v2 + 20)];
    *(v11 + 13) = sub_10015BA6C(*(v13 + 1), *(v13 + 2), &v22);
    *(v11 + 21) = 1040;
    *(v11 + 23) = 2;
    *(v11 + 27) = 512;
    v14 = *(v12 + 12);
    sub_10017EFF8(v5, type metadata accessor for MailboxTaskLogger);
    *(v11 + 29) = v14;
    *(v11 + 31) = 2160;
    *(v11 + 33) = 0x786F626C69616DLL;
    *(v11 + 41) = 2085;
    v15 = *(v13 + 4);
    v16 = *(v13 + 10);

    sub_10017EFF8(v8, type metadata accessor for MailboxTaskLogger);
    v20[1] = v15;
    v21 = v16;
    v17 = sub_1004A5824();
    v19 = sub_10015BA6C(v17, v18, &v22);

    *(v11 + 43) = v19;
    _os_log_impl(&_mh_execute_header, v9, v10, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Created task.", v11, 0x33u);
    swift_arrayDestroy();
  }

  else
  {
    sub_10017EFF8(v5, type metadata accessor for MailboxTaskLogger);

    sub_10017EFF8(v8, type metadata accessor for MailboxTaskLogger);
  }
}

uint64_t sub_100176E58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, _BYTE *a6@<X8>)
{
  v7 = v6;
  v55 = a3;
  v56 = a5;
  v53 = a1;
  v54 = a2;
  v57 = a6;
  v9 = sub_10000C9C0(&qword_1005CD7A8, &unk_1004CF5A0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v52 - v12;
  v14 = sub_10000C9C0(&qword_1005D27D0, &qword_1004DA4A0);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = &v52 - v16;
  v18 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8);
  v21 = &v52 - v20;
  v22 = *(a4 + 88);
  v23 = *(a4 + 120);
  v58[4] = *(a4 + 104);
  v58[5] = v23;
  v59 = *(a4 + 136);
  v24 = *(a4 + 56);
  v58[0] = *(a4 + 40);
  v58[1] = v24;
  v58[2] = *(a4 + 72);
  v58[3] = v22;
  v25 = *(v7 + 24);
  v26 = *(v7 + 32);
  v27 = type metadata accessor for UploadFlagChanges(0);
  v28 = v7 + v27[8];
  sub_100177380(v58, v56, v17);
  v29 = sub_10000C9C0(&qword_1005D27D8, &qword_1004DA4A8);
  if ((*(*(v29 - 8) + 48))(v17, 1, v29) == 1)
  {
    v30 = v57;
    sub_100025F40(v17, &qword_1005D27D0, &qword_1004DA4A0);
    v31 = v7 + v27[11];
    v32 = sub_1004A70C4();
    v34 = v54;
    v33 = v55;
    if (v32 & 1) != 0 || (sub_10011264C(2, v54, v55))
    {
      if (sub_10011264C(1, v34, v33))
      {
        goto LABEL_6;
      }

      v35 = v27[10];
      if (sub_1004A70C4())
      {
        goto LABEL_6;
      }

      v48 = *(v7 + v27[9]);
      if (v48 == 2)
      {
        goto LABEL_12;
      }

      if (sub_100058284(0, v53, v34, v33))
      {
LABEL_6:
        v36 = sub_10000C9C0(&qword_1005D27E0, &unk_1004DA4B0);
        return (*(*(v36 - 8) + 56))(v30, 1, 1, v36);
      }

      if (v48)
      {
LABEL_12:
        v49 = &off_1005995F0;
      }

      else
      {
        v49 = &off_100599558;
      }

      v46 = sub_10000C9C0(&qword_1005D27E0, &unk_1004DA4B0);
      v50 = &v30[*(v46 + 48)];
      *v30 = 1;
      v51 = v50 + *(sub_10000C9C0(&qword_1005CD558, &unk_1004CF330) + 48);
      sub_10000E268(v7 + v35, v50, &unk_1005D91B0, &unk_1004CF400);
      *v51 = v49;
      *(v51 + 8) = 0;
      *(v51 + 16) = 1;
      type metadata accessor for ClientCommand(0);
    }

    else
    {
      v46 = sub_10000C9C0(&qword_1005D27E0, &unk_1004DA4B0);
      v47 = *(v46 + 48);
      *v30 = 2;
      type metadata accessor for ClientCommand(0);
    }

    swift_storeEnumTagMultiPayload();
    return (*(*(v46 - 8) + 56))(v30, 0, 1, v46);
  }

  else
  {
    v38 = &v17[*(v29 + 48)];
    v39 = *v38;
    v40 = v38[1];
    v56 = *(v38 + 1);
    sub_100025FDC(v17, v21, &unk_1005D91B0, &unk_1004CF400);
    v41 = v27[10];
    (*(v10 + 16))(v13, v21, v9);
    sub_1004A7104();
    v42 = sub_10000C9C0(&qword_1005D27E0, &unk_1004DA4B0);
    v43 = v57;
    v44 = &v57[*(v42 + 48)];
    *v57 = 0;
    v45 = v44 + *(sub_10000C9C0(&qword_1005D0488, &qword_1004DA4C0) + 48);
    sub_100025FDC(v21, v44, &unk_1005D91B0, &unk_1004CF400);
    *v45 = v39;
    *(v45 + 1) = v40;
    *(v45 + 8) = v56;
    type metadata accessor for ClientCommand(0);
    swift_storeEnumTagMultiPayload();
    return (*(*(v42 - 8) + 56))(v43, 0, 1, v42);
  }
}

uint64_t sub_100177380@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v4 = v3;
  v47 = a3;
  v7 = type metadata accessor for MailboxTaskLogger(0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7);
  v10 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v42 - v12;
  v14 = type metadata accessor for UploadFlagChanges.FlagsToUpload(0);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14);
  v17 = (&v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = type metadata accessor for UploadFlagChanges.EncodedFlags(0);
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18);
  v21 = &v42 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10017EF90(v4, v17, type metadata accessor for UploadFlagChanges.FlagsToUpload);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {
      v39 = sub_10000C9C0(&qword_1005D27D8, &qword_1004DA4A8);
      return (*(*(v39 - 8) + 56))(v47, 1, 1, v39);
    }

    sub_10017EFF8(v4, type metadata accessor for UploadFlagChanges.FlagsToUpload);
    v23 = *(v17 + *(sub_10000C9C0(&qword_1005D27C8, &unk_1004DA490) + 48));
    sub_10017F180(v17, v21, type metadata accessor for UploadFlagChanges.EncodedFlags);
  }

  else
  {
    sub_10017EFF8(v4, type metadata accessor for UploadFlagChanges.FlagsToUpload);
    v24 = *v17;

    sub_100095920(a1, &v49);
    v46 = v24;
    sub_10017ABDC(v24, a1, v21);
    v25 = *&v21[*(v18 + 20)];
    if (*(v25 + 16) || sub_10017B0F8())
    {
      sub_10017EF90(a2, v13, type metadata accessor for MailboxTaskLogger);
      sub_10017EF90(a2, v10, type metadata accessor for MailboxTaskLogger);
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      v26 = sub_1004A4A54();
      v27 = sub_1004A6034();
      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        v44 = v26;
        v29 = v28;
        v45 = swift_slowAlloc();
        v48 = v45;
        *v29 = 68159747;
        v43 = v27;
        *(v29 + 4) = 2;
        *(v29 + 8) = 256;
        v30 = *(v7 + 20);
        v42 = v25;
        v31 = &v10[v30];
        *(v29 + 10) = v10[v30];
        *(v29 + 11) = 2082;
        v32 = &v13[*(v7 + 20)];
        *(v29 + 13) = sub_10015BA6C(*(v32 + 1), *(v32 + 2), &v48);
        *(v29 + 21) = 1040;
        *(v29 + 23) = 2;
        *(v29 + 27) = 512;
        LOWORD(v31) = *(v31 + 12);
        sub_10017EFF8(v10, type metadata accessor for MailboxTaskLogger);
        *(v29 + 29) = v31;
        *(v29 + 31) = 2160;
        *(v29 + 33) = 0x786F626C69616DLL;
        *(v29 + 41) = 2085;
        v33 = *(v32 + 4);
        v34 = *(v32 + 10);

        sub_10017EFF8(v13, type metadata accessor for MailboxTaskLogger);
        v49 = v33;
        v50 = v34;
        v35 = sub_1004A5824();
        v37 = sub_10015BA6C(v35, v36, &v48);

        *(v29 + 43) = v37;
        *(v29 + 51) = 2048;
        *(v29 + 53) = *(v42 + 16);
        *(v29 + 61) = 2048;
        swift_beginAccess();
        *(v29 + 63) = sub_10017B0F8();
        v38 = v44;
        _os_log_impl(&_mh_execute_header, v44, v43, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Grouped the local flag changes into %ld message sets. Expecting %ld commands.", v29, 0x47u);
        swift_arrayDestroy();
      }

      else
      {
        sub_10017EFF8(v10, type metadata accessor for MailboxTaskLogger);

        sub_10017EFF8(v13, type metadata accessor for MailboxTaskLogger);
      }
    }

    v23 = v46;
  }

  swift_beginAccess();
  sub_10017B264(a2, v47);
  swift_endAccess();
  v41 = *(sub_10000C9C0(&qword_1005D27C8, &unk_1004DA490) + 48);
  sub_10017EF90(v21, v4, type metadata accessor for UploadFlagChanges.EncodedFlags);
  *(v4 + v41) = v23;
  swift_storeEnumTagMultiPayload();
  return sub_10017EFF8(v21, type metadata accessor for UploadFlagChanges.EncodedFlags);
}

uint64_t sub_100177930(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v264 = a6;
  v269 = a3;
  v270 = a1;
  v250 = type metadata accessor for UploadFlagChanges.FlagsToUpload(0);
  v9 = *(*(v250 - 8) + 64);
  __chkstk_darwin(v250);
  v251 = &v241 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v260 = type metadata accessor for MailboxTaskLogger(0);
  v11 = *(*(v260 - 8) + 64);
  __chkstk_darwin(v260);
  v243 = &v241 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v244 = &v241 - v14;
  __chkstk_darwin(v15);
  v253 = &v241 - v16;
  __chkstk_darwin(v17);
  v255 = &v241 - v18;
  __chkstk_darwin(v19);
  v245 = &v241 - v20;
  __chkstk_darwin(v21);
  v246 = &v241 - v22;
  __chkstk_darwin(v23);
  v257 = &v241 - v24;
  __chkstk_darwin(v25);
  v258 = &v241 - v26;
  __chkstk_darwin(v27);
  v248 = &v241 - v28;
  __chkstk_darwin(v29);
  v249 = &v241 - v30;
  v31 = sub_10000C9C0(&qword_1005CD7A0, &unk_1004CF590);
  v32 = *(*(v31 - 8) + 64);
  __chkstk_darwin(v31 - 8);
  v266 = &v241 - v33;
  v34 = sub_10000C9C0(&qword_1005CD518, &qword_1004CF2F0);
  v35 = *(*(v34 - 8) + 64);
  __chkstk_darwin(v34 - 8);
  v263 = &v241 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v37);
  v39 = &v241 - v38;
  v40 = sub_10000C9C0(&qword_1005CD1D0, &unk_1004CF2C0);
  v267 = *(v40 - 8);
  v268 = v40;
  v41 = *(v267 + 64);
  __chkstk_darwin(v40);
  v43 = &v241 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v44);
  v261 = &v241 - v45;
  __chkstk_darwin(v46);
  v254 = &v241 - v47;
  __chkstk_darwin(v48);
  v50 = &v241 - v49;
  __chkstk_darwin(v51);
  v256 = &v241 - v52;
  __chkstk_darwin(v53);
  v262 = &v241 - v54;
  __chkstk_darwin(v55);
  v252 = &v241 - v56;
  __chkstk_darwin(v57);
  v247 = &v241 - v58;
  __chkstk_darwin(v59);
  v61 = &v241 - v60;
  __chkstk_darwin(v62);
  v259 = &v241 - v63;
  v271 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  v64 = *(*(v271 - 8) + 64);
  __chkstk_darwin(v271);
  v66 = &v241 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v67);
  v69 = &v241 - v68;
  __chkstk_darwin(v70);
  v272 = &v241 - v71;
  v72 = type metadata accessor for UploadFlagChanges(0);
  v73 = *(v72 + 52);
  if (!*(v6 + v73))
  {
    *(v6 + v73) = 1;
    v79 = swift_allocObject();
    v80 = v6[1];
    v79[2] = *v6;
    v79[3] = v80;
    v79[4] = 1;

    return 0;
  }

  v74 = v72;
  v241 = v43;
  v75 = a4;
  if ((sub_1000203A4(1, a2, a4) & 1) == 0)
  {
    v82 = swift_allocObject();
    v83 = v6[1];
    v82[2] = *v6;
    v82[3] = v83;
    v82[4] = 733;

    return 1;
  }

  v76 = v74[11];
  v242 = v74[10];
  v265 = v6;
  MessageIdentifierSet.subtracting(_:)(v6 + v242, v272);
  v77 = v269;
  if ((sub_10001A3D4(1, v270, a2, v269) & 1) != 0 && (sub_1000203A4(3, a2, v75) & 1) == 0)
  {
    sub_10000E268(v272, v69, &unk_1005D91B0, &unk_1004CF400);
    if (MessageIdentifierSet.count.getter() < 1)
    {
      sub_100025F40(v69, &unk_1005D91B0, &unk_1004CF400);
      v78 = 1;
    }

    else
    {
      sub_100025FDC(v69, v61, &unk_1005D91B0, &unk_1004CF400);
      sub_100025FDC(v61, v39, &qword_1005CD1D0, &unk_1004CF2C0);
      v78 = 0;
    }

    v85 = v267;
    v84 = v268;
    (*(v267 + 56))(v39, v78, 1, v268);
    if ((*(v85 + 48))(v39, 1, v84) == 1)
    {
      sub_100025F40(v39, &qword_1005CD518, &qword_1004CF2F0);
      goto LABEL_12;
    }

    v93 = v259;
    sub_100025FDC(v39, v259, &qword_1005CD1D0, &unk_1004CF2C0);
    v94 = v266;
    MessageIdentifierSet.ranges.getter(v266);
    sub_10000C9C0(&qword_1005CD7B0, &unk_1004D16C0);
    v95 = sub_1004A7044();
    v96 = sub_1004A7074();
    v97 = sub_1004A7044();
    v98 = sub_1004A7074();
    if (v95 < v97 || v98 < v95)
    {
LABEL_90:
      __break(1u);
LABEL_91:
      __break(1u);
      goto LABEL_92;
    }

    v99 = sub_1004A7044();
    v100 = sub_1004A7074();
    sub_100025F40(v94, &qword_1005CD7A0, &unk_1004CF590);
    v101 = v96 < v99;
    v102 = v257;
    v103 = v258;
    if (v101 || v100 < v96)
    {
      goto LABEL_91;
    }

    v104 = v96 - v95;
    if (__OFSUB__(v96, v95))
    {
LABEL_92:
      __break(1u);
LABEL_93:
      __break(1u);
LABEL_94:
      __break(1u);
LABEL_95:
      __break(1u);
LABEL_96:
      result = sub_1004A6E24();
      __break(1u);
      return result;
    }

    v105 = v262;
    if (v104 > 19)
    {
      v189 = v264;
      sub_10017EF90(v264, v258, type metadata accessor for MailboxTaskLogger);
      sub_10017EF90(v189, v102, type metadata accessor for MailboxTaskLogger);
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      sub_10000E268(v93, v105, &qword_1005CD1D0, &unk_1004CF2C0);
      v111 = sub_1004A4A54();
      v190 = sub_1004A6034();
      if (os_log_type_enabled(v111, v190))
      {
        v191 = swift_slowAlloc();
        v270 = swift_slowAlloc();
        v275 = v270;
        *v191 = 68159491;
        *(v191 + 4) = 2;
        *(v191 + 8) = 256;
        v192 = v260;
        v193 = v102 + *(v260 + 20);
        *(v191 + 10) = *v193;
        *(v191 + 11) = 2082;
        v194 = v103 + *(v192 + 20);
        *(v191 + 13) = sub_10015BA6C(*(v194 + 8), *(v194 + 16), &v275);
        *(v191 + 21) = 1040;
        *(v191 + 23) = 2;
        *(v191 + 27) = 512;
        LOWORD(v193) = *(v193 + 24);
        sub_10017EFF8(v102, type metadata accessor for MailboxTaskLogger);
        *(v191 + 29) = v193;
        *(v191 + 31) = 2160;
        *(v191 + 33) = 0x786F626C69616DLL;
        *(v191 + 41) = 2085;
        v195 = *(v194 + 32);
        LODWORD(v194) = *(v194 + 40);

        sub_10017EFF8(v103, type metadata accessor for MailboxTaskLogger);
        v273 = v195;
        v274 = v194;
        v196 = sub_1004A5824();
        v198 = sub_10015BA6C(v196, v197, &v275);

        *(v191 + 43) = v198;
        *(v191 + 51) = 2048;
        v199 = v262;
        v200 = MessageIdentifierSet.count.getter();
        sub_100025F40(v199, &qword_1005CD1D0, &unk_1004CF2C0);
        *(v191 + 53) = v200;
        _os_log_impl(&_mh_execute_header, v111, v190, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Failed to delete %ld messages after uploading flag changes", v191, 0x3Du);
        goto LABEL_68;
      }

      sub_100025F40(v105, &qword_1005CD1D0, &unk_1004CF2C0);
      sub_10017EFF8(v102, type metadata accessor for MailboxTaskLogger);

      v216 = v103;
    }

    else
    {
      v106 = v264;
      v107 = v249;
      sub_10017EF90(v264, v249, type metadata accessor for MailboxTaskLogger);
      v108 = v248;
      sub_10017EF90(v106, v248, type metadata accessor for MailboxTaskLogger);
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      v109 = v247;
      sub_10000E268(v93, v247, &qword_1005CD1D0, &unk_1004CF2C0);
      v110 = v252;
      sub_10000E268(v93, v252, &qword_1005CD1D0, &unk_1004CF2C0);
      v111 = sub_1004A4A54();
      v112 = sub_1004A6034();
      if (os_log_type_enabled(v111, v112))
      {
        v113 = swift_slowAlloc();
        v270 = swift_slowAlloc();
        v275 = v270;
        *v113 = 68159747;
        *(v113 + 4) = 2;
        *(v113 + 8) = 256;
        v114 = v260;
        v115 = v108 + *(v260 + 20);
        *(v113 + 10) = *v115;
        *(v113 + 11) = 2082;
        v116 = v107 + *(v114 + 20);
        *(v113 + 13) = sub_10015BA6C(*(v116 + 8), *(v116 + 16), &v275);
        *(v113 + 21) = 1040;
        *(v113 + 23) = 2;
        *(v113 + 27) = 512;
        LOWORD(v115) = *(v115 + 24);
        sub_10017EFF8(v108, type metadata accessor for MailboxTaskLogger);
        *(v113 + 29) = v115;
        *(v113 + 31) = 2160;
        *(v113 + 33) = 0x786F626C69616DLL;
        *(v113 + 41) = 2085;
        v117 = *(v116 + 32);
        LODWORD(v116) = *(v116 + 40);

        sub_10017EFF8(v107, type metadata accessor for MailboxTaskLogger);
        v273 = v117;
        v274 = v116;
        v118 = sub_1004A5824();
        v120 = sub_10015BA6C(v118, v119, &v275);

        *(v113 + 43) = v120;
        *(v113 + 51) = 2048;
        v121 = v271;
        v122 = MessageIdentifierSet.count.getter();
        sub_100025F40(v109, &qword_1005CD1D0, &unk_1004CF2C0);
        *(v113 + 53) = v122;
        *(v113 + 61) = 2082;
        v123 = v121;
        v124 = v252;
        v125 = MessageIdentifierSet.debugDescription.getter(v123);
        v127 = v126;
        sub_100025F40(v124, &qword_1005CD1D0, &unk_1004CF2C0);
        v128 = sub_10015BA6C(v125, v127, &v275);

        *(v113 + 63) = v128;
        _os_log_impl(&_mh_execute_header, v111, v112, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Failed to delete %ld messages with UIDs %{public}s after uploading flag changes", v113, 0x47u);
LABEL_68:
        swift_arrayDestroy();

LABEL_76:
        sub_100025F40(v272, &unk_1005D91B0, &unk_1004CF400);
        v217 = sub_10000C9C0(&qword_1005CD530, &unk_1004D40A0);
        swift_allocBox();
        v218 = *(v217 + 48);
        v219 = v265[1];
        *v220 = *v265;
        v220[1] = v219;
        sub_100025FDC(v93, v220 + v218, &qword_1005CD1D0, &unk_1004CF2C0);

        return 3;
      }

      sub_100025F40(v109, &qword_1005CD1D0, &unk_1004CF2C0);
      sub_10017EFF8(v108, type metadata accessor for MailboxTaskLogger);

      sub_100025F40(v110, &qword_1005CD1D0, &unk_1004CF2C0);
      v216 = v107;
    }

    sub_10017EFF8(v216, type metadata accessor for MailboxTaskLogger);
    goto LABEL_76;
  }

LABEL_12:
  v86 = v270;
  v87 = sub_10001A3D4(1, v270, a2, v77);
  v88 = v265;
  v89 = v75;
  if ((v87 & 1) != 0 && (sub_1000203A4(4, a2, v75) & 1) == 0)
  {
    sub_10000E268(v88 + v242, v66, &unk_1005D91B0, &unk_1004CF400);
    if (MessageIdentifierSet.count.getter() < 1)
    {
      sub_100025F40(v66, &unk_1005D91B0, &unk_1004CF400);
      v91 = 1;
      v92 = v266;
      v90 = v263;
    }

    else
    {
      sub_100025FDC(v66, v50, &unk_1005D91B0, &unk_1004CF400);
      v90 = v263;
      sub_100025FDC(v50, v263, &qword_1005CD1D0, &unk_1004CF2C0);
      v91 = 0;
      v92 = v266;
    }

    v130 = v267;
    v129 = v268;
    (*(v267 + 56))(v90, v91, 1, v268);
    if ((*(v130 + 48))(v90, 1, v129) == 1)
    {
      sub_100025F40(v90, &qword_1005CD518, &qword_1004CF2F0);
      v88 = v265;
      goto LABEL_27;
    }

    v134 = v256;
    sub_100025FDC(v90, v256, &qword_1005CD1D0, &unk_1004CF2C0);
    MessageIdentifierSet.ranges.getter(v92);
    sub_10000C9C0(&qword_1005CD7B0, &unk_1004D16C0);
    v135 = sub_1004A7044();
    v136 = sub_1004A7074();
    v137 = sub_1004A7044();
    v138 = sub_1004A7074();
    if (v135 < v137 || v138 < v135)
    {
      goto LABEL_93;
    }

    v139 = sub_1004A7044();
    v140 = sub_1004A7074();
    sub_100025F40(v92, &qword_1005CD7A0, &unk_1004CF590);
    v141 = v255;
    v142 = v254;
    if (v136 < v139 || v140 < v136)
    {
      goto LABEL_94;
    }

    v143 = v136 - v135;
    v144 = v261;
    if (__OFSUB__(v136, v135))
    {
      goto LABEL_95;
    }

    v145 = v253;
    if (v143 <= 19)
    {
      v146 = v264;
      v147 = v246;
      sub_10017EF90(v264, v246, type metadata accessor for MailboxTaskLogger);
      v148 = v245;
      sub_10017EF90(v146, v245, type metadata accessor for MailboxTaskLogger);
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      sub_10000E268(v134, v142, &qword_1005CD1D0, &unk_1004CF2C0);
      sub_10000E268(v134, v144, &qword_1005CD1D0, &unk_1004CF2C0);
      v203 = sub_1004A4A54();
      v149 = sub_1004A6034();
      if (os_log_type_enabled(v203, v149))
      {
        v150 = swift_slowAlloc();
        v270 = swift_slowAlloc();
        v275 = v270;
        *v150 = 68159747;
        *(v150 + 4) = 2;
        *(v150 + 8) = 256;
        v151 = v260;
        v152 = v148 + *(v260 + 20);
        *(v150 + 10) = *v152;
        v153 = v147;
        *(v150 + 11) = 2082;
        v154 = v147 + *(v151 + 20);
        *(v150 + 13) = sub_10015BA6C(*(v154 + 8), *(v154 + 16), &v275);
        *(v150 + 21) = 1040;
        *(v150 + 23) = 2;
        *(v150 + 27) = 512;
        LOWORD(v152) = *(v152 + 24);
        sub_10017EFF8(v148, type metadata accessor for MailboxTaskLogger);
        *(v150 + 29) = v152;
        *(v150 + 31) = 2160;
        *(v150 + 33) = 0x786F626C69616DLL;
        *(v150 + 41) = 2085;
        v155 = *(v154 + 32);
        LODWORD(v154) = *(v154 + 40);

        sub_10017EFF8(v153, type metadata accessor for MailboxTaskLogger);
        v273 = v155;
        v274 = v154;
        v156 = sub_1004A5824();
        v158 = sub_10015BA6C(v156, v157, &v275);

        *(v150 + 43) = v158;
        *(v150 + 51) = 2048;
        v159 = v271;
        v160 = MessageIdentifierSet.count.getter();
        sub_100025F40(v142, &qword_1005CD1D0, &unk_1004CF2C0);
        *(v150 + 53) = v160;
        *(v150 + 61) = 2082;
        v161 = v159;
        v162 = v261;
        v163 = MessageIdentifierSet.debugDescription.getter(v161);
        v165 = v164;
        sub_100025F40(v162, &qword_1005CD1D0, &unk_1004CF2C0);
        v166 = sub_10015BA6C(v163, v165, &v275);

        *(v150 + 63) = v166;
        _os_log_impl(&_mh_execute_header, v203, v149, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Removing %ld deleted messages with UIDs %{public}s after uploading flag changes", v150, 0x47u);
LABEL_71:
        swift_arrayDestroy();

LABEL_80:
        sub_100025F40(v272, &unk_1005D91B0, &unk_1004CF400);
        v222 = sub_10000C9C0(&qword_1005CD530, &unk_1004D40A0);
        swift_allocBox();
        v223 = *(v222 + 48);
        v224 = v265[1];
        *v225 = *v265;
        v225[1] = v224;
        sub_100025FDC(v134, v225 + v223, &qword_1005CD1D0, &unk_1004CF2C0);

        return 4;
      }

      sub_100025F40(v142, &qword_1005CD1D0, &unk_1004CF2C0);
      sub_10017EFF8(v148, type metadata accessor for MailboxTaskLogger);

      sub_100025F40(v144, &qword_1005CD1D0, &unk_1004CF2C0);
      v221 = v147;
    }

    else
    {
      v201 = v264;
      sub_10017EF90(v264, v255, type metadata accessor for MailboxTaskLogger);
      sub_10017EF90(v201, v145, type metadata accessor for MailboxTaskLogger);
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      v202 = v241;
      sub_10000E268(v134, v241, &qword_1005CD1D0, &unk_1004CF2C0);
      v203 = sub_1004A4A54();
      v204 = sub_1004A6034();
      if (os_log_type_enabled(v203, v204))
      {
        v206 = v145;
        v207 = swift_slowAlloc();
        v270 = swift_slowAlloc();
        v275 = v270;
        *v207 = 68159491;
        *(v207 + 4) = 2;
        *(v207 + 8) = 256;
        v208 = v260;
        v209 = v206 + *(v260 + 20);
        *(v207 + 10) = *v209;
        *(v207 + 11) = 2082;
        v210 = v141 + *(v208 + 20);
        *(v207 + 13) = sub_10015BA6C(*(v210 + 8), *(v210 + 16), &v275);
        *(v207 + 21) = 1040;
        *(v207 + 23) = 2;
        *(v207 + 27) = 512;
        LOWORD(v209) = *(v209 + 24);
        sub_10017EFF8(v206, type metadata accessor for MailboxTaskLogger);
        *(v207 + 29) = v209;
        *(v207 + 31) = 2160;
        *(v207 + 33) = 0x786F626C69616DLL;
        *(v207 + 41) = 2085;
        v211 = *(v210 + 32);
        LODWORD(v210) = *(v210 + 40);

        sub_10017EFF8(v141, type metadata accessor for MailboxTaskLogger);
        v273 = v211;
        v274 = v210;
        v212 = sub_1004A5824();
        v214 = sub_10015BA6C(v212, v213, &v275);

        *(v207 + 43) = v214;
        *(v207 + 51) = 2048;
        v215 = MessageIdentifierSet.count.getter();
        sub_100025F40(v202, &qword_1005CD1D0, &unk_1004CF2C0);
        *(v207 + 53) = v215;
        _os_log_impl(&_mh_execute_header, v203, v204, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Removing %ld deleted messages after uploading flag changes", v207, 0x3Du);
        goto LABEL_71;
      }

      sub_100025F40(v202, &qword_1005CD1D0, &unk_1004CF2C0);
      sub_10017EFF8(v145, type metadata accessor for MailboxTaskLogger);

      v221 = v141;
    }

    sub_10017EFF8(v221, type metadata accessor for MailboxTaskLogger);
    goto LABEL_80;
  }

LABEL_27:
  if ((sub_10011264C(0, a2, v77) & 1) != 0 && (sub_10001A3D4(0, v86, a2, v77) & 1) == 0)
  {
    if (sub_10001A3D4(1, v86, a2, v77))
    {
LABEL_38:
      sub_100025F40(v272, &unk_1005D91B0, &unk_1004CF400);
      return 5;
    }

    v132 = 0;
    goto LABEL_34;
  }

  v131 = v88 + v74[8];
  v132 = sub_10017968C();
  if ((sub_10001A3D4(1, v86, a2, v77) & 1) == 0)
  {
LABEL_34:
    sub_10000C9C0(&qword_1005CD7A8, &unk_1004CF5A0);
    v133 = sub_1004A70C4();
    if (!v132 || (v133 & 1) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_36;
  }

  if (!v132)
  {
    goto LABEL_38;
  }

LABEL_36:
  if (sub_100058284(1, v86, a2, v77) & 1) != 0 || (sub_1000203A4(2, a2, v89))
  {
    goto LABEL_38;
  }

  v167 = v251;
  sub_10017EF90(v265 + v74[8], v251, type metadata accessor for UploadFlagChanges.FlagsToUpload);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_100025F40(v272, &unk_1005D91B0, &unk_1004CF400);
    sub_10017EFF8(v167, type metadata accessor for UploadFlagChanges.FlagsToUpload);
    return 5;
  }

  v168 = *(v167 + *(sub_10000C9C0(&qword_1005D27C8, &unk_1004DA490) + 48));
  sub_10017EFF8(v167, type metadata accessor for UploadFlagChanges.EncodedFlags);
  v169 = sub_1001643A4(_swiftEmptyArrayStorage);
  v170 = *(v168 + 16);
  if (v170)
  {
    v171 = 0;
    v172 = 0;
    v173 = (v168 + 56);
    v174 = v271;
    while (v172 < *(v168 + 16))
    {
      v175 = *(v173 - 6);
      v176 = *v173;
      LODWORD(v273) = *(v173 - 6);

      if (MessageIdentifierSet.contains(_:)(&v273, v174) & 1) != 0 || (LODWORD(v273) = v175, (MessageIdentifierSet.contains(_:)(&v273, v174)))
      {
      }

      else
      {
        sub_1000B5158(v171);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v273 = v169;
        v178 = sub_100067004(v175);
        v180 = v169[2];
        v181 = (v179 & 1) == 0;
        v182 = __OFADD__(v180, v181);
        v183 = v180 + v181;
        if (v182)
        {
          goto LABEL_89;
        }

        v184 = v179;
        if (v169[3] >= v183)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v188 = v178;
            sub_10013BC64();
            v178 = v188;
          }
        }

        else
        {
          sub_1000C6A34(v183, isUniquelyReferenced_nonNull_native);
          v178 = sub_100067004(v175);
          if ((v184 & 1) != (v185 & 1))
          {
            goto LABEL_96;
          }
        }

        v174 = v271;
        v169 = v273;
        if ((v184 & 1) == 0)
        {
          v186 = v178;
          sub_10001C858(v178, v175, _swiftEmptySetSingleton, v273);
          v178 = v186;
        }

        v187 = v169[7] + 8 * v178;
        sub_100080CB4(v176);
        v171 = sub_10010F618;
      }

      ++v172;
      v173 += 4;
      if (v170 == v172)
      {
        goto LABEL_82;
      }
    }

    __break(1u);
LABEL_89:
    __break(1u);
    goto LABEL_90;
  }

  v171 = 0;
LABEL_82:

  if (!v169[2])
  {
    sub_100025F40(v272, &unk_1005D91B0, &unk_1004CF400);

    sub_1000B5158(v171);
    return 5;
  }

  v226 = v264;
  v227 = v244;
  sub_10017EF90(v264, v244, type metadata accessor for MailboxTaskLogger);
  v228 = v243;
  sub_10017EF90(v226, v243, type metadata accessor for MailboxTaskLogger);
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  v229 = sub_1004A4A54();
  v230 = sub_1004A6034();
  if (os_log_type_enabled(v229, v230))
  {
    v231 = swift_slowAlloc();
    v271 = swift_slowAlloc();
    v275 = v271;
    *v231 = 68159491;
    *(v231 + 4) = 2;
    *(v231 + 8) = 256;
    v232 = v260;
    v233 = v228 + *(v260 + 20);
    *(v231 + 10) = *v233;
    *(v231 + 11) = 2082;
    v234 = v227 + *(v232 + 20);
    *(v231 + 13) = sub_10015BA6C(*(v234 + 8), *(v234 + 16), &v275);
    *(v231 + 21) = 1040;
    *(v231 + 23) = 2;
    *(v231 + 27) = 512;
    LOWORD(v233) = *(v233 + 24);
    sub_10017EFF8(v228, type metadata accessor for MailboxTaskLogger);
    *(v231 + 29) = v233;
    *(v231 + 31) = 2160;
    *(v231 + 33) = 0x786F626C69616DLL;
    *(v231 + 41) = 2085;
    v235 = *(v234 + 32);
    LODWORD(v234) = *(v234 + 40);

    sub_10017EFF8(v227, type metadata accessor for MailboxTaskLogger);
    v273 = v235;
    v274 = v234;
    v236 = sub_1004A5824();
    v238 = sub_10015BA6C(v236, v237, &v275);

    *(v231 + 43) = v238;
    *(v231 + 51) = 2048;
    *(v231 + 53) = v169[2];
    _os_log_impl(&_mh_execute_header, v229, v230, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Did upload flags for %ld messages", v231, 0x3Du);
    swift_arrayDestroy();
  }

  else
  {
    sub_10017EFF8(v228, type metadata accessor for MailboxTaskLogger);

    sub_10017EFF8(v227, type metadata accessor for MailboxTaskLogger);
  }

  sub_100025F40(v272, &unk_1005D91B0, &unk_1004CF400);
  v239 = swift_allocObject();
  v240 = v265[1];
  v239[2] = *v265;
  v239[3] = v240;
  v239[4] = v169;

  sub_1000B5158(v171);
  return 2;
}

BOOL sub_10017968C()
{
  v1 = v0;
  v2 = sub_10000C9C0(&qword_1005D2500, &qword_1004DA328);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v20 - v4;
  v6 = type metadata accessor for UploadFlagChanges.EncodedFlags(0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for UploadFlagChanges.FlagsToUpload(0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10017EF90(v1, v13, type metadata accessor for UploadFlagChanges.FlagsToUpload);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    sub_10017EFF8(v13, type metadata accessor for UploadFlagChanges.FlagsToUpload);
    return 0;
  }

  if (EnumCaseMultiPayload != 1)
  {
    return 0;
  }

  v15 = *&v13[*(sub_10000C9C0(&qword_1005D27C8, &unk_1004DA490) + 48)];

  sub_10017F180(v13, v9, type metadata accessor for UploadFlagChanges.EncodedFlags);
  sub_10000E268(v9, v5, &qword_1005D2500, &qword_1004DA328);
  v16 = type metadata accessor for UploadFlagChanges.EncodedFlags.Element(0);
  v17 = (*(*(v16 - 8) + 48))(v5, 1, v16);
  sub_100025F40(v5, &qword_1005D2500, &qword_1004DA328);
  v18 = v17 == 1 && *&v9[*(v6 + 24) + 16] == *&v9[*(v6 + 24) + 24] >> 1;
  sub_10017EFF8(v9, type metadata accessor for UploadFlagChanges.EncodedFlags);
  return v18;
}

void sub_1001798F8(unint64_t a1, uint64_t a2)
{
  v3 = v2;
  v83 = a1;
  v77 = type metadata accessor for MailboxTaskLogger(0);
  v5 = *(*(v77 - 8) + 64);
  __chkstk_darwin(v77);
  v80 = &v68 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v82 = &v68 - v8;
  v9 = type metadata accessor for UploadFlagChanges.FlagsToUpload(0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v12 = (&v68 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v81 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  v13 = *(*(v81 - 8) + 64);
  __chkstk_darwin(v81);
  v15 = &v68 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v68 - v17;
  v19 = type metadata accessor for UploadFlagChanges(0);
  v70 = *(v19 + 44);
  sub_10000E268(v3 + v70, v18, &unk_1005D91B0, &unk_1004CF400);
  v20 = *(v19 + 32);
  sub_10017EF90(v3 + v20, v12, type metadata accessor for UploadFlagChanges.FlagsToUpload);
  if (swift_getEnumCaseMultiPayload())
  {
    sub_10017EFF8(v12, type metadata accessor for UploadFlagChanges.FlagsToUpload);
    v79 = _swiftEmptyArrayStorage;
    v22 = v80;
    v23 = v18;
LABEL_8:
    v29 = v82;
    v30 = *(v83 + 16);
    if (v30)
    {
      v31 = 0;
      v32 = v83 + 32;
      *&v21 = 68159491;
      v74 = v21;
      v73 = v3;
      v72 = v9;
      v76 = a2;
      v75 = v23;
      v71 = v20;
      v78 = v30;
      v69 = v83 + 32;
      while (2)
      {
        v33 = (v32 + 32 * v31);
        v34 = v31;
        v35 = v81;
        while (1)
        {
          if (v34 >= v30)
          {
            __break(1u);
LABEL_47:
            __break(1u);
            goto LABEL_48;
          }

          v36 = v33[1];
          *v86 = *v33;
          *&v86[16] = v36;
          if (__OFADD__(v34, 1))
          {
            goto LABEL_47;
          }

          v83 = v34 + 1;
          sub_10017F058(v86, v85);
          if (MessageIdentifierSet.count.getter() > 732)
          {
            sub_10017F0B4(v86);
LABEL_44:
            v3 = v73;
            v20 = v71;
            goto LABEL_45;
          }

          v37 = *v86;
          *v85 = *v86;
          if ((MessageIdentifierSet.contains(_:)(v85, v35) & 1) == 0)
          {
            break;
          }

          sub_10017EF90(a2, v29, type metadata accessor for MailboxTaskLogger);
          sub_10017EF90(a2, v22, type metadata accessor for MailboxTaskLogger);
          variable initialization expression of Engine.isProcessingUpdates();
          variable initialization expression of Engine.isProcessingUpdates();
          variable initialization expression of Engine.isProcessingUpdates();
          variable initialization expression of Engine.isProcessingUpdates();
          variable initialization expression of Engine.isProcessingUpdates();
          variable initialization expression of Engine.isProcessingUpdates();
          sub_10017F058(v86, v85);
          v38 = sub_1004A4A54();
          v39 = sub_1004A6014();
          if (os_log_type_enabled(v38, v39))
          {
            v40 = swift_slowAlloc();
            v84 = swift_slowAlloc();
            *v40 = v74;
            *(v40 + 4) = 2;
            *(v40 + 8) = 256;
            v41 = v77;
            v42 = v22 + *(v77 + 20);
            *(v40 + 10) = *v42;
            *(v40 + 11) = 2082;
            v43 = v82 + *(v41 + 20);
            *(v40 + 13) = sub_10015BA6C(*(v43 + 8), *(v43 + 16), &v84);
            *(v40 + 21) = 1040;
            *(v40 + 23) = 2;
            *(v40 + 27) = 512;
            LOWORD(v42) = *(v42 + 24);
            sub_10017EFF8(v80, type metadata accessor for MailboxTaskLogger);
            *(v40 + 29) = v42;
            *(v40 + 31) = 2160;
            *(v40 + 33) = 0x786F626C69616DLL;
            *(v40 + 41) = 2085;
            v44 = *(v43 + 32);
            LODWORD(v43) = *(v43 + 40);

            sub_10017EFF8(v82, type metadata accessor for MailboxTaskLogger);
            *v85 = v44;
            *&v85[8] = v43;
            a2 = v76;
            v45 = sub_1004A5824();
            v47 = sub_10015BA6C(v45, v46, &v84);
            v35 = v81;

            *(v40 + 43) = v47;
            v22 = v80;
            *(v40 + 51) = 1024;
            sub_10017F0B4(v86);
            *(v40 + 53) = v37;
            sub_10017F0B4(v86);
            _os_log_impl(&_mh_execute_header, v38, v39, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Ignoring duplicate updates for UID %u.", v40, 0x39u);
            swift_arrayDestroy();
            v23 = v75;

            v29 = v82;
          }

          else
          {
            sub_10017F0B4(v86);
            sub_10017EFF8(v22, type metadata accessor for MailboxTaskLogger);
            sub_10017F0B4(v86);

            sub_10017EFF8(v29, type metadata accessor for MailboxTaskLogger);
          }

          ++v34;
          v33 += 2;
          v30 = v78;
          if (v83 == v78)
          {
            goto LABEL_44;
          }
        }

        LODWORD(v84) = v37;
        MessageIdentifierSet.insert(_:)(v85, &v84, v35);
        v48 = 256;
        if (!v86[5])
        {
          v48 = 0;
        }

        v49 = v48 | v86[4];
        v50 = 0x10000;
        if (!v86[6])
        {
          v50 = 0;
        }

        v51 = 0x1000000;
        if (!v86[7])
        {
          v51 = 0;
        }

        v52 = v49 | v50 | v51;
        v53 = &_mh_execute_header;
        if (!v86[8])
        {
          v53 = 0;
        }

        v54 = 0x10000000000;
        if (!v86[9])
        {
          v54 = 0;
        }

        v85[0] = v86[12];
        *&v85[1] = *&v86[13];
        v85[9] = v86[21];
        v55 = FlagsWithModifications.locallyModified.getter(v52 | v53 | v54 | (v86[10] << 48) | (v86[11] << 56), *v85, *&v85[8]);
        if (*(v55 + 16))
        {
          v56 = *(v55 + 40);
          v57 = v55;
          sub_1004A6E94();
          sub_1004A6EB4(1uLL);
          v58 = sub_1004A6F14();
          v59 = -1 << *(v57 + 32);
          v60 = v58 & ~v59;
          v3 = v73;
          v20 = v71;
          if ((*(v57 + 56 + ((v60 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v60))
          {
            v61 = ~v59;
            while (*(*(v57 + 48) + v60) != 1)
            {
              v60 = (v60 + 1) & v61;
              if (((*(v57 + 56 + ((v60 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v60) & 1) == 0)
              {
                goto LABEL_34;
              }
            }

            LODWORD(v84) = v37;
            MessageIdentifierSet.insert(_:)(v85, &v84, v81);
          }

          else
          {
LABEL_34:
          }
        }

        else
        {

          v3 = v73;
          v20 = v71;
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v30 = v78;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v79 = sub_100087220(0, *(v79 + 2) + 1, 1, v79);
        }

        v64 = *(v79 + 2);
        v63 = *(v79 + 3);
        if (v64 >= v63 >> 1)
        {
          v79 = sub_100087220((v63 > 1), v64 + 1, 1, v79);
        }

        v65 = v79;
        *(v79 + 2) = v64 + 1;
        v66 = &v65[32 * v64];
        v67 = *&v86[16];
        *(v66 + 2) = *v86;
        *(v66 + 3) = v67;
        v31 = v83;
        v32 = v69;
        if (v83 != v30)
        {
          continue;
        }

        break;
      }
    }

LABEL_45:
    sub_100025F40(v23, &unk_1005D91B0, &unk_1004CF400);
    sub_10017EFF8(v3 + v20, type metadata accessor for UploadFlagChanges.FlagsToUpload);
    *(v3 + v20) = v79;
    swift_storeEnumTagMultiPayload();
    return;
  }

  v24 = *v12;
  sub_10000E268(v18, v15, &unk_1005D91B0, &unk_1004CF400);
  v25 = *(v24 + 16);
  v79 = v24;

  v22 = v80;
  v23 = v18;
  if (!v25)
  {
LABEL_7:

    sub_100025F40(v23, &unk_1005D91B0, &unk_1004CF400);
    sub_100025FDC(v15, v23, &unk_1005D91B0, &unk_1004CF400);
    goto LABEL_8;
  }

  v26 = 0;
  v27 = v79 + 32;
  while (v26 < *(v79 + 2))
  {
    ++v26;
    v28 = *v27;
    v27 += 32;
    *v86 = v28;
    MessageIdentifierSet.insert(_:)(v85, v86, v81);
    if (v25 == v26)
    {
      goto LABEL_7;
    }
  }

LABEL_48:
  __break(1u);
}