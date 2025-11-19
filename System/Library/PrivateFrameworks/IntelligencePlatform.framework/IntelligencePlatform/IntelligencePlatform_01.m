uint64_t sub_1ABA8F214@<X0>(uint64_t *a1@<X8>)
{
  v2 = *a1;
  result = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  v5 = *(a1 + 16);
  return result;
}

void sub_1ABA8F288()
{
  *(v0 + 840) = v1;
  *(v0 + 848) = *(v0 + 376);
  *(v0 + 856) = *(v0 + 372);
  *(v0 + 857) = *(v0 + 368);
  *(v0 + 858) = *(v0 + 364);
}

uint64_t sub_1ABA8F348()
{

  return sub_1ABF25054();
}

uint64_t sub_1ABA8F384@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __n128 a10@<Q0>)
{

  return sub_1ABC2DE24(a1, a2, a3, a4, a5, a6, a7, a8, a10.n128_i64[0], a10.n128_i64[1], a9, v10, v11);
}

uint64_t sub_1ABA8F3A0()
{

  return swift_once();
}

uint64_t sub_1ABA8F3E4()
{

  return swift_once();
}

uint64_t sub_1ABA8F41C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  *a1 = a2 & 0xFFFFFFFFFFFFLL | 0xD000000000000000;
  *(a1 + 8) = v2;
  *(a1 + 16) = 4;

  return swift_willThrow();
}

uint64_t sub_1ABA8F488()
{
  v12 = *(v0 - 296);
  v11 = *(v0 - 288);
  v10 = *(v0 - 280);
  v9 = *(v0 - 272);
  v2 = *(v0 - 224);
  result = *(v0 - 216);
  v4 = *(v0 - 240);
  v3 = *(v0 - 232);
  v6 = *(v0 - 256);
  v5 = *(v0 - 248);
  v7 = *(v0 - 200);
  v8 = *(v0 - 264);
  return result;
}

double sub_1ABA8F524()
{
  result = 0.0;
  v0[1] = 0u;
  v0[2] = 0u;
  *v0 = 0u;
  return result;
}

uint64_t sub_1ABA8F568()
{

  return swift_beginAccess();
}

uint64_t sub_1ABA8F5B8()
{

  return swift_once();
}

uint64_t sub_1ABA8F5D8()
{

  return swift_allocObject();
}

__n128 sub_1ABA8F5F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a9, __int128 a10, __int128 a11, uint64_t a12)
{
  *(v12 + 16) = v13;
  v16 = v12 + v15 * v14;
  result = a9;
  *(v16 + 80) = a12;
  *(v16 + 48) = a10;
  *(v16 + 64) = a11;
  *(v16 + 32) = a9;
  return result;
}

void sub_1ABA8F634(uint64_t a1@<X8>)
{
  v3 = (v2 + v1);
  v4 = *v3;
  LOBYTE(v3) = *(v3 + 8);
  *a1 = v4;
  *(a1 + 8) = v3;
}

uint64_t sub_1ABA8F64C()
{

  return swift_once();
}

uint64_t sub_1ABA8F66C()
{
  v2 = *(v0 - 168);
  *(v0 - 176) = *(v0 - 176);
  *(v0 - 168) = v2;
}

void sub_1ABA8F688(void *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  *(v2 - 40) = *a1;

  sub_1ABD5B45C((v2 - 40), 1, va);
}

__n128 sub_1ABA8F6D8()
{
  v1 = *(v0 + 208);
  *v0 = *(v0 + 192);
  *(v0 + 16) = v1;
  *(v0 + 32) = *(v0 + 224);
  result = *(v0 + 233);
  *(v0 + 41) = result;
  return result;
}

uint64_t sub_1ABA8F788()
{

  return swift_once();
}

uint64_t sub_1ABA8F7A8(uint64_t a1, uint64_t a2)
{

  return sub_1ABD79A38(a1, a2, 1852797802, 0xE400000000000000, v2);
}

uint64_t sub_1ABA8F7C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);

  return sub_1ABAE42A8(v12 - 240, va);
}

void sub_1ABA8F7F8()
{
  *(v0 - 340) = 0;
  *(v0 - 336) = 0;
  *(v0 - 332) = 0;
  *(v0 - 320) = 0;
  *(v0 - 312) = 0;
  *(v0 - 304) = 0;
  *(v0 - 296) = 0;
  *(v0 - 232) = 0;
  *(v0 - 224) = 0;
  *(v0 - 216) = 0;
}

uint64_t sub_1ABA8F840()
{

  return MEMORY[0x1EEDC23A0](v1, v2, v0, v0, v0);
}

uint64_t sub_1ABA8F878()
{

  return swift_getWitnessTable();
}

uint64_t sub_1ABA8F8B8()
{

  return sub_1ABF25054();
}

void sub_1ABA8F938()
{
  v0[29] = 0;
  v0[30] = 0;
  v0[31] = 0;
  v0[32] = 0;
  v0[34] = 0;
  v0[35] = 0;
  v0[36] = 0;
  v0[37] = 0;
  v0[38] = 0;
  v0[39] = 0;
}

__n128 sub_1ABA8F96C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __n128 a10)
{
  result = a10;
  *v10 = a10;
  return result;
}

uint64_t sub_1ABA8F980()
{
}

char *sub_1ABA8F99C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, char a57)
{
  result = &a57;
  v59 = *(v57 - 72);
  return result;
}

uint64_t sub_1ABA8F9E0()
{

  return swift_allocObject();
}

void sub_1ABA8F9FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  *(v17 - 224) = v16;
  *(v17 - 216) = a16;
  *(v17 - 208) = a15;
  *(v17 - 200) = a14;
}

uint64_t sub_1ABA8FA14()
{
  sub_1ABDEFF58(*(v1 + 80), *(v1 + 88), *(v1 + 96), *(v1 + 104));
  *(v1 + 80) = v0;
  *(v1 + 88) = v2;
  *(v1 + 96) = v3;
  *(v1 + 104) = v4;
  return v0;
}

uint64_t sub_1ABA8FA68()
{

  return swift_once();
}

uint64_t sub_1ABA8FAB4()
{

  return sub_1ABF248D4();
}

id sub_1ABA8FB28(uint64_t a1, const char *a2)
{

  return [v2 a2];
}

uint64_t sub_1ABA8FBE8()
{

  return sub_1ABF24E64();
}

uint64_t sub_1ABA8FC10(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{

  return sub_1ABAB47C4(a1, a2, a3);
}

uint64_t sub_1ABA8FC34()
{

  return swift_once();
}

uint64_t sub_1ABA8FC54()
{

  return swift_beginAccess();
}

uint64_t sub_1ABA8FC70()
{

  return sub_1ABF248B4();
}

void *sub_1ABA8FCF8()
{
  v1 = *(v0 - 96);
  result = sub_1ABA93E20((v0 - 128), *(v0 - 104));
  v3 = *(v1 + 24);
  return result;
}

uint64_t sub_1ABA8FD38()
{

  return swift_once();
}

uint64_t sub_1ABA8FD60()
{

  return sub_1ABF24CD4();
}

uint64_t sub_1ABA8FDE0()
{

  return sub_1ABF21E14();
}

void sub_1ABA8FE80(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  *a1 = a2;
  *(a1 + 8) = v2;
  *(a1 + 16) = 4;
}

__n128 sub_1ABA8FEF8()
{
  result = *&STACK[0x590];
  v1 = *&STACK[0x5A0];
  *&STACK[0x5C0] = *&STACK[0x590];
  *&STACK[0x5D0] = v1;
  LOBYTE(STACK[0x5E0]) = STACK[0x5B0];
  return result;
}

uint64_t sub_1ABA8FF18()
{
}

__n128 sub_1ABA8FF3C()
{
  *(v0 + 4224) = *(v0 + 4176);
  result = *(v0 + 4192);
  *(v0 + 4240) = result;
  return result;
}

__n128 sub_1ABA8FF50(__n128 a1)
{
  *(v1 + 168) = a1;
  result = *(v2 + 6560);
  v4 = *(v2 + 6544);
  *(v1 + 152) = result;
  return result;
}

uint64_t sub_1ABA8FF64()
{

  return sub_1ABF24C64();
}

uint64_t sub_1ABA8FF90()
{

  return swift_once();
}

uint64_t sub_1ABA8FFB0()
{

  return sub_1ABF24F84();
}

void sub_1ABA8FFF0(uint64_t a1@<X8>)
{
  *v3 = a1;
  *(v3 + 8) = v1;
  *(v3 + 16) = 2;
  *(v3 + 24) = v2;
}

void sub_1ABA90014()
{
  v3 = v1[14];
  v4 = v1[15];
  v5 = v1[12];
  v6 = v1[11];
  v7 = v1[6];
  v8 = v1[7];
  v9 = v1[4];
  v10 = v1[5];
  v11 = v1[3];
  v12 = v1[13];
}

uint64_t sub_1ABA900E8()
{
  v2 = *(v0 - 152);

  return sub_1ABF24EC4();
}

uint64_t sub_1ABA90108()
{

  return sub_1ABF24E14();
}

uint64_t sub_1ABA90120()
{

  return sub_1ABC773D0(v0, v1);
}

void sub_1ABA90150()
{
  *(v5 - 128) = v0;
  *(v5 - 120) = v4;
  *(v5 - 112) = v3;
  *(v5 - 104) = v2;
  *(v5 - 96) = v1;
}

uint64_t sub_1ABA90174(uint64_t a1, uint64_t *a2, uint64_t a3, char a4)
{
  v8 = *(v4 + 224);

  return sub_1ABD1F170(a1, a2, a3, a4, v6, v5, v8, 25);
}

uint64_t sub_1ABA90198()
{
  v3 = *(v0 - 2);
  v2 = *(v0 - 1);
  v4 = *v0;

  return swift_bridgeObjectRetain_n();
}

uint64_t sub_1ABA901B8()
{
  *(v0 + 176) = 0;
  *(v0 + 184) = 0xE000000000000000;

  return sub_1ABF24AB4();
}

uint64_t sub_1ABA90228()
{

  return sub_1ABF25054();
}

void sub_1ABA902C0()
{
  *(v5 - 216) = v2;
  *(v5 - 208) = v0;
  *(v5 - 272) = v3;
  *(v5 - 280) = v1;
  *(v5 - 288) = v4;
}

uint64_t sub_1ABA90340(uint64_t a1, uint64_t a2)
{
  *a2 = 0xD00000000000009ALL;
  *(a2 + 8) = v2;
  *(a2 + 16) = 6;

  return swift_willThrow();
}

uint64_t sub_1ABA9036C()
{

  return sub_1ABF25054();
}

uint64_t sub_1ABA9038C()
{

  return sub_1ABF24ED4();
}

uint64_t sub_1ABA903B8()
{
  v2 = *(v0 - 136);
  *(v0 - 272) = *(v0 - 152);
  v3 = *(v0 - 120);
  v4 = *(v0 - 104);
  *(v0 - 256) = v2;
  *(v0 - 240) = v3;
  *(v0 - 224) = v4;

  return sub_1ABE22D9C(v0 - 272);
}

uint64_t sub_1ABA9040C()
{

  return sub_1ABF24E64();
}

uint64_t sub_1ABA90430(unint64_t *a1)
{

  return sub_1ABE6DD68(a1);
}

uint64_t sub_1ABA90454()
{

  return sub_1ABF238F4();
}

uint64_t sub_1ABA90478()
{

  return sub_1ABF22EF4();
}

void sub_1ABA904BC()
{
  v2 = *(v0 + 16) + 1;

  sub_1ABAAA4F4();
}

id sub_1ABA90504()
{

  return objc_allocWithZone(GDVUEntityClass);
}

void sub_1ABA9052C()
{

  JUMPOUT(0x1AC5A9410);
}

uint64_t sub_1ABA9055C()
{

  return sub_1ABF25054();
}

uint64_t sub_1ABA905FC()
{

  return sub_1ABF22764();
}

__n128 sub_1ABA90688()
{
  result = *&STACK[0x620];
  v1 = *&STACK[0x630];
  *&STACK[0x650] = *&STACK[0x620];
  *&STACK[0x660] = v1;
  LOBYTE(STACK[0x670]) = STACK[0x640];
  return result;
}

__n128 sub_1ABA906BC()
{
  *(v0 + 4368) = *(v0 + 4320);
  result = *(v0 + 4336);
  *(v0 + 4384) = result;
  return result;
}

uint64_t sub_1ABA906DC()
{

  return swift_once();
}

uint64_t sub_1ABA9070C()
{

  return sub_1ABF24D94();
}

uint64_t sub_1ABA90730()
{
  v2 = *(v0 + 344);

  return sub_1ABBD8B30(v2, type metadata accessor for SearchableViewDatabaseTable);
}

uint64_t sub_1ABA90758(uint64_t result)
{
  v1 = *(result + 48);
  v2 = *(result + 52);
  return result;
}

uint64_t sub_1ABA9077C@<X0>(int *a1@<X8>)
{
  result = a1[1];
  v2 = a1 + *a1;
  return result;
}

uint64_t sub_1ABA9078C(unint64_t *a1)
{

  return sub_1ABC0D68C(a1);
}

uint64_t sub_1ABA907E0(uint64_t a1)
{
  *(v2 + 56) = a1;

  return sub_1ABC27670(v1, a1);
}

uint64_t sub_1ABA9080C()
{
  v3 = *(v0 - 232);
  v2 = *(v0 - 224);

  return sub_1ABF22464();
}

uint64_t sub_1ABA90834(uint64_t a1)
{
  result = v1 + *(a1 + 28);
  v4 = *(v2 - 168);
  return result;
}

uint64_t sub_1ABA9084C()
{

  return swift_getWitnessTable();
}

void sub_1ABA90874()
{
  *(v0 - 152) = 0;
  *(v0 - 144) = 0;
  *(v0 - 208) = 1;
  *(v0 - 204) = 1;
}

uint64_t sub_1ABA908BC@<X0>(uint64_t a1@<X8>)
{
  v3 = *(a1 - 256);
  v4 = *(v1 - 248);

  return sub_1ABF24F84();
}

void sub_1ABA908E0()
{
  v2 = v0[11];
  v4 = v0[7];
  v3 = v0[8];
  v5 = v0[5];
  v6 = v0[6];
  v7 = v0[2];
}

uint64_t sub_1ABA90900()
{
  v2 = v0[39];
  v4 = v0[35];
  v3 = v0[36];
  v5 = v0[34];
}

uint64_t sub_1ABA90934()
{
  result = sub_1ABA7B9B4(v0, 0, 1, v1);
  v4 = *v2;
  return result;
}

__n128 sub_1ABA90960()
{
  v2 = *(v0 + 272);
  *(v1 - 224) = *(v0 + 256);
  *(v1 - 208) = v2;
  *(v1 - 192) = *(v0 + 288);
  result = *(v0 + 297);
  *(v1 - 183) = result;
  return result;
}

uint64_t sub_1ABA90984@<X0>(uint64_t a1@<X8>)
{
  *(v2 - 280) = a1;
  *(v2 - 272) = v1;

  return swift_allocObject();
}

uint64_t sub_1ABA909B0@<X0>(uint64_t a1@<X8>)
{
  *(v2 - 104) = v1;
  *(v2 - 120) = a1;

  return sub_1ABF21EB4();
}

uint64_t sub_1ABA909CC()
{
  v2 = *(v0 - 176);
  v3 = *(v0 - 152);
  v4 = *(v0 - 192);
  v5 = *(v0 - 320);
  v6 = *(v0 - 180);

  return sub_1ABAA8FA8(v2, v3);
}

uint64_t sub_1ABA90A20()
{

  return sub_1ABF25204();
}

uint64_t sub_1ABA90A68(uint64_t a1, uint64_t a2)
{
  *(a2 + 16) = 3;

  return swift_willThrow();
}

uint64_t sub_1ABA90AC4()
{

  return sub_1ABF252C4();
}

void sub_1ABA90AE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  *(v18 - 216) = a16;
  *(v18 - 208) = a15;
  *(v18 - 200) = a14;
  *(v18 - 192) = a18;
  *(v18 - 184) = a17;
}

uint64_t sub_1ABA90B04(uint64_t a1, uint64_t a2)
{
  *a2 = v2;
  *(a2 + 8) = v3;
  *(a2 + 16) = 0;

  return swift_willThrow();
}

uint64_t sub_1ABA90B20()
{
  result = v0;
  v3 = *(v1 - 72);
  return result;
}

void *sub_1ABA90B34()
{

  return memcpy((v0 + 8), (v0 + 120), 0x69uLL);
}

void sub_1ABA90B58()
{
  v4 = *v0;
  v3 = v0[2];
  v1 = v0[1];
  v2 = v0[3];
}

__n128 *sub_1ABA90B70(__n128 *result, __n128 a2)
{
  result[1] = a2;
  v4 = result + v3 + *(v2 + 56);
  return result;
}

id sub_1ABA90BE0(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return [v9 a2];
}

void sub_1ABA90BFC()
{
  *(v0 + 16) = v3;
  v5 = v0 + 16 * v4;
  *(v5 + 32) = v1;
  *(v5 + 40) = v2;
}

void sub_1ABA90C1C()
{

  JUMPOUT(0x1AC5AB8B0);
}

uint64_t sub_1ABA90C4C(uint64_t a1)
{
  v3 = v1 + *(a1 + 36);

  return sub_1ABF21E14();
}

uint64_t sub_1ABA90C7C()
{
  v2 = *(v0 - 392);
}

__n128 sub_1ABA90C94()
{
  result = *&STACK[0xEF0];
  v1 = *&STACK[0xF00];
  *&STACK[0xF20] = *&STACK[0xEF0];
  *&STACK[0xF30] = v1;
  LOBYTE(STACK[0xF40]) = STACK[0xF10];
  return result;
}

void sub_1ABA90CC8()
{

  sub_1ABADA514();
}

uint64_t sub_1ABA90CF4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return 0;
}

uint64_t sub_1ABA90D28()
{
  *(v4 - 104) = v3;
  *(v4 - 96) = v0;
  *(v4 - 88) = v2;
  return v1;
}

void sub_1ABA90D50()
{

  JUMPOUT(0x1AC5A9410);
}

uint64_t sub_1ABA90D68()
{
  v2 = *(v0 - 128);
  v3 = *(v0 - 120);
  v4 = *(v0 - 112);
  v5 = *(v0 - 104);
  v6 = *(v0 - 94);
  v7 = *(v0 - 96);

  return sub_1ABC6D458(v2, v3, v4, v5, v7, v6);
}

uint64_t sub_1ABA90D88()
{
  v5 = v3 + *(v2 + 72) * v0;

  return sub_1ABC47DD4(v5, v1);
}

void sub_1ABA90DC8(void *a1, uint64_t a2, uint64_t a3, os_signpost_id_t a4, const char *a5, const char *a6)
{

  _os_signpost_emit_with_name_impl(a1, v7, v6, a4, a5, a6, v8, 2u);
}

void sub_1ABA90DFC()
{

  JUMPOUT(0x1AC5A9410);
}

void sub_1ABA90E20()
{

  JUMPOUT(0x1AC5A9410);
}

uint64_t sub_1ABA90E44(uint64_t result)
{
  *(v1 - 96) = result;
  *(v1 - 128) = 4;
  return result;
}

uint64_t sub_1ABA90E80()
{
  sub_1ABF25234();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_1ABF23D34();
  return sub_1ABF25294();
}

void static EntityClass.activityEvent.getter()
{
  if (_Records_GDEntityClass_records)
  {
    v0 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x510), *(_Records_GDEntityClass_records + 0x518), *(_Records_GDEntityClass_records + 0x520), v10);
    sub_1ABA8F1BC(v0, v1, v2, v3, v4, v5, v6, v7, v9, v8, v10[0], v10[1], v11);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1ABA90F50()
{

  return swift_deallocPartialClassInstance();
}

uint64_t sub_1ABA90F70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  v10 = *&STACK[0x1E60];
  *&STACK[0x1E80] = *&STACK[0x1E50];
  *&STACK[0x1E90] = v10;
  *(v8 + 3536) = *(v8 + 3488);

  return sub_1ABA856C4(&STACK[0x1E80], va);
}

uint64_t sub_1ABA90FA4()
{

  return sub_1ABF25254();
}

id sub_1ABA90FC8()
{
  v3 = *v1;

  return objc_allocWithZone(v0);
}

uint64_t sub_1ABA90FFC()
{
  v3 = *(v1 + v0);
}

void sub_1ABA91014()
{

  JUMPOUT(0x1AC5AA170);
}

void static EntityClass.transportationActivity.getter()
{
  if (_Records_GDEntityClass_records)
  {
    v0 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x690), *(_Records_GDEntityClass_records + 0x698), *(_Records_GDEntityClass_records + 0x6A0), v10);
    sub_1ABA8F1BC(v0, v1, v2, v3, v4, v5, v6, v7, v9, v8, v10[0], v10[1], v11);
  }

  else
  {
    __break(1u);
  }
}

void static EntityClass.workingActivity.getter()
{
  if (_Records_GDEntityClass_records)
  {
    v0 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x6A8), *(_Records_GDEntityClass_records + 0x6B0), *(_Records_GDEntityClass_records + 0x6B8), v10);
    sub_1ABA8F1BC(v0, v1, v2, v3, v4, v5, v6, v7, v9, v8, v10[0], v10[1], v11);
  }

  else
  {
    __break(1u);
  }
}

void static EntityClass.meetingActivity.getter()
{
  if (_Records_GDEntityClass_records)
  {
    v0 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x6C0), *(_Records_GDEntityClass_records + 0x6C8), *(_Records_GDEntityClass_records + 0x6D0), v10);
    sub_1ABA8F1BC(v0, v1, v2, v3, v4, v5, v6, v7, v9, v8, v10[0], v10[1], v11);
  }

  else
  {
    __break(1u);
  }
}

void static EntityClass.eatingActivity.getter()
{
  if (_Records_GDEntityClass_records)
  {
    v0 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x6D8), *(_Records_GDEntityClass_records + 0x6E0), *(_Records_GDEntityClass_records + 0x6E8), v10);
    sub_1ABA8F1BC(v0, v1, v2, v3, v4, v5, v6, v7, v9, v8, v10[0], v10[1], v11);
  }

  else
  {
    __break(1u);
  }
}

void static EntityClass.watchingTVActivity.getter()
{
  if (_Records_GDEntityClass_records)
  {
    v0 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x6F0), *(_Records_GDEntityClass_records + 0x6F8), *(_Records_GDEntityClass_records + 0x700), v10);
    sub_1ABA8F1BC(v0, v1, v2, v3, v4, v5, v6, v7, v9, v8, v10[0], v10[1], v11);
  }

  else
  {
    __break(1u);
  }
}

void static EntityClass.communicatingActivity.getter()
{
  if (_Records_GDEntityClass_records)
  {
    v0 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x708), *(_Records_GDEntityClass_records + 0x710), *(_Records_GDEntityClass_records + 0x718), v10);
    sub_1ABA8F1BC(v0, v1, v2, v3, v4, v5, v6, v7, v9, v8, v10[0], v10[1], v11);
  }

  else
  {
    __break(1u);
  }
}

void static EntityClass.shoppingActivity.getter()
{
  if (_Records_GDEntityClass_records)
  {
    v0 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x720), *(_Records_GDEntityClass_records + 0x728), *(_Records_GDEntityClass_records + 0x730), v10);
    sub_1ABA8F1BC(v0, v1, v2, v3, v4, v5, v6, v7, v9, v8, v10[0], v10[1], v11);
  }

  else
  {
    __break(1u);
  }
}

void static EntityClass.mindfulnessActivity.getter()
{
  if (_Records_GDEntityClass_records)
  {
    v0 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x810), *(_Records_GDEntityClass_records + 0x818), *(_Records_GDEntityClass_records + 0x820), v10);
    sub_1ABA8F1BC(v0, v1, v2, v3, v4, v5, v6, v7, v9, v8, v10[0], v10[1], v11);
  }

  else
  {
    __break(1u);
  }
}

void static EntityClass.sleepingActivity.getter()
{
  if (_Records_GDEntityClass_records)
  {
    v0 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x7E0), *(_Records_GDEntityClass_records + 0x7E8), *(_Records_GDEntityClass_records + 0x7F0), v10);
    sub_1ABA8F1BC(v0, v1, v2, v3, v4, v5, v6, v7, v9, v8, v10[0], v10[1], v11);
  }

  else
  {
    __break(1u);
  }
}

void static EntityClass.travelingActivity.getter()
{
  if (_Records_GDEntityClass_records)
  {
    v0 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x738), *(_Records_GDEntityClass_records + 0x740), *(_Records_GDEntityClass_records + 0x748), v10);
    sub_1ABA8F1BC(v0, v1, v2, v3, v4, v5, v6, v7, v9, v8, v10[0], v10[1], v11);
  }

  else
  {
    __break(1u);
  }
}

void static EntityClass.readingActivity.getter()
{
  if (_Records_GDEntityClass_records)
  {
    v0 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x750), *(_Records_GDEntityClass_records + 0x758), *(_Records_GDEntityClass_records + 0x760), v10);
    sub_1ABA8F1BC(v0, v1, v2, v3, v4, v5, v6, v7, v9, v8, v10[0], v10[1], v11);
  }

  else
  {
    __break(1u);
  }
}

void static EntityClass.vacationingActivity.getter()
{
  if (_Records_GDEntityClass_records)
  {
    v0 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x768), *(_Records_GDEntityClass_records + 0x770), *(_Records_GDEntityClass_records + 0x778), v10);
    sub_1ABA8F1BC(v0, v1, v2, v3, v4, v5, v6, v7, v9, v8, v10[0], v10[1], v11);
  }

  else
  {
    __break(1u);
  }
}

void static EntityClass.gamingActivity.getter()
{
  if (_Records_GDEntityClass_records)
  {
    v0 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x780), *(_Records_GDEntityClass_records + 0x788), *(_Records_GDEntityClass_records + 0x790), v10);
    sub_1ABA8F1BC(v0, v1, v2, v3, v4, v5, v6, v7, v9, v8, v10[0], v10[1], v11);
  }

  else
  {
    __break(1u);
  }
}

void static EntityClass.socializingActivity.getter()
{
  if (_Records_GDEntityClass_records)
  {
    v0 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x798), *(_Records_GDEntityClass_records + 0x7A0), *(_Records_GDEntityClass_records + 0x7A8), v10);
    sub_1ABA8F1BC(v0, v1, v2, v3, v4, v5, v6, v7, v9, v8, v10[0], v10[1], v11);
  }

  else
  {
    __break(1u);
  }
}

void static EntityClass.wakingUpActivity.getter()
{
  if (_Records_GDEntityClass_records)
  {
    v0 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x7B0), *(_Records_GDEntityClass_records + 0x7B8), *(_Records_GDEntityClass_records + 0x7C0), v10);
    sub_1ABA8F1BC(v0, v1, v2, v3, v4, v5, v6, v7, v9, v8, v10[0], v10[1], v11);
  }

  else
  {
    __break(1u);
  }
}

void static EntityClass.goingToBedActivity.getter()
{
  if (_Records_GDEntityClass_records)
  {
    v0 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x7C8), *(_Records_GDEntityClass_records + 0x7D0), *(_Records_GDEntityClass_records + 0x7D8), v10);
    sub_1ABA8F1BC(v0, v1, v2, v3, v4, v5, v6, v7, v9, v8, v10[0], v10[1], v11);
  }

  else
  {
    __break(1u);
  }
}

void static EntityClass.exercisingActivity.getter()
{
  if (_Records_GDEntityClass_records)
  {
    v0 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x7F8), *(_Records_GDEntityClass_records + 0x800), *(_Records_GDEntityClass_records + 0x808), v10);
    sub_1ABA8F1BC(v0, v1, v2, v3, v4, v5, v6, v7, v9, v8, v10[0], v10[1], v11);
  }

  else
  {
    __break(1u);
  }
}

void static EntityClass.commuteActivity.getter()
{
  if (_Records_GDEntityClass_records)
  {
    v0 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0xB28), *(_Records_GDEntityClass_records + 0xB30), *(_Records_GDEntityClass_records + 0xB38), v10);
    sub_1ABA8F1BC(v0, v1, v2, v3, v4, v5, v6, v7, v9, v8, v10[0], v10[1], v11);
  }

  else
  {
    __break(1u);
  }
}

void static EntityClass.diningActivity.getter()
{
  if (_Records_GDEntityClass_records)
  {
    v0 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0xB40), *(_Records_GDEntityClass_records + 0xB48), *(_Records_GDEntityClass_records + 0xB50), v10);
    sub_1ABA8F1BC(v0, v1, v2, v3, v4, v5, v6, v7, v9, v8, v10[0], v10[1], v11);
  }

  else
  {
    __break(1u);
  }
}

void static EntityClass.attendingAPerformanceActivity.getter()
{
  if (_Records_GDEntityClass_records)
  {
    v0 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0xB58), *(_Records_GDEntityClass_records + 0xB60), *(_Records_GDEntityClass_records + 0xB68), v10);
    sub_1ABA8F1BC(v0, v1, v2, v3, v4, v5, v6, v7, v9, v8, v10[0], v10[1], v11);
  }

  else
  {
    __break(1u);
  }
}

void static EntityClass.stationaryActivity.getter()
{
  if (_Records_GDEntityClass_records)
  {
    v0 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0xB70), *(_Records_GDEntityClass_records + 0xB78), *(_Records_GDEntityClass_records + 0xB80), v10);
    sub_1ABA8F1BC(v0, v1, v2, v3, v4, v5, v6, v7, v9, v8, v10[0], v10[1], v11);
  }

  else
  {
    __break(1u);
  }
}

void static EntityClass.locationVisitActivity.getter()
{
  if (_Records_GDEntityClass_records)
  {
    v0 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0xBE8), *(_Records_GDEntityClass_records + 0xBF0), *(_Records_GDEntityClass_records + 0xBF8), v10);
    sub_1ABA8F1BC(v0, v1, v2, v3, v4, v5, v6, v7, v9, v8, v10[0], v10[1], v11);
  }

  else
  {
    __break(1u);
  }
}

void static EntityClass.walkingActivity.getter()
{
  if (_Records_GDEntityClass_records)
  {
    v0 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x858), *(_Records_GDEntityClass_records + 0x860), *(_Records_GDEntityClass_records + 0x868), v10);
    sub_1ABA8F1BC(v0, v1, v2, v3, v4, v5, v6, v7, v9, v8, v10[0], v10[1], v11);
  }

  else
  {
    __break(1u);
  }
}

