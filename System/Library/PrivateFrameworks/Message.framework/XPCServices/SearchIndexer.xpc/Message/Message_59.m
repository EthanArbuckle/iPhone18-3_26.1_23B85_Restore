uint64_t sub_1003BAAB8(uint64_t a1, Swift::Int at, uint64_t a3)
{
  v4 = *(v3 + 24);
  if (v4 > a1)
  {
    __break(1u);
    goto LABEL_24;
  }

  v5 = *(v3 + 32);
  if (v5 < at)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v7 = at - a1;
  if (__OFSUB__(at, a1))
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (v7 != 1)
  {
    if (v7 <= 1)
    {
      if (!__OFADD__(a1, 1))
      {
        v14 = *(v3 + 12);
        v15 = __OFSUB__(v14, at);
        v16 = v14 - at;
        if (!v15)
        {
          ByteBuffer.copyBytes(at:to:length:)(at, a1 + 1, v16);
          if (v18)
          {
LABEL_37:
            result = swift_unexpectedError();
            __break(1u);
            return result;
          }

          result = sub_1003B5C9C(a3, a1);
          v19 = 1 - v7;
          if (!__OFSUB__(1, v7))
          {
            v20 = *(v3 + 12);
            v21 = __CFADD__(v20, v19);
            v22 = v20 + v19;
            if (!v21)
            {
              if (*(v3 + 16) - (*(v3 + 22) | (*(v3 + 20) << 8)) >= v22)
              {
                *(v3 + 12) = v22;
                v15 = __OFADD__(v5, v19);
                v23 = v5 + v19;
                if (!v15)
                {
                  if (v23 >= v4)
                  {
                    *(v3 + 24) = v4;
                    *(v3 + 32) = v23;
                    return result;
                  }

                  goto LABEL_35;
                }

LABEL_34:
                __break(1u);
LABEL_35:
                __break(1u);
                goto LABEL_36;
              }

LABEL_33:
              __break(1u);
              goto LABEL_34;
            }

LABEL_32:
            __break(1u);
            goto LABEL_33;
          }

LABEL_31:
          __break(1u);
          goto LABEL_32;
        }

        goto LABEL_29;
      }

      goto LABEL_27;
    }

    sub_1003B5C9C(a3, a1);
    if (!__OFADD__(a1, 1))
    {
      v10 = *(v3 + 12);
      if (!__OFSUB__(v10, at))
      {
        ByteBuffer.copyBytes(at:to:length:)(at, a1 + 1, v10 - at);
        if (v11)
        {
LABEL_36:
          swift_unexpectedError();
          __break(1u);
          goto LABEL_37;
        }

        v12 = *(v3 + 12) - (v7 - 1);
        if (*(v3 + 16) - (*(v3 + 22) | (*(v3 + 20) << 8)) >= v12)
        {
          *(v3 + 12) = v12;
          result = sub_1003BC2C4(v7 - 1, v4, v5);
          *(v3 + 24) = result;
          *(v3 + 32) = v13;
          return result;
        }

        goto LABEL_30;
      }

      goto LABEL_28;
    }

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
    goto LABEL_31;
  }

  return sub_1003B5C9C(a3, a1);
}

uint64_t sub_1003BACC4(Swift::Int to, Swift::Int at)
{
  v3 = *(v2 + 24);
  if (v3 > to)
  {
    __break(1u);
    goto LABEL_22;
  }

  v5 = *(v2 + 32);
  if (v5 < at)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v7 = at - to;
  if (__OFSUB__(at, to))
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v7)
  {
    if (v7 <= 0)
    {
      v13 = *(v2 + 12);
      if (!__OFSUB__(v13, at))
      {
        ByteBuffer.copyBytes(at:to:length:)(at, to, v13 - at);
        if (v14)
        {
LABEL_33:
          result = swift_unexpectedError();
          __break(1u);
          return result;
        }

        result = sub_1003B5464(to);
        v15 = -v7;
        if (!__OFSUB__(0, v7))
        {
          v16 = *(v2 + 12);
          v17 = __CFADD__(v16, v15);
          v18 = v16 - v7;
          if (!v17)
          {
            if (*(v2 + 16) - (*(v2 + 22) | (*(v2 + 20) << 8)) >= v18)
            {
              *(v2 + 12) = v18;
              v19 = __OFADD__(v5, v15);
              v20 = v5 - v7;
              if (!v19)
              {
                if (v20 >= v3)
                {
                  *(v2 + 24) = v3;
                  *(v2 + 32) = v20;
                  return result;
                }

                goto LABEL_31;
              }

LABEL_30:
              __break(1u);
LABEL_31:
              __break(1u);
              goto LABEL_32;
            }

LABEL_29:
            __break(1u);
            goto LABEL_30;
          }

LABEL_28:
          __break(1u);
          goto LABEL_29;
        }

LABEL_27:
        __break(1u);
        goto LABEL_28;
      }

LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

    sub_1003B5464(to);
    v8 = *(v2 + 12);
    if (!__OFSUB__(v8, at))
    {
      ByteBuffer.copyBytes(at:to:length:)(at, to, v8 - at);
      if (v9)
      {
LABEL_32:
        swift_unexpectedError();
        __break(1u);
        goto LABEL_33;
      }

      v10 = *(v2 + 12) - v7;
      if (*(v2 + 16) - (*(v2 + 22) | (*(v2 + 20) << 8)) >= v10)
      {
        *(v2 + 12) = v10;
        result = sub_1003BC2C4(v7, v3, v5);
        *(v2 + 24) = result;
        *(v2 + 32) = v12;
        return result;
      }

      goto LABEL_25;
    }

LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  return sub_1003B5464(to);
}

uint64_t ByteBufferView.replaceSubrange<A>(_:with:)(uint64_t a1, Swift::Int a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v6 = *(v5 + 24);
  if (v6 > a1)
  {
    __break(1u);
    goto LABEL_26;
  }

  v8 = *(v5 + 32);
  if (v8 < a2)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v13 = sub_1004A5E84();
  v14 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (v13 != v14)
  {
    if (sub_1004A5E84() >= v14)
    {
      v27 = sub_1004A5E84();
      if (!__OFADD__(a1, v27))
      {
        v28 = *(v5 + 12);
        if (!__OFSUB__(v28, a2))
        {
          ByteBuffer.copyBytes(at:to:length:)(a2, a1 + v27, v28 - a2);
          if (v29)
          {
LABEL_41:
            result = swift_unexpectedError();
            __break(1u);
            return result;
          }

          v30 = *(a5 + 8);
          ByteBuffer.setBytes<A>(_:at:)(a3, a1, a4);
          result = sub_1004A5E84();
          v31 = result - v14;
          if (!__OFSUB__(result, v14))
          {
            v32 = *(v5 + 12);
            v33 = __CFADD__(v32, v31);
            v34 = v32 + v31;
            if (!v33)
            {
              if (*(v5 + 16) - (*(v5 + 22) | (*(v5 + 20) << 8)) >= v34)
              {
                *(v5 + 12) = v34;
                v22 = __OFADD__(v8, v31);
                v35 = v8 + v31;
                if (!v22)
                {
                  if (v35 >= v6)
                  {
                    *(v5 + 24) = v6;
                    *(v5 + 32) = v35;
                    return result;
                  }

                  goto LABEL_39;
                }

LABEL_38:
                __break(1u);
LABEL_39:
                __break(1u);
                goto LABEL_40;
              }

LABEL_37:
              __break(1u);
              goto LABEL_38;
            }

            goto LABEL_35;
          }

          goto LABEL_33;
        }

        goto LABEL_31;
      }

      goto LABEL_29;
    }

    v17 = *(a5 + 8);
    ByteBuffer.setBytes<A>(_:at:)(a3, a1, a4);
    v18 = sub_1004A5E84();
    if (!__OFADD__(a1, v18))
    {
      v19 = *(v5 + 12);
      if (!__OFSUB__(v19, a2))
      {
        ByteBuffer.copyBytes(at:to:length:)(a2, a1 + v18, v19 - a2);
        if (v20)
        {
LABEL_40:
          swift_unexpectedError();
          __break(1u);
          goto LABEL_41;
        }

        v21 = sub_1004A5E84();
        v22 = __OFSUB__(v14, v21);
        v23 = v14 - v21;
        if (!v22)
        {
          v24 = *(v5 + 12);
          v22 = __OFSUB__(v24, v23);
          v25 = v24 - v23;
          if (!v22)
          {
            if (*(v5 + 16) - (*(v5 + 22) | (*(v5 + 20) << 8)) >= v25)
            {
              *(v5 + 12) = v25;
              result = sub_1003BC2C4(v23, v6, v8);
              *(v5 + 24) = result;
              *(v5 + 32) = v26;
              return result;
            }

            goto LABEL_36;
          }

          goto LABEL_34;
        }

        goto LABEL_32;
      }

      goto LABEL_30;
    }

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
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v15 = *(a5 + 8);

  return ByteBuffer.setBytes<A>(_:at:)(a3, a1, a4);
}

void (*ByteBufferView.subscript.modify(void (**a1)(uint64_t *a1, char a2), uint64_t a2, uint64_t a3))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    result = swift_coroFrameAlloc();
  }

  else
  {
    result = malloc(0xE0uLL);
  }

  *a1 = result;
  *(result + 26) = a3;
  *(result + 27) = v3;
  *(result + 25) = a2;
  if (a2 < 0 || (v8 = *(v3 + 16), v9 = *(v3 + 20), v10 = *(v3 + 22), v8 - (v10 | (v9 << 8)) < a3))
  {
    __break(1u);
  }

  else
  {
    v11 = *(v3 + 8);
    *(result + 10) = *v3;
    *(result + 11) = v11;
    *(result + 24) = v8;
    *(result + 50) = v9;
    *(result + 102) = v10;
    *(result + 13) = a2;
    *(result + 14) = a3;

    return sub_1003BB220;
  }

  return result;
}

void sub_1003BB220(uint64_t *a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v4 = *(v2 + 208);
    v3 = *(v2 + 216);
    v5 = *(v2 + 200);
    v6 = *(v2 + 96);
    *v2 = *(v2 + 80);
    *(v2 + 16) = v6;
    *(v2 + 32) = *(v2 + 112);
    sub_1003BD79C(v2, v2 + 160);
    sub_1003BA6F0(v5, v4, v2);
    sub_1003A52D0(v2);
    v7 = *(v2 + 96);
    *(v2 + 120) = *(v2 + 80);
    *(v2 + 136) = v7;
    *(v2 + 152) = *(v2 + 112);
    v8 = v2 + 120;
  }

  else
  {
    v9 = *(v2 + 208);
    v10 = *(v2 + 216);
    v11 = *(v2 + 200);
    v12 = *(v2 + 96);
    *(v2 + 40) = *(v2 + 80);
    *(v2 + 56) = v12;
    *(v2 + 72) = *(v2 + 112);
    sub_1003BA6F0(v11, v9, (v2 + 40));
    v8 = v2 + 40;
  }

  sub_1003A52D0(v8);

  free(v2);
}

uint64_t sub_1003BB2E4(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = *(a1 + 10);
  v6 = *(a1 + 22);
  result = swift_beginAccess();
  v8 = a1[3];
  v9 = a1[4];
  if (__OFSUB__(v9, v8))
  {
    __break(1u);
  }

  else
  {
    sub_10049DE0C(*(v4 + 24) + (v6 | (v5 << 8)) + v8, v9 - v8, a2);
    return 0;
  }

  return result;
}

uint64_t ByteBufferView.withContiguousStorageIfAvailable<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8[2] = a3;
  v8[3] = a1;
  v8[4] = a2;
  result = ByteBufferView.withUnsafeBytes<A>(_:)(sub_1003BD7D4, v8, a3);
  if (!v4)
  {
    return (*(*(a3 - 8) + 56))(a4, 0, 1, a3);
  }

  return result;
}

Swift::Int_optional_optional __swiftcall ByteBufferView._customIndexOfEquatableElement(_:)(Swift::UInt8 a1)
{
  v3 = *v1;
  v4 = *(v1 + 10);
  v5 = *(v1 + 22);
  v6 = swift_beginAccess();
  v8 = v1[3];
  v9 = v1[4];
  v10 = __OFSUB__(v9, v8);
  v11 = v9 - v8;
  if (v10)
  {
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
  }

  else if (v11)
  {
    v12 = 0;
    while (*(*(v3 + 24) + v8 + (v4 << 8) + v5 + v12) != a1)
    {
      if ((v11 & ~(v11 >> 63)) == v12)
      {
        __break(1u);
        goto LABEL_12;
      }

      if (v11 == ++v12)
      {
        goto LABEL_7;
      }
    }

    v6 = v12 + v8;
    if (__OFADD__(v12, v8))
    {
      goto LABEL_13;
    }

    v7 = 0;
  }

  else
  {
LABEL_7:
    v6 = 0;
    v7 = 1;
  }

  result.value.value = v6;
  result.value.is_nil = v7;
  return result;
}

Swift::Int_optional_optional __swiftcall ByteBufferView._customLastIndexOfEquatableElement(_:)(Swift::UInt8 a1)
{
  v3 = *v1;
  v4 = *(v1 + 10);
  v5 = *(v1 + 22);
  v6 = swift_beginAccess();
  v9 = v1[3];
  v8 = v1[4];
  v10 = __OFSUB__(v8, v9);
  v11 = v8 - v9;
  if (v10)
  {
    __break(1u);
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v12 = *(v3 + 24) + (v5 | (v4 << 8)) + v9;
  v6 = sub_1003BB5DC(a1, v12, v12 + v11);
  if ((v7 & 1) == 0)
  {
    v10 = __OFADD__(v6, v9);
    v6 += v9;
    if (v10)
    {
      goto LABEL_6;
    }
  }

  v7 &= 1u;
LABEL_7:
  result.value.value = v6;
  result.value.is_nil = v7;
  return result;
}

uint64_t sub_1003BB570@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, unsigned __int8 a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  if (!result)
  {
LABEL_9:
    v5 = 0;
LABEL_10:
    v8 = 1;
LABEL_11:
    *a5 = v5;
    *(a5 + 8) = v8;
    return result;
  }

  v5 = a2 - result;
  if (a2 == result)
  {
    goto LABEL_10;
  }

  v6 = a2 - result;
  while (1)
  {
    v7 = __OFSUB__(v6--, 1);
    if (v7)
    {
      __break(1u);
LABEL_15:
      __break(1u);
      goto LABEL_16;
    }

    if (v6 < 0 || v6 >= v5)
    {
      goto LABEL_15;
    }

    if (*(result + v6) == a3)
    {
      break;
    }

    if (!v6)
    {
      goto LABEL_9;
    }
  }

  v9 = *(a4 + 24);
  v7 = __OFADD__(v6, v9);
  v5 = v6 + v9;
  if (!v7)
  {
    v8 = 0;
    goto LABEL_11;
  }

LABEL_16:
  __break(1u);
  return result;
}

uint64_t sub_1003BB5DC(unsigned __int8 a1, uint64_t a2, uint64_t a3)
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

Swift::Bool_optional __swiftcall ByteBufferView._customContainsEquatableElement(_:)(Swift::UInt8 a1)
{
  v3 = *v1;
  v4 = *(v1 + 10);
  v5 = *(v1 + 22);
  result.value = swift_beginAccess();
  v7 = v1[3];
  v8 = v1[4];
  if (__OFSUB__(v8, v7))
  {
    __break(1u);
  }

  else if (v8 == v7)
  {
    return 0;
  }

  else
  {
    v9 = (*(v3 + 24) + (v5 | (v4 << 8)) + v7);
    v10 = ~v7 + v8;
    do
    {
      v11 = *v9++;
      result.value = v11 == a1;
    }

    while (v11 != a1 && v10-- != 0);
  }

  return result;
}

uint64_t ByteBufferView._copyContents(initializing:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(v3 + 24);
  v5 = *(v3 + 32);
  v6 = v5 - v4;
  v7 = __OFSUB__(v5, v4);
  if (v6 > a2)
  {
    __break(1u);
    goto LABEL_16;
  }

  __dst = result;
  v10 = *v3;
  v11 = *(v3 + 8);
  v18 = *(v3 + 16);
  v12 = *(v3 + 20);
  v13 = *(v3 + 22);
  result = swift_beginAccess();
  if (v7)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v14 = 0;
  v15 = v13 | (v12 << 8);
  if (a2 && v6)
  {
    result = memcpy(__dst, (*(v10 + 24) + v15 + v4), v5 - v4);
    v14 = v5 - v4;
  }

  if (v5 <= (v18 - v15) && v14 == v6)
  {
    result = sub_1003BD79C(v3, v19);
    *a3 = v10;
    *(a3 + 8) = v11;
    *(a3 + 16) = v18;
    *(a3 + 20) = v12;
    *(a3 + 22) = v13;
    *(a3 + 24) = v5;
    *(a3 + 32) = v5;
    *(a3 + 40) = v5;
    *(a3 + 48) = v6;
    return result;
  }

LABEL_17:
  __break(1u);
  return result;
}

void *sub_1003BB7EC@<X0>(void *result@<X0>, void *a2@<X8>)
{
  if (__OFSUB__(*result, 1))
  {
    __break(1u);
  }

  else
  {
    *a2 = *result - 1;
  }

  return result;
}

void *sub_1003BB804(void *result)
{
  if (__OFSUB__(*result, 1))
  {
    __break(1u);
  }

  else
  {
    --*result;
  }

  return result;
}

void *sub_1003BB81C@<X0>(void *result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  if (__OFADD__(*result, a2))
  {
    __break(1u);
  }

  else
  {
    *a3 = *result + a2;
  }

  return result;
}

uint64_t sub_1003BB834@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  result = sub_1003BD808(*a1, a2, *a3);
  *a4 = result;
  *(a4 + 8) = v6 & 1;
  return result;
}

