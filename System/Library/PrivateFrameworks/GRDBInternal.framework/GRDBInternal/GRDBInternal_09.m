uint64_t sub_1B21B5F04(uint64_t result)
{
  v1 = 0;
  v2 = 0;
  v3 = MEMORY[0x1E69E7CC0];
  v4 = *(result + 16);
  v5 = (MEMORY[0x1E69E7CC0] + 32);
  for (i = (result + 40); ; i += 2)
  {
    if (v4 == v2)
    {
      v19 = v3[3];
      if (v19 >= 2)
      {
        v20 = v19 >> 1;
        v18 = __OFSUB__(v20, v1);
        v21 = v20 - v1;
        if (v18)
        {
          goto LABEL_27;
        }

        v3[2] = v21;
      }

      return v3;
    }

    v7 = *(i - 1);
    v8 = *i;
    if (v1)
    {
      v9 = *i;

      v10 = v3;
    }

    else
    {
      v11 = v3[3];
      if (((v11 >> 1) + 0x4000000000000000) < 0)
      {
        goto LABEL_26;
      }

      v12 = v11 & 0xFFFFFFFFFFFFFFFELL;
      v13 = v12 <= 1 ? 1 : v12;
      sub_1B21619D8(&qword_1EB7A2180, &unk_1B225B0D0);
      v10 = swift_allocObject();
      v14 = (j__malloc_size(v10) - 32) / 24;
      v10[2] = v13;
      v10[3] = 2 * v14;
      v15 = v10 + 4;
      v16 = v3[3] >> 1;
      v5 = &v10[3 * v16 + 4];
      v1 = (v14 & 0x7FFFFFFFFFFFFFFFLL) - v16;
      if (v3[2])
      {
        if (v10 != v3 || v15 >= &v3[3 * v16 + 4])
        {
          memmove(v15, v3 + 4, 24 * v16);
        }

        v3[2] = 0;
      }

      else
      {
      }
    }

    v18 = __OFSUB__(v1--, 1);
    if (v18)
    {
      break;
    }

    *v5 = v2;
    v5[1] = v7;
    v5[2] = v8;
    v5 += 3;
    ++v2;
    v3 = v10;
  }

  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

_BYTE *storeEnumTagSinglePayload for EmptyRowAdapter(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

__n128 sub_1B21B6200(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_1B21B6214(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
      if (v2 >= 0xFFFFFFFF)
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

uint64_t sub_1B21B6254(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t sub_1B21B62B8(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_1B21B62F8(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_1B21B6344(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 80))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
      if (v2 >= 0xFFFFFFFF)
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

uint64_t sub_1B21B6384(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t sub_1B21B63E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v12 = &type metadata for _LayoutedColumnMapping;
  v13 = &protocol witness table for _LayoutedColumnMapping;
  v10 = a2;
  v11 = a3;
  sub_1B214D38C(&v10, v9);
  v8 = a1;
  v9[5] = v10;
  v9[6] = v11;
  type metadata accessor for Row();
  v4 = swift_allocObject();
  sub_1B21B65C0(&v8, v7);

  v5 = sub_1B2184130(v7, v4);
  sub_1B21B65F8(&v8);
  sub_1B2113208(&v10);
  return v5;
}

uint64_t sub_1B21B64A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v18[3] = a4;
  v18[4] = a5;
  sub_1B212FF14(v18);
  sub_1B2111808(a4);
  (*(v8 + 32))();
  sub_1B214D38C(v18, v15);
  v16 = a1;
  sub_1B214D38C(v15, v17);
  v9 = *(a5 + 8);
  v10 = sub_1B2115C78();
  v11(v10);
  *&v17[40] = v15[4];
  sub_1B2113208(v15);
  v12 = swift_allocObject();
  sub_1B21B65C0(&v16, v15);
  v13 = sub_1B2184130(v15, v12);
  sub_1B21B65F8(&v16);
  sub_1B2113208(v18);
  return v13;
}

uint64_t count(_:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  sub_1B21139A0(a1, v3);
  (*(v4 + 8))(__src, v3, v4);
  memcpy(v6, __src, sizeof(v6));
  sub_1B2178B94(a2);
  return sub_1B213A5CC(__src);
}

void *sub_1B21B670C@<X0>(void *a1@<X0>, char a2@<W1>, void *a3@<X8>)
{
  v6 = a1[3];
  v5 = a1[4];
  v7 = sub_1B21139A0(a1, v6);
  sub_1B2115750(v7, *(v5 + 8));
  v8(v11, v6);
  sub_1B21619D8(&qword_1EB7A0E70, &unk_1B225D330);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1B22546B0;
  memcpy((v9 + 32), v11, 0xA3uLL);
  __src[0] = 0x544E554F43;
  __src[1] = 0xE500000000000000;
  LOBYTE(__src[2]) = 1;
  BYTE1(__src[2]) = a2;
  __src[3] = v9;
  sub_1B2179374(__src);
  return memcpy(a3, __src, 0xA3uLL);
}

void *?? infix(_:_:)@<X0>(void *a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  sub_1B21619D8(&qword_1EB7A0E70, &unk_1B225D330);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1B225B140;
  v7 = a1[3];
  v8 = a1[4];
  v9 = sub_1B21139A0(a1, v7);
  sub_1B2115750(v9, *(v8 + 8));
  v10(v7);
  v11 = a2[3];
  v12 = a2[4];
  sub_1B21139A0(a2, v11);
  (*(v12 + 8))(v11, v12);
  __src[0] = 0x4C4C554E4649;
  __src[1] = 0xE600000000000000;
  LOWORD(__src[2]) = 0;
  __src[3] = v6;
  sub_1B2179374(__src);
  return memcpy(a3, __src, 0xA3uLL);
}

void *sub_1B21B6950@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unsigned __int8 a4@<W3>, void *a5@<X8>)
{
  sub_1B21619D8(&qword_1EB7A0E70, &unk_1B225D330);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1B22546B0;
  v11 = a1[3];
  v12 = a1[4];
  v13 = sub_1B21139A0(a1, v11);
  sub_1B2115750(v13, *(v12 + 8));
  v14(v11);
  __src[0] = a2;
  __src[1] = a3;
  LOWORD(__src[2]) = a4;
  __src[3] = v10;
  sub_1B2179374(__src);
  return memcpy(a5, __src, 0xA3uLL);
}

uint64_t sub_1B21B6A78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t *a4@<X3>, void *a5@<X8>)
{
  if (*a3 != -1)
  {
    swift_once();
  }

  v9 = *a4;
  sub_1B21619D8(&qword_1EB7A1168, qword_1B225ECD0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B22546B0;
  v11 = *(a2 + 8);
  v12 = *(v11 + 8);
  *(inited + 56) = &type metadata for SQLExpression;
  *(inited + 64) = &protocol witness table for SQLExpression;
  *(inited + 32) = swift_allocObject();
  v12(a1, v11);
  DatabaseFunction.callAsFunction(_:)(inited, a5);
  swift_setDeallocating();
  return sub_1B21389D4(&qword_1EB7A1170, &qword_1B2254990);
}

void *SQLDateModifier.sqlExpression.getter@<X0>(void *a1@<X8>)
{
  v5 = *v1;
  v6 = *(v1 + 8);
  __src[0] = sub_1B21B6C84();
  __src[1] = v3;
  LOBYTE(__src[2]) = 2;
  sub_1B2127D7C(__src);
  return memcpy(a1, __src, 0xA3uLL);
}

uint64_t sub_1B21B6C84()
{
  switch(*(v0 + 8))
  {
    case 1:
      v10 = *v0;
      v13 = sub_1B2252FD0();
      v2 = 0x736574756E696D20;
      goto LABEL_8;
    case 2:
      v8 = *v0;
      v13 = sub_1B2252FD0();
      v4 = 1970235424;
      goto LABEL_10;
    case 3:
      v9 = *v0;
      v13 = sub_1B2252FD0();
      v2 = 0x7379616420;
      v3 = 0xE500000000000000;
      goto LABEL_11;
    case 4:
      v7 = *v0;
      v13 = sub_1B2252FD0();
      v2 = 0x7368746E6F6D20;
      v3 = 0xE700000000000000;
      goto LABEL_11;
    case 5:
      v11 = *v0;
      v13 = sub_1B2252FD0();
      v4 = 1634040096;
LABEL_10:
      v2 = v4 & 0xFFFF0000FFFFFFFFLL | 0x737200000000;
      v3 = 0xE600000000000000;
      goto LABEL_11;
    case 6:
      v13 = 0x207961646B656577;
      v12 = *v0;
      v6 = sub_1B2252FD0();
      MEMORY[0x1B2741EB0](v6);

      return v13;
    case 7:
      result = 0x666F207472617473;
      switch(*v0)
      {
        case 3:
          result = 0x636F706578696E75;
          break;
        case 4:
          result = 0x6D69746C61636F6CLL;
          break;
        case 5:
          result = 6517877;
          break;
        default:
          return result;
      }

      return result;
    default:
      v1 = *v0;
      v13 = 0;
      sub_1B22527D0();
      v2 = 0x73646E6F63657320;
LABEL_8:
      v3 = 0xE800000000000000;
LABEL_11:
      MEMORY[0x1B2741EB0](v2, v3);
      return v13;
  }
}

void *sub_1B21B6F58@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  sub_1B21619D8(&qword_1EB7A0E70, &unk_1B225D330);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1B22546B0;
  v12 = a1[3];
  v11 = a1[4];
  v13 = sub_1B21139A0(a1, v12);
  sub_1B2115750(v13, *(v11 + 8));
  v14(v12);
  v15 = *(a2 + 16);
  v16 = MEMORY[0x1E69E7CC0];
  if (v15)
  {
    v25 = v10;
    v26 = a3;
    v29 = MEMORY[0x1E69E7CC0];
    sub_1B213CA68();
    v16 = v29;
    v17 = (a2 + 40);
    do
    {
      v18 = *v17;
      __dst[0] = *(v17 - 1);
      LOBYTE(__dst[1]) = v18;
      v19 = sub_1B21B6C84();
      v21 = v20;
      v29 = v16;
      v22 = *(v16 + 16);
      if (v22 >= *(v16 + 24) >> 1)
      {
        sub_1B213CA68();
        v16 = v29;
      }

      v17 += 16;
      __src[0] = v19;
      __src[1] = v21;
      LOBYTE(__src[2]) = 2;
      sub_1B2127D7C(__src);
      memcpy(__dst, __src, 0xA3uLL);
      *(v16 + 16) = v22 + 1;
      memcpy((v16 + 168 * v22 + 32), __dst, 0xA3uLL);
      --v15;
    }

    while (v15);
    v10 = v25;
    a3 = v26;
  }

  __dst[0] = v10;
  sub_1B216CB88(v16);
  v23 = __dst[0];
  __dst[0] = a3;
  __dst[1] = a4;
  LOWORD(__dst[2]) = 0;
  __dst[3] = v23;
  sub_1B2179374(__dst);
  return memcpy(a5, __dst, 0xA3uLL);
}

uint64_t sub_1B21B7140()
{
  v1 = *(v0 + 16);
  swift_arrayDestroy();
  v2 = sub_1B2112820();

  return MEMORY[0x1EEE6BDC0](v2, v3, v4);
}

uint64_t sub_1B21B717C()
{
  v1 = *(v0 + 16);
  swift_arrayDestroy();
  v2 = sub_1B2112820();

  return MEMORY[0x1EEE6BDC0](v2, v3, v4);
}

uint64_t sub_1B21B71B8()
{
  v1 = *(v0 + 16);
  swift_arrayDestroy();
  v2 = sub_1B2112820();

  return MEMORY[0x1EEE6BDC0](v2, v3, v4);
}

uint64_t initializeBufferWithCopyOfBuffer for SQLDateModifier(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for SQLDateModifier(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xF9 && *(a1 + 9))
    {
      v2 = *a1 + 248;
    }

    else
    {
      v3 = *(a1 + 8);
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

uint64_t storeEnumTagSinglePayload for SQLDateModifier(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF8)
  {
    *(result + 8) = 0;
    *result = a2 - 249;
    if (a3 >= 0xF9)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF9)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_1B21B728C(uint64_t a1)
{
  if (*(a1 + 8) <= 6u)
  {
    return *(a1 + 8);
  }

  else
  {
    return (*a1 + 7);
  }
}

uint64_t sub_1B21B72A4(uint64_t result, unsigned int a2)
{
  if (a2 >= 7)
  {
    *result = a2 - 7;
    LOBYTE(a2) = 7;
  }

  *(result + 8) = a2;
  return result;
}

void sub_1B21B72D8(void *a1@<X8>)
{
  v2 = MEMORY[0x1E69E7CC0];
  *a1 = MEMORY[0x1E69E7CC0];
  a1[1] = v2;
  sub_1B21B7FBC();
  a1[2] = sub_1B2252190();
  v3._countAndFlagsBits = 36;
  v3._object = 0xE100000000000000;
  v4._countAndFlagsBits = 115;
  v4._object = 0xE100000000000000;
  Inflections.plural(_:options:_:)(v3, 1uLL, v4);
  v5._countAndFlagsBits = 9331;
  v5._object = 0xE200000000000000;
  v6._countAndFlagsBits = 115;
  v6._object = 0xE100000000000000;
  Inflections.plural(_:options:_:)(v5, 1uLL, v6);
  v7._countAndFlagsBits = 0x7365747C7861285ELL;
  v7._object = 0xED00002473692974;
  v8._countAndFlagsBits = 1936011556;
  v8._object = 0xE400000000000000;
  Inflections.plural(_:options:_:)(v7, 1uLL, v8);
  v9._object = 0xEE00247375297269;
  v10._countAndFlagsBits = 6893860;
  v9._countAndFlagsBits = 0x767C706F74636F28;
  v10._object = 0xE300000000000000;
  Inflections.plural(_:options:_:)(v9, 1uLL, v10);
  v11._object = 0xED00002469297269;
  v12._countAndFlagsBits = 6893860;
  v11._countAndFlagsBits = 0x767C706F74636F28;
  v12._object = 0xE300000000000000;
  Inflections.plural(_:options:_:)(v11, 1uLL, v12);
  v13._countAndFlagsBits = 0x737C7361696C6128;
  v13._object = 0xEF24297375746174;
  v14._countAndFlagsBits = 1936011556;
  v14._object = 0xE400000000000000;
  Inflections.plural(_:options:_:)(v13, 1uLL, v14);
  v15._countAndFlagsBits = 0x247329756228;
  v15._object = 0xE600000000000000;
  v16._countAndFlagsBits = 0x7365733124;
  v16._object = 0xE500000000000000;
  Inflections.plural(_:options:_:)(v15, 1uLL, v16);
  v17._countAndFlagsBits = 0x73656F3124;
  v18._countAndFlagsBits = 0xD000000000000014;
  v18._object = 0x80000001B226E1F0;
  v17._object = 0xE500000000000000;
  Inflections.plural(_:options:_:)(v18, 1uLL, v17);
  v19._countAndFlagsBits = 0x6D75295D69745B28;
  v19._object = 0xE900000000000024;
  v20._countAndFlagsBits = 6369572;
  v20._object = 0xE300000000000000;
  Inflections.plural(_:options:_:)(v19, 1uLL, v20);
  v21._countAndFlagsBits = 0x2461295D69745B28;
  v21._object = 0xE800000000000000;
  v22._countAndFlagsBits = 6369572;
  v22._object = 0xE300000000000000;
  Inflections.plural(_:options:_:)(v21, 1uLL, v22);
  v23._countAndFlagsBits = 611543411;
  v23._object = 0xE400000000000000;
  v24._countAndFlagsBits = 7562611;
  v24._object = 0xE300000000000000;
  Inflections.plural(_:options:_:)(v23, 1uLL, v24);
  v25._countAndFlagsBits = 0x73657632243124;
  v26._countAndFlagsBits = 0xD000000000000015;
  v26._object = 0x80000001B226E210;
  v25._object = 0xE700000000000000;
  Inflections.plural(_:options:_:)(v26, 1uLL, v25);
  v27._countAndFlagsBits = 0x24296576696828;
  v27._object = 0xE700000000000000;
  v28._countAndFlagsBits = 7549220;
  v28._object = 0xE300000000000000;
  Inflections.plural(_:options:_:)(v27, 1uLL, v28);
  v29._countAndFlagsBits = 0x7365693124;
  v30._countAndFlagsBits = 0xD000000000000010;
  v30._object = 0x80000001B226E230;
  v29._object = 0xE500000000000000;
  Inflections.plural(_:options:_:)(v30, 1uLL, v29);
  v31._object = 0xED0000242968737CLL;
  v31._countAndFlagsBits = 0x73737C68637C7828;
  v32._countAndFlagsBits = 1936011556;
  v32._object = 0xE400000000000000;
  Inflections.plural(_:options:_:)(v31, 1uLL, v32);
  v33._countAndFlagsBits = 0x736563693124;
  v34._countAndFlagsBits = 0xD000000000000019;
  v34._object = 0x80000001B226E250;
  v33._object = 0xE600000000000000;
  Inflections.plural(_:options:_:)(v34, 1uLL, v33);
  v35._countAndFlagsBits = 0x756F296C7C6D285ELL;
  v35._object = 0xEB00000000246573;
  v36._countAndFlagsBits = 0x6563693124;
  v36._object = 0xE500000000000000;
  Inflections.plural(_:options:_:)(v35, 1uLL, v36);
  v37._countAndFlagsBits = 0x6369296C7C6D285ELL;
  v37._object = 0xEA00000000002465;
  v38._countAndFlagsBits = 0x6563693124;
  v38._object = 0xE500000000000000;
  Inflections.plural(_:options:_:)(v37, 1uLL, v38);
  v39._countAndFlagsBits = 0x2429786F285ELL;
  v40._countAndFlagsBits = 1852125476;
  v39._object = 0xE600000000000000;
  v40._object = 0xE400000000000000;
  Inflections.plural(_:options:_:)(v39, 1uLL, v40);
  v41._countAndFlagsBits = 0x24296E65786F285ELL;
  v41._object = 0xE800000000000000;
  v42._countAndFlagsBits = 12580;
  v42._object = 0xE200000000000000;
  Inflections.plural(_:options:_:)(v41, 1uLL, v42);
  v43._countAndFlagsBits = 0x24297A69757128;
  v44._countAndFlagsBits = 0x73657A3124;
  v43._object = 0xE700000000000000;
  v44._object = 0xE500000000000000;
  Inflections.plural(_:options:_:)(v43, 1uLL, v44);
  v45._countAndFlagsBits = 0x732961766E616328;
  v45._object = 0xE900000000000024;
  v46._countAndFlagsBits = 0x7365733124;
  v46._object = 0xE500000000000000;
  Inflections.plural(_:options:_:)(v45, 1uLL, v46);
  v47._countAndFlagsBits = 9331;
  v47._object = 0xE200000000000000;
  v48._countAndFlagsBits = 0;
  v48._object = 0xE000000000000000;
  Inflections.singular(_:options:_:)(v47, 1uLL, v48);
  v49._countAndFlagsBits = 0x2429737328;
  v49._object = 0xE500000000000000;
  v50._countAndFlagsBits = 12580;
  v50._object = 0xE200000000000000;
  Inflections.singular(_:options:_:)(v49, 1uLL, v50);
  v51._countAndFlagsBits = 0x24737765296E28;
  v52._countAndFlagsBits = 0x7377653124;
  v51._object = 0xE700000000000000;
  v52._object = 0xE500000000000000;
  Inflections.singular(_:options:_:)(v51, 1uLL, v52);
  v53._countAndFlagsBits = 0x2461295D69745B28;
  v53._object = 0xE800000000000000;
  v54._countAndFlagsBits = 1836396836;
  v54._object = 0xE400000000000000;
  Inflections.singular(_:options:_:)(v53, 1uLL, v54);
  v55._countAndFlagsBits = 0xD000000000000043;
  v55._object = 0x80000001B226E270;
  v56._countAndFlagsBits = 0x7369733124;
  v56._object = 0xE500000000000000;
  Inflections.singular(_:options:_:)(v55, 1uLL, v56);
  v57._object = 0x80000001B226E2C0;
  v57._countAndFlagsBits = 0xD000000000000012;
  v58._countAndFlagsBits = 0x7369733124;
  v58._object = 0xE500000000000000;
  Inflections.singular(_:options:_:)(v57, 1uLL, v58);
  v59._countAndFlagsBits = 0x6576295D665E5B28;
  v59._object = 0xEA00000000002473;
  v60._countAndFlagsBits = 1701196068;
  v60._object = 0xE400000000000000;
  Inflections.singular(_:options:_:)(v59, 1uLL, v60);
  v61._countAndFlagsBits = 0x2473296576696828;
  v61._object = 0xE800000000000000;
  v62._countAndFlagsBits = 12580;
  v62._object = 0xE200000000000000;
  Inflections.singular(_:options:_:)(v61, 1uLL, v62);
  v63._countAndFlagsBits = 0x2473296576697428;
  v63._object = 0xE800000000000000;
  v64._countAndFlagsBits = 12580;
  v64._object = 0xE200000000000000;
  Inflections.singular(_:options:_:)(v63, 1uLL, v64);
  v65._countAndFlagsBits = 0x6576295D726C5B28;
  v66._countAndFlagsBits = 6697252;
  v65._object = 0xEA00000000002473;
  v66._object = 0xE300000000000000;
  Inflections.singular(_:options:_:)(v65, 1uLL, v66);
  v67._object = 0x80000001B226E2E0;
  v67._countAndFlagsBits = 0xD000000000000012;
  v68._countAndFlagsBits = 7942436;
  v68._object = 0xE300000000000000;
  Inflections.singular(_:options:_:)(v67, 1uLL, v68);
  v69._countAndFlagsBits = 0x7365697265297328;
  v70._countAndFlagsBits = 0x73656972653124;
  v69._object = 0xE900000000000024;
  v70._object = 0xE700000000000000;
  Inflections.singular(_:options:_:)(v69, 1uLL, v70);
  v71._countAndFlagsBits = 0x736569766F296D28;
  v72._countAndFlagsBits = 0x6569766F3124;
  v71._object = 0xE900000000000024;
  v72._object = 0xE600000000000000;
  Inflections.singular(_:options:_:)(v71, 1uLL, v72);
  v73._object = 0xEF2473652968737CLL;
  v73._countAndFlagsBits = 0x73737C68637C7828;
  v74._countAndFlagsBits = 12580;
  v74._object = 0xE200000000000000;
  Inflections.singular(_:options:_:)(v73, 1uLL, v74);
  v75._countAndFlagsBits = 0x6573756F3124;
  v76._countAndFlagsBits = 0x6369296C7C6D285ELL;
  v76._object = 0xEA00000000002465;
  v75._object = 0xE600000000000000;
  Inflections.singular(_:options:_:)(v76, 1uLL, v75);
  v77._countAndFlagsBits = 0x7365282973756228;
  v77._object = 0xEB00000000243F29;
  v78._countAndFlagsBits = 12580;
  v78._object = 0xE200000000000000;
  Inflections.singular(_:options:_:)(v77, 1uLL, v78);
  v79._countAndFlagsBits = 0x247365296F28;
  v79._object = 0xE600000000000000;
  v80._countAndFlagsBits = 12580;
  v80._object = 0xE200000000000000;
  Inflections.singular(_:options:_:)(v79, 1uLL, v80);
  v81._countAndFlagsBits = 0x247329656F687328;
  v81._object = 0xE800000000000000;
  v82._countAndFlagsBits = 12580;
  v82._object = 0xE200000000000000;
  Inflections.singular(_:options:_:)(v81, 1uLL, v82);
  v83._countAndFlagsBits = 0xD000000000000013;
  v83._object = 0x80000001B226E300;
  v84._countAndFlagsBits = 1936273700;
  v84._object = 0xE400000000000000;
  Inflections.singular(_:options:_:)(v83, 1uLL, v84);
  v85._countAndFlagsBits = 0x65695B782961285ELL;
  v85._object = 0xEB0000000024735DLL;
  v86._countAndFlagsBits = 0x7369783124;
  v86._object = 0xE500000000000000;
  Inflections.singular(_:options:_:)(v85, 1uLL, v86);
  v87._object = 0x80000001B226E320;
  v88._countAndFlagsBits = 1937060132;
  v87._countAndFlagsBits = 0xD000000000000012;
  v88._object = 0xE400000000000000;
  Inflections.singular(_:options:_:)(v87, 1uLL, v88);
  v89._countAndFlagsBits = 0xD000000000000014;
  v89._object = 0x80000001B226E340;
  v90._countAndFlagsBits = 12580;
  v90._object = 0xE200000000000000;
  Inflections.singular(_:options:_:)(v89, 1uLL, v90);
  v91._countAndFlagsBits = 0x246E6529786F285ELL;
  v91._object = 0xE800000000000000;
  v92._countAndFlagsBits = 12580;
  v92._object = 0xE200000000000000;
  Inflections.singular(_:options:_:)(v91, 1uLL, v92);
  v93._countAndFlagsBits = 0x6E697C7472657628;
  v93._object = 0xEF24736563692964;
  v94._countAndFlagsBits = 2019897636;
  v94._object = 0xE400000000000000;
  Inflections.singular(_:options:_:)(v93, 1uLL, v94);
  v95._countAndFlagsBits = 0x6369297274616D28;
  v95._object = 0xEB00000000247365;
  v96._countAndFlagsBits = 2020159780;
  v96._object = 0xE400000000000000;
  Inflections.singular(_:options:_:)(v95, 1uLL, v96);
  v97._countAndFlagsBits = 0x657A297A69757128;
  v97._object = 0xEA00000000002473;
  v98._countAndFlagsBits = 12580;
  v98._object = 0xE200000000000000;
  Inflections.singular(_:options:_:)(v97, 1uLL, v98);
  v99._countAndFlagsBits = 0x7361626174616428;
  v99._object = 0xEC00000024732965;
  v100._countAndFlagsBits = 12580;
  v100._object = 0xE200000000000000;
  Inflections.singular(_:options:_:)(v99, 1uLL, v100);
  v101._countAndFlagsBits = 0x297361766E616328;
  v101._object = 0xEE00243F29736528;
  v102._countAndFlagsBits = 12580;
  v102._object = 0xE200000000000000;
  Inflections.singular(_:options:_:)(v101, 1uLL, v102);
  sub_1B21619D8(&qword_1EB7A0F88, &unk_1B22546A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B225B260;
  *(inited + 32) = 0x656369766461;
  *(inited + 40) = 0xE600000000000000;
  *(inited + 48) = 0x7370726F63;
  *(inited + 56) = 0xE500000000000000;
  *(inited + 64) = 1701013860;
  *(inited + 72) = 0xE400000000000000;
  *(inited + 80) = 0x6E656D7069757165;
  *(inited + 88) = 0xE900000000000074;
  *(inited + 96) = 1752394086;
  *(inited + 104) = 0xE400000000000000;
  *(inited + 112) = 0x74616D726F666E69;
  *(inited + 120) = 0xEB000000006E6F69;
  *(inited + 128) = 0x736E61656ALL;
  *(inited + 136) = 0xE500000000000000;
  *(inited + 144) = 0x736F64756BLL;
  *(inited + 152) = 0xE500000000000000;
  *(inited + 160) = 0x79656E6F6DLL;
  *(inited + 168) = 0xE500000000000000;
  *(inited + 176) = 0x6E6972707366666FLL;
  *(inited + 184) = 0xE900000000000067;
  *(inited + 192) = 0x6563696C6F70;
  *(inited + 200) = 0xE600000000000000;
  *(inited + 208) = 1701013874;
  *(inited + 216) = 0xE400000000000000;
  *(inited + 224) = 0x7065656873;
  *(inited + 232) = 0xE500000000000000;
  *(inited + 240) = 0x73656963657073;
  *(inited + 248) = 0xE700000000000000;
  Inflections.uncountableWords(_:)(inited);
  swift_setDeallocating();
  sub_1B21B7140();
  v104._countAndFlagsBits = 0x646C696863;
  v105._countAndFlagsBits = 0x6E6572646C696863;
  v104._object = 0xE500000000000000;
  v105._object = 0xE800000000000000;
  Inflections.irregularSuffix(_:_:)(v104, v105);
  v106._countAndFlagsBits = 1953460070;
  v106._object = 0xE400000000000000;
  v107._countAndFlagsBits = 1952802150;
  v107._object = 0xE400000000000000;
  Inflections.irregularSuffix(_:_:)(v106, v107);
  v108._countAndFlagsBits = 0x73657661656CLL;
  v109._countAndFlagsBits = 1717658988;
  v109._object = 0xE400000000000000;
  v108._object = 0xE600000000000000;
  Inflections.irregularSuffix(_:_:)(v109, v108);
  v110._countAndFlagsBits = 7234925;
  v111._countAndFlagsBits = 7233901;
  v111._object = 0xE300000000000000;
  v110._object = 0xE300000000000000;
  Inflections.irregularSuffix(_:_:)(v111, v110);
  v112._countAndFlagsBits = 0x7365766F6DLL;
  v113._countAndFlagsBits = 1702260589;
  v113._object = 0xE400000000000000;
  v112._object = 0xE500000000000000;
  Inflections.irregularSuffix(_:_:)(v113, v112);
  v114._countAndFlagsBits = 0x6E6F73726570;
  v115._countAndFlagsBits = 0x656C706F6570;
  v114._object = 0xE600000000000000;
  v115._object = 0xE600000000000000;
  Inflections.irregularSuffix(_:_:)(v114, v115);
  v116._countAndFlagsBits = 0x7365786573;
  v117._countAndFlagsBits = 7890291;
  v117._object = 0xE300000000000000;
  v116._object = 0xE500000000000000;
  Inflections.irregularSuffix(_:_:)(v117, v116);
  v118._countAndFlagsBits = 0x6E656D6963657073;
  v119._object = 0xE900000000000073;
  v118._object = 0xE800000000000000;
  v119._countAndFlagsBits = 0x6E656D6963657073;
  Inflections.irregularSuffix(_:_:)(v118, v119);
  v120._countAndFlagsBits = 0x6569626D6F7ALL;
  v121._countAndFlagsBits = 0x736569626D6F7ALL;
  v120._object = 0xE600000000000000;
  v121._object = 0xE700000000000000;
  Inflections.irregularSuffix(_:_:)(v120, v121);
}

uint64_t static Inflections.default.getter@<X0>(void *a1@<X8>)
{
  if (qword_1ED85D818 != -1)
  {
    sub_1B2112A24();
  }

  swift_beginAccess();
  v2 = *(&xmmword_1ED85D820 + 1);
  v3 = off_1ED85D830;
  *a1 = xmmword_1ED85D820;
  a1[1] = v2;
  a1[2] = v3;
}

uint64_t static Inflections.default.setter(uint64_t a1)
{
  v3 = *a1;
  v1 = *(a1 + 16);
  if (qword_1ED85D818 != -1)
  {
    sub_1B2112A24();
  }

  swift_beginAccess();
  xmmword_1ED85D820 = v3;
  off_1ED85D830 = v1;
}

uint64_t (*static Inflections.default.modify())()
{
  if (qword_1ED85D818 != -1)
  {
    sub_1B2112A24();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

unint64_t sub_1B21B7FBC()
{
  result = qword_1ED85D6F0;
  if (!qword_1ED85D6F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ED85D6F0);
  }

  return result;
}

uint64_t sub_1B21B8000(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (sub_1B22531F0() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_1B21B808C(unint64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_35;
  }

  v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  if (a2 >> 62)
  {
    result = sub_1B2252C20();
  }

  else
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v5 != result)
  {
    v19 = 0;
    return v19 & 1;
  }

  if (!v5)
  {
    goto LABEL_30;
  }

  v7 = v3 & 0xFFFFFFFFFFFFFF8;
  v8 = (v3 & 0xFFFFFFFFFFFFFF8) + 32;
  v21 = v3 & 0xFFFFFFFFFFFFFF8;
  if (v3 < 0)
  {
    v7 = v3;
  }

  if (v4)
  {
    v8 = v7;
  }

  v9 = a2 & 0xFFFFFFFFFFFFFF8;
  v10 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
  v20 = a2 & 0xFFFFFFFFFFFFFF8;
  if (a2 < 0)
  {
    v9 = a2;
  }

  if (a2 >> 62)
  {
    v10 = v9;
  }

  if (v8 == v10)
  {
LABEL_30:
    v19 = 1;
    return v19 & 1;
  }

  if ((v5 & 0x8000000000000000) == 0)
  {
    v4 = type metadata accessor for Row();
    v22 = v3;
    v11 = v3 & 0xC000000000000001;
    v12 = a2 & 0xC000000000000001;
    v13 = 4;
    v3 = v5;
    v14 = a2;
    while (1)
    {
      v15 = v13 - 4;
      v16 = v13 - 3;
      if (__OFADD__(v13 - 4, 1))
      {
        __break(1u);
LABEL_33:
        __break(1u);
LABEL_34:
        __break(1u);
LABEL_35:
        v5 = sub_1B2252C20();
        goto LABEL_3;
      }

      if (v11)
      {
        v17 = MEMORY[0x1B27427E0](v13 - 4, v22);
        if (v12)
        {
          goto LABEL_21;
        }
      }

      else
      {
        if (v15 >= *(v21 + 16))
        {
          goto LABEL_33;
        }

        v17 = *(v22 + 8 * v13);

        if (v12)
        {
LABEL_21:
          v18 = MEMORY[0x1B27427E0](v13 - 4, a2);
          goto LABEL_26;
        }
      }

      if (v15 >= *(v20 + 16))
      {
        goto LABEL_34;
      }

      v18 = *(a2 + 8 * v13);

LABEL_26:
      v19 = static Row.== infix(_:_:)(v17, v18);

      if (v19)
      {
        ++v13;
        a2 = v14;
        if (v16 != v3)
        {
          continue;
        }
      }

      return v19 & 1;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B21B8260(uint64_t a1, uint64_t a2)
{
  __s1[3] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    goto LABEL_103;
  }

  if (!v2 || a1 == a2)
  {
LABEL_98:
    result = 1;
    goto LABEL_104;
  }

  v3 = (a2 + 48);
  v4 = (a1 + 48);
  while (2)
  {
    v5 = *(v4 - 2);
    v6 = *(v4 - 1);
    v7 = *v4;
    v8 = *(v3 - 2);
    v9 = *(v3 - 1);
    v10 = *v3;
    switch(*v4)
    {
      case 1:
        v63 = *(v4 - 2);
        if (*v3)
        {
          if (v10 != 1)
          {
            goto LABEL_101;
          }

          v64 = *(v3 - 2);
          v65 = sub_1B2116164();
          v67 = sub_1B2116638(v65, v66, 1);
          sub_1B2113A44(v67, v68, 1);
          v69 = sub_1B2116164();
          sub_1B2113A44(v69, v70, 1);
          if (v5 != *&v8)
          {
            goto LABEL_103;
          }
        }

        else
        {
          v77 = sub_1B2116164();
          v79 = sub_1B2116638(v77, v78, 1);
          sub_1B2113A44(v79, v80, 0);
          v81 = sub_1B2116164();
          sub_1B2113A44(v81, v82, 1);
          v85 = sub_1B21147CC();
          if (v22 ^ v21 | v23)
          {
            v86 = 0;
          }

          else
          {
            v86 = v5 < v84;
          }

          if (!v86 || v85 != v5 || v8 != v83)
          {
            goto LABEL_103;
          }
        }

        goto LABEL_97;
      case 2:
        if (v10 != 2)
        {
          v157 = sub_1B2116164();
          sub_1B2113A20(v157, v158, 2);

          goto LABEL_101;
        }

        if (*&v5 != v8 || v6 != v9)
        {
          v32 = *(v3 - 2);
          v33 = *(v3 - 1);
          v34 = sub_1B22531F0();
          v35 = sub_1B2116164();
          sub_1B2113A20(v35, v36, 2);
          v37 = sub_1B211577C(v8, v9, 2);
          v39 = sub_1B2116638(v37, v38, 2);
          v41 = 2;
          goto LABEL_96;
        }

        v89 = sub_1B211577C(*(v4 - 2), *(v4 - 1), 2);
        v28 = sub_1B211577C(v89, v90, 2);
        v30 = 2;
LABEL_81:
        sub_1B2113A44(v28, v29, v30);
        v109 = sub_1B2116164();
        sub_1B2113A44(v109, v110, v7);
LABEL_97:
        v3 += 3;
        v4 += 24;
        if (!--v2)
        {
          goto LABEL_98;
        }

        continue;
      case 3:
        v42 = v10 == 3;
        if (v10 != 3)
        {
          v152 = sub_1B2115134();
          v155 = sub_1B211577C(v152, v153, v154);
          sub_1B2126638(v155, v156);
LABEL_101:
          v159 = sub_1B211577C(v8, v9, v10);
          sub_1B2113A44(v159, v160, v7);
          goto LABEL_102;
        }

        v43 = v6 >> 62;
        if (v42)
        {
          v91 = 0;
          if (v5 == 0.0 && v6 == 0xC000000000000000 && v9 >> 62 == 3)
          {
            v91 = 0;
            if (*&v8 == 0.0 && v9 == 0xC000000000000000)
            {
              v45 = sub_1B2111A28();
              sub_1B2113A20(v45, v46, v47);
              v48 = sub_1B2111A28();
              sub_1B2113A20(v48, v49, v50);
              v51 = sub_1B2111A28();
              sub_1B2113A20(v51, v52, v53);
              v54 = sub_1B2111A28();
              sub_1B2113A20(v54, v55, v56);
              v57 = sub_1B2111A28();
              sub_1B2113A44(v57, v58, v59);
              v60 = sub_1B2111A28();
              sub_1B2113A44(v60, v61, v62);
              v28 = 0;
              v29 = 0xC000000000000000;
LABEL_80:
              v30 = 3;
              goto LABEL_81;
            }
          }
        }

        else
        {
          v91 = 0;
          switch(v43)
          {
            case 0uLL:
              v91 = BYTE6(v6);
              break;
            case 1uLL:
              LODWORD(v91) = HIDWORD(v5) - LODWORD(v5);
              if (__OFSUB__(HIDWORD(v5), LODWORD(v5)))
              {
                goto LABEL_109;
              }

              v91 = v91;
              break;
            case 2uLL:
              v93 = *(*&v5 + 16);
              v92 = *(*&v5 + 24);
              v21 = __OFSUB__(v92, v93);
              v91 = v92 - v93;
              if (!v21)
              {
                break;
              }

              goto LABEL_108;
            case 3uLL:
              break;
            default:
              JUMPOUT(0);
          }
        }

        switch(v9 >> 62)
        {
          case 1uLL:
            LODWORD(v94) = HIDWORD(v8) - v8;
            if (__OFSUB__(HIDWORD(v8), v8))
            {
              __break(1u);
LABEL_107:
              __break(1u);
LABEL_108:
              __break(1u);
LABEL_109:
              __break(1u);
LABEL_110:
              __break(1u);
LABEL_111:
              __break(1u);
LABEL_112:
              __break(1u);
LABEL_113:
              __break(1u);
            }

            v94 = v94;
LABEL_75:
            if (v91 == v94)
            {
              if (v91 >= 1)
              {
                v97 = sub_1B2112A44();
                sub_1B2113A20(v97, v98, v99);
                switch(v43)
                {
                  case 1:
                    if (*&v5 >> 32 < SLODWORD(v5))
                    {
                      goto LABEL_110;
                    }

                    v132 = sub_1B2112A44();
                    sub_1B2113A20(v132, v133, v134);
                    sub_1B21174CC();
                    v115 = sub_1B2251BC0();
                    if (!v115)
                    {
                      goto LABEL_94;
                    }

                    v135 = sub_1B2251BE0();
                    if (__OFSUB__(SLODWORD(v5), v135))
                    {
                      goto LABEL_113;
                    }

                    v115 += SLODWORD(v5) - v135;
LABEL_94:
                    sub_1B2251BD0();
                    sub_1B21B8BE4(v115, v8, v9, __s1);
                    v136 = sub_1B2112A44();
                    sub_1B2113A44(v136, v137, v138);
                    v139 = sub_1B2112A44();
                    sub_1B2113A44(v139, v140, v141);
                    v142 = sub_1B2115134();
                    sub_1B2113A44(v142, v143, v144);
                    v145 = sub_1B2112A44();
                    sub_1B2113A44(v145, v146, v147);
                    v34 = __s1[0];
LABEL_95:
                    v148 = sub_1B2112A44();
                    sub_1B2113A44(v148, v149, v150);
                    v39 = sub_1B2115134();
                    break;
                  case 2:
                    v111 = *(*&v5 + 16);
                    v169 = *(*&v5 + 24);
                    v112 = sub_1B2112A44();
                    sub_1B2113A20(v112, v113, v114);
                    sub_1B21174CC();
                    v115 = sub_1B2251BC0();
                    if (!v115)
                    {
                      goto LABEL_85;
                    }

                    v116 = sub_1B2251BE0();
                    if (__OFSUB__(v111, v116))
                    {
                      goto LABEL_112;
                    }

                    v115 += v111 - v116;
LABEL_85:
                    if (!__OFSUB__(v169, v111))
                    {
                      goto LABEL_94;
                    }

                    goto LABEL_111;
                  case 3:
                    v117 = sub_1B2112A44();
                    sub_1B2113A20(v117, v118, v119);
                    memset(__s1, 0, 14);
                    sub_1B21174CC();
                    goto LABEL_89;
                  default:
                    v100 = sub_1B2112A44();
                    sub_1B2113A20(v100, v101, v102);
                    *__s1 = v5;
                    LOWORD(__s1[1]) = v6;
                    BYTE2(__s1[1]) = BYTE2(v6);
                    BYTE3(__s1[1]) = BYTE3(v6);
                    BYTE4(__s1[1]) = BYTE4(v6);
                    BYTE5(__s1[1]) = BYTE5(v6);
                    sub_1B21174CC();
LABEL_89:
                    sub_1B21B8BE4(__s1, v8, v9, &v170);
                    v120 = sub_1B2112A44();
                    sub_1B2113A44(v120, v121, v122);
                    v123 = sub_1B2112A44();
                    sub_1B2113A44(v123, v124, v125);
                    v126 = sub_1B2115134();
                    sub_1B2113A44(v126, v127, v128);
                    v129 = sub_1B2112A44();
                    sub_1B2113A44(v129, v130, v131);
                    v34 = v170;
                    goto LABEL_95;
                }

LABEL_96:
                sub_1B2113A44(v39, v40, v41);
                if ((v34 & 1) == 0)
                {
                  goto LABEL_103;
                }

                goto LABEL_97;
              }

LABEL_79:
              sub_1B21174CC();
              v103 = sub_1B2115134();
              sub_1B2113A44(v103, v104, v105);
              v106 = sub_1B2112A44();
              v28 = sub_1B2116638(v106, v107, v108);
              goto LABEL_80;
            }

LABEL_105:
            LOBYTE(v10) = 3;
            sub_1B21174CC();
            v163 = sub_1B2115134();
            sub_1B2113A44(v163, v164, v165);
            v166 = sub_1B2112A44();
            sub_1B2113A44(v166, v167, v168);
            v7 = 3;
LABEL_102:
            sub_1B2113A44(v8, v9, v10);
            v161 = sub_1B2116164();
            sub_1B2113A44(v161, v162, v7);
LABEL_103:
            result = 0;
LABEL_104:
            *MEMORY[0x1E69E9840];
            return result;
          case 2uLL:
            v96 = *(v8 + 16);
            v95 = *(v8 + 24);
            v21 = __OFSUB__(v95, v96);
            v94 = v95 - v96;
            if (!v21)
            {
              goto LABEL_75;
            }

            goto LABEL_107;
          case 3uLL:
            if (v91)
            {
              goto LABEL_105;
            }

            goto LABEL_79;
          default:
            v94 = BYTE6(v9);
            goto LABEL_75;
        }

      case 4:
        if (v10 != 4 || (v9 | v8) != 0)
        {
          goto LABEL_101;
        }

        v26 = sub_1B2116164();
        sub_1B2113A44(v26, v27, 4);
        v28 = 0;
        v29 = 0;
        v30 = 4;
        goto LABEL_81;
      default:
        if (*v3)
        {
          if (v10 != 1)
          {
            goto LABEL_101;
          }

          v11 = *(v3 - 2);
          v12 = sub_1B2116164();
          v14 = sub_1B2116638(v12, v13, 0);
          sub_1B2113A44(v14, v15, 1);
          v16 = sub_1B2116164();
          sub_1B2113A44(v16, v17, 0);
          v20 = sub_1B21147CC();
          if (v22 ^ v21 | v23)
          {
            v22 = 0;
          }

          else
          {
            v22 = *&v8 < v19;
          }

          v23 = v22 && v20 == *&v8;
          if (!v23 || *&v5 != v18)
          {
            goto LABEL_103;
          }
        }

        else
        {
          v71 = sub_1B2116164();
          v73 = sub_1B2116638(v71, v72, 0);
          sub_1B2113A44(v73, v74, 0);
          v75 = sub_1B2116164();
          sub_1B2113A44(v75, v76, 0);
          if (*&v5 != v8)
          {
            goto LABEL_103;
          }
        }

        goto LABEL_97;
    }
  }
}

GRDBInternal::ForeignKey __swiftcall ForeignKey.init(_:to:)(Swift::OpaquePointer _, Swift::OpaquePointer_optional to)
{
  v2->_rawValue = _._rawValue;
  v2[1]._rawValue = to.value;
  result.destinationColumns = to;
  result.originColumns = _;
  return result;
}

{
  rawValue = to.value._rawValue;
  v29 = v2;
  v5 = *(_._rawValue + 2);
  v6 = MEMORY[0x1E69E7CC0];
  if (v5)
  {
    v33 = MEMORY[0x1E69E7CC0];
    sub_1B2116B10();
    v7 = v33;
    v8 = _._rawValue + 32;
    do
    {
      sub_1B211EE68(v8, v30);
      v9 = v31;
      v10 = v32;
      sub_1B21139A0(v30, v31);
      v11 = (*(v10 + 16))(v9, v10);
      v13 = v12;
      sub_1B2113208(v30);
      v33 = v7;
      v14 = *(v7 + 16);
      if (v14 >= *(v7 + 24) >> 1)
      {
        sub_1B2116B10();
        v7 = v33;
      }

      *(v7 + 16) = v14 + 1;
      v15 = v7 + 16 * v14;
      *(v15 + 32) = v11;
      *(v15 + 40) = v13;
      v8 += 40;
      --v5;
    }

    while (v5);

    v6 = MEMORY[0x1E69E7CC0];
    if (rawValue)
    {
      goto LABEL_7;
    }

LABEL_14:
    v20 = 0;
    goto LABEL_16;
  }

  v7 = MEMORY[0x1E69E7CC0];
  if (!rawValue)
  {
    goto LABEL_14;
  }

LABEL_7:
  v19 = rawValue[2];
  if (v19)
  {
    v33 = v6;
    sub_1B2116B10();
    v20 = v33;
    v21 = (rawValue + 4);
    do
    {
      sub_1B211EE68(v21, v30);
      v22 = v31;
      v23 = v32;
      sub_1B21139A0(v30, v31);
      v24 = (*(v23 + 16))(v22, v23);
      v26 = v25;
      sub_1B2113208(v30);
      v33 = v20;
      v27 = *(v20 + 16);
      if (v27 >= *(v20 + 24) >> 1)
      {
        sub_1B2116B10();
        v20 = v33;
      }

      *(v20 + 16) = v27 + 1;
      v28 = v20 + 16 * v27;
      *(v28 + 32) = v24;
      *(v28 + 40) = v26;
      v21 += 40;
      --v19;
    }

    while (v19);
  }

  else
  {

    v20 = MEMORY[0x1E69E7CC0];
  }

LABEL_16:
  *v29 = v7;
  v29[1] = v20;
  result.destinationColumns.value._rawValue = v17;
  result.originColumns._rawValue = v16;
  result.destinationColumns.is_nil = v18;
  return result;
}

uint64_t static ForeignKey.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  if (sub_1B21B8000(*a1, *a2))
  {
    if (v2)
    {
      if (v3)
      {
        v4 = sub_1B2115C84();
        if (sub_1B21B8000(v4, v5))
        {
          return 1;
        }
      }
    }

    else if (!v3)
    {
      return 1;
    }
  }

  return 0;
}

void sub_1B21B8BE4(void *__s1@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, _BYTE *a4@<X8>)
{
  v16 = *MEMORY[0x1E69E9840];
  switch(a3 >> 62)
  {
    case 1uLL:
      if (a2 >> 32 < a2)
      {
        __break(1u);
      }

      goto LABEL_8;
    case 2uLL:
      v7 = *(a2 + 16);
      v8 = *(a2 + 24);
LABEL_8:
      v6 = sub_1B21B8D50();
      if (!v4)
      {
        goto LABEL_9;
      }

      goto LABEL_13;
    case 3uLL:
      if (__s1)
      {
        v6 = 1;
LABEL_9:
        *a4 = v6 & 1;
        v9 = *MEMORY[0x1E69E9840];
      }

      else
      {
        __break(1u);
LABEL_12:
        __break(1u);
LABEL_13:

        __break(1u);
      }

      return;
    default:
      __s2 = a2;
      v11 = a3;
      v12 = BYTE2(a3);
      v13 = BYTE3(a3);
      v14 = BYTE4(a3);
      v15 = BYTE5(a3);
      if (!__s1)
      {
        goto LABEL_12;
      }

      v6 = memcmp(__s1, &__s2, BYTE6(a3)) == 0;
      goto LABEL_9;
  }
}

uint64_t sub_1B21B8D50()
{
  result = sub_1B21120AC();
  v4 = result;
  if (result)
  {
    result = sub_1B2251BE0();
    if (__OFSUB__(v2, result))
    {
LABEL_14:
      __break(1u);
LABEL_15:
      __break(1u);
      goto LABEL_16;
    }

    v4 += v2 - result;
  }

  v5 = __OFSUB__(v1, v2);
  v6 = v1 - v2;
  if (v5)
  {
    __break(1u);
    goto LABEL_14;
  }

  result = sub_1B2251BD0();
  if (result >= v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = result;
  }

  if (!v0)
  {
    goto LABEL_15;
  }

  if (!v4)
  {
LABEL_16:
    __break(1u);
    return result;
  }

  return v4 == v0 || memcmp(v0, v4, v7) == 0;
}

uint64_t Configuration.label.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t Configuration.label.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t Configuration.busyMode.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 48);
  v3 = *(v1 + 56);
  *a1 = v2;
  *(a1 + 8) = v3;
  v4 = *(v1 + 64);
  *(a1 + 16) = v4;
  return sub_1B212535C(v2, v3, v4);
}

uint64_t Configuration.qos.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Configuration() + 64);
  v4 = sub_1B2252120();
  v5 = sub_1B21118A0(v4);
  v7 = *(v6 + 16);

  return v7(a1, v1 + v3, v5);
}

void *Configuration.targetQueue.getter()
{
  v1 = *(v0 + *(type metadata accessor for Configuration() + 68));
  v2 = v1;
  return v1;
}

void *Configuration.writeTargetQueue.getter()
{
  v1 = *(v0 + *(type metadata accessor for Configuration() + 72));
  v2 = v1;
  return v1;
}

void Configuration.writeTargetQueue.setter()
{
  v2 = *(sub_1B2116170() + 72);

  *(v1 + v2) = v0;
}

uint64_t Configuration.automaticMemoryManagement.setter(char a1)
{
  result = type metadata accessor for Configuration();
  *(v1 + *(result + 76)) = a1;
  return result;
}

void sub_1B21B92BC()
{
  sub_1B21B9464(319, &qword_1ED85E668);
  if (v0 <= 0x3F)
  {
    sub_1B21B9508(319, &qword_1ED85E4F8, &qword_1EB7A2198, &unk_1B225B330, MEMORY[0x1E69E62F8]);
    if (v1 <= 0x3F)
    {
      sub_1B21B9464(319, &unk_1ED85E500);
      if (v2 <= 0x3F)
      {
        sub_1B2252120();
        if (v3 <= 0x3F)
        {
          sub_1B21B94B0();
          if (v4 <= 0x3F)
          {
            sub_1B21B9508(319, &qword_1ED85E4E8, &qword_1EB7A0F20, qword_1B2262540, MEMORY[0x1E69E6720]);
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_1B21B9464(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_1B2252B00();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void sub_1B21B94B0()
{
  if (!qword_1ED85E4F0)
  {
    sub_1B2111770();
    v0 = sub_1B2252B00();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED85E4F0);
    }
  }
}

void sub_1B21B9508(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_1B2161A20(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t PrimaryKeyInfo.rowIDColumn.getter()
{
  if (*(v0 + 16))
  {
    return 0;
  }

  v3 = v0;
  v1 = *v0;
  v2 = v3[1];

  return v1;
}

uint64_t sub_1B21B95B0(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  v5 = *(a2 + 16);
  if (v5 >= v4)
  {
    v6 = *(a1 + 16);
  }

  else
  {
    v6 = *(a2 + 16);
  }

  v34 = MEMORY[0x1E69E7CC0];
  result = sub_1B216ECE4(0, v6, 0);
  v27 = v5;
  v28 = v4;
  v29 = v6;
  v25 = a2;
  v26 = a1;
  if (v6)
  {
    v8 = (a2 + 40);
    v9 = (a1 + 40);
    while (v4)
    {
      if (!v5)
      {
        goto LABEL_22;
      }

      v10 = *v9;
      v11 = *v8;
      v31 = *(v8 - 1);
      v32 = *(v9 - 1);
      v13 = *(v34 + 16);
      v12 = *(v34 + 24);
      v33 = v13 + 1;

      if (v13 >= v12 >> 1)
      {
        result = sub_1B216ECE4((v12 > 1), v33, 1);
      }

      *(v34 + 16) = v33;
      v14 = (v34 + 32 * v13);
      v14[4] = v31;
      v14[5] = v11;
      --v5;
      v14[6] = v32;
      v14[7] = v10;
      --v4;
      v8 += 4;
      v9 += 2;
      if (!--v6)
      {
        goto LABEL_11;
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
  }

  else
  {
LABEL_11:
    v15 = v29;
    v16 = (v25 + 32 * v29 + 40);
    for (i = (v26 + 16 * v29 + 40); v28 != v15; i += 2)
    {
      if (v15 >= v28)
      {
        goto LABEL_23;
      }

      if (__OFADD__(v15, 1))
      {
        goto LABEL_24;
      }

      if (v27 == v15)
      {
        break;
      }

      if (v15 >= v27)
      {
        goto LABEL_25;
      }

      v30 = v15;
      v18 = *(i - 1);
      v19 = *i;
      v20 = *(v16 - 1);
      v21 = *v16;
      v23 = *(v34 + 16);
      v22 = *(v34 + 24);

      if (v23 >= v22 >> 1)
      {
        result = sub_1B216ECE4((v22 > 1), v23 + 1, 1);
      }

      *(v34 + 16) = v23 + 1;
      v24 = (v34 + 32 * v23);
      v24[4] = v20;
      v24[5] = v21;
      v24[6] = v18;
      v24[7] = v19;
      v15 = v30 + 1;
      v16 += 4;
    }

    return v34;
  }

  return result;
}

void sub_1B21B97B4(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 16);
  v30 = MEMORY[0x1E69E7CC0];
  sub_1B2116B10();
  v3 = v1 + 64;
  v4 = -1;
  v5 = -1 << *(v1 + 32);
  if (-v5 < 64)
  {
    v4 = ~(-1 << -v5);
  }

  v6 = v4 & *(v1 + 64);
  v7 = (63 - v5) >> 6;
  v28 = v2;
  v29 = v1;
  if (v2)
  {

    v8 = 0;
    v2 = 0;
    while (v6)
    {
LABEL_10:
      v10 = (*(v1 + 48) + ((v2 << 10) | (16 * __clz(__rbit64(v6)))));
      v11 = *v10;
      v12 = v10[1];
      v13 = sub_1B2252220();
      v15 = v14;
      v16 = *(v30 + 16);
      if (v16 >= *(v30 + 24) >> 1)
      {
        v27 = v13;
        sub_1B2116B10();
        v13 = v27;
      }

      ++v8;
      v6 &= v6 - 1;
      *(v30 + 16) = v16 + 1;
      v17 = v30 + 16 * v16;
      *(v17 + 32) = v13;
      *(v17 + 40) = v15;
      v1 = v29;
      if (v8 == v28)
      {
        goto LABEL_15;
      }
    }

    while (1)
    {
      v9 = v2 + 1;
      if (__OFADD__(v2, 1))
      {
        break;
      }

      if (v9 >= v7)
      {
        goto LABEL_26;
      }

      v6 = *(v3 + 8 * v9);
      ++v2;
      if (v6)
      {
        v2 = v9;
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
  }

  else
  {

LABEL_15:
    if (v6)
    {
      goto LABEL_20;
    }

    while (1)
    {
      v18 = v2 + 1;
      if (__OFADD__(v2, 1))
      {
        break;
      }

      if (v18 >= v7)
      {

        return;
      }

      v6 = *(v3 + 8 * v18);
      ++v2;
      if (v6)
      {
        v2 = v18;
        do
        {
LABEL_20:
          v19 = (*(v1 + 48) + ((v2 << 10) | (16 * __clz(__rbit64(v6)))));
          v20 = *v19;
          v21 = v19[1];
          v22 = sub_1B2252220();
          v24 = v23;
          v25 = *(v30 + 16);
          if (v25 >= *(v30 + 24) >> 1)
          {
            sub_1B2116B10();
          }

          v6 &= v6 - 1;
          *(v30 + 16) = v25 + 1;
          v26 = v30 + 16 * v25;
          *(v26 + 32) = v22;
          *(v26 + 40) = v24;
          v1 = v29;
        }

        while (v6);
      }
    }
  }

  __break(1u);
}

_OWORD *PrimaryKeyInfo.columns.getter()
{
  v2 = *v0;
  v1 = *(v0 + 8);
  v3 = *(v0 + 16);
  if (*(v0 + 16))
  {
    if (v3 == 1)
    {
      v4 = *v0;
    }

    else
    {
      v4 = &unk_1F2969308;
    }
  }

  else
  {
    sub_1B21619D8(&qword_1EB7A0F88, &unk_1B22546A0);
    sub_1B2113B74();
    v4 = swift_allocObject();
    v4[1] = xmmword_1B22546B0;
    *(v4 + 4) = v2;
    *(v4 + 5) = v1;
  }

  sub_1B21414CC(v2, v1, v3);
  return v4;
}

uint64_t sub_1B21B9AA0()
{
  sub_1B211D64C();
  sub_1B2118060();
  v1();
  if (!v0)
  {
    v2 = v4;
  }

  return v2 & 1;
}

void sub_1B21B9C2C()
{
  sub_1B211F378();
  sub_1B21147E0();
  v1 = *(v0 + 56);
  v2 = sub_1B2111A44();
  v3(v2);
  sub_1B212609C();
}

void sub_1B21B9CB0()
{
  sub_1B211F378();
  sub_1B21147E0();
  v1 = *(v0 + 56);
  v2 = sub_1B2111A44();
  v3(v2);
  sub_1B212609C();
}

void sub_1B21B9D34()
{
  sub_1B211F378();
  sub_1B21147E0();
  v1 = *(v0 + 56);
  v2 = sub_1B2111A44();
  v3(v2);
  sub_1B212609C();
}

void sub_1B21B9DB8()
{
  sub_1B211F378();
  sub_1B21147E0();
  v1 = *(v0 + 56);
  v2 = sub_1B2111A44();
  v3(v2);
  sub_1B212609C();
}

float sub_1B21B9E0C()
{
  sub_1B211D64C();
  sub_1B2118060();
  v1();
  if (!v0)
  {
    return v3;
  }

  return result;
}

double sub_1B21B9E74()
{
  sub_1B211D64C();
  sub_1B2118060();
  v1();
  if (!v0)
  {
    return v3;
  }

  return result;
}

void *sub_1B21B9EDC(uint64_t a1)
{
  v4 = v1[5];
  v5 = v1[6];
  sub_1B21139A0(v1 + 2, v4);
  result = (*(v5 + 64))(&v7, MEMORY[0x1E69E6158], a1, MEMORY[0x1E69E6158], &protocol witness table for String, &protocol witness table for String, v4, v5);
  if (!v2)
  {
    return v7;
  }

  return result;
}

void sub_1B21B9F7C()
{
  sub_1B211F378();
  sub_1B21147E0();
  v1 = *(v0 + 64);
  v2 = sub_1B2111A44();
  v3(v2);
  sub_1B212609C();
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> Database.checkForeignKeys()()
{
  Database.foreignKeyViolations()();
  if (!v0)
  {
    sub_1B21BCE80();
  }
}

uint64_t sub_1B21BA018(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (!a2)
  {
    return !a4;
  }

  if (a2 == 1)
  {
    return a4 == 1;
  }

  if (a4 < 2)
  {
    return 0;
  }

  if (a1 != a3 || a2 != a4)
  {
    return sub_1B22531F0();
  }

  return 1;
}

uint64_t sub_1B21BA064(uint64_t a1, uint64_t a2)
{
  sub_1B2253420();
  if (a2)
  {
    if (a2 != 1)
    {
      MEMORY[0x1B2742F10](2);
      sub_1B2252370();
      return sub_1B2253470();
    }

    v3 = 1;
  }

  else
  {
    v3 = 0;
  }

  MEMORY[0x1B2742F10](v3);
  return sub_1B2253470();
}

uint64_t static Database.isSQLiteInternalTable(_:)()
{
  sub_1B211D964();
  sub_1B2124BC0(0x6574696C7173);
  if (sub_1B21BA174())
  {
    return 1;
  }

  sub_1B2124BC0(0x616D67617270);

  return sub_1B21BA174();
}

uint64_t sub_1B21BA174()
{

  do
  {
    while (1)
    {
      v0 = sub_1B2252410();
      if (!v1)
      {

        sub_1B2252410();
        v9 = v8;

        if (v9)
        {
          goto LABEL_15;
        }

        return 1;
      }

      v2 = v0;
      v3 = v1;
      v4 = sub_1B2252410();
      if (!v5)
      {

        return 1;
      }

      if (v2 != v4 || v3 != v5)
      {
        break;
      }
    }

    v7 = sub_1B22531F0();
  }

  while ((v7 & 1) != 0);

LABEL_15:

  return 0;
}

uint64_t sub_1B21BA35C(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v4;
  v11 = (v4 + OBJC_IVAR____TtC12GRDBInternal8Database_schemaCache);
  swift_beginAccess();
  v12 = *v11;
  v13 = v11[1];
  sub_1B213E100(a1, a2);
  sub_1B213E100(a1, a2);
  sub_1B213E2CC(v13, v62);
  swift_endAccess();
  v14 = sub_1B21EF0F0();
  v75[0] = v62[0];
  sub_1B212AC5C(v75, &qword_1EB7A21D0, &qword_1B225B6B0);
  v74 = v62[1];
  sub_1B212AC5C(&v74, &qword_1EB7A21B0, &qword_1B225B690);
  v73 = v62[2];
  sub_1B212AC5C(&v73, &qword_1EB7A21B8, &qword_1B225B698);
  v72 = v62[3];
  sub_1B212AC5C(&v72, &qword_1EB7A21C0, &qword_1B225B6A0);
  v71 = v62[4];
  sub_1B212AC5C(&v71, &qword_1EB7A21C8, &qword_1B225B6A8);
  if (v14 != 1)
  {
    sub_1B213EA54(a1, a2);
    sub_1B213EA54(a1, a2);
    return v14;
  }

  sub_1B2252CD0();

  *&v58 = 0x20414D47415250;
  *(&v58 + 1) = 0xE700000000000000;
  v15 = 0xE400000000000000;
  v16 = 1886217588;
  if (a2 != 1)
  {
    v16 = a1;
    v15 = a2;
  }

  v57 = a4;
  v17 = a3;
  if (a2)
  {
    v18 = v16;
  }

  else
  {
    v18 = 1852399981;
  }

  if (a2)
  {
    v19 = v15;
  }

  else
  {
    v19 = 0xE400000000000000;
  }

  v83 = type metadata accessor for Row();
  sub_1B213E100(a1, a2);
  MEMORY[0x1B2741EB0](v18, v19);

  MEMORY[0x1B2741EB0](0x6C5F7865646E692ELL, 0xEC00000028747369);
  MEMORY[0x1B2741EB0](v17, v57);
  MEMORY[0x1B2741EB0](34, 0xE100000000000000);
  MEMORY[0x1B2741EB0](34, 0xE100000000000000);

  MEMORY[0x1B2741EB0](41, 0xE100000000000000);
  v20 = v58;
  v60 = 0;
  v58 = 0u;
  v59 = 0u;
  v61[0] = MEMORY[0x1E69E7CC0];
  v61[1] = MEMORY[0x1E69E7CC8];
  v21 = static Row.fetchAll(_:sql:arguments:adapter:)(v6, v20, *(&v20 + 1), v61, &v58);
  if (v5)
  {
    sub_1B213EA54(a1, a2);
    sub_1B213EA54(a1, a2);

    sub_1B212AC5C(&v58, &qword_1EB7A1370, &unk_1B2257580);
    return v17;
  }

  v22 = v21;
  v56 = v6;
  v52 = v11;

  sub_1B212AC5C(&v58, &qword_1EB7A1370, &unk_1B2257580);
  v23 = 0;
  v54 = v22 & 0xC000000000000001;
  v55 = sub_1B2116B08(v22);
  v83 = MEMORY[0x1E69E7CC0];
  for (i = v22; ; v22 = i)
  {
    if (v55 == v23)
    {

      if (*(v83 + 16))
      {
        sub_1B213EA54(a1, a2);
        v39 = v11;
      }

      else
      {
        v39 = v11;
        v46 = sub_1B213E114(1);
        sub_1B213EA54(a1, a2);
        if ((v46 & 1) == 0)
        {

          swift_beginAccess();
          v47 = *v11;
          sub_1B213E2CC(v11[1], &v63);
          v48 = v63;
          v49 = v65;
          v50 = v66;
          swift_isUniquelyReferenced_nonNull_native();
          v61[0] = v49;
          sub_1B21AC048();
          v80 = v64;
          v79 = v48;
          v81 = v61[0];
          v82 = v50;
          v51 = v52[1];
          swift_isUniquelyReferenced_nonNull_native();
          v61[0] = v52[1];
          sub_1B2148D50();
          v52[1] = v61[0];
          sub_1B213EA54(a1, a2);
          swift_endAccess();
          return 0;
        }
      }

      swift_beginAccess();
      v41 = *v39;
      v40 = v39[1];
      v17 = v83;

      sub_1B213E2CC(v40, &v67);
      v42 = v67;
      v43 = v69;
      v44 = v70;
      swift_isUniquelyReferenced_nonNull_native();
      v61[0] = v43;
      sub_1B21AC048();
      v76 = v68;
      v75[1] = v42;
      v77 = v61[0];
      v78 = v44;
      v45 = v39[1];
      swift_isUniquelyReferenced_nonNull_native();
      v61[0] = v39[1];
      sub_1B2148D50();
      v39[1] = v61[0];
      sub_1B213EA54(a1, a2);
      swift_endAccess();
      return v17;
    }

    sub_1B21BF944(v23, v54 == 0, v22);
    if (v54)
    {
      result = MEMORY[0x1B27427E0](v23, v22);
      v24 = result;
    }

    else
    {
      v24 = *(v22 + 8 * v23 + 32);
    }

    if (__OFADD__(v23, 1))
    {
      break;
    }

    v61[0] = v24;
    sub_1B21BAABC(v61, v56, a1, a2, &v58);
    v26 = a1;
    v27 = a2;

    v28 = v58;
    v29 = v59;
    v30 = BYTE8(v59);
    if (*(&v58 + 1))
    {
      v31 = v83;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v36 = *(v31 + 16);
        sub_1B216227C();
        v31 = v37;
      }

      v33 = *(v31 + 16);
      v32 = *(v31 + 24);
      v83 = v31;
      if (v33 >= v32 >> 1)
      {
        sub_1B216227C();
        v83 = v38;
      }

      v34 = v83;
      *(v83 + 16) = v33 + 1;
      v35 = v34 + 32 * v33;
      *(v35 + 32) = v28;
      *(v35 + 48) = v29;
      *(v35 + 56) = v30 & 1;
    }

    else
    {
      sub_1B21C2654(v58, 0);
    }

    ++v23;
    a2 = v27;
    a1 = v26;
  }

  __break(1u);
  return result;
}

uint64_t sub_1B21BAABC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v8 = *a1;
  if (*(*a1 + 72) <= 1)
  {
    goto LABEL_48;
  }

  v9 = v6;
  v5 = *(v8 + 64);
  if (v5)
  {
    LOBYTE(v7) = 1;
    if (sqlite3_column_type(*(v8 + 64), 1) == 5)
    {
LABEL_49:
      v51 = xmmword_1B2259350;
      LOBYTE(v52) = v7;

      RowDecodingContext.init(row:key:)(v37, &v51, &v55);
      sub_1B21A2FC0();
      v9 = swift_allocError();
      v39 = v38;
      v51 = v55;
      v52 = v56;
      v53 = v57;
      v54 = v58;
      sub_1B21320F0(v5, 1, &v49);
      v47 = v49;
      v48 = v50;
      v40 = MEMORY[0x1E69E6158];
LABEL_51:
      sub_1B2183238(v40, &v51, &v47, v39);
      sub_1B2113A44(v47, *(&v47 + 1), v48);
      sub_1B218450C(&v55);
      swift_willThrow();
      goto LABEL_52;
    }

    if (!sqlite3_column_text(v5, 1))
    {
      goto LABEL_47;
    }

    v45 = sub_1B2252400();
    v46 = v13;
  }

  else
  {
    v45 = sub_1B212614C();
    v46 = v14;
    if (v6)
    {
      goto LABEL_52;
    }
  }

  if (*(v8 + 72) <= 2)
  {
LABEL_48:
    sub_1B2252EC0();
    __break(1u);
    goto LABEL_49;
  }

  v15 = *(v8 + 64);
  if (v15)
  {
    if (sqlite3_column_type(*(v8 + 64), 2) == 5)
    {
      v51 = xmmword_1B225B1F0;
      LOBYTE(v52) = 1;

      RowDecodingContext.init(row:key:)(v41, &v51, &v55);
      sub_1B21A2FC0();
      v9 = swift_allocError();
      v39 = v42;
      v51 = v55;
      v52 = v56;
      v53 = v57;
      v54 = v58;
      sub_1B21320F0(v15, 2, &v49);
      v47 = v49;
      v48 = v50;
      v40 = MEMORY[0x1E69E6370];
      goto LABEL_51;
    }

    v43 = sqlite3_column_int64(v15, 2) != 0;
    goto LABEL_13;
  }

  v16 = sub_1B21B9AA0();
  if (!v6)
  {
    v43 = v16;
LABEL_13:
    sub_1B2252CD0();

    *&v55 = 0x20414D47415250;
    *(&v55 + 1) = 0xE700000000000000;
    v17 = 0xE400000000000000;
    v18 = 1886217588;
    if (a4 != 1)
    {
      v18 = a3;
      v17 = a4;
    }

    if (a4)
    {
      v7 = v18;
    }

    else
    {
      v7 = 1852399981;
    }

    if (a4)
    {
      v19 = v17;
    }

    else
    {
      v19 = 0xE400000000000000;
    }

    type metadata accessor for Row();
    sub_1B213E100(a3, a4);
    MEMORY[0x1B2741EB0](v7, v19);

    MEMORY[0x1B2741EB0](0x695F7865646E692ELL, 0xEC000000286F666ELL);
    LOBYTE(v7) = v46;
    MEMORY[0x1B2741EB0](v45, v46);
    MEMORY[0x1B2741EB0](34, 0xE100000000000000);
    MEMORY[0x1B2741EB0](34, 0xE100000000000000);

    MEMORY[0x1B2741EB0](41, 0xE100000000000000);
    v20 = v55;
    *&v57 = 0;
    v55 = 0u;
    v56 = 0u;
    v51 = MEMORY[0x1E69E7CC0];
    v21 = static Row.fetchAll(_:sql:arguments:adapter:)(a2, v20, *(&v20 + 1), &v51, &v55);
    if (v6)
    {

      return sub_1B212AC5C(&v55, &qword_1EB7A1370, &unk_1B2257580);
    }

    v5 = v21;

    sub_1B212AC5C(&v55, &qword_1EB7A1370, &unk_1B2257580);

    *&v55 = sub_1B21C2494(v23);
    sub_1B21BF9E4(&v55);

    v24 = v55;
    v59 = sub_1B2116B08(v55);
    v25 = 0;
    v26 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      if (v59 == v25)
      {

        *a5 = v45;
        *(a5 + 8) = v46;
        *(a5 + 16) = v26;
        *(a5 + 24) = v43;
        return result;
      }

      if ((v24 & 0xC000000000000001) != 0)
      {
        v27 = MEMORY[0x1B27427E0](v25, v24);
      }

      else
      {
        if (v25 >= *(v24 + 16))
        {
          goto LABEL_45;
        }

        v27 = *(v24 + 8 * v25 + 32);
      }

      if (__OFADD__(v25, 1))
      {
        break;
      }

      if (*(v27 + 72) <= 2)
      {
        goto LABEL_48;
      }

      v5 = *(v27 + 64);
      if (v5)
      {
        if (sqlite3_column_type(*(v27 + 64), 2) == 5)
        {
          goto LABEL_43;
        }

        if (!sqlite3_column_text(v5, 2))
        {
          goto LABEL_46;
        }

        v5 = sub_1B2252400();
        v29 = v28;
      }

      else
      {
        v30 = sub_1B21B9EDC(2);
        v29 = v31;
        if (!v31)
        {
LABEL_43:

          *a5 = 0;
          *(a5 + 8) = 0;
          *(a5 + 24) = 0;
          *(a5 + 16) = 0;
          return result;
        }

        v5 = v30;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v34 = *(v26 + 16);
        sub_1B214400C();
        v26 = v35;
      }

      v32 = *(v26 + 16);
      v7 = v32 + 1;
      if (v32 >= *(v26 + 24) >> 1)
      {
        sub_1B214400C();
        v26 = v36;
      }

      *(v26 + 16) = v7;
      v33 = v26 + 16 * v32;
      *(v33 + 32) = v5;
      *(v33 + 40) = v29;
      ++v25;
    }

    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

LABEL_52:
  swift_unexpectedError();
  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_1B21BB15C(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  if (*(*a1 + 72) <= 0)
  {
    goto LABEL_12;
  }

  v5 = *a2;
  v3 = *(v4 + 64);
  if (v3)
  {
    if (sqlite3_column_type(*(v4 + 64), 0) == 5)
    {
LABEL_13:
      v22 = 0uLL;
      LOBYTE(v23) = 1;

      RowDecodingContext.init(row:key:)(v10, &v22, &v26);
      sub_1B21A2FC0();
      swift_allocError();
      v12 = v11;
      v22 = v26;
      v23 = v27;
      v24 = v28;
      v25 = v29;
      sub_1B21320F0(v3, 0, &v20);
      v18 = v20;
      v19 = v21;
      v13 = MEMORY[0x1E69E6530];
      v14 = v12;
LABEL_15:
      sub_1B2183238(v13, &v22, &v18, v14);
      sub_1B2113A44(v18, *(&v18 + 1), v19);
      sub_1B218450C(&v26);
      swift_willThrow();
      goto LABEL_16;
    }

    v6 = sqlite3_column_int64(v3, 0);
  }

  else
  {
    sub_1B21B9DB8();
    if (v2)
    {
      goto LABEL_16;
    }
  }

  v3 = v6;
  if (*(v5 + 72) <= 0)
  {
LABEL_12:
    sub_1B2252EC0();
    __break(1u);
    goto LABEL_13;
  }

  v7 = *(v5 + 64);
  if (v7)
  {
    if (sqlite3_column_type(*(v5 + 64), 0) != 5)
    {
      v8 = sqlite3_column_int64(v7, 0);
      return v3 < v8;
    }

    v22 = 0uLL;
    LOBYTE(v23) = 1;

    RowDecodingContext.init(row:key:)(v15, &v22, &v26);
    sub_1B21A2FC0();
    swift_allocError();
    v17 = v16;
    v22 = v26;
    v23 = v27;
    v24 = v28;
    v25 = v29;
    sub_1B21320F0(v7, 0, &v20);
    v18 = v20;
    v19 = v21;
    v13 = MEMORY[0x1E69E6530];
    v14 = v17;
    goto LABEL_15;
  }

  sub_1B21B9DB8();
  if (!v2)
  {
    return v3 < v8;
  }

LABEL_16:
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

BOOL Database.table<A>(_:hasUniqueKey:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(*(a4 - 8) + 64);
  MEMORY[0x1EEE9AC00](a1);
  (*(v8 + 16))(&v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v9, v10);
  v11 = sub_1B22526C0();
  v12 = v11;
  v13 = sub_1B21401E4(v11, a1);

  if (!v4)
  {
    v12 = v13 != 0;
    if (v13)
    {
    }
  }

  return v12;
}

void *sub_1B21BB544(uint64_t a1, void *a2)
{
  sub_1B21B97B4(a1);
  if (!*(sub_1B2140648(v5) + 16))
  {
LABEL_40:

    return 0;
  }

  sub_1B213285C(&unk_1F29696E0);
  sub_1B211F670();
  sub_1B2140704();
  sub_1B212601C();
  if (v3)
  {

    return &unk_1F2969710;
  }

  sub_1B21229C4();
  Database.primaryKey(_:)();
  if (v2)
  {

    return v3;
  }

  if (v42)
  {
    if (v42 == 1)
    {
      v6 = v40;
    }

    else
    {
      v6 = &unk_1F2969740;
    }
  }

  else
  {
    sub_1B21619D8(&qword_1EB7A0F88, &unk_1B22546A0);
    sub_1B2113B74();
    v6 = swift_allocObject();
    v6[1] = xmmword_1B22546B0;
    *(v6 + 4) = v40;
    *(v6 + 5) = v41;
  }

  v7 = *(v6 + 2);
  sub_1B212D6C4();
  if (v7)
  {
    v8 = sub_1B2113978();
    sub_1B21414CC(v8, v9, v10);
    sub_1B2117238();
    v11 = v40;
    do
    {
      sub_1B2252220();
      sub_1B212D574();
      if (v13)
      {
        sub_1B2121FC4(v12);
        sub_1B2116B10();
        v11 = v40;
      }

      sub_1B2135314();
    }

    while (!v14);
  }

  else
  {
    v15 = sub_1B2113978();
    sub_1B21414CC(v15, v16, v17);

    v11 = MEMORY[0x1E69E7CC0];
  }

  sub_1B2140648(v11);
  v18 = sub_1B211F670();
  sub_1B21414EC(v18, v19);
  sub_1B212601C();
  if (swift_getObjectType)
  {

    if (v36)
    {
      if (v36 == 1)
      {
        return v43;
      }

      else
      {
        return &unk_1F2969770;
      }
    }

    else
    {
      sub_1B21619D8(&qword_1EB7A0F88, &unk_1B22546A0);
      sub_1B2113B74();
      v3 = swift_allocObject();
      *(v3 + 16) = xmmword_1B22546B0;
      *(v3 + 32) = v43;
      *(v3 + 40) = v38;
    }

    return v3;
  }

  sub_1B21424A0(v43, v38, v36);
  v20 = sub_1B21229C4();
  v22 = Database.indexes(on:)(v20, v21);
  result = sub_1B213CD20(v22);
  v26 = MEMORY[0x1E69E7CC0];
  v35 = result;
  v39 = v24;
  v37 = v25;
  while (1)
  {
    if (v11 == v24)
    {

      goto LABEL_40;
    }

    if (v11 >= a2[2])
    {
      break;
    }

    v27 = v25 + 32 * v11++;
    if (*(v27 + 24))
    {
      v3 = *(v27 + 16);
      v44 = *(v27 + 8);
      if (*(v3 + 16))
      {

        sub_1B214CB88();
        v28 = v26;
        do
        {
          v29 = *(v3 + 32);
          v30 = *(v3 + 40);
          sub_1B2252220();
          sub_1B213CB78();
          if (v13)
          {
            sub_1B2121FC4(v31);
            sub_1B2116B10();
            v28 = v26;
          }

          sub_1B214CBF8();
        }

        while (!v14);
        a2 = v35;
        v26 = MEMORY[0x1E69E7CC0];
      }

      else
      {

        v28 = v26;
      }

      sub_1B2140648(v28);
      v32 = sub_1B2112FD0();
      v34 = sub_1B21414EC(v32, v33);

      if (v34)
      {

        return v3;
      }

      v25 = v37;
      v24 = v39;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B21BB8F8(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v5;
  v7 = v4;
  v12 = (v4 + OBJC_IVAR____TtC12GRDBInternal8Database_schemaCache);
  swift_beginAccess();
  v98 = v12;
  v13 = *v12;
  v14 = v12[1];
  sub_1B213E100(a1, a2);
  sub_1B213E100(a1, a2);
  sub_1B213E2CC(v14, v126);
  swift_endAccess();
  v15 = sub_1B21EF134();
  v139[0] = v126[0];
  sub_1B212AC5C(v139, &qword_1EB7A21D0, &qword_1B225B6B0);
  v138 = v126[1];
  sub_1B212AC5C(&v138, &qword_1EB7A21B0, &qword_1B225B690);
  v137 = v126[2];
  sub_1B212AC5C(&v137, &qword_1EB7A21B8, &qword_1B225B698);
  v136 = v126[3];
  sub_1B212AC5C(&v136, &qword_1EB7A21C0, &qword_1B225B6A0);
  v135 = v126[4];
  sub_1B212AC5C(&v135, &qword_1EB7A21C8, &qword_1B225B6A8);
  if (v15 != 1)
  {
    sub_1B213EA54(a1, a2);
    sub_1B213EA54(a1, a2);
    return v15;
  }

  sub_1B2252CD0();

  *&v122 = 0x20414D47415250;
  *(&v122 + 1) = 0xE700000000000000;
  v16 = 0xE400000000000000;
  v17 = 1886217588;
  if (a2 != 1)
  {
    v17 = a1;
    v16 = a2;
  }

  v107 = v7;
  if (a2)
  {
    v18 = v17;
  }

  else
  {
    v18 = 1852399981;
  }

  if (a2)
  {
    v15 = v16;
  }

  else
  {
    v15 = 0xE400000000000000;
  }

  v147 = type metadata accessor for Row();
  sub_1B213E100(a1, a2);
  MEMORY[0x1B2741EB0](v18, v15);

  MEMORY[0x1B2741EB0](0xD000000000000012, 0x80000001B226E500);
  MEMORY[0x1B2741EB0](a3, a4);
  MEMORY[0x1B2741EB0](34, 0xE100000000000000);
  MEMORY[0x1B2741EB0](34, 0xE100000000000000);

  MEMORY[0x1B2741EB0](41, 0xE100000000000000);
  v19 = v122;
  *&v124 = 0;
  v122 = 0u;
  v123 = 0u;
  v118 = MEMORY[0x1E69E7CC0];
  v20 = static Row.fetchAll(_:sql:arguments:adapter:)(v107, v19, *(&v19 + 1), &v118, &v122);
  if (v5)
  {
    sub_1B213EA54(a1, a2);
    sub_1B213EA54(a1, a2);

    sub_1B212AC5C(&v122, &qword_1EB7A1370, &unk_1B2257580);
    return v15;
  }

  v21 = v20;

  v106 = v21;

  sub_1B212AC5C(&v122, &qword_1EB7A1370, &unk_1B2257580);
  v105 = sub_1B2116B08(v21);
  v103 = 0;
  v22 = 0;
  v100 = v21 & 0xFFFFFFFFFFFFFF8;
  v101 = v21 & 0xC000000000000001;
  v104 = 1;
  v147 = MEMORY[0x1E69E7CC0];
  v102 = a2;
  v99 = a1;
  while (v105 != v22)
  {
    if (v101)
    {
      v24 = MEMORY[0x1B27427E0](v22, v21);
      v23 = v147;
    }

    else
    {
      v23 = v147;
      if (v22 >= *(v100 + 16))
      {
        goto LABEL_82;
      }

      v24 = *(v21 + 8 * v22 + 32);
    }

    if (__OFADD__(v22, 1))
    {
      __break(1u);
LABEL_82:
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
LABEL_88:
      __break(1u);
LABEL_89:
      sub_1B2252EC0();
      __break(1u);
LABEL_90:
      v118 = 0uLL;
      LOBYTE(v119) = 1;

      RowDecodingContext.init(row:key:)(v83, &v118, &v122);
      sub_1B21A2FC0();
      swift_allocError();
      v85 = v84;
      v118 = v122;
      v119 = v123;
      v120 = v124;
      v121 = v125;
      v86 = v21;
      v87 = 0;
LABEL_92:
      sub_1B21320F0(v86, v87, &v116);
      v114 = v116;
      v115 = v117;
      v90 = MEMORY[0x1E69E6530];
LABEL_96:
      sub_1B2183238(v90, &v118, &v114, v85);
      sub_1B2113A44(v114, *(&v114 + 1), v115);
      sub_1B218450C(&v122);
      swift_willThrow();
      while (1)
      {
        swift_unexpectedError();
        __break(1u);
      }
    }

    if (*(v24 + 72) <= 0)
    {
      goto LABEL_89;
    }

    v21 = *(v24 + 64);
    if (v21)
    {
      if (sqlite3_column_type(*(v24 + 64), 0) == 5)
      {
        goto LABEL_90;
      }

      v25 = sqlite3_column_int64(v21, 0);
    }

    else
    {
      sub_1B21B9DB8();
    }

    if (*(v24 + 72) <= 1)
    {
      goto LABEL_89;
    }

    v112 = v25;
    v21 = *(v24 + 64);
    if (v21)
    {
      if (sqlite3_column_type(*(v24 + 64), 1) == 5)
      {
        v118 = xmmword_1B2259350;
        LOBYTE(v119) = 1;

        RowDecodingContext.init(row:key:)(v88, &v118, &v122);
        sub_1B21A2FC0();
        swift_allocError();
        v85 = v89;
        v118 = v122;
        v119 = v123;
        v120 = v124;
        v121 = v125;
        v86 = v21;
        v87 = 1;
        goto LABEL_92;
      }

      v26 = sqlite3_column_int64(v21, 1);
    }

    else
    {
      sub_1B21B9DB8();
    }

    if (*(v24 + 72) <= 2)
    {
      goto LABEL_89;
    }

    v110 = v26;
    v21 = *(v24 + 64);
    if (v21)
    {
      if (sqlite3_column_type(*(v24 + 64), 2) == 5)
      {
        v118 = xmmword_1B225B1F0;
        LOBYTE(v119) = 1;

        RowDecodingContext.init(row:key:)(v91, &v118, &v122);
        sub_1B21A2FC0();
        swift_allocError();
        v85 = v92;
        v118 = v122;
        v119 = v123;
        v120 = v124;
        v121 = v125;
        v93 = v21;
        v94 = 2;
LABEL_95:
        sub_1B21320F0(v93, v94, &v116);
        v114 = v116;
        v115 = v117;
        v90 = MEMORY[0x1E69E6158];
        goto LABEL_96;
      }

      v27 = v22;
      if (!sqlite3_column_text(v21, 2))
      {
        goto LABEL_86;
      }

      v28 = sub_1B2252400();
    }

    else
    {
      v27 = v22;
      v28 = sub_1B212614C();
    }

    v30 = v28;
    v31 = v29;
    if (*(v24 + 72) <= 3)
    {
      goto LABEL_89;
    }

    v21 = *(v24 + 64);
    if (v21)
    {
      if (sqlite3_column_type(*(v24 + 64), 3) == 5)
      {
        v118 = xmmword_1B225B340;
        LOBYTE(v119) = 1;

        RowDecodingContext.init(row:key:)(v95, &v118, &v122);
        sub_1B21A2FC0();
        swift_allocError();
        v85 = v96;
        v118 = v122;
        v119 = v123;
        v120 = v124;
        v121 = v125;
        v93 = v21;
        v94 = 3;
        goto LABEL_95;
      }

      if (!sqlite3_column_text(v21, 3))
      {
        goto LABEL_87;
      }

      v32 = sub_1B2252400();
    }

    else
    {
      v32 = sub_1B212614C();
    }

    if (*(v24 + 72) <= 4)
    {
      goto LABEL_89;
    }

    v108 = v32;
    v109 = v33;
    v21 = *(v24 + 64);
    if (!v21)
    {
      ++v22;
      v35 = sub_1B21B9EDC(4);
LABEL_48:
      v34 = v35;
      v21 = v36;
      goto LABEL_49;
    }

    ++v22;
    if (sqlite3_column_type(*(v24 + 64), 4) != 5)
    {
      if (!sqlite3_column_text(v21, 4))
      {
        goto LABEL_88;
      }

      v35 = sub_1B2252400();
      goto LABEL_48;
    }

    v34 = 0;
    v21 = 0;
LABEL_49:
    if (v104 & 1 | (v103 != v112))
    {
      v97 = v6;
      sub_1B21619D8(&qword_1EB7A0EF0, &unk_1B225B6E0);
      v51 = swift_allocObject();
      *(v51 + 16) = xmmword_1B22546B0;
      *(v51 + 32) = v108;
      *(v51 + 40) = v109;
      *(v51 + 48) = v34;
      *(v51 + 56) = v21;
      *(v51 + 64) = v110;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v56 = *(v23 + 16);
        sub_1B21622AC();
        v23 = v57;
      }

      a1 = v99;
      v52 = v23;
      v53 = *(v23 + 16);
      v147 = v52;
      if (v53 >= *(v52 + 24) >> 1)
      {
        sub_1B21622AC();
        v147 = v58;
      }

      v104 = 0;
      v54 = v147;
      *(v147 + 16) = v53 + 1;
      v55 = (v54 + 32 * v53);
      v55[4] = v112;
      v55[5] = v30;
      v55[6] = v31;
      v55[7] = v51;
      v103 = v112;
      v6 = v97;
      a2 = v102;
      v21 = v106;
    }

    else
    {

      v37 = *(v23 + 16);
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        if (!v37)
        {
          goto LABEL_83;
        }
      }

      else
      {
        sub_1B21956B4(v23);
        v23 = v47;
        if (!v37)
        {
          goto LABEL_83;
        }
      }

      if (v37 > *(v23 + 16))
      {
        goto LABEL_84;
      }

      v147 = v23;
      v38 = v23 + 32 * v37;
      v41 = *(v38 + 24);
      v40 = (v38 + 24);
      v39 = v41;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v40 = v41;
      v43 = v6;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v48 = *(v39 + 16);
        sub_1B2162374();
        v39 = v49;
        *v40 = v49;
      }

      v44 = *(v39 + 16);
      if (v44 >= *(v39 + 24) >> 1)
      {
        sub_1B2162374();
        *v40 = v50;
      }

      v45 = *v40;
      *(v45 + 16) = v44 + 1;
      v46 = (v45 + 40 * v44);
      v46[4] = v108;
      v46[5] = v109;
      v46[6] = v34;
      v46[7] = v21;
      v46[8] = v110;
      v22 = v27 + 1;
      v6 = v43;
      a2 = v102;
      a1 = v99;
      v21 = v106;
    }
  }

  if (*(v147 + 16))
  {
    sub_1B213EA54(a1, a2);
    goto LABEL_68;
  }

  v70 = sub_1B213E114(1);
  v78 = v70;
  sub_1B213EA54(a1, a2);
  if (v78)
  {
LABEL_68:
    v59 = v147;
    v21 = *(v147 + 16);
    if (v21)
    {
      *&v118 = MEMORY[0x1E69E7CC0];
      sub_1B216EC98();
      v60 = 0;
      v15 = v118;
      v61 = (v59 + 56);
      do
      {
        if (v60 >= *(v147 + 16))
        {
          goto LABEL_85;
        }

        v62 = *(v61 - 3);
        v63 = *(v61 - 2);
        v64 = *(v61 - 1);
        v65 = *v61;

        sub_1B21BC734(v62, v63, v64, v65, v107, &v122);

        v66 = v122;
        v67 = v123;
        *&v118 = v15;
        v68 = *(v15 + 16);
        if (v68 >= *(v15 + 24) >> 1)
        {
          v111 = v123;
          v113 = v122;
          sub_1B216EC98();
          v67 = v111;
          v66 = v113;
          v15 = v118;
        }

        v60 = (v60 + 1);
        *(v15 + 16) = v68 + 1;
        v69 = v15 + 32 * v68;
        *(v69 + 32) = v66;
        *(v69 + 48) = v67;
        v61 += 4;
      }

      while (v21 != v60);

      a2 = v102;
    }

    else
    {

      v15 = MEMORY[0x1E69E7CC0];
    }

    swift_beginAccess();
    v73 = *v98;
    v72 = v98[1];

    sub_1B213E2CC(v72, &v131);
    v74 = v131;
    v76 = v133;
    v75 = v134;
    swift_isUniquelyReferenced_nonNull_native();
    *&v118 = v75;
    sub_1B21AC020();
    v140 = v132;
    v139[1] = v74;
    v141 = v76;
    v142 = v118;
    v77 = v98[1];
    swift_isUniquelyReferenced_nonNull_native();
    *&v118 = v98[1];
    sub_1B2148D50();
    v98[1] = v118;
    sub_1B213EA54(a1, a2);
    swift_endAccess();
  }

  else
  {

    swift_beginAccess();
    v79 = *v98;
    sub_1B213E2CC(v98[1], &v127);
    v80 = v127;
    v81 = v130;
    v147 = v129;
    swift_isUniquelyReferenced_nonNull_native();
    *&v118 = v81;
    sub_1B21AC020();
    v144 = v128;
    v143 = v80;
    v145 = v147;
    v146 = v118;
    v82 = v98[1];
    swift_isUniquelyReferenced_nonNull_native();
    *&v118 = v98[1];
    sub_1B2148D50();
    v98[1] = v118;
    sub_1B213EA54(a1, a2);
    swift_endAccess();
    return 0;
  }

  return v15;
}

uint64_t sub_1B21BC734@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v46[0] = a4;

  sub_1B21BFA60(v46);
  v10 = v6;
  if (!v6)
  {
    v11 = v46[0];
    v12 = *(v46[0] + 16);
    v13 = MEMORY[0x1E69E7CC0];
    v43 = a2;
    v44 = a3;
    if (v12)
    {
      v48 = a5;
      v46[0] = MEMORY[0x1E69E7CC0];
      sub_1B216EF70(0, v12, 0);
      v14 = v46[0];
      v15 = (v11 + 56);
      do
      {
        v17 = *(v15 - 3);
        v16 = *(v15 - 2);
        v19 = *(v15 - 1);
        v18 = *v15;
        v46[0] = v14;
        v21 = *(v14 + 16);
        v20 = *(v14 + 24);

        if (v21 >= v20 >> 1)
        {
          sub_1B216EF70(v20 > 1, v21 + 1, 1);
          v14 = v46[0];
        }

        v15 += 5;
        *(v14 + 16) = v21 + 1;
        v22 = (v14 + 32 * v21);
        v22[4] = v17;
        v22[5] = v16;
        v22[6] = v19;
        v22[7] = v18;
        --v12;
      }

      while (v12);

      a2 = v43;
      a3 = v44;
      v13 = MEMORY[0x1E69E7CC0];
    }

    else
    {

      v14 = MEMORY[0x1E69E7CC0];
    }

    v23 = *(v14 + 16);
    v24 = v23 + 1;
    v25 = 56;
    while (--v24)
    {
      v26 = *(v14 + v25);
      v25 += 32;
      if (!v26)
      {
        Database.primaryKey(_:)(v46, a2);
        v37 = v46[0];
        if (v47)
        {
          if (v47 == 1)
          {
            v38 = v46[0];
          }

          else
          {
            v38 = &unk_1F2968E50;
          }
        }

        else
        {
          v39 = v46[1];
          sub_1B21619D8(&qword_1EB7A0F88, &unk_1B22546A0);
          v38 = swift_allocObject();
          v38[1] = xmmword_1B22546B0;
          *(v38 + 4) = v37;
          *(v38 + 5) = v39;
        }

        v29 = sub_1B21B95B0(v38, v14);

        goto LABEL_28;
      }
    }

    if (!v23)
    {

      v29 = MEMORY[0x1E69E7CC0];
LABEL_28:
      *a6 = a1;
      a6[1] = a2;
      a6[2] = a3;
      a6[3] = v29;
    }

    v46[0] = v13;
    v27 = v14;
    sub_1B216ECE4(0, v23, 0);
    v28 = 0;
    v29 = v46[0];
    v45 = v27;
    v10 = (v27 + 56);
    while (v28 < *(v45 + 16))
    {
      v30 = v23;
      v31 = *v10;
      if (!*v10)
      {
        goto LABEL_30;
      }

      v32 = *(v10 - 2);
      v48 = *(v10 - 3);
      v33 = *(v10 - 1);
      v46[0] = v29;
      v35 = *(v29 + 16);
      v34 = *(v29 + 24);

      if (v35 >= v34 >> 1)
      {
        sub_1B216ECE4((v34 > 1), v35 + 1, 1);
        v29 = v46[0];
      }

      ++v28;
      *(v29 + 16) = v35 + 1;
      v36 = (v29 + 32 * v35);
      v36[4] = v48;
      v36[5] = v32;
      v36[6] = v33;
      v36[7] = v31;
      v10 += 4;
      v23 = v30;
      if (v30 == v28)
      {

        a2 = v43;
        a3 = v44;
        goto LABEL_28;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t Database.foreignKeyViolations()()
{
  sub_1B2113180();
  v2 = sub_1B21473DC(v1, 0xD000000000000018, v0 | 0x8000000000000000, MEMORY[0x1E69E7CC0], MEMORY[0x1E69E7CC8], v4, sub_1B21BED30);
  sub_1B212AC5C(v4, &qword_1EB7A1370, &unk_1B2257580);

  return v2;
}

uint64_t Database.foreignKeyViolations(in:)()
{
  sub_1B2117A7C();
  result = sub_1B213DA88();
  if (v1)
  {
    return v0;
  }

  v5 = result;
  v20 = v2;
  v6 = 0;
  v7 = *(result + 16);
  for (i = (result + 40); ; i += 2)
  {
    if (v7 == v6)
    {

      sub_1B21AC298();
      sub_1B2118078();
      swift_allocError();
      sub_1B21AB9A4(v3, v20, v15);
      swift_willThrow();
      return v0;
    }

    if (v6 >= *(v5 + 16))
    {
      break;
    }

    v10 = *(i - 1);
    v9 = *i;
    v11 = sub_1B2117214();
    sub_1B213E100(v11, v12);
    if (sub_1B213E114(1))
    {

      v16 = sub_1B2117214();
      v0 = sub_1B21BCC98(v16, v17, v3, v20);
      v18 = sub_1B2117214();
      sub_1B213EA54(v18, v19);

      return v0;
    }

    v13 = sub_1B2117214();
    result = sub_1B213EA54(v13, v14);
    ++v6;
  }

  __break(1u);
  return result;
}

uint64_t sub_1B21BCC98(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1B2252CD0();

  *&v16[0] = 0x20414D47415250;
  *(&v16[0] + 1) = 0xE700000000000000;
  v9 = 0xE400000000000000;
  v10 = 1886217588;
  if (a2 != 1)
  {
    v10 = a1;
    v9 = a2;
  }

  if (a2)
  {
    v11 = v10;
  }

  else
  {
    v11 = 1852399981;
  }

  if (a2)
  {
    v12 = v9;
  }

  else
  {
    v12 = 0xE400000000000000;
  }

  sub_1B213E100(a1, a2);
  MEMORY[0x1B2741EB0](v11, v12);

  MEMORY[0x1B2741EB0](0xD000000000000013, 0x80000001B226E4E0);
  v18 = 34;
  v19 = 0xE100000000000000;
  MEMORY[0x1B2741EB0](a3, a4);
  MEMORY[0x1B2741EB0](34, 0xE100000000000000);
  MEMORY[0x1B2741EB0](34, 0xE100000000000000);

  MEMORY[0x1B2741EB0](41, 0xE100000000000000);
  v13 = v16[0];
  v17 = 0;
  memset(v16, 0, sizeof(v16));
  v14 = sub_1B21473DC(v4, v13, *(&v13 + 1), MEMORY[0x1E69E7CC0], MEMORY[0x1E69E7CC8], v16, sub_1B21BED30);
  sub_1B212AC5C(v16, &qword_1EB7A1370, &unk_1B2257580);

  return v14;
}

uint64_t sub_1B21BCE80()
{
  result = sub_1B223CD28(&v5);
  if (!v0)
  {
    v2 = v6;
    if (v6)
    {
      v9 = v8;
      v3 = v5;
      LOBYTE(v7) = v7 & 1;
      sub_1B21AC298();
      sub_1B2118078();
      swift_allocError();
      ForeignKeyViolation.databaseError(_:)(v4);
      sub_1B21C2698(v3, v2);
      return swift_willThrow();
    }
  }

  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> Database.checkForeignKeys(in:)(Swift::String in)
{
  Database.foreignKeyViolations(in:)();
  if (!v1)
  {
    sub_1B21BCE80();
  }
}

double ForeignKeyViolation.databaseError(_:)@<D0>(uint64_t a1@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  v5 = v1[2];
  v6 = *(v1 + 24);
  v8 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  sub_1B21C2AC0();
  v11 = ForeignKeyViolation.failureDescription(_:)(v10);
  *a1 = 787;
  *(a1 + 8) = v11;
  *(a1 + 16) = v12;
  result = 0.0;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0;
  return result;
}

uint64_t sub_1B21BD090()
{
  result = sub_1B213DA88();
  v2 = v0;
  if (v0)
  {
    return v34;
  }

  v3 = result;
  v4 = 0;
  v28 = result + 32;
  v29 = *(result + 16);
  v27 = result;
LABEL_3:
  if (v4 == v29)
  {

    return 0;
  }

  if (v4 < *(v3 + 16))
  {
    v5 = (v28 + 16 * v4);
    v6 = *v5;
    v7 = v5[1];
    v8 = sub_1B2116164();
    sub_1B213E100(v8, v9);
    sub_1B2116164();
    v10 = sub_1B213DF08();
    v30 = v4 + 1;
    v11 = sub_1B2116164();
    sub_1B213EA54(v11, v12);
    sub_1B2117214();
    v33 = sub_1B2252220();
    v31 = v13;
    v14 = 1 << *(v10 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v10 + 56);
    v17 = (v14 + 63) >> 6;

    while (v16)
    {
LABEL_15:
      v19 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
      v20 = (*(v10 + 48) + ((v2 << 12) | (v19 << 6)));
      v21 = v20[3];
      v34 = v20[2];
      v22 = v20[5];
      v23 = v20[7];
      if (*v20 != 0x656C626174 || v20[1] != 0xE500000000000000)
      {
        result = sub_1B22531F0();
        if ((result & 1) == 0)
        {
          continue;
        }
      }

      if (sub_1B2252220() == v33 && v25 == v31)
      {

LABEL_29:

        return v34;
      }

      v32 = sub_1B22531F0();

      if (v32)
      {

        goto LABEL_29;
      }
    }

    v4 = v30;
    while (1)
    {
      v18 = v2 + 1;
      if (__OFADD__(v2, 1))
      {
        break;
      }

      if (v18 >= v17)
      {

        v2 = 0;
        v3 = v27;
        goto LABEL_3;
      }

      v16 = *(v10 + 56 + 8 * v18);
      ++v2;
      if (v16)
      {
        v2 = v18;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_1B21BD3B8()
{
  sub_1B2117A7C();
  v2 = Database.tableExists(_:)(v1);
  if (!v3)
  {
    if (v2)
    {
      v5 = sub_1B2122C80();
      Database.primaryKey(_:)(v6, v5);
      v0 = v21;
      if (!v24)
      {
        sub_1B21619D8(&qword_1EB7A0F88, &unk_1B22546A0);
        sub_1B2113B74();
        v20 = swift_allocObject();
        *(v20 + 16) = xmmword_1B22546B0;
        *(v20 + 32) = v21;
        *(v20 + 40) = v23;
        return v20;
      }

      if (v24 == 1)
      {
        if ((v23 & 1) == 0)
        {
          return v0;
        }

        sub_1B213CC80();
      }

      else
      {
        v7 = v21;
        v8 = v23;
        v9 = 2;
      }

      sub_1B21424A0(v7, v8, v9);
      return &unk_1F2968EB0;
    }

    v10 = sub_1B2122C80();
    v12 = Database.columns(in:)(v10, v11);
    v13 = *(v12 + 16);
    if (v13)
    {
      v22 = MEMORY[0x1E69E7CC0];
      sub_1B2116B10();
      v0 = v22;
      v14 = (v12 + 64);
      do
      {
        v16 = *(v14 - 1);
        v15 = *v14;
        v18 = *(v22 + 16);
        v17 = *(v22 + 24);

        if (v18 >= v17 >> 1)
        {
          sub_1B2116B10();
        }

        *(v22 + 16) = v18 + 1;
        v19 = v22 + 16 * v18;
        *(v19 + 32) = v16;
        *(v19 + 40) = v15;
        v14 += 11;
        --v13;
      }

      while (v13);
    }

    else
    {

      return MEMORY[0x1E69E7CC0];
    }
  }

  return v0;
}

uint64_t ColumnInfo.name.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return sub_1B2112FD0();
}

uint64_t ColumnInfo.type.getter()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return sub_1B2112FD0();
}

uint64_t ColumnInfo.defaultValueSQL.getter()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);

  return sub_1B2112FD0();
}

uint64_t ColumnInfo.init(row:)@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_1B212F0BC(6580579, 0xE300000000000000);
  *(a1 + 24) = sub_1B212D190(1701667182, 0xE400000000000000);
  *(a1 + 32) = v2;
  *(a1 + 40) = sub_1B212D190(1701869940, 0xE400000000000000);
  *(a1 + 48) = v3;
  *(a1 + 56) = sub_1B21322A0(0x6C6C756E746F6ELL, 0xE700000000000000) & 1;
  *(a1 + 64) = sub_1B21496F4();
  *(a1 + 72) = v4;
  *(a1 + 80) = sub_1B212F0BC(27504, 0xE200000000000000);
  v5 = sub_1B2149894();
  v7 = v6;

  *(a1 + 8) = v5;
  *(a1 + 16) = v7 & 1;
  return result;
}

uint64_t IndexInfo.name.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return sub_1B2112FD0();
}

uint64_t ForeignKeyViolation.originTable.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return sub_1B2112FD0();
}

uint64_t ForeignKeyViolation.originTable.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t ForeignKeyViolation.originRowID.getter()
{
  result = *(v0 + 16);
  v2 = *(v0 + 24);
  return result;
}

uint64_t ForeignKeyViolation.originRowID.setter(uint64_t result, char a2)
{
  *(v2 + 16) = result;
  *(v2 + 24) = a2 & 1;
  return result;
}

uint64_t ForeignKeyViolation.destinationTable.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return sub_1B2112FD0();
}

uint64_t ForeignKeyViolation.destinationTable.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t ForeignKeyViolation.init(row:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 72) <= 0)
  {
    goto LABEL_27;
  }

  v2 = a1;
  v4 = *(a1 + 64);
  if (v4)
  {
    if (sqlite3_column_type(*(a1 + 64), 0) == 5)
    {
LABEL_30:
      v51[0] = 0uLL;
      v19 = sub_1B213CF20();
      RowDecodingContext.init(row:key:)(v19, v51, v52);
      sub_1B21A2FC0();
      sub_1B2118078();
      swift_allocError();
      v20 = sub_1B2117CCC();
      v22 = 0;
LABEL_32:
      v24 = sub_1B21320F0(v20, v22, v21);
      sub_1B21C2AD4(v24, v25, v26, v27, v28, v29, v30, v31, v44, v45, v46, v47, v48, v49, v50);
      v32 = MEMORY[0x1E69E6158];
LABEL_34:
      sub_1B2183238(v32, v51, &v46, v2);
      sub_1B2113A44(v46, v47, v48);
      sub_1B218450C(v52);
      swift_willThrow();
      while (1)
      {
        sub_1B213CE18();
        swift_unexpectedError();
        __break(1u);
      }
    }

    if (!sqlite3_column_text(v4, 0))
    {
      __break(1u);
      goto LABEL_26;
    }

    v5 = sub_1B2252400();
  }

  else
  {
    v5 = sub_1B212614C();
  }

  *a2 = v5;
  *(a2 + 8) = v6;
  if (*(v2 + 72) <= 1)
  {
    sub_1B2111608();
    v18 = 803;
    goto LABEL_29;
  }

  v7 = *(v2 + 64);
  if (v7)
  {
    v8 = 1;
    if (sqlite3_column_type(*(v2 + 64), 1) == 5)
    {
      v9 = 0;
    }

    else
    {
      v9 = sqlite3_column_int64(v7, 1);
      v8 = 0;
    }
  }

  else
  {
    sub_1B21B9F7C();
    v8 = v10;
  }

  *(a2 + 16) = v9;
  *(a2 + 24) = v8 & 1;
  if (*(v2 + 72) <= 2)
  {
LABEL_27:
    sub_1B2111608();
    v18 = 825;
LABEL_29:
    v44 = v18;
    sub_1B2112A88();
    sub_1B2252EC0();
    __break(1u);
    goto LABEL_30;
  }

  v11 = *(v2 + 64);
  if (v11)
  {
    if (sqlite3_column_type(*(v2 + 64), 2) == 5)
    {
      v51[0] = xmmword_1B225B1F0;
      v23 = sub_1B213CF20();
      RowDecodingContext.init(row:key:)(v23, v51, v52);
      sub_1B21A2FC0();
      sub_1B2118078();
      swift_allocError();
      v20 = sub_1B2117CCC();
      v22 = 2;
      goto LABEL_32;
    }

    if (sqlite3_column_text(v11, 2))
    {
      v12 = sub_1B2252400();
      goto LABEL_19;
    }

LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v12 = sub_1B212614C();
LABEL_19:
  *(a2 + 32) = v12;
  *(a2 + 40) = v13;
  if (*(v2 + 72) <= 3)
  {
    goto LABEL_27;
  }

  v14 = *(v2 + 64);
  if (!v14)
  {
    sub_1B21B9DB8();
    goto LABEL_24;
  }

  if (sqlite3_column_type(*(v2 + 64), 3) == 5)
  {
    v51[0] = xmmword_1B225B340;
    v33 = sub_1B213CF20();
    RowDecodingContext.init(row:key:)(v33, v51, v52);
    sub_1B21A2FC0();
    sub_1B2118078();
    swift_allocError();
    v34 = sub_1B2117CCC();
    v36 = sub_1B21320F0(v34, 3, v35);
    sub_1B21C2AD4(v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50);
    v32 = MEMORY[0x1E69E6530];
    goto LABEL_34;
  }

  v15 = sqlite3_column_int64(v14, 3);
LABEL_24:
  v16 = v15;

  *(a2 + 48) = v16;
  return result;
}

unint64_t ForeignKeyViolation.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[4];
  v4 = v0[5];
  if (v0[3])
  {
    sub_1B2252CD0();

    v12 = 0xD000000000000028;
    v5 = sub_1B2113B50();
    MEMORY[0x1B2741EB0](v5);
    v6 = sub_1B2124218();
    MEMORY[0x1B2741EB0](v6);
    MEMORY[0x1B2741EB0](v3, v4);
  }

  else
  {
    v7 = v0[2];
    v12 = 0;
    sub_1B2252CD0();
    sub_1B212D858();
    MEMORY[0x1B2741EB0](0xD000000000000028);
    v8 = sub_1B2113B50();
    MEMORY[0x1B2741EB0](v8);
    v9 = sub_1B2124218();
    MEMORY[0x1B2741EB0](v9);
    MEMORY[0x1B2741EB0](v3, v4);
    MEMORY[0x1B2741EB0](0x776F72206E69202CLL, 0xEB00000000206469);
    v10 = sub_1B2252FD0();
    MEMORY[0x1B2741EB0](v10);
  }

  return v12;
}

uint64_t ForeignKeyViolation.failureDescription(_:)(uint64_t a1)
{
  v3 = v1[1];
  v40 = *v1;
  v41 = v3;
  v42 = v1[2];
  v43 = *(v1 + 6);
  v4 = v3;
  v5 = BYTE8(v3);
  if (BYTE8(v3))
  {
    v6 = 0;
  }

  else
  {
    v39[0] = v41;
    result = sub_1B21BE1FC(v39, a1, &v40, &v37, &v33);
    if (v2)
    {
      return result;
    }

    v6 = v33;
  }

  v8 = v40;
  v9 = Database.foreignKeys(on:)(v40, *(&v40 + 1));
  if (v2)
  {
  }

  v32 = v4;
  v10 = (v9 + 32);
  v11 = v43;
  v12 = *(v9 + 16) + 1;
  do
  {
    if (!--v12)
    {

      goto LABEL_13;
    }

    v13 = v10 + 4;
    v14 = *v10;
    v10 += 4;
  }

  while (v14 != v43);
  v15 = *(v13 - 2);
  v31 = *(v13 - 3);
  v16 = *(v13 - 1);

  if (v15)
  {
    v33 = 0;
    v34 = 0xE000000000000000;
    sub_1B2252CD0();
    v37 = v33;
    v38 = v34;
    sub_1B212D858();
    MEMORY[0x1B2741EB0](0xD000000000000028);
    MEMORY[0x1B2741EB0](v8, *(&v8 + 1));
    MEMORY[0x1B2741EB0](40, 0xE100000000000000);
    v33 = v11;
    v34 = v31;
    v35 = v15;
    v36 = v16;
    v44 = ForeignKeyInfo.originColumns.getter();
    sub_1B21619D8(&qword_1EB7A0DA0, &qword_1B2254340);
    sub_1B211AB74(qword_1ED85E790, &qword_1EB7A0DA0, &qword_1B2254340);
    v17 = sub_1B2252250();
    v19 = v18;

    MEMORY[0x1B2741EB0](v17, v19);

    MEMORY[0x1B2741EB0](0x206F742029, 0xE500000000000000);
    MEMORY[0x1B2741EB0](v42, *(&v42 + 1));
    MEMORY[0x1B2741EB0](40, 0xE100000000000000);
    v33 = v11;
    v34 = v31;
    v35 = v15;
    v36 = v16;
    v20 = ForeignKeyInfo.destinationColumns.getter();
    sub_1B21C20A4(v11, v31, v15);
    v44 = v20;
    v21 = sub_1B2252250();
    v23 = v22;

    MEMORY[0x1B2741EB0](v21, v23);

    MEMORY[0x1B2741EB0](41, 0xE100000000000000);
    v24 = v37;
    v25 = v38;
    goto LABEL_14;
  }

LABEL_13:
  v33 = 0;
  v34 = 0xE000000000000000;
  sub_1B2252CD0();

  v33 = 0xD000000000000028;
  v34 = 0x80000001B226E430;
  MEMORY[0x1B2741EB0](v8, *(&v8 + 1));
  v26 = sub_1B2124218();
  MEMORY[0x1B2741EB0](v26);
  MEMORY[0x1B2741EB0](v42, *(&v42 + 1));
  v24 = v33;
  v25 = v34;
LABEL_14:
  v39[0] = v24;
  v39[1] = v25;
  if (v6)
  {
    v33 = 0x206E69202CLL;
    v34 = 0xE500000000000000;

    v27 = Row.description.getter();
    v29 = v28;

    MEMORY[0x1B2741EB0](v27, v29);

    MEMORY[0x1B2741EB0](v33, v34);

LABEL_18:

    return v39[0];
  }

  if ((v5 & 1) == 0)
  {
    v33 = 0x776F72206E69202CLL;
    v34 = 0xEB00000000206469;
    v37 = v32;
    v30 = sub_1B2252FD0();
    MEMORY[0x1B2741EB0](v30);

    MEMORY[0x1B2741EB0](v33, v34);
    goto LABEL_18;
  }

  return v39[0];
}

uint64_t sub_1B21BE1FC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, void *a4@<X3>, uint64_t *a5@<X8>)
{
  v10 = *a1;
  type metadata accessor for Row();
  sub_1B2252CD0();

  strcpy(v15, "SELECT * FROM ");
  HIBYTE(v15[0]) = -18;
  MEMORY[0x1B2741EB0](*a3, a3[1]);
  MEMORY[0x1B2741EB0](34, 0xE100000000000000);
  MEMORY[0x1B2741EB0](34, 0xE100000000000000);

  MEMORY[0x1B2741EB0](0x7220455245485720, 0xEF203D206469776FLL);
  v11 = sub_1B2252FD0();
  MEMORY[0x1B2741EB0](v11);

  v12 = v15[0];
  v16 = 0;
  memset(v15, 0, sizeof(v15));
  v17[0] = MEMORY[0x1E69E7CC0];
  v17[1] = MEMORY[0x1E69E7CC8];
  v13 = static Row.fetchOne(_:sql:arguments:adapter:)(a2, v12, *(&v12 + 1), v17, v15);

  result = sub_1B212AC5C(v15, &qword_1EB7A1370, &unk_1B2257580);
  if (v5)
  {
    *a4 = v5;
  }

  else
  {
    *a5 = v13;
  }

  return result;
}

uint64_t ForeignKeyInfo.originColumns.getter()
{
  v3 = *(v0 + 24);
  v4 = MEMORY[0x1E69E7CC0];
  if (*(v3 + 16))
  {
    sub_1B21C2A9C();
    v4 = v7;
    do
    {
      sub_1B21C2A78();
      if (v1 >= v2 >> 1)
      {
        sub_1B213CC80();
        sub_1B2116B10();
        v4 = v7;
      }

      sub_1B2146AC0();
    }

    while (!v5);
  }

  return v4;
}

uint64_t ForeignKeyInfo.destinationColumns.getter()
{
  v3 = *(v0 + 24);
  v4 = MEMORY[0x1E69E7CC0];
  if (*(v3 + 16))
  {
    sub_1B21C2A9C();
    v4 = v7;
    do
    {
      sub_1B21C2A78();
      if (v1 >= v2 >> 1)
      {
        sub_1B213CC80();
        sub_1B2116B10();
        v4 = v7;
      }

      sub_1B2146AC0();
    }

    while (!v5);
  }

  return v4;
}

uint64_t sub_1B21BE504()
{
  v1 = *v0;
  if (!*(v0 + 16))
  {
    goto LABEL_7;
  }

  result = 0x6469776F72;
  if (*(v0 + 16) == 1 && (v0[1] & 1) == 0)
  {
    if (*(v1 + 16) != 1)
    {
      return 0;
    }

    v4 = v1 + 32;
    v1 = *(v1 + 32);
    v3 = *(v4 + 8);
LABEL_7:

    return v1;
  }

  return result;
}

uint64_t ForeignKeyInfo.destinationTable.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return sub_1B2112FD0();
}

uint64_t sub_1B21BE5E4()
{
  sub_1B211D964();
  v3 = *v2 == *v0 && v1[1] == v0[1];
  if (!v3 && (sub_1B22531F0() & 1) == 0)
  {
    return 0;
  }

  v4 = v1[2] == v0[2] && v1[3] == v0[3];
  if (!v4 && (sub_1B22531F0() & 1) == 0)
  {
    return 0;
  }

  v5 = v1[5];
  v6 = v0[5];
  if (v5)
  {
    if (!v6)
    {
      return 0;
    }

    v7 = v1[4] == v0[4] && v5 == v6;
    if (!v7 && (sub_1B22531F0() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v6)
  {
    return 0;
  }

  v8 = v1[7];
  v9 = v0[7];
  if (v8)
  {
    if (v9)
    {
      v10 = v1[6] == v0[6] && v8 == v9;
      if (v10 || (sub_1B22531F0() & 1) != 0)
      {
        return 1;
      }
    }
  }

  else if (!v9)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_1B21BE6C0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v3 || (sub_1B22531F0() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 1701667182 && a2 == 0xE400000000000000;
    if (v6 || (sub_1B22531F0() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x656D616E5F6C6274 && a2 == 0xE800000000000000;
      if (v7 || (sub_1B22531F0() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 7106931 && a2 == 0xE300000000000000)
      {

        return 3;
      }

      else
      {
        v9 = sub_1B22531F0();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

uint64_t sub_1B21BE828@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B21BE6C0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B21BE870@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1B21BE820();
  *a1 = result;
  return result;
}

uint64_t sub_1B21BE898(uint64_t a1)
{
  v2 = sub_1B2148074();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B21BE8D4(uint64_t a1)
{
  v2 = sub_1B2148074();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B21BE910(void *a1)
{
  v3 = v1;
  v5 = sub_1B21619D8(&qword_1EB7A2210, qword_1B225B970);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v20[-v8];
  v10 = a1[4];
  sub_1B21139A0(a1, a1[3]);
  sub_1B2148074();
  sub_1B22534C0();
  v11 = *v3;
  v12 = v3[1];
  v20[15] = 0;
  sub_1B2252F90();
  if (!v2)
  {
    v13 = v3[2];
    v14 = v3[3];
    v20[14] = 1;
    sub_1B2252F90();
    v15 = v3[4];
    v16 = v3[5];
    v20[13] = 2;
    sub_1B2252F80();
    v17 = v3[6];
    v18 = v3[7];
    v20[12] = 3;
    sub_1B2252F80();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1B21BEAC4()
{
  sub_1B2253420();
  sub_1B21483F8();
  return sub_1B2253470();
}

double sub_1B21BEB04@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1B2147D80(a1, v7);
  if (!v2)
  {
    v5 = v7[1];
    *a2 = v7[0];
    a2[1] = v5;
    result = *&v8;
    v6 = v9;
    a2[2] = v8;
    a2[3] = v6;
  }

  return result;
}

uint64_t sub_1B21BEB48(void *a1)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  return sub_1B21BE910(a1);
}

uint64_t sub_1B21BEB84()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = v0[2];
  v5 = v0[3];
  return sub_1B21BEAC4();
}

uint64_t sub_1B21BEBC0()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = v0[2];
  v5 = v0[3];
  return sub_1B21483F8();
}

uint64_t sub_1B21BEBFC()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = v0[2];
  v5 = v0[3];
  sub_1B2253420();
  sub_1B21483F8();
  return sub_1B2253470();
}

double sub_1B21BEC4C@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  type metadata accessor for RowDecoder();
  swift_initStackObject();
  sub_1B2147C54(a1, v7);

  v4 = v7[1];
  *a2 = v7[0];
  a2[1] = v4;
  result = *&v8;
  v6 = v9;
  a2[2] = v8;
  a2[3] = v6;
  return result;
}

uint64_t sub_1B21BECE4(__int128 *a1)
{
  sub_1B211F19C(a1);
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  return sub_1B21BE5E4() & 1;
}

uint64_t sub_1B21BED30(uint64_t a1, uint64_t *a2)
{
  result = sub_1B2146A54(&v7);
  if (v2)
  {
    return a2;
  }

  if (!v8[5])
  {
    sub_1B2122784(v8, v6);
    sub_1B21619D8(&qword_1EB7A2200, &qword_1B225B6D8);
    swift_allocObject();

    a2 = sub_1B214786C(v5, 0, 0, v6);
    sub_1B2142D18(&v7);
    return a2;
  }

  __break(1u);
  return result;
}

void sub_1B21BF790(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v105 = a3;
  v4 = v3;
  v8 = v3[5];
  v7 = v3[6];
  sub_1B21139A0(v3 + 2, v8);
  v9 = (*(v7 + 88))(a1, a2, v8, v7);
  if (v10)
  {
    sub_1B2122220();

    sub_1B21234B8(v11, v12, v13, v14, v15, v16, v17, v18, v69, v74, v78, v82, v85, v88, v90, v92, v94, v95, v96, v97, v98, *(&v98 + 1), v99, v100, v101);
    sub_1B21A2FC0();
    sub_1B2118078();
    swift_allocError();
    v20 = static RowDecodingError.columnNotFound(_:context:)(a1, a2, &v94, v19);
    sub_1B2116188(v20, v21, v22, v23, v24, v25, v26, v27, v70, v75, v79, v83, v86, v89, v91, v93, v94, v95, v96, v97, v98);
LABEL_10:
    sub_1B218450C(&v101);
    swift_willThrow();
    return;
  }

  v28 = v9;
  v29 = v4[8];
  if (!v29)
  {
    sub_1B21B9DB8();
    return;
  }

  sub_1B212CFF8();
  if (v30 != v31)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return;
  }

  sub_1B212CE28();
  if (!(v30 ^ v31 | v32))
  {
    goto LABEL_14;
  }

  if (sqlite3_column_type(v29, v28) == 5 || sqlite3_column_int64(v29, v28) < 0)
  {
    sub_1B21120CC();

    sub_1B21C2A60(v33, v34, v35, v36, v37, v38, v39, v40, v69);
    sub_1B21A2FC0();
    sub_1B2118078();
    swift_allocError();
    sub_1B2115158(v41, v42, v43, v44, v45, v46, v47, v48, v71, *&v74, *&v78, *&v82, *&v85, *&v88, *&v90, *&v92, *&v94, *&v95, *&v96, *&v97, *&v98, *(&v98 + 1), *&v99, *&v100, *&v101, *(&v101 + 1), v102, v103, v104);
    v50 = sub_1B21320F0(v29, v28, v49);
    sub_1B2116654(v50, v51, v52, v53, v54, v55, v56, v57, v72, v76, v80, v84, v87);
    sub_1B21143AC();
    v61 = sub_1B2183238(v105, v58, v59, v60);
    sub_1B2144090(v61, v62, v63, v64, v65, v66, v67, v68, v73, v77, v81);
    goto LABEL_10;
  }
}

unint64_t sub_1B21BF944(unint64_t result, char a2, uint64_t a3)
{
  if (a2)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > result)
    {
      return result;
    }

    __break(1u);
  }

  return result;
}

unint64_t sub_1B21BF968(unint64_t result, char a2, uint64_t a3)
{
  if (a2)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*(a3 + 16) > result)
    {
      return result;
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1B21BF988(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v1 = result;
    if (result)
    {
      type metadata accessor for Row();
      result = sub_1B2252610();
      *((result & 0xFFFFFFFFFFFFFF8) + 0x10) = v1;
    }

    else
    {
      return MEMORY[0x1E69E7CC0];
    }
  }

  return result;
}

uint64_t sub_1B21BF9E4(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_1B21A1588(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_1B21BFACC(v6);
  return sub_1B2252D70();
}

uint64_t sub_1B21BFA60(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1B21A15A0(v2);
    v2 = v3;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  result = sub_1B21BFBAC(v6);
  *a1 = v2;
  return result;
}

uint64_t sub_1B21BFACC(uint64_t *a1)
{
  v3 = a1[1];
  result = sub_1B2252FC0();
  if (result < v3)
  {
    v5 = result;
    v6 = sub_1B21BF988(v3 / 2);
    v8[0] = v7;
    v8[1] = (v3 / 2);
    result = sub_1B21C0888(v8, v9, a1, v5);
    if (v1)
    {
      if (v3 < -1)
      {
        __break(1u);
        goto LABEL_5;
      }
    }

    else if (v3 < -1)
    {
LABEL_12:
      __break(1u);
      return result;
    }

    *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = 0;
  }

LABEL_5:
  if (v3 < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (v3)
  {
    return sub_1B21BFCB0(0, v3, 1, a1);
  }

  return result;
}

uint64_t sub_1B21BFBAC(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1B2252FC0();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        sub_1B21619D8(&qword_1EB7A0EF8, &qword_1B2254610);
        v6 = sub_1B2252610();
        *(v6 + 16) = v5;
      }

      v7[0] = (v6 + 32);
      v7[1] = v5;
      sub_1B21C1104(v7, v8, a1, v4);
      *(v6 + 16) = 0;
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
    return sub_1B21BFDA8(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1B21BFCB0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v5 = a3;
    v6 = *a4;
    v7 = (*a4 + 8 * a3 - 8);
    v8 = result - a3;
LABEL_4:
    v9 = *(v6 + 8 * v5);
    v10 = v8;
    v15 = v7;
    while (1)
    {
      v17 = v9;
      v16 = *v7;

      v11 = sub_1B21BB15C(&v17, &v16);

      if (v4)
      {
        break;
      }

      if (v11)
      {
        if (!v6)
        {
          __break(1u);
          return result;
        }

        v12 = *v7;
        v9 = v7[1];
        *v7 = v9;
        v7[1] = v12;
        --v7;
        if (!__CFADD__(v10++, 1))
        {
          continue;
        }
      }

      ++v5;
      v7 = v15 + 1;
      --v8;
      if (v5 != a2)
      {
        goto LABEL_4;
      }

      return result;
    }
  }

  return result;
}

uint64_t sub_1B21BFDA8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 40 * a3 - 8;
    v6 = result - a3;
    while (2)
    {
      v7 = *(v4 + 40 * a3 + 32);
      v8 = v6;
      v9 = v5;
      do
      {
        if (v7 >= *v9)
        {
          break;
        }

        if (!v4)
        {
          __break(1u);
          return result;
        }

        v10 = *(v9 + 8);
        v11 = *(v9 + 16);
        v12 = *(v9 - 16);
        *(v9 + 8) = *(v9 - 32);
        v13 = *(v9 + 24);
        *(v9 + 24) = v12;
        *(v9 + 40) = *v9;
        *(v9 - 32) = v10;
        *(v9 - 24) = v11;
        *(v9 - 16) = v13;
        *v9 = v7;
        v9 -= 40;
      }

      while (!__CFADD__(v8++, 1));
      ++a3;
      v5 += 40;
      --v6;
      if (a3 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_1B21BFE34(uint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v82 = MEMORY[0x1E69E7CC0];
  v5 = a3[1];
  if (v5 >= 1)
  {
    v6 = 0;
    v7 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v8 = v6++;
      if (v6 < v5)
      {
        v9 = *(*a3 + 88 * v6);
        v10 = 88 * v8;
        v11 = (*a3 + 88 * v8);
        v14 = *v11;
        v13 = v11 + 22;
        v12 = v14;
        v15 = v8 + 2;
        v16 = v9;
        while (1)
        {
          v17 = v15;
          if (++v6 >= v5)
          {
            break;
          }

          v18 = *v13;
          v13 += 11;
          v19 = (v9 < v12) ^ (v18 >= v16);
          ++v15;
          v16 = v18;
          if ((v19 & 1) == 0)
          {
            goto LABEL_9;
          }
        }

        v6 = v5;
LABEL_9:
        if (v9 < v12)
        {
          if (v6 < v8)
          {
            goto LABEL_110;
          }

          if (v8 < v6)
          {
            if (v5 >= v17)
            {
              v5 = v17;
            }

            v20 = 88 * v5 - 88;
            v21 = v6;
            v22 = v8;
            do
            {
              if (v22 != --v21)
              {
                v23 = *a3;
                if (!*a3)
                {
                  goto LABEL_115;
                }

                memcpy(__dst, (v23 + v10), sizeof(__dst));
                memmove((v23 + v10), (v23 + v20), 0x58uLL);
                memcpy((v23 + v20), __dst, 0x58uLL);
              }

              ++v22;
              v20 -= 88;
              v10 += 88;
            }

            while (v22 < v21);
            v5 = a3[1];
          }
        }
      }

      if (v6 < v5)
      {
        if (__OFSUB__(v6, v8))
        {
          goto LABEL_109;
        }

        if (v6 - v8 < a4)
        {
          if (__OFADD__(v8, a4))
          {
            goto LABEL_111;
          }

          if (v8 + a4 >= v5)
          {
            v24 = v5;
          }

          else
          {
            v24 = v8 + a4;
          }

          if (v24 < v8)
          {
LABEL_112:
            __break(1u);
LABEL_113:
            __break(1u);
LABEL_114:
            __break(1u);
LABEL_115:
            __break(1u);
LABEL_116:
            __break(1u);
LABEL_117:
            __break(1u);
            return;
          }

          if (v6 != v24)
          {
            v78 = v7;
            v25 = *a3;
            v26 = *a3 + 88 * v6;
            v27 = v8 - v6;
            do
            {
              v28 = v27;
              v29 = v26;
              do
              {
                if (*v29 >= *(v29 - 11))
                {
                  break;
                }

                if (!v25)
                {
                  goto LABEL_113;
                }

                memcpy(__dst, v29, sizeof(__dst));
                memcpy(v29, v29 - 11, 0x58uLL);
                memcpy(v29 - 11, __dst, 0x58uLL);
                v29 -= 11;
              }

              while (!__CFADD__(v28++, 1));
              ++v6;
              v26 += 88;
              --v27;
            }

            while (v6 != v24);
            v6 = v24;
            v7 = v78;
          }
        }
      }

      if (v6 < v8)
      {
        goto LABEL_108;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1B2161EC4(0, v7[2] + 1, 1, v7);
        v7 = v74;
      }

      v32 = v7[2];
      v31 = v7[3];
      v33 = v32 + 1;
      if (v32 >= v31 >> 1)
      {
        sub_1B2161EC4(v31 > 1, v32 + 1, 1, v7);
        v7 = v75;
      }

      v7[2] = v33;
      v34 = v7 + 4;
      v35 = &v7[2 * v32 + 4];
      *v35 = v8;
      v35[1] = v6;
      v79 = *a1;
      if (!*a1)
      {
        goto LABEL_116;
      }

      if (v32)
      {
        while (1)
        {
          v36 = v33 - 1;
          v37 = &v34[2 * v33 - 2];
          v38 = &v7[2 * v33];
          if (v33 >= 4)
          {
            break;
          }

          if (v33 == 3)
          {
            v39 = v7[4];
            v40 = v7[5];
            v49 = __OFSUB__(v40, v39);
            v41 = v40 - v39;
            v42 = v49;
LABEL_57:
            if (v42)
            {
              goto LABEL_98;
            }

            v54 = *v38;
            v53 = v38[1];
            v55 = __OFSUB__(v53, v54);
            v56 = v53 - v54;
            v57 = v55;
            if (v55)
            {
              goto LABEL_101;
            }

            v58 = v37[1];
            v59 = v58 - *v37;
            if (__OFSUB__(v58, *v37))
            {
              goto LABEL_104;
            }

            if (__OFADD__(v56, v59))
            {
              goto LABEL_106;
            }

            if (v56 + v59 >= v41)
            {
              if (v41 < v59)
              {
                v36 = v33 - 2;
              }

              goto LABEL_79;
            }

            goto LABEL_72;
          }

          if (v33 < 2)
          {
            goto LABEL_100;
          }

          v61 = *v38;
          v60 = v38[1];
          v49 = __OFSUB__(v60, v61);
          v56 = v60 - v61;
          v57 = v49;
LABEL_72:
          if (v57)
          {
            goto LABEL_103;
          }

          v63 = *v37;
          v62 = v37[1];
          v49 = __OFSUB__(v62, v63);
          v64 = v62 - v63;
          if (v49)
          {
            goto LABEL_105;
          }

          if (v64 < v56)
          {
            goto LABEL_86;
          }

LABEL_79:
          if (v36 - 1 >= v33)
          {
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
LABEL_98:
            __break(1u);
LABEL_99:
            __break(1u);
LABEL_100:
            __break(1u);
LABEL_101:
            __break(1u);
LABEL_102:
            __break(1u);
LABEL_103:
            __break(1u);
LABEL_104:
            __break(1u);
LABEL_105:
            __break(1u);
LABEL_106:
            __break(1u);
LABEL_107:
            __break(1u);
LABEL_108:
            __break(1u);
LABEL_109:
            __break(1u);
LABEL_110:
            __break(1u);
LABEL_111:
            __break(1u);
            goto LABEL_112;
          }

          if (!*a3)
          {
            goto LABEL_114;
          }

          v68 = v7;
          v69 = &v34[2 * v36 - 2];
          v70 = *v69;
          v71 = &v34[2 * v36];
          v72 = v71[1];
          sub_1B21C18A4((*a3 + 88 * *v69), (*a3 + 88 * *v71), (*a3 + 88 * v72), v79);
          if (v4)
          {
            goto LABEL_91;
          }

          if (v72 < v70)
          {
            goto LABEL_93;
          }

          v73 = v68[2];
          if (v36 > v73)
          {
            goto LABEL_94;
          }

          *v69 = v70;
          v69[1] = v72;
          if (v36 >= v73)
          {
            goto LABEL_95;
          }

          v33 = v73 - 1;
          memmove(&v34[2 * v36], v71 + 2, 16 * (v73 - 1 - v36));
          v7 = v68;
          v68[2] = v73 - 1;
          if (v73 <= 2)
          {
            goto LABEL_86;
          }
        }

        v43 = &v34[2 * v33];
        v44 = *(v43 - 8);
        v45 = *(v43 - 7);
        v49 = __OFSUB__(v45, v44);
        v46 = v45 - v44;
        if (v49)
        {
          goto LABEL_96;
        }

        v48 = *(v43 - 6);
        v47 = *(v43 - 5);
        v49 = __OFSUB__(v47, v48);
        v41 = v47 - v48;
        v42 = v49;
        if (v49)
        {
          goto LABEL_97;
        }

        v50 = v38[1];
        v51 = v50 - *v38;
        if (__OFSUB__(v50, *v38))
        {
          goto LABEL_99;
        }

        v49 = __OFADD__(v41, v51);
        v52 = v41 + v51;
        if (v49)
        {
          goto LABEL_102;
        }

        if (v52 >= v46)
        {
          v66 = *v37;
          v65 = v37[1];
          v49 = __OFSUB__(v65, v66);
          v67 = v65 - v66;
          if (v49)
          {
            goto LABEL_107;
          }

          if (v41 < v67)
          {
            v36 = v33 - 2;
          }

          goto LABEL_79;
        }

        goto LABEL_57;
      }

LABEL_86:
      v5 = a3[1];
      if (v6 >= v5)
      {
        v82 = v7;
        break;
      }
    }
  }

  if (!*a1)
  {
    goto LABEL_117;
  }

  sub_1B21C1630(&v82, *a1, a3, sub_1B21C18A4);
LABEL_91:
}

void sub_1B21C035C(uint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v81 = MEMORY[0x1E69E7CC0];
  v5 = a3[1];
  if (v5 >= 1)
  {
    v6 = 0;
    v7 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v8 = v6++;
      if (v6 < v5)
      {
        v9 = *(*a3 + 88 * v6 + 80);
        v10 = 88 * v8;
        v11 = *a3 + 88 * v8;
        v12 = *(v11 + 80);
        v13 = (v11 + 256);
        v14 = v8 + 2;
        v15 = v9;
        while (1)
        {
          v16 = v14;
          if (++v6 >= v5)
          {
            break;
          }

          v17 = *v13;
          v13 += 11;
          v18 = (v9 < v12) ^ (v17 >= v15);
          ++v14;
          v15 = v17;
          if ((v18 & 1) == 0)
          {
            goto LABEL_9;
          }
        }

        v6 = v5;
LABEL_9:
        if (v9 < v12)
        {
          if (v6 < v8)
          {
            goto LABEL_110;
          }

          if (v8 < v6)
          {
            if (v5 >= v16)
            {
              v5 = v16;
            }

            v19 = 88 * v5 - 88;
            v20 = v6;
            v21 = v8;
            do
            {
              if (v21 != --v20)
              {
                v22 = *a3;
                if (!*a3)
                {
                  goto LABEL_115;
                }

                memcpy(__dst, (v22 + v10), sizeof(__dst));
                memmove((v22 + v10), (v22 + v19), 0x58uLL);
                memcpy((v22 + v19), __dst, 0x58uLL);
              }

              ++v21;
              v19 -= 88;
              v10 += 88;
            }

            while (v21 < v20);
            v5 = a3[1];
          }
        }
      }

      if (v6 < v5)
      {
        if (__OFSUB__(v6, v8))
        {
          goto LABEL_109;
        }

        if (v6 - v8 < a4)
        {
          if (__OFADD__(v8, a4))
          {
            goto LABEL_111;
          }

          if (v8 + a4 >= v5)
          {
            v23 = v5;
          }

          else
          {
            v23 = v8 + a4;
          }

          if (v23 < v8)
          {
LABEL_112:
            __break(1u);
LABEL_113:
            __break(1u);
LABEL_114:
            __break(1u);
LABEL_115:
            __break(1u);
LABEL_116:
            __break(1u);
LABEL_117:
            __break(1u);
            return;
          }

          if (v6 != v23)
          {
            v77 = v7;
            v24 = *a3;
            v25 = *a3 + 88 * v6;
            v26 = v8 - v6;
            do
            {
              v27 = v26;
              v28 = v25;
              do
              {
                if (v28[10] >= *(v28 - 1))
                {
                  break;
                }

                if (!v24)
                {
                  goto LABEL_113;
                }

                memcpy(__dst, v28, sizeof(__dst));
                memcpy(v28, v28 - 11, 0x58uLL);
                memcpy(v28 - 11, __dst, 0x58uLL);
                v28 -= 11;
              }

              while (!__CFADD__(v27++, 1));
              ++v6;
              v25 += 88;
              --v26;
            }

            while (v6 != v23);
            v6 = v23;
            v7 = v77;
          }
        }
      }

      if (v6 < v8)
      {
        goto LABEL_108;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1B2161EC4(0, v7[2] + 1, 1, v7);
        v7 = v73;
      }

      v31 = v7[2];
      v30 = v7[3];
      v32 = v31 + 1;
      if (v31 >= v30 >> 1)
      {
        sub_1B2161EC4(v30 > 1, v31 + 1, 1, v7);
        v7 = v74;
      }

      v7[2] = v32;
      v33 = v7 + 4;
      v34 = &v7[2 * v31 + 4];
      *v34 = v8;
      v34[1] = v6;
      v78 = *a1;
      if (!*a1)
      {
        goto LABEL_116;
      }

      if (v31)
      {
        while (1)
        {
          v35 = v32 - 1;
          v36 = &v33[2 * v32 - 2];
          v37 = &v7[2 * v32];
          if (v32 >= 4)
          {
            break;
          }

          if (v32 == 3)
          {
            v38 = v7[4];
            v39 = v7[5];
            v48 = __OFSUB__(v39, v38);
            v40 = v39 - v38;
            v41 = v48;
LABEL_57:
            if (v41)
            {
              goto LABEL_98;
            }

            v53 = *v37;
            v52 = v37[1];
            v54 = __OFSUB__(v52, v53);
            v55 = v52 - v53;
            v56 = v54;
            if (v54)
            {
              goto LABEL_101;
            }

            v57 = v36[1];
            v58 = v57 - *v36;
            if (__OFSUB__(v57, *v36))
            {
              goto LABEL_104;
            }

            if (__OFADD__(v55, v58))
            {
              goto LABEL_106;
            }

            if (v55 + v58 >= v40)
            {
              if (v40 < v58)
              {
                v35 = v32 - 2;
              }

              goto LABEL_79;
            }

            goto LABEL_72;
          }

          if (v32 < 2)
          {
            goto LABEL_100;
          }

          v60 = *v37;
          v59 = v37[1];
          v48 = __OFSUB__(v59, v60);
          v55 = v59 - v60;
          v56 = v48;
LABEL_72:
          if (v56)
          {
            goto LABEL_103;
          }

          v62 = *v36;
          v61 = v36[1];
          v48 = __OFSUB__(v61, v62);
          v63 = v61 - v62;
          if (v48)
          {
            goto LABEL_105;
          }

          if (v63 < v55)
          {
            goto LABEL_86;
          }

LABEL_79:
          if (v35 - 1 >= v32)
          {
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
LABEL_98:
            __break(1u);
LABEL_99:
            __break(1u);
LABEL_100:
            __break(1u);
LABEL_101:
            __break(1u);
LABEL_102:
            __break(1u);
LABEL_103:
            __break(1u);
LABEL_104:
            __break(1u);
LABEL_105:
            __break(1u);
LABEL_106:
            __break(1u);
LABEL_107:
            __break(1u);
LABEL_108:
            __break(1u);
LABEL_109:
            __break(1u);
LABEL_110:
            __break(1u);
LABEL_111:
            __break(1u);
            goto LABEL_112;
          }

          if (!*a3)
          {
            goto LABEL_114;
          }

          v67 = v7;
          v68 = &v33[2 * v35 - 2];
          v69 = *v68;
          v70 = &v33[2 * v35];
          v71 = v70[1];
          sub_1B21C1A48((*a3 + 88 * *v68), (*a3 + 88 * *v70), (*a3 + 88 * v71), v78);
          if (v4)
          {
            goto LABEL_91;
          }

          if (v71 < v69)
          {
            goto LABEL_93;
          }

          v72 = v67[2];
          if (v35 > v72)
          {
            goto LABEL_94;
          }

          *v68 = v69;
          v68[1] = v71;
          if (v35 >= v72)
          {
            goto LABEL_95;
          }

          v32 = v72 - 1;
          memmove(&v33[2 * v35], v70 + 2, 16 * (v72 - 1 - v35));
          v7 = v67;
          v67[2] = v72 - 1;
          if (v72 <= 2)
          {
            goto LABEL_86;
          }
        }

        v42 = &v33[2 * v32];
        v43 = *(v42 - 8);
        v44 = *(v42 - 7);
        v48 = __OFSUB__(v44, v43);
        v45 = v44 - v43;
        if (v48)
        {
          goto LABEL_96;
        }

        v47 = *(v42 - 6);
        v46 = *(v42 - 5);
        v48 = __OFSUB__(v46, v47);
        v40 = v46 - v47;
        v41 = v48;
        if (v48)
        {
          goto LABEL_97;
        }

        v49 = v37[1];
        v50 = v49 - *v37;
        if (__OFSUB__(v49, *v37))
        {
          goto LABEL_99;
        }

        v48 = __OFADD__(v40, v50);
        v51 = v40 + v50;
        if (v48)
        {
          goto LABEL_102;
        }

        if (v51 >= v45)
        {
          v65 = *v36;
          v64 = v36[1];
          v48 = __OFSUB__(v64, v65);
          v66 = v64 - v65;
          if (v48)
          {
            goto LABEL_107;
          }

          if (v40 < v66)
          {
            v35 = v32 - 2;
          }

          goto LABEL_79;
        }

        goto LABEL_57;
      }

LABEL_86:
      v5 = a3[1];
      if (v6 >= v5)
      {
        v81 = v7;
        break;
      }
    }
  }

  if (!*a1)
  {
    goto LABEL_117;
  }

  sub_1B21C1630(&v81, *a1, a3, sub_1B21C1A48);
LABEL_91:
}

uint64_t sub_1B21C0888(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v110 = a3;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_100:
    v100 = *a1;
    if (*a1)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        goto LABEL_133;
      }

      goto LABEL_102;
    }

    goto LABEL_142;
  }

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v9 = v7;
    v10 = (v7 + 1);
    if (v7 + 1 >= v6)
    {
      goto LABEL_22;
    }

    v100 = v6;
    v11 = *v110;
    *&v109[0] = *(*v110 + 8 * v10);
    *&v105 = *(v11 + 8 * v7);

    v12 = sub_1B21BB15C(v109, &v105);
    if (v5)
    {
    }

    v4 = v12;
    v94 = v8;

    v13 = 8 * v9;
    v14 = (v11 + 8 * v9 + 16);
    v15 = v9 + 2;
    v16 = v100;
    do
    {
      v17 = v15;
      if ((v10 + 1) >= v16)
      {
        v10 = v16;
        if ((v4 & 1) == 0)
        {
          goto LABEL_21;
        }

LABEL_9:
        v19 = v9;
        if (v10 >= v9)
        {
          v8 = v94;
          if (v9 < v10)
          {
            if (v16 >= v17)
            {
              v20 = v17;
            }

            else
            {
              v20 = v16;
            }

            v21 = 8 * v20 - 8;
            v22 = v10;
            do
            {
              if (v19 != --v22)
              {
                v23 = *v110;
                if (!*v110)
                {
                  goto LABEL_140;
                }

                v24 = *(v23 + v13);
                *(v23 + v13) = *(v23 + v21);
                *(v23 + v21) = v24;
              }

              ++v19;
              v21 -= 8;
              v13 += 8;
            }

            while (v19 < v22);
          }

          goto LABEL_22;
        }

LABEL_136:
        __break(1u);
LABEL_137:
        __break(1u);
LABEL_138:
        __break(1u);
LABEL_139:
        __break(1u);
LABEL_140:
        __break(1u);
LABEL_141:
        __break(1u);
LABEL_142:
        __break(1u);
LABEL_143:
        sub_1B2252EC0();
        __break(1u);
LABEL_144:
        v105 = 0uLL;
        LOBYTE(v106) = 1;
LABEL_146:

        RowDecodingContext.init(row:key:)(v89, &v105, v109);
        sub_1B21A2FC0();
        swift_allocError();
        v91 = v90;
        v105 = v109[0];
        v106 = v109[1];
        v107 = v109[2];
        v108 = v109[3];
        sub_1B21320F0(v4, 0, &v103);
        v101 = v103;
        v102 = v104;
        sub_1B2183238(MEMORY[0x1E69E6530], &v105, &v101, v91);
        sub_1B2113A44(v101, *(&v101 + 1), v102);
        sub_1B218450C(v109);
        swift_willThrow();
LABEL_147:
        result = swift_unexpectedError();
        __break(1u);
        return result;
      }

      *&v109[0] = *v14;
      *&v105 = *(v14 - 1);

      v18 = sub_1B21BB15C(v109, &v105);

      ++v14;
      ++v10;
      v15 = v17 + 1;
      v16 = v100;
    }

    while (((v4 ^ v18) & 1) == 0);
    if (v4)
    {
      goto LABEL_9;
    }

LABEL_21:
    v8 = v94;
LABEL_22:
    v25 = v110[1];
    if (v10 < v25)
    {
      if (__OFSUB__(v10, v9))
      {
        goto LABEL_132;
      }

      if (&v10[-v9] < a4)
      {
        v26 = (v9 + a4);
        if (__OFADD__(v9, a4))
        {
          __break(1u);
        }

        else
        {
          if (v26 >= v25)
          {
            v26 = v110[1];
          }

          if (v26 >= v9)
          {
            if (v10 == v26)
            {
              goto LABEL_48;
            }

            v95 = v8;
            v27 = *v110;
            v28 = (*v110 + 8 * v10 - 8);
            v93 = v9;
            v29 = v9 - v10;
            v97 = v26;
            while (1)
            {
              v98 = v28;
              v100 = v10;
              v30 = *(v27 + 8 * v10);
              v31 = v29;
              do
              {
                if (*(v30 + 9) < 1)
                {
                  goto LABEL_143;
                }

                v32 = *v28;
                v4 = *(v30 + 8);
                if (v4)
                {

                  if (sqlite3_column_type(v4, 0) == 5)
                  {
                    goto LABEL_144;
                  }

                  v33 = sqlite3_column_int64(v4, 0);
                }

                else
                {

                  v4 = v30;
                  sub_1B21B9DB8();
                  if (v5)
                  {
                    goto LABEL_147;
                  }
                }

                v34 = v33;
                if (*(v32 + 9) < 1)
                {
                  goto LABEL_143;
                }

                v4 = *(v32 + 8);
                if (v4)
                {
                  if (sqlite3_column_type(*(v32 + 8), 0) == 5)
                  {
                    v105 = 0uLL;
                    LOBYTE(v106) = 1;
                    goto LABEL_146;
                  }

                  v35 = sqlite3_column_int64(v4, 0);
                }

                else
                {
                  sub_1B21B9DB8();
                  if (v5)
                  {
                    goto LABEL_147;
                  }
                }

                v4 = v35;

                if (v34 >= v4)
                {
                  break;
                }

                if (!v27)
                {
                  goto LABEL_137;
                }

                v36 = *v28;
                v30 = v28[1];
                *v28 = v30;
                v28[1] = v36;
                --v28;
              }

              while (!__CFADD__(v31++, 1));
              v10 = v100 + 1;
              v28 = v98 + 1;
              --v29;
              if (v100 + 1 == v97)
              {
                v10 = v97;
                v9 = v93;
                v8 = v95;
                goto LABEL_48;
              }
            }
          }
        }

        __break(1u);
        goto LABEL_136;
      }
    }

LABEL_48:
    if (v10 < v9)
    {
      goto LABEL_131;
    }

    v100 = v10;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1B2161EC4(0, *(v8 + 16) + 1, 1, v8);
      v8 = v80;
    }

    v39 = *(v8 + 16);
    v38 = *(v8 + 24);
    v40 = v39 + 1;
    if (v39 >= v38 >> 1)
    {
      sub_1B2161EC4(v38 > 1, v39 + 1, 1, v8);
      v8 = v81;
    }

    *(v8 + 16) = v40;
    v41 = v8 + 32;
    v42 = (v8 + 32 + 16 * v39);
    *v42 = v9;
    v42[1] = v100;
    v99 = *a1;
    if (!*a1)
    {
      goto LABEL_141;
    }

    if (v39)
    {
      break;
    }

LABEL_97:
    v6 = v110[1];
    v7 = v100;
    if (v100 >= v6)
    {
      goto LABEL_100;
    }
  }

  while (1)
  {
    v43 = v40 - 1;
    v44 = (v41 + 16 * (v40 - 1));
    v45 = (v8 + 16 * v40);
    if (v40 >= 4)
    {
      v50 = v41 + 16 * v40;
      v51 = *(v50 - 64);
      v52 = *(v50 - 56);
      v56 = __OFSUB__(v52, v51);
      v53 = v52 - v51;
      if (v56)
      {
        goto LABEL_119;
      }

      v55 = *(v50 - 48);
      v54 = *(v50 - 40);
      v56 = __OFSUB__(v54, v55);
      v48 = v54 - v55;
      v49 = v56;
      if (v56)
      {
        goto LABEL_120;
      }

      v57 = v45[1];
      v58 = v57 - *v45;
      if (__OFSUB__(v57, *v45))
      {
        goto LABEL_122;
      }

      v56 = __OFADD__(v48, v58);
      v59 = v48 + v58;
      if (v56)
      {
        goto LABEL_125;
      }

      if (v59 >= v53)
      {
        v73 = *v44;
        v72 = v44[1];
        v56 = __OFSUB__(v72, v73);
        v74 = v72 - v73;
        if (v56)
        {
          goto LABEL_130;
        }

        if (v48 < v74)
        {
          v43 = v40 - 2;
        }

        goto LABEL_90;
      }

      goto LABEL_68;
    }

    if (v40 == 3)
    {
      v46 = *(v8 + 32);
      v47 = *(v8 + 40);
      v56 = __OFSUB__(v47, v46);
      v48 = v47 - v46;
      v49 = v56;
LABEL_68:
      if (v49)
      {
        goto LABEL_121;
      }

      v61 = *v45;
      v60 = v45[1];
      v62 = __OFSUB__(v60, v61);
      v63 = v60 - v61;
      v64 = v62;
      if (v62)
      {
        goto LABEL_124;
      }

      v65 = v44[1];
      v66 = v65 - *v44;
      if (__OFSUB__(v65, *v44))
      {
        goto LABEL_127;
      }

      if (__OFADD__(v63, v66))
      {
        goto LABEL_129;
      }

      if (v63 + v66 >= v48)
      {
        if (v48 < v66)
        {
          v43 = v40 - 2;
        }

        goto LABEL_90;
      }

      goto LABEL_83;
    }

    if (v40 < 2)
    {
      goto LABEL_123;
    }

    v68 = *v45;
    v67 = v45[1];
    v56 = __OFSUB__(v67, v68);
    v63 = v67 - v68;
    v64 = v56;
LABEL_83:
    if (v64)
    {
      goto LABEL_126;
    }

    v70 = *v44;
    v69 = v44[1];
    v56 = __OFSUB__(v69, v70);
    v71 = v69 - v70;
    if (v56)
    {
      goto LABEL_128;
    }

    if (v71 < v63)
    {
      goto LABEL_97;
    }

LABEL_90:
    if (v43 - 1 >= v40)
    {
      break;
    }

    if (!*v110)
    {
      goto LABEL_138;
    }

    v75 = (v41 + 16 * (v43 - 1));
    v76 = *v75;
    v77 = v41 + 16 * v43;
    v78 = *(v77 + 8);
    sub_1B21C1BEC((*v110 + 8 * *v75), (*v110 + 8 * *v77), (*v110 + 8 * v78), v99);
    if (v5)
    {
    }

    if (v78 < v76)
    {
      goto LABEL_113;
    }

    v4 = v8;
    v8 = *(v8 + 16);
    if (v43 > v8)
    {
      goto LABEL_114;
    }

    *v75 = v76;
    v75[1] = v78;
    if (v43 >= v8)
    {
      goto LABEL_115;
    }

    v40 = v8 - 1;
    sub_1B21A00E4((v77 + 16), v8 - 1 - v43, (v41 + 16 * v43));
    *(v4 + 2) = v8 - 1;
    v79 = v8 > 2;
    v8 = v4;
    if (!v79)
    {
      goto LABEL_97;
    }
  }

  __break(1u);
LABEL_113:
  __break(1u);
LABEL_114:
  __break(1u);
LABEL_115:
  __break(1u);
LABEL_116:
  __break(1u);
LABEL_117:
  __break(1u);
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
  v8 = sub_1B21A00CC(v8);
LABEL_102:
  v82 = (v8 + 16);
  v83 = *(v8 + 16);
  while (v83 >= 2)
  {
    if (!*v110)
    {
      goto LABEL_139;
    }

    v4 = v8;
    v84 = (v8 + 16 * v83);
    v85 = *v84;
    v86 = &v82[2 * v83];
    v8 = *(v86 + 1);
    sub_1B21C1BEC((*v110 + 8 * *v84), (*v110 + 8 * *v86), (*v110 + 8 * v8), v100);
    if (v5)
    {
      break;
    }

    if (v8 < v85)
    {
      goto LABEL_116;
    }

    if (v83 - 2 >= *v82)
    {
      goto LABEL_117;
    }

    *v84 = v85;
    v84[1] = v8;
    v87 = *v82 - v83;
    if (*v82 < v83)
    {
      goto LABEL_118;
    }

    v83 = *v82 - 1;
    sub_1B21A00E4(v86 + 16, v87, v86);
    *v82 = v83;
    v8 = v4;
  }
}

void sub_1B21C1104(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v94 = MEMORY[0x1E69E7CC0];
  v6 = a3[1];
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = MEMORY[0x1E69E7CC0];
    v89 = a4;
    while (1)
    {
      v9 = v7 + 1;
      if (v7 + 1 < v6)
      {
        v10 = *(*a3 + 40 * v9 + 32);
        v11 = *a3 + 40 * v7;
        v12 = *(v11 + 32);
        v13 = (v11 + 112);
        v14 = v7 + 2;
        v15 = v10;
        while (1)
        {
          v16 = v14;
          if (++v9 >= v6)
          {
            break;
          }

          v17 = *v13;
          v13 += 5;
          v18 = (v10 < v12) ^ (v17 >= v15);
          ++v14;
          v15 = v17;
          if ((v18 & 1) == 0)
          {
            goto LABEL_9;
          }
        }

        v9 = v6;
LABEL_9:
        if (v10 < v12)
        {
          if (v9 < v7)
          {
            goto LABEL_108;
          }

          if (v7 < v9)
          {
            if (v6 >= v16)
            {
              v6 = v16;
            }

            v19 = 40 * v6 - 8;
            v20 = 40 * v7 + 32;
            v21 = v9;
            v22 = v7;
            do
            {
              if (v22 != --v21)
              {
                v23 = *a3;
                if (!*a3)
                {
                  goto LABEL_113;
                }

                v24 = (v23 + v20);
                v25 = (v23 + v19);
                v26 = *(v24 - 4);
                v27 = *(v24 - 3);
                v28 = *v24;
                v29 = *(v24 - 1);
                v30 = *v25;
                v31 = *(v25 - 1);
                *(v24 - 2) = *(v25 - 2);
                *(v24 - 1) = v31;
                *v24 = v30;
                *(v25 - 4) = v26;
                *(v25 - 3) = v27;
                *(v25 - 1) = v29;
                *v25 = v28;
              }

              ++v22;
              v19 -= 40;
              v20 += 40;
            }

            while (v22 < v21);
            v6 = a3[1];
          }
        }
      }

      if (v9 < v6)
      {
        if (__OFSUB__(v9, v7))
        {
          goto LABEL_107;
        }

        if (v9 - v7 < a4)
        {
          if (__OFADD__(v7, a4))
          {
            goto LABEL_109;
          }

          if (v7 + a4 < v6)
          {
            v6 = v7 + a4;
          }

          if (v6 < v7)
          {
LABEL_110:
            __break(1u);
LABEL_111:
            __break(1u);
LABEL_112:
            __break(1u);
LABEL_113:
            __break(1u);
LABEL_114:
            __break(1u);
LABEL_115:
            __break(1u);
            return;
          }

          if (v9 != v6)
          {
            v32 = *a3;
            v33 = *a3 + 40 * v9 - 8;
            v34 = v7 - v9;
            do
            {
              v35 = *(v32 + 40 * v9 + 32);
              v36 = v34;
              v37 = v33;
              do
              {
                if (v35 >= *v37)
                {
                  break;
                }

                if (!v32)
                {
                  goto LABEL_111;
                }

                v38 = *(v37 + 8);
                v39 = *(v37 + 16);
                v40 = *(v37 - 16);
                *(v37 + 8) = *(v37 - 32);
                v41 = *(v37 + 24);
                *(v37 + 24) = v40;
                *(v37 + 40) = *v37;
                *(v37 - 32) = v38;
                *(v37 - 24) = v39;
                *(v37 - 16) = v41;
                *v37 = v35;
                v37 -= 40;
              }

              while (!__CFADD__(v36++, 1));
              ++v9;
              v33 += 40;
              --v34;
            }

            while (v9 != v6);
            v9 = v6;
          }
        }
      }

      if (v9 < v7)
      {
        goto LABEL_106;
      }

      v91 = v9;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1B2161EC4(0, v8[2] + 1, 1, v8);
        v8 = v87;
      }

      v44 = v8[2];
      v43 = v8[3];
      v45 = v44 + 1;
      if (v44 >= v43 >> 1)
      {
        sub_1B2161EC4(v43 > 1, v44 + 1, 1, v8);
        v8 = v88;
      }

      v8[2] = v45;
      v46 = v8 + 4;
      v47 = &v8[2 * v44 + 4];
      *v47 = v7;
      v47[1] = v91;
      v92 = *a1;
      if (!*a1)
      {
        goto LABEL_114;
      }

      if (v44)
      {
        while (1)
        {
          v48 = v45 - 1;
          v49 = &v46[2 * v45 - 2];
          v50 = &v8[2 * v45];
          if (v45 >= 4)
          {
            break;
          }

          if (v45 == 3)
          {
            v51 = v8[4];
            v52 = v8[5];
            v61 = __OFSUB__(v52, v51);
            v53 = v52 - v51;
            v54 = v61;
LABEL_56:
            if (v54)
            {
              goto LABEL_96;
            }

            v66 = *v50;
            v65 = v50[1];
            v67 = __OFSUB__(v65, v66);
            v68 = v65 - v66;
            v69 = v67;
            if (v67)
            {
              goto LABEL_99;
            }

            v70 = v49[1];
            v71 = v70 - *v49;
            if (__OFSUB__(v70, *v49))
            {
              goto LABEL_102;
            }

            if (__OFADD__(v68, v71))
            {
              goto LABEL_104;
            }

            if (v68 + v71 >= v53)
            {
              if (v53 < v71)
              {
                v48 = v45 - 2;
              }

              goto LABEL_78;
            }

            goto LABEL_71;
          }

          if (v45 < 2)
          {
            goto LABEL_98;
          }

          v73 = *v50;
          v72 = v50[1];
          v61 = __OFSUB__(v72, v73);
          v68 = v72 - v73;
          v69 = v61;
LABEL_71:
          if (v69)
          {
            goto LABEL_101;
          }

          v75 = *v49;
          v74 = v49[1];
          v61 = __OFSUB__(v74, v75);
          v76 = v74 - v75;
          if (v61)
          {
            goto LABEL_103;
          }

          if (v76 < v68)
          {
            goto LABEL_85;
          }

LABEL_78:
          if (v48 - 1 >= v45)
          {
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
LABEL_98:
            __break(1u);
LABEL_99:
            __break(1u);
LABEL_100:
            __break(1u);
LABEL_101:
            __break(1u);
LABEL_102:
            __break(1u);
LABEL_103:
            __break(1u);
LABEL_104:
            __break(1u);
LABEL_105:
            __break(1u);
LABEL_106:
            __break(1u);
LABEL_107:
            __break(1u);
LABEL_108:
            __break(1u);
LABEL_109:
            __break(1u);
            goto LABEL_110;
          }

          if (!*a3)
          {
            goto LABEL_112;
          }

          v80 = &v46[2 * v48 - 2];
          v81 = *v80;
          v82 = &v46[2 * v48];
          v83 = v82[1];
          sub_1B21C1EFC((*a3 + 40 * *v80), (*a3 + 40 * *v82), *a3 + 40 * v83, v92);
          if (v5)
          {
            goto LABEL_89;
          }

          if (v83 < v81)
          {
            goto LABEL_91;
          }

          v84 = v8;
          v85 = v8[2];
          if (v48 > v85)
          {
            goto LABEL_92;
          }

          *v80 = v81;
          v80[1] = v83;
          if (v48 >= v85)
          {
            goto LABEL_93;
          }

          v45 = v85 - 1;
          memmove(&v46[2 * v48], v82 + 2, 16 * (v85 - 1 - v48));
          v84[2] = v85 - 1;
          v86 = v85 > 2;
          v8 = v84;
          v5 = 0;
          if (!v86)
          {
            goto LABEL_85;
          }
        }

        v55 = &v46[2 * v45];
        v56 = *(v55 - 8);
        v57 = *(v55 - 7);
        v61 = __OFSUB__(v57, v56);
        v58 = v57 - v56;
        if (v61)
        {
          goto LABEL_94;
        }

        v60 = *(v55 - 6);
        v59 = *(v55 - 5);
        v61 = __OFSUB__(v59, v60);
        v53 = v59 - v60;
        v54 = v61;
        if (v61)
        {
          goto LABEL_95;
        }

        v62 = v50[1];
        v63 = v62 - *v50;
        if (__OFSUB__(v62, *v50))
        {
          goto LABEL_97;
        }

        v61 = __OFADD__(v53, v63);
        v64 = v53 + v63;
        if (v61)
        {
          goto LABEL_100;
        }

        if (v64 >= v58)
        {
          v78 = *v49;
          v77 = v49[1];
          v61 = __OFSUB__(v77, v78);
          v79 = v77 - v78;
          if (v61)
          {
            goto LABEL_105;
          }

          if (v53 < v79)
          {
            v48 = v45 - 2;
          }

          goto LABEL_78;
        }

        goto LABEL_56;
      }

LABEL_85:
      v6 = a3[1];
      v7 = v91;
      a4 = v89;
      if (v91 >= v6)
      {
        v94 = v8;
        break;
      }
    }
  }

  if (!*a1)
  {
    goto LABEL_115;
  }

  sub_1B21C176C(&v94, *a1, a3);
LABEL_89:
}

uint64_t sub_1B21C1630(uint64_t *a1, uint64_t a2, void *a3, void (*a4)(uint64_t, unint64_t, int64_t, uint64_t))
{
  i = a1;
  v17 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_1B21A00CC(v17);
    v17 = result;
  }

  v13 = i;
  *i = v17;
  v7 = (v17 + 16);
  for (i = *(v17 + 16); ; *v7 = i)
  {
    if (i < 2)
    {
LABEL_10:
      *v13 = v17;
      return 1;
    }

    if (!*a3)
    {
      break;
    }

    v8 = (v17 + 16 * i);
    v9 = *v8;
    v10 = &v7[2 * i];
    v11 = v10[1];
    a4(*a3 + 88 * *v8, *a3 + 88 * *v10, *a3 + 88 * v11, a2);
    if (v4)
    {
      goto LABEL_10;
    }

    if (v11 < v9)
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (i - 2 >= *v7)
    {
      goto LABEL_12;
    }

    *v8 = v9;
    v8[1] = v11;
    v12 = *v7 - i;
    if (*v7 < i)
    {
      goto LABEL_13;
    }

    i = *v7 - 1;
    result = memmove(v10, v10 + 2, 16 * v12);
  }

  *v13 = v17;
  __break(1u);
  return result;
}

uint64_t sub_1B21C176C(uint64_t *a1, char *a2, void *a3)
{
  v4 = a1;
  v15 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_1B21A00CC(v15);
    v15 = result;
  }

  v12 = v4;
  *v4 = v15;
  v6 = (v15 + 16);
  for (i = *(v15 + 16); ; *v6 = i)
  {
    if (i < 2)
    {
LABEL_10:
      *v12 = v15;
      return 1;
    }

    if (!*a3)
    {
      break;
    }

    v4 = (v15 + 16 * i);
    v8 = *v4;
    v9 = &v6[2 * i];
    v10 = v9[1];
    sub_1B21C1EFC((*a3 + 40 * *v4), (*a3 + 40 * *v9), *a3 + 40 * v10, a2);
    if (v3)
    {
      goto LABEL_10;
    }

    if (v10 < v8)
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (i - 2 >= *v6)
    {
      goto LABEL_12;
    }

    *v4 = v8;
    v4[1] = v10;
    v11 = *v6 - i;
    if (*v6 < i)
    {
      goto LABEL_13;
    }

    i = *v6 - 1;
    result = memmove(v9, v9 + 2, 16 * v11);
  }

  *v12 = v15;
  __break(1u);
  return result;
}

uint64_t sub_1B21C18A4(char *a1, char *a2, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 88;
  v9 = (a3 - a2) / 88;
  if (v8 < v9)
  {
    sub_1B2149AC8(a1, (a2 - a1) / 88, a4);
    v10 = &v4[88 * v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_28;
      }

      if (*v6 >= *v4)
      {
        break;
      }

      v12 = v6;
      v13 = v7 == v6;
      v6 += 88;
      if (!v13)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 88;
    }

    v12 = v4;
    v13 = v7 == v4;
    v4 += 88;
    if (v13)
    {
      goto LABEL_13;
    }

LABEL_12:
    memmove(v7, v12, 0x58uLL);
    goto LABEL_13;
  }

  sub_1B2149AC8(a2, (a3 - a2) / 88, a4);
  v10 = &v4[88 * v9];
LABEL_15:
  v14 = v6 - 88;
  for (v5 -= 88; v10 > v4 && v6 > v7; v5 -= 88)
  {
    if (*(v10 - 11) < *v14)
    {
      v13 = v5 + 88 == v6;
      v6 -= 88;
      if (!v13)
      {
        memmove(v5, v14, 0x58uLL);
        v6 = v14;
      }

      goto LABEL_15;
    }

    if (v10 != v5 + 88)
    {
      memmove(v5, v10 - 88, 0x58uLL);
    }

    v10 -= 88;
  }

LABEL_28:
  v16 = (v10 - v4) / 88;
  if (v6 != v4 || v6 >= &v4[88 * v16])
  {
    memmove(v6, v4, 88 * v16);
  }

  return 1;
}

uint64_t sub_1B21C1A48(char *a1, char *a2, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 88;
  v9 = (a3 - a2) / 88;
  if (v8 < v9)
  {
    sub_1B2149AC8(a1, (a2 - a1) / 88, a4);
    v10 = &v4[88 * v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_28;
      }

      if (*(v6 + 10) >= *(v4 + 10))
      {
        break;
      }

      v12 = v6;
      v13 = v7 == v6;
      v6 += 88;
      if (!v13)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 88;
    }

    v12 = v4;
    v13 = v7 == v4;
    v4 += 88;
    if (v13)
    {
      goto LABEL_13;
    }

LABEL_12:
    memmove(v7, v12, 0x58uLL);
    goto LABEL_13;
  }

  sub_1B2149AC8(a2, (a3 - a2) / 88, a4);
  v10 = &v4[88 * v9];
LABEL_15:
  for (v5 -= 88; v10 > v4 && v6 > v7; v5 -= 88)
  {
    if (*(v10 - 1) < *(v6 - 1))
    {
      v15 = v6 - 88;
      v13 = v5 + 88 == v6;
      v6 -= 88;
      if (!v13)
      {
        memmove(v5, v15, 0x58uLL);
        v6 = v15;
      }

      goto LABEL_15;
    }

    if (v10 != v5 + 88)
    {
      memmove(v5, v10 - 88, 0x58uLL);
    }

    v10 -= 88;
  }

LABEL_28:
  v16 = (v10 - v4) / 88;
  if (v6 != v4 || v6 >= &v4[88 * v16])
  {
    memmove(v6, v4, 88 * v16);
  }

  return 1;
}

uint64_t sub_1B21C1BEC(char *a1, char *a2, uint64_t *a3, char *a4)
{
  v5 = v4;
  v6 = a3;
  v7 = a2;
  v8 = a1;
  v9 = (a2 - a1) / 8;
  v10 = (a3 - a2) / 8;
  if (v9 < v10)
  {
    sub_1B224B140(a1, (a2 - a1) / 8, a4);
    v12 = a4;
    for (i = &a4[8 * v9]; ; i = v15)
    {
      if (v12 >= i || v7 >= v6)
      {
        v7 = v8;
        goto LABEL_30;
      }

      v15 = i;
      v16 = v6;
      v48 = *v7;
      v17 = v12;
      v47 = *v12;

      v18 = sub_1B21BB15C(&v48, &v47);
      if (v4)
      {

        v12 = v17;
        v39 = (v15 - v17) / 8;
        v40 = v8 < v17 || v8 >= &v17[v39];
        if (v40 || v8 != v17)
        {
          v37 = 8 * v39;
          v38 = v8;
          goto LABEL_50;
        }

        return 1;
      }

      v19 = v18;

      if ((v19 & 1) == 0)
      {
        break;
      }

      v20 = v7;
      v21 = v8 == v7++;
      v12 = v17;
      if (!v21)
      {
        goto LABEL_13;
      }

LABEL_14:
      ++v8;
      v6 = v16;
    }

    v20 = v17;
    v12 = v17 + 1;
    if (v8 == v17)
    {
      goto LABEL_14;
    }

LABEL_13:
    *v8 = *v20;
    goto LABEL_14;
  }

  sub_1B224B140(a2, (a3 - a2) / 8, a4);
  v12 = a4;
  i = &a4[8 * v10];
  v23 = -a4;
  v44 = v8;
  v45 = a4;
LABEL_16:
  v24 = v7 - 1;
  v25 = v6 - 1;
  v26 = &i[v23];
  v46 = v7;
  while (1)
  {
    if (i <= v12 || v7 <= v8)
    {
LABEL_30:
      v35 = (i - v12) / 8;
      v36 = v7 < v12 || v7 >= &v12[v35];
      if (v36 || v7 != v12)
      {
        v37 = 8 * v35;
        v38 = v7;
        goto LABEL_50;
      }

      return 1;
    }

    v28 = v25;
    v29 = v5;
    v30 = i;
    v31 = i - 8;
    v48 = *(i - 1);
    v32 = v24;
    v47 = *v24;

    v33 = sub_1B21BB15C(&v48, &v47);
    if (v29)
    {
      break;
    }

    v34 = v33;

    if (v34)
    {
      v6 = v28;
      v12 = v45;
      v21 = v28 + 1 == v46;
      v7 = v32;
      v8 = v44;
      i = v30;
      v5 = 0;
      if (!v21)
      {
        *v6 = *v32;
        v7 = v32;
      }

      goto LABEL_16;
    }

    v24 = v32;
    if (v30 != (v28 + 1))
    {
      *v28 = *v31;
    }

    v25 = v28 - 1;
    v26 -= 8;
    i = v31;
    v8 = v44;
    v12 = v45;
    v7 = v46;
    v5 = 0;
  }

  v41 = v26 / 8;
  v12 = v45;
  v38 = v46;
  if (v46 < v45 || v46 >= &v45[v26 / 8])
  {
    memmove(v46, v45, 8 * v41);
  }

  else if (v46 != v45)
  {
    v37 = 8 * v41;
LABEL_50:
    memmove(v38, v12, v37);
  }

  return 1;
}

uint64_t sub_1B21C1EFC(char *a1, char *a2, unint64_t a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 40;
  v9 = (a3 - a2) / 40;
  if (v8 < v9)
  {
    sub_1B2158F60(a1, (a2 - a1) / 40, a4);
    v10 = &v4[40 * v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_28;
      }

      if (*(v6 + 4) >= *(v4 + 4))
      {
        break;
      }

      v12 = v6;
      v13 = v7 == v6;
      v6 += 40;
      if (!v13)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 40;
    }

    v12 = v4;
    v13 = v7 == v4;
    v4 += 40;
    if (v13)
    {
      goto LABEL_13;
    }

LABEL_12:
    v14 = *v12;
    v15 = *(v12 + 1);
    *(v7 + 4) = *(v12 + 4);
    *v7 = v14;
    *(v7 + 1) = v15;
    goto LABEL_13;
  }

  sub_1B2158F60(a2, (a3 - a2) / 40, a4);
  v10 = &v4[40 * v9];
LABEL_15:
  for (v5 -= 40; v10 > v4 && v6 > v7; v5 -= 40)
  {
    if (*(v10 - 1) < *(v6 - 1))
    {
      v19 = v6 - 40;
      v13 = v5 + 40 == v6;
      v6 -= 40;
      if (!v13)
      {
        v20 = *v19;
        v21 = *(v19 + 1);
        *(v5 + 32) = *(v19 + 4);
        *v5 = v20;
        *(v5 + 16) = v21;
        v6 = v19;
      }

      goto LABEL_15;
    }

    if (v10 != (v5 + 40))
    {
      v17 = *(v10 - 40);
      v18 = *(v10 - 24);
      *(v5 + 32) = *(v10 - 1);
      *v5 = v17;
      *(v5 + 16) = v18;
    }

    v10 -= 40;
  }

LABEL_28:
  v22 = (v10 - v4) / 40;
  if (v6 != v4 || v6 >= &v4[40 * v22])
  {
    memmove(v6, v4, 40 * v22);
  }

  return 1;
}

uint64_t sub_1B21C20A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_1B21C20F0(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 88))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 32);
      if (v2 >= 0xFFFFFFFF)
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

