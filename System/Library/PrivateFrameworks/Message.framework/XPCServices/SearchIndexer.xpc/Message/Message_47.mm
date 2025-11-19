uint64_t sub_1002ED81C()
{
  v0 = _s13IMAP2Protocol11MessageDataV04BodyD0V5countSivg_0();
  if (v0 != _s13IMAP2Protocol11MessageDataV04BodyD0V5countSivg_0())
  {
    return 0;
  }

  sub_1004A5384();
  sub_1001B60F8();
  sub_1004A5E64();
  v1 = sub_1004A5EA4();
  if (v4 == v3)
  {
    return 1;
  }

  __chkstk_darwin(v1);
  sub_1004A5314();
  return v4;
}

uint64_t ByteBuffer.init(_:)(uint64_t a1)
{
  v2 = sub_1004A5384();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v7, a1, v2, v5);
  result = _s13IMAP2Protocol11MessageDataV04BodyD0V5countSivg_0();
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    if (result)
    {
      if (result)
      {
        v9 = (result - 1) | ((result - 1) >> 1) | (((result - 1) | ((result - 1) >> 1)) >> 2);
        v10 = v9 | (v9 >> 4) | ((v9 | (v9 >> 4)) >> 8);
        v11 = v10 | HIWORD(v10);
        v12 = __CFADD__(v11, 1);
        v13 = v11 + 1;
        if (v12)
        {
          v14 = -1;
        }

        else
        {
          v14 = v13;
        }
      }

      else
      {
        v14 = 0;
      }

      result = malloc(v14);
      if (!result)
      {
        goto LABEL_15;
      }

      v22 = result;
      type metadata accessor for ByteBuffer._Storage();
      v21 = swift_allocObject();
      v18 = 0;
      v17 = 0;
      v19 = 0;
      v20 = 0;
      *(v21 + 16) = v14;
      *(v21 + 24) = v22;
      *(v21 + 32) = j__malloc;
      *(v21 + 40) = j__realloc;
      *(v21 + 48) = sub_100127C74;
      *(v21 + 56) = sub_100127C84;
    }

    else
    {
      v15 = ByteBufferAllocator.zeroCapacityWithDefaultAllocator.unsafeMutableAddressor();
      v16 = *v15;
      v18 = *(v15 + 2);
      v17 = *(v15 + 3);
      v14 = *(v15 + 4);
      v19 = *(v15 + 10);
      v20 = *(v15 + 22);
    }

    v25 = v21;
    v26 = v18;
    v27 = v17;
    v28 = v14;
    v29 = v19;
    v30 = v20;
    result = ByteBuffer.setDispatchData(_:at:)(v7, v17);
    if (!__CFADD__(v27, result))
    {
      v23 = v25;
      sub_1002ED6F0(a1);
      (*(v3 + 8))(v7, v2);
      return v23;
    }
  }

  __break(1u);
LABEL_15:
  __break(1u);
  return result;
}

{
  result = ByteBuffer.getSlice(at:length:)(*(a1 + 24), *(a1 + 32) - *(a1 + 24), *a1, *(a1 + 8), *(a1 + 16) | (*(a1 + 20) << 32) | (*(a1 + 22) << 48));
  if (result)
  {
    v3 = result;
    sub_1003A52D0(a1);
    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t MessageData.BodyData.init(_:)(uint64_t a1, uint64_t a2, unint64_t a3)
{
  swift_beginAccess();
  v5 = *(a1 + 24) + ((a3 >> 24) & 0xFFFF00 | BYTE6(a3));
  sub_1004A5324();
}

uint64_t type metadata accessor for MessageData.BodyData()
{
  result = qword_1005D8158;
  if (!qword_1005D8158)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1002EDC98(uint64_t a1, uint64_t a2)
{
  v4 = sub_1004A5384();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1002EDD18(uint64_t a1, uint64_t a2)
{
  v4 = sub_1004A5384();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t Namespace.hash(into:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  sub_1004A6EB4(v3);
  if (v3)
  {
    v4 = (a2 + 32);
    do
    {
      v5 = *v4++;
      sub_1004A6EC4(v5);
      --v3;
    }

    while (v3);
  }

  return sub_1004A55B4();
}

Swift::Int Namespace.hashValue.getter(uint64_t a1)
{
  sub_1004A6E94();
  v2 = *(a1 + 16);
  sub_1004A6EB4(v2);
  if (v2)
  {
    v3 = (a1 + 32);
    do
    {
      v4 = *v3++;
      sub_1004A6EC4(v4);
      --v2;
    }

    while (v2);
  }

  sub_1004A55B4();
  return sub_1004A6F14();
}

Swift::Int sub_1002EDED0()
{
  v1 = v0[1];
  v2 = v0[2];
  return Namespace.hashValue.getter(*v0);
}

uint64_t sub_1002EDEDC()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = v0[2];
  v4 = *(*v0 + 16);
  sub_1004A6EB4(v4);
  if (v4)
  {
    v5 = (v2 + 32);
    do
    {
      v6 = *v5++;
      sub_1004A6EC4(v6);
      --v4;
    }

    while (v4);
  }

  return sub_1004A55B4();
}

Swift::Int sub_1002EDF58()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = v0[2];
  sub_1004A6E94();
  v4 = *(v2 + 16);
  sub_1004A6EB4(v4);
  if (v4)
  {
    v5 = (v2 + 32);
    do
    {
      v6 = *v5++;
      sub_1004A6EC4(v6);
      --v4;
    }

    while (v4);
  }

  sub_1004A55B4();
  return sub_1004A6F14();
}

unint64_t Namespace.init(_:)(uint64_t a1)
{
  v13 = *(a1 + 24);
  v1 = *(&v13 + 1);
  if (*(&v13 + 1))
  {
    v2 = v13;
    v3 = *a1;
    v4 = *(a1 + 8);
    v5 = *(a1 + 16);
    v6 = *(a1 + 20);
    v7 = *(a1 + 22);
    sub_1002EEDB8(&v13, &v12);

    v10 = MailboxName.init(_:)(v9, v4, v5 | (v6 << 32) | (v7 << 48));
    v1 = _s13IMAP2Protocol9NamespaceV6prefix9separatorACSays5UInt8VG_SJtcfC_0(v10, v2, v1);
    sub_1002EED64(a1);
  }

  else
  {
    sub_1002EED64(a1);
  }

  return v1;
}

uint64_t sub_1002EE154(uint64_t result, uint64_t a2)
{
  v2 = 0;
  v3 = *(a2 + 16);
  while (v3 != v2)
  {
    v4 = *(result + 16);
    v5 = v2 >= v4;
    v6 = v2 == v4;
    v7 = v2 == v4;
    if (v6)
    {
      return v7;
    }

    if (v5)
    {
      __break(1u);
      goto LABEL_12;
    }

    v8 = *(a2 + 32 + v2);
    v9 = *(result + 32 + v2++);
    if (v8 != v9)
    {
      return v7;
    }
  }

  v10 = *(result + 16);
  if (v3 == v10)
  {
    return 1;
  }

  if (v3 < v10)
  {
    return 0;
  }

LABEL_12:
  __break(1u);
  return result;
}

NIOIMAPCore2::MailboxName __swiftcall Namespace.addPrefix(to:)(NIOIMAPCore2::MailboxName to)
{
  v5._rawValue = v1;

  sub_10015BDC0(v2);

  v4 = MailboxName.init(_:)(v5);
  value = v4._hashValue._value;
  result.bytes = v4.bytes;
  result._hashValue._value = value;
  return result;
}

unint64_t sub_1002EE92C(unint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = a1;
  v5 = 0;
  v6 = *(a3 + 16);
  v7 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v7 = a1 & 0xFFFFFFFFFFFFLL;
  }

  v30 = a3 + 32;
  v32 = v7;
  v8 = 4 * v7;
  v9 = (a1 >> 59) & 1;
  if ((a2 & 0x1000000000000000) == 0)
  {
    LOBYTE(v9) = 1;
  }

  v10 = 4 << v9;
  v27 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v28 = a2 & 0xFFFFFFFFFFFFFFLL;
  result = 15;
  v29 = 4 << v9;
  while (1)
  {
    if (v5 == v6)
    {
      v12 = 0;
      v13 = v6;
      goto LABEL_11;
    }

    if (v5 >= v6)
    {
      break;
    }

    v13 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      goto LABEL_35;
    }

    v12 = *(v30 + v5);
LABEL_11:
    v14 = result >> 14;
    v15 = result >> 14 == v8;
    if (result >> 14 == v8)
    {
      v16 = 0;
      if (v5 == v6)
      {
        return v15;
      }

      goto LABEL_30;
    }

    v17 = result & 0xC;
    v18 = result;
    if (v17 == v10)
    {
      v22 = result;
      v23 = sub_10010C210(result, a1, a2);
      v10 = v29;
      v4 = a1;
      v18 = v23;
      result = v22;
    }

    v19 = v18 >> 16;
    if (v18 >> 16 >= v32)
    {
      goto LABEL_34;
    }

    if ((a2 & 0x1000000000000000) != 0)
    {
      v26 = result;
      v24 = sub_1004A5A24();
      v10 = v29;
      v4 = a1;
      v16 = v24;
      result = v26;
      if (v17 == v29)
      {
        goto LABEL_27;
      }
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v33[0] = v4;
        v33[1] = v28;
        v20 = v33;
      }

      else
      {
        v20 = v27;
        if ((v4 & 0x1000000000000000) == 0)
        {
          v25 = result;
          v21 = sub_1004A67E4();
          v10 = v29;
          v4 = a1;
          v20 = v21;
          result = v25;
        }
      }

      v16 = *(v20 + v19);
      if (v17 == v10)
      {
LABEL_27:
        result = sub_10010C210(result, a1, a2);
        v10 = v29;
        v4 = a1;
        if ((a2 & 0x1000000000000000) == 0)
        {
LABEL_24:
          result = (result & 0xFFFFFFFFFFFF0000) + 65540;
          if (v5 == v6)
          {
            return v15;
          }

          goto LABEL_30;
        }

        goto LABEL_28;
      }
    }

    if ((a2 & 0x1000000000000000) == 0)
    {
      goto LABEL_24;
    }

LABEL_28:
    if (v32 <= result >> 16)
    {
      goto LABEL_36;
    }

    result = sub_1004A59F4();
    v10 = v29;
    v4 = a1;
    if (v5 == v6)
    {
      return v15;
    }

LABEL_30:
    v15 = 0;
    if (v14 != v8)
    {
      v5 = v13;
      if (v12 == v16)
      {
        continue;
      }
    }

    return v15;
  }

  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
  return result;
}

uint64_t _s20IMAPSearchIndexerXPC7MailboxV23__derived_struct_equalsySbAC_ACtFZ_0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *(result + 16);
  if (v6 != *(a4 + 16))
  {
    return 0;
  }

  if (v6)
  {
    v7 = result == a4;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
LABEL_10:
    if (a2 == a5 && a3 == a6)
    {
      return 1;
    }

    else
    {
      return sub_1004A6D34();
    }
  }

  else
  {
    v8 = (result + 32);
    v9 = (a4 + 32);
    while (v6)
    {
      if (*v8 != *v9)
      {
        return 0;
      }

      ++v8;
      ++v9;
      if (!--v6)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

unint64_t _s13IMAP2Protocol9NamespaceV6prefix9separatorACSays5UInt8VG_SJtcfC_0(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v5 = a1;
  if (!*(a1 + 16))
  {
    return v5;
  }

  if (a2 == 2573 && a3 == 0xE200000000000000 || (sub_1004A6D34() & 1) != 0)
  {

    v6 = 10;
    goto LABEL_11;
  }

  if ((sub_1004A55A4() & 1) == 0)
  {
    goto LABEL_20;
  }

  result = sub_1001E11BC(a2, a3);
  if ((result & 0x100000000) != 0)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if ((result & 0xFFFFFF80) != 0)
  {
LABEL_20:

    return v5;
  }

  result = sub_1001E11BC(a2, a3);
  if ((result & 0x100000000) == 0)
  {
    v6 = result;
    if ((result & 0xFFFFFF00) == 0)
    {
LABEL_11:
      v8 = *(v5 + 2);
      if (v8)
      {
        v9 = v5[v8 + 31];

        if (v9 == v6)
        {
          return v5;
        }
      }

      else
      {
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v5 = sub_10015BF20(0, *(v5 + 2) + 1, 1, v5);
      }

      v11 = *(v5 + 2);
      v10 = *(v5 + 3);
      if (v11 >= v10 >> 1)
      {
        v5 = sub_10015BF20((v10 > 1), v11 + 1, 1, v5);
      }

      *(v5 + 2) = v11 + 1;
      v5[v11 + 32] = v6;
      return v5;
    }

    __break(1u);
    goto LABEL_23;
  }

LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_1002EEDB8(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C9C0(&qword_1005D8190, &qword_1004F3C68);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1002EEE28()
{
  result = qword_1005D8198;
  if (!qword_1005D8198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D8198);
  }

  return result;
}

unint64_t sub_1002EEE7C(unint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v5 = a4;
  v7 = a1;
  v8 = a5 >> 1;
  v9 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v9 = a1 & 0xFFFFFFFFFFFFLL;
  }

  v35 = v9;
  v10 = 4 * v9;
  v11 = (a1 >> 59) & 1;
  if ((a2 & 0x1000000000000000) == 0)
  {
    LOBYTE(v11) = 1;
  }

  v12 = 4 << v11;
  v29 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v30 = a2 & 0xFFFFFFFFFFFFFFLL;
  result = 15;
  v31 = 4 << v11;
  while (1)
  {
    if (v5 == v8)
    {
      v14 = 0;
      v15 = v8;
      goto LABEL_11;
    }

    if (v5 < a4 || v5 >= v8)
    {
      break;
    }

    v14 = *(a3 + v5);
    v15 = v5 + 1;
LABEL_11:
    v16 = result >> 14;
    v17 = result >> 14 == v10;
    if (result >> 14 == v10)
    {
      v18 = 0;
      if (v5 == v8)
      {
        return v17;
      }

      goto LABEL_30;
    }

    v19 = result & 0xC;
    v20 = result;
    if (v19 == v12)
    {
      v24 = result;
      v25 = sub_10010C210(result, a1, a2);
      v12 = v31;
      v7 = a1;
      v20 = v25;
      result = v24;
    }

    v21 = v20 >> 16;
    if (v20 >> 16 >= v35)
    {
      goto LABEL_34;
    }

    if ((a2 & 0x1000000000000000) != 0)
    {
      v28 = result;
      v26 = sub_1004A5A24();
      v12 = v31;
      v7 = a1;
      v18 = v26;
      result = v28;
      if (v19 == v31)
      {
        goto LABEL_27;
      }
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v36[0] = v7;
        v36[1] = v30;
        v22 = v36;
      }

      else
      {
        v22 = v29;
        if ((v7 & 0x1000000000000000) == 0)
        {
          v27 = result;
          v23 = sub_1004A67E4();
          v12 = v31;
          v7 = a1;
          v22 = v23;
          result = v27;
        }
      }

      v18 = *(v22 + v21);
      if (v19 == v12)
      {
LABEL_27:
        result = sub_10010C210(result, a1, a2);
        v12 = v31;
        v7 = a1;
        if ((a2 & 0x1000000000000000) == 0)
        {
LABEL_24:
          result = (result & 0xFFFFFFFFFFFF0000) + 65540;
          if (v5 == v8)
          {
            return v17;
          }

          goto LABEL_30;
        }

        goto LABEL_28;
      }
    }

    if ((a2 & 0x1000000000000000) == 0)
    {
      goto LABEL_24;
    }

LABEL_28:
    if (v35 <= result >> 16)
    {
      goto LABEL_35;
    }

    result = sub_1004A59F4();
    v12 = v31;
    v7 = a1;
    if (v5 == v8)
    {
      return v17;
    }

LABEL_30:
    v17 = 0;
    if (v16 != v10)
    {
      v5 = v15;
      if (v14 == v18)
      {
        continue;
      }
    }

    return v17;
  }

  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
  return result;
}

unint64_t sub_1002EF0B8()
{
  result = qword_1005D81A0;
  if (!qword_1005D81A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D81A0);
  }

  return result;
}