void static EntityClass.runningActivity.getter()
{
  if (_Records_GDEntityClass_records)
  {
    v0 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x870), *(_Records_GDEntityClass_records + 0x878), *(_Records_GDEntityClass_records + 0x880), v10);
    sub_1ABA8F1BC(v0, v1, v2, v3, v4, v5, v6, v7, v9, v8, v10[0], v10[1], v11);
  }

  else
  {
    __break(1u);
  }
}

void static EntityClass.bicyclingActivity.getter()
{
  if (_Records_GDEntityClass_records)
  {
    v0 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x888), *(_Records_GDEntityClass_records + 0x890), *(_Records_GDEntityClass_records + 0x898), v10);
    sub_1ABA8F1BC(v0, v1, v2, v3, v4, v5, v6, v7, v9, v8, v10[0], v10[1], v11);
  }

  else
  {
    __break(1u);
  }
}

void static EntityClass.hikingActivity.getter()
{
  if (_Records_GDEntityClass_records)
  {
    v0 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x8A0), *(_Records_GDEntityClass_records + 0x8A8), *(_Records_GDEntityClass_records + 0x8B0), v10);
    sub_1ABA8F1BC(v0, v1, v2, v3, v4, v5, v6, v7, v9, v8, v10[0], v10[1], v11);
  }

  else
  {
    __break(1u);
  }
}

void static EntityClass.onThePhoneActivity.getter()
{
  if (_Records_GDEntityClass_records)
  {
    v0 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x828), *(_Records_GDEntityClass_records + 0x830), *(_Records_GDEntityClass_records + 0x838), v10);
    sub_1ABA8F1BC(v0, v1, v2, v3, v4, v5, v6, v7, v9, v8, v10[0], v10[1], v11);
  }

  else
  {
    __break(1u);
  }
}

void static EntityClass.facetimeActivity.getter()
{
  if (_Records_GDEntityClass_records)
  {
    v0 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x840), *(_Records_GDEntityClass_records + 0x848), *(_Records_GDEntityClass_records + 0x850), v10);
    sub_1ABA8F1BC(v0, v1, v2, v3, v4, v5, v6, v7, v9, v8, v10[0], v10[1], v11);
  }

  else
  {
    __break(1u);
  }
}

void static EntityClass.drivingActivity.getter()
{
  if (_Records_GDEntityClass_records)
  {
    v0 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0xCA8), *(_Records_GDEntityClass_records + 0xCB0), *(_Records_GDEntityClass_records + 0xCB8), v10);
    sub_1ABA8F1BC(v0, v1, v2, v3, v4, v5, v6, v7, v9, v8, v10[0], v10[1], v11);
  }

  else
  {
    __break(1u);
  }
}

void static EntityClass.behaviorActivity.getter()
{
  if (_Records_GDEntityClass_records)
  {
    v0 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0xCD8), *(_Records_GDEntityClass_records + 0xCE0), *(_Records_GDEntityClass_records + 0xCE8), v10);
    sub_1ABA8F1BC(v0, v1, v2, v3, v4, v5, v6, v7, v9, v8, v10[0], v10[1], v11);
  }

  else
  {
    __break(1u);
  }
}

void static EntityPredicate.identifierId.getter()
{
  if (_Records_GDEntityPredicate_records)
  {
    v0 = sub_1ABA91D48(_Records_GDEntityPredicate_records[276], *(_Records_GDEntityPredicate_records + 70), *(_Records_GDEntityPredicate_records + 71), v10);
    sub_1ABA8F1F8(v0, v1, v2, v3, v4, v5, v6, v7, v9, v8, v10[0], v10[1], v11);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1ABA91D48@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (a2 >= 3481)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (a3 >= 4281)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (!_Records_GDEntityPredicate_predicateIds)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v5 = result;
  result = sub_1ABF23DD4();
  if (_Records_GDEntityPredicate_labels)
  {
    v7 = result;
    v8 = v6;
    result = sub_1ABF23DD4();
    *a4 = v7;
    *(a4 + 8) = v8;
    *(a4 + 16) = result;
    *(a4 + 24) = v9;
    *(a4 + 32) = v5;
    return result;
  }

LABEL_9:
  __break(1u);
  return result;
}

void static EntityClass.walletOrder.getter()
{
  if (_Records_GDEntityClass_records)
  {
    v0 = sub_1ABAA2AF8(_Records_GDEntityClass_records);
    v3 = sub_1ABA8882C(v0, v1, v2, v13);
    sub_1ABA8F1BC(v3, v4, v5, v6, v7, v8, v9, v10, v12, v11, v13[0], v13[1], v14);
  }

  else
  {
    __break(1u);
  }
}

__n128 sub_1ABA91E60(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

void sub_1ABA92204(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1ABA7BCA8();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v25 = sub_1ABF21CF4();
  v26 = sub_1ABA7BB64(v25);
  v28 = v27;
  v30 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v26);
  sub_1ABA7BC58();
  v33 = v32 - v31;
  v34 = sub_1ABAD219C(&qword_1EB4DA7E8, &qword_1ABF67A70);
  v35 = sub_1ABA7BBB0(v34);
  v37 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v35);
  sub_1ABA7AC18();
  v40 = v38 - v39;
  v42 = MEMORY[0x1EEE9AC00](v41);
  v44 = &a9 - v43;
  v45 = MEMORY[0x1EEE9AC00](v42);
  v47 = &a9 - v46;
  v48 = *(v45 + 48);
  sub_1ABE0FF74();
  if (!v20)
  {
    a10 = v28;
    *v47 = v49 & 1;
    sub_1ABB3E5B4(v47, v44, &qword_1EB4DA7E8, &qword_1ABF67A70);
    v50 = *v44;
    sub_1ABAB480C(&v44[*(v34 + 48)], &qword_1EB4D1E40, &qword_1ABF349F0);
    if ((v50 & 1) == 0)
    {
      sub_1ABB3E5B4(v47, v40, &qword_1EB4DA7E8, &qword_1ABF67A70);
      v51 = *(v34 + 48);
      if (sub_1ABA7E1E0(v40 + v51, 1, v25) == 1)
      {
        sub_1ABAB480C(v40 + v51, &qword_1EB4D1E40, &qword_1ABF349F0);
        type metadata accessor for MorphunTokenizer.MorphunTokenizerError(0);
        sub_1ABAAA2F8(&unk_1EB4DA7F0, type metadata accessor for MorphunTokenizer.MorphunTokenizerError);
        swift_allocError();
        v53 = v52;
        v54 = sub_1ABF21F54();
        sub_1ABA7BBB0(v54);
        (*(v55 + 16))(v53, v24);
        swift_willThrow();
      }

      else
      {
        v56 = a10;
        (*(a10 + 32))(v33, v40 + v51, v25);
        if (qword_1ED871B18 != -1)
        {
          sub_1ABA7D4EC();
          swift_once();
        }

        v57 = sub_1ABF237F4();
        sub_1ABA7AA24(v57, qword_1ED871B20);
        v58 = sub_1ABF237D4();
        v59 = sub_1ABF24654();
        if (os_log_type_enabled(v58, v59))
        {
          v60 = swift_slowAlloc();
          *v60 = 0;
          _os_log_impl(&dword_1ABA78000, v58, v59, "MorphunTokenizer: Registering url received via XPC call in current process", v60, 2u);
          sub_1ABA7BDD8();
          MEMORY[0x1AC5AB8B0]();
        }

        sub_1ABF21CC4();
        sub_1ABF22F94();

        v61 = *(v56 + 8);
        v62 = sub_1ABA8C53C();
        v63(v62);
      }
    }

    sub_1ABAB480C(v47, &qword_1EB4DA7E8, &qword_1ABF67A70);
  }

  sub_1ABA7BC90();
}

uint64_t sub_1ABA925A4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_1ABAD219C(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1ABA92624(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *sub_1ABA92670(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_1ABF21F54();
    v8 = v5 + *(a4 + 24);

    return sub_1ABA7B9B4(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1ABA92708(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1ABF21F54();
    v9 = a1 + *(a3 + 24);

    return sub_1ABA7E1E0(v9, a2, v8);
  }
}

void static EntityPredicate.postalCode.getter()
{
  if (_Records_GDEntityPredicate_records)
  {
    v0 = sub_1ABA91D48(_Records_GDEntityPredicate_records[372], *(_Records_GDEntityPredicate_records + 94), *(_Records_GDEntityPredicate_records + 95), v10);
    sub_1ABA8F1F8(v0, v1, v2, v3, v4, v5, v6, v7, v9, v8, v10[0], v10[1], v11);
  }

  else
  {
    __break(1u);
  }
}

void static EntityPredicate.isoCountryCode.getter()
{
  if (_Records_GDEntityPredicate_records)
  {
    v0 = sub_1ABA91D48(_Records_GDEntityPredicate_records[1296], *(_Records_GDEntityPredicate_records + 325), *(_Records_GDEntityPredicate_records + 326), v10);
    sub_1ABA8F1F8(v0, v1, v2, v3, v4, v5, v6, v7, v9, v8, v10[0], v10[1], v11);
  }

  else
  {
    __break(1u);
  }
}

void static EntityPredicate.administrativeAreaCode.getter()
{
  if (_Records_GDEntityPredicate_records)
  {
    v0 = sub_1ABA91D48(_Records_GDEntityPredicate_records[492], *(_Records_GDEntityPredicate_records + 124), *(_Records_GDEntityPredicate_records + 125), v10);
    sub_1ABA8F1F8(v0, v1, v2, v3, v4, v5, v6, v7, v9, v8, v10[0], v10[1], v11);
  }

  else
  {
    __break(1u);
  }
}

void static EntityPredicate.thoroughfare.getter()
{
  if (_Records_GDEntityPredicate_records)
  {
    v0 = sub_1ABA91D48(_Records_GDEntityPredicate_records[348], *(_Records_GDEntityPredicate_records + 88), *(_Records_GDEntityPredicate_records + 89), v10);
    sub_1ABA8F1F8(v0, v1, v2, v3, v4, v5, v6, v7, v9, v8, v10[0], v10[1], v11);
  }

  else
  {
    __break(1u);
  }
}

void static EntityPredicate.locality.getter()
{
  if (_Records_GDEntityPredicate_records)
  {
    v0 = sub_1ABA91D48(_Records_GDEntityPredicate_records[360], *(_Records_GDEntityPredicate_records + 91), *(_Records_GDEntityPredicate_records + 92), v10);
    sub_1ABA8F1F8(v0, v1, v2, v3, v4, v5, v6, v7, v9, v8, v10[0], v10[1], v11);
  }

  else
  {
    __break(1u);
  }
}

void static EntityPredicate.subThoroughfare.getter()
{
  if (_Records_GDEntityPredicate_records)
  {
    v0 = sub_1ABA91D48(_Records_GDEntityPredicate_records[444], *(_Records_GDEntityPredicate_records + 112), *(_Records_GDEntityPredicate_records + 113), v10);
    sub_1ABA8F1F8(v0, v1, v2, v3, v4, v5, v6, v7, v9, v8, v10[0], v10[1], v11);
  }

  else
  {
    __break(1u);
  }
}

void static EntityPredicate.subLocality.getter()
{
  if (_Records_GDEntityPredicate_records)
  {
    v0 = sub_1ABA91D48(_Records_GDEntityPredicate_records[456], *(_Records_GDEntityPredicate_records + 115), *(_Records_GDEntityPredicate_records + 116), v10);
    sub_1ABA8F1F8(v0, v1, v2, v3, v4, v5, v6, v7, v9, v8, v10[0], v10[1], v11);
  }

  else
  {
    __break(1u);
  }
}

void static EntityPredicate.administrativeArea.getter()
{
  if (_Records_GDEntityPredicate_records)
  {
    v0 = sub_1ABA91D48(_Records_GDEntityPredicate_records[516], *(_Records_GDEntityPredicate_records + 130), *(_Records_GDEntityPredicate_records + 131), v10);
    sub_1ABA8F1F8(v0, v1, v2, v3, v4, v5, v6, v7, v9, v8, v10[0], v10[1], v11);
  }

  else
  {
    __break(1u);
  }
}

void static EntityPredicate.country.getter()
{
  if (_Records_GDEntityPredicate_records)
  {
    v0 = sub_1ABA91D48(_Records_GDEntityPredicate_records[504], *(_Records_GDEntityPredicate_records + 127), *(_Records_GDEntityPredicate_records + 128), v10);
    sub_1ABA8F1F8(v0, v1, v2, v3, v4, v5, v6, v7, v9, v8, v10[0], v10[1], v11);
  }

  else
  {
    __break(1u);
  }
}

uint64_t InferenceClient.init()()
{
  sub_1ABA7DA04();
  type metadata accessor for InferenceServer();
  v2 = sub_1ABD27500(129);
  if (v1)
  {
    sub_1ABA7F4E0();
  }

  else
  {
    *(v0 + 16) = v2;
  }

  return v0;
}

uint64_t sub_1ABA92F40()
{
  type metadata accessor for InferenceServerLifecycleManagerNoOp.DelegateHolder();
  v1 = swift_allocObject();
  *(v1 + 24) = 0;
  swift_unknownObjectWeakInit();
  sub_1ABAD219C(&qword_1EB4D8D50, &unk_1ABF5C4F0);
  v2 = swift_allocObject();
  *(v2 + 24) = 0;
  *(v2 + 16) = v1;
  *(v0 + 16) = v2;
  return v0;
}

unint64_t sub_1ABA92FFC()
{
  result = qword_1ED86E880[0];
  if (!qword_1ED86E880[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED86E880);
  }

  return result;
}

uint64_t sub_1ABA93050@<X0>(uint64_t a1@<X0>, uint64_t a2@<X4>, uint64_t a3@<X5>, uint64_t *a4@<X8>)
{
  v8 = *(a2 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](a1);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = v13(v10);
  if (!v4)
  {
    a4[3] = a2;
    a4[4] = a3;
    v15 = sub_1ABA93DC0(a4);
    return (*(v8 + 32))(v15, v12, a2);
  }

  return result;
}

uint64_t sub_1ABA93138@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2[4];
  v4 = v2[5];
  return sub_1ABA93050(a1, v2[2], v2[3], a2);
}

uint64_t sub_1ABA93164@<X0>(uint64_t a1@<X8>)
{
  v3 = *(a1 - 256);
  v4 = *(v1 - 112);
  v5 = *(v1 - 104);

  return sub_1ABF24EC4();
}

uint64_t sub_1ABA93260()
{

  return swift_unexpectedError();
}

void sub_1ABA93280()
{

  JUMPOUT(0x1AC5A9410);
}

uint64_t sub_1ABA93314(uint64_t (*a1)(uint64_t *, void), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{

  return sub_1ABE51930(a1, a2, v8, v7, v9, a6, v6);
}

uint64_t sub_1ABA93338()
{

  return sub_1ABF24D94();
}

__n128 sub_1ABA9335C()
{
  result = *&STACK[0x470];
  v1 = *&STACK[0x480];
  *&STACK[0x4A0] = *&STACK[0x470];
  *&STACK[0x4B0] = v1;
  LOBYTE(STACK[0x4C0]) = STACK[0x490];
  return result;
}

void sub_1ABA933F0()
{

  os_unfair_lock_lock(v0 + 6);
}

uint64_t sub_1ABA93490(uint64_t a1)
{
  *(a1 + 8) = v1;
  v4 = v3 + *v3;
  return v2;
}

id sub_1ABA934B0(uint64_t a1)
{

  return [v1 (v2 + 1400)];
}

uint64_t sub_1ABA934D0(uint64_t result)
{
  *(result + 8) = sub_1ABC173B0;
  v2 = *(v1 + 208);
  v3 = *(v1 + 192);
  return result;
}

void sub_1ABA934F8()
{
  v5 = *(v3 + 56) + 24 * v2;
  *v5 = v4;
  *(v5 + 8) = v1;
  *(v5 + 16) = v0 & 1;
}

uint64_t sub_1ABA9358C()
{
  result = *(v0 - 136);
  v2 = *(v0 - 128);
  return result;
}

uint64_t sub_1ABA93668()
{

  return sub_1ABF24E64();
}

uint64_t sub_1ABA936AC()
{

  return swift_once();
}

uint64_t sub_1ABA936CC()
{
}

uint64_t sub_1ABA936E4()
{

  return sub_1ABF25054();
}

void sub_1ABA93758()
{
  *(v0 - 252) = 1;
  *(v0 - 248) = 1;
  *(v0 - 244) = 1;
  *(v0 - 240) = 1;
}

void sub_1ABA937B8()
{

  JUMPOUT(0x1AC5AB8B0);
}

void *sub_1ABA937E4(void *a1)
{

  return memcpy(a1, v1, 0xA9uLL);
}

void *sub_1ABA937FC()
{
  v10 = *(v4 - 136);
  *(v4 - 344) = v10;
  v11 = *(v4 - 128);
  *(v4 - 352) = v11;
  *(v4 - 328) = v2;
  *(v4 - 320) = v3;
  *(v4 - 312) = *(v4 - 336);
  *(v4 - 304) = v6;
  *(v4 - 296) = v7;
  *(v4 - 288) = v8;
  *(v4 - 280) = v0;
  *(v4 - 279) = *(v4 - 372);
  *(v4 - 272) = v9;
  *(v4 - 264) = *(v4 - 368);
  *(v4 - 256) = *(v4 - 360);
  *(v4 - 248) = v10;
  *(v4 - 240) = v11;

  return memcpy(v1, (v4 - 328), 0x60uLL);
}

uint64_t sub_1ABA938F8@<X0>(uint64_t a1@<X8>)
{
  v2 = *(a1 - 256);

  return sub_1ABF24ED4();
}

uint64_t sub_1ABA93918()
{

  return swift_allocObject();
}

void *sub_1ABA93930(__n128 *a1, __n128 a2)
{
  a1[1] = a2;
  v4 = a1 + 2;

  return memcpy(v4, (v2 - 120), 0x58uLL);
}

uint64_t sub_1ABA93964()
{

  return sub_1ABF24FF4();
}

void sub_1ABA93994()
{
  *(v1 - 88) = v0;
  v2 = *(v0 + 24);
  v3 = *(v0 + 16) + 1;
}

uint64_t sub_1ABA939A8()
{
  v2 = *(v0 - 88);

  return sub_1ABF24D94();
}

uint64_t sub_1ABA939EC()
{
  v3 = *(v0 + 8);
  result = v1;
  v5 = *(v2 - 88);
  return result;
}

uint64_t sub_1ABA939FC()
{

  return sub_1ABF24F84();
}

uint64_t AssetRegistryBasicServer.__allocating_init(jsonDecoder:)(uint64_t a1)
{
  type metadata accessor for FileLoader();
  v3 = static FileLoader.inIntelligencePlatform(searchPaths:)(&unk_1F208ECD8);
  if (v1)
  {
  }

  v5 = v3;
  type metadata accessor for AssetRegistryServerConfigLoader();
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  result = swift_allocObject();
  *(result + 16) = v6;
  *(result + 24) = a1;
  return result;
}

uint64_t static FileLoader.inIntelligencePlatform(searchPaths:)(uint64_t a1)
{
  v3 = sub_1ABF21CF4();
  v4 = sub_1ABA7BB64(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v4);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v20 - v12;
  if (qword_1ED871EA0 != -1)
  {
    swift_once();
  }

  v14 = [qword_1ED871EA8 resourceURL];
  if (v14)
  {
    v15 = v14;
    sub_1ABF21CA4();

    v16 = *(v6 + 32);
    v16(v11, v13, v3);
    v17 = *(v1 + 48);
    v18 = *(v1 + 52);
    v1 = swift_allocObject();
    *(v1 + 16) = a1;
    v16((v1 + OBJC_IVAR____TtC20IntelligencePlatform10FileLoader_baseUrl), v11, v3);
  }

  else
  {
    sub_1ABC438FC();
    swift_allocError();
    swift_willThrow();
  }

  return v1;
}

uint64_t type metadata accessor for FileLoader()
{
  result = qword_1ED870C98;
  if (!qword_1ED870C98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t *sub_1ABA93DC0(uint64_t *a1)
{
  v1 = a1;
  if ((*(*(a1[3] - 8) + 82) & 2) != 0)
  {
    *a1 = swift_allocBox();
    return v2;
  }

  return v1;
}

void *sub_1ABA93E20(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_1ABA93E64(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

void *sub_1ABA93EC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = type metadata accessor for InferenceServerConfigManager();
  sub_1ABA93FC4(a1, v8);

  result = sub_1ABA94024(v8, a2);
  a3[3] = v6;
  a3[4] = &off_1F207E108;
  *a3 = result;
  return result;
}

uint64_t sub_1ABA93FC4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  sub_1ABA7D08C(v3);
  (*v4)(a2);
  return a2;
}

void *sub_1ABA94024(uint64_t *a1, uint64_t a2)
{
  v4 = type metadata accessor for InferenceServerConfigLoader();
  sub_1ABA93E64(a1, v27);
  v5 = sub_1ABA94244(v27);
  v6 = type metadata accessor for InferenceServerConfigManagerCacheNoOp();
  v7 = swift_allocObject();
  v27[3] = v4;
  v27[4] = &off_1F207EB68;
  v26[4] = &off_1F2079078;
  v27[0] = v5;
  v26[3] = v6;
  v26[0] = v7;
  v8 = swift_allocObject();
  sub_1ABA94E50(v27, v4);
  sub_1ABA7BD7C();
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v11);
  sub_1ABA7BC58();
  v14 = (v13 - v12);
  (*(v15 + 16))(v13 - v12);
  sub_1ABA94E50(v26, v6);
  sub_1ABA7BD7C();
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v18);
  sub_1ABA7BC58();
  v21 = (v20 - v19);
  (*(v22 + 16))(v20 - v19);
  v23 = *v14;
  v24 = *v21;
  v8[5] = v4;
  v8[6] = &off_1F207EB68;
  v8[2] = v23;
  v8[10] = v6;
  v8[11] = &off_1F2079078;
  v8[7] = v24;
  v8[12] = a2;
  sub_1ABA84B54(v26);
  sub_1ABA84B54(v27);
  sub_1ABA84B54(a1);
  return v8;
}

uint64_t sub_1ABA94244(uint64_t *a1)
{
  v2 = type metadata accessor for AssetRegistry();
  v3 = a1[3];
  v19 = a1[4];
  v20 = v2;
  sub_1ABA93E20(a1, v3);
  sub_1ABA7BD7C();
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v9 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
  v10 = *(v5 + 16);
  v10(&v19 - v9);
  type metadata accessor for TrialAssetManager.RefreshPolicy.AutoRefreshForAllRequestedNamespacesInfo();
  swift_allocObject();
  v11 = sub_1ABA944A0();
  v21[0] = v11;
  type metadata accessor for AssetRegistry.TrialAssetManagerPolicy.PersistentInfo.PersistentContent();
  swift_allocObject();
  v12 = sub_1ABA94600(v21, sub_1ABAF32FC, 0);
  sub_1ABAD219C(&qword_1EB4D1E38, &qword_1ABF349E0);
  v13 = swift_allocObject();
  *(v13 + 24) = 0;
  *(v13 + 16) = v12;
  v21[0] = v11;
  v21[1] = v13;
  v22 = 1;
  MEMORY[0x1EEE9AC00](v13);
  (v10)(&v19 - v9, &v19 - v9, v3);
  v14 = sub_1ABA94614(&v19 - v9, v21, v20, v3, *(v19 + 8));
  v15 = *(v5 + 8);

  v16 = sub_1ABA90200();
  v15(v16);
  v17 = swift_allocObject();
  *(v17 + 16) = v14;
  sub_1ABA84B54(a1);
  return v17;
}

uint64_t sub_1ABA944A0()
{
  type metadata accessor for TrialAssetManager.RefreshPolicy.AutoRefreshForAllRequestedNamespacesInfo.AutoRefreshContent();
  sub_1ABA7D028();
  v1 = swift_allocObject();
  type metadata accessor for TrialAssetManager.NamespaceUpdateNotificationToken();
  sub_1ABA94588();
  *(v1 + 16) = sub_1ABF239C4();
  sub_1ABAD219C(&qword_1EB4DBBD8, &qword_1ABF71B90);
  v2 = swift_allocObject();
  *(v2 + 24) = 0;
  *(v2 + 16) = v1;
  *(v0 + 16) = v2;
  return v0;
}

unint64_t sub_1ABA94588()
{
  result = qword_1ED870330;
  if (!qword_1ED870330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED870330);
  }

  return result;
}

void *sub_1ABA94600(void *a1, uint64_t a2, uint64_t a3)
{
  v3[2] = *a1;
  v3[3] = a2;
  v3[4] = a3;
  v3[5] = 0;
  return v3;
}

uint64_t sub_1ABA94614(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14 = a4;
  v15 = a5;
  v8 = sub_1ABA93DC0(&v13);
  (*(*(a4 - 8) + 32))(v8, a1, a4);
  v9 = swift_allocObject();
  v10 = *a2;
  v11 = a2[1];
  LOBYTE(a2) = *(a2 + 16);
  sub_1ABA946C0(&v13, v9 + 16);
  *(v9 + 56) = v10;
  *(v9 + 64) = v11;
  *(v9 + 72) = a2;
  return v9;
}

uint64_t sub_1ABA946C0(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_1ABA946E0()
{
}

void sub_1ABA946F8(uint64_t a1@<X8>)
{
  if (a1 <= *(v1 + 16))
  {
    v2 = *(v1 + 16);
  }
}

uint64_t sub_1ABA94708()
{

  return sub_1ABAEEEC4();
}

uint64_t sub_1ABA94798()
{

  return sub_1ABF25054();
}

uint64_t sub_1ABA947C4()
{

  return sub_1ABF22824();
}

void sub_1ABA947E4()
{

  JUMPOUT(0x1AC5A9410);
}

double sub_1ABA94868(uint64_t a1)
{
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0;
  return result;
}

__n128 sub_1ABA9487C()
{
  result = *&STACK[0x560];
  v1 = *&STACK[0x570];
  *&STACK[0x590] = *&STACK[0x560];
  *&STACK[0x5A0] = v1;
  LOBYTE(STACK[0x5B0]) = STACK[0x580];
  return result;
}

__n128 sub_1ABA948B4()
{
  *(v0 + 4176) = *(v0 + 4128);
  result = *(v0 + 4144);
  *(v0 + 4192) = result;
  return result;
}

uint64_t sub_1ABA948D4()
{

  return swift_once();
}

void sub_1ABA9490C(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

void sub_1ABA9492C()
{
  *(v0 + 16) = v2;
  v5 = v0 + 16 * v4;
  *(v5 + 32) = v3;
  *(v5 + 40) = v1;
}

uint64_t sub_1ABA94940(uint64_t a1)
{

  return sub_1ABA7B9B4(v2 + v1, 1, 1, a1);
}

uint64_t sub_1ABA949A0(uint64_t a1)
{
  *(a1 + 8) = v1;
  v4 = v3 + *v3;
  return v2;
}

uint64_t sub_1ABA94A10(uint64_t a1)
{
  *(v1 + 24) = a1;
  v3 = *(a1 - 8);
  return a1 - 8;
}

void sub_1ABA94A84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{

  GraphObjectBareContextProtocol.graphObject<A>(for:)(a1, v20, a3, v21, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

void sub_1ABA94AC4()
{
  v1 = *(v0 - 96);
  v2 = *(v0 - 88);
  v3 = *(v0 - 128) + *(*(v0 - 112) + 52);
  *v3 = *(v0 - 104);
  *(v3 + 8) = v1;
  *(v3 + 16) = v2;
}

uint64_t sub_1ABA94AE8(uint64_t a1, uint64_t a2)
{
  *a2 = v2;
  *(a2 + 8) = v3;
  *(a2 + 16) = 1;

  return swift_willThrow();
}

uint64_t sub_1ABA94B20()
{
  v2 = v0[18];
  v4 = v0[15];
  v3 = v0[16];
  v5 = v0[12];
}

uint64_t sub_1ABA94B74(uint64_t result, uint64_t a2)
{
  *(v5 + 32) = v2;
  *(v5 + 40) = v4;
  *(v5 + 48) = result;
  *(v5 + 56) = a2;
  *(v5 + 64) = v3;
  return result;
}

void *sub_1ABA94BA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return memcpy(&a9, v9, 0x58uLL);
}

uint64_t sub_1ABA94BE8()
{
}

void sub_1ABA94C04()
{
  *(v0 - 208) = 0;
  *(v0 - 200) = 0;
  *(v0 - 192) = 0;
  *(v0 - 184) = 0;
  *(v0 - 176) = 0;
}

uint64_t *sub_1ABA94C54()
{
  result = sub_1ABA93E20(v0, v0[3]);
  v2 = *result;
  return result;
}

uint64_t sub_1ABA94C74()
{

  return swift_slowAlloc();
}

uint64_t sub_1ABA94C90()
{

  return sub_1ABF217D4();
}

void sub_1ABA94CF8()
{
  v0[29] = 0;
  v0[30] = 0;
  v0[31] = 0;
  v0[32] = 0;
}

uint64_t sub_1ABA94D04()
{

  return sub_1ABF24CA4();
}

uint64_t sub_1ABA94D20()
{

  return sub_1ABF24C54();
}

double sub_1ABA94D44()
{
  result = 0.0;
  *(v0 + 152) = 0u;
  *(v0 + 136) = 0u;
  *(v0 + 120) = 0u;
  *(v0 + 104) = 0u;
  *(v0 + 88) = 0u;
  return result;
}

uint64_t sub_1ABA94DCC()
{
  result = v0 - 88;
  v2 = *(v0 - 104);
  return result;
}

uint64_t sub_1ABA94DE8()
{
  v3 = *(v1 + 8);
  result = v0;
  v5 = *(v2 - 104);
  return result;
}

uint64_t sub_1ABA94E04()
{

  return sub_1ABEC5A64();
}

uint64_t sub_1ABA94E50(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

uint64_t sub_1ABA94EA0()
{

  return sub_1ABA88934(&STACK[0xAD0]);
}

uint64_t sub_1ABA94EB8()
{

  return sub_1ABAE2F1C();
}

uint64_t sub_1ABA94ED0()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock(v1 + 6);
  sub_1ABA94F30(&v1[4]);
  os_unfair_lock_unlock(v1 + 6);
  return swift_unknownObjectRelease();
}

uint64_t sub_1ABA94F30(uint64_t a1)
{
  v2 = *(v1 + 16);
  *(*a1 + 24) = *(v1 + 24);
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_1ABA94FF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 16) && (v3 = sub_1ABA94FC8(a1, a2), (v4 & 1) != 0))
  {
    sub_1ABA97EC0(v3);
  }

  else
  {
    sub_1ABA8BA38();
  }

  return sub_1ABA7D000();
}

unint64_t sub_1ABA95034()
{
  result = qword_1EB4CF9A0[0];
  if (!qword_1EB4CF9A0[0])
  {
    sub_1ABAE2850(&qword_1EB4D1080, &qword_1ABF33148);
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB4CF9A0);
  }

  return result;
}

uint64_t sub_1ABA950DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  v10 = *&STACK[0x12F0];
  *&STACK[0x1310] = *&STACK[0x12E0];
  *&STACK[0x1320] = v10;
  *(v8 + 608) = *(v8 + 560);

  return sub_1ABA856C4(&STACK[0x1310], va);
}

id sub_1ABA95120()
{
  v4 = *(v2 + 8 * *v0);
  v5 = *(v1 + 3480);

  return objc_allocWithZone(v5);
}

void sub_1ABA9514C(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t sub_1ABA9516C()
{
  v3 = *(v0 + 632);
  v4 = *(v0 + 640);
  v5 = *(v0 + 624);

  return sub_1ABA8882C(v5, v3, v4, v1 + 16);
}

uint64_t *sub_1ABA951C0(uint64_t a1)
{
  *(v2 - 104) = a1;
  *(v2 - 96) = v1;

  return sub_1ABA93DC0((v2 - 128));
}

uint64_t sub_1ABA951FC()
{
  v2 = *(v0 + 40);

  return sub_1ABF25234();
}

uint64_t sub_1ABA95230(uint64_t a1)
{

  return sub_1ABAB480C(a1, v1, v2);
}

__n128 sub_1ABA95260()
{
  result = *&STACK[0xCE0];
  v1 = *&STACK[0xCF0];
  *&STACK[0xD10] = *&STACK[0xCE0];
  *&STACK[0xD20] = v1;
  LOBYTE(STACK[0xD30]) = STACK[0xD00];
  return result;
}

uint64_t sub_1ABA95280()
{
  v2 = *(v0 + 400);

  return swift_unknownObjectRetain();
}

uint64_t sub_1ABA95298(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;

  return sub_1ABF23744();
}

unint64_t sub_1ABA952C4()
{

  return sub_1ABAAFEB4();
}

uint64_t sub_1ABA952EC()
{

  return swift_getAssociatedConformanceWitness();
}

void sub_1ABA95368()
{
  v2 = *(v0 + 16) + 1;

  sub_1ABADB784();
}

uint64_t sub_1ABA95398(uint64_t a1, uint64_t a2)
{

  return sub_1ABD79A38(a1, a2, 1852797802, 0xE400000000000000, v2);
}

uint64_t sub_1ABA953B8@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[3] + a1;
  v4 = v1[4] + a1;
  v5 = v1[2];

  return sub_1ABF21894();
}

uint64_t sub_1ABA95410(unint64_t *a1)
{

  return sub_1ABAB47C4(a1, v1, v2);
}

uint64_t sub_1ABA95454()
{
  v2 = *(v0 - 432);
}

uint64_t sub_1ABA9546C()
{
  v3 = *(v0 + 8);
  result = v1;
  v5 = *(v2 - 160);
  return result;
}

__n128 sub_1ABA95488()
{
  result = *&STACK[0xF20];
  v1 = *&STACK[0xF30];
  *&STACK[0xF50] = *&STACK[0xF20];
  *&STACK[0xF60] = v1;
  LOBYTE(STACK[0xF70]) = STACK[0xF40];
  return result;
}

void sub_1ABA954FC(uint64_t a1@<X8>, __n128 a2@<Q0>)
{
  *(v4 + 72) = a2;
  *(v4 + 88) = a1;
  *(v4 + 96) = v2;
  *(v4 + 104) = v3;

  sub_1ABD7DC38(v4);
}

uint64_t sub_1ABA9554C()
{
}

void sub_1ABA95564()
{

  JUMPOUT(0x1AC5A9410);
}

void sub_1ABA95580(void *a1, uint64_t a2, uint64_t a3, os_signpost_id_t a4, const char *a5, const char *a6)
{

  _os_signpost_emit_with_name_impl(a1, v7, v6, a4, a5, a6, v8, 2u);
}

unint64_t sub_1ABA955B4()
{

  return sub_1ABE27554();
}

uint64_t sub_1ABA955D8(uint64_t result)
{
  *(v1 - 96) = result;
  *(v1 - 128) = 1;
  return result;
}

unint64_t sub_1ABA955E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (sub_1ABF25054() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

uint64_t sub_1ABA956B4()
{

  return sub_1ABF248D4();
}

uint64_t sub_1ABA95700()
{

  return sub_1ABF21B14();
}

uint64_t sub_1ABA95720()
{
  v2 = *(v0 - 72);

  return sub_1ABF22A14();
}

uint64_t sub_1ABA95744()
{
  v1 = *(v0 - 232);
  v2 = *(*(v0 - 224) + 8);
  return *(v0 - 320);
}

uint64_t sub_1ABA9576C(uint64_t a1, ...)
{
  va_start(va1, a1);
  va_start(va, a1);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);

  return sub_1ABB242A4(va1, va);
}

__n128 sub_1ABA95784()
{
  result = *&STACK[0x9E0];
  v1 = *&STACK[0x9F0];
  *&STACK[0xA10] = *&STACK[0x9E0];
  *&STACK[0xA20] = v1;
  LOBYTE(STACK[0xA30]) = STACK[0xA00];
  return result;
}

BOOL sub_1ABA957C8(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

void sub_1ABA957E4(uint64_t a1@<X8>)
{
  *v2 = a1;
  *(v2 + 8) = v1;
  *(v2 + 16) = 2;
}

uint64_t sub_1ABA957F4()
{

  return sub_1ABF217D4();
}

id sub_1ABA95838(uint64_t a1)
{

  return [v1 (v2 + 1400)];
}

void sub_1ABA958A0()
{
  v2 = *(v1 - 96);
  v3 = v0 + *(*(v1 - 112) + 48);
  *v3 = *(v1 - 104);
  *(v3 + 8) = v2;
}

void sub_1ABA958BC()
{

  JUMPOUT(0x1AC5A9410);
}

uint64_t sub_1ABA958F0()
{

  return sub_1ABF25054();
}

Swift::OpaquePointer_optional __swiftcall readJsonStringToIntMap(fileName:)(Swift::String fileName)
{
  sub_1ABA7E2A8();
  v2 = v1;
  v4 = v3;
  v53[5] = *MEMORY[0x1E69E9840];
  v5 = sub_1ABF21CF4();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = &v50[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v50[-v12];
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v50[-v14];
  if (qword_1ED871EA0 != -1)
  {
    swift_once();
  }

  v16 = sub_1ABA96194(v4, v2, 1852797802, 0xE400000000000000, qword_1ED871EA8);
  if (v16)
  {
    v17 = v16;
    sub_1ABF21CA4();

    (*(v6 + 32))(v15, v13, v5);
    v40 = sub_1ABF21D34();
    v42 = v41;
    v43 = objc_autoreleasePoolPush();
    v44 = objc_opt_self();
    v45 = sub_1ABF21DB4();
    v53[0] = 0;
    v46 = [v44 JSONObjectWithData:v45 options:0 error:v53];

    if (v46)
    {
      v47 = v53[0];
      sub_1ABF248F4();
      swift_unknownObjectRelease();
      sub_1ABAD219C(&qword_1EB4D1078, &qword_1ABF33140);
      if ((swift_dynamicCast() & 1) == 0)
      {
        v53[4] = 0;
      }

      objc_autoreleasePoolPop(v43);
      sub_1ABA96210(v40, v42);
      (*(v6 + 8))(v15, v5);
    }

    else
    {
      v48 = v53[0];
      v49 = sub_1ABF21BE4();

      swift_willThrow();
      objc_autoreleasePoolPop(v43);
      sub_1ABA96210(v40, v42);
      if (qword_1ED86B410 != -1)
      {
        sub_1ABAB599C();
      }

      v18 = sub_1ABF237F4();
      sub_1ABA7AA24(v18, qword_1ED86B418);
      (*(v6 + 16))(v10, v15, v5);
      v19 = v49;
      v20 = sub_1ABF237D4();
      v21 = sub_1ABF24664();

      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        v52 = swift_slowAlloc();
        v53[0] = v52;
        *v22 = 136315394;
        sub_1ABAE27F8();
        v51 = v21;
        v23 = sub_1ABF24FF4();
        v25 = v24;
        v26 = *(v6 + 8);
        v26(v10, v5);
        v27 = sub_1ABADD6D8(v23, v25, v53);

        *(v22 + 4) = v27;
        *(v22 + 12) = 2080;
        swift_getErrorValue();
        v28 = sub_1ABF25154();
        v30 = sub_1ABADD6D8(v28, v29, v53);

        *(v22 + 14) = v30;
        _os_log_impl(&dword_1ABA78000, v20, v51, "Error: Unable to decode file %s with error %s", v22, 0x16u);
        swift_arrayDestroy();
        sub_1ABA7BC34();
        sub_1ABA7BC34();

        v26(v15, v5);
      }

      else
      {

        v36 = *(v6 + 8);
        v36(v10, v5);
        v36(v15, v5);
      }
    }
  }

  else
  {
    if (qword_1ED86B410 != -1)
    {
      sub_1ABAB599C();
    }

    v31 = sub_1ABF237F4();
    sub_1ABA7AA24(v31, qword_1ED86B418);

    v32 = sub_1ABF237D4();
    v33 = sub_1ABF24664();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v53[0] = v35;
      *v34 = 136315138;
      *(v34 + 4) = sub_1ABADD6D8(v4, v2, v53);
      _os_log_impl(&dword_1ABA78000, v32, v33, "Error: Unable to read file %s", v34, 0xCu);
      sub_1ABA84B54(v35);
      sub_1ABA7BC34();
      sub_1ABA7BC34();
    }
  }

  v37 = *MEMORY[0x1E69E9840];
  sub_1ABA7BC1C();
  result.value._rawValue = v38;
  result.is_nil = v39;
  return result;
}

uint64_t sub_1ABA95FE4@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(v3 + 1152) = a2;
  *(v3 + 1144) = v2;
  v4 = *(result + 56);
  v5 = *(*(result + 48) + (__clz(__rbit64(v2)) | (a2 << 6)));
  return result;
}