uint64_t sub_1003BB86C(void *a1, void *a2)
{
  v2 = __OFSUB__(*a2, *a1);
  result = *a2 - *a1;
  if (v2)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1003BB89C(_BYTE *a1, uint64_t *a2)
{
  result = *a2;
  if (*a2 >= *(v2 + 24) && result < *(v2 + 32))
  {
    result = sub_1003BD708(result, *v2, *(v2 + 8), *(v2 + 16) | (*(v2 + 22) << 48) | (*(v2 + 20) << 32));
    if ((result & 0x100) == 0)
    {
      *a1 = result;
      return UInt32.init(_:);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t *sub_1003BB918@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  if (*result < 0 || (v4 = result[1], v5 = *(v2 + 16), v6 = *(v2 + 20), v7 = *(v2 + 22), v4 > v5 - (v7 | (v6 << 8))))
  {
    __break(1u);
  }

  else
  {
    *a2 = *v2;
    *(a2 + 8) = *(v2 + 8);
    *(a2 + 16) = v5;
    *(a2 + 20) = v6;
    *(a2 + 22) = v7;
    *(a2 + 24) = v3;
    *(a2 + 32) = v4;
  }

  return result;
}

void sub_1003BB968(void *a1@<X8>)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  if (v3 < v2)
  {
    __break(1u);
  }

  else
  {
    *a1 = v2;
    a1[1] = v3;
  }
}

uint64_t sub_1003BB9C0@<X0>(unsigned __int8 *a1@<X0>, uint64_t (*a2)(_OWORD *, void, _OWORD *)@<X3>, uint64_t a3@<X8>)
{
  v5 = *(v3 + 16);
  v8[0] = *v3;
  v8[1] = v5;
  v9 = *(v3 + 32);
  result = a2(v8, *a1, v8);
  *a3 = result;
  *(a3 + 8) = v7 & 1;
  *(a3 + 9) = 0;
  return result;
}

void *sub_1003BBA28@<X0>(void *result@<X0>, void *a2@<X8>)
{
  if (__OFADD__(*result, 1))
  {
    __break(1u);
  }

  else
  {
    *a2 = *result + 1;
  }

  return result;
}

void *sub_1003BBA40(void *result)
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

__n128 sub_1003BBA58@<Q0>(uint64_t a1@<X8>)
{
  *a1 = *v1;
  *(a1 + 16) = *(v1 + 16);
  result = *(v1 + 24);
  *(a1 + 24) = result;
  *(a1 + 40) = result.n128_u64[0];
  return result;
}

uint64_t sub_1003BBA78(unsigned __int8 *a1)
{
  v2 = *(v1 + 16);
  v4[0] = *v1;
  v4[1] = v2;
  v5 = *(v1 + 32);
  return sub_1003BA25C(v4, *a1) & 1;
}

void *sub_1003BBAC0()
{
  v1 = *(v0 + 16);
  v8[0] = *v0;
  v8[1] = v1;
  v2 = *(v0 + 32);
  v9 = v2;
  v3 = v2 - *(&v1 + 1);
  if (v2 == *(&v1 + 1))
  {
    sub_1003A52D0(v8);
    return _swiftEmptyArrayStorage;
  }

  else
  {
    v5 = sub_10015BEAC(v2 - *(&v1 + 1), 0);
    ByteBufferView._copyContents(initializing:)((v5 + 4), v3, v7);
    v6 = v7[6];
    sub_1003A52D0(v8);

    result = v5;
    if (v6 != v3)
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1003BBB68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(v3 + 16);
  v22[0] = *v3;
  v22[1] = v5;
  v23 = *(v3 + 32);
  ByteBufferView._copyContents(initializing:)(a2, a3, v15);
  v6 = v15[0];
  v7 = v16;
  v8 = v17;
  v9 = v18;
  v14 = v19;
  v11 = v20;
  v10 = v21;
  v12 = v15[1];
  sub_1003A52D0(v22);
  *a1 = v6;
  *(a1 + 8) = v12;
  *(a1 + 16) = v7;
  *(a1 + 20) = v8;
  *(a1 + 22) = v9;
  *(a1 + 24) = v14;
  *(a1 + 40) = v11;
  return v10;
}

uint64_t sub_1003BBC20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *v4;
  v7 = v4[1];
  v8 = *(v4 + 4);
  return ByteBufferView.withContiguousStorageIfAvailable<A>(_:)(a1, a2, a3, a4);
}

uint64_t sub_1003BBC68(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  *a1 = v2;
  *(a1 + 8) = result;
  if (result >= *(v2 + 24) && result < *(v2 + 32))
  {
    result = sub_1003BD708(result, *v2, *(v2 + 8), *(v2 + 16) | (*(v2 + 22) << 48) | (*(v2 + 20) << 32));
    if ((result & 0x100) == 0)
    {
      *(a1 + 16) = result;
      return sub_1003BBCE8;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1003BBD10(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 16);
  v4[0] = *a1;
  v4[1] = v2;
  v5 = *(a1 + 32);
  sub_1003BA6F0(*a2, a2[1], v4);
  return sub_1003A52D0(v4);
}

void (*sub_1003BBD50(void (**a1)(uint64_t *a1, char a2), uint64_t *a2))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    result = swift_coroFrameAlloc();
  }

  else
  {
    result = malloc(0xE0uLL);
  }

  *a1 = result;
  v6 = *a2;
  v7 = a2[1];
  *(result + 25) = v2;
  *(result + 26) = v6;
  *(result + 27) = v7;
  if (v6 < 0 || (v8 = *(v2 + 16), v9 = *(v2 + 20), v10 = *(v2 + 22), v7 > v8 - (v10 | (v9 << 8))))
  {
    __break(1u);
  }

  else
  {
    v11 = *(v2 + 8);
    *(result + 10) = *v2;
    *(result + 11) = v11;
    *(result + 24) = v8;
    *(result + 50) = v9;
    *(result + 102) = v10;
    *(result + 13) = v6;
    *(result + 14) = v7;

    return sub_1003BBE18;
  }

  return result;
}

void sub_1003BBE18(uint64_t *a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v3 = *(v2 + 208);
    v4 = *(v2 + 216);
    v5 = *(v2 + 200);
    v6 = *(v2 + 96);
    *v2 = *(v2 + 80);
    *(v2 + 16) = v6;
    *(v2 + 32) = *(v2 + 112);
    sub_1003BD79C(v2, v2 + 160);
    sub_1003BA6F0(v3, v4, v2);
    sub_1003A52D0(v2);
    v7 = *(v2 + 96);
    *(v2 + 120) = *(v2 + 80);
    *(v2 + 136) = v7;
    *(v2 + 152) = *(v2 + 112);
    v8 = v2 + 120;
  }

  else
  {
    v9 = *(v2 + 208);
    v10 = *(v2 + 216);
    v11 = *(v2 + 200);
    v12 = *(v2 + 96);
    *(v2 + 40) = *(v2 + 80);
    *(v2 + 56) = v12;
    *(v2 + 72) = *(v2 + 112);
    sub_1003BA6F0(v9, v10, (v2 + 40));
    v8 = v2 + 40;
  }

  sub_1003A52D0(v8);

  free(v2);
}

char *sub_1003BBEDC@<X0>(char *a1@<X0>, char **a2@<X8>)
{
  result = sub_1003BD1DC(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

char *sub_1003BBF14(char *result, uint64_t a2)
{
  if (result != a2)
  {
    v3 = result;
    v5 = v2[3];
    v4 = v2[4];
    if (v5 > result || v4 <= result)
    {
      __break(1u);
    }

    else
    {
      v7 = *(v2 + 2);
      if (result >= v7)
      {
        v8 = (*(v2 + 3) - v7);
        if (&result[-v7] < v8)
        {
          v10 = *v2;
          v11 = *(v2 + 10);
          v12 = *(v2 + 22);
          result = swift_beginAccess();
          if (v5 <= a2 && v4 > a2)
          {
            if (a2 >= v7)
            {
              if (a2 - v7 < v8)
              {
                v13 = *(v10 + 24) + (v12 | (v11 << 8));
                v14 = *(v13 + v3);
                ByteBufferView.subscript.setter(*(v13 + a2), v3);
                return ByteBufferView.subscript.setter(v14, a2);
              }

LABEL_19:
              __break(1u);
              return result;
            }

LABEL_18:
            __break(1u);
            goto LABEL_19;
          }

LABEL_17:
          __break(1u);
          goto LABEL_18;
        }

LABEL_16:
        __break(1u);
        goto LABEL_17;
      }
    }

    __break(1u);
    goto LABEL_16;
  }

  return result;
}

double ByteBufferView.init()@<D0>(uint64_t a1@<X8>)
{
  sub_1003BD9F8(v4);
  result = *v4;
  v3 = v4[1];
  *a1 = v4[0];
  *(a1 + 16) = v3;
  *(a1 + 32) = v5;
  return result;
}

Swift::Void __swiftcall ByteBufferView.reserveCapacity(_:)(Swift::Int a1)
{
  v2 = v1[4] - v1[3];
  v3 = __OFSUB__(a1, v2);
  v4 = a1 - v2;
  if (v3)
  {
    __break(1u);
    goto LABEL_14;
  }

  if (v4 < 1)
  {
    return;
  }

  v5 = *(v1 + 4) - (*(v1 + 22) | (*(v1 + 10) << 8));
  v6 = v5 + v4;
  if (__OFADD__(v5, v4))
  {
LABEL_14:
    __break(1u);
    return;
  }

  if (v6 > v5)
  {
    v7 = *v1;
    if (swift_isUniquelyReferenced_nonNull_native())
    {

      ByteBuffer._ensureAvailableCapacity(_:at:)(v6, 0);
    }

    else
    {
      v8 = variable initialization expression of Engine.isProcessingUpdates() & 1;

      ByteBuffer._copyStorageAndRebase(capacity:resetIndices:)(v6, v8);
    }
  }
}

Swift::Void __swiftcall ByteBufferView.append(_:)(Swift::UInt8 a1)
{
  v2 = v1[4];
  v11 = a1;
  v3 = v2 + 1;
  if (v2 == -1)
  {
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v4 = *v1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v5 = *(v1 + 4);
    v6 = v3 >= v5;
    v7 = v3 - v5;
    if (v6)
    {
      v8 = v7;
    }

    else
    {
      v8 = 0;
    }

    v9 = variable initialization expression of Engine.isProcessingUpdates();
    ByteBuffer._copyStorageAndRebase(extraCapacity:resetIndices:)(v8, v9 & 1);
  }

  ByteBuffer._ensureAvailableCapacity(_:at:)(1u, v2);
  ByteBuffer._setBytesAssumingUniqueBufferAccess(_:at:)(&v11, &v12, v2);
  v10 = v2 + 1;
  if (__OFADD__(v2, 1))
  {
    goto LABEL_12;
  }

  if (v10 < v1[3])
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
  }

  v1[4] = v10;
  if (*(v1 + 4) - (*(v1 + 22) | (*(v1 + 10) << 8)) < v10)
  {
    goto LABEL_14;
  }

  *(v1 + 3) = v10;
}

uint64_t ByteBufferView.append<A>(contentsOf:)(uint64_t *a1, uint64_t a2)
{
  v3 = *(v2 + 32);
  result = ByteBuffer.setBytes<A>(_:at:)(a1, v3, a2);
  v5 = v3 + result;
  if (__OFADD__(v3, result))
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v5 < *(v2 + 24))
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  *(v2 + 32) = v5;
  if (*(v2 + 16) - (*(v2 + 22) | (*(v2 + 20) << 8)) >= v5)
  {
    *(v2 + 12) = v5;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_1003BC2C4(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  v3 = a2 - a3;
  if (__OFSUB__(a2, a3))
  {
LABEL_10:
    __break(1u);
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v4 = -result;
  if (v3 <= 0 && v3 > v4)
  {
    return a2;
  }

  v5 = a3 - result;
  if (__OFADD__(a3, v4))
  {
    goto LABEL_11;
  }

  if (v5 >= a2 && v5 <= a3)
  {
    return a2;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_1003BC31C(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  ByteBufferView.replaceSubrange<A>(_:with:)(*a1, a1[1], a2, a3, a4);
  v6 = *(*(a3 - 8) + 8);

  return v6(a2, a3);
}

uint64_t sub_1003BC3A8@<X0>(int a1@<W0>, int64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_1003BD9F8(&v13);
  v10 = v13;
  v11 = v14;
  v12 = v15;
  if (!a2)
  {
    goto LABEL_7;
  }

  if (a2 < 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  v8 = *(&v14 + 1);
  v7 = v15;
  result = sub_1003B52E0(a2, a1, v15);
  v9 = v7 + result;
  if (__OFADD__(v7, result))
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (v9 < v8)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  *(&v11 + 1) = v8;
  v12 = v7 + result;
  if (v11 - (BYTE6(v11) | (WORD2(v11) << 8)) >= v9)
  {
    HIDWORD(v10) = v7 + result;
LABEL_7:
    *a3 = v10;
    *(a3 + 16) = v11;
    *(a3 + 32) = v12;
    return result;
  }

LABEL_11:
  __break(1u);
  return result;
}

uint64_t sub_1003BC498(uint64_t *a1, uint64_t a2)
{
  ByteBufferView.append<A>(contentsOf:)(a1, a2);
  v4 = *(*(a2 - 8) + 8);

  return v4(a1, a2);
}

uint64_t sub_1003BC52C@<X0>(uint64_t result@<X0>, _BYTE *a2@<X8>)
{
  v4 = *(v2 + 24);
  v5 = *(v2 + 32);
  if (v4 == v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v6 = *result;
  if (*result < v4 || v6 >= v5)
  {
    goto LABEL_10;
  }

  result = sub_1003BD708(*result, *v2, *(v2 + 8), *(v2 + 16) | (*(v2 + 22) << 48) | (*(v2 + 20) << 32));
  if ((result & 0x100) == 0)
  {
    v8 = result;
    result = sub_1003BACC4(v6, v6 + 1);
    *a2 = v8;
    return result;
  }

LABEL_11:
  __break(1u);
  return result;
}

uint64_t sub_1003BC5C0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1003BC5F0();
  *a1 = result;
  a1[1] = BYTE1(result) & 1;
  return result;
}

uint64_t sub_1003BC5F0()
{
  v1 = v0[4];
  v2 = v1 - 1;
  if (__OFSUB__(v1, 1))
  {
    __break(1u);
    goto LABEL_16;
  }

  v3 = v0[3];
  if (v2 < v3)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v2 >= v1)
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (v3 == v1)
  {
    goto LABEL_18;
  }

  v4 = *(v0 + 2);
  if (v2 < v4 || v2 - v4 >= (*(v0 + 3) - v4))
  {
    goto LABEL_18;
  }

  v6 = *v0;
  v7 = *(v0 + 10);
  v8 = *(v0 + 22);
  swift_beginAccess();
  v9 = *(*(v6 + 24) + (v8 | (v7 << 8)) + v2);
  v22 = v0[4];
  v10 = *(v0 + 1);
  v20 = *v0;
  v21 = v10;
  v11 = *(&v10 + 1);
  v12 = v22;
  v23[0] = v20;
  v23[1] = v10;
  v24 = v22;
  sub_1003BD79C(&v20, v19);
  result = sub_1003A52D0(v23);
  v14 = v12 - 1;
  if (__OFSUB__(v12, 1))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (v14 < v11)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (v11 < 0)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v15 = v21;
  v16 = WORD2(v21);
  v17 = BYTE6(v21);
  if (v14 <= v21 - (BYTE6(v21) | (WORD2(v21) << 8)))
  {
    v18 = *(&v20 + 1);
    *v0 = v20;
    v0[1] = v18;
    *(v0 + 4) = v15;
    *(v0 + 10) = v16;
    *(v0 + 22) = v17;
    v0[3] = v11;
    v0[4] = v14;
    return v9;
  }

LABEL_22:
  __break(1u);
  return result;
}

uint64_t sub_1003BC748(uint64_t result)
{
  v2 = -result;
  if (__OFSUB__(0, result))
  {
    __break(1u);
    goto LABEL_17;
  }

  v4 = *(v1 + 3);
  v3 = *(v1 + 4);
  v5 = __OFSUB__(v4, v3);
  v6 = v4 - v3;
  if (v5)
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (v2 < 1)
  {
    goto LABEL_7;
  }

  if ((v6 & 0x8000000000000000) == 0 && v6 < v2)
  {
    do
    {
      __break(1u);
LABEL_7:
      ;
    }

    while (v6 <= 0 && v2 < v6);
  }

  v8 = v3 - result;
  if (__OFADD__(v3, v2))
  {
    goto LABEL_18;
  }

  v9 = v1[1];
  v16 = *v1;
  v17 = v9;
  v18 = *(v1 + 4);
  v10 = *(&v9 + 1);
  v19[0] = v16;
  v19[1] = v9;
  v20 = v18;
  sub_1003BD79C(&v16, v15);
  result = sub_1003A52D0(v19);
  if (v8 < v10)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (v10 < 0)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v11 = v17;
  v12 = WORD2(v17);
  v13 = BYTE6(v17);
  if (v8 <= v17 - (BYTE6(v17) | (WORD2(v17) << 8)))
  {
    v14 = *(&v16 + 1);
    *v1 = v16;
    *(v1 + 1) = v14;
    *(v1 + 4) = v11;
    *(v1 + 10) = v12;
    *(v1 + 22) = v13;
    *(v1 + 3) = v10;
    *(v1 + 4) = v8;
    return 1;
  }

LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_1003BC848@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1003BC870();
  *a1 = result;
  return result;
}

uint64_t sub_1003BC870()
{
  v2 = v0[3];
  v1 = v0[4];
  if (v2 == v1)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (v2 >= v1)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v3 = *(v0 + 2);
  if (v2 < v3)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (v2 - v3 >= (*(v0 + 3) - v3))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v4 = *v0;
  v5 = *(v0 + 10);
  v6 = *(v0 + 22);
  result = swift_beginAccess();
  v8 = *(*(v4 + 24) + (v6 | (v5 << 8)) + v2);
  v20 = v0[4];
  v9 = *(v0 + 1);
  v18 = *v0;
  v19 = v9;
  v10 = *(&v9 + 1) + 1;
  if (__OFADD__(*(&v9 + 1), 1))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v11 = v20;
  v12 = *(v0 + 1);
  v21[0] = *v0;
  v21[1] = v12;
  v22 = v0[4];
  sub_1003BD79C(&v18, &v17);
  result = sub_1003A52D0(v21);
  if (v11 < v10)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v10 < 0)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v13 = v19;
  v14 = WORD2(v19);
  v15 = BYTE6(v19);
  if (v11 <= v19 - (BYTE6(v19) | (WORD2(v19) << 8)))
  {
    v16 = *(&v18 + 1);
    *v0 = v18;
    v0[1] = v16;
    *(v0 + 4) = v13;
    *(v0 + 10) = v14;
    *(v0 + 22) = v15;
    v0[3] = v10;
    v0[4] = v11;
    return v8;
  }

LABEL_17:
  __break(1u);
  return result;
}

unint64_t sub_1003BC9B8(unint64_t result)
{
  if (result)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v2 = *(v1 + 3);
      v3 = *(v1 + 4);
      v4 = __OFSUB__(v3, v2);
      v5 = v3 - v2;
      if (!v4)
      {
        if (v5 < result)
        {
LABEL_17:
          __break(1u);
          return result;
        }

        v6 = v2 + result;
        if (!__OFADD__(v2, result))
        {
          v7 = v1[1];
          v14 = *v1;
          v15 = v7;
          v16 = *(v1 + 4);
          v8 = v16;
          v17[0] = v14;
          v17[1] = v7;
          v18 = v16;
          sub_1003BD79C(&v14, v13);
          result = sub_1003A52D0(v17);
          if (v8 >= v6)
          {
            if ((v6 & 0x8000000000000000) == 0)
            {
              v9 = v15;
              v10 = WORD2(v15);
              v11 = BYTE6(v15);
              if (v8 <= v15 - (BYTE6(v15) | (WORD2(v15) << 8)))
              {
                v12 = *(&v14 + 1);
                *v1 = v14;
                *(v1 + 1) = v12;
                *(v1 + 4) = v9;
                *(v1 + 10) = v10;
                *(v1 + 22) = v11;
                *(v1 + 3) = v6;
                *(v1 + 4) = v8;
                return result;
              }

              goto LABEL_16;
            }

LABEL_15:
            __break(1u);
LABEL_16:
            __break(1u);
            goto LABEL_17;
          }

LABEL_14:
          __break(1u);
          goto LABEL_15;
        }

LABEL_13:
        __break(1u);
        goto LABEL_14;
      }
    }

    __break(1u);
    goto LABEL_13;
  }

  return result;
}

Swift::Int sub_1003BCA98(char a1)
{
  if (a1)
  {
    result = *(v1 + 24);
    v3 = *(v1 + 32);
    if (v3 < result)
    {
      __break(1u);
    }

    else
    {

      return sub_1003BACC4(result, v3);
    }
  }

  else
  {
    v4 = *(v1 + 16);
    v6[0] = *v1;
    v6[1] = v4;
    v7 = *(v1 + 32);
    sub_1003A52D0(v6);
    result = sub_1003BD9F8(v8);
    v5 = v8[1];
    *v1 = v8[0];
    *(v1 + 16) = v5;
    *(v1 + 32) = v9;
  }

  return result;
}

Swift::Int sub_1003BCB18(uint64_t (*a1)(char *))
{
  result = sub_1003BD364(a1);
  if (!v2)
  {
    v4 = *(v1 + 32);
    if (v4 < result)
    {
      __break(1u);
    }

    else
    {
      return sub_1003BACC4(result, v4);
    }
  }

  return result;
}

uint64_t ByteBuffer.viewBytes(at:length:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, unint64_t a5@<X4>, void *a6@<X8>)
{
  v6 = 0;
  if (a2 < 0)
  {
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0;
    goto LABEL_10;
  }

  v7 = 0;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  if (a4 > result)
  {
LABEL_10:
    *a6 = v6;
    a6[1] = v7;
    a6[2] = v8;
    a6[3] = v9;
    a6[4] = v10;
    return result;
  }

  if ((HIDWORD(a4) - a2) < result)
  {
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0;
    goto LABEL_10;
  }

  v10 = result + a2;
  if (__OFADD__(result, a2))
  {
    __break(1u);
    goto LABEL_12;
  }

  if (v10 < result)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (a5 - (BYTE6(a5) | (a5 >> 24) & 0xFFFF00) >= v10)
  {
    v8 = a5 & 0xFFFFFFFFFFFFFFLL;
    v11 = result;
    v12 = a6;

    a6 = v12;
    v6 = a3;
    v7 = a4;
    v9 = v11;
    goto LABEL_10;
  }

LABEL_13:
  __break(1u);
  return result;
}

uint64_t static ByteBufferView.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = v4 - result;
  if (__OFSUB__(v4, result))
  {
    __break(1u);
    goto LABEL_9;
  }

  v8 = *(a2 + 24);
  v7 = *(a2 + 32);
  v9 = __OFSUB__(v7, v8);
  v10 = v7 - v8;
  if (v9)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (v5 != v10)
  {
    return 0;
  }

  result = ByteBuffer.getSlice(at:length:)(result, v5, *a1, *(a1 + 8), *(a1 + 16) | (*(a1 + 20) << 32) | (*(a1 + 22) << 48));
  if (result)
  {
    v13 = result;
    v14 = v11;
    v15 = v12;
    result = ByteBuffer.getSlice(at:length:)(v8, v5, *a2, *(a2 + 8), *(a2 + 16) | (*(a2 + 20) << 32) | (*(a2 + 22) << 48));
    if (result)
    {
      v18 = sub_10020FBD0(v13, v14, v15 & 0xFFFFFFFFFFFFFFLL, result, v16, v17 & 0xFFFFFFFFFFFFFFLL);

      return v18;
    }

    goto LABEL_11;
  }

LABEL_10:
  __break(1u);
LABEL_11:
  __break(1u);
  return result;
}

uint64_t sub_1003BCDD0(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = v4 - result;
  if (__OFSUB__(v4, result))
  {
    __break(1u);
    goto LABEL_9;
  }

  v7 = *(a2 + 24);
  v6 = *(a2 + 32);
  v8 = __OFSUB__(v6, v7);
  v9 = v6 - v7;
  if (v8)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (v5 != v9)
  {
    return 0;
  }

  v10 = *a2;
  v11 = *(a2 + 8);
  v12 = *(a2 + 16);
  v13 = *(a2 + 20);
  v14 = *(a2 + 22);
  result = ByteBuffer.getSlice(at:length:)(result, v5, *a1, *(a1 + 8), *(a1 + 16) | (*(a1 + 20) << 32) | (*(a1 + 22) << 48));
  if (result)
  {
    v17 = result;
    v18 = v15;
    v19 = v16;
    result = ByteBuffer.getSlice(at:length:)(v7, v5, v10, v11, v12 | (v13 << 32) | (v14 << 48));
    if (result)
    {
      v22 = sub_10020FBD0(v17, v18, v19 & 0xFFFFFFFFFFFFFFLL, result, v20, v21 & 0xFFFFFFFFFFFFFFLL);

      return v22;
    }

    goto LABEL_11;
  }

LABEL_10:
  __break(1u);
LABEL_11:
  __break(1u);
  return result;
}

uint64_t ByteBufferView.hash(into:)()
{
  result = *(v0 + 24);
  v2 = *(v0 + 32);
  if (__OFSUB__(v2, result))
  {
    __break(1u);
  }

  else
  {
    result = ByteBuffer.getSlice(at:length:)(result, v2 - result, *v0, *(v0 + 8), *(v0 + 16) | (*(v0 + 22) << 48) | (*(v0 + 20) << 32));
    if (result)
    {
      v4 = v3;
      v5 = result;
      swift_beginAccess();
      v6 = *(v5 + 24) + ((v4 >> 24) & 0xFFFF00 | BYTE6(v4));
      sub_1004A6EA4();
    }
  }

  __break(1u);
  return result;
}

Swift::Int ByteBufferView.hashValue.getter()
{
  sub_1004A6E94();
  result = *(v0 + 24);
  v2 = *(v0 + 32);
  if (__OFSUB__(v2, result))
  {
    __break(1u);
  }

  else
  {
    result = ByteBuffer.getSlice(at:length:)(result, v2 - result, *v0, *(v0 + 8), *(v0 + 16) | (*(v0 + 22) << 48) | (*(v0 + 20) << 32));
    if (result)
    {
      v4 = v3;
      v5 = result;
      swift_beginAccess();
      v6 = *(v5 + 24) + ((v4 >> 24) & 0xFFFF00 | BYTE6(v4));
      sub_1004A6EA4();

      return sub_1004A6F14();
    }
  }

  __break(1u);
  return result;
}

Swift::Int sub_1003BD068()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 20);
  v5 = *(v0 + 22);
  v7 = *(v0 + 24);
  v6 = *(v0 + 32);
  result = sub_1004A6E94();
  if (__OFSUB__(v6, v7))
  {
    __break(1u);
  }

  else
  {
    result = ByteBuffer.getSlice(at:length:)(v7, v6 - v7, v1, v2, v3 | (v4 << 32) | (v5 << 48));
    if (result)
    {
      v10 = v9;
      v11 = result;
      swift_beginAccess();
      v12 = *(v11 + 24) + ((v10 >> 24) & 0xFFFF00 | BYTE6(v10));
      sub_1004A6EA4();

      return sub_1004A6F14();
    }
  }

  __break(1u);
  return result;
}

double ByteBufferView.init(arrayLiteral:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1003BDAB0(a1, v5);

  result = *v5;
  v4 = v5[1];
  *a2 = v5[0];
  *(a2 + 16) = v4;
  *(a2 + 32) = v6;
  return result;
}

uint64_t sub_1003BD190(uint64_t result)
{
  if (result)
  {
    v2 = v1[5];
    v4 = *(v2 + 24);
    v3 = *(v2 + 32);
    v5 = __OFSUB__(v3, v4);
    v6 = v3 - v4;
    if (!v5)
    {
      v7 = v1[3];
      v8 = v1[4];
      return v7(result + v4, result + v4 + v6);
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

char *sub_1003BD1DC(char *result)
{
  v16 = result;
  v3 = v1[3];
  v15 = v1[4];
  if (v3 >= v15)
  {
    return v3;
  }

  v4 = v1;
  while (1)
  {
LABEL_3:
    v5 = v4[4];
    if (v3 < v4[3] || v3 >= v5)
    {
      __break(1u);
LABEL_23:
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    v7 = *(v4 + 2);
    if (v3 < v7)
    {
      goto LABEL_23;
    }

    v8 = (*(v4 + 3) - v7);
    if (&v3[-v7] >= v8)
    {
      goto LABEL_24;
    }

    v9 = *v4;
    v10 = *(v4 + 10);
    v11 = *(v4 + 22);
    swift_beginAccess();
    v12 = v11 | (v10 << 8);
    v17 = v3[*(v9 + 24) + v12];
    result = v16(&v17);
    if (v2)
    {
      return v3;
    }

    if (result)
    {
      break;
    }

    if (++v3 >= v15)
    {
      return v3;
    }
  }

  v13 = v15;
  while (!__OFSUB__(v13--, 1))
  {
    if (v3 >= v13)
    {
      return v3;
    }

    if (v15 > v5)
    {
      goto LABEL_26;
    }

    if (v13 - v7 >= v8)
    {
      goto LABEL_27;
    }

    v17 = *(*(v9 + 24) + v12 + v13);
    result = v16(&v17);
    if ((result & 1) == 0)
    {
      result = sub_1003BBF14(v3++, v13);
      v15 = v13;
      if (v3 < v13)
      {
        goto LABEL_3;
      }

      return v3;
    }
  }

LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_1003BD364(uint64_t (*a1)(char *))
{
  v2 = v1;
  v3 = *v1;
  v5 = *(v1 + 2);
  v4 = *(v1 + 3);
  v6 = *(v2 + 10);
  v7 = *(v2 + 22);
  v9 = v2[3];
  v8 = v2[4];
  result = swift_beginAccess();
  if (v9 == v8)
  {
    return v9;
  }

  v11 = v5 + (v4 - v5);
  v50 = v9 - v8;
  v45 = v6;
  v46 = v8;
  if (v9 <= v8)
  {
    v12 = v8;
  }

  else
  {
    v12 = v9;
  }

  if (v9 > v11)
  {
    v11 = v9;
  }

  v13 = v9 - v11;
  v14 = v9 - v12;
  v44 = v7;
  v15 = v9 + (v6 << 8) + v7;
  v16 = 1;
  while (1)
  {
    if (v14 + v16 == 1)
    {
      __break(1u);
LABEL_50:
      __break(1u);
LABEL_51:
      __break(1u);
      goto LABEL_52;
    }

    if (v9 < v5)
    {
      goto LABEL_50;
    }

    if (v13 + v16 == 1)
    {
      goto LABEL_51;
    }

    v52[0] = *(*(v3 + 24) + v15 + v16 - 1);
    result = a1(v52);
    if (v47)
    {
      return result;
    }

    if (result)
    {
      break;
    }

    ++v16;
    if (v50 + v16 == 1)
    {
      return v46;
    }
  }

  v43 = v9 + v16;
  result = v9 + v16 - 1;
  if (!(v50 + v16))
  {
    return result;
  }

  while (v43 >= v9 && v9 + v16 < v46)
  {
    v17 = *(v2 + 2);
    if (v9 + v16 < v17)
    {
      goto LABEL_53;
    }

    v18 = (*(v2 + 3) - v17);
    if (v9 + v16 - v17 >= v18)
    {
      goto LABEL_54;
    }

    v48 = v9 + v16;
    *at = result;
    swift_beginAccess();
    v19 = v44 | (v45 << 8);
    v54 = *(*(v3 + 24) + v19 + v9 + v16);
    if (a1(&v54))
    {
      result = *at;
    }

    else
    {
      result = *at;
      if (v48 != *at)
      {
        if (*at < v9 || *at >= v46)
        {
          goto LABEL_55;
        }

        if (*at < v17)
        {
          goto LABEL_56;
        }

        if (*at - v17 >= v18)
        {
          goto LABEL_57;
        }

        v20 = at[0] + 1;
        if (at[0] == -1)
        {
          goto LABEL_58;
        }

        v21 = *(v3 + 24) + v19;
        v53 = *(v21 + *at);
        v22 = *(v21 + v9 + v16);
        v23 = *v2;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v24 = *(v2 + 4);
          v25 = v20 >= v24;
          v26 = v20 - v24;
          if (v25)
          {
            v27 = v26;
          }

          else
          {
            v27 = 0;
          }

          v28 = variable initialization expression of Engine.isProcessingUpdates();
          ByteBuffer._copyStorageAndRebase(extraCapacity:resetIndices:)(v27, v28 & 1);
        }

        ByteBuffer._ensureAvailableCapacity(_:at:)(1u, at[0]);
        v29 = *v2;
        v30 = *(v2 + 4);
        v31 = *(v2 + 10);
        v32 = *(v2 + 22);
        swift_beginAccess();
        result = sub_1003B7140(at[0], *(v29 + 24) + (v32 | (v31 << 8)), *(v29 + 24) + (v32 | (v31 << 8)) + v30 - (v32 | (v31 << 8)));
        if (v33)
        {
          *(v33 + result) = v22;
        }

        v34 = v9 + v16 + 1;
        if (v9 + v16 == -1)
        {
          goto LABEL_59;
        }

        v35 = *v2;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          if (v34 >= v30)
          {
            v36 = v34 - v30;
          }

          else
          {
            v36 = 0;
          }

          v37 = variable initialization expression of Engine.isProcessingUpdates();
          ByteBuffer._copyStorageAndRebase(extraCapacity:resetIndices:)(v36, v37 & 1);
        }

        ByteBuffer._ensureAvailableCapacity(_:at:)(1u, v9 + v16);
        v3 = *v2;
        v38 = *(v2 + 4);
        v39 = *(v2 + 10);
        v40 = *(v2 + 22);
        swift_beginAccess();
        v44 = v40;
        v45 = v39;
        v41 = sub_1003B7140(v48, *(v3 + 24) + (v40 | (v39 << 8)), *(v3 + 24) + (v40 | (v39 << 8)) + v38 - (v40 | (v39 << 8)));
        if (v42)
        {
          *(v42 + v41) = v53;
        }

        result = *at;
      }

      ++result;
    }

    ++v16;
    if (!(v50 + v16))
    {
      return result;
    }
  }

LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
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
  return result;
}

uint64_t sub_1003BD708(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a1 < a3 || (HIDWORD(a3) - a3) <= a1 - a3)
  {
    return 256;
  }

  swift_beginAccess();
  return *(*(a2 + 24) + ((a4 >> 24) & 0xFFFF00 | BYTE6(a4)) + a1);
}

uint64_t sub_1003BD7D4(uint64_t a1, uint64_t a2)
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

uint64_t sub_1003BD808(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = a3 - result;
  if (__OFSUB__(a3, result))
  {
    __break(1u);
    goto LABEL_12;
  }

  if (a2 >= 1)
  {
    if (v3 < 0 || v3 >= a2)
    {
      goto LABEL_9;
    }

    return 0;
  }

  if (v3 <= 0 && v3 > a2)
  {
    return 0;
  }

LABEL_9:
  v4 = __OFADD__(result, a2);
  result += a2;
  if (v4)
  {
LABEL_12:
    __break(1u);
  }

  return result;
}

uint64_t sub_1003BD85C(uint64_t *a1, unsigned __int8 a2, uint64_t a3)
{
  v6 = *a1;
  v7 = *(a1 + 10);
  v8 = *(a1 + 22);
  result = swift_beginAccess();
  v11 = a1[3];
  v10 = a1[4];
  v12 = __OFSUB__(v10, v11);
  v13 = v10 - v11;
  if (v12)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
  }

  else if (v13)
  {
    v14 = 0;
    v15 = *(v6 + 24) + v11 + (v7 << 8) + v8;
    while (*(v15 + v14) != a2)
    {
      if ((v13 & ~(v13 >> 63)) == v14)
      {
        __break(1u);
        goto LABEL_11;
      }

      if (v13 == ++v14)
      {
        return 0;
      }
    }

    v16 = *(a3 + 24);
    result = v14 + v16;
    if (__OFADD__(v14, v16))
    {
      goto LABEL_12;
    }
  }

  else
  {
    return 0;
  }

  return result;
}

uint64_t sub_1003BD944(uint64_t *a1, unsigned __int8 a2, uint64_t a3)
{
  v7 = *a1;
  v8 = *(a1 + 10);
  v9 = *(a1 + 22);
  result = swift_beginAccess();
  v11 = a1[3];
  v12 = a1[4];
  v13 = __OFSUB__(v12, v11);
  v14 = v12 - v11;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    v15 = *(v7 + 24) + (v9 | (v8 << 8)) + v11;
    result = sub_1003BB570(v15, v15 + v14, a2, a3, &v16);
    if (!v3)
    {
      return v16;
    }
  }

  return result;
}