uint64_t sub_1002EF11C(uint64_t a1)
{
  v3 = type metadata accessor for SelectParameter(0);
  v35 = *(v3 - 8);
  v36 = v3;
  v4 = *(v35 + 64);
  __chkstk_darwin(v3);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 16);
  v9 = _swiftEmptyArrayStorage;
  if (!v8)
  {
    return v9;
  }

  v30 = v1;
  v38 = _swiftEmptyArrayStorage;
  v32 = v5;
  sub_1002E52B8(0, v8, 0);
  v9 = v38;
  v10 = v32 + 56;
  v11 = -1 << *(v32 + 32);
  result = sub_1004A6554();
  v13 = result;
  v14 = v32;
  v15 = 0;
  v31 = v32 + 64;
  v33 = v8;
  v34 = v10;
  while ((v13 & 0x8000000000000000) == 0 && v13 < 1 << *(v14 + 32))
  {
    v18 = v13 >> 6;
    if ((*(v10 + 8 * (v13 >> 6)) & (1 << v13)) == 0)
    {
      goto LABEL_21;
    }

    v37 = *(v14 + 36);
    v19 = v14;
    swift_storeEnumTagMultiPayload();
    v38 = v9;
    v20 = v7;
    v22 = v9[2];
    v21 = v9[3];
    if (v22 >= v21 >> 1)
    {
      sub_1002E52B8(v21 > 1, v22 + 1, 1);
      v9 = v38;
    }

    v9[2] = v22 + 1;
    result = sub_1002F2694(v20, v9 + ((*(v35 + 80) + 32) & ~*(v35 + 80)) + *(v35 + 72) * v22, type metadata accessor for SelectParameter);
    v16 = 1 << *(v19 + 32);
    if (v13 >= v16)
    {
      goto LABEL_22;
    }

    v14 = v19;
    v10 = v34;
    v23 = *(v34 + 8 * v18);
    if ((v23 & (1 << v13)) == 0)
    {
      goto LABEL_23;
    }

    if (v37 != *(v14 + 36))
    {
      goto LABEL_24;
    }

    v7 = v20;
    v24 = v23 & (-2 << (v13 & 0x3F));
    if (v24)
    {
      v16 = __clz(__rbit64(v24)) | v13 & 0x7FFFFFFFFFFFFFC0;
      v17 = v33;
    }

    else
    {
      v25 = v18 << 6;
      v26 = v18 + 1;
      v27 = (v31 + 8 * v18);
      v17 = v33;
      while (v26 < (v16 + 63) >> 6)
      {
        v29 = *v27++;
        v28 = v29;
        v25 += 64;
        ++v26;
        if (v29)
        {
          result = sub_100020944(v13, v37, 0);
          v14 = v32;
          v16 = __clz(__rbit64(v28)) + v25;
          goto LABEL_4;
        }
      }

      result = sub_100020944(v13, v37, 0);
      v14 = v32;
    }

LABEL_4:
    ++v15;
    v13 = v16;
    if (v15 == v17)
    {
      return v9;
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

uint64_t ClientCommandEncoder.encode(tag:command:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, void (*a4)(__int128 *)@<X8>)
{
  v5[16] = a1;
  v6 = HIDWORD(a1);
  v7 = a2;
  return sub_1002EFAE8(sub_1002E81C0, v5, a3 & 0x101FF, a4);
}

uint64_t ClientCommandEncoder.idle(tag:)@<X0>(uint64_t a1@<X0>, unsigned int a2@<W1>, uint64_t a3@<X8>)
{
  v3 = a2;
  v61 = a3;
  v62 = a1;
  v4 = a2 & 0x100;
  v5 = HIWORD(a2) & 1;
  v55 = type metadata accessor for CommandStreamPart();
  v6 = *(*(v55 - 8) + 64);
  __chkstk_darwin(v55);
  v57 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1004A57F4();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v53 = type metadata accessor for TaggedCommand();
  v10 = *(*(v53 - 8) + 64);
  __chkstk_darwin(v53);
  v12 = (&v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v60 = sub_1004A5384();
  v13 = *(v60 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v60);
  v59 = &v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v58 = &v52 - v17;
  v18 = ByteBufferAllocator.zeroCapacityWithDefaultAllocator.unsafeMutableAddressor();
  v19 = *v18;
  v20 = v18[1];
  v21 = qword_1004F3DB0[v3];
  v22 = *(v18 + 4) | (*(v18 + 10) << 32) | (*(v18 + 22) << 48);
  v54 = v4 << 24;
  v23 = v54 | v21;

  v56 = v5;
  CommandEncodeBuffer.init(buffer:options:encodedAtLeastOneCatenateElement:loggingMode:)(v24, v20, v22, v23 | 1, 0, v5, v69);
  *&v67[0] = sub_100304E50(v62 & 0xFFFFFFFF000000FFLL);
  sub_1004A57D4();
  sub_10000C9C0(&unk_1005D8FF0, &unk_1004DC230);
  sub_1002F1444();
  v25 = sub_1004A5794();
  v27 = v26;

  if (v27)
  {
    v29 = v3;
    v30 = *(v53 + 20);
    type metadata accessor for Command();
    swift_storeEnumTagMultiPayload();
    v12->_countAndFlagsBits = v25;
    v12->_object = v27;
    CommandEncodeBuffer.writeCommand(_:)(v12);
    sub_1002F2634(v12, type metadata accessor for TaggedCommand);
    v31 = EncodeBuffer.nextChunk()();
    v33 = v32;
    swift_beginAccess();
    v34 = *(v31 + 24) + ((v33 >> 24) & 0xFFFF00 | BYTE6(v33));
    v35 = v58;
    sub_1004A5324();

    v67[0] = v69[0];
    v67[1] = v69[1];
    v68[0] = v70[0];
    *(v68 + 9) = *(v70 + 9);
    sub_1002F14A8(v67);
    v36 = *v18;
    v37 = v18[1];
    v38 = *(v18 + 4) | (*(v18 + 10) << 32) | (*(v18 + 22) << 48);
    v39 = v54 | qword_1004F3DB0[v29];

    CommandEncodeBuffer.init(buffer:options:encodedAtLeastOneCatenateElement:loggingMode:)(v40, v37, v38, v39 | 1, 0, v56, v65);
    v41 = v57;
    swift_storeEnumTagMultiPayload();
    CommandEncodeBuffer.writeCommandStream(_:)(v41);
    sub_1002F2634(v41, type metadata accessor for CommandStreamPart);
    v42 = EncodeBuffer.nextChunk()();
    v44 = v43;
    swift_beginAccess();
    v45 = *(v42 + 24) + ((v44 >> 24) & 0xFFFF00 | BYTE6(v44));
    v46 = v59;
    sub_1004A5324();

    v63[0] = v65[0];
    v63[1] = v65[1];
    v64[0] = v66[0];
    *(v64 + 9) = *(v66 + 9);
    sub_1002F14A8(v63);
    v48 = v60;
    v47 = v61;
    (*(v13 + 16))(v61, v35, v60);
    sub_10000C9C0(&qword_1005D7D28, &qword_1004F2E88);
    v49 = *(v13 + 72);
    v50 = (*(v13 + 80) + 32) & ~*(v13 + 80);
    v51 = swift_allocObject();
    *(v51 + 16) = xmmword_1004CEAA0;
    (*(v13 + 32))(v51 + v50, v46, v48);
    (*(v13 + 8))(v35, v48);
    result = type metadata accessor for ClientCommand.Encoded();
    *(v47 + *(result + 20)) = v51;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1002EF988(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for CommandStreamPart();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5 - 8);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1002F1B84(a2 & 0xFFFFFFFF000000FFLL, a3);
  v11 = *(v10 + 16);
  if (v11)
  {
    v12 = v10 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
    v13 = *(v6 + 72);
    do
    {
      sub_1002F26FC(v12, v9, type metadata accessor for CommandStreamPart);
      CommandEncodeBuffer.writeCommandStream(_:)(v9);
      sub_1002F2634(v9, type metadata accessor for CommandStreamPart);
      v12 += v13;
      --v11;
    }

    while (v11);
  }
}

uint64_t sub_1002EFAE8@<X0>(void (*a1)(__int128 *)@<X0>, unint64_t a2@<X1>, unsigned int a3@<W2>, void (*a4)(__int128 *)@<X8>)
{
  v4 = a3;
  v37 = a2;
  v38 = a1;
  v6 = HIWORD(a3) & 1;
  v7 = sub_1004A5384();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = ByteBufferAllocator.zeroCapacityWithDefaultAllocator.unsafeMutableAddressor();
  v13 = v12[1];
  v14 = qword_1004F3DE0[v4];
  v15 = qword_1004F3DF8[v4];
  v16 = *(v12 + 4) | (*(v12 + 10) << 32) | (*(v12 + 22) << 48);
  v17 = 0x100000001;
  if ((v4 & 0x100) == 0)
  {
    v17 = 1;
  }

  v18 = v17 | qword_1004F3DC8[v4];
  v19 = v14 | v15;
  v20 = *v12;

  CommandEncodeBuffer.init(buffer:options:encodedAtLeastOneCatenateElement:loggingMode:)(v21, v13, v16, v18 | v19, 0, v6, &v42);
  v38(&v42);
  v22 = EncodeBuffer.nextChunk()();
  v24 = v23;
  swift_beginAccess();
  v25 = *(v22 + 24) + ((v24 >> 24) & 0xFFFF00 | BYTE6(v24));
  sub_1004A5324();
  v26 = *(type metadata accessor for ClientCommand.Encoded() + 20);
  v38 = a4;
  *(a4 + v26) = _swiftEmptyArrayStorage;
  if ((v24 & 0x100000000000000) != 0)
  {
    v27 = v26;
    v37 = v22;
    v28 = _swiftEmptyArrayStorage;
    do
    {
      v29 = EncodeBuffer.nextChunk()();
      v31 = v30;
      swift_beginAccess();
      v32 = *(v29 + 24) + ((v31 >> 24) & 0xFFFF00 | BYTE6(v31));
      sub_1004A5324();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v28 = sub_1002FAB68(0, v28[2] + 1, 1, v28);
      }

      v34 = v28[2];
      v33 = v28[3];
      if (v34 >= v33 >> 1)
      {
        v28 = sub_1002FAB68(v33 > 1, v34 + 1, 1, v28);
      }

      v28[2] = v34 + 1;
      (*(v8 + 32))(v28 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v34, v11, v7);
    }

    while ((v31 & 0x100000000000000) != 0);
    *(v38 + v27) = v28;
    v39 = v42;
    v40 = v43;
    v41[0] = v44[0];
    *(v41 + 9) = *(v44 + 9);
    sub_1002F14A8(&v39);
  }

  else
  {
    v39 = v42;
    v40 = v43;
    v41[0] = v44[0];
    *(v41 + 9) = *(v44 + 9);
    sub_1002F14A8(&v39);
  }
}

uint64_t sub_1002EFE34()
{
  result = Capability.init(_:)(0xD000000000000011, 0x80000001004AC290);
  static Capability.applePushService = result;
  *algn_1005DE198 = v1;
  qword_1005DE1A0 = v2;
  byte_1005DE1A8 = v3 & 1;
  return result;
}

uint64_t *Capability.applePushService.unsafeMutableAddressor()
{
  if (qword_1005D7D08 != -1)
  {
    swift_once();
  }

  return &static Capability.applePushService;
}

uint64_t static Capability.applePushService.getter()
{
  if (qword_1005D7D08 != -1)
  {
    swift_once();
  }

  v0 = static Capability.applePushService;

  return v0;
}

uint64_t sub_1002EFF4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v8 = &v92[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v10 = &v92[-v9];
  v11 = type metadata accessor for ClientCommand(0);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11);
  v14 = &v92[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1002F26FC(a1, v14, type metadata accessor for ClientCommand);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v53 = *(v14 + 2);
      v54 = *(v14 + 3);
      *a2 = *v14;
      *(a2 + 16) = v53;
      *(a2 + 24) = v54;
      v18 = type metadata accessor for Command();
      goto LABEL_41;
    case 2u:
      *a2 = *v14;
      v18 = type metadata accessor for Command();
      goto LABEL_41;
    case 3u:
      v43 = *v14;
      v44 = *(v14 + 2);
      v45 = sub_1002EF11C(*(v14 + 2));

      *a2 = v43;
      *(a2 + 8) = v44;
      *(a2 + 16) = v45;
      v18 = type metadata accessor for Command();
      goto LABEL_41;
    case 4u:
    case 5u:
      v30 = *(v14 + 2);
      *a2 = *v14;
      *(a2 + 8) = v30;
      *(a2 + 16) = _swiftEmptyArrayStorage;
      v18 = type metadata accessor for Command();
      goto LABEL_41;
    case 6u:
      v61 = *(v14 + 2);
      *a2 = *v14;
      *(a2 + 8) = v61;
      v18 = type metadata accessor for Command();
      goto LABEL_41;
    case 7u:
      v46 = *v14;
      v47 = *(v14 + 2);
      v48 = *(v14 + 2);
      v49 = *(v14 + 6);
      v50 = sub_1002FB418(_swiftEmptyArrayStorage);
      *a2 = v46;
      *(a2 + 8) = v47;
      *(a2 + 16) = v48;
      *(a2 + 24) = v49;
      *(a2 + 32) = v50;
      *(a2 + 40) = v51;
      *(a2 + 48) = v52;
      v18 = type metadata accessor for Command();
      goto LABEL_41;
    case 8u:
      v70 = *v14;
      v71 = *(v14 + 2);
      v72 = *(v14 + 4);
      if (*v14)
      {
        v73 = *(v14 + 2);
      }

      else
      {
        v82 = ByteBufferAllocator.buffer(string:)(0, 0xE000000000000000, j__malloc, j__realloc, sub_100127C74, sub_100127C84);
        v70 = MailboxName.init(_:)(v82, v84, v83 & 0xFFFFFFFFFFFFFFLL);
        v73 = v85;
      }

      if (!v71)
      {
        v71 = _swiftEmptyArrayStorage;
      }

      sub_1002F1A1C(v71);
      v87 = v86;
      v89 = v88;
      v91 = v90;

      LOBYTE(v93[0]) = 0;
      *a2 = 0u;
      *(a2 + 16) = 0u;
      *(a2 + 32) = 0u;
      *(a2 + 48) = 0u;
      *(a2 + 64) = 0;
      *(a2 + 72) = v70;
      *(a2 + 80) = v73;
      *(a2 + 88) = v87;
      *(a2 + 96) = v89;
      *(a2 + 110) = BYTE6(v91);
      *(a2 + 108) = WORD2(v91);
      *(a2 + 104) = v91;
      *(a2 + 111) = 0;
      *(a2 + 112) = v72;
      v18 = type metadata accessor for Command();
      goto LABEL_41;
    case 9u:
      v36 = *(v14 + 2);
      v37 = *(v14 + 2);
      *a2 = *v14;
      *(a2 + 8) = v36;
      *(a2 + 16) = v37;
      v18 = type metadata accessor for Command();
      goto LABEL_41;
    case 0xAu:
      v65 = *v14;

      v66 = *(v14 + 2);

      v67 = sub_10000C9C0(&qword_1005D0F18, &unk_1004E53C0);
      v68 = *(v67 + 64);
      sub_100014D40(*&v14[*(v67 + 80)], *&v14[*(v67 + 80) + 8]);
      v69 = type metadata accessor for Command();
      (*(*(v69 - 8) + 56))(a2, 1, 1, v69);
      return sub_100025F40(&v14[v68], &qword_1005D0F20, &qword_1004E9390);
    case 0xBu:
      *a2 = *v14;
      *(a2 + 8) = xmmword_1004F3D20;
      *(a2 + 24) = _swiftEmptyArrayStorage;
      goto LABEL_26;
    case 0xCu:
      v32 = *v14;
      v31 = *(v14 + 1);
      if (!*(v31 + 16))
      {

        sub_10000C9C0(&qword_1005CD1D8, &qword_1004CEC50);
        v33 = *(type metadata accessor for SearchReturnOption() - 8);
        v34 = *(v33 + 72);
        v35 = (*(v33 + 80) + 32) & ~*(v33 + 80);
        v31 = swift_allocObject();
        *(v31 + 16) = xmmword_1004CEAA0;
        swift_storeEnumTagMultiPayload();
      }

      *a2 = v32;
      *(a2 + 8) = xmmword_1004F3D20;
      *(a2 + 24) = v31;
      goto LABEL_26;
    case 0xDu:
      *a2 = *v14;
      *(a2 + 8) = xmmword_1004F3D20;
      *(a2 + 24) = _swiftEmptyArrayStorage;
      goto LABEL_26;
    case 0xEu:
      v26 = *v14;
      v25 = *(v14 + 1);
      if (!*(v25 + 16))
      {

        sub_10000C9C0(&qword_1005CD1D8, &qword_1004CEC50);
        v27 = *(type metadata accessor for SearchReturnOption() - 8);
        v28 = *(v27 + 72);
        v29 = (*(v27 + 80) + 32) & ~*(v27 + 80);
        v25 = swift_allocObject();
        *(v25 + 16) = xmmword_1004CEAA0;
        swift_storeEnumTagMultiPayload();
      }

      *a2 = v26;
      *(a2 + 8) = xmmword_1004F3D20;
      *(a2 + 24) = v25;
      goto LABEL_26;
    case 0xFu:
      v38 = &v14[*(sub_10000C9C0(&qword_1005CD558, &unk_1004CF330) + 48)];
      v39 = *v38;
      v40 = *(v38 + 1);
      v41 = v38[16];
      sub_100025FDC(v14, v10, &unk_1005D91B0, &unk_1004CF400);
      if (v41)
      {
        v42 = _swiftEmptyArrayStorage;
      }

      else
      {
        sub_10000C9C0(&qword_1005D81B8, &unk_1004F3D90);
        v79 = *(type metadata accessor for FetchModifier() - 8);
        v80 = *(v79 + 72);
        v81 = (*(v79 + 80) + 32) & ~*(v79 + 80);
        v42 = swift_allocObject();
        *(v42 + 1) = xmmword_1004CEAA0;
        *(v42 + v81) = v40;
        swift_storeEnumTagMultiPayload();
      }

      static Command.uidFetch(messages:attributes:modifiers:)(v10, v39, v42, a2);

      return sub_100025F40(v10, &unk_1005D91B0, &unk_1004CF400);
    case 0x10u:
      v19 = &v14[*(sub_10000C9C0(&qword_1005D0488, &qword_1004DA4C0) + 48)];
      v20 = *v19;
      v21 = v19[1];
      v22 = *(v19 + 1);
      sub_100025FDC(v14, v8, &unk_1005D91B0, &unk_1004CF400);
      v23 = 256;
      if (!v21)
      {
        v23 = 0;
      }

      static Command.uidStore(messages:modifiers:data:)(v8, _swiftEmptyArrayStorage, v23 | v20, v22, a2);

      return sub_100025F40(v8, &unk_1005D91B0, &unk_1004CF400);
    case 0x11u:
      v55 = &v14[*(sub_10000C9C0(&qword_1005D0480, &qword_1004D3D00) + 48)];
      v56 = *v55;
      v57 = *(v55 + 2);
      sub_100025FDC(v14, v8, &unk_1005D91B0, &unk_1004CF400);
      static Command.uidCopy(messages:mailbox:)(v8, v56, v57, a2);
      goto LABEL_29;
    case 0x12u:
      v62 = &v14[*(sub_10000C9C0(&qword_1005D0480, &qword_1004D3D00) + 48)];
      v63 = *v62;
      v64 = *(v62 + 2);
      sub_100025FDC(v14, v8, &unk_1005D91B0, &unk_1004CF400);
      static Command.uidMove(messages:mailbox:)(v8, v63, v64, a2);
LABEL_29:

      return sub_100025F40(v8, &unk_1005D91B0, &unk_1004CF400);
    case 0x13u:
      v74 = *(v14 + 2);
      v75 = v14[24];
      *a2 = *v14;
      *(a2 + 16) = v74;
      *(a2 + 24) = v75;
      v18 = type metadata accessor for Command();
      goto LABEL_41;
    case 0x14u:
      *a2 = *v14;
      *(a2 + 8) = *(v14 + 8);
      v18 = type metadata accessor for Command();
      goto LABEL_41;
    case 0x15u:
      v58 = *(v14 + 1);
      v93[0] = *v14;
      v93[1] = v58;
      v59 = *(v14 + 3);
      v93[2] = *(v14 + 2);
      v93[3] = v59;
      v60 = sub_1002F0B80();
      sub_10021D02C(v93);
      *a2 = 0xD000000000000011;
      *(a2 + 8) = 0x80000001004AC290;
      *(a2 + 16) = v60;
      v18 = type metadata accessor for Command();
      goto LABEL_41;
    case 0x16u:
    case 0x17u:
    case 0x18u:
    case 0x19u:
    case 0x1Au:
    case 0x1Bu:
    case 0x1Cu:
LABEL_26:
      v18 = type metadata accessor for Command();
      goto LABEL_41;
    case 0x1Du:
      v76 = Capability.CompressionKind.deflate.unsafeMutableAddressor();
      v77 = *(v76 + 1);
      *a2 = *v76;
      *(a2 + 8) = v77;
      v78 = type metadata accessor for Command();
      swift_storeEnumTagMultiPayload();
      (*(*(v78 - 8) + 56))(a2, 0, 1, v78);

    default:
      v15 = *(v14 + 1);
      v16 = *(v14 + 8);
      v17 = *(v14 + 18);
      *a2 = *v14;
      *(a2 + 8) = v15;
      *(a2 + 16) = *(v14 + 1);
      *(a2 + 32) = v16;
      *(a2 + 36) = v17;
      *(a2 + 38) = v14[38];
      v18 = type metadata accessor for Command();
LABEL_41:
      swift_storeEnumTagMultiPayload();
      return (*(*(v18 - 8) + 56))(a2, 0, 1, v18);
  }
}

uint64_t *sub_1002F0B80()
{
  v1 = v0;
  sub_1004A6724(80);
  v78._countAndFlagsBits = 0x737265762D737061;
  v78._object = 0xEC000000206E6F69;
  sub_1004A5994(v78);
  LODWORD(v73) = *v0;
  v79._countAndFlagsBits = sub_1004A6CE4();
  sub_1004A5994(v79);

  v80._object = 0x80000001004AE400;
  v80._countAndFlagsBits = 0xD000000000000010;
  sub_1004A5994(v80);
  v2 = *(v0 + 16);
  v81._countAndFlagsBits = sub_1002F1250(*(v0 + 8));
  sub_1004A5994(v81);

  v82._countAndFlagsBits = 0xD000000000000012;
  v82._object = 0x80000001004AE420;
  sub_1004A5994(v82);
  v3 = *(v0 + 32);
  v83._countAndFlagsBits = sub_1002F1250(*(v0 + 24));
  sub_1004A5994(v83);

  v84._countAndFlagsBits = 0x6275732D73706120;
  v84._object = 0xEE00206369706F74;
  sub_1004A5994(v84);
  v4 = *(v0 + 48);
  v85._countAndFlagsBits = sub_1002F1250(*(v0 + 40));
  sub_1004A5994(v85);

  v86._countAndFlagsBits = 0x786F626C69616D20;
  v86._object = 0xEC00000028207365;
  sub_1004A5994(v86);
  v5 = ByteBufferAllocator.buffer(string:)(0, 0xE000000000000000, j__malloc, j__realloc, sub_100127C74, sub_100127C84);
  v7 = v6;
  v9 = v8;

  v10 = sub_1002FABB8(0, 1, 1, _swiftEmptyArrayStorage);
  v12 = *(v10 + 2);
  v11 = *(v10 + 3);
  v13 = v12 + 1;
  if (v12 >= v11 >> 1)
  {
LABEL_44:
    v10 = sub_1002FABB8((v11 > 1), v13, 1, v10);
  }

  *(v10 + 2) = v13;
  v14 = &v10[24 * v12];
  *(v14 + 4) = v5 | 0x8000000000000000;
  *(v14 + 5) = v7;
  v14[54] = BYTE6(v9);
  *(v14 + 26) = WORD2(v9);
  *(v14 + 12) = v9;
  v15 = *(v1 + 56);
  v16 = *(v15 + 16);
  if (!v16)
  {
LABEL_37:
    v57 = v10;
    v58 = ByteBufferAllocator.buffer(string:)(41, 0xE100000000000000, j__malloc, j__realloc, sub_100127C74, sub_100127C84);
    v61 = v57;
    v62 = *(v57 + 2);
    v63 = *(v61 + 3);
    if (v62 >= v63 >> 1)
    {
      v65 = v58;
      v66 = v59;
      v67 = v60;
      v68 = sub_1002FABB8((v63 > 1), v62 + 1, 1, v61);
      v59 = v66;
      v60 = v67;
      v61 = v68;
      v58 = v65;
    }

    *(v61 + 2) = v62 + 1;
    v64 = &v61[24 * v62];
    *(v64 + 4) = v58 | 0x8000000000000000;
    *(v64 + 5) = v59;
    *(v64 + 12) = v60;
    v64[54] = BYTE6(v60);
    *(v64 + 26) = WORD2(v60);
    return v61;
  }

  v17 = 0;
  v1 = 0;
  v69 = v15 + 32;
  while (1)
  {
    v71 = v16;
    v72 = v10;
    v7 = *(v69 + v17);
    if (!v17)
    {

      v35 = *(v7 + 16);
      if (!v35)
      {
        goto LABEL_17;
      }

      goto LABEL_12;
    }

    result = malloc(1uLL);
    if (!result)
    {
      break;
    }

    v9 = result;
    type metadata accessor for ByteBuffer._Storage();
    v19 = swift_allocObject();
    *(v19 + 16) = 1;
    *(v19 + 24) = v9;
    *(v19 + 32) = j__malloc;
    *(v19 + 40) = j__realloc;
    *(v19 + 48) = sub_100127C74;
    *(v19 + 56) = sub_100127C84;
    v73 = v19;
    v74 = 0;
    v75 = 1;
    v76 = 0;
    v77 = 0;
    v20 = sub_1002F178C(32, 0xE100000000000000, &v73, 0);
    if (v21)
    {
      v9 = &v73;
      v22._countAndFlagsBits = 32;
      v22._object = 0xE100000000000000;
      v20 = ByteBuffer._setStringSlowpath(_:at:)(v22, 0);
    }

    v23 = v72;
    v11 = HIDWORD(v74);
    v24 = (HIDWORD(v74) + v20);
    if (__CFADD__(HIDWORD(v74), v20))
    {
      goto LABEL_43;
    }

    v70 = v1;
    v25 = v17;
    v26 = v7;
    v27 = v73;
    v28 = v74;
    v29 = v75;
    v30 = v76;
    v31 = v77;
    v33 = *(v72 + 2);
    v32 = *(v72 + 3);
    v9 = (v33 + 1);
    if (v33 >= v32 >> 1)
    {
      v23 = sub_1002FABB8((v32 > 1), v33 + 1, 1, v72);
    }

    *(v23 + 2) = v9;
    v72 = v23;
    v34 = &v23[24 * v33];
    *(v34 + 4) = v27 | 0x8000000000000000;
    *(v34 + 5) = v28 | (v24 << 32);
    v34[54] = v31;
    *(v34 + 26) = v30;
    *(v34 + 12) = v29;
    v7 = v26;
    v17 = v25;
    v1 = v70;
    v35 = *(v7 + 16);
    if (!v35)
    {
LABEL_17:
      v42 = ByteBufferAllocator.zeroCapacityWithDefaultAllocator.unsafeMutableAddressor();
      v43 = *v42;
      v44 = *(v42 + 2);
      v5 = *(v42 + 3);
      v41 = *(v42 + 4);
      v45 = *(v42 + 10);
      v46 = *(v42 + 22);

      goto LABEL_21;
    }

LABEL_12:
    if (v35)
    {
      v36 = (v35 - 1) | ((v35 - 1) >> 1) | (((v35 - 1) | ((v35 - 1) >> 1)) >> 2);
      v37 = v36 | (v36 >> 4) | ((v36 | (v36 >> 4)) >> 8);
      v38 = v37 | HIWORD(v37);
      v39 = __CFADD__(v38, 1);
      v40 = v38 + 1;
      if (v39)
      {
        v41 = -1;
      }

      else
      {
        v41 = v40;
      }
    }

    else
    {
      v41 = 0;
    }

    result = malloc(v41);
    if (!result)
    {
      goto LABEL_46;
    }

    v9 = result;
    type metadata accessor for ByteBuffer._Storage();
    v47 = swift_allocObject();
    v44 = 0;
    v5 = 0;
    v45 = 0;
    v46 = 0;
    *(v47 + 16) = v41;
    *(v47 + 24) = v9;
    *(v47 + 32) = j__malloc;
    *(v47 + 40) = j__realloc;
    *(v47 + 48) = sub_100127C74;
    *(v47 + 56) = sub_100127C84;
LABEL_21:
    v73 = v47;
    v74 = __PAIR64__(v5, v44);
    v75 = v41;
    v76 = v45;
    v77 = v46;
    v13 = *(v7 + 16);
    v12 = (v5 + v13);
    if (__CFADD__(v5, v13))
    {
      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
LABEL_43:
      __break(1u);
      goto LABEL_44;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      if (v12 >= v41)
      {
        v48 = v12 - v41;
      }

      else
      {
        v48 = 0;
      }

      v49 = variable initialization expression of Engine.isProcessingUpdates();
      v9 = &v73;
      ByteBuffer._copyStorageAndRebase(extraCapacity:resetIndices:)(v48, v49 & 1);
    }

    v11 = HIDWORD(v13);
    if (HIDWORD(v13))
    {
      goto LABEL_41;
    }

    v9 = &v73;
    ByteBuffer._ensureAvailableCapacity(_:at:)(v13, v5);
    v12 = v73;
    v50 = v75;
    v51 = v76;
    v52 = v77;
    swift_beginAccess();
    v53 = v52 | (v51 << 8);
    LODWORD(v54) = v50 - v53;
    if (v50 - v53 >= v5)
    {
      LODWORD(v54) = v5;
    }

    if (v5)
    {
      v54 = v54;
    }

    else
    {
      v54 = 0;
    }

    memmove((*(v12 + 24) + v53 + v54), (v7 + 32), v13);

    v11 = HIDWORD(v74);
    v7 = (HIDWORD(v74) + v13);
    if (__CFADD__(HIDWORD(v74), v13))
    {
      goto LABEL_42;
    }

    v13 = v74;
    v10 = v72;
    v5 = *(v72 + 2);
    v55 = *(v72 + 3);
    v9 = (v5 + 1);
    if (v5 >= v55 >> 1)
    {
      v10 = sub_1002FABB8((v55 > 1), v5 + 1, 1, v72);
    }

    *(v10 + 2) = v9;
    v56 = &v10[24 * v5];
    *(v56 + 4) = v12;
    *(v56 + 5) = v13 | (v7 << 32);
    v56[54] = v52;
    *(v56 + 26) = v51;
    *(v56 + 12) = v50;
    v17 += 16;
    v16 = v71 - 1;
    if (v71 == 1)
    {
      goto LABEL_37;
    }
  }

  __break(1u);
LABEL_46:
  __break(1u);
  return result;
}

uint64_t sub_1002F1250(uint64_t a1)
{

  while (1)
  {
    v2 = sub_1004A59D4();
    if (!v3)
    {

      return a1;
    }

    v4 = v2;
    v5 = v3;
    if (v2 == 2573 && v3 == 0xE200000000000000)
    {
      goto LABEL_30;
    }

    result = sub_1004A6D34();
    if (result)
    {
      goto LABEL_30;
    }

    v7 = (v5 & 0x2000000000000000) != 0 ? HIBYTE(v5) & 0xF : v4 & 0xFFFFFFFFFFFFLL;
    if (!v7)
    {
      break;
    }

    if ((v5 & 0x1000000000000000) != 0)
    {
      v12 = sub_1004A5884();
    }

    else
    {
      if ((v5 & 0x2000000000000000) != 0)
      {
        v9 = v4;
      }

      else
      {
        if ((v4 & 0x1000000000000000) != 0)
        {
          v8 = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
        }

        else
        {
          v8 = sub_1004A67E4();
        }

        v9 = *v8;
      }

      v10 = v9;
      v11 = (__clz(~v9) - 24) << 16;
      if (v10 < 0)
      {
        v12 = v11;
      }

      else
      {
        v12 = 65541;
      }
    }

    if (v12 >> 14 != 4 * v7)
    {
      goto LABEL_30;
    }

    result = sub_1001E11BC(v4, v5);
    if ((result & 0x100000000) != 0)
    {
      goto LABEL_35;
    }

    if ((result & 0xFFFFFF80) != 0)
    {
LABEL_30:

LABEL_31:

      return 120;
    }

    result = sub_1001E11BC(v4, v5);
    if ((result & 0x100000000) != 0)
    {
      goto LABEL_36;
    }

    v13 = result;

    if ((v13 & 0xFFFFFF00) != 0)
    {
      goto LABEL_34;
    }

    if (v13 - 47 <= 0xFFFFFFFD && v13 - 58 <= 0xFFFFFFF5 && (v13 & 0xDFu) - 91 < 0xFFFFFFE6)
    {
      goto LABEL_31;
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
  return result;
}

unint64_t sub_1002F1444()
{
  result = qword_1005D81A8;
  if (!qword_1005D81A8)
  {
    sub_10000DEFC(&unk_1005D8FF0, &unk_1004DC230);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D81A8);
  }

  return result;
}

void *sub_1002F14FC(uint64_t a1, uint64_t a2)
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
    return _swiftEmptyArrayStorage;
  }

  sub_10000C9C0(&qword_1005D81C0, &unk_1004F3DA0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v7 = ((v5 - 32) * 0x2AAAAAAAAAAAAAABLL) >> 64;
  v4[2] = a1;
  v4[3] = 2 * ((v7 >> 2) + (v7 >> 63));
  return result;
}

Swift::Int sub_1002F158C(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1002F1A08(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_1002F1694(v5);
  *a1 = v2;
  return result;
}

void sub_1002F15F8(uint64_t a1, Swift::UInt32 a2)
{
  v3 = *(a1 + 16);
  v4 = a2 + v3;
  if (__CFADD__(a2, v3))
  {
    __break(1u);
  }

  else
  {
    v7 = *v2;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = *(v2 + 4);
      v9 = v4 >= v8;
      v10 = v4 - v8;
      if (v9)
      {
        v11 = v10;
      }

      else
      {
        v11 = 0;
      }

      v12 = variable initialization expression of Engine.isProcessingUpdates();
      ByteBuffer._copyStorageAndRebase(extraCapacity:resetIndices:)(v11, v12 & 1);
    }

    if (!HIDWORD(v3))
    {
      ByteBuffer._ensureAvailableCapacity(_:at:)(v3, a2);
      ByteBuffer._setBytesAssumingUniqueBufferAccess(_:at:)((a1 + 32), a1 + 32 + v3, a2);
      return;
    }
  }

  __break(1u);
}

Swift::Int sub_1002F1694(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1004A6CC4(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = _swiftEmptyArrayStorage;
      }

      else
      {
        v5 = sub_1004A5C64();
        v5[2] = v2 / 2;
      }

      v7[0] = v5 + 4;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_10020E050(v7, v8, a1, v4);
      v6[2] = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_10020DF80(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1002F178C(uint64_t result, unint64_t a2, uint64_t *a3, Swift::UInt32 a4)
{
  v4 = HIBYTE(a2);
  if ((a2 & 0x1000000000000000) != 0)
  {
    return 0;
  }

  v7 = result;
  if ((a2 & 0x2000000000000000) == 0)
  {
    if ((result & 0x1000000000000000) != 0)
    {
      v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v9 = v7 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      v8 = sub_1004A67E4();
    }

    if (v8)
    {
      v10 = v8 + v9;
    }

    else
    {
      v10 = 0;
    }

    ByteBuffer._setBytes(_:at:)(v8, v10, a4);
    return v11;
  }

  v12 = HIBYTE(a2) & 0xF;
  v20[0] = result;
  v20[1] = a2 & 0xFFFFFFFFFFFFFFLL;
  v13 = a4 + v12;
  if (!__CFADD__(a4, v12))
  {
    v14 = *a3;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v15 = *(a3 + 4);
      v16 = v13 >= v15;
      v17 = v13 - v15;
      if (v16)
      {
        v18 = v17;
      }

      else
      {
        v18 = 0;
      }

      v19 = variable initialization expression of Engine.isProcessingUpdates();
      ByteBuffer._copyStorageAndRebase(extraCapacity:resetIndices:)(v18, v19 & 1);
    }

    ByteBuffer._ensureAvailableCapacity(_:at:)(v4 & 0xF, a4);
    ByteBuffer._setBytesAssumingUniqueBufferAccess(_:at:)(v20, v20 + v12, a4);
    return v12;
  }

  __break(1u);
  return result;
}

void *sub_1002F1890(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = *(a4 + 48) + 24 * (v17 | (v12 << 6));
      v19 = *(v18 + 16);
      v20 = *(v18 + 20);
      v21 = *(v18 + 22);
      v22 = *(v18 + 8);
      *v11 = *v18;
      *(v11 + 8) = v22;
      *(v11 + 16) = v19;
      *(v11 + 20) = v20;
      *(v11 + 22) = v21;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 24;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v24 = v12 + 1;
    }

    else
    {
      v24 = (63 - v7) >> 6;
    }

    v12 = v24 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void sub_1002F1A1C(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    if (v2)
    {
      v3 = (v2 - 1) | ((v2 - 1) >> 1) | (((v2 - 1) | ((v2 - 1) >> 1)) >> 2);
      v4 = v3 | (v3 >> 4) | ((v3 | (v3 >> 4)) >> 8);
      v5 = v4 | HIWORD(v4);
      v6 = __CFADD__(v5, 1);
      v7 = v5 + 1;
      if (v6)
      {
        v8 = -1;
      }

      else
      {
        v8 = v7;
      }
    }

    else
    {
      v8 = 0;
    }

    v16 = malloc(v8);
    if (!v16)
    {
      goto LABEL_13;
    }

    v17 = v16;
    type metadata accessor for ByteBuffer._Storage();
    v18 = swift_allocObject();
    v11 = 0;
    *(v18 + 16) = v8;
    *(v18 + 24) = v17;
    *(v18 + 32) = j__malloc;
    *(v18 + 40) = j__realloc;
    *(v18 + 48) = sub_100127C74;
    *(v18 + 56) = sub_100127C84;
  }

  else
  {
    v9 = ByteBufferAllocator.zeroCapacityWithDefaultAllocator.unsafeMutableAddressor();
    v10 = *v9;
    v12 = *(v9 + 2);
    v11 = *(v9 + 3);
    v13 = *(v9 + 4);
    v14 = *(v9 + 10);
    v15 = *(v9 + 22);
  }

  sub_1002F15F8(a1, v11);
  if (__CFADD__(v11, v19))
  {
    __break(1u);
LABEL_13:
    __break(1u);
  }
}

uint64_t sub_1002F1B84(uint64_t a1, uint64_t a2)
{
  v94 = a1;
  v93 = type metadata accessor for CommandStreamPart();
  v3 = *(v93 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v93);
  v6 = (v81 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_1004A44E4();
  v90 = *(v7 - 8);
  v91 = v7;
  v8 = *(v90 + 64);
  v9 = __chkstk_darwin(v7);
  v85 = v81 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v86 = v81 - v11;
  v92 = type metadata accessor for ClientCommand(0);
  v12 = *(*(v92 - 8) + 64);
  __chkstk_darwin(v92);
  v14 = v81 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10000C9C0(&qword_1005D0F20, &qword_1004E9390);
  v16 = *(*(v15 - 8) + 64);
  v17 = __chkstk_darwin(v15 - 8);
  v89 = v81 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v95 = v81 - v19;
  v20 = sub_1004A57F4();
  v21 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20 - 8);
  v23 = v81 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_10000C9C0(&qword_1005D81B0, &unk_1004F3D70);
  v25 = *(*(v24 - 8) + 64);
  __chkstk_darwin(v24 - 8);
  v27 = v81 - v26;
  v28 = type metadata accessor for Command();
  v29 = *(v28 - 8);
  v30 = *(v29 + 64);
  __chkstk_darwin(v28);
  v32 = (v81 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1002EFF4C(a2, v27);
  if ((*(v29 + 48))(v27, 1, v28) != 1)
  {
LABEL_6:
    sub_1002F2694(v27, v32, type metadata accessor for Command);
    sub_10000C9C0(&qword_1005D7F30, &unk_1004F3D80);
    v41 = *(v3 + 72);
    v42 = (*(v3 + 80) + 32) & ~*(v3 + 80);
    v43 = swift_allocObject();
    *(v43 + 16) = xmmword_1004CEAA0;
    *&v97 = sub_100304E50(v94 & 0xFFFFFFFF000000FFLL);
    sub_1004A57D4();
    sub_10000C9C0(&unk_1005D8FF0, &unk_1004DC230);
    sub_1002F1444();
    v44 = sub_1004A5794();
    v46 = v45;

    if (v46)
    {
      v47 = (v43 + v42);
      v48 = type metadata accessor for TaggedCommand();
      sub_1002F26FC(v32, v43 + v42 + *(v48 + 20), type metadata accessor for Command);
      *v47 = v44;
      v47[1] = v46;
      swift_storeEnumTagMultiPayload();
      sub_1002F2634(v32, type metadata accessor for Command);
      return v43;
    }

    goto LABEL_31;
  }

  v84 = v23;
  sub_100025F40(v27, &qword_1005D81B0, &unk_1004F3D70);
  sub_1002F26FC(a2, v14, type metadata accessor for ClientCommand);
  if (swift_getEnumCaseMultiPayload() == 10)
  {
    v33 = *(v14 + 2);
    v82 = *v14;
    v83 = v33;
    v34 = *(v14 + 2);
    v35 = sub_10000C9C0(&qword_1005D0F18, &unk_1004E53C0);
    v36 = *(v35 + 64);
    v37 = &v14[*(v35 + 80)];
    v39 = *v37;
    v38 = v37[1];
    v92 = v39;
    v88 = v38;
    sub_100025FDC(&v14[v36], v95, &qword_1005D0F20, &qword_1004E9390);
    v40 = *(v34 + 16);
    if (v40)
    {
      v27 = sub_100135390(*(v34 + 16), 0);
      v32 = sub_100139548(&v97, v27 + 4, v40, v34);
      v87 = *(&v98 + 1);
      v14 = v98;
      v81[1] = *&v99[0];

      sub_100020D08();
      if (v32 != v40)
      {
        __break(1u);
        goto LABEL_6;
      }
    }

    else
    {
      v27 = _swiftEmptyArrayStorage;
    }

    *&v97 = v27;
    sub_1002F158C(&v97);
    v49 = v89;

    v87 = v97;
    sub_100252E5C(v95, v49);
    v51 = v90;
    v50 = v91;
    v14 = (*(v90 + 48))(v49, 1, v91);
    v52 = v88;
    if (v14 == 1)
    {
      v53 = 0;
    }

    else
    {
      v54 = v86;
      (*(v51 + 32))(v86, v49, v50);
      v55 = v85;
      (*(v51 + 16))(v85, v54, v50);
      ServerMessageDate.init(_:)(v55);
      v53 = v56;
      (*(v51 + 8))(v54, v50);
    }

    v57 = sub_1002FB760(_swiftEmptyArrayStorage);
    v90 = v58;
    v91 = v57;
    v89 = v59;
    v60 = v52 >> 62;
    if ((v52 >> 62) > 1)
    {
      if (v60 != 2)
      {
        v61 = 0;
        goto LABEL_22;
      }

      v63 = *(v92 + 16);
      v62 = *(v92 + 24);
      v61 = v62 - v63;
      if (!__OFSUB__(v62, v63))
      {
LABEL_22:
        *&v97 = sub_100304E50(v94 & 0xFFFFFFFF000000FFLL);
        sub_1004A57D4();
        sub_10000C9C0(&unk_1005D8FF0, &unk_1004DC230);
        sub_1002F1444();
        v64 = sub_1004A5794();
        v66 = v65;

        if (v66)
        {
          v102 = v64;
          v103[0] = v66;
          v103[1] = v82;
          v103[2] = v83;
          v104 = 0;
          v103[3] = 0;
          v103[4] = 0;
          LOBYTE(v97) = v14 == 1;
          v105 = v87;
          v106 = v53;
          v107 = v14 == 1;
          v108 = v91;
          v109 = v90 & 0xFFFFFFFFFFFFFF8;
          v110 = v89 & 0xFFFFFFFFFFFFFF8;
          v111 = v61;
          v67 = 4;
          v112 = 32;

          v68 = v92;
          v69 = v88;
          sub_100014CEC(v92, v88);
          v70 = sub_100190D98(v68, v69, j__malloc, j__realloc, sub_100127C74, sub_100127C84);
          v72 = v71;
          v74 = v73;
          sub_100014D40(v68, v69);
          v113 = v70;
          v114 = v72;
          v116 = 0;
          v117 = 0;
          v115 = v74 & 0xFFFFFFFFFFFFFFLL;
          v118 = 64;
          v119 = 0u;
          v120 = 0u;
          v121 = 0u;
          v122 = 0;
          v123 = -64;
          v124 = 2;
          v125 = 0u;
          v126 = 0u;
          v127 = 0u;
          v128 = -64;
          v100 = _swiftEmptyArrayStorage;
          sub_1002E52FC(0, 5, 0);
          v43 = v100;
          while (1)
          {
            v75 = *&v101[v67 * 8 + 16];
            v97 = *&v101[v67 * 8];
            v98 = v75;
            v99[0] = *&v101[v67 * 8 + 32];
            v76 = v99[0];
            *(v99 + 9) = *(&v103[v67] + 1);
            v77 = *(v99 + 9);
            *v6 = v97;
            v6[1] = v75;
            v6[2] = v76;
            *(v6 + 41) = v77;
            swift_storeEnumTagMultiPayload();
            sub_1002F25D8(&v97, &v96);
            v100 = v43;
            v79 = *(v43 + 16);
            v78 = *(v43 + 24);
            if (v79 >= v78 >> 1)
            {
              sub_1002E52FC(v78 > 1, v79 + 1, 1);
              v43 = v100;
            }

            *(v43 + 16) = v79 + 1;
            sub_1002F2694(v6, v43 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v79, type metadata accessor for CommandStreamPart);
            if (v67 == 36)
            {
              break;
            }

            v67 += 8;
          }

          sub_100025F40(v95, &qword_1005D0F20, &qword_1004E9390);
          swift_arrayDestroy();

          sub_100014D40(v92, v69);
          return v43;
        }

        goto LABEL_32;
      }

      __break(1u);
    }

    else if (!v60)
    {
      v61 = BYTE6(v52);
      goto LABEL_22;
    }

    if (__OFSUB__(HIDWORD(v92), v92))
    {
      __break(1u);
LABEL_31:
      __break(1u);
LABEL_32:
      __break(1u);
      goto LABEL_33;
    }

    v61 = HIDWORD(v92) - v92;
    goto LABEL_22;
  }

LABEL_33:
  sub_1002F2634(v14, type metadata accessor for ClientCommand);
  sub_1004A69A4();
  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_1002F2634(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1002F2694(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1002F26FC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1002F2764(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  v7 = *(v3 + 32);
  v8 = *(v7 + 16);
  if (!v8)
  {
    return 0;
  }

  for (i = (v7 + 48); ; i += 3)
  {
    if (*i && *(i - 2) == a1)
    {
      if (*(i - 1) == a2 && *i == a3)
      {
        break;
      }

      v11 = *(i - 1);
      v12 = *i;
      if (sub_1004A6D34())
      {
        break;
      }
    }

    if (!--v8)
    {
      return 0;
    }
  }

  return a1;
}

uint64_t sub_1002F284C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  swift_beginAccess();
  v8 = *(*(v3 + 32) + 16);
  swift_beginAccess();
  if (v8)
  {
    v3 = sub_100039EE0(v8);
    swift_endAccess();
    swift_beginAccess();
    v8 = *(v4 + 32);
    result = swift_isUniquelyReferenced_nonNull_native();
    *(v4 + 32) = v8;
    if (result)
    {
      if ((v3 & 0x8000000000000000) == 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      __break(1u);
      goto LABEL_9;
    }
  }

  else
  {
    __break(1u);
  }

  result = sub_1002F2A18(v8);
  v8 = result;
  *(v4 + 32) = result;
  if ((v3 & 0x8000000000000000) != 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  if (v3 < v8[2])
  {
    v10 = &v8[3 * v3];
    v11 = v10[6];
    v10[4] = a1;
    v10[5] = a2;
    v10[6] = a3;
    *(v4 + 32) = v8;

    swift_endAccess();
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_1002F2964()
{
  v1 = *(v0 + 32);

  return swift_deallocClassInstance();
}

uint64_t sub_1002F29D0(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  if (a1[1] == a2[1] && a1[2] == a2[2])
  {
    return 1;
  }

  else
  {
    return sub_1004A6D34();
  }
}

uint64_t _s12NIOIMAPCore29MailboxesV23__derived_struct_equalsySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
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
  result = 1;
  while (v3 != v2)
  {
    v6 = (v4 + 16 * v3);
    v7 = a2 + 32 + 16 * v3;
    if ((v6[2] | (v6[2] << 32)) != (*(v7 + 8) | (*(v7 + 8) << 32)))
    {
      return 0;
    }

    v8 = *v6;
    v9 = *v7;
    v10 = *(*v6 + 16);
    if (v10 != *(v9 + 16))
    {
      return 0;
    }

    if (v10)
    {
      v11 = v8 == v9;
    }

    else
    {
      v11 = 1;
    }

    if (!v11)
    {
      v12 = (v8 + 32);
      v13 = (v9 + 32);
      while (v10)
      {
        if (*v12 != *v13)
        {
          return 0;
        }

        ++v12;
        ++v13;
        if (!--v10)
        {
          goto LABEL_5;
        }
      }

      __break(1u);
      break;
    }

LABEL_5:
    if (++v3 == v2)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1002F2B00(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      v7 = 1;
    }

    else
    {
      v3 = (a1 + 32);
      v4 = (a2 + 32);
      do
      {
        v5 = v3[1];
        v10 = *v3;
        v11[0] = v5;
        *(v11 + 13) = *(v3 + 29);
        v6 = v4[1];
        v12 = *v4;
        v13[0] = v6;
        *(v13 + 13) = *(v4 + 29);
        sub_1002E7F14(&v10, v9);
        sub_1002E7F14(&v12, v9);
        v7 = static FetchAttribute.__derived_enum_equals(_:_:)(&v10, &v12);
        sub_1002E7F70(&v12);
        sub_1002E7F70(&v10);
        if ((v7 & 1) == 0)
        {
          break;
        }

        v4 = (v4 + 40);
        v3 = (v3 + 40);
        --v2;
      }

      while (v2);
    }
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

uint64_t sub_1002F2BE0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MessageData.BodyData();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v50 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10000C9C0(&qword_1005CE218, &unk_1004F3FD0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v45 - v10;
  v52 = sub_10000C9C0(&qword_1005D80F8, &qword_1004F3C28);
  v12 = *(*(v52 - 8) + 64);
  __chkstk_darwin(v52);
  v14 = &v45 - v13;
  v51 = type metadata accessor for MessageData.BodySection();
  v15 = *(*(v51 - 8) + 64);
  __chkstk_darwin(v51);
  v17 = &v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v21 = &v45 - v20;
  v22 = *(a1 + 16);
  if (v22 != *(a2 + 16))
  {
    return 0;
  }

  if (v22 && a1 != a2)
  {
    v49 = v4;
    v23 = (*(v19 + 80) + 32) & ~*(v19 + 80);
    v24 = a1 + v23;
    v25 = a2 + v23;
    v26 = (v5 + 48);
    v27 = *(v19 + 72);
    v47 = 0;
    v48 = v27;
    v46 = (v5 + 48);
    while (1)
    {
      sub_1002F3D24(v24, v21, type metadata accessor for MessageData.BodySection);
      sub_1002F3D24(v25, v17, type metadata accessor for MessageData.BodySection);
      if ((static SectionSpecifier.__derived_struct_equals(_:_:)(*v21, *(v21 + 1), v21[16], *v17, *(v17 + 1), v17[16]) & 1) == 0)
      {
LABEL_27:
        sub_1002F3D8C(v17, type metadata accessor for MessageData.BodySection);
        sub_1002F3D8C(v21, type metadata accessor for MessageData.BodySection);
        return 0;
      }

      v30 = v17[24];
      if (v21[24])
      {
        if (!v17[24])
        {
          goto LABEL_27;
        }
      }

      else
      {
        if (*(v21 + 5) != *(v17 + 5))
        {
          v30 = 1;
        }

        if (v30)
        {
          goto LABEL_27;
        }
      }

      v53 = v24;
      v31 = *(v51 + 24);
      v32 = *(v52 + 48);
      sub_1002F3CB4(&v21[v31], v14);
      sub_1002F3CB4(&v17[v31], &v14[v32]);
      v33 = *v26;
      v34 = v14;
      v35 = v14;
      v36 = v49;
      if ((*v26)(v34, 1, v49) == 1)
      {
        break;
      }

      sub_1002F3CB4(v35, v11);
      if (v33((v35 + v32), 1, v36) == 1)
      {
        sub_1002F3D8C(v11, type metadata accessor for MessageData.BodyData);
        v14 = v35;
LABEL_24:
        v43 = &qword_1005D80F8;
        v44 = &qword_1004F3C28;
LABEL_26:
        sub_100025F40(v14, v43, v44);
        goto LABEL_27;
      }

      v37 = v11;
      sub_1002ED74C(v35 + v32, v50);
      v38 = _s13IMAP2Protocol11MessageDataV04BodyD0V5countSivg_0();
      v14 = v35;
      if (v38 != _s13IMAP2Protocol11MessageDataV04BodyD0V5countSivg_0())
      {
        sub_1002F3D8C(v50, type metadata accessor for MessageData.BodyData);
        sub_1002F3D8C(v11, type metadata accessor for MessageData.BodyData);
        v43 = &qword_1005CE218;
        v44 = &unk_1004F3FD0;
        goto LABEL_26;
      }

      sub_1004A5384();
      sub_1001B60F8();
      sub_1004A5E64();
      v39 = sub_1004A5EA4();
      if (v55 == v54)
      {
        sub_1002F3D8C(v50, type metadata accessor for MessageData.BodyData);
        sub_1002F3D8C(v11, type metadata accessor for MessageData.BodyData);
        v26 = v46;
        v29 = v53;
LABEL_6:
        sub_100025F40(v14, &qword_1005CE218, &unk_1004F3FD0);
        sub_1002F3D8C(v17, type metadata accessor for MessageData.BodySection);
        sub_1002F3D8C(v21, type metadata accessor for MessageData.BodySection);
        goto LABEL_7;
      }

      __chkstk_darwin(v39);
      v40 = v50;
      *(&v45 - 2) = v50;
      *(&v45 - 1) = v37;
      v41 = v47;
      sub_1004A5314();
      v47 = v41;
      LOBYTE(v41) = v55;
      sub_1002F3D8C(v40, type metadata accessor for MessageData.BodyData);
      sub_1002F3D8C(v37, type metadata accessor for MessageData.BodyData);
      sub_100025F40(v35, &qword_1005CE218, &unk_1004F3FD0);
      sub_1002F3D8C(v17, type metadata accessor for MessageData.BodySection);
      sub_1002F3D8C(v21, type metadata accessor for MessageData.BodySection);
      v29 = v53;
      if ((v41 & 1) == 0)
      {
        return 0;
      }

      v11 = v37;
      v26 = v46;
LABEL_7:
      v25 += v48;
      v24 = v29 + v48;
      if (!--v22)
      {
        return 1;
      }
    }

    v28 = v33((v35 + v32), 1, v36);
    v14 = v35;
    v29 = v53;
    if (v28 != 1)
    {
      goto LABEL_24;
    }

    goto LABEL_6;
  }

  return 1;
}

uint64_t sub_1002F3208(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      v9 = 1;
    }

    else
    {
      v3 = (a1 + 32);
      v4 = (a2 + 32);
      do
      {
        v5 = v3[1];
        v12[0] = *v3;
        v12[1] = v5;
        v6 = v3[3];
        v12[2] = v3[2];
        v12[3] = v6;
        v7 = v4[1];
        v13[0] = *v4;
        v13[1] = v7;
        v8 = v4[3];
        v13[2] = v4[2];
        v13[3] = v8;
        sub_1002E802C(v12, v11);
        sub_1002E802C(v13, v11);
        v9 = static ReturnOption.__derived_enum_equals(_:_:)(v12, v13);
        sub_1002E8088(v13);
        sub_1002E8088(v12);
        if ((v9 & 1) == 0)
        {
          break;
        }

        v3 += 4;
        v4 += 4;
        --v2;
      }

      while (v2);
    }
  }

  else
  {
    v9 = 0;
  }

  return v9 & 1;
}

uint64_t sub_1002F32E8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 32);
    for (i = (a2 + 32); ; ++i)
    {
      v6 = *v3;
      if (v6 <= 3)
      {
        if (*v3 > 1u)
        {
          if (v6 == 2)
          {
            v8 = 0xE700000000000000;
            v7 = 0x5458454E444955;
          }

          else
          {
            v7 = 0x44494C4156444955;
            v8 = 0xEB00000000595449;
          }
        }

        else
        {
          v7 = *v3 ? 0x544E45434552 : 0x534547415353454DLL;
          v8 = *v3 ? 0xE600000000000000 : 0xE800000000000000;
        }
      }

      else if (*v3 <= 5u)
      {
        v7 = v6 == 4 ? 0x4E4545534E55 : 1163544915;
        v8 = v6 == 4 ? 0xE600000000000000 : 0xE400000000000000;
      }

      else if (v6 == 6)
      {
        v7 = 0x4D54534548474948;
        v8 = 0xED0000514553444FLL;
      }

      else if (v6 == 7)
      {
        v7 = 0x494C444E45505041;
        v8 = 0xEB0000000054494DLL;
      }

      else
      {
        v7 = 0x49584F424C49414DLL;
        v8 = 0xE900000000000044;
      }

      v9 = *i;
      if (v9 <= 3)
      {
        break;
      }

      if (*i <= 5u)
      {
        if (v9 == 4)
        {
          v12 = 0xE600000000000000;
          if (v7 != 0x4E4545534E55)
          {
            goto LABEL_5;
          }
        }

        else
        {
          v12 = 0xE400000000000000;
          if (v7 != 1163544915)
          {
            goto LABEL_5;
          }
        }

        goto LABEL_55;
      }

      if (v9 == 6)
      {
        v12 = 0xED0000514553444FLL;
        if (v7 != 0x4D54534548474948)
        {
          goto LABEL_5;
        }

        goto LABEL_55;
      }

      if (v9 == 7)
      {
        v10 = 0x494C444E45505041;
        v11 = 5523789;
LABEL_50:
        v12 = v11 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
        if (v7 != v10)
        {
          goto LABEL_5;
        }

        goto LABEL_55;
      }

      v12 = 0xE900000000000044;
      if (v7 != 0x49584F424C49414DLL)
      {
        goto LABEL_5;
      }

LABEL_55:
      if (v8 != v12)
      {
LABEL_5:
        v5 = sub_1004A6D34();

        if ((v5 & 1) == 0)
        {
          return 0;
        }

        goto LABEL_6;
      }

LABEL_6:
      ++v3;
      if (!--v2)
      {
        return 1;
      }
    }

    if (*i <= 1u)
    {
      if (*i)
      {
        v12 = 0xE600000000000000;
        if (v7 != 0x544E45434552)
        {
          goto LABEL_5;
        }
      }

      else
      {
        v12 = 0xE800000000000000;
        if (v7 != 0x534547415353454DLL)
        {
          goto LABEL_5;
        }
      }

      goto LABEL_55;
    }

    if (v9 == 2)
    {
      v12 = 0xE700000000000000;
      if (v7 != 0x5458454E444955)
      {
        goto LABEL_5;
      }

      goto LABEL_55;
    }

    v10 = 0x44494C4156444955;
    v11 = 5854281;
    goto LABEL_50;
  }

  return 1;
}

uint64_t sub_1002F361C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SearchReturnOption();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v11 = &v19 - v10;
  v12 = *(a1 + 16);
  if (v12 == *(a2 + 16))
  {
    if (!v12 || a1 == a2)
    {
      v17 = 1;
    }

    else
    {
      v13 = (*(v9 + 80) + 32) & ~*(v9 + 80);
      v14 = a1 + v13;
      v15 = a2 + v13;
      v16 = *(v9 + 72);
      do
      {
        sub_1002F3D24(v14, v11, type metadata accessor for SearchReturnOption);
        sub_1002F3D24(v15, v7, type metadata accessor for SearchReturnOption);
        v17 = static SearchReturnOption.__derived_enum_equals(_:_:)(v11, v7);
        sub_1002F3D8C(v7, type metadata accessor for SearchReturnOption);
        sub_1002F3D8C(v11, type metadata accessor for SearchReturnOption);
        if ((v17 & 1) == 0)
        {
          break;
        }

        v15 += v16;
        v14 += v16;
        --v12;
      }

      while (v12);
    }
  }

  else
  {
    v17 = 0;
  }

  return v17 & 1;
}

void __swiftcall PushRegistrationInfo.init(apsVersion:accountID:deviceToken:subtopic:mailboxes:)(IMAP2Protocol::PushRegistrationInfo *__return_ptr retstr, Swift::Int32 apsVersion, Swift::String accountID, Swift::String deviceToken, Swift::String subtopic, Swift::OpaquePointer mailboxes)
{
  retstr->apsVersion = apsVersion;
  retstr->accountID = accountID;
  retstr->deviceToken = deviceToken;
  retstr->subtopic = subtopic;
  retstr->mailboxes = mailboxes;
}

uint64_t PushRegistrationInfo.deviceToken.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

uint64_t PushRegistrationInfo.deviceToken.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 32);

  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

uint64_t PushRegistrationInfo.mailboxes.setter(uint64_t a1)
{
  v3 = *(v1 + 56);

  *(v1 + 56) = a1;
  return result;
}

void PushRegistrationInfo.hash(into:)()
{
  sub_1004A6EE4(*v0);
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  v5 = *(v0 + 40);
  v6 = *(v0 + 48);
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  v7 = *(v0 + 56);
  v8 = *(v7 + 16);
  sub_1004A6EB4(v8);
  if (v8)
  {
    v9 = (v7 + 40);
    do
    {
      v10 = *v9;
      v9 += 4;
      sub_1004A6EB4(v10 | (v10 << 32));
      --v8;
    }

    while (v8);
  }
}

Swift::Int PushRegistrationInfo.hashValue.getter()
{
  sub_1004A6E94();
  PushRegistrationInfo.hash(into:)();
  return sub_1004A6F14();
}

Swift::Int sub_1002F3954()
{
  sub_1004A6E94();
  PushRegistrationInfo.hash(into:)();
  return sub_1004A6F14();
}

uint64_t sub_1002F3990(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  v7[0] = *a1;
  v7[1] = v2;
  v3 = a1[3];
  v7[2] = a1[2];
  v7[3] = v3;
  v4 = a2[1];
  v8[0] = *a2;
  v8[1] = v4;
  v5 = a2[3];
  v8[2] = a2[2];
  v8[3] = v5;
  return _s13IMAP2Protocol20PushRegistrationInfoV23__derived_struct_equalsySbAC_ACtFZ_0(v7, v8) & 1;
}

uint64_t static PushRegistrationResponse.__derived_struct_equals(_:_:)(int a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1 != a5)
  {
    return 0;
  }

  if (a2 != a6 || a3 != a7)
  {
    v9 = a4;
    v10 = a8;
    v11 = sub_1004A6D34();
    a4 = v9;
    a8 = v10;
    if ((v11 & 1) == 0)
    {
      return 0;
    }
  }

  return _s12NIOIMAPCore29MailboxesV23__derived_struct_equalsySbAC_ACtFZ_0(a4, a8);
}

uint64_t sub_1002F3A5C(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = *(a1 + 24);
  v3 = *(a2 + 24);
  v4 = *(a1 + 8) == *(a2 + 8) && *(a1 + 16) == *(a2 + 16);
  if (!v4 && (sub_1004A6D34() & 1) == 0)
  {
    return 0;
  }

  return _s12NIOIMAPCore29MailboxesV23__derived_struct_equalsySbAC_ACtFZ_0(v2, v3);
}

uint64_t _s13IMAP2Protocol20PushRegistrationInfoV23__derived_struct_equalsySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v4 = *(a1 + 8) == *(a2 + 8) && *(a1 + 16) == *(a2 + 16);
  if (!v4 && (sub_1004A6D34() & 1) == 0)
  {
    return 0;
  }

  v5 = *(a1 + 24) == *(a2 + 24) && *(a1 + 32) == *(a2 + 32);
  if (!v5 && (sub_1004A6D34() & 1) == 0 || (*(a1 + 40) != *(a2 + 40) || *(a1 + 48) != *(a2 + 48)) && (sub_1004A6D34() & 1) == 0)
  {
    return 0;
  }

  v6 = *(a1 + 56);
  v7 = *(a2 + 56);

  return _s12NIOIMAPCore29MailboxesV23__derived_struct_equalsySbAC_ACtFZ_0(v6, v7);
}

unint64_t sub_1002F3BA8()
{
  result = qword_1005D8280;
  if (!qword_1005D8280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D8280);
  }

  return result;
}

