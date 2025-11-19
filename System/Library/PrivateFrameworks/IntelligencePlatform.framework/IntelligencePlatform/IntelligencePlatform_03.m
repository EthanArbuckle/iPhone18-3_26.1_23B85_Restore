uint64_t sub_1ABAB47C4(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1ABAE2850(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1ABAB480C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_1ABAD219C(a2, a3);
  sub_1ABA7BBB0(v4);
  (*(v5 + 8))(a1);
  return a1;
}

uint64_t EntityIdentifier.stringValue.getter()
{
  v1 = 3826797;
  if ((*v0 & 0x80000000000000) == 0)
  {
    v1 = 3828069;
  }

  v5 = v1;
  v4 = *v0;
  v2 = sub_1ABF24FF4();
  MEMORY[0x1AC5A9410](v2);

  return v5;
}

uint64_t sub_1ABAB48D8(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, void, uint64_t, uint64_t *))
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = a2;
  a4(a1, a3, 0, isUniquelyReferenced_nonNull_native, &v12);
  v10 = v12;
  if (v4)
  {
  }

  return v10;
}

uint64_t sub_1ABAB4960(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5)
{
  v61 = a5;
  sub_1ABAB4C04(v56);
  v8 = v56[1];
  v9 = v58;
  v10 = v59;
  v49 = v60;
  v50 = v56[0];
  v46 = v57;
  v11 = (v57 + 64) >> 6;
  v48 = a1;

  v47 = a3;

  if (v10)
  {
    while (1)
    {
      v51 = a4;
      v12 = v9;
LABEL_8:
      v14 = __clz(__rbit64(v10)) | (v12 << 6);
      v15 = (*(v50 + 48) + 16 * v14);
      v16 = v15[1];
      v17 = *(*(v50 + 56) + 8 * v14);
      v55[0] = *v15;
      v55[1] = v16;
      v55[2] = v17;

      v49(&v52, v55);

      v18 = v52;
      v19 = v53;
      v20 = v54;
      v21 = *v61;
      v29 = sub_1ABA94FC8(v52, v53);
      v30 = *(v21 + 16);
      v31 = (v22 & 1) == 0;
      v32 = v30 + v31;
      if (__OFADD__(v30, v31))
      {
        break;
      }

      v33 = v22;
      if (*(v21 + 24) >= v32)
      {
        if ((v51 & 1) == 0)
        {
          sub_1ABAD219C(&qword_1EB4D1FD8, &qword_1ABF4ACE0);
          sub_1ABF24C74();
        }
      }

      else
      {
        v34 = v61;
        sub_1ABC04E64(v32, v51 & 1, v23, v24, v25, v26, v27, v28, v46, v47, v48, SBYTE4(v48));
        v35 = *v34;
        v36 = sub_1ABA94FC8(v18, v19);
        if ((v33 & 1) != (v37 & 1))
        {
          goto LABEL_27;
        }

        v29 = v36;
      }

      v10 &= v10 - 1;
      v38 = *v61;
      if (v33)
      {
        v39 = *(v38[7] + 8 * v29);

        if (v20 >= v39)
        {
          v40 = v20;
        }

        else
        {
          v40 = v39;
        }

        *(v38[7] + 8 * v29) = v40;
      }

      else
      {
        v38[(v29 >> 6) + 8] |= 1 << v29;
        v41 = (v38[6] + 16 * v29);
        *v41 = v18;
        v41[1] = v19;
        *(v38[7] + 8 * v29) = v20;
        v42 = v38[2];
        v43 = __OFADD__(v42, 1);
        v44 = v42 + 1;
        if (v43)
        {
          goto LABEL_26;
        }

        v38[2] = v44;
      }

      a4 = 1;
      v9 = v12;
      if (!v10)
      {
        goto LABEL_3;
      }
    }
  }

  else
  {
LABEL_3:
    v13 = v9;
    while (1)
    {
      v12 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v12 >= v11)
      {
        sub_1ABAB4C48();
      }

      v10 = *(v8 + 8 * v12);
      ++v13;
      if (v10)
      {
        v51 = a4;
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  result = sub_1ABF25104();
  __break(1u);
  return result;
}

uint64_t sub_1ABAB4C0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v4 = -1 << *(a1 + 32);
  *a4 = a1;
  v7 = *(a1 + 64);
  result = a1 + 64;
  v6 = v7;
  v8 = ~v4;
  v9 = -v4;
  a4[1] = result;
  a4[2] = v8;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  a4[3] = 0;
  a4[4] = v10 & v6;
  a4[5] = a2;
  a4[6] = a3;
  return result;
}

uint64_t sub_1ABAB4C50(unint64_t a1, uint64_t (*a2)(uint64_t, void), void (*a3)(uint64_t, uint64_t, unint64_t))
{
  if (a1 >> 62)
  {
    v8 = sub_1ABF24CA4();
    if (v8)
    {
      v9 = v8;
      v4 = a2(v8, 0);
      a3(v4 + 32, v9, a1);
      v11 = v10;

      if (v11 == v9)
      {
        return v4;
      }

      __break(1u);
    }

    return MEMORY[0x1E69E7CC0];
  }

  return a1 & 0xFFFFFFFFFFFFFF8;
}

void sub_1ABAB4D10(uint64_t *a1, uint64_t (*a2)(uint64_t), void *a3, void (*a4)(uint64_t *, int64_t, uint64_t *))
{
  v9 = a1[1];
  v10 = sub_1ABF24FE4();
  if (v10 < v9)
  {
    v11 = v10;
    v12 = a2(v9 / 2);
    v14[0] = v13;
    v14[1] = (v9 / 2);
    sub_1ABC1DF44(v14, v15, a1, v11, a3, a4);
    if (v4)
    {
      if (v9 < -1)
      {
        __break(1u);
        goto LABEL_5;
      }
    }

    else if (v9 < -1)
    {
LABEL_12:
      __break(1u);
      return;
    }

    *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10) = 0;

    return;
  }

LABEL_5:
  if (v9 < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (v9)
  {
    sub_1ABAB4E14(0, v9, 1, a1, a3);
  }
}

uint64_t sub_1ABAB4E14(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4, void *a5)
{
  if (a3 != a2)
  {
    v5 = *a4;
    v6 = *a4 + 8 * a3 - 8;
    v7 = result - a3;
    while (2)
    {
      v8 = *(v5 + 8 * a3);
      v9 = v7;
      v10 = v6;
      do
      {
        v11 = *v10;
        if (*(*v10 + *a5) >= *(v8 + *a5))
        {
          break;
        }

        if (!v5)
        {
          __break(1u);
          return result;
        }

        *v10 = v8;
        v10[1] = v11;
        --v10;
      }

      while (!__CFADD__(v9++, 1));
      ++a3;
      v6 += 8;
      --v7;
      if (a3 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

uint64_t sub_1ABAB4E7C()
{
  sub_1ABA7BBF8();
  sub_1ABAB10C8();
  v4 = *(v3 + 48);
  v5 = *v2;
  sub_1ABA7BBC0();
  *v6 = v5;

  sub_1ABA82A20();
  if (!v1)
  {
    v7 = v0;
  }

  return v8(v7);
}

uint64_t sub_1ABAB4F64()
{
  sub_1ABA7BBF8();
  sub_1ABA7BC10();
  v2 = *(v1 + 16);
  v3 = *v0;
  sub_1ABA7BBC0();
  *v4 = v3;

  sub_1ABA80A84();

  return v5();
}

uint64_t sub_1ABAB5044@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1ABBB76E8(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1ABAB5070(uint64_t result)
{
  *(v2 + 16) = v1;
  *(v2 + 24) = 2 * result - 64;
  return result;
}

__n128 sub_1ABAB50C4()
{
  result = *(v1 - 160);
  v3 = *(v1 - 144);
  v4 = *(v1 - 136);
  v5 = *(v0 + 272);
  return result;
}

uint64_t sub_1ABAB5160()
{
}

void sub_1ABAB5190()
{

  JUMPOUT(0x1AC5A9410);
}

uint64_t sub_1ABAB51C8()
{

  return sub_1ABF24F14();
}

uint64_t sub_1ABAB51E4(uint64_t result)
{
  *(v1 - 96) = result;
  *(v1 - 128) = 3;
  return result;
}

void sub_1ABAB5200(uint64_t a1@<X8>, __n128 a2@<Q0>, __n128 a3@<Q1>)
{
  *v5 = a1;
  *(v5 + 8) = v3;
  *(v5 + 16) = a2;
  *(v5 + 32) = v4;
  *(v5 + 40) = a3;
}

uint64_t sub_1ABAB5214()
{

  return sub_1ABA88934(&STACK[0xB90]);
}

uint64_t sub_1ABAB522C()
{
  result = v0;
  v4 = *(v1 - 152);
  v3 = *(v1 - 144);
  return result;
}

uint64_t sub_1ABAB5278()
{

  return sub_1ABF24C64();
}

__n128 sub_1ABAB5298()
{
  result = *&STACK[0xE90];
  v1 = *&STACK[0xEA0];
  *&STACK[0xEC0] = *&STACK[0xE90];
  *&STACK[0xED0] = v1;
  LOBYTE(STACK[0xEE0]) = STACK[0xEB0];
  return result;
}

uint64_t sub_1ABAB52B8()
{

  return sub_1ABF23D34();
}

uint64_t sub_1ABAB5308()
{
  *(v3 - 120) = v0;
  v4 = *(v1 + 8);
  return v2;
}

uint64_t sub_1ABAB532C()
{

  return sub_1ABF25054();
}

void *sub_1ABAB5358()
{
  *(v1 - 152) = v0;
  v3 = *(v1 - 96);
  v4 = *(v1 - 104);

  return sub_1ABA93E20((v1 - 128), v4);
}

uint64_t sub_1ABAB53B8()
{

  return sub_1ABF252C4();
}

uint64_t sub_1ABAB540C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{

  return sub_1ABAD219C(a5, a6);
}

void sub_1ABAB5464()
{
  v2 = *(v1 - 88);
  *(v1 - 120) = v2 + 16;
  *(v1 - 112) = v2 + 32;
  *(v1 - 160) = v2 + 8;
  *(v1 - 152) = v0;
}

__n128 sub_1ABAB548C()
{
  result = *&STACK[0xE30];
  v1 = *&STACK[0xE40];
  *&STACK[0xE60] = *&STACK[0xE30];
  *&STACK[0xE70] = v1;
  LOBYTE(STACK[0xE80]) = STACK[0xE50];
  return result;
}

uint64_t sub_1ABAB54E0()
{

  return sub_1ABF24E64();
}

uint64_t sub_1ABAB5528()
{

  return sub_1ABF25054();
}

void *sub_1ABAB5540()
{
  *(v1 - 128) = v0;
  v3 = *(v1 - 88);
  v4 = *(v1 - 96);

  return sub_1ABA93E20((v1 - 120), v4);
}

void sub_1ABAB5588(uint64_t a1@<X8>)
{
  *v3 = a1;
  *(v3 + 8) = v1;
  *(v3 + 16) = 2;
  *(v3 + 24) = v2;
}

void *sub_1ABAB55C4(uint64_t *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char __dst)
{
  v16 = *a1;
  v17 = a1[1];

  return memcpy(&__dst, v14, 0x69uLL);
}

uint64_t sub_1ABAB5604()
{

  return swift_allocObject();
}

uint64_t sub_1ABAB5638()
{
  v3 = *(v1 + 48);
  v5 = *v0;
  v4 = v0[1];
  v6 = *(v2 - 136);
  v7 = **(v2 - 112);
  return *(v2 - 152);
}

__n128 sub_1ABAB5660()
{
  result = *&STACK[0xDD0];
  v1 = *&STACK[0xDE0];
  *&STACK[0xE00] = *&STACK[0xDD0];
  *&STACK[0xE10] = v1;
  LOBYTE(STACK[0xE20]) = STACK[0xDF0];
  return result;
}

uint64_t sub_1ABAB5680@<X0>(uint64_t a1@<X8>)
{
  v3 = *(a1 - 256);
  v4 = *(v1 - 144);

  return sub_1ABF24EC4();
}

void sub_1ABAB56BC()
{
  v2 = *(v0 + 16) + 1;

  sub_1ABADAADC();
}

uint64_t sub_1ABAB5704(uint64_t a1)
{

  return sub_1ABA7E1E0(a1, 1, v1);
}

void *sub_1ABAB571C@<X0>(uint64_t a1@<X8>)
{

  return memcpy((a1 + 32), (v1 - 200), 0x62uLL);
}

uint64_t sub_1ABAB5744()
{
}

uint64_t sub_1ABAB578C()
{

  return swift_dynamicCast();
}

__n128 sub_1ABAB5828()
{
  result = *&STACK[0xD70];
  v1 = *&STACK[0xD80];
  *&STACK[0xDA0] = *&STACK[0xD70];
  *&STACK[0xDB0] = v1;
  LOBYTE(STACK[0xDC0]) = STACK[0xD90];
  return result;
}

uint64_t sub_1ABAB58F8()
{
  result = v0;
  v3 = *(v1 - 168);
  return result;
}

uint64_t sub_1ABAB591C(uint64_t a1, uint64_t a2)
{
  *(a2 + 16) = 0;

  return swift_willThrow();
}

uint64_t sub_1ABAB5950()
{

  return sub_1ABF22D34();
}

uint64_t sub_1ABAB5968@<X0>(uint64_t a1@<X8>)
{
  v1 = *(a1 + 3920);
  v2 = *(a1 + 3928);
  return *(a1 + 3912);
}

uint64_t sub_1ABAB599C()
{

  return swift_once();
}

uint64_t sub_1ABAB59CC()
{
  v2 = *(v0 + 40);

  return sub_1ABF25234();
}

uint64_t sub_1ABAB59E4(__n128 *a1, __n128 a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, unint64_t a28, uint64_t a29)
{
  a1[1] = a2;
  a1[2].n128_u64[0] = a28;
  return a29;
}

uint64_t sub_1ABAB59F8()
{
  v3 = *(v2 - 88);
  v4 = *(v0 + 56) + *(v3 + 72) * v1;
  v5 = *(v3 + 16);
  result = *(v2 - 96);
  v7 = *(v2 - 120);
  return result;
}

__n128 sub_1ABAB5A24()
{
  result = *&STACK[0xD10];
  v1 = *&STACK[0xD20];
  *&STACK[0xD40] = *&STACK[0xD10];
  *&STACK[0xD50] = v1;
  LOBYTE(STACK[0xD60]) = STACK[0xD30];
  return result;
}

uint64_t sub_1ABAB5A44()
{
  v3 = *(v0 + 48);
  v4 = *(v0 + 56);

  return sub_1ABADD6D8(v3, v4, (v1 - 216));
}

uint64_t sub_1ABAB5A5C()
{
  *(v1 + 24) = v0;
  v5 = *(v2 + 32);
  result = v1 + *(v3 + 24);
  v7 = *(v4 - 120);
  return result;
}

uint64_t sub_1ABAB5A78(_WORD *a1)
{
  *a1 = 0;

  return sub_1ABF23724();
}

uint64_t sub_1ABAB5AA4()
{

  return sub_1ABF25054();
}

uint64_t sub_1ABAB5AD8()
{

  return swift_getAssociatedConformanceWitness();
}

uint64_t sub_1ABAB5B14()
{

  return swift_allocObject();
}

uint64_t sub_1ABAB5B64()
{

  return sub_1ABAD219C(v0, v1);
}

uint64_t sub_1ABAB5B88()
{

  return swift_slowAlloc();
}

uint64_t sub_1ABAB5BA4()
{

  return sub_1ABA88934(&STACK[0x860]);
}

__n128 sub_1ABAB5BBC()
{
  v2 = *(v0 + 56);
  *(v1 + 64) = *(v0 + 40);
  *(v1 + 80) = v2;
  *(v1 + 96) = *(v0 + 72);
  result = *(v0 + 81);
  *(v1 + 105) = result;
  return result;
}

void sub_1ABAB5C10()
{
  v1 = v0[136];
  v2 = v0[135];
  v3 = v0[134];
  v4 = v0[131];
  v5 = v0[129];
  v6 = v0[128];
  v7 = v0[127];
  v8 = v0[124];
}

uint64_t sub_1ABAB5C5C()
{

  return sub_1ABB4E3B4(v1, v0);
}

__n128 sub_1ABAB5C84()
{
  result = *&STACK[0xB30];
  v1 = *&STACK[0xB40];
  *&STACK[0xB60] = *&STACK[0xB30];
  *&STACK[0xB70] = v1;
  LOBYTE(STACK[0xB80]) = STACK[0xB50];
  return result;
}

void sub_1ABAB5CBC()
{
  v0[11] = 0;
  v0[12] = 0;
  v0[13] = 0;
  v0[14] = 0;
  v0[15] = 0;
  v0[16] = 0;
  v0[17] = 0;
}

__n128 sub_1ABAB5CE8()
{
  v3 = *v0;
  v4 = v0[1];
  v5 = v0[2];
  result = *(v0 + 41);
  *(v1 + 41) = result;
  return result;
}

void sub_1ABAB5D34(unint64_t a1@<X8>, __n128 a2@<Q0>)
{
  v4[2] = a2;
  v4[3].n128_u64[0] = a1;
  v4[3].n128_u64[1] = v2;
  v4[4].n128_u16[0] = v3;
}

uint64_t sub_1ABAB5D80(_WORD *a1)
{
  *a1 = 0;

  return sub_1ABF23724();
}

uint64_t sub_1ABAB5DA4()
{

  return sub_1ABF217D4();
}

void sub_1ABAB5DD4()
{
}

void sub_1ABAB5DEC(uint64_t a1@<X8>)
{
  *(v1 + 16) = v3;
  *(v1 + 24) = 2 * (a1 / v4);
  v5 = *(v2 + 16);
  v6 = (*(v2 + 24) >> 1) * v4;
}

uint64_t sub_1ABAB5E34@<X0>(uint64_t a1@<X8>, uint64_t a2)
{
  v3 = *(a1 + 3104);
  v4 = *(a1 + 3112);
  v5 = *(a1 + 3096);

  return sub_1ABA91D48(v5, v3, v4, &a2);
}

uint64_t sub_1ABAB5E68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{

  return sub_1ABA88934(&a67);
}

uint64_t sub_1ABAB5E8C()
{

  return sub_1ABA88934(&STACK[0xF80]);
}

uint64_t sub_1ABAB5EB0()
{

  return sub_1ABA88934(&STACK[0xA70]);
}

uint64_t sub_1ABAB5EC8()
{
  v1 = *(v0 - 176);
  *(v0 - 104) = *(v0 - 184);
  *(v0 - 96) = v1;
  result = *(v0 - 168);
  *(v0 - 88) = result;
  return result;
}

uint64_t sub_1ABAB5EDC@<X0>(uint64_t a1@<X8>)
{
  v1 = *(a1 + 3992);
  v2 = *(a1 + 4000);
  return *(a1 + 3984);
}

void sub_1ABAB5EEC(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v5 = MEMORY[0x1E69E62F8];

  sub_1ABD14134(319, a2, a3, a4, v5);
}

__n128 sub_1ABAB5F14()
{
  result = *(v1 - 208);
  v3 = *(v1 - 192);
  v4 = *(v1 - 184);
  v5 = *(v0 + 224);
  return result;
}

uint64_t sub_1ABAB5F38()
{

  return sub_1ABA88934(&STACK[0xE60]);
}

uint64_t sub_1ABAB5F50()
{

  return swift_getAssociatedTypeWitness();
}

uint64_t sub_1ABAB5F68@<X0>(uint64_t a1@<X8>)
{
  v1 = *(a1 + 4016);
  v2 = *(a1 + 4024);
  return *(a1 + 4008);
}

void sub_1ABAB5F78(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{

  sub_1ABD14134(319, a2, a3, a4, type metadata accessor for OneOf);
}

__n128 sub_1ABAB5FA0()
{
  result = *(v0 - 208);
  v2 = *(v0 - 192);
  *(v0 - 160) = result;
  *(v0 - 144) = v2;
  return result;
}

uint64_t sub_1ABAB5FB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  v11 = *(v9 - 144);
  *(v9 - 112) = *(v9 - 160);
  *(v9 - 96) = v11;
  *(v8 + 320) = *(v8 + 272);

  return sub_1ABA856C4(v9 - 112, va);
}

uint64_t sub_1ABAB5FF0@<X0>(uint64_t a1@<X8>)
{
  v1 = *(a1 + 4040);
  v2 = *(a1 + 4048);
  return *(a1 + 4032);
}

uint64_t sub_1ABAB6000()
{

  return sub_1ABA88934(&STACK[0x950]);
}

uint64_t sub_1ABAB6024@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>, uint64_t a4, ...)
{
  va_start(va, a4);
  v6 = *(a3 + v4);

  return sub_1ABA8882C(v6, a1, a2, va);
}

void static EntityClass.movie.getter()
{
  if (_Records_GDEntityClass_records)
  {
    v0 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0xE10), *(_Records_GDEntityClass_records + 0xE18), *(_Records_GDEntityClass_records + 0xE20), v10);
    sub_1ABA8F1BC(v0, v1, v2, v3, v4, v5, v6, v7, v9, v8, v10[0], v10[1], v11);
  }

  else
  {
    __break(1u);
  }
}

void static EntityClass.sportsOrganization.getter()
{
  if (_Records_GDEntityClass_records)
  {
    v0 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0xE28), *(_Records_GDEntityClass_records + 0xE30), *(_Records_GDEntityClass_records + 0xE38), v10);
    sub_1ABA8F1BC(v0, v1, v2, v3, v4, v5, v6, v7, v9, v8, v10[0], v10[1], v11);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1ABAB6120()
{

  return swift_allocObject();
}

void static EntityClass.sportsLeague.getter()
{
  if (_Records_GDEntityClass_records)
  {
    v0 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0xE40), *(_Records_GDEntityClass_records + 0xE48), *(_Records_GDEntityClass_records + 0xE50), v10);
    sub_1ABA8F1BC(v0, v1, v2, v3, v4, v5, v6, v7, v9, v8, v10[0], v10[1], v11);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1ABAB61B4@<X0>(char a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  *(v9 + 3768) = a1;

  return sub_1ABA856C4(&STACK[0xF80], va);
}

void static EntityClass.athlete.getter()
{
  if (_Records_GDEntityClass_records)
  {
    v0 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0xE58), *(_Records_GDEntityClass_records + 0xE60), *(_Records_GDEntityClass_records + 0xE68), v10);
    sub_1ABA8F1BC(v0, v1, v2, v3, v4, v5, v6, v7, v9, v8, v10[0], v10[1], v11);
  }

  else
  {
    __break(1u);
  }
}

void static EntityClass.personInTheArts.getter()
{
  if (_Records_GDEntityClass_records)
  {
    v0 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0xE70), *(_Records_GDEntityClass_records + 0xE78), *(_Records_GDEntityClass_records + 0xE80), v10);
    sub_1ABA8F1BC(v0, v1, v2, v3, v4, v5, v6, v7, v9, v8, v10[0], v10[1], v11);
  }

  else
  {
    __break(1u);
  }
}

void static EntityClass.musician.getter()
{
  if (_Records_GDEntityClass_records)
  {
    v0 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0xE88), *(_Records_GDEntityClass_records + 0xE90), *(_Records_GDEntityClass_records + 0xE98), v10);
    sub_1ABA8F1BC(v0, v1, v2, v3, v4, v5, v6, v7, v9, v8, v10[0], v10[1], v11);
  }

  else
  {
    __break(1u);
  }
}

void sub_1ABAB6320(unint64_t a1@<X8>, __n128 a2@<Q0>)
{
  v3[72] = a2;
  v3[73].n128_u64[0] = a1;
  v3[73].n128_u64[1] = v2;
}

void static EntityClass.televisionProgram.getter()
{
  if (_Records_GDEntityClass_records)
  {
    v0 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0xEA0), *(_Records_GDEntityClass_records + 0xEA8), *(_Records_GDEntityClass_records + 0xEB0), v10);
    sub_1ABA8F1BC(v0, v1, v2, v3, v4, v5, v6, v7, v9, v8, v10[0], v10[1], v11);
  }

  else
  {
    __break(1u);
  }
}

void static EntityClass.sportsActivity.getter()
{
  if (_Records_GDEntityClass_records)
  {
    v0 = sub_1ABAA1B1C(_Records_GDEntityClass_records);
    v3 = sub_1ABA8882C(v0, v1, v2, v13);
    sub_1ABA8F1BC(v3, v4, v5, v6, v7, v8, v9, v10, v12, v11, v13[0], v13[1], v14);
  }

  else
  {
    __break(1u);
  }
}

void static EntityClass.screenTimeSegment.getter()
{
  if (_Records_GDEntityClass_records)
  {
    v0 = sub_1ABB7E0FC(_Records_GDEntityClass_records);
    v3 = sub_1ABA8882C(v0, v1, v2, v13);
    sub_1ABA8F1BC(v3, v4, v5, v6, v7, v8, v9, v10, v12, v11, v13[0], v13[1], v14);
  }

  else
  {
    __break(1u);
  }
}

void static EntityClass.myPet.getter()
{
  if (_Records_GDEntityClass_records)
  {
    v0 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0xEE8), *(_Records_GDEntityClass_records + 0xEF0), *(_Records_GDEntityClass_records + 0xEF8), v10);
    sub_1ABA8F1BC(v0, v1, v2, v3, v4, v5, v6, v7, v9, v8, v10[0], v10[1], v11);
  }

  else
  {
    __break(1u);
  }
}

void static EntityClass.myDog.getter()
{
  if (_Records_GDEntityClass_records)
  {
    v0 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0xF00), *(_Records_GDEntityClass_records + 0xF08), *(_Records_GDEntityClass_records + 0xF10), v10);
    sub_1ABA8F1BC(v0, v1, v2, v3, v4, v5, v6, v7, v9, v8, v10[0], v10[1], v11);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1ABAB6580()
{

  return swift_slowAlloc();
}

__n128 sub_1ABAB659C()
{
  result = *&STACK[0x320];
  v1 = *&STACK[0x330];
  *&STACK[0x350] = *&STACK[0x320];
  *&STACK[0x360] = v1;
  LOBYTE(STACK[0x370]) = STACK[0x340];
  return result;
}

id sub_1ABAB65E0()
{

  return [v1 v2];
}

void sub_1ABAB6610()
{
  v2 = *(v0 - 224);
  v3 = *(v0 - 216);

  JUMPOUT(0x1AC5A9410);
}

void sub_1ABAB663C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, __int16 a14, uint64_t a15, uint64_t a16)
{
  *(v16 + 72) = a16;
  *(v16 + 80) = a15;
  *(v16 + 88) = a14;
}