uint64_t sub_1B21C2130(uint64_t result, int a2, int a3)
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
      *(result + 32) = (a2 - 1);
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

uint64_t sub_1B21C2184(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 25))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
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

uint64_t sub_1B21C21C4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 25) = 1;
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

    *(result + 25) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1B21C2214(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 56))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
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

uint64_t sub_1B21C2254(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1B21C22AC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 16);
      if (v2 >= 0xFFFFFFFF)
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

uint64_t sub_1B21C22EC(uint64_t result, int a2, int a3)
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

LABEL_8:
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1B21C2348(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1B21C2360(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 16))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B21C23B4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

void *sub_1B21C2410(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

unint64_t sub_1B21C2440()
{
  result = qword_1ED85E818;
  if (!qword_1ED85E818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED85E818);
  }

  return result;
}

uint64_t sub_1B21C2494(unint64_t a1)
{
  if (a1 >> 62)
  {
    v4 = sub_1B2252C20();
    if (v4)
    {
      v5 = v4;
      v2 = sub_1B219E138();
      sub_1B2170E34((v2 + 4), v5, a1);
      v7 = v6;

      if (v7 == v5)
      {
        return v2;
      }

      __break(1u);
    }

    return MEMORY[0x1E69E7CC0];
  }

  return a1 & 0xFFFFFFFFFFFFFF8;
}

