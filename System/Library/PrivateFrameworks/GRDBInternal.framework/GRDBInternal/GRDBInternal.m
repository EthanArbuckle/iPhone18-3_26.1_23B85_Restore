void sub_1B2111304()
{
  sub_1B2111640();
  type metadata accessor for SchedulingWatchdog();
  if (!sub_1B21114CC())
  {
    v2 = *(v0 + 40);
    MEMORY[0x1EEE9AC00]();
    sub_1B211226C();
    goto LABEL_5;
  }

  if ((sub_1B211A144(*(v0 + 16)) & 1) == 0)
  {
    v1 = *(v0 + 40);
    MEMORY[0x1EEE9AC00]();
    sub_1B211226C();

LABEL_5:
    sub_1B2112FDC();
    return;
  }

  sub_1B2112A88();
  sub_1B2252EC0();
  __break(1u);
}

uint64_t DatabaseWriter.write<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[2] = a3;
  v6[3] = a4;
  v6[4] = a5;
  v6[5] = a1;
  v6[6] = a2;
  return (*(a5 + 24))(sub_1B2112430, v6, a4, a3);
}

uint64_t sub_1B21114CC()
{
  sub_1B2111770();
  if (qword_1ED85E6E8 != -1)
  {
    sub_1B211788C();
  }

  sub_1B22529E0();
  return v1;
}

void sub_1B2111614(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a4 + 16) + 1;

  sub_1B2161FE4();
}

uint64_t sub_1B21116A4()
{

  return swift_getAssociatedTypeWitness();
}

uint64_t sub_1B21116BC()
{

  return sub_1B2252250();
}

uint64_t sub_1B211172C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);

  return sub_1B2122400(va, v6, v7);
}

uint64_t sub_1B2111758()
{

  return swift_allocObject();
}

unint64_t sub_1B2111770()
{
  result = qword_1ED85E778;
  if (!qword_1ED85E778)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ED85E778);
  }

  return result;
}

void *sub_1B2111814(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return static TableRecord.all()(&a9);
}

uint64_t sub_1B2111854(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{

  return sub_1B212C6C8(v7, a4, v8, a7, v9);
}

uint64_t sub_1B21118D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, char a52)
{

  return sub_1B213A774(&STACK[0x210], &a52);
}

uint64_t sub_1B21118E8()
{

  return sub_1B211CF8C(v0);
}

uint64_t sub_1B2111910(uint64_t a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  v3[10] = a1;
  v3[11] = a2;
  v3[7] = 0;
  v3[8] = 0;

  return sub_1B211EE68(va, (v3 + 2));
}

uint64_t sub_1B2111980()
{
}

uint64_t sub_1B21119A4()
{

  return swift_getWitnessTable();
}

__n128 sub_1B2111A68()
{
  v5 = *&STACK[0x280];
  *&STACK[0x510] = *&STACK[0x290];
  *&STACK[0x538] = v5;
  *&STACK[0x551] = *&STACK[0x260];
  v6 = *&STACK[0x230];
  *&STACK[0x579] = *&STACK[0x220];
  STACK[0x520] = STACK[0x2A0];
  STACK[0x528] = v3;
  STACK[0x530] = v2;
  STACK[0x548] = v1;
  LOBYTE(STACK[0x550]) = 0;
  STACK[0x560] = STACK[0x26F];
  STACK[0x568] = v0;
  STACK[0x570] = v4;
  LOBYTE(STACK[0x578]) = 0;
  *&STACK[0x589] = v6;
  *&STACK[0x599] = *&STACK[0x240];
  result = *&STACK[0x249];
  *&STACK[0x5A2] = *&STACK[0x249];
  return result;
}

void sub_1B2111B80()
{

  sub_1B2116B10();
}

void sub_1B2111C08()
{
  if (*(v0 + 16) > v1)
  {
    v3 = *(v0 + 16);
  }

  sub_1B212A6B4();
}

uint64_t sub_1B2111C2C()
{
  v2 = v0[2];
  result = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  return result;
}

uint64_t sub_1B2111C54()
{
  v2 = *(v0 - 208);
  *(v0 - 160) = *(v0 - 224);
  *(v0 - 144) = v2;
  v3 = *(v0 - 176);
  *(v0 - 128) = *(v0 - 192);
  *(v0 - 112) = v3;

  return sub_1B218450C(v0 - 160);
}

uint64_t sub_1B2111C78()
{
  v4 = *(v1 - 112);
  v5 = *(v1 - 96);
  v2 = *(v1 - 80);
  v6 = *(v1 - 64);
  return v0;
}

void sub_1B2111CC0()
{
  *(v1 - 96) = v0;
  v2 = *(v0 + 24);
  v3 = *(v0 + 16) + 1;
}

uint64_t sub_1B2111CE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v25 = a7;
  v27 = sub_1B2252B00();
  v13 = *(v27 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x1EEE9AC00](v27);
  v17 = &v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v24 - v18;
  sub_1B21117B4(&v24 - v18, 1, 1, a5);
  v35 = 3;
  v28 = a4;
  v29 = a5;
  v30 = a6;
  v31 = v19;
  v32 = a2;
  v33 = a3;
  v34 = a1;
  v20 = v26;
  Database.inTransaction(_:_:)(&v35, sub_1B2123404);
  if (v20)
  {
    return (*(v13 + 8))(v19, v27);
  }

  v22 = v25;
  v23 = v27;
  (*(v13 + 16))(v17, v19, v27);
  result = sub_1B2122A98(v17, 1, a5);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(*(a5 - 8) + 32))(v22, v17, a5);
    return (*(v13 + 8))(v19, v23);
  }

  return result;
}

uint64_t sub_1B2111ED8()
{

  return swift_arrayInitWithCopy();
}

void sub_1B2111EF8(uint64_t a1@<X8>)
{
  if (a1 <= *(v1 + 16))
  {
    v2 = *(v1 + 16);
  }
}

void *sub_1B2111F2C@<X0>(void *a1@<X8>)
{

  return static TableRecord.all()(a1);
}

uint64_t sub_1B2111F70@<X0>(uint64_t a1@<X8>)
{

  return sub_1B2135E94(v1, v2, a1);
}

void sub_1B2111FE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = -1 << *(a4 + 32);
  if (-v4 < 64)
  {
    v5 = ~(-1 << -v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & *(a4 + 56);
}

uint64_t sub_1B2112034()
{

  return sub_1B2252EC0();
}

void sub_1B2112060()
{

  JUMPOUT(0x1B2741EB0);
}

uint64_t sub_1B21120AC()
{

  return sub_1B2251BC0();
}

uint64_t sub_1B2112130(uint64_t a1)
{
  sub_1B2112328(a1);
  sub_1B2112328(v2);
  sub_1B2112328(v1);

  return sub_1B2112328(v3);
}

void sub_1B21121A0()
{

  JUMPOUT(0x1B2741EB0);
}

uint64_t sub_1B21121D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  v11 = a10[3];
  v10 = a10[4];
  sub_1B21139A0(a10, v11);
  v12 = *(*(v10 + 8) + 8);
  return v11;
}

void sub_1B2112208()
{

  JUMPOUT(0x1B2741F40);
}

uint64_t sub_1B211226C()
{

  return sub_1B2252A50();
}

uint64_t sub_1B211228C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  v7 = *a4;
  v8 = a4[1];

  return sub_1B2122784(a5, va);
}

uint64_t sub_1B21122BC()
{
}

uint64_t sub_1B2112328(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

void sub_1B2112358(uint64_t a1, void (*a2)(uint64_t))
{
  v4 = *(a1 + 16);
  a2(v4);
  if (v2)
  {
    v5 = sub_1B211790C();
    sub_1B21343E4(v5, v6, v7, v8, v9, a1);
  }

  else if (*(v4 + OBJC_IVAR____TtC12GRDBInternal8Database_configuration + 41) & 1) == 0 && (Database.isInsideTransaction.getter())
  {
    sub_1B2112A88();
    sub_1B2252EC0();
    __break(1u);
  }
}

void Database.inTransaction(_:_:)(char *a1, uint64_t (*a2)(void))
{
  sub_1B2111748(a1);
  Database.beginTransaction(_:)(v5);
  if (!v6)
  {
    v7 = OBJC_IVAR____TtC12GRDBInternal8Database_isInsideTransactionBlock;
    sub_1B2113BE8();
    if (a2())
    {
      v8 = 0;
    }

    else
    {
      sub_1B2115ADC();
      sub_1B21130FC();
      sub_1B2119EFC();
      *(v2 + v7) = v3;
      sub_1B213CEB0();
      Database.commit()();
      if (!v10)
      {
        goto LABEL_9;
      }

      v8 = v10;
    }

    Database.rollback()();
    if (v9)
    {
      if (v8)
      {
      }
    }

    else if (!v8)
    {
LABEL_9:
      *(v2 + v7) = v3;
      return;
    }

    swift_willThrow();
    goto LABEL_9;
  }
}

void sub_1B2112554(void *a1@<X0>, void *a2@<X8>)
{
  v2 = a1;
  v3 = a1[2];
  v38 = MEMORY[0x1E69E7CC0];
  sub_1B2114114();
  v4 = v38;
  v30 = v3;
  v31 = v2;
  if (v3)
  {
    v5 = *(v2 + 2);
    v6 = v2 + 32;
    while (v5)
    {
      v2 = &unk_1B2259360;
      sub_1B211E17C(v6, v37, &qword_1EB7A0E30, &unk_1B2259360);
      sub_1B211E17C(v37, v35, &qword_1EB7A0E30, &unk_1B2259360);
      v7 = v36;
      if (v36)
      {
        sub_1B21139A0(v35, v36);
        v8 = sub_1B2115DCC();
        v9(v8);
        v11 = v32;
        v10 = v33;
        v12 = v34;
        sub_1B2113208(v35);
      }

      else
      {
        sub_1B2122B98(v35);
        v11 = 0;
        v10 = 0;
        v12 = 4;
      }

      sub_1B2122B98(v37);
      sub_1B2117AE8();
      if (v14)
      {
        sub_1B211156C(v13);
        sub_1B2114114();
        v4 = v38;
      }

      *(v4 + 16) = v7;
      v15 = v4 + 24 * &unk_1B2259360;
      *(v15 + 32) = v11;
      *(v15 + 40) = v10;
      *(v15 + 48) = v12;
      v6 += 40;
      --v5;
      if (!--v3)
      {
        goto LABEL_10;
      }
    }
  }

  else
  {
LABEL_10:
    v17 = v30;
    v16 = v31;
    for (i = &v31[5 * v30 + 4]; ; i += 40)
    {
      v19 = v16[2];
      if (v17 == v19)
      {

        v28 = MEMORY[0x1E69E7CC8];
        *a2 = v4;
        a2[1] = v28;
        return;
      }

      if (v17 >= v19)
      {
        break;
      }

      sub_1B211E17C(i, v37, &qword_1EB7A0E30, &unk_1B2259360);
      sub_1B211E17C(v37, v35, &qword_1EB7A0E30, &unk_1B2259360);
      v20 = v36;
      if (v36)
      {
        sub_1B21139A0(v35, v36);
        v21 = sub_1B2115DCC();
        v22(v21);
        v23 = v32;
        v24 = v33;
        v25 = v34;
        sub_1B2113208(v35);
      }

      else
      {
        sub_1B2122B98(v35);
        v23 = 0;
        v24 = 0;
        v25 = 4;
      }

      sub_1B2122B98(v37);
      sub_1B2117AE8();
      if (v14)
      {
        sub_1B211156C(v26);
        sub_1B2114114();
        v4 = v38;
      }

      *(v4 + 16) = v20;
      v27 = v4 + 24 * v2;
      *(v27 + 32) = v23;
      *(v27 + 40) = v24;
      *(v27 + 48) = v25;
      ++v17;
      v16 = v31;
    }

    __break(1u);
  }

  __break(1u);
}

size_t sub_1B21127CC(void *a1)
{
  result = j__malloc_size(a1);
  a1[2] = v1;
  a1[3] = 2 * ((result - 32) / v2);
  return result;
}

void *sub_1B2112878(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t __dst)
{

  return memcpy(&__dst, &STACK[0x220], 0xB8uLL);
}

uint64_t sub_1B2112894(uint64_t a1, uint64_t a2, ...)
{
  va_start(va, a2);

  return sub_1B212DB30(a1, v3, v2, va);
}

void *sub_1B21128B8(uint64_t a1)
{

  return FetchRequest.databaseRegion(_:)(v2, v1, a1, v3);
}

void sub_1B21128F8(uint64_t a1@<X8>)
{
  *a1 = v1;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
}

uint64_t sub_1B2112920()
{

  return sub_1B2252560();
}

void *sub_1B2112948()
{
  v2 = (v0 + 24 * v1);
  v3 = v2[4];
  v2 += 4;
  v5 = v2[1];
  v4 = v2[2];
  return v2 + 3;
}

uint64_t sub_1B2112968()
{

  return swift_getWitnessTable();
}

uint64_t sub_1B2112A08()
{

  return swift_beginAccess();
}

uint64_t sub_1B2112A24()
{

  return swift_once();
}

uint64_t sub_1B2112A54(uint64_t a1)
{
  v3 = v1[6];
  sub_1B21139A0(v1 + 2, v1[5]);
  v4 = *(v3 + 88);
  return a1;
}

unint64_t sub_1B2112AB0(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(a5 + 8 * (result >> 6) + 64) |= 1 << result;
  v5 = *(a5 + 48);
  return result;
}

void sub_1B2112AE8()
{

  JUMPOUT(0x1B2743C50);
}

void *sub_1B2112B10()
{

  return sub_1B216EC78((v1 > 1), v0, 1);
}

uint64_t sub_1B2112B34@<X0>(uint64_t a1@<X8>)
{

  return sub_1B21DAEF8(v1, v2, v3, a1, 1);
}

void sub_1B2112B5C()
{

  JUMPOUT(0x1B2741EB0);
}

uint64_t sub_1B2112B88()
{
  v1 = *(v0 - 424);
  sub_1B2112F4C(*(v0 - 312));
  v2 = *(v0 - 392);
  sub_1B2112F4C(*(v0 - 384));
  v3 = *(v0 - 304);
  sub_1B2112F4C(*(v0 - 296));
  v4 = *(v0 - 408);
  sub_1B2112F4C(*(v0 - 416));
  v5 = *(v0 - 400);
  v6 = *(v0 - 440);

  return sub_1B2112F4C(v5);
}

uint64_t sub_1B2112C08()
{
  result = v0 - 192;
  v2 = *(v0 - 200);
  return result;
}

void sub_1B2112C8C()
{

  sub_1B214400C();
}

uint64_t sub_1B2112CB0()
{
  *v0 = 1;
  *(v0 + 8) = 0;
  *(v0 + 16) = 0;
  *(v0 + 23) = 0;
  *(v0 + 32) = v2;
  *(v0 + 40) = 0;
  *(v0 + 48) = 0;
  *(v0 + 56) = 0;
  *(v0 + 64) = 2;
  *(v0 + 72) = 0;
  *(v0 + 80) = 0;
  *(v0 + 88) = -1;
  *(v0 + 96) = 5;
  v4 = v0 + *(v1 + 64);

  return sub_1B2252110();
}

void sub_1B2112D00()
{

  JUMPOUT(0x1B2741EB0);
}

uint64_t sub_1B2112D24()
{

  return swift_willThrow();
}

__n128 *sub_1B2112D48(__n128 *result, __n128 a2)
{
  result[1] = a2;
  result[3].n128_u64[1] = v4;
  result[4].n128_u64[0] = v3;
  result[2].n128_u64[0] = v2;
  result[6].n128_u64[0] = v4;
  result[6].n128_u64[1] = v3;
  return result;
}

void *sub_1B2112D68(__n128 *a1, __n128 a2)
{
  a1[1] = a2;
  v3 = v2[4];
  result = sub_1B21139A0(v2, v2[3]);
  v5 = *(*(v3 + 8) + 8);
  return result;
}

void *sub_1B2112DCC()
{

  return memcpy(&STACK[0x3D8], &STACK[0x6C8], 0xB8uLL);
}

uint64_t sub_1B2112DE8(uint64_t a1, uint64_t a2)
{
  *(a2 + 24) = v3;
  *(a2 + 32) = v2;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;

  return swift_willThrow();
}

uint64_t sub_1B2112E08()
{

  return swift_beginAccess();
}

__n128 sub_1B2112E34()
{
  *(v2 - 112) = v0;
  *(v2 - 111) = *(v1 + 81);
  result = *(v1 + 96);
  *(v2 - 96) = result;
  return result;
}

uint64_t sub_1B2112E4C(unint64_t *a1)
{

  return sub_1B211AB74(a1, v1, v2);
}

uint64_t sub_1B2112F20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, __int128 a15, uint64_t a16, __int128 a17, __int128 a18, char a19)
{
  *(&a15 + 1) = a1;
  a16 = a2;
  a17 = 0u;
  a18 = 0u;
  a19 = 0;

  return sub_1B2202FD4(&a15);
}

uint64_t sub_1B2112F4C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1B2112F5C()
{

  return swift_allocObject();
}

uint64_t sub_1B2112F84()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1;
}

uint64_t sub_1B2112FB8()
{
  v2 = *(v0 + 16);

  return swift_unownedRetainStrong();
}

