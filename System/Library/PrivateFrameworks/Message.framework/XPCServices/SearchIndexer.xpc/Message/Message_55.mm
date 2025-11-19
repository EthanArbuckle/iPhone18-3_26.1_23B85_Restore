unint64_t sub_100375B9C(Swift::UInt a1, uint64_t **a2)
{
  v5 = sub_1004A44E4();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a2;
  sub_1004A44D4();
  sub_100374128(v9, v10);
  v12 = v11;
  v13 = *(v6 + 8);
  v13(v9, v5);
  v14 = *a2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v38[0] = *a2;
  v16 = v38[0];
  result = sub_10035E144(a1);
  v19 = v16[2];
  v20 = (v18 & 1) == 0;
  v21 = __OFADD__(v19, v20);
  v22 = v19 + v20;
  if (v21)
  {
    __break(1u);
    goto LABEL_21;
  }

  v2 = v18;
  if (v16[3] < v22)
  {
    sub_10035E71C(v22, isUniquelyReferenced_nonNull_native);
    v16 = v38[0];
    result = sub_10035E144(a1);
    if ((v2 & 1) == (v23 & 1))
    {
      goto LABEL_6;
    }

    result = sub_1004A6E24();
    __break(1u);
  }

  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_22;
  }

LABEL_6:
  *a2 = v16;
  if (v2)
  {
    goto LABEL_9;
  }

LABEL_7:
  v16[(result >> 6) + 8] |= 1 << result;
  *(v16[6] + 8 * result) = a1;
  v24 = v16[7] + 72 * result;
  *(v24 + 64) = 0;
  *(v24 + 32) = 0u;
  *(v24 + 48) = 0u;
  *v24 = 0u;
  *(v24 + 16) = 0u;
  v25 = v16[2];
  v21 = __OFADD__(v25, 1);
  v26 = v25 + 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    v16[2] = v26;
LABEL_9:
    while (1)
    {
      v27 = v16[7] + 72 * result;
      v29 = *(v27 + 64);
      v28 = (v27 + 64);
      v30 = v29 + 1;
      if (!__OFADD__(v29, 1))
      {
        break;
      }

LABEL_21:
      __break(1u);
LABEL_22:
      v37 = result;
      sub_100360AC8();
      result = v37;
      v16 = v38[0];
      *a2 = v38[0];
      if ((v2 & 1) == 0)
      {
        goto LABEL_7;
      }
    }

    *v28 = v30;
    sub_1004A44D4();
    sub_100374128(v9, v16);
    v32 = v31;
    v13(v9, v5);
    if (v12)
    {
      v33 = 0;
    }

    else
    {
      v33 = v32 == 1;
    }

    if (!v33)
    {
      return sub_100374E40(a1);
    }

    result = sub_10037614C(v38, a1);
    if (*(v34 + 72))
    {
      (result)(v38, 0);
      return sub_100374E40(a1);
    }

    v35 = *(v34 + 56);
    v21 = __OFADD__(v35, 1);
    v36 = v35 + 1;
    if (!v21)
    {
      *(v34 + 56) = v36;
      (result)(v38, 0);
      return sub_100374E40(a1);
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_100375E64(Swift::UInt a1, uint64_t **a2, uint64_t a3, uint64_t a4)
{
  v39 = a4;
  v40 = a3;
  v7 = sub_1004A44E4();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a2;
  sub_1004A44D4();
  sub_100374128(v11, v12);
  v14 = v13;
  v15 = *(v8 + 8);
  v15(v11, v7);
  v16 = *a2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v41[0] = *a2;
  v18 = v41[0];
  result = sub_10035E144(a1);
  v21 = v18[2];
  v22 = (v20 & 1) == 0;
  v23 = __OFADD__(v21, v22);
  v24 = v21 + v22;
  if (v23)
  {
    __break(1u);
    goto LABEL_22;
  }

  v4 = v20;
  if (v18[3] >= v24)
  {
    goto LABEL_5;
  }

  sub_10035E71C(v24, isUniquelyReferenced_nonNull_native);
  v18 = v41[0];
  result = sub_10035E144(a1);
  if ((v4 & 1) != (v25 & 1))
  {
    result = sub_1004A6E24();
    __break(1u);
LABEL_5:
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      goto LABEL_24;
    }
  }

  *a2 = v18;
  if (v4)
  {
    goto LABEL_9;
  }

LABEL_7:
  v18[(result >> 6) + 8] |= 1 << result;
  *(v18[6] + 8 * result) = a1;
  v26 = v18[7] + 72 * result;
  *(v26 + 64) = 0;
  *(v26 + 32) = 0u;
  *(v26 + 48) = 0u;
  *v26 = 0u;
  *(v26 + 16) = 0u;
  v27 = v18[2];
  v23 = __OFADD__(v27, 1);
  v28 = v27 + 1;
  if (v23)
  {
    __break(1u);
    goto LABEL_27;
  }

  v18[2] = v28;
LABEL_9:
  while (1)
  {
    v29 = (v18[7] + 72 * result);
    if (!__OFADD__(*v29, v40))
    {
      break;
    }

LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    v38 = result;
    sub_100360AC8();
    result = v38;
    v18 = v41[0];
    *a2 = v41[0];
    if ((v4 & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  *v29 += v40;
  v30 = v29[1];
  v23 = __OFADD__(v30, v39);
  v31 = v30 + v39;
  if (v23)
  {
    goto LABEL_23;
  }

  v29[1] = v31;
  sub_1004A44D4();
  sub_100374128(v11, v18);
  v33 = v32;
  v15(v11, v7);
  if (v14)
  {
    v34 = 0;
  }

  else
  {
    v34 = v33 == 1;
  }

  if (!v34)
  {
    return sub_100374E40(a1);
  }

  result = sub_10037614C(v41, a1);
  if (*(v35 + 72))
  {
    (result)(v41, 0);
    return sub_100374E40(a1);
  }

  v36 = *(v35 + 56);
  v23 = __OFADD__(v36, 1);
  v37 = v36 + 1;
  if (!v23)
  {
    *(v35 + 56) = v37;
    (result)(v41, 0);
    return sub_100374E40(a1);
  }

LABEL_27:
  __break(1u);
  return result;
}

void (*sub_10037614C(uint64_t **a1, Swift::UInt a2))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  *a1 = v4;
  v4[4] = sub_10037795C(v4, a2);
  return sub_10010AD20;
}

uint64_t sub_1003761C4(void *a1, uint64_t a2, uint64_t a3)
{
  v12[1] = a3;
  v5 = sub_10000C9C0(&qword_1005DAB20, &qword_1004F8358);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = v12 - v8;
  v10 = a1[4];
  sub_10002587C(a1, a1[3]);
  sub_100379488();
  sub_1004A6FA4();
  v15 = 0;
  sub_1004A6C64();
  if (v3)
  {
    return (*(v6 + 8))(v9, v5);
  }

  v14 = 1;
  sub_1004A6C64();
  v13 = 2;
  sub_1004A6C64();
  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_100376374(char *a1, char *a2)
{
  if (qword_1004F8778[*a1] == qword_1004F8778[*a2])
  {
    v2 = 1;
  }

  else
  {
    v2 = sub_1004A6D34();
  }

  swift_bridgeObjectRelease_n();
  return v2 & 1;
}

Swift::Int sub_1003763DC()
{
  v1 = *v0;
  sub_1004A6E94();
  v2 = qword_1004F8778[v1];
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

  return sub_1004A6F14();
}

uint64_t sub_100376438()
{
  v1 = qword_1004F8778[*v0];
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
}

Swift::Int sub_100376478()
{
  v1 = *v0;
  sub_1004A6E94();
  v2 = qword_1004F8778[v1];
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

  return sub_1004A6F14();
}

uint64_t sub_1003764D0@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100378F30(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

uint64_t sub_100376534@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100378F30(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10037655C(uint64_t a1)
{
  v2 = sub_100379488();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100376598(uint64_t a1)
{
  v2 = sub_100379488();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1003765D4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_100378F7C(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
  }

  return result;
}

uint64_t sub_10037663C(void *a1)
{
  v3 = v1;
  v5 = sub_10000C9C0(&qword_1005DAAF8, &qword_1004F8340);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v24[-v8];
  v10 = a1[4];
  sub_10002587C(a1, a1[3]);
  sub_100378EDC();
  sub_1004A6FA4();
  v11 = *v3;
  v24[15] = 0;
  sub_1004A6C64();
  if (v2)
  {
    return (*(v6 + 8))(v9, v5);
  }

  v12 = v3[1];
  v24[14] = 1;
  sub_1004A6C64();
  v13 = v3[2];
  v24[13] = 2;
  sub_1004A6C64();
  v14 = v3[3];
  v24[12] = 3;
  sub_1004A6C64();
  v15 = v3[4];
  v24[11] = 4;
  sub_1004A6C64();
  v16 = v3[5];
  v24[10] = 5;
  sub_1004A6C64();
  v17 = v3[6];
  v24[9] = 6;
  sub_1004A6C64();
  v18 = v3[7];
  v24[8] = 7;
  sub_1004A6C64();
  v19 = v3[8];
  v20 = *(v3 + 72);
  v24[7] = 8;
  sub_1004A6C04();
  v22 = v3[10];
  v23 = *(v3 + 88);
  v24[6] = 9;
  sub_1004A6C04();
  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1003768C4(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_100376624(*a1);
  v5 = v4;
  if (v3 == sub_100376624(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1004A6D34();
  }

  return v8 & 1;
}

Swift::Int sub_10037694C()
{
  v1 = *v0;
  sub_1004A6E94();
  sub_100376624(v1);
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

  return sub_1004A6F14();
}

uint64_t sub_1003769B0()
{
  sub_100376624(*v0);
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
}

Swift::Int sub_100376A04()
{
  v1 = *v0;
  sub_1004A6E94();
  sub_100376624(v1);
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

  return sub_1004A6F14();
}

uint64_t sub_100376A64@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100379148(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

uint64_t sub_100376A94@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100376624(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_100376AC8@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100379148(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100376AFC(uint64_t a1)
{
  v2 = sub_100378EDC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100376B38(uint64_t a1)
{
  v2 = sub_100378EDC();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_100376B74@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_100379194(a1, v7);
  if (!v2)
  {
    v5 = v7[3];
    a2[2] = v7[2];
    a2[3] = v5;
    a2[4] = v8[0];
    *(a2 + 73) = *(v8 + 9);
    result = *v7;
    v6 = v7[1];
    *a2 = v7[0];
    a2[1] = v6;
  }

  return result;
}

uint64_t sub_100376BC8(void *a1)
{
  v5 = v1[2];
  v6 = v1[3];
  *v7 = v1[4];
  *&v7[9] = *(v1 + 73);
  v3 = *v1;
  v4 = v1[1];
  return sub_10037663C(a1);
}

uint64_t sub_100376C14(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v10 = v9 | (v4 << 6);
LABEL_12:
    v13 = *(*(v3 + 48) + 8 * v10);
    v14 = *(v3 + 56) + 72 * v10;
    v15 = *(v14 + 64);
    v20 = *(v14 + 48);
    v21 = *(v14 + 32);
    v22 = *(v14 + 16);
    v23 = *v14;
    v16 = sub_10035E144(v13);
    if ((v17 & 1) == 0)
    {
      return 0;
    }

    v18 = v16;
    result = 0;
    v19 = (*(a2 + 56) + 72 * v18);
    if ((vminv_u8(vmovn_s16(vuzp1q_s16(vuzp1q_s32(vceqq_s64(*v19, v23), vceqq_s64(v19[1], v22)), vuzp1q_s32(vceqq_s64(v19[2], v21), vceqq_s64(v19[3], v20))))) & 1) == 0 || v19[4].i64[0] != v15)
    {
      return result;
    }
  }

  while (1)
  {
    v11 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      break;
    }

    if (v11 >= v8)
    {
      return 1;
    }

    v12 = *(v3 + 64 + 8 * v11);
    ++v4;
    if (v12)
    {
      v7 = (v12 - 1) & v12;
      v10 = __clz(__rbit64(v12)) | (v11 << 6);
      v4 = v11;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_100376DD0(unint64_t result, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a5[7] + result) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

uint64_t sub_100376E18(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, void *a7)
{
  a7[(a1 >> 6) + 8] |= 1 << a1;
  v10 = a7[6] + 32 * a1;
  *v10 = a2;
  *(v10 + 8) = a3;
  *(v10 + 16) = a4;
  *(v10 + 24) = a5;
  v11 = a7[7];
  v12 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  result = sub_100020950(a6, v11 + *(*(v12 - 8) + 72) * a1);
  v14 = a7[2];
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    a7[2] = v16;
  }

  return result;
}

unint64_t sub_100376EC4(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  a6[(result >> 6) + 8] |= 1 << result;
  *(a6[6] + 8 * result) = a2;
  v6 = (a6[7] + 24 * result);
  *v6 = a3;
  v6[1] = a4;
  v6[2] = a5;
  v7 = a6[2];
  v8 = __OFADD__(v7, 1);
  v9 = v7 + 1;
  if (v8)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v9;
  }

  return result;
}

_OWORD *sub_100376F14(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_10019A8D4(a4, (a5[7] + 32 * a1));
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

Swift::Int sub_100376F80(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_100367F54(v2);
  }

  v3 = *(v2 + 2);
  v32[0] = (v2 + 32);
  v32[1] = v3;
  result = sub_1004A6CC4(v3);
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = v2 + 128;
      v9 = -1;
      for (i = 1; i != v3; ++i)
      {
        v11 = v9;
        v12 = v8;
        do
        {
          v13 = v12 - 96;
          if (*v12 >= *(v12 - 12))
          {
            break;
          }

          v14 = *(v12 + 1);
          v27 = *v12;
          v28 = v14;
          v15 = *(v12 + 2);
          v16 = *(v12 + 3);
          v17 = *(v12 + 4);
          *&v31[9] = *(v12 + 73);
          v30 = v16;
          *v31 = v17;
          v29 = v15;
          v18 = *(v12 - 1);
          *(v12 + 4) = *(v12 - 2);
          *(v12 + 5) = v18;
          v19 = *(v12 - 3);
          *(v12 + 2) = *(v12 - 4);
          *(v12 + 3) = v19;
          v20 = *(v12 - 5);
          *v12 = *v13;
          *(v12 + 1) = v20;
          v12 -= 96;
          v21 = v29;
          v22 = v30;
          v23 = *v31;
          *(v13 + 73) = *&v31[9];
          v24 = v28;
          *v13 = v27;
          *(v13 + 1) = v24;
          *(v13 + 3) = v22;
          *(v13 + 4) = v23;
          *(v13 + 2) = v21;
        }

        while (!__CFADD__(v11++, 1));
        v8 += 96;
        --v9;
      }
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      v7 = sub_1004A5C64();
      v7[2] = v6;
    }

    else
    {
      v7 = _swiftEmptyArrayStorage;
    }

    *&v27 = v7 + 4;
    *(&v27 + 1) = v6;
    sub_10037710C(&v27, v26, v32, v5);
    v7[2] = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_10037710C(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v89 = result;
  v5 = a3[1];
  if (v5 < 1)
  {
    v7 = _swiftEmptyArrayStorage;
LABEL_88:
    v90 = *v89;
    if (!*v89)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_100141810(v7);
      v7 = result;
    }

    v81 = v7 + 2;
    v82 = v7[2];
    if (v82 >= 2)
    {
      while (*a3)
      {
        v83 = &v7[2 * v82];
        v84 = *v83;
        v85 = &v81[2 * v82];
        v86 = v85[1];
        sub_10037772C((*a3 + 96 * *v83), (*a3 + 96 * *v85), (*a3 + 96 * v86), v90);
        if (v4)
        {
        }

        if (v86 < v84)
        {
          goto LABEL_114;
        }

        if (v82 - 2 >= *v81)
        {
          goto LABEL_115;
        }

        *v83 = v84;
        v83[1] = v86;
        v87 = *v81 - v82;
        if (*v81 < v82)
        {
          goto LABEL_116;
        }

        v82 = *v81 - 1;
        result = memmove(v85, v85 + 2, 16 * v87);
        *v81 = v82;
        if (v82 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v6 = 0;
  v7 = _swiftEmptyArrayStorage;
  while (1)
  {
    v8 = v6++;
    if (v6 < v5)
    {
      v9 = *(*a3 + 96 * v6);
      v10 = 96 * v8;
      v11 = (*a3 + 96 * v8);
      v14 = *v11;
      v13 = v11 + 12;
      v12 = v14;
      v15 = v8 + 2;
      while (v5 != v15)
      {
        v16 = *v13;
        v17 = v13[12];
        v13 += 12;
        ++v15;
        if (v9 < v12 == v17 >= v16)
        {
          v6 = v15 - 1;
          if (v9 >= v12)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v6 = v5;
      if (v9 >= v12)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v6 < v8)
      {
        goto LABEL_119;
      }

      if (v8 < v6)
      {
        v18 = 96 * v6 - 96;
        v19 = v6;
        v20 = v8;
        do
        {
          if (v20 != --v19)
          {
            v22 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v21 = (v22 + v18);
            v95 = *(v22 + v10 + 32);
            v97 = *(v22 + v10 + 48);
            *v99 = *(v22 + v10 + 64);
            *&v99[9] = *(v22 + v10 + 73);
            v91 = *(v22 + v10);
            v93 = *(v22 + v10 + 16);
            result = memmove((v22 + v10), (v22 + v18), 0x60uLL);
            v21[2] = v95;
            v21[3] = v97;
            v21[4] = *v99;
            *(v21 + 73) = *&v99[9];
            *v21 = v91;
            v21[1] = v93;
          }

          ++v20;
          v18 -= 96;
          v10 += 96;
        }

        while (v20 < v19);
        v5 = a3[1];
      }
    }

LABEL_20:
    if (v6 < v5)
    {
      if (__OFSUB__(v6, v8))
      {
        goto LABEL_118;
      }

      if (v6 - v8 < a4)
      {
        if (__OFADD__(v8, a4))
        {
          goto LABEL_120;
        }

        if (v8 + a4 < v5)
        {
          v5 = v8 + a4;
        }

        if (v5 < v8)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v6 != v5)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v6 < v8)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_100085288(0, v7[2] + 1, 1, v7);
      v7 = result;
    }

    v34 = v7[2];
    v33 = v7[3];
    v35 = v34 + 1;
    if (v34 >= v33 >> 1)
    {
      result = sub_100085288((v33 > 1), v34 + 1, 1, v7);
      v7 = result;
    }

    v7[2] = v35;
    v36 = v7 + 4;
    v37 = &v7[2 * v34 + 4];
    *v37 = v8;
    v37[1] = v6;
    v90 = *v89;
    if (!*v89)
    {
      goto LABEL_127;
    }

    if (v34)
    {
      while (1)
      {
        v38 = v35 - 1;
        if (v35 >= 4)
        {
          break;
        }

        if (v35 == 3)
        {
          v39 = v7[4];
          v40 = v7[5];
          v49 = __OFSUB__(v40, v39);
          v41 = v40 - v39;
          v42 = v49;
LABEL_57:
          if (v42)
          {
            goto LABEL_104;
          }

          v55 = &v7[2 * v35];
          v57 = *v55;
          v56 = v55[1];
          v58 = __OFSUB__(v56, v57);
          v59 = v56 - v57;
          v60 = v58;
          if (v58)
          {
            goto LABEL_106;
          }

          v61 = &v36[2 * v38];
          v63 = *v61;
          v62 = v61[1];
          v49 = __OFSUB__(v62, v63);
          v64 = v62 - v63;
          if (v49)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v59, v64))
          {
            goto LABEL_111;
          }

          if (v59 + v64 >= v41)
          {
            if (v41 < v64)
            {
              v38 = v35 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v35 < 2)
        {
          goto LABEL_112;
        }

        v65 = &v7[2 * v35];
        v67 = *v65;
        v66 = v65[1];
        v49 = __OFSUB__(v66, v67);
        v59 = v66 - v67;
        v60 = v49;
LABEL_72:
        if (v60)
        {
          goto LABEL_108;
        }

        v68 = &v36[2 * v38];
        v70 = *v68;
        v69 = v68[1];
        v49 = __OFSUB__(v69, v70);
        v71 = v69 - v70;
        if (v49)
        {
          goto LABEL_110;
        }

        if (v71 < v59)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v38 - 1 >= v35)
        {
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
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v76 = &v36[2 * v38 - 2];
        v77 = *v76;
        v78 = &v36[2 * v38];
        v79 = v78[1];
        sub_10037772C((*a3 + 96 * *v76), (*a3 + 96 * *v78), (*a3 + 96 * v79), v90);
        if (v4)
        {
        }

        if (v79 < v77)
        {
          goto LABEL_99;
        }

        if (v38 > v7[2])
        {
          goto LABEL_100;
        }

        *v76 = v77;
        v76[1] = v79;
        v80 = v7[2];
        if (v38 >= v80)
        {
          goto LABEL_101;
        }

        v35 = v80 - 1;
        result = memmove(&v36[2 * v38], v78 + 2, 16 * (v80 - 1 - v38));
        v7[2] = v80 - 1;
        if (v80 <= 2)
        {
          goto LABEL_3;
        }
      }

      v43 = &v36[2 * v35];
      v44 = *(v43 - 8);
      v45 = *(v43 - 7);
      v49 = __OFSUB__(v45, v44);
      v46 = v45 - v44;
      if (v49)
      {
        goto LABEL_102;
      }

      v48 = *(v43 - 6);
      v47 = *(v43 - 5);
      v49 = __OFSUB__(v47, v48);
      v41 = v47 - v48;
      v42 = v49;
      if (v49)
      {
        goto LABEL_103;
      }

      v50 = &v7[2 * v35];
      v52 = *v50;
      v51 = v50[1];
      v49 = __OFSUB__(v51, v52);
      v53 = v51 - v52;
      if (v49)
      {
        goto LABEL_105;
      }

      v49 = __OFADD__(v41, v53);
      v54 = v41 + v53;
      if (v49)
      {
        goto LABEL_107;
      }

      if (v54 >= v46)
      {
        v72 = &v36[2 * v38];
        v74 = *v72;
        v73 = v72[1];
        v49 = __OFSUB__(v73, v74);
        v75 = v73 - v74;
        if (v49)
        {
          goto LABEL_113;
        }

        if (v41 < v75)
        {
          v38 = v35 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v5 = a3[1];
    if (v6 >= v5)
    {
      goto LABEL_88;
    }
  }

  v23 = *a3;
  v24 = *a3 + 96 * v6;
  v25 = v8 - v6;
LABEL_30:
  v26 = v25;
  v27 = v24;
  while (1)
  {
    v28 = (v27 - 96);
    if (*v27 >= *(v27 - 96))
    {
LABEL_29:
      ++v6;
      v24 += 96;
      --v25;
      if (v6 != v5)
      {
        goto LABEL_30;
      }

      v6 = v5;
      goto LABEL_37;
    }

    if (!v23)
    {
      break;
    }

    v96 = *(v27 + 32);
    v98 = *(v27 + 48);
    *v100 = *(v27 + 64);
    *&v100[9] = *(v27 + 73);
    v92 = *v27;
    v94 = *(v27 + 16);
    v29 = *(v27 - 48);
    *(v27 + 32) = *(v27 - 64);
    *(v27 + 48) = v29;
    v30 = *(v27 - 16);
    *(v27 + 64) = *(v27 - 32);
    *(v27 + 80) = v30;
    v31 = *(v27 - 80);
    *v27 = *v28;
    *(v27 + 16) = v31;
    v27 -= 96;
    v28[2] = v96;
    v28[3] = v98;
    v28[4] = *v100;
    *(v28 + 73) = *&v100[9];
    *v28 = v92;
    v28[1] = v94;
    if (__CFADD__(v26++, 1))
    {
      goto LABEL_29;
    }
  }

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
  return result;
}

uint64_t sub_10037772C(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = (__src - __dst) / 96;
  v10 = a3 - __src;
  v11 = (a3 - __src) / 96;
  if (v9 < v11)
  {
    v12 = 96 * v9;
    if (a4 != __dst || &__dst[v12] <= a4)
    {
      memmove(a4, __dst, v12);
    }

    v13 = &v4[v12];
    if (v8 < 96)
    {
LABEL_6:
      v6 = v7;
      goto LABEL_31;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_6;
      }

      if (*v6 < *v4)
      {
        break;
      }

      v14 = v4;
      v15 = v7 == v4;
      v4 += 96;
      if (!v15)
      {
        goto LABEL_8;
      }

LABEL_9:
      v7 += 96;
      if (v4 >= v13)
      {
        goto LABEL_6;
      }
    }

    v14 = v6;
    v15 = v7 == v6;
    v6 += 96;
    if (v15)
    {
      goto LABEL_9;
    }

LABEL_8:
    memmove(v7, v14, 0x60uLL);
    goto LABEL_9;
  }

  v16 = 96 * v11;
  if (a4 != __src || &__src[v16] <= a4)
  {
    memmove(a4, __src, 96 * v11);
  }

  v13 = &v4[v16];
  if (v10 >= 96 && v6 > v7)
  {
LABEL_20:
    v17 = v6 - 96;
    v5 -= 96;
    v18 = v13;
    do
    {
      v19 = v5 + 96;
      v20 = *(v18 - 12);
      v18 -= 96;
      if (v20 < *v17)
      {
        if (v19 != v6)
        {
          memmove(v5, v6 - 96, 0x60uLL);
        }

        if (v13 <= v4 || (v6 -= 96, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_31;
        }

        goto LABEL_20;
      }

      if (v19 != v13)
      {
        memmove(v5, v18, 0x60uLL);
      }

      v5 -= 96;
      v13 = v18;
    }

    while (v18 > v4);
    v13 = v18;
  }

LABEL_31:
  v21 = 96 * ((v13 - v4) / 96);
  if (v6 != v4 || v6 >= &v4[v21])
  {
    memmove(v6, v4, v21);
  }

  return 1;
}

void (*sub_10037795C(uint64_t *a1, Swift::UInt a2))(uint64_t a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x50uLL);
  }

  v6 = v5;
  *a1 = v5;
  v7 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6[8] = sub_10010C1B4(v6);
  v6[9] = sub_100377A00(v6 + 4, a2, isUniquelyReferenced_nonNull_native);
  return sub_10010BC64;
}

void (*sub_100377A00(uint64_t *a1, Swift::UInt a2, char a3))(char **a1, char a2)
{
  v4 = v3;
  if (&_swift_coroFrameAlloc)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0xF8uLL);
  }

  v9 = v8;
  *a1 = v8;
  *(v8 + 224) = a2;
  *(v8 + 232) = v3;
  v10 = *v3;
  v11 = sub_10035E144(a2);
  *(v9 + 73) = v12 & 1;
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a3 & 1) == 0)
  {
    if (v18 >= v16 && (a3 & 1) == 0)
    {
      v19 = v11;
      sub_100360AC8();
      v11 = v19;
      goto LABEL_11;
    }

    sub_10035E71C(v16, a3 & 1);
    v20 = *v4;
    v11 = sub_10035E144(a2);
    if ((v17 & 1) == (v21 & 1))
    {
      goto LABEL_11;
    }

LABEL_16:
    result = sub_1004A6E24();
    __break(1u);
    return result;
  }

LABEL_11:
  *(v9 + 30) = v11;
  if (v17)
  {
    memmove(v9, (*(*v4 + 56) + 72 * v11), 0x48uLL);
    v22 = 0;
  }

  else
  {
    v22 = 1;
    *v9 = 0u;
    v9[1] = 0u;
    v9[2] = 0u;
    v9[3] = 0u;
    *(v9 + 8) = 0;
  }

  *(v9 + 72) = v22;
  return sub_100377B7C;
}

void sub_100377B7C(char **a1, char a2)
{
  v2 = *a1;
  LOBYTE(v3) = (*a1)[72];
  LOBYTE(v4) = (*a1)[73];
  if (a2)
  {
    if ((*a1)[72])
    {
      goto LABEL_8;
    }

    *(v2 + 18) = *(v2 + 8);
    v5 = *(v2 + 3);
    *(v2 + 7) = *(v2 + 2);
    *(v2 + 8) = v5;
    v6 = *(v2 + 1);
    *(v2 + 5) = *v2;
    *(v2 + 6) = v6;
    v7 = *(v2 + 30);
    v3 = **(v2 + 29);
    if (v4)
    {
      goto LABEL_11;
    }

    v8 = *(v2 + 28);
    v3[(v7 >> 6) + 8] |= 1 << v7;
    *(v3[6] + 8 * v7) = v8;
    v9 = v3[7] + 72 * v7;
    *v9 = *(v2 + 5);
    v10 = *(v2 + 6);
    v11 = *(v2 + 7);
    v12 = *(v2 + 8);
    *(v9 + 64) = *(v2 + 18);
    *(v9 + 32) = v11;
    *(v9 + 48) = v12;
    *(v9 + 16) = v10;
    v13 = v3[2];
    v14 = __OFADD__(v13, 1);
    v4 = v13 + 1;
    if (!v14)
    {
LABEL_13:
      v3[2] = v4;
      goto LABEL_14;
    }

    __break(1u);
  }

  if (v3)
  {
LABEL_8:
    if (v4)
    {
      sub_100358E80(*(v2 + 30), **(v2 + 29));
    }

    goto LABEL_14;
  }

  v15 = *(v2 + 1);
  *(v2 + 152) = *v2;
  *(v2 + 27) = *(v2 + 8);
  v16 = *(v2 + 2);
  *(v2 + 200) = *(v2 + 3);
  *(v2 + 184) = v16;
  *(v2 + 168) = v15;
  v7 = *(v2 + 30);
  v3 = **(v2 + 29);
  if ((v4 & 1) == 0)
  {
    v17 = *(v2 + 28);
    v3[(v7 >> 6) + 8] |= 1 << v7;
    *(v3[6] + 8 * v7) = v17;
    v18 = v3[7] + 72 * v7;
    *v18 = *(v2 + 152);
    v19 = *(v2 + 168);
    v20 = *(v2 + 184);
    v21 = *(v2 + 200);
    *(v18 + 64) = *(v2 + 27);
    *(v18 + 32) = v20;
    *(v18 + 48) = v21;
    *(v18 + 16) = v19;
    v22 = v3[2];
    v14 = __OFADD__(v22, 1);
    v4 = v22 + 1;
    if (v14)
    {
      __break(1u);
      return;
    }

    goto LABEL_13;
  }

LABEL_11:
  memmove((v3[7] + 72 * v7), v2, 0x48uLL);
LABEL_14:

  free(v2);
}

unint64_t sub_100377D24()
{
  result = qword_1005D32D8;
  if (!qword_1005D32D8)
  {
    sub_1004A3F84();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D32D8);
  }

  return result;
}

unint64_t sub_100377D7C()
{
  result = qword_1005DAAA8;
  if (!qword_1005DAAA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DAAA8);
  }

  return result;
}

void sub_100377DD0(__int128 *a1, void *a2)
{
  v2 = 0;
  v3 = 0;
  v6 = a2[8];
  v4 = a2 + 8;
  v5 = v6;
  v7 = 1 << *(v4 - 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & v5;
  v10 = (v7 + 63) >> 6;
  for (i = v4; ; v4 = i)
  {
    v27 = v2;
    if (!v9)
    {
      break;
    }

    v11 = v3;
LABEL_10:
    v12 = __clz(__rbit64(v9)) | (v11 << 6);
    v13 = *(a2[6] + 8 * v12);
    v14 = (a2[7] + 72 * v12);
    v15 = *v14;
    v16 = v14[1];
    v17 = v14[2];
    v18 = v14[3];
    v20 = v14[4];
    v19 = v14[5];
    v24 = v14[6];
    v25 = v14[7];
    v26 = v14[8];
    v9 &= v9 - 1;
    v30 = a1[2];
    v31 = a1[3];
    v32 = *(a1 + 8);
    v28 = *a1;
    v29 = a1[1];
    sub_1004A6EB4(v13);
    sub_1004A6EB4(v15);
    sub_1004A6EB4(v16);
    sub_1004A6EB4(v17);
    sub_1004A6EB4(v18);
    sub_1004A6EB4(v20);
    sub_1004A6EB4(v19);
    sub_1004A6EB4(v24);
    sub_1004A6EB4(v25);
    sub_1004A6EB4(v26);
    v2 = sub_1004A6F14() ^ v27;
    v3 = v11;
  }

  while (1)
  {
    v11 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v11 >= v10)
    {
      sub_1004A6EB4(v2);
      return;
    }

    v9 = v4[v11];
    ++v3;
    if (v9)
    {
      goto LABEL_10;
    }
  }

  __break(1u);
}

uint64_t sub_100378058(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v65 = a1;
  v5 = sub_1004A44E4();
  v63 = *(v5 - 8);
  v64 = v5;
  v6 = *(v63 + 64);
  __chkstk_darwin(v5);
  v62[0] = v62 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1004A3F54();
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  v11 = sub_1004A3F44();
  sub_1004A3EE4();
  v12 = sub_1003510AC(&_swiftEmptyArrayStorage);
  sub_10000C9C0(&qword_1005DAA98, &unk_1004F7FC0);
  sub_1003787DC(&qword_1005DAAB0, sub_100378854);
  sub_1004A3F34();
  v66 = a2;
  v67 = a3;
  v62[1] = v11;
  v69 = v76;
  v26 = v76[2];
  if (!v26)
  {
LABEL_26:

    v76 = v12;
    v18 = v66;
    v17 = v67;
    v20 = v64;
    v19 = v65;
    v21 = v63;
    goto LABEL_27;
  }

  v27 = 0;
  v28 = v69 + 8;
  v68 = v26 - 1;
  while (1)
  {
    v29 = *(v28 - 4);
    v30 = *(v28 - 2);
    v31 = *(v28 - 1);
    v71 = *(v28 - 3);
    v72 = v30;
    v33 = *v28;
    v32 = v28[1];
    v74 = v31;
    v75 = v33;
    v73 = v32;
    v34 = v28[2];
    v35 = v28[3];
    v36 = *(v28 + 40) ? 0 : v28[4];
    v37 = *(v28 + 56) ? 0 : v28[6];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v76 = v12;
    v70 = v29;
    v39 = sub_10035E144(v29);
    v41 = v12[2];
    v42 = (v40 & 1) == 0;
    v43 = __OFADD__(v41, v42);
    v44 = v41 + v42;
    if (v43)
    {
      break;
    }

    v45 = v40;
    if (v12[3] >= v44)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v56 = v39;
        sub_100360AC8();
        v39 = v56;
      }
    }

    else
    {
      sub_10035E71C(v44, isUniquelyReferenced_nonNull_native);
      v39 = sub_10035E144(v70);
      if ((v45 & 1) != (v46 & 1))
      {
        result = sub_1004A6E24();
        __break(1u);
        return result;
      }
    }

    v48 = v73;
    v47 = v74;
    v49 = v75;
    v51 = v71;
    v50 = v72;
    v12 = v76;
    if (v45)
    {
      v52 = (v76[7] + 72 * v39);
      *v52 = v71;
      v52[1] = v50;
      v52[2] = v47;
      v52[3] = v49;
      v52[4] = v48;
      v52[5] = v34;
      v52[6] = v35;
      v52[7] = v36;
      v52[8] = v37;
    }

    else
    {
      v76[(v39 >> 6) + 8] |= 1 << v39;
      *(v12[6] + 8 * v39) = v70;
      v53 = (v12[7] + 72 * v39);
      *v53 = v51;
      v53[1] = v50;
      v53[2] = v47;
      v53[3] = v49;
      v53[4] = v48;
      v53[5] = v34;
      v53[6] = v35;
      v53[7] = v36;
      v53[8] = v37;
      v54 = v12[2];
      v43 = __OFADD__(v54, 1);
      v55 = v54 + 1;
      if (v43)
      {
        goto LABEL_35;
      }

      v12[2] = v55;
    }

    if (v68 == v27)
    {
      goto LABEL_26;
    }

    ++v27;
    v28 += 12;
    if (v27 >= v69[2])
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
  __break(1u);
  __break(1u);
LABEL_35:
  __break(1u);
  __break(1u);
LABEL_36:
  __break(1u);
  do
  {
    __break(1u);
    swift_once();
    v13 = sub_1004A4A74();
    sub_1001C203C(v13, qword_1005DE2D0);
    swift_errorRetain();
    v14 = sub_1004A4A54();
    v15 = sub_1004A6014();

    v16 = os_log_type_enabled(v14, v15);
    v18 = v66;
    v17 = v67;
    v20 = v64;
    v19 = v65;
    v21 = v63;
    if (v16)
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      *v22 = 138412290;
      swift_errorRetain();
      v24 = _swift_stdlib_bridgeErrorToNSError();
      *(v22 + 4) = v24;
      *v23 = v24;
      _os_log_impl(&_mh_execute_header, v14, v15, "Unable to decode serialized Statistics data: %@", v22, 0xCu);
      sub_100190D30(v23);
    }

    v25 = sub_1003510AC(&_swiftEmptyArrayStorage);

    v76 = v25;
LABEL_27:
    v57 = v62[0];
    (*(v21 + 16))(v62[0], v19, v20);
    sub_1004A4464();
    v59 = round(v58 / 21600.0);
    v60 = *(v21 + 8);
    v60(v57, v20);
    if ((*&v59 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      v60(v19, v20);

      sub_100014D40(v18, v17);
      return v76;
    }

    if (v59 <= -9.22337204e18)
    {
      goto LABEL_36;
    }
  }

  while (v59 >= 9.22337204e18);
  sub_100374E40(v59);

  sub_100014D40(v18, v17);
  v60(v19, v20);
  return v76;
}

uint64_t sub_1003787DC(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_10000DEFC(&qword_1005DAA98, &unk_1004F7FC0);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100378854()
{
  result = qword_1005DAAB8;
  if (!qword_1005DAAB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DAAB8);
  }

  return result;
}

unint64_t sub_1003788A8()
{
  result = qword_1005DAAC8;
  if (!qword_1005DAAC8)
  {
    sub_10000DEFC(&qword_1005DAAC0, &unk_1004F7FD0);
    sub_10037892C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DAAC8);
  }

  return result;
}

unint64_t sub_10037892C()
{
  result = qword_1005DAAD0;
  if (!qword_1005DAAD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DAAD0);
  }

  return result;
}

unint64_t sub_100378980(unint64_t result, char a2, void *a3)
{
  v4 = *(result + 16);
  if (v4)
  {
    LOBYTE(i) = a2;
    v6 = result;
    v8 = *(result + 32);
    v7 = *(result + 40);
    v9 = *(result + 48);
    v42 = *(result + 56);
    v10 = *(result + 64);
    v11 = *a3;

    result = sub_10035E1B0(v8, v7);
    v13 = v11[2];
    v14 = (v12 & 1) == 0;
    v15 = __OFADD__(v13, v14);
    v16 = v13 + v14;
    if (v15)
    {
      goto LABEL_22;
    }

    LOBYTE(v3) = v12;
    if (v11[3] < v16)
    {
      sub_10035F474(v16, i & 1);
      v17 = *a3;
      result = sub_10035E1B0(v8, v7);
      if ((v3 & 1) == (v18 & 1))
      {
        goto LABEL_7;
      }

LABEL_5:
      result = sub_1004A6E24();
      __break(1u);
    }

    if ((i & 1) == 0)
    {
      goto LABEL_24;
    }

    while (1)
    {
LABEL_7:
      v19 = *a3;
      if (v3)
      {
        v8 = v10;
        v20 = result;

        v21 = v19[7] + 24 * v20;
        *v21 = v9;
        *(v21 + 8) = v42;
        *(v21 + 16) = v8;
        v3 = v4 - 1;
        if (v4 == 1)
        {
          return result;
        }
      }

      else
      {
        v19[(result >> 6) + 8] |= 1 << result;
        v22 = (v19[6] + 16 * result);
        *v22 = v8;
        v22[1] = v7;
        v23 = v19[7] + 24 * result;
        *v23 = v9;
        *(v23 + 8) = v42;
        *(v23 + 16) = v10;
        v24 = v19[2];
        v15 = __OFADD__(v24, 1);
        v25 = v24 + 1;
        if (v15)
        {
          goto LABEL_23;
        }

        v19[2] = v25;
        v3 = v4 - 1;
        if (v4 == 1)
        {
          return result;
        }
      }

      for (i = (v6 + 104); ; i += 40)
      {
        v7 = *(i - 4);
        v6 = *(i - 3);
        v10 = *(i - 2);
        v9 = *(i - 1);
        v4 = *i;
        v28 = *a3;

        result = sub_10035E1B0(v7, v6);
        v30 = v28[2];
        v31 = (v29 & 1) == 0;
        v15 = __OFADD__(v30, v31);
        v32 = v30 + v31;
        if (v15)
        {
          break;
        }

        v8 = v29;
        if (v28[3] < v32)
        {
          sub_10035F474(v32, 1);
          v33 = *a3;
          result = sub_10035E1B0(v7, v6);
          if ((v8 & 1) != (v34 & 1))
          {
            goto LABEL_5;
          }
        }

        v35 = *a3;
        if (v8)
        {
          v26 = result;

          v27 = v35[7] + 24 * v26;
          *v27 = v10;
          *(v27 + 8) = v9;
          *(v27 + 16) = v4;
        }

        else
        {
          v35[(result >> 6) + 8] |= 1 << result;
          v36 = (v35[6] + 16 * result);
          *v36 = v7;
          v36[1] = v6;
          v37 = v35[7] + 24 * result;
          *v37 = v10;
          *(v37 + 8) = v9;
          *(v37 + 16) = v4;
          v38 = v35[2];
          v15 = __OFADD__(v38, 1);
          v39 = v38 + 1;
          if (v15)
          {
            goto LABEL_23;
          }

          v35[2] = v39;
        }

        if (!--v3)
        {
          return result;
        }
      }

LABEL_22:
      __break(1u);
LABEL_23:
      __break(1u);
LABEL_24:
      v40 = v10;
      v41 = result;
      sub_1003611F0();
      result = v41;
      v10 = v40;
    }
  }

  return result;
}

uint64_t sub_100378C44(uint64_t a1)
{
  if (*(a1 + 16) <= 1u)
  {
    return *(a1 + 16);
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t sub_100378C7C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 89))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100378C9C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 88) = 0;
    *result = (a2 - 1);
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

  *(result + 89) = v3;
  return result;
}

uint64_t sub_100378CF0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 72))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100378D10(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = (a2 - 1);
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

  *(result + 72) = v3;
  return result;
}

unint64_t sub_100378D80()
{
  result = qword_1005DAAD8;
  if (!qword_1005DAAD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DAAD8);
  }

  return result;
}

unint64_t sub_100378DD8()
{
  result = qword_1005DAAE0;
  if (!qword_1005DAAE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DAAE0);
  }

  return result;
}