uint64_t (*sub_1B21C2528(uint64_t a1, unint64_t a2, uint64_t a3))()
{
  sub_1B211D920(a1, a2, a3);
  if (v6)
  {
    v7 = *(v4 + 8 * v5 + 32);
  }

  else
  {
    v8 = MEMORY[0x1B27427E0](v5, v4);
  }

  *v3 = v8;
  return sub_1B21C2A54;
}

uint64_t (*sub_1B21C2590(uint64_t a1, unint64_t a2, uint64_t a3))(uint64_t *a1)
{
  sub_1B211D920(a1, a2, a3);
  if (v6)
  {
    v7 = *(v4 + 8 * v5 + 32);
  }

  else
  {
    v8 = MEMORY[0x1B27427E0](v5, v4);
  }

  *v3 = v8;
  return sub_1B21C25F8;
}

unint64_t sub_1B21C2600()
{
  result = qword_1EB7A21E0;
  if (!qword_1EB7A21E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7A21E0);
  }

  return result;
}

uint64_t sub_1B21C2654(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_1B21C2698(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SchemaInfo.SchemaObject.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFD)
  {
    if (a2 + 3 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 3) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 4;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v5 = v6 - 4;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for SchemaInfo.SchemaObject.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1B21C2840(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 64))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
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

uint64_t sub_1B21C2880(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

unint64_t sub_1B21C28F0()
{
  result = qword_1EB7A2208;
  if (!qword_1EB7A2208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7A2208);
  }

  return result;
}

unint64_t sub_1B21C2948()
{
  result = qword_1ED85E0A8;
  if (!qword_1ED85E0A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED85E0A8);
  }

  return result;
}