uint64_t sub_1ABAB666C()
{

  return sub_1ABF21894();
}

void sub_1ABAB6690()
{
  v1 = *(v0 - 224);
  v3 = *(v1 + 16);
  v2 = *(v1 + 24);
}

void sub_1ABAB66A4()
{
  *(v1 + 256) = v2;
  *(v0 + 41) = *(v0 + 139);
  *(v1 + 260) = *(v0 + 142);
}

uint64_t sub_1ABAB66BC()
{
  v2 = *(v0 - 160);
}

void static EntityClass.myCat.getter()
{
  if (_Records_GDEntityClass_records)
  {
    v0 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0xF18), *(_Records_GDEntityClass_records + 0xF20), *(_Records_GDEntityClass_records + 0xF28), v10);
    sub_1ABA8F1BC(v0, v1, v2, v3, v4, v5, v6, v7, v9, v8, v10[0], v10[1], v11);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1ABAB6744@<X0>(uint64_t a1@<X8>, uint64_t a2)
{
  v3 = *(a1 + 4784);
  v4 = *(a1 + 4792);
  v5 = *(a1 + 4776);

  return sub_1ABA91D48(v5, v3, v4, &a2);
}

__n128 sub_1ABAB6778()
{
  result = *&STACK[0x2F0];
  v1 = *&STACK[0x300];
  *&STACK[0x320] = *&STACK[0x2F0];
  *&STACK[0x330] = v1;
  LOBYTE(STACK[0x340]) = STACK[0x310];
  return result;
}

uint64_t sub_1ABAB67A0()
{
  v2 = *(*(v0 - 112) + 16);

  return sub_1ABF24BD4();
}

void sub_1ABAB67D0(unint64_t a1@<X8>, __n128 a2@<Q0>)
{
  v4[1] = a2;
  v4[2].n128_u64[0] = a1;
  v4[2].n128_u64[1] = v2;
  v4[3].n128_u16[0] = v3;
}

uint64_t sub_1ABAB6804@<X0>(char a1@<W8>)
{
  *(v1 - 128) = a1;
  v3 = *(v1 - 160);

  return sub_1ABF24E34();
}

uint64_t sub_1ABAB6828()
{
  v2 = *(v0 - 128);
  v3 = *(v0 - 120);

  return sub_1ABA96210(v2, v3);
}

__n128 sub_1ABAB68A4()
{
  result = *&STACK[0x2C0];
  v1 = *&STACK[0x2D0];
  *&STACK[0x2F0] = *&STACK[0x2C0];
  *&STACK[0x300] = v1;
  LOBYTE(STACK[0x310]) = STACK[0x2E0];
  return result;
}

uint64_t sub_1ABAB68E0(uint64_t a1, uint64_t a2)
{
  sub_1ABA7AA24(a1, a2);

  return sub_1ABF237D4();
}

uint64_t sub_1ABAB6908()
{
  v2 = *(*(v0 - 112) + 16);

  return sub_1ABF24BD4();
}

uint64_t sub_1ABAB6924(uint64_t result)
{
  *(v1 - 112) = result;
  v2 = *(result - 8);
  return result;
}

uint64_t sub_1ABAB6938()
{

  return swift_getAssociatedTypeWitness();
}

uint64_t sub_1ABAB6950()
{

  return sub_1ABD1927C(v0 - 176, v0 - 240);
}

uint64_t sub_1ABAB6994()
{

  return sub_1ABF24F54();
}

void sub_1ABAB69C8(unint64_t a1@<X8>, __n128 a2@<Q0>)
{
  v3[67] = a2;
  v3[68].n128_u64[0] = a1;
  v3[68].n128_u64[1] = v2;
}

uint64_t sub_1ABAB6B40@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1ABAB6ABC();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1ABAB6FC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a1 == a5 && a2 == a6)
  {
    return sub_1ABA7E270();
  }

  else
  {
    return sub_1ABA946D8();
  }
}

uint64_t sub_1ABAB7210@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1ABAD4E20();
  *a1 = result;
  return result;
}

void sub_1ABAB7254(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  sub_1ABAB7288();
  *a2 = v4;
  *(a2 + 8) = v5 & 1;
}

uint64_t sub_1ABAB729C@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1ABAB72D0(*a1);
  *a2 = result;
  *(a2 + 4) = BYTE4(result) & 1;
  return result;
}

uint64_t sub_1ABAB72EC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  return sub_1ABAD4974() & 1;
}

uint64_t getEnumTagSinglePayload for MockLocationFeatures(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

char *sub_1ABAB7390(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[8 * a2] <= a3)
  {
    return sub_1ABA8EE60(a3, result);
  }

  return result;
}

uint64_t sub_1ABAB73B0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 40);

  v3 = *(v0 + 48);

  v4 = *(v0 + 56);

  v5 = *(v0 + 80);

  return MEMORY[0x1EEE6BDD0](v0, 88, 7);
}

uint64_t sub_1ABAB76A4(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1ABAB76E0(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  type metadata accessor for AppleMusicEventEntryView();
  type metadata accessor for CustomGraphSongEvent(255);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  sub_1ABA7D034();
  sub_1ABA7D034();
  sub_1ABA7BC4C();
  swift_getAssociatedConformanceWitness();
  sub_1ABA7BC4C();
  swift_getAssociatedConformanceWitness();
  sub_1ABA8EEAC();
  sub_1ABAE6834(v3, v4);
  sub_1ABA7D034();
  sub_1ABA7BC4C();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for TypedGraphObjectSequence.Iterator();
  sub_1ABAE6834(&qword_1EB4D1BD8, type metadata accessor for AppleMusicEventEntryView);
  swift_getWitnessTable();
  type metadata accessor for EventBaseView.EventViewSequence();
  return swift_getWitnessTable();
}

uint64_t sub_1ABAB78E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1ABF21EB4();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(a3 + 36);
  }

  else
  {
    v7 = sub_1ABAD219C(&qword_1EB4D9BF0, &qword_1ABF34240);
    v8 = *(a3 + 40);
  }

  return sub_1ABA7E1E0(a1 + v8, a2, v7);
}

uint64_t sub_1ABAB7990(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1ABF21EB4();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(a4 + 36);
  }

  else
  {
    v9 = sub_1ABAD219C(&qword_1EB4D9BF0, &qword_1ABF34240);
    v10 = *(a4 + 40);
  }

  return sub_1ABA7B9B4(a1 + v10, a2, a2, v9);
}

uint64_t sub_1ABAB7B00(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  type metadata accessor for AppleMusicEventEntryView();
  type metadata accessor for CustomGraphSongEvent(255);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  sub_1ABA7D034();
  sub_1ABA7D034();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  sub_1ABA8EEE4();
  sub_1ABAF0C8C(v3, v4);
  sub_1ABA7D034();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for TypedGraphObjectSequence.Iterator();
  sub_1ABAF0C8C(&qword_1EB4D1BD8, type metadata accessor for AppleMusicEventEntryView);
  swift_getWitnessTable();
  type metadata accessor for EventBaseView.EventViewSequence();
  return swift_getWitnessTable();
}

uint64_t sub_1ABAB7D14()
{
  v1 = *(v0 + 56);

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1ABAB7D4C@<X0>(uint64_t *a1@<X8>)
{
  result = static AssetRegistry.createCreateBackend.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1ABAB7E78(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AssetRegistryAsset(0);
  v5 = sub_1ABA7E1E0(a1, a2, v4);
  if (v5 >= 2)
  {
    return v5 - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1ABAB7EC0(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = type metadata accessor for AssetRegistryAsset(0);

  return sub_1ABA7B9B4(a1, v5, a3, v6);
}

uint64_t sub_1ABAB7F9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1ABF21CF4();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return sub_1ABA7E1E0(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20) + 40);
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    v9 = v8 - 1;
    if (v9 < 0)
    {
      v9 = -1;
    }

    return (v9 + 1);
  }
}

uint64_t sub_1ABAB8058(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1ABF21CF4();
  if (*(*(result - 8) + 84) == a3)
  {

    return sub_1ABA7B9B4(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 40) = a2;
  }

  return result;
}

uint64_t sub_1ABAB81E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1ABB0307C(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1ABAB83F8()
{
  v0 = sub_1ABF24D84();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1ABAB8444(char a1)
{
  result = 0x6C61636F6CLL;
  switch(a1)
  {
    case 1:
      result = 0x6C61697274;
      break;
    case 2:
      result = 0x4E74656863746172;
      break;
    case 3:
      result = 0x6F666E4972657375;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1ABAB85D0(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 24) = a1;
  *(v4 + 16) = a2;
  *(v4 + 32) = a3;
  *(v4 + 40) = a4;
  return v4;
}

uint64_t sub_1ABAB86E8()
{
  v1 = *v0;
  v2 = v0[1];
  return sub_1ABB1229C();
}

uint64_t sub_1ABAB8864()
{
  sub_1ABA8071C();
  if (v0)
  {
    return 1868983913;
  }

  else
  {
    return 0xD000000000000010;
  }
}

uint64_t sub_1ABAB88AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1ABB16514(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1ABAB8ED4()
{
  v1 = sub_1ABF21EB4();
  sub_1ABA7BBB0(v1);
  v3 = *(v2 + 8);
  v4 = *(v2 + 80);
  v5 = (v4 + 16) & ~v4;
  v6 = *(v2 + 64);
  v7 = (v6 + v4 + v5) & ~v4;
  v8 = (v6 + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 15) & 0xFFFFFFFFFFFFFFF8;
  v3(v0 + v5, v1);
  v3(v0 + v7, v1);

  return MEMORY[0x1EEE6BDD0](v0, v9 + 8, v4 | 7);
}

uint64_t sub_1ABAB9198(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1ABAD219C(&qword_1EB4D2E00, &unk_1ABF3A5D0);
    v9 = a1 + *(a3 + 24);

    return sub_1ABA7E1E0(v9, a2, v8);
  }
}

void *sub_1ABAB922C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_1ABAD219C(&qword_1EB4D2E00, &unk_1ABF3A5D0);
    v8 = v5 + *(a4 + 24);

    return sub_1ABA7B9B4(v8, a2, a2, v7);
  }

  return result;
}

__n128 sub_1ABAB92CC(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_1ABAB9318()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 40);

  v3 = *(v0 + 56);

  v4 = *(v0 + 64);

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_1ABAB93C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1ABB39520(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1ABAB9668()
{
  sub_1ABB43418(*(v0 + 16), *(v0 + 24), *(v0 + 32));

  return MEMORY[0x1EEE6BDD0](v0, 33, 7);
}

uint64_t sub_1ABAB96A4()
{
  sub_1ABB439B0(*(v0 + 16), *(v0 + 24), *(v0 + 32));
  v1 = *(v0 + 56);

  sub_1ABA807B4();

  return MEMORY[0x1EEE6BDD0](v2, v3, v4);
}

uint64_t sub_1ABAB96E4()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 56);

  sub_1ABA807B4();

  return MEMORY[0x1EEE6BDD0](v3, v4, v5);
}

BOOL sub_1ABAB9884(void *a1, uint64_t a2)
{
  v3 = *v2 & a2;
  if (v3 != a2)
  {
    *v2 |= a2;
  }

  *a1 = a2;
  return v3 != a2;
}

uint64_t sub_1ABAB98D0()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1ABAB9908()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = sub_1ABA8FE90();

  return MEMORY[0x1EEE6BDD0](v3, v4, v5);
}

uint64_t sub_1ABAB9A48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1ABF21EB4();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return sub_1ABA7E1E0(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20));
    if (v8 >= 0xA)
    {
      return v8 - 9;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_1ABAB9AF0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1ABF21EB4();
  if (*(*(result - 8) + 84) == a3)
  {

    return sub_1ABA7B9B4(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 9;
  }

  return result;
}

uint64_t sub_1ABAB9B98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1ABF21EB4();
    v9 = a1 + *(a3 + 24);

    return sub_1ABA7E1E0(v9, a2, v8);
  }
}

