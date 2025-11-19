uint64_t sub_1B215C368()
{
  sub_1B2113208((v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1B215C3A4()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 56);

  sub_1B2118030();

  return swift_deallocObject();
}

uint64_t sub_1B215C3EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  sub_1B21AF404(a1, a2, a3);
}

uint64_t sub_1B215C538()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  sub_1B211510C();
  v3 = _s17ValueSubscriptionC9ObservingVMa();
  sub_1B211208C(v3);
  v5 = v4;
  v7 = v6;
  v8 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v9 = (*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(*(v2 - 8) + 8))(v0 + v8, v2);

  return swift_deallocObject();
}

uint64_t sub_1B215C60C()
{
  if (*(v0 + 40))
  {
    sub_1B2113208((v0 + 16));
  }

  return swift_deallocObject();
}

uint64_t sub_1B215C64C()
{
  v1 = *(v0 + 32);

  sub_1B2117C44();

  return swift_deallocObject();
}

uint64_t sub_1B215C680()
{
  v1 = *(v0 + 16);
  sub_1B2161A20(qword_1EB7A0F98, &unk_1B22595B0);
  sub_1B211510C();
  v2 = sub_1B2252760();
  sub_1B21118A0(v2);
  v4 = *(v3 + 64);
  (*(v3 + 8))(v0 + ((*(v3 + 80) + 24) & ~*(v3 + 80)));

  return swift_deallocObject();
}

uint64_t sub_1B215C724()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1B215C75C()
{
  v1 = *(v0 + 16);
  sub_1B2161A20(qword_1EB7A0F98, &unk_1B22595B0);
  sub_1B211510C();
  v2 = sub_1B2252760();
  sub_1B21118A0(v2);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v3 + 8))(v0 + v4);
  v6 = *(v0 + v5);

  return swift_deallocObject();
}

uint64_t sub_1B215C814()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B215C860()
{
  v1 = *(v0 + 40);

  sub_1B2113B74();

  return swift_deallocObject();
}

uint64_t sub_1B215C894()
{
  v1 = *(v0 + 56);

  v2 = *(v0 + 72);

  return swift_deallocObject();
}

uint64_t sub_1B215C940()
{
  sub_1B2113208((v0 + 16));
  v1 = *(v0 + 56);

  return swift_deallocObject();
}

uint64_t sub_1B215C9B0()
{
  sub_1B213B9FC(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104), *(v0 + 112), *(v0 + 120), *(v0 + 128), *(v0 + 136), *(v0 + 144), *(v0 + 152), *(v0 + 160), *(v0 + 168), *(v0 + 176) | (*(v0 + 178) << 16));

  return swift_deallocObject();
}

uint64_t sub_1B215CAB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 32);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1B2252120();
    v9 = a1 + *(a3 + 64);

    return sub_1B2122A98(v9, a2, v8);
  }
}

uint64_t sub_1B215CB40(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 32) = (a2 - 1);
  }

  else
  {
    v7 = sub_1B2252120();
    v8 = v5 + *(a4 + 64);

    return sub_1B21117B4(v8, a2, a2, v7);
  }

  return result;
}

__n128 sub_1B215CC28(__n128 *a1, __n128 *a2)
{
  result = *a1;
  a2[1].n128_u64[0] = a1[1].n128_u64[0];
  *a2 = result;
  return result;
}

uint64_t sub_1B215CC3C()
{
  v1 = *(v0 + 16);

  sub_1B2115660();

  return swift_deallocObject();
}

uint64_t sub_1B215CC70()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[6];

  if (v0[7])
  {
    v4 = v0[8];
  }

  v5 = v0[9];

  v6 = v0[11];

  v7 = v0[12];

  v8 = v0[13];

  v9 = v0[14];

  if (v0[16])
  {
    v10 = v0[17];
  }

  if (v0[18])
  {
    v11 = v0[19];
  }

  v12 = v0[24];

  v13 = v0[25];

  v14 = v0[27];

  if (v0[28])
  {
    v15 = v0[29];
  }

  v16 = v0[30];

  v17 = v0[32];

  v18 = v0[33];

  v19 = v0[34];

  v20 = v0[35];

  if (v0[37])
  {
    v21 = v0[38];
  }

  if (v0[39])
  {
    v22 = v0[40];
  }

  return swift_deallocObject();
}

uint64_t sub_1B215CDE8()
{
  sub_1B2113208((v0 + 16));

  return swift_deallocObject();
}

void sub_1B215CE40()
{
  v1 = *v0;
  v2 = *(v0 + 16);
  if (*(v0 + 16))
  {
    v3 = *v0;
    if (v2 != 1 || v1 < -9.22337204e18 || v1 >= 9.22337204e18)
    {
      v6 = *(v0 + 8);
      v7 = *(v0 + 24);
      v18[3] = &type metadata for DatabaseValueDecodingContainer;
      v18[4] = sub_1B21CE3F4();
      sub_1B2113B74();
      v8 = swift_allocObject();
      LOBYTE(v18[0]) = v8;
      *(v8 + 16) = v1;
      *(v8 + 24) = v6;
      *(v8 + 32) = v2;
      *(v8 + 40) = v7;
      sub_1B2252D40();
      swift_allocError();
      sub_1B2113A20(*&v1, v6, v2);

      sub_1B2115188(v9, v10, v11, v12, v13, v14, v15, v16, v17, v18[0]);
      sub_1B2252D20();
      sub_1B2113208(v18);
      swift_willThrow();
      return;
    }

    if ((~*&v1 & 0x7FF0000000000000) != 0)
    {
      if (v1 > -9.22337204e18)
      {
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }
}

uint64_t sub_1B215D00C()
{
  sub_1B2114F84();
  v1 = sub_1B212CE50();
  v2 = v0[20].n128_u64[1];
  v3 = v0[21].n128_u64[0];
  sub_1B211668C(v4, v5, v6, v7, v8, v9, v10, v11, v0[21].n128_u16[4] | (v0[21].n128_u8[10] << 16), v1, v12, v13, v14, v15);
  v16 = v0[31].n128_u64[0];
  v17 = v0[31].n128_u64[1];
  sub_1B211668C(v0[22].n128_i64[0], v0[22].n128_u64[1], v0[23].n128_i64[0], v0[23].n128_u64[1], v0[24].n128_i64[0], v0[24].n128_i64[1], v0[25].n128_i64[0], v0[25].n128_i64[1], v0[32].n128_u16[0] | (v0[32].n128_u8[2] << 16), v0[26], v0[27], v0[28], v0[29], v0[30]);

  return swift_deallocObject();
}

uint64_t sub_1B215D090()
{
  sub_1B2114F84();
  v1 = *(v0 + 192);

  return swift_deallocObject();
}

uint64_t sub_1B215D0D4()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 176);
  v3 = *(v0 + 184);
  sub_1B211668C(*(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 192) | (*(v0 + 194) << 16), *(v0 + 96), *(v0 + 112), *(v0 + 128), *(v0 + 144), *(v0 + 160));
  v4 = *(v0 + 344);
  v5 = *(v0 + 352);
  sub_1B211668C(*(v0 + 200), *(v0 + 208), *(v0 + 216), *(v0 + 224), *(v0 + 232), *(v0 + 240), *(v0 + 248), *(v0 + 256), *(v0 + 360) | (*(v0 + 362) << 16), *(v0 + 264), *(v0 + 280), *(v0 + 296), *(v0 + 312), *(v0 + 328));

  return swift_deallocObject();
}

__n128 sub_1B215D220(uint64_t a1, uint64_t a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  *(a2 + 32) = *(a1 + 32);
  *a2 = result;
  *(a2 + 16) = v3;
  return result;
}

__n128 sub_1B215D26C(__n128 *a1, __n128 *a2)
{
  result = *a1;
  a2[1].n128_u64[0] = a1[1].n128_u64[0];
  *a2 = result;
  return result;
}

uint64_t sub_1B215D280()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B215D354()
{
  sub_1B2113208((v0 + 16));
  sub_1B2113BC0();

  return swift_deallocObject();
}

uint64_t sub_1B215D4B0()
{
  v1 = *(v0 + 56);

  return swift_deallocObject();
}

uint64_t sub_1B215D4F4()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1B215D534()
{
  v1 = *(*(v0 + 24) - 8);
  v2 = *(v1 + 64);
  (*(v1 + 8))(v0 + ((*(v1 + 80) + 48) & ~*(v1 + 80)));

  return swift_deallocObject();
}

uint64_t sub_1B215D604()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B215D640()
{
  if (*(v0 + 40))
  {
    sub_1B2113208((v0 + 16));
  }

  return swift_deallocObject();
}

uint64_t sub_1B215D694()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  sub_1B2117C44();

  return swift_deallocObject();
}

uint64_t sub_1B215D6D0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B215D70C()
{
  v1 = sub_1B2117D64();
  v17 = v0[24];
  sub_1B21EDD18(v2, v3, v4, v5, v6, v7, v8, v9, v1.n128_i64[0], v1.n128_i64[1], v10, v11, v12, v13, v14, v15, v0[18], v0[19], v0[20], v0[21], v0[22]);

  return swift_deallocObject();
}

__n128 sub_1B215D78C(__n128 *a1, __n128 *a2)
{
  result = *a1;
  a2[1].n128_u64[0] = a1[1].n128_u64[0];
  *a2 = result;
  return result;
}

uint64_t sub_1B215D800()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B215D980()
{
  v36 = *(v0 + 16);
  v37 = *(v0 + 24);
  v38 = *(v0 + 32);
  v39 = *(v0 + 40);
  v34 = *(v0 + 48);
  v1 = type metadata accessor for ReceiveValuesOnSubscription.Target();
  sub_1B21158B4(v1);
  v3 = (*(v2 + 80) + 64) & ~*(v2 + 80);
  v5 = v3 + *(v4 + 64);
  v6 = sub_1B211D9CC();
  sub_1B212D0A4();
  sub_1B2114880();
  v7 = sub_1B2252000();
  sub_1B211208C(v7);
  v35 = *(v9 + 64);
  v10 = (v5 + *(v8 + 80)) & ~*(v8 + 80);
  sub_1B2112C6C();
  v12 = *(v11 + 8);
  v13 = sub_1B21146D8();
  v15 = v14(v13);
  v16 = *(v1 + 68);
  sub_1B2114454(v15, v17, v18, v19, v20, v21, v22, v23, v34);
  v24 = sub_1B21116A4();
  if (!sub_1B2122A98(v0 + v3 + v16, 1, v24))
  {
    sub_1B2112C6C();
    (*(v25 + 8))(v0 + v3 + v16, v24);
  }

  v26 = *(v1 + 72);
  sub_1B2111B40();
  v28 = *(v27 + 8);
  v30 = sub_1B21180F0(v29);
  v31(v30);
  if (!sub_1B2122A98(v0 + v10, 1, v6))
  {
    sub_1B2111808(v6);
    (*(v32 + 8))(v0 + v10, v6);
  }

  return swift_deallocObject();
}

uint64_t sub_1B215DFB0()
{
  v1 = *(v0 + 2);
  v2 = *(v0 + 5);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  sub_1B2114880();
  v4 = sub_1B2252000();
  sub_1B211208C(v4);
  v6 = (*(v5 + 80) + 72) & ~*(v5 + 80);
  v8 = *(v7 + 64);
  v9 = *(v0 + 8);

  if (!sub_1B2122A98(&v0[v6], 1, AssociatedTypeWitness))
  {
    sub_1B2111808(AssociatedTypeWitness);
    (*(v10 + 8))(&v0[v6], AssociatedTypeWitness);
  }

  return swift_deallocObject();
}

uint64_t sub_1B215E2C0()
{
  v1 = *(v0 + 2);
  v2 = *(v0 + 5);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1B21115E0();
  v5 = v4;
  v6 = (*(v4 + 80) + 72) & ~*(v4 + 80);
  v8 = *(v7 + 64);
  v9 = *(v0 + 8);

  (*(v5 + 8))(&v0[v6], AssociatedTypeWitness);

  return swift_deallocObject();
}

uint64_t sub_1B215E394()
{
  sub_1B2113208((v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1B215E3CC()
{
  sub_1B2113208((v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1B215E404()
{
  sub_1B2111808(*(v0 + 16));
  v2 = (*(v1 + 80) + 64) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v1 + 8))(v0 + v2);
  v4 = *(v0 + v3);

  return swift_deallocObject();
}

uint64_t sub_1B215E49C()
{
  sub_1B213B9FC(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104), *(v0 + 112), *(v0 + 120), *(v0 + 128), *(v0 + 136), *(v0 + 144), *(v0 + 152), *(v0 + 160), *(v0 + 168), *(v0 + 176) | (*(v0 + 178) << 16));
  sub_1B214DF8C(*(v0 + 184), *(v0 + 192), *(v0 + 200), *(v0 + 208), *(v0 + 216), *(v0 + 224), *(v0 + 232), *(v0 + 240), *(v0 + 248), *(v0 + 256), *(v0 + 264), *(v0 + 272), *(v0 + 280), *(v0 + 288), *(v0 + 296), *(v0 + 304), *(v0 + 312), *(v0 + 320), *(v0 + 328), *(v0 + 336), *(v0 + 344));

  return swift_deallocObject();
}

uint64_t sub_1B215E56C()
{
  v1 = *(v0 + 24);

  sub_1B2111904();

  return swift_deallocObject();
}

uint64_t sub_1B215E5BC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = FTS4TableDefinition.content.getter();
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_1B215E61C()
{
  v1 = *(v0 + 32);
  if (v1 != 255)
  {
    sub_1B2113A44(*(v0 + 16), *(v0 + 24), v1);
  }

  return swift_deallocObject();
}

BOOL sub_1B215E680(void *a1, uint64_t a2)
{
  v3 = *v2 & a2;
  if (v3 != a2)
  {
    *v2 |= a2;
  }

  *a1 = a2;
  return v3 != a2;
}

BOOL sub_1B215E6AC(_DWORD *a1, int a2)
{
  v3 = *v2 & a2;
  if (v3 != a2)
  {
    *v2 |= a2;
  }

  *a1 = a2;
  return v3 != a2;
}

uint64_t sub_1B215E718()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1B215E78C()
{
  if (v0[4])
  {
    v1 = v0[5];
  }

  if (v0[6])
  {
    v2 = v0[7];
  }

  if (v0[8])
  {
    v3 = v0[9];
  }

  if (v0[10])
  {
    v4 = v0[11];
  }

  if (v0[12])
  {
    v5 = v0[13];
  }

  if (v0[15] >= 2uLL)
  {
  }

  v6 = v0[17];

  v7 = v0[18];
  swift_unknownObjectRelease();
  v8 = v0[20];

  return swift_deallocObject();
}

uint64_t sub_1B215E85C()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1B215E894()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B215E8CC()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B215E90C()
{
  v1 = *(v0 + 16);
  sub_1B2161A20(qword_1EB7A0F98, &unk_1B22595B0);
  v2 = *(sub_1B2253480() - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
  }

  else
  {
    (*(*(v1 - 8) + 8))(v0 + v3, v1);
  }

  v5 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v0 + v5 + 8);

  v8 = *(v0 + v6 + 8);

  return swift_deallocObject();
}

uint64_t sub_1B215EA64(uint64_t result)
{
  if (result)
  {
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1B215EAA0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B215EB20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1B2251D00();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return sub_1B2122A98(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20));
    if (v8 >= 7)
    {
      return v8 - 6;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_1B215EBC8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1B2251D00();
  if (*(*(result - 8) + 84) == a3)
  {

    return sub_1B21117B4(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 6;
  }

  return result;
}

uint64_t sub_1B215ECC0()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 184);
  v3 = *(v0 + 192);
  sub_1B211668C(*(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 200) | (*(v0 + 202) << 16), *(v0 + 104), *(v0 + 120), *(v0 + 136), *(v0 + 152), *(v0 + 168));

  return swift_deallocObject();
}

uint64_t sub_1B215ED38()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  v3 = *(v0 + 192);
  v4 = *(v0 + 200);
  sub_1B211668C(*(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104), *(v0 + 208) | (*(v0 + 210) << 16), *(v0 + 112), *(v0 + 128), *(v0 + 144), *(v0 + 160), *(v0 + 176));
  v5 = *(v0 + 360);
  v6 = *(v0 + 368);
  sub_1B211668C(*(v0 + 216), *(v0 + 224), *(v0 + 232), *(v0 + 240), *(v0 + 248), *(v0 + 256), *(v0 + 264), *(v0 + 272), *(v0 + 376) | (*(v0 + 378) << 16), *(v0 + 280), *(v0 + 296), *(v0 + 312), *(v0 + 328), *(v0 + 344));
  v7 = *(v0 + 448);
  v8 = *(v0 + 488);
  v9 = *(v0 + 544) | (*(v0 + 546) << 16);
  if (v7 >> 1 == 0xFFFFFFFF)
  {
    v10 = v8 != 0;
    v11 = v8 == 1;
  }

  else
  {
    v10 = 1;
    v11 = 0;
  }

  if (!v11 && v10 || (v9 & 0xFE7E00) != 0)
  {
    sub_1B213B9FC(*(v0 + 384), *(v0 + 392), *(v0 + 400), *(v0 + 408), *(v0 + 416), *(v0 + 424), *(v0 + 432), *(v0 + 440), v7, *(v0 + 456), *(v0 + 464), *(v0 + 472), *(v0 + 480), v8, *(v0 + 496), *(v0 + 504), *(v0 + 512), *(v0 + 520), *(v0 + 528), *(v0 + 536), v9);
  }

  return swift_deallocObject();
}

uint64_t sub_1B215EF1C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B215EF88()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1B215EFC0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B215F084()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 48);

  return swift_deallocObject();
}

uint64_t sub_1B215F0D0()
{
  v1 = *(v0 + 40);

  return swift_deallocObject();
}

uint64_t sub_1B215F120()
{
  v1 = *(*(v0 + 16) - 8);
  v2 = *(v1 + 64);
  (*(v1 + 8))(v0 + ((*(v1 + 80) + 32) & ~*(v1 + 80)));

  return swift_deallocObject();
}

uint64_t sub_1B215F1A0()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[5];

  v5 = v0[6];

  v6 = v0[8];

  return swift_deallocObject();
}

uint64_t sub_1B215F20C()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[5];

  v4 = v0[6];

  return swift_deallocObject();
}

GRDBInternal::IndexOptions sub_1B215F32C@<X0>(Swift::Int *a1@<X0>, uint64_t a2@<X8>)
{
  result.rawValue = IndexOptions.init(rawValue:)(*a1).rawValue;
  *a2 = v4;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_1B215F36C@<X0>(uint64_t *a1@<X8>)
{
  result = IndexOptions.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B215F450()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_1B21115E0();
  v4 = v3;
  v5 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  sub_1B2112DC0();
  v7 = v5 + *(v6 + 64);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v9 = *(sub_1B2252000() - 8);
  v10 = (v7 + *(v9 + 80)) & ~*(v9 + 80);
  v11 = *(v9 + 64);
  (*(v4 + 8))(v0 + v5, v1);
  if (!sub_1B2122A98(v0 + v10, 1, AssociatedTypeWitness))
  {
    (*(*(AssociatedTypeWitness - 8) + 8))(v0 + v10, AssociatedTypeWitness);
  }

  return swift_deallocObject();
}

uint64_t sub_1B215F5F4()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  sub_1B21115E0();
  v4 = v3;
  v5 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  sub_1B2112DC0();
  v7 = v5 + *(v6 + 64);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1B21115E0();
  v10 = v9;
  v11 = (v7 + *(v10 + 80)) & ~*(v10 + 80);
  v13 = *(v12 + 64);
  (*(v4 + 8))(v0 + v5, v2);
  (*(v10 + 8))(v0 + v11, AssociatedTypeWitness);

  return swift_deallocObject();
}

uint64_t sub_1B215F760()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 168);
  v3 = *(v0 + 176);
  sub_1B211668C(*(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 184) | (*(v0 + 186) << 16), *(v0 + 88), *(v0 + 104), *(v0 + 120), *(v0 + 136), *(v0 + 152));

  return swift_deallocObject();
}

uint64_t sub_1B215F7D8()
{
  v1 = v0[10].n128_u64[0];
  v2 = v0[10].n128_u64[1];
  sub_1B211668C(v0[1].n128_i64[0], v0[1].n128_u64[1], v0[2].n128_i64[0], v0[2].n128_u64[1], v0[3].n128_i64[0], v0[3].n128_i64[1], v0[4].n128_i64[0], v0[4].n128_i64[1], v0[11].n128_u16[0] | (v0[11].n128_u8[2] << 16), v0[5], v0[6], v0[7], v0[8], v0[9]);

  return swift_deallocObject();
}

uint64_t sub_1B215F840()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 168);
  v3 = *(v0 + 176);
  sub_1B211668C(*(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 184) | (*(v0 + 186) << 16), *(v0 + 88), *(v0 + 104), *(v0 + 120), *(v0 + 136), *(v0 + 152));

  return swift_deallocObject();
}

uint64_t sub_1B215F8B8()
{
  v1 = v0[10].n128_u64[0];
  v2 = v0[10].n128_u64[1];
  sub_1B211668C(v0[1].n128_i64[0], v0[1].n128_u64[1], v0[2].n128_i64[0], v0[2].n128_u64[1], v0[3].n128_i64[0], v0[3].n128_i64[1], v0[4].n128_i64[0], v0[4].n128_i64[1], v0[11].n128_u16[0] | (v0[11].n128_u8[2] << 16), v0[5], v0[6], v0[7], v0[8], v0[9]);

  return swift_deallocObject();
}

uint64_t sub_1B215F920()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  sub_1B2117E34();

  return swift_deallocObject();
}

uint64_t sub_1B215F964()
{
  v1 = *(v0 + 32);

  sub_1B2114ED8();

  return swift_deallocObject();
}

uint64_t sub_1B215F9A0()
{
  v1 = *(v0 + 24);

  sub_1B2111904();

  return swift_deallocObject();
}

uint64_t sub_1B215F9D4()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 48);

  sub_1B2117E34();

  return swift_deallocObject();
}

uint64_t sub_1B215FA18()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  sub_1B2111904();

  return swift_deallocObject();
}

uint64_t sub_1B215FA58()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  sub_1B2114ED8();

  return swift_deallocObject();
}

uint64_t sub_1B215FAB0()
{
  v1 = *(v0 + 64);

  v2 = *(v0 + 80);

  return swift_deallocObject();
}

uint64_t sub_1B215FAF0()
{
  v1 = *(v0 + 56);

  return swift_deallocObject();
}

uint64_t sub_1B215FB38()
{
  v1 = v0[6];

  if (v0[7])
  {
    v2 = v0[8];
  }

  if (v0[9])
  {
    v3 = v0[10];
  }

  if (v0[11])
  {
    v4 = v0[12];
  }

  if (v0[13])
  {
    v5 = v0[14];
  }

  if (v0[15])
  {
    v6 = v0[16];
  }

  if (v0[18] >= 2uLL)
  {
  }

  v7 = v0[20];

  v8 = v0[21];

  v9 = v0[23];

  return swift_deallocObject();
}