unint64_t sub_100378E30()
{
  result = qword_1005DAAE8;
  if (!qword_1005DAAE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DAAE8);
  }

  return result;
}

unint64_t sub_100378E88()
{
  result = qword_1005DAAF0;
  if (!qword_1005DAAF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DAAF0);
  }

  return result;
}

unint64_t sub_100378EDC()
{
  result = qword_1005DAB00;
  if (!qword_1005DAB00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DAB00);
  }

  return result;
}

uint64_t sub_100378F30(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_1005B2E78;
  v6._object = a2;
  v4 = sub_1004A6AF4(v3, v6);

  if (v4 >= 3)
  {
    return 3;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_100378F7C(uint64_t *a1)
{
  v2 = sub_10000C9C0(&qword_1005DAB10, &qword_1004F8350);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v10 - v5;
  v7 = a1[4];
  sub_10002587C(a1, a1[3]);
  sub_100379488();
  sub_1004A6F84();
  v13 = 0;
  v8 = sub_1004A6B84();
  v12 = 1;
  sub_1004A6B84();
  v11 = 2;
  sub_1004A6B84();
  (*(v3 + 8))(v6, v2);
  sub_1000197E0(a1);
  return v8;
}

uint64_t sub_100379148(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_1005B2EE0;
  v6._object = a2;
  v4 = sub_1004A6AF4(v3, v6);

  if (v4 >= 0xA)
  {
    return 10;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_100379194@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_10000C9C0(&qword_1005DAB08, &qword_1004F8348);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v22 - v8;
  v10 = a1[4];
  sub_10002587C(a1, a1[3]);
  sub_100378EDC();
  sub_1004A6F84();
  if (v2)
  {
    return sub_1000197E0(a1);
  }

  v41 = 0;
  v11 = sub_1004A6B84();
  v40 = 1;
  v12 = sub_1004A6B84();
  v39 = 2;
  v29 = sub_1004A6B84();
  v38 = 3;
  v28 = sub_1004A6B84();
  v37 = 4;
  v27 = sub_1004A6B84();
  v36 = 5;
  v26 = sub_1004A6B84();
  v35 = 6;
  v25 = sub_1004A6B84();
  v32 = 7;
  v24 = sub_1004A6B84();
  v31 = 8;
  v23 = sub_1004A6B34();
  v34 = v13 & 1;
  v30 = 9;
  v22 = sub_1004A6B34();
  v15 = v14;
  (*(v6 + 8))(v9, v5);
  v15 &= 1u;
  v33 = v15;
  v16 = v34;
  result = sub_1000197E0(a1);
  *a2 = v11;
  *(a2 + 8) = v12;
  v18 = v28;
  *(a2 + 16) = v29;
  *(a2 + 24) = v18;
  v19 = v26;
  *(a2 + 32) = v27;
  *(a2 + 40) = v19;
  v20 = v24;
  *(a2 + 48) = v25;
  *(a2 + 56) = v20;
  v21 = v22;
  *(a2 + 64) = v23;
  *(a2 + 72) = v16;
  *(a2 + 80) = v21;
  *(a2 + 88) = v15;
  return result;
}

unint64_t sub_100379488()
{
  result = qword_1005DAB18;
  if (!qword_1005DAB18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DAB18);
  }

  return result;
}

unint64_t sub_100379530()
{
  result = qword_1005DAB28;
  if (!qword_1005DAB28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DAB28);
  }

  return result;
}

unint64_t sub_100379588()
{
  result = qword_1005DAB30;
  if (!qword_1005DAB30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DAB30);
  }

  return result;
}

