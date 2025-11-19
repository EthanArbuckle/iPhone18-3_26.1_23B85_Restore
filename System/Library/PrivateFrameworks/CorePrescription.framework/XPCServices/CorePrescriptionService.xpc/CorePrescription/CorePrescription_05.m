uint64_t sub_1000763A4(Bytef *a1, int a2, char a3, uint64_t a4, unint64_t a5, _DWORD *a6, uLongf *destLen)
{
  if (a3)
  {
LABEL_29:
    __break(1u);
  }

  v10 = a5 >> 62;
  if ((a5 >> 62) > 1)
  {
    if (v10 != 2)
    {
      memset(source, 0, 14);
      v12 = source;
      v13 = destLen;
      v11 = 0;
      goto LABEL_21;
    }

    v14 = a1;
    v15 = *(a4 + 16);
    v16 = *(a4 + 24);
    v17 = sub_100080AE8();
    if (v17)
    {
      v18 = sub_100080B18();
      if (__OFSUB__(v15, v18))
      {
LABEL_27:
        __break(1u);
        goto LABEL_28;
      }

      v17 += v15 - v18;
    }

    if (__OFSUB__(v16, v15))
    {
LABEL_23:
      __break(1u);
      goto LABEL_24;
    }

    a1 = sub_100080B08();
    v20 = *(a4 + 16);
    v19 = *(a4 + 24);
    v11 = v19 - v20;
    if (__OFSUB__(v19, v20))
    {
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    if ((v11 & 0x8000000000000000) == 0)
    {
LABEL_19:
      a1 = v14;
      v13 = destLen;
      v12 = v17;
      goto LABEL_21;
    }

    __break(1u);
LABEL_13:
    if (a4 <= a4 >> 32)
    {
      v14 = a1;
      v17 = sub_100080AE8();
      if (v17)
      {
        v21 = sub_100080B18();
        if (__OFSUB__(a4, v21))
        {
LABEL_28:
          __break(1u);
          goto LABEL_29;
        }

        v17 += a4 - v21;
      }

      sub_100080B08();
      v11 = (HIDWORD(a4) - a4);
      if (!__OFSUB__(HIDWORD(a4), a4))
      {
        if ((v11 & 0x80000000) == 0)
        {
          goto LABEL_19;
        }

        goto LABEL_26;
      }

LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

    __break(1u);
    goto LABEL_23;
  }

  if (v10)
  {
    goto LABEL_13;
  }

  *source = a4;
  *&source[8] = a5;
  source[10] = BYTE2(a5);
  source[11] = BYTE3(a5);
  source[12] = BYTE4(a5);
  v11 = BYTE6(a5);
  source[13] = BYTE5(a5);
  v12 = source;
  v13 = destLen;
LABEL_21:
  result = compress2(a1, v13, v12, v11, 5);
  *a6 = result;
  return result;
}

uint64_t sub_1000765BC(Bytef *a1, int a2, char a3, uint64_t a4, unint64_t a5, _DWORD *a6, uLongf *destLen)
{
  if (a3)
  {
LABEL_29:
    __break(1u);
  }

  v10 = a5 >> 62;
  if ((a5 >> 62) > 1)
  {
    if (v10 != 2)
    {
      memset(source, 0, 14);
      v12 = source;
      v13 = destLen;
      v11 = 0;
      goto LABEL_21;
    }

    v14 = a1;
    v15 = *(a4 + 16);
    v16 = *(a4 + 24);
    v17 = sub_100080AE8();
    if (v17)
    {
      v18 = sub_100080B18();
      if (__OFSUB__(v15, v18))
      {
LABEL_27:
        __break(1u);
        goto LABEL_28;
      }

      v17 += v15 - v18;
    }

    if (__OFSUB__(v16, v15))
    {
LABEL_23:
      __break(1u);
      goto LABEL_24;
    }

    a1 = sub_100080B08();
    v20 = *(a4 + 16);
    v19 = *(a4 + 24);
    v11 = v19 - v20;
    if (__OFSUB__(v19, v20))
    {
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    if ((v11 & 0x8000000000000000) == 0)
    {
LABEL_19:
      a1 = v14;
      v13 = destLen;
      v12 = v17;
      goto LABEL_21;
    }

    __break(1u);
LABEL_13:
    if (a4 <= a4 >> 32)
    {
      v14 = a1;
      v17 = sub_100080AE8();
      if (v17)
      {
        v21 = sub_100080B18();
        if (__OFSUB__(a4, v21))
        {
LABEL_28:
          __break(1u);
          goto LABEL_29;
        }

        v17 += a4 - v21;
      }

      sub_100080B08();
      v11 = (HIDWORD(a4) - a4);
      if (!__OFSUB__(HIDWORD(a4), a4))
      {
        if ((v11 & 0x80000000) == 0)
        {
          goto LABEL_19;
        }

        goto LABEL_26;
      }

LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

    __break(1u);
    goto LABEL_23;
  }

  if (v10)
  {
    goto LABEL_13;
  }

  *source = a4;
  *&source[8] = a5;
  source[10] = BYTE2(a5);
  source[11] = BYTE3(a5);
  source[12] = BYTE4(a5);
  v11 = BYTE6(a5);
  source[13] = BYTE5(a5);
  v12 = source;
  v13 = destLen;
LABEL_21:
  result = uncompress(a1, v13, v12, v11);
  *a6 = result;
  return result;
}

void sub_1000767C0(uint64_t *a1, void (*a2)(uint64_t, uint64_t, void))
{
  v5 = *a1;
  v4 = a1[1];
  v6 = v4 >> 62;
  if ((v4 >> 62) <= 1)
  {
    if (v6)
    {
      sub_10000D808(*a1, v4);
      sub_100006A34(v5, v4);
      *&v22 = v5;
      *(&v22 + 1) = v4 & 0x3FFFFFFFFFFFFFFFLL;
      *a1 = xmmword_100084880;
      sub_100006A34(0, 0xC000000000000000);
      sub_100076A98(&v22, a2);
      v7 = v22;
      v8 = *(&v22 + 1) | 0x4000000000000000;
    }

    else
    {
      sub_100006A34(v5, v4);
      *&v22 = v5;
      WORD4(v22) = v4;
      BYTE10(v22) = BYTE2(v4);
      BYTE11(v22) = BYTE3(v4);
      BYTE12(v22) = BYTE4(v4);
      BYTE13(v22) = BYTE5(v4);
      BYTE14(v22) = BYTE6(v4);
      a2(&v22, &v22 + BYTE6(v4), 0);
      v7 = v22;
      v8 = DWORD2(v22) | ((WORD6(v22) | (BYTE14(v22) << 16)) << 32);
    }

    *a1 = v7;
    a1[1] = v8;
    return;
  }

  if (v6 != 2)
  {
    *(&v22 + 7) = 0;
    *&v22 = 0;
    a2(&v22, &v22, 0);
    return;
  }

  sub_100006A34(v5, v4);
  *&v22 = v5;
  *(&v22 + 1) = v4 & 0x3FFFFFFFFFFFFFFFLL;
  *a1 = xmmword_100084880;
  sub_100006A34(0, 0xC000000000000000);
  sub_100080C48();
  v9 = *(&v22 + 1);
  v11 = *(v22 + 16);
  v10 = *(v22 + 24);
  v12 = sub_100080AE8();
  if (!v12)
  {
    __break(1u);
    return;
  }

  v13 = v12;
  v14 = sub_100080B18();
  v15 = v11 - v14;
  if (__OFSUB__(v11, v14))
  {
    __break(1u);
LABEL_17:
    __break(1u);
  }

  v16 = __OFSUB__(v10, v11);
  v17 = v10 - v11;
  if (v16)
  {
    goto LABEL_17;
  }

  v18 = sub_100080B08();
  if (v18 >= v17)
  {
    v19 = v17;
  }

  else
  {
    v19 = v18;
  }

  a2(v13 + v15, v13 + v15 + v19, 0);
  *a1 = v22;
  a1[1] = v9 | 0x8000000000000000;
}

void sub_100076A98(int *a1, void (*a2)(uint64_t, uint64_t, void))
{
  sub_100080C58();
  v4 = *a1;
  v5 = a1[1];
  if (v5 < v4)
  {
    __break(1u);
    goto LABEL_9;
  }

  v6 = *(a1 + 1);

  v7 = sub_100080AE8();
  if (!v7)
  {
LABEL_10:
    __break(1u);
    return;
  }

  v8 = v7;
  v9 = sub_100080B18();
  v10 = v4 - v9;
  if (__OFSUB__(v4, v9))
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v11 = v5 - v4;
  v12 = sub_100080B08();
  if (v12 >= v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  a2(v8 + v10, v8 + v10 + v13, 0);
}

uint64_t sub_100076B78(int a1)
{
  if ((a1 + 6) < 9)
  {
    return byte_10008923A[a1 + 6];
  }

  sub_100006940(&qword_1000B7528, &unk_100086800);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100084830;
  *(inited + 56) = &type metadata for Int32;
  *(inited + 64) = &protocol witness table for Int32;
  *(inited + 32) = a1;
  sub_100075EDC(inited);
  swift_setDeallocating();
  v4 = *(inited + 16);
  sub_100006940(&qword_1000BA3B8, &qword_100089230);
  swift_arrayDestroy();
  return 3;
}

unint64_t sub_100076C48()
{
  result = qword_1000BA310;
  if (!qword_1000BA310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000BA310);
  }

  return result;
}

uint64_t sub_100076C9C()
{
  v0 = sub_100080B28();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  v17 = 0x80000000000;
  v18 = sub_100080AF8() | 0x4000000000000000;
  v4 = v18 >> 62;
  if ((v18 >> 62) > 1)
  {
    if (v4 != 2)
    {
      goto LABEL_15;
    }

    v6 = *(v17 + 16);
    v7 = *(v17 + 24);
    v8 = __OFSUB__(v7, v6);
    v5 = v7 - v6;
    if (v8)
    {
      goto LABEL_30;
    }
  }

  else if (v4)
  {
    LODWORD(v5) = HIDWORD(v17) - v17;
    if (__OFSUB__(HIDWORD(v17), v17))
    {
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v5 = v5;
  }

  else
  {
    v5 = BYTE6(v18);
  }

  if (v5 + 0x4000000000000000 < 0)
  {
    __break(1u);
    goto LABEL_27;
  }

  if (v5 < 0)
  {
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

LABEL_15:
  sub_100080C88();
  v9 = v18 >> 62;
  if ((v18 >> 62) > 1)
  {
    if (v9 != 2)
    {
      v3 = 0;
      goto LABEL_3;
    }

    v10 = *(v17 + 16);
    v11 = *(v17 + 24);
    v8 = __OFSUB__(v11, v10);
    v3 = v11 - v10;
    if (v8)
    {
LABEL_31:
      __break(1u);
      goto LABEL_32;
    }
  }

  else
  {
    if (!v9)
    {
      v3 = BYTE6(v18);
      goto LABEL_3;
    }

    LODWORD(v3) = HIDWORD(v17) - v17;
    if (__OFSUB__(HIDWORD(v17), v17))
    {
LABEL_32:
      __break(1u);
      goto LABEL_33;
    }

    v3 = v3;
  }

  if (v3 < 0)
  {
    goto LABEL_28;
  }

LABEL_3:
  v16 = v3;
  __chkstk_darwin();
  sub_1000767C0(&v17, sub_1000770D4);
  if (v16 < 0)
  {
LABEL_33:
    __break(1u);
  }

  v13 = v17;
  v12 = v18;
  v14 = sub_100080D18();
  sub_100006A34(v13, v12);
  return v14;
}

unint64_t sub_100076F0C()
{
  result = qword_1000BA318;
  if (!qword_1000BA318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000BA318);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ZLibError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

  if (a2 + 8 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 8) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 8;
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

      return (*a1 | (v4 << 8)) - 8;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ZLibError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF8)
  {
    v4 = 0;
  }

  if (a2 > 0xF7)
  {
    v5 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t CloudEnvironment.description.getter(char a1)
{
  if (!a1)
  {
    return 0x6669636570736E75;
  }

  if (a1 == 1)
  {
    return 0x6D706F6C65766564;
  }

  return 0x69746375646F7270;
}

CloudData::CloudEnvironment_optional __swiftcall CloudEnvironment.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue >= 3)
  {
    LOBYTE(rawValue) = 3;
  }

  return rawValue;
}

uint64_t *sub_100077168@<X0>(uint64_t *result@<X0>, _BYTE *a2@<X8>)
{
  v2 = *result;
  if (*result >= 3)
  {
    LOBYTE(v2) = 3;
  }

  *a2 = v2;
  return result;
}

uint64_t sub_10007718C()
{
  v1 = 0x6D706F6C65766564;
  if (*v0 != 1)
  {
    v1 = 0x69746375646F7270;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6669636570736E75;
  }
}

unint64_t sub_10007720C()
{
  result = qword_1000BA3C0;
  if (!qword_1000BA3C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000BA3C0);
  }

  return result;
}

uint64_t sub_100077270(char a1)
{
  v9 = a1;
  v2 = sub_10007A5B8(&v9, v10)[2];
  swift_beginAccess();
  if (v2)
  {
    sub_100080C98();
  }

  swift_endAccess();

  v4 = *(v1 + 48);
  v5 = __CFADD__(v4, v2);
  v6 = v4 + v2;
  if (v5)
  {
    __break(1u);
    goto LABEL_10;
  }

  *(v1 + 48) = v6;
  v7 = *(v1 + 40);
  if (v7 >= 2)
  {
    v8 = v6 % v7;
    if (v8)
    {
      if (v7 >= v8)
      {
        return sub_100075468(v7 - v8);
      }

LABEL_10:
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_100077360(unsigned int a1)
{
  v2 = v1;
  swift_beginAccess();
  v4 = bswap32(a1);
  if (*(v2 + 32))
  {
    v5 = v4;
  }

  else
  {
    v5 = a1;
  }

  v13 = v5;
  v6 = sub_10007A5B8(&v13, v14)[2];
  swift_beginAccess();
  if (v6)
  {
    sub_100080C98();
  }

  swift_endAccess();

  v8 = *(v2 + 48);
  v9 = __CFADD__(v8, v6);
  v10 = v8 + v6;
  if (v9)
  {
    __break(1u);
    goto LABEL_13;
  }

  *(v2 + 48) = v10;
  v11 = *(v2 + 40);
  if (v11 >= 2)
  {
    v12 = v10 % v11;
    if (v12)
    {
      if (v11 >= v12)
      {
        return sub_100075468(v11 - v12);
      }

LABEL_13:
      __break(1u);
    }
  }

  return result;
}

CloudData::EncryptionType_optional __swiftcall EncryptionType.init(rawValue:)(Swift::UInt8 rawValue)
{
  if (rawValue == 2)
  {
    v1.value = CloudData_EncryptionType_diffieHellman;
  }

  else
  {
    v1.value = CloudData_EncryptionType_unknownDefault;
  }

  if (rawValue == 1)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

Swift::Int sub_1000774A0()
{
  v1 = *v0;
  sub_100081988();
  if (v1)
  {
    v2 = 2;
  }

  else
  {
    v2 = 1;
  }

  sub_1000819A8(v2);
  return sub_1000819B8();
}

void sub_1000774F0()
{
  if (*v0)
  {
    v1 = 2;
  }

  else
  {
    v1 = 1;
  }

  sub_1000819A8(v1);
}

Swift::Int sub_100077528()
{
  v1 = *v0;
  sub_100081988();
  if (v1)
  {
    v2 = 2;
  }

  else
  {
    v2 = 1;
  }

  sub_1000819A8(v2);
  return sub_1000819B8();
}

unsigned __int8 *sub_100077574@<X0>(unsigned __int8 *result@<X0>, char *a2@<X8>)
{
  v2 = *result;
  if (v2 == 2)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (v2 == 1)
  {
    v4 = 0;
  }

  else
  {
    v4 = v3;
  }

  *a2 = v4;
  return result;
}

void sub_100077594(char *a1@<X8>)
{
  if (*v1)
  {
    v2 = 2;
  }

  else
  {
    v2 = 1;
  }

  *a1 = v2;
}

Swift::Int sub_1000775BC()
{
  sub_100081988();
  sub_1000819A8(1u);
  return sub_1000819B8();
}

Swift::Int sub_100077628()
{
  sub_100081988();
  sub_1000819A8(1u);
  return sub_1000819B8();
}

uint64_t EncryptionHeader.encode()(char a1)
{
  type metadata accessor for DataEncoder();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100084880;
  *(inited + 32) = 0;
  *(inited + 40) = xmmword_100089360;
  sub_100077270((a1 & 1) + 1);
  swift_beginAccess();
  v3 = *(inited + 16);
  v4 = *(inited + 24);
  swift_setDeallocating();
  v5 = *(inited + 16);
  v6 = *(inited + 24);
  sub_10000D808(v3, v4);
  sub_100006A34(v5, v6);
  return v3;
}

uint64_t CompressionHeader.encode()(unsigned int a1)
{
  type metadata accessor for DataEncoder();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100084880;
  *(inited + 32) = 0;
  *(inited + 40) = xmmword_100089360;
  sub_100077270(1);
  sub_100077360(a1);
  swift_beginAccess();
  v3 = *(inited + 16);
  v4 = *(inited + 24);
  swift_setDeallocating();
  v5 = *(inited + 16);
  v6 = *(inited + 24);
  sub_10000D808(v3, v4);
  sub_100006A34(v5, v6);
  return v3;
}

void *static Encryption.deriveRecordIDAndKey(from:salt:)()
{
  sub_100080E28();
  isa = sub_100080CC8().super.isa;
  v1 = sub_100080CC8().super.isa;
  v2 = sub_100080E18();

  if (v2)
  {
    sub_100080CE8();
  }

  sub_10007A874();
  swift_allocError();
  *v3 = 1;
  swift_willThrow();
  return v2;
}

uint64_t static Encryption.deriveRecordID(fromPublicKey:)(uint64_t a1, unint64_t a2)
{
  v4 = sub_1000811B8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100081068();
  v24 = *(v9 - 8);
  v10 = *(v24 + 64);
  __chkstk_darwin(v9);
  v12 = v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10007AC3C(&qword_1000BA3D0, &type metadata accessor for SHA256);
  sub_100081058();
  sub_10000D808(a1, a2);
  v13 = v20[0];
  sub_10007A090(a1, a2, v8);
  v20[0] = v13;
  sub_100006A34(a1, a2);
  sub_100081048();
  (*(v5 + 8))(v8, v4);
  v22 = v9;
  v23 = sub_10007AC3C(&qword_1000BA3D8, &type metadata accessor for SHA256Digest);
  v14 = sub_10007A8C8(v21);
  v15 = v24;
  (*(v24 + 16))(v14, v12, v9);
  sub_10002329C(v21, v22);
  sub_100080B68();
  (*(v15 + 8))(v12, v9);
  v16 = v20[1];
  v17 = v20[2];
  sub_1000068F4(v21);
  v21[0] = sub_100074254(v16, v17);
  sub_100006940(&qword_1000B7530, &qword_100089380);
  sub_10003EEE8(&qword_1000B88A0, &qword_1000B7530, &qword_100089380);
  sub_100081248();
  sub_100006A34(v16, v17);

  v18 = sub_100081348();

  return v18;
}

uint64_t static Encryption.encryptData(_:using:encryptionType:)(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, int a5)
{
  v66 = a5;
  v60 = a4;
  v61 = a3;
  v7 = sub_100006940(&qword_1000BA3E0, &qword_100089388);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v50 - v9;
  v11 = sub_100081138();
  v59 = *(v11 - 8);
  v12 = *(v59 + 64);
  __chkstk_darwin(v11);
  v14 = &v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1000810B8();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v19 = &v50 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for Compression();
  v21 = v62;
  result = static Compression.compress(data:)();
  if (v21)
  {

    sub_10007A874();
    swift_allocError();
    *v24 = 3;
    swift_willThrow();
    return v20;
  }

  v54 = v14;
  v55 = v10;
  v50 = v11;
  v53 = v16;
  v25 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v25 != 2)
    {
      goto LABEL_15;
    }

    v27 = *(a1 + 16);
    v26 = *(a1 + 24);
    a2 = v26 - v27;
    if (!__OFSUB__(v26, v27))
    {
      goto LABEL_12;
    }

    __break(1u);
LABEL_10:
    if (__OFSUB__(HIDWORD(a1), a1))
    {
      goto LABEL_23;
    }

    a2 = HIDWORD(a1) - a1;
LABEL_12:
    if ((a2 & 0x8000000000000000) == 0)
    {
      if (!HIDWORD(a2))
      {
        goto LABEL_16;
      }

      __break(1u);
LABEL_15:
      LODWORD(a2) = 0;
      goto LABEL_16;
    }

    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v25)
  {
    goto LABEL_10;
  }

  LODWORD(a2) = BYTE6(a2);
LABEL_16:
  v52 = v19;
  v51 = v15;
  v28 = result;
  v29 = v23;
  type metadata accessor for DataEncoder();
  inited = swift_initStackObject();
  v62 = xmmword_100084880;
  *(inited + 16) = xmmword_100084880;
  *(inited + 32) = 0;
  v58 = xmmword_100089360;
  *(inited + 40) = xmmword_100089360;
  sub_100077270(1);
  sub_100077360(a2);
  swift_beginAccess();
  v31 = *(inited + 16);
  v32 = *(inited + 24);
  swift_setDeallocating();
  v33 = *(inited + 16);
  v34 = *(inited + 24);
  sub_10000D808(v31, v32);
  sub_100006A34(v33, v34);
  v65 = v62;
  sub_100080D08();
  v56 = v28;
  v57 = v29;
  sub_100080D08();
  v35 = swift_initStackObject();
  *(v35 + 16) = v62;
  *(v35 + 32) = 0;
  *(v35 + 40) = v58;
  LOBYTE(v29) = v66;
  sub_100077270((v66 & 1) + 1);
  swift_beginAccess();
  v36 = *(v35 + 16);
  v37 = *(v35 + 24);
  swift_setDeallocating();
  v38 = *(v35 + 16);
  v39 = *(v35 + 24);
  sub_10000D808(v36, v37);
  sub_100006A34(v38, v39);
  v64 = v62;
  v20 = &v64;
  sub_100080D08();
  if (v29)
  {
    sub_10007A874();
    swift_allocError();
    *v40 = 2;
    swift_willThrow();
    sub_100006A34(v36, v37);
    sub_100006A34(v31, v32);
    sub_100006A34(v56, v57);
    sub_100006A34(v65, *(&v65 + 1));
    sub_100006A34(v64, *(&v64 + 1));
    return v20;
  }

  *&v62 = v31;
  *&v63 = v61;
  *(&v63 + 1) = v60;
  sub_10000D808(v61, v60);
  v41 = v52;
  sub_1000810A8();
  v42 = v65;
  v63 = v65;
  v43 = sub_1000810F8();
  v44 = v55;
  (*(*(v43 - 8) + 56))(v55, 1, 1, v43);
  v45 = v44;
  sub_10000D808(v42, *(&v42 + 1));
  sub_10007A92C();
  v46 = v54;
  sub_1000810D8();
  sub_10007A980(v45);
  sub_100006A34(v63, *(&v63 + 1));
  result = sub_100081118();
  if (v47 >> 60 != 15)
  {
    v48 = result;
    v49 = v47;
    sub_100080D08();
    sub_10001A164(v48, v49);
    (*(v59 + 8))(v46, v50);
    v20 = sub_100080CD8(0);
    sub_100006A34(v36, v37);
    sub_100006A34(v62, v32);
    sub_100006A34(v56, v57);
    (*(v53 + 8))(v41, v51);
    sub_100006A34(v65, *(&v65 + 1));
    sub_100006A34(v64, *(&v64 + 1));
    return v20;
  }

LABEL_24:
  __break(1u);
  return result;
}

uint64_t static Encryption.decryptData(_:using:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = v4;
  v141 = a4;
  v136 = a3;
  v124 = sub_1000810F8();
  v120 = *(v124 - 8);
  v6 = *(v120 + 64);
  v7 = (__chkstk_darwin)();
  v119 = &v108 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v123 = &v108 - v9;
  v122 = sub_100081088();
  v121 = *(v122 - 8);
  v10 = *(v121 + 64);
  __chkstk_darwin(v122);
  v127 = &v108 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100081168();
  v128 = *(v12 - 8);
  v13 = *(v128 + 64);
  v14 = __chkstk_darwin(v12);
  v131 = &v108 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v132 = &v108 - v16;
  v17 = sub_1000811A8();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin(v17);
  v133 = &v108 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_100081138();
  v129 = *(v21 - 8);
  v130 = v21;
  v22 = *(v129 + 64);
  v23 = __chkstk_darwin(v21);
  v25 = &v108 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v27 = &v108 - v26;
  v28 = sub_1000810B8();
  v29 = *(v28 - 8);
  v134 = v28;
  v135 = v29;
  v30 = *(v29 + 64);
  v31 = __chkstk_darwin(v28);
  v126 = &v108 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __chkstk_darwin(v31);
  v125 = &v108 - v34;
  __chkstk_darwin(v33);
  v36 = &v108 - v35;
  result = sub_100080C68();
  if (v38 >> 60 == 15)
  {
    goto LABEL_14;
  }

  v39 = v38;
  v40 = v38 >> 62;
  if ((v38 >> 62) > 1)
  {
    if (v40 != 2)
    {
      goto LABEL_13;
    }

    v42 = *(result + 16);
    v41 = *(result + 24);
    v43 = __OFSUB__(v41, v42);
    v44 = v41 - v42;
    if (!v43)
    {
      if (v44 >= 5)
      {
        goto LABEL_9;
      }

      goto LABEL_13;
    }

    __break(1u);
LABEL_84:
    __break(1u);
    goto LABEL_85;
  }

  if (v40)
  {
    if (!__OFSUB__(HIDWORD(result), result))
    {
      if (HIDWORD(result) - result >= 5)
      {
        goto LABEL_9;
      }

LABEL_13:
      sub_10001A164(result, v38);
LABEL_14:
      sub_10007A874();
      swift_allocError();
      *v51 = 0;
      swift_willThrow();
      return v5;
    }

    goto LABEL_84;
  }

  if (BYTE6(v38) < 5uLL)
  {
    goto LABEL_13;
  }

LABEL_9:
  v115 = v12;
  v116 = v18;
  v117 = v17;
  v45 = result;
  v46 = sub_100080CA8();
  v48 = v47;
  sub_10000D808(v46, v47);
  v49 = sub_10007A634(v46, v48);
  if (v4)
  {

    sub_10007A874();
    swift_allocError();
    *v50 = 0;
    swift_willThrow();
    sub_100006A34(v46, v48);
    sub_10001A164(v45, v39);
    return v5;
  }

  v114 = v46;
  v113 = v48;
  v118 = v45;
  if (v49)
  {
    result = sub_100080CA8();
    v36 = result;
    v53 = v52;
    v54 = v114;
    if (v40 != 2)
    {
      if (v40 == 1)
      {
        LODWORD(v55) = HIDWORD(v118) - v118;
        if (__OFSUB__(HIDWORD(v118), v118))
        {
LABEL_89:
          __break(1u);
LABEL_90:
          __break(1u);
LABEL_91:
          __break(1u);
LABEL_92:
          __break(1u);
          goto LABEL_93;
        }

        v55 = v55;
      }

      else
      {
        v55 = BYTE6(v39);
      }

LABEL_30:
      if (!__OFSUB__(v55, 16))
      {
        if (v55 - 16 >= 101)
        {
          result = sub_100080CA8();
          v59 = result;
          v112 = v36;
          v60 = &v142;
          if (v40 == 2)
          {
            v61 = v118;
            v68 = *(v118 + 16);
            v67 = *(v118 + 24);
            v43 = __OFSUB__(v67, v68);
            v60 = v67 - v68;
            if (!v43)
            {
              goto LABEL_43;
            }

            __break(1u);
          }

          else if (v40 == 1)
          {
            v61 = v118;
            LODWORD(v60) = HIDWORD(v118) - v118;
            if (__OFSUB__(HIDWORD(v118), v118))
            {
              goto LABEL_90;
            }

            v60 = v60;
LABEL_43:
            result = v60 - 16;
            if (!__OFSUB__(v60, 16))
            {
              v111 = v53;
              *(&v110 + 1) = v58;
              if (v40 > 1)
              {
                if (v40 == 2)
                {
                  v69 = *(v61 + 16);
                  v70 = *(v61 + 24);
                }

                else
                {
                  v70 = 0;
                  v69 = 0;
                }
              }

              else if (v40)
              {
                v69 = v61;
                v70 = v61 >> 32;
              }

              else
              {
                v69 = 0;
                v70 = BYTE6(v39);
              }

              *&v110 = v59;
              if (v70 >= result && v70 >= v69)
              {
                v71 = sub_100080CA8();
                v73 = v72;
                *&v140 = v136;
                *(&v140 + 1) = v141;
                sub_10000D808(v136, v141);
                sub_100081198();
                v109 = v71;
                v108 = v73;
                sub_100081188();
                *&v140 = v112;
                *(&v140 + 1) = v111;
                sub_10000D808(v112, v111);
                sub_100081158();
                sub_100081178();
                while (1)
                {
                  v140 = xmmword_100084880;
                  sub_100080D08();
                  v80 = sub_100081148();
                  v82 = v81;
                  sub_100080D08();
                  sub_100006A34(v80, v82);
                  sub_1000811C8();
                  v139 = v140;
                  sub_10000D808(v140, *(&v140 + 1));
                  sub_10007AC3C(&qword_1000BA3F0, &type metadata accessor for SHA384);
                  sub_10007A92C();
                  sub_100081078();
                  sub_100006A34(v139, *(&v139 + 1));
                  sub_100081098();
                  v83 = *(&v139 + 1);
                  v84 = v139;
                  *&v139 = sub_100080CA8();
                  *(&v139 + 1) = v85;
                  result = sub_1000810A8();
                  v86 = v83 >> 62;
                  v54 = v114;
                  if ((v83 >> 62) > 1)
                  {
                    v87 = v123;
                    v88 = v124;
                    if (v86 != 2)
                    {
                      goto LABEL_92;
                    }

                    v89 = *(v84 + 16);
                    v90 = *(v84 + 24);
                  }

                  else
                  {
                    v87 = v123;
                    v88 = v124;
                    if (v86)
                    {
                      v89 = v84;
                      v90 = v84 >> 32;
                    }

                    else
                    {
                      v89 = 0;
                      v90 = BYTE6(v83);
                    }
                  }

                  if (v90 < 32 || v90 < v89)
                  {
                    goto LABEL_92;
                  }

                  *&v139 = sub_100080CA8();
                  *(&v139 + 1) = v97;
                  sub_1000810E8();
                  (*(v120 + 16))(v119, v87, v88);
                  v139 = v110;
                  v98 = v109;
                  v99 = v108;
                  v137 = v109;
                  v138 = v108;
                  sub_10000D808(v110, *(&v110 + 1));
                  sub_10000D808(v98, v99);
                  sub_100081108();
                  v100 = *(&v110 + 1);
                  v74 = sub_1000810C8();
                  v76 = v103;
                  sub_100006A34(v84, v83);
                  sub_100006A34(v109, v108);
                  sub_100006A34(v110, v100);
                  sub_100006A34(v112, v111);
                  (*(v129 + 8))(v25, v130);
                  (*(v120 + 8))(v123, v124);
                  v104 = v134;
                  v105 = *(v135 + 8);
                  v105(v126, v134);
                  v105(v125, v104);
                  sub_100006A34(v140, *(&v140 + 1));
                  (*(v121 + 8))(v127, v122);
                  v106 = *(v128 + 8);
                  v107 = v115;
                  v106(v131, v115);
                  v106(v132, v107);
                  result = (*(v116 + 8))(v133, v117);
LABEL_54:
                  v5 = v76 >> 62;
                  v25 = v113;
                  if ((v76 >> 62) <= 1)
                  {
                    if (v5)
                    {
                      LODWORD(v77) = HIDWORD(v74) - v74;
                      if (__OFSUB__(HIDWORD(v74), v74))
                      {
                        goto LABEL_91;
                      }

                      v77 = v77;
                    }

                    else
                    {
                      v77 = BYTE6(v76);
                    }

LABEL_66:
                    if (v77 < 9)
                    {
LABEL_68:
                      sub_10007A874();
                      swift_allocError();
                      *v94 = 0;
                      swift_willThrow();
                      sub_100006A34(v54, v25);
                      sub_10001A164(v118, v39);
                      sub_100006A34(v74, v76);
                      return v5;
                    }

                    v91 = sub_100080CA8();
                    v93 = v92;
                    sub_10000D808(v91, v92);
                    result = sub_10007A758(v91, v93);
                    if (v5)
                    {
                      if (v5 == 2)
                      {
                        v96 = *(v74 + 16);
                        v95 = *(v74 + 24);
                      }

                      else
                      {
                        v96 = v74;
                        v95 = v74 >> 32;
                      }
                    }

                    else
                    {
                      v96 = 0;
                      v95 = BYTE6(v76);
                    }

                    if (v95 >= 8 && v95 >= v96)
                    {
                      v101 = sub_100080CA8();
                      v141 = v102;
                      v5 = sub_100076C9C();
                      sub_100006A34(v74, v76);
                      sub_100006A34(v114, v113);
                      sub_100006A34(v91, v93);
                      sub_100006A34(v101, v141);
                      sub_10001A164(v118, v39);
                      return v5;
                    }

                    goto LABEL_94;
                  }

                  if (v5 != 2)
                  {
                    goto LABEL_68;
                  }

                  v79 = *(v74 + 16);
                  v78 = *(v74 + 24);
                  v43 = __OFSUB__(v78, v79);
                  v77 = v78 - v79;
                  if (!v43)
                  {
                    goto LABEL_66;
                  }

                  __break(1u);
                }
              }

              goto LABEL_88;
            }

LABEL_87:
            __break(1u);
LABEL_88:
            __break(1u);
            goto LABEL_89;
          }

          v61 = *(v60 - 256);
          v60 = BYTE6(v39);
          goto LABEL_43;
        }

LABEL_86:
        __break(1u);
        goto LABEL_87;
      }

LABEL_85:
      __break(1u);
      goto LABEL_86;
    }

    v57 = *(v118 + 16);
    v56 = *(v118 + 24);
    v43 = __OFSUB__(v56, v57);
    v55 = v56 - v57;
    v27 = v133;
    if (!v43)
    {
      goto LABEL_30;
    }

    __break(1u);
    goto LABEL_28;
  }

  *&v140 = v136;
  *(&v140 + 1) = v141;
  sub_10000D808(v136, v141);
  result = sub_1000810A8();
  v54 = v114;
  if (!v40)
  {
LABEL_28:
    v62 = 0;
    v63 = BYTE6(v39);
    goto LABEL_36;
  }

  if (v40 == 2)
  {
    v62 = *(v118 + 16);
    v63 = *(v118 + 24);
  }

  else
  {
    v62 = v118;
    v63 = v118 >> 32;
  }

LABEL_36:
  if (v63 >= 4 && v63 >= v62)
  {
    v64 = sub_100080CA8();
    v66 = v65;
    sub_10000D808(v64, v65);
    sub_1000798C4(v64, v66);
    v74 = sub_1000810C8();
    v76 = v75;
    sub_100006A34(v64, v66);
    (*(v129 + 8))(v27, v130);
    result = (*(v135 + 8))(v36, v134);
    goto LABEL_54;
  }

LABEL_93:
  __break(1u);
LABEL_94:
  __break(1u);
  return result;
}

uint64_t sub_1000798C4(uint64_t a1, unint64_t a2)
{
  v2 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v2 != 2)
    {
      goto LABEL_8;
    }

    v4 = *(a1 + 16);
    v3 = *(a1 + 24);
    v5 = __OFSUB__(v3, v4);
    v6 = v3 - v4;
    if (!v5)
    {
      if (v6 >= 28)
      {
        goto LABEL_11;
      }

      goto LABEL_8;
    }

    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  if (v2)
  {
    if (!__OFSUB__(HIDWORD(a1), a1))
    {
      if (HIDWORD(a1) - a1 >= 28)
      {
        goto LABEL_11;
      }

LABEL_8:
      sub_100006A34(a1, a2);
      v7 = sub_100081028();
      sub_10007AC3C(&qword_1000BA4B8, &type metadata accessor for CryptoKitError);
      swift_allocError();
      (*(*(v7 - 8) + 104))(v8, enum case for CryptoKitError.incorrectParameterSize(_:), v7);
      return swift_willThrow();
    }

    goto LABEL_35;
  }

  if (BYTE6(a2) < 0x1CuLL)
  {
    goto LABEL_8;
  }

LABEL_11:
  v29[3] = &type metadata for Data;
  v29[4] = &protocol witness table for Data;
  v29[0] = a1;
  v29[1] = a2;
  v10 = sub_10002329C(v29, &type metadata for Data);
  v11 = *v10;
  v12 = v10[1];
  v13 = v12 >> 62;
  if ((v12 >> 62) > 1)
  {
    if (v13 != 2)
    {
      memset(v27, 0, 14);
      v15 = v27;
      v14 = v27;
      goto LABEL_33;
    }

    v16 = *(v11 + 16);
    v17 = *(v11 + 24);
    v18 = sub_100080AE8();
    if (v18)
    {
      v19 = sub_100080B18();
      v11 = v16 - v19;
      if (__OFSUB__(v16, v19))
      {
LABEL_37:
        __break(1u);
        goto LABEL_38;
      }

      v18 += v11;
    }

    v5 = __OFSUB__(v17, v16);
    v20 = v17 - v16;
    if (!v5)
    {
      goto LABEL_25;
    }

    __break(1u);
    goto LABEL_21;
  }

  if (v13)
  {
LABEL_21:
    v21 = v11;
    v22 = v11 >> 32;
    v20 = v22 - v21;
    if (v22 >= v21)
    {
      v18 = sub_100080AE8();
      if (!v18)
      {
LABEL_25:
        v24 = sub_100080B08();
        if (v24 >= v20)
        {
          v25 = v20;
        }

        else
        {
          v25 = v24;
        }

        v26 = (v25 + v18);
        if (v18)
        {
          v14 = v26;
        }

        else
        {
          v14 = 0;
        }

        v15 = v18;
        goto LABEL_33;
      }

      v23 = sub_100080B18();
      if (!__OFSUB__(v21, v23))
      {
        v18 += v21 - v23;
        goto LABEL_25;
      }

LABEL_38:
      __break(1u);
    }

    goto LABEL_36;
  }

  v27[0] = *v10;
  LOWORD(v27[1]) = v12;
  BYTE2(v27[1]) = BYTE2(v12);
  BYTE3(v27[1]) = BYTE3(v12);
  BYTE4(v27[1]) = BYTE4(v12);
  BYTE5(v27[1]) = BYTE5(v12);
  v14 = v27 + BYTE6(v12);
  v15 = v27;
LABEL_33:
  sub_10003DFC4(v15, v14, &v28);
  sub_1000068F4(v29);
  return sub_100081128();
}

uint64_t sub_100079BD4@<X0>(_BYTE *a1@<X0>, _BYTE *a2@<X1>, uint64_t *a3@<X8>)
{
  if (!a1 || (v5 = a2 - a1, a2 == a1))
  {
    v6 = &_swiftEmptyArrayStorage;
LABEL_7:
    v9 = sub_10003EE08(v6);
    v11 = v10;

    *a3 = v9;
    a3[1] = v11;
    return result;
  }

  result = sub_100059BE8(a2 - a1, 0);
  if (a2 > a1)
  {
    if ((v5 & 0x8000000000000000) == 0)
    {
      v6 = result;
      memmove((result + 32), a1, v5);
      goto LABEL_7;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t static Encryption.SHA1Hash(text:)()
{
  v0 = sub_1000811E8();
  v23 = *(v0 - 8);
  v1 = *(v23 + 64);
  __chkstk_darwin(v0);
  v3 = &v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1000811D8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100081308();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000812F8();
  v14 = sub_1000812C8();
  v16 = v15;
  result = (*(v10 + 8))(v13, v9);
  if (v16 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {
    sub_10007AC3C(&qword_1000BA3F8, &type metadata accessor for Insecure.SHA1);
    sub_100081058();
    sub_10000D808(v14, v16);
    sub_10007A2B4(v14, v16, v3);
    sub_10001A164(v14, v16);
    sub_100081048();
    (*(v23 + 8))(v3, v0);
    v27 = v4;
    v28 = sub_10007AC3C(&qword_1000BA400, &type metadata accessor for Insecure.SHA1Digest);
    v18 = sub_10007A8C8(v26);
    (*(v5 + 16))(v18, v8, v4);
    sub_10002329C(v26, v27);
    sub_100080B68();
    (*(v5 + 8))(v8, v4);
    v19 = v24;
    v20 = v25;
    sub_1000068F4(v26);
    v26[0] = sub_100074254(v19, v20);
    sub_100006940(&qword_1000B7530, &qword_100089380);
    sub_10003EEE8(&qword_1000B88A0, &qword_1000B7530, &qword_100089380);
    v21 = sub_100081248();
    sub_100006A34(v19, v20);
    sub_10001A164(v14, v16);

    return v21;
  }

  return result;
}

uint64_t sub_10007A090(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v3 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v3)
    {
      sub_1000811B8();
      sub_10007AC3C(&qword_1000BA3D0, &type metadata accessor for SHA256);
      return sub_100081038();
    }

    v5 = a1;
    v6 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

    return sub_10007A4D8(v5, v6, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, &type metadata accessor for SHA256, &qword_1000BA3D0, &type metadata accessor for SHA256);
  }

  if (v3 == 2)
  {
    v5 = *(a1 + 16);
    v6 = *(a1 + 24);
    return sub_10007A4D8(v5, v6, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, &type metadata accessor for SHA256, &qword_1000BA3D0, &type metadata accessor for SHA256);
  }

  sub_1000811B8();
  sub_10007AC3C(&qword_1000BA3D0, &type metadata accessor for SHA256);
  return sub_100081038();
}

uint64_t sub_10007A2B4(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v3 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v3)
    {
      sub_1000811E8();
      sub_10007AC3C(&qword_1000BA3F8, &type metadata accessor for Insecure.SHA1);
      return sub_100081038();
    }

    v5 = a1;
    v6 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

    return sub_10007A4D8(v5, v6, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, &type metadata accessor for Insecure.SHA1, &qword_1000BA3F8, &type metadata accessor for Insecure.SHA1);
  }

  if (v3 == 2)
  {
    v5 = *(a1 + 16);
    v6 = *(a1 + 24);
    return sub_10007A4D8(v5, v6, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, &type metadata accessor for Insecure.SHA1, &qword_1000BA3F8, &type metadata accessor for Insecure.SHA1);
  }

  sub_1000811E8();
  sub_10007AC3C(&qword_1000BA3F8, &type metadata accessor for Insecure.SHA1);
  return sub_100081038();
}

uint64_t sub_10007A4D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void), unint64_t *a6, void (*a7)(uint64_t))
{
  result = sub_100080AE8();
  if (!result || (result = sub_100080B18(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      sub_100080B08();
      a5(0);
      sub_10007AC3C(a6, a7);
      return sub_100081038();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_10007A5B8(_BYTE *a1, _BYTE *a2)
{
  if (!a1)
  {
    return _swiftEmptyArrayStorage;
  }

  v3 = a2 - a1;
  if (a2 == a1)
  {
    return _swiftEmptyArrayStorage;
  }

  result = sub_100059BE8(a2 - a1, 0);
  if (a2 > a1)
  {
    if ((v3 & 0x8000000000000000) == 0)
    {
      v6 = result;
      memmove(result + 4, a1, v3);
      return v6;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_10007A634(uint64_t a1, unint64_t a2)
{
  v9 = 0;
  type metadata accessor for DataDecoder();
  inited = swift_initStackObject();
  *(inited + 16) = a1;
  *(inited + 24) = a2;
  *(inited + 32) = 0;
  *(inited + 40) = xmmword_100089360;
  sub_10000D808(a1, a2);
  sub_10007AC90(&v9);
  if (!v2)
  {
    if (v9 == 1)
    {
      v3 = 0;
    }

    else if (v9 == 2)
    {
      v3 = 1;
    }

    else
    {
      sub_100075E5C();
      swift_allocError();
      *v8 = 2;
      swift_willThrow();
    }
  }

  sub_100006A34(a1, a2);
  swift_setDeallocating();
  sub_100006A34(*(inited + 16), *(inited + 24));
  return v3;
}

uint64_t sub_10007A758(uint64_t a1, unint64_t a2)
{
  v9 = 0;
  v8 = 0;
  type metadata accessor for DataDecoder();
  inited = swift_initStackObject();
  *(inited + 16) = a1;
  *(inited + 24) = a2;
  *(inited + 32) = 0;
  *(inited + 40) = xmmword_100089360;
  sub_10000D808(a1, a2);
  sub_10007AC90(&v9);
  if (v2)
  {
    goto LABEL_3;
  }

  sub_10007AEF4(&v8);
  if (v9 != 1)
  {
    sub_100075E5C();
    swift_allocError();
    *v7 = 2;
    swift_willThrow();
LABEL_3:
    sub_100006A34(a1, a2);
    swift_setDeallocating();
    return sub_100006A34(*(inited + 16), *(inited + 24));
  }

  sub_100006A34(a1, a2);
  swift_setDeallocating();
  sub_100006A34(*(inited + 16), *(inited + 24));
  return v8;
}

unint64_t sub_10007A874()
{
  result = qword_1000BA3C8;
  if (!qword_1000BA3C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000BA3C8);
  }

  return result;
}

uint64_t *sub_10007A8C8(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

unint64_t sub_10007A92C()
{
  result = qword_1000BA3E8;
  if (!qword_1000BA3E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000BA3E8);
  }

  return result;
}

uint64_t sub_10007A980(uint64_t a1)
{
  v2 = sub_100006940(&qword_1000BA3E0, &qword_100089388);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10007A9EC()
{
  result = qword_1000BA408;
  if (!qword_1000BA408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000BA408);
  }

  return result;
}

unint64_t sub_10007AA44()
{
  result = qword_1000BA410;
  if (!qword_1000BA410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000BA410);
  }

  return result;
}

unint64_t sub_10007AA9C()
{
  result = qword_1000BA418;
  if (!qword_1000BA418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000BA418);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CompressionType(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for CompressionType(_WORD *result, int a2, int a3)
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

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

uint64_t sub_10007AC3C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10007AC90(_BYTE *a1)
{
  v3 = v1;
  v5 = *(v1 + 40);
  if (v5 >= 2)
  {
    v6 = *(v1 + 48) % v5;
    if (v6)
    {
      if (v5 < v6)
      {
        __break(1u);
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      result = sub_100075B90(v5 - v6);
      if (v2)
      {
        return result;
      }
    }
  }

  result = sub_100075C5C(1uLL);
  if (v2)
  {
    return result;
  }

  v9 = v8;
  v10 = v8 >> 62;
  if ((v8 >> 62) > 1)
  {
    if (v10 != 2)
    {
      sub_100006A34(result, v8);
      LOBYTE(v12) = 0;
      goto LABEL_29;
    }

    v14 = *(result + 16);
    v15 = *(result + 24);
    v16 = result;
    result = sub_100080AE8();
    v12 = result;
    if (result)
    {
      result = sub_100080B18();
      if (__OFSUB__(v14, result))
      {
LABEL_34:
        __break(1u);
        goto LABEL_35;
      }

      v12 += v14 - result;
    }

    v17 = __OFSUB__(v15, v14);
    v18 = v15 - v14;
    if (!v17)
    {
LABEL_20:
      v21 = sub_100080B08();
      LOBYTE(__src) = 0;
      if (v12)
      {
        if (v21 >= v18)
        {
          v22 = v18;
        }

        else
        {
          v22 = v21;
        }

        memcpy(&__src, v12, v22);
        LOBYTE(v12) = __src;
      }

      goto LABEL_27;
    }

    __break(1u);
    goto LABEL_16;
  }

  if (v10)
  {
LABEL_16:
    v19 = result;
    v18 = (result >> 32) - result;
    if (result >> 32 >= result)
    {
      v16 = result;
      v12 = sub_100080AE8();
      if (!v12)
      {
        sub_100080B08();
LABEL_27:
        v13 = v16;
        goto LABEL_28;
      }

      v20 = sub_100080B18();
      if (!__OFSUB__(v19, v20))
      {
        v12 += v19 - v20;
        goto LABEL_20;
      }

LABEL_35:
      __break(1u);
    }

    goto LABEL_33;
  }

  __src = result;
  v25 = v8;
  v26 = BYTE2(v8);
  v27 = BYTE3(v8);
  v28 = BYTE4(v8);
  v29 = BYTE5(v8);
  __dst = 0;
  v11 = result;
  memcpy(&__dst, &__src, BYTE6(v8));
  LOBYTE(v12) = __dst;
  v13 = v11;
LABEL_28:
  sub_100006A34(v13, v9);
LABEL_29:
  *a1 = v12;
  result = swift_beginAccess();
  if (*(v3 + 32) == 1)
  {
    *a1 = v12;
  }

  return result;
}

uint64_t sub_10007AEF4(_DWORD *a1)
{
  v3 = v1;
  v5 = *(v1 + 40);
  if (v5 >= 2)
  {
    v6 = *(v1 + 48) % v5;
    if (v6)
    {
      if (v5 < v6)
      {
        __break(1u);
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      result = sub_100075B90(v5 - v6);
      if (v2)
      {
        return result;
      }
    }
  }

  result = sub_100075C5C(4uLL);
  if (v2)
  {
    return result;
  }

  v9 = v8;
  v10 = v8 >> 62;
  if ((v8 >> 62) > 1)
  {
    if (v10 != 2)
    {
      sub_100006A34(result, v8);
      LODWORD(v12) = 0;
      goto LABEL_29;
    }

    v14 = *(result + 16);
    v15 = *(result + 24);
    v16 = result;
    result = sub_100080AE8();
    v12 = result;
    if (result)
    {
      result = sub_100080B18();
      if (__OFSUB__(v14, result))
      {
LABEL_34:
        __break(1u);
        goto LABEL_35;
      }

      v12 += v14 - result;
    }

    v17 = __OFSUB__(v15, v14);
    v18 = v15 - v14;
    if (!v17)
    {
LABEL_20:
      v21 = sub_100080B08();
      __src = 0;
      if (v12)
      {
        if (v21 >= v18)
        {
          v22 = v18;
        }

        else
        {
          v22 = v21;
        }

        memcpy(&__src, v12, v22);
        LODWORD(v12) = __src;
      }

      goto LABEL_27;
    }

    __break(1u);
    goto LABEL_16;
  }

  if (v10)
  {
LABEL_16:
    v19 = result;
    v18 = (result >> 32) - result;
    if (result >> 32 >= result)
    {
      v16 = result;
      v12 = sub_100080AE8();
      if (!v12)
      {
        sub_100080B08();
LABEL_27:
        v13 = v16;
        goto LABEL_28;
      }

      v20 = sub_100080B18();
      if (!__OFSUB__(v19, v20))
      {
        v12 += v19 - v20;
        goto LABEL_20;
      }

LABEL_35:
      __break(1u);
    }

    goto LABEL_33;
  }

  LOWORD(__src) = result;
  BYTE2(__src) = BYTE2(result);
  HIBYTE(__src) = BYTE3(result);
  v25 = BYTE4(result);
  v26 = BYTE5(result);
  v27 = BYTE6(result);
  v28 = HIBYTE(result);
  v29 = v8;
  v30 = BYTE2(v8);
  v31 = BYTE3(v8);
  v32 = BYTE4(v8);
  v33 = BYTE5(v8);
  __dst = 0;
  v11 = result;
  memcpy(&__dst, &__src, BYTE6(v8));
  LODWORD(v12) = __dst;
  v13 = v11;
LABEL_28:
  sub_100006A34(v13, v9);
LABEL_29:
  *a1 = v12;
  result = swift_beginAccess();
  if (*(v3 + 32) == 1)
  {
    *a1 = bswap32(v12);
  }

  return result;
}

unint64_t sub_10007B15C(unint64_t result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 62;
  if ((a4 >> 62) <= 1)
  {
    if (!v4)
    {
      goto LABEL_10;
    }

    if ((a3 & 0x80000000) != 0)
    {
LABEL_19:
      __break(1u);
      goto LABEL_20;
    }

    v5 = a3;
    v6 = a3 >> 32;
LABEL_8:
    if ((v6 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v6 >= v5)
    {
LABEL_10:
      if ((result & 0x8000000000000000) == 0)
      {
        if ((a2 & 0x8000000000000000) == 0)
        {
          if (a2 >= result)
          {
            return sub_100080CA8();
          }

          goto LABEL_18;
        }

LABEL_17:
        __break(1u);
LABEL_18:
        __break(1u);
        goto LABEL_19;
      }

LABEL_16:
      __break(1u);
      goto LABEL_17;
    }

    __break(1u);
    goto LABEL_16;
  }

  if (v4 != 2)
  {
    goto LABEL_10;
  }

  v5 = *(a3 + 16);
  if ((v5 & 0x8000000000000000) == 0)
  {
    v6 = *(a3 + 24);
    goto LABEL_8;
  }

LABEL_20:
  __break(1u);
  return result;
}

unint64_t sub_10007B1CC(unint64_t result, uint64_t a2, unint64_t a3)
{
  v3 = 0;
  v4 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v4 != 2)
    {
      goto LABEL_10;
    }

    v3 = *(a2 + 16);
  }

  else
  {
    if (!v4)
    {
      goto LABEL_10;
    }

    v3 = a2;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  if (HIDWORD(v3))
  {
    __break(1u);
  }

LABEL_10:
  if (v4 > 1)
  {
    if (v4 != 2)
    {
      if (!v3)
      {
        goto LABEL_20;
      }

      goto LABEL_23;
    }

    v5 = *(a2 + 24);
LABEL_17:
    if ((v5 & 0x8000000000000000) != 0)
    {
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    if (HIDWORD(v5))
    {
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

    if (v5 >= v3)
    {
      goto LABEL_20;
    }

LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v4)
  {
    v5 = a2 >> 32;
    goto LABEL_17;
  }

  if (BYTE6(a3) < v3)
  {
    goto LABEL_23;
  }

LABEL_20:
  v6 = HIDWORD(result);
  result = result;
  if (v6 >= result)
  {
    return sub_100080CA8();
  }

LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_10007B284(uint64_t result, uint64_t a2, unint64_t a3)
{
  v3 = 0;
  v4 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v4 != 2)
    {
      goto LABEL_10;
    }

    v3 = *(a2 + 16);
  }

  else
  {
    if (!v4)
    {
      goto LABEL_10;
    }

    v3 = a2;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  if (HIDWORD(v3))
  {
    __break(1u);
  }

LABEL_10:
  if (v4 > 1)
  {
    if (v4 != 2)
    {
      LODWORD(v5) = 0;
      if (!v3)
      {
        goto LABEL_20;
      }

      goto LABEL_23;
    }

    v5 = *(a2 + 24);
LABEL_17:
    if ((v5 & 0x8000000000000000) != 0)
    {
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    if (HIDWORD(v5))
    {
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

    if (v5 >= v3)
    {
      goto LABEL_20;
    }

LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v4)
  {
    v5 = a2 >> 32;
    goto LABEL_17;
  }

  LODWORD(v5) = BYTE6(a3);
  if (BYTE6(a3) < v3)
  {
    goto LABEL_23;
  }

LABEL_20:
  if (v5 >= result)
  {
    return sub_100080CA8();
  }

LABEL_26:
  __break(1u);
  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> LensCalibrationDataHeader.validate(forLensCalibrationDataLength:)(Swift::UInt forLensCalibrationDataLength)
{
  v4 = (HIDWORD(v1) + v2);
  if (__CFADD__(HIDWORD(v1), v2))
  {
    __break(1u);
    goto LABEL_16;
  }

  if (__CFADD__(HIDWORD(v2), v3))
  {
LABEL_16:
    __break(1u);
    return;
  }

  if (v4 > forLensCalibrationDataLength || (HIDWORD(v2) + v3) > forLensCalibrationDataLength || v4 != HIDWORD(v2) || (v2 | v3) == 0)
  {
    sub_100075E5C();
    swift_allocError();
    *v8 = 3;
    swift_willThrow();
  }
}

uint64_t LensCalibrationDataHeader.encode()(unint64_t a1, unint64_t a2, unsigned int a3)
{
  v4 = a2;
  v5 = a1;
  v6 = HIDWORD(a1);
  v7 = HIDWORD(a2);
  type metadata accessor for DataEncoder();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100084880;
  *(inited + 32) = 0;
  *(inited + 40) = xmmword_100089360;
  sub_100077270(v5);
  sub_100077360(v6);
  sub_100077360(v4);
  sub_100077360(v7);
  sub_100077360(a3);
  swift_beginAccess();
  v9 = *(inited + 16);
  v10 = *(inited + 24);
  swift_setDeallocating();
  v11 = *(inited + 16);
  v12 = *(inited + 24);
  sub_10000D808(v9, v10);
  sub_100006A34(v11, v12);
  return v9;
}

uint64_t LensCalibrationPayload.leftLensCalibration.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t LensCalibrationPayload.rightLensCalibration.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t LensCalibrationPayload.appClipCodePayload.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return v1;
}

void *LensCalibrationPayload.__allocating_init(leftLensCalibration:rightLensCalibration:appClipCodePayload:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  result = swift_allocObject();
  result[2] = a1;
  result[3] = a2;
  result[4] = a3;
  result[5] = a4;
  result[6] = a5;
  result[7] = a6;
  return result;
}

void *LensCalibrationPayload.init(leftLensCalibration:rightLensCalibration:appClipCodePayload:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[2] = a1;
  v6[3] = a2;
  v6[4] = a3;
  v6[5] = a4;
  v6[6] = a5;
  v6[7] = a6;
  return v6;
}

uint64_t LensCalibrationPayload.__allocating_init(from:)(uint64_t a1, unint64_t a2)
{
  v4 = swift_allocObject();
  LensCalibrationPayload.init(from:)(a1, a2);
  return v4;
}

void LensCalibrationPayload.init(from:)(uint64_t a1, unint64_t a2)
{
  v4 = v2;
  v7 = sub_100081308();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v9 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v9 != 2)
    {
      goto LABEL_16;
    }

    v11 = *(a1 + 16);
    v10 = *(a1 + 24);
    v12 = __OFSUB__(v10, v11);
    v13 = v10 - v11;
    if (!v12)
    {
      if (v13 > 20)
      {
        goto LABEL_8;
      }

      goto LABEL_16;
    }

    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  if (v9)
  {
    if (!__OFSUB__(HIDWORD(a1), a1))
    {
      if (HIDWORD(a1) - a1 > 20)
      {
        goto LABEL_8;
      }

LABEL_16:
      sub_100075E5C();
      swift_allocError();
      *v20 = 0;
LABEL_17:
      swift_willThrow();
      goto LABEL_18;
    }

    goto LABEL_44;
  }

  if (BYTE6(a2) <= 0x14uLL)
  {
    goto LABEL_16;
  }

LABEL_8:
  v14 = sub_100080CA8();
  v16 = sub_10007BFA0(v14, v15);
  if (v3)
  {
LABEL_18:
    sub_100006A34(a1, a2);
    type metadata accessor for LensCalibrationPayload();
    swift_deallocPartialClassInstance();
    return;
  }

  if (v16 != 1)
  {
    sub_100075E5C();
    swift_allocError();
    *v21 = 3;
    goto LABEL_17;
  }

  if (v9 == 2)
  {
    v23 = *(a1 + 16);
    v22 = *(a1 + 24);
    v12 = __OFSUB__(v22, v23);
    v19 = v22 - v23;
    if (v12)
    {
LABEL_47:
      __break(1u);
      goto LABEL_48;
    }
  }

  else
  {
    if (v9 != 1)
    {
      goto LABEL_23;
    }

    LODWORD(v19) = HIDWORD(a1) - a1;
    if (__OFSUB__(HIDWORD(a1), a1))
    {
LABEL_46:
      __break(1u);
      goto LABEL_47;
    }

    v19 = v19;
  }

  v24 = v17;
  v25 = v18;
  if ((v19 & 0x8000000000000000) == 0)
  {
    goto LABEL_24;
  }

  __break(1u);
LABEL_23:
  v24 = v17;
  v25 = v18;
  v19 = BYTE6(a2);
LABEL_24:
  v26 = v16;
  LensCalibrationDataHeader.validate(forLensCalibrationDataLength:)(v19);
  if (v27)
  {
    goto LABEL_18;
  }

  if (v24)
  {
    v51 = v24;
    if (__CFADD__(HIDWORD(v26), v24))
    {
LABEL_48:
      __break(1u);
LABEL_49:
      __break(1u);
      goto LABEL_50;
    }

    v28 = sub_10007B1CC(HIDWORD(v26) | ((HIDWORD(v26) + v24) << 32), a1, a2);
    v30 = v29;
    sub_1000812F8();
    v31 = sub_1000812D8();
    v49 = v32;
    v50 = v31;
    sub_100006A34(v28, v30);
    v2[2] = v50;
    v2[3] = v49;
    v24 = v51;
  }

  else
  {
    v2[2] = 0;
    v2[3] = 0;
  }

  if (__CFADD__(HIDWORD(v24), v25))
  {
    goto LABEL_45;
  }

  v52 = (HIDWORD(v24) + v25);
  if (v25)
  {
    v33 = sub_10007B1CC(HIDWORD(v24) | ((HIDWORD(v24) + v25) << 32), a1, a2);
    v35 = v34;
    sub_1000812F8();
    v36 = sub_1000812D8();
    v38 = v37;
    sub_100006A34(v33, v35);
  }

  else
  {
    v36 = 0;
    v38 = 0;
  }

  v4[4] = v36;
  v4[5] = v38;
  if (v9 == 2)
  {
    v42 = *(a1 + 16);
    v41 = *(a1 + 24);
    v12 = __OFSUB__(v41, v42);
    v39 = v41 - v42;
    if (v12)
    {
LABEL_50:
      __break(1u);
      return;
    }

    v40 = v52;
  }

  else
  {
    if (v9 == 1)
    {
      LODWORD(v39) = HIDWORD(a1) - a1;
      v40 = v52;
      if (!__OFSUB__(HIDWORD(a1), a1))
      {
        v39 = v39;
        goto LABEL_40;
      }

      goto LABEL_49;
    }

    v40 = v52;
    v39 = BYTE6(a2);
  }

LABEL_40:
  if (v39 <= v40)
  {
    sub_100006A34(a1, a2);
    v4[6] = 0;
    v4[7] = 0;
  }

  else
  {
    v43 = sub_10007B284(v40, a1, a2);
    v45 = v44;
    sub_100074254(v43, v44);
    sub_100006940(&qword_1000B7530, &qword_100089380);
    sub_100006988();
    v46 = sub_100081248();
    v48 = v47;
    sub_100006A34(v43, v45);
    sub_100006A34(a1, a2);

    v4[6] = v46;
    v4[7] = v48;
  }
}

uint64_t LensCalibrationPayload.toDataBlob()()
{
  v3 = v1;
  v4 = v0;
  v5 = sub_100081308();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  result = __chkstk_darwin(v5);
  v10 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v4[3])
  {
    v11 = v4[2];
    sub_1000812F8();
    v12 = sub_1000812C8();
    v14 = v13;
    result = (*(v6 + 8))(v10, v5);
    v42 = v12;
    if (v14 >> 60 == 15)
    {
      v15 = 0;
    }

    else
    {
      v32 = v14 >> 62;
      if ((v14 >> 62) > 1)
      {
        if (v32 == 2)
        {
          v36 = *(v12 + 16);
          v33 = *(v12 + 24);
          v15 = v33 - v36;
          if (__OFSUB__(v33, v36))
          {
            __break(1u);
            goto LABEL_34;
          }
        }

        else
        {
          result = sub_10001A164(v12, v14);
          v15 = 0;
        }
      }

      else
      {
        if (v32)
        {
          goto LABEL_38;
        }

        result = sub_10001A164(v12, v14);
        v15 = BYTE6(v14);
      }
    }
  }

  else
  {
    v15 = 0;
    v42 = 0;
    v14 = 0xF000000000000000;
  }

  while (1)
  {
    v40 = v3;
    v12 = v4[5];
    if (!v12)
    {
      v10 = 0;
      v2 = 0;
      v3 = 0xF000000000000000;
      goto LABEL_9;
    }

    v16 = v4[4];
    sub_1000812F8();
    v2 = sub_1000812C8();
    v3 = v17;
    v18 = *(v6 + 8);
    v6 += 8;
    result = v18(v10, v5);
    if (v3 >> 60 == 15)
    {
      v10 = 0;
      goto LABEL_9;
    }

    v33 = v3 >> 62;
    if ((v3 >> 62) <= 1)
    {
      if (!v33)
      {
        result = sub_10001A164(v2, v3);
        v10 = BYTE6(v3);
        goto LABEL_9;
      }

      if (!__OFSUB__(HIDWORD(v2), v2))
      {
        v10 = HIDWORD(v2) - v2;
        goto LABEL_9;
      }

LABEL_51:
      __break(1u);
      return result;
    }

LABEL_34:
    if (v33 != 2)
    {
      break;
    }

    v38 = *(v2 + 16);
    v37 = *(v2 + 24);
    v10 = v37 - v38;
    if (!__OFSUB__(v37, v38))
    {
      goto LABEL_9;
    }

    __break(1u);
LABEL_38:
    if (__OFSUB__(HIDWORD(v12), v12))
    {
      goto LABEL_50;
    }

    v15 = HIDWORD(v12) - v12;
  }

  result = sub_10001A164(v2, v3);
  v10 = 0;
LABEL_9:
  if (__OFADD__(v15, 20))
  {
    __break(1u);
    goto LABEL_45;
  }

  v19 = v15 + 40;
  if (__OFADD__(v15 + 20, 20))
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  if (v15 > 0xFFFFFFFFLL)
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  if (v19 > 0xFFFFFFFFLL)
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  if ((v19 | v15 | v10) < 0)
  {
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  if (v10 > 0xFFFFFFFFLL)
  {
    goto LABEL_49;
  }

  v39 = xmmword_100084880;
  v41 = xmmword_100084880;
  type metadata accessor for DataEncoder();
  inited = swift_initStackObject();
  *(inited + 16) = v39;
  *(inited + 32) = 0;
  *(inited + 40) = xmmword_100089360;
  sub_100077270(1);
  sub_100077360(0x14u);
  sub_100077360(v15);
  sub_100077360(v19);
  sub_100077360(v10);
  swift_beginAccess();
  v21 = *(inited + 16);
  v22 = *(inited + 24);
  swift_setDeallocating();
  v23 = *(inited + 16);
  v24 = *(inited + 24);
  sub_10000D808(v21, v22);
  sub_100006A34(v23, v24);
  sub_100080D08();
  sub_100006A34(v21, v22);
  v25 = v42;
  if (v14 >> 60 != 15)
  {
    sub_10000D808(v42, v14);
    sub_100080D08();
    sub_10001A164(v25, v14);
  }

  if (v3 >> 60 != 15)
  {
    sub_10000D808(v2, v3);
    sub_100080D08();
    sub_10001A164(v2, v3);
  }

  if (v4[7] && (v26 = v4[6], v27 = v4[7], , v28 = sub_1000745D4(v26), v29 >> 60 != 15))
  {
    v34 = v28;
    v35 = v29;
    sub_100080D08();
    sub_10001A164(v2, v3);
    sub_10001A164(v25, v14);
    v30 = v34;
    v31 = v35;
  }

  else
  {
    sub_10001A164(v2, v3);
    v30 = v25;
    v31 = v14;
  }

  sub_10001A164(v30, v31);
  return v41;
}

void *LensCalibrationPayload.deinit()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  return v0;
}

uint64_t LensCalibrationPayload.__deallocating_deinit()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  return _swift_deallocClassInstance(v0, 64, 7);
}

unint64_t sub_10007BFA0(uint64_t a1, unint64_t a2)
{
  v10 = 0;
  v9 = 0;
  v8 = 0;
  v7 = 0;
  type metadata accessor for DataDecoder();
  inited = swift_initStackObject();
  *(inited + 16) = a1;
  *(inited + 24) = a2;
  *(inited + 32) = 0;
  *(inited + 40) = xmmword_100089360;
  sub_10000D808(a1, a2);
  sub_10007AC90(&v10);
  if (v2)
  {
    sub_100006A34(a1, a2);
    swift_setDeallocating();
    return sub_100006A34(*(inited + 16), *(inited + 24));
  }

  else
  {
    sub_10007AEF4(&v9);
    sub_10007AEF4(&v8 + 1);
    sub_10007AEF4(&v8);
    sub_10007AEF4(&v7);
    sub_100006A34(a1, a2);
    swift_setDeallocating();
    sub_100006A34(*(inited + 16), *(inited + 24));
    return v10 | (v9 << 32);
  }
}

__n128 initializeBufferWithCopyOfBuffer for LensCalibrationDataHeader(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u32[0] = a2[1].n128_u32[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for LensCalibrationDataHeader(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 20))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for LensCalibrationDataHeader(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
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

  *(result + 20) = v3;
  return result;
}

void *vrx_csv_file_create(uint64_t a1)
{
  if (!a1)
  {
    sub_10007C900();
  }

  v2 = malloc_type_calloc(1uLL, 0x30uLL, 0x1030040702A1700uLL);
  *v2 = a1;
  v2[2] = 2048;
  v2[1] = malloc_type_calloc(0x800uLL, 1uLL, 0x100004077774924uLL);
  return v2;
}

void vrx_csv_file_destroy(uint64_t a1)
{
  if (a1)
  {
    vrx_reader_close(*a1);
    free(*(a1 + 8));

    free(a1);
  }
}

uint64_t vrx_csv_file_next_metadata_field(uint64_t a1, char **a2, char **a3)
{
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  result = vrx_reader_read_line(*a1);
  if (result)
  {
    v28 = a2;
    v29 = a3;
    while (1)
    {
      v9 = *(a1 + 8);
      if (*v9 != 35)
      {
        result = 0;
        *(a1 + 40) = 1;
        return result;
      }

      do
      {
        while (1)
        {
          v10 = v9;
          v12 = *++v9;
          v11 = v12;
          if (v12 < 0)
          {
            break;
          }

          if ((_DefaultRuneLocale.__runetype[v11] & 0x4000) == 0)
          {
            goto LABEL_8;
          }
        }
      }

      while (__maskrune(v11, 0x4000uLL));
LABEL_8:
      v13 = 0;
      v14 = 0xFFFFFFFF00000000;
      do
      {
        v15 = v10;
        v16 = v9[v13];
        if (v16 < 0)
        {
          v17 = __maskrune(v9[v13], 0x500uLL);
        }

        else
        {
          v17 = _DefaultRuneLocale.__runetype[v16] & 0x500;
        }

        v14 += &_mh_execute_header;
        ++v13;
        ++v10;
      }

      while (v16 == 95 || v17 != 0);
      if (v13 != 1)
      {
        do
        {
          v19 = v15[1];
          if (v19 < 0)
          {
            v20 = __maskrune(v15[1], 0x4000uLL);
          }

          else
          {
            v20 = _DefaultRuneLocale.__runetype[v19] & 0x4000;
          }

          ++v15;
        }

        while (v20);
        if (v19 == 61 || v19 == 58)
        {
          break;
        }
      }

      v21 = *(a1 + 8);
      v22 = *(a1 + 16);
      result = vrx_reader_read_line(*a1);
      if (!result)
      {
        return result;
      }
    }

    do
    {
      while (1)
      {
        v24 = *++v15;
        v23 = v24;
        if (v24 < 0)
        {
          break;
        }

        if ((_DefaultRuneLocale.__runetype[v23] & 0x4000) == 0)
        {
          goto LABEL_30;
        }
      }
    }

    while (__maskrune(v23, 0x4000uLL));
LABEL_30:
    for (i = v15; ; ++i)
    {
      v26 = *i;
      if (!*i)
      {
        break;
      }

      if (v26 == 13 || v26 == 10)
      {
        *i = 0;
        break;
      }
    }

    *v28 = strndup(v9, v14 >> 32);
    *v29 = strdup(v15);
    return 1;
  }

  return result;
}

uint64_t vrx_csv_file_next_field(uint64_t a1)
{
  if (!a1)
  {
    sub_10007C92C();
  }

  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = strchr(*(a1 + 32), 44);
    if (v3)
    {
      *v3++ = 0;
    }

    *(a1 + 32) = v3;
  }

  return v2;
}

BOOL vrx_csv_file_next_string(uint64_t a1, uint64_t *a2)
{
  field = vrx_csv_file_next_field(a1);
  *a2 = field;
  return field != 0;
}

uint64_t vrx_csv_file_next_int(uint64_t a1, _DWORD *a2)
{
  if (!a1)
  {
    sub_10007C958();
  }

  v3 = *(a1 + 32);
  if (!v3)
  {
    return 0;
  }

  v5 = strchr(*(a1 + 32), 44);
  if (v5)
  {
    *v5++ = 0;
  }

  *(a1 + 32) = v5;
  *a2 = strtol(v3, 0, 10);
  return 1;
}

uint64_t vrx_csv_file_next_double(uint64_t a1, double *a2)
{
  if (!a1)
  {
    sub_10007C984();
  }

  v3 = *(a1 + 32);
  if (!v3)
  {
    return 0;
  }

  v5 = strchr(*(a1 + 32), 44);
  if (v5)
  {
    *v5++ = 0;
  }

  *(a1 + 32) = v5;
  *a2 = strtod(v3, 0);
  return 1;
}

uint64_t vrx_csv_file_next_record(uint64_t a1)
{
  if (!a1)
  {
    sub_10007C9B0();
  }

  do
  {
    v2 = *(a1 + 40) == 0;
    do
    {
      v3 = *(a1 + 8);
      if (v2)
      {
        v4 = *(a1 + 16);
        result = vrx_reader_read_line(*a1);
        if (!result)
        {
          return result;
        }

        v3 = *(a1 + 8);
      }

      *(a1 + 40) = 0;
      v6 = *v3;
      v2 = 1;
    }

    while (!*v3);
    v7 = 0;
    v8 = v3 + 1;
    do
    {
      v9 = v6;
      if (v6 < 0)
      {
        if (__maskrune(v6, 0x4000uLL))
        {
          goto LABEL_14;
        }
      }

      else if ((_DefaultRuneLocale.__runetype[v6] & 0x4000) != 0)
      {
        goto LABEL_14;
      }

      if (v9 == 35)
      {
        break;
      }

      v7 = 1;
LABEL_14:
      v10 = *v8++;
      v6 = v10;
    }

    while (v10);
  }

  while (!v7);
  v11 = *(a1 + 8);
  for (i = v11; ; ++i)
  {
    v13 = *i;
    if (!*i)
    {
      break;
    }

    if (v13 == 13 || v13 == 10)
    {
      *i = 0;
      v11 = *(a1 + 8);
      break;
    }
  }

  *(a1 + 24) = v11;
  *(a1 + 32) = v11;
  return 1;
}

void *vrx_reader_open_file(const char *a1)
{
  result = fopen(a1, "r");
  if (result)
  {
    v2 = result;
    result = malloc_type_calloc(1uLL, 0x18uLL, 0xA0040114AFA65uLL);
    *result = sub_10007CA48;
    result[1] = sub_10007CA78;
    result[2] = v2;
  }

  return result;
}

FILE *sub_10007CA48(uint64_t a1)
{
  result = *(a1 + 16);
  if (result)
  {
    result = fclose(result);
    *(a1 + 16) = 0;
  }

  return result;
}

char *sub_10007CA78(uint64_t a1, char *a2, int a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    return fgets(a2, a3, v3);
  }

  else
  {
    return 0;
  }
}

void *vrx_reader_open_string(uint64_t a1)
{
  result = malloc_type_calloc(1uLL, 0x20uLL, 0xD0040E87B5F72uLL);
  result[2] = a1;
  result[3] = a1;
  *result = nullsub_1;
  result[1] = sub_10007CAFC;
  return result;
}

char *sub_10007CAFC(uint64_t a1, char *__dst, int a3)
{
  v5 = *(a1 + 24);
  v6 = *v5;
  if (*v5)
  {
    v7 = a3 < 2;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    __dst = 0;
  }

  else
  {
    v8 = 0;
    while (v6 != 10)
    {
      v9 = v8 + 1;
      v6 = v5[v8 + 1];
      if (v5[v8 + 1])
      {
        v10 = v9 < a3 - 1;
      }

      else
      {
        v10 = 0;
      }

      ++v8;
      if (!v10)
      {
        v11 = &v5[v9];
        LODWORD(v8) = v9;
LABEL_14:
        strncpy(__dst, v5, v8);
        __dst[v8] = 0;
        goto LABEL_15;
      }
    }

    v11 = &v5[v8 + 1];
    if (v8)
    {
      goto LABEL_14;
    }

    __dst = 0;
LABEL_15:
    v5 = v11;
  }

  *(a1 + 24) = v5;
  return __dst;
}

void vrx_reader_destroy(void (**a1)(void))
{
  if (a1)
  {
    (*a1)();

    free(a1);
  }
}

_DWORD *vrx_vector_create_(int a1, int a2, int a3)
{
  if (a2 <= 0)
  {
    sub_10007CE38();
  }

  if (a1 <= 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = a1;
  }

  v6 = malloc_type_calloc(1uLL, 0x18uLL, 0x1080040468F112EuLL);
  v6[3] = v5;
  v6[4] = a2;
  *v6 = malloc_type_calloc(v5, a2, 0x730F52D0uLL);
  v6[5] = a3;
  return v6;
}

void vrx_vector_destroy(int *a1)
{
  if (a1)
  {
    v2 = *a1;
    if (a1[5] && a1[2] >= 1)
    {
      v3 = 0;
      do
      {
        free(v2[v3++]);
      }

      while (v3 < a1[2]);
      v2 = *a1;
    }

    free(v2);

    free(a1);
  }
}

void vrx_vector_append(char **a1, void *__src)
{
  v4 = *(a1 + 2);
  v5 = *(a1 + 3);
  v6 = *a1;
  if (v4 == v5)
  {
    v7 = 2 * v4;
    v6 = malloc_type_realloc(v6, *(a1 + 4) * v7, 0x42F9AC6AuLL);
    *a1 = v6;
    *(a1 + 3) = v7;
    v4 = *(a1 + 2);
  }

  *(a1 + 2) = v4 + 1;
  v8 = *(a1 + 4);
  v9 = &v6[v8 * v4];
  if (__src)
  {

    memcpy(v9, __src, v8);
  }

  else
  {
    v10 = *(a1 + 4);

    bzero(v9, v10);
  }
}

void *vrx_vector_finalize(_DWORD *a1)
{
  v1 = *a1;
  v2 = a1[4];
  v3 = a1[2];
  free(a1);
  if (v3 < 1)
  {
    free(v1);
    return 0;
  }

  else
  {

    return malloc_type_realloc(v1, v3 * v2, 0x48DFD1A6uLL);
  }
}

uint64_t vrx_set_minimum_passing_fit_probability(double a1)
{
  if (a1 < 0.0 || a1 > 1.0)
  {
    return 0;
  }

  qword_1000BA598 = *&a1;
  return 1;
}

double vrx_compute_power_vector_for_rx(double *a1, double *a2)
{
  if (!a1)
  {
    sub_10007FA74();
  }

  if (!a2)
  {
    sub_10007FA48();
  }

  v3 = a1[1] * 0.5;
  v4 = (a1[2] + a1[2]) * 3.14159265 / 180.0;
  *a2 = v3 + *a1;
  v5 = __sincos_stret(v4);
  result = -(v3 * v5.__sinval);
  a2[1] = -(v3 * v5.__cosval);
  a2[2] = result;
  return result;
}

void vrx_compute_rx_for_power_vector(uint64_t a1, double *a2)
{
  if (!a1)
  {
    sub_10007FACC();
  }

  if (!a2)
  {
    sub_10007FAA0();
  }

  v3 = *(a1 + 16);
  v4 = sqrt(*(a1 + 8) * *(a1 + 8) + v3 * v3);
  *a2 = *a1 + v4;
  a2[1] = v4 * -2.0;
    ;
  }

    ;
  }

  a2[2] = i;
}

BOOL vrx_eye_rx_equal(void *a1, void *a2)
{
  if (!a1)
  {
    sub_10007FB24();
  }

  if (!a2)
  {
    sub_10007FAF8();
  }

  return *a1 == *a2 && a1[1] == a2[1] && a1[2] == a2[2];
}

BOOL vrx_rx_is_balanced(void *a1)
{
  if (!a1)
  {
    sub_10007FB50();
  }

  return *a1 == a1[3] && a1[1] == a1[4] && a1[2] == a1[5];
}

BOOL vrx_rx_equal(const void *a1, const void *a2)
{
  if (!a1)
  {
    sub_10007FBA8();
  }

  if (!a2)
  {
    sub_10007FB7C();
  }

  return memcmp(a1, a2, 0x40uLL) == 0;
}

uint64_t vrx_generate_lens_tray_row_label(unsigned int a1, char *__str)
{
  if (a1 - 626 < 0xFFFFFD8F)
  {
    return 0;
  }

  if (a1 > 0x19)
  {
    v3 = (((a1 - 1 - ((18351 * (a1 - 1)) >> 16)) >> 1) + ((18351 * (a1 - 1)) >> 16)) >> 4;
    snprintf(__str, 0xCuLL, "%c%c", aAbcdefghijklmn[v3 - 1], aAbcdefghijklmn[(a1 - 1 - 25 * v3)]);
  }

  else
  {
    *__str = aAbcdefghijklmn[a1 - 1];
  }

  return 1;
}

BOOL vrx_map_reader_rx(uint64_t a1)
{
  result = vrx_rx_is_balanced(a1);
  if (result)
  {
    if (*(a1 + 8) == 0.0 && *(a1 + 16) == 0.0)
    {
      v3 = 0;
      v4 = *a1;
      v5 = 1;
      for (i = &qword_10008F420; v4 < *(i - 2) || v4 > *(i - 1); i += 3)
      {
        v5 = v3 < 2;
        if (++v3 == 3)
        {
          return 0;
        }
      }

      v7 = *i;
      *a1 = *i;
      *(a1 + 24) = v7;
      return v5;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t *vrx_get_reader_strength_range_for_mapped_diopter(double a1)
{
  result = &qword_10008F410;
  v2 = 3;
  while (*(result + 2) != a1)
  {
    result += 3;
    if (!--v2)
    {
      return 0;
    }
  }

  return result;
}

double *vrx_get_reader_strength_range_for_rx(double *a1)
{
  if (!vrx_rx_is_balanced(a1))
  {
    return 0;
  }

  v2 = *a1;
  result = &qword_10008F410;
  v4 = 3;
  while (*result > v2 || result[1] < v2)
  {
    result += 3;
    if (!--v4)
    {
      return 0;
    }
  }

  return result;
}

char *vrx_load_lens_tray(char *a1)
{
  if (!a1)
  {
    sub_10007FBD4();
  }

  v2 = sub_10007D304(a1, vrx_demo_tray_file_extension[0]);
  if (v2)
  {
    v3 = v2;
    v4 = 0;
  }

  else
  {
    result = sub_10007D304(a1, vrx_reader_tray_file_extension);
    v4 = result != 0;
    if (!result)
    {
      return result;
    }

    v3 = result;
  }

  return sub_10007D390(a1, v4, v3);
}

char *sub_10007D304(char *a1, const char *a2)
{
  v3 = a1;
  v4 = strrchr(a1, 47);
  if (v4)
  {
    v3 = v4 + 1;
  }

  v5 = strrchr(v3, 46);
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  if (strcmp(v5 + 1, a2))
  {
    return 0;
  }

  return strndup(v3, v6 - v3);
}

char *sub_10007D390(const char *a1, unsigned int a2, const char *a3)
{
  if (!a1)
  {
    sub_10007FC2C();
  }

  if (!a3)
  {
    sub_10007FC00();
  }

  v5 = vrx_reader_open_file(a1);
  if (!v5)
  {
    return 0;
  }

  v6 = vrx_csv_file_create(v5);
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  v8 = malloc_type_calloc(1uLL, 0x38uLL, 0x10F0040E7A3C391uLL);
  *v8 = strdup(a3);
  *(v8 + 10) = a2;
  v35 = 0;
  __s1 = 0;
  v9 = vrx_vector_create_(8, 8, 1);
  while (vrx_csv_file_next_metadata_field(v7, &__s1, &v35))
  {
    *&__src = strdup(__s1);
    __s = strdup(v35);
    vrx_vector_append(v9, &__src);
    vrx_vector_append(v9, &__s);
  }

  vrx_vector_append(v9, 0);
  *(v8 + 6) = vrx_vector_finalize(v9);
  v54 = 0;
  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  memset(v45, 0, sizeof(v45));
  v43 = 0u;
  v44 = 0u;
  v42 = 0u;
  v40 = 0u;
  v41 = 0u;
  memset(v39, 0, sizeof(v39));
  __src = 0u;
  v10 = vrx_vector_create_(128, 296, 0);
  if (vrx_csv_file_next_record(v7))
  {
    v11 = "_%.2f";
    do
    {
      v54 = 0;
      v52 = 0u;
      v53 = 0u;
      v50 = 0u;
      v51 = 0u;
      v48 = 0u;
      v49 = 0u;
      v46 = 0u;
      v47 = 0u;
      memset(v45, 0, sizeof(v45));
      v43 = 0u;
      v44 = 0u;
      v42 = 0u;
      v40 = 0u;
      v41 = 0u;
      memset(v39, 0, sizeof(v39));
      __src = 0u;
      v33 = 0;
      __s = 0;
      v31 = 0;
      v32 = 0;
      if (!vrx_csv_file_next_int(v7, &v53) || !vrx_csv_file_next_int(v7, &v53 + 1) || !vrx_csv_file_next_double(v7, &__src) || !vrx_csv_file_next_double(v7, &__src + 1) || !vrx_csv_file_next_double(v7, v39) || !vrx_csv_file_next_string(v7, &__s) || !vrx_csv_file_next_string(v7, &v33) || !vrx_csv_file_next_string(v7, &v32) || !vrx_csv_file_next_string(v7, &v31))
      {
        continue;
      }

      v12 = v11;
      v13 = __s;
      v14 = strlen(__s);
      v30 = strlen(v33);
      v15 = strlen(v32);
      v29 = strlen(v31);
      *(&v44 + 1) = a2;
      if (!v14 || !strcmp(__s, "None"))
      {
        LODWORD(v45[0]) = 1;
      }

      else
      {
        v16 = v14 > 0x17;
        v11 = v12;
        if (v16 || v15 - 39 < 0xFFFFFFFFFFFFFFF9)
        {
          continue;
        }

        strlen(v13);
        v17 = strchr(v13, 95);
        __strncpy_chk();
        if (v17)
        {
          strncpy(&v41 + 8, v17 + 1, 8uLL);
        }

        __strcpy_chk();
      }

      v11 = v12;
      *&v52 = a2 | 0x100000000;
      if (!v30 || (v18 = v33, !strcmp(v33, "None")))
      {
        DWORD2(v52) = 1;
LABEL_36:
        v20 = v53;
        *(v8 + 20) = vmax_s32(*(v8 + 20), *&v53);
        *__str = 0;
        if (a2 == 1)
        {
          snprintf(__str, 8uLL, v12, __src);
          v21 = v53;
          v22 = DWORD1(v53);
        }

        else
        {
          v21 = v20;
          v22 = HIDWORD(v20);
        }

        if (sub_10007F59C(v21, v22, __str, &v53 + 8))
        {
          *&v45[1] = __src;
          v45[3] = *&v39[0];
          v23 = *(&__src + 1) * 0.5;
          *(v39 + 1) = *(&__src + 1) * 0.5 + *&__src;
          v24 = __sincos_stret((*v39 + *v39) * 3.14159265 / 180.0);
          *&v39[1] = -(v23 * v24.__cosval);
          *(&v39[1] + 1) = -(v23 * v24.__sinval);
          v46 = *(v39 + 8);
          *&v47 = *(&v39[1] + 1);
          vrx_vector_append(v10, &__src);
        }

        continue;
      }

      if (v30 <= 0x17 && v29 - 39 >= 0xFFFFFFFFFFFFFFF9)
      {
        strlen(v18);
        v19 = strchr(v18, 95);
        __strncpy_chk();
        if (v19)
        {
          strncpy(&v49, v19 + 1, 8uLL);
        }

        __strcpy_chk();
        goto LABEL_36;
      }
    }

    while (vrx_csv_file_next_record(v7));
  }

  vrx_csv_file_destroy(v7);
  *(v8 + 4) = vrx_vector_length(v10);
  *(v8 + 1) = vrx_vector_finalize(v10);
  *(v8 + 4) = malloc_type_calloc(*(v8 + 6) * *(v8 + 5), 8uLL, 0x2004093837F09uLL);
  v25 = *(v8 + 4);
  if (v25 >= 1)
  {
    v26 = 0;
    v27 = *(v8 + 6);
    do
    {
      *(*(v8 + 4) + 8 * (*(*(v8 + 1) + v26 + 276) + (*(*(v8 + 1) + v26 + 272) - 1) * v27 - 1)) = *(v8 + 1) + v26;
      v26 += 296;
    }

    while (296 * v25 != v26);
  }

  qsort(*(v8 + 1), v25, 0x128uLL, sub_10007F9CC);
  return v8;
}

uint64_t vrx_validate_lens_tray_file(const char *a1, char *a2)
{
  if (!a1)
  {
    sub_10007FC84();
  }

  if (!a2)
  {
    sub_10007FC58();
  }

  v5 = 0;
  v4 = 0;
  result = vrx_is_lens_tray_file(a2, &v5, &v4);
  if (result)
  {
    result = sub_10007D390(a1, v5, v4);
    if (result)
    {
      vrx_unload_lens_tray(result);
      return 1;
    }
  }

  return result;
}

uint64_t vrx_is_lens_tray_file(char *a1, int *a2, char **a3)
{
  result = strrchr(a1, 46);
  if (result)
  {
    v7 = result;
    if (!strcmp((result + 1), vrx_demo_tray_file_extension[0]))
    {
      v8 = 0;
      if (!a2)
      {
        return 1;
      }
    }

    else
    {
      if (strcmp((v7 + 1), vrx_reader_tray_file_extension))
      {
        return 0;
      }

      v8 = 1;
      if (!a2)
      {
        return 1;
      }
    }

    *a2 = v8;
    if (a3)
    {
      v9 = strrchr(a1, 47);
      if (v9)
      {
        v10 = v9 + 1;
      }

      else
      {
        v10 = a1;
      }

      *a3 = strndup(v10, v7 - v10);
    }

    return 1;
  }

  return result;
}

void vrx_unload_lens_tray(uint64_t a1)
{
  if (a1)
  {
    v2 = *(a1 + 48);
    if (v2)
    {
      v3 = *v2;
      if (*v2)
      {
        v4 = v2 + 1;
        do
        {
          free(v3);
          v5 = *v4++;
          v3 = v5;
        }

        while (v5);
        v2 = *(a1 + 48);
      }

      free(v2);
    }

    free(*a1);
    free(*(a1 + 8));
    free(*(a1 + 32));

    free(a1);
  }
}

uint64_t vrx_print_lens_tray_slot(uint64_t a1)
{
  if (!a1)
  {
    sub_10007FCB0();
  }

  printf("%s: ", (a1 + 280));
  vrx_print_lens(a1);
  printf("; ");
  vrx_print_lens(a1 + 136);

  return putchar(10);
}

uint64_t vrx_print_lens(uint64_t a1)
{
  if (!a1)
  {
    sub_10007FCDC();
  }

  v2 = "Left";
  if (!*(a1 + 124))
  {
    v2 = "Right";
  }

  v3 = (a1 + 48);
  v4 = "N/A";
  if (*(a1 + 128))
  {
    v3 = "N/A";
  }

  else
  {
    v4 = (a1 + 72);
  }

  printf("%s - sn: %*s, seq#: %*s, ", v2, 23, v3, 7, v4);
  printf("sph: %+6.2f, cyl: %+6.2f, axis: %3d", *a1, *(a1 + 8), *(a1 + 16));
  return printf(" (%s)", (&off_1000AC738)[*(a1 + 120)]);
}

uint64_t vrx_print_lens_tray(uint64_t a1)
{
  if (!a1)
  {
    sub_10007FD08();
  }

  printf("Name: %s\n", *a1);
  puts("Metadata:");
  v2 = *(a1 + 48);
  v3 = *v2;
  if (*v2)
  {
    v4 = 0;
    v5 = v2 + 1;
    do
    {
      if (v4)
      {
        printf("  %s = %s\n", v4, v3);
        v3 = 0;
      }

      v4 = v3;
      v6 = *v5++;
      v3 = v6;
    }

    while (v6);
  }

  putchar(10);
  LODWORD(v7) = *(a1 + 16);
  if (v7 >= 1)
  {
    v8 = 0;
    v9 = 0;
    do
    {
      vrx_print_lens_tray_slot(*(a1 + 8) + v8);
      ++v9;
      v7 = *(a1 + 16);
      v8 += 296;
    }

    while (v9 < v7);
  }

  return printf("(%d slots)\n", v7);
}

uint64_t vrx_apply_eye_rx_cylinder_sign_flip(double *a1)
{
  if (!a1)
  {
    sub_10007FD34();
  }

  v1 = a1[1];
  if (v1 <= 0.0)
  {
    return 0;
  }

  *a1 = v1 + *a1;
  a1[1] = -v1;
    ;
  }

    ;
  }

  a1[2] = i;
  return 1;
}

uint64_t vrx_unapply_eye_rx_cylinder_sign_flip(double *a1)
{
  if (!a1)
  {
    sub_10007FD60();
  }

  v1 = a1[1];
  if (v1 >= 0.0)
  {
    return 0;
  }

  *a1 = v1 + *a1;
  a1[1] = -v1;
    ;
  }

    ;
  }

  a1[2] = i;
  return 1;
}

uint64_t vrx_apply_cylinder_sign_flip(double *a1)
{
  vrx_apply_eye_rx_cylinder_sign_flip(a1);

  return vrx_apply_eye_rx_cylinder_sign_flip(a1 + 3);
}

float64x2_t vrx_round_eye_rx(float64x2_t *a1)
{
  if (!a1)
  {
    sub_10007FD8C();
  }

  __asm { FMOV            V1.2D, #4.0 }

  v6 = vrndaq_f64(vmulq_f64(*a1, _Q1));
  __asm { FMOV            V1.2D, #0.25 }

  result = vmulq_f64(v6, _Q1);
  *a1 = result;
  return result;
}

float64x2_t vrx_round_rx(uint64_t a1)
{
  if (!a1)
  {
    sub_10007FDB8();
  }

  __asm
  {
    FMOV            V1.2D, #4.0
    FMOV            V2.2D, #0.25
  }

  *a1 = vmulq_f64(vrndaq_f64(vmulq_f64(*a1, _Q1)), _Q2);
  result = vmulq_f64(vrndaq_f64(vmulq_f64(*(a1 + 24), _Q1)), _Q2);
  *(a1 + 24) = result;
  return result;
}

double vrx_reset_rx(_OWORD *a1)
{
  result = 0.0;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

BOOL vrx_eye_rx_is_valid(double *a1)
{
  if (!a1)
  {
    sub_10007FDE4();
  }

  if (fabs(*a1) <= 30.0 && fabs(a1[1]) <= 30.0 && (v1 = a1[2], v1 >= 0.0))
  {
    return v1 < 180.0;
  }

  else
  {
    return 0;
  }
}

BOOL vrx_rx_is_valid(double *a1)
{
  if (!a1)
  {
    sub_10007FE10();
  }

  if (fabs(*a1) > 30.0 || fabs(a1[1]) > 30.0)
  {
    return 0;
  }

  v1 = 0;
  v3 = a1[2];
  if (v3 >= 0.0 && v3 < 180.0)
  {
    if (fabs(a1[3]) <= 30.0 && fabs(a1[4]) <= 30.0)
    {
      v4 = a1[5];
      if (v4 >= 0.0)
      {
        return v4 < 180.0;
      }
    }

    return 0;
  }

  return v1;
}

float64x2_t vrx_apply_eye_rx_vr_add(double *a1, double a2, double a3)
{
  if (!a1)
  {
    sub_10007FE3C();
  }

  v3.f64[0] = (*a1 + a2) / ((12.0 - a3) / -1000.0 * (*a1 + a2) + 1.0);
  v3.f64[1] = a1[1];
  __asm { FMOV            V1.2D, #4.0 }

  v9 = vrndaq_f64(vmulq_f64(v3, _Q1));
  __asm { FMOV            V1.2D, #0.25 }

  result = vmulq_f64(v9, _Q1);
  *a1 = result;
  return result;
}

double vrx_unapply_eye_rx_vr_add(double *a1, double a2, double a3)
{
  if (!a1)
  {
    sub_10007FE68();
  }

  result = round((*a1 / (*a1 * ((12.0 - a3) / 1000.0) + 1.0) - a2) * 4.0) * 0.25;
  *a1 = result;
  return result;
}

double vrx_compute_vr_add(int a1, double a2)
{
  if (a2 <= 0.0)
  {
    result = 0.25;
    v6 = 0.5;
    v7 = 0.0;
    if (a1 > 59)
    {
      v7 = 0.75;
    }

    if ((a1 - 50) >= 0xA)
    {
      v6 = v7;
    }

    if ((a1 - 40) >= 0xA)
    {
      return v6;
    }
  }

  else
  {
    v2 = a2 * 0.367 + -0.104;
    v3 = 0.75;
    if (v2 <= 0.75)
    {
      v3 = v2;
    }

    v4 = v2 < 0.0;
    result = 0.0;
    if (!v4)
    {
      return v3;
    }
  }

  return result;
}

float64x2_t vrx_apply_vr_add(double *a1, unsigned int a2, double *a3, double *a4, double a5)
{
  if (!a1)
  {
    sub_10007FEC0();
  }

  if ((a2 & 0x80000000) != 0)
  {
    sub_10007FE94();
  }

  v5 = a1[6];
  if (v5 <= 0.0)
  {
    v9 = 0.25;
    if (a2 - 40 >= 0xA)
    {
      v9 = 0.5;
      if (a2 - 50 >= 0xA)
      {
        v9 = 0.0;
        if (a2 > 0x3B)
        {
          v9 = 0.75;
        }
      }
    }
  }

  else
  {
    v6 = v5 * 0.367 + -0.104;
    v7 = 0.75;
    if (v6 <= 0.75)
    {
      v7 = v6;
    }

    _NF = v6 < 0.0;
    v9 = 0.0;
    if (!_NF)
    {
      v9 = v7;
    }
  }

  *a3 = v9;
  v10 = a1[7];
  if (v10 <= 0.0)
  {
    v13 = 0.25;
    if (a2 - 40 >= 0xA)
    {
      v13 = 0.5;
      if (a2 - 50 >= 0xA)
      {
        v13 = 0.0;
        if (a2 > 0x3B)
        {
          v13 = 0.75;
        }
      }
    }
  }

  else
  {
    v11 = v10 * 0.367 + -0.104;
    v12 = 0.75;
    if (v11 <= 0.75)
    {
      v12 = v11;
    }

    _NF = v11 < 0.0;
    v13 = 0.0;
    if (!_NF)
    {
      v13 = v12;
    }
  }

  *a4 = v13;
  v14 = (12.0 - a5) / -1000.0;
  v15.f64[0] = (*a3 + *a1) / (v14 * (*a3 + *a1) + 1.0);
  v15.f64[1] = a1[1];
  __asm
  {
    FMOV            V3.2D, #4.0
    FMOV            V4.2D, #0.25
  }

  *a1 = vmulq_f64(vrndaq_f64(vmulq_f64(v15, _Q3)), _Q4);
  v21.f64[0] = (*a4 + a1[3]) / (v14 * (*a4 + a1[3]) + 1.0);
  v21.f64[1] = a1[4];
  result = vmulq_f64(vrndaq_f64(vmulq_f64(v21, _Q3)), _Q4);
  *(a1 + 3) = result;
  return result;
}

uint64_t vrx_find_lenses_ex(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, int a5, char *a6, uint64_t a7, int a8, double a9)
{
  if (!a1)
  {
    sub_10007FF9C();
  }

  if (!a3)
  {
    sub_10007FF70();
  }

  v10 = a4;
  if ((a4 & 0x80000000) != 0)
  {
    sub_10007FF44();
  }

  if (!a6)
  {
    sub_10007FF18();
  }

  v11 = a7;
  if (a7 <= 0)
  {
    sub_10007FEEC();
  }

  bzero(a6, 664 * a7);
  vrx_apply_eye_rx_cylinder_sign_flip(a3);
  vrx_apply_eye_rx_cylinder_sign_flip((a3 + 24));
  v106 = 0.0;
  v107[0] = 0.0;
  if (a5)
  {
    if (a5 == 1)
    {
      *a3 = *a3 + -0.75;
      *(a3 + 24) = *(a3 + 24) + -0.75;
      *(a3 + 48) = 0;
      *(a3 + 56) = 0;
      v10 = 35;
    }
  }

  else
  {
    vrx_apply_vr_add(a3, v10, v107, &v106, a9);
  }

  __asm { FMOV            V2.2D, #4.0 }

  v19 = vrndaq_f64(vmulq_f64(*a3, _Q2));
  v20 = vrndaq_f64(vmulq_f64(*(a3 + 24), _Q2));
  __asm { FMOV            V2.2D, #0.25 }

  v22 = vmulq_f64(v20, _Q2);
  v23 = vmulq_f64(v19, _Q2);
  *a3 = v23;
  *(a3 + 24) = v22;
  v99 = v11;
  if (!a2 || (*a3 == *(a3 + 24) ? (_ZF = *(a3 + 8) == *(a3 + 32)) : (_ZF = 0), _ZF ? (v25 = *(a3 + 16) == *(a3 + 40)) : (v25 = 0), !v25 || v23.f64[1] != 0.0 || *(a3 + 16) != 0.0))
  {
LABEL_32:
    v100 = v23;
    v103 = v22;
    v32 = __sincos_stret((*(a3 + 16) + *(a3 + 16)) * 3.14159265 / 180.0);
    v33 = __sincos_stret((*(a3 + 40) + *(a3 + 40)) * 3.14159265 / 180.0);
    v34 = v10 > 0x27;
    v35 = v107[0] > 0.0 || v10 > 0x27;
    if (v35)
    {
      v36 = 0.7;
    }

    else
    {
      v36 = 1.0;
    }

    if (v35)
    {
      v37 = 0.7;
    }

    else
    {
      v37 = 2.0;
    }

    if (v106 > 0.0)
    {
      v34 = 1;
    }

    if (v34)
    {
      v38 = 0.7;
    }

    else
    {
      v38 = 1.0;
    }

    if (v34)
    {
      v39 = 0.7;
    }

    else
    {
      v39 = 2.0;
    }

    v40 = malloc_type_calloc(*(a1 + 16), 0x18uLL, 0x1000040504FFAC1uLL);
    v41 = malloc_type_calloc(*(a1 + 16), 0x18uLL, 0x1000040504FFAC1uLL);
    v42 = malloc_type_calloc(*(a1 + 16), 8uLL, 0x100004000313F17uLL);
    v43 = malloc_type_calloc(*(a1 + 16), 8uLL, 0x100004000313F17uLL);
    v44 = a1;
    v45 = *(a1 + 16);
    v89 = v41;
    v90 = v40;
    if (v45 < 1)
    {
      v101 = 0;
LABEL_84:
      v88 = v43;
      free(v90);
      free(v89);
      free(v42);
      free(v88);
      return v101;
    }

    v46 = 0;
    v47 = vmuld_lane_f64(0.5, v100, 1);
    v48 = v47 + v100.f64[0];
    v49 = -(v47 * v32.__cosval);
    v50 = -(v47 * v32.__sinval);
    v51 = vmuld_lane_f64(0.5, v103, 1);
    v55.f64[0] = v51 + v103.f64[0];
    v52 = -(v51 * v33.__cosval);
    v53 = -(v51 * v33.__sinval);
    v95 = v49;
    v96 = v48;
    v54.f64[0] = v48;
    v54.f64[1] = v49;
    v93 = v52;
    v94 = v55.f64[0];
    v55.f64[1] = v52;
    v56 = (*(a1 + 8) + 160);
    v57 = v42;
    v58 = v43;
    do
    {
      v59 = &v40[v46];
      *v59 = vsubq_f64(*(v56 - 136), v54);
      *(v59 + 2) = v56[-8].f64[1] - v50;
      v60 = &v41[v46];
      *v60 = vsubq_f64(*v56, v55);
      v61 = *&v40[v46];
      *(v60 + 2) = v56[1].f64[0] - v53;
      if (v61 < 0.0)
      {
        v62 = v37;
      }

      else
      {
        v62 = v36;
      }

      v63 = v61 / v62;
      v64 = vaddq_f64(*(v59 + 8), *(v59 + 8));
      v65 = vmulq_f64(v64, v64);
      *v57++ = sqrt(v65.f64[1] + v65.f64[0] + v63 * v63);
      if (*v60 < 0.0)
      {
        v66 = v39;
      }

      else
      {
        v66 = v38;
      }

      v67 = *v60 / v66 * (*v60 / v66);
      v68 = vaddq_f64(*(v60 + 8), *(v60 + 8));
      v69 = vmulq_f64(v68, v68);
      *v58++ = sqrt(v69.f64[1] + v69.f64[0] + v67);
      v46 += 24;
      v56 = (v56 + 296);
    }

    while (24 * v45 != v46);
    v70 = 0;
    v101 = 0;
    v91 = &a6[664 * v11 - 8];
    v92 = v11 - 1;
    v71 = -1.5;
    v72 = -0.5;
    v97 = v42;
    while (1)
    {
      v73 = *(v44 + 8) + 296 * v70;
      if (!*(v73 + 128))
      {
        v74 = *(v73 + 132) && a8 == 0;
        if (!v74 && v45 >= 1)
        {
          break;
        }
      }

LABEL_81:
      if (++v70 >= v45)
      {
        goto LABEL_84;
      }
    }

    v76 = 0;
    v77 = 0;
    v78 = v89;
    v104 = &v90[24 * v70];
    while (1)
    {
      v79 = *(v44 + 8);
      if (*(v79 + v76 + 264) || !a8 && *(v79 + v76 + 268))
      {
        goto LABEL_80;
      }

      v80 = v43;
      v81 = (erf((fabs(sqrt(*(v42 + v70) * *(v42 + v70) + *(v43 + v77) * *(v43 + v77))) + v71) / 0.707106781) + 1.0) * v72 + 1.0;
      if (vabdd_f64(*v104, *v78) <= 0.25)
      {
        v82 = v81;
      }

      else
      {
        v82 = 0.0;
      }

      if (v82 >= *&qword_1000BA598)
      {
        if (v101 < v99)
        {
          v83 = v101;
          v101 = (v101 + 1);
LABEL_79:
          v45 = &a6[664 * v83];
          v84 = sqrt((v96 - *(v73 + 24)) * (v96 - *(v73 + 24)) + (v95 - *(v73 + 32)) * (v95 - *(v73 + 32)) + (v50 - *(v73 + 40)) * (v50 - *(v73 + 40)));
          v85 = sqrt((v94 - *(v79 + v76 + 160)) * (v94 - *(v79 + v76 + 160)) + (v93 - *(v79 + v76 + 168)) * (v93 - *(v79 + v76 + 168)) + (v53 - *(v79 + v76 + 176)) * (v53 - *(v79 + v76 + 176)));
          memcpy(v45, v73, 0x128uLL);
          v86 = *(v104 + 2);
          *(v45 + 296) = *v104;
          *(v45 + 312) = v86;
          *(v45 + 320) = v84;
          v71 = -1.5;
          memcpy((v45 + 328), (v79 + v76), 0x128uLL);
          v87 = *(v78 + 2);
          *(v45 + 624) = *v78;
          *(v45 + 640) = v87;
          *(v45 + 648) = v85;
          v72 = -0.5;
          *(v45 + 656) = v82;
          v42 = v97;
          qsort(a6, v101, 0x298uLL, sub_10007E97C);
          v44 = a1;
          v43 = v80;
          LODWORD(v45) = *(a1 + 16);
          goto LABEL_80;
        }

        v83 = v92;
        v43 = v80;
        v44 = a1;
        if (v82 > *v91)
        {
          goto LABEL_79;
        }
      }

      else
      {
        v43 = v80;
        v44 = a1;
      }

LABEL_80:
      ++v77;
      v78 += 3;
      v76 += 296;
      if (v77 >= v45)
      {
        goto LABEL_81;
      }
    }
  }

  v26 = *(a2 + 16);
  if (v26 < 1)
  {
    goto LABEL_31;
  }

  v27 = 0;
  v28 = 0;
  result = 0;
  while (1)
  {
    v11 = *(a2 + 8);
    if (*(v11 + v27) != *a3)
    {
      LODWORD(v11) = v99;
      goto LABEL_27;
    }

    v30 = &a6[664 * result];
    v31 = result;
    bzero(v30, 0x298uLL);
    memcpy(v30, (v11 + v27), 0x128uLL);
    memcpy(v30 + 328, (v11 + v27), 0x128uLL);
    *(v30 + 82) = 0x3FF0000000000000;
    result = (v31 + 1);
    LODWORD(v11) = v99;
    if (result == v99)
    {
      break;
    }

    v26 = *(a2 + 16);
LABEL_27:
    ++v28;
    v27 += 296;
    if (v28 >= v26)
    {
      goto LABEL_30;
    }
  }

  result = v99;
LABEL_30:
  if (result <= 0)
  {
LABEL_31:
    v23 = *a3;
    v22 = *(a3 + 24);
    goto LABEL_32;
  }

  return result;
}

uint64_t sub_10007E97C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 656) - *(a2 + 656);
  if (v2 <= 0.0)
  {
    v3 = 0;
  }

  else
  {
    v3 = -1;
  }

  if (v2 < 0.0)
  {
    return 1;
  }

  else
  {
    return v3;
  }
}

uint64_t vrx_reserve_lens_pair(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a1)
  {
    sub_100080020();
  }

  if (!a2)
  {
    sub_10007FFF4();
  }

  if (!a3)
  {
    sub_10007FFC8();
  }

  v4 = sub_10007EA34(a1);
  v5 = sub_10007EA34(a1);
  v6 = 0;
  if (v4 && v5)
  {
    if (v4[32] || v5[66] || v4[33] || v5[67])
    {
      return 0;
    }

    else
    {
      v6 = 1;
      v4[33] = 1;
      v5[67] = 1;
    }
  }

  return v6;
}

void *sub_10007EA34(uint64_t a1)
{
  v4 = 0;
  memset(v3, 0, sizeof(v3));
  __strcpy_chk();
  return bsearch(v3, *(a1 + 8), *(a1 + 16), 0x128uLL, sub_10007F9CC);
}

uint64_t vrx_release_lens_pair(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a1)
  {
    sub_1000800A4();
  }

  if (!a2)
  {
    sub_100080078();
  }

  if (!a3)
  {
    sub_10008004C();
  }

  v4 = sub_10007EA34(a1);
  v5 = sub_10007EA34(a1);
  v6 = 0;
  if (v4)
  {
    if (v5)
    {
      v6 = v4[33];
      if (v6)
      {
        v6 = v5[67];
        if (v6)
        {
          v4[33] = 0;
          v5[67] = 0;
          return 1;
        }
      }
    }
  }

  return v6;
}

uint64_t vrx_release_all_lenses(uint64_t result)
{
  if (!result)
  {
    sub_1000800D0();
  }

  v1 = *(result + 16);
  if (v1 >= 1)
  {
    v2 = (*(result + 8) + 268);
    do
    {
      *(v2 - 34) = 0;
      *v2 = 0;
      v2 += 74;
      --v1;
    }

    while (v1);
  }

  return result;
}

uint64_t vrx_set_lens_missing(uint64_t a1, uint64_t a2, int a3, int a4)
{
  if (!a2)
  {
    sub_1000800FC();
  }

  result = sub_10007EA34(a1);
  if (result)
  {
    if (!a3)
    {
      v7 = 128;
      goto LABEL_7;
    }

    if (a3 == 1)
    {
      v7 = 264;
LABEL_7:
      *(result + v7) = a4;
      return 1;
    }

    return 0;
  }

  return result;
}

uint64_t vrx_clear_missing_lenses(uint64_t result)
{
  if (!result)
  {
    sub_100080128();
  }

  v1 = *(result + 16);
  if (v1 >= 1)
  {
    v2 = (*(result + 8) + 264);
    do
    {
      *(v2 - 34) = 0;
      *v2 = 0;
      v2 += 74;
      --v1;
    }

    while (v1);
  }

  return result;
}

uint64_t vrx_get_lens_tray_slot_for_label(uint64_t a1, uint64_t a2, void *a3)
{
  if (!a1)
  {
    sub_100080180();
  }

  if (!a2)
  {
    sub_100080154();
  }

  result = sub_10007EA34(a1);
  if (result)
  {
    memcpy(a3, result, 0x128uLL);
    return 1;
  }

  return result;
}

uint64_t vrx_get_lens_tray_slot_for_location(uint64_t a1, int a2, int a3, void *__dst)
{
  if (!a1)
  {
    sub_1000801AC();
  }

  if (a2 < 1)
  {
    return 0;
  }

  result = 0;
  if (a3 >= 1 && *(a1 + 20) >= a2)
  {
    v6 = *(a1 + 24);
    if (v6 >= a3)
    {
      v7 = *(*(a1 + 32) + 8 * (a3 + v6 * (a2 - 1) - 1));
      if (v7)
      {
        memcpy(__dst, v7, 0x128uLL);
        return 1;
      }
    }

    return 0;
  }

  return result;
}

BOOL vrx_get_lens_tray_slot_for_sequence_number(uint64_t a1, int a2, char *__s2)
{
  if (!a1)
  {
    sub_100080204();
  }

  if (!__s2)
  {
    sub_1000801D8();
  }

  v4 = *(a1 + 16);
  if (v4 >= 1)
  {
    v6 = 0;
    v7 = *(a1 + 8);
    v8 = 1;
    v9 = v7;
    v10 = 1;
    while (1)
    {
      if (a2)
      {
        if (a2 == 1)
        {
          v11 = v7 + 296 * v6 + 136;
LABEL_9:
          if (!strcmp((v11 + 72), __s2))
          {
            return v10;
          }
        }
      }

      else
      {
        v11 = v9;
        if (v7)
        {
          goto LABEL_9;
        }
      }

      ++v6;
      v10 = v8 < v4;
      v9 += 296;
      if (++v8 - v4 == 1)
      {
        return v10;
      }
    }
  }

  return 0;
}

uint64_t vrx_print_eye_rx(double *a1)
{
  if (!a1)
  {
    sub_100080230();
  }

  return printf("sph: %+6.2f, cyl: %+6.2f, axis: %3d", *a1, a1[1], a1[2]);
}

uint64_t vrx_print_rx(double *a1)
{
  if (!a1)
  {
    sub_10008025C();
  }

  printf("OD:       ");
  printf("sph: %+6.2f, cyl: %+6.2f, axis: %3d", *a1, a1[1], a1[2]);
  putchar(10);
  printf("OS:       ");
  printf("sph: %+6.2f, cyl: %+6.2f, axis: %3d", a1[3], a1[4], a1[5]);
  putchar(10);
  printf("OD ADD:   %+6.2f\n", a1[6]);
  printf("OS ADD:   %+6.2f\n", a1[7]);

  return putchar(10);
}

uint64_t vrx_print_power_vector(double *a1)
{
  if (!a1)
  {
    sub_100080288();
  }

  return printf("M: %+.6f, J0: %+.6f, J45: %+.6f\n", *a1, a1[1], a1[2]);
}

_DWORD *vrx_parse_supported_lens_matrix(uint64_t a1)
{
  if (!a1)
  {
    sub_1000802B4();
  }

  v1 = vrx_reader_open_string(a1);

  return sub_10007EF74(v1);
}

_DWORD *sub_10007EF74(uint64_t a1)
{
  if (!a1)
  {
    sub_1000802E0();
  }

  v1 = vrx_csv_file_create(a1);
  if (!v1)
  {
    v4 = 0;
    v9 = &unk_1000C1000;
    v10 = 1;
LABEL_19:
    v9[242] = v10;
    return v4;
  }

  v2 = v1;
  if (!vrx_csv_file_next_record(v1) || (v15 = 0.0, !vrx_csv_file_next_double(v2, &v15)))
  {
    vrx_csv_file_destroy(v2);
LABEL_18:
    v4 = 0;
    v9 = &unk_1000C1000;
    v10 = 2;
    goto LABEL_19;
  }

  v3 = vrx_vector_create_(128, 2, 0);
  while (vrx_csv_file_next_double(v2, &v15))
  {
    LOWORD(__src) = (v15 * 100.0);
    vrx_vector_append(v3, &__src);
  }

  v4 = malloc_type_calloc(1uLL, 0x20uLL, 0x1090040E271B65FuLL);
  v4[6] = vrx_vector_length(v3);
  *(v4 + 1) = vrx_vector_finalize(v3);
  v5 = vrx_vector_create_(128, 8, 1);
  v6 = vrx_vector_create_(128, 2, 0);
  if (vrx_csv_file_next_record(v2))
  {
    while (vrx_csv_file_next_double(v2, &v15))
    {
      v14 = (v15 * 100.0);
      vrx_vector_append(v6, &v14);
      v7 = vrx_vector_create_(v4[6], 2, 0);
      if (v4[6] >= 1)
      {
        v8 = 0;
        do
        {
          LODWORD(__src) = 0;
          if (!vrx_csv_file_next_int(v2, &__src))
          {
            goto LABEL_17;
          }

          v13 = __src;
          vrx_vector_append(v7, &v13);
        }

        while (++v8 < v4[6]);
      }

      __src = vrx_vector_finalize(v7);
      vrx_vector_append(v5, &__src);
      if (!vrx_csv_file_next_record(v2))
      {
        goto LABEL_14;
      }
    }

LABEL_17:
    vrx_csv_file_destroy(v2);
    vrx_unload_supported_lens_matrix(v4);
    goto LABEL_18;
  }

LABEL_14:
  v4[7] = vrx_vector_length(v6);
  *(v4 + 2) = vrx_vector_finalize(v6);
  *v4 = vrx_vector_finalize(v5);
  vrx_csv_file_destroy(v2);
  vrx_error = 0;
  return v4;
}

void *vrx_load_supported_lens_matrix(const char *a1)
{
  if (!a1)
  {
    sub_10008030C();
  }

  result = vrx_reader_open_file(a1);
  if (result)
  {

    return sub_10007EF74(result);
  }

  return result;
}

void vrx_unload_supported_lens_matrix(uint64_t a1)
{
  if (a1)
  {
    free(*(a1 + 8));
    free(*(a1 + 16));
    if (*(a1 + 28) >= 1)
    {
      v2 = 0;
      do
      {
        free(*(*a1 + 8 * v2++));
      }

      while (v2 < *(a1 + 28));
    }

    free(*a1);

    free(a1);
  }
}

_DWORD *vrx_load_lens_tray_from_supported_lens_matrix(uint64_t a1, double a2, double a3)
{
  if (!a1)
  {
    sub_100080338();
  }

    ;
  }

    ;
  }

  while (a3 < 0.0)
  {
    a3 = a3 + 180.0;
  }

    ;
  }

  v6 = malloc_type_calloc(1uLL, 0x38uLL, 0x10F0040E7A3C391uLL);
  *v6 = strdup("<virtual>");
  v39 = 0;
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  __src = 0u;
  v22 = 0u;
  v7 = vrx_vector_create_(128, 296, 0);
  v8 = *(a1 + 28);
  if (v8 >= 1)
  {
    v9 = __sincos_stret((i + i) * 3.14159265 / 180.0);
    v10 = *(a1 + 24);
    v11 = __sincos_stret((a3 + a3) * 3.14159265 / 180.0);
    v12 = 0;
    do
    {
      v13 = v12 + 1;
      if (v10 >= 1)
      {
        v14 = 0;
        v15 = *(*(a1 + 16) + 2 * v12) / 100.0;
        do
        {
          if (*(*(*a1 + 8 * v12) + 2 * v14))
          {
            v16 = *(*(a1 + 8) + 2 * v14);
            __src = 0u;
            v22 = 0u;
            v23 = 0u;
            v24 = 0u;
            v25 = 0u;
            v26 = 0u;
            v27 = 0u;
            v28 = 0u;
            v29 = 0u;
            v30 = 0u;
            v31 = 0u;
            v32 = 0u;
            v33 = 0u;
            v34 = 0u;
            v17 = a3;
            v18 = v16 / 100.0;
            v35 = 0u;
            v36 = 0u;
            v37 = 0u;
            *(&v38 + 1) = 0;
            v39 = 0;
            LODWORD(v38) = v12 + 1;
            DWORD1(v38) = ++v14;
            sub_10007F59C(v12 + 1, v14, "", &v38 + 8);
            *&__src = v18;
            *(&__src + 1) = v15;
            *(&v29 + 1) = v18;
            *&v30 = v15;
            v19 = v15 * 0.5 + v18;
            a3 = v17;
            *&v22 = i;
            *(&v22 + 1) = v19;
            *&v23 = -(v15 * 0.5 * v9.__cosval);
            *(&v23 + 1) = -(v15 * 0.5 * v9.__sinval);
            *(&v30 + 1) = v17;
            *&v31 = v19;
            *(&v31 + 1) = -(v15 * 0.5 * v11.__cosval);
            *&v32 = -(v15 * 0.5 * v11.__sinval);
            vrx_vector_append(v7, &__src);
            v10 = *(a1 + 24);
          }

          else
          {
            ++v14;
          }
        }

        while (v14 < v10);
        v8 = *(a1 + 28);
      }

      ++v12;
    }

    while (v13 < v8);
  }

  v6[4] = vrx_vector_length(v7);
  *(v6 + 1) = vrx_vector_finalize(v7);
  return v6;
}

uint64_t sub_10007F59C(unsigned int a1, int a2, const char *a3, char *a4)
{
  if (!a4)
  {
    sub_100080364();
  }

  lens_tray_row_label = vrx_generate_lens_tray_row_label(a1, __str);
  result = 0;
  if ((a2 - 1000) >= 0xFFFFFC19)
  {
    if (lens_tray_row_label)
    {
      snprintf(a4, 0xCuLL, "%s%02d%s", __str, a2, a3);
      return 1;
    }
  }

  return result;
}

void *vrx_lens_is_supported(uint64_t a1, double *a2)
{
  if (!a1)
  {
    sub_1000803BC();
  }

  if (!a2)
  {
    sub_100080390();
  }

  v3 = a2[1];
  __key = (*a2 * 100.0);
  v7 = (v3 * 100.0);
  result = bsearch(&__key, *(a1 + 8), *(a1 + 24), 2uLL, sub_10007F72C);
  if (result)
  {
    v5 = result;
    v6 = *(a1 + 8);
    result = bsearch(&v7, *(a1 + 16), *(a1 + 28), 2uLL, sub_10007F72C);
    if (result)
    {
      return (*(*(*a1 + 8 * (((result - *(a1 + 16)) << 47) >> 48)) + 2 * (((v5 - v6) << 47) >> 48)) != 0);
    }
  }

  return result;
}

uint64_t sub_10007F72C(_WORD *a1, _WORD *a2)
{
  if ((*a1 - *a2) < 0)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return *a1 != *a2;
  }
}

BOOL vrx_get_lens_for_serial_number(uint64_t a1, char *__s2, uint64_t a3)
{
  if (!a1)
  {
    sub_100080440();
  }

  if (!__s2)
  {
    sub_100080414();
  }

  if (!a3)
  {
    sub_1000803E8();
  }

  *(a3 + 144) = 0;
  *(a3 + 112) = 0u;
  *(a3 + 128) = 0u;
  *(a3 + 80) = 0u;
  *(a3 + 96) = 0u;
  *(a3 + 48) = 0u;
  *(a3 + 64) = 0u;
  *(a3 + 16) = 0u;
  *(a3 + 32) = 0u;
  *a3 = 0u;
  v5 = *(a1 + 16);
  if (v5 < 1)
  {
    return 0;
  }

  v6 = 0;
  v7 = *(a1 + 8);
  v8 = 1;
  v9 = 1;
  while (strcmp((v7 + v6 + 48), __s2))
  {
    if (!strcmp((v7 + v6 + 184), __s2))
    {
      v11 = v7 + v6 + 136;
      goto LABEL_13;
    }

LABEL_10:
    v9 = v8 < v5;
    v6 += 296;
    ++v8;
    if (296 * v5 == v6)
    {
      return 0;
    }
  }

  if (!v7)
  {
    goto LABEL_10;
  }

  v11 = v7 + v6;
LABEL_13:
  *a3 = *v11;
  v12 = *(v11 + 16);
  v13 = *(v11 + 32);
  v14 = *(v11 + 64);
  *(a3 + 48) = *(v11 + 48);
  *(a3 + 64) = v14;
  *(a3 + 16) = v12;
  *(a3 + 32) = v13;
  v15 = *(v11 + 80);
  v16 = *(v11 + 96);
  v17 = *(v11 + 112);
  *(a3 + 128) = *(v11 + 128);
  *(a3 + 96) = v16;
  *(a3 + 112) = v17;
  *(a3 + 80) = v15;
  strcpy((a3 + 136), (v7 + v6 + 280));
  return v9;
}

uint64_t vrx_get_lens_for_slot(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  if (!a1)
  {
    sub_1000804F0();
  }

  if (!a2)
  {
    sub_1000804C4();
  }

  if (a3 >= 2)
  {
    sub_100080498();
  }

  if (!a4)
  {
    sub_10008046C();
  }

  *(a4 + 128) = 0;
  *(a4 + 96) = 0u;
  *(a4 + 112) = 0u;
  *(a4 + 64) = 0u;
  *(a4 + 80) = 0u;
  *(a4 + 32) = 0u;
  *(a4 + 48) = 0u;
  *a4 = 0u;
  *(a4 + 16) = 0u;
  v17 = 0;
  memset(v16, 0, sizeof(v16));
  __strcpy_chk();
  result = bsearch(v16, *(a1 + 8), *(a1 + 16), 0x128uLL, sub_10007F9CC);
  if (result)
  {
    v8 = 136;
    if (!a3)
    {
      v8 = 0;
    }

    v9 = result + v8;
    *a4 = *v9;
    v10 = *(v9 + 16);
    v11 = *(v9 + 32);
    v12 = *(v9 + 64);
    *(a4 + 48) = *(v9 + 48);
    *(a4 + 64) = v12;
    *(a4 + 16) = v10;
    *(a4 + 32) = v11;
    v13 = *(v9 + 80);
    v14 = *(v9 + 96);
    v15 = *(v9 + 112);
    *(a4 + 128) = *(v9 + 128);
    *(a4 + 96) = v14;
    *(a4 + 112) = v15;
    *(a4 + 80) = v13;
    return 1;
  }

  return result;
}

char *vrx_is_demo_tray_file(char *a1, char **a2)
{
  result = strrchr(a1, 46);
  if (result)
  {
    v5 = result;
    if (!strcmp(result + 1, vrx_demo_tray_file_extension[0]))
    {
      if (a2)
      {
        *a2 = strndup(a1, v5 - a1);
      }

      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void sub_10008051C()
{
  sub_100003AC4();
  sub_100003AFC();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_10008062C(uint64_t *a1)
{
  sub_100003AF0(a1, __stack_chk_guard);
  sub_100003AB4();
  sub_100003AA0();
  sub_100003AD4(&_mh_execute_header, v1, v2, "%s @%d: Keychain error: %{public}@", v3, v4, v5, v6, 2u);
}

void sub_1000806A8()
{
  sub_100003AC4();
  sub_100003B08();
  sub_100003AFC();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

void sub_10008072C(uint64_t *a1)
{
  sub_100003AF0(a1, __stack_chk_guard);
  sub_100003AB4();
  sub_100003AA0();
  sub_100003AD4(&_mh_execute_header, v1, v2, "%s @%d: Error deriving public key: %{public}@", v3, v4, v5, v6, 2u);
}

void sub_1000807A8(uint64_t *a1)
{
  sub_100003AF0(a1, __stack_chk_guard);
  sub_100003AB4();
  sub_100003AA0();
  sub_100003AD4(&_mh_execute_header, v1, v2, "%s @%d: Keychain error: %{public}@", v3, v4, v5, v6, 2u);
}

void sub_100080824()
{
  sub_100003AC4();
  sub_100003AFC();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_1000808AC(uint64_t *a1)
{
  sub_100003AF0(a1, __stack_chk_guard);
  sub_100003AB4();
  sub_100003AA0();
  sub_100003AD4(&_mh_execute_header, v1, v2, "%s @%d: Keychain error: %{public}@", v3, v4, v5, v6, 2u);
}

void sub_100080928(uint64_t *a1)
{
  sub_100003AF0(a1, __stack_chk_guard);
  sub_100003AB4();
  sub_100003AA0();
  sub_100003AD4(&_mh_execute_header, v1, v2, "%s @%d: Keychain error: %{public}@", v3, v4, v5, v6, 2u);
}

void sub_1000809A4(uint64_t *a1)
{
  sub_100003AF0(a1, __stack_chk_guard);
  sub_100003AB4();
  sub_100003AA0();
  sub_100003AD4(&_mh_execute_header, v1, v2, "%s @%d: Keychain error: %{public}@", v3, v4, v5, v6, 2u);
}

void sub_100080A20()
{
  sub_100003AC4();
  sub_100003B08();
  sub_100003AFC();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

__double2 __sincos_stret(double a1)
{
  v3 = ___sincos_stret(a1);
  cosval = v3.__cosval;
  sinval = v3.__sinval;
  result.__cosval = cosval;
  result.__sinval = sinval;
  return result;
}