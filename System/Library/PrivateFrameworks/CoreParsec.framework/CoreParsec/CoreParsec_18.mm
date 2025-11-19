uint64_t ByteBuffer.writeData(_:)(uint64_t a1, unint64_t a2)
{
  Data.append(_:)();
  result = 0;
  switch(a2 >> 62)
  {
    case 1uLL:
      if (__OFSUB__(HIDWORD(a1), a1))
      {
        __break(1u);
        goto LABEL_8;
      }

      result = HIDWORD(a1) - a1;
      break;
    case 2uLL:
      v6 = *(a1 + 16);
      v5 = *(a1 + 24);
      result = v5 - v6;
      if (__OFSUB__(v5, v6))
      {
LABEL_8:
        __break(1u);
      }

      break;
    case 3uLL:
      return result;
    default:
      result = BYTE6(a2);
      break;
  }

  return result;
}

Swift::Int __swiftcall ByteBuffer.writeString(_:)(Swift::String a1)
{
  v1 = type metadata accessor for String.Encoding();
  sub_100003A6C();
  v3 = v2;
  v5 = *(v4 + 64);
  __chkstk_darwin(v6);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static String.Encoding.utf8.getter();
  String.data(using:allowLossyConversion:)();
  (*(v3 + 8))(v8, v1);
  v9 = sub_100007CD4();
  v11 = ByteBuffer.writeData(_:)(v9, v10);
  v12 = sub_100007CD4();
  sub_100014A40(v12, v13);
  return v11;
}

uint64_t ByteBuffer.writeInteger<A>(_:endianness:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_100003A6C();
  v6 = v5;
  v8 = *(v7 + 64);
  __chkstk_darwin(v9);
  v11 = v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  ByteBuffer._toEndianness<A>(value:endianness:)(v13, v12 & 1);
  v21 = v3;
  sub_1001658A8(v11, sub_100166910, v20, a3, &type metadata for Never, &type metadata for Int, &protocol witness table for Never, v14);
  v15 = *(v6 + 8);
  v16 = sub_100003674();
  v17(v16);
  return v19[1];
}

uint64_t sub_100165840@<X0>(_BYTE *a1@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
{
  v4 = sub_100172B5C(a1, a2);
  if (v4[2])
  {
    Data._Representation.append(contentsOf:)();
    v5 = v4[2];
  }

  else
  {
    v5 = 0;
  }

  *a3 = v5;
  return result;
}

uint64_t sub_1001658A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = *(a5 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(a1);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = v17(v13, v13 + *(*(v16 - 8) + 64), v15);
  if (v8)
  {
    return (*(v11 + 32))(a8, v15, a5);
  }

  return result;
}

char *sub_10016599C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = _swiftEmptyArrayStorage;
  if (!a1)
  {
    return v4;
  }

  v6 = a4 - a3;
  if (a4 == a3)
  {
    return v4;
  }

  v4 = sub_100172D04(a4 - a3, 0);
  result = sub_1001676B0(v4 + 4, v6, (a3 + a1), v6);
  if (v9 == v6)
  {
    return v4;
  }

  __break(1u);
  return result;
}

uint64_t sub_100165A20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, char a8)
{
  __dst = 0;
  if (a1)
  {
    memcpy(&__dst, (a1 + a3), a4 - a3);
    v11 = __dst;
  }

  else
  {
    v11 = 0;
  }

  sub_100014A40(a5, a6);
  LODWORD(v12) = bswap32(v11);
  if (a8)
  {
    return v11;
  }

  else
  {
    return v12;
  }
}

unint64_t sub_100165AE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, char a8)
{
  v14 = 0;
  if (a1)
  {
    memcpy(&v14, (a1 + a3), a4 - a3);
    v11 = v14;
  }

  else
  {
    v11 = 0;
  }

  sub_100014A40(a5, a6);
  v12 = bswap64(v11);
  if (a8)
  {
    return v11;
  }

  else
  {
    return v12;
  }
}

Swift::Int ByteBuffer.hashValue.getter(uint64_t a1, uint64_t a2, Swift::UInt a3)
{
  Hasher.init(_seed:)();
  Data.hash(into:)();
  Hasher._combine(_:)(a3);
  return Hasher._finalize()();
}

Swift::Int sub_100165C94()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  Hasher.init(_seed:)();
  ByteBuffer.hash(into:)(v5, v1, v2, v3);
  return Hasher._finalize()();
}

uint64_t ByteBufferView._buffer.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = sub_100007CD4();
  sub_100014924(v4, v5);
  return sub_100007CD4();
}

uint64_t ByteBufferView._buffer.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_100014A40(*v3, v3[1]);
  *v3 = a1;
  v3[1] = a2;
  v3[2] = a3;
  return result;
}

uint64_t ByteBufferView._range.getter()
{
  result = *(v0 + 24);
  v2 = *(v0 + 32);
  return result;
}

uint64_t ByteBufferView._range.setter(uint64_t result, uint64_t a2)
{
  *(v2 + 24) = result;
  *(v2 + 32) = a2;
  return result;
}

uint64_t ByteBufferView.init(buffer:range:)@<X0>(uint64_t result@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  if (a4 < 0)
  {
    __break(1u);
  }

  else
  {
    v6 = 0;
    switch(a2 >> 62)
    {
      case 1uLL:
        LODWORD(v6) = HIDWORD(result) - result;
        if (__OFSUB__(HIDWORD(result), result))
        {
          goto LABEL_11;
        }

        v6 = v6;
        break;
      case 2uLL:
        v8 = *(result + 16);
        v7 = *(result + 24);
        v9 = __OFSUB__(v7, v8);
        v6 = v7 - v8;
        if (v9)
        {
          goto LABEL_12;
        }

        break;
      case 3uLL:
        break;
      default:
        v6 = BYTE6(a2);
        break;
    }

    if (v6 >= a5)
    {
      *a6 = result;
      a6[1] = a2;
      a6[2] = a3;
      a6[3] = a4;
      a6[4] = a5;
      return result;
    }
  }

  __break(1u);
LABEL_11:
  __break(1u);
LABEL_12:
  __break(1u);
  return result;
}

uint64_t ByteBufferView.withUnsafeBytes<A>(_:)()
{
  v1 = *v0;
  v2 = v0[1];
  return ByteBuffer.withUnsafeBytes<A>(_:)();
}

char *sub_100165E78(char *result, uint64_t a2, void *(*a3)(void *__return_ptr, char *, char *), uint64_t a4, uint64_t a5)
{
  if (!result)
  {
    goto LABEL_7;
  }

  v8 = *(a5 + 24);
  v9 = *(a5 + 32);
  v10 = __OFSUB__(v9, v8);
  v11 = v9 - v8;
  if (v10)
  {
    __break(1u);
LABEL_7:
    __break(1u);
    return result;
  }

  v12[4] = v6;
  v12[5] = v7;
  result = a3(v12, &result[v8], &result[v8 + v11]);
  if (!v5)
  {
    return v12[0];
  }

  return result;
}

uint64_t sub_100165EDC(uint64_t result, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t), uint64_t a4, uint64_t a5)
{
  if (result)
  {
    v6 = *(a5 + 24);
    v5 = *(a5 + 32);
    v7 = __OFSUB__(v5, v6);
    v8 = v5 - v6;
    if (!v7)
    {
      return a3(result + v6, result + v6 + v8);
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

Swift::Int __swiftcall ByteBufferView.index(after:)(Swift::Int after)
{
  v1 = __OFADD__(after, 1);
  result = after + 1;
  if (v1)
  {
    __break(1u);
  }

  return result;
}

uint64_t ByteBufferView.subscript.getter(uint64_t result)
{
  if (v1[3] > result || v1[4] <= result)
  {
    __break(1u);
  }

  else
  {
    v3 = v1[2];
    if (v3 <= result)
    {
      return sub_100164C10(*v1, v1[1], v3, result);
    }
  }

  __break(1u);
  return result;
}

uint64_t ByteBufferView.subscript.getter@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v5 = *v3;
    v6 = *(v3 + 8);
    v7 = *(v3 + 8);
    v9 = result;
    v10 = 0;
    switch(v7 >> 62)
    {
      case 1uLL:
        if (__OFSUB__(HIDWORD(v5), v5))
        {
          goto LABEL_12;
        }

        v10 = HIDWORD(v5) - v5;
        goto LABEL_7;
      case 2uLL:
        v12 = *(v5 + 16);
        v11 = *(v5 + 24);
        v10 = v11 - v12;
        if (__OFSUB__(v11, v12))
        {
          goto LABEL_13;
        }

LABEL_7:
        v13 = *(v3 + 8);
        result = sub_100166950(v3, v14);
        v6 = v13;
        break;
      case 3uLL:
        break;
      default:
        v10 = BYTE6(v7);
        break;
    }

    if (v10 >= a2)
    {
      *a3 = v5;
      *(a3 + 8) = v6;
      *(a3 + 24) = v9;
      *(a3 + 32) = a2;
      return result;
    }
  }

  __break(1u);
LABEL_12:
  __break(1u);
LABEL_13:
  __break(1u);
  return result;
}

uint64_t ByteBufferView.withContiguousStorageIfAvailable<A>(_:)@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  result = ByteBufferView.withUnsafeBytes<A>(_:)();
  if (!v2)
  {
    return sub_1000051C0(a2, 0, 1, a1);
  }

  return result;
}

uint64_t sub_100166190@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t (*a5)(uint64_t, uint64_t, uint64_t)@<X4>, uint64_t a6@<X8>)
{
  result = a5(a3, a1, a2);
  if ((v9 & 1) == 0 && (v10 = *(a4 + 24), v11 = __OFADD__(result, v10), result += v10, v11))
  {
    __break(1u);
  }

  else
  {
    *a6 = result;
    *(a6 + 8) = v9 & 1;
  }

  return result;
}

uint64_t sub_1001661FC(unsigned __int8 a1, uint64_t a2, uint64_t a3)
{
  if (!a2 || a3 == a2)
  {
    return 0;
  }

  v3 = a1;
  result = a3 - a2;
  while (!__OFSUB__(result--, 1))
  {
    if (result < 0 || result >= a3 - a2)
    {
      goto LABEL_12;
    }

    if (*(a2 + result) == v3 || !result)
    {
      return result;
    }
  }

  __break(1u);
LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_100166254(uint64_t a1, uint64_t a2)
{
  v3 = __OFADD__(a1, a2);
  result = a1 + a2;
  if (v3)
  {
    __break(1u);
LABEL_8:
    __break(1u);
    return result;
  }

  if (result < *(v2 + 24) || *(v2 + 32) < result)
  {
    goto LABEL_8;
  }

  return result;
}

uint64_t sub_100166278(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 24);
  v5 = *(v3 + 32);
  if (v5 < a3 || v4 > a3 || v4 > result || v5 < result)
  {
    __break(1u);
    goto LABEL_28;
  }

  v9 = a3 - result;
  if (__OFSUB__(a3, result))
  {
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
    return result;
  }

  if (a2 < 1)
  {
    if (v9 <= 0 && v9 > a2)
    {
      return 0;
    }
  }

  else if ((v9 & 0x8000000000000000) == 0 && v9 < a2)
  {
    return 0;
  }

  v11 = __OFADD__(result, a2);
  result += a2;
  if (v11)
  {
    goto LABEL_29;
  }

  if (result < v4 || v5 < result)
  {
    goto LABEL_30;
  }

  return result;
}

uint64_t sub_1001662F0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *v2;
  v6 = v2[1];
  v7 = *(v2 + 4);
  result = sub_100166338(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_100166338(uint64_t a1)
{
  v2 = __OFSUB__(a1, 1);
  result = a1 - 1;
  if (v2)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    return result;
  }

  if (result < *(v1 + 24) || result >= *(v1 + 32))
  {
    goto LABEL_9;
  }

  return result;
}

uint64_t *sub_10016635C(uint64_t *result)
{
  v2 = *result - 1;
  if (__OFSUB__(*result, 1))
  {
    __break(1u);
  }

  else if (v2 < *(v1 + 32) && v2 >= *(v1 + 24))
  {
    *result = v2;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_100166388@<X0>(uint64_t *a1@<X8>)
{
  result = ByteBufferView.startIndex.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1001663B0@<X0>(uint64_t *a1@<X8>)
{
  result = ByteBufferView.endIndex.getter();
  *a1 = result;
  return result;
}

double sub_100166420@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *a1;
  v4 = a1[1];
  v6 = v2[1];
  v11 = *v2;
  v12 = v6;
  v13 = *(v2 + 4);
  ByteBufferView.subscript.getter(v5, v4, v9);
  result = *v9;
  v8 = v9[1];
  *a2 = v9[0];
  *(a2 + 16) = v8;
  *(a2 + 32) = v10;
  return result;
}

uint64_t sub_100166480@<X0>(uint64_t *a1@<X8>)
{
  v5 = *v1;
  v6 = v1[1];
  v7 = *(v1 + 4);
  result = sub_1001664C4();
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1001664C4()
{
  result = *(v0 + 24);
  if (*(v0 + 32) < result)
  {
    __break(1u);
  }

  return result;
}

BOOL sub_1001664D8()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = *(v0 + 4);
  return sub_1001640EC();
}

uint64_t sub_100166574@<X0>(unsigned __int8 *a1@<X0>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X8>)
{
  v8 = *v3;
  v9 = v3[1];
  v10 = *(v3 + 4);
  result = a2(*a1);
  *a3 = result;
  *(a3 + 8) = v6;
  *(a3 + 9) = v7 & 1;
  return result;
}

uint64_t sub_1001665CC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X2>, uint64_t a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  sub_100006518();
  result = sub_100166278(v6, v7, v8);
  *a3 = result;
  *(a3 + 8) = v10 & 1;
  return result;
}

uint64_t sub_100166610(uint64_t *a1, uint64_t *a2)
{
  v4 = *v2;
  v5 = v2[1];
  v6 = *(v2 + 4);
  return sub_100166658(*a1, *a2, a2[1]);
}

uint64_t sub_100166658(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result >= a2)
  {
    v4 = __OFSUB__(result, a3);
    v3 = result - a3 < 0;
  }

  else
  {
    v4 = 0;
    v3 = 0;
  }

  if (v3 == v4)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10016666C(uint64_t *a1, uint64_t *a2)
{
  v4 = *v2;
  v5 = v2[1];
  v6 = *(v2 + 4);
  return sub_100168FBC(*a1, *a2, a2[1]);
}

uint64_t sub_1001666B4(uint64_t *a1, uint64_t *a2)
{
  v4 = *v2;
  v5 = v2[1];
  v6 = *(v2 + 4);
  return sub_100166700(*a1, a1[1], *a2, a2[1]);
}

uint64_t sub_100166700(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (result < a3 || a4 < a2)
  {
    __break(1u);
  }

  return result;
}

Swift::Int sub_100166714@<X0>(Swift::Int *a1@<X0>, Swift::Int *a2@<X8>)
{
  result = ByteBufferView.index(after:)(*a1);
  *a2 = result;
  return result;
}

void *sub_100166740(void *result)
{
  if (__OFADD__(*result, 1))
  {
    __break(1u);
  }

  else
  {
    ++*result;
  }

  return result;
}

__n128 sub_100166758@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = v2;
  result = *(v1 + 24);
  *(a1 + 24) = result;
  *(a1 + 40) = result.n128_u64[0];
  return result;
}

uint64_t sub_100166778()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = *(v0 + 4);
  return sub_1001667B4();
}

uint64_t sub_1001667B4()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  result = v2 - v1;
  if (v2 < v1)
  {
    __break(1u);
    goto LABEL_5;
  }

  if (__OFSUB__(v2, v1))
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

uint64_t sub_100166828@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  v4 = *v2;
  v5 = v2[1];
  v6 = *(v2 + 4);
  return ByteBufferView.withContiguousStorageIfAvailable<A>(_:)(a1, a2);
}

uint64_t sub_100166864@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(v3 + 48);
  v5 = *(v3 + 56);
  v6 = *(v3 + 64);
  return sub_100165274(a1, a2, *(v3 + 32), *(v3 + 40), *(v3 + 72), a3, *(v3 + 16), *(v3 + 24));
}

uint64_t sub_10016689C(uint64_t a1)
{
  v2 = *(v1 + 16);
  v4 = *(a1 + *(v1 + 32));
  return swift_dynamicCast();
}

uint64_t sub_1001668E8()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  return v1();
}

uint64_t sub_100166988(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 24);
  v4 = *(v2 + 32);
  if (a1)
  {
    v5 = a2 - a1;
  }

  else
  {
    v5 = 0;
  }

  return v3(a1, v5);
}

uint64_t sub_1001669F0(uint64_t result, unint64_t a2, void *(*a3)(uint64_t *__return_ptr, uint64_t *, char *))
{
  switch(a2 >> 62)
  {
    case 1uLL:
      v9 = result >> 32;
      if (result >> 32 >= result)
      {
        result = result;
        v7 = a2 & 0x3FFFFFFFFFFFFFFFLL;
        v8 = v9;
        goto LABEL_8;
      }

      __break(1u);
      break;
    case 2uLL:
      v6 = *(result + 24);
      v7 = a2 & 0x3FFFFFFFFFFFFFFFLL;
      result = *(result + 16);
      v8 = v6;
LABEL_8:
      result = sub_100166EE8(result, v8, v7, a3);
      break;
    case 3uLL:
      result = 0;
      v5 = 0;
      v4 = 0;
      goto LABEL_5;
    default:
      v4 = BYTE6(a2);
      v5 = a2 & 0xFFFFFFFFFFFFLL;
LABEL_5:
      result = sub_100166FA8(result, v5, v4, a3);
      break;
  }

  return result;
}

void *sub_100166A90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = a1;
  v10 = WORD2(a2);
  v9 = a2;
  v4 = a4 - a3;
  if (a4 == a3)
  {
    return _swiftEmptyArrayStorage;
  }

  v5 = sub_100172D04(a4 - a3, 0);
  memcpy((v5 + 32), &v8 + a3, v4);
  return v5;
}

uint64_t sub_100166B48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, char a8)
{
  v15 = a1;
  v17 = WORD2(a2);
  v16 = a2;
  __dst = 0;
  memcpy(&__dst, &v15 + a3, a4 - a3);
  v11 = __dst;
  sub_100014A40(a5, a6);
  LODWORD(v12) = bswap32(v11);
  if (a8)
  {
    return v11;
  }

  else
  {
    return v12;
  }
}

unint64_t sub_100166C10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, char a8)
{
  v14 = 0;
  v15 = a1;
  v17 = WORD2(a2);
  v16 = a2;
  memcpy(&v14, &v15 + a3, a4 - a3);
  v11 = v14;
  sub_100014A40(a5, a6);
  v12 = bswap64(v11);
  if (a8)
  {
    return v11;
  }

  else
  {
    return v12;
  }
}

uint64_t sub_100166CCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = __DataStorage._bytes.getter();
  v10 = result;
  if (result)
  {
    result = __DataStorage._offset.getter();
    if (__OFSUB__(a1, result))
    {
LABEL_15:
      __break(1u);
      goto LABEL_16;
    }

    v10 += a1 - result;
  }

  v11 = __OFSUB__(a2, a1);
  v12 = a2 - a1;
  if (v11)
  {
    __break(1u);
    goto LABEL_15;
  }

  result = __DataStorage._length.getter();
  if (v10)
  {
    if (result < v12)
    {
      v12 = result;
    }

    v13 = sub_10016767C(0, a4, v10, v10 + v12);
    result = sub_10016767C(a4, a5, v10, v10 + v12);
    if (!__OFADD__(v13, result))
    {
      if (v13 + result >= v13)
      {
        return static String._fromUTF8Repairing(_:)();
      }

      goto LABEL_17;
    }

LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (a4)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  result = sub_10016767C(0, a5, 0, 0);
  if ((result & 0x8000000000000000) == 0)
  {
    return static String._fromUTF8Repairing(_:)();
  }

LABEL_19:
  __break(1u);
  return result;
}

char *sub_100166DD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = __DataStorage._bytes.getter();
  v10 = result;
  if (result)
  {
    result = __DataStorage._offset.getter();
    if (__OFSUB__(a1, result))
    {
LABEL_13:
      __break(1u);
      return result;
    }

    v10 += a1 - result;
  }

  v11 = __OFSUB__(a2, a1);
  v12 = a2 - a1;
  if (v11)
  {
    __break(1u);
    goto LABEL_13;
  }

  v13 = __DataStorage._length.getter();
  if (v13 >= v12)
  {
    v14 = v12;
  }

  else
  {
    v14 = v13;
  }

  v15 = v14 + v10;
  if (v10)
  {
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  return sub_10016599C(v10, v16, a4, a5);
}

uint64_t sub_100166E78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = __DataStorage._bytes.getter();
  if (!v6)
  {
    v9 = 0;
    goto LABEL_5;
  }

  v7 = v6;
  result = __DataStorage._offset.getter();
  if (!__OFSUB__(a1, result))
  {
    v9 = a1 - result + v7;
LABEL_5:
    __DataStorage._length.getter();
    return *(v9 + a4);
  }

  __break(1u);
  return result;
}

void *sub_100166EE8(uint64_t a1, uint64_t a2, uint64_t a3, void *(*a4)(uint64_t *__return_ptr, void *, char *))
{
  result = __DataStorage._bytes.getter();
  v9 = result;
  if (result)
  {
    result = __DataStorage._offset.getter();
    if (__OFSUB__(a1, result))
    {
LABEL_15:
      __break(1u);
      return result;
    }

    v9 = (v9 + a1 - result);
  }

  v10 = __OFSUB__(a2, a1);
  v11 = a2 - a1;
  if (v10)
  {
    __break(1u);
    goto LABEL_15;
  }

  v12 = __DataStorage._length.getter();
  if (v12 >= v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  v14 = v9 + v13;
  if (v9)
  {
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  result = a4(&v16, v9, v15);
  if (!v4)
  {
    return v16;
  }

  return result;
}

void *sub_100166FA8(uint64_t a1, uint64_t a2, uint64_t a3, void *(*a4)(uint64_t *__return_ptr, uint64_t *, char *))
{
  v6 = a1;
  v8 = WORD2(a2);
  v7 = a2;
  result = a4(&v9, &v6, &v6 + a3);
  if (!v4)
  {
    return v9;
  }

  return result;
}

char *sub_100167034@<X0>(char *a1@<X0>, uint64_t a2@<X1>, void *(*a3)(void *__return_ptr, char *, char *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  result = sub_100165E78(a1, a2, a3, a4, a5);
  if (!v6)
  {
    *a6 = result;
    *(a6 + 8) = v9 & 1;
  }

  return result;
}

unint64_t sub_1001670C0()
{
  result = qword_10021F7C0;
  if (!qword_10021F7C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021F7C0);
  }

  return result;
}

unint64_t sub_100167118()
{
  result = qword_10021F7C8;
  if (!qword_10021F7C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021F7C8);
  }

  return result;
}

unint64_t sub_10016716C()
{
  result = qword_10021F7D0;
  if (!qword_10021F7D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021F7D0);
  }

  return result;
}

unint64_t sub_1001671F8()
{
  result = qword_10021F7E0;
  if (!qword_10021F7E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021F7E0);
  }

  return result;
}

unint64_t sub_10016724C()
{
  result = qword_10021F7E8;
  if (!qword_10021F7E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021F7E8);
  }

  return result;
}

unint64_t sub_1001672D8()
{
  result = qword_10021F7F8;
  if (!qword_10021F7F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021F7F8);
  }

  return result;
}