uint64_t sub_1B2113000()
{
  v2 = STACK[0x250];
  v3 = STACK[0x258];
  v4 = *(v0 - 72);

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t sub_1B2113040()
{

  return sub_1B2252E70();
}

void sub_1B211306C()
{

  JUMPOUT(0x1B2741EB0);
}

uint64_t sub_1B21130B8()
{

  return swift_getAssociatedTypeWitness();
}

void *sub_1B2113118()
{

  return memcpy((v0 + 16), (v0 + 184), 0xA2uLL);
}

void sub_1B2113134()
{

  JUMPOUT(0x1B2741EB0);
}

uint64_t sub_1B21131B4()
{

  return sub_1B22524A0();
}

void sub_1B21131DC(uint64_t a1@<X8>)
{
  v2 = (v1 + a1);
  *v2 = 0;
  v2[1] = 0;
}

void sub_1B21131E8(uint64_t a1@<X8>)
{
  v2 = *(v1 + 56);
  v3 = (*(v1 + 48) + 16 * a1);
  v4 = *v3;
  v5 = v3[1];
}

uint64_t sub_1B2113208(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_1B2113254@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = static Int.fromDatabaseValue(_:)(a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

void sub_1B2113284()
{
  sub_1B2111640();
  v1 = v0;
  v3 = v2;
  v27[1] = v4;
  v28 = v5;
  v7 = v6;
  v27[0] = v8;
  v9 = sub_1B2252B00();
  sub_1B211280C(v9);
  v11 = v10;
  v13 = *(v12 + 64);
  sub_1B21117FC();
  MEMORY[0x1EEE9AC00](v14);
  v16 = v27 - v15;
  v18 = *v7;
  v17 = v7[1];
  v19 = *(v7 + 16);
  v32[8] = v18;
  v32[9] = v17;
  v33 = v19;
  v20 = sub_1B211A314();
  v21(v20, v3, v1);
  if (sub_1B2122A98(v16, 1, v3) == 1)
  {
    v22 = (*(v11 + 8))(v16, v9);
    v28(v32, v22);
    v29 = v18;
    v30 = v17;
    v31 = v19;
    sub_1B21A2FC0();
    swift_allocError();
    sub_1B211D7D8();
    sub_1B2183238(v3, v23, v24, v25);
    sub_1B2111C54();
    swift_willThrow();
  }

  else
  {
    sub_1B2111808(v3);
    (*(v26 + 32))(v27[0], v16, v3);
  }

  sub_1B2112FDC();
}

uint64_t static Int.fromDatabaseValue(_:)(uint64_t *a1)
{
  result = *a1;
  v3 = *(a1 + 16);
  if (v3)
  {
    if (v3 != 1 || *&result < -9.22337204e18 || *&result >= 9.22337204e18)
    {
      *&result = COERCE_DOUBLE(sub_1B2111FA8());
      return result;
    }

    if ((~result & 0x7FF0000000000000) != 0)
    {
      if (*&result > -9.22337204e18)
      {
        *&result = COERCE_DOUBLE(sub_1B2122188(*&result));
        return result;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }

  return result;
}

void sub_1B211349C()
{
  sub_1B2111640();
  v5 = v1;
  v7 = v6;
  v8 = v6[8];
  if (!v8)
  {
    v12 = v7[5];
    v13 = v7[6];
    v21 = v2;
    v22 = v0;
    v28 = v4;
    v19 = v3;
    sub_1B21139A0(v7 + 2, v12);
    v14 = (*(v13 + 48))(&v25, v5, v12, v13);
    v20 = &v18;
    v16 = v25;
    v15 = v26;
    v17 = v27;
    v23[0] = v25;
    v23[1] = v26;
    v24 = v27;
    MEMORY[0x1EEE9AC00](v14);
    v28(v23, v19);
    sub_1B2113A44(v16, v15, v17);
    goto LABEL_6;
  }

  if (v1 < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (v1 <= 0x7FFFFFFF)
  {
    v9 = MEMORY[0x1EEE9AC00](v8);
    v11(v9, v5, v10);
LABEL_6:
    sub_1B2112FDC();
    return;
  }

  __break(1u);
}

void sub_1B2113624(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, __int128 a11, uint64_t a12, uint64_t a13, unint64_t a14, int a15, int a16, __int128 __dst, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
{
  sub_1B2122614();
  a30 = v31;
  a31 = v32;
  sub_1B211D530();
  a19 = *MEMORY[0x1E69E9840];
  v34 = sqlite3_column_count(v33);
  if ((v34 & 0x80000000) != 0)
  {
    __break(1u);
LABEL_23:
    __break(1u);
  }

  if (v34)
  {
    v35 = v34;
    a18 = MEMORY[0x1E69E7CC0];
    sub_1B2114114();
    v36 = 0;
    v37 = a18;
    while (2)
    {
      v38 = sub_1B224B29C();
      v40 = 0.0;
      v41 = 0;
      v42 = 4;
      switch(sqlite3_column_type(v38, v39))
      {
        case 1:
          v43 = sub_1B224B29C();
          v40 = COERCE_DOUBLE(sqlite3_column_int64(v43, v44));
          v41 = 0;
          v42 = 0;
          goto LABEL_18;
        case 2:
          v57 = sub_1B224B29C();
          v41 = 0;
          v40 = sqlite3_column_double(v57, v58);
          v42 = 1;
          goto LABEL_18;
        case 3:
          v59 = sub_1B224B29C();
          if (!sqlite3_column_text(v59, v60))
          {
            goto LABEL_23;
          }

          v40 = COERCE_DOUBLE(sub_1B2252400());
          v41 = v61;
          v42 = 2;
LABEL_18:
          a18 = v37;
          v62 = *(v37 + 16);
          if (v62 >= *(v37 + 24) >> 1)
          {
            sub_1B2126410();
            sub_1B2114114();
            v37 = a18;
          }

          ++v36;
          *(v37 + 16) = v62 + 1;
          v63 = v37 + 24 * v62;
          *(v63 + 32) = v40;
          *(v63 + 40) = v41;
          *(v63 + 48) = v42;
          if (v35 == v36)
          {
            break;
          }

          continue;
        case 4:
          v45 = sub_1B224B29C();
          v47 = sqlite3_column_blob(v45, v46);
          if (v47 && (v48 = v47, v49 = sub_1B224B29C(), (v51 = sqlite3_column_bytes(v49, v50)) != 0))
          {
            v52 = v51;
            if (v51 < 15)
            {
              *(&__dst + 6) = 0;
              *&__dst = 0;
              BYTE14(__dst) = v51;
              memcpy(&__dst, v48, v51);
              v40 = *&__dst;
              v41 = a14 & 0xF00000000000000 | DWORD2(__dst) | ((WORD6(__dst) | (BYTE14(__dst) << 16)) << 32);
              v42 = 3;
              a14 = v41;
            }

            else
            {
              v53 = sub_1B2251BF0();
              v54 = *(v53 + 48);
              v55 = *(v53 + 52);
              swift_allocObject();
              if (v52 == 0x7FFFFFFF)
              {
                v56 = sub_1B2251BB0();
                sub_1B2251DB0();
                v40 = COERCE_DOUBLE(swift_allocObject());
                *(*&v40 + 16) = xmmword_1B226BA10;
                v41 = v56 | 0x8000000000000000;
              }

              else
              {
                *&v40 = v52 << 32;
                v41 = sub_1B2251BB0() | 0x4000000000000000;
              }

              v42 = 3;
            }
          }

          else
          {
            v40 = 0.0;
            v42 = 3;
            v41 = 0xC000000000000000;
          }

          goto LABEL_18;
        case 5:
          goto LABEL_18;
        default:
          *&__dst = 0;
          *(&__dst + 1) = 0xE000000000000000;
          sub_1B2252CD0();

          *&__dst = 0xD00000000000001FLL;
          *(&__dst + 1) = 0x80000001B226D040;
          v65 = sub_1B2252FD0();
          MEMORY[0x1B2741EB0](v65);

          sub_1B2252EC0();
          __break(1u);
          JUMPOUT(0x1B2113964);
      }

      break;
    }
  }

  v64 = *MEMORY[0x1E69E9840];
  sub_1B2138CAC();
  sub_1B2115CEC();
}

void *sub_1B21139A0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_1B21139E4@<X0>(unint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(a2 + 16) > result)
  {
    v3 = a2 + 24 * result;
    v4 = *(v3 + 32);
    v5 = *(v3 + 40);
    *a3 = v4;
    *(a3 + 8) = v5;
    v6 = *(v3 + 48);
    *(a3 + 16) = v6;
    return sub_1B2113A20(v4, v5, v6);
  }

  __break(1u);
  return result;
}

uint64_t sub_1B2113A20(uint64_t result, unint64_t a2, char a3)
{
  if (a3 == 3)
  {
    return sub_1B2126638(result, a2);
  }

  if (a3 == 2)
  {
  }

  return result;
}

uint64_t sub_1B2113A44(uint64_t result, unint64_t a2, char a3)
{
  if (a3 == 3)
  {
    return sub_1B21267A8(result, a2);
  }

  if (a3 == 2)
  {
  }

  return result;
}

Swift::Void __swiftcall DatabasePool.releaseMemory()()
{
  v1 = v0;
  v2 = *(v0 + 16);
  sub_1B2113C20(sub_1B2113FCC, 0);
  if (*(v1 + 24))
  {
    v3 = *(v1 + 24);

    sub_1B2120064(sub_1B212044C, v1);
  }
}

uint64_t sub_1B2113B10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{

  return sub_1B21619D8(a5, a6);
}

uint64_t sub_1B2113B5C@<X0>(uint64_t a1@<X8>)
{
  *v1 = v2;
  v1[1] = v4;
  v1[2] = ~v5;
  v1[3] = a1;
  v1[4] = v6;
  return v3;
}

uint64_t sub_1B2113B80()
{

  return sub_1B2181728(&STACK[0x350], &STACK[0x278]);
}

void sub_1B2113BA4()
{

  JUMPOUT(0x1B2741EB0);
}

uint64_t sub_1B2113C20(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  type metadata accessor for SchedulingWatchdog();
  v6 = sub_1B21114CC();
  if (v6)
  {
    v7 = v6;
    if (sub_1B211A144(*(v2 + 16)))
    {
      sub_1B2116728();
      sub_1B2112A88();
      result = sub_1B21184AC();
      __break(1u);
    }

    else
    {
      v8 = *(v2 + 40);
      MEMORY[0x1EEE9AC00]();
      sub_1B2111B5C();
      *(v9 - 32) = v7;
      *(v9 - 24) = v3;
      *(v9 - 16) = a1;
      *(v9 - 8) = a2;
      sub_1B211810C();
    }
  }

  else
  {
    v11 = *(v2 + 40);
    MEMORY[0x1EEE9AC00]();
    sub_1B2111B5C();
    *(v12 - 32) = v3;
    *(v12 - 24) = a1;
    *(v12 - 16) = a2;
    return sub_1B211810C();
  }

  return result;
}

void sub_1B2113D70(uint64_t a1, void (*a2)(uint64_t))
{
  v4 = *(a1 + 16);
  a2(v4);
  if (v2)
  {
    sub_1B21343E4(v4, "/Library/Caches/com.apple.xbs/Sources/GRDB/GRDB/Core/SerializedDatabase.swift", 77, 2, 108, a1);
  }

  else if (*(v4 + OBJC_IVAR____TtC12GRDBInternal8Database_configuration + 41) & 1) == 0 && (Database.isInsideTransaction.getter())
  {
    sub_1B2252EC0();
    __break(1u);
  }
}

Swift::Void __swiftcall Database.releaseMemory()()
{
  sub_1B21233F8();
  type metadata accessor for SchedulingWatchdog();
  v1 = sub_1B2113B28();
  if (sub_1B2117B40(v1))
  {
    sub_1B21115FC();
    swift_beginAccess();
    sqlite3_db_release_memory(*(v0 + 16));
    v2 = (v0 + OBJC_IVAR____TtC12GRDBInternal8Database_schemaCache);
    sub_1B2117F5C();
    v3 = *v2;
    *v2 = 0;

    sub_1B21619D8(&qword_1EB7A21A8, &unk_1B226AE60);
    sub_1B22521C0();
    swift_endAccess();
    v4 = sub_1B211FF34(&OBJC_IVAR____TtC12GRDBInternal8Database____lazy_storage___internalStatementCache);
    sub_1B21140E4(v4, v5);

    type metadata accessor for Statement();
    sub_1B2112F9C();
    v6 = sub_1B2252190();
    v7 = sub_1B211499C(v6, OBJC_IVAR____TtC12GRDBInternal8Database____lazy_storage___internalStatementCache);
    sub_1B2120024(v7, v8);
    v9 = sub_1B211FF34(&OBJC_IVAR____TtC12GRDBInternal8Database____lazy_storage___publicStatementCache);
    sub_1B21140E4(v9, v10);

    sub_1B2112F9C();
    v11 = sub_1B2252190();
    v12 = sub_1B211499C(v11, OBJC_IVAR____TtC12GRDBInternal8Database____lazy_storage___publicStatementCache);
    sub_1B2120024(v12, v13);
  }

  else
  {
    sub_1B2111608();
    sub_1B2112ECC();
    sub_1B2252EC0();
    __break(1u);
  }
}

uint64_t sub_1B2114034()
{

  return swift_beginAccess();
}

uint64_t sub_1B2114050()
{

  return swift_beginAccess();
}

__n128 sub_1B211409C()
{
  result = *(v1 - 112);
  v3 = *(v1 - 96);
  *(v1 - 72) = v0;
  v4 = *(v0 + 24);
  v5 = *(v0 + 16) + 1;
  return result;
}

void sub_1B2114114()
{
  v1 = *v0;
  sub_1B2117A28();
  sub_1B2114DE0();
  *v0 = v2;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> Database.execute(sql:arguments:)(Swift::String sql, GRDBInternal::StatementArguments arguments)
{
  sub_1B2114908(sql._countAndFlagsBits, sql._object, arguments.values._rawValue);
  sub_1B21619D8(&qword_1EB7A0F70, &qword_1B2257590);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B22546B0;
  __src[0] = v3;
  __src[1] = v2;
  __src[2] = v4;
  __src[3] = v5;
  sub_1B2114CC4(__src);
  memcpy((inited + 32), __src, 0xB8uLL);
  v8 = inited;

  Database.execute(literal:)(&v8);
}

__n128 sub_1B2114258(__n128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a9)
{
  result = a9;
  a1[1] = a9;
  return result;
}

uint64_t sub_1B21142AC()
{

  return swift_allocObject();
}

void *sub_1B21142EC(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char __src)
{

  return memcpy(&a9, &__src, 0xA2uLL);
}

void sub_1B211431C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = -1 << *(a4 + 32);
  if (-v4 < 64)
  {
    v5 = ~(-1 << -v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & *(a4 + 64);
}

void *sub_1B2114348()
{
  v2 = STACK[0x398];
  v3 = STACK[0x3A0];

  return memcpy(&STACK[0x458], (v0 + 16), 0xABuLL);
}

void *sub_1B21143C8()
{

  return memcpy((v0 + 2088), (v0 + 3536), 0xA3uLL);
}

id sub_1B21143F8(uint64_t a1, const char *a2)
{

  return [v2 a2];
}

uint64_t sub_1B2114434()
{
  result = v0 - 112;
  v2 = *(v0 - 120);
  return result;
}

uint64_t sub_1B21144D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return sub_1B211B048(&a9);
}

void _s12GRDBInternal15FetchableRecordPAAE28databaseDateDecodingStrategyAA08DatabaseefG0OvgZ_0(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 2;
}

void *sub_1B21145E0()
{

  return memcpy(&STACK[0x5E8], &STACK[0x350], 0xD2uLL);
}

uint64_t sub_1B2114600()
{
  v4 = *(v0 - 1);
  v5 = *v0;
  v1[5] = v0;
  v1[376] = v4;
  v1[377] = v5;
  v1[378] = v2;

  return sub_1B213CBE4((v1 + 376));
}

uint64_t sub_1B211463C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  a1[7] = a2;
  a1[8] = v2;
  a1[4] = v4;

  return sub_1B22522D0();
}

void *sub_1B2114698(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  v8 = *a3;
  v7 = a3[1];

  return static TableRecord.all()(va);
}

uint64_t sub_1B21146E4()
{

  return swift_beginAccess();
}

uint64_t sub_1B2114704(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return sub_1B211EE68(v9 + 24, &a9);
}

void *sub_1B2114784(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56)
{
  v58 = (*(a56 + 56) + 176 * v56);

  return memcpy(&STACK[0x228], v58, 0xABuLL);
}

void sub_1B21147B0(__n128 a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *v7 = v9;
  *(v7 + 8) = v4;
  *(v7 + 16) = a4;
  *(v7 + 24) = v6;
  *(v7 + 32) = v5;
  *(v7 + 40) = a1;
  *(v7 + 56) = v8 & 1;
}

uint64_t sub_1B2114830(uint64_t a1)
{
  v3 = (*(v1 + 56) + 16 * a1);
  v4 = *v3;
  v5 = v3[1];
}

uint64_t sub_1B211488C()
{
  *v0 = 0;
  v0[1] = 0;

  return swift_allocObject();
}

uint64_t sub_1B21148B4()
{
}

void sub_1B21148E8()
{
  v3 = *(v0 + 32);
  *(v3 + 16) = v2 + 1;
  v4 = (v3 + 40 * v2);
  v4[4] = v1;
  v4[5] = 0;
  v4[6] = 0;
  v4[7] = 0;
}

uint64_t sub_1B211492C()
{

  return sub_1B2252EC0();
}

uint64_t sub_1B211494C(uint64_t a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);

  return RangeReplaceableCollection.init<A>(_:)(v3, va);
}

uint64_t sub_1B211499C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = (v2 + a2);
  v6 = *(v2 + a2);
  v5 = v4[1];
  *v4 = v3;
  v4[1] = a1;
  return v6;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> Database.beginTransaction(_:)(GRDBInternal::Database::TransactionKind_optional a1)
{
  sub_1B212425C();
  v3 = *v2;
  if (v3 == 3)
  {
    if (*(v1 + OBJC_IVAR____TtC12GRDBInternal8Database__readOnlyDepth) > 0 || (*(v1 + OBJC_IVAR____TtC12GRDBInternal8Database_configuration + 1) & 1) != 0)
    {
      v3 = 0;
    }

    else
    {
      v3 = *(v1 + OBJC_IVAR____TtC12GRDBInternal8Database_configuration + 40);
    }
  }

  sub_1B2252CD0();

  v4 = 0x54414944454D4D49;
  if (v3 != 1)
  {
    v4 = 0x564953554C435845;
  }

  if (v3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x4445525245464544;
  }

  if (v3)
  {
    v6 = 0xE900000000000045;
  }

  else
  {
    v6 = 0xE800000000000000;
  }

  MEMORY[0x1B2741EB0](v5, v6);

  MEMORY[0x1B2741EB0](0x4341534E41525420, 0xEC0000004E4F4954);
  sub_1B2111BFC();
  Database.execute(sql:arguments:)(v7, v8);
}

void Database.allStatements(literal:)(uint64_t *a1)
{
  v4 = *a1;
  type metadata accessor for StatementArgumentsSink();
  swift_allocObject();
  sub_1B2114D98(0);
  sub_1B2116B4C();
  sub_1B21159FC();
  type metadata accessor for SQLGenerationContext();
  swift_allocObject();

  v6 = sub_1B2117868(v5);
  *&v10 = v4;
  sub_1B2119120(v6);
  if (!v1)
  {
    sub_1B21159FC();
    sub_1B211B048(&v10);
    if (*(v10 + 16))
    {
    }

    else
    {
      v7 = *(*(&v10 + 1) + 16);

      if (!v7)
      {
        v8 = 0uLL;
        goto LABEL_7;
      }
    }

    sub_1B211B048(&v10);
    v8 = v10;
LABEL_7:
    v10 = v8;
    type metadata accessor for SQLStatementCursor();
    swift_allocObject();

    sub_1B211B748(v9, v2, v3, &v10, 0);

    goto LABEL_8;
  }

LABEL_8:
  sub_1B2117E1C();
}

void *sub_1B2114CC4(void *result)
{
  v1 = result[13] & 1;
  v2 = result[20] & 0xE000000000FFC1FFLL;
  result[8] &= 1uLL;
  result[13] = v1;
  result[20] = v2;
  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> Database.execute(literal:)(GRDBInternal::SQL literal)
{
  v4[0] = *literal.elements._rawValue;
  Database.allStatements(literal:)(v4);
  if (!v1)
  {
    while (sub_1B211B804())
    {
      v4[0] = 0;
      v4[1] = 0;
      v2.value.values._rawValue = v4;
      Statement.execute(arguments:)(v2);
      if (v3)
      {

        break;
      }
    }
  }
}

uint64_t sub_1B2114D98(char a1)
{
  sub_1B2112554(MEMORY[0x1E69E7CC0], &v4);
  *(v1 + 16) = v4;
  *(v1 + 32) = a1;
  return v1;
}

void sub_1B2114DE0()
{
  sub_1B2111830();
  if ((v5 & 1) == 0)
  {
    v6 = v4;
    goto LABEL_7;
  }

  sub_1B2115F84();
  if (v7 == v8)
  {
LABEL_7:
    sub_1B2111EF8(v6);
    if (v3)
    {
      sub_1B2113B10(v9, v10, v11, v12, v13, v14);
      v15 = sub_1B21169D8();
      v16 = j__malloc_size(v15);
      sub_1B2117B94(v16);
      if (v2)
      {
LABEL_9:
        v17 = sub_1B2117B84();
        v1(v17);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v2)
    {
      goto LABEL_9;
    }

    sub_1B2115B30();
    goto LABEL_12;
  }

  sub_1B212CD14();
  if (!v7)
  {
    sub_1B2115544();
    goto LABEL_7;
  }

  __break(1u);
}

uint64_t sub_1B2114F0C()
{
  *(v2 - 64) = *(v2 - 56);
  v3 = *(v0 + 24);
  return v1;
}

uint64_t sub_1B2114F3C()
{

  return sub_1B2252EC0();
}

uint64_t sub_1B2114F84()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v6 = *(v0 + 48);
  v7 = *(v0 + 56);
  v8 = *(v0 + 64);
  v9 = *(v0 + 72);
  v18 = *(v0 + 176) | (*(v0 + 178) << 16);
  v16 = *(v0 + 160);
  v17 = *(v0 + 168);
  v14 = *(v0 + 128);
  v15 = *(v0 + 144);
  v12 = *(v0 + 96);
  v13 = *(v0 + 112);
  v11 = *(v0 + 80);

  return sub_1B213B9FC(v2, v3, v4, v5, v6, v7, v8, v9, v11, *(&v11 + 1), v12, *(&v12 + 1), v13, *(&v13 + 1), v14, *(&v14 + 1), v15, *(&v15 + 1), v16, v17, v18);
}

void sub_1B2114FE8()
{
  *(v4 + 16) = v0;
  v5 = v4 + 16 * v3;
  *(v5 + 32) = v1;
  *(v5 + 40) = v2;
}

uint64_t sub_1B2114FF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = a1 & 0xFFFFFFFFFFFFLL | 0xD000000000000000;

  return DatabaseFunction.init(_:argumentCount:pure:function:)(v6, a2, a3, 1, a5, 0);
}

uint64_t sub_1B2115014(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{

  return sub_1B21443FC(&a14, &a9);
}

uint64_t sub_1B211505C()
{
  *(v0 + 16) = v3;
  *v1 = v0;
  return v2;
}

uint64_t sub_1B2115074(uint64_t a1, uint64_t a2)
{
  v3 = v2[1];
  v5 = *v2;
  return a2;
}

uint64_t sub_1B211508C()
{

  return swift_getWitnessTable();
}

void *sub_1B21151D4()
{

  return sub_1B216EC78(0, v0, 0);
}

uint64_t sub_1B21151F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{

  return sub_1B2142C9C(a10, v10, v12, v11, 1);
}

uint64_t sub_1B2115240()
{

  return sub_1B2112F4C(sub_1B21E7B74);
}

void *sub_1B2115268(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, char __dst)
{

  return memcpy(&__dst, &a9, 0xA8uLL);
}

uint64_t sub_1B21152B4()
{

  return sub_1B2252EC0();
}

void sub_1B21152E0()
{

  JUMPOUT(0x1B2741EB0);
}

uint64_t sub_1B21152FC()
{

  return swift_allocError();
}

uint64_t sub_1B2115314()
{
  *(v2 - 96) = v1;
  *(v2 - 88) = v0;
  return v2 - 96;
}

uint64_t sub_1B2115370(uint64_t a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v7 = va_arg(va1, void);
  v9 = va_arg(va1, void);

  return MEMORY[0x1EEE688A0](va, va1, v2, v3, v4 & 1, a1);
}

uint64_t sub_1B211539C()
{

  return swift_beginAccess();
}

void *sub_1B21153C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{

  return sub_1B213BBD8(v31, &a31);
}

uint64_t sub_1B21153E4()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);

  return swift_getObjectType();
}

sqlite3 *sub_1B2115410(uint64_t a1)
{
  v2 = *(a1 + 16);

  return Database.isInsideTransaction.getter();
}

uint64_t sub_1B2115454(uint64_t a1)
{
  v2 = v1[1];
  v3 = v1[2];
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  return *v1;
}

uint64_t sub_1B2115490(uint64_t a1, unint64_t a2)
{
  sub_1B2113A20(a1, a2, 3);
  sub_1B2113A20(v4, v3, 3);

  return sub_1B2113A20(v2, v5, 3);
}

uint64_t sub_1B21154F0()
{

  return swift_allocObject();
}

void sub_1B2115554()
{

  sub_1B2139304();
}

uint64_t sub_1B21155BC()
{

  return swift_once();
}

void sub_1B2115604()
{
  v2 = *(v1 - 200);
  v3 = *(v1 - 192);
  v4 = *(v0 + 24);
  v5 = *(v0 + 16) + 1;
}

void _sSd12GRDBInternalE13databaseValueAA08DatabaseC0Vvg_0(uint64_t a1@<X8>, double a2@<D0>)
{
  *a1 = a2;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
}

uint64_t sub_1B2115698()
{

  return swift_getWitnessTable();
}

void sub_1B211575C()
{
  v2 = *(*(v0 + 32) + 16);

  sub_1B214ACA8();
}

uint64_t sub_1B21157D8@<X0>(uint64_t a1@<X8>)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *(a1 + 33);
  v7 = *(a1 + 34);
  *v1 = *a1;
  *(v1 + 8) = v3;
  *(v1 + 16) = v4;
  *(v1 + 24) = v5;
  *(v1 + 32) = *(a1 + 32);
  *(v1 + 33) = v6;
  *(v1 + 34) = v7;
}

void sub_1B2115864()
{

  JUMPOUT(0x1B2741EB0);
}

void *sub_1B211589C(void *a1)
{

  return memcpy(a1, &STACK[0x2B0], 0xA2uLL);
}

void sub_1B21158F8()
{

  JUMPOUT(0x1B2741EB0);
}

uint64_t sub_1B211591C(uint64_t a1)
{
  v2[4] = a1;
  *v2 = v1;
  return v1;
}

void *sub_1B211592C(void *a1, uint64_t a2)
{
  result = sub_1B21139A0(a1, a2);
  v4 = *(*(v2 + 8) + 8);
  return result;
}

id sub_1B211594C@<X0>(uint64_t a1@<X8>)
{
  v4 = *(*(v2 + 56) + ((a1 << 9) | (8 * __clz(__rbit64(v1)))));

  return v4;
}

uint64_t sub_1B211597C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_1B2112F4C(v15);
  sub_1B2112F4C(a11);
  sub_1B2112F4C(a12);
  sub_1B2112F4C(a14);

  return sub_1B2112F4C(v14);
}

uint64_t sub_1B21159D0()
{

  return swift_beginAccess();
}

void *sub_1B2115A08(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char __src, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, char __dst)
{

  return memcpy(&__dst, &__src, 0xA3uLL);
}

uint64_t sub_1B2115A74()
{

  return sub_1B2252EC0();
}

uint64_t sub_1B2115AA0(uint64_t a1)
{
  v2 = *(a1 + 16);

  return sqlite3_stmt_busy(v2);
}

uint64_t sub_1B2115B30()
{

  return swift_arrayInitWithCopy();
}

uint64_t sub_1B2115B50@<X0>(int *a1@<X8>)
{
  v2 = a1[1];
  v4 = a1 + *a1;

  return swift_task_alloc();
}

uint64_t sub_1B2115B88()
{
  *(v0 - 200) = 0;
  *(v0 - 192) = 0xE000000000000000;

  return sub_1B2252CD0();
}

uint64_t sub_1B2115C0C(uint64_t a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);

  return RangeReplaceableCollection.init<A>(_:)(v3, va);
}

uint64_t sub_1B2115C54()
{

  return StatementArguments.description.getter();
}

void sub_1B2115D08()
{

  JUMPOUT(0x1B2741EB0);
}

uint64_t sub_1B2115D38()
{

  return swift_once();
}

uint64_t sub_1B2115D58()
{
  v1 = *(v0 - 384);
  sub_1B2112F4C(*(v0 - 376));
  return *(v0 - 336);
}

uint64_t sub_1B2115D98(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9)
{
  a9 = *a2;

  return static FetchableRecord.fetchCursor(_:arguments:adapter:)(a1, &a9, a3);
}

void sub_1B2115DF4()
{

  JUMPOUT(0x1B2741EB0);
}

uint64_t sub_1B2115E10()
{
  v2 = *v0;

  return swift_isUniquelyReferenced_nonNull_native();
}

void *sub_1B2115E28(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char __src)
{
  v13 = *v11;
  *(*v11 + 16) = v10 + 1;

  return memcpy((v13 + 184 * v10 + 32), &__src, 0xB8uLL);
}

uint64_t sub_1B2115E58()
{

  return sub_1B2252B00();
}

void *sub_1B2115E74(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34)
{
  v37 = *a3;
  v36 = a3[1];
  v38 = v34[1];
  a33 = *v34;
  a34 = v38;

  return Table.all()(a4, &a12);
}

void *sub_1B2115EAC()
{

  return memcpy(&STACK[0x3A0], &STACK[0x2F8], 0xA3uLL);
}

uint64_t sub_1B2115F28()
{

  return swift_beginAccess();
}

uint64_t sub_1B2115F40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30)
{

  return sub_1B21CF9AC(v31, v30, &a30, v32);
}

uint64_t sub_1B2115FC8()
{

  return swift_dynamicCast();
}

void sub_1B2116028()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = v0[4];
}

uint64_t sub_1B2116050()
{

  return swift_getAssociatedTypeWitness();
}

uint64_t sub_1B211606C()
{
  v2 = *(v0 + 40);

  return sub_1B2253420();
}

void *sub_1B211608C(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char __src)
{

  return memcpy(&a9, &__src, 0xA2uLL);
}

uint64_t sub_1B21160A8(uint64_t result)
{
  *(v2 + 16) = v1;
  *(v2 + 24) = 2 * ((result - 32) / v3);
  return result;
}

void *sub_1B21160D4()
{
  v5 = (*(v1 + 48) + 16 * v2);
  *v5 = v0;
  v5[1] = v3;
  v6 = (*(v1 + 56) + 176 * v2);

  return memcpy(v6, &STACK[0x2D8], 0xABuLL);
}

void *sub_1B2116104(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return static TableRecord.all()(&a9);
}

uint64_t sub_1B2116170()
{

  return type metadata accessor for Configuration();
}

void sub_1B21161F8()
{

  JUMPOUT(0x1B2741EB0);
}

void sub_1B2116260()
{
  *(v0 + 16) = v1;
  v5 = v0 + 16 * v4;
  *(v5 + 32) = v2;
  *(v5 + 40) = v3;
}

void sub_1B2116280(unint64_t a1@<X8>)
{

  sub_1B2162630(a1 > 1, v2, 1, v1);
}

void sub_1B21162CC(uint64_t *a1@<X8>)
{
  v1 = a1[1];
  v2 = a1[2];
  v3 = a1[3];
  v4 = *(a1 + 32);
  v5 = *a1;
  v6 = *(a1 + 33);
  v7 = *(a1 + 34);
}

id sub_1B21162F8(id a1, SEL a2)
{

  return [a1 a2];
}

uint64_t sub_1B2116318(uint64_t a1)
{
  sub_1B2112F4C(a1);
  v2 = *(v1 - 304);
  sub_1B2112F4C(*(v1 - 368));
  v3 = *(v1 - 360);
  v4 = *(v1 - 352);

  return sub_1B2112F4C(v3);
}

void sub_1B2116360(uint64_t a1@<X8>)
{
  *(v1 + 16) = a1;
  v10 = v1 + 40 * v7;
  *(v10 + 32) = v6;
  *(v10 + 40) = v5;
  *(v10 + 48) = v4;
  *(v10 + 56) = v3;
  *(v10 + 64) = v8;
  *(v10 + 65) = v9;
  *(v10 + 66) = v2;
}

uint64_t sub_1B211639C()
{
  sub_1B2113A20(*(v0 + 32), *(v0 + 40), *(v0 + 48));

  return swift_isUniquelyReferenced_nonNull_native();
}

void *sub_1B21163DC(void *__src, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char __dst)
{

  return memcpy(&__dst, __src, 0xA3uLL);
}

uint64_t sub_1B21163F8()
{

  return swift_getWitnessTable();
}

void *sub_1B21164A4(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char __src)
{
  *(v16 + 16) = v14;

  return memcpy((v16 + v15 * v17 + 32), &__src, 0xA3uLL);
}

__n128 sub_1B21164D4(uint64_t a1)
{
  *(v1 + 72) = a1;
  result = *(v1 + 40);
  v3 = *(v1 + 56);
  v4 = *(v1 + 24);
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  return result;
}

void *sub_1B2116508(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char __dst)
{

  return memcpy(&__dst, &a9, 0xA2uLL);
}