unint64_t sub_1B21C29A0()
{
  result = qword_1ED85DF08[0];
  if (!qword_1ED85DF08[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED85DF08);
  }

  return result;
}

unint64_t sub_1B21C29F8()
{
  result = qword_1ED85E0A0;
  if (!qword_1ED85E0A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED85E0A0);
  }

  return result;
}

uint64_t sub_1B21C2A60(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v11 = va_arg(va1, __int128);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);

  return RowDecodingContext.init(row:key:)(a1, va, va1);
}

uint64_t sub_1B21C2A78()
{
  v4 = *(v1 - 1);
  v3 = *v1;
  v5 = *(v0 + 24);
  v6 = *(v0 + 16) + 1;
}

void sub_1B21C2A9C()
{

  sub_1B2116B10();
}

void sub_1B21C2AF4()
{
  sub_1B2111640();
  v4 = v0;
  if (*(v0 + 112) || (*(v0 + 161) & 1) == 0 || *(*(v0 + 72) + 16))
  {
    goto LABEL_15;
  }

  v123 = v2;
  v5 = *(v0 + 88);
  v6 = *(v0 + 96);
  v7 = *(v5 + 16);
  v8 = (v5 + 40);
  if (v7)
  {
    while (*(v6 + 16))
    {
      v10 = *(v8 - 1);
      v9 = *v8;

      v11 = sub_1B211E590();
      if ((v3 & 1) == 0)
      {
        goto LABEL_24;
      }

      v12 = *(v6 + 56) + 216 * v11;
      sub_1B2118084();
      memcpy(v13, v14, v15);
      sub_1B2118084();
      memcpy(v16, v17, v18);
      sub_1B2118084();
      memmove(v19, v20, v21);
      __dst[0] = v10;
      __dst[1] = v9;
      memcpy(&__dst[2], __src, 0xD2uLL);

      sub_1B2181728(v100, v98);
      sub_1B2181728(v101, v98);
      sub_1B212AC5C(__dst, &qword_1EB7A13A8, &qword_1B2257E40);
      memcpy(&v103[1], v101, 0xD2uLL);
      *&v103[0] = v10;
      *(&v103[0] + 1) = v9;
      sub_1B212AC5C(v103, &qword_1EB7A13A8, &qword_1B2257E40);
      if (LOBYTE(v103[1]) != 2 && LOBYTE(v103[1]) != 3)
      {
        goto LABEL_15;
      }

      v8 += 2;
      if (!--v7)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_10:
  v22 = *(v4 + 32);
  (*(v4 + 24))(v103, v123);
  if (v1)
  {
LABEL_16:
    sub_1B2112FDC();
    return;
  }

  v23 = *(*&v103[0] + 16);
  if (v23 == 1)
  {
    memcpy(__dst, (*&v103[0] + 32), 0xB8uLL);
    memcpy(v101, (*&v103[0] + 32), 0xB8uLL);
    v24 = *(v4 + 104);
    sub_1B213A774(__dst, v100);
    sub_1B2178DE4(v24, v97);
    memcpy(v103, v101, 0xB8uLL);
    sub_1B213A5CC(v103);
    memcpy(v98, v97, 0xA3uLL);
    memcpy(__src, v97, 0xA3uLL);
    if (sub_1B2171378(__src) != 1)
    {
      v104 = *(v4 + 56);
      v105 = *(v4 + 64);
      v25 = *v4;
      v26 = *(v4 + 24);
      v96 = *(v4 + 16);
      v27 = *(v4 + 32);
      v94 = *(v4 + 40);
      v95 = v25;
      *(v93 + 15) = *(v4 + 80);
      v93[0] = *(v4 + 65);
      v28 = *(v4 + 105);
      v29 = *(v4 + 121);
      v30 = *(v4 + 137);
      *(v92 + 9) = *(v4 + 146);
      v91 = v29;
      v92[0] = v30;
      v90 = v28;
      sub_1B2136148(v4, v100);
      sub_1B214C808(&v104);
      sub_1B21A3F40();
      v32 = v31;
      v34 = v33;

      memcpy(v101, __src, 0xA3uLL);
      if (sub_1B213EA68(v101) == 1)
      {
        v55 = v95;
        v59 = v94;
        *v62 = v93[0];
        v66 = v90;
        v56 = v96;
        v57 = v26;
        v58 = v27;
        v35 = MEMORY[0x1E69E7CC0];
        v60 = MEMORY[0x1E69E7CC0];
        v61 = 0;
        *&v62[15] = *(v93 + 15);
        v63 = v32;
        v64 = v34;
        v65 = 0;
        v67 = v91;
        v68[0] = v92[0];
        *(v68 + 9) = *(v92 + 9);
        sub_1B2115660();
        v36 = swift_allocObject();
        *(v36 + 16) = &unk_1F2969118;
        sub_1B2111904();
        v37 = v26;
        v38 = swift_allocObject();
        *(v38 + 16) = sub_1B21C8708;
        *(v38 + 24) = v36;
        sub_1B2136148(&v55, v100);

        v100[0] = v95;
        *&v100[1] = v96;
        *(&v100[1] + 1) = v37;
        *(&v100[2] + 8) = v94;
        *&v100[2] = v27;
        *(&v100[3] + 1) = v35;
        LOBYTE(v100[4]) = 0;
        *(&v100[4] + 1) = v93[0];
        *&v100[5] = *(v93 + 15);
        *(&v100[5] + 1) = v32;
        *&v100[6] = v34;
        BYTE8(v100[6]) = 0;
        *(&v100[9] + 2) = *(v92 + 9);
        *(&v100[8] + 9) = v92[0];
        *(&v100[7] + 9) = v91;
        *(&v100[6] + 9) = v90;
        sub_1B2137224(v100);
      }

      else
      {
        v69 = v95;
        v73 = v94;
        *v76 = v93[0];
        v80 = v90;
        v70 = v96;
        v71 = v26;
        v72 = v27;
        v74 = MEMORY[0x1E69E7CC0];
        v75 = 0;
        *&v76[15] = *(v93 + 15);
        v77 = v32;
        v78 = v34;
        v79 = 0;
        v81 = v91;
        v82[0] = v92[0];
        *(v82 + 9) = *(v92 + 9);
        sub_1B21619D8(&qword_1EB7A0E70, &unk_1B225D330);
        v54 = v26;
        v46 = swift_allocObject();
        *(v46 + 16) = xmmword_1B22546B0;
        v47 = swift_allocObject();
        *(v47 + 16) = xmmword_1B22546B0;
        memcpy((v47 + 32), v101, 0xA3uLL);
        *&v100[0] = 0x544E554F43;
        *(&v100[0] + 1) = 0xE500000000000000;
        LOWORD(v100[1]) = 257;
        *(&v100[1] + 1) = v47;
        sub_1B2179374(v100);
        memcpy((v46 + 32), v100, 0xA3uLL);
        sub_1B2115660();
        v48 = v34;
        v49 = swift_allocObject();
        *(v49 + 16) = v46;
        v89 = v70;
        v87 = v73;
        v88 = v69;
        v86[0] = *v76;
        *(v86 + 15) = *&v76[15];
        *(v85 + 9) = *(v82 + 9);
        v84 = v81;
        v85[0] = v82[0];
        v83 = v80;
        sub_1B2111904();
        v38 = swift_allocObject();
        *(v38 + 16) = sub_1B21C8708;
        *(v38 + 24) = v49;
        v34 = v48;
        sub_1B2122B00(v98, &v55, &qword_1EB7A2240, &unk_1B225BB50);
        sub_1B2136148(&v69, &v55);

        v55 = v95;
        v56 = v96;
        v57 = v54;
        v58 = v27;
        v59 = v94;
        v60 = MEMORY[0x1E69E7CC0];
        v61 = 0;
        *v62 = v93[0];
        *&v62[15] = *(v93 + 15);
        v63 = v32;
        v64 = v48;
        v65 = 0;
        *(v68 + 9) = *(v92 + 9);
        v68[0] = v92[0];
        v67 = v91;
        v66 = v90;
        sub_1B2137224(&v55);
        v94 = v87;
        v95 = v88;
        v96 = v89;
        v93[0] = v86[0];
        *(v93 + 15) = *(v86 + 15);
        *(v92 + 9) = *(v85 + 9);
        v91 = v84;
        v92[0] = v85[0];
        v90 = v83;
      }

      v108 = v95;
      v112 = v94;
      *v115 = v93[0];
      v119 = v90;
      v109 = v96;
      v110 = sub_1B2139E50;
      v111 = v38;
      v113 = MEMORY[0x1E69E7CC0];
      v114 = 0;
      *&v115[15] = *(v93 + 15);
      v116 = v32;
      v117 = v34;
      v118 = 0;
      v120 = v91;
      *v121 = v92[0];
      *&v121[9] = *(v92 + 9);
      sub_1B219631C();
      sub_1B2146AD8();
LABEL_25:
      v50 = v3;
      sub_1B2142D18(&v55);
      if ((v50 & 1) == 0)
      {

        sub_1B212AC5C(v98, &qword_1EB7A2240, &unk_1B225BB50);
        sub_1B2111A68();
        sub_1B2137224(v51);
        goto LABEL_16;
      }

      __break(1u);
      goto LABEL_30;
    }

    goto LABEL_19;
  }

  if (v23)
  {
    if ((*(v4 + 104) & 1) == 0)
    {
      v106 = *(v4 + 56);
      v107 = *(v4 + 64);
      v100[0] = *v4;
      *&v100[1] = *(v4 + 16);
      v98[0] = *(v4 + 40);
      __src[0] = *(v4 + 65);
      *(__src + 15) = *(v4 + 80);
      v39 = *(v4 + 120);
      *v101 = *(v4 + 104);
      *&v101[16] = v39;
      *&v101[32] = *(v4 + 136);
      *&v101[42] = *(v4 + 146);
      sub_1B2136148(v4, __dst);
      sub_1B214C808(&v106);
      sub_1B21A3F40();
      v41 = v40;
      v43 = v42;

      sub_1B2115660();
      v44 = swift_allocObject();
      *(v44 + 16) = &unk_1F29691E0;
      sub_1B2111904();
      v45 = swift_allocObject();
      *(v45 + 16) = sub_1B21C81C0;
      *(v45 + 24) = v44;

      v103[0] = v100[0];
      *&v103[1] = *&v100[1];
      *(&v103[1] + 1) = sub_1B2139E50;
      *&v103[2] = v45;
      *(&v103[2] + 8) = v98[0];
      *(&v103[3] + 1) = MEMORY[0x1E69E7CC0];
      LOBYTE(v103[4]) = 0;
      *(&v103[4] + 1) = __src[0];
      *&v103[5] = *(__src + 15);
      *(&v103[5] + 1) = v41;
      *&v103[6] = v43;
      *(&v103[9] + 2) = *&v101[42];
      *(&v103[8] + 8) = *&v101[32];
      *(&v103[7] + 8) = *&v101[16];
      *(&v103[6] + 8) = *v101;
      memcpy(v122, v103, sizeof(v122));
      sub_1B2136148(v103, __dst);
      sub_1B219631C();
      sub_1B2146AD8();
      v53 = v52;
      sub_1B2137224(v103);
      sub_1B2142D18(v101);
      if ((v53 & 1) == 0)
      {
        sub_1B2137224(v103);

        goto LABEL_16;
      }

LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

LABEL_19:

LABEL_15:
    sub_1B21C57FC();
    goto LABEL_16;
  }

LABEL_31:
  sub_1B2111608();
  sub_1B2112A88();
  sub_1B2252EC0();
  __break(1u);
}

uint64_t sub_1B21C35B0@<X0>(uint64_t *(*a1)(uint64_t a1)@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v8 = *(v4 + 40);
  if (v8)
  {
    v9 = *(v4 + 48);
    sub_1B2113B74();
    v10 = swift_allocObject();
    v10[2] = v8;
    v10[3] = v9;
    v10[4] = a1;
    v10[5] = a2;
    a1 = sub_1B21C81A0;
  }

  else
  {
    v10 = a2;
  }

  v11 = *(v4 + 16);
  v16 = *v4;
  v17 = v11;
  v18 = *(v4 + 32);
  memcpy(__dst, (v4 + 56), sizeof(__dst));
  sub_1B2136148(v4, v14);
  v12 = v17;
  *a3 = v16;
  *(a3 + 16) = v12;
  *(a3 + 32) = v18;
  *(a3 + 40) = a1;
  *(a3 + 48) = v10;
  memcpy((a3 + 56), __dst, 0x6AuLL);
}

__n128 sub_1B21C36A4@<Q0>(uint64_t a1@<X8>)
{
  v29 = *(v1 + 144);
  v28 = *(v1 + 160);
  v6 = *(v1 + 161);
  v7 = *(v1 + 112);
  v26 = v7;
  v27 = *(v1 + 128);
  if (v6)
  {
    v25 = *(v1 + 72);
    v9 = *(v1 + 40);
    v8 = *(v1 + 48);
    sub_1B2122CA4();
    v10 = *(v1 + 88);
    v11 = *(v1 + 96);
    v31 = *(v1 + 56);
    v32 = *(v1 + 64);
    sub_1B2136148(v1, v30);
    sub_1B214C808(&v31);
    sub_1B21A3F40();
    v13 = v12;
    v15 = v14;

    v16 = 0;
    v17 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v13 = *(v1 + 88);
    v15 = *(v1 + 96);
    v25 = *(v1 + 72);
    v16 = *(v1 + 64);
    v18 = *(v1 + 40);
    v19 = *(v1 + 48);
    v17 = *(v1 + 56);
    sub_1B2122CA4();
    sub_1B2136148(v1, v30);
  }

  v20 = *(v1 + 104);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v22;
  *(a1 + 40) = v24;
  *(a1 + 48) = v23;
  *(a1 + 56) = v17;
  *(a1 + 64) = v16;
  *(a1 + 72) = v25;
  *(a1 + 88) = v13;
  *(a1 + 96) = v15;
  *(a1 + 104) = v20;
  *(a1 + 112) = v26;
  *(a1 + 128) = v27;
  result = v29;
  *(a1 + 144) = v29;
  *(a1 + 160) = v28;
  *(a1 + 161) = v6;
  return result;
}

void sub_1B21C37F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1B2181728(a1, v89);
  sub_1B21C77F4();
  sub_1B213CB94(v89, v6, v7, v8, v9, v10, v11, v12, v30, v33, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88);
  if (sub_1B2181784(v89) == 1)
  {
    sub_1B213CB94(&v63, v13, v14, v15, v16, v17, v18, v19, v31, v34, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88);
    sub_1B212AC5C(&v63, &qword_1EB7A13B0, &unk_1B2257E48);

    sub_1B21449A8();
    v20 = *(*v3 + 16);
    sub_1B2144A08();
    v21 = *v3;
    *(v21 + 16) = v20 + 1;
    v22 = v21 + 16 * v20;
    *(v22 + 32) = a2;
    *(v22 + 40) = a3;
    *v3 = v21;
  }

  else
  {
    sub_1B213CB94(&v36, v13, v14, v15, v16, v17, v18, v19, v31, v34, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88);
    sub_1B213CB94(&v63, v23, v24, v25, v26, v27, v28, v29, v32, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88);
    if (sub_1B2181784(&v63) != 1)
    {
      sub_1B212AC5C(&v36, &qword_1EB7A13B0, &unk_1B2257E48);
      sub_1B2111608();
      sub_1B2112A88();
      sub_1B2252EC0();
      __break(1u);
    }
  }
}

uint64_t sub_1B21C3948(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v5 = 0;
  v6 = *(a3 + 16);
  for (i = (a3 + 40); ; i += 2)
  {
    if (v6 == v5)
    {
      return 0;
    }

    v8 = *i;
    v11[0] = *(i - 1);
    v11[1] = v8;

    v9 = a1(v11);

    if (v3)
    {
      return result;
    }

    if (v9)
    {
      break;
    }

    ++v5;
  }

  return v5;
}

uint64_t sub_1B21C3A04(uint64_t (*a1)(uint64_t *), uint64_t a2, uint64_t a3)
{
  result = sub_1B2116B08(a3);
  v6 = result;
  v7 = 0;
  while (1)
  {
    if (v6 == v7)
    {
      return 0;
    }

    if ((a3 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x1B27427E0](v7, a3);
      goto LABEL_6;
    }

    if (v7 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      break;
    }

    v8 = *(a3 + 8 * v7 + 32);

LABEL_6:
    v12 = v8;
    v9 = a1(&v12);

    if (v3)
    {
      return result;
    }

    if (v9)
    {
      return v7;
    }

    if (__OFADD__(v7++, 1))
    {
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_16:
  __break(1u);
  return result;
}