uint64_t sub_1002F3BFC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_1002F3C44(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1002F3CB4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C9C0(&qword_1005CE218, &unk_1004F3FD0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002F3D24(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1002F3D8C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1002F3DEC(unint64_t a1, unint64_t a2)
{
  v3 = a1;
  v4 = sub_1002F7B68(a1, a2);
  v5 = _swiftEmptyArrayStorage;
  if (!v4)
  {
    return v5;
  }

  v6 = v4;
  v41 = _swiftEmptyArrayStorage;
  result = sub_1002E5278(0, v4 & ~(v4 >> 63), 0);
  if ((v6 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v5 = v41;
    v9 = (v3 >> 59) & 1;
    if ((a2 & 0x1000000000000000) == 0)
    {
      LOBYTE(v9) = 1;
    }

    v10 = 4 << v9;
    if ((a2 & 0x2000000000000000) != 0)
    {
      v11 = HIBYTE(a2) & 0xF;
    }

    else
    {
      v11 = v3 & 0xFFFFFFFFFFFFLL;
    }

    v35 = 4 << v9;
    v12 = 15;
    v36 = v6;
    v37 = v3;
    v38 = v11;
    while (1)
    {
      v13 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      v14 = v12 & 0xC;
      v15 = (v12 & 1) == 0 || v14 == v10;
      v16 = v15;
      if (v15)
      {
        result = v12;
        if (v14 == v10)
        {
          v32 = v16;
          result = sub_10010C210(v12, v3, a2);
          v16 = v32;
          v11 = v38;
        }

        v17 = result >> 16;
        if (result >> 16 >= v11)
        {
          goto LABEL_64;
        }

        if ((result & 1) == 0)
        {
          v18 = v16;
          v19 = sub_1001E1418(result, v3, a2);
          v16 = v18;
          v11 = v38;
          v17 = v19 >> 16;
        }
      }

      else
      {
        v17 = v12 >> 16;
        result = v12;
        if (v12 >> 16 >= v11)
        {
          goto LABEL_65;
        }
      }

      if ((a2 & 0x1000000000000000) != 0)
      {
        v22 = v16;
        result = sub_1004A6714();
        v16 = v22;
        v11 = v38;
      }

      else
      {
        if ((a2 & 0x2000000000000000) != 0)
        {
          v39 = v3;
          v40 = a2 & 0xFFFFFFFFFFFFFFLL;
          v21 = &v39 + v17;
        }

        else
        {
          v20 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
          if ((v3 & 0x1000000000000000) == 0)
          {
            v33 = v16;
            v20 = sub_1004A67E4();
            v16 = v33;
            v11 = v38;
          }

          v21 = (v20 + v17);
        }

        result = *v21;
        if (*v21 < 0)
        {
          v31 = (__clz(result ^ 0xFF) - 24);
          if (v31 > 2)
          {
            if (v31 == 3)
            {
              result = ((result & 0xF) << 12) | ((v21[1] & 0x3F) << 6) | v21[2] & 0x3F;
            }

            else
            {
              result = ((result & 0xF) << 18) | ((v21[1] & 0x3F) << 12) | ((v21[2] & 0x3F) << 6) | v21[3] & 0x3F;
            }
          }

          else if (v31 != 1)
          {
            result = v21[1] & 0x3F | ((result & 0x1F) << 6);
          }
        }
      }

      if (result >= 0x20)
      {
        v23 = result;
      }

      else
      {
        v23 = result | 0x2400;
      }

      v41 = v5;
      v25 = v5[2];
      v24 = v5[3];
      if (v25 >= v24 >> 1)
      {
        v34 = v16;
        result = sub_1002E5278((v24 > 1), v25 + 1, 1);
        v16 = v34;
        v11 = v38;
        v5 = v41;
      }

      v5[2] = v25 + 1;
      *(v5 + v25 + 8) = v23;
      if (v16)
      {
        v10 = v35;
        v26 = v36;
        v3 = v37;
        if (v14 == v35)
        {
          result = sub_10010C210(v12, v37, a2);
          v11 = v38;
          v12 = result;
          if (v38 <= result >> 16)
          {
            goto LABEL_66;
          }
        }

        else if (v11 <= v12 >> 16)
        {
          goto LABEL_66;
        }

        if ((v12 & 1) == 0)
        {
          result = sub_1001E1418(v12, v37, a2);
          v11 = v38;
          v12 = v12 & 0xC | result & 0xFFFFFFFFFFFFFFF3 | 1;
        }
      }

      else
      {
        v26 = v36;
        v3 = v37;
        v10 = v35;
        if (v11 <= v12 >> 16)
        {
          goto LABEL_67;
        }
      }

      if ((a2 & 0x1000000000000000) != 0)
      {
        result = sub_1004A5884();
        v11 = v38;
        v12 = result;
      }

      else
      {
        v27 = v12 >> 16;
        if ((a2 & 0x2000000000000000) != 0)
        {
          v39 = v3;
          v40 = a2 & 0xFFFFFFFFFFFFFFLL;
          v28 = *(&v39 + v27);
        }

        else
        {
          result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
          if ((v3 & 0x1000000000000000) == 0)
          {
            result = sub_1004A67E4();
            v11 = v38;
          }

          v28 = *(result + v27);
        }

        v29 = v28;
        v30 = __clz(v28 ^ 0xFF) - 24;
        if (v29 >= 0)
        {
          LOBYTE(v30) = 1;
        }

        v12 = ((v27 + v30) << 16) | 5;
      }

      ++v8;
      if (v13 == v26)
      {
        return v5;
      }
    }

    __break(1u);
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
  }

  __break(1u);
  return result;
}

Swift::String __swiftcall UntaggedResponse.makeDescriptionWithoutPII()()
{
  sub_1002F42D0(&v9);
  sub_10002587C(&v9, v11);
  v0 = static Response.descriptionWithoutPII<A>(_:)();
  v2 = v1;
  sub_1000197E0(&v9);
  v3 = sub_1004A5924();
  v9 = 0;
  v10 = 0xE000000000000000;
  sub_1004A58A4(v3);
  v4 = v9;
  v5 = v10;
  sub_1002F3DEC(v0, v2);

  v9 = v4;
  v10 = v5;
  sub_10000C9C0(&qword_1005D8288, &qword_1004F3FE0);
  sub_10000DF44(&qword_1005D8290, &qword_1005D8288, &qword_1004F3FE0);
  sub_1004A58B4();

  v6 = v9;
  v7 = v10;
  result._object = v7;
  result._countAndFlagsBits = v6;
  return result;
}

uint64_t sub_1002F42D0@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v88.i8[-v6];
  v8 = type metadata accessor for UntaggedResponse(0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = (v88.i64 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1002F99D4(v2, v11, type metadata accessor for UntaggedResponse);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v89 = *v11;
      v40 = v11[2];
      a1[3] = sub_10000C9C0(&qword_1005D8428, &qword_1004F4710);
      a1[4] = sub_10000DF44(&qword_1005D8430, &qword_1005D8428, &qword_1004F4710);
      v21 = sub_1000B3774(a1);
      *v21 = v89;
      v21[2] = v40;
      v22 = 1;
      goto LABEL_14;
    case 2u:
      v89 = *v11;
      v33 = v11[2];
      a1[3] = sub_10000C9C0(&qword_1005D8428, &qword_1004F4710);
      a1[4] = sub_10000DF44(&qword_1005D8430, &qword_1005D8428, &qword_1004F4710);
      v21 = sub_1000B3774(a1);
      *v21 = v89;
      v21[2] = v33;
      v22 = 2;
      goto LABEL_14;
    case 3u:
      v89 = *v11;
      v35 = v11[2];
      a1[3] = sub_10000C9C0(&qword_1005D8428, &qword_1004F4710);
      a1[4] = sub_10000DF44(&qword_1005D8430, &qword_1005D8428, &qword_1004F4710);
      v21 = sub_1000B3774(a1);
      *v21 = v89;
      v21[2] = v35;
      v22 = 3;
      goto LABEL_14;
    case 4u:
      v89 = *v11;
      v20 = v11[2];
      a1[3] = sub_10000C9C0(&qword_1005D8428, &qword_1004F4710);
      a1[4] = sub_10000DF44(&qword_1005D8430, &qword_1005D8428, &qword_1004F4710);
      v21 = sub_1000B3774(a1);
      *v21 = v89;
      v21[2] = v20;
      v22 = 4;
LABEL_14:
      *(v21 + 24) = v22;
      goto LABEL_15;
    case 5u:
    case 6u:
      goto LABEL_24;
    case 7u:
      v36 = *(v11 + 4);
      v37 = *(v11 + 20);
      v38 = v11[3];
      a1[3] = sub_10000C9C0(&qword_1005D8428, &qword_1004F4710);
      a1[4] = sub_10000DF44(&qword_1005D8430, &qword_1005D8428, &qword_1004F4710);
      v39 = *(v11 + 2);
      v88 = *v11;
      v89 = v39;
      v11 = sub_1000B3774(a1);
      v102[0] = v88;
      v102[1].i32[0] = v36;
      v102[1].i8[4] = v37;
      v102[1].i64[1] = v38;
      v102[2] = v89;
      sub_1002F9E10(v102);
      goto LABEL_32;
    case 8u:
      v50 = *(v11 + 4);
      v51 = *(v11 + 20);
      v52 = v11[3];
      a1[3] = sub_10000C9C0(&qword_1005D8428, &qword_1004F4710);
      a1[4] = sub_10000DF44(&qword_1005D8430, &qword_1005D8428, &qword_1004F4710);
      v53 = *(v11 + 2);
      v88 = *v11;
      v89 = v53;
      v11 = sub_1000B3774(a1);
      v102[0] = v88;
      v102[1].i32[0] = v50;
      v102[1].i8[4] = v51;
      v102[1].i64[1] = v52;
      v102[2] = v89;
      sub_1002F9DC4(v102);
      goto LABEL_32;
    case 9u:
      v27 = *v11;
      v28 = *(v11 + 2);
      v29 = *(v11 + 6);
      v94 = *(v11 + 5);
      v95 = v29;
      v30 = *(v11 + 8);
      v96 = *(v11 + 7);
      v97 = v30;
      v31 = *(v11 + 2);
      v90 = *(v11 + 1);
      v91 = v31;
      v32 = *(v11 + 4);
      v92 = *(v11 + 3);
      v93 = v32;
      a1[3] = sub_10000C9C0(&qword_1005D8428, &qword_1004F4710);
      a1[4] = sub_10000DF44(&qword_1005D8430, &qword_1005D8428, &qword_1004F4710);
      v11 = sub_1000B3774(a1);
      *(&v98[7] + 4) = v97;
      *(&v98[6] + 4) = v96;
      *(&v98[5] + 4) = v95;
      *(&v98[4] + 4) = v94;
      *(v98 + 4) = v90;
      *(&v98[1] + 4) = v91;
      *(&v98[2] + 4) = v92;
      *(&v98[3] + 4) = v93;
      v102[0].i64[0] = v27;
      *(v102 + 12) = v98[0];
      *(&v102[4] + 12) = v98[4];
      *(&v102[3] + 12) = v98[3];
      *(&v102[2] + 12) = v98[2];
      *(&v102[1] + 12) = v98[1];
      v102[0].i32[2] = v28;
      v102[8].i32[3] = HIDWORD(v97);
      *(&v102[7] + 12) = v98[7];
      *(&v102[6] + 12) = v98[6];
      *(&v102[5] + 12) = v98[5];
      sub_1002F9D78(v102);
      goto LABEL_32;
    case 0xAu:
      v49 = v11[2];
      a1[3] = sub_10000C9C0(&qword_1005D8428, &qword_1004F4710);
      a1[4] = sub_10000DF44(&qword_1005D8430, &qword_1005D8428, &qword_1004F4710);
      v89 = *v11;
      v11 = sub_1000B3774(a1);
      v102[0] = v89;
      v102[1].i64[0] = v49;
      sub_1002F9D2C(v102);
      goto LABEL_32;
    case 0xBu:
      v19 = *v11;
      a1[3] = sub_10000C9C0(&qword_1005D8428, &qword_1004F4710);
      a1[4] = sub_10000DF44(&qword_1005D8430, &qword_1005D8428, &qword_1004F4710);
      v11 = sub_1000B3774(a1);
      v102[0] = v19;
      v102[1].i8[0] = 1;
      sub_1002F9CE0(v102);
      goto LABEL_32;
    case 0xCu:
      v23 = *(v11 + 32);
      v24 = *(v11 + 33);
      v25 = v11[5];
      a1[3] = sub_10000C9C0(&qword_1005D8428, &qword_1004F4710);
      a1[4] = sub_10000DF44(&qword_1005D8430, &qword_1005D8428, &qword_1004F4710);
      v26 = *v11;
      v88 = *(v11 + 1);
      v89 = v26;
      v11 = sub_1000B3774(a1);
      v102[0] = v89;
      v102[1] = v88;
      v102[2].i8[0] = v23;
      v102[2].i8[1] = v24;
      v102[2].i64[1] = v25;
      sub_1002F9C94(v102);
      goto LABEL_32;
    case 0xDu:
      v45 = *v11;
      a1[3] = sub_10000C9C0(&qword_1005D8428, &qword_1004F4710);
      a1[4] = sub_10000DF44(&qword_1005D8430, &qword_1005D8428, &qword_1004F4710);
      v11 = sub_1000B3774(a1);
      v46 = *(v45 + 16);
      if (v46)
      {
        a1 = sub_100135390(*(v45 + 16), 0);
        v47 = sub_100139548(v102, a1 + 4, v46, v45);
        sub_100020D08();
        if (v47 != v46)
        {
          __break(1u);
LABEL_24:
          v48 = *v11;
          a1[3] = sub_10000C9C0(&qword_1005D8428, &qword_1004F4710);
          a1[4] = sub_10000DF44(&qword_1005D8430, &qword_1005D8428, &qword_1004F4710);
          *sub_1000B3774(a1) = v48;
          type metadata accessor for ResponsePayload();
          goto LABEL_33;
        }
      }

      else
      {

        a1 = _swiftEmptyArrayStorage;
      }

      v102[0].i64[0] = a1;
      sub_1002F9C4C(v102);
LABEL_32:
      *v11 = v102[0];
      v70 = v102[1];
      v71 = v102[2];
      v72 = v102[4];
      *(v11 + 3) = v102[3];
      *(v11 + 4) = v72;
      *(v11 + 1) = v70;
      *(v11 + 2) = v71;
      v73 = v102[5];
      v74 = v102[6];
      v75 = v102[8];
      *(v11 + 7) = v102[7];
      *(v11 + 8) = v75;
      *(v11 + 5) = v73;
      *(v11 + 6) = v74;
      type metadata accessor for ResponsePayload();
LABEL_33:
      swift_storeEnumTagMultiPayload();
      type metadata accessor for Response(0);
      return swift_storeEnumTagMultiPayload();
    case 0xEu:
      v89 = *v11;
      v15 = v11[2];
      v16 = *(v11 + 32);
      v17 = v11[5];
      a1[3] = sub_10000C9C0(&qword_1005D8428, &qword_1004F4710);
      a1[4] = sub_10000DF44(&qword_1005D8430, &qword_1005D8428, &qword_1004F4710);
      v18 = v11[3];
      v11 = sub_1000B3774(a1);
      v102[0] = v89;
      v102[1].i64[0] = v15;
      v102[1].i64[1] = v18;
      v102[2].i8[0] = v16;
      v102[2].i64[1] = v17;
      sub_1002F9B44(v102);
      goto LABEL_32;
    case 0xFu:
      v34 = *v11;
      a1[3] = sub_10000C9C0(&qword_1005D8428, &qword_1004F4710);
      a1[4] = sub_10000DF44(&qword_1005D8430, &qword_1005D8428, &qword_1004F4710);
      v11 = sub_1000B3774(a1);
      v102[0].i64[0] = v34;
      sub_1002F9C00(v102);
      goto LABEL_32;
    case 0x10u:
      v14 = *v11;
      a1[3] = sub_10000C9C0(&qword_1005D8428, &qword_1004F4710);
      a1[4] = sub_10000DF44(&qword_1005D8430, &qword_1005D8428, &qword_1004F4710);
      v11 = sub_1000B3774(a1);
      v102[0].i64[0] = v14;
      sub_1002F9BB4(v102);
      goto LABEL_32;
    case 0x11u:
      v41 = *v11;
      a1[3] = sub_10000C9C0(&qword_1005D8428, &qword_1004F4710);
      a1[4] = sub_10000DF44(&qword_1005D8430, &qword_1005D8428, &qword_1004F4710);
      *sub_1000B3774(a1) = v41;
      type metadata accessor for MessageData();
      swift_storeEnumTagMultiPayload();
      type metadata accessor for ResponsePayload();
      goto LABEL_33;
    case 0x12u:
    case 0x13u:
      sub_100020950(v11, v7);
      a1[3] = sub_10000C9C0(&qword_1005D8428, &qword_1004F4710);
      a1[4] = sub_10000DF44(&qword_1005D8430, &qword_1005D8428, &qword_1004F4710);
      v57 = sub_1000B3774(a1);
      sub_10000E268(v7, v57, &unk_1005D91B0, &unk_1004CF400);
      type metadata accessor for MessageData();
      swift_storeEnumTagMultiPayload();
      type metadata accessor for ResponsePayload();
      swift_storeEnumTagMultiPayload();
      type metadata accessor for Response(0);
      swift_storeEnumTagMultiPayload();
      return sub_100025F40(v7, &unk_1005D91B0, &unk_1004CF400);
    case 0x14u:
      memcpy(v102, v11, 0x268uLL);
      if (v102[0].i8[4])
      {
        if (v102[0].i8[12])
        {
          a1[3] = sub_10000C9C0(&qword_1005D8438, &qword_1004F4718);
          a1[4] = sub_10000DF44(&qword_1005D8440, &qword_1005D8438, &qword_1004F4718);
          result = sub_100025D5C(v102);
          *a1 = _swiftEmptyArrayStorage;
          return result;
        }

        v76 = v102[0].i32[2];
        sub_10000C9C0(&qword_1005D8448, &unk_1004F4720);
        v77 = *(type metadata accessor for Response(0) - 8);
        v78 = *(v77 + 72);
        v79 = (*(v77 + 80) + 32) & ~*(v77 + 80);
        v62 = swift_allocObject();
        *(v62 + 16) = xmmword_1004CEAA0;
        v80 = v62 + v79;
        LODWORD(v98[0]) = v76;
        sub_1002F9B90(v98);
        v81 = v99;
        *(v80 + 128) = v98[8];
        *(v80 + 144) = v81;
        *(v80 + 160) = v100;
        *(v80 + 176) = v101;
        v82 = v98[5];
        *(v80 + 64) = v98[4];
        *(v80 + 80) = v82;
        v83 = v98[7];
        *(v80 + 96) = v98[6];
        *(v80 + 112) = v83;
        v84 = v98[1];
        *v80 = v98[0];
        *(v80 + 16) = v84;
        v85 = v98[3];
        *(v80 + 32) = v98[2];
        *(v80 + 48) = v85;
        swift_storeEnumTagMultiPayload();
        v69 = 0;
      }

      else
      {
        v58 = v102[0].i32[0];
        sub_10000C9C0(&qword_1005D8448, &unk_1004F4720);
        v59 = *(type metadata accessor for Response(0) - 8);
        v60 = *(v59 + 72);
        v61 = (*(v59 + 80) + 32) & ~*(v59 + 80);
        v62 = swift_allocObject();
        *(v62 + 16) = xmmword_1004CEAA0;
        v63 = v62 + v61;
        LODWORD(v98[0]) = v58;
        sub_1002F9BA4(v98);
        v64 = v99;
        *(v63 + 128) = v98[8];
        *(v63 + 144) = v64;
        *(v63 + 160) = v100;
        *(v63 + 176) = v101;
        v65 = v98[5];
        *(v63 + 64) = v98[4];
        *(v63 + 80) = v65;
        v66 = v98[7];
        *(v63 + 96) = v98[6];
        *(v63 + 112) = v66;
        v67 = v98[1];
        *v63 = v98[0];
        *(v63 + 16) = v67;
        v68 = v98[3];
        *(v63 + 32) = v98[2];
        *(v63 + 48) = v68;
        swift_storeEnumTagMultiPayload();
        v69 = 1;
      }

      v86 = sub_1002F5410(v69);
      *&v90 = v62;
      sub_1002E5108(v86);
      v87 = v90;
      a1[3] = sub_10000C9C0(&qword_1005D8438, &qword_1004F4718);
      a1[4] = sub_10000DF44(&qword_1005D8440, &qword_1005D8438, &qword_1004F4718);
      result = sub_100025D5C(v102);
      *a1 = v87;
      return result;
    case 0x15u:
      v43 = *v11;
      a1[3] = sub_10000C9C0(&qword_1005D8428, &qword_1004F4710);
      a1[4] = sub_10000DF44(&qword_1005D8430, &qword_1005D8428, &qword_1004F4710);
      v89 = *(v11 + 1);
      v44 = sub_1000B3774(a1);
      *v44 = v43;
      *(v44 + 1) = v89;
      type metadata accessor for ResponsePayload();
      goto LABEL_33;
    case 0x16u:
      v89 = *v11;
      v54 = v11[2];
      v55 = *(v11 + 24);
      a1[3] = sub_10000C9C0(&qword_1005D8428, &qword_1004F4710);
      a1[4] = sub_10000DF44(&qword_1005D8430, &qword_1005D8428, &qword_1004F4710);
      v56 = sub_1000B3774(a1);
      *v56 = v89;
      v56[2] = v54;
      *(v56 + 24) = v55;
      type metadata accessor for ResponsePayload();
      goto LABEL_33;
    default:
      v89 = *v11;
      v12 = v11[2];
      a1[3] = sub_10000C9C0(&qword_1005D8428, &qword_1004F4710);
      a1[4] = sub_10000DF44(&qword_1005D8430, &qword_1005D8428, &qword_1004F4710);
      v13 = sub_1000B3774(a1);
      *v13 = v89;
      v13[2] = v12;
      *(v13 + 24) = 0;
LABEL_15:
      type metadata accessor for ResponsePayload();
      goto LABEL_33;
  }
}

void *sub_1002F5410(int a1)
{
  LODWORD(v270) = a1;
  v281 = sub_1004A5384();
  v261 = *(v281 - 8);
  v2 = *(v261 + 64);
  __chkstk_darwin(v281);
  v280 = v257 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10000C9C0(&qword_1005CE218, &unk_1004F3FD0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = v257 - v6;
  v284 = type metadata accessor for MessageData.BodyData();
  v269 = *(v284 - 8);
  v8 = *(v269 + 64);
  v9 = __chkstk_darwin(v284);
  v279 = v257 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v285 = v257 - v11;
  v283 = type metadata accessor for MessageData.BodySection();
  v262 = *(v283 - 8);
  v12 = *(v262 + 64);
  __chkstk_darwin(v283);
  v272 = v257 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Response(0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = __chkstk_darwin(v14);
  v266 = v257 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v17);
  v265 = v257 - v20;
  v21 = __chkstk_darwin(v19);
  v264 = v257 - v22;
  v23 = __chkstk_darwin(v21);
  v263 = v257 - v24;
  v25 = __chkstk_darwin(v23);
  v282 = v257 - v26;
  v27 = __chkstk_darwin(v25);
  v278 = v257 - v28;
  v29 = __chkstk_darwin(v27);
  v277 = v257 - v30;
  v31 = __chkstk_darwin(v29);
  v271 = v257 - v32;
  v33 = __chkstk_darwin(v31);
  v287 = v257 - v34;
  v35 = __chkstk_darwin(v33);
  v276 = v257 - v36;
  v37 = __chkstk_darwin(v35);
  v274 = v257 - v38;
  v39 = __chkstk_darwin(v37);
  v273 = v257 - v40;
  v41 = __chkstk_darwin(v39);
  v43 = v257 - v42;
  v44 = __chkstk_darwin(v41);
  v46 = v257 - v45;
  v47 = __chkstk_darwin(v44);
  v49 = v257 - v48;
  v50 = *(v1 + 472);
  v369 = *(v1 + 456);
  v370 = v50;
  v371 = *(v1 + 488);
  v372 = *(v1 + 504);
  v51 = *(v1 + 408);
  v365 = *(v1 + 392);
  v366 = v51;
  v52 = *(v1 + 440);
  v367 = *(v1 + 424);
  v368 = v52;
  v267 = v1;
  v286 = v47;
  if (*(&v367 + 1))
  {
    v53 = *(v1 + 408);
    v339 = *(v1 + 392);
    v340 = v53;
    *&v341 = *(v1 + 424);
    *(&v341 + 1) = *(&v367 + 1);
    v54 = *(v1 + 488);
    v344 = *(v1 + 472);
    v345 = v54;
    *&v346 = *(v1 + 504);
    v55 = *(v1 + 440);
    v343 = *(v1 + 456);
    v342 = v55;
    sub_1002FA01C(&v339);
    v359 = v347;
    v360 = v348;
    v361 = v349;
    v362 = v350;
    v355 = v343;
    v356 = v344;
    v357 = v345;
    v358 = v346;
    v351 = v339;
    v352 = v340;
    v353 = v341;
    v354 = v342;
    sub_1002F9E70(&v351);
    v56 = v360;
    *(v49 + 8) = v359;
    *(v49 + 9) = v56;
    *(v49 + 10) = v361;
    *(v49 + 88) = v362;
    v57 = v356;
    *(v49 + 4) = v355;
    *(v49 + 5) = v57;
    v58 = v358;
    *(v49 + 6) = v357;
    *(v49 + 7) = v58;
    v59 = v352;
    *v49 = v351;
    *(v49 + 1) = v59;
    v60 = v354;
    *(v49 + 2) = v353;
    *(v49 + 3) = v60;
    swift_storeEnumTagMultiPayload();
    v292 = v369;
    v293 = v370;
    v294 = v371;
    *&v295 = v372;
    v288 = v365;
    v289 = v366;
    v290 = v367;
    v291 = v368;
    sub_10000E268(&v365, &v327, &qword_1005D8038, &unk_1004F4C00);
    sub_1002FA030(&v288, &v327);
    v61 = sub_1002FAB90(0, 1, 1, _swiftEmptyArrayStorage);
    v63 = v61[2];
    v62 = v61[3];
    v64 = v61;
    if (v63 >= v62 >> 1)
    {
      v64 = sub_1002FAB90(v62 > 1, v63 + 1, 1, v61);
    }

    sub_100025F40(&v365, &qword_1005D8038, &unk_1004F4C00);
    *(v64 + 16) = v63 + 1;
    v65 = v64;
    sub_1002F9E84(v49, v64 + ((*(v15 + 80) + 32) & ~*(v15 + 80)) + *(v15 + 72) * v63, type metadata accessor for Response);
  }

  else
  {
    v65 = _swiftEmptyArrayStorage;
  }

  v66 = v267;
  v67 = *(v267 + 512);
  v364 = v67;
  if (v67)
  {
    v68 = v65;
    v69 = *(v67 + 16);
    if (v69)
    {
      v70 = sub_100135390(*(v67 + 16), 0);
      v71 = sub_100139548(&v351, v70 + 4, v69, v67);
      v259 = v352;
      v260 = *(&v351 + 1);
      v257[1] = v353;
      v258 = *(&v352 + 1);
      sub_10000E268(&v364, &v339, &qword_1005D8450, &qword_1004F4730);
      sub_100020D08();
      if (v71 == v69)
      {
LABEL_11:
        *&v339 = v70;
        sub_1002FA00C(&v339);
        v359 = v347;
        v360 = v348;
        v361 = v349;
        v362 = v350;
        v355 = v343;
        v356 = v344;
        v357 = v345;
        v358 = v346;
        v351 = v339;
        v352 = v340;
        v353 = v341;
        v354 = v342;
        sub_1002F9E70(&v351);
        v72 = v360;
        *(v46 + 8) = v359;
        *(v46 + 9) = v72;
        *(v46 + 10) = v361;
        *(v46 + 88) = v362;
        v73 = v356;
        *(v46 + 4) = v355;
        *(v46 + 5) = v73;
        v74 = v358;
        *(v46 + 6) = v357;
        *(v46 + 7) = v74;
        v75 = v352;
        *v46 = v351;
        *(v46 + 1) = v75;
        v76 = v354;
        *(v46 + 2) = v353;
        *(v46 + 3) = v76;
        swift_storeEnumTagMultiPayload();
        v77 = v68;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v66 = v267;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v77 = sub_1002FAB90(0, v77[2] + 1, 1, v77);
        }

        v80 = v77[2];
        v79 = v77[3];
        v81 = v77;
        if (v80 >= v79 >> 1)
        {
          v81 = sub_1002FAB90(v79 > 1, v80 + 1, 1, v77);
        }

        *(v81 + 16) = v80 + 1;
        v65 = v81;
        sub_1002F9E84(v46, v81 + ((*(v15 + 80) + 32) & ~*(v15 + 80)) + *(v15 + 72) * v80, type metadata accessor for Response);
        goto LABEL_16;
      }

      __break(1u);
    }

    v70 = _swiftEmptyArrayStorage;
    goto LABEL_11;
  }

LABEL_16:
  v82 = *(v66 + 520);
  v363 = v82;
  if (!v82)
  {
    goto LABEL_20;
  }

  v83 = v65;
  v65 = *(v82 + 16);
  if (v65)
  {
    v84 = sub_1002F14FC(*(v82 + 16), 0);
    v85 = sub_1002F1890(&v351, (v84 + 4), v65, v82);
    v259 = *(&v352 + 1);
    v260 = v352;
    v258 = v353;
    sub_10000E268(&v363, &v339, qword_1005CF958, &qword_1004D3040);
    sub_100020D08();
    if (v85 != v65)
    {
      __break(1u);
LABEL_20:
      v86 = v267;
      if (*(v267 + 536))
      {
        goto LABEL_33;
      }

      goto LABEL_28;
    }
  }

  else
  {
    v84 = _swiftEmptyArrayStorage;
  }

  *&v339 = v84;
  sub_1002F9FF8(&v339);
  v359 = v347;
  v360 = v348;
  v361 = v349;
  v362 = v350;
  v355 = v343;
  v356 = v344;
  v357 = v345;
  v358 = v346;
  v351 = v339;
  v352 = v340;
  v353 = v341;
  v354 = v342;
  sub_1002F9E70(&v351);
  v87 = v360;
  *(v43 + 8) = v359;
  *(v43 + 9) = v87;
  *(v43 + 10) = v361;
  *(v43 + 88) = v362;
  v88 = v356;
  *(v43 + 4) = v355;
  *(v43 + 5) = v88;
  v89 = v358;
  *(v43 + 6) = v357;
  *(v43 + 7) = v89;
  v90 = v352;
  *v43 = v351;
  *(v43 + 1) = v90;
  v91 = v354;
  *(v43 + 2) = v353;
  *(v43 + 3) = v91;
  swift_storeEnumTagMultiPayload();
  v65 = v83;
  v92 = swift_isUniquelyReferenced_nonNull_native();
  v86 = v267;
  if ((v92 & 1) == 0)
  {
    v65 = sub_1002FAB90(0, v83[2] + 1, 1, v83);
  }

  v94 = v65[2];
  v93 = v65[3];
  if (v94 >= v93 >> 1)
  {
    v65 = sub_1002FAB90(v93 > 1, v94 + 1, 1, v65);
  }

  v65[2] = v94 + 1;
  sub_1002F9E84(v43, v65 + ((*(v15 + 80) + 32) & ~*(v15 + 80)) + *(v15 + 72) * v94, type metadata accessor for Response);
  if ((*(v86 + 536) & 1) == 0)
  {
LABEL_28:
    *&v339 = *(v86 + 528);
    sub_1002F9FE4(&v339);
    v359 = v347;
    v360 = v348;
    v361 = v349;
    v362 = v350;
    v355 = v343;
    v356 = v344;
    v357 = v345;
    v358 = v346;
    v351 = v339;
    v352 = v340;
    v353 = v341;
    v354 = v342;
    sub_1002F9E70(&v351);
    v95 = v360;
    v96 = v273;
    *(v273 + 128) = v359;
    *(v96 + 144) = v95;
    *(v96 + 160) = v361;
    *(v96 + 176) = v362;
    v97 = v356;
    *(v96 + 64) = v355;
    *(v96 + 80) = v97;
    v98 = v358;
    *(v96 + 96) = v357;
    *(v96 + 112) = v98;
    v99 = v352;
    *v96 = v351;
    *(v96 + 16) = v99;
    v100 = v354;
    *(v96 + 32) = v353;
    *(v96 + 48) = v100;
    swift_storeEnumTagMultiPayload();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v65 = sub_1002FAB90(0, v65[2] + 1, 1, v65);
    }

    v102 = v65[2];
    v101 = v65[3];
    if (v102 >= v101 >> 1)
    {
      v65 = sub_1002FAB90(v101 > 1, v102 + 1, 1, v65);
    }

    v65[2] = v102 + 1;
    sub_1002F9E84(v273, v65 + ((*(v15 + 80) + 32) & ~*(v15 + 80)) + *(v15 + 72) * v102, type metadata accessor for Response);
  }

LABEL_33:
  if (*(v86 + 544))
  {
    if (*(v86 + 12))
    {
      goto LABEL_47;
    }

    goto LABEL_41;
  }

  *&v339 = *(v86 + 540);
  sub_1002F9FD0(&v339);
  v359 = v347;
  v360 = v348;
  v361 = v349;
  v362 = v350;
  v355 = v343;
  v356 = v344;
  v357 = v345;
  v358 = v346;
  v351 = v339;
  v352 = v340;
  v353 = v341;
  v354 = v342;
  sub_1002F9E70(&v351);
  v103 = v360;
  v104 = v274;
  *(v274 + 128) = v359;
  *(v104 + 144) = v103;
  *(v104 + 160) = v361;
  *(v104 + 176) = v362;
  v105 = v356;
  *(v104 + 64) = v355;
  *(v104 + 80) = v105;
  v106 = v358;
  *(v104 + 96) = v357;
  *(v104 + 112) = v106;
  v107 = v352;
  *v104 = v351;
  *(v104 + 16) = v107;
  v108 = v354;
  *(v104 + 32) = v353;
  *(v104 + 48) = v108;
  swift_storeEnumTagMultiPayload();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v65 = sub_1002FAB90(0, v65[2] + 1, 1, v65);
  }

  v110 = v65[2];
  v109 = v65[3];
  if (v110 >= v109 >> 1)
  {
    v65 = sub_1002FAB90(v109 > 1, v110 + 1, 1, v65);
  }

  v65[2] = v110 + 1;
  sub_1002F9E84(v274, v65 + ((*(v15 + 80) + 32) & ~*(v15 + 80)) + *(v15 + 72) * v110, type metadata accessor for Response);
  if ((*(v86 + 12) & 1) == 0)
  {
LABEL_41:
    if (v270)
    {
      LODWORD(v339) = *(v86 + 8);
      sub_1002F9FBC(&v339);
      v359 = v347;
      v360 = v348;
      v361 = v349;
      v362 = v350;
      v355 = v343;
      v356 = v344;
      v357 = v345;
      v358 = v346;
      v351 = v339;
      v352 = v340;
      v353 = v341;
      v354 = v342;
      sub_1002F9E70(&v351);
      v111 = v360;
      v112 = v276;
      *(v276 + 128) = v359;
      *(v112 + 144) = v111;
      *(v112 + 160) = v361;
      *(v112 + 176) = v362;
      v113 = v356;
      *(v112 + 64) = v355;
      *(v112 + 80) = v113;
      v114 = v358;
      *(v112 + 96) = v357;
      *(v112 + 112) = v114;
      v115 = v352;
      *v112 = v351;
      *(v112 + 16) = v115;
      v116 = v354;
      *(v112 + 32) = v353;
      *(v112 + 48) = v116;
      swift_storeEnumTagMultiPayload();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v65 = sub_1002FAB90(0, v65[2] + 1, 1, v65);
      }

      v118 = v65[2];
      v117 = v65[3];
      if (v118 >= v117 >> 1)
      {
        v65 = sub_1002FAB90(v117 > 1, v118 + 1, 1, v65);
      }

      v65[2] = v118 + 1;
      sub_1002F9E84(v276, v65 + ((*(v15 + 80) + 32) & ~*(v15 + 80)) + *(v15 + 72) * v118, type metadata accessor for Response);
    }
  }

LABEL_47:
  if ((*(v86 + 560) & 1) == 0)
  {
    *&v339 = *(v86 + 552);
    sub_1002F9FA8(&v339);
    v359 = v347;
    v360 = v348;
    v361 = v349;
    v362 = v350;
    v355 = v343;
    v356 = v344;
    v357 = v345;
    v358 = v346;
    v351 = v339;
    v352 = v340;
    v353 = v341;
    v354 = v342;
    sub_1002F9E70(&v351);
    v119 = v360;
    v120 = v287;
    *(v287 + 128) = v359;
    *(v120 + 144) = v119;
    *(v120 + 160) = v361;
    *(v120 + 176) = v362;
    v121 = v356;
    *(v120 + 64) = v355;
    *(v120 + 80) = v121;
    v122 = v358;
    *(v120 + 96) = v357;
    *(v120 + 112) = v122;
    v123 = v352;
    *v120 = v351;
    *(v120 + 16) = v123;
    v124 = v354;
    *(v120 + 32) = v353;
    *(v120 + 48) = v124;
    swift_storeEnumTagMultiPayload();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v65 = sub_1002FAB90(0, v65[2] + 1, 1, v65);
    }

    v126 = v65[2];
    v125 = v65[3];
    if (v126 >= v125 >> 1)
    {
      v65 = sub_1002FAB90(v125 > 1, v126 + 1, 1, v65);
    }

    v65[2] = v126 + 1;
    sub_1002F9E84(v287, v65 + ((*(v15 + 80) + 32) & ~*(v15 + 80)) + *(v15 + 72) * v126, type metadata accessor for Response);
  }

  v127 = *(v86 + 200);
  v128 = *(v127 + 16);
  if (v128)
  {
    v129 = (v127 + ((*(v262 + 80) + 32) & ~*(v262 + 80)));
    v275 = v15;
    v276 = v269 + 48;
    v269 = v261 + 8;
    v270 = (v261 + 16);
    v274 = *(v262 + 72);
    v130 = v272;
    v268 = v7;
    do
    {
      v287 = v128;
      v131 = v65;
      sub_1002F99D4(v129, v130, type metadata accessor for MessageData.BodySection);
      sub_10000E268(v130 + *(v283 + 24), v7, &qword_1005CE218, &unk_1004F3FD0);
      if ((*v276)(v7, 1, v284) == 1)
      {
        sub_100025F40(v7, &qword_1005CE218, &unk_1004F3FD0);
        v133 = *v130;
        v132 = *(v130 + 8);
        v134 = *(v130 + 20);
        v135 = *(v130 + 24);
        if (v135)
        {
          v134 = 0;
        }

        v136 = *(v130 + 16);
        *&v339 = *v130;
        *(&v339 + 1) = v132;
        *&v340 = v136;
        *(&v340 + 1) = v134;
        LOBYTE(v341) = v135 | 0x40;
        sub_1002F9E5C(&v339);
        v359 = v347;
        v360 = v348;
        v361 = v349;
        v362 = v350;
        v355 = v343;
        v356 = v344;
        v357 = v345;
        v358 = v346;
        v351 = v339;
        v352 = v340;
        v353 = v341;
        v354 = v342;
        sub_1002F9E70(&v351);
        v137 = v360;
        v138 = v282;
        *(v282 + 128) = v359;
        *(v138 + 144) = v137;
        *(v138 + 160) = v361;
        *(v138 + 176) = v362;
        v139 = v356;
        *(v138 + 64) = v355;
        *(v138 + 80) = v139;
        v140 = v358;
        *(v138 + 96) = v357;
        *(v138 + 112) = v140;
        v141 = v352;
        *v138 = v351;
        *(v138 + 16) = v141;
        v142 = v354;
        *(v138 + 32) = v353;
        *(v138 + 48) = v142;
        swift_storeEnumTagMultiPayload();

        sub_100051190(v132, v136);
        v65 = v131;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v65 = sub_1002FAB90(0, v131[2] + 1, 1, v131);
        }

        v144 = v65[2];
        v143 = v65[3];
        if (v144 >= v143 >> 1)
        {
          v65 = sub_1002FAB90(v143 > 1, v144 + 1, 1, v65);
        }

        sub_1002F9A3C(v130, type metadata accessor for MessageData.BodySection);
        v65[2] = v144 + 1;
        sub_1002F9E84(v282, v65 + ((*(v15 + 80) + 32) & ~*(v15 + 80)) + *(v15 + 72) * v144, type metadata accessor for Response);
      }

      else
      {
        sub_1002F9E84(v7, v285, type metadata accessor for MessageData.BodyData);
        v145 = *v130;
        v146 = *(v130 + 8);
        v147 = *(v130 + 20);
        v148 = *(v130 + 24);
        if (v148)
        {
          v149 = 0;
        }

        else
        {
          v149 = *(v130 + 20);
        }

        v150 = *(v130 + 16);
        v151 = v148 | 0x40;

        sub_100051190(v146, v150);
        v152 = _s13IMAP2Protocol11MessageDataV04BodyD0V5countSivg_0();
        *&v351 = v145;
        *(&v351 + 1) = v146;
        *&v352 = v150;
        *(&v352 + 1) = v149;
        LOBYTE(v353) = v151;
        *(&v353 + 1) = v152;
        sub_1002F9F58(&v351);
        v153 = v360;
        v15 = v271;
        *(v271 + 8) = v359;
        *(v15 + 144) = v153;
        *(v15 + 160) = v361;
        *(v15 + 176) = v362;
        v154 = v356;
        *(v15 + 64) = v355;
        *(v15 + 80) = v154;
        v155 = v358;
        *(v15 + 96) = v357;
        *(v15 + 112) = v155;
        v156 = v352;
        *v15 = v351;
        *(v15 + 16) = v156;
        v157 = v354;
        *(v15 + 32) = v353;
        *(v15 + 48) = v157;
        swift_storeEnumTagMultiPayload();
        v158 = v131;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v158 = sub_1002FAB90(0, v131[2] + 1, 1, v131);
        }

        v160 = v158[2];
        v159 = v158[3];
        v161 = v275;
        if (v160 >= v159 >> 1)
        {
          v158 = sub_1002FAB90(v159 > 1, v160 + 1, 1, v158);
        }

        v158[2] = v160 + 1;
        v162 = (*(v161 + 80) + 32) & ~*(v161 + 80);
        v163 = *(v161 + 72);
        sub_1002F9E84(v15, v158 + v162 + v163 * v160, type metadata accessor for Response);
        v164 = v279;
        sub_1002F99D4(v285, v279, type metadata accessor for MessageData.BodyData);
        (*v270)(v280, v164, v281);
        v165 = _s13IMAP2Protocol11MessageDataV04BodyD0V5countSivg_0();
        if (v165 < 0)
        {
          __break(1u);
LABEL_111:
          __break(1u);
          goto LABEL_112;
        }

        v273 = v162;
        if (v165)
        {
          if (v165)
          {
            v166 = (v165 - 1) | ((v165 - 1) >> 1) | (((v165 - 1) | ((v165 - 1) >> 1)) >> 2);
            v167 = v166 | (v166 >> 4) | ((v166 | (v166 >> 4)) >> 8);
            v168 = v167 | HIWORD(v167);
            v169 = __CFADD__(v168, 1);
            v170 = v168 + 1;
            if (v169)
            {
              v161 = 0xFFFFFFFFLL;
            }

            else
            {
              v161 = v170;
            }
          }

          else
          {
            v161 = 0;
          }

          result = malloc(v161);
          if (!result)
          {
            __break(1u);
            return result;
          }

          v178 = result;
          type metadata accessor for ByteBuffer._Storage();
          v176 = swift_allocObject();
          v15 = 0;
          v173 = 0;
          v174 = 0;
          v175 = 0;
          *(v176 + 16) = v161;
          *(v176 + 24) = v178;
          *(v176 + 32) = j__malloc;
          *(v176 + 40) = j__realloc;
          *(v176 + 48) = sub_100127C74;
          *(v176 + 56) = sub_100127C84;
        }

        else
        {
          v171 = ByteBufferAllocator.zeroCapacityWithDefaultAllocator.unsafeMutableAddressor();
          v172 = *v171;
          v15 = *(v171 + 2);
          v173 = *(v171 + 3);
          v161 = *(v171 + 4);
          v174 = *(v171 + 10);
          v175 = *(v171 + 22);
        }

        *&v327 = v176;
        *(&v327 + 1) = __PAIR64__(v173, v15);
        LODWORD(v328) = v161;
        WORD2(v328) = v174;
        BYTE6(v328) = v175;
        v179 = v280;
        v180 = ByteBuffer.setDispatchData(_:at:)(v280, v173);
        (*v269)(v179, v281);
        sub_1002F9A3C(v279, type metadata accessor for MessageData.BodyData);
        if (__CFADD__(HIDWORD(v327), v180))
        {
          goto LABEL_111;
        }

        *&v339 = v327;
        DWORD2(v339) = DWORD2(v327);
        HIDWORD(v339) = HIDWORD(v327) + v180;
        LODWORD(v340) = v328;
        WORD2(v340) = WORD2(v328);
        BYTE6(v340) = BYTE6(v328);
        sub_1002F9F6C(&v339);
        v181 = v348;
        v182 = v277;
        *(v277 + 128) = v347;
        *(v182 + 144) = v181;
        *(v182 + 160) = v349;
        *(v182 + 176) = v350;
        v183 = v344;
        *(v182 + 64) = v343;
        *(v182 + 80) = v183;
        v184 = v346;
        *(v182 + 96) = v345;
        *(v182 + 112) = v184;
        v185 = v340;
        *v182 = v339;
        *(v182 + 16) = v185;
        v186 = v342;
        *(v182 + 32) = v341;
        *(v182 + 48) = v186;
        swift_storeEnumTagMultiPayload();
        v187 = v158;
        v189 = v158[2];
        v188 = v158[3];
        v190 = v189 + 1;
        if (v189 >= v188 >> 1)
        {
          v187 = sub_1002FAB90(v188 > 1, v189 + 1, 1, v158);
        }

        v15 = v275;
        v191 = v273;
        v187[2] = v190;
        sub_1002F9E84(v277, v187 + v191 + v189 * v163, type metadata accessor for Response);
        sub_1002F9F80(&v288);
        v192 = v297;
        v193 = v278;
        *(v278 + 128) = v296;
        *(v193 + 144) = v192;
        *(v193 + 160) = v298;
        *(v193 + 176) = v299;
        v194 = v293;
        *(v193 + 64) = v292;
        *(v193 + 80) = v194;
        v195 = v295;
        *(v193 + 96) = v294;
        *(v193 + 112) = v195;
        v196 = v289;
        *v193 = v288;
        *(v193 + 16) = v196;
        v197 = v291;
        *(v193 + 32) = v290;
        *(v193 + 48) = v197;
        swift_storeEnumTagMultiPayload();
        v198 = v187;
        v199 = v187[3];
        v200 = v189 + 2;
        if ((v189 + 2) > (v199 >> 1))
        {
          v198 = sub_1002FAB90(v199 > 1, v189 + 2, 1, v187);
        }

        v130 = v272;
        sub_1002F9A3C(v285, type metadata accessor for MessageData.BodyData);
        sub_1002F9A3C(v130, type metadata accessor for MessageData.BodySection);
        *(v198 + 16) = v200;
        v65 = v198;
        sub_1002F9E84(v278, v198 + v191 + v190 * v163, type metadata accessor for Response);
        v7 = v268;
      }

      v129 = (v129 + v274);
      v128 = v287 - 1;
    }

    while (v287 != 1);
  }

  v201 = v267;
  v202 = *(v267 + 160);
  v203 = *(v267 + 128);
  v335 = *(v267 + 144);
  v336 = v202;
  v204 = *(v267 + 160);
  v337 = *(v267 + 176);
  v205 = *(v267 + 96);
  v206 = *(v267 + 64);
  v331 = *(v267 + 80);
  v332 = v205;
  v207 = *(v267 + 96);
  v208 = *(v267 + 128);
  v333 = *(v267 + 112);
  v334 = v208;
  v209 = *(v267 + 32);
  v327 = *(v267 + 16);
  v328 = v209;
  v210 = *(v267 + 64);
  v212 = *(v267 + 16);
  v211 = *(v267 + 32);
  v329 = *(v267 + 48);
  v330 = v210;
  v296 = v335;
  v297 = v204;
  v298 = *(v267 + 176);
  v292 = v331;
  v293 = v207;
  v294 = v333;
  v295 = v203;
  v288 = v212;
  v289 = v211;
  v338 = *(v267 + 192);
  LOBYTE(v299) = *(v267 + 192);
  v290 = v329;
  v291 = v206;
  if (sub_10003EC1C(&v288) == 1)
  {
    v129 = v65;
    v213 = v265;
    v161 = v266;
  }

  else
  {
    v347 = v296;
    v348 = v297;
    v349 = v298;
    v350 = v299;
    v343 = v292;
    v344 = v293;
    v345 = v294;
    v346 = v295;
    v339 = v288;
    v340 = v289;
    v341 = v290;
    v342 = v291;
    sub_1002F9F44(&v339);
    v359 = v347;
    v360 = v348;
    v361 = v349;
    v362 = v350;
    v355 = v343;
    v356 = v344;
    v357 = v345;
    v358 = v346;
    v351 = v339;
    v352 = v340;
    v353 = v341;
    v354 = v342;
    sub_1002F9E70(&v351);
    v214 = v360;
    v215 = v263;
    *(v263 + 128) = v359;
    *(v215 + 144) = v214;
    *(v215 + 160) = v361;
    *(v215 + 176) = v362;
    v216 = v356;
    *(v215 + 64) = v355;
    *(v215 + 80) = v216;
    v217 = v358;
    *(v215 + 96) = v357;
    *(v215 + 112) = v217;
    v218 = v352;
    *v215 = v351;
    *(v215 + 16) = v218;
    v219 = v354;
    *(v215 + 32) = v353;
    *(v215 + 48) = v219;
    swift_storeEnumTagMultiPayload();
    v323 = v335;
    v324 = v336;
    v325 = v337;
    v326 = v338;
    v319 = v331;
    v320 = v332;
    v321 = v333;
    v322 = v334;
    v315 = v327;
    v316 = v328;
    v317 = v329;
    v318 = v330;
    sub_10000E268(&v327, &v303, &qword_1005CDFD0, &qword_1004EE450);
    sub_10003E6D4(&v315, &v303);
    v129 = v65;
    v220 = swift_isUniquelyReferenced_nonNull_native();
    v213 = v265;
    v161 = v266;
    if ((v220 & 1) == 0)
    {
      v129 = sub_1002FAB90(0, v129[2] + 1, 1, v129);
    }

    v222 = v129[2];
    v221 = v129[3];
    if (v222 >= v221 >> 1)
    {
      v129 = sub_1002FAB90(v221 > 1, v222 + 1, 1, v129);
    }

    sub_100025F40(&v327, &qword_1005CDFD0, &qword_1004EE450);
    v129[2] = v222 + 1;
    sub_1002F9E84(v263, v129 + ((*(v15 + 80) + 32) & ~*(v15 + 80)) + *(v15 + 72) * v222, type metadata accessor for Response);
  }

  v223 = *(v201 + 352);
  v224 = *(v201 + 320);
  v311 = *(v201 + 336);
  v312 = v223;
  v225 = *(v201 + 352);
  v313 = *(v201 + 368);
  v226 = *(v201 + 288);
  v227 = *(v201 + 256);
  v307 = *(v201 + 272);
  v308 = v226;
  v228 = *(v201 + 288);
  v229 = *(v201 + 320);
  v309 = *(v201 + 304);
  v310 = v229;
  v230 = *(v201 + 224);
  v303 = *(v201 + 208);
  v304 = v230;
  v231 = *(v201 + 256);
  v233 = *(v201 + 208);
  v232 = *(v201 + 224);
  v305 = *(v201 + 240);
  v306 = v231;
  v323 = v311;
  v324 = v225;
  v325 = *(v201 + 368);
  v319 = v307;
  v320 = v228;
  v321 = v309;
  v322 = v224;
  v315 = v233;
  v316 = v232;
  v314 = *(v201 + 384);
  v326 = *(v201 + 384);
  v317 = v305;
  v318 = v227;
  if (sub_10003EC1C(&v315) != 1)
  {
    v347 = v323;
    v348 = v324;
    v349 = v325;
    LOBYTE(v350) = v326;
    v343 = v319;
    v344 = v320;
    v345 = v321;
    v346 = v322;
    v339 = v315;
    v340 = v316;
    v341 = v317;
    v342 = v318;
    HIBYTE(v350) = 1;
    sub_1002F9F44(&v339);
    v359 = v347;
    v360 = v348;
    v361 = v349;
    v362 = v350;
    v355 = v343;
    v356 = v344;
    v357 = v345;
    v358 = v346;
    v351 = v339;
    v352 = v340;
    v353 = v341;
    v354 = v342;
    sub_1002F9E70(&v351);
    v234 = v360;
    v235 = v264;
    *(v264 + 128) = v359;
    *(v235 + 144) = v234;
    *(v235 + 160) = v361;
    *(v235 + 176) = v362;
    v236 = v356;
    *(v235 + 64) = v355;
    *(v235 + 80) = v236;
    v237 = v358;
    *(v235 + 96) = v357;
    *(v235 + 112) = v237;
    v238 = v352;
    *v235 = v351;
    *(v235 + 16) = v238;
    v239 = v354;
    *(v235 + 32) = v353;
    *(v235 + 48) = v239;
    swift_storeEnumTagMultiPayload();
    v301[8] = v311;
    v301[9] = v312;
    v301[10] = v313;
    v302 = v314;
    v301[4] = v307;
    v301[5] = v308;
    v301[6] = v309;
    v301[7] = v310;
    v301[0] = v303;
    v301[1] = v304;
    v301[2] = v305;
    v301[3] = v306;
    sub_10000E268(&v303, v300, &qword_1005CDFD0, &qword_1004EE450);
    sub_10003E6D4(v301, v300);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v129 = sub_1002FAB90(0, v129[2] + 1, 1, v129);
    }

    v241 = v129[2];
    v240 = v129[3];
    if (v241 >= v240 >> 1)
    {
      v129 = sub_1002FAB90(v240 > 1, v241 + 1, 1, v129);
    }

    sub_100025F40(&v303, &qword_1005CDFD0, &qword_1004EE450);
    v129[2] = v241 + 1;
    sub_1002F9E84(v264, v129 + ((*(v15 + 80) + 32) & ~*(v15 + 80)) + *(v15 + 72) * v241, type metadata accessor for Response);
  }

  v242 = *(v201 + 576);
  if (v242)
  {
    *&v339 = *(v201 + 568);
    *(&v339 + 1) = v242;
    sub_1002F9F30(&v339);
    v359 = v347;
    v360 = v348;
    v361 = v349;
    v362 = v350;
    v355 = v343;
    v356 = v344;
    v357 = v345;
    v358 = v346;
    v351 = v339;
    v352 = v340;
    v353 = v341;
    v354 = v342;
    sub_1002F9E70(&v351);
    v243 = v360;
    *(v213 + 128) = v359;
    *(v213 + 144) = v243;
    *(v213 + 160) = v361;
    *(v213 + 176) = v362;
    v244 = v356;
    *(v213 + 64) = v355;
    *(v213 + 80) = v244;
    v245 = v358;
    *(v213 + 96) = v357;
    *(v213 + 112) = v245;
    v246 = v352;
    *v213 = v351;
    *(v213 + 16) = v246;
    v247 = v354;
    *(v213 + 32) = v353;
    *(v213 + 48) = v247;
    swift_storeEnumTagMultiPayload();

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v129 = sub_1002FAB90(0, v129[2] + 1, 1, v129);
    }

    v249 = v129[2];
    v248 = v129[3];
    if (v249 >= v248 >> 1)
    {
      v129 = sub_1002FAB90(v248 > 1, v249 + 1, 1, v129);
    }

    v129[2] = v249 + 1;
    sub_1002F9E84(v213, v129 + ((*(v15 + 80) + 32) & ~*(v15 + 80)) + *(v15 + 72) * v249, type metadata accessor for Response);
  }

  sub_1002F9EEC(&v351);
  v250 = v360;
  *(v161 + 128) = v359;
  *(v161 + 144) = v250;
  *(v161 + 160) = v361;
  *(v161 + 176) = v362;
  v251 = v356;
  *(v161 + 64) = v355;
  *(v161 + 80) = v251;
  v252 = v358;
  *(v161 + 96) = v357;
  *(v161 + 112) = v252;
  v253 = v352;
  *v161 = v351;
  *(v161 + 16) = v253;
  v254 = v354;
  *(v161 + 32) = v353;
  *(v161 + 48) = v254;
  swift_storeEnumTagMultiPayload();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_112:
    v129 = sub_1002FAB90(0, v129[2] + 1, 1, v129);
  }

  v256 = v129[2];
  v255 = v129[3];
  if (v256 >= v255 >> 1)
  {
    v129 = sub_1002FAB90(v255 > 1, v256 + 1, 1, v129);
  }

  v129[2] = v256 + 1;
  sub_1002F9E84(v161, v129 + ((*(v15 + 80) + 32) & ~*(v15 + 80)) + *(v15 + 72) * v256, type metadata accessor for Response);
  return v129;
}