uint64_t sub_1ABAB9C20(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v7 = sub_1ABF21EB4();
    v8 = v5 + *(a4 + 24);

    return sub_1ABA7B9B4(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1ABAB9DEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1ABF21CF4();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return sub_1ABA7E1E0(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20));
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_1ABAB9E98(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1ABF21CF4();
  if (*(*(result - 8) + 84) == a3)
  {

    return sub_1ABA7B9B4(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1ABAB9FA4(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v5 = *a3;
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1ABABA0E0()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1ABABA134()
{
  if (v0[3])
  {

    v1 = v0[5];

    v2 = v0[8];
  }

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_1ABABA180()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1ABABA1D0(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for SearchableViewDatabaseTable();
    v9 = a1 + *(a3 + 20);

    return sub_1ABA7E1E0(v9, a2, v8);
  }
}

void *sub_1ABABA258(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for SearchableViewDatabaseTable();
    v8 = v5 + *(a4 + 20);

    return sub_1ABA7B9B4(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1ABABA300(uint64_t result, uint64_t a2)
{
  *(result + 16) = a2;
  *(result + 24) = 2 * a2;
  return result;
}

unint64_t sub_1ABABA3A0(unint64_t result, unint64_t a2, unint64_t a3)
{
  if (result < a2 || result >= a3)
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1ABABA3B4(unint64_t result, unint64_t a2, unint64_t a3)
{
  if (result < a2 || a3 < result)
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1ABABA3C8(unint64_t result, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if (result < a3 || a4 < a2)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1ABABA500()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[6];

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1ABABA6CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1ABBA8060(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1ABABAC90@<X0>(uint64_t *a1@<X8>)
{
  result = PopularityMetric.name.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1ABABB070(char a1)
{
  if (a1)
  {
    return 12639;
  }

  else
  {
    return 12383;
  }
}

uint64_t sub_1ABABB090@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1ABBB7640(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1ABABB1D8()
{
  sub_1ABB37328(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 50));
  sub_1ABB37328(*(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 90));
  sub_1ABA8913C();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_1ABABB22C@<X0>(uint64_t *a1@<X8>)
{
  result = static NSUserDefaults.ecrRankerResultsMockFile.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1ABABB3C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UnstructuredImage.Asset(0);

  return sub_1ABA7E1E0(a1, a2, v4);
}

uint64_t sub_1ABABB410(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UnstructuredImage.Asset(0);

  return sub_1ABA7B9B4(a1, a2, a2, v4);
}

uint64_t sub_1ABABB488@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1ABBC9010(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1ABABB624()
{
  sub_1ABB3E388(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 50));
  sub_1ABB3E388(*(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 90));
  sub_1ABA8913C();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_1ABABB678@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_1ABBCBC04();
  *a2 = result;
  return result;
}

uint64_t sub_1ABABB840()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1ABABB880()
{
  _Block_release(*(v0 + 24));

  v1 = sub_1ABAB52E8();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_1ABABBC1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1ABC01C3C(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1ABABBC70@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_1ABBFFC40();
  *a2 = result;
  return result;
}

uint64_t sub_1ABABBD58()
{
  _Block_release(*(v0 + 48));

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1ABABBDB8()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1ABABBDF0()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1ABABBE38()
{
  _Block_release(*(v0 + 32));

  v1 = sub_1ABAA08C0();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_1ABABC560()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[3];

  v3 = v0[5];

  return MEMORY[0x1EEE6BDD0](v0, 57, 7);
}

uint64_t sub_1ABABC650()
{
  v1 = v0[2];

  v2 = v0[3];
  swift_unknownObjectRelease();
  v3 = v0[4];

  v4 = v0[5];

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1ABABC8F8(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1ABABC980(__int128 *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  type metadata accessor for EventBaseView.EventViewSequence.EventViewSequenceIterator();
  return swift_getWitnessTable();
}

uint64_t sub_1ABABCA3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1ABF21EB4();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1 + *(a3 + 20);

    return sub_1ABA7E1E0(v8, a2, v7);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24) + 80);
    if (v10 > 2)
    {
      return (v10 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_1ABABCAEC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1ABF21EB4();
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = a1 + *(a4 + 20);

    return sub_1ABA7B9B4(v10, a2, a2, v9);
  }

  else
  {
    *(a1 + *(a4 + 24) + 80) = -a2;
  }

  return result;
}

uint64_t sub_1ABABCC40()
{
  sub_1ABA7E2A8();
  v2 = *(v0 + 16);
  v3 = sub_1ABF21EB4();
  sub_1ABA7BB64(v3);
  v5 = v4;
  v6 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v8 = *(v7 + 64);
  sub_1ABA82818();
  sub_1ABA81898();
  v10 = v9;
  v12 = (*(v9 + 80) + v11 + 8) & ~*(v9 + 80);
  v14 = (*(v13 + 64) + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  v15 = *(v0 + 32);

  (*(v5 + 8))(v0 + v6, v3);
  v16 = *(v0 + v1 + 8);

  (*(v10 + 8))(v0 + v12, v2);
  sub_1ABA96210(*(v0 + v14), *(v0 + v14 + 8));
  sub_1ABA7BC1C();

  return MEMORY[0x1EEE6BDD0](v17, v18, v19);
}

uint64_t sub_1ABABCD8C()
{
  sub_1ABA7E2A8();
  v1 = *(v0 + 16);
  v2 = sub_1ABF21EB4();
  sub_1ABA7BB64(v2);
  v4 = v3;
  v5 = (*(v3 + 80) + 48) & ~*(v3 + 80);
  v7 = *(v6 + 64);
  sub_1ABA81898();
  v9 = v8;
  v11 = (v10 + *(v8 + 80)) & ~*(v8 + 80);
  v13 = (*(v12 + 64) + v11 + 7) & 0xFFFFFFFFFFFFFFF8;
  v14 = *(v0 + 32);

  (*(v4 + 8))(v0 + v5, v2);
  (*(v9 + 8))(v0 + v11, v1);
  sub_1ABA96210(*(v0 + v13), *(v0 + v13 + 8));
  sub_1ABA7BC1C();

  return MEMORY[0x1EEE6BDD0](v15, v16, v17);
}

uint64_t sub_1ABABCEC4()
{
  v2 = sub_1ABF21EB4();
  sub_1ABA7BB64(v2);
  v4 = v3;
  v5 = *(v3 + 80);
  v7 = *(v6 + 64);
  sub_1ABA82818();
  v9 = v8 & 0xFFFFFFFFFFFFFFF8;
  v10 = *(v0 + 16);

  (*(v4 + 8))(v0 + ((v5 + 32) & ~v5), v2);
  v11 = *(v0 + v1 + 8);

  return MEMORY[0x1EEE6BDD0](v0, v9 + 8, v5 | 7);
}

__n128 sub_1ABABD06C(__n128 *a1, __n128 *a2)
{
  result = *a1;
  a2[1].n128_u64[0] = a1[1].n128_u64[0];
  *a2 = result;
  return result;
}

uint64_t sub_1ABABD284(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1ABABD2C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1ABF21EB4();
  v7 = a1 + *(a3 + 36);

  return sub_1ABA7E1E0(v7, a2, v6);
}

uint64_t sub_1ABABD318(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_1ABF21EB4();
  v8 = a1 + *(a4 + 36);

  return sub_1ABA7B9B4(v8, a2, a2, v7);
}

id sub_1ABABD3B8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v6 = *a1;
  result = static GraphObjectObjectiveCConvertible.objectiveCGraphObjectEntityIdentifier(from:)(&v6, a2, a3);
  *a4 = result;
  return result;
}

uint64_t sub_1ABABD498()
{
  v1 = *(sub_1ABAD219C(&qword_1EB4DB820, &qword_1ABF500A0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);
  v5 = *(v0 + 24);

  v6 = sub_1ABF22424();
  if (!sub_1ABA7E1E0(v0 + v3, 1, v6))
  {
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  return MEMORY[0x1EEE6BDD0](v0, ((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t sub_1ABABD640(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[2];
  sub_1ABA97340();
  swift_getAssociatedTypeWitness();
  sub_1ABA952EC();
  sub_1ABA7E7A8();
  sub_1ABA7E7A8();
  sub_1ABA7EDF8();
  swift_getAssociatedConformanceWitness();
  sub_1ABA7EDF8();
  swift_getAssociatedConformanceWitness();
  sub_1ABA7E7A8();
  sub_1ABA7EDF8();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for EntitySequence();
  return sub_1ABA9084C();
}

uint64_t sub_1ABABD758(uint64_t a1)
{
  v3 = vextq_s8(*a1, *a1, 8uLL);
  v2 = *(a1 + 24);
  sub_1ABA97340();
  swift_getAssociatedTypeWitness();
  sub_1ABA952EC();
  sub_1ABA7E7A8();
  sub_1ABA7E7A8();
  sub_1ABA7EDF8();
  swift_getAssociatedConformanceWitness();
  sub_1ABA7EDF8();
  swift_getAssociatedConformanceWitness();
  sub_1ABA7E7A8();
  sub_1ABA7EDF8();
  swift_getAssociatedConformanceWitness();
  sub_1ABA97BBC();
  type metadata accessor for TypedGraphObjectSequence();
  return sub_1ABA8C114();
}

uint64_t sub_1ABABD884(uint64_t *a1)
{
  v1 = *a1;
  v3 = a1[2];
  v2 = a1[3];
  v5 = a1[5];
  sub_1ABA97340();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  sub_1ABA7E7C8();
  swift_getAssociatedTypeWitness();
  sub_1ABA7E7C8();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  sub_1ABA7E7C8();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for DynamicGraphObjectSequence();
  return sub_1ABA7D930();
}

uint64_t sub_1ABABD9EC(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = a1[2];
  sub_1ABA7E7C8();
  swift_getAssociatedTypeWitness();
  sub_1ABAA2D04();
  swift_getAssociatedTypeWitness();
  sub_1ABAA2D04();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  sub_1ABA96BD0();
  swift_getAssociatedConformanceWitness();
  sub_1ABA96BD0();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for EntitySequence();
  return sub_1ABA9084C();
}

uint64_t sub_1ABABDB4C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3 = *(a1 + 16);
  v4 = vextq_s8(*a1, *a1, 8uLL);
  sub_1ABAA2D04();
  swift_getAssociatedTypeWitness();
  sub_1ABA8394C();
  swift_getAssociatedTypeWitness();
  sub_1ABA8394C();
  swift_getAssociatedTypeWitness();
  sub_1ABA7D0EC();
  swift_getAssociatedConformanceWitness();
  sub_1ABA7D0EC();
  swift_getAssociatedConformanceWitness();
  sub_1ABA96BD0();
  swift_getAssociatedConformanceWitness();
  sub_1ABA96BD0();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  sub_1ABA97BBC();
  type metadata accessor for TypedGraphObjectSequence();
  return sub_1ABA8C114();
}

uint64_t sub_1ABABDCB4(__int128 *a1)
{
  v1 = *(a1 + 4);
  v3 = a1[1];
  v4 = *a1;
  sub_1ABAA2D04();
  swift_getAssociatedTypeWitness();
  sub_1ABA8394C();
  swift_getAssociatedTypeWitness();
  sub_1ABA8394C();
  swift_getAssociatedTypeWitness();
  sub_1ABA7D0EC();
  swift_getAssociatedConformanceWitness();
  sub_1ABA7D0EC();
  swift_getAssociatedConformanceWitness();
  sub_1ABA96BD0();
  swift_getAssociatedConformanceWitness();
  sub_1ABA96BD0();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  sub_1ABA97BBC();
  type metadata accessor for DynamicGraphObjectSequence();
  return sub_1ABA7D930();
}

__n128 sub_1ABABDE48(uint64_t a1, _OWORD *a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v3;
  return result;
}

uint64_t sub_1ABABDE54(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1[1] + 8);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  sub_1ABA7F424();
  sub_1ABA7F424();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  sub_1ABA7F424();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for DynamicGraphObjectSequence();
  return sub_1ABA7D930();
}

uint64_t sub_1ABABDFE8(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[2];
  v5 = *(a1[1] + 8);
  swift_getAssociatedTypeWitness();
  sub_1ABA7E7C8();
  swift_getAssociatedTypeWitness();
  sub_1ABA7E7C8();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  v3 = *(v2 + 8);
  sub_1ABA7E7C8();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for DynamicGraphObjectSequence();
  return sub_1ABA7D930();
}

uint64_t sub_1ABABE1C4@<X0>(uint64_t *a1@<X8>)
{
  result = static CustomGraphEvent.getInitializationResources()();
  *a1 = result;
  return result;
}

uint64_t sub_1ABABE298@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1ABCC3164();
  *a1 = result;
  return result;
}

BOOL sub_1ABABE458(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v3 = *(a3 + 24);
  return sub_1ABAB6DB0(*a1, *a2);
}

uint64_t sub_1ABABE46C(uint64_t a1)
{
  v2 = *v1;
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  return sub_1ABCFBDB0();
}

uint64_t sub_1ABABE490(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(a2 + 24);
  return sub_1ABAB8190(a1, *v2);
}

BOOL sub_1ABABE4A0(char *a1, char *a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v3 = *(a3 + 24);
  return sub_1ABAC9460(*a1, *a2);
}

uint64_t sub_1ABABE4B4(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *v1;
  return sub_1ABCFD798();
}

uint64_t sub_1ABABE54C()
{
  v1 = *(v0 + 16);

  sub_1ABA7D028();

  return MEMORY[0x1EEE6BDD0](v2, v3, v4);
}

uint64_t sub_1ABABE580@<X0>(uint64_t (*a1)(_OWORD *)@<X0>, uint64_t (*a2)(_OWORD *)@<X2>, _OWORD *a3@<X4>, _OWORD *a4@<X8>)
{
  v4 = a3[1];
  v6[0] = *a3;
  v6[1] = v4;
  v7[0] = a3[2];
  *(v7 + 9) = *(a3 + 41);
  return sub_1ABD08410(a1, a2, v6, a4);
}

uint64_t sub_1ABABE610(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1ABAD219C(&qword_1EB4D5F30, &unk_1ABF50B00);
  if (*(*(v6 - 8) + 84) != a2)
  {
    return sub_1ABA8A59C(*(a1 + *(a3 + 24)));
  }

  v7 = v6;
  v8 = a1 + *(a3 + 20);

  return sub_1ABA7E1E0(v8, a2, v7);
}

uint64_t sub_1ABABE6C0(uint64_t a1, int a2, int a3, uint64_t a4)
{
  result = sub_1ABAD219C(&qword_1EB4D5F30, &unk_1ABF50B00);
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = sub_1ABAA1E20(*(a4 + 20));

    return sub_1ABA7B9B4(v9, v10, v11, v12);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1ABABE78C()
{
  sub_1ABD1B904();
  if (v3)
  {
    return sub_1ABA8A59C(*(v0 + 8));
  }

  v5 = v2;
  v6 = v1;
  v7 = sub_1ABAD219C(&qword_1EB4D5F00, &unk_1ABF50B20);
  v8 = v0 + *(v5 + 68);

  return sub_1ABA7E1E0(v8, v6, v7);
}

void sub_1ABABE80C()
{
  sub_1ABAA1CCC();
  if (v3)
  {
    *(v1 + 8) = (v0 - 1);
  }

  else
  {
    v4 = v2;
    sub_1ABAD219C(&qword_1EB4D5F00, &unk_1ABF50B20);
    v5 = sub_1ABAA1E20(*(v4 + 68));

    sub_1ABA7B9B4(v5, v6, v7, v8);
  }
}

uint64_t sub_1ABABE894()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1ABABE8D8()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1ABABE91C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1ABAD219C(&qword_1EB4D5F00, &unk_1ABF50B20);
  v7 = a1 + *(a3 + 20);

  return sub_1ABA7E1E0(v7, a2, v6);
}

uint64_t sub_1ABABE980(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_1ABAD219C(&qword_1EB4D5F00, &unk_1ABF50B20);
  v8 = a1 + *(a4 + 20);

  return sub_1ABA7B9B4(v8, a2, a2, v7);
}

uint64_t sub_1ABABEBA8()
{
  if (v0[3])
  {

    v1 = v0[5];

    v2 = v0[8];
  }

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_1ABABEC00()
{
  v1 = v0[4];

  v2 = v0[5];

  v3 = v0[6];

  v4 = v0[7];

  v5 = v0[8];

  v6 = v0[9];

  v7 = v0[10];

  v8 = v0[11];

  return MEMORY[0x1EEE6BDD0](v0, 96, 7);
}

uint64_t sub_1ABABEC70()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[5];

  v5 = v0[6];

  v6 = v0[7];

  v7 = v0[8];

  v8 = v0[9];

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

uint64_t sub_1ABABECE0()
{
  v1 = *(v0 + 32);

  sub_1ABAA4EC8();

  return MEMORY[0x1EEE6BDD0](v2, v3, v4);
}

uint64_t sub_1ABABED28()
{
  v1 = *(v0 + 48);

  v2 = sub_1ABAB10A4();

  return MEMORY[0x1EEE6BDD0](v2, v3, v4);
}

uint64_t sub_1ABABED5C()
{
  v1 = v0[4];

  v2 = v0[5];

  v3 = v0[6];

  v4 = v0[7];

  v5 = v0[8];

  v6 = v0[9];

  v7 = v0[10];

  v8 = v0[11];

  v9 = v0[12];

  v10 = v0[13];

  v11 = v0[14];

  v12 = v0[15];

  v13 = v0[16];

  v14 = v0[17];

  v15 = v0[18];

  v16 = v0[19];

  v17 = v0[20];

  v18 = v0[21];

  v19 = v0[22];

  v20 = v0[23];

  v21 = v0[24];

  v22 = v0[25];

  v23 = v0[26];

  v24 = v0[27];

  v25 = v0[28];

  return MEMORY[0x1EEE6BDD0](v0, 232, 7);
}

uint64_t sub_1ABABEE54()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[5];

  v5 = v0[6];

  v6 = v0[7];

  v7 = v0[8];

  v8 = v0[9];

  v9 = v0[10];

  v10 = v0[11];

  v11 = v0[12];

  v12 = v0[13];

  v13 = v0[14];

  v14 = v0[15];

  v15 = v0[16];

  v16 = v0[17];

  v17 = v0[18];

  v18 = v0[19];

  v19 = v0[20];

  v20 = v0[21];

  v21 = v0[22];

  v22 = v0[23];

  v23 = v0[24];

  v24 = v0[25];

  v25 = v0[26];

  return MEMORY[0x1EEE6BDD0](v0, 216, 7);
}

uint64_t sub_1ABABEF6C()
{
  v1 = v0[4];

  v2 = v0[5];

  v3 = v0[6];

  v4 = v0[7];

  v5 = v0[8];

  v6 = v0[9];

  v7 = v0[10];

  v8 = v0[11];

  v9 = v0[12];

  v10 = v0[13];

  v11 = v0[14];

  return MEMORY[0x1EEE6BDD0](v0, 120, 7);
}

uint64_t sub_1ABABEFF4()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[5];

  v5 = v0[6];

  v6 = v0[7];

  v7 = v0[8];

  v8 = v0[9];

  v9 = v0[10];

  v10 = v0[11];

  v11 = v0[12];

  sub_1ABA88928();

  return MEMORY[0x1EEE6BDD0](v12, v13, v14);
}

uint64_t sub_1ABABF078()
{
  v1 = v0[4];

  v2 = v0[5];

  v3 = v0[6];

  v4 = v0[7];

  v5 = v0[8];

  v6 = v0[9];

  v7 = v0[10];

  v8 = v0[11];

  v9 = v0[12];

  v10 = v0[13];

  v11 = v0[14];

  v12 = v0[15];

  return MEMORY[0x1EEE6BDD0](v0, 128, 7);
}

uint64_t sub_1ABABF438(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Context = type metadata accessor for QueryContext();
  if (*(*(Context - 8) + 84) == a2)
  {

    return sub_1ABA7E1E0(a1, a2, Context);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20));
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_1ABABF4E4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for QueryContext();
  if (*(*(result - 8) + 84) == a3)
  {

    return sub_1ABA7B9B4(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1ABABF880(uint64_t a1)
{
  v2 = *(a1 + 16);
  v1 = *(a1 + 24);
  return _s20IntelligencePlatform34LocationEmbedderInferenceInterfaceO6ErrorsO8RunErrorO9hashValueSivg_0();
}

uint64_t sub_1ABABF8A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v6 = *(a3 + 16);
  v5 = *(a3 + 24);
  result = sub_1ABB0307C(a1, a2);
  *a4 = result & 1;
  return result;
}

uint64_t sub_1ABABFA1C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 41, 7);
}

uint64_t sub_1ABABFC88()
{
  v1 = *(v0 + 4);
  v2 = *(v0 + 5);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1ABA7BE8C();
  swift_getAssociatedConformanceWitness();
  v4 = type metadata accessor for InferenceServiceConfig();
  sub_1ABA8A54C(v4);
  v6 = *(v5 + 80);
  v7 = (v6 + 72) & ~v6;
  v9 = *(v8 + 64);
  v10 = *(v0 + 2);
  swift_unknownObjectRelease();
  v11 = *(v0 + 6);

  v12 = *(v0 + 7);

  v13 = *(v0 + 8);

  v14 = *&v0[v7 + 8];

  v15 = *&v0[v7 + 24];

  v16 = *&v0[v7 + 32];

  (*(*(AssociatedTypeWitness - 8) + 8))(&v0[v7 + *(v1 + 52)], AssociatedTypeWitness);

  return MEMORY[0x1EEE6BDD0](v0, v7 + v9, v6 | 7);
}

uint64_t sub_1ABABFDE0()
{
  v1 = v0[2];
  v2 = v0[3];
  sub_1ABA9020C();
  swift_getAssociatedTypeWitness();
  sub_1ABA7D2D8();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = type metadata accessor for InferenceMessageRequest();
  sub_1ABA8A54C(v4);
  v6 = *(v5 + 80);
  v7 = (v6 + 40) & ~v6;
  v9 = (*(v8 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = v0[4];

  v11 = v0 + v7;
  sub_1ABA7D08C(AssociatedTypeWitness);
  (*(v12 + 8))(v11, AssociatedTypeWitness);
  v13 = *&v11[*(v2 + 36) + 8];

  v14 = *(v0 + v9);

  return MEMORY[0x1EEE6BDD0](v0, v9 + 8, v6 | 7);
}

uint64_t sub_1ABABFF88()
{
  v2 = *(v0 + 32);
  v1 = *(v0 + 40);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1ABA7BB64(AssociatedTypeWitness);
  v5 = v4;
  v6 = *(v4 + 80);
  v7 = (v6 + 64) & ~v6;
  v9 = (*(v8 + 64) + v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(v0 + 16);
  swift_unknownObjectRelease();

  v11 = *(v0 + 56);

  (*(v5 + 8))(v0 + v7, AssociatedTypeWitness);
  v12 = *(v0 + v9);

  return MEMORY[0x1EEE6BDD0](v0, v9 + 8, v6 | 7);
}

uint64_t sub_1ABAC00DC()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

__n128 sub_1ABAC014C(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_1ABAC0270()
{
  v1 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1ABAC02A8@<X0>(uint64_t *a1@<X8>)
{
  result = static InferenceSupportBackendHelper.createCreateBackend.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1ABAC036C()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  sub_1ABD5A8F4(*(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104), *(v0 + 112), *(v0 + 113));
  sub_1ABD5AA0C();

  return MEMORY[0x1EEE6BDD0](v3, v4, v5);
}

uint64_t sub_1ABAC03D0()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  sub_1ABD5A840(*(v0 + 56), *(v0 + 64), *(v0 + 72));
  sub_1ABA97C54();

  return MEMORY[0x1EEE6BDD0](v3, v4, v5);
}

uint64_t sub_1ABAC0418()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1ABAC0480(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1ABAD219C(&qword_1EB4D9BF0, &qword_1ABF34240);
    v9 = a1 + *(a3 + 20);

    return sub_1ABA7E1E0(v9, a2, v8);
  }
}

uint64_t sub_1ABAC0514(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1ABAD219C(&qword_1EB4D9BF0, &qword_1ABF34240);
    v8 = v5 + *(a4 + 20);

    return sub_1ABA7B9B4(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1ABAC05E4()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1ABAC0848()
{
  v1 = *(v0 + 16);

  sub_1ABA7D028();

  return MEMORY[0x1EEE6BDD0](v2, v3, v4);
}

uint64_t sub_1ABAC103C()
{
  v1 = *(v0 + 24);

  sub_1ABA7D9B8();

  return MEMORY[0x1EEE6BDD0](v2, v3, v4);
}

uint64_t sub_1ABAC1078()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  sub_1ABC6D458(*(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 90));
  sub_1ABA8913C();

  return MEMORY[0x1EEE6BDD0](v3, v4, v5);
}

uint64_t sub_1ABAC10C8()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  sub_1ABAA4EC8();

  return MEMORY[0x1EEE6BDD0](v3, v4, v5);
}

uint64_t sub_1ABAC1104()
{
  sub_1ABD71A94(*(v0 + 16));

  v1 = *(v0 + 24);

  sub_1ABA7D9B8();

  return MEMORY[0x1EEE6BDD0](v2, v3, v4);
}

uint64_t sub_1ABAC114C()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[8];

  sub_1ABAA5964();

  return MEMORY[0x1EEE6BDD0](v4, v5, v6);
}

uint64_t sub_1ABAC1190()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  sub_1ABA7D9B8();

  return MEMORY[0x1EEE6BDD0](v3, v4, v5);
}

uint64_t sub_1ABAC1240()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  v4 = v0[9];

  sub_1ABA8EAFC();

  return MEMORY[0x1EEE6BDD0](v5, v6, v7);
}

uint64_t sub_1ABAC128C()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1ABAC12CC()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1ABAC1304()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  sub_1ABA9955C();

  return MEMORY[0x1EEE6BDD0](v4, v5, v6);
}

uint64_t sub_1ABAC1348()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  sub_1ABC6D458(*(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 90));

  return MEMORY[0x1EEE6BDD0](v0, 91, 7);
}

uint64_t sub_1ABAC1A84()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1ABAC1C98(uint64_t a1, uint64_t a2)
{
  v4 = sub_1ABF21CF4();

  return sub_1ABA7E1E0(a1, a2, v4);
}

uint64_t sub_1ABAC1CE0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1ABF21CF4();

  return sub_1ABA7B9B4(a1, a2, a2, v4);
}

uint64_t sub_1ABAC2334()
{
  v1 = *(v0 + 16);

  sub_1ABA7D028();

  return MEMORY[0x1EEE6BDD0](v2, v3, v4);
}

uint64_t sub_1ABAC236C()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 32);
  v4 = type metadata accessor for CustomKnosisResultContext();
  sub_1ABA8A54C(v4);
  v6 = *(v5 + 80);
  v7 = (v6 + 48) & ~v6;
  v9 = *(v8 + 64);
  sub_1ABA8AD50();
  v11 = *(v10 + 8);
  v12 = sub_1ABA7D0EC();
  v13(v12);
  v14 = *(v0 + v7 + *(v1 + 44));

  v15 = *(v0 + v7 + *(v1 + 48));

  return MEMORY[0x1EEE6BDD0](v0, v7 + v9, v6 | 7);
}

uint64_t sub_1ABAC2464()
{
  sub_1ABA84B54((v0 + 16));
  sub_1ABA978EC();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_1ABAC25E8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *a1 = a4;

  return sub_1ABA7ECFC();
}

uint64_t sub_1ABAC2730(uint64_t *a1)
{
  sub_1ABA90DA8(a1);
  result = sub_1ABDA0B94();
  *v1 = result;
  return result;
}

uint64_t sub_1ABAC287C(uint64_t *a1)
{
  sub_1ABA90DA8(a1);
  result = sub_1ABDA0E70();
  *v1 = result;
  return result;
}

uint64_t sub_1ABAC28A8(uint64_t *a1)
{
  sub_1ABA90DA8(a1);
  result = sub_1ABDA0F00();
  *v1 = result;
  return result;
}

uint64_t sub_1ABAC28D4(uint64_t *a1)
{
  sub_1ABA90DA8(a1);
  result = sub_1ABDA0F90();
  *v1 = result;
  return result;
}

uint64_t sub_1ABAC2900(uint64_t *a1)
{
  sub_1ABA90DA8(a1);
  result = sub_1ABDA1020();
  *v1 = result;
  return result;
}

uint64_t sub_1ABAC292C(uint64_t *a1)
{
  sub_1ABA90DA8(a1);
  result = sub_1ABDA10B0();
  *v1 = result;
  return result;
}

uint64_t sub_1ABAC2958(uint64_t *a1)
{
  sub_1ABA90DA8(a1);
  result = sub_1ABDA1140();
  *v1 = result;
  return result;
}

uint64_t sub_1ABAC2AF4(uint64_t *a1)
{
  sub_1ABA90DA8(a1);
  result = sub_1ABDA1524();
  *v1 = result;
  return result;
}

uint64_t sub_1ABAC2B44(uint64_t *a1)
{
  sub_1ABA90DA8(a1);
  result = sub_1ABDA15EC();
  *v1 = result;
  return result;
}

uint64_t sub_1ABAC2B94(uint64_t *a1)
{
  sub_1ABA90DA8(a1);
  result = sub_1ABDA16B4();
  *v1 = result;
  return result;
}

uint64_t sub_1ABAC2BE4(uint64_t *a1)
{
  sub_1ABA90DA8(a1);
  result = sub_1ABDA17A8();
  *v1 = result;
  return result;
}

uint64_t sub_1ABAC2C10(uint64_t *a1)
{
  sub_1ABA90DA8(a1);
  result = sub_1ABDA1838();
  *v1 = result;
  return result;
}

uint64_t sub_1ABAC2C3C(uint64_t *a1)
{
  sub_1ABA90DA8(a1);
  result = sub_1ABDA18C8();
  *v1 = result;
  return result;
}

uint64_t sub_1ABAC2C68(uint64_t *a1)
{
  sub_1ABA90DA8(a1);
  result = sub_1ABDA1958();
  *v1 = result;
  return result;
}

uint64_t sub_1ABAC2C94(uint64_t *a1)
{
  sub_1ABA90DA8(a1);
  result = sub_1ABDA19E8();
  *v1 = result;
  return result;
}

uint64_t sub_1ABAC2CC0(uint64_t *a1)
{
  sub_1ABA90DA8(a1);
  result = sub_1ABDA1A78();
  *v1 = result;
  return result;
}

uint64_t sub_1ABAC2CEC(uint64_t *a1)
{
  sub_1ABA90DA8(a1);
  result = sub_1ABDA1B08();
  *v1 = result;
  return result;
}

uint64_t sub_1ABAC2D18(uint64_t *a1)
{
  sub_1ABA90DA8(a1);
  result = sub_1ABDA1B98();
  *v1 = result;
  return result;
}

uint64_t sub_1ABAC2D44(uint64_t *a1)
{
  sub_1ABA90DA8(a1);
  result = sub_1ABDA1C28();
  *v1 = result;
  return result;
}

uint64_t sub_1ABAC2D70(uint64_t *a1)
{
  sub_1ABA90DA8(a1);
  result = sub_1ABDA1CB8();
  *v1 = result;
  return result;
}

uint64_t sub_1ABAC2D9C(uint64_t *a1)
{
  sub_1ABA90DA8(a1);
  result = sub_1ABDA1DC8();
  *v1 = result;
  return result;
}

uint64_t sub_1ABAC2DC8(uint64_t *a1)
{
  sub_1ABA90DA8(a1);
  result = sub_1ABDA1E58();
  *v1 = result;
  return result;
}

uint64_t sub_1ABAC2DF4(uint64_t *a1)
{
  sub_1ABA90DA8(a1);
  result = sub_1ABDA1EE8();
  *v1 = result;
  return result;
}

_BYTE *sub_1ABAC2E70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 8);
  result = sub_1ABAB7354(a2, *a1);
  *(a2 + 8) = v5;
  return result;
}

uint64_t sub_1ABAC2EC8@<X0>(_DWORD *a1@<X8>)
{
  result = SpeedBucket.rawValue.getter();
  *a1 = result;
  return result;
}

void sub_1ABAC3044()
{
  sub_1ABA81AB4();
  sub_1ABA8AFB8();
  v4 = sub_1ABAD219C(&qword_1EB4D37F0, &unk_1ABF61890);
  v5 = sub_1ABAA23D8(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  sub_1ABA7C5B0(v8, v57);
  MEMORY[0x1EEE9AC00](v9);
  sub_1ABAA59C4(v10, v11, v12, v13, v14, v15, v16, v17, v58);
  MEMORY[0x1EEE9AC00](v18);
  sub_1ABAA549C(v19, v20, v21, v22, v23, v24, v25, v26, v59);
  MEMORY[0x1EEE9AC00](v27);
  sub_1ABA97CE8(v28, v29, v30, v31, v32, v33, v34, v35, v60);
  if (v2)
  {
    sub_1ABA8875C(MEMORY[0x1E69E7CC0]);
    v36 = sub_1ABAB0E08(v1);
    sub_1ABA80F54(v36, v37);
    while ((v3 & 0x8000000000000000) == 0)
    {
      sub_1ABAB5768();
      if (v38 == v39)
      {
        break;
      }

      sub_1ABA95938();
      if (v40)
      {
        goto LABEL_26;
      }

      sub_1ABA8B158();
      if (!v40)
      {
        goto LABEL_27;
      }

      sub_1ABA7F6E0(v41, v42, v43);
      v44 = sub_1ABAD219C(&qword_1EB4D1710, &qword_1ABF338A0);
      sub_1ABA7BB64(v44);
      v46 = *(v45 + 72);
      v47 = sub_1ABA842F4();
      v48(v47);
      v49 = sub_1ABA7DCDC();
      v50(v49);
      sub_1ABAB58F8();
      sub_1ABAE2EC4();
      sub_1ABAA4FE8();
      sub_1ABA8C814();
      v51 = sub_1ABA8E3D0();
      (qword_1EB4D37F0)(v51);
      sub_1ABA88CB4(objc_allocWithZone(GDTrafficBucketValue), sel_initWithBucket_bucketValue_);
      v52 = sub_1ABA96ABC();
      (qword_1EB4D37F0)(v52);
      sub_1ABAB480C(v0, &qword_1EB4D37F0, &unk_1ABF61890);
      sub_1ABF24B94();
      sub_1ABAA0C20();
      sub_1ABAA0B0C();
      sub_1ABF24BA4();
      sub_1ABAA13E4();
      if (v38 == v39)
      {
        goto LABEL_28;
      }

      sub_1ABAA26C8();
      if (v40)
      {
        goto LABEL_29;
      }

      sub_1ABAB5B38();
      if (!v40)
      {
        goto LABEL_30;
      }

      sub_1ABAA2A20();
      if (v40)
      {
        sub_1ABA94C38();
        while (v56 < v55)
        {
          sub_1ABA953E0();
          if (v0)
          {
            sub_1ABA99618(v53, v54);
            goto LABEL_21;
          }
        }

        sub_1ABA82B48(v53, v54);
      }

      else
      {
        sub_1ABA97614();
      }

LABEL_21:
      sub_1ABA81A98();
      if (v40)
      {
        sub_1ABA8B550();
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
LABEL_30:
    __break(1u);
  }

  else
  {
LABEL_24:
    sub_1ABA83F0C();
    sub_1ABA8CD68();
  }
}

void sub_1ABAC3298()
{
  sub_1ABA81AB4();
  sub_1ABA8AFB8();
  v4 = sub_1ABAD219C(&qword_1EB4D37B0, &qword_1ABF3D818);
  v5 = sub_1ABAA23D8(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  sub_1ABA7C5B0(v8, v57);
  MEMORY[0x1EEE9AC00](v9);
  sub_1ABAA59C4(v10, v11, v12, v13, v14, v15, v16, v17, v58);
  MEMORY[0x1EEE9AC00](v18);
  sub_1ABAA549C(v19, v20, v21, v22, v23, v24, v25, v26, v59);
  MEMORY[0x1EEE9AC00](v27);
  sub_1ABA97CE8(v28, v29, v30, v31, v32, v33, v34, v35, v60);
  if (v2)
  {
    sub_1ABA8875C(MEMORY[0x1E69E7CC0]);
    v36 = sub_1ABAB0E08(v1);
    sub_1ABA80F54(v36, v37);
    while ((v3 & 0x8000000000000000) == 0)
    {
      sub_1ABAB5768();
      if (v38 == v39)
      {
        break;
      }

      sub_1ABA95938();
      if (v40)
      {
        goto LABEL_26;
      }

      sub_1ABA8B158();
      if (!v40)
      {
        goto LABEL_27;
      }

      sub_1ABA7F6E0(v41, v42, v43);
      v44 = sub_1ABAD219C(&qword_1EB4D16F0, &qword_1ABF33880);
      sub_1ABA7BB64(v44);
      v46 = *(v45 + 72);
      v47 = sub_1ABA842F4();
      v48(v47);
      v49 = sub_1ABA7DCDC();
      v50(v49);
      sub_1ABAB58F8();
      sub_1ABAE2EC4();
      sub_1ABAA4FE8();
      sub_1ABA8C814();
      v51 = sub_1ABA8E3D0();
      (qword_1EB4D37B0)(v51);
      sub_1ABA88CB4(objc_allocWithZone(GDTrafficBucketValue), sel_initWithBucket_bucketValue_);
      v52 = sub_1ABA96ABC();
      (qword_1EB4D37B0)(v52);
      sub_1ABAB480C(v0, &qword_1EB4D37B0, &qword_1ABF3D818);
      sub_1ABF24B94();
      sub_1ABAA0C20();
      sub_1ABAA0B0C();
      sub_1ABF24BA4();
      sub_1ABAA13E4();
      if (v38 == v39)
      {
        goto LABEL_28;
      }

      sub_1ABAA26C8();
      if (v40)
      {
        goto LABEL_29;
      }

      sub_1ABAB5B38();
      if (!v40)
      {
        goto LABEL_30;
      }

      sub_1ABAA2A20();
      if (v40)
      {
        sub_1ABA94C38();
        while (v56 < v55)
        {
          sub_1ABA953E0();
          if (v0)
          {
            sub_1ABA99618(v53, v54);
            goto LABEL_21;
          }
        }

        sub_1ABA82B48(v53, v54);
      }

      else
      {
        sub_1ABA97614();
      }

LABEL_21:
      sub_1ABA81A98();
      if (v40)
      {
        sub_1ABA8B550();
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
LABEL_30:
    __break(1u);
  }

  else
  {
LABEL_24:
    sub_1ABA83F0C();
    sub_1ABA8CD68();
  }
}

void sub_1ABAC34EC()
{
  sub_1ABA81AB4();
  sub_1ABA8AFB8();
  v4 = sub_1ABAD219C(&qword_1EB4D37E0, &unk_1ABF61830);
  v5 = sub_1ABAA23D8(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  sub_1ABA7C5B0(v8, v57);
  MEMORY[0x1EEE9AC00](v9);
  sub_1ABAA59C4(v10, v11, v12, v13, v14, v15, v16, v17, v58);
  MEMORY[0x1EEE9AC00](v18);
  sub_1ABAA549C(v19, v20, v21, v22, v23, v24, v25, v26, v59);
  MEMORY[0x1EEE9AC00](v27);
  sub_1ABA97CE8(v28, v29, v30, v31, v32, v33, v34, v35, v60);
  if (v2)
  {
    sub_1ABA8875C(MEMORY[0x1E69E7CC0]);
    v36 = sub_1ABAB0E08(v1);
    sub_1ABA80F54(v36, v37);
    while ((v3 & 0x8000000000000000) == 0)
    {
      sub_1ABAB5768();
      if (v38 == v39)
      {
        break;
      }

      sub_1ABA95938();
      if (v40)
      {
        goto LABEL_26;
      }

      sub_1ABA8B158();
      if (!v40)
      {
        goto LABEL_27;
      }

      sub_1ABA7F6E0(v41, v42, v43);
      v44 = sub_1ABAD219C(&qword_1EB4D1710, &qword_1ABF338A0);
      sub_1ABA7BB64(v44);
      v46 = *(v45 + 72);
      v47 = sub_1ABA842F4();
      v48(v47);
      v49 = sub_1ABA7DCDC();
      v50(v49);
      sub_1ABAB58F8();
      sub_1ABAE2EC4();
      sub_1ABAA4FE8();
      sub_1ABA8C814();
      v51 = sub_1ABA8E3D0();
      (qword_1EB4D37E0)(v51);
      sub_1ABA88CB4(objc_allocWithZone(GDSpeedBucketValue), sel_initWithBucket_bucketValue_);
      v52 = sub_1ABA96ABC();
      (qword_1EB4D37E0)(v52);
      sub_1ABAB480C(v0, &qword_1EB4D37E0, &unk_1ABF61830);
      sub_1ABF24B94();
      sub_1ABAA0C20();
      sub_1ABAA0B0C();
      sub_1ABF24BA4();
      sub_1ABAA13E4();
      if (v38 == v39)
      {
        goto LABEL_28;
      }

      sub_1ABAA26C8();
      if (v40)
      {
        goto LABEL_29;
      }

      sub_1ABAB5B38();
      if (!v40)
      {
        goto LABEL_30;
      }

      sub_1ABAA2A20();
      if (v40)
      {
        sub_1ABA94C38();
        while (v56 < v55)
        {
          sub_1ABA953E0();
          if (v0)
          {
            sub_1ABA99618(v53, v54);
            goto LABEL_21;
          }
        }

        sub_1ABA82B48(v53, v54);
      }

      else
      {
        sub_1ABA97614();
      }

LABEL_21:
      sub_1ABA81A98();
      if (v40)
      {
        sub_1ABA8B550();
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
LABEL_30:
    __break(1u);
  }

  else
  {
LABEL_24:
    sub_1ABA83F0C();
    sub_1ABA8CD68();
  }
}

void sub_1ABAC3740()
{
  sub_1ABA81AB4();
  sub_1ABA8AFB8();
  v4 = sub_1ABAD219C(&qword_1EB4D37C0, &unk_1ABF61990);
  v5 = sub_1ABAA23D8(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  sub_1ABA7C5B0(v8, v57);
  MEMORY[0x1EEE9AC00](v9);
  sub_1ABAA59C4(v10, v11, v12, v13, v14, v15, v16, v17, v58);
  MEMORY[0x1EEE9AC00](v18);
  sub_1ABAA549C(v19, v20, v21, v22, v23, v24, v25, v26, v59);
  MEMORY[0x1EEE9AC00](v27);
  sub_1ABA97CE8(v28, v29, v30, v31, v32, v33, v34, v35, v60);
  if (v2)
  {
    sub_1ABA8875C(MEMORY[0x1E69E7CC0]);
    v36 = sub_1ABAB0E08(v1);
    sub_1ABA80F54(v36, v37);
    while ((v3 & 0x8000000000000000) == 0)
    {
      sub_1ABAB5768();
      if (v38 == v39)
      {
        break;
      }

      sub_1ABA95938();
      if (v40)
      {
        goto LABEL_26;
      }

      sub_1ABA8B158();
      if (!v40)
      {
        goto LABEL_27;
      }

      sub_1ABA7F6E0(v41, v42, v43);
      v44 = sub_1ABAD219C(&qword_1EB4D16F0, &qword_1ABF33880);
      sub_1ABA7BB64(v44);
      v46 = *(v45 + 72);
      v47 = sub_1ABA842F4();
      v48(v47);
      v49 = sub_1ABA7DCDC();
      v50(v49);
      sub_1ABAB58F8();
      sub_1ABAE2EC4();
      sub_1ABAA4FE8();
      sub_1ABA8C814();
      v51 = sub_1ABA8E3D0();
      (qword_1EB4D37C0)(v51);
      sub_1ABA88CB4(objc_allocWithZone(GDSpeedBucketValue), sel_initWithBucket_bucketValue_);
      v52 = sub_1ABA96ABC();
      (qword_1EB4D37C0)(v52);
      sub_1ABAB480C(v0, &qword_1EB4D37C0, &unk_1ABF61990);
      sub_1ABF24B94();
      sub_1ABAA0C20();
      sub_1ABAA0B0C();
      sub_1ABF24BA4();
      sub_1ABAA13E4();
      if (v38 == v39)
      {
        goto LABEL_28;
      }

      sub_1ABAA26C8();
      if (v40)
      {
        goto LABEL_29;
      }

      sub_1ABAB5B38();
      if (!v40)
      {
        goto LABEL_30;
      }

      sub_1ABAA2A20();
      if (v40)
      {
        sub_1ABA94C38();
        while (v56 < v55)
        {
          sub_1ABA953E0();
          if (v0)
          {
            sub_1ABA99618(v53, v54);
            goto LABEL_21;
          }
        }

        sub_1ABA82B48(v53, v54);
      }

      else
      {
        sub_1ABA97614();
      }

LABEL_21:
      sub_1ABA81A98();
      if (v40)
      {
        sub_1ABA8B550();
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
LABEL_30:
    __break(1u);
  }

  else
  {
LABEL_24:
    sub_1ABA83F0C();
    sub_1ABA8CD68();
  }
}

void sub_1ABAC3994()
{
  sub_1ABA81AB4();
  sub_1ABA8AFB8();
  v4 = sub_1ABAD219C(&qword_1EB4D37D0, &qword_1ABF3D838);
  v5 = sub_1ABAA23D8(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  sub_1ABA7C5B0(v8, v57);
  MEMORY[0x1EEE9AC00](v9);
  sub_1ABAA59C4(v10, v11, v12, v13, v14, v15, v16, v17, v58);
  MEMORY[0x1EEE9AC00](v18);
  sub_1ABAA549C(v19, v20, v21, v22, v23, v24, v25, v26, v59);
  MEMORY[0x1EEE9AC00](v27);
  sub_1ABA97CE8(v28, v29, v30, v31, v32, v33, v34, v35, v60);
  if (v2)
  {
    sub_1ABA8875C(MEMORY[0x1E69E7CC0]);
    v36 = sub_1ABAB0E08(v1);
    sub_1ABA80F54(v36, v37);
    while ((v3 & 0x8000000000000000) == 0)
    {
      sub_1ABAB5768();
      if (v38 == v39)
      {
        break;
      }

      sub_1ABA95938();
      if (v40)
      {
        goto LABEL_26;
      }

      sub_1ABA8B158();
      if (!v40)
      {
        goto LABEL_27;
      }

      sub_1ABA7F6E0(v41, v42, v43);
      v44 = sub_1ABAD219C(&qword_1EB4D1710, &qword_1ABF338A0);
      sub_1ABA7BB64(v44);
      v46 = *(v45 + 72);
      v47 = sub_1ABA842F4();
      v48(v47);
      v49 = sub_1ABA7DCDC();
      v50(v49);
      sub_1ABAB58F8();
      sub_1ABAE2EC4();
      sub_1ABAA4FE8();
      sub_1ABA8C814();
      v51 = sub_1ABA8E3D0();
      (qword_1EB4D37D0)(v51);
      sub_1ABA88CB4(objc_allocWithZone(GDRelativeFlowSpeedBucketValue), sel_initWithBucket_bucketValue_);
      v52 = sub_1ABA96ABC();
      (qword_1EB4D37D0)(v52);
      sub_1ABAB480C(v0, &qword_1EB4D37D0, &qword_1ABF3D838);
      sub_1ABF24B94();
      sub_1ABAA0C20();
      sub_1ABAA0B0C();
      sub_1ABF24BA4();
      sub_1ABAA13E4();
      if (v38 == v39)
      {
        goto LABEL_28;
      }

      sub_1ABAA26C8();
      if (v40)
      {
        goto LABEL_29;
      }

      sub_1ABAB5B38();
      if (!v40)
      {
        goto LABEL_30;
      }

      sub_1ABAA2A20();
      if (v40)
      {
        sub_1ABA94C38();
        while (v56 < v55)
        {
          sub_1ABA953E0();
          if (v0)
          {
            sub_1ABA99618(v53, v54);
            goto LABEL_21;
          }
        }

        sub_1ABA82B48(v53, v54);
      }

      else
      {
        sub_1ABA97614();
      }

LABEL_21:
      sub_1ABA81A98();
      if (v40)
      {
        sub_1ABA8B550();
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
LABEL_30:
    __break(1u);
  }

  else
  {
LABEL_24:
    sub_1ABA83F0C();
    sub_1ABA8CD68();
  }
}

void sub_1ABAC3BE8()
{
  sub_1ABA81AB4();
  sub_1ABA8AFB8();
  v4 = sub_1ABAD219C(&qword_1EB4D99E0, &unk_1ABF61878);
  v5 = sub_1ABAA23D8(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  sub_1ABA7C5B0(v8, v57);
  MEMORY[0x1EEE9AC00](v9);
  sub_1ABAA59C4(v10, v11, v12, v13, v14, v15, v16, v17, v58);
  MEMORY[0x1EEE9AC00](v18);
  sub_1ABAA549C(v19, v20, v21, v22, v23, v24, v25, v26, v59);
  MEMORY[0x1EEE9AC00](v27);
  sub_1ABA97CE8(v28, v29, v30, v31, v32, v33, v34, v35, v60);
  if (v2)
  {
    sub_1ABA8875C(MEMORY[0x1E69E7CC0]);
    v36 = sub_1ABAB0E08(v1);
    sub_1ABA80F54(v36, v37);
    while ((v3 & 0x8000000000000000) == 0)
    {
      sub_1ABAB5768();
      if (v38 == v39)
      {
        break;
      }

      sub_1ABA95938();
      if (v40)
      {
        goto LABEL_26;
      }

      sub_1ABA8B158();
      if (!v40)
      {
        goto LABEL_27;
      }

      sub_1ABA7F6E0(v41, v42, v43);
      v44 = sub_1ABAD219C(&qword_1EB4D1710, &qword_1ABF338A0);
      sub_1ABA7BB64(v44);
      v46 = *(v45 + 72);
      v47 = sub_1ABA842F4();
      v48(v47);
      v49 = sub_1ABA7DCDC();
      v50(v49);
      sub_1ABAB58F8();
      sub_1ABAE2EC4();
      sub_1ABAA4FE8();
      sub_1ABA8C814();
      v51 = sub_1ABA8E3D0();
      (qword_1EB4D99E0)(v51);
      sub_1ABA88CB4(objc_allocWithZone(GDTerrainTypeValue), sel_initWithType_typeValue_);
      v52 = sub_1ABA96ABC();
      (qword_1EB4D99E0)(v52);
      sub_1ABAB480C(v0, &qword_1EB4D99E0, &unk_1ABF61878);
      sub_1ABF24B94();
      sub_1ABAA0C20();
      sub_1ABAA0B0C();
      sub_1ABF24BA4();
      sub_1ABAA13E4();
      if (v38 == v39)
      {
        goto LABEL_28;
      }

      sub_1ABAA26C8();
      if (v40)
      {
        goto LABEL_29;
      }

      sub_1ABAB5B38();
      if (!v40)
      {
        goto LABEL_30;
      }

      sub_1ABAA2A20();
      if (v40)
      {
        sub_1ABA94C38();
        while (v56 < v55)
        {
          sub_1ABA953E0();
          if (v0)
          {
            sub_1ABA99618(v53, v54);
            goto LABEL_21;
          }
        }

        sub_1ABA82B48(v53, v54);
      }

      else
      {
        sub_1ABA97614();
      }

LABEL_21:
      sub_1ABA81A98();
      if (v40)
      {
        sub_1ABA8B550();
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
LABEL_30:
    __break(1u);
  }

  else
  {
LABEL_24:
    sub_1ABA83F0C();
    sub_1ABA8CD68();
  }
}

void sub_1ABAC3E3C()
{
  sub_1ABA81AB4();
  sub_1ABA8AFB8();
  v4 = sub_1ABAD219C(&qword_1EB4D3748, &unk_1ABF3D7B0);
  v5 = sub_1ABAA23D8(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  sub_1ABA7C5B0(v8, v57);
  MEMORY[0x1EEE9AC00](v9);
  sub_1ABAA59C4(v10, v11, v12, v13, v14, v15, v16, v17, v58);
  MEMORY[0x1EEE9AC00](v18);
  sub_1ABAA549C(v19, v20, v21, v22, v23, v24, v25, v26, v59);
  MEMORY[0x1EEE9AC00](v27);
  sub_1ABA97CE8(v28, v29, v30, v31, v32, v33, v34, v35, v60);
  if (v2)
  {
    sub_1ABA8875C(MEMORY[0x1E69E7CC0]);
    v36 = sub_1ABAB0E08(v1);
    sub_1ABA80F54(v36, v37);
    while ((v3 & 0x8000000000000000) == 0)
    {
      sub_1ABAB5768();
      if (v38 == v39)
      {
        break;
      }

      sub_1ABA95938();
      if (v40)
      {
        goto LABEL_26;
      }

      sub_1ABA8B158();
      if (!v40)
      {
        goto LABEL_27;
      }

      sub_1ABA7F6E0(v41, v42, v43);
      v44 = sub_1ABAD219C(&qword_1EB4D16F0, &qword_1ABF33880);
      sub_1ABA7BB64(v44);
      v46 = *(v45 + 72);
      v47 = sub_1ABA842F4();
      v48(v47);
      v49 = sub_1ABA7DCDC();
      v50(v49);
      sub_1ABAB58F8();
      sub_1ABAE2EC4();
      sub_1ABAA4FE8();
      sub_1ABA8C814();
      v51 = sub_1ABA8E3D0();
      (qword_1EB4D3748)(v51);
      sub_1ABA88CB4(objc_allocWithZone(GDTerrainTypeValue), sel_initWithType_typeValue_);
      v52 = sub_1ABA96ABC();
      (qword_1EB4D3748)(v52);
      sub_1ABAB480C(v0, &qword_1EB4D3748, &unk_1ABF3D7B0);
      sub_1ABF24B94();
      sub_1ABAA0C20();
      sub_1ABAA0B0C();
      sub_1ABF24BA4();
      sub_1ABAA13E4();
      if (v38 == v39)
      {
        goto LABEL_28;
      }

      sub_1ABAA26C8();
      if (v40)
      {
        goto LABEL_29;
      }

      sub_1ABAB5B38();
      if (!v40)
      {
        goto LABEL_30;
      }

      sub_1ABAA2A20();
      if (v40)
      {
        sub_1ABA94C38();
        while (v56 < v55)
        {
          sub_1ABA953E0();
          if (v0)
          {
            sub_1ABA99618(v53, v54);
            goto LABEL_21;
          }
        }

        sub_1ABA82B48(v53, v54);
      }

      else
      {
        sub_1ABA97614();
      }

LABEL_21:
      sub_1ABA81A98();
      if (v40)
      {
        sub_1ABA8B550();
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
LABEL_30:
    __break(1u);
  }

  else
  {
LABEL_24:
    sub_1ABA83F0C();
    sub_1ABA8CD68();
  }
}

void sub_1ABAC4090()
{
  sub_1ABA81AB4();
  sub_1ABA8AFB8();
  v4 = sub_1ABAD219C(&qword_1EB4D99E8, &qword_1ABF61888);
  v5 = sub_1ABAA23D8(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  sub_1ABA7C5B0(v8, v57);
  MEMORY[0x1EEE9AC00](v9);
  sub_1ABAA59C4(v10, v11, v12, v13, v14, v15, v16, v17, v58);
  MEMORY[0x1EEE9AC00](v18);
  sub_1ABAA549C(v19, v20, v21, v22, v23, v24, v25, v26, v59);
  MEMORY[0x1EEE9AC00](v27);
  sub_1ABA97CE8(v28, v29, v30, v31, v32, v33, v34, v35, v60);
  if (v2)
  {
    sub_1ABA8875C(MEMORY[0x1E69E7CC0]);
    v36 = sub_1ABAB0E08(v1);
    sub_1ABA80F54(v36, v37);
    while ((v3 & 0x8000000000000000) == 0)
    {
      sub_1ABAB5768();
      if (v38 == v39)
      {
        break;
      }

      sub_1ABA95938();
      if (v40)
      {
        goto LABEL_26;
      }

      sub_1ABA8B158();
      if (!v40)
      {
        goto LABEL_27;
      }

      sub_1ABA7F6E0(v41, v42, v43);
      v44 = sub_1ABAD219C(&qword_1EB4D1710, &qword_1ABF338A0);
      sub_1ABA7BB64(v44);
      v46 = *(v45 + 72);
      v47 = sub_1ABA842F4();
      v48(v47);
      v49 = sub_1ABA7DCDC();
      v50(v49);
      sub_1ABAB58F8();
      sub_1ABAE2EC4();
      sub_1ABAA4FE8();
      sub_1ABA8C814();
      v51 = sub_1ABA8E3D0();
      (qword_1EB4D99E8)(v51);
      sub_1ABA88CB4(objc_allocWithZone(GDWeatherTypeValue), sel_initWithType_typeValue_);
      v52 = sub_1ABA96ABC();
      (qword_1EB4D99E8)(v52);
      sub_1ABAB480C(v0, &qword_1EB4D99E8, &qword_1ABF61888);
      sub_1ABF24B94();
      sub_1ABAA0C20();
      sub_1ABAA0B0C();
      sub_1ABF24BA4();
      sub_1ABAA13E4();
      if (v38 == v39)
      {
        goto LABEL_28;
      }

      sub_1ABAA26C8();
      if (v40)
      {
        goto LABEL_29;
      }

      sub_1ABAB5B38();
      if (!v40)
      {
        goto LABEL_30;
      }

      sub_1ABAA2A20();
      if (v40)
      {
        sub_1ABA94C38();
        while (v56 < v55)
        {
          sub_1ABA953E0();
          if (v0)
          {
            sub_1ABA99618(v53, v54);
            goto LABEL_21;
          }
        }

        sub_1ABA82B48(v53, v54);
      }

      else
      {
        sub_1ABA97614();
      }

LABEL_21:
      sub_1ABA81A98();
      if (v40)
      {
        sub_1ABA8B550();
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
LABEL_30:
    __break(1u);
  }

  else
  {
LABEL_24:
    sub_1ABA83F0C();
    sub_1ABA8CD68();
  }
}

void sub_1ABAC42E4()
{
  sub_1ABA81AB4();
  sub_1ABA8AFB8();
  v4 = sub_1ABAD219C(&qword_1EB4D3730, &qword_1ABF3D7A0);
  v5 = sub_1ABAA23D8(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  sub_1ABA7C5B0(v8, v57);
  MEMORY[0x1EEE9AC00](v9);
  sub_1ABAA59C4(v10, v11, v12, v13, v14, v15, v16, v17, v58);
  MEMORY[0x1EEE9AC00](v18);
  sub_1ABAA549C(v19, v20, v21, v22, v23, v24, v25, v26, v59);
  MEMORY[0x1EEE9AC00](v27);
  sub_1ABA97CE8(v28, v29, v30, v31, v32, v33, v34, v35, v60);
  if (v2)
  {
    sub_1ABA8875C(MEMORY[0x1E69E7CC0]);
    v36 = sub_1ABAB0E08(v1);
    sub_1ABA80F54(v36, v37);
    while ((v3 & 0x8000000000000000) == 0)
    {
      sub_1ABAB5768();
      if (v38 == v39)
      {
        break;
      }

      sub_1ABA95938();
      if (v40)
      {
        goto LABEL_26;
      }

      sub_1ABA8B158();
      if (!v40)
      {
        goto LABEL_27;
      }

      sub_1ABA7F6E0(v41, v42, v43);
      v44 = sub_1ABAD219C(&qword_1EB4D16F0, &qword_1ABF33880);
      sub_1ABA7BB64(v44);
      v46 = *(v45 + 72);
      v47 = sub_1ABA842F4();
      v48(v47);
      v49 = sub_1ABA7DCDC();
      v50(v49);
      sub_1ABAB58F8();
      sub_1ABAE2EC4();
      sub_1ABAA4FE8();
      sub_1ABA8C814();
      v51 = sub_1ABA8E3D0();
      (qword_1EB4D3730)(v51);
      sub_1ABA88CB4(objc_allocWithZone(GDWeatherTypeValue), sel_initWithType_typeValue_);
      v52 = sub_1ABA96ABC();
      (qword_1EB4D3730)(v52);
      sub_1ABAB480C(v0, &qword_1EB4D3730, &qword_1ABF3D7A0);
      sub_1ABF24B94();
      sub_1ABAA0C20();
      sub_1ABAA0B0C();
      sub_1ABF24BA4();
      sub_1ABAA13E4();
      if (v38 == v39)
      {
        goto LABEL_28;
      }

      sub_1ABAA26C8();
      if (v40)
      {
        goto LABEL_29;
      }

      sub_1ABAB5B38();
      if (!v40)
      {
        goto LABEL_30;
      }

      sub_1ABAA2A20();
      if (v40)
      {
        sub_1ABA94C38();
        while (v56 < v55)
        {
          sub_1ABA953E0();
          if (v0)
          {
            sub_1ABA99618(v53, v54);
            goto LABEL_21;
          }
        }

        sub_1ABA82B48(v53, v54);
      }

      else
      {
        sub_1ABA97614();
      }

LABEL_21:
      sub_1ABA81A98();
      if (v40)
      {
        sub_1ABA8B550();
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
LABEL_30:
    __break(1u);
  }

  else
  {
LABEL_24:
    sub_1ABA83F0C();
    sub_1ABA8CD68();
  }
}

void sub_1ABAC4538()
{
  sub_1ABA81AB4();
  sub_1ABA8AFB8();
  v6 = sub_1ABAD219C(&qword_1EB4D3768, &qword_1ABF3D7D8);
  v7 = sub_1ABAA23D8(v6);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  sub_1ABA7C5B0(v10, v59);
  MEMORY[0x1EEE9AC00](v11);
  sub_1ABAA59C4(v12, v13, v14, v15, v16, v17, v18, v19, v60);
  MEMORY[0x1EEE9AC00](v20);
  sub_1ABAA549C(v21, v22, v23, v24, v25, v26, v27, v28, v61);
  MEMORY[0x1EEE9AC00](v29);
  sub_1ABA97CE8(v30, v31, v32, v33, v34, v35, v36, v37, v62);
  if (v3)
  {
    sub_1ABA8875C(MEMORY[0x1E69E7CC0]);
    v38 = sub_1ABAB0E08(v2);
    sub_1ABA80F54(v38, v39);
    while ((v5 & 0x8000000000000000) == 0)
    {
      sub_1ABAB5768();
      if (v40 == v41)
      {
        break;
      }

      sub_1ABA95938();
      if (v42)
      {
        goto LABEL_26;
      }

      sub_1ABA8B158();
      if (!v42)
      {
        goto LABEL_27;
      }

      sub_1ABA7F6E0(v43, v44, v45);
      v46 = sub_1ABAD219C(&qword_1EB4D1710, &qword_1ABF338A0);
      sub_1ABA7BB64(v46);
      v48 = *(v47 + 72);
      v49 = sub_1ABA842F4();
      v50(v49);
      v51 = sub_1ABA7DCDC();
      v52(v51);
      sub_1ABAB58F8();
      sub_1ABAE2EC4();
      v63 = qword_1ABF623C8[*v0];
      v64 = *(v4 + 48);
      sub_1ABA9805C();
      sub_1ABA8C814();
      v53 = sub_1ABA8E3D0();
      (qword_1EB4D3768)(v53);
      sub_1ABA88CB4(objc_allocWithZone(GDRoadTypeValue), sel_initWithType_typeValue_);
      v54 = sub_1ABA96ABC();
      (qword_1EB4D3768)(v54);
      sub_1ABAB480C(v1, &qword_1EB4D3768, &qword_1ABF3D7D8);
      sub_1ABF24B94();
      sub_1ABAA0C20();
      sub_1ABAA0B0C();
      sub_1ABF24BA4();
      sub_1ABAA13E4();
      if (v40 == v41)
      {
        goto LABEL_28;
      }

      sub_1ABAA26C8();
      if (v42)
      {
        goto LABEL_29;
      }

      sub_1ABAB5B38();
      if (!v42)
      {
        goto LABEL_30;
      }

      sub_1ABAA2A20();
      if (v42)
      {
        sub_1ABA94C38();
        while (v58 < v57)
        {
          sub_1ABA953E0();
          if (v1)
          {
            sub_1ABA99618(v55, v56);
            goto LABEL_21;
          }
        }

        sub_1ABA82B48(v55, v56);
      }

      else
      {
        sub_1ABA97614();
      }

LABEL_21:
      sub_1ABA81A98();
      if (v42)
      {
        sub_1ABA8B550();
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
LABEL_30:
    __break(1u);
  }

  else
  {
LABEL_24:
    sub_1ABA83F0C();
    sub_1ABA8CD68();
  }
}

void sub_1ABAC47A4()
{
  sub_1ABA81AB4();
  sub_1ABA8AFB8();
  v6 = sub_1ABAD219C(&qword_1EB4D3758, &unk_1ABF3D7C0);
  v7 = sub_1ABAA23D8(v6);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  sub_1ABA7C5B0(v10, v59);
  MEMORY[0x1EEE9AC00](v11);
  sub_1ABAA59C4(v12, v13, v14, v15, v16, v17, v18, v19, v60);
  MEMORY[0x1EEE9AC00](v20);
  sub_1ABAA549C(v21, v22, v23, v24, v25, v26, v27, v28, v61);
  MEMORY[0x1EEE9AC00](v29);
  sub_1ABA97CE8(v30, v31, v32, v33, v34, v35, v36, v37, v62);
  if (v3)
  {
    sub_1ABA8875C(MEMORY[0x1E69E7CC0]);
    v38 = sub_1ABAB0E08(v2);
    sub_1ABA80F54(v38, v39);
    while ((v5 & 0x8000000000000000) == 0)
    {
      sub_1ABAB5768();
      if (v40 == v41)
      {
        break;
      }

      sub_1ABA95938();
      if (v42)
      {
        goto LABEL_26;
      }

      sub_1ABA8B158();
      if (!v42)
      {
        goto LABEL_27;
      }

      sub_1ABA7F6E0(v43, v44, v45);
      v46 = sub_1ABAD219C(&qword_1EB4D16F0, &qword_1ABF33880);
      sub_1ABA7BB64(v46);
      v48 = *(v47 + 72);
      v49 = sub_1ABA842F4();
      v50(v49);
      v51 = sub_1ABA7DCDC();
      v52(v51);
      sub_1ABAB58F8();
      sub_1ABAE2EC4();
      v63 = qword_1ABF623C8[*v0];
      v64 = *(v4 + 48);
      sub_1ABA9805C();
      sub_1ABA8C814();
      v53 = sub_1ABA8E3D0();
      (qword_1EB4D3758)(v53);
      sub_1ABA88CB4(objc_allocWithZone(GDRoadTypeValue), sel_initWithType_typeValue_);
      v54 = sub_1ABA96ABC();
      (qword_1EB4D3758)(v54);
      sub_1ABAB480C(v1, &qword_1EB4D3758, &unk_1ABF3D7C0);
      sub_1ABF24B94();
      sub_1ABAA0C20();
      sub_1ABAA0B0C();
      sub_1ABF24BA4();
      sub_1ABAA13E4();
      if (v40 == v41)
      {
        goto LABEL_28;
      }

      sub_1ABAA26C8();
      if (v42)
      {
        goto LABEL_29;
      }

      sub_1ABAB5B38();
      if (!v42)
      {
        goto LABEL_30;
      }

      sub_1ABAA2A20();
      if (v42)
      {
        sub_1ABA94C38();
        while (v58 < v57)
        {
          sub_1ABA953E0();
          if (v1)
          {
            sub_1ABA99618(v55, v56);
            goto LABEL_21;
          }
        }

        sub_1ABA82B48(v55, v56);
      }

      else
      {
        sub_1ABA97614();
      }

LABEL_21:
      sub_1ABA81A98();
      if (v42)
      {
        sub_1ABA8B550();
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
LABEL_30:
    __break(1u);
  }

  else
  {
LABEL_24:
    sub_1ABA83F0C();
    sub_1ABA8CD68();
  }
}

uint64_t sub_1ABAC4A10(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    sub_1ABDD3A24();
    v4 = sub_1ABAB0E08(v1);
    v6 = v5;
    v7 = v1 + 64;
    v29 = v1 + 72;
    v30 = v1;
    do
    {
      if ((v4 & 0x8000000000000000) != 0 || (v8 = *(v1 + 32), sub_1ABDD3960(), v11 == v12))
      {
        __break(1u);
LABEL_23:
        __break(1u);
LABEL_24:
        __break(1u);
LABEL_25:
        __break(1u);
LABEL_26:
        __break(1u);
LABEL_27:
        __break(1u);
        JUMPOUT(0x1ABAC4BA8);
      }

      v13 = v10 << v4;
      if ((*(v7 + 8 * (v4 >> 6)) & (v10 << v4)) == 0)
      {
        goto LABEL_23;
      }

      if (*(v1 + 36) != v6)
      {
        goto LABEL_24;
      }

      v31 = v9;
      [objc_allocWithZone(GDRoadTypeValue) initWithType:qword_1ABF623C8[*(*(v1 + 48) + v4)] typeValue:*(*(v1 + 56) + 8 * v4)];
      v14 = sub_1ABF24B94();
      sub_1ABDD39E4(v14, v15, v16, v17, v18, v19, v20, v21, v27, v28, v29, v30, v31, v32);
      sub_1ABA9EE9C();
      v1 = v30;
      sub_1ABF24BE4();
      sub_1ABF24BA4();
      v22 = *(v30 + 32);
      sub_1ABDD3960();
      if (v11 == v12)
      {
        goto LABEL_25;
      }

      if ((*(v7 + 8 * (v4 >> 6)) & v13) == 0)
      {
        goto LABEL_26;
      }

      if (*(v30 + 36) != v6)
      {
        goto LABEL_27;
      }

      sub_1ABDD3640();
      if (v23)
      {
        sub_1ABA9DFE8();
        while (v25 < v24)
        {
          sub_1ABAAD2BC();
          if (v26)
          {
            sub_1ABAA91F8();
            break;
          }
        }
      }

      else
      {
        sub_1ABDD3928();
      }

      sub_1ABDD3914();
    }

    while (!v23);
    return v32;
  }

  return result;
}

uint64_t sub_1ABAC4C04()
{
  if (v0[25])
  {
    v1 = v0[19];

    v2 = v0[25];
  }

  v3 = v0[26];

  v4 = v0[27];

  v5 = v0[29];

  return MEMORY[0x1EEE6BDD0](v0, 240, 7);
}

uint64_t sub_1ABAC4C64()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[6];

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1ABAC4EC4()
{
  sub_1ABA96210(*(v0 + 80), *(v0 + 88));
  sub_1ABA96210(*(v0 + 96), *(v0 + 104));

  return MEMORY[0x1EEE6BDD0](v0, 112, 7);
}

uint64_t sub_1ABAC4F04()
{
  v1 = v0[4];

  sub_1ABA96210(v0[12], v0[13]);
  sub_1ABA96210(v0[14], v0[15]);

  return MEMORY[0x1EEE6BDD0](v0, 128, 7);
}

uint64_t sub_1ABAC50AC()
{
  if (v0[25])
  {
    v1 = v0[19];

    v2 = v0[25];
  }

  v3 = v0[26];

  v4 = v0[27];

  v5 = v0[29];

  sub_1ABAABD74();

  return MEMORY[0x1EEE6BDD0](v6, v7, v8);
}

uint64_t sub_1ABAC5108()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[6];

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1ABAC5230(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for SearchableViewDatabaseTable();
    v9 = a1 + *(a3 + 20);

    return sub_1ABA7E1E0(v9, a2, v8);
  }
}

void *sub_1ABAC52B8(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for SearchableViewDatabaseTable();
    v8 = v5 + *(a4 + 20);

    return sub_1ABA7B9B4(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1ABAC53A8(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1ABAC53E4(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  type metadata accessor for LifeEventEntryView();
  type metadata accessor for CustomGraphActivityEvent(255);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  sub_1ABA7D034();
  sub_1ABA7D034();
  sub_1ABA7BC4C();
  swift_getAssociatedConformanceWitness();
  sub_1ABA7BC4C();
  swift_getAssociatedConformanceWitness();
  sub_1ABA8F8D8();
  sub_1ABDF2A2C(v3, v4);
  sub_1ABA7D034();
  sub_1ABA7BC4C();
  swift_getAssociatedConformanceWitness();
  sub_1ABA8C3C4();
  type metadata accessor for TypedGraphObjectSequence.Iterator();
  sub_1ABA938A8();
  sub_1ABDF2A2C(v5, v6);
  sub_1ABA7C60C();
  swift_getWitnessTable();
  sub_1ABA8C3C4();
  type metadata accessor for EventBaseView.EventViewSequence();
  return sub_1ABA7EA68();
}

uint64_t sub_1ABAC55AC(uint64_t *a1)
{
  v1 = *a1;
  v8 = a1[1];
  v3 = a1[2];
  v2 = a1[3];
  type metadata accessor for LifeEventEntryView();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  sub_1ABA83BA4();
  sub_1ABA83BA4();
  sub_1ABA7D0F8();
  swift_getAssociatedConformanceWitness();
  sub_1ABA7D0F8();
  swift_getAssociatedConformanceWitness();
  v4 = *(v2 + 8);
  sub_1ABA83BA4();
  sub_1ABA7D0F8();
  swift_getAssociatedConformanceWitness();
  sub_1ABA8C3C4();
  type metadata accessor for TypedGraphObjectSequence.Iterator();
  sub_1ABA938A8();
  sub_1ABDF2A2C(v5, v6);
  sub_1ABA7C60C();
  swift_getWitnessTable();
  sub_1ABA8C3C4();
  type metadata accessor for EventBaseView.EventViewSequence();
  return sub_1ABA7EA68();
}

uint64_t sub_1ABAC574C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1ABF21EB4();
  v7 = a1 + *(a3 + 36);

  return sub_1ABA7E1E0(v7, a2, v6);
}

uint64_t sub_1ABAC57A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_1ABF21EB4();
  v8 = a1 + *(a4 + 36);

  return sub_1ABA7B9B4(v8, a2, a2, v7);
}

uint64_t sub_1ABAC58D4(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  type metadata accessor for LifeEventEntryView();
  type metadata accessor for CustomGraphActivityEvent(255);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  sub_1ABA7D034();
  sub_1ABA7D034();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  sub_1ABA8F908();
  sub_1ABDFB000(v3, v4);
  sub_1ABA7D034();
  swift_getAssociatedConformanceWitness();
  sub_1ABA8C3C4();
  type metadata accessor for TypedGraphObjectSequence.Iterator();
  sub_1ABA7C624();
  sub_1ABDFB000(v5, v6);
  sub_1ABA7C60C();
  swift_getWitnessTable();
  sub_1ABA8C3C4();
  type metadata accessor for EventBaseView.EventViewSequence();
  return sub_1ABA7EA68();
}

uint64_t sub_1ABAC5AA8(uint64_t *a1)
{
  v1 = a1[1];
  v8 = *a1;
  v2 = a1[2];
  v3 = a1[3];
  type metadata accessor for LifeEventEntryView();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  sub_1ABA83BA4();
  sub_1ABA83BA4();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  v4 = *(v2 + 8);
  sub_1ABA83BA4();
  swift_getAssociatedConformanceWitness();
  sub_1ABA8C3C4();
  type metadata accessor for TypedGraphObjectSequence.Iterator();
  sub_1ABA7C624();
  sub_1ABDFB000(v5, v6);
  sub_1ABA7C60C();
  swift_getWitnessTable();
  sub_1ABA8C3C4();
  type metadata accessor for EventBaseView.EventViewSequence();
  return sub_1ABA7EA68();
}

uint64_t sub_1ABAC5D84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 44);
  v6 = sub_1ABF21EB4();

  return sub_1ABA7E1E0(a1 + v5, a2, v6);
}

uint64_t sub_1ABAC5DD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 44);
  v7 = sub_1ABF21EB4();

  return sub_1ABA7B9B4(a1 + v6, a2, a2, v7);
}

uint64_t sub_1ABAC5E88(uint64_t a1, uint64_t a2)
{
  v4 = sub_1ABAD219C(&qword_1EB4D1AA8, &qword_1ABF661A0);

  return sub_1ABA7E1E0(a1, a2, v4);
}

uint64_t sub_1ABAC5EDC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1ABAD219C(&qword_1EB4D1AA8, &qword_1ABF661A0);

  return sub_1ABA7B9B4(a1, a2, a2, v4);
}

uint64_t sub_1ABAC6054(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1ABAD219C(&qword_1EB4D1AA8, &qword_1ABF661A0);
  if (*(*(v6 - 8) + 84) == a2)
  {

    return sub_1ABA7E1E0(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20));
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_1ABAC610C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1ABAD219C(&qword_1EB4D1AA8, &qword_1ABF661A0);
  if (*(*(result - 8) + 84) == a3)
  {

    return sub_1ABA7B9B4(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1ABAC62A4()
{
  v1 = *(v0 + 24);

  sub_1ABA7D9B8();

  return MEMORY[0x1EEE6BDD0](v2, v3, v4);
}

uint64_t sub_1ABAC67D8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1ABAD219C(&qword_1EB4D1AA8, &qword_1ABF661A0);

  return sub_1ABA7E1E0(a1, a2, v4);
}

uint64_t sub_1ABAC682C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1ABAD219C(&qword_1EB4D1AA8, &qword_1ABF661A0);

  return sub_1ABA7B9B4(a1, a2, a2, v4);
}

uint64_t sub_1ABAC6A44(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1ABF21EB4();
    v9 = a1 + *(a3 + 28);

    return sub_1ABA7E1E0(v9, a2, v8);
  }
}

void *sub_1ABAC6ACC(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_1ABF21EB4();
    v8 = v5 + *(a4 + 28);

    return sub_1ABA7B9B4(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1ABAC6C08()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 104);

  return v1;
}

uint64_t sub_1ABAC6C58(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1ABAD219C(&qword_1EB4D2E00, &unk_1ABF3A5D0);
    v9 = a1 + *(a3 + 24);

    return sub_1ABA7E1E0(v9, a2, v8);
  }
}

void *sub_1ABAC6CEC(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_1ABAD219C(&qword_1EB4D2E00, &unk_1ABF3A5D0);
    v8 = v5 + *(a4 + 24);

    return sub_1ABA7B9B4(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1ABAC6E48@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_1ABE5DBC4();
  *a2 = result;
  return result;
}

uint64_t sub_1ABAC6E78@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = sub_1ABE5DC3C();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1ABAC6ED0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1ABF21EB4();
    v9 = a1 + *(a3 + 20);

    return sub_1ABA7E1E0(v9, a2, v8);
  }
}

uint64_t sub_1ABAC6F58(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1ABF21EB4();
    v8 = v5 + *(a4 + 20);

    return sub_1ABA7B9B4(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1ABAC7090(uint64_t a1, int a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    return sub_1ABA8A59C(*(a1 + 24));
  }

  sub_1ABF21EB4();
  v5 = sub_1ABA8A56C(*(a3 + 36));

  return sub_1ABA7E1E0(v5, v6, v7);
}

void sub_1ABAC7108()
{
  sub_1ABAA1CCC();
  if (v3)
  {
    *(v1 + 24) = (v0 - 1);
  }

  else
  {
    v4 = v2;
    sub_1ABF21EB4();
    v5 = sub_1ABA8A56C(*(v4 + 36));

    sub_1ABA7B9B4(v5, v6, v0, v7);
  }
}

uint64_t sub_1ABAC757C()
{
  v2 = sub_1ABAD219C(&qword_1EB4DB820, &qword_1ABF500A0);
  sub_1ABA7BBD0(v2);
  v4 = *(v3 + 80);
  v6 = *(v5 + 64);
  v7 = *(v1 + 24);

  v8 = sub_1ABF22424();
  if (!sub_1ABA84420(v8))
  {
    sub_1ABA8AD50();
    (*(v9 + 8))(v1 + ((v4 + 32) & ~v4), v0);
  }

  sub_1ABAA3AC0();
  v11 = (v10 + 15) & 0xFFFFFFFFFFFFFFF8;
  v12 = *(v1 + v10);

  return MEMORY[0x1EEE6BDD0](v1, v11 + 8, v4 | 7);
}

uint64_t sub_1ABAC7670()
{
  v2 = sub_1ABAD219C(&qword_1EB4DB820, &qword_1ABF500A0);
  sub_1ABA7BBD0(v2);
  v4 = *(v3 + 80);
  v6 = *(v5 + 64);
  v7 = *(v1 + 24);

  v8 = sub_1ABF22424();
  if (!sub_1ABA84420(v8))
  {
    sub_1ABA8AD50();
    (*(v9 + 8))(v1 + ((v4 + 32) & ~v4), v0);
  }

  sub_1ABAA3AC0();

  return MEMORY[0x1EEE6BDD0](v1, ((v10 + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v4 | 7);
}

uint64_t sub_1ABAC7768()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1ABAC77E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 48);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1ABAD219C(&qword_1EB4DB968, &qword_1ABF707E8);
    v9 = a1 + *(a3 + 20);

    return sub_1ABA7E1E0(v9, a2, v8);
  }
}

uint64_t sub_1ABAC7878(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 48) = (a2 - 1);
  }

  else
  {
    v7 = sub_1ABAD219C(&qword_1EB4DB968, &qword_1ABF707E8);
    v8 = v5 + *(a4 + 20);

    return sub_1ABA7B9B4(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1ABAC7A68()
{
  v1 = *(v0 + 24);

  v2 = sub_1ABA8FE90();

  return MEMORY[0x1EEE6BDD0](v2, v3, v4);
}

uint64_t sub_1ABAC7A98()
{
  v1 = *(v0 + 16);

  v2 = sub_1ABA7D544();

  return MEMORY[0x1EEE6BDD0](v2, v3, v4);
}

uint64_t sub_1ABAC7AC8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = TrialAssetManager.RefreshPolicy.AutoRefreshForAllRequestedNamespacesInfo.updateHandlers.getter();
  *a2 = result;
  return result;
}

uint64_t sub_1ABAC7B20(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TrialAssetManager.Asset(0);
  v5 = sub_1ABA7E1E0(a1, a2, v4);
  if (v5 >= 2)
  {
    return v5 - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1ABAC7B68(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = type metadata accessor for TrialAssetManager.Asset(0);

  return sub_1ABA7B9B4(a1, v5, a3, v6);
}

uint64_t sub_1ABAC7BF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1ABF21CF4();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return sub_1ABA7E1E0(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20));
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_1ABAC7C9C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1ABF21CF4();
  if (*(*(result - 8) + 84) == a3)
  {

    return sub_1ABA7B9B4(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1ABAC7D94()
{
  swift_weakDestroy();
  v0 = sub_1ABA7D544();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_1ABAC8518()
{
  v1 = sub_1ABAD219C(&qword_1EB4DC3C0, &qword_1ABF766B8);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  v6 = *(v0 + v5);

  return MEMORY[0x1EEE6BDD0](v0, ((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

uint64_t sub_1ABAC8610@<X0>(_BYTE *a1@<X8>)
{
  result = static NSUserDefaults.isKTSEnabled.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1ABAC88C0()
{
  sub_1ABA81488();
  v2 = sub_1ABAD219C(&qword_1EB4DC6C8, &qword_1ABF77858);
  v3 = sub_1ABA7E1E0(v1, v0, v2);
  if (v3 >= 2)
  {
    return v3 - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1ABAC8910(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_1ABAD219C(&qword_1EB4DC6C8, &qword_1ABF77858);

  return sub_1ABA7B9B4(a1, v5, a3, v6);
}

uint64_t sub_1ABAC89A0(uint64_t a1, int a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v3 = *(a1 + 8);
    if (v3 >= 0xFFFFFFFF)
    {
      LODWORD(v3) = -1;
    }

    return (v3 + 1);
  }

  else
  {
    v7 = sub_1ABF235E4();
    sub_1ABA826B4(v7);
    if (*(v8 + 84) == a2)
    {
      v9 = *(a3 + 20);
    }

    else
    {
      sub_1ABF23484();
      v9 = *(a3 + 24);
    }

    v10 = sub_1ABA8A56C(v9);

    return sub_1ABA7E1E0(v10, v11, v12);
  }
}

void sub_1ABAC8A64()
{
  sub_1ABA81488();
  if (v2 == 0x7FFFFFFF)
  {
    *(v1 + 8) = (v0 - 1);
  }

  else
  {
    v4 = v3;
    v5 = v2;
    v6 = sub_1ABF235E4();
    sub_1ABA826B4(v6);
    if (*(v7 + 84) == v5)
    {
      v8 = *(v4 + 20);
    }

    else
    {
      sub_1ABF23484();
      v8 = *(v4 + 24);
    }

    v9 = sub_1ABA8A56C(v8);

    sub_1ABA7B9B4(v9, v10, v0, v11);
  }
}

uint64_t sub_1ABAC8B20(unsigned __int8 *a1, int a2, uint64_t a3)
{
  if (a2 == 253)
  {
    v3 = *a1;
    if (v3 >= 3)
    {
      return v3 - 2;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_1ABAD219C(&qword_1EB4DC6F0, qword_1ABF78360);
    v6 = sub_1ABA8A56C(*(a3 + 24));

    return sub_1ABA7E1E0(v6, v7, v8);
  }
}

void sub_1ABAC8BA8()
{
  sub_1ABA81488();
  if (v3 == 253)
  {
    *v1 = v0 + 2;
  }

  else
  {
    v4 = v2;
    sub_1ABAD219C(&qword_1EB4DC6F0, qword_1ABF78360);
    v5 = sub_1ABA8A56C(*(v4 + 24));

    sub_1ABA7B9B4(v5, v6, v0, v7);
  }
}

uint64_t sub_1ABAC8C2C()
{
  sub_1ABA81488();
  v3 = *(v2 + 20);
  v4 = sub_1ABAD219C(&qword_1EB4DC6F0, qword_1ABF78360);

  return sub_1ABA7E1E0(v1 + v3, v0, v4);
}

uint64_t sub_1ABAC8C88()
{
  sub_1ABA81488();
  v3 = *(v2 + 20);
  v4 = sub_1ABAD219C(&qword_1EB4DC6F0, qword_1ABF78360);

  return sub_1ABA7B9B4(v1 + v3, v0, v0, v4);
}

uint64_t sub_1ABAC8D10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1ABAD219C(&qword_1EB4DC6F0, qword_1ABF78360);
  v7 = sub_1ABA826B4(v6);
  if (*(v8 + 84) == a2)
  {

    return sub_1ABA7E1E0(a1, a2, v7);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 <= 3)
    {
      v11 = 3;
    }

    else
    {
      v11 = *(a1 + *(a3 + 24));
    }

    v12 = v11 - 3;
    if (v10 >= 3)
    {
      return v12;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_1ABAC8DCC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_1ABA81488();
  v8 = sub_1ABAD219C(&qword_1EB4DC6F0, qword_1ABF78360);
  result = sub_1ABA826B4(v8);
  if (*(v10 + 84) == a3)
  {

    return sub_1ABA7B9B4(v5, v4, v4, result);
  }

  else
  {
    *(v5 + *(a4 + 24)) = v4 + 3;
  }

  return result;
}

uint64_t sub_1ABAC8EA0()
{
  v1 = *(type metadata accessor for VisualUnderstandingServiceBackendV1.EntitySequenceV1(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v5 = sub_1ABF233F4();
  sub_1ABA7BBB0(v5);
  (*(v6 + 8))(v0 + v3);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1ABAC8F64(uint64_t a1, uint64_t a2)
{
  sub_1ABA82858();
  v4 = sub_1ABF233F4();

  return sub_1ABA7E1E0(v2, a2, v4);
}

uint64_t sub_1ABAC8FA8(uint64_t a1, uint64_t a2)
{
  sub_1ABA82858();
  v4 = sub_1ABF233F4();

  return sub_1ABA7B9B4(v2, a2, a2, v4);
}

uint64_t sub_1ABAC8FF0()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

id sub_1ABAC90A8@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 source];
  *a2 = result;
  return result;
}

uint64_t sub_1ABAC9108()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1ABAC91B4()
{
  v1 = *(v0 + 16);

  sub_1ABA7D028();

  return MEMORY[0x1EEE6BDD0](v2, v3, v4);
}

uint64_t sub_1ABAC91E8()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  sub_1ABC6D458(*(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 90));

  return MEMORY[0x1EEE6BDD0](v0, 91, 7);
}

uint64_t sub_1ABAC923C()
{
  v1 = *(v0 + 16) & 0xFFFFFFFFFFFFFFFLL;

  sub_1ABA7D028();

  return MEMORY[0x1EEE6BDD0](v2, v3, v4);
}

char *sub_1ABAC9278(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[16 * a2] <= a3)
  {
    return sub_1ABA8EE60(a3, result);
  }

  return result;
}

unint64_t sub_1ABAC92C0(uint64_t a1)
{
  v3 = *(v1 + 40);
  v4 = sub_1ABF25224();
  return sub_1ABAF8BB8(a1, v4);
}

uint64_t sub_1ABAC9310(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1ABA96210(a1, a2);
  }

  return a1;
}

void *sub_1ABAC9324(void *result)
{
  if (*result == -1)
  {
    __break(1u);
  }

  else
  {
    ++*result;
  }

  return result;
}

uint64_t sub_1ABAC933C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_1ABAC9370(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1ABAC9398(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1ABAC944C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(a2 + 24);
  return sub_1ABAC9298(a1, *v2);
}

void *ActivityEventType.init(activityTypeEntityClass:)@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (!_Records_GDEntityClass_records)
  {
    __break(1u);
    goto LABEL_85;
  }

  v7 = result[1];
  v3 = result[2];
  v2 = result[3];
  v8 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x8E8), *(_Records_GDEntityClass_records + 0x8F0), *(_Records_GDEntityClass_records + 0x8F8), &v237);
  sub_1ABA7BB78(v8, v9, v10, v11, v12, v13, v14, v15, v227, v237, v238, v239);
  v16 = v16 && v4 == v2;
  if (v16)
  {
    v17 = 0;
LABEL_9:

    goto LABEL_10;
  }

  sub_1ABA83534();
  sub_1ABA946E0();

  if (v5)
  {
    v17 = 0;
LABEL_10:

LABEL_11:
    *a2 = v17;
    return result;
  }

  if (!_Records_GDEntityClass_records)
  {
    __break(1u);
    goto LABEL_94;
  }

  v18 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x900), *(_Records_GDEntityClass_records + 0x908), *(_Records_GDEntityClass_records + 0x910), &v237);
  sub_1ABA7BB78(v18, v19, v20, v21, v22, v23, v24, v25, v228, v237, v238, v239);
  if (v16 && v4 == v2)
  {
    v17 = 1;
    goto LABEL_9;
  }

  sub_1ABA83534();
  sub_1ABA946E0();

  if (v5)
  {
    v17 = 1;
    goto LABEL_10;
  }

  if (!_Records_GDEntityClass_records)
  {
    __break(1u);
    goto LABEL_103;
  }

  v27 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x918), *(_Records_GDEntityClass_records + 0x920), *(_Records_GDEntityClass_records + 0x928), &v237);
  sub_1ABA7BB78(v27, v28, v29, v30, v31, v32, v33, v34, v229, v237, v238, v239);
  if (v16 && v4 == v2)
  {
    v17 = 2;
    goto LABEL_9;
  }

  sub_1ABA83534();
  sub_1ABA946E0();

  if (v5)
  {
    v17 = 2;
    goto LABEL_10;
  }

  if (!_Records_GDEntityClass_records)
  {
    __break(1u);
    goto LABEL_112;
  }

  v36 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x930), *(_Records_GDEntityClass_records + 0x938), *(_Records_GDEntityClass_records + 0x940), &v237);
  sub_1ABA7BB78(v36, v37, v38, v39, v40, v41, v42, v43, v230, v237, v238, v239);
  if (v16 && v4 == v2)
  {
    v17 = 3;
    goto LABEL_9;
  }

  sub_1ABA83534();
  sub_1ABA946E0();

  if (v5)
  {
    v17 = 3;
    goto LABEL_10;
  }

  if (!_Records_GDEntityClass_records)
  {
    __break(1u);
    goto LABEL_121;
  }

  v45 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x948), *(_Records_GDEntityClass_records + 0x950), *(_Records_GDEntityClass_records + 0x958), &v237);
  sub_1ABA7BB78(v45, v46, v47, v48, v49, v50, v51, v52, v231, v237, v238, v239);
  if (v16 && v4 == v2)
  {
    v17 = 4;
    goto LABEL_9;
  }

  sub_1ABA83534();
  sub_1ABA946E0();

  if (v5)
  {
    v17 = 4;
    goto LABEL_10;
  }

  if (!_Records_GDEntityClass_records)
  {
    __break(1u);
    goto LABEL_130;
  }

  v54 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x960), *(_Records_GDEntityClass_records + 0x968), *(_Records_GDEntityClass_records + 0x970), &v237);
  sub_1ABA7BB78(v54, v55, v56, v57, v58, v59, v60, v61, v232, v237, v238, v239);
  if (v16 && v4 == v2)
  {
    v17 = 5;
    goto LABEL_9;
  }

  sub_1ABA83534();
  sub_1ABA946E0();

  if (v5)
  {
    v17 = 5;
    goto LABEL_10;
  }

  if (!_Records_GDEntityClass_records)
  {
    __break(1u);
    goto LABEL_139;
  }

  v63 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x978), *(_Records_GDEntityClass_records + 0x980), *(_Records_GDEntityClass_records + 0x988), &v237);
  sub_1ABA7BB78(v63, v64, v65, v66, v67, v68, v69, v70, v233, v237, v238, v239);
  if (v16 && v4 == v2)
  {
    v17 = 6;
    goto LABEL_9;
  }

  sub_1ABA83534();
  sub_1ABA946E0();

  if (v5)
  {
    v17 = 6;
    goto LABEL_10;
  }

  if (!_Records_GDEntityClass_records)
  {
    __break(1u);
    goto LABEL_148;
  }

  v72 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x990), *(_Records_GDEntityClass_records + 0x998), *(_Records_GDEntityClass_records + 0x9A0), &v237);
  sub_1ABA7BB78(v72, v73, v74, v75, v76, v77, v78, v79, v234, v237, v238, v239);
  if (v16 && v4 == v2)
  {
    v17 = 7;
    goto LABEL_9;
  }

  sub_1ABA83534();
  sub_1ABA946E0();

  if (v5)
  {
    v17 = 7;
    goto LABEL_10;
  }

  if (!_Records_GDEntityClass_records)
  {
    __break(1u);
    goto LABEL_157;
  }

  v81 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x9A8), *(_Records_GDEntityClass_records + 0x9B0), *(_Records_GDEntityClass_records + 0x9B8), &v237);
  sub_1ABA7BB78(v81, v82, v83, v84, v85, v86, v87, v88, v235, v237, v238, v239);
  if (v16 && v4 == v2)
  {
    v17 = 8;
    goto LABEL_9;
  }

  sub_1ABA83534();
  sub_1ABA946E0();

  if (v5)
  {
    v17 = 8;
    goto LABEL_10;
  }

  if (!_Records_GDEntityClass_records)
  {
    __break(1u);
    goto LABEL_166;
  }

  v90 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x9C0), *(_Records_GDEntityClass_records + 0x9C8), *(_Records_GDEntityClass_records + 0x9D0), &v237);
  sub_1ABA7BB78(v90, v91, v92, v93, v94, v95, v96, v97, v236, v237, v238, v239);
  if (v16 && v4 == v2)
  {
    v17 = 9;
    goto LABEL_9;
  }

  sub_1ABA83534();
  sub_1ABA946E0();

  if (v5)
  {
    v17 = 9;
    goto LABEL_10;
  }

LABEL_85:
  if (!_Records_GDEntityClass_records)
  {
    __break(1u);
    goto LABEL_175;
  }

  v99 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x9D8), *(_Records_GDEntityClass_records + 0x9E0), *(_Records_GDEntityClass_records + 0x9E8), &v237);
  sub_1ABA7BB78(v99, v100, v101, v102, v103, v104, v105, v106, v227, v237, v238, v239);
  if (v16 && v4 == v2)
  {
    v17 = 10;
    goto LABEL_9;
  }

  sub_1ABA83534();
  sub_1ABA946E0();

  if (v5)
  {
    v17 = 10;
    goto LABEL_10;
  }

LABEL_94:
  if (!_Records_GDEntityClass_records)
  {
    __break(1u);
    goto LABEL_184;
  }

  v108 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x9F0), *(_Records_GDEntityClass_records + 0x9F8), *(_Records_GDEntityClass_records + 0xA00), &v237);
  sub_1ABA7BB78(v108, v109, v110, v111, v112, v113, v114, v115, v228, v237, v238, v239);
  if (v16 && v4 == v2)
  {
    v17 = 11;
    goto LABEL_9;
  }

  sub_1ABA83534();
  sub_1ABA946E0();

  if (v5)
  {
    v17 = 11;
    goto LABEL_10;
  }

LABEL_103:
  if (!_Records_GDEntityClass_records)
  {
    __break(1u);
    goto LABEL_193;
  }

  v117 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0xA08), *(_Records_GDEntityClass_records + 0xA10), *(_Records_GDEntityClass_records + 0xA18), &v237);
  sub_1ABA7BB78(v117, v118, v119, v120, v121, v122, v123, v124, v229, v237, v238, v239);
  if (v16 && v4 == v2)
  {
    v17 = 12;
    goto LABEL_9;
  }

  sub_1ABA83534();
  sub_1ABA946E0();

  if (v5)
  {
    v17 = 12;
    goto LABEL_10;
  }

LABEL_112:
  if (!_Records_GDEntityClass_records)
  {
    __break(1u);
    goto LABEL_202;
  }

  v126 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0xA20), *(_Records_GDEntityClass_records + 0xA28), *(_Records_GDEntityClass_records + 0xA30), &v237);
  sub_1ABA7BB78(v126, v127, v128, v129, v130, v131, v132, v133, v230, v237, v238, v239);
  if (v16 && v4 == v2)
  {
    v17 = 13;
    goto LABEL_9;
  }

  sub_1ABA83534();
  sub_1ABA946E0();

  if (v5)
  {
    v17 = 13;
    goto LABEL_10;
  }

LABEL_121:
  if (!_Records_GDEntityClass_records)
  {
    __break(1u);
    goto LABEL_211;
  }

  v135 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0xA38), *(_Records_GDEntityClass_records + 0xA40), *(_Records_GDEntityClass_records + 0xA48), &v237);
  sub_1ABA7BB78(v135, v136, v137, v138, v139, v140, v141, v142, v231, v237, v238, v239);
  if (v16 && v4 == v2)
  {
    v17 = 14;
    goto LABEL_9;
  }

  sub_1ABA83534();
  sub_1ABA946E0();

  if (v5)
  {
    v17 = 14;
    goto LABEL_10;
  }

LABEL_130:
  if (!_Records_GDEntityClass_records)
  {
    __break(1u);
    goto LABEL_220;
  }

  v144 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0xAE0), *(_Records_GDEntityClass_records + 0xAE8), *(_Records_GDEntityClass_records + 0xAF0), &v237);
  sub_1ABA7BB78(v144, v145, v146, v147, v148, v149, v150, v151, v232, v237, v238, v239);
  if (v16 && v4 == v2)
  {
    v17 = 15;
    goto LABEL_9;
  }

  sub_1ABA83534();
  sub_1ABA946E0();

  if (v5)
  {
    v17 = 15;
    goto LABEL_10;
  }

LABEL_139:
  if (!_Records_GDEntityClass_records)
  {
LABEL_220:
    __break(1u);
    goto LABEL_221;
  }

  v153 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0xBB8), *(_Records_GDEntityClass_records + 0xBC0), *(_Records_GDEntityClass_records + 0xBC8), &v237);
  sub_1ABA7BB78(v153, v154, v155, v156, v157, v158, v159, v160, v233, v237, v238, v239);
  if (v16 && v4 == v2)
  {
    v17 = 16;
    goto LABEL_9;
  }

  sub_1ABA83534();
  sub_1ABA946E0();

  if (v5)
  {
    v17 = 16;
    goto LABEL_10;
  }

LABEL_148:
  if (!_Records_GDEntityClass_records)
  {
LABEL_221:
    __break(1u);
    goto LABEL_222;
  }

  v162 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0xA80), *(_Records_GDEntityClass_records + 0xA88), *(_Records_GDEntityClass_records + 0xA90), &v237);
  sub_1ABA7BB78(v162, v163, v164, v165, v166, v167, v168, v169, v234, v237, v238, v239);
  if (v16 && v4 == v2)
  {
    v17 = 17;
    goto LABEL_9;
  }

  sub_1ABA83534();
  sub_1ABA946E0();

  if (v5)
  {
    v17 = 17;
    goto LABEL_10;
  }

LABEL_157:
  if (!_Records_GDEntityClass_records)
  {
LABEL_222:
    __break(1u);
    goto LABEL_223;
  }

  v171 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0xA98), *(_Records_GDEntityClass_records + 0xAA0), *(_Records_GDEntityClass_records + 0xAA8), &v237);
  sub_1ABA7BB78(v171, v172, v173, v174, v175, v176, v177, v178, v235, v237, v238, v239);
  if (v16 && v4 == v2)
  {
    v17 = 18;
    goto LABEL_9;
  }

  sub_1ABA83534();
  sub_1ABA946E0();

  if (v5)
  {
    v17 = 18;
    goto LABEL_10;
  }

LABEL_166:
  if (!_Records_GDEntityClass_records)
  {
LABEL_223:
    __break(1u);
    goto LABEL_224;
  }

  v180 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0xAB0), *(_Records_GDEntityClass_records + 0xAB8), *(_Records_GDEntityClass_records + 0xAC0), &v237);
  sub_1ABA7BB78(v180, v181, v182, v183, v184, v185, v186, v187, v236, v237, v238, v239);
  if (v16 && v4 == v2)
  {
    v17 = 19;
    goto LABEL_9;
  }

  sub_1ABA83534();
  sub_1ABA946E0();

  if (v5)
  {
    v17 = 19;
    goto LABEL_10;
  }

LABEL_175:
  if (!_Records_GDEntityClass_records)
  {
LABEL_224:
    __break(1u);
    goto LABEL_225;
  }

  v189 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0xAC8), *(_Records_GDEntityClass_records + 0xAD0), *(_Records_GDEntityClass_records + 0xAD8), &v237);
  sub_1ABA7BB78(v189, v190, v191, v192, v193, v194, v195, v196, v227, v237, v238, v239);
  if (v16 && v4 == v2)
  {
    v17 = 20;
    goto LABEL_9;
  }

  sub_1ABA83534();
  sub_1ABA946E0();

  if (v5)
  {
    v17 = 20;
    goto LABEL_10;
  }

