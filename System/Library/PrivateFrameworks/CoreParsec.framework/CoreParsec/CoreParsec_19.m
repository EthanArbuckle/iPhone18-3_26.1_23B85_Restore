uint64_t ByteBuffer.writeAvroUnion(_:)(uint64_t a1)
{
  v3 = sub_100173028(*(a1 + 80));
  ByteBuffer.writeBytes(_:)(v3);
  sub_100172F08();
  memcpy(__dst, (a1 + 8), 0x41uLL);
  v4 = ByteBuffer.writeAvroValue(_:)(__dst);
  v5 = __OFADD__(v1, v4);
  result = v1 + v4;
  if (v5)
  {
    __break(1u);
  }

  return result;
}

Swift::Int __swiftcall ByteBuffer.writeAvroString(_:)(Swift::String a1)
{
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  if ((a1._object & 0x1000000000000000) != 0)
  {
    v4 = String.UTF8View._foreignCount()();
  }

  else if ((a1._object & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(a1._object) & 0xF;
  }

  else
  {
    v4 = a1._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  v5 = sub_100173040(v4);
  ByteBuffer.writeBytes(_:)(v5);
  sub_100173314();
  v6._countAndFlagsBits = countAndFlagsBits;
  v6._object = object;
  v7 = ByteBuffer.writeString(_:)(v6);
  v8 = __OFADD__(v1, v7);
  result = v1 + v7;
  if (v8)
  {
    __break(1u);
  }

  return result;
}

Swift::Int sub_100170344(uint64_t a1)
{
  v1 = sub_100173040(a1);
  v2 = ByteBuffer.writeBytes(_:)(v1);

  return v2;
}

Swift::Int __swiftcall ByteBuffer.writeAvroInt(_:)(Swift::Int32 a1)
{
  v1 = sub_1001705C0((2 * a1) ^ (a1 >> 31));
  v2 = ByteBuffer.writeBytes(_:)(v1);

  return v2;
}

char *sub_1001704E8(Swift::OpaquePointer a1, unint64_t a2, uint64_t a3)
{
  v6 = (a2 >> 60) & 3;
  if (v6)
  {
    if (v6 != 1)
    {
      goto LABEL_9;
    }

    v3 = a3;
    v7 = sub_100173210();
    v10 = sub_100164430(v7, v8, v9);
    v4 = sub_100173040(v10);
    v11 = ByteBuffer.writeBytes(_:)(v4);

    v12 = sub_100173210();
    v14 = ByteBuffer.writeImmutableBuffer(_:)(v12, v13);
    v15 = __OFADD__(v11, v14);
    result = (v11 + v14);
    if (!v15)
    {
      return result;
    }

    __break(1u);
  }

  v17 = sub_1001706E8(2 * *(a1._rawValue + 2));
  ByteBuffer.writeBytes(_:)(v17);
  sub_100172F08();
  v18 = ByteBuffer.writeBytes(_:)(a1);
  v15 = __OFADD__(v3, v18);
  result = (v3 + v18);
  if (!v15)
  {
    return result;
  }

  __break(1u);
LABEL_9:
  sub_100173210();
  v19 = Data.count.getter();
  v20 = sub_100173040(v19);
  ByteBuffer.writeBytes(_:)(v20);
  sub_100173314();
  v21 = sub_100173210();
  v23 = ByteBuffer.writeData(_:)(v21, v22);
  v15 = __OFADD__(v4, v23);
  result = v4 + v23;
  if (v15)
  {
    __break(1u);
  }

  return result;
}

void *sub_1001705C0(unsigned int a1)
{
  LOBYTE(v1) = a1 & 0x7F;
  if (a1 >= 0x80)
  {
    v6 = a1;
    sub_10006C9F0(0, 1, 1, _swiftEmptyArrayStorage);
    v2 = v7;
    v8 = v7[2];
    do
    {
      v9 = v2[3];
      if (v8 >= v9 >> 1)
      {
        sub_10006C9F0(v9 > 1, v8 + 1, 1, v2);
        v2 = v12;
      }

      v10 = v1 | 0x80;
      v1 = (v6 >> 7) & 0x7F;
      v11 = v6 >> 14;
      v6 >>= 7;
      v2[2] = v8 + 1;
      *(v2 + v8++ + 32) = v10;
    }

    while (v11);
  }

  else
  {
    v2 = _swiftEmptyArrayStorage;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_10006C9F0(0, v2[2] + 1, 1, v2);
    v2 = v13;
  }

  v4 = v2[2];
  v3 = v2[3];
  if (v4 >= v3 >> 1)
  {
    sub_10006C9F0(v3 > 1, v4 + 1, 1, v2);
    v2 = v14;
  }

  v2[2] = v4 + 1;
  *(v2 + v4 + 32) = v1;
  return v2;
}

void *sub_1001706E8(unint64_t a1)
{
  LOBYTE(v1) = a1 & 0x7F;
  if (a1 >= 0x80)
  {
    v6 = a1;
    sub_10006C9F0(0, 1, 1, _swiftEmptyArrayStorage);
    v2 = v7;
    v8 = v7[2];
    do
    {
      v9 = v2[3];
      if (v8 >= v9 >> 1)
      {
        sub_10006C9F0(v9 > 1, v8 + 1, 1, v2);
        v2 = v12;
      }

      v10 = v1 | 0x80;
      v1 = (v6 >> 7) & 0x7F;
      v11 = v6 >> 14;
      v6 >>= 7;
      v2[2] = v8 + 1;
      *(v2 + v8++ + 32) = v10;
    }

    while (v11);
  }

  else
  {
    v2 = _swiftEmptyArrayStorage;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_10006C9F0(0, v2[2] + 1, 1, v2);
    v2 = v13;
  }

  v4 = v2[2];
  v3 = v2[3];
  if (v4 >= v3 >> 1)
  {
    sub_10006C9F0(v3 > 1, v4 + 1, 1, v2);
    v2 = v14;
  }

  v2[2] = v4 + 1;
  *(v2 + v4 + 32) = v1;
  return v2;
}

Swift::Int __swiftcall ByteBuffer.writeAvroBytes(_:)(Swift::OpaquePointer a1)
{
  v3 = sub_1001706E8(2 * *(a1._rawValue + 2));
  ByteBuffer.writeBytes(_:)(v3);
  sub_100172F08();
  v4 = ByteBuffer.writeBytes(_:)(a1);
  v5 = __OFADD__(v1, v4);
  result = v1 + v4;
  if (v5)
  {
    __break(1u);
  }

  return result;
}

Swift::Int ByteBuffer.writeAvroBytes(_:)(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v3 = sub_100164430(a1, a2, a3);
  v4 = sub_100173040(v3);
  v5 = ByteBuffer.writeBytes(_:)(v4);

  v6 = sub_10000F18C();
  v8 = ByteBuffer.writeImmutableBuffer(_:)(v6, v7);
  v9 = __OFADD__(v5, v8);
  result = v5 + v8;
  if (v9)
  {
    __break(1u);
  }

  return result;
}

uint64_t ByteBuffer.writeAvroBytes(_:)(uint64_t a1, unint64_t a2)
{
  v5 = Data.count.getter();
  v6 = sub_100173040(v5);
  ByteBuffer.writeBytes(_:)(v6);
  sub_100173314();
  v7 = ByteBuffer.writeData(_:)(a1, a2);
  v8 = __OFADD__(v2, v7);
  result = v2 + v7;
  if (v8)
  {
    __break(1u);
  }

  return result;
}

void *sub_100170930()
{
  v1 = *v0;
  v2 = v0[1];
  ByteBufferView.init(_:)(*v0, v2, v0[2], v25);
  v3 = v26;
  v4 = v27;
  v23 = v26 - v27;
  if (v26 != v27)
  {
    v22 = v0;
    v5 = v25[0];
    v6 = v25[1];
    v7 = v25[2];
    sub_100014924(v1, v2);
    v8 = 0;
    v24 = v7;
    v9 = v28;
    v10 = v28;
    v11 = v6 >> 62;
    v12 = v23;
    while (1)
    {
      if (v3 + v8 >= v4)
      {
        __break(1u);
LABEL_25:
        __break(1u);
LABEL_26:
        __break(1u);
LABEL_27:
        __break(1u);
LABEL_28:
        __break(1u);
      }

      if (v3 < v7)
      {
        goto LABEL_25;
      }

      switch(v11)
      {
        case 1uLL:
          if (v5 >> 32 < v5)
          {
            goto LABEL_26;
          }

          v18 = __DataStorage._bytes.getter();
          if (!v18)
          {
            goto LABEL_17;
          }

          v19 = __DataStorage._offset.getter();
          if (__OFSUB__(v5, v19))
          {
            goto LABEL_28;
          }

          v18 += v5 - v19;
LABEL_17:
          __DataStorage._length.getter();
          v13 = *(v18 + v3 + v8);
LABEL_18:
          v11 = v6 >> 62;
          v7 = v24;
LABEL_19:
          if ((v13 & 0x80) == 0)
          {
            ByteBufferView.subscript.getter(v3, v3 + v8 + 1, v28);
            v20 = sub_10016795C(v28);
            sub_100168B48(v25);
            v22[2] = v3 + v8 + 1;
            return v20;
          }

          ++v8;
          ++v9;
          ++v10;
          if (!(v12 + v8))
          {
            goto LABEL_21;
          }

          break;
        case 2uLL:
          v14 = v4;
          v15 = *(v5 + 16);
          v16 = __DataStorage._bytes.getter();
          if (!v16)
          {
            goto LABEL_11;
          }

          v17 = __DataStorage._offset.getter();
          if (__OFSUB__(v15, v17))
          {
            goto LABEL_27;
          }

          v16 += v15 - v17;
LABEL_11:
          __DataStorage._length.getter();
          v13 = *(v16 + v3 + v8);
          v4 = v14;
          v12 = v23;
          goto LABEL_18;
        case 3uLL:
          *&v28[6] = 0;
          *v28 = 0;
          v13 = v10[v3];
          goto LABEL_19;
        default:
          *v28 = v5;
          *&v28[8] = v6;
          *&v28[12] = WORD2(v6);
          v13 = v9[v3];
          goto LABEL_19;
      }
    }
  }

  sub_100014924(v1, v2);
LABEL_21:
  sub_100168B48(v25);
  return 0;
}

uint64_t sub_100170B9C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = 0;
    v3 = a1 + 31;
    do
    {
      v4 = *(v3 + v1) & 0x7F | (v2 << 7);
      v2 = *(v3 + v1--) & 0x7F | (v2 << 7);
    }

    while (v1);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

unint64_t sub_100170BEC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = 0;
    do
    {
      v3 = *(a1 + 31 + v1) & 0x7F | (v2 << 7);
      v2 = v3;
      --v1;
    }

    while (v1);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void *ByteBuffer.readAvroValue(_:)@<X0>(unint64_t a1@<X0>, void *a2@<X8>)
{
  switch(a1 >> 61)
  {
    case 1uLL:
      sub_10017327C(a1);

      sub_100173168();
      ByteBuffer.readAvroArray(_:)();
      goto LABEL_7;
    case 2uLL:
      sub_10017327C(a1);

      v5 = sub_100173168();
      ByteBuffer.readAvroMap(_:)(v5, v6, v7, v8);
LABEL_7:

      goto LABEL_8;
    case 3uLL:
      v9 = *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
      v11[0] = *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v11[1] = v9;
      v11[2] = *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x30);
      v12 = *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x40);
      sub_1000967A0(v11, __src);
      ByteBuffer.readAvroRecord(_:)();
      sub_100161354(v11);
      return memcpy(a2, __src, 0x41uLL);
    case 4uLL:
      v3 = *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);

      ByteBuffer.readAvroUnion(_:)(v4, __src);
LABEL_8:

      break;
    default:
      ByteBuffer.readAvroPrimitive(_:)(*(a1 + 16), __src);
      break;
  }

  return memcpy(a2, __src, 0x41uLL);
}

uint64_t ByteBuffer.readAvroPrimitive(_:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  countAndFlagsBits = result;
  v5 = 7;
  object = result;
  switch(result)
  {
    case 1:
      v7 = *(v2 + 16);
      v8 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        goto LABEL_39;
      }

      v9 = sub_100164C10(*v2, *(v2 + 8), v7, *(v2 + 16));
      object = 0;
      result = 0;
      v5 = 0;
      *(v2 + 16) = v8;
      countAndFlagsBits = v9 != 0;
      goto LABEL_25;
    case 2:
      v22 = sub_100170930();
      if (!v22)
      {
        goto LABEL_24;
      }

      if (v22[2] >= 6uLL)
      {
        goto LABEL_23;
      }

      v23 = sub_100170B9C(v22);
      object = 0;
      result = 0;
      countAndFlagsBits = -(v23 & 1) ^ (v23 >> 1);
      v5 = 1;
      goto LABEL_25;
    case 3:
      v24 = sub_100170930();
      if (!v24)
      {
        goto LABEL_24;
      }

      v25 = sub_100172D34(v24);
      if (v26)
      {
        goto LABEL_23;
      }

      sub_100170BEC(v25);
      result = sub_10002DF84();
      countAndFlagsBits = -(v27 & 1) ^ (v27 >> 1);
      v5 = 2;
      goto LABEL_25;
    case 4:
      v10 = *(v2 + 16);
      if (__OFADD__(v10, 4))
      {
        __break(1u);
LABEL_39:
        __break(1u);
LABEL_40:
        __break(1u);
        return result;
      }

      v12 = *v2;
      v11 = *(v2 + 8);
      v13 = sub_100008380();
      sub_100014924(v13, v14);
      v15 = sub_10001AE8C();
      if ((sub_100164D3C(v15, v16, v17, v18, v19, v20, v21) & 0x100000000) != 0)
      {
        goto LABEL_24;
      }

      result = sub_10002DF84();
      *(v2 + 16) = v10 + 4;
      countAndFlagsBits = countAndFlagsBits;
      v5 = 3;
      goto LABEL_25;
    case 5:
      v32 = *(v2 + 16);
      if (__OFADD__(v32, 8))
      {
        goto LABEL_40;
      }

      v34 = *v2;
      v33 = *(v2 + 8);
      v35 = sub_100008380();
      sub_100014924(v35, v36);
      v37 = sub_10001AE8C();
      sub_100164FB4(v37, v38, v39, v40, v41, v42, v43);
      if (v44)
      {
        goto LABEL_24;
      }

      result = sub_10002DF84();
      *(v2 + 16) = v32 + 8;
      v5 = 4;
      goto LABEL_25;
    case 6:
      v45 = sub_100170930();
      if (!v45)
      {
        goto LABEL_24;
      }

      v46 = sub_100172D34(v45);
      if (v26)
      {
        goto LABEL_23;
      }

      v47 = sub_100170BEC(v46);
      v48 = sub_100172D08(v47);
      v49 = ByteBuffer.readString(length:)(v48);
      if (v49.value._object)
      {
        countAndFlagsBits = v49.value._countAndFlagsBits;
      }

      else
      {
        countAndFlagsBits = 0;
      }

      if (v49.value._object)
      {
        object = v49.value._object;
      }

      else
      {
        object = 0;
      }

      if (v49.value._object)
      {
        result = 0;
      }

      else
      {
        result = 255;
      }

      if (v49.value._object)
      {
        v5 = 5;
      }

      else
      {
        v5 = 0;
      }

      goto LABEL_25;
    case 7:
      v28 = sub_100170930();
      if (!v28)
      {
        goto LABEL_24;
      }

      v29 = sub_100172D34(v28);
      if (v26)
      {
LABEL_23:
      }

      else
      {
        v30 = sub_100170BEC(v29);
        v31 = sub_100172D08(v30);
        if (ByteBuffer.readBytes(length:)(v31))
        {
          result = sub_10002DF84();
          v5 = 6;
          goto LABEL_25;
        }
      }

LABEL_24:
      countAndFlagsBits = 0;
      object = 0;
      v5 = 0;
      result = 255;
LABEL_25:
      *a2 = countAndFlagsBits;
      *(a2 + 8) = object;
      *(a2 + 16) = 0;
      *(a2 + 24) = v5;
      *(a2 + 32) = 0u;
      *(a2 + 48) = 0u;
      *(a2 + 64) = result;
      return result;
    default:
      goto LABEL_25;
  }
}

void ByteBuffer.readAvroArray(_:)()
{
  sub_100005478();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = sub_100170930();
  if (!v9)
  {
    goto LABEL_69;
  }

  v10 = sub_100172D34(v9);
  if (v11)
  {
LABEL_68:

LABEL_69:
    v6 = 0;
    v4 = 0;
    v2 = 0;
    v15 = 0;
    v17 = 0uLL;
    v18 = 0uLL;
    v20 = -1;
    goto LABEL_70;
  }

  v12 = sub_100170BEC(v10);
  if (v12)
  {
LABEL_88:
    __break(1u);
LABEL_89:
    __break(1u);
LABEL_90:
    __break(1u);
LABEL_91:
    __break(1u);
LABEL_92:
    __break(1u);
LABEL_93:
    __break(1u);
LABEL_94:
    __break(1u);
LABEL_95:
    __break(1u);
LABEL_96:
    __break(1u);
LABEL_97:
    __break(1u);
  }

  v13 = -(v12 & 1);
  v14 = v2 & 0x1FFFFFFFFFFFFFFFLL;
  if (v12 >> 1 == v13)
  {

    v15 = _swiftEmptyArrayStorage;
    goto LABEL_6;
  }

  v21 = v13 ^ (v12 >> 1);

  v30 = 0;
  v84 = 0;
  v15 = _swiftEmptyArrayStorage;
  v91 = v2 >> 61;
  v92 = v0;
  v93 = v2 & 0x1FFFFFFFFFFFFFFFLL;
  v90 = v21;
  v85 = v4;
  v86 = v8;
  v82 = v2;
  v83 = v6;
LABEL_10:
  if (v30 >= v21)
  {
    goto LABEL_83;
  }

  v31 = __OFADD__(v30, 1);
  v32 = v30 + 1;
  if (v31)
  {
    goto LABEL_84;
  }

  v94 = v32;
  switch(v91)
  {
    case 1:
      sub_10017321C(isUniquelyReferenced_nonNull_native, v23, v24, v25, v26, v27, v28, v29, v82, v83, v84, v85, v86, v87, v88, *(&v88 + 1), v89, v90, v91, v92, v93);

      v44 = sub_100173188();
      ByteBuffer.readAvroArray(_:)(v44);
      v95 = v107;
      v97 = v108;
      v98 = v110;
      v100 = v109;
      v33 = v111;
      goto LABEL_19;
    case 2:
      sub_10017321C(isUniquelyReferenced_nonNull_native, v23, v24, v25, v26, v27, v28, v29, v82, v83, v84, v85, v86, v87, v88, *(&v88 + 1), v89, v90, v91, v92, v93);

      v39 = sub_100173188();
      ByteBuffer.readAvroMap(_:)(v39, v40, v41, v42);
      v95 = v112;
      v97 = v113;
      v98 = v115;
      v100 = v114;
      v33 = v116;
LABEL_19:
      v14 = v93;

      v0 = v92;

      goto LABEL_20;
    case 3:
      v43 = *(v14 + 32);
      v130[0] = *(v14 + 16);
      v130[1] = v43;
      v130[2] = *(v14 + 48);
      v131 = *(v14 + 64);
      sub_1000967A0(v130, v103);
      ByteBuffer.readAvroRecord(_:)();
      v95 = v117;
      v97 = v118;
      v98 = v120;
      v100 = v119;
      v33 = v121;
      sub_100161354(v130);
      goto LABEL_20;
    case 4:
      v89 = *(v14 + 16);
      v34 = *v0;
      v35 = *(v0 + 16);
      v36 = *(v0 + 8);
      v37 = v36 >> 62;
      v38 = 0;
      v88 = v34;
      switch(v36 >> 62)
      {
        case 1uLL:
          if (__OFSUB__(DWORD1(v34), v34))
          {
            goto LABEL_94;
          }

          v52 = DWORD1(v34) - v34;
          sub_100014924(v34, v36);
          v38 = v52;
          *&v34 = v88;
          break;
        case 2uLL:
          v54 = *(v34 + 16);
          v53 = *(v34 + 24);
          v55 = v53 - v54;
          if (__OFSUB__(v53, v54))
          {
            goto LABEL_95;
          }

          sub_100014924(v34, v36);
          *&v34 = v88;
          v38 = v55;
          break;
        case 3uLL:
          break;
        default:
          v38 = BYTE6(v36);
          break;
      }

      if (v38 < v35)
      {
        goto LABEL_89;
      }

      if (v35 < 0)
      {
        goto LABEL_90;
      }

      break;
    default:
      ByteBuffer.readAvroPrimitive(_:)(*(v2 + 16), v105);
      v95 = v105[0];
      v97 = v105[1];
      v98 = v105[3];
      v100 = v105[2];
      v33 = v106;
LABEL_20:
      if (v33 != 255)
      {
        goto LABEL_21;
      }

      goto LABEL_73;
  }

  v56 = 0;
  switch(v37)
  {
    case 1:
      LODWORD(v56) = DWORD1(v34) - v34;
      if (__OFSUB__(DWORD1(v34), v34))
      {
        goto LABEL_96;
      }

      v56 = v56;
LABEL_38:
      v87 = v15;
      if (v56 < v38)
      {
        goto LABEL_91;
      }

      v59 = v35 - v38;
      if (v35 == v38)
      {
        sub_100014A40(v34, v36);

        goto LABEL_71;
      }

      v60 = v34;
      v101 = v34;
      v96 = v34 >> 32;
      v99 = v38;

      v61 = v99;
      v62 = 0;
      break;
    case 2:
      v57 = *(v34 + 16);
      v58 = *(v34 + 24);
      v31 = __OFSUB__(v58, v57);
      v56 = v58 - v57;
      if (!v31)
      {
        goto LABEL_38;
      }

      goto LABEL_97;
    case 3:
      goto LABEL_38;
    default:
      v56 = BYTE6(v36);
      goto LABEL_38;
  }

  while (2)
  {
    if (v35 + v62 >= v61)
    {
      __break(1u);
LABEL_83:
      __break(1u);
LABEL_84:
      __break(1u);
LABEL_85:
      __break(1u);
LABEL_86:
      __break(1u);
LABEL_87:
      __break(1u);
      goto LABEL_88;
    }

    switch(v37)
    {
      case 1:
        if (v96 < v101)
        {
          goto LABEL_85;
        }

        v69 = __DataStorage._bytes.getter();
        if (v69)
        {
          v65 = v69;
          v70 = __DataStorage._offset.getter();
          v67 = v101 - v70;
          if (__OFSUB__(v101, v70))
          {
            goto LABEL_87;
          }

LABEL_53:
          v71 = v67 + v65;
        }

        else
        {
LABEL_54:
          v71 = 0;
        }

        __DataStorage._length.getter();
        v68 = *(v71 + v35 + v62);
        v61 = v99;
LABEL_56:
        if (v68 < 0)
        {
          ++v62;
          if (!(v59 + v62))
          {
            sub_100014A40(v60, v36);

LABEL_71:

            v98 = 0u;
            v100 = 0u;
            v95 = 0u;
            v97 = 0u;
            v8 = v86;
            goto LABEL_81;
          }

          continue;
        }

        v72 = ByteBuffer.count.getter(v60, v36);
        v73 = v35 + v62;
        if (v72 <= v35 + v62)
        {
          goto LABEL_92;
        }

        v74 = v73 + 1;
        v132 = v88;
        v133 = vdupq_n_s64(v35);
        v134 = v73 + 1;
        v75 = sub_100172BD8(v62 + 1, 0);
        v76 = sub_10017249C(v103, (v75 + 4), v62 + 1) - 1;
        sub_100014A40(*&v103[0], *(&v103[0] + 1));
        v8 = v86;
        v15 = v87;
        v4 = v85;
        v6 = v83;
        if (v76 != v62)
        {
          goto LABEL_93;
        }

        *(v92 + 16) = v74;
        v2 = v82;
        if (v75[2] >= 0xBuLL)
        {

          goto LABEL_80;
        }

        v77 = sub_100170BEC(v75);
        if ((v77 & 1) != 0 || (v78 = -(v77 & 1) ^ (v77 >> 1), v78 >= *(v89 + 16)))
        {

          goto LABEL_80;
        }

        v79 = *(v89 + 8 * v78 + 32);

        ByteBuffer.readAvroValue(_:)(&v122, v79);
        if (v126 == 255)
        {
          v98 = v125;
          v100 = v124;
          v95 = v122;
          v97 = v123;

LABEL_73:

          goto LABEL_81;
        }

        __src[0] = v122;
        __src[1] = v123;
        __src[2] = v124;
        __src[3] = v125;
        v129 = v126;

        sub_100173BDC(__src, v80, v78, v127);
        if (v84)
        {

LABEL_80:

          v98 = 0u;
          v100 = 0u;
          v95 = 0u;
          v97 = 0u;
LABEL_81:

          v4 = *(&v95 + 1);
          v6 = v95;
          v18 = v98;
          v15 = *(&v97 + 1);
          v2 = v97;
          v20 = -1;
          v17 = v100;
          goto LABEL_70;
        }

        v84 = 0;

        sub_100172EF0(v103, v127);
        sub_100163ABC(v103, v102);
        sub_100163B74(v127);
        v95 = v103[0];
        v97 = v103[1];
        v98 = v103[3];
        v100 = v103[2];
        LOBYTE(v33) = v104;
        v0 = v92;
        v14 = v93;
LABEL_21:
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v81 = v15[2];
          sub_1000040F0();
          sub_1001722F8();
          v15 = isUniquelyReferenced_nonNull_native;
        }

        v46 = v15[2];
        v45 = v15[3];
        v48 = v98;
        v47 = v100;
        v50 = v95;
        v49 = v97;
        if (v46 >= v45 >> 1)
        {
          sub_1000066A8(v45);
          sub_1001722F8();
          v50 = v95;
          v49 = v97;
          v48 = v98;
          v47 = v100;
          v15 = isUniquelyReferenced_nonNull_native;
        }

        v15[2] = v46 + 1;
        v51 = &v15[9 * v46];
        *(v51 + 2) = v50;
        *(v51 + 3) = v49;
        *(v51 + 4) = v47;
        *(v51 + 5) = v48;
        *(v51 + 96) = v33;
        v21 = v90;
        v30 = v94;
        if (v94 != v90)
        {
          goto LABEL_10;
        }

LABEL_6:
        v16 = sub_100171FA4();
        if ((v19 & 1) != 0 || v16)
        {

          goto LABEL_68;
        }

        v20 = 1;
LABEL_70:
        *v8 = v6;
        *(v8 + 8) = v4;
        *(v8 + 16) = v2;
        *(v8 + 24) = v15;
        *(v8 + 32) = v17;
        *(v8 + 48) = v18;
        *(v8 + 64) = v20;
        sub_100005460();
        return;
      case 2:
        v63 = *(v60 + 16);
        v64 = __DataStorage._bytes.getter();
        if (!v64)
        {
          goto LABEL_54;
        }

        v65 = v64;
        v66 = __DataStorage._offset.getter();
        v67 = v63 - v66;
        if (!__OFSUB__(v63, v66))
        {
          goto LABEL_53;
        }

        goto LABEL_86;
      case 3:
        *(v103 + 6) = 0;
        *&v103[0] = 0;
        goto LABEL_49;
      default:
        LOBYTE(v103[0]) = v101;
        BYTE1(v103[0]) = BYTE1(v60);
        BYTE2(v103[0]) = BYTE2(v60);
        BYTE3(v103[0]) = BYTE3(v60);
        BYTE4(v103[0]) = BYTE4(v60);
        BYTE5(v103[0]) = BYTE5(v60);
        BYTE6(v103[0]) = BYTE6(v60);
        BYTE7(v103[0]) = HIBYTE(v60);
        WORD4(v103[0]) = v36;
        BYTE10(v103[0]) = BYTE2(v36);
        BYTE11(v103[0]) = BYTE3(v36);
        BYTE12(v103[0]) = BYTE4(v36);
        BYTE13(v103[0]) = BYTE5(v36);
LABEL_49:
        v68 = *(v103 + v35 + v62);
        goto LABEL_56;
    }
  }
}