uint64_t sub_1003BD9F8@<X0>(uint64_t a1@<X8>)
{
  if (qword_1005DB9D0 != -1)
  {
    v7 = a1;
    result = swift_once();
    a1 = v7;
  }

  v2 = qword_1005DE390;
  v3 = HIDWORD(qword_1005DE390);
  if (HIDWORD(qword_1005DE390) < qword_1005DE390)
  {
    __break(1u);
    goto LABEL_9;
  }

  v4 = dword_1005DE398;
  v5 = word_1005DE39C;
  v6 = byte_1005DE39E;
  if (dword_1005DE398 - (byte_1005DE39E | (word_1005DE39C << 8)) < HIDWORD(qword_1005DE390))
  {
LABEL_9:
    __break(1u);
    return result;
  }

  *a1 = static ByteBufferAllocator.zeroCapacityWithDefaultAllocator;
  *(a1 + 8) = v2;
  *(a1 + 12) = v3;
  *(a1 + 16) = v4;
  *(a1 + 20) = v5;
  *(a1 + 22) = v6;
  *(a1 + 24) = v2;
  *(a1 + 32) = v3;
}

void sub_1003BDAB0(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1003BD9F8(&v9);
  v5 = *(&v10 + 1);
  v4 = v11;
  sub_1002F15F8(a1, v11);
  v7 = v4 + v6;
  if (__OFADD__(v4, v6))
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v7 < v5)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  *(&v10 + 1) = v5;
  v11 = v4 + v6;
  if (v10 - (BYTE6(v10) | (WORD2(v10) << 8)) >= v7)
  {
    HIDWORD(v9) = v4 + v6;
    *(a2 + 32) = v11;
    v8 = v10;
    *a2 = v9;
    *(a2 + 16) = v8;
    return;
  }

LABEL_7:
  __break(1u);
}

unint64_t sub_1003BDB5C()
{
  result = qword_1005DBF08;
  if (!qword_1005DBF08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DBF08);
  }

  return result;
}

unint64_t sub_1003BDBE4()
{
  result = qword_1005DBF20;
  if (!qword_1005DBF20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DBF20);
  }

  return result;
}

unint64_t sub_1003BDC3C()
{
  result = qword_1005DBF28;
  if (!qword_1005DBF28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DBF28);
  }

  return result;
}

unint64_t sub_1003BDC94()
{
  result = qword_1005DBF30;
  if (!qword_1005DBF30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DBF30);
  }

  return result;
}

unint64_t sub_1003BDD24()
{
  result = qword_1005DBF40;
  if (!qword_1005DBF40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DBF40);
  }

  return result;
}

uint64_t sub_1003BDDB8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_10000DEFC(&qword_1005DBF18, &qword_100508410);
    sub_1003BDBE4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1003BDE34()
{
  result = qword_1005DBF50;
  if (!qword_1005DBF50)
  {
    sub_10000DEFC(&qword_1005DBF58, &qword_1004FFEF8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DBF50);
  }

  return result;
}

unint64_t sub_1003BDE9C()
{
  result = qword_1005DBF60;
  if (!qword_1005DBF60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DBF60);
  }

  return result;
}

unint64_t sub_1003BDEF4()
{
  result = qword_1005DBF68;
  if (!qword_1005DBF68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DBF68);
  }

  return result;
}

unint64_t sub_1003BDF4C()
{
  result = qword_1005DBF70;
  if (!qword_1005DBF70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DBF70);
  }

  return result;
}

uint64_t static ByteRange.__derived_struct_equals(_:_:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a1 == a4)
  {
    if (a3)
    {
      if (a6)
      {
        return 1;
      }
    }

    else if ((a6 & 1) == 0 && a2 == a5)
    {
      return 1;
    }
  }

  return 0;
}

void ByteRange.hash(into:)(uint64_t a1, Swift::UInt a2, Swift::UInt a3, char a4)
{
  sub_1004A6EB4(a2);
  if (a4)
  {
    sub_1004A6EC4(0);
  }

  else
  {
    sub_1004A6EC4(1u);
    sub_1004A6EB4(a3);
  }
}

Swift::Int ByteRange.hashValue.getter(Swift::UInt a1, Swift::UInt a2, char a3)
{
  sub_1004A6E94();
  sub_1004A6EB4(a1);
  if (a3)
  {
    sub_1004A6EC4(0);
  }

  else
  {
    sub_1004A6EC4(1u);
    sub_1004A6EB4(a2);
  }

  return sub_1004A6F14();
}

Swift::Int sub_1003BE0D4()
{
  v2 = *v0;
  v1 = *(v0 + 8);
  v3 = *(v0 + 16);
  sub_1004A6E94();
  sub_1004A6EB4(v2);
  if (v3 == 1)
  {
    sub_1004A6EC4(0);
  }

  else
  {
    sub_1004A6EC4(1u);
    sub_1004A6EB4(v1);
  }

  return sub_1004A6F14();
}

void sub_1003BE154()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  sub_1004A6EB4(*v0);
  if (v2 == 1)
  {
    sub_1004A6EC4(0);
  }

  else
  {
    sub_1004A6EC4(1u);
    sub_1004A6EB4(v1);
  }
}

Swift::Int sub_1003BE1B0()
{
  v2 = *v0;
  v1 = *(v0 + 8);
  v3 = *(v0 + 16);
  sub_1004A6E94();
  sub_1004A6EB4(v2);
  if (v3 == 1)
  {
    sub_1004A6EC4(0);
  }

  else
  {
    sub_1004A6EC4(1u);
    sub_1004A6EB4(v1);
  }

  return sub_1004A6F14();
}

unint64_t sub_1003BE230()
{
  result = qword_1005DBF78;
  if (!qword_1005DBF78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DBF78);
  }

  return result;
}

uint64_t sub_1003BE284(uint64_t a1, uint64_t a2)
{
  if (*a1 == *a2)
  {
    v2 = *(a2 + 16);
    if (*(a1 + 16))
    {
      if (*(a2 + 16))
      {
        return 1;
      }
    }

    else
    {
      if (*(a1 + 8) != *(a2 + 8))
      {
        v2 = 1;
      }

      if ((v2 & 1) == 0)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_1003BE2D8()
{
  v1 = v0;
  v11._countAndFlagsBits = sub_1004A6CE4();
  sub_1004A5994(v11);

  v12._countAndFlagsBits = 46;
  v12._object = 0xE100000000000000;
  sub_1004A5994(v12);
  v13._countAndFlagsBits = sub_1004A6CE4();
  sub_1004A5994(v13);

  v14._countAndFlagsBits = 62;
  v14._object = 0xE100000000000000;
  sub_1004A5994(v14);
  v2 = *(v0 + 20);
  v3 = sub_1002F178C(60, 0xE100000000000000, (v0 + 8), *(v0 + 20));
  if (v4)
  {
    v5._countAndFlagsBits = 60;
    v5._object = 0xE100000000000000;
    v3 = ByteBuffer._setStringSlowpath(_:at:)(v5, v2);
  }

  v6 = v3;

  v8 = *(v1 + 20);
  v9 = __CFADD__(v8, v6);
  v10 = v8 + v6;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    *(v1 + 20) = v10;
    return v6;
  }

  return result;
}

uint64_t sub_1003BE414(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v6 = sub_1004A6CE4();
  v8 = v7;
  v9 = *(v3 + 20);
  v10 = sub_1002F178C(v6, v7, (v4 + 8), *(v4 + 20));
  if (v11)
  {
    v12._countAndFlagsBits = v6;
    v12._object = v8;
    v10 = ByteBuffer._setStringSlowpath(_:at:)(v12, v9);
  }

  v13 = v10;

  v15 = *(v3 + 20);
  v16 = (v15 + v13);
  if (__CFADD__(v15, v13))
  {
    __break(1u);
    goto LABEL_13;
  }

  *(v3 + 20) = v16;
  if (a3)
  {
    v17 = 0;
  }

  else
  {
    v24._countAndFlagsBits = sub_1004A6CE4();
    sub_1004A5994(v24);

    v18 = sub_1002F178C(46, 0xE100000000000000, (v3 + 8), v16);
    if (v19)
    {
      v20._countAndFlagsBits = 46;
      v20._object = 0xE100000000000000;
      v18 = ByteBuffer._setStringSlowpath(_:at:)(v20, v16);
    }

    v17 = v18;

    v21 = *(v4 + 20);
    v22 = __CFADD__(v21, v17);
    v23 = v21 + v17;
    if (v22)
    {
      goto LABEL_14;
    }

    *(v4 + 20) = v23;
  }

  result = v13 + v17;
  if (__OFADD__(v13, v17))
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
  }

  return result;
}

unint64_t sub_1003BE578(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v4 = a3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {
    return 0;
  }

  v7 = 4 * v4;
  v8 = 15;
  while (sub_1004A5A94() != a1 || v9 != a2)
  {
    v10 = sub_1004A6D34();

    if (v10)
    {
      return v8;
    }

    v8 = sub_1004A5934();
    if (v7 == v8 >> 14)
    {
      return 0;
    }
  }

  return v8;
}

uint64_t Capability.name.getter(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
  }

  else
  {
    sub_1004A5AB4();
    a1 = sub_1004A5864();
  }

  return a1;
}

unint64_t sub_1003BE6D8(unint64_t result, uint64_t a2, unint64_t a3)
{
  v3 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (4 * v3 >= result >> 14)
  {
    return sub_1004A5AB4();
  }

  __break(1u);
  return result;
}

uint64_t Capability.value.getter(uint64_t a1, unint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
    return 0;
  }

  v7 = sub_1004A5934();
  sub_1003BE6D8(v7, a1, a2);
  v8 = sub_1004A5864();

  return v8;
}

void Capability.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, char a5)
{
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  if (a5)
  {
    sub_1004A6EC4(0);
  }

  else
  {
    sub_1004A6EC4(1u);
    sub_1004A6EF4(a4 >> 14);
  }
}

Swift::Int Capability.hashValue.getter(uint64_t a1, uint64_t a2, unint64_t a3, char a4)
{
  sub_1004A6E94();
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  if (a4)
  {
    sub_1004A6EC4(0);
  }

  else
  {
    sub_1004A6EC4(1u);
    sub_1004A6EF4(a3 >> 14);
  }

  return sub_1004A6F14();
}

Swift::Int sub_1003BE8D4()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = *(v0 + 24);
  sub_1004A6E94();
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  if (v4 == 1)
  {
    sub_1004A6EC4(0);
  }

  else
  {
    sub_1004A6EC4(1u);
    sub_1004A6EF4(v3 >> 14);
  }

  return sub_1004A6F14();
}

void sub_1003BE960()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = *(v0 + 24);
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  if (v4 == 1)
  {
    sub_1004A6EC4(0);
  }

  else
  {
    sub_1004A6EC4(1u);
    sub_1004A6EF4(v3 >> 14);
  }
}

Swift::Int sub_1003BE9C4()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = *(v0 + 24);
  sub_1004A6E94();
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  if (v4 == 1)
  {
    sub_1004A6EC4(0);
  }

  else
  {
    sub_1004A6EC4(1u);
    sub_1004A6EF4(v3 >> 14);
  }

  return sub_1004A6F14();
}

uint64_t sub_1003BEBB4()
{
  v0 = 15;
  while (sub_1004A5A94() != 61 || v1 != 0xE100000000000000)
  {
    v3 = sub_1004A6D34();

    if (v3)
    {
      goto LABEL_9;
    }

    result = sub_1004A5934();
    v0 = result;
    if ((result & 0xFFFFFFFFFFFFC000) == 0x30000)
    {
      v0 = 0;
LABEL_9:
      v5 = v3 ^ 1;
      goto LABEL_11;
    }
  }

  v5 = 0;
LABEL_11:
  static Capability.acl = 4997953;
  *algn_1005DE3A8 = 0xE300000000000000;
  qword_1005DE3B0 = v0;
  byte_1005DE3B8 = v5 & 1;
  return result;
}

uint64_t *Capability.acl.unsafeMutableAddressor()
{
  if (qword_1005DB9E0 != -1)
  {
    swift_once();
  }

  return &static Capability.acl;
}

uint64_t static Capability.acl.getter()
{
  if (qword_1005DB9E0 != -1)
  {
    swift_once();
  }

  v0 = static Capability.acl;

  return v0;
}

void sub_1003BED60()
{
  if (("CREATE-SPECIAL-USE" & 0x2000000000000000) != 0)
  {
    v0 = ("CREATE-SPECIAL-USE" >> 40) & 0xF0000;
  }

  else
  {
    v0 = 1376256;
  }

  v1 = v0 == 0;
  if (v0)
  {
    v2 = 15;
    while (sub_1004A5A94() != 61 || v3 != 0xE100000000000000)
    {
      v4 = sub_1004A6D34();

      if (v4)
      {
        goto LABEL_12;
      }

      v2 = sub_1004A5934();
      v1 = (v0 ^ v2) < 0x4000;
      if ((v0 ^ v2) < 0x4000)
      {
        goto LABEL_10;
      }
    }
  }

  else
  {
LABEL_10:
    v2 = 0;
  }

LABEL_12:
  static Capability.annotateExperiment1 = 0xD000000000000015;
  *algn_1005DE3C8 = 0x80000001004B0670;
  qword_1005DE3D0 = v2;
  byte_1005DE3D8 = v1;
}

uint64_t *Capability.annotateExperiment1.unsafeMutableAddressor()
{
  if (qword_1005DB9E8 != -1)
  {
    swift_once();
  }

  return &static Capability.annotateExperiment1;
}

uint64_t static Capability.annotateExperiment1.getter()
{
  if (qword_1005DB9E8 != -1)
  {
    swift_once();
  }

  v0 = static Capability.annotateExperiment1;

  return v0;
}

uint64_t sub_1003BEF40()
{
  v0 = 15;
  while (sub_1004A5A94() != 61 || v1 != 0xE100000000000000)
  {
    v3 = sub_1004A6D34();

    if (v3)
    {
      goto LABEL_9;
    }

    result = sub_1004A5934();
    v0 = result;
    if ((result & 0xFFFFFFFFFFFFC000) == 0x60000)
    {
      v0 = 0;
LABEL_9:
      v5 = v3 ^ 1;
      goto LABEL_11;
    }
  }

  v5 = 0;
LABEL_11:
  *&static Capability.binary = 0x5952414E4942;
  *(&static Capability.binary + 1) = 0xE600000000000000;
  qword_1005DE3F0 = v0;
  byte_1005DE3F8 = v5 & 1;
  return result;
}

__int128 *Capability.binary.unsafeMutableAddressor()
{
  if (qword_1005DB9F0 != -1)
  {
    swift_once();
  }

  return &static Capability.binary;
}

uint64_t static Capability.binary.getter()
{
  if (qword_1005DB9F0 != -1)
  {
    swift_once();
  }

  v0 = static Capability.binary;

  return v0;
}

uint64_t sub_1003BF0E8()
{
  v0 = 15;
  while (sub_1004A5A94() != 61 || v1 != 0xE100000000000000)
  {
    v3 = sub_1004A6D34();

    if (v3)
    {
      goto LABEL_9;
    }

    result = sub_1004A5934();
    v0 = result;
    if ((result & 0xFFFFFFFFFFFFC000) == 0x80000)
    {
      v0 = 0;
LABEL_9:
      v5 = v3 ^ 1;
      goto LABEL_11;
    }
  }

  v5 = 0;
LABEL_11:
  static Capability.catenate = 0x4554414E45544143;
  *algn_1005DE408 = 0xE800000000000000;
  qword_1005DE410 = v0;
  byte_1005DE418 = v5 & 1;
  return result;
}

uint64_t *Capability.catenate.unsafeMutableAddressor()
{
  if (qword_1005DB9F8 != -1)
  {
    swift_once();
  }

  return &static Capability.catenate;
}

uint64_t static Capability.catenate.getter()
{
  if (qword_1005DB9F8 != -1)
  {
    swift_once();
  }

  v0 = static Capability.catenate;

  return v0;
}

uint64_t sub_1003BF294()
{
  v0 = 15;
  while (sub_1004A5A94() != 61 || v1 != 0xE100000000000000)
  {
    v3 = sub_1004A6D34();

    if (v3)
    {
      goto LABEL_9;
    }

    result = sub_1004A5934();
    v0 = result;
    if ((result & 0xFFFFFFFFFFFFC000) == 0x80000)
    {
      v0 = 0;
LABEL_9:
      v5 = v3 ^ 1;
      goto LABEL_11;
    }
  }

  v5 = 0;
LABEL_11:
  static Capability.children = 0x4E4552444C494843;
  *algn_1005DE428 = 0xE800000000000000;
  qword_1005DE430 = v0;
  byte_1005DE438 = v5 & 1;
  return result;
}

uint64_t *Capability.children.unsafeMutableAddressor()
{
  if (qword_1005DBA00 != -1)
  {
    swift_once();
  }

  return &static Capability.children;
}

uint64_t static Capability.children.getter()
{
  if (qword_1005DBA00 != -1)
  {
    swift_once();
  }

  v0 = static Capability.children;

  return v0;
}

uint64_t sub_1003BF440()
{
  v0 = 15;
  while (sub_1004A5A94() != 61 || v1 != 0xE100000000000000)
  {
    v2 = sub_1004A6D34();

    if (v2)
    {
      goto LABEL_7;
    }

    result = sub_1004A5934();
    v0 = result;
    if ((result & 0xFFFFFFFFFFFFC000) == 0x90000)
    {
      v0 = 0;
LABEL_7:
      v4 = v2 ^ 1;
      goto LABEL_9;
    }
  }

  v4 = 0;
LABEL_9:
  static Capability.condStore = 0x524F5453444E4F43;
  *algn_1005DE448 = 0xE900000000000045;
  qword_1005DE450 = v0;
  byte_1005DE458 = v4 & 1;
  return result;
}

uint64_t *Capability.condStore.unsafeMutableAddressor()
{
  if (qword_1005DBA08 != -1)
  {
    swift_once();
  }

  return &static Capability.condStore;
}

uint64_t static Capability.condStore.getter()
{
  if (qword_1005DBA08 != -1)
  {
    swift_once();
  }

  v0 = static Capability.condStore;

  return v0;
}

void sub_1003BF5FC()
{
  if (("XYMHIGHESTMODSEQ" & 0x2000000000000000) != 0)
  {
    v0 = ("XYMHIGHESTMODSEQ" >> 40) & 0xF0000;
  }

  else
  {
    v0 = 1179648;
  }

  v1 = v0 == 0;
  if (v0)
  {
    v2 = 15;
    while (sub_1004A5A94() != 61 || v3 != 0xE100000000000000)
    {
      v4 = sub_1004A6D34();

      if (v4)
      {
        goto LABEL_12;
      }

      v2 = sub_1004A5934();
      v1 = (v0 ^ v2) < 0x4000;
      if ((v0 ^ v2) < 0x4000)
      {
        goto LABEL_10;
      }
    }
  }

  else
  {
LABEL_10:
    v2 = 0;
  }

LABEL_12:
  static Capability.createSpecialUse = 0xD000000000000012;
  *algn_1005DE468 = 0x80000001004B0650;
  qword_1005DE470 = v2;
  byte_1005DE478 = v1;
}

uint64_t *Capability.createSpecialUse.unsafeMutableAddressor()
{
  if (qword_1005DBA10 != -1)
  {
    swift_once();
  }

  return &static Capability.createSpecialUse;
}

uint64_t static Capability.createSpecialUse.getter()
{
  if (qword_1005DBA10 != -1)
  {
    swift_once();
  }

  v0 = static Capability.createSpecialUse;

  return v0;
}

uint64_t sub_1003BF7DC()
{
  v0 = 15;
  while (sub_1004A5A94() != 61 || v1 != 0xE100000000000000)
  {
    v3 = sub_1004A6D34();

    if (v3)
    {
      goto LABEL_9;
    }

    result = sub_1004A5934();
    v0 = result;
    if ((result & 0xFFFFFFFFFFFFC000) == 0x60000)
    {
      v0 = 0;
LABEL_9:
      v5 = v3 ^ 1;
      goto LABEL_11;
    }
  }

  v5 = 0;
LABEL_11:
  static Capability.enable = 0x454C42414E45;
  *algn_1005DE488 = 0xE600000000000000;
  qword_1005DE490 = v0;
  byte_1005DE498 = v5 & 1;
  return result;
}

uint64_t *Capability.enable.unsafeMutableAddressor()
{
  if (qword_1005DBA18 != -1)
  {
    swift_once();
  }

  return &static Capability.enable;
}

uint64_t static Capability.enable.getter()
{
  if (qword_1005DBA18 != -1)
  {
    swift_once();
  }

  v0 = static Capability.enable;

  return v0;
}

uint64_t sub_1003BF984()
{
  v0 = 15;
  while (sub_1004A5A94() != 61 || v1 != 0xE100000000000000)
  {
    v3 = sub_1004A6D34();

    if (v3)
    {
      goto LABEL_9;
    }

    result = sub_1004A5934();
    v0 = result;
    if ((result & 0xFFFFFFFFFFFFC000) == 0x70000)
    {
      v0 = 0;
LABEL_9:
      v5 = v3 ^ 1;
      goto LABEL_11;
    }
  }

  v5 = 0;
LABEL_11:
  static Capability.extendedSearch = 0x48435241455345;
  *algn_1005DE4A8 = 0xE700000000000000;
  qword_1005DE4B0 = v0;
  byte_1005DE4B8 = v5 & 1;
  return result;
}

uint64_t *Capability.extendedSearch.unsafeMutableAddressor()
{
  if (qword_1005DBA20 != -1)
  {
    swift_once();
  }

  return &static Capability.extendedSearch;
}

uint64_t static Capability.extendedSearch.getter()
{
  if (qword_1005DBA20 != -1)
  {
    swift_once();
  }

  v0 = static Capability.extendedSearch;

  return v0;
}

uint64_t sub_1003BFB30()
{
  v0 = 15;
  while (sub_1004A5A94() != 61 || v1 != 0xE100000000000000)
  {
    v3 = sub_1004A6D34();

    if (v3)
    {
      goto LABEL_9;
    }

    result = sub_1004A5934();
    v0 = result;
    if ((result & 0xFFFFFFFFFFFFC000) == 0x50000)
    {
      v0 = 0;
LABEL_9:
      v5 = v3 ^ 1;
      goto LABEL_11;
    }
  }

  v5 = 0;
LABEL_11:
  static Capability.esort = 0x54524F5345;
  *algn_1005DE4C8 = 0xE500000000000000;
  qword_1005DE4D0 = v0;
  byte_1005DE4D8 = v5 & 1;
  return result;
}

