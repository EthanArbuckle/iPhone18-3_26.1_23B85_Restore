uint64_t sub_1003DB068(uint64_t result, uint64_t a2, char a3)
{
  v4 = *v3;
  v5 = *(*v3 + 16);
  v6 = v5 + result;
  if (__OFADD__(v5, result))
  {
    goto LABEL_44;
  }

  v9 = result;
  v10 = *v3;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v4;
  if (result)
  {
    v11 = *(v4 + 24) >> 1;
    if (v11 >= v6)
    {
      goto LABEL_11;
    }

    if (v5 <= v6)
    {
      v12 = v6;
    }

    else
    {
      v12 = v5;
    }
  }

  else if (v5 <= v6)
  {
    v12 = v6;
  }

  else
  {
    v12 = v5;
  }

  result = sub_1003E54DC(result, v12, 1);
  v4 = *v3;
  v11 = *(*v3 + 24) >> 1;
LABEL_11:
  v13 = *(v4 + 16);
  v14 = v11 - v13;
  if (v11 == v13)
  {
    if (v9 > 0)
    {
LABEL_45:
      __break(1u);
      goto LABEL_46;
    }

    v15 = 0;
  }

  else
  {
    if (v14 < 1)
    {
      __break(1u);
LABEL_42:
      __break(1u);
LABEL_43:
      __break(1u);
LABEL_44:
      __break(1u);
      goto LABEL_45;
    }

    v15 = v9;
    if (v9)
    {
      v15 = v11 - v13;
      v16 = v9 & ~(v9 >> 63);
      v17 = v4 + 16 * v13 + 32;
      v18 = ~v13 + v11;
      v19 = v9;
      while (v16)
      {
        *v17 = a2;
        *(v17 + 8) = a3 & 1;
        if (!v18)
        {
          if (v14 < v9)
          {
            goto LABEL_45;
          }

          goto LABEL_22;
        }

        v17 += 16;
        --v16;
        --v18;
        if (!--v19)
        {
          v15 = v9;
          goto LABEL_22;
        }
      }

      goto LABEL_43;
    }

LABEL_22:
    if (v15 > 0)
    {
      v20 = *(v4 + 16);
      v21 = __OFADD__(v20, v15);
      v22 = v20 + v15;
      if (v21)
      {
LABEL_46:
        __break(1u);
        goto LABEL_47;
      }

      *(v4 + 16) = v22;
    }
  }

  if (v15 != v14 || v14 == v9)
  {
LABEL_40:
    *v3 = v4;
    return result;
  }

  if (v14 < v9)
  {
    v23 = *(v4 + 16);
    v24 = v14 + 1;
    while (1)
    {
      v25 = *(v4 + 24);
      if (v23 + 1 > (v25 >> 1))
      {
        result = sub_1003E54DC(v25 > 1, v23 + 1, 1);
      }

      v4 = *v3;
      v26 = *(*v3 + 24) >> 1;
      if (v23 < v26)
      {
        break;
      }

LABEL_29:
      *(v4 + 16) = v23;
    }

    v27 = 0;
    v28 = v24 + v26 - v23;
    v29 = (v4 + 16 * v23 + 40);
    while (1)
    {
      *(v29 - 1) = a2;
      *v29 = a3 & 1;
      if (v9 - v24 == v27)
      {
        break;
      }

      if (v24 < 0 || v24 + v27 >= v9)
      {
        goto LABEL_42;
      }

      ++v27;
      v29 += 16;
      if (!(v23 - v26 + v27))
      {
        v23 = v26;
        v24 = v28;
        goto LABEL_29;
      }
    }

    *(v4 + 16) = v23 + v27 + 1;
    goto LABEL_40;
  }

LABEL_47:
  __break(1u);
  return result;
}

void sub_1003DB278(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3 > 0xFFFFFFFFLL)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (((a4 | a3) & 0x8000000000000000) == 0)
  {
    if (a4 > 0xFFFFFFFFLL)
    {
      goto LABEL_20;
    }

    if (a3 == a4 && a4 >= a3)
    {
      return;
    }

    LODWORD(v7) = a3;
    while (1)
    {
      v8 = *(a2 + 16);
      if (v7 >= v8)
      {
        break;
      }

      v9 = a2 + 32 + 16 * v7;
      if (*(v9 + 8))
      {
        goto LABEL_21;
      }

      v7 = (v8 - 1) & (v7 + 1);
      if (HIDWORD(v7))
      {
        goto LABEL_17;
      }

      sub_1004A6EB4(*v9);
      if (a4 < a3 != v7 >= a3 && v7 == a4)
      {
        return;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
}

uint64_t CommandEncodeBuffer.init(buffer:options:encodedAtLeastOneCatenateElement:loggingMode:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, char a6@<W5>, uint64_t a7@<X8>)
{
  v8 = BYTE4(a4);
  v9 = a3;
  v10 = a2;
  v13 = HIDWORD(a2);
  v14 = HIDWORD(a3);
  v15 = HIWORD(a3);
  v16 = a4 & 0x1010101;
  result = sub_1003DBA20(_swiftEmptyArrayStorage);
  *a7 = a6;
  *(a7 + 5) = v8 & 1;
  *(a7 + 1) = v16;
  *(a7 + 8) = a1;
  *(a7 + 16) = v10;
  *(a7 + 20) = v13;
  *(a7 + 24) = v9;
  *(a7 + 28) = v14;
  *(a7 + 30) = v15;
  *(a7 + 32) = result;
  *(a7 + 40) = v18;
  *(a7 + 48) = v19;
  *(a7 + 56) = a5;
  return result;
}

void CommandEncodeBuffer.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 1) | (*(v2 + 5) << 32);
  v5 = *(v2 + 8);
  v6 = *(v2 + 20);
  v13 = *(v2 + 16);
  v7 = *(v2 + 28);
  v8 = *(v2 + 30);
  v9 = *(v2 + 32);
  v10 = *(v2 + 40);
  v11 = *(v2 + 48);
  sub_1004A6EC4(*v2 & 1);
  EncodeBuffer.Mode.hash(into:)(a1, v4);
  swift_beginAccess();
  v12 = *(v5 + 24) + (v8 | (v7 << 8));
  sub_1004A6EA4();
  sub_1003DB278(a1, v9, v10, v11);
  sub_1004A6EC4(*(v2 + 56) & 1);
}

Swift::Int CommandEncodeBuffer.hashValue.getter()
{
  sub_1004A6E94();
  CommandEncodeBuffer.hash(into:)(v1);
  return sub_1004A6F14();
}

Swift::Int sub_1003DB608()
{
  sub_1004A6E94();
  CommandEncodeBuffer.hash(into:)(v1);
  return sub_1004A6F14();
}

uint64_t sub_1003DB644(_OWORD *a1, _OWORD *a2)
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
  return _s12NIOIMAPCore219CommandEncodeBufferV23__derived_struct_equalsySbAC_ACtFZ_0(v5, v7) & 1;
}

unint64_t CommandEncodeBuffer.options.getter()
{
  v1 = v0[5];
  if (v1 < 0)
  {
    __break(1u);
  }

  else
  {
    v2 = (v1 & 1) == 0;
    v3 = &_mh_execute_header;
    if (v2)
    {
      v3 = 0;
    }

    v4 = 0x1000000;
    if ((v0[4] & 1) == 0)
    {
      v4 = 0;
    }

    v5 = 0x10000;
    if ((v0[3] & 1) == 0)
    {
      v5 = 0;
    }

    v6 = 256;
    if ((v0[2] & 1) == 0)
    {
      v6 = 0;
    }

    return v6 & 0xFFFFFFFFFFFFFFFELL | v0[1] & 1 | v5 | v4 | v3;
  }

  return result;
}

uint64_t CommandEncodeBuffer.options.setter(uint64_t result)
{
  *(v1 + 5) = BYTE4(result) & 1;
  *(v1 + 1) = result & 0x1010101;
  return result;
}

uint64_t *(*CommandEncodeBuffer.options.modify(uint64_t *(*result)(uint64_t *result)))(uint64_t *result)
{
  *result = v1;
  v2 = *(v1 + 1) | (*(v1 + 5) << 32);
  if ((v2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    *(v1 + 5);
    *(result + 8) = *(v1 + 1) & 1;
    v3.i64[0] = 0xFFFFFFFFFFLL;
    v3.i64[1] = 0xFFFFFFFFFFLL;
    v4 = vandq_s8(vdupq_n_s64(v2), v3);
    *v4.i8 = vand_s8(vmovn_s32(vuzp1q_s32(vshlq_u64(v4, xmmword_1004D2F00), vshlq_u64(v4, xmmword_1004D2EF0))), 0x1000100010001);
    *(result + 9) = vuzp1_s8(*v4.i8, *v4.i8).u32[0];
    return sub_1003DB798;
  }

  return result;
}

uint64_t *sub_1003DB798(uint64_t *result)
{
  v1 = *result;
  v2 = 256;
  if (!*(result + 9))
  {
    v2 = 0;
  }

  v3 = v2 | *(result + 8);
  v4 = 0x10000;
  if (!*(result + 10))
  {
    v4 = 0;
  }

  v5 = 0x1000000;
  if (!*(result + 11))
  {
    v5 = 0;
  }

  v6 = v3 | v4 | v5;
  v7 = &_mh_execute_header;
  if (!*(result + 12))
  {
    BYTE4(v7) = 0;
  }

  *(v1 + 5) = BYTE4(v7);
  *(v1 + 1) = v6;
  return result;
}

uint64_t CommandEncodeBuffer.init(buffer:capabilities:encodedAtLeastOneCatenateElement:loggingMode:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, char a6@<W5>, uint64_t a7@<X8>)
{
  v8 = a3;
  v9 = a2;
  v12 = HIDWORD(a2);
  v13 = HIDWORD(a3);
  v14 = HIWORD(a3);
  v15 = sub_1003DC598(a4);
  v16 = BYTE4(v15);
  v17 = v15 & 0x1010101;
  result = sub_1003DBA20(_swiftEmptyArrayStorage);
  *a7 = a6;
  *(a7 + 5) = v16 & 1;
  *(a7 + 1) = v17;
  *(a7 + 8) = a1;
  *(a7 + 16) = v9;
  *(a7 + 20) = v12;
  *(a7 + 24) = v8;
  *(a7 + 28) = v13;
  *(a7 + 30) = v14;
  *(a7 + 32) = result;
  *(a7 + 40) = v19;
  *(a7 + 48) = v20;
  *(a7 + 56) = a5;
  return result;
}

uint64_t _s12NIOIMAPCore219CommandEncodeBufferV23__derived_struct_equalsySbAC_ACtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if ((*a1 ^ *a2))
  {
    return 0;
  }

  v4 = a1[1];
  v5 = a1[2];
  v6 = a1[5];
  v7 = *(a1 + 1);
  v8 = *(a1 + 4);
  v9 = *(a1 + 5);
  v10 = *(a1 + 6);
  v11 = a2[1];
  v12 = a2[2];
  v13 = *(a2 + 3) | (a2[5] << 16);
  v14 = *(a2 + 4);
  v15 = *(a2 + 5);
  v16 = *(a2 + 6);
  v17 = 0;
  if (v6 < 0)
  {
    if (v13 & 0x80000000) == 0 || ((v4 ^ v11) & 1) != 0 || ((v5 ^ v12))
    {
      return v17 & 1;
    }

LABEL_14:
    v18 = a1;
    if (sub_10020FBD0(v7, *(a1 + 2), *(a1 + 6) | (*(a1 + 14) << 32) | (a1[30] << 48), *(a2 + 1), *(a2 + 2), *(a2 + 6) | (*(a2 + 14) << 32) | (a2[30] << 48)) && (sub_1003E4914(v8, v9, v10, v14, v15, v16) & 1) != 0)
    {
      v17 = v18[56] ^ a2[56] ^ 1;
    }

    else
    {
      v17 = 0;
    }

    return v17 & 1;
  }

  if ((v13 & 0x80000000) == 0 && ((v4 ^ v11) & 1) == 0 && ((v5 ^ v12) & 1) == 0 && ((a1[3] ^ v13) & 1) == 0 && ((a1[4] ^ ((*(a2 + 3) & 0x100) >> 8)) & 1) == 0 && ((v6 ^ ((v13 & 0x10000u) >> 16)) & 1) == 0)
  {
    goto LABEL_14;
  }

  return v17 & 1;
}

uint64_t sub_1003DBA20(uint64_t a1)
{
  sub_10000C9C0(&qword_1005DC328, &qword_100500F38);
  result = sub_1004A6894();
  *(result + 16) = 16;
  *(result + 32) = 0;
  *(result + 40) = 1;
  *(result + 48) = 0;
  *(result + 56) = 1;
  *(result + 64) = 0;
  *(result + 72) = 1;
  *(result + 80) = 0;
  *(result + 88) = 1;
  *(result + 96) = 0;
  *(result + 104) = 1;
  *(result + 112) = 0;
  *(result + 120) = 1;
  *(result + 128) = 0;
  *(result + 136) = 1;
  *(result + 144) = 0;
  *(result + 152) = 1;
  *(result + 160) = 0;
  *(result + 168) = 1;
  *(result + 176) = 0;
  *(result + 184) = 1;
  *(result + 192) = 0;
  *(result + 200) = 1;
  *(result + 208) = 0;
  *(result + 216) = 1;
  *(result + 224) = 0;
  *(result + 232) = 1;
  *(result + 240) = 0;
  *(result + 248) = 1;
  *(result + 256) = 0;
  *(result + 264) = 1;
  *(result + 272) = 0;
  *(result + 280) = 1;
  v11 = 0;
  v10 = result;
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = (a1 + 32);
    while (1)
    {
      v6 = *v4++;
      v5 = v6;
      v7 = v10;
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_10046B5A0(v10);
        v7 = result;
      }

      if ((v11 & 0x8000000000000000) != 0)
      {
        break;
      }

      v8 = *(v7 + 16);
      if (v11 >= v8)
      {
        goto LABEL_13;
      }

      v9 = v7 + 16 * v11;
      *(v9 + 32) = v5;
      *(v9 + 40) = 0;
      v10 = v7;
      v11 = (v8 + 0x7FFFFFFFFFFFFFFFLL) & (v11 + 1);
      if (!v11)
      {
        sub_1003DAE20();
      }

      if (!--v3)
      {
        return v7;
      }
    }

    __break(1u);
LABEL_13:
    __break(1u);
  }

  return result;
}

uint64_t sub_1003DBBB0(char a1, void (*a2)(__int128 *))
{
  object = &v66;
  if (qword_1005DB9D0 != -1)
  {
    goto LABEL_74;
  }

  while (1)
  {
    v5 = static ByteBufferAllocator.zeroCapacityWithDefaultAllocator;
    v6 = dword_1005DE398;
    v7 = word_1005DE39C;
    v8 = byte_1005DE39E;

    v9 = qword_1005DE390;
    v10 = sub_1003DBA20(_swiftEmptyArrayStorage);
    LOBYTE(v66) = a1 & 1;
    BYTE5(v66) = 0;
    *(object + 1) = 257;
    *(&v66 + 1) = v5;
    *&v67 = v9;
    DWORD2(v67) = v6;
    WORD6(v67) = v7;
    BYTE14(v67) = v8;
    *&v68 = v10;
    *(&v68 + 1) = v11;
    v69 = v12;
    v70 = 0;
    a2(&v66);
    result = EncodeBuffer.nextChunk()();
    v16 = HIDWORD(v14) - v14;
    if (HIDWORD(v14) < v14)
    {
      __break(1u);
LABEL_76:
      __break(1u);
LABEL_77:
      __break(1u);
      return result;
    }

    v17 = v15;
    if (v15 - (BYTE6(v15) | (WORD2(v15) << 8)) < HIDWORD(v14))
    {
      goto LABEL_76;
    }

    a2 = result;
    v71[0] = result;
    v71[1] = v14;
    v72 = v15;
    v73 = WORD2(v15);
    v74 = BYTE6(v15);
    v75 = v14;
    v76 = HIDWORD(v14);
    *&v62 = 0;
    *(&v62 + 1) = 0xE000000000000000;

    sub_1004A5874(v16);
    a1 = 0;
    sub_1003BB2E4(v71, &v62);
    result = sub_1003A52D0(v71);
    v65 = v62;
    if ((v17 & 0x100000000000000) == 0)
    {
      break;
    }

    v60 = *(object + 1) | (SBYTE5(v66) << 32);
    for (i = v67; (v60 & 0x8000000000000000) != 0; a2 = v31)
    {
      object = (DWORD1(v67) - i);
      if (DWORD1(v67) < i || (DWORD1(v67) - (DWORD1(v67) - i)) < i)
      {
        goto LABEL_68;
      }

      v41 = BYTE14(v67) | (WORD6(v67) << 8);
      v29 = __CFADD__(v41, i);
      v42 = v41 + i;
      if (v29)
      {
        goto LABEL_69;
      }

      v31 = *(&v66 + 1);
      if (HIBYTE(v42))
      {
        v58 = v58 & 0xFF00000000000000 | DWORD2(v67) | (WORD6(v67) << 32) | (BYTE14(v67) << 48);
        v31 = ByteBuffer._copyIntoByteBufferWithSliceIndex0_slowPath(index:length:)(i, DWORD1(v67) - i, *(&v66 + 1));
        v39 = v43;
        v33 = HIDWORD(v32);
        v35 = v44;
        v37 = v45;
      }

      else
      {
        v35 = (v42 >> 8);
        v39 = v42 + object;
        v37 = v42;

        LODWORD(v32) = 0;
        LODWORD(v33) = object;
      }

      v29 = __CFADD__(i, object);
      i = (i + object);
      if (v29)
      {
        goto LABEL_70;
      }

LABEL_48:
      v51 = 0;
LABEL_49:
      if (v33 < v32)
      {
        __break(1u);
LABEL_57:
        __break(1u);
        goto LABEL_58;
      }

      if (v39 - (v37 | (v35 << 8)) < v33)
      {
        goto LABEL_57;
      }

      v52 = v32;
      *(&v62 + 1) = __PAIR64__(v33, v32);
      LODWORD(v63) = v39;
      WORD2(v63) = v35;
      BYTE6(v63) = v37;
      *(&v63 + 1) = v32;
      *&v64[0] = v33;
      v53 = v33 - v32;
      v61._countAndFlagsBits = 0;
      v61._object = 0xE000000000000000;
      *&v62 = v31;

      sub_1004A5874(v53);
      v54 = v62;
      v55 = WORD2(v63);
      v56 = BYTE6(v63);
      swift_beginAccess();
      sub_10049DE0C(*(v54 + 24) + (v56 | (v55 << 8)) + v52, v53, &v61._countAndFlagsBits);
      sub_1003A52D0(&v62);
      object = v61._object;
      sub_1004A5994(v61);

      if (!v51)
      {

        LODWORD(v67) = i;
        object = &v66;
        goto LABEL_55;
      }
    }

    v20 = *(&v68 + 1);
    v19 = v68;
    v21 = v69 - *(&v68 + 1);
    if (v69 < *(&v68 + 1))
    {
      v21 += *(v68 + 16);
    }

    if (v21 >= 1)
    {
      if (v69 == *(&v68 + 1))
      {
LABEL_58:
        __break(1u);
      }

      else if ((*(&v68 + 1) & 0x8000000000000000) == 0)
      {
        if (!HIDWORD(*(&v68 + 1)))
        {
          v22 = *(v68 + 16);
          if (*(&v68 + 1) < v22)
          {
            v23 = v68 + 16 * *(&v68 + 1);
            if (*(v23 + 40))
            {
              goto LABEL_77;
            }

            if (v69 >= *(&v68 + 1))
            {
              v22 = 0;
            }

            if ((v69 - *(&v68 + 1) + v22) >= 1)
            {
              v24 = *(v23 + 32);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v19 = sub_10046B5A0(v19);
              }

              v25 = *(v19 + 2);
              if (v20 < v25)
              {
                v26 = &v19[16 * v20];
                *(v26 + 4) = 0;
                v26[40] = 1;
                *&v68 = v19;
                *(&v68 + 1) = (v25 + 0x1FFFFFFFFLL) & (v20 + 1);
                object = v24 - i;
                if (!__OFSUB__(v24, i))
                {
                  v27 = DWORD1(v67);
                  if (DWORD1(v67) >= object && (DWORD1(v67) - object) >= i)
                  {
                    v28 = BYTE14(v67) | (WORD6(v67) << 8);
                    v29 = __CFADD__(v28, i);
                    v30 = v28 + i;
                    if (!v29)
                    {
                      v31 = *(&v66 + 1);
                      if (HIBYTE(v30))
                      {
                        v59 = v59 & 0xFF00000000000000 | DWORD2(v67) | (WORD6(v67) << 32) | (BYTE14(v67) << 48);
                        v31 = ByteBuffer._copyIntoByteBufferWithSliceIndex0_slowPath(index:length:)(i, v24 - i, *(&v66 + 1));
                        v33 = HIDWORD(v32);
                        v35 = v34;
                        v37 = v36;
                        v39 = v38;
                      }

                      else
                      {
                        v35 = (v30 >> 8);
                        v39 = v30 + object;
                        v37 = v30;

                        LODWORD(v32) = 0;
                        LODWORD(v33) = v24 - i;
                      }

                      v29 = __CFADD__(i, object);
                      i = v24;
                      if (!v29)
                      {
                        v51 = v24 != v27;
                        goto LABEL_49;
                      }

LABEL_67:
                      __break(1u);
LABEL_68:
                      __break(1u);
LABEL_69:
                      __break(1u);
LABEL_70:
                      __break(1u);
LABEL_71:
                      __break(1u);
                      goto LABEL_72;
                    }

LABEL_66:
                    __break(1u);
                    goto LABEL_67;
                  }

LABEL_65:
                  __break(1u);
                  goto LABEL_66;
                }

LABEL_64:
                __break(1u);
                goto LABEL_65;
              }

LABEL_63:
              __break(1u);
              goto LABEL_64;
            }

LABEL_62:
            __break(1u);
            goto LABEL_63;
          }

LABEL_61:
          __break(1u);
          goto LABEL_62;
        }

LABEL_60:
        __break(1u);
        goto LABEL_61;
      }

      __break(1u);
      goto LABEL_60;
    }

    object = (DWORD1(v67) - i);
    if (DWORD1(v67) < i || (DWORD1(v67) - (DWORD1(v67) - i)) < i)
    {
      goto LABEL_71;
    }

    v46 = BYTE14(v67) | (WORD6(v67) << 8);
    v29 = __CFADD__(v46, i);
    v47 = v46 + i;
    if (!v29)
    {
      v31 = *(&v66 + 1);
      if (HIBYTE(v47))
      {
        v57 = v57 & 0xFF00000000000000 | DWORD2(v67) | (WORD6(v67) << 32) | (BYTE14(v67) << 48);
        v31 = ByteBuffer._copyIntoByteBufferWithSliceIndex0_slowPath(index:length:)(i, DWORD1(v67) - i, *(&v66 + 1));
        v33 = HIDWORD(v32);
        v35 = v48;
        v37 = v49;
        v39 = v50;
      }

      else
      {
        v35 = (v47 >> 8);
        v39 = v47 + object;
        v37 = v47;

        LODWORD(v32) = 0;
        LODWORD(v33) = object;
      }

      v29 = __CFADD__(i, object);
      i = (i + object);
      if (v29)
      {
        goto LABEL_73;
      }

      goto LABEL_48;
    }

LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
LABEL_74:
    swift_once();
  }

LABEL_55:
  v62 = v66;
  v63 = v67;
  v64[0] = v68;
  *(v64 + 9) = *(object + 41);
  sub_1002F14A8(&v62);
  return v65;
}

unint64_t sub_1003DC188()
{
  result = qword_1005DC320;
  if (!qword_1005DC320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DC320);
  }

  return result;
}

uint64_t sub_1003DC1DC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 57))
  {
    return *a1 + 0x80000000;
  }

  v2 = (a1 + 1);
  v3 = vld1q_dup_f32(v2);
  v4 = vandq_s8(vshlq_u32(v3, xmmword_100500E40), xmmword_100500E50);
  *v4.i8 = vorr_s8(*v4.i8, *&vextq_s8(v4, v4, 8uLL));
  v5 = v4.i32[0] | v4.i32[1] | (*(a1 + 5) >> 1 << 28);
  if (v5 > 0x80000000)
  {
    v6 = ~v5;
  }

  else
  {
    v6 = -1;
  }

  return (v6 + 1);
}

int8x8_t sub_1003DC264(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    result = 0;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *(a1 + 56) = 0;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 57) = 1;
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
      v4 = -a2;
      v5 = vandq_s8(vshlq_u32(vdupq_n_s32(v4), xmmword_100500E60), xmmword_100500E70);
      *v5.i8 = vorr_s8(*v5.i8, *&vextq_s8(v5, v5, 8uLL));
      v6.i64[0] = v5.u32[0];
      v6.i64[1] = v5.u32[1];
      result = vorr_s8(v5.u32[0], *&vextq_s8(v6, v6, 8uLL));
      *(a1 + 5) = ((32 * v4) & 0x1E00000000uLL) >> 32;
      *(a1 + 1) = result.i32[0];
      return result;
    }

    *(a1 + 57) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

NIOIMAPCore2::CommandEncodingOptions __swiftcall CommandEncodingOptions.init(useQuotedString:useSynchronizingLiteral:useNonSynchronizingLiteralPlus:useNonSynchronizingLiteralMinus:useBinaryLiteral:)(Swift::Bool useQuotedString, Swift::Bool useSynchronizingLiteral, Swift::Bool useNonSynchronizingLiteralPlus, Swift::Bool useNonSynchronizingLiteralMinus, Swift::Bool useBinaryLiteral)
{
  v5 = &_mh_execute_header;
  if (!useBinaryLiteral)
  {
    v5 = 0;
  }

  v6 = 0x1000000;
  if (!useNonSynchronizingLiteralMinus)
  {
    v6 = 0;
  }

  v7 = 0x10000;
  if (!useNonSynchronizingLiteralPlus)
  {
    v7 = 0;
  }

  v8 = 256;
  if (!useSynchronizingLiteral)
  {
    v8 = 0;
  }

  return (v8 & 0xFFFFFFFFFFFFFFFELL | useQuotedString | v7 | v6 | v5);
}

void CommandEncodingOptions.hash(into:)(uint64_t a1, uint64_t a2)
{
  sub_1004A6EC4(a2 & 1);
  sub_1004A6EC4(BYTE1(a2) & 1);
  sub_1004A6EC4(BYTE2(a2) & 1);
  sub_1004A6EC4(BYTE3(a2) & 1);
  sub_1004A6EC4(BYTE4(a2) & 1);
}