unint64_t sub_1003795E0()
{
  result = qword_1005DAB38;
  if (!qword_1005DAB38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DAB38);
  }

  return result;
}

unint64_t sub_100379638()
{
  result = qword_1005DAB40;
  if (!qword_1005DAB40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DAB40);
  }

  return result;
}

unint64_t sub_100379690()
{
  result = qword_1005DAB48;
  if (!qword_1005DAB48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DAB48);
  }

  return result;
}

unint64_t sub_1003796E8()
{
  result = qword_1005DAB50;
  if (!qword_1005DAB50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DAB50);
  }

  return result;
}

unint64_t sub_100379740()
{
  result = qword_1005DAB58;
  if (!qword_1005DAB58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DAB58);
  }

  return result;
}

unint64_t sub_100379798()
{
  result = qword_1005DAB60;
  if (!qword_1005DAB60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DAB60);
  }

  return result;
}

unint64_t sub_1003797F0()
{
  result = qword_1005DAB68;
  if (!qword_1005DAB68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DAB68);
  }

  return result;
}

void sub_10037989C(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v8 = sub_1004A6374();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  *&v11 = __chkstk_darwin(v8).n128_u64[0];
  v13 = &v28 - v12;
  v14 = [v3 userInfo];
  v32 = *a1;
  v28 = *a1;
  sub_10035A4AC(&v32, v30);
  swift_bridgeObjectRetain_n();
  v15 = [v14 __swift_objectForKeyedSubscript:sub_1004A6DF4()];
  swift_unknownObjectRelease();

  if (v15)
  {
    sub_1004A64E4();
    swift_unknownObjectRelease();
  }

  else
  {
    v28 = 0u;
    v29 = 0u;
  }

  v31[0] = v28;
  v31[1] = v29;
  if (*(&v29 + 1))
  {
    sub_10019A8E4(0, &qword_1005D51B0, NSNumber_ptr);
    if (swift_dynamicCast())
    {
      sub_1002F9A9C(&v32);
      sub_1002F9A9C(&v32);
      v16 = v30[0];
      v18 = *(a1 + 6);
      v17 = *(a1 + 7);
      v19 = v30[0];
      v18(v16);

      return;
    }
  }

  else
  {
    sub_10030805C(v31);
  }

  v20 = [v4 persistentStoreCoordinator];
  if (!v20)
  {
    sub_1002F9A9C(&v32);
    (*(*(a2 - 8) + 56))(v13, 1, 1, a2);
    goto LABEL_12;
  }

  v21 = v20;
  sub_10037A430(a1, a2, v13);

  v22 = *(a2 - 8);
  LODWORD(v21) = (*(v22 + 48))(v13, 1, a2);
  sub_1002F9A9C(&v32);
  if (v21 == 1)
  {
LABEL_12:
    (*(v9 + 8))(v13, v8);
    v24 = *(a1 + 7);
    (*(a1 + 6))(0);
    v23 = [v4 userInfo];
    goto LABEL_13;
  }

  (*(v22 + 32))(a3, v13, a2);
  v23 = [v4 userInfo];
LABEL_13:
  v25 = v23;
  v26 = *(a1 + 5);
  v27 = (*(a1 + 4))(a3);
  v31[0] = v32;
  [v25 __swift_setObject:v27 forKeyedSubscript:sub_1004A6DF4()];

  swift_unknownObjectRelease();
}

uint64_t sub_100379C44(uint64_t a1)
{
  v2 = *((swift_isaMask & *v1) + 0x50);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(a1);
  v6 = v16 - v5;
  sub_1004A4094();
  if (*(&v18 + 1))
  {
    sub_10019A8E4(0, &qword_1005DA508, NSManagedObjectContext_ptr);
    if (swift_dynamicCast())
    {
      v7 = *&v16[0];
      v8 = [*&v16[0] persistentStoreCoordinator];
      if (v8)
      {
        v9 = v8;
        v10 = (v1 + qword_1005DAB70);
        v11 = *(v1 + qword_1005DAB70 + 48);
        v19 = *(v1 + qword_1005DAB70 + 32);
        v20 = v11;
        v21 = *(v1 + qword_1005DAB70 + 64);
        v12 = *(v1 + qword_1005DAB70 + 16);
        v17 = *(v1 + qword_1005DAB70);
        v18 = v12;
        sub_10037989C(&v17, v2, v6);
        v13 = v10[3];
        v16[2] = v10[2];
        v16[3] = v13;
        v16[4] = v10[4];
        v14 = v10[1];
        v16[0] = *v10;
        v16[1] = v14;
        sub_100379EAC(v6, v16);

        return (*(v3 + 8))(v6, v2);
      }
    }
  }

  else
  {
    sub_10030805C(&v17);
  }

  result = sub_1004A69A4();
  __break(1u);
  return result;
}

void sub_100379EAC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = [v2 persistentStores];
  sub_10019A8E4(0, &qword_1005DA510, NSPersistentStore_ptr);
  v7 = sub_1004A5C14();

  if (!(v7 >> 62))
  {
    if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_17:

LABEL_22:
    sub_1004A69A4();
    __break(1u);
    return;
  }

  if (!sub_1004A6A34())
  {
    goto LABEL_17;
  }

LABEL_3:
  if ((v7 & 0xC000000000000001) != 0)
  {
    v8 = sub_1004A6794();
  }

  else
  {
    if (!*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
LABEL_21:

      goto LABEL_22;
    }

    v8 = *(v7 + 32);
  }

  v6 = v8;

  v9 = [v2 persistentStores];
  v10 = sub_1004A5C14();

  if (v10 >> 62)
  {
    v11 = sub_1004A6A34();
  }

  else
  {
    v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v11 != 1)
  {
    goto LABEL_21;
  }

  v12 = [v3 metadataForPersistentStore:v6];
  v13 = sub_1004A5514();

  v14 = *(a2 + 40);
  v15 = (*(a2 + 32))(a1);
  v16 = *a2;
  v17 = *(a2 + 8);
  if (*(v13 + 16) && (v18 = sub_100064090(*a2, *(a2 + 8)), (v19 & 1) != 0) && (sub_1001659C8(*(v13 + 56) + 32 * v18, &v29), sub_10019A8E4(0, &qword_1005D51B0, NSNumber_ptr), (swift_dynamicCast() & 1) != 0) && (v20 = v15, v21 = sub_1004A62F4(), *&v28[0], v20, (v21 & 1) != 0))
  {

    isa = v6;
    v23 = v20;
  }

  else
  {
    v24 = *(a2 + 72);
    (*(a2 + 64))(a1);
    v30 = sub_10019A8E4(0, &qword_1005D51B0, NSNumber_ptr);
    *&v29 = v15;
    sub_10019A8D4(&v29, v28);
    v25 = v15;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_100359464(v28, v16, v17, isUniquelyReferenced_nonNull_native);
    isa = sub_1004A54F4().super.isa;
    v27 = v3;
    v23 = v6;
    [v27 setMetadata:isa forPersistentStore:v6];
  }
}

uint64_t sub_10037A240(void *a1)
{
  v2 = sub_1004A40A4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1004A4084();
  v7 = a1;
  sub_100379C44(v6);

  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_10037A350(uint64_t a1)
{
  v1 = *(a1 + qword_1005DAB70 + 8);
  v2 = *(a1 + qword_1005DAB70 + 24);
  v3 = *(a1 + qword_1005DAB70 + 40);
  v4 = *(a1 + qword_1005DAB70 + 56);
  v5 = *(a1 + qword_1005DAB70 + 72);
}

uint64_t sub_10037A3DC()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_10037A430@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = [v3 persistentStores];
  sub_10019A8E4(0, &qword_1005DA510, NSPersistentStore_ptr);
  v8 = sub_1004A5C14();

  if (v8 >> 62)
  {
    if (sub_1004A6A34())
    {
LABEL_3:
      if ((v8 & 0xC000000000000001) != 0)
      {
        v9 = sub_1004A6794();
      }

      else
      {
        if (!*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_21:

          goto LABEL_22;
        }

        v9 = *(v8 + 32);
      }

      v7 = v9;

      v10 = [v3 persistentStores];
      v11 = sub_1004A5C14();

      if (v11 >> 62)
      {
        v12 = sub_1004A6A34();
      }

      else
      {
        v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v12 == 1)
      {
        v13 = [v3 metadataForPersistentStore:v7];
        v14 = sub_1004A5514();

        if (*(v14 + 16) && (v15 = sub_100064090(*a1, a1[1]), (v16 & 1) != 0))
        {
          sub_1001659C8(*(v14 + 56) + 32 * v15, v23);

          sub_10019A8E4(0, &qword_1005D51B0, NSNumber_ptr);
          if (swift_dynamicCast())
          {
            v18 = a1[6];
            v17 = a1[7];
            v19 = v22;
            v18();

            v20 = 0;
            return (*(*(a2 - 8) + 56))(a3, v20, 1, a2);
          }
        }

        else
        {
        }

        v20 = 1;
        return (*(*(a2 - 8) + 56))(a3, v20, 1, a2);
      }

      goto LABEL_21;
    }
  }

  else if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

LABEL_22:
  result = sub_1004A69A4();
  __break(1u);
  return result;
}