LABEL_184:
  if (!_Records_GDEntityClass_records)
  {
LABEL_225:
    __break(1u);
    goto LABEL_226;
  }

  v198 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0xA50), *(_Records_GDEntityClass_records + 0xA58), *(_Records_GDEntityClass_records + 0xA60), &v237);
  sub_1ABA7BB78(v198, v199, v200, v201, v202, v203, v204, v205, v228, v237, v238, v239);
  if (v16 && v4 == v2)
  {
    v17 = 21;
    goto LABEL_9;
  }

  sub_1ABA83534();
  sub_1ABA946E0();

  if (v5)
  {
    v17 = 21;
    goto LABEL_10;
  }

LABEL_193:
  if (!_Records_GDEntityClass_records)
  {
LABEL_226:
    __break(1u);
    __break(1u);
    goto LABEL_227;
  }

  v207 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0xA68), *(_Records_GDEntityClass_records + 0xA70), *(_Records_GDEntityClass_records + 0xA78), &v237);
  sub_1ABA7BB78(v207, v208, v209, v210, v211, v212, v213, v214, v229, v237, v238, v239);
  if (v16 && v4 == v2)
  {
    v17 = 22;
    goto LABEL_9;
  }

  sub_1ABA83534();
  sub_1ABA946E0();

  if (v5)
  {
    v17 = 22;
    goto LABEL_10;
  }