uint64_t sub_1ABA96018()
{
  result = v0;
  v3 = *(v1 - 88);
  return result;
}

__n128 sub_1ABA96024()
{
  result = *&STACK[0xCB0];
  v1 = *&STACK[0xCC0];
  *&STACK[0xCE0] = *&STACK[0xCB0];
  *&STACK[0xCF0] = v1;
  LOBYTE(STACK[0xD00]) = STACK[0xCD0];
  return result;
}

uint64_t sub_1ABA96050(uint64_t a1)
{
  *(v1 + 48) = a1;

  return swift_task_alloc();
}

uint64_t sub_1ABA9607C()
{
}

uint64_t sub_1ABA960BC(uint64_t result)
{
  *(v1 - 144) = result;
  v2 = *(result - 8);
  return result;
}

void sub_1ABA960E0(__n128 a1, __n128 a2, __n128 a3)
{
  *(v3 - 192) = a2;
  *(v3 - 176) = a3;
  *(v3 - 208) = a1;
}

void sub_1ABA96138(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t sub_1ABA96158()
{
  v2 = *(v0 - 152);
  v3 = *(v0 - 144);
  v4 = *(v0 - 136);
  v5 = *(v0 - 128);

  return sub_1ABDEFF58(v2, v3, v4, v5);
}

void *sub_1ABA96174()
{
  v1 = v0[20];
  v0[24] = v0[21];
  v0[25] = v1;
  v2 = v0[18];
  v0[26] = v0[19];
  v0[27] = v2;
  result = v0 + 24;
  v4 = v0[23];
  return result;
}

id sub_1ABA96194(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = sub_1ABF23BD4();
  sub_1ABA7ECFC();
  v7 = sub_1ABF23BD4();

  v8 = [a5 URLForResource:v6 withExtension:v7];

  return v8;
}

uint64_t sub_1ABA96210(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_1ABA9628C()
{
  sub_1ABAD219C(&qword_1EB4D1190, &qword_1ABF33318);
  swift_allocObject();
  sub_1ABA814B0();
  *(v0 + 16) = sub_1ABA962E4(v1, v2);
  return v0;
}

uint64_t sub_1ABA962E4(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = 0;
  *(v2 + 24) = 0;
  swift_weakInit();
  sub_1ABAD219C(&qword_1EB4D1190, &qword_1ABF33318);
  *(v2 + 40) = sub_1ABF239C4();
  *(v2 + 48) = 0;
  *(v2 + 52) = 1;
  v5 = *(v2 + 24);
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;

  swift_weakAssign();

  *(v2 + 48) = 0;
  *(v2 + 52) = 1;
  return v2;
}

__n128 sub_1ABA963E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  result = a67;
  *&STACK[0x200] = a67;
  *&STACK[0x210] = a68;
  LOBYTE(STACK[0x220]) = a69;
  return result;
}

id sub_1ABA963F8()
{

  return objc_allocWithZone(v0);
}

id sub_1ABA96418(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, char a26)
{
  a23 = a25;
  a24 = a26;
  v29 = *(v26 + 24);

  return sub_1ABC4EFE4(&a23, v27, v29);
}

__n128 sub_1ABA96474()
{
  result = v2[1];
  v4 = v2[2].n128_u64[0];
  v5 = v2[2].n128_u64[1];
  v6 = v2[3].n128_u8[0];
  v0[2] = result;
  v0[3].n128_u64[0] = v4;
  v0[3].n128_u64[1] = v5;
  v0[4].n128_u8[0] = v6;
  *(v1 + 16) = v0;
  return result;
}

uint64_t sub_1ABA96494(uint64_t result)
{
  v1 = *(result + 32);
  v2 = *(result + 34);
  return result;
}

void sub_1ABA964C0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0xCu);
}

unint64_t sub_1ABA964E0()
{
  *(v0 - 328) = 9;

  return sub_1ABC38DC8();
}

uint64_t sub_1ABA96500()
{
  v4 = *(v2 - 216);
  v5 = *(v2 - 152);

  return sub_1ABDEFF58(v4, v5, v0, v1);
}

uint64_t sub_1ABA96520()
{
}

uint64_t sub_1ABA9653C(uint64_t result)
{
  *(v1 - 144) = result;
  *(v1 - 176) = 3;
  return result;
}

uint64_t sub_1ABA9654C()
{
  sub_1ABA7E2A8();
  v1 = v0;
  v2 = v0 + 64;
  v3 = 1 << *(v0 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(v0 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    while (1)
    {
      v9 = v8;
LABEL_9:
      v10 = __clz(__rbit64(v5));
      v5 &= v5 - 1;
      v11 = v10 | (v9 << 6);
      v12 = (*(v1 + 48) + 16 * v11);
      v13 = *v12;
      v14 = v12[1];
      v15 = *(*(v1 + 56) + 4 * v11);

      sub_1ABA96644();

      if (!v5)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
      return result;
    }

    if (v9 >= v6)
    {
      break;
    }

    v5 = *(v2 + 8 * v9);
    ++v8;
    if (v5)
    {
      v8 = v9;
      goto LABEL_9;
    }
  }

  sub_1ABA7BC1C();
}

void sub_1ABA96644()
{
  sub_1ABAA068C();
  if (v4)
  {
    v5 = v3;
    v6 = v2;
    v7 = v1;
    v8 = *(v0 + 16);
    v29 = v8;

    v9 = sub_1ABA967E4(v7, v6);
    v10 = v9[2];
    if (v10)
    {
      swift_beginAccess();
      v11 = 0;
      v12 = v9 + 5;
      while (v11 < v9[2])
      {
        v14 = *(v12 - 1);
        v13 = *v12;
        swift_beginAccess();
        v15 = *(v8 + 40);
        if (*(v15 + 16) && (v16 = sub_1ABA805B4(), v18 = sub_1ABA980D8(v16, v17), (v19 & 1) != 0))
        {
          v20 = *(*(v15 + 56) + 8 * v18);
          v29 = v20;
        }

        else
        {

          v28 = 0;
          v21 = sub_1ABA805B4();
          sub_1ABA9709C(v21, v22);
          v23 = *(v8 + 40);
          if (*(v23 + 16) && (v24 = sub_1ABA805B4(), v26 = sub_1ABA980D8(v24, v25), (v27 & 1) != 0))
          {
            v20 = *(*(v23 + 56) + 8 * v26);
          }

          else
          {
            v20 = sub_1ABA9814C(&v28, v14, v13, &v29);
          }

          v29 = v20;
        }

        v8 = v20;
        ++v11;
        v12 += 2;
        if (v10 == v11)
        {
          *(v20 + 48) = v5;
          *(v20 + 52) = 0;
          goto LABEL_15;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_15:
    }
  }
}

void *sub_1ABA967E4(uint64_t a1, unint64_t a2)
{
  v4 = sub_1ABF23D44();
  if (!v4)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v5 = v4;
  v6 = sub_1ABA96884();

  v7 = sub_1ABA96E60(&v9, v6 + 4, v5, a1, a2);

  if (v7 != v5)
  {
    __break(1u);
    return MEMORY[0x1E69E7CC0];
  }

  return v6;
}

void *sub_1ABA96884()
{
  sub_1ABAA1938();
  if (!v1)
  {
    return MEMORY[0x1E69E7CC0];
  }

  sub_1ABAA1070(v2, v3, v4, v5);
  v6 = sub_1ABAA21A8();
  sub_1ABA80590(v6);
  v6[2] = v0;
  v6[3] = v7;
  return v6;
}

uint64_t *sub_1ABA96910@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  a6 = a1;
  a7 = a2;

  return sub_1ABA93DC0(&a3);
}

uint64_t sub_1ABA96934()
{
  v2 = *(v0 - 304);
}

__n128 sub_1ABA96964()
{
  result = *&STACK[0xA40];
  v1 = *&STACK[0xA50];
  *&STACK[0xA70] = *&STACK[0xA40];
  *&STACK[0xA80] = v1;
  LOBYTE(STACK[0xA90]) = STACK[0xA60];
  return result;
}

void sub_1ABA96984()
{
  *v0 = v2;
  v0[1] = v3;
  v0[2] = v4;
  v0[3] = v1;
}

void sub_1ABA969A0()
{
  v3 = v1[15];
  v4 = v1[13];
  v5 = v1[10];
  v7 = v1[6];
  v6 = v1[7];
  v8 = v1[2];
  v9 = v1[3];
}

uint64_t sub_1ABA969E8()
{
  v3 = *(v1 + 16);
  result = v0;
  v5 = *(v2 - 176);
  return result;
}

void sub_1ABA96A1C()
{
  *(v0 - 160) = 0;
  *(v0 - 152) = 0;
  *(v0 - 144) = 0;
}

void *sub_1ABA96A6C(void *a1)
{

  return memcpy(a1, (v1 + 656), 0xA8uLL);
}

uint64_t sub_1ABA96A84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *(v10 - 264) = &a9 - v9;

  return type metadata accessor for CustomGraphActivityEvent(0);
}

void sub_1ABA96AAC()
{
  v1 = *(v0 - 224);
  v2 = *(v0 - 216);
  v3 = *(v0 - 208);
}

uint64_t sub_1ABA96AE8(_WORD *a1)
{
  *(v2 - 160) = v1;
  *a1 = 0;

  return sub_1ABF23724();
}

uint64_t sub_1ABA96B10@<X0>(uint64_t a1@<X8>)
{
  *(v1 + 16) = v2;
  *(v1 + 24) = a1;
  return v1 + 32;
}

uint64_t sub_1ABA96B24()
{

  return swift_beginAccess();
}

uint64_t sub_1ABA96B68(uint64_t a1)
{

  return sub_1ABA7B9B4(v1, 1, 1, a1);
}

uint64_t sub_1ABA96B88@<X0>(uint64_t a1@<X8>)
{
  *(v4 - 176) = v3;
  *(v4 - 168) = v2;
  *(v4 - 160) = v1;
  *(v4 - 152) = a1;
  return v4 - 176;
}

uint64_t sub_1ABA96BDC()
{

  return swift_task_alloc();
}

void sub_1ABA96C10()
{
}

__n128 sub_1ABA96C28()
{
  result = *&STACK[0xB60];
  v1 = *&STACK[0xB70];
  *&STACK[0xB90] = *&STACK[0xB60];
  *&STACK[0xBA0] = v1;
  LOBYTE(STACK[0xBB0]) = STACK[0xB80];
  return result;
}

uint64_t sub_1ABA96C74()
{
  v2 = v0[13];
  v3 = v0[10];
  v5 = v0[6];
  v4 = v0[7];
  v6 = v0[15];

  return sub_1ABBF0F28(v6);
}

uint64_t sub_1ABA96CC8()
{

  return sub_1ABAA8FA8(v1, v0);
}

uint64_t sub_1ABA96CEC()
{
  result = *(v0 - 104);
  v2 = *(v0 - 96);
  v3 = *(v0 - 88);
  v4 = *(v0 - 72);
  return result;
}

uint64_t sub_1ABA96D18()
{
  v2 = v0[31];
  v3 = v0[29];
  v4 = v0[26];
  v6 = v0[21];
  v5 = v0[22];
  v7 = v0[20];
  v8 = v0[14];
}

uint64_t sub_1ABA96D40(__n128 a1, __n128 a2, __n128 a3, __n128 a4)
{
  *(v4 - 199) = a4;
  *(v4 - 224) = a2;
  *(v4 - 208) = a3;
  *(v4 - 240) = a1;

  return sub_1ABD1927C(v4 - 240, v4 - 304);
}

void sub_1ABA96D64()
{

  sub_1ABADB5D8();
}

uint64_t sub_1ABA96DA4()
{

  return sub_1ABF23C44();
}

void sub_1ABA96DCC()
{
  v2 = *(v0 + 768);
  v3 = *(v1 + 24);
  v4 = *(v1 + 16) + 1;
}

uint64_t sub_1ABA96DF4()
{

  return sub_1ABF237A4();
}

uint64_t sub_1ABA96E10@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  *a1 = a2;
  *(a1 + 8) = v2;
  *(a1 + 16) = 1;

  return swift_willThrow();
}

uint64_t sub_1ABA96E30(uint64_t result, char a2)
{
  *v2 = result;
  *(v2 + 8) = a2 & 1;
  return result;
}

uint64_t sub_1ABA96E60(uint64_t result, uint64_t *a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v5 = result;
  v6 = HIBYTE(a5) & 0xF;
  if ((a5 & 0x2000000000000000) == 0)
  {
    v6 = a4 & 0xFFFFFFFFFFFFLL;
  }

  v13 = a4;
  v14 = a5;
  *&v15 = 0;
  *(&v15 + 1) = v6;
  *&v7 = 0;
  *(&v7 + 1) = v6;
  if (!a2)
  {
    v10 = 0;
LABEL_15:
    *v5 = a4;
    *(v5 + 8) = a5;
    *(v5 + 16) = v7;
    return v10;
  }

  if (!a3)
  {
    v10 = 0;
    goto LABEL_15;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v9 = a2;
    v10 = 0;
    while (1)
    {
      v11 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      result = sub_1ABF23DE4();
      if (!v12)
      {
        a4 = v13;
        a5 = v14;
        goto LABEL_14;
      }

      *v9 = result;
      v9[1] = v12;
      v9 += 2;
      ++v10;
      if (v11 == a3)
      {
        a4 = v13;
        a5 = v14;
        v10 = a3;
LABEL_14:
        v7 = v15;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

__n128 sub_1ABA96F80()
{
  result = *&STACK[0x350];
  v1 = *&STACK[0x360];
  *&STACK[0x380] = *&STACK[0x350];
  *&STACK[0x390] = v1;
  LOBYTE(STACK[0x3A0]) = STACK[0x370];
  return result;
}

uint64_t sub_1ABA96FA8()
{

  return swift_allocObject();
}

uint64_t sub_1ABA96FC0()
{

  return swift_bridgeObjectRetain_n();
}

uint64_t sub_1ABA96FF0()
{

  return sub_1ABF23FE4();
}

uint64_t sub_1ABA9703C(uint64_t a1)
{
  *(v1 + 80) = a1;

  return type metadata accessor for CustomGraphActivityEvent(0);
}

void sub_1ABA9706C()
{
  *(v1 + 240) = v2;
  *(v0 + 25) = *(v0 + 146);
  *(v1 + 244) = *(v0 + 149);
}

uint64_t *sub_1ABA97084@<X0>(uint64_t a1@<X8>)
{
  *(v1 - 144) = a1;

  return sub_1ABA93DC0((v1 - 176));
}

uint64_t sub_1ABA9709C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  if (!*(*(v2 + 40) + 16) || (result = sub_1ABA980D8(a1, a2), (v6 & 1) == 0))
  {
    sub_1ABAD219C(&qword_1EB4D1190, &qword_1ABF33318);
    swift_allocObject();

    sub_1ABA962E4(a1, a2);
    swift_beginAccess();
    v7 = *(v2 + 40);
    swift_isUniquelyReferenced_nonNull_native();
    v8 = *(v2 + 40);
    sub_1ABA971A0();
    *(v2 + 40) = v8;
    return swift_endAccess();
  }

  return result;
}

uint64_t sub_1ABA971A0()
{
  sub_1ABAA00E4();
  sub_1ABA8064C();
  sub_1ABAA2B74();
  v5 = sub_1ABAFF60C(v2, v3, v4, sub_1ABA955E8);
  sub_1ABA7D0D8(v5, v6);
  if (v7)
  {
    __break(1u);
LABEL_13:
    result = sub_1ABF25104();
    __break(1u);
    return result;
  }

  sub_1ABA9771C();
  sub_1ABAD219C(&qword_1EB4D1F78, &qword_1ABF35168);
  v8 = sub_1ABA83EEC();
  if (v8)
  {
    v12 = *v0;
    sub_1ABAA2B74();
    v13 = sub_1ABA7D0EC();
    sub_1ABA94F58(v13, v14, v15, v16);
    sub_1ABA814EC();
    if (!v17)
    {
      goto LABEL_13;
    }
  }

  if (v1)
  {
    sub_1ABA826F0(v8, v9, v10, v11, *v0);
    sub_1ABA82A00();
  }

  else
  {
    v20 = sub_1ABA8E60C();
    sub_1ABA98104(v20, v21, v22, v23, v24);
    sub_1ABA82A00();
  }
}

void *sub_1ABA972A4(void *a1, const void *a2)
{

  return memmove(a1, a2, 88 * v2);
}

__n128 sub_1ABA972E0()
{
  result = *&STACK[0x260];
  v1 = *&STACK[0x270];
  *&STACK[0x290] = *&STACK[0x260];
  *&STACK[0x2A0] = v1;
  LOBYTE(STACK[0x2B0]) = STACK[0x280];
  return result;
}

void sub_1ABA97310(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t sub_1ABA97360()
{

  return swift_task_create();
}

void sub_1ABA97380(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v7 + 176) = a4;
  *(a4 + 16) = v4;
  *(a4 + 8 * v6 + 32) = v5 | 0x4000000000000000;
  *(v7 + 96) = a4;
}

uint64_t sub_1ABA973C8()
{

  return sub_1ABDEFE94(v1, v0, 1, v2);
}

uint64_t sub_1ABA97424()
{

  return sub_1ABF24C64();
}

uint64_t sub_1ABA97444()
{

  return swift_unknownObjectRelease();
}

uint64_t sub_1ABA97464()
{

  return sub_1ABF24D94();
}

uint64_t sub_1ABA974A0()
{

  return sub_1ABF24D94();
}

__n128 sub_1ABA974C0()
{
  result = *&STACK[0x950];
  v1 = *&STACK[0x960];
  *&STACK[0x980] = *&STACK[0x950];
  *&STACK[0x990] = v1;
  LOBYTE(STACK[0x9A0]) = STACK[0x970];
  return result;
}

void sub_1ABA9754C()
{
  v4 = *v0;
  v5 = *v1;
  v6 = *v2;
  v7 = *(v3 - 144);
}

uint64_t sub_1ABA97584()
{

  return sub_1ABF21EB4();
}

void sub_1ABA975B0(unint64_t a1@<X8>, __n128 a2@<Q0>)
{
  v4[2] = a2;
  v4[3].n128_u64[0] = a1;
  v4[3].n128_u64[1] = v2;
  v4[4].n128_u8[0] = v3;
}

uint64_t sub_1ABA975E0()
{
  sub_1ABA84B54((v0 - 120));
  result = sub_1ABA7B9B4(*(v0 - 176), 1, 1, *(v0 - 152));
  v2 = *(v0 - 192);
  v3 = *(v0 - 184);
  return result;
}

unint64_t sub_1ABA97628@<X0>(uint64_t a1@<X8>)
{
  *(v2 - 96) = 0xD00000000000002DLL;
  *(v2 - 88) = (a1 - 32) | 0x8000000000000000;
  *(v2 - 72) = v1;

  return EntityIdentifier.description.getter();
}

uint64_t sub_1ABA9768C()
{
}

uint64_t sub_1ABA97750()
{
  v2 = *(v0 - 416);
}

__n128 sub_1ABA97768()
{
  result = *&STACK[0xB90];
  v1 = *&STACK[0xBA0];
  *&STACK[0xBC0] = *&STACK[0xB90];
  *&STACK[0xBD0] = v1;
  LOBYTE(STACK[0xBE0]) = STACK[0xBB0];
  return result;
}

uint64_t sub_1ABA977A0()
{
  v1 = *(*(v0 - 128) + 16);
  result = *(v0 - 136);
  v3 = *(v0 - 96);
  return result;
}

uint64_t sub_1ABA977C0()
{

  return sub_1ABF23754();
}

void sub_1ABA977D8(uint64_t a1@<X8>)
{
  v1[29] = a1;
  v1[30] = v2;
  v1[28] = v2;
  v4 = *(v3 + a1 + 32);
  v5 = *(v2 + 16);
}

void sub_1ABA97818()
{

  EntityClass.ancestorClassesSet.getter();
}

uint64_t sub_1ABA97870()
{
  v1 = v0[21];
  result = v0[13];
  v3 = v0[9];
  v4 = v0[5];
  v5 = *(v0[10] + 8);
  return result;
}

uint64_t sub_1ABA97898()
{
  v2 = *(v0 - 136);

  return sub_1ABD1927C(v0 - 160, v0 - 224);
}

uint64_t sub_1ABA97918()
{

  return swift_dynamicCast();
}

uint64_t sub_1ABA9793C()
{

  return sub_1ABF237A4();
}

uint64_t sub_1ABA97958(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, unsigned __int8 a12)
{

  return sub_1ABB344F0(a9, a10, a11, a12);
}

uint64_t sub_1ABA979CC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  if (*(*v3 + 24) > a1)
  {
    v5 = *(*v3 + 24);
  }

  return sub_1ABAD219C(a2, a3);
}

unint64_t sub_1ABA97A04()
{

  return sub_1ABB32C5C();
}

uint64_t sub_1ABA97A38@<X0>(uint64_t a1@<X8>)
{
  *v1 = v2;
  v1[1] = v4;
  v1[2] = ~v5;
  v1[3] = a1;
  v1[4] = v6;
  return v3;
}

__n128 sub_1ABA97A50()
{
  result = *&STACK[0x710];
  v1 = *&STACK[0x720];
  *&STACK[0x740] = *&STACK[0x710];
  *&STACK[0x750] = v1;
  LOBYTE(STACK[0x760]) = STACK[0x730];
  return result;
}

__n128 sub_1ABA97A70()
{
  *(v0 + 4608) = *(v0 + 4560);
  result = *(v0 + 4576);
  *(v0 + 4624) = result;
  return result;
}

id sub_1ABA97A84()
{
  *(v1 + 4) = v2;
  *(v1 + 12) = 2112;

  return v0;
}

uint64_t sub_1ABA97AB0()
{

  return swift_once();
}

id sub_1ABA97B18()
{

  return [v0 (v1 + 2424)];
}

uint64_t sub_1ABA97B48()
{

  return sub_1ABF21EB4();
}

id sub_1ABA97B70(uint64_t a1)
{
  *(v3 - 280) = a1;
  v5 = v2 + *(v1 + 52);
  v6 = *(v5 + 8);
  *(v3 - 304) = v5;
  v7 = *(v5 + 16);

  return sub_1ABC5021C(v6, v7);
}

void *sub_1ABA97C24()
{
  *(v0 + 16) = v2;
  *(v1 + 152) = v0;

  return memcpy((v0 + 104 * v3 + 32), (v4 - 224), 0x62uLL);
}

void sub_1ABA97C60()
{

  JUMPOUT(0x1AC5A9410);
}

uint64_t sub_1ABA97C78()
{

  return sub_1ABF21FC4();
}

void sub_1ABA97CD4()
{
  *(v0 - 192) = 0;
  *(v0 - 184) = 0;
  *(v0 - 176) = 0;
}

char *sub_1ABA97D14()
{

  return sub_1ABADDFFC(0, v0, 0);
}

uint64_t sub_1ABA97D50()
{

  return swift_unknownObjectRelease();
}

void *sub_1ABA97D70(void *a1)
{

  return memcpy(a1, (v1 + v2), 0x69uLL);
}

uint64_t sub_1ABA97D88()
{
  v2 = *(v0 - 208);

  return sub_1ABF24EC4();
}

uint64_t sub_1ABA97DD0()
{

  return sub_1ABAFC6F0(v3, v2, v0, v1);
}

uint64_t sub_1ABA97E30()
{

  return sub_1ABF22784();
}

void *sub_1ABA97E7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t __dst, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{

  return memcpy(&__dst, &__src, 0x50uLL);
}

uint64_t sub_1ABA97EC0(uint64_t a1)
{
  v3 = (*(v1 + 56) + 16 * a1);
  v4 = *v3;
  v5 = v3[1];
}

void sub_1ABA97EFC()
{
  v2 = *(v0 - 408);
}

__n128 sub_1ABA97F20()
{
  result = *&STACK[0xBF0];
  v1 = *&STACK[0xC00];
  *&STACK[0xC20] = *&STACK[0xBF0];
  *&STACK[0xC30] = v1;
  LOBYTE(STACK[0xC40]) = STACK[0xC10];
  return result;
}

__n128 sub_1ABA97F4C()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 50);
  v3 = *(v0 + 88);
  v4 = *(v0 + 90);
  v6 = *(v0 + 32);
  v7 = *(v0 + 16);
  result = *(v0 + 72);
  v8 = *(v0 + 56);
  return result;
}