id sub_10037A73C()
{
  v0 = sub_10000C9C0(&qword_1005CD7A0, &unk_1004CF590);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0);
  v3 = &v41 - v2;
  v4 = sub_10000C9C0(&qword_1005CECC8, &qword_1004D1828);
  v5 = v4 - 8;
  v6 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v8 = &v41 - v7;
  v49 = _swiftEmptyArrayStorage;
  v50 = _swiftEmptyArrayStorage;
  sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  MessageIdentifierSet.ranges.getter(v3);
  sub_10037AE10(v3, v8);
  v9 = *(v5 + 44);
  sub_10000C9C0(&qword_1005CD7B0, &unk_1004D16C0);
  v10 = sub_1004A7044();
  sub_100025F40(v3, &qword_1005CD7A0, &unk_1004CF590);
  v42 = v9;
  *&v8[v9] = v10;
  v11 = sub_1004A7074();
  v45 = _swiftEmptyArrayStorage;
  v12 = _swiftEmptyArrayStorage;
  if (v10 == v11)
  {
LABEL_20:
    sub_100025F40(v8, &qword_1005CECC8, &qword_1004D1828);
    if (!(v12 >> 62))
    {
      if (!*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_36;
      }

      goto LABEL_22;
    }
  }

  else
  {
    v43 = " persistent store coordinator.";
    v44 = _swiftEmptyArrayStorage;
    v45 = _swiftEmptyArrayStorage;
    while (1)
    {
      MessageIdentifierSet.RangeView.subscript.getter(v0, &v47);
      v14 = v47;
      v13 = HIDWORD(v47);
      v15 = sub_1004A7044();
      v16 = sub_1004A7074();
      if (v10 < v15 || v10 >= v16)
      {
        break;
      }

      if (v13 - v14 <= 1)
      {
        v22 = v0;
        while (1)
        {
          if (v13 == v14)
          {
            v23 = 0;
          }

          else
          {
            v23 = v14 + 1;
            if (v14 == -1)
            {
              __break(1u);
              goto LABEL_34;
            }
          }

          sub_1004A6F64();
          sub_1004A5BF4();
          if (*((v50 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v50 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_1004A5C44();
          }

          sub_1004A5C84();
          v24 = v13 == v14;
          LODWORD(v14) = v23;
          if (v24)
          {
            v44 = v50;
            v0 = v22;
            goto LABEL_3;
          }
        }
      }

      v47 = 0;
      v48 = 0xE000000000000000;
      sub_1004A6724(23);
      v46 = v14;
      v17 = sub_1004A6CE4();
      v19 = v18;

      v47 = v17;
      v48 = v19;
      v52._object = (v43 | 0x8000000000000000);
      v52._countAndFlagsBits = 0xD000000000000013;
      sub_1004A5994(v52);
      v46 = v13;
      v53._countAndFlagsBits = sub_1004A6CE4();
      sub_1004A5994(v53);

      v20 = sub_1004A5734();

      v21 = [objc_opt_self() predicateWithFormat:v20 argumentArray:0];

      sub_1004A5BF4();
      if (*((v49 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v49 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v25 = v0;
        v26 = *((v49 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_1004A5C44();
        v0 = v25;
      }

      sub_1004A5C84();
      v45 = v49;
LABEL_3:
      if (++v10 == sub_1004A7074())
      {
        *&v8[v42] = v10;
        v12 = v44;
        goto LABEL_20;
      }
    }

LABEL_34:
    __break(1u);
  }

  if (!sub_1004A6A34())
  {
LABEL_36:

    v32 = v45;
    if (v45 >> 62)
    {
      goto LABEL_37;
    }

    goto LABEL_25;
  }

LABEL_22:
  sub_10000C9C0(&qword_1005D8FE0, &qword_1004F65D0);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_1004CEAA0;
  sub_10019A8E4(0, &qword_1005D51B0, NSNumber_ptr);
  isa = sub_1004A5C04().super.isa;

  *(v27 + 56) = sub_10019A8E4(0, &qword_1005DA4F0, NSArray_ptr);
  *(v27 + 32) = isa;
  v29 = sub_1004A5734();
  v30 = sub_1004A5C04().super.isa;

  v31 = [objc_opt_self() predicateWithFormat:v29 argumentArray:v30];

  sub_1004A5BF4();
  if (*((v49 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v49 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v38 = *((v49 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_1004A5C44();
  }

  sub_1004A5C84();
  v32 = v49;
  if (v49 >> 62)
  {
LABEL_37:
    if (sub_1004A6A34())
    {
      if (sub_1004A6A34() != 1)
      {
        goto LABEL_44;
      }

      goto LABEL_27;
    }

LABEL_40:

    v37 = [objc_opt_self() predicateWithValue:0];

    return v37;
  }

LABEL_25:
  v33 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v33)
  {
    goto LABEL_40;
  }

  if (v33 != 1)
  {
    goto LABEL_44;
  }

LABEL_27:
  if (v32 >> 62)
  {
    result = sub_1004A6A34();
    if (result)
    {
      goto LABEL_29;
    }

LABEL_44:
    sub_10019A8E4(0, &qword_1005D9008, NSPredicate_ptr);
    v39 = sub_1004A5C04().super.isa;

    v40 = [objc_opt_self() orPredicateWithSubpredicates:v39];

    return v40;
  }

  result = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_44;
  }

LABEL_29:
  if ((v32 & 0xC000000000000001) != 0)
  {
    v35 = sub_1004A6794();
    goto LABEL_32;
  }

  if (*((v32 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v35 = *(v32 + 32);
LABEL_32:
    v36 = v35;

    return v36;
  }

  __break(1u);
  return result;
}

uint64_t sub_10037AE10(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C9C0(&qword_1005CD7A0, &unk_1004CF590);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

IMAPSearchIndexerXPC::AccountID_optional __swiftcall AccountID.init(rawValue:)(Swift::String rawValue)
{
  v1 = HIBYTE(rawValue._object) & 0xF;
  if ((rawValue._object & 0x2000000000000000) == 0)
  {
    v1 = rawValue._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  if (!v1)
  {

    rawValue._countAndFlagsBits = 0;
    rawValue._object = 0;
  }

  result.value.rawValue = rawValue;
  result.is_nil = v2;
  return result;
}

uint64_t sub_10037AED8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x65756C6156776172 && a2 == 0xE800000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1004A6D34();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_10037AF60(uint64_t a1)
{
  v2 = sub_10037B118();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10037AF9C(uint64_t a1)
{
  v2 = sub_10037B118();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t AccountID.encode(to:)(void *a1)
{
  v2 = sub_10000C9C0(&qword_1005DAC88, &qword_1004F88C0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v9 - v5;
  v7 = a1[4];
  sub_10002587C(a1, a1[3]);
  sub_10037B118();
  sub_1004A6FA4();
  sub_1004A6C44();
  return (*(v3 + 8))(v6, v2);
}

unint64_t sub_10037B118()
{
  result = qword_1005DAC90;
  if (!qword_1005DAC90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DAC90);
  }

  return result;
}

uint64_t AccountID.init(from:)(uint64_t *a1)
{
  v3 = sub_10000C9C0(&qword_1005DAC98, &qword_1004F88C8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v11 - v6;
  v8 = a1[4];
  v9 = sub_10002587C(a1, a1[3]);
  sub_10037B118();
  sub_1004A6F84();
  if (!v1)
  {
    v9 = sub_1004A6B74();
    (*(v4 + 8))(v7, v3);
  }

  sub_1000197E0(a1);
  return v9;
}

uint64_t sub_10037B2C8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_10000C9C0(&qword_1005DAC98, &qword_1004F88C8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v15 - v8;
  v10 = a1[4];
  sub_10002587C(a1, a1[3]);
  sub_10037B118();
  sub_1004A6F84();
  if (v2)
  {
    return sub_1000197E0(a1);
  }

  v11 = sub_1004A6B74();
  v13 = v12;
  (*(v6 + 8))(v9, v5);
  result = sub_1000197E0(a1);
  *a2 = v11;
  a2[1] = v13;
  return result;
}

uint64_t sub_10037B444(void *a1)
{
  v3 = sub_10000C9C0(&qword_1005DAC88, &qword_1004F88C0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v12 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = a1[4];
  sub_10002587C(a1, a1[3]);
  sub_10037B118();
  sub_1004A6FA4();
  sub_1004A6C44();
  return (*(v4 + 8))(v7, v3);
}

uint64_t AccountConfiguration.endpoint.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);

  return v1;
}

uint64_t AccountConfiguration.endpoint.setter(uint64_t a1, uint64_t a2, __int16 a3)
{
  v7 = *(v3 + 24);

  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  *(v3 + 32) = a3;
  return result;
}

uint64_t sub_10037B608()
{
  if (*v0)
  {
    return 1953656688;
  }

  else
  {
    return 1953722216;
  }
}

uint64_t sub_10037B62C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1953722216 && a2 == 0xE400000000000000;
  if (v5 || (sub_1004A6D34() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 1953656688 && a2 == 0xE400000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1004A6D34();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_10037B708(uint64_t a1)
{
  v2 = sub_10037B96C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10037B744(uint64_t a1)
{
  v2 = sub_10037B96C();

  return CodingKey.debugDescription.getter(a1, v2);
}

BOOL static AccountConfiguration.Endpoint.__derived_struct_equals(_:_:)(uint64_t a1, uint64_t a2, __int16 a3, uint64_t a4, uint64_t a5, __int16 a6)
{
  if (a1 == a4 && a2 == a5)
  {
    return a3 == a6;
  }

  v8 = sub_1004A6D34();
  result = 0;
  if (v8)
  {
    return a3 == a6;
  }

  return result;
}

uint64_t AccountConfiguration.Endpoint.encode(to:)(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  v14 = a4;
  v6 = sub_10000C9C0(&qword_1005DACA0, &qword_1004F88D0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v13 - v9;
  v11 = a1[4];
  sub_10002587C(a1, a1[3]);
  sub_10037B96C();
  sub_1004A6FA4();
  v16 = 0;
  sub_1004A6C44();
  if (!v4)
  {
    v15 = 1;
    sub_1004A6C84();
  }

  return (*(v7 + 8))(v10, v6);
}

unint64_t sub_10037B96C()
{
  result = qword_1005DACA8;
  if (!qword_1005DACA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DACA8);
  }

  return result;
}

uint64_t AccountConfiguration.Endpoint.init(from:)(uint64_t *a1)
{
  result = sub_10037CBAC(a1);
  if (v1)
  {
    return v3;
  }

  return result;
}

uint64_t sub_10037B9E4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_10037CBAC(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6;
  }

  return result;
}

BOOL sub_10037BA34(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a2 + 16);
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8))
  {
    return v2 == v3;
  }

  v5 = sub_1004A6D34();
  result = 0;
  if (v5)
  {
    return v2 == v3;
  }

  return result;
}

uint64_t sub_10037BAC4()
{
  v1 = 0x534C547472617473;
  if (*v0 != 1)
  {
    v1 = 7564404;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6572756365736E69;
  }
}

uint64_t sub_10037BB18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10037CF28(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10037BB40(uint64_t a1)
{
  v2 = sub_10037CD84();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10037BB7C(uint64_t a1)
{
  v2 = sub_10037CD84();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10037BBC4(uint64_t a1)
{
  v2 = sub_10037CED4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10037BC00(uint64_t a1)
{
  v2 = sub_10037CED4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10037BC3C(uint64_t a1)
{
  v2 = sub_10037CE80();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10037BC78(uint64_t a1)
{
  v2 = sub_10037CE80();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10037BCB4(uint64_t a1)
{
  v2 = sub_10037CDD8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10037BCF0(uint64_t a1)
{
  v2 = sub_10037CDD8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t AccountConfiguration.TransportLayerSecurity.encode(to:)(void *a1, int a2)
{
  v32 = a2;
  v3 = sub_10000C9C0(&qword_1005DACB0, &qword_1004F88D8);
  v30 = *(v3 - 8);
  v31 = v3;
  v4 = *(v30 + 64);
  __chkstk_darwin(v3);
  v29 = &v26 - v5;
  v6 = sub_10000C9C0(&qword_1005DACB8, &qword_1004F88E0);
  v27 = *(v6 - 8);
  v28 = v6;
  v7 = *(v27 + 64);
  __chkstk_darwin(v6);
  v9 = &v26 - v8;
  v10 = sub_10000C9C0(&qword_1005DACC0, &qword_1004F88E8);
  v26 = *(v10 - 8);
  v11 = *(v26 + 64);
  __chkstk_darwin(v10);
  v13 = &v26 - v12;
  v14 = sub_10000C9C0(&qword_1005DACC8, &qword_1004F88F0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = &v26 - v17;
  v19 = a1[4];
  sub_10002587C(a1, a1[3]);
  sub_10037CD84();
  v20 = v32;
  sub_1004A6FA4();
  if (!(v20 >> 6))
  {
    v35 = 1;
    sub_10037CE80();
    sub_1004A6BD4();
    v34 = v20;
    sub_10037CE2C();
    v24 = v28;
    sub_1004A6C74();
    (*(v27 + 8))(v9, v24);
    return (*(v15 + 8))(v18, v14);
  }

  if (v20 >> 6 == 1)
  {
    v21 = v20 & 0x3F;
    v37 = 2;
    sub_10037CDD8();
    v22 = v29;
    sub_1004A6BD4();
    v36 = v21;
    sub_10037CE2C();
    v23 = v31;
    sub_1004A6C74();
    (*(v30 + 8))(v22, v23);
    return (*(v15 + 8))(v18, v14);
  }

  v33 = 0;
  sub_10037CED4();
  sub_1004A6BD4();
  (*(v26 + 8))(v13, v10);
  return (*(v15 + 8))(v18, v14);
}

uint64_t sub_10037C154@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10037D040(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_10037C19C@<X0>(_BYTE *a1@<X8>)
{

  *a1 = 1;
  return result;
}

uint64_t sub_10037C1CC(uint64_t a1)
{
  v2 = sub_10037D6B8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10037C208(uint64_t a1)
{
  v2 = sub_10037D6B8();

  return CodingKey.debugDescription.getter(a1, v2);
}

unint64_t sub_10037C244()
{
  v1 = 0xD000000000000011;
  if (*v0 == 1)
  {
    v1 = 0xD000000000000013;
  }

  if (*v0)
  {
    result = v1;
  }

  else
  {
    result = 0xD000000000000013;
  }

  *v0;
  return result;
}

uint64_t sub_10037C298@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10037D89C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10037C2C0(uint64_t a1)
{
  v2 = sub_10037D664();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10037C2FC(uint64_t a1)
{
  v2 = sub_10037D664();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10037C338(uint64_t a1)
{
  v2 = sub_10037D760();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10037C374(uint64_t a1)
{
  v2 = sub_10037D760();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10037C3B0(uint64_t a1)
{
  v2 = sub_10037D70C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10037C3EC(uint64_t a1)
{
  v2 = sub_10037D70C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t AccountConfiguration.CertificateTrustPolicy.encode(to:)(void *a1, int a2)
{
  v30 = a2;
  v3 = sub_10000C9C0(&qword_1005DACF8, &qword_1004F88F8);
  v28 = *(v3 - 8);
  v29 = v3;
  v4 = *(v28 + 64);
  __chkstk_darwin(v3);
  v27 = &v23 - v5;
  v6 = sub_10000C9C0(&qword_1005DAD00, &qword_1004F8900);
  v25 = *(v6 - 8);
  v26 = v6;
  v7 = *(v25 + 64);
  __chkstk_darwin(v6);
  v9 = &v23 - v8;
  v10 = sub_10000C9C0(&qword_1005DAD08, &qword_1004F8908);
  v24 = *(v10 - 8);
  v11 = *(v24 + 64);
  __chkstk_darwin(v10);
  v13 = &v23 - v12;
  v14 = sub_10000C9C0(&qword_1005DAD10, &qword_1004F8910);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = &v23 - v17;
  v19 = a1[4];
  sub_10002587C(a1, a1[3]);
  sub_10037D664();
  sub_1004A6FA4();
  v20 = (v15 + 8);
  if (v30)
  {
    if (v30 == 1)
    {
      v32 = 1;
      sub_10037D70C();
      sub_1004A6BD4();
      (*(v25 + 8))(v9, v26);
    }

    else
    {
      v33 = 2;
      sub_10037D6B8();
      v21 = v27;
      sub_1004A6BD4();
      (*(v28 + 8))(v21, v29);
    }
  }

  else
  {
    v31 = 0;
    sub_10037D760();
    sub_1004A6BD4();
    (*(v24 + 8))(v13, v10);
  }

  return (*v20)(v18, v14);
}

uint64_t sub_10037C7C0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10037D9C4(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t AccountConfiguration.init(accountID:endpoint:transportLayerSecurity:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, __int16 a5@<W4>, char a6@<W5>, uint64_t a7@<X8>)
{
  *a7 = result;
  *(a7 + 8) = a2;
  *(a7 + 16) = a3;
  *(a7 + 24) = a4;
  *(a7 + 32) = a5;
  *(a7 + 34) = a6;
  return result;
}

uint64_t sub_10037C81C()
{
  v1 = 0x746E696F70646E65;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000016;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x49746E756F636361;
  }
}

uint64_t sub_10037C880@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10037E084(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10037C8A8(uint64_t a1)
{
  v2 = sub_10037DF34();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10037C8E4(uint64_t a1)
{
  v2 = sub_10037DF34();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t AccountConfiguration.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_10000C9C0(&qword_1005DAD38, &qword_1004F8918);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v12 - v8;
  v10 = a1[4];
  sub_10002587C(a1, a1[3]);
  sub_10037DF34();
  sub_1004A6FA4();
  v12 = *v3;
  v14 = 0;
  sub_10037DF88();
  sub_1004A6C74();
  if (!v2)
  {
    v12 = v3[1];
    v13 = *(v3 + 16);
    v14 = 1;
    sub_10037DFDC();
    sub_1004A6C74();
    LOBYTE(v12) = *(v3 + 34);
    v14 = 2;
    sub_10037E030();
    sub_1004A6C74();
  }

  return (*(v6 + 8))(v9, v5);
}

double AccountConfiguration.init(from:)@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_10037E1AC(a1, &v6);
  if (!v2)
  {
    result = *&v6;
    v5 = *v7;
    *a2 = v6;
    *(a2 + 16) = v5;
    *(a2 + 31) = *&v7[15];
  }

  return result;
}

BOOL sub_10037CB60(__int128 *a1, __int128 *a2)
{
  v2 = a1[1];
  v5 = *a1;
  v6[0] = v2;
  *(v6 + 15) = *(a1 + 31);
  v3 = a2[1];
  v7 = *a2;
  v8[0] = v3;
  *(v8 + 15) = *(a2 + 31);
  return _s20IMAPSearchIndexerXPC20AccountConfigurationV23__derived_struct_equalsySbAC_ACtFZ_0(&v5, &v7);
}

uint64_t sub_10037CBAC(uint64_t *a1)
{
  v3 = sub_10000C9C0(&qword_1005DAF28, &unk_1004F97C0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v10[-v6];
  v8 = a1[4];
  sub_10002587C(a1, a1[3]);
  sub_10037B96C();
  sub_1004A6F84();
  if (!v1)
  {
    v10[15] = 0;
    v8 = sub_1004A6B74();
    v10[14] = 1;
    sub_1004A6BA4();
    (*(v4 + 8))(v7, v3);
  }

  sub_1000197E0(a1);
  return v8;
}

unint64_t sub_10037CD84()
{
  result = qword_1005DACD0;
  if (!qword_1005DACD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DACD0);
  }

  return result;
}

unint64_t sub_10037CDD8()
{
  result = qword_1005DACD8;
  if (!qword_1005DACD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DACD8);
  }

  return result;
}

unint64_t sub_10037CE2C()
{
  result = qword_1005DACE0;
  if (!qword_1005DACE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DACE0);
  }

  return result;
}

unint64_t sub_10037CE80()
{
  result = qword_1005DACE8;
  if (!qword_1005DACE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DACE8);
  }

  return result;
}

unint64_t sub_10037CED4()
{
  result = qword_1005DACF0;
  if (!qword_1005DACF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DACF0);
  }

  return result;
}

uint64_t sub_10037CF28(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6572756365736E69 && a2 == 0xE800000000000000;
  if (v4 || (sub_1004A6D34() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x534C547472617473 && a2 == 0xE800000000000000 || (sub_1004A6D34() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 7564404 && a2 == 0xE300000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1004A6D34();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_10037D040(uint64_t *a1)
{
  v34 = sub_10000C9C0(&qword_1005DAF00, &qword_1004F97A0);
  v36 = *(v34 - 8);
  v2 = *(v36 + 64);
  __chkstk_darwin(v34);
  v37 = &v32 - v3;
  v32 = sub_10000C9C0(&qword_1005DAF08, &qword_1004F97A8);
  v35 = *(v32 - 8);
  v4 = *(v35 + 64);
  __chkstk_darwin(v32);
  v6 = &v32 - v5;
  v7 = sub_10000C9C0(&qword_1005DAF10, &qword_1004F97B0);
  v33 = *(v7 - 8);
  v8 = *(v33 + 64);
  __chkstk_darwin(v7);
  v10 = &v32 - v9;
  v11 = sub_10000C9C0(&qword_1005DAF18, &qword_1004F97B8);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v32 - v14;
  v17 = a1[3];
  v16 = a1[4];
  v39 = a1;
  v18 = sub_10002587C(a1, v17);
  sub_10037CD84();
  v19 = v38;
  sub_1004A6F84();
  if (!v19)
  {
    v38 = v7;
    v20 = v37;
    v21 = v12;
    v22 = sub_1004A6BC4();
    v23 = (2 * *(v22 + 16)) | 1;
    v40 = v22;
    v41 = v22 + 32;
    v42 = 0;
    v43 = v23;
    v24 = sub_100391FD4();
    if (v24 == 3 || v42 != v43 >> 1)
    {
      v26 = sub_1004A67D4();
      swift_allocError();
      v28 = v27;
      v29 = *(sub_10000C9C0(&qword_1005DAEF8, &unk_1004FA340) + 48);
      *v28 = &type metadata for AccountConfiguration.TransportLayerSecurity;
      v18 = v15;
      sub_1004A6B14();
      sub_1004A67C4();
      (*(*(v26 - 8) + 104))(v28, enum case for DecodingError.typeMismatch(_:), v26);
      swift_willThrow();
      (*(v21 + 8))(v15, v11);
      swift_unknownObjectRelease();
    }

    else if (v24)
    {
      if (v24 == 1)
      {
        v44 = 1;
        sub_10037CE80();
        sub_1004A6B04();
        sub_10037F204();
        v25 = v32;
        sub_1004A6B94();
        (*(v35 + 8))(v6, v25);
        (*(v12 + 8))(v15, v11);
        swift_unknownObjectRelease();
        v18 = v44;
      }

      else
      {
        v44 = 2;
        sub_10037CDD8();
        sub_1004A6B04();
        sub_10037F204();
        v31 = v34;
        sub_1004A6B94();
        (*(v36 + 8))(v20, v31);
        (*(v12 + 8))(v15, v11);
        swift_unknownObjectRelease();
        v18 = v44 | 0x40u;
      }
    }

    else
    {
      v44 = 0;
      sub_10037CED4();
      sub_1004A6B04();
      (*(v33 + 8))(v10, v38);
      (*(v12 + 8))(v15, v11);
      swift_unknownObjectRelease();
      v18 = 128;
    }
  }

  sub_1000197E0(v39);
  return v18;
}

unint64_t sub_10037D664()
{
  result = qword_1005DAD18;
  if (!qword_1005DAD18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DAD18);
  }

  return result;
}

unint64_t sub_10037D6B8()
{
  result = qword_1005DAD20;
  if (!qword_1005DAD20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DAD20);
  }

  return result;
}

unint64_t sub_10037D70C()
{
  result = qword_1005DAD28;
  if (!qword_1005DAD28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DAD28);
  }

  return result;
}

unint64_t sub_10037D760()
{
  result = qword_1005DAD30;
  if (!qword_1005DAD30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DAD30);
  }

  return result;
}

BOOL _s20IMAPSearchIndexerXPC20AccountConfigurationV23__derived_struct_equalsySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (!v4 && (sub_1004A6D34() & 1) == 0)
  {
    return 0;
  }

  v5 = *(a1 + 32);
  v6 = *(a2 + 32);
  if (*(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24))
  {
    if (v5 != v6)
    {
      return 0;
    }

LABEL_14:
    v10 = *(a1 + 34);
    v11 = *(a2 + 34);
    if (v10 >> 6)
    {
      if (v10 >> 6 == 1)
      {
        return (v11 & 0xC0) == 0x40 && ((v11 ^ v10) & 0x3F) == 0;
      }

      if (v11 != 128)
      {
        return 0;
      }
    }

    else if ((v10 & 0x3F) != v11)
    {
      return 0;
    }

    return 1;
  }

  v8 = sub_1004A6D34();
  result = 0;
  if ((v8 & 1) != 0 && v5 == v6)
  {
    goto LABEL_14;
  }

  return result;
}

uint64_t sub_10037D89C(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000013 && 0x80000001004ADFD0 == a2 || (sub_1004A6D34() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001004ADFB0 == a2 || (sub_1004A6D34() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001004ADF90 == a2)
  {

    return 2;
  }

  else
  {
    v5 = sub_1004A6D34();

    if (v5)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_10037D9C4(uint64_t *a1)
{
  v36 = sub_10000C9C0(&qword_1005DAED8, &qword_1004F9778);
  v33 = *(v36 - 8);
  v2 = *(v33 + 64);
  __chkstk_darwin(v36);
  v38 = &v31 - v3;
  v37 = sub_10000C9C0(&qword_1005DAEE0, &qword_1004F9780);
  v35 = *(v37 - 8);
  v4 = *(v35 + 64);
  __chkstk_darwin(v37);
  v6 = &v31 - v5;
  v7 = sub_10000C9C0(&qword_1005DAEE8, &qword_1004F9788);
  v34 = *(v7 - 8);
  v8 = *(v34 + 64);
  __chkstk_darwin(v7);
  v10 = &v31 - v9;
  v11 = sub_10000C9C0(&qword_1005DAEF0, &unk_1004F9790);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v31 - v14;
  v16 = a1[3];
  v17 = a1[4];
  v40 = a1;
  sub_10002587C(a1, v16);
  sub_10037D664();
  v18 = v39;
  sub_1004A6F84();
  if (!v18)
  {
    v32 = v7;
    v19 = v38;
    v39 = v12;
    v20 = v15;
    v21 = sub_1004A6BC4();
    v22 = (2 * *(v21 + 16)) | 1;
    v41 = v21;
    v42 = v21 + 32;
    v43 = 0;
    v44 = v22;
    v23 = sub_100391FD4();
    if (v23 != 3 && v43 == v44 >> 1)
    {
      v12 = v23;
      if (v23)
      {
        if (v23 == 1)
        {
          v45 = 1;
          sub_10037D70C();
          sub_1004A6B04();
          v24 = v39;
          (*(v35 + 8))(v6, v37);
          (*(v24 + 8))(v15, v11);
LABEL_13:
          swift_unknownObjectRelease();
          sub_1000197E0(v40);
          return v12;
        }

        v45 = 2;
        sub_10037D6B8();
        v29 = v15;
        sub_1004A6B04();
        v30 = v39;
        (*(v33 + 8))(v19, v36);
      }

      else
      {
        v45 = 0;
        sub_10037D760();
        v29 = v15;
        sub_1004A6B04();
        (*(v34 + 8))(v10, v32);
        v30 = v39;
      }

      (*(v30 + 8))(v29, v11);
      goto LABEL_13;
    }

    v25 = sub_1004A67D4();
    swift_allocError();
    v27 = v26;
    v12 = *(sub_10000C9C0(&qword_1005DAEF8, &unk_1004FA340) + 48);
    *v27 = &type metadata for AccountConfiguration.CertificateTrustPolicy;
    sub_1004A6B14();
    sub_1004A67C4();
    (*(*(v25 - 8) + 104))(v27, enum case for DecodingError.typeMismatch(_:), v25);
    swift_willThrow();
    (*(v39 + 8))(v20, v11);
    swift_unknownObjectRelease();
  }

  sub_1000197E0(v40);
  return v12;
}

unint64_t sub_10037DF34()
{
  result = qword_1005DAD40;
  if (!qword_1005DAD40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DAD40);
  }

  return result;
}

unint64_t sub_10037DF88()
{
  result = qword_1005DAD48;
  if (!qword_1005DAD48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DAD48);
  }

  return result;
}

unint64_t sub_10037DFDC()
{
  result = qword_1005DAD50;
  if (!qword_1005DAD50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DAD50);
  }

  return result;
}

unint64_t sub_10037E030()
{
  result = qword_1005DAD58;
  if (!qword_1005DAD58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DAD58);
  }

  return result;
}

uint64_t sub_10037E084(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x49746E756F636361 && a2 == 0xE900000000000044;
  if (v4 || (sub_1004A6D34() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x746E696F70646E65 && a2 == 0xE800000000000000 || (sub_1004A6D34() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001004B01D0 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_1004A6D34();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_10037E1AC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_10000C9C0(&qword_1005DAEB8, &qword_1004F9770);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v16 - v8;
  v10 = a1[4];
  sub_10002587C(a1, a1[3]);
  sub_10037DF34();
  sub_1004A6F84();
  if (v2)
  {
    return sub_1000197E0(a1);
  }

  v23 = 0;
  sub_10037F108();
  sub_1004A6B94();
  v11 = v19;
  v18 = v20;
  v23 = 1;
  sub_10037F15C();
  sub_1004A6B94();
  v16 = v19;
  v17 = v11;
  v12 = v20;
  v22 = v21;
  v23 = 2;
  sub_10037F1B0();
  sub_1004A6B94();
  (*(v6 + 8))(v9, v5);
  v13 = v19;
  result = sub_1000197E0(a1);
  v15 = v18;
  *a2 = v17;
  *(a2 + 8) = v15;
  *(a2 + 16) = v16;
  *(a2 + 24) = v12;
  *(a2 + 32) = v22;
  *(a2 + 34) = v13;
  return result;
}

unint64_t sub_10037E438()
{
  result = qword_1005DAD60;
  if (!qword_1005DAD60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DAD60);
  }

  return result;
}

unint64_t sub_10037E490()
{
  result = qword_1005DAD68;
  if (!qword_1005DAD68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DAD68);
  }

  return result;
}

__n128 sub_10037E4F4(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 31) = *(a2 + 31);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_10037E508(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 35))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10037E550(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 34) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 35) = 1;
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

    *(result + 35) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10037E5A8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 18))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10037E5F0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 18) = 1;
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

    *(result + 18) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_10037E714()
{
  result = qword_1005DAD70;
  if (!qword_1005DAD70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DAD70);
  }

  return result;
}

unint64_t sub_10037E76C()
{
  result = qword_1005DAD78;
  if (!qword_1005DAD78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DAD78);
  }

  return result;
}

unint64_t sub_10037E7C4()
{
  result = qword_1005DAD80;
  if (!qword_1005DAD80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DAD80);
  }

  return result;
}

unint64_t sub_10037E81C()
{
  result = qword_1005DAD88;
  if (!qword_1005DAD88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DAD88);
  }

  return result;
}

unint64_t sub_10037E874()
{
  result = qword_1005DAD90;
  if (!qword_1005DAD90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DAD90);
  }

  return result;
}

unint64_t sub_10037E8CC()
{
  result = qword_1005DAD98;
  if (!qword_1005DAD98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DAD98);
  }

  return result;
}

unint64_t sub_10037E924()
{
  result = qword_1005DADA0;
  if (!qword_1005DADA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DADA0);
  }

  return result;
}

unint64_t sub_10037E97C()
{
  result = qword_1005DADA8;
  if (!qword_1005DADA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DADA8);
  }

  return result;
}

unint64_t sub_10037E9D4()
{
  result = qword_1005DADB0;
  if (!qword_1005DADB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DADB0);
  }

  return result;
}

unint64_t sub_10037EA2C()
{
  result = qword_1005DADB8;
  if (!qword_1005DADB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DADB8);
  }

  return result;
}

unint64_t sub_10037EA84()
{
  result = qword_1005DADC0;
  if (!qword_1005DADC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DADC0);
  }

  return result;
}

unint64_t sub_10037EADC()
{
  result = qword_1005DADC8;
  if (!qword_1005DADC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DADC8);
  }

  return result;
}

unint64_t sub_10037EB34()
{
  result = qword_1005DADD0;
  if (!qword_1005DADD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DADD0);
  }

  return result;
}

unint64_t sub_10037EB8C()
{
  result = qword_1005DADD8;
  if (!qword_1005DADD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DADD8);
  }

  return result;
}

unint64_t sub_10037EBE4()
{
  result = qword_1005DADE0;
  if (!qword_1005DADE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DADE0);
  }

  return result;
}

unint64_t sub_10037EC3C()
{
  result = qword_1005DADE8;
  if (!qword_1005DADE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DADE8);
  }

  return result;
}

unint64_t sub_10037EC94()
{
  result = qword_1005DADF0;
  if (!qword_1005DADF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DADF0);
  }

  return result;
}

unint64_t sub_10037ECEC()
{
  result = qword_1005DADF8;
  if (!qword_1005DADF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DADF8);
  }

  return result;
}

unint64_t sub_10037ED44()
{
  result = qword_1005DAE00;
  if (!qword_1005DAE00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DAE00);
  }

  return result;
}

unint64_t sub_10037ED9C()
{
  result = qword_1005DAE08;
  if (!qword_1005DAE08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DAE08);
  }

  return result;
}

unint64_t sub_10037EDF4()
{
  result = qword_1005DAE10;
  if (!qword_1005DAE10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DAE10);
  }

  return result;
}

unint64_t sub_10037EE4C()
{
  result = qword_1005DAE18;
  if (!qword_1005DAE18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DAE18);
  }

  return result;
}

unint64_t sub_10037EEA4()
{
  result = qword_1005DAE20;
  if (!qword_1005DAE20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DAE20);
  }

  return result;
}

unint64_t sub_10037EEFC()
{
  result = qword_1005DAE28;
  if (!qword_1005DAE28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DAE28);
  }

  return result;
}

unint64_t sub_10037EF54()
{
  result = qword_1005DAE30;
  if (!qword_1005DAE30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DAE30);
  }

  return result;
}

unint64_t sub_10037EFAC()
{
  result = qword_1005DAE38;
  if (!qword_1005DAE38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DAE38);
  }

  return result;
}

unint64_t sub_10037F004()
{
  result = qword_1005DAE40;
  if (!qword_1005DAE40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DAE40);
  }

  return result;
}

unint64_t sub_10037F05C()
{
  result = qword_1005DAE48;
  if (!qword_1005DAE48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DAE48);
  }

  return result;
}

unint64_t sub_10037F0B4()
{
  result = qword_1005DAE50;
  if (!qword_1005DAE50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DAE50);
  }

  return result;
}

unint64_t sub_10037F108()
{
  result = qword_1005DAEC0;
  if (!qword_1005DAEC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DAEC0);
  }

  return result;
}

unint64_t sub_10037F15C()
{
  result = qword_1005DAEC8;
  if (!qword_1005DAEC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DAEC8);
  }

  return result;
}