Swift::Int CommandEncodingOptions.hashValue.getter(uint64_t a1)
{
  sub_1004A6E94();
  sub_1004A6EC4(a1 & 1);
  sub_1004A6EC4(BYTE1(a1) & 1);
  sub_1004A6EC4(BYTE2(a1) & 1);
  sub_1004A6EC4(BYTE3(a1) & 1);
  sub_1004A6EC4(BYTE4(a1) & 1);
  return sub_1004A6F14();
}

Swift::Int sub_1003DC424()
{
  v1 = &_mh_execute_header;
  if (!v0[4])
  {
    v1 = 0;
  }

  v2 = 0x1000000;
  if (!v0[3])
  {
    v2 = 0;
  }

  v3 = 0x10000;
  if (!v0[2])
  {
    v3 = 0;
  }

  v4 = 256;
  if (!v0[1])
  {
    v4 = 0;
  }

  return CommandEncodingOptions.hashValue.getter(v4 | *v0 | v3 | v2 | v1);
}

void sub_1003DC47C(uint64_t a1)
{
  v2 = &_mh_execute_header;
  if (!v1[4])
  {
    v2 = 0;
  }

  v3 = 0x1000000;
  if (!v1[3])
  {
    v3 = 0;
  }

  v4 = 0x10000;
  if (!v1[2])
  {
    v4 = 0;
  }

  v5 = 256;
  if (!v1[1])
  {
    v5 = 0;
  }

  CommandEncodingOptions.hash(into:)(a1, v5 | *v1 | v4 | v3 | v2);
}

Swift::Int sub_1003DC4D4()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  sub_1004A6E94();
  v6 = &_mh_execute_header;
  if (!v5)
  {
    v6 = 0;
  }

  v7 = 0x1000000;
  if (!v4)
  {
    v7 = 0;
  }

  v8 = 0x10000;
  if (!v3)
  {
    v8 = 0;
  }

  v9 = 256;
  if (!v2)
  {
    v9 = 0;
  }

  CommandEncodingOptions.hash(into:)(v11, v9 | v1 | v8 | v7 | v6);
  return sub_1004A6F14();
}

unint64_t sub_1003DC598(uint64_t a1)
{
  v1 = a1;
  if (qword_1005DBB30 != -1)
  {
    a1 = swift_once();
  }

  v11 = static Capability.literalPlus;
  v12 = qword_1005DE8F0;
  v13 = byte_1005DE8F8;
  __chkstk_darwin(a1);
  v10 = &v11;
  v2 = sub_100215C70(sub_100197740, v9, v1);
  v3 = v2;
  if (v2)
  {
    v4 = 0;
  }

  else
  {
    if (qword_1005DBB38 != -1)
    {
      v2 = swift_once();
    }

    v11 = static Capability.literalMinus;
    v12 = qword_1005DE910;
    v13 = byte_1005DE918;
    __chkstk_darwin(v2);
    v10 = &v11;
    v2 = sub_100215C70(sub_1001F0EE0, v9, v1);
    if (v2)
    {
      v4 = 0x1000000;
    }

    else
    {
      v4 = 0;
    }
  }

  if (qword_1005DB9F0 != -1)
  {
    v2 = swift_once();
  }

  v11 = static Capability.binary;
  v12 = qword_1005DE3F0;
  v13 = byte_1005DE3F8;
  __chkstk_darwin(v2);
  v10 = &v11;
  v5 = sub_100215C70(sub_1001F0EE0, v9, v1);

  v6 = &_mh_execute_header;
  if ((v5 & 1) == 0)
  {
    v6 = 0;
  }

  v7 = 257;
  if (v3)
  {
    v7 = 65793;
  }

  return v7 | v4 | v6;
}

unint64_t sub_1003DC7FC()
{
  result = qword_1005DC330;
  if (!qword_1005DC330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DC330);
  }

  return result;
}

uint64_t AppendCommand.tag.getter()
{
  v1 = *(v0 + 56) >> 5;
  if ((v1 - 1) < 5)
  {
    return 0;
  }

  if (v1)
  {
    v4 = v0[1] | *v0 | v0[6] | v0[5] | v0[4] | v0[3] | v0[2];
    return 0;
  }

  v3 = *v0;

  return v3;
}

BOOL static AppendCommand.CatenateData.__derived_enum_equals(_:_:)(uint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v6 = HIBYTE(a6);
  if (!HIBYTE(a3))
  {
    if (!v6)
    {
      return a1 == a4;
    }

    return 0;
  }

  if (HIBYTE(a3) == 1)
  {
    if (v6 == 1)
    {
      return sub_10020FBD0(a1, a2, a3 & 0xFFFFFFFFFFFFFFLL, a4, a5, a6 & 0xFFFFFFFFFFFFFFLL);
    }

    return 0;
  }

  return v6 == 2 && !(a6 & 0xFFFFFFFFFFFFFFLL | a4 | a5);
}

void AppendCommand.hash(into:)(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 17) | ((*(v1 + 21) | (*(v1 + 23) << 16)) << 32);
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  v7 = *(v1 + 40);
  v6 = *(v1 + 48);
  v8 = *(v1 + 56);
  v9 = v8 >> 5;
  if (v8 >> 5 <= 2)
  {
    if (v9)
    {
      if (v9 == 1)
      {
        sub_1004A6EB4(1uLL);
        AppendOptions.hash(into:)(a1);
        sub_1004A6EB4(v6);
        sub_1004A6EC4(v8 & 1);
        return;
      }

      v14 = 2;
      goto LABEL_15;
    }

    sub_1004A6EB4(0);
    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
    v13 = v4 | (v4 << 32);
  }

  else
  {
    if (v8 >> 5 <= 4)
    {
      if (v9 == 3)
      {
        v18 = *v1;
        sub_1004A6EB4(4uLL);
        AppendOptions.hash(into:)(a1);
        return;
      }

      v14 = 5;
LABEL_15:
      sub_1004A6EB4(v14);
      swift_beginAccess();
      v15 = *(v2 + 24) + ((v3 >> 16) & 0xFFFF00 | BYTE5(v3));
      goto LABEL_16;
    }

    if (v9 == 5)
    {
      sub_1004A6EB4(6uLL);
      if (BYTE6(v3))
      {
        if (BYTE6(v3) == 1)
        {
          sub_1004A6EB4(1uLL);
          swift_beginAccess();
          v12 = *(v2 + 24) + ((v3 >> 16) & 0xFFFF00 | BYTE5(v3));
LABEL_16:
          sub_1004A6EA4();
          return;
        }

        v13 = 2;
      }

      else
      {
        sub_1004A6EB4(0);
        v13 = v2;
      }
    }

    else
    {
      v16 = *(v1 + 16) | (v3 << 8);
      v17 = v4 | *(v1 + 8);
      if (v8 != 192 || v17 | v2 | v5 | v7 | v6 | v16)
      {
        if (v8 == 192 && v2 == 1 && !(v17 | v16 | v5 | v7 | v6))
        {
          v13 = 7;
        }

        else
        {
          v13 = 8;
        }
      }

      else
      {
        v13 = 3;
      }
    }
  }

  sub_1004A6EB4(v13);
}

Swift::Int AppendCommand.hashValue.getter()
{
  sub_1004A6E94();
  AppendCommand.hash(into:)(v1);
  return sub_1004A6F14();
}

Swift::Int sub_1003DCC10()
{
  sub_1004A6E94();
  AppendCommand.hash(into:)(v1);
  return sub_1004A6F14();
}

uint64_t sub_1003DCC4C(_OWORD *a1, _OWORD *a2)
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
  return _s12NIOIMAPCore213AppendCommandO21__derived_enum_equalsySbAC_ACtFZ_0(v5, v7) & 1;
}

void AppendCommand.CatenateData.hash(into:)(uint64_t a1, Swift::UInt a2, uint64_t a3, unint64_t a4)
{
  if (HIBYTE(a4))
  {
    if (HIBYTE(a4) == 1)
    {
      sub_1004A6EB4(1uLL);
      swift_beginAccess();
      v6 = *(a2 + 24) + ((a4 >> 24) & 0xFFFF00 | BYTE6(a4));
      sub_1004A6EA4();
      return;
    }

    v7 = 2;
  }

  else
  {
    sub_1004A6EB4(0);
    v7 = a2;
  }

  sub_1004A6EB4(v7);
}

Swift::Int AppendCommand.CatenateData.hashValue.getter(Swift::UInt a1, uint64_t a2, unint64_t a3)
{
  v5 = HIBYTE(a3);
  sub_1004A6E94();
  if (!v5)
  {
    sub_1004A6EB4(0);
    v7 = a1;
LABEL_6:
    sub_1004A6EB4(v7);
    return sub_1004A6F14();
  }

  if (v5 != 1)
  {
    v7 = 2;
    goto LABEL_6;
  }

  sub_1004A6EB4(1uLL);
  swift_beginAccess();
  v6 = *(a1 + 24) + ((a3 >> 24) & 0xFFFF00 | BYTE6(a3));
  sub_1004A6EA4();
  return sub_1004A6F14();
}

Swift::Int sub_1003DCE2C()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_1004A6E94();
  AppendCommand.CatenateData.hash(into:)(v5, v1, v2, v3);
  return sub_1004A6F14();
}

BOOL sub_1003DCE84(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *(a2 + 23);
  if (*(a1 + 23))
  {
    v6 = *(a2 + 8);
    v7 = *(a2 + 16) | ((*(a2 + 20) | (*(a2 + 22) << 16)) << 32);
    if (*(a1 + 23) == 1)
    {
      return v5 == 1 && sub_10020FBD0(v3, *(a1 + 8), *(a1 + 16) | ((*(a1 + 20) | (*(a1 + 22) << 16)) << 32), v4, v6, v7 & 0xFFFFFFFFFFFFFFLL);
    }

    else
    {
      return v5 == 2 && (v6 | v4) == 0 && (v7 & 0xFFFFFFFFFFFFFFLL) == 0;
    }
  }

  else
  {
    return !*(a2 + 23) && v3 == v4;
  }
}

uint64_t CommandStreamPart.tag.getter()
{
  v1 = v0;
  v2 = type metadata accessor for TaggedCommand();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = (v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = type metadata accessor for CommandStreamPart();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v9 = (v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1003DED70(v1, v9);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v11 = EnumCaseMultiPayload;
  if (EnumCaseMultiPayload > 1)
  {
    result = 0;
    if (v11 != 2)
    {
      return result;
    }

    sub_1003DEE04(v9, type metadata accessor for CommandStreamPart);
  }

  else
  {
    if (!EnumCaseMultiPayload)
    {
      sub_1003DF6BC(v9, v5, type metadata accessor for TaggedCommand);
      v13 = *v5;
      v12 = v5[1];

      sub_1003DEE04(v5, type metadata accessor for TaggedCommand);
      return v13;
    }

    *&v19[9] = *(v9 + 41);
    v15 = v9[1];
    v18[0] = *v9;
    v18[1] = v15;
    *v19 = v9[2];
    v16 = v19[24] >> 5;
    if (v16 <= 2)
    {
      if (!v16)
      {
        v17 = *&v18[0];

        sub_1003DEDD4(v18);
        return v17;
      }
    }

    else if (v19[24] >> 5 > 4u && v16 != 5)
    {
      return 0;
    }

    sub_1003DEDD4(v18);
  }

  return 0;
}

void CommandStreamPart.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for TaggedCommand();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v7 = (v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for CommandStreamPart();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1003DED70(v2, v11);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v16 = *v11;
      v17 = *(v11 + 2);
      v18 = *(v11 + 3);
      v19 = *(v11 + 10);
      v20 = v11[22];
      sub_1004A6EB4(3uLL);
      swift_beginAccess();
      v21 = *(v16 + 24) + (v20 | (v19 << 8));
      sub_1004A6EA4();
    }

    else
    {
      sub_1004A6EB4(0);
    }
  }

  else if (EnumCaseMultiPayload)
  {
    v22 = *(v11 + 1);
    v23[0] = *v11;
    v23[1] = v22;
    v24[0] = *(v11 + 2);
    *(v24 + 9) = *(v11 + 41);
    sub_1004A6EB4(2uLL);
    AppendCommand.hash(into:)(a1);
    sub_1003DEDD4(v23);
  }

  else
  {
    sub_1003DF6BC(v11, v7, type metadata accessor for TaggedCommand);
    sub_1004A6EB4(1uLL);
    v13 = *v7;
    v14 = v7[1];
    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
    v15 = v7 + *(v4 + 20);
    Command.hash(into:)(a1);
    sub_1003DEE04(v7, type metadata accessor for TaggedCommand);
  }
}

Swift::Int CommandStreamPart.hashValue.getter()
{
  sub_1004A6E94();
  CommandStreamPart.hash(into:)(v1);
  return sub_1004A6F14();
}

Swift::Int sub_1003DD340()
{
  sub_1004A6E94();
  CommandStreamPart.hash(into:)(v1);
  return sub_1004A6F14();
}