void sub_1B2116578(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *v3;
  v5 = a3[2];
  v6 = a3[3];
  v7 = a3[4];
  v8 = a3[5];
}

uint64_t sub_1B21165D8()
{

  return swift_once();
}

uint64_t sub_1B21165F8()
{

  return sub_1B2252E70();
}

uint64_t sub_1B2116618()
{

  return swift_beginAccess();
}

uint64_t sub_1B211668C@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, unsigned int a9@<W8>, __n128 a10@<Q0>, __n128 a11@<Q1>, __n128 a12@<Q2>, __n128 a13@<Q3>, __n128 a14@<Q4>)
{

  return sub_1B213B9FC(a1, a2, a3, a4, a5, a6, a7, a8, a10.n128_i64[0], a10.n128_i64[1], a11.n128_i64[0], a11.n128_i64[1], a12.n128_i64[0], a12.n128_i64[1], a13.n128_i64[0], a13.n128_i64[1], a14.n128_i64[0], a14.n128_i64[1], v14, v15, a9);
}

uint64_t sub_1B2116764()
{

  return sub_1B2252FA0();
}

uint64_t sub_1B21167C8()
{

  return swift_beginAccess();
}

uint64_t sub_1B21167E8(uint64_t a1)
{
  sub_1B2112328(a1);
  sub_1B2112328(v3);
  sub_1B2112328(v2);

  return sub_1B2112328(v1);
}

uint64_t sub_1B2116834()
{

  return swift_beginAccess();
}

void *sub_1B2116850(void *a1)
{

  return memcpy(a1, &STACK[0x390], 0xB8uLL);
}

void *sub_1B2116868(void *__src, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, char __dst)
{

  return memcpy(&__dst, __src, 0xA3uLL);
}

uint64_t sub_1B21168C4()
{
  sub_1B2113A20(v2, v1, 3);

  return sub_1B2113A20(v0, v3, 3);
}

void sub_1B2116914()
{

  sub_1B213CA68();
}

uint64_t sub_1B2116938(uint64_t a1, uint64_t *a2, uint64_t *a3, void (*a4)(uint64_t, uint64_t, uint64_t *))
{
  if (*(a1 + 16))
  {
    sub_1B21619D8(a2, a3);
    sub_1B2117220();
    v5 = sub_1B2252F00();
  }

  else
  {
    v5 = MEMORY[0x1E69E7CC8];
  }

  v8 = v5;

  a4(v6, 1, &v8);

  return v8;
}

uint64_t sub_1B21169D8()
{

  return swift_allocObject();
}

uint64_t sub_1B2116A68()
{

  return sub_1B213BBD8(v0);
}

uint64_t sub_1B2116A84()
{

  return sub_1B21414CC(v2, v1, v0);
}

uint64_t sub_1B2116AA0()
{

  return swift_allocObject();
}

void sub_1B2116B10()
{
  v1 = *v0;
  sub_1B211E4B0();
  sub_1B2119D9C();
  *v0 = v2;
}

void sub_1B2116B4C()
{
  sub_1B2111F14();
  v2 = v1;
  v3 = *(v1 + 16);
  if (v3)
  {
    sub_1B212D820();
    v4 = v13;
    v5 = (v2 + 48);
    do
    {
      memcpy(__dst, v5 - 16, 0xBBuLL);
      v7 = __dst[0];
      v6 = __dst[1];
      memcpy(v12, v5, 0xABuLL);
      sub_1B211E17C(__dst, v10, &qword_1EB7A1BF0, &qword_1B2259968);
      sub_1B21818BC(&__dst[2], v10);
      sub_1B219A920(v12);

      sub_1B2122400(__dst, &qword_1EB7A1BF0, &qword_1B2259968);
      sub_1B212D630();
      if (v8)
      {
        sub_1B211F354();
        v4 = v13;
      }

      *(v4 + 16) = v0;
      v9 = v4 + 16 * v2;
      *(v9 + 32) = v7;
      *(v9 + 40) = v6;
      v5 += 192;
      --v3;
    }

    while (v3);
  }

  sub_1B2116938(v2, &qword_1EB7A1BC8, &qword_1B2259958, sub_1B2116C80);
  sub_1B2117220();
  sub_1B2111588();
}

void sub_1B2116C80(uint64_t a1, char a2, void *a3)
{
  v5 = 0;
  v6 = *(a1 + 16);
  v25 = a1 + 32;
  while (1)
  {
    if (v5 == v6)
    {
      sub_1B2117018(__src);
      memcpy(__dst, __src, 0xBBuLL);
      v5 = v6;
    }

    else
    {
      if ((v5 & 0x8000000000000000) != 0)
      {
        goto LABEL_24;
      }

      if (v5 >= *(a1 + 16))
      {
        goto LABEL_25;
      }

      memcpy(__src, (v25 + 192 * v5), 0xBBuLL);
      memcpy(__dst, (v25 + 192 * v5++), 0xBBuLL);
      nullsub_1(__dst);
      sub_1B211E17C(__src, v27, &qword_1EB7A1BF0, &qword_1B2259968);
    }

    memcpy(__src, __dst, 0xBBuLL);
    if (sub_1B2117000(__src) == 1)
    {

      return;
    }

    v7 = __dst[0];
    v8 = __dst[1];
    memcpy(v27, &__dst[2], 0xABuLL);
    v9 = *a3;
    v11 = sub_1B211E590();
    v12 = v9[2];
    v13 = (v10 & 1) == 0;
    if (__OFADD__(v12, v13))
    {
      __break(1u);
LABEL_23:
      __break(1u);
LABEL_24:
      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      sub_1B2253390();
      __break(1u);
      goto LABEL_27;
    }

    v14 = v10;
    if (v9[3] < v12 + v13)
    {
      break;
    }

    if (a2)
    {
      if (v10)
      {
        goto LABEL_18;
      }
    }

    else
    {
      sub_1B21619D8(&qword_1EB7A1BD8, &qword_1B225A4B0);
      sub_1B2252E80();
      if (v14)
      {
        goto LABEL_18;
      }
    }

LABEL_15:
    v18 = *a3;
    *(*a3 + 8 * (v11 >> 6) + 64) |= 1 << v11;
    v19 = (v18[6] + 16 * v11);
    *v19 = v7;
    v19[1] = v8;
    memcpy((v18[7] + 176 * v11), v27, 0xABuLL);
    v20 = v18[2];
    v21 = __OFADD__(v20, 1);
    v22 = v20 + 1;
    if (v21)
    {
      goto LABEL_23;
    }

    v18[2] = v22;
    a2 = 1;
  }

  sub_1B2245854();
  v15 = *a3;
  v16 = sub_1B211E590();
  if ((v14 & 1) != (v17 & 1))
  {
    goto LABEL_26;
  }

  v11 = v16;
  if ((v14 & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_18:
  v23 = swift_allocError();
  swift_willThrow();
  v30 = v23;
  v24 = v23;
  sub_1B21619D8(qword_1EB7A0F98, &unk_1B22595B0);
  if ((swift_dynamicCast() & 1) == 0)
  {

    sub_1B219A920(v27);

    return;
  }

LABEL_27:
  sub_1B2252CD0();
  MEMORY[0x1B2741EB0](0xD00000000000001BLL, 0x80000001B226CFA0);
  sub_1B2252E10();
  MEMORY[0x1B2741EB0](39, 0xE100000000000000);
  sub_1B2252EC0();
  __break(1u);
}

uint64_t sub_1B2117000(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void sub_1B2117044(uint64_t a1)
{
  v5 = sub_1B2116B08(a1);
  v6 = type metadata accessor for TableAlias();
  v7 = sub_1B211984C(qword_1ED85E848, type metadata accessor for TableAlias);
  v9[1] = MEMORY[0x1B27422D0](v5, v6, v7);
  sub_1B2116B08(a1);
  sub_1B21164F4();
  while (1)
  {
    if (v6 == v1)
    {

      return;
    }

    if (v2)
    {
      v8 = MEMORY[0x1B27427E0](v1, a1);
    }

    else
    {
      if (v1 >= *(v3 + 16))
      {
        goto LABEL_11;
      }

      v8 = *(a1 + 8 * v1 + 32);
    }

    if (__OFADD__(v1, 1))
    {
      break;
    }

    sub_1B2138AC4(v9, v8);

    ++v1;
  }

  __break(1u);
LABEL_11:
  __break(1u);
}

void *sub_1B2117164(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a1;
  v3[3] = a2;

  v3[4] = sub_1B2118664(a3);
  sub_1B2117044(a3);
  v3[5] = v5;
  v6 = sub_1B2115C78();
  v9 = sub_1B211903C(v6, v7, v8, 0);

  v3[6] = v9;
  return v3;
}

void sub_1B2117238()
{

  sub_1B2116B10();
}

void *sub_1B21172D8(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char __src)
{
  v13 = *v10;
  *(*v10 + 16) = v11 + 1;

  return memcpy((v13 + 184 * v11 + 32), &__src, 0xB8uLL);
}

void sub_1B2117368()
{

  sub_1B214400C();
}

void sub_1B21173A4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3[2];
  v5 = a3[3];
  v7 = a3[4];
  v6 = a3[5];
  v8 = *v3;
}

uint64_t sub_1B21173D4()
{

  return swift_once();
}

uint64_t sub_1B2117408()
{

  return sub_1B2252EC0();
}

uint64_t sub_1B2117460()
{

  return swift_getWitnessTable();
}

uint64_t sub_1B2117488()
{

  return sub_1B2252EC0();
}

uint64_t sub_1B21174BC()
{
  result = *(v0 + 48);
  v4 = *(v0 + 56);
  *(v0 + 48) = v2;
  *(v0 + 56) = v1;
  v5 = *(v0 + 64);
  return result;
}

uint64_t sub_1B21174CC()
{
  sub_1B2113A20(v2, v3, 3);
  sub_1B2113A20(v0, v1, 3);
  sub_1B2113A20(v2, v3, 3);

  return sub_1B2113A20(v0, v1, 3);
}

uint64_t sub_1B2117528(uint64_t a1)
{
  v3 = v1[6];
  sub_1B21139A0(v1 + 2, v1[5]);
  v4 = *(v3 + 88);
  return a1;
}

unint64_t sub_1B2117584(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(a5 + 8 * (result >> 6) + 64) |= 1 << result;
  v5 = (*(a5 + 48) + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  v6 = *(a5 + 56);
  return result;
}

uint64_t sub_1B21175C8()
{

  return swift_once();
}

uint64_t sub_1B2117608()
{
  v4 = *(v1 - 3);
  v3 = *(v1 - 2);
  v6 = *(v1 - 1);
  v5 = *v1;
  v7 = *(v0 + 24);
  v8 = *(v0 + 16) + 1;
}

uint64_t sub_1B2117654()
{

  return sub_1B22531F0();
}

uint64_t sub_1B2117674()
{

  return swift_once();
}

void sub_1B21176D0()
{
  v2 = *(v0 + 16) + 1;

  sub_1B214400C();
}

uint64_t sub_1B21176F4()
{
  *(v1 + v2[17]) = 0;
  *(v1 + v2[18]) = 0;
  *(v1 + v2[19]) = v0;
  *(v1 + v2[20]) = 0;
  v4 = (v1 + v2[21]);
  *v4 = 0;
  v4[1] = 0;
  v5 = (v1 + v2[22]);
  *v5 = 0;
  v5[1] = 0;
  v6 = v1 + v2[23];

  return type metadata accessor for DatabaseQueue();
}

uint64_t sub_1B2117748()
{
  v2 = *(v1 - 104);
  v3 = *(v1 - 96);
  return v0;
}

uint64_t sub_1B2117760()
{

  return sub_1B219B280();
}

uint64_t sub_1B21177B0()
{

  return sub_1B2251CE0();
}

void sub_1B21177E0(uint64_t *a1@<X8>)
{
  v1 = a1[1];
  v2 = a1[2];
  v3 = a1[3];
  v4 = *(a1 + 32);
  v5 = *a1;
  v6 = *(a1 + 33);
  v7 = *(a1 + 34);
}

void sub_1B211780C()
{
  v1 = 1 << *(v0 + 32);
  v2 = -1;
  if (v1 < 64)
  {
    v2 = ~(-1 << v1);
  }

  v3 = v2 & *(v0 + 64);
}

uint64_t sub_1B211783C(unint64_t *a1)
{

  return sub_1B211AB74(a1, v1, v2);
}

void *sub_1B2117868(uint64_t a1)
{

  return sub_1B2117164(a1, v1, v2);
}

uint64_t sub_1B211788C()
{

  return swift_once();
}

uint64_t sub_1B21178AC()
{

  return sub_1B2127E58(v0, 0);
}

uint64_t sub_1B21178CC@<X0>(void *a1@<X8>)
{
  v3 = a1[1];
  v4 = a1[2];
  *v1 = *a1;
  v1[1] = v3;
  v1[2] = v4;
}

__n128 sub_1B2117920(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 80);
  v3 = *(a2 + 96);
  return result;
}

uint64_t sub_1B2117970()
{

  return swift_once();
}

uint64_t sub_1B21179D8(unint64_t *a1)
{

  return sub_1B211AB74(a1, v1, v2);
}

uint64_t sub_1B2117A9C()
{
  v2 = *v0;

  return swift_isUniquelyReferenced_nonNull_native();
}

void sub_1B2117AE8()
{
  *(v1 - 88) = v0;
  v2 = *(v0 + 24);
  v3 = *(v0 + 16) + 1;
}

__int128 *sub_1B2117B18()
{
  v2 = *(v0 - 72);

  return FetchRequest<>.fetchAll(_:)();
}

uint64_t sub_1B2117B40(uint64_t a1)
{
  result = sub_1B21114CC();
  if (result)
  {
    v3 = sub_1B211A144(a1);

    return v3 & 1;
  }

  return result;
}

uint64_t sub_1B2117B94(uint64_t result)
{
  *(v2 + 16) = v1;
  *(v2 + 24) = 2 * ((result - 32) / v3);
  return result;
}

__n128 sub_1B2117BA8()
{
  v1 = *(v0 + 16);
  result = *(v0 + 24);
  v3 = *(v0 + 40);
  v4 = *(v0 + 64);
  v5 = *(v0 + 72);
  v6 = *(v0 + 80);
  v7 = *(v0 + 88);
  v8 = *(v0 + 96);
  v9 = *(v0 + 56);
  return result;
}

uint64_t sub_1B2117BF4()
{

  return swift_allocObject();
}

uint64_t sub_1B2117C0C@<X0>(uint64_t a1@<X8>)
{
  v2 = *(a1 + 32);
}

uint64_t sub_1B2117C24(uint64_t result)
{
  v1 = *(result + 24);
  v2 = *(result + 16) + 1;
  return result;
}

void sub_1B2117C98()
{

  JUMPOUT(0x1B2741EB0);
}

uint64_t sub_1B2117CCC()
{
  v4 = *v1;
  v5 = v1[1];
  v2 = v1[2];
  v6 = v1[3];
  return v0;
}

void sub_1B2117CF0()
{
  v2 = *(v0 + 16) + 1;

  sub_1B214400C();
}

__n128 sub_1B2117D64()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  v5 = *(v0 + 48);
  v6 = *(v0 + 56);
  v7 = *(v0 + 64);
  v8 = *(v0 + 72);
  result = *(v0 + 80);
  v10 = *(v0 + 96);
  v11 = *(v0 + 112);
  v12 = *(v0 + 128);
  return result;
}

uint64_t sub_1B2117D94(uint64_t a1, uint64_t a2)
{

  return MEMORY[0x1EEDC6910](a1, a2, 1024, 0, 0, 1, v2, v2);
}

void sub_1B2117DBC()
{

  JUMPOUT(0x1B2741EB0);
}

void *sub_1B2117DD8()
{

  return DatabaseQueue.init(configuration:)(v0);
}

uint64_t sub_1B2117DFC()
{

  return swift_once();
}

uint64_t sub_1B2117E40()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);

  return swift_getObjectType();
}

uint64_t sub_1B2117EA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 - 72) = a5;
  v7 = *(v5 + 16);

  return sub_1B2252850();
}

void sub_1B2117EEC(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{

  sub_1B213CF80(v20, a1, a2 & 1, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

uint64_t sub_1B2117F5C()
{

  return swift_beginAccess();
}

uint64_t sub_1B2117F74@<X0>(uint64_t *a1@<X2>, uint64_t *a2@<X3>, uint64_t a3@<X8>, uint64_t a4, ...)
{
  va_start(va, a4);

  return sub_1B211E17C(a3, va, a1, a2);
}

void sub_1B2117F8C()
{

  JUMPOUT(0x1B2741EB0);
}

uint64_t _sSi12GRDBInternalE13databaseValueAA08DatabaseC0Vvg_0@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  return result;
}

uint64_t sub_1B2117FB0()
{
  v1 = *(v0 - 72);
  result = *(v0 - 96);
  v3 = *(v0 - 88);
  return result;
}

void sub_1B2117FE4()
{
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  *(v1 - 72) = v0;
}

uint64_t sub_1B211803C()
{
}

uint64_t sub_1B21180A4()
{

  return sub_1B2127E58(v0, 1);
}

uint64_t sub_1B21180CC()
{

  return swift_getTupleTypeMetadata2();
}

uint64_t sub_1B211810C()
{

  return sub_1B2252A50();
}

void sub_1B211812C(uint64_t a1@<X8>)
{
  *(v1 + 16) = a1;
  v6 = (v1 + 24 * v2);
  v6[4] = v5;
  v6[5] = v4;
  v6[6] = v3;
}

uint64_t sub_1B2118164(uint64_t *a1)
{
  v2 = *a1;

  return type metadata accessor for StatementArgumentsSink();
}

uint64_t sub_1B2118184()
{
  v2 = *(v0 + 80);

  return swift_unownedRetainStrong();
}

uint64_t sub_1B21181AC(uint64_t result)
{
  if (*(*v1 + 24) > result)
  {
    v2 = *(*v1 + 24);
  }

  return result;
}

uint64_t sub_1B21181C0()
{

  return sub_1B2127E58(v0, 0);
}

void sub_1B2118200(uint64_t a1@<X8>)
{
  if (a1 <= *(v1 + 16))
  {
    v2 = *(v1 + 16);
  }
}

__n128 sub_1B211824C()
{
  v2 = v0[1].n128_u8[0];
  result = *v0;
  *(v1 - 48) = *v0;
  *(v1 - 32) = v2;
  return result;
}

uint64_t sub_1B2118264()
{

  return swift_once();
}

void *sub_1B2118284(uint64_t a1, const void *a2)
{

  return memcpy(v2, a2, 0xB8uLL);
}

void sub_1B21182C4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = *v4;
  v6 = a4[2];
  v7 = a4[3];
  v8 = a4[4];
  v9 = a4[5];
}

void *sub_1B21182E8(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char __src)
{

  return memcpy(v10, &__src, 0xA3uLL);
}

uint64_t sub_1B211832C()
{

  return sub_1B22531F0();
}

void *sub_1B2118348(void *result)
{
  result[2] = v3;
  result[3] = v2;
  result[4] = v4;
  result[5] = v1;
  return result;
}

uint64_t sub_1B21183E4(unint64_t *a1)
{

  return sub_1B211AB74(a1, v1, v2);
}

uint64_t sub_1B2118410()
{
  v3 = *(v0 + 48);

  return type metadata accessor for ReceiveValuesOnSubscription.Target();
}

uint64_t sub_1B2118434()
{
}

uint64_t sub_1B2118454(uint64_t a1)
{
  *(v1 - 72) = a1;

  return sub_1B2252850();
}

uint64_t sub_1B21184AC()
{

  return sub_1B2252EC0();
}

void *sub_1B2118514(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char __src)
{

  return memcpy((v12 + 32), &__src, 0xB8uLL);
}

uint64_t sub_1B2118558()
{
}

uint64_t sub_1B2118584()
{

  return swift_once();
}

void sub_1B21185BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  *(v19 + 8 * (v20 >> 6) + 64) |= 1 << v20;
  v23 = (*(v19 + 48) + 16 * v20);
  *v23 = a19;
  v23[1] = v22;
  v24 = *(v19 + 56) + v20 * v21;
}

void sub_1B21185F4()
{

  sub_1B213CA68();
}

uint64_t sub_1B2118614()
{

  return sub_1B2252EC0();
}

uint64_t sub_1B2118640(unint64_t a1)
{
  if (a1 >> 62)
  {
    return sub_1B2252C20();
  }

  else
  {
    return *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }
}

uint64_t sub_1B2118664(uint64_t a1)
{
  v2 = sub_1B2116B08(a1);

  sub_1B2117044(v3);
  v5 = sub_1B2118DD0(v4);

  if (v2 == v5)
  {

    v7 = sub_1B2118DF0(v6);
    v8 = v7;
    v9 = 0;
    v83 = MEMORY[0x1E69E7CD0];
    v10 = v7 + 64;
    v11 = 1 << *(v7 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v7 + 64);
    v14 = (v11 + 63) >> 6;
    v70 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v15 = v9;
      if (!v13)
      {
        break;
      }

LABEL_9:
      v16 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
      v17 = v16 | (v9 << 6);
      v18 = (*(v8 + 48) + 16 * v17);
      v19 = *v18;
      v20 = v18[1];
      v1 = *(*(v8 + 56) + 8 * v17);
      if (sub_1B2116B08(v1) >= 2)
      {
        v81 = v1 & 0xC000000000000001;
        v82 = sub_1B2116B08(v1);

        v79 = 0;
        v21 = 0;
        while (v82 != v21)
        {
          if (v81)
          {
            MEMORY[0x1B27427E0](v21, v1);
          }

          else
          {
            if (v21 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_70;
            }

            v22 = *(v1 + 8 * v21 + 32);
          }

          v23 = v21 + 1;
          if (__OFADD__(v21, 1))
          {
            goto LABEL_69;
          }

          sub_1B2139070();
          v25 = v24;

          ++v21;
          if (v25)
          {

            v21 = v23;
            v26 = __OFADD__(v79++, 1);
            if (v26)
            {
              goto LABEL_71;
            }
          }
        }

        if (v79 >= 2)
        {
          goto LABEL_72;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v28 = *(v70 + 16);
          sub_1B2161EEC();
          v70 = v29;
        }

        v27 = *(v70 + 16);
        if (v27 >= *(v70 + 24) >> 1)
        {
          sub_1B2161EEC();
          v70 = v30;
        }

        *(v70 + 16) = v27 + 1;
        *(v70 + 8 * v27 + 32) = v1;
      }

      else
      {

        sub_1B2139304();
      }
    }

    while (1)
    {
      v9 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
LABEL_67:
        __break(1u);
        goto LABEL_68;
      }

      if (v9 >= v14)
      {
        break;
      }

      v13 = *(v10 + 8 * v9);
      ++v15;
      if (v13)
      {
        goto LABEL_9;
      }
    }

    type metadata accessor for TableAlias();
    sub_1B2119894(qword_1ED85E848);
    v31 = sub_1B2252190();
    v32 = v70;
    v72 = *(v70 + 16);
    if (!v72)
    {
LABEL_63:

      return v31;
    }

    v33 = 0;
    v71 = v70 + 32;
    while (v33 < *(v32 + 16))
    {
      v34 = *(v71 + 8 * v33);
      if (v34 >> 62)
      {
        if (v34 < 0)
        {
          v64 = *(v71 + 8 * v33);
        }

        v1 = sub_1B2252C20();
        if (v1)
        {
LABEL_33:
          v73 = v33;
          v35 = v34 & 0xC000000000000001;
          v77 = v34 + 32;
          v78 = v34 & 0xFFFFFFFFFFFFFF8;

          v36 = 0;
          v37 = 1;
          v75 = v1;
          v76 = v34;
          v74 = v34 & 0xC000000000000001;
          while (1)
          {
            if (v35)
            {
              MEMORY[0x1B27427E0](v36, v34);
            }

            else
            {
              if (v36 >= *(v78 + 16))
              {
                goto LABEL_66;
              }

              v38 = *(v77 + 8 * v36);
            }

            v26 = __OFADD__(v36++, 1);
            if (v26)
            {
              break;
            }

            sub_1B2139070();
            if (v39)
            {
            }

            else
            {
              v80 = v31;
              sub_1B2138F70();
              sub_1B21FD8E0();
              v40 = sub_1B22524A0();
              v42 = v41;
              v44 = v43;
              v46 = v45;

              v47 = MEMORY[0x1B2741E40](v40, v42, v44, v46);
              v49 = v48;

              v50 = 0;
              v81 = v47;
LABEL_42:

              v51 = sub_1B2252FD0();
              MEMORY[0x1B2741EB0](v51);

              v1 = v49;
              if (v50)
              {
              }

              v26 = __OFADD__(v37++, 1);
              if (v26)
              {
                __break(1u);
                break;
              }

              v52 = sub_1B2252220();
              v54 = v53;
              if (*(v83 + 16))
              {
                v55 = v52;
                v56 = v49;
                v57 = *(v83 + 40);
                sub_1B2253420();
                sub_1B2252370();
                v58 = sub_1B2253470();
                v59 = ~(-1 << *(v83 + 32));
                while (1)
                {
                  v60 = v58 & v59;
                  if (((*(v83 + 56 + (((v58 & v59) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v58 & v59)) & 1) == 0)
                  {
                    break;
                  }

                  v61 = (*(v83 + 48) + 16 * v60);
                  if (*v61 != v55 || v61[1] != v54)
                  {
                    v63 = sub_1B22531F0();
                    v58 = v60 + 1;
                    if ((v63 & 1) == 0)
                    {
                      continue;
                    }
                  }

                  v50 = 1;
                  v49 = v56;
                  goto LABEL_42;
                }
              }

              sub_1B2252220();
              sub_1B2139304();

              swift_isUniquelyReferenced_nonNull_native();
              sub_1B21ABF20();

              v31 = v80;
              v1 = v75;
              v34 = v76;
              v35 = v74;
            }

            if (v36 == v1)
            {

              v32 = v70;
              v33 = v73;
              goto LABEL_57;
            }
          }

          __break(1u);
LABEL_66:
          __break(1u);
          goto LABEL_67;
        }
      }

      else
      {
        v1 = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v1)
        {
          goto LABEL_33;
        }
      }

LABEL_57:
      if (++v33 == v72)
      {
        goto LABEL_63;
      }
    }

LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
LABEL_72:
    sub_1B2252CD0();

    sub_1B21C2A5C(0, v81 == 0, v1);
    if (v81)
    {
      MEMORY[0x1B27427E0](0, v1);
    }

    else
    {
      v66 = *(v1 + 32);
    }

    v67 = sub_1B2138F70();
    v69 = v68;

    MEMORY[0x1B2741EB0](v67, v69);
  }

  result = sub_1B2252EC0();
  __break(1u);
  return result;
}