void sub_1ABA97F80(uint64_t a1@<X8>)
{
  *v2 = a1;
  *(v2 + 8) = v1;
  *(v2 + 16) = 2;
  *(v2 + 24) = v3;
}

uint64_t sub_1ABA97F94()
{
  result = v0[51];
  v2 = v0[52];
  v3 = v0[53];
  v4 = v0[54];
  v5 = v0[55];
  return result;
}

uint64_t sub_1ABA97FA8()
{

  return swift_deallocPartialClassInstance();
}

uint64_t sub_1ABA97FE0()
{

  return sub_1ABF24C64();
}

uint64_t sub_1ABA98014@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + a1);
  result = *v3;
  LOBYTE(v3) = *(v3 + 8);
  *(v2 - 104) = result;
  *(v2 - 96) = v3;
  return result;
}

uint64_t sub_1ABA9805C()
{
  v2 = *(v0 - 160);

  return sub_1ABAE2EC4();
}

uint64_t sub_1ABA980A8()
{
  v2 = *(v0 - 200);

  return sub_1ABF24D94();
}

unint64_t sub_1ABA98104(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a5[7] + 8 * result) = a4;
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

uint64_t sub_1ABA9814C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v5 = *a1;
  if (v5)
  {
    v6 = v5;
  }

  else
  {
    swift_beginAccess();
    v10 = *a4;
    sub_1ABAD219C(&qword_1EB4D1190, &qword_1ABF33318);
    swift_allocObject();

    v6 = sub_1ABA962E4(a2, a3);
    swift_beginAccess();
    v11 = *a1;
    *a1 = v6;
  }

  return v6;
}

uint64_t InferenceClient.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  sub_1ABA7D544();

  return swift_deallocClassInstance();
}

void static EntityPredicate.teamIdentifier.getter()
{
  if (_Records_GDEntityPredicate_records)
  {
    v0 = sub_1ABA91D48(_Records_GDEntityPredicate_records[1584], *(_Records_GDEntityPredicate_records + 397), *(_Records_GDEntityPredicate_records + 398), v10);
    sub_1ABA8F1F8(v0, v1, v2, v3, v4, v5, v6, v7, v9, v8, v10[0], v10[1], v11);
  }

  else
  {
    __break(1u);
  }
}

void static EntityPredicate.qid.getter()
{
  if (_Records_GDEntityPredicate_records)
  {
    v0 = sub_1ABA91D48(_Records_GDEntityPredicate_records[1440], *(_Records_GDEntityPredicate_records + 361), *(_Records_GDEntityPredicate_records + 362), v10);
    sub_1ABA8F1F8(v0, v1, v2, v3, v4, v5, v6, v7, v9, v8, v10[0], v10[1], v11);
  }

  else
  {
    __break(1u);
  }
}

void static EntityPredicate.category.getter()
{
  if (_Records_GDEntityPredicate_records)
  {
    v0 = sub_1ABA91D48(_Records_GDEntityPredicate_records[1152], *(_Records_GDEntityPredicate_records + 289), *(_Records_GDEntityPredicate_records + 290), v10);
    sub_1ABA8F1F8(v0, v1, v2, v3, v4, v5, v6, v7, v9, v8, v10[0], v10[1], v11);
  }

  else
  {
    __break(1u);
  }
}

void static EntityPredicate.phoneNumber.getter()
{
  if (_Records_GDEntityPredicate_records)
  {
    v0 = sub_1ABA91D48(_Records_GDEntityPredicate_records[408], *(_Records_GDEntityPredicate_records + 103), *(_Records_GDEntityPredicate_records + 104), v10);
    sub_1ABA8F1F8(v0, v1, v2, v3, v4, v5, v6, v7, v9, v8, v10[0], v10[1], v11);
  }

  else
  {
    __break(1u);
  }
}

void static EntityPredicate.emailAddress.getter()
{
  if (_Records_GDEntityPredicate_records)
  {
    v0 = sub_1ABA91D48(_Records_GDEntityPredicate_records[420], *(_Records_GDEntityPredicate_records + 106), *(_Records_GDEntityPredicate_records + 107), v10);
    sub_1ABA8F1F8(v0, v1, v2, v3, v4, v5, v6, v7, v9, v8, v10[0], v10[1], v11);
  }

  else
  {
    __break(1u);
  }
}

void static EntityPredicate.namePrefix.getter()
{
  if (_Records_GDEntityPredicate_records)
  {
    v0 = sub_1ABA91D48(_Records_GDEntityPredicate_records[720], *(_Records_GDEntityPredicate_records + 181), *(_Records_GDEntityPredicate_records + 182), v10);
    sub_1ABA8F1F8(v0, v1, v2, v3, v4, v5, v6, v7, v9, v8, v10[0], v10[1], v11);
  }

  else
  {
    __break(1u);
  }
}

void static EntityPredicate.firstName.getter()
{
  if (_Records_GDEntityPredicate_records)
  {
    v0 = sub_1ABA91D48(_Records_GDEntityPredicate_records[732], *(_Records_GDEntityPredicate_records + 184), *(_Records_GDEntityPredicate_records + 185), v10);
    sub_1ABA8F1F8(v0, v1, v2, v3, v4, v5, v6, v7, v9, v8, v10[0], v10[1], v11);
  }

  else
  {
    __break(1u);
  }
}

void static EntityPredicate.middleName.getter()
{
  if (_Records_GDEntityPredicate_records)
  {
    v0 = sub_1ABA91D48(_Records_GDEntityPredicate_records[744], *(_Records_GDEntityPredicate_records + 187), *(_Records_GDEntityPredicate_records + 188), v10);
    sub_1ABA8F1F8(v0, v1, v2, v3, v4, v5, v6, v7, v9, v8, v10[0], v10[1], v11);
  }

  else
  {
    __break(1u);
  }
}

void static EntityPredicate.familyName.getter()
{
  if (_Records_GDEntityPredicate_records)
  {
    v0 = sub_1ABA91D48(_Records_GDEntityPredicate_records[756], *(_Records_GDEntityPredicate_records + 190), *(_Records_GDEntityPredicate_records + 191), v10);
    sub_1ABA8F1F8(v0, v1, v2, v3, v4, v5, v6, v7, v9, v8, v10[0], v10[1], v11);
  }

  else
  {
    __break(1u);
  }
}

void static EntityPredicate.nameSuffix.getter()
{
  if (_Records_GDEntityPredicate_records)
  {
    v0 = sub_1ABA91D48(_Records_GDEntityPredicate_records[768], *(_Records_GDEntityPredicate_records + 193), *(_Records_GDEntityPredicate_records + 194), v10);
    sub_1ABA8F1F8(v0, v1, v2, v3, v4, v5, v6, v7, v9, v8, v10[0], v10[1], v11);
  }

  else
  {
    __break(1u);
  }
}

void static EntityPredicate.isCurrentUser.getter()
{
  if (_Records_GDEntityPredicate_records)
  {
    v0 = sub_1ABA91D48(_Records_GDEntityPredicate_records[312], *(_Records_GDEntityPredicate_records + 79), *(_Records_GDEntityPredicate_records + 80), v10);
    sub_1ABA8F1F8(v0, v1, v2, v3, v4, v5, v6, v7, v9, v8, v10[0], v10[1], v11);
  }

  else
  {
    __break(1u);
  }
}

void static EntityPredicate.isInferredDeviceUser.getter()
{
  if (_Records_GDEntityPredicate_records)
  {
    v0 = sub_1ABA91D48(_Records_GDEntityPredicate_records[2568], *(_Records_GDEntityPredicate_records + 643), *(_Records_GDEntityPredicate_records + 644), v10);
    sub_1ABA8F1F8(v0, v1, v2, v3, v4, v5, v6, v7, v9, v8, v10[0], v10[1], v11);
  }

  else
  {
    __break(1u);
  }
}

uint64_t InferenceClient.clientForServiceInstance<A>(with:interface:)(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  v6 = a1[2];
  v5 = a1[3];
  v8 = a1[4];
  v7 = a1[5];
  type metadata accessor for InferenceServiceInstanceClient();
  v9 = type metadata accessor for LocalInferenceServiceInstanceClient();
  v15[0] = v3;
  v15[1] = v4;
  v15[2] = v6;
  v15[3] = v5;
  v15[4] = v8;
  v15[5] = v7;
  v16 = *(v2 + 16);
  v10 = type metadata accessor for InferenceServer();
  v15[0] = sub_1ABA988DC(v15, a2, &v16, v10, &off_1F2088158);
  WitnessTable = swift_getWitnessTable();
  v12 = sub_1ABA989C0(v15, v9, WitnessTable);

  return v12;
}

uint64_t sub_1ABA988DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = swift_allocObject();
  sub_1ABA98944(a1, v10, a3, a4, a5);
  return v9;
}

uint64_t sub_1ABA98944(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *(a1 + 16);
  v9 = *(a1 + 32);
  v10 = *(a1 + 40);
  *(v5 + 16) = *a1;
  *(v5 + 32) = v8;
  *(v5 + 48) = v9;
  *(v5 + 56) = v10;
  *(v5 + 88) = a4;
  *(v5 + 96) = a5;
  v11 = sub_1ABA93DC0((v5 + 64));
  (*(*(a4 - 8) + 32))(v11, a3, a4);
  return v5;
}

uint64_t sub_1ABA989C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  sub_1ABA98A18(a1, a2, a3);
  return v6;
}

uint64_t *sub_1ABA98A18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[5] = a2;
  v3[6] = a3;
  sub_1ABA93DC0(v3 + 2);
  sub_1ABA7D08C(a2);
  (*(v5 + 32))();
  return v3;
}

uint64_t sub_1ABA98B2C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void static EntityClass.entity.getter()
{
  if (_Records_GDEntityClass_records)
  {
    v0 = sub_1ABA8A714(_Records_GDEntityClass_records);
    v3 = sub_1ABA8882C(v0, v1, v2, v13);
    sub_1ABA8F1BC(v3, v4, v5, v6, v7, v8, v9, v10, v12, v11, v13[0], v13[1], v14);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1ABA98BD4(uint64_t a1)
{
  v2 = sub_1ABA98C20();

  return MEMORY[0x1EEE09B08](a1, v2);
}

unint64_t sub_1ABA98C20()
{
  result = qword_1ED86B7B0;
  if (!qword_1ED86B7B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED86B7B0);
  }

  return result;
}

uint64_t sub_1ABA98C74(uint64_t a1, uint64_t a2)
{
  v4 = sub_1ABA98CE4();
  v5 = sub_1ABA98D38();
  v6 = MEMORY[0x1E69A0138];

  return MEMORY[0x1EEE09B38](a1, a2, v4, v5, v6);
}

unint64_t sub_1ABA98CE4()
{
  result = qword_1ED86B7A8;
  if (!qword_1ED86B7A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED86B7A8);
  }

  return result;
}

unint64_t sub_1ABA98D38()
{
  result = qword_1ED86B7A0;
  if (!qword_1ED86B7A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED86B7A0);
  }

  return result;
}

uint64_t sub_1ABA98D8C@<X0>(uint64_t *a1@<X8>)
{
  result = EntityClass.name.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t EntityClass.name.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t sub_1ABA98DE4(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 33))
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

id sub_1ABA98E48(void *a1, void **a2)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v3 = *a2;

  return v3;
}

uint64_t sub_1ABA98E94(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t StaticKnowledgeAsset.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_1ABAD219C(&qword_1EB4DB490, &qword_1ABF6E3E0);
  sub_1ABA7BB64(v5);
  v7 = *(v6 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v8);
  v9 = a1[4];
  sub_1ABA93E20(a1, a1[3]);
  sub_1ABA991D8();
  sub_1ABF252C4();
  if (v2)
  {
    return sub_1ABA84B54(a1);
  }

  sub_1ABA90BAC();
  v10 = sub_1ABF24E14();
  v12 = v11;
  LOBYTE(v17) = 1;
  sub_1ABA90BAC();
  v16 = sub_1ABF24E54();
  sub_1ABAD219C(&qword_1EB4DB458, &dword_1ABF6E3C0);
  sub_1ABA99A18(&unk_1EB4CE720, sub_1ABE70800);
  sub_1ABA81CD8();
  sub_1ABAD219C(&qword_1EB4DB470, &qword_1ABF6E3C8);
  sub_1ABA9A1D0(&qword_1EB4CE758, sub_1ABE70854);
  sub_1ABA81CD8();
  v14 = sub_1ABA7ABFC();
  v15(v14);
  *a2 = v10;
  a2[1] = v12;
  a2[2] = v16;
  a2[3] = v17;
  a2[4] = v17;

  sub_1ABA84B54(a1);
}

void __swiftcall InferenceServiceInstanceQualifiedID.init(service:asset:domain:)(IntelligencePlatform::InferenceServiceInstanceQualifiedID *__return_ptr retstr, Swift::String service, Swift::String asset, Swift::String domain)
{
  retstr->serviceInstanceId = service;
  retstr->assetRegistryAssetId = asset;
  retstr->assetRegistryAssetDomain = domain;
}

unint64_t sub_1ABA991D8()
{
  result = qword_1EB4CF078;
  if (!qword_1EB4CF078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CF078);
  }

  return result;
}

double sub_1ABA9923C()
{
  *(v0 + 32) = 0;
  result = 0.0;
  *v0 = 0u;
  *(v0 + 16) = 0u;
  return result;
}

uint64_t sub_1ABA9924C()
{

  return sub_1ABF24C64();
}

uint64_t sub_1ABA992A8()
{

  return swift_allocError();
}

__n128 sub_1ABA9930C()
{
  result = *&STACK[0x5F0];
  v1 = *&STACK[0x600];
  *&STACK[0x620] = *&STACK[0x5F0];
  *&STACK[0x630] = v1;
  LOBYTE(STACK[0x640]) = STACK[0x610];
  return result;
}

__n128 sub_1ABA99338()
{
  *(v0 + 4320) = *(v0 + 4272);
  result = *(v0 + 4288);
  *(v0 + 4336) = result;
  return result;
}

uint64_t sub_1ABA9934C()
{

  return swift_once();
}

uint64_t sub_1ABA9937C(uint64_t a1)
{
  *(a1 + 8) = v1;
  v4 = v3 + *v3;
  return v2;
}

uint64_t sub_1ABA9939C()
{

  return sub_1ABF237F4();
}

uint64_t sub_1ABA993BC(uint64_t a1)
{
  *(v1 + 112) = a1;
  v3 = *(a1 - 8);
  return a1 - 8;
}

uint64_t sub_1ABA993E0()
{

  return swift_once();
}

uint64_t sub_1ABA99474()
{
  result = *(v0 - 256);
  v3 = *(v1 - 280);
  return result;
}

uint64_t sub_1ABA99510()
{
}

uint64_t sub_1ABA99528()
{

  return sub_1ABF21FA4();
}

__n128 sub_1ABA9954C()
{
  result = *(v0 - 128);
  v2 = *(v0 - 112);
  v3 = *(v0 - 104);
  v4 = *(v0 - 96);
  return result;
}

void sub_1ABA995C4()
{
  v0[2] = v1 + 1;
  v3 = *(v2 + v0[6]);
  v4 = *(v3 + 16);
  v0[11] = v3;
  v0[12] = v4;
}

void sub_1ABA995E8()
{
  *(v0 - 296) = 0;
  *(v0 - 232) = 0;
  *(v0 - 224) = 0;
  *(v0 - 216) = 0;
}

uint64_t sub_1ABA99600()
{

  return sub_1ABF218B4();
}

uint64_t sub_1ABA99694()
{

  return sub_1ABF24C54();
}

uint64_t sub_1ABA996DC()
{
  v2 = (*(v0 + 80) + 32) & ~*(v0 + 80);

  return swift_allocObject();
}

void sub_1ABA99728()
{
  *(v0 - 136) = 0;
  *(v0 - 128) = 0;
  *(v0 - 120) = 0;
  *(v0 - 112) = 0;
  *(v0 - 104) = 0;
  *(v0 - 96) = 0;
}

void sub_1ABA99744(uint64_t a1@<X8>)
{
  v3 = *(v2 - 112);
  *v3 = a1;
  *(v3 + 8) = v1;
}

uint64_t sub_1ABA99758()
{

  return sub_1ABF24E64();
}

uint64_t sub_1ABA99784(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{

  return sub_1ABAB47C4(a1, a2, a3);
}

uint64_t sub_1ABA997A8(unint64_t *a1)
{

  return sub_1ABC3A944(a1);
}

uint64_t sub_1ABA997CC()
{

  return sub_1ABF22784();
}

uint64_t sub_1ABA9980C(uint64_t a1)
{

  return sub_1ABA7B9B4(a1, 1, 1, v1);
}

uint64_t sub_1ABA99834()
{

  return sub_1ABED25C4();
}

uint64_t sub_1ABA9988C(char a1)
{
  result = 1701667182;
  switch(a1)
  {
    case 1:
      result = 0x6E6F6973726576;
      break;
    case 2:
      result = 0x73656C70697274;
      break;
    case 3:
      result = 0x6E456C61626F6C67;
      break;
    default:
      return result;
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for StaticKnowledgeAsset.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x1ABA999F0);
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

uint64_t sub_1ABA99A18(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1ABAE2850(&qword_1EB4DB458, &dword_1ABF6E3C0);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AssetRegistryAssetLocation.TrialAsset.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t StaticKnowledgeAssetTriple.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = sub_1ABAD219C(&qword_1EB4DB448, &qword_1ABF6E3A8);
  sub_1ABA7BB64(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v31 - v11;
  v13 = a1[4];
  sub_1ABA93E20(a1, a1[3]);
  sub_1ABA99EE8();
  sub_1ABF252C4();
  if (v2)
  {
    return sub_1ABA84B54(a1);
  }

  LOBYTE(v38[0]) = 0;
  sub_1ABF24E34();
  v15 = v14;
  sub_1ABA7E060(1);
  v16 = sub_1ABF24E14();
  v18 = v17;
  sub_1ABA7E060(2);
  v34 = sub_1ABF24E14();
  v36 = v19;
  sub_1ABA7E060(3);
  v33 = sub_1ABF24DB4();
  v32 = v16;
  v35 = v20;
  sub_1ABA7E060(4);
  v21 = sub_1ABF24DB4();
  v23 = v22;
  v31 = v21;
  v39 = 5;
  v24 = sub_1ABF24E14();
  v25 = v12;
  v27 = v26;
  (*(v7 + 8))(v25, v5);
  __src[0] = v15;
  v28 = v32;
  __src[1] = v32;
  __src[2] = v18;
  __src[3] = v34;
  __src[4] = v36;
  __src[5] = v33;
  v29 = v35;
  __src[6] = v35;
  __src[7] = v31;
  __src[8] = v23;
  __src[9] = v24;
  __src[10] = v27;
  memcpy(a2, __src, 0x58uLL);
  sub_1ABA9A118(__src, v38);
  sub_1ABA84B54(a1);
  v38[0] = v15;
  v38[1] = v28;
  v38[2] = v18;
  v38[3] = v34;
  v38[4] = v36;
  v38[5] = v33;
  v38[6] = v29;
  v38[7] = v31;
  v38[8] = v23;
  v38[9] = v24;
  v38[10] = v27;
  return sub_1ABA9A174(v38);
}

unint64_t sub_1ABA99EE8()
{
  result = qword_1EB4CED60;
  if (!qword_1EB4CED60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CED60);
  }

  return result;
}

unint64_t sub_1ABA99F44(char a1)
{
  result = 0x6E656469666E6F63;
  switch(a1)
  {
    case 1:
      result = 0x7463656A626FLL;
      break;
    case 2:
      result = 0x7461636964657270;
      break;
    case 3:
      result = 0x6E6F6974616C6572;
      break;
    case 4:
      result = 0xD000000000000015;
      break;
    case 5:
      result = 0x7463656A627573;
      break;
    default:
      return result;
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for StaticKnowledgeAssetTriple.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
        JUMPOUT(0x1ABA9A0F0);
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
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1ABA9A1D0(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1ABAE2850(&qword_1EB4DB470, &qword_1ABF6E3C8);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1ABA9A290(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v9 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);

  return sub_1ABB0A858(va1, va);
}

uint64_t sub_1ABA9A2C4()
{
  *(v0 - 136) = *(v0 - 336);
  *(v0 - 128) = *(v0 - 324);
  return 0;
}

__n128 sub_1ABA9A318()
{
  result = *&STACK[0x680];
  v1 = *&STACK[0x690];
  *&STACK[0x6B0] = *&STACK[0x680];
  *&STACK[0x6C0] = v1;
  LOBYTE(STACK[0x6D0]) = STACK[0x6A0];
  return result;
}

__n128 sub_1ABA9A338()
{
  *(v0 + 4464) = *(v0 + 4416);
  result = *(v0 + 4432);
  *(v0 + 4480) = result;
  return result;
}

__n128 sub_1ABA9A34C()
{
  result = v1[416];
  *(v0 + 72) = result;
  v1[165].n128_u64[0] = v2;
  return result;
}

uint64_t sub_1ABA9A370()
{

  return swift_once();
}

uint64_t sub_1ABA9A390()
{
  v2 = *(v0 - 248);

  return sub_1ABF24D94();
}

void sub_1ABA9A3E4(void *a1, uint64_t a2, uint64_t a3, os_signpost_id_t a4, const char *a5, const char *a6)
{

  _os_signpost_emit_with_name_impl(a1, v6, v7, a4, a5, a6, v8, 2u);
}

uint64_t sub_1ABA9A418@<X0>(int *a1@<X8>)
{
  v2 = a1[1];
  v4 = a1 + *a1;
}

uint64_t sub_1ABA9A43C()
{

  return sub_1ABF24F34();
}

uint64_t sub_1ABA9A498()
{
  v7 = v4 + *(v2 + 28) + *(v0 + 28);
  v8 = *(v5 - 152);

  return sub_1ABB2E9FC(v7, v8, v3, v1);
}

uint64_t sub_1ABA9A5B8()
{

  return sub_1ABAFEE5C(0, 0);
}

void sub_1ABA9A5D4(int a1@<W8>)
{
  *(v1 - 256) = a1;
  *(v2 - 340) = a1;
  *(v2 - 336) = a1;
  *(v2 - 332) = a1;
  *(v2 - 320) = a1;
}

uint64_t sub_1ABA9A600()
{

  return sub_1ABF25054();
}

uint64_t sub_1ABA9A62C()
{

  return sub_1ABF23BD4();
}

void sub_1ABA9A6A8()
{

  sub_1ABAD9790();
}

char *sub_1ABA9A6D0()
{

  return sub_1ABADDDDC(0, v0, 0);
}

uint64_t sub_1ABA9A6F0()
{

  return sub_1ABF252E4();
}

void sub_1ABA9A710()
{
  v2 = v0[19];
  v3 = v0[17];
  v4 = v0[14];
  v6 = v0[10];
  v5 = v0[11];

  sub_1ABE542F4();
}

uint64_t sub_1ABA9A7A4()
{

  return sub_1ABF24EC4();
}

uint64_t sub_1ABA9A7C8(uint64_t a1, _BYTE *a2)
{
  *a2 = 1;

  return swift_willThrow();
}

uint64_t sub_1ABA9A80C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
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

__n128 sub_1ABA9A84C(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t StaticKnowledgeAssetTriple.subject.getter()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 80);

  return sub_1ABA7D000();
}

uint64_t sub_1ABA9A88C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 34) = 1;
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

    *(result + 34) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void static EntityClass.livingBeingRelationship.getter()
{
  if (_Records_GDEntityClass_records)
  {
    v0 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0xD80), *(_Records_GDEntityClass_records + 0xD88), *(_Records_GDEntityClass_records + 0xD90), v10);
    sub_1ABA8F1BC(v0, v1, v2, v3, v4, v5, v6, v7, v9, v8, v10[0], v10[1], v11);
  }

  else
  {
    __break(1u);
  }
}

uint64_t EntityClass.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = *(v0 + 32);
  sub_1ABF24AB4();

  MEMORY[0x1AC5A9410](v3, v4);
  MEMORY[0x1AC5A9410](979659040, 0xE400000000000000);
  MEMORY[0x1AC5A9410](v1, v2);
  MEMORY[0x1AC5A9410](0x3A746E6920, 0xE500000000000000);
  v6 = sub_1ABF24FF4();
  MEMORY[0x1AC5A9410](v6);

  MEMORY[0x1AC5A9410](62, 0xE100000000000000);
  return 0x43797469746E453CLL;
}

uint64_t EntityIdentifier.init(entityClass:hash:isGraphIdentifier:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, unint64_t *a4@<X8>)
{
  v7 = *(a1 + 8);
  v8 = *(a1 + 24);
  v9 = *(a1 + 32);
  sub_1ABAD219C(&qword_1EB4D30A8, &qword_1ABF3F400);
  sub_1ABF23904();
  if (v14)
  {
    result = sub_1ABF24CD4();
    __break(1u);
  }

  else
  {
    if (a3)
    {
      v10 = 0x80000000000000;
    }

    else
    {
      v10 = 0;
    }

    v11 = sub_1ABF23914();
    (*(*(v11 - 8) + 8))(a2, v11);

    *a4 = v10 & 0xFF80000000000000 | (v9 << 56) | (v13 >> 9);
  }

  return result;
}

uint64_t *sub_1ABA9AB98@<X0>(uint64_t *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (result)
  {
    v3 = (a2 - result + 7) >= 0xF;
  }

  else
  {
    v3 = 0;
  }

  v4 = !v3;
  if (v3)
  {
    v5 = *result;
  }

  else
  {
    v5 = 0;
  }

  *a3 = v5;
  *(a3 + 8) = v4;
  return result;
}

uint64_t StaticKnowledgeAssetTriple.relationshipPredicate.getter()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);

  return sub_1ABA7D000();
}

uint64_t sub_1ABA9AC18(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 34))
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

uint64_t StaticKnowledgeAssetTriple.relationshipId.getter()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return sub_1ABA7D000();
}