uint64_t CommandEncodeBuffer.writeCommandStream(_:)(uint64_t a1)
{
  v3 = type metadata accessor for TaggedCommand();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v41[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = type metadata accessor for CommandStreamPart();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7);
  v10 = &v41[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1003DED70(a1, v10);
  result = swift_getEnumCaseMultiPayload();
  if (result > 1)
  {
    if (result == 2)
    {
      v14 = *(v10 + 2);
      v13 = *(v10 + 3);
      if (v13 >= v14)
      {
        v15 = *(v10 + 4);
        v16 = *(v10 + 10);
        v17 = v10[22];
        if (v15 - (v17 | (v16 << 8)) >= v13)
        {
          v18 = *v10;
          *&v43 = v18;
          *(&v43 + 1) = __PAIR64__(v13, v14);
          LODWORD(v44) = v15;
          WORD2(v44) = v16;
          BYTE6(v44) = v17;
          *(&v44 + 1) = v14;
          *&v45[0] = v13;
          v19 = v13 - v14;
          result = swift_beginAccess();
          if (v19 >= -4)
          {
            v20 = 4 * ((v19 + 2) / 3);
            v21 = *(v18 + 24);
            v22 = (v17 | (v16 << 8)) + v14;

            if (v19 < 1)
            {
              v23 = _swiftEmptyArrayStorage;
            }

            else
            {
              v23 = sub_1004A5C64();
              v23[2] = v20;
            }

            v42 = 0;
            result = sub_1003C511C(&unk_1005BB228, 256, &unk_1005BB348, 256, v21 + v22, v19, (v23 + 4), 4 * ((v19 + 2) / 3), 0, &v42);
            if (v20 >= v42)
            {
              v23[2] = v42;
              sub_1003A52D0(&v43);
              sub_1003E0AC4(v23);
              v31 = v1;
              v33 = v32;

              v34 = *(v1 + 20);
              v35 = sub_1002F178C(2573, 0xE200000000000000, (v1 + 8), *(v1 + 20));
              if (v36)
              {
                v37._countAndFlagsBits = 2573;
                v37._object = 0xE200000000000000;
                v35 = ByteBuffer._setStringSlowpath(_:at:)(v37, v34);
                v31 = v1;
              }

              v38 = v35;

              v39 = *(v31 + 20);
              v29 = __CFADD__(v39, v38);
              v40 = v39 + v38;
              if (!v29)
              {
                *(v31 + 20) = v40;
                result = v33 + v38;
                if (!__OFADD__(v33, v38))
                {
                  return result;
                }

LABEL_29:
                __break(1u);
                return result;
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

LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      __break(1u);
    }

    else
    {
      v25 = *(v1 + 20);
      result = sub_1002F178C(0xA0D454E4F44, 0xE600000000000000, (v1 + 8), *(v1 + 20));
      if (v26)
      {
        v27._countAndFlagsBits = 0xA0D454E4F44;
        v27._object = 0xE600000000000000;
        result = ByteBuffer._setStringSlowpath(_:at:)(v27, v25);
      }

      v28 = *(v1 + 20);
      v29 = __CFADD__(v28, result);
      v30 = v28 + result;
      if (!v29)
      {
        *(v1 + 20) = v30;
        return result;
      }
    }

    __break(1u);
    goto LABEL_25;
  }

  if (result)
  {
    v24 = *(v10 + 1);
    v43 = *v10;
    v44 = v24;
    v45[0] = *(v10 + 2);
    *(v45 + 9) = *(v10 + 41);
    v12 = sub_1003DE144(&v43);
    sub_1003DEDD4(&v43);
  }

  else
  {
    sub_1003DF6BC(v10, v6, type metadata accessor for TaggedCommand);
    v12 = CommandEncodeBuffer.writeCommand(_:)(v6);
    sub_1003DEE04(v6, type metadata accessor for TaggedCommand);
  }

  return v12;
}

uint64_t sub_1003DD77C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v108 = a2;
  v99 = type metadata accessor for TaggedCommand();
  v5 = *(*(v99 - 8) + 64);
  __chkstk_darwin(v99);
  v100 = (&v96 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = type metadata accessor for CommandStreamPart();
  v101 = *(v7 - 8);
  v8 = *(v101 + 64);
  __chkstk_darwin(v7);
  v10 = &v96 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v104 = &v96 - v12;
  v13 = sub_10000C9C0(&qword_1005DC3F8, &qword_100501358);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v16 = &v96 - v15;
  v17 = *(a3 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v19);
  v21 = &v96 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v97 = *(AssociatedTypeWitness - 8);
  v23 = *(v97 + 64);
  v24 = __chkstk_darwin(AssociatedTypeWitness);
  v26 = &v96 - v25;
  (*(v17 + 16))(v21, v108, a3, v24);
  v27 = v10;
  v28 = v104;
  sub_1004A5AC4();
  v29 = v100;
  v30 = v101;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v107 = v26;
  v108 = AssociatedTypeWitness;
  v106 = AssociatedConformanceWitness;
  sub_1004A6414();
  v33 = *(v30 + 48);
  v32 = v30 + 48;
  v105 = v33;
  if (v33(v16, 1, v7) == 1)
  {
    return (*(v97 + 8))(v107, v108);
  }

  v102 = v10;
  v103 = v16;
  v98 = v7;
  v101 = v32;
  while (1)
  {
    sub_1003DF6BC(v16, v28, type metadata accessor for CommandStreamPart);
    sub_1003DED70(v28, v27);
    result = swift_getEnumCaseMultiPayload();
    if (result > 1)
    {
      break;
    }

    if (!result)
    {
      sub_1003DF6BC(v27, v29, type metadata accessor for TaggedCommand);
      v37 = v29[1];
      v112 = *v29;
      v113 = v37;

      v121._countAndFlagsBits = 32;
      v121._object = 0xE100000000000000;
      sub_1004A5994(v121);
      v39 = v112;
      v38 = v113;
      v40 = *(a1 + 20);
      v41 = sub_1002F178C(v112, v113, (a1 + 8), *(a1 + 20));
      if (v42)
      {
        v43._countAndFlagsBits = v39;
        v43._object = v38;
        v41 = ByteBuffer._setStringSlowpath(_:at:)(v43, v40);
      }

      v44 = v41;

      v45 = *(a1 + 20);
      v46 = __CFADD__(v45, v44);
      v47 = v45 + v44;
      v16 = v103;
      if (v46)
      {
        goto LABEL_48;
      }

      *(a1 + 20) = v47;
      sub_1003CFAA8(v29 + *(v99 + 20));
      v48 = *(a1 + 20);
      v49 = sub_1002F178C(2573, 0xE200000000000000, (a1 + 8), *(a1 + 20));
      if (v50)
      {
        v51._countAndFlagsBits = 2573;
        v51._object = 0xE200000000000000;
        v49 = ByteBuffer._setStringSlowpath(_:at:)(v51, v48);
      }

      v52 = v49;
      sub_1003DEE04(v29, type metadata accessor for TaggedCommand);
      v28 = v104;
      result = sub_1003DEE04(v104, type metadata accessor for CommandStreamPart);
      v53 = *(a1 + 20);
      v46 = __CFADD__(v53, v52);
      v54 = v53 + v52;
      if (v46)
      {
        goto LABEL_52;
      }

      goto LABEL_46;
    }

    v35 = *(v27 + 16);
    v119[0] = *v27;
    v36 = *(v27 + 32);
    v119[1] = v35;
    *v120 = v36;
    *&v120[9] = *(v27 + 41);
    sub_1003DE144(v119);
    sub_1003DEDD4(v119);
    sub_1003DEE04(v28, type metadata accessor for CommandStreamPart);
LABEL_5:
    sub_1004A6414();
    if (v105(v16, 1, v7) == 1)
    {
      return (*(v97 + 8))(v107, v108);
    }
  }

  if (result == 2)
  {
    v56 = *(v27 + 8);
    v55 = *(v27 + 12);
    if (v55 < v56)
    {
      goto LABEL_49;
    }

    v57 = *(v27 + 16);
    v58 = *(v27 + 20);
    v59 = *(v27 + 22);
    if (v57 - (v59 | (v58 << 8)) < v55)
    {
      goto LABEL_50;
    }

    v60 = *v27;
    v112 = *v27;
    v113 = __PAIR64__(v55, v56);
    v114 = v57;
    v115 = v58;
    v116 = v59;
    v117 = v56;
    v118 = v55;
    v61 = v55 - v56;
    result = swift_beginAccess();
    if (v61 < -4)
    {
      goto LABEL_53;
    }

    v62 = 4 * ((v61 + 2) / 3);
    v63 = *(v60 + 24);

    if (v61 < 1)
    {
      v64 = _swiftEmptyArrayStorage;
    }

    else
    {
      v64 = sub_1004A5C64();
      v64[2] = v62;
    }

    v110 = 0;
    result = sub_1003C511C(&unk_1005BB228, 256, &unk_1005BB348, 256, v63 + (v59 | (v58 << 8)) + v56, v61, (v64 + 4), v62, 0, &v110);
    if (v62 < v110)
    {
      goto LABEL_54;
    }

    v64[2] = v110;
    sub_1003A52D0(&v112);
    if (*a1 == 1)
    {
      v110 = 91;
      v111 = 0xE100000000000000;
      v109 = v64[2];
      v122._countAndFlagsBits = sub_1004A6CE4();
      sub_1004A5994(v122);

      v123._countAndFlagsBits = 0x5D736574796220;
      v123._object = 0xE700000000000000;
      sub_1004A5994(v123);
      v82 = v110;
      v81 = v111;
      v83 = *(a1 + 20);
      v84 = sub_1002F178C(v110, v111, (a1 + 8), *(a1 + 20));
      v27 = v102;
      if (v85)
      {
        v86._countAndFlagsBits = v82;
        v86._object = v81;
        v84 = ByteBuffer._setStringSlowpath(_:at:)(v86, v83);
      }

      v87 = v84;

      v88 = *(a1 + 20);
      v46 = __CFADD__(v88, v87);
      v89 = v88 + v87;
      v29 = v100;
      v7 = v98;
      if (v46)
      {
        goto LABEL_56;
      }

      *(a1 + 20) = v89;
    }

    else
    {
      sub_10041F128(v64);

      v89 = *(a1 + 20);
      v29 = v100;
      v7 = v98;
      v27 = v102;
    }

    v90 = v89;
    v91 = sub_1002F178C(2573, 0xE200000000000000, (a1 + 8), v89);
    if (v92)
    {
      v93._countAndFlagsBits = 2573;
      v93._object = 0xE200000000000000;
      v91 = ByteBuffer._setStringSlowpath(_:at:)(v93, v90);
    }

    v94 = v91;

    v28 = v104;
    result = sub_1003DEE04(v104, type metadata accessor for CommandStreamPart);
    v95 = *(a1 + 20);
    v46 = __CFADD__(v95, v94);
    v54 = v95 + v94;
    v16 = v103;
    if (v46)
    {
      goto LABEL_55;
    }

LABEL_46:
    *(a1 + 20) = v54;
    goto LABEL_5;
  }

  v65 = *(a1 + 20);
  v66 = v65 + 6;
  if (v65 < 0xFFFFFFFA)
  {
    v67 = *(a1 + 8);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v68 = *(a1 + 24);
      v46 = v66 >= v68;
      v69 = v66 - v68;
      if (v46)
      {
        v70 = v69;
      }

      else
      {
        v70 = 0;
      }

      v71 = variable initialization expression of Engine.isProcessingUpdates();
      ByteBuffer._copyStorageAndRebase(extraCapacity:resetIndices:)(v70, v71 & 1);
    }

    ByteBuffer._ensureAvailableCapacity(_:at:)(6u, v65);
    v72 = *(a1 + 8);
    v73 = *(a1 + 24);
    v74 = *(a1 + 28);
    v75 = *(a1 + 30);
    swift_beginAccess();
    v76 = v75 | (v74 << 8);
    LODWORD(v77) = v73 - v76;
    if (v73 - v76 >= v65)
    {
      LODWORD(v77) = v65;
    }

    if (v65)
    {
      v77 = v77;
    }

    else
    {
      v77 = 0;
    }

    v78 = *(v72 + 24) + v76 + v77;
    *(v78 + 4) = 2573;
    *v78 = 1162760004;
    v28 = v104;
    result = sub_1003DEE04(v104, type metadata accessor for CommandStreamPart);
    v79 = *(a1 + 20);
    v46 = __CFADD__(v79, 6);
    v80 = v79 + 6;
    if (v46)
    {
      goto LABEL_51;
    }

    *(a1 + 20) = v80;
    v27 = v102;
    v16 = v103;
    goto LABEL_5;
  }

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
LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);
LABEL_56:
  __break(1u);
  return result;
}

uint64_t sub_1003DE144(uint64_t a1)
{
  v3 = v1;
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  v8 = *(a1 + 24);
  v7 = *(a1 + 32);
  v9 = *(a1 + 40);
  v10 = *(a1 + 48);
  v11 = *(a1 + 56);
  v14 = *(a1 + 17);
  v12 = a1 + 17;
  v13 = v14;
  LOBYTE(v96) = v6;
  *(&v96 + 1) = v14;
  HIBYTE(v96) = *(v12 + 6);
  *(&v96 + 5) = *(v12 + 4);
  v15 = v11 >> 5;
  if (v11 >> 5 > 2)
  {
    v2 = v13 | ((*(v12 + 4) | (*(v12 + 6) << 16)) << 32);
    if (v11 >> 5 > 4)
    {
      goto LABEL_19;
    }

    if (v15 != 3)
    {
      v10 = v96;
      if (*(v1 + 56))
      {
        v43 = *(v1 + 20);
        result = sub_1002F178C(32, 0xE100000000000000, (v1 + 8), *(v1 + 20));
        if (v44)
        {
          v45._countAndFlagsBits = 32;
          v45._object = 0xE100000000000000;
          result = ByteBuffer._setStringSlowpath(_:at:)(v45, v43);
        }

        v46 = result;
        v47 = *(v1 + 20);
        v20 = __CFADD__(v47, result);
        v48 = v47 + result;
        if (v20)
        {
          goto LABEL_102;
        }

        *(v1 + 20) = v48;
        goto LABEL_59;
      }

LABEL_58:
      v46 = 0;
      v48 = *(v1 + 20);
LABEL_59:
      v58 = v48;
      result = sub_1002F178C(541872725, 0xE400000000000000, (v1 + 8), v48);
      if (v59)
      {
        v60._countAndFlagsBits = 541872725;
        v60._object = 0xE400000000000000;
        result = ByteBuffer._setStringSlowpath(_:at:)(v60, v58);
      }

      v61 = *(v1 + 20);
      v20 = __CFADD__(v61, result);
      v62 = v61 + result;
      if (v20)
      {
        goto LABEL_99;
      }

      *(v1 + 20) = v62;
      v63 = v46 + result;
      if (__OFADD__(v46, result))
      {
LABEL_101:
        __break(1u);
LABEL_102:
        __break(1u);
LABEL_103:
        __break(1u);
        goto LABEL_104;
      }

      v64 = sub_1003B1E70(v4, v5, v10 & 0xFF000000FFFFFFFFLL | (((v2 >> 24) & 0xFFFFFF) << 32));
      v21 = __OFADD__(v63, v64);
      result = v63 + v64;
      if (!v21)
      {
        goto LABEL_72;
      }

      __break(1u);
      goto LABEL_66;
    }

    v10 = 0xEB00000000282045;
    v11 = 1413563168;
    v97 = v4;
    v98 = v5;
    v99[0] = v6;
    v100 = v8;
    v101 = v7;
    v102 = v9;
    v4 = sub_100396C48(&v97);
    v5 = *(v1 + 20);
    result = sub_1002F178C(0x54414E4554414320, 0xEB00000000282045, (v1 + 8), *(v1 + 20));
    if (v17)
    {
      v18._countAndFlagsBits = 0x54414E4554414320;
      v18._object = 0xEB00000000282045;
      result = ByteBuffer._setStringSlowpath(_:at:)(v18, v5);
    }

    v19 = *(v1 + 20);
    v20 = __CFADD__(v19, result);
    v7 = (v19 + result);
    if (v20)
    {
      goto LABEL_98;
    }

    *(v1 + 20) = v7;
    v21 = __OFADD__(v4, result);
    result += v4;
    if (!v21)
    {
      return result;
    }

    __break(1u);
  }

  if (!v15)
  {
    goto LABEL_28;
  }

  if (v15 != 1)
  {
    goto LABEL_34;
  }

  v97 = v4;
  v98 = v5;
  v99[0] = v6 & 1;
  v100 = v8;
  v101 = v7;
  v102 = v9;
  v4 = sub_100396C48(&v97);
  v5 = *(v1 + 20);
  result = sub_1002F178C(32, 0xE100000000000000, (v1 + 8), *(v1 + 20));
  if (v22)
  {
    v23._countAndFlagsBits = 32;
    v23._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v23, v5);
  }

  v24 = *(v1 + 20);
  v20 = __CFADD__(v24, result);
  v25 = v24 + result;
  if (v20)
  {
    goto LABEL_97;
  }

  *(v1 + 20) = v25;
  v26 = v4 + result;
  if (__OFADD__(v4, result))
  {
LABEL_100:
    __break(1u);
    goto LABEL_101;
  }

  v27 = sub_10039633C(v10, v11 & 1);
  v21 = __OFADD__(v26, v27);
  result = v26 + v27;
  if (!v21)
  {
    return result;
  }

  __break(1u);
LABEL_19:
  if (v15 != 5)
  {
    v49 = v8 | v5;
    v50 = v9 | v10 | v96;
    if (v11 == 192 && !(v49 | v4 | v7 | v50))
    {
      if (*v1 == 1)
      {
        v51 = *(v1 + 20);
        result = sub_1002F178C(8751330, 0xA300000000000000, (v1 + 8), *(v1 + 20));
        if (v52)
        {
          v53._countAndFlagsBits = 8751330;
          v53._object = 0xA300000000000000;
          result = ByteBuffer._setStringSlowpath(_:at:)(v53, v51);
        }

        v54 = *(v1 + 20);
        v20 = __CFADD__(v54, result);
        v34 = v54 + result;
        if (!v20)
        {
          goto LABEL_76;
        }

        __break(1u);
      }

      return 0;
    }

    if (v11 != 192 || v4 != 1 || v49 | v7 | v50)
    {
      v71 = *(v1 + 20);
      result = sub_1002F178C(2573, 0xE200000000000000, (v1 + 8), *(v1 + 20));
      if (v72)
      {
        v73._countAndFlagsBits = 2573;
        v73._object = 0xE200000000000000;
        result = ByteBuffer._setStringSlowpath(_:at:)(v73, v71);
      }

      v74 = *(v1 + 20);
      v20 = __CFADD__(v74, result);
      v34 = v74 + result;
      if (!v20)
      {
        goto LABEL_76;
      }

      goto LABEL_105;
    }

    *(v1 + 56) = 0;
    v4 = *(v1 + 20);
    result = sub_1002F178C(41, 0xE100000000000000, (v1 + 8), *(v1 + 20));
    if (v55)
    {
      v56._countAndFlagsBits = 41;
      v56._object = 0xE100000000000000;
      result = ByteBuffer._setStringSlowpath(_:at:)(v56, v4);
    }

    v57 = *(v1 + 20);
    v20 = __CFADD__(v57, result);
    v34 = v57 + result;
    if (!v20)
    {
      goto LABEL_76;
    }

    __break(1u);
    goto LABEL_58;
  }

  if (BYTE6(v2))
  {
    if (BYTE6(v2) == 1)
    {
      v97 = v4;
      v98 = v5;
      v99[0] = v6;
      *&v99[1] = v2;
      *&v99[5] = WORD2(v2);
      if (*v1 != 1)
      {
        return ByteBuffer.writeBuffer(_:)(&v97);
      }

      v103._countAndFlagsBits = sub_1004A6CE4();
      sub_1004A5994(v103);

      v104._countAndFlagsBits = 0x5D736574796220;
      v104._object = 0xE700000000000000;
      sub_1004A5994(v104);
      v5 = 91;
      v4 = 0xE100000000000000;
      v28 = *(v1 + 20);
      v29 = sub_1002F178C(91, 0xE100000000000000, (v1 + 8), *(v1 + 20));
      if (v30)
      {
        v31._countAndFlagsBits = 91;
        v31._object = 0xE100000000000000;
        v29 = ByteBuffer._setStringSlowpath(_:at:)(v31, v28);
      }

      v32 = v29;

      v33 = *(v3 + 20);
      result = v32;
      v20 = __CFADD__(v33, v32);
      v34 = v33 + v32;
      if (!v20)
      {
LABEL_76:
        *(v3 + 20) = v34;
        return result;
      }

      __break(1u);
LABEL_28:
      v97 = v4;
      v98 = v5;

      v105._countAndFlagsBits = 0x20444E4550504120;
      v105._object = 0xE800000000000000;
      sub_1004A5994(v105);
      v5 = v97;
      v4 = v98;
      v35 = *(v3 + 20);
      v36 = sub_1002F178C(v97, v98, (v3 + 8), *(v3 + 20));
      if (v37)
      {
        v38._countAndFlagsBits = v5;
        v38._object = v4;
        v36 = ByteBuffer._setStringSlowpath(_:at:)(v38, v35);
      }

      v39 = v36;

      v40 = *(v3 + 20);
      v20 = __CFADD__(v40, v39);
      v41 = v40 + v39;
      if (!v20)
      {
        *(v3 + 20) = v41;
        v42 = sub_100441F24(v96);
        v21 = __OFADD__(v39, v42);
        result = v39 + v42;
        if (!v21)
        {
          return result;
        }

        __break(1u);
LABEL_34:
        *v99 = v96;
        *&v99[3] = *(&v96 + 3);
        v97 = v4;
        v98 = v5;
        if ((*v3 & 1) == 0)
        {
          return ByteBuffer.writeBuffer(_:)(&v97);
        }

        return 0;
      }

      goto LABEL_96;
    }

    result = 0;
LABEL_72:
    *(v1 + 56) = 1;
    return result;
  }

LABEL_66:
  if (*(v1 + 56))
  {
    v65 = *(v1 + 20);
    result = sub_1002F178C(32, 0xE100000000000000, (v1 + 8), *(v1 + 20));
    if (v66)
    {
      v67._countAndFlagsBits = 32;
      v67._object = 0xE100000000000000;
      result = ByteBuffer._setStringSlowpath(_:at:)(v67, v65);
    }

    v68 = result;
    v69 = *(v1 + 20);
    v20 = __CFADD__(v69, result);
    v70 = v69 + result;
    if (v20)
    {
      goto LABEL_106;
    }

    *(v1 + 20) = v70;
  }

  else
  {
    v68 = 0;
    v70 = *(v1 + 20);
  }

  v75 = v70;
  result = sub_1002F178C(0x2054584554, 0xE500000000000000, (v1 + 8), v70);
  if (v76)
  {
    v77._countAndFlagsBits = 0x2054584554;
    v77._object = 0xE500000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v77, v75);
  }

  v78 = *(v1 + 20);
  v79 = (v78 + result);
  if (__CFADD__(v78, result))
  {
    goto LABEL_103;
  }

  *(v1 + 20) = v79;
  v80 = v68 + result;
  if (__OFADD__(v68, result))
  {
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

  if (((*(v1 + 1) | (*(v1 + 5) << 32)) & 0x8000000000) != 0)
  {
LABEL_110:
    __break(1u);
    return result;
  }

  *(v1 + 5);
  if ((*(v1 + 1) & 0x10000) == 0)
  {
    v97 = 123;
    v98 = 0xE100000000000000;
    v106._countAndFlagsBits = sub_1004A6CE4();
    sub_1004A5994(v106);

    v107._countAndFlagsBits = 658813;
    v107._object = 0xE300000000000000;
    sub_1004A5994(v107);
    v82 = v97;
    v81 = v98;
    v83 = sub_1002F178C(v97, v98, (v1 + 8), v79);
    if (v84)
    {
      v85._countAndFlagsBits = v82;
      v85._object = v81;
      v83 = ByteBuffer._setStringSlowpath(_:at:)(v85, v79);
    }

    v86 = v83;

    v87 = *(v3 + 20);
    result = (v87 + v86);
    if (!__CFADD__(v87, v86))
    {
      *(v3 + 20) = result;
      if (!__OFADD__(v80, v86))
      {
        sub_1003E46E4(result);
        return v80 + v86;
      }

      goto LABEL_109;
    }

    goto LABEL_107;
  }

  v97 = 123;
  v98 = 0xE100000000000000;
  v108._countAndFlagsBits = sub_1004A6CE4();
  sub_1004A5994(v108);

  v109._countAndFlagsBits = 168656171;
  v109._object = 0xE400000000000000;
  sub_1004A5994(v109);
  v89 = v97;
  v88 = v98;
  v90 = sub_1002F178C(v97, v98, (v1 + 8), v79);
  if (v91)
  {
    v92._countAndFlagsBits = v89;
    v92._object = v88;
    v90 = ByteBuffer._setStringSlowpath(_:at:)(v92, v79);
  }

  v93 = v90;

  v94 = *(v3 + 20);
  v20 = __CFADD__(v94, v93);
  v95 = v94 + v93;
  if (v20)
  {
    goto LABEL_108;
  }

  *(v3 + 20) = v95;
  result = v80 + v93;
  if (__OFADD__(v80, v93))
  {
    __break(1u);
LABEL_96:
    __break(1u);
LABEL_97:
    __break(1u);
LABEL_98:
    __break(1u);
LABEL_99:
    __break(1u);
    goto LABEL_100;
  }

  return result;
}

uint64_t _s12NIOIMAPCore213AppendCommandO21__derived_enum_equalsySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v7 = *(a1 + 24);
  v6 = *(a1 + 32);
  v8 = *(a1 + 40);
  v9 = *(a1 + 48);
  v10 = *(a1 + 56);
  v11 = *(a1 + 21) | (*(a1 + 23) << 16);
  HIBYTE(v43) = *(a1 + 23);
  *(&v43 + 1) = *(a1 + 17);
  v12 = *(&v43 + 1) | (v11 << 32);
  LOBYTE(v43) = v5;
  *(&v43 + 5) = v11;
  v13 = v10 >> 5;
  if (v10 >> 5 > 2)
  {
    if (v10 >> 5 > 4)
    {
      if (v13 == 5)
      {
        if ((*(a2 + 56) & 0xE0) == 0xA0)
        {
          v22 = *a2;
          v23 = *(a2 + 8);
          v24 = *(a2 + 16);
          v44[0] = v5;
          *&v44[1] = *(&v43 + 1);
          if (BYTE6(v12))
          {
            if (BYTE6(v12) == 1)
            {
              if (HIBYTE(v24) != 1 || !sub_10020FBD0(v3, v4, *v44 | (((v12 >> 24) & 0xFFFFFF) << 32), v22, v23, v24 & 0xFFFFFFFFFFFFFFLL))
              {
                return 0;
              }
            }

            else if (HIBYTE(v24) != 2 || v22 | v23 | v24 & 0xFFFFFFFFFFFFFFLL)
            {
              return 0;
            }
          }

          else if (HIBYTE(v24) || v3 != v22)
          {
            return 0;
          }

          return 1;
        }
      }

      else
      {
        v32 = v7 | v4;
        v33 = v8 | v9 | v43;
        if (v10 != 192 || v32 | v3 | v6 | v33)
        {
          if (v10 == 192 && v3 == 1 && !(v32 | v6 | v33))
          {
            v38 = *(a2 + 56);
            if ((v38 & 0xE0) != 0xC0 || v38 != 192 || *a2 != 1)
            {
              return 0;
            }
          }

          else
          {
            v39 = *(a2 + 56);
            if ((v39 & 0xE0) != 0xC0 || v39 != 192 || *a2 != 2)
            {
              return 0;
            }
          }

          v37 = *(a2 + 8);
          v40 = vorrq_s8(*(a2 + 24), *(a2 + 40));
          v36 = *&vorr_s8(*v40.i8, *&vextq_s8(v40, v40, 8uLL)) | *(a2 + 16);
        }

        else
        {
          v34 = *(a2 + 56);
          if ((v34 & 0xE0) != 0xC0 || v34 != 192)
          {
            return 0;
          }

          v35 = vorrq_s8(*(a2 + 24), *(a2 + 40));
          v36 = *&vorr_s8(*v35.i8, *&vextq_s8(v35, v35, 8uLL)) | *(a2 + 16);
          v37 = *(a2 + 8) | *a2;
        }

        if (!(v36 | v37))
        {
          return 1;
        }
      }
    }

    else
    {
      if (v13 == 3)
      {
        if ((*(a2 + 56) & 0xE0) != 0x60)
        {
          return 0;
        }

        v14 = *(a2 + 16);
        v15 = *(a2 + 8);
        v17 = *(a2 + 32);
        v16 = *(a2 + 40);
        if ((sub_10010321C(v3, *a2) & 1) == 0)
        {
          return 0;
        }

        if (v5)
        {
          if ((v14 & 1) == 0)
          {
            return 0;
          }
        }

        else if ((v14 & 1) != 0 || v4 != v15)
        {
          return 0;
        }

        return (sub_10020FB40(v6, v17) & 1) != 0 && (sub_1003A0B30(v8, v16) & 1) != 0;
      }

      if ((*(a2 + 56) & 0xE0) == 0x80)
      {
        goto LABEL_33;
      }
    }

    return 0;
  }

  if (v13)
  {
    if (v13 != 1)
    {
      if ((*(a2 + 56) & 0xE0) != 0x40)
      {
        return 0;
      }

LABEL_33:
      v29 = *(a2 + 8);
      v30 = *a2;
      v31 = *(a2 + 16) & 0xFFFFFFFFFFFFFFLL;

      return sub_10020FBD0(v3, v4, v43 | (((v12 >> 24) & 0xFFFFFF) << 32), v30, v29, v31);
    }

    v18 = *(a2 + 56);
    if ((v18 & 0xE0) != 0x20)
    {
      return 0;
    }

    v41 = *(a2 + 48);
    v42 = *(a2 + 40);
    v19 = *(a2 + 32);
    v20 = *(a2 + 16);
    v21 = *(a2 + 8);
    if ((sub_10010321C(v3, *a2) & 1) == 0)
    {
      return 0;
    }

    if (v5)
    {
      if ((v20 & 1) == 0)
      {
        return 0;
      }
    }

    else if (v20 & 1 | (v4 != v21))
    {
      return 0;
    }

    return (sub_10020FB40(v6, v19) & 1) != 0 && (sub_1003A0B30(v8, v42) & 1) != 0 && v9 == v41 && ((v10 ^ v18) & 1) == 0;
  }

  if (*(a2 + 56) > 0x1Fu)
  {
    return 0;
  }

  v25 = *(a2 + 16);
  v26 = *(a2 + 24);
  if (v3 == *a2 && v4 == *(a2 + 8))
  {
    return v7 == v26 && (sub_1000FFC98(v43, v25) & 1) != 0;
  }

  v27 = sub_1004A6D34();
  result = 0;
  if (v27)
  {
    return v7 == v26 && (sub_1000FFC98(v43, v25) & 1) != 0;
  }

  return result;
}

uint64_t type metadata accessor for CommandStreamPart()
{
  result = qword_1005DC3C0;
  if (!qword_1005DC3C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1003DED70(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CommandStreamPart();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1003DEE04(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t _s12NIOIMAPCore217CommandStreamPartO21__derived_enum_equalsySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TaggedCommand();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v7 = (v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for CommandStreamPart();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = (v31 - v13);
  __chkstk_darwin(v15);
  v17 = (v31 - v16);
  v18 = sub_10000C9C0(&qword_1005DC400, &unk_100501360);
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8);
  v21 = v31 - v20;
  v23 = v31 + *(v22 + 56) - v20;
  sub_1003DED70(a1, v31 - v20);
  sub_1003DED70(a2, v23);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      if (swift_getEnumCaseMultiPayload() != 3)
      {
        goto LABEL_15;
      }

      goto LABEL_24;
    }

    sub_1003DED70(v21, v11);
    v25 = *v11;
    if (swift_getEnumCaseMultiPayload() != 2)
    {

      goto LABEL_15;
    }

    appended = sub_10020FBD0(v25, *(v11 + 1), *(v11 + 4) | (v11[22] << 48) | (*(v11 + 10) << 32), *v23, *(v23 + 1), *(v23 + 4) | (*(v23 + 10) << 32) | (v23[22] << 48));
  }

  else
  {
    if (!EnumCaseMultiPayload)
    {
      sub_1003DED70(v21, v17);
      if (swift_getEnumCaseMultiPayload())
      {
        sub_1003DEE04(v17, type metadata accessor for TaggedCommand);
LABEL_15:
        sub_1003DF724(v21);
LABEL_16:
        appended = 0;
        return appended & 1;
      }

      sub_1003DF6BC(v23, v7, type metadata accessor for TaggedCommand);
      v29 = *v17 == *v7 && v17[1] == v7[1];
      if (!v29 && (sub_1004A6D34() & 1) == 0 || (_s12NIOIMAPCore27CommandO21__derived_enum_equalsySbAC_ACtFZ_0(v17 + *(v4 + 20), v7 + *(v4 + 20)) & 1) == 0)
      {
        sub_1003DEE04(v7, type metadata accessor for TaggedCommand);
        sub_1003DEE04(v17, type metadata accessor for TaggedCommand);
        sub_1003DEE04(v21, type metadata accessor for CommandStreamPart);
        goto LABEL_16;
      }

      sub_1003DEE04(v7, type metadata accessor for TaggedCommand);
      sub_1003DEE04(v17, type metadata accessor for TaggedCommand);
LABEL_24:
      sub_1003DEE04(v21, type metadata accessor for CommandStreamPart);
      appended = 1;
      return appended & 1;
    }

    sub_1003DED70(v21, v14);
    v27 = v14[1];
    v31[0] = *v14;
    v31[1] = v27;
    v32[0] = v14[2];
    *(v32 + 9) = *(v14 + 41);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_1003DEDD4(v31);
      goto LABEL_15;
    }

    v28 = *(v23 + 1);
    v33[0] = *v23;
    v33[1] = v28;
    v34[0] = *(v23 + 2);
    *(v34 + 9) = *(v23 + 41);
    appended = _s12NIOIMAPCore213AppendCommandO21__derived_enum_equalsySbAC_ACtFZ_0(v31, v33);
    sub_1003DEDD4(v33);
    sub_1003DEDD4(v31);
  }

  sub_1003DEE04(v21, type metadata accessor for CommandStreamPart);
  return appended & 1;
}

unint64_t sub_1003DF2C0()
{
  result = qword_1005DC338;
  if (!qword_1005DC338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DC338);
  }

  return result;
}

unint64_t sub_1003DF318()
{
  result = qword_1005DC340;
  if (!qword_1005DC340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DC340);
  }

  return result;
}

unint64_t sub_1003DF370()
{
  result = qword_1005DC348;
  if (!qword_1005DC348)
  {
    type metadata accessor for CommandStreamPart();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DC348);
  }

  return result;
}

uint64_t sub_1003DF3C8(uint64_t a1)
{
  if ((*(a1 + 23) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 23) & 3;
  }
}

uint64_t sub_1003DF3E4(uint64_t a1)
{
  v1 = *(a1 + 56);
  if (v1 <= 0xBF)
  {
    return v1 >> 5;
  }

  else
  {
    return (*a1 + 6);
  }
}

uint64_t sub_1003DF400(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x1FFFF9 && *(a1 + 57))
  {
    return (*a1 + 2097146);
  }

  if ((((*(a1 + 56) >> 5) | (8 * ((*(a1 + 32) >> 57) & 0x78 | *(a1 + 32) & 7 | (*(a1 + 40) >> 50) & 0x3C00 | ((*(a1 + 40) & 7) << 7) & 0x3FFF | (((*(a1 + 56) >> 1) & 0xFu) << 14)))) ^ 0x1FFFFF) >= 0x1FFFF9)
  {
    v3 = -1;
  }

  else
  {
    v3 = ((*(a1 + 56) >> 5) | (8 * ((*(a1 + 32) >> 57) & 0x78 | *(a1 + 32) & 7 | (*(a1 + 40) >> 50) & 0x3C00 | ((*(a1 + 40) & 7) << 7) & 0x3FFF | (((*(a1 + 56) >> 1) & 0xF) << 14)))) ^ 0x1FFFFF;
  }

  return (v3 + 1);
}

uint64_t sub_1003DF480(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x1FFFFA)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 - 2097146;
    if (a3 > 0x1FFFF9)
    {
      *(result + 57) = 1;
    }
  }

  else
  {
    if (a3 > 0x1FFFF9)
    {
      *(result + 57) = 0;
    }

    if (a2)
    {
      v3 = ((-a2 >> 3) & 0x3FFFF) - (a2 << 18);
      *result = 0u;
      *(result + 16) = 0u;
      *(result + 32) = (v3 | (v3 << 57)) & 0xF000000000000007;
      *(result + 40) = ((v3 >> 7) | (v3 << 50)) & 0xF000000000000007;
      *(result + 48) = 0;
      *(result + 56) = (v3 >> 13) & 0xFE;
    }
  }

  return result;
}

int8x16_t sub_1003DF528(uint64_t a1, unsigned int a2)
{
  if (a2 < 6)
  {
    v3 = *(a1 + 56) & 1 | (32 * a2);
    result = vandq_s8(*(a1 + 32), vdupq_n_s64(0xFFFFFFFFFFFFFF8uLL));
    *(a1 + 32) = result;
    *(a1 + 56) = v3;
  }

  else
  {
    *a1 = a2 - 6;
    result.i64[0] = 0;
    *(a1 + 8) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 56) = -64;
  }

  return result;
}

uint64_t sub_1003DF588(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 24))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 23);
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

uint64_t sub_1003DF5D0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 23) = -a2;
    }
  }

  return result;
}

uint64_t sub_1003DF614(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    *(result + 22) = 0;
    *(result + 20) = 0;
    LOBYTE(a2) = 2;
    *(result + 16) = 0;
  }

  *(result + 23) = a2;
  return result;
}

uint64_t sub_1003DF648()
{
  result = type metadata accessor for TaggedCommand();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1003DF6BC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1003DF724(uint64_t a1)
{
  v2 = sub_10000C9C0(&qword_1005DC400, &unk_100501360);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t ContinuationRequest.hash(into:)(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, char a5)
{
  if (a5)
  {
    sub_1004A6EB4(1uLL);
    swift_beginAccess();
    v8 = *(a2 + 24) + ((a4 >> 24) & 0xFFFF00 | BYTE6(a4));
    return sub_1004A6EA4();
  }

  else
  {
    sub_1004A6EB4(0);
    if ((~a2 & 0xF000000000000007) != 0)
    {
      sub_1004A6EC4(1u);
      ResponseTextCode.hash(into:)(a1, a2);
    }

    else
    {
      sub_1004A6EC4(0);
    }

    return _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  }
}

Swift::Int ContinuationRequest.hashValue.getter(unint64_t a1, uint64_t a2, unint64_t a3, char a4)
{
  sub_1004A6E94();
  ContinuationRequest.hash(into:)(v9, a1, a2, a3, a4 & 1);
  return sub_1004A6F14();
}

Swift::Int sub_1003DF8E4()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  sub_1004A6E94();
  ContinuationRequest.hash(into:)(v6, v1, v2, v3, v4);
  return sub_1004A6F14();
}

Swift::Int sub_1003DF958()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  sub_1004A6E94();
  ContinuationRequest.hash(into:)(v6, v1, v2, v3, v4);
  return sub_1004A6F14();
}

BOOL sub_1003DF9DC(uint64_t a1, unint64_t a2, uint64_t a3, char a4, unint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  if ((a4 & 1) == 0)
  {
    if ((a8 & 1) == 0)
    {
      v10 = a5 & 0xF000000000000007;
      if ((~a1 & 0xF000000000000007) != 0)
      {
        if (v10 == 0xF000000000000007)
        {
          return 0;
        }

        v11 = a1;
        v12 = a6;
        v13 = a7;
        v14 = a2;
        v15 = a3;
        sub_1000110C4(a5);
        LOBYTE(v11) = _s12NIOIMAPCore216ResponseTextCodeO21__derived_enum_equalsySbAC_ACtFZ_0(v11, a5);
        sub_10001114C(a5);
        a3 = v15;
        a2 = v14;
        a7 = v13;
        a6 = v12;
        if ((v11 & 1) == 0)
        {
          return 0;
        }
      }

      else if (v10 != 0xF000000000000007)
      {
        return 0;
      }

      if (a2 == a6 && a3 == a7 || (sub_1004A6D34() & 1) != 0)
      {
        return 1;
      }
    }

    return 0;
  }

  if ((a8 & 1) == 0)
  {
    return 0;
  }

  v8 = a3 & 0xFFFFFFFFFFFFFFLL;

  return sub_10020FBD0(a1, a2, v8, a5, a6, a7 & 0xFFFFFFFFFFFFFFLL);
}