uint64_t UntaggedResponse.logIdentifier.getter()
{
  type metadata accessor for UntaggedResponse(0);
  sub_1004A6934();
  return 0;
}

unint64_t UntaggedResponse.name.getter()
{
  v1 = type metadata accessor for UntaggedResponse(0);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1002F99D4(v0, v4, type metadata accessor for UntaggedResponse);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  result = 0x535453495845;
  switch(EnumCaseMultiPayload)
  {
    case 1:
      sub_1002F9A3C(v4, type metadata accessor for UntaggedResponse);
      result = 20302;
      break;
    case 2:
      sub_1002F9A3C(v4, type metadata accessor for UntaggedResponse);
      result = 4473154;
      break;
    case 3:
      sub_1002F9A3C(v4, type metadata accessor for UntaggedResponse);
      result = 0x48545541455250;
      break;
    case 4:
      sub_1002F9A3C(v4, type metadata accessor for UntaggedResponse);
      result = 4544834;
      break;
    case 5:
      sub_1002F9A3C(v4, type metadata accessor for UntaggedResponse);
      result = 0x494C494241504143;
      break;
    case 6:
      sub_1002F9A3C(v4, type metadata accessor for UntaggedResponse);
      result = 0x44454C42414E45;
      break;
    case 7:
      sub_1002F9A3C(v4, type metadata accessor for UntaggedResponse);
      result = 1414744396;
      break;
    case 8:
      sub_1002F9A3C(v4, type metadata accessor for UntaggedResponse);
      result = 1112888140;
      break;
    case 9:
      sub_1002F9A3C(v4, type metadata accessor for UntaggedResponse);
      result = 0x535554415453;
      break;
    case 10:
      sub_1002F9A3C(v4, type metadata accessor for UntaggedResponse);
      result = 0x43415053454D414ELL;
      break;
    case 11:
      sub_1002F9A3C(v4, type metadata accessor for UntaggedResponse);
      result = 0x484352414553;
      break;
    case 12:
      sub_1002F9A3C(v4, type metadata accessor for UntaggedResponse);
      result = 0x48435241455345;
      break;
    case 13:
      sub_1002F9A3C(v4, type metadata accessor for UntaggedResponse);
      result = 0x5347414C46;
      break;
    case 14:
      sub_1002F9A3C(v4, type metadata accessor for UntaggedResponse);
      result = 0x4843544142444955;
      break;
    case 15:
      return result;
    case 16:
      result = 0x544E45434552;
      break;
    case 17:
      result = 0x45474E55505845;
      break;
    case 18:
      sub_1002F9A3C(v4, type metadata accessor for UntaggedResponse);
      result = 0x44454853494E4156;
      break;
    case 19:
    case 22:
      sub_1002F9A3C(v4, type metadata accessor for UntaggedResponse);
      result = 0xD000000000000011;
      break;
    case 20:
      sub_1002F9A3C(v4, type metadata accessor for UntaggedResponse);
      result = 0x4843544546;
      break;
    case 21:
      sub_1002F9A3C(v4, type metadata accessor for UntaggedResponse);
      result = 17481;
      break;
    default:
      sub_1002F9A3C(v4, type metadata accessor for UntaggedResponse);
      result = 19279;
      break;
  }

  return result;
}