LABEL_202:
  if (!_Records_GDEntityClass_records)
  {
LABEL_227:
    __break(1u);
    __break(1u);
    goto LABEL_228;
  }

  v216 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0xCC0), *(_Records_GDEntityClass_records + 0xCC8), *(_Records_GDEntityClass_records + 0xCD0), &v237);
  sub_1ABA7BB78(v216, v217, v218, v219, v220, v221, v222, v223, v230, v237, v238, v239);
  if (v16 && v4 == v2)
  {
    v17 = 23;
    goto LABEL_9;
  }

  sub_1ABA83534();
  sub_1ABA946E0();

  if (v5)
  {
    v17 = 23;
    goto LABEL_10;
  }

LABEL_211:
  if (_Records_GDEntityClass_records)
  {
    sub_1ABA8882C(*(_Records_GDEntityClass_records + 0xCF0), *(_Records_GDEntityClass_records + 0xCF8), *(_Records_GDEntityClass_records + 0xD00), &v237);
    v17 = 24;
    if (v239 != v3 || v240 != v2)
    {
      v226 = sub_1ABA83534();

      if (v226)
      {
        v17 = 24;
      }

      else
      {
        v17 = 25;
      }

      goto LABEL_11;
    }

    goto LABEL_9;
  }

LABEL_228:
  __break(1u);
  return result;
}