uint64_t sub_1B2118DD0(uint64_t a1)
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    return sub_1B2252C20();
  }

  else
  {
    return *(a1 + 16);
  }
}

uint64_t sub_1B2118DF0(uint64_t a1)
{
  v2 = MEMORY[0x1E69E7CC8];
  v24 = MEMORY[0x1E69E7CC8];
  v3 = sub_1B2116B08(a1);
  for (i = 0; ; ++i)
  {
    if (v3 == i)
    {

      return v2;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x1B27427E0](i, a1);
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_21;
      }

      v5 = *(a1 + 8 * i + 32);
    }

    if (__OFADD__(i, 1))
    {
      break;
    }

    sub_1B2138F70();
    v6 = sub_1B2252220();
    v8 = v7;

    v10 = sub_1B211E590();
    v11 = v2[2];
    v12 = (v9 & 1) == 0;
    if (__OFADD__(v11, v12))
    {
      goto LABEL_22;
    }

    v13 = v9;
    if (v2[3] < v11 + v12)
    {
      sub_1B2139114();
      v2 = v24;
      v14 = sub_1B211E590();
      if ((v13 & 1) != (v15 & 1))
      {
        goto LABEL_24;
      }

      v10 = v14;
    }

    if (v13)
    {

      v17 = (v2[7] + 8 * v10);
      MEMORY[0x1B2742060](v16);
      if (*((*v17 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v17 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1B22525E0();
      }

      sub_1B2252630();
    }

    else
    {
      sub_1B21619D8(qword_1EB7A13D0, qword_1B2257E80);
      v18 = swift_allocObject();
      *(v18 + 16) = xmmword_1B2257570;
      *(v18 + 32) = v5;
      v2[(v10 >> 6) + 8] |= 1 << v10;
      v19 = (v2[6] + 16 * v10);
      *v19 = v6;
      v19[1] = v8;
      *(v2[7] + 8 * v10) = v18;
      v20 = v2[2];
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        goto LABEL_23;
      }

      v2[2] = v22;
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
  result = sub_1B2253390();
  __break(1u);
  return result;
}

uint64_t sub_1B211903C(uint64_t a1, uint64_t a2, void (*a3)(void *__return_ptr, void *), uint64_t a4)
{
  if (*(a1 + 16))
  {
    sub_1B21619D8(&qword_1EB7A1BC8, &qword_1B2259958);
    sub_1B2117220();
    v8 = sub_1B2252F00();
  }

  else
  {
    v8 = MEMORY[0x1E69E7CC8];
  }

  v10 = v8;

  sub_1B21198D4(a1, a2, a3, a4, 1, &v10);

  return v10;
}

uint64_t sub_1B2119120(uint64_t a1)
{
  v3 = v2;
  v4 = *v1;
  v5 = *(*v1 + 16);
  v6 = MEMORY[0x1E69E7CC0];
  if (!v5)
  {
LABEL_38:
    v69[0] = v6;
    v56 = sub_1B2122034();
    sub_1B21619D8(v56, v57);
    sub_1B211AB74(qword_1ED85E790, &qword_1EB7A0DA0, &qword_1B2254340);
    sub_1B2252250();

    return sub_1B2122034();
  }

  v75 = MEMORY[0x1E69E7CC0];
  sub_1B2116B10();
  v8 = 0;
  v6 = v75;
  v62 = v5;
  v59 = v4;
  v60 = a1;
  while (2)
  {
    if (v8 < *(v4 + 16))
    {
      v9 = v8 + 1;
      sub_1B21118C4();
      memcpy(v10, v11, v12);
      sub_1B21118C4();
      memmove(v13, v14, v15);
      v63 = v9;
      switch(sub_1B211AF10(v74))
      {
        case 1u:
          v30 = sub_1B2119818(v74);
          memcpy(v72, v30, 0xA2uLL);
          if (sub_1B214D180(v72) == 1)
          {
            v61 = v3;
            v31 = sub_1B21197F4(v72);
            memcpy(v79, v31, 0xA2uLL);
            sub_1B211D778();
            memcpy(v71, __src, sizeof(v71));
            v32 = sub_1B2119818(v71);
            sub_1B211D778();
            sub_1B211D778();
            sub_1B214CFE0(v32, v69);
            sub_1B21366E4(v79, v70);
            v33 = 0;
            v34 = v31[11];
            v35 = v31[12];
            v80 = *(v34 + 16);
            v64 = v34;
            v36 = (v34 + 40);
            v37 = MEMORY[0x1E69E7CC0];
            while (v80 != v33)
            {
              if (v33 >= *(v64 + 16))
              {
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

              if (!*(v35 + 16))
              {
                goto LABEL_45;
              }

              v39 = *(v36 - 1);
              v38 = *v36;

              v40 = sub_1B211E590();
              if ((v41 & 1) == 0)
              {
                goto LABEL_46;
              }

              v42 = (*(v35 + 56) + 216 * v40);
              memcpy(v66, v42, 0xD2uLL);
              memcpy(v69, v42, 0xD2uLL);
              memmove(v67, v42, 0xD2uLL);
              *__dst = v39;
              *&__dst[8] = v38;
              memcpy(&__dst[16], v69, 0xD2uLL);

              sub_1B2181728(v66, v65);
              sub_1B2181728(v67, v65);
              sub_1B212AC5C(__dst, &qword_1EB7A13A8, &qword_1B2257E40);
              memcpy(&v65[2], v67, 0xD2uLL);
              v65[0] = v39;
              v65[1] = v38;
              sub_1B21C3FEC();
              v44 = v43;
              memcpy(v69, v65, 0xE2uLL);
              sub_1B212AC5C(v69, &qword_1EB7A13A8, &qword_1B2257E40);
              v45 = *(v44 + 16);
              v46 = *(v37 + 16);
              if (__OFADD__(v46, v45))
              {
                goto LABEL_47;
              }

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0 || v46 + v45 > *(v37 + 24) >> 1)
              {
                sub_1B2161FB4();
                v37 = v47;
              }

              if (*(v44 + 16))
              {
                if ((*(v37 + 24) >> 1) - *(v37 + 16) < v45)
                {
                  goto LABEL_49;
                }

                swift_arrayInitWithCopy();

                if (v45)
                {
                  v48 = *(v37 + 16);
                  v49 = __OFADD__(v48, v45);
                  v50 = v48 + v45;
                  if (v49)
                  {
                    goto LABEL_50;
                  }

                  *(v37 + 16) = v50;
                }
              }

              else
              {

                if (v45)
                {
                  goto LABEL_48;
                }
              }

              v36 += 2;
              ++v33;
            }

            sub_1B211AC90(__src);
            memcpy(v76, v70, 0xA8uLL);
            v76[168] = 0;
            *v77 = v69[0];
            *&v77[3] = *(v69 + 3);
            v78 = v37;
            a1 = v60;
            sub_1B21376C4();
            v3 = v61;
            if (!v61)
            {
              v18 = v54;
              v17 = v55;
              sub_1B2142BCC(v76);
              sub_1B211AC90(__src);
              sub_1B211AC90(__src);
              v4 = v59;
              goto LABEL_13;
            }

            sub_1B2142BCC(v76);
            sub_1B211AC90(__src);
            sub_1B211AC90(__src);
          }

          else
          {
            v65[0] = *sub_1B21197F4(v72);
            sub_1B2112DCC();
            v51 = sub_1B2119818(v69);
            sub_1B211AF1C(__src, __dst);
            sub_1B214CFE0(v51, __dst);
            v52 = sub_1B2119120(a1);
            if (!v3)
            {
              v18 = v52;
              v17 = v53;
              sub_1B211AC90(__src);
              goto LABEL_12;
            }

            sub_1B211AC90(__src);
LABEL_40:
            sub_1B211AC90(__src);
          }

          break;
        case 2u:
          v24 = sub_1B2119818(v74);
          memcpy(__dst, v24, 0xA3uLL);
          sub_1B2112DCC();
          v25 = sub_1B2119818(v69);
          sub_1B2127DC0(v25, v65);
          v21 = v3;
          v22 = sub_1B2127E58(a1, 0);
          goto LABEL_10;
        case 3u:
          v26 = sub_1B2119818(v74);
          memcpy(__dst, v26, 0xB8uLL);
          sub_1B2112DCC();
          v27 = sub_1B2119818(v69);
          sub_1B213A774(v27, v65);
          v21 = v3;
          v22 = sub_1B213A7D0(a1);
          goto LABEL_10;
        case 4u:
          v19 = sub_1B2119818(v74);
          memcpy(__dst, v19, 0xA3uLL);
          sub_1B2112DCC();
          v20 = sub_1B2119818(v69);
          sub_1B214D958(v20, v65);
          v21 = v3;
          v22 = sub_1B214DCE8(a1);
LABEL_10:
          v3 = v21;
          if (v21)
          {
            goto LABEL_40;
          }

          v18 = v22;
          v17 = v23;
LABEL_12:
          sub_1B211AC90(__src);
LABEL_13:
          v75 = v6;
          v28 = *(v6 + 16);
          if (v28 >= *(v6 + 24) >> 1)
          {
            sub_1B2116B10();
            v6 = v75;
          }

          *(v6 + 16) = v28 + 1;
          v29 = v6 + 16 * v28;
          *(v29 + 32) = v18;
          *(v29 + 40) = v17;
          v8 = v63;
          if (v63 == v62)
          {
            goto LABEL_38;
          }

          continue;
        default:
          v16 = sub_1B2119818(v74);
          v18 = *v16;
          v17 = *(v16 + 8);
          *__dst = *(v16 + 16);
          sub_1B211D778();

          if ((sub_1B211AF84(__dst) & 1) == 0)
          {
            goto LABEL_52;
          }

          goto LABEL_12;
      }

      return sub_1B2122034();
    }

    break;
  }

LABEL_51:
  __break(1u);
LABEL_52:
  result = sub_1B2252EC0();
  __break(1u);
  return result;
}

uint64_t sub_1B211984C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B2119894(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for TableAlias();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1B21198D4(uint64_t a1, uint64_t a2, void (*a3)(void *__return_ptr, void *), uint64_t a4, char a5, uint64_t *a6)
{
  v45 = a6;
  v8 = *(a1 + 16);
  v37 = a1 + 32;

  v9 = 0;
  while (1)
  {
    if (v9 == v8)
    {
      sub_1B2117018(__src);
      memcpy(__dst, __src, 0xBBuLL);
      v9 = v8;
    }

    else
    {
      if ((v9 & 0x8000000000000000) != 0)
      {
        goto LABEL_26;
      }

      if (v9 >= *(a1 + 16))
      {
        goto LABEL_27;
      }

      if (!*(a2 + 16))
      {
        goto LABEL_28;
      }

      v10 = (v37 + 16 * v9);
      v11 = *v10;
      v12 = v10[1];

      v13 = sub_1B211E590();
      if ((v14 & 1) == 0)
      {
        goto LABEL_29;
      }

      v15 = (*(a2 + 56) + 176 * v13);
      memcpy(v40, v15, 0xABuLL);
      memcpy(__src, v15, 0xABuLL);
      memmove(v41, v15, 0xABuLL);
      v42[0] = v11;
      v42[1] = v12;
      memcpy(&v42[2], __src, 0xABuLL);

      sub_1B21818BC(v40, v39);
      sub_1B21818BC(v41, v39);
      sub_1B2122400(v42, &qword_1EB7A1BD0, &qword_1B226C7C0);
      memcpy(&v39[2], v41, 0xABuLL);
      ++v9;
      v39[0] = v11;
      v39[1] = v12;
      a3(__dst, v39);
      memcpy(__src, v39, 0xBBuLL);
      sub_1B2122400(__src, &qword_1EB7A1BD0, &qword_1B226C7C0);
      nullsub_1(__dst);
    }

    memcpy(__src, __dst, 0xBBuLL);
    if (sub_1B2117000(__src) == 1)
    {

      swift_bridgeObjectRelease_n();
      swift_bridgeObjectRelease_n();
      return;
    }

    v16 = a2;
    v17 = __dst[0];
    v18 = __dst[1];
    v39[0] = __dst[0];
    v39[1] = __dst[1];
    memcpy(v42, &__dst[2], 0xABuLL);
    v19 = *v45;
    v21 = sub_1B211E590();
    v22 = v19[2];
    v23 = (v20 & 1) == 0;
    if (__OFADD__(v22, v23))
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
LABEL_29:
      __break(1u);
LABEL_30:
      sub_1B2253390();
      __break(1u);
      goto LABEL_31;
    }

    v24 = v20;
    if (v19[3] < v22 + v23)
    {
      break;
    }

    if (a5)
    {
      if (v20)
      {
        goto LABEL_20;
      }
    }

    else
    {
      sub_1B21619D8(&qword_1EB7A1BD8, &qword_1B225A4B0);
      sub_1B2252E80();
      if (v24)
      {
        goto LABEL_20;
      }
    }

LABEL_17:
    v29 = *v45;
    v29[(v21 >> 6) + 8] |= 1 << v21;
    v30 = (v29[6] + 16 * v21);
    *v30 = v17;
    v30[1] = v18;
    memcpy((v29[7] + 176 * v21), v42, 0xABuLL);
    v31 = v29[2];
    v32 = __OFADD__(v31, 1);
    v33 = v31 + 1;
    if (v32)
    {
      goto LABEL_25;
    }

    v29[2] = v33;
    a5 = 1;
    a2 = v16;
  }

  v25 = v45;
  sub_1B2245854();
  v26 = *v25;
  v27 = sub_1B211E590();
  if ((v24 & 1) != (v28 & 1))
  {
    goto LABEL_30;
  }

  v21 = v27;
  if ((v24 & 1) == 0)
  {
    goto LABEL_17;
  }

LABEL_20:
  v34 = swift_allocError();
  swift_willThrow();
  v40[0] = v34;
  v35 = v34;
  sub_1B21619D8(qword_1EB7A0F98, &unk_1B22595B0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    sub_1B219A920(v42);

    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();

    return;
  }

LABEL_31:
  v41[0] = 0;
  v41[1] = 0xE000000000000000;
  sub_1B2252CD0();
  MEMORY[0x1B2741EB0](0xD00000000000001BLL, 0x80000001B226CFA0);
  sub_1B2252E10();
  MEMORY[0x1B2741EB0](39, 0xE100000000000000);
  sub_1B2252EC0();
  __break(1u);
}

void sub_1B2119D9C()
{
  sub_1B2111830();
  if ((v6 & 1) == 0)
  {
    v7 = v5;
    goto LABEL_7;
  }

  sub_1B2115F84();
  if (v8 == v9)
  {
LABEL_7:
    sub_1B2111EF8(v7);
    if (v4)
    {
      sub_1B2113B10(v10, v11, v12, v13, v14, v15);
      v16 = sub_1B211A23C();
      j__malloc_size(v16);
      sub_1B211F5F8();
      v16[2] = v3;
      v16[3] = v17;
      if (v2)
      {
LABEL_9:
        v18 = sub_1B2117B84();
        v1(v18);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v2)
    {
      goto LABEL_9;
    }

    sub_1B2115B30();
    goto LABEL_12;
  }

  sub_1B212CD14();
  if (!v8)
  {
    sub_1B2115544();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_1B2119EFC()
{
  sub_1B212425C();
  if (*(v0 + OBJC_IVAR____TtC12GRDBInternal8Database_isInsideTransactionBlock) == 1)
  {
    v4 = v3;
    v5 = v2;
    sub_1B2122734();
    swift_beginAccess();
    if (sqlite3_get_autocommit(*(v1 + 16)))
    {
      v6 = v5();
      v8 = v7;
      v4(v13);
      v9 = v13[0];
      v10 = v13[1];
      v11 = *(v1 + OBJC_IVAR____TtC12GRDBInternal8Database_configuration + 26);
      sub_1B21AC298();
      sub_1B21152FC();
      *v12 = 4;
      *(v12 + 8) = 0xD000000000000017;
      *(v12 + 16) = 0x80000001B2270FE0;
      *(v12 + 24) = v6;
      *(v12 + 32) = v8;
      *(v12 + 40) = v9;
      *(v12 + 48) = v10;
      *(v12 + 56) = v11;
      swift_willThrow();
    }
  }
}

uint64_t sub_1B211A000()
{
  type metadata accessor for SchedulingWatchdog();
  v1 = *(v0 + 80);
  v2 = swift_unownedRetainStrong();
  if ((sub_1B2117B40(v2) & 1) == 0)
  {
    goto LABEL_9;
  }

  result = sqlite3_reset(*(v0 + 16));
  if (!result)
  {
    return result;
  }

  v4 = result;
  swift_unownedRetainStrong();
  v5 = Database.lastErrorMessage.getter();
  v7 = v6;

  v8 = Statement.sql.getter();
  v10 = v9;
  sub_1B21AC298();
  swift_allocError();
  v12 = v11;
  if (!v7)
  {
    if (sqlite3_errstr(v4))
    {
      v5 = sub_1B22523F0();
      v7 = v13;
      goto LABEL_6;
    }

    __break(1u);
LABEL_9:
    sub_1B2117938();
    result = sub_1B2252EC0();
    __break(1u);
    return result;
  }

LABEL_6:
  *v12 = v4;
  *(v12 + 8) = v5;
  *(v12 + 16) = v7;
  *(v12 + 24) = v8;
  *(v12 + 32) = v10;
  *(v12 + 40) = 0;
  *(v12 + 48) = 0;
  *(v12 + 56) = 0;
  return swift_willThrow();
}

uint64_t sub_1B211A144(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  v4 = sub_1B2116B08(v3);

  v6 = 0;
  while (1)
  {
    while (1)
    {
      v7 = v6;
      if (v6 == v4)
      {
LABEL_10:

        return v7 != v4;
      }

      if ((v3 & 0xC000000000000001) == 0)
      {
        break;
      }

      result = MEMORY[0x1B27427E0](v6++, v3);
      if (__OFADD__(v7, 1))
      {
        goto LABEL_13;
      }

      v8 = result;
      result = swift_unknownObjectRelease();
      if (v8 == a1)
      {
        goto LABEL_10;
      }
    }

    if ((v6 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v6 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_12;
    }

    ++v6;
    if (*(v3 + 32 + 8 * v7) == a1)
    {
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_12:
  __break(1u);
LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_1B211A23C()
{

  return swift_allocObject();
}

uint64_t sub_1B211A26C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return sub_1B21619D8(a3, a4);
}

void *sub_1B211A2B4(uint64_t a1, const void *a2)
{

  return memcpy(v2, a2, 0xA3uLL);
}

uint64_t sub_1B211A2DC()
{
}

__n128 sub_1B211A2F8()
{
  v1 = v0[1].n128_u64[0];
  v2 = v0[1].n128_u64[1];
  v3 = v0[2].n128_u64[0];
  v4 = v0[2].n128_u64[1];
  result = v0[3];
  v7 = v0[4].n128_u64[0];
  v6 = v0[4].n128_u64[1];
  return result;
}

uint64_t sub_1B211A33C()
{

  return swift_beginAccess();
}

uint64_t sub_1B211A378(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

void Database.statementWillExecute(_:)(uint64_t a1)
{
  sub_1B2119EFC();
  if (!v2)
  {
    sub_1B211BD50();
    if (*(v1 + OBJC_IVAR____TtC12GRDBInternal8Database_isRecordingSelectedRegion) == 1)
    {
      swift_beginAccess();
      v4 = *(a1 + 32);
      v5 = OBJC_IVAR____TtC12GRDBInternal8Database_selectedRegion;
      swift_beginAccess();
      v6 = *(v1 + v5);
      v7[0] = v4;
      v7[1] = v6;

      v8.tableRegions.value._rawValue = v7;
      DatabaseRegion.union(_:)(v8);

      *(v1 + v5) = v7[2];
      swift_endAccess();
    }

    sub_1B211CD70();
    sub_1B211C87C(a1);
  }
}

uint64_t Database.statementDidExecute(_:)(uint64_t a1)
{
  if (*(a1 + 40) == 1)
  {
    Database.clearSchemaCache()();
  }

  sub_1B211CD70();
  sub_1B211C474(a1);
}

uint64_t sub_1B211A558(uint64_t a1, int a2, char *a3, char *a4)
{

  v7 = sub_1B211A5CC(a2, a3, a4);

  return v7;
}

uint64_t sub_1B211A5CC(int a1, char *__s1, char *a3)
{
  result = 0;
  v6 = v3;
  switch(a1)
  {
    case 1:
    case 2:
    case 3:
    case 4:
    case 5:
    case 6:
    case 7:
    case 8:
    case 24:
    case 25:
    case 26:
    case 29:
      result = 0;
      goto LABEL_4;
    case 9:
      result = 0;
      if ((*(v6 + 65) & 1) == 0)
      {
        if (__s1)
        {
          result = strcmp(__s1, "sqlite_master");
          if (result)
          {
            result = strcmp(__s1, "sqlite_temp_master");
            if (result)
            {
              v12 = sub_1B22523F0();
              v14 = v13;
              sub_1B2112A08();

              sub_1B214AB94();
              sub_1B211575C();
              sub_1B2115120();
              *(v15 + 32) = v12;
              *(v15 + 40) = v14;
              *(v15 + 48) = 0;
              *(v15 + 56) = 1;
              *(v6 + 32) = v16;
              swift_endAccess();
              v17 = *(v6 + 16);
              swift_unownedRetainStrong();
              sub_1B211CD70();

              sub_1B214BDE0();
              LOBYTE(v17) = v18;

              if (v17)
              {
                return 2;
              }

              else
              {
                return 0;
              }
            }
          }
        }
      }

      return result;
    case 10:
    case 11:
    case 12:
    case 13:
    case 14:
    case 15:
    case 16:
    case 17:
    case 30:
      result = 0;
      *(v6 + 65) = 1;
LABEL_4:
      *(v6 + 40) = 1;
      return result;
    case 18:
      if (__s1)
      {
        v40 = sub_1B22523F0();
        v42 = v41;
        sub_1B2112A08();
        sub_1B214AB94();
        sub_1B211575C();
        sub_1B2115120();
        *(v43 + 32) = v40;
        *(v43 + 40) = v42;
        *(v43 + 48) = 0;
        *(v43 + 56) = 0;
        *(v6 + 32) = v44;
        swift_endAccess();
      }

      return 0;
    case 20:
      if (!__s1)
      {
        return 0;
      }

      v22 = sub_1B22523F0();
      v24 = v23;
      if (a3)
      {
        v25 = v22;
        v26 = sub_1B22523F0();
        v28 = v27;
        v29 = HIBYTE(v27) & 0xF;
        if ((v27 & 0x2000000000000000) == 0)
        {
          v29 = v26 & 0xFFFFFFFFFFFFLL;
        }

        if (v29)
        {
          v30 = v26;
          sub_1B21619D8(&qword_1EB7A0F88, &unk_1B22546A0);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_1B22546B0;
          *(inited + 32) = v30;
          *(inited + 40) = v28;
          v32 = sub_1B213285C(inited);
          v33 = sub_1B2252220();
          v35 = v34;
          sub_1B21C8758(v32);
          v37 = v36;

          v38 = sub_1B2132B34(v37);
          sub_1B21619D8(&qword_1EB7A2190, &unk_1B225B250);
          v39 = swift_initStackObject();
          *(v39 + 16) = xmmword_1B22546B0;
          *(v39 + 32) = v33;
          *(v39 + 40) = v35;
          *(v39 + 48) = v25;
          *(v39 + 56) = v24;
          *(v39 + 64) = v38;
          *(v39 + 72) = 0;
          sub_1B211B358();
        }

        else
        {

          v51 = sub_1B2252220();
          v53 = v52;
          sub_1B21619D8(&qword_1EB7A2190, &unk_1B225B250);
          v54 = swift_initStackObject();
          *(v54 + 16) = xmmword_1B22546B0;
          *(v54 + 32) = v51;
          *(v54 + 40) = v53;
          *(v54 + 48) = v25;
          *(v54 + 56) = v24;
          sub_1B211B358();
          *(v54 + 64) = 0;
          *(v54 + 72) = 0;
        }

        v55 = sub_1B2252190();
        sub_1B2112A08();
        v56 = *(v6 + 24);
        v57[0] = v55;
        v57[1] = v56;
        v58.tableRegions.value._rawValue = v57;
        DatabaseRegion.union(_:)(v58);

        *(v6 + 24) = v57[2];
        swift_endAccess();
      }

      goto LABEL_51;
    case 22:
      if (!__s1)
      {
        return 0;
      }

      if (!strcmp(__s1, "BEGIN"))
      {
        v9 = *(v6 + 48);
        v10 = *(v6 + 56);
        *(v6 + 48) = 0;
        *(v6 + 56) = 0;
      }

      else
      {
        if (!strcmp(__s1, "COMMIT"))
        {
          v9 = *(v6 + 48);
          v10 = *(v6 + 56);
          v11 = xmmword_1B2259350;
        }

        else
        {
          if (strcmp(__s1, "ROLLBACK"))
          {
            return 0;
          }

          v9 = *(v6 + 48);
          v10 = *(v6 + 56);
          v11 = xmmword_1B225B1F0;
        }

        *(v6 + 48) = v11;
      }

      v19 = *(v6 + 64);
      v20 = 3;
      goto LABEL_46;
    case 23:
      if (!__s1)
      {
        return 0;
      }

      v45 = sub_1B22523F0();
      v47 = v46;
      if (a3)
      {
        v48 = v45;
        v49 = sub_1B22523F0();
        sub_1B214FB4C(v48, v47, v49, v50);
      }

      goto LABEL_51;
    case 31:
      if (!a3)
      {
        return 0;
      }

      if (!strcmp(a3, "sqlite_drop_column"))
      {
        *(v6 + 40) = 1;
      }

      if (sqlite3_libversion_number() > 3018999 || sqlite3_stricmp(a3, "COUNT"))
      {
        return 0;
      }

      swift_beginAccess();
      v21 = *(v6 + 24);
      *(v6 + 24) = 0;
      goto LABEL_51;
    case 32:
      if (!__s1 || !a3)
      {
        return 0;
      }

      sub_1B22523F0();
      if (!strcmp(__s1, "BEGIN"))
      {
        v9 = sub_1B21174BC();
        *(v6 + 64) = 0;
        goto LABEL_47;
      }

      if (!strcmp(__s1, "RELEASE"))
      {
        v9 = sub_1B21174BC();
        v20 = 1;
        goto LABEL_46;
      }

      if (!strcmp(__s1, "ROLLBACK"))
      {
        v9 = sub_1B21174BC();
        v20 = 2;
LABEL_46:
        *(v6 + 64) = v20;
LABEL_47:
        sub_1B211BD38(v9, v10, v19);
        return 0;
      }

LABEL_51:

      return 0;
    default:
      return result;
  }
}

uint64_t sub_1B211AB74(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1B2161A20(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1B211ABBC(uint64_t a1)
{
  result = sub_1B214BDD4(a1);
  if (!result)
  {
    v4 = sub_1B212CFD8(0, v3);
    sub_1B2161A20(v4, v5);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t sub_1B211AC20(void *a1)
{
  v2 = a1[1];
  if (*(*a1 + 16) || *(v2 + 16))
  {
    if (*(v1 + 32))
    {
      return 0;
    }

    *&v4 = *a1;
    *(&v4 + 1) = v2;
    swift_beginAccess();
    static StatementArguments.+= infix(_:_:)(v1 + 16, &v4);
    swift_endAccess();
  }

  return 1;
}

uint64_t sub_1B211ACDC()
{

  return swift_arrayInitWithCopy();
}

void sub_1B211AD04(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);

  JUMPOUT(0x1B2742F10);
}

uint64_t sub_1B211AD38()
{

  return swift_allocObject();
}

uint64_t sub_1B211AD64()
{

  return swift_allocObject();
}

__n128 sub_1B211ADB0@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X8>)
{
  v4 = a4 + 40 * a1;
  result = *a2;
  v6 = *(a2 + 16);
  *v4 = *a2;
  *(v4 + 16) = v6;
  *(v4 + 32) = *(a2 + 32);
  v7 = *(a3 + 16);
  return result;
}

uint64_t *sub_1B211ADD4()
{
  result = sub_1B2127E38(v0 + 3704);
  v2 = *result;
  return result;
}

void sub_1B211ADF0(__n128 a1)
{
  *(v1 + 16) = v4;
  v5 = (v1 + 24 * v3);
  v5[2] = a1;
  v5[3].n128_u8[0] = v2;
}

uint64_t sub_1B211AE44(uint64_t a1)
{

  return sub_1B2122A98(v2 + v1, 1, a1);
}

void sub_1B211AE64()
{

  JUMPOUT(0x1B2741EB0);
}

double sub_1B211AEBC()
{
  result = 0.0;
  *(v0 + 24) = 0u;
  *(v0 + 40) = 0u;
  *(v0 + 56) = 0;
  return result;
}

void sub_1B211AED0(uint64_t a1, uint64_t a2)
{
  *(a2 + 16) = 3;
  v5 = *(v4 - 224);
  *(a2 + 24) = *(v4 - 72);
  *(a2 + 32) = v5;
  *(a2 + 40) = v2;
  *(a2 + 48) = v3;
}

uint64_t sub_1B211AF84(__int128 *a1)
{
  sub_1B211AFD4();
  v3 = *a1;
  LOBYTE(a1) = sub_1B211AC20(&v3);

  return a1 & 1;
}

uint64_t sub_1B211AFD4()
{
  v1 = *(v0 + 24);
  if (v1 < 0)
  {
    v4 = *(v0 + 16);

    v6 = sub_1B211AFD4(v5);
    sub_1B211B418(v4, v1);
    return v6;
  }

  else
  {
    v2 = *(v0 + 24);
  }
}

uint64_t sub_1B211B048@<X0>(void *a1@<X8>)
{
  v2 = sub_1B211AFD4();
  swift_beginAccess();
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);

  *a1 = v3;
  a1[1] = v4;
  return result;
}

int64_t sub_1B211B0B4()
{
  if (*(v0 + 136))
  {
    v1 = *(v0 + 136);
  }

  else
  {
    v1 = sub_1B211B114(v0);
    v2 = *(v0 + 136);
    *(v0 + 136) = v1;
  }

  return v1;
}

int64_t sub_1B211B114(uint64_t a1)
{
  result = sub_1B211B264();
  if (result < 0xFFFFFFFF80000000)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v3 = result;
  if (result > 0x7FFFFFFF)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if ((result & 0x8000000000000000) == 0)
  {
    v4 = MEMORY[0x1E69E7CC0];
    if (!result)
    {
      return v4;
    }

    v16 = MEMORY[0x1E69E7CC0];
    sub_1B214177C(0, result, 0);
    v4 = v16;
    v5 = *(a1 + 16);
    for (i = 1; ; ++i)
    {
      result = sqlite3_bind_parameter_name(v5, i);
      if (result)
      {
        v7 = sub_1B22523F0();
        v9 = sub_1B21FD2F0(1uLL, v7, v8);
        v10 = MEMORY[0x1B2741E40](v9);
        v12 = v11;
      }

      else
      {
        v10 = 0;
        v12 = 0;
      }

      v14 = *(v16 + 16);
      v13 = *(v16 + 24);
      if (v14 >= v13 >> 1)
      {
        result = sub_1B214177C(v13 > 1, v14 + 1, 1);
      }

      *(v16 + 16) = v14 + 1;
      v15 = v16 + 16 * v14;
      *(v15 + 32) = v10;
      *(v15 + 40) = v12;
      if (!v3)
      {
        break;
      }

      if (!--v3)
      {
        return v4;
      }
    }

    __break(1u);
    goto LABEL_15;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_1B211B264()
{
  if (*(v0 + 128) != 1)
  {
    return *(v0 + 120);
  }

  result = sqlite3_bind_parameter_count(*(v0 + 16));
  *(v0 + 120) = result;
  *(v0 + 128) = 0;
  return result;
}

uint64_t sub_1B211B2A0()
{
  sub_1B211B358();
  v1 = MEMORY[0x1E69E7CC0];
  v2 = sub_1B2252190();
  swift_beginAccess();
  v3 = *(v0 + 24);
  *(v0 + 24) = v2;

  swift_beginAccess();
  v4 = *(v0 + 32);
  *(v0 + 32) = v1;

  *(v0 + 40) = 0;
  v5 = *(v0 + 48);
  v6 = *(v0 + 56);
  *(v0 + 48) = 0;
  *(v0 + 56) = 0;
  v7 = *(v0 + 64);
  *(v0 + 64) = -1;
  result = sub_1B211BD38(v5, v6, v7);
  *(v0 + 65) = 0;
  return result;
}

unint64_t sub_1B211B358()
{
  result = qword_1ED85E6E0;
  if (!qword_1ED85E6E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED85E6E0);
  }

  return result;
}

uint64_t *sub_1B211B3AC()
{
  sub_1B211B418(v0[2], v0[3]);
  v1 = v0[4];

  v2 = v0[5];

  v3 = v0[6];

  return v0;
}

uint64_t sub_1B211B3E4()
{
  sub_1B211B3AC();

  return MEMORY[0x1EEE6BDC0](v0, 56, 7);
}

uint64_t sub_1B211B418(uint64_t a1, uint64_t a2)
{

  if ((a2 & 0x8000000000000000) == 0)
  {
  }

  return result;
}

uint64_t sub_1B211B460()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDC0](v0, 33, 7);
}

uint64_t sub_1B211B4A8@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, void *a3@<X3>, uint64_t *a4@<X8>)
{
  v23[1] = *MEMORY[0x1E69E9840];
  if (!result)
  {
    goto LABEL_10;
  }

  v8 = result;
  v23[0] = 0;
  v9 = *(a2 + 16);
  v10 = *(a2 + 56);
  v11 = *(a2 + 32);
  type metadata accessor for Statement();
  swift_allocObject();

  result = sub_1B211B954(v12, (v8 + v10), v23, v11);
  if (v4)
  {
    *a3 = v4;
LABEL_11:
    v18 = *MEMORY[0x1E69E9840];
    return result;
  }

  if (!v23[0])
  {
    __break(1u);
    goto LABEL_14;
  }

  v13 = result;
  *(a2 + 56) = &v23[0][-v8];
  if (!result)
  {
    result = sub_1B211CE84();
LABEL_10:
    *a4 = 0;
    goto LABEL_11;
  }

  result = swift_beginAccess();
  if (!*(a2 + 64))
  {
LABEL_12:
    *a4 = v13;
    goto LABEL_11;
  }

  result = swift_beginAccess();
  v14 = *(a2 + 64);
  if (v14)
  {
    v15 = *(v14 + 16);

    v16 = sub_1B211B0B4();

    v17 = sub_1B211C0C4(v16, (a2 + 64));
    swift_endAccess();

    MEMORY[0x1EEE9AC00](v19);
    sub_1B21619D8(&qword_1EB7A10C0, &unk_1B2257E70);
    sub_1B2150658();
    swift_getKeyPath();

    v20 = sub_1B21506CC(v17);

    v22[0] = v20;
    v22[1] = MEMORY[0x1E69E7CC8];
    v21.values._rawValue = v22;
    Statement.setUncheckedArguments(_:)(v21);

    goto LABEL_12;
  }

LABEL_14:
  __break(1u);
  return result;
}

__n128 sub_1B211B734(__n128 *a1, __n128 *a2)
{
  result = *a1;
  a2[1].n128_u64[0] = a1[1].n128_u64[0];
  *a2 = result;
  return result;
}

uint64_t sub_1B211B748(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, int a5)
{
  v7 = *a4;
  v8 = a4[1];
  *(v5 + 64) = 0;
  *(v5 + 72) = 0;
  *(v5 + 16) = a1;
  v9 = sub_1B2252350();

  *(v5 + 24) = v9;
  *(v5 + 32) = a5;
  if (v7)
  {
    v10 = *(v7 + 16);
  }

  else
  {
    v10 = 0;
  }

  *(v5 + 40) = v10;
  *(v5 + 48) = v7 == 0;
  *(v5 + 56) = 0;
  swift_beginAccess();
  v11 = *(v5 + 64);
  v12 = *(v5 + 72);
  *(v5 + 64) = v7;
  *(v5 + 72) = v8;
  sub_1B211A378(v11);
  return v5;
}

uint64_t sub_1B211B804()
{
  v2 = *(v0 + 24);
  if (*(v0 + 56) >= *(v2 + 16) - 1)
  {
    result = sub_1B211CE84();
    if (!v1)
    {
      return 0;
    }
  }

  else
  {
    result = sub_1B211B4A8(v2 + 32, v0, &v4, &v5);
    if (!v1)
    {
      return v5;
    }
  }

  return result;
}

uint64_t sub_1B211B870(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 2u)
  {
  }

  return result;
}

uint64_t sub_1B211B888(uint64_t *a1, void (*a2)(void), uint64_t a3, uint64_t (*a4)(uint64_t))
{
  v5 = *a1;
  v6 = *(v4 + *a1);
  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v9 = v4;
    a2();
    swift_allocObject();
    sub_1B2113B28();

    v7 = a4(v10);
    v11 = *(v9 + v5);
    *(v9 + v5) = v7;
  }

  return v7;
}

uint64_t sub_1B211B954(uint64_t a1, const char *a2, const char **a3, unsigned int a4)
{
  v5 = v4;
  ppStmt[1] = *MEMORY[0x1E69E9840];
  v51 = *v4;
  v4[3] = 0;
  sub_1B211B358();
  v10 = MEMORY[0x1E69E7CC0];
  v5[4] = sub_1B2252190();
  *(v5 + 40) = 0;
  v5[6] = 0;
  v5[7] = 0;
  *(v5 + 64) = -1;
  v5[9] = v10;
  v5[11] = 0;
  v11 = MEMORY[0x1E69E7CC8];
  *(v5 + 96) = 1;
  v5[13] = v10;
  v5[14] = v11;
  v5[15] = 0;
  *(v5 + 128) = 1;
  v5[17] = 0;
  type metadata accessor for SchedulingWatchdog();
  if (sub_1B2117B40(a1))
  {
    v12 = sub_1B211B91C();
    sub_1B211B2A0();
    ppStmt[0] = 0;
    sub_1B21115FC();
    swift_beginAccess();
    v13 = sqlite3_prepare_v3(*(a1 + 16), a2, -1, a4, ppStmt, a3);
    if (!v13)
    {
      v30 = ppStmt[0];
      if (ppStmt[0])
      {
        v5[10] = a1;
        v5[2] = v30;
        sub_1B21115FC();
        swift_beginAccess();
        v31 = *(v12 + 24);
        swift_beginAccess();
        v32 = v5[4];
        v5[4] = v31;
        swift_unownedRetain();

        *(v5 + 40) = *(v12 + 40);
        v33 = *(v12 + 48);
        v34 = *(v12 + 56);
        v35 = v5[6];
        v36 = v5[7];
        v37 = *(v12 + 64);
        v5[6] = v33;
        v5[7] = v34;
        v38 = *(v5 + 64);
        *(v5 + 64) = v37;
        sub_1B211BD24(v33, v34, v37);
        sub_1B211BD38(v35, v36, v38);
        sub_1B21115FC();
        swift_beginAccess();
        v39 = *(v12 + 32);

        v40 = v5[9];
        v5[9] = v39;
      }

      else
      {

        v41 = v5[3];

        v42 = v5[4];

        sub_1B211BD38(v5[6], v5[7], *(v5 + 64));
        v43 = v5[9];

        v44 = v5[11];

        v46 = v5[13];
        v45 = v5[14];

        v47 = v5[17];

        sub_1B2122D30();

        v5 = 0;
      }

      goto LABEL_10;
    }

    v14 = v13;
    v15 = Database.lastErrorMessage.getter();
    v17 = v16;
    v50 = sub_1B22523F0();
    v19 = v18;
    sub_1B21AC298();
    swift_allocError();
    v21 = v20;
    if (v17)
    {
LABEL_6:
      *v21 = v14;
      *(v21 + 8) = v15;
      *(v21 + 16) = v17;
      *(v21 + 24) = v50;
      *(v21 + 32) = v19;
      *(v21 + 40) = 0;
      *(v21 + 48) = 0;
      *(v21 + 56) = 0;
      swift_willThrow();

      v23 = v5[3];

      v24 = v5[4];

      sub_1B211BD38(v5[6], v5[7], *(v5 + 64));
      v25 = v5[9];

      v26 = v5[11];

      v28 = v5[13];
      v27 = v5[14];

      v29 = v5[17];

      sub_1B2122D30();

LABEL_10:
      v48 = *MEMORY[0x1E69E9840];
      return v5;
    }

    if (sqlite3_errstr(v14))
    {
      v15 = sub_1B22523F0();
      v17 = v22;
      goto LABEL_6;
    }

    __break(1u);
  }

  sub_1B2117938();
  result = sub_1B2252EC0();
  __break(1u);
  return result;
}

uint64_t sub_1B211BD24(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 != 0xFF)
  {
    return sub_1B211C0AC(a1, a2, a3);
  }

  return a1;
}

uint64_t sub_1B211BD38(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 != 0xFF)
  {
    return sub_1B211B870(a1, a2, a3);
  }

  return a1;
}

uint64_t sub_1B211BD50()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GRDBInternal8Database__isSuspended);
  v2 = *(v1 + 24);

  [v2 lock];
  sub_1B2117330();
  swift_beginAccess();
  v7 = *(v1 + 16);
  sub_1B21184CC();
  sub_1B211C6E8(v3, v4, v5);
  [*(v1 + 24) unlock];
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> Statement.execute(arguments:)(GRDBInternal::StatementArguments_optional arguments)
{
  v3 = v1;
  v8 = *arguments.value.values._rawValue;
  sub_1B2119E50(&v8);
  if (!v2)
  {
    v4 = *(v1 + 80);
    v5 = *(v3 + 80);
    swift_unownedRetainStrong();
    Database.statementWillExecute(_:)(v3);
    sub_1B211D800();

    v6 = *(v3 + 16);
    do
    {
      v7 = sqlite3_step(v6);
    }

    while (v7 == 100);
    if (v7 == 101)
    {
      swift_unownedRetainStrong();
      Database.statementDidExecute(_:)(v3);
    }

    else
    {
      swift_unownedRetainStrong();
      sub_1B2122700(v3);
    }

    sub_1B211D800();
  }
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> Statement.validateArguments(_:)(GRDBInternal::StatementArguments a1)
{
  v3 = *a1.values._rawValue;
  v4 = *(a1.values._rawValue + 1);

  sub_1B211BF3C(v1, 0);
  if (!v2)
  {
  }
}

uint64_t sub_1B211BF3C(uint64_t a1, char a2)
{
  v5 = *(*v2 + 16);
  v6 = sub_1B211B0B4();

  v7 = sub_1B211C0C4(v6, v2);

  if (!v3 && (a2 & 1) == 0 && *(*v2 + 16))
  {

    sub_1B2252CD0();

    v8 = sub_1B2252FD0();
    MEMORY[0x1B2741EB0](v8);

    v9 = Statement.sql.getter();
    v11 = v10;
    sub_1B21AC298();
    swift_allocError();
    *v12 = 21;
    *(v12 + 8) = 0xD000000000000025;
    *(v12 + 16) = 0x80000001B2270150;
    *(v12 + 24) = v9;
    *(v12 + 32) = v11;
    *(v12 + 40) = 0;
    *(v12 + 48) = 0;
    *(v12 + 56) = 0;
    swift_willThrow();
  }

  return v7;
}

uint64_t sub_1B211C0AC(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 2u)
  {
  }

  return result;
}

uint64_t sub_1B211C0C4(uint64_t a1, void *a2)
{
  v4 = *(a1 + 16);
  if (!v4)
  {

    return MEMORY[0x1E69E7CC0];
  }

  v6 = a1;
  v49 = MEMORY[0x1E69E7CC0];
  sub_1B2114114();
  v7 = v49;
  v8 = (v6 + 40);
  while (1)
  {
    v44 = v7;
    v9 = *v8;
    if (!*v8)
    {
      break;
    }

    v6 = *(v8 - 1);
    v10 = a2[1];
    v11 = *(v10 + 16);
    v12 = *v8;

    if (v11 && (v13 = sub_1B211E590(), (v14 & 1) != 0))
    {
      v15 = *(v10 + 56) + 24 * v13;
      v3 = *v15;
      v2 = *(v15 + 8);
      LOBYTE(v6) = *(v15 + 16);
      sub_1B2113A20(*v15, v2, v6);
    }

    else
    {
      v16 = *a2;
      if (!*(*a2 + 16))
      {
        sub_1B2252CD0();

        sub_1B2118544();
        v45 = v31;
        v47 = v30;
        MEMORY[0x1B2741EB0](v6, v9);
        v32 = v45;
        v33 = v47;
        v34 = Statement.sql.getter();
        v7 = v35;
        sub_1B21AC298();
        v36 = sub_1B21152FC();
        goto LABEL_23;
      }

      v17 = sub_1B211639C();
      *a2 = v16;
      if (v17)
      {
        v18 = *(v16 + 24);
      }

      sub_1B2111C08();
      v20 = v19;
      *a2 = v19;
      sub_1B212A870((v19 + 4));
      v21 = v20[2];
      memmove(v20 + 4, v20 + 7, 24 * v21 - 24);
      v20[2] = v21 - 1;
      *a2 = v20;
    }

LABEL_16:
    v7 = v44;
    v28 = *(v44 + 16);
    if (v28 >= *(v44 + 24) >> 1)
    {
      sub_1B2114114();
      v7 = v44;
    }

    v8 += 2;
    *(v7 + 16) = v28 + 1;
    v29 = v7 + 24 * v28;
    *(v29 + 32) = v3;
    *(v29 + 40) = v2;
    *(v29 + 48) = v6;
    if (!--v4)
    {

      return v7;
    }
  }

  v22 = *a2;
  if (*(*a2 + 16))
  {
    v23 = sub_1B211639C();
    *a2 = v22;
    if (v23)
    {
      v24 = *(v22 + 24);
    }

    sub_1B2111C08();
    v26 = v25;
    *a2 = v25;
    sub_1B212A870((v25 + 4));
    v27 = v26[2];
    memmove(v26 + 4, v26 + 7, 24 * v27 - 24);
    v26[2] = v27 - 1;
    *a2 = v26;
    goto LABEL_16;
  }

  sub_1B2252CD0();

  sub_1B2118544();
  v46 = v39 + 9;
  v48 = v38;
  v40 = sub_1B2252FD0();
  MEMORY[0x1B2741EB0](v40);

  v32 = v46;
  v33 = v48;
  v34 = Statement.sql.getter();
  v7 = v41;
  sub_1B21AC298();
  v36 = sub_1B21152FC();
LABEL_23:
  sub_1B2112244(v36, v37);
  *(v42 + 8) = v32;
  *(v42 + 16) = v33;
  *(v42 + 24) = v34;
  *(v42 + 32) = v7;
  *(v42 + 40) = 0;
  *(v42 + 48) = 0;
  *(v42 + 56) = 0;
  swift_willThrow();

  return v7;
}

uint64_t sub_1B211C444()
{
  if (*(v0 + OBJC_IVAR____TtC12GRDBInternal8Database__readOnlyDepth) <= 0)
  {
    return *(v0 + OBJC_IVAR____TtC12GRDBInternal8Database_configuration + 1);
  }

  else
  {
    return 1;
  }
}

void sub_1B211C474(uint64_t a1)
{
  v2 = v1;
  sub_1B21115FC();
  swift_beginAccess();
  if (sub_1B2116B08(v1[5]))
  {
    sub_1B21118B8();
    swift_beginAccess();
    v4 = v1[6];
    v1[6] = MEMORY[0x1E69E7CC0];

    sub_1B2175F98();
    type metadata accessor for SchedulingWatchdog();
    v5 = sub_1B21114CC();
    if (!v5)
    {
      __break(1u);
      JUMPOUT(0x1B211C6C8);
    }

    v6 = *(v5 + 24);
    *(v5 + 24) = 0;
  }

  v7 = *(a1 + 64);
  v9 = *(a1 + 48);
  v8 = *(a1 + 56);
  switch(v7)
  {
    case 0:
      v10 = v2[3];
      v11 = sub_1B21146D8();
      sub_1B211BD24(v11, v12, 0);

      sub_1B21146D8();
      sub_1B2176FDC();
      goto LABEL_7;
    case 1:
      v21 = v2[3];
      v22 = sub_1B21146D8();
      sub_1B211BD24(v22, v23, 1u);

      sub_1B21146D8();
      sub_1B2177280();

      if (v2[4] || (v24 = v2[2], swift_unownedRetainStrong(), v25 = Database.isInsideTransaction.getter(), , (v25 & 1) != 0))
      {
        v26 = v2[3];
        if (sub_1B2176FA4())
        {
          sub_1B21214C0();
        }

LABEL_8:
        v16 = sub_1B21146D8();
        sub_1B211BD38(v16, v17, v7);
LABEL_9:
        v18 = v2[4];
        v2[4] = 0;
        if (v18 == 2)
        {
          v19 = v2[2];
          swift_unownedRetainStrong();
          v20 = sub_1B211C444();

          sub_1B21766E4((v20 & 1) == 0);
        }

        else if (v18 == 1)
        {
          sub_1B21213B0();
        }

        else
        {
          sub_1B211C6D8(v18);
        }
      }

      else
      {
        sub_1B2121A40();
        v27 = sub_1B21146D8();
        sub_1B211BD38(v27, v28, 1u);
      }

      break;
    case 2:
      v13 = v2[3];
      v14 = sub_1B21146D8();
      sub_1B211BD24(v14, v15, 2u);

      sub_1B21146D8();
      sub_1B2177080();
LABEL_7:

      goto LABEL_8;
    case 3:
      if (v9 ^ 1 | v8 || v2[4])
      {
        goto LABEL_9;
      }

      sub_1B2121A40();
      break;
    default:
      goto LABEL_9;
  }
}

void sub_1B211C6D8(id a1)
{
  if (a1 >= 3)
  {
  }
}

const char *sub_1B211C6E8(const char *result, uint64_t a2, uint64_t a3)
{
  if (*result == 1)
  {
    result = sub_1B2238D48();
    if (!v3)
    {
      if (result == 7102839 && v6 == 0xE300000000000000)
      {
      }

      else
      {
        v8 = sub_1B22531F0();

        if ((v8 & 1) == 0)
        {
LABEL_12:
          result = sub_1B2230638();
          if ((result & 1) == 0)
          {
            swift_beginAccess();
            sqlite3_exec(*(a2 + 16), "ROLLBACK", 0, 0, 0);
            v9 = Statement.sql.getter();
            v11 = v10;
            v13 = *(a3 + 104);
            v12 = *(a3 + 112);
            v14 = *(a2 + OBJC_IVAR____TtC12GRDBInternal8Database_configuration + 26);
            sub_1B21AC298();
            swift_allocError();
            *v15 = 4;
            *(v15 + 8) = 0xD000000000000015;
            *(v15 + 16) = 0x80000001B2270F90;
            *(v15 + 24) = v9;
            *(v15 + 32) = v11;
            *(v15 + 40) = v13;
            *(v15 + 48) = v12;
            *(v15 + 56) = v14;
            swift_willThrow();
          }

          return result;
        }
      }

      result = Statement.isReadonly.getter();
      if (result)
      {
        return result;
      }

      goto LABEL_12;
    }
  }

  return result;
}

void sub_1B211C87C(uint64_t a1)
{
  v2 = v1;
  v4 = v1[2];
  swift_unownedRetainStrong();
  v5 = sub_1B211C444();

  if ((v5 & 1) != 0 || (sub_1B21115FC(), swift_beginAccess(), !sub_1B2116B08(v2[5])))
  {
LABEL_49:
    v75 = v2[4];
    v2[4] = 0;
    sub_1B211C6D8(v75);
    return;
  }

  type metadata accessor for SchedulingWatchdog();
  v6 = sub_1B21114CC();
  if (v6)
  {
    v7 = v6;
    v8 = *(v6 + 24);
    *(v7 + 24) = v2;

    v9 = *(a1 + 72);
    v10 = *(v9 + 16);
    v82 = v2;
    if (v10 != 1)
    {
      if (v10)
      {
        v33 = v2[5];
        v80 = v33 & 0xC000000000000001;
        v81 = sub_1B2116B08(v33);
        v78 = v33 + 32;
        v79 = v33 & 0xFFFFFFFFFFFFFF8;

        v76 = v33;

        v34 = 0;
        v77 = MEMORY[0x1E69E7CC0];
        while (v34 != v81)
        {
          if (v80)
          {
            v35 = MEMORY[0x1B27427E0](v34, v76);
          }

          else
          {
            if (v34 >= *(v79 + 16))
            {
              goto LABEL_54;
            }

            v35 = *(v78 + 8 * v34);
          }

          v36 = __OFADD__(v34, 1);
          v37 = v34 + 1;
          if (v36)
          {
            goto LABEL_53;
          }

          v83 = v37;
          v38 = *(v9 + 16);
          swift_retain_n();
          v39 = 0;
          v85 = MEMORY[0x1E69E7CC0];
LABEL_28:
          v40 = (v9 + 56 + 32 * v39);
          while (v38 != v39)
          {
            if (v39 >= *(v9 + 16))
            {
              __break(1u);
              goto LABEL_51;
            }

            v42 = *(v40 - 3);
            v41 = *(v40 - 2);
            v43 = *(v40 - 1);
            v44 = *v40;
            v45 = sub_1B21155DC();
            sub_1B21785C4(v45, v46, v47, v48);
            v49 = sub_1B21155DC();
            if (sub_1B217605C(v49, v50, v51, v52))
            {
              v57 = v85;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v58 = *(v85 + 16);
                sub_1B216EBA0();
                v57 = v85;
              }

              v59 = *(v57 + 16);
              v60 = v59 + 1;
              if (v59 >= *(v57 + 24) >> 1)
              {
                sub_1B216EBA0();
                v60 = v59 + 1;
                v57 = v85;
              }

              ++v39;
              *(v57 + 16) = v60;
              v85 = v57;
              v61 = v57 + 32 * v59;
              *(v61 + 32) = v42;
              *(v61 + 40) = v41;
              *(v61 + 48) = v43;
              *(v61 + 56) = v44;
              goto LABEL_28;
            }

            v53 = sub_1B21155DC();
            sub_1B21505F8(v53, v54, v55, v56);
            v40 += 32;
            ++v39;
          }

          if (*(v85 + 16))
          {

            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v2 = v82;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              sub_1B2111614(isUniquelyReferenced_nonNull_native, v63, v64, v77);
              v77 = v67;
            }

            v65 = *(v77 + 16);
            if (v65 >= *(v77 + 24) >> 1)
            {
              sub_1B2161FE4();
              v77 = v68;
            }

            *(v77 + 16) = v65 + 1;
            v66 = (v77 + 24 * v65);
            v66[4] = v35;
            v66[5] = v85;
            v66[6] = v9;
            v34 = v83;
          }

          else
          {

            v2 = v82;
            v34 = v83;
          }
        }

        sub_1B21118B8();
        swift_beginAccess();
        v74 = v2[6];
        v12 = v77;
      }

      else
      {
        sub_1B21118B8();
        swift_beginAccess();
        v11 = v2[6];
        v12 = MEMORY[0x1E69E7CC0];
      }

LABEL_48:
      v2[6] = v12;

      sub_1B2175F98();
      goto LABEL_49;
    }

    v13 = *(v9 + 32);
    v14 = *(v9 + 40);
    v15 = *(v9 + 48);
    v16 = *(v9 + 56);
    v17 = v2[5];
    v18 = sub_1B2116B08(v17);
    sub_1B21785C4(v13, v14, v15, v16);

    v19 = 0;
    v84 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      if (v18 == v19)
      {

        v69 = sub_1B212CD60();
        sub_1B21505F8(v69, v70, v71, v72);
        v2 = v82;
        sub_1B21118B8();
        swift_beginAccess();
        v73 = v82[6];
        v12 = v84;
        goto LABEL_48;
      }

      if ((v17 & 0xC000000000000001) != 0)
      {
        v14 = MEMORY[0x1B27427E0](v19, v17);
      }

      else
      {
        if (v19 >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_52;
        }

        sub_1B2117C0C(v17 + 8 * v19);
      }

      v20 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      v21 = sub_1B212CD60();
      if (sub_1B217605C(v21, v22, v23, v24))
      {
        v25 = swift_isUniquelyReferenced_nonNull_native();
        if ((v25 & 1) == 0)
        {
          sub_1B2111614(v25, v26, v27, v84);
          v84 = v31;
        }

        v28 = *(v84 + 16);
        v29 = v28 + 1;
        if (v28 >= *(v84 + 24) >> 1)
        {
          sub_1B2161FE4();
          v29 = v28 + 1;
          v84 = v32;
        }

        *(v84 + 16) = v29;
        v30 = (v84 + 24 * v28);
        v30[5] = 0;
        v30[6] = 0;
        v30[4] = v14;
        v19 = v20;
      }

      else
      {

        ++v19;
      }
    }

LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
  }

  __break(1u);
}