unint64_t sub_1003DFAF8()
{
  result = qword_1005DC408;
  if (!qword_1005DC408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DC408);
  }

  return result;
}

uint64_t sub_1003DFB68(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10000C9C0(&qword_1005DBCA8, &unk_100504BF0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = (v46 - v6);
  Parameter = type metadata accessor for CreateParameter();
  v9 = *(*(Parameter - 8) + 64);
  __chkstk_darwin(Parameter);
  v11 = (v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1003E0540(a1, v11);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_1003E05A4(v11, v7);
    v24 = sub_10049EB14(v7);
    sub_100025F40(v7, &qword_1005DBCA8, &unk_100504BF0);
    return v24;
  }

  v12 = *v11;
  v13 = *(v2 + 20);
  result = sub_1002F178C(541414229, 0xE400000000000000, (v2 + 8), *(v2 + 20));
  if (v15)
  {
    v16._countAndFlagsBits = 541414229;
    v16._object = 0xE400000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v16, v13);
  }

  v17 = result;
  v18 = *(v2 + 20);
  v19 = (v18 + result);
  if (__CFADD__(v18, result))
  {
    goto LABEL_30;
  }

  *(v2 + 20) = v19;
  v46[0] = v12;
  if (v12[2])
  {
    result = sub_1002F178C(0, 0xE000000000000000, (v2 + 8), v19);
    if (v20)
    {
      v21._countAndFlagsBits = 0;
      v21._object = 0xE000000000000000;
      result = ByteBuffer._setStringSlowpath(_:at:)(v21, v19);
    }

    v22 = result;
    v23 = *(v2 + 20);
    LODWORD(v19) = v23 + result;
    if (__CFADD__(v23, result))
    {
      goto LABEL_37;
    }

    *(v2 + 20) = v19;
  }

  else
  {
    v22 = 0;
  }

  result = sub_1002F178C(40, 0xE100000000000000, (v2 + 8), v19);
  if (v25)
  {
    v26._countAndFlagsBits = 40;
    v26._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v26, v19);
  }

  v27 = *(v2 + 20);
  v28 = __CFADD__(v27, result);
  v29 = v27 + result;
  if (v28)
  {
    goto LABEL_31;
  }

  *(v2 + 20) = v29;
  v30 = v22 + result;
  if (__OFADD__(v22, result))
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  __chkstk_darwin(result);
  v46[-6] = sub_1003C40B8;
  v46[-5] = 0;
  v46[-4] = v2;
  v46[-3] = v46;
  v46[-2] = 32;
  v46[-1] = 0xE100000000000000;
  result = sub_1004594A4(0, sub_1003DACD4, &v46[-8], v12);
  v31 = v30 + result;
  if (__OFADD__(v30, result))
  {
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v32 = *(v2 + 20);
  result = sub_1002F178C(41, 0xE100000000000000, (v2 + 8), *(v2 + 20));
  if (v33)
  {
    v34._countAndFlagsBits = 41;
    v34._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v34, v32);
  }

  v35 = *(v2 + 20);
  v36 = (v35 + result);
  if (__CFADD__(v35, result))
  {
    goto LABEL_34;
  }

  *(v2 + 20) = v36;
  v37 = __OFADD__(v31, result);
  v38 = v31 + result;
  if (v37)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  if (!v12[2])
  {

    v45 = v38;
    goto LABEL_26;
  }

  v39 = sub_1002F178C(0, 0xE000000000000000, (v2 + 8), v36);
  if (v40)
  {
    v41._countAndFlagsBits = 0;
    v41._object = 0xE000000000000000;
    v39 = ByteBuffer._setStringSlowpath(_:at:)(v41, v36);
  }

  v42 = v39;

  v43 = *(v2 + 20);
  v28 = __CFADD__(v43, v42);
  v44 = v43 + v42;
  if (v28)
  {
    goto LABEL_38;
  }

  *(v2 + 20) = v44;
  v45 = v38 + v42;
  if (__OFADD__(v38, v42))
  {
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

LABEL_26:
  result = v17 + v45;
  if (__OFADD__(v17, v45))
  {
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
  }

  return result;
}

uint64_t CreateParameter.hash(into:)()
{
  v1 = type metadata accessor for ParameterValue();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10000C9C0(&qword_1005D7F50, &unk_100502FF0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v26 - v8;
  v10 = sub_10000C9C0(&qword_1005DBCA8, &unk_100504BF0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10);
  v13 = (&v26 - v12);
  Parameter = type metadata accessor for CreateParameter();
  v15 = *(*(Parameter - 8) + 64);
  __chkstk_darwin(Parameter);
  v17 = (&v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1003E0540(v0, v17);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v18 = *v17;
    sub_1004A6EB4(1uLL);
    sub_1004A6EB4(*(v18 + 16));
    v19 = *(v18 + 16);
    if (v19)
    {
      v20 = (v18 + 40);
      do
      {
        v21 = *(v20 - 1);
        v22 = *v20;
        sub_1004A5814();

        _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

        v20 += 2;
        --v19;
      }

      while (v19);
    }
  }

  else
  {
    sub_1003E05A4(v17, v13);
    sub_1004A6EB4(0);
    v24 = *v13;
    v25 = v13[1];
    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
    sub_1003E0614(v13 + *(v10 + 52), v9);
    if ((*(v2 + 48))(v9, 1, v1) == 1)
    {
      sub_1004A6EC4(0);
    }

    else
    {
      sub_1002FC114(v9, v5);
      sub_1004A6EC4(1u);
      ParameterValue.hash(into:)();
      sub_1003E0918(v5, type metadata accessor for ParameterValue);
    }

    return sub_100025F40(v13, &qword_1005DBCA8, &unk_100504BF0);
  }
}

Swift::Int CreateParameter.hashValue.getter()
{
  sub_1004A6E94();
  CreateParameter.hash(into:)();
  return sub_1004A6F14();
}

Swift::Int sub_1003E0228()
{
  sub_1004A6E94();
  CreateParameter.hash(into:)();
  return sub_1004A6F14();
}

uint64_t _s12NIOIMAPCore215CreateParameterO21__derived_enum_equalsySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C9C0(&qword_1005DBCA8, &unk_100504BF0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = (&v24 - v6);
  Parameter = type metadata accessor for CreateParameter();
  v9 = *(*(Parameter - 8) + 64);
  __chkstk_darwin(Parameter);
  v11 = (&v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v12);
  v14 = (&v24 - v13);
  v15 = sub_10000C9C0(&qword_1005DBCB0, &qword_1004FE5C8);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v18 = &v24 - v17;
  v20 = *(v19 + 56);
  sub_1003E0540(a1, &v24 - v17);
  sub_1003E0540(a2, &v18[v20]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1003E0540(v18, v11);
    v21 = *v11;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v22 = sub_1003A3710(v21, *&v18[v20]);

LABEL_9:
      sub_1003E0918(v18, type metadata accessor for CreateParameter);
      return v22 & 1;
    }
  }

  else
  {
    sub_1003E0540(v18, v14);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_1003E05A4(&v18[v20], v7);
      v22 = sub_100436BFC(v14, v7);
      sub_100025F40(v7, &qword_1005DBCA8, &unk_100504BF0);
      sub_100025F40(v14, &qword_1005DBCA8, &unk_100504BF0);
      goto LABEL_9;
    }

    sub_100025F40(v14, &qword_1005DBCA8, &unk_100504BF0);
  }

  sub_100025F40(v18, &qword_1005DBCB0, &qword_1004FE5C8);
  v22 = 0;
  return v22 & 1;
}

uint64_t type metadata accessor for CreateParameter()
{
  result = qword_1005DC488;
  if (!qword_1005DC488)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1003E0540(uint64_t a1, uint64_t a2)
{
  Parameter = type metadata accessor for CreateParameter();
  (*(*(Parameter - 8) + 16))(a2, a1, Parameter);
  return a2;
}

uint64_t sub_1003E05A4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C9C0(&qword_1005DBCA8, &unk_100504BF0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1003E0614(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C9C0(&qword_1005D7F50, &unk_100502FF0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1003E06CC()
{
  sub_1003E0740();
  if (v0 <= 0x3F)
  {
    sub_1003E08C8();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_1003E0740()
{
  if (!qword_1005DC498)
  {
    sub_10000DEFC(&qword_1005D7F50, &unk_100502FF0);
    sub_1003E07CC();
    v0 = type metadata accessor for KeyValue();
    if (!v1)
    {
      atomic_store(v0, &qword_1005DC498);
    }
  }
}

unint64_t sub_1003E07CC()
{
  result = qword_1005DC4A0;
  if (!qword_1005DC4A0)
  {
    sub_10000DEFC(&qword_1005D7F50, &unk_100502FF0);
    sub_1003E0880(&qword_1005DC4A8, type metadata accessor for ParameterValue);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DC4A0);
  }

  return result;
}

uint64_t sub_1003E0880(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1003E08C8()
{
  if (!qword_1005DC4B0)
  {
    v0 = sub_1004A5CD4();
    if (!v1)
    {
      atomic_store(v0, &qword_1005DC4B0);
    }
  }
}

uint64_t sub_1003E0918(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1003E0978(uint64_t result, unint64_t a2)
{
  v3 = v2;
  if (*v2 == 1)
  {
    v4 = *(sub_10015BC90(result, a2) + 2);

    v17._countAndFlagsBits = sub_1004A6CE4();
    sub_1004A5994(v17);

    v18._countAndFlagsBits = 0x5D736574796220;
    v18._object = 0xE700000000000000;
    sub_1004A5994(v18);
    v5 = *(v3 + 5);
    v6 = sub_1002F178C(91, 0xE100000000000000, v3 + 1, *(v3 + 5));
    if (v7)
    {
      v8._countAndFlagsBits = 91;
      v8._object = 0xE100000000000000;
      v6 = ByteBuffer._setStringSlowpath(_:at:)(v8, v5);
    }

    v9 = v6;

    v10 = *(v3 + 5);
    result = v9;
    v11 = __CFADD__(v10, v9);
    v12 = v10 + v9;
    if (!v11)
    {
      goto LABEL_11;
    }

    __break(1u);
  }

  v13 = *(v3 + 5);
  v14 = result;
  v15 = a2;
  result = sub_1003B2588(result, a2, v3 + 1, *(v3 + 5));
  if ((result & 0x100000000) != 0)
  {
    result = sub_1003B51F4(v14, v15, v13);
  }

  v16 = *(v3 + 5);
  v11 = __CFADD__(v16, result);
  v12 = v16 + result;
  if (!v11)
  {
    result = result;
LABEL_11:
    *(v3 + 5) = v12;
    return result;
  }

  __break(1u);
  return result;
}

void sub_1003E0AC4(uint64_t a1)
{
  v2 = v1;
  if (*v1 == 1)
  {
    v11 = *(a1 + 16);
    v12._countAndFlagsBits = sub_1004A6CE4();
    sub_1004A5994(v12);

    v13._countAndFlagsBits = 0x5D736574796220;
    v13._object = 0xE700000000000000;
    sub_1004A5994(v13);
    v3 = *(v1 + 20);
    v4 = sub_1002F178C(91, 0xE100000000000000, (v1 + 8), *(v1 + 20));
    if (v5)
    {
      v6._countAndFlagsBits = 91;
      v6._object = 0xE100000000000000;
      v4 = ByteBuffer._setStringSlowpath(_:at:)(v6, v3);
    }

    v7 = v4;

    v8 = *(v2 + 20);
    v9 = __CFADD__(v8, v7);
    v10 = v8 + v7;
    if (v9)
    {
      __break(1u);
    }

    else
    {
      *(v2 + 20) = v10;
    }
  }

  else
  {
    sub_10041F128(a1);
  }
}

void sub_1003E0BCC(uint64_t *a1)
{
  v2 = v1;
  if (*v2 != 1)
  {
    v8 = *(v2 + 20);
    v9 = *a1;
    v10 = *(a1 + 10);
    v11 = *(a1 + 22);
    swift_beginAccess();
    v13 = a1[3];
    v12 = a1[4];
    v14 = v12 - v13;
    if (!__OFSUB__(v12, v13))
    {
      v15 = v8 + v14;
      if (!__CFADD__(v8, v14))
      {
        v16 = *(v9 + 24);
        v17 = *(v2 + 8);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v18 = *(v2 + 24);
          v19 = v15 >= v18;
          v20 = v15 - v18;
          if (v19)
          {
            v21 = v20;
          }

          else
          {
            v21 = 0;
          }

          v22 = variable initialization expression of Engine.isProcessingUpdates();
          ByteBuffer._copyStorageAndRebase(extraCapacity:resetIndices:)(v21, v22 & 1);
        }

        if (v14 <= 0xFFFFFFFFLL)
        {
          ByteBuffer._ensureAvailableCapacity(_:at:)(v14, v8);
          ByteBuffer._setBytesAssumingUniqueBufferAccess(_:at:)((v16 + (v11 | (v10 << 8)) + v13), v16 + (v11 | (v10 << 8)) + v13 + v14, v8);
          v23 = *(v2 + 20);
          v19 = __CFADD__(v23, v14);
          v24 = v23 + v14;
          if (!v19)
          {
LABEL_18:
            *(v2 + 20) = v24;
            return;
          }

          goto LABEL_23;
        }

LABEL_22:
        __break(1u);
LABEL_23:
        __break(1u);
        goto LABEL_24;
      }

LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v37 = 91;
  v38 = 0xE100000000000000;
  v4 = a1[3];
  v5 = a1[4];
  v6 = v5 - v4;
  if (v5 == v4)
  {
    v7 = _swiftEmptyArrayStorage;
    goto LABEL_15;
  }

  v25 = sub_10015BEAC(v5 - v4, 0);
  ByteBufferView._copyContents(initializing:)((v25 + 4), v6, v36);
  v26 = v36[6];

  v7 = v25;
  if (v26 == v6)
  {
LABEL_15:
    v27 = v7[2];

    v36[0] = v27;
    v39._countAndFlagsBits = sub_1004A6CE4();
    sub_1004A5994(v39);

    v40._countAndFlagsBits = 0x5D736574796220;
    v40._object = 0xE700000000000000;
    sub_1004A5994(v40);
    v29 = v37;
    v28 = v38;
    v30 = *(v2 + 20);
    v31 = sub_1002F178C(v37, v38, (v2 + 8), *(v2 + 20));
    if (v32)
    {
      v33._countAndFlagsBits = v29;
      v33._object = v28;
      v31 = ByteBuffer._setStringSlowpath(_:at:)(v33, v30);
    }

    v34 = v31;

    v35 = *(v2 + 20);
    v19 = __CFADD__(v35, v34);
    v24 = v35 + v34;
    if (!v19)
    {
      goto LABEL_18;
    }

    goto LABEL_20;
  }

LABEL_24:
  __break(1u);
}

uint64_t EncodeBuffer.writeCustomCommandPayload(_:)(uint64_t result, unint64_t a2, uint64_t a3)
{
  if (result < 0)
  {
    if (HIDWORD(a2) < a2)
    {
      __break(1u);
    }

    else if (a3 - (BYTE6(a3) | (WORD2(a3) << 8)) >= HIDWORD(a2))
    {
      v6[0] = result & 0x7FFFFFFFFFFFFFFFLL;
      v6[1] = a2;
      v7 = a3;
      v8 = WORD2(a3);
      v9 = BYTE6(a3);
      v10 = a2;
      v11 = HIDWORD(a2);

      sub_1003E0BCC(v6);
      v5 = v4;
      sub_1003A52D0(v6);
      return v5;
    }

    __break(1u);
  }

  else
  {
    v3 = a3 & 0xFFFFFFFFFFFFFFLL;

    return sub_1003B1E70(result, a2, v3);
  }

  return result;
}

BOOL static Command.CustomCommandPayload.__derived_enum_equals(_:_:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a1 < 0)
  {
    if ((a4 & 0x8000000000000000) == 0)
    {
      return 0;
    }

    a1 &= ~0x8000000000000000;
    a4 &= ~0x8000000000000000;
  }

  else if (a4 < 0)
  {
    return 0;
  }

  return sub_10020FBD0(a1, a2, a3 & 0xFFFFFFFFFFFFFFLL, a4, a5, a6 & 0xFFFFFFFFFFFFFFLL);
}

uint64_t Command.CustomCommandPayload.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = a2;
  if (a2 < 0)
  {
    v5 = a2 & 0x7FFFFFFFFFFFFFFFLL;
    v6 = 1;
  }

  else
  {
    v6 = 0;
  }

  sub_1004A6EB4(v6);
  swift_beginAccess();
  v7 = *(v5 + 24) + ((a4 >> 24) & 0xFFFF00 | BYTE6(a4));
  return sub_1004A6EA4();
}

Swift::Int Command.CustomCommandPayload.hashValue.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1004A6E94();
  Command.CustomCommandPayload.hash(into:)(v7, a1, a2, a3 & 0xFFFFFFFFFFFFFFLL);
  return sub_1004A6F14();
}

Swift::Int sub_1003E0FCC()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16) | ((*(v0 + 20) | (*(v0 + 22) << 16)) << 32);
  sub_1004A6E94();
  Command.CustomCommandPayload.hash(into:)(v5, v1, v2, v3);
  return sub_1004A6F14();
}

Swift::Int sub_1003E1054()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16) | ((*(v0 + 20) | (*(v0 + 22) << 16)) << 32);
  sub_1004A6E94();
  Command.CustomCommandPayload.hash(into:)(v5, v1, v2, v3);
  return sub_1004A6F14();
}

BOOL sub_1003E10BC(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *(a1 + 22);
  v7 = *(a1 + 20);
  v8 = *(a1 + 16);
  v9 = *a2;
  v10 = *(a2 + 8);
  v11 = *(a2 + 22);
  v12 = *(a2 + 20);
  v13 = *(a2 + 16);
  if (v4 < 0)
  {
    if ((v9 & 0x8000000000000000) == 0)
    {
      return 0;
    }

    v4 &= ~0x8000000000000000;
    v9 &= ~0x8000000000000000;
  }

  else if (v9 < 0)
  {
    return 0;
  }

  return sub_10020FBD0(v4, v5, (v8 | ((v7 | (v6 << 16)) << 32)) & 0xFFFFFFFFFFFFFFLL, v9, v10, (v13 | ((v12 | (v11 << 16)) << 32)) & 0xFFFFFFFFFFFFFFLL);
}

unint64_t sub_1003E1128()
{
  result = qword_1005DC4E0;
  if (!qword_1005DC4E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DC4E0);
  }

  return result;
}

uint64_t sub_1003E1188(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7F && *(a1 + 23))
  {
    return (*a1 + 127);
  }

  v3 = (((*a1 >> 57) >> 6) | (2 * ((*a1 >> 57) & 0x38 | *a1 & 7))) ^ 0x7F;
  if (v3 >= 0x7E)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1003E11E4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7E)
  {
    *(result + 22) = 0;
    *(result + 20) = 0;
    *(result + 16) = 0;
    *result = a2 - 127;
    *(result + 8) = 0;
    if (a3 >= 0x7F)
    {
      *(result + 23) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7F)
    {
      *(result + 23) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 1) & 0x3F | ((-a2 & 0x7F) << 6);
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
      *(result + 8) = 0;
      *(result + 22) = 0;
      *(result + 20) = 0;
      *(result + 16) = 0;
    }
  }

  return result;
}

BOOL static Base64.DecodingError.__derived_enum_equals(_:_:)(__int16 a1, __int16 a2)
{
  if ((a1 & 0x100) != 0)
  {
    if (a1)
    {
      if (a1 == 1)
      {
        return (a2 & 0x100) != 0 && a2 == 1;
      }

      else
      {
        return (a2 & 0x100) != 0 && a2 > 1u;
      }
    }

    else
    {
      return (a2 & 0x100) != 0 && !a2;
    }
  }

  else
  {
    if ((a2 & 0x100) != 0)
    {
      return 0;
    }

    return a1 == a2;
  }
}

BOOL sub_1003E12F4(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = a2[1];
  if (a1[1] != 1)
  {
    if ((a2[1] & 1) == 0)
    {
      return v2 == v3;
    }

    return 0;
  }

  if (*a1)
  {
    if (v2 != 1)
    {
      if (v3 > 1)
      {
        v8 = a2[1];
      }

      else
      {
        v8 = 0;
      }

      return v8 == 1;
    }

    v5 = v3 == 1;
  }

  else
  {
    v5 = v3 == 0;
  }

  if (v5)
  {
    v7 = a2[1];
  }

  else
  {
    v7 = 0;
  }

  return (v7 & 1) != 0;
}

uint64_t _s13DecodingErrorOwet(unsigned __int16 *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  v2 = a2 + 0xFFFF;
  if ((a2 + 0xFFFF) <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (v2 < 0xFF0000)
  {
    v3 = 1;
  }

  if (v2 >= 0x10000)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 <= 1)
  {
    if (!v4)
    {
      return v4;
    }

    v4 = *(a1 + 2);
    if (!*(a1 + 2))
    {
      return v4;
    }

    return (*a1 | (v4 << 16)) - 0xFFFF;
  }

  if (v4 == 2)
  {
    v4 = a1[1];
    if (!a1[1])
    {
      return v4;
    }

    return (*a1 | (v4 << 16)) - 0xFFFF;
  }

  v4 = *(a1 + 1);
  if (v4)
  {
    return (*a1 | (v4 << 16)) - 0xFFFF;
  }

  return v4;
}

_WORD *_s13DecodingErrorOwst(_WORD *result, int a2, int a3)
{
  v3 = a3 + 0xFFFF;
  if ((a3 + 0xFFFF) <= 0xFFFEFFFF)
  {
    v4 = 2;
  }

  else
  {
    v4 = 4;
  }

  if (v3 < 0xFF0000)
  {
    v4 = 1;
  }

  if (v3 >= 0x10000)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (!a3)
  {
    v5 = 0;
  }

  if (a2)
  {
    v6 = ((a2 - 1) >> 16) + 1;
    *result = a2 - 1;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        result[1] = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 2) = v6;
    }
  }

  else if (v5 > 1)
  {
    if (v5 == 2)
    {
      result[1] = 0;
    }

    else
    {
      *(result + 1) = 0;
    }
  }

  else if (v5)
  {
    *(result + 2) = 0;
  }

  return result;
}

uint64_t sub_1003E1480(unsigned __int8 *a1)
{
  if (a1[1])
  {
    return (*a1 | (a1[1] << 8)) - 255;
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_1003E14A0(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 - 1;
    result[1] = ((a2 - 1) >> 8) + 1;
  }

  else
  {
    result[1] = 0;
  }

  return result;
}

uint64_t sub_1003E14D4()
{
  result = sub_1004A5814();
  static BodyStructure.DispositionKind.inline = result;
  *algn_1005DE968 = v1;
  return result;
}

uint64_t *BodyStructure.DispositionKind.inline.unsafeMutableAddressor()
{
  if (qword_1005DBB50 != -1)
  {
    swift_once();
  }

  return &static BodyStructure.DispositionKind.inline;
}

uint64_t sub_1003E1580()
{
  result = sub_1004A5814();
  static BodyStructure.DispositionKind.attachment = result;
  *algn_1005DE978 = v1;
  return result;
}

uint64_t *BodyStructure.DispositionKind.attachment.unsafeMutableAddressor()
{
  if (qword_1005DBB58 != -1)
  {
    swift_once();
  }

  return &static BodyStructure.DispositionKind.attachment;
}

uint64_t sub_1003E1634@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_1004A5814();
  v7 = v6;

  *a2 = v5;
  a2[1] = v7;
  return result;
}

uint64_t BodyStructure.Disposition.parameters.getter()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];

  return v1;
}

uint64_t BodyStructure.Disposition.parameters.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = v3[2];

  v8 = v3[3];

  v9 = v3[4];

  v3[2] = a1;
  v3[3] = a2;
  v3[4] = a3;
  return result;
}

uint64_t BodyStructure.Disposition.init(kind:parameters:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  *a6 = result;
  a6[1] = a2;
  a6[2] = a3;
  a6[3] = a4;
  a6[4] = a5;
  return result;
}