uint64_t sub_1ABA9AC84(uint64_t result, uint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_23;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v16[0] = result;
    v16[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    v10 = _Records_GDEntityPredicate_records;
    v11 = _Records_GDEntityPredicate_predicateIds;
    v12 = _Records_GDEntityPredicate_records + 4;
    v13 = 280;
    while (1)
    {
      if (!--v13)
      {
        return 0;
      }

      if (!v10)
      {
        __break(1u);
LABEL_26:
        __break(1u);
LABEL_27:
        __break(1u);
LABEL_28:
        __break(1u);
        return result;
      }

      v14 = *v12;
      if (*v12 >= 3481)
      {
        break;
      }

      if (!v11)
      {
        goto LABEL_27;
      }

      v12 += 12;
      result = strcmp(&v11[v14], v16);
      if (!result)
      {
        result = *(v12 - 16);
        v15 = *(v12 - 2);
        return result;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if ((result & 0x1000000000000000) == 0)
  {
LABEL_23:
    sub_1ABAD219C(&qword_1EB4D3BC0, &unk_1ABF77750);
    result = sub_1ABF24A74();
    if (!v2)
    {
      return v16[2];
    }

    return result;
  }

  v3 = a2 & 0xFFFFFFFFFFFFFFFLL;
  v4 = _Records_GDEntityPredicate_records;
  v5 = _Records_GDEntityPredicate_predicateIds;
  v6 = _Records_GDEntityPredicate_records + 4;
  v7 = 280;
  while (--v7)
  {
    if (!v4)
    {
      goto LABEL_26;
    }

    v8 = *v6;
    if (*v6 >= 3481)
    {
      goto LABEL_22;
    }

    if (!v5)
    {
      goto LABEL_28;
    }

    v6 += 12;
    result = strcmp(&v5[v8], (v3 + 32));
    if (!result)
    {
      result = *(v6 - 16);
      v9 = *(v6 - 2);
      return result;
    }
  }

  return 0;
}

uint64_t _s20IntelligencePlatform15EntityPredicateV2idACSgSS_tcfC_0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = sub_1ABA9AC84(a1, a2);
  v6 = v5;
  v8 = v7;
  v10 = v9;

  if (v10)
  {
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
  }

  else
  {
    result = sub_1ABA91D48(v4, v6, v8, v17);
    v12 = v17[0];
    v13 = v17[1];
    v14 = v17[2];
    v15 = v17[3];
    v16 = v18;
  }

  *a3 = v12;
  *(a3 + 8) = v13;
  *(a3 + 16) = v14;
  *(a3 + 24) = v15;
  *(a3 + 32) = v16;
  return result;
}

void static EntityClass.localizedNameRelationshipType.getter()
{
  if (_Records_GDEntityClass_records)
  {
    v0 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0xAF8), *(_Records_GDEntityClass_records + 0xB00), *(_Records_GDEntityClass_records + 0xB08), v10);
    sub_1ABA8F1BC(v0, v1, v2, v3, v4, v5, v6, v7, v9, v8, v10[0], v10[1], v11);
  }

  else
  {
    __break(1u);
  }
}

void static EntityPredicate.localeIdentifier.getter()
{
  if (_Records_GDEntityPredicate_records)
  {
    v0 = sub_1ABA91D48(_Records_GDEntityPredicate_records[2244], *(_Records_GDEntityPredicate_records + 562), *(_Records_GDEntityPredicate_records + 563), v10);
    sub_1ABA8F1F8(v0, v1, v2, v3, v4, v5, v6, v7, v9, v8, v10[0], v10[1], v11);
  }

  else
  {
    __break(1u);
  }
}

void static EntityPredicate.alsoKnownAs.getter()
{
  if (_Records_GDEntityPredicate_records)
  {
    v0 = sub_1ABA91D48(_Records_GDEntityPredicate_records[36], *(_Records_GDEntityPredicate_records + 10), *(_Records_GDEntityPredicate_records + 11), v10);
    sub_1ABA8F1F8(v0, v1, v2, v3, v4, v5, v6, v7, v9, v8, v10[0], v10[1], v11);
  }

  else
  {
    __break(1u);
  }
}

uint64_t StaticKnowledgeAssetTriple.object.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return sub_1ABA7D000();
}

__n128 sub_1ABA9B0A4(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1ABA9B0B8(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return sub_1ABA7E270();
  }

  else
  {
    return sub_1ABA946D8();
  }
}

uint64_t sub_1ABA9B0E0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v6 = *(a1 + 32);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v8 = *(a2 + 32);
  return sub_1ABA9B0B8(v5, v7) & 1;
}

void static EntityPredicate.name.getter()
{
  if (_Records_GDEntityPredicate_records)
  {
    v0 = sub_1ABA91D48(_Records_GDEntityPredicate_records[12], *(_Records_GDEntityPredicate_records + 4), *(_Records_GDEntityPredicate_records + 5), v10);
    sub_1ABA8F1F8(v0, v1, v2, v3, v4, v5, v6, v7, v9, v8, v10[0], v10[1], v11);
  }

  else
  {
    __break(1u);
  }
}