uint64_t Statement.deinit()
{
  sqlite3_finalize(*(v0 + 16));
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  sub_1B211BD38(*(v0 + 48), *(v0 + 56), *(v0 + 64));
  v3 = *(v0 + 72);

  v4 = *(v0 + 80);
  swift_unownedRelease();
  v5 = *(v0 + 88);

  v7 = *(v0 + 104);
  v6 = *(v0 + 112);

  v8 = *(v0 + 136);

  return v0;
}

uint64_t Statement.__deallocating_deinit()
{
  Statement.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 144, 7);
}

uint64_t SQLStatementCursor.__deallocating_deinit()
{
  SQLStatementCursor.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 80, 7);
}

uint64_t sub_1B211CE84()
{
  result = swift_beginAccess();
  v2 = *(v0 + 64);
  if (v2 && (*(v0 + 48) & 1) == 0)
  {
    if (*(v2 + 16))
    {
      v3 = *(v0 + 40);
      sub_1B2252CD0();

      v4 = sub_1B2252FD0();
      MEMORY[0x1B2741EB0](v4);

      sub_1B21AC298();
      v5 = sub_1B21152FC();
      sub_1B2112244(v5, v6);
      *(v7 + 8) = 0xD000000000000025;
      *(v7 + 16) = 0x80000001B2270150;
      *(v7 + 24) = 0u;
      *(v7 + 40) = 0u;
      *(v7 + 56) = 0;
      return swift_willThrow();
    }
  }

  return result;
}