uint64_t static CommandCompletionResponse.__derived_enum_equals(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  if (a4)
  {
    if (a4 == 1)
    {
      if (a8 == 1)
      {
        return static ResponseText.__derived_struct_equals(_:_:)(a1, a2);
      }
    }

    else if (a8 == 2)
    {
      return static ResponseText.__derived_struct_equals(_:_:)(a1, a2);
    }
  }

  else if (!a8)
  {
    return static ResponseText.__derived_struct_equals(_:_:)(a1, a2);
  }

  return 0;
}

uint64_t sub_1002F7ACC(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  v7 = *(a1 + 24);
  v8 = *a2;
  v9 = a2[1];
  v10 = a2[2];
  v11 = *(a2 + 24);
  if (v7)
  {
    if (v7 == 1)
    {
      if (v11 == 1)
      {
        return static ResponseText.__derived_struct_equals(_:_:)(v4, v5);
      }
    }

    else if (v11 == 2)
    {
      return static ResponseText.__derived_struct_equals(_:_:)(v4, v5);
    }
  }

  else if (!v11)
  {
    return static ResponseText.__derived_struct_equals(_:_:)(v4, v5);
  }

  return 0;
}

unint64_t CommandCompletionResponse.responseText.getter(unint64_t a1)
{
  sub_1000110B0(a1);

  return a1;
}

unint64_t sub_1002F7B68(unint64_t a1, unint64_t a2)
{
  v4 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v4 = a1;
  }

  v5 = 7;
  if (((a2 >> 60) & ((a1 & 0x800000000000000) == 0)) != 0)
  {
    v5 = 11;
  }

  v6 = v5 | (v4 << 16);
  v7 = sub_1002F7DA4(0xFuLL, a1, a2);
  v8 = sub_1002F7DA4(v6, a1, a2);
  result = v7;
  v10 = v7 >> 14;
  v11 = v8 >> 14;
  if (v10 < v8 >> 14)
  {
    for (i = 0; ; ++i)
    {
      v13 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      if ((a2 & 0x1000000000000000) != 0)
      {
        result = sub_1004A5884();
      }

      else
      {
        v14 = result >> 16;
        if ((a2 & 0x2000000000000000) != 0)
        {
          v28 = a1;
          v29 = a2 & 0xFFFFFFFFFFFFFFLL;
          v16 = *(&v28 + v14);
        }

        else
        {
          v15 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
          if ((a1 & 0x1000000000000000) == 0)
          {
            v15 = sub_1004A67E4();
          }

          v16 = *(v15 + v14);
        }

        v17 = v16;
        v18 = __clz(v16 ^ 0xFF) - 24;
        if (v17 >= 0)
        {
          LOBYTE(v18) = 1;
        }

        result = ((v14 + v18) << 16) | 5;
      }

      if (v11 <= result >> 14)
      {
        return v13;
      }
    }

    __break(1u);
LABEL_40:
    __break(1u);
    return result;
  }

  if (v11 < v10)
  {
    v13 = 0;
    while (!__OFSUB__(v13--, 1))
    {
      if ((a2 & 0x1000000000000000) != 0)
      {
        result = sub_1004A5894();
      }

      else
      {
        if ((a2 & 0x2000000000000000) != 0)
        {
          v28 = a1;
          v29 = a2 & 0xFFFFFFFFFFFFFFLL;
          if ((*(&v28 + (result >> 16) - 1) & 0xC0) == 0x80)
          {
            v25 = &v28 + (result >> 16) - 2;
            v24 = 1;
            do
            {
              ++v24;
              v26 = *v25--;
            }

            while ((v26 & 0xC0) == 0x80);
          }

          else
          {
            v24 = 1;
          }
        }

        else
        {
          v20 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
          if ((a1 & 0x1000000000000000) == 0)
          {
            v27 = result;
            v20 = sub_1004A67E4();
            result = v27;
          }

          v21 = 0;
          v22 = v20 + (result >> 16) - 1;
          do
          {
            v23 = *(v22 + v21--) & 0xC0;
          }

          while (v23 == 128);
          v24 = -v21;
        }

        result = (result - (v24 << 16)) & 0xFFFFFFFFFFFF0000 | 5;
      }

      if (v11 >= result >> 14)
      {
        return v13;
      }
    }

    goto LABEL_40;
  }

  return 0;
}

unint64_t sub_1002F7DA4(unint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result & 1) == 0 || (result & 0xC) == 4 << v3)
  {
    goto LABEL_9;
  }

  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 < result >> 16)
  {
    __break(1u);
LABEL_9:
    result = sub_1002F7E3C(result, a2, a3);
    if ((result & 1) == 0)
    {
      return result & 0xC | sub_1001E1418(result, a2, a3) & 0xFFFFFFFFFFFFFFF3 | 1;
    }
  }

  return result;
}

unint64_t sub_1002F7E3C(unint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result & 0xC) == 4 << v3)
  {
    v5 = a2;
    v6 = a3;
    result = sub_10010C210(result, a2, a3);
    a2 = v5;
    a3 = v6;
  }

  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 < result >> 16)
  {
    __break(1u);
  }

  return result;
}

uint64_t _s13IMAP2Protocol16UntaggedResponseO21__derived_enum_equalsySbAC_ACtFZ_0(uint64_t a1, unint64_t *a2)
{
  v194 = a1;
  v195 = a2;
  v2 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v175 = &v174 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v174 = &v174 - v6;
  v193 = type metadata accessor for UntaggedResponse(0);
  v7 = *(*(v193 - 8) + 64);
  __chkstk_darwin(v193);
  v190 = &v174 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v189 = (&v174 - v10);
  __chkstk_darwin(v11);
  v188 = &v174 - v12;
  __chkstk_darwin(v13);
  v192 = &v174 - v14;
  __chkstk_darwin(v15);
  v191 = &v174 - v16;
  __chkstk_darwin(v17);
  v187 = (&v174 - v18);
  __chkstk_darwin(v19);
  v186 = (&v174 - v20);
  __chkstk_darwin(v21);
  v184 = (&v174 - v22);
  __chkstk_darwin(v23);
  v185 = (&v174 - v24);
  __chkstk_darwin(v25);
  v183 = (&v174 - v26);
  __chkstk_darwin(v27);
  v182 = (&v174 - v28);
  __chkstk_darwin(v29);
  v180 = (&v174 - v30);
  __chkstk_darwin(v31);
  v179 = (&v174 - v32);
  __chkstk_darwin(v33);
  v181 = &v174 - v34;
  __chkstk_darwin(v35);
  v178 = (&v174 - v36);
  __chkstk_darwin(v37);
  v177 = (&v174 - v38);
  __chkstk_darwin(v39);
  v176 = (&v174 - v40);
  __chkstk_darwin(v41);
  v43 = (&v174 - v42);
  __chkstk_darwin(v44);
  v46 = (&v174 - v45);
  __chkstk_darwin(v47);
  v49 = (&v174 - v48);
  __chkstk_darwin(v50);
  v52 = (&v174 - v51);
  __chkstk_darwin(v53);
  v55 = (&v174 - v54);
  __chkstk_darwin(v56);
  v58 = (&v174 - v57);
  v59 = sub_10000C9C0(&qword_1005D8418, &qword_1004F46F8);
  v60 = *(*(v59 - 8) + 64);
  __chkstk_darwin(v59 - 8);
  v62 = &v174 - v61;
  v64 = (&v174 + *(v63 + 56) - v61);
  sub_1002F99D4(v194, &v174 - v61, type metadata accessor for UntaggedResponse);
  v65 = v195;
  v195 = v64;
  sub_1002F99D4(v65, v64, type metadata accessor for UntaggedResponse);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_1002F99D4(v62, v55, type metadata accessor for UntaggedResponse);
      v81 = *v55;
      v121 = v55[2];
      v122 = v195;
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        goto LABEL_33;
      }

      v84 = v55[1];
      v66 = v62;
      v115 = *v122;
      v123 = v122[1];
      v124 = v122[2];
      goto LABEL_29;
    case 2u:
      sub_1002F99D4(v62, v52, type metadata accessor for UntaggedResponse);
      v66 = v62;
      v67 = *v52;
      v104 = v52[2];
      v105 = v195;
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        goto LABEL_3;
      }

      v106 = v52[1];
      v108 = *v105;
      v107 = v105[1];
      v109 = v105[2];
      v76 = static ResponseText.__derived_struct_equals(_:_:)(v67, v106);
      sub_10001114C(v108);

      v110 = v67;
      goto LABEL_30;
    case 3u:
      sub_1002F99D4(v62, v49, type metadata accessor for UntaggedResponse);
      v81 = *v49;
      v113 = v49[2];
      v83 = v195;
      if (swift_getEnumCaseMultiPayload() != 3)
      {
        goto LABEL_33;
      }

      v84 = v49[1];
      goto LABEL_24;
    case 4u:
      sub_1002F99D4(v62, v46, type metadata accessor for UntaggedResponse);
      v81 = *v46;
      v82 = v46[2];
      v83 = v195;
      if (swift_getEnumCaseMultiPayload() == 4)
      {
        v84 = v46[1];
LABEL_24:
        v66 = v62;
        v115 = *v83;
        v114 = v83[1];
        v116 = v83[2];
LABEL_29:
        v76 = static ResponseText.__derived_struct_equals(_:_:)(v81, v84);
        sub_10001114C(v115);

        v110 = v81;
LABEL_30:
        sub_10001114C(v110);
        goto LABEL_31;
      }

LABEL_33:
      sub_10001114C(v81);
LABEL_50:

      goto LABEL_73;
    case 5u:
      sub_1002F99D4(v62, v43, type metadata accessor for UntaggedResponse);
      v129 = *v43;
      v130 = v195;
      if (swift_getEnumCaseMultiPayload() != 5)
      {
        goto LABEL_50;
      }

      goto LABEL_48;
    case 6u:
      v144 = v176;
      sub_1002F99D4(v62, v176, type metadata accessor for UntaggedResponse);
      v129 = *v144;
      v130 = v195;
      if (swift_getEnumCaseMultiPayload() != 6)
      {
        goto LABEL_50;
      }

LABEL_48:
      v80 = sub_1001CE84C(v129, *v130);
      goto LABEL_49;
    case 7u:
      v117 = v177;
      sub_1002F99D4(v62, v177, type metadata accessor for UntaggedResponse);
      v118 = v117[1];
      v196[0] = *v117;
      v196[1] = v118;
      v196[2] = v117[2];
      v119 = v195;
      if (swift_getEnumCaseMultiPayload() == 7)
      {
        goto LABEL_26;
      }

      goto LABEL_56;
    case 8u:
      v155 = v178;
      sub_1002F99D4(v62, v178, type metadata accessor for UntaggedResponse);
      v156 = v155[1];
      v196[0] = *v155;
      v196[1] = v156;
      v196[2] = v155[2];
      v119 = v195;
      if (swift_getEnumCaseMultiPayload() == 8)
      {
LABEL_26:
        v120 = *(v119 + 1);
        v197[0] = *v119;
        v197[1] = v120;
        v197[2] = *(v119 + 2);
        v76 = static MailboxInfo.__derived_struct_equals(_:_:)(v196, v197);
        sub_1002F9AF0(v197);
        sub_1002F9AF0(v196);
        goto LABEL_62;
      }

LABEL_56:
      sub_1002F9AF0(v196);
      goto LABEL_73;
    case 9u:
      v89 = v181;
      sub_1002F99D4(v62, v181, type metadata accessor for UntaggedResponse);
      v90 = *v89;
      v91 = *(v89 + 8);
      v92 = *(v89 + 96);
      v196[4] = *(v89 + 80);
      v196[5] = v92;
      v93 = *(v89 + 128);
      v196[6] = *(v89 + 112);
      v196[7] = v93;
      v94 = *(v89 + 32);
      v196[0] = *(v89 + 16);
      v196[1] = v94;
      v95 = *(v89 + 64);
      v196[2] = *(v89 + 48);
      v196[3] = v95;
      v96 = v195;
      if (swift_getEnumCaseMultiPayload() != 9)
      {
        sub_10009A0FC(v196);

        goto LABEL_73;
      }

      v97 = *v96;
      v98 = *(v96 + 2);
      v99 = *(v96 + 6);
      v197[4] = *(v96 + 5);
      v197[5] = v99;
      v100 = *(v96 + 8);
      v197[6] = *(v96 + 7);
      v197[7] = v100;
      v101 = *(v96 + 2);
      v197[0] = *(v96 + 1);
      v197[1] = v101;
      v102 = *(v96 + 4);
      v197[2] = *(v96 + 3);
      v197[3] = v102;
      if ((v91 | (v91 << 32)) == (v98 | (v98 << 32)))
      {
        v103 = sub_1000FFC98(v90, v97);

        if (v103)
        {
          v76 = static MailboxStatus.__derived_struct_equals(_:_:)(v196, v197);
          sub_10009A0FC(v196);
          sub_10009A0FC(v197);
          goto LABEL_62;
        }

        sub_10009A0FC(v196);
        sub_10009A0FC(v197);
      }

      else
      {
        sub_10009A0FC(v196);
        sub_10009A0FC(v197);
      }

      sub_1002F9A3C(v62, type metadata accessor for UntaggedResponse);
      goto LABEL_74;
    case 0xAu:
      v149 = v179;
      sub_1002F99D4(v62, v179, type metadata accessor for UntaggedResponse);
      v150 = *v149;
      v151 = v149[1];
      v152 = v62;
      v153 = v149[2];
      v154 = v195;
      if (swift_getEnumCaseMultiPayload() == 10)
      {
        v76 = static NamespaceResponse.__derived_struct_equals(_:_:)(v150, v151, v153, *v154, v154[1], v154[2]);

        sub_1002F9A3C(v152, type metadata accessor for UntaggedResponse);
        return v76 & 1;
      }

      v62 = v152;
      goto LABEL_73;
    case 0xBu:
      v77 = v180;
      sub_1002F99D4(v62, v180, type metadata accessor for UntaggedResponse);
      v78 = *v77;
      v79 = v195;
      if (swift_getEnumCaseMultiPayload() != 11)
      {
        goto LABEL_50;
      }

      v80 = sub_1001045E0(v78, *v79);
      goto LABEL_49;
    case 0xCu:
      v85 = v182;
      sub_1002F99D4(v62, v182, type metadata accessor for UntaggedResponse);
      v86 = v85[1];
      v196[0] = *v85;
      v196[1] = v86;
      v196[2] = v85[2];
      v87 = v195;
      if (swift_getEnumCaseMultiPayload() == 12)
      {
        v88 = *(v87 + 1);
        v197[0] = *v87;
        v197[1] = v88;
        v197[2] = *(v87 + 2);
        v76 = static ExtendedSearchResponse.__derived_struct_equals(_:_:)(v196, v197);
        sub_100016C68(v196);
        sub_100016C68(v197);
        goto LABEL_62;
      }

      sub_100016C68(v196);
      goto LABEL_73;
    case 0xDu:
      v141 = v183;
      sub_1002F99D4(v62, v183, type metadata accessor for UntaggedResponse);
      v142 = *v141;
      v143 = v195;
      if (swift_getEnumCaseMultiPayload() != 13)
      {
        goto LABEL_50;
      }

      v80 = sub_100083750(v142, *v143);
LABEL_49:
      v76 = v80;

      goto LABEL_62;
    case 0xEu:
      v72 = v185;
      sub_1002F99D4(v62, v185, type metadata accessor for UntaggedResponse);
      v73 = v72[1];
      v196[0] = *v72;
      v196[1] = v73;
      v196[2] = v72[2];
      v74 = v195;
      if (swift_getEnumCaseMultiPayload() == 14)
      {
        v75 = *(v74 + 1);
        v197[0] = *v74;
        v197[1] = v75;
        v197[2] = *(v74 + 2);
        v76 = static UIDBatchesResponse.__derived_struct_equals(_:_:)(v196, v197);
        v205[0] = v196[0];
        sub_1002F9A9C(v205);
        v202 = *&v196[1];
        v203 = DWORD2(v196[1]);
        sub_100025F40(&v202, &qword_1005D7E08, &qword_1004F4700);
        v204 = *(&v196[2] + 1);
        v66 = v62;
        sub_100025F40(&v204, &qword_1005D8420, &qword_1004F4708);
        v200 = v197[0];
        sub_1002F9A9C(&v200);
        v198 = *&v197[1];
        v199 = DWORD2(v197[1]);
        sub_100025F40(&v198, &qword_1005D7E08, &qword_1004F4700);
        v201 = *(&v197[2] + 1);
        sub_100025F40(&v201, &qword_1005D8420, &qword_1004F4708);
        goto LABEL_32;
      }

      v168 = v72[1];
      v197[0] = *v72;
      v197[1] = v168;
      LOBYTE(v197[2]) = *(v72 + 32);
      v205[0] = v197[0];
      sub_1002F9A9C(v205);
      *&v200 = *&v197[1];
      DWORD2(v200) = DWORD2(v197[1]);
      sub_100025F40(&v200, &qword_1005D7E08, &qword_1004F4700);
      v202 = *(&v196[2] + 1);
      sub_100025F40(&v202, &qword_1005D8420, &qword_1004F4708);
      goto LABEL_73;
    case 0xFu:
      v70 = v184;
      sub_1002F99D4(v62, v184, type metadata accessor for UntaggedResponse);
      v71 = v195;
      if (swift_getEnumCaseMultiPayload() == 15)
      {
        goto LABEL_21;
      }

      goto LABEL_73;
    case 0x10u:
      v70 = v186;
      sub_1002F99D4(v62, v186, type metadata accessor for UntaggedResponse);
      v71 = v195;
      if (swift_getEnumCaseMultiPayload() != 16)
      {
        goto LABEL_73;
      }

LABEL_21:
      v111 = *v70;
      v112 = *v71;
      goto LABEL_36;
    case 0x11u:
      v125 = v187;
      sub_1002F99D4(v62, v187, type metadata accessor for UntaggedResponse);
      v126 = v195;
      if (swift_getEnumCaseMultiPayload() != 17)
      {
        goto LABEL_73;
      }

      v111 = *v126;
      v112 = *v125;
LABEL_36:
      v76 = v111 == v112;
      goto LABEL_62;
    case 0x12u:
      v145 = v191;
      sub_1002F99D4(v62, v191, type metadata accessor for UntaggedResponse);
      v146 = v195;
      if (swift_getEnumCaseMultiPayload() != 18)
      {
        goto LABEL_63;
      }

      v147 = v146;
      v148 = v174;
      goto LABEL_61;
    case 0x13u:
      v145 = v192;
      sub_1002F99D4(v62, v192, type metadata accessor for UntaggedResponse);
      v167 = v195;
      if (swift_getEnumCaseMultiPayload() != 19)
      {
LABEL_63:
        sub_100025F40(v145, &unk_1005D91B0, &unk_1004CF400);
        goto LABEL_73;
      }

      v147 = v167;
      v148 = v175;
LABEL_61:
      sub_100020950(v147, v148);
      sub_100016D2C();
      v76 = sub_1004A7034();
      sub_100025F40(v148, &unk_1005D91B0, &unk_1004CF400);
      sub_100025F40(v145, &unk_1005D91B0, &unk_1004CF400);
      goto LABEL_62;
    case 0x14u:
      v127 = v188;
      sub_1002F99D4(v62, v188, type metadata accessor for UntaggedResponse);
      memcpy(v196, v127, 0x268uLL);
      v128 = v195;
      if (swift_getEnumCaseMultiPayload() != 20)
      {
        sub_100025D5C(v196);
        goto LABEL_73;
      }

      memcpy(v197, v128, 0x268uLL);
      v76 = _s13IMAP2Protocol11MessageDataV23__derived_struct_equalsySbAC_ACtFZ_0(v196);
      sub_100025D5C(v197);
      sub_100025D5C(v196);
LABEL_62:
      sub_1002F9A3C(v62, type metadata accessor for UntaggedResponse);
      return v76 & 1;
    case 0x15u:
      v131 = v189;
      sub_1002F99D4(v62, v189, type metadata accessor for UntaggedResponse);
      v132 = *v131;
      v133 = v131[1];
      v134 = v131[2];
      v135 = v195;
      if (swift_getEnumCaseMultiPayload() != 21)
      {

        goto LABEL_73;
      }

      v136 = v62;
      v137 = *v135;
      v138 = v135[1];
      v139 = v135[2];
      if (sub_10020FB40(v133, v138))
      {
        v140 = sub_10020FA9C(v134, v139);

        if (v140)
        {
          sub_1002F9A3C(v136, type metadata accessor for UntaggedResponse);
          v76 = 1;
          return v76 & 1;
        }
      }

      else
      {
      }

      sub_1002F9A3C(v136, type metadata accessor for UntaggedResponse);
      goto LABEL_74;
    case 0x16u:
      v157 = v190;
      sub_1002F99D4(v62, v190, type metadata accessor for UntaggedResponse);
      v158 = *v157;
      v159 = *(v157 + 8);
      v66 = v62;
      v160 = *(v157 + 16);
      v161 = *(v157 + 24);
      v162 = v195;
      if (swift_getEnumCaseMultiPayload() == 22)
      {
        v194 = v66;
        v163 = *v162;
        v164 = v162[1];
        v165 = v162[2];
        v166 = *(v162 + 24);
        v76 = static ApplePushService.__derived_enum_equals(_:_:)(v158, v159, v160, v161, *v162, v164, v165, v166);
        sub_100208C4C(v163, v164, v165, v166);
        sub_100208C4C(v158, v159, v160, v161);
        sub_1002F9A3C(v194, type metadata accessor for UntaggedResponse);
        return v76 & 1;
      }

      sub_100208C4C(v158, v159, v160, v161);
      goto LABEL_72;
    default:
      sub_1002F99D4(v62, v58, type metadata accessor for UntaggedResponse);
      v66 = v62;
      v67 = *v58;
      v68 = v58[2];
      v69 = v195;
      if (swift_getEnumCaseMultiPayload())
      {
LABEL_3:
        sub_10001114C(v67);

LABEL_72:
        v62 = v66;
LABEL_73:
        sub_100025F40(v62, &qword_1005D8418, &qword_1004F46F8);
LABEL_74:
        v76 = 0;
      }

      else
      {
        v170 = v58[1];
        v172 = *v69;
        v171 = v69[1];
        v173 = v69[2];
        v76 = static ResponseText.__derived_struct_equals(_:_:)(v67, v170);
        sub_10001114C(v172);

        sub_10001114C(v67);
LABEL_31:

LABEL_32:
        sub_1002F9A3C(v66, type metadata accessor for UntaggedResponse);
      }

      return v76 & 1;
  }
}