unsigned __int8 *BodyStructure.Disposition.size.getter()
{
  v1 = *(v0 + 24);
  v41 = *(v0 + 32);
  v2 = *(v41 + 16);

  if (!v2)
  {
LABEL_10:
    sub_1003E1B30(&v41);
    return 0;
  }

  v4 = 0;
  v5 = (v3 + 40);
  v6 = (v1 + 40);
  while (1)
  {
    if (v4 >= *(v1 + 16))
    {
      __break(1u);
      goto LABEL_79;
    }

    v7 = *(v6 - 1);
    v8 = *v6;
    v10 = *(v5 - 1);
    v9 = *v5;
    if (sub_1004A5814() == 1702521203 && v11 == 0xE400000000000000)
    {
      break;
    }

    v13 = sub_1004A6D34();

    if (v13)
    {
      goto LABEL_13;
    }

    ++v4;

    v5 += 2;
    v6 += 2;
    if (v2 == v4)
    {
      goto LABEL_10;
    }
  }

LABEL_13:
  sub_1003E1B30(&v41);

  v15 = HIBYTE(v9) & 0xF;
  v16 = v10 & 0xFFFFFFFFFFFFLL;
  if ((v9 & 0x2000000000000000) != 0)
  {
    v17 = HIBYTE(v9) & 0xF;
  }

  else
  {
    v17 = v10 & 0xFFFFFFFFFFFFLL;
  }

  if (!v17)
  {
LABEL_79:

    return 0;
  }

  if ((v9 & 0x1000000000000000) != 0)
  {
    v19 = sub_10010C28C(v10, v9, 10);
    v37 = v38;
    goto LABEL_75;
  }

  if ((v9 & 0x2000000000000000) != 0)
  {
    v39[0] = v10;
    v39[1] = v9 & 0xFFFFFFFFFFFFFFLL;
    if (v10 == 43)
    {
      if (!v15)
      {
LABEL_85:
        __break(1u);
        return result;
      }

      if (--v15)
      {
        v19 = 0;
        v29 = v39 + 1;
        while (1)
        {
          v30 = *v29 - 48;
          if (v30 > 9)
          {
            break;
          }

          v31 = 10 * v19;
          if ((v19 * 10) >> 64 != (10 * v19) >> 63)
          {
            break;
          }

          v19 = v31 + v30;
          if (__OFADD__(v31, v30))
          {
            break;
          }

          ++v29;
          if (!--v15)
          {
            goto LABEL_74;
          }
        }
      }
    }

    else if (v10 == 45)
    {
      if (!v15)
      {
LABEL_83:
        __break(1u);
        goto LABEL_84;
      }

      if (--v15)
      {
        v19 = 0;
        v23 = v39 + 1;
        while (1)
        {
          v24 = *v23 - 48;
          if (v24 > 9)
          {
            break;
          }

          v25 = 10 * v19;
          if ((v19 * 10) >> 64 != (10 * v19) >> 63)
          {
            break;
          }

          v19 = v25 - v24;
          if (__OFSUB__(v25, v24))
          {
            break;
          }

          ++v23;
          if (!--v15)
          {
            goto LABEL_74;
          }
        }
      }
    }

    else if (v15)
    {
      v19 = 0;
      v34 = v39;
      while (1)
      {
        v35 = *v34 - 48;
        if (v35 > 9)
        {
          break;
        }

        v36 = 10 * v19;
        if ((v19 * 10) >> 64 != (10 * v19) >> 63)
        {
          break;
        }

        v19 = v36 + v35;
        if (__OFADD__(v36, v35))
        {
          break;
        }

        ++v34;
        if (!--v15)
        {
          goto LABEL_74;
        }
      }
    }

LABEL_73:
    v19 = 0;
    LOBYTE(v15) = 1;
    goto LABEL_74;
  }

  if ((v10 & 0x1000000000000000) != 0)
  {
    result = ((v9 & 0xFFFFFFFFFFFFFFFLL) + 32);
  }

  else
  {
    result = sub_1004A67E4();
  }

  v18 = *result;
  if (v18 == 43)
  {
    if (v16 < 1)
    {
LABEL_84:
      __break(1u);
      goto LABEL_85;
    }

    v15 = v16 - 1;
    if (v16 == 1)
    {
      goto LABEL_73;
    }

    v19 = 0;
    if (!result)
    {
      goto LABEL_65;
    }

    v26 = result + 1;
    while (1)
    {
      v27 = *v26 - 48;
      if (v27 > 9)
      {
        goto LABEL_73;
      }

      v28 = 10 * v19;
      if ((v19 * 10) >> 64 != (10 * v19) >> 63)
      {
        goto LABEL_73;
      }

      v19 = v28 + v27;
      if (__OFADD__(v28, v27))
      {
        goto LABEL_73;
      }

      ++v26;
      if (!--v15)
      {
        goto LABEL_74;
      }
    }
  }

  if (v18 != 45)
  {
    if (!v16)
    {
      goto LABEL_73;
    }

    v19 = 0;
    if (!result)
    {
      goto LABEL_65;
    }

    while (1)
    {
      v32 = *result - 48;
      if (v32 > 9)
      {
        goto LABEL_73;
      }

      v33 = 10 * v19;
      if ((v19 * 10) >> 64 != (10 * v19) >> 63)
      {
        goto LABEL_73;
      }

      v19 = v33 + v32;
      if (__OFADD__(v33, v32))
      {
        goto LABEL_73;
      }

      ++result;
      if (!--v16)
      {
        goto LABEL_65;
      }
    }
  }

  if (v16 < 1)
  {
    __break(1u);
    goto LABEL_83;
  }

  v15 = v16 - 1;
  if (v16 == 1)
  {
    goto LABEL_73;
  }

  v19 = 0;
  if (result)
  {
    v20 = result + 1;
    while (1)
    {
      v21 = *v20 - 48;
      if (v21 > 9)
      {
        goto LABEL_73;
      }

      v22 = 10 * v19;
      if ((v19 * 10) >> 64 != (10 * v19) >> 63)
      {
        goto LABEL_73;
      }

      v19 = v22 - v21;
      if (__OFSUB__(v22, v21))
      {
        goto LABEL_73;
      }

      ++v20;
      if (!--v15)
      {
        goto LABEL_74;
      }
    }
  }

LABEL_65:
  LOBYTE(v15) = 0;
LABEL_74:
  v40 = v15;
  v37 = v15;
LABEL_75:

  if (v37)
  {
    return 0;
  }

  else
  {
    return v19;
  }
}

uint64_t sub_1003E1B30(uint64_t a1)
{
  v2 = sub_10000C9C0(&qword_1005D3FD0, &qword_1004DF4C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t BodyStructure.Disposition.filename.getter()
{
  v15 = *(v0 + 24);
  v16 = *(v0 + 32);
  v1 = *(v16 + 16);

  if (v1)
  {
    v3 = 0;
    v4 = 0x656D616E656C6966;
    v5 = (result + 40);
    v6 = (v15 + 40);
    while (v3 < *(v15 + 16))
    {
      v7 = *(v6 - 1);
      v8 = *v6;
      v10 = *(v5 - 1);
      v9 = *v5;
      if (sub_1004A5814() == v4 && v11 == 0xE800000000000000)
      {

LABEL_12:
        sub_1003E1B30(&v16);

        return v10;
      }

      v13 = v4;
      v14 = sub_1004A6D34();

      if (v14)
      {
        goto LABEL_12;
      }

      ++v3;

      v5 += 2;
      v6 += 2;
      v4 = v13;
      if (v1 == v3)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_10:
    sub_1003E1B30(&v16);
    return 0;
  }

  return result;
}

BOOL static BodyStructure.Disposition.__derived_struct_equals(_:_:)(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (v4 || (v5 = sub_1004A6D34(), result = 0, (v5 & 1) != 0))
  {
    v7 = a1[3];
    v8 = a1[4];
    v9 = a2[3];
    v10 = a2[4];
    return (sub_10020FB40(v7, v9) & 1) != 0 && (sub_10020FB40(v8, v10) & 1) != 0;
  }

  return result;
}

uint64_t BodyStructure.Disposition.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  v4 = v0[3];
  v3 = v0[4];
  v14 = v3;
  v5 = *(v3 + 16);
  sub_1004A6EB4(v5);

  if (!v5)
  {
    return sub_1003E1B30(&v14);
  }

  v7 = 0;
  v8 = (v3 + 40);
  v9 = (v4 + 40);
  while (v7 < *(v4 + 16))
  {
    v10 = *(v9 - 1);
    v11 = *v9;
    ++v7;
    v12 = *(v8 - 1);
    v13 = *v8;

    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

    v8 += 2;
    v9 += 2;
    if (v5 == v7)
    {
      return sub_1003E1B30(&v14);
    }
  }

  __break(1u);
  return result;
}

Swift::Int BodyStructure.Disposition.hashValue.getter()
{
  sub_1004A6E94();
  v1 = *v0;
  v2 = v0[1];
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  v4 = v0[3];
  v3 = v0[4];
  v14 = v3;
  v5 = *(v3 + 16);
  sub_1004A6EB4(v5);

  if (v5)
  {
    v7 = 0;
    v8 = (v3 + 40);
    v9 = (v4 + 40);
    while (v7 < *(v4 + 16))
    {
      v10 = *(v9 - 1);
      v11 = *v9;
      ++v7;
      v12 = *(v8 - 1);
      v13 = *v8;

      _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
      _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

      v8 += 2;
      v9 += 2;
      if (v5 == v7)
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_5:
    sub_1003E1B30(&v14);
    return sub_1004A6F14();
  }

  return result;
}

Swift::Int sub_1003E1F64()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[3];
  v3 = v0[4];
  sub_1004A6E94();
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  sub_1003A1364(v6, v4, v3);
  return sub_1004A6F14();
}

uint64_t sub_1003E1FCC(uint64_t a1)
{
  v3 = *v1;
  v4 = v1[1];
  v6 = v1[3];
  v5 = v1[4];
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

  return sub_1003A1364(a1, v6, v5);
}

Swift::Int sub_1003E201C()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[3];
  v3 = v0[4];
  sub_1004A6E94();
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  sub_1003A1364(v6, v4, v3);
  return sub_1004A6F14();
}

BOOL sub_1003E2080(void *a1, void *a2)
{
  v3 = a1[3];
  v2 = a1[4];
  v5 = a2[3];
  v4 = a2[4];
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return (sub_10020FB40(v3, v5) & 1) != 0 && (sub_10020FB40(v2, v4) & 1) != 0;
  }

  v7 = sub_1004A6D34();
  result = 0;
  if (v7)
  {
    return (sub_10020FB40(v3, v5) & 1) != 0 && (sub_10020FB40(v2, v4) & 1) != 0;
  }

  return result;
}

unint64_t sub_1003E2110(unint64_t *a1)
{
  v2 = v1;
  v3 = a1[1];
  v4 = *(v1 + 20);
  if (!v3)
  {
    goto LABEL_17;
  }

  v5 = *a1;
  v6 = a1[2];
  v7 = a1[3];
  v8 = a1[4];

  result = sub_1002F178C(40, 0xE100000000000000, (v1 + 8), v4);
  if (v10)
  {
    v11._countAndFlagsBits = 40;
    v11._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v11, v4);
  }

  v12 = result;
  v13 = *(v1 + 20);
  v14 = __CFADD__(v13, result);
  v15 = v13 + result;
  if (v14)
  {
    __break(1u);
    goto LABEL_23;
  }

  *(v1 + 20) = v15;
  v35[0] = v5;
  v35[1] = v3;

  v16 = sub_100441B60(v5, v3);
  result = sub_100257A18(v35);
  v17 = v12 + v16;
  if (__OFADD__(v12, v16))
  {
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v18 = *(v2 + 20);
  result = sub_1002F178C(32, 0xE100000000000000, (v2 + 8), *(v2 + 20));
  if (v19)
  {
    v20._countAndFlagsBits = 32;
    v20._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v20, v18);
  }

  v21 = *(v2 + 20);
  v14 = __CFADD__(v21, result);
  v22 = v21 + result;
  if (v14)
  {
    goto LABEL_24;
  }

  *(v2 + 20) = v22;
  v23 = v17 + result;
  if (__OFADD__(v17, result))
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  result = sub_1004633BC(v6, v7, v8);
  v4 = v23 + result;
  if (__OFADD__(v23, result))
  {
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
    return result;
  }

  v24 = *(v2 + 20);
  v25 = sub_1002F178C(41, 0xE100000000000000, (v2 + 8), *(v2 + 20));
  if (v26)
  {
    v27._countAndFlagsBits = 41;
    v27._object = 0xE100000000000000;
    v25 = ByteBuffer._setStringSlowpath(_:at:)(v27, v24);
  }

  v28 = v25;
  sub_100257A18(v35);

  v29 = *(v2 + 20);
  v14 = __CFADD__(v29, v28);
  v30 = v29 + v28;
  if (v14)
  {
    goto LABEL_27;
  }

  *(v2 + 20) = v30;
  result = v4 + v28;
  if (!__OFADD__(v4, v28))
  {
    return result;
  }

  __break(1u);
LABEL_17:
  result = sub_1002F178C(4999502, 0xE300000000000000, (v2 + 8), v4);
  if (v31)
  {
    v32._countAndFlagsBits = 4999502;
    v32._object = 0xE300000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v32, v4);
  }

  v33 = *(v2 + 20);
  v14 = __CFADD__(v33, result);
  v34 = v33 + result;
  if (v14)
  {
    goto LABEL_28;
  }

  *(v2 + 20) = v34;
  return result;
}

unint64_t sub_1003E2340()
{
  result = qword_1005DC4E8;
  if (!qword_1005DC4E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DC4E8);
  }

  return result;
}

unint64_t sub_1003E2398()
{
  result = qword_1005DC4F0;
  if (!qword_1005DC4F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DC4F0);
  }

  return result;
}

unint64_t sub_1003E23F0()
{
  result = qword_1005DC4F8;
  if (!qword_1005DC4F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DC4F8);
  }

  return result;
}

unint64_t sub_1003E2448()
{
  result = qword_1005DC500;
  if (!qword_1005DC500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DC500);
  }

  return result;
}

uint64_t sub_1003E24D8(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C9C0(&qword_1005D6280, &qword_100501A80);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t BodyStructure.DispositionAndLanguage.language.getter()
{
  v1 = v0[5];
  sub_1003E2598(v1, v0[6], v0[7], v0[8]);
  return v1;
}

uint64_t sub_1003E2598(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (result)
  {

    return sub_1003E25F0(a2, a3, a4);
  }

  return result;
}

uint64_t sub_1003E25F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t BodyStructure.DispositionAndLanguage.language.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_100051638(v4[5], v4[6], v4[7], v4[8]);
  v4[5] = a1;
  v4[6] = a2;
  v4[7] = a3;
  v4[8] = a4;
  return result;
}

__n128 BodyStructure.DispositionAndLanguage.init(disposition:language:)@<Q0>(__n128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v7 = a1[1];
  v17[0] = *a1;
  v17[1] = v7;
  v8 = a1[2].n128_i64[0];
  v12 = v17[0];
  v13 = v7;
  *&v14 = v8;
  *(&v14 + 1) = a2;
  *&v15 = a3;
  *(&v15 + 1) = a4;
  v16 = a5;
  v18 = v8;
  v19 = a2;
  v20 = a3;
  v21 = a4;
  v22 = a5;
  sub_1003E2704(&v12, v11);
  sub_1003E273C(v17);
  v9 = v15;
  *(a6 + 32) = v14;
  *(a6 + 48) = v9;
  *(a6 + 64) = v16;
  result = v13;
  *a6 = v12;
  *(a6 + 16) = result;
  return result;
}

void BodyStructure.DispositionAndLanguage.hash(into:)(uint64_t a1)
{
  v2 = v1;
  if (!v2[1])
  {
    sub_1004A6EC4(0);
    goto LABEL_8;
  }

  v5 = v2[3];
  v4 = v2[4];
  v19 = v2;
  v6 = *v2;
  sub_1004A6EC4(1u);
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  v7 = *(v4 + 16);
  sub_1004A6EB4(v7);

  if (!v7)
  {
LABEL_6:

    v2 = v19;
LABEL_8:
    v15 = v2[5];
    v16 = v2[6];
    v17 = v2[7];
    v18 = v2[8];

    sub_1003B0794(a1, v15, v16, v17, v18);
    return;
  }

  v8 = 0;
  v9 = (v4 + 40);
  v10 = (v5 + 40);
  while (v8 < *(v5 + 16))
  {
    v11 = *(v10 - 1);
    v12 = *v10;
    ++v8;
    v13 = *(v9 - 1);
    v14 = *v9;

    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

    v9 += 2;
    v10 += 2;
    if (v7 == v8)
    {
      goto LABEL_6;
    }
  }

  __break(1u);
}

Swift::Int BodyStructure.DispositionAndLanguage.hashValue.getter()
{
  v1 = v0;
  sub_1004A6E94();
  if (!v0[1])
  {
    sub_1004A6EC4(0);
    goto LABEL_8;
  }

  v3 = v0[3];
  v2 = v0[4];
  v4 = *v0;
  sub_1004A6EC4(1u);
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  v5 = *(v2 + 16);
  sub_1004A6EB4(v5);

  if (!v5)
  {
LABEL_6:

LABEL_8:
    sub_1003B0794(v14, v1[5], v1[6], v1[7], v1[8]);
    return sub_1004A6F14();
  }

  v7 = 0;
  v8 = (v2 + 40);
  v9 = (v3 + 40);
  while (v7 < *(v3 + 16))
  {
    v10 = *(v9 - 1);
    v11 = *v9;
    ++v7;
    v12 = *(v8 - 1);
    v13 = *v8;

    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

    v8 += 2;
    v9 += 2;
    if (v5 == v7)
    {
      goto LABEL_6;
    }
  }

  __break(1u);
  return result;
}

Swift::Int sub_1003E2A00()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = v0[7];
  v8 = v0[8];
  sub_1004A6E94();
  if (v2)
  {
    sub_1004A6EC4(1u);
    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
    sub_1003A1364(v10, v3, v4);
  }

  else
  {
    sub_1004A6EC4(0);
  }

  sub_1003B0794(v10, v5, v6, v7, v8);
  return sub_1004A6F14();
}

void sub_1003E2ABC(uint64_t a1)
{
  v3 = v1[5];
  v4 = v1[6];
  v5 = v1[7];
  v6 = v1[8];
  if (v1[1])
  {
    v8 = v1[3];
    v7 = v1[4];
    v9 = *v1;
    sub_1004A6EC4(1u);
    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
    sub_1003A1364(a1, v8, v7);
  }

  else
  {
    sub_1004A6EC4(0);
  }

  sub_1003B0794(a1, v3, v4, v5, v6);
}

Swift::Int sub_1003E2B74()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = v0[7];
  v8 = v0[8];
  sub_1004A6E94();
  if (v2)
  {
    sub_1004A6EC4(1u);
    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
    sub_1003A1364(v10, v3, v4);
  }

  else
  {
    sub_1004A6EC4(0);
  }

  sub_1003B0794(v10, v5, v6, v7, v8);
  return sub_1004A6F14();
}

BOOL sub_1003E2C2C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 48);
  v7[2] = *(a1 + 32);
  v7[3] = v2;
  v8 = *(a1 + 64);
  v3 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v3;
  v4 = *(a2 + 48);
  v9[2] = *(a2 + 32);
  v9[3] = v4;
  v10 = *(a2 + 64);
  v5 = *(a2 + 16);
  v9[0] = *a2;
  v9[1] = v5;
  return _s12NIOIMAPCore213BodyStructureO22DispositionAndLanguageV23__derived_struct_equalsySbAE_AEtFZ_0(v7, v9);
}

BOOL _s12NIOIMAPCore213BodyStructureO22DispositionAndLanguageV23__derived_struct_equalsySbAE_AEtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v5 = a1[2];
  v4 = a1[3];
  v6 = a1[4];
  v8 = *a2;
  v7 = a2[1];
  v9 = a2[2];
  v10 = a2[3];
  v11 = a2[4];
  if (!v2)
  {
    if (!v7)
    {
      goto LABEL_14;
    }

LABEL_12:
    sub_100269A7C(*a2, a2[1]);
    sub_100269A7C(v3, v2);
    sub_1000515D4(v3, v2);
    sub_1000515D4(v8, v7);
    return 0;
  }

  if (!v7)
  {
    goto LABEL_12;
  }

  v24 = a2;
  v25 = a1;
  v12 = v3 == v8 && v2 == v7;
  if (!v12 && (sub_1004A6D34() & 1) == 0 || (sub_10020FB40(v4, v10) & 1) == 0)
  {
    sub_100269A7C(v8, v7);
    sub_100269A7C(v3, v2);

    sub_1000515D4(v3, v2);
    return 0;
  }

  v23 = sub_10020FB40(v6, v11);
  sub_100269A7C(v8, v7);
  sub_100269A7C(v3, v2);

  sub_1000515D4(v3, v2);
  a2 = v24;
  a1 = v25;
  if ((v23 & 1) == 0)
  {
    return 0;
  }

LABEL_14:
  v13 = a1[5];
  v14 = a1[6];
  v15 = a1[7];
  v16 = a1[8];
  v18 = a2[5];
  v17 = a2[6];
  v19 = a2[7];
  v20 = a2[8];
  if (v13)
  {
    if (v18)
    {
      sub_1003E2598(a2[5], a2[6], v19, v20);
      sub_1003E2598(v13, v14, v15, v16);
      v21 = _s12NIOIMAPCore213BodyStructureO16LanguageLocationV23__derived_struct_equalsySbAE_AEtFZ_0(v13, v14, v15, v16, v18, v17, v19, v20);

      sub_100051690(v17, v19, v20);
      sub_100051638(v13, v14, v15, v16);
      return v21;
    }

LABEL_19:
    sub_1003E2598(a2[5], a2[6], v19, v20);
    sub_1003E2598(v13, v14, v15, v16);
    sub_100051638(v13, v14, v15, v16);
    sub_100051638(v18, v17, v19, v20);
    return 0;
  }

  if (v18)
  {
    goto LABEL_19;
  }

  return 1;
}

unint64_t sub_1003E2F84()
{
  result = qword_1005DC508;
  if (!qword_1005DC508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DC508);
  }

  return result;
}

uint64_t sub_1003E2FD8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 72))
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

uint64_t sub_1003E3034(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 72) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 72) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t EmailAddress.personName.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 4) | ((*(v0 + 10) | (*(v0 + 22) << 16)) << 32);
}

uint64_t EmailAddress.personName.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;

  *v3 = a1;
  v3[1] = a2;
  *(v3 + 22) = BYTE6(a3);
  *(v3 + 10) = WORD2(a3);
  *(v3 + 4) = a3;
  return result;
}

uint64_t EmailAddressGroup.sourceRoot.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = *(v0 + 40) | ((*(v0 + 44) | (*(v0 + 46) << 16)) << 32);
}

uint64_t EmailAddressGroup.sourceRoot.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + 24);

  *(v3 + 24) = a1;
  *(v3 + 32) = a2;
  *(v3 + 46) = BYTE6(a3);
  *(v3 + 44) = WORD2(a3);
  *(v3 + 40) = a3;
  return result;
}

uint64_t EmailAddress.mailbox.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);
  v3 = *(v0 + 64) | ((*(v0 + 68) | (*(v0 + 70) << 16)) << 32);
}

uint64_t EmailAddress.mailbox.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + 48);

  *(v3 + 48) = a1;
  *(v3 + 56) = a2;
  *(v3 + 70) = BYTE6(a3);
  *(v3 + 68) = WORD2(a3);
  *(v3 + 64) = a3;
  return result;
}

uint64_t EmailAddress.host.getter()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 80);
  v3 = *(v0 + 88) | ((*(v0 + 92) | (*(v0 + 94) << 16)) << 32);
}

uint64_t EmailAddress.host.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + 72);

  *(v3 + 72) = a1;
  *(v3 + 80) = a2;
  *(v3 + 94) = BYTE6(a3);
  *(v3 + 92) = WORD2(a3);
  *(v3 + 88) = a3;
  return result;
}

double EmailAddress.init(personName:sourceRoot:mailbox:host:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, _OWORD *a9@<X8>, int a10, __int16 a11, char a12, uint64_t a13, uint64_t a14, int a15, __int16 a16, char a17)
{
  *&v22 = a1;
  *(&v22 + 1) = a2;
  LODWORD(v23) = a3;
  BYTE6(v23) = BYTE6(a3);
  WORD2(v23) = WORD2(a3);
  *(&v23 + 1) = a4;
  *&v24 = a5;
  DWORD2(v24) = a6;
  BYTE14(v24) = BYTE6(a6);
  WORD6(v24) = WORD2(a6);
  *&v25 = a7;
  *(&v25 + 1) = a8;
  *v26 = a10;
  v26[6] = a12;
  *&v26[4] = a11;
  *&v26[8] = a13;
  *&v26[16] = a14;
  *&v26[24] = a15;
  v26[30] = a17;
  *&v26[28] = a16;
  v27[0] = a1;
  v27[1] = a2;
  v28 = a3;
  v30 = BYTE6(a3);
  v29 = WORD2(a3);
  v31 = a4;
  v32 = a5;
  v33 = a6;
  v35 = BYTE6(a6);
  v34 = WORD2(a6);
  v36 = a7;
  v37 = a8;
  v38 = a10;
  v40 = a12;
  v39 = a11;
  v41 = a13;
  v42 = a14;
  v43 = a15;
  v45 = a17;
  v44 = a16;
  sub_1003A3260(&v22, &v21);
  sub_1003A32BC(v27);
  v18 = v25;
  a9[2] = v24;
  a9[3] = v18;
  a9[4] = *v26;
  *(a9 + 79) = *&v26[15];
  result = *&v22;
  v20 = v23;
  *a9 = v22;
  a9[1] = v20;
  return result;
}

void EmailAddress.hash(into:)()
{
  v1 = *v0;
  if (*v0)
  {
    v2 = *(v0 + 22);
    v3 = *(v0 + 10);
    v4 = v0[1];
    sub_1004A6EC4(1u);
    swift_beginAccess();
    v5 = *(v1 + 24) + (v2 | (v3 << 8));
    sub_1004A6EA4();
    v6 = v0[3];
    if (v6)
    {
      goto LABEL_3;
    }
  }

  else
  {
    sub_1004A6EC4(0);
    v6 = v0[3];
    if (v6)
    {
LABEL_3:
      v7 = *(v0 + 46);
      v8 = *(v0 + 22);
      v9 = v0[4];
      sub_1004A6EC4(1u);
      swift_beginAccess();
      v10 = *(v6 + 24) + (v7 | (v8 << 8));
      sub_1004A6EA4();
      v11 = v0[6];
      if (v11)
      {
        goto LABEL_4;
      }

LABEL_8:
      sub_1004A6EC4(0);
      v16 = v0[9];
      if (v16)
      {
        goto LABEL_5;
      }

      goto LABEL_9;
    }
  }

  sub_1004A6EC4(0);
  v11 = v0[6];
  if (!v11)
  {
    goto LABEL_8;
  }

LABEL_4:
  v12 = *(v0 + 70);
  v13 = *(v0 + 34);
  v14 = v0[7];
  sub_1004A6EC4(1u);
  swift_beginAccess();
  v15 = *(v11 + 24) + (v12 | (v13 << 8));
  sub_1004A6EA4();
  v16 = v0[9];
  if (v16)
  {
LABEL_5:
    v17 = *(v0 + 94);
    v18 = *(v0 + 46);
    v19 = v0[10];
    sub_1004A6EC4(1u);
    swift_beginAccess();
    v20 = *(v16 + 24) + (v17 | (v18 << 8));
    sub_1004A6EA4();
    return;
  }

LABEL_9:
  sub_1004A6EC4(0);
}

Swift::Int EmailAddress.hashValue.getter()
{
  sub_1004A6E94();
  EmailAddress.hash(into:)();
  return sub_1004A6F14();
}

Swift::Int sub_1003E35D4()
{
  sub_1004A6E94();
  EmailAddress.hash(into:)();
  return sub_1004A6F14();
}

uint64_t sub_1003E3610(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[3];
  v7[2] = a1[2];
  v7[3] = v2;
  v8[0] = a1[4];
  *(v8 + 15) = *(a1 + 79);
  v3 = a1[1];
  v7[0] = *a1;
  v7[1] = v3;
  v4 = a2[3];
  v9[2] = a2[2];
  v9[3] = v4;
  v10[0] = a2[4];
  *(v10 + 15) = *(a2 + 79);
  v5 = a2[1];
  v9[0] = *a2;
  v9[1] = v5;
  return _s12NIOIMAPCore212EmailAddressV23__derived_struct_equalsySbAC_ACtFZ_0(v7, v9) & 1;
}