void static EntityPredicate.hasLocalizedName.getter()
{
  if (_Records_GDEntityPredicate_records)
  {
    v0 = sub_1ABA91D48(_Records_GDEntityPredicate_records[2232], *(_Records_GDEntityPredicate_records + 559), *(_Records_GDEntityPredicate_records + 560), v10);
    sub_1ABA8F1F8(v0, v1, v2, v3, v4, v5, v6, v7, v9, v8, v10[0], v10[1], v11);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1ABA9B200(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1ABA9B278();
  v7 = sub_1ABA98D38();
  v8 = MEMORY[0x1E69A0138];

  return MEMORY[0x1EEE09B48](a1, a2, a3, v6, v7, v8);
}

unint64_t sub_1ABA9B278()
{
  result = qword_1ED86B798;
  if (!qword_1ED86B798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED86B798);
  }

  return result;
}

uint64_t sub_1ABA9B2E4@<X0>(uint64_t a1@<X8>, uint64_t *a2@<X0>)
{
  v3 = *a2;
  v2 = a2[1];
  return EntityClass.init(rawValue:)(a1);
}

uint64_t sub_1ABA9B2F0@<X0>(uint64_t (*a1)(void)@<X2>, uint64_t a2@<X8>)
{
  v3 = a1();
  v5 = v4;
  v7 = v6;
  v9 = v8;

  if (v9)
  {
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
  }

  else
  {
    result = sub_1ABA8882C(v3, v5, v7, v16);
    v11 = v16[0];
    v12 = v16[1];
    v13 = v16[2];
    v14 = v16[3];
    v15 = v17;
  }

  *a2 = v11;
  *(a2 + 8) = v12;
  *(a2 + 16) = v13;
  *(a2 + 24) = v14;
  *(a2 + 32) = v15;
  return result;
}

uint64_t sub_1ABA9B398(uint64_t result, uint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_23;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v16[0] = result;
    v16[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    v10 = _Records_GDEntityClass_records;
    v11 = _Records_GDEntityClass_labels;
    v12 = (_Records_GDEntityClass_records - 24);
    v13 = 182;
    while (1)
    {
      if (!--v13)
      {
        return 0;
      }

      if (!v10)
      {
        __break(1u);
LABEL_26:
        __break(1u);
LABEL_27:
        __break(1u);
LABEL_28:
        __break(1u);
        return result;
      }

      v14 = *(v12 + 5);
      if (v14 >= 3396)
      {
        break;
      }

      if (!v11)
      {
        goto LABEL_27;
      }

      v12 += 24;
      result = strcmp(&v11[v14], v16);
      if (!result)
      {
        result = *v12;
        v15 = *(v12 + 1);
        return result;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if ((result & 0x1000000000000000) == 0)
  {
LABEL_23:
    sub_1ABAD219C(&qword_1EB4D3B70, &unk_1ABF3F130);
    result = sub_1ABA7EFD4();
    if (!v2)
    {
      return v16[2];
    }

    return result;
  }

  v3 = a2 & 0xFFFFFFFFFFFFFFFLL;
  v4 = _Records_GDEntityClass_records;
  v5 = _Records_GDEntityClass_labels;
  v6 = (_Records_GDEntityClass_records - 24);
  v7 = 182;
  while (--v7)
  {
    if (!v4)
    {
      goto LABEL_26;
    }

    v8 = *(v6 + 5);
    if (v8 >= 3396)
    {
      goto LABEL_22;
    }

    if (!v5)
    {
      goto LABEL_28;
    }

    v6 += 24;
    result = strcmp(&v5[v8], (v3 + 32));
    if (!result)
    {
      result = *v6;
      v9 = *(v6 + 1);
      return result;
    }
  }

  return 0;
}

void static EntityPredicate.isA.getter()
{
  if (_Records_GDEntityPredicate_records)
  {
    v0 = sub_1ABA91D48(_Records_GDEntityPredicate_records[156], *(_Records_GDEntityPredicate_records + 40), *(_Records_GDEntityPredicate_records + 41), v10);
    sub_1ABA8F1F8(v0, v1, v2, v3, v4, v5, v6, v7, v9, v8, v10[0], v10[1], v11);
  }

  else
  {
    __break(1u);
  }
}

void EntityClass.ancestorClassesSet.getter()
{
  sub_1ABAA00E4();
  sub_1ABAA6308();
  MEMORY[0x1EEE9AC00](v4);
  sub_1ABA8A72C();
  if (!_Records_GDEntityClass_records)
  {
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    sub_1ABAA0230();
    static EntityClass.employmentRelationshipType.getter();
    sub_1ABA88CE8(v246, v247, v248, v249, v250, v251, v252, v253);
    sub_1ABA7BFC4();
    sub_1ABA88934(v254 + 3568);
    if (v0)
    {
      sub_1ABAD219C(&qword_1EB4D11A0, &qword_1ABF33328);
      v0 = sub_1ABA81670();
      sub_1ABA888E0(v0, xmmword_1ABF3BFC0);
      static EntityClass.membershipRelationshipType.getter();
      static EntityClass.relationshipType.getter();
      goto LABEL_42;
    }

    goto LABEL_49;
  }

  v5 = sub_1ABA8A714(_Records_GDEntityClass_records);
  v8 = sub_1ABA8882C(v5, v6, v7, v3 - 160);
  sub_1ABAB5FB8(v8, v9, v10, v11, v12, v13, v14, v15);
  sub_1ABB7E38C();
  if (v0)
  {
LABEL_3:
    v0 = sub_1ABAA6734(0);
    goto LABEL_34;
  }

  if (!_Records_GDEntityClass_records)
  {
    goto LABEL_44;
  }

  v16 = sub_1ABB7E070(_Records_GDEntityClass_records);
  sub_1ABA8882C(v16, v17, v18, v3 - 208);
  *&v19 = sub_1ABAB5FA0().n128_u64[0];
  sub_1ABB7E910(v20, v21, v22, v23, v24, v25, v26, v27, v19);
  sub_1ABB7E464();
  if (v0)
  {
    sub_1ABAD219C(&qword_1EB4D11A0, &qword_1ABF33328);
    v28 = sub_1ABA8E764();
    sub_1ABA8A780(v28, xmmword_1ABF34740);
    if (v29)
    {
      v30 = sub_1ABA8C944(v29);
      sub_1ABA8882C(v30, v31, v32, v3 - 208);
      v33 = *(v3 - 208);
      v34 = *(v3 - 192);
      v35 = *(v3 - 184);
LABEL_33:
      sub_1ABAA0D10(v34, v33);
      goto LABEL_34;
    }

    __break(1u);
    goto LABEL_48;
  }

  if (!_Records_GDEntityClass_records)
  {
LABEL_48:
    __break(1u);
LABEL_49:
    sub_1ABA89710();
    static EntityClass.locationRelationshipType.getter();
    sub_1ABA9DF58(v255, v256, v257, v258, v259, v260, v261, v262);
    sub_1ABA7BFC4();
    sub_1ABA88934(v263 + 3520);
    if (v0)
    {
LABEL_41:
      sub_1ABAD219C(&qword_1EB4D11A0, &qword_1ABF33328);
      v0 = sub_1ABA83790();
      sub_1ABA888E0(v0, xmmword_1ABF34060);
      static EntityClass.relationshipType.getter();
      goto LABEL_42;
    }

    sub_1ABA8926C();
    static EntityClass.timeZoneRelationshipType.getter();
    sub_1ABA9E0A0(v264, v265, v266, v267, v268, v269, v270, v271);
    sub_1ABA7BFC4();
    sub_1ABA88934(v272 + 3472);
LABEL_55:
    sub_1ABA88F2C();
    static EntityClass.quantityRelationshipType.getter();
    sub_1ABA9E1C0(v273, v274, v275, v276, v277, v278, v279, v280);
    sub_1ABA7BFC4();
    sub_1ABA88934(v281 + 3424);
    if ((v0 & 1) == 0)
    {
      sub_1ABA89008();
      static EntityClass.religionRelationshipType.getter();
      sub_1ABA9E300(v282, v283, v284, v285, v286, v287, v288, v289);
      sub_1ABA7BFC4();
      sub_1ABA88934(v290 + 3376);
      sub_1ABA8A75C();
      static EntityClass.person.getter();
      sub_1ABA88E90(v291, v292, v293, v294, v295, v296, v297, v298);
      sub_1ABA7BFC4();
      sub_1ABA88934(v299 + 3328);
      goto LABEL_63;
    }

    goto LABEL_41;
  }

  v36 = sub_1ABA8CA50(_Records_GDEntityClass_records);
  sub_1ABA8882C(v36, v37, v38, v3 - 256);
  *&v39 = sub_1ABAA63FC().n128_u64[0];
  sub_1ABB7E8F0(v40, v41, v42, v43, v44, v45, v46, v47, v39);
  sub_1ABB7E2FC();
  if (v0)
  {
    sub_1ABAD219C(&qword_1EB4D11A0, &qword_1ABF33328);
    v48 = sub_1ABA8E764();
    sub_1ABA8A780(v48, xmmword_1ABF34740);
    if (v49)
    {
      v50 = sub_1ABA8C944(v49);
      sub_1ABA8882C(v50, v51, v52, v3 - 256);
      v33 = *(v3 - 256);
      v34 = *(v3 - 240);
      v53 = *(v3 - 232);
      goto LABEL_33;
    }

    __break(1u);
    goto LABEL_52;
  }

  if (!_Records_GDEntityClass_records)
  {
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  sub_1ABA8D1D4(_Records_GDEntityClass_records);
  sub_1ABA7EFC8();
  sub_1ABA8882C(v54, v55, v56, v57);
  *&v58 = sub_1ABA88E28().n128_u64[0];
  sub_1ABB7E8D0(v59, v60, v61, v62, v63, v64, v65, v66, v58);
  sub_1ABAA654C();
  if (v0)
  {
    sub_1ABAD219C(&qword_1EB4D11A0, &qword_1ABF33328);
    v67 = sub_1ABA8E764();
    sub_1ABA8A780(v67, xmmword_1ABF34740);
    if (v68)
    {
      v69 = sub_1ABAABC74(v68);
      sub_1ABA8882C(v69, v71, v72, v70 + 288);
      v33 = sub_1ABB7E6FC();
      goto LABEL_33;
    }

    goto LABEL_53;
  }

  if (!_Records_GDEntityClass_records)
  {
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  sub_1ABA9E070(_Records_GDEntityClass_records);
  sub_1ABAA0398();
  sub_1ABA8882C(v73, v74, v75, v76);
  sub_1ABAAFAE0();
  v1371 = v1370;
  v77 = sub_1ABAA0C80();
  sub_1ABA856C4(v77, &v1328);
  sub_1ABA808E4();
  sub_1ABA88934(v78 + 288);
  if (v0)
  {
    sub_1ABAD219C(&qword_1EB4D11A0, &qword_1ABF33328);
    v79 = sub_1ABA8E764();
    sub_1ABA8A780(v79, xmmword_1ABF34740);
    if (v80)
    {
      v81 = sub_1ABAABC74(v80);
      sub_1ABA8882C(v81, v83, v84, v82 + 240);
      v33 = sub_1ABB7E6E8();
      goto LABEL_33;
    }

    __break(1u);
    goto LABEL_58;
  }

  if (!_Records_GDEntityClass_records)
  {
LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

  sub_1ABA88E44(_Records_GDEntityClass_records);
  sub_1ABA9E4DC();
  sub_1ABA8882C(v85, v86, v87, v88);
  sub_1ABA8A7C0();
  v1370 = v1369;
  v89 = sub_1ABB7DF88();
  sub_1ABA856C4(v89, &v1328);
  sub_1ABA808E4();
  sub_1ABA88934(v90 + 240);
  if (v0)
  {
    sub_1ABAD219C(&qword_1EB4D11A0, &qword_1ABF33328);
    v91 = sub_1ABA8E764();
    sub_1ABA8A780(v91, xmmword_1ABF34740);
    if (v92)
    {
      v93 = sub_1ABAABC74(v92);
      sub_1ABA8882C(v93, v95, v96, v94 + 192);
      v33 = sub_1ABB7E6D4();
      goto LABEL_33;
    }

    goto LABEL_59;
  }

  if (!_Records_GDEntityClass_records)
  {
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

  sub_1ABB7E6C8();
  sub_1ABA9ECB8(v97);
  sub_1ABB7E088();
  sub_1ABA8882C(v98, v99, v100, v101);
  sub_1ABA8D4A8();
  v1369 = *(v1 + 4064);
  v102 = sub_1ABB7DF7C();
  sub_1ABA856C4(v102, &v1328);
  sub_1ABA808E4();
  sub_1ABA88934(v103 + 192);
  if (v0)
  {
    sub_1ABAD219C(&qword_1EB4D11A0, &qword_1ABF33328);
    v104 = sub_1ABA8E764();
    sub_1ABA8A780(v104, xmmword_1ABF34740);
    if (v105)
    {
      v106 = sub_1ABAABC74(v105);
      sub_1ABA8882C(v106, v108, v109, v107 + 144);
      v33 = sub_1ABB7E6B4();
      goto LABEL_33;
    }

    goto LABEL_61;
  }

  if (!_Records_GDEntityClass_records)
  {
LABEL_62:
    __break(1u);
LABEL_63:
    sub_1ABA8ACD4();
    static EntityClass.role.getter();
    sub_1ABA9E408(v300, v301, v302, v303, v304, v305, v306, v307);
    sub_1ABA7BFC4();
    sub_1ABA88934(v308 + 3280);
    if (v0)
    {
      sub_1ABAD219C(&qword_1EB4D11A0, &qword_1ABF33328);
      v0 = sub_1ABA83790();
      sub_1ABA888E0(v0, xmmword_1ABF34060);
      static EntityClass.concept.getter();
      goto LABEL_42;
    }

LABEL_66:
    sub_1ABA9E8AC();
    static EntityClass.typeOfProfession.getter();
    sub_1ABA88F64(v309, v310, v311, v312, v313, v314, v315, v316);
    sub_1ABA7BFC4();
    sub_1ABA88934(v317 + 3232);
    if (v0)
    {
      sub_1ABAD219C(&qword_1EB4D11A0, &qword_1ABF33328);
      v0 = sub_1ABA81670();
      sub_1ABA888E0(v0, xmmword_1ABF3BFC0);
      static EntityClass.role.getter();
      static EntityClass.concept.getter();
    }

    else
    {
      sub_1ABA9EA28();
      static EntityClass.religion.getter();
      sub_1ABA9E4FC(v318, v319, v320, v321, v322, v323, v324, v325);
      sub_1ABA7BFC4();
      sub_1ABA88934(v326 + 3184);
      sub_1ABA9F114();
      static EntityClass.language.getter();
      sub_1ABA89040(v327, v328, v329, v330, v331, v332, v333, v334);
      sub_1ABA7BFC4();
      sub_1ABA88934(v335 + 3136);
      sub_1ABB7E0D0();
      static EntityClass.organization.getter();
      sub_1ABA9E64C(v336, v337, v338, v339, v340, v341, v342, v343);
      sub_1ABA7BFC4();
      sub_1ABA88934(v344 + 3088);
      sub_1ABA9EE08();
      static EntityClass.politicalParty.getter();
      sub_1ABA89108(v345, v346, v347, v348, v349, v350, v351, v352);
      sub_1ABA7BFC4();
      sub_1ABA88934(v353 + 3040);
      sub_1ABA9EF58();
      static EntityClass.populatedPlace.getter();
      sub_1ABA9E7E8(v354, v355, v356, v357, v358, v359, v360, v361);
      sub_1ABA7BFC4();
      sub_1ABA88934(v362 + 2992);
      sub_1ABA88A48();
      static EntityClass.state.getter();
      sub_1ABA891C4(v363, v364, v365, v366, v367, v368, v369, v370);
      sub_1ABA7BFC4();
      sub_1ABA88934(v371 + 2944);
      if (v0)
      {
        sub_1ABAD219C(&qword_1EB4D11A0, &qword_1ABF33328);
        v0 = sub_1ABA81670();
        sub_1ABA888E0(v0, xmmword_1ABF3BFC0);
        static EntityClass.populatedPlace.getter();
        static EntityClass.place.getter();
      }

      else
      {
        sub_1ABA8A430();
        static EntityClass.country.getter();
        sub_1ABA9E8E4(v372, v373, v374, v375, v376, v377, v378, v379);
        sub_1ABA7BFC4();
        sub_1ABA88934(v380 + 2896);
        sub_1ABAA0650();
        static EntityClass.timeZone.getter();
        sub_1ABA892B4(v381, v382, v383, v384, v385, v386, v387, v388);
        sub_1ABA7BFC4();
        sub_1ABA88934(v389 + 2848);
        if ((v0 & 1) == 0)
        {
          sub_1ABA8AA60();
          static EntityClass.event.getter();
          sub_1ABA9EA74(v390, v391, v392, v393, v394, v395, v396, v397);
          sub_1ABA7BFC4();
          sub_1ABA88934(v398 + 2800);
          sub_1ABA89EA4();
          static EntityClass.interestRelationshipType.getter();
          sub_1ABA8938C(v399, v400, v401, v402, v403, v404, v405, v406);
          sub_1ABA7BFC4();
          sub_1ABA88934(v407 + 2752);
          sub_1ABA88A04();
          static EntityClass.groupOfHumans.getter();
          sub_1ABA9EB90(v408, v409, v410, v411, v412, v413, v414, v415);
          sub_1ABA7BFC4();
          sub_1ABA88934(v416 + 2704);
          sub_1ABA88DB4();
          static EntityClass.siribaseType.getter();
          sub_1ABA894B8(v417, v418, v419, v420, v421, v422, v423, v424);
          sub_1ABA7BFC4();
          sub_1ABA88934(v425 + 2656);
          sub_1ABA8B3A8();
          static EntityClass.participationRelationshipType.getter();
          sub_1ABA9ECE4(v426, v427, v428, v429, v430, v431, v432, v433);
          sub_1ABA7BFC4();
          sub_1ABA88934(v434 + 2608);
          sub_1ABA897E4();
          static EntityClass.devicePrimaryUser.getter();
          sub_1ABA895F4(v435, v436, v437, v438, v439, v440, v441, v442);
          sub_1ABA7BFC4();
          sub_1ABA88934(v443 + 2560);
          sub_1ABA88BCC();
          static EntityClass.calendar.getter();
          sub_1ABA9EE34(v444, v445, v446, v447, v448, v449, v450, v451);
          sub_1ABA7BFC4();
          sub_1ABA88934(v452 + 2512);
          sub_1ABA8A8D8();
          static EntityClass.calendarEvent.getter();
          sub_1ABA8974C(v453, v454, v455, v456, v457, v458, v459, v460);
          sub_1ABA7BFC4();
          sub_1ABA88934(v461 + 2464);
          sub_1ABA89BA0();
          static EntityClass.home.getter();
          sub_1ABA9EF98(v462, v463, v464, v465, v466, v467, v468, v469);
          sub_1ABA7BFC4();
          sub_1ABA88934(v470 + 2416);
          sub_1ABA8CC34();
          static EntityClass.document.getter();
          sub_1ABA8986C(v471, v472, v473, v474, v475, v476, v477, v478);
          sub_1ABA7BFC4();
          sub_1ABA88934(v479 + 2368);
          sub_1ABA8CDC0();
          static EntityClass.software.getter();
          sub_1ABA9F070(v480, v481, v482, v483, v484, v485, v486, v487);
          sub_1ABA7BFC4();
          sub_1ABA88934(v488 + 2320);
          sub_1ABA9DF28();
          static EntityClass.genre.getter();
          sub_1ABA899B0(v489, v490, v491, v492, v493, v494, v495, v496);
          sub_1ABA7BFC4();
          sub_1ABA88934(v497 + 2272);
          sub_1ABA8A798();
          static EntityClass.work.getter();
          sub_1ABA9F154(v498, v499, v500, v501, v502, v503, v504, v505);
          sub_1ABA7BFC4();
          sub_1ABA88934(v506 + 2224);
          sub_1ABA8A154();
          static EntityClass.calendarSourceRelationshipType.getter();
          sub_1ABA89AE8(v507, v508, v509, v510, v511, v512, v513, v514);
          sub_1ABA7BFC4();
          sub_1ABA88934(v515 + 2176);
          sub_1ABA89D68();
          static EntityClass.agentAffiliationRelationshipType.getter();
          sub_1ABA9F210(v516, v517, v518, v519, v520, v521, v522, v523);
          sub_1ABA7BFC4();
          sub_1ABA88934(v524 + 2128);
          sub_1ABA8AA7C();
          static EntityClass.dateRelationshipType.getter();
          sub_1ABA89C30(v525, v526, v527, v528, v529, v530, v531, v532);
          sub_1ABA7BFC4();
          sub_1ABA88934(v533 + 2080);
          sub_1ABA8A848();
          static EntityClass.typeOfActivity.getter();
          sub_1ABA9F314(v534, v535, v536, v537, v538, v539, v540, v541);
          sub_1ABA7BFC4();
          sub_1ABA88934(v542 + 2032);
          sub_1ABA891A4();
          static EntityClass.activityEvent.getter();
          sub_1ABA89D9C(v543, v544, v545, v546, v547, v548, v549, v550);
          sub_1ABA7BFC4();
          sub_1ABA88934(v551 + 1984);
          sub_1ABA9E758();
          static EntityClass.administratorRelationshipType.getter();
          sub_1ABA9F418(v552, v553, v554, v555, v556, v557, v558, v559);
          sub_1ABA7BFC4();
          sub_1ABA88934(v560 + 1936);
          sub_1ABA9F748();
          static EntityClass.county.getter();
          sub_1ABA89EE4(v561, v562, v563, v564, v565, v566, v567, v568);
          sub_1ABA7BFC4();
          sub_1ABA88934(v569 + 1888);
          sub_1ABA89340();
          static EntityClass.visualIdentifierRelationshipType.getter();
          sub_1ABA9F4A8(v570, v571, v572, v573, v574, v575, v576, v577);
          sub_1ABA7BFC4();
          sub_1ABA88934(v578 + 1840);
          sub_1ABA9FCA0();
          static EntityClass.song.getter();
          sub_1ABA8A040(v579, v580, v581, v582, v583, v584, v585, v586);
          sub_1ABA7BFC4();
          sub_1ABA88934(v587 + 1792);
          sub_1ABAA09F4();
          static EntityClass.songRelationshipType.getter();
          sub_1ABA9F560(v588, v589, v590, v591, v592, v593, v594, v595);
          sub_1ABA7BFC4();
          sub_1ABA88934(v596 + 1744);
          sub_1ABA9F8D4();
          static EntityClass.animal.getter();
          sub_1ABA8A90C(v597, v598, v599, v600, v601, v602, v603, v604);
          sub_1ABA7BFC4();
          sub_1ABA88934(v605 + 1696);
          sub_1ABA9E2B8();
          static EntityClass.softwareRelationshipType.getter();
          sub_1ABA9F670(v606, v607, v608, v609, v610, v611, v612, v613);
          sub_1ABA7BFC4();
          sub_1ABA88934(v614 + 1648);
          sub_1ABA8AE6C();
          static EntityClass.vehicle.getter();
          sub_1ABA8A178(v615, v616, v617, v618, v619, v620, v621, v622);
          sub_1ABA7BFC4();
          sub_1ABA88934(v623 + 1600);
          sub_1ABA9F03C();
          static EntityClass.onFoot.getter();
          sub_1ABA9F760(v624, v625, v626, v627, v628, v629, v630, v631);
          sub_1ABA7BFC4();
          sub_1ABA88934(v632 + 1552);
          sub_1ABA88AD8();
          static EntityClass.automobile.getter();
          sub_1ABA8A254(v633, v634, v635, v636, v637, v638, v639, v640);
          sub_1ABA7BFC4();
          sub_1ABA88934(v641 + 1504);
          sub_1ABA9F9AC();
          static EntityClass.plane.getter();
          sub_1ABA9F830(v642, v643, v644, v645, v646, v647, v648, v649);
          sub_1ABA7BFC4();
          sub_1ABA88934(v650 + 1456);
          sub_1ABA9E618();
          static EntityClass.bicycle.getter();
          sub_1ABA8AACC(v651, v652, v653, v654, v655, v656, v657, v658);
          sub_1ABA7BFC4();
          sub_1ABA88934(v659 + 1408);
          sub_1ABB7E0B8();
          static EntityClass.ship.getter();
          sub_1ABA9F908(v660, v661, v662, v663, v664, v665, v666, v667);
          sub_1ABA7BFC4();
          sub_1ABA88934(v668 + 1360);
          sub_1ABA8D034();
          static EntityClass.bus.getter();
          sub_1ABA8A370(v669, v670, v671, v672, v673, v674, v675, v676);
          sub_1ABA7BFC4();
          sub_1ABA88934(v677 + 1312);
          sub_1ABA89A68();
          static EntityClass.locomotiveTrain.getter();
          sub_1ABA9F9F8(v678, v679, v680, v681, v682, v683, v684, v685);
          sub_1ABA7BFC4();
          sub_1ABA88934(v686 + 1264);
          sub_1ABA8A80C();
          static EntityClass.transportationActivity.getter();
          sub_1ABA8A4A4(v687, v688, v689, v690, v691, v692, v693, v694);
          sub_1ABA7BFC4();
          sub_1ABA88934(v695 + 1216);
          sub_1ABA8C8CC();
          static EntityClass.workingActivity.getter();
          sub_1ABA9FAFC(v696, v697, v698, v699, v700, v701, v702, v703);
          sub_1ABA7BFC4();
          sub_1ABA88934(v704 + 1168);
          sub_1ABA9FBA0();
          static EntityClass.meetingActivity.getter();
          sub_1ABA8AD1C(v705, v706, v707, v708, v709, v710, v711, v712);
          sub_1ABA7BFC4();
          sub_1ABA88934(v713 + 1120);
          sub_1ABA8A590();
          static EntityClass.eatingActivity.getter();
          sub_1ABA9FBD0(v714, v715, v716, v717, v718, v719, v720, v721);
          sub_1ABA7BFC4();
          sub_1ABA88934(v722 + 1072);
          sub_1ABAA0844();
          static EntityClass.watchingTVActivity.getter();
          sub_1ABA8A5D4(v723, v724, v725, v726, v727, v728, v729, v730);
          sub_1ABA7BFC4();
          sub_1ABA88934(v731 + 1024);
          sub_1ABA8BBF0();
          static EntityClass.communicatingActivity.getter();
          sub_1ABA9FCF4(v732, v733, v734, v735, v736, v737, v738, v739);
          sub_1ABA7BFC4();
          sub_1ABA88934(v740 + 976);
          sub_1ABA9FE14();
          static EntityClass.shoppingActivity.getter();
          sub_1ABA8AEC8(v741, v742, v743, v744, v745, v746, v747, v748);
          sub_1ABA7BFC4();
          sub_1ABA88934(v749 + 928);
          sub_1ABA9F80C();
          static EntityClass.travelingActivity.getter();
          sub_1ABA9FE54(v750, v751, v752, v753, v754, v755, v756, v757);
          sub_1ABA7BFC4();
          sub_1ABA88934(v758 + 880);
          sub_1ABA9F2D4();
          static EntityClass.readingActivity.getter();
          sub_1ABA8B0E0(v759, v760, v761, v762, v763, v764, v765, v766);
          sub_1ABA7BFC4();
          sub_1ABA88934(v767 + 832);
          sub_1ABA9F490();
          static EntityClass.vacationingActivity.getter();
          sub_1ABA950DC(v768, v769, v770, v771, v772, v773, v774, v775);
          sub_1ABA7BFC4();
          sub_1ABA88934(v776 + 784);
          sub_1ABAA0DF8();
          static EntityClass.gamingActivity.getter();
          sub_1ABA8B25C(v777, v778, v779, v780, v781, v782, v783, v784);
          sub_1ABA7BFC4();
          sub_1ABA88934(v785 + 736);
          sub_1ABA9FF2C();
          static EntityClass.socializingActivity.getter();
          sub_1ABA9FFAC(v786, v787, v788, v789, v790, v791, v792, v793);
          sub_1ABA7BFC4();
          sub_1ABA88934(v794 + 688);
          sub_1ABA8C658();
          static EntityClass.wakingUpActivity.getter();
          sub_1ABA8B490(v795, v796, v797, v798, v799, v800, v801, v802);
          sub_1ABA7BFC4();
          sub_1ABA88934(v803 + 640);
          sub_1ABB7E0AC();
          static EntityClass.goingToBedActivity.getter();
          sub_1ABAA0128(v804, v805, v806, v807, v808, v809, v810, v811);
          sub_1ABA7BFC4();
          sub_1ABA88934(v812 + 592);
          sub_1ABA9EB58();
          static EntityClass.sleepingActivity.getter();
          sub_1ABA8B65C(v813, v814, v815, v816, v817, v818, v819, v820);
          sub_1ABA7BFC4();
          sub_1ABA88934(v821 + 544);
          sub_1ABA8B19C();
          static EntityClass.exercisingActivity.getter();
          sub_1ABAA02C8(v822, v823, v824, v825, v826, v827, v828, v829);
          sub_1ABA7BFC4();
          sub_1ABA88934(v830 + 496);
          sub_1ABB7E0C4();
          static EntityClass.mindfulnessActivity.getter();
          sub_1ABA8B874(v831, v832, v833, v834, v835, v836, v837, v838);
          sub_1ABA7BFC4();
          sub_1ABA88934(v839 + 448);
          sub_1ABA9F524();
          static EntityClass.onThePhoneActivity.getter();
          sub_1ABAA0408(v840, v841, v842, v843, v844, v845, v846, v847);
          sub_1ABA7BFC4();
          sub_1ABA88934(v848 + 400);
          sub_1ABAA00CC();
          static EntityClass.facetimeActivity.getter();
          sub_1ABA8BA84(v849, v850, v851, v852, v853, v854, v855, v856);
          sub_1ABA7BFC4();
          sub_1ABA88934(v857 + 352);
          sub_1ABA9F3DC();
          static EntityClass.walkingActivity.getter();
          sub_1ABAA0520(v858, v859, v860, v861, v862, v863, v864, v865);
          sub_1ABA7BFC4();
          sub_1ABA88934(v866 + 304);
          sub_1ABA8947C();
          static EntityClass.runningActivity.getter();
          sub_1ABAA06D0(v867, v868, v869, v870, v871, v872, v873, v874);
          sub_1ABA7BFC4();
          sub_1ABA88934(v875 + 256);
          sub_1ABA9FF50();
          sub_1ABA8BC54(v876, v877, v878, v879, v880, v881, v882, v883);
          sub_1ABA7BFC4();
          sub_1ABA88934(v884 + 208);
          sub_1ABA8BD88();
          static EntityClass.hikingActivity.getter();
          sub_1ABAA088C(v885, v886, v887, v888, v889, v890, v891, v892);
          sub_1ABA7BFC4();
          sub_1ABA88934(v893 + 160);
          sub_1ABA8CF70();
          static EntityClass.modeOfTransportation.getter();
          sub_1ABA8C55C(v894, v895, v896, v897, v898, v899, v900, v901);
          sub_1ABA7BFC4();
          sub_1ABA88934(v902 + 112);
          sub_1ABB7E0A0();
          static EntityClass.automobileModel.getter();
          sub_1ABAA0A44(v903, v904, v905, v906, v907, v908, v909, v910);
          sub_1ABA7BFC4();
          sub_1ABA88934(v911 + 64);
          static EntityClass.transportationActivityType.getter();
          sub_1ABA8C710(v912, v913, v914, v915, v916, v917, v918, v919);
          sub_1ABA7BFC4();
          sub_1ABA88934(v920 + 16);
          static EntityClass.workingActivityType.getter();
          *&v921 = sub_1ABAB0F68().n128_u64[0];
          sub_1ABB7DF94(v922, v923, v924, v925, v926, v927, v928, v929, v921);
          sub_1ABA8A830();
          static EntityClass.meetingActivityType.getter();
          *&v930 = sub_1ABAB3BD0().n128_u64[0];
          sub_1ABB7DFB4(v931, v932, v933, v934, v935, v936, v937, v938, v930);
          sub_1ABB7E14C();
          static EntityClass.eatingActivityType.getter();
          sub_1ABA8CAAC();
          sub_1ABAB61B4(v939, v1178, v1197, v1216, v1235, v1254, v1273, v1292, v1310);
          sub_1ABAB5E8C();
          static EntityClass.watchingMediaActivityType.getter();
          sub_1ABA95488();
          sub_1ABA856C4(v940, &v1328);
          sub_1ABAA6708();
          static EntityClass.communicatingActivityType.getter();
          sub_1ABA90C94();
          sub_1ABA856C4(v941, &v1328);
          sub_1ABB7E50C();
          static EntityClass.shoppingActivityType.getter();
          sub_1ABA885E0();
          sub_1ABA856C4(v942, &v1328);
          sub_1ABB7E3EC();
          static EntityClass.mindfulActivityType.getter();
          sub_1ABAB5298();
          sub_1ABA856C4(v943, &v1328);
          sub_1ABB7E284();
          static EntityClass.sleepActivityType.getter();
          sub_1ABAA0E90();
          sub_1ABA856C4(v944, &v1328);
          sub_1ABB7E194();
          static EntityClass.travelActivityType.getter();
          sub_1ABAB548C();
          sub_1ABA856C4(v945, &v1328);
          sub_1ABAB5F38();
          static EntityClass.readingActivityType.getter();
          sub_1ABAA10B4();
          sub_1ABA856C4(v946, &v1328);
          sub_1ABAA11F8();
          static EntityClass.vacationActivityType.getter();
          sub_1ABAB5660();
          sub_1ABA856C4(v947, &v1328);
          sub_1ABAA2778();
          static EntityClass.socialActivityType.getter();
          sub_1ABAA128C();
          sub_1ABA856C4(v948, &v1328);
          sub_1ABB7E44C();
          static EntityClass.wakingActivityType.getter();
          sub_1ABAB5828();
          sub_1ABA856C4(v949, &v1328);
          sub_1ABB7E2E4();
          static EntityClass.goingToBedActivityType.getter();
          sub_1ABAA14F4();
          sub_1ABA856C4(v950, &v1328);
          sub_1ABB7E20C();
          static EntityClass.phoneCallActivityType.getter();
          sub_1ABAB5A24();
          sub_1ABA856C4(v951, &v1328);
          sub_1ABAA36E4();
          static EntityClass.facetimeActivityType.getter();
          sub_1ABA95260();
          sub_1ABA856C4(v952, &v1328);
          sub_1ABAA47F8();
          static EntityClass.walkingActivityType.getter();
          sub_1ABA96024();
          sub_1ABA856C4(v953, &v1328);
          sub_1ABAA1E08();
          static EntityClass.runningActivityType.getter();
          sub_1ABAA1764();
          sub_1ABA856C4(v954, &v1328);
          sub_1ABB7E4C4();
          static EntityClass.bikingActivityType.getter();
          sub_1ABA82DEC();
          sub_1ABA856C4(v955, &v1328);
          sub_1ABB7E374();
          static EntityClass.hikingActivityType.getter();
          sub_1ABAA1980();
          sub_1ABA856C4(v956, &v1328);
          sub_1ABA88910();
          static EntityClass.typeOfPhysicalExercise.getter();
          sub_1ABA97F20();
          sub_1ABA856C4(v957, &v1328);
          sub_1ABB7E164();
          static EntityClass.localizedNameRelationshipType.getter();
          sub_1ABAA1BC0();
          sub_1ABA856C4(v958, &v1328);
          sub_1ABAA2B18();
          static EntityClass.mediaWork.getter();
          sub_1ABA97768();
          sub_1ABA856C4(v959, &v1328);
          sub_1ABAA3B30();
          static EntityClass.commuteActivity.getter();
          sub_1ABA96C28();
          sub_1ABA856C4(v960, &v1328);
          sub_1ABAB5214();
          static EntityClass.diningActivity.getter();
          sub_1ABAB5C84();
          sub_1ABA856C4(v961, &v1328);
          sub_1ABB7E404();
          static EntityClass.attendingAPerformanceActivity.getter();
          sub_1ABAA1EB4();
          sub_1ABA856C4(v962, &v1328);
          sub_1ABB7E2B4();
          static EntityClass.stationaryActivity.getter();
          sub_1ABAB1044();
          sub_1ABA856C4(v963, &v1328);
          sub_1ABB7E1C4();
          static EntityClass.knowledgeSource.getter();
          sub_1ABA7AC70();
          sub_1ABA856C4(v964, &v1328);
          sub_1ABA94EA0();
          static EntityClass.confidenceRelationshipType.getter();
          sub_1ABA82774();
          sub_1ABA856C4(v965, &v1328);
          sub_1ABAA6408();
          static EntityClass.commuteActivityType.getter();
          sub_1ABA96964();
          sub_1ABA856C4(v966, &v1328);
          sub_1ABAB5EB0();
          static EntityClass.make.getter();
          sub_1ABAA2228();
          sub_1ABA856C4(v967, &v1328);
          sub_1ABB7E47C();
          static EntityClass.locationVisitActivity.getter();
          sub_1ABA95784();
          sub_1ABA856C4(v968, &v1328);
          sub_1ABB7E344();
          static EntityClass.performanceRelationshipType.getter();
          sub_1ABAA2548();
          sub_1ABA856C4(v969, &v1328);
          sub_1ABB7E23C();
          static EntityClass.partWholeRelationshipType.getter();
          sub_1ABAA2860();
          sub_1ABA856C4(v970, &v1328);
          sub_1ABAA102C();
          static EntityClass.ratingRelationshipType.getter();
          sub_1ABA974C0();
          sub_1ABA856C4(v971, &v1328);
          sub_1ABAA5644();
          static EntityClass.musicalArtist.getter();
          sub_1ABAA2C18();
          sub_1ABA856C4(v972, &v1328);
          sub_1ABAB6000();
          static EntityClass.contentRating.getter();
          sub_1ABAA2FFC();
          sub_1ABA856C4(v973, &v1328);
          sub_1ABB7E4F4();
          static EntityClass.sportsGameEvent.getter();
          sub_1ABAA3458();
          sub_1ABA856C4(v974, &v1328);
          sub_1ABB7E3D4();
          static EntityClass.sportsTeam.getter();
          sub_1ABAA37BC();
          sub_1ABA856C4(v975, &v1328);
          sub_1ABB7E26C();
          static EntityClass.drivingActivity.getter();
          sub_1ABAA3C1C();
          sub_1ABA856C4(v976, &v1328);
          sub_1ABB7E1AC();
          static EntityClass.drivingActivityType.getter();
          sub_1ABAA3FC8();
          sub_1ABA856C4(v977, &v1328);
          sub_1ABAB5BA4();
          static EntityClass.behaviorActivity.getter();
          sub_1ABAA4474();
          sub_1ABA856C4(v978, &v1328);
          sub_1ABAA18F4();
          static EntityClass.behaviorActivityType.getter();
          sub_1ABAA48E8();
          sub_1ABA856C4(v979, &v1328);
          sub_1ABB7E32C();
          static EntityClass.time.getter();
          sub_1ABAA4D28();
          sub_1ABA856C4(v980, &v1328);
          sub_1ABB7E224();
          static EntityClass.album.getter();
          sub_1ABAA5230();
          sub_1ABA856C4(v981, &v1328);
          sub_1ABAA20E4();
          static EntityClass.musicalWork.getter();
          sub_1ABAA5770();
          sub_1ABA856C4(v982, &v1328);
          sub_1ABAA1674();
          static EntityClass.group.getter();
          sub_1ABA97A50();
          sub_1ABA856C4(v983, &v1328);
          sub_1ABAA0E1C();
          static EntityClass.groupRelationshipType.getter();
          sub_1ABA83FD0();
          sub_1ABA856C4(v984, &v1328);
          sub_1ABB7E4DC();
          static EntityClass.livingBeingRelationship.getter();
          sub_1ABA8E138();
          sub_1ABA856C4(v985, &v1328);
          sub_1ABB7E3BC();
          static EntityClass.entityAliasRelationshipType.getter();
          sub_1ABA9A318();
          sub_1ABA856C4(v986, &v1328);
          sub_1ABB7E254();
          static EntityClass.pet.getter();
          sub_1ABAA5F84();
          sub_1ABA856C4(v987, &v1328);
          sub_1ABB7E17C();
          static EntityClass.dog.getter();
          sub_1ABA90688();
          sub_1ABA856C4(v988, &v1328);
          sub_1ABAA0DD4();
          static EntityClass.cat.getter();
          sub_1ABA9930C();
          sub_1ABA856C4(v989, &v1328);
          sub_1ABAA2114();
          static EntityClass.extractionTagRelationshipType.getter();
          sub_1ABA8BF00();
          sub_1ABA856C4(v990, &v1328);
          sub_1ABAA4C3C();
          static EntityClass.movie.getter();
          sub_1ABA8FEF8();
          sub_1ABA856C4(v991, &v1328);
          sub_1ABB7E41C();
          static EntityClass.sportsOrganization.getter();
          sub_1ABA9487C();
          sub_1ABA856C4(v992, &v1328);
          sub_1ABB7E2CC();
          static EntityClass.sportsLeague.getter();
          sub_1ABA81650();
          sub_1ABA856C4(v993, &v1328);
          sub_1ABB7E1F4();
          static EntityClass.athlete.getter();
          sub_1ABA83770();
          sub_1ABA856C4(v994, &v1328);
          sub_1ABAA5D30();
          static EntityClass.personInTheArts.getter();
          sub_1ABA8E744();
          sub_1ABA856C4(v995, &v1328);
          sub_1ABAA63AC();
          static EntityClass.musician.getter();
          sub_1ABA7E4B0();
          sub_1ABA856C4(v996, &v1328);
          sub_1ABAA2F20();
          static EntityClass.televisionProgram.getter();
          sub_1ABA9335C();
          sub_1ABA856C4(v997, &v1328);
          sub_1ABB7E494();
          static EntityClass.sportsActivity.getter();
          sub_1ABA7BFA4();
          sub_1ABA856C4(v998, &v1328);
          sub_1ABB7E35C();
          static EntityClass.screenTimeSegment.getter();
          sub_1ABA808C4();
          sub_1ABA856C4(v999, &v1328);
          sub_1ABA888EC();
          static EntityClass.myPet.getter();
          sub_1ABA7FC3C();
          sub_1ABA856C4(v1000, &v1328);
          sub_1ABA889A8();
          static EntityClass.myDog.getter();
          sub_1ABA8CC90();
          sub_1ABA856C4(v1001, &v1328);
          sub_1ABB7E314();
          static EntityClass.myCat.getter();
          sub_1ABB7D86C();
          sub_1ABA856C4(v1002, &v1328);
          sub_1ABB7E434();
          static EntityClass.walletOrder.getter();
          sub_1ABA96F80();
          sub_1ABA856C4(v1003, &v1328);
          sub_1ABAA63D0();
          static EntityClass.walletTransaction.getter();
          sub_1ABAB659C();
          sub_1ABA856C4(v1004, &v1328);
          sub_1ABAA5DCC();
          static EntityClass.orderEmailRelationshipType.getter();
          sub_1ABAB6778();
          sub_1ABA856C4(v1005, &v1328);
          sub_1ABAA2478();
          static EntityClass.orderTransactionRelationshipType.getter();
          sub_1ABAB68A4();
          sub_1ABA856C4(v1006, &v1328);
          sub_1ABAA64C8();
          static EntityClass.payment.getter();
          sub_1ABB7D854();
          sub_1ABA856C4(v1007, &v1328);
          sub_1ABB7E1DC();
          static EntityClass.transaction.getter();
          sub_1ABA972E0();
          sub_1ABA856C4(v1008, &v1328);
          sub_1ABB7E29C();
          static EntityClass.email.getter();
          sub_1ABA82A44();
          sub_1ABA856C4(v1009, &v1328);
          sub_1ABB7E3A4();
          static EntityClass.shippinginfo.getter();
          sub_1ABB7D83C();
          sub_1ABA856C4(v1010, &v1328);
          sub_1ABB7E4AC();
          static EntityClass.shipmentFullFillmentInfo.getter();
          sub_1ABA963E0(v1011, v1012, v1013, v1014, v1015, v1016, v1017, v1018, v1179, v1198, v1217, v1236, v1255, v1274, v1293, v1311, v1328, v1329, v1330, v1331, v1332, v1333, v1334, v1335, v1336, v1337, v1338, v1339, v1340, v1341, v1342, v1343, v1344, v1345, v1346, v1347, v1348, v1349, v1350, v1351, v1352, v1353, v1354, *(&v1354 + 1), v1355, *(&v1355 + 1), v1356, v1357, v1358, *(&v1358 + 1), v1359, *(&v1359 + 1), v1360, v1361, v1362, *(&v1362 + 1), v1363, v1364, v1365, v1366, v1367, *(&v1367 + 1), v1368);
          sub_1ABA856C4(v1019, &v1328);
          sub_1ABAA5BF4();
          static EntityClass.orderShippingInfoRelationshipType.getter();
          sub_1ABAB2AE0(v1020, v1021, v1022, v1023, v1024, v1025, v1026, v1027, v1180, v1199, v1218, v1237, v1256, v1275, v1294, v1312, v1328, v1329, v1330, v1331, v1332, v1333, v1334, v1335, v1336, v1337, v1338, v1339, v1340, v1341, v1342, v1343, v1344, v1345, v1346, v1347, v1348, v1349, v1350, v1351, v1352, v1353, v1354, *(&v1354 + 1), v1355, *(&v1355 + 1), v1356, v1357, v1358, *(&v1358 + 1), v1359, *(&v1359 + 1), v1360, v1361, v1362, *(&v1362 + 1), v1363, v1364, v1365, v1366, v1367);
          v1029 = sub_1ABA856C4(v1028, &v1328);
          sub_1ABAB5E68(v1029, v1030, v1031, v1032, v1033, v1034, v1035, v1036, v1181, v1200, v1219, v1238, v1257, v1276, v1295, v1313, v1328, v1329, v1330, v1331, v1332, v1333, v1334, v1335, v1336, v1337, v1338, v1339, v1340, v1341, v1342, v1343, v1344, v1345, v1346, v1347, v1348, v1349, v1350, v1351, v1352, v1353, v1354, *(&v1354 + 1), v1355, *(&v1355 + 1), v1356, v1357, v1358, *(&v1358 + 1), v1359, *(&v1359 + 1), v1360, v1361, v1362, *(&v1362 + 1), v1363, v1364, v1365, v1366, v1367, *(&v1367 + 1), v1368);
          static EntityClass.entityOrganizationRelationshipType.getter();
          sub_1ABB7D824(v1037, v1038, v1039, v1040, v1041, v1042, v1043, v1044, v1182, v1201, v1220, v1239, v1258, v1277, v1296, v1314, v1328, v1329, v1330, v1331, v1332, v1333, v1334, v1335, v1336, v1337, v1338, v1339, v1340, v1341, v1342, v1343, v1344, v1345, v1346, v1347, v1348, v1349, v1350, v1351, v1352, v1353, v1354, *(&v1354 + 1), v1355, *(&v1355 + 1), v1356, v1357, v1358, *(&v1358 + 1), v1359, *(&v1359 + 1), v1360, v1361, v1362);
          v1046 = sub_1ABA856C4(v1045, &v1328);
          sub_1ABAA1DE4(v1046, v1047, v1048, v1049, v1050, v1051, v1052, v1053, v1183, v1202, v1221, v1240, v1259, v1278, v1297, v1315, v1328, v1329, v1330, v1331, v1332, v1333, v1334, v1335, v1336, v1337, v1338, v1339, v1340, v1341, v1342, v1343, v1344, v1345, v1346, v1347, v1348, v1349, v1350, v1351, v1352, v1353, v1354, *(&v1354 + 1), v1355, *(&v1355 + 1), v1356, v1357, v1358, *(&v1358 + 1), v1359, *(&v1359 + 1), v1360, v1361, v1362, *(&v1362 + 1), v1363, v1364, v1365, v1366, v1367);
          static EntityClass.shipmentFullFillmentEmailRelationshipType.getter();
          sub_1ABB7D80C(v1054, v1055, v1056, v1057, v1058, v1059, v1060, v1061, v1184, v1203, v1222, v1241, v1260, v1279, v1298, v1316, v1328, v1329, v1330, v1331, v1332, v1333, v1334, v1335, v1336, v1337, v1338, v1339, v1340, v1341, v1342, v1343, v1344, v1345, v1346, v1347, v1348, v1349, v1350, v1351, v1352, v1353, v1354, *(&v1354 + 1), v1355, *(&v1355 + 1), v1356, v1357, v1358);
          v1063 = sub_1ABA856C4(v1062, &v1328);
          sub_1ABA887FC(v1063, v1064, v1065, v1066, v1067, v1068, v1069, v1070, v1185, v1204, v1223, v1242, v1261, v1280, v1299, v1317, v1328, v1329, v1330, v1331, v1332, v1333, v1334, v1335, v1336, v1337, v1338, v1339, v1340, v1341, v1342, v1343, v1344, v1345, v1346, v1347, v1348, v1349, v1350, v1351, v1352, v1353, v1354, *(&v1354 + 1), v1355, *(&v1355 + 1), v1356, v1357, v1358, *(&v1358 + 1), v1359, *(&v1359 + 1), v1360, v1361, v1362);
          static EntityClass.orderShipmentFullFillmentRelationshipType.getter();
          v1079 = sub_1ABB7DF54(v1071, v1072, v1073, v1074, v1075, v1076, v1077, v1078, v1186, v1205, v1224, v1243, v1262, v1281, v1300, v1318, v1328, v1329, v1330, v1331, v1332, v1333, v1334, v1335, v1336, v1337, v1338, v1339, v1340, v1341, v1342, v1343, v1344, v1345, v1346, v1347, v1348, v1349, v1350, v1351, v1352, v1353, v1354, v1355, v1356, v1357, v1358, v1359, v1360);
          sub_1ABA889E0(v1079, v1080, v1081, v1082, v1083, v1084, v1085, v1086, v1187, v1206, v1225, v1244, v1263, v1282, v1301, v1319, v1328, v1329, v1330, v1331, v1332, v1333, v1334, v1335, v1336, v1337, v1338, v1339, v1340, v1341, v1342, v1343, v1344, v1345, v1346, v1347, v1348, v1349, v1350, v1351, v1352, v1353, v1354, *(&v1354 + 1), v1355, *(&v1355 + 1), v1356, v1357, v1358);
          static EntityClass.orderPaymentRelationshipType.getter();
          v1095 = sub_1ABB7DF2C(v1087, v1088, v1089, v1090, v1091, v1092, v1093, v1094, v1188, v1207, v1226, v1245, v1264, v1283, v1302, v1320, v1328, v1329, v1330, v1331, v1332, v1333, v1334, v1335, v1336, v1337, v1338, v1339, v1340, v1341, v1342, v1343, v1344, v1345, v1346, v1347, v1348, v1349, v1350, v1351, v1352, v1353, v1354, v1355, v1356);
          sub_1ABB7EA70(v1095, v1096, v1097, v1098, v1099, v1100, v1101, v1102, v1189, v1208, v1227, v1246, v1265, v1284, v1303, v1321, v1328, v1329, v1330, v1331, v1332, v1333, v1334, v1335, v1336, v1337, v1338, v1339, v1340, v1341, v1342, v1343, v1344, v1345, v1346, v1347, v1348, v1349, v1350, v1351, v1352, v1353, v1354);
          static EntityClass.fromToEmailRelationshipType.getter();
          v1111 = sub_1ABB7E9B0(v1103, v1104, v1105, v1106, v1107, v1108, v1109, v1110, v1190, v1209, v1228, v1247, v1266, v1285, v1304, v1322, v1328, v1329, v1330, v1331, v1332, v1333, v1334, v1335, v1336, v1337, v1338, v1339, v1340, v1341, v1342, v1343, v1344, v1345, v1346, v1347, v1348, v1349);
          sub_1ABB7EA40(v1111, v1112, v1113, v1114, v1115, v1116, v1117, v1118, v1191, v1210, v1229, v1248, v1267, v1286, v1305, v1323, v1328, v1329, v1330, v1331, v1332, v1333, v1334, v1335, v1336, v1337, v1338, v1339, v1340, v1341, v1342, v1343, v1344, v1345, v1346, v1347, v1348, v1349);
          static EntityClass.orderPersonRelationshipType.getter();
          v1127 = sub_1ABB7E998(v1119, v1120, v1121, v1122, v1123, v1124, v1125, v1126, v1192, v1211, v1230, v1249, v1268, v1287, v1306, v1324, v1328, v1329, v1330, v1331, v1332, v1333, v1334, v1335, v1336, v1337, v1338, v1339, v1340, v1341, v1342, v1343, v1344);
          sub_1ABB7EA10(v1127, v1128, v1129, v1130, v1131, v1132, v1133, v1134, v1193, v1212, v1231, v1250, v1269, v1288, v1307, v1325, v1328, v1329, v1330, v1331, v1332, v1333, v1334, v1335, v1336, v1337, v1338, v1339, v1340, v1341, v1342, v1343, v1344);
          static EntityClass.holidayEvent.getter();
          v1143 = sub_1ABB7E980(v1135, v1136, v1137, v1138, v1139, v1140, v1141, v1142, v1194, v1213, v1232, v1251, v1270, v1289, v1308, v1326, v1328, v1329, v1330, v1331, v1332, v1333, v1334, v1335, v1336, v1337, v1338, v1339);
          sub_1ABB7E9F8(v1143, v1144, v1145, v1146, v1147, v1148, v1149, v1150, v1195, v1214, v1233, v1252, v1271, v1290, v1309, v1327, v1328, v1329, v1330, v1331, v1332, v1333, v1334, v1335, v1336, v1337, v1338, v1339);
          static EntityClass.shipmentPersonRelationshipType.getter();
          v1159 = sub_1ABB7E968(v1151, v1152, v1153, v1154, v1155, v1156, v1157, v1158);
          sub_1ABB7EA58(v1159, v1160, v1161, v1162, v1163, v1164, v1165, v1166, v1196, v1215, v1234, v1253, v1272, v1291);
          static EntityClass.emailInfoRelationshipType.getter();
          v1170 = sub_1ABB7E950(v1167, v1168, v1169);
          sub_1ABB7EA28(v1170, v1171, v1172);
          sub_1ABC6D528();
          v1173 = sub_1ABF237D4();
          sub_1ABF24674();
          sub_1ABAA20BC();
          if (sub_1ABB7E014())
          {
            v1174 = sub_1ABAD8744();
            sub_1ABAA0B68(v1174);
            if (v2)
            {
              while (1)
              {
                sub_1ABA88988();
                v1175();
                sub_1ABA9FAB0();
              }
            }

            sub_1ABA8A7E0(&dword_1ABA78000, v1176, v1177, "EntityClass: ancestorClassesSet: unknown entity class.");
            sub_1ABAD874C();
          }

          goto LABEL_3;
        }

        sub_1ABAD219C(&qword_1EB4D11A0, &qword_1ABF33328);
        v0 = sub_1ABA83790();
        sub_1ABA888E0(v0, xmmword_1ABF34060);
        static EntityClass.place.getter();
      }
    }

    goto LABEL_42;
  }

  sub_1ABA9F1E0(_Records_GDEntityClass_records);
  sub_1ABB7E07C();
  v114 = sub_1ABA8882C(v110, v111, v112, v113);
  sub_1ABAA0C9C(v114, v115, v116, v117, v118, v119, v120, v121);
  sub_1ABA808E4();
  sub_1ABA88934(v122 + 144);
  if (v0)
  {
    sub_1ABAD219C(&qword_1EB4D11A0, &qword_1ABF33328);
    v123 = sub_1ABA8E764();
    sub_1ABA8A780(v123, xmmword_1ABF34740);
    if (v124)
    {
      v125 = sub_1ABAABC74(v124);
      sub_1ABA8882C(v125, v127, v128, v126 + 96);
      v33 = sub_1ABB7E6A0();
      goto LABEL_33;
    }

    __break(1u);
    goto LABEL_66;
  }

  sub_1ABAB51F4();
  static EntityClass.occurrence.getter();
  sub_1ABB7D8B8(v129, v130, v131, v132, v133, v134, v135, v136);
  sub_1ABA808E4();
  sub_1ABA88934(v137 + 96);
  static EntityClass.topic.getter();
  sub_1ABAA0D44(v145, v146, v147, v148, v149, v150, v151, v152);
  sub_1ABA808E4();
  sub_1ABA88934(v153 + 48);
  if ((v0 & 1) == 0)
  {
    sub_1ABA8B7F8();
    static EntityClass.senderRelationshipType.getter();
    sub_1ABA88A28();
    sub_1ABA88ABC();
    sub_1ABA856C4(v154, &v1328);
    sub_1ABA808E4();
    sub_1ABA88934(v155);
    sub_1ABB7E094();
    static EntityClass.membershipRelationshipType.getter();
    sub_1ABB7D884(v156, v157, v158, v159, v160, v161, v162, v163);
    sub_1ABA7BFC4();
    sub_1ABA88934(v164 + 4048);
    sub_1ABA887C4();
    static EntityClass.organizerRelationshipType.getter();
    sub_1ABA8CE60(v165, v166, v167, v168, v169, v170, v171, v172);
    sub_1ABA7BFC4();
    sub_1ABA88934(v173 + 4000);
    sub_1ABA8D33C();
    static EntityClass.topicRelationshipType.getter();
    sub_1ABA8CF94(v174, v175, v176, v177, v178, v179, v180, v181);
    sub_1ABA7BFC4();
    sub_1ABA88934(v182 + 3952);
    sub_1ABA8B57C();
    static EntityClass.calendarRelationshipType.getter();
    sub_1ABA8D0DC(v183, v184, v185, v186, v187, v188, v189, v190);
    sub_1ABA7BFC4();
    sub_1ABA88934(v191 + 3904);
    sub_1ABA9DDEC();
    static EntityClass.eventRelationshipType.getter();
    sub_1ABA8D224(v192, v193, v194, v195, v196, v197, v198, v199);
    sub_1ABA7BFC4();
    sub_1ABA88934(v200 + 3856);
    sub_1ABA8B99C();
    static EntityClass.textRelationshipType.getter();
    sub_1ABA8D374(v201, v202, v203, v204, v205, v206, v207, v208);
    sub_1ABA7BFC4();
    sub_1ABA88934(v209 + 3808);
    sub_1ABA90C10();
    static EntityClass.addressRelationshipType.getter();
    sub_1ABA88B1C(v210, v211, v212, v213, v214, v215, v216, v217);
    sub_1ABA7BFC4();
    sub_1ABA88934(v218 + 3760);
    sub_1ABA9E19C();
    static EntityClass.languageRelationshipType.getter();
    sub_1ABA90F70(v219, v220, v221, v222, v223, v224, v225, v226);
    sub_1ABA7BFC4();
    sub_1ABA88934(v227 + 3712);
    sub_1ABA90F2C();
    static EntityClass.identifierRelationshipType.getter();
    sub_1ABA88C10(v228, v229, v230, v231, v232, v233, v234, v235);
    sub_1ABA7BFC4();
    sub_1ABA88934(v236 + 3664);
    sub_1ABA9E3DC();
    static EntityClass.imageRelationshipType.getter();
    sub_1ABA9DE20(v237, v238, v239, v240, v241, v242, v243, v244);
    sub_1ABA7BFC4();
    sub_1ABA88934(v245 + 3616);
    goto LABEL_45;
  }

  sub_1ABAD219C(&qword_1EB4D11A0, &qword_1ABF33328);
  v0 = sub_1ABA8E764();
  sub_1ABA888E0(v0, xmmword_1ABF34740);
LABEL_42:
  static EntityClass.entity.getter();
LABEL_34:
  if (sub_1ABA8DEE8())
  {
    sub_1ABA8DEF4(v0, v138, v139, v140, v141, v142, v143, v144, v1178, v1197, v1216, v1235, SBYTE4(v1235));
  }

  else
  {
  }

  sub_1ABAB5B7C();
  sub_1ABA82A00();
}

uint64_t EntityClass.isA(_:)(__int128 *a1)
{
  v2 = a1[1];
  v10 = *a1;
  v11 = *(a1 + 32);
  v3 = v2 == v1[2] && *(&v2 + 1) == v1[3];
  if (v3 || (v4 = *v1, v5 = v1[1], v6 = *(v1 + 32), (sub_1ABF25054() & 1) != 0))
  {
    v7 = 1;
  }

  else
  {
    EntityClass.ancestorClassesSet.getter();
    sub_1ABAA6788();
    v7 = v8;
  }

  return v7 & 1;
}

void static EntityClass.relationshipType.getter()
{
  if (_Records_GDEntityClass_records)
  {
    v0 = sub_1ABB7E070(_Records_GDEntityClass_records);
    v3 = sub_1ABA8882C(v0, v1, v2, v13);
    sub_1ABA8F1BC(v3, v4, v5, v6, v7, v8, v9, v10, v12, v11, v13[0], v13[1], v14);
  }

  else
  {
    __break(1u);
  }
}

void static EntityClass.organism.getter()
{
  if (_Records_GDEntityClass_records)
  {
    v0 = sub_1ABA8CA50(_Records_GDEntityClass_records);
    v3 = sub_1ABA8882C(v0, v1, v2, v13);
    sub_1ABA8F1BC(v3, v4, v5, v6, v7, v8, v9, v10, v12, v11, v13[0], v13[1], v14);
  }

  else
  {
    __break(1u);
  }
}

void static EntityClass.agent.getter()
{
  if (_Records_GDEntityClass_records)
  {
    v0 = sub_1ABA8D1D4(_Records_GDEntityClass_records);
    v3 = sub_1ABA8882C(v0, v1, v2, v13);
    sub_1ABA8F1BC(v3, v4, v5, v6, v7, v8, v9, v10, v12, v11, v13[0], v13[1], v14);
  }

  else
  {
    __break(1u);
  }
}

void static EntityClass.concept.getter()
{
  if (_Records_GDEntityClass_records)
  {
    v0 = sub_1ABA9E070(_Records_GDEntityClass_records);
    v3 = sub_1ABA8882C(v0, v1, v2, v13);
    sub_1ABA8F1BC(v3, v4, v5, v6, v7, v8, v9, v10, v12, v11, v13[0], v13[1], v14);
  }

  else
  {
    __break(1u);
  }
}

void static EntityClass.sex.getter()
{
  if (_Records_GDEntityClass_records)
  {
    v0 = sub_1ABA88E44(_Records_GDEntityClass_records);
    v3 = sub_1ABA8882C(v0, v1, v2, v13);
    sub_1ABA8F1BC(v3, v4, v5, v6, v7, v8, v9, v10, v12, v11, v13[0], v13[1], v14);
  }

  else
  {
    __break(1u);
  }
}

void static EntityClass.unitOfMeasurement.getter()
{
  if (_Records_GDEntityClass_records)
  {
    v0 = sub_1ABA9ECB8(_Records_GDEntityClass_records);
    v3 = sub_1ABA8882C(v0, v1, v2, v13);
    sub_1ABA8F1BC(v3, v4, v5, v6, v7, v8, v9, v10, v12, v11, v13[0], v13[1], v14);
  }

  else
  {
    __break(1u);
  }
}

void static EntityClass.place.getter()
{
  if (_Records_GDEntityClass_records)
  {
    v0 = sub_1ABA9F1E0(_Records_GDEntityClass_records);
    v3 = sub_1ABA8882C(v0, v1, v2, v13);
    sub_1ABA8F1BC(v3, v4, v5, v6, v7, v8, v9, v10, v12, v11, v13[0], v13[1], v14);
  }

  else
  {
    __break(1u);
  }
}

void static EntityClass.occurrence.getter()
{
  if (_Records_GDEntityClass_records)
  {
    v0 = sub_1ABB7E66C(_Records_GDEntityClass_records);
    v3 = sub_1ABA8882C(v0, v1, v2, v13);
    sub_1ABA8F1BC(v3, v4, v5, v6, v7, v8, v9, v10, v12, v11, v13[0], v13[1], v14);
  }

  else
  {
    __break(1u);
  }
}

void static EntityClass.topic.getter()
{
  if (_Records_GDEntityClass_records)
  {
    v0 = sub_1ABB7E660(_Records_GDEntityClass_records);
    v3 = sub_1ABA8882C(v0, v1, v2, v13);
    sub_1ABA8F1BC(v3, v4, v5, v6, v7, v8, v9, v10, v12, v11, v13[0], v13[1], v14);
  }

  else
  {
    __break(1u);
  }
}

void static EntityClass.senderRelationshipType.getter()
{
  if (_Records_GDEntityClass_records)
  {
    v0 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0xF0), *(_Records_GDEntityClass_records + 0xF8), *(_Records_GDEntityClass_records + 0xF8 + 8), v10);
    sub_1ABA8F1BC(v0, v1, v2, v3, v4, v5, v6, v7, v9, v8, v10[0], v10[1], v11);
  }

  else
  {
    __break(1u);
  }
}

void static EntityClass.membershipRelationshipType.getter()
{
  if (_Records_GDEntityClass_records)
  {
    v0 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x108), *(_Records_GDEntityClass_records + 0x110), *(_Records_GDEntityClass_records + 0x110 + 8), v10);
    sub_1ABA8F1BC(v0, v1, v2, v3, v4, v5, v6, v7, v9, v8, v10[0], v10[1], v11);
  }

  else
  {
    __break(1u);
  }
}

void static EntityClass.organizerRelationshipType.getter()
{
  if (_Records_GDEntityClass_records)
  {
    v0 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x120), *(_Records_GDEntityClass_records + 0x128), *(_Records_GDEntityClass_records + 0x128 + 8), v10);
    sub_1ABA8F1BC(v0, v1, v2, v3, v4, v5, v6, v7, v9, v8, v10[0], v10[1], v11);
  }

  else
  {
    __break(1u);
  }
}

void static EntityClass.topicRelationshipType.getter()
{
  if (_Records_GDEntityClass_records)
  {
    v0 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x138), *(_Records_GDEntityClass_records + 0x140), *(_Records_GDEntityClass_records + 0x140 + 8), v10);
    sub_1ABA8F1BC(v0, v1, v2, v3, v4, v5, v6, v7, v9, v8, v10[0], v10[1], v11);
  }

  else
  {
    __break(1u);
  }
}