unint64_t sub_10037F1B0()
{
  result = qword_1005DAED0;
  if (!qword_1005DAED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DAED0);
  }

  return result;
}

unint64_t sub_10037F204()
{
  result = qword_1005DAF20;
  if (!qword_1005DAF20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DAF20);
  }

  return result;
}

uint64_t sub_10037F274@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6E656B6F74 && a2 == 0xE500000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1004A6D34();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_10037F2F8(uint64_t a1)
{
  v2 = sub_10038057C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10037F334(uint64_t a1)
{
  v2 = sub_10038057C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10037F370()
{
  v1 = *v0;
  v2 = 0x44496E6F73726570;
  v3 = 0x49656E696863616DLL;
  v4 = 0x50656D6954656E6FLL;
  if (v1 != 3)
  {
    v4 = 0x6E49746E65696C63;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6E656B6F74;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_10037F41C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100380678(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10037F444(uint64_t a1)
{
  v2 = sub_1003805D0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10037F480(uint64_t a1)
{
  v2 = sub_1003805D0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10037F4BC()
{
  v1 = *v0;
  v2 = 0x656D616E72657375;
  v3 = 0x6B6F54656C707061;
  v4 = 0x6B6F54687475416FLL;
  if (v1 != 3)
  {
    v4 = 0x68747541657270;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6B6F54656C707061;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_10037F568@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10038083C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10037F590(uint64_t a1)
{
  v2 = sub_100380480();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10037F5CC(uint64_t a1)
{
  v2 = sub_100380480();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10037F608()
{
  if (*v0)
  {
    result = 0x6F54737365636361;
  }

  else
  {
    result = 0x656D616E72657375;
  }

  *v0;
  return result;
}

uint64_t sub_10037F64C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x656D616E72657375 && a2 == 0xE800000000000000;
  if (v6 || (sub_1004A6D34() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6F54737365636361 && a2 == 0xEB000000006E656BLL)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1004A6D34();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_10037F72C(uint64_t a1)
{
  v2 = sub_100380528();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10037F768(uint64_t a1)
{
  v2 = sub_100380528();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10037F7A4(uint64_t a1)
{
  v2 = sub_1003804D4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10037F7E0(uint64_t a1)
{
  v2 = sub_1003804D4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10037F81C()
{
  if (*v0)
  {
    result = 0x64726F7773736170;
  }

  else
  {
    result = 12383;
  }

  *v0;
  return result;
}

uint64_t sub_10037F84C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 12383 && a2 == 0xE200000000000000;
  if (v5 || (sub_1004A6D34() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x64726F7773736170 && a2 == 0xE800000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1004A6D34();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_10037F920(uint64_t a1)
{
  v2 = sub_100380624();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10037F95C(uint64_t a1)
{
  v2 = sub_100380624();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t Credentials.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = sub_10000C9C0(&qword_1005DAF40, &qword_1004F97D0);
  v62 = *(v4 - 8);
  v63 = v4;
  v5 = *(v62 + 64);
  __chkstk_darwin(v4);
  *&v61 = &v57 - v6;
  v7 = sub_10000C9C0(&qword_1005DAF48, &qword_1004F97D8);
  *(&v64 + 1) = *(v7 - 8);
  v65 = v7;
  v8 = *(*(&v64 + 1) + 64);
  __chkstk_darwin(v7);
  *&v64 = &v57 - v9;
  v10 = sub_10000C9C0(&qword_1005DAF50, &qword_1004F97E0);
  v59 = *(v10 - 8);
  v60 = v10;
  v11 = *(v59 + 64);
  __chkstk_darwin(v10);
  v58 = &v57 - v12;
  v13 = sub_10000C9C0(&qword_1005DAF58, &qword_1004F97E8);
  v66 = *(v13 - 8);
  v14 = *(v66 + 64);
  __chkstk_darwin(v13);
  v16 = &v57 - v15;
  v17 = sub_10000C9C0(&qword_1005DAF60, &qword_1004F97F0);
  v57 = *(v17 - 8);
  v18 = *(v57 + 64);
  __chkstk_darwin(v17);
  v20 = &v57 - v19;
  v70 = sub_10000C9C0(&qword_1005DAF68, &qword_1004F97F8);
  v67 = *(v70 - 8);
  v21 = *(v67 + 64);
  __chkstk_darwin(v70);
  v23 = &v57 - v22;
  v24 = a1[4];
  sub_10002587C(a1, a1[3]);
  sub_100380480();
  v69 = v23;
  sub_1004A6FA4();
  v26 = *v2;
  v25 = v2[1];
  v27 = v2[2];
  v28 = v2[7];
  v29 = v2[9];
  v30 = (v29 >> 59) & 6 | ((v28 & 0x2000000000000000) != 0);
  if (v30 > 1)
  {
    if (v30 == 2)
    {
      LOBYTE(v71) = 2;
      v39 = v25;
      sub_10038057C();
      v40 = v58;
      v42 = v69;
      v41 = v70;
      sub_1004A6BD4();
      *&v71 = v26;
      *(&v71 + 1) = v39;
      sub_10015246C();
      v43 = v60;
      sub_1004A6C74();
      (*(v59 + 8))(v40, v43);
      return (*(v67 + 8))(v42, v41);
    }

    v32 = v69;
    v31 = v70;
    if (v30 != 3)
    {
      LOBYTE(v71) = 4;
      sub_1003804D4();
      v45 = v61;
      sub_1004A6BD4();
      (*(v62 + 8))(v45, v63);
      return (*(v67 + 8))(v32, v31);
    }

    v33 = v2[2];
    v34 = v2[3];
    LOBYTE(v71) = 3;
    sub_100380528();
    v35 = v64;
    sub_1004A6BD4();
    LOBYTE(v71) = 0;
    v36 = v65;
    v37 = v68;
    sub_1004A6C44();
    if (!v37)
    {
      LOBYTE(v71) = 1;
      sub_1004A6C44();
    }

    (*(*(&v64 + 1) + 8))(v35, v36);
    goto LABEL_16;
  }

  *(&v64 + 1) = v2[3];
  v65 = v25;
  *&v64 = v27;
  if (!v30)
  {
    LOBYTE(v71) = 0;
    sub_100380624();
    v32 = v69;
    v31 = v70;
    sub_1004A6BD4();
    *&v71 = v26;
    *(&v71 + 1) = v65;
    v72 = 0;
    sub_10015246C();
    v38 = v68;
    sub_1004A6C74();
    if (!v38)
    {
      v71 = v64;
      v72 = 1;
      sub_1004A6C74();
    }

    (*(v57 + 8))(v20, v17);
LABEL_16:
    v52 = *(v67 + 8);
    v53 = v32;
    return v52(v53, v31);
  }

  v46 = v13;
  v61 = *(v2 + 2);
  v47 = v2[6];
  v62 = v2[8];
  v63 = v47;
  LOBYTE(v71) = 1;
  sub_1003805D0();
  v48 = v16;
  v49 = v69;
  v31 = v70;
  sub_1004A6BD4();
  *&v71 = v26;
  *(&v71 + 1) = v65;
  v72 = 0;
  sub_10015246C();
  v50 = v46;
  v51 = v68;
  sub_1004A6C74();
  if (v51)
  {
    (*(v66 + 8))(v48, v46);
    v52 = *(v67 + 8);
    v53 = v49;
    return v52(v53, v31);
  }

  v54 = v62;
  v55 = v63;
  v71 = v64;
  v72 = 1;
  sub_1004A6C74();
  v71 = v61;
  v72 = 2;
  sub_1004A6C74();
  v56 = v66;
  *&v71 = v55;
  *(&v71 + 1) = v28 & 0xDFFFFFFFFFFFFFFFLL;
  v72 = 3;
  sub_1004A6C74();
  *&v71 = v54;
  *(&v71 + 1) = v29 & 0xCFFFFFFFFFFFFFFFLL;
  v72 = 4;
  sub_1004A6C74();
  (*(v56 + 8))(v48, v50);
  return (*(v67 + 8))(v69, v70);
}

__n128 Credentials.init(from:)@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1003809F8(a1, v6);
  if (!v2)
  {
    v5 = v6[3];
    *(a2 + 32) = v6[2];
    *(a2 + 48) = v5;
    *(a2 + 64) = v6[4];
    result = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = result;
  }

  return result;
}

uint64_t *Credentials.init(_:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  return sub_1003802AC(a1, sub_1001F0CD8, a2);
}

{
  return sub_1003802AC(a1, sub_1003817E8, a2);
}

uint64_t *sub_1003802AC@<X0>(uint64_t *result@<X0>, uint64_t (*a2)(uint64_t *)@<X1>, uint64_t *a3@<X8>)
{
  v7 = result;
  v9 = *result;
  v10 = result[1];
  v11 = result[2];
  v12 = result[3];
  v13 = result[7];
  v14 = result[9];
  v15 = (v14 >> 59) & 6 | ((v13 & 0x2000000000000000) != 0);
  if (v15 <= 1)
  {
    if (v15)
    {
      v24 = result[5];
      v4 = result[6];
      v20 = v14 & 0xCFFFFFFFFFFFFFFFLL;
      v25 = result[4];
      v26 = v25;
      v27 = result[8];
      v28 = result[1];
      v29 = *result;
      sub_100014CEC(v9, v10);
      sub_100014CEC(v11, v12);
      sub_100014CEC(v25, v24);
      sub_100014CEC(v4, v13 & 0xDFFFFFFFFFFFFFFFLL);
      v5 = v27;
      sub_100014CEC(v27, v20);
      result = a2(v7);
      v3 = v26;
      v10 = v28;
      v9 = v29;
      v19 = v24 & 0xCFFFFFFFFFFFFFFFLL;
      v21 = v13 & 0xCFFFFFFFFFFFFFFFLL | 0x2000000000000000;
    }

    else
    {
      v22 = *result;
      v23 = result[1];
      sub_100014CEC(*result, v10);
      sub_100014CEC(v11, v12);
      result = a2(v7);
      v10 = v23;
      v9 = v22;
      v19 = 0;
      v21 = 0;
      v20 = 0;
    }
  }

  else if (v15 == 2)
  {
    v19 = 0;
    v21 = 0;
    v20 = 0x1000000000000000;
  }

  else if (v15 == 3)
  {
    v16 = *result;
    v17 = result[1];
    v18 = v10;

    result = a2(v7);
    v10 = v18;
    v9 = v16;
    v19 = 0;
    v20 = 0x1000000000000000;
    v21 = 0x2000000000000000;
  }

  else
  {
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v3 = 0;
    v19 = 0;
    v4 = 0;
    v21 = 0;
    v5 = 0;
    v20 = 0x2000000000000000;
  }

  *a3 = v9;
  a3[1] = v10;
  a3[2] = v11;
  a3[3] = v12;
  a3[4] = v3;
  a3[5] = v19;
  a3[6] = v4;
  a3[7] = v21;
  a3[8] = v5;
  a3[9] = v20;
  return result;
}

unint64_t sub_100380480()
{
  result = qword_1005DAF70;
  if (!qword_1005DAF70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DAF70);
  }

  return result;
}

unint64_t sub_1003804D4()
{
  result = qword_1005DAF78;
  if (!qword_1005DAF78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DAF78);
  }

  return result;
}

unint64_t sub_100380528()
{
  result = qword_1005DAF80;
  if (!qword_1005DAF80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DAF80);
  }

  return result;
}

unint64_t sub_10038057C()
{
  result = qword_1005DAF88;
  if (!qword_1005DAF88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DAF88);
  }

  return result;
}

unint64_t sub_1003805D0()
{
  result = qword_1005DAF90;
  if (!qword_1005DAF90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DAF90);
  }

  return result;
}

unint64_t sub_100380624()
{
  result = qword_1005DAF98;
  if (!qword_1005DAF98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DAF98);
  }

  return result;
}

uint64_t sub_100380678(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x44496E6F73726570 && a2 == 0xE800000000000000;
  if (v4 || (sub_1004A6D34() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E656B6F74 && a2 == 0xE500000000000000 || (sub_1004A6D34() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x49656E696863616DLL && a2 == 0xE900000000000044 || (sub_1004A6D34() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x50656D6954656E6FLL && a2 == 0xEF64726F77737361 || (sub_1004A6D34() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6E49746E65696C63 && a2 == 0xEA00000000006F66)
  {

    return 4;
  }

  else
  {
    v6 = sub_1004A6D34();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_10038083C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656D616E72657375 && a2 == 0xE800000000000000;
  if (v4 || (sub_1004A6D34() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6B6F54656C707061 && a2 == 0xEA00000000006E65 || (sub_1004A6D34() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6B6F54656C707061 && a2 == 0xEB00000000326E65 || (sub_1004A6D34() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6B6F54687475416FLL && a2 == 0xEA00000000006E65 || (sub_1004A6D34() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x68747541657270 && a2 == 0xE700000000000000)
  {

    return 4;
  }

  else
  {
    v6 = sub_1004A6D34();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_1003809F8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v85 = a2;
  v77 = sub_10000C9C0(&qword_1005DB028, &qword_1004FA310);
  v76 = *(v77 - 8);
  v3 = *(v76 + 64);
  __chkstk_darwin(v77);
  v81 = &v71 - v4;
  v78 = sub_10000C9C0(&qword_1005DB030, &qword_1004FA318);
  v79 = *(v78 - 8);
  v5 = *(v79 + 64);
  __chkstk_darwin(v78);
  v84 = &v71 - v6;
  v75 = sub_10000C9C0(&qword_1005DB038, &qword_1004FA320);
  v74 = *(v75 - 8);
  v7 = *(v74 + 64);
  __chkstk_darwin(v75);
  v83 = &v71 - v8;
  v82 = sub_10000C9C0(&qword_1005DB040, &qword_1004FA328);
  v80 = *(v82 - 8);
  v9 = *(v80 + 64);
  __chkstk_darwin(v82);
  v11 = &v71 - v10;
  v12 = sub_10000C9C0(&qword_1005DB048, &qword_1004FA330);
  v73 = *(v12 - 8);
  v13 = *(v73 + 64);
  __chkstk_darwin(v12);
  v15 = &v71 - v14;
  v16 = sub_10000C9C0(&qword_1005DB050, &qword_1004FA338);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v20 = (&v71 - v19);
  v22 = a1[3];
  v21 = a1[4];
  v87 = a1;
  sub_10002587C(a1, v22);
  sub_100380480();
  v23 = v86;
  sub_1004A6F84();
  if (v23)
  {
    return sub_1000197E0(v87);
  }

  v72 = v15;
  v24 = v83;
  v71 = v12;
  v25 = v82;
  v86 = v17;
  v27 = v84;
  v26 = v85;
  v28 = sub_1004A6BC4();
  v29 = (2 * *(v28 + 16)) | 1;
  v98 = v28;
  v99 = v28 + 32;
  v100 = 0;
  v101 = v29;
  v30 = sub_100381F20();
  if (v30 == 5 || v100 != v101 >> 1)
  {
    v33 = v20;
    v34 = sub_1004A67D4();
    swift_allocError();
    v36 = v35;
    v37 = *(sub_10000C9C0(&qword_1005DAEF8, &unk_1004FA340) + 48);
    *v36 = &type metadata for Credentials;
    sub_1004A6B14();
    sub_1004A67C4();
    (*(*(v34 - 8) + 104))(v36, enum case for DecodingError.typeMismatch(_:), v34);
    swift_willThrow();
    (*(v86 + 8))(v33, v16);
    swift_unknownObjectRelease();
    return sub_1000197E0(v87);
  }

  if (v30 <= 1u)
  {
    if (v30)
    {
      LOBYTE(v96) = 1;
      sub_1003805D0();
      v43 = v11;
      sub_1004A6B04();
      v84 = v16;
      LOBYTE(v94) = 0;
      sub_100381E8C();
      v47 = v25;
      v48 = v43;
      sub_1004A6B94();
      v55 = v96;
      v54 = v97;
      LOBYTE(v92) = 1;
      sub_1004A6B94();
      v81 = v55;
      v83 = v54;
      v66 = v94;
      v67 = v95;
      LOBYTE(v90) = 2;
      sub_1004A6B94();
      v76 = v67;
      v77 = v66;
      v78 = v20;
      v68 = v92;
      v69 = v93;
      LOBYTE(v88) = 3;
      sub_1004A6B94();
      v16 = v90;
      v70 = v91;
      v102 = 4;
      sub_1004A6B94();
      v79 = 0;
      (*(v80 + 8))(v48, v47);
      (*(v86 + 8))(v78, v84);
      swift_unknownObjectRelease();
      v11 = v68;
      v20 = v88;
      v86 = v69 & 0xCFFFFFFFFFFFFFFFLL;
      v61 = v89 & 0xCFFFFFFFFFFFFFFFLL;
      v62 = v70 & 0xCFFFFFFFFFFFFFFFLL | 0x2000000000000000;
      v63 = v81;
      v57 = v77;
      v60 = v76;
    }

    else
    {
      LOBYTE(v96) = 0;
      sub_100380624();
      v11 = v72;
      sub_1004A6B04();
      v39 = v20;
      LOBYTE(v94) = 0;
      sub_100381E8C();
      v40 = v71;
      sub_1004A6B94();
      v63 = v96;
      v83 = v97;
      LOBYTE(v92) = 1;
      sub_1004A6B94();
      v61 = 0;
      v79 = 0;
      v20 = (v73 + 8);
      (*(v73 + 8))(v11, v40);
      (*(v86 + 8))(v39, v16);
      swift_unknownObjectRelease();
      v86 = 0;
      v62 = 0;
      v57 = v94;
      v60 = v95;
    }
  }

  else if (v30 == 2)
  {
    LOBYTE(v96) = 2;
    sub_10038057C();
    v57 = v24;
    sub_1004A6B04();
    v41 = v86;
    sub_100381E8C();
    v44 = v75;
    v60 = v57;
    sub_1004A6B94();
    v79 = 0;
    (*(v74 + 8))(v57, v44);
    (*(v41 + 8))(v20, v16);
    swift_unknownObjectRelease();
    v86 = 0;
    v62 = 0;
    v63 = v96;
    v83 = v97;
    v61 = 0x1000000000000000;
  }

  else
  {
    v11 = v20;
    v31 = v86;
    if (v30 == 3)
    {
      LOBYTE(v96) = 3;
      sub_100380528();
      v32 = v27;
      sub_1004A6B04();
      LOBYTE(v96) = 0;
      v45 = v78;
      v46 = sub_1004A6B74();
      v50 = v49;
      v51 = v32;
      v81 = v46;
      LOBYTE(v96) = 1;
      v52 = sub_1004A6B74();
      v53 = (v79 + 8);
      v20 = (v31 + 8);
      v79 = 0;
      v56 = *v53;
      v83 = v50;
      v57 = v52;
      v58 = v51;
      v60 = v59;
      v56(v58, v45);
      (*v20)(v11, v16);
      swift_unknownObjectRelease();
      v86 = 0;
      v61 = 0x1000000000000000;
      v62 = 0x2000000000000000;
      v63 = v81;
    }

    else
    {
      LOBYTE(v96) = 4;
      sub_1003804D4();
      v42 = v81;
      sub_1004A6B04();
      v79 = 0;
      (*(v76 + 8))(v42, v77);
      (*(v31 + 8))(v11, v16);
      swift_unknownObjectRelease();
      v63 = 0;
      v83 = 0;
      v57 = 0;
      v60 = 0;
      v11 = 0;
      v86 = 0;
      v16 = 0;
      v62 = 0;
      v20 = 0;
      v61 = 0x2000000000000000;
    }
  }

  result = sub_1000197E0(v87);
  v64 = v83;
  *v26 = v63;
  v26[1] = v64;
  v26[2] = v57;
  v26[3] = v60;
  v65 = v86;
  v26[4] = v11;
  v26[5] = v65;
  v26[6] = v16;
  v26[7] = v62;
  v26[8] = v20;
  v26[9] = v61;
  return result;
}

uint64_t sub_100381818(uint64_t a1)
{
  if (((*(a1 + 72) >> 59) & 4) != 0)
  {
    return (*a1 + 4);
  }

  else
  {
    return (*(a1 + 72) >> 59) & 6 | ((*(a1 + 56) & 0x2000000000000000) != 0);
  }
}

unint64_t sub_1003818B8()
{
  result = qword_1005DAFA0;
  if (!qword_1005DAFA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DAFA0);
  }

  return result;
}

unint64_t sub_100381910()
{
  result = qword_1005DAFA8;
  if (!qword_1005DAFA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DAFA8);
  }

  return result;
}

unint64_t sub_100381968()
{
  result = qword_1005DAFB0;
  if (!qword_1005DAFB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DAFB0);
  }

  return result;
}

unint64_t sub_1003819C0()
{
  result = qword_1005DAFB8;
  if (!qword_1005DAFB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DAFB8);
  }

  return result;
}

unint64_t sub_100381A18()
{
  result = qword_1005DAFC0;
  if (!qword_1005DAFC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DAFC0);
  }

  return result;
}

unint64_t sub_100381A70()
{
  result = qword_1005DAFC8;
  if (!qword_1005DAFC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DAFC8);
  }

  return result;
}

unint64_t sub_100381AC8()
{
  result = qword_1005DAFD0;
  if (!qword_1005DAFD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DAFD0);
  }

  return result;
}

unint64_t sub_100381B20()
{
  result = qword_1005DAFD8;
  if (!qword_1005DAFD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DAFD8);
  }

  return result;
}

unint64_t sub_100381B78()
{
  result = qword_1005DAFE0;
  if (!qword_1005DAFE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DAFE0);
  }

  return result;
}

unint64_t sub_100381BD0()
{
  result = qword_1005DAFE8;
  if (!qword_1005DAFE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DAFE8);
  }

  return result;
}

unint64_t sub_100381C28()
{
  result = qword_1005DAFF0;
  if (!qword_1005DAFF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DAFF0);
  }

  return result;
}

unint64_t sub_100381C80()
{
  result = qword_1005DAFF8;
  if (!qword_1005DAFF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DAFF8);
  }

  return result;
}

unint64_t sub_100381CD8()
{
  result = qword_1005DB000;
  if (!qword_1005DB000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DB000);
  }

  return result;
}

unint64_t sub_100381D30()
{
  result = qword_1005DB008;
  if (!qword_1005DB008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DB008);
  }

  return result;
}

unint64_t sub_100381D88()
{
  result = qword_1005DB010;
  if (!qword_1005DB010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DB010);
  }

  return result;
}

unint64_t sub_100381DE0()
{
  result = qword_1005DB018;
  if (!qword_1005DB018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DB018);
  }

  return result;
}

unint64_t sub_100381E38()
{
  result = qword_1005DB020;
  if (!qword_1005DB020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DB020);
  }

  return result;
}

unint64_t sub_100381E8C()
{
  result = qword_1005DB058;
  if (!qword_1005DB058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DB058);
  }

  return result;
}

uint64_t sub_100381EEC()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 3;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100381F20()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 5;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100381F54()
{
  v1 = 0x686372616573;
  if (*v0 != 1)
  {
    v1 = 0x69746E6564657263;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7865646E69;
  }
}

uint64_t sub_100381FB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1003896B0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100381FD8(uint64_t a1)
{
  v2 = sub_10038913C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100382014(uint64_t a1)
{
  v2 = sub_10038913C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100382050(uint64_t a1)
{
  v2 = sub_1003891A0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10038208C(uint64_t a1)
{
  v2 = sub_1003891A0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1003820C8(uint64_t a1)
{
  v2 = sub_1003892F0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100382104(uint64_t a1)
{
  v2 = sub_1003892F0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100382140(uint64_t a1)
{
  v2 = sub_100389248();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10038217C(uint64_t a1)
{
  v2 = sub_100389248();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t static IndexRequest.__derived_enum_equals(_:_:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, unsigned __int8 a6)
{
  if (a3)
  {
    return a6 & (a1 == a4);
  }

  result = 0;
  if ((a6 & 1) == 0 && a1 == a4)
  {
    return sub_100385DD8(a2, a5);
  }

  return result;
}

uint64_t MessageToSearchIndexer.encode(to:)(void *a1)
{
  v2 = v1;
  v29 = sub_10000C9C0(&qword_1005DB068, &qword_1004FA350);
  v28 = *(v29 - 8);
  v4 = *(v28 + 64);
  __chkstk_darwin(v29);
  v6 = &v25 - v5;
  v27 = sub_10000C9C0(&qword_1005DB070, &qword_1004FA358);
  v26 = *(v27 - 8);
  v7 = *(v26 + 64);
  __chkstk_darwin(v27);
  v9 = &v25 - v8;
  v10 = sub_10000C9C0(&qword_1005DB078, &qword_1004FA360);
  v25 = *(v10 - 8);
  v11 = *(v25 + 64);
  __chkstk_darwin(v10);
  v13 = &v25 - v12;
  v31 = sub_10000C9C0(&qword_1005DB080, &qword_1004FA368);
  v30 = *(v31 - 8);
  v14 = *(v30 + 64);
  __chkstk_darwin(v31);
  v16 = &v25 - v15;
  v17 = a1[4];
  sub_10002587C(a1, a1[3]);
  sub_10038913C();
  sub_1004A6FA4();
  *&v35[9] = *(v2 + 25);
  v18 = v2[1];
  v34 = *v2;
  *v35 = v18;
  v19 = v35[24] >> 6;
  if (v19)
  {
    v35[24] &= 0x3Fu;
    if (v19 == 1)
    {
      v36 = v34;
      v37[0] = *v35;
      *(v37 + 9) = *&v35[9];
      LOBYTE(v32) = 1;
      sub_100389248();
      v20 = v31;
      sub_1004A6BD4();
      v32 = v36;
      v33[0] = v37[0];
      *(v33 + 9) = *(v37 + 9);
      sub_10038929C();
      v21 = v27;
      sub_1004A6C74();
      (*(v26 + 8))(v9, v21);
    }

    else
    {
      sub_100389190(&v34, &v38);
      LOBYTE(v32) = 2;
      sub_1003891A0();
      v20 = v31;
      sub_1004A6BD4();
      sub_100389190(&v38, &v32);
      sub_1003891F4();
      v24 = v29;
      sub_1004A6C74();
      (*(v28 + 8))(v6, v24);
    }

    return (*(v30 + 8))(v16, v20);
  }

  else
  {
    LOBYTE(v32) = 0;
    sub_1003892F0();
    v22 = v31;
    sub_1004A6BD4();
    v32 = *v2;
    LOBYTE(v33[0]) = *(v2 + 16);
    sub_100389344();
    sub_1004A6C74();
    (*(v25 + 8))(v13, v10);
    return (*(v30 + 8))(v16, v22);
  }
}

double MessageToSearchIndexer.init(from:)@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  result = sub_1003897C4(a1, &v6);
  if (!v2)
  {
    v5 = v7[0];
    *a2 = v6;
    a2[1] = v5;
    result = *(v7 + 9);
    *(a2 + 25) = *(v7 + 9);
  }

  return result;
}

uint64_t sub_10038272C(__int128 *a1, __int128 *a2)
{
  v2 = a1[1];
  v5 = *a1;
  v6[0] = v2;
  *(v6 + 9) = *(a1 + 25);
  v3 = a2[1];
  v7 = *a2;
  v8[0] = v3;
  *(v8 + 9) = *(a2 + 25);
  return _s20IMAPSearchIndexerXPC015MessageToSearchB0O21__derived_enum_equalsySbAC_ACtFZ_0(&v5, &v7) & 1;
}

unint64_t sub_100382778()
{
  v1 = 0x7865646E69;
  v2 = 0x69746E6564657263;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000018;
  }

  if (*v0)
  {
    v1 = 0x686372616573;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1003827F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10038A1A0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100382820(uint64_t a1)
{
  v2 = sub_100389E9C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10038285C(uint64_t a1)
{
  v2 = sub_100389E9C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100382898(uint64_t a1)
{
  v2 = sub_100389FA8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1003828D4(uint64_t a1)
{
  v2 = sub_100389FA8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100382910(uint64_t a1)
{
  v2 = sub_10038A0F8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10038294C(uint64_t a1)
{
  v2 = sub_10038A0F8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100382988(uint64_t a1)
{
  v2 = sub_100389EF0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1003829C4(uint64_t a1)
{
  v2 = sub_100389EF0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100382A00(uint64_t a1)
{
  v2 = sub_10038A050();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100382A3C(uint64_t a1)
{
  v2 = sub_10038A050();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t MessageFromSearchIndexer.encode(to:)(void *a1)
{
  v2 = v1;
  v41 = sub_10000C9C0(&qword_1005DB0C0, &qword_1004FA370);
  v40 = *(v41 - 8);
  v4 = *(v40 + 64);
  __chkstk_darwin(v41);
  v37 = &v34 - v5;
  v39 = sub_10000C9C0(&qword_1005DB0C8, &qword_1004FA378);
  v38 = *(v39 - 8);
  v6 = *(v38 + 64);
  __chkstk_darwin(v39);
  v8 = &v34 - v7;
  v36 = sub_10000C9C0(&qword_1005DB0D0, &qword_1004FA380);
  v35 = *(v36 - 8);
  v9 = *(v35 + 64);
  __chkstk_darwin(v36);
  v11 = &v34 - v10;
  v12 = sub_10000C9C0(&qword_1005DB0D8, &qword_1004FA388);
  v34 = *(v12 - 8);
  v13 = *(v34 + 64);
  __chkstk_darwin(v12);
  v15 = &v34 - v14;
  v16 = sub_10000C9C0(&qword_1005DB0E0, &qword_1004FA390);
  v42 = *(v16 - 8);
  v43 = v16;
  v17 = *(v42 + 64);
  __chkstk_darwin(v16);
  v19 = &v34 - v18;
  v20 = a1[4];
  sub_10002587C(a1, a1[3]);
  sub_100389E9C();
  sub_1004A6FA4();
  v49 = *(v2 + 32);
  v21 = v49;
  v22 = v2[1];
  v47 = *v2;
  v48 = v22;
  v23 = v49 >> 6;
  if (v23 > 1)
  {
    if (v23 == 2)
    {
      v49 &= 0x3Fu;
      sub_100389F98(&v47, &v53);
      LOBYTE(v44) = 2;
      sub_100389FA8();
      v27 = v43;
      sub_1004A6BD4();
      sub_100389F98(&v53, &v44);
      sub_100389FFC();
      v28 = v39;
      sub_1004A6C74();
      v29 = *(v38 + 8);
      v30 = v8;
    }

    else
    {
      LOBYTE(v44) = 3;
      sub_100389EF0();
      v32 = v37;
      v27 = v43;
      sub_1004A6BD4();
      v33 = v2[1];
      v44 = *v2;
      v45 = v33;
      sub_100389F44();
      v28 = v41;
      sub_1004A6C74();
      v29 = *(v40 + 8);
      v30 = v32;
    }

    v29(v30, v28);
  }

  else
  {
    if (!v23)
    {
      v24 = v47;
      LOBYTE(v44) = 0;
      sub_10038A0F8();
      v25 = v43;
      sub_1004A6BD4();
      LOBYTE(v44) = v24;
      sub_10038A14C();
      sub_1004A6C74();
      (*(v34 + 8))(v15, v12);
      return (*(v42 + 8))(v19, v25);
    }

    v49 &= 0x3Fu;
    v50 = v47;
    v51 = v48;
    v52 = v21 & 0x3F;
    LOBYTE(v44) = 1;
    sub_10038A050();
    v27 = v43;
    sub_1004A6BD4();
    v44 = v50;
    v45 = v51;
    v46 = v52;
    sub_10038A0A4();
    v31 = v36;
    sub_1004A6C74();
    (*(v35 + 8))(v11, v31);
  }

  return (*(v42 + 8))(v19, v27);
}

double MessageFromSearchIndexer.init(from:)@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_10038A308(a1, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    *(a2 + 32) = v7;
  }

  return result;
}

uint64_t sub_1003830B0(int64x2_t *a1, int64x2_t *a2)
{
  v2 = a1[1];
  v5[0] = *a1;
  v5[1] = v2;
  v6 = a1[2].i8[0];
  v3 = a2[1];
  v7[0] = *a2;
  v7[1] = v3;
  v8 = a2[2].i8[0];
  return _s20IMAPSearchIndexerXPC017MessageFromSearchB0O21__derived_enum_equalsySbAC_ACtFZ_0(v5, v7) & 1;
}

uint64_t XPCSession.sendToSearchIndexer(_:replyHandler:)(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v7 = *a1;
  *v8 = a1[1];
  *&v8[9] = *(a1 + 25);
  v5 = swift_allocObject();
  *(v5 + 16) = a2;
  *(v5 + 24) = a3;
  sub_10038ABE4();
  sub_10038AC38();

  sub_1004A4A84();
}

uint64_t XPCSession.sendToSearchIndexer(_:)(__int128 *a1)
{
  v2 = *a1;
  *v3 = a1[1];
  *&v3[9] = *(a1 + 25);
  sub_10038ABE4();
  return sub_1004A4A94();
}

uint64_t XPCSession.sendToMaild(_:replyHandler:)(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v7 = *a1;
  v8 = a1[1];
  v9 = *(a1 + 32);
  v5 = swift_allocObject();
  *(v5 + 16) = a2;
  *(v5 + 24) = a3;
  sub_10036BE80();
  sub_10036B9D8();

  sub_1004A4A84();
}

uint64_t XPCSession.sendToMaild(_:)(__int128 *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 32);
  sub_10036BE80();
  return sub_1004A4A94();
}

unint64_t sub_100383334()
{
  v1 = *v0;
  v2 = 0x7265666544646964;
  v3 = 0xD000000000000014;
  v4 = 0x6C706D6F43646964;
  if (v1 != 3)
  {
    v4 = 0x6572756C696166;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6F43746F4E646964;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1003833E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10038AEC8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100383410(uint64_t a1)
{
  v2 = sub_10038ACD0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10038344C(uint64_t a1)
{
  v2 = sub_10038ACD0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100383488(uint64_t a1)
{
  v2 = sub_10038ADCC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1003834C4(uint64_t a1)
{
  v2 = sub_10038ADCC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100383500(uint64_t a1)
{
  v2 = sub_10038AD78();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10038353C(uint64_t a1)
{
  v2 = sub_10038AD78();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100383578(uint64_t a1)
{
  v2 = sub_10038AE74();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1003835B4(uint64_t a1)
{
  v2 = sub_10038AE74();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1003835F0(uint64_t a1)
{
  v2 = sub_10038AE20();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10038362C(uint64_t a1)
{
  v2 = sub_10038AE20();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100383668(uint64_t a1)
{
  v2 = sub_10038AD24();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1003836A4(uint64_t a1)
{
  v2 = sub_10038AD24();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t IndexRequest.Response.encode(to:)(void *a1, int a2)
{
  v47 = a2;
  v3 = sub_10000C9C0(&qword_1005DB140, &qword_1004FA398);
  v43 = *(v3 - 8);
  v44 = v3;
  v4 = *(v43 + 64);
  __chkstk_darwin(v3);
  v42 = &v36 - v5;
  v6 = sub_10000C9C0(&qword_1005DB148, &qword_1004FA3A0);
  v40 = *(v6 - 8);
  v41 = v6;
  v7 = *(v40 + 64);
  __chkstk_darwin(v6);
  v39 = &v36 - v8;
  v9 = sub_10000C9C0(&qword_1005DB150, &qword_1004FA3A8);
  v37 = *(v9 - 8);
  v38 = v9;
  v10 = *(v37 + 64);
  __chkstk_darwin(v9);
  v36 = &v36 - v11;
  v12 = sub_10000C9C0(&qword_1005DB158, &qword_1004FA3B0);
  v46 = *(v12 - 8);
  v13 = *(v46 + 64);
  __chkstk_darwin(v12);
  v15 = &v36 - v14;
  v16 = sub_10000C9C0(&qword_1005DB160, &qword_1004FA3B8);
  v45 = *(v16 - 8);
  v17 = *(v45 + 64);
  __chkstk_darwin(v16);
  v19 = &v36 - v18;
  v48 = sub_10000C9C0(&qword_1005DB168, &qword_1004FA3C0);
  v20 = *(v48 - 8);
  v21 = *(v20 + 64);
  __chkstk_darwin(v48);
  v23 = &v36 - v22;
  v24 = a1[4];
  sub_10002587C(a1, a1[3]);
  sub_10038ACD0();
  sub_1004A6FA4();
  v25 = (v20 + 8);
  if (v47 <= 1u)
  {
    v31 = v45;
    v30 = v46;
    if (v47)
    {
      v50 = 1;
      sub_10038AE20();
      v35 = v48;
      sub_1004A6BD4();
      (*(v30 + 8))(v15, v12);
      return (*v25)(v23, v35);
    }

    v49 = 0;
    sub_10038AE74();
    v32 = v48;
    sub_1004A6BD4();
    (*(v31 + 8))(v19, v16);
    return (*v25)(v23, v32);
  }

  if (v47 == 2)
  {
    v51 = 2;
    sub_10038ADCC();
    v33 = v36;
    v32 = v48;
    sub_1004A6BD4();
    (*(v37 + 8))(v33, v38);
    return (*v25)(v23, v32);
  }

  if (v47 == 3)
  {
    v52 = 3;
    sub_10038AD78();
    v26 = v39;
    v27 = v48;
    sub_1004A6BD4();
    v29 = v40;
    v28 = v41;
  }

  else
  {
    v53 = 4;
    sub_10038AD24();
    v26 = v42;
    v27 = v48;
    sub_1004A6BD4();
    v29 = v43;
    v28 = v44;
  }

  (*(v29 + 8))(v26, v28);
  return (*v25)(v23, v27);
}

uint64_t sub_100383C6C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10038B08C(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_100383CB4()
{
  if (*v0)
  {
    result = 1886352499;
  }

  else
  {
    result = 0x7472617473;
  }

  *v0;
  return result;
}

uint64_t sub_100383CE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x7472617473 && a2 == 0xE500000000000000;
  if (v6 || (sub_1004A6D34() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 1886352499 && a2 == 0xE400000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1004A6D34();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_100383DBC(uint64_t a1)
{
  v2 = sub_10038B784();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100383DF8(uint64_t a1)
{
  v2 = sub_10038B784();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100383E34()
{
  if (*v0)
  {
    return 12639;
  }

  else
  {
    return 12383;
  }
}

uint64_t sub_100383E54(uint64_t a1)
{
  v2 = sub_10038B880();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100383E90(uint64_t a1)
{
  v2 = sub_10038B880();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100383ECC(uint64_t a1)
{
  v2 = sub_10038B7D8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100383F08(uint64_t a1)
{
  v2 = sub_10038B7D8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t _s20IMAPSearchIndexerXPC18CredentialResponseO21__derived_enum_equalsySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
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

  v3 = (a1 + 32);
  v4 = (a2 + 32);
  for (i = v2 - 1; ; --i)
  {
    v6 = v3[3];
    v176 = v3[2];
    v177 = v6;
    v7 = v3[1];
    v174 = *v3;
    v175 = v7;
    v8 = v4[2];
    v9 = v4[3];
    v10 = *v4;
    *v180 = v4[1];
    *&v180[16] = v8;
    v11 = v4[4];
    *&v180[32] = v9;
    v181 = v11;
    v178 = v3[4];
    v179 = v10;
    v12 = *(&v175 + 1);
    v13 = v175;
    v14 = *(&v177 + 1);
    v15 = (*(&v178 + 1) >> 59) & 6 | ((*(&v177 + 1) & 0x2000000000000000) != 0);
    if (v15 <= 1)
    {
      break;
    }

    if (v15 == 2)
    {
      if (((*(&v181 + 1) >> 59) & 6 | ((*&v180[40] & 0x2000000000000000) != 0)) != 2)
      {
        return 0;
      }

      v26 = v179;
      v27 = *(&v174 + 1) >> 62;
      v28 = *(&v179 + 1) >> 62;
      if (*(&v174 + 1) >> 62 == 3)
      {
        v29 = 0;
        if (v174 == __PAIR128__(0xC000000000000000, 0) && *(&v179 + 1) >> 62 == 3)
        {
          v29 = 0;
          if (v179 == __PAIR128__(0xC000000000000000, 0))
          {
            goto LABEL_378;
          }
        }

LABEL_80:
        if (v28 <= 1)
        {
          goto LABEL_81;
        }

LABEL_40:
        if (v28 != 2)
        {
          if (v29)
          {
            return 0;
          }

          goto LABEL_378;
        }

        v37 = *(v179 + 16);
        v36 = *(v179 + 24);
        v38 = __OFSUB__(v36, v37);
        v39 = v36 - v37;
        if (v38)
        {
          goto LABEL_387;
        }
      }

      else
      {
        if (v27 > 1)
        {
          if (v27 == 2)
          {
            v48 = *(v174 + 16);
            v47 = *(v174 + 24);
            v38 = __OFSUB__(v47, v48);
            v29 = v47 - v48;
            if (v38)
            {
              goto LABEL_401;
            }

            goto LABEL_80;
          }

          v29 = 0;
          if (v28 <= 1)
          {
            goto LABEL_81;
          }

          goto LABEL_40;
        }

        if (v27)
        {
          LODWORD(v29) = DWORD1(v174) - v174;
          if (__OFSUB__(DWORD1(v174), v174))
          {
            goto LABEL_403;
          }

          v29 = v29;
          goto LABEL_80;
        }

        v29 = BYTE14(v174);
        if (v28 > 1)
        {
          goto LABEL_40;
        }

LABEL_81:
        if (v28)
        {
          LODWORD(v39) = DWORD1(v179) - v179;
          if (__OFSUB__(DWORD1(v179), v179))
          {
            goto LABEL_384;
          }

          v39 = v39;
        }

        else
        {
          v39 = BYTE14(v179);
        }
      }

      if (v29 != v39)
      {
        return 0;
      }

      if (v29 < 1)
      {
        goto LABEL_378;
      }

      if (v27 > 1)
      {
        v171 = i;
        if (v27 == 2)
        {
          v55 = *(v174 + 16);
          v54 = *(v174 + 24);
          sub_100306F6C(&v179, v173);
          sub_100306F6C(&v174, v173);
          v56 = sub_1004A40D4();
          if (v56)
          {
            v57 = sub_1004A4104();
            if (__OFSUB__(v55, v57))
            {
              goto LABEL_426;
            }

            v56 += v55 - v57;
          }

          if (__OFSUB__(v54, v55))
          {
            goto LABEL_419;
          }

          goto LABEL_147;
        }

        memset(v172, 0, 14);
        sub_100306F6C(&v179, v173);
        sub_100306F6C(&v174, v173);
        sub_100066884(v172, v26, *(&v26 + 1), v173);
        sub_1003817E8(&v179);
        sub_1003817E8(&v174);
        v71 = v173[0];
      }

      else
      {
        if (!v27)
        {
          v53 = i;
          v172[0] = v174;
          LODWORD(v172[1]) = DWORD2(v174);
          WORD2(v172[1]) = WORD6(v174);
          sub_100306F6C(&v179, v173);
          sub_100306F6C(&v174, v173);
          sub_100066884(v172, v26, *(&v26 + 1), v173);
          sub_1003817E8(&v179);
          sub_1003817E8(&v174);
          i = v53;
          if ((v173[0] & 1) == 0)
          {
            return 0;
          }

          goto LABEL_378;
        }

        v171 = i;
        v69 = v174;
        if (v174 >> 32 < v174)
        {
          goto LABEL_416;
        }

        sub_100306F6C(&v179, v173);
        sub_100306F6C(&v174, v173);
        v56 = sub_1004A40D4();
        if (v56)
        {
          v70 = sub_1004A4104();
          if (__OFSUB__(v69, v70))
          {
            goto LABEL_431;
          }

          v56 += v69 - v70;
        }

LABEL_147:
        sub_1004A40F4();
        sub_100066884(v56, v26, *(&v26 + 1), v173);
        sub_1003817E8(&v179);
        sub_1003817E8(&v174);
        v71 = v173[0];
      }

      i = v171;
      if ((v71 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_378;
    }

    if (v15 == 3)
    {
      if (((*(&v181 + 1) >> 59) & 6 | ((*&v180[40] & 0x2000000000000000) != 0)) != 3)
      {
        return 0;
      }

      v16 = *(&v175 + 1);
      v17 = i;
      v18 = *v180;
      v19 = *&v180[8];
      if (v174 != v179 && (sub_1004A6D34() & 1) == 0)
      {
        return 0;
      }

      if (v13 == v18 && v16 == v19)
      {
        i = v17;
      }

      else
      {
        v46 = sub_1004A6D34();
        i = v17;
        if ((v46 & 1) == 0)
        {
          return 0;
        }
      }
    }

    else
    {
      if (((*(&v181 + 1) >> 59) & 6 | ((*&v180[40] & 0x2000000000000000) != 0)) != 4)
      {
        return 0;
      }

      if (*(&v181 + 1) != 0x2000000000000000)
      {
        return 0;
      }

      v30 = vorrq_s8(*&v180[8], *&v180[24]);
      if (*&vorr_s8(*v30.i8, *&vextq_s8(v30, v30, 8uLL)) | v181 | *v180 | *(&v179 + 1) | v179 | *&v180[40])
      {
        return 0;
      }
    }

LABEL_378:
    if (!i)
    {
      return 1;
    }

    v4 += 5;
    v3 += 5;
  }

  v170 = i;
  if (!v15)
  {
    if ((*(&v181 + 1) >> 59) & 6 | ((*&v180[40] & 0x2000000000000000) != 0))
    {
      return 0;
    }

    v20 = v179;
    v21 = *v180;
    v22 = *&v180[8];
    v23 = *(&v174 + 1) >> 62;
    v24 = *(&v179 + 1) >> 62;
    if (*(&v174 + 1) >> 62 == 3)
    {
      v25 = 0;
      if (v174 == __PAIR128__(0xC000000000000000, 0) && *(&v179 + 1) >> 62 == 3)
      {
        v25 = 0;
        if (v179 == __PAIR128__(0xC000000000000000, 0))
        {
LABEL_112:
          sub_100306F6C(&v179, v173);
          sub_100306F6C(&v174, v173);
          goto LABEL_160;
        }
      }
    }

    else if (v23 > 1)
    {
      if (v23 != 2)
      {
        v25 = 0;
        if (v24 <= 1)
        {
LABEL_103:
          if (v24)
          {
            LODWORD(v42) = DWORD1(v179) - v179;
            if (__OFSUB__(DWORD1(v179), v179))
            {
              __break(1u);
LABEL_384:
              __break(1u);
LABEL_385:
              __break(1u);
LABEL_386:
              __break(1u);
LABEL_387:
              __break(1u);
LABEL_388:
              __break(1u);
LABEL_389:
              __break(1u);
LABEL_390:
              __break(1u);
LABEL_391:
              __break(1u);
LABEL_392:
              __break(1u);
LABEL_393:
              __break(1u);
LABEL_394:
              __break(1u);
LABEL_395:
              __break(1u);
LABEL_396:
              __break(1u);
LABEL_397:
              __break(1u);
LABEL_398:
              __break(1u);
LABEL_399:
              __break(1u);
LABEL_400:
              __break(1u);
LABEL_401:
              __break(1u);
LABEL_402:
              __break(1u);
LABEL_403:
              __break(1u);
LABEL_404:
              __break(1u);
LABEL_405:
              __break(1u);
LABEL_406:
              __break(1u);
LABEL_407:
              __break(1u);
LABEL_408:
              __break(1u);
LABEL_409:
              __break(1u);
LABEL_410:
              __break(1u);
LABEL_411:
              __break(1u);
LABEL_412:
              __break(1u);
LABEL_413:
              __break(1u);
LABEL_414:
              __break(1u);
LABEL_415:
              __break(1u);
LABEL_416:
              __break(1u);
LABEL_417:
              __break(1u);
LABEL_418:
              __break(1u);
LABEL_419:
              __break(1u);
LABEL_420:
              __break(1u);
LABEL_421:
              __break(1u);
LABEL_422:
              __break(1u);
LABEL_423:
              __break(1u);
LABEL_424:
              __break(1u);
LABEL_425:
              __break(1u);
LABEL_426:
              __break(1u);
LABEL_427:
              __break(1u);
LABEL_428:
              __break(1u);
LABEL_429:
              __break(1u);
LABEL_430:
              __break(1u);
LABEL_431:
              __break(1u);
            }

            v42 = v42;
          }

          else
          {
            v42 = BYTE14(v179);
          }

          goto LABEL_107;
        }

LABEL_47:
        if (v24 != 2)
        {
          if (v25)
          {
            return 0;
          }

          goto LABEL_112;
        }

        v41 = *(v179 + 16);
        v40 = *(v179 + 24);
        v38 = __OFSUB__(v40, v41);
        v42 = v40 - v41;
        if (v38)
        {
          goto LABEL_388;
        }

LABEL_107:
        if (v25 != v42)
        {
          return 0;
        }

        if (v25 < 1)
        {
          goto LABEL_112;
        }

        if (v23 > 1)
        {
          if (v23 != 2)
          {
            memset(v172, 0, 14);
            sub_100306F6C(&v179, v173);
            sub_100306F6C(&v174, v173);
            sub_100066884(v172, v20, *(&v20 + 1), v173);
            if ((v173[0] & 1) == 0)
            {
              goto LABEL_382;
            }

LABEL_160:
            v75 = v12 >> 62;
            v76 = v22 >> 62;
            if (v12 >> 62 == 3)
            {
              v77 = 0;
              if (!v13 && v12 == 0xC000000000000000 && v22 >> 62 == 3)
              {
                v77 = 0;
                if (!v21 && v22 == 0xC000000000000000)
                {
                  goto LABEL_365;
                }
              }
            }

            else if (v75 > 1)
            {
              if (v75 != 2)
              {
                v77 = 0;
                if (v76 <= 1)
                {
LABEL_181:
                  if (v76)
                  {
                    LODWORD(v80) = HIDWORD(v21) - v21;
                    if (__OFSUB__(HIDWORD(v21), v21))
                    {
                      goto LABEL_390;
                    }

                    v80 = v80;
                  }

                  else
                  {
                    v80 = BYTE6(v22);
                  }

LABEL_185:
                  if (v77 != v80)
                  {
                    goto LABEL_382;
                  }

                  if (v77 < 1)
                  {
                    goto LABEL_365;
                  }

                  if (v75 > 1)
                  {
                    if (v75 != 2)
                    {
                      *&v173[6] = 0;
                      *v173 = 0;
                      sub_100014CEC(v21, v22);
                      sub_100014CEC(v21, v22);
                      sub_100066884(v173, v21, v22, v172);
                      sub_1003817E8(&v179);
                      sub_1003817E8(&v174);
                      sub_100014D40(v21, v22);
                      v84 = v21;
                      goto LABEL_244;
                    }

                    v83 = v21;
                    v85 = *(v13 + 16);
                    v86 = *(v13 + 24);
                  }

                  else
                  {
                    v83 = v21;
                    if (!v75)
                    {
                      *v173 = v13;
                      *&v173[8] = v12;
                      v173[10] = BYTE2(v12);
                      v173[11] = BYTE3(v12);
                      v173[12] = BYTE4(v12);
                      v173[13] = BYTE5(v12);
                      sub_100014CEC(v21, v22);
                      sub_100014CEC(v21, v22);
                      sub_100066884(v173, v21, v22, v172);
                      sub_1003817E8(&v179);
                      sub_1003817E8(&v174);
                      sub_100014D40(v21, v22);
                      v84 = v21;
LABEL_244:
                      v106 = v22;
                      goto LABEL_377;
                    }

                    v85 = v13;
                    v86 = v13 >> 32;
                    if (v86 < v85)
                    {
                      goto LABEL_422;
                    }
                  }

                  sub_100014CEC(v83, v22);
                  sub_100014CEC(v83, v22);
                  sub_100014CEC(v83, v22);
                  v103 = sub_10003A0DC(v85, v86, v12 & 0x3FFFFFFFFFFFFFFFLL, v83, v22);
                  sub_100014D40(v83, v22);
                  sub_1003817E8(&v179);
                  sub_1003817E8(&v174);
                  sub_100014D40(v83, v22);
                  v104 = v83;
                  v105 = v22;
LABEL_373:
                  sub_100014D40(v104, v105);
                  i = v170;
                  if ((v103 & 1) == 0)
                  {
                    return 0;
                  }

                  goto LABEL_378;
                }

LABEL_170:
                if (v76 != 2)
                {
                  goto LABEL_347;
                }

                v79 = *(v21 + 16);
                v78 = *(v21 + 24);
                v38 = __OFSUB__(v78, v79);
                v80 = v78 - v79;
                if (v38)
                {
                  goto LABEL_391;
                }

                goto LABEL_185;
              }

              v82 = *(v13 + 16);
              v81 = *(v13 + 24);
              v38 = __OFSUB__(v81, v82);
              v77 = v81 - v82;
              if (v38)
              {
                goto LABEL_406;
              }
            }

            else
            {
              if (!v75)
              {
                v77 = BYTE6(v12);
                if (v76 <= 1)
                {
                  goto LABEL_181;
                }

                goto LABEL_170;
              }

              LODWORD(v77) = HIDWORD(v13) - v13;
              if (__OFSUB__(HIDWORD(v13), v13))
              {
                goto LABEL_405;
              }

              v77 = v77;
            }

            if (v76 <= 1)
            {
              goto LABEL_181;
            }

            goto LABEL_170;
          }

          v165 = *&v180[8];
          v168 = *v180;
          v59 = *(v174 + 16);
          v163 = *(v174 + 24);
          sub_100306F6C(&v179, v173);
          sub_100306F6C(&v174, v173);
          v60 = sub_1004A40D4();
          if (v60)
          {
            v61 = sub_1004A4104();
            if (__OFSUB__(v59, v61))
            {
              goto LABEL_427;
            }

            v60 += v59 - v61;
          }

          if (__OFSUB__(v163, v59))
          {
            goto LABEL_420;
          }

          sub_1004A40F4();
          sub_100066884(v60, v20, *(&v20 + 1), v173);
          v58 = v173[0];
        }

        else
        {
          v168 = *v180;
          if (!v23)
          {
            v172[0] = v174;
            LODWORD(v172[1]) = DWORD2(v174);
            WORD2(v172[1]) = WORD6(v174);
            sub_100306F6C(&v179, v173);
            sub_100306F6C(&v174, v173);
            sub_100066884(v172, v20, *(&v20 + 1), v173);
            v58 = v173[0];
            goto LABEL_157;
          }

          v165 = *&v180[8];
          v152 = *(&v175 + 1);
          v72 = v174;
          if (v174 >> 32 < v174)
          {
            goto LABEL_417;
          }

          sub_100306F6C(&v179, v173);
          sub_100306F6C(&v174, v173);
          v73 = sub_1004A40D4();
          if (v73)
          {
            v74 = sub_1004A4104();
            if (__OFSUB__(v72, v74))
            {
              goto LABEL_430;
            }

            v73 += v72 - v74;
          }

          v12 = v152;
          sub_1004A40F4();
          sub_100066884(v73, v20, *(&v20 + 1), v173);
          v58 = v173[0];
        }

        v22 = v165;
LABEL_157:
        v21 = v168;
        if ((v58 & 1) == 0)
        {
          goto LABEL_382;
        }

        goto LABEL_160;
      }

      v50 = *(v174 + 16);
      v49 = *(v174 + 24);
      v38 = __OFSUB__(v49, v50);
      v25 = v49 - v50;
      if (v38)
      {
        goto LABEL_399;
      }
    }

    else
    {
      if (!v23)
      {
        v25 = BYTE14(v174);
        if (v24 <= 1)
        {
          goto LABEL_103;
        }

        goto LABEL_47;
      }

      LODWORD(v25) = DWORD1(v174) - v174;
      if (__OFSUB__(DWORD1(v174), v174))
      {
        goto LABEL_400;
      }

      v25 = v25;
    }

    if (v24 <= 1)
    {
      goto LABEL_103;
    }

    goto LABEL_47;
  }

  v31 = *&v180[40];
  v156 = *(&v181 + 1);
  if (((*(&v181 + 1) >> 59) & 6 | ((*&v180[40] & 0x2000000000000000) != 0)) != 1)
  {
    return 0;
  }

  v157 = v177;
  v158 = *(&v178 + 1);
  v32 = *&v180[8];
  v162 = *(&v176 + 1);
  v164 = *v180;
  v160 = v176;
  v161 = *&v180[16];
  v167 = *&v180[24];
  v33 = *(&v174 + 1) >> 62;
  v34 = *(&v179 + 1) >> 62;
  v159 = *&v180[32];
  v154 = v178;
  v155 = v181;
  if (*(&v174 + 1) >> 62 == 3)
  {
    v35 = 0;
    if (v174 == __PAIR128__(0xC000000000000000, 0) && *(&v179 + 1) >> 62 == 3)
    {
      v35 = 0;
      if (v179 == __PAIR128__(0xC000000000000000, 0))
      {
LABEL_131:
        sub_100306F6C(&v179, v173);
        sub_100306F6C(&v174, v173);
        v65 = v31;
        goto LABEL_202;
      }
    }

LABEL_121:
    if (v34 <= 1)
    {
      goto LABEL_122;
    }

    goto LABEL_54;
  }

  if (v33 <= 1)
  {
    if (!v33)
    {
      v35 = BYTE14(v174);
      if (v34 <= 1)
      {
        goto LABEL_122;
      }

      goto LABEL_54;
    }

    LODWORD(v35) = DWORD1(v174) - v174;
    if (__OFSUB__(DWORD1(v174), v174))
    {
      goto LABEL_404;
    }

    v35 = v35;
    goto LABEL_121;
  }

  if (v33 == 2)
  {
    v52 = *(v174 + 16);
    v51 = *(v174 + 24);
    v38 = __OFSUB__(v51, v52);
    v35 = v51 - v52;
    if (v38)
    {
      goto LABEL_402;
    }

    goto LABEL_121;
  }

  v35 = 0;
  if (v34 <= 1)
  {
LABEL_122:
    if (v34)
    {
      LODWORD(v45) = DWORD1(v179) - v179;
      if (__OFSUB__(DWORD1(v179), v179))
      {
        goto LABEL_386;
      }

      v45 = v45;
    }

    else
    {
      v45 = BYTE14(v179);
    }

    goto LABEL_126;
  }

LABEL_54:
  if (v34 != 2)
  {
    if (v35)
    {
      return 0;
    }

    goto LABEL_131;
  }

  v44 = *(v179 + 16);
  v43 = *(v179 + 24);
  v38 = __OFSUB__(v43, v44);
  v45 = v43 - v44;
  if (v38)
  {
    goto LABEL_385;
  }

LABEL_126:
  if (v35 != v45)
  {
    return 0;
  }

  if (v35 < 1)
  {
    goto LABEL_131;
  }

  if (v33 <= 1)
  {
    v150 = *&v180[8];
    if (!v33)
    {
      v172[0] = v174;
      LODWORD(v172[1]) = DWORD2(v174);
      WORD2(v172[1]) = WORD6(v174);
      v62 = *(&v179 + 1);
      v63 = v179;
      sub_100306F6C(&v179, v173);
      sub_100306F6C(&v174, v173);
      sub_100066884(v172, v63, v62, v173);
      v64 = v173[0];
      goto LABEL_199;
    }

    v149 = v179;
    v151 = *(&v175 + 1);
    v87 = v174;
    if (v174 >> 32 < v174)
    {
      goto LABEL_415;
    }

    sub_100306F6C(&v179, v173);
    sub_100306F6C(&v174, v173);
    v67 = sub_1004A40D4();
    if (v67)
    {
      v88 = sub_1004A4104();
      if (__OFSUB__(v87, v88))
      {
        goto LABEL_429;
      }

      v67 += v87 - v88;
    }

LABEL_198:
    sub_1004A40F4();
    sub_100066884(v67, v149, *(&v149 + 1), v173);
    v64 = v173[0];
    v12 = v151;
LABEL_199:
    v65 = v31;
    v32 = v150;
    if ((v64 & 1) == 0)
    {
      goto LABEL_382;
    }

    goto LABEL_202;
  }

  v149 = v179;
  if (v33 == 2)
  {
    v150 = *&v180[8];
    v151 = *(&v175 + 1);
    v66 = *(v174 + 16);
    v148 = *(v174 + 24);
    sub_100306F6C(&v179, v173);
    sub_100306F6C(&v174, v173);
    v67 = sub_1004A40D4();
    if (v67)
    {
      v68 = sub_1004A4104();
      if (__OFSUB__(v66, v68))
      {
        goto LABEL_428;
      }

      v67 += v66 - v68;
    }

    if (__OFSUB__(v148, v66))
    {
      goto LABEL_418;
    }

    goto LABEL_198;
  }

  memset(v172, 0, 14);
  sub_100306F6C(&v179, v173);
  sub_100306F6C(&v174, v173);
  sub_100066884(v172, v149, *(&v149 + 1), v173);
  v65 = v31;
  if ((v173[0] & 1) == 0)
  {
    goto LABEL_382;
  }

LABEL_202:
  v89 = v12 >> 62;
  v90 = v32 >> 62;
  if (v12 >> 62 == 3)
  {
    v91 = 0;
    v92 = v167;
    if (!v13 && v12 == 0xC000000000000000 && v32 >> 62 == 3)
    {
      v91 = 0;
      if (!v164 && v32 == 0xC000000000000000)
      {
LABEL_235:
        v98 = v159;
        v99 = v162;
        goto LABEL_249;
      }
    }

LABEL_224:
    if (v90 <= 1)
    {
      goto LABEL_225;
    }

    goto LABEL_212;
  }

  v92 = v167;
  if (v89 <= 1)
  {
    if (!v89)
    {
      v91 = BYTE6(v12);
      if (v90 <= 1)
      {
        goto LABEL_225;
      }

      goto LABEL_212;
    }

    LODWORD(v91) = HIDWORD(v13) - v13;
    if (__OFSUB__(HIDWORD(v13), v13))
    {
      goto LABEL_408;
    }

    v91 = v91;
    goto LABEL_224;
  }

  if (v89 == 2)
  {
    v97 = *(v13 + 16);
    v96 = *(v13 + 24);
    v38 = __OFSUB__(v96, v97);
    v91 = v96 - v97;
    if (v38)
    {
      goto LABEL_407;
    }

    goto LABEL_224;
  }

  v91 = 0;
  if (v90 <= 1)
  {
LABEL_225:
    if (v90)
    {
      LODWORD(v95) = HIDWORD(v164) - v164;
      if (__OFSUB__(HIDWORD(v164), v164))
      {
        goto LABEL_389;
      }

      v95 = v95;
    }

    else
    {
      v95 = BYTE6(v32);
    }

    goto LABEL_229;
  }

LABEL_212:
  if (v90 != 2)
  {
    v98 = v159;
    v99 = v162;
    if (v91)
    {
      goto LABEL_382;
    }

    goto LABEL_249;
  }

  v94 = *(v164 + 16);
  v93 = *(v164 + 24);
  v38 = __OFSUB__(v93, v94);
  v95 = v93 - v94;
  if (v38)
  {
    goto LABEL_392;
  }

LABEL_229:
  if (v91 != v95)
  {
    goto LABEL_382;
  }

  if (v91 < 1)
  {
    goto LABEL_235;
  }

  if (v89 > 1)
  {
    if (v89 == 2)
    {
      v101 = *(v13 + 24);
      v153 = *(v13 + 16);
      sub_100014CEC(v164, v32);
      sub_100014CEC(v164, v32);
      sub_100014CEC(v164, v32);
      v102 = sub_10003A0DC(v153, v101, v12 & 0x3FFFFFFFFFFFFFFFLL, v164, v32);
      sub_100014D40(v164, v32);
      sub_100014D40(v164, v32);
      sub_100014D40(v164, v32);
      v98 = v159;
      v92 = v167;
      v99 = v162;
      if ((v102 & 1) == 0)
      {
        goto LABEL_382;
      }
    }

    else
    {
      *&v173[6] = 0;
      *v173 = 0;
      sub_100014CEC(v164, v32);
      sub_100014CEC(v164, v32);
      sub_100066884(v173, v164, v32, v172);
      sub_100014D40(v164, v32);
      sub_100014D40(v164, v32);
      v98 = v159;
      v99 = v162;
      if ((v172[0] & 1) == 0)
      {
        goto LABEL_382;
      }
    }
  }

  else
  {
    v100 = v32;
    if (v89)
    {
      v107 = v13;
      v108 = v13 >> 32;
      if (v13 >> 32 < v13)
      {
        goto LABEL_421;
      }

      v109 = v100;
      sub_100014CEC(v164, v100);
      sub_100014CEC(v164, v109);
      sub_100014CEC(v164, v109);
      v110 = sub_10003A0DC(v107, v108, v12 & 0x3FFFFFFFFFFFFFFFLL, v164, v109);
      sub_100014D40(v164, v109);
      sub_100014D40(v164, v109);
      sub_100014D40(v164, v109);
      v98 = v159;
      v92 = v167;
      v99 = v162;
      if ((v110 & 1) == 0)
      {
        goto LABEL_382;
      }
    }

    else
    {
      *v173 = v13;
      *&v173[8] = v12;
      v173[10] = BYTE2(v12);
      v173[11] = BYTE3(v12);
      v173[12] = BYTE4(v12);
      v173[13] = BYTE5(v12);
      sub_100014CEC(v164, v32);
      sub_100014CEC(v164, v32);
      sub_100066884(v173, v164, v32, v172);
      sub_100014D40(v164, v32);
      sub_100014D40(v164, v32);
      v98 = v159;
      v99 = v162;
      if ((v172[0] & 1) == 0)
      {
        goto LABEL_382;
      }
    }
  }

LABEL_249:
  v111 = v99 >> 62;
  v112 = v92 >> 62;
  if (v99 >> 62 == 3)
  {
    v113 = 0;
    if (!v160 && v99 == 0xC000000000000000 && v92 >> 62 == 3)
    {
      v113 = 0;
      if (!v161 && v92 == 0xC000000000000000)
      {
        goto LABEL_291;
      }
    }

LABEL_271:
    if (v112 <= 1)
    {
      goto LABEL_272;
    }

    goto LABEL_259;
  }

  if (v111 <= 1)
  {
    if (!v111)
    {
      v113 = BYTE6(v99);
      if (v112 <= 1)
      {
        goto LABEL_272;
      }

      goto LABEL_259;
    }

    LODWORD(v113) = HIDWORD(v160) - v160;
    if (__OFSUB__(HIDWORD(v160), v160))
    {
      goto LABEL_409;
    }

    v113 = v113;
    goto LABEL_271;
  }

  if (v111 == 2)
  {
    v118 = *(v160 + 16);
    v117 = *(v160 + 24);
    v38 = __OFSUB__(v117, v118);
    v113 = v117 - v118;
    if (v38)
    {
      goto LABEL_410;
    }

    goto LABEL_271;
  }

  v113 = 0;
  if (v112 <= 1)
  {
LABEL_272:
    if (v112)
    {
      LODWORD(v116) = HIDWORD(v161) - v161;
      if (__OFSUB__(HIDWORD(v161), v161))
      {
        goto LABEL_393;
      }

      v116 = v116;
    }

    else
    {
      v116 = BYTE6(v92);
    }

    goto LABEL_276;
  }

LABEL_259:
  if (v112 != 2)
  {
    if (v113)
    {
      goto LABEL_382;
    }

    goto LABEL_291;
  }

  v115 = *(v161 + 16);
  v114 = *(v161 + 24);
  v38 = __OFSUB__(v114, v115);
  v116 = v114 - v115;
  if (v38)
  {
    goto LABEL_394;
  }

LABEL_276:
  if (v113 != v116)
  {
    goto LABEL_382;
  }

  if (v113 < 1)
  {
    goto LABEL_291;
  }

  if (v111 > 1)
  {
    if (v111 == 2)
    {
      v120 = v99;
      v166 = *(v160 + 24);
      v169 = *(v160 + 16);
      sub_100014CEC(v161, v92);
      sub_100014CEC(v161, v92);
      sub_100014CEC(v161, v92);
      LOBYTE(v120) = sub_10003A0DC(v169, v166, v120 & 0x3FFFFFFFFFFFFFFFLL, v161, v92);
      sub_100014D40(v161, v92);
      sub_100014D40(v161, v92);
      sub_100014D40(v161, v92);
      if ((v120 & 1) == 0)
      {
        goto LABEL_382;
      }

      goto LABEL_291;
    }

    *&v173[6] = 0;
    *v173 = 0;
    sub_100014CEC(v161, v92);
    sub_100014CEC(v161, v92);
    sub_100066884(v173, v161, v92, v172);
    sub_100014D40(v161, v92);
    v119 = v161;
    goto LABEL_290;
  }

  if (!v111)
  {
    *v173 = v160;
    *&v173[8] = v99;
    v173[10] = BYTE2(v99);
    v173[11] = BYTE3(v99);
    v173[12] = BYTE4(v99);
    v173[13] = BYTE5(v99);
    sub_100014CEC(v161, v92);
    sub_100014CEC(v161, v92);
    sub_100066884(v173, v161, v92, v172);
    sub_100014D40(v161, v92);
    v119 = v161;
LABEL_290:
    sub_100014D40(v119, v92);
    if ((v172[0] & 1) == 0)
    {
      goto LABEL_382;
    }

LABEL_291:
    v122 = v14 >> 62;
    v123 = v65 >> 62;
    if (v14 >> 62 == 3)
    {
      v124 = 0;
      if (!v157 && (v14 & 0xDFFFFFFFFFFFFFFFLL) == 0xC000000000000000 && v65 >> 62 == 3)
      {
        v124 = 0;
        if (!v98 && (v65 & 0xDFFFFFFFFFFFFFFFLL) == 0xC000000000000000)
        {
          goto LABEL_324;
        }
      }
    }

    else if (v122 > 1)
    {
      if (v122 != 2)
      {
        v124 = 0;
        if (v123 <= 1)
        {
LABEL_314:
          if (v123)
          {
            LODWORD(v127) = HIDWORD(v98) - v98;
            if (__OFSUB__(HIDWORD(v98), v98))
            {
              goto LABEL_395;
            }

            v127 = v127;
          }

          else
          {
            v127 = BYTE6(v65);
          }

          goto LABEL_318;
        }

LABEL_301:
        if (v123 != 2)
        {
          v130 = v154;
          v131 = v155;
          v132 = v156;
          if (v124)
          {
            goto LABEL_382;
          }

          goto LABEL_333;
        }

        v126 = *(v98 + 16);
        v125 = *(v98 + 24);
        v38 = __OFSUB__(v125, v126);
        v127 = v125 - v126;
        if (v38)
        {
          goto LABEL_396;
        }

LABEL_318:
        if (v124 != v127)
        {
          goto LABEL_382;
        }

        if (v124 >= 1)
        {
          if (v122 > 1)
          {
            if (v122 != 2)
            {
              *&v173[6] = 0;
              *v173 = 0;
              sub_100014CEC(v98, v65 & 0xDFFFFFFFFFFFFFFFLL);
              sub_100014CEC(v98, v65 & 0xDFFFFFFFFFFFFFFFLL);
              sub_100066884(v173, v98, v65 & 0xDFFFFFFFFFFFFFFFLL, v172);
              sub_100014D40(v98, v65 & 0xDFFFFFFFFFFFFFFFLL);
              sub_100014D40(v98, v65 & 0xDFFFFFFFFFFFFFFFLL);
              v130 = v154;
              v131 = v155;
              v132 = v156;
              if ((v172[0] & 1) == 0)
              {
                goto LABEL_382;
              }

LABEL_333:
              v136 = v132 & 0xCFFFFFFFFFFFFFFFLL;
              v137 = v158 >> 62;
              v138 = v132 >> 62;
              if (v158 >> 62 == 3)
              {
                v77 = 0;
                if (!v130 && (v158 & 0xCFFFFFFFFFFFFFFFLL) == 0xC000000000000000 && v132 >> 62 == 3)
                {
                  v77 = 0;
                  if (!v131 && v136 == 0xC000000000000000)
                  {
                    goto LABEL_365;
                  }
                }
              }

              else if (v137 > 1)
              {
                if (v137 != 2)
                {
                  v77 = 0;
                  if (v138 <= 1)
                  {
LABEL_356:
                    if (v138)
                    {
                      LODWORD(v141) = HIDWORD(v131) - v131;
                      if (__OFSUB__(HIDWORD(v131), v131))
                      {
                        goto LABEL_397;
                      }

                      v141 = v141;
                    }

                    else
                    {
                      v141 = BYTE6(v132);
                    }

                    goto LABEL_360;
                  }

LABEL_343:
                  if (v138 != 2)
                  {
LABEL_347:
                    if (v77)
                    {
                      goto LABEL_382;
                    }

LABEL_365:
                    sub_1003817E8(&v179);
                    sub_1003817E8(&v174);
                    i = v170;
                    goto LABEL_378;
                  }

                  v140 = *(v131 + 16);
                  v139 = *(v131 + 24);
                  v38 = __OFSUB__(v139, v140);
                  v141 = v139 - v140;
                  if (v38)
                  {
                    goto LABEL_398;
                  }

LABEL_360:
                  if (v77 != v141)
                  {
                    goto LABEL_382;
                  }

                  if (v77 < 1)
                  {
                    goto LABEL_365;
                  }

                  if (v137 > 1)
                  {
                    if (v137 != 2)
                    {
                      *&v173[6] = 0;
                      *v173 = 0;
                      sub_100014CEC(v131, v132 & 0xCFFFFFFFFFFFFFFFLL);
                      sub_100014CEC(v131, v136);
                      goto LABEL_376;
                    }

                    v144 = *(v130 + 16);
                    v145 = *(v130 + 24);
                    sub_100014CEC(v131, v132 & 0xCFFFFFFFFFFFFFFFLL);
                    sub_100014CEC(v131, v136);
                    sub_100014CEC(v131, v136);
                    v146 = v158 & 0xFFFFFFFFFFFFFFFLL;
                  }

                  else
                  {
                    if (!v137)
                    {
                      *v173 = v130;
                      *&v173[8] = v158;
                      *&v173[10] = *(&v158 + 2);
                      sub_100014CEC(v131, v132 & 0xCFFFFFFFFFFFFFFFLL);
                      sub_100014CEC(v131, v136);
LABEL_376:
                      sub_100066884(v173, v131, v136, v172);
                      sub_1003817E8(&v179);
                      sub_1003817E8(&v174);
                      sub_100014D40(v131, v136);
                      v84 = v131;
                      v106 = v136;
LABEL_377:
                      sub_100014D40(v84, v106);
                      i = v170;
                      if ((v172[0] & 1) == 0)
                      {
                        return 0;
                      }

                      goto LABEL_378;
                    }

                    v144 = v130;
                    v145 = v130 >> 32;
                    if (v130 >> 32 < v130)
                    {
                      goto LABEL_425;
                    }

                    sub_100014CEC(v131, v132 & 0xCFFFFFFFFFFFFFFFLL);
                    sub_100014CEC(v131, v136);
                    sub_100014CEC(v131, v136);
                    v146 = v158 & 0xFFFFFFFFFFFFFFFLL;
                  }

                  v103 = sub_10003A0DC(v144, v145, v146, v131, v136);
                  sub_100014D40(v131, v136);
                  sub_1003817E8(&v179);
                  sub_1003817E8(&v174);
                  sub_100014D40(v131, v136);
                  v104 = v131;
                  v105 = v136;
                  goto LABEL_373;
                }

                v143 = *(v130 + 16);
                v142 = *(v130 + 24);
                v38 = __OFSUB__(v142, v143);
                v77 = v142 - v143;
                if (v38)
                {
                  goto LABEL_413;
                }
              }

              else
              {
                if (!v137)
                {
                  v77 = BYTE6(v158);
                  if (v138 <= 1)
                  {
                    goto LABEL_356;
                  }

                  goto LABEL_343;
                }

                LODWORD(v77) = HIDWORD(v130) - v130;
                if (__OFSUB__(HIDWORD(v130), v130))
                {
                  goto LABEL_414;
                }

                v77 = v77;
              }

              if (v138 <= 1)
              {
                goto LABEL_356;
              }

              goto LABEL_343;
            }

            v133 = *(v157 + 16);
            v134 = *(v157 + 24);
          }

          else
          {
            if (!v122)
            {
              *v173 = v157;
              *&v173[8] = v14;
              v173[10] = BYTE2(v14);
              v173[11] = BYTE3(v14);
              v173[12] = BYTE4(v14);
              v173[13] = BYTE5(v14);
              sub_100014CEC(v98, v65 & 0xDFFFFFFFFFFFFFFFLL);
              sub_100014CEC(v98, v65 & 0xDFFFFFFFFFFFFFFFLL);
              sub_100066884(v173, v98, v65 & 0xDFFFFFFFFFFFFFFFLL, v172);
              sub_100014D40(v98, v65 & 0xDFFFFFFFFFFFFFFFLL);
              sub_100014D40(v98, v65 & 0xDFFFFFFFFFFFFFFFLL);
              v130 = v154;
              v131 = v155;
              v132 = v156;
              if ((v172[0] & 1) == 0)
              {
                goto LABEL_382;
              }

              goto LABEL_333;
            }

            v133 = v157;
            v134 = v157 >> 32;
            if (v157 >> 32 < v157)
            {
              goto LABEL_424;
            }
          }

          sub_100014CEC(v98, v65 & 0xDFFFFFFFFFFFFFFFLL);
          sub_100014CEC(v98, v65 & 0xDFFFFFFFFFFFFFFFLL);
          sub_100014CEC(v98, v65 & 0xDFFFFFFFFFFFFFFFLL);
          v135 = sub_10003A0DC(v133, v134, v14 & 0x1FFFFFFFFFFFFFFFLL, v98, v65 & 0xDFFFFFFFFFFFFFFFLL);
          sub_100014D40(v98, v65 & 0xDFFFFFFFFFFFFFFFLL);
          sub_100014D40(v98, v65 & 0xDFFFFFFFFFFFFFFFLL);
          sub_100014D40(v98, v65 & 0xDFFFFFFFFFFFFFFFLL);
          v130 = v154;
          v131 = v155;
          v132 = v156;
          if ((v135 & 1) == 0)
          {
            goto LABEL_382;
          }

          goto LABEL_333;
        }

LABEL_324:
        v130 = v154;
        v131 = v155;
        v132 = v156;
        goto LABEL_333;
      }

      v129 = *(v157 + 16);
      v128 = *(v157 + 24);
      v38 = __OFSUB__(v128, v129);
      v124 = v128 - v129;
      if (v38)
      {
        goto LABEL_411;
      }
    }

    else
    {
      if (!v122)
      {
        v124 = BYTE6(v14);
        if (v123 <= 1)
        {
          goto LABEL_314;
        }

        goto LABEL_301;
      }

      LODWORD(v124) = HIDWORD(v157) - v157;
      if (__OFSUB__(HIDWORD(v157), v157))
      {
        goto LABEL_412;
      }

      v124 = v124;
    }

    if (v123 <= 1)
    {
      goto LABEL_314;
    }

    goto LABEL_301;
  }

  if (v160 >> 32 < v160)
  {
    goto LABEL_423;
  }

  sub_100014CEC(v161, v92);
  sub_100014CEC(v161, v92);
  sub_100014CEC(v161, v92);
  v121 = sub_10003A0DC(v160, v160 >> 32, v162 & 0x3FFFFFFFFFFFFFFFLL, v161, v92);
  sub_100014D40(v161, v92);
  sub_100014D40(v161, v92);
  sub_100014D40(v161, v92);
  if (v121)
  {
    goto LABEL_291;
  }

LABEL_382:
  sub_1003817E8(&v179);
  sub_1003817E8(&v174);
  return 0;
}

uint64_t sub_100385C54(uint64_t result, uint64_t a2)
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

uint64_t sub_100385CB0(void *a1, void *a2)
{
  v2 = a1[2];
  if (v2 != a2[2])
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = a1 + 4;
    v4 = a2 + 4;
    v5 = a1[4];
    v6 = a2[4];
    v7 = *(v5 + 16);
    if (v7 == *(v6 + 16))
    {
      v8 = a2 + 6;
      v9 = a2 + 5;
      v10 = a1 + 5;
      v11 = a1 + 6;
      v12 = 1;
      while (!v7 || v5 == v6)
      {
LABEL_11:
        v15 = *v10 == *v9 && *v11 == *v8;
        if (!v15 && (sub_1004A6D34() & 1) == 0)
        {
          return 0;
        }

        if (v12 == v2)
        {
          return 1;
        }

        result = 0;
        v17 = 3 * v12++;
        v17 *= 8;
        v11 = (v3 + v17 + 16);
        v10 = (v3 + v17 + 8);
        v5 = *(v3 + v17);
        v9 = (v4 + v17 + 8);
        v8 = (v4 + v17 + 16);
        v6 = *(v4 + v17);
        v7 = *(v5 + 16);
        if (v7 != *(v6 + 16))
        {
          return result;
        }
      }

      v13 = (v5 + 32);
      v14 = (v6 + 32);
      while (*v13 == *v14)
      {
        ++v13;
        ++v14;
        if (!--v7)
        {
          goto LABEL_11;
        }
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_100385DD8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    for (i = 0; ; i += 40)
    {
      v4 = *(a1 + i + 48);
      v5 = *(a1 + i + 56);
      v6 = *(a1 + i + 64);
      v7 = *(a1 + i + 66);
      v8 = *(a2 + i + 48);
      v9 = *(a2 + i + 56);
      v10 = *(a2 + i + 64);
      v11 = *(a2 + i + 66);
      v12 = *(a1 + i + 32) == *(a2 + i + 32) && *(a1 + i + 40) == *(a2 + i + 40);
      if (!v12 && (sub_1004A6D34() & 1) == 0)
      {
        break;
      }

      if (v4 == v8 && v5 == v9)
      {
        if (v6 != v10)
        {
          return 0;
        }
      }

      else
      {
        v14 = sub_1004A6D34();
        result = 0;
        if ((v14 & 1) == 0 || v6 != v10)
        {
          return result;
        }
      }

      if (v7 >> 6)
      {
        if (v7 >> 6 == 1)
        {
          result = 0;
          if ((v11 & 0xC0) != 0x40 || ((v11 ^ v7) & 0x3F) != 0)
          {
            return result;
          }
        }

        else if (v11 != 128)
        {
          return 0;
        }
      }

      else
      {
        result = 0;
        if (v11 > 0x3F || v7 != v11)
        {
          return result;
        }
      }

      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t IndexRequest.encode(to:)(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  v27 = a2;
  v26 = a4;
  v22 = a3;
  v5 = sub_10000C9C0(&qword_1005DB1A0, &qword_1004FA3C8);
  v23 = *(v5 - 8);
  v6 = *(v23 + 64);
  __chkstk_darwin(v5);
  v8 = &v22 - v7;
  v9 = sub_10000C9C0(&qword_1005DB1A8, &qword_1004FA3D0);
  v24 = *(v9 - 8);
  v25 = v9;
  v10 = *(v24 + 64);
  __chkstk_darwin(v9);
  v12 = &v22 - v11;
  v13 = sub_10000C9C0(&qword_1005DB1B0, &qword_1004FA3D8);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = &v22 - v16;
  v18 = a1[4];
  sub_10002587C(a1, a1[3]);
  sub_10038B784();
  sub_1004A6FA4();
  if (v26)
  {
    LOBYTE(v30) = 1;
    sub_10038B7D8();
    sub_1004A6BD4();
    v30 = v27;
    sub_10038B82C();
    sub_1004A6C74();
    (*(v23 + 8))(v8, v5);
  }

  else
  {
    LOBYTE(v30) = 0;
    sub_10038B880();
    sub_1004A6BD4();
    v30 = v27;
    v29 = 0;
    sub_10038B82C();
    v19 = v25;
    v20 = v28;
    sub_1004A6C74();
    if (v20)
    {
      (*(v24 + 8))(v12, v19);
      return (*(v14 + 8))(v17, v13);
    }

    v30 = v22;
    v29 = 1;
    sub_10000C9C0(&qword_1005DB1D8, &qword_1004FA3E0);
    sub_10038B8D4();
    sub_1004A6C74();
    (*(v24 + 8))(v12, v19);
  }

  return (*(v14 + 8))(v17, v13);
}

void *IndexRequest.init(from:)(uint64_t *a1)
{
  result = sub_10038B9AC(a1);
  if (v1)
  {
    return v3;
  }

  return result;
}

void *sub_100386320@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_10038B9AC(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6 & 1;
  }

  return result;
}

uint64_t sub_100386374(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (a1[2])
  {
    if (*a1 == *a2)
    {
      return *(a2 + 16);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    if (*a1 == *a2)
    {
      v5 = *(a2 + 16);
    }

    else
    {
      v5 = 1;
    }

    if (v5)
    {
      return 0;
    }

    else
    {
      return sub_100385DD8(a1[1], a2[1]);
    }
  }
}

uint64_t IndexRequest.ID.next.getter(uint64_t a1)
{
  v1 = __OFADD__(a1, 1);
  result = a1 + 1;
  if (v1)
  {
    __break(1u);
  }

  return result;
}

Swift::Int IndexRequest.ID.hashValue.getter(Swift::UInt a1)
{
  sub_1004A6E94();
  sub_1004A6EB4(a1);
  return sub_1004A6F14();
}

uint64_t sub_100386430()
{
  sub_10000C9C0(&qword_1005DB778, &qword_1004FD4E0);
  result = swift_allocObject();
  *(result + 24) = 0;
  *(result + 16) = 1;
  off_1005DB060 = result;
  return result;
}

void static IndexRequest.ID.makeNext()()
{
  if (qword_1005DAC80 != -1)
  {
    swift_once();
  }

  v0 = off_1005DB060;

  os_unfair_lock_lock(v0 + 6);
  v1 = *&v0[4]._os_unfair_lock_opaque;
  if (__OFADD__(v1, 1))
  {
    __break(1u);
  }

  else
  {
    *&v0[4]._os_unfair_lock_opaque = v1 + 1;
    os_unfair_lock_unlock(v0 + 6);
  }
}

uint64_t IndexRequest.ID.init(from:)(uint64_t *a1)
{
  sub_100104D00(a1, v4);
  v2 = sub_1004A5DE4();
  sub_1000197E0(a1);
  return v2;
}

uint64_t sub_10038657C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_100104D00(a1, v7);
  v5 = sub_1004A5DE4();
  result = sub_1000197E0(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

uint64_t sub_1003866A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x64657243656B616DLL && a2 == 0xEF736C6169746E65)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1004A6D34();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_100386738(uint64_t a1)
{
  v2 = sub_10038BF7C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100386774(uint64_t a1)
{
  v2 = sub_10038BF7C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1003867B0(uint64_t a1)
{
  v2 = sub_10038BFD0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1003867EC(uint64_t a1)
{
  v2 = sub_10038BFD0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t CredentialRequest.encode(to:)(void *a1, uint64_t a2, uint64_t a3)
{
  v16 = a2;
  v17 = a3;
  v4 = sub_10000C9C0(&qword_1005DB1F0, &qword_1004FA3E8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v16 - v7;
  v9 = sub_10000C9C0(&qword_1005DB1F8, &qword_1004FA3F0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v16 - v12;
  v14 = a1[4];
  sub_10002587C(a1, a1[3]);
  sub_10038BF7C();
  sub_1004A6FA4();
  sub_10038BFD0();
  sub_1004A6BD4();
  v18 = v16;
  v19 = v17;
  sub_10037DF88();
  sub_1004A6C74();
  (*(v5 + 8))(v8, v4);
  return (*(v10 + 8))(v13, v9);
}

void *sub_100386A50@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_10038C024(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

uint64_t sub_100386AB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x69746E6564657263 && a2 == 0xEB00000000736C61)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1004A6D34();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_100386B44(uint64_t a1)
{
  v2 = sub_10038C3A4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100386B80(uint64_t a1)
{
  v2 = sub_10038C3A4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100386BBC(uint64_t a1)
{
  v2 = sub_10038C3F8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100386BF8(uint64_t a1)
{
  v2 = sub_10038C3F8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t CredentialResponse.encode(to:)(void *a1, uint64_t a2)
{
  v16[0] = sub_10000C9C0(&qword_1005DB210, &qword_1004FA3F8);
  v4 = *(v16[0] - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v16[0]);
  v7 = v16 - v6;
  v8 = sub_10000C9C0(&qword_1005DB218, &qword_1004FA400);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = v16 - v11;
  v13 = a1[4];
  sub_10002587C(a1, a1[3]);
  sub_10038C3A4();
  sub_1004A6FA4();
  sub_10038C3F8();
  sub_1004A6BD4();
  v16[3] = a2;
  sub_10000C9C0(&qword_1005DB230, &qword_1004FA408);
  sub_10038C44C();
  v14 = v16[0];
  sub_1004A6C74();
  (*(v4 + 8))(v7, v14);
  return (*(v9 + 8))(v12, v8);
}

void *sub_100386E6C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_10038C524(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

unint64_t sub_100386EC0()
{
  v1 = *v0;
  v2 = 0x686372616573;
  v3 = 0xD000000000000015;
  v4 = 0x6C616E41646E6573;
  if (v1 == 4)
  {
    v4 = 0xD000000000000012;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0xD000000000000016;
  if (v1 == 1)
  {
    v5 = 0x70756B6F6F6CLL;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_100386F8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10038CC80(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100386FB4(uint64_t a1)
{
  v2 = sub_10038C8B4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100386FF0(uint64_t a1)
{
  v2 = sub_10038C8B4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10038702C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 12383 && a2 == 0xE200000000000000;
  if (v5 || (sub_1004A6D34() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 12639 && a2 == 0xE200000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1004A6D34();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1003870F8(uint64_t a1)
{
  v2 = sub_10038C95C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100387134(uint64_t a1)
{
  v2 = sub_10038C95C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100387170()
{
  v1 = 0x65726F666562;
  if (*v0 != 1)
  {
    v1 = 0x74696D696CLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 12383;
  }
}

uint64_t sub_1003871B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10038CE88(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1003871E0(uint64_t a1)
{
  v2 = sub_10038CB30();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10038721C(uint64_t a1)
{
  v2 = sub_10038CB30();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100387258(uint64_t a1)
{
  v2 = sub_10038CADC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100387294(uint64_t a1)
{
  v2 = sub_10038CADC();

  return CodingKey.debugDescription.getter(a1, v2);
}