uint64_t sub_1003E367C(unint64_t *a1)
{
  v2 = v1;
  v4 = *(v1 + 20);
  result = sub_1002F178C(40, 0xE100000000000000, (v1 + 8), *(v1 + 20));
  if (v6)
  {
    v7._countAndFlagsBits = 40;
    v7._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v7, v4);
  }

  v8 = result;
  v9 = *(v1 + 20);
  v10 = (v9 + result);
  if (__CFADD__(v9, result))
  {
    goto LABEL_53;
  }

  *(v1 + 20) = v10;
  v11 = *a1;
  if (*a1)
  {
    v12 = *(a1 + 4) | ((*(a1 + 10) | (*(a1 + 22) << 16)) << 32);
    v13 = a1[1];
    v14 = *a1;

    v16 = sub_1003B1E70(v15, v13, v12);

    v17 = v8 + v16;
    if (!__OFADD__(v8, v16))
    {
      goto LABEL_6;
    }

LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  result = sub_1002F178C(4999502, 0xE300000000000000, (v1 + 8), v10);
  if (v52)
  {
    v53._countAndFlagsBits = 4999502;
    v53._object = 0xE300000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v53, v10);
  }

  v54 = *(v1 + 20);
  v49 = __CFADD__(v54, result);
  v55 = v54 + result;
  if (v49)
  {
    goto LABEL_62;
  }

  *(v1 + 20) = v55;
  v17 = v8 + result;
  if (__OFADD__(v8, result))
  {
    goto LABEL_34;
  }

LABEL_6:
  v18 = *(v2 + 20);
  result = sub_1002F178C(32, 0xE100000000000000, (v2 + 8), *(v2 + 20));
  if (v19)
  {
    v20._countAndFlagsBits = 32;
    v20._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v20, v18);
  }

  v21 = *(v2 + 20);
  v8 = (v21 + result);
  if (__CFADD__(v21, result))
  {
    goto LABEL_54;
  }

  *(v2 + 20) = v8;
  v11 = v17 + result;
  if (__OFADD__(v17, result))
  {
LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  if (a1[3])
  {
    v22 = *(a1 + 10) | ((*(a1 + 22) | (*(a1 + 46) << 16)) << 32);
    v8 = a1[4];
    v23 = a1[3];

    v25 = sub_1003B1E70(v24, v8, v22);

    v26 = v11 + v25;
    if (!__OFADD__(v11, v25))
    {
      goto LABEL_12;
    }

LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

LABEL_35:
  result = sub_1002F178C(4999502, 0xE300000000000000, (v2 + 8), v8);
  if (v56)
  {
    v57._countAndFlagsBits = 4999502;
    v57._object = 0xE300000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v57, v8);
  }

  v58 = *(v2 + 20);
  v49 = __CFADD__(v58, result);
  v59 = v58 + result;
  if (v49)
  {
    goto LABEL_63;
  }

  *(v2 + 20) = v59;
  v26 = v11 + result;
  if (__OFADD__(v11, result))
  {
    goto LABEL_40;
  }

LABEL_12:
  v27 = *(v2 + 20);
  result = sub_1002F178C(32, 0xE100000000000000, (v2 + 8), *(v2 + 20));
  if (v28)
  {
    v29._countAndFlagsBits = 32;
    v29._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v29, v27);
  }

  v30 = *(v2 + 20);
  v8 = (v30 + result);
  if (__CFADD__(v30, result))
  {
    goto LABEL_56;
  }

  *(v2 + 20) = v8;
  v11 = v26 + result;
  if (__OFADD__(v26, result))
  {
LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
    goto LABEL_59;
  }

  if (a1[6])
  {
    v31 = *(a1 + 16) | ((*(a1 + 34) | (*(a1 + 70) << 16)) << 32);
    v8 = a1[7];
    v32 = a1[6];

    v34 = sub_1003B1E70(v33, v8, v31);

    v35 = v11 + v34;
    if (!__OFADD__(v11, v34))
    {
      goto LABEL_18;
    }

LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

LABEL_41:
  result = sub_1002F178C(4999502, 0xE300000000000000, (v2 + 8), v8);
  if (v60)
  {
    v61._countAndFlagsBits = 4999502;
    v61._object = 0xE300000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v61, v8);
  }

  v62 = *(v2 + 20);
  v49 = __CFADD__(v62, result);
  v63 = v62 + result;
  if (v49)
  {
    goto LABEL_64;
  }

  *(v2 + 20) = v63;
  v35 = v11 + result;
  if (__OFADD__(v11, result))
  {
    goto LABEL_46;
  }

LABEL_18:
  v36 = *(v2 + 20);
  result = sub_1002F178C(32, 0xE100000000000000, (v2 + 8), *(v2 + 20));
  if (v37)
  {
    v38._countAndFlagsBits = 32;
    v38._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v38, v36);
  }

  v39 = *(v2 + 20);
  v8 = (v39 + result);
  if (__CFADD__(v39, result))
  {
    goto LABEL_58;
  }

  *(v2 + 20) = v8;
  v11 = v35 + result;
  if (__OFADD__(v35, result))
  {
LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

  if (a1[9])
  {
    v40 = *(a1 + 22) | ((*(a1 + 46) | (*(a1 + 94) << 16)) << 32);
    v41 = a1[10];

    v43 = sub_1003B1E70(v42, v41, v40);

    v44 = v11 + v43;
    if (!__OFADD__(v11, v43))
    {
      goto LABEL_24;
    }

    goto LABEL_52;
  }

LABEL_47:
  result = sub_1002F178C(4999502, 0xE300000000000000, (v2 + 8), v8);
  if (v64)
  {
    v65._countAndFlagsBits = 4999502;
    v65._object = 0xE300000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v65, v8);
  }

  v66 = *(v2 + 20);
  v49 = __CFADD__(v66, result);
  v67 = v66 + result;
  if (v49)
  {
    goto LABEL_65;
  }

  *(v2 + 20) = v67;
  v44 = v11 + result;
  if (__OFADD__(v11, result))
  {
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

LABEL_24:
  v45 = *(v2 + 20);
  result = sub_1002F178C(41, 0xE100000000000000, (v2 + 8), *(v2 + 20));
  if (v46)
  {
    v47._countAndFlagsBits = 41;
    v47._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v47, v45);
  }

  v48 = *(v2 + 20);
  v49 = __CFADD__(v48, result);
  v50 = v48 + result;
  if (v49)
  {
    goto LABEL_60;
  }

  *(v2 + 20) = v50;
  v51 = __OFADD__(v44, result);
  result += v44;
  if (v51)
  {
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
  }

  return result;
}

uint64_t _s12NIOIMAPCore212EmailAddressV23__derived_struct_equalsySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  if (*a1)
  {
    if (!v4)
    {
      return 0;
    }

    v5 = *(a1 + 8);
    v6 = *(a1 + 16) | ((*(a1 + 20) | (*(a1 + 22) << 16)) << 32);
    v7 = *(a2 + 8);
    v8 = *(a2 + 16) | ((*(a2 + 20) | (*(a2 + 22) << 16)) << 32);
    v9 = *a2;

    LOBYTE(v5) = sub_10020FBD0(v10, v5, v6 & 0xFFFFFFFFFFFFFFLL, v4, v7, v8 & 0xFFFFFFFFFFFFFFLL);

    if ((v5 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v4)
  {
    return 0;
  }

  v11 = *(a2 + 24);
  if (*(a1 + 24))
  {
    if (!v11)
    {
      return 0;
    }

    v12 = *(a1 + 32);
    v13 = *(a1 + 40) | ((*(a1 + 44) | (*(a1 + 46) << 16)) << 32);
    v14 = *(a2 + 32);
    v15 = *(a2 + 40) | ((*(a2 + 44) | (*(a2 + 46) << 16)) << 32);
    v16 = *(a2 + 24);

    LOBYTE(v12) = sub_10020FBD0(v17, v12, v13 & 0xFFFFFFFFFFFFFFLL, v11, v14, v15 & 0xFFFFFFFFFFFFFFLL);

    if ((v12 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v11)
  {
    return 0;
  }

  v18 = *(a2 + 48);
  if (*(a1 + 48))
  {
    if (!v18)
    {
      return 0;
    }

    v19 = *(a1 + 56);
    v20 = *(a1 + 64) | ((*(a1 + 68) | (*(a1 + 70) << 16)) << 32);
    v21 = *(a2 + 56);
    v22 = *(a2 + 64) | ((*(a2 + 68) | (*(a2 + 70) << 16)) << 32);
    v23 = *(a2 + 48);

    LOBYTE(v19) = sub_10020FBD0(v24, v19, v20 & 0xFFFFFFFFFFFFFFLL, v18, v21, v22 & 0xFFFFFFFFFFFFFFLL);

    if ((v19 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v18)
  {
    return 0;
  }

  v25 = *(a2 + 72);
  if (*(a1 + 72))
  {
    if (v25)
    {
      v26 = *(a1 + 80);
      v27 = *(a1 + 88) | ((*(a1 + 92) | (*(a1 + 94) << 16)) << 32);
      v28 = *(a2 + 80);
      v29 = *(a2 + 88) | ((*(a2 + 92) | (*(a2 + 94) << 16)) << 32);

      LOBYTE(v29) = sub_10020FBD0(v30, v26, v27 & 0xFFFFFFFFFFFFFFLL, v25, v28, v29 & 0xFFFFFFFFFFFFFFLL);

      if (v29)
      {
        return 1;
      }
    }
  }

  else if (!v25)
  {
    return 1;
  }

  return 0;
}

unint64_t sub_1003E3D44()
{
  result = qword_1005DC510;
  if (!qword_1005DC510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DC510);
  }

  return result;
}

__n128 sub_1003E3D98(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 79) = *(a2 + 79);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_1003E3DBC(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 95))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_1003E3E18(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 94) = 0;
    *(result + 92) = 0;
    *(result + 88) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 95) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 95) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

unint64_t sub_1003E3E9C(unint64_t a1, unint64_t a2)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    v2 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v2)
  {
    return 1;
  }

  v5 = (a1 >> 59) & 1;
  if ((a2 & 0x1000000000000000) == 0)
  {
    LOBYTE(v5) = 1;
  }

  v6 = 4 << v5;
  v7 = a2 & 0xFFFFFFFFFFFFFFLL;
  v8 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
  result = 15;
  while (1)
  {
    v10 = result & 0xC;
    v11 = result;
    if (v10 == v6)
    {
      v15 = result;
      v11 = sub_10010C210(result, a1, a2);
      result = v15;
    }

    v12 = v11 >> 16;
    if (v11 >> 16 >= v2)
    {
      break;
    }

    if ((a2 & 0x1000000000000000) != 0)
    {
      v19 = result;
      v14 = sub_1004A5A24();
      result = v19;
      if (v10 != v6)
      {
        goto LABEL_18;
      }
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v20[0] = a1;
        v20[1] = v7;
        v13 = v20;
      }

      else
      {
        v13 = v8;
        if ((a1 & 0x1000000000000000) == 0)
        {
          v18 = result;
          v13 = sub_1004A67E4();
          result = v18;
        }
      }

      v14 = *(v13 + v12);
      if (v10 != v6)
      {
LABEL_18:
        if ((a2 & 0x1000000000000000) == 0)
        {
          goto LABEL_19;
        }

        goto LABEL_22;
      }
    }

    result = sub_10010C210(result, a1, a2);
    if ((a2 & 0x1000000000000000) == 0)
    {
LABEL_19:
      result = (result & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_24;
    }

LABEL_22:
    if (v2 <= result >> 16)
    {
      goto LABEL_31;
    }

    result = sub_1004A59F4();
LABEL_24:
    if (v14 != 95 && v14 != 45)
    {
      v16 = result;
      v17 = isalnum(v14);
      result = v16;
      if (!v17)
      {
        return 0;
      }
    }

    if (4 * v2 == result >> 14)
    {
      return 1;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

NIOIMAPCore2::MailboxID_optional __swiftcall MailboxID.init(_:)(Swift::String a1)
{
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  v3 = sub_1004A5924();
  if (v3 <= 0 || v3 >= 0x100 || (sub_1003E3E9C(countAndFlagsBits, object) & 1) == 0)
  {

    countAndFlagsBits = 0;
    object = 0;
  }

  v5 = countAndFlagsBits;
  v6 = object;
  result.value.objectID.rawValue._object = v6;
  result.value.objectID.rawValue._countAndFlagsBits = v5;
  result.is_nil = v4;
  return result;
}

NIOIMAPCore2::MailboxID __swiftcall MailboxID.init(stringLiteral:)(Swift::String stringLiteral)
{
  object = stringLiteral._object;
  countAndFlagsBits = stringLiteral._countAndFlagsBits;
  if (sub_1004A5924() - 256) >= 0xFFFFFFFFFFFFFF01 && (sub_1003E3E9C(countAndFlagsBits, object))
  {
    v3 = countAndFlagsBits;
    v4 = object;
  }

  else
  {

    __break(1u);
  }

  result.objectID.rawValue._object = v4;
  result.objectID.rawValue._countAndFlagsBits = v3;
  return result;
}

unint64_t sub_1003E4140@<X0>(unint64_t *a1@<X0>, unint64_t *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  if (sub_1004A5924() - 256) >= 0xFFFFFFFFFFFFFF01 && (result = sub_1003E3E9C(v4, v3), (result))
  {
    *a2 = v4;
    a2[1] = v3;
  }

  else
  {

    __break(1u);
  }

  return result;
}

uint64_t MailboxID.debugDescription.getter(Swift::String a1)
{
  sub_1004A5994(a1);
  v2._countAndFlagsBits = 41;
  v2._object = 0xE100000000000000;
  sub_1004A5994(v2);
  return 40;
}

uint64_t sub_1003E41FC()
{
  sub_1004A5994(*v0);
  v2._countAndFlagsBits = 41;
  v2._object = 0xE100000000000000;
  sub_1004A5994(v2);
  return 40;
}

unint64_t sub_1003E4250()
{
  result = qword_1005DC518;
  if (!qword_1005DC518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DC518);
  }

  return result;
}

unint64_t sub_1003E42A8()
{
  result = qword_1005DC520;
  if (!qword_1005DC520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DC520);
  }

  return result;
}

unint64_t sub_1003E4300()
{
  result = qword_1005DC528;
  if (!qword_1005DC528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DC528);
  }

  return result;
}

Swift::Int __swiftcall EncodeBuffer.writeString(_:)(Swift::String a1)
{
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  v4 = *(v1 + 20);
  result = sub_1002F178C(a1._countAndFlagsBits, a1._object, (v1 + 8), *(v1 + 20));
  if (v6)
  {
    v7._countAndFlagsBits = countAndFlagsBits;
    v7._object = object;
    result = ByteBuffer._setStringSlowpath(_:at:)(v7, v4);
  }

  v8 = *(v1 + 20);
  v9 = __CFADD__(v8, result);
  v10 = v8 + result;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    *(v1 + 20) = v10;
  }

  return result;
}

Swift::Int __swiftcall EncodeBuffer.markStopPoint()()
{
  if (((*(v0 + 1) | (*(v0 + 5) << 32)) & 0x8000000000000000) == 0)
  {
    sub_1003E46E4(*(v0 + 20));
  }

  return 0;
}

uint64_t EncodeBuffer.writeBuffer(_:)(uint64_t a1)
{
  v2 = v1;
  if (*v1 != 1)
  {
    return ByteBuffer.writeBuffer(_:)(a1);
  }

  v12 = (*(a1 + 12) - *(a1 + 8));
  v13._countAndFlagsBits = sub_1004A6CE4();
  sub_1004A5994(v13);

  v14._countAndFlagsBits = 0x5D736574796220;
  v14._object = 0xE700000000000000;
  sub_1004A5994(v14);
  v3 = *(v1 + 20);
  v4 = sub_1002F178C(91, 0xE100000000000000, (v1 + 8), *(v1 + 20));
  if (v5)
  {
    v6._countAndFlagsBits = 91;
    v6._object = 0xE100000000000000;
    v4 = ByteBuffer._setStringSlowpath(_:at:)(v6, v3);
  }

  v7 = v4;

  v9 = *(v2 + 20);
  v10 = __CFADD__(v9, v7);
  v11 = v9 + v7;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    *(v2 + 20) = v11;
    return v7;
  }

  return result;
}

uint64_t EncodeBuffer.writeBytes<A>(_:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = *(*(a2 - 8) + 64);
  v9 = __chkstk_darwin(a1);
  if (*v2 != 1)
  {
    return ByteBuffer.writeBytes<A>(_:)(v5, v6);
  }

  v23 = 91;
  v24 = 0xE100000000000000;
  (*(v8 + 16))(v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v5, v6, v9);
  v10 = *(sub_1004A5CF4() + 16);

  v22[1] = v10;
  v25._countAndFlagsBits = sub_1004A6CE4();
  sub_1004A5994(v25);

  v26._countAndFlagsBits = 0x5D736574796220;
  v26._object = 0xE700000000000000;
  sub_1004A5994(v26);
  v12 = v23;
  v11 = v24;
  v13 = *(v3 + 5);
  v14 = sub_1002F178C(v23, v24, v3 + 1, *(v3 + 5));
  if (v15)
  {
    v16._countAndFlagsBits = v12;
    v16._object = v11;
    v14 = ByteBuffer._setStringSlowpath(_:at:)(v16, v13);
  }

  v17 = v14;

  v19 = *(v3 + 5);
  v20 = __CFADD__(v19, v17);
  v21 = v19 + v17;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 5) = v21;
    return v17;
  }

  return result;
}

void sub_1003E46E4(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = *v1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v4 = sub_10046B5A0(v4);
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  v5 = *(v4 + 2);
  if (v3 >= v5)
  {
LABEL_11:
    __break(1u);
    return;
  }

  v6 = &v4[16 * v3];
  *(v6 + 4) = a1;
  v6[40] = 0;
  *v1 = v4;
  v7 = (v5 + 0x7FFFFFFFFFFFFFFFLL) & (v3 + 1);
  *(v1 + 16) = v7;
  if (*(v1 + 8) == v7)
  {

    sub_1003DAE20();
  }
}

uint64_t sub_1003E4794(uint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v5 < v4;
  v7 = v5 - v4;
  if (v6)
  {
    v7 += *(v3 + 16);
  }

  if (v7 < result)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if ((result & 0x8000000000000000) == 0)
  {
    if (!result)
    {
LABEL_13:
      v1[1] = v4;
      return result;
    }

    v8 = *v1;
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_10046B5A0(v3);
      v3 = result;
    }

    while ((v4 & 0x8000000000000000) == 0)
    {
      v9 = *(v3 + 16);
      if (v4 >= v9)
      {
        goto LABEL_15;
      }

      v10 = v3 + 32 + 16 * v4;
      *v10 = 0;
      *(v10 + 8) = 1;
      v4 = (v9 + 0x7FFFFFFFFFFFFFFFLL) & (v4 + 1);
      if (!--v2)
      {
        *v1 = v3;
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_1003E4850()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v3 - v2;
  if (v3 < v2)
  {
    v4 += *(v1 + 16);
  }

  if (v4 < 1)
  {
    return 0;
  }

  result = sub_1003E48C0(v1, v2, v3);
  if ((v6 & 1) == 0)
  {
    v7 = result;
    sub_1003E4794(1);
    return v7;
  }

  __break(1u);
  return result;
}

uint64_t sub_1003E48C0(uint64_t result, unint64_t a2, uint64_t a3)
{
  if (a2 == a3)
  {
    return 0;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (HIDWORD(a2))
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (*(result + 16) <= a2)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v3 = result + 16 * a2;
  if (*(v3 + 40))
  {
LABEL_12:
    __break(1u);
    return result;
  }

  return *(v3 + 32);
}

uint64_t sub_1003E4914(uint64_t result, uint64_t a2, int64_t a3, uint64_t a4, uint64_t a5, int64_t a6)
{
  v6 = a3 - a2;
  if (a3 < a2)
  {
    v6 += *(result + 16);
    v7 = a6 - a5;
    if (a6 >= a5)
    {
LABEL_3:
      if (v6 != v7)
      {
        return 0;
      }

      goto LABEL_7;
    }
  }

  else
  {
    v7 = a6 - a5;
    if (a6 >= a5)
    {
      goto LABEL_3;
    }
  }

  if (v6 != v7 + *(a4 + 16))
  {
    return 0;
  }

LABEL_7:
  if (a2 < 0)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  if (HIDWORD(a2))
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  if (a5 < 0)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  if (HIDWORD(a5))
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  if (a3 < 0)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  if (!HIDWORD(a3))
  {
    v8 = 0;
    v9 = 0;
    LODWORD(v10) = a5;
    LODWORD(v11) = a2;
    while (1)
    {
      if (a3 >= a2 != v9 && v11 == a3)
      {
        return 1;
      }

      v13 = v11;
      v14 = *(result + 16);
      if (v13 >= v14)
      {
        break;
      }

      v15 = result + 32 + 16 * v13;
      if (*(v15 + 8))
      {
        goto LABEL_43;
      }

      v11 = (v14 - 1) & (v13 + 1);
      v9 = v11 < a2;
      if (HIDWORD(v11))
      {
        goto LABEL_32;
      }

      if (a6 < 0)
      {
        goto LABEL_33;
      }

      if (HIDWORD(a6))
      {
        goto LABEL_34;
      }

      v16 = *v15;
      if (v10 == a6 && (((a6 >= a5) ^ v8) & 1) != 0)
      {
        return 1;
      }

      v17 = *(a4 + 16);
      if (v10 >= v17)
      {
        goto LABEL_35;
      }

      v18 = a4 + 32 + 16 * v10;
      if (*(v18 + 8))
      {
        goto LABEL_44;
      }

      v10 = (v17 - 1) & (v10 + 1);
      if (HIDWORD(v10))
      {
        goto LABEL_36;
      }

      v19 = *v18;
      v8 = v10 < a5;
      if (v16 != v19)
      {
        return 0;
      }
    }

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

LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
  return result;
}

unint64_t EncodeBuffer.nextChunk()()
{
  if (((*(v0 + 1) | (*(v0 + 5) << 32)) & 0x8000000000000000) == 0)
  {
    v1 = sub_1003E4850();
    if ((v2 & 1) == 0)
    {
      v4 = v1;
      v5 = *(v0 + 16);
      v6 = __OFSUB__(v1, v5);
      result = v1 - v5;
      if (!v6)
      {
        result = ByteBuffer.readSlice(length:)(result);
        if (result)
        {
          v7 = (v4 != *(v0 + 20)) << 56;
          return result;
        }

        goto LABEL_12;
      }

      __break(1u);
LABEL_11:
      __break(1u);
LABEL_12:
      __break(1u);
      return result;
    }

    result = ByteBuffer.readSlice(length:)((*(v0 + 20) - *(v0 + 16)));
    if (result)
    {
      return result;
    }

    __break(1u);
  }

  result = ByteBuffer.readSlice(length:)((*(v0 + 20) - *(v0 + 16)));
  if (!result)
  {
    goto LABEL_11;
  }

  return result;
}

void EncodeBuffer.Mode.hash(into:)(uint64_t a1, unint64_t a2)
{
  LODWORD(v3) = (a2 >> 8) & 1;
  if ((a2 & 0x8000000000) != 0)
  {
    sub_1004A6EB4(1uLL);
    sub_1004A6EC4(a2 & 1);
  }

  else
  {
    sub_1004A6EB4(0);
    sub_1004A6EC4(a2 & 1);
    sub_1004A6EC4(v3);
    sub_1004A6EC4(BYTE2(a2) & 1);
    sub_1004A6EC4(BYTE3(a2) & 1);
    v3 = HIDWORD(a2) & 1;
  }

  sub_1004A6EC4(v3);
}

Swift::Int EncodeBuffer.Mode.hashValue.getter(uint64_t a1)
{
  sub_1004A6E94();
  EncodeBuffer.Mode.hash(into:)(v3, a1 & 0xFFFFFFFFFFLL);
  return sub_1004A6F14();
}

Swift::Int sub_1003E4C1C()
{
  v1 = *v0 | (*(v0 + 4) << 32);
  sub_1004A6E94();
  EncodeBuffer.Mode.hash(into:)(v3, v1);
  return sub_1004A6F14();
}

Swift::Int sub_1003E4C7C()
{
  v1 = *v0 | (*(v0 + 4) << 32);
  sub_1004A6E94();
  EncodeBuffer.Mode.hash(into:)(v3, v1);
  return sub_1004A6F14();
}

uint64_t EncodeBuffer.buffer.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24) | (*(v0 + 28) << 32) | (*(v0 + 30) << 48);
}

uint64_t EncodeBuffer.buffer.setter(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v4 = a3;
  v5 = a2;
  v7 = HIDWORD(a2);
  v8 = HIDWORD(a3);
  v9 = HIWORD(a3);
  v10 = *(v3 + 8);

  *(v3 + 8) = a1;
  *(v3 + 16) = v5;
  *(v3 + 20) = v7;
  *(v3 + 24) = v4;
  *(v3 + 28) = v8;
  *(v3 + 30) = v9;
  return result;
}

uint64_t EncodeBuffer.stopPoints.getter()
{
  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[6];
}

uint64_t EncodeBuffer.stopPoints.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = v3[4];

  v3[4] = a1;
  v3[5] = a2;
  v3[6] = a3;
  return result;
}

void EncodeBuffer.hash(into:)(uint64_t a1)
{
  v2 = v1;
  sub_1004A6EC4(*v2 & 1);
  EncodeBuffer.Mode.hash(into:)(a1, *(v2 + 1) | (*(v2 + 5) << 32));
  v4 = *(v2 + 8);
  v5 = *(v2 + 16);
  v6 = *(v2 + 20);
  v7 = *(v2 + 28);
  v8 = *(v2 + 30);
  swift_beginAccess();
  v9 = *(v4 + 24) + (v8 | (v7 << 8));
  sub_1004A6EA4();
  sub_1003DB278(a1, *(v2 + 32), *(v2 + 40), *(v2 + 48));
}

Swift::Int EncodeBuffer.hashValue.getter()
{
  v1 = v0;
  sub_1004A6E94();
  sub_1004A6EC4(*v0 & 1);
  EncodeBuffer.Mode.hash(into:)(v9, *(v1 + 1) | (*(v1 + 5) << 32));
  v2 = *(v0 + 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 20);
  v5 = *(v1 + 28);
  v6 = *(v1 + 30);
  swift_beginAccess();
  v7 = *(v2 + 24) + (v6 | (v5 << 8));
  sub_1004A6EA4();
  sub_1003DB278(v9, *(v1 + 32), *(v1 + 40), *(v1 + 48));
  return sub_1004A6F14();
}

Swift::Int sub_1003E4F74()
{
  sub_1004A6E94();
  EncodeBuffer.hash(into:)(v1);
  return sub_1004A6F14();
}

uint64_t sub_1003E4FB0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v5[2] = *(a1 + 32);
  v6 = *(a1 + 48);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v7[2] = *(a2 + 32);
  v8 = *(a2 + 48);
  return _s12NIOIMAPCore212EncodeBufferV23__derived_struct_equalsySbAC_ACtFZ_0(v5, v7) & 1;
}

void EncodeBuffer.Chunk.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  swift_beginAccess();
  v6 = *(a2 + 24) + ((a4 >> 24) & 0xFFFF00 | BYTE6(a4));
  sub_1004A6EA4();
  sub_1004A6EC4(HIBYTE(a4) & 1);
}