void static EntityClass.calendarRelationshipType.getter()
{
  if (_Records_GDEntityClass_records)
  {
    v0 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x150), *(_Records_GDEntityClass_records + 0x158), *(_Records_GDEntityClass_records + 0x158 + 8), v10);
    sub_1ABA8F1BC(v0, v1, v2, v3, v4, v5, v6, v7, v9, v8, v10[0], v10[1], v11);
  }

  else
  {
    __break(1u);
  }
}

void static EntityClass.eventRelationshipType.getter()
{
  if (_Records_GDEntityClass_records)
  {
    v0 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x168), *(_Records_GDEntityClass_records + 0x170), *(_Records_GDEntityClass_records + 0x170 + 8), v10);
    sub_1ABA8F1BC(v0, v1, v2, v3, v4, v5, v6, v7, v9, v8, v10[0], v10[1], v11);
  }

  else
  {
    __break(1u);
  }
}

void static EntityClass.textRelationshipType.getter()
{
  if (_Records_GDEntityClass_records)
  {
    v0 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x180), *(_Records_GDEntityClass_records + 0x188), *(_Records_GDEntityClass_records + 0x188 + 8), v10);
    sub_1ABA8F1BC(v0, v1, v2, v3, v4, v5, v6, v7, v9, v8, v10[0], v10[1], v11);
  }

  else
  {
    __break(1u);
  }
}

void static EntityClass.addressRelationshipType.getter()
{
  if (_Records_GDEntityClass_records)
  {
    v0 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x198), *(_Records_GDEntityClass_records + 0x1A0), *(_Records_GDEntityClass_records + 0x1A0 + 8), v10);
    sub_1ABA8F1BC(v0, v1, v2, v3, v4, v5, v6, v7, v9, v8, v10[0], v10[1], v11);
  }

  else
  {
    __break(1u);
  }
}

void static EntityClass.administratorRelationshipType.getter()
{
  if (_Records_GDEntityClass_records)
  {
    v0 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x528), *(_Records_GDEntityClass_records + 0x530), *(_Records_GDEntityClass_records + 0x538), v10);
    sub_1ABA8F1BC(v0, v1, v2, v3, v4, v5, v6, v7, v9, v8, v10[0], v10[1], v11);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1ABA9DE20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  v10 = *&STACK[0x1E00];
  *&STACK[0x1E20] = *&STACK[0x1DF0];
  *&STACK[0x1E30] = v10;
  *(v8 + 3440) = *(v8 + 3392);

  return sub_1ABA856C4(&STACK[0x1E20], va);
}

void sub_1ABA9DE54(uint64_t a1@<X8>)
{
  v3 = a1 | (v2 << 6);
  v4 = *(*(v1 + 48) + 8 * v3);
  v5 = *(*(v1 + 56) + 8 * v3);
}

uint64_t sub_1ABA9DE68()
{
}

void static EntityClass.county.getter()
{
  if (_Records_GDEntityClass_records)
  {
    v0 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x540), *(_Records_GDEntityClass_records + 0x548), *(_Records_GDEntityClass_records + 0x550), v10);
    sub_1ABA8F1BC(v0, v1, v2, v3, v4, v5, v6, v7, v9, v8, v10[0], v10[1], v11);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1ABA9DF58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  v10 = *&STACK[0x1DA0];
  *&STACK[0x1DC0] = *&STACK[0x1D90];
  *&STACK[0x1DD0] = v10;
  *(v8 + 3344) = *(v8 + 3296);

  return sub_1ABA856C4(&STACK[0x1DC0], va);
}

uint64_t sub_1ABA9DFA0()
{

  return sub_1ABF24B94();
}

void static EntityClass.visualIdentifierRelationshipType.getter()
{
  if (_Records_GDEntityClass_records)
  {
    v0 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x558), *(_Records_GDEntityClass_records + 0x560), *(_Records_GDEntityClass_records + 0x568), v10);
    sub_1ABA8F1BC(v0, v1, v2, v3, v4, v5, v6, v7, v9, v8, v10[0], v10[1], v11);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1ABA9E070@<X0>(uint64_t a1@<X8>)
{
  v1 = *(a1 + 104);
  v2 = *(a1 + 112);
  return *(a1 + 96);
}

uint64_t sub_1ABA9E0A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  v10 = *&STACK[0x1D70];
  *&STACK[0x1D90] = *&STACK[0x1D60];
  *&STACK[0x1DA0] = v10;
  *(v8 + 3296) = *(v8 + 3248);

  return sub_1ABA856C4(&STACK[0x1D90], va);
}

uint64_t sub_1ABA9E0F4()
{

  return sub_1ABF24BE4();
}

uint64_t sub_1ABA9E118()
{
}

void static EntityClass.song.getter()
{
  if (_Records_GDEntityClass_records)
  {
    v0 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x570), *(_Records_GDEntityClass_records + 0x578), *(_Records_GDEntityClass_records + 0x580), v10);
    sub_1ABA8F1BC(v0, v1, v2, v3, v4, v5, v6, v7, v9, v8, v10[0], v10[1], v11);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1ABA9E1B4(uint64_t result)
{
  *(v1 + 4) = result;
  *v2 = result;
  return result;
}

uint64_t sub_1ABA9E1C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  v10 = *&STACK[0x1D40];
  *&STACK[0x1D60] = *&STACK[0x1D30];
  *&STACK[0x1D70] = v10;
  *(v8 + 3248) = *(v8 + 3200);

  return sub_1ABA856C4(&STACK[0x1D60], va);
}

uint64_t sub_1ABA9E200()
{

  return sub_1ABF24BE4();
}

__n128 sub_1ABA9E218()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  v4 = *(v0 + 56);
  v5 = *(v0 + 64);
  v6 = *(v0 + 72);
  v7 = *(v0 + 80);
  return *(v0 + 88);
}

void static EntityClass.songRelationshipType.getter()
{
  if (_Records_GDEntityClass_records)
  {
    v0 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x588), *(_Records_GDEntityClass_records + 0x590), *(_Records_GDEntityClass_records + 0x598), v10);
    sub_1ABA8F1BC(v0, v1, v2, v3, v4, v5, v6, v7, v9, v8, v10[0], v10[1], v11);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1ABA9E2C4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v6 - 360) = v5;
  *(v6 - 344) = a5;
  *(v6 - 352) = a4;
  *(v6 - 72) = a3;
  *(v6 - 376) = a2;
  *(v6 - 368) = result;
  return result;
}

uint64_t sub_1ABA9E300(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  v10 = *&STACK[0x1D10];
  *&STACK[0x1D30] = *&STACK[0x1D00];
  *&STACK[0x1D40] = v10;
  *(v8 + 3200) = *(v8 + 3152);

  return sub_1ABA856C4(&STACK[0x1D30], va);
}

uint64_t sub_1ABA9E334@<X0>(uint64_t a1@<X8>)
{
  v2 = *(a1 + 16);

  return sub_1ABF24BD4();
}

void static EntityClass.animal.getter()
{
  if (_Records_GDEntityClass_records)
  {
    v0 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x5A0), *(_Records_GDEntityClass_records + 0x5A8), *(_Records_GDEntityClass_records + 0x5B0), v10);
    sub_1ABA8F1BC(v0, v1, v2, v3, v4, v5, v6, v7, v9, v8, v10[0], v10[1], v11);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1ABA9E3F4()
{
  v2 = (*(v1 + 48) + v0);
  v4 = *v2;
  result = v2[1];
  v5 = v2[2];
  v6 = v2[3];
  return result;
}

uint64_t sub_1ABA9E408(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  v10 = *&STACK[0x1CB0];
  *&STACK[0x1CD0] = *&STACK[0x1CA0];
  *&STACK[0x1CE0] = v10;
  *(v8 + 3104) = *(v8 + 3056);

  return sub_1ABA856C4(&STACK[0x1CD0], va);
}

void static EntityClass.softwareRelationshipType.getter()
{
  if (_Records_GDEntityClass_records)
  {
    v0 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x5B8), *(_Records_GDEntityClass_records + 0x5C0), *(_Records_GDEntityClass_records + 0x5C8), v10);
    sub_1ABA8F1BC(v0, v1, v2, v3, v4, v5, v6, v7, v9, v8, v10[0], v10[1], v11);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1ABA9E4FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  v10 = *&STACK[0x1C50];
  *&STACK[0x1C70] = *&STACK[0x1C40];
  *&STACK[0x1C80] = v10;
  *(v8 + 3008) = *(v8 + 2960);

  return sub_1ABA856C4(&STACK[0x1C70], va);
}

uint64_t sub_1ABA9E550(uint64_t a1, uint64_t a2)
{

  return sub_1ABB2E9FC(a1, a2, v2, v3);
}

void sub_1ABA9E568(int a1@<W8>)
{
  *(v1 - 200) = a1;
  *(v1 - 196) = a1;
  *(v1 - 192) = a1;
  *(v1 - 188) = a1;
  *(v1 - 184) = a1;
  *(v1 - 180) = a1;
  *(v1 - 176) = a1;
  *(v1 - 172) = a1;
  *(v1 - 72) = a1;
}

void sub_1ABA9E580(int a1@<W8>)
{
  *(v1 - 200) = a1;
  *(v1 - 192) = a1;
  *(v1 - 184) = a1;
}

_BYTE *sub_1ABA9E590@<X0>(uint64_t a1@<X8>)
{
  v4 = *(v1 - 256);
  *v4 = v2;
  v5 = *(v3 - 176);
  v6 = **(v3 - 184);
  return &v4[a1];
}

void static EntityClass.vehicle.getter()
{
  if (_Records_GDEntityClass_records)
  {
    v0 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x5D0), *(_Records_GDEntityClass_records + 0x5D8), *(_Records_GDEntityClass_records + 0x5E0), v10);
    sub_1ABA8F1BC(v0, v1, v2, v3, v4, v5, v6, v7, v9, v8, v10[0], v10[1], v11);
  }

  else
  {
    __break(1u);
  }
}

BOOL sub_1ABA9E624(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t sub_1ABA9E64C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  v10 = *&STACK[0x1BF0];
  *&STACK[0x1C10] = *&STACK[0x1BE0];
  *&STACK[0x1C20] = v10;
  *(v8 + 2912) = *(v8 + 2864);

  return sub_1ABA856C4(&STACK[0x1C10], va);
}

uint64_t sub_1ABA9E6A8()
{

  return sub_1ABF24BC4();
}

_BYTE *sub_1ABA9E6D0@<X0>(uint64_t a1@<X8>)
{
  v4 = *(v1 - 256);
  *v4 = v2;
  v5 = *(v3 - 192);
  v6 = **(v3 - 200);
  return &v4[a1];
}

void static EntityClass.onFoot.getter()
{
  if (_Records_GDEntityClass_records)
  {
    v0 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x5E8), *(_Records_GDEntityClass_records + 0x5F0), *(_Records_GDEntityClass_records + 0x5F8), v10);
    sub_1ABA8F1BC(v0, v1, v2, v3, v4, v5, v6, v7, v9, v8, v10[0], v10[1], v11);
  }

  else
  {
    __break(1u);
  }
}

void static EntityClass.automobile.getter()
{
  if (_Records_GDEntityClass_records)
  {
    v0 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x600), *(_Records_GDEntityClass_records + 0x608), *(_Records_GDEntityClass_records + 0x610), v10);
    sub_1ABA8F1BC(v0, v1, v2, v3, v4, v5, v6, v7, v9, v8, v10[0], v10[1], v11);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1ABA9E7E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  v10 = *&STACK[0x1B90];
  *&STACK[0x1BB0] = *&STACK[0x1B80];
  *&STACK[0x1BC0] = v10;
  *(v8 + 2816) = *(v8 + 2768);

  return sub_1ABA856C4(&STACK[0x1BB0], va);
}

uint64_t sub_1ABA9E830()
{

  return swift_bridgeObjectRetain_n();
}

uint64_t sub_1ABA9E84C()
{

  return sub_1ABF24E64();
}

uint64_t sub_1ABA9E87C()
{
  v3 = *(v0 + v1);
}

uint64_t sub_1ABA9E894()
{
  v3 = *(v1 + v0);
}

uint64_t sub_1ABA9E8E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  v10 = *&STACK[0x1B30];
  *&STACK[0x1B50] = *&STACK[0x1B20];
  *&STACK[0x1B60] = v10;
  *(v8 + 2720) = *(v8 + 2672);

  return sub_1ABA856C4(&STACK[0x1B50], va);
}

void sub_1ABA9E918(__n128 a1)
{
  *v1 = a1;
  *(v1 + 16) = 0u;
  *(v1 + 32) = 0u;
  *(v1 + 48) = 0u;
  *(v1 + 57) = 0u;
}

void sub_1ABA9E92C()
{

  JUMPOUT(0x1AC5A9410);
}

uint64_t sub_1ABA9E944()
{
  v2 = *(*(v0 - 104) + 16);

  return sub_1ABF24BD4();
}

uint64_t sub_1ABA9E970(uint64_t a1, uint64_t a2)
{
  *a2 = 0xD000000000000035;
  *(a2 + 8) = v2;
  *(a2 + 16) = 2;

  return swift_willThrow();
}

uint64_t sub_1ABA9E99C()
{

  return swift_dynamicCast();
}

void static EntityClass.plane.getter()
{
  if (_Records_GDEntityClass_records)
  {
    v0 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x618), *(_Records_GDEntityClass_records + 0x620), *(_Records_GDEntityClass_records + 0x628), v10);
    sub_1ABA8F1BC(v0, v1, v2, v3, v4, v5, v6, v7, v9, v8, v10[0], v10[1], v11);
  }

  else
  {
    __break(1u);
  }
}

void sub_1ABA9EA40(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t sub_1ABA9EA74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  v10 = *&STACK[0x1AD0];
  *&STACK[0x1AF0] = *&STACK[0x1AC0];
  *&STACK[0x1B00] = v10;
  *(v8 + 2624) = *(v8 + 2576);

  return sub_1ABA856C4(&STACK[0x1AF0], va);
}

uint64_t sub_1ABA9EAD4()
{

  return sub_1ABD66154((v0 - 144));
}

void static EntityClass.bicycle.getter()
{
  if (_Records_GDEntityClass_records)
  {
    v0 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x630), *(_Records_GDEntityClass_records + 0x638), *(_Records_GDEntityClass_records + 0x640), v10);
    sub_1ABA8F1BC(v0, v1, v2, v3, v4, v5, v6, v7, v9, v8, v10[0], v10[1], v11);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1ABA9EB90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  v10 = *&STACK[0x1A70];
  *&STACK[0x1A90] = *&STACK[0x1A60];
  *&STACK[0x1AA0] = v10;
  *(v8 + 2528) = *(v8 + 2480);

  return sub_1ABA856C4(&STACK[0x1A90], va);
}

void *sub_1ABA9EBD0()
{
  v3 = *(v0 + *v1);
  v4 = v3[6];
  v5 = v3[5];

  return sub_1ABA93E20(v3 + 2, v5);
}

uint64_t sub_1ABA9EBF4()
{
  v2 = *(*(v0 - 152) + 16);

  return sub_1ABF24BD4();
}

uint64_t sub_1ABA9EC20()
{

  return sub_1ABA91D48(v2, v1, v0, v3 - 128);
}

void static EntityClass.ship.getter()
{
  if (_Records_GDEntityClass_records)
  {
    v0 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x648), *(_Records_GDEntityClass_records + 0x650), *(_Records_GDEntityClass_records + 0x658), v10);
    sub_1ABA8F1BC(v0, v1, v2, v3, v4, v5, v6, v7, v9, v8, v10[0], v10[1], v11);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1ABA9ECB8@<X0>(uint64_t a1@<X8>)
{
  v1 = *(a1 + 152);
  v2 = *(a1 + 160);
  return *(a1 + 144);
}

uint64_t sub_1ABA9ECE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  v10 = *&STACK[0x1A10];
  *&STACK[0x1A30] = *&STACK[0x1A00];
  *&STACK[0x1A40] = v10;
  *(v8 + 2432) = *(v8 + 2384);

  return sub_1ABA856C4(&STACK[0x1A30], va);
}

uint64_t sub_1ABA9ED2C()
{
  v2 = *(v0 + 40);

  return sub_1ABF25234();
}

uint64_t sub_1ABA9ED44()
{
  v2 = *(*(v0 - 96) + 16);

  return sub_1ABF24BD4();
}

uint64_t sub_1ABA9ED70()
{
  v3 = *(v0 + 1256);
  v4 = *(v0 + 1264);
  v5 = *(v0 + 1248);

  return sub_1ABA8882C(v5, v3, v4, v1 - 144);
}

void static EntityClass.bus.getter()
{
  if (_Records_GDEntityClass_records)
  {
    v0 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x660), *(_Records_GDEntityClass_records + 0x668), *(_Records_GDEntityClass_records + 0x670), v10);
    sub_1ABA8F1BC(v0, v1, v2, v3, v4, v5, v6, v7, v9, v8, v10[0], v10[1], v11);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1ABA9EE34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  v10 = *&STACK[0x19B0];
  *&STACK[0x19D0] = *&STACK[0x19A0];
  *&STACK[0x19E0] = v10;
  *(v8 + 2336) = *(v8 + 2288);

  return sub_1ABA856C4(&STACK[0x19D0], va);
}

void sub_1ABA9EEA8()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = *(v0 + 32);
}

uint64_t sub_1ABA9EECC()
{
  v3 = *(v0 + 3488);
  v4 = *(v0 + 3496);
  v5 = *(v0 + 3480);

  return sub_1ABA91D48(v5, v3, v4, v1 - 144);
}

void static EntityClass.locomotiveTrain.getter()
{
  if (_Records_GDEntityClass_records)
  {
    v0 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x678), *(_Records_GDEntityClass_records + 0x680), *(_Records_GDEntityClass_records + 0x688), v10);
    sub_1ABA8F1BC(v0, v1, v2, v3, v4, v5, v6, v7, v9, v8, v10[0], v10[1], v11);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1ABA9EF7C()
{

  return sub_1ABF23D34();
}

uint64_t sub_1ABA9EF98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  v10 = *&STACK[0x1950];
  *&STACK[0x1970] = *&STACK[0x1940];
  *&STACK[0x1980] = v10;
  *(v8 + 2240) = *(v8 + 2192);

  return sub_1ABA856C4(&STACK[0x1970], va);
}

void sub_1ABA9EFE4()
{
  v1 = *(v0 - 112);
  v3 = *(v0 - 200);
  v2 = *(v0 - 192);
}

uint64_t sub_1ABA9F004()
{
  v3 = *(v0 + 632);
  v4 = *(v0 + 640);
  v5 = *(v0 + 624);

  return sub_1ABA8882C(v5, v3, v4, v1 - 144);
}

uint64_t sub_1ABA9F054()
{

  return sub_1ABF25234();
}

uint64_t sub_1ABA9F070(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  v10 = *&STACK[0x18F0];
  *&STACK[0x1910] = *&STACK[0x18E0];
  *&STACK[0x1920] = v10;
  *(v8 + 2144) = *(v8 + 2096);

  return sub_1ABA856C4(&STACK[0x1910], va);
}

void sub_1ABA9F0B8()
{
  v1 = *(v0 - 112);
  v3 = *(v0 - 200);
  v2 = *(v0 - 192);
}

void *sub_1ABA9F0E0(void *a1)
{

  return memcpy(a1, v1, 0x70uLL);
}

uint64_t sub_1ABA9F0F8()
{
  v3 = *(v1 + 8 * v0 + 32);
}

uint64_t sub_1ABA9F138()
{
  v2 = *v0;

  return sub_1ABF24A34();
}

uint64_t sub_1ABA9F154(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  v10 = *&STACK[0x1890];
  *&STACK[0x18B0] = *&STACK[0x1880];
  *&STACK[0x18C0] = v10;
  *(v8 + 2048) = *(v8 + 2000);

  return sub_1ABA856C4(&STACK[0x18B0], va);
}

uint64_t _s20IntelligencePlatform14EntitySourceIDV_6sourceACSS_SSSgtcfC_0@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = result;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  return result;
}

uint64_t sub_1ABA9F1BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37)
{

  return sub_1ABAE42A8(v37 - 256, &a37);
}

uint64_t sub_1ABA9F1E0@<X0>(uint64_t a1@<X8>)
{
  v1 = *(a1 + 176);
  v2 = *(a1 + 184);
  return *(a1 + 168);
}

uint64_t sub_1ABA9F210(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  v10 = *&STACK[0x1830];
  *&STACK[0x1850] = *&STACK[0x1820];
  *&STACK[0x1860] = v10;
  *(v8 + 1952) = *(v8 + 1904);

  return sub_1ABA856C4(&STACK[0x1850], va);
}

void sub_1ABA9F244()
{

  JUMPOUT(0x1AC5A9410);
}

uint64_t sub_1ABA9F29C()
{

  return sub_1ABF24F84();
}

_BYTE *sub_1ABA9F2B4()
{
  v3 = *(v2 - 136);
  v4 = *(*(v2 - 128) + 48);
  *v0 = v1;
  v5 = **(v2 - 152);
  return &v0[v4];
}

uint64_t sub_1ABA9F314(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  v10 = *&STACK[0x17D0];
  *&STACK[0x17F0] = *&STACK[0x17C0];
  *&STACK[0x1800] = v10;
  *(v8 + 1856) = *(v8 + 1808);

  return sub_1ABA856C4(&STACK[0x17F0], va);
}