void ActivityEventType.activityTypeEntityClass.getter(uint64_t a1@<X8>)
{
  switch(*v1)
  {
    case 1:
      if (!_Records_GDEntityClass_records)
      {
        goto LABEL_65;
      }

      v3 = *(_Records_GDEntityClass_records + 0x908);
      v4 = *(_Records_GDEntityClass_records + 0x910);
      v5 = *(_Records_GDEntityClass_records + 0x900);
      goto LABEL_52;
    case 2:
      if (!_Records_GDEntityClass_records)
      {
        goto LABEL_60;
      }

      v3 = *(_Records_GDEntityClass_records + 0x920);
      v4 = *(_Records_GDEntityClass_records + 0x928);
      v5 = *(_Records_GDEntityClass_records + 0x918);
      goto LABEL_52;
    case 3:
      if (!_Records_GDEntityClass_records)
      {
        goto LABEL_63;
      }

      v3 = *(_Records_GDEntityClass_records + 0x938);
      v4 = *(_Records_GDEntityClass_records + 0x940);
      v5 = *(_Records_GDEntityClass_records + 0x930);
      goto LABEL_52;
    case 4:
      if (!_Records_GDEntityClass_records)
      {
        goto LABEL_56;
      }

      v3 = *(_Records_GDEntityClass_records + 0x950);
      v4 = *(_Records_GDEntityClass_records + 0x958);
      v5 = *(_Records_GDEntityClass_records + 0x948);
      goto LABEL_52;
    case 5:
      if (!_Records_GDEntityClass_records)
      {
        goto LABEL_68;
      }

      v3 = *(_Records_GDEntityClass_records + 0x968);
      v4 = *(_Records_GDEntityClass_records + 0x970);
      v5 = *(_Records_GDEntityClass_records + 0x960);
      goto LABEL_52;
    case 6:
      if (!_Records_GDEntityClass_records)
      {
        goto LABEL_71;
      }

      v3 = *(_Records_GDEntityClass_records + 0x980);
      v4 = *(_Records_GDEntityClass_records + 0x988);
      v5 = *(_Records_GDEntityClass_records + 0x978);
      goto LABEL_52;
    case 7:
      if (!_Records_GDEntityClass_records)
      {
        goto LABEL_64;
      }

      v3 = *(_Records_GDEntityClass_records + 0x998);
      v4 = *(_Records_GDEntityClass_records + 0x9A0);
      v5 = *(_Records_GDEntityClass_records + 0x990);
      goto LABEL_52;
    case 8:
      if (!_Records_GDEntityClass_records)
      {
        goto LABEL_74;
      }

      v3 = *(_Records_GDEntityClass_records + 0x9B0);
      v4 = *(_Records_GDEntityClass_records + 0x9B8);
      v5 = *(_Records_GDEntityClass_records + 0x9A8);
      goto LABEL_52;
    case 9:
      if (!_Records_GDEntityClass_records)
      {
        goto LABEL_58;
      }

      v3 = *(_Records_GDEntityClass_records + 0x9C8);
      v4 = *(_Records_GDEntityClass_records + 0x9D0);
      v5 = *(_Records_GDEntityClass_records + 0x9C0);
      goto LABEL_52;
    case 0xA:
      if (!_Records_GDEntityClass_records)
      {
        goto LABEL_73;
      }

      v3 = *(_Records_GDEntityClass_records + 0x9E0);
      v4 = *(_Records_GDEntityClass_records + 0x9E8);
      v5 = *(_Records_GDEntityClass_records + 0x9D8);
      goto LABEL_52;
    case 0xB:
      if (!_Records_GDEntityClass_records)
      {
        goto LABEL_55;
      }

      v3 = *(_Records_GDEntityClass_records + 0x9F8);
      v4 = *(_Records_GDEntityClass_records + 0xA00);
      v5 = *(_Records_GDEntityClass_records + 0x9F0);
      goto LABEL_52;
    case 0xC:
      if (!_Records_GDEntityClass_records)
      {
        goto LABEL_57;
      }

      v3 = *(_Records_GDEntityClass_records + 0xA10);
      v4 = *(_Records_GDEntityClass_records + 0xA18);
      v5 = *(_Records_GDEntityClass_records + 0xA08);
      goto LABEL_52;
    case 0xD:
      if (!_Records_GDEntityClass_records)
      {
        goto LABEL_70;
      }

      v3 = *(_Records_GDEntityClass_records + 0xA28);
      v4 = *(_Records_GDEntityClass_records + 0xA30);
      v5 = *(_Records_GDEntityClass_records + 0xA20);
      goto LABEL_52;
    case 0xE:
      if (!_Records_GDEntityClass_records)
      {
        goto LABEL_54;
      }

      v3 = *(_Records_GDEntityClass_records + 0xA40);
      v4 = *(_Records_GDEntityClass_records + 0xA48);
      v5 = *(_Records_GDEntityClass_records + 0xA38);
      goto LABEL_52;
    case 0xF:
      if (!_Records_GDEntityClass_records)
      {
        goto LABEL_61;
      }

      v3 = *(_Records_GDEntityClass_records + 0xAE8);
      v4 = *(_Records_GDEntityClass_records + 0xAF0);
      v5 = *(_Records_GDEntityClass_records + 0xAE0);
      goto LABEL_52;
    case 0x10:
      if (_Records_GDEntityClass_records)
      {
        v3 = *(_Records_GDEntityClass_records + 0xBC0);
        v4 = *(_Records_GDEntityClass_records + 0xBC8);
        v5 = *(_Records_GDEntityClass_records + 0xBB8);
LABEL_52:
        sub_1ABA8882C(v5, v3, v4, v10);
        v6 = v10[1];
        v7 = v10[2];
        v8 = v10[3];
        v9 = v11;
        *a1 = v10[0];
        *(a1 + 8) = v6;
        *(a1 + 16) = v7;
        *(a1 + 24) = v8;
        *(a1 + 32) = v9;
      }

      else
      {
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
LABEL_60:
        __break(1u);
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
LABEL_66:
        __break(1u);
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
LABEL_72:
        __break(1u);
LABEL_73:
        __break(1u);
LABEL_74:
        __break(1u);
LABEL_75:
        __break(1u);
LABEL_76:
        __break(1u);
LABEL_77:
        __break(1u);
      }

      return;
    case 0x11:
      if (!_Records_GDEntityClass_records)
      {
        goto LABEL_66;
      }

      v3 = *(_Records_GDEntityClass_records + 0xA88);
      v4 = *(_Records_GDEntityClass_records + 0xA90);
      v5 = *(_Records_GDEntityClass_records + 0xA80);
      goto LABEL_52;
    case 0x12:
      if (!_Records_GDEntityClass_records)
      {
        goto LABEL_72;
      }

      v3 = *(_Records_GDEntityClass_records + 0xAA0);
      v4 = *(_Records_GDEntityClass_records + 0xAA8);
      v5 = *(_Records_GDEntityClass_records + 0xA98);
      goto LABEL_52;
    case 0x13:
      if (!_Records_GDEntityClass_records)
      {
        goto LABEL_76;
      }

      v3 = *(_Records_GDEntityClass_records + 0xAB8);
      v4 = *(_Records_GDEntityClass_records + 0xAC0);
      v5 = *(_Records_GDEntityClass_records + 0xAB0);
      goto LABEL_52;
    case 0x14:
      if (!_Records_GDEntityClass_records)
      {
        goto LABEL_67;
      }

      v3 = *(_Records_GDEntityClass_records + 0xAD0);
      v4 = *(_Records_GDEntityClass_records + 0xAD8);
      v5 = *(_Records_GDEntityClass_records + 0xAC8);
      goto LABEL_52;
    case 0x15:
      if (!_Records_GDEntityClass_records)
      {
        goto LABEL_69;
      }

      v3 = *(_Records_GDEntityClass_records + 0xA58);
      v4 = *(_Records_GDEntityClass_records + 0xA60);
      v5 = *(_Records_GDEntityClass_records + 0xA50);
      goto LABEL_52;
    case 0x16:
      if (!_Records_GDEntityClass_records)
      {
        goto LABEL_75;
      }

      v3 = *(_Records_GDEntityClass_records + 0xA70);
      v4 = *(_Records_GDEntityClass_records + 0xA78);
      v5 = *(_Records_GDEntityClass_records + 0xA68);
      goto LABEL_52;
    case 0x17:
      if (!_Records_GDEntityClass_records)
      {
        goto LABEL_77;
      }

      v3 = *(_Records_GDEntityClass_records + 0xCC8);
      v4 = *(_Records_GDEntityClass_records + 0xCD0);
      v5 = *(_Records_GDEntityClass_records + 0xCC0);
      goto LABEL_52;
    case 0x18:
      if (!_Records_GDEntityClass_records)
      {
        goto LABEL_59;
      }

      v3 = *(_Records_GDEntityClass_records + 0xCF8);
      v4 = *(_Records_GDEntityClass_records + 0xD00);
      v5 = *(_Records_GDEntityClass_records + 0xCF0);
      goto LABEL_52;
    default:
      if (!_Records_GDEntityClass_records)
      {
        goto LABEL_62;
      }

      v3 = *(_Records_GDEntityClass_records + 0x8F0);
      v4 = *(_Records_GDEntityClass_records + 0x8F8);
      v5 = *(_Records_GDEntityClass_records + 0x8E8);
      goto LABEL_52;
  }
}

uint64_t ActivityEventType.graphObjectType.getter()
{
  switch(*v0)
  {
    case 1:
      v1 = type metadata accessor for CustomGraphWorkingActivityEvent(0);
      sub_1ABAB5BE0();
      break;
    case 2:
      v1 = type metadata accessor for CustomGraphMeetingActivityEvent(0);
      sub_1ABA97EA8();
      break;
    case 3:
      v1 = type metadata accessor for CustomGraphEatingActivityEvent(0);
      sub_1ABA976F8();
      break;
    case 4:
      v1 = type metadata accessor for CustomGraphWatchingTVActivityEvent(0);
      sub_1ABAA4410();
      break;
    case 5:
      v1 = type metadata accessor for CustomGraphCommunicatingActivityEvent(0);
      sub_1ABA7AB30();
      break;
    case 6:
      v1 = type metadata accessor for CustomGraphShoppingActivityEvent(0);
      sub_1ABAA2174();
      break;
    case 7:
      v1 = type metadata accessor for CustomGraphMindfulnessActivityEvent(0);
      sub_1ABA96BA0();
      break;
    case 8:
      v1 = type metadata accessor for CustomGraphSleepingActivityEvent(0);
      sub_1ABAA2790();
      break;
    case 9:
      v1 = type metadata accessor for CustomGraphTravelingActivityEvent(0);
      sub_1ABAA4C68();
      break;
    case 0xA:
      v1 = type metadata accessor for CustomGraphReadingActivityEvent(0);
      sub_1ABAA249C();
      break;
    case 0xB:
      v1 = type metadata accessor for CustomGraphVacationingActivityEvent(0);
      sub_1ABAA3EF8();
      break;
    case 0xC:
      v1 = type metadata accessor for CustomGraphSocializingActivityEvent(0);
      sub_1ABAA481C();
      break;
    case 0xD:
      v1 = type metadata accessor for CustomGraphWakingUpActivityEvent(0);
      sub_1ABA968D0();
      break;
    case 0xE:
      v1 = type metadata accessor for CustomGraphGoingToBedActivityEvent(0);
      sub_1ABAA3B48();
      break;
    case 0xF:
      v1 = type metadata accessor for CustomGraphExercisingActivityEvent(0);
      sub_1ABAA1B3C();
      break;
    case 0x10:
      v1 = type metadata accessor for CustomGraphCommuteActivityEvent(0);
      sub_1ABAA3718();
      break;
    case 0x11:
      v1 = type metadata accessor for CustomGraphWalkingActivityEvent(0);
      sub_1ABAA1E30();
      break;
    case 0x12:
      v1 = type metadata accessor for CustomGraphRunningActivityEvent(0);
      sub_1ABA9569C();
      break;
    case 0x13:
      v1 = type metadata accessor for CustomGraphBicyclingActivityEvent(0);
      sub_1ABAA2B30();
      break;
    case 0x14:
      v1 = type metadata accessor for CustomGraphHikingActivityEvent(0);
      sub_1ABAB0FC4();
      break;
    case 0x15:
      v1 = type metadata accessor for CustomGraphOnThePhoneActivityEvent(0);
      sub_1ABA82690();
      break;
    case 0x16:
      v1 = type metadata accessor for CustomGraphFacetimeActivityEvent(0);
      sub_1ABA973E8();
      break;
    case 0x17:
      v1 = type metadata accessor for CustomGraphDrivingActivityEvent(0);
      sub_1ABAA2F48();
      break;
    case 0x18:
      v1 = type metadata accessor for CustomGraphBehaviorActivityEvent(0);
      sub_1ABAA5180();
      break;
    default:
      v1 = type metadata accessor for CustomGraphTransportationActivityEvent(0);
      sub_1ABAA33D4();
      break;
  }

  sub_1ABAD2154(v2, v3);
  return v1;
}