Swift::Int EncodeBuffer.Chunk.hashValue.getter(uint64_t a1, uint64_t a2, unint64_t a3)
{
  sub_1004A6E94();
  swift_beginAccess();
  v5 = *(a1 + 24) + ((a3 >> 24) & 0xFFFF00 | BYTE6(a3));
  sub_1004A6EA4();
  sub_1004A6EC4(HIBYTE(a3) & 1);
  return sub_1004A6F14();
}

Swift::Int sub_1003E51B4()
{
  v1 = 0x100000000000000;
  if (!*(v0 + 23))
  {
    v1 = 0;
  }

  return EncodeBuffer.Chunk.hashValue.getter(*v0, *(v0 + 8), *(v0 + 16) | (*(v0 + 20) << 32) | (*(v0 + 22) << 48) | v1);
}

void sub_1003E51E4(uint64_t a1)
{
  v2 = 0x100000000000000;
  if (!*(v1 + 23))
  {
    v2 = 0;
  }

  EncodeBuffer.Chunk.hash(into:)(a1, *v1, *(v1 + 8), *(v1 + 16) | (*(v1 + 20) << 32) | (*(v1 + 22) << 48) | v2);
}

Swift::Int sub_1003E5214()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 20);
  v5 = *(v0 + 22);
  v6 = *(v0 + 23);
  sub_1004A6E94();
  v7 = 0x100000000000000;
  if (!v6)
  {
    v7 = 0;
  }

  EncodeBuffer.Chunk.hash(into:)(v9, v1, v2, v3 | (v4 << 32) | (v5 << 48) | v7);
  return sub_1004A6F14();
}

uint64_t sub_1003E5294(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 23);
  v3 = *(a2 + 23);
  return sub_10020FBD0(*a1, *(a1 + 8), *(a1 + 16) | (*(a1 + 20) << 32) | (*(a1 + 22) << 48), *a2, *(a2 + 8), *(a2 + 16) | (*(a2 + 20) << 32) | (*(a2 + 22) << 48)) & ~(v2 ^ v3) & 1;
}

unint64_t EncodeBuffer.nextChunk(allowEmptyChunk:)(char a1)
{
  if (((*(v1 + 1) | (*(v1 + 5) << 32)) & 0x8000000000000000) != 0)
  {
    goto LABEL_7;
  }

  result = sub_1003E4850();
  v4 = *(v1 + 16);
  if ((v5 & 1) == 0)
  {
    v7 = result;
    v8 = __OFSUB__(result, v4);
    result -= v4;
    if (!v8)
    {
      result = ByteBuffer.readSlice(length:)(result);
      if (result)
      {
        v9 = (v7 != *(v1 + 20)) << 56;
        return result;
      }

      goto LABEL_15;
    }

    __break(1u);
    goto LABEL_13;
  }

  v6 = *(v1 + 20);
  if ((a1 & 1) == 0 && v6 == v4)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  result = ByteBuffer.readSlice(length:)((v6 - v4));
  if (result)
  {
    return result;
  }

  __break(1u);
LABEL_7:
  result = ByteBuffer.readSlice(length:)((*(v1 + 20) - *(v1 + 16)));
  if (!result)
  {
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
  }

  return result;
}

Swift::Void __swiftcall EncodeBuffer.clear()()
{
  v1 = v0;
  v3 = *(v0 + 32);
  v2 = (v0 + 32);

  *v2 = _swiftEmptyArrayStorage;
  sub_1003E54DC(0, 1, 1);
  v4 = *v2;
  v6 = *(*v2 + 16);
  v5 = *(*v2 + 24);
  if (v6 >= v5 >> 1)
  {
    sub_1003E54DC(v5 > 1, v6 + 1, 1);
    v4 = *v2;
  }

  *(v4 + 16) = v6 + 1;
  v7 = v4 + 16 * v6;
  *(v7 + 32) = 0;
  *(v7 + 40) = 1;
  *(v1 + 40) = 0;
  *(v1 + 48) = 0;
  *(v1 + 32) = v4;
  v8 = *(v1 + 8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v1 + 8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    swift_beginAccess();
    v11 = ByteBuffer._Storage.allocateStorage(capacity:)(*(v10 + 16));

    *(v1 + 8) = v11;
    v10 = v11;
  }

  swift_beginAccess();
  *(v1 + 24) = *(v10 + 16);
  *(v1 + 28) = 0;
  *(v1 + 30) = 0;
  *(v1 + 16) = 0;
}

uint64_t sub_1003E54DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_100475618(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_1003E54FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_10047561C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1003E551C(char *a1, int64_t a2, char a3)
{
  result = sub_10046ADE8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1003E553C(char *a1, int64_t a2, char a3)
{
  result = sub_10046AE04(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1003E555C(char *a1, int64_t a2, char a3)
{
  result = sub_10046AE20(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1003E557C(void *a1, int64_t a2, char a3)
{
  result = sub_10046AF58(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_1003E559C(unint64_t a1, unint64_t a2)
{
  if ((a1 & 0x8000000000) != 0)
  {
    if ((a2 ^ a1))
    {
      LOBYTE(v5) = 0;
    }

    else
    {
      v5 = (a1 >> 8) & 1 ^ ((a2 & 0x100) == 0);
    }

    if ((a2 & 0x8000000000) == 0)
    {
      LOBYTE(v5) = 0;
    }

    return v5 & 1;
  }

  else if ((a2 & 0x8000000000) != 0)
  {
    return 0;
  }

  else
  {
    v2 = vdupq_n_s64(a1);
    v3 = vdupq_n_s64(a2);
    *v2.i8 = vcltz_s16(vshl_n_s16(vmovn_s32(vmvnq_s8(veorq_s8(vuzp1q_s32(vceqzq_s64(vandq_s8(v2, xmmword_100501E10)), vceqzq_s64(vandq_s8(v2, xmmword_100501E20))), vuzp1q_s32(vceqzq_s64(vandq_s8(v3, xmmword_100501E10)), vceqzq_s64(vandq_s8(v3, xmmword_100501E20)))))), 0xFuLL));
    v2.i16[0] = vminv_u16(*v2.i8);
    return v2.i32[0] & (a2 ^ a1 ^ 1) & 1;
  }
}

uint64_t _s12NIOIMAPCore212EncodeBufferV23__derived_struct_equalsySbAC_ACtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if ((*a1 ^ *a2))
  {
    return 0;
  }

  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[5];
  v6 = a2[1];
  v7 = a2[2];
  v8 = *(a2 + 3) | (a2[5] << 16);
  if (v5 < 0)
  {
    if (v8 & 0x80000000) == 0 || ((v3 ^ v6) & 1) != 0 || ((v4 ^ v7))
    {
      return 0;
    }
  }

  else if (v8 < 0 || ((v3 ^ v6) & 1) != 0 || ((v4 ^ v7) & 1) != 0 || ((a1[3] ^ v8) & 1) != 0 || ((a1[4] ^ ((*(a2 + 3) & 0x100) >> 8)) & 1) != 0 || ((v5 ^ ((v8 & 0x10000u) >> 16)) & 1) != 0)
  {
    return 0;
  }

  if (!sub_10020FBD0(*(a1 + 1), *(a1 + 2), *(a1 + 6) | (*(a1 + 14) << 32) | (a1[30] << 48), *(a2 + 1), *(a2 + 2), *(a2 + 6) | (*(a2 + 14) << 32) | (a2[30] << 48)))
  {
    return 0;
  }

  v11 = *(a1 + 4);
  v12 = *(a1 + 5);
  v13 = *(a1 + 6);
  v14 = *(a2 + 4);
  v15 = *(a2 + 5);
  v16 = *(a2 + 6);

  return sub_1003E4914(v11, v12, v13, v14, v15, v16);
}

unint64_t sub_1003E5768()
{
  result = qword_1005DC530;
  if (!qword_1005DC530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DC530);
  }

  return result;
}

unint64_t sub_1003E57C0()
{
  result = qword_1005DC538;
  if (!qword_1005DC538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DC538);
  }

  return result;
}

unint64_t sub_1003E5818()
{
  result = qword_1005DC540;
  if (!qword_1005DC540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DC540);
  }

  return result;
}

uint64_t sub_1003E586C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = (a1 + 1);
  v3 = vld1q_dup_f32(v2);
  v4 = vandq_s8(vshlq_u32(v3, xmmword_100500E40), xmmword_100500E50);
  *v4.i8 = vorr_s8(*v4.i8, *&vextq_s8(v4, v4, 8uLL));
  v5 = v4.i32[0] | v4.i32[1] | (*(a1 + 5) >> 1 << 28);
  if (v5 > 0x80000000)
  {
    v6 = ~v5;
  }

  else
  {
    v6 = -1;
  }

  return (v6 + 1);
}

int8x8_t sub_1003E58F4(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    result = 0;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 56) = 1;
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
      v4 = -a2;
      v5 = vandq_s8(vshlq_u32(vdupq_n_s32(v4), xmmword_100500E60), xmmword_100500E70);
      *v5.i8 = vorr_s8(*v5.i8, *&vextq_s8(v5, v5, 8uLL));
      v6.i64[0] = v5.u32[0];
      v6.i64[1] = v5.u32[1];
      result = vorr_s8(v5.u32[0], *&vextq_s8(v6, v6, 8uLL));
      *(a1 + 5) = ((32 * v4) & 0x1E00000000uLL) >> 32;
      *(a1 + 1) = result.i32[0];
      return result;
    }

    *(a1 + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for EncodeBuffer.Mode(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 5))
  {
    return *a1 + 0x80000000;
  }

  v3 = vld1q_dup_f32(a1);
  v2 = (a1 + 4);
  v4 = vandq_s8(vshlq_u32(v3, xmmword_100500E40), xmmword_100500E50);
  *v4.i8 = vorr_s8(*v4.i8, *&vextq_s8(v4, v4, 8uLL));
  v5 = v4.i32[0] | v4.i32[1] | (*v2 >> 1 << 28);
  if (v5 > 0x80000000)
  {
    v6 = ~v5;
  }

  else
  {
    v6 = -1;
  }

  return (v6 + 1);
}

int8x8_t storeEnumTagSinglePayload for EncodeBuffer.Mode(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    *(a1 + 4) = 0;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 5) = 1;
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
      v3 = -a2;
      v4 = vandq_s8(vshlq_u32(vdupq_n_s32(v3), xmmword_100500E60), xmmword_100500E70);
      *v4.i8 = vorr_s8(*v4.i8, *&vextq_s8(v4, v4, 8uLL));
      v5.i64[0] = v4.u32[0];
      v5.i64[1] = v4.u32[1];
      result = vorr_s8(v4.u32[0], *&vextq_s8(v5, v5, 8uLL));
      *(a1 + 4) = ((32 * v3) & 0x1E00000000uLL) >> 32;
      *a1 = result.i32[0];
      return result;
    }

    *(a1 + 5) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unsigned int *sub_1003E5AC0(unsigned int *result, uint64_t a2)
{
  v2 = (*result | (*(result + 4) << 32)) & 0x101010101010101 | (a2 << 39);
  *result &= 0x1010101u;
  *(result + 4) = BYTE4(v2);
  return result;
}

uint64_t sub_1003E5B04(uint64_t (*a1)(__int128 *))
{
  if (qword_1005DB9D0 != -1)
  {
    swift_once();
  }

  v2 = static ByteBufferAllocator.zeroCapacityWithDefaultAllocator;
  v3 = dword_1005DE398;
  v4 = word_1005DE39C;
  v5 = byte_1005DE39E;

  LOBYTE(v11) = 0;
  BYTE5(v11) = 0;
  *(&v11 + 1) = 65537;
  *(&v11 + 1) = v2;
  *&v12 = qword_1005DE390;
  DWORD2(v12) = v3;
  WORD6(v12) = v4;
  BYTE14(v12) = v5;
  *&v13 = sub_1003DBA20(_swiftEmptyArrayStorage);
  *(&v13 + 1) = v6;
  v14 = v7;
  result = a1(&v11);
  if (DWORD1(v12) < v12)
  {
    __break(1u);
  }

  else if (DWORD2(v12) - (BYTE14(v12) | (WORD6(v12) << 8)) >= DWORD1(v12))
  {
    v15[0] = *(&v11 + 1);
    v15[1] = v12;
    v16 = DWORD2(v12);
    v17 = WORD6(v12);
    v18 = BYTE14(v12);
    v19 = v12;
    v20 = DWORD1(v12);
    v9 = DWORD1(v12) - v12;
    *&v21[0] = 0;
    *(&v21[0] + 1) = 0xE000000000000000;

    sub_1004A5874(v9);
    sub_1003BB2E4(v15, v21);
    sub_1003A52D0(v15);
    v10 = *&v21[0];
    v21[0] = v11;
    v21[1] = v12;
    v21[2] = v13;
    v22 = v14;
    sub_1003E5C94(v21);
    return v10;
  }

  __break(1u);
  return result;
}

unint64_t sub_1003E5CC8()
{
  result = qword_1005DC548;
  if (!qword_1005DC548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DC548);
  }

  return result;
}

unint64_t sub_1003E5D30()
{
  result = qword_1005DC550;
  if (!qword_1005DC550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DC550);
  }

  return result;
}

unint64_t sub_1003E5D98()
{
  result = qword_1005DC558;
  if (!qword_1005DC558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DC558);
  }

  return result;
}

uint64_t EncodedSearchQuery.mailboxUIDValidity.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 4);
  v4 = *(v0 + 20);

  return v1;
}

uint64_t EncodedSearchQuery.mailboxUIDValidity.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + 8);

  *v3 = a1;
  *(v3 + 8) = a2;
  *(v3 + 16) = a3;
  *(v3 + 20) = BYTE4(a3) & 1;
  return result;
}

void EncodedSearchQuery.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 4);
  v4 = *(v0 + 20);
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  if ((v4 & 1) == 0)
  {
    sub_1004A6EC4(1u);
    sub_1004A6EE4(v3);
    if (v0[4])
    {
      goto LABEL_3;
    }

LABEL_7:
    sub_1004A6EC4(0);
    return;
  }

  sub_1004A6EC4(0);
  if (!v0[4])
  {
    goto LABEL_7;
  }

LABEL_3:
  v5 = v0[3];
  sub_1004A6EC4(1u);

  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
}

Swift::Int EncodedSearchQuery.hashValue.getter()
{
  v1 = v0;
  sub_1004A6E94();
  v2 = *v0;
  v3 = v0[1];
  v4 = *(v0 + 4);
  v5 = *(v0 + 20);
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  if ((v5 & 1) == 0)
  {
    sub_1004A6EC4(1u);
    sub_1004A6EE4(v4);
    if (v1[4])
    {
      goto LABEL_3;
    }

LABEL_5:
    sub_1004A6EC4(0);
    return sub_1004A6F14();
  }

  sub_1004A6EC4(0);
  if (!v1[4])
  {
    goto LABEL_5;
  }

LABEL_3:
  v6 = v1[3];
  sub_1004A6EC4(1u);
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  return sub_1004A6F14();
}

void sub_1003E6020()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 4);
  v4 = *(v0 + 20);
  v5 = v0[3];
  v6 = v0[4];
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  if (v4 != 1)
  {
    sub_1004A6EC4(1u);
    sub_1004A6EE4(v3);
    if (v6)
    {
      goto LABEL_3;
    }

LABEL_7:
    sub_1004A6EC4(0);
    return;
  }

  sub_1004A6EC4(0);
  if (!v6)
  {
    goto LABEL_7;
  }

LABEL_3:
  sub_1004A6EC4(1u);

  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
}

Swift::Int sub_1003E60DC()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 4);
  v4 = *(v0 + 20);
  v5 = v0[3];
  v6 = v0[4];
  sub_1004A6E94();
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  if (v4 != 1)
  {
    sub_1004A6EC4(1u);
    sub_1004A6EE4(v3);
    if (v6)
    {
      goto LABEL_3;
    }

LABEL_5:
    sub_1004A6EC4(0);
    return sub_1004A6F14();
  }

  sub_1004A6EC4(0);
  if (!v6)
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_1004A6EC4(1u);
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  return sub_1004A6F14();
}

uint64_t sub_1003E61A4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v6 = *(a1 + 32);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v8 = *(a2 + 32);
  return _s12NIOIMAPCore218EncodedSearchQueryV23__derived_struct_equalsySbAC_ACtFZ_0(v5, v7) & 1;
}

uint64_t _s12NIOIMAPCore218EncodedSearchQueryV23__derived_struct_equalsySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  v5 = *(a1 + 20);
  v6 = *(a2 + 16);
  v7 = *(a2 + 20);
  v8 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (!v8 && (sub_1004A6D34() & 1) == 0)
  {
    return 0;
  }

  if (v5)
  {
    if ((v7 & 1) == 0)
    {
      return 0;
    }

LABEL_11:
    v10 = *(a1 + 32);
    v11 = *(a2 + 32);
    if (v10)
    {
      if (!v11 || (*(a1 + 24) != *(a2 + 24) || v10 != v11) && (sub_1004A6D34() & 1) == 0)
      {
        return 0;
      }
    }

    else if (v11)
    {
      return 0;
    }

    return 1;
  }

  result = 0;
  if ((v7 & 1) == 0 && v4 == v6)
  {
    goto LABEL_11;
  }

  return result;
}

unint64_t sub_1003E62BC()
{
  result = qword_1005DC560;
  if (!qword_1005DC560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DC560);
  }

  return result;
}

unint64_t sub_1003E6324()
{
  result = qword_1005DC568;
  if (!qword_1005DC568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DC568);
  }

  return result;
}

unint64_t sub_1003E638C()
{
  result = qword_1005DC570;
  if (!qword_1005DC570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DC570);
  }

  return result;
}

unint64_t sub_1003E63F4()
{
  result = qword_1005DC578;
  if (!qword_1005DC578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DC578);
  }

  return result;
}

unint64_t sub_1003E64C0()
{
  result = qword_1005DC580;
  if (!qword_1005DC580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DC580);
  }

  return result;
}

uint64_t sub_1003E6524(Swift::String a1)
{
  v2 = v1;
  if (a1._object)
  {
    sub_1004A5994(a1);
    v14._countAndFlagsBits = 34;
    v14._object = 0xE100000000000000;
    sub_1004A5994(v14);
    v2 = (v1 + 20);
    v3 = *(v1 + 20);
    v4 = sub_1002F178C(34, 0xE100000000000000, (v1 + 8), *(v1 + 20));
    if (v5)
    {
      v6._countAndFlagsBits = 34;
      v6._object = 0xE100000000000000;
      v4 = ByteBuffer._setStringSlowpath(_:at:)(v6, v3);
    }

    v7 = v4;

    result = v7;
    v9 = *v2 + v7;
    if (!__CFADD__(*v2, v7))
    {
      goto LABEL_10;
    }

    __break(1u);
  }

  v11 = v2[5];
  v2 += 5;
  v10 = v11;
  result = sub_1002F178C(4999502, 0xE300000000000000, (v2 - 3), v11);
  if (v12)
  {
    v13._countAndFlagsBits = 4999502;
    v13._object = 0xE300000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v13, v10);
  }

  v9 = *v2 + result;
  if (!__CFADD__(*v2, result))
  {
LABEL_10:
    *v2 = v9;
    return result;
  }

  __break(1u);
  return result;
}

unint64_t sub_1003E6638()
{
  result = qword_1005DC588;
  if (!qword_1005DC588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DC588);
  }

  return result;
}

uint64_t sub_1003E669C(uint64_t a1, void *a2)
{
  v5 = *(v2 + 20);
  result = sub_1002F178C(0x2F7367616C662F22, 0xE800000000000000, (v2 + 8), *(v2 + 20));
  if (v7)
  {
    v8._countAndFlagsBits = 0x2F7367616C662F22;
    v8._object = 0xE800000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v8, v5);
  }

  v9 = result;
  v10 = *(v2 + 20);
  v11 = (v10 + result);
  if (__CFADD__(v10, result))
  {
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  *(v2 + 20) = v11;
  result = sub_1002F178C(a1, a2, (v2 + 8), v11);
  if (v12)
  {
    v13._countAndFlagsBits = a1;
    v13._object = a2;
    result = ByteBuffer._setStringSlowpath(_:at:)(v13, v11);
  }

  v14 = *(v2 + 20);
  v15 = (v14 + result);
  if (__CFADD__(v14, result))
  {
    goto LABEL_14;
  }

  *(v2 + 20) = v15;
  v16 = v9 + result;
  if (__OFADD__(v9, result))
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  result = sub_1002F178C(34, 0xE100000000000000, (v2 + 8), v15);
  if (v17)
  {
    v18._countAndFlagsBits = 34;
    v18._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v18, v15);
  }

  v19 = *(v2 + 20);
  v20 = __CFADD__(v19, result);
  v21 = v19 + result;
  if (v20)
  {
    goto LABEL_16;
  }

  *(v2 + 20) = v21;
  v22 = __OFADD__(v16, result);
  result += v16;
  if (v22)
  {
LABEL_17:
    __break(1u);
  }

  return result;
}

unint64_t sub_1003E6834()
{
  result = qword_1005DC590;
  if (!qword_1005DC590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DC590);
  }

  return result;
}

uint64_t sub_1003E6898(uint64_t a1)
{
  v2 = v1;
  v32 = a1;
  v4 = *(a1 + 16);
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
  v31[2] = sub_1003E7420;
  v31[3] = 0;
  v31[4] = v2;
  v31[5] = &v32;
  v31[6] = 32;
  v31[7] = 0xE100000000000000;
  result = sub_10045948C(0, sub_1003E7408, v31, a1);
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

uint64_t sub_1003E6AB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  if (v5)
  {
    v6 = *(v3 + 20);
    result = sub_1002F178C(0, 0xE000000000000000, (v3 + 8), *(v3 + 20));
    if (v8)
    {
      v9._countAndFlagsBits = 0;
      v9._object = 0xE000000000000000;
      result = ByteBuffer._setStringSlowpath(_:at:)(v9, v6);
    }

    v10 = result;
    v11 = *(v3 + 20);
    v12 = __CFADD__(v11, result);
    v13 = v11 + result;
    if (v12)
    {
      goto LABEL_55;
    }

    *(v3 + 20) = v13;
  }

  else
  {
    v10 = 0;
    v13 = *(v3 + 20);
  }

  v14 = v13;
  v15 = v3;
  result = sub_1002F178C(40, 0xE100000000000000, (v3 + 8), v13);
  if (v16)
  {
    v17._countAndFlagsBits = 40;
    v17._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v17, v14);
  }

  v18 = *(v3 + 20);
  v12 = __CFADD__(v18, result);
  v19 = v18 + result;
  if (v12)
  {
    goto LABEL_50;
  }

  *(v3 + 20) = v19;
  if (__OFADD__(v10, result))
  {
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  v67 = v10 + result;
  v71 = v3;
  swift_retain_n();
  swift_retain_n();
  result = swift_retain_n();
  if (v5)
  {
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v69 = v5;
    v70 = v5 - 1;
    v68 = a2;
    while (v22 < *(a2 + 16))
    {
      v81 = v21;
      v23 = *(a2 + v20 + 32);
      v25 = *(a2 + v20 + 40);
      v24 = *(a2 + v20 + 44);
      v26 = *(a2 + v20 + 48);
      v27 = *(a2 + v20 + 52);
      v28 = *(a2 + v20 + 54);
      v73 = v22;
      v74 = v20;
      v29 = *(a3 + v20 + 48);
      v31 = *(a3 + v20 + 32);
      v30 = *(a3 + v20 + 40);
      v32 = *(a3 + v20 + 52) | (*(a3 + v20 + 54) << 16);
      v98[0] = v22;
      v98[1] = v23;
      v99 = v25;
      v100 = v24;
      v101 = v26;
      v102 = v27;
      v103 = v28;
      v104 = v31;
      v105 = v30;
      v106 = v29;
      v108 = BYTE2(v32);
      v75 = v32;
      v107 = v32;
      v109 = v23;
      v110 = v25;
      v111 = v24;
      v112 = v26;
      v113 = v27;
      v114 = v28;
      v115 = v31;
      v116 = v30;
      v119 = BYTE2(v32);
      v118 = v32;
      v117 = v29;
      v120 = v23;
      v121 = v25;
      v122 = v24;
      v79 = v26;
      v123 = v26;
      v124 = v27;
      v125 = v28;
      v126 = v31;
      v127 = v30;
      v76 = v30;
      v130 = BYTE2(v32);
      v129 = v32;
      v128 = v29;
      swift_retain_n();
      swift_retain_n();
      sub_1003E70AC(&v109, &v87);
      sub_1003E70AC(&v120, &v87);

      v85 = v127;
      v86 = v126;
      v83 = v129;
      v84 = v130;
      v77 = v24;
      v82 = v128;
      swift_beginAccess();
      v33 = *(v23 + 24);
      v80 = v27;
      v78 = v28;

      v34 = sub_1004A58D4();
      v36 = v35;

      v37 = sub_100441B60(v34, v36);

      v38 = *(v15 + 20);
      result = sub_1002F178C(32, 0xE100000000000000, (v15 + 8), *(v15 + 20));
      if (v39)
      {
        v40._countAndFlagsBits = 32;
        v40._object = 0xE100000000000000;
        result = ByteBuffer._setStringSlowpath(_:at:)(v40, v38);
      }

      v41 = *(v15 + 20);
      v12 = __CFADD__(v41, result);
      v42 = v41 + result;
      if (v12)
      {
        goto LABEL_44;
      }

      v43 = v98[0];
      *(v15 + 20) = v42;
      v44 = v37 + result;
      if (__OFADD__(v37, result))
      {
        goto LABEL_45;
      }

      result = sub_10045BB90(v86, v85, (v82 | ((v83 | (v84 << 16)) << 32)) & 0xFFFFFFFFFFFFFFLL);
      v45 = v44 + result;
      if (__OFADD__(v44, result))
      {
        goto LABEL_46;
      }

      v46 = v81 + v45;
      if (__OFADD__(v81, v45))
      {
        goto LABEL_47;
      }

      v47 = v29 | (v75 << 32);
      if (v43 >= v70)
      {
        v87 = v23;
        v88 = v25;
        v89 = v77;
        v90 = v79;
        v91 = v80;
        v92 = v78;
        v93 = v31;
        v94 = v76;
        v95 = v47;
        v97 = BYTE6(v47);
        v96 = WORD2(v47);
        sub_100025F40(&v87, &qword_1005DC598, &qword_1005026D8);
        result = sub_100025F40(v98, &qword_1005DC5A0, &qword_1005026E0);
        v52 = 0;
        v15 = v71;
      }

      else
      {
        v15 = v71;
        v48 = *(v71 + 20);
        v49 = sub_1002F178C(32, 0xE100000000000000, (v71 + 8), *(v71 + 20));
        if (v50)
        {
          v51._countAndFlagsBits = 32;
          v51._object = 0xE100000000000000;
          v49 = ByteBuffer._setStringSlowpath(_:at:)(v51, v48);
        }

        v52 = v49;
        v87 = v23;
        v88 = v25;
        v89 = v77;
        v90 = v79;
        v91 = v80;
        v92 = v78;
        v93 = v31;
        v94 = v76;
        v95 = v47;
        v97 = BYTE6(v47);
        v96 = WORD2(v47);
        sub_100025F40(&v87, &qword_1005DC598, &qword_1005026D8);
        result = sub_100025F40(v98, &qword_1005DC5A0, &qword_1005026E0);
        v53 = *(v71 + 20);
        v12 = __CFADD__(v53, v52);
        v54 = v53 + v52;
        if (v12)
        {
          goto LABEL_49;
        }

        *(v71 + 20) = v54;
      }

      v55 = __OFADD__(v46, v52);
      v21 = v46 + v52;
      v5 = v69;
      if (v55)
      {
        goto LABEL_48;
      }

      v22 = v73 + 1;
      v20 = v74 + 24;
      a2 = v68;
      if (v69 == v73 + 1)
      {
        goto LABEL_30;
      }
    }

    goto LABEL_43;
  }

  v21 = 0;
LABEL_30:

  v56 = v67 + v21;
  if (__OFADD__(v67, v21))
  {
    goto LABEL_52;
  }

  v57 = *(v71 + 20);
  result = sub_1002F178C(41, 0xE100000000000000, (v71 + 8), *(v71 + 20));
  if (v58)
  {
    v59._countAndFlagsBits = 41;
    v59._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v59, v57);
  }

  v60 = *(v71 + 20);
  v61 = (v60 + result);
  if (__CFADD__(v60, result))
  {
    goto LABEL_53;
  }

  *(v71 + 20) = v61;
  v55 = __OFADD__(v56, result);
  v62 = v56 + result;
  if (v55)
  {
LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
    return result;
  }

  if (!v5)
  {
    return v62;
  }

  result = sub_1002F178C(0, 0xE000000000000000, (v71 + 8), v61);
  if (v63)
  {
    v64._countAndFlagsBits = 0;
    v64._object = 0xE000000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v64, v61);
  }

  v65 = *(v71 + 20);
  v12 = __CFADD__(v65, result);
  v66 = v65 + result;
  if (v12)
  {
    goto LABEL_56;
  }

  *(v71 + 20) = v66;
  v55 = __OFADD__(v62, result);
  result += v62;
  if (v55)
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
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  return result;
}