uint64_t _s13IMAP2Protocol8ResponseO21__derived_enum_equalsySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UntaggedResponse(0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = (&v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for Response(0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v44 - v13;
  v15 = sub_10000C9C0(&qword_1005D8410, &unk_1004F46E8);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v18 = &v44 - v17;
  v20 = &v44 + *(v19 + 56) - v17;
  sub_1002F99D4(a1, &v44 - v17, type metadata accessor for Response);
  sub_1002F99D4(a2, v20, type metadata accessor for Response);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1002F99D4(v18, v11, type metadata accessor for Response);
    v21 = *(v11 + 1);
    v23 = *(v11 + 1);
    v22 = *(v11 + 2);
    v24 = *(v11 + 3);
    v25 = v11[32];
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v26 = *(v20 + 3);
      v27 = v20[32];
      if (*v11 != *v20 || v21 != *(v20 + 1))
      {
        goto LABEL_20;
      }

      if (v25)
      {
        if (v25 == 1)
        {
          if (v27 == 1)
          {
            v28 = *(v20 + 1);
            v29 = *(v20 + 2);
            v30 = v26;
            v31 = static ResponseText.__derived_struct_equals(_:_:)(v23, v22);
            sub_100173584(v28, v29, v30, 1u);
            v32 = v23;
            v33 = v22;
            v34 = v24;
            v35 = 1;
            goto LABEL_18;
          }

LABEL_20:
          sub_100173584(*(v20 + 1), *(v20 + 2), v26, v27);
          sub_100173584(v23, v22, v24, v25);
LABEL_21:
          sub_1002F9A3C(v18, type metadata accessor for Response);
          goto LABEL_22;
        }

        if (v27 != 2)
        {
          goto LABEL_20;
        }

        v40 = *(v20 + 1);
        v41 = *(v20 + 2);
        v42 = v26;
        v31 = static ResponseText.__derived_struct_equals(_:_:)(v23, v22);
        sub_100173584(v40, v41, v42, 2u);
        v32 = v23;
        v33 = v22;
        v34 = v24;
        v35 = 2;
      }

      else
      {
        if (v20[32])
        {
          goto LABEL_20;
        }

        v37 = *(v20 + 1);
        v38 = *(v20 + 2);
        v39 = v26;
        v31 = static ResponseText.__derived_struct_equals(_:_:)(v23, v22);
        sub_100173584(v37, v38, v39, 0);
        v32 = v23;
        v33 = v22;
        v34 = v24;
        v35 = 0;
      }

LABEL_18:
      sub_100173584(v32, v33, v34, v35);
      if (v31)
      {
        sub_1002F9A3C(v18, type metadata accessor for Response);
        v36 = 1;
        return v36 & 1;
      }

      goto LABEL_21;
    }

    sub_100173584(v23, v22, v24, v25);
LABEL_12:
    sub_100025F40(v18, &qword_1005D8410, &unk_1004F46E8);
LABEL_22:
    v36 = 0;
    return v36 & 1;
  }

  sub_1002F99D4(v18, v14, type metadata accessor for Response);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1002F9A3C(v14, type metadata accessor for UntaggedResponse);
    goto LABEL_12;
  }

  sub_1002F9E84(v20, v7, type metadata accessor for UntaggedResponse);
  v36 = _s13IMAP2Protocol16UntaggedResponseO21__derived_enum_equalsySbAC_ACtFZ_0(v14, v7);
  sub_1002F9A3C(v7, type metadata accessor for UntaggedResponse);
  sub_1002F9A3C(v14, type metadata accessor for UntaggedResponse);
  sub_1002F9A3C(v18, type metadata accessor for Response);
  return v36 & 1;
}

void sub_1002F962C()
{
  sub_100050E14(319, &qword_1005D5250);
  if (v0 <= 0x3F)
  {
    sub_1002F997C(319, &qword_1005D8318);
    if (v1 <= 0x3F)
    {
      sub_100050E14(319, &qword_1005D8320);
      if (v2 <= 0x3F)
      {
        sub_1002F9850(319, &qword_1005D8328, sub_1002F97FC, &type metadata for Flag, &type metadata accessor for Set);
        if (v3 <= 0x3F)
        {
          sub_1002F9850(319, &qword_1005CDDC0, sub_100016948, &type metadata for UID, type metadata accessor for MessageIdentifierSet);
          if (v4 <= 0x3F)
          {
            sub_1002E8F98();
            if (v5 <= 0x3F)
            {
              swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
            }
          }
        }
      }
    }
  }
}

unint64_t sub_1002F97FC()
{
  result = qword_1005D8330;
  if (!qword_1005D8330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D8330);
  }

  return result;
}

void sub_1002F9850(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

uint64_t type metadata accessor for Response(uint64_t a1)
{
  return sub_10002A984(a1, &unk_1005D83D0);
}

{
  return sub_10002A984(a1, qword_1005DD4E8);
}

void sub_1002F98F0()
{
  type metadata accessor for UntaggedResponse(319);
  if (v0 <= 0x3F)
  {
    sub_1002F997C(319, &unk_1005D83E0);
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_1002F997C(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v4)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t sub_1002F99D4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1002F9A3C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

int8x16_t sub_1002F9B44(int8x16_t *a1)
{
  v1 = a1[4].i64[1] & 1;
  v2 = a1[5].i64[1] & 1;
  v3 = a1[6].i64[1] & 1;
  v4 = a1[7].i64[1] & 1 | 0xA000000000000000;
  result = vandq_s8(a1[3], xmmword_1004DDD00);
  a1[3] = result;
  a1[4].i64[1] = v1;
  a1[5].i64[1] = v2;
  a1[6].i64[1] = v3;
  a1[7].i64[1] = v4;
  return result;
}

int8x16_t sub_1002F9BB4(int8x16_t *a1)
{
  v1 = a1[4].i64[1] & 1;
  v2 = a1[5].i64[1] & 1;
  v3 = a1[6].i64[1] & 1;
  v4 = a1[7].i64[1] & 1 | 0x7000000000000000;
  result = vandq_s8(a1[3], xmmword_1004DDD00);
  a1[3] = result;
  a1[4].i64[1] = v1;
  a1[5].i64[1] = v2;
  a1[6].i64[1] = v3;
  a1[7].i64[1] = v4;
  return result;
}

int8x16_t sub_1002F9C00(int8x16_t *a1)
{
  v1 = a1[4].i64[1] & 1;
  v2 = a1[5].i64[1] & 1;
  v3 = a1[6].i64[1] & 1;
  v4 = a1[7].i64[1] & 1 | 0x6000000000000000;
  result = vandq_s8(a1[3], xmmword_1004DDD00);
  a1[3] = result;
  a1[4].i64[1] = v1;
  a1[5].i64[1] = v2;
  a1[6].i64[1] = v3;
  a1[7].i64[1] = v4;
  return result;
}

int8x16_t sub_1002F9C4C(int8x16_t *a1)
{
  v1 = a1[4].i64[1] & 1;
  v2 = a1[5].i64[1] & 1;
  v3 = a1[6].i64[1] & 1;
  v4 = a1[7].i64[1] & 1;
  result = vandq_s8(a1[3], xmmword_1004DDD00);
  a1[3] = result;
  a1[4].i64[1] = v1;
  a1[5].i64[1] = v2;
  a1[6].i64[1] = v3;
  a1[7].i64[1] = v4;
  return result;
}

int8x16_t sub_1002F9C94(int8x16_t *a1)
{
  v1 = a1[4].i64[1] & 1;
  v2 = a1[5].i64[1] & 1;
  v3 = a1[6].i64[1] & 1;
  v4 = a1[7].i64[1] & 1 | 0x4000000000000000;
  result = vandq_s8(a1[3], xmmword_1004DDD00);
  a1[3] = result;
  a1[4].i64[1] = v1;
  a1[5].i64[1] = v2;
  a1[6].i64[1] = v3;
  a1[7].i64[1] = v4;
  return result;
}

int8x16_t sub_1002F9CE0(int8x16_t *a1)
{
  v1 = a1[4].i64[1] & 1;
  v2 = a1[5].i64[1] & 1;
  v3 = a1[6].i64[1] & 1;
  v4 = a1[7].i64[1] & 1 | 0x3000000000000000;
  result = vandq_s8(a1[3], xmmword_1004DDD00);
  a1[3] = result;
  a1[4].i64[1] = v1;
  a1[5].i64[1] = v2;
  a1[6].i64[1] = v3;
  a1[7].i64[1] = v4;
  return result;
}

int8x16_t sub_1002F9D2C(int8x16_t *a1)
{
  v1 = a1[4].i64[1] & 1;
  v2 = a1[5].i64[1] & 1;
  v3 = a1[6].i64[1] & 1;
  v4 = a1[7].i64[1] & 1 | 0x8000000000000000;
  result = vandq_s8(a1[3], xmmword_1004DDD00);
  a1[3] = result;
  a1[4].i64[1] = v1;
  a1[5].i64[1] = v2;
  a1[6].i64[1] = v3;
  a1[7].i64[1] = v4;
  return result;
}

int8x16_t sub_1002F9D78(int8x16_t *a1)
{
  v1 = a1[4].i64[1] & 1;
  v2 = a1[5].i64[1] & 1;
  v3 = a1[6].i64[1] & 1;
  v4 = a1[7].i64[1] & 1 | 0x5000000000000000;
  result = vandq_s8(a1[3], xmmword_1004DDD00);
  a1[3] = result;
  a1[4].i64[1] = v1;
  a1[5].i64[1] = v2;
  a1[6].i64[1] = v3;
  a1[7].i64[1] = v4;
  return result;
}

int8x16_t sub_1002F9DC4(int8x16_t *a1)
{
  v1 = a1[4].i64[1] & 1;
  v2 = a1[5].i64[1] & 1;
  v3 = a1[6].i64[1] & 1;
  v4 = a1[7].i64[1] & 1 | 0x2000000000000000;
  result = vandq_s8(a1[3], xmmword_1004DDD00);
  a1[3] = result;
  a1[4].i64[1] = v1;
  a1[5].i64[1] = v2;
  a1[6].i64[1] = v3;
  a1[7].i64[1] = v4;
  return result;
}

int8x16_t sub_1002F9E10(int8x16_t *a1)
{
  v1 = a1[4].i64[1] & 1;
  v2 = a1[5].i64[1] & 1;
  v3 = a1[6].i64[1] & 1;
  v4 = a1[7].i64[1] & 1 | 0x1000000000000000;
  result = vandq_s8(a1[3], xmmword_1004DDD00);
  a1[3] = result;
  a1[4].i64[1] = v1;
  a1[5].i64[1] = v2;
  a1[6].i64[1] = v3;
  a1[7].i64[1] = v4;
  return result;
}

uint64_t sub_1002F9E84(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

double sub_1002F9EEC(uint64_t a1)
{
  *a1 = 1;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0;
  *(a1 + 176) = 2560;
  return result;
}

double sub_1002F9F80(uint64_t a1)
{
  result = 0.0;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 176) = 2560;
  return result;
}

double sub_1002FA08C()
{
  v0 = sub_1002FBA8C(_swiftEmptyArrayStorage);
  sub_1002FBC6C(v0, v1, v2, v4);
  xmmword_1005DE230 = v10;
  unk_1005DE240 = v11;
  xmmword_1005DE250 = v12;
  xmmword_1005DE1F0 = v6;
  unk_1005DE200 = v7;
  xmmword_1005DE210 = v8;
  unk_1005DE220 = v9;
  static ServerID.empty = v4[0];
  unk_1005DE1C0 = v4[1];
  result = *&v5;
  xmmword_1005DE1D0 = v4[2];
  unk_1005DE1E0 = v5;
  return result;
}

__n128 ServerID.init(_:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_1002FBC6C(a1, a2, a3, v10);
  v5 = v10[9];
  *(a4 + 128) = v10[8];
  *(a4 + 144) = v5;
  *(a4 + 160) = v10[10];
  v6 = v10[5];
  *(a4 + 64) = v10[4];
  *(a4 + 80) = v6;
  v7 = v10[7];
  *(a4 + 96) = v10[6];
  *(a4 + 112) = v7;
  v8 = v10[1];
  *a4 = v10[0];
  *(a4 + 16) = v8;
  result = v10[3];
  *(a4 + 32) = v10[2];
  *(a4 + 48) = result;
  return result;
}

__int128 *ServerID.empty.unsafeMutableAddressor()
{
  if (qword_1005D7D10 != -1)
  {
    swift_once();
  }

  return &static ServerID.empty;
}

uint64_t static ServerID.empty.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = a1;
  if (qword_1005D7D10 != -1)
  {
    swift_once();
    v2 = a1;
  }

  return sub_10010E800(&static ServerID.empty, v2);
}

uint64_t ServerID.os.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t ServerID.os.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t ServerID.osVersion.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 56);

  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return result;
}

uint64_t ServerID.vendor.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 72);

  *(v2 + 64) = a1;
  *(v2 + 72) = a2;
  return result;
}

uint64_t ServerID.address.getter()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 104);

  return v1;
}

uint64_t ServerID.address.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 104);

  *(v2 + 96) = a1;
  *(v2 + 104) = a2;
  return result;
}

uint64_t ServerID.date.getter()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 120);

  return v1;
}

uint64_t ServerID.date.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 120);

  *(v2 + 112) = a1;
  *(v2 + 120) = a2;
  return result;
}

uint64_t ServerID.command.getter()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 136);

  return v1;
}

uint64_t ServerID.command.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 136);

  *(v2 + 128) = a1;
  *(v2 + 136) = a2;
  return result;
}

uint64_t ServerID.arguments.getter()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 152);

  return v1;
}

uint64_t ServerID.arguments.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 152);

  *(v2 + 144) = a1;
  *(v2 + 152) = a2;
  return result;
}

uint64_t ServerID.environment.getter()
{
  v1 = *(v0 + 160);
  v2 = *(v0 + 168);

  return v1;
}

uint64_t ServerID.environment.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 168);

  *(v2 + 160) = a1;
  *(v2 + 168) = a2;
  return result;
}

uint64_t sub_1002FA558(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[9];
  v13[8] = a1[8];
  v13[9] = v2;
  v13[10] = a1[10];
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
  v14[8] = a2[8];
  v14[9] = v7;
  v14[10] = a2[10];
  v8 = a2[5];
  v14[4] = a2[4];
  v14[5] = v8;
  v9 = a2[7];
  v14[6] = a2[6];
  v14[7] = v9;
  v10 = a2[1];
  v14[0] = *a2;
  v14[1] = v10;
  v11 = a2[3];
  v14[2] = a2[2];
  v14[3] = v11;
  return _s13IMAP2Protocol8ServerIDV23__derived_struct_equalsySbAC_ACtFZ_0(v13, v14) & 1;
}