uint64_t sub_1B215FBE8()
{
  v1 = *(v0 + 3);
  v2 = *(*(v0 + 5) + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1B2161A20(qword_1EB7A0F98, &unk_1B22595B0);
  v4 = *(sub_1B2253480() - 8);
  v5 = (*(v4 + 80) + 72) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v0 + 6);

  v8 = *(v0 + 8);

  if (swift_getEnumCaseMultiPayload() == 1)
  {
  }

  else
  {
    sub_1B2111808(AssociatedTypeWitness);
    (*(v9 + 8))(&v0[v5], AssociatedTypeWitness);
  }

  v10 = &v0[v6];
  if (*&v0[v6])
  {
    v11 = *(v10 + 1);
  }

  if (*(v10 + 2))
  {
    v12 = *(v10 + 3);
  }

  if (*(v10 + 4))
  {
    v13 = *(v10 + 5);
  }

  if (*(v10 + 6))
  {
    v14 = *(v10 + 7);
  }

  if (*(v10 + 8))
  {
    v15 = *(v10 + 9);
  }

  if (*(v10 + 11) >= 2uLL)
  {
  }

  v16 = *(v10 + 13);

  return swift_deallocObject();
}

uint64_t sub_1B215FDB4()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return swift_deallocObject();
}

_OWORD *sub_1B215FE70(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_1B215FEBC(sqlite3_stmt *a1, int a2)
{
  v3 = *v2;
  v4 = v2[1];
  return sub_1B22273A4(a1, a2);
}

uint64_t sub_1B215FF6C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = Statement.columnNames.getter();
  *a2 = result;
  return result;
}

uint64_t sub_1B215FFA4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B2160004()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

void sub_1B2160104(uint64_t a1@<X8>, uint64_t a2@<X0>)
{
  if ((*v2 & a2) != 0)
  {
    *v2 &= ~a2;
  }

  sub_1B223C240(a1);
}

void sub_1B2160124(uint64_t a1@<X8>, int a2@<W0>)
{
  if ((*v2 & a2) != 0)
  {
    *v2 &= ~a2;
  }

  sub_1B2135364(a1);
}

uint64_t sub_1B2160230@<X0>(uint64_t *a1@<X8>)
{
  result = Database.ColumnType.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1B2160258()
{
  v1 = *v0;
  v2 = v0[1];
  return sub_1B2237040();
}

uint64_t sub_1B2160274()
{
  v1 = *v0;
  v2 = v0[1];
  return sub_1B223757C();
}

uint64_t sub_1B2160394()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

void sub_1B2160478(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = -2;
}

void sub_1B2160488()
{
  sub_1B2111608();
  sub_1B2115AF4();
  sub_1B2252EC0();
  __break(1u);
}

char *sub_1B21604EC(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[216 * a2] <= a3)
  {
    return sub_1B2116900(result, a3, 216 * a2);
  }

  return result;
}

char *sub_1B216050C(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[40 * a2] <= a3)
  {
    return sub_1B2117990(a3, result);
  }

  return result;
}

uint64_t sub_1B216063C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

__n128 sub_1B21606D0(__n128 *a1, __n128 *a2)
{
  result = *a1;
  a2[1].n128_u64[0] = a1[1].n128_u64[0];
  *a2 = result;
  return result;
}

uint64_t sub_1B21606E4()
{
  sub_1B213B9FC(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104), *(v0 + 112), *(v0 + 120), *(v0 + 128), *(v0 + 136), *(v0 + 144), *(v0 + 152), *(v0 + 160), *(v0 + 168), *(v0 + 176) | (*(v0 + 178) << 16));

  return swift_deallocObject();
}

uint64_t sub_1B2160760()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1B2160798()
{
  sub_1B2113208((v0 + 16));
  v1 = *(v0 + 56);

  return swift_deallocObject();
}

uint64_t sub_1B2160818@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1B2252220();
  *a2 = result;
  a2[1] = v6;
  return result;
}

uint64_t sub_1B2160848()
{
  sub_1B2252E60();

  return sub_1B2252190();
}

uint64_t getEnumTagSinglePayload for SuffixRowAdapter(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for SuffixRowAdapter(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 8) = v3;
  return result;
}

char *sub_1B2160904(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[8 * a2] <= a3)
  {
    return sub_1B2117990(a3, result);
  }

  return result;
}

char *sub_1B2160924(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[24 * a2] <= a3)
  {
    return sub_1B2117990(a3, result);
  }

  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> Database.create(virtualTable:ifNotExists:using:)(Swift::String virtualTable, Swift::Bool ifNotExists, Swift::String using)
{
  object = using._object;
  countAndFlagsBits = using._countAndFlagsBits;
  v6 = virtualTable._object;
  v7 = virtualTable._countAndFlagsBits;
  sub_1B211728C();
  sub_1B2143F5C();
  v9 = v8;
  v11 = *(v8 + 16);
  v10 = *(v8 + 24);
  v12 = v11 + 1;
  if (v11 >= v10 >> 1)
  {
    sub_1B211156C(v10);
    sub_1B211728C();
    sub_1B211E4A4();
    sub_1B2143F5C();
    v9 = v28;
  }

  *(v9 + 16) = v12;
  v13 = v9 + 16 * v11;
  *(v13 + 32) = 0xD000000000000014;
  *(v13 + 40) = 0x80000001B226CD90;
  if (ifNotExists)
  {
    v14 = *(v9 + 24);
    if ((v11 + 2) > (v14 >> 1))
    {
      sub_1B211156C(v14);
      sub_1B211728C();
      sub_1B2143F5C();
      v9 = v32;
    }

    *(v9 + 16) = v11 + 2;
    sub_1B2121EFC(v9 + 16 * v12);
  }

  v33 = 34;
  v34 = 0xE100000000000000;
  MEMORY[0x1B2741EB0](v7, v6);
  MEMORY[0x1B2741EB0](34, 0xE100000000000000);
  v16 = *(v9 + 16);
  v15 = *(v9 + 24);
  v17 = v15 >> 1;
  v18 = v16 + 1;
  if (v15 >> 1 <= v16)
  {
    sub_1B211156C(v15);
    sub_1B211728C();
    sub_1B211E4A4();
    sub_1B2143F5C();
    v9 = v29;
    v15 = *(v29 + 24);
    v17 = v15 >> 1;
  }

  *(v9 + 16) = v18;
  v19 = v9 + 16 * v16;
  *(v19 + 32) = 34;
  *(v19 + 40) = 0xE100000000000000;
  v20 = v16 + 2;
  if (v17 < (v16 + 2))
  {
    sub_1B211156C(v15);
    sub_1B211728C();
    sub_1B2143F5C();
    v9 = v30;
  }

  *(v9 + 16) = v20;
  sub_1B2117A04(v9 + 16 * v18);
  v21 = *(v9 + 24);

  if ((v16 + 3) > (v21 >> 1))
  {
    sub_1B211728C();
    sub_1B211E4A4();
    sub_1B2143F5C();
    v9 = v31;
  }

  *(v9 + 16) = v16 + 3;
  v22 = v9 + 16 * v20;
  *(v22 + 32) = countAndFlagsBits;
  *(v22 + 40) = object;
  sub_1B21619D8(&qword_1EB7A0DA0, &qword_1B2254340);
  sub_1B215175C();
  v23 = sub_1B2252250();
  v25 = v24;

  v33 = MEMORY[0x1E69E7CC0];
  v34 = MEMORY[0x1E69E7CC8];
  v26.values._rawValue = &v33;
  v27._countAndFlagsBits = v23;
  v27._object = v25;
  Database.execute(sql:arguments:)(v27, v26);
}