void sub_1ABA9F360(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t (*a22)(uint64_t))
{

  sub_1ABCA18C0(a1, v24 - 112, v22, v23, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
}

void sub_1ABA9F384(unint64_t a1@<X8>, __n128 a2@<Q0>)
{
  v4[1] = a2;
  v4[2].n128_u64[0] = a1;
  v4[2].n128_u64[1] = v2;
  v4[3].n128_u16[0] = v3;
}

uint64_t sub_1ABA9F398(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, char a38)
{

  return sub_1ABAE42A8(v38 - 232, &a38);
}

uint64_t sub_1ABA9F3B0@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + a1);

  return sub_1ABF24344();
}

uint64_t sub_1ABA9F418(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  v10 = *&STACK[0x1770];
  *&STACK[0x1790] = *&STACK[0x1760];
  *&STACK[0x17A0] = v10;
  *(v8 + 1760) = *(v8 + 1712);

  return sub_1ABA856C4(&STACK[0x1790], va);
}

uint64_t sub_1ABA9F458()
{

  return sub_1ABF252C4();
}

uint64_t sub_1ABA9F4A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  v10 = *&STACK[0x1710];
  *&STACK[0x1730] = *&STACK[0x1700];
  *&STACK[0x1740] = v10;
  *(v8 + 1664) = *(v8 + 1616);

  return sub_1ABA856C4(&STACK[0x1730], va);
}

void sub_1ABA9F4E8()
{
  *(v0 - 160) = 0;
  *(v0 - 152) = 0;
  *(v0 - 144) = 0;
}

uint64_t *sub_1ABA9F504(uint64_t a1)
{
  *(v2 - 72) = v1;

  return sub_1ABD811F4((v2 - 72), a1);
}

uint64_t sub_1ABA9F560(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  v10 = *&STACK[0x16B0];
  *&STACK[0x16D0] = *&STACK[0x16A0];
  *&STACK[0x16E0] = v10;
  *(v8 + 1568) = *(v8 + 1520);

  return sub_1ABA856C4(&STACK[0x16D0], va);
}

uint64_t sub_1ABA9F594@<X0>(uint64_t a1@<X8>)
{
  v3 = *(a1 - 256);
  v4 = *(v1 - 152);

  return sub_1ABF24F84();
}

uint64_t sub_1ABA9F5B8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return sub_1ABAD219C(a3, a4);
}

uint64_t sub_1ABA9F620()
{
}

uint64_t sub_1ABA9F640()
{

  return swift_allocObject();
}

uint64_t sub_1ABA9F670(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  v10 = *&STACK[0x1650];
  *&STACK[0x1670] = *&STACK[0x1640];
  *&STACK[0x1680] = v10;
  *(v8 + 1472) = *(v8 + 1424);

  return sub_1ABA856C4(&STACK[0x1670], va);
}

uint64_t sub_1ABA9F6A4()
{

  return sub_1ABF252C4();
}

uint64_t sub_1ABA9F6FC(uint64_t result)
{
  *(result + 16) = v2;
  *(result + 24) = v1;
  return result;
}

uint64_t sub_1ABA9F760(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  v10 = *&STACK[0x15F0];
  *&STACK[0x1610] = *&STACK[0x15E0];
  *&STACK[0x1620] = v10;
  *(v8 + 1376) = *(v8 + 1328);

  return sub_1ABA856C4(&STACK[0x1610], va);
}

uint64_t sub_1ABA9F7F0@<X0>(uint64_t a1@<X8>)
{
  v2 = *(a1 - 256);

  return swift_dynamicCast();
}

uint64_t sub_1ABA9F830(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  v10 = *&STACK[0x1590];
  *&STACK[0x15B0] = *&STACK[0x1580];
  *&STACK[0x15C0] = v10;
  *(v8 + 1280) = *(v8 + 1232);

  return sub_1ABA856C4(&STACK[0x15B0], va);
}

void sub_1ABA9F888()
{
  *(v0 - 160) = 0;
  *(v0 - 152) = 0;
  *(v0 - 144) = 0;
}

uint64_t sub_1ABA9F8B8()
{
}

uint64_t sub_1ABA9F908(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  v10 = *&STACK[0x1530];
  *&STACK[0x1550] = *&STACK[0x1520];
  *&STACK[0x1560] = v10;
  *(v8 + 1184) = *(v8 + 1136);

  return sub_1ABA856C4(&STACK[0x1550], va);
}

uint64_t sub_1ABA9F94C()
{
  v2 = *(v1 - 144);
  v3 = *(*(v1 - 152) + 8);
  return v0;
}

__n128 sub_1ABA9F9B8()
{
  v1 = *(v0 + 144);
  *(v0 + 192) = *(v0 + 128);
  *(v0 + 208) = v1;
  *(v0 + 224) = *(v0 + 160);
  result = *(v0 + 170);
  *(v0 + 234) = result;
  return result;
}

uint64_t sub_1ABA9F9F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  v10 = *&STACK[0x14D0];
  *&STACK[0x14F0] = *&STACK[0x14C0];
  *&STACK[0x1500] = v10;
  *(v8 + 1088) = *(v8 + 1040);

  return sub_1ABA856C4(&STACK[0x14F0], va);
}

uint64_t sub_1ABA9FA38()
{
  v1 = *(v0 + 32);
  v2 = *(v1 + 16);
  return v1;
}

uint64_t sub_1ABA9FA54()
{
  *(v1 - 112) = v0;

  return sub_1ABF24BC4();
}

uint64_t sub_1ABA9FABC()
{

  return sub_1ABF24E64();
}

uint64_t sub_1ABA9FAD8@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  if (a1)
  {
    return v2;
  }

  else
  {
    return a2;
  }
}

uint64_t sub_1ABA9FAFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  v10 = *&STACK[0x1470];
  *&STACK[0x1490] = *&STACK[0x1460];
  *&STACK[0x14A0] = v10;
  *(v8 + 992) = *(v8 + 944);

  return sub_1ABA856C4(&STACK[0x1490], va);
}

uint64_t sub_1ABA9FB48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);

  return sub_1ABB66290(v10, va, v12, v11, a5, a6, a7, a8);
}

uint64_t sub_1ABA9FBD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  v10 = *&STACK[0x1410];
  *&STACK[0x1430] = *&STACK[0x1400];
  *&STACK[0x1440] = v10;
  *(v8 + 896) = *(v8 + 848);

  return sub_1ABA856C4(&STACK[0x1430], va);
}

uint64_t sub_1ABA9FC04()
{

  return sub_1ABF24D34();
}

uint64_t sub_1ABA9FC20()
{
  *(v1 - 112) = v0;

  return sub_1ABF24BC4();
}

uint64_t sub_1ABA9FC50()
{
}

BOOL sub_1ABA9FC84(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t sub_1ABA9FCF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  v10 = *&STACK[0x13B0];
  *&STACK[0x13D0] = *&STACK[0x13A0];
  *&STACK[0x13E0] = v10;
  *(v8 + 800) = *(v8 + 752);

  return sub_1ABA856C4(&STACK[0x13D0], va);
}

void sub_1ABA9FD28()
{

  JUMPOUT(0x1AC5A9410);
}

uint64_t sub_1ABA9FD50()
{

  return sub_1ABF24E64();
}

uint64_t sub_1ABA9FD70()
{
  v2 = *(v0 + 8);

  return type metadata accessor for TypedEntityIdentifier();
}

uint64_t sub_1ABA9FDA8()
{
  v2 = *(v0 + 152);

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t sub_1ABA9FDC0()
{

  return sub_1ABF24C54();
}

__n128 *sub_1ABA9FDD8(__n128 *result, __n128 a2)
{
  result[1] = a2;
  result[2].n128_u64[0] = v3;
  result[2].n128_u64[1] = v2;
  return result;
}

uint64_t sub_1ABA9FDFC()
{
  v3 = *(v1 - 72);

  return sub_1ABA84B54(v0);
}

uint64_t sub_1ABA9FE54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  v10 = *&STACK[0x1350];
  *&STACK[0x1370] = *&STACK[0x1340];
  *&STACK[0x1380] = v10;
  *(v8 + 704) = *(v8 + 656);

  return sub_1ABA856C4(&STACK[0x1370], va);
}

uint64_t sub_1ABA9FE88()
{
  v2 = *(v0 - 144);

  return sub_1ABF24EC4();
}

uint64_t sub_1ABA9FEB0()
{
  *(v3 - 128) = v0;

  return sub_1ABC6AA04(v1, v2);
}

uint64_t sub_1ABA9FEF4()
{

  return swift_getWitnessTable();
}

uint64_t sub_1ABA9FF14()
{
  v2 = *(v0 - 176);

  return sub_1ABF226F4();
}

void sub_1ABA9FF50()
{

  static EntityClass.bicyclingActivity.getter();
}

void *sub_1ABA9FF84(void *a1, const void *a2)
{

  return memmove(a1, a2, 112 * v2);
}

uint64_t sub_1ABA9FFAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  v10 = *&STACK[0x1290];
  *&STACK[0x12B0] = *&STACK[0x1280];
  *&STACK[0x12C0] = v10;
  *(v8 + 512) = *(v8 + 464);

  return sub_1ABA856C4(&STACK[0x12B0], va);
}

uint64_t sub_1ABA9FFF0@<X0>(uint64_t a1@<X8>)
{
  *(v1 - 112) = a1;

  return sub_1ABF24BC4();
}

uint64_t sub_1ABAA001C()
{
  v2 = *(v0 - 200);
  v3 = *(v0 - 192);

  return sub_1ABF23DD4();
}

uint64_t sub_1ABAA003C@<X0>(uint64_t a1@<X8>)
{
  *(v1 + 32) = a1;
  *(v3 - 144) = v2;
}

uint64_t sub_1ABAA009C()
{

  return sub_1ABF24F84();
}

uint64_t *sub_1ABAA00B4@<X0>(uint64_t a1@<X8>)
{
  *(v1 + 272) = a1;

  return sub_1ABA93DC0((v1 + 240));
}

uint64_t sub_1ABAA00F8(uint64_t a1)
{
  v4 = *(v2 + 56) + 40 * a1;

  return sub_1ABA93E64(v4, v1);
}

uint64_t sub_1ABAA0128(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  v10 = *&STACK[0x1230];
  *&STACK[0x1250] = *&STACK[0x1220];
  *&STACK[0x1260] = v10;
  *(v8 + 416) = *(v8 + 368);

  return sub_1ABA856C4(&STACK[0x1250], va);
}

uint64_t sub_1ABAA0178()
{

  return sub_1ABF24B94();
}

uint64_t sub_1ABAA01A4()
{
  v2 = *(v0 + 208);
  v3 = *(v0 + 216);

  return sub_1ABF23DD4();
}

uint64_t sub_1ABAA01C4()
{
  v2 = *(v0 - 272);

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t sub_1ABAA023C()
{

  return sub_1ABF23D34();
}

uint64_t sub_1ABAA0260()
{

  return swift_arrayInitWithCopy();
}

uint64_t sub_1ABAA02C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  v10 = *&STACK[0x11D0];
  *&STACK[0x11F0] = *&STACK[0x11C0];
  *&STACK[0x1200] = v10;
  *(v8 + 320) = *(v8 + 272);

  return sub_1ABA856C4(&STACK[0x11F0], va);
}

uint64_t sub_1ABAA0318()
{
  *(v1 - 112) = v0;

  return sub_1ABF24BC4();
}

uint64_t sub_1ABAA03A4()
{

  return sub_1ABF24F84();
}

uint64_t sub_1ABAA03E8()
{

  return sub_1ABF23BB4();
}

uint64_t sub_1ABAA0408(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  v10 = *&STACK[0x1170];
  *&STACK[0x1190] = *&STACK[0x1160];
  *&STACK[0x11A0] = v10;
  *(v8 + 224) = *(v8 + 176);

  return sub_1ABA856C4(&STACK[0x1190], va);
}

uint64_t sub_1ABAA043C()
{
  v2 = *(v0 - 88);

  return sub_1ABF24F14();
}

id sub_1ABAA045C()
{

  return sub_1ABC501D0(v0, v1);
}

uint64_t sub_1ABAA0520(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  v10 = *&STACK[0x1110];
  *&STACK[0x1130] = *&STACK[0x1100];
  *&STACK[0x1140] = v10;
  *(v8 + 128) = *(v8 + 80);

  return sub_1ABA856C4(&STACK[0x1130], va);
}

uint64_t sub_1ABAA0554()
{

  return swift_unknownObjectRelease();
}

uint64_t sub_1ABAA05C0(unint64_t *a1)
{

  return sub_1ABAB47C4(a1, v1, v2);
}

uint64_t sub_1ABAA05E4()
{
  v3 = *(v0 + 8 * v1 + 32);
}

void sub_1ABAA0600(char a1@<W8>)
{
  *(v1 - 112) = 0;
  *(v1 - 104) = a1;

  JUMPOUT(0x1AC5A9960);
}

uint64_t sub_1ABAA063C(uint64_t result)
{
  v1 = *(result + 24);
  v2 = *(result + 16) + 1;
  return result;
}

uint64_t sub_1ABAA06D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  v10 = *&STACK[0x10E0];
  *&STACK[0x1100] = *&STACK[0x10D0];
  *&STACK[0x1110] = v10;
  *(v8 + 80) = *(v8 + 32);

  return sub_1ABA856C4(&STACK[0x1100], va);
}

void sub_1ABAA0710()
{
  *(v0 + 16) = v2;
  v5 = v0 + 16 * v4;
  *(v5 + 32) = v3;
  *(v5 + 40) = v1;
}

uint64_t sub_1ABAA073C()
{
  v3 = v0[2];
  v4 = v0[3];
  *(v1 - 104) = v0[1];
  *(v1 - 96) = v3;
  *(v1 - 88) = v4;
  *(v1 - 65) = 1;
}

void sub_1ABAA0764(__n128 a1, __n128 a2, __n128 a3, __n128 a4)
{
  *(v4 + 41) = a4;
  *(v4 + 32) = a3;
  *(v5 - 176) = a1;
  *(v5 - 160) = a2;
  v6 = *(v5 - 120);
}

uint64_t sub_1ABAA0778()
{
  v2 = *(v0 - 264);
}

uint64_t sub_1ABAA0790()
{
  v3 = *(v0 + 168);

  return sub_1ABC43DF0(v1, 1, v3);
}

void static EntityClass.modeOfTransportation.getter()
{
  if (_Records_GDEntityClass_records)
  {
    v0 = sub_1ABB7E13C(_Records_GDEntityClass_records);
    v3 = sub_1ABA8882C(v0, v1, v2, v13);
    sub_1ABA8F1BC(v3, v4, v5, v6, v7, v8, v9, v10, v12, v11, v13[0], v13[1], v14);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1ABAA088C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  v10 = *&STACK[0x1080];
  *&STACK[0x10A0] = *&STACK[0x1070];
  *&STACK[0x10B0] = v10;
  *(v8 + 4056) = *(v8 + 4008);

  return sub_1ABA856C4(&STACK[0x10A0], va);
}

void sub_1ABAA08D0(uint64_t a1@<X8>)
{
  v2 = a1 + (v1 << 6);
  v4 = *(v2 + 16);
  v3 = *(v2 + 24);
}

void sub_1ABAA08F0()
{
  *(v0 - 168) = 0;
  *(v0 - 160) = 0;
  *(v0 - 152) = 0;
  *(v0 - 144) = 0;
}

uint64_t sub_1ABAA092C()
{
  v4 = *(v2 - 240);

  return sub_1ABD9BEDC(v0, v4, v1);
}

void sub_1ABAA0954()
{
  *(v0 + 16) = v1;
  v5 = v0 + 16 * v3;
  *(v5 + 32) = v2;
  *(v5 + 40) = v4;
}

uint64_t sub_1ABAA0978()
{

  return sub_1ABF24C54();
}

void static EntityClass.automobileModel.getter()
{
  if (_Records_GDEntityClass_records)
  {
    v0 = sub_1ABAA6680(_Records_GDEntityClass_records);
    v3 = sub_1ABA8882C(v0, v1, v2, v13);
    sub_1ABA8F1BC(v3, v4, v5, v6, v7, v8, v9, v10, v12, v11, v13[0], v13[1], v14);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1ABAA0A44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  v10 = *&STACK[0x1020];
  *&STACK[0x1040] = *&STACK[0x1010];
  *&STACK[0x1050] = v10;
  *(v8 + 3960) = *(v8 + 3912);

  return sub_1ABA856C4(&STACK[0x1040], va);
}

__n128 sub_1ABAA0A78()
{
  v2 = *(v0 + 48);
  v3 = *(v0 + 50);
  *(v1 - 272) = *(v0 + 72);
  return *(v0 + 56);
}

void sub_1ABAA0AB0(uint64_t a1@<X8>)
{
  v2 = *(v1 - 120);
  v4 = *(v1 - 136);
  v3 = *(v1 - 128);
  *(v1 - 152) = *(v1 - 152);
  *(v1 - 144) = a1;
  *(v1 - 136) = v4;
  *(v1 - 128) = v3;
  *(v1 - 120) = v2;
}

void sub_1ABAA0ACC(unint64_t a1@<X8>, __n128 a2@<Q0>)
{
  v4[1] = a2;
  v4[2].n128_u64[0] = a1;
  v4[2].n128_u64[1] = v2;
  v4[3].n128_u16[0] = v3;
}

uint64_t sub_1ABAA0AE8()
{

  return sub_1ABF252C4();
}

uint64_t sub_1ABAA0B0C()
{
  v2 = *(v0 - 192);

  return sub_1ABF24BE4();
}

_WORD *sub_1ABAA0B68(_WORD *result)
{
  *result = 0;
  v2 = *(v1 + 16);
  return result;
}

uint64_t sub_1ABAA0BA0()
{
}

uint64_t sub_1ABAA0BBC()
{
  *(v3 - 120) = v0;
  v4 = *(v1 + 8);
  return v2;
}

uint64_t sub_1ABAA0C04()
{
  v4 = *(v2 - 208);

  return sub_1ABD9BEDC(v1, v4, v0);
}

uint64_t sub_1ABAA0C20()
{
  v2 = *(*(v0 - 88) + 16);

  return sub_1ABF24BD4();
}

uint64_t sub_1ABAA0C48()
{
  result = v0 - 120;
  v2 = *(v0 - 144);
  return result;
}

uint64_t sub_1ABAA0C5C@<X0>(uint64_t a1@<X8>)
{
  v1 = *(a1 + 3512);
  v2 = *(a1 + 3520);
  return *(a1 + 3504);
}

uint64_t sub_1ABAA0C9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  v10 = *&STACK[0x2070];
  *&STACK[0x2090] = *&STACK[0x2060];
  *&STACK[0x20A0] = v10;
  *(v8 + 4064) = *(v8 + 4016);

  return sub_1ABA856C4(&STACK[0x2090], va);
}

id sub_1ABAA0CD0()
{
  v4 = *(v2 + 8 * v1);

  return objc_allocWithZone(v0);
}

void sub_1ABAA0D10(unint64_t a1@<X8>, __n128 a2@<Q0>)
{
  v4[2] = a2;
  v4[3].n128_u64[0] = a1;
  v4[3].n128_u64[1] = v2;
  v4[4].n128_u8[0] = v3;
}

void sub_1ABAA0D2C()
{
}

uint64_t sub_1ABAA0D44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  v10 = *&STACK[0x2010];
  *&STACK[0x2030] = *&STACK[0x2000];
  *&STACK[0x2040] = v10;
  *(v8 + 3968) = *(v8 + 3920);

  return sub_1ABA856C4(&STACK[0x2030], va);
}

uint64_t sub_1ABAA0D78()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[6];
  v5 = v0[8];
  v6 = v0[10];
}

id sub_1ABAA0D98(void *a1)
{

  return [a1 (v1 + 3507)];
}

id sub_1ABAA0DBC()
{
  v3 = *(v0 + 8 * v1 + 32);

  return v3;
}

uint64_t sub_1ABAA0DD4()
{

  return sub_1ABA88934(&STACK[0x650]);
}

uint64_t sub_1ABAA0E1C()
{

  return sub_1ABA88934(&STACK[0x740]);
}

uint64_t *sub_1ABAA0E54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  a13 = a1;
  a14 = a2;

  return sub_1ABA93DC0(&a10);
}

unint64_t sub_1ABAA0E6C(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(a6 + 8 * (result >> 6) + 64) |= 1 << result;
  v6 = *(a6 + 48);
  return result;
}

__n128 sub_1ABAA0E90()
{
  result = *&STACK[0xE60];
  v1 = *&STACK[0xE70];
  *&STACK[0xE90] = *&STACK[0xE60];
  *&STACK[0xEA0] = v1;
  LOBYTE(STACK[0xEB0]) = STACK[0xE80];
  return result;
}

uint64_t sub_1ABAA0EE8(uint64_t result)
{
  *(v2 - 192) = result;
  v3 = v1 + *(result + 24);
  return result;
}

BOOL sub_1ABAA0F0C(uint64_t a1, uint64_t a2)
{
  v5 = *(v3 + 40);
  v6 = *(v3 + 72);

  return sub_1ABB2F764(v2, a2, v5);
}

void sub_1ABAA0F40(uint64_t a1@<X8>)
{
  *(v1 + 144) = *(a1 + 40);
  *(v1 + 152) = *(a1 + 48);
  v2 = *(a1 + 56);
}

uint64_t sub_1ABAA0F64()
{
  v5 = *(v3 - 168) + *(v0 + 72) * v2;

  return sub_1ABC47DD4(v5, v1);
}

void sub_1ABAA0F94()
{
  v5 = *(v3 - 224);
  *(v5 + 16) = v2;
  v6 = v5 + 16 * v0;
  *(v6 + 32) = v1;
  *(v6 + 40) = v4;
}

uint64_t sub_1ABAA0FE0(unint64_t *a1)
{

  return sub_1ABAB47C4(a1, v1, v2);
}

uint64_t sub_1ABAA0FF8(__n128 a1, __n128 a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, char a50, __n128 a51, __n128 a52, char a53)
{
  a51 = a1;
  a52 = a2;
  a53 = a50;

  return sub_1ABA856C4(&a51, &a25);
}

void sub_1ABAA101C(uint64_t a1@<X8>)
{
  *v1 = v5;
  *(v1 + 8) = v4;
  *(v1 + 16) = a1;
  *(v1 + 24) = v3;
  *(v1 + 32) = v2;
}

uint64_t sub_1ABAA102C()
{

  return sub_1ABA88934(&STACK[0x9B0]);
}

uint64_t sub_1ABAA1044()
{
  v3 = *(v0 + *(v1 + 44));
}

uint64_t sub_1ABAA1070(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return sub_1ABAD219C(a3, a4);
}

__n128 sub_1ABAA10B4()
{
  result = *&STACK[0xE00];
  v1 = *&STACK[0xE10];
  *&STACK[0xE30] = *&STACK[0xE00];
  *&STACK[0xE40] = v1;
  LOBYTE(STACK[0xE50]) = STACK[0xE20];
  return result;
}

void sub_1ABAA10D4()
{
  v1 = v0[13];
  v3 = v0[9];
  v2 = v0[10];
  v5 = v0[7];
  v4 = v0[8];
}

uint64_t sub_1ABAA1164()
{

  return swift_allocObject();
}

void sub_1ABAA11A8(int a1@<W8>)
{
  *(v1 - 256) = a1;
  *(v2 - 304) = a1;
  *(v2 - 296) = a1;
  *(v2 - 232) = a1;
}

uint64_t sub_1ABAA11C4()
{
  *(v1 + 96) = v0;
  *(v1 + 104) = v3;

  return sub_1ABB344B0(v4, v2, v0, v3);
}

uint64_t sub_1ABAA11F8()
{

  return sub_1ABA88934(&STACK[0xE30]);
}

uint64_t sub_1ABAA1210()
{
  v2 = *(v0 - 104);
  v3 = *(v0 - 88);
}

uint64_t sub_1ABAA123C()
{

  return swift_allocObject();
}

__n128 sub_1ABAA128C()
{
  result = *&STACK[0xDA0];
  v1 = *&STACK[0xDB0];
  *&STACK[0xDD0] = *&STACK[0xDA0];
  *&STACK[0xDE0] = v1;
  LOBYTE(STACK[0xDF0]) = STACK[0xDC0];
  return result;
}

uint64_t sub_1ABAA12BC(uint64_t a1)
{
  *(a1 + 16) = v1;

  return swift_isUniquelyReferenced_nonNull_native();
}

void sub_1ABAA12E8()
{

  sub_1ABADAADC();
}

uint64_t sub_1ABAA1328()
{

  return sub_1ABF24F84();
}

uint64_t sub_1ABAA1358()
{

  return swift_getAssociatedConformanceWitness();
}

void sub_1ABAA1370()
{
  v2 = v1[1];
  *(v0 + 240) = *v1;
  *(v0 + 248) = v2;
}

void sub_1ABAA1398()
{

  sub_1ABADB784();
}

void sub_1ABAA1414()
{

  JUMPOUT(0x1AC5A9410);
}

uint64_t sub_1ABAA143C@<X0>(uint64_t a1@<X8>, uint64_t a2)
{
  v3 = *(a1 + 3656);
  v4 = *(a1 + 3664);
  v5 = *(a1 + 3648);

  return sub_1ABA91D48(v5, v3, v4, &a2);
}

uint64_t sub_1ABAA14A4()
{
  v2 = *(v0 - 296);
}

char *sub_1ABAA14C8(uint64_t a1)
{
  v5 = *(a1 + 48);
  v6 = *(v4 - 128);
  *v6 = v1;
  v6[1] = v2;
  v7 = v6;
  v8 = *(v3 + 32);
  result = v7 + v5;
  v10 = *(v4 - 112);
  return result;
}

__n128 sub_1ABAA14F4()
{
  result = *&STACK[0xD40];
  v1 = *&STACK[0xD50];
  *&STACK[0xD70] = *&STACK[0xD40];
  *&STACK[0xD80] = v1;
  LOBYTE(STACK[0xD90]) = STACK[0xD60];
  return result;
}

uint64_t sub_1ABAA1514()
{

  return sub_1ABF247D4();
}

uint64_t sub_1ABAA155C()
{
  *(v2 - 120) = v0;
  v3 = *(*(v2 - 152) + 8);
  return v1;
}

uint64_t sub_1ABAA158C()
{
  *(v2 - 200) = v1;
  *(v2 - 192) = v0;
  v4 = *(v2 - 376);

  return sub_1ABF21914();
}

uint64_t sub_1ABAA15AC()
{
  result = *(v0 + 128);
  v2 = *(result + 16);
  return result;
}

uint64_t sub_1ABAA15CC(uint64_t result)
{
  *(result + 8) = sub_1ABD74854;
  v2 = *(v1 + 104);
  return result;
}

uint64_t sub_1ABAA1624()
{

  return sub_1ABF24EC4();
}

uint64_t sub_1ABAA1640()
{

  return sub_1ABF22D34();
}

void sub_1ABAA1658(unint64_t a1@<X8>, __n128 a2@<Q0>)
{
  v3[77] = a2;
  v3[78].n128_u64[0] = a1;
  v3[78].n128_u64[1] = v2;
}

uint64_t sub_1ABAA1674()
{

  return sub_1ABA88934(&STACK[0x770]);
}

void sub_1ABAA168C()
{
  v1 = *(v0 - 192);
  *(v0 - 344) = *(v0 - 200);
  *(v0 - 352) = v1;
  *(v0 - 336) = *(v0 - 184);
}

__n128 sub_1ABAA16EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, __n128 a11, __int128 a12)
{
  *(a1 + 16) = v13;
  *(a1 + 24) = v12;
  result = a11;
  *(a1 + 32) = a11;
  *(a1 + 48) = a12;
  return result;
}

uint64_t sub_1ABAA1700()
{
  v3 = *(v1 - 352);

  return sub_1ABB3E614(v0, v3);
}

uint64_t sub_1ABAA1734()
{
  v2 = *(v1 - 168);
  v3 = (*(v2 + 48) + 16 * v0);
  v4 = *v3;
  v5 = v3[1];
  v6 = *(v1 - 88);
  v7 = *(v2 + 56) + *(v6 + 72) * v0;
  v8 = *(v6 + 16);
  result = *(v1 - 96);
  v10 = *(v1 - 120);
  return result;
}

__n128 sub_1ABAA1764()
{
  result = *&STACK[0xC80];
  v1 = *&STACK[0xC90];
  *&STACK[0xCB0] = *&STACK[0xC80];
  *&STACK[0xCC0] = v1;
  LOBYTE(STACK[0xCD0]) = STACK[0xCA0];
  return result;
}

uint64_t sub_1ABAA1784(uint64_t a1)
{
  *(v1 + 56) = a1;

  return sub_1ABF237F4();
}

void *sub_1ABAA1814()
{
  v0[13] = v1;
  v3 = v0[69];
  v4 = v0[68];

  return sub_1ABA93E20(v0 + 65, v4);
}

void sub_1ABAA1870(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0xCu);
}

void sub_1ABAA1890(uint64_t a1@<X8>)
{
  *v3 = a1;
  *(v3 + 8) = v1;
  *(v3 + 16) = 2;
  *(v3 + 24) = v2;
}

uint64_t sub_1ABAA18B4()
{
  v3 = *(v1 - 144);
  v4 = *(v1 - 136);
  v5 = *(v1 - 160);

  return sub_1ABDEFF58(v0, v3, v4, v5);
}

uint64_t *sub_1ABAA18DC@<X0>(uint64_t a1@<X8>)
{
  *(v1 - 96) = a1;

  return sub_1ABA93DC0((v1 - 128));
}

uint64_t sub_1ABAA18F4()
{

  return sub_1ABA88934(&STACK[0x830]);
}

void sub_1ABAA196C()
{
  *(v0 + 16) = v3;
  v5 = v0 + 16 * v4;
  *(v5 + 32) = v1;
  *(v5 + 40) = v2;
}

__n128 sub_1ABAA1980()
{
  result = *&STACK[0xC20];
  v1 = *&STACK[0xC30];
  *&STACK[0xC50] = *&STACK[0xC20];
  *&STACK[0xC60] = v1;
  LOBYTE(STACK[0xC70]) = STACK[0xC40];
  return result;
}

uint64_t sub_1ABAA19AC(uint64_t a1)
{
  *(v1 + 104) = a1;

  return type metadata accessor for LogSignpost();
}

uint64_t sub_1ABAA1AB4()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  v5 = *(v0 + 56);
}

uint64_t sub_1ABAA1AF8(uint64_t a1)
{
  *(v2 - 88) = a1;
  *(v2 - 120) = v1;
  v4 = *(v2 - 192);

  return sub_1ABF22D34();
}