uint64_t sub_1002FA5EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a4 + 16);
  if (!a3)
  {
    if (v9)
    {
      v11 = 0;
      for (i = (a4 + 40); ; i += 2)
      {
        result = *(i - 1);
        if (result == a1 && *i == a2)
        {
          break;
        }

        result = sub_1004A6D34();
        if (result)
        {
          break;
        }

        if (v9 == ++v11)
        {
          return 0;
        }
      }

      goto LABEL_4;
    }

    return 0;
  }

  v11 = sub_1001E74AC(a1, a2, a4 + 32, v9, (a3 + 16));
  v13 = v12;

  if (v13)
  {
    return 0;
  }

  if ((v11 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_18;
  }

LABEL_4:
  if (v11 < *(a5 + 16))
  {
    v15 = a5 + 16 * v11;
    v16 = *(v15 + 32);
    v17 = *(v15 + 40);

    return v16;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t ServerID.logDescription.getter()
{
  v1 = v0;
  v36 = 1701667182;
  v37 = 0xE400000000000000;
  v38[0] = swift_getKeyPath();
  v38[1] = 0x6E6F6973726576;
  v38[2] = 0xE700000000000000;
  v38[3] = swift_getKeyPath();
  v38[4] = 29551;
  v38[5] = 0xE200000000000000;
  v38[6] = swift_getKeyPath();
  v38[7] = 0x6F6973726556736FLL;
  v38[8] = 0xE90000000000006ELL;
  v38[9] = swift_getKeyPath();
  v38[10] = 0x726F646E6576;
  v38[11] = 0xE600000000000000;
  v38[12] = swift_getKeyPath();
  v38[13] = 0x5574726F70707573;
  v38[14] = 0xEA00000000004C52;
  v38[15] = swift_getKeyPath();
  v38[16] = 0x73736572646461;
  v38[17] = 0xE700000000000000;
  v38[18] = swift_getKeyPath();
  v38[19] = 1702125924;
  v38[20] = 0xE400000000000000;
  v38[21] = swift_getKeyPath();
  v38[22] = 0x646E616D6D6F63;
  v38[23] = 0xE700000000000000;
  v38[24] = swift_getKeyPath();
  v38[25] = 0x746E656D75677261;
  v38[26] = 0xE900000000000073;
  v38[27] = swift_getKeyPath();
  v38[28] = 0x6D6E6F7269766E65;
  v38[29] = 0xEB00000000746E65;
  result = swift_getKeyPath();
  v3 = 0;
  v38[30] = result;
  v4 = _swiftEmptyArrayStorage;
  do
  {
    v5 = 11;
    if (v3 > 0xB)
    {
      v5 = v3;
    }

    v6 = -v5;
    v7 = &v38[3 * v3++];
    while (1)
    {
      if (v6 + v3 == 1)
      {
        __break(1u);
        return result;
      }

      v9 = *(v7 - 2);
      v8 = *(v7 - 1);
      v10 = *v7;
      v11 = v1[9];
      v32 = v1[8];
      v33 = v11;
      v34 = v1[10];
      v12 = v1[5];
      v28 = v1[4];
      v29 = v12;
      v13 = v1[7];
      v30 = v1[6];
      v31 = v13;
      v14 = v1[1];
      v24 = *v1;
      v25 = v14;
      v15 = v1[3];
      v26 = v1[2];
      v27 = v15;

      sub_10010E800(v1, v22);
      swift_getAtKeyPath();
      v35[8] = v32;
      v35[9] = v33;
      v35[10] = v34;
      v35[4] = v28;
      v35[5] = v29;
      v35[6] = v30;
      v35[7] = v31;
      v35[0] = v24;
      v35[1] = v25;
      v35[2] = v26;
      v35[3] = v27;
      sub_10010E990(v35);
      v16 = v23;
      if (v23)
      {
        break;
      }

      ++v3;
      v7 += 3;
      if (v3 == 12)
      {
        goto LABEL_14;
      }
    }

    v17 = v22[22];
    *&v24 = v9;
    *(&v24 + 1) = v8;

    v39._countAndFlagsBits = 8250;
    v39._object = 0xE200000000000000;
    sub_1004A5994(v39);
    v40._countAndFlagsBits = v17;
    v40._object = v16;
    sub_1004A5994(v40);

    v18 = v24;
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_100085070(0, *(v4 + 2) + 1, 1, v4);
      v4 = result;
    }

    v20 = *(v4 + 2);
    v19 = *(v4 + 3);
    if (v20 >= v19 >> 1)
    {
      result = sub_100085070((v19 > 1), v20 + 1, 1, v4);
      v4 = result;
    }

    *(v4 + 2) = v20 + 1;
    *&v4[16 * v20 + 32] = v18;
  }

  while (v3 != 11);
LABEL_14:
  sub_10000C9C0(&qword_1005D8458, &qword_1004F4898);
  swift_arrayDestroy();
  if (*(v4 + 2))
  {
    *&v35[0] = v4;
    sub_10000C9C0(&unk_1005DA9A0, &unk_1004CF770);
    sub_100031CDC();
    v21 = sub_1004A5614();
  }

  else
  {

    return 0;
  }

  return v21;
}

char *sub_1002FABB8(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000C9C0(&qword_1005D8490, &qword_1004F4970);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1002FACD4(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10000C9C0(&qword_1005D8468, &qword_1004F4958);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_10000C9C0(&qword_1005D8470, &qword_1004F4BE0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_1002FAE6C(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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
    v17 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_10000C9C0(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = j__malloc_size(v17);
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

uint64_t _s13IMAP2Protocol8ServerIDV23__derived_struct_equalsySbAC_ACtFZ_0(void *a1, void *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  if (v2)
  {
    if (!v3)
    {
      return 0;
    }

    if (*a1 != *a2 || v2 != v3)
    {
      v5 = a1;
      v6 = *a1;
      v7 = a2;
      v8 = sub_1004A6D34();
      a2 = v7;
      v9 = v8;
      a1 = v5;
      if ((v9 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v3)
  {
    return 0;
  }

  v10 = a1[3];
  v11 = a2[3];
  if (v10)
  {
    if (!v11)
    {
      return 0;
    }

    if (a1[2] != a2[2] || v10 != v11)
    {
      v12 = a1;
      v13 = a1[2];
      v14 = a2;
      v15 = sub_1004A6D34();
      a2 = v14;
      v16 = v15;
      a1 = v12;
      if ((v16 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v11)
  {
    return 0;
  }

  v17 = a1[5];
  v18 = a2[5];
  if (v17)
  {
    if (!v18)
    {
      return 0;
    }

    if (a1[4] != a2[4] || v17 != v18)
    {
      v19 = a1;
      v20 = a1[4];
      v21 = a2;
      v22 = sub_1004A6D34();
      a2 = v21;
      v23 = v22;
      a1 = v19;
      if ((v23 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v18)
  {
    return 0;
  }

  v24 = a1[7];
  v25 = a2[7];
  if (v24)
  {
    if (!v25)
    {
      return 0;
    }

    if (a1[6] != a2[6] || v24 != v25)
    {
      v26 = a1;
      v27 = a1[6];
      v28 = a2;
      v29 = sub_1004A6D34();
      a2 = v28;
      v30 = v29;
      a1 = v26;
      if ((v30 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v25)
  {
    return 0;
  }

  v31 = a1[9];
  v32 = a2[9];
  if (v31)
  {
    if (!v32)
    {
      return 0;
    }

    if (a1[8] != a2[8] || v31 != v32)
    {
      v33 = a1;
      v34 = a1[8];
      v35 = a2;
      v36 = sub_1004A6D34();
      a2 = v35;
      v37 = v36;
      a1 = v33;
      if ((v37 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v32)
  {
    return 0;
  }

  v38 = a1[11];
  v39 = a2[11];
  if (v38)
  {
    if (!v39)
    {
      return 0;
    }

    if (a1[10] != a2[10] || v38 != v39)
    {
      v40 = a1;
      v41 = a1[10];
      v42 = a2;
      v43 = sub_1004A6D34();
      a2 = v42;
      v44 = v43;
      a1 = v40;
      if ((v44 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v39)
  {
    return 0;
  }

  v45 = a1[13];
  v46 = a2[13];
  if (v45)
  {
    if (!v46)
    {
      return 0;
    }

    if (a1[12] != a2[12] || v45 != v46)
    {
      v47 = a1;
      v48 = a1[12];
      v49 = a2;
      v50 = sub_1004A6D34();
      a2 = v49;
      v51 = v50;
      a1 = v47;
      if ((v51 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v46)
  {
    return 0;
  }

  v52 = a1[15];
  v53 = a2[15];
  if (v52)
  {
    if (!v53)
    {
      return 0;
    }

    if (a1[14] != a2[14] || v52 != v53)
    {
      v54 = a1;
      v55 = a1[14];
      v56 = a2;
      v57 = sub_1004A6D34();
      a2 = v56;
      v58 = v57;
      a1 = v54;
      if ((v58 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v53)
  {
    return 0;
  }

  v59 = a1[17];
  v60 = a2[17];
  if (v59)
  {
    if (!v60)
    {
      return 0;
    }

    if (a1[16] != a2[16] || v59 != v60)
    {
      v61 = a1;
      v62 = a1[16];
      v63 = a2;
      v64 = sub_1004A6D34();
      a2 = v63;
      v65 = v64;
      a1 = v61;
      if ((v65 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v60)
  {
    return 0;
  }

  v66 = a1[19];
  v67 = a2[19];
  if (v66)
  {
    if (!v67)
    {
      return 0;
    }

    if (a1[18] != a2[18] || v66 != v67)
    {
      v68 = a1;
      v69 = a1[18];
      v70 = a2;
      v71 = sub_1004A6D34();
      a2 = v70;
      v72 = v71;
      a1 = v68;
      if ((v72 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v67)
  {
    return 0;
  }

  v73 = a1[21];
  v74 = a2[21];
  if (v73)
  {
    if (v74 && (a1[20] == a2[20] && v73 == v74 || (sub_1004A6D34() & 1) != 0))
    {
      return 1;
    }
  }

  else if (!v74)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_1002FB418(uint64_t a1)
{
  v2 = sub_10000C9C0(&qword_1005D7F50, &unk_100502FF0);
  v31 = *(v2 - 8);
  v3 = *(v31 + 64);
  v4 = __chkstk_darwin(v2 - 8);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v28 - v7;
  v32 = sub_10000C9C0(&qword_1005D8488, &unk_100503000);
  v9 = *(v32 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v32);
  v12 = (&v28 - v11);
  v34 = 0;
  v35 = _swiftEmptyArrayStorage;
  v13 = *(a1 + 16);
  sub_100264EAC(v13, 0);
  v33 = _swiftEmptyArrayStorage;
  sub_1002E5298(0, v13, 0);
  v14 = v33;
  v30 = v13;
  if (!v13)
  {
    return v34;
  }

  v15 = 0;
  v29 = a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
  v28 = *(v9 + 72);
  while (1)
  {
    sub_10000E268(v29 + v28 * v15, v12, &qword_1005D8488, &unk_100503000);
    v17 = *v12;
    v16 = v12[1];
    sub_1002FC238(v12 + *(v32 + 48), v8);
    v18 = v34;
    v19 = v35;
    v20 = v35[2];
    if (!v34)
    {
      break;
    }

    sub_1001E74AC(v17, v16, (v19 + 4), v20, (v18 + 16));
    v22 = v21;

    if ((v22 & 1) == 0)
    {
      goto LABEL_20;
    }

LABEL_14:
    sub_1001E67B8(v17, v16);
    sub_10000E268(v8, v6, &qword_1005D7F50, &unk_100502FF0);
    v33 = v14;
    v27 = v14[2];
    v26 = v14[3];
    if (v27 >= v26 >> 1)
    {
      sub_1002E5298(v26 > 1, v27 + 1, 1);

      v14 = v33;
    }

    else
    {
    }

    ++v15;
    sub_1002FC2A8(v8);
    v14[2] = v27 + 1;
    sub_1002FC238(v6, v14 + ((*(v31 + 80) + 32) & ~*(v31 + 80)) + *(v31 + 72) * v27);
    if (v15 == v30)
    {
      return v34;
    }
  }

  if (!v20)
  {
    goto LABEL_14;
  }

  v24 = v35 + 5;
  while (1)
  {
    result = *(v24 - 1);
    if (result == v17 && *v24 == v16)
    {
      break;
    }

    result = sub_1004A6D34();
    if (result)
    {
      break;
    }

    v24 += 2;
    if (!--v20)
    {
      goto LABEL_14;
    }
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_1002FB760(uint64_t a1)
{
  v2 = type metadata accessor for ParameterValue();
  v31 = *(v2 - 8);
  v3 = *(v31 + 64);
  v4 = __chkstk_darwin(v2 - 8);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v28 - v7;
  v32 = sub_10000C9C0(&qword_1005D8480, &qword_1004F4968);
  v9 = *(v32 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v32);
  v12 = (&v28 - v11);
  v34 = 0;
  v35 = _swiftEmptyArrayStorage;
  v13 = *(a1 + 16);
  sub_100264EAC(v13, 0);
  v33 = _swiftEmptyArrayStorage;
  sub_1002E5340(0, v13, 0);
  v14 = v33;
  v30 = v13;
  if (!v13)
  {
    return v34;
  }

  v15 = 0;
  v29 = a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
  v28 = *(v9 + 72);
  while (1)
  {
    sub_10000E268(v29 + v28 * v15, v12, &qword_1005D8480, &qword_1004F4968);
    v17 = *v12;
    v16 = v12[1];
    sub_1002FC114(v12 + *(v32 + 48), v8);
    v18 = v34;
    v19 = v35;
    v20 = v35[2];
    if (!v34)
    {
      break;
    }

    sub_1001E74AC(v17, v16, (v19 + 4), v20, (v18 + 16));
    v22 = v21;

    if ((v22 & 1) == 0)
    {
      goto LABEL_20;
    }

LABEL_14:
    sub_1001E67B8(v17, v16);
    sub_1002FC178(v8, v6);
    v33 = v14;
    v27 = v14[2];
    v26 = v14[3];
    if (v27 >= v26 >> 1)
    {
      sub_1002E5340(v26 > 1, v27 + 1, 1);

      v14 = v33;
    }

    else
    {
    }

    ++v15;
    sub_1002FC1DC(v8);
    v14[2] = v27 + 1;
    sub_1002FC114(v6, v14 + ((*(v31 + 80) + 32) & ~*(v31 + 80)) + *(v31 + 72) * v27);
    if (v15 == v30)
    {
      return v34;
    }
  }

  if (!v20)
  {
    goto LABEL_14;
  }

  v24 = v35 + 5;
  while (1)
  {
    result = *(v24 - 1);
    if (result == v17 && *v24 == v16)
    {
      break;
    }

    result = sub_1004A6D34();
    if (result)
    {
      break;
    }

    v24 += 2;
    if (!--v20)
    {
      goto LABEL_14;
    }
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_1002FBA8C(uint64_t a1)
{
  v2 = *(a1 + 16);
  sub_100264EAC(v2, 0);
  sub_1001D600C(0, v2, 0);
  if (!v2)
  {
    return 0;
  }

  v3 = 0;
  v4 = a1 + 32;
  while (1)
  {
    v5 = v4 + 32 * v3;
    v7 = *v5;
    v6 = *(v5 + 8);
    v8 = _swiftEmptyArrayStorage[2];
    v14 = *(v5 + 16);
    if (v8)
    {
      break;
    }

LABEL_11:

    sub_1001E67B8(v7, v6);
    v12 = _swiftEmptyArrayStorage[2];
    v11 = _swiftEmptyArrayStorage[3];
    if (v12 >= v11 >> 1)
    {
      sub_1001D600C((v11 > 1), v12 + 1, 1);
    }

    ++v3;
    _swiftEmptyArrayStorage[2] = v12 + 1;
    *&_swiftEmptyArrayStorage[2 * v12 + 4] = v14;
    if (v3 == v2)
    {
      return 0;
    }
  }

  v9 = &_swiftEmptyArrayStorage[5];
  while (1)
  {
    v10 = *(v9 - 1) == v7 && *v9 == v6;
    if (v10 || (sub_1004A6D34() & 1) != 0)
    {
      break;
    }

    v9 += 2;
    if (!--v8)
    {
      goto LABEL_11;
    }
  }

  __break(1u);
  __break(1u);
  return result;
}

__n128 sub_1002FBC6C@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_1002FA5EC(1701667182, 0xE400000000000000, a1, a2, a3);
  if (v9 == 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = v8;
  }

  if (v9 == 1)
  {
    v11 = 0;
  }

  else
  {
    v11 = v9;
  }

  v72 = v11;
  v73 = v10;
  v12 = sub_1002FA5EC(0x6E6F6973726576, 0xE700000000000000, a1, a2, a3);
  if (v13 == 1)
  {
    v14 = 0;
  }

  else
  {
    v14 = v12;
  }

  if (v13 == 1)
  {
    v15 = 0;
  }

  else
  {
    v15 = v13;
  }

  v70 = v15;
  v71 = v14;
  v16 = sub_1002FA5EC(29551, 0xE200000000000000, a1, a2, a3);
  if (v17 == 1)
  {
    v18 = 0;
  }

  else
  {
    v18 = v16;
  }

  if (v17 == 1)
  {
    v19 = 0;
  }

  else
  {
    v19 = v17;
  }

  v68 = v19;
  v69 = v18;
  v20 = sub_1002FA5EC(0x69737265762D736FLL, 0xEA00000000006E6FLL, a1, a2, a3);
  if (v21 == 1)
  {
    v22 = 0;
  }

  else
  {
    v22 = v20;
  }

  if (v21 == 1)
  {
    v23 = 0;
  }

  else
  {
    v23 = v21;
  }

  v66 = v23;
  v67 = v22;
  v24 = sub_1002FA5EC(0x726F646E6576, 0xE600000000000000, a1, a2, a3);
  if (v25 == 1)
  {
    v26 = 0;
  }

  else
  {
    v26 = v24;
  }

  if (v25 == 1)
  {
    v27 = 0;
  }

  else
  {
    v27 = v25;
  }

  v64 = v27;
  v65 = v26;
  v28 = sub_1002FA5EC(0x2D74726F70707573, 0xEB000000006C7275, a1, a2, a3);
  if (v29 == 1)
  {
    v30 = 0;
  }

  else
  {
    v30 = v28;
  }

  if (v29 == 1)
  {
    v31 = 0;
  }

  else
  {
    v31 = v29;
  }

  v62 = v31;
  v63 = v30;
  v32 = sub_1002FA5EC(0x73736572646461, 0xE700000000000000, a1, a2, a3);
  if (v33 == 1)
  {
    v34 = 0;
  }

  else
  {
    v34 = v32;
  }

  if (v33 == 1)
  {
    v35 = 0;
  }

  else
  {
    v35 = v33;
  }

  v60 = v35;
  v61 = v34;
  v36 = sub_1002FA5EC(1702125924, 0xE400000000000000, a1, a2, a3);
  if (v37 == 1)
  {
    v38 = 0;
  }

  else
  {
    v38 = v36;
  }

  if (v37 == 1)
  {
    v39 = 0;
  }

  else
  {
    v39 = v37;
  }

  v58 = v39;
  v59 = v38;
  v40 = sub_1002FA5EC(0x646E616D6D6F63, 0xE700000000000000, a1, a2, a3);
  if (v41 == 1)
  {
    v42 = 0;
  }

  else
  {
    v42 = v40;
  }

  if (v41 == 1)
  {
    v43 = 0;
  }

  else
  {
    v43 = v41;
  }

  v44 = sub_1002FA5EC(0x746E656D75677261, 0xE900000000000073, a1, a2, a3);
  if (v45 == 1)
  {
    v46 = 0;
  }

  else
  {
    v46 = v44;
  }

  if (v45 == 1)
  {
    v47 = 0;
  }

  else
  {
    v47 = v45;
  }

  v48 = sub_1002FA5EC(0x6D6E6F7269766E65, 0xEB00000000746E65, a1, a2, a3);
  v50 = v49;

  if (v50 == 1)
  {
    v51 = 0;
  }

  else
  {
    v51 = v48;
  }

  if (v50 == 1)
  {
    v52 = 0;
  }

  else
  {
    v52 = v50;
  }

  *&v75 = v73;
  *(&v75 + 1) = v72;
  *&v76 = v71;
  *(&v76 + 1) = v70;
  *&v77 = v69;
  *(&v77 + 1) = v68;
  v78.n128_u64[0] = v67;
  v78.n128_u64[1] = v66;
  *&v79 = v65;
  *(&v79 + 1) = v64;
  *&v80 = v63;
  *(&v80 + 1) = v62;
  *&v81 = v61;
  *(&v81 + 1) = v60;
  *&v82 = v59;
  *(&v82 + 1) = v58;
  *&v83 = v42;
  *(&v83 + 1) = v43;
  *&v84 = v46;
  *(&v84 + 1) = v47;
  *&v85 = v51;
  *(&v85 + 1) = v52;
  v86[0] = v73;
  v86[1] = v72;
  v86[2] = v71;
  v86[3] = v70;
  v86[4] = v69;
  v86[5] = v68;
  v86[6] = v67;
  v86[7] = v66;
  v86[8] = v65;
  v86[9] = v64;
  v86[10] = v63;
  v86[11] = v62;
  v86[12] = v61;
  v86[13] = v60;
  v86[14] = v59;
  v86[15] = v58;
  v86[16] = v42;
  v86[17] = v43;
  v86[18] = v46;
  v86[19] = v47;
  v86[20] = v51;
  v86[21] = v52;
  sub_10010E800(&v75, &v74);
  sub_10010E990(v86);
  v53 = v84;
  *(a4 + 128) = v83;
  *(a4 + 144) = v53;
  *(a4 + 160) = v85;
  v54 = v80;
  *(a4 + 64) = v79;
  *(a4 + 80) = v54;
  v55 = v82;
  *(a4 + 96) = v81;
  *(a4 + 112) = v55;
  v56 = v76;
  *a4 = v75;
  *(a4 + 16) = v56;
  result = v78;
  *(a4 + 32) = v77;
  *(a4 + 48) = result;
  return result;
}

uint64_t sub_1002FC028(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 176))
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

uint64_t sub_1002FC084(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
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
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 176) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 176) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_1002FC114(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ParameterValue();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002FC178(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ParameterValue();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002FC1DC(uint64_t a1)
{
  v2 = type metadata accessor for ParameterValue();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1002FC238(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C9C0(&qword_1005D7F50, &unk_100502FF0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002FC2A8(uint64_t a1)
{
  v2 = sub_10000C9C0(&qword_1005D7F50, &unk_100502FF0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

Swift::String __swiftcall ServerResponseTranscoder.makeParsingErrorDescription()()
{
  v1 = v0;
  v2 = type metadata accessor for Response(0);
  v27 = *(v2 - 8);
  v3 = *(v27 + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = v1[3];
  v7 = _swiftEmptyArrayStorage;
  if (v6)
  {
    v24 = v1;
    v29 = _swiftEmptyArrayStorage;
    sub_100091A08(0, v6 & ~(v6 >> 63), 0);
    if ((v6 & 0x8000000000000000) == 0)
    {
      v8 = 0;
      v7 = v29;
      v9 = v24;
      v25 = v24 + ((*(v27 + 80) + 40) & ~*(v27 + 80));
      v26 = v5;
      while (1)
      {
        v10 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          break;
        }

        if (v8 >= v9[3])
        {
          goto LABEL_14;
        }

        v11 = v9[4];
        if (v8 + v11 >= v9[2])
        {
          v12 = v9[2];
        }

        else
        {
          v12 = 0;
        }

        sub_100304240(&v25[(v8 + v11 - v12) * *(v27 + 72)], v5, type metadata accessor for Response);
        sub_100301D68(v5, v28);
        sub_1003042A8(v5, type metadata accessor for Response);
        v13 = v28[0];
        v14 = v28[1];
        v29 = v7;
        v16 = v7[2];
        v15 = v7[3];
        if (v16 >= v15 >> 1)
        {
          sub_100091A08((v15 > 1), v16 + 1, 1);
          v9 = v24;
          v7 = v29;
        }

        v7[2] = v16 + 1;
        v17 = &v7[2 * v16];
        v17[4] = v13;
        v17[5] = v14;
        ++v8;
        v5 = v26;
        if (v10 == v6)
        {
          goto LABEL_12;
        }
      }

      __break(1u);
LABEL_14:
      __break(1u);
    }

    __break(1u);
    sub_1003042A8(v5, type metadata accessor for Response);

    __break(1u);
  }

  else
  {
LABEL_12:
    v28[0] = v7;
    sub_10000C9C0(&unk_1005DA9A0, &unk_1004CF770);
    sub_100031CDC();
    v18 = sub_1004A5614();
    v20 = v19;

    v21 = v18;
    v22 = v20;
  }

  result._object = v22;
  result._countAndFlagsBits = v21;
  return result;
}

uint64_t sub_1002FC588()
{
  v0 = sub_1004A4A74();
  sub_1001C2074(v0, qword_1005DE260);
  sub_1001C203C(v0, qword_1005DE260);
  return sub_1004A4A64();
}

void *ServerResponseTranscoder.append(_:)(uint64_t a1)
{
  result = *v1;
  v4 = *(*v1 + 24);
  v5 = v4 + 1;
  if (__OFADD__(v4, 1))
  {
    __break(1u);
  }

  else
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *v1;
    if (*(*v1 + 16) < v5 || (isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1003023B8(isUniquelyReferenced_nonNull_native, v5, 0);
      v7 = *v1;
    }

    v8 = *(type metadata accessor for Response(0) - 8);
    return sub_100302628((v7 + 16), v7 + ((*(v8 + 80) + 40) & ~*(v8 + 80)), a1);
  }

  return result;
}

void ServerResponseTranscoder.parseNext()(uint64_t a1@<X8>)
{
  v3 = sub_10000C9C0(&qword_1005D8498, &unk_1004F49B8);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v50 = &v46 - v5;
  v6 = type metadata accessor for Response(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v52 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Response(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v46 - v16;
  v20 = __chkstk_darwin(v18);
  v22 = &v46 - v21;
  v51 = v1;
  v23 = *v1;
  v24 = *(*v1 + 24);
  if (!v24)
  {
    (*(v7 + 56))(a1, 1, 1, v6, v20);
    return;
  }

  if (v24 < 1)
  {
    __break(1u);
    goto LABEL_23;
  }

  v46 = v19;
  v47 = v7;
  v48 = v6;
  v49 = a1;
  v25 = v23[4];
  v26 = v23[2];
  if (v25 < v26)
  {
    v26 = 0;
  }

  v27 = (*(v11 + 80) + 40) & ~*(v11 + 80);
  v28 = *(v11 + 72);
  sub_100304240(v23 + v27 + (v25 - v26) * v28, v14, type metadata accessor for Response);
  sub_1003026F8(v14, v17, type metadata accessor for Response);
  sub_1003026F8(v17, v22, type metadata accessor for Response);
  v30 = v52;
  v29 = v53;
  sub_1002FCB7C(v52);
  if (!v29)
  {
    if (v23[3] < 1)
    {
      v43 = 1;
      v41 = v48;
      v40 = v49;
      v42 = v47;
      v35 = v50;
      goto LABEL_20;
    }

    v31 = v51;
    v32 = *v51;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_100302B30();
    }

    v33 = *v31;
    v34 = *v31 + v27 + *(*v31 + 32) * v28;
    v35 = v50;
    sub_1003026F8(v34, v50, type metadata accessor for Response);
    v36 = v33[4];
    v37 = __OFADD__(v36, 1);
    v38 = v36 + 1;
    if (!v37)
    {
      v39 = v33[3];
      if (v38 >= v33[2])
      {
        v38 = 0;
      }

      v33[4] = v38;
      v41 = v48;
      v40 = v49;
      v42 = v47;
      if (!__OFSUB__(v39, 1))
      {
        v43 = 0;
        v33[3] = v39 - 1;
        v30 = v52;
LABEL_20:
        sub_1003042A8(v22, type metadata accessor for Response);
        (*(v11 + 56))(v35, v43, 1, v46);
        sub_100025F40(v35, &qword_1005D8498, &unk_1004F49B8);
        sub_1003026F8(v30, v40, type metadata accessor for Response);
        (*(v42 + 56))(v40, 0, 1, v41);
        return;
      }

LABEL_24:
      __break(1u);
      return;
    }

LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v57 = v29;
  swift_errorRetain();
  sub_10000C9C0(&qword_1005D0460, &qword_1004D3CE0);
  if (swift_dynamicCast() && (v56 & 1) == 0)
  {
    v44 = v54;
    v45 = v55;

    sub_1002FCF78(v44 | ((v45 & 1) << 32), v49);
    sub_1003042A8(v22, type metadata accessor for Response);
  }

  else
  {

    swift_willThrow();
    sub_1003042A8(v22, type metadata accessor for Response);
  }
}

uint64_t sub_1002FCB7C@<X0>(uint64_t a1@<X8>)
{
  v3 = v1;
  v5 = type metadata accessor for ResponsePayload();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Response(0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v12 = v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100304240(v3, v12, type metadata accessor for Response);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload != 3)
    {
      if (EnumCaseMultiPayload == 4)
      {
        sub_1003042A8(v12, type metadata accessor for Response);
        sub_100304398();
        swift_allocError();
        v28 = 9;
      }

      else
      {
        sub_100304398();
        swift_allocError();
        v28 = 10;
      }

      *v26 = v28;
      v27 = 256;
      goto LABEL_18;
    }

    v30 = *(v12 + 2);
    *a1 = *v12;
    *(a1 + 16) = v30;
    type metadata accessor for UntaggedResponse(0);
    swift_storeEnumTagMultiPayload();
LABEL_13:
    type metadata accessor for Response(0);
    return swift_storeEnumTagMultiPayload();
  }

  if (!EnumCaseMultiPayload)
  {
    sub_1003026F8(v12, v8, type metadata accessor for ResponsePayload);
    sub_100301600(a1);
    result = sub_1003042A8(v8, type metadata accessor for ResponsePayload);
    if (v2)
    {
      return result;
    }

    goto LABEL_13;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v14 = *(v12 + 9);
    v15 = *(v12 + 7);
    v43 = *(v12 + 8);
    v44 = v14;
    v16 = *(v12 + 9);
    v45 = *(v12 + 10);
    v17 = *(v12 + 5);
    v18 = *(v12 + 3);
    v39 = *(v12 + 4);
    v40 = v17;
    v19 = *(v12 + 5);
    v20 = *(v12 + 7);
    v41 = *(v12 + 6);
    v42 = v20;
    v21 = *(v12 + 1);
    v36[0] = *v12;
    v36[1] = v21;
    v22 = *(v12 + 3);
    v24 = *v12;
    v23 = *(v12 + 1);
    v37 = *(v12 + 2);
    v38 = v22;
    v47[8] = v43;
    v47[9] = v16;
    v47[10] = *(v12 + 10);
    v47[4] = v39;
    v47[5] = v19;
    v47[6] = v41;
    v47[7] = v15;
    v47[0] = v24;
    v47[1] = v23;
    v46 = *(v12 + 88);
    v48 = *(v12 + 88);
    v47[2] = v37;
    v47[3] = v18;
    v25 = sub_1003043EC(v47);
    if (v25 == 1)
    {
      v33 = *sub_1002F9BA4(v47);
      sub_100304398();
      swift_allocError();
      *v34 = v33;
      *(v34 + 4) = 0;
      return swift_willThrow();
    }

    if (!v25)
    {
      sub_1002F9BA4(v47);
      sub_100304398();
      swift_allocError();
      *v26 = 0;
      v27 = 1;
LABEL_18:
      *(v26 + 4) = v27;
      return swift_willThrow();
    }

    sub_100304398();
    swift_allocError();
    *v35 = 1;
    *(v35 + 4) = 256;
    swift_willThrow();
    return sub_100304408(v36);
  }

  else
  {
    v31 = *(v12 + 1);
    v49 = *v12;
    v50[0] = v31;
    *(v50 + 9) = *(v12 + 25);
    sub_100301C28(a1);
    if (v2)
    {
      v53 = v49;
      sub_1002F9A9C(&v53);
      v54[0] = v50[0];
      *(v54 + 9) = *(v50 + 9);
      v32 = v54;
    }

    else
    {
      v51 = v49;
      sub_1002F9A9C(&v51);
      v52[0] = v50[0];
      *(v52 + 9) = *(v50 + 9);
      v32 = v52;
    }

    return sub_10030457C(v32);
  }
}

uint64_t sub_1002FCF78@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1002FD43C(a1 | ((HIDWORD(a1) & 1) << 32));
  if (v2)
  {
    swift_errorRetain();
    sub_10000C9C0(&qword_1005D0460, &qword_1004D3CE0);
    if (swift_dynamicCast() && v9 == 1 && ((v7 | (v8 << 32)) & 0xFFFFFFFFFFLL) == 0)
    {

      swift_beginAccess();
      sub_100300500(_swiftEmptyArrayStorage);
      v4 = type metadata accessor for Response(0);
      (*(*(v4 - 8) + 56))(a2, 1, 1, v4);
    }
  }

  else
  {
    v6 = type metadata accessor for Response(0);
    (*(*(v6 - 8) + 56))(a2, 0, 1, v6);
  }
}

uint64_t sub_1002FD108@<X0>(uint64_t a1@<X0>, void **a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for Response(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10000C9C0(&qword_1005D8498, &unk_1004F49B8);
  v12 = *(*(v11 - 8) + 64);
  v13 = __chkstk_darwin(v11 - 8);
  v15 = &v28 - v14;
  if (*(*a1 + 24) < 1)
  {
    v27 = *(v7 + 56);
    v27(v15, 1, 1, v6, v13);
    sub_100025F40(v15, &qword_1005D8498, &unk_1004F49B8);
    return (v27)(a3, 1, 1, v6);
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_100302B30();
  }

  v16 = *a1;
  v17 = *(v7 + 80);
  v18 = *(v7 + 72);
  sub_1003026F8(v16 + ((v17 + 40) & ~v17) + v18 * v16[4], v15, type metadata accessor for Response);
  v19 = v16[4];
  v20 = __OFADD__(v19, 1);
  v21 = v19 + 1;
  if (v20)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v22 = v16[3];
  if (v21 >= v16[2])
  {
    v21 = 0;
  }

  v16[4] = v21;
  if (__OFSUB__(v22, 1))
  {
    goto LABEL_14;
  }

  v16[3] = v22 - 1;
  v29 = *(v7 + 56);
  v29(v15, 0, 1, v6);
  sub_1003026F8(v15, a3, type metadata accessor for Response);
  sub_100304240(a3, v10, type metadata accessor for Response);
  swift_beginAccess();
  v16 = *a2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a2 = v16;
  v30 = a3;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_15:
    v16 = sub_1002FAB90(0, v16[2] + 1, 1, v16);
    *a2 = v16;
  }

  v25 = v16[2];
  v24 = v16[3];
  if (v25 >= v24 >> 1)
  {
    v16 = sub_1002FAB90(v24 > 1, v25 + 1, 1, v16);
  }

  v16[2] = v25 + 1;
  sub_1003026F8(v10, v16 + ((v17 + 32) & ~v17) + v25 * v18, type metadata accessor for Response);
  *a2 = v16;
  swift_endAccess();
  return (v29)(v30, 0, 1, v6);
}

uint64_t sub_1002FD43C(uint64_t a1)
{
  __chkstk_darwin(a1);
  v318 = v1;
  v365 = v2;
  v601 = v3;
  v355 = v4;
  v317 = v5;
  v341 = sub_1004A5384();
  v322 = *(v341 - 8);
  v6 = *(v322 + 8);
  __chkstk_darwin(v341);
  v327 = &v297 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10000C9C0(&qword_1005D05E0, &qword_1004D65C0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v331 = &v297 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v324 = &v297 - v12;
  __chkstk_darwin(v13);
  v321 = &v297 - v14;
  __chkstk_darwin(v15);
  v337 = &v297 - v16;
  v17 = sub_10000C9C0(&qword_1005CE218, &unk_1004F3FD0);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  v332 = &v297 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v326 = &v297 - v21;
  __chkstk_darwin(v22);
  v319 = &v297 - v23;
  v24 = type metadata accessor for MessageData.BodySection();
  v333 = *(v24 - 8);
  v334 = v24;
  v25 = *(v333 + 64);
  __chkstk_darwin(v24);
  v336 = &v297 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v361 = &v297 - v28;
  __chkstk_darwin(v29);
  v320 = &v297 - v30;
  v343 = type metadata accessor for StreamedBodySection(0);
  v338 = *(v343 - 8);
  v31 = *(v338 + 64);
  __chkstk_darwin(v343);
  v325 = &v297 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v33);
  v335 = &v297 - v34;
  __chkstk_darwin(v35);
  v339 = &v297 - v36;
  v364 = type metadata accessor for Response(0);
  v362 = *(v364 - 8);
  v37 = *(v362 + 64);
  __chkstk_darwin(v364);
  v342 = &v297 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v39);
  v358 = &v297 - v40;
  __chkstk_darwin(v41);
  v357 = &v297 - v42;
  v43 = sub_10000C9C0(&qword_1005D8578, &unk_1004F4BF0);
  v44 = *(*(v43 - 8) + 64);
  __chkstk_darwin(v43 - 8);
  v323 = &v297 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v46);
  v329 = &v297 - v47;
  __chkstk_darwin(v48);
  v330 = &v297 - v49;
  __chkstk_darwin(v50);
  v328 = &v297 - v51;
  __chkstk_darwin(v52);
  v354 = &v297 - v53;
  v54 = sub_10000C9C0(&qword_1005D8498, &unk_1004F49B8);
  v55 = *(*(v54 - 8) + 64);
  __chkstk_darwin(v54 - 8);
  v360 = &v297 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v57);
  v359 = &v297 - v58;
  __chkstk_darwin(v59);
  v61 = &v297 - v60;
  __chkstk_darwin(v62);
  v363 = &v297 - v63;
  sub_1000519AC(&v491);
  v376 = v500;
  v377 = v501;
  v371 = v495;
  v372 = v496;
  v373 = v497;
  v374 = v498;
  v375 = v499;
  v367 = v491;
  v368 = v492;
  v369 = v493;
  v370 = v494;
  v503[8] = v499;
  v503[9] = v500;
  v503[10] = v501;
  v503[4] = v495;
  v503[5] = v496;
  v503[6] = v497;
  v503[7] = v498;
  v503[0] = v491;
  v503[1] = v492;
  v378 = v502;
  LOBYTE(v396[0]) = 1;
  LOBYTE(v394[0]) = 1;
  v504 = v502;
  v503[2] = v493;
  v503[3] = v494;
  sub_100025F40(v503, &qword_1005CDFD0, &qword_1004EE450);
  *(&v379[8] + 3) = v499;
  *(&v379[9] + 3) = v500;
  *(&v379[10] + 3) = v501;
  BYTE3(v379[11]) = v502;
  *(&v379[4] + 3) = v495;
  *(&v379[5] + 3) = v496;
  *(&v379[6] + 3) = v497;
  *(&v379[7] + 3) = v498;
  *(v379 + 3) = v491;
  *(&v379[1] + 3) = v492;
  *(&v379[2] + 3) = v493;
  *(&v379[3] + 3) = v494;
  v505[8] = v375;
  v505[9] = v376;
  v505[10] = v377;
  v506 = v378;
  v505[4] = v371;
  v505[5] = v372;
  v505[6] = v373;
  v505[7] = v374;
  v505[0] = v367;
  v505[1] = v368;
  v505[2] = v369;
  v505[3] = v370;
  sub_100025F40(v505, &qword_1005CDFD0, &qword_1004EE450);
  v376 = v500;
  v377 = v501;
  v371 = v495;
  v372 = v496;
  v373 = v497;
  v378 = v502;
  v374 = v498;
  v375 = v499;
  v367 = v491;
  v368 = v492;
  v369 = v493;
  v370 = v494;
  v508 = 0;
  memset(v507, 0, sizeof(v507));
  sub_100025F40(v507, &qword_1005D8038, &unk_1004F4C00);
  v523 = v379[8];
  v524 = v379[9];
  v525 = v379[10];
  v519 = v379[4];
  v520 = v379[5];
  v521 = v379[6];
  v522 = v379[7];
  v515 = v379[0];
  v516 = v379[1];
  v517 = v379[2];
  v518 = v379[3];
  v537 = v375;
  v538 = v376;
  v539 = v377;
  v533 = v371;
  v534 = v372;
  v535 = v373;
  v536 = v374;
  v529 = v367;
  v530 = v368;
  v531 = v369;
  v532 = v370;
  v567 = v379[8];
  v568 = v379[9];
  v569 = v379[10];
  v563 = v379[4];
  v564 = v379[5];
  v565 = v379[6];
  v566 = v379[7];
  v559 = v379[0];
  v560 = v379[1];
  v561 = v379[2];
  v562 = v379[3];
  v580 = v375;
  v581 = v376;
  v582 = v377;
  v576 = v371;
  v577 = v372;
  v578 = v373;
  v579 = v374;
  v572 = v367;
  v573 = v368;
  LOBYTE(v382) = 1;
  LOBYTE(v380[0]) = 1;
  v366 = 1;
  v510 = v396[0];
  v509 = 0;
  v513 = 0;
  v514 = v394[0];
  v526 = v379[11];
  v528 = _swiftEmptyArrayStorage;
  v540 = v378;
  v542 = 0u;
  memset(&v541[7], 0, 128);
  v543 = 1;
  v546 = 0;
  v547 = 1;
  v549 = 0;
  v550 = 1;
  v552 = 0u;
  v553 = 0u;
  v554 = 0u;
  v556 = v396[0];
  v555 = 0;
  v557 = 0;
  v558 = v394[0];
  v570 = v379[11];
  v571 = _swiftEmptyArrayStorage;
  v583 = v378;
  v574 = v369;
  v575 = v370;
  v591 = 0u;
  v592 = 0u;
  v589 = 0u;
  v590 = 0u;
  v587 = 0u;
  v588 = 0u;
  v585 = 0u;
  v586 = 0u;
  v584 = 0u;
  v593 = 1;
  v594 = 0;
  v595 = 1;
  v596 = 0;
  v597 = 1;
  v598 = 0u;
  v599 = 0u;
  v600 = 0u;
  sub_1002EBB50(&v509, v398);
  sub_100025D5C(&v555);
  v480 = v510;
  v478 = v511;
  v479 = v512;
  v353 = v509;
  v477 = v514;
  v467 = v517;
  v468 = v518;
  v465 = v515;
  v466 = v516;
  v471 = v521;
  v472 = v522;
  v469 = v519;
  v470 = v520;
  v476 = v526;
  v474 = v524;
  v475 = v525;
  v473 = v523;
  v464[0] = *v527;
  *(v464 + 3) = *&v527[3];
  v460 = v537;
  v461 = v538;
  v462 = v539;
  v463 = v540;
  v456 = v533;
  v457 = v534;
  v458 = v535;
  v459 = v536;
  v452 = v529;
  v453 = v530;
  v454 = v531;
  v455 = v532;
  v449 = *&v541[64];
  v450 = *&v541[80];
  v451[0] = *&v541[96];
  *(v451 + 15) = *&v541[111];
  v445 = *v541;
  v446 = *&v541[16];
  v447 = *&v541[32];
  v448 = *&v541[48];
  v356 = v528;
  *v349 = *&v541[127];
  *&v349[8] = v542;
  v444 = v543;
  v442 = v544;
  v443 = v545;
  v348 = v546;
  v441 = v547;
  v440[0] = *v548;
  *(v440 + 3) = *&v548[3];
  v439 = v550;
  v64 = v438;
  v438[0] = *v551;
  *(v438 + 3) = *&v551[3];
  v345 = v552;
  v350 = v549;
  v351 = *(&v552 + 1);
  v346 = *(&v553 + 1);
  v347 = v553;
  v352 = *(&v554 + 1);
  v65 = v554;
  if ((v355 & 0x100000000) != 0)
  {
    LODWORD(v355) = v513;
  }

  else
  {
    v477 = 0;
  }

  v66 = v363;
  sub_1002FD108(v601, v365, v363);
  v67 = v362;
  v68 = v364;
  if ((*(v362 + 48))(v66, 1, v364) == 1)
  {
    goto LABEL_14;
  }

  sub_10000E268(v66, v61, &qword_1005D8498, &unk_1004F49B8);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_1003042A8(v61, type metadata accessor for Response);
LABEL_14:
    sub_100304398();
    swift_allocError();
    *v82 = 1;
    *(v82 + 4) = 256;
    swift_willThrow();
    v83 = &qword_1005D8498;
    v84 = &unk_1004F49B8;
    v85 = v66;
LABEL_15:
    sub_100025F40(v85, v83, v84);
    goto LABEL_16;
  }

  v69 = *(v61 + 7);
  v394[8] = *(v61 + 8);
  v70 = *(v61 + 8);
  v394[9] = *(v61 + 9);
  v71 = *(v61 + 9);
  v394[10] = *(v61 + 10);
  v72 = *(v61 + 3);
  v394[4] = *(v61 + 4);
  v73 = *(v61 + 4);
  v394[5] = *(v61 + 5);
  v74 = *(v61 + 5);
  v394[6] = *(v61 + 6);
  v75 = *(v61 + 6);
  v394[7] = *(v61 + 7);
  v76 = *(v61 + 1);
  v394[0] = *v61;
  v394[1] = v76;
  v78 = *v61;
  v77 = *(v61 + 1);
  v394[2] = *(v61 + 2);
  v79 = *(v61 + 2);
  v394[3] = *(v61 + 3);
  v396[8] = v70;
  v396[9] = v71;
  v396[10] = *(v61 + 10);
  v396[4] = v73;
  v396[5] = v74;
  v396[6] = v75;
  v396[7] = v69;
  v396[0] = v78;
  v396[1] = v77;
  v396[2] = v79;
  v395 = *(v61 + 88);
  v397 = *(v61 + 88);
  v396[3] = v72;
  v80 = sub_1003043EC(v396);
  if (!v80)
  {
    v315 = v65;
    v353 = *sub_1002F9BA4(v396);
    v480 = 0;
    goto LABEL_11;
  }

  if (v80 != 1)
  {
    sub_100304408(v394);
    goto LABEL_14;
  }

  v315 = v65;
  LODWORD(v355) = *sub_1002F9BA4(v396);
  v477 = 0;
LABEL_11:
  v304 = *(&v553 + 1);
  v305 = *(&v554 + 1);
  v302 = v542;
  v303 = *(&v552 + 1);
  v316 = v528;
  v301 = *&v541[127];
  sub_100025F40(v66, &qword_1005D8498, &unk_1004F49B8);
  v81 = v338;
  v312 = *(v338 + 56);
  v313 = v338 + 56;
  v312(v354, 1, 1, v343);
  if (*(*v601 + 24) <= 0)
  {
    v91 = *(v67 + 56);
LABEL_119:
    v271 = v360;
    v91(v360, 1, 1, v68);
    sub_100025F40(v271, &qword_1005D8498, &unk_1004F49B8);
    v272 = v359;
    v91(v359, 1, 1, v68);
    sub_100025F40(v272, &qword_1005D8498, &unk_1004F49B8);
    sub_100304398();
    swift_allocError();
    *v273 = 0;
    *(v273 + 4) = 256;
    swift_willThrow();
    goto LABEL_124;
  }

  v344 = 0;
  v340 = (v67 + 56);
  v310 = 0;
  v311 = (v81 + 48);
  v314 = (v322 + 48);
  v308 = (v322 + 56);
  v309 = (v322 + 8);
  v298 = &v465 + 3;
  v299 = &v445 + 7;
  v300 = (v322 + 32);
  while (1)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_100302B30();
    }

    v100 = *v601;
    v101 = *(v67 + 80);
    v102 = *(v67 + 72);
    sub_1003026F8(*v601 + ((v101 + 40) & ~v101) + v102 * *(*v601 + 32), v360, type metadata accessor for Response);
    v103 = v100[4];
    v104 = __OFADD__(v103, 1);
    v105 = v103 + 1;
    if (v104)
    {
      __break(1u);
LABEL_140:
      __break(1u);
LABEL_141:
      __break(1u);
LABEL_142:
      __break(1u);
LABEL_143:
      __break(1u);
LABEL_144:
      __break(1u);
      JUMPOUT(0x1003004C4);
    }

    v106 = v100[3];
    if (v105 >= v100[2])
    {
      v105 = 0;
    }

    v100[4] = v105;
    if (__OFSUB__(v106, 1))
    {
      goto LABEL_140;
    }

    v100[3] = v106 - 1;
    v107 = v360;
    v338 = *v340;
    (v338)(v360, 0, 1, v68);
    v108 = v107;
    v109 = v359;
    sub_1003026F8(v108, v359, type metadata accessor for Response);
    sub_100304240(v109, v358, type metadata accessor for Response);
    v110 = v365;
    swift_beginAccess();
    v111 = *v110;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v110 = v111;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v111 = sub_1002FAB90(0, v111[2] + 1, 1, v111);
      *v365 = v111;
    }

    v114 = v111[2];
    v113 = v111[3];
    if (v114 >= v113 >> 1)
    {
      v111 = sub_1002FAB90(v113 > 1, v114 + 1, 1, v111);
    }

    v111[2] = v114 + 1;
    sub_1003026F8(v358, v111 + ((v101 + 32) & ~v101) + v114 * v102, type metadata accessor for Response);
    *v365 = v111;
    swift_endAccess();
    v115 = v359;
    v68 = v364;
    (v338)(v359, 0, 1, v364);
    v116 = v115;
    v117 = v357;
    sub_1003026F8(v116, v357, type metadata accessor for Response);
    v118 = v342;
    sub_100304240(v117, v342, type metadata accessor for Response);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_1003042A8(v118, type metadata accessor for Response);
      sub_100304398();
      swift_allocError();
      *v267 = 1;
      *(v267 + 4) = 256;
      swift_willThrow();
      v268 = v357;
      goto LABEL_123;
    }

    v119 = *(v118 + 144);
    v390 = *(v118 + 128);
    v391 = v119;
    v392 = *(v118 + 160);
    v393 = *(v118 + 176);
    v120 = *(v118 + 80);
    v386 = *(v118 + 64);
    v387 = v120;
    v121 = *(v118 + 112);
    v388 = *(v118 + 96);
    v389 = v121;
    v122 = *(v118 + 16);
    v382 = *v118;
    v383 = v122;
    v123 = *(v118 + 48);
    v384 = *(v118 + 32);
    v385 = v123;
    if (v344 == 99999)
    {
      sub_100304398();
      swift_allocError();
      v270 = 2;
LABEL_121:
      *v269 = v270;
      *(v269 + 4) = 256;
      swift_willThrow();
      sub_100304408(&v382);
      goto LABEL_122;
    }

    v124 = *(v118 + 144);
    v380[8] = *(v118 + 128);
    v380[9] = v124;
    v380[10] = *(v118 + 160);
    v381 = *(v118 + 176);
    v125 = *(v118 + 80);
    v380[4] = *(v118 + 64);
    v380[5] = v125;
    v126 = *(v118 + 112);
    v380[6] = *(v118 + 96);
    v380[7] = v126;
    v127 = *(v118 + 16);
    v380[0] = *v118;
    v380[1] = v127;
    v128 = *(v118 + 48);
    v380[2] = *(v118 + 32);
    v380[3] = v128;
    v129 = sub_1003043EC(v380);
    if (v129 > 3)
    {
      break;
    }

    if (v129 == 2)
    {
      v177 = sub_1002F9BA4(v380);
      if (__OFADD__(v310, 1))
      {
        goto LABEL_141;
      }

      v65 = v315;
      v67 = v362;
      if (v310 + 1 >= 50)
      {
        sub_100304398();
        swift_allocError();
        *v284 = 3;
        *(v284 + 4) = 256;
        swift_willThrow();
        sub_100304408(&v382);
LABEL_133:
        sub_1003042A8(v357, type metadata accessor for Response);
        v83 = &qword_1005D8578;
        v84 = &unk_1004F4BF0;
        v85 = v354;
        goto LABEL_15;
      }

      ++v310;
      v178 = *v177;
      v179 = *(v177 + 16);
      v180 = *(v177 + 48);
      *&v398[32] = *(v177 + 32);
      *&v398[48] = v180;
      *v398 = v178;
      *&v398[16] = v179;
      v181 = *(v177 + 64);
      v182 = *(v177 + 80);
      v183 = *(v177 + 112);
      *&v398[96] = *(v177 + 96);
      *&v398[112] = v183;
      *&v398[64] = v181;
      *&v398[80] = v182;
      v184 = *(v177 + 128);
      v185 = *(v177 + 144);
      v186 = *(v177 + 160);
      *&v398[176] = *(v177 + 176);
      *&v398[144] = v185;
      *&v398[160] = v186;
      *&v398[128] = v184;
      switch(sub_10030445C(v398))
      {
        case 1u:
          v226 = sub_100304468(v398);
          sub_1003042A8(v357, type metadata accessor for Response);
          v371 = *(v226 + 64);
          v372 = *(v226 + 80);
          v373 = *(v226 + 96);
          *&v374 = *(v226 + 112);
          v367 = *v226;
          v368 = *(v226 + 16);
          v369 = *(v226 + 32);
          v370 = *(v226 + 48);
          v227 = v299;
          v228 = *(v299 + 5);
          v379[4] = *(v299 + 4);
          v379[5] = v228;
          v379[6] = *(v299 + 6);
          *&v379[7] = *(v299 + 14);
          v229 = *(v299 + 1);
          v379[0] = *v299;
          v379[1] = v229;
          v230 = *(v299 + 3);
          v379[2] = *(v299 + 2);
          v379[3] = v230;
          sub_100025F40(v379, &qword_1005D8038, &unk_1004F4C00);
          v231 = v372;
          v227[4] = v371;
          v227[5] = v231;
          v227[6] = v373;
          *(v227 + 14) = v374;
          goto LABEL_109;
        case 2u:
          *&v349[16] = *sub_100304468(v398);
          sub_1003042A8(v357, type metadata accessor for Response);
          v444 = 0;
          goto LABEL_22;
        case 3u:
          LODWORD(v355) = *sub_100304468(v398);
          sub_1003042A8(v357, type metadata accessor for Response);
          v477 = 0;
          goto LABEL_22;
        case 4u:
          v200 = *sub_100304468(v398);
          if (HIDWORD(v200))
          {
            goto LABEL_138;
          }

          sub_1003042A8(v357, type metadata accessor for Response);
          v441 = 0;
          v348 = v200;
          goto LABEL_22;
        case 5u:
          v232 = sub_100304468(v398);
          sub_1003042A8(v357, type metadata accessor for Response);
          v233 = *v232;
          v234 = *(v232 + 16);
          v235 = *(v232 + 48);
          if (*(v232 + 177))
          {
            v369 = *(v232 + 32);
            v370 = v235;
            v367 = v233;
            v368 = v234;
            v236 = *(v232 + 64);
            v237 = *(v232 + 80);
            v238 = *(v232 + 96);
            v374 = *(v232 + 112);
            v372 = v237;
            v373 = v238;
            v371 = v236;
            v239 = *(v232 + 128);
            v240 = *(v232 + 144);
            v241 = *(v232 + 160);
            v378 = *(v232 + 176);
            v376 = v240;
            v377 = v241;
            v375 = v239;
            UInt32.init(_:)(&v367);
            v227 = &v452;
            v379[8] = v460;
            v379[9] = v461;
            v379[10] = v462;
            LOBYTE(v379[11]) = v463;
            v379[4] = v456;
            v379[5] = v457;
            v379[6] = v458;
            v379[7] = v459;
            v379[0] = v452;
            v379[1] = v453;
            v379[2] = v454;
            v379[3] = v455;
            sub_100025F40(v379, &qword_1005CDFD0, &qword_1004EE450);
            v242 = v374;
            v460 = v375;
            v461 = v376;
            v462 = v377;
            v463 = v378;
          }

          else
          {
            v369 = *(v232 + 32);
            v370 = v235;
            v367 = v233;
            v368 = v234;
            v243 = *(v232 + 64);
            v244 = *(v232 + 80);
            v245 = *(v232 + 96);
            v374 = *(v232 + 112);
            v372 = v244;
            v373 = v245;
            v371 = v243;
            v246 = *(v232 + 128);
            v247 = *(v232 + 144);
            v248 = *(v232 + 160);
            v378 = *(v232 + 176);
            v376 = v247;
            v377 = v248;
            v375 = v246;
            UInt32.init(_:)(&v367);
            v227 = v298;
            v249 = *(v298 + 9);
            v379[8] = *(v298 + 8);
            v379[9] = v249;
            v379[10] = *(v298 + 10);
            LOBYTE(v379[11]) = v298[176];
            v250 = *(v298 + 5);
            v379[4] = *(v298 + 4);
            v379[5] = v250;
            v251 = *(v298 + 7);
            v379[6] = *(v298 + 6);
            v379[7] = v251;
            v252 = *(v298 + 1);
            v379[0] = *v298;
            v379[1] = v252;
            v253 = *(v298 + 3);
            v379[2] = *(v298 + 2);
            v379[3] = v253;
            sub_100025F40(v379, &qword_1005CDFD0, &qword_1004EE450);
            v254 = v376;
            v255 = v377;
            v242 = v374;
            v227[8] = v375;
            v227[9] = v254;
            v227[10] = v255;
            *(v227 + 176) = v378;
          }

          v256 = v372;
          v227[4] = v371;
          v227[5] = v256;
          v227[6] = v373;
          v227[7] = v242;
LABEL_109:
          v257 = v368;
          *v227 = v367;
          v227[1] = v257;
          v258 = v370;
          v227[2] = v369;
          v227[3] = v258;
          goto LABEL_22;
        case 6u:
        case 9u:
        case 0xAu:
          sub_100304468(v398);
          v379[8] = v390;
          v379[9] = v391;
          v379[10] = v392;
          LOWORD(v379[11]) = v393;
          v379[4] = v386;
          v379[5] = v387;
          v379[6] = v388;
          v379[7] = v389;
          v379[0] = v382;
          v379[1] = v383;
          v379[2] = v384;
          v379[3] = v385;
          sub_1003044D4();
          swift_allocError();
          v286 = v379[3];
          v288 = v379[0];
          v287 = v379[1];
          *(v289 + 32) = v379[2];
          *(v289 + 48) = v286;
          *v289 = v288;
          *(v289 + 16) = v287;
          v290 = v379[7];
          v292 = v379[4];
          v291 = v379[5];
          *(v289 + 96) = v379[6];
          *(v289 + 112) = v290;
          *(v289 + 64) = v292;
          *(v289 + 80) = v291;
          v294 = v379[9];
          v293 = v379[10];
          v295 = v379[8];
          *(v289 + 176) = v379[11];
          *(v289 + 144) = v294;
          *(v289 + 160) = v293;
          *(v289 + 128) = v295;
          swift_willThrow();
          goto LABEL_133;
        case 7u:
          v214 = sub_100304468(v398);
          v215 = *(v214 + 8);
          v216 = *(v214 + 16);
          v217 = *(v214 + 24);
          v218 = *(v214 + 32);
          v481 = *v214;
          v482 = v215;
          v483 = v216;
          v484 = v217;
          v485 = v218;
          v379[8] = v390;
          v379[9] = v391;
          v379[10] = v392;
          LOWORD(v379[11]) = v393;
          v379[4] = v386;
          v379[5] = v387;
          v379[6] = v388;
          v379[7] = v389;
          v379[2] = v384;
          v379[3] = v385;
          v379[0] = v382;
          v379[1] = v383;
          v219 = sub_1002F9BA4(v379);
          sub_100304478(v219, &v367);
          v363 = StreamingKind.sectionSpecifier.getter();
          v356 = v220;
          LODWORD(v322) = v221;
          if (!(v218 >> 6))
          {
            goto LABEL_95;
          }

          if (v218 >> 6 == 1)
          {
            v215 = v217;
            LOBYTE(v216) = v218;
LABEL_95:
            v222 = v216 | (HIDWORD(v215) != 0);
            if (v222)
            {
              v223 = 0;
            }

            else
            {
              v223 = v215;
            }
          }

          else
          {
            v223 = 0;
            v222 = 1;
          }

          v259 = type metadata accessor for MessageData.BodyData();
          v260 = *(*(v259 - 8) + 56);
          v261 = v319;
          v260(v319, 1, 1, v259);
          v262 = *(v334 + 24);
          v263 = v320;
          v260(&v320[v262], 1, 1, v259);
          v264 = v356;
          *v263 = v363;
          *(v263 + 1) = v264;
          v263[16] = v322;
          *(v263 + 5) = v223;
          v263[24] = v222 & 1;
          sub_10027F8A8(v261, &v263[v262], &qword_1005CE218, &unk_1004F3FD0);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v316 = sub_1002FAE1C(0, v316[2] + 1, 1, v316);
          }

          v64 = v438;
          v68 = v364;
          v67 = v362;
          v266 = v316[2];
          v265 = v316[3];
          if (v266 >= v265 >> 1)
          {
            v316 = sub_1002FAE1C(v265 > 1, v266 + 1, 1, v316);
          }

          sub_100304408(&v382);
          sub_100304408(&v382);
          sub_1003042A8(v357, type metadata accessor for Response);
          v160 = v316;
          v316[2] = v266 + 1;
          v161 = v160 + ((*(v333 + 80) + 32) & ~*(v333 + 80)) + *(v333 + 72) * v266;
          v162 = v320;
          break;
        case 8u:
          v350 = *sub_100304468(v398);
          sub_1003042A8(v357, type metadata accessor for Response);
          v439 = 0;
          goto LABEL_22;
        case 0xBu:
          v208 = sub_100304468(v398);
          v209 = sub_100303C18(*v208);
          sub_100304408(&v382);
          sub_1003042A8(v357, type metadata accessor for Response);

          *&v349[8] = v209;
          v302 = v209;
          goto LABEL_22;
        case 0xCu:
          v212 = sub_100304468(v398);
          v213 = v212[1];
          v345 = *v212;
          sub_1003042A8(v357, type metadata accessor for Response);

          v351 = v213;
          v303 = v213;
          goto LABEL_22;
        case 0xDu:
          v210 = sub_100304468(v398);
          v211 = v210[1];
          v347 = *v210;
          sub_1003042A8(v357, type metadata accessor for Response);

          v346 = v211;
          v304 = v211;
          goto LABEL_22;
        case 0xEu:
          v224 = sub_100304468(v398);
          v225 = v224[1];
          v315 = *v224;
          sub_1003042A8(v357, type metadata accessor for Response);

          v352 = v225;
          v305 = v225;
          goto LABEL_22;
        default:
          v187 = sub_100304468(v398);
          v188 = sub_100303B80(*v187);
          sub_100304408(&v382);
          sub_1003042A8(v357, type metadata accessor for Response);

          *v349 = v188;
          v301 = v188;
          goto LABEL_22;
      }

      goto LABEL_56;
    }

    if (v129 != 3)
    {
      sub_1002F9BA4(v380);
      sub_100304398();
      swift_allocError();
      v270 = 1;
      goto LABEL_121;
    }

    v130 = sub_1002F9BA4(v380);
    v131 = *(v130 + 8);
    v133 = *(v130 + 16);
    v132 = *(v130 + 24);
    v134 = *(v130 + 32);
    v486 = *v130;
    v487 = v131;
    v488 = v133;
    v489 = v132;
    v490 = v134;
    v135 = v328;
    sub_10000E268(v354, v328, &qword_1005D8578, &unk_1004F4BF0);
    v136 = (*v311)(v135, 1, v343);
    sub_100025F40(v135, &qword_1005D8578, &unk_1004F4BF0);
    if (v136 != 1)
    {
      sub_100304398();
      swift_allocError();
      *v283 = 5;
      *(v283 + 4) = 256;
      swift_willThrow();
      sub_100304408(&v382);
      sub_1003042A8(v357, type metadata accessor for Response);
      v281 = v354;
      goto LABEL_131;
    }

    if (v134 >> 6)
    {
      if (v134 >> 6 != 1)
      {
        LODWORD(v322) = 0;
        LODWORD(v363) = 1;
        goto LABEL_21;
      }

      v137 = HIDWORD(v132) != 0;
      if (v134 & 1 | (HIDWORD(v132) != 0))
      {
        v138 = 0;
      }

      else
      {
        v138 = v132;
      }

      if ((v134 & 1) == 0)
      {
        goto LABEL_83;
      }
    }

    else
    {
      v137 = HIDWORD(v131) != 0;
      if (v133 & 1 | (HIDWORD(v131) != 0))
      {
        v138 = 0;
      }

      else
      {
        v138 = v131;
      }

      if ((v133 & 1) == 0)
      {
        v132 = v131;
LABEL_83:
        v64 = v438;
        v207 = v138;
        if (v137)
        {
          v207 = 0;
        }

        if (v137 || v132 != v207)
        {
          sub_100304398();
          swift_allocError();
          v270 = 8;
          goto LABEL_121;
        }

        LODWORD(v363) = 0;
        goto LABEL_20;
      }
    }

    LODWORD(v363) = 1;
LABEL_20:
    LODWORD(v322) = v138;
LABEL_21:
    v92 = StreamingKind.sectionSpecifier.getter();
    v94 = v93;
    v96 = v95;
    sub_100304408(&v382);
    sub_1003042A8(v357, type metadata accessor for Response);
    v97 = v354;
    sub_100025F40(v354, &qword_1005D8578, &unk_1004F4BF0);
    v98 = v343;
    v99 = v323;
    (*v308)(&v323[*(v343 + 24)], 1, 1, v341);
    *v99 = v92;
    *(v99 + 8) = v94;
    *(v99 + 16) = v96;
    *(v99 + 20) = v322;
    *(v99 + 24) = v363;
    v312(v99, 0, 1, v98);
    sub_100025FDC(v99, v97, &qword_1005D8578, &unk_1004F4BF0);
    v68 = v364;
    v67 = v362;
    v64 = v438;
LABEL_22:
    ++v344;
    if (*(*v601 + 24) <= 0)
    {
      v91 = v338;
      goto LABEL_119;
    }
  }

  v139 = v315;
  v140 = v337;
  if (v129 != 4)
  {
    if (v129 != 5)
    {
      sub_1003042A8(v357, type metadata accessor for Response);
      sub_100025F40(v354, &qword_1005D8578, &unk_1004F4BF0);
      LODWORD(v379[0]) = v353;
      BYTE4(v379[0]) = v480;
      *(v379 + 5) = v478;
      BYTE7(v379[0]) = v479;
      v275 = v355;
      DWORD2(v379[0]) = v355;
      BYTE12(v379[0]) = v477;
      *(&v379[8] + 13) = v473;
      *(&v379[9] + 13) = v474;
      *(&v379[10] + 13) = v475;
      *(&v379[11] + 13) = v476;
      *(&v379[4] + 13) = v469;
      *(&v379[5] + 13) = v470;
      *(&v379[6] + 13) = v471;
      *(&v379[7] + 13) = v472;
      *(v379 + 13) = v465;
      *(&v379[1] + 13) = v466;
      *(&v379[2] + 13) = v467;
      *(&v379[3] + 13) = v468;
      *(&v379[12] + 1) = v464[0];
      DWORD1(v379[12]) = *(v464 + 3);
      *(&v379[12] + 1) = v356;
      v379[21] = v460;
      v379[22] = v461;
      v379[23] = v462;
      LOBYTE(v379[24]) = v463;
      v379[17] = v456;
      v379[18] = v457;
      v379[19] = v458;
      v379[20] = v459;
      v379[13] = v452;
      v379[14] = v453;
      v379[15] = v454;
      v379[16] = v455;
      *(&v379[28] + 1) = v449;
      *(&v379[29] + 1) = v450;
      *(&v379[30] + 1) = v451[0];
      *(&v379[24] + 1) = v445;
      *(&v379[25] + 1) = v446;
      *(&v379[26] + 1) = v447;
      *(&v379[27] + 1) = v448;
      v379[31] = *(v451 + 15);
      v379[32] = *v349;
      *&v379[33] = *&v349[16];
      BYTE8(v379[33]) = v444;
      *(&v379[33] + 9) = v442;
      BYTE11(v379[33]) = v443;
      HIDWORD(v379[33]) = v348;
      LOBYTE(v379[34]) = v441;
      *(&v379[34] + 1) = v440[0];
      DWORD1(v379[34]) = *(v440 + 3);
      *(&v379[34] + 1) = v350;
      LOBYTE(v379[35]) = v439;
      *(&v379[35] + 1) = v438[0];
      DWORD1(v379[35]) = *(v438 + 3);
      v277 = v345;
      v276 = v346;
      *(&v379[35] + 1) = v345;
      *&v379[36] = v351;
      v278 = v347;
      *(&v379[36] + 1) = v347;
      *&v379[37] = v346;
      *(&v379[37] + 1) = v139;
      *&v379[38] = v352;
      memcpy(v317, v379, 0x268uLL);
      type metadata accessor for UntaggedResponse(0);
      swift_storeEnumTagMultiPayload();
      type metadata accessor for Response(0);
      swift_storeEnumTagMultiPayload();
      *v398 = v353;
      v398[4] = v480;
      *&v398[5] = v478;
      v398[7] = v479;
      *&v398[8] = v275;
      v398[12] = v477;
      *&v398[141] = v473;
      *&v398[157] = v474;
      *&v398[173] = v475;
      v399 = v476;
      *&v398[77] = v469;
      *&v398[93] = v470;
      *&v398[109] = v471;
      *&v398[125] = v472;
      *&v398[13] = v465;
      *&v398[29] = v466;
      *&v398[45] = v467;
      *&v398[61] = v468;
      *v400 = v464[0];
      *&v400[3] = *(v464 + 3);
      v401 = v356;
      v410 = v460;
      v411 = v461;
      v412 = v462;
      v413 = v463;
      v406 = v456;
      v407 = v457;
      v408 = v458;
      v409 = v459;
      v402 = v452;
      v403 = v453;
      v404 = v454;
      v405 = v455;
      v418 = v449;
      v419 = v450;
      *v420 = v451[0];
      v414 = v445;
      v415 = v446;
      v416 = v447;
      v417 = v448;
      *&v420[15] = *(v451 + 15);
      v421 = *v349;
      v422 = *&v349[8];
      v423 = v444;
      v424 = v442;
      v425 = v443;
      v426 = v348;
      v427 = v441;
      *v428 = v440[0];
      *&v428[3] = *(v440 + 3);
      v429 = v350;
      v430 = v439;
      *v431 = v438[0];
      *&v431[3] = *(v438 + 3);
      v432 = v277;
      v433 = v351;
      v434 = v278;
      v435 = v276;
      v436 = v139;
      v437 = v352;
      sub_1002EBB50(v379, &v367);
      return sub_100025D5C(v398);
    }

    v141 = v354;
    v142 = v329;
    sub_10000E268(v354, v329, &qword_1005D8578, &unk_1004F4BF0);
    v143 = v343;
    if ((*v311)(v142, 1, v343) == 1)
    {
      sub_100025F40(v142, &qword_1005D8578, &unk_1004F4BF0);
      sub_100304398();
      swift_allocError();
      *v282 = 7;
      *(v282 + 4) = 256;
      swift_willThrow();
      sub_1003042A8(v357, type metadata accessor for Response);
      v274 = v141;
      goto LABEL_125;
    }

    sub_100025F40(v141, &qword_1005D8578, &unk_1004F4BF0);
    v144 = v335;
    sub_1003026F8(v142, v335, type metadata accessor for StreamedBodySection);
    v145 = 1;
    v312(v141, 1, 1, v143);
    v146 = v325;
    sub_100304240(v144, v325, type metadata accessor for StreamedBodySection);
    v147 = *v146;
    v148 = *(v146 + 8);
    v149 = *(v146 + 16);
    LODWORD(v322) = *(v146 + 20);
    LODWORD(v307) = *(v146 + 24);
    v150 = v331;
    sub_10000E268(v146 + *(v143 + 24), v331, &qword_1005D05E0, &qword_1004D65C0);
    v363 = v147;

    v356 = v148;
    sub_100051190(v148, v149);
    sub_1003042A8(v146, type metadata accessor for StreamedBodySection);
    if ((*v314)(v150, 1, v341) != 1)
    {
      (*v300)(v332, v331, v341);
      v145 = 0;
    }

    v151 = type metadata accessor for MessageData.BodyData();
    v152 = *(*(v151 - 8) + 56);
    v153 = v332;
    v152(v332, v145, 1, v151);
    v154 = *(v334 + 24);
    v155 = v336;
    v152(&v336[v154], 1, 1, v151);
    v156 = v356;
    *v155 = v363;
    *(v155 + 1) = v156;
    v155[16] = v149;
    *(v155 + 5) = v322;
    v155[24] = v307;
    sub_10027F8A8(v153, &v155[v154], &qword_1005CE218, &unk_1004F3FD0);
    v157 = v316;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v316 = sub_1002FAE1C(0, v157[2] + 1, 1, v157);
    }

    v64 = v438;
    v68 = v364;
    v67 = v362;
    v159 = v316[2];
    v158 = v316[3];
    if (v159 >= v158 >> 1)
    {
      v316 = sub_1002FAE1C(v158 > 1, v159 + 1, 1, v316);
    }

    sub_1003042A8(v335, type metadata accessor for StreamedBodySection);
    sub_1003042A8(v357, type metadata accessor for Response);
    v160 = v316;
    v316[2] = v159 + 1;
    v161 = v160 + ((*(v333 + 80) + 32) & ~*(v333 + 80)) + *(v333 + 72) * v159;
    v162 = v336;
LABEL_56:
    sub_1003026F8(v162, v161, type metadata accessor for MessageData.BodySection);
    v356 = v160;
    goto LABEL_22;
  }

  v163 = sub_1002F9BA4(v380);
  v164 = *v163;
  v165 = *(v163 + 8);
  v166 = *(v163 + 12);
  v167 = *(v163 + 20);
  v168 = *(v163 + 22);
  v169 = v330;
  sub_10000E268(v354, v330, &qword_1005D8578, &unk_1004F4BF0);
  v170 = v343;
  if ((*v311)(v169, 1, v343) == 1)
  {
    *&v398[128] = v390;
    *&v398[144] = v391;
    *&v398[160] = v392;
    *&v398[176] = v393;
    *&v398[64] = v386;
    *&v398[80] = v387;
    *&v398[96] = v388;
    *&v398[112] = v389;
    *v398 = v382;
    *&v398[16] = v383;
    *&v398[32] = v384;
    *&v398[48] = v385;
    v279 = *sub_1002F9BA4(v398);

    sub_100025F40(v169, &qword_1005D8578, &unk_1004F4BF0);
    sub_100304398();
    swift_allocError();
    *v280 = 6;
    *(v280 + 4) = 256;
    swift_willThrow();
    sub_100304408(&v382);
    sub_100304408(&v382);
    sub_1003042A8(v357, type metadata accessor for Response);
    v281 = v354;
LABEL_131:
    sub_100025F40(v281, &qword_1005D8578, &unk_1004F4BF0);
    v64 = v438;
    goto LABEL_126;
  }

  v307 = v166;
  v363 = v165;
  v171 = v169;
  v172 = v339;
  sub_1003026F8(v171, v339, type metadata accessor for StreamedBodySection);
  v173 = *(v170 + 24);
  sub_10000E268(v172 + v173, v140, &qword_1005D05E0, &qword_1004D65C0);
  v174 = v341;
  v322 = *v314;
  if (v322(v140, 1, v341) == 1)
  {
    *&v398[128] = v390;
    *&v398[144] = v391;
    *&v398[160] = v392;
    *&v398[176] = v393;
    *&v398[64] = v386;
    *&v398[80] = v387;
    *&v398[96] = v388;
    *&v398[112] = v389;
    *v398 = v382;
    *&v398[16] = v383;
    *&v398[32] = v384;
    *&v398[48] = v385;
    v175 = *sub_1002F9BA4(v398);

    sub_100025F40(v140, &qword_1005D05E0, &qword_1004D65C0);
    v176 = v321;
    sub_1004A5344();
    (*v308)(v176, 0, 1, v174);
    sub_10027F8A8(v176, v172 + v173, &qword_1005D05E0, &qword_1004D65C0);
  }

  else
  {
    *&v398[128] = v390;
    *&v398[144] = v391;
    *&v398[160] = v392;
    *&v398[176] = v393;
    *&v398[64] = v386;
    *&v398[80] = v387;
    *&v398[96] = v388;
    *&v398[112] = v389;
    *v398 = v382;
    *&v398[16] = v383;
    *&v398[32] = v384;
    *&v398[48] = v385;
    v189 = *sub_1002F9BA4(v398);

    sub_100025F40(v140, &qword_1005D05E0, &qword_1004D65C0);
  }

  swift_beginAccess();
  v190 = *(v164 + 24) + (v168 | (v167 << 8));
  v191 = v327;
  sub_1004A5324();
  v192 = v322(v172 + v173, 1, v174);
  v193 = v326;
  if (v192 == 1)
  {
    goto LABEL_143;
  }

  v307 = v173;
  sub_1004A5354();
  v306 = *v309;
  v306(v191, v174);
  v194 = v316[2];
  if (!v194)
  {
    v195 = 0;
LABEL_74:
    v201 = v324;
    sub_10000E268(v339 + v307, v324, &qword_1005D05E0, &qword_1004D65C0);
    v202 = v341;
    if (v322(v201, 1, v341) == 1)
    {
      goto LABEL_144;
    }

    v203 = _s13IMAP2Protocol11MessageDataV04BodyD0V5countSivg_0();
    v306(v201, v202);
    v204 = v195 + v203;
    v64 = v438;
    v67 = v362;
    if (__OFADD__(v195, v203))
    {
      goto LABEL_142;
    }

    v68 = v364;
    if (v204 > 999999)
    {
      sub_100304398();
      swift_allocError();
      *v285 = 4;
      *(v285 + 4) = 256;
      swift_willThrow();
      sub_100304408(&v382);
      sub_100304408(&v382);
      sub_1003042A8(v357, type metadata accessor for Response);
      sub_100025F40(v354, &qword_1005D8578, &unk_1004F4BF0);
      sub_1003042A8(v339, type metadata accessor for StreamedBodySection);
      goto LABEL_126;
    }

    sub_100304408(&v382);
    sub_100304408(&v382);
    sub_1003042A8(v357, type metadata accessor for Response);
    v205 = v354;
    sub_100025F40(v354, &qword_1005D8578, &unk_1004F4BF0);
    v206 = v339;
    sub_100304240(v339, v205, type metadata accessor for StreamedBodySection);
    v312(v205, 0, 1, v343);
    sub_1003042A8(v206, type metadata accessor for StreamedBodySection);
    goto LABEL_22;
  }

  v195 = 0;
  v363 = *(v334 + 24);
  v64 = v316 + ((*(v333 + 80) + 32) & ~*(v333 + 80));
  v196 = *(v333 + 72);
  v197 = v361;
  while (2)
  {
    sub_100304240(v64, v197, type metadata accessor for MessageData.BodySection);
    sub_10000E268(v197 + v363, v193, &qword_1005CE218, &unk_1004F3FD0);
    v198 = type metadata accessor for MessageData.BodyData();
    if ((*(*(v198 - 8) + 48))(v193, 1, v198) == 1)
    {
      sub_1003042A8(v197, type metadata accessor for MessageData.BodySection);
      sub_100025F40(v193, &qword_1005CE218, &unk_1004F3FD0);
      goto LABEL_69;
    }

    v199 = v197;
    v200 = _s13IMAP2Protocol11MessageDataV04BodyD0V5countSivg_0();
    sub_1003042A8(v199, type metadata accessor for MessageData.BodySection);
    sub_1003042A8(v193, type metadata accessor for MessageData.BodyData);
    v104 = __OFADD__(v195, v200);
    v195 += v200;
    if (!v104)
    {
      v197 = v361;
LABEL_69:
      v64 += v196;
      if (!--v194)
      {
        goto LABEL_74;
      }

      continue;
    }

    break;
  }

  __break(1u);
LABEL_138:
  sub_1003041D8();
  swift_allocError();
  *v296 = v200;
  *(v296 + 8) = 0;
  *(v296 + 16) = 2;
  swift_willThrow();
LABEL_122:
  v268 = v357;
LABEL_123:
  sub_1003042A8(v268, type metadata accessor for Response);
LABEL_124:
  v274 = v354;
LABEL_125:
  sub_100025F40(v274, &qword_1005D8578, &unk_1004F4BF0);
LABEL_126:
  v65 = v315;
LABEL_16:
  *v398 = v353;
  v398[4] = v480;
  *&v398[5] = v478;
  v398[7] = v479;
  *&v398[8] = v355;
  v398[12] = v477;
  *&v398[141] = v473;
  *&v398[157] = v474;
  *&v398[173] = v475;
  v399 = v476;
  *&v398[77] = v469;
  *&v398[93] = v470;
  *&v398[109] = v471;
  *&v398[125] = v472;
  *&v398[13] = v465;
  *&v398[29] = v466;
  *&v398[45] = v467;
  *&v398[61] = v468;
  *v400 = v464[0];
  *&v400[3] = *(v464 + 3);
  v401 = v356;
  v410 = v460;
  v411 = v461;
  v412 = v462;
  v413 = v463;
  v406 = v456;
  v407 = v457;
  v408 = v458;
  v409 = v459;
  v402 = v452;
  v403 = v453;
  v404 = v454;
  v405 = v455;
  v86 = *(v64 + 120);
  v418 = *(v64 + 104);
  v419 = v86;
  *v420 = *(v64 + 136);
  v87 = *(v64 + 56);
  v414 = *(v64 + 40);
  v415 = v87;
  v88 = *(v64 + 88);
  v416 = *(v64 + 72);
  v417 = v88;
  *&v420[15] = *(v64 + 151);
  v421 = *v349;
  v422 = *&v349[8];
  v423 = v444;
  v424 = v442;
  v425 = v443;
  v426 = v348;
  v427 = v441;
  *v428 = v440[0];
  *&v428[3] = *(v64 + 19);
  v429 = v350;
  v430 = v439;
  v89 = *(v64 + 3);
  *v431 = v438[0];
  *&v431[3] = v89;
  v432 = v345;
  v433 = v351;
  v434 = v347;
  v435 = v346;
  v436 = v65;
  v437 = v352;
  return sub_100025D5C(v398);
}