uint64_t sub_1B211CF8C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1B211CFCC(uint64_t a1)
{
  *(v1 + 80) = sub_1B211DF80(MEMORY[0x1E69E7CC0]);
  *(v1 + 88) = v3;
  *(v1 + 56) = a1;
  v4 = *(a1 + 16);
  *(v1 + 64) = v4;
  swift_retain_n();
  v5 = sub_1B211DAEC(v4, a1);
  *(v1 + 40) = &type metadata for StatementRowImpl;
  *(v1 + 48) = &off_1F2977710;
  *(v1 + 16) = v5;
  *(v1 + 24) = v6;
  *(v1 + 32) = v7;
  LODWORD(v4) = sqlite3_column_count(*(v1 + 64));

  *(v1 + 72) = v4;
  return v1;
}

uint64_t sub_1B211D084(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v6 = swift_allocObject();
  sub_1B21230F0(a1, a2, a3);
  return v6;
}

sqlite3_int64 sub_1B211D0EC@<X0>(sqlite3_stmt *a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  result = sqlite3_column_int64(a1, a2);
  *a3 = result;
  *(a3 + 8) = 0;
  return result;
}

void sub_1B211D118(uint64_t a1, char a2, void *a3)
{
  v4 = 0;
  v28 = *(a1 + 16);
  for (i = (a1 + 64); ; i += 5)
  {
    if (v28 == v4)
    {

      return;
    }

    if (v4 >= *(a1 + 16))
    {
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      sub_1B2253390();
      __break(1u);
      goto LABEL_22;
    }

    v30 = v4;
    v7 = *(i - 4);
    v6 = *(i - 3);
    v8 = *(i - 1);
    v9 = *i;
    v10 = *a3;
    v31 = *(i - 2);

    v12 = sub_1B211E590();
    v13 = v10[2];
    v14 = (v11 & 1) == 0;
    v15 = v13 + v14;
    if (__OFADD__(v13, v14))
    {
      goto LABEL_19;
    }

    v16 = v11;
    if (v10[3] < v15)
    {
      break;
    }

    if (a2)
    {
      if (v11)
      {
        goto LABEL_14;
      }
    }

    else
    {
      sub_1B21619D8(&qword_1EB7A1BC0, &qword_1B2259950);
      sub_1B2252E80();
      if (v16)
      {
        goto LABEL_14;
      }
    }

LABEL_11:
    v20 = *a3;
    *(*a3 + 8 * (v12 >> 6) + 64) |= 1 << v12;
    v21 = (v20[6] + 16 * v12);
    *v21 = v7;
    v21[1] = v6;
    v22 = (v20[7] + 24 * v12);
    *v22 = v31;
    v22[1] = v8;
    v22[2] = v9;
    v23 = v20[2];
    v24 = __OFADD__(v23, 1);
    v25 = v23 + 1;
    if (v24)
    {
      goto LABEL_20;
    }

    v20[2] = v25;
    v4 = v30 + 1;
    a2 = 1;
  }

  sub_1B224560C(v15, a2 & 1);
  v17 = *a3;
  v18 = sub_1B211E590();
  if ((v16 & 1) != (v19 & 1))
  {
    goto LABEL_21;
  }

  v12 = v18;
  if ((v16 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_14:
  v26 = swift_allocError();
  swift_willThrow();
  v27 = v26;
  sub_1B21619D8(qword_1EB7A0F98, &unk_1B22595B0);
  if ((swift_dynamicCast() & 1) == 0)
  {

    return;
  }

LABEL_22:
  sub_1B2252CD0();
  MEMORY[0x1B2741EB0](0xD00000000000001BLL, 0x80000001B226CFA0);
  sub_1B2252E10();
  MEMORY[0x1B2741EB0](39, 0xE100000000000000);
  sub_1B2252EC0();
  __break(1u);
}

uint64_t static Row.fetchOne(_:arguments:adapter:)(uint64_t a1, __int128 *a2, uint64_t a3)
{
  v10 = *a2;
  static Row.fetchCursor(_:arguments:adapter:)(a1, &v10, a3);
  if (!v3)
  {
    v4 = sub_1B211EB44();
    if (v4)
    {
      v6 = v4[5];
      v7 = v4[6];
      sub_1B21139A0(v4 + 2, v6);
      v8 = *(v7 + 112);

      v8(v9, v6, v7);
    }
  }

  return sub_1B2122C74();
}

uint64_t sub_1B211D53C()
{

  return type metadata accessor for QueryInterfaceRequest();
}

void sub_1B211D554(uint64_t a1@<X8>)
{
  v4 = *(v2 + a1 * v3 + 16);
  *(v2 + 16) = a1 - 1;
  *(v1 + 24) = v2;
}

uint64_t sub_1B211D580()
{

  return sub_1B22531F0();
}

uint64_t sub_1B211D59C()
{

  return type metadata accessor for DatabaseFunction();
}

__n128 sub_1B211D5C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __n128 a10, __int128 a11, uint64_t a12)
{
  result = a10;
  *v12 = a10;
  *(v12 + 16) = a11;
  *(v12 + 32) = a12;
  return result;
}

void *sub_1B211D5DC(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char __dst, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char __src)
{

  return memcpy(&__dst, &__src, 0xA2uLL);
}

void *sub_1B211D5F8()
{

  return memcpy(&STACK[0x250], &STACK[0x3A0], 0xA3uLL);
}

void *sub_1B211D64C()
{
  v1 = v0[6];
  result = sub_1B21139A0(v0 + 2, v0[5]);
  v3 = *(v1 + 56);
  return result;
}

void sub_1B211D6D0()
{
  sub_1B21117B4(v0, 0, 1, v1);
  v3 = *(v2 - 96);
  v4 = *(v2 - 88);

  TableRequest<>.filter<A>(key:)();
}

void sub_1B211D75C()
{

  JUMPOUT(0x1B2741EB0);
}

uint64_t sub_1B211D778()
{

  return sub_1B211AF1C(&STACK[0x6C8], &STACK[0x3D8]);
}

uint64_t sub_1B211D790(uint64_t a1)
{

  return sub_1B2119120(a1);
}

uint64_t sub_1B211D7E8()
{
  v2 = *(v0 + 16);

  return sub_1B212EBC0();
}

uint64_t sub_1B211D840(uint64_t a1)
{
  *(a1 + 8) = v1;
  v3 = *(v2 + 48);
  return *(v2 + 16);
}

uint64_t sub_1B211D850()
{

  return type metadata accessor for QueryInterfaceRequest();
}

uint64_t sub_1B211D894@<X0>(void *a1@<X8>)
{

  return sub_1B218E934(v3, v2, v1, a1);
}

uint64_t sub_1B211D8D0()
{

  return swift_beginAccess();
}

uint64_t sub_1B211D8EC()
{

  return sub_1B2252E70();
}

void sub_1B211D90C()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[6];
}

unint64_t sub_1B211D920(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v5 = sub_1B211DAE0(a3);

  return sub_1B21BF944(a2, v5, a3);
}

void sub_1B211D970()
{

  sub_1B214400C();
}

uint64_t sub_1B211D9CC()
{

  return swift_getAssociatedTypeWitness();
}

id sub_1B211D9EC(id a1, SEL a2, uint64_t a3)
{

  return [a1 a2];
}

void sub_1B211DA34()
{
  v2 = *(*(v0 + 40) + 16);

  sub_1B21617F4();
}

void *sub_1B211DA54(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char __src)
{

  return memcpy((v23 + 32), &__src, 0xB8uLL);
}

uint64_t sub_1B211DA88()
{
}

uint64_t sub_1B211DAA0()
{

  return swift_getWitnessTable();
}

uint64_t sub_1B211DAEC(sqlite3_stmt *a1, uint64_t a2)
{
  result = sqlite3_column_count(a1);
  if ((result & 0x80000000) != 0)
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    return result;
  }

  v4 = MEMORY[0x1E69E7CC0];
  if (result)
  {
    v22 = a2;
    v5 = result;
    v25 = MEMORY[0x1E69E7CC0];
    sub_1B2116B10();
    v6 = 0;
    v7 = v25;
    while (1)
    {
      result = sqlite3_column_name(a1, v6);
      if (!result)
      {
        goto LABEL_23;
      }

      sub_1B22523F0();
      v8 = sub_1B2252220();
      v10 = v9;

      v11 = *(v25 + 16);
      v12 = v11 + 1;
      if (v11 >= *(v25 + 24) >> 1)
      {
        sub_1B2116B10();
      }

      ++v6;
      *(v25 + 16) = v12;
      v13 = v25 + 16 * v11;
      *(v13 + 32) = v8;
      *(v13 + 40) = v10;
      if (v5 == v6)
      {
        goto LABEL_11;
      }
    }
  }

  v12 = *(MEMORY[0x1E69E7CC0] + 16);
  if (v12)
  {
    v22 = a2;
    v7 = MEMORY[0x1E69E7CC0];
LABEL_11:
    result = sub_1B211E89C(0, v12, 0);
    v14 = 0;
    v15 = v4;
    v24 = *(v7 + 16);
    v16 = (v7 + 40);
    while (v24 != v14)
    {
      if (v14 >= *(v7 + 16))
      {
        goto LABEL_21;
      }

      v17 = *(v16 - 1);
      v18 = *v16;
      v19 = *(v15 + 16);
      v20 = *(v15 + 24);

      if (v19 >= v20 >> 1)
      {
        result = sub_1B211E89C(v20 > 1, v19 + 1, 1);
      }

      *(v15 + 16) = v19 + 1;
      v21 = (v15 + 24 * v19);
      v21[4] = v17;
      v21[5] = v18;
      v21[6] = v14++;
      v16 += 2;
      if (v12 == v14)
      {

        a2 = v22;
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v15 = MEMORY[0x1E69E7CC0];

LABEL_18:
  sub_1B211E40C(v15);
  return a2;
}

Swift::Void __swiftcall Statement.setUncheckedArguments(_:)(GRDBInternal::StatementArguments a1)
{
  v2 = *a1.values._rawValue;
  v3 = *(a1.values._rawValue + 1);
  v4 = *(v1 + 104);
  v5 = *(v1 + 112);
  *(v1 + 104) = *a1.values._rawValue;
  *(v1 + 112) = v3;
  v56 = v2;

  *(v1 + 96) = 0;
  sub_1B211A000();
  sub_1B212357C();
  v6 = sub_1B211B0B4();
  v7 = 0;
  v8 = 0;
  v9 = v6 + 40;
  v52 = v6 + 40;
  v10 = -*(v6 + 16);
  v11 = 1;
  v53 = v3;
  v54 = v6;
  v51 = v10;
LABEL_2:
  v12 = 0;
  v57 = v10 + v7;
  v55 = v11;
  v13 = v11 - 0x7FFFFFFF;
  for (i = (v9 + 16 * v7); ; i += 2)
  {
    if (!(v13 + v12))
    {
      __break(1u);
LABEL_18:
      __break(1u);
LABEL_19:
      __break(1u);
      swift_unexpectedError();
      __break(1u);
      return;
    }

    if (!(v57 + v12))
    {
      break;
    }

    if ((v7 + v12) >= *(v6 + 16))
    {
      goto LABEL_18;
    }

    if (!*i)
    {
      goto LABEL_10;
    }

    if (!*(v3 + 16))
    {
      goto LABEL_10;
    }

    v15 = *(i - 1);
    v16 = *i;
    v17 = v7;
    v18 = v8;

    v19 = sub_1B211E590();
    v21 = v20;

    v8 = v18;
    v7 = v17;
    if (v21)
    {
      v22 = *(v3 + 56) + 24 * v19;
      v23 = *v22;
      v24 = *(v22 + 8);
      v25 = *(v22 + 16);
      v26 = sub_1B2118388();
      sub_1B2113A20(v26, v27, v28);
      v29 = sub_1B2118388();
      sub_1B2123648(v29, v30, v31, v55 + v12);
      v32 = sub_1B2118388();
      v3 = v53;
      v6 = v54;
      sub_1B2113A44(v32, v33, v34);
      v8 = v18;
      v7 = v17;
    }

    else
    {
LABEL_10:
      v35 = *(v56 + 16);
      if (v8 != v35)
      {
        if (v8 < v35)
        {
          v36 = v7 + v12 + 1;
          v37 = v8 + 1;
          v38 = v56 + 32 + 24 * v8;
          v40 = *v38;
          v39 = *(v38 + 8);
          v41 = *(v38 + 16);
          v42 = sub_1B2116444();
          sub_1B2113A20(v42, v43, v44);
          v45 = sub_1B2116444();
          sub_1B2123648(v45, v46, v47, v55 + v12);
          v48 = sub_1B2116444();
          v6 = v54;
          sub_1B2113A44(v48, v49, v50);
          v7 = v36;
          v11 = v55 + v12 + 1;
          v8 = v37;
          v9 = v52;
          v10 = v51;
          goto LABEL_2;
        }

        goto LABEL_19;
      }
    }

    ++v12;
  }
}

uint64_t sub_1B211DF80(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v10 = MEMORY[0x1E69E7CC0];
    sub_1B2116B10();
    v3 = (a1 + 40);
    do
    {
      v5 = *(v3 - 1);
      v4 = *v3;
      v6 = *(v10 + 16);
      v7 = *(v10 + 24);

      if (v6 >= v7 >> 1)
      {
        sub_1B2116B10();
      }

      *(v10 + 16) = v6 + 1;
      v8 = v10 + 16 * v6;
      *(v8 + 32) = v5;
      *(v8 + 40) = v4;
      v3 += 5;
      --v2;
    }

    while (v2);
  }

  sub_1B2116938(a1, &qword_1EB7A1BB8, &unk_1B226C230, sub_1B211D118);
  return sub_1B2117220();
}

void Row._checkIndex(_:file:line:)(uint64_t a1)
{
  if (a1 < 0 || (sub_1B224B374(), v2 ^ v3 | v1))
  {
    sub_1B2111608();
    sub_1B2115AF4();
    sub_1B2252EC0();
    __break(1u);
  }
}

uint64_t static Row.fetchCursor(_:arguments:adapter:)(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = a2[1];
  v9 = *a2;
  sub_1B211E1E0(a3, v8, &qword_1EB7A1370, &unk_1B2257580);
  type metadata accessor for RowCursor();
  v4 = swift_allocObject();
  v5 = sub_1B2113B50();
  sub_1B211CF8C(v5);

  sub_1B211E268(v6, &v9, v8);
  return v4;
}

uint64_t sub_1B211E17C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_1B21619D8(a3, a4);
  sub_1B2111808(v6);
  (*(v7 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1B211E1E0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = sub_1B224B650(a1, a2, a3, a4);
  sub_1B2111808(v5);
  v7 = *(v6 + 16);
  v8 = sub_1B2112FD0();
  v9(v8);
  return v4;
}

uint64_t *sub_1B211E268(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v5 = v3;
  v8 = *v3;
  v10 = *a2;
  v9 = a2[1];
  *(v3 + 24) = 0;
  v3[2] = a1;
  type metadata accessor for Row();
  swift_allocObject();
  v11 = swift_retain_n();
  sub_1B211CFCC(v11);
  v17[3] = type metadata accessor for Statement();
  v17[4] = &protocol witness table for Statement;
  v17[0] = a1;

  v12 = sub_1B211E6DC(a3, v17);

  if (v4)
  {
    v13 = sub_1B2117214();
    sub_1B211A378(v13);

    sub_1B212ACBC(a3, &qword_1EB7A1370);
    sub_1B2113208(v17);
    v14 = v5[2];

    swift_deallocPartialClassInstance();
  }

  else
  {
    sub_1B2113208(v17);
    v5[4] = v12;
    v17[0] = v10;
    v17[1] = v9;
    sub_1B2119E50(v17);
    sub_1B212ACBC(a3, &qword_1EB7A1370);

    v15 = sub_1B2117214();
    sub_1B211A378(v15);
  }

  return v5;
}

uint64_t sub_1B211E40C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_1B21619D8(&qword_1EB7A2168, &unk_1B226ACD0);
    v3 = sub_1B2252F00();
  }

  else
  {
    v3 = MEMORY[0x1E69E7CC8];
  }

  v6 = v3;
  sub_1B211E8BC(a1, 1, &v6);
  v4 = v6;
  if (v1)
  {
  }

  return v4;
}

uint64_t sub_1B211E510()
{
}

unint64_t sub_1B211E590()
{
  sub_1B2117FC0();
  sub_1B21224DC();
  sub_1B211473C();
  sub_1B2252370();
  sub_1B2253470();
  v0 = sub_1B2111F44();

  return sub_1B211E5F4(v0, v1, v2);
}