uint64_t sub_1003E70AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C9C0(&qword_1005DC598, &qword_1005026D8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1003E7120(uint64_t result)
{
  v2 = v1;
  v3 = result;
  v20 = result;
  v4 = *(result + 16);
  if (v4)
  {
    v5 = *(v1 + 20);
    result = sub_1002F178C(0, 0xE000000000000000, (v1 + 8), *(v1 + 20));
    if (v6)
    {
      v7._countAndFlagsBits = 0;
      v7._object = 0xE000000000000000;
      result = ByteBuffer._setStringSlowpath(_:at:)(v7, v5);
    }

    v8 = result;
    v9 = *(v2 + 20);
    v10 = __CFADD__(v9, result);
    v11 = v9 + result;
    if (v10)
    {
      goto LABEL_17;
    }

    *(v2 + 20) = v11;
  }

  else
  {
    v8 = 0;
  }

  __chkstk_darwin(result);
  v19[2] = sub_1003E7420;
  v19[3] = 0;
  v19[4] = v2;
  v19[5] = &v20;
  v19[6] = 32;
  v19[7] = 0xE100000000000000;
  result = sub_10045948C(0, sub_1003E73CC, v19, v3);
  v12 = v8 + result;
  if (__OFADD__(v8, result))
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (!v4)
  {
    result += v8;
    return result;
  }

  v13 = *(v2 + 20);
  result = sub_1002F178C(0, 0xE000000000000000, (v2 + 8), *(v2 + 20));
  if (v14)
  {
    v15._countAndFlagsBits = 0;
    v15._object = 0xE000000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v15, v13);
  }

  v16 = *(v2 + 20);
  v10 = __CFADD__(v16, result);
  v17 = v16 + result;
  if (v10)
  {
    goto LABEL_18;
  }

  *(v2 + 20) = v17;
  v18 = __OFADD__(v12, result);
  result += v12;
  if (v18)
  {
    __break(1u);
    goto LABEL_16;
  }

  return result;
}

unint64_t sub_1003E729C(uint64_t *a1)
{
  v1 = (*(a1 + 3) - *(a1 + 2));
  v2 = *(a1 + 22);
  v3 = *(a1 + 10);
  v4 = *a1;
  swift_beginAccess();
  v5 = *(v4 + 24);

  v6 = sub_1004A58D4();
  v8 = v7;

  v9 = sub_100441B60(v6, v8);

  return v9;
}

uint64_t sub_1003E7350@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(void *, uint64_t)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X5>, uint64_t a7@<X6>, void *a8@<X7>, uint64_t *a9@<X8>)
{
  result = sub_100494CAC(*a1, *a2, *(a2 + 8), *(a2 + 16), *(a2 + 24) | (*(a2 + 28) << 32) | (*(a2 + 30) << 48), a3, a4, a5, *a6, a7, a8);
  if (!v9)
  {
    *a9 = result;
  }

  return result;
}

uint64_t Envelope.subject.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32) | ((*(v0 + 36) | (*(v0 + 38) << 16)) << 32);
}

uint64_t Envelope.subject.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + 16);

  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  *(v3 + 38) = BYTE6(a3);
  *(v3 + 36) = WORD2(a3);
  *(v3 + 32) = a3;
  return result;
}

uint64_t Envelope.sender.setter(uint64_t a1)
{
  v3 = *(v1 + 48);

  *(v1 + 48) = a1;
  return result;
}

uint64_t Envelope.to.setter(uint64_t a1)
{
  v3 = *(v1 + 64);

  *(v1 + 64) = a1;
  return result;
}

uint64_t Envelope.cc.setter(uint64_t a1)
{
  v3 = *(v1 + 72);

  *(v1 + 72) = a1;
  return result;
}

uint64_t Envelope.bcc.setter(uint64_t a1)
{
  v3 = *(v1 + 80);

  *(v1 + 80) = a1;
  return result;
}

uint64_t Envelope.inReplyTo.getter()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 96);

  return v1;
}

uint64_t Envelope.inReplyTo.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 96);

  *(v2 + 88) = a1;
  *(v2 + 96) = a2;
  return result;
}

uint64_t Envelope.messageID.getter()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 112);

  return v1;
}

uint64_t Envelope.messageID.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 112);

  *(v2 + 104) = a1;
  *(v2 + 112) = a2;
  return result;
}

double Envelope.init(date:subject:from:sender:reply:to:cc:bcc:inReplyTo:messageID:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 a10, __int128 a11, __int128 a12, uint64_t a13)
{
  *&v21 = a1;
  *(&v21 + 1) = a2;
  *&v22 = a3;
  *(&v22 + 1) = a4;
  LODWORD(v23) = a5;
  BYTE6(v23) = BYTE6(a5);
  WORD2(v23) = WORD2(a5);
  *(&v23 + 1) = a6;
  *&v24 = a7;
  *(&v24 + 1) = a8;
  v25 = a10;
  v26 = a11;
  v27 = a12;
  v28 = a13;
  v29[0] = a1;
  v29[1] = a2;
  v29[2] = a3;
  v29[3] = a4;
  v30 = a5;
  v32 = BYTE6(a5);
  v31 = WORD2(a5);
  v33 = a6;
  v34 = a7;
  v35 = a8;
  v36 = a10;
  v37 = a11;
  v38 = a12;
  v39 = a13;
  sub_1002FA030(&v21, v20);
  sub_1003E771C(v29);
  v14 = v26;
  v15 = v27;
  v16 = v24;
  *(a9 + 64) = v25;
  *(a9 + 80) = v14;
  *(a9 + 96) = v15;
  result = *&v21;
  v18 = v22;
  v19 = v23;
  *a9 = v21;
  *(a9 + 16) = v18;
  *(a9 + 112) = v28;
  *(a9 + 32) = v19;
  *(a9 + 48) = v16;
  return result;
}

void Envelope.hash(into:)(uint64_t a1)
{
  v2 = v1;
  if (v2[1])
  {
    v4 = *v2;
    sub_1004A6EC4(1u);
    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
    v5 = v2[2];
    if (v5)
    {
LABEL_3:
      v6 = *(v2 + 38);
      v7 = *(v2 + 18);
      v8 = v2[3];
      sub_1004A6EC4(1u);
      swift_beginAccess();
      v9 = *(v5 + 24) + (v6 | (v7 << 8));
      sub_1004A6EA4();
      goto LABEL_6;
    }
  }

  else
  {
    sub_1004A6EC4(0);
    v5 = v2[2];
    if (v5)
    {
      goto LABEL_3;
    }
  }

  sub_1004A6EC4(0);
LABEL_6:
  sub_1003AB028(a1, v2[5]);
  sub_1003AB028(a1, v2[6]);
  sub_1003AB028(a1, v2[7]);
  sub_1003AB028(a1, v2[8]);
  sub_1003AB028(a1, v2[9]);
  sub_1003AB028(a1, v2[10]);
  if (v2[12])
  {
    v10 = v2[11];
    sub_1004A6EC4(1u);
    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
    if (v2[14])
    {
LABEL_8:
      v11 = v2[13];
      sub_1004A6EC4(1u);
      _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
      return;
    }
  }

  else
  {
    sub_1004A6EC4(0);
    if (v2[14])
    {
      goto LABEL_8;
    }
  }

  sub_1004A6EC4(0);
}

Swift::Int Envelope.hashValue.getter()
{
  sub_1004A6E94();
  Envelope.hash(into:)(v1);
  return sub_1004A6F14();
}

Swift::Int sub_1003E7904()
{
  sub_1004A6E94();
  Envelope.hash(into:)(v1);
  return sub_1004A6F14();
}

BOOL sub_1003E7940(uint64_t a1, __int128 *a2)
{
  v2 = *(a1 + 80);
  v12[4] = *(a1 + 64);
  v12[5] = v2;
  v12[6] = *(a1 + 96);
  v13 = *(a1 + 112);
  v3 = *(a1 + 16);
  v12[0] = *a1;
  v12[1] = v3;
  v4 = *(a1 + 48);
  v12[2] = *(a1 + 32);
  v12[3] = v4;
  v5 = *a2;
  v6 = a2[1];
  v7 = a2[3];
  v14[2] = a2[2];
  v14[3] = v7;
  v14[0] = v5;
  v14[1] = v6;
  v8 = a2[4];
  v9 = a2[5];
  v10 = a2[6];
  v15 = *(a2 + 14);
  v14[5] = v9;
  v14[6] = v10;
  v14[4] = v8;
  return _s12NIOIMAPCore28EnvelopeV23__derived_struct_equalsySbAC_ACtFZ_0(v12, v14);
}

uint64_t sub_1003E79C4(void *a1)
{
  v2 = v1;
  v3 = *(v1 + 20);
  if (!a1[2])
  {
    goto LABEL_20;
  }

  result = sub_1002F178C(40, 0xE100000000000000, (v1 + 8), *(v1 + 20));
  if (v6)
  {
    v7._countAndFlagsBits = 40;
    v7._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v7, v3);
  }

  v8 = result;
  v9 = *(v1 + 20);
  v10 = (v9 + result);
  if (__CFADD__(v9, result))
  {
    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  *(v1 + 20) = v10;
  v34 = a1;
  result = sub_1002F178C(0, 0xE000000000000000, (v1 + 8), v10);
  if (v11)
  {
    v12._countAndFlagsBits = 0;
    v12._object = 0xE000000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v12, v10);
  }

  v13 = result;
  v14 = *(v2 + 20);
  v15 = __CFADD__(v14, result);
  v16 = v14 + result;
  if (v15)
  {
    goto LABEL_26;
  }

  *(v2 + 20) = v16;
  __chkstk_darwin(result);
  v33[2] = sub_1003E7C08;
  v33[3] = 0;
  v33[4] = v2;
  v33[5] = &v34;
  v33[6] = 0;
  v33[7] = 0xE000000000000000;
  result = sub_100451C5C(0, sub_1003E8638, v33, a1);
  v3 = v13 + result;
  if (__OFADD__(v13, result))
  {
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v17 = *(v2 + 20);
  result = sub_1002F178C(0, 0xE000000000000000, (v2 + 8), *(v2 + 20));
  if (v18)
  {
    v19._countAndFlagsBits = 0;
    v19._object = 0xE000000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v19, v17);
  }

  v20 = *(v2 + 20);
  v21 = (v20 + result);
  if (__CFADD__(v20, result))
  {
    goto LABEL_28;
  }

  *(v2 + 20) = v21;
  v22 = v3 + result;
  if (__OFADD__(v3, result))
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v23 = __OFADD__(v8, v22);
  v24 = v8 + v22;
  if (v23)
  {
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
    return result;
  }

  result = sub_1002F178C(41, 0xE100000000000000, (v2 + 8), v21);
  if (v25)
  {
    v26._countAndFlagsBits = 41;
    v26._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v26, v21);
  }

  v27 = *(v2 + 20);
  v15 = __CFADD__(v27, result);
  v28 = v27 + result;
  if (v15)
  {
    goto LABEL_31;
  }

  *(v2 + 20) = v28;
  v23 = __OFADD__(v24, result);
  result += v24;
  if (!v23)
  {
    return result;
  }

  __break(1u);
LABEL_20:
  result = sub_1002F178C(4999502, 0xE300000000000000, (v2 + 8), v3);
  if (v29)
  {
    v30._countAndFlagsBits = 4999502;
    v30._object = 0xE300000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v30, v3);
  }

  v31 = *(v2 + 20);
  v15 = __CFADD__(v31, result);
  v32 = v31 + result;
  if (v15)
  {
    goto LABEL_32;
  }

  *(v2 + 20) = v32;
  return result;
}

uint64_t sub_1003E7C08(unint64_t *a1)
{
  v1 = *a1;
  if ((*a1 & 0x8000000000000000) != 0)
  {
    v5 = v1 & 0x7FFFFFFFFFFFFFFFLL;
    v6 = *(v5 + 32);
    v9 = *(v5 + 16);
    v10 = v6;
    v11 = *(v5 + 48);
    *&v12 = *(v5 + 64);
    sub_1003A31B0(&v9, v8);
    v4 = sub_100441244(&v9);
    sub_1003A320C(&v9);
  }

  else
  {
    v2 = *(v1 + 64);
    v11 = *(v1 + 48);
    v12 = v2;
    v13[0] = *(v1 + 80);
    *(v13 + 15) = *(v1 + 95);
    v3 = *(v1 + 32);
    v9 = *(v1 + 16);
    v10 = v3;
    sub_1003A3260(&v9, v8);
    v4 = sub_1003E367C(&v9);
    sub_1003A32BC(&v9);
  }

  return v4;
}

unint64_t sub_1003E7CBC(uint64_t a1)
{
  v3 = v1;
  v5 = *(v1 + 20);
  result = sub_1002F178C(40, 0xE100000000000000, (v1 + 8), *(v1 + 20));
  if (v7)
  {
    v8._countAndFlagsBits = 40;
    v8._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v8, v5);
  }

  v9 = result;
  v10 = *(v1 + 20);
  v11 = (v10 + result);
  if (__CFADD__(v10, result))
  {
    goto LABEL_83;
  }

  *(v1 + 20) = v11;
  v12 = *(a1 + 8);
  if (v12)
  {
    v13 = sub_100441B60(*a1, v12);
    v14 = v9 + v13;
    if (!__OFADD__(v9, v13))
    {
      goto LABEL_6;
    }

LABEL_64:
    __break(1u);
    goto LABEL_65;
  }

  result = sub_1002F178C(4999502, 0xE300000000000000, (v1 + 8), v11);
  if (v86)
  {
    v87._countAndFlagsBits = 4999502;
    v87._object = 0xE300000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v87, v11);
  }

  v88 = *(v1 + 20);
  v28 = __CFADD__(v88, result);
  v89 = v88 + result;
  if (v28)
  {
    goto LABEL_110;
  }

  *(v1 + 20) = v89;
  v14 = v9 + result;
  if (__OFADD__(v9, result))
  {
    goto LABEL_64;
  }

LABEL_6:
  v15 = *(v1 + 20);
  result = sub_1002F178C(32, 0xE100000000000000, (v1 + 8), *(v1 + 20));
  if (v16)
  {
    v17._countAndFlagsBits = 32;
    v17._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v17, v15);
  }

  v18 = *(v1 + 20);
  v9 = (v18 + result);
  if (__CFADD__(v18, result))
  {
    goto LABEL_84;
  }

  *(v1 + 20) = v9;
  v2 = v14 + result;
  if (__OFADD__(v14, result))
  {
LABEL_85:
    __break(1u);
LABEL_86:
    __break(1u);
    goto LABEL_87;
  }

  if (*(a1 + 16))
  {
    v19 = *(a1 + 32) | ((*(a1 + 36) | (*(a1 + 38) << 16)) << 32);
    v9 = *(a1 + 24);
    v20 = *(a1 + 16);

    v22 = sub_1003B1E70(v21, v9, v19);

    v23 = v2 + v22;
    if (!__OFADD__(v2, v22))
    {
      goto LABEL_12;
    }

LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

LABEL_65:
  result = sub_1002F178C(4999502, 0xE300000000000000, (v1 + 8), v9);
  if (v90)
  {
    v91._countAndFlagsBits = 4999502;
    v91._object = 0xE300000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v91, v9);
  }

  v92 = *(v1 + 20);
  v28 = __CFADD__(v92, result);
  v93 = v92 + result;
  if (v28)
  {
    goto LABEL_111;
  }

  *(v1 + 20) = v93;
  v23 = v2 + result;
  if (__OFADD__(v2, result))
  {
    goto LABEL_70;
  }

LABEL_12:
  v24 = *(v3 + 20);
  result = sub_1002F178C(32, 0xE100000000000000, (v3 + 8), *(v3 + 20));
  if (v25)
  {
    v26._countAndFlagsBits = 32;
    v26._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v26, v24);
  }

  v27 = *(v3 + 20);
  v28 = __CFADD__(v27, result);
  v29 = v27 + result;
  if (v28)
  {
    goto LABEL_86;
  }

  *(v3 + 20) = v29;
  v30 = v23 + result;
  if (__OFADD__(v23, result))
  {
LABEL_87:
    __break(1u);
    goto LABEL_88;
  }

  result = sub_1003E79C4(*(a1 + 40));
  v31 = v30 + result;
  if (__OFADD__(v30, result))
  {
LABEL_88:
    __break(1u);
LABEL_89:
    __break(1u);
    goto LABEL_90;
  }

  v32 = *(v3 + 20);
  result = sub_1002F178C(32, 0xE100000000000000, (v3 + 8), *(v3 + 20));
  if (v33)
  {
    v34._countAndFlagsBits = 32;
    v34._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v34, v32);
  }

  v35 = *(v3 + 20);
  v28 = __CFADD__(v35, result);
  v36 = v35 + result;
  if (v28)
  {
    goto LABEL_89;
  }

  *(v3 + 20) = v36;
  v37 = v31 + result;
  if (__OFADD__(v31, result))
  {
LABEL_90:
    __break(1u);
    goto LABEL_91;
  }

  result = sub_1003E79C4(*(a1 + 48));
  v38 = v37 + result;
  if (__OFADD__(v37, result))
  {
LABEL_91:
    __break(1u);
LABEL_92:
    __break(1u);
    goto LABEL_93;
  }

  v39 = *(v3 + 20);
  result = sub_1002F178C(32, 0xE100000000000000, (v3 + 8), *(v3 + 20));
  if (v40)
  {
    v41._countAndFlagsBits = 32;
    v41._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v41, v39);
  }

  v42 = *(v3 + 20);
  v28 = __CFADD__(v42, result);
  v43 = v42 + result;
  if (v28)
  {
    goto LABEL_92;
  }

  *(v3 + 20) = v43;
  v44 = v38 + result;
  if (__OFADD__(v38, result))
  {
LABEL_93:
    __break(1u);
    goto LABEL_94;
  }

  result = sub_1003E79C4(*(a1 + 56));
  v45 = v44 + result;
  if (__OFADD__(v44, result))
  {
LABEL_94:
    __break(1u);
LABEL_95:
    __break(1u);
    goto LABEL_96;
  }

  v46 = *(v3 + 20);
  result = sub_1002F178C(32, 0xE100000000000000, (v3 + 8), *(v3 + 20));
  if (v47)
  {
    v48._countAndFlagsBits = 32;
    v48._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v48, v46);
  }

  v49 = *(v3 + 20);
  v28 = __CFADD__(v49, result);
  v50 = v49 + result;
  if (v28)
  {
    goto LABEL_95;
  }

  *(v3 + 20) = v50;
  v51 = v45 + result;
  if (__OFADD__(v45, result))
  {
LABEL_96:
    __break(1u);
    goto LABEL_97;
  }

  result = sub_1003E79C4(*(a1 + 64));
  v52 = v51 + result;
  if (__OFADD__(v51, result))
  {
LABEL_97:
    __break(1u);
LABEL_98:
    __break(1u);
    goto LABEL_99;
  }

  v53 = *(v3 + 20);
  result = sub_1002F178C(32, 0xE100000000000000, (v3 + 8), *(v3 + 20));
  if (v54)
  {
    v55._countAndFlagsBits = 32;
    v55._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v55, v53);
  }

  v56 = *(v3 + 20);
  v28 = __CFADD__(v56, result);
  v57 = v56 + result;
  if (v28)
  {
    goto LABEL_98;
  }

  *(v3 + 20) = v57;
  v58 = v52 + result;
  if (__OFADD__(v52, result))
  {
LABEL_99:
    __break(1u);
    goto LABEL_100;
  }

  result = sub_1003E79C4(*(a1 + 72));
  v59 = v58 + result;
  if (__OFADD__(v58, result))
  {
LABEL_100:
    __break(1u);
LABEL_101:
    __break(1u);
    goto LABEL_102;
  }

  v60 = *(v3 + 20);
  result = sub_1002F178C(32, 0xE100000000000000, (v3 + 8), *(v3 + 20));
  if (v61)
  {
    v62._countAndFlagsBits = 32;
    v62._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v62, v60);
  }

  v63 = *(v3 + 20);
  v28 = __CFADD__(v63, result);
  v64 = v63 + result;
  if (v28)
  {
    goto LABEL_101;
  }

  *(v3 + 20) = v64;
  v65 = v59 + result;
  if (__OFADD__(v59, result))
  {
LABEL_102:
    __break(1u);
    goto LABEL_103;
  }

  result = sub_1003E79C4(*(a1 + 80));
  v66 = v65 + result;
  if (__OFADD__(v65, result))
  {
LABEL_103:
    __break(1u);
LABEL_104:
    __break(1u);
    goto LABEL_105;
  }

  v67 = *(v3 + 20);
  result = sub_1002F178C(32, 0xE100000000000000, (v3 + 8), *(v3 + 20));
  if (v68)
  {
    v69._countAndFlagsBits = 32;
    v69._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v69, v67);
  }

  v70 = *(v3 + 20);
  v9 = (v70 + result);
  if (__CFADD__(v70, result))
  {
    goto LABEL_104;
  }

  *(v3 + 20) = v9;
  v71 = __OFADD__(v66, result);
  v23 = v66 + result;
  if (v71)
  {
LABEL_105:
    __break(1u);
LABEL_106:
    __break(1u);
    goto LABEL_107;
  }

  v72 = *(a1 + 96);
  if (v72)
  {
    v73 = sub_100441B60(*(a1 + 88), v72);
    v71 = __OFADD__(v23, v73);
    v74 = v23 + v73;
    if (!v71)
    {
      goto LABEL_48;
    }

LABEL_76:
    __break(1u);
    goto LABEL_77;
  }

LABEL_71:
  result = sub_1002F178C(4999502, 0xE300000000000000, (v3 + 8), v9);
  if (v94)
  {
    v95._countAndFlagsBits = 4999502;
    v95._object = 0xE300000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v95, v9);
  }

  v96 = *(v3 + 20);
  v28 = __CFADD__(v96, result);
  v97 = v96 + result;
  if (v28)
  {
    goto LABEL_112;
  }

  *(v3 + 20) = v97;
  v71 = __OFADD__(v23, result);
  v74 = v23 + result;
  if (v71)
  {
    goto LABEL_76;
  }

LABEL_48:
  v75 = *(v3 + 20);
  result = sub_1002F178C(32, 0xE100000000000000, (v3 + 8), *(v3 + 20));
  if (v76)
  {
    v77._countAndFlagsBits = 32;
    v77._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v77, v75);
  }

  v78 = *(v3 + 20);
  v9 = (v78 + result);
  if (__CFADD__(v78, result))
  {
    goto LABEL_106;
  }

  *(v3 + 20) = v9;
  v71 = __OFADD__(v74, result);
  v74 += result;
  if (v71)
  {
LABEL_107:
    __break(1u);
LABEL_108:
    __break(1u);
    goto LABEL_109;
  }

  v79 = *(a1 + 112);
  if (v79)
  {
    result = sub_100441B60(*(a1 + 104), v79);
    v80 = v74 + result;
    if (!__OFADD__(v74, result))
    {
      goto LABEL_54;
    }

    goto LABEL_82;
  }

LABEL_77:
  result = sub_1002F178C(4999502, 0xE300000000000000, (v3 + 8), v9);
  if (v98)
  {
    v99._countAndFlagsBits = 4999502;
    v99._object = 0xE300000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v99, v9);
  }

  v100 = *(v3 + 20);
  v28 = __CFADD__(v100, result);
  v101 = v100 + result;
  if (v28)
  {
    goto LABEL_113;
  }

  *(v3 + 20) = v101;
  v80 = v74 + result;
  if (__OFADD__(v74, result))
  {
LABEL_82:
    __break(1u);
LABEL_83:
    __break(1u);
LABEL_84:
    __break(1u);
    goto LABEL_85;
  }

LABEL_54:
  v81 = *(v3 + 20);
  result = sub_1002F178C(41, 0xE100000000000000, (v3 + 8), *(v3 + 20));
  if (v82)
  {
    v83._countAndFlagsBits = 41;
    v83._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v83, v81);
  }

  v84 = *(v3 + 20);
  v28 = __CFADD__(v84, result);
  v85 = v84 + result;
  if (v28)
  {
    goto LABEL_108;
  }

  *(v3 + 20) = v85;
  v71 = __OFADD__(v80, result);
  result += v80;
  if (v71)
  {
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

  return result;
}