uint64_t *Capability.esort.unsafeMutableAddressor()
{
  if (qword_1005DBA28 != -1)
  {
    swift_once();
  }

  return &static Capability.esort;
}

uint64_t static Capability.esort.getter()
{
  if (qword_1005DBA28 != -1)
  {
    swift_once();
  }

  v0 = static Capability.esort;

  return v0;
}

uint64_t sub_1003BFCD8()
{
  v0 = 15;
  while (sub_1004A5A94() != 61 || v1 != 0xE100000000000000)
  {
    v3 = sub_1004A6D34();

    if (v3)
    {
      goto LABEL_9;
    }

    result = sub_1004A5934();
    v0 = result;
    if ((result & 0xFFFFFFFFFFFFC000) == 0x70000)
    {
      v0 = 0;
LABEL_9:
      v5 = v3 ^ 1;
      goto LABEL_11;
    }
  }

  v5 = 0;
LABEL_11:
  static Capability.filters = 0x535245544C4946;
  *algn_1005DE4E8 = 0xE700000000000000;
  qword_1005DE4F0 = v0;
  byte_1005DE4F8 = v5 & 1;
  return result;
}

uint64_t *Capability.filters.unsafeMutableAddressor()
{
  if (qword_1005DBA30 != -1)
  {
    swift_once();
  }

  return &static Capability.filters;
}

uint64_t static Capability.filters.getter()
{
  if (qword_1005DBA30 != -1)
  {
    swift_once();
  }

  v0 = static Capability.filters;

  return v0;
}

uint64_t sub_1003BFE84()
{
  v0 = 15;
  while (sub_1004A5A94() != 61 || v1 != 0xE100000000000000)
  {
    v3 = sub_1004A6D34();

    if (v3)
    {
      goto LABEL_9;
    }

    result = sub_1004A5934();
    v0 = result;
    if ((result & 0xFFFFFFFFFFFFC000) == 0x20000)
    {
      v0 = 0;
LABEL_9:
      v5 = v3 ^ 1;
      goto LABEL_11;
    }
  }

  v5 = 0;
LABEL_11:
  static Capability.id = 17481;
  *algn_1005DE508 = 0xE200000000000000;
  qword_1005DE510 = v0;
  byte_1005DE518 = v5 & 1;
  return result;
}

uint64_t *Capability.id.unsafeMutableAddressor()
{
  if (qword_1005DBA38 != -1)
  {
    swift_once();
  }

  return &static Capability.id;
}

uint64_t static Capability.id.getter()
{
  if (qword_1005DBA38 != -1)
  {
    swift_once();
  }

  v0 = static Capability.id;

  return v0;
}

uint64_t sub_1003C001C()
{
  v0 = 15;
  while (sub_1004A5A94() != 61 || v1 != 0xE100000000000000)
  {
    v3 = sub_1004A6D34();

    if (v3)
    {
      goto LABEL_9;
    }

    result = sub_1004A5934();
    v0 = result;
    if ((result & 0xFFFFFFFFFFFFC000) == 0x40000)
    {
      v0 = 0;
LABEL_9:
      v5 = v3 ^ 1;
      goto LABEL_11;
    }
  }

  v5 = 0;
LABEL_11:
  static Capability.idle = 1162626121;
  *algn_1005DE528 = 0xE400000000000000;
  qword_1005DE530 = v0;
  byte_1005DE538 = v5 & 1;
  return result;
}

uint64_t *Capability.idle.unsafeMutableAddressor()
{
  if (qword_1005DBA40 != -1)
  {
    swift_once();
  }

  return &static Capability.idle;
}

uint64_t static Capability.idle.getter()
{
  if (qword_1005DBA40 != -1)
  {
    swift_once();
  }

  v0 = static Capability.idle;

  return v0;
}

uint64_t sub_1003C01C8()
{
  v0 = 15;
  while (sub_1004A5A94() != 61 || v1 != 0xE100000000000000)
  {
    v2 = sub_1004A6D34();

    if (v2)
    {
      goto LABEL_7;
    }

    result = sub_1004A5934();
    v0 = result;
    if ((result & 0xFFFFFFFFFFFFC000) == 0x90000)
    {
      v0 = 0;
LABEL_7:
      v4 = v2 ^ 1;
      goto LABEL_9;
    }
  }

  v4 = 0;
LABEL_9:
  static Capability.imap4rev1 = 0x7665723450414D49;
  *algn_1005DE548 = 0xE900000000000031;
  qword_1005DE550 = v0;
  byte_1005DE558 = v4 & 1;
  return result;
}

uint64_t *Capability.imap4rev1.unsafeMutableAddressor()
{
  if (qword_1005DBA48 != -1)
  {
    swift_once();
  }

  return &static Capability.imap4rev1;
}

uint64_t static Capability.imap4rev1.getter()
{
  if (qword_1005DBA48 != -1)
  {
    swift_once();
  }

  v0 = static Capability.imap4rev1;

  return v0;
}

uint64_t sub_1003C0384()
{
  v0 = 15;
  while (sub_1004A5A94() != 61 || v1 != 0xE100000000000000)
  {
    v3 = sub_1004A6D34();

    if (v3)
    {
      goto LABEL_9;
    }

    result = sub_1004A5934();
    v0 = result;
    if ((result & 0xFFFFFFFFFFFFC000) == 0x50000)
    {
      v0 = 0;
LABEL_9:
      v5 = v3 ^ 1;
      goto LABEL_11;
    }
  }

  v5 = 0;
LABEL_11:
  static Capability.imap4 = 0x3450414D49;
  *algn_1005DE568 = 0xE500000000000000;
  qword_1005DE570 = v0;
  byte_1005DE578 = v5 & 1;
  return result;
}

uint64_t *Capability.imap4.unsafeMutableAddressor()
{
  if (qword_1005DBA50 != -1)
  {
    swift_once();
  }

  return &static Capability.imap4;
}

uint64_t static Capability.imap4.getter()
{
  if (qword_1005DBA50 != -1)
  {
    swift_once();
  }

  v0 = static Capability.imap4;

  return v0;
}

uint64_t sub_1003C052C()
{
  v0 = 15;
  while (sub_1004A5A94() != 61 || v1 != 0xE100000000000000)
  {
    v3 = sub_1004A6D34();

    if (v3)
    {
      goto LABEL_9;
    }

    result = sub_1004A5934();
    v0 = result;
    if ((result & 0xFFFFFFFFFFFFC000) == 0x80000)
    {
      v0 = 0;
LABEL_9:
      v5 = v3 ^ 1;
      goto LABEL_11;
    }
  }

  v5 = 0;
LABEL_11:
  static Capability.language = 0x45474155474E414CLL;
  *algn_1005DE588 = 0xE800000000000000;
  qword_1005DE590 = v0;
  byte_1005DE598 = v5 & 1;
  return result;
}

uint64_t *Capability.language.unsafeMutableAddressor()
{
  if (qword_1005DBA58 != -1)
  {
    swift_once();
  }

  return &static Capability.language;
}

uint64_t static Capability.language.getter()
{
  if (qword_1005DBA58 != -1)
  {
    swift_once();
  }

  v0 = static Capability.language;

  return v0;
}

uint64_t sub_1003C06D8()
{
  v0 = 15;
  while (sub_1004A5A94() != 61 || v1 != 0xE100000000000000)
  {
    v2 = sub_1004A6D34();

    if (v2)
    {
      goto LABEL_7;
    }

    result = sub_1004A5934();
    v0 = result;
    if ((result & 0xFFFFFFFFFFFFC000) == 0xB0000)
    {
      v0 = 0;
LABEL_7:
      v4 = v2 ^ 1;
      goto LABEL_9;
    }
  }

  v4 = 0;
LABEL_9:
  static Capability.listStatus = 0x4154532D5453494CLL;
  *algn_1005DE5A8 = 0xEB00000000535554;
  qword_1005DE5B0 = v0;
  byte_1005DE5B8 = v4 & 1;
  return result;
}

uint64_t *Capability.listStatus.unsafeMutableAddressor()
{
  if (qword_1005DBA60 != -1)
  {
    swift_once();
  }

  return &static Capability.listStatus;
}

uint64_t static Capability.listStatus.getter()
{
  if (qword_1005DBA60 != -1)
  {
    swift_once();
  }

  v0 = static Capability.listStatus;

  return v0;
}

uint64_t sub_1003C0890()
{
  v0 = 15;
  while (sub_1004A5A94() != 61 || v1 != 0xE100000000000000)
  {
    v2 = sub_1004A6D34();

    if (v2)
    {
      goto LABEL_7;
    }

    result = sub_1004A5934();
    v0 = result;
    if ((result & 0xFFFFFFFFFFFFC000) == 0xD0000)
    {
      v0 = 0;
LABEL_7:
      v4 = v2 ^ 1;
      goto LABEL_9;
    }
  }

  v4 = 0;
LABEL_9:
  strcpy(&static Capability.listExtended, "LIST-EXTENDED");
  *&algn_1005DE5C8[6] = -4864;
  qword_1005DE5D0 = v0;
  byte_1005DE5D8 = v4 & 1;
  return result;
}

uint64_t *Capability.listExtended.unsafeMutableAddressor()
{
  if (qword_1005DBA68 != -1)
  {
    swift_once();
  }

  return &static Capability.listExtended;
}

uint64_t static Capability.listExtended.getter()
{
  if (qword_1005DBA68 != -1)
  {
    swift_once();
  }

  v0 = static Capability.listExtended;

  return v0;
}

uint64_t sub_1003C0A4C()
{
  v0 = 15;
  while (sub_1004A5A94() != 61 || v1 != 0xE100000000000000)
  {
    v2 = sub_1004A6D34();

    if (v2)
    {
      goto LABEL_7;
    }

    result = sub_1004A5934();
    v0 = result;
    if ((result & 0xFFFFFFFFFFFFC000) == 0xD0000)
    {
      v0 = 0;
LABEL_7:
      v4 = v2 ^ 1;
      goto LABEL_9;
    }
  }

  v4 = 0;
LABEL_9:
  strcpy(&static Capability.loginDisabled, "LOGINDISABLED");
  *&algn_1005DE5E8[6] = -4864;
  qword_1005DE5F0 = v0;
  byte_1005DE5F8 = v4 & 1;
  return result;
}

uint64_t *Capability.loginDisabled.unsafeMutableAddressor()
{
  if (qword_1005DBA70 != -1)
  {
    swift_once();
  }

  return &static Capability.loginDisabled;
}

uint64_t static Capability.loginDisabled.getter()
{
  if (qword_1005DBA70 != -1)
  {
    swift_once();
  }

  v0 = static Capability.loginDisabled;

  return v0;
}

uint64_t sub_1003C0C08()
{
  v0 = 15;
  while (sub_1004A5A94() != 61 || v1 != 0xE100000000000000)
  {
    v2 = sub_1004A6D34();

    if (v2)
    {
      goto LABEL_7;
    }

    result = sub_1004A5934();
    v0 = result;
    if ((result & 0xFFFFFFFFFFFFC000) == 0xF0000)
    {
      v0 = 0;
LABEL_7:
      v4 = v2 ^ 1;
      goto LABEL_9;
    }
  }

  v4 = 0;
LABEL_9:
  static Capability.loginReferrals = 0x45522D4E49474F4CLL;
  *algn_1005DE608 = 0xEF534C4152524546;
  qword_1005DE610 = v0;
  byte_1005DE618 = v4 & 1;
  return result;
}

uint64_t *Capability.loginReferrals.unsafeMutableAddressor()
{
  if (qword_1005DBA78 != -1)
  {
    swift_once();
  }

  return &static Capability.loginReferrals;
}

uint64_t static Capability.loginReferrals.getter()
{
  if (qword_1005DBA78 != -1)
  {
    swift_once();
  }

  v0 = static Capability.loginReferrals;

  return v0;
}

uint64_t sub_1003C0DC4()
{
  v0 = 15;
  while (sub_1004A5A94() != 61 || v1 != 0xE100000000000000)
  {
    v2 = sub_1004A6D34();

    if (v2)
    {
      goto LABEL_7;
    }

    result = sub_1004A5934();
    v0 = result;
    if ((result & 0xFFFFFFFFFFFFC000) == 0xB0000)
    {
      v0 = 0;
LABEL_7:
      v4 = v2 ^ 1;
      goto LABEL_9;
    }
  }

  v4 = 0;
LABEL_9:
  static Capability.mailboxSpecificAppendLimit = 0x494C444E45505041;
  *algn_1005DE628 = 0xEB0000000054494DLL;
  qword_1005DE630 = v0;
  byte_1005DE638 = v4 & 1;
  return result;
}

uint64_t *Capability.mailboxSpecificAppendLimit.unsafeMutableAddressor()
{
  if (qword_1005DBA80 != -1)
  {
    swift_once();
  }

  return &static Capability.mailboxSpecificAppendLimit;
}

uint64_t static Capability.mailboxSpecificAppendLimit.getter()
{
  if (qword_1005DBA80 != -1)
  {
    swift_once();
  }

  v0 = static Capability.mailboxSpecificAppendLimit;

  return v0;
}

uint64_t sub_1003C0F7C()
{
  v0 = 15;
  while (sub_1004A5A94() != 61 || v1 != 0xE100000000000000)
  {
    v3 = sub_1004A6D34();

    if (v3)
    {
      goto LABEL_9;
    }

    result = sub_1004A5934();
    v0 = result;
    if ((result & 0xFFFFFFFFFFFFC000) == 0x80000)
    {
      v0 = 0;
LABEL_9:
      v5 = v3 ^ 1;
      goto LABEL_11;
    }
  }

  v5 = 0;
LABEL_11:
  static Capability.metadata = 0x415441444154454DLL;
  *algn_1005DE648 = 0xE800000000000000;
  qword_1005DE650 = v0;
  byte_1005DE658 = v5 & 1;
  return result;
}

uint64_t *Capability.metadata.unsafeMutableAddressor()
{
  if (qword_1005DBA88 != -1)
  {
    swift_once();
  }

  return &static Capability.metadata;
}

uint64_t static Capability.metadata.getter()
{
  if (qword_1005DBA88 != -1)
  {
    swift_once();
  }

  v0 = static Capability.metadata;

  return v0;
}

uint64_t sub_1003C1128()
{
  v0 = 15;
  while (sub_1004A5A94() != 61 || v1 != 0xE100000000000000)
  {
    v2 = sub_1004A6D34();

    if (v2)
    {
      goto LABEL_7;
    }

    result = sub_1004A5934();
    v0 = result;
    if ((result & 0xFFFFFFFFFFFFC000) == 0xF0000)
    {
      v0 = 0;
LABEL_7:
      v4 = v2 ^ 1;
      goto LABEL_9;
    }
  }

  v4 = 0;
LABEL_9:
  static Capability.metadataServer = 0x415441444154454DLL;
  *algn_1005DE668 = 0xEF5245565245532DLL;
  qword_1005DE670 = v0;
  byte_1005DE678 = v4 & 1;
  return result;
}

uint64_t *Capability.metadataServer.unsafeMutableAddressor()
{
  if (qword_1005DBA90 != -1)
  {
    swift_once();
  }

  return &static Capability.metadataServer;
}

uint64_t static Capability.metadataServer.getter()
{
  if (qword_1005DBA90 != -1)
  {
    swift_once();
  }

  v0 = static Capability.metadataServer;

  return v0;
}

uint64_t sub_1003C12E4()
{
  v0 = 15;
  while (sub_1004A5A94() != 61 || v1 != 0xE100000000000000)
  {
    v3 = sub_1004A6D34();

    if (v3)
    {
      goto LABEL_9;
    }

    result = sub_1004A5934();
    v0 = result;
    if ((result & 0xFFFFFFFFFFFFC000) == 0x40000)
    {
      v0 = 0;
LABEL_9:
      v5 = v3 ^ 1;
      goto LABEL_11;
    }
  }

  v5 = 0;
LABEL_11:
  static Capability.move = 1163284301;
  *algn_1005DE688 = 0xE400000000000000;
  qword_1005DE690 = v0;
  byte_1005DE698 = v5 & 1;
  return result;
}

uint64_t *Capability.move.unsafeMutableAddressor()
{
  if (qword_1005DBA98 != -1)
  {
    swift_once();
  }

  return &static Capability.move;
}

uint64_t static Capability.move.getter()
{
  if (qword_1005DBA98 != -1)
  {
    swift_once();
  }

  v0 = static Capability.move;

  return v0;
}

uint64_t sub_1003C1490()
{
  v0 = 15;
  while (sub_1004A5A94() != 61 || v1 != 0xE100000000000000)
  {
    v2 = sub_1004A6D34();

    if (v2)
    {
      goto LABEL_7;
    }

    result = sub_1004A5934();
    v0 = result;
    if ((result & 0xFFFFFFFFFFFFC000) == 0xB0000)
    {
      v0 = 0;
LABEL_7:
      v4 = v2 ^ 1;
      goto LABEL_9;
    }
  }

  v4 = 0;
LABEL_9:
  static Capability.multiSearch = 0x41455349544C554DLL;
  *algn_1005DE6A8 = 0xEB00000000484352;
  qword_1005DE6B0 = v0;
  byte_1005DE6B8 = v4 & 1;
  return result;
}

uint64_t *Capability.multiSearch.unsafeMutableAddressor()
{
  if (qword_1005DBAA0 != -1)
  {
    swift_once();
  }

  return &static Capability.multiSearch;
}

uint64_t static Capability.multiSearch.getter()
{
  if (qword_1005DBAA0 != -1)
  {
    swift_once();
  }

  v0 = static Capability.multiSearch;

  return v0;
}

uint64_t sub_1003C1648()
{
  v0 = 15;
  while (sub_1004A5A94() != 61 || v1 != 0xE100000000000000)
  {
    v2 = sub_1004A6D34();

    if (v2)
    {
      goto LABEL_7;
    }

    result = sub_1004A5934();
    v0 = result;
    if ((result & 0xFFFFFFFFFFFFC000) == 0x90000)
    {
      v0 = 0;
LABEL_7:
      v4 = v2 ^ 1;
      goto LABEL_9;
    }
  }

  v4 = 0;
LABEL_9:
  static Capability.namespace = 0x43415053454D414ELL;
  *algn_1005DE6C8 = 0xE900000000000045;
  qword_1005DE6D0 = v0;
  byte_1005DE6D8 = v4 & 1;
  return result;
}

uint64_t *Capability.namespace.unsafeMutableAddressor()
{
  if (qword_1005DBAA8 != -1)
  {
    swift_once();
  }

  return &static Capability.namespace;
}

uint64_t static Capability.namespace.getter()
{
  if (qword_1005DBAA8 != -1)
  {
    swift_once();
  }

  v0 = static Capability.namespace;

  return v0;
}

uint64_t sub_1003C1804()
{
  v0 = 15;
  while (sub_1004A5A94() != 61 || v1 != 0xE100000000000000)
  {
    v3 = sub_1004A6D34();

    if (v3)
    {
      goto LABEL_9;
    }

    result = sub_1004A5934();
    v0 = result;
    if ((result & 0xFFFFFFFFFFFFC000) == 0x80000)
    {
      v0 = 0;
LABEL_9:
      v5 = v3 ^ 1;
      goto LABEL_11;
    }
  }

  v5 = 0;
LABEL_11:
  static Capability.objectID = 0x44495443454A424FLL;
  *algn_1005DE6E8 = 0xE800000000000000;
  qword_1005DE6F0 = v0;
  byte_1005DE6F8 = v5 & 1;
  return result;
}

uint64_t *Capability.objectID.unsafeMutableAddressor()
{
  if (qword_1005DBAB0 != -1)
  {
    swift_once();
  }

  return &static Capability.objectID;
}

uint64_t static Capability.objectID.getter()
{
  if (qword_1005DBAB0 != -1)
  {
    swift_once();
  }

  v0 = static Capability.objectID;

  return v0;
}

uint64_t sub_1003C19B0()
{
  v0 = 15;
  while (sub_1004A5A94() != 61 || v1 != 0xE100000000000000)
  {
    v3 = sub_1004A6D34();

    if (v3)
    {
      goto LABEL_9;
    }

    result = sub_1004A5934();
    v0 = result;
    if ((result & 0xFFFFFFFFFFFFC000) == 0x70000)
    {
      v0 = 0;
LABEL_9:
      v5 = v3 ^ 1;
      goto LABEL_11;
    }
  }

  v5 = 0;
LABEL_11:
  static Capability.qresync = 0x434E5953455251;
  *algn_1005DE708 = 0xE700000000000000;
  qword_1005DE710 = v0;
  byte_1005DE718 = v5 & 1;
  return result;
}

uint64_t *Capability.qresync.unsafeMutableAddressor()
{
  if (qword_1005DBAB8 != -1)
  {
    swift_once();
  }

  return &static Capability.qresync;
}

uint64_t static Capability.qresync.getter()
{
  if (qword_1005DBAB8 != -1)
  {
    swift_once();
  }

  v0 = static Capability.qresync;

  return v0;
}

uint64_t sub_1003C1B5C()
{
  v0 = 15;
  while (sub_1004A5A94() != 61 || v1 != 0xE100000000000000)
  {
    v3 = sub_1004A6D34();

    if (v3)
    {
      goto LABEL_9;
    }

    result = sub_1004A5934();
    v0 = result;
    if ((result & 0xFFFFFFFFFFFFC000) == 0x50000)
    {
      v0 = 0;
LABEL_9:
      v5 = v3 ^ 1;
      goto LABEL_11;
    }
  }

  v5 = 0;
LABEL_11:
  static Capability.quota = 0x41544F5551;
  *algn_1005DE728 = 0xE500000000000000;
  qword_1005DE730 = v0;
  byte_1005DE738 = v5 & 1;
  return result;
}

uint64_t *Capability.quota.unsafeMutableAddressor()
{
  if (qword_1005DBAC0 != -1)
  {
    swift_once();
  }

  return &static Capability.quota;
}

uint64_t static Capability.quota.getter()
{
  if (qword_1005DBAC0 != -1)
  {
    swift_once();
  }

  v0 = static Capability.quota;

  return v0;
}

uint64_t sub_1003C1D04()
{
  v0 = 15;
  while (sub_1004A5A94() != 61 || v1 != 0xE100000000000000)
  {
    v3 = sub_1004A6D34();

    if (v3)
    {
      goto LABEL_9;
    }

    result = sub_1004A5934();
    v0 = result;
    if ((result & 0xFFFFFFFFFFFFC000) == 0x70000)
    {
      v0 = 0;
LABEL_9:
      v5 = v3 ^ 1;
      goto LABEL_11;
    }
  }

  v5 = 0;
LABEL_11:
  static Capability.saslIR = 0x52492D4C534153;
  *algn_1005DE748 = 0xE700000000000000;
  qword_1005DE750 = v0;
  byte_1005DE758 = v5 & 1;
  return result;
}

uint64_t *Capability.saslIR.unsafeMutableAddressor()
{
  if (qword_1005DBAC8 != -1)
  {
    swift_once();
  }

  return &static Capability.saslIR;
}

uint64_t static Capability.saslIR.getter()
{
  if (qword_1005DBAC8 != -1)
  {
    swift_once();
  }

  v0 = static Capability.saslIR;

  return v0;
}

uint64_t sub_1003C1EB0()
{
  v0 = 15;
  while (sub_1004A5A94() != 61 || v1 != 0xE100000000000000)
  {
    v2 = sub_1004A6D34();

    if (v2)
    {
      goto LABEL_7;
    }

    result = sub_1004A5934();
    v0 = result;
    if ((result & 0xFFFFFFFFFFFFC000) == 0x90000)
    {
      v0 = 0;
LABEL_7:
      v4 = v2 ^ 1;
      goto LABEL_9;
    }
  }

  v4 = 0;
LABEL_9:
  static Capability.searchRes = 0x4552484352414553;
  *algn_1005DE768 = 0xE900000000000053;
  qword_1005DE770 = v0;
  byte_1005DE778 = v4 & 1;
  return result;
}

uint64_t *Capability.searchRes.unsafeMutableAddressor()
{
  if (qword_1005DBAD0 != -1)
  {
    swift_once();
  }

  return &static Capability.searchRes;
}

uint64_t static Capability.searchRes.getter()
{
  if (qword_1005DBAD0 != -1)
  {
    swift_once();
  }

  v0 = static Capability.searchRes;

  return v0;
}

uint64_t sub_1003C206C()
{
  v0 = 15;
  while (sub_1004A5A94() != 61 || v1 != 0xE100000000000000)
  {
    v2 = sub_1004A6D34();

    if (v2)
    {
      goto LABEL_7;
    }

    result = sub_1004A5934();
    v0 = result;
    if ((result & 0xFFFFFFFFFFFFC000) == 0xB0000)
    {
      v0 = 0;
LABEL_7:
      v4 = v2 ^ 1;
      goto LABEL_9;
    }
  }

  v4 = 0;
LABEL_9:
  static Capability.specialUse = 0x2D4C414943455053;
  *algn_1005DE788 = 0xEB00000000455355;
  qword_1005DE790 = v0;
  byte_1005DE798 = v4 & 1;
  return result;
}

uint64_t *Capability.specialUse.unsafeMutableAddressor()
{
  if (qword_1005DBAD8 != -1)
  {
    swift_once();
  }

  return &static Capability.specialUse;
}

uint64_t static Capability.specialUse.getter()
{
  if (qword_1005DBAD8 != -1)
  {
    swift_once();
  }

  v0 = static Capability.specialUse;

  return v0;
}