unint64_t sub_1B211E5F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (sub_1B22531F0() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

void *sub_1B211E6C0()
{
  v2 = v0[6];
  v3 = v0[5];

  return sub_1B21139A0(v0 + 2, v3);
}

uint64_t *sub_1B211E6DC(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v6 = *v4;
  sub_1B2122784(a1, &v21);
  if (v22)
  {
    sub_1B21217FC(&v21, v24);
    v7 = v25;
    v8 = v26;
    v9 = sub_1B21139A0(v24, v25);
    sub_1B2111A1C(v9, v9, *(v8 + 8));
    v10(&v21, a2, v7);
    if (!v3)
    {
      v11 = v22;
      v12 = v23;
      sub_1B21A1628(&v21, v22);
      sub_1B21115E0();
      v14 = *(v13 + 64);
      MEMORY[0x1EEE9AC00](v15);
      v17 = &v21 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v18 + 16))(v17);

      v4 = sub_1B21B64A0(v19, v17, v6, v11, v12);
      sub_1B2113208(&v21);
    }

    sub_1B2113208(v24);
  }

  else
  {
    sub_1B211EA78(&v21);
  }

  return v4;
}

uint64_t sub_1B211E89C(uint64_t a1, int64_t a2, char a3)
{
  result = sub_1B216F4EC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_1B211E8BC(uint64_t a1, char a2, void *a3)
{
  v4 = 0;
  v34 = *(a1 + 16);
  for (i = (a1 + 48); ; i += 3)
  {
    if (v34 == v4)
    {
    }

    if (v4 >= *(a1 + 16))
    {
      break;
    }

    v7 = *(i - 2);
    v6 = *(i - 1);
    v8 = *i;
    v9 = *a3;

    v17 = sub_1B211E590();
    v18 = v9[2];
    v19 = (v10 & 1) == 0;
    v20 = v18 + v19;
    if (__OFADD__(v18, v19))
    {
      goto LABEL_17;
    }

    v21 = v10;
    if (v9[3] >= v20)
    {
      if ((a2 & 1) == 0)
      {
        sub_1B21619D8(&qword_1EB7A2170, &qword_1B225B0C0);
        sub_1B2252E80();
      }
    }

    else
    {
      sub_1B2245A94(v20, a2 & 1, v11, v12, v13, v14, v15, v16, v32, v33, v34, SBYTE4(v34));
      v22 = *a3;
      v23 = sub_1B211E590();
      if ((v21 & 1) != (v24 & 1))
      {
        goto LABEL_19;
      }

      v17 = v23;
    }

    v25 = *a3;
    if (v21)
    {
      v26 = *(v25[7] + 8 * v17);

      *(v25[7] + 8 * v17) = v26;
    }

    else
    {
      v25[(v17 >> 6) + 8] |= 1 << v17;
      v27 = (v25[6] + 16 * v17);
      *v27 = v7;
      v27[1] = v6;
      *(v25[7] + 8 * v17) = v8;
      v28 = v25[2];
      v29 = __OFADD__(v28, 1);
      v30 = v28 + 1;
      if (v29)
      {
        goto LABEL_18;
      }

      v25[2] = v30;
    }

    ++v4;
    a2 = 1;
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  result = sub_1B2253390();
  __break(1u);
  return result;
}

uint64_t sub_1B211EA78(uint64_t a1)
{
  v2 = sub_1B21619D8(&qword_1EB7A1370, &unk_1B2257580);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B211EAE0()
{
  v1 = *(v0 - 128);
  v2 = *(v0 - 120);
  result = *(v0 - 96);
  v4 = *(v0 - 88);
  return result;
}

void sub_1B211EAF4()
{

  JUMPOUT(0x1B2741EB0);
}

void sub_1B211EB14()
{

  JUMPOUT(0x1B2741EB0);
}

void sub_1B211EB30(uint64_t a1@<X8>)
{
  v4 = (*(v1 + 48) + 16 * a1);
  *v4 = v2;
  v4[1] = v3;
  v5 = *(v1 + 56);
}

uint64_t sub_1B211EB44()
{
  sub_1B2116AD0();
  swift_beginAccess();
  if (*(v0 + 24))
  {
    return 0;
  }

  sub_1B2131988();
  v3 = sub_1B2122D50();
  result = sub_1B211ED00(v3);
  if (!v1 && !result)
  {
    *(v0 + 24) = 1;
  }

  return result;
}

uint64_t RowCursor.__deallocating_deinit()
{
  RowCursor.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 40, 7);
}

uint64_t RowCursor.deinit()
{
  v1 = v0;
  v2 = *(v0 + 16);

  sub_1B211A000();

  v3 = *(v1 + 16);

  v4 = *(v1 + 32);

  return v1;
}

uint64_t *Row.deinit()
{
  sub_1B2113208(v0 + 2);
  v1 = v0[7];

  v3 = v0[10];
  v2 = v0[11];

  return v0;
}

uint64_t Row.__deallocating_deinit()
{
  Row.deinit();
  v0 = sub_1B212D678();

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1B211ECB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_1B211EDD8(a1, a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_1B211ED00(uint64_t a1)
{
  if (!sub_1B2115AA0(a1))
  {
    sub_1B2118184();
    v7 = sub_1B211497C();
    Database.statementWillExecute(_:)(v7);
    v1 = v2;
    if (v2)
    {
      goto LABEL_11;
    }
  }

  if (sqlite3_step(v3) == 100)
  {
    v8 = sub_1B2115468();
    sub_1B211ECE4(v8, v9);
    if (!v2)
    {

      return v10;
    }
  }

  sub_1B21122DC();
  if (!v4)
  {
    sub_1B2118184();
    sub_1B2122398();
LABEL_11:
  }

  sub_1B2118184();
  v5 = sub_1B211497C();
  Database.statementDidExecute(_:)(v5);
  sub_1B211DA88();

  if (!v1)
  {
    return 0;
  }

  return result;
}

uint64_t sub_1B211EE68(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t Statement.columnNames.getter()
{
  if (*(v0 + 24))
  {
    v1 = *(v0 + 24);
  }

  else
  {
    sub_1B2147038(v0);
    v1 = v2;
    v3 = *(v0 + 24);
    *(v0 + 24) = v2;
  }

  return v1;
}

uint64_t sub_1B211EF2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9[3] = &type metadata for StatementCopyRowImpl;
  v9[4] = &off_1F2977620;
  v9[0] = a1;
  v9[1] = a2;
  v5 = sub_1B211DF80(MEMORY[0x1E69E7CC0]);
  sub_1B2111910(v5, v6, v7);
  *(a3 + 72) = *(a2 + 16);
  sub_1B2113208(v9);
  return a3;
}

void Row.fastDecode<A>(_:atUncheckedIndex:)()
{
  sub_1B2111640();
  sub_1B224B23C();
  v1 = *(v0 + 56);
  sub_1B2117214();
  sub_1B214EC88();
  v2();
  sub_1B2112FDC();
}

uint64_t sub_1B211EFE0()
{

  return sub_1B2127DC0(v0 + 2840, v0 + 1752);
}

uint64_t sub_1B211EFF8@<X0>(uint64_t a1@<X8>)
{
  *(v1 - 72) = a1;

  return sub_1B2252B00();
}

uint64_t sub_1B211F028(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void (*a9)(__int128 *, uint64_t, _BYTE *, uint64_t, uint64_t))
{
  v16 = *(a5 + 48);
  v17 = sub_1B212CFD8(a1, a2);
  v18(v17);
  v29 = v31;
  v30 = v32;
  v22 = a3;
  v23 = a4;
  v24 = a5;
  v25 = a6;
  v26 = a7;
  v27 = v9;
  v28 = a2;
  a9(&v29, a8, v21, a4, a6);
  return sub_1B2113A44(v29, *(&v29 + 1), v30);
}

__n128 sub_1B211F19C(__int128 *a1)
{
  v2 = *a1;
  v3 = a1[1];
  result = a1[2];
  v4 = a1[3];
  return result;
}

void *sub_1B211F1B0(void *a1)
{

  return memcpy(a1, (v1 + 3008), 0xA3uLL);
}

void sub_1B211F1C8()
{

  JUMPOUT(0x1B2741EB0);
}

void sub_1B211F1E0(GRDBInternal::StatementArguments_optional a1@<0:X0, 8:X1, 16:W2.1>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X7>, uint64_t a7, uint64_t a8)
{
  a7 = 0;
  a8 = 0;
  a1.value.values._rawValue = &a7;

  Statement.execute(arguments:)(a1);
}

uint64_t sub_1B211F20C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = static Bool.fromDatabaseValue(_:)(a1);
  *a2 = result;
  return result;
}

uint64_t static Bool.fromDatabaseValue(_:)(uint64_t a1)
{
  v1 = (*a1 & 0x7FFFFFFFFFFFFFFFLL) != 0;
  if (*(a1 + 16) != 1)
  {
    v1 = 2;
  }

  if (*(a1 + 16))
  {
    return v1;
  }

  else
  {
    return *a1 != 0;
  }
}

uint64_t RangeReplaceableCollection.init<A>(_:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  sub_1B2252980();
  sub_1B211F33C();
  v5 = sub_1B211401C();
  v6(v5);
  result = swift_unknownObjectRelease();
  if (v2)
  {
    sub_1B2111808(a1);
    return (*(v8 + 8))(a2, a1);
  }

  return result;
}

void sub_1B211F354()
{

  sub_1B2116B10();
}

void sub_1B211F39C()
{
  v3 = *(v0 + 56);
  v2 = *(v0 + 64);
  *(v1 - 144) = v0;
  v4 = *(v0 + 72);
}

uint64_t sub_1B211F3F8(uint64_t a1, void (*a2)(char *), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v18 = a2;
  v9 = *(a6 + 8);
  v10 = *(v9 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = *(AssociatedTypeWitness - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v15 = &v17 - v14;
  result = (*(v9 + 40))(a1, a5, v9);
  if (!v6)
  {
    v18(v15);
    return (*(v12 + 8))(v15, AssociatedTypeWitness);
  }

  return result;
}

uint64_t static DatabaseValueConvertible<>.fetchAll(_:arguments:adapter:)()
{
  sub_1B2114774();
  sub_1B2117FF8(v1, v2);
  result = static DatabaseValueConvertible<>.fetchCursor(_:arguments:adapter:)(v3, v4, v5, v6, v7, v8);
  if (!v0)
  {
    sub_1B22526A0();
    sub_1B2116A40();
    type metadata accessor for FastDatabaseValueCursor();
    sub_1B21119A4();
    sub_1B21165B0();
    WitnessTable = swift_getWitnessTable();
    sub_1B2115C0C(WitnessTable, v11, v12);
    return v13;
  }

  return result;
}

uint64_t sub_1B211F648()
{

  return sqlite3_column_type(v1, v0);
}

uint64_t *sub_1B211F69C(uint64_t *result)
{
  v1 = *result;
  v2 = result[1];
  v3 = *(result + 32);
  v4 = *(result + 33);
  v5 = *(result + 34);
  return result;
}

void sub_1B211F6B0()
{

  JUMPOUT(0x1B2741EB0);
}

uint64_t sub_1B211F6E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  sub_1B2112F4C(v16);
  sub_1B2112F4C(a14);

  return sub_1B2112F4C(a16);
}

id sub_1B211F72C@<X0>(uint64_t a1@<X8>)
{
  v4 = *(*(v2 + 56) + ((a1 << 9) | (8 * v1)));

  return v4;
}

uint64_t sub_1B211F758(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  v7 = *a4;
  v8 = a4[1];

  return sub_1B2122784(a5, va);
}

uint64_t sub_1B211F7D4(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  WitnessTable = swift_getWitnessTable();
  return DatabaseCursor.forEach(_:)(a1, a2, v5, WitnessTable);
}

uint64_t DatabaseCursor.forEach(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a4 + 8);
  result = (*(v7 + 16))(a3, v7);
  if ((result & 1) == 0)
  {
    v9 = (*(a4 + 16))(a3, a4);
    MEMORY[0x1EEE9AC00](v9);
    Statement.forEachStep(_:)(sub_1B211F3D4);
    sub_1B211D800();

    if (!v4)
    {
      return (*(v7 + 24))(1, a3, v7);
    }
  }

  return result;
}

uint64_t Statement.forEachStep(_:)(uint64_t (*a1)(sqlite3_stmt *))
{
  type metadata accessor for SchedulingWatchdog();
  v4 = *(v1 + 80);
  v5 = swift_unownedRetainStrong();
  if (sub_1B2117B40(v5))
  {

    v6 = *(v1 + 16);
    if (sqlite3_stmt_busy(v6) || (swift_unownedRetainStrong(), sub_1B2111BFC(), Database.statementWillExecute(_:)(v10), result = sub_1B211DA88(), !v2))
    {
      while (1)
      {
        v7 = sqlite3_step(v6);
        if (v7 != 100)
        {
          break;
        }

        result = a1(v6);
        if (v2)
        {
          return result;
        }
      }

      if (v7 == 101)
      {
        swift_unownedRetainStrong();
        sub_1B2111BFC();
        Database.statementDidExecute(_:)(v9);
      }

      else
      {
        swift_unownedRetainStrong();
        sub_1B2111BFC();
        Database.statementDidFail(_:withResultCode:)(v11, v12);
      }

      return sub_1B211DA88();
    }
  }

  else
  {
    sub_1B2112EA0();
    sub_1B2117938();
    result = sub_1B2252EC0();
    __break(1u);
  }

  return result;
}

uint64_t FastDatabaseValueCursor._element(sqliteStatement:)()
{
  sub_1B212CFBC();
  v4 = *(v3 + 80);
  v5 = sub_1B2252B00();
  sub_1B211280C(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  sub_1B21117FC();
  MEMORY[0x1EEE9AC00](v10);
  sub_1B21182D8();
  v11 = *(v0 + 28);
  v12 = sub_1B21115F0();
  v14 = sqlite3_column_type(v12, v13);
  if (v14 != 5)
  {
    v15 = sub_1B2117C60();
    v16(v15);
    if (sub_1B2122A98(v2, 1, v4) != 1)
    {
      sub_1B2111808(v4);
      return (*(v17 + 32))(v1, v2, v4);
    }

    v14 = (*(v7 + 8))(v2, v5);
  }

  MEMORY[0x1EEE9AC00](v14);
  sub_1B21156F0();
  *(v19 - 16) = sub_1B21A3058;
  *(v19 - 8) = v0;
  v20 = sub_1B21115F0();
  static DatabaseValueConvertible<>._valueMismatch(fromStatement:atUncheckedIndex:context:)(v20, v21, v22, v23, v4);
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_1B211FC88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *(*(a5 + 8) + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1B211280C(AssociatedTypeWitness);
  v10 = *(v9 + 64);
  sub_1B21117FC();
  MEMORY[0x1EEE9AC00](v11);
  sub_1B21182D8();
  (*(v12 + 16))(v5, a1);
  sub_1B211314C();
  return sub_1B2252960();
}

void *sub_1B211FE14(void *a1)
{

  return memcpy(a1, &STACK[0x748], 0xB8uLL);
}

uint64_t sub_1B211FE3C(uint64_t a1, uint64_t a2)
{

  return sub_1B2181640(a1, a2, v4, v2, v3);
}

void *sub_1B211FE78(void *a1)
{
  result = sub_1B21139A0(a1, v1);
  v4 = *(v2 + 8);
  return result;
}

sqlite3 *Database.isInsideTransaction.getter()
{
  sub_1B21233F8();
  type metadata accessor for SchedulingWatchdog();
  v1 = sub_1B2113B28();
  if (sub_1B2117B40(v1))
  {
    sub_1B2122734();
    swift_beginAccess();
    result = *(v0 + 16);
    if (result)
    {
      return (sqlite3_get_autocommit(result) == 0);
    }
  }

  else
  {
    sub_1B2111608();
    sub_1B2112ECC();
    result = sub_1B2252EC0();
    __break(1u);
  }

  return result;
}

uint64_t sub_1B211FF34(void *a1)
{
  v2 = (v1 + *a1);
  if (v2[1])
  {
    v1 = *v2;
    v3 = v2[1];
  }

  else
  {
    type metadata accessor for Statement();
    v4 = sub_1B2252190();
    v5 = *v2;
    v6 = v2[1];
    *v2 = v1;
    v2[1] = v4;
    swift_unownedRetain();
    swift_unownedRetain();

    v7 = sub_1B2112F9C();
    sub_1B2120024(v7, v8);
  }

  v9 = sub_1B211187C();
  sub_1B211FFE4(v9, v10);
  return v1;
}

uint64_t sub_1B211FFE4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    swift_unownedRetain();
  }

  return result;
}

uint64_t sub_1B2120024(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    swift_unownedRelease();
  }

  return result;
}

uint64_t sub_1B2120064(uint64_t a1, uint64_t a2)
{
  v18 = a2;
  v3 = v2;
  v17 = a1;
  v4 = sub_1B22520F0();
  v5 = *(v4 - 8);
  v6 = v5;
  v7 = *(v5 + 64);
  MEMORY[0x1EEE9AC00]();
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v3 + 56);
  sub_1B21619D8(&qword_1EB7A2B88, &unk_1B2260248);
  v11 = *(v5 + 72);
  v12 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1B22546B0;
  sub_1B22520E0();
  v23 = v13;
  sub_1B21202AC(qword_1ED85E0C0, MEMORY[0x1E69E7F60]);
  sub_1B21619D8(&qword_1EB7A27A8, &qword_1B225E820);
  sub_1B21E8598(&qword_1ED85E0B8, &qword_1EB7A27A8, &qword_1B225E820);
  sub_1B2252BC0();
  v20 = v3;
  v21 = v17;
  v22 = v18;
  sub_1B21619D8(&qword_1EB7A3148, &qword_1B2269C00);
  v14 = v19;
  sub_1B2252A40();
  if (v14)
  {
    return (*(v6 + 8))(v9, v4);
  }

  (*(v6 + 8))(v9, v4);
  return v24;
}

uint64_t sub_1B21202AC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B21202F4(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    v4 = sub_1B212CFD8(0, a2);
    sub_1B2161A20(v4, v5);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void *sub_1B2120344@<X0>(uint64_t a1@<X0>, void *(*a2)(uint64_t *__return_ptr, uint64_t)@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B2120394(a1, a2);
  if (!v3)
  {
    *a3 = result & 1;
  }

  return result;
}

void *sub_1B2120394(uint64_t a1, void *(*a2)(uint64_t *__return_ptr, uint64_t))
{
  v4 = *(a1 + 48);
  v5 = sub_1B22529A0();
  result = a2(&v7, v5);
  if (!v2)
  {
    return v7;
  }

  return result;
}

uint64_t sub_1B21203F4@<X0>(uint64_t result@<X0>, BOOL *a2@<X8>)
{
  v3 = *(result + 24);
  if (v3)
  {
    v4 = *(result + 24);

    sub_1B2120468();
  }

  *a2 = v3 == 0;
  return result;
}

uint64_t sub_1B2120468()
{
  v1 = *(v0 + 32);

  sub_1B21204D8();
}

void sub_1B2120530()
{
  v1 = v0;
  v2 = sub_1B22520F0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00]();
  sub_1B2111844();
  v7 = v6 - v5;
  v8 = *(v1 + 24);
  sub_1B21619D8(&qword_1EB7A2B88, &unk_1B2260248);
  v9 = *(v3 + 72);
  v10 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  *(swift_allocObject() + 16) = xmmword_1B22546B0;
  v11 = v8;
  sub_1B22520E0();
  sub_1B21202AC(qword_1ED85E0C0, MEMORY[0x1E69E7F60]);
  sub_1B21619D8(&qword_1EB7A27A8, &qword_1B225E820);
  sub_1B21E8598(&qword_1ED85E0B8, &qword_1EB7A27A8, &qword_1B225E820);
  sub_1B2252BC0();
  sub_1B2252A40();
  (*(v3 + 8))(v7, v2);
}

uint64_t sub_1B212073C()
{
  sub_1B211D7B0();
  swift_beginAccess();
  v1(v0 + 16);
  return swift_endAccess();
}

uint64_t sub_1B21207B4()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  return sub_1B212073C();
}

uint64_t sub_1B2120808(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;

  *a1 = a2;
}