uint64_t ByteBuffer.readAvroMap(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  result = sub_100170930();
  if (!result)
  {
    goto LABEL_30;
  }

  v9 = sub_100172D34(result);
  if (v10)
  {
    goto LABEL_29;
  }

  v11 = sub_100170BEC(v9);
  result = Dictionary.init(dictionaryLiteral:)();
  if (v11)
  {
    goto LABEL_34;
  }

  v12 = result;
  v34 = a2;
  v37 = -(v11 & 1) ^ (v11 >> 1);
  v13 = a3 & 0x1FFFFFFFFFFFFFFFLL;

  v14 = 0;
  v35 = a3;
  v36 = a3 >> 61;
  while (1)
  {
    if (v37 == v14)
    {
      result = sub_100171FA4();
      if ((v30 & 1) == 0 && !result)
      {
        v31 = 2;
        v33 = a1;
        v32 = v34;
        goto LABEL_31;
      }

LABEL_25:

LABEL_27:

      goto LABEL_29;
    }

    if (__OFADD__(v14, 1))
    {
      __break(1u);
LABEL_34:
      __break(1u);
      return result;
    }

    v15 = sub_100170930();
    if (!v15)
    {
      goto LABEL_25;
    }

    v16 = v15;
    sub_100172D34(v15);
    if (v10)
    {

      goto LABEL_27;
    }

    v17 = sub_100170BEC(v16);
    v18 = sub_100172D08(v17);
    v19 = ByteBuffer.readString(length:)(v18);
    if (!v19.value._object)
    {
      goto LABEL_25;
    }

    switch(v36)
    {
      case 1uLL:
        v26 = *(v13 + 16);
        v27 = *(v13 + 24);
        v28 = *(v13 + 32);

        ByteBuffer.readAvroArray(_:)(v26);

        a3 = v35;
        goto LABEL_17;
      case 2uLL:
        v22 = *(v13 + 16);
        v23 = *(v13 + 24);
        v24 = *(v13 + 32);

        ByteBuffer.readAvroMap(_:)(v22);
        a3 = v35;

        goto LABEL_17;
      case 3uLL:
        v25 = *(v13 + 32);
        v42[0] = *(v13 + 16);
        v42[1] = v25;
        v42[2] = *(v13 + 48);
        v43 = *(v13 + 64);
        sub_1000967A0(v42, __src);
        ByteBuffer.readAvroRecord(_:)();
        sub_100161354(v42);
        goto LABEL_18;
      case 4uLL:
        v20 = *(v13 + 16);

        ByteBuffer.readAvroUnion(_:)(v21, __src);
LABEL_17:

LABEL_18:
        memcpy(__dst, __src, sizeof(__dst));
        break;
      default:
        ByteBuffer.readAvroPrimitive(_:)(*(a3 + 16), __dst);
        break;
    }

    if (__dst[64] == 255)
    {
      break;
    }

    v40[0] = *__dst;
    v40[1] = *&__dst[16];
    v40[2] = *&__dst[32];
    v40[3] = *&__dst[48];
    v41 = __dst[64];
    if ((sub_10015B364(v40, a3) & 1) == 0)
    {

      AvroValue.schema.getter();
      sub_100172C40(__dst);

      goto LABEL_30;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    __src[0] = v12;
    sub_100172A20(v40, v19.value._countAndFlagsBits, v19.value._object, isUniquelyReferenced_nonNull_native);

    v12 = __src[0];
    ++v14;
  }

LABEL_29:

LABEL_30:
  v33 = 0;
  v32 = 0;
  a3 = 0;
  v12 = 0;
  v31 = -1;
LABEL_31:
  *a4 = v33;
  *(a4 + 8) = v32;
  *(a4 + 16) = a3;
  *(a4 + 24) = v12;
  *(a4 + 32) = 0u;
  *(a4 + 48) = 0u;
  *(a4 + 64) = v31;
  return result;
}

void ByteBuffer.readAvroRecord(_:)()
{
  sub_100005478();
  v32 = v0;
  v2 = v1;
  v30 = v3;
  sub_1000967A0(v1, v37);
  AvroRecord.init(schema:)(&v36, v2);
  rawValue = v2->fields._rawValue;
  v5 = rawValue[2];
  if (v5)
  {
    v6 = rawValue + 6;
    while (1)
    {
      v8 = *(v6 - 2);
      v7 = *(v6 - 1);
      v10 = *v6;
      v6 += 3;
      v9 = v10;
      switch(v10 >> 61)
      {
        case 1uLL:
          sub_100173098();

          v16 = sub_100012FD4();
          ByteBuffer.readAvroArray(_:)(v16);
          goto LABEL_9;
        case 2uLL:
          sub_100173098();

          v14 = sub_100012FD4();
          ByteBuffer.readAvroMap(_:)(v14);
LABEL_9:

          v8 = v31;
          goto LABEL_10;
        case 3uLL:
          v15 = *((v9 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
          v39[0] = *((v9 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
          v39[1] = v15;
          v39[2] = *((v9 & 0x1FFFFFFFFFFFFFFFLL) + 0x30);
          v40 = *((v9 & 0x1FFFFFFFFFFFFFFFLL) + 0x40);

          sub_1000967A0(v39, __src);
          ByteBuffer.readAvroRecord(_:)(__src, v39);
          sub_100161354(v39);
          break;
        case 4uLL:
          v12 = *((v9 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);

          ByteBuffer.readAvroUnion(_:)(v13, __src);
LABEL_10:

          break;
        default:
          v11 = *(v9 + 16);

          ByteBuffer.readAvroPrimitive(_:)(v11, __src);
          break;
      }

      v17 = memcpy(__dst, __src, 0x41uLL);
      if (LOBYTE(__dst[4]) == 255)
      {
        break;
      }

      v37[0] = __dst[0];
      v37[1] = __dst[1];
      v37[2] = __dst[2];
      v37[3] = __dst[3];
      v38 = __dst[4];
      AvroRecord.set(_:forField:)(v37, v8, v7);
      sub_100172C40(__dst);

      if (!--v5)
      {
        goto LABEL_13;
      }
    }

    sub_100173058(v17, v18, v19, v20, v21, v22, v23, v24, v30, v31, v32, v33, __src[0], __src[1], __src[2], __src[3]);

    type = __dst[0];
    name = __dst[1];
    v28 = __dst[2];
    v29 = __dst[3];
    v27 = __dst[4];
  }

  else
  {
LABEL_13:
    type = v36.schema.type;
    name = v36.schema.name;
    v27 = 3;
    v28 = v36.schema.namespace;
    v29 = *&v36.schema.fields._rawValue;
  }

  *v30 = type;
  *(v30 + 16) = name;
  *(v30 + 32) = v28;
  *(v30 + 48) = v29;
  *(v30 + 64) = v27;
  sub_100005460();
}

void ByteBuffer.readAvroUnion(_:)(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_100170930();
  if (!v4)
  {
    sub_100172F60();
    goto LABEL_7;
  }

  v5 = sub_100172D34(v4);
  if (v6)
  {

LABEL_5:
    sub_100172F60();
    v11 = 0uLL;
    goto LABEL_7;
  }

  v12 = sub_100170BEC(v5);
  if (v12)
  {
    goto LABEL_5;
  }

  v13 = -(v12 & 1) ^ (v12 >> 1);
  if (v13 >= *(a1 + 16))
  {
    goto LABEL_5;
  }

  v14 = *(a1 + 8 * v13 + 32);

  ByteBuffer.readAvroValue(_:)(&v22, v14);
  if (v26 == 255)
  {
    v18 = v24;
    v19 = v25;
    v16 = v22;
    v17 = v23;

    v9 = v18;
    v10 = v19;
    v11 = v16;
    v8 = v17;
    v7 = -1;
  }

  else
  {
    __src[0] = v22;
    __src[1] = v23;
    __src[2] = v24;
    __src[3] = v25;
    v30 = v26;

    sub_100173BDC(__src, v15, v13, &v27);

    memcpy(__dst, v28, 0x41uLL);
    sub_100163ABC(__dst, v20);
    sub_100163B74(&v27);
    v11 = __dst[0];
    v8 = __dst[1];
    v9 = __dst[2];
    v10 = __dst[3];
    v7 = __dst[4];
  }

LABEL_7:
  *a2 = v11;
  *(a2 + 16) = v8;
  *(a2 + 32) = v9;
  *(a2 + 48) = v10;
  *(a2 + 64) = v7;
}

void *sub_100171FA4()
{
  result = sub_100170930();
  if (result)
  {
    v1 = sub_100172D34(result);
    if (v2)
    {

      return 0;
    }

    else
    {
      v3 = sub_100170BEC(v1);
      return sub_100172D08(v3);
    }
  }

  return result;
}

uint64_t sub_100171FE4(unint64_t a1, uint64_t a2)
{
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (*(a2 + 16) <= a1)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v2 = *((a2 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 0x20);
  swift_unknownObjectRetain_n();
  if (swift_dynamicCast())
  {

    return v2;
  }

LABEL_7:
  _StringGuts.grow(_:)(82);
  v4._object = 0x80000001001B3890;
  v4._countAndFlagsBits = 0xD000000000000043;
  String.append(_:)(v4);
  v5._countAndFlagsBits = 0x646C656946;
  v5._object = 0xE500000000000000;
  String.append(_:)(v5);
  v6._countAndFlagsBits = 0x756F662074756220;
  v6._object = 0xEB0000000020646ELL;
  String.append(_:)(v6);
  swift_getObjectType();
  v7._countAndFlagsBits = _typeName(_:qualified:)();
  String.append(_:)(v7);

  result = _assertionFailure(_:_:flags:)();
  __break(1u);
  return result;
}

void sub_100172134()
{
  sub_100005510();
  if (v3)
  {
    sub_100005DE0();
    if (v5 != v6)
    {
      sub_100005900();
      if (v5)
      {
        __break(1u);
        return;
      }

      sub_10000381C();
    }
  }

  else
  {
    v4 = v2;
  }

  v7 = *(v0 + 2);
  if (v4 <= v7)
  {
    v8 = *(v0 + 2);
  }

  else
  {
    v8 = v4;
  }

  if (v8)
  {
    sub_100046184(&qword_10021F828, &qword_1001A5950);
    v9 = swift_allocObject();
    sub_100008270(v9);
    *(v9 + 2) = v7;
    *(v9 + 3) = v10;
  }

  else
  {
    v9 = _swiftEmptyArrayStorage;
  }

  v11 = v9 + 32;
  v12 = v0 + 32;
  if (v1)
  {
    if (v9 != v0 || &v12[v7] <= v11)
    {
      memmove(v11, v12, v7);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    memcpy(v11, v12, v7);
  }
}

void sub_100172208()
{
  sub_100005510();
  if (v3)
  {
    sub_100005DE0();
    if (v5 != v6)
    {
      sub_100005900();
      if (v5)
      {
        __break(1u);
        return;
      }

      sub_10000381C();
    }
  }

  else
  {
    v4 = v2;
  }

  v7 = *(v0 + 2);
  if (v4 <= v7)
  {
    v8 = *(v0 + 2);
  }

  else
  {
    v8 = v4;
  }

  if (v8)
  {
    sub_100046184(&qword_10021F830, &qword_1001A5958);
    v9 = swift_allocObject();
    v10 = j__malloc_size(v9);
    sub_10017313C(v10);
  }

  else
  {
    v9 = _swiftEmptyArrayStorage;
  }

  v11 = v9 + 32;
  v12 = v0 + 32;
  if (v1)
  {
    if (v9 != v0 || &v12[24 * v7] <= v11)
    {
      memmove(v11, v12, 24 * v7);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_1001722F8()
{
  sub_100005510();
  if (v3)
  {
    sub_100005DE0();
    if (v5 != v6)
    {
      sub_100005900();
      if (v5)
      {
        __break(1u);
        return;
      }

      sub_10000381C();
    }
  }

  else
  {
    v4 = v2;
  }

  v7 = *(v0 + 2);
  if (v4 <= v7)
  {
    v8 = *(v0 + 2);
  }

  else
  {
    v8 = v4;
  }

  if (v8)
  {
    sub_100046184(&qword_10021F840, &qword_1001A5968);
    v9 = swift_allocObject();
    v10 = j__malloc_size(v9);
    sub_10017313C(v10);
  }

  else
  {
    v9 = _swiftEmptyArrayStorage;
  }

  v11 = v9 + 32;
  v12 = v0 + 32;
  if (v1)
  {
    if (v9 != v0 || &v12[72 * v7] <= v11)
    {
      memmove(v11, v12, 72 * v7);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void *sub_1001723E8(uint64_t a1, uint64_t a2)
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

  sub_100046184(&qword_100217C30, &qword_10019BF58);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * ((v5 - 32) / 24);
  return v4;
}

char *sub_10017246C(char *__src, uint64_t a2, char *__dst)
{
  if (__dst != __src || &__src[72 * a2] <= __dst)
  {
    return memmove(__dst, __src, 72 * a2);
  }

  return __src;
}

uint64_t sub_10017249C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = v3[3];
  v4 = v3[4];
  v6 = v3[1];
  v25 = *v3;
  v7 = v3[2];
  if (!a2)
  {
    a3 = 0;
    goto LABEL_26;
  }

  if (!a3)
  {
LABEL_26:
    v9 = v3[3];
    goto LABEL_28;
  }

  if (a3 < 0)
  {
    goto LABEL_35;
  }

  v21 = a1;
  v8 = 0;
  v20 = v4 - v5;
  v9 = v3[3];
  v10 = v6 >> 62;
  v23 = a2;
  v24 = a3;
  v22 = v3[2];
  while (2)
  {
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
LABEL_30:
      __break(1u);
LABEL_31:
      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
      __break(1u);
LABEL_35:
      __break(1u);
    }

    if (v4 == v9)
    {
      v9 = v4;
      a3 = v20;
      a1 = v21;
      break;
    }

    if (v9 >= v4)
    {
      goto LABEL_30;
    }

    if (v5 < v7)
    {
      goto LABEL_31;
    }

    switch(v10)
    {
      case 1uLL:
        if (v25 >> 32 < v25)
        {
          goto LABEL_32;
        }

        v17 = __DataStorage._bytes.getter();
        if (!v17)
        {
          goto LABEL_21;
        }

        v18 = __DataStorage._offset.getter();
        if (__OFSUB__(v25, v18))
        {
          goto LABEL_34;
        }

        v17 += v25 - v18;
LABEL_21:
        __DataStorage._length.getter();
        v16 = *(v17 + v9);
LABEL_22:
        a2 = v23;
        a3 = v24;
        v10 = v6 >> 62;
LABEL_23:
        *(a2 + v8++) = v16;
        ++v9;
        if (v11 != a3)
        {
          continue;
        }

        a1 = v21;
        break;
      case 2uLL:
        v12 = v5;
        v13 = *(v25 + 16);
        v14 = __DataStorage._bytes.getter();
        if (!v14)
        {
          goto LABEL_14;
        }

        v15 = __DataStorage._offset.getter();
        if (__OFSUB__(v13, v15))
        {
          goto LABEL_33;
        }

        v14 += v13 - v15;
LABEL_14:
        __DataStorage._length.getter();
        v16 = *(v14 + v9);
        v5 = v12;
        v7 = v22;
        goto LABEL_22;
      case 3uLL:
        memset(v26, 0, 14);
        goto LABEL_16;
      default:
        v26[0] = v25;
        LOWORD(v26[1]) = v6;
        BYTE2(v26[1]) = BYTE2(v6);
        BYTE3(v26[1]) = BYTE3(v6);
        BYTE4(v26[1]) = BYTE4(v6);
        BYTE5(v26[1]) = BYTE5(v6);
LABEL_16:
        v16 = *(v26 + v9);
        goto LABEL_23;
    }

    break;
  }

LABEL_28:
  *a1 = v25;
  a1[1] = v6;
  a1[2] = v7;
  a1[3] = v5;
  a1[4] = v4;
  a1[5] = v9;
  return a3;
}

uint64_t sub_100172760(uint64_t result, void *a2, unint64_t a3, uint64_t a4)
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
    v13 = 0;
    v10 = 0;
LABEL_21:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v13;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v13 = 0;
    goto LABEL_21;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    v12 = 0;
    v13 = 0;
    v22 = -1 << *(a4 + 32);
    v14 = (63 - v7) >> 6;
    while (1)
    {
      if (v12 >= v10)
      {
        goto LABEL_24;
      }

      v15 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_25;
      }

      if (!v9)
      {
        while (1)
        {
          v16 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            break;
          }

          if (v16 >= v14)
          {
            v9 = 0;
            v10 = v12;
            goto LABEL_19;
          }

          v9 = *(v6 + 8 * v16);
          ++v13;
          if (v9)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
LABEL_24:
        __break(1u);
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      v16 = v13;
LABEL_15:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = (*(a4 + 48) + 24 * (v17 | (v16 << 6)));
      v19 = *v18;
      v20 = v18[1];
      v21 = v18[2];
      *v11 = v19;
      v11[1] = v20;
      v11[2] = v21;
      if (v15 == v10)
      {
        break;
      }

      v11 += 3;

      v12 = v15;
      v13 = v16;
    }

    v13 = v16;
LABEL_19:
    v7 = v22;
    goto LABEL_21;
  }

LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_100172934(uint64_t (*a1)(uint64_t, uint64_t, uint64_t, uint64_t))
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

uint64_t sub_1001729D8(uint64_t result, uint64_t (*a2)(BOOL))
{
  v3 = *(*v2 + 24);
  if (result + 1 > (v3 >> 1))
  {
    result = a2(v3 > 1);
    *v2 = result;
  }

  return result;
}

uint64_t sub_100172A20(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_100005B74(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_13;
  }

  v16 = v11;
  v17 = v12;
  sub_100046184(&qword_10021F838, &qword_1001A5960);
  if (!_NativeDictionary.ensureUnique(isUnique:capacity:)(a4 & 1, v15))
  {
    goto LABEL_5;
  }

  v18 = *v5;
  v19 = sub_100005B74(a2, a3);
  if ((v17 & 1) != (v20 & 1))
  {
LABEL_13:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v16 = v19;
LABEL_5:
  if (v17)
  {
    v21 = *(*v5 + 56) + 72 * v16;

    return sub_100172CA8(a1, v21);
  }

  else
  {
    v23 = sub_100007700();
    sub_10017C638(v23, v24, a3, a1, v25);
  }
}

void *sub_100172B5C(_BYTE *a1, _BYTE *a2)
{
  if (!a1)
  {
    return _swiftEmptyArrayStorage;
  }

  v4 = a2 - a1;
  if (a2 == a1)
  {
    return _swiftEmptyArrayStorage;
  }

  result = sub_100172BD8(a2 - a1, 0);
  if (a2 > a1)
  {
    if ((v4 & 0x8000000000000000) == 0)
    {
      v5 = result;
      memmove(result + 4, a1, v4);
      return v5;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_100172BD8(uint64_t a1, uint64_t a2)
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

  sub_100046184(&qword_100216160, &qword_10019A598);
  v4 = swift_allocObject();
  sub_100008270(v4);
  v4[2] = a1;
  v4[3] = v5;
  return v4;
}

uint64_t sub_100172C40(uint64_t a1)
{
  v2 = sub_100046184(&qword_10021F820, &qword_1001A5948);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *sub_100172D18()
{

  return memcpy((v0 + 536), (v1 + 16), 0x58uLL);
}

uint64_t sub_100172D64()
{

  return sub_100163ABC(v0 + 536, v0 + 624);
}

uint64_t sub_100172D9C()
{

  return sub_100163ABC(v0 + 712, v0 + 624);
}

uint64_t sub_100172DB4()
{

  return sub_100163ABC(v0 + 432, v0 + 344);
}

void *sub_100172DCC(void *a1)
{

  return memcpy(a1, (v1 + 16), 0x58uLL);
}

uint64_t sub_100172DE4()
{

  return sub_100163B74(v0 + 624);
}

void sub_100172E08(char a1)
{

  sub_10006C9F0(a1, v2, 1, v1);
}

uint64_t sub_100172E30()
{
  v3 = *(v0 + 624);
  *(v3 + 16) = v1 + 1;
  *(v3 + 32 + v1) = 0;
  v4 = *(v0 + 208);

  return Data._Representation.append(contentsOf:)();
}

uint64_t sub_100172E5C()
{

  return String.data(using:allowLossyConversion:)();
}

uint64_t sub_100172E78@<X0>(uint64_t a1@<X8>)
{
  *(v2 + 16) = v1;
  *(v2 + 24) = a1;
  return v2;
}

void *sub_100172E84(void *a1)
{

  return memcpy(a1, (v1 + 456), 0x41uLL);
}

uint64_t sub_100172EA0()
{

  return sub_100163ABC(v0 + 544, v0 + 448);
}

uint64_t sub_100172EBC()
{
  result = v1;
  v3 = v0[8];
  v4 = v0[6];
  v5 = v0[2];
  return result;
}

uint64_t sub_100172ED8()
{

  return sub_100163B18(v0 + 624, v0 + 536);
}

void *sub_100172EF0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{

  return memcpy(a1, (a2 + 8), 0x41uLL);
}

uint64_t sub_100172F08()
{
}

Swift::Int sub_100172F20(Swift::OpaquePointer a1)
{

  return ByteBuffer.writeBytes(_:)(a1);
}

uint64_t sub_100172F38()
{

  return Data._Representation.append(contentsOf:)();
}

uint64_t sub_100172F80()
{

  return Data.append(_:)();
}

Swift::Int sub_100172F98(Swift::OpaquePointer a1)
{
  v3 = *(v1 + 208);

  return ByteBuffer.writeBytes(_:)(a1);
}

uint64_t sub_100172FB0()
{

  return sub_100163ABC(v0 + 352, v0 + 264);
}

void sub_100172FEC()
{
  v1 = *(v0 + 544);
  v2 = *(v0 + 552);
  v3 = *(v0 + 560);
  v4 = *(v0 + 568);
  v5 = *(v0 + 608);
}

uint64_t sub_100173010()
{

  return sub_100163B18(v0 + 536, v0 + 448);
}

void *sub_100173028@<X0>(uint64_t a1@<X8>)
{

  return sub_1001706E8((2 * a1) ^ (a1 >> 63));
}

void *sub_100173040(uint64_t a1)
{
  v2 = (2 * a1) ^ (a1 >> 63);

  return sub_1001706E8(v2);
}

uint64_t sub_100173058(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, __int128 a13, __int128 a14, __int128 a15, __int128 a16)
{
  v18 = v16[6];
  a13 = v16[5];
  a14 = v18;
  v19 = v16[8];
  a15 = v16[7];
  a16 = v19;

  return sub_1000967FC(&a13);
}

uint64_t sub_10017307C()
{

  return sub_100163ABC(v0 + 544, v0 + 360);
}

uint64_t sub_100173098()
{
  v2 = *((v0 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
  v3 = *((v0 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
  v4 = *((v0 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
}

uint64_t sub_1001730BC()
{

  return swift_allocObject();
}

uint64_t sub_1001730D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);

  return sub_100163ABC(v12, va);
}

uint64_t sub_1001730EC()
{
}

uint64_t sub_100173104()
{

  return swift_allocObject();
}

uint64_t sub_10017311C()
{
  *(v0 + 16) = v2;
  result = v0 + 32;
  *(v0 + 32 + v3) = v1;
  return result;
}

uint64_t sub_10017313C(uint64_t result)
{
  *(v1 + 16) = v2;
  *(v1 + 24) = 2 * ((result - 32) / v3);
  return result;
}

void sub_10017319C()
{
  v1 = *(v0 + 640);
  v2 = *(v0 + 648);
  v3 = *(v0 + 656);
  v4 = *(v0 + 696);
}

uint64_t sub_1001731B0(uint64_t result)
{
  v1 = *(result + 24);
  v2 = *(result + 16) + 1;
  return result;
}

uint64_t sub_1001731C4(uint64_t result)
{
  v1 = *(result + 24);
  v2 = *(result + 16) + 1;
  return result;
}

uint64_t sub_10017321C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  v23 = *(v21 + 16);
  v24 = *(v21 + 24);
  v25 = *(a21 + 32);
}

Swift::Int sub_10017323C()
{
  *(v0._rawValue + 2) = v1;
  *(v0._rawValue + v2 + 32) = 0;

  return ByteBuffer.writeBytes(_:)(v0);
}

void *sub_10017325C@<X0>(uint64_t a1@<X8>)
{

  return memcpy((v2 + 216), (v1 + v3 * a1), 0x41uLL);
}

uint64_t sub_10017327C(uint64_t a1)
{
  v2 = *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
  v3 = *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
  v4 = *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
}

uint64_t sub_10017329C()
{

  return Data._Representation.append(contentsOf:)();
}

uint64_t sub_1001732B4()
{

  return sub_100172934(v0);
}

void *sub_1001732CC()
{

  return sub_1001705C0((2 * v0) ^ (v0 >> 31));
}

uint64_t sub_1001732E4()
{

  return sub_100163B18(v0 + 448, v0 + 360);
}

uint64_t sub_1001732FC()
{
}

uint64_t sub_100173314()
{
}

unint64_t AvroValue.schema.getter()
{
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  switch(*(v0 + 64))
  {
    case 1:
      sub_1000077D0();
      v19 = swift_allocObject();
      sub_10000E2AC(v19, v20, v21, v22, v23, v24, v25, v26, v28, *(&v28 + 1), *v29, *&v29[8], *&v29[16], *&v29[24], *&v29[32], v30, v31, v32[0]);
      sub_10000F94C(v32, &qword_10021F850, &qword_1001A59F0);
      v8 = v1 | 0x2000000000000000;
      break;
    case 2:
      sub_1000077D0();
      v9 = swift_allocObject();
      sub_10000E2AC(v9, v10, v11, v12, v13, v14, v15, v16, v28, *(&v28 + 1), *v29, *&v29[8], *&v29[16], *&v29[24], *&v29[32], v30, v31, v32[0]);
      sub_10000F94C(v32, &qword_10021F848, &qword_1001A59E8);
      v8 = v1 | 0x4000000000000000;
      break;
    case 3:
      *&v28 = *v0;
      *(&v28 + 1) = v2;
      *v29 = v3;
      v29[8] = v4;
      *&v29[9] = *(v0 + 25);
      *&v29[24] = *(v0 + 40);
      v17 = swift_allocObject();
      v18 = *v29;
      *(v17 + 16) = v28;
      *(v17 + 32) = v18;
      *(v17 + 48) = *&v29[16];
      *(v17 + 64) = *&v29[32];
      v8 = v17 | 0x6000000000000000;
      sub_1000967A0(&v28, v32);
      break;
    case 4:
      v6 = *(*v0 + 16);
      sub_1000068B4();
      v7 = swift_allocObject();
      *(v7 + 16) = v6;
      v8 = v7 | 0x8000000000000000;

      break;
    default:
      v5 = 6;
      switch(*(v0 + 24))
      {
        case 1:
          sub_100096480(v0);
          v5 = 2;
          break;
        case 2:
          sub_100096480(v0);
          v5 = 3;
          break;
        case 3:
          sub_100096480(v0);
          v5 = 4;
          break;
        case 4:
          sub_100096480(v0);
          v5 = 5;
          break;
        case 5:
          break;
        case 6:
          v5 = 7;
          break;
        case 7:
          sub_100096480(v0);
          v5 = 0;
          break;
        default:
          sub_100096480(v0);
          v5 = 1;
          break;
      }

      v8 = swift_allocObject();
      *(v8 + 16) = v5;
      break;
  }

  return v8;
}

void AvroValue.init(_:)(void *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X2>, uint64_t a5@<X3>)
{
  *a1 = a2;
  a1[1] = a3;
  a1[2] = a4;
  a1[3] = a5;
  sub_100024008(a1);
}

{
  *a1 = a2;
  a1[1] = a3;
  a1[2] = a4;
  a1[3] = a5;
  sub_100024008(a1);
}

uint64_t AvroMap.init(schema:)()
{
  sub_10000705C();
  Dictionary.init(dictionaryLiteral:)();
  return v0;
}

void __swiftcall AvroRecord.init(schema:)(SwiftAvro::AvroRecord *__return_ptr retstr, SwiftAvro::AvroRecordSchema *schema)
{
  type = schema->type;
  name = schema->name;
  v13 = schema->namespace;
  rawValue = schema->fields._rawValue;
  v14 = rawValue;
  v4 = *(rawValue + 2);
  if (v4)
  {
    sub_1000967A0(schema, __src);
    sub_1001780C8(0, v4, 0);
    v6 = (rawValue + 48);
    do
    {
      v7 = *(v6 - 1);
      v8 = *v6;

      sub_10015B47C(v8, __src);

      v10 = _swiftEmptyArrayStorage[2];
      v9 = _swiftEmptyArrayStorage[3];
      if (v10 >= v9 >> 1)
      {
        sub_1001780C8((v9 > 1), v10 + 1, 1);
      }

      v6 += 3;
      _swiftEmptyArrayStorage[2] = v10 + 1;
      memcpy(&_swiftEmptyArrayStorage[9 * v10 + 4], __src, 0x41uLL);
      --v4;
    }

    while (v4);
    sub_100161354(schema);
  }

  retstr->schema.type = type;
  retstr->schema.name = name;
  retstr->schema.namespace = v13;
  retstr->schema.fields._rawValue = v14;
  retstr->fields._rawValue = _swiftEmptyArrayStorage;
}

void AvroValue.init(_:)(_OWORD *a1@<X8>, _OWORD *a2@<X0>)
{
  v2 = a2[1];
  *a1 = *a2;
  a1[1] = v2;
  v3 = a2[3];
  a1[2] = a2[2];
  a1[3] = v3;
  sub_100024008(a1);
}

void *AvroValue.init(_:)@<X0>(uint64_t a1@<X8>)
{
  sub_10001AEBC();
  v3 = swift_allocObject();
  result = sub_100017D10(v3);
  *a1 = v1;
  *(a1 + 64) = 4;
  return result;
}

uint64_t sub_100173770()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

void static AvroValue.int(_:)(void *a1@<X8>, unsigned int a2@<W0>)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = a2;
  sub_100006544(a1);
}

void static AvroValue.float(_:)(void *a1@<X8>, unsigned int a2@<S0>)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = a2;
  sub_100006544(a1);
}

uint64_t static AvroValue.string(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = a1;
  *(a3 + 8) = a2;
  *(a3 + 16) = 0;
  *(a3 + 24) = 5;
  *(a3 + 64) = 0;
}

uint64_t static AvroValue.bytes(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = a1;
  *(a2 + 24) = 6;
  *(a2 + 64) = 0;
}

void AvroRecord.set(_:forField:)(_BYTE *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = 0;
  v9 = *(v4 + 48);
  v10 = *(v9 + 16);
  v11 = (v9 + 40);
  for (i = -32; ; i -= 72)
  {
    if (v10 == v8)
    {
      sub_1001780E8();
      sub_100004248();
      *v15 = a2;
      v15[1] = a3;
      swift_willThrow();

      return;
    }

    if (*(v11 - 1) == a2 && *v11 == a3)
    {
      break;
    }

    sub_10000C91C();
    if (_stringCompareWithSmolCheck(_:_:expecting:)())
    {
      break;
    }

    ++v8;
    v11 += 3;
  }

  v14 = *(v4 + 56);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1001780A0(v14);
    v14 = v16;
  }

  if (v8 >= *(v14 + 16))
  {
    __break(1u);
  }

  else
  {
    AvroValue.update(_:)(a1);
    *(v4 + 56) = v14;
  }
}

double static AvroValue.record(_:)@<D0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[1];
  v9 = *a1;
  v10 = v3;
  v4 = a1[3];
  v11 = a1[2];
  v12 = v4;
  sub_100163C2C(a1, &v8);
  v5 = v10;
  *a2 = v9;
  *(a2 + 16) = v5;
  result = *&v11;
  v7 = v12;
  *(a2 + 32) = v11;
  *(a2 + 48) = v7;
  *(a2 + 64) = 3;
  return result;
}

uint64_t sub_10017398C(unint64_t a1, uint64_t a2)
{
  v3 = 0;
  v4 = *(a2 + 16);
  v5 = a2 + 32;
  while (1)
  {
    if (v4 == v3)
    {
      return 0;
    }

    v6 = *(v5 + 8 * v3);

    v7 = _s9SwiftAvro0B6SchemaV23__derived_struct_equalsySbAC_ACtFZ_0(v6, a1);

    if (v7)
    {
      break;
    }

    ++v3;
  }

  return v3;
}

uint64_t sub_100173A14(unsigned __int8 a1, uint64_t a2, uint64_t a3)
{
  result = 0;
  v5 = a3 - a2;
  if (a2)
  {
    while (1)
    {
      if (v5 == result)
      {
        return 0;
      }

      if (*(a2 + result) == a1)
      {
        return result;
      }

      if (v5 <= result)
      {
        break;
      }

      ++result;
    }

    __break(1u);
  }

  return result;
}

uint64_t AvroMap.set(_:forKey:)(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + 16);
  if (sub_10015B364(a1, v7))
  {

    sub_100163ABC(a1, v13);
    v8 = *(v3 + 24);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13[0] = *(v3 + 24);
    sub_100172A20(a1, a2, a3, isUniquelyReferenced_nonNull_native);

    *(v3 + 24) = v13[0];
  }

  else
  {

    v11 = AvroValue.schema.getter();
    sub_10017813C();
    sub_100004248();
    *v12 = v7;
    v12[1] = v11;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_100173B88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
{
  *a6 = a1;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  *(a6 + 24) = a4;
  *(a6 + 64) = a5;
}

void *sub_100173BDC@<X0>(void *__src@<X1>, uint64_t a2@<X0>, uint64_t a3@<X2>, void *a4@<X8>)
{
  if (a3 < 0 || *(a2 + 16) <= a3)
  {
    sub_100006D34();
    _StringGuts.grow(_:)(134);
    v9._countAndFlagsBits = 0xD00000000000003CLL;
    v9._object = 0x80000001001B39A0;
    String.append(_:)(v9);
    v10 = *(a2 + 16);

    sub_100006B0C();
    v11._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v11);

    v12._object = 0x80000001001B39E0;
    v12._countAndFlagsBits = 0xD000000000000020;
    String.append(_:)(v12);
    sub_100006B0C();
    v13._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v13);

    v14._countAndFlagsBits = 0xD000000000000026;
    v14._object = 0x80000001001B3A10;
    String.append(_:)(v14);
    sub_100178E98();
    sub_100004248();
    *v15 = v16;
    v15[1] = v17;
    swift_willThrow();
    return sub_100096480(__src);
  }

  else
  {
    *a4 = a2;
    result = memcpy(a4 + 1, __src, 0x41uLL);
    a4[10] = a3;
  }

  return result;
}

uint64_t SchemaMismatchError.expected.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t SchemaMismatchError.actual.setter(uint64_t a1)
{
  v3 = *(v1 + 8);

  *(v1 + 8) = a1;
  return result;
}

uint64_t SchemaMismatchError.description.getter(unint64_t a1, unint64_t a2)
{
  sub_100006D34();
  _StringGuts.grow(_:)(33);

  sub_1000066DC();
  sub_10000BF70();
  v4._countAndFlagsBits = AvroSchema.description.getter(a1);
  String.append(_:)(v4);

  v5._countAndFlagsBits = 0x6F67207475622027;
  v5._object = 0xEB00000000272074;
  String.append(_:)(v5);
  v9._countAndFlagsBits = AvroSchema.description.getter(a2);
  sub_100014CD8(v9);

  v6._countAndFlagsBits = 39;
  v6._object = 0xE100000000000000;
  String.append(_:)(v6);
  return v8;
}

uint64_t static SchemaMismatchError.__derived_struct_equals(_:_:)(unint64_t a1, uint64_t a2, unint64_t a3)
{
  if ((_s9SwiftAvro0B6SchemaV23__derived_struct_equalsySbAC_ACtFZ_0(a1, a3) & 1) == 0)
  {
    return 0;
  }

  v3 = sub_10000672C();

  return _s9SwiftAvro0B6SchemaV23__derived_struct_equalsySbAC_ACtFZ_0(v3, v4);
}

uint64_t SchemaMismatchError.hash(into:)(uint64_t a1, unint64_t a2)
{
  _s9SwiftAvro0B6SchemaV4hash4intoys6HasherVz_tF_0(a1, a2);
  v2 = sub_10000672C();

  return _s9SwiftAvro0B6SchemaV4hash4intoys6HasherVz_tF_0(v2, v3);
}

Swift::Int SchemaMismatchError.hashValue.getter()
{
  sub_10000AA8C();
  v1 = sub_100006A80();
  v9 = sub_10001BDBC(v1, v2, v3, v4, v5, v6, v7, v8, v12, v13[0]);
  _s9SwiftAvro0B6SchemaV4hash4intoys6HasherVz_tF_0(v9, v10);
  _s9SwiftAvro0B6SchemaV4hash4intoys6HasherVz_tF_0(v13, v0);
  return Hasher._finalize()();
}

Swift::Int sub_100173FB8()
{
  v1 = *v0;
  v2 = v0[1];
  return SchemaMismatchError.hashValue.getter();
}

uint64_t InvalidFieldError.description.getter(uint64_t a1, void *a2)
{
  sub_100006D34();
  _StringGuts.grow(_:)(27);

  sub_1000066DC();
  sub_10000BF70();
  v4._countAndFlagsBits = a1;
  v4._object = a2;
  String.append(_:)(v4);
  v5._countAndFlagsBits = 39;
  v5._object = 0xE100000000000000;
  String.append(_:)(v5);
  return v7;
}

uint64_t static InternalError.__derived_struct_equals(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return sub_100008C48();
  }
}

Swift::Int sub_1001740BC()
{
  sub_10000AA8C();
  v0 = sub_100006A80();
  sub_10001BDBC(v0, v1, v2, v3, v4, v5, v6, v7, v9, v10);
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t _s9SwiftAvro0B5ValueV23__derived_struct_equalsySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v3 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  v7 = *(a1 + 25) | ((*(a1 + 29) | (*(a1 + 31) << 16)) << 32);
  v8 = *(a1 + 56);
  switch(*(a1 + 64))
  {
    case 1:
      if (*(a2 + 64) != 1)
      {
        return 0;
      }

      v36 = *a2;
      v37 = *(a2 + 8);
      v39 = *(a2 + 16);
      v38 = *(a2 + 24);
      if (v36 != v4 || v3 != v37)
      {
        v41 = *a1;
        if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          return 0;
        }
      }

      v42 = sub_100005FBC();
      if ((_s9SwiftAvro0B6SchemaV23__derived_struct_equalsySbAC_ACtFZ_0(v42, v43) & 1) == 0)
      {
        return 0;
      }

      v34 = v6 | (v7 << 8);
      v35 = v38;
      goto LABEL_31;
    case 2:
      if (*(a2 + 64) != 2)
      {
        return 0;
      }

      v24 = *a2;
      v25 = *(a2 + 8);
      v27 = *(a2 + 16);
      v26 = *(a2 + 24);
      if (v24 != v4 || v3 != v25)
      {
        v29 = *a1;
        if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          return 0;
        }
      }

      v30 = sub_100005FBC();
      return (_s9SwiftAvro0B6SchemaV23__derived_struct_equalsySbAC_ACtFZ_0(v30, v31) & 1) != 0 && (sub_100175A24(v6 | (v7 << 8), v26) & 1) != 0;
    case 3:
      if (*(a2 + 64) == 3)
      {
        v32 = *(a2 + 16);
        v45[0] = *a2;
        v45[1] = v32;
        v45[2] = *(a2 + 32);
        v33 = *(a2 + 56);
        *&v45[3] = *(a2 + 48);
        *&v44[0] = v4;
        *(&v44[0] + 1) = v3;
        *&v44[1] = v5;
        BYTE8(v44[1]) = v6;
        *(&v44[1] + 9) = v7;
        HIBYTE(v44[1]) = BYTE6(v7);
        *(&v44[1] + 13) = WORD2(v7);
        v44[2] = *(a1 + 32);
        *&v44[3] = *(a1 + 48);
        if (static AvroRecordSchema.__derived_struct_equals(_:_:)())
        {
          v34 = sub_100006B0C();
LABEL_31:
          if (sub_10015D69C(v34, v35))
          {
            return 1;
          }
        }
      }

      return 0;
    case 4:
      v15 = v4[2];
      memcpy(__dst, v4 + 3, 0x41uLL);
      if (*(a2 + 64) != 4)
      {
        return 0;
      }

      v16 = v4[12];
      v17 = *a2;
      sub_1000079D0();
      memcpy(v18, v19, v20);
      sub_100163B18(v45, v44);
      v21 = sub_1000041F8();
      if (_s9SwiftAvro0B11UnionSchemaV23__derived_struct_equalsySbAC_ACtFZ_0(v21, v22))
      {
        memcpy(v44, v45 + 8, 0x41uLL);
        v23 = _s9SwiftAvro0B5ValueV23__derived_struct_equalsySbAC_ACtFZ_0(__dst, v44);
        sub_100163B74(v45);
        if ((v23 & 1) != 0 && v16 == v46)
        {
          return 1;
        }
      }

      else
      {
        sub_100163B74(v45);
      }

      return 0;
    default:
      if (*(a2 + 64))
      {
        return 0;
      }

      v9 = *(a2 + 8);
      v10 = *(a2 + 16);
      v11 = *a2;
      v12 = *(a2 + 24);
      v13 = *a1;

      return _s9SwiftAvro0B9PrimitiveV23__derived_struct_equalsySbAC_ACtFZ_0(v13, v3, v5, v6, v11, v9, v10, v12);
  }
}

void _s9SwiftAvro0B5ValueV4hash4intoys6HasherVz_tF_0(uint64_t a1)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 25) | ((*(v1 + 29) | (*(v1 + 31) << 16)) << 32);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v9 = *(v1 + 48);
  v8 = *(v1 + 56);
  switch(*(v1 + 64))
  {
    case 1:
      Hasher._combine(_:)(1uLL);
      sub_10000E068();
      String.hash(into:)();
      v19 = sub_100007CD4();
      _s9SwiftAvro0B6SchemaV4hash4intoys6HasherVz_tF_0(v19, v20);
      goto LABEL_14;
    case 2:
      Hasher._combine(_:)(2uLL);
      sub_10000E068();
      String.hash(into:)();
      v14 = sub_100007CD4();
      _s9SwiftAvro0B6SchemaV4hash4intoys6HasherVz_tF_0(v14, v15);
      sub_10000AFC4();

      sub_10017831C(v16, v17);
      break;
    case 3:
      v24 = *(v1 + 56);
      Hasher._combine(_:)(3uLL);
      sub_10000E068();
      String.hash(into:)();
      sub_100007CD4();
      String.hash(into:)();
      if (v7)
      {
        Hasher._combine(_:)(1u);
        String.hash(into:)();
      }

      else
      {
        Hasher._combine(_:)(0);
      }

      sub_100162948(a1, v9);
LABEL_14:
      sub_10000AFC4();

      sub_100161940(v21, v22);
      break;
    case 4:
      memcpy(__dst, (*v1 + 16), 0x58uLL);
      Hasher._combine(_:)(4uLL);
      sub_100163B18(__dst, v25);
      v12 = sub_1000041F8();
      AvroUnionSchema.hash(into:)(v12, v13);
      memcpy(v25, &__dst[1], 0x41uLL);
      _s9SwiftAvro0B5ValueV4hash4intoys6HasherVz_tF_0(a1);
      Hasher._combine(_:)(__dst[10]);
      sub_100163B74(__dst);
      sub_10000AFC4();
      break;
    default:
      Hasher._combine(_:)(0);
      sub_10000E068();
      sub_10000AFC4();

      _s9SwiftAvro0B9PrimitiveV4hash4intoys6HasherVz_tF_0();
      break;
  }
}

Swift::Int sub_1001745C8(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(char *))
{
  v7 = *v4;
  v6 = v4[1];
  v8 = Hasher.init(_seed:)();
  v16 = sub_10000F30C(v8, v9, v10, v11, v12, v13, v14, v15, v18, v19);
  a4(v16);
  return Hasher._finalize()();
}

Swift::Int sub_100174658()
{
  sub_100006A80();
  _s9SwiftAvro0B5ValueV4hash4intoys6HasherVz_tF_0(v1);
  return Hasher._finalize()();
}

Swift::Int sub_1001746B0(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *))
{
  Hasher.init(_seed:)();
  a4(v6);
  return Hasher._finalize()();
}

uint64_t static AvroPrimitive.string(_:)()
{
  sub_10000AA8C();

  return sub_10000672C();
}

uint64_t static AvroPrimitive.bytes(_:)()
{
}

{
  sub_10000705C();
  sub_100014924(v1, v2);
  return v0;
}

{
  sub_10000AA8C();
  sub_100014924(v1, v2);
  return v0;
}

void AvroValue.init(_:)(void *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X2>)
{
  *a1 = a2;
  a1[1] = a3 | 0x1000000000000000;
  a1[2] = a4;
  sub_100006544(a1);
}

void AvroValue.init(_:)(void *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  *a1 = a2;
  a1[1] = a3 | 0x2000000000000000;
  a1[2] = 0;
  sub_100006544(a1);
}

uint64_t static AvroValue.bytes(_:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = a2 | 0x1000000000000000;
  result = sub_100014924(a1, a2);
  *a4 = a1;
  *(a4 + 8) = v7;
  *(a4 + 16) = a3;
  *(a4 + 24) = 6;
  *(a4 + 64) = 0;
  return result;
}

uint64_t static AvroValue.bytes(_:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = a2 | 0x2000000000000000;
  result = sub_100014924(a1, a2);
  *a3 = a1;
  *(a3 + 8) = v5;
  *(a3 + 16) = 0;
  *(a3 + 24) = 6;
  *(a3 + 64) = 0;
  return result;
}

void static AvroValue.null.getter(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  sub_100006544(a1);
}

uint64_t static AvroValue.union(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_10001AEBC();
  v5 = swift_allocObject();
  sub_100017D10(v5);
  result = sub_100163B18(a1, v7);
  *a2 = v2;
  *(a2 + 64) = 4;
  return result;
}

uint64_t AvroValue.init(BOOLeanLiteral:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = result & 1;
  *(a2 + 24) = 0;
  *(a2 + 64) = 0;
  return result;
}

void AvroValue.init(integerLiteral:)(void *a1@<X8>, uint64_t a2@<X0>)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = a2;
  sub_100006544(a1);
}

void AvroValue.init(floatLiteral:)(uint64_t a1@<X8>, double a2@<D0>)
{
  *a1 = a2;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  sub_100006544(a1);
}

void AvroValue.init(stringLiteral:)(void *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  *a1 = a2;
  a1[1] = a3;
  a1[2] = 0;
  sub_100006544(a1);
}

void AvroValue.init(arrayLiteral:)(void *a1@<X8>, uint64_t a2@<X0>)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = a2;
  sub_100006544(a1);
}

uint64_t AvroValue.update(_:)(_BYTE *a1)
{
  v3 = v1;
  memcpy(__dst, v1, sizeof(__dst));
  v5 = AvroValue.schema.getter();
  v6 = sub_10015B364(a1, v5);

  if (v6)
  {
    sub_100178F64(v87);
    if (v88 >= 4u)
    {
      memcpy(v86, (v87[0] + 16), sizeof(v86));
      memcpy(v85, (v87[0] + 16), sizeof(v85));
      sub_100178190(v87, &v74);
      sub_100163B18(v86, &v74);
      AvroUnion.update(_:)(a1);
      if (v2)
      {
        sub_100018A24(&v74, v11, v12, v13, v14, v15, v16, v17, v40, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85[0]);
        sub_100163B74(&v74);
        return sub_1001781C8(v87);
      }

      else
      {
        sub_100178F64(&v54);
        sub_100096480(&v54);
        sub_100018A24(&v63, v18, v19, v20, v21, v22, v23, v24, v40, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85[0]);
        sub_10001AEBC();
        v25 = swift_allocObject();
        sub_100018A24((v25 + 16), v26, v27, v28, v29, v30, v31, v32, v41, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85[0]);
        sub_100018A24(&v74, v33, v34, v35, v36, v37, v38, v39, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85[0]);
        sub_100163B18(&v63, &v43);
        sub_100163B74(&v74);
        result = sub_1001781C8(v87);
        *v3 = v25;
        v3[64] = 4;
      }
    }

    else
    {
      sub_100172CA8(a1, v1);
      return sub_100163ABC(a1, v86);
    }
  }

  else
  {
    sub_100178F64(v89);
    v8 = AvroValue.schema.getter();
    v9 = AvroValue.schema.getter();
    sub_10017813C();
    sub_100004248();
    *v10 = v8;
    v10[1] = v9;
    return swift_willThrow();
  }

  return result;
}

void *AvroUnion.update(_:)(_BYTE *a1)
{
  v2 = v1;
  if (a1[64] == 4)
  {
    v4 = *a1;
    sub_1000079D0();
    memcpy(v5, v6, v7);
    v8 = *v2;
    sub_100163B18(__src, v23);
    v9 = sub_100006B0C();
    if (_s9SwiftAvro0B11UnionSchemaV23__derived_struct_equalsySbAC_ACtFZ_0(v9, v10))
    {
      memcpy(v23, v2, sizeof(v23));
      sub_100163B74(v23);
      return memcpy(v2, __src, 0x58uLL);
    }

    sub_100163B74(__src);
  }

  v12 = *v2;
  v13 = AvroValue.schema.getter();
  v14 = sub_10017398C(v13, v12);
  v16 = v15;

  if (v16)
  {
LABEL_10:
    sub_1000068B4();
    v19 = swift_allocObject();
    *(v19 + 16) = v12;
    v20 = v19 | 0x8000000000000000;

    v21 = AvroValue.schema.getter();
    sub_10017813C();
    sub_100004248();
    *v22 = v20;
    v22[1] = v21;
    return swift_willThrow();
  }

  if ((v14 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v14 < *(v12 + 16))
  {
    v17 = *(v12 + 8 * v14 + 32);

    v18 = sub_10015B364(a1, v17);

    if (v18)
    {
      memcpy(__src, v2 + 1, 0x41uLL);
      sub_100163ABC(a1, v23);
      sub_100096480(__src);
      result = memcpy(v2 + 1, a1, 0x41uLL);
      v2[10] = v14;
      return result;
    }

    goto LABEL_10;
  }

  __break(1u);
  return result;
}

uint64_t AvroValue.description.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  v11 = *v8;
  v10 = v8[1];
  v12 = v8[2];
  v13 = *(v9 + 24);
  switch(*(v9 + 64))
  {
    case 1:
      sub_100013660(a1, a2, a3, a4, a5, a6, a7, a8, v24, v25, v26);

      v20 = sub_10000ECA8();
      AvroArray.description.getter(v20, v21, v22);
      goto LABEL_8;
    case 2:
      sub_100013660(a1, a2, a3, a4, a5, a6, a7, a8, v24, v25, v26);

      v17 = sub_10000ECA8();
      AvroMap.description.getter(v17, v18, v19);
LABEL_8:
      swift_bridgeObjectRelease_n();

      swift_bridgeObjectRelease_n();
      return sub_100006B0C();
    case 3:
      sub_100013660(a1, a2, a3, a4, a5, a6, a7, a8, v11, v10, v12, v13, *(v9 + 32), *(v9 + 40), *(v9 + 48), *(v9 + 56));
      AvroRecord.description.getter();
      goto LABEL_6;
    case 4:
      memcpy(__dst, (v11 + 16), sizeof(__dst));
      sub_100163ABC(v9, &v24);
      sub_100163B18(__dst, &v24);
      AvroUnion.description.getter();
      sub_100163B74(__dst);
      goto LABEL_6;
    default:
      sub_100013660(a1, a2, a3, a4, a5, a6, a7, a8, v24, v25, v26);
      v14 = sub_10000ECA8();
      AvroPrimitive.description.getter(v14, v15, v16, v13);
LABEL_6:
      sub_100096480(v9);
      return sub_100006B0C();
  }
}

void AvroRecord.subscript.getter()
{
  sub_100007A1C();
  v3 = 0;
  v4 = *(v0 + 48);
  v5 = *(v4 + 16);
  v6 = (v4 + 40);
  for (i = 32; ; i += 72)
  {
    if (v5 == v3)
    {
      sub_100009A70();
LABEL_15:
      sub_10000570C(v20, v21, v22);
      return;
    }

    v8 = *(v6 - 1) == v2 && *v6 == v1;
    if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }

    ++v3;
    v6 += 3;
  }

  v9 = *(v0 + 56);
  if (v3 < *(v9 + 16))
  {
    memcpy(__dst, (v9 + i), 0x41uLL);
    if (LOBYTE(__dst[8]) == 4)
    {
      memcpy(v42, (__dst[0] + 24), 0x41uLL);
      sub_10000F720(v10, v11, v12, v13, v14, v15, v16, v17, v23, v25, v26, v28, v29, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42[0], v42[1], v42[2], v42[3], v42[4], v42[5]);
    }

    else
    {
      v27 = *&__dst[3];
      v30 = *&__dst[1];
      v24 = *&__dst[5];
      v18 = __dst;
      v19 = v42;
    }

    sub_100163ABC(v18, v19);
    v22 = v24;
    v21 = v27;
    v20 = v30;
    goto LABEL_15;
  }

  __break(1u);
}

uint64_t static AvroRecord.__derived_struct_equals(_:_:)()
{
  sub_10000AA8C();
  v11 = *v2;
  v12 = v2[1];
  v13 = v2[2];
  v14 = *(v2 + 6);
  v7 = *v3;
  v8 = v3[1];
  v9 = v3[2];
  v10 = *(v3 + 6);
  if ((static AvroRecordSchema.__derived_struct_equals(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v4 = *(v1 + 56);
  v5 = *(v0 + 56);

  return sub_10015D69C(v4, v5);
}

void AvroRecord.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v4 = *v2;
  v5 = v2[1];
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = v2[5];
  v10 = v2[6];
  String.hash(into:)();
  String.hash(into:)();
  if (v9)
  {
    Hasher._combine(_:)(1u);
    sub_1000385F0();
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  sub_100162948(a1, v10);
  v11 = v2[7];

  sub_100161940(a1, v11);
}

Swift::Int AvroRecord.hashValue.getter()
{
  v1 = v0;
  sub_100006A80();
  v2 = *v0;
  v3 = v0[1];
  v4 = v0[2];
  v6 = v1[3];
  v5 = v1[4];
  v8 = v1[5];
  v7 = v1[6];
  v9 = String.hash(into:)();
  sub_10001BDBC(v9, v10, v11, v12, v13, v14, v15, v16, v28, v30[0]);
  String.hash(into:)();
  if (v8)
  {
    Hasher._combine(_:)(1u);
    v17 = String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  v25 = sub_10000F30C(v17, v18, v19, v20, v21, v22, v23, v24, v29, v30[0]);
  sub_100162948(v25, v26);
  sub_100161940(v30, v1[7]);
  return Hasher._finalize()();
}

Swift::Int sub_100175320()
{
  Hasher.init(_seed:)();
  AvroRecord.hash(into:)(v1);
  return Hasher._finalize()();
}

uint64_t AvroRecord.description.getter()
{
  _StringGuts.grow(_:)(34);

  sub_1000066DC();
  sub_10000BF70();
  v1 = *(v0 + 7);
  v2._countAndFlagsBits = Array.description.getter();
  String.append(_:)(v2);

  v3 = sub_10000470C();
  sub_100015BF0(v3);
  v7 = *v0;
  v8 = v0[1];
  v9 = v0[2];
  v10 = *(v0 + 6);
  v11._countAndFlagsBits = AvroRecordSchema.description.getter();
  sub_100014CD8(v11);

  sub_100012FAC(v4);
  return v6;
}

uint64_t AvroArray.append(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = *(v1 + 16);
  if (sub_10015B364(a1, v4))
  {
    sub_10017291C();
    v5 = *(*(v1 + 24) + 16);
    sub_1001729C0(v5);
    v6 = *(v1 + 24);
    *(v6 + 16) = v5 + 1;
    sub_100178F64((v6 + 72 * v5 + 32));
    *(v2 + 24) = v6;
    return sub_100163ABC(a1, v10);
  }

  else
  {

    v8 = AvroValue.schema.getter();
    sub_10017813C();
    sub_100004248();
    *v9 = v4;
    v9[1] = v8;
    return swift_willThrow();
  }
}

uint64_t AvroArray.append<A>(contentsOf:)()
{
  v2 = *(v0 + 24);

  Sequence.forEach(_:)();
  if (!v1)
  {
  }

  v3 = *(v0 + 24);

  *(v0 + 24) = v2;
  return swift_willThrow();
}

unint64_t AvroArray.subscript.getter@<X0>(unint64_t result@<X0>, uint64_t a2@<X4>, void *a3@<X8>)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (*(a2 + 16) <= result)
  {
LABEL_8:
    __break(1u);
    return result;
  }

  v4 = a2 + 72 * result;
  v7 = *(v4 + 32);
  v5 = v4 + 32;
  v6 = v7;
  v8 = *(v5 + 64);
  if (v8 == 4)
  {
    memmove(__dst, (v6 + 24), 0x41uLL);
  }

  else
  {
    __dst[0] = v6;
    v9 = *(v5 + 24);
    *&__dst[1] = *(v5 + 8);
    *&__dst[3] = v9;
    *&__dst[5] = *(v5 + 40);
    __dst[7] = *(v5 + 56);
    LOBYTE(__dst[8]) = v8;
  }

  sub_100163ABC(__dst, &v10);
  return memcpy(a3, __dst, 0x41uLL);
}

uint64_t AvroArray.description.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_100006D34();
  _StringGuts.grow(_:)(33);

  sub_1000066DC();
  sub_10000BF70();
  v6._countAndFlagsBits = Array.description.getter();
  String.append(_:)(v6);

  v7 = sub_10000470C();
  sub_100015BF0(v7);
  v11._countAndFlagsBits = AvroArraySchema.description.getter(a1, a2, a3);
  sub_100014CD8(v11);

  sub_100012FAC(v8);
  return v10;
}

uint64_t sub_100175818()
{
  sub_10000705C();

  return v0;
}

void AvroMap.subscript.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (*(a6 + 16))
  {
    v7 = sub_100005B74(a1, a2);
    if (v8)
    {
      memcpy(__dst, (*(a6 + 56) + 72 * v7), 0x41uLL);
      if (LOBYTE(__dst[8]) == 4)
      {
        memcpy(v41, (__dst[0] + 24), 0x41uLL);
        sub_10000F720(v9, v10, v11, v12, v13, v14, v15, v16, v22, v24, v25, v27, v28, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41[0], v41[1], v41[2], v41[3], v41[4], v41[5]);
      }

      else
      {
        v26 = *&__dst[3];
        v29 = *&__dst[1];
        v23 = *&__dst[5];
        v17 = __dst;
        v18 = v41;
      }

      sub_100163ABC(v17, v18);
      v21 = v23;
      v20 = v26;
      v19 = v29;
    }

    else
    {
      sub_100009A70();
      v19 = 0uLL;
    }
  }

  else
  {
    sub_100009A70();
  }

  sub_10000570C(v19, v20, v21);
}

uint64_t sub_10017597C(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7, uint64_t a8, uint64_t (*a9)(uint64_t))
{
  v11 = a1 == a5 && a2 == a6;
  if (!v11 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (_s9SwiftAvro0B6SchemaV23__derived_struct_equalsySbAC_ACtFZ_0(a3, a7) & 1) == 0)
  {
    return 0;
  }

  v12 = sub_10000672C();

  return a9(v12);
}

uint64_t sub_100175A24(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    return 1;
  }

  v2 = a2;
  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = *(a1 + 64);
  v406 = a1 + 64;
  v5 = *(a1 + 32);
  sub_100004154();
  v9 = v8 & v7;
  v11 = (v10 + 63) >> 6;
  v411 = v11;
  v416 = v6;
  v421 = v2;
  if (v9)
  {
LABEL_4:
    v12 = __clz(__rbit64(v9));
    v426 = (v9 - 1) & v9;
    goto LABEL_10;
  }

  while (2)
  {
    v13 = v3;
    do
    {
      v3 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        __break(1u);
LABEL_334:

        goto LABEL_341;
      }

      if (v3 >= v11)
      {
        return 1;
      }

      v14 = *(v406 + 8 * v3);
      ++v13;
    }

    while (!v14);
    v12 = __clz(__rbit64(v14));
    v426 = (v14 - 1) & v14;
LABEL_10:
    v15 = v12 | (v3 << 6);
    v16 = (*(v6 + 48) + 16 * v15);
    v17 = *v16;
    v18 = v16[1];
    memcpy(__dst, (*(v6 + 56) + 72 * v15), 0x41uLL);
    v454 = *&__dst[48];
    v467 = *&__dst[16];
    v431 = *&__dst[32];
    v441 = *__dst;
    v19 = __dst[64];

    sub_100163ABC(__dst, &v493);
    if (!v18)
    {
      return 1;
    }

    v506 = v441;
    v507 = v467;
    v508 = v431;
    v509 = v454;
    v510 = v19;
    v20 = sub_100005B74(v17, v18);
    v22 = v21;

    if ((v22 & 1) == 0)
    {
      goto LABEL_331;
    }

    v23 = memcpy(v505, (*(v2 + 56) + 72 * v20), 0x41uLL);
    v31 = *v505;
    v30 = v505[1];
    v32 = v505[2];
    v33 = v505[4];
    v34 = v505[5];
    v35 = v505[2] >> 61;
    switch(LOBYTE(v505[8]))
    {
      case 1:
        if (v510 != 1)
        {
          goto LABEL_331;
        }

        *&v467 = v505[3];
        v71 = *(&v506 + 1);
        v70 = v506;
        v73 = *(&v507 + 1);
        v72 = v507;
        if (v505[0] != v506 || v505[1] != *(&v506 + 1))
        {
          v23 = _stringCompareWithSmolCheck(_:_:expecting:)();
          if ((v23 & 1) == 0)
          {
            goto LABEL_331;
          }
        }

        v75 = v72 >> 61;
        switch(v35)
        {
          case 1:
            v153 = v75 == 1;
            goto LABEL_157;
          case 2:
            v153 = v75 == 2;
LABEL_157:
            v2 = v421;
            if (!v153)
            {
              goto LABEL_331;
            }

            v170 = sub_100005B20();
            if (!v56 || v171 != v22)
            {
              v170 = sub_10000CD34();
              if ((v170 & 1) == 0)
              {
                goto LABEL_331;
              }
            }

            v179 = sub_100003F2C(v170, v171, v172, v173, v174, v175, v176, v177, v376, v381, v389, v395, v401, v406, v411, v416, v421, v426, v431, *(&v431 + 1), v441, *(&v441 + 1), v454, *(&v454 + 1), v467, *(&v467 + 1), v479, v480, v481, v482, v483, v484, v485, v486, v487, v488, v489, v490, v491[0], v491[1], v491[2], v491[3], v491[4], v491[5], v491[6], v491[7], v491[8], v492, v493, v494, *(&v494 + 1), v495, v496, v497, *(&v497 + 1), v498, v499, v500, v501, *__dst, *&__dst[8], *&__dst[16], *&__dst[24]);
            sub_100163ABC(v179, v180);

            LOBYTE(v20) = _s9SwiftAvro0B6SchemaV23__derived_struct_equalsySbAC_ACtFZ_0(v33, v32);

            goto LABEL_165;
          case 3:
            if (v75 != 3)
            {
              goto LABEL_331;
            }

            *&v454 = v73;
            v154 = *((v32 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
            v155 = *((v32 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
            v156 = *((v32 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
            v157 = *((v32 & 0x1FFFFFFFFFFFFFFFLL) + 0x28);
            v158 = *((v32 & 0x1FFFFFFFFFFFFFFFLL) + 0x38);
            *&v431 = *((v32 & 0x1FFFFFFFFFFFFFFFLL) + 0x30);
            *&v441 = *((v32 & 0x1FFFFFFFFFFFFFFFLL) + 0x40);
            v159 = v72 & 0x1FFFFFFFFFFFFFFFLL;
            v160 = *((v72 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
            v161 = *((v72 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
            v163 = *((v72 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
            v162 = *((v72 & 0x1FFFFFFFFFFFFFFFLL) + 0x28);
            v164 = *((v72 & 0x1FFFFFFFFFFFFFFFLL) + 0x30);
            v165 = *((v72 & 0x1FFFFFFFFFFFFFFFLL) + 0x38);
            v166 = *(v159 + 64);
            if (v154 != v160 || v155 != v161)
            {
              v154 = _stringCompareWithSmolCheck(_:_:expecting:)();
              if ((v154 & 1) == 0)
              {
                goto LABEL_331;
              }
            }

            if (v156 != v163 || v157 != v162)
            {
              sub_10000C91C();
              v154 = _stringCompareWithSmolCheck(_:_:expecting:)();
              if ((v154 & 1) == 0)
              {
                goto LABEL_331;
              }
            }

            if (v158)
            {
              if (!v165)
              {
                goto LABEL_331;
              }

              v154 = v431;
              if (v431 != v164 || v158 != v165)
              {
                v154 = _stringCompareWithSmolCheck(_:_:expecting:)();
                if ((v154 & 1) == 0)
                {
                  goto LABEL_331;
                }
              }
            }

            else if (v165)
            {
              goto LABEL_331;
            }

            v221 = sub_100003F2C(v154, v155, v160, v71, v26, v27, v28, v29, v376, v381, v389, v395, v401, v406, v411, v416, v421, v426, v431, *(&v431 + 1), v441, *(&v441 + 1), v454, *(&v454 + 1), v467, *(&v467 + 1), v479, v480, v481, v482, v483, v484, v485, v486, v487, v488, v489, v490, v491[0], v491[1], v491[2], v491[3], v491[4], v491[5], v491[6], v491[7], v491[8], v492, v493, v494, *(&v494 + 1), v495, v496, v497, *(&v497 + 1), v498, v499, v500, v501, *__dst, *&__dst[8], *&__dst[16], *&__dst[24]);
            sub_100163ABC(v221, v222);

            LOBYTE(v20) = sub_10015EECC(v446, v166);

            v2 = v421;
            v73 = v459;
            if ((v20 & 1) == 0)
            {
              goto LABEL_341;
            }

LABEL_283:
            sub_10015D69C(v470, v73);
            sub_100178F58();
            sub_100096480(v309);
            sub_100096480(v505);
            if ((v20 & 1) == 0)
            {
              return 0;
            }

            break;
          case 4:
            v2 = v421;
            if (v75 != 4)
            {
              goto LABEL_331;
            }

            v20 = *((v32 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
            v131 = *((v72 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
            v132 = sub_100003F2C(v23, v30, v70, v71, v26, v27, v28, v29, v376, v381, v389, v395, v401, v406, v411, v416, v421, v426, v431, *(&v431 + 1), v441, *(&v441 + 1), v454, *(&v454 + 1), v467, *(&v467 + 1), v479, v480, v481, v482, v483, v484, v485, v486, v487, v488, v489, v490, v491[0], v491[1], v491[2], v491[3], v491[4], v491[5], v491[6], v491[7], v491[8], v492, v493, v494, *(&v494 + 1), v495, v496, v497, *(&v497 + 1), v498, v499, v500, v501, *__dst, *&__dst[8], *&__dst[16], *&__dst[24]);
            sub_100163ABC(v132, v133);

            v134 = sub_1000041F8();
            LOBYTE(v20) = _s9SwiftAvro0B11UnionSchemaV23__derived_struct_equalsySbAC_ACtFZ_0(v134, v135);
            goto LABEL_165;
          default:
            v2 = v421;
            if (v75)
            {
              goto LABEL_331;
            }

            v76 = 1819047278;
            v77 = *(v32 + 16);
            v78 = 0xE400000000000000;
            v79 = 1819047278;
            switch(v77)
            {
              case 1:
                v78 = 0xE700000000000000;
                v79 = 0x6E61656C6F6F62;
                break;
              case 2:
                v78 = 0xE300000000000000;
                v79 = 7630441;
                break;
              case 3:
                v79 = 1735290732;
                break;
              case 4:
                v78 = 0xE500000000000000;
                v79 = 0x74616F6C66;
                break;
              case 5:
                v78 = 0xE600000000000000;
                v79 = 0x656C62756F64;
                break;
              case 6:
                v78 = 0xE600000000000000;
                v79 = 0x676E69727473;
                break;
              case 7:
                v78 = 0xE500000000000000;
                v79 = 0x7365747962;
                break;
              default:
                break;
            }

            v295 = 0xE400000000000000;
            switch(*(v72 + 16))
            {
              case 1:
                v295 = 0xE700000000000000;
                v76 = 0x6E61656C6F6F62;
                break;
              case 2:
                v295 = 0xE300000000000000;
                v76 = 7630441;
                break;
              case 3:
                v76 = 1735290732;
                break;
              case 4:
                v295 = 0xE500000000000000;
                v76 = 0x74616F6C66;
                break;
              case 5:
                v295 = 0xE600000000000000;
                v76 = 0x656C62756F64;
                break;
              case 6:
                v295 = 0xE600000000000000;
                v76 = 0x676E69727473;
                break;
              case 7:
                v295 = 0xE500000000000000;
                v76 = 0x7365747962;
                break;
              default:
                break;
            }

            if (v79 == v76 && v78 == v295)
            {
              v307 = sub_100003F2C(v79, v30, v76, v71, v26, v27, v28, v29, v376, v381, v389, v395, v401, v406, v411, v416, v421, v426, v431, *(&v431 + 1), v441, *(&v441 + 1), v454, *(&v454 + 1), v467, *(&v467 + 1), v479, v480, v481, v482, v483, v484, v485, v486, v487, v488, v489, v490, v491[0], v491[1], v491[2], v491[3], v491[4], v491[5], v491[6], v491[7], v491[8], v492, v493, v494, *(&v494 + 1), v495, v496, v497, *(&v497 + 1), v498, v499, v500, v501, *__dst, *&__dst[8], *&__dst[16], *&__dst[24]);
              sub_100163ABC(v307, v308);
            }

            else
            {
              sub_10000C91C();
              v297 = _stringCompareWithSmolCheck(_:_:expecting:)();
              LOBYTE(v20) = v297;
              v305 = sub_100003F2C(v297, v298, v299, v300, v301, v302, v303, v304, v376, v381, v389, v395, v401, v406, v411, v416, v421, v426, v431, *(&v431 + 1), v441, *(&v441 + 1), v454, *(&v454 + 1), v467, *(&v467 + 1), v479, v480, v481, v482, v483, v484, v485, v486, v487, v488, v489, v490, v491[0], v491[1], v491[2], v491[3], v491[4], v491[5], v491[6], v491[7], v491[8], v492, v493, v494, *(&v494 + 1), v495, v496, v497, *(&v497 + 1), v498, v499, v500, v501, *__dst, *&__dst[8], *&__dst[16], *&__dst[24]);
              sub_100163ABC(v305, v306);

LABEL_165:

              if ((v20 & 1) == 0)
              {
                goto LABEL_341;
              }
            }

            goto LABEL_283;
        }

        goto LABEL_327;
      case 2:
        if (v510 != 2)
        {
          goto LABEL_331;
        }

        v52 = v505[3];
        v54 = *(&v506 + 1);
        v53 = v506;
        v55 = v507;
        v56 = v505[0] == v506 && v505[1] == *(&v506 + 1);
        if (!v56)
        {
          v23 = _stringCompareWithSmolCheck(_:_:expecting:)();
          if ((v23 & 1) == 0)
          {
            goto LABEL_331;
          }
        }

        v57 = v55 >> 61;
        switch(v35)
        {
          case 1:
            v130 = v57 == 1;
            goto LABEL_124;
          case 2:
            v130 = v57 == 2;
LABEL_124:
            v2 = v421;
            if (!v130)
            {
              goto LABEL_331;
            }

            v140 = sub_100005B20();
            if (!v56 || v141 != v22)
            {
              v140 = sub_10000CD34();
              if ((v140 & 1) == 0)
              {
                goto LABEL_331;
              }
            }

            v149 = sub_100003F2C(v140, v141, v142, v143, v144, v145, v146, v147, v376, v381, v389, v395, v401, v406, v411, v416, v421, v426, v431, *(&v431 + 1), v441, *(&v441 + 1), v454, *(&v454 + 1), v467, *(&v467 + 1), v479, v480, v481, v482, v483, v484, v485, v486, v487, v488, v489, v490, v491[0], v491[1], v491[2], v491[3], v491[4], v491[5], v491[6], v491[7], v491[8], v492, v493, v494, *(&v494 + 1), v495, v496, v497, *(&v497 + 1), v498, v499, v500, v501, *__dst, *&__dst[8], *&__dst[16], *&__dst[24]);
            sub_100163ABC(v149, v150);

            LOBYTE(v20) = _s9SwiftAvro0B6SchemaV23__derived_struct_equalsySbAC_ACtFZ_0(v33, v32);

            goto LABEL_132;
          case 3:
            v136 = *((v32 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
            v511 = *((v32 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
            v512 = v136;
            v513 = *((v32 & 0x1FFFFFFFFFFFFFFFLL) + 0x30);
            v514 = *((v32 & 0x1FFFFFFFFFFFFFFFLL) + 0x40);
            v2 = v421;
            if (v57 != 3)
            {
              goto LABEL_331;
            }

            v137 = *((v55 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
            v515[0] = *((v55 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
            v515[1] = v137;
            v515[2] = *((v55 & 0x1FFFFFFFFFFFFFFFLL) + 0x30);
            v516 = *((v55 & 0x1FFFFFFFFFFFFFFFLL) + 0x40);
            v138 = sub_100003F2C(v23, v30, v53, v54, v26, v27, v28, v29, v376, v381, v389, v395, v401, v406, v411, v416, v421, v426, v431, *(&v431 + 1), v441, *(&v441 + 1), v454, *(&v454 + 1), v467, *(&v467 + 1), v479, v480, v481, v482, v483, v484, v485, v486, v487, v488, v489, v490, v491[0], v491[1], v491[2], v491[3], v491[4], v491[5], v491[6], v491[7], v491[8], v492, v493, v494, *(&v494 + 1), v495, v496, v497, *(&v497 + 1), v498, v499, v500, v501, *__dst, *&__dst[8], *&__dst[16], *&__dst[24]);
            sub_100163ABC(v138, v139);
            sub_1000967A0(v515, __dst);
            LOBYTE(v20) = static AvroRecordSchema.__derived_struct_equals(_:_:)();
            sub_100161354(v515);
            if ((v20 & 1) == 0)
            {
              goto LABEL_341;
            }

            goto LABEL_133;
          case 4:
            v2 = v421;
            if (v57 != 4)
            {
              goto LABEL_331;
            }

            v20 = *((v32 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
            v125 = *((v55 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
            v126 = sub_100003F2C(v23, v30, v53, v54, v26, v27, v28, v29, v376, v381, v389, v395, v401, v406, v411, v416, v421, v426, v431, *(&v431 + 1), v441, *(&v441 + 1), v454, *(&v454 + 1), v467, *(&v467 + 1), v479, v480, v481, v482, v483, v484, v485, v486, v487, v488, v489, v490, v491[0], v491[1], v491[2], v491[3], v491[4], v491[5], v491[6], v491[7], v491[8], v492, v493, v494, *(&v494 + 1), v495, v496, v497, *(&v497 + 1), v498, v499, v500, v501, *__dst, *&__dst[8], *&__dst[16], *&__dst[24]);
            sub_100163ABC(v126, v127);

            v128 = sub_1000041F8();
            LOBYTE(v20) = _s9SwiftAvro0B11UnionSchemaV23__derived_struct_equalsySbAC_ACtFZ_0(v128, v129);
            goto LABEL_132;
          default:
            v2 = v421;
            if (v57)
            {
              goto LABEL_331;
            }

            v58 = 1819047278;
            v59 = *(v32 + 16);
            v60 = 0xE400000000000000;
            switch(v59)
            {
              case 1:
                v60 = 0xE700000000000000;
                v58 = 0x6E61656C6F6F62;
                break;
              case 2:
                v60 = 0xE300000000000000;
                v58 = 7630441;
                break;
              case 3:
                v58 = 1735290732;
                break;
              case 4:
                v60 = 0xE500000000000000;
                v58 = 0x74616F6C66;
                break;
              case 5:
                v60 = 0xE600000000000000;
                v58 = 0x656C62756F64;
                break;
              case 6:
                v60 = 0xE600000000000000;
                v58 = 0x676E69727473;
                break;
              case 7:
                v60 = 0xE500000000000000;
                v58 = 0x7365747962;
                break;
              default:
                break;
            }

            v274 = sub_1001608C8(*(v55 + 16));
            if (v58 == v274 && v60 == v275)
            {
              v293 = sub_100003F2C(v274, v275, v276, v277, v278, v279, v280, v281, v376, v381, v389, v395, v401, v406, v411, v416, v421, v426, v431, *(&v431 + 1), v441, *(&v441 + 1), v454, *(&v454 + 1), v467, *(&v467 + 1), v479, v480, v481, v482, v483, v484, v485, v486, v487, v488, v489, v490, v491[0], v491[1], v491[2], v491[3], v491[4], v491[5], v491[6], v491[7], v491[8], v492, v493, v494, *(&v494 + 1), v495, v496, v497, *(&v497 + 1), v498, v499, v500, v501, *__dst, *&__dst[8], *&__dst[16], *&__dst[24]);
              sub_100163ABC(v293, v294);
            }

            else
            {
              sub_1000385F0();
              sub_10000C91C();
              v283 = _stringCompareWithSmolCheck(_:_:expecting:)();
              LOBYTE(v20) = v283;
              v291 = sub_100003F2C(v283, v284, v285, v286, v287, v288, v289, v290, v376, v381, v389, v395, v401, v406, v411, v416, v421, v426, v431, *(&v431 + 1), v441, *(&v441 + 1), v454, *(&v454 + 1), v467, *(&v467 + 1), v479, v480, v481, v482, v483, v484, v485, v486, v487, v488, v489, v490, v491[0], v491[1], v491[2], v491[3], v491[4], v491[5], v491[6], v491[7], v491[8], v492, v493, v494, *(&v494 + 1), v495, v496, v497, *(&v497 + 1), v498, v499, v500, v501, *__dst, *&__dst[8], *&__dst[16], *&__dst[24]);
              sub_100163ABC(v291, v292);

LABEL_132:

              if ((v20 & 1) == 0)
              {
                goto LABEL_341;
              }
            }

LABEL_133:
            sub_100175A24(v52, *(&v55 + 1));
            sub_100178F58();
            sub_100096480(v151);
            v152 = v505;
            break;
        }

        goto LABEL_134;
      case 3:
        v396 = v505[7];
        if (v510 != 3)
        {
          goto LABEL_331;
        }

        *&v441 = v505[6];
        v61 = v505[3];
        v63 = *(&v506 + 1);
        v62 = v506;
        v65 = *(&v507 + 1);
        v64 = v507;
        v66 = v508;
        v390 = *(&v509 + 1);
        *&v431 = v509;
        if (v505[0] != v506 || v505[1] != *(&v506 + 1))
        {
          v23 = _stringCompareWithSmolCheck(_:_:expecting:)();
          if ((v23 & 1) == 0)
          {
            goto LABEL_331;
          }
        }

        if (v32 != v64 || v61 != v65)
        {
          v23 = _stringCompareWithSmolCheck(_:_:expecting:)();
          if ((v23 & 1) == 0)
          {
            goto LABEL_331;
          }
        }

        if (v34)
        {
          if (!*(&v66 + 1))
          {
            goto LABEL_331;
          }

          if (v33 != v66 || v34 != *(&v66 + 1))
          {
            v23 = _stringCompareWithSmolCheck(_:_:expecting:)();
            if ((v23 & 1) == 0)
            {
              goto LABEL_331;
            }
          }
        }

        else if (*(&v66 + 1))
        {
          goto LABEL_331;
        }

        v80 = v441;
        v81 = *(v441 + 16);
        v82 = v431;
        if (v81 != *(v431 + 16))
        {
          goto LABEL_331;
        }

        if (!v81 || v441 == v431)
        {
          v122 = sub_100003F2C(v23, v30, v62, v63, v26, v27, v28, v29, v376, v381, v390, v396, v401, v406, v411, v416, v421, v426, v431, *(&v431 + 1), v441, *(&v441 + 1), v454, *(&v454 + 1), v467, *(&v467 + 1), v479, v480, v481, v482, v483, v484, v485, v486, v487, v488, v489, v490, v491[0], v491[1], v491[2], v491[3], v491[4], v491[5], v491[6], v491[7], v491[8], v492, v493, v494, *(&v494 + 1), v495, v496, v497, *(&v497 + 1), v498, v499, v500, v501, *__dst, *&__dst[8], *&__dst[16], *&__dst[24]);
          sub_100163ABC(v122, v123);
LABEL_113:
          sub_10015D69C(v395, v389);
          sub_100178F58();
          sub_100096480(v124);
          sub_100096480(v505);
          v2 = v421;
          if ((v64 & 1) == 0)
          {
            return 0;
          }

LABEL_327:
          v6 = v416;
LABEL_328:
          v11 = v411;
          v9 = v426;
          if (v426)
          {
            goto LABEL_4;
          }

          continue;
        }

        result = static Optional<A>.sqlNullable.getter();
        if ((result & 1) == 0)
        {
          v372 = sub_100003F2C(result, v84, v85, v86, v87, v88, v89, v90, v376, v381, v390, v396, v401, v406, v411, v416, v421, v426, v431, *(&v431 + 1), v441, *(&v441 + 1), v454, *(&v454 + 1), v467, *(&v467 + 1), v479, v480, v481, v482, v483, v484, v485, v486, v487, v488, v489, v490, v491[0], v491[1], v491[2], v491[3], v491[4], v491[5], v491[6], v491[7], v491[8], v492, v493, v494, *(&v494 + 1), v495, v496, v497, *(&v497 + 1), v498, v499, v500, v501, *__dst, *&__dst[8], *&__dst[16], *&__dst[24]);
          sub_100163ABC(v372, v373);
          result = sub_100171FE4(0, v80);
          __break(1u);
          goto LABEL_345;
        }

        if (!*(v441 + 16))
        {
LABEL_345:
          __break(1u);
          goto LABEL_346;
        }

        v91 = *(v441 + 32);
        v92 = *(v441 + 40);
        v93 = *(v441 + 48);
        result = static Optional<A>.sqlNullable.getter();
        if ((result & 1) == 0)
        {
LABEL_346:
          v374 = sub_100003F2C(result, v84, v85, v86, v87, v88, v89, v90, v376, v381, v390, v396, v401, v406, v411, v416, v421, v426, v431, *(&v431 + 1), v441, *(&v441 + 1), v454, *(&v454 + 1), v467, *(&v467 + 1), v479, v480, v481, v482, v483, v484, v485, v486, v487, v488, v489, v490, v491[0], v491[1], v491[2], v491[3], v491[4], v491[5], v491[6], v491[7], v491[8], v492, v493, v494, *(&v494 + 1), v495, v496, v497, *(&v497 + 1), v498, v499, v500, v501, *__dst, *&__dst[8], *&__dst[16], *&__dst[24]);
          sub_100163ABC(v374, v375);

          result = sub_100171FE4(0, v82);
          __break(1u);
          goto LABEL_347;
        }

        if (!*(v431 + 16))
        {
LABEL_347:
          __break(1u);
          return result;
        }

        v94 = *(v431 + 32);
        v95 = *(v431 + 48);
        if (v91 != v94 || v92 != *(v431 + 40))
        {
          result = sub_10000CD34();
          if ((result & 1) == 0)
          {
LABEL_331:
            v371 = &v506;
            goto LABEL_342;
          }
        }

        v97 = sub_100003F2C(result, v84, v94, v86, v87, v88, v89, v90, v376, v381, v390, v396, v401, v406, v411, v416, v421, v426, v431, *(&v431 + 1), v441, *(&v441 + 1), v454, *(&v454 + 1), v467, *(&v467 + 1), v479, v480, v481, v482, v483, v484, v485, v486, v487, v488, v489, v490, v491[0], v491[1], v491[2], v491[3], v491[4], v491[5], v491[6], v491[7], v491[8], v492, v493, v494, *(&v494 + 1), v495, v496, v497, *(&v497 + 1), v498, v499, v500, v501, *__dst, *&__dst[8], *&__dst[16], *&__dst[24]);
        sub_100163ABC(v97, v98);
        v401 = v81;
        v99 = (v443 + 72);
        v100 = (v82 + 72);
        v101 = 1;
        while (2)
        {
          v102 = v95 & 0x1FFFFFFFFFFFFFFFLL;

          v103 = v95 >> 61;
          v469 = v99;
          v456 = v100;
          switch(v93 >> 61)
          {
            case 1uLL:
              if (v103 == 1)
              {
                goto LABEL_94;
              }

              goto LABEL_332;
            case 2uLL:
              if (v103 != 2)
              {
                goto LABEL_332;
              }

LABEL_94:
              v64 = *((v93 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
              v115 = *((v95 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
              v116 = *((v95 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
              v117 = *((v95 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
              if (*((v93 & 0x1FFFFFFFFFFFFFFFLL) + 0x10) != v115 || *((v93 & 0x1FFFFFFFFFFFFFFFLL) + 0x18) != v116)
              {
                v119 = *(v102 + 24);
                if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
                {
                  goto LABEL_334;
                }
              }

              LOBYTE(v64) = _s9SwiftAvro0B6SchemaV23__derived_struct_equalsySbAC_ACtFZ_0(v64, v117);

              goto LABEL_100;
            case 3uLL:
              v113 = *((v93 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
              v517 = *((v93 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
              v518 = v113;
              v519 = *((v93 & 0x1FFFFFFFFFFFFFFFLL) + 0x30);
              v520 = *((v93 & 0x1FFFFFFFFFFFFFFFLL) + 0x40);
              if (v103 != 3)
              {
                goto LABEL_332;
              }

              v114 = *((v95 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
              v521[0] = *((v95 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
              v521[1] = v114;
              v521[2] = *((v95 & 0x1FFFFFFFFFFFFFFFLL) + 0x30);
              v522 = *((v95 & 0x1FFFFFFFFFFFFFFFLL) + 0x40);
              sub_1000967A0(v521, __dst);
              LOBYTE(v64) = static AvroRecordSchema.__derived_struct_equals(_:_:)();
              sub_100161354(v521);

              goto LABEL_100;
            case 4uLL:
              if (v103 != 4)
              {
                goto LABEL_332;
              }

              v64 = *((v93 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
              v110 = *((v95 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);

              v111 = sub_100007CD4();
              LOBYTE(v64) = _s9SwiftAvro0B11UnionSchemaV23__derived_struct_equalsySbAC_ACtFZ_0(v111, v112);

LABEL_100:

              if (v64)
              {
                goto LABEL_101;
              }

              goto LABEL_341;
            default:
              if (v103)
              {
LABEL_332:

                goto LABEL_341;
              }

              v104 = *(v93 + 16);
              v105 = *(v95 + 16);
              v64 = sub_1001608C8(v104);
              v107 = v106;
              if (v64 == sub_1001608C8(v105) && v107 == v108)
              {
              }

              else
              {
                sub_10000C91C();
                LOBYTE(v64) = _stringCompareWithSmolCheck(_:_:expecting:)();

                if ((v64 & 1) == 0)
                {
                  goto LABEL_341;
                }
              }

LABEL_101:
              if (v401 == v101)
              {
                goto LABEL_113;
              }

              if (v101 < v401)
              {
                if (v101 >= *(v443 + 16))
                {
                  goto LABEL_336;
                }

                if (v101 >= *(v432 + 16))
                {
                  goto LABEL_337;
                }

                v93 = *v469;
                v95 = *v456;
                if (*(v469 - 2) != *(v456 - 2) || *(v469 - 1) != *(v456 - 1))
                {
                  v121 = *(v469 - 1);
                  if ((sub_10000CD34() & 1) == 0)
                  {
                    goto LABEL_341;
                  }
                }

                v99 = v469 + 3;
                v100 = v456 + 3;
                ++v101;
                continue;
              }

              __break(1u);
LABEL_336:
              __break(1u);
LABEL_337:
              __break(1u);
LABEL_338:
              sub_100163B74(&v490);
LABEL_339:
              sub_100163B74(&v493);
LABEL_340:
              sub_100163B74(__dst);
LABEL_341:
              sub_100096480(&v506);
              v371 = v505;
LABEL_342:
              sub_100096480(v371);
              return 0;
          }
        }

      case 4:
        if (v510 != 4)
        {
          goto LABEL_331;
        }

        v38 = *(v505[0] + 32);
        v39 = *(v505[0] + 40);
        v455 = *(v505[0] + 48);
        v442 = *(v505[0] + 56);
        v40 = *(v505[0] + 72);
        v41 = *(v505[0] + 80);
        v42 = *(v505[0] + 88);
        v468 = *(v505[0] + 96);
        v43 = *(v505[0] + 16);
        v44 = *(v505[0] + 24);
        sub_1000079D0();
        memcpy(v45, v46, v47);
        sub_100163ABC(v505, &v493);
        sub_100163B18(__dst, &v493);
        v48 = sub_100007CD4();
        if ((_s9SwiftAvro0B11UnionSchemaV23__derived_struct_equalsySbAC_ACtFZ_0(v48, v49) & 1) == 0)
        {
          goto LABEL_340;
        }

        switch(v42)
        {
          case 1:
            v2 = v421;
            if (v503 != 1)
            {
              goto LABEL_340;
            }

            v202 = *&__dst[24];
            v201 = *&__dst[32];
            if (*&v44 != *&__dst[8] || v38 != *&__dst[16])
            {
              sub_100005FBC();
              if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
              {
                goto LABEL_340;
              }
            }

            if ((_s9SwiftAvro0B6SchemaV23__derived_struct_equalsySbAC_ACtFZ_0(v39, v202) & 1) == 0)
            {
              goto LABEL_340;
            }

            v198 = sub_10015D69C(v455, v201);
            goto LABEL_192;
          case 2:
            v2 = v421;
            if (v503 != 2)
            {
              goto LABEL_340;
            }

            v196 = *&__dst[24];
            v195 = *&__dst[32];
            if (*&v44 != *&__dst[8] || v38 != *&__dst[16])
            {
              sub_100005FBC();
              if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
              {
                goto LABEL_340;
              }
            }

            if ((_s9SwiftAvro0B6SchemaV23__derived_struct_equalsySbAC_ACtFZ_0(v39, v196) & 1) == 0)
            {
              goto LABEL_340;
            }

            v198 = sub_100175A24(v455, v195);
            goto LABEL_192;
          case 3:
            v2 = v421;
            if (v503 != 3)
            {
              goto LABEL_340;
            }

            v199 = *&__dst[64];
            v523 = v44;
            v524 = v38;
            v525 = v39;
            v526 = v455;
            v527 = v442;
            v528 = v40;
            v529 = *&__dst[8];
            v530 = *&__dst[24];
            v531 = *&__dst[32];
            v532 = *&__dst[40];
            v533 = *&__dst[56];
            if ((static AvroRecordSchema.__derived_struct_equals(_:_:)() & 1) == 0)
            {
              goto LABEL_340;
            }

            v200 = sub_10015D69C(v41, v199);
            sub_100163B74(__dst);
            sub_100096480(&v506);
            sub_100096480(v505);
            if ((v200 & 1) == 0)
            {
              return 0;
            }

            goto LABEL_305;
          case 4:
            if (v503 != 4)
            {
              goto LABEL_340;
            }

            v182 = *(*&v44 + 32);
            v181 = *(*&v44 + 40);
            v183 = *(*&v44 + 48);
            v444 = *(*&v44 + 56);
            v185 = *(*&v44 + 72);
            v184 = *(*&v44 + 80);
            v186 = *(*&v44 + 88);
            v457 = *(*&v44 + 96);
            v189 = *&v44 + 16;
            v187 = *(*&v44 + 16);
            v188 = *(v189 + 8);
            sub_1000079D0();
            memcpy(v190, v191, v192);
            v193 = v493;
            sub_100163B18(&v493, &v490);
            if (_s9SwiftAvro0B11UnionSchemaV23__derived_struct_equalsySbAC_ACtFZ_0(v187, v193))
            {
              switch(v186)
              {
                case 1:
                  if (v500 != 1)
                  {
                    goto LABEL_339;
                  }

                  v272 = v495;
                  v271 = v496;
                  v273 = v188 == v494 && v182 == *(&v494 + 1);
                  if (!v273 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
                  {
                    goto LABEL_339;
                  }

                  v2 = v421;
                  if ((_s9SwiftAvro0B6SchemaV23__derived_struct_equalsySbAC_ACtFZ_0(v181, v272) & 1) == 0)
                  {
                    goto LABEL_339;
                  }

                  v268 = sub_10015D69C(v183, v271);
                  goto LABEL_247;
                case 2:
                  if (v500 != 2)
                  {
                    goto LABEL_339;
                  }

                  v266 = v495;
                  v265 = v496;
                  v267 = v188 == v494 && v182 == *(&v494 + 1);
                  if (!v267 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
                  {
                    goto LABEL_339;
                  }

                  v2 = v421;
                  if ((_s9SwiftAvro0B6SchemaV23__derived_struct_equalsySbAC_ACtFZ_0(v181, v266) & 1) == 0)
                  {
                    goto LABEL_339;
                  }

                  v268 = sub_100175A24(v183, v265);
LABEL_247:
                  v194 = v268;
                  sub_100163B74(&v493);
                  sub_100163B74(__dst);
                  sub_100096480(&v506);
                  sub_100096480(v505);
                  goto LABEL_248;
                case 3:
                  if (v500 != 3)
                  {
                    goto LABEL_339;
                  }

                  v269 = v499;
                  v534 = v188;
                  v535 = v182;
                  v536 = v181;
                  v537 = v183;
                  v538 = v444;
                  v539 = v185;
                  v540 = v494;
                  v541 = v495;
                  v542 = v496;
                  v543 = v497;
                  v544 = v498;
                  if ((static AvroRecordSchema.__derived_struct_equals(_:_:)() & 1) == 0)
                  {
                    goto LABEL_339;
                  }

                  v270 = sub_10015D69C(v184, v269);
                  sub_100163B74(&v493);
                  sub_100163B74(__dst);
                  sub_100096480(&v506);
                  sub_100096480(v505);
                  v2 = v421;
                  if ((v270 & 1) == 0)
                  {
                    return 0;
                  }

                  goto LABEL_249;
                case 4:
                  v257 = v188[2];
                  memcpy(v545, v188 + 3, 0x41uLL);
                  if (v500 != 4)
                  {
                    goto LABEL_339;
                  }

                  v258 = v188[12];
                  sub_1000079D0();
                  memcpy(v259, v260, v261);
                  sub_100163B18(&v490, &v479);
                  v262 = sub_1000041F8();
                  if ((_s9SwiftAvro0B11UnionSchemaV23__derived_struct_equalsySbAC_ACtFZ_0(v262, v263) & 1) == 0)
                  {
                    goto LABEL_338;
                  }

                  memcpy(v546, v491, 0x41uLL);
                  v264 = _s9SwiftAvro0B5ValueV23__derived_struct_equalsySbAC_ACtFZ_0(v545, v546);
                  sub_100163B74(&v490);
                  sub_100163B74(&v493);
                  sub_100163B74(__dst);
                  sub_100096480(&v506);
                  sub_100096480(v505);
                  v2 = v421;
                  if ((v264 & 1) == 0 || v258 != v492)
                  {
                    return 0;
                  }

                  goto LABEL_249;
                default:
                  if (v500)
                  {
                    goto LABEL_339;
                  }

                  v194 = _s9SwiftAvro0B9PrimitiveV23__derived_struct_equalsySbAC_ACtFZ_0(v188, v182, v181, v183, v494, *(&v494 + 1), v495, v496);
                  sub_100163B74(&v493);
                  sub_100163B74(__dst);
                  sub_100096480(&v506);
                  sub_100096480(v505);
                  v2 = v421;
LABEL_248:
                  if ((v194 & 1) == 0)
                  {
                    return 0;
                  }

LABEL_249:
                  if (v457 != v501)
                  {
                    return 0;
                  }

                  goto LABEL_305;
              }
            }

            goto LABEL_339;
          default:
            v2 = v421;
            if (v503)
            {
              goto LABEL_340;
            }

            break;
        }

        v50 = *&__dst[8];
        v51 = __dst[32];
        switch(v455)
        {
          case 1:
            if (__dst[32] == 1)
            {
              goto LABEL_295;
            }

            goto LABEL_340;
          case 2:
            sub_100163B74(__dst);
            sub_100096480(&v506);
            sub_100096480(v505);
            if (v51 != 2)
            {
              return 0;
            }

            v310 = *&v44 == v50;
            goto LABEL_296;
          case 3:
            if (__dst[32] != 3)
            {
              goto LABEL_340;
            }

LABEL_295:
            sub_100163B74(__dst);
            sub_100096480(&v506);
            sub_100096480(v505);
            v310 = LODWORD(v44) == v50;
            goto LABEL_296;
          case 4:
            if (__dst[32] != 4)
            {
              goto LABEL_340;
            }

            sub_100163B74(__dst);
            sub_100096480(&v506);
            sub_100096480(v505);
            v310 = v44 == *&v50;
LABEL_296:
            if (!v310)
            {
              return 0;
            }

            goto LABEL_305;
          case 5:
            if (__dst[32] != 5)
            {
              goto LABEL_340;
            }

            if (*&v44 == *&__dst[8] && v38 == *&__dst[16])
            {
LABEL_304:
              sub_100163B74(__dst);
              sub_100096480(&v506);
              sub_100096480(v505);
            }

            else
            {
              sub_100005FBC();
              v198 = _stringCompareWithSmolCheck(_:_:expecting:)();
LABEL_192:
              v204 = v198;
              sub_100163B74(__dst);
              sub_100096480(&v506);
              sub_100096480(v505);
              if ((v204 & 1) == 0)
              {
                return 0;
              }
            }

LABEL_305:
            if (v468 != v504)
            {
              return 0;
            }

            break;
          case 6:
            if (__dst[32] != 6)
            {
              goto LABEL_340;
            }

            v312 = sub_100005FBC();
            v198 = sub_1001778CC(v312, v313, v314, v50, v315);
            goto LABEL_192;
          case 7:
            if (__dst[32] != 7 || *&__dst[8] | *&__dst[24] | *&__dst[16])
            {
              goto LABEL_340;
            }

            goto LABEL_304;
          default:
            sub_100163B74(__dst);
            sub_100096480(&v506);
            sub_100096480(v505);
            if (v51 || ((v50 ^ LOBYTE(v44)) & 1) != 0)
            {
              return 0;
            }

            goto LABEL_305;
        }

        goto LABEL_327;
      default:
        if (v510)
        {
          goto LABEL_331;
        }

        v36 = *(&v506 + 1);
        v37 = *&v506;
        LODWORD(v20) = BYTE8(v507);
        v2 = v421;
        switch(LOBYTE(v505[3]))
        {
          case 1:
            if (BYTE8(v507) == 1)
            {
              goto LABEL_199;
            }

            goto LABEL_331;
          case 2:
            sub_100096480(&v506);
            if (v20 != 2)
            {
              return 0;
            }

            v205 = *&v31 == *&v37;
            goto LABEL_325;
          case 3:
            if (BYTE8(v507) != 3)
            {
              goto LABEL_331;
            }

LABEL_199:
            sub_100096480(&v506);
            v205 = *&v31 == *&v37;
            goto LABEL_325;
          case 4:
            if (BYTE8(v507) != 4)
            {
              goto LABEL_331;
            }

            sub_100096480(&v506);
            v205 = v31 == v37;
            goto LABEL_325;
          case 5:
            if (BYTE8(v507) != 5)
            {
              goto LABEL_331;
            }

            if (v505[0] == v506 && v505[1] == *(&v506 + 1))
            {
LABEL_211:
              sub_100096480(&v506);
              v6 = v416;
              goto LABEL_328;
            }

            _stringCompareWithSmolCheck(_:_:expecting:)();
            sub_100178F58();
LABEL_134:
            sub_100096480(v152);
            if ((v20 & 1) == 0)
            {
              return 0;
            }

            break;
          case 6:
            if (BYTE8(v507) != 6)
            {
              goto LABEL_331;
            }

            if (((v505[1] >> 60) & 3) != 0)
            {
              v207 = v505[1] & 0xCFFFFFFFFFFFFFFFLL;
              v208 = sub_100003F2C(v23, v505[1], v24, v25, v26, v27, v28, v29, v376, v381, v389, v395, v401, v406, v411, v416, v421, v426, v431, *(&v431 + 1), v441, *(&v441 + 1), v454, *(&v454 + 1), v467, *(&v467 + 1), v479, v480, v481, v482, v483, v484, v485, v486, v487, v488, v489, v490, v491[0], v491[1], v491[2], v491[3], v491[4], v491[5], v491[6], v491[7], v491[8], v492, v493, v494, *(&v494 + 1), v495, v496, v497, *(&v497 + 1), v498, v499, v500, v501, *__dst, *&__dst[8], *&__dst[16], *&__dst[24]);
              v210 = sub_100163ABC(v208, v209);
              v218 = sub_100003F2C(v210, v211, v212, v213, v214, v215, v216, v217, v377, v382, v391, v397, v402, v407, v412, v417, v422, v427, v433, v437, v445, v450, v458, v463, v471, v475, v479, v480, v481, v482, v483, v484, v485, v486, v487, v488, v489, v490, v491[0], v491[1], v491[2], v491[3], v491[4], v491[5], v491[6], v491[7], v491[8], v492, v493, v494, *(&v494 + 1), v495, v496, v497, *(&v497 + 1), v498, v499, v500, v501, *__dst, *&__dst[8], *&__dst[16], *&__dst[24]);
              sub_100163ABC(v218, v219);
              v220 = v383;
              goto LABEL_314;
            }

            v223 = sub_100046184(&qword_100217F20, &qword_1001A5520);
            v495 = v223;
            v496 = sub_100163BC8();
            v493 = *&v31;
            v224 = sub_100007534(&v493, v223);
            v232 = *(*v224 + 16);
            if (v232)
            {
              if (v232 <= 0xE)
              {
                v328 = sub_100003F2C(v224, v225, v226, v227, v228, v229, v230, v231, v376, v381, v389, v395, v401, v406, v411, v416, v421, v426, v431, *(&v431 + 1), v441, *(&v441 + 1), v454, *(&v454 + 1), v467, *(&v467 + 1), v479, v480, v481, v482, v483, v484, v485, v486, v487, v488, v489, v490, v491[0], v491[1], v491[2], v491[3], v491[4], v491[5], v491[6], v491[7], v491[8], v492, v493, v494, *(&v494 + 1), v495, v496, v497, *(&v497 + 1), v498, v499, v500, v501, *__dst, *&__dst[8], *&__dst[16], *&__dst[24]);
                v330 = sub_100163ABC(v328, v329);
                v338 = sub_100003F2C(v330, v331, v332, v333, v334, v335, v336, v337, v380, v387, v394, v400, v405, v410, v415, v420, v425, v430, v436, v440, v449, v453, v462, v466, v474, v478, v479, v480, v481, v482, v483, v484, v485, v486, v487, v488, v489, v490, v491[0], v491[1], v491[2], v491[3], v491[4], v491[5], v491[6], v491[7], v491[8], v492, v493, v494, *(&v494 + 1), v495, v496, v497, *(&v497 + 1), v498, v499, v500, v501, *__dst, *&__dst[8], *&__dst[16], *&__dst[24]);
                sub_100163ABC(v338, v339);
                v31 = COERCE_DOUBLE(Data.InlineData.init(_:)());
                v220 = v388 & 0xF00000000000000 | v340 & 0xFFFFFFFFFFFFFFLL;
                v207 = v220;
                goto LABEL_313;
              }

              v233 = type metadata accessor for __DataStorage();
              v234 = *(v233 + 48);
              v235 = *(v233 + 52);
              v236 = swift_allocObject();
              v244 = sub_100003F2C(v236, v237, v238, v239, v240, v241, v242, v243, v376, v381, v389, v395, v401, v406, v411, v416, v421, v426, v431, *(&v431 + 1), v441, *(&v441 + 1), v454, *(&v454 + 1), v467, *(&v467 + 1), v479, v480, v481, v482, v483, v484, v485, v486, v487, v488, v489, v490, v491[0], v491[1], v491[2], v491[3], v491[4], v491[5], v491[6], v491[7], v491[8], v492, v493, v494, *(&v494 + 1), v495, v496, v497, *(&v497 + 1), v498, v499, v500, v501, *__dst, *&__dst[8], *&__dst[16], *&__dst[24]);
              if (v232 >= v246)
              {
                v341 = sub_100163ABC(v244, v245);
                v349 = sub_100003F2C(v341, v342, v343, v344, v345, v346, v347, v348, v378, v384, v392, v398, v403, v408, v413, v418, v423, v428, v434, v438, v447, v451, v460, v464, v472, v476, v479, v480, v481, v482, v483, v484, v485, v486, v487, v488, v489, v490, v491[0], v491[1], v491[2], v491[3], v491[4], v491[5], v491[6], v491[7], v491[8], v492, v493, v494, *(&v494 + 1), v495, v496, v497, *(&v497 + 1), v498, v499, v500, v501, *__dst, *&__dst[8], *&__dst[16], *&__dst[24]);
                sub_100163ABC(v349, v350);
                sub_100005FBC();
                v351 = __DataStorage.init(bytes:length:)();
                type metadata accessor for Data.RangeReference();
                v31 = COERCE_DOUBLE(swift_allocObject());
                *(*&v31 + 16) = 0;
                *(*&v31 + 24) = v232;
                v207 = v351 | 0x8000000000000000;
              }

              else
              {
                v247 = sub_100163ABC(v244, v245);
                v255 = sub_100003F2C(v247, v248, v249, v250, v251, v252, v253, v254, v378, v384, v392, v398, v403, v408, v413, v418, v423, v428, v434, v438, v447, v451, v460, v464, v472, v476, v479, v480, v481, v482, v483, v484, v485, v486, v487, v488, v489, v490, v491[0], v491[1], v491[2], v491[3], v491[4], v491[5], v491[6], v491[7], v491[8], v492, v493, v494, *(&v494 + 1), v495, v496, v497, *(&v497 + 1), v498, v499, v500, v501, *__dst, *&__dst[8], *&__dst[16], *&__dst[24]);
                sub_100163ABC(v255, v256);
                sub_100005FBC();
                *&v31 = v232 << 32;
                v207 = __DataStorage.init(bytes:length:)() | 0x4000000000000000;
              }
            }

            else
            {
              v316 = sub_100003F2C(v224, v225, v226, v227, v228, v229, v230, v231, v376, v381, v389, v395, v401, v406, v411, v416, v421, v426, v431, *(&v431 + 1), v441, *(&v441 + 1), v454, *(&v454 + 1), v467, *(&v467 + 1), v479, v480, v481, v482, v483, v484, v485, v486, v487, v488, v489, v490, v491[0], v491[1], v491[2], v491[3], v491[4], v491[5], v491[6], v491[7], v491[8], v492, v493, v494, *(&v494 + 1), v495, v496, v497, *(&v497 + 1), v498, v499, v500, v501, *__dst, *&__dst[8], *&__dst[16], *&__dst[24]);
              v318 = sub_100163ABC(v316, v317);
              v326 = sub_100003F2C(v318, v319, v320, v321, v322, v323, v324, v325, v379, v386, v393, v399, v404, v409, v414, v419, v424, v429, v435, v439, v448, v452, v461, v465, v473, v477, v479, v480, v481, v482, v483, v484, v485, v486, v487, v488, v489, v490, v491[0], v491[1], v491[2], v491[3], v491[4], v491[5], v491[6], v491[7], v491[8], v492, v493, v494, *(&v494 + 1), v495, v496, v497, *(&v497 + 1), v498, v499, v500, v501, *__dst, *&__dst[8], *&__dst[16], *&__dst[24]);
              sub_100163ABC(v326, v327);
              v31 = 0.0;
              v207 = 0xC000000000000000;
            }

            v220 = v385;
LABEL_313:
            sub_100007378(&v493);
LABEL_314:
            v352 = Data.hashValue.getter();
            sub_100014A40(*&v31, v207);
            v381 = v220;
            if (((v36 >> 60) & 3) != 0)
            {
              v353 = v36 & 0xCFFFFFFFFFFFFFFFLL;
              v354 = sub_1000190CC();
              sub_100163ABC(v354, v355);
            }

            else
            {
              v356 = sub_100046184(&qword_100217F20, &qword_1001A5520);
              v495 = v356;
              v496 = sub_100163BC8();
              v493 = *&v37;
              v357 = *(*sub_100007534(&v493, v356) + 16);
              if (v357)
              {
                if (v357 <= 0xE)
                {
                  v366 = sub_1000190CC();
                  sub_100163ABC(v366, v367);
                  v37 = COERCE_DOUBLE(Data.InlineData.init(_:)());
                  v353 = v376 & 0xF00000000000000 | v368 & 0xFFFFFFFFFFFFFFLL;
                  v376 = v353;
                }

                else
                {
                  v358 = type metadata accessor for __DataStorage();
                  v359 = *(v358 + 48);
                  v360 = *(v358 + 52);
                  swift_allocObject();
                  v361 = sub_1000190CC();
                  if (v357 >= v363)
                  {
                    sub_100163ABC(v361, v362);
                    sub_1000385F0();
                    v369 = __DataStorage.init(bytes:length:)();
                    type metadata accessor for Data.RangeReference();
                    v37 = COERCE_DOUBLE(swift_allocObject());
                    *(*&v37 + 16) = 0;
                    *(*&v37 + 24) = v357;
                    v353 = v369 | 0x8000000000000000;
                  }

                  else
                  {
                    sub_100163ABC(v361, v362);
                    sub_1000385F0();
                    *&v37 = v357 << 32;
                    v353 = __DataStorage.init(bytes:length:)() | 0x4000000000000000;
                  }
                }
              }

              else
              {
                v364 = sub_1000190CC();
                sub_100163ABC(v364, v365);
                v37 = 0.0;
                v353 = 0xC000000000000000;
              }

              sub_100007378(&v493);
            }

            v370 = Data.hashValue.getter();
            sub_100014A40(*&v37, v353);
            sub_100096480(&v506);
            sub_100096480(v505);
            v205 = v352 == v370;
LABEL_325:
            if (!v205)
            {
              return 0;
            }

            goto LABEL_327;
          case 7:
            if (BYTE8(v507) != 7 || v506 | v507 | *(&v506 + 1))
            {
              goto LABEL_331;
            }

            goto LABEL_211;
          default:
            sub_100096480(&v506);
            if (v20 || ((LOBYTE(v37) ^ LOBYTE(v31)) & 1) != 0)
            {
              return 0;
            }

            goto LABEL_327;
        }

        goto LABEL_327;
    }
  }
}

uint64_t sub_100177318(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t, uint64_t))
{
  String.hash(into:)();
  _s9SwiftAvro0B6SchemaV4hash4intoys6HasherVz_tF_0(a1, a4);

  return a6(a1, a5);
}

Swift::Int sub_10017739C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(char *))
{
  sub_100006A80();
  v6 = String.hash(into:)();
  v14 = sub_10000F30C(v6, v7, v8, v9, v10, v11, v12, v13, v26, v28);
  v16 = _s9SwiftAvro0B6SchemaV4hash4intoys6HasherVz_tF_0(v14, v15);
  v24 = sub_10001BDBC(v16, v17, v18, v19, v20, v21, v22, v23, v27, v29);
  a5(v24);
  return Hasher._finalize()();
}

Swift::Int sub_100177444(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(char *))
{
  v6 = *v4;
  v7 = v4[1];
  v9 = v4[2];
  v8 = v4[3];
  v10 = Hasher.init(_seed:)();
  v18 = sub_10000F30C(v10, v11, v12, v13, v14, v15, v16, v17, v20, v21);
  a4(v18);
  return Hasher._finalize()();
}

uint64_t AvroMap.description.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_100007A1C();
  sub_100006D34();
  _StringGuts.grow(_:)(31);

  sub_1000066DC();
  sub_10000BF70();
  v6._countAndFlagsBits = Dictionary.description.getter();
  String.append(_:)(v6);

  v7 = sub_10000470C();
  sub_100015BF0(v7);
  v11._countAndFlagsBits = AvroMapSchema.description.getter(v4, v3, a3);
  sub_100014CD8(v11);

  sub_100012FAC(v8);
  return v10;
}

uint64_t _s9SwiftAvro0B9PrimitiveV23__derived_struct_equalsySbAC_ACtFZ_0(uint64_t a1, unint64_t a2, uint64_t a3, char a4, uint64_t a5, unint64_t a6, uint64_t a7, char a8)
{
  switch(a4)
  {
    case 1:
      if (a8 != 1)
      {
        goto LABEL_29;
      }

      v10 = a1 == a5;
      goto LABEL_18;
    case 2:
      if (a8 != 2)
      {
        goto LABEL_29;
      }

      v10 = a1 == a5;
LABEL_18:
      v8 = v10;
      return v8 & 1;
    case 3:
      if (a8 != 3)
      {
        goto LABEL_29;
      }

      v9 = *&a1 == *&a5;
      goto LABEL_10;
    case 4:
      if (a8 != 4)
      {
        goto LABEL_29;
      }

      v9 = *&a1 == *&a5;
LABEL_10:
      v8 = v9;
      return v8 & 1;
    case 5:
      if (a8 != 5)
      {
        goto LABEL_29;
      }

      if (a1 != a5 || a2 != a6)
      {
        return sub_100008C48();
      }

LABEL_31:
      v8 = 1;
      return v8 & 1;
    case 6:
      if (a8 != 6)
      {
        goto LABEL_29;
      }

      return sub_1001778CC(a1, a2, a3, a5, a6);
    case 7:
      if (a8 == 7 && !(a5 | a7 | a6))
      {
        goto LABEL_31;
      }

      goto LABEL_29;
    default:
      if (a8)
      {
LABEL_29:
        v8 = 0;
      }

      else
      {
        v8 = a5 ^ a1 ^ 1;
      }

      return v8 & 1;
  }
}

void _s9SwiftAvro0B9PrimitiveV4hash4intoys6HasherVz_tF_0()
{
  sub_10000AA8C();
  switch(v1)
  {
    case 1:
      Hasher._combine(_:)(2uLL);
      v4 = v0;
      goto LABEL_16;
    case 2:
      Hasher._combine(_:)(3uLL);
      v2 = v0;
      goto LABEL_7;
    case 3:
      Hasher._combine(_:)(4uLL);
      if ((v0 & 0x7FFFFF) == 0 && (v0 & 0x7F800000) == 0)
      {
        v4 = 0;
      }

      else
      {
        v4 = v0;
      }

LABEL_16:
      Hasher._combine(_:)(v4);
      return;
    case 4:
      Hasher._combine(_:)(5uLL);
      if ((v0 & 0x7FFFFFFFFFFFFFFFLL) != 0)
      {
        v2 = v0;
      }

      else
      {
        v2 = 0;
      }

LABEL_7:
      Hasher._combine(_:)(v2);
      break;
    case 5:
      Hasher._combine(_:)(6uLL);
      sub_10000672C();

      String.hash(into:)();
      break;
    case 6:
      Hasher._combine(_:)(7uLL);
      sub_10000672C();

      sub_1001779A0();
      break;
    case 7:
      Hasher._combine(_:)(0);
      break;
    default:
      Hasher._combine(_:)(1uLL);
      Hasher._combine(_:)(v0 & 1);
      break;
  }
}

Swift::Int sub_1001777F8()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = *(v0 + 24);
  return sub_100177A9C();
}

void sub_10017781C()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = *(v0 + 24);
  _s9SwiftAvro0B9PrimitiveV4hash4intoys6HasherVz_tF_0();
}

uint64_t sub_10017785C(uint64_t a1, unint64_t a2)
{
  if (((a2 >> 60) & 3) != 0)
  {
    v2 = sub_1000041F8();
    sub_100014924(v2, v3);
  }

  else
  {

    sub_1001790EC(v4);
  }

  sub_1000041F8();
  v5 = Data.hashValue.getter();
  v6 = sub_1000041F8();
  sub_100014A40(v6, v7);
  return v5;
}

BOOL sub_1001778CC(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v6 = a1;
  if (((a2 >> 60) & 3) != 0)
  {
    v7 = a2 & 0xCFFFFFFFFFFFFFFFLL;
    sub_100014924(a1, a2 & 0xCFFFFFFFFFFFFFFFLL);
  }

  else
  {

    v6 = sub_1001790EC(v8);
    v7 = v9;
  }

  v10 = Data.hashValue.getter();
  sub_100014A40(v6, v7);
  if (((a5 >> 60) & 3) != 0)
  {
    v11 = sub_1000041F8();
    sub_100014924(v11, v12);
  }

  else
  {

    sub_1001790EC(v13);
  }

  sub_1000041F8();
  v14 = Data.hashValue.getter();
  v15 = sub_1000041F8();
  sub_100014A40(v15, v16);
  return v10 == v14;
}

void sub_1001779A0()
{
  sub_10000AA8C();
  if (((v0 >> 60) & 3) != 0)
  {
    v1 = sub_100007CD4();
    sub_100014924(v1, v2);
  }

  else
  {

    sub_1001790EC(v3);
  }

  sub_100007CD4();
  v4 = Data.hashValue.getter();
  v5 = sub_100007CD4();
  sub_100014A40(v5, v6);
  Hasher._combine(_:)(v4);
}

void sub_100177A1C()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1001779A0();
}

Swift::Int sub_100177A24()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  sub_1001779A0();
  return Hasher._finalize()();
}

Swift::Int sub_100177A9C()
{
  sub_100007A1C();
  sub_100006A80();
  _s9SwiftAvro0B9PrimitiveV4hash4intoys6HasherVz_tF_0();
  return Hasher._finalize()();
}

Swift::Int sub_100177B30(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(char *))
{
  v6 = *v4;
  v7 = v4[1];
  v8 = v4[2];
  v9 = *(v4 + 24);
  v10 = Hasher.init(_seed:)();
  v18 = sub_10000F30C(v10, v11, v12, v13, v14, v15, v16, v17, v20, v21);
  a4(v18);
  return Hasher._finalize()();
}

uint64_t AvroPrimitive.description.getter(char a1, uint64_t a2, uint64_t a3, char a4)
{
  result = 7104878;
  switch(a4)
  {
    case 1:
    case 2:
      result = dispatch thunk of CustomStringConvertible.description.getter();
      break;
    case 3:
      result = Float.description.getter();
      break;
    case 4:
      result = Double.description.getter();
      break;
    case 5:
      v9 = sub_1000041F8();
      sub_100163C88(v9, v10, v11, 5);
      result = sub_1000041F8();
      break;
    case 6:
      v6 = sub_1000041F8();
      sub_100163C88(v6, v7, v8, 6);
      result = String.init<A>(describing:)();
      break;
    case 7:
      return result;
    default:
      if (a1)
      {
        result = 1702195828;
      }

      else
      {
        result = 0x65736C6166;
      }

      break;
  }

  return result;
}

uint64_t AvroUnion.init(schema:value:)@<X0>(uint64_t a1@<X0>, const void *a2@<X1>, uint64_t *a3@<X8>)
{

  v6 = AvroValue.schema.getter();
  v7 = sub_10017398C(v6, a1);
  v9 = v8;

  if (v9)
  {
LABEL_6:
    sub_1000068B4();
    v13 = swift_allocObject();
    *(v13 + 16) = a1;
    v14 = v13 | 0x8000000000000000;
    v15 = AvroValue.schema.getter();
    sub_10017813C();
    sub_100004248();
    *v16 = v14;
    v16[1] = v15;
    swift_willThrow();
    return sub_100096480(a2);
  }

  if ((v7 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v7 < *(a1 + 16))
  {
    v11 = *(a1 + 8 * v7 + 32);

    v12 = sub_10015B364(a2, v11);

    if (v12)
    {
      *a3 = a1;
      result = memcpy(a3 + 1, a2, 0x41uLL);
      a3[10] = v7;
      return result;
    }

    goto LABEL_6;
  }

  __break(1u);
  return result;
}

void AvroUnion.hash(into:)(uint64_t a1)
{
  AvroUnionSchema.hash(into:)(a1, *v1);
  _s9SwiftAvro0B5ValueV4hash4intoys6HasherVz_tF_0(a1);
  Hasher._combine(_:)(*(v1 + 80));
}

Swift::Int AvroUnion.hashValue.getter()
{
  sub_100006A80();
  AvroUnionSchema.hash(into:)(v2, *v0);
  _s9SwiftAvro0B5ValueV4hash4intoys6HasherVz_tF_0(v2);
  Hasher._combine(_:)(*(v0 + 80));
  return Hasher._finalize()();
}

Swift::Int sub_100177F2C()
{
  Hasher.init(_seed:)();
  AvroUnion.hash(into:)(v1);
  return Hasher._finalize()();
}

unint64_t AvroUnion.description.getter()
{
  __dst[0] = 0;
  __dst[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(43);

  sub_1000066DC();
  v1 = memcpy(__dst, v0 + 1, 0x41uLL);
  v2._countAndFlagsBits = AvroValue.description.getter(v1);
  String.append(_:)(v2);

  v3._countAndFlagsBits = 0x3A7865646E69202CLL;
  v3._object = 0xE900000000000020;
  String.append(_:)(v3);
  v10 = v0[10];
  v4._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v4);

  v5._countAndFlagsBits = sub_10000470C();
  v5._object = 0xEA0000000000203ALL;
  String.append(_:)(v5);
  v6 = *v0;
  v7._countAndFlagsBits = Array.description.getter();
  String.append(_:)(v7);

  v8._countAndFlagsBits = 41;
  v8._object = 0xE100000000000000;
  String.append(_:)(v8);
  return 0xD000000000000011;
}

char *sub_1001780C8(char *a1, int64_t a2, char a3)
{
  result = sub_1001781F8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

unint64_t sub_1001780E8()
{
  result = qword_10021F858;
  if (!qword_10021F858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021F858);
  }

  return result;
}

unint64_t sub_10017813C()
{
  result = qword_10021F860;
  if (!qword_10021F860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021F860);
  }

  return result;
}

char *sub_1001781F8(char *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_100046184(&qword_10021F840, &qword_1001A5968);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      *(v10 + 2) = v8;
      *(v10 + 3) = 2 * ((v11 - 32) / 72);
      if (v5)
      {
LABEL_13:
        sub_10017246C((a4 + 32), v8, v10 + 32);
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = _swiftEmptyArrayStorage;
      if (result)
      {
        goto LABEL_13;
      }
    }

    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void sub_10017831C(const void *a1, uint64_t a2)
{
  v5 = a2 + 64;
  v4 = *(a2 + 64);
  v6 = *(a2 + 32);
  sub_100004154();
  v9 = v8 & v7;
  v11 = (v10 + 63) >> 6;

  v12 = 0;
  v13 = 0;
  if (v9)
  {
    while (1)
    {
      v14 = v13;
LABEL_6:
      v15 = __clz(__rbit64(v9)) | (v14 << 6);
      v16 = (*(a2 + 48) + 16 * v15);
      v18 = *v16;
      v17 = v16[1];
      memcpy(__dst, (*(a2 + 56) + 72 * v15), 0x41uLL);
      v22 = *&__dst[48];
      v23 = *&__dst[16];
      v20 = *&__dst[32];
      v21 = *__dst;
      v19 = __dst[64];

      sub_100163ABC(__dst, __src);
      if (!v17)
      {
        break;
      }

      v9 &= v9 - 1;
      *__src = v21;
      *&__src[16] = v23;
      *&__src[32] = v20;
      *&__src[48] = v22;
      __src[64] = v19;
      memcpy(__dst, a1, sizeof(__dst));
      String.hash(into:)();

      memcpy(v27, __src, sizeof(v27));
      sub_100163ABC(__src, v24);
      _s9SwiftAvro0B5ValueV4hash4intoys6HasherVz_tF_0(__dst);
      sub_100096480(__src);
      sub_100096480(__src);
      v12 ^= Hasher._finalize()();
      v13 = v14;
      if (!v9)
      {
        goto LABEL_3;
      }
    }

LABEL_9:

    Hasher._combine(_:)(v12);
  }

  else
  {
LABEL_3:
    while (1)
    {
      v14 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v14 >= v11)
      {
        goto LABEL_9;
      }

      v9 = *(v5 + 8 * v14);
      ++v13;
      if (v9)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
  }
}

unint64_t sub_1001784D8()
{
  result = qword_10021F868;
  if (!qword_10021F868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021F868);
  }

  return result;
}

unint64_t sub_100178530()
{
  result = qword_10021F870;
  if (!qword_10021F870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021F870);
  }

  return result;
}

unint64_t sub_100178588()
{
  result = qword_10021F878;
  if (!qword_10021F878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021F878);
  }

  return result;
}

unint64_t sub_1001785E0()
{
  result = qword_10021F880;
  if (!qword_10021F880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021F880);
  }

  return result;
}

unint64_t sub_10017865C()
{
  result = qword_10021F888;
  if (!qword_10021F888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021F888);
  }

  return result;
}

unint64_t sub_1001786B4()
{
  result = qword_10021F890;
  if (!qword_10021F890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021F890);
  }

  return result;
}

unint64_t sub_10017870C()
{
  result = qword_10021F898;
  if (!qword_10021F898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021F898);
  }

  return result;
}

unint64_t sub_100178770()
{
  result = qword_10021F8A0;
  if (!qword_10021F8A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021F8A0);
  }

  return result;
}

unint64_t sub_1001787C8()
{
  result = qword_10021F8A8;
  if (!qword_10021F8A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021F8A8);
  }

  return result;
}

unint64_t sub_100178820()
{
  result = qword_10021F8B0;
  if (!qword_10021F8B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021F8B0);
  }

  return result;
}

unint64_t sub_100178878()
{
  result = qword_10021F8B8;
  if (!qword_10021F8B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021F8B8);
  }

  return result;
}

unint64_t sub_1001788D0()
{
  result = qword_10021F8C0;
  if (!qword_10021F8C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021F8C0);
  }

  return result;
}

uint64_t sub_100178924(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7C && *(a1 + 16))
    {
      v2 = *a1 + 123;
    }

    else
    {
      v2 = (((*a1 >> 57) >> 4) | (8 * ((*a1 >> 57) & 8 | *a1 & 7))) ^ 0x7F;
      if (v2 >= 0x7B)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return v2 + 1;
}

uint64_t sub_100178978(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7B)
  {
    *result = a2 - 124;
    *(result + 8) = 0;
    if (a3 >= 0x7C)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7C)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 3) & 0xF | (16 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

uint64_t sub_1001789E0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

      return sub_10001BF0C(result, a2);
    }

    *(result + 16) = 0;
    if (a2)
    {
      return sub_10001BF0C(result, a2);
    }
  }

  return result;
}

uint64_t sub_100178A2C(uint64_t a1)
{
  if ((*(a1 + 24) & 7) == 7)
  {
    return (*a1 + 7);
  }

  else
  {
    return *(a1 + 24) & 7;
  }
}

uint64_t sub_100178A80(uint64_t result, int a2, int a3)
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

      return sub_10001BF0C(result, a2);
    }

    *(result + 32) = 0;
    if (a2)
    {
      return sub_10001BF0C(result, a2);
    }
  }

  return result;
}

uint64_t sub_100178AD8(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 88))
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

uint64_t sub_100178B18(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100178B78(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xF9 && *(a1 + 25))
    {
      v2 = *a1 + 248;
    }

    else
    {
      v3 = *(a1 + 24);
      if (v3 <= 7)
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

uint64_t sub_100178BB8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF8)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 249;
    if (a3 >= 0xF9)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF9)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = -a2;
    }
  }

  return result;
}

uint64_t sub_100178C00(uint64_t result, unsigned int a2)
{
  v2 = a2 - 7;
  if (a2 >= 7)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    LOBYTE(a2) = 7;
    *result = v2;
  }

  *(result + 24) = a2;
  return result;
}

uint64_t sub_100178C28(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 == 1 || !*(a1 + 24))
    {
      if ((~*(a1 + 8) & 0x3000000000000000) != 0)
      {
        v2 = -1;
      }

      else
      {
        v2 = 0;
      }
    }

    else
    {
      v2 = *a1 + 1;
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100178C68(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 1)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 2;
    if (a3 >= 2)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 2)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = xmmword_1001A5970;
      *(result + 16) = 0;
    }
  }

  return result;
}

uint64_t sub_100178CE4(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFC && *(a1 + 65))
    {
      v2 = *a1 + 251;
    }

    else
    {
      v3 = *(a1 + 64);
      if (v3 <= 4)
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

uint64_t sub_100178D24(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 - 252;
    if (a3 >= 0xFC)
    {
      *(result + 65) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
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

unint64_t sub_100178D94()
{
  result = qword_10021F8C8;
  if (!qword_10021F8C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021F8C8);
  }

  return result;
}

unint64_t sub_100178DEC()
{
  result = qword_10021F8D0;
  if (!qword_10021F8D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021F8D0);
  }

  return result;
}

unint64_t sub_100178E44()
{
  result = qword_10021F8D8;
  if (!qword_10021F8D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021F8D8);
  }

  return result;
}

unint64_t sub_100178E98()
{
  result = qword_10021F8E0;
  if (!qword_10021F8E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021F8E0);
  }

  return result;
}

void *sub_100178F64(void *a1)
{

  return memcpy(a1, v1, 0x41uLL);
}

uint64_t AvroPrimitive.get<A>()@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  switch(a4)
  {
    case 5:
      sub_100163C88(a1, a2, a3, 5);
      goto LABEL_8;
    case 6:
      sub_100163C88(a1, a2, a3, 6);
      if (((a2 >> 60) & 3) == 0)
      {
        sub_1001790EC(a1);
      }

      goto LABEL_8;
    case 7:

      return sub_1000051C0(a6, 1, 1, a5);
    default:
LABEL_8:
      v11 = swift_dynamicCast();
      return sub_1000051C0(a6, v11 ^ 1u, 1, a5);
  }
}

uint64_t sub_1001790EC(uint64_t a1)
{
  v7 = sub_100046184(&qword_100217F20, &qword_1001A5520);
  v8 = sub_100163BC8();
  v6[0] = a1;
  v2 = sub_100007534(v6, v7);
  sub_1000F891C(*v2 + 32, *v2 + 32 + *(*v2 + 16), &v5);
  v3 = v5;
  sub_100007378(v6);
  return v3;
}

uint64_t AvroSchema.canHold(_:)(unint64_t a1, unint64_t a2)
{
  if ((a2 & 0x8000000000000000) != 0)
  {
    v5 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);

    v6 = _s9SwiftAvro0B6SchemaV23__derived_struct_equalsySbAC_ACtFZ_0(a2, a1);
    if (v6)
    {

      return 1;
    }

    else
    {
      v9 = a1;
      __chkstk_darwin(v6);
      v8[2] = &v9;
      v7 = sub_100161250(sub_100163CE0, v8, v5);
    }

    return v7;
  }

  else
  {

    return _s9SwiftAvro0B6SchemaV23__derived_struct_equalsySbAC_ACtFZ_0(a2, a1);
  }
}

BOOL AvroSchema.canHold(all:)(uint64_t a1, unint64_t a2)
{
  v3 = *(a1 + 16);
  v4 = (a1 + 32);
  for (i = a2 & 0x1FFFFFFFFFFFFFFFLL; v3; --v3)
  {
    v6 = *v4;
    if ((a2 & 0x8000000000000000) != 0)
    {
      v8 = *(i + 16);

      v9 = _s9SwiftAvro0B6SchemaV23__derived_struct_equalsySbAC_ACtFZ_0(a2, v6);
      if (v9)
      {
      }

      else
      {
        v13 = v6;
        __chkstk_darwin(v9);
        v12[2] = &v13;
        v10 = sub_100161250(sub_100179530, v12, v8);

        if (!v10)
        {
          return v3 == 0;
        }
      }
    }

    else
    {

      v7 = _s9SwiftAvro0B6SchemaV23__derived_struct_equalsySbAC_ACtFZ_0(a2, v6);

      if ((v7 & 1) == 0)
      {
        return v3 == 0;
      }
    }

    ++v4;
  }

  return v3 == 0;
}

BOOL AvroSchema.canHold(nullable:)(uint64_t a1, unint64_t a2)
{
  sub_100046184(&qword_10021F680, &qword_1001A44F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100198F10;
  *(inited + 32) = a1;
  v5 = qword_10021F5B0;

  if (v5 != -1)
  {
    swift_once();
  }

  *(inited + 40) = static AvroSchema.null;

  v6 = AvroSchema.canHold(all:)(inited, a2);
  swift_setDeallocating();
  sub_1001794C8();
  return v6;
}

uint64_t sub_1001794C8()
{
  v1 = *(v0 + 16);
  swift_arrayDestroy();

  return _swift_deallocClassInstance(v0, 32, 7);
}

uint64_t sub_10017954C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  if (v4)
  {
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);
    v7 = *(a1 + 48);
    sub_10017C7E0(v5, v6, v7);
    v4 = 1;
  }

  else
  {
    v5 = 0;
    v6 = 0;
    v7 = -1;
  }

  *a2 = a1;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5;
  *(a2 + 24) = v6;
  *(a2 + 32) = v7;
}

uint64_t AvroSchemaEncoder.OutputFormatting.indentation.setter(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    *v1 = result;
  }

  return result;
}

uint64_t *(*AvroSchemaEncoder.OutputFormatting.indentation.modify(void *a1))(uint64_t *result, char a2)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_100179614;
}

uint64_t *sub_100179614(uint64_t *result, char a2)
{
  v2 = *result;
  if (a2)
  {
    if ((v2 & 0x8000000000000000) == 0)
    {
LABEL_5:
      *result[1] = v2;
      return result;
    }

    __break(1u);
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

Swift::Int AvroSchemaEncoder.encodeBytes(_:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for SchemaEncoder();
  result = sub_1001796E8(a1);
  if (!v2)
  {
    sub_1001797F4(result, a2);
    v7 = v6;

    return v7;
  }

  return result;
}

uint64_t sub_1001796E8(uint64_t a1)
{
  swift_allocObject();
  v3 = sub_10017A968();
  swift_beginAccess();
  v4 = *(v3[6] + 16);
  v5 = v3[2];

  sub_10017AA2C();
  sub_10017B870(v3, v4, v5);

  if (v1)
  {
  }

  else
  {

    swift_beginAccess();
    a1 = v3[5];
  }

  return a1;
}

void sub_1001797F4(Swift::Int a1, uint64_t a2)
{
  v4 = sub_10017A678(a1);
  sub_10006C9F0(0, v4 & ~(v4 >> 63), 0, _swiftEmptyArrayStorage);
  v6 = v5;
  sub_10017954C(a1, &v140);
  v7 = a2;
  v144 = v140;
  v8 = v141;
  v9 = v142;
  v10 = *(&v140 + 1);
  v138 = a2;
  v139 = v140;
  v136 = 0;
  v137 = v140 + 32;
  v135 = -a2;
  LOBYTE(v11) = v143;
  while (1)
  {
    if (v11 == 0xFF)
    {
LABEL_117:
      sub_10017C778(&v144);
      return;
    }

    v12 = *(v139 + 16);
    v13 = v8;
    v14 = v9;
    v15 = v136;
LABEL_4:
    v16 = v15;
    if (v10 == v12)
    {
      v8 = 0;
      v9 = 0;
      v11 = 255;
      v10 = v12;
      goto LABEL_9;
    }

    if ((v10 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v10 >= *(v139 + 16))
    {
      goto LABEL_121;
    }

    v17 = v10 + 1;
    v18 = v137 + 24 * v10;
    v11 = *(v18 + 16);
    v19 = *v18;
    v20 = *(v18 + 8);
    sub_10017C7E0(*v18, v20, *(v18 + 16));
    v9 = v20;
    v8 = v19;
    v7 = v138;
    v10 = v17;
LABEL_9:
    switch(v11)
    {
      case 1:
        if (v11 == 1 || v11 == 255)
        {
          if (v13)
          {
            v21 = 125;
          }

          else
          {
            v21 = 93;
          }

          v23 = *(v6 + 16);
          v22 = *(v6 + 24);
          v24 = v23 + 1;
          if (v23 >= v22 >> 1)
          {
            v27 = v9;
            v28 = v6;
            v29 = v8;
            sub_10006C9F0(v22 > 1, v23 + 1, 1, v28);
            v9 = v27;
            v8 = v29;
            v7 = v138;
            v6 = v30;
          }

          *(v6 + 16) = v24;
          *(v6 + v23 + 32) = v21;
          if (v7 < 1)
          {
            continue;
          }

          if (v11 == 255)
          {
            goto LABEL_117;
          }

          v25 = v16 - v7;
          if (__OFSUB__(v16, v7))
          {
            __break(1u);
LABEL_119:
            __break(1u);
            goto LABEL_120;
          }

          if (v25 < 0)
          {
            goto LABEL_119;
          }

          v26 = *(v6 + 24);
          if ((v23 + 2) > (v26 >> 1))
          {
            v31 = v9;
            v32 = v6;
            v33 = v8;
            sub_10006C9F0(v26 > 1, v23 + 2, 1, v32);
            v9 = v31;
            v8 = v33;
            v7 = v138;
            v6 = v34;
          }

          v15 = 0;
          *(v6 + 16) = v23 + 2;
          *(v6 + v24 + 32) = 10;
          v13 = v8;
          v14 = v9;
          if (v25)
          {
            v70 = v23 + 34;
            v71 = v135 + v16;
            do
            {
              v72 = *(v6 + 24);
              if (v70 - 32 >= v72 >> 1)
              {
                v73 = v9;
                v74 = v6;
                v75 = v8;
                sub_10006C9F0(v72 > 1, v70 - 31, 1, v74);
                v9 = v73;
                v8 = v75;
                v7 = v138;
                v6 = v76;
              }

              *(v6 + 16) = v70 - 31;
              *(v6 + v70++) = 32;
              --v71;
            }

            while (v71);
            goto LABEL_116;
          }

          goto LABEL_4;
        }

        if (v13)
        {
          v77 = 125;
        }

        else
        {
          v77 = 93;
        }

        v79 = *(v6 + 16);
        v78 = *(v6 + 24);
        v80 = v78 >> 1;
        v81 = v79 + 1;
        if (v78 >> 1 <= v79)
        {
          v118 = v9;
          v119 = v6;
          v120 = v8;
          sub_10006C9F0(v78 > 1, v79 + 1, 1, v119);
          v9 = v118;
          v8 = v120;
          v7 = v138;
          v6 = v121;
          v78 = *(v121 + 24);
          v80 = v78 >> 1;
        }

        *(v6 + 16) = v81;
        *(v6 + v79 + 32) = v77;
        v82 = v79 + 2;
        if (v80 < (v79 + 2))
        {
          v122 = v9;
          v123 = v8;
          sub_10006C9F0(v78 > 1, v79 + 2, 1, v6);
          v9 = v122;
          v8 = v123;
          v7 = v138;
          v6 = v124;
        }

        *(v6 + 16) = v82;
        *(v6 + v81 + 32) = 44;
        v136 = v16;
        if (v7 >= 1)
        {
          v83 = *(v6 + 24);
          if ((v79 + 3) > (v83 >> 1))
          {
            v129 = v9;
            v130 = v8;
            sub_10006C9F0(v83 > 1, v79 + 3, 1, v6);
            v9 = v129;
            v8 = v130;
            v7 = v138;
            v6 = v131;
          }

          *(v6 + 16) = v79 + 3;
          *(v6 + v82 + 32) = 10;
          if (v16 < 0)
          {
            goto LABEL_125;
          }

          v136 = 0;
          if (!v16)
          {
            continue;
          }

          v84 = v79 + 35;
          v85 = v16;
          do
          {
            v86 = *(v6 + 24);
            if (v84 - 32 >= v86 >> 1)
            {
              v87 = v9;
              v88 = v6;
              v89 = v8;
              sub_10006C9F0(v86 > 1, v84 - 31, 1, v88);
              v9 = v87;
              v8 = v89;
              v7 = v138;
              v6 = v90;
            }

            *(v6 + 16) = v84 - 31;
            *(v6 + v84++) = 32;
            --v85;
          }

          while (v85);
LABEL_78:
          v136 = v16;
        }

        break;
      case 2:
        if (v11 && v11 != 3)
        {
          goto LABEL_128;
        }

        v60 = v9;
        v61 = v8;
        v63 = *(v6 + 16);
        v62 = *(v6 + 24);
        if (v63 >= v62 >> 1)
        {
          sub_10006C9F0(v62 > 1, v63 + 1, 1, v6);
          v6 = v105;
        }

        *(v6 + 16) = v63 + 1;
        *(v6 + v63 + 32) = 34;
        sub_10017A59C(v13, v14);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_10006C9F0(0, *(v6 + 16) + 1, 1, v6);
          v6 = v106;
        }

        v9 = v60;
        v65 = *(v6 + 16);
        v64 = *(v6 + 24);
        v66 = v64 >> 1;
        v67 = v65 + 1;
        v7 = v138;
        if (v64 >> 1 <= v65)
        {
          sub_10006C9F0(v64 > 1, v65 + 1, 1, v6);
          v9 = v60;
          v7 = v138;
          v6 = v107;
          v64 = *(v107 + 24);
          v66 = v64 >> 1;
        }

        *(v6 + 16) = v67;
        *(v6 + v65 + 32) = 34;
        v68 = v65 + 2;
        if (v66 < (v65 + 2))
        {
          sub_10006C9F0(v64 > 1, v65 + 2, 1, v6);
          v9 = v60;
          v7 = v138;
          v6 = v108;
        }

        *(v6 + 16) = v68;
        *(v6 + v67 + 32) = 58;
        v136 = v16;
        v8 = v61;
        if (v7 < 1)
        {
          continue;
        }

        v69 = *(v6 + 24);
        if ((v65 + 3) > (v69 >> 1))
        {
          sub_10006C9F0(v69 > 1, v65 + 3, 1, v6);
          v9 = v60;
          v8 = v61;
          v7 = v138;
          v6 = v109;
        }

        *(v6 + 16) = v65 + 3;
        *(v6 + v68 + 32) = 32;
        goto LABEL_78;
      case 3:
        v35 = (v11 - 2) < 2 || v11 == 0;
        v133 = v8;
        v134 = v9;
        if (v35)
        {
          v37 = *(v6 + 16);
          v36 = *(v6 + 24);
          if (v37 >= v36 >> 1)
          {
            sub_10006C9F0(v36 > 1, v37 + 1, 1, v6);
            v6 = v114;
          }

          *(v6 + 16) = v37 + 1;
          *(v6 + v37 + 32) = 34;
          sub_10017A59C(v13, v14);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_10006C9F0(0, *(v6 + 16) + 1, 1, v6);
            v6 = v115;
          }

          v9 = v134;
          v39 = *(v6 + 16);
          v38 = *(v6 + 24);
          v40 = v38 >> 1;
          v41 = v39 + 1;
          v7 = v138;
          if (v38 >> 1 <= v39)
          {
            sub_10006C9F0(v38 > 1, v39 + 1, 1, v6);
            v9 = v134;
            v7 = v138;
            v6 = v116;
            v38 = *(v116 + 24);
            v40 = v38 >> 1;
          }

          *(v6 + 16) = v41;
          *(v6 + v39 + 32) = 34;
          v42 = v39 + 2;
          if (v40 < (v39 + 2))
          {
            sub_10006C9F0(v38 > 1, v39 + 2, 1, v6);
            v9 = v134;
            v7 = v138;
            v6 = v117;
          }

          *(v6 + 16) = v42;
          *(v6 + v41 + 32) = 44;
          v136 = v16;
          v8 = v133;
          if (v7 >= 1)
          {
            v43 = *(v6 + 24);
            if ((v39 + 3) > (v43 >> 1))
            {
              sub_10006C9F0(v43 > 1, v39 + 3, 1, v6);
              v8 = v133;
              v9 = v134;
              v7 = v138;
              v6 = v128;
            }

            *(v6 + 16) = v39 + 3;
            *(v6 + v42 + 32) = 10;
            if (v16 < 0)
            {
              goto LABEL_124;
            }

            v136 = 0;
            if (v16)
            {
              v44 = v39 + 35;
              v45 = v16;
              do
              {
                v46 = *(v6 + 24);
                if (v44 - 32 >= v46 >> 1)
                {
                  sub_10006C9F0(v46 > 1, v44 - 31, 1, v6);
                  v8 = v133;
                  v9 = v134;
                  v7 = v138;
                  v6 = v47;
                }

                *(v6 + 16) = v44 - 31;
                *(v6 + v44++) = 32;
                --v45;
              }

              while (v45);
              goto LABEL_78;
            }
          }
        }

        else
        {
          v92 = *(v6 + 16);
          v91 = *(v6 + 24);
          if (v92 >= v91 >> 1)
          {
            sub_10006C9F0(v91 > 1, v92 + 1, 1, v6);
            v6 = v125;
          }

          *(v6 + 16) = v92 + 1;
          *(v6 + v92 + 32) = 34;
          sub_10017A59C(v13, v14);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_10006C9F0(0, *(v6 + 16) + 1, 1, v6);
            v6 = v126;
          }

          v94 = *(v6 + 16);
          v93 = *(v6 + 24);
          v95 = v94 + 1;
          v7 = v138;
          v8 = v133;
          v9 = v134;
          if (v94 >= v93 >> 1)
          {
            sub_10006C9F0(v93 > 1, v94 + 1, 1, v6);
            v8 = v133;
            v9 = v134;
            v7 = v138;
            v6 = v127;
          }

          *(v6 + 16) = v95;
          *(v6 + v94 + 32) = 34;
          v136 = v16;
          if (v7 >= 1)
          {
            v25 = v16 - v7;
            if (__OFSUB__(v16, v7))
            {
              goto LABEL_126;
            }

            if (v25 < 0)
            {
              goto LABEL_127;
            }

            v96 = *(v6 + 24);
            if ((v94 + 2) > (v96 >> 1))
            {
              sub_10006C9F0(v96 > 1, v94 + 2, 1, v6);
              v8 = v133;
              v9 = v134;
              v7 = v138;
              v6 = v132;
            }

            v136 = 0;
            *(v6 + 16) = v94 + 2;
            *(v6 + v95 + 32) = 10;
            if (v25)
            {
              v97 = v94 + 34;
              v98 = v25;
              do
              {
                v99 = *(v6 + 24);
                if (v97 - 32 >= v99 >> 1)
                {
                  sub_10006C9F0(v99 > 1, v97 - 31, 1, v6);
                  v8 = v133;
                  v9 = v134;
                  v7 = v138;
                  v6 = v100;
                }

                *(v6 + 16) = v97 - 31;
                *(v6 + v97++) = 32;
                --v98;
              }

              while (v98);
LABEL_116:
              v136 = v25;
            }
          }
        }

        continue;
      default:
        if (v13)
        {
          v48 = 123;
        }

        else
        {
          v48 = 91;
        }

        v50 = *(v6 + 16);
        v49 = *(v6 + 24);
        v51 = v50 + 1;
        if (v50 >= v49 >> 1)
        {
          v101 = v9;
          v102 = v6;
          v103 = v8;
          sub_10006C9F0(v49 > 1, v50 + 1, 1, v102);
          v9 = v101;
          v8 = v103;
          v7 = v138;
          v6 = v104;
        }

        *(v6 + 16) = v51;
        *(v6 + v50 + 32) = v48;
        v136 = v16;
        if (v7 < 1)
        {
          continue;
        }

        v25 = v16 + v7;
        if (__OFADD__(v16, v7))
        {
          goto LABEL_122;
        }

        v52 = *(v6 + 24);
        if ((v50 + 2) > (v52 >> 1))
        {
          v110 = v9;
          v111 = v6;
          v112 = v8;
          sub_10006C9F0(v52 > 1, v50 + 2, 1, v111);
          v9 = v110;
          v8 = v112;
          v7 = v138;
          v6 = v113;
        }

        *(v6 + 16) = v50 + 2;
        *(v6 + v51 + 32) = 10;
        if (v25 < 0)
        {
          goto LABEL_123;
        }

        v136 = 0;
        if (!v25)
        {
          continue;
        }

        v53 = v50 + 34;
        v54 = v25;
        do
        {
          v55 = *(v6 + 24);
          if (v53 - 32 >= v55 >> 1)
          {
            v56 = v9;
            v57 = v6;
            v58 = v8;
            sub_10006C9F0(v55 > 1, v53 - 31, 1, v57);
            v9 = v56;
            v8 = v58;
            v7 = v138;
            v6 = v59;
          }

          *(v6 + 16) = v53 - 31;
          *(v6 + v53++) = 32;
          --v54;
        }

        while (v54);
        goto LABEL_116;
    }
  }

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
}

uint64_t AvroSchemaEncoder.encode(_:)(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for SchemaEncoder();
  v6 = a1;
  v7 = v5;
  v8 = sub_1001796E8(v6);
  if (!v2)
  {
    sub_1001797F4(v8, a2);
    v10 = v9;

    v11 = *(v10 + 16);
    v7 = static String._fromUTF8Repairing(_:)();
  }

  return v7;
}

Swift::Int _s9SwiftAvro0B13SchemaEncoderV16OutputFormattingV9hashValueSivg_0(Swift::UInt a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  return Hasher._finalize()();
}

Swift::Int sub_10017A424(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  Hasher.init(_seed:)();
  a4(v8, v6);
  return Hasher._finalize()();
}

unint64_t sub_10017A474()
{
  result = qword_10021F8E8;
  if (!qword_10021F8E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021F8E8);
  }

  return result;
}

unint64_t sub_10017A4CC()
{
  result = qword_10021F8F0;
  if (!qword_10021F8F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021F8F0);
  }

  return result;
}

void sub_10017A538(uint64_t a1)
{
  v3 = *v1;
  if (!swift_isUniquelyReferenced_nonNull_native() || a1 > *(v3 + 24) >> 1)
  {
    if (*(v3 + 16) > a1)
    {
      v4 = *(v3 + 16);
    }

    sub_100172208();
    v3 = v5;
  }

  *v1 = v3;
}

int64_t sub_10017A59C(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    v3 = String.UTF8View._foreignCount()();
  }

  else if ((a2 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v3 = a1 & 0xFFFFFFFFFFFFLL;
  }

  v4 = *(*v2 + 16);
  result = v4 + v3;
  if (__OFADD__(v4, v3))
  {
    __break(1u);
    goto LABEL_14;
  }

  sub_10017C710(result, 1);
  v6 = *v2;
  v7 = *(*v2 + 16);
  v8 = *(*v2 + 24) >> 1;
  result = _StringGuts.copyUTF8(into:)();
  if ((v9 & 1) == 0)
  {
    v10 = result;

    if (v10 >= v3)
    {
      if (v10 < 1)
      {
LABEL_11:
        *v2 = v6;
        return result;
      }

      v11 = *(v6 + 16);
      v12 = __OFADD__(v11, v10);
      v13 = v11 + v10;
      if (!v12)
      {
        *(v6 + 16) = v13;
        goto LABEL_11;
      }

      goto LABEL_15;
    }

LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
  }

  __break(1u);
  return result;
}

Swift::Int sub_10017A678(Swift::Int result)
{
  v1 = 0;
  v2 = (result + 48);
  v3 = *(result + 16) + 1;
  do
  {
    if (!--v3)
    {
      return v1;
    }

    v4 = *v2;
    if (v4 >= 2)
    {
      v6 = *(v2 - 2);
      v7 = *(v2 - 1);
      if (v4 == 2)
      {
        if ((v7 & 0x1000000000000000) != 0)
        {
          result = String.UTF8View._foreignCount()();
        }

        else if ((v7 & 0x2000000000000000) != 0)
        {
          result = HIBYTE(v7) & 0xF;
        }

        else
        {
          result = v6 & 0xFFFFFFFFFFFFLL;
        }

        v5 = result + 3;
        if (__OFADD__(result, 3))
        {
          goto LABEL_25;
        }
      }

      else
      {
        if ((v7 & 0x1000000000000000) != 0)
        {
          result = String.UTF8View._foreignCount()();
        }

        else if ((v7 & 0x2000000000000000) != 0)
        {
          result = HIBYTE(v7) & 0xF;
        }

        else
        {
          result = v6 & 0xFFFFFFFFFFFFLL;
        }

        v5 = result + 2;
        if (__OFADD__(result, 2))
        {
          goto LABEL_24;
        }
      }
    }

    else
    {
      v5 = 1;
    }

    v2 += 24;
    v8 = __OFADD__(v1, v5);
    v1 += v5;
  }

  while (!v8);
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_10017A738(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  switch(a3)
  {
    case 1:
      result = a6 == 1 && ((a4 ^ a1) & 1) == 0;
      break;
    case 2:
      if (a6 != 2)
      {
        goto LABEL_12;
      }

      goto LABEL_6;
    case 3:
      if (a6 == 3)
      {
LABEL_6:
        if (a1 == a4 && a2 == a5)
        {
          result = 1;
        }

        else
        {
          result = _stringCompareWithSmolCheck(_:_:expecting:)();
        }
      }

      else
      {
LABEL_12:
        result = 0;
      }

      break;
    default:
      if (a6)
      {
        result = 0;
      }

      else
      {
        result = ((a4 ^ a1) & 1) == 0;
      }

      break;
  }

  return result;
}

void sub_10017A7D4(uint64_t a1, char a2, uint64_t a3, char a4)
{
  switch(a4)
  {
    case 1:
      v5 = 1;
      goto LABEL_9;
    case 2:
      v6 = 2;
      goto LABEL_5;
    case 3:
      v6 = 3;
LABEL_5:
      Hasher._combine(_:)(v6);

      String.hash(into:)();
      break;
    default:
      v5 = 0;
LABEL_9:
      Hasher._combine(_:)(v5);
      Hasher._combine(_:)(a2 & 1);
      break;
  }
}

Swift::Int sub_10017A87C(char a1, uint64_t a2, char a3)
{
  Hasher.init(_seed:)();
  sub_10017A7D4(v7, a1, a2, a3);
  return Hasher._finalize()();
}

Swift::Int sub_10017A8F4()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  Hasher.init(_seed:)();
  sub_10017A7D4(v5, v1, v2, v3);
  return Hasher._finalize()();
}

void *sub_10017A968()
{
  type metadata accessor for CodingUserInfoKey();
  v0[3] = Dictionary.init(dictionaryLiteral:)();
  v0[4] = Dictionary.init(dictionaryLiteral:)();
  v0[6] = _swiftEmptyArrayStorage;
  v0[2] = _swiftEmptyArrayStorage;
  v0[5] = _swiftEmptyArrayStorage;
  swift_beginAccess();
  sub_10017A538(64);
  swift_endAccess();
  return v0;
}

uint64_t sub_10017AAB0(void (*a1)(uint64_t))
{
  swift_beginAccess();
  v3 = *(v1[6] + 16);
  v4 = v1[2];

  a1(v5);
  sub_10017B870(v1, v3, v4);
}

uint64_t sub_10017AB48()
{
  sub_100006550();
  swift_beginAccess();
  sub_100172904();
  v1 = *(v0[5] + 16);
  sub_1001729A8(v1);
  sub_100004720(v1 + 1);
  v4 = v3 + v1 * v2;
  *(v4 + 32) = xmmword_1001A3410;
  *(v4 + 48) = 0;
  v0[5] = v3;
  swift_endAccess();
  sub_100006550();
  swift_beginAccess();
  sub_1001728EC();
  v5 = *(v0[6] + 16);
  sub_100172990(v5);
  v6 = v0[6];
  *(v6 + 16) = v5 + 1;
  *(v6 + v5 + 32) = 1;
  v0[6] = v6;
  swift_endAccess();
  v8 = v0[2];
  type metadata accessor for KeyedContainer();

  swift_getWitnessTable();
  return KeyedEncodingContainer.init<A>(_:)();
}

uint64_t sub_10017AC88@<X0>(void *a1@<X8>)
{
  v2 = v1;
  sub_100006550();
  swift_beginAccess();
  sub_100172904();
  v4 = *(v1[5] + 16);
  sub_1001729A8(v4);
  v5 = v1[5];
  *(v5 + 16) = v4 + 1;
  v6 = v5 + 24 * v4;
  *(v6 + 32) = 0;
  *(v6 + 40) = 0;
  *(v6 + 48) = 0;
  v1[5] = v5;
  swift_endAccess();
  sub_100006550();
  swift_beginAccess();
  sub_1001728EC();
  v7 = *(v1[6] + 16);
  sub_100172990(v7);
  v8 = v1[6];
  *(v8 + 16) = v7 + 1;
  *(v8 + v7 + 32) = 0;
  v1[6] = v8;
  swift_endAccess();
  v9 = v1[2];
  a1[3] = &unk_100202CB0;
  a1[4] = sub_10017C5CC();
  *a1 = 0;
  a1[1] = v9;
  a1[2] = v2;
}

uint64_t sub_10017AD84@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + 16);
  a1[3] = &unk_100202D38;
  a1[4] = sub_10017BD24();
  *a1 = v3;
  a1[1] = v1;
}

uint64_t sub_10017ADE4(uint64_t a1, uint64_t a2)
{
  sub_100006550();
  swift_beginAccess();

  sub_100172904();
  v5 = *(*(v2 + 40) + 16);
  sub_1001729A8(v5);
  v6 = *(v2 + 40);
  *(v6 + 16) = v5 + 1;
  v7 = v6 + 24 * v5;
  *(v7 + 32) = a1;
  *(v7 + 40) = a2;
  *(v7 + 48) = 3;
  *(v2 + 40) = v6;
  return swift_endAccess();
}

uint64_t sub_10017AE80(uint64_t a1, uint64_t a2)
{
  v5 = dispatch thunk of CodingKey.stringValue.getter();
  v7 = v6;
  sub_100006550();
  swift_beginAccess();
  sub_100172904();
  v8 = *(*(v2 + 40) + 16);
  sub_1001729A8(v8);
  sub_100004720(v8 + 1);
  v11 = v10 + v8 * v9;
  *(v11 + 32) = v5;
  *(v11 + 40) = v7;
  sub_100008884(v11);
  return sub_10017ADE4(a1, a2);
}

uint64_t sub_10017AF34(unint64_t a1, uint64_t *a2)
{
  if (a1 >> 61 == 3)
  {
    v5 = *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
    v7[0] = *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    v7[1] = v5;
    v7[2] = *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x30);
    v8 = *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x40);
    sub_1000967A0(v7, v6);
    sub_10017B588(v7);
    return sub_100161354(v7);
  }

  else if (a1 >> 61)
  {
    v6[3] = *a2;
    v6[4] = sub_10017C9B4();
    v6[0] = a2;

    AvroSchema.encode(to:)(v6, a1);
    return sub_100007378(v6);
  }

  else
  {
    return sub_10017B398(*(a1 + 16));
  }
}

uint64_t sub_10017B028(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v31 = a4;
  v22 = *a2;
  v8 = *(a3 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(a1);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v22 - v13;
  v16 = __chkstk_darwin(v15);
  v17 = *(v8 + 16);
  v17(&v22 - v18, a1, v16);
  if ((swift_dynamicCast() & 1) == 0)
  {
    (v17)(v14, a1, a3);
    if (swift_dynamicCast())
    {
      return sub_10017B398(v23);
    }

    (v17)(v11, a1, a3);
    if (swift_dynamicCast())
    {
      v29[0] = v23;
      v29[1] = v24;
      v29[2] = v25;
      v30 = v26;
      sub_10017B588(v29);
      return sub_100161354(v29);
    }

    *(&v24 + 1) = v22;
    *&v25 = sub_10017C9B4();
    *&v23 = a2;

    dispatch thunk of Encodable.encode(to:)();
    return sub_100007378(&v23);
  }

  if (v23 >> 61 != 3)
  {
    if (!(v23 >> 61))
    {
      v19 = *(v23 + 16);

      sub_10017B398(v19);
    }

    *(&v24 + 1) = v22;
    *&v25 = sub_10017C9B4();
    *&v23 = a2;

    dispatch thunk of Encodable.encode(to:)();

    return sub_100007378(&v23);
  }

  v21 = *((v23 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
  v27[0] = *((v23 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
  v27[1] = v21;
  v27[2] = *((v23 & 0x1FFFFFFFFFFFFFFFLL) + 0x30);
  v28 = *((v23 & 0x1FFFFFFFFFFFFFFFLL) + 0x40);

  sub_1000967A0(v27, &v23);
  sub_10017B588(v27);
  if (v4)
  {
    sub_100161354(v27);
  }

  sub_100161354(v27);
}

uint64_t sub_10017B398(char a1)
{
  swift_beginAccess();
  if (*(*(v1 + 40) + 16))
  {
    v3 = sub_100163E7C(a1);
    v5 = v4;
    swift_beginAccess();
    sub_100172904();
    v6 = *(*(v1 + 40) + 16);
    sub_1001729A8(v6);
    v7 = *(v1 + 40);
    *(v7 + 16) = v6 + 1;
    v8 = v7 + 24 * v6;
    *(v8 + 32) = v3;
    *(v8 + 40) = v5;
    v9 = 3;
  }

  else
  {
    swift_beginAccess();
    sub_100172904();
    v10 = *(*(v1 + 40) + 16);
    sub_1001729A8(v10);
    v11 = *(v1 + 40);
    *(v11 + 16) = v10 + 1;
    v12 = v11 + 24 * v10;
    *(v12 + 32) = xmmword_1001A3410;
    *(v12 + 48) = 0;
    *(v1 + 40) = v11;
    sub_100172904();
    v13 = *(*(v1 + 40) + 16);
    sub_1001729A8(v13);
    v14 = *(v1 + 40);
    *(v14 + 16) = v13 + 1;
    v15 = v14 + 24 * v13;
    *(v15 + 32) = xmmword_1001A7760;
    *(v15 + 48) = 2;
    *(v1 + 40) = v14;
    v16 = sub_100163E7C(a1);
    v18 = v17;
    sub_100172904();
    v19 = *(*(v1 + 40) + 16);
    sub_1001729A8(v19);
    v20 = *(v1 + 40);
    *(v20 + 16) = v19 + 1;
    v21 = v20 + 24 * v19;
    *(v21 + 32) = v16;
    *(v21 + 40) = v18;
    *(v21 + 48) = 3;
    *(v1 + 40) = v20;
    sub_100172904();
    v22 = *(*(v1 + 40) + 16);
    sub_1001729A8(v22);
    v7 = *(v1 + 40);
    *(v7 + 16) = v22 + 1;
    v8 = v7 + 24 * v22;
    *(v8 + 32) = xmmword_1001A3410;
    v9 = 1;
  }

  *(v8 + 48) = v9;
  *(v1 + 40) = v7;
  return swift_endAccess();
}

uint64_t sub_10017B588(uint64_t a1)
{
  v3 = v1;
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  v7 = *v1;
  swift_beginAccess();
  sub_1000967A0(a1, v18);
  sub_10017C7F8(a1, v5, v6, &v19);
  swift_endAccess();
  v8 = *(&v19 + 1);
  if (!*(&v19 + 1))
  {
    *(&v20 + 1) = v7;
    *&v21 = sub_10017C9B4();
    *&v19 = v3;

    AvroRecordSchema.encode(to:)(&v19);
    return sub_100007378(&v19);
  }

  v27 = v2;
  v9 = v19;
  v23 = v19;
  v24 = v20;
  v25 = v21;
  v26 = v22;
  if (static AvroRecordSchema.__derived_struct_equals(_:_:)())
  {
    sub_10017CA08(v9, v8);
    *(&v20 + 1) = v7;
    *&v21 = sub_10017C9B4();
    *&v19 = v3;

    String.encode(to:)();
    return sub_100007378(&v19);
  }

  v11 = swift_allocObject();
  v12 = v24;
  *(v11 + 16) = v23;
  *(v11 + 32) = v12;
  *(v11 + 48) = v25;
  *(v11 + 64) = v26;
  v13 = v11 | 0x6000000000000000;
  v14 = swift_allocObject();
  v15 = *(a1 + 16);
  *(v14 + 16) = *a1;
  *(v14 + 32) = v15;
  *(v14 + 48) = *(a1 + 32);
  *(v14 + 64) = *(a1 + 48);
  v16 = v14 | 0x6000000000000000;
  sub_10017813C();
  swift_allocError();
  *v17 = v13;
  v17[1] = v16;
  swift_willThrow();
  return sub_1000967A0(a1, &v19);
}

uint64_t sub_10017B7AC()
{
  v1 = dispatch thunk of CodingKey.stringValue.getter();
  v3 = v2;
  sub_100006550();
  swift_beginAccess();
  sub_100172904();
  v4 = *(*(v0 + 40) + 16);
  sub_1001729A8(v4);
  sub_100004720(v4 + 1);
  v7 = v6 + v4 * v5;
  *(v7 + 32) = v1;
  *(v7 + 40) = v3;
  sub_100008884(v7);
  return sub_10017AA70();
}

void sub_10017B870(void *a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  while (1)
  {
    v6 = a1[6];
    v7 = *(v6 + 16);
    if (v7 <= a2)
    {
      v25 = a1[2];
      a1[2] = a3;

      return;
    }

    swift_beginAccess();
    if (!v7)
    {
      break;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    a1[6] = v6;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1001780B4(v6);
      v6 = v18;
    }

    v9 = *(v6 + 16);
    if (!v9)
    {
      goto LABEL_21;
    }

    v10 = v9 - 1;
    v11 = *(v6 + v10 + 32);
    *(v6 + 16) = v10;
    a1[6] = v6;
    swift_endAccess();
    if (v11)
    {
      swift_beginAccess();
      v12 = a1[5];
      v13 = swift_isUniquelyReferenced_nonNull_native();
      a1[5] = v12;
      if ((v13 & 1) == 0)
      {
        v19 = *(v12 + 16);
        sub_100172208();
        v12 = v20;
        a1[5] = v20;
      }

      v14 = *(v12 + 16);
      if (v14 >= *(v12 + 24) >> 1)
      {
        sub_100172208();
        v12 = v21;
      }

      *(v12 + 16) = v14 + 1;
      v15 = v12 + 24 * v14;
      *(v15 + 32) = xmmword_1001A3410;
    }

    else
    {
      swift_beginAccess();
      v12 = a1[5];
      v16 = swift_isUniquelyReferenced_nonNull_native();
      a1[5] = v12;
      if ((v16 & 1) == 0)
      {
        v22 = *(v12 + 16);
        sub_100172208();
        v12 = v23;
        a1[5] = v23;
      }

      v17 = *(v12 + 16);
      if (v17 >= *(v12 + 24) >> 1)
      {
        sub_100172208();
        v12 = v24;
      }

      *(v12 + 16) = v17 + 1;
      v15 = v12 + 24 * v17;
      *(v15 + 32) = 0;
      *(v15 + 40) = 0;
    }

    *(v15 + 48) = 1;
    a1[5] = v12;
    swift_endAccess();
  }

  __break(1u);
LABEL_21:
  __break(1u);
}

void *sub_10017BA8C()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[5];

  v5 = v0[6];

  return v0;
}

uint64_t sub_10017BACC()
{
  sub_10017BA8C();

  return _swift_deallocClassInstance(v0, 56, 7);
}

_BYTE *sub_10017BB00(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_10017BBF4()
{
  result = qword_10021F9B8;
  if (!qword_10021F9B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021F9B8);
  }

  return result;
}

unint64_t sub_10017BC4C()
{
  result = qword_10021F9C0;
  if (!qword_10021F9C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021F9C0);
  }

  return result;
}

unint64_t sub_10017BD24()
{
  result = qword_10021F9C8;
  if (!qword_10021F9C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021F9C8);
  }

  return result;
}

uint64_t sub_10017BD78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 8);
  v7 = *(a4 + 16);
  v6 = *(a4 + 24);
  return sub_10017AE80(a1, a2);
}

uint64_t sub_10017BDA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 8);
  v5 = *(a3 + 16);
  v6 = *(a3 + 24);
  return sub_10017B7AC();
}

uint64_t sub_10017C158(uint64_t result, uint64_t a2)
{
  if (__OFADD__(*v2, 1))
  {
    __break(1u);
  }

  else
  {
    ++*v2;
    v3 = v2[2];
    return sub_10017ADE4(result, a2);
  }

  return result;
}

uint64_t sub_10017C198()
{
  if (__OFADD__(*v0, 1))
  {
    __break(1u);
  }

  else
  {
    ++*v0;
    v1 = v0[2];
    return sub_10017AA70();
  }

  return result;
}

unint64_t sub_10017C5CC()
{
  result = qword_10021F9D0;
  if (!qword_10021F9D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021F9D0);
  }

  return result;
}

void *sub_10017C638(unint64_t a1, uint64_t a2, uint64_t a3, void *__src, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = memcpy((a5[7] + 72 * a1), __src, 0x41uLL);
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

unint64_t sub_10017C6AC(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  v6 = a5[7] + 56 * result;
  v7 = *(a4 + 16);
  *v6 = *a4;
  *(v6 + 16) = v7;
  *(v6 + 32) = *(a4 + 32);
  *(v6 + 48) = *(a4 + 48);
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

void sub_10017C710(int64_t a1, char a2)
{
  v5 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v5;
  if (!isUniquelyReferenced_nonNull_native || a1 > *(v5 + 24) >> 1)
  {
    if (*(v5 + 16) <= a1)
    {
      v7 = a1;
    }

    else
    {
      v7 = *(v5 + 16);
    }

    sub_10006C9F0(isUniquelyReferenced_nonNull_native, v7, a2 & 1, v5);
    *v2 = v8;
  }
}

uint64_t sub_10017C778(uint64_t a1)
{
  v2 = sub_100046184(&qword_10021F9D8, &qword_1001A7AA0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10017C7E0(uint64_t a1, uint64_t a2, char a3)
{
  if ((a3 & 0xFE) == 2)
  {
  }

  return result;
}

unint64_t sub_10017C7F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v9 = *v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v28 = *v4;
  v11 = sub_100005B74(a2, a3);
  v13 = v28[2];
  v14 = (v12 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_10;
  }

  v16 = v11;
  v17 = v12;
  sub_100046184(qword_10021F9E8, &qword_1001A7AA8);
  result = _NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v15);
  if (result)
  {
    result = sub_100005B74(a2, a3);
    if ((v17 & 1) == (v19 & 1))
    {
      v16 = result;
      goto LABEL_5;
    }

LABEL_10:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_5:
  if (v17)
  {
    v20 = v28[7] + 56 * v16;
    v21 = *v20;
    v22 = *(v20 + 8);
    v23 = *(v20 + 16);
    v24 = *(v20 + 24);
    v25 = *(v20 + 32);
    v26 = *(v20 + 48);
    v27 = *(a1 + 16);
    *v20 = *a1;
    *(v20 + 16) = v27;
    *(v20 + 32) = *(a1 + 32);
    *(v20 + 48) = *(a1 + 48);
  }

  else
  {
    sub_10017C6AC(v16, a2, a3, a1, v28);

    v21 = 0;
    v22 = 0;
    v23 = 0;
    v24 = 0;
    v26 = 0;
    v25 = 0uLL;
  }

  *a4 = v21;
  *(a4 + 8) = v22;
  *(a4 + 16) = v23;
  *(a4 + 24) = v24;
  *(a4 + 32) = v25;
  *(a4 + 48) = v26;
  *v4 = v28;
  return result;
}

unint64_t sub_10017C9B4()
{
  result = qword_10021F9E0;
  if (!qword_10021F9E0)
  {
    type metadata accessor for SchemaEncoder();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021F9E0);
  }

  return result;
}

uint64_t sub_10017CA08(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_10017CA8C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t BiomeSearchTablesProvider.__allocating_init(environment:feedbackConfig:feedbackStreamDescriptors:)()
{
  sub_1000088A4();
  swift_allocObject();
  return BiomeSearchTablesProvider.init(environment:feedbackConfig:feedbackStreamDescriptors:)();
}

uint64_t BiomeSearchTablesProvider.init(environment:feedbackConfig:feedbackStreamDescriptors:)()
{
  sub_1000088A4();
  v4 = type metadata accessor for BiomeSearchTablesConfig(0);
  v9 = v4;
  v10 = &off_100203138;
  v5 = sub_1000205C4(&v8);
  v6 = type metadata accessor for FeedbackStoreConfig();
  (*(*(v6 - 8) + 32))(v5, v1, v6);
  *(v5 + *(v4 + 20)) = v0;
  return BiomeTablesProvider.init(config:environment:)(&v8, v3, v2);
}

uint64_t BiomeTablesProvider.init(config:environment:)(__int128 *a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 56) = 0;
  *(v3 + 64) = 0;
  sub_100008C84(a1, v3 + 16);
  *(v3 + 72) = a2;
  *(v3 + 80) = a3;
  return v3;
}

uint64_t *BiomeTablesProvider.deinit()
{
  sub_100007378(v0 + 2);
  v1 = v0[7];

  v2 = v0[9];
  swift_unknownObjectRelease();
  return v0;
}

uint64_t BiomeSearchTablesProvider.__deallocating_deinit()
{
  v0 = BiomeTablesProvider.deinit();

  return _swift_deallocClassInstance(v0, 88, 7);
}

void *sub_10017CD54()
{
  v1 = type metadata accessor for FeedbackStreamDescriptor();
  v2 = sub_100003650(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  __chkstk_darwin(v2);
  sub_10000407C();
  v9 = (v7 - v8);
  __chkstk_darwin(v10);
  v12 = &v33 - v11;
  v13 = *(v0 + *(type metadata accessor for BiomeSearchTablesConfig(0) + 20));
  v14 = *(v13 + 16);
  if (!v14)
  {
    return _swiftEmptyArrayStorage;
  }

  v16 = *(v4 + 16);
  v15 = v4 + 16;
  v17 = (v13 + ((*(v15 + 64) + 32) & ~*(v15 + 64)));
  v37 = *(v15 + 56);
  v38 = v16;
  v18 = (v15 + 72);
  v36 = enum case for FeedbackStreamDescriptor.session(_:);
  v19 = (v15 - 8);
  v20 = _swiftEmptyArrayStorage;
  v33 = v15;
  do
  {
    v21 = v38;
    v38(v12, v17, v1);
    v21(v9, v12, v1);
    v22 = (*v18)(v9, v1);
    v23 = *v19;
    if (v22 == v36)
    {
      v23(v12, v1);
      v23(v9, v1);
    }

    else
    {
      v23(v9, v1);
      v24 = FeedbackStreamDescriptor.tableName.getter();
      v34 = v25;
      v35 = v24;
      v23(v12, v1);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v29 = v20[2];
        sub_10001B77C();
        v20 = v30;
      }

      v26 = v20[2];
      if (v26 >= v20[3] >> 1)
      {
        sub_10001B77C();
        v20 = v31;
      }

      v20[2] = v26 + 1;
      v27 = &v20[2 * v26];
      v28 = v34;
      v27[4] = v35;
      v27[5] = v28;
    }

    v17 += v37;
    --v14;
  }

  while (v14);
  return v20;
}

uint64_t sub_10017CFC4@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v72 = a3;
  v5 = type metadata accessor for BiomeStreamConfig();
  v6 = sub_100003650(v5);
  v73 = v7;
  v74 = v6;
  v9 = *(v8 + 64);
  __chkstk_darwin(v6);
  sub_10000407C();
  v75 = v10 - v11;
  __chkstk_darwin(v12);
  v14 = &v62 - v13;
  v15 = sub_100046184(&qword_10021FC98, &qword_1001A7F68);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v18 = &v62 - v17;
  v19 = type metadata accessor for FeedbackStreamDescriptor();
  v20 = sub_100003650(v19);
  v22 = v21;
  v24 = *(v23 + 64);
  __chkstk_darwin(v20);
  sub_10000407C();
  v71 = (v25 - v26);
  __chkstk_darwin(v27);
  v29 = &v62 - v28;
  __chkstk_darwin(v30);
  v32 = &v62 - v31;

  FeedbackStreamDescriptor.init(tableName:)();
  if (sub_100008D0C(v18, 1, v19) == 1)
  {
    sub_10017D840(v18);
    v76 = 0;
    v77 = 0xE000000000000000;
    _StringGuts.grow(_:)(23);

    v76 = 0xD000000000000015;
    v77 = 0x80000001001B3BA0;
    v33._countAndFlagsBits = a1;
    v33._object = a2;
    String.append(_:)(v33);
    v34 = v76;
    v35 = v77;
    sub_10017D8A8();
    swift_allocError();
    *v36 = v34;
    v36[1] = v35;
    return swift_willThrow();
  }

  else
  {
    (*(v22 + 32))(v32, v18, v19);
    v38 = v78;
    FeedbackStoreConfig.getConfig(forStream:)();
    if (v38)
    {
      return (*(v22 + 8))(v32, v19);
    }

    else
    {
      v39 = *(v22 + 104);
      LODWORD(v78) = enum case for FeedbackStreamDescriptor.session(_:);
      v70 = v39;
      v39(v29);
      FeedbackStoreConfig.getConfig(forStream:)();
      v69 = *(v22 + 8);
      v69(v29, v19);
      v40 = BiomeStreamConfig.tableName.getter();
      v67 = v41;
      v68 = v40;
      sub_100046184(&qword_10021FCA8, &qword_1001A7F70);
      v42 = swift_allocObject();
      v66 = v14;
      v43 = v42;
      *(v42 + 16) = xmmword_100198F10;
      v44 = FeedbackStreamDescriptor.rawValue.getter();
      v64 = v45;
      v65 = v44;
      v46 = BiomeStreamConfig.messageSchemaName.getter();
      v63 = v47;
      v48 = BiomeStreamConfig.storeConfig.getter();
      v49 = v64;
      v43[4] = v65;
      v43[5] = v49;
      v50 = v63;
      v43[6] = v46;
      v43[7] = v50;
      v43[8] = v48;
      v51 = v71;
      v70(v71, v78, v19);
      v78 = FeedbackStreamDescriptor.rawValue.getter();
      v53 = v52;
      v69(v51, v19);
      v54 = BiomeStreamConfig.messageSchemaName.getter();
      v56 = v55;
      v57 = BiomeStreamConfig.storeConfig.getter();
      v43[9] = v78;
      v43[10] = v53;
      v43[11] = v54;
      v43[12] = v56;
      v43[13] = v57;
      v58 = v72;
      v72[3] = &type metadata for BiomeSearchTablesConfig.TableConfig;
      v58[4] = &off_10021FCB0;
      v59 = v67;
      *v58 = v68;
      v58[1] = v59;
      v58[2] = v43;
      v60 = v74;
      v61 = *(v73 + 8);
      v61(v75, v74);
      v61(v66, v60);
      return (v69)(v32, v19);
    }
  }
}

double _s14SearchFeedback0A13SessionCursorC18timeFrameGuidelineSNySdGvpfi_0()
{
  if (qword_10021FA98 != -1)
  {
    swift_once();
  }

  return *&static BiomeStoreEnumerator.Constants.defaultTimeRange;
}

uint64_t variable initialization expression of BiomeDatabaseWriter.feedbackStreamWriters()
{
  type metadata accessor for SessionType();
  sub_100046184(&qword_10021FAB8, &qword_1001A7F00);
  sub_10017D560();

  return Dictionary.init(dictionaryLiteral:)();
}

unint64_t sub_10017D560()
{
  result = qword_100217588;
  if (!qword_100217588)
  {
    type metadata accessor for SessionType();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100217588);
  }

  return result;
}

uint64_t variable initialization expression of SessionFeedback.closingDate@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Date();

  return sub_1000051C0(a1, 1, 1, v2);
}

uint64_t variable initialization expression of WritableSessionDatabase.locker()
{
  type metadata accessor for Locker();
  v0 = swift_allocObject();
  v1 = swift_slowAlloc();
  *(v0 + 16) = v1;
  *v1 = 0;
  return v0;
}

uint64_t variable initialization expression of WritableSessionDatabase.sessions()
{
  type metadata accessor for SessionFeedback(0);

  return Dictionary.init(dictionaryLiteral:)();
}

void sub_10017D764()
{
  type metadata accessor for FeedbackStoreConfig();
  if (v0 <= 0x3F)
  {
    sub_10017D7E8();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_10017D7E8()
{
  if (!qword_10021FC68)
  {
    type metadata accessor for FeedbackStreamDescriptor();
    v0 = type metadata accessor for Array();
    if (!v1)
    {
      atomic_store(v0, &qword_10021FC68);
    }
  }
}

uint64_t sub_10017D840(uint64_t a1)
{
  v2 = sub_100046184(&qword_10021FC98, &qword_1001A7F68);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10017D8A8()
{
  result = qword_10021FCA0;
  if (!qword_10021FCA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021FCA0);
  }

  return result;
}

void *SearchSessionTableColumn.columnType.getter(char a1)
{
  v1 = &type metadata for Double;
  switch(a1)
  {
    case 1:
      v1 = &type metadata for Data;
      sub_10012F954();
      break;
    case 2:
    case 3:
    case 7:
      v1 = &type metadata for String;
      break;
    case 4:
      v1 = &type metadata for Bool;
      break;
    case 5:
    case 6:
      v1 = sub_100046184(&qword_1002181F0, &qword_10019C610);
      sub_10017D9FC();
      break;
    default:
      return v1;
  }

  return v1;
}

unint64_t sub_10017D9FC()
{
  result = qword_10021EDD0;
  if (!qword_10021EDD0)
  {
    sub_1000461CC(&qword_1002181F0, &qword_10019C610);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021EDD0);
  }

  return result;
}

uint64_t SearchSessionTableColumn.propertyName.getter(char a1)
{
  result = 0x536E6F6973736573;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000026;
      break;
    case 2:
      result = sub_100003F38();
      break;
    case 3:
      result = 0x6469754772657375;
      break;
    case 4:
      result = 0x656C62616E457564;
      break;
    case 5:
      result = 0x437972746E756F63;
      break;
    case 6:
      result = sub_100004730();
      break;
    case 7:
      result = 0x6F6973726556736FLL;
      break;
    default:
      return result;
  }

  return result;
}

SearchFeedback::SearchSessionTableColumn_optional __swiftcall SearchSessionTableColumn.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v2._countAndFlagsBits = rawValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100202D90, v2);

  if (v3 >= 8)
  {
    return 8;
  }

  else
  {
    return v3;
  }
}

uint64_t SearchSessionTableColumn.rawValue.getter(char a1)
{
  result = 29556;
  switch(a1)
  {
    case 1:
      result = 0x6E6F6973736573;
      break;
    case 2:
      result = sub_100003F38();
      break;
    case 3:
      result = 0x6975675F72657375;
      break;
    case 4:
      result = 0x6C62616E655F7564;
      break;
    case 5:
      result = 0x5F7972746E756F63;
      break;
    case 6:
      result = sub_100004730();
      break;
    case 7:
      result = 0x625F6D6574737973;
      break;
    default:
      return result;
  }

  return result;
}

SearchFeedback::SearchSessionTableColumn_optional sub_10017DCA8@<W0>(Swift::String *a1@<X0>, SearchFeedback::SearchSessionTableColumn_optional *a2@<X8>)
{
  result.value = SearchSessionTableColumn.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t sub_10017DCD8@<X0>(uint64_t *a1@<X8>)
{
  result = SearchSessionTableColumn.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

Swift::String __swiftcall SearchSessionTable.getModuleName()()
{
  v0 = 0x6F69737365735F70;
  v1 = 0xE90000000000006ELL;
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

uint64_t SearchSessionTable.__allocating_init(config:environment:)()
{
  sub_100007FB8();
  swift_allocObject();
  sub_1000092B4(v0, v3);
  v1 = sub_10017DE2C();
  return sub_100007E8C(v1);
}

uint64_t SearchSessionTable.init(config:environment:)()
{
  sub_100007FB8();
  sub_1000092B4(v0, v3);
  v1 = sub_10017DE2C();
  return sub_100007E8C(v1);
}

uint64_t sub_10017DE2C()
{
  sub_100007FB8();
  sub_1000092B4(v3, v1 + 48);
  *(v1 + 88) = v2;
  *(v1 + 96) = v0;
  v4 = SQLiteBaseVTab.init(style:)(0);
  return sub_100007E8C(v4);
}

uint64_t sub_10017DE88()
{
  v0 = SQLiteBaseVTab.deinit();
  sub_100007378((v0 + 48));
  v1 = *(v0 + 88);
  swift_unknownObjectRelease();
  return v0;
}

uint64_t SearchSessionTable.__deallocating_deinit()
{
  v0 = sub_10017DE88();

  return _swift_deallocClassInstance(v0, 104, 7);
}

uint64_t sub_10017DEF0()
{
  type metadata accessor for SearchSessionTable(0);
  sub_10000AB28();
  v2 = sub_100187F40();
  if (v1)
  {
    return v0;
  }

  sub_1000092B4(v2 + 48, v17);

  v3 = v18;
  v4 = v19;
  sub_100007534(v17, v18);
  (*(v4 + 16))(v16, *(v0 + 16), *(v0 + 24), v3, v4);
  v6 = v16[4];
  sub_100007534(v16, v16[3]);
  v7 = *(v6 + 32);
  v8 = sub_10000AB28();
  v9(v8, v6);
  swift_getAssociatedTypeWitness();
  sub_100046184(&qword_100220268, &qword_1001A8240);
  v10 = _arrayForceCast<A, B>(_:)();

  if (*(v10 + 16))
  {
    sub_1000092B4(v10 + 32, v15);

    v11 = v15[4];
    sub_100007534(v15, v15[3]);
    v12 = *(v11 + 8);
    v13 = sub_10000AB28();
    v0 = v14(v13, v11);
    sub_100007378(v15);
    sub_100007378(v16);
    sub_100007378(v17);
    return v0;
  }

  __break(1u);
  return result;
}

uint64_t SearchSessionConnection.checkPlanOrdering(_:)(uint64_t result)
{
  if (*(result + 16) == 1)
  {
    v1 = *(result + 24);
    if (!v1)
    {
      goto LABEL_10;
    }

    if (!*(v1 + 4))
    {
      v2 = *v1;
      if (v2 <= 7)
      {
        if ((v2 & 0x80000000) == 0)
        {
          if (!*(&off_100202E70 + v2 + 32))
          {
            *(result + 60) = 1;
          }

          return result;
        }

        __break(1u);
LABEL_10:
        __break(1u);
      }
    }
  }

  return result;
}

void SearchSessionConnection.checkPlanConstraints(_:)(unsigned int *a1)
{
  v1 = *a1;
  if ((v1 & 0x80000000) != 0)
  {
LABEL_42:
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
    return;
  }

  v3 = 0;
  v4 = 0;
  v5 = 0;
  v6 = 0;
  v7 = _swiftEmptyArrayStorage;
LABEL_3:
  v8 = v6;
  v9 = 8 * v6;
  v10 = 12 * v6;
  while (v1 != v8)
  {
    if (v8 >= v1)
    {
      __break(1u);
LABEL_39:
      __break(1u);
      goto LABEL_40;
    }

    if (v8 == 0x7FFFFFFF)
    {
      goto LABEL_39;
    }

    v11 = *(a1 + 1);
    if (!v11)
    {
      goto LABEL_45;
    }

    v12 = (v11 + v10);
    v13 = *v12;
    if (v13 <= 7)
    {
      if ((v13 & 0x80000000) != 0)
      {
        goto LABEL_41;
      }

      v14 = *(&off_100202EC0 + v13 + 32);
      if ((v14 - 2) >= 6)
      {
        v15 = *(v12 + 5);
        if (v14)
        {
          if (!*(v12 + 5))
          {

            return;
          }
        }

        else if (*(v12 + 5))
        {
          v16 = *(v12 + 4);
          HIDWORD(v17) = v16 - 4;
          LODWORD(v17) = v16 - 4;
          switch((v17 >> 2))
          {
            case 0u:
            case 7u:
              v18 = v5;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                goto LABEL_26;
              }

              v3 = 1;
              break;
            case 1u:
            case 3u:
              v18 = v5;
              v19 = v3;
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v3 = v19;
              v4 = 1;
              if (isUniquelyReferenced_nonNull_native)
              {
                v4 = 1;
              }

              else
              {
LABEL_26:
                v31 = v7[2];
                sub_1000088BC();
                v33 = v7;
                v35 = v34;
                sub_10017EDF8(0, v32 + 1, 1, v33, &qword_100216160, &qword_10019A598, v36);
                v3 = v35;
                v7 = v37;
              }

              break;
            default:
              goto LABEL_11;
          }

          v21 = v18;
          v23 = v7[2];
          v22 = v7[3];
          v24 = v23 + 1;
          if (v23 >= v22 >> 1)
          {
            v28 = v7;
            v45 = v21;
            v29 = v3;
            sub_10017EDF8(v22 > 1, v23 + 1, 1, v28, &qword_100216160, &qword_10019A598, sub_100117CA8);
            v24 = v23 + 1;
            v3 = v29;
            v21 = v45;
            v7 = v30;
          }

          v7[2] = v24;
          *(v7 + v23 + 32) = v16;
          v25 = __OFADD__(v21, 1);
          v5 = v21 + 1;
          if (v25)
          {
            goto LABEL_44;
          }

          v26 = *(a1 + 4);
          if (!v26)
          {
            goto LABEL_47;
          }

          v6 = v8 + 1;
          v27 = v26 + v9;
          *v27 = v5;
          *(v27 + 4) = 1;
          goto LABEL_3;
        }
      }
    }

LABEL_11:
    v9 += 8;
    v10 += 12;
    ++v8;
  }

  *(a1 + 8) = *(&off_100202EE8 + v4 + v3 + 4);
  v38 = v7[2];
  if (v38 > 0x7FFFFFFE)
  {
    goto LABEL_43;
  }

  v39 = v38 + 1;
  v40 = sqlite3_malloc(v38 + 1);
  if (!v40)
  {
    goto LABEL_46;
  }

  v47 = v40;
  *(a1 + 6) = v40;
  if (v38)
  {
    v46 = v38 + 1;
    sub_10017EFF8(0, v38, 0);
    v41 = 32;
    while (1)
    {
      v42 = *(v7 + v41);
      if (v42 < 0)
      {
        break;
      }

      v44 = _swiftEmptyArrayStorage[2];
      v43 = _swiftEmptyArrayStorage[3];
      if (v44 >= v43 >> 1)
      {
        sub_10017EFF8((v43 > 1), v44 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v44 + 1;
      *(&_swiftEmptyArrayStorage[4] + v44) = v42;
      ++v41;
      if (!--v38)
      {

        v39 = v46;
        goto LABEL_37;
      }
    }

LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

LABEL_37:
  sub_10017F018(&off_100202F20);
  memcpy(v47, &_swiftEmptyArrayStorage[4], v39);

  a1[14] = 1;
}

uint64_t sub_10017E59C(uint64_t a1, int a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7)
{
  *(v7 + 40) = 100;
  sub_100046184(a4, a5);
  v12 = swift_dynamicCastClass();
  if (v12)
  {
    if (a2 == 3)
    {
      return SQLiteBaseVTab.Connection.init(_:argc:argv:)(v12, 3, a3);
    }

    v14 = 1;
  }

  else
  {
    v14 = 2;
  }

  sub_10017F550();
  swift_allocError();
  *v15 = v14;
  swift_willThrow();

  sub_100046184(a6, a7);
  return swift_deallocPartialClassInstance();
}

uint64_t SearchFeedbackConnection.__deallocating_deinit()
{
  v1 = *(v0 + 24);

  swift_weakDestroy();

  return _swift_deallocClassInstance(v0, 48, 7);
}

double *sub_10017E6CC()
{
  swift_allocObject();
  sub_10000AB28();
  return sub_10017E714();
}

double *sub_10017E714()
{
  v2 = v0;
  if (qword_10021FA98 != -1)
  {
    swift_once();
  }

  *(v0 + 72) = static BiomeStoreEnumerator.Constants.defaultTimeRange;
  type metadata accessor for SearchSessionConnection(0);
  if (!swift_dynamicCastClass())
  {
    sub_10017F550();
    swift_allocError();
    *v8 = 2;
    swift_willThrow();
    goto LABEL_7;
  }

  v3 = sub_100187FEC();
  if (v1)
  {
LABEL_7:

    type metadata accessor for SearchSessionCursor(0);
    swift_deallocPartialClassInstance();
    return v2;
  }

  v5 = v3;
  v6 = v4;
  sub_100006D74();
  v10 = sub_100188078(v7);
  v12 = v11;
  ObjectType = swift_getObjectType();
  (*(v6 + 8))(ObjectType, v6);
  v28 = v5;
  v15 = v14;
  v16 = swift_getObjectType();
  (*(v15 + 40))(v27, v10, v12, v16, v15);
  v17 = v28;
  swift_unknownObjectRelease();

  sub_100006D74();
  *(v0 + 72) = sub_10018811C();
  *(v0 + 80) = v18;
  sub_100006D74();
  v19 = sub_10017DEF0();
  v21 = v20;
  sub_100006D74();
  v23 = sub_1001881AC(v22);
  v24 = v2[9];
  v25 = v2[10];
  sub_1000092B4(v27, v26);
  type metadata accessor for SessionEnumerator();
  swift_allocObject();
  swift_unknownObjectRetain();
  *(v2 + 8) = sub_100180D70(v19, v21, v23, v17, v6, v26, v24, v25);

  v2 = sub_10018823C();
  sub_100007378(v27);

  swift_unknownObjectRelease();
  return v2;
}