uint64_t sub_1003C2224()
{
  v0 = 15;
  while (sub_1004A5A94() != 61 || v1 != 0xE100000000000000)
  {
    v3 = sub_1004A6D34();

    if (v3)
    {
      goto LABEL_9;
    }

    result = sub_1004A5934();
    v0 = result;
    if ((result & 0xFFFFFFFFFFFFC000) == 0x80000)
    {
      v0 = 0;
LABEL_9:
      v5 = v3 ^ 1;
      goto LABEL_11;
    }
  }

  v5 = 0;
LABEL_11:
  static Capability.startTLS = 0x534C545452415453;
  *algn_1005DE7A8 = 0xE800000000000000;
  qword_1005DE7B0 = v0;
  byte_1005DE7B8 = v5 & 1;
  return result;
}

uint64_t *Capability.startTLS.unsafeMutableAddressor()
{
  if (qword_1005DBAE0 != -1)
  {
    swift_once();
  }

  return &static Capability.startTLS;
}

uint64_t static Capability.startTLS.getter()
{
  if (qword_1005DBAE0 != -1)
  {
    swift_once();
  }

  v0 = static Capability.startTLS;

  return v0;
}

uint64_t sub_1003C23D0()
{
  v0 = 15;
  while (sub_1004A5A94() != 61 || v1 != 0xE100000000000000)
  {
    v3 = sub_1004A6D34();

    if (v3)
    {
      goto LABEL_9;
    }

    result = sub_1004A5934();
    v0 = result;
    if ((result & 0xFFFFFFFFFFFFC000) == 0x70000)
    {
      v0 = 0;
LABEL_9:
      v5 = v3 ^ 1;
      goto LABEL_11;
    }
  }

  v5 = 0;
LABEL_11:
  static Capability.uidPlus = 0x53554C50444955;
  *algn_1005DE7C8 = 0xE700000000000000;
  qword_1005DE7D0 = v0;
  byte_1005DE7D8 = v5 & 1;
  return result;
}

uint64_t *Capability.uidPlus.unsafeMutableAddressor()
{
  if (qword_1005DBAE8 != -1)
  {
    swift_once();
  }

  return &static Capability.uidPlus;
}

uint64_t static Capability.uidPlus.getter()
{
  if (qword_1005DBAE8 != -1)
  {
    swift_once();
  }

  v0 = static Capability.uidPlus;

  return v0;
}

uint64_t sub_1003C257C()
{
  v0 = 15;
  while (sub_1004A5A94() != 61 || v1 != 0xE100000000000000)
  {
    v2 = sub_1004A6D34();

    if (v2)
    {
      goto LABEL_7;
    }

    result = sub_1004A5934();
    v0 = result;
    if ((result & 0xFFFFFFFFFFFFC000) == 0xA0000)
    {
      v0 = 0;
LABEL_7:
      v4 = v2 ^ 1;
      goto LABEL_9;
    }
  }

  v4 = 0;
LABEL_9:
  static Capability.uidBatches = 0x4843544142444955;
  *algn_1005DE7E8 = 0xEA00000000005345;
  qword_1005DE7F0 = v0;
  byte_1005DE7F8 = v4 & 1;
  return result;
}

uint64_t *Capability.uidBatches.unsafeMutableAddressor()
{
  if (qword_1005DBAF0 != -1)
  {
    swift_once();
  }

  return &static Capability.uidBatches;
}

uint64_t static Capability.uidBatches.getter()
{
  if (qword_1005DBAF0 != -1)
  {
    swift_once();
  }

  v0 = static Capability.uidBatches;

  return v0;
}

uint64_t sub_1003C2738()
{
  v0 = 15;
  while (sub_1004A5A94() != 61 || v1 != 0xE100000000000000)
  {
    v3 = sub_1004A6D34();

    if (v3)
    {
      goto LABEL_9;
    }

    result = sub_1004A5934();
    v0 = result;
    if ((result & 0xFFFFFFFFFFFFC000) == 0x80000)
    {
      v0 = 0;
LABEL_9:
      v5 = v3 ^ 1;
      goto LABEL_11;
    }
  }

  v5 = 0;
LABEL_11:
  static Capability.unselect = 0x5443454C45534E55;
  *algn_1005DE808 = 0xE800000000000000;
  qword_1005DE810 = v0;
  byte_1005DE818 = v5 & 1;
  return result;
}

uint64_t *Capability.unselect.unsafeMutableAddressor()
{
  if (qword_1005DBAF8 != -1)
  {
    swift_once();
  }

  return &static Capability.unselect;
}

uint64_t static Capability.unselect.getter()
{
  if (qword_1005DBAF8 != -1)
  {
    swift_once();
  }

  v0 = static Capability.unselect;

  return v0;
}

uint64_t sub_1003C28E4()
{
  v0 = 15;
  while (sub_1004A5A94() != 61 || v1 != 0xE100000000000000)
  {
    v2 = sub_1004A6D34();

    if (v2)
    {
      goto LABEL_7;
    }

    result = sub_1004A5934();
    v0 = result;
    if ((result & 0xFFFFFFFFFFFFC000) == 0xB0000)
    {
      v0 = 0;
LABEL_7:
      v4 = v2 ^ 1;
      goto LABEL_9;
    }
  }

  v4 = 0;
LABEL_9:
  static Capability.partialURL = 0x545241502D4C5255;
  *algn_1005DE828 = 0xEB000000004C4149;
  qword_1005DE830 = v0;
  byte_1005DE838 = v4 & 1;
  return result;
}

uint64_t *Capability.partialURL.unsafeMutableAddressor()
{
  if (qword_1005DBB00 != -1)
  {
    swift_once();
  }

  return &static Capability.partialURL;
}

uint64_t static Capability.partialURL.getter()
{
  if (qword_1005DBB00 != -1)
  {
    swift_once();
  }

  v0 = static Capability.partialURL;

  return v0;
}

uint64_t sub_1003C2A9C()
{
  v0 = 15;
  while (sub_1004A5A94() != 61 || v1 != 0xE100000000000000)
  {
    v3 = sub_1004A6D34();

    if (v3)
    {
      goto LABEL_9;
    }

    result = sub_1004A5934();
    v0 = result;
    if ((result & 0xFFFFFFFFFFFFC000) == 0x70000)
    {
      v0 = 0;
LABEL_9:
      v5 = v3 ^ 1;
      goto LABEL_11;
    }
  }

  v5 = 0;
LABEL_11:
  static Capability.partial = 0x4C414954524150;
  *algn_1005DE848 = 0xE700000000000000;
  qword_1005DE850 = v0;
  byte_1005DE858 = v5 & 1;
  return result;
}

uint64_t *Capability.partial.unsafeMutableAddressor()
{
  if (qword_1005DBB08 != -1)
  {
    swift_once();
  }

  return &static Capability.partial;
}

uint64_t static Capability.partial.getter()
{
  if (qword_1005DBB08 != -1)
  {
    swift_once();
  }

  v0 = static Capability.partial;

  return v0;
}

uint64_t sub_1003C2C48()
{
  v0 = 15;
  while (sub_1004A5A94() != 61 || v1 != 0xE100000000000000)
  {
    v3 = sub_1004A6D34();

    if (v3)
    {
      goto LABEL_9;
    }

    result = sub_1004A5934();
    v0 = result;
    if ((result & 0xFFFFFFFFFFFFC000) == 0x70000)
    {
      v0 = 0;
LABEL_9:
      v5 = v3 ^ 1;
      goto LABEL_11;
    }
  }

  v5 = 0;
LABEL_11:
  static Capability.authenticatedURL = 0x485455414C5255;
  *algn_1005DE868 = 0xE700000000000000;
  qword_1005DE870 = v0;
  byte_1005DE878 = v5 & 1;
  return result;
}

uint64_t *Capability.authenticatedURL.unsafeMutableAddressor()
{
  if (qword_1005DBB10 != -1)
  {
    swift_once();
  }

  return &static Capability.authenticatedURL;
}

uint64_t static Capability.authenticatedURL.getter()
{
  if (qword_1005DBB10 != -1)
  {
    swift_once();
  }

  v0 = static Capability.authenticatedURL;

  return v0;
}

uint64_t sub_1003C2DF4()
{
  v0 = 15;
  while (sub_1004A5A94() != 61 || v1 != 0xE100000000000000)
  {
    v3 = sub_1004A6D34();

    if (v3)
    {
      goto LABEL_9;
    }

    result = sub_1004A5934();
    v0 = result;
    if ((result & 0xFFFFFFFFFFFFC000) == 0x60000)
    {
      v0 = 0;
LABEL_9:
      v5 = v3 ^ 1;
      goto LABEL_11;
    }
  }

  v5 = 0;
LABEL_11:
  static Capability.within = 0x4E4948544957;
  *algn_1005DE888 = 0xE600000000000000;
  qword_1005DE890 = v0;
  byte_1005DE898 = v5 & 1;
  return result;
}

uint64_t *Capability.within.unsafeMutableAddressor()
{
  if (qword_1005DBB18 != -1)
  {
    swift_once();
  }

  return &static Capability.within;
}

uint64_t static Capability.within.getter()
{
  if (qword_1005DBB18 != -1)
  {
    swift_once();
  }

  v0 = static Capability.within;

  return v0;
}

uint64_t sub_1003C2F9C()
{
  v0 = 15;
  while (sub_1004A5A94() != 61 || v1 != 0xE100000000000000)
  {
    v2 = sub_1004A6D34();

    if (v2)
    {
      goto LABEL_7;
    }

    result = sub_1004A5934();
    v0 = result;
    if ((result & 0xFFFFFFFFFFFFC000) == 0xA0000)
    {
      v0 = 0;
LABEL_7:
      v4 = v2 ^ 1;
      goto LABEL_9;
    }
  }

  v4 = 0;
LABEL_9:
  static Capability.gmailExtensions = 0x5458452D4D472D58;
  *algn_1005DE8A8 = 0xEA0000000000312DLL;
  qword_1005DE8B0 = v0;
  byte_1005DE8B8 = v4 & 1;
  return result;
}

uint64_t *Capability.gmailExtensions.unsafeMutableAddressor()
{
  if (qword_1005DBB20 != -1)
  {
    swift_once();
  }

  return &static Capability.gmailExtensions;
}

uint64_t static Capability.gmailExtensions.getter()
{
  if (qword_1005DBB20 != -1)
  {
    swift_once();
  }

  v0 = static Capability.gmailExtensions;

  return v0;
}

void sub_1003C3158()
{
  if (("eBuffer-views.swift" & 0x2000000000000000) != 0)
  {
    v0 = ("eBuffer-views.swift" >> 40) & 0xF0000;
  }

  else
  {
    v0 = 0x100000;
  }

  v1 = v0 == 0;
  if (v0)
  {
    v2 = 15;
    while (sub_1004A5A94() != 61 || v3 != 0xE100000000000000)
    {
      v4 = sub_1004A6D34();

      if (v4)
      {
        goto LABEL_12;
      }

      v2 = sub_1004A5934();
      v1 = (v0 ^ v2) < 0x4000;
      if ((v0 ^ v2) < 0x4000)
      {
        goto LABEL_10;
      }
    }
  }

  else
  {
LABEL_10:
    v2 = 0;
  }

LABEL_12:
  static Capability.yahooMailHighestModificationSequence = 0xD000000000000010;
  *algn_1005DE8C8 = 0x80000001004B0630;
  qword_1005DE8D0 = v2;
  byte_1005DE8D8 = v1;
}

uint64_t *Capability.yahooMailHighestModificationSequence.unsafeMutableAddressor()
{
  if (qword_1005DBB28 != -1)
  {
    swift_once();
  }

  return &static Capability.yahooMailHighestModificationSequence;
}

uint64_t static Capability.yahooMailHighestModificationSequence.getter()
{
  if (qword_1005DBB28 != -1)
  {
    swift_once();
  }

  v0 = static Capability.yahooMailHighestModificationSequence;

  return v0;
}

uint64_t sub_1003C3338()
{
  v0 = 15;
  while (sub_1004A5A94() != 61 || v1 != 0xE100000000000000)
  {
    v3 = sub_1004A6D34();

    if (v3)
    {
      goto LABEL_9;
    }

    result = sub_1004A5934();
    v0 = result;
    if ((result & 0xFFFFFFFFFFFFC000) == 0x80000)
    {
      v0 = 0;
LABEL_9:
      v5 = v3 ^ 1;
      goto LABEL_11;
    }
  }

  v5 = 0;
LABEL_11:
  *&static Capability.literalPlus = 0x2B4C41524554494CLL;
  *(&static Capability.literalPlus + 1) = 0xE800000000000000;
  qword_1005DE8F0 = v0;
  byte_1005DE8F8 = v5 & 1;
  return result;
}

__int128 *Capability.literalPlus.unsafeMutableAddressor()
{
  if (qword_1005DBB30 != -1)
  {
    swift_once();
  }

  return &static Capability.literalPlus;
}

uint64_t static Capability.literalPlus.getter()
{
  if (qword_1005DBB30 != -1)
  {
    swift_once();
  }

  v0 = static Capability.literalPlus;

  return v0;
}

uint64_t sub_1003C34E4()
{
  v0 = 15;
  while (sub_1004A5A94() != 61 || v1 != 0xE100000000000000)
  {
    v3 = sub_1004A6D34();

    if (v3)
    {
      goto LABEL_9;
    }

    result = sub_1004A5934();
    v0 = result;
    if ((result & 0xFFFFFFFFFFFFC000) == 0x80000)
    {
      v0 = 0;
LABEL_9:
      v5 = v3 ^ 1;
      goto LABEL_11;
    }
  }

  v5 = 0;
LABEL_11:
  *&static Capability.literalMinus = 0x2D4C41524554494CLL;
  *(&static Capability.literalMinus + 1) = 0xE800000000000000;
  qword_1005DE910 = v0;
  byte_1005DE918 = v5 & 1;
  return result;
}

__int128 *Capability.literalMinus.unsafeMutableAddressor()
{
  if (qword_1005DBB38 != -1)
  {
    swift_once();
  }

  return &static Capability.literalMinus;
}

uint64_t static Capability.literalMinus.getter()
{
  if (qword_1005DBB38 != -1)
  {
    swift_once();
  }

  v0 = static Capability.literalMinus;

  return v0;
}

uint64_t sub_1003C3690()
{
  v0 = 15;
  while (sub_1004A5A94() != 61 || v1 != 0xE100000000000000)
  {
    v3 = sub_1004A6D34();

    if (v3)
    {
      goto LABEL_9;
    }

    result = sub_1004A5934();
    v0 = result;
    if ((result & 0xFFFFFFFFFFFFC000) == 0x70000)
    {
      v0 = 0;
LABEL_9:
      v5 = v3 ^ 1;
      goto LABEL_11;
    }
  }

  v5 = 0;
LABEL_11:
  static Capability.preview = 0x57454956455250;
  *algn_1005DE928 = 0xE700000000000000;
  qword_1005DE930 = v0;
  byte_1005DE938 = v5 & 1;
  return result;
}

uint64_t *Capability.preview.unsafeMutableAddressor()
{
  if (qword_1005DBB40 != -1)
  {
    swift_once();
  }

  return &static Capability.preview;
}

uint64_t static Capability.preview.getter()
{
  if (qword_1005DBB40 != -1)
  {
    swift_once();
  }

  v0 = static Capability.preview;

  return v0;
}

uint64_t sub_1003C383C()
{
  v0 = 15;
  while (sub_1004A5A94() != 61 || v1 != 0xE100000000000000)
  {
    v3 = sub_1004A6D34();

    if (v3)
    {
      goto LABEL_9;
    }

    result = sub_1004A5934();
    v0 = result;
    if ((result & 0xFFFFFFFFFFFFC000) == 0x70000)
    {
      v0 = 0;
LABEL_9:
      v5 = v3 ^ 1;
      goto LABEL_11;
    }
  }

  v5 = 0;
LABEL_11:
  static Capability.uidOnly = 0x594C4E4F444955;
  *algn_1005DE948 = 0xE700000000000000;
  qword_1005DE950 = v0;
  byte_1005DE958 = v5 & 1;
  return result;
}

uint64_t *Capability.uidOnly.unsafeMutableAddressor()
{
  if (qword_1005DBB48 != -1)
  {
    swift_once();
  }

  return &static Capability.uidOnly;
}

uint64_t static Capability.uidOnly.getter()
{
  if (qword_1005DBB48 != -1)
  {
    swift_once();
  }

  v0 = static Capability.uidOnly;

  return v0;
}

uint64_t sub_1003C3A48(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v10._countAndFlagsBits = sub_1004A6CE4();
  sub_1004A5994(v10);

  v3 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v3)
  {
    v4 = 4 * v3;
    while (sub_1004A5A94() != 61 || v5 != 0xE100000000000000)
    {
      v6 = sub_1004A6D34();

      if ((v6 & 1) != 0 || v4 == sub_1004A5934() >> 14)
      {
        return a2;
      }
    }
  }

  return a2;
}

uint64_t static Capability.sort(_:)(Swift::String a1)
{
  if (a1._object)
  {
    sub_1004A5994(a1);
    v1 = 0x3D54524F53;
    while (sub_1004A5A94() != 61 || v2 != 0xE100000000000000)
    {
      v3 = sub_1004A6D34();

      if ((v3 & 1) != 0 || sub_1004A5934() >> 14 == 20)
      {
        return v1;
      }
    }
  }

  else
  {
    v1 = 1414680403;
    while (sub_1004A5A94() != 61 || v4 != 0xE100000000000000)
    {
      v6 = sub_1004A6D34();

      if ((v6 & 1) != 0 || (sub_1004A5934() & 0xFFFFFFFFFFFFC000) == 0x40000)
      {
        return v1;
      }
    }
  }

  return v1;
}

uint64_t sub_1003C3DCC(Swift::String a1, uint64_t a2, unint64_t a3)
{
  sub_1004A5994(a1);
  v3 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v3)
  {
    v4 = 4 * v3;
    while (sub_1004A5A94() != 61 || v5 != 0xE100000000000000)
    {
      v6 = sub_1004A6D34();

      if ((v6 & 1) != 0 || v4 == sub_1004A5934() >> 14)
      {
        return a2;
      }
    }
  }

  return a2;
}

uint64_t sub_1003C3ED0(uint64_t a1)
{
  v2 = v1;
  v4 = *(v1 + 20);
  result = sub_1002F178C(0x494C494241504143, 0xEA00000000005954, (v1 + 8), *(v1 + 20));
  if (v6)
  {
    v7._countAndFlagsBits = 0x494C494241504143;
    v7._object = 0xEA00000000005954;
    result = ByteBuffer._setStringSlowpath(_:at:)(v7, v4);
  }

  v8 = result;
  v9 = *(v1 + 20);
  v10 = (v9 + result);
  if (__CFADD__(v9, result))
  {
    goto LABEL_20;
  }

  *(v1 + 20) = v10;
  v26 = a1;
  v11 = *(a1 + 16);
  if (v11)
  {
    result = sub_1002F178C(32, 0xE100000000000000, (v1 + 8), v10);
    if (v12)
    {
      v13._countAndFlagsBits = 32;
      v13._object = 0xE100000000000000;
      result = ByteBuffer._setStringSlowpath(_:at:)(v13, v10);
    }

    v14 = result;
    v15 = *(v2 + 20);
    v16 = __CFADD__(v15, result);
    v17 = v15 + result;
    if (v16)
    {
      goto LABEL_23;
    }

    *(v2 + 20) = v17;
  }

  else
  {
    v14 = 0;
  }

  __chkstk_darwin(result);
  v25[2] = sub_1003C40B8;
  v25[3] = 0;
  v25[4] = v2;
  v25[5] = &v26;
  v25[6] = 32;
  v25[7] = 0xE100000000000000;
  result = sub_100451D54(0, sub_1003C4564, v25, a1);
  v18 = v14 + result;
  if (__OFADD__(v14, result))
  {
    goto LABEL_21;
  }

  if (!v11)
  {
    v24 = v14 + result;
    goto LABEL_16;
  }

  v19 = *(v2 + 20);
  result = sub_1002F178C(0, 0xE000000000000000, (v2 + 8), *(v2 + 20));
  if (v20)
  {
    v21._countAndFlagsBits = 0;
    v21._object = 0xE000000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v21, v19);
  }

  v22 = *(v2 + 20);
  v16 = __CFADD__(v22, result);
  v23 = v22 + result;
  if (v16)
  {
    goto LABEL_24;
  }

  *(v2 + 20) = v23;
  v24 = v18 + result;
  if (__OFADD__(v18, result))
  {
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

LABEL_16:
  result = v8 + v24;
  if (__OFADD__(v8, v24))
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
  }

  return result;
}

uint64_t sub_1003C40B8(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = *(a2 + 20);
  result = sub_1002F178C(*a1, v4, (a2 + 8), v5);
  if (v7)
  {
    v8._countAndFlagsBits = v3;
    v8._object = v4;
    result = ByteBuffer._setStringSlowpath(_:at:)(v8, v5);
  }

  v9 = *(a2 + 20);
  v10 = __CFADD__(v9, result);
  v11 = v9 + result;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 20) = v11;
  }

  return result;
}

uint64_t sub_1003C413C@<X0>(uint64_t *a1@<X0>, __int128 *a2@<X1>, uint64_t (*a3)(void *, uint64_t)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X5>, uint64_t a7@<X6>, void *a8@<X7>, uint64_t *a9@<X8>)
{
  v11 = *a1;
  v12 = *(a2 + 2);
  v13 = *(a2 + 3);
  v14 = *(a2 + 32);
  v15 = *a6;
  v17 = *a2;
  v18 = v12;
  v19 = v13;
  v20 = v14;
  result = sub_1004911E8(v11, &v17, a3, a4, a5, v15, a7, a8);
  if (!v9)
  {
    *a9 = result;
  }

  return result;
}

uint64_t sub_1003C4194(uint64_t a1, uint64_t a2, unint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  if (a1 == a5 && a2 == a6 || (v12 = sub_1004A6D34(), result = 0, (v12 & 1) != 0))
  {
    if (a4)
    {
      if ((a8 & 1) == 0)
      {
        return 0;
      }
    }

    else if ((a8 & 1) != 0 || (a7 ^ a3) >> 14)
    {
      return 0;
    }

    return 1;
  }

  return result;
}

unint64_t sub_1003C4220()
{
  result = qword_1005DBF80;
  if (!qword_1005DBF80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DBF80);
  }

  return result;
}

unint64_t sub_1003C4278()
{
  result = qword_1005DBF88;
  if (!qword_1005DBF88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DBF88);
  }

  return result;
}

unint64_t sub_1003C42D0()
{
  result = qword_1005DBF90;
  if (!qword_1005DBF90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DBF90);
  }

  return result;
}

unint64_t sub_1003C4328()
{
  result = qword_1005DBF98;
  if (!qword_1005DBF98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DBF98);
  }

  return result;
}

unint64_t sub_1003C4380()
{
  result = qword_1005DBFA0;
  if (!qword_1005DBFA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DBFA0);
  }

  return result;
}

unint64_t sub_1003C43D8()
{
  result = qword_1005DBFA8;
  if (!qword_1005DBFA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DBFA8);
  }

  return result;
}

unint64_t sub_1003C4430()
{
  result = qword_1005DBFB0;
  if (!qword_1005DBFB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DBFB0);
  }

  return result;
}

unint64_t sub_1003C4488()
{
  result = qword_1005DBFB8;
  if (!qword_1005DBFB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DBFB8);
  }

  return result;
}

BOOL static FetchModificationResponse.__derived_struct_equals(_:_:)(_BOOL8 result, uint64_t a2)
{
  if (((a2 | result) & 0x8000000000000000) == 0)
  {
    return a2 == result;
  }

  __break(1u);
  return result;
}

void *sub_1003C45D4(void *result, void *a2)
{
  if (((*a2 | *result) & 0x8000000000000000) == 0)
  {
    return (*a2 == *result);
  }

  __break(1u);
  return result;
}

unint64_t sub_1003C45F8()
{
  result = qword_1005DBFC0;
  if (!qword_1005DBFC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DBFC0);
  }

  return result;
}

unint64_t sub_1003C4650()
{
  result = qword_1005DBFC8;
  if (!qword_1005DBFC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DBFC8);
  }

  return result;
}