uint64_t Database.create<A>(virtualTable:ifNotExists:using:_:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, void (*a5)(char *), uint64_t a6, uint64_t a7, uint64_t a8)
{
  v70 = a2;
  v68 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v14 = *(AssociatedTypeWitness - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v17 = &v64 - v16;
  LOBYTE(v72) = a3;
  v18 = *(a8 + 32);
  v69 = a4;
  v67 = a7;
  v18(&v72, a7, a8);
  if (a5)
  {

    a5(v17);
    if (v8)
    {
      sub_1B2112F4C(a5);
      return (*(v14 + 8))(v17, AssociatedTypeWitness);
    }

    sub_1B2112F4C(a5);
  }

  sub_1B211728C();
  sub_1B2143F5C();
  v20 = v19;
  v22 = *(v19 + 16);
  v21 = *(v19 + 24);
  v23 = v22 + 1;
  if (v22 >= v21 >> 1)
  {
    sub_1B211156C(v21);
    sub_1B211728C();
    sub_1B211E4A4();
    sub_1B2143F5C();
    v20 = v59;
  }

  *(v20 + 16) = v23;
  v24 = v20 + 16 * v22;
  *(v24 + 32) = 0xD000000000000014;
  *(v24 + 40) = 0x80000001B226CD90;
  v66 = v14;
  if (a3)
  {
    v25 = *(v20 + 24);
    v26 = v22 + 2;
    if (v26 > (v25 >> 1))
    {
      sub_1B211156C(v25);
      sub_1B211728C();
      sub_1B2122C40();
      v20 = v62;
    }

    *(v20 + 16) = v26;
    sub_1B2121EFC(v20 + 16 * v23);
  }

  v72 = 34;
  v73 = 0xE100000000000000;
  MEMORY[0x1B2741EB0](v68, v70);
  MEMORY[0x1B2741EB0](34, 0xE100000000000000);
  v27 = v72;
  v28 = v73;
  v30 = *(v20 + 16);
  v29 = *(v20 + 24);
  v31 = v29 >> 1;
  v32 = v30 + 1;
  if (v29 >> 1 <= v30)
  {
    sub_1B211156C(v29);
    sub_1B211728C();
    sub_1B211E4A4();
    sub_1B2143F5C();
    v20 = v60;
    v29 = *(v60 + 24);
    v31 = v29 >> 1;
  }

  *(v20 + 16) = v32;
  v33 = v20 + 16 * v30;
  *(v33 + 32) = v27;
  *(v33 + 40) = v28;
  if (v31 < (v30 + 2))
  {
    sub_1B211156C(v29);
    sub_1B211728C();
    sub_1B2122C40();
    v20 = v61;
  }

  *(v20 + 16) = v30 + 2;
  sub_1B2117A04(v20 + 16 * v32);
  v14 = v66;
  v34 = (*(a8 + 40))(v17, v71, v67, a8);
  if (v8)
  {

    return (*(v14 + 8))(v17, AssociatedTypeWitness);
  }

  v35 = v34;
  if (*(v34 + 16))
  {
    v36 = sub_1B214403C();
    v72 = v37(v36);
    v73 = v38;

    MEMORY[0x1B2741EB0](40, 0xE100000000000000);

    v39 = v73;
    v65 = v72;
    v72 = v35;
    sub_1B21619D8(&qword_1EB7A0DA0, &qword_1B2254340);
    sub_1B215175C();
    v40 = sub_1B2252250();
    v42 = v41;

    v72 = v65;
    v73 = v39;

    MEMORY[0x1B2741EB0](v40, v42);

    MEMORY[0x1B2741EB0](41, 0xE100000000000000);

    v43 = v72;
    v44 = v73;
  }

  else
  {

    v45 = sub_1B214403C();
    v43 = v46(v45);
    v44 = v47;
  }

  v49 = *(v20 + 16);
  v48 = *(v20 + 24);
  if (v49 >= v48 >> 1)
  {
    sub_1B211156C(v48);
    sub_1B211728C();
    sub_1B2122C40();
    v20 = v63;
  }

  *(v20 + 16) = v49 + 1;
  v50 = v20 + 16 * v49;
  *(v50 + 32) = v43;
  *(v50 + 40) = v44;
  v72 = v20;
  sub_1B21619D8(&qword_1EB7A0DA0, &qword_1B2254340);
  sub_1B215175C();
  v51 = sub_1B2252250();
  v53 = v52;

  MEMORY[0x1EEE9AC00](v54);
  *(&v64 - 10) = v67;
  *(&v64 - 9) = a8;
  *(&v64 - 8) = v71;
  *(&v64 - 7) = v51;
  v56 = v68;
  v55 = v69;
  *(&v64 - 6) = v53;
  *(&v64 - 5) = v55;
  v57 = v70;
  *(&v64 - 4) = v56;
  *(&v64 - 3) = v57;
  *(&v64 - 2) = v17;
  Database.inSavepoint(_:)();

  return (*(v66 + 8))(v17, AssociatedTypeWitness);
}

void sub_1B2161368(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  sub_1B216139C();
  *a2 = v4;
  *(a2 + 8) = v5 & 1;
}

uint64_t sub_1B21613A4@<X0>(uint64_t *a1@<X8>)
{
  result = nullsub_1(*v1);
  *a1 = result;
  return result;
}

uint64_t sub_1B21613E8(uint64_t (*a1)(uint64_t, uint64_t, uint64_t, uint64_t))
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

void sub_1B2161444()
{
  v2 = sub_1B2115E10();
  *v1 = v0;
  if (!v2)
  {
    v3 = *(v0 + 16);
    sub_1B2115530();
    sub_1B213B894();
    *v1 = v4;
  }
}

void sub_1B21614F0()
{
  v2 = sub_1B2115E10();
  *v1 = v0;
  if (!v2)
  {
    v3 = *(v0 + 16);
    sub_1B2115530();
    sub_1B2143F5C();
    *v1 = v4;
  }
}

void sub_1B216156C()
{
  v2 = sub_1B2115E10();
  *v1 = v0;
  if (!v2)
  {
    v3 = *(v0 + 16);
    sub_1B2115530();
    sub_1B2158D58();
    *v1 = v4;
  }
}

void sub_1B21615D0()
{
  v2 = sub_1B2115E10();
  *v1 = v0;
  if (!v2)
  {
    v3 = *(v0 + 16);
    sub_1B2115530();
    sub_1B2162E10();
    *v1 = v4;
  }
}

void sub_1B2161634()
{
  v2 = sub_1B2115E10();
  *v1 = v0;
  if (!v2)
  {
    v3 = *(v0 + 16);
    sub_1B2115530();
    sub_1B2158D58();
    *v1 = v4;
  }
}

void sub_1B2161698()
{
  v2 = sub_1B2115E10();
  *v1 = v0;
  if (!v2)
  {
    v3 = *(v0 + 16);
    sub_1B2115530();
    sub_1B2158D58();
    *v1 = v4;
  }
}

void sub_1B21616FC()
{
  sub_1B2114EB4();
  if (!(v2 ^ v3 | v1))
  {
    sub_1B2117F10();
    sub_1B213B894();
    *v0 = v4;
  }
}

uint64_t sub_1B2161764(uint64_t result, uint64_t (*a2)(BOOL))
{
  v3 = *(*v2 + 24);
  if (result + 1 > (v3 >> 1))
  {
    result = a2(v3 > 1);
    *v2 = result;
  }

  return result;
}

void sub_1B21617F4()
{
  sub_1B2114EB4();
  if (!(v2 ^ v3 | v1))
  {
    sub_1B2112F78();
    sub_1B2143F5C();
    *v0 = v4;
  }
}

void sub_1B2161868()
{
  sub_1B2114EB4();
  if (!(v2 ^ v3 | v1))
  {
    sub_1B2112F78();
    sub_1B2158D58();
    *v0 = v4;
  }
}

void sub_1B21618C4()
{
  sub_1B2114EB4();
  if (!(v2 ^ v3 | v1))
  {
    sub_1B2112F78();
    sub_1B2162E10();
    *v0 = v4;
  }
}

void sub_1B2161920()
{
  sub_1B2114EB4();
  if (!(v2 ^ v3 | v1))
  {
    sub_1B2112F78();
    sub_1B2158D58();
    *v0 = v4;
  }
}

void sub_1B216197C()
{
  sub_1B2114EB4();
  if (!(v2 ^ v3 | v1))
  {
    sub_1B2112F78();
    sub_1B2158D58();
    *v0 = v4;
  }
}

uint64_t sub_1B21619D8(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_1B2161A20(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for VirtualTableConfiguration(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
    if (a2 + 1 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 1) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 2;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v5 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for VirtualTableConfiguration(_BYTE *result, unsigned int a2, unsigned int a3)
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

__n128 sub_1B2161CA0(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_1B2161CB4(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 48))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B2161CD4(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
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

  *(result + 48) = v3;
  return result;
}

__n128 sub_1B2161D20(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_1B2161D34(uint64_t *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 24))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1B2161D88(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

__n128 sub_1B2161DF0(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u32[0] = a2[1].n128_u32[0];
  *a1 = result;
  return result;
}

uint64_t sub_1B2161E04(uint64_t a1, int a2)
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

uint64_t sub_1B2161E24(uint64_t result, int a2, int a3)
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

void sub_1B2161E78(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

void sub_1B2161EEC()
{
  sub_1B211ACC4();
  if ((v5 & 1) == 0)
  {
    v6 = v4;
    goto LABEL_7;
  }

  sub_1B2115F84();
  if (v7 == v8)
  {
LABEL_7:
    sub_1B2118200(v6);
    if (v3)
    {
      sub_1B21619D8(&qword_1EB7A0EC0, &qword_1B22545D8);
      v9 = sub_1B211A23C();
      sub_1B2111554(v9);
      sub_1B211F5F8();
      v9[2] = v2;
      v9[3] = v10;
      if (v1)
      {
LABEL_9:
        v11 = sub_1B21117DC();
        sub_1B2160904(v11, v12, v13);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    sub_1B21619D8(&qword_1EB7A0EC8, &unk_1B22545E0);
    sub_1B2111ED8();
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

void sub_1B2161FE4()
{
  sub_1B211ACC4();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  sub_1B2115F84();
  if (v6 == v7)
  {
LABEL_7:
    sub_1B2118200(v5);
    if (v2)
    {
      sub_1B21619D8(&qword_1EB7A0DF0, &qword_1B2254508);
      v8 = sub_1B2112F5C();
      sub_1B21127CC(v8);
      if (v1)
      {
LABEL_9:
        v9 = sub_1B21117DC();
        sub_1B2160924(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    sub_1B21619D8(&qword_1EB7A0DF8, &qword_1B2254510);
    sub_1B2111ED8();
    goto LABEL_12;
  }

  sub_1B212CD14();
  if (!v6)
  {
    sub_1B2115544();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_1B21620A4()
{
  sub_1B211ACC4();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  sub_1B2115F84();
  if (v6 == v7)
  {
LABEL_7:
    sub_1B2118200(v5);
    if (v2)
    {
      sub_1B21619D8(&qword_1EB7A0E00, &qword_1B2254518);
      v8 = sub_1B2112F5C();
      sub_1B21127CC(v8);
      if (v1)
      {
LABEL_9:
        v9 = sub_1B21117DC();
        sub_1B224B150(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    sub_1B21619D8(&qword_1EB7A0E08, &qword_1B2254520);
    sub_1B2111ED8();
    goto LABEL_12;
  }

  sub_1B212CD14();
  if (!v6)
  {
    sub_1B2115544();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_1B2162164()
{
  sub_1B211ACC4();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  sub_1B2115F84();
  if (v6 == v7)
  {
LABEL_7:
    sub_1B2118200(v5);
    if (v2)
    {
      sub_1B21619D8(&qword_1EB7A0E10, &qword_1B2254528);
      v8 = sub_1B2112F5C();
      sub_1B21127CC(v8);
      if (v1)
      {
LABEL_9:
        v9 = sub_1B21117DC();
        sub_1B2245534(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    sub_1B21619D8(&qword_1EB7A0E18, &qword_1B2254530);
    sub_1B2111ED8();
    goto LABEL_12;
  }

  sub_1B212CD14();
  if (!v6)
  {
    sub_1B2115544();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_1B21622AC()
{
  sub_1B211ACC4();
  if ((v5 & 1) == 0)
  {
    v6 = v4;
    goto LABEL_7;
  }

  sub_1B2115F84();
  if (v7 == v8)
  {
LABEL_7:
    sub_1B2118200(v6);
    if (v3)
    {
      sub_1B21619D8(&qword_1EB7A0F00, &qword_1B2254618);
      v9 = sub_1B211A23C();
      sub_1B2111554(v9);
      sub_1B211F5F8();
      v9[2] = v2;
      v9[3] = v10;
      if (v1)
      {
LABEL_9:
        v11 = sub_1B21117DC();
        sub_1B21505F4(v11);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    sub_1B21619D8(&qword_1EB7A0F08, &qword_1B2254620);
    sub_1B2111ED8();
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

void sub_1B2162374()
{
  sub_1B211ACC4();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  sub_1B2115F84();
  if (v6 == v7)
  {
LABEL_7:
    sub_1B2118200(v5);
    if (v2)
    {
      sub_1B21619D8(&qword_1EB7A0EF0, &unk_1B225B6E0);
      v8 = sub_1B2112F5C();
      sub_1B21127CC(v8);
      if (v1)
      {
LABEL_9:
        v9 = sub_1B21117DC();
        sub_1B2158F60(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    sub_1B21619D8(&qword_1EB7A0EF8, &qword_1B2254610);
    sub_1B2111ED8();
    goto LABEL_12;
  }

  sub_1B212CD14();
  if (!v6)
  {
    sub_1B2115544();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_1B2162464()
{
  sub_1B211ACC4();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  sub_1B2115F84();
  if (v6 == v7)
  {
LABEL_7:
    sub_1B2118200(v5);
    if (v2)
    {
      sub_1B21619D8(&qword_1EB7A0F50, &qword_1B2254C10);
      v8 = sub_1B2112F5C();
      sub_1B21127CC(v8);
      if (v1)
      {
LABEL_9:
        v9 = sub_1B21117DC();
        sub_1B224557C(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    sub_1B212CD20();
    goto LABEL_12;
  }

  sub_1B212CD14();
  if (!v6)
  {
    sub_1B2115544();
    goto LABEL_7;
  }

  __break(1u);
}

uint64_t sub_1B2162518(uint64_t result, int64_t a2, char a3, uint64_t a4)
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
      sub_1B21619D8(&qword_1EB7A0F28, &qword_1B2254640);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 24);
      if (v5)
      {
LABEL_13:
        sub_1B2160924((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        goto LABEL_13;
      }
    }

    sub_1B21619D8(&qword_1EB7A0F30, &qword_1B2254648);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void sub_1B2162658()
{
  sub_1B211ACC4();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  sub_1B2115F84();
  if (v6 == v7)
  {
LABEL_7:
    sub_1B2118200(v5);
    if (v2)
    {
      sub_1B21619D8(&qword_1EB7A0F68, &unk_1B2254680);
      v8 = sub_1B2112F5C();
      sub_1B21127CC(v8);
      if (v1)
      {
LABEL_9:
        v9 = sub_1B21117DC();
        sub_1B224559C(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    sub_1B212CD20();
    goto LABEL_12;
  }

  sub_1B212CD14();
  if (!v6)
  {
    sub_1B2115544();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_1B2162734(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, void (*a7)(uint64_t, uint64_t, void *))
{
  v9 = a1;
  if ((a3 & 1) == 0)
  {
    v10 = a2;
    goto LABEL_7;
  }

  sub_1B2115F84();
  if (v11 == v12)
  {
LABEL_7:
    v13 = *(a4 + 16);
    if (v10 <= v13)
    {
      v14 = *(a4 + 16);
    }

    else
    {
      v14 = v10;
    }

    if (v14)
    {
      sub_1B2113B10(a1, a2, a3, a4, a5, a6);
      v15 = sub_1B211A23C();
      sub_1B2111554(v15);
      sub_1B211F5F8();
      v15[2] = v13;
      v15[3] = v16;
      if (v9)
      {
LABEL_12:
        a7(a4 + 32, v13, v15 + 4);
        *(a4 + 16) = 0;
LABEL_15:

        return;
      }
    }

    else
    {
      v15 = MEMORY[0x1E69E7CC0];
      if (v9)
      {
        goto LABEL_12;
      }
    }

    memcpy(v15 + 4, (a4 + 32), 16 * v13);
    goto LABEL_15;
  }

  sub_1B212CD14();
  if (!v11)
  {
    sub_1B2115544();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_1B2162838()
{
  sub_1B211ACC4();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  sub_1B2115F84();
  if (v6 == v7)
  {
LABEL_7:
    sub_1B2118200(v5);
    if (v2)
    {
      sub_1B21619D8(&qword_1EB7A0F38, &unk_1B2254650);
      v8 = sub_1B2112F5C();
      sub_1B21127CC(v8);
      if (v1)
      {
LABEL_9:
        v9 = sub_1B21117DC();
        sub_1B224B154(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    sub_1B21619D8(&qword_1EB7A0F40, &qword_1B226C7E0);
    sub_1B2111ED8();
    goto LABEL_12;
  }

  sub_1B212CD14();
  if (!v6)
  {
    sub_1B2115544();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_1B2162920(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, void (*a7)(uint64_t, uint64_t, void *))
{
  v9 = a1;
  if ((a3 & 1) == 0)
  {
    v10 = a2;
    goto LABEL_7;
  }

  sub_1B2115F84();
  if (v11 == v12)
  {
LABEL_7:
    v13 = *(a4 + 16);
    if (v10 <= v13)
    {
      v14 = *(a4 + 16);
    }

    else
    {
      v14 = v10;
    }

    if (v14)
    {
      sub_1B2113B10(a1, a2, a3, a4, a5, a6);
      v15 = sub_1B211A23C();
      sub_1B2111554(v15);
      sub_1B211F5F8();
      v15[2] = v13;
      v15[3] = v16;
      if (v9)
      {
LABEL_12:
        a7(a4 + 32, v13, v15 + 4);
        *(a4 + 16) = 0;
LABEL_15:

        return;
      }
    }

    else
    {
      v15 = MEMORY[0x1E69E7CC0];
      if (v9)
      {
        goto LABEL_12;
      }
    }

    memcpy(v15 + 4, (a4 + 32), 8 * v13);
    goto LABEL_15;
  }

  sub_1B212CD14();
  if (!v11)
  {
    sub_1B2115544();
    goto LABEL_7;
  }

  __break(1u);
}

uint64_t sub_1B2162A24(uint64_t result, int64_t a2, char a3, uint64_t a4)
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
      sub_1B21619D8(&qword_1EB7A0F18, &unk_1B2254630);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 16);
      if (v5)
      {
LABEL_13:
        sub_1B215A618((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        goto LABEL_13;
      }
    }

    sub_1B21619D8(&qword_1EB7A0F20, qword_1B2262540);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void *sub_1B2162B34(void *result, int64_t a2, char a3, uint64_t a4)
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
      sub_1B21619D8(&qword_1EB7A0F58, &qword_1B2254670);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      v10[2] = v8;
      v10[3] = 2 * ((v11 - 32) / 24);
      if (v5)
      {
LABEL_13:
        sub_1B213CECC(a4 + 32, v8, v10 + 4);
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        goto LABEL_13;
      }
    }

    sub_1B21619D8(&qword_1EB7A0F60, &qword_1B2254678);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void sub_1B2162C4C()
{
  sub_1B211ACC4();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  sub_1B2115F84();
  if (v6 == v7)
  {
LABEL_7:
    sub_1B2118200(v5);
    if (v2)
    {
      sub_1B21619D8(&qword_1EB7A0E98, &qword_1B22545B0);
      v8 = sub_1B2112F5C();
      sub_1B21127CC(v8);
      if (v1)
      {
LABEL_9:
        v9 = sub_1B21117DC();
        sub_1B224B144(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    sub_1B212CD20();
    goto LABEL_12;
  }

  sub_1B212CD14();
  if (!v6)
  {
    sub_1B2115544();
    goto LABEL_7;
  }

  __break(1u);
}

uint64_t sub_1B2162D00(uint64_t result, int64_t a2, char a3, uint64_t a4)
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
      sub_1B21619D8(&qword_1EB7A0E80, &qword_1B2254598);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 16);
      if (v5)
      {
LABEL_13:
        sub_1B224B13C((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        goto LABEL_13;
      }
    }

    sub_1B21619D8(&qword_1EB7A0E88, &qword_1B22545A0);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void sub_1B2162E10()
{
  sub_1B2114660();
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
      sub_1B2111554(v16);
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

void sub_1B2162EC0()
{
  sub_1B211ACC4();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  sub_1B2115F84();
  if (v6 == v7)
  {
LABEL_7:
    sub_1B2118200(v5);
    if (v2)
    {
      sub_1B21619D8(&qword_1EB7A0E48, &qword_1B2254560);
      v8 = sub_1B2112F5C();
      sub_1B21127CC(v8);
      if (v1)
      {
LABEL_9:
        v9 = sub_1B21117DC();
        sub_1B2158F60(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    sub_1B21619D8(&qword_1EB7A0E50, &qword_1B2254568);
    sub_1B2111ED8();
    goto LABEL_12;
  }

  sub_1B212CD14();
  if (!v6)
  {
    sub_1B2115544();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_1B2162F80()
{
  sub_1B211ACC4();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  sub_1B2115F84();
  if (v6 == v7)
  {
LABEL_7:
    sub_1B2118200(v5);
    if (v2)
    {
      sub_1B21619D8(&qword_1EB7A0E38, &unk_1B2254550);
      v8 = sub_1B2112F5C();
      sub_1B21127CC(v8);
      if (v1)
      {
LABEL_9:
        v9 = sub_1B21117DC();
        sub_1B2160924(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    sub_1B21619D8(&qword_1EB7A0E40, &unk_1B226BA30);
    sub_1B2111ED8();
    goto LABEL_12;
  }

  sub_1B212CD14();
  if (!v6)
  {
    sub_1B2115544();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_1B2163040()
{
  sub_1B211ACC4();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  sub_1B2115F84();
  if (v6 == v7)
  {
LABEL_7:
    sub_1B2118200(v5);
    if (v2)
    {
      sub_1B21619D8(&qword_1EB7A0E28, &unk_1B2254540);
      v8 = sub_1B2112F5C();
      sub_1B21127CC(v8);
      if (v1)
      {
LABEL_9:
        v9 = sub_1B21117DC();
        sub_1B2158F60(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    sub_1B21619D8(&qword_1EB7A0E30, &unk_1B2259360);
    sub_1B2111ED8();
    goto LABEL_12;
  }

  sub_1B212CD14();
  if (!v6)
  {
    sub_1B2115544();
    goto LABEL_7;
  }

  __break(1u);
}

uint64_t DatabaseWriter.asyncWrite<A>(_:completion:)()
{
  sub_1B2111F14();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = swift_allocObject();
  v14[2] = v5;
  v14[3] = v3;
  v14[4] = v1;
  v14[5] = v13;
  v14[6] = v11;
  v14[7] = v9;
  v14[8] = v7;
  v15 = *(v1 + 56);

  v15(sub_1B216354C, v14, v5, v1);
  sub_1B2111588();
}

uint64_t sub_1B21631FC(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, char *), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v29 = a8;
  v30 = a5;
  v31 = a4;
  v27 = a2;
  v28 = a3;
  sub_1B2161A20(qword_1EB7A0F98, &unk_1B22595B0);
  v11 = sub_1B2253480();
  v26 = *(v11 - 8);
  v12 = *(v26 + 64);
  v13 = MEMORY[0x1EEE9AC00](v11);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v26 - v14;
  v16 = sub_1B2252B00();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x1EEE9AC00](v16);
  v21 = &v26 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v26 - v22;
  sub_1B21117B4(&v26 - v22, 1, 1, a7);
  v39 = 3;
  v32 = a6;
  v33 = a7;
  v34 = v29;
  v35 = v23;
  v36 = v27;
  v37 = v28;
  v38 = a1;
  Database.inTransaction(_:_:)(&v39, sub_1B212341C);
  v24 = v31;
  (*(v17 + 16))(v21, v23, v16);
  result = sub_1B2122A98(v21, 1, a7);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(*(a7 - 8) + 32))(v15, v21, a7);
    swift_storeEnumTagMultiPayload();
    v24(a1, v15);
    (*(v26 + 8))(v15, v11);
    return (*(v17 + 8))(v23, v16);
  }

  return result;
}

uint64_t DatabaseWriter.add(transactionObserver:extent:)(uint64_t a1, uint64_t a2, char *a3, uint64_t a4, uint64_t a5)
{
  v9 = *a3;
  v5 = *(a5 + 24);
  v6 = sub_1B2111578();
  return v7(v6);
}

uint64_t DatabaseWriter.remove(transactionObserver:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1B212293C(a1, a2, a3, a4);
  v4 = sub_1B2111578();
  return v5(v4);
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> DatabaseWriter.vacuum(into:)(Swift::String into)
{
  sub_1B212293C(into._countAndFlagsBits, into._object, v1, v2);
  v3 = sub_1B2111578();
  v4(v3);
}

void sub_1B2163818()
{
  sub_1B2111F14();
  v1 = v0;
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0);
  memcpy(v14, v1, sizeof(v14));
  v4 = v14[0];
  v5 = v14[2];
  v6 = v14[4];
  v7 = v14[6];
  v10 = v14[8];
  v13 = *(v1 + 80);
  v11 = *(v1 + 88);
  v12 = *(v1 + 96);
  v8 = *(v1 + 104);
  type metadata accessor for ValueWriteOnlyObserver();
  sub_1B2112328(v4);
  sub_1B2112328(v5);
  sub_1B2112328(v6);
  sub_1B2112328(v7);
  sub_1B2112328(v10);
  sub_1B2167008(v11);
  swift_unknownObjectRetain();

  v12(v9);

  sub_1B21E263C();
  sub_1B21E26C4();

  sub_1B2111588();
}

uint64_t DatabaseWriter.write<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[7] = a6;
  v7[8] = v6;
  v7[5] = a4;
  v7[6] = a5;
  v7[3] = a2;
  v7[4] = a3;
  v7[2] = a1;
  return sub_1B2114EC8();
}

uint64_t sub_1B2163A38()
{
  sub_1B2111F08();
  v0 = swift_task_alloc();
  sub_1B21164D4(v0);
  v1 = sub_1B2115B50(&unk_1B22546C8);
  v2 = sub_1B212DDE0(v1);
  *v2 = v3;
  sub_1B211D840(v2);
  sub_1B2115F94();

  return v4();
}

uint64_t sub_1B2163AD8()
{
  sub_1B2111F08();
  sub_1B2117F28();
  v3 = v2;
  sub_1B2118210();
  *v4 = v3;
  v6 = *(v5 + 80);
  v7 = *v1;
  sub_1B21117EC();
  *v8 = v7;
  *(v3 + 88) = v0;

  if (v0)
  {
    sub_1B2117A1C();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {
    v12 = *(v3 + 72);

    v13 = *(v7 + 8);

    return v13();
  }
}

uint64_t sub_1B2163BF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = swift_allocObject();
  v13[2] = a5;
  v13[3] = a6;
  v13[4] = a7;
  v13[5] = a1;
  (*(a7 + 48))(a3, a4, sub_1B2167228, v13, a6, a5, a7);
}

uint64_t sub_1B2163CD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_1B21619D8(qword_1EB7A0F98, &unk_1B22595B0);

  return sub_1B2163D44(a2, a3, a5, v8);
}

uint64_t sub_1B2163D44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v24 = a2;
  v7 = *(a3 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](a1);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v16 = &v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1B2253480();
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v23 - v19;
  (*(v21 + 16))(&v23 - v19, a1, v17);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v13 + 32))(v16, v20, a4);
    return sub_1B2221480(v16, v24, a3, a4);
  }

  else
  {
    (*(v7 + 32))(v11, v20, a3);
    return sub_1B222140C(v11, v24, a3);
  }
}

uint64_t sub_1B2163F90()
{
  sub_1B2111F08();
  v0[11] = v1;
  v0[12] = v2;
  v0[10] = v3;
  if (v4)
  {
    swift_getObjectType();
    v5 = sub_1B22526F0();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  return MEMORY[0x1EEE6DFA0](sub_1B2164020, v5, v7);
}

uint64_t sub_1B2164020()
{
  sub_1B211F604();
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[10];
  v0[2] = v0;
  v0[7] = v3;
  v0[3] = sub_1B21640C4;
  v4 = swift_continuation_init();
  v2(v4);

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1B21640C4()
{
  sub_1B211F604();
  sub_1B2117F28();
  v1 = *v0;
  sub_1B2118210();
  *v3 = v1;
  if (*(v2 + 48))
  {
    v4 = *(v2 + 48);
    swift_willThrow();
  }

  v5 = *(v1 + 8);

  return v5();
}

uint64_t DatabaseWriter.writeWithoutTransaction<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[7] = a6;
  v7[8] = v6;
  v7[5] = a4;
  v7[6] = a5;
  v7[3] = a2;
  v7[4] = a3;
  v7[2] = a1;
  return sub_1B2114EC8();
}

uint64_t sub_1B21641DC()
{
  sub_1B2111F08();
  v0 = swift_task_alloc();
  sub_1B21164D4(v0);
  v1 = sub_1B2115B50(&unk_1B22546C8);
  v2 = sub_1B212DDE0(v1);
  *v2 = v3;
  sub_1B211D840(v2);
  sub_1B2115F94();

  return v4();
}

uint64_t sub_1B216427C()
{
  sub_1B2111F08();
  sub_1B2117F28();
  v3 = v2;
  sub_1B2118210();
  *v4 = v3;
  v6 = *(v5 + 80);
  v7 = *v1;
  sub_1B21117EC();
  *v8 = v7;
  *(v3 + 88) = v0;

  if (v0)
  {
    sub_1B2117A1C();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {
    v12 = *(v3 + 72);

    v13 = *(v7 + 8);

    return v13();
  }
}

uint64_t sub_1B216439C()
{
  sub_1B2111F08();
  v1 = v0[9];

  v2 = v0[1];
  v3 = v0[11];

  return v2();
}

uint64_t sub_1B21643FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = swift_allocObject();
  v13[2] = a5;
  v13[3] = a6;
  v13[4] = a7;
  v13[5] = a1;
  v13[6] = a3;
  v13[7] = a4;
  v14 = *(a7 + 56);

  v14(sub_1B2167224, v13, a5, a7);
}

uint64_t DatabaseWriter.barrierWriteWithoutTransaction<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[7] = a6;
  v7[8] = v6;
  v7[5] = a4;
  v7[6] = a5;
  v7[3] = a2;
  v7[4] = a3;
  v7[2] = a1;
  return sub_1B2114EC8();
}

uint64_t sub_1B2164514()
{
  sub_1B2111F08();
  v0 = swift_task_alloc();
  sub_1B21164D4(v0);
  v1 = sub_1B2115B50(&unk_1B22546C8);
  v2 = sub_1B212DDE0(v1);
  *v2 = v3;
  sub_1B211D840(v2);
  sub_1B2115F94();

  return v4();
}

uint64_t sub_1B21645B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = swift_allocObject();
  v13[2] = a5;
  v13[3] = a6;
  v13[4] = a7;
  v13[5] = a1;
  v13[6] = a3;
  v13[7] = a4;
  v14 = *(a7 + 40);

  v14(sub_1B2167288, v13, a5, a7);
}

uint64_t sub_1B2164694(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = *(*(a6 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](a1);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12(v9);
  sub_1B21619D8(qword_1EB7A0F98, &unk_1B22595B0);
  return sub_1B222140C(v11, a2, a6);
}

uint64_t DatabaseWriter.erase()()
{
  sub_1B211F604();
  sub_1B211D530();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1B216483C;
  sub_1B212245C();

  return DatabaseWriter.writeWithoutTransaction<A>(_:)(v2, v3, v4, v5, v6, v7);
}

uint64_t sub_1B216483C()
{
  sub_1B2111F08();
  sub_1B2117F28();
  v3 = *(v2 + 16);
  v4 = *v1;
  sub_1B21117EC();
  *v5 = v4;
  *(v6 + 24) = v0;

  sub_1B2117A1C();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t DatabaseWriter.vacuum()()
{
  sub_1B211F604();
  sub_1B211D530();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1B2164A18;
  sub_1B212245C();

  return DatabaseWriter.writeWithoutTransaction<A>(_:)(v2, v3, v4, v5, v6, v7);
}

uint64_t sub_1B2164A18()
{
  sub_1B2111F08();
  sub_1B2117F28();
  v3 = *(v2 + 16);
  v4 = *v1;
  sub_1B21117EC();
  *v5 = v4;
  *(v6 + 24) = v0;

  sub_1B2117A1C();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t DatabaseWriter.vacuum(into:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return sub_1B2114EC8();
}

uint64_t sub_1B2164BA0()
{
  sub_1B211F604();
  v2 = v0[2];
  v1 = v0[3];
  v3 = swift_allocObject();
  v0[7] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;

  v4 = swift_task_alloc();
  v0[8] = v4;
  *v4 = v0;
  v4[1] = sub_1B2164C8C;
  v5 = v0[5];
  v6 = v0[6];
  v7 = v0[4];
  v8 = MEMORY[0x1E69E7CA8] + 8;

  return DatabaseWriter.writeWithoutTransaction<A>(_:)(v4, sub_1B2167290, v3, v7, v8, v5);
}

uint64_t sub_1B2164C8C()
{
  sub_1B2111F08();
  sub_1B2117F28();
  v3 = v2;
  sub_1B2118210();
  *v4 = v3;
  v6 = *(v5 + 64);
  v7 = *v1;
  sub_1B21117EC();
  *v8 = v7;
  *(v3 + 72) = v0;

  if (!v0)
  {
    v9 = *(v3 + 56);
  }

  sub_1B2117A1C();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1B2164D8C()
{
  sub_1B2111F08();
  v1 = v0[7];

  v2 = v0[1];
  v3 = v0[9];

  return v2();
}

uint64_t sub_1B2164DEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1B21619D8(&qword_1EB7A0E28, &unk_1B2254540);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B22546B0;
  *(inited + 56) = MEMORY[0x1E69E6158];
  *(inited + 64) = &protocol witness table for String;
  *(inited + 32) = a2;
  *(inited + 40) = a3;

  sub_1B2112554(inited, &v9);
  v6._countAndFlagsBits = 0x49204D5555434156;
  v6._object = 0xED00003F204F544ELL;
  v7.values._rawValue = &v9;
  Database.execute(sql:arguments:)(v6, v7);
}

void DatabaseWriter.writePublisher<A>(updates:)()
{
  sub_1B2114244();
  sub_1B2111770();
  v0 = sub_1B2252A30();
  sub_1B216520C();
  DatabaseWriter.writePublisher<A, B>(receiveOn:updates:)();
}

void DatabaseWriter.writePublisher<A, B>(receiveOn:updates:)()
{
  sub_1B2111F14();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v38 = v11;
  v39 = v10;
  v41 = v12;
  v44 = v13;
  v45 = v14;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v15 = sub_1B2252B00();
  v16 = sub_1B211280C(v15);
  v42 = v17;
  v43 = v16;
  v19 = *(v18 + 64);
  sub_1B21117FC();
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v36 - v21;
  sub_1B2161A20(qword_1EB7A0F98, &unk_1B22595B0);
  v23 = type metadata accessor for OnDemandFuture();
  sub_1B211422C();
  WitnessTable = swift_getWitnessTable();
  v46 = v23;
  v47 = v9;
  v48 = WitnessTable;
  v49 = v3;
  v24 = type metadata accessor for ReceiveValuesOn();
  sub_1B211280C(v24);
  v36 = v25;
  v27 = *(v26 + 64);
  sub_1B21117FC();
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v36 - v29;
  v31 = swift_allocObject();
  v32 = v39;
  v31[2] = v38;
  v31[3] = v9;
  v31[4] = v7;
  v31[5] = v5;
  v31[6] = v3;
  v31[7] = v1;
  v33 = v41;
  v31[8] = v32;
  v31[9] = v33;
  v46 = nullsub_1(sub_1B2165354);
  v47 = v34;
  sub_1B21117B4(v22, 1, 1, AssociatedTypeWitness);
  sub_1B21EFFCC(v44, v22, v23, v9, WitnessTable, v30);
  v35 = *(v42 + 8);
  swift_unknownObjectRetain();

  v35(v22, v43);

  sub_1B2122108();
  swift_getWitnessTable();
  *v45 = sub_1B22520B0();
  (*(v36 + 8))(v30, v24);
  sub_1B2111588();
}

unint64_t sub_1B216520C()
{
  result = qword_1EB7A0F90;
  if (!qword_1EB7A0F90)
  {
    sub_1B2111770();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7A0F90);
  }

  return result;
}

uint64_t sub_1B2165264(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v17 = swift_allocObject();
  v17[2] = a6;
  v17[3] = a7;
  v17[4] = a8;
  v17[5] = a9;
  v17[6] = a10;
  v17[7] = a1;
  v17[8] = a2;
  v18 = *(a9 + 48);

  v18(a4, a5, sub_1B21671D4, v17, a8, a6, a9);
}

void DatabaseWriter.writePublisher<A, B>(updates:thenRead:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = sub_1B2111770();
  v16 = sub_1B2252A30();
  v17 = sub_1B216520C();
  DatabaseWriter.writePublisher<A, B, C>(receiveOn:updates:thenRead:)(v20, a1, a2, a3, a4, a5, v15, a6, a7, a8, v17, a6, v19, v16, v20[1], v20[2], v20[3], v20[4], v20[5], v20[6], v20[7], v20[8], v20[9]);
}

void DatabaseWriter.writePublisher<A, B, C>(receiveOn:updates:thenRead:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  sub_1B2111F14();
  v63 = v25;
  v64 = v24;
  v27 = v26;
  v60 = v29;
  v61 = v28;
  v65 = v30;
  v32 = v31;
  v56[1] = v31;
  v68 = v33;
  v69 = v34;
  v59 = a22;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v35 = sub_1B2252B00();
  v36 = sub_1B211280C(v35);
  v66 = v37;
  v67 = v36;
  v39 = *(v38 + 64);
  sub_1B21117FC();
  MEMORY[0x1EEE9AC00](v40);
  v42 = v56 - v41;
  sub_1B2161A20(qword_1EB7A0F98, &unk_1B22595B0);
  v43 = type metadata accessor for OnDemandFuture();
  sub_1B211422C();
  WitnessTable = swift_getWitnessTable();
  v70 = v43;
  v71 = v27;
  v72 = WitnessTable;
  v73 = a23;
  v44 = type metadata accessor for ReceiveValuesOn();
  sub_1B211280C(v44);
  v58 = v45;
  v47 = *(v46 + 64);
  sub_1B21117FC();
  MEMORY[0x1EEE9AC00](v48);
  v50 = v56 - v49;
  v51 = swift_allocObject();
  v51[2] = v60;
  v51[3] = v27;
  v51[4] = v63;
  v51[5] = a21;
  v51[6] = v59;
  v51[7] = a23;
  v52 = v61;
  v51[8] = v23;
  v51[9] = v52;
  v53 = v64;
  v51[10] = v32;
  v51[11] = v53;
  v51[12] = v65;
  v70 = nullsub_1(sub_1B2165824);
  v71 = v54;
  sub_1B21117B4(v42, 1, 1, AssociatedTypeWitness);
  sub_1B21EFFCC(v68, v42, v43, v27, WitnessTable, v50);
  v55 = *(v66 + 8);
  swift_unknownObjectRetain();

  v55(v42, v67);

  sub_1B2122108();
  swift_getWitnessTable();
  *v69 = sub_1B22520B0();
  (*(v58 + 8))(v50, v44);
  sub_1B2111588();
}

uint64_t sub_1B2165708(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v18 = swift_allocObject();
  *(v18 + 16) = a8;
  *(v18 + 24) = a9;
  *(v18 + 40) = a10;
  *(v18 + 48) = a11;
  *(v18 + 56) = a12;
  *(v18 + 64) = a4;
  *(v18 + 72) = a5;
  *(v18 + 80) = a1;
  *(v18 + 88) = a2;
  *(v18 + 96) = a3;
  *(v18 + 104) = a6;
  *(v18 + 112) = a7;
  v19 = *(a11 + 56);

  swift_unknownObjectRetain();

  v19(sub_1B21670B8, v18, a8, a11);
}

uint64_t sub_1B216584C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_1B2161A20(qword_1EB7A0F98, &unk_1B22595B0);
  v14 = sub_1B2253480();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14);
  sub_1B2252B00();
  v22 = swift_allocBox();
  sub_1B21117B4(v16, 1, 1, a11);
  v25[0] = 3;
  Database.inTransaction(_:_:)(v25, sub_1B21670F8);
  v17 = swift_allocObject();
  v17[2] = a9;
  v17[3] = a10;
  v17[4] = a11;
  v17[5] = a12;
  v17[6] = a13;
  v17[7] = a14;
  v17[8] = a4;
  v17[9] = a5;
  v17[10] = a7;
  v17[11] = a8;
  v17[12] = v22;
  v18 = *(a13 + 80);

  v18(sub_1B2167130, v17, a9, a13);
}

uint64_t sub_1B2165B0C(uint64_t a1, void (*a2)(uint64_t), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12 = sub_1B2252B00();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v18 - v15;
  a2(a4);
  if (!v7)
  {
    sub_1B21117B4(v16, 0, 1, a7);
    (*(v13 + 40))(a1, v16, v12);
  }

  return 0;
}

uint64_t sub_1B2165C34(uint64_t a1, char a2, void (*a3)(char *), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v23 = a8;
  v24 = a5;
  v25 = a6;
  v26 = a4;
  v27 = a3;
  v22 = a13;
  sub_1B2161A20(qword_1EB7A0F98, &unk_1B22595B0);
  v15 = sub_1B2253480();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v22 - v18;
  sub_1B2252B00();
  v36 = swift_projectBox();
  v37 = a1;
  v38 = a2 & 1;
  v28 = v23;
  v29 = a9;
  v30 = a10;
  v31 = a11;
  v32 = a12;
  v33 = v22;
  v34 = v24;
  v35 = v25;
  v20 = sub_1B21619D8(&qword_1EB7A10A0, &qword_1B2254848);
  sub_1B2221510(sub_1B216715C, v20, v19);
  v27(v19);
  return (*(v16 + 8))(v19, v15);
}

uint64_t sub_1B2165DD8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  sub_1B21619D8(qword_1EB7A0F98, &unk_1B22595B0);
  return sub_1B21E89EC(sub_1B2167194, a2);
}

uint64_t sub_1B2165E64(void (*a1)(uint64_t, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11)
{
  v15 = sub_1B2252B00();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = v22 - v18;
  swift_beginAccess();
  (*(v16 + 16))(v19, a4, v15);
  result = sub_1B2122A98(v19, 1, a7);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v21 = v22[5];
    a1(a3, v19);
    result = (*(*(a7 - 8) + 8))(v19, a7);
    if (v21)
    {
      *a11 = v21;
    }
  }

  return result;
}

uint64_t DatabasePublishers.Write.receive<A>(subscriber:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *v4;
  v9 = *(a2 + 16);
  v10 = sub_1B21619D8(qword_1EB7A0F98, &unk_1B22595B0);

  return MEMORY[0x1EEDB5BC8](a1, v8, v9, v10, a3, a4);
}

uint64_t sub_1B2166088()
{
  sub_1B211D530();
  sub_1B2114ED8();
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = v1;
  *(result + 32) = v0;
  return result;
}

uint64_t sub_1B21660C0(uint64_t a1)
{
  sub_1B2114ED8();
  v2 = swift_allocObject();
  sub_1B21660F8(a1);
  return v2;
}

uint64_t *sub_1B21660F8(uint64_t a1)
{
  v2 = *v1;
  *(v1 + 16) = 0;
  v1[3] = sub_1B2166130(a1, *(v2 + 80));
  v1[4] = v3;
  return v1;
}

uint64_t (*sub_1B2166130(uint64_t a1, uint64_t a2))@<X0>(uint64_t a1@<X8>)
{
  sub_1B2161A20(qword_1EB7A0F98, &unk_1B22595B0);
  v4 = sub_1B2253480();
  v5 = *(v4 - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = swift_allocObject();
  *(v8 + 16) = a2;
  (*(v5 + 32))(v8 + v6, a1, v4);
  return sub_1B2167018;
}

uint64_t sub_1B2166234@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1B2161A20(qword_1EB7A0F98, &unk_1B22595B0);
  v4 = sub_1B2253480();
  v5 = *(*(v4 - 1) + 64);
  MEMORY[0x1EEE9AC00](v4);
  (*(v7 + 16))(&v9 - v6, a1, v4);
  return sub_1B221E2B4(v4, &v10, a2);
}

uint64_t sub_1B2166348()
{
  if (*(v0 + 16))
  {
    result = sub_1B2252EC0();
    __break(1u);
  }

  else
  {
    *(v0 + 16) = 1;
    v1 = *(v0 + 24);
    v2 = *(v0 + 32);
    return v1();
  }

  return result;
}

uint64_t DatabaseFuture.deinit()
{
  v1 = *(v0 + 32);

  return v0;
}

uint64_t DatabaseFuture.__deallocating_deinit()
{
  DatabaseFuture.deinit();
  v0 = sub_1B2114ED8();

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t AnyDatabaseWriter.__allocating_init(_:)()
{
  sub_1B211D530();
  sub_1B2112820();
  result = swift_allocObject();
  *(result + 16) = v1;
  *(result + 24) = v0;
  return result;
}

uint64_t AnyDatabaseWriter.init(_:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return v2;
}

uint64_t AnyDatabaseWriter.configuration.getter()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  ObjectType = swift_getObjectType();
  return (*(*(v1 + 8) + 8))(ObjectType);
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> AnyDatabaseWriter.close()()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  ObjectType = swift_getObjectType();
  (*(*(v1 + 8) + 16))(ObjectType);
}

Swift::Void __swiftcall AnyDatabaseWriter.interrupt()()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  ObjectType = swift_getObjectType();
  (*(*(v2 + 8) + 24))(ObjectType);
}

uint64_t AnyDatabaseWriter.read<A>(_:)()
{
  sub_1B21127F4();
  sub_1B2112F84();
  swift_getObjectType();
  sub_1B212CD3C();
  v1 = *(v0 + 32);
  v2 = sub_1B21172A4();
  return v3(v2);
}

uint64_t AnyDatabaseWriter.asyncRead(_:)()
{
  sub_1B211D530();
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  swift_getObjectType();
  v3 = *(*(v1 + 8) + 40);
  v4 = sub_1B2114674();
  return v5(v4);
}

uint64_t AnyDatabaseWriter.unsafeRead<A>(_:)()
{
  sub_1B21127F4();
  sub_1B2112F84();
  swift_getObjectType();
  sub_1B212CD3C();
  v1 = *(v0 + 48);
  v2 = sub_1B21172A4();
  return v3(v2);
}

uint64_t AnyDatabaseWriter.asyncUnsafeRead(_:)()
{
  sub_1B211D530();
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  swift_getObjectType();
  v3 = *(*(v1 + 8) + 56);
  v4 = sub_1B2114674();
  return v5(v4);
}

uint64_t AnyDatabaseWriter.unsafeReentrantRead<A>(_:)()
{
  sub_1B21127F4();
  sub_1B2112F84();
  swift_getObjectType();
  sub_1B212CD3C();
  v1 = *(v0 + 64);
  v2 = sub_1B21172A4();
  return v3(v2);
}

uint64_t AnyDatabaseWriter.concurrentRead<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + 16);
  v8 = *(v3 + 24);
  ObjectType = swift_getObjectType();
  return (*(v8 + 72))(a1, a2, a3, ObjectType, v8);
}

uint64_t AnyDatabaseWriter.spawnConcurrentRead(_:)()
{
  sub_1B211D530();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  swift_getObjectType();
  v3 = *(v2 + 80);
  v4 = sub_1B2114674();
  return v5(v4);
}

uint64_t AnyDatabaseWriter.write<A>(_:)()
{
  sub_1B21127F4();
  sub_1B2112F84();
  ObjectType = swift_getObjectType();
  return DatabaseWriter.write<A>(_:)(v3, v2, ObjectType, v1, v0);
}

uint64_t AnyDatabaseWriter.writeWithoutTransaction<A>(_:)()
{
  sub_1B21127F4();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  swift_getObjectType();
  v3 = *(v2 + 24);
  v4 = sub_1B21172A4();
  return v5(v4);
}

uint64_t AnyDatabaseWriter.barrierWriteWithoutTransaction<A>(_:)()
{
  sub_1B21127F4();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  swift_getObjectType();
  v3 = *(v2 + 32);
  v4 = sub_1B21172A4();
  return v5(v4);
}

uint64_t AnyDatabaseWriter.asyncBarrierWriteWithoutTransaction(_:)()
{
  sub_1B211D530();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  swift_getObjectType();
  v3 = *(v2 + 40);
  v4 = sub_1B2114674();
  return v5(v4);
}

uint64_t AnyDatabaseWriter.asyncWrite<A>(_:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(v5 + 16);
  v12 = *(v5 + 24);
  ObjectType = swift_getObjectType();
  return (*(v12 + 48))(a1, a2, a3, a4, a5, ObjectType, v12);
}

uint64_t AnyDatabaseWriter.asyncWriteWithoutTransaction(_:)()
{
  sub_1B211D530();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  swift_getObjectType();
  v3 = *(v2 + 56);
  v4 = sub_1B2114674();
  return v5(v4);
}

uint64_t AnyDatabaseWriter.unsafeReentrantWrite<A>(_:)()
{
  sub_1B21127F4();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  swift_getObjectType();
  v3 = *(v2 + 64);
  v4 = sub_1B21172A4();
  return v5(v4);
}

uint64_t AnyDatabaseWriter._add<A>(observation:scheduling:onChange:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_1B2114244();
  memcpy(v15, v12, sizeof(v15));
  sub_1B2112F84();
  ObjectType = swift_getObjectType();
  return (*(*(v6 + 8) + 72))(v15, v10, v9, v8, v7, a6, ObjectType);
}

uint64_t AnyDatabaseWriter.deinit()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  return v0;
}

uint64_t AnyDatabaseWriter.__deallocating_deinit()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = sub_1B2112820();

  return MEMORY[0x1EEE6BDC0](v2, v3, v4);
}

uint64_t sub_1B2166D7C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

void *_s7MigrateVwCP(void *a1, void *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t *_s7MigrateVwca(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  *a1 = *a2;

  return a1;
}

uint64_t *_s7MigrateVwta(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  *a1 = *a2;

  return a1;
}

uint64_t _s7MigrateVwet(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 8))
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

uint64_t _s7MigrateVwst(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1B2167008(unint64_t result)
{
  if (result >= 2)
  {
  }

  return result;
}

uint64_t sub_1B2167018@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  sub_1B2161A20(qword_1EB7A0F98, &unk_1B22595B0);
  v4 = *(sub_1B2253480() - 8);
  return sub_1B2166234(v1 + ((*(v4 + 80) + 24) & ~*(v4 + 80)), a1);
}

uint64_t sub_1B21670F8()
{
  v1 = *(v0 + 40);
  v3 = *(v0 + 48);
  v4 = *(v0 + 56);
  return sub_1B2165B0C(*(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 16), *(v0 + 24), *(v0 + 32));
}

uint64_t sub_1B216715C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2[2];
  v4 = v2[3];
  v5 = v2[4];
  v6 = v2[5];
  v7 = v2[8];
  v8 = v2[9];
  v9 = v2[10];
  v11 = v2[6];
  v12 = v2[7];
  return sub_1B2165DD8(a1, a2);
}

uint64_t sub_1B21671D4(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 56);
  v4 = *(v2 + 64);
  return v3(a2);
}

uint64_t Record.__allocating_init()()
{
  sub_1B2114EE8();
  result = swift_allocObject();
  *(result + 16) = 0;
  return result;
}

uint64_t Record.init()()
{
  result = v0;
  *(v0 + 16) = 0;
  return result;
}

uint64_t Record.__allocating_init(row:)(void *a1)
{
  sub_1B2114EE8();
  v2 = swift_allocObject();
  Record.init(row:)(a1);
  return v2;
}

uint64_t Record.init(row:)(void *a1)
{
  v2 = v1;
  *(v1 + 16) = 0;
  v4 = a1[5];
  v5 = a1[6];
  sub_1B21139A0(a1 + 2, v4);
  if ((*(v5 + 16))(v4, v5))
  {
    v6 = a1[5];
    v7 = a1[6];
    sub_1B21139A0(a1 + 2, v6);
    v8 = (*(v7 + 112))(a1, v6, v7);

    v9 = *(v2 + 16);
    *(v2 + 16) = v8;
  }

  return v2;
}

double sub_1B2167438()
{
  sub_1B21619D8(&qword_1EB7A10A8, &unk_1B225ECC0);
  v0 = swift_allocObject();
  *&result = 1;
  *(v0 + 16) = xmmword_1B22546B0;
  *(v0 + 56) = &type metadata for AllColumns;
  *(v0 + 64) = &protocol witness table for AllColumns;
  return result;
}

uint64_t sub_1B216748C()
{
  sub_1B2112830();
  v2 = v1;
  type metadata accessor for Row();
  v7 = v0;

  v3 = sub_1B218E84C();
  v4 = (*(v2 + 96))(v3);
  v5 = *(v4 + 16);
  *(v4 + 16) = *(v7 + 16);

  return v4;
}

uint64_t sub_1B2167544(uint64_t a1)
{
  type metadata accessor for Row();
  sub_1B21619D8(&qword_1EB7A0E30, &unk_1B2259360);
  v3 = MEMORY[0x1E69E7CC0];
  v4 = sub_1B2252190();
  (*(*a1 + 128))(&v3);

  return Row.__allocating_init(_:)(v4);
}

BOOL sub_1B2167600()
{
  sub_1B2167788();
  sub_1B2252F10();

  if (v2)
  {
    sub_1B2167894(v1, v2, v3, v4, v5);
  }

  return v2 != 0;
}

uint64_t sub_1B2167660(char a1)
{
  if (a1)
  {
    v2 = 0;
  }

  else
  {

    v2 = sub_1B2167544(v3);
  }

  v4 = *(v1 + 16);
  *(v1 + 16) = v2;
}

uint64_t (*sub_1B21676A8(uint64_t a1))(uint64_t *a1)
{
  *a1 = v1;
  *(a1 + 8) = sub_1B2167600();
  return sub_1B21676F4;
}

uint64_t sub_1B216771C()
{
  v0 = sub_1B2167788();
  v2 = MEMORY[0x1E69E7CC8];
  sub_1B216AB34(v0, 1, &v2);
  return v2;
}

uint64_t sub_1B2167788()
{
  v1 = *(v0 + 16);
  v2 = swift_allocObject();

  sub_1B21619D8(&qword_1EB7A0E30, &unk_1B2259360);
  *&v6 = MEMORY[0x1E69E7CC0];
  *(&v6 + 1) = sub_1B2252190();
  sub_1B2112830();
  (*(v3 + 128))(&v6);
  *(v2 + 16) = v6;
  *(v2 + 32) = 0;
  v4 = swift_allocObject();
  *(v4 + 16) = v2;
  *(v4 + 24) = v1;
  sub_1B21619D8(&qword_1EB7A10D0, &qword_1B2254910);
  result = swift_allocObject();
  *(result + 16) = sub_1B216B134;
  *(result + 24) = v4;
  return result;
}

void sub_1B2167894(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, char a5)
{
  if (a2)
  {

    sub_1B21678F0(a3, a4, a5);
  }
}

uint64_t sub_1B21678F0(uint64_t result, unint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_1B2113A44(result, a2, a3);
  }

  return result;
}

uint64_t sub_1B2167904@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  while (1)
  {
    swift_beginAccess();
    v4 = a1[2];
    v5 = *(v4 + 16);
    v6 = a1[4];
    if (v6 == v5)
    {
      v7 = 0;
      v8 = 0;
      v31 = 0;
      v29 = 0u;
      v30 = 0u;
      v9 = 1;
      v28 = 0u;
      goto LABEL_7;
    }

    if (v6 >= v5)
    {
      break;
    }

    v10 = a1[3];
    if (!*(v10 + 16))
    {
      goto LABEL_21;
    }

    v11 = v4 + 16 * v6;
    v8 = *(v11 + 32);
    v7 = *(v11 + 40);

    v12 = sub_1B211E590();
    if ((v13 & 1) == 0)
    {
      goto LABEL_22;
    }

    sub_1B21446E0(*(v10 + 56) + 40 * v12, v26);
    v29 = v26[0];
    v30 = v26[1];
    v31 = v27;
    *&v28 = v8;
    *(&v28 + 1) = v7;
    a1[4] = v6 + 1;
    v9 = v7 == 0;
LABEL_7:
    swift_endAccess();
    if (v9)
    {
      result = sub_1B212AC5C(&v28, &qword_1EB7A10D8, &qword_1B2254918);
      *(a3 + 32) = 0;
      *a3 = 0u;
      *(a3 + 16) = 0u;
      return result;
    }

    v32[0] = v29;
    v32[1] = v30;
    v33 = v31;
    sub_1B21446E0(v32, &v28);
    v14 = *(&v29 + 1);
    if (*(&v29 + 1))
    {
      v15 = v30;
      sub_1B21139A0(&v28, *(&v29 + 1));
      (*(v15 + 24))(&v25, v14, v15);
      v16 = *(&v25 + 1);
      v17 = v25;
      v18 = v26[0];
      sub_1B2113208(&v28);
    }

    else
    {
      sub_1B212AC5C(&v28, &qword_1EB7A0E30, &unk_1B2259360);
      v17 = 0;
      v16 = 0;
      v18 = 4;
    }

    if (!a2)
    {
      sub_1B212AC5C(v32, &qword_1EB7A0E30, &unk_1B2259360);
LABEL_18:
      result = sub_1B2113A44(v17, v16, v18);
      *a3 = v8;
      *(a3 + 8) = v7;
      *(a3 + 16) = 0;
      *(a3 + 24) = 0;
      *(a3 + 32) = -1;
      return result;
    }

    sub_1B216AA80(v8, v7, &v28);
    v19 = v29;
    if (v29 == 255)
    {
      sub_1B212AC5C(v32, &qword_1EB7A0E30, &unk_1B2259360);

      goto LABEL_18;
    }

    v20 = v28;
    *&v28 = v17;
    *(&v28 + 1) = v16;
    LOBYTE(v29) = v18;
    v25 = v20;
    LOBYTE(v26[0]) = v19;
    v23 = static DatabaseValue.== infix(_:_:)(&v28, &v25);

    sub_1B212AC5C(v32, &qword_1EB7A0E30, &unk_1B2259360);
    result = sub_1B2113A44(v17, v16, v18);
    if ((v23 & 1) == 0)
    {
      *a3 = v8;
      *(a3 + 8) = v7;
      *(a3 + 16) = v20;
      *(a3 + 32) = v19;
      return result;
    }

    sub_1B21678F0(v20, *(&v20 + 1), v19);
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_1B2167C30(uint64_t a1)
{
  v3 = v1;
  (*(*v1 + 112))(v15);
  v5 = LOBYTE(v15[0]);
  sub_1B21619D8(&qword_1EB7A10B0, &qword_1B2254850);
  swift_allocObject();

  result = sub_1B216A438(a1, v1);
  if (!v2)
  {
    v7 = result;
    v8 = *(result + 32);
    v15[5] = *(result + 24);
    v16 = v8;

    sub_1B2167E7C(v5);
    v15[0] = 0;
    v15[1] = 0;
    v17.value.values._rawValue = v15;
    Statement.execute(arguments:)(v17);
    if (v9)
    {
    }

    else
    {

      if (v5 != 3)
      {
        v10 = Database.lastInsertedRowID.getter();
        if (*(v7 + 72))
        {
          v11 = 0;
          v12 = 0;
        }

        else
        {
          v11 = *(v7 + 56);
          v12 = *(v7 + 64);
        }

        (*(*v1 + 136))(v10, v11, v12);
        if (v12)
        {
          v15[3] = MEMORY[0x1E69E7360];
          v15[4] = &protocol witness table for Int64;
          v15[0] = v10;
          sub_1B218EA04(v15, v11, v12);
          v8 = v16;
        }
      }

      type metadata accessor for Row();
      v13 = Row.__allocating_init(_:)(v8);

      v14 = *(v3 + 16);
      *(v3 + 16) = v13;
    }
  }

  return result;
}

uint64_t sub_1B2167E7C(char a1)
{
  v3 = v1;
  v4 = v1[5];
  v5 = v1[6];
  v7 = v1[2];
  v6 = v1[3];
  LOBYTE(v16) = a1;
  *(&v16 + 1) = v4;
  v17 = v5;
  v18 = v6;

  v8 = sub_1B21455C4();
  v10 = v9;

  v11 = sub_1B212DAFC(v8, v10);
  if (!v2)
  {

    v12 = sub_1B214620C(v6, v3[4]);
    sub_1B2112554(v12, &v16);
    v15 = v16;
    v13.values._rawValue = &v15;
    Statement.setUncheckedArguments(_:)(v13);
  }

  return v11;
}

uint64_t sub_1B2167F68(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  sub_1B21619D8(&qword_1EB7A10B0, &qword_1B2254850);
  swift_allocObject();

  result = sub_1B216A438(a1, v2);
  if (!v3)
  {
    v8 = result;
    (*(*v2 + 112))(v15);
    sub_1B21683B0(a2, SBYTE1(v15[0]));
    if (v9.value.values._rawValue)
    {
      v15[0] = 0;
      v15[1] = 0;
      v9.value.values._rawValue = v15;
      Statement.execute(arguments:)(v9);
      if (!v10)
      {
        if (Database.changesCount.getter())
        {
          type metadata accessor for Row();
          v11 = *(v8 + 32);

          v13 = Row.__allocating_init(_:)(v12);

          v14 = *(v4 + 16);
          *(v4 + 16) = v13;
        }

        sub_1B2168120();
        swift_willThrow();
      }
    }

    else
    {
      sub_1B2168120();
      swift_willThrow();
    }
  }

  return result;
}

uint64_t sub_1B2168120()
{
  v1 = v0;
  v3 = *(v0 + 56);
  v2 = *(v0 + 64);
  v4 = *(v0 + 72);
  if (v4)
  {
    if (v4 == 1)
    {
      v5 = v3;
    }

    else
    {
      v5 = &unk_1F2968F70;
    }
  }

  else
  {
    sub_1B21619D8(&qword_1EB7A0F88, &unk_1B22546A0);
    v5 = swift_allocObject();
    *(v5 + 1) = xmmword_1B22546B0;
    *(v5 + 4) = v3;
    *(v5 + 5) = v2;
  }

  v6 = *(v5 + 2);
  if (v6)
  {
    sub_1B21414CC(v3, v2, v4);
    v34 = MEMORY[0x1E69E7CC0];
    result = sub_1B216EB80(0, v6, 0);
    v8 = 0;
    v9 = v34;
    v24 = v1;
    v25 = *(v1 + 24);
    v10 = (v5 + 40);
    v26 = v5;
    while (v8 < *(v5 + 2))
    {
      v11 = *(v10 - 1);
      v12 = *v10;
      v30 = v25;
      swift_bridgeObjectRetain_n();
      sub_1B219020C();
      v13 = v32;
      if (v32)
      {
        v14 = v33;
        sub_1B21139A0(v31, v32);
        (*(v14 + 24))(&v28, v13, v14);
        v27 = v28;
        v15 = v29;
        sub_1B2113208(v31);
      }

      else
      {
        sub_1B212AC5C(v31, &qword_1EB7A0E30, &unk_1B2259360);

        v27 = 0u;
        v15 = 4;
      }

      v34 = v9;
      v17 = *(v9 + 16);
      v16 = *(v9 + 24);
      if (v17 >= v16 >> 1)
      {
        result = sub_1B216EB80((v16 > 1), v17 + 1, 1);
        v9 = v34;
      }

      ++v8;
      *(v9 + 16) = v17 + 1;
      v18 = v9 + 40 * v17;
      *(v18 + 32) = v11;
      *(v18 + 40) = v12;
      *(v18 + 48) = v27;
      *(v18 + 64) = v15;
      v10 += 2;
      v5 = v26;
      if (v6 == v8)
      {

        v1 = v24;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
    sub_1B21414CC(v3, v2, v4);

    v9 = MEMORY[0x1E69E7CC0];
LABEL_17:
    v19 = sub_1B21962F4(v9);
    v21 = *(v1 + 40);
    v20 = *(v1 + 48);
    sub_1B216B0CC();
    v22 = swift_allocError();
    *v23 = v21;
    v23[1] = v20;
    v23[2] = v19;

    return v22;
  }

  return result;
}

void sub_1B21683B0(uint64_t a1, char a2)
{
  v5 = *(v2 + 56);
  v4 = *(v2 + 64);
  v6 = *(v2 + 72);
  if (*(v2 + 72))
  {
    if (v6 == 1)
    {
      v7 = *(v2 + 56);
    }

    else
    {
      v7 = &unk_1F2968F40;
    }
  }

  else
  {
    sub_1B21619D8(&qword_1EB7A0F88, &unk_1B22546A0);
    v7 = swift_allocObject();
    v7[1] = xmmword_1B22546B0;
    *(v7 + 4) = v5;
    *(v7 + 5) = v4;
  }

  v8 = *(v7 + 2);
  v9 = MEMORY[0x1E69E7CC0];
  v118 = v7;
  if (v8)
  {
    v10 = v7;
    sub_1B21414CC(v5, v4, v6);
    v130 = v9;
    sub_1B2114114();
    v11 = 0;
    v114 = *(v108 + 24);
    v12 = v10 + 5;
    while (v11 < v118[2])
    {
      v13 = *(v12 - 1);
      v14 = *v12;
      v129 = v114;

      sub_1B219020C();
      v15 = v127;
      if (v127)
      {
        v16 = v128;
        sub_1B21139A0(&v124, v127);
        (v16[3])(&v122, v15, v16);
        v119 = v122;
        v17 = v123;
        sub_1B2113208(&v124);
      }

      else
      {
        sub_1B212AC5C(&v124, &qword_1EB7A0E30, &unk_1B2259360);

        v119 = 0u;
        v17 = 4;
      }

      v130 = v9;
      v18 = *(v9 + 16);
      v19 = v18 + 1;
      if (v18 >= *(v9 + 24) >> 1)
      {
        sub_1B2114114();
        v9 = v130;
      }

      ++v11;
      *(v9 + 16) = v19;
      v20 = v9 + 24 * v18;
      *(v20 + 32) = v119;
      *(v20 + 48) = v17;
      v12 += 2;
      if (v8 == v11)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_79:
    __break(1u);
    goto LABEL_80;
  }

  sub_1B21414CC(v5, v4, v6);
  v19 = *(v9 + 16);
LABEL_17:
  v21 = (v9 + 48);
  v22 = v19 + 1;
  do
  {
    if (!--v22)
    {

      return;
    }

    v24 = *(v21 - 2);
    v23 = *(v21 - 1);
    v25 = *v21;
    v21 += 24;
    v26 = v24 | v23;
  }

  while (v25 == 4 && v26 == 0);
  sub_1B21D3270(a1);
  v29 = sub_1B2140648(v28);
  v30 = v29;
  v31 = *(v108 + 24);
  v32 = *(v31 + 16);
  v33 = MEMORY[0x1E69E7CC0];
  if (v32)
  {
    v115 = v29;
    v124 = MEMORY[0x1E69E7CC0];

    sub_1B2116B10();
    v33 = v124;
    v34 = (v31 + 40);
    do
    {
      v35 = *(v34 - 1);
      v36 = *v34;
      v37 = sub_1B2252220();
      v39 = v38;
      v124 = v33;
      v40 = *(v33 + 16);
      if (v40 >= *(v33 + 24) >> 1)
      {
        sub_1B2116B10();
        v33 = v124;
      }

      *(v33 + 16) = v40 + 1;
      v41 = v33 + 16 * v40;
      *(v41 + 32) = v37;
      *(v41 + 40) = v39;
      v34 += 2;
      --v32;
    }

    while (v32);

    v30 = v115;
  }

  v42 = sub_1B21D6D60(v33, v30);

  v43 = MEMORY[0x1E69E7CC0];
  if (v8)
  {
    v124 = MEMORY[0x1E69E7CC0];
    sub_1B2116B10();
    v43 = v124;
    v44 = v118 + 5;
    do
    {
      v45 = *(v44 - 1);
      v46 = *v44;
      v47 = sub_1B2252220();
      v49 = v48;
      v124 = v43;
      v50 = *(v43 + 16);
      if (v50 >= *(v43 + 24) >> 1)
      {
        sub_1B2116B10();
        v43 = v124;
      }

      *(v43 + 16) = v50 + 1;
      v51 = v43 + 16 * v50;
      *(v51 + 32) = v47;
      *(v51 + 40) = v49;
      v44 += 2;
      --v8;
    }

    while (v8);
  }

  v52 = sub_1B21D6EE8(v43, v42);

  v53 = *(v108 + 16);
  v55 = *(v108 + 40);
  v54 = *(v108 + 48);
  v56 = Database.columns(in:)(v55, v54);
  if (v109)
  {

    return;
  }

  v57 = v56;
  v58 = *(v56 + 16);
  v106 = v54;
  v105 = v55;
  if (v58)
  {
    v124 = MEMORY[0x1E69E7CC0];
    sub_1B2116B10();
    v59 = v124;
    v60 = (v57 + 64);
    do
    {
      v61 = *(v60 - 1);
      v62 = *v60;
      v124 = v59;
      v64 = *(v59 + 16);
      v63 = *(v59 + 24);

      if (v64 >= v63 >> 1)
      {
        sub_1B2116B10();
        v59 = v124;
      }

      *(v59 + 16) = v64 + 1;
      v65 = v59 + 16 * v64;
      *(v65 + 32) = v61;
      *(v65 + 40) = v62;
      v60 += 11;
      --v58;
    }

    while (v58);
  }

  else
  {

    v59 = MEMORY[0x1E69E7CC0];
  }

  v66 = 0;
  v112 = *(v59 + 16);
  v116 = v59;
  v110 = v59 + 32;
  v67 = MEMORY[0x1E69E7CC0];
LABEL_45:
  v120 = v67;
  while (v66 != v112)
  {
    if (v66 >= *(v116 + 16))
    {
      goto LABEL_79;
    }

    v68 = (v110 + 16 * v66);
    v70 = *v68;
    v69 = v68[1];
    ++v66;
    v71 = sub_1B2252220();
    v73 = v72;
    if (*(v52 + 16))
    {
      v74 = v71;
      v111 = v70;
      v75 = *(v52 + 40);
      sub_1B2253420();

      sub_1B2252370();
      v76 = sub_1B2253470();
      v77 = ~(-1 << *(v52 + 32));
      do
      {
        v78 = v76 & v77;
        if (((*(v52 + 56 + (((v76 & v77) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v76 & v77)) & 1) == 0)
        {

          v67 = v120;
          goto LABEL_59;
        }

        v79 = (*(v52 + 48) + 16 * v78);
        if (*v79 == v74 && v79[1] == v73)
        {
          break;
        }

        v81 = sub_1B22531F0();
        v76 = v78 + 1;
      }

      while ((v81 & 1) == 0);

      v67 = v120;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v122 = v120;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v83 = v120[2];
        sub_1B2116B10();
        v67 = v122;
      }

      v84 = v67[2];
      if (v84 >= v67[3] >> 1)
      {
        sub_1B2116B10();
        v67 = v122;
      }

      v67[2] = v84 + 1;
      v85 = &v67[2 * v84];
      v85[4] = v111;
      v85[5] = v69;
      goto LABEL_45;
    }

LABEL_59:
  }

  v117 = v67[2];
  if (v117 || (, v67 = v118, v86 = v118[2], , (v117 = v86) != 0))
  {
    v130 = MEMORY[0x1E69E7CC0];
    sub_1B2114114();
    v87 = v67;
    v88 = 0;
    v89 = v130;
    v113 = *(v108 + 24);
    v90 = v67 + 5;
    while (v88 < *(v87 + 16))
    {
      v91 = *(v90 - 1);
      v92 = *v90;
      v129 = v113;

      sub_1B219020C();
      v93 = v127;
      if (v127)
      {
        v94 = v128;
        sub_1B21139A0(&v124, v127);
        (v94[3])(&v122, v93, v94);
        v121 = v122;
        v95 = v123;
        sub_1B2113208(&v124);
      }

      else
      {
        sub_1B212AC5C(&v124, &qword_1EB7A0E30, &unk_1B2259360);

        v121 = 0u;
        v95 = 4;
      }

      v130 = v89;
      v96 = *(v89 + 16);
      v87 = v67;
      if (v96 >= *(v89 + 24) >> 1)
      {
        sub_1B2114114();
        v87 = v67;
        v89 = v130;
      }

      ++v88;
      *(v89 + 16) = v96 + 1;
      v97 = v89 + 24 * v96;
      *(v97 + 32) = v121;
      *(v97 + 48) = v95;
      v90 += 2;
      if (v117 == v88)
      {
        goto LABEL_77;
      }
    }

LABEL_80:
    __break(1u);
    return;
  }

  v89 = MEMORY[0x1E69E7CC0];
  v87 = v118;
LABEL_77:
  LOBYTE(v124) = a2;
  v125 = v105;
  v126 = v106;
  v127 = v87;
  v128 = v118;

  v98 = sub_1B21D609C();
  v100 = v99;

  sub_1B212DAFC(v98, v100);

  v124 = v89;
  sub_1B212A518(v9);
  v101 = v124;
  MEMORY[0x1EEE9AC00](v102);
  sub_1B21619D8(&qword_1EB7A10C0, &unk_1B2257E70);
  sub_1B2150658();
  swift_getKeyPath();

  v103 = sub_1B21506CC(v101);

  v124 = v103;
  v125 = MEMORY[0x1E69E7CC8];
  v104.values._rawValue = &v124;
  Statement.setUncheckedArguments(_:)(v104);
}

BOOL Record.updateChanges(_:)(uint64_t a1)
{
  v2 = sub_1B216771C();
  sub_1B2169258(v2);
  v4 = v3;
  v5 = *(v3 + 16);
  if (v5)
  {
    sub_1B2112830();
    (*(v6 + 224))(a1, v4);
  }

  return v5 != 0;
}

uint64_t sub_1B2168E80(uint64_t a1)
{
  v2 = sub_1B2115FB0(a1);
  v3 = MEMORY[0x1B27422D0](v2, MEMORY[0x1E69E7360], MEMORY[0x1E69E7370]);
  v9 = v3;
  v4 = *(v1 + 16);
  if (v4)
  {
    v5 = 32;
    do
    {
      v6 = *(v1 + v5);
      sub_1B22463C0();
      v5 += 8;
      --v4;
    }

    while (v4);

    return v9;
  }

  else
  {
    v7 = v3;
  }

  return v7;
}

uint64_t sub_1B2168F10(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_1B216B078();
  result = MEMORY[0x1B27422D0](v2, &type metadata for DatabaseValue, v3);
  v5 = 0;
  v13 = result;
  v6 = *(a1 + 16);
  v7 = (a1 + 48);
  while (1)
  {
    if (v6 == v5)
    {

      return v13;
    }

    if (v5 >= *(a1 + 16))
    {
      break;
    }

    ++v5;
    v9 = *(v7 - 2);
    v8 = *(v7 - 1);
    v10 = *v7;
    v7 += 24;
    sub_1B2113A20(v9, v8, v10);
    sub_1B224648C(v11, v9, v8, v10);
    result = sub_1B2113A44(v11[0], v11[1], v12);
  }

  __break(1u);
  return result;
}

void sub_1B2168FE4(uint64_t a1)
{
  v5 = sub_1B2116B08(a1);
  v6 = type metadata accessor for Row();
  v7 = sub_1B211984C(&qword_1EB7A10B8, type metadata accessor for Row);
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

    sub_1B2246D34(v9, v8);

    ++v1;
  }

  __break(1u);
LABEL_11:
  __break(1u);
}

uint64_t sub_1B2169134(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  v5 = sub_1B2115FB0(a1);
  v8 = MEMORY[0x1B27422D0](v5, MEMORY[0x1E69E6158], MEMORY[0x1E69E6168]);
  while (1)
  {
    a4();
    if (!v6)
    {
      break;
    }

    sub_1B2115554();
  }

  return v8;
}

uint64_t sub_1B21691C4(uint64_t a1)
{
  v3 = MEMORY[0x1B27422D0](*(a1 + 72), MEMORY[0x1E69E6158], MEMORY[0x1E69E6168]);
  while (1)
  {
    sub_1B216A84C();
    if (!v1)
    {
      break;
    }

    sub_1B2115554();
  }

  return v3;
}

void sub_1B2169258(uint64_t a1)
{
  v2 = sub_1B2115FB0(a1);
  v3 = 0;
  MEMORY[0x1B27422D0](v2, MEMORY[0x1E69E6158], MEMORY[0x1E69E6168]);
  v4 = *(v1 + 64);
  v5 = *(v1 + 32);
  sub_1B21115A0();
  v8 = v7 & v6;
  v10 = (v9 + 63) >> 6;
  if ((v7 & v6) != 0)
  {
    do
    {
      v11 = v3;
LABEL_7:
      v12 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
      v13 = (*(v1 + 48) + ((v11 << 10) | (16 * v12)));
      v14 = *v13;
      v15 = v13[1];

      sub_1B2139304();
    }

    while (v8);
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

      return;
    }

    v8 = *(v1 + 64 + 8 * v11);
    ++v3;
    if (v8)
    {
      v3 = v11;
      goto LABEL_7;
    }
  }

  __break(1u);
}

void sub_1B2169374(uint64_t a1)
{
  v4 = sub_1B2169B80(a1);
  if (!v2)
  {
    if (v4)
    {
      sub_1B21699B0(a1);
    }

    else
    {
      (*(*v1 + 216))(a1);
    }
  }
}

BOOL sub_1B2169590(uint64_t a1)
{
  v1 = sub_1B21695C8(a1);
  sub_1B2167660(1);
  return v1;
}

BOOL sub_1B21695C8(uint64_t a1)
{
  sub_1B21619D8(&qword_1EB7A10B0, &qword_1B2254850);
  swift_allocObject();

  sub_1B216A438(a1, v1);
  if (!v2)
  {
    sub_1B216A090();
    v6 = v5;

    if (v6)
    {
      v11[0] = 0;
      v11[1] = 0;
      v7.value.values._rawValue = v11;
      Statement.execute(arguments:)(v7);
      if (v9)
      {
      }

      else
      {
        v10 = Database.changesCount.getter();

        return v10 > 0;
      }
    }

    else
    {
      return 0;
    }
  }

  return v4;
}

uint64_t Record.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t Record.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  v2 = sub_1B2114EE8();

  return MEMORY[0x1EEE6BDC0](v2, v3, v4);
}

uint64_t sub_1B2169718@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 96))();
  *a1 = result;
  return result;
}

unint64_t sub_1B2169910(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B2131DCC(a2);
  v6 = v5;
  v8 = v7;
  v9 = sub_1B21268D4(v4, v5, v7 & 1, 1 << *(a2 + 32), *(a2 + 36), 0, a1, a2);
  sub_1B21268C8(v4, v6, v8 & 1);
  return v9;
}

uint64_t sub_1B21699B0(uint64_t a1)
{
  v3 = v1;
  v5 = (*(*v1 + 104))();
  v7 = Database.columns(in:)(v5, v6);
  if (!v2)
  {
    v8 = v7;

    v9 = *(v8 + 16);
    if (v9)
    {
      v19 = a1;
      v20 = MEMORY[0x1E69E7CC0];
      sub_1B2116B10();
      v10 = v20;
      v11 = (v8 + 64);
      do
      {
        v12 = *(v11 - 1);
        v13 = *v11;
        v15 = *(v20 + 16);
        v14 = *(v20 + 24);

        if (v15 >= v14 >> 1)
        {
          sub_1B2116B10();
        }

        *(v20 + 16) = v15 + 1;
        v16 = v20 + 16 * v15;
        *(v16 + 32) = v12;
        *(v16 + 40) = v13;
        v11 += 11;
        --v9;
      }

      while (v9);

      a1 = v19;
    }

    else
    {

      v10 = MEMORY[0x1E69E7CC0];
    }

    v17 = sub_1B2140648(v10);
    (*(*v3 + 224))(a1, v17);
  }
}

uint64_t sub_1B2169B80(uint64_t a1)
{
  v3 = v1;
  (*(*v1 + 104))();
  v5 = a1;
  Database.primaryKey(_:)();
  if (v2)
  {

    return v5;
  }

  v6 = v55;
  v7 = v56;
  v8 = v57;
  v9 = *(*v3 + 104);

  v11 = v9(v10);
  v14 = Database.columns(in:)(v11, v12);

  v15 = *(v14 + 16);

  v16 = MEMORY[0x1E69E7CC0];
  sub_1B214400C();
  v18 = v17;
  v19 = sub_1B21619D8(&qword_1EB7A0E30, &unk_1B2259360);
  v55 = v18;
  v56 = MEMORY[0x1B2741C60](v15, MEMORY[0x1E69E6158], v19, MEMORY[0x1E69E6168]);
  (*(*v3 + 128))(&v55);

  v48 = v56;
  v49 = v55;
  if (v8)
  {
    if (v8 == 1)
    {
      v20 = v6;
    }

    else
    {
      v20 = &unk_1F2969000;
    }
  }

  else
  {
    sub_1B21619D8(&qword_1EB7A0F88, &unk_1B22546A0);
    v20 = swift_allocObject();
    *(v20 + 1) = xmmword_1B22546B0;
    *(v20 + 4) = v6;
    *(v20 + 5) = v7;
  }

  v21 = *(v20 + 2);
  if (v21)
  {
    v60 = v16;
    sub_1B216EB80(0, v21, 0);
    v22 = v60;
    v23 = (v20 + 40);
    do
    {
      v24 = *(v23 - 1);
      v25 = *v23;
      v53 = v49;
      v54 = v48;
      swift_bridgeObjectRetain_n();
      sub_1B219020C();
      v26 = v58;
      if (v58)
      {
        v27 = v59;
        sub_1B21139A0(&v55, v58);
        (*(v27 + 24))(&v51, v26, v27);
        v50 = v51;
        v28 = v52;
        sub_1B2113208(&v55);
      }

      else
      {
        sub_1B212AC5C(&v55, &qword_1EB7A0E30, &unk_1B2259360);

        v50 = 0u;
        v28 = 4;
      }

      v60 = v22;
      v30 = *(v22 + 16);
      v29 = *(v22 + 24);
      if (v30 >= v29 >> 1)
      {
        sub_1B216EB80((v29 > 1), v30 + 1, 1);
        v22 = v60;
      }

      *(v22 + 16) = v30 + 1;
      v31 = v22 + 40 * v30;
      *(v31 + 32) = v24;
      *(v31 + 40) = v25;
      *(v31 + 48) = v50;
      *(v31 + 64) = v28;
      v23 += 2;
      --v21;
    }

    while (v21);
  }

  else
  {

    v22 = MEMORY[0x1E69E7CC0];
  }

  v32 = sub_1B21962F4(v22);
  v5 = v32;
  v33 = v32 + 64;
  v34 = 1 << *(v32 + 32);
  v35 = -1;
  if (v34 < 64)
  {
    v35 = ~(-1 << v34);
  }

  v36 = v35 & *(v32 + 64);
  v37 = (v34 + 63) >> 6;

  v38 = 0;
  if (v36)
  {
    while (1)
    {
      v39 = v38;
LABEL_27:
      v40 = __clz(__rbit64(v36)) | (v39 << 6);
      v41 = *(*(v5 + 48) + 16 * v40 + 8);
      v42 = *(v5 + 56) + 24 * v40;
      v43 = *v42;
      v44 = *(v42 + 8);
      v45 = *(v42 + 16);
      v46 = v44 | *v42;
      if (v45 != 4 || v46 != 0)
      {
        break;
      }

      v36 &= v36 - 1;

      sub_1B2113A20(0, 0, 4);

      result = sub_1B2113A44(0, 0, 4);
      v38 = v39;
      if (!v36)
      {
        goto LABEL_24;
      }
    }

    sub_1B2113A20(v43, v44, v45);

    sub_1B2113A44(v43, v44, v45);
    return v5;
  }

LABEL_24:
  while (1)
  {
    v39 = v38 + 1;
    if (__OFADD__(v38, 1))
    {
      break;
    }

    if (v39 >= v37)
    {

      return 0;
    }

    v36 = *(v33 + 8 * v39);
    ++v38;
    if (v36)
    {
      goto LABEL_27;
    }
  }

  __break(1u);
  return result;
}

void sub_1B216A090()
{
  v2 = v1;
  v3 = v0;
  v5 = *(v0 + 56);
  v4 = *(v0 + 64);
  v6 = *(v0 + 72);
  if (v6)
  {
    if (v6 == 1)
    {
      v7 = v5;
    }

    else
    {
      v7 = &unk_1F2969060;
    }
  }

  else
  {
    sub_1B21619D8(&qword_1EB7A0F88, &unk_1B22546A0);
    v7 = swift_allocObject();
    *(v7 + 1) = xmmword_1B22546B0;
    *(v7 + 4) = v5;
    *(v7 + 5) = v4;
  }

  v8 = *(v7 + 2);
  v37 = v3;
  if (v8)
  {
    v36 = v1;
    sub_1B21414CC(v5, v4, v6);
    v46 = MEMORY[0x1E69E7CC0];
    sub_1B2114114();
    v9 = 0;
    v10 = v46;
    v38 = *(v3 + 24);
    v11 = (v7 + 40);
    while (v9 < *(v7 + 2))
    {
      v12 = *(v11 - 1);
      v13 = *v11;
      v42 = v38;

      sub_1B219020C();
      v14 = v44;
      if (v44)
      {
        v15 = v45;
        sub_1B21139A0(v43, v44);
        (*(v15 + 24))(&v40, v14, v15);
        v39 = v40;
        v16 = v41;
        sub_1B2113208(v43);
      }

      else
      {
        sub_1B212AC5C(v43, &qword_1EB7A0E30, &unk_1B2259360);

        v39 = 0u;
        v16 = 4;
      }

      v46 = v10;
      v17 = *(v10 + 16);
      v18 = v17 + 1;
      if (v17 >= *(v10 + 24) >> 1)
      {
        sub_1B2114114();
        v10 = v46;
      }

      ++v9;
      *(v10 + 16) = v18;
      v19 = v10 + 24 * v17;
      *(v19 + 32) = v39;
      *(v19 + 48) = v16;
      v11 += 2;
      if (v8 == v9)
      {
        v2 = v36;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
    sub_1B21414CC(v5, v4, v6);
    v10 = MEMORY[0x1E69E7CC0];
    v18 = *(MEMORY[0x1E69E7CC0] + 16);
LABEL_17:
    v20 = (v10 + 48);
    v21 = v18 + 1;
    while (--v21)
    {
      v23 = *(v20 - 2);
      v22 = *(v20 - 1);
      v24 = *v20;
      v20 += 24;
      v25 = v23 | v22;
      if (v24 != 4 || v25 != 0)
      {
        v28 = v37[5];
        v27 = v37[6];
        v29 = v37[2];

        v30 = sub_1B21D6590();
        v32 = v31;

        sub_1B212DAFC(v30, v32);
        if (!v2)
        {

          MEMORY[0x1EEE9AC00](v33);
          sub_1B21619D8(&qword_1EB7A10C0, &unk_1B2257E70);
          sub_1B2150658();
          swift_getKeyPath();

          v34 = sub_1B21506CC(v10);

          v43[0] = v34;
          v43[1] = MEMORY[0x1E69E7CC8];
          v35.values._rawValue = v43;
          Statement.setUncheckedArguments(_:)(v35);
        }

        break;
      }
    }
  }
}

uint64_t sub_1B216A438(uint64_t a1, uint64_t a2)
{
  v4 = v3;
  v5 = v2;
  v7 = *v2;
  v2[2] = a1;
  v8 = *(*a2 + 104);

  v2[5] = v8(v9);
  v2[6] = v10;

  Database.primaryKey(_:)();
  if (v4)
  {

    v16 = v2[2];

    v17 = v2[6];

    swift_deallocPartialClassInstance();
LABEL_4:

    return v5;
  }

  v11 = v27;
  *(v2 + 7) = v26;
  *(v2 + 72) = v11;
  v12 = *(*a2 + 104);

  v14 = v12(v13);
  v19 = Database.columns(in:)(v14, v15);

  v20 = *(v19 + 16);

  sub_1B214400C();
  v22 = v21;
  v23 = sub_1B21619D8(&qword_1EB7A0E30, &unk_1B2259360);
  *&v26 = v22;
  *(&v26 + 1) = MEMORY[0x1B2741C60](v20, MEMORY[0x1E69E6158], v23, MEMORY[0x1E69E6168]);
  (*(*a2 + 128))(&v26);

  v24 = v26;
  *(v5 + 3) = v26;
  if (*(v24 + 16))
  {

    goto LABEL_4;
  }

  *&v26 = 0;
  *(&v26 + 1) = 0xE000000000000000;
  sub_1B2252CD0();

  *&v26 = sub_1B2253510();
  *(&v26 + 1) = v25;
  MEMORY[0x1B2741EB0](0xD000000000000025, 0x80000001B226CF50);
  result = sub_1B2252EC0();
  __break(1u);
  return result;
}

sqlite3_stmt *sub_1B216A780@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = a1[8];
  if (!result)
  {
    v7 = a1[5];
    v8 = a1[6];
    sub_1B21139A0(a1 + 2, v7);
    result = (*(v8 + 48))(&v10, a2, v7, v8);
    goto LABEL_6;
  }

  if (a2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (a2 <= 0x7FFFFFFF)
  {
    result = sub_1B21320F0(result, a2, &v10);
LABEL_6:
    v9 = v11;
    *a3 = v10;
    *(a3 + 16) = v9;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_1B216A84C()
{
  if (v0[1] == *(*v0 + 72))
  {
    return 0;
  }

  Row.subscript.getter();
  v3 = v2;
  v5 = v4;

  sub_1B2113A20(v13, v14, v15);

  sub_1B2113A44(v13, v14, v15);
  sub_1B2151DE0(v0 + 1, v0[1]);
  v6 = v0[2];
  v7 = v0[3];
  v12[0] = v3;
  v12[1] = v5;
  v6(&v11, v12);
  v8 = v13;
  v9 = v14;
  v10 = v15;

  sub_1B2113A44(v8, v9, v10);
  return v11;
}

uint64_t sub_1B216A950()
{
  v1 = v0[1];
  v2 = *(*v0 + 16);
  if (v1 == v2)
  {
    return 0;
  }

  if (v1 >= v2)
  {
    __break(1u);
  }

  else
  {
    v4 = v1 + 1;
    v5 = (*v0 + 32 * v1);
    v6 = v5[6];
    v7 = v5[7];
    v10 = v5 + 4;
    v8 = v5[4];
    v9 = v10[1];
    v0[1] = v4;
    v12 = v0[2];
    v11 = v0[3];
    v14[0] = v8;
    v14[1] = v9;
    v14[2] = v6;
    v14[3] = v7;

    v12(&v13, v14);

    return v13;
  }

  return result;
}

uint64_t sub_1B216A9F4()
{
  v1 = v0[1];
  v2 = *(*v0 + 16);
  if (v1 == v2)
  {
    return 0;
  }

  if (v1 >= v2)
  {
    __break(1u);
  }

  else
  {
    v6 = (*v0 + 16 * v1 + 32);
    v4 = *v6;
    v5 = v6[1];
    v0[1] = v1 + 1;
    v8 = v0[2];
    v7 = v0[3];
    v10[0] = v4;
    v10[1] = v5;

    v8(&v9, v10);

    return v9;
  }

  return result;
}

sqlite3_stmt *sub_1B216AA80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v8 = v4[5];
  v9 = v4[6];
  sub_1B21139A0(v4 + 2, v8);
  result = (*(v9 + 88))(a1, a2, v8, v9);
  if ((v11 & 1) == 0)
  {
    return sub_1B216A780(v4, result, a3);
  }

  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = -1;
  return result;
}

void sub_1B216AB34(uint64_t a1, char a2, void *a3)
{

  while (1)
  {
    sub_1B2252F10();
    if (!v28)
    {

      return;
    }

    v4 = *a3;
    v6 = sub_1B211E590();
    v7 = v4[2];
    v8 = (v5 & 1) == 0;
    v9 = v7 + v8;
    if (__OFADD__(v7, v8))
    {
      __break(1u);
LABEL_16:
      __break(1u);
LABEL_17:
      sub_1B2253390();
      __break(1u);
      goto LABEL_18;
    }

    v10 = v5;
    if (v4[3] >= v9)
    {
      if ((a2 & 1) == 0)
      {
        sub_1B21619D8(&qword_1EB7A10C8, &qword_1B2254908);
        sub_1B2252E80();
      }
    }

    else
    {
      sub_1B2245C30(v9, a2 & 1);
      v11 = *a3;
      v12 = sub_1B211E590();
      if ((v10 & 1) != (v13 & 1))
      {
        goto LABEL_17;
      }

      v6 = v12;
    }

    v14 = *a3;
    if (v10)
    {
      break;
    }

    v14[(v6 >> 6) + 8] |= 1 << v6;
    v15 = (v14[6] + 16 * v6);
    *v15 = v27;
    v15[1] = v28;
    v16 = v14[7] + 24 * v6;
    *v16 = v29;
    *(v16 + 8) = v30;
    *(v16 + 16) = v31;
    v17 = v14[2];
    v18 = __OFADD__(v17, 1);
    v19 = v17 + 1;
    if (v18)
    {
      goto LABEL_16;
    }

    v14[2] = v19;
    a2 = 1;
  }

  v20 = v14[7] + 24 * v6;
  v21 = *v20;
  v22 = *(v20 + 8);
  v23 = *(v20 + 16);
  v24 = swift_allocError();
  swift_willThrow();
  sub_1B216B120(v21, v22, v23);

  sub_1B21678F0(v21, v22, v23);
  v25 = v24;
  sub_1B21619D8(qword_1EB7A0F98, &unk_1B22595B0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    sub_1B21678F0(v29, v30, v31);

    return;
  }

LABEL_18:
  sub_1B2252CD0();
  MEMORY[0x1B2741EB0](0xD00000000000001BLL, 0x80000001B226CFA0);
  sub_1B2252E10();
  MEMORY[0x1B2741EB0](39, 0xE100000000000000);
  sub_1B2252EC0();
  __break(1u);
}

unint64_t sub_1B216B078()
{
  result = qword_1ED85D4B0;
  if (!qword_1ED85D4B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED85D4B0);
  }

  return result;
}

unint64_t sub_1B216B0CC()
{
  result = qword_1ED85C018[0];
  if (!qword_1ED85C018[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED85C018);
  }

  return result;
}

uint64_t sub_1B216B120(uint64_t result, unint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_1B2113A20(result, a2, a3);
  }

  return result;
}

uint64_t static TableRecord.none()()
{
  static TableRecord.all()(&v23);
  sub_1B211D53C();
  sub_1B2112F90();
  v2 = FilteredRequest.none()(v0, v1);
  sub_1B2116508(v2, v3, v4, v5, v6, v7, v8, v9, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44);
  sub_1B211283C();
  v11 = *(v10 + 8);
  v20 = sub_1B2118220(v12, v13, v14, v15, v16, v17, v18, v19, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44);
  return v21(v20);
}

uint64_t static TableRecord.select(sql:arguments:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_1B2114698(a1, a2, a3, a4, a5, a6);
  sub_1B21619D8(&qword_1EB7A10A8, &unk_1B225ECC0);
  v11 = sub_1B2122478();
  *(v11 + 16) = xmmword_1B22546B0;
  *(v11 + 56) = &type metadata for SQL;
  *(v11 + 64) = &protocol witness table for SQL;
  sub_1B21619D8(&qword_1EB7A0F70, &qword_1B2257590);
  v12 = sub_1B2117BF4();
  sub_1B2114258(v12, v13, v14, v15, v16, v17, v18, v19, v20);
  __src[0] = v10;
  __src[1] = v7;
  __src[2] = v9;
  __src[3] = v8;
  sub_1B2114CC4(__src);
  memcpy((v6 + 32), __src, 0xB8uLL);
  *(v11 + 32) = v6;
  v21 = sub_1B212DDF0();

  v22 = sub_1B212CD4C();
  SelectionRequest.select(_:)(v22);

  memcpy(__dst, v25, 0xA2uLL);
  sub_1B2111808(v21);
  return (*(v23 + 8))(__dst, v21);
}

uint64_t static TableRecord.select(literal:)(uint64_t *a1)
{
  v2 = sub_1B2122120(a1);
  sub_1B2111814(v2, v3, v4, v5, v6, v7, v8, v9, v32);
  sub_1B21619D8(&qword_1EB7A10A8, &unk_1B225ECC0);
  v10 = sub_1B2122478();
  *(v10 + 16) = xmmword_1B22546B0;
  *(v10 + 56) = &type metadata for SQL;
  *(v10 + 64) = &protocol witness table for SQL;
  *(v10 + 32) = v1;
  sub_1B211D53C();

  sub_1B2112F90();
  SelectionRequest.select(_:)(v10);

  sub_1B2116508(v11, v12, v13, v14, v15, v16, v17, v18, v33, v35, v37, v39, v41, v43, v45, v47, v49, v51, v53, v55, v57, v59, v61, v63, v65, v67, v69, v71, v73, v75);
  sub_1B211283C();
  v20 = *(v19 + 8);
  v29 = sub_1B2118220(v21, v22, v23, v24, v25, v26, v27, v28, v34, v36, v38, v40, v42, v44, v46, v48, v50, v52, v54, v56, v58, v60, v62, v64, v66, v68, v70, v72, v74, v76);
  return v30(v29);
}

uint64_t static TableRecord.select<A>(sql:arguments:as:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = *a3;
  v11 = a3[1];
  static TableRecord.all()(v26);
  sub_1B21619D8(&qword_1EB7A10A8, &unk_1B225ECC0);
  v13 = sub_1B2122478();
  *(v13 + 16) = xmmword_1B22546B0;
  *(v13 + 56) = &type metadata for SQL;
  *(v13 + 64) = &protocol witness table for SQL;
  sub_1B21619D8(&qword_1EB7A0F70, &qword_1B2257590);
  v14 = sub_1B2117BF4();
  sub_1B2114258(v14, v15, v16, v17, v18, v19, v20, v21, v22);
  __src[0] = a1;
  __src[1] = a2;
  __src[2] = v12;
  __src[3] = v11;
  sub_1B2114CC4(__src);
  memcpy((v6 + 32), __src, 0xB8uLL);
  *(v13 + 32) = v6;
  InterfaceRequest = type metadata accessor for QueryInterfaceRequest();

  QueryInterfaceRequest.select<A>(_:as:)(v13, a4, InterfaceRequest, a6);

  memcpy(__dst, v26, 0xA2uLL);
  sub_1B2111808(InterfaceRequest);
  return (*(v24 + 8))(__dst, InterfaceRequest);
}

uint64_t static TableRecord.select<A>(literal:as:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *a1;
  static TableRecord.all()(&v30);
  sub_1B21619D8(&qword_1EB7A10A8, &unk_1B225ECC0);
  v7 = sub_1B2122478();
  *(v7 + 16) = xmmword_1B22546B0;
  *(v7 + 56) = &type metadata for SQL;
  *(v7 + 64) = &protocol witness table for SQL;
  *(v7 + 32) = v6;
  v8 = sub_1B211D850();

  QueryInterfaceRequest.select<A>(_:as:)(v7, a2, v8, a4);

  sub_1B2116508(v9, v10, v11, v12, v13, v14, v15, v16, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51);
  sub_1B2111808(v8);
  v18 = *(v17 + 8);
  v27 = sub_1B2115B70(v19, v20, v21, v22, v23, v24, v25, v26, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51);
  return v28(v27);
}

uint64_t static TableRecord.filter(_:)(void *a1)
{
  sub_1B2111F2C(__src);
  v2 = a1[3];
  v3 = a1[4];
  sub_1B21139A0(a1, v2);
  v4 = *(v3 + 8);
  v8[3] = &type metadata for SQLExpression;
  v8[4] = &protocol witness table for SQLExpression;
  v8[0] = swift_allocObject();
  v4(v2, v3);
  InterfaceRequest = type metadata accessor for QueryInterfaceRequest();
  FilteredRequest.filter(_:)(v8, InterfaceRequest, &protocol witness table for QueryInterfaceRequest<A>);
  memcpy(__dst, __src, 0xA2uLL);
  sub_1B2111808(InterfaceRequest);
  (*(v6 + 8))(__dst, InterfaceRequest);
  return sub_1B2113208(v8);
}

uint64_t static TableRecord.filter<A>(keys:)()
{
  sub_1B212CF58();
  sub_1B2122954(v11);
  v0 = sub_1B212DDF0();
  sub_1B21172C0();
  swift_getWitnessTable();
  sub_1B2117BE0();
  TableRequest<>.filter<A>(keys:)();
  sub_1B2116508(v1, v2, v3, v4, v5, v6, v7, v8, v11[0], v11[1], v11[2], v11[3], v11[4], v11[5], v11[6], v11[7], v11[8], v11[9], v11[10], v11[11], v11[12], v11[13], v11[14], v11[15], v11[16], v11[17], v11[18], v11[19], v11[20], v12[0]);
  sub_1B2111808(v0);
  return (*(v9 + 8))(v12, v0);
}

uint64_t sub_1B216B9D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, _UNKNOWN **, _UNKNOWN **, uint64_t), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_1B2111814(a1, a2, a3, a4, a5, a6, a7, a8, v22);
  InterfaceRequest = type metadata accessor for QueryInterfaceRequest();
  sub_1B21172C0();
  WitnessTable = swift_getWitnessTable();
  v12 = a4(a1, InterfaceRequest, &protocol witness table for QueryInterfaceRequest<A>, &protocol witness table for QueryInterfaceRequest<A>, WitnessTable);
  sub_1B2116508(v12, v13, v14, v15, v16, v17, v18, v19, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44[0]);
  sub_1B2111808(InterfaceRequest);
  return (*(v20 + 8))(v44, InterfaceRequest);
}

uint64_t static TableRecord.filter(sql:arguments:)()
{
  sub_1B211ACD0();
  sub_1B212CF58();
  v5 = *v4;
  v6 = v4[1];
  v14[3] = &type metadata for SQL;
  v14[4] = &protocol witness table for SQL;
  sub_1B21619D8(&qword_1EB7A0F70, &qword_1B2257590);
  v7 = sub_1B2117BF4();
  *(v7 + 16) = xmmword_1B22546B0;
  __src[0] = v3;
  __src[1] = v2;
  __src[2] = v5;
  __src[3] = v6;
  sub_1B2114CC4(__src);
  memcpy((v7 + 32), __src, 0xB8uLL);
  v14[0] = v7;

  static TableRecord.filter(_:)(v14, v1, v0, v8, v9, v10, v11, v12);
  return sub_1B2113208(v14);
}

uint64_t static TableRecord.filter(literal:)(uint64_t *a1)
{
  sub_1B2122120(a1);
  sub_1B2111F2C(__src);
  v5[3] = &type metadata for SQL;
  v5[4] = &protocol witness table for SQL;
  v5[0] = v1;
  v2 = sub_1B211D53C();

  FilteredRequest.filter(_:)(v5, v2, &protocol witness table for QueryInterfaceRequest<A>);
  memcpy(__dst, __src, 0xA2uLL);
  sub_1B211283C();
  (*(v3 + 8))(__dst, v2);
  return sub_1B2113208(v5);
}

uint64_t static TableRecord.orderByPrimaryKey()()
{
  static TableRecord.all()(&v21);
  sub_1B211D53C();
  sub_1B2112F90();
  v0 = TableRequest<>.orderByPrimaryKey()();
  sub_1B2116508(v0, v1, v2, v3, v4, v5, v6, v7, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42);
  sub_1B211283C();
  v9 = *(v8 + 8);
  v18 = sub_1B2118220(v10, v11, v12, v13, v14, v15, v16, v17, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42);
  return v19(v18);
}

uint64_t static TableRecord.order(sql:arguments:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_1B2114698(a1, a2, a3, a4, a5, a6);
  sub_1B21619D8(&qword_1EB7A10E0, &qword_1B2254920);
  v11 = sub_1B2122478();
  *(v11 + 16) = xmmword_1B22546B0;
  *(v11 + 56) = &type metadata for SQL;
  *(v11 + 64) = &protocol witness table for SQL;
  sub_1B21619D8(&qword_1EB7A0F70, &qword_1B2257590);
  v12 = sub_1B2117BF4();
  sub_1B2114258(v12, v13, v14, v15, v16, v17, v18, v19, v20);
  __src[0] = v10;
  __src[1] = v7;
  __src[2] = v9;
  __src[3] = v8;
  sub_1B2114CC4(__src);
  memcpy((v6 + 32), __src, 0xB8uLL);
  *(v11 + 32) = v6;
  v21 = sub_1B212DDF0();

  sub_1B212CD4C();
  OrderedRequest.order(_:)();

  memcpy(__dst, v24, 0xA2uLL);
  sub_1B2111808(v21);
  return (*(v22 + 8))(__dst, v21);
}

uint64_t static TableRecord.order(literal:)(uint64_t *a1)
{
  v2 = sub_1B2122120(a1);
  sub_1B2111814(v2, v3, v4, v5, v6, v7, v8, v9, v32);
  sub_1B21619D8(&qword_1EB7A10E0, &qword_1B2254920);
  v10 = sub_1B2122478();
  *(v10 + 16) = xmmword_1B22546B0;
  *(v10 + 56) = &type metadata for SQL;
  *(v10 + 64) = &protocol witness table for SQL;
  *(v10 + 32) = v1;
  sub_1B211D53C();

  sub_1B2112F90();
  OrderedRequest.order(_:)();

  sub_1B2116508(v11, v12, v13, v14, v15, v16, v17, v18, v33, v35, v37, v39, v41, v43, v45, v47, v49, v51, v53, v55, v57, v59, v61, v63, v65, v67, v69, v71, v73, v75);
  sub_1B211283C();
  v20 = *(v19 + 8);
  v29 = sub_1B2118220(v21, v22, v23, v24, v25, v26, v27, v28, v34, v36, v38, v40, v42, v44, v46, v48, v50, v52, v54, v56, v58, v60, v62, v64, v66, v68, v70, v72, v74, v76);
  return v30(v29);
}

uint64_t static TableRecord.aliased(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_1B2111814(a1, a2, a3, a4, a5, a6, a7, a8, v31);
  sub_1B211D53C();
  v8 = sub_1B21115BC();
  v10 = QueryInterfaceRequest.aliased(_:)(v8, v9);
  sub_1B2116508(v10, v11, v12, v13, v14, v15, v16, v17, v32, v34, v36, v38, v40, v42, v44, v46, v48, v50, v52, v54, v56, v58, v60, v62, v64, v66, v68, v70, v72, v74);
  sub_1B211283C();
  v19 = *(v18 + 8);
  v28 = sub_1B2118220(v20, v21, v22, v23, v24, v25, v26, v27, v33, v35, v37, v39, v41, v43, v45, v47, v49, v51, v53, v55, v57, v59, v61, v63, v65, v67, v69, v71, v73, v75);
  return v29(v28);
}

uint64_t static TableRecord.with<A>(_:)@<X0>(void *__src@<X0>, uint64_t a2@<X8>)
{
  memcpy(v6, __src, 0xBBuLL);
  static TableRecord.all()(__srca);
  v3 = sub_1B211D850();
  QueryInterfaceRequest.with<A>(_:)(v6, v3, a2);
  memcpy(__dst, __srca, 0xA2uLL);
  sub_1B211283C();
  return (*(v4 + 8))(__dst, v3);
}

uint64_t static TableRecord<>.filter<A>(ids:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_1B2122954(__src);
  InterfaceRequest = type metadata accessor for QueryInterfaceRequest();
  sub_1B21172C0();
  WitnessTable = swift_getWitnessTable();
  TableRequest<>.filter<A>(ids:)(a1, InterfaceRequest, a3, &protocol witness table for QueryInterfaceRequest<A>, &protocol witness table for QueryInterfaceRequest<A>, WitnessTable, a6);
  memcpy(__dst, __src, 0xA2uLL);
  sub_1B2111808(InterfaceRequest);
  return (*(v11 + 8))(__dst, InterfaceRequest);
}

uint64_t static TableRecord<>.selectID()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  static TableRecord.all()(&v28);
  v6 = sub_1B211D850();
  Interface = QueryInterfaceRequest<A>.selectID()(v6, a3, a4);
  sub_1B2116508(Interface, v8, v9, v10, v11, v12, v13, v14, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49);
  sub_1B2111808(v6);
  v16 = *(v15 + 8);
  v25 = sub_1B2115B70(v17, v18, v19, v20, v21, v22, v23, v24, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49);
  return v26(v25);
}

uint64_t static TableRecord<>.filter(id:)()
{
  sub_1B212CF58();
  sub_1B2111814(v0, v1, v2, v3, v4, v5, v6, v7, v19);
  v8 = sub_1B212DDF0();
  sub_1B21172C0();
  swift_getWitnessTable();
  sub_1B2117BE0();
  TableRequest<>.filter(id:)();
  sub_1B2116508(v9, v10, v11, v12, v13, v14, v15, v16, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41[0]);
  sub_1B2111808(v8);
  return (*(v17 + 8))(v41, v8);
}

uint64_t static TableRecord<>.filter<A>(ids:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_1B2122954(__src);
  InterfaceRequest = type metadata accessor for QueryInterfaceRequest();
  sub_1B21172C0();
  WitnessTable = swift_getWitnessTable();
  TableRequest<>.filter<A>(ids:)(a1, InterfaceRequest, a3, &protocol witness table for QueryInterfaceRequest<A>, &protocol witness table for QueryInterfaceRequest<A>, WitnessTable, a6, a5, a8, a7);
  memcpy(__dst, __src, 0xA2uLL);
  sub_1B2111808(InterfaceRequest);
  return (*(v16 + 8))(__dst, InterfaceRequest);
}

uint64_t SQLInterpolation.appendInterpolation<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 8);
  v4 = sub_1B2117F4C(a1, a2);
  v5(v4);
  sub_1B2121F24();
  sub_1B2122C5C();

  sub_1B2123344(v6);
}

uint64_t SQLInterpolation.appendInterpolation(_:)(uint64_t a1, uint64_t a2)
{
  (*(a2 + 8))();
  sub_1B2121F24();
  sub_1B2122C5C();

  sub_1B2123344(v2);
}

uint64_t SQLInterpolation.appendInterpolation<A>(tableOf:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  DynamicType = swift_getDynamicType();

  return SQLInterpolation.appendInterpolation<A>(_:)(DynamicType, a2, a3);
}

uint64_t SQLInterpolation.appendInterpolation(tableOf:)(void *a1)
{
  sub_1B21139A0(a1, a1[3]);
  swift_getDynamicType();
  (*(a1[4] + 8))();
  sub_1B2121F24();
  sub_1B2122C5C();

  sub_1B2123344(v2);
}

void SQLInterpolation.appendInterpolation<A>(columnsOf:tableAlias:)()
{
  sub_1B2111F14();
  v2 = v1;
  v3 = v0;
  v5 = v4;
  v7 = v6;
  if (!v6)
  {
    v5 = (*(v1 + 8))(v0, v1);
    v7 = v8;
  }

  type metadata accessor for TableAlias();
  v9 = swift_allocObject();
  *(v9 + 16) = v5;
  *(v9 + 24) = v7;
  *(v9 + 32) = 0;
  *(v9 + 40) = 0;
  *(v9 + 48) = 0;
  v10 = *(v2 + 16);

  v11 = v10(v3, v2);
  v12 = *(v11 + 16);
  v13 = MEMORY[0x1E69E7CC0];
  if (!v12)
  {

    goto LABEL_19;
  }

  v41 = MEMORY[0x1E69E7CC0];
  sub_1B216ED04(0, v12, 0);
  v14 = v41;
  v15 = v11 + 32;
  v16 = v12 - 1;
  while (2)
  {
    sub_1B211EE68(v15, v36);
    v17 = v37;
    v18 = v38;
    sub_1B21139A0(v36, v37);
    (*(v18 + 8))(__src, v17, v18);
    memcpy(__dst, __src, sizeof(__dst));
    memcpy(v42, __src, 0xB8uLL);
    switch(sub_1B213A580(v42))
    {
      case 1u:
        v27 = sub_1B213AA9C(v42);
        memcpy(v32, v27, 0xA3uLL);
        sub_1B213A774(__dst, v34);
        v28 = sub_1B21713D8();
        sub_1B213BBD8(v28, v29);
        sub_1B213A5CC(__dst);
        sub_1B213A5CC(__dst);
        memcpy(v34, v33, 0xA3uLL);
        sub_1B214D464(v34);
        goto LABEL_11;
      case 2u:
        v20 = sub_1B213AA9C(v42);
        v22 = v20[21];
        v21 = v20[22];
        memcpy(v32, v20, 0xA3uLL);
        sub_1B213A774(__dst, v34);
        v23 = sub_1B21713D8();
        sub_1B213BBD8(v23, v24);
        sub_1B213A5CC(__dst);
        sub_1B21356F8(v20);
        memcpy(v34, v33, 0xA8uLL);
        v34[21] = v22;
        v34[22] = v21;
        sub_1B2155A5C(v34);
        goto LABEL_11;
      case 3u:
        v32[0] = *sub_1B213AA9C(v42);
        sub_1B213A774(__dst, v34);
        v25 = sub_1B21713D8();
        sub_1B2153E58(v25, v26);
        sub_1B213A5CC(__dst);
        sub_1B213A5CC(__dst);
        v34[0] = v33[0];
        sub_1B216ED24(v34);
LABEL_11:
        v19 = v34;
        goto LABEL_12;
      case 4u:
        sub_1B213A5CC(__dst);
        v34[0] = v9;
        sub_1B213A59C(v34);
        memcpy(v39, v34, sizeof(v39));

        goto LABEL_13;
      default:
        sub_1B213AA9C(v42);
        v19 = __dst;
LABEL_12:
        memcpy(v39, v19, sizeof(v39));
LABEL_13:
        sub_1B2113208(v36);
        v41 = v14;
        v31 = *(v14 + 16);
        v30 = *(v14 + 24);
        if (v31 >= v30 >> 1)
        {
          sub_1B216ED04(v30 > 1, v31 + 1, 1);
          v14 = v41;
        }

        memcpy(v34, v39, sizeof(v34));
        sub_1B216ED58(v34);
        memcpy(__src, v34, sizeof(__src));
        *(v14 + 16) = v31 + 1;
        memcpy((v14 + 184 * v31 + 32), __src, 0xB8uLL);
        if (v16)
        {
          --v16;
          v15 += 40;
          continue;
        }

        v13 = MEMORY[0x1E69E7CC0];
LABEL_19:
        __dst[0] = 8236;
        __dst[1] = 0xE200000000000000;
        __dst[2] = v13;
        __dst[3] = MEMORY[0x1E69E7CC8];
        sub_1B2114CC4(__dst);
        memcpy(v42, __dst, 0xB8uLL);
        sub_1B216E69C(v42);

        sub_1B2112F9C();
        sub_1B216CC1C();

        sub_1B2111588();
        return;
    }
  }
}

void sub_1B216CB88(uint64_t a1)
{
  v4 = sub_1B211284C(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_1B2181368(v4, 1);
  sub_1B21169F4();
  if (!v6)
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  sub_1B2114EF8();
  if (v7 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  sub_1B211ACDC();

  if (!v1)
  {
LABEL_8:
    *v2 = v3;
    return;
  }

  sub_1B211F610();
  if (!v5)
  {
    *(v3 + 16) = v8;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

void sub_1B216CC1C()
{
  v1 = v0;
  sub_1B2181380(*(*v0 + 16), 1);
  v2 = *v0;
  v3 = (*(*v0 + 24) >> 1) - *(*v0 + 16);
  sub_1B21A08F0();
  if (v4 < 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (!v4)
  {
LABEL_5:
    if (v4 != v3)
    {
      memcpy(__dst, __src, 0xE1uLL);
      v8 = &qword_1EB7A1238;
      v9 = &qword_1B2254A38;
      v10 = __dst;
LABEL_7:
      sub_1B212AC5C(v10, v8, v9);
      *v1 = v2;
      return;
    }

LABEL_9:
    v11 = *(v2 + 16);
    sub_1B2170FEC();
    while (1)
    {
      memcpy(v19, v20, sizeof(v19));
      if (sub_1B213EA68(v19) == 1)
      {
        break;
      }

      v12 = *(v2 + 24) >> 1;
      if (v12 < v11 + 1)
      {
        sub_1B2127C14();
        v2 = v15;
        v12 = *(v15 + 24) >> 1;
      }

      for (i = 184 * v11 + 32; ; i += 184)
      {
        memcpy(__dst, v20, 0xB8uLL);
        if (sub_1B213EA68(__dst) == 1 || v11 >= v12)
        {
          break;
        }

        memcpy(v17, v20, sizeof(v17));
        memcpy(v18, v20, sizeof(v18));
        sub_1B211AF1C(v18, &v16);
        sub_1B212AC5C(v17, &qword_1EB7A1240, &qword_1B2254A40);
        memmove((v2 + i), v20, 0xB8uLL);
        ++v11;
        sub_1B2170FEC();
      }

      *(v2 + 16) = v11;
    }

    memcpy(__dst, __src, 0xE1uLL);
    sub_1B212AC5C(__dst, &qword_1EB7A1238, &qword_1B2254A38);
    memcpy(v18, v20, sizeof(v18));
    v8 = &qword_1EB7A1240;
    v9 = &qword_1B2254A40;
    v10 = v18;
    goto LABEL_7;
  }

  v5 = *(v2 + 16);
  v6 = __OFADD__(v5, v4);
  v7 = v5 + v4;
  if (!v6)
  {
    *(v2 + 16) = v7;
    goto LABEL_5;
  }

  __break(1u);
}

void sub_1B216CE64(uint64_t a1)
{
  v4 = sub_1B211284C(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_1B21815C8(v4, 1);
  sub_1B21169F4();
  if (!v6)
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  sub_1B2114EF8();
  if (v7 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  sub_1B211ACDC();

  if (!v1)
  {
LABEL_8:
    *v2 = v3;
    return;
  }

  sub_1B211F610();
  if (!v5)
  {
    *(v3 + 16) = v8;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

void sub_1B216CEF8(uint64_t a1)
{
  v4 = sub_1B211284C(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_1B21815E0(v4, 1);
  sub_1B21169F4();
  if (!v6)
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  sub_1B2114EF8();
  if (v7 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  sub_1B211ACDC();

  if (!v1)
  {
LABEL_8:
    *v2 = v3;
    return;
  }

  sub_1B211F610();
  if (!v5)
  {
    *(v3 + 16) = v8;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

void sub_1B216CFB4(uint64_t a1)
{
  v4 = sub_1B211284C(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_1B2181380(v4, 1);
  sub_1B21169F4();
  if (!v6)
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  sub_1B2114EF8();
  if (v7 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  sub_1B211ACDC();

  if (!v1)
  {
LABEL_8:
    *v2 = v3;
    return;
  }

  sub_1B211F610();
  if (!v5)
  {
    *(v3 + 16) = v8;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

uint64_t sub_1B216D048(uint64_t a1, uint64_t a2)
{
  v6 = sub_1B216B140(a1);
  v7 = *(*v3 + 16);
  if (__OFADD__(v7, v6))
  {
    __break(1u);
    goto LABEL_9;
  }

  sub_1B2181610(v7 + v6, 1);
  v2 = *v3;
  v8 = *(*v3 + 16);
  v9 = (*(*v3 + 24) >> 1) - v8;
  v10 = sub_1B21A13E4(&v43, (*v3 + 40 * v8 + 32), v9, a1, a2);
  if (v10 < v6)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (v10 >= 1)
  {
    v11 = *(v2 + 16);
    v12 = __OFADD__(v11, v10);
    v13 = v11 + v10;
    if (v12)
    {
      __break(1u);
LABEL_22:
      *(v2 + 16) = v9 + 1;
      goto LABEL_7;
    }

    *(v2 + 16) = v13;
  }

  a2 = v43;
  if (v10 != v9)
  {
LABEL_7:

    *v3 = v2;
    return result;
  }

LABEL_10:
  v15 = v45;
  if (v45 == *(a2 + 16))
  {
    goto LABEL_7;
  }

  v40 = *(v2 + 16);
  v35 = v44;
  v16 = sub_1B216E418(v42, v45, a2, v44);
  v18 = *v17;
  v21 = *v19;
  v20 = v19[1];
  v22 = v19[2];
  v37 = v17[1];

  v23 = v20;

  v24 = v22;

  result = (v16)(v42, 0);
  v25 = v15 + 1;
  if (!__OFADD__(v15, 1))
  {
    v9 = v40;
    v26 = v37;
    v27 = v24;
LABEL_13:
    v36 = *(v2 + 24) >> 1;
    if (v36 < v9 + 1)
    {
      v33 = v25;
      sub_1B2162EC0();
      v25 = v33;
      v2 = v34;
      v36 = *(v34 + 24) >> 1;
    }

    for (i = (v2 + 40 * v9 + 64); ; i += 5)
    {
      if (v9 >= v36)
      {
        *(v2 + 16) = v9;
        goto LABEL_13;
      }

      *(i - 4) = v18;
      *(i - 3) = v26;
      *(i - 2) = v21;
      *(i - 1) = v23;
      *i = v27;
      if (v25 == *(a2 + 16))
      {
        goto LABEL_22;
      }

      v39 = v25;
      v41 = v9;
      v38 = sub_1B216E418(v42, v25, a2, v35);
      v18 = *v29;
      v32 = *v30;
      v31 = v30[1];
      v27 = v30[2];
      v26 = v29[1];

      v21 = v32;
      v23 = v31;

      result = (v38)(v42, 0);
      if (__OFADD__(v39, 1))
      {
        break;
      }

      v25 = v39 + 1;
      v9 = v41 + 1;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1B216D2EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6 = a2;
  v8 = sub_1B2131DCC(a2);
  v10 = v9;
  v12 = v11;
  v13 = sub_1B21268D4(v8, v9, v11 & 1, 1 << *(v6 + 32), *(v6 + 36), 0, a1, v6);
  sub_1B21268C8(v8, v10, v12 & 1);
  v14 = *(*v4 + 16);
  if (__OFADD__(v14, v13))
  {
    __break(1u);
    goto LABEL_9;
  }

  sub_1B2181628(v14 + v13, 1);
  v10 = *v4;
  v15 = (*(*v4 + 24) >> 1) - *(*v4 + 16);
  sub_1B21A0210();
  if (v16 < v13)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (v16 >= 1)
  {
    v17 = *(v10 + 16);
    v18 = __OFADD__(v17, v16);
    v19 = v17 + v16;
    if (v18)
    {
      __break(1u);
LABEL_24:
      v39 = a3;
      v40 = v6;
      v41 = 0;
      *(v10 + 16) = v12 + 1;
      goto LABEL_7;
    }

    *(v10 + 16) = v19;
  }

  if (v16 != v15)
  {
LABEL_7:

    sub_1B21268C8(v39, v40, v41);
    *v4 = v10;
    return;
  }

LABEL_10:
  if ((v41 & 1) == 0)
  {
    if (*(v38 + 36) == v40)
    {
      if (v39 == 1 << *(v38 + 32))
      {
        goto LABEL_7;
      }

      v12 = *(v10 + 16);
      Row.ScopesView.subscript.getter();
      v21 = v20;
      v23 = v22;
      v25 = v24;
      a3 = sub_1B224A534(v39, v40, 0, v38);
      v6 = v27;
LABEL_14:
      v37 = *(v10 + 24) >> 1;
      if (v37 < v12 + 1)
      {
        v35 = v26;
        sub_1B2162F80();
        v26 = v35;
        v10 = v36;
        v37 = *(v36 + 24) >> 1;
      }

      for (i = (v10 + 24 * v12 + 48); ; i += 3)
      {
        if (v12 >= v37)
        {
          *(v10 + 16) = v12;
          goto LABEL_14;
        }

        *(i - 2) = v21;
        *(i - 1) = v23;
        *i = v25;
        if (v26)
        {
          goto LABEL_27;
        }

        if (*(v38 + 36) != v6)
        {
          break;
        }

        if (a3 == 1 << *(v38 + 32))
        {
          goto LABEL_24;
        }

        sub_1B2112F9C();
        Row.ScopesView.subscript.getter();
        v21 = v29;
        v23 = v30;
        v25 = v31;
        v32 = sub_1B2112F9C();
        a3 = sub_1B224A534(v32, v33, 0, v38);
        v6 = v34;
        ++v12;
      }

      __break(1u);
    }

    __break(1u);
LABEL_27:
    __break(1u);
  }

  __break(1u);
}

void *SQLInterpolation.appendInterpolation(_:)(void *a1)
{
  v2 = a1[4];
  sub_1B21139A0(a1, a1[3]);
  sub_1B21146C8();
  v3 = sub_1B2115FBC();
  v4(v3);
  sub_1B216ED8C(v15);
  sub_1B2127D18();
  sub_1B212CF64();
  result = sub_1B21172D8(v5, v6, v7, v8, v9, v10, v11, v12, v14, v15[0]);
  *v1 = v1;
  return result;
}

void *sub_1B216D7B8(uint64_t a1, uint64_t a2)
{
  v6[0] = a1;
  v6[1] = a2;
  sub_1B2134F5C(v6);
  memcpy(__dst, v6, 0xA3uLL);
  sub_1B2127AE0(__dst);

  sub_1B2127D18();
  v3 = *(*v2 + 16);
  sub_1B21277F4();
  v4 = *v2;
  *(v4 + 16) = v3 + 1;
  result = memcpy((v4 + 184 * v3 + 32), __dst, 0xB8uLL);
  *v2 = v4;
  return result;
}

uint64_t SQLInterpolation.appendInterpolation<A>(_:)(uint64_t a1, uint64_t a2)
{
  sub_1B2117F4C(a1, a2);
  v2 = sub_1B22534D0();
  sub_1B216D7B8(v2, v3);
}

uint64_t SQLInterpolation.appendInterpolation<A>(_:)()
{
  v0 = sub_1B22534D0();
  sub_1B216D7B8(v0, v1);
}

uint64_t SQLInterpolation.appendInterpolation(_:)(void *a1)
{
  v1 = a1[4];
  sub_1B21139A0(a1, a1[3]);
  sub_1B2115FBC();
  v2 = sub_1B22534D0();
  sub_1B216D7B8(v2, v3);
}

void *sub_1B216DBD8@<X0>(uint64_t a1@<X3>, void *a2@<X8>)
{
  v4 = *(a1 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4(__src, AssociatedTypeWitness, a1);
  sub_1B2127AE0(__src);
  return memcpy(a2, __src, 0xB8uLL);
}

void SQLInterpolation.appendInterpolation<A>(_:)()
{
  sub_1B2111F14();
  v1 = v0;
  v3 = v2;
  v4 = sub_1B2252CE0();
  v5 = sub_1B211280C(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v11 = &v21[-v10];
  v12 = sub_1B2252E00();
  v13 = sub_1B211280C(v12);
  v15 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v19 = &v21[-v18];
  MEMORY[0x1B2741FE0](v3, v1);
  swift_getWitnessTable();
  sub_1B2252F20();
  (*(v7 + 8))(v11, v4);
  WitnessTable = swift_getWitnessTable();
  SQLInterpolation.appendInterpolation<A>(_:)(v19, v12, WitnessTable, &protocol witness table for SQLExpression);
  (*(v15 + 8))(v19, v12);
  sub_1B2111588();
}

void *sub_1B216DE68@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  sub_1B21139A0(a1, v3);
  (*(v4 + 8))(__src, v3, v4);
  return memcpy(a2, __src, 0xA3uLL);
}

void *_s12GRDBInternal16SQLInterpolationV19appendInterpolationyyxAA14SQLExpressibleRzAA15SQLOrderingTermRzAA13SQLSelectableRzlF_0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1B211822C(a1, a2, a3);
  v5(v4);
  sub_1B2127AE0(v16);
  sub_1B2127D18();
  sub_1B212CF64();
  result = sub_1B21172D8(v6, v7, v8, v9, v10, v11, v12, v13, v15, v16[0]);
  *v3 = v3;
  return result;
}

void *SQLInterpolation.appendInterpolation<A>(_:)(uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  *__src = 34;
  v15 = 0xE100000000000000;
  MEMORY[0x1B2741EB0](v3, v2);
  sub_1B2122C5C();
  v16 = MEMORY[0x1E69E7CC0];
  v17 = MEMORY[0x1E69E7CC8];
  sub_1B2114CC4(__src);
  sub_1B2127D18();
  sub_1B212CF64();
  result = sub_1B21172D8(v4, v5, v6, v7, v8, v9, v10, v11, v13, __src[0]);
  *v1 = v1;
  return result;
}

void SQLInterpolation.appendInterpolation<A>(definitionFor:)()
{
  sub_1B2111F14();
  v2 = v1;
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  memcpy(__dst, v3 + 3, 0xA2uLL);
  __src[0] = 34;
  __src[1] = 0xE100000000000000;
  v7 = sub_1B2115FBC();
  MEMORY[0x1B2741EB0](v7);
  sub_1B2122C5C();
  v8 = MEMORY[0x1E69E7CC0];
  v9 = MEMORY[0x1E69E7CC8];
  __src[2] = MEMORY[0x1E69E7CC0];
  __src[3] = MEMORY[0x1E69E7CC8];
  sub_1B2114CC4(__src);
  sub_1B2127D18();
  sub_1B212296C();
  sub_1B212DE08();
  memcpy((v0 + 184 * v4 + 32), __src, 0xB8uLL);
  *v1 = v0;
  if (v6)
  {
    v10 = *(v6 + 16);
    if (v10)
    {
      v21[0] = v8;
      sub_1B2116B10();
      v11 = v8;
      v12 = (v6 + 40);
      do
      {
        v13 = *(v12 - 1);
        v14 = *v12;
        v22[0] = 34;
        v22[1] = 0xE100000000000000;

        v15 = sub_1B2112F9C();
        MEMORY[0x1B2741EB0](v15);
        sub_1B2122C5C();

        v21[0] = v11;
        v0 = *(v11 + 16);
        if (v0 >= *(v11 + 24) >> 1)
        {
          sub_1B2116B10();
          v11 = v21[0];
        }

        *(v11 + 16) = v0 + 1;
        v16 = v11 + 16 * v0;
        *(v16 + 32) = 34;
        *(v16 + 40) = 0xE100000000000000;
        v12 += 2;
        --v10;
      }

      while (v10);
      sub_1B21619D8(&qword_1EB7A0DA0, &qword_1B2254340);
      sub_1B211AB74(qword_1ED85E790, &qword_1EB7A0DA0, &qword_1B2254340);
      v17 = sub_1B2252250();
      v19 = v18;

      v22[0] = 40;
      v22[1] = 0xE100000000000000;
      MEMORY[0x1B2741EB0](v17, v19);

      v4 = 0xE100000000000000;

      MEMORY[0x1B2741EB0](41, 0xE100000000000000);

      v8 = MEMORY[0x1E69E7CC0];
      v22[2] = MEMORY[0x1E69E7CC0];
      v9 = MEMORY[0x1E69E7CC8];
      v22[3] = MEMORY[0x1E69E7CC8];
      sub_1B2114CC4(v22);
      v2 = v1;
      sub_1B2127D18();
      sub_1B212296C();
      sub_1B212DE08();
      memcpy((v0 - 0x47FFFFFFFFFFFFE0), v22, 0xB8uLL);
      *v1 = v0;
    }
  }

  v20[0] = 0x2820534120;
  v20[1] = 0xE500000000000000;
  v20[2] = v8;
  v20[3] = v9;
  sub_1B2114CC4(v20);
  sub_1B2127D18();
  sub_1B212296C();
  sub_1B212DE08();
  memcpy((v0 + 184 * v4 + 32), v20, 0xB8uLL);
  *v2 = v0;
  memcpy(v21, __dst, 0xA2uLL);
  sub_1B216EDC0(v21);
  sub_1B214CFE0(__dst, v22);
  sub_1B2127D18();
  sub_1B212296C();
  sub_1B212DE08();
  memcpy((v0 + 184 * v4 + 32), v21, 0xB8uLL);
  *v2 = v0;
  v22[0] = 41;
  v22[1] = 0xE100000000000000;
  v22[2] = v8;
  v22[3] = v9;
  sub_1B2114CC4(v22);
  sub_1B2127D18();
  sub_1B212296C();
  sub_1B212DE08();
  memcpy((v0 + 184 * v4 + 32), v22, 0xB8uLL);
  *v2 = v0;
  sub_1B2111588();
}

void *SQLInterpolation.appendInterpolation(_:)(uint64_t a1)
{
  v3 = *(a1 + 24);
  *__src = *(a1 + 16);
  v16 = v3;
  v17 = MEMORY[0x1E69E7CC0];
  v18 = MEMORY[0x1E69E7CC8];
  sub_1B2114CC4(__src);

  sub_1B2127D18();
  v4 = *(*v1 + 16);
  sub_1B21277F4();
  result = sub_1B2115E28(v5, v6, v7, v8, v9, v10, v11, v12, v14, __src[0]);
  *v1 = v2;
  return result;
}

Swift::Void __swiftcall SQLInterpolation.appendInterpolation(_:)(GRDBInternal::Database::CollationName a1)
{
  v3 = *(a1.rawValue._countAndFlagsBits + 8);
  *__src = *a1.rawValue._countAndFlagsBits;
  v15 = v3;
  v16 = MEMORY[0x1E69E7CC0];
  v17 = MEMORY[0x1E69E7CC8];
  sub_1B2114CC4(__src);

  sub_1B2127D18();
  v4 = *(*v1 + 16);
  sub_1B21277F4();
  sub_1B2115E28(v5, v6, v7, v8, v9, v10, v11, v12, v13, __src[0]);
  *v1 = v2;
}

void (*sub_1B216E418(void (**a1)(uint64_t **a1), unint64_t a2, uint64_t a3, uint64_t a4))(uint64_t **a1)
{
  result = sub_1B2170FB8(0x28uLL);
  *a1 = result;
  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (*(a3 + 16) <= a2)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v9 = result;
  v10 = a3 + 16 * a2;
  v11 = *(v10 + 32);
  v12 = *(v10 + 40);

  result = sub_1B21C8FD8(v11, v12, a4);
  if (v13)
  {
    *v9 = result;
    v9[1] = v13;
    v9[2] = v14;
    v9[3] = v11;
    v9[4] = v12;
    return sub_1B216E4D4;
  }

LABEL_7:
  __break(1u);
  return result;
}

void sub_1B216E4D4(uint64_t **a1)
{
  v1 = *a1;
  v2 = (*a1)[4];

  v4 = *v1;
  v3 = v1[1];
  v5 = v1[2];

  free(v1);
}

void sub_1B216E534(uint64_t a1)
{
  v3 = *v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v1 = v3;
  if (!isUniquelyReferenced_nonNull_native || a1 > *(v3 + 24) >> 1)
  {
    if (*(v3 + 16) > a1)
    {
      v5 = *(v3 + 16);
    }

    sub_1B2116B10();
  }
}

void sub_1B216E5EC()
{
  sub_1B211FDD4();
  if (v3)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    return;
  }

  if (v0)
  {
    sub_1B21115D0();
    if (v4 == v3)
    {
      sub_1B21619D8(&qword_1EB7A11B8, &qword_1B22549C8);
      v5 = sub_1B212E25C();
      sub_1B2122490(v5);
      sub_1B2144050(v6);
    }

    if (v2 != v1)
    {
      sub_1B21619D8(&qword_1EB7A11B0, &qword_1B22549C0);
      sub_1B2146A84();
      return;
    }

    goto LABEL_9;
  }
}

uint64_t sub_1B216E69C(const void *a1)
{
  sub_1B21619D8(&qword_1EB7A0F70, &qword_1B2257590);
  v2 = swift_allocObject();
  j__malloc_size(v2);
  sub_1B211F5F8();
  v2[2] = 1;
  v2[3] = v3;
  memcpy(__dst, a1, sizeof(__dst));
  nullsub_1(__dst);
  sub_1B2171344(v9);
  memcpy(__src, __dst, sizeof(__src));
  memcpy(v6, __dst, sizeof(v6));
  result = sub_1B213EA68(v6);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    memcpy(v2 + 4, __src, 0xB8uLL);
    sub_1B2122B00(a1, v5, &qword_1EB7A1248, &qword_1B2254A48);
    return v2;
  }

  return result;
}

void sub_1B216E78C()
{
  sub_1B211FDD4();
  if (v3)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    return;
  }

  if (v0)
  {
    sub_1B21115D0();
    if (v4 == v3)
    {
      sub_1B21619D8(&qword_1EB7A0F50, &qword_1B2254C10);
      v5 = sub_1B212E25C();
      sub_1B2122490(v5);
      sub_1B2144050(v6);
    }

    if (v2 != v1)
    {
      swift_arrayInitWithCopy();
      return;
    }

    goto LABEL_9;
  }
}

const void *sub_1B216E838(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v2 = *(a1 + 16);
  v3 = sub_1B219E0D0();
  sub_1B21A0CC8();
  v5 = v4;

  if (v5 != v1)
  {
    __break(1u);
    return MEMORY[0x1E69E7CC0];
  }

  return v3;
}

void sub_1B216E90C()
{
  sub_1B211FDD4();
  if (v4)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    return;
  }

  if (v0)
  {
    sub_1B21115D0();
    if (v5 == v4)
    {
      sub_1B21619D8(&qword_1EB7A0F88, &unk_1B22546A0);
      v6 = sub_1B211A23C();
      sub_1B2122490(v6);
      sub_1B211F5F8();
      *(v2 + 16) = v0;
      *(v2 + 24) = v7;
    }

    if (v3 != v1)
    {
      swift_arrayInitWithCopy();
      return;
    }

    goto LABEL_9;
  }
}

uint64_t sub_1B216E9FC(uint64_t a1, uint64_t (*a2)(void, void), uint64_t (*a3)(void *, uint64_t, uint64_t, uint64_t), void (*a4)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v4 = *(a1 + 16);
  if (!v4)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v8 = a2(*(a1 + 16), 0);
  v9 = a3(v16, v8 + 32, v4, a1);
  v10 = v16[0];
  v11 = v16[1];
  v12 = v16[2];
  v13 = v16[3];
  v14 = v16[4];

  a4(v10, v11, v12, v13, v14);
  if (v9 != v4)
  {
    __break(1u);
    return MEMORY[0x1E69E7CC0];
  }

  return v8;
}

void sub_1B216EAD0()
{
  sub_1B211FDD4();
  if (v3)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    return;
  }

  if (v0)
  {
    sub_1B21115D0();
    if (v4 == v3)
    {
      sub_1B21619D8(&qword_1EB7A0DD0, &unk_1B226A780);
      v5 = sub_1B212E25C();
      sub_1B2122490(v5);
      sub_1B2144050(v6);
    }

    if (v2 != v1)
    {
      sub_1B21619D8(&qword_1EB7A0DD8, &qword_1B22544F0);
      sub_1B2146A84();
      return;
    }

    goto LABEL_9;
  }
}

void *sub_1B216EB80(void *a1, int64_t a2, char a3)
{
  result = sub_1B216F0CC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void sub_1B216EBA0()
{
  v1 = *v0;
  sub_1B21329EC();
  *v0 = v2;
}

void sub_1B216EBEC()
{
  v1 = *v0;
  sub_1B2170D84();
  *v0 = v2;
}

uint64_t sub_1B216EC38(uint64_t a1, int64_t a2, char a3)
{
  result = sub_1B216F3E4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void sub_1B216EC58()
{
  v1 = *v0;
  sub_1B216F604();
  *v0 = v2;
}

void *sub_1B216EC78(void *a1, int64_t a2, char a3)
{
  result = sub_1B216F6C4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void sub_1B216EC98()
{
  v1 = *v0;
  sub_1B21329EC();
  *v0 = v2;
}

void *sub_1B216ECE4(void *a1, int64_t a2, char a3)
{
  result = sub_1B216F7D4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_1B216ED04(uint64_t a1, int64_t a2, char a3)
{
  result = sub_1B216FA24(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1B216ED24(void *result)
{
  v1 = result[13] & 1;
  v2 = result[20] & 0xF981FFLL | 0x6000000000000000;
  result[8] &= 1uLL;
  result[13] = v1;
  result[20] = v2;
  return result;
}

void *sub_1B216ED58(void *result)
{
  v1 = result[13] & 1;
  v2 = result[20] & 0xE000000000FFC1FFLL | 0xC00000000000000;
  result[8] &= 1uLL;
  result[13] = v1;
  result[20] = v2;
  return result;
}

void *sub_1B216ED8C(void *result)
{
  v1 = result[13] & 1;
  v2 = result[20] & 0xE000000000FFC1FFLL | 0x1000000000000000;
  result[8] &= 1uLL;
  result[13] = v1;
  result[20] = v2;
  return result;
}

void *sub_1B216EDC0(void *result)
{
  v1 = result[13] & 1;
  v2 = result[20] & 0xE000000000FFC1FFLL | 0x400000000000000;
  result[8] &= 1uLL;
  result[13] = v1;
  result[20] = v2;
  return result;
}

void *sub_1B216EDF4@<X0>(void *a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[3];
  return sub_1B216DBD8(v1[4], a1);
}

uint64_t sub_1B216EE18(uint64_t a1, int64_t a2, char a3)
{
  result = sub_1B216FB3C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void sub_1B216EE38()
{
  v1 = *v0;
  sub_1B2113FF8();
  sub_1B217059C(v2, v3, v4, v5, v6, v7, v8);
  *v0 = v9;
}

uint64_t sub_1B216EE6C(uint64_t a1, int64_t a2, char a3)
{
  result = sub_1B216FC44(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_1B216EE8C(uint64_t a1, int64_t a2, char a3)
{
  result = sub_1B216FD5C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1B216EEF0(void *a1, int64_t a2, char a3)
{
  result = sub_1B216FE6C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_1B216EF10(uint64_t a1, int64_t a2, char a3)
{
  result = sub_1B216FF84(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_1B216EF30(uint64_t a1, int64_t a2, char a3)
{
  result = sub_1B2170094(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_1B216EF50(uint64_t a1, int64_t a2, char a3)
{
  result = sub_1B21701AC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_1B216EF70(uint64_t a1, int64_t a2, char a3)
{
  result = sub_1B21702A4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_1B216EF90(uint64_t a1, int64_t a2, char a3)
{
  result = sub_1B2170474(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_1B216EFB0(uint64_t a1, int64_t a2, char a3)
{
  result = sub_1B2170734(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_1B216EFD0(uint64_t a1, int64_t a2, char a3)
{
  result = sub_1B217084C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_1B216EFF0(uint64_t a1, int64_t a2, char a3)
{
  result = sub_1B2170964(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_1B216F010(uint64_t a1, int64_t a2, char a3)
{
  result = sub_1B2170AAC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1B216F030(void *a1, int64_t a2, char a3)
{
  result = sub_1B2170BB4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void sub_1B216F050()
{
  v1 = *v0;
  sub_1B2170D84();
  *v0 = v2;
}

void *sub_1B216F0CC(void *result, int64_t a2, char a3, uint64_t a4)
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
      sub_1B21619D8(&qword_1EB7A1200, &unk_1B2259BB0);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      v10[2] = v8;
      v10[3] = 2 * ((v11 - 32) / 40);
      if (v5)
      {
LABEL_13:
        sub_1B224B148(a4 + 32, v8, v10 + 4);
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        goto LABEL_13;
      }
    }

    sub_1B21619D8(&qword_1EB7A1208, &qword_1B2254A08);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void sub_1B216F1E4()
{
  sub_1B211ACC4();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  sub_1B2115F84();
  if (v6 == v7)
  {
LABEL_7:
    sub_1B2118200(v5);
    if (v2)
    {
      sub_1B21619D8(&qword_1EB7A1188, &unk_1B2259BA0);
      v8 = sub_1B2112F5C();
      sub_1B21127CC(v8);
      if (v1)
      {
LABEL_9:
        v9 = sub_1B21117DC();
        sub_1B2245534(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    sub_1B21619D8(&qword_1EB7A1190, &qword_1B225C150);
    sub_1B2111ED8();
    goto LABEL_12;
  }

  sub_1B212CD14();
  if (!v6)
  {
    sub_1B2115544();
    goto LABEL_7;
  }

  __break(1u);
}

uint64_t sub_1B216F2D4(uint64_t result, int64_t a2, char a3, uint64_t a4)
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
      sub_1B21619D8(&qword_1EB7A1178, &qword_1B2254998);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 16);
      if (v5)
      {
LABEL_13:
        sub_1B224B13C((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        goto LABEL_13;
      }
    }

    sub_1B21619D8(&qword_1EB7A1180, &qword_1B22549A0);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_1B216F3E4(uint64_t result, int64_t a2, char a3, uint64_t a4)
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
      sub_1B21619D8(&qword_1EB7A1160, &qword_1B2254988);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 176);
      if (v5)
      {
LABEL_13:
        sub_1B224555C((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
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

uint64_t sub_1B216F4EC(uint64_t result, int64_t a2, char a3, uint64_t a4)
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
      sub_1B21619D8(&qword_1EB7A10F8, &qword_1B2254930);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 24);
      if (v5)
      {
LABEL_13:
        sub_1B224B150((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        goto LABEL_13;
      }
    }

    sub_1B21619D8(&qword_1EB7A1100, &qword_1B2254938);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void sub_1B216F604()
{
  sub_1B211ACC4();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  sub_1B2115F84();
  if (v6 == v7)
  {
LABEL_7:
    sub_1B2118200(v5);
    if (v2)
    {
      sub_1B21619D8(&qword_1EB7A11B8, &qword_1B22549C8);
      v8 = sub_1B2112F5C();
      sub_1B21127CC(v8);
      if (v1)
      {
LABEL_9:
        v9 = sub_1B21117DC();
        sub_1B2160924(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    sub_1B21619D8(&qword_1EB7A11B0, &qword_1B22549C0);
    sub_1B2111ED8();
    goto LABEL_12;
  }

  sub_1B212CD14();
  if (!v6)
  {
    sub_1B2115544();
    goto LABEL_7;
  }

  __break(1u);
}

void *sub_1B216F6C4(void *result, int64_t a2, char a3, uint64_t a4)
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
      sub_1B21619D8(&qword_1EB7A1130, &qword_1B2254958);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      v10[2] = v8;
      v10[3] = 2 * ((v11 - 32) / 32);
      if (v5)
      {
LABEL_13:
        sub_1B21505F4(a4 + 32);
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        goto LABEL_13;
      }
    }

    sub_1B21619D8(&qword_1EB7A1138, &qword_1B2254960);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void *sub_1B216F7D4(void *result, int64_t a2, char a3, uint64_t a4)
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
      sub_1B21619D8(&qword_1EB7A1140, &qword_1B2254968);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      v10[2] = v8;
      v10[3] = 2 * ((v11 - 32) / 32);
      if (v5)
      {
LABEL_13:
        sub_1B21505F4(a4 + 32);
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        goto LABEL_13;
      }
    }

    sub_1B21619D8(&qword_1EB7A1148, &qword_1B2254970);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_1B216F90C(uint64_t result, int64_t a2, char a3, uint64_t a4)
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
      sub_1B21619D8(&qword_1EB7A0E28, &unk_1B2254540);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 40);
      if (v5)
      {
LABEL_13:
        sub_1B2158F60((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        goto LABEL_13;
      }
    }

    sub_1B21619D8(&qword_1EB7A0E30, &unk_1B2259360);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_1B216FA24(uint64_t result, int64_t a2, char a3, uint64_t a4)
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
      sub_1B21619D8(&qword_1EB7A1258, &qword_1B2254A50);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 184);
      if (v5)
      {
LABEL_13:
        sub_1B2156460((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        goto LABEL_13;
      }
    }

    sub_1B21619D8(&qword_1EB7A1248, &qword_1B2254A48);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_1B216FB3C(uint64_t result, int64_t a2, char a3, uint64_t a4)
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
      sub_1B21619D8(&qword_1EB7A0F50, &qword_1B2254C10);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 232);
      if (v5)
      {
LABEL_13:
        sub_1B224557C((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
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

uint64_t sub_1B216FC44(uint64_t result, int64_t a2, char a3, uint64_t a4)
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
      sub_1B21619D8(&qword_1EB7A1210, &qword_1B2254A10);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 24);
      if (v5)
      {
LABEL_13:
        sub_1B2160924((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        goto LABEL_13;
      }
    }

    sub_1B21619D8(&qword_1EB7A1218, &qword_1B2254A18);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_1B216FD5C(uint64_t result, int64_t a2, char a3, uint64_t a4)
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
      sub_1B21619D8(&qword_1EB7A1220, &qword_1B2254A20);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 16);
      if (v5)
      {
LABEL_13:
        sub_1B215A618((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        goto LABEL_13;
      }
    }

    sub_1B21619D8(&qword_1EB7A1228, &qword_1B2254A28);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void *sub_1B216FE6C(void *result, int64_t a2, char a3, uint64_t a4)
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
      sub_1B21619D8(&qword_1EB7A11D8, &qword_1B22549E8);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      v10[2] = v8;
      v10[3] = 2 * ((v11 - 32) / 24);
      if (v5)
      {
LABEL_13:
        sub_1B213CECC(a4 + 32, v8, v10 + 4);
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        goto LABEL_13;
      }
    }

    sub_1B21619D8(&qword_1EB7A11E0, qword_1B225B0E0);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_1B216FF84(uint64_t result, int64_t a2, char a3, uint64_t a4)
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
      sub_1B21619D8(&qword_1EB7A11C8, &qword_1B22549D8);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 32);
      if (v5)
      {
LABEL_13:
        sub_1B213B974((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        goto LABEL_13;
      }
    }

    sub_1B21619D8(&qword_1EB7A11D0, &qword_1B22549E0);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_1B2170094(uint64_t result, int64_t a2, char a3, uint64_t a4)
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
      sub_1B21619D8(&qword_1EB7A0F38, &unk_1B2254650);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 40);
      if (v5)
      {
LABEL_13:
        sub_1B224B154((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        goto LABEL_13;
      }
    }

    sub_1B21619D8(&qword_1EB7A0F40, &qword_1B226C7E0);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_1B21701AC(uint64_t result, int64_t a2, char a3, uint64_t a4)
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
      sub_1B21619D8(&qword_1EB7A11C0, &qword_1B22549D0);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 16);
      if (v5)
      {
LABEL_13:
        sub_1B215A618((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        goto LABEL_13;
      }
    }

    memcpy((v10 + 32), (a4 + 32), 16 * v8);
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_1B21702A4(uint64_t result, int64_t a2, char a3, uint64_t a4)
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
      sub_1B21619D8(&qword_1EB7A1198, &qword_1B22549A8);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 32);
      if (v5)
      {
LABEL_13:
        sub_1B213B974((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        goto LABEL_13;
      }
    }

    sub_1B21619D8(&qword_1EB7A11A0, &qword_1B22549B0);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}