uint64_t sub_1ABACA7DC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1ABA7E270();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1ABACA808(uint64_t a1)
{
  v2 = sub_1ABAD2238();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABACA844(uint64_t a1)
{
  v2 = sub_1ABAD2238();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1ABACA880(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x726F70736E617274 && a2 == 0xEE006E6F69746174;
  if (v4 || (sub_1ABF25054() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x676E696B726F77 && a2 == 0xE700000000000000;
    if (v6 || (sub_1ABF25054() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x676E697465656DLL && a2 == 0xE700000000000000;
      if (v7 || (sub_1ABF25054() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x676E69746165 && a2 == 0xE600000000000000;
        if (v8 || (sub_1ABF25054() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x676E696863746177 && a2 == 0xED0000616964654DLL;
          if (v9 || (sub_1ABF25054() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x63696E756D6D6F63 && a2 == 0xED0000676E697461;
            if (v10 || (sub_1ABF25054() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x676E6970706F6873 && a2 == 0xE800000000000000;
              if (v11 || (sub_1ABF25054() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x6C7566646E696DLL && a2 == 0xE700000000000000;
                if (v12 || (sub_1ABF25054() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0x7065656C73 && a2 == 0xE500000000000000;
                  if (v13 || (sub_1ABF25054() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0x6C6576617274 && a2 == 0xE600000000000000;
                    if (v14 || (sub_1ABF25054() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0x676E6964616572 && a2 == 0xE700000000000000;
                      if (v15 || (sub_1ABF25054() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v16 = a1 == 0x6E6F697461636176 && a2 == 0xE800000000000000;
                        if (v16 || (sub_1ABF25054() & 1) != 0)
                        {

                          return 11;
                        }

                        else
                        {
                          v17 = a1 == 0x6C6169636F73 && a2 == 0xE600000000000000;
                          if (v17 || (sub_1ABF25054() & 1) != 0)
                          {

                            return 12;
                          }

                          else
                          {
                            v18 = a1 == 0x676E696B6177 && a2 == 0xE600000000000000;
                            if (v18 || (sub_1ABF25054() & 1) != 0)
                            {

                              return 13;
                            }

                            else
                            {
                              v19 = a1 == 0x426F54676E696F67 && a2 == 0xEA00000000006465;
                              if (v19 || (sub_1ABF25054() & 1) != 0)
                              {

                                return 14;
                              }

                              else
                              {
                                v20 = a1 == 0xD000000000000016 && 0x80000001ABF863C0 == a2;
                                if (v20 || (sub_1ABF25054() & 1) != 0)
                                {

                                  return 15;
                                }

                                else
                                {
                                  v21 = a1 == 0x6574756D6D6F63 && a2 == 0xE700000000000000;
                                  if (v21 || (sub_1ABF25054() & 1) != 0)
                                  {

                                    return 16;
                                  }

                                  else
                                  {
                                    v22 = a1 == 0x676E696B6C6177 && a2 == 0xE700000000000000;
                                    if (v22 || (sub_1ABF25054() & 1) != 0)
                                    {

                                      return 17;
                                    }

                                    else
                                    {
                                      v23 = a1 == 0x676E696E6E7572 && a2 == 0xE700000000000000;
                                      if (v23 || (sub_1ABF25054() & 1) != 0)
                                      {

                                        return 18;
                                      }

                                      else
                                      {
                                        v24 = a1 == 0x676E696B6962 && a2 == 0xE600000000000000;
                                        if (v24 || (sub_1ABF25054() & 1) != 0)
                                        {

                                          return 19;
                                        }

                                        else
                                        {
                                          v25 = a1 == 0x676E696B6968 && a2 == 0xE600000000000000;
                                          if (v25 || (sub_1ABF25054() & 1) != 0)
                                          {

                                            return 20;
                                          }

                                          else
                                          {
                                            v26 = a1 == 0x6C6143656E6F6870 && a2 == 0xE90000000000006CLL;
                                            if (v26 || (sub_1ABF25054() & 1) != 0)
                                            {

                                              return 21;
                                            }

                                            else
                                            {
                                              v27 = a1 == 0x656D697465636166 && a2 == 0xE800000000000000;
                                              if (v27 || (sub_1ABF25054() & 1) != 0)
                                              {

                                                return 22;
                                              }

                                              else
                                              {
                                                v28 = a1 == 0x676E6976697264 && a2 == 0xE700000000000000;
                                                if (v28 || (sub_1ABF25054() & 1) != 0)
                                                {

                                                  return 23;
                                                }

                                                else if (a1 == 0x726F697661686562 && a2 == 0xE800000000000000)
                                                {

                                                  return 24;
                                                }

                                                else
                                                {
                                                  v30 = sub_1ABF25054();

                                                  if (v30)
                                                  {
                                                    return 24;
                                                  }

                                                  else
                                                  {
                                                    return 25;
                                                  }
                                                }
                                              }
                                            }
                                          }
                                        }
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1ABACAFD4(char a1)
{
  result = 0x726F70736E617274;
  switch(a1)
  {
    case 1:
      v3 = 1802661751;
      goto LABEL_29;
    case 2:
      v3 = 1952802157;
      goto LABEL_29;
    case 3:
      v5 = 1769234789;
      return v5 & 0xFFFF0000FFFFFFFFLL | 0x676E00000000;
    case 4:
      v4 = 0x696863746177;
      return v4 & 0xFFFFFFFFFFFFLL | 0x676E000000000000;
    case 5:
      return 0x63696E756D6D6F63;
    case 6:
      v4 = 0x6970706F6873;
      return v4 & 0xFFFFFFFFFFFFLL | 0x676E000000000000;
    case 7:
      return 0x6C7566646E696DLL;
    case 8:
      return 0x7065656C73;
    case 9:
      return 0x6C6576617274;
    case 10:
      v3 = 1684104562;
      goto LABEL_29;
    case 11:
      return 0x6E6F697461636176;
    case 12:
      return 0x6C6169636F73;
    case 13:
      v5 = 1768644983;
      return v5 & 0xFFFF0000FFFFFFFFLL | 0x676E00000000;
    case 14:
      return 0x426F54676E696F67;
    case 15:
      return 0xD000000000000016;
    case 16:
      return 0x6574756D6D6F63;
    case 17:
      v3 = 1802264951;
      goto LABEL_29;
    case 18:
      v3 = 1852732786;
      goto LABEL_29;
    case 19:
      return 0x676E696B6962;
    case 20:
      return 0x676E696B6968;
    case 21:
      return 0x6C6143656E6F6870;
    case 22:
      return 0x656D697465636166;
    case 23:
      v3 = 1986622052;
LABEL_29:
      result = v3 | 0x676E6900000000;
      break;
    case 24:
      result = 0x726F697661686562;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1ABACB238(uint64_t a1)
{
  v2 = sub_1ABAD23DC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABACB274(uint64_t a1)
{
  v2 = sub_1ABAD23DC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1ABACB2E0()
{
  v1 = *v0;
  sub_1ABF25234();
  sub_1ABAC9298(v3, v1);
  return sub_1ABF25294();
}

uint64_t sub_1ABACB32C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1ABACA880(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1ABACB374@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1ABACAFCC();
  *a1 = result;
  return result;
}

uint64_t sub_1ABACB39C(uint64_t a1)
{
  v2 = sub_1ABAD21E4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABACB3D8(uint64_t a1)
{
  v2 = sub_1ABAD21E4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1ABACB414(uint64_t a1)
{
  v2 = sub_1ABAD2874();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABACB450(uint64_t a1)
{
  v2 = sub_1ABAD2874();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1ABACB48C(uint64_t a1)
{
  v2 = sub_1ABAD24D8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABACB4C8(uint64_t a1)
{
  v2 = sub_1ABAD24D8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1ABACB504(uint64_t a1)
{
  v2 = sub_1ABAD228C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABACB540(uint64_t a1)
{
  v2 = sub_1ABAD228C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1ABACB57C(uint64_t a1)
{
  v2 = sub_1ABAD291C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABACB5B8(uint64_t a1)
{
  v2 = sub_1ABAD291C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1ABACB5F4(uint64_t a1)
{
  v2 = sub_1ABAD22E0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABACB630(uint64_t a1)
{
  v2 = sub_1ABAD22E0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1ABACB66C(uint64_t a1)
{
  v2 = sub_1ABAD2580();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABACB6A8(uint64_t a1)
{
  v2 = sub_1ABAD2580();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1ABACB6E4(uint64_t a1)
{
  v2 = sub_1ABAD2388();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABACB720(uint64_t a1)
{
  v2 = sub_1ABAD2388();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1ABACB75C(uint64_t a1)
{
  v2 = sub_1ABAD2970();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABACB798(uint64_t a1)
{
  v2 = sub_1ABAD2970();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1ABACB7D4(uint64_t a1)
{
  v2 = sub_1ABAD27CC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABACB810(uint64_t a1)
{
  v2 = sub_1ABAD27CC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1ABACB84C(uint64_t a1)
{
  v2 = sub_1ABAD2334();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABACB888(uint64_t a1)
{
  v2 = sub_1ABAD2334();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1ABACB8C4(uint64_t a1)
{
  v2 = sub_1ABAD26D0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABACB900(uint64_t a1)
{
  v2 = sub_1ABAD26D0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1ABACB93C(uint64_t a1)
{
  v2 = sub_1ABAD2430();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABACB978(uint64_t a1)
{
  v2 = sub_1ABAD2430();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1ABACB9B4(uint64_t a1)
{
  v2 = sub_1ABAD2820();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABACB9F0(uint64_t a1)
{
  v2 = sub_1ABAD2820();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1ABACBA2C(uint64_t a1)
{
  v2 = sub_1ABAD2778();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABACBA68(uint64_t a1)
{
  v2 = sub_1ABAD2778();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1ABACBAA4(uint64_t a1)
{
  v2 = sub_1ABAD2628();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABACBAE0(uint64_t a1)
{
  v2 = sub_1ABAD2628();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1ABACBB1C(uint64_t a1)
{
  v2 = sub_1ABAD2A18();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABACBB58(uint64_t a1)
{
  v2 = sub_1ABAD2A18();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1ABACBB94(uint64_t a1)
{
  v2 = sub_1ABAD2724();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABACBBD0(uint64_t a1)
{
  v2 = sub_1ABAD2724();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1ABACBC0C(uint64_t a1)
{
  v2 = sub_1ABAD252C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABACBC48(uint64_t a1)
{
  v2 = sub_1ABAD252C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1ABACBC84(uint64_t a1)
{
  v2 = sub_1ABAD267C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABACBCC0(uint64_t a1)
{
  v2 = sub_1ABAD267C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1ABACBCFC(uint64_t a1)
{
  v2 = sub_1ABAD25D4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABACBD38(uint64_t a1)
{
  v2 = sub_1ABAD25D4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1ABACBD74(uint64_t a1)
{
  v2 = sub_1ABAD2484();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABACBDB0(uint64_t a1)
{
  v2 = sub_1ABAD2484();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1ABACBDEC(uint64_t a1)
{
  v2 = sub_1ABAD28C8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABACBE28(uint64_t a1)
{
  v2 = sub_1ABAD28C8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1ABACBE64(uint64_t a1)
{
  v2 = sub_1ABAD29C4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABACBEA0(uint64_t a1)
{
  v2 = sub_1ABAD29C4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ActivityEventType.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = sub_1ABAD219C(&qword_1EB4D04F8, &qword_1ABF30EB0);
  v5 = sub_1ABA7BB64(v4);
  v230 = v6;
  v231 = v5;
  v8 = *(v7 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v9);
  sub_1ABA7FBE0();
  v229 = v10;
  v11 = sub_1ABAD219C(&qword_1EB4D0500, &qword_1ABF30EB8);
  v12 = sub_1ABA7BB64(v11);
  v227 = v13;
  v228 = v12;
  v15 = *(v14 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v16);
  sub_1ABA7FBE0();
  v226 = v17;
  v18 = sub_1ABAD219C(&qword_1EB4D0508, &qword_1ABF30EC0);
  v19 = sub_1ABA7BB64(v18);
  v224 = v20;
  v225 = v19;
  v22 = *(v21 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v23);
  sub_1ABA7FBE0();
  v223 = v24;
  v25 = sub_1ABAD219C(&qword_1EB4D0510, &qword_1ABF30EC8);
  v26 = sub_1ABA7BB64(v25);
  v221 = v27;
  v222 = v26;
  v29 = *(v28 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v30);
  sub_1ABA7FBE0();
  v220 = v31;
  v32 = sub_1ABAD219C(&qword_1EB4D0518, &qword_1ABF30ED0);
  v33 = sub_1ABA7BB64(v32);
  v218 = v34;
  v219 = v33;
  v36 = *(v35 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v37);
  sub_1ABA7FBE0();
  v217 = v38;
  v39 = sub_1ABAD219C(&qword_1EB4D0520, &qword_1ABF30ED8);
  v40 = sub_1ABA7BB64(v39);
  v215 = v41;
  v216 = v40;
  v43 = *(v42 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v44);
  sub_1ABA7FBE0();
  v214 = v45;
  v46 = sub_1ABAD219C(&qword_1EB4D0528, &qword_1ABF30EE0);
  sub_1ABA8E5AC(v46, &v246);
  v212 = v47;
  v49 = *(v48 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v50);
  sub_1ABA7FBE0();
  sub_1ABA8147C(v51);
  v52 = sub_1ABAD219C(&qword_1EB4D0530, &qword_1ABF30EE8);
  sub_1ABA8E5AC(v52, &v243);
  v209 = v53;
  v55 = *(v54 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v56);
  sub_1ABA7FBE0();
  sub_1ABA8147C(v57);
  v58 = sub_1ABAD219C(&qword_1EB4D0538, &qword_1ABF30EF0);
  sub_1ABA8E5AC(v58, &v240);
  v206 = v59;
  v61 = *(v60 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v62);
  sub_1ABA7FBE0();
  sub_1ABA8147C(v63);
  v64 = sub_1ABAD219C(&qword_1EB4D0540, &qword_1ABF30EF8);
  sub_1ABA8E5AC(v64, &v236);
  v203 = v65;
  v67 = *(v66 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v68);
  sub_1ABA7FBE0();
  sub_1ABA8147C(v69);
  v70 = sub_1ABAD219C(&qword_1EB4D0548, &qword_1ABF30F00);
  sub_1ABA8E5AC(v70, &v233);
  v200 = v71;
  v73 = *(v72 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v74);
  sub_1ABA7FBE0();
  sub_1ABA8147C(v75);
  v76 = sub_1ABAD219C(&qword_1EB4D0550, &qword_1ABF30F08);
  sub_1ABA8E5AC(v76, &v230);
  v197 = v77;
  v79 = *(v78 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v80);
  sub_1ABA7FBE0();
  sub_1ABA8147C(v81);
  v82 = sub_1ABAD219C(&qword_1EB4D0558, &qword_1ABF30F10);
  sub_1ABA8E5AC(v82, &v227);
  v194 = v83;
  v85 = *(v84 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v86);
  sub_1ABA7FBE0();
  sub_1ABA8147C(v87);
  v88 = sub_1ABAD219C(&qword_1EB4D0560, &qword_1ABF30F18);
  sub_1ABA8E5AC(v88, &v224);
  v192 = v89;
  v91 = *(v90 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v92);
  sub_1ABA7FBE0();
  sub_1ABA8147C(v93);
  v94 = sub_1ABAD219C(&qword_1EB4D0568, &qword_1ABF30F20);
  sub_1ABA8E5AC(v94, &v221);
  v191 = v95;
  v97 = *(v96 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v98);
  sub_1ABA7FBE0();
  sub_1ABA8147C(v99);
  v100 = sub_1ABAD219C(&qword_1EB4D0570, &qword_1ABF30F28);
  sub_1ABA8E5AC(v100, &v218);
  v190 = v101;
  v103 = *(v102 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v104);
  sub_1ABA7FBE0();
  sub_1ABA8147C(v105);
  v106 = sub_1ABAD219C(&qword_1EB4D0578, &qword_1ABF30F30);
  sub_1ABA8E5AC(v106, &v215);
  v189 = v107;
  v109 = *(v108 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v110);
  sub_1ABA7FBE0();
  sub_1ABA8147C(v111);
  v112 = sub_1ABAD219C(&qword_1EB4D0580, &qword_1ABF30F38);
  sub_1ABA8E5AC(v112, &v212);
  v188 = v113;
  v115 = *(v114 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v116);
  sub_1ABA7FBE0();
  sub_1ABA8147C(v117);
  v118 = sub_1ABAD219C(&qword_1EB4D0588, &qword_1ABF30F40);
  sub_1ABA8E5AC(v118, &v209);
  v187 = v119;
  v121 = *(v120 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v122);
  sub_1ABA7FBE0();
  sub_1ABA8147C(v123);
  v124 = sub_1ABAD219C(&qword_1EB4D0590, &qword_1ABF30F48);
  sub_1ABA8E5AC(v124, &v206);
  v186 = v125;
  v127 = *(v126 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v128);
  sub_1ABA7FBE0();
  sub_1ABA8147C(v129);
  v130 = sub_1ABAD219C(&qword_1EB4D0598, &qword_1ABF30F50);
  sub_1ABA8E5AC(v130, &v203);
  v185 = v131;
  v133 = *(v132 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v134);
  sub_1ABA7FBE0();
  sub_1ABA8147C(v135);
  v136 = sub_1ABAD219C(&qword_1EB4D05A0, &qword_1ABF30F58);
  sub_1ABA8E5AC(v136, &v200);
  v184 = v137;
  v139 = *(v138 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v140);
  sub_1ABA7FBE0();
  sub_1ABA8147C(v141);
  v142 = sub_1ABAD219C(&qword_1EB4D05A8, &qword_1ABF30F60);
  sub_1ABA8E5AC(v142, &v197);
  v183 = v143;
  v145 = *(v144 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v146);
  sub_1ABA7FBE0();
  sub_1ABA8147C(v147);
  v148 = sub_1ABAD219C(&qword_1EB4D05B0, &qword_1ABF30F68);
  sub_1ABA8E5AC(v148, &v194);
  v181 = v149;
  v151 = *(v150 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v152);
  v154 = &v180 - v153;
  v155 = sub_1ABAD219C(&qword_1EB4D05B8, &qword_1ABF30F70);
  sub_1ABA7BB64(v155);
  v180 = v156;
  v158 = *(v157 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v159);
  v233 = sub_1ABAD219C(&qword_1EB4D05C0, &qword_1ABF30F78);
  sub_1ABA7BB64(v233);
  v161 = v160;
  v163 = *(v162 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v164);
  v166 = &v180 - v165;
  v167 = *v2;
  v168 = a1[4];
  v169 = sub_1ABA93E20(a1, a1[3]);
  sub_1ABAD21E4();
  v232 = v166;
  sub_1ABF252E4();
  v170 = (v161 + 8);
  switch(v167)
  {
    case 1:
      v238 = 1;
      sub_1ABAD29C4();
      v177 = v232;
      v178 = v233;
      sub_1ABF24EC4();
      (*(v181 + 8))(v154, v182);
      return (*v170)(v177, v178);
    case 2:
      v238 = 2;
      sub_1ABAD2970();
      sub_1ABA93164(v195);
      v171 = sub_1ABA7E284(v196);
      v174 = &v197;
      goto LABEL_24;
    case 3:
      v238 = 3;
      sub_1ABAD291C();
      sub_1ABA93164(v198);
      v171 = sub_1ABA7E284(v199);
      v174 = &v200;
      goto LABEL_24;
    case 4:
      v238 = 4;
      sub_1ABAD28C8();
      sub_1ABA93164(v201);
      v171 = sub_1ABA7E284(v202);
      v174 = &v203;
      goto LABEL_24;
    case 5:
      v238 = 5;
      sub_1ABAD2874();
      sub_1ABA93164(v204);
      v171 = sub_1ABA7E284(v205);
      v174 = &v206;
      goto LABEL_24;
    case 6:
      v238 = 6;
      sub_1ABAD2820();
      sub_1ABA93164(v207);
      v171 = sub_1ABA7E284(v208);
      v174 = &v209;
      goto LABEL_24;
    case 7:
      v238 = 7;
      sub_1ABAD27CC();
      sub_1ABA93164(v210);
      v171 = sub_1ABA7E284(v211);
      v174 = &v212;
      goto LABEL_24;
    case 8:
      v238 = 8;
      sub_1ABAD2778();
      sub_1ABA93164(v213);
      v171 = sub_1ABA7E284(&v214);
      v174 = &v215;
      goto LABEL_24;
    case 9:
      v238 = 9;
      sub_1ABAD2724();
      sub_1ABA93164(&v216);
      v171 = sub_1ABA7E284(&v217);
      v174 = &v218;
      goto LABEL_24;
    case 10:
      v238 = 10;
      sub_1ABAD26D0();
      sub_1ABA93164(&v219);
      v171 = sub_1ABA7E284(&v220);
      v174 = &v221;
      goto LABEL_24;
    case 11:
      v238 = 11;
      sub_1ABAD267C();
      sub_1ABA93164(&v222);
      v171 = sub_1ABA7E284(&v223);
      v174 = &v224;
      goto LABEL_24;
    case 12:
      v238 = 12;
      sub_1ABAD2628();
      sub_1ABA93164(&v225);
      v171 = sub_1ABA7E284(&v226);
      v174 = &v227;
      goto LABEL_24;
    case 13:
      v238 = 13;
      sub_1ABAD25D4();
      sub_1ABA93164(&v228);
      v171 = sub_1ABA7E284(&v229);
      v174 = &v230;
      goto LABEL_24;
    case 14:
      v238 = 14;
      sub_1ABAD2580();
      sub_1ABA93164(&v231);
      v171 = sub_1ABA7E284(&v232);
      v174 = &v233;
      goto LABEL_24;
    case 15:
      v238 = 15;
      sub_1ABAD252C();
      sub_1ABA93164(&v234);
      v171 = sub_1ABA7E284(v235);
      v174 = &v236;
      goto LABEL_24;
    case 16:
      v238 = 16;
      sub_1ABAD24D8();
      sub_1ABA93164(v237);
      v171 = sub_1ABA7E284(&v239);
      v174 = &v240;
      goto LABEL_24;
    case 17:
      v238 = 17;
      sub_1ABAD2484();
      sub_1ABA93164(&v241);
      v171 = sub_1ABA7E284(&v242);
      v174 = &v243;
      goto LABEL_24;
    case 18:
      v238 = 18;
      sub_1ABAD2430();
      sub_1ABA93164(&v244);
      v171 = sub_1ABA7E284(&v245);
      v174 = &v246;
LABEL_24:
      v173 = *(v174 - 32);
      break;
    case 19:
      v238 = 19;
      sub_1ABAD23DC();
      v175 = v214;
      sub_1ABA8145C();
      v176 = v215;
      v173 = v216;
      goto LABEL_28;
    case 20:
      v238 = 20;
      sub_1ABAD2388();
      v175 = v217;
      sub_1ABA8145C();
      v176 = v218;
      v173 = v219;
      goto LABEL_28;
    case 21:
      v238 = 21;
      sub_1ABAD2334();
      v175 = v220;
      sub_1ABA8145C();
      v176 = v221;
      v173 = v222;
      goto LABEL_28;
    case 22:
      v238 = 22;
      sub_1ABAD22E0();
      v175 = v223;
      sub_1ABA8145C();
      v176 = v224;
      v173 = v225;
      goto LABEL_28;
    case 23:
      v238 = 23;
      sub_1ABAD228C();
      v175 = v226;
      sub_1ABA8145C();
      v176 = v227;
      v173 = v228;
      goto LABEL_28;
    case 24:
      v238 = 24;
      sub_1ABAD2238();
      v175 = v229;
      sub_1ABA8145C();
      v176 = v230;
      v173 = v231;
LABEL_28:
      v172 = *(v176 + 8);
      v171 = v175;
      break;
    default:
      v238 = 0;
      sub_1ABAD2A18();
      sub_1ABA8145C();
      v171 = sub_1ABA7E284(v193);
      v173 = v155;
      break;
  }

  v172(v171, v173);
  return (*v170)(v169, v154);
}

uint64_t ActivityEventType.hashValue.getter()
{
  v1 = *v0;
  sub_1ABA7AB5C();
  MEMORY[0x1AC5AA8A0](v1);
  return sub_1ABF25294();
}

void ActivityEventType.init(from:)(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v245 = a2;
  v3 = sub_1ABAD219C(&qword_1EB4D0698, &qword_1ABF30F80);
  sub_1ABA8E5AC(v3, &v257);
  v224 = v4;
  v6 = *(v5 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v7);
  sub_1ABA7FBE0();
  v244 = v8;
  v9 = sub_1ABAD219C(&qword_1EB4D06A0, &qword_1ABF30F88);
  sub_1ABA8E5AC(v9, &v255);
  v222 = v10;
  v12 = *(v11 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v13);
  sub_1ABA7FBE0();
  v243 = v14;
  v15 = sub_1ABAD219C(&qword_1EB4D06A8, &qword_1ABF30F90);
  sub_1ABA8E5AC(v15, &v252);
  v220 = v16;
  v18 = *(v17 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v19);
  sub_1ABA7FBE0();
  v242 = v20;
  v21 = sub_1ABAD219C(&qword_1EB4D06B0, &qword_1ABF30F98);
  sub_1ABA8E5AC(v21, &v250);
  v218 = v22;
  v24 = *(v23 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v25);
  sub_1ABA7FBE0();
  v241 = v26;
  v27 = sub_1ABAD219C(&qword_1EB4D06B8, &qword_1ABF30FA0);
  sub_1ABA8E5AC(v27, &v248);
  v216 = v28;
  v30 = *(v29 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v31);
  sub_1ABA7FBE0();
  v240 = v32;
  v33 = sub_1ABAD219C(&qword_1EB4D06C0, &qword_1ABF30FA8);
  sub_1ABA8E5AC(v33, &v246);
  v214 = v34;
  v36 = *(v35 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v37);
  sub_1ABA7FBE0();
  v239 = v38;
  v39 = sub_1ABAD219C(&qword_1EB4D06C8, &qword_1ABF30FB0);
  sub_1ABA8E5AC(v39, &v244);
  v212 = v40;
  v42 = *(v41 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v43);
  sub_1ABA7FBE0();
  v238 = v44;
  v45 = sub_1ABAD219C(&qword_1EB4D06D0, &qword_1ABF30FB8);
  sub_1ABA8E5AC(v45, &v242);
  v210 = v46;
  v48 = *(v47 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v49);
  sub_1ABA7FBE0();
  v237 = v50;
  v51 = sub_1ABAD219C(&qword_1EB4D06D8, &qword_1ABF30FC0);
  sub_1ABA8E5AC(v51, &v240);
  v208[2] = v52;
  v54 = *(v53 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v55);
  sub_1ABA7FBE0();
  v236 = v56;
  v57 = sub_1ABAD219C(&qword_1EB4D06E0, &qword_1ABF30FC8);
  sub_1ABA8E5AC(v57, &v238);
  v208[0] = v58;
  v60 = *(v59 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v61);
  sub_1ABA7FBE0();
  v235 = v62;
  v63 = sub_1ABAD219C(&qword_1EB4D06E8, &qword_1ABF30FD0);
  sub_1ABA8E5AC(v63, &v236);
  v207 = v64;
  v66 = *(v65 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v67);
  sub_1ABA7FBE0();
  v234 = v68;
  v69 = sub_1ABAD219C(&qword_1EB4D06F0, &qword_1ABF30FD8);
  sub_1ABA8E5AC(v69, &v234);
  v206 = v70;
  v72 = *(v71 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v73);
  sub_1ABA7FBE0();
  v233 = v74;
  v75 = sub_1ABAD219C(&qword_1EB4D06F8, &qword_1ABF30FE0);
  sub_1ABA8E5AC(v75, &v232);
  v205 = v76;
  v78 = *(v77 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v79);
  sub_1ABA7FBE0();
  v232 = v80;
  v81 = sub_1ABAD219C(&qword_1EB4D0700, &qword_1ABF30FE8);
  sub_1ABA8E5AC(v81, &v230);
  v204 = v82;
  v84 = *(v83 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v85);
  sub_1ABA7FBE0();
  v231 = v86;
  v87 = sub_1ABAD219C(&qword_1EB4D0708, &qword_1ABF30FF0);
  sub_1ABA8E5AC(v87, v228);
  v203 = v88;
  v90 = *(v89 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v91);
  sub_1ABA7FBE0();
  v230 = v92;
  v93 = sub_1ABAD219C(&qword_1EB4D0710, &qword_1ABF30FF8);
  sub_1ABA8E5AC(v93, v226);
  v202 = v94;
  v96 = *(v95 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v97);
  sub_1ABA7FBE0();
  v248 = v98;
  v99 = sub_1ABAD219C(&qword_1EB4D0718, &qword_1ABF31000);
  sub_1ABA8E5AC(v99, &v224);
  v201 = v100;
  v102 = *(v101 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v103);
  sub_1ABA7FBE0();
  v247 = v104;
  v105 = sub_1ABAD219C(&qword_1EB4D0720, &qword_1ABF31008);
  sub_1ABA8E5AC(v105, v223);
  v199 = v106;
  v108 = *(v107 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v109);
  sub_1ABA7FBE0();
  v246 = v110;
  v111 = sub_1ABAD219C(&qword_1EB4D0728, &qword_1ABF31010);
  sub_1ABA8E5AC(v111, v221);
  v198 = v112;
  v114 = *(v113 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v115);
  sub_1ABA7FBE0();
  sub_1ABA8147C(v116);
  v117 = sub_1ABAD219C(&qword_1EB4D0730, &qword_1ABF31018);
  sub_1ABA8E5AC(v117, v219);
  v197 = v118;
  v120 = *(v119 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v121);
  sub_1ABA7FBE0();
  sub_1ABA8147C(v122);
  v123 = sub_1ABAD219C(&qword_1EB4D0738, &qword_1ABF31020);
  sub_1ABA8E5AC(v123, v217);
  v196 = v124;
  v126 = *(v125 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v127);
  sub_1ABA7FBE0();
  sub_1ABA8147C(v128);
  v129 = sub_1ABAD219C(&qword_1EB4D0740, &qword_1ABF31028);
  sub_1ABA8E5AC(v129, v215);
  v195 = v130;
  v132 = *(v131 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v133);
  sub_1ABA7FBE0();
  sub_1ABA8147C(v134);
  v135 = sub_1ABAD219C(&qword_1EB4D0748, &qword_1ABF31030);
  sub_1ABA8E5AC(v135, v213);
  v194 = v136;
  v138 = *(v137 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v139);
  sub_1ABA7FBE0();
  sub_1ABA8147C(v140);
  v141 = sub_1ABAD219C(&qword_1EB4D0750, &qword_1ABF31038);
  sub_1ABA8E5AC(v141, v211);
  v193 = v142;
  v144 = *(v143 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v145);
  v147 = v187 - v146;
  v148 = sub_1ABAD219C(&qword_1EB4D0758, &qword_1ABF31040);
  sub_1ABA7BB64(v148);
  v192 = v149;
  v151 = *(v150 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v152);
  v154 = v187 - v153;
  v155 = sub_1ABAD219C(&qword_1EB4D0760, &qword_1ABF31048);
  sub_1ABA7BB64(v155);
  v157 = v156;
  v159 = *(v158 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v160);
  v162 = a1[3];
  v161 = a1[4];
  v249 = a1;
  sub_1ABA93E20(a1, v162);
  sub_1ABAD21E4();
  v163 = v250;
  sub_1ABF252C4();
  if (v163)
  {
    goto LABEL_8;
  }

  v190 = v154;
  v189 = v148;
  v191 = v147;
  v164 = v247;
  v250 = v157;
  v165 = sub_1ABF24EA4();
  sub_1ABAD2F18(v165, 0);
  if (v168 == v169 >> 1)
  {
LABEL_7:
    v178 = sub_1ABF24B44();
    swift_allocError();
    v180 = v179;
    v181 = *(sub_1ABAD219C(&qword_1EB4D0768, &qword_1ABF31050) + 48);
    *v180 = &type metadata for ActivityEventType;
    sub_1ABF24DA4();
    sub_1ABF24B34();
    (*(*(v178 - 8) + 104))(v180, *MEMORY[0x1E69E6AF8], v178);
    swift_willThrow();
    swift_unknownObjectRelease();
    v182 = sub_1ABAA0E34();
    v183(v182);
LABEL_8:
    v184 = v249;
LABEL_9:
    sub_1ABA84B54(v184);
    return;
  }

  v187[1] = 0;
  if (v168 < (v169 >> 1))
  {
    v188 = *(v167 + v168);
    sub_1ABAD48F8(v168 + 1, v169 >> 1, v166, v167, v168, v169);
    v171 = v170;
    v173 = v172;
    swift_unknownObjectRelease();
    if (v171 == v173 >> 1)
    {
      v174 = v245;
      switch(v188)
      {
        case 1:
          v254 = 1;
          sub_1ABAD29C4();
          sub_1ABA7ECB8();
          swift_unknownObjectRelease();
          v175 = sub_1ABA80580(&v210);
          v177 = v211;
          goto LABEL_34;
        case 2:
          v254 = 2;
          sub_1ABAD2970();
          sub_1ABA7ECB8();
          swift_unknownObjectRelease();
          v175 = sub_1ABA80580(&v212);
          v177 = v213;
          goto LABEL_34;
        case 3:
          v254 = 3;
          sub_1ABAD291C();
          sub_1ABA7ECB8();
          swift_unknownObjectRelease();
          v175 = sub_1ABA80580(&v214);
          v177 = v215;
          goto LABEL_34;
        case 4:
          v254 = 4;
          sub_1ABAD28C8();
          sub_1ABA7ECB8();
          swift_unknownObjectRelease();
          v175 = sub_1ABA80580(&v216);
          v177 = v217;
          goto LABEL_34;
        case 5:
          v254 = 5;
          sub_1ABAD2874();
          sub_1ABA7ECB8();
          swift_unknownObjectRelease();
          v175 = sub_1ABA80580(&v218);
          v177 = v219;
          goto LABEL_34;
        case 6:
          v254 = 6;
          sub_1ABAD2820();
          sub_1ABA7ECB8();
          swift_unknownObjectRelease();
          v175 = sub_1ABA80580(&v220);
          v177 = v221;
          goto LABEL_34;
        case 7:
          v254 = 7;
          sub_1ABAD27CC();
          sub_1ABA7ECB8();
          swift_unknownObjectRelease();
          v175 = sub_1ABA80580(&v222);
          v177 = v223;
          goto LABEL_34;
        case 8:
          v254 = 8;
          sub_1ABAD2778();
          sub_1ABA8E5C4();
          swift_unknownObjectRelease();
          (*(v201 + 8))(v164, v200);
          goto LABEL_35;
        case 9:
          v254 = 9;
          sub_1ABAD2724();
          sub_1ABA8E5C4();
          swift_unknownObjectRelease();
          v175 = sub_1ABA80580(v225);
          v177 = v226;
          goto LABEL_34;
        case 10:
          v254 = 10;
          sub_1ABAD26D0();
          sub_1ABA7ECB8();
          swift_unknownObjectRelease();
          v175 = sub_1ABA80580(v227);
          v177 = v228;
          goto LABEL_34;
        case 11:
          v254 = 11;
          sub_1ABAD267C();
          sub_1ABA7ECB8();
          swift_unknownObjectRelease();
          v175 = sub_1ABA80580(v229);
          v177 = &v230;
          goto LABEL_34;
        case 12:
          v254 = 12;
          sub_1ABAD2628();
          sub_1ABA7ECB8();
          swift_unknownObjectRelease();
          v175 = sub_1ABA80580(&v231);
          v177 = &v232;
          goto LABEL_34;
        case 13:
          v254 = 13;
          sub_1ABAD25D4();
          sub_1ABA7ECB8();
          swift_unknownObjectRelease();
          v175 = sub_1ABA80580(&v233);
          v177 = &v234;
          goto LABEL_34;
        case 14:
          v254 = 14;
          sub_1ABAD2580();
          sub_1ABA7ECB8();
          swift_unknownObjectRelease();
          v175 = sub_1ABA80580(&v235);
          v177 = &v236;
          goto LABEL_34;
        case 15:
          v254 = 15;
          sub_1ABAD252C();
          sub_1ABA7ECB8();
          swift_unknownObjectRelease();
          v175 = sub_1ABA80580(&v237);
          v177 = &v238;
          goto LABEL_34;
        case 16:
          v254 = 16;
          sub_1ABAD24D8();
          sub_1ABA7ECB8();
          swift_unknownObjectRelease();
          v175 = sub_1ABA80580(&v239);
          v177 = &v240;
          goto LABEL_34;
        case 17:
          v254 = 17;
          sub_1ABAD2484();
          sub_1ABA7ECB8();
          swift_unknownObjectRelease();
          v175 = sub_1ABA80580(&v241);
          v177 = &v242;
          goto LABEL_34;
        case 18:
          v254 = 18;
          sub_1ABAD2430();
          sub_1ABA7ECB8();
          swift_unknownObjectRelease();
          v175 = sub_1ABA80580(&v243);
          v177 = &v244;
          goto LABEL_34;
        case 19:
          v254 = 19;
          sub_1ABAD23DC();
          sub_1ABA7ECB8();
          swift_unknownObjectRelease();
          v175 = sub_1ABA80580(&v245);
          v177 = &v246;
          goto LABEL_34;
        case 20:
          v254 = 20;
          sub_1ABAD2388();
          sub_1ABA7ECB8();
          swift_unknownObjectRelease();
          v175 = sub_1ABA80580(&v247);
          v177 = &v248;
          goto LABEL_34;
        case 21:
          v254 = 21;
          sub_1ABAD2334();
          sub_1ABA7ECB8();
          swift_unknownObjectRelease();
          v175 = sub_1ABA80580(&v249);
          v177 = &v250;
          goto LABEL_34;
        case 22:
          v254 = 22;
          sub_1ABAD22E0();
          sub_1ABA7ECB8();
          swift_unknownObjectRelease();
          v175 = sub_1ABA80580(v251);
          v177 = &v252;
          goto LABEL_34;
        case 23:
          v254 = 23;
          sub_1ABAD228C();
          sub_1ABA7ECB8();
          swift_unknownObjectRelease();
          v175 = sub_1ABA80580(v253);
          v177 = &v255;
          goto LABEL_34;
        case 24:
          v254 = 24;
          sub_1ABAD2238();
          sub_1ABA7ECB8();
          swift_unknownObjectRelease();
          v175 = sub_1ABA80580(&v256);
          v177 = &v257;
          goto LABEL_34;
        default:
          v254 = 0;
          sub_1ABAD2A18();
          sub_1ABA7ECB8();
          swift_unknownObjectRelease();
          v175 = sub_1ABA80580(v209);
          v177 = v208;
LABEL_34:
          v176(v175, *(v177 - 32));
LABEL_35:
          v185 = sub_1ABAA0E34();
          v186(v185);
          v184 = v249;
          *v174 = v188;
          break;
      }

      goto LABEL_9;
    }

    goto LABEL_7;
  }

  __break(1u);
}

uint64_t sub_1ABACE600()
{
  v2 = *v0;
  sub_1ABF25234();
  ActivityEventType.hash(into:)();
  return sub_1ABF25294();
}

uint64_t ActivityEventType.lifeEventAllowedGraphObjectType.getter()
{
  switch(*v0)
  {
    case 1:
      v1 = type metadata accessor for CustomGraphWorkingActivityEvent(0);
      sub_1ABAB5BE0();
      break;
    case 2:
      v1 = type metadata accessor for CustomGraphMeetingActivityEvent(0);
      sub_1ABA97EA8();
      break;
    case 3:
      v1 = type metadata accessor for CustomGraphEatingActivityEvent(0);
      sub_1ABA976F8();
      break;
    case 4:
      v1 = type metadata accessor for CustomGraphWatchingTVActivityEvent(0);
      sub_1ABAA4410();
      break;
    case 5:
      v1 = type metadata accessor for CustomGraphCommunicatingActivityEvent(0);
      sub_1ABA7AB30();
      break;
    case 6:
      v1 = type metadata accessor for CustomGraphShoppingActivityEvent(0);
      sub_1ABAA2174();
      break;
    case 7:
      v1 = type metadata accessor for CustomGraphMindfulnessActivityEvent(0);
      sub_1ABA96BA0();
      break;
    case 8:
      v1 = type metadata accessor for CustomGraphSleepingActivityEvent(0);
      sub_1ABAA2790();
      break;
    case 9:
      v1 = type metadata accessor for CustomGraphTravelingActivityEvent(0);
      sub_1ABAA4C68();
      break;
    case 0xA:
      v1 = type metadata accessor for CustomGraphReadingActivityEvent(0);
      sub_1ABAA249C();
      break;
    case 0xB:
      v1 = type metadata accessor for CustomGraphVacationingActivityEvent(0);
      sub_1ABAA3EF8();
      break;
    case 0xC:
      v1 = type metadata accessor for CustomGraphSocializingActivityEvent(0);
      sub_1ABAA481C();
      break;
    case 0xD:
      v1 = type metadata accessor for CustomGraphWakingUpActivityEvent(0);
      sub_1ABA968D0();
      break;
    case 0xE:
      v1 = type metadata accessor for CustomGraphGoingToBedActivityEvent(0);
      sub_1ABAA3B48();
      break;
    case 0xF:
      v1 = type metadata accessor for CustomGraphExercisingActivityEvent(0);
      sub_1ABAA1B3C();
      break;
    case 0x10:
      v1 = type metadata accessor for CustomGraphCommuteActivityEvent(0);
      sub_1ABAA3718();
      break;
    case 0x11:
      v1 = type metadata accessor for CustomGraphWalkingActivityEvent(0);
      sub_1ABAA1E30();
      break;
    case 0x12:
      v1 = type metadata accessor for CustomGraphRunningActivityEvent(0);
      sub_1ABA9569C();
      break;
    case 0x13:
      v1 = type metadata accessor for CustomGraphBicyclingActivityEvent(0);
      sub_1ABAA2B30();
      break;
    case 0x14:
      v1 = type metadata accessor for CustomGraphHikingActivityEvent(0);
      sub_1ABAB0FC4();
      break;
    case 0x15:
      v1 = type metadata accessor for CustomGraphOnThePhoneActivityEvent(0);
      sub_1ABA82690();
      break;
    case 0x16:
      v1 = type metadata accessor for CustomGraphFacetimeActivityEvent(0);
      sub_1ABA973E8();
      break;
    case 0x17:
      v1 = type metadata accessor for CustomGraphDrivingActivityEvent(0);
      sub_1ABAA2F48();
      break;
    case 0x18:
      v1 = type metadata accessor for CustomGraphBehaviorActivityEvent(0);
      sub_1ABAA5180();
      break;
    default:
      v1 = type metadata accessor for CustomGraphTransportationActivityEvent(0);
      sub_1ABAA33D4();
      break;
  }

  sub_1ABAD2154(v2, v3);
  return v1;
}

uint64_t sub_1ABACEB28()
{
  sub_1ABA8B604();
  v3 = v0;
  if (v0)
  {
    if (v0 == 1)
    {
      v4 = 0x7461636964657270;
    }

    else
    {
      v4 = 0x7463656A626FLL;
    }

    if (v3 == 1)
    {
      v5 = 0xE900000000000065;
    }

    else
    {
      v5 = 0xE600000000000000;
    }
  }

  else
  {
    v5 = 0xE700000000000000;
    v4 = v2;
  }

  if (v1)
  {
    if (v1 == 1)
    {
      v2 = 0x7461636964657270;
    }

    else
    {
      v2 = 0x7463656A626FLL;
    }

    if (v1 == 1)
    {
      v6 = 0xE900000000000065;
    }

    else
    {
      v6 = 0xE600000000000000;
    }
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  if (v4 == v2 && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1ABA8BE28();
  }

  return v8 & 1;
}

uint64_t sub_1ABACEC0C(char a1, char a2)
{
  v2 = 0x73736572646461;
  if (a1)
  {
    sub_1ABAA190C();
    if (v4 == 1)
    {
      v8 = v5;
    }

    else
    {
      v8 = v7;
    }

    if (v4 == 1)
    {
      v9 = v6;
    }

    else
    {
      v9 = (v3 - 32) | 0x8000000000000000;
    }
  }

  else
  {
    v9 = 0xE700000000000000;
    v8 = 0x73736572646461;
  }

  if (a2)
  {
    sub_1ABAA190C();
    v15 = (v14 - 32) | 0x8000000000000000;
    if (v10 == 1)
    {
      v2 = v11;
    }

    else
    {
      v2 = v13;
    }

    if (v10 == 1)
    {
      v16 = v12;
    }

    else
    {
      v16 = v15;
    }
  }

  else
  {
    v16 = 0xE700000000000000;
  }

  if (v8 == v2 && v9 == v16)
  {
    v18 = 1;
  }

  else
  {
    v18 = sub_1ABA8BE28();
  }

  return v18 & 1;
}

uint64_t sub_1ABACECCC(unsigned __int8 a1, char a2)
{
  v2 = 1701736302;
  v3 = 0xE400000000000000;
  v4 = a1;
  v5 = "staticGlobalKnowledgeIndex";
  v6 = 1701736302;
  switch(v4)
  {
    case 1:
      v6 = sub_1ABA97980();
      v3 = (v7 - 32) | 0x8000000000000000;
      break;
    case 2:
      v3 = 0xE700000000000000;
      v6 = 0x7865646E496F6ELL;
      break;
    case 3:
      v8 = 0x47746E657665;
      goto LABEL_9;
    case 4:
      v6 = 0x79676F6C6F746E6FLL;
      v3 = 0xED00007865646E49;
      break;
    case 5:
      v6 = 0x49747865746E6F63;
      v3 = 0xEC0000007865646ELL;
      break;
    case 6:
      v8 = 0x476C61636F6CLL;
LABEL_9:
      v6 = v8 & 0xFFFFFFFFFFFFLL | 0x6172000000000000;
      v3 = 0xEF7865646E496870;
      break;
    case 7:
      v3 = 0x80000001ABF7EE80;
      v6 = 0xD00000000000001ALL;
      break;
    case 8:
      v3 = 0x80000001ABF7EEA0;
      v6 = 0xD000000000000018;
      break;
    default:
      break;
  }

  v9 = 0xE400000000000000;
  switch(a2)
  {
    case 1:
      sub_1ABA8BA2C();
      v9 = (v10 - 32) | 0x8000000000000000;
      break;
    case 2:
      v9 = 0xE700000000000000;
      v2 = 0x7865646E496F6ELL;
      break;
    case 3:
      v11 = 0x47746E657665;
      goto LABEL_19;
    case 4:
      v2 = 0x79676F6C6F746E6FLL;
      v9 = 0xED00007865646E49;
      break;
    case 5:
      v2 = 0x49747865746E6F63;
      v9 = 0xEC0000007865646ELL;
      break;
    case 6:
      sub_1ABA9FCC4();
      v11 = v12 & 0xFFFF0000FFFFFFFFLL | 0x476C00000000;
LABEL_19:
      v2 = v11 & 0xFFFFFFFFFFFFLL | 0x6172000000000000;
      v9 = 0xEF7865646E496870;
      break;
    case 7:
      v9 = (v5 - 32) | 0x8000000000000000;
      v2 = 0xD00000000000001ALL;
      break;
    case 8:
      sub_1ABA8A488();
      sub_1ABA7BB94();
      v2 = v13 | 8;
      break;
    default:
      break;
  }

  if (v6 == v2 && v3 == v9)
  {
    v15 = 1;
  }

  else
  {
    v15 = sub_1ABA8BE28();
  }

  return v15 & 1;
}

uint64_t sub_1ABACEF2C(unsigned __int8 a1, char a2)
{
  v2 = 0x656475746974616CLL;
  v3 = 0xE800000000000000;
  v4 = a1;
  v5 = 0x656475746974616CLL;
  v6 = "horizontalAccuracy";
  switch(v4)
  {
    case 1:
      sub_1ABAA0868();
      break;
    case 2:
      v5 = 0x6564757469746C61;
      break;
    case 3:
      v3 = 0x80000001ABF7EEE0;
      v5 = 0xD000000000000012;
      break;
    case 4:
      v5 = sub_1ABA97980();
      v3 = (v7 - 32) | 0x8000000000000000;
      break;
    case 5:
      v3 = 0xE500000000000000;
      v5 = 0x6465657073;
      break;
    case 6:
      v3 = 0xE600000000000000;
      v5 = 0x657372756F63;
      break;
    case 7:
      v5 = 0x6D617473656D6974;
      v3 = 0xE900000000000070;
      break;
    default:
      break;
  }

  v8 = 0xE800000000000000;
  switch(a2)
  {
    case 1:
      sub_1ABAB685C();
      break;
    case 2:
      v2 += 2805;
      break;
    case 3:
      v8 = (v6 - 32) | 0x8000000000000000;
      sub_1ABA7BB94();
      v2 = v9 | 2;
      break;
    case 4:
      sub_1ABA8BA2C();
      sub_1ABA8A488();
      break;
    case 5:
      v8 = 0xE500000000000000;
      v2 = 0x6465657073;
      break;
    case 6:
      v8 = 0xE600000000000000;
      v2 = 0x657372756F63;
      break;
    case 7:
      sub_1ABAA0874();
      v8 = v10 + 11;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v8)
  {
    v12 = 1;
  }

  else
  {
    v12 = sub_1ABA8BE28();
  }

  return v12 & 1;
}

uint64_t sub_1ABACF100(char a1)
{
  if (a1)
  {
    v1 = 0xE700000000000000;
  }

  else
  {
    v1 = 0xE600000000000000;
  }

  sub_1ABAD4F08();
  if (v7)
  {
    v6 = v4;
  }

  else
  {
    v6 = v5;
  }

  v7 = v2 == v3 && v1 == v6;
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1ABA8BE28();
  }

  return v8 & 1;
}

uint64_t sub_1ABACF18C()
{
  Features.FeatureFlag.feature.getter();
  sub_1ABF24AE4();
  sub_1ABA9FF78();
  Features.FeatureFlag.feature.getter();
  sub_1ABF24AE4();
  sub_1ABAA00D8();
  v2 = v2 && v0 == v1;
  if (v2)
  {
    v3 = 1;
  }

  else
  {
    v3 = sub_1ABA8BE28();
  }

  return v3 & 1;
}

uint64_t sub_1ABACF230(char a1, char a2)
{
  v2 = (a1 & 1) == 0;
  if (a1)
  {
    v3 = 1954047348;
  }

  else
  {
    v3 = 0x65676E6172;
  }

  if (v2)
  {
    v4 = 0xE500000000000000;
  }

  else
  {
    v4 = 0xE400000000000000;
  }

  if (a2)
  {
    v5 = 1954047348;
  }

  else
  {
    v5 = 0x65676E6172;
  }

  if (a2)
  {
    v6 = 0xE400000000000000;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1ABA8BE28();
  }

  return v8 & 1;
}

uint64_t sub_1ABACF2D0(unsigned __int8 a1, char a2)
{
  v2 = 0x676E69727473;
  v3 = 0xE600000000000000;
  v4 = a1;
  v5 = 0x676E69727473;
  switch(v4)
  {
    case 1:
      v3 = 0xE700000000000000;
      v5 = 0x72656765746E69;
      break;
    case 2:
      v5 = 0x656C62756F64;
      break;
    case 3:
      v3 = 0xE800000000000000;
      v5 = sub_1ABAA5E90();
      break;
    case 4:
      v3 = 0xE400000000000000;
      v5 = 1702125924;
      break;
    default:
      break;
  }

  v6 = 0xE600000000000000;
  switch(a2)
  {
    case 1:
      v6 = 0xE700000000000000;
      v2 = 0x72656765746E69;
      break;
    case 2:
      v2 = 0x656C62756F64;
      break;
    case 3:
      v6 = 0xE800000000000000;
      sub_1ABA9A254();
      break;
    case 4:
      v6 = 0xE400000000000000;
      v2 = 1702125924;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1ABA8BE28();
  }

  return v8 & 1;
}

uint64_t sub_1ABACF41C(unsigned __int8 a1, char a2)
{
  v2 = 0x6E6F73726570;
  v3 = 0xE600000000000000;
  v4 = a1;
  v5 = 0x6E6F73726570;
  switch(v4)
  {
    case 1:
      v5 = sub_1ABA7CFCC(0x616C6572u);
      v3 = 0xEC00000070696873;
      break;
    case 2:
      v5 = 0x49746361746E6F63;
      v3 = 0xEB000000006F666ELL;
      break;
    case 3:
      v3 = 0xE500000000000000;
      v5 = 0x746E657665;
      break;
    case 4:
      v5 = 0x69746E6565726373;
      v3 = 0xEA0000000000656DLL;
      break;
    case 5:
      v3 = 0xE800000000000000;
      v5 = sub_1ABA7CFCC(0x61636F6Cu);
      break;
    default:
      break;
  }

  v6 = 0xE600000000000000;
  switch(a2)
  {
    case 1:
      sub_1ABAB57D4();
      v6 = 0xEC00000070696873;
      break;
    case 2:
      v2 = 0x49746361746E6F63;
      v6 = 0xEB000000006F666ELL;
      break;
    case 3:
      v6 = 0xE500000000000000;
      v2 = 0x746E657665;
      break;
    case 4:
      v2 = 0x69746E6565726373;
      v6 = 0xEA0000000000656DLL;
      break;
    case 5:
      v6 = 0xE800000000000000;
      sub_1ABA9FCC4();
      sub_1ABAB57D4();
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1ABA8BE28();
  }

  return v8 & 1;
}

uint64_t sub_1ABACF5C4(char a1)
{
  sub_1ABA9FAD8(a1, 0xD000000000000014);
  if (v10)
  {
    v3 = v2;
  }

  else
  {
    v3 = v1;
  }

  v4 = v3 | 0x8000000000000000;
  sub_1ABAD4F08();
  if (v10)
  {
    v9 = v8;
  }

  else
  {
    v9 = v7;
  }

  v10 = v5 == v6 && v4 == (v9 | 0x8000000000000000);
  if (v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1ABA8BE28();
  }

  return v11 & 1;
}

uint64_t sub_1ABACF664()
{
  sub_1ABA829E0();
  v3 = v2;
  switch(v4)
  {
    case 1:
      v3 = sub_1ABA8BC08();
      break;
    case 2:
      v3 = sub_1ABAD4EE8();
      break;
    case 3:
      sub_1ABA8B08C();
      sub_1ABA83EA4();
      break;
    default:
      break;
  }

  switch(v1)
  {
    case 1:
      sub_1ABAA0674();
      break;
    case 2:
      sub_1ABA9639C();
      break;
    case 3:
      sub_1ABA83E94();
      sub_1ABA8CC50();
      break;
    default:
      break;
  }

  if (v3 == v2 && v0 == 0xEA00000000007963)
  {
    v6 = 1;
  }

  else
  {
    v6 = sub_1ABA9055C();
  }

  return v6 & 1;
}

uint64_t sub_1ABACF744(unsigned __int8 a1, char a2)
{
  v2 = 0x656E69736F63;
  v3 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v4 = 0x616564696C637565;
    }

    else
    {
      v4 = 7630692;
    }

    if (v3 == 1)
    {
      v5 = 0xE90000000000006ELL;
    }

    else
    {
      v5 = 0xE300000000000000;
    }
  }

  else
  {
    v5 = 0xE600000000000000;
    v4 = 0x656E69736F63;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v2 = 0x616564696C637565;
    }

    else
    {
      v2 = 7630692;
    }

    if (a2 == 1)
    {
      v6 = 0xE90000000000006ELL;
    }

    else
    {
      v6 = 0xE300000000000000;
    }
  }

  else
  {
    v6 = 0xE600000000000000;
  }

  if (v4 == v2 && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1ABA8BE28();
  }

  return v8 & 1;
}