uint64_t static Base64.encodeString<A>(bytes:options:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a3 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(a1);
  v11 = v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_1004A5E84();
  if (__OFADD__(result, 2))
  {
    __break(1u);
    goto LABEL_10;
  }

  if (((result + 2) / 3 - 0x2000000000000000) >> 62 != 3)
  {
LABEL_10:
    __break(1u);
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  __chkstk_darwin(result);
  v20[-2] = v13;
  v20[-1] = a2;
  v14 = *(a4 + 8);
  sub_1004A5AF4();
  if (v20[3])
  {
    return v20[2];
  }

  (*(v8 + 16))(v11, a1, a3);
  result = sub_1004A5CF4();
  v15 = *(result + 16);
  if (__OFADD__(v15, 2))
  {
    goto LABEL_11;
  }

  if (((v15 + 2) / 3uLL - 0x2000000000000000) >> 62 != 3)
  {
LABEL_12:
    __break(1u);
    return result;
  }

  __chkstk_darwin(result);
  v20[-4] = v16;
  v20[-3] = v17;
  v20[-2] = v18;
  v20[-1] = a2;
  v19 = sub_1004A5904();

  return v19;
}

uint64_t static Base64.decode(string:options:)(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v5 = a2;
  v6 = a1;
  if ((a2 & 0x1000000000000000) != 0)
  {

    v6 = sub_10010CD9C();
    v13 = v12;

    v5 = v13;
LABEL_9:
    v10 = static Base64.decode(string:options:)(v6, v5, a3);
    if (v3)
    {
    }

    v11 = v10;

    return v11;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v8 = HIBYTE(a2) & 0xF;
    v14[0] = a1;
    v14[1] = v5 & 0xFFFFFFFFFFFFFFLL;
    v7 = v14;
  }

  else if ((a1 & 0x1000000000000000) != 0)
  {
    v7 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v8 = v6 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = sub_1004A67E4();
  }

  result = sub_1003C55B4(v7, v8, a3, &v15);
  if (!v3)
  {
    result = v15;
    if (!v15)
    {

      goto LABEL_9;
    }
  }

  return result;
}

uint64_t static Base64.encodeBytes<A>(bytes:options:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a3 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(a1);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_1004A5E84();
  if (__OFADD__(result, 2))
  {
    __break(1u);
    goto LABEL_22;
  }

  if (((result + 2) / 3 - 0x2000000000000000) >> 62 != 3)
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  __chkstk_darwin(result);
  v13 = *(a4 + 8);
  sub_10000C9C0(&unk_1005D8FF0, &unk_1004DC230);
  sub_1004A5AF4();
  v14 = v25;
  if (v25)
  {
    return v14;
  }

  (*(v8 + 16))(v11, a1, a3);
  result = sub_1004A5CF4();
  v15 = *(result + 16);
  v16 = v15 + 2;
  if (__OFADD__(v15, 2))
  {
    goto LABEL_23;
  }

  v17 = v16 / 3;
  if ((v16 / 3 - 0x2000000000000000) >> 62 != 3)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v18 = 4 * v17;
  if (((4 * v17) & 0x8000000000000000) != 0)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v19 = result;
  if (v16 >= 3)
  {
    v14 = sub_1004A5C64();
    v14[2] = v18;
  }

  else
  {
    v14 = _swiftEmptyArrayStorage;
  }

  v25 = 0;
  if (a2)
  {
    v20 = &unk_1005BAFE8;
  }

  else
  {
    v20 = &unk_1005BB228;
  }

  v21 = &unk_1005BB218;
  if (a2)
  {
    v21 = &unk_1005BAFD8;
  }

  v22 = &unk_1005BB0F8;
  if (a2)
  {
    v23 = &unk_1005BB108;
  }

  else
  {
    v22 = &unk_1005BB338;
    v23 = &unk_1005BB348;
  }

  sub_1003C511C(v20, *v21, v23, *v22, v19 + 32, v15, (v14 + 4), v18, (a2 & 2) != 0, &v25);

  if (v18 >= v25)
  {
    v14[2] = v25;

    return v14;
  }

LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_1003C4DA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, void *a5@<X8>)
{
  if (a3 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a3)
    {
      v11 = sub_1004A5C64();
      v11[2] = a3;
    }

    else
    {
      v11 = _swiftEmptyArrayStorage;
    }

    v17 = 0;
    v12 = &unk_1005BAFD8;
    if (a4)
    {
      v13 = &unk_1005BAFE8;
    }

    else
    {
      v13 = &unk_1005BB228;
    }

    if ((a4 & 1) == 0)
    {
      v12 = &unk_1005BB218;
    }

    v14 = &unk_1005BB0F8;
    if (a4)
    {
      v15 = &unk_1005BB108;
    }

    else
    {
      v14 = &unk_1005BB338;
      v15 = &unk_1005BB348;
    }

    sub_1003C511C(v13, *v12, v15, *v14, a1, a2, (v11 + 4), a3, (a4 & 2) != 0, &v17);
    if (v5)
    {
      goto LABEL_18;
    }

    if (v17 <= a3)
    {
      v11[2] = v17;
      *a5 = v11;
      return result;
    }
  }

  __break(1u);
LABEL_18:

  __break(1u);
  return result;
}

uint64_t static Base64._encodeChromium(input:buffer:length:options:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, char a6)
{
  if (a6)
  {
    v8 = &unk_1005BAFE8;
  }

  else
  {
    v8 = &unk_1005BB228;
  }

  v9 = &unk_1005BB218;
  if (a6)
  {
    v9 = &unk_1005BAFD8;
  }

  v10 = &unk_1005BB0F8;
  if (a6)
  {
    v11 = &unk_1005BB108;
  }

  else
  {
    v10 = &unk_1005BB338;
    v11 = &unk_1005BB348;
  }

  sub_1003C511C(v8, *v9, v11, *v10, a1, a2, a3, a4, (a6 & 2) != 0, a5);
}

uint64_t sub_1003C4FDC@<X0>(uint64_t *a1@<X8>)
{
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  result = sub_1004A5904();
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1003C5034(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v13 = a3;
  v8 = &unk_1005BAFD8;
  if (a6)
  {
    v9 = &unk_1005BAFE8;
  }

  else
  {
    v9 = &unk_1005BB228;
  }

  if ((a6 & 1) == 0)
  {
    v8 = &unk_1005BB218;
  }

  v10 = &unk_1005BB0F8;
  if (a6)
  {
    v11 = &unk_1005BB108;
  }

  else
  {
    v10 = &unk_1005BB338;
    v11 = &unk_1005BB348;
  }

  sub_1003C511C(v9, *v8, v11, *v10, a4, a5, a1, a2, (a6 & 2) != 0, &v13);
  if (v6)
  {

    __break(1u);
  }

  else
  {

    return v13;
  }

  return result;
}

uint64_t sub_1003C511C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9, void *a10)
{
  v10 = 3 * (a6 / 3);
  v11 = a6 % 3;
  if (v10 > 0)
  {
    v12 = 0;
    v13 = 0;
    v14 = (a7 + 3);
    do
    {
      if (__OFADD__(v13, 3))
      {
        v15 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v15 = v13 + 3;
      }

      v16 = v13 + 2;
      if (__OFADD__(v13, 2))
      {
        __break(1u);
LABEL_43:
        __break(1u);
        goto LABEL_44;
      }

      v17 = (a5 + v13);
      v18 = *v17;
      v19 = *(a5 + v16);
      v20 = v17[1];
      *(v14 - 3) = *(result + v18);
      *(v14 - 2) = *(a3 + ((v20 >> 4) & 0xFFFFFFFFFFFFFFCFLL | (16 * (v18 & 3))));
      *(v14 - 1) = *(a3 + ((v19 >> 6) & 0xFFFFFFFFFFFFFFC3 | (4 * (v20 & 0xF))));
      *v14 = *(a3 + v19);
      v21 = v12 + 4;
      if (__OFADD__(v12, 4))
      {
        goto LABEL_43;
      }

      v14 += 4;
      v12 += 4;
      v13 = v15;
    }

    while (v15 < v10);
    if (v11 > 0)
    {
      goto LABEL_13;
    }

    goto LABEL_41;
  }

  if (v11 < 1)
  {
LABEL_40:
    v21 = 0;
    goto LABEL_41;
  }

  v21 = 0;
LABEL_13:
  v22 = v10 + 1;
  if (v10 + 1 >= a6)
  {
    v23 = 0;
  }

  else
  {
    v23 = *(a5 + v22);
  }

  v24 = v10 + 2;
  if (__OFADD__(v10, 2))
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  v25 = *(a5 + v10);
  LOBYTE(v10) = a9;
  if (v24 < a6)
  {
    v26 = *(a5 + v24);
    *(a7 + v21) = *(result + v25);
    if (v22 >= a6)
    {
      goto LABEL_33;
    }

    if (__OFADD__(v21, 1))
    {
LABEL_47:
      __break(1u);
      goto LABEL_48;
    }

    v22 = (v23 >> 4) & 0xFFFFFFCF | (16 * (v25 & 3));
    *(a7 + v21 + 1) = *(a3 + v22);
    if (__OFADD__(v21, 2))
    {
LABEL_49:
      __break(1u);
      goto LABEL_50;
    }

    v25 = (v26 >> 6) & 0xFFFFFFFFFFFFFFC3 | (4 * (v23 & 0xF));
    *(a7 + v21 + 2) = *(a3 + v25);
    v10 = v21 + 3;
    if (__OFADD__(v21, 3))
    {
LABEL_51:
      __break(1u);
      goto LABEL_52;
    }

    v23 = *(a3 + v26);
    *(a7 + v10) = v23;
    v27 = __OFADD__(v21, 4);
    v21 += 4;
    if (!v27)
    {
      goto LABEL_41;
    }

    __break(1u);
  }

  *(a7 + v21) = *(result + v25);
  if (v22 < a6)
  {
    if (__OFADD__(v21, 1))
    {
LABEL_48:
      __break(1u);
      goto LABEL_49;
    }

    *(a7 + v21 + 1) = *(a3 + ((v23 >> 4) & 0xFFFFFFCF | (16 * (v25 & 3))));
    v25 = v21 + 2;
    if (__OFADD__(v21, 2))
    {
LABEL_50:
      __break(1u);
      goto LABEL_51;
    }

    *(a7 + v25) = *(a3 + 4 * (v23 & 0xF));
    v27 = __OFADD__(v21, 3);
    v21 += 3;
    if (v27)
    {
LABEL_52:
      __break(1u);
      goto LABEL_53;
    }

    if (v10)
    {
      goto LABEL_41;
    }

    LOBYTE(v10) = 61;
    *(a7 + v21) = 61;
    v27 = __OFADD__(v21++, 1);
    if (!v27)
    {
      goto LABEL_41;
    }

    __break(1u);
  }

LABEL_33:
  if (__OFADD__(v21, 1))
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  *(a7 + v21 + 1) = *(a3 + 16 * (v25 & 3));
  v27 = __OFADD__(v21, 2);
  v21 += 2;
  if (v27)
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  if (v10)
  {
LABEL_41:
    *a10 = v21;
    return result;
  }

  *(a7 + v21) = 61;
  if (!__OFADD__(v21, 1))
  {
    *(a7 + v21 + 1) = 61;
    v27 = __OFADD__(v21, 2);
    v21 += 2;
    if (!v27)
    {
      goto LABEL_41;
    }

    __break(1u);
    goto LABEL_40;
  }

LABEL_53:
  __break(1u);
  return result;
}

uint64_t static Base64.withUnsafeEncodingTablesAsBufferPointers<A>(options:_:)(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1)
  {
    v5 = &off_1005BB0E8;
  }

  else
  {
    v5 = &off_1005BB328;
  }

  v9[2] = a4;
  v9[3] = v5;
  v9[4] = a2;
  v9[5] = a3;
  if (a1)
  {
    v6 = &off_1005BAFC8;
  }

  else
  {
    v6 = &off_1005BB208;
  }

  v7 = sub_10000C9C0(&qword_1005D0460, &qword_1004D3CE0);
  sub_1003C54EC(sub_1003C6720, v9, v6, &type metadata for UInt8, a4, v7, &protocol self-conformance witness table for Error, &v10);
}

uint64_t sub_1003C5430(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v13[2] = a6;
  v13[3] = a4;
  v13[4] = a5;
  v13[5] = a1;
  v13[6] = a2;
  v11 = sub_10000C9C0(&qword_1005D0460, &qword_1004D3CE0);
  result = sub_1003C54EC(sub_1003C6D50, v13, a3, &type metadata for UInt8, a6, v11, &protocol self-conformance witness table for Error, &v14);
  if (v7)
  {
    *a7 = v14;
  }

  return result;
}

uint64_t sub_1003C54EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = *(a6 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(a1);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_1003C68AC(v15, v16, v17, v18, v19, v20, v21, v14);
  if (v8)
  {
    return (*(v11 + 32))(a8, v14, a6);
  }

  return result;
}