uint64_t Statement.step<A>(_:)@<X0>(uint64_t (*a1)(sqlite3_stmt *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v8 = *(v3 + 16);
  if (sqlite3_stmt_busy(v8) || (sub_1B2122070(), v13 = sub_1B211E540(), Database.statementWillExecute(_:)(v13), sub_1B211D800(), result = , !v4))
  {
    if (sqlite3_step(v8) == 100)
    {
      result = a1(v8);
      if (v4)
      {
        return result;
      }

      v11 = a3;
      v12 = 0;
      return sub_1B21117B4(v11, v12, 1, a2);
    }

    sub_1B21122DC();
    if (!v9)
    {
      sub_1B2122070();
      sub_1B2122700(v3);
      sub_1B211D800();
    }

    sub_1B2122070();
    v10 = sub_1B211E540();
    Database.statementDidExecute(_:)(v10);
    sub_1B211D800();

    if (!v4)
    {
      v11 = a3;
      v12 = 1;
      return sub_1B21117B4(v11, v12, 1, a2);
    }
  }

  return result;
}

Swift::String __swiftcall String.init(sqliteStatement:index:)(Swift::OpaquePointer sqliteStatement, Swift::Int32 index)
{
  v2 = sqlite3_column_text(sqliteStatement._rawValue, index);
  if (v2)
  {

    v2 = sub_1B2252400();
  }

  else
  {
    __break(1u);
  }

  result._object = v3;
  result._countAndFlagsBits = v2;
  return result;
}

uint64_t (*sub_1B21209E0(uint64_t a1, uint64_t a2, uint64_t a3))(uint64_t a1)
{
  v6 = swift_allocObject();
  v6[2] = a2;
  v6[3] = a3;
  v6[4] = a1;
  swift_unknownObjectRetain();
  return sub_1B2120CB8;
}

uint64_t sub_1B2120A54()
{
  v1 = *(v0 + 32);
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t FastNullableDatabaseValueCursor._element(sqliteStatement:)()
{
  sub_1B212CFBC();
  v4 = *(v3 + 80);
  v5 = sub_1B2252B00();
  sub_1B211280C(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  sub_1B21117FC();
  MEMORY[0x1EEE9AC00](v10);
  sub_1B21182D8();
  v11 = *(v0 + 28);
  v12 = sub_1B21115F0();
  if (sqlite3_column_type(v12, v13) == 5)
  {

    return sub_1B21117B4(v1, 1, 1, v4);
  }

  else
  {
    v15 = sub_1B2117C60();
    v16(v15);
    if (sub_1B2122A98(v2, 1, v4) == 1)
    {
      v18 = (*(v7 + 8))(v2, v5);
      MEMORY[0x1EEE9AC00](v18);
      sub_1B21156F0();
      *(v19 - 16) = sub_1B21A3088;
      *(v19 - 8) = v0;
      v20 = sub_1B21115F0();
      static DatabaseValueConvertible<>._valueMismatch(fromStatement:atUncheckedIndex:context:)(v20, v21, v22, v23, v4);
      result = swift_unexpectedError();
      __break(1u);
    }

    else
    {
      sub_1B2111808(v4);
      (*(v17 + 32))(v1, v2, v4);
      return sub_1B21117B4(v1, 0, 1, v4);
    }
  }

  return result;
}

uint64_t sub_1B2120CB8(uint64_t a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  return (*(*(v3 + 8) + 40))(a1, v2);
}

uint64_t sub_1B2120CF4@<X0>(Swift::OpaquePointer a1@<X0>, Swift::Int32 a2@<W1>, Swift::String *a3@<X8>)
{
  v5 = String.init(sqliteStatement:index:)(a1, a2);
  result = v5._countAndFlagsBits;
  *a3 = v5;
  return result;
}

uint64_t DatabaseCursor.next()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *(a2 + 8);
  v8 = *(v7 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = sub_1B2252B00();
  sub_1B21115E0();
  v25 = v11;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v24 - v15;
  if ((*(v7 + 16))(a1, v7))
  {
    return sub_1B21117B4(a3, 1, 1, AssociatedTypeWitness);
  }

  v24 = a3;
  (*(a2 + 16))(a1, a2);
  v18 = sub_1B21209E0(v3, a1, a2);
  v19 = v26;
  Statement.step<A>(_:)(v18, AssociatedTypeWitness, v16);
  sub_1B211D800();
  if (v19)
  {
  }

  else
  {

    if (sub_1B2122A98(v16, 1, AssociatedTypeWitness) == 1)
    {
      (*(v25 + 8))(v16, v10);
      (*(v7 + 24))(1, a1, v7);
      v20 = v24;
      v21 = 1;
    }

    else
    {
      sub_1B2111808(AssociatedTypeWitness);
      v23 = v24;
      (*(v22 + 32))(v24, v16, AssociatedTypeWitness);
      v20 = v23;
      v21 = 0;
    }

    return sub_1B21117B4(v20, v21, 1, AssociatedTypeWitness);
  }
}

void static DatabaseValueConvertible<>.fetchOne(_:arguments:adapter:)()
{
  sub_1B2111640();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v26 = v9;
  v25 = sub_1B2252B00();
  v10 = sub_1B2252B00();
  sub_1B211280C(v10);
  v24 = v11;
  v13 = *(v12 + 64);
  sub_1B21117FC();
  MEMORY[0x1EEE9AC00](v14);
  v29 = &v24 - v15;
  v16 = *v6;
  v17 = v6[1];
  sub_1B2115EC8();
  v18 = type metadata accessor for FastNullableDatabaseValueCursor();
  v28[0] = v16;
  v28[1] = v17;
  sub_1B2122784(v4, v27);

  sub_1B211CF8C(v16);
  sub_1B211D084(v8, v28, v27);
  if (!v0)
  {
    v20 = v24;
    v19 = v25;
    v21 = v26;
    WitnessTable = swift_getWitnessTable();
    DatabaseCursor.next()(v18, WitnessTable, v29);

    if (sub_1B2122A98(v29, 1, v19) == 1)
    {
      sub_1B21117B4(v21, 1, 1, v2);
      if (sub_1B2122A98(v29, 1, v19) != 1)
      {
        (*(v20 + 8))(v29, v10);
      }
    }

    else
    {
      sub_1B2111808(v19);
      (*(v23 + 32))(v21, v29, v19);
    }
  }

  sub_1B2112FDC();
}

uint64_t sub_1B2121180(uint64_t result)
{
  if (result)
  {
    v1 = result;

    sub_1B21212A8();
    v2 = *(v1 + 32);
    *(v1 + 32) = 1;
    sub_1B211C6D8(v2);

    return 0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1B2121220()
{

  return sub_1B2127DC0(&STACK[0x608], &STACK[0x560]);
}

uint64_t sub_1B2121244(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, char a54)
{
  a52 = 0;
  a53 = 0;
  a54 = 4;

  return sub_1B2127D7C(&a52);
}

uint64_t sub_1B2121264@<X0>(uint64_t a1@<X8>)
{
  v2 = (v1 + a1);
  result = *v2;
  v4 = v2[1];
  return result;
}

uint64_t sub_1B2121270()
{
  sub_1B21841CC(v0, v1, *(v2 - 152));
}

uint64_t sub_1B21212A8()
{
  v2 = v0;
  sub_1B21214C0();
  v3 = *(v0 + 16);
  swift_unownedRetainStrong();
  v4 = sub_1B211C444();

  if ((v4 & 1) == 0)
  {
    sub_1B2117330();
    swift_beginAccess();
    v6 = *(v2 + 40);
    v7 = sub_1B2116B08(v6);

    for (i = 0; ; ++i)
    {
      if (v7 == i)
      {
      }

      if ((v6 & 0xC000000000000001) != 0)
      {
        result = MEMORY[0x1B27427E0](i, v6);
      }

      else
      {
        if (i >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_14;
        }

        result = sub_1B2117C0C(v6 + 8 * i);
      }

      if (__OFADD__(i, 1))
      {
        break;
      }

      sub_1B21765C8();

      if (v1)
      {
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
  }

  return result;
}

void sub_1B21213B0()
{
  v1 = v0;
  v2 = *(v0 + 24);

  sub_1B2121848();

  v3 = *(v1 + 16);
  swift_unownedRetainStrong();
  v4 = sub_1B211C444();

  if ((v4 & 1) != 0 || (sub_1B2117330(), swift_beginAccess(), v5 = *(v1 + 40), (v6 = sub_1B2116B08(v5)) == 0))
  {
LABEL_10:
    sub_1B21218AC();
    return;
  }

  v7 = v6;
  if (v6 >= 1)
  {

    v8 = 0;
    do
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        MEMORY[0x1B27427E0](v8, v5);
      }

      else
      {
        sub_1B2117C0C(v5 + 8 * v8);
      }

      ++v8;
      v9 = *(v1 + 16);
      v10 = swift_unownedRetainStrong();
      sub_1B2176630(v10);
    }

    while (v7 != v8);

    goto LABEL_10;
  }

  __break(1u);
}

uint64_t sub_1B21214C0()
{
  type metadata accessor for SchedulingWatchdog();
  result = sub_1B21114CC();
  if (result)
  {
    v2 = result;
    v3 = *(result + 24);
    v23 = v2;
    *(v2 + 24) = v0;

    v4 = *(v0 + 24);
    sub_1B21115FC();
    swift_beginAccess();
    v5 = *(v4 + 16);

    sub_1B2121848();

    v6 = 0;
    v7 = *(v5 + 16);
    v25 = v5;
    v24 = v5 + 32;
    v26 = v7;
    while (1)
    {
      if (v6 == v7)
      {
        v31 = 0u;
        v32 = 0u;
        v8 = v7;
        v30 = 0u;
      }

      else
      {
        if ((v6 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_22:
          __break(1u);
          break;
        }

        if (v6 >= *(v25 + 16))
        {
          goto LABEL_22;
        }

        sub_1B21784FC(v24 + 48 * v6, &v30);
        v8 = v6 + 1;
      }

      v33[0] = v30;
      v33[1] = v31;
      v34 = v32;
      if (!*(&v31 + 1))
      {

        v20 = *(v23 + 24);
        *(v23 + 24) = 0;
      }

      v28 = v8;
      v9 = *(&v34 + 1);
      sub_1B21217FC(v33, &v30);
      v10 = *(v9 + 16);
      v27 = v9;
      if (v10)
      {
        v11 = (v9 + 48);
        while (1)
        {
          v12 = *(v11 - 2);
          v13 = *(v11 - 1);
          v14 = *v11;
          v15 = sub_1B21139A0(&v30, *(&v31 + 1));
          v29[3] = &type metadata for DatabaseEvent;
          v29[4] = &off_1F296A8E0;
          sub_1B212DE18();
          v29[0] = swift_allocObject();
          v16 = sub_1B217856C(v15, v29[0] + 16);
          if (!v13)
          {
            break;
          }

          MEMORY[0x1EEE9AC00](v16);
          v22 = v29;

          sub_1B211CF8C(v13);
          v17 = sub_1B2203814(sub_1B21789C4, v21, v13);
          if (v17)
          {
            sub_1B211A378(v13);
LABEL_17:
            sub_1B2113208(v29);
            v19 = sub_1B21139A0(&v30, *(&v31 + 1));
            sub_1B21764DC(v19);

            goto LABEL_18;
          }

          MEMORY[0x1EEE9AC00](v17);
          v22 = v29;
          v18 = sub_1B2203814(sub_1B21785A4, v21, v14);
          sub_1B211A378(v13);
          if (!v18)
          {
            goto LABEL_17;
          }

          sub_1B2113208(v29);
LABEL_18:
          v11 += 3;
          if (!--v10)
          {
            goto LABEL_19;
          }
        }

        goto LABEL_17;
      }

LABEL_19:

      result = sub_1B2113208(&v30);
      v7 = v26;
      v6 = v28;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B21217FC(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_1B2121814()
{
  sub_1B2113208((v0 + 16));
  sub_1B212DE18();

  return swift_deallocObject();
}

uint64_t sub_1B2121848()
{
  sub_1B21118B8();
  swift_beginAccess();
  v1 = *(v0 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  *(v0 + 16) = MEMORY[0x1E69E7CC0];

  sub_1B21118B8();
  swift_beginAccess();
  v3 = *(v0 + 24);
  *(v0 + 24) = v2;
}

void sub_1B21218AC()
{
  sub_1B2122150();
  sub_1B21118B8();
  swift_beginAccess();
  v1 = *(v0 + 40);
  v13 = MEMORY[0x1E69E7CC0];
  v2 = sub_1B2116B08(v1);

  for (i = 0; ; ++i)
  {
    if (v2 == i)
    {

      v6 = *(v0 + 40);
      *(v0 + 40) = v13;

      v7 = *(v0 + 40);
      v8 = sub_1B2116B08(v7);
      if (v8)
      {
        v9 = v8;
        if (v8 < 1)
        {
          goto LABEL_23;
        }

        for (j = 0; j != v9; ++j)
        {
          if ((v7 & 0xC000000000000001) != 0)
          {
            v11 = MEMORY[0x1B27427E0](j, v7);
          }

          else
          {
            v12 = *(v7 + 8 * j + 32);
          }

          *(v11 + 17) = 0;
        }
      }

      sub_1B2114274();
      return;
    }

    if ((v1 & 0xC000000000000001) != 0)
    {
      MEMORY[0x1B27427E0](i, v1);
    }

    else
    {
      if (i >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_22;
      }

      v4 = *(v1 + 8 * i + 32);
    }

    if (__OFADD__(i, 1))
    {
      break;
    }

    if (sub_1B2176B68())
    {
      swift_unknownObjectRelease();
      sub_1B2252D60();
      v5 = *(v13 + 16);
      sub_1B2252DA0();
      sub_1B2115B7C();
      sub_1B2252DB0();
      sub_1B2252D70();
    }

    else
    {
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
}

void sub_1B2121A40()
{
  v2 = v0;
  sub_1B21212A8();
  if (v1)
  {
    v3 = *(v0 + 16);
    v4 = *(v2 + 16);
    swift_unownedRetainStrong();
    v5 = sub_1B211C444();

    sub_1B21766E4((v5 & 1) == 0);
    swift_willThrow();
  }

  else
  {
    sub_1B21213B0();
  }
}

uint64_t sub_1B2121AF4(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v6 = swift_allocObject();
  sub_1B2121CAC(a1, a2, a3);
  return v6;
}

uint64_t static FetchableRecord.fetchOne(_:arguments:adapter:)@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  result = sub_1B2115D98(a1, a2, a3, a4, a5, a6, a7, a8, v14);
  if (!v9)
  {
    v12 = type metadata accessor for RecordCursor();
    WitnessTable = swift_getWitnessTable();
    DatabaseCursor.next()(v12, WitnessTable, a9);
  }

  return result;
}

uint64_t static FetchableRecord.fetchCursor(_:arguments:adapter:)(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v5 = *a2;
  v6 = a2[1];
  type metadata accessor for RecordCursor();
  v10[0] = v5;
  v10[1] = v6;
  sub_1B2122784(a3, v9);

  v7 = sub_1B2112F9C();
  sub_1B211CF8C(v7);
  return sub_1B2121AF4(a1, v10, v9);
}

uint64_t *sub_1B2121CAC(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v5 = v3;
  v8 = *v3;
  v10 = *a2;
  v9 = a2[1];
  *(v3 + 24) = 0;
  v3[2] = a1;
  type metadata accessor for Row();
  swift_allocObject();
  v11 = swift_retain_n();
  sub_1B211CFCC(v11);
  v15[3] = type metadata accessor for Statement();
  v15[4] = &protocol witness table for Statement;
  v15[0] = a1;

  v12 = sub_1B211E6DC(a3, v15);

  if (v4)
  {
    sub_1B211A378(v10);

    sub_1B212E32C(a3, &qword_1EB7A1370, &unk_1B2257580);
    sub_1B2113208(v15);
    v13 = v5[2];

    swift_deallocPartialClassInstance();
  }

  else
  {
    sub_1B2113208(v15);
    v5[4] = v12;
    v15[0] = v10;
    v15[1] = v9;
    sub_1B2119E50(v15);
    sub_1B212E32C(a3, &qword_1EB7A1370, &unk_1B2257580);

    sub_1B211A378(v10);
  }

  return v5;
}

uint64_t FastDatabaseValueCursor.__deallocating_deinit()
{
  FastDatabaseValueCursor.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 32, 7);
}

uint64_t _s12GRDBInternal23FastDatabaseValueCursorCfd_0()
{
  v1 = v0;
  v2 = *(v0 + 16);

  sub_1B211A000();

  v3 = *(v1 + 16);

  return v1;
}

void sub_1B2121F24()
{

  JUMPOUT(0x1B2741EB0);
}

uint64_t sub_1B2121F88()
{
  v3 = *(v0 + 8);
  result = v1;
  v5 = *(v2 - 72);
  return result;
}

uint64_t sub_1B2121FA4()
{

  return sub_1B2252E70();
}

uint64_t sub_1B2121FF0@<X0>(uint64_t a1@<X8>)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *(a1 + 33);
  v7 = *(a1 + 34);
  v8 = *(a1 + 32);
  *(v1 + 576) = *a1;
  *(v1 + 584) = v3;
  *(v1 + 592) = v4;
  *(v1 + 600) = v5;
  *(v1 + 608) = v8;
  *(v1 + 609) = v6;
  *(v1 + 610) = v7;
}

id sub_1B2122040@<X0>(uint64_t a1@<X8>)
{

  return [v1 (a1 + 376)];
}

uint64_t sub_1B2122070()
{
  v2 = *(v0 + 80);

  return swift_unownedRetainStrong();
}

uint64_t sub_1B21220AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v13 = *(v11 - 72);

  return FetchRequest<>.fetchSet(_:)(a9, v10, a1, v13, v9);
}

uint64_t sub_1B21220D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, char a57)
{

  return sub_1B213A774(&STACK[0x238], &a57);
}

unint64_t sub_1B2122194()
{

  return sub_1B211E590();
}

void sub_1B21221C4()
{

  JUMPOUT(0x1B2741EB0);
}

double sub_1B21221E0()
{
  result = 0.0;
  *v0 = 0u;
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0u;
  *(v0 + 64) = 0u;
  *(v0 + 80) = 0;
  return result;
}

uint64_t sub_1B21221F8@<X0>(uint64_t a1@<X8>)
{
  v2[3] = a1;
  v2[4] = v1;

  return sub_1B21B3390(v3, v4, v5, v2);
}

id sub_1B2122240@<X0>(uint64_t a1@<X8>)
{
  v4 = *(v2 + ((a1 << 9) | (8 * v1)));

  return v4;
}

uint64_t sub_1B2122280@<X0>(uint64_t a1@<X8>)
{
  result = v1 + ((a1 + 72) & ~a1);
  v3 = *(v1 + 64);
  return result;
}

void sub_1B21222C0()
{

  JUMPOUT(0x1B2741EB0);
}

uint64_t sub_1B212231C()
{
  v2 = v0[1];
  v3 = v0[2];
  v5 = *v0;
}

uint64_t sub_1B2122344()
{
  v5 = (v1 + *v0);
  v6 = *v5;
  v7 = v5[1];
  *v5 = v2;
  v5[1] = v3;

  return sub_1B2120024(v6, v7);
}

uint64_t sub_1B2122364()
{

  return sub_1B2252A50();
}

uint64_t sub_1B2122398()
{

  return Database.statementDidFail(_:withResultCode:)(v1, v0);
}

uint64_t sub_1B2122400(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_1B21619D8(a2, a3);
  sub_1B2111808(v4);
  (*(v5 + 8))(a1);
  return a1;
}

uint64_t sub_1B2122478()
{

  return swift_allocObject();
}

uint64_t sub_1B21224AC@<X0>(uint64_t a1@<X8>)
{
  v2 = (v1 + a1);
  result = *v2;
  v4 = v2[1];
  return result;
}

uint64_t sub_1B21224DC()
{
  v2 = *(v0 + 40);

  return sub_1B2253420();
}

void sub_1B2122504()
{
  v5 = *(v4 - 72);
  *(v5 + 16) = v0;
  v6 = v5 + 16 * v3;
  *(v6 + 32) = v1;
  *(v6 + 40) = v2;
}

void sub_1B2122534()
{
  v2 = *(v1 - 72);
  v3 = *(v0 + 24);
  v4 = *(v0 + 16) + 1;
}

uint64_t sub_1B212257C(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  v3 = *(a2 + 16);
  return result;
}

uint64_t sub_1B21225C8()
{

  return swift_beginAccess();
}

void *sub_1B2122630()
{
  v2 = *(v0 - 72);

  return QueryInterfaceRequest.deleteAll(_:)();
}

void sub_1B2122654()
{

  JUMPOUT(0x1B2741EB0);
}

void sub_1B2122674()
{

  JUMPOUT(0x1B2741EB0);
}

uint64_t sub_1B212268C()
{

  return swift_once();
}

void sub_1B21226AC()
{
  v2 = *(*(v0 + 32) + 16);

  sub_1B2161920();
}

uint64_t sub_1B21226CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);

  return sub_1B212E32C(va, v6, v7);
}

uint64_t sub_1B2122700(uint64_t a1)
{

  return Database.statementDidFail(_:withResultCode:)(a1, v1);
}

void sub_1B2122718(uint64_t a1@<X2>, uint64_t a2@<X3>, unint64_t a3@<X8>)
{

  sub_1B22341D4(v3, a1, a2, a3);
}

uint64_t sub_1B2122744(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 - 72) = a5;

  return sub_1B2252850();
}

uint64_t sub_1B2122784(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B21619D8(&qword_1EB7A1370, &unk_1B2257580);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B21227F4(uint64_t a1, void (*a2)(uint64_t), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = sub_1B2252B00();
  sub_1B211280C(v11);
  v13 = v12;
  v15 = *(v14 + 64);
  sub_1B21117FC();
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v20 - v17;
  a2(a4);
  if (!v6)
  {
    sub_1B21117B4(v18, 0, 1, a6);
    (*(v13 + 40))(a1, v18, v11);
  }

  return 0;
}

void *sub_1B2122954@<X0>(void *a1@<X8>)
{

  return static TableRecord.all()(a1);
}

void sub_1B212296C()
{
  v2 = *(*v0 + 16);

  sub_1B21277F4();
}

void sub_1B2122994()
{

  JUMPOUT(0x1B2741EB0);
}

void *sub_1B21229D4(void *__src, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char __dst)
{

  return memcpy(&__dst, __src, 0xA3uLL);
}

uint64_t sub_1B21229FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{

  return sub_1B21FDE44(a19);
}

id sub_1B2122A2C@<X0>(uint64_t a1@<X8>)
{

  return [v1 (a1 + 376)];
}

void sub_1B2122A44()
{

  JUMPOUT(0x1B2741E40);
}

uint64_t sub_1B2122A70()
{
}

uint64_t sub_1B2122AC0(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_1B2122B00(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_1B21619D8(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

void *SQLStatementCursor.deinit()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[9];
  sub_1B211A378(v0[8]);
  return v0;
}

uint64_t sub_1B2122B98(uint64_t a1)
{
  v2 = sub_1B21619D8(&qword_1EB7A0E30, &unk_1B2259360);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1B2122C40()
{

  sub_1B2143F5C();
}

void sub_1B2122C5C()
{

  JUMPOUT(0x1B2741EB0);
}

__n128 sub_1B2122CA4()
{
  result = *(v0 + 3);
  v2 = *v0;
  v3 = v0[1];
  v4 = v0[2];
  return result;
}

uint64_t sub_1B2122CBC()
{
  *(v0 + 2832) = 0;
  *v3 = 0u;
  v3[1] = 0u;

  return sub_1B2122B00(v0 + 2800, v0 + 2592, v1, v2);
}

uint64_t sub_1B2122CF8(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_1B21DFADC(v3, v5, a3, v4);
}

uint64_t sub_1B2122D14(uint64_t result)
{
  *(result + 16) = v2;
  *(result + 24) = v3;
  v4 = *(v1 + 8);
  return result;
}

uint64_t sub_1B2122D30()
{

  return swift_deallocPartialClassInstance();
}

uint64_t sub_1B2122D60()
{
  result = *(v0 + 8);
  v3 = *(v1 - 72);
  return result;
}

uint64_t sub_1B2122DCC(uint64_t a1)
{
  if ((*(a1 + 162) >> 3) <= 0x14u)
  {
    return *(a1 + 162) >> 3;
  }

  else
  {
    return (*a1 + 21);
  }
}

uint64_t FastDatabaseValueCursor._isDone.setter(char a1)
{
  result = swift_beginAccess();
  *(v1 + 24) = a1;
  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> Database.commit()()
{
  sub_1B21173F4();
  v0._countAndFlagsBits = 0xD000000000000012;
  Database.execute(sql:arguments:)(v0, v1);
}

uint64_t String.databaseValue.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = a1;
  *(a3 + 8) = a2;
  *(a3 + 16) = 2;
}

uint64_t sub_1B2122EB0(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(void, uint64_t, uint64_t, uint64_t), uint64_t (*a8)(uint64_t, void *, _BYTE *))
{
  v11 = *a2;
  v12 = a2[1];
  a7(0, a4, a5, a6);
  v15[0] = v11;
  v15[1] = v12;
  sub_1B2122784(a3, v14);

  sub_1B211CF8C(v11);
  return a8(a1, v15, v14);
}

Swift::Int32 __swiftcall DatabaseValue.bind(to:at:)(Swift::OpaquePointer to, Swift::Int32 at)
{
  v3 = *v2;
  v4 = *(v2 + 8);
  switch(*(v2 + 16))
  {
    case 1:
      v23 = *v2;
      v24 = sub_1B2111F44();

      result = sqlite3_bind_double(v24, v25, v26);
      break;
    case 2:
      v10 = qword_1ED85E010;

      if (v10 != -1)
      {
        swift_once();
      }

      v11 = qword_1ED861908;
      sub_1B21115F0();
      sub_1B2252350();
      v12 = sub_1B2111F44();
      v15 = sqlite3_bind_text(v12, v13, v14, -1, v11);

      v16 = sub_1B21115F0();
      v18 = 2;
      goto LABEL_12;
    case 3:
      v19 = sub_1B21115F0();
      sub_1B2126638(v19, v20);
      v21 = sub_1B2111F44();
      v15 = Data.bind(to:at:)(v21, v22);
      v16 = sub_1B21115F0();
      v18 = 3;
LABEL_12:
      sub_1B2113A44(v16, v17, v18);
      result = v15;
      break;
    case 4:
      v8 = sub_1B2111F44();

      result = sqlite3_bind_null(v8, v9);
      break;
    default:
      v5 = sub_1B2111F44();

      result = sqlite3_bind_int64(v5, v6, v3);
      break;
  }

  return result;
}

uint64_t sub_1B21230F0(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v5 = v3;
  v8 = *v3;
  v10 = *a2;
  v9 = a2[1];
  *(v3 + 24) = 0;
  v3[2] = a1;
  v11 = v8;
  sub_1B2122784(a3, &v18);
  if (!v19)
  {

    sub_1B2122400(&v18, &qword_1EB7A1370, &unk_1B2257580);
    *(v5 + 7) = 0;
    goto LABEL_8;
  }

  v24 = v11;
  sub_1B2134D5C(&v18, v21);
  v12 = v22;
  v13 = v23;
  sub_1B21139A0(v21, v22);
  v19 = type metadata accessor for Statement();
  v20 = &protocol witness table for Statement;
  *&v18 = a1;
  swift_retain_n();
  v14 = sub_1B21B2B3C(0, &v18, v12, v13);
  if (v4)
  {
    sub_1B211A378(v10);

    sub_1B2122400(a3, &qword_1EB7A1370, &unk_1B2257580);
    sub_1B2113208(&v18);
    sub_1B2113208(v21);
    v15 = v5[2];

    swift_deallocPartialClassInstance();
    return v5;
  }

  v16 = v14;
  result = sub_1B2113208(&v18);
  if (v16 < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (v16 <= 0x7FFFFFFF)
  {
    *(v5 + 7) = v16;
    sub_1B2113208(v21);
LABEL_8:
    v21[0] = v10;
    v21[1] = v9;
    sub_1B2119E50(v21);
    sub_1B2122400(a3, &qword_1EB7A1370, &unk_1B2257580);

    sub_1B211A378(v10);
    if (v4)
    {
    }

    return v5;
  }

  __break(1u);
  return result;
}

uint64_t sub_1B2123360@<X0>(void *a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  *a1 = a2;
  a1[1] = v5;
  a1[2] = ~v3;
  a1[3] = a3;
  a1[4] = v6;
  return v4;
}

uint64_t sub_1B212338C()
{

  return sub_1B213BBD8(v0);
}

void sub_1B21233A4()
{

  JUMPOUT(0x1B2741EB0);
}

void *sub_1B21233E0(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char __src)
{

  return memcpy(a1, &__src, 0xA3uLL);
}

double StatementArguments.init(arrayLiteral:)@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1B2112554(a1, &v4);
  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t sub_1B212348C(uint64_t result)
{
  v2 = *(result + 48);
  v3 = *(result + 52);
  v4 = *(v1 - 8);
  return result;
}

uint64_t sub_1B21234B8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, __int128 a25)
{

  return RowDecodingContext.init(row:key:)(a1, &a25, &a17);
}

uint64_t sub_1B21234F4()
{
  v2 = v0[1];
  v3 = v0[2];
  v5 = *v0;
}

uint64_t *sub_1B2123524(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  a18 = *(a2 + 16);
  a19 = a3;

  return sub_1B212FF14(&a15);
}

uint64_t sub_1B2123560(uint64_t a1)
{
  if ((*(a1 + 16) & 4) != 0)
  {
    return (*a1 + 4);
  }

  else
  {
    return *(a1 + 16) & 7;
  }
}

uint64_t sub_1B212357C()
{
  v3 = v0;
  result = sqlite3_clear_bindings(*(v0 + 16));
  if (result)
  {
    v10 = result;
    v5 = *(v0 + 80);
    v6 = *(v3 + 80);
    swift_unownedRetainStrong();
    Database.lastErrorMessage.getter();
    sub_1B21140B8();

    v7 = Statement.sql.getter();
    v9 = v8;
    if (!v2)
    {
      if (!sqlite3_errstr(v10))
      {
        __break(1u);
      }

      sub_1B22523F0();
      sub_1B21140B8();
    }

    LODWORD(v11) = v10;
    *(&v11 + 1) = v1;
    v12 = v2;
    v13 = v7;
    v14 = v9;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    sub_1B2202FD4(&v11);
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

uint64_t sub_1B2123648(int a1, int a2, int a3, Swift::Int32 at)
{
  result = DatabaseValue.bind(to:at:)(v4[2], at);
  if (result)
  {
    v14 = result;
    rawValue = v4[10]._rawValue;
    swift_unownedRetainStrong();
    v7 = Database.lastErrorMessage.getter();
    v9 = v8;

    v10 = Statement.sql.getter();
    v12 = v11;
    if (!v9)
    {
      if (!sqlite3_errstr(v14))
      {
        __break(1u);
      }

      v7 = sub_1B22523F0();
      v9 = v13;
    }

    LODWORD(v15) = v14;
    *(&v15 + 1) = v7;
    v16 = v9;
    v17 = v10;
    v18 = v12;
    v19 = 0;
    v20 = 0;
    v21 = 0;
    sub_1B2202FD4(&v15);
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

uint64_t sub_1B212372C(uint64_t result, int a2, int a3)
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

LABEL_8:
      *result = (a2 - 1);
      return result;
    }

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}