uint64_t sub_10016736C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1000461CC(&qword_10021F068, &qword_1001A3EF8);
    sub_100153C14();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1001673E8()
{
  result = qword_10021F800;
  if (!qword_10021F800)
  {
    sub_1000461CC(&qword_10021F808, &qword_1001A5788);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021F800);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for Endianness(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_100167524(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xD && *(a1 + 24))
    {
      v2 = *a1 + 12;
    }

    else
    {
      v2 = (((*(a1 + 8) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 8) >> 60) & 3))) ^ 0xF;
      if (v2 >= 0xC)
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

uint64_t sub_100167570(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 13;
    if (a3 >= 0xD)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

uint64_t sub_1001675CC(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xD && *(a1 + 40))
    {
      v2 = *a1 + 12;
    }

    else
    {
      v2 = (((*(a1 + 8) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 8) >> 60) & 3))) ^ 0xF;
      if (v2 >= 0xC)
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

uint64_t sub_100167618(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 13;
    if (a3 >= 0xD)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

uint64_t sub_10016767C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 - a3;
  if (!a3)
  {
    v4 = 0;
  }

  if (result < 0 || v4 < result)
  {
    __break(1u);
  }

  else if ((a2 & 0x8000000000000000) == 0 && v4 >= a2)
  {
    return a2 - result;
  }

  __break(1u);
  return result;
}

char *sub_1001676B0(void *a1, int64_t a2, char *__src, int64_t a4)
{
  v4 = __src;
  if (a4 && a2)
  {
    if (a4 >= a2)
    {
      v5 = a2;
    }

    else
    {
      v5 = a4;
    }

    memcpy(a1, __src, v5);
    v4 += v5;
  }

  return v4;
}

void *sub_10016771C(void *result)
{
  v2 = v1[2];
  if (v2)
  {
    v3 = (v2 + v1[4]);
  }

  else
  {
    v3 = 0;
  }

  if (result && v3)
  {
    if (v2)
    {
      v4 = v2 + v1[5];
    }

    else
    {
      v4 = 0;
    }

    return memmove(result, v3, v4 - v3);
  }

  return result;
}

uint64_t sub_100167784(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a1 + 56;
  v6 = 1 << *(a1 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a1 + 56);
  v9 = (v6 + 63) >> 6;

  v11 = 0;
  while (v8)
  {
LABEL_9:
    v13 = (*(a1 + 48) + 24 * (__clz(__rbit64(v8)) | (v11 << 6)));
    v14 = *v13;
    v15 = v13[2];
    if (*v13 == a2 && v13[1] == a3)
    {
      v14 = a2;
LABEL_17:

LABEL_18:

      return v14;
    }

    v8 &= v8 - 1;
    result = _stringCompareWithSmolCheck(_:_:expecting:)();
    if (result)
    {
      goto LABEL_17;
    }
  }

  while (1)
  {
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v12 >= v9)
    {
      v14 = 0;
      goto LABEL_18;
    }

    v8 = *(v5 + 8 * v12);
    ++v11;
    if (v8)
    {
      v11 = v12;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

void *sub_1001678CC(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    goto LABEL_4;
  }

  v3 = sub_1001723E8(*(a1 + 16), 0);
  v4 = sub_100172760(&v6, v3 + 4, v2, a1);
  sub_100019180();
  if (v4 != v2)
  {
    __break(1u);
LABEL_4:

    return _swiftEmptyArrayStorage;
  }

  return v3;
}

void *sub_10016795C(void *result)
{
  v1 = result[3];
  v2 = result[4];
  v3 = v2 - v1;
  if (v2 < v1)
  {
    __break(1u);
  }

  else if (!__OFSUB__(v2, v1))
  {
    v4 = result;
    if (v3)
    {
      v5 = sub_1001079EC(v2 - v1, 0);
      v4 = sub_10017249C(v6, (v5 + 4), v3);
      sub_100014A40(v6[0], v6[1]);
      if (v4 == v3)
      {
        return v5;
      }

      __break(1u);
    }

    sub_100168B48(v4);
    return _swiftEmptyArrayStorage;
  }

  __break(1u);
  return result;
}

uint64_t AvroRecordSchema.makeTemplate(withPresetValues:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = v3;
  v5 = v2;
  sub_1000967A0(v5, &v35);
  AvroRecord.init(schema:)(&v37, v5);
  rawValue = v5->fields._rawValue;

  v36 = sub_100167C90(v8);
  if (a1)
  {
    v9 = a1;
  }

  else
  {
    v9 = Dictionary.init(dictionaryLiteral:)();
  }

  v10 = v9 + 64;
  v11 = 1 << *(v9 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(v9 + 64);
  v14 = (v11 + 63) >> 6;

  v16 = 0;
  for (i = v9; v13; result = sub_100096480(__dst))
  {
LABEL_11:
    v18 = __clz(__rbit64(v13)) | (v16 << 6);
    v19 = (*(v9 + 48) + 16 * v18);
    v20 = *v19;
    v21 = v19[1];
    memcpy(__dst, (*(v9 + 56) + 72 * v18), 0x41uLL);
    v22 = v36;
    swift_bridgeObjectRetain_n();
    sub_100163ABC(__dst, &v35);
    v23 = sub_100167784(v22, v20, v21);
    if (v24)
    {
      v26 = v24;
      v27 = v23;
      v28 = sub_10016876C(v23, v24, v25);
      v34 = v4;
      v30 = v29;

      sub_100168918(v28, v30);
      AvroRecord.set(_:forField:)(__dst, v27, v26);
      v4 = v34;
      if (v34)
      {
        sub_100096480(__dst);

        v35 = v37;
        sub_1000967FC(&v35);
      }
    }

    else
    {
    }

    v9 = i;
    v13 &= v13 - 1;
  }

  while (1)
  {
    v17 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v17 >= v14)
    {

      result = sub_1001678CC(v36);
      name = v37.schema.name;
      *a2 = v37.schema.type;
      *(a2 + 16) = name;
      v32 = *&v37.schema.fields._rawValue;
      *(a2 + 32) = v37.schema.namespace;
      *(a2 + 48) = v32;
      *(a2 + 64) = result;
      return result;
    }

    v13 = *(v10 + 8 * v17);
    ++v16;
    if (v13)
    {
      v16 = v17;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100167C90(uint64_t a1)
{
  v2 = *(a1 + 16);
  sub_100168B9C();
  result = Set.init(minimumCapacity:)();
  v4 = 0;
  v11 = result;
  v5 = *(a1 + 16);
  for (i = (a1 + 48); ; i += 3)
  {
    if (v5 == v4)
    {

      return v11;
    }

    if (v4 >= *(a1 + 16))
    {
      break;
    }

    ++v4;
    v8 = *(i - 1);
    v7 = *i;
    v9 = *(i - 2);

    sub_100167D70(&v10, v9, v8, v7);
  }

  __break(1u);
  return result;
}

uint64_t sub_100167D70(Swift::Int *a1, Swift::Int a2, Swift::Int a3, unint64_t a4)
{
  v8 = *v4;
  v9 = *(*v4 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  _s9SwiftAvro0B6SchemaV4hash4intoys6HasherVz_tF_0(v28, a4);
  v10 = Hasher._finalize()();
  v11 = -1 << *(v8 + 32);
  v12 = v10 & ~v11;
  if ((*(v8 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v13 = ~v11;
    while (1)
    {
      v14 = (*(v8 + 48) + 24 * v12);
      v15 = v14[2];
      v16 = *v14 == a2 && v14[1] == a3;
      if (v16 || (v17 = v14[1], (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
      {

        v18 = _s9SwiftAvro0B6SchemaV23__derived_struct_equalsySbAC_ACtFZ_0(v15, a4);

        if (v18)
        {
          break;
        }
      }

      v12 = (v12 + 1) & v13;
      if (((*(v8 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
      {
        goto LABEL_10;
      }
    }

    v22 = (*(v8 + 48) + 24 * v12);
    v23 = *v22;
    v24 = v22[1];
    v25 = v22[2];
    *a1 = v23;
    a1[1] = v24;
    a1[2] = v25;

    return 0;
  }

  else
  {
LABEL_10:
    v19 = *v26;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v28[0] = *v26;

    sub_1001681C8(a2, a3, a4, v12, isUniquelyReferenced_nonNull_native);
    *v26 = v28[0];
    *a1 = a2;
    a1[1] = a3;
    a1[2] = a4;
    return 1;
  }
}

uint64_t sub_100167F4C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_100046184(&qword_10021F810, &qword_1001A5940);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (!*(v3 + 16))
  {
LABEL_29:

    *v2 = v6;
    return result;
  }

  v32 = v2;
  v33 = v3;
  v7 = 0;
  v8 = (v3 + 56);
  v9 = 1 << *(v3 + 32);
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & *(v3 + 56);
  v12 = (v9 + 63) >> 6;
  v13 = result + 56;
  if (!v11)
  {
LABEL_9:
    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v7 >= v12)
      {
        break;
      }

      v16 = v8[v7];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v11 = (v16 - 1) & v16;
        goto LABEL_14;
      }
    }

    v31 = 1 << *(v3 + 32);
    if (v31 >= 64)
    {
      sub_1000934E4(0, (v31 + 63) >> 6, v8);
    }

    else
    {
      *v8 = -1 << v31;
    }

    v2 = v32;
    *(v3 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v14 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_14:
    v17 = (*(v3 + 48) + 24 * (v14 | (v7 << 6)));
    v18 = *v17;
    v19 = v17[1];
    v20 = v17[2];
    v21 = *(v6 + 40);
    Hasher.init(_seed:)();
    String.hash(into:)();
    _s9SwiftAvro0B6SchemaV4hash4intoys6HasherVz_tF_0(v34, v20);
    result = Hasher._finalize()();
    v22 = -1 << *(v6 + 32);
    v23 = result & ~v22;
    v24 = v23 >> 6;
    if (((-1 << v23) & ~*(v13 + 8 * (v23 >> 6))) == 0)
    {
      break;
    }

    v25 = __clz(__rbit64((-1 << v23) & ~*(v13 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v13 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
    v30 = (*(v6 + 48) + 24 * v25);
    *v30 = v18;
    v30[1] = v19;
    v30[2] = v20;
    ++*(v6 + 16);
    v3 = v33;
    if (!v11)
    {
      goto LABEL_9;
    }
  }

  v26 = 0;
  v27 = (63 - v22) >> 6;
  while (++v24 != v27 || (v26 & 1) == 0)
  {
    v28 = v24 == v27;
    if (v24 == v27)
    {
      v24 = 0;
    }

    v26 |= v28;
    v29 = *(v13 + 8 * v24);
    if (v29 != -1)
    {
      v25 = __clz(__rbit64(~v29)) + (v24 << 6);
      goto LABEL_23;
    }
  }

LABEL_31:
  __break(1u);
  return result;
}

Swift::Int sub_1001681C8(Swift::Int result, Swift::Int a2, unint64_t a3, unint64_t a4, char a5)
{
  v8 = result;
  v9 = *(*v5 + 16);
  v10 = *(*v5 + 24);
  if (v10 > v9 && (a5 & 1) != 0)
  {
    goto LABEL_17;
  }

  if (a5)
  {
    sub_100167F4C(v9 + 1);
  }

  else
  {
    if (v10 > v9)
    {
      result = sub_1001683A0();
      goto LABEL_17;
    }

    sub_100168510(v9 + 1);
  }

  v11 = *v5;
  v12 = *(*v5 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  _s9SwiftAvro0B6SchemaV4hash4intoys6HasherVz_tF_0(v27, a3);
  result = Hasher._finalize()();
  v13 = -1 << *(v11 + 32);
  a4 = result & ~v13;
  if ((*(v11 + 56 + ((a4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a4))
  {
    v14 = ~v13;
    do
    {
      v15 = (*(v11 + 48) + 24 * a4);
      v16 = v15[2];
      v17 = *v15 == v8 && v15[1] == a2;
      if (v17 || (v18 = v15[1], result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) != 0))
      {

        v19 = _s9SwiftAvro0B6SchemaV23__derived_struct_equalsySbAC_ACtFZ_0(v16, a3);

        if (v19)
        {
          goto LABEL_20;
        }
      }

      a4 = (a4 + 1) & v14;
    }

    while (((*(v11 + 56 + ((a4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a4) & 1) != 0);
  }

LABEL_17:
  v20 = *v25;
  *(*v25 + 8 * (a4 >> 6) + 56) |= 1 << a4;
  v21 = (*(v20 + 48) + 24 * a4);
  *v21 = v8;
  v21[1] = a2;
  v21[2] = a3;
  v22 = *(v20 + 16);
  v23 = __OFADD__(v22, 1);
  v24 = v22 + 1;
  if (!v23)
  {
    *(v20 + 16) = v24;
    return result;
  }

  __break(1u);
LABEL_20:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void *sub_1001683A0()
{
  v1 = v0;
  sub_100046184(&qword_10021F810, &qword_1001A5940);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 3 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + 8 * v17);
        v19 = *v18;
        v20 = v18[1];
        v21 = v18[2];
        v22 = (*(v4 + 48) + 8 * v17);
        *v22 = v19;
        v22[1] = v20;
        v22[2] = v21;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_100168510(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_100046184(&qword_10021F810, &qword_1001A5940);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v31 = v2;
    v32 = v3;
    v7 = 0;
    v8 = v3 + 56;
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    if (v11)
    {
      while (1)
      {
        v14 = __clz(__rbit64(v11));
        v11 &= v11 - 1;
LABEL_14:
        v17 = (*(v3 + 48) + 24 * (v14 | (v7 << 6)));
        v18 = *v17;
        v19 = v17[1];
        v20 = v17[2];
        v21 = *(v6 + 40);
        Hasher.init(_seed:)();

        String.hash(into:)();
        _s9SwiftAvro0B6SchemaV4hash4intoys6HasherVz_tF_0(v33, v20);
        result = Hasher._finalize()();
        v22 = -1 << *(v6 + 32);
        v23 = result & ~v22;
        v24 = v23 >> 6;
        if (((-1 << v23) & ~*(v13 + 8 * (v23 >> 6))) == 0)
        {
          break;
        }

        v25 = __clz(__rbit64((-1 << v23) & ~*(v13 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
        *(v13 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
        v30 = (*(v6 + 48) + 24 * v25);
        *v30 = v18;
        v30[1] = v19;
        v30[2] = v20;
        ++*(v6 + 16);
        v3 = v32;
        if (!v11)
        {
          goto LABEL_9;
        }
      }

      v26 = 0;
      v27 = (63 - v22) >> 6;
      while (++v24 != v27 || (v26 & 1) == 0)
      {
        v28 = v24 == v27;
        if (v24 == v27)
        {
          v24 = 0;
        }

        v26 |= v28;
        v29 = *(v13 + 8 * v24);
        if (v29 != -1)
        {
          v25 = __clz(__rbit64(~v29)) + (v24 << 6);
          goto LABEL_23;
        }
      }
    }

    else
    {
LABEL_9:
      v15 = v7;
      while (1)
      {
        v7 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          break;
        }

        if (v7 >= v12)
        {

          v2 = v31;
          goto LABEL_27;
        }

        v16 = *(v8 + 8 * v7);
        ++v15;
        if (v16)
        {
          v14 = __clz(__rbit64(v16));
          v11 = (v16 - 1) & v16;
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_27:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_10016876C(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  _s9SwiftAvro0B6SchemaV4hash4intoys6HasherVz_tF_0(v26, a3);
  v9 = Hasher._finalize()();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
  {
    return 0;
  }

  v12 = ~v10;
  while (1)
  {
    v13 = (*(v7 + 48) + 24 * v11);
    v14 = v13[2];
    v15 = *v13 == a1 && v13[1] == a2;
    if (v15 || (v16 = v13[1], (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
    {

      v17 = _s9SwiftAvro0B6SchemaV23__derived_struct_equalsySbAC_ACtFZ_0(v14, a3);

      if (v17)
      {
        break;
      }
    }

    v11 = (v11 + 1) & v12;
    if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
    {
      return 0;
    }
  }

  v19 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v21 = *v3;
  v26[0] = *v3;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1001683A0();
    v21 = v26[0];
  }

  v22 = (*(v21 + 48) + 24 * v11);
  v18 = *v22;
  v23 = v22[1];
  v24 = v22[2];
  sub_10016895C(v11);
  *v3 = v26[0];
  return v18;
}

uint64_t sub_100168918(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

unint64_t sub_10016895C(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;
    v8 = *v1;

    v9 = _HashTable.previousHole(before:)();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v10 = (v9 + 1) & v7;
      do
      {
        v11 = *(v3 + 40);
        v12 = (*(v3 + 48) + 24 * v6);
        v13 = *v12;
        v14 = v12[1];
        v15 = v12[2];
        Hasher.init(_seed:)();

        String.hash(into:)();
        _s9SwiftAvro0B6SchemaV4hash4intoys6HasherVz_tF_0(v28, v15);
        v16 = Hasher._finalize()();

        v17 = v16 & v7;
        if (v2 >= v10)
        {
          if (v17 >= v10 && v2 >= v17)
          {
LABEL_15:
            v20 = *(v3 + 48);
            v21 = v20 + 24 * v2;
            v22 = (v20 + 24 * v6);
            if (v2 != v6 || v21 >= v22 + 24)
            {
              v24 = *v22;
              *(v21 + 16) = *(v22 + 2);
              *v21 = v24;
              v2 = v6;
            }
          }
        }

        else if (v17 >= v10 || v2 >= v17)
        {
          goto LABEL_15;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v25 = *(v3 + 16);
  v26 = __OFSUB__(v25, 1);
  v27 = v25 - 1;
  if (v26)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v27;
    ++*(v3 + 36);
  }

  return result;
}

unint64_t sub_100168B9C()
{
  result = qword_10021F818;
  if (!qword_10021F818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021F818);
  }

  return result;
}

Swift::Int ByteBuffer.writeAvroValue(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *a1;
  v9 = *(a1 + 8);
  v11 = *(a1 + 16);
  v12 = *(a1 + 24);
  v13 = a1;
  switch(*(a1 + 64))
  {
    case 1:
      sub_1001730D4(a1, a2, a3, a4, a5, a6, a7, a8, v27, *v28, *&v28[8], *&v28[16]);
      ByteBuffer.writeAvroArray(_:)();
      goto LABEL_12;
    case 2:
      goto LABEL_7;
    case 3:
      v20 = *(a1 + 48);
      *&v28[32] = *(a1 + 32);
      *&v28[48] = v20;
      *&v28[24] = v12;
      sub_1001730D4(a1, a2, a3, a4, a5, a6, a7, a8, v27, v10, v9, v11);
      v15 = ByteBuffer.writeAvroRecord(_:)(v28);
LABEL_9:
      v8 = v15;
LABEL_10:
      sub_100096480(v13);
      return v8;
    case 4:
      memcpy(__dst, (v10 + 16), sizeof(__dst));
      v16 = (2 * __dst[10]) ^ (__dst[10] >> 63);
      sub_100163ABC(v13, v28);
      sub_100163B18(__dst, v28);
      v17 = sub_1001706E8(v16);
      ByteBuffer.writeBytes(_:)(v17);
      sub_100172F08();
      memcpy(v28, &__dst[1], 0x41uLL);
      v18 = ByteBuffer.writeAvroValue(_:)(v28);
      sub_100163B74(__dst);
      a1 = sub_100096480(v13);
      v19 = __OFADD__(v11, v18);
      v8 = v11 + v18;
      if (!v19)
      {
        return v8;
      }

      __break(1u);
LABEL_7:
      sub_1001730D4(a1, a2, a3, a4, a5, a6, a7, a8, v27, *v28, *&v28[8], *&v28[16]);
      ByteBuffer.writeAvroMap(_:)();
LABEL_12:
      sub_1001730EC();

      return v8;
    default:
      switch(*(a1 + 24))
      {
        case 1u:
          v23 = sub_1001705C0((2 * v10) ^ (v10 >> 31));
          goto LABEL_19;
        case 2u:
          v23 = sub_1001706E8((2 * v10) ^ (v10 >> 63));
LABEL_19:
          ByteBuffer.writeBytes(_:)(v23);
          sub_1000054F4();

          goto LABEL_10;
        case 3u:
          v24 = sub_100172F70(a1, a2, a3, a4, a5, a6, a7, a8, v27, *v28, *&v28[8], *&v28[16], *&v28[24], *&v28[32], *&v28[40], *&v28[48], *&v28[56], *&v28[64], v29, v30, v10);
          v15 = sub_100168EA8(v24);
          goto LABEL_9;
        case 4u:
          v22 = sub_100172F70(a1, a2, a3, a4, a5, a6, a7, a8, v27, *v28, *&v28[8], *&v28[16], *&v28[24], *&v28[32], *&v28[40], *&v28[48], *&v28[56], *&v28[64], v29, v30, *a1);
          v15 = sub_100168F1C(v22);
          goto LABEL_9;
        case 5u:
          sub_1001730D4(a1, a2, a3, a4, a5, a6, a7, a8, v27, *v28, *&v28[8], *&v28[16]);
          v25._countAndFlagsBits = v10;
          v25._object = v9;
          v15 = ByteBuffer.writeAvroString(_:)(v25);
          goto LABEL_9;
        case 6u:
          sub_1001730D4(a1, a2, a3, a4, a5, a6, a7, a8, v27, *v28, *&v28[8], *&v28[16]);
          v26._rawValue = v10;
          v15 = sub_1001704E8(v26, v9, v11);
          goto LABEL_9;
        case 7u:
          sub_100096480(a1);
          return 0;
        default:
          v14 = sub_100172F70(a1, a2, a3, a4, a5, a6, a7, a8, v27, *v28, *&v28[8], *&v28[16], *&v28[24], *&v28[32], *&v28[40], *&v28[48], *&v28[56], *&v28[64], v29, v30, v10 & 1);
          v15 = sub_100168E34(v14);
          goto LABEL_9;
      }
  }
}

uint64_t sub_100168E34(_BYTE *a1)
{
  v2 = sub_100172BD8(1, 0);
  *(v2 + 32) = *a1;
  if (v2[2])
  {
    Data._Representation.append(contentsOf:)();
    v3 = v2[2];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t sub_100168EA8(_DWORD *a1)
{
  v2 = sub_100172BD8(4, 0);
  *(v2 + 8) = *a1;
  if (v2[2])
  {
    Data._Representation.append(contentsOf:)();
    v3 = v2[2];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t sub_100168F1C(void *a1)
{
  v2 = sub_100172BD8(8, 0);
  v2[4] = *a1;
  if (v2[2])
  {
    Data._Representation.append(contentsOf:)();
    v3 = v2[2];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t sub_100168F90(uint64_t result, uint64_t a2)
{
  v3 = *(v2 + 24);
  v4 = *(v2 + 32);
  if (v4 < a2 || v3 > a2 || v3 > result || v4 < result)
  {
    __break(1u);
    goto LABEL_14;
  }

  v8 = __OFSUB__(a2, result);
  result = a2 - result;
  if (v8)
  {
LABEL_14:
    __break(1u);
  }

  return result;
}

uint64_t sub_100168FBC(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result < a2 || a3 < result)
  {
    __break(1u);
  }

  return result;
}

void sub_100168FD0()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = v2 - v1;
  if (v2 < v1)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (__OFSUB__(v2, v1))
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (!v3)
  {
    sub_100168B48(v0);
    return;
  }

  v4 = sub_100172BD8(v2 - v1, 0);
  sub_100166950(v0, v6);
  v5 = sub_10017249C(v6, (v4 + 4), v3);
  sub_100014A40(v6[0], v6[1]);
  if (v5 == v3)
  {
    sub_100168B48(v0);
    return;
  }

LABEL_9:
  __break(1u);
}

uint64_t ByteBuffer.writeAvroPrimitive(_:)(uint64_t a1, void *a2, uint64_t a3, char a4)
{
  v6 = 0;
  switch(a4)
  {
    case 1:
      v8 = sub_1001705C0((2 * a1) ^ (a1 >> 31));
      goto LABEL_6;
    case 2:
      v8 = sub_1001706E8((2 * a1) ^ (a1 >> 63));
LABEL_6:
      v9 = ByteBuffer.writeBytes(_:)(v8);

      return v9;
    case 3:
      LODWORD(v26) = a1;
      return sub_100168EA8(&v26);
    case 4:
      v26 = a1;
      return sub_100168F1C(&v26);
    case 5:
      v22 = sub_10000DD04();
      sub_100163C88(v22, v23, v24, 5);
      v25._countAndFlagsBits = a1;
      v25._object = a2;
      v17 = ByteBuffer.writeAvroString(_:)(v25);
      v18 = sub_10000DD04();
      v21 = 5;
      goto LABEL_12;
    case 6:
      v11 = sub_10000DD04();
      sub_100163C88(v11, v12, v13, 6);
      v14._rawValue = sub_10000DD04();
      v17 = sub_1001704E8(v14, v15, v16);
      v18 = sub_10000DD04();
      v21 = 6;
LABEL_12:
      sub_100163E18(v18, v19, v20, v21);
      return v17;
    case 7:
      return v6;
    default:
      LOBYTE(v26) = a1 & 1;
      return sub_100168E34(&v26);
  }
}

void ByteBuffer.writeAvroArray(_:)()
{
  sub_100005478();
  v3 = v2;
  v296 = type metadata accessor for String.Encoding();
  v4 = sub_100003650(v296);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  sub_100004370();
  v295 = v7;
  v8 = *(v3 + 16);
  if (!v8)
  {
    v279 = sub_100006D64();
    sub_10006C9F0(v279, v280, v281, v282);
    sub_1001731C4(v283);
    if (!v79)
    {
LABEL_328:
      sub_10017323C();
      sub_1000054F4();

      goto LABEL_329;
    }

LABEL_336:
    v286 = sub_1000066A8(v27);
    sub_10006C9F0(v286, v8, 1, v1);
    goto LABEL_328;
  }

  v9 = sub_1001706E8(2 * v8);
  v1 = ByteBuffer.writeBytes(_:)(v9);

  v10 = 0;
  v299 = v3 + 32;
  while (1)
  {
    v11 = v299 + 72 * v10;
    memcpy(v311, v11, sizeof(v311));
    ++v10;
    v12 = *v311;
    v14 = *&v311[16];
    v13 = *&v311[24];
    switch(v311[64])
    {
      case 1:
        sub_100172DB4();
        v28 = sub_100172DB4();
        v24 = ByteBuffer.writeAvroArray(_:)(v28);
        goto LABEL_18;
      case 2:
        sub_100172DB4();
        sub_100172DB4();
        ByteBuffer.writeAvroMap(_:)();
LABEL_18:
        v26 = v24;
        sub_100096480(v311);

LABEL_19:

        goto LABEL_211;
      case 3:
        v312.schema.type._countAndFlagsBits = *v311;
        v312.schema.type._object = *&v311[8];
        v312.schema.name = *&v311[16];
        v25 = *(v11 + 48);
        v312.schema.namespace = *(v11 + 32);
        *&v312.schema.fields._rawValue = v25;
        sub_100172DB4();
        v26 = ByteBuffer.writeAvroRecord(_:)(&v312);
        sub_100096480(v311);
        goto LABEL_211;
      case 4:
        sub_1001640BC(&v307);
        if (((2 * v310) ^ (v310 >> 63)) >= 0x80)
        {
          sub_100163ABC(v311, &v303);
          sub_100163ABC(v311, &v303);
          sub_100163B18(&v307, &v303);
          v29 = sub_100006D64();
          sub_10006C9F0(v29, v30, v31, _swiftEmptyArrayStorage);
          v16 = v32;
          v33 = v32[2];
          do
          {
            v34 = v16[3];
            if (v33 >= v34 >> 1)
            {
              v36 = sub_1000066A8(v34);
              sub_100172E08(v36);
              v16 = v37;
            }

            sub_100172D40();
          }

          while (v35);
        }

        else
        {
          sub_100163ABC(v311, &v303);
          sub_100163ABC(v311, &v303);
          sub_100163B18(&v307, &v303);
          v16 = _swiftEmptyArrayStorage;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v240 = v16[2];
          v241 = sub_1000040F0();
          sub_10006C9F0(v241, v242, v243, v16);
          v16 = v244;
        }

        v17 = v16[3];
        if (v16[2] >= v17 >> 1)
        {
          v245 = sub_1000066A8(v17);
          sub_100172E08(v245);
          v16 = v246;
        }

        break;
      default:
        switch(v311[24])
        {
          case 1:
            v51 = sub_1001732CC();
            sub_10000E2A0(v51);
            if (!v52)
            {
              goto LABEL_45;
            }

            sub_10000EC9C();
LABEL_44:
            Data._Representation.append(contentsOf:)();
LABEL_45:
            sub_100096480(v311);
            sub_100096480(v311);
            v26 = *(v13 + 16);

            goto LABEL_211;
          case 2:
            if (((2 * *v311) ^ (*v311 >> 63)) >= 0x80)
            {
              v69 = sub_100006D64();
              sub_10006C9F0(v69, v70, v71, _swiftEmptyArrayStorage);
              v13 = v72;
              v73 = *(v72 + 16);
              do
              {
                v74 = *(v13 + 24);
                if (v73 >= v74 >> 1)
                {
                  v76 = sub_1000066A8(v74);
                  sub_100172E08(v76);
                  v13 = v77;
                }

                sub_100172D40();
              }

              while (v75);
            }

            else
            {
              v13 = _swiftEmptyArrayStorage;
            }

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v267 = *(v13 + 16);
              v268 = sub_1000040F0();
              sub_10006C9F0(v268, v269, v270, v13);
              v13 = v271;
            }

            v49 = *(v13 + 24);
            if (*(v13 + 16) >= v49 >> 1)
            {
              v272 = sub_1000066A8(v49);
              sub_100172E08(v272);
              v13 = v273;
            }

            sub_10017311C();
            goto LABEL_44;
          case 3:
            sub_100046184(&qword_100216160, &qword_10019A598);
            v13 = sub_10000BB9C();
            sub_100008270(v13);
            *(sub_10000CF08(v50) + 32) = v12;
            goto LABEL_40;
          case 4:
            sub_100046184(&qword_100216160, &qword_10019A598);
            v13 = sub_100173104();
            sub_100008270(v13);
            *(sub_10000CF08(v48) + 32) = v12;
            goto LABEL_40;
          case 5:
            if ((*&v311[8] & 0x1000000000000000) != 0)
            {
              v55 = sub_1000126FC();
            }

            else
            {
              sub_10000FF70();
              if (v80)
              {
                v55 = v53;
              }

              else
              {
                v55 = v54;
              }
            }

            v56 = (2 * v55) ^ (v55 >> 63);
            sub_100172DB4();
            sub_100172DB4();
            sub_100172DB4();
            v57 = sub_1001706E8(v56);
            sub_10000E2A0(v57);
            if (v58)
            {
              sub_10000EC9C();
              Data._Representation.append(contentsOf:)();
              v59 = *(v56 + 16);
            }

            else
            {
              v59 = 0;
            }

            static String.Encoding.utf8.getter();
            sub_100172E5C();
            sub_10000CD20();
            v78(v295, v296);
            sub_10017317C();
            if (!v80 & v79)
            {
              v81 = 0;
            }

            else
            {
              v81 = v56;
            }

            if (!v80 & v79)
            {
              v13 = 0xC000000000000000;
            }

            else
            {
              v13 = v12;
            }

            sub_10001BD4C();
            Data.append(_:)();
            sub_100096480(v311);
            sub_100096480(v311);
            sub_100096480(v311);
            switch(v13 >> 62)
            {
              case 1uLL:
                v107 = sub_10001BD4C();
                sub_100014A40(v107, v108);
                LODWORD(v27) = HIDWORD(v81) - v81;
                if (__OFSUB__(HIDWORD(v81), v81))
                {
                  goto LABEL_341;
                }

                v27 = v27;
LABEL_90:
                v26 = v59 + v27;
                if (!__OFADD__(v59, v27))
                {
                  goto LABEL_211;
                }

                goto LABEL_335;
              case 2uLL:
                v102 = *(v81 + 16);
                v101 = *(v81 + 24);
                v103 = sub_10001BD4C();
                sub_100014A40(v103, v104);
                v27 = v101 - v102;
                if (!__OFSUB__(v101, v102))
                {
                  goto LABEL_90;
                }

                goto LABEL_342;
              case 3uLL:
                v105 = sub_10001BD4C();
                sub_100014A40(v105, v106);
                v27 = 0;
                goto LABEL_90;
              default:
                v82 = sub_10001BD4C();
                sub_100014A40(v82, v83);
                v27 = BYTE6(v13);
                goto LABEL_90;
            }

          case 6:
            v60 = (*&v311[8] >> 60) & 3;
            if (v60)
            {
              v13 = *&v311[8] >> 62;
              v290 = HIDWORD(*v311);
              v298 = v311[14];
              if (v60 != 1)
              {
                v88 = 0;
                switch(v13)
                {
                  case 1uLL:
                    if (__OFSUB__(*&v311[4], *v311))
                    {
                      goto LABEL_347;
                    }

                    v88 = *&v311[4] - *v311;
LABEL_138:
                    sub_100172DB4();
                    sub_100172DB4();
                    sub_100172DB4();
LABEL_139:
                    v134 = sub_1001706E8((2 * v88) ^ (v88 >> 63));
                    sub_100172FD4(v134);
                    if (v135)
                    {
                      sub_100013010();
                      v136 = *(v11 + 16);
                    }

                    else
                    {
                      v136 = 0;
                    }

                    sub_100172F80();
                    sub_100096480(v311);
                    sub_100096480(v311);
                    switch(v13)
                    {
                      case 0:
                        sub_100096480(v311);
                        v27 = v298;
                        goto LABEL_150;
                      case 1:
                        sub_100096480(v311);
                        LODWORD(v27) = v290 - v12;
                        if (__OFSUB__(v290, v12))
                        {
                          goto LABEL_349;
                        }

                        v27 = v27;
LABEL_150:
                        v26 = v136 + v27;
                        if (!__OFADD__(v136, v27))
                        {
                          goto LABEL_211;
                        }

                        goto LABEL_338;
                      case 2:
                        v137 = *(v12 + 16);
                        v13 = *(v12 + 24);
                        sub_100096480(v311);
                        v27 = v13 - v137;
                        if (!__OFSUB__(v13, v137))
                        {
                          goto LABEL_150;
                        }

                        goto LABEL_348;
                      case 3:
                        sub_100096480(v311);
                        v27 = 0;
                        goto LABEL_150;
                      default:
LABEL_381:
                        JUMPOUT(0);
                    }

                  case 2uLL:
                    v133 = *(*v311 + 16);
                    v132 = *(*v311 + 24);
                    v88 = v132 - v133;
                    if (!__OFSUB__(v132, v133))
                    {
                      goto LABEL_138;
                    }

                    goto LABEL_346;
                  case 3uLL:
                    goto LABEL_139;
                  default:
                    v88 = v311[14];
                    goto LABEL_139;
                }
              }

              v61 = 0;
              switch(v13)
              {
                case 1uLL:
                  if (__OFSUB__(*&v311[4], *v311))
                  {
                    goto LABEL_345;
                  }

                  v61 = *&v311[4] - *v311;
LABEL_128:
                  sub_100172DB4();
                  sub_100172DB4();
                  sub_100172DB4();
LABEL_129:
                  if (!__OFSUB__(v61, v14))
                  {
                    v129 = sub_100173028(v61 - v14);
                    sub_100172FD4(v129);
                    if (v130)
                    {
                      sub_100013010();
                      v131 = *(v61 + 16);
                    }

                    else
                    {
                      v131 = 0;
                    }

                    sub_100172F80();
                    sub_100096480(v311);
                    sub_100096480(v311);
                    switch(v13)
                    {
                      case 1:
                        sub_100096480(v311);
                        LODWORD(v27) = v290 - v12;
                        if (__OFSUB__(v290, v12))
                        {
                          goto LABEL_351;
                        }

                        v27 = v27;
LABEL_159:
                        v26 = v131 + v27;
                        if (!__OFADD__(v131, v27))
                        {
                          goto LABEL_211;
                        }

                        goto LABEL_339;
                      case 2:
                        v138 = *(v12 + 16);
                        v13 = *(v12 + 24);
                        sub_100096480(v311);
                        v27 = v13 - v138;
                        if (!__OFSUB__(v13, v138))
                        {
                          goto LABEL_159;
                        }

                        goto LABEL_350;
                      case 3:
                        sub_100096480(v311);
                        v27 = 0;
                        goto LABEL_159;
                      default:
                        sub_100096480(v311);
                        v27 = v298;
                        goto LABEL_159;
                    }
                  }

                  break;
                case 2uLL:
                  v128 = *(*v311 + 16);
                  v127 = *(*v311 + 24);
                  v61 = v127 - v128;
                  if (!__OFSUB__(v127, v128))
                  {
                    goto LABEL_128;
                  }

                  goto LABEL_344;
                case 3uLL:
                  goto LABEL_129;
                default:
                  v61 = v311[14];
                  goto LABEL_129;
              }

              goto LABEL_337;
            }

            v84 = *(*v311 + 16);
            v13 = 2 * v84;
            sub_100172DB4();
            sub_100172DB4();
            sub_100172DB4();
            v85 = sub_1001706E8(2 * v84);
            sub_10000E2A0(v85);
            if (v86)
            {
              sub_10000EC9C();
              Data._Representation.append(contentsOf:)();
              v87 = *(2 * v84 + 0x10);
            }

            else
            {
              v87 = 0;
            }

            if (*(v12 + 16))
            {
              sub_10017329C();
            }

            sub_100096480(v311);
            sub_100096480(v311);
            sub_100096480(v311);
            v26 = v87 + v84;
            if (!__OFADD__(v87, v84))
            {
              goto LABEL_211;
            }

            __break(1u);
LABEL_337:
            __break(1u);
LABEL_338:
            __break(1u);
LABEL_339:
            __break(1u);
LABEL_340:
            __break(1u);
LABEL_341:
            __break(1u);
LABEL_342:
            __break(1u);
LABEL_343:
            __break(1u);
LABEL_344:
            __break(1u);
LABEL_345:
            __break(1u);
LABEL_346:
            __break(1u);
LABEL_347:
            __break(1u);
LABEL_348:
            __break(1u);
LABEL_349:
            __break(1u);
LABEL_350:
            __break(1u);
LABEL_351:
            __break(1u);
LABEL_352:
            __break(1u);
            break;
          case 7:
            sub_100096480(v311);
            sub_100096480(v311);
            v26 = 0;
            goto LABEL_211;
          default:
            sub_100046184(&qword_100216160, &qword_10019A598);
            v13 = sub_1001730BC();
            sub_100008270(v13);
            *(sub_10000CF08(v15) + 32) = v12 & 1;
LABEL_40:
            Data._Representation.append(contentsOf:)();
            sub_100096480(v311);
            sub_100096480(v311);
            v26 = *(v13 + 16);
            goto LABEL_19;
        }

        goto LABEL_353;
    }

    sub_10017311C();
    Data._Representation.append(contentsOf:)();
    v297 = v16[2];

    countAndFlagsBits = v308.schema.type._countAndFlagsBits;
    v19 = v308.schema.name._countAndFlagsBits;
    object = v308.schema.name._object;
    switch(v309)
    {
      case 1:
        v46 = sub_10000706C();
        v47 = sub_100163ABC(v46, &v303);
        v44 = ByteBuffer.writeAvroArray(_:)(v47);
        goto LABEL_30;
      case 2:
        v43 = sub_10000706C();
        sub_100163ABC(v43, &v303);
        ByteBuffer.writeAvroMap(_:)();
LABEL_30:
        v13 = v44;
        sub_100163B74(&v307);
        sub_100096480(v311);

        goto LABEL_115;
      case 3:
        v313 = v308;
        sub_100163ABC(&v308, &v303);
        v13 = ByteBuffer.writeAvroRecord(_:)(&v313);
        sub_100163B74(&v307);
        sub_100096480(v311);
        v45 = &v308;
LABEL_114:
        sub_100096480(v45);
LABEL_115:
        sub_100096480(v311);
        break;
      case 4:
        sub_1001640BC(&v303);
        v38 = (2 * v306) ^ (v306 >> 63);
        v39 = sub_10000706C();
        sub_100163ABC(v39, v301);
        sub_100163B18(&v303, v301);
        v40 = sub_1001706E8(v38);
        sub_10000E2A0(v40);
        if (v41)
        {
          sub_10000EC9C();
          Data._Representation.append(contentsOf:)();
          v42 = *(v38 + 16);
        }

        else
        {
          v42 = 0;
        }

        v62 = v304.schema.type._countAndFlagsBits;
        v64 = v304.schema.name._countAndFlagsBits;
        v63 = v304.schema.name._object;
        switch(v305)
        {
          case 1:
            v99 = sub_1000126A4();
            v100 = sub_100163ABC(v99, v301);
            v96 = ByteBuffer.writeAvroArray(_:)(v100);
            goto LABEL_83;
          case 2:
            v95 = sub_1000126A4();
            sub_100163ABC(v95, v301);
            ByteBuffer.writeAvroMap(_:)();
LABEL_83:
            v97 = v96;
            sub_100163B74(&v303);
            sub_100163B74(&v307);
            sub_100096480(v311);

            goto LABEL_207;
          case 3:
            v314 = v304;
            sub_100163ABC(&v304, v301);
            v97 = ByteBuffer.writeAvroRecord(_:)(&v314);
            sub_100163B74(&v303);
            sub_100163B74(&v307);
            sub_100096480(v311);
            v98 = &v304;
            goto LABEL_206;
          case 4:
            v89 = v42;
            sub_1001640BC(v301);
            v90 = (2 * v302) ^ (v302 >> 63);
            v91 = sub_1000126A4();
            sub_100163ABC(v91, v300);
            sub_100163B18(v301, v300);
            v92 = sub_1001706E8(v90);
            sub_10000E2A0(v92);
            if (v93)
            {
              sub_10000EC9C();
              Data._Representation.append(contentsOf:)();
              v94 = *(v90 + 16);
            }

            else
            {
              v94 = 0;
            }

            sub_100172EF0(v315, v301);
            v124 = ByteBuffer.writeAvroValue(_:)(v315);
            sub_100163B74(v301);
            sub_100163B74(&v303);
            sub_100163B74(&v307);
            sub_100096480(v311);
            v125 = sub_1000126A4();
            sub_100096480(v125);
            v126 = sub_10000706C();
            sub_100096480(v126);
            sub_100096480(v311);
            v97 = v94 + v124;
            if (__OFADD__(v94, v124))
            {
              goto LABEL_340;
            }

            v42 = v89;
            goto LABEL_209;
          default:
            switch(LOBYTE(v304.schema.name._object))
            {
              case 1:
                v166 = sub_1001732CC();
                goto LABEL_190;
              case 2:
                v166 = sub_1001706E8((2 * v304.schema.type._countAndFlagsBits) ^ (v304.schema.type._countAndFlagsBits >> 63));
LABEL_190:
                sub_10000E2A0(v166);
                if (v168)
                {
                  sub_10000EC9C();
                  Data._Representation.append(contentsOf:)();
                  v97 = v63[2];
                }

                else
                {
                  v97 = 0;
                }

                goto LABEL_204;
              case 3:
                sub_100046184(&qword_100216160, &qword_10019A598);
                v67 = sub_10000BB9C();
                sub_100008270(v67);
                *(sub_10000CF08(v167) + 32) = v62;
                goto LABEL_187;
              case 4:
                sub_100046184(&qword_100216160, &qword_10019A598);
                v67 = sub_100173104();
                sub_100008270(v67);
                *(sub_10000CF08(v165) + 32) = v62;
                goto LABEL_187;
              case 5:
                if ((v304.schema.type._object & 0x1000000000000000) != 0)
                {
                  v171 = sub_1000126FC();
                }

                else
                {
                  sub_10000FF70();
                  if (v80)
                  {
                    v171 = v169;
                  }

                  else
                  {
                    v171 = v170;
                  }
                }

                v172 = (2 * v171) ^ (v171 >> 63);
                v173 = sub_1000126A4();
                sub_100163ABC(v173, v301);
                v174 = sub_1001706E8(v172);
                sub_10000E2A0(v174);
                v293 = v42;
                if (v175)
                {
                  sub_10000EC9C();
                  Data._Representation.append(contentsOf:)();
                  v176 = *(v172 + 16);
                }

                else
                {
                  v176 = 0;
                }

                static String.Encoding.utf8.getter();
                sub_100172E5C();
                sub_10000CD20();
                v210(v295, v296);
                sub_10017317C();
                if (!v212 & v211)
                {
                  v213 = 0;
                }

                else
                {
                  v213 = v172;
                }

                if (!v212 & v211)
                {
                  v214 = 0xC000000000000000;
                }

                else
                {
                  v214 = v62;
                }

                sub_100173004();
                Data.append(_:)();
                switch(v214 >> 62)
                {
                  case 1uLL:
                    v235 = sub_100173004();
                    sub_100014A40(v235, v236);
                    sub_100163B74(&v303);
                    sub_100163B74(&v307);
                    sub_100096480(v311);
                    v237 = sub_1000126A4();
                    sub_100096480(v237);
                    if (__OFSUB__(HIDWORD(v213), v213))
                    {
                      goto LABEL_372;
                    }

                    v218 = HIDWORD(v213) - v213;
                    break;
                  case 2uLL:
                    v226 = v176;
                    v228 = *(v213 + 16);
                    v227 = *(v213 + 24);
                    v229 = sub_100173004();
                    sub_100014A40(v229, v230);
                    sub_100163B74(&v303);
                    sub_100163B74(&v307);
                    sub_100096480(v311);
                    v231 = sub_1000126A4();
                    sub_100096480(v231);
                    v218 = v227 - v228;
                    if (__OFSUB__(v227, v228))
                    {
                      goto LABEL_371;
                    }

                    v42 = v293;
                    v176 = v226;
                    break;
                  case 3uLL:
                    v232 = sub_100173004();
                    sub_100014A40(v232, v233);
                    sub_100163B74(&v303);
                    sub_100163B74(&v307);
                    sub_100096480(v311);
                    v234 = sub_1000126A4();
                    sub_100096480(v234);
                    v218 = 0;
                    break;
                  default:
                    v215 = sub_100173004();
                    sub_100014A40(v215, v216);
                    sub_100163B74(&v303);
                    sub_100163B74(&v307);
                    sub_100096480(v311);
                    v217 = sub_1000126A4();
                    sub_100096480(v217);
                    v218 = BYTE6(v214);
                    break;
                }

                v238 = sub_10000706C();
                sub_100096480(v238);
                v97 = v176 + v218;
                if (!__OFADD__(v176, v218))
                {
                  goto LABEL_208;
                }

                goto LABEL_358;
              case 6:
                v177 = (v304.schema.type._object >> 60) & 3;
                if (v177)
                {
                  v178 = v304.schema.type._object >> 62;
                  v289 = BYTE6(v304.schema.type._object);
                  v294 = v42;
                  v179 = 0;
                  if (v177 != 1)
                  {
                    v225 = v304.schema.type._object >> 62;
                    switch(v178)
                    {
                      case 1uLL:
                        sub_100173130();
                        if (v181)
                        {
                          goto LABEL_374;
                        }

                        v179 = v255;
LABEL_298:
                        v258 = sub_1000126A4();
                        sub_100163ABC(v258, v301);
LABEL_299:
                        v259 = sub_1001706E8((2 * v179) ^ (v179 >> 63));
                        sub_10000E2A0(v259);
                        if (v260)
                        {
                          sub_10000EC9C();
                          Data._Representation.append(contentsOf:)();
                          v261 = *(v179 + 16);
                        }

                        else
                        {
                          v261 = 0;
                        }

                        sub_100172F80();
                        switch(v225)
                        {
                          case 0:
                            sub_100163B74(&v303);
                            sub_100163B74(&v307);
                            sub_100096480(v311);
                            v262 = v289;
                            goto LABEL_310;
                          case 1:
                            sub_100163B74(&v303);
                            sub_100163B74(&v307);
                            sub_100096480(v311);
                            sub_100173130();
                            if (v181)
                            {
                              goto LABEL_376;
                            }

                            v262 = v262;
LABEL_310:
                            v97 = v261 + v262;
                            if (__OFADD__(v261, v262))
                            {
                              goto LABEL_369;
                            }

LABEL_320:
                            v42 = v294;
                            break;
                          case 2:
                            v264 = *(v62 + 16);
                            v263 = *(v62 + 24);
                            sub_100163B74(&v303);
                            sub_100163B74(&v307);
                            sub_100096480(v311);
                            v262 = v263 - v264;
                            if (!__OFSUB__(v263, v264))
                            {
                              goto LABEL_310;
                            }

                            goto LABEL_375;
                          case 3:
                            sub_100163B74(&v303);
                            sub_100163B74(&v307);
                            sub_100096480(v311);
                            v262 = 0;
                            goto LABEL_310;
                          default:
                            goto LABEL_381;
                        }

                        goto LABEL_205;
                      case 2uLL:
                        v257 = *(v304.schema.type._countAndFlagsBits + 16);
                        v256 = *(v304.schema.type._countAndFlagsBits + 24);
                        v179 = v256 - v257;
                        if (!__OFSUB__(v256, v257))
                        {
                          goto LABEL_298;
                        }

                        __break(1u);
LABEL_374:
                        __break(1u);
LABEL_375:
                        __break(1u);
LABEL_376:
                        __break(1u);
LABEL_377:
                        __break(1u);
LABEL_378:
                        __break(1u);
LABEL_379:
                        __break(1u);
LABEL_380:
                        __break(1u);
                        goto LABEL_381;
                      case 3uLL:
                        goto LABEL_299;
                      default:
                        v179 = BYTE6(v304.schema.type._object);
                        goto LABEL_299;
                    }
                  }

                  v287 = v304.schema.type._object >> 62;
                  switch(v178)
                  {
                    case 1uLL:
                      sub_100173130();
                      if (v181)
                      {
                        goto LABEL_378;
                      }

                      v179 = v247;
LABEL_288:
                      v250 = sub_1000126A4();
                      sub_100163ABC(v250, v301);
LABEL_289:
                      if (!__OFSUB__(v179, v64))
                      {
                        v251 = sub_100173028(v179 - v64);
                        sub_10000E2A0(v251);
                        if (v252)
                        {
                          sub_10000EC9C();
                          Data._Representation.append(contentsOf:)();
                          v253 = *(v179 + 16);
                        }

                        else
                        {
                          v253 = 0;
                        }

                        sub_100172F80();
                        switch(v287)
                        {
                          case 1:
                            sub_100163B74(&v303);
                            sub_100163B74(&v307);
                            sub_100096480(v311);
                            sub_100173130();
                            if (v181)
                            {
                              goto LABEL_380;
                            }

                            v254 = v254;
LABEL_319:
                            v97 = v253 + v254;
                            if (!__OFADD__(v253, v254))
                            {
                              goto LABEL_320;
                            }

                            goto LABEL_370;
                          case 2:
                            v266 = *(v62 + 16);
                            v265 = *(v62 + 24);
                            sub_100163B74(&v303);
                            sub_100163B74(&v307);
                            sub_100096480(v311);
                            v254 = v265 - v266;
                            if (!__OFSUB__(v265, v266))
                            {
                              goto LABEL_319;
                            }

                            goto LABEL_379;
                          case 3:
                            sub_100163B74(&v303);
                            sub_100163B74(&v307);
                            sub_100096480(v311);
                            v254 = 0;
                            goto LABEL_319;
                          default:
                            sub_100163B74(&v303);
                            sub_100163B74(&v307);
                            sub_100096480(v311);
                            v254 = v289;
                            goto LABEL_319;
                        }
                      }

                      break;
                    case 2uLL:
                      v249 = *(v304.schema.type._countAndFlagsBits + 16);
                      v248 = *(v304.schema.type._countAndFlagsBits + 24);
                      v179 = v248 - v249;
                      if (!__OFSUB__(v248, v249))
                      {
                        goto LABEL_288;
                      }

                      goto LABEL_377;
                    case 3uLL:
                      goto LABEL_289;
                    default:
                      v179 = BYTE6(v304.schema.type._object);
                      goto LABEL_289;
                  }

                  goto LABEL_368;
                }

                v219 = v42;
                v220 = 2 * *(v304.schema.type._countAndFlagsBits + 16);
                v221 = sub_1000126A4();
                sub_100163ABC(v221, v301);
                v222 = sub_1001706E8(v220);
                sub_10000E2A0(v222);
                if (v223)
                {
                  sub_10000EC9C();
                  Data._Representation.append(contentsOf:)();
                  v224 = *(v220 + 16);
                }

                else
                {
                  v224 = 0;
                }

                if (*(v62 + 16))
                {
                  sub_10017329C();
                  v239 = *(v62 + 16);
                }

                else
                {
                  v239 = 0;
                }

                sub_100163B74(&v303);
                sub_100163B74(&v307);
                sub_100096480(v311);
                v97 = v224 + v239;
                if (__OFADD__(v224, v239))
                {
                  goto LABEL_367;
                }

                v42 = v219;
LABEL_205:
                v98 = sub_1000126A4();
LABEL_206:
                sub_100096480(v98);
LABEL_207:
                v180 = sub_10000706C();
                sub_100096480(v180);
LABEL_208:
                sub_100096480(v311);
LABEL_209:
                v13 = v42 + v97;
                if (__OFADD__(v42, v97))
                {
                  goto LABEL_332;
                }

                break;
              case 7:
                sub_100163B74(&v303);
                sub_100163B74(&v307);
                sub_100096480(v311);
                v97 = 0;
                goto LABEL_205;
              default:
                v65 = v42;
                v66 = v304.schema.type._countAndFlagsBits & 1;
                sub_100046184(&qword_100216160, &qword_10019A598);
                v67 = sub_1001730BC();
                sub_100008270(v67);
                *(sub_10000CF08(v68) + 32) = v66;
                v42 = v65;
LABEL_187:
                Data._Representation.append(contentsOf:)();
                v97 = v67[2];

LABEL_204:
                sub_100163B74(&v303);
                sub_100163B74(&v307);
                sub_100096480(v311);
                goto LABEL_205;
            }

            break;
        }

        break;
      default:
        switch(LOBYTE(v308.schema.name._object))
        {
          case 1:
            v110 = sub_1001732CC();
            goto LABEL_99;
          case 2:
            v110 = sub_1001706E8((2 * v308.schema.type._countAndFlagsBits) ^ (v308.schema.type._countAndFlagsBits >> 63));
LABEL_99:
            sub_100172FD4(v110);
            if (v113)
            {
              sub_100013010();
              v13 = object[2];
            }

            else
            {
              v13 = 0;
            }

            goto LABEL_113;
          case 3:
            sub_100046184(&qword_100216160, &qword_10019A598);
            v22 = sub_10000BB9C();
            sub_100008270(v22);
            *(v22 + 16) = 4;
            *(v22 + 24) = v111;
            *(v22 + 32) = countAndFlagsBits;
            goto LABEL_96;
          case 4:
            sub_100046184(&qword_100216160, &qword_10019A598);
            v22 = sub_100173104();
            sub_100008270(v22);
            *(v22 + 16) = 8;
            *(v22 + 24) = v109;
            *(v22 + 32) = countAndFlagsBits;
            goto LABEL_96;
          case 5:
            if ((v308.schema.type._object & 0x1000000000000000) != 0)
            {
              v116 = sub_1000126FC();
            }

            else
            {
              sub_10000FF70();
              if (v80)
              {
                v116 = v114;
              }

              else
              {
                v116 = v115;
              }
            }

            v117 = (2 * v116) ^ (v116 >> 63);
            v118 = sub_10000706C();
            sub_100163ABC(v118, &v303);
            v119 = sub_1001706E8(v117);
            sub_10000E2A0(v119);
            if (v120)
            {
              sub_10000EC9C();
              Data._Representation.append(contentsOf:)();
              v291 = *(v117 + 16);
            }

            else
            {
              v291 = 0;
            }

            static String.Encoding.utf8.getter();
            sub_100172E5C();
            sub_10000CD20();
            v139(v295, v296);
            sub_10017317C();
            if (!v141 & v140)
            {
              v142 = 0;
            }

            else
            {
              v142 = v117;
            }

            if (!v141 & v140)
            {
              v143 = 0xC000000000000000;
            }

            else
            {
              v143 = countAndFlagsBits;
            }

            sub_10001BD4C();
            Data.append(_:)();
            switch(v143 >> 62)
            {
              case 1uLL:
                v162 = sub_10001BD4C();
                sub_100014A40(v162, v163);
                sub_100163B74(&v307);
                sub_100096480(v311);
                v164 = sub_10000706C();
                sub_100096480(v164);
                sub_100096480(v311);
                LODWORD(v147) = HIDWORD(v142) - v142;
                if (__OFSUB__(HIDWORD(v142), v142))
                {
                  goto LABEL_356;
                }

                v147 = v147;
LABEL_181:
                v13 = v291 + v147;
                if (!__OFADD__(v291, v147))
                {
                  goto LABEL_210;
                }

                goto LABEL_343;
              case 2uLL:
                v155 = *(v142 + 16);
                v154 = *(v142 + 24);
                v156 = sub_10001BD4C();
                sub_100014A40(v156, v157);
                sub_100163B74(&v307);
                sub_100096480(v311);
                v158 = sub_10000706C();
                sub_100096480(v158);
                sub_100096480(v311);
                v147 = v154 - v155;
                if (!__OFSUB__(v154, v155))
                {
                  goto LABEL_181;
                }

                goto LABEL_357;
              case 3uLL:
                v159 = sub_10001BD4C();
                sub_100014A40(v159, v160);
                sub_100163B74(&v307);
                sub_100096480(v311);
                v161 = sub_10000706C();
                sub_100096480(v161);
                sub_100096480(v311);
                v147 = 0;
                goto LABEL_181;
              default:
                v144 = sub_10001BD4C();
                sub_100014A40(v144, v145);
                sub_100163B74(&v307);
                sub_100096480(v311);
                v146 = sub_10000706C();
                sub_100096480(v146);
                sub_100096480(v311);
                v147 = BYTE6(v143);
                goto LABEL_181;
            }

          case 6:
            v121 = (v308.schema.type._object >> 60) & 3;
            if (v121)
            {
              v122 = v308.schema.type._object >> 62;
              countAndFlagsBits_high = HIDWORD(v308.schema.type._countAndFlagsBits);
              v292 = BYTE6(v308.schema.type._object);
              if (v121 != 1)
              {
                v153 = 0;
                switch(v122)
                {
                  case 1uLL:
                    if (__OFSUB__(HIDWORD(v308.schema.type._countAndFlagsBits), v308.schema.type._countAndFlagsBits))
                    {
                      goto LABEL_362;
                    }

                    v153 = HIDWORD(v308.schema.type._countAndFlagsBits) - LODWORD(v308.schema.type._countAndFlagsBits);
LABEL_234:
                    v194 = sub_10000706C();
                    sub_100163ABC(v194, &v303);
LABEL_235:
                    v195 = sub_1001706E8((2 * v153) ^ (v153 >> 63));
                    sub_100172FD4(v195);
                    if (v196)
                    {
                      sub_100013010();
                      v197 = object[2];
                    }

                    else
                    {
                      v197 = 0;
                    }

                    sub_100172F80();
                    switch(v122)
                    {
                      case 0:
                        sub_100163B74(&v307);
                        sub_100096480(v311);
                        v198 = sub_10000706C();
                        sub_100096480(v198);
                        sub_100096480(v311);
                        v199 = v292;
                        goto LABEL_246;
                      case 1:
                        sub_100163B74(&v307);
                        sub_100096480(v311);
                        v204 = sub_10000706C();
                        sub_100096480(v204);
                        sub_100096480(v311);
                        LODWORD(v199) = countAndFlagsBits_high - countAndFlagsBits;
                        if (__OFSUB__(countAndFlagsBits_high, countAndFlagsBits))
                        {
                          goto LABEL_364;
                        }

                        v199 = v199;
LABEL_246:
                        v13 = v197 + v199;
                        if (!__OFADD__(v197, v199))
                        {
                          goto LABEL_210;
                        }

                        goto LABEL_354;
                      case 2:
                        v201 = *(countAndFlagsBits + 16);
                        v200 = *(countAndFlagsBits + 24);
                        sub_100163B74(&v307);
                        sub_100096480(v311);
                        v202 = sub_10000706C();
                        sub_100096480(v202);
                        sub_100096480(v311);
                        v199 = v200 - v201;
                        if (!__OFSUB__(v200, v201))
                        {
                          goto LABEL_246;
                        }

                        goto LABEL_363;
                      case 3:
                        sub_100163B74(&v307);
                        sub_100096480(v311);
                        v203 = sub_10000706C();
                        sub_100096480(v203);
                        sub_100096480(v311);
                        v199 = 0;
                        goto LABEL_246;
                      default:
                        goto LABEL_381;
                    }

                  case 2uLL:
                    v193 = *(v308.schema.type._countAndFlagsBits + 16);
                    v192 = *(v308.schema.type._countAndFlagsBits + 24);
                    v153 = v192 - v193;
                    if (!__OFSUB__(v192, v193))
                    {
                      goto LABEL_234;
                    }

                    goto LABEL_361;
                  case 3uLL:
                    goto LABEL_235;
                  default:
                    v153 = BYTE6(v308.schema.type._object);
                    goto LABEL_235;
                }
              }

              v123 = 0;
              switch(v122)
              {
                case 1uLL:
                  if (__OFSUB__(HIDWORD(v308.schema.type._countAndFlagsBits), v308.schema.type._countAndFlagsBits))
                  {
                    goto LABEL_360;
                  }

                  v123 = HIDWORD(v308.schema.type._countAndFlagsBits) - LODWORD(v308.schema.type._countAndFlagsBits);
LABEL_224:
                  v186 = sub_10000706C();
                  sub_100163ABC(v186, &v303);
LABEL_225:
                  if (!__OFSUB__(v123, v19))
                  {
                    v187 = sub_100173028(v123 - v19);
                    sub_100172FD4(v187);
                    if (v188)
                    {
                      sub_100013010();
                      v189 = *(v123 + 16);
                    }

                    else
                    {
                      v189 = 0;
                    }

                    sub_100172F80();
                    switch(v122)
                    {
                      case 1:
                        sub_100163B74(&v307);
                        sub_100096480(v311);
                        v209 = sub_10000706C();
                        sub_100096480(v209);
                        sub_100096480(v311);
                        LODWORD(v191) = countAndFlagsBits_high - countAndFlagsBits;
                        if (__OFSUB__(countAndFlagsBits_high, countAndFlagsBits))
                        {
                          goto LABEL_366;
                        }

                        v191 = v191;
LABEL_255:
                        v13 = v189 + v191;
                        if (!__OFADD__(v189, v191))
                        {
                          goto LABEL_210;
                        }

                        goto LABEL_355;
                      case 2:
                        v206 = *(countAndFlagsBits + 16);
                        v205 = *(countAndFlagsBits + 24);
                        sub_100163B74(&v307);
                        sub_100096480(v311);
                        v207 = sub_10000706C();
                        sub_100096480(v207);
                        sub_100096480(v311);
                        v191 = v205 - v206;
                        if (!__OFSUB__(v205, v206))
                        {
                          goto LABEL_255;
                        }

                        goto LABEL_365;
                      case 3:
                        sub_100163B74(&v307);
                        sub_100096480(v311);
                        v208 = sub_10000706C();
                        sub_100096480(v208);
                        sub_100096480(v311);
                        v191 = 0;
                        goto LABEL_255;
                      default:
                        sub_100163B74(&v307);
                        sub_100096480(v311);
                        v190 = sub_10000706C();
                        sub_100096480(v190);
                        sub_100096480(v311);
                        v191 = v292;
                        goto LABEL_255;
                    }
                  }

                  break;
                case 2uLL:
                  v185 = *(v308.schema.type._countAndFlagsBits + 16);
                  v184 = *(v308.schema.type._countAndFlagsBits + 24);
                  v123 = v184 - v185;
                  if (!__OFSUB__(v184, v185))
                  {
                    goto LABEL_224;
                  }

                  goto LABEL_359;
                case 3uLL:
                  goto LABEL_225;
                default:
                  v123 = BYTE6(v308.schema.type._object);
                  goto LABEL_225;
              }

LABEL_353:
              __break(1u);
LABEL_354:
              __break(1u);
LABEL_355:
              __break(1u);
LABEL_356:
              __break(1u);
LABEL_357:
              __break(1u);
LABEL_358:
              __break(1u);
LABEL_359:
              __break(1u);
LABEL_360:
              __break(1u);
LABEL_361:
              __break(1u);
LABEL_362:
              __break(1u);
LABEL_363:
              __break(1u);
LABEL_364:
              __break(1u);
LABEL_365:
              __break(1u);
LABEL_366:
              __break(1u);
LABEL_367:
              __break(1u);
LABEL_368:
              __break(1u);
LABEL_369:
              __break(1u);
LABEL_370:
              __break(1u);
LABEL_371:
              __break(1u);
LABEL_372:
              __break(1u);
            }

            v148 = 2 * *(v308.schema.type._countAndFlagsBits + 16);
            v149 = sub_10000706C();
            sub_100163ABC(v149, &v303);
            v150 = sub_1001706E8(v148);
            sub_10000E2A0(v150);
            if (v151)
            {
              sub_10000EC9C();
              Data._Representation.append(contentsOf:)();
              v152 = *(v148 + 16);
            }

            else
            {
              v152 = 0;
            }

            if (*(countAndFlagsBits + 16))
            {
              sub_10017329C();
              v182 = *(countAndFlagsBits + 16);
            }

            else
            {
              v182 = 0;
            }

            sub_100163B74(&v307);
            sub_100096480(v311);
            v183 = sub_10000706C();
            sub_100096480(v183);
            sub_100096480(v311);
            v181 = __OFADD__(v152, v182);
            v13 = v152 + v182;
            if (v181)
            {
              goto LABEL_352;
            }

            break;
          case 7:
            sub_100163B74(&v307);
            sub_100096480(v311);
            v112 = sub_10000706C();
            sub_100096480(v112);
            sub_100096480(v311);
            v13 = 0;
            goto LABEL_210;
          default:
            v21 = v308.schema.type._countAndFlagsBits & 1;
            sub_100046184(&qword_100216160, &qword_10019A598);
            v22 = sub_1001730BC();
            sub_100008270(v22);
            *(v22 + 16) = 1;
            *(v22 + 24) = v23;
            *(v22 + 32) = v21;
LABEL_96:
            Data._Representation.append(contentsOf:)();
            v13 = *(v22 + 16);

LABEL_113:
            sub_100163B74(&v307);
            sub_100096480(v311);
            v45 = sub_10000706C();
            goto LABEL_114;
        }

        break;
    }

LABEL_210:
    v27 = v297;
    v26 = v297 + v13;
    if (__OFADD__(v297, v13))
    {
      goto LABEL_331;
    }

LABEL_211:
    v181 = __OFADD__(v1, v26);
    v1 += v26;
    if (v181)
    {
      break;
    }

    if (v10 == v8)
    {
      v274 = sub_100006D64();
      sub_10006C9F0(v274, v275, v276, v277);
      v8 = v278;
      v13 = *(v278 + 16);
      v27 = *(v278 + 24);
      v10 = v13 + 1;
      if (v13 >= v27 >> 1)
      {
        goto LABEL_333;
      }

      goto LABEL_325;
    }
  }

  __break(1u);
LABEL_331:
  __break(1u);
LABEL_332:
  __break(1u);
LABEL_333:
  v284 = sub_1000066A8(v27);
  sub_10006C9F0(v284, v10, 1, v8);
  v8 = v285;
LABEL_325:
  *(v8 + 16) = v10;
  *(v8 + v13 + 32) = 0;
  ByteBuffer.writeBytes(_:)(v8);
  sub_10000AB28();

  if (__OFADD__(v1, v0))
  {
    __break(1u);
LABEL_335:
    __break(1u);
    goto LABEL_336;
  }

LABEL_329:
  sub_100005460();
}

void ByteBuffer.writeAvroMap(_:)()
{
  sub_100005478();
  v3 = v2;
  v175 = type metadata accessor for String.Encoding();
  v4 = sub_100003650(v175);
  v6 = v5;
  v8 = *(v7 + 64);
  __chkstk_darwin(v4);
  sub_100004370();
  v174 = v9;
  v10 = *(v3 + 16);
  if (!v10)
  {
    v160 = sub_100006D64();
    sub_10006C9F0(v160, v161, v162, v163);
    sub_1001731C4(v164);
    if (!v32)
    {
LABEL_196:
      sub_10017323C();
      sub_1000054F4();

      goto LABEL_197;
    }

LABEL_207:
    v167 = sub_1000066A8(v108);
    sub_10006C9F0(v167, v3, 1, v1);
    goto LABEL_196;
  }

  v11 = 2 * v10;

  v12 = sub_1001706E8(v11);
  v13 = ByteBuffer.writeBytes(_:)(v12);

  v14 = 0;
  v15 = v3 + 64;
  v16 = 1 << *(v3 + 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v1 = v17 & *(v3 + 64);
  v18 = (v16 + 63) >> 6;
  v172 = v3 + 64;
  v173 = (v6 + 8);
  v170 = v3;
  v171 = v18;
  if (v1)
  {
    while (1)
    {
      v19 = v14;
LABEL_9:
      v20 = *(v3 + 56);
      v21 = (*(v3 + 48) + 16 * (__clz(__rbit64(v1)) | (v19 << 6)));
      v23 = *v21;
      v22 = v21[1];
      sub_10000BFF0();
      memcpy(v184, v24, sizeof(v184));
      if ((v22 & 0x1000000000000000) != 0)
      {
        v25 = String.UTF8View._foreignCount()();
      }

      else if ((v22 & 0x2000000000000000) != 0)
      {
        v25 = HIBYTE(v22) & 0xF;
      }

      else
      {
        v25 = v23 & 0xFFFFFFFFFFFFLL;
      }

      v26 = (2 * v25) ^ (v25 >> 63);

      sub_100172FB0();
      v27 = sub_1001706E8(v26);
      sub_100015BE4(v27);
      v177 = v13;
      if (v28)
      {
        sub_10000C910();
        Data._Representation.append(contentsOf:)();
        v29 = *(v26 + 16);
      }

      else
      {
        v29 = 0;
      }

      v1 &= v1 - 1;

      v3 = v174;
      static String.Encoding.utf8.getter();
      sub_100172FC8();
      v30 = String.data(using:allowLossyConversion:)();
      v13 = v31;
      (*v173)(v174, v175);
      sub_10017317C();
      if (!v33 & v32)
      {
        v34 = 0;
      }

      else
      {
        v34 = v30;
      }

      if (!v33 & v32)
      {
        v12 = 0xC000000000000000;
      }

      else
      {
        v12 = v13;
      }

      sub_100037EB4();
      Data.append(_:)();

      switch(v12 >> 62)
      {
        case 1uLL:
          v42 = sub_100037EB4();
          sub_100014A40(v42, v43);
          v14 = (HIDWORD(v34) - v34);
          if (__OFSUB__(HIDWORD(v34), v34))
          {
            goto LABEL_202;
          }

          v14 = v14;
LABEL_30:
          v3 = v29 + v14;
          if (__OFADD__(v29, v14))
          {
            goto LABEL_199;
          }

          break;
        case 2uLL:
          v13 = *(v34 + 16);
          v37 = *(v34 + 24);
          v38 = sub_100037EB4();
          sub_100014A40(v38, v39);
          v14 = v37 - v13;
          if (!__OFSUB__(v37, v13))
          {
            goto LABEL_30;
          }

          goto LABEL_203;
        case 3uLL:
          v40 = sub_100037EB4();
          sub_100014A40(v40, v41);
          v14 = 0;
          goto LABEL_30;
        default:
          v35 = sub_100037EB4();
          sub_100014A40(v35, v36);
          v14 = BYTE6(v12);
          goto LABEL_30;
      }

      v44 = *v184;
      v45 = *&v184[16];
      v12 = *&v184[24];
      v176 = v29 + v14;
      switch(v184[64])
      {
        case 1:
          v54 = sub_100172FB0();
          v52 = ByteBuffer.writeAvroArray(_:)(v54);
          goto LABEL_39;
        case 2:
          v51 = sub_100172FB0();
          v52 = ByteBuffer.writeAvroMap(_:)(v51);
LABEL_39:
          v53 = v52;
          sub_100096480(v184);

          goto LABEL_56;
        case 3:
          v185 = *v184;
          sub_100172FB0();
          v53 = ByteBuffer.writeAvroRecord(_:)(&v185);
LABEL_55:
          sub_100096480(v184);
          sub_100096480(v184);
LABEL_56:
          v13 = v177;
          goto LABEL_57;
        case 4:
          sub_1001640BC(&v180);
          v48 = (2 * v183) ^ (v183 >> 63);
          sub_100163ABC(v184, v179);
          sub_100163B18(&v180, v179);
          v49 = sub_1001706E8(v48);
          sub_100015BE4(v49);
          if (v50)
          {
            sub_10000C910();
            Data._Representation.append(contentsOf:)();
            v168 = *(v48 + 16);
          }

          else
          {
            v168 = 0;
          }

          countAndFlagsBits = v181.schema.type._countAndFlagsBits;
          object = v181.schema.type._object;
          v57 = v181.schema.name._countAndFlagsBits;
          v12 = v181.schema.name._object;
          switch(v182)
          {
            case 1:
              v71 = sub_10001BF00();
              v72 = sub_100163ABC(v71, v179);
              v67 = ByteBuffer.writeAvroArray(_:)(v72);
              goto LABEL_50;
            case 2:
              v65 = sub_10001BF00();
              v66 = sub_100163ABC(v65, v179);
              v67 = ByteBuffer.writeAvroMap(_:)(v66);
LABEL_50:
              v69 = v67;
              sub_100163B74(&v180);
              sub_100096480(v184);

              goto LABEL_106;
            case 3:
              v186 = v181;
              sub_100163ABC(&v181, v179);
              v68 = ByteBuffer.writeAvroRecord(_:)(&v186);
LABEL_48:
              v69 = v68;
              sub_100163B74(&v180);
              sub_100096480(v184);
              v70 = &v181;
              goto LABEL_105;
            case 4:
              memcpy(v179, (v181.schema.type._countAndFlagsBits + 16), sizeof(v179));
              v60 = (2 * v179[10]) ^ (v179[10] >> 63);
              v61 = sub_10001BF00();
              sub_100163ABC(v61, v178);
              sub_100163B18(v179, v178);
              v62 = sub_1001706E8(v60);
              sub_100015BE4(v62);
              if (v63)
              {
                sub_10000C910();
                Data._Representation.append(contentsOf:)();
                v64 = *(v60 + 16);
              }

              else
              {
                v64 = 0;
              }

              sub_100172EF0(v187, v179);
              v12 = ByteBuffer.writeAvroValue(_:)(v187);
              sub_100163B74(v179);
              sub_100163B74(&v180);
              sub_100096480(v184);
              v86 = sub_10001BF00();
              sub_100096480(v86);
              sub_100096480(v184);
              v69 = v64 + v12;
              if (!__OFADD__(v64, v12))
              {
                goto LABEL_107;
              }

              __break(1u);
              goto LABEL_208;
            default:
              switch(LOBYTE(v181.schema.name._object))
              {
                case 1:
                  v106 = sub_1001705C0((2 * LODWORD(v181.schema.type._countAndFlagsBits)) ^ (SLODWORD(v181.schema.type._countAndFlagsBits) >> 31));
                  goto LABEL_117;
                case 2:
                  v106 = sub_1001706E8((2 * v181.schema.type._countAndFlagsBits) ^ (v181.schema.type._countAndFlagsBits >> 63));
LABEL_117:
                  sub_100015BE4(v106);
                  if (v111)
                  {
                    sub_10000C910();
                    Data._Representation.append(contentsOf:)();
                    v69 = *(v12 + 16);
                  }

                  else
                  {
                    v69 = 0;
                  }

                  v3 = v170;

                  sub_100163B74(&v180);
                  sub_100096480(v184);
                  v119 = sub_10001BF00();
                  sub_100096480(v119);
                  sub_100096480(v184);
                  goto LABEL_108;
                case 3:
                  sub_100046184(&qword_100216160, &qword_10019A598);
                  v12 = sub_10000BB9C();
                  sub_100008270(v12);
                  *(sub_100172E78(v107) + 32) = countAndFlagsBits;
                  goto LABEL_104;
                case 4:
                  sub_100046184(&qword_100216160, &qword_10019A598);
                  v12 = sub_100173104();
                  sub_100008270(v12);
                  *(sub_100172E78(v105) + 32) = countAndFlagsBits;
                  goto LABEL_104;
                case 5:
                  if ((v181.schema.type._object & 0x1000000000000000) != 0)
                  {
                    v112 = String.UTF8View._foreignCount()();
                  }

                  else if ((v181.schema.type._object & 0x2000000000000000) != 0)
                  {
                    v112 = (v181.schema.type._object >> 56) & 0xF;
                  }

                  else
                  {
                    v112 = v181.schema.type._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
                  }

                  v113 = (2 * v112) ^ (v112 >> 63);
                  v114 = sub_10001BF00();
                  sub_100163ABC(v114, v179);
                  v115 = sub_1001706E8(v113);
                  sub_100015BE4(v115);
                  if (v116)
                  {
                    sub_10000C910();
                    Data._Representation.append(contentsOf:)();
                    v117 = *(v113 + 16);
                  }

                  else
                  {
                    v117 = 0;
                  }

                  static String.Encoding.utf8.getter();
                  sub_100172FC8();
                  String.data(using:allowLossyConversion:)();
                  v136 = sub_100172EBC();
                  v137(v136);
                  if (v57 >> 60 == 15)
                  {
                    v138 = 0;
                  }

                  else
                  {
                    v138 = v113;
                  }

                  if (v57 >> 60 == 15)
                  {
                    v12 = 0xC000000000000000;
                  }

                  else
                  {
                    v12 = v57;
                  }

                  sub_1000E2418();
                  Data.append(_:)();
                  switch(v12 >> 62)
                  {
                    case 1uLL:
                      v151 = sub_1000E2418();
                      sub_100014A40(v151, v152);
                      sub_100163B74(&v180);
                      sub_100096480(v184);
                      v153 = sub_10001BF00();
                      sub_100096480(v153);
                      sub_100096480(v184);
                      LODWORD(v142) = HIDWORD(v138) - v138;
                      if (__OFSUB__(HIDWORD(v138), v138))
                      {
                        goto LABEL_225;
                      }

                      v142 = v142;
LABEL_186:
                      v3 = v170;
                      v18 = v171;
                      v15 = v172;
                      v109 = __OFADD__(v117, v142);
                      v69 = v117 + v142;
                      if (!v109)
                      {
                        goto LABEL_109;
                      }

                      goto LABEL_215;
                    case 2uLL:
                      v144 = *(v138 + 16);
                      v143 = *(v138 + 24);
                      v145 = sub_1000E2418();
                      sub_100014A40(v145, v146);
                      sub_100163B74(&v180);
                      sub_100096480(v184);
                      v147 = sub_10001BF00();
                      sub_100096480(v147);
                      sub_100096480(v184);
                      v142 = v143 - v144;
                      if (!__OFSUB__(v143, v144))
                      {
                        goto LABEL_186;
                      }

                      goto LABEL_224;
                    case 3uLL:
                      v148 = sub_1000E2418();
                      sub_100014A40(v148, v149);
                      sub_100163B74(&v180);
                      sub_100096480(v184);
                      v150 = sub_10001BF00();
                      sub_100096480(v150);
                      sub_100096480(v184);
                      v142 = 0;
                      goto LABEL_186;
                    default:
                      v139 = sub_1000E2418();
                      sub_100014A40(v139, v140);
                      sub_100163B74(&v180);
                      sub_100096480(v184);
                      v141 = sub_10001BF00();
                      sub_100096480(v141);
                      sub_100096480(v184);
                      v142 = BYTE6(v12);
                      goto LABEL_186;
                  }

                case 6:
                  sub_100163ABC(&v181, v179);
                  v118._rawValue = countAndFlagsBits;
                  v68 = sub_1001704E8(v118, object, v57);
                  goto LABEL_48;
                case 7:
                  sub_100163B74(&v180);
                  sub_100096480(v184);
                  v110 = sub_10001BF00();
                  sub_100096480(v110);
                  sub_100096480(v184);
                  v69 = 0;
                  goto LABEL_107;
                default:
                  v58 = v181.schema.type._countAndFlagsBits & 1;
                  sub_100046184(&qword_100216160, &qword_10019A598);
                  v12 = sub_1001730BC();
                  sub_100008270(v12);
                  *(sub_100172E78(v59) + 32) = v58;
LABEL_104:
                  Data._Representation.append(contentsOf:)();
                  v69 = *(v12 + 16);

                  sub_100163B74(&v180);
                  sub_100096480(v184);
                  v70 = sub_10001BF00();
                  break;
              }

LABEL_105:
              sub_100096480(v70);
LABEL_106:
              sub_100096480(v184);
LABEL_107:
              v3 = v170;
LABEL_108:
              v18 = v171;
              v15 = v172;
LABEL_109:
              v108 = v168;
              v53 = v168 + v69;
              if (__OFADD__(v168, v69))
              {
                goto LABEL_206;
              }

              v13 = v177;
              break;
          }

          goto LABEL_111;
        default:
          switch(v184[24])
          {
            case 1:
              v74 = sub_1001732CC();
              goto LABEL_61;
            case 2:
              v74 = sub_1001706E8((2 * *v184) ^ (*v184 >> 63));
LABEL_61:
              sub_100015BE4(v74);
              if (v76)
              {
                sub_10000C910();
                Data._Representation.append(contentsOf:)();
                v53 = *(v12 + 16);
              }

              else
              {
                v53 = 0;
              }

              v13 = v177;
              v3 = v170;

              sub_100096480(v184);
              sub_100096480(v184);
              goto LABEL_58;
            case 3:
              sub_100046184(&qword_100216160, &qword_10019A598);
              v12 = sub_10000BB9C();
              sub_100008270(v12);
              *(sub_100172E78(v75) + 32) = v44;
              goto LABEL_54;
            case 4:
              sub_100046184(&qword_100216160, &qword_10019A598);
              v12 = sub_100173104();
              sub_100008270(v12);
              *(sub_100172E78(v73) + 32) = v44;
              goto LABEL_54;
            case 5:
              if ((*&v184[8] & 0x1000000000000000) != 0)
              {
                v79 = sub_1000126FC();
              }

              else
              {
                sub_10000FF70();
                if (v33)
                {
                  v79 = v77;
                }

                else
                {
                  v79 = v78;
                }
              }

              v80 = (2 * v79) ^ (v79 >> 63);
              sub_100172FB0();
              v81 = sub_1001706E8(v80);
              sub_100015BE4(v81);
              if (v82)
              {
                sub_10000C910();
                Data._Representation.append(contentsOf:)();
                v169 = *(v80 + 16);
              }

              else
              {
                v169 = 0;
              }

              static String.Encoding.utf8.getter();
              sub_100172E5C();
              v87 = sub_100172EBC();
              v88(v87);
              if (v45 >> 60 == 15)
              {
                v89 = 0;
              }

              else
              {
                v89 = v80;
              }

              if (v45 >> 60 == 15)
              {
                v12 = 0xC000000000000000;
              }

              else
              {
                v12 = v45;
              }

              sub_1000E2418();
              Data.append(_:)();
              v13 = v177;
              switch(v12 >> 62)
              {
                case 1uLL:
                  v103 = sub_1000E2418();
                  sub_100014A40(v103, v104);
                  sub_100096480(v184);
                  sub_100096480(v184);
                  LODWORD(v92) = HIDWORD(v89) - v89;
                  if (__OFSUB__(HIDWORD(v89), v89))
                  {
                    goto LABEL_214;
                  }

                  v92 = v92;
LABEL_98:
                  v3 = v170;
                  v18 = v171;
                  v15 = v172;
                  v53 = v169 + v92;
                  if (!__OFADD__(v169, v92))
                  {
                    goto LABEL_111;
                  }

LABEL_208:
                  __break(1u);
                  break;
                case 2uLL:
                  v98 = *(v89 + 16);
                  v97 = *(v89 + 24);
                  v99 = sub_1000E2418();
                  sub_100014A40(v99, v100);
                  sub_100096480(v184);
                  sub_100096480(v184);
                  v92 = v97 - v98;
                  if (!__OFSUB__(v97, v98))
                  {
                    goto LABEL_98;
                  }

                  goto LABEL_213;
                case 3uLL:
                  v101 = sub_1000E2418();
                  sub_100014A40(v101, v102);
                  sub_100096480(v184);
                  sub_100096480(v184);
                  v92 = 0;
                  goto LABEL_98;
                default:
                  v90 = sub_1000E2418();
                  sub_100014A40(v90, v91);
                  sub_100096480(v184);
                  sub_100096480(v184);
                  v92 = BYTE6(v12);
                  goto LABEL_98;
              }

              goto LABEL_209;
            case 6:
              v83 = (*&v184[8] >> 60) & 3;
              if (v83)
              {
                v84 = *&v184[8] >> 62;
                v85 = v184[14];
                if (v83 == 1)
                {
                  v12 = 0;
                  switch(v84)
                  {
                    case 1:
                      sub_100173130();
                      if (v109)
                      {
                        goto LABEL_219;
                      }

                      v12 = v120;
LABEL_138:
                      sub_100172FB0();
LABEL_139:
                      if (!__OFSUB__(v12, v45))
                      {
                        v123 = sub_100173028(v12 - v45);
                        sub_100015BE4(v123);
                        if (v124)
                        {
                          sub_10000C910();
                          Data._Representation.append(contentsOf:)();
                          v125 = *(v12 + 16);
                        }

                        else
                        {
                          v125 = 0;
                        }

                        sub_100172F80();
                        switch(v84)
                        {
                          case 1:
                            sub_100096480(v184);
                            sub_100096480(v184);
                            sub_100173130();
                            if (v109)
                            {
                              goto LABEL_223;
                            }

                            v85 = v135;
LABEL_169:
                            v13 = v177;
                            v18 = v171;
                            v15 = v172;
                            v53 = v125 + v85;
                            if (!__OFADD__(v125, v85))
                            {
                              goto LABEL_170;
                            }

                            goto LABEL_212;
                          case 2:
                            v12 = *(v44 + 16);
                            v134 = *(v44 + 24);
                            sub_100096480(v184);
                            sub_100096480(v184);
                            v109 = __OFSUB__(v134, v12);
                            v85 = v134 - v12;
                            if (!v109)
                            {
                              goto LABEL_169;
                            }

                            goto LABEL_222;
                          case 3:
                            sub_100096480(v184);
                            sub_100096480(v184);
                            v85 = 0;
                            goto LABEL_169;
                          default:
                            sub_100096480(v184);
                            sub_100096480(v184);
                            goto LABEL_169;
                        }
                      }

                      break;
                    case 2:
                      v122 = *(*v184 + 16);
                      v121 = *(*v184 + 24);
                      v12 = v121 - v122;
                      if (!__OFSUB__(v121, v122))
                      {
                        goto LABEL_138;
                      }

                      goto LABEL_217;
                    case 3:
                      goto LABEL_139;
                    default:
                      v12 = v184[14];
                      goto LABEL_139;
                  }

LABEL_210:
                  __break(1u);
LABEL_211:
                  __break(1u);
LABEL_212:
                  __break(1u);
LABEL_213:
                  __break(1u);
LABEL_214:
                  __break(1u);
LABEL_215:
                  __break(1u);
LABEL_216:
                  __break(1u);
LABEL_217:
                  __break(1u);
LABEL_218:
                  __break(1u);
LABEL_219:
                  __break(1u);
LABEL_220:
                  __break(1u);
LABEL_221:
                  __break(1u);
LABEL_222:
                  __break(1u);
LABEL_223:
                  __break(1u);
LABEL_224:
                  __break(1u);
LABEL_225:
                  __break(1u);
                }

                v12 = 0;
                switch(v84)
                {
                  case 1:
                    sub_100173130();
                    if (v109)
                    {
                      goto LABEL_218;
                    }

                    v12 = v126;
LABEL_148:
                    sub_100172FB0();
LABEL_149:
                    v129 = sub_1001706E8((2 * v12) ^ (v12 >> 63));
                    sub_100015BE4(v129);
                    if (v130)
                    {
                      sub_10000C910();
                      Data._Representation.append(contentsOf:)();
                      v131 = *(v12 + 16);
                    }

                    else
                    {
                      v131 = 0;
                    }

                    sub_100172F80();
                    switch(v84)
                    {
                      case 0:
                        sub_100096480(v184);
                        sub_100096480(v184);
                        goto LABEL_160;
                      case 1:
                        sub_100096480(v184);
                        sub_100096480(v184);
                        sub_100173130();
                        if (v109)
                        {
                          goto LABEL_221;
                        }

                        v85 = v133;
LABEL_160:
                        v13 = v177;
                        v18 = v171;
                        v15 = v172;
                        v53 = v131 + v85;
                        if (__OFADD__(v131, v85))
                        {
                          goto LABEL_211;
                        }

LABEL_170:
                        v3 = v170;
                        break;
                      case 2:
                        v12 = *(v44 + 16);
                        v132 = *(v44 + 24);
                        sub_100096480(v184);
                        sub_100096480(v184);
                        v109 = __OFSUB__(v132, v12);
                        v85 = v132 - v12;
                        if (!v109)
                        {
                          goto LABEL_160;
                        }

                        goto LABEL_220;
                      case 3:
                        sub_100096480(v184);
                        sub_100096480(v184);
                        v85 = 0;
                        goto LABEL_160;
                      default:
                        JUMPOUT(0);
                    }

                    return;
                  case 2:
                    v128 = *(*v184 + 16);
                    v127 = *(*v184 + 24);
                    v12 = v127 - v128;
                    if (!__OFSUB__(v127, v128))
                    {
                      goto LABEL_148;
                    }

                    goto LABEL_216;
                  case 3:
                    goto LABEL_149;
                  default:
                    v12 = v184[14];
                    goto LABEL_149;
                }
              }

              else
              {
                v93 = 2 * *(*v184 + 16);
                sub_100172FB0();
                v94 = sub_1001706E8(v93);
                sub_100015BE4(v94);
                if (v95)
                {
                  sub_10000C910();
                  Data._Representation.append(contentsOf:)();
                  v96 = *(v93 + 16);
                }

                else
                {
                  v96 = 0;
                }

                if (*(v44 + 16))
                {
                  sub_10017329C();
                  v12 = *(v44 + 16);
                }

                else
                {
                  v12 = 0;
                }

                v13 = v177;
                sub_100096480(v184);
                sub_100096480(v184);
                v53 = v96 + v12;
                if (__OFADD__(v96, v12))
                {
LABEL_209:
                  __break(1u);
                  goto LABEL_210;
                }

LABEL_57:
                v3 = v170;
LABEL_58:
                v18 = v171;
                v15 = v172;
              }

LABEL_111:
              v14 = v176 + v53;
              if (__OFADD__(v176, v53))
              {
                goto LABEL_200;
              }

              v109 = __OFADD__(v13, v14);
              v13 += v14;
              if (v109)
              {
                goto LABEL_201;
              }

              v14 = v19;
              if (!v1)
              {
                goto LABEL_6;
              }

              break;
            case 7:
              sub_100096480(v184);
              sub_100096480(v184);
              v53 = 0;
              goto LABEL_56;
            default:
              v46 = v184[0] & 1;
              sub_100046184(&qword_100216160, &qword_10019A598);
              v12 = sub_1001730BC();
              sub_100008270(v12);
              *(sub_100172E78(v47) + 32) = v46;
LABEL_54:
              Data._Representation.append(contentsOf:)();
              v53 = *(v12 + 16);

              goto LABEL_55;
          }

          break;
      }
    }
  }

  while (1)
  {
LABEL_6:
    v19 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      __break(1u);
LABEL_199:
      __break(1u);
LABEL_200:
      __break(1u);
LABEL_201:
      __break(1u);
LABEL_202:
      __break(1u);
LABEL_203:
      __break(1u);
      goto LABEL_204;
    }

    if (v19 >= v18)
    {
      break;
    }

    v1 = *(v15 + 8 * v19);
    ++v14;
    if (v1)
    {
      goto LABEL_9;
    }
  }

  v154 = sub_100006D64();
  sub_10006C9F0(v154, v155, v156, v157);
  v3 = v158;
  v1 = *(v158 + 16);
  v14 = *(v158 + 24);
  v12 = v1 + 1;
  if (v1 < v14 >> 1)
  {
    goto LABEL_193;
  }

LABEL_204:
  v165 = sub_1000066A8(v14);
  sub_10006C9F0(v165, v12, 1, v3);
  v3 = v166;
LABEL_193:
  *(v3 + 16) = v12;
  v159 = sub_100172F50();
  ByteBuffer.writeBytes(_:)(v159);
  sub_10000AB28();

  if (__OFADD__(v13, v0))
  {
    __break(1u);
LABEL_206:
    __break(1u);
    goto LABEL_207;
  }

LABEL_197:
  sub_100005460();
}

Swift::Int __swiftcall ByteBuffer.writeAvroRecord(_:)(SwiftAvro::AvroRecord *a1)
{
  sub_100005478();
  v5 = v1;
  v7 = v6;
  v1035 = type metadata accessor for String.Encoding();
  v8 = *(*(v1035 - 8) + 64);
  __chkstk_darwin(v1035);
  v1034 = &v1023 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v7 + 56);
  v1027 = *(v11 + 16);
  v12 = 0;
  if (!v1027)
  {
    goto LABEL_751;
  }

  v13 = 0;
  v1025 = v11;
  v1026 = v11 + 32;
  v1032 = (v9 + 8);
  v1049 = v5;
LABEL_3:
  if (v13 >= *(v11 + 16))
  {
    goto LABEL_770;
  }

  v1036 = v12;
  v14 = (v1026 + 72 * v13);
  memcpy(v1059, v14, sizeof(v1059));
  v1037 = v13 + 1;
  v15 = *v1059;
  v16 = *&v1059[16];
  v17 = *&v1059[24];
  v1042 = *&v1059[24];
  switch(v1059[64])
  {
    case 1:
      v1023 = *&v1059[16];
      v1024 = *&v1059[8];
      v351 = *(*&v1059[24] + 16);
      if (!v351)
      {
        goto LABEL_608;
      }

      v352 = 2 * v351;
      sub_100172D9C();
      sub_100172D9C();
      v353 = sub_1001706E8(v352);
      v354 = v5;
      v355 = ByteBuffer.writeBytes(_:)(v353);

      v356 = *(v17 + 16);
      if (!v356)
      {
        goto LABEL_621;
      }

      v357 = 0;
      v1030 = *(v17 + 16);
      v1031 = v17 + 32;
      v358 = v356;
      while (2)
      {
        if (v357 >= v358)
        {
          goto LABEL_766;
        }

        v1041 = v355;
        v359 = v357;
        v354 = (v1031 + 72 * v357);
        memcpy(v1054, v354, sizeof(v1054));
        v1040 = v359 + 1;
        v2 = *v1054;
        v360 = *&v1054[8];
        v361 = *&v1054[16];
        v3 = *&v1054[24];
        v1047 = *&v1054[24];
        switch(v1054[64])
        {
          case 1:
            v1028 = *&v1054[16];
            v1029 = *&v1054[8];
            v523 = *(*&v1054[24] + 16);
            if (!v523)
            {
              sub_10000BA78();
              sub_10000BA78();
              v727 = sub_100006D64();
              sub_10006C9F0(v727, v728, v729, _swiftEmptyArrayStorage);
              sub_100008870(v730);
              if (v59)
              {
                v858 = sub_100006530(v731);
                sub_10006C9F0(v858, v859, v860, v353);
                v353 = v861;
              }

              v374 = v1041;
              goto LABEL_452;
            }

            v524 = 2 * v523;
            sub_10000BA78();
            sub_10000BA78();
            v353 = sub_1001706E8(v524);
            v525 = v5;
            v526 = ByteBuffer.writeBytes(_:)(v353);

            v527 = *(v3 + 16);
            if (v527)
            {
              v528 = 0;
              v1043 = *(v3 + 16);
              v1044 = v3 + 32;
              v529 = v527;
              while (2)
              {
                if (v528 >= v529)
                {
                  goto LABEL_757;
                }

                v4 = v5;
                sub_10017325C(72);
                v1048 = v528 + 1;
                v353 = v1050;
                countAndFlagsBits = v1052._countAndFlagsBits;
                object = v1052._object;
                switch(v1053)
                {
                  case 1:
                    v1038 = v1051;
                    v1039 = v1052._countAndFlagsBits;
                    v560 = *(v1052._object + 2);
                    if (!v560)
                    {
                      v590 = sub_10000CB00();
                      sub_100163ABC(v590, v591);
                      v592 = sub_10000CB00();
                      sub_100163ABC(v592, v593);
                      v594 = sub_100006D64();
                      sub_10006C9F0(v594, v595, v596, _swiftEmptyArrayStorage);
                      sub_100008870(v597);
                      if (v59)
                      {
                        v689 = sub_100006530(v598);
                        sub_10006C9F0(v689, v690, v691, v353);
                        v353 = v692;
                      }

                      sub_10000F70C();
                      v525 = v4;
                      Data._Representation.append(contentsOf:)();

                      sub_1000149B4();
                      v5 = v4;
LABEL_358:

                      sub_100096480(&v1050);
                      sub_100012FC8();

                      goto LABEL_385;
                    }

                    v561 = 2 * v560;
                    v562 = sub_10000CB00();
                    sub_100163ABC(v562, v563);
                    v564 = sub_10000CB00();
                    sub_100163ABC(v564, v565);
                    v566 = sub_1001706E8(v561);
                    sub_10000F300(v566);
                    v1033 = v526;
                    if (v567)
                    {
                      sub_10000B170();
                      Data._Representation.append(contentsOf:)();
                      v568 = *(v353 + 16);
                    }

                    else
                    {
                      v568 = 0;
                    }

                    v2 = object[2];
                    if (v2)
                    {
                      v632 = (object + 8);
                      while (2)
                      {
                        sub_100010018();
                        v633 = *v1057;
                        v634 = *&v1057[8];
                        v353 = *&v1057[16];
                        v635 = v1057[24];
                        switch(v1057[64])
                        {
                          case 1:
                            sub_100172D64();
                            v640 = sub_100172D64();
                            v637 = v4;
                            ByteBuffer.writeAvroArray(_:)(v640);
                            goto LABEL_397;
                          case 2:
                            sub_100172D64();
                            v638 = sub_100172D64();
                            v637 = v4;
                            ByteBuffer.writeAvroMap(_:)(v638);
LABEL_397:
                            v641 = sub_10000AFB8();
                            sub_100096480(v641);

                            goto LABEL_398;
                          case 3:
                            v1060.schema.type._countAndFlagsBits = *v1057;
                            v1060.schema.type._object = *&v1057[8];
                            v1060.schema.name = *&v1057[16];
                            v639 = *(v632 + 1);
                            v1060.schema.namespace = *v632;
                            *&v1060.schema.fields._rawValue = v639;
                            sub_100172D64();
                            v636 = ByteBuffer.writeAvroRecord(_:)(&v1060);
                            goto LABEL_394;
                          case 4:
                            sub_100172DCC(v1061);
                            sub_100172D64();
                            sub_100163B18(v1061, v1058);
                            v637 = ByteBuffer.writeAvroUnion(_:)(v1061);
                            sub_100163B74(v1061);
                            goto LABEL_395;
                          default:
                            sub_100172D64();
                            v636 = ByteBuffer.writeAvroPrimitive(_:)(v633, v634, v353, v635);
LABEL_394:
                            v637 = v636;
LABEL_395:
                            sub_100096480(v1057);
LABEL_398:
                            v74 = __OFADD__(v568, v637);
                            v568 += v637;
                            if (v74)
                            {
                              goto LABEL_753;
                            }

                            v632 += 72;
                            if (!--v2)
                            {
                              break;
                            }

                            continue;
                        }

                        break;
                      }
                    }

                    v642 = sub_100006D64();
                    sub_10006C9F0(v642, v643, v644, _swiftEmptyArrayStorage);
                    sub_1001731B0(v645);
                    if (v59)
                    {
                      v677 = sub_100006530(v646);
                      sub_10006C9F0(v677, v678, v679, v353);
                      v353 = v680;
                    }

                    v3 = v1047;
                    *(sub_10000BF64() + v2) = 0;
                    Data._Representation.append(contentsOf:)();

                    sub_1000149B4();

                    sub_100096480(&v1050);
                    sub_100012FC8();

                    v525 = v568 + v4;
                    if (__OFADD__(v568, v4))
                    {
                      goto LABEL_784;
                    }

                    v526 = v1033;
                    v528 = v1048;
                    v5 = v4;
LABEL_413:
                    v74 = __OFADD__(v526, v525);
                    v526 += v525;
                    if (v74)
                    {
                      goto LABEL_758;
                    }

                    if (v528 == v1043)
                    {
                      break;
                    }

                    v529 = *(v3 + 16);
                    continue;
                  case 2:
                    v1038 = v1051;
                    v1039 = v1052._countAndFlagsBits;
                    v1046 = v1052._object;
                    v548 = *(v1052._object + 2);
                    if (!v548)
                    {
                      v581 = sub_10000CB00();
                      sub_100163ABC(v581, v582);
                      v583 = sub_10000CB00();
                      sub_100163ABC(v583, v584);
                      v585 = sub_100006D64();
                      sub_10006C9F0(v585, v586, v587, _swiftEmptyArrayStorage);
                      sub_100008870(v588);
                      v5 = v4;
                      if (v59)
                      {
                        v685 = sub_100006530(v589);
                        sub_10006C9F0(v685, v686, v687, v353);
                        v353 = v688;
                      }

                      sub_10000F70C();
                      v525 = v4;
                      Data._Representation.append(contentsOf:)();

                      sub_1000149B4();
                      goto LABEL_358;
                    }

                    v549 = 2 * v548;
                    v550 = sub_10000CB00();
                    sub_100163ABC(v550, v551);
                    v552 = sub_10000CB00();
                    sub_100163ABC(v552, v553);
                    v554 = sub_1001706E8(v549);
                    sub_10000F300(v554);
                    v1033 = v526;
                    if (v555)
                    {
                      sub_10000B170();
                      v549 = v4;
                      Data._Representation.append(contentsOf:)();
                      v556 = *(v353 + 16);
                    }

                    else
                    {
                      v556 = 0;
                    }

                    v600 = v1046 + 64;
                    v599 = *(v1046 + 8);
                    v601 = *(v1046 + 32);
                    sub_100004538();
                    v2 = v603 & v602;
                    v4 = (v604 + 63) >> 6;

                    v605 = 0;
                    if (v2)
                    {
LABEL_361:
                      v1045 = v556;
                      v606 = v605;
                      goto LABEL_366;
                    }

                    while (1)
                    {
                      v606 = v605 + 1;
                      if (__OFADD__(v605, 1))
                      {
                        break;
                      }

                      if (v606 >= v4)
                      {

                        v627 = sub_100006D64();
                        sub_10006C9F0(v627, v628, v629, _swiftEmptyArrayStorage);
                        sub_100008870(v630);
                        if (v59)
                        {
                          v681 = sub_100006530(v631);
                          sub_10006C9F0(v681, v682, v683, v353);
                          v353 = v684;
                        }

                        v5 = v1049;
                        v3 = v1047;
                        v526 = v1033;
                        sub_10000F70C();
                        Data._Representation.append(contentsOf:)();

                        sub_1000149B4();

                        sub_100096480(&v1050);
                        sub_100012FC8();

                        v525 = v556 + v5;
                        if (!__OFADD__(v556, v5))
                        {
LABEL_385:
                          v528 = v1048;
                          goto LABEL_413;
                        }

LABEL_785:
                        __break(1u);
LABEL_786:
                        __break(1u);
LABEL_787:
                        __break(1u);
LABEL_788:
                        __break(1u);
                        goto LABEL_789;
                      }

                      v2 = *&v600[8 * v606];
                      ++v605;
                      if (v2)
                      {
                        v1045 = v556;
LABEL_366:
                        v607 = *(v1046 + 7);
                        v608 = (*(v1046 + 6) + 16 * (__clz(__rbit64(v2)) | (v606 << 6)));
                        v610 = *v608;
                        v609 = v608[1];
                        sub_10000BFF0();
                        memcpy(v1057, v611, 0x41uLL);
                        if ((v609 & 0x1000000000000000) != 0)
                        {
                          String.UTF8View._foreignCount()();
                        }

                        sub_100018A18();

                        sub_100172D64();
                        v612 = sub_1001706E8(v549);
                        v613 = v1049;
                        v614 = ByteBuffer.writeBytes(_:)(v612);

                        v615._countAndFlagsBits = v610;
                        v615._object = v609;
                        ByteBuffer.writeString(_:)(v615);
                        sub_10000AB28();

                        v74 = __OFADD__(v614, v613);
                        v616 = v614 + v613;
                        if (!v74)
                        {
                          v2 &= v2 - 1;
                          v617 = *v1057;
                          v618 = *&v1057[8];
                          v353 = *&v1057[16];
                          v619 = v1057[24];
                          switch(v1057[64])
                          {
                            case 1:
                              v624 = sub_100172D64();
                              v549 = v1049;
                              ByteBuffer.writeAvroArray(_:)(v624);
                              goto LABEL_377;
                            case 2:
                              v622 = sub_100172D64();
                              v549 = v1049;
                              ByteBuffer.writeAvroMap(_:)(v622);
LABEL_377:
                              v625 = sub_10000AFB8();
                              sub_100096480(v625);

                              goto LABEL_378;
                            case 3:
                              v1062 = *v1057;
                              sub_100172D64();
                              v549 = v1049;
                              ByteBuffer.writeAvroRecord(_:)(&v1062);
                              goto LABEL_374;
                            case 4:
                              sub_100172DCC(v1063);
                              sub_100172D64();
                              sub_100163B18(v1063, v1058);
                              v549 = v1049;
                              ByteBuffer.writeAvroUnion(_:)(v1063);
                              v621 = sub_10000AFB8();
                              sub_100096480(v621);
                              sub_100163B74(v1063);
                              goto LABEL_375;
                            default:
                              sub_100172D64();
                              v620 = v617;
                              v549 = v1049;
                              ByteBuffer.writeAvroPrimitive(_:)(v620, v618, v353, v619);
LABEL_374:
                              v623 = sub_10000AFB8();
                              sub_100096480(v623);
LABEL_375:
                              sub_100096480(v1057);
LABEL_378:
                              v626 = v616 + v549;
                              if (__OFADD__(v616, v549))
                              {
                                goto LABEL_764;
                              }

                              v556 = v1045 + v626;
                              if (__OFADD__(v1045, v626))
                              {
                                goto LABEL_765;
                              }

                              v605 = v606;
                              if (!v2)
                              {
                                continue;
                              }

                              goto LABEL_361;
                          }
                        }

LABEL_763:
                        __break(1u);
LABEL_764:
                        __break(1u);
LABEL_765:
                        __break(1u);
LABEL_766:
                        __break(1u);
LABEL_767:
                        __break(1u);
LABEL_768:
                        __break(1u);
LABEL_769:
                        __break(1u);
LABEL_770:
                        __break(1u);
LABEL_771:
                        __break(1u);
LABEL_772:
                        __break(1u);
LABEL_773:
                        __break(1u);
                        goto LABEL_774;
                      }
                    }

                    __break(1u);
LABEL_753:
                    __break(1u);
                    goto LABEL_754;
                  case 3:
                    v1064.schema.type._countAndFlagsBits = v1050;
                    v1064.schema.type._object = v1051;
                    v1064.schema.name = v1052;
                    v557 = *(v525 + 48);
                    v1064.schema.namespace = *(v525 + 32);
                    *&v1064.schema.fields._rawValue = v557;
                    v558 = sub_10000CB00();
                    sub_100163ABC(v558, v559);
                    v5 = v4;
                    v537 = ByteBuffer.writeAvroRecord(_:)(&v1064);
                    goto LABEL_343;
                  case 4:
                    sub_1000382B4();
                    sub_100025124();
                    v2 = v539 ^ (v538 >> 63);
                    v540 = (v2 & 0x7F);
                    v541 = sub_100172E24();
                    if (v2 >= 0x80)
                    {
                      sub_100163ABC(v541, v542);
                      v569 = sub_100172E24();
                      sub_100163ABC(v569, v570);
                      sub_100172ED8();
                      v571 = sub_100006D64();
                      sub_10006C9F0(v571, v572, v573, _swiftEmptyArrayStorage);
                      v353 = v574;
                      v3 = *(v574 + 16);
                      v5 = v4;
                      do
                      {
                        v575 = *(v353 + 24);
                        v525 = v3 + 1;
                        if (v3 >= v575 >> 1)
                        {
                          v577 = sub_100006530(v575);
                          sub_10006C9F0(v577, v578, v579, v353);
                          v353 = v580;
                        }

                        sub_100008C28();
                        ++v3;
                      }

                      while (v576);
                    }

                    else
                    {
                      sub_100163ABC(v541, v542);
                      v543 = sub_100172E24();
                      sub_100163ABC(v543, v544);
                      sub_100172ED8();
                      v353 = _swiftEmptyArrayStorage;
                      v5 = v4;
                    }

                    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                    {
                      v668 = *(v353 + 16);
                      v669 = sub_1000040F0();
                      sub_10006C9F0(v669, v670, v671, v353);
                      v353 = v672;
                    }

                    sub_100014CF0();
                    if (v59)
                    {
                      v673 = sub_100006530(v545);
                      sub_10006C9F0(v673, v674, v675, v353);
                      v353 = v676;
                    }

                    *(sub_10000BF64() + v2) = v540;
                    sub_100172F38();
                    v546 = *(v353 + 16);

                    sub_10000B9DC();
                    switch(v547)
                    {
                      case 1:
                        v655 = sub_100005700();
                        sub_100163ABC(v655, v1057);
                        sub_100017D04();
                        ByteBuffer.writeAvroArray(_:)(v656);
                        goto LABEL_410;
                      case 2:
                        v650 = sub_100005700();
                        sub_100163ABC(v650, v1057);
                        sub_100017D04();
                        ByteBuffer.writeAvroMap(_:)(v651);
LABEL_410:
                        sub_100172DE4();
                        sub_100096480(&v1050);

                        goto LABEL_411;
                      case 3:
                        v1065.schema.type._countAndFlagsBits = v525;
                        v1065.schema.type._object = v2;
                        v1065.schema.name._countAndFlagsBits = v353;
                        v1065.schema.name._object = v3;
                        v652 = sub_100007E7C();
                        v654 = sub_10001BCC8(&v1065, v652, v653);
                        sub_100163ABC(v654, v1057);
                        v525 = v5;
                        ByteBuffer.writeAvroRecord(_:)(&v1065);
                        goto LABEL_408;
                      case 4:
                        sub_100172D18();
                        sub_100005B10();
                        v647 = sub_100005700();
                        sub_100163ABC(v647, v1056);
                        sub_100173010();
                        v648 = sub_1001706E8(v525);
                        sub_10000F300(v648);
                        if (v649)
                        {
                          sub_10000B170();
                          v525 = v5;
                          Data._Representation.append(contentsOf:)();
                          v4 = *(v353 + 16);
                        }

                        else
                        {
                          v4 = 0;
                        }

                        sub_100172FEC();
                        switch(v657)
                        {
                          case 1:
                            sub_100023FEC();
                            sub_100017D04();
                            ByteBuffer.writeAvroArray(_:)(v665);
                            goto LABEL_426;
                          case 2:
                            sub_100023FEC();
                            sub_100017D04();
                            ByteBuffer.writeAvroMap(_:)(v660);
LABEL_426:
                            v666 = sub_10000AFB8();
                            sub_100163B74(v666);
                            sub_100163B74(v1058);
                            sub_100096480(&v1050);

                            goto LABEL_427;
                          case 3:
                            v1066.schema.type._countAndFlagsBits = v525;
                            v1066.schema.type._object = v2;
                            v1066.schema.name._countAndFlagsBits = v353;
                            v1066.schema.name._object = v3;
                            v540 = v1057;
                            v661 = sub_100007B00();
                            v663 = sub_10001BCC8(&v1066, v661, v662);
                            sub_100163ABC(v663, v1056);
                            v525 = v5;
                            ByteBuffer.writeAvroRecord(_:)(&v1066);
                            goto LABEL_424;
                          case 4:
                            sub_100172DCC(v1056);
                            sub_10001ACCC();
                            sub_10017307C();
                            sub_1001732E4();
                            v658._rawValue = sub_1001706E8(v525);
                            sub_100172F20(v658);
                            sub_100172F08();
                            sub_100172E84(v1067);
                            ByteBuffer.writeAvroValue(_:)(v1067);
                            sub_10001DA44();
                            sub_100163B74(v1057);
                            sub_100163B74(v1058);
                            sub_100096480(&v1050);
                            sub_100096480(v2 + 8);
                            v659 = sub_100005700();
                            sub_100096480(v659);
                            sub_100096480(&v1050);
                            v74 = __OFADD__(v353, v525);
                            v525 += v353;
                            if (!v74)
                            {
                              goto LABEL_428;
                            }

                            goto LABEL_818;
                          default:
                            sub_100172EA0();
                            sub_100009A4C();
LABEL_424:
                            v664 = sub_10000AFB8();
                            sub_100163B74(v664);
                            sub_100163B74(v1058);
                            sub_100096480(&v1050);
                            sub_100096480((v540 + 8));
LABEL_427:
                            v667 = sub_100005700();
                            sub_100096480(v667);
                            sub_100096480(&v1050);
LABEL_428:
                            v74 = __OFADD__(v4, v525);
                            v525 += v4;
                            v3 = v1047;
                            v528 = v1048;
                            if (!v74)
                            {
                              goto LABEL_412;
                            }

                            goto LABEL_797;
                        }

                      default:
                        sub_100013644();
                        sub_100009A4C();
LABEL_408:
                        sub_100172DE4();
                        sub_100096480(&v1050);
                        sub_100096480((v540 + 8));
LABEL_411:
                        sub_100096480(&v1050);
                        v3 = v1047;
                        v528 = v1048;
LABEL_412:
                        v74 = __OFADD__(v546, v525);
                        v525 += v546;
                        if (!v74)
                        {
                          goto LABEL_413;
                        }

                        goto LABEL_775;
                    }

                  default:
                    v532 = sub_10000CB00();
                    sub_100163ABC(v532, v533);
                    v534 = sub_10000F18C();
                    v535 = countAndFlagsBits;
                    v5 = v4;
                    v537 = ByteBuffer.writeAvroPrimitive(_:)(v534, v536, v535, object);
LABEL_343:
                    v525 = v537;
                    sub_100096480(&v1050);
                    goto LABEL_385;
                }

                break;
              }
            }

            v696 = sub_100006D64();
            sub_10006C9F0(v696, v697, v698, _swiftEmptyArrayStorage);
            sub_100008870(v699);
            if (v59)
            {
              v854 = sub_100006530(v700);
              sub_10006C9F0(v854, v855, v856, v353);
              v353 = v857;
            }

            *(v353 + 16) = v525;
            v701 = sub_100172F50();
            ByteBuffer.writeBytes(_:)(v701);
            sub_1001730EC();

            sub_100096480(v1054);
            v354 = (v526 + v5);
            if (__OFADD__(v526, v5))
            {
              goto LABEL_795;
            }

            goto LABEL_484;
          case 2:
            v1028 = *&v1054[16];
            v1029 = *&v1054[8];
            v378 = *(*&v1054[24] + 16);
            if (!v378)
            {
              sub_10000BA78();
              sub_10000BA78();
              v718 = sub_100006D64();
              sub_10006C9F0(v718, v719, v720, _swiftEmptyArrayStorage);
              sub_100008870(v721);
              v374 = v1041;
              if (v59)
              {
                v723 = sub_100006530(v722);
                sub_10006C9F0(v723, v724, v725, v353);
                v353 = v726;
              }

LABEL_452:
              sub_10000F70C();
              v354 = v5;
              Data._Representation.append(contentsOf:)();

              sub_100096480(v1054);
              sub_100012FC8();

LABEL_453:
              v732 = v1042;
LABEL_485:
              v74 = __OFADD__(v374, v354);
              v355 = v354 + v374;
              if (v74)
              {
                goto LABEL_767;
              }

              v357 = v1040;
              if (v1040 != v1030)
              {
                v358 = *(v732 + 16);
                continue;
              }

LABEL_621:
              v904 = sub_100006D64();
              sub_10006C9F0(v904, v905, v906, _swiftEmptyArrayStorage);
              sub_100008870(v907);
              if (v59)
              {
                v1010 = sub_100006530(v908);
                sub_10006C9F0(v1010, v1011, v1012, v353);
                v353 = v1013;
              }

              *(v353 + 16) = v354;
              v909 = sub_100172F50();
              v910 = ByteBuffer.writeBytes(_:)(v909);

              sub_100096480(v1059);
              v74 = __OFADD__(v355, v910);
              v14 = (v355 + v910);
              if (v74)
              {
                goto LABEL_806;
              }

              goto LABEL_656;
            }

            v379 = 2 * v378;
            sub_10000BA78();
            sub_10000BA78();
            v380._rawValue = sub_1001706E8(v379);
            sub_100172F20(v380);
            sub_1000054F4();

            v382 = (v3 + 64);
            v381 = *(v3 + 64);
            v383 = *(v3 + 32);
            sub_100004538();
            v4 = v385 & v384;
            v387 = (v386 + 63) >> 6;

            v388 = v387;
            v389 = 0;
            v1044 = v387;
            v1045 = v3 + 64;
            if (!v4)
            {
              goto LABEL_237;
            }

            while (1)
            {
              v5 = v389;
LABEL_240:
              sub_1001731F0(__rbit64(v4));
              v391 = *v390;
              v392 = v390[1];
              sub_10000BFF0();
              memcpy(v1055, v393, sizeof(v1055));
              v1048 = v391;
              if ((v392 & 0x1000000000000000) != 0)
              {
                v394 = String.UTF8View._foreignCount()();
              }

              else if ((v392 & 0x2000000000000000) != 0)
              {
                v394 = HIBYTE(v392) & 0xF;
              }

              else
              {
                v394 = v391 & 0xFFFFFFFFFFFFLL;
              }

              v1046 = v379;
              v395 = (2 * v394) ^ (v394 >> 63);
              LOBYTE(v396) = v395 & 0x7F;

              v397 = sub_1000190C0();
              if (v395 >= 0x80)
              {
                sub_100163ABC(v397, v398);
                v400 = sub_100006D64();
                sub_10006C9F0(v400, v401, v402, _swiftEmptyArrayStorage);
                v399 = v403;
                v404 = v403[2];
                do
                {
                  v1058[0] = v399;
                  sub_10000AD48();
                  sub_1001729D8(v404, v405);
                  v399 = v1058[0];
                  v406 = v1058[0] + v404++;
                  *(v1058[0] + 16) = v404;
                  *(v406 + 32) = v396 | 0x80;
                  v396 = (v395 >> 7) & 0x7F;
                  v407 = v395 >> 14;
                  v395 >>= 7;
                }

                while (v407);
              }

              else
              {
                sub_100163ABC(v397, v398);
                v399 = _swiftEmptyArrayStorage;
              }

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v513 = v399[2];
                v514 = sub_1000040F0();
                sub_10006C9F0(v514, v515, v516, v399);
                v399 = v517;
              }

              v409 = v399[2];
              v408 = v399[3];
              if (v409 >= v408 >> 1)
              {
                v518 = sub_100006530(v408);
                sub_10006C9F0(v518, v519, v520, v399);
                v399 = v521;
              }

              v4 &= v4 - 1;
              v399[2] = v409 + 1;
              *(v399 + v409 + 32) = v396;
              Data._Representation.append(contentsOf:)();
              v410 = v399[2];

              v411 = v1034;
              static String.Encoding.utf8.getter();
              v412 = String.data(using:allowLossyConversion:)();
              v414 = v413;
              sub_10017315C();
              v415(v411, v1035);
              sub_1001731E4();
              v418 = !v417 & v416 ? 0 : v412;
              v419 = !v417 & v416 ? 0xC000000000000000 : v414;
              sub_100008380();
              Data.append(_:)();

              switch(v419 >> 62)
              {
                case 1uLL:
                  v429 = sub_100008380();
                  sub_100014A40(v429, v430);
                  LODWORD(v422) = HIDWORD(v418) - v418;
                  if (__OFSUB__(HIDWORD(v418), v418))
                  {
                    goto LABEL_791;
                  }

                  v422 = v422;
LABEL_266:
                  v431 = v410 + v422;
                  v3 = v1047;
                  if (__OFADD__(v410, v422))
                  {
                    goto LABEL_772;
                  }

                  break;
                case 2uLL:
                  v424 = *(v418 + 16);
                  v423 = *(v418 + 24);
                  v425 = sub_100008380();
                  sub_100014A40(v425, v426);
                  v422 = v423 - v424;
                  if (!__OFSUB__(v423, v424))
                  {
                    goto LABEL_266;
                  }

                  goto LABEL_792;
                case 3uLL:
                  v427 = sub_100008380();
                  sub_100014A40(v427, v428);
                  v422 = 0;
                  goto LABEL_266;
                default:
                  v420 = sub_100008380();
                  sub_100014A40(v420, v421);
                  v422 = BYTE6(v419);
                  goto LABEL_266;
              }

              v433 = *&v1055[8];
              v432 = *v1055;
              v435 = *&v1055[24];
              v434 = *&v1055[16];
              switch(v1055[64])
              {
                case 1:
                  v1038 = *&v1055[8];
                  v1039 = *&v1055[16];
                  v1033 = v410 + v422;
                  if (!*(*&v1055[24] + 16))
                  {
                    goto LABEL_305;
                  }

                  v1048 = *&v1055[24];
                  sub_100167778(*&v1055[24]);
                  sub_100018A18();
                  v476 = sub_1000190C0();
                  sub_100163ABC(v476, v477);
                  v478._rawValue = sub_1001706E8(v432);
                  sub_100172F98(v478);
                  sub_100172F08();
                  v479 = *(v1048 + 16);
                  if (v479)
                  {
                    v480 = v1048 + 64;
                    while (2)
                    {
                      sub_100010018();
                      v481 = *v1057;
                      v482 = *&v1057[8];
                      v483 = *&v1057[16];
                      v484 = v1057[24];
                      switch(v1057[64])
                      {
                        case 1:
                          sub_100172D64();
                          sub_100172D64();
                          sub_1001731D8();
                          ByteBuffer.writeAvroArray(_:)(v488);
                          goto LABEL_299;
                        case 2:
                          sub_100172D64();
                          sub_100172D64();
                          sub_1001731D8();
                          ByteBuffer.writeAvroMap(_:)(v486);
LABEL_299:
                          v489 = sub_10000AFB8();
                          sub_100096480(v489);

                          goto LABEL_300;
                        case 3:
                          v1068.schema.type._countAndFlagsBits = *v1057;
                          v1068.schema.type._object = *&v1057[8];
                          v1068.schema.name = *&v1057[16];
                          v487 = *(v480 + 16);
                          v1068.schema.namespace = *v480;
                          *&v1068.schema.fields._rawValue = v487;
                          sub_100172D64();
                          v485 = ByteBuffer.writeAvroRecord(_:)(&v1068);
                          goto LABEL_296;
                        case 4:
                          sub_100172DCC(v1069);
                          sub_100172D64();
                          sub_100163B18(v1069, v1058);
                          v481 = ByteBuffer.writeAvroUnion(_:)(v1069);
                          sub_100163B74(v1069);
                          goto LABEL_297;
                        default:
                          sub_100172D64();
                          v485 = ByteBuffer.writeAvroPrimitive(_:)(v481, v482, v483, v484);
LABEL_296:
                          v481 = v485;
LABEL_297:
                          sub_100096480(v1057);
LABEL_300:
                          v74 = __OFADD__(v433, v481);
                          v433 += v481;
                          if (v74)
                          {
                            goto LABEL_761;
                          }

                          v480 += 72;
                          if (!--v479)
                          {
                            break;
                          }

                          continue;
                      }

                      break;
                    }
                  }

                  v490._rawValue = sub_1001706E8(0);
                  v491 = sub_100172F98(v490);

                  sub_1000149B4();

                  sub_100096480(v1055);
                  v74 = __OFADD__(v433, v491);
                  v432 = v433 + v491;
                  if (!v74)
                  {
                    goto LABEL_307;
                  }

                  goto LABEL_803;
                case 2:
                  v1038 = *&v1055[8];
                  v1039 = *&v1055[16];
                  v1033 = v410 + v422;
                  v450 = *(*&v1055[24] + 16);
                  if (!v450)
                  {
LABEL_305:
                    v492 = sub_1000190C0();
                    sub_100163ABC(v492, v493);
                    v494 = sub_100006D64();
                    sub_10006C9F0(v494, v495, v496, _swiftEmptyArrayStorage);
                    v1058[0] = v497;
                    v498 = *(v497 + 16);
                    sub_10000AD48();
                    sub_1001729D8(v498, v499);
                    sub_100172E30();

                    sub_1000149B4();

                    sub_100096480(v1055);
                    sub_100167778(v433);
                    sub_10000AB28();

                    goto LABEL_308;
                  }

                  v451 = 2 * v450;
                  v452 = sub_1000190C0();
                  sub_100163ABC(v452, v453);
                  v454._rawValue = sub_1001706E8(v451);
                  sub_100172F98(v454);
                  sub_1000054F4();

                  v455 = *(v435 + 64);
                  v456 = *(v435 + 32);
                  sub_100004538();
                  v459 = v458 & v457;
                  v461 = (v460 + 63) >> 6;
                  v1048 = v435;

                  v462 = 0;
                  break;
                case 3:
                  v1071 = *v1055;
                  v474 = sub_1000190C0();
                  sub_100163ABC(v474, v475);
                  v440 = ByteBuffer.writeAvroRecord(_:)(&v1071);
                  goto LABEL_287;
                case 4:
                  sub_100172DCC(v1058);
                  sub_10001ACCC();
                  sub_100163ABC(v1055, v1057);
                  sub_100172ED8();
                  v441 = sub_1001706E8(v432);
                  sub_100015BE4(v441);
                  if (v442)
                  {
                    sub_10000C910();
                    Data._Representation.append(contentsOf:)();
                  }

                  v443 = sub_100167778(v435);

                  v444 = v1058[1];
                  v445 = v1058[3];
                  v446 = v1058[4];
                  switch(LOBYTE(v1058[9]))
                  {
                    case 1:
                      v510 = sub_100005700();
                      sub_100163ABC(v510, v1057);
                      sub_1001731D8();
                      ByteBuffer.writeAvroArray(_:)(v511);
                      goto LABEL_316;
                    case 2:
                      v505 = sub_100005700();
                      sub_100163ABC(v505, v1057);
                      sub_1001731D8();
                      ByteBuffer.writeAvroMap(_:)(v506);
LABEL_316:
                      sub_100172DE4();
                      sub_100096480(v1055);

                      goto LABEL_317;
                    case 3:
                      v1072.schema.type._countAndFlagsBits = v1058[1];
                      v1072.schema.type._object = v1058[2];
                      v1072.schema.name = *&v1058[3];
                      v507 = sub_100007E7C();
                      v509 = sub_10001BCC8(&v1072, v507, v508);
                      sub_100163ABC(v509, v1057);
                      v444 = v1049;
                      ByteBuffer.writeAvroRecord(_:)(&v1072);
                      goto LABEL_314;
                    case 4:
                      sub_100172D18();
                      sub_100005B10();
                      sub_100163ABC(&v1058[1], v1056);
                      sub_100173010();
                      v503._rawValue = sub_1001706E8(v444);
                      sub_100172F98(v503);
                      sub_1001732FC();
                      sub_100172EF0(v1073, v1057);
                      ByteBuffer.writeAvroValue(_:)(v1073);
                      v504 = sub_10000AFB8();
                      sub_100163B74(v504);
                      sub_100163B74(v1058);
                      sub_100096480(v1055);
                      sub_100096480(&v1058[1]);
                      sub_100096480(v1055);
                      v74 = __OFADD__(v445, v444);
                      v444 += v445;
                      if (!v74)
                      {
                        goto LABEL_318;
                      }

                      goto LABEL_816;
                    default:
                      sub_100013644();
                      v447 = sub_10000BAF0();
                      v444 = v1049;
                      ByteBuffer.writeAvroPrimitive(_:)(v447, v448, v449, v446);
LABEL_314:
                      sub_100172DE4();
                      sub_100096480(v1055);
                      sub_100096480(v434 + 8);
LABEL_317:
                      sub_100096480(v1055);
LABEL_318:
                      v74 = __OFADD__(v443, v444);
                      v432 = v443 + v444;
                      v3 = v1047;
                      v388 = v1044;
                      v382 = v1045;
                      if (!v74)
                      {
                        goto LABEL_319;
                      }

                      goto LABEL_796;
                  }

                default:
                  v436 = sub_1000190C0();
                  sub_100163ABC(v436, v437);
                  v438 = sub_1000385F0();
                  v440 = ByteBuffer.writeAvroPrimitive(_:)(v438, v439, v434, v435);
LABEL_287:
                  v432 = v440;
                  sub_100096480(v1055);
                  sub_100096480(v1055);
                  v388 = v1044;
                  v382 = v1045;
                  goto LABEL_319;
              }

LABEL_275:
              if (v459)
              {
                v1043 = v451;
                v463 = v1048;
                goto LABEL_282;
              }

              v463 = v1048;
              while (1)
              {
                v464 = v462 + 1;
                if (__OFADD__(v462, 1))
                {
                  goto LABEL_759;
                }

                if (v464 >= v461)
                {
                  break;
                }

                v459 = *(v435 + 64 + 8 * v464);
                ++v462;
                if (v459)
                {
                  v1043 = v451;
                  v462 = v464;
LABEL_282:
                  v465 = *(v463 + 48);
                  v466 = *(v463 + 56);
                  v467 = (v465 + 16 * (__clz(__rbit64(v459)) | (v462 << 6)));
                  v468 = *v467;
                  v469 = v467[1];
                  sub_10000BFF0();
                  memcpy(v1070, v470, 0x41uLL);

                  sub_100163ABC(v1070, v1058);
                  v471._countAndFlagsBits = v468;
                  v471._object = v469;
                  ByteBuffer.writeAvroString(_:)(v471);
                  sub_1001732FC();
                  v472 = ByteBuffer.writeAvroValue(_:)(v1070);
                  sub_100096480(v1070);
                  v473 = v435 + v472;
                  if (__OFADD__(v435, v472))
                  {
                    goto LABEL_782;
                  }

                  v459 &= v459 - 1;
                  v451 = v1043 + v473;
                  if (__OFADD__(v1043, v473))
                  {
                    goto LABEL_783;
                  }

                  goto LABEL_275;
                }
              }

              v500 = sub_1001706E8(0);
              v501 = v451;
              v502 = v1049;
              ByteBuffer.writeBytes(_:)(v500);
              sub_10000AB28();

              sub_1000149B4();

              sub_100096480(v1055);
              v74 = __OFADD__(v501, v502);
              v432 = v501 + v502;
              if (v74)
              {
                goto LABEL_804;
              }

LABEL_307:
              v3 = v1047;
LABEL_308:
              v388 = v1044;
              v382 = v1045;
              v431 = v1033;
LABEL_319:
              v512 = v431 + v432;
              if (__OFADD__(v431, v432))
              {
                goto LABEL_773;
              }

              v379 = v1046 + v512;
              if (__OFADD__(v1046, v512))
              {
                break;
              }

              v389 = v5;
              if (!v4)
              {
LABEL_237:
                while (1)
                {
                  v5 = v389 + 1;
                  if (__OFADD__(v389, 1))
                  {
                    break;
                  }

                  if (v5 >= v388)
                  {

                    v1058[0] = _swiftEmptyArrayStorage;
                    sub_100003F14();
                    v2 = v379;
                    sub_100172934(v693);
                    v353 = *(v1058[0] + 16);
                    v694 = sub_100010008();
                    sub_1001729D8(v694, v382);
                    sub_10002D480();
                    sub_100173150();
                    ByteBuffer.writeBytes(_:)(v695);
                    sub_1001730EC();

                    sub_100096480(v1054);
                    v354 = (v1058 + v379);
                    if (!__OFADD__(v2, v1058))
                    {
                      goto LABEL_484;
                    }

LABEL_794:
                    __break(1u);
LABEL_795:
                    __break(1u);
LABEL_796:
                    __break(1u);
LABEL_797:
                    __break(1u);
LABEL_798:
                    __break(1u);
LABEL_799:
                    __break(1u);
LABEL_800:
                    __break(1u);
LABEL_801:
                    __break(1u);
LABEL_802:
                    __break(1u);
LABEL_803:
                    __break(1u);
LABEL_804:
                    __break(1u);
LABEL_805:
                    __break(1u);
LABEL_806:
                    __break(1u);
LABEL_807:
                    __break(1u);
LABEL_808:
                    __break(1u);
LABEL_809:
                    __break(1u);
LABEL_810:
                    __break(1u);
LABEL_811:
                    __break(1u);
LABEL_812:
                    __break(1u);
LABEL_813:
                    __break(1u);
LABEL_814:
                    __break(1u);
LABEL_815:
                    __break(1u);
LABEL_816:
                    __break(1u);
LABEL_817:
                    __break(1u);
LABEL_818:
                    __break(1u);
LABEL_819:
                    __break(1u);
LABEL_820:
                    __break(1u);
LABEL_821:
                    __break(1u);
LABEL_822:
                    __break(1u);
LABEL_823:
                    __break(1u);
LABEL_824:
                    __break(1u);
LABEL_825:
                    __break(1u);
LABEL_826:
                    __break(1u);
LABEL_827:
                    __break(1u);
LABEL_828:
                    __break(1u);
LABEL_829:
                    __break(1u);
LABEL_830:
                    __break(1u);
LABEL_831:
                    __break(1u);
LABEL_832:
                    __break(1u);
LABEL_833:
                    __break(1u);
LABEL_834:
                    __break(1u);
LABEL_835:
                    __break(1u);
LABEL_836:
                    __break(1u);
LABEL_837:
                    __break(1u);
LABEL_838:
                    __break(1u);
LABEL_839:
                    __break(1u);
LABEL_840:
                    __break(1u);
LABEL_841:
                    __break(1u);
LABEL_842:
                    __break(1u);
LABEL_843:
                    __break(1u);
LABEL_844:
                    __break(1u);
LABEL_845:
                    __break(1u);
LABEL_846:
                    __break(1u);
LABEL_847:
                    __break(1u);
LABEL_848:
                    __break(1u);
LABEL_849:
                    __break(1u);
LABEL_850:
                    __break(1u);
LABEL_851:
                    __break(1u);
LABEL_852:
                    __break(1u);
LABEL_853:
                    __break(1u);
                  }

                  v4 = *(v382 + v5);
                  ++v389;
                  if (v4)
                  {
                    goto LABEL_240;
                  }
                }

LABEL_754:
                __break(1u);
LABEL_755:
                __break(1u);
LABEL_756:
                __break(1u);
LABEL_757:
                __break(1u);
LABEL_758:
                __break(1u);
LABEL_759:
                __break(1u);
LABEL_760:
                __break(1u);
LABEL_761:
                __break(1u);
LABEL_762:
                __break(1u);
                goto LABEL_763;
              }
            }

LABEL_774:
            __break(1u);
LABEL_775:
            __break(1u);
            break;
          case 3:
            v1074.schema.type._countAndFlagsBits = *v1054;
            v1074.schema.type._object = *&v1054[8];
            v1074.schema.name = *&v1054[16];
            v522 = *(v354 + 3);
            v1074.schema.namespace = *(v354 + 2);
            *&v1074.schema.fields._rawValue = v522;
            sub_10000BA78();
            v354 = ByteBuffer.writeAvroRecord(_:)(&v1074);
            sub_100096480(v1054);
            goto LABEL_484;
          case 4:
            memcpy(v1058, (*v1054 + 16), sizeof(v1058));
            sub_100025124();
            v3 = v366 ^ (v365 >> 63);
            v353 = _swiftEmptyArrayStorage;
            v1056[0] = _swiftEmptyArrayStorage;
            v367 = sub_100173204();
            if (v3 >= 0x80)
            {
              sub_100163ABC(v367, v368);
              v702 = sub_100173204();
              sub_100163ABC(v702, v703);
              sub_100172ED8();
              sub_100003F14();
              v354 = v1056;
              sub_100172934(v704);
              sub_1001732B4();
              sub_1001732B4();
              v353 = v1056[0];
              do
              {
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v709 = *(v353 + 16);
                  v710 = sub_1000040F0();
                  sub_10006C9F0(v710, v711, v712, v353);
                  v353 = v713;
                }

                v706 = *(v353 + 16);
                v705 = *(v353 + 24);
                sub_1000079C4();
                if (v59)
                {
                  v714 = sub_100006530(v707);
                  sub_10006C9F0(v714, v715, v716, v353);
                  v353 = v717;
                }

                sub_100172D7C();
              }

              while (v708);
            }

            else
            {
              sub_100163ABC(v367, v368);
              v369 = sub_100173204();
              sub_100163ABC(v369, v370);
              sub_100172ED8();
            }

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v845 = *(v353 + 16);
              v846 = sub_1000040F0();
              sub_10006C9F0(v846, v847, v848, v353);
              v353 = v849;
            }

            v372 = *(v353 + 16);
            v371 = *(v353 + 24);
            sub_1000079C4();
            v374 = v1041;
            if (v59)
            {
              v850 = sub_100006530(v373);
              sub_10006C9F0(v850, v851, v852, v353);
              v353 = v853;
            }

            v372[sub_10000BF64()] = v3 & 0x7F;
            sub_100172F38();
            v375 = *(v353 + 16);

            v2 = v1058[1];
            sub_10017319C();
            switch(v376)
            {
              case 1:
                v741 = sub_100005700();
                sub_100163ABC(v741, v1057);
                sub_10000BA20();
                ByteBuffer.writeAvroArray(_:)(v742);
                goto LABEL_460;
              case 2:
                v736 = sub_100005700();
                sub_100163ABC(v736, v1057);
                sub_10000BA20();
                ByteBuffer.writeAvroMap(_:)(v737);
LABEL_460:
                sub_100172DE4();
                sub_100096480(v1054);

                break;
              case 3:
                v1075.schema.type._countAndFlagsBits = v2;
                v1075.schema.type._object = v353;
                v1075.schema.name._countAndFlagsBits = v3;
                v1075.schema.name._object = v4;
                v738 = sub_100007E7C();
                v740 = sub_10001BCC8(&v1075, v738, v739);
                sub_100163ABC(v740, v1057);
                v354 = v5;
                ByteBuffer.writeAvroRecord(_:)(&v1075);
LABEL_458:
                sub_100172DE4();
                sub_100096480(v1054);
                sub_100096480((v372 + 8));
                break;
              case 4:
                memcpy(v1057, (v2 + 16), sizeof(v1057));
                sub_100005B10();
                v733 = sub_100005700();
                sub_100163ABC(v733, v1056);
                sub_100173010();
                v734 = sub_1001706E8(v354);
                sub_10000F300(v734);
                if (v735)
                {
                  sub_10000B170();
                  v354 = v5;
                  Data._Representation.append(contentsOf:)();
                  v4 = *(v353 + 16);
                }

                else
                {
                  v4 = 0;
                }

                sub_100172FEC();
                switch(v757)
                {
                  case 1:
                    sub_100023FEC();
                    sub_100017D04();
                    ByteBuffer.writeAvroArray(_:)(v804);
                    goto LABEL_532;
                  case 2:
                    sub_100023FEC();
                    sub_100017D04();
                    ByteBuffer.writeAvroMap(_:)(v799);
LABEL_532:
                    v805 = sub_10000AFB8();
                    sub_100163B74(v805);
                    sub_100163B74(v1058);
                    sub_100096480(v1054);

                    goto LABEL_533;
                  case 3:
                    v1076.schema.type._countAndFlagsBits = v354;
                    v1076.schema.type._object = v2;
                    v1076.schema.name._countAndFlagsBits = v353;
                    v1076.schema.name._object = v3;
                    v372 = v1057;
                    v800 = sub_100007B00();
                    v802 = sub_10001BCC8(&v1076, v800, v801);
                    sub_100163ABC(v802, v1056);
                    v354 = v5;
                    ByteBuffer.writeAvroRecord(_:)(&v1076);
                    goto LABEL_530;
                  case 4:
                    sub_100172DCC(v1056);
                    sub_10001ACCC();
                    sub_10017307C();
                    sub_1001732E4();
                    v797._rawValue = sub_1001706E8(v354);
                    sub_100172F20(v797);
                    sub_100172F08();
                    sub_100172E84(v1077);
                    ByteBuffer.writeAvroValue(_:)(v1077);
                    sub_10001DA44();
                    sub_100163B74(v1057);
                    sub_100163B74(v1058);
                    sub_100096480(v1054);
                    sub_100096480(v2 + 8);
                    v798 = sub_100005700();
                    sub_100096480(v798);
                    sub_100096480(v1054);
                    v74 = __OFADD__(v353, v354);
                    v354 = (v354 + v353);
                    if (!v74)
                    {
                      goto LABEL_534;
                    }

                    goto LABEL_825;
                  default:
                    sub_100172EA0();
                    sub_100009A4C();
LABEL_530:
                    v803 = sub_10000AFB8();
                    sub_100163B74(v803);
                    sub_100163B74(v1058);
                    sub_100096480(v1054);
                    sub_100096480((v372 + 8));
LABEL_533:
                    v806 = sub_100005700();
                    sub_100096480(v806);
                    sub_100096480(v1054);
LABEL_534:
                    v732 = v1042;
                    v74 = __OFADD__(v4, v354);
                    v354 = (v354 + v4);
                    if (!v74)
                    {
                      goto LABEL_463;
                    }

                    goto LABEL_807;
                }

              default:
                switch(v4)
                {
                  case 1:
                    v814 = sub_1001705C0((2 * v2) ^ (v2 >> 31));
                    goto LABEL_552;
                  case 2:
                    v814 = sub_1001706E8((2 * v2) ^ (v2 >> 63));
LABEL_552:
                    sub_10000F300(v814);
                    if (v818)
                    {
                      sub_10000B170();
                      v354 = v5;
                      Data._Representation.append(contentsOf:)();
                    }

                    v819 = sub_100005700();
                    sub_100096480(v819);
                    sub_100163B74(v1058);
                    sub_100096480(v1054);
                    sub_100012FC8();

                    goto LABEL_461;
                  case 3:
                    *v1057 = v2;
                    v377 = &v1057[4];
                    goto LABEL_549;
                  case 4:
                    *v1057 = v2;
                    v377 = &v1057[8];
                    goto LABEL_549;
                  case 5:
                    if ((v353 & 0x1000000000000000) != 0)
                    {
                      sub_100003898();
                      String.UTF8View._foreignCount()();
                    }

                    sub_100018A18();
                    v3 = v1058;
                    sub_100163ABC(&v1058[1], v1057);
                    sub_100163ABC(&v1058[1], v1057);
                    v820._rawValue = sub_1001706E8(v354);
                    v1048 = sub_100172F20(v820);

                    v4 = v1034;
                    static String.Encoding.utf8.getter();
                    v821 = String.data(using:allowLossyConversion:)();
                    sub_10017315C();
                    v822(v4, v1035);
                    sub_1001731E4();
                    if (!v60 & v59)
                    {
                      v353 = 0;
                    }

                    else
                    {
                      v353 = v821;
                    }

                    v823 = sub_10000F18C();
                    v825 = ByteBuffer.writeData(_:)(v823, v824);
                    v826 = sub_10000F18C();
                    sub_100014A40(v826, v827);
                    sub_100096480(&v1058[1]);
                    sub_100096480(&v1058[1]);
                    sub_100163B74(v1058);
                    sub_100096480(v1054);
                    sub_100096480(v1054);
                    v74 = __OFADD__(v1048, v825);
                    v354 = (v1048 + v825);
                    if (!v74)
                    {
                      goto LABEL_462;
                    }

                    goto LABEL_834;
                  case 6:
                    sub_100013644();
                    v828._rawValue = sub_100003898();
                    v354 = v5;
                    sub_1001704E8(v828, v829, v3);
                    goto LABEL_458;
                  case 7:
                    v817 = sub_100005700();
                    sub_100096480(v817);
                    sub_100163B74(v1058);
                    sub_100096480(v1054);
                    sub_100096480(v1054);
                    v354 = 0;
                    goto LABEL_462;
                  default:
                    v1057[0] = v2 & 1;
                    v377 = &v1057[1];
LABEL_549:
                    v815._rawValue = sub_100172B5C(v1057, v377);
                    sub_100172F20(v815);
                    sub_1000054F4();

                    v816 = sub_100005700();
                    sub_100096480(v816);
                    sub_100096480(v1054);
                    sub_100163B74(v1058);
                    break;
                }

                break;
            }

LABEL_461:
            sub_100096480(v1054);
LABEL_462:
            v732 = v1042;
LABEL_463:
            v74 = __OFADD__(v375, v354);
            v354 = (v354 + v375);
            if (!v74)
            {
              goto LABEL_485;
            }

            goto LABEL_786;
          default:
            switch(v1054[24])
            {
              case 1:
                v2 = (2 * *v1054) ^ (*v1054 >> 31);
                v353 = _swiftEmptyArrayStorage;
                v1058[0] = _swiftEmptyArrayStorage;
                LOBYTE(v744) = ((2 * v1054[0]) ^ (*v1054 >> 31)) & 0x7F;
                if (v2 >= 0x80)
                {
                  sub_10000E050();
                  v354 = v1058;
                  sub_100172934(v772);
                  v773 = sub_100010008();
                  sub_100172934(v773);
                  v774 = sub_100010008();
                  sub_100172934(v774);
                  v353 = v1058[0];
                  do
                  {
                    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                    {
                      v778 = *(v353 + 16);
                      v779 = sub_1000040F0();
                      sub_10006C9F0(v779, v780, v781, v353);
                      v353 = v782;
                    }

                    sub_1000126E0();
                    if (v59)
                    {
                      v783 = sub_100006530(v775);
                      sub_10006C9F0(v783, v784, v785, v353);
                      v353 = v786;
                    }

                    v776 = v744 | 0x80;
                    v744 = (v2 >> 7) & 0x7F;
                    v777 = v2 >> 14;
                    v2 = v2 >> 7;
                    *(v353 + 16) = v1058;
                    *(v353 + v3 + 32) = v776;
                  }

                  while (v777);
                }

                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v871 = *(v353 + 16);
                  v872 = sub_1000040F0();
                  sub_10006C9F0(v872, v873, v874, v353);
                  v353 = v875;
                }

                sub_100014CF0();
                if (v59)
                {
                  v876 = sub_100006530(v749);
                  sub_10006C9F0(v876, v877, v878, v353);
                  v353 = v879;
                }

                goto LABEL_483;
              case 2:
                v2 = (2 * *v1054) ^ (*v1054 >> 63);
                v353 = _swiftEmptyArrayStorage;
                v1058[0] = _swiftEmptyArrayStorage;
                LOBYTE(v744) = v2 & 0x7F;
                if (v2 >= 0x80)
                {
                  sub_10000E050();
                  v354 = v1058;
                  sub_100172934(v758);
                  v759 = sub_100010008();
                  sub_100172934(v759);
                  v760 = sub_100010008();
                  sub_100172934(v760);
                  v353 = v1058[0];
                  do
                  {
                    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                    {
                      v763 = *(v353 + 16);
                      v764 = sub_1000040F0();
                      sub_10006C9F0(v764, v765, v766, v353);
                      v353 = v767;
                    }

                    sub_1000126E0();
                    if (v59)
                    {
                      v768 = sub_100006530(v761);
                      sub_10006C9F0(v768, v769, v770, v353);
                      v353 = v771;
                    }

                    sub_100008C28();
                  }

                  while (v762);
                }

                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v862 = *(v353 + 16);
                  v863 = sub_1000040F0();
                  sub_10006C9F0(v863, v864, v865, v353);
                  v353 = v866;
                }

                sub_100014CF0();
                if (v59)
                {
                  v867 = sub_100006530(v745);
                  sub_10006C9F0(v867, v868, v869, v353);
                  v353 = v870;
                }

LABEL_483:
                *(sub_10000BF64() + v2) = v744;
                sub_100172F38();
                sub_100096480(v1054);
                sub_100096480(v1054);
                sub_100012FC8();

                goto LABEL_484;
              case 3:
                LODWORD(v1058[0]) = *v1054;
                v362 = sub_100172DFC();
                v364 = (v746 + 4);
                goto LABEL_474;
              case 4:
                v1058[0] = *v1054;
                v362 = sub_100172DFC();
                v364 = (v743 + 8);
                goto LABEL_474;
              case 5:
                if ((*&v1054[8] & 0x1000000000000000) != 0)
                {
                  String.UTF8View._foreignCount()();
                }

                sub_100018A18();
                sub_10000BA78();
                sub_10000BA78();
                sub_10000BA78();
                v750 = sub_1001706E8(v354);
                sub_10000F300(v750);
                if (v751)
                {
                  sub_10000B170();
                  Data._Representation.append(contentsOf:)();
                  v752 = *(v353 + 16);
                }

                else
                {
                  v752 = 0;
                }

                v3 = v1034;
                static String.Encoding.utf8.getter();
                v787 = String.data(using:allowLossyConversion:)();
                v353 = v788;
                sub_10017315C();
                v789(v3, v1035);
                if (v353 >> 60 == 15)
                {
                  v2 = 0;
                }

                else
                {
                  v2 = v787;
                }

                if (v353 >> 60 == 15)
                {
                  v353 = 0xC000000000000000;
                }

                sub_100003898();
                Data.append(_:)();
                sub_100096480(v1054);
                sub_100096480(v1054);
                sub_100096480(v1054);
                switch(v353 >> 62)
                {
                  case 1uLL:
                    v812 = sub_100003898();
                    sub_100014A40(v812, v813);
                    LODWORD(v792) = HIDWORD(v2) - v2;
                    if (__OFSUB__(HIDWORD(v2), v2))
                    {
                      goto LABEL_827;
                    }

                    v792 = v792;
LABEL_543:
                    v374 = v1041;
                    v354 = (v752 + v792);
                    if (!__OFADD__(v752, v792))
                    {
                      goto LABEL_453;
                    }

                    goto LABEL_814;
                  case 2uLL:
                    v3 = *(v2 + 16);
                    v807 = *(v2 + 24);
                    v808 = sub_100003898();
                    sub_100014A40(v808, v809);
                    v792 = v807 - v3;
                    if (!__OFSUB__(v807, v3))
                    {
                      goto LABEL_543;
                    }

                    goto LABEL_828;
                  case 3uLL:
                    v810 = sub_100003898();
                    sub_100014A40(v810, v811);
                    v792 = 0;
                    goto LABEL_543;
                  default:
                    v790 = sub_100003898();
                    sub_100014A40(v790, v791);
                    v792 = BYTE6(v353);
                    goto LABEL_543;
                }

              case 6:
                v753 = (*&v1054[8] >> 60) & 3;
                if (v753)
                {
                  v353 = *&v1054[8] >> 62;
                  v754 = HIDWORD(*v1054);
                  v755 = v1054[14];
                  if (v753 != 1)
                  {
                    v4 = *&v1054[8];
                    v796 = 0;
                    switch(v353)
                    {
                      case 1uLL:
                        if (__OFSUB__(*&v1054[4], *v1054))
                        {
                          goto LABEL_840;
                        }

                        v796 = *&v1054[4] - *v1054;
LABEL_584:
                        sub_10000BA78();
                        sub_10000BA78();
                        sub_10000BA78();
LABEL_585:
                        v838 = sub_1001706E8((2 * v796) ^ (v796 >> 63));
                        sub_10000E2A0(v838);
                        if (v839)
                        {
                          sub_10000EC9C();
                          Data._Representation.append(contentsOf:)();
                          v840 = *(v3 + 16);
                        }

                        else
                        {
                          v840 = 0;
                        }

                        Data.append(_:)();
                        sub_100096480(v1054);
                        sub_100096480(v1054);
                        switch(v353)
                        {
                          case 0:
                            sub_100096480(v1054);
                            goto LABEL_596;
                          case 1:
                            sub_100096480(v1054);
                            if (__OFSUB__(v754, v2))
                            {
                              goto LABEL_843;
                            }

                            v755 = v754 - v2;
LABEL_596:
                            v374 = v1041;
                            v732 = v1042;
                            v354 = (v840 + v755);
                            if (!__OFADD__(v840, v755))
                            {
                              goto LABEL_485;
                            }

                            goto LABEL_823;
                          case 2:
                            v842 = *(v2 + 16);
                            v841 = *(v2 + 24);
                            sub_100096480(v1054);
                            v74 = __OFSUB__(v841, v842);
                            v755 = v841 - v842;
                            if (!v74)
                            {
                              goto LABEL_596;
                            }

                            goto LABEL_842;
                          case 3:
                            sub_100096480(v1054);
                            v755 = 0;
                            goto LABEL_596;
                          default:
                            goto LABEL_854;
                        }

                      case 2uLL:
                        v837 = *(*v1054 + 16);
                        v836 = *(*v1054 + 24);
                        v796 = v836 - v837;
                        if (!__OFSUB__(v836, v837))
                        {
                          goto LABEL_584;
                        }

                        goto LABEL_839;
                      case 3uLL:
                        goto LABEL_585;
                      default:
                        v796 = v1054[14];
                        goto LABEL_585;
                    }
                  }

                  v756 = 0;
                  switch(v353)
                  {
                    case 1uLL:
                      if (__OFSUB__(*&v1054[4], *v1054))
                      {
                        goto LABEL_838;
                      }

                      v830 = *&v1054[16];
                      v3 = *&v1054[8];
                      v756 = *&v1054[4] - *v1054;
                      break;
                    case 2uLL:
                      v830 = *&v1054[16];
                      v832 = *(*v1054 + 16);
                      v831 = *(*v1054 + 24);
                      v756 = v831 - v832;
                      if (__OFSUB__(v831, v832))
                      {
                        goto LABEL_841;
                      }

                      v3 = *&v1054[8];
                      break;
                    case 3uLL:
                      goto LABEL_575;
                    default:
                      v756 = v1054[14];
                      goto LABEL_575;
                  }

                  sub_10000BA78();
                  sub_10000BA78();
                  sub_10000BA78();
                  v360 = v3;
                  v361 = v830;
LABEL_575:
                  if (!__OFSUB__(v756, v361))
                  {
                    v4 = v360;
                    v833 = sub_100173028(v756 - v361);
                    sub_10000E2A0(v833);
                    if (v834)
                    {
                      sub_10000EC9C();
                      Data._Representation.append(contentsOf:)();
                      v835 = *(v3 + 16);
                    }

                    else
                    {
                      v835 = 0;
                    }

                    Data.append(_:)();
                    sub_100096480(v1054);
                    sub_100096480(v1054);
                    switch(v353)
                    {
                      case 1:
                        sub_100096480(v1054);
                        if (__OFSUB__(v754, v2))
                        {
                          goto LABEL_845;
                        }

                        v755 = v754 - v2;
LABEL_605:
                        v374 = v1041;
                        v732 = v1042;
                        v354 = (v835 + v755);
                        if (!__OFADD__(v835, v755))
                        {
                          goto LABEL_485;
                        }

                        goto LABEL_824;
                      case 2:
                        v844 = *(v2 + 16);
                        v843 = *(v2 + 24);
                        sub_100096480(v1054);
                        v74 = __OFSUB__(v843, v844);
                        v755 = v843 - v844;
                        if (!v74)
                        {
                          goto LABEL_605;
                        }

                        goto LABEL_844;
                      case 3:
                        sub_100096480(v1054);
                        v755 = 0;
                        goto LABEL_605;
                      default:
                        sub_100096480(v1054);
                        goto LABEL_605;
                    }
                  }

                  goto LABEL_822;
                }

                v793 = *(*v1054 + 16);
                sub_10000BA78();
                sub_10000BA78();
                sub_10000BA78();
                v794 = sub_1001706E8(2 * v793);
                sub_10000F300(v794);
                if (v795)
                {
                  sub_10000B170();
                  Data._Representation.append(contentsOf:)();
                  v3 = *(v353 + 16);
                }

                else
                {
                  v3 = 0;
                }

                if (*(v2 + 16))
                {
                  sub_10000C910();
                  Data._Representation.append(contentsOf:)();
                }

                sub_100096480(v1054);
                sub_100096480(v1054);
                sub_100096480(v1054);
                v354 = (v3 + v793);
                if (__OFADD__(v3, v793))
                {
                  goto LABEL_821;
                }

LABEL_484:
                v374 = v1041;
                v732 = v1042;
                break;
              case 7:
                sub_100096480(v1054);
                sub_100096480(v1054);
                v354 = 0;
                goto LABEL_484;
              default:
                LOBYTE(v1058[0]) = v1054[0] & 1;
                v362 = sub_100172DFC();
                v364 = (v363 + 1);
LABEL_474:
                v747 = sub_100172B5C(v362, v364);
                sub_10000F300(v747);
                if (v748)
                {
                  sub_10000B170();
                  v354 = v5;
                  Data._Representation.append(contentsOf:)();
                }

                sub_100096480(v1054);
                sub_100096480(v1054);
                sub_100012FC8();

                goto LABEL_484;
            }

            goto LABEL_485;
        }

        goto LABEL_776;
      }

    case 2:
      v1023 = *&v1059[16];
      v1024 = *&v1059[8];
      v29 = *(*&v1059[24] + 16);
      if (!v29)
      {
LABEL_608:
        sub_100172D9C();
        sub_100172D9C();
        v880 = sub_100006D64();
        sub_10006C9F0(v880, v881, v882, _swiftEmptyArrayStorage);
        sub_100008870(v883);
        if (v59)
        {
          v1007 = sub_100006530(v884);
          sub_10006C9F0(v1007, v1008, v1009, v15);
        }

        sub_10000F70C();
        v14 = v5;
        Data._Representation.append(contentsOf:)();

LABEL_655:
        sub_100096480(v1059);
        sub_100012FC8();

        goto LABEL_656;
      }

      v30 = *&v1059[24];
      v31 = 2 * v29;
      sub_100172D9C();
      sub_100172D9C();
      v32._rawValue = sub_1001706E8(v31);
      v33 = sub_100172F20(v32);

      v35 = v17 + 64;
      v34 = *(v17 + 64);
      v36 = *(v17 + 32);
      sub_100004538();
      v39 = v38 & v37;
      v41 = ((v40 + 63) >> 6);

      v42 = v39;
      v43 = v41;
      v44 = 0;
      v1033 = v41;
      v1031 = v30 + 64;
      if (!v39)
      {
        goto LABEL_18;
      }

      break;
    case 3:
      v1096.schema.type._countAndFlagsBits = *v1059;
      v1096.schema.type._object = *&v1059[8];
      v1096.schema.name = *&v1059[16];
      v350 = *(v14 + 3);
      v1096.schema.namespace = *(v14 + 2);
      *&v1096.schema.fields._rawValue = v350;
      sub_100172D9C();
      v14 = ByteBuffer.writeAvroRecord(_:)(&v1096);
      sub_100096480(v1059);
      goto LABEL_656;
    case 4:
      sub_1000382B4();
      sub_100025124();
      v3 = v22 ^ (v21 >> 63);
      v23 = _swiftEmptyArrayStorage;
      v1056[0] = _swiftEmptyArrayStorage;
      v2 = v3 & 0x7F;
      if (v3 >= 0x80)
      {
        sub_100163ABC(v1059, v1057);
        sub_100163ABC(v1059, v1057);
        sub_100172ED8();
        sub_100003F14();
        v14 = v1056;
        sub_100172934(v890);
        sub_1001732B4();
        sub_1001732B4();
        v23 = v1056[0];
        do
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v895 = v23[2];
            v896 = sub_1000040F0();
            sub_10006C9F0(v896, v897, v898, v23);
            v23 = v899;
          }

          v892 = v23[2];
          v891 = v23[3];
          sub_1000079C4();
          if (v59)
          {
            v900 = sub_100006530(v893);
            sub_10006C9F0(v900, v901, v902, v23);
            v23 = v903;
          }

          sub_100172D7C();
        }

        while (v894);
      }

      else
      {
        sub_100163ABC(v1059, v1057);
        sub_100163ABC(v1059, v1057);
        sub_100172ED8();
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v998 = v23[2];
        v999 = sub_1000040F0();
        sub_10006C9F0(v999, v1000, v1001, v23);
        v23 = v1002;
      }

      v25 = v23[2];
      v24 = v23[3];
      sub_1000079C4();
      if (v59)
      {
        v1003 = sub_100006530(v26);
        sub_10006C9F0(v1003, v1004, v1005, v23);
        v23 = v1006;
      }

      v25[sub_10000BF64()] = v2;
      sub_100172F38();
      v27 = v23[2];

      sub_10000B9DC();
      switch(v28)
      {
        case 1:
          v924 = sub_100005700();
          sub_100163ABC(v924, v1057);
          sub_100017D04();
          ByteBuffer.writeAvroArray(_:)(v925);
          goto LABEL_634;
        case 2:
          v919 = sub_100005700();
          sub_100163ABC(v919, v1057);
          sub_100017D04();
          ByteBuffer.writeAvroMap(_:)(v920);
LABEL_634:
          sub_100172DE4();
          sub_100096480(v1059);

          goto LABEL_635;
        case 3:
          v1097.schema.type._countAndFlagsBits = v14;
          v1097.schema.type._object = (v3 & 0x7F);
          v1097.schema.name._countAndFlagsBits = v23;
          v1097.schema.name._object = v3;
          v921 = sub_100007E7C();
          v923 = sub_10001BCC8(&v1097, v921, v922);
          sub_100163ABC(v923, v1057);
          v14 = v5;
          ByteBuffer.writeAvroRecord(_:)(&v1097);
          goto LABEL_632;
        case 4:
          sub_100172D18();
          sub_100005B10();
          v911 = sub_100005700();
          sub_100163ABC(v911, v1056);
          sub_100173010();
          v912 = sub_1001706E8(v14);
          sub_100015BE4(v912);
          if (v913)
          {
            sub_10000C910();
            Data._Representation.append(contentsOf:)();
          }

          v914 = sub_100167778(v3 & 0x7F);

          v915 = *&v1057[8];
          v3 = *&v1057[16];
          v2 = *&v1057[24];
          v4 = *&v1057[32];
          switch(v1057[72])
          {
            case 1:
              sub_100023FEC();
              sub_10000BA20();
              ByteBuffer.writeAvroArray(_:)(v972);
              goto LABEL_693;
            case 2:
              sub_100023FEC();
              sub_10000BA20();
              ByteBuffer.writeAvroMap(_:)(v967);
LABEL_693:
              v973 = sub_10000AFB8();
              sub_100163B74(v973);
              sub_100163B74(v1058);
              sub_100096480(v1059);

              goto LABEL_694;
            case 3:
              v1098.schema.type._countAndFlagsBits = *&v1057[8];
              v1098.schema.type._object = *&v1057[16];
              v1098.schema.name = *&v1057[24];
              v25 = v1057;
              v968 = sub_100007B00();
              v970 = sub_10001BCC8(&v1098, v968, v969);
              sub_100163ABC(v970, v1056);
              v915 = v5;
              ByteBuffer.writeAvroRecord(_:)(&v1098);
              goto LABEL_691;
            case 4:
              sub_100172DCC(v1056);
              sub_10001ACCC();
              v3 = v1057;
              sub_100163ABC(&v1057[8], v1055);
              sub_1001732E4();
              v965._rawValue = sub_1001706E8(v915);
              sub_100172F20(v965);
              sub_1001732FC();
              sub_100172E84(v1099);
              ByteBuffer.writeAvroValue(_:)(v1099);
              sub_10001DA44();
              sub_100163B74(v1057);
              sub_100163B74(v1058);
              sub_100096480(v1059);
              sub_100096480(&v1057[8]);
              v966 = sub_100005700();
              sub_100096480(v966);
              sub_100096480(v1059);
              v74 = __OFADD__(v2, v915);
              v915 += v2;
              if (!v74)
              {
                goto LABEL_695;
              }

              goto LABEL_835;
            default:
              sub_100172EA0();
              v916 = sub_10000BAF0();
              v915 = v5;
              ByteBuffer.writeAvroPrimitive(_:)(v916, v917, v918, v4);
LABEL_691:
              v971 = sub_10000AFB8();
              sub_100163B74(v971);
              sub_100163B74(v1058);
              sub_100096480(v1059);
              sub_100096480((v25 + 8));
LABEL_694:
              v974 = sub_100005700();
              sub_100096480(v974);
              sub_100096480(v1059);
LABEL_695:
              v74 = __OFADD__(v914, v915);
              v14 = (v914 + v915);
              if (!v74)
              {
                goto LABEL_636;
              }

              goto LABEL_815;
          }

        default:
          sub_100013644();
          sub_100009A4C();
LABEL_632:
          sub_100172DE4();
          sub_100096480(v1059);
          sub_100096480((v25 + 8));
LABEL_635:
          sub_100096480(v1059);
LABEL_636:
          v74 = __OFADD__(v27, v14);
          v14 = (v14 + v27);
          v13 = v1037;
          if (!v74)
          {
            goto LABEL_657;
          }

          goto LABEL_793;
      }

    default:
      switch(v1059[24])
      {
        case 1:
          v932 = sub_1001705C0((2 * *v1059) ^ (*v1059 >> 31));
          sub_10000F300(v932);
          if (!v933)
          {
            goto LABEL_654;
          }

          sub_10000B170();
LABEL_653:
          v14 = v5;
          Data._Representation.append(contentsOf:)();
LABEL_654:
          sub_100096480(v1059);
          goto LABEL_655;
        case 2:
          v2 = (2 * *v1059) ^ (*v1059 >> 63);
          v927 = _swiftEmptyArrayStorage;
          v1058[0] = _swiftEmptyArrayStorage;
          if (v2 >= 0x80)
          {
            sub_10000E050();
            sub_100172934(v947);
            v948 = sub_100010008();
            sub_100172934(v948);
            v949 = sub_100010008();
            sub_100172934(v949);
            v927 = v1058[0];
            do
            {
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v952 = v927[2];
                v953 = sub_1000040F0();
                sub_10006C9F0(v953, v954, v955, v927);
                v927 = v956;
              }

              sub_1000126E0();
              if (v59)
              {
                v957 = sub_100006530(v950);
                sub_10006C9F0(v957, v958, v959, v927);
                v927 = v960;
              }

              sub_100008C28();
            }

            while (v951);
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v1014 = v927[2];
            v1015 = sub_1000040F0();
            sub_10006C9F0(v1015, v1016, v1017, v927);
            v927 = v1018;
          }

          sub_100014CF0();
          if (v59)
          {
            v1019 = sub_100006530(v928);
            sub_10006C9F0(v1019, v1020, v1021, v927);
          }

          *(sub_10000BF64() + v2) = v2 & 0x7F;
          goto LABEL_653;
        case 3:
          LODWORD(v1058[0]) = *v1059;
          v18 = sub_100172DFC();
          v20 = (v929 + 4);
          goto LABEL_647;
        case 4:
          v1058[0] = *v1059;
          v18 = sub_100172DFC();
          v20 = (v926 + 8);
          goto LABEL_647;
        case 5:
          v4 = *&v1059[8];
          if ((*&v1059[8] & 0x1000000000000000) != 0)
          {
            String.UTF8View._foreignCount()();
          }

          sub_100018A18();
          sub_100172D9C();
          sub_100172D9C();
          sub_100172D9C();
          v934 = sub_1001706E8(v14);
          sub_10000E2A0(v934);
          if (v935)
          {
            sub_10000EC9C();
            Data._Representation.append(contentsOf:)();
          }

          v2 = sub_100167778(v3);

          v936 = v1034;
          static String.Encoding.utf8.getter();
          v937 = String.data(using:allowLossyConversion:)();
          v939 = v938;
          sub_10017315C();
          v940(v936, v1035);
          if (v939 >> 60 == 15)
          {
            v3 = 0;
          }

          else
          {
            v3 = v937;
          }

          if (v939 >> 60 == 15)
          {
            v939 = 0xC000000000000000;
          }

          sub_100007700();
          Data.append(_:)();
          sub_100096480(v1059);
          sub_100096480(v1059);
          sub_100096480(v1059);
          switch(v939 >> 62)
          {
            case 1uLL:
              v981 = sub_100007700();
              sub_100014A40(v981, v982);
              LODWORD(v943) = HIDWORD(v3) - v3;
              if (__OFSUB__(HIDWORD(v3), v3))
              {
                goto LABEL_836;
              }

              v943 = v943;
LABEL_704:
              v13 = v1037;
              v14 = (v2 + v943);
              if (!__OFADD__(v2, v943))
              {
                goto LABEL_657;
              }

              goto LABEL_819;
            case 2uLL:
              v976 = *(v3 + 16);
              v975 = *(v3 + 24);
              v977 = sub_100007700();
              sub_100014A40(v977, v978);
              v943 = v975 - v976;
              if (!__OFSUB__(v975, v976))
              {
                goto LABEL_704;
              }

              goto LABEL_837;
            case 3uLL:
              v979 = sub_100007700();
              sub_100014A40(v979, v980);
              v943 = 0;
              goto LABEL_704;
            default:
              v941 = sub_100007700();
              sub_100014A40(v941, v942);
              v943 = BYTE6(v939);
              goto LABEL_704;
          }

        case 6:
          v944 = (*&v1059[8] >> 60) & 3;
          if (v944)
          {
            v2 = *&v1059[8] >> 62;
            v4 = HIDWORD(*v1059);
            v945 = v1059[14];
            if (v944 != 1)
            {
              v964 = 0;
              switch(v2)
              {
                case 1uLL:
                  if (__OFSUB__(*&v1059[4], *v1059))
                  {
                    goto LABEL_847;
                  }

                  v964 = *&v1059[4] - *v1059;
LABEL_727:
                  sub_100172D9C();
                  sub_100172D9C();
                  sub_100172D9C();
LABEL_728:
                  v991 = sub_1001706E8((2 * v964) ^ (v964 >> 63));
                  sub_10000E2A0(v991);
                  if (v992)
                  {
                    sub_10000EC9C();
                    Data._Representation.append(contentsOf:)();
                    v993 = *(v3 + 16);
                  }

                  else
                  {
                    v993 = 0;
                  }

                  Data.append(_:)();
                  sub_100096480(v1059);
                  sub_100096480(v1059);
                  switch(v2)
                  {
                    case 0:
                      sub_100096480(v1059);
                      goto LABEL_739;
                    case 1:
                      sub_100096480(v1059);
                      if (__OFSUB__(v4, v15))
                      {
                        goto LABEL_851;
                      }

                      v945 = v4 - v15;
LABEL_739:
                      v13 = v1037;
                      v14 = (v993 + v945);
                      if (!__OFADD__(v993, v945))
                      {
                        goto LABEL_657;
                      }

                      goto LABEL_832;
                    case 2:
                      v995 = *(v15 + 16);
                      v994 = *(v15 + 24);
                      sub_100096480(v1059);
                      v74 = __OFSUB__(v994, v995);
                      v945 = v994 - v995;
                      if (!v74)
                      {
                        goto LABEL_739;
                      }

                      goto LABEL_850;
                    case 3:
                      sub_100096480(v1059);
                      v945 = 0;
                      goto LABEL_739;
                    default:
LABEL_854:
                      JUMPOUT(0);
                  }

                case 2uLL:
                  v990 = *(*v1059 + 16);
                  v989 = *(*v1059 + 24);
                  v964 = v989 - v990;
                  if (!__OFSUB__(v989, v990))
                  {
                    goto LABEL_727;
                  }

                  goto LABEL_849;
                case 3uLL:
                  goto LABEL_728;
                default:
                  v964 = v1059[14];
                  goto LABEL_728;
              }
            }

            v946 = 0;
            switch(v2)
            {
              case 1uLL:
                if (__OFSUB__(*&v1059[4], *v1059))
                {
                  goto LABEL_846;
                }

                v983 = *&v1059[16];
                v3 = *&v1059[8];
                v946 = *&v1059[4] - *v1059;
                break;
              case 2uLL:
                v983 = *&v1059[16];
                v985 = *(*v1059 + 16);
                v984 = *(*v1059 + 24);
                v946 = v984 - v985;
                if (__OFSUB__(v984, v985))
                {
                  goto LABEL_848;
                }

                v3 = *&v1059[8];
                break;
              case 3uLL:
                goto LABEL_718;
              default:
                v946 = v1059[14];
                goto LABEL_718;
            }

            sub_100172D9C();
            sub_100172D9C();
            sub_100172D9C();
            v16 = v983;
LABEL_718:
            if (!__OFSUB__(v946, v16))
            {
              v986 = sub_100173028(v946 - v16);
              sub_10000E2A0(v986);
              if (v987)
              {
                sub_10000EC9C();
                Data._Representation.append(contentsOf:)();
                v988 = *(v3 + 16);
              }

              else
              {
                v988 = 0;
              }

              Data.append(_:)();
              sub_100096480(v1059);
              sub_100096480(v1059);
              switch(v2)
              {
                case 1:
                  sub_100096480(v1059);
                  if (__OFSUB__(v4, v15))
                  {
                    goto LABEL_853;
                  }

                  v945 = v4 - v15;
LABEL_748:
                  v13 = v1037;
                  v14 = (v988 + v945);
                  if (!__OFADD__(v988, v945))
                  {
                    goto LABEL_657;
                  }

                  goto LABEL_833;
                case 2:
                  v997 = *(v15 + 16);
                  v996 = *(v15 + 24);
                  sub_100096480(v1059);
                  v74 = __OFSUB__(v996, v997);
                  v945 = v996 - v997;
                  if (!v74)
                  {
                    goto LABEL_748;
                  }

                  goto LABEL_852;
                case 3:
                  sub_100096480(v1059);
                  v945 = 0;
                  goto LABEL_748;
                default:
                  sub_100096480(v1059);
                  goto LABEL_748;
              }
            }

            goto LABEL_831;
          }

          v961 = *(*v1059 + 16);
          sub_100172D9C();
          sub_100172D9C();
          sub_100172D9C();
          v962 = sub_1001706E8(2 * v961);
          sub_100015BE4(v962);
          if (v963)
          {
            sub_10000C910();
            Data._Representation.append(contentsOf:)();
            v3 = *(v2 + 16);
          }

          else
          {
            v3 = 0;
          }

          if (*(v15 + 16))
          {
            sub_10000B170();
            Data._Representation.append(contentsOf:)();
          }

          sub_100096480(v1059);
          sub_100096480(v1059);
          sub_100096480(v1059);
          v14 = (v3 + v961);
          if (__OFADD__(v3, v961))
          {
            goto LABEL_830;
          }

          break;
        case 7:
          sub_100096480(v1059);
          sub_100096480(v1059);
          v14 = 0;
          goto LABEL_656;
        default:
          LOBYTE(v1058[0]) = v1059[0] & 1;
          v18 = sub_100172DFC();
          v20 = (v19 + 1);
LABEL_647:
          v930 = sub_100172B5C(v18, v20);
          sub_10000F300(v930);
          if (v931)
          {
            sub_10000B170();
            v14 = v5;
            Data._Representation.append(contentsOf:)();
          }

          sub_100096480(v1059);
          sub_100096480(v1059);
          sub_100012FC8();

          goto LABEL_656;
      }

      goto LABEL_656;
  }

LABEL_17:
  v45 = v44;
LABEL_21:
  v46 = v42;
  v1044 = v45;
  v47 = __clz(__rbit64(v42)) | (v45 << 6);
  v48 = *(v1042 + 56);
  v49 = (*(v1042 + 48) + 16 * v47);
  v51 = *v49;
  v50 = v49[1];
  sub_10000BFF0();
  memcpy(v1054, v52, sizeof(v1054));
  if ((v50 & 0x1000000000000000) != 0)
  {
    sub_100008380();
    String.UTF8View._foreignCount()();
  }

  sub_100018A18();

  sub_10000BA78();
  v53 = sub_1001706E8(v35);
  sub_10000F300(v53);
  if (v54)
  {
    sub_10000B170();
    Data._Representation.append(contentsOf:)();
    v4 = *(v30 + 16);
  }

  else
  {
    v4 = 0;
  }

  v1045 = (v46 - 1) & v46;

  v55 = v1034;
  static String.Encoding.utf8.getter();
  sub_100172FC8();
  v56 = String.data(using:allowLossyConversion:)();
  v58 = v57;
  v1048 = *v1032;
  (v1048)(v55, v1035);
  sub_1001731E4();
  if (!v60 & v59)
  {
    v61 = 0;
  }

  else
  {
    v61 = v56;
  }

  if (!v60 & v59)
  {
    v62 = 0xC000000000000000;
  }

  else
  {
    v62 = v58;
  }

  sub_100007700();
  Data.append(_:)();

  switch(v62 >> 62)
  {
    case 1uLL:
      v72 = sub_100007700();
      sub_100014A40(v72, v73);
      LODWORD(v65) = HIDWORD(v61) - v61;
      if (__OFSUB__(HIDWORD(v61), v61))
      {
        goto LABEL_801;
      }

      v65 = v65;
LABEL_40:
      v74 = __OFADD__(v4, v65);
      v75 = v4 + v65;
      if (v74)
      {
        goto LABEL_779;
      }

      break;
    case 2uLL:
      v67 = *(v61 + 16);
      v66 = *(v61 + 24);
      v68 = sub_100007700();
      sub_100014A40(v68, v69);
      v65 = v66 - v67;
      if (!__OFSUB__(v66, v67))
      {
        goto LABEL_40;
      }

      goto LABEL_800;
    case 3uLL:
      v70 = sub_100007700();
      sub_100014A40(v70, v71);
      v65 = 0;
      goto LABEL_40;
    default:
      v63 = sub_100007700();
      sub_100014A40(v63, v64);
      v65 = BYTE6(v62);
      goto LABEL_40;
  }

  v76 = *v1054;
  v30 = *&v1054[8];
  v41 = *&v1054[16];
  v3 = *&v1054[24];
  v1043 = v75;
  switch(v1054[64])
  {
    case 1:
      v1028 = *&v1054[8];
      v1029 = *&v1054[16];
      if (!*(*&v1054[24] + 16))
      {
        goto LABEL_197;
      }

      sub_100167778(*&v1054[24]);
      sub_100018A18();
      sub_10000BA78();
      v177._rawValue = sub_1001706E8(v76);
      sub_100172F20(v177);
      sub_1001732FC();
      v178 = *(v3 + 16);
      if (!v178)
      {
        goto LABEL_201;
      }

      v41 = 0;
      v1046 = *(v3 + 16);
      v1047 = (v3 + 32);
      v179 = v178;
      v1030 = v33;
      v1038 = v3;
      while (2)
      {
        if (v41 >= v179)
        {
          goto LABEL_768;
        }

        sub_10017325C(72);
        v1048 = v41 + 1;
        v30 = v1050;
        v5 = v1052._object;
        switch(v1053)
        {
          case 1:
            v1039 = v1051;
            v1040 = v1052._countAndFlagsBits;
            v217 = *(v1052._object + 2);
            if (!v217)
            {
              goto LABEL_128;
            }

            v218 = 2 * v217;
            v219 = sub_10000CB00();
            sub_100163ABC(v219, v220);
            v221 = sub_10000CB00();
            sub_100163ABC(v221, v222);
            v223 = sub_1001706E8(v218);
            sub_10000F300(v223);
            v1041 = v50;
            if (v224)
            {
              sub_10000B170();
              Data._Representation.append(contentsOf:)();
              v225 = *(v30 + 16);
            }

            else
            {
              v225 = 0;
            }

            v271 = *(v5 + 16);
            if (v271)
            {
              v272 = v5 + 64;
              while (2)
              {
                sub_100010018();
                v273 = *v1057;
                v30 = *&v1057[8];
                v274 = *&v1057[16];
                v4 = *&v1057[24];
                switch(v1057[64])
                {
                  case 1:
                    sub_100172D64();
                    sub_100172D64();
                    sub_100172FE0();
                    ByteBuffer.writeAvroArray(_:)(v280);
                    goto LABEL_164;
                  case 2:
                    sub_100172D64();
                    sub_100172D64();
                    sub_100172FE0();
                    ByteBuffer.writeAvroMap(_:)(v278);
LABEL_164:
                    v281 = sub_10000AFB8();
                    sub_100096480(v281);

                    goto LABEL_165;
                  case 3:
                    v1078.schema.type._countAndFlagsBits = *v1057;
                    v1078.schema.type._object = *&v1057[8];
                    v1078.schema.name = *&v1057[16];
                    v279 = *(v272 + 16);
                    v1078.schema.namespace = *v272;
                    *&v1078.schema.fields._rawValue = v279;
                    sub_100172D64();
                    v277 = ByteBuffer.writeAvroRecord(_:)(&v1078);
                    goto LABEL_161;
                  case 4:
                    sub_100172DCC(v1079);
                    sub_100172D64();
                    sub_100163B18(v1079, v1058);
                    v273 = ByteBuffer.writeAvroUnion(_:)(v1079);
                    sub_100163B74(v1079);
                    goto LABEL_162;
                  default:
                    sub_100172D64();
                    v275 = sub_1000385F0();
                    v277 = ByteBuffer.writeAvroPrimitive(_:)(v275, v276, v274, v4);
LABEL_161:
                    v273 = v277;
LABEL_162:
                    sub_100096480(v1057);
LABEL_165:
                    v74 = __OFADD__(v225, v273);
                    v225 += v273;
                    if (v74)
                    {
                      goto LABEL_760;
                    }

                    v272 += 72;
                    if (!--v271)
                    {
                      break;
                    }

                    continue;
                }

                break;
              }
            }

            v282 = sub_100006D64();
            sub_10006C9F0(v282, v283, v284, _swiftEmptyArrayStorage);
            sub_1001731B0(v285);
            if (v59)
            {
              v328 = sub_100006530(v286);
              sub_10006C9F0(v328, v329, v330, v30);
              v30 = v331;
            }

            v3 = v1038;
            *(sub_10000BF64() + v271) = 0;
            v287 = v1049;
            Data._Representation.append(contentsOf:)();

            sub_100096480(&v1050);
            sub_100012FC8();

            v74 = __OFADD__(v225, v287);
            v76 = v225 + v287;
            if (!v74)
            {
              goto LABEL_170;
            }

            goto LABEL_798;
          case 2:
            v1039 = v1051;
            v1040 = v1052._countAndFlagsBits;
            v204 = *(v1052._object + 2);
            if (!v204)
            {
LABEL_128:
              v226 = sub_10000CB00();
              sub_100163ABC(v226, v227);
              v228 = sub_10000CB00();
              sub_100163ABC(v228, v229);
              v230 = sub_100006D64();
              sub_10006C9F0(v230, v231, v232, _swiftEmptyArrayStorage);
              sub_100008870(v233);
              if (v59)
              {
                v324 = sub_100006530(v234);
                sub_10006C9F0(v324, v325, v326, v30);
                v30 = v327;
              }

              sub_10000F70C();
              v76 = v1049;
              Data._Representation.append(contentsOf:)();
              v5 = v76;

              sub_100096480(&v1050);
              sub_100012FC8();

LABEL_131:
              v41 = v1048;
              goto LABEL_180;
            }

            v1041 = v50;
            v205 = 2 * v204;
            v206 = sub_10000CB00();
            sub_100163ABC(v206, v207);
            v208 = sub_10000CB00();
            sub_100163ABC(v208, v209);
            v210 = sub_1001706E8(v205);
            sub_10000F300(v210);
            if (v211)
            {
              sub_10000B170();
              Data._Representation.append(contentsOf:)();
              v212 = *(v30 + 16);
            }

            else
            {
              v212 = 0;
            }

            v249 = *(v5 + 64);
            v250 = *(v5 + 32);
            sub_100004538();
            v253 = v252 & v251;
            v4 = (v254 + 63) >> 6;

            v255 = 0;
            break;
          case 3:
            v1081 = v1050;
            v1082 = v1051;
            v1083 = v1052;
            v213 = *(v76 + 48);
            v1084 = *(v76 + 32);
            v1085 = v213;
            v214 = sub_10000CB00();
            sub_100163ABC(v214, v215);
            sub_100173150();
            v186 = ByteBuffer.writeAvroRecord(_:)(v216);
            goto LABEL_124;
          case 4:
            v1041 = v50;
            v187 = v3;
            sub_1000382B4();
            sub_100025124();
            v190 = v189 ^ (v188 >> 63);
            v191 = v190 & 0x7F;
            v192 = sub_100172E24();
            if (v190 >= 0x80)
            {
              sub_100163ABC(v192, v193);
              v235 = sub_100172E24();
              sub_100163ABC(v235, v236);
              sub_100172ED8();
              v237 = sub_100006D64();
              sub_10006C9F0(v237, v238, v239, _swiftEmptyArrayStorage);
              v196 = v240;
              v241 = v240[2];
              v5 = v1049;
              do
              {
                v242 = v196[3];
                if (v241 >= v242 >> 1)
                {
                  v245 = sub_100006530(v242);
                  sub_10006C9F0(v245, v246, v247, v196);
                  v196 = v248;
                }

                v243 = v191 | 0x80;
                v191 = (v190 >> 7) & 0x7F;
                v244 = v190 >> 14;
                v190 >>= 7;
                v196[2] = v241 + 1;
                *(v196 + v241++ + 32) = v243;
              }

              while (v244);
            }

            else
            {
              sub_100163ABC(v192, v193);
              v194 = sub_100172E24();
              sub_100163ABC(v194, v195);
              sub_100172ED8();
              v196 = _swiftEmptyArrayStorage;
              v5 = v1049;
            }

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v315 = v196[2];
              v316 = sub_1000040F0();
              sub_10006C9F0(v316, v317, v318, v196);
              v196 = v319;
            }

            v198 = v196[2];
            v197 = v196[3];
            if (v198 >= v197 >> 1)
            {
              v320 = sub_100006530(v197);
              sub_10006C9F0(v320, v321, v322, v196);
              v196 = v323;
            }

            v196[2] = v198 + 1;
            *(v196 + v198 + 32) = v191;
            sub_100172F38();
            v4 = v196[2];

            v199 = v1058[1];
            v30 = v1058[2];
            v200 = v1058[3];
            v201 = v1058[4];
            switch(LOBYTE(v1058[9]))
            {
              case 1:
                v297 = sub_100005700();
                sub_100163ABC(v297, v1057);
                sub_100017D04();
                ByteBuffer.writeAvroArray(_:)(v298);
                goto LABEL_177;
              case 2:
                v292 = sub_100005700();
                sub_100163ABC(v292, v1057);
                sub_100017D04();
                ByteBuffer.writeAvroMap(_:)(v293);
LABEL_177:
                sub_100172DE4();
                sub_100096480(&v1050);

                goto LABEL_178;
              case 3:
                v1086.schema.type._countAndFlagsBits = v1058[1];
                v1086.schema.type._object = v1058[2];
                v1086.schema.name = *&v1058[3];
                v294 = sub_100007E7C();
                v296 = sub_10001BCC8(&v1086, v294, v295);
                sub_100163ABC(v296, v1057);
                v199 = v5;
                ByteBuffer.writeAvroRecord(_:)(&v1086);
                goto LABEL_175;
              case 4:
                sub_100172D18();
                sub_100005B10();
                v288 = sub_100005700();
                sub_100163ABC(v288, v1056);
                sub_100173010();
                v289 = sub_1001706E8(v199);
                sub_10000F300(v289);
                if (v290)
                {
                  sub_10000B170();
                  Data._Representation.append(contentsOf:)();
                  v291 = *(v30 + 16);
                }

                else
                {
                  v291 = 0;
                }

                v299 = *&v1057[8];
                v300 = *&v1057[24];
                v30 = *&v1057[32];
                switch(v1057[72])
                {
                  case 1:
                    v312 = sub_100023FEC();
                    v302 = v1049;
                    ByteBuffer.writeAvroArray(_:)(v312);
                    goto LABEL_193;
                  case 2:
                    v307 = sub_100023FEC();
                    v302 = v1049;
                    ByteBuffer.writeAvroMap(_:)(v307);
LABEL_193:
                    v313 = sub_10000AFB8();
                    sub_100163B74(v313);
                    sub_100163B74(v1058);
                    sub_100096480(&v1050);

                    goto LABEL_194;
                  case 3:
                    v1087.schema.type._countAndFlagsBits = *&v1057[8];
                    v1087.schema.type._object = *&v1057[16];
                    v1087.schema.name = *&v1057[24];
                    v191 = v1057;
                    v308 = sub_100007B00();
                    v310 = sub_10001BCC8(&v1087, v308, v309);
                    sub_100163ABC(v310, v1056);
                    v302 = v1049;
                    ByteBuffer.writeAvroRecord(_:)(&v1087);
                    goto LABEL_191;
                  case 4:
                    sub_100172DCC(v1056);
                    sub_10001ACCC();
                    sub_10017307C();
                    sub_1001732E4();
                    v305._rawValue = sub_1001706E8(v299);
                    sub_100172F98(v305);
                    sub_100172F08();
                    sub_100172E84(v1088);
                    ByteBuffer.writeAvroValue(_:)(v1088);
                    sub_10001DA44();
                    sub_100163B74(v1057);
                    sub_100163B74(v1058);
                    sub_100096480(&v1050);
                    sub_100096480(v300 + 8);
                    v306 = sub_100005700();
                    sub_100096480(v306);
                    sub_100096480(&v1050);
                    v74 = __OFADD__(v30, v299);
                    v302 = v30 + v299;
                    if (!v74)
                    {
                      goto LABEL_195;
                    }

                    goto LABEL_829;
                  default:
                    sub_100172EA0();
                    v301 = sub_10000BAF0();
                    v302 = v1049;
                    ByteBuffer.writeAvroPrimitive(_:)(v301, v303, v304, v30);
LABEL_191:
                    v311 = sub_10000AFB8();
                    sub_100163B74(v311);
                    sub_100163B74(v1058);
                    sub_100096480(&v1050);
                    sub_100096480(v191 + 8);
LABEL_194:
                    v314 = sub_100005700();
                    sub_100096480(v314);
                    sub_100096480(&v1050);
LABEL_195:
                    v3 = v187;
                    v50 = v1041;
                    v41 = v1048;
                    v74 = __OFADD__(v291, v302);
                    v199 = v291 + v302;
                    if (v74)
                    {
                      goto LABEL_813;
                    }

                    v5 = v1049;
                    break;
                }

                goto LABEL_179;
              default:
                sub_100013644();
                v202 = sub_1000385F0();
                v199 = v5;
                ByteBuffer.writeAvroPrimitive(_:)(v202, v203, v200, v201);
LABEL_175:
                sub_100172DE4();
                sub_100096480(&v1050);
                sub_100096480(v191 + 8);
LABEL_178:
                sub_100096480(&v1050);
                v3 = v187;
                v50 = v1041;
                v41 = v1048;
LABEL_179:
                v74 = __OFADD__(v4, v199);
                v76 = v4 + v199;
                if (!v74)
                {
                  goto LABEL_180;
                }

                goto LABEL_790;
            }

          default:
            v180 = sub_10000CB00();
            sub_100163ABC(v180, v181);
            sub_10000F18C();
            sub_100173150();
            v186 = ByteBuffer.writeAvroPrimitive(_:)(v182, v183, v184, v185);
LABEL_124:
            v76 = v186;
            sub_100096480(&v1050);
            goto LABEL_131;
        }

LABEL_139:
        if (v253)
        {
          goto LABEL_144;
        }

        while (1)
        {
          v256 = v255 + 1;
          if (__OFADD__(v255, 1))
          {
            goto LABEL_755;
          }

          if (v256 >= v4)
          {
            break;
          }

          v253 = *(v5 + 64 + 8 * v256);
          ++v255;
          if (v253)
          {
            v255 = v256;
LABEL_144:
            v257 = *(v5 + 56);
            v258 = (*(v5 + 48) + 16 * (__clz(__rbit64(v253)) | (v255 << 6)));
            v259 = *v258;
            v260 = v258[1];
            sub_10000BFF0();
            memcpy(v1080, v261, 0x41uLL);

            sub_100163ABC(v1080, v1058);
            v262._countAndFlagsBits = v259;
            v262._object = v260;
            ByteBuffer.writeAvroString(_:)(v262);
            sub_100172F08();
            v263 = ByteBuffer.writeAvroValue(_:)(v1080);
            sub_100096480(v1080);
            v264 = v30 + v263;
            if (__OFADD__(v30, v263))
            {
              goto LABEL_777;
            }

            v253 &= v253 - 1;
            v74 = __OFADD__(v212, v264);
            v212 += v264;
            if (v74)
            {
              goto LABEL_778;
            }

            goto LABEL_139;
          }
        }

        v265 = sub_100006D64();
        sub_10006C9F0(v265, v266, v267, _swiftEmptyArrayStorage);
        sub_100008870(v268);
        if (v59)
        {
          v332 = sub_100006530(v269);
          sub_10006C9F0(v332, v333, v334, v30);
          v30 = v335;
        }

        v33 = v1030;
        v3 = v1038;
        sub_10000F70C();
        v270 = v1049;
        Data._Representation.append(contentsOf:)();

        sub_100096480(&v1050);
        sub_100012FC8();

        v74 = __OFADD__(v212, v270);
        v76 = v212 + v270;
        if (v74)
        {
          goto LABEL_799;
        }

LABEL_170:
        v41 = v1048;
        v5 = v1049;
        v50 = v1041;
LABEL_180:
        v74 = __OFADD__(v50, v76);
        v50 += v76;
        if (v74)
        {
          goto LABEL_769;
        }

        if (v41 != v1046)
        {
          v179 = *(v3 + 16);
          continue;
        }

        break;
      }

LABEL_201:
      sub_100170344(0);
      sub_1001730EC();

      sub_100096480(v1054);
      v176 = v50 + v5;
      if (__OFADD__(v50, v5))
      {
        goto LABEL_811;
      }

      goto LABEL_202;
    case 2:
      v1028 = *&v1054[8];
      v1029 = *&v1054[16];
      v88 = *(*&v1054[24] + 16);
      if (!v88)
      {
LABEL_197:
        sub_10000BA78();
        v1058[0] = _swiftEmptyArrayStorage;
        sub_100003F14();
        sub_100172934(v336);
        v30 = *(v1058[0] + 16);
        v337 = sub_100010008();
        sub_1001729D8(v337, v41);
        v41 = v1058[0];
        *(v1058[0] + 16) = v30 + 1;
        *(v41 + v30 + 32) = 0;
        v176 = v5;
        Data._Representation.append(contentsOf:)();

        sub_100096480(v1054);
        sub_100167778(v41);
        sub_1000054F4();

        goto LABEL_202;
      }

      v89 = 2 * v88;
      sub_10000BA78();
      v90._rawValue = sub_1001706E8(v89);
      v4 = sub_100172F20(v90);

      v92 = v3 + 64;
      v91 = *(v3 + 64);
      v93 = *(v3 + 32);
      sub_100004538();
      v96 = v95 & v94;
      v98 = (v97 + 63) >> 6;

      v99 = 0;
      v1030 = v33;
      v1038 = v3;
      v1040 = v3 + 64;
      v1041 = v98;
      if (!v96)
      {
        goto LABEL_50;
      }

      break;
    case 3:
      v1093 = *v1054;
      sub_10000BA78();
      v79 = ByteBuffer.writeAvroRecord(_:)(&v1093);
      goto LABEL_105;
    case 4:
      sub_100172DCC(v1058);
      sub_10001ACCC();
      v80 = sub_100173204();
      sub_100163ABC(v80, v81);
      sub_100172ED8();
      v82 = sub_1001706E8(v76);
      sub_10000F300(v82);
      if (v83)
      {
        sub_10000B170();
        Data._Representation.append(contentsOf:)();
      }

      sub_100167778(v30);
      sub_100173314();
      v84 = v1058[1];
      sub_10017319C();
      switch(v85)
      {
        case 1:
          v347 = sub_100005700();
          sub_100163ABC(v347, v1057);
          sub_10000BA20();
          ByteBuffer.writeAvroArray(_:)(v348);
          goto LABEL_210;
        case 2:
          v342 = sub_100005700();
          sub_100163ABC(v342, v1057);
          sub_10000BA20();
          ByteBuffer.writeAvroMap(_:)(v343);
LABEL_210:
          sub_100172DE4();
          sub_100096480(v1054);

          goto LABEL_211;
        case 3:
          v1094.schema.type._countAndFlagsBits = v84;
          v1094.schema.type._object = v30;
          v1094.schema.name._countAndFlagsBits = v3;
          v1094.schema.name._object = v4;
          v344 = sub_100007E7C();
          v346 = sub_10001BCC8(&v1094, v344, v345);
          sub_100163ABC(v346, v1057);
          v84 = v5;
          ByteBuffer.writeAvroRecord(_:)(&v1094);
          goto LABEL_208;
        case 4:
          sub_100172D18();
          sub_100005B10();
          v3 = v1058;
          sub_100163ABC(&v1058[1], v1056);
          sub_100173010();
          v340._rawValue = sub_1001706E8(v84);
          sub_100172F20(v340);
          sub_100172F08();
          sub_100172EF0(v1095, v1057);
          ByteBuffer.writeAvroValue(_:)(v1095);
          v341 = sub_10000AFB8();
          sub_100163B74(v341);
          sub_100163B74(v1058);
          sub_100096480(v1054);
          sub_100096480(&v1058[1]);
          sub_100096480(v1054);
          v74 = __OFADD__(v30, v84);
          v84 += v30;
          if (!v74)
          {
            goto LABEL_212;
          }

          goto LABEL_820;
        default:
          sub_100013644();
          v86 = sub_1000385F0();
          v84 = v5;
          ByteBuffer.writeAvroPrimitive(_:)(v86, v87, v3, v4);
LABEL_208:
          sub_100172DE4();
          sub_100096480(v1054);
          sub_100096480(v41 + 8);
LABEL_211:
          sub_100096480(v1054);
LABEL_212:
          v43 = v1033;
          v339 = v1044;
          v42 = v1045;
          v74 = __OFADD__(v50, v84);
          v176 = v50 + v84;
          if (!v74)
          {
            goto LABEL_213;
          }

          goto LABEL_805;
      }

    default:
      sub_10000BA78();
      v77 = sub_1000385F0();
      v79 = ByteBuffer.writeAvroPrimitive(_:)(v77, v78, v41, v3);
LABEL_105:
      v176 = v79;
      sub_100096480(v1054);
      sub_100096480(v1054);
      goto LABEL_202;
  }

  while (2)
  {
    v5 = v99;
LABEL_53:
    sub_1001731F0(__rbit64(v96));
    v102 = *v100;
    v101 = v100[1];
    sub_10000BFF0();
    memcpy(v1055, v103, sizeof(v1055));
    if ((v101 & 0x1000000000000000) != 0)
    {
      sub_10001BD4C();
      String.UTF8View._foreignCount()();
    }

    sub_100018A18();

    v104 = sub_1000190C0();
    sub_100163ABC(v104, v105);
    v106 = sub_1001706E8(v92);
    sub_10000F300(v106);
    v1046 = v4;
    if (v107)
    {
      sub_10000B170();
      Data._Representation.append(contentsOf:)();
      v1047 = *(v30 + 16);
    }

    else
    {
      v1047 = 0;
    }

    v96 &= v96 - 1;

    v108 = v1034;
    static String.Encoding.utf8.getter();
    sub_100172FC8();
    v109 = String.data(using:allowLossyConversion:)();
    v111 = v110;
    (v1048)(v108, v1035);
    sub_1001731E4();
    if (!v113 & v112)
    {
      v114 = 0;
    }

    else
    {
      v114 = v109;
    }

    if (!v113 & v112)
    {
      v30 = 0xC000000000000000;
    }

    else
    {
      v30 = v111;
    }

    sub_1000E2258();
    Data.append(_:)();

    v98 = v1041;
    switch(v30 >> 62)
    {
      case 1uLL:
        v124 = sub_1000E2258();
        sub_100014A40(v124, v125);
        LODWORD(v117) = HIDWORD(v114) - v114;
        if (__OFSUB__(HIDWORD(v114), v114))
        {
          goto LABEL_809;
        }

        v117 = v117;
LABEL_72:
        v41 = (v1047 + v117);
        if (__OFADD__(v1047, v117))
        {
          goto LABEL_787;
        }

        break;
      case 2uLL:
        v119 = *(v114 + 16);
        v118 = *(v114 + 24);
        v120 = sub_1000E2258();
        sub_100014A40(v120, v121);
        v117 = v118 - v119;
        if (!__OFSUB__(v118, v119))
        {
          goto LABEL_72;
        }

        goto LABEL_808;
      case 3uLL:
        v122 = sub_1000E2258();
        sub_100014A40(v122, v123);
        v117 = 0;
        goto LABEL_72;
      default:
        v115 = sub_1000E2258();
        sub_100014A40(v115, v116);
        v117 = BYTE6(v30);
        goto LABEL_72;
    }

    v127 = *&v1055[8];
    v126 = *v1055;
    v129 = *&v1055[24];
    v128 = *&v1055[16];
    switch(v1055[64])
    {
      case 1:
        v1047 = (v1047 + v117);
        if (*(*&v1055[24] + 16))
        {
          sub_100167778(*&v1055[24]);
          sub_100018A18();
          v149 = sub_1000190C0();
          sub_100163ABC(v149, v150);
          v151._rawValue = sub_1001706E8(v126);
          v152 = sub_100172F98(v151);

          v153 = *(v129 + 16);
          if (v153)
          {
            v30 = v129 + 32;
            while (1)
            {
              memcpy(v1089, v30, 0x41uLL);
              sub_100163ABC(v1089, v1058);
              v154 = ByteBuffer.writeAvroValue(_:)(v1089);
              sub_100096480(v1089);
              v74 = __OFADD__(v152, v154);
              v152 += v154;
              if (v74)
              {
                break;
              }

              v30 += 72;
              if (!--v153)
              {
                goto LABEL_88;
              }
            }

LABEL_776:
            __break(1u);
LABEL_777:
            __break(1u);
LABEL_778:
            __break(1u);
LABEL_779:
            __break(1u);
LABEL_780:
            __break(1u);
LABEL_781:
            __break(1u);
LABEL_782:
            __break(1u);
LABEL_783:
            __break(1u);
LABEL_784:
            __break(1u);
            goto LABEL_785;
          }

LABEL_88:
          v155._rawValue = sub_1001706E8(0);
          v156 = sub_100172F98(v155);

          sub_100096480(v1055);
          v74 = __OFADD__(v152, v156);
          v126 = v152 + v156;
          if (v74)
          {
            goto LABEL_817;
          }

          v33 = v1030;
          v148 = v1046;
          v41 = v1047;
          v98 = v1041;
        }

        else
        {
          v157 = sub_1000190C0();
          sub_100163ABC(v157, v158);
          v159 = sub_100006D64();
          sub_10006C9F0(v159, v160, v161, _swiftEmptyArrayStorage);
          v1058[0] = v162;
          v163 = *(v162 + 16);
          sub_10000AD48();
          sub_1001729D8(v163, v164);
          sub_100172E30();

          sub_100096480(v1055);
          sub_100167778(v30);
          sub_10000AB28();

          v33 = v1030;
          v148 = v1046;
          v41 = v1047;
        }

LABEL_100:
        v175 = v41 + v126;
        v3 = v1038;
        if (__OFADD__(v41, v126))
        {
          goto LABEL_788;
        }

        v74 = __OFADD__(v148, v175);
        v4 = &v175[v148];
        if (v74)
        {
LABEL_789:
          __break(1u);
LABEL_790:
          __break(1u);
LABEL_791:
          __break(1u);
LABEL_792:
          __break(1u);
LABEL_793:
          __break(1u);
          goto LABEL_794;
        }

        v99 = v5;
        v92 = v1040;
        if (v96)
        {
          continue;
        }

        while (1)
        {
LABEL_50:
          v5 = v99 + 1;
          if (__OFADD__(v99, 1))
          {
            goto LABEL_762;
          }

          if (v5 >= v98)
          {
            break;
          }

          v96 = *(v92 + 8 * v5);
          ++v99;
          if (v96)
          {
            goto LABEL_53;
          }
        }

        sub_100173150();
        sub_100170344(v338);
        sub_1001730EC();

        sub_100096480(v1054);
        v74 = __OFADD__(v4, v92);
        v176 = v4 + v92;
        if (v74)
        {
          goto LABEL_810;
        }

LABEL_202:
        v43 = v1033;
        v339 = v1044;
        v42 = v1045;
LABEL_213:
        v349 = v1043 + v176;
        if (__OFADD__(v1043, v176))
        {
          goto LABEL_780;
        }

        v74 = __OFADD__(v33, v349);
        v33 += v349;
        if (v74)
        {
          goto LABEL_781;
        }

        v44 = v339;
        v35 = v1031;
        if (v42)
        {
          goto LABEL_17;
        }

        while (1)
        {
LABEL_18:
          v45 = v44 + 1;
          if (__OFADD__(v44, 1))
          {
            goto LABEL_756;
          }

          if (v45 >= v43)
          {
            break;
          }

          v42 = *(v35 + 8 * v45);
          ++v44;
          if (v42)
          {
            goto LABEL_21;
          }
        }

        v2 = v1042;

        v1058[0] = _swiftEmptyArrayStorage;
        sub_100003F14();
        sub_100172934(v885);
        v886 = *(v1058[0] + 16);
        v887 = sub_100010008();
        sub_1001729D8(v887, v41);
        v888 = sub_10002D480();
        v889 = ByteBuffer.writeBytes(_:)(v888);

        sub_100096480(v1059);
        v74 = __OFADD__(v33, v889);
        v14 = (v33 + v889);
        if (v74)
        {
          goto LABEL_802;
        }

LABEL_656:
        v13 = v1037;
LABEL_657:
        v12 = v14 + v1036;
        if (__OFADD__(v1036, v14))
        {
          goto LABEL_771;
        }

        v11 = v1025;
        if (v13 != v1027)
        {
          goto LABEL_3;
        }

LABEL_751:
        sub_100005460();
        return result;
      case 2:
        v143 = sub_1000190C0();
        sub_100163ABC(v143, v144);
        sub_100172FE0();
        v126 = ByteBuffer.writeAvroMap(_:)(v145);
        sub_100096480(v1055);

        goto LABEL_82;
      case 3:
        v1090 = *v1055;
        v146 = sub_1000190C0();
        sub_100163ABC(v146, v147);
        v132 = ByteBuffer.writeAvroRecord(_:)(&v1090);
        goto LABEL_81;
      case 4:
        sub_100172DCC(v1058);
        sub_10001ACCC();
        sub_100163ABC(v1055, v1057);
        sub_100172ED8();
        v133 = sub_1001706E8(v126);
        sub_10000F300(v133);
        if (v134)
        {
          sub_10000B170();
          Data._Representation.append(contentsOf:)();
        }

        v135 = sub_100167778(v30);

        v136 = v1058[1];
        v30 = v1058[2];
        v137 = v1058[3];
        v138 = v1058[4];
        switch(LOBYTE(v1058[9]))
        {
          case 1:
            v173 = sub_100005700();
            sub_100163ABC(v173, v1057);
            sub_100172FE0();
            ByteBuffer.writeAvroArray(_:)(v174);
            goto LABEL_97;
          case 2:
            v168 = sub_100005700();
            sub_100163ABC(v168, v1057);
            sub_100172FE0();
            ByteBuffer.writeAvroMap(_:)(v169);
LABEL_97:
            sub_100172DE4();
            sub_100096480(v1055);

            goto LABEL_98;
          case 3:
            v1091.schema.type._countAndFlagsBits = v1058[1];
            v1091.schema.type._object = v1058[2];
            v1091.schema.name = *&v1058[3];
            v30 = v41;
            v170 = sub_100007E7C();
            v172 = sub_10001BCC8(&v1091, v170, v171);
            sub_100163ABC(v172, v1057);
            v136 = v1049;
            ByteBuffer.writeAvroRecord(_:)(&v1091);
            sub_100172DE4();
            sub_100096480(v1055);
            v142 = v41 + 8;
            goto LABEL_95;
          case 4:
            v30 = v41;
            sub_100172D18();
            sub_100005B10();
            sub_100163ABC(&v1058[1], v1056);
            sub_100173010();
            v165._rawValue = sub_1001706E8(v136);
            v166 = sub_100172F98(v165);

            sub_100172EF0(v1092, v1057);
            ByteBuffer.writeAvroValue(_:)(v1092);
            v167 = sub_10000AFB8();
            sub_100163B74(v167);
            sub_100163B74(v1058);
            sub_100096480(v1055);
            sub_100096480(&v1058[1]);
            sub_100096480(v1055);
            v74 = __OFADD__(v166, v136);
            v136 += v166;
            if (v74)
            {
              goto LABEL_826;
            }

            v33 = v1030;
            v148 = v1046;
            break;
          default:
            v139 = sub_100005700();
            sub_100163ABC(v139, v1057);
            v140 = sub_1000385F0();
            v136 = v1049;
            ByteBuffer.writeAvroPrimitive(_:)(v140, v141, v137, v138);
            sub_100172DE4();
            sub_100096480(v1055);
            v142 = sub_100005700();
LABEL_95:
            sub_100096480(v142);
LABEL_98:
            sub_100096480(v1055);
            v33 = v1030;
            v148 = v1046;
            break;
        }

        v74 = __OFADD__(v135, v136);
        v126 = v135 + v136;
        if (!v74)
        {
          goto LABEL_100;
        }

        goto LABEL_812;
      default:
        v130 = sub_1000190C0();
        sub_100163ABC(v130, v131);
        v132 = ByteBuffer.writeAvroPrimitive(_:)(v126, v127, v128, v129);
LABEL_81:
        v126 = v132;
        sub_100096480(v1055);
        sub_100096480(v1055);
LABEL_82:
        v33 = v1030;
        v148 = v1046;
        goto LABEL_100;
    }
  }
}