uint64_t sub_1003C55B4@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t *a4@<X8>)
{
  if (a2 < 1)
  {
    goto LABEL_7;
  }

  if (__OFADD__(a2, 3))
  {
    __break(1u);
    goto LABEL_16;
  }

  v8 = result;
  v9 = 3 * ((a2 + 3) >> 2);
  v10 = sub_1004A5C64();
  v11 = v10;
  *(v10 + 16) = v9;
  if (!v8)
  {
    v16 = 0;
    v14 = v10 + 32;
    v15 = v9;
    result = sub_1003C5F58(&v14, &v16, 0, 0, a3);
    v12 = v16;
    v13 = v9 < v16;
    if (!v4)
    {
      goto LABEL_13;
    }

    if (v9 >= v16)
    {
LABEL_10:
      *(v11 + 16) = v12;
    }

LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v16 = 0;
  v14 = v10 + 32;
  v15 = v9;
  result = sub_1003C5F58(&v14, &v16, v8, a2, a3);
  v12 = v16;
  v13 = v9 < v16;
  if (v4)
  {
    if (v9 < v16)
    {
      __break(1u);
LABEL_7:
      *a4 = _swiftEmptyArrayStorage;
      return result;
    }

    goto LABEL_10;
  }

  if (v9 >= v16)
  {
    goto LABEL_14;
  }

  __break(1u);
LABEL_13:
  if (!v13)
  {
LABEL_14:
    *(v11 + 16) = v12;
    *a4 = v11;
    return result;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t static Base64._decodeChromium(from:into:length:options:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, char a6)
{
  v6 = a2 + 3;
  if (a2 >= 0)
  {
    v6 = a2;
  }

  v7 = a2 - (v6 & 0xFFFFFFFFFFFFFFFCLL);
  if ((a6 & 2) != 0)
  {
    if (v7 == 1)
    {
      goto LABEL_5;
    }
  }

  else if (v7 >= 1)
  {
LABEL_5:
    sub_1003C6744();
    swift_allocError();
    *v8 = 256;
    return swift_willThrow();
  }

  v10 = a2 + 3;
  if (__OFADD__(a2, 3))
  {
    __break(1u);
LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  if (v10 < 0)
  {
    v10 = a2 + 6;
  }

  if (3 * (v10 >> 2) > a4)
  {
    goto LABEL_53;
  }

  v11 = (v6 >> 2) - (a2 == (v6 & 0xFFFFFFFFFFFFFFFCLL));
  v12 = &unk_1005B8E98;
  if ((a6 & 1) == 0)
  {
    v12 = &unk_1005B9F18;
  }

  v13 = &unk_1005B92B8;
  if ((a6 & 1) == 0)
  {
    v13 = &unk_1005BA338;
  }

  v14 = &unk_1005B96D8;
  if ((a6 & 1) == 0)
  {
    v14 = &unk_1005BA758;
  }

  v15 = &unk_1005B9AF8;
  if ((a6 & 1) == 0)
  {
    v15 = &unk_1005BAB78;
  }

  if (v11 < 1)
  {
    v22 = 0;
  }

  else
  {
    v16 = 0;
    v17 = (a3 + 2);
    v18 = (a1 + 3);
    v19 = v11;
    do
    {
      v20 = *(v18 - 3);
      v21 = v13[*(v18 - 2)] | v12[v20] | v14[*(v18 - 1)] | v15[*v18];
      if (v21 >= 0x1FFFFFF)
      {
        goto LABEL_50;
      }

      v18 += 4;
      *(v17 - 1) = v21;
      *v17 = BYTE2(v21);
      v17 += 3;
      v16 -= 3;
      --v19;
    }

    while (v19);
    v22 = -v16;
  }

  if ((v11 - 0x2000000000000000) >> 62 != 3)
  {
    goto LABEL_54;
  }

  v23 = 4 * v11;
  v24 = (a1 + 4 * v11);
  v20 = *v24;
  v25 = v24[1];
  if ((v23 | 2) >= a2)
  {
    v28 = 0;
    v27 = 1;
  }

  else
  {
    v26 = *(a1 + (v23 | 2));
    v27 = v26 == 61;
    if (v26 == 61)
    {
      v28 = 0;
    }

    else
    {
      v28 = *(a1 + (v23 | 2));
    }
  }

  v29 = v23 | 3;
  if (v29 >= a2)
  {
    v34 = v12[v20];
    v35 = v13[v25];
    v36 = 65;
    if (!v27)
    {
      v36 = v28;
    }

    v31 = v35 | v34 | v14[v36];
  }

  else
  {
    v30 = *(a1 + v29);
    if (v27)
    {
      v28 = 65;
    }

    v31 = v13[v25] | v12[v20] | v14[v28];
    if (v30 == 61)
    {
      LOBYTE(v32) = 0;
    }

    else
    {
      LOBYTE(v32) = v30;
    }

    if (v30 != 61)
    {
      v33 = 0;
      v32 = v32;
      goto LABEL_43;
    }
  }

  v33 = 1;
  v32 = 65;
LABEL_43:
  v37 = v15[v32] | v31;
  if (v37 > 0x1FFFFFE)
  {
LABEL_50:
    sub_1003C6744();
    swift_allocError();
    *v40 = v20;
    v40[1] = 0;
    swift_willThrow();
    goto LABEL_51;
  }

  *(a3 + v22) = v37;
  v38 = v22 + 1;
  if (__OFADD__(v22, 1))
  {
    goto LABEL_55;
  }

  if (!v27)
  {
    *(a3 + v38) = BYTE1(v37);
    v39 = __OFADD__(v38, 1);
    v38 = v22 + 2;
    if (v39)
    {
      goto LABEL_56;
    }
  }

  if ((v33 & 1) == 0)
  {
    *(a3 + v38) = BYTE2(v37);
    v39 = __OFADD__(v38++, 1);
    if (v39)
    {
LABEL_57:
      __break(1u);
    }
  }

  *a5 = v38;
LABEL_51:
}

void *sub_1003C5A78(void *result, char a2)
{
  v3 = result[2];
  if (!v3)
  {
    return _swiftEmptyArrayStorage;
  }

  if (__OFADD__(v3, 3))
  {
    __break(1u);
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v5 = result;
  v6 = 3 * ((v3 + 3) >> 2);
  v7 = sub_1004A5C64();
  *(v7 + 16) = v6;
  v8[1] = v6;
  v9 = 0;
  v8[0] = v7 + 32;
  result = sub_1003C5F58(v8, &v9, (v5 + 4), v3, a2);
  if (v2)
  {
    if (v6 >= v9)
    {
      *(v7 + 16) = v9;
      v7 = v2;

      return v7;
    }

    goto LABEL_11;
  }

  if (v6 >= v9)
  {
    *(v7 + 16) = v9;
    return v7;
  }

LABEL_12:
  __break(1u);
  return result;
}

void *sub_1003C5B5C(uint64_t *a1, char a2)
{
  v4 = a1[3];
  v3 = a1[4];
  v5 = v3 - v4;
  v6 = __OFSUB__(v3, v4);
  if (v5 < 1)
  {
    return _swiftEmptyArrayStorage;
  }

  v8 = *a1;
  v9 = *(a1 + 10);
  v10 = *(a1 + 22);
  result = swift_beginAccess();
  if (v6)
  {
    __break(1u);
    goto LABEL_15;
  }

  if (__OFADD__(v5, 3))
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v12 = *(v8 + 24);
  v13 = (v10 | (v9 << 8)) + v4;
  v14 = 3 * ((v5 + 3) >> 2);
  v15 = sub_1004A5C64();
  *(v15 + 16) = v14;
  v16[1] = v14;
  v17 = 0;
  v16[0] = v15 + 32;
  result = sub_1003C5F58(v16, &v17, v12 + v13, v5, a2);
  if (v2)
  {
    if (v14 >= v17)
    {
      *(v15 + 16) = v17;

      return v15;
    }

    goto LABEL_16;
  }

  if (v14 >= v17)
  {
    *(v15 + 16) = v17;
    return v15;
  }

LABEL_17:
  __break(1u);
  return result;
}

void *static Base64.decode<A>(bytes:options:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a3 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(a1);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1004A5E84();
  if (v13 < 1)
  {
    return _swiftEmptyArrayStorage;
  }

  __chkstk_darwin(v13);
  *(&v18 - 2) = a2;
  v14 = *(a4 + 8);
  sub_10000C9C0(&unk_1005D8FF0, &unk_1004DC230);
  result = sub_1004A5AF4();
  if (!v4)
  {
    result = v19;
    if (!v19)
    {
      (*(v9 + 16))(v12, a1, a3);
      v16 = sub_1004A5CF4();
      v17 = sub_1003C5A78(v16, a2);

      return v17;
    }
  }

  return result;
}

uint64_t sub_1003C5E54@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, void *a4@<X8>)
{
  v6 = a2 + 3;
  if (__OFADD__(a2, 3))
  {
    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v7 = a2 + 6;
  if (v6 >= 0)
  {
    v7 = a2 + 3;
  }

  if (v6 < -3)
  {
    goto LABEL_15;
  }

  v10 = result;
  v11 = 3 * (v7 >> 2);
  if (v6 < 4)
  {
    v12 = _swiftEmptyArrayStorage;
  }

  else
  {
    v12 = sub_1004A5C64();
    v12[2] = v11;
  }

  v13[1] = v11;
  v14 = 0;
  v13[0] = (v12 + 4);
  result = sub_1003C5F58(v13, &v14, v10, a2, a3);
  if (v4)
  {
    if (v11 >= v14)
    {
      v12[2] = v14;
    }

    goto LABEL_16;
  }

  if (v11 < v14)
  {
LABEL_17:
    __break(1u);
    return result;
  }

  v12[2] = v14;
  *a4 = v12;
  return result;
}

uint64_t sub_1003C5F58(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4, char a5)
{
  v5 = *a1;
  v6 = a4 + 3;
  if (a4 >= 0)
  {
    v6 = a4;
  }

  v7 = a4 - (v6 & 0xFFFFFFFFFFFFFFFCLL);
  if ((a5 & 2) != 0)
  {
    if (v7 == 1)
    {
      goto LABEL_5;
    }
  }

  else if (v7 >= 1)
  {
LABEL_5:
    sub_1003C6744();
    swift_allocError();
    *v8 = 256;
    return swift_willThrow();
  }

  v10 = a4 + 3;
  if (__OFADD__(a4, 3))
  {
    __break(1u);
LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  if (v10 < 0)
  {
    v10 = a4 + 6;
  }

  if (a1[1] < 3 * (v10 >> 2))
  {
    goto LABEL_53;
  }

  v11 = (v6 >> 2) - (a4 == (v6 & 0xFFFFFFFFFFFFFFFCLL));
  v12 = &unk_1005B8E98;
  if ((a5 & 1) == 0)
  {
    v12 = &unk_1005B9F18;
  }

  v13 = &unk_1005B92B8;
  if ((a5 & 1) == 0)
  {
    v13 = &unk_1005BA338;
  }

  v14 = &unk_1005B96D8;
  if ((a5 & 1) == 0)
  {
    v14 = &unk_1005BA758;
  }

  v15 = &unk_1005B9AF8;
  if ((a5 & 1) == 0)
  {
    v15 = &unk_1005BAB78;
  }

  if (v11 < 1)
  {
    v22 = 0;
  }

  else
  {
    v16 = 0;
    v17 = (v5 + 2);
    v18 = (a3 + 3);
    v19 = v11;
    do
    {
      v20 = *(v18 - 3);
      v21 = v13[*(v18 - 2)] | v12[v20] | v14[*(v18 - 1)] | v15[*v18];
      if (v21 >= 0x1FFFFFF)
      {
        goto LABEL_50;
      }

      v18 += 4;
      *(v17 - 1) = v21;
      *v17 = BYTE2(v21);
      v17 += 3;
      v16 -= 3;
      --v19;
    }

    while (v19);
    v22 = -v16;
  }

  if ((v11 - 0x2000000000000000) >> 62 != 3)
  {
    goto LABEL_54;
  }

  v23 = 4 * v11;
  v24 = (a3 + 4 * v11);
  v20 = *v24;
  v25 = v24[1];
  if ((v23 | 2) >= a4)
  {
    v28 = 0;
    v27 = 1;
  }

  else
  {
    v26 = *(a3 + (v23 | 2));
    v27 = v26 == 61;
    if (v26 == 61)
    {
      v28 = 0;
    }

    else
    {
      v28 = *(a3 + (v23 | 2));
    }
  }

  v29 = v23 | 3;
  if (v29 >= a4)
  {
    v34 = v12[v20];
    v35 = v13[v25];
    v36 = 65;
    if (!v27)
    {
      v36 = v28;
    }

    v31 = v35 | v34 | v14[v36];
  }

  else
  {
    v30 = *(a3 + v29);
    if (v27)
    {
      v28 = 65;
    }

    v31 = v13[v25] | v12[v20] | v14[v28];
    if (v30 == 61)
    {
      LOBYTE(v32) = 0;
    }

    else
    {
      LOBYTE(v32) = v30;
    }

    if (v30 != 61)
    {
      v33 = 0;
      v32 = v32;
      goto LABEL_43;
    }
  }

  v33 = 1;
  v32 = 65;
LABEL_43:
  v37 = v15[v32] | v31;
  if (v37 > 0x1FFFFFE)
  {
LABEL_50:
    sub_1003C6744();
    swift_allocError();
    *v40 = v20;
    v40[1] = 0;
    swift_willThrow();
    goto LABEL_51;
  }

  *(v5 + v22) = v37;
  v38 = v22 + 1;
  if (__OFADD__(v22, 1))
  {
    goto LABEL_55;
  }

  if (!v27)
  {
    *(v5 + v38) = BYTE1(v37);
    v39 = __OFADD__(v38, 1);
    v38 = v22 + 2;
    if (v39)
    {
      goto LABEL_56;
    }
  }

  if ((v33 & 1) == 0)
  {
    *(v5 + v38) = BYTE2(v37);
    v39 = __OFADD__(v38++, 1);
    if (v39)
    {
LABEL_57:
      __break(1u);
    }
  }

  *a2 = v38;
LABEL_51:
}

uint64_t static Base64.withUnsafeDecodingTablesAsBufferPointers<A>(options:_:)(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1)
  {
    v5 = &off_1005B9AD8;
  }

  else
  {
    v5 = &off_1005BAB58;
  }

  if (a1)
  {
    v6 = &off_1005B9298;
  }

  else
  {
    v6 = &off_1005BA318;
  }

  v11[2] = a4;
  v11[3] = v6;
  if (a1)
  {
    v7 = &off_1005B96B8;
  }

  else
  {
    v7 = &off_1005BA738;
  }

  v11[4] = v7;
  v11[5] = v5;
  v11[6] = a2;
  v11[7] = a3;
  if (a1)
  {
    v8 = &off_1005B8E78;
  }

  else
  {
    v8 = &off_1005B9EF8;
  }

  v9 = sub_10000C9C0(&qword_1005D0460, &qword_1004D3CE0);
  sub_1003C54EC(sub_1003C67B4, v11, v8, &type metadata for UInt32, a4, v9, &protocol self-conformance witness table for Error, &v12);
}

uint64_t sub_1003C6470(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9)
{
  v14[2] = a8;
  v14[3] = a4;
  v14[4] = a5;
  v14[5] = a6;
  v14[6] = a7;
  v14[7] = a1;
  v14[8] = a2;
  v12 = sub_10000C9C0(&qword_1005D0460, &qword_1004D3CE0);
  result = sub_1003C54EC(sub_1003C67E8, v14, a3, &type metadata for UInt32, a8, v12, &protocol self-conformance witness table for Error, &v15);
  if (v9)
  {
    *a9 = v15;
  }

  return result;
}

uint64_t sub_1003C6528(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  v14[2] = a9;
  v14[3] = a4;
  v14[4] = a5;
  v14[5] = a6;
  v14[6] = a7;
  v14[7] = a8;
  v14[8] = a1;
  v14[9] = a2;
  v12 = sub_10000C9C0(&qword_1005D0460, &qword_1004D3CE0);
  result = sub_1003C54EC(sub_1003C6820, v14, a3, &type metadata for UInt32, a9, v12, &protocol self-conformance witness table for Error, &v15);
  if (v10)
  {
    *a10 = v15;
  }

  return result;
}

uint64_t sub_1003C65E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11)
{
  v15[2] = a10;
  v15[3] = a4;
  v15[4] = a5;
  v15[5] = a6;
  v15[6] = a7;
  v15[7] = a8;
  v15[8] = a9;
  v15[9] = a1;
  v15[10] = a2;
  v13 = sub_10000C9C0(&qword_1005D0460, &qword_1004D3CE0);
  result = sub_1003C54EC(sub_1003C685C, v15, a3, &type metadata for UInt32, a10, v13, &protocol self-conformance witness table for Error, &v16);
  if (v11)
  {
    *a11 = v16;
  }

  return result;
}

unint64_t sub_1003C6744()
{
  result = qword_1005DBFD0;
  if (!qword_1005DBFD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DBFD0);
  }

  return result;
}

uint64_t sub_1003C685C(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(v3 + 32);
  result = (*(v3 + 24))(*(v3 + 40), *(v3 + 48), *(v3 + 56), *(v3 + 64), *(v3 + 72), *(v3 + 80), a1, a2);
  if (v4)
  {
    *a3 = v4;
  }

  return result;
}

uint64_t sub_1003C68AC(uint64_t (*a1)(char *, uint64_t, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v28 = a7;
  v29 = a8;
  v30 = a1;
  v13 = *(a6 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(a1);
  v16 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v27 - v18;
  if ((_swift_isClassOrObjCExistentialType() & 1) != 0 && (a3 < 0 || (a3 & 0x4000000000000000) != 0))
  {
    v26 = v31;
    result = sub_1003C6AFC(v30, a2, a3, a4, a5, a6, v28, v19);
    v16 = v19;
    if (v26)
    {
      return (*(v13 + 32))(v29, v16, a6);
    }
  }

  else
  {
    if (_swift_isClassOrObjCExistentialType())
    {
      v20 = (((*(*(a4 - 8) + 80) + 32) & ~*(*(a4 - 8) + 80)) + (a3 & 0xFFFFFFFFFFFFFF8));
    }

    else
    {
      v20 = (a3 + ((*(*(a4 - 8) + 80) + 32) & ~*(*(a4 - 8) + 80)));
    }

    if ((_swift_isClassOrObjCExistentialType() & 1) != 0 && (a3 < 0 || (a3 & 0x4000000000000000) != 0))
    {
      v23 = sub_1004A6A34();
    }

    else
    {
      isClassOrObjCExistentialType = _swift_isClassOrObjCExistentialType();
      v22 = a3 & 0xFFFFFFFFFFFFFF8;
      if ((isClassOrObjCExistentialType & 1) == 0)
      {
        v22 = a3;
      }

      v23 = *(v22 + 16);
    }

    v24 = v31;
    result = v30(v20, v23, v16);
    if (v24)
    {
      return (*(v13 + 32))(v29, v16, a6);
    }
  }

  return result;
}

uint64_t sub_1003C6AFC(uint64_t (*a1)(char *, uint64_t, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v22 = a8;
  v11 = *(a6 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(a1);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1003C6C54(v15);
  v17 = (*(*(a4 - 8) + 80) + 32) & ~*(*(a4 - 8) + 80);
  v18 = *(v16 + 2);

  v19 = v23;
  result = a1(&v16[v17], v18, v14);
  if (v19)
  {
    return (*(v11 + 32))(v22, v14, a6);
  }

  return result;
}

void *sub_1003C6C54(uint64_t a1)
{
  if (a1 < 0)
  {
    v1 = a1;
  }

  else
  {
    v1 = (a1 & 0xFFFFFFFFFFFFFF8);
  }

  AssociatedObject = objc_getAssociatedObject(v1, _swiftEmptyArrayStorage);
  if (AssociatedObject)
  {
    v3 = AssociatedObject;
  }

  else
  {
    objc_sync_enter(v1);
    v4 = objc_getAssociatedObject(v1, _swiftEmptyArrayStorage);
    if (v4)
    {
      v3 = v4;
      swift_retain_n();
    }

    else
    {
      sub_1004A67B4();
      swift_getWitnessTable();
      v3 = sub_1004A6DC4();

      objc_setAssociatedObject(v1, _swiftEmptyArrayStorage, v3, 1);
    }

    objc_sync_exit(v1);
  }

  return v3;
}

uint64_t sub_1003C6D50(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(v3 + 32);
  result = (*(v3 + 24))(*(v3 + 40), *(v3 + 48), a1, a2);
  if (v4)
  {
    *a3 = v4;
  }

  return result;
}

Swift::Void __swiftcall CircularBuffer.advanceHeadIdx(by:)(Swift::Int by)
{
  v3 = *v2;
  v4 = *(v1 + 16);
  v5 = v2[1] + by;
  sub_1004A6374();
  v2[1] = (sub_1004A68C4() - 1) & v5;
}

Swift::Int __swiftcall CircularBuffer.indexAdvanced(index:by:)(Swift::Int index, Swift::Int by)
{
  v2 = by + index;
  sub_1004A6374();
  return (sub_1004A68C4() - 1) & v2;
}

Swift::Void __swiftcall CircularBuffer.advanceTailIdx(by:)(Swift::Int by)
{
  v3 = *v2;
  v4 = *(v1 + 16);
  v5 = v2[2] + by;
  sub_1004A6374();
  v2[2] = (sub_1004A68C4() - 1) & v5;
}

Swift::Int __swiftcall CircularBuffer.indexBeforeHeadIdx()()
{
  v1 = v0 - 1;
  sub_1004A6374();
  return (sub_1004A68C4() - 1) & v1;
}

Swift::Int __swiftcall CircularBuffer.indexBeforeTailIdx()()
{
  v1 = v0 - 1;
  sub_1004A6374();
  return (sub_1004A68C4() - 1) & v1;
}

uint64_t static CircularBuffer.Index.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((a1 & 0xFFFFFFFFFFFFFFLL) == (a2 & 0xFFFFFFFFFFFFFFLL))
  {
    return HIBYTE(a1) & 1 ^ ((a2 & 0x100000000000000) == 0);
  }

  else
  {
    return 0;
  }
}

BOOL static CircularBuffer.Index.< infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = a1 < a2;
  if ((a2 & 0x100000000000000) != 0)
  {
    v2 = 0;
    v3 = a1 < a2;
  }

  else
  {
    v3 = 1;
  }

  if ((a1 & 0x100000000000000) != 0)
  {
    return v3;
  }

  else
  {
    return v2;
  }
}

uint64_t CircularBuffer.count.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3 - a2;
  if (a3 < a2)
  {
    sub_1004A6374();
    v3 += sub_1004A68C4();
  }

  return v3;
}

uint64_t sub_1003C70B4(unsigned int *a1, unsigned int *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(unint64_t, unint64_t))
{
  if (*(a1 + 7))
  {
    v5 = 0x100000000000000;
  }

  else
  {
    v5 = 0;
  }

  if (*(a2 + 7))
  {
    v6 = 0x100000000000000;
  }

  else
  {
    v6 = 0;
  }

  return a5(v5 | (*(a1 + 6) << 48) | (*(a1 + 2) << 32) | *a1, v6 | (*(a2 + 6) << 48) | (*(a2 + 2) << 32) | *a2);
}

uint64_t CircularBuffer.description.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v29 = a3;
  v34 = a2;
  v35 = a4;
  v5 = sub_1004A6374();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v7 = *(TupleTypeMetadata2 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(TupleTypeMetadata2);
  v10 = &v27 - v9;
  v11 = sub_1004A6374();
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v27 - v13;
  v40 = 8283;
  v41 = 0xE200000000000000;
  v28 = a1;
  v39._countAndFlagsBits = a1;
  sub_1004A6904();
  swift_getWitnessTable();
  sub_1004A5B14();
  v38 = v36;
  sub_1004A6A04();
  sub_1004A69D4();
  v33 = sub_1004A69F4();
  sub_1004A69E4();
  v32 = *(v7 + 48);
  if (v32(v14, 1, TupleTypeMetadata2) != 1)
  {
    v17 = *(v5 - 8);
    v18 = *(v17 + 32);
    v30 = v17 + 32;
    v31 = v18;
    v19 = (v7 + 8);
    do
    {
      v25 = *v14;
      v26 = *(TupleTypeMetadata2 + 48);
      *v10 = *v14;
      v21 = v31(&v10[v26], &v14[v26], v5);
      if (v25 == v34)
      {
        v20._countAndFlagsBits = 60;
      }

      else
      {
        if (v25 != v29)
        {
          goto LABEL_6;
        }

        v20._countAndFlagsBits = 62;
      }

      v20._object = 0xE100000000000000;
      sub_1004A5994(v20);
LABEL_6:
      __chkstk_darwin(v21);
      *(&v27 - 2) = v35;
      sub_10016BE7C(sub_1003CD058, (&v27 - 4), &type metadata for Never, &type metadata for String, v22, &v36);
      if (v37)
      {
        v23._countAndFlagsBits = v36;
      }

      else
      {
        v23._countAndFlagsBits = 8287;
      }

      if (v37)
      {
        v24 = v37;
      }

      else
      {
        v24 = 0xE200000000000000;
      }

      v23._object = v24;
      sub_1004A5994(v23);

      (*v19)(v10, TupleTypeMetadata2);
      sub_1004A69E4();
    }

    while (v32(v14, 1, TupleTypeMetadata2) != 1);
  }

  v42._countAndFlagsBits = 93;
  v42._object = 0xE100000000000000;
  sub_1004A5994(v42);
  v39._countAndFlagsBits = 0;
  v39._object = 0xE000000000000000;
  sub_1004A6724(37);

  v39._countAndFlagsBits = 0xD000000000000012;
  v39._object = 0x80000001004B06A0;
  v15 = v28;
  v36 = sub_1004A68C4();
  v43._countAndFlagsBits = sub_1004A6CE4();
  sub_1004A5994(v43);

  v44._countAndFlagsBits = 0x654C676E6972202CLL;
  v44._object = 0xEE00203A6874676ELL;
  sub_1004A5994(v44);
  v36 = CircularBuffer.count.getter(v15, v34, v29);
  v45._countAndFlagsBits = sub_1004A6CE4();
  sub_1004A5994(v45);

  v46._countAndFlagsBits = 41;
  v46._object = 0xE100000000000000;
  sub_1004A5994(v46);
  sub_1004A5994(v39);

  return v40;
}

unint64_t CircularBuffer.index(_:offsetBy:)(unsigned int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = a2 + a1;
  sub_1004A6374();
  v9 = sub_1004A68C4() - 1;
  result = CircularBuffer.count.getter(a3, a4, a5);
  v11 = v9 & v8;
  if ((v9 & v8) < 0 != v12)
  {
    __break(1u);
  }

  else if (!HIDWORD(v11))
  {
    return v11 | ((v11 >= a4) << 56) | 0xFFFFFF00000000;
  }

  __break(1u);
  return result;
}

uint64_t CircularBuffer.subscript.getter@<X0>(uint64_t a1@<X4>, uint64_t a2@<X8>)
{
  v4 = sub_1004A6374();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v7 = &v10 - v6;
  sub_1004A6914();
  v8 = *(a1 - 8);
  result = (*(v8 + 48))(v7, 1, a1);
  if (result != 1)
  {
    return (*(v8 + 32))(a2, v7, a1);
  }

  __break(1u);
  return result;
}

uint64_t CircularBuffer.subscript.setter(uint64_t a1, unsigned int a2, uint64_t a3)
{
  sub_1003CD228(a1, a2, a3);
  v5 = *(*(*(a3 + 16) - 8) + 8);

  return v5(a1);
}

void (*CircularBuffer.subscript.modify(void *a1, uint64_t a2, uint64_t a3))(uint64_t **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x38uLL);
  }

  v8 = v7;
  *a1 = v7;
  v7[1] = a3;
  v7[2] = v3;
  *v7 = a2;
  v9 = *(a3 + 16);
  v7[3] = v9;
  v10 = *(v9 - 8);
  v7[4] = v10;
  v11 = *(v10 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v7[5] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v7[5] = malloc(*(v10 + 64));
    v12 = malloc(v11);
  }

  v8[6] = v12;
  v13 = *v3;
  CircularBuffer.subscript.getter(v9, v12);
  return sub_1003C7958;
}

{
  if (&_swift_coroFrameAlloc)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x38uLL);
  }

  v8 = v7;
  *a1 = v7;
  v7[1] = a3;
  v7[2] = v3;
  *v7 = a2;
  v9 = *(a3 + 16);
  v7[3] = v9;
  v10 = *(v9 - 8);
  v7[4] = v10;
  v11 = *(v10 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v7[5] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v7[5] = malloc(*(v10 + 64));
    v12 = malloc(v11);
  }

  v8[6] = v12;
  CircularBuffer.subscript.getter(a2, *v3, *(v3 + 8), *(v3 + 16), v9, v12);
  return sub_1003CB224;
}

void sub_1003C7958(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[5];
  v4 = (*a1)[6];
  v5 = (*a1)[3];
  v6 = (*a1)[4];
  v8 = (*a1)[1];
  v7 = (*a1)[2];
  v9 = **a1;
  if (a2)
  {
    (*(v6 + 16))((*a1)[5], v4, v5);
    sub_1003CD228(v3, v9, v8);
    v10 = *(v6 + 8);
    v10(v3, v5);
    v10(v4, v5);
  }

  else
  {
    sub_1003CD228((*a1)[6], v9, v8);
    (*(v6 + 8))(v4, v5);
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t CircularBuffer.startIndex.getter(uint64_t a1, unint64_t a2, uint64_t a3)
{
  result = CircularBuffer.count.getter(a1, a2, a3);
  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (!HIDWORD(a2))
  {
    return a2 | 0x1FFFFFF00000000;
  }

  __break(1u);
  return result;
}

unint64_t CircularBuffer.endIndex.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = CircularBuffer.count.getter(a1, a2, a3);
  if (a3 < 0)
  {
    __break(1u);
  }

  else if (!HIDWORD(a3))
  {
    return a3 | ((a3 >= a2) << 56) | 0xFFFFFF00000000;
  }

  __break(1u);
  return result;
}

unint64_t CircularBuffer.distance(from:to:)(uint64_t a1, uint64_t a2)
{
  sub_1004A6374();
  v4 = sub_1004A68C4();
  if ((a1 & 0x100000000000000) != 0)
  {
    if ((a2 & 0x100000000000000) != 0)
    {
      return a2 - a1;
    }

    else
    {
      return v4 - a1 + a2;
    }
  }

  else if ((a2 & 0x100000000000000) != 0)
  {
    v6 = a1 - a2 + v4;
    result = -v6;
    if (__OFSUB__(0, v6))
    {
      __break(1u);
    }
  }

  else
  {
    return a2 - a1;
  }

  return result;
}

uint64_t CircularBuffer._copyContents(initializing:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, unint64_t *a7@<X8>)
{
  v46 = a7;
  v47 = a1;
  v12 = sub_1004A6374();
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12);
  v15 = &v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v44 - v17;
  __chkstk_darwin(v19);
  v21 = &v44 - v20;
  v22 = a3;
  result = CircularBuffer.count.getter(a3, a4, a5);
  if (result > a2)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  result = sub_1004A6394();
  if (!result)
  {

    v31 = CircularBuffer.startIndex.getter(v30, a4, a5);
    result = 0;
LABEL_22:
    v43 = v46;
    *v46 = a3;
    v43[1] = a4;
    v43[2] = a5;
    *(v43 + 6) = v31;
    *(v43 + 14) = WORD2(v31);
    *(v43 + 30) = BYTE6(v31);
    *(v43 + 31) = HIBYTE(v31) != 0;
    v43[4] = result;
    return result;
  }

  v24 = result;
  v47 = a5;
  v45 = a4;
  if (a5 >= a4)
  {
    if (a4 != a5)
    {
      v32 = v45;
      do
      {
        sub_1004A6914();
        v33 = *(a6 - 8);
        result = (*(v33 + 48))(v21, 1, a6);
        if (result == 1)
        {
          goto LABEL_28;
        }

        ++v32;
        (*(v33 + 32))(v24, v21, a6);
        v24 += *(v33 + 72);
        a5 = v47;
      }

      while (v47 != v32);
    }

LABEL_20:
    v34 = v22;
    v35 = v22;
    v36 = v45;
    v37 = CircularBuffer.endIndex.getter(v35, v45, a5);
    v38 = a5;
    v52 = v37;
    v53 = WORD2(v37);
    v54 = BYTE6(v37);
    v55 = HIBYTE(v37) != 0;
    v39 = CircularBuffer.endIndex.getter(v34, v36, a5);
    v48 = v39;
    v49 = WORD2(v39);
    v50 = BYTE6(v39);
    v51 = HIBYTE(v39) != 0;
    type metadata accessor for CircularBuffer.Index();
    swift_getWitnessTable();
    result = sub_1004A5684();
    if (result)
    {
      a3 = sub_1003CD0BC(v37 & 0xFFFFFFFFFFFFFFLL | ((HIBYTE(v37) != 0) << 56), v39 & 0xFFFFFFFFFFFFFFLL | ((HIBYTE(v39) != 0) << 56), v34, v36, a5);
      a4 = v40;
      a5 = v41;
      v42 = swift_retain_n();
      v31 = CircularBuffer.startIndex.getter(v42, a4, a5);

      result = CircularBuffer.count.getter(v34, v36, v38);
      goto LABEL_22;
    }

    goto LABEL_24;
  }

  v25 = *(a3 + 16);
  if (v25 >= a4)
  {
    if (v25 != a4)
    {
      v26 = v45;
      do
      {
        sub_1004A6914();
        v27 = *(a6 - 8);
        result = (*(v27 + 48))(v18, 1, a6);
        if (result == 1)
        {
          goto LABEL_29;
        }

        ++v26;
        result = (*(v27 + 32))(v24, v18, a6);
        v24 += *(v27 + 72);
      }

      while (v25 != v26);
    }

    a5 = v47;
    if (v47 < 0)
    {
      goto LABEL_26;
    }

    if (v47)
    {
      v28 = 0;
      while (1)
      {
        sub_1004A6914();
        v29 = *(a6 - 8);
        result = (*(v29 + 48))(v15, 1, a6);
        if (result == 1)
        {
          goto LABEL_27;
        }

        ++v28;
        (*(v29 + 32))(v24, v15, a6);
        v24 += *(v29 + 72);
        a5 = v47;
        if (v47 == v28)
        {
          goto LABEL_20;
        }
      }
    }

    goto LABEL_20;
  }

LABEL_25:
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

unint64_t sub_1003C80C4@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void, void, void, void)@<X2>, uint64_t a3@<X8>)
{
  result = a2(*v3, v3[1], v3[2], *(a1 + 16));
  *a3 = result;
  *(a3 + 4) = WORD2(result);
  *(a3 + 6) = BYTE6(result);
  *(a3 + 7) = HIBYTE(result) != 0;
  return result;
}

void (*sub_1003C8124(uint64_t **a1, unsigned int *a2, uint64_t a3))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x28uLL);
  }

  *a1 = v7;
  v8 = 0x100000000000000;
  if (!*(a2 + 7))
  {
    v8 = 0;
  }

  v7[4] = sub_1003C8220(v7, v8 | (*(a2 + 6) << 48) | (*(a2 + 2) << 32) | *a2, *v3, v3[1], v3[2], *(a3 + 16));
  return sub_1003C81D8;
}

void sub_1003C81D8(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

void (*sub_1003C8220(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6))(void *a1)
{
  v8 = *(a6 - 8);
  *a1 = a6;
  a1[1] = v8;
  if (&_swift_coroFrameAlloc)
  {
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v9 = malloc(*(v8 + 64));
  }

  a1[2] = v9;
  CircularBuffer.subscript.getter(a6, v9);
  return sub_1003C82F4;
}

void sub_1003C82F4(void *a1)
{
  v1 = a1[2];
  (*(a1[1] + 8))(v1, *a1);

  free(v1);
}

uint64_t sub_1003C8340@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X8>)
{
  v5 = *(a2 + 16);
  v6 = 0x100000000000000;
  if (*(a1 + 7))
  {
    v7 = 0x100000000000000;
  }

  else
  {
    v7 = 0;
  }

  if ((*(a1 + 15) & 1) == 0)
  {
    v6 = 0;
  }

  *a3 = sub_1003CD0BC(*a1 | (*(a1 + 2) << 32) | (*(a1 + 6) << 48) | v7, a1[2] | (*(a1 + 6) << 32) | (*(a1 + 14) << 48) | v6, *v3, *(v3 + 8), *(v3 + 16));
  a3[1] = v8;
  a3[2] = v9;
}

uint64_t sub_1003C843C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a2 + 7);
  *(a2 + 6);
  *(a2 + 4);
  sub_1003CD228(a1, *a2, a3);
  v5 = *(*(*(a3 + 16) - 8) + 8);

  return v5(a1);
}

void (*sub_1003C84D0(void *a1, uint64_t a2, uint64_t a3))(uint64_t **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x38uLL);
  }

  v8 = v7;
  *a1 = v7;
  *v7 = v3;
  v7[1] = a3;
  v9 = *(a3 + 16);
  v7[2] = v9;
  v10 = *(v9 - 8);
  v7[3] = v10;
  v11 = *(v10 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v7[4] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v7[4] = malloc(*(v10 + 64));
    v12 = malloc(v11);
  }

  v8[5] = v12;
  *(v8 + 12) = *a2;
  *(v8 + 26) = *(a2 + 4);
  *(v8 + 54) = *(a2 + 6);
  *(v8 + 55) = *(a2 + 7);
  v13 = *v3;
  CircularBuffer.subscript.getter(v9, v12);
  return sub_1003C8628;
}

void sub_1003C8628(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 12);
  v4 = (*a1)[4];
  v5 = (*a1)[5];
  v6 = (*a1)[2];
  v7 = (*a1)[3];
  v8 = **a1;
  v9 = (*a1)[1];
  *(*a1 + 55);
  *(*a1 + 54);
  *(*a1 + 26);
  if (a2)
  {
    (*(v7 + 16))((*a1)[4], v5, v6);
    sub_1003CD228(v4, v3, v9);
    v10 = *(v7 + 8);
    v10(v4, v6);
    v10(v5, v6);
  }

  else
  {
    sub_1003CD228((*a1)[5], v3, v9);
    (*(v7 + 8))(v5, v6);
  }

  free(v5);
  free(v4);

  free(v2);
}

uint64_t sub_1003C8748(uint64_t *a1, unsigned int *a2, void *a3)
{
  v3 = *a1;
  v4 = 0x100000000000000;
  if (*(a2 + 7))
  {
    v5 = 0x100000000000000;
  }

  else
  {
    v5 = 0;
  }

  if ((*(a2 + 15) & 1) == 0)
  {
    v4 = 0;
  }

  sub_1003CD4C0(*a1, a1[1], a1[2], *a2 | (*(a2 + 2) << 32) | (*(a2 + 6) << 48) | v5, a2[2] | (*(a2 + 6) << 32) | (*(a2 + 14) << 48) | v4, a3);
}

uint64_t CircularBuffer.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  sub_1003CD4C0(a1, a2, a3, a4 & 0x1FFFFFFFFFFFFFFLL, a5 & 0x1FFFFFFFFFFFFFFLL, a6);
}

void (*sub_1003C881C(uint64_t *a1, unsigned int *a2, uint64_t a3))(uint64_t **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x38uLL);
  }

  v8 = v7;
  *a1 = v7;
  *(v7 + 24) = v3;
  *(v7 + 32) = a3;
  v9 = *a2;
  v10 = *(a2 + 2);
  *(v7 + 48) = v10;
  v11 = *(a2 + 6);
  *(v7 + 52) = v11;
  v12 = *(a2 + 7);
  *(v7 + 53) = v12;
  v13 = a2[2];
  *(v7 + 40) = v9;
  *(v7 + 44) = v13;
  v14 = *(a2 + 6);
  *(v7 + 50) = v14;
  v15 = *(a2 + 14);
  v16 = v9 | (v10 << 32);
  *(v7 + 54) = v15;
  v17 = *(a2 + 15);
  v18 = v16 | (v11 << 48);
  *(v7 + 55) = v17;
  if (v12)
  {
    v19 = 0x100000000000000;
  }

  else
  {
    v19 = 0;
  }

  v20 = v13 | (v14 << 32) | (v15 << 48);
  if (v17)
  {
    v21 = 0x100000000000000;
  }

  else
  {
    v21 = 0;
  }

  v22 = *(a3 + 16);
  *v7 = sub_1003CD0BC(v18 | v19, v20 | v21, *v3, *(v3 + 8), *(v3 + 16));
  *(v8 + 8) = v23;
  *(v8 + 16) = v24;

  return sub_1003C8924;
}

void sub_1003C8924(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = **a1;
  v4 = (*a1)[1];
  v5 = *(*a1 + 25);
  v6 = *(*a1 + 24);
  v7 = (*a1)[3];
  v8 = (*a1)[4];
  v9 = (*a1)[2];
  if (*(*a1 + 53))
  {
    v10 = 0x100000000000000;
  }

  else
  {
    v10 = 0;
  }

  v11 = v10 | (*(*a1 + 52) << 48) | *(*a1 + 10);
  v12 = v11 | (v6 << 32);
  if (*(*a1 + 55))
  {
    v13 = 0x100000000000000;
  }

  else
  {
    v13 = 0;
  }

  v14 = v13 | (*(*a1 + 54) << 48) | *(*a1 + 11);
  v15 = v14 | (v5 << 32);
  v16 = **a1;
  if (a2)
  {

    sub_1003CD4C0(v17, v4, v9, v12, v15, v8);

    v18 = *v2;
  }

  else
  {
    sub_1003CD4C0(v16, v4, v9, v11 | (v6 << 32), v14 | (v5 << 32), v8);
  }

  free(v2);
}

void (*CircularBuffer.subscript.modify(void *a1, uint64_t a2, uint64_t a3, uint64_t a4))(uint64_t **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v9 = malloc(0x38uLL);
  }

  v10 = v9;
  *a1 = v9;
  v9[5] = a4;
  v9[6] = v4;
  v9[3] = a2;
  v9[4] = a3;
  v11 = *(a4 + 16);
  *v9 = sub_1003CD0BC(a2 & 0x1FFFFFFFFFFFFFFLL, a3 & 0x1FFFFFFFFFFFFFFLL, *v4, *(v4 + 8), *(v4 + 16));
  v10[1] = v12;
  v10[2] = v13;

  return sub_1003C8AC8;
}

void sub_1003C8AC8(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = **a1;
  v4 = (*a1)[1];
  v6 = (*a1)[5];
  v5 = (*a1)[6];
  v8 = (*a1)[3];
  v7 = (*a1)[4];
  v9 = (*a1)[2];
  if (a2)
  {
    v10 = **a1;

    sub_1003CD4C0(v11, v4, v9, v8 & 0x1FFFFFFFFFFFFFFLL, v7 & 0x1FFFFFFFFFFFFFFLL, v6);

    v12 = *v2;
  }

  else
  {
    sub_1003CD4C0(**a1, v4, v9, v8 & 0x1FFFFFFFFFFFFFFLL, v7 & 0x1FFFFFFFFFFFFFFLL, v6);
  }

  free(v2);
}

uint64_t sub_1003C8C00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *v2;
  v5 = v2[1];
  v6 = v2[2];
  *a2 = v4;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6;
  v7 = *(a1 + 16);

  v9 = CircularBuffer.startIndex.getter(v8, v5, v6);

  *(a2 + 24) = v9;
  *(a2 + 28) = WORD2(v9);
  *(a2 + 30) = BYTE6(v9);
  *(a2 + 31) = HIBYTE(v9) != 0;
  return result;
}

uint64_t sub_1003C8C8C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return Collection.underestimatedCount.getter(a1, WitnessTable);
}

uint64_t sub_1003C8CE0()
{
  swift_getWitnessTable();
  v1 = sub_100458B50();
  v2 = *v0;

  return v1;
}

uint64_t sub_1003C8D3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  CircularBuffer._copyContents(initializing:)(a2, a3, *v4, *(v4 + 8), *(v4 + 16), *(a4 + 16), &v14);
  v13 = v14;
  v6 = v15;
  v7 = v16;
  v8 = v17;
  v9 = v18;
  v10 = v19;
  v11 = v20;

  *a1 = v13;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 28) = v8;
  *(a1 + 30) = v9;
  *(a1 + 31) = v10;
  return v11;
}

void CircularBuffer.replaceSubrange<A>(_:with:)(unint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v7 = v6;
  v141 = a3;
  v10 = a1;
  v11 = HIDWORD(a1);
  v12 = HIWORD(a1);
  v13 = HIBYTE(a1);
  v161 = HIBYTE(a1);
  v144 = a2;
  v160 = HIBYTE(a2);
  v135 = a4;
  v14 = *(a4 + 16);
  v15 = sub_1004A6374();
  v116 = sub_1004A7134();
  v16 = *(*(v116 - 8) + 64);
  __chkstk_darwin(v116);
  v115 = &v115 - v17;
  v143 = a6;
  v18 = *(a6 + 8);
  v127 = sub_1004A6744();
  v126 = *(v127 - 8);
  v19 = *(v126 + 64);
  __chkstk_darwin(v127);
  v124 = &v115 - v20;
  v125 = sub_1004A6924();
  v21 = *(*(v125 - 8) + 64);
  __chkstk_darwin(v125);
  v123 = &v115 - v22;
  v138 = v15;
  v145 = *(v15 - 8);
  v23 = *(v145 + 64);
  __chkstk_darwin(v24);
  v132 = &v115 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v131 = &v115 - v27;
  v130 = *(a5 - 1);
  v28 = *(v130 + 64);
  __chkstk_darwin(v29);
  v129 = &v115 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v136 = v18;
  v142 = a5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v128 = *(AssociatedTypeWitness - 8);
  v31 = *(v128 + 64);
  __chkstk_darwin(AssociatedTypeWitness);
  v146 = &v115 - v32;
  v33 = type metadata accessor for CircularBuffer.Index();
  LODWORD(v156) = v10;
  v148 = v11;
  WORD2(v156) = v11;
  v34 = v12;
  BYTE6(v156) = v12;
  HIBYTE(v156) = HIBYTE(v10) & 1;
  v35 = *v7;
  v36 = v7[1];
  v137 = v7;
  v37 = v7[2];
  v38 = v35;
  v39 = v14;
  v40 = CircularBuffer.startIndex.getter(v35, v36, v37);
  LODWORD(v149) = v40;
  WORD2(v149) = WORD2(v40);
  BYTE6(v149) = BYTE6(v40);
  HIBYTE(v149) = HIBYTE(v40) != 0;
  WitnessTable = swift_getWitnessTable();
  if ((sub_1004A5674() & 1) == 0)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v122 = HIBYTE(v10) & 1;
  v42 = v160;
  LODWORD(v156) = v144;
  v120 = HIDWORD(v144);
  WORD2(v156) = WORD2(v144);
  v121 = HIWORD(v144);
  BYTE6(v156) = BYTE6(v144);
  HIBYTE(v156) = v160;
  v140 = v36;
  v43 = v36;
  v44 = v39;
  v45 = CircularBuffer.endIndex.getter(v38, v43, v37);
  LODWORD(v149) = v45;
  WORD2(v149) = WORD2(v45);
  BYTE6(v149) = BYTE6(v45);
  HIBYTE(v149) = HIBYTE(v45) != 0;
  if ((sub_1004A5684() & 1) == 0)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v46 = v37;
  v133 = WitnessTable;
  v134 = v33;
  if (v13)
  {
    v47 = 0x100000000000000;
  }

  else
  {
    v47 = 0;
  }

  v48 = v47 & 0xFF00000000000000 | v10 & 0xFFFFFFFFFFFFFFLL;
  v119 = v42;
  if (v42)
  {
    v49 = 0x100000000000000;
  }

  else
  {
    v49 = 0;
  }

  v118 = v48;
  v117 = v49 & 0xFF00000000000000 | v144 & 0xFFFFFFFFFFFFFFLL;
  v50 = CircularBuffer.distance(from:to:)(v48, v117);
  v51 = v141;
  v52 = v142;
  v53 = v44;
  if (v50 == sub_1004A5E84())
  {
    (*(v130 + 16))(v129, v51, v52);
    sub_1004A5AC4();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v55 = v131;
    v144 = AssociatedConformanceWitness;
    sub_1004A6414();
    v56 = v55;
    v57 = v132;
    v58 = *(v44 - 1);
    v59 = *(v58 + 48);
    v143 = v58 + 48;
    v142 = v59;
    v60 = v59(v56, 1, v44);
    v61 = v137;
    v62 = v138;
    if (v60 == 1)
    {
LABEL_14:
      (*(v128 + 8))(v146, AssociatedTypeWitness);
      return;
    }

    v139 = v145 + 40;
    v140 = *(v58 + 32);
    v141 = v58 + 32;
    while (1)
    {
      v140(v57, v56, v53);
      (*(v58 + 56))(v57, 0, 1, v53);
      sub_1004A6904();
      sub_1004A6874();
      if (*(*v61 + 16) <= v10)
      {
        break;
      }

      (*(v145 + 40))(*v61 + ((*(v145 + 80) + 32) & ~*(v145 + 80)) + *(v145 + 72) * v10, v57, v62);
      v63 = CircularBuffer.index(_:offsetBy:)(v10, 1, *v61, v61[1], v61[2]);
      v10 = v63 | ((HIBYTE(v63) != 0) << 56);
      v148 = HIDWORD(v10);
      sub_1004A6414();
      if (v142(v56, 1, v53) == 1)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
    goto LABEL_40;
  }

  v139 = v38;
  v64 = v38;
  v65 = v140;
  AssociatedTypeWitness = v46;
  v146 = v44;
  if (v50 == CircularBuffer.count.getter(v64, v140, v46) && (sub_1004A5E94() & 1) != 0)
  {
    v66 = 0x100000000000000;
    if (v161)
    {
      v67 = 0x100000000000000;
    }

    else
    {
      v67 = 0;
    }

    if (!v160)
    {
      v66 = 0;
    }

    CircularBuffer.removeSubrange(_:)(v67 | v10 & 0xFFFFFFFFFFFFFFLL, v66 | v144 & 0xFFFFFFFFFFFFFFLL, v135);
  }

  else
  {
    sub_1004A5C54();
    v159 = sub_1004A6844();
    v68 = CircularBuffer.count.getter(v139, v65, AssociatedTypeWitness);
    v69 = sub_1004A5E84();
    v70 = v68 + v69;
    if (__OFADD__(v68, v69))
    {
LABEL_42:
      __break(1u);
      goto LABEL_43;
    }

    v71 = __OFSUB__(v70, v50);
    v72 = v70 - v50;
    if (v71)
    {
LABEL_43:
      __break(1u);
      goto LABEL_44;
    }

    v73 = v72 + 1;
    if (__OFADD__(v72, 1))
    {
LABEL_44:
      __break(1u);
LABEL_45:
      __break(1u);
      goto LABEL_46;
    }

    v74 = v146;
    sub_1004A6374();
    v75 = sub_1004A68C4();
    if (v73)
    {
      v76 = __clz(v73 - 1);
      v77 = v140;
      v78 = v148;
      if (v76)
      {
        v76 = 1 << -v76;
      }

      v79 = v139;
    }

    else
    {
      v76 = 1;
      v79 = v139;
      v77 = v140;
      v78 = v148;
    }

    if (v76 <= v75)
    {
      v80 = v75;
    }

    else
    {
      v80 = v76;
    }

    v81 = sub_1004A6904();
    v131 = v80;
    v148 = v81;
    sub_1004A6854(v80);
    v82 = CircularBuffer.startIndex.getter(v79, v77, AssociatedTypeWitness);
    LODWORD(v156) = v82;
    WORD2(v156) = WORD2(v82);
    BYTE6(v156) = BYTE6(v82);
    HIBYTE(v156) = HIBYTE(v82) != 0;
    LODWORD(v149) = v10;
    WORD2(v149) = v78;
    BYTE6(v149) = v34;
    HIBYTE(v149) = v122;
    if ((sub_1004A5684() & 1) == 0)
    {
      goto LABEL_45;
    }

    v149 = sub_1003CD0BC(v82 & 0xFFFFFFFFFFFFFFLL | ((HIBYTE(v82) != 0) << 56), v118, v79, v77, AssociatedTypeWitness);
    *&v150 = v83;
    *(&v150 + 1) = v84;
    v85 = swift_getWitnessTable();
    sub_1004A5B44();
    v152 = v154;
    v153 = v155;
    v86 = swift_allocObject();
    v87 = v142;
    v86[2] = v74;
    v86[3] = v87;
    v88 = v143;
    v86[4] = v143;
    v89 = swift_allocObject();
    v89[2] = v74;
    v89[3] = v87;
    v89[4] = v88;
    v89[5] = sub_1003CDBA0;
    v89[6] = v86;
    v90 = sub_1004A6744();
    v91 = swift_getWitnessTable();
    v129 = v90;
    v92 = v138;
    v128 = v91;
    sub_1004A6AD4();

    v149 = v156;
    v150 = v157;
    v151 = v158;
    v130 = v85;
    v93 = sub_1004A6924();
    v94 = swift_getWitnessTable();
    v95 = v139;
    v122 = v93;
    v118 = v94;
    sub_1004A68D4();
    v96 = v124;
    sub_1004A5B44();
    v97 = swift_allocObject();
    v97[2] = v74;
    v97[3] = v87;
    v97[4] = v88;
    v98 = swift_allocObject();
    v98[2] = v74;
    v98[3] = v87;
    v98[4] = v88;
    v98[5] = sub_1003CD600;
    v98[6] = v97;
    v99 = v127;
    swift_getWitnessTable();
    sub_1004A6AD4();

    (*(v126 + 8))(v96, v99);
    swift_getWitnessTable();
    sub_1004A68D4();
    LODWORD(v156) = v144;
    WORD2(v156) = v120;
    BYTE6(v156) = v121;
    HIBYTE(v156) = v119;
    v100 = v140;
    v101 = CircularBuffer.endIndex.getter(v95, v140, AssociatedTypeWitness);
    LODWORD(v149) = v101;
    WORD2(v149) = WORD2(v101);
    BYTE6(v149) = BYTE6(v101);
    HIBYTE(v149) = HIBYTE(v101) != 0;
    if ((sub_1004A5684() & 1) == 0)
    {
LABEL_46:
      __break(1u);
      return;
    }

    v102 = v100;
    v103 = v92;
    v149 = sub_1003CD0BC(v117, v101 & 0xFFFFFFFFFFFFFFLL | ((HIBYTE(v101) != 0) << 56), v95, v102, AssociatedTypeWitness);
    *&v150 = v104;
    *(&v150 + 1) = v105;
    sub_1004A5B44();
    v152 = v154;
    v153 = v155;
    v106 = swift_allocObject();
    v107 = v142;
    v106[2] = v74;
    v106[3] = v107;
    v108 = v143;
    v106[4] = v143;
    v109 = swift_allocObject();
    v109[2] = v74;
    v109[3] = v107;
    v109[4] = v108;
    v109[5] = sub_1003CDBA0;
    v109[6] = v106;
    sub_1004A6AD4();

    v149 = v156;
    v150 = v157;
    v151 = v158;
    sub_1004A68D4();
    v110 = &v131[-sub_1004A68C4()];
    if (v110 >= 1)
    {
      v111 = v132;
      (*(*(v74 - 1) + 56))(v132, 1, 1, v74);
      sub_1004A6804();
      (*(v145 + 8))(v111, v103);
      swift_getWitnessTable();
      sub_1004A68D4();
    }

    v112 = v159;

    v113 = v137;
    *v137 = v112;
    v113[1] = 0;
    v114 = sub_1004A68C4();

    v113[2] = v114 - v110;
  }
}

unint64_t sub_1003C9EAC@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(unint64_t, void, void, void, void)@<X3>, uint64_t a4@<X8>)
{
  v6 = *v4;
  v7 = 0x100000000000000;
  if (!*(a1 + 7))
  {
    v7 = 0;
  }

  result = a3(v7 | (*(a1 + 6) << 48) | (*(a1 + 2) << 32) | *a1, *v4, v4[1], v4[2], *(a2 + 16));
  *a4 = result;
  *(a4 + 4) = WORD2(result);
  *(a4 + 6) = BYTE6(result);
  *(a4 + 7) = HIBYTE(result) != 0;
  return result;
}

unint64_t sub_1003C9F4C(unsigned int *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(unint64_t, void, void, void, void))
{
  v6 = 0x100000000000000;
  if (!*(a1 + 7))
  {
    v6 = 0;
  }

  result = a4(v6 | (*(a1 + 6) << 48) | (*(a1 + 2) << 32) | *a1, *v4, v4[1], v4[2], *(a2 + 16));
  *a1 = result;
  *(a1 + 2) = WORD2(result);
  *(a1 + 6) = BYTE6(result);
  *(a1 + 7) = HIBYTE(result) != 0;
  return result;
}

unint64_t sub_1003C9FD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *(a3 + 16);
  *(a1 + 7);
  *(a1 + 6);
  *(a1 + 4);
  result = CircularBuffer.index(_:offsetBy:)(*a1, a2, *v4, v4[1], v4[2]);
  *a4 = result;
  *(a4 + 4) = WORD2(result);
  *(a4 + 6) = BYTE6(result);
  *(a4 + 7) = HIBYTE(result) != 0;
  return result;
}

uint64_t sub_1003CA054()
{
  swift_getWitnessTable();

  return sub_1004A5E04();
}

unint64_t sub_1003CA0D8(unsigned int *a1, unsigned int *a2, uint64_t a3)
{
  v4 = *v3;
  v5 = *(a3 + 16);
  if (*(a1 + 7))
  {
    v6 = 0x100000000000000;
  }

  else
  {
    v6 = 0;
  }

  if (*(a2 + 7))
  {
    v7 = 0x100000000000000;
  }

  else
  {
    v7 = 0;
  }

  v8 = *v3;
  return CircularBuffer.distance(from:to:)(v6 | (*(a1 + 6) << 48) | (*(a1 + 2) << 32) | *a1, v7 | (*(a2 + 6) << 48) | (*(a2 + 2) << 32) | *a2);
}

void CircularBuffer.init(initialCapacity:)(unint64_t a1, uint64_t a2)
{
  v4 = sub_1004A6374();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v13 - v8;
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (HIDWORD(a1))
  {
LABEL_11:
    __break(1u);
    return;
  }

  v10 = __clz(a1 - 1);
  if (v10)
  {
    v11 = (1 << -v10);
  }

  else
  {
    v11 = 0;
  }

  if (a1)
  {
    v12 = v11;
  }

  else
  {
    v12 = 1;
  }

  (*(*(a2 - 8) + 56))(v9, 1, 1, a2, v7);
  sub_1003CD3BC(v9, v12, v4);
  (*(v5 + 8))(v9, v4);
}

void CircularBuffer.append(_:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = sub_1004A6374();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v10 = &v16 - v9;
  v11 = v2[2];
  v12 = *(v4 - 8);
  (*(v12 + 16))(&v16 - v9, a1, v4, v8);
  (*(v12 + 56))(v10, 0, 1, v4);
  sub_1004A6904();
  sub_1004A6874();
  if ((v11 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (*(*v2 + 16) <= v11)
  {
LABEL_7:
    __break(1u);
    return;
  }

  (*(v6 + 40))(*v2 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v11, v10, v5);
  v13 = *v2;
  v14 = v2[2] + 1;
  v15 = (sub_1004A68C4() - 1) & v14;
  v2[2] = v15;
  if (v2[1] == v15)
  {
    CircularBuffer._doubleCapacity()();
  }
}

Swift::Void __swiftcall CircularBuffer._doubleCapacity()()
{
  v2 = v1;
  v3 = *(v0 + 16);
  v4 = sub_1004A6374();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v23 = v17 - v7;
  v8 = sub_1004A7134();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = v17 - v10;
  v13 = *v2;
  v12 = v2[1];
  v22 = v2[2];
  v14 = 2 * sub_1004A68C4();
  sub_1004A5C54();
  v28 = sub_1004A6844();
  if (v14 < 1)
  {
    __break(1u);
  }

  else
  {
    sub_1004A6904();
    v19 = v11;
    v21 = v8;
    v17[1] = v14;
    sub_1004A6854(v14);
    *&v24 = v12;
    sub_10000C9C0(&qword_1005DBFD8, &qword_1005007B0);
    v18 = v5;
    v17[0] = v3;
    swift_getWitnessTable();
    v20 = v13;
    sub_10000DF44(&qword_1005DBFE0, &qword_1005DBFD8, &qword_1005007B0);
    sub_1004A56C4();
    v24 = v26;
    v25 = v27;
    sub_1004A64F4();
    swift_getWitnessTable();
    sub_1004A68D4();
    v15 = v23;
    *&v24 = v22;
    sub_10000C9C0(&qword_1005DBFE8, &qword_1005007B8);
    sub_10000DF44(qword_1005DBFF0, &qword_1005DBFE8, &qword_1005007B8);
    sub_1004A56C4();
    v24 = v26;
    v25 = v27;
    sub_1004A68D4();
    v16 = sub_1004A68C4();
    (*(*(v17[0] - 8) + 56))(v15, 1, 1);
    sub_1004A6804();
    (*(v18 + 8))(v15, v4);
    swift_getWitnessTable();
    sub_1004A68D4();

    v2[1] = 0;
    v2[2] = v16;
    *v2 = v28;
  }
}

void CircularBuffer.prepend(_:)(uint64_t a1, uint64_t a2)
{
  v20[1] = a2;
  v4 = *(a2 + 16);
  v5 = sub_1004A6374();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = v20 - v8;
  v10 = *v2;
  v11 = v2[2];
  v12 = v2[1] - 1;
  v13 = sub_1004A68C4() - 1;
  v14 = *(v4 - 8);
  (*(v14 + 16))(v9, a1, v4);
  (*(v14 + 56))(v9, 0, 1, v4);
  sub_1004A6904();
  sub_1004A6874();
  v15 = v13 & v12;
  if ((v13 & v12) < 0 != v16)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (*(*v2 + 16) <= v15)
  {
LABEL_7:
    __break(1u);
    return;
  }

  (*(v6 + 40))(*v2 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v15, v9, v5);
  v17 = *v2;
  v18 = v2[1] - 1;
  v19 = (sub_1004A68C4() - 1) & v18;
  v2[1] = v19;
  if (v19 == v11)
  {
    CircularBuffer._doubleCapacity()();
  }
}

uint64_t CircularBuffer.capacity.getter()
{
  sub_1004A6374();

  return sub_1004A68C4();
}

Swift::Bool __swiftcall CircularBuffer.verifyInvariants()()
{
  v3 = v2;
  v4 = v1;
  v5 = v0;
  v6 = sub_1004A6374();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v10 = &v16 - v9;
  if (v5 == v4)
  {
    return 1;
  }

  v12 = (v8 + 8);
  do
  {
    sub_1004A6914();
    v13 = (*(*(v3 - 8) + 48))(v10, 1, v3);
    (*v12)(v10, v6);
    v14 = v13 == 1;
    v11 = v13 != 1;
    if (v14)
    {
      break;
    }

    v5 = (sub_1004A68C4() - 1) & (v5 + 1);
  }

  while (v5 != v4);
  return v11;
}

Swift::Void __swiftcall CircularBuffer._resizeAndFlatten(newCapacity:)(Swift::Int newCapacity)
{
  v3 = v2;
  v5 = *(v1 + 16);
  v6 = sub_1004A6374();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = v24 - v9;
  v11 = sub_1004A7134();
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11);
  v14 = v24 - v13;
  sub_1004A5C54();
  v33 = sub_1004A6844();
  if (newCapacity < 1)
  {
    __break(1u);
  }

  else
  {
    v28 = v14;
    sub_1004A6904();
    v27 = newCapacity;
    sub_1004A6854(newCapacity);
    v15 = v3[1];
    v16 = v3[2];
    if (v16 >= v15)
    {
      sub_1003CD18C(v15, v3[2], *v3, v6);
      *&v31 = v17;
      *(&v31 + 1) = v18;
      *&v32 = v19;
      *(&v32 + 1) = v20;
      sub_1004A64F4();
      swift_unknownObjectRetain();
      swift_getWitnessTable();
    }

    else
    {
      *&v29 = v3[1];
      v26 = v11;
      sub_10000C9C0(&qword_1005DBFD8, &qword_1005007B0);
      v25 = v7;
      v24[1] = swift_getWitnessTable();
      sub_10000DF44(&qword_1005DBFE0, &qword_1005DBFD8, &qword_1005007B0);
      sub_1004A56C4();
      v29 = v31;
      v30 = v32;
      sub_1004A64F4();
      swift_getWitnessTable();
      sub_1004A68D4();
      *&v29 = v16;
      sub_10000C9C0(&qword_1005DBFE8, &qword_1005007B8);
      sub_10000DF44(qword_1005DBFF0, &qword_1005DBFE8, &qword_1005007B8);
      sub_1004A56C4();
      v29 = v31;
      v30 = v32;
      v7 = v25;
    }

    sub_1004A68D4();
    v21 = sub_1004A68C4();
    (*(*(v5 - 8) + 56))(v10, 1, 1, v5);
    sub_1004A6804();
    (*(v7 + 8))(v10, v6);
    swift_getWitnessTable();
    sub_1004A68D4();
    v3[1] = 0;
    v3[2] = v21;
    v22 = v33;
    v23 = *v3;

    *v3 = v22;
  }
}