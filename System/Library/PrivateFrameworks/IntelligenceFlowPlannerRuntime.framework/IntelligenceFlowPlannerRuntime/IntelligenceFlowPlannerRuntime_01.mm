uint64_t sub_22C37E7A0()
{

  return sub_22C90A0BC();
}

uint64_t sub_22C37E81C()
{
  v3 = *(*(*(v1 - 72) + 48) + 16 * v0 + 8);
}

uint64_t sub_22C37E858()
{
  v2 = *(v1 - 128);
  result = v0;
  v4 = *(v1 - 240);
  return result;
}

uint64_t sub_22C37E8A8()
{

  return sub_22C90AEFC();
}

__n128 sub_22C37E8E0()
{
  v2 = v0[6].n128_u64[0];
  v1 = v0[6].n128_u64[1];
  v3 = v0[5].n128_u64[1];
  v4 = v0[1].n128_u64[1];
  v5 = *(v4 + 40);
  v6 = *(v4 + 48);
  return v0[2];
}

uint64_t sub_22C37E8F8()
{
  v6 = *(*(v4 - 96) + 48);
  *v1 = v0;
  v1[1] = v3;

  return sub_22C892044(v2, v1 + v6);
}

uint64_t type metadata accessor for RetrievedToolContext()
{
  result = qword_281433718;
  if (!qword_281433718)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22C37E970()
{
  sub_22C3743E4();
  sub_22C37A458();
  v0 = sub_22C905A5C();
  sub_22C3699B8(v0);
  v2 = (*(v1 + 80) + 40) & ~*(v1 + 80);
  v4 = *(v3 + 64);
  v5 = sub_22C90069C();
  sub_22C3699B8(v5);
  v7 = (v2 + v4 + *(v6 + 80)) & ~*(v6 + 80);
  v9 = *(v8 + 64);
  v10 = sub_22C90622C();
  sub_22C369914(v10);
  v12 = (v7 + v9 + *(v11 + 80)) & ~*(v11 + 80);
  sub_22C370424();
  v13 = swift_task_alloc();
  v14 = sub_22C8236A4(v13);
  *v14 = v15;
  sub_22C36FEE0(v14);
  sub_22C373AE0();

  return sub_22C37EB48(v16, v17, v18, v19, v20, v21, v22);
}

uint64_t sub_22C37EAEC()
{
  sub_22C369980();
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  v3 = sub_22C38C50C();
  sub_22C37CDF4(v3, v4, v5);
  sub_22C369A24();

  return v6();
}

uint64_t sub_22C37EB48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  return MEMORY[0x2822009F8](sub_22C37EAEC, 0, 0);
}

uint64_t sub_22C37EB94()
{

  return sub_22C901D4C();
}

uint64_t sub_22C37EBE8()
{

  return swift_slowAlloc();
}

uint64_t sub_22C37EC08()
{
  v2 = *(*(v1 - 432) + 8);
  result = v0;
  v4 = *(v1 - 424);
  return result;
}

uint64_t sub_22C37EC3C()
{
  v1 = *(*(v0 - 280) + 8);
  result = *(v0 - 344);
  v3 = *(v0 - 272);
  return result;
}

void sub_22C37ECC4()
{
  v3 = v0[50];
  v2 = v0[51];
  *(v1 - 256) = v0[54];
  *(v1 - 248) = v2;
  v5 = v0[46];
  v4 = v0[47];
  *(v1 - 240) = v3;
  *(v1 - 232) = v4;
  v7 = v0[44];
  v6 = v0[45];
  *(v1 - 224) = v5;
  *(v1 - 216) = v6;
  v9 = v0[42];
  v8 = v0[43];
  *(v1 - 208) = v7;
  *(v1 - 200) = v8;
  v10 = v0[41];
  *(v1 - 192) = v9;
  *(v1 - 184) = v10;
  v12 = v0[34];
  v11 = v0[35];
  *(v1 - 176) = v0[38];
  *(v1 - 168) = v11;
  v13 = v0[33];
  *(v1 - 160) = v12;
  *(v1 - 152) = v13;
  v14 = v0[29];
  *(v1 - 144) = v0[30];
  *(v1 - 136) = v14;
  v15 = v0[24];
  *(v1 - 128) = v0[27];
  *(v1 - 120) = v15;
  v16 = v0[18];
  v17 = v0[19];
  *(v1 - 112) = v0[21];
  *(v1 - 104) = v17;
  *(v1 - 96) = v16;
}

uint64_t sub_22C37ED3C()
{
  result = *(v0 - 256);
  v3 = *(v1 - 656);
  return result;
}

id sub_22C37ED5C()
{
  v3 = *(v0 + 8 * v1 + 32);

  return v3;
}

uint64_t sub_22C37EDA0@<X0>(uint64_t a1@<X8>)
{
  v3 = *(a1 - 256);
  v4 = *(v1 - 248);

  return sub_22C7F42A8();
}

uint64_t sub_22C37EDD0@<X0>(uint64_t a1@<X8>)
{

  return sub_22C36F9F4(0xD000000000000013, (a1 - 32) | 0x8000000000000000, (v1 - 168));
}

uint64_t sub_22C37EDF4(uint64_t a1)
{
  *(a1 + 8) = sub_22C843AF0;
  result = v1[14];
  v3 = v1[7];
  v4 = v1[8];
  return result;
}

void sub_22C37EE20(unint64_t a1@<X8>)
{

  sub_22C3B60C0(a1 > 1, v1, 1);
}

void sub_22C37EE44()
{

  sub_22C8892F4();
}

void sub_22C37EE60()
{
  v3 = *v0;
  v4 = v0[1];
  v5 = v0[2];
  v6 = v0[3];
  v7 = v0[4];
  *(v2 - 128) = v1;
  *(v2 - 96) = v5;
}

uint64_t sub_22C37EE90(uint64_t result)
{
  *(result + 8) = sub_22C8C75F8;
  v2 = *(v1 + 32);
  return result;
}

uint64_t type metadata accessor for ResponseGenerationPreferences()
{
  result = qword_281430EE8;
  if (!qword_281430EE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22C37EF28(uint64_t result)
{
  v4 = result & ~(v3 << *(v1 + 32));
  v5 = (v3 << v4) & ~*(v2 + 8 * (v4 >> 6));
  return result;
}

uint64_t sub_22C37EF60()
{
  result = v0[80];
  v2 = v0[79];
  v3 = v0[78];
  v4 = v0[77];
  v5 = v0[74];
  v6 = v0[71];
  v7 = v0[70];
  v8 = v0[69];
  v9 = v0[68];
  v10 = v0[67];
  v11 = v0[66];
  v12 = v0[65];
  return result;
}

void sub_22C37EFA0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0x16u);
}

uint64_t sub_22C37EFF4(uint64_t a1, uint64_t a2)
{
  result = sub_22C36C640(v3, a2, 1, v2);
  *(v5 - 208) = v4 + 16;
  *(v5 - 240) = v4 + 8;
  *(v5 - 232) = v4 + 32;
  return result;
}

uint64_t sub_22C37F05C()
{
  result = *(v0 - 256);
  v3 = *(v1 - 168);
  v4 = *(v1 - 352);
  return result;
}

uint64_t sub_22C37F080()
{
  v1 = *(*(v0 - 256) + 8);
  result = *(v0 - 352);
  v3 = *(v0 - 344);
  return result;
}

void sub_22C37F09C(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t sub_22C37F0D4()
{

  return swift_arrayDestroy();
}

uint64_t sub_22C37F138()
{

  return sub_22C4AB864(v0, type metadata accessor for PromptTreeIdentifier.TypeIdentifierReference);
}

uint64_t sub_22C37F180@<X0>(uint64_t a1@<X8>)
{
  *(v2 - 80) = a1;
  v4 = v1[86];
  v5 = v1[83];
  v6 = v1[82];
  v7 = v1[81];
  v8 = v1[79];
  v9 = v1[78];
  v10 = v1[77];
  v11 = v1[76];
  v12 = v1[75];
  v13 = v1[72];
  v16 = v1[71];
  v17 = v1[68];
  v18 = v1[65];
  v19 = v1[62];
  v20 = v1[59];
  v21 = v1[58];
  v22 = v1[55];
  v23 = v1[52];
  v24 = v1[49];
  v25 = v1[46];
  v14 = v1[43];
  v26 = v1[40];
  *(v2 - 88) = v1[39];
}

void sub_22C37F204()
{

  sub_22C591324();
}

void sub_22C37F23C()
{

  sub_22C456CE4(v1, v4, v3, v2, v0, 0);
}

void sub_22C37F278()
{
  *v0 = v5;
  *(v0 + 8) = v1;
  *(v0 + 16) = v2;
  *(v0 + 24) = v3;
  *(v0 + 32) = v4;
  *(v0 + 40) = 0;
}

void sub_22C37F28C(uint64_t a1@<X8>)
{
  *(v1 - 160) = a1;

  sub_22C3B7454();
}

uint64_t sub_22C37F2B0()
{
  v3 = *(v1 - 552);
  v4 = *(v1 - 504);
  v5 = *(v1 - 512);

  return sub_22C456D48(v0, v3);
}

uint64_t sub_22C37F2E0()
{
  result = v0;
  v3 = *(v1 - 608);
  v4 = *(v1 - 528);
  v5 = *(v1 - 832);
  return result;
}

uint64_t sub_22C37F328(uint64_t a1)
{
  v1[23] = a1;
  v1[24] = *(v3 + 8);
  v1[25] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  return v2;
}

uint64_t sub_22C37F37C()
{
  v5 = *(v3 - 112);
  v4 = *(v3 - 104);
  result = v0;
  *(v3 - 184) = v1;
  *(v3 - 128) = v2;
  return result;
}

uint64_t sub_22C37F3C0()
{

  return sub_22C633A2C(1, (v0 & 0xC000000000000001) == 0, v0);
}

uint64_t sub_22C37F418()
{
  v2 = v0[21];
  v3 = v0[18];
  v5 = v0[14];
  v4 = v0[15];
  v6 = v0[11];
  v7 = v0[8];
}

uint64_t sub_22C37F488(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, __int128 a17)
{
  *(a1 + 16) = a17;

  return sub_22C90ABEC();
}

void sub_22C37F4C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v21 = (*(v18 + 48) + 16 * v16);
  *v21 = v15;
  v21[1] = v17;
  v22 = (*(v18 + 56) + 16 * v16);
  *v22 = a14;
  v22[1] = a15;
}

uint64_t sub_22C37F524()
{
  v2 = v0[132];
  *(v1 - 88) = v0[131];
  v3 = v0[130];
  v4 = v0[129];
  *(v1 - 104) = v2;
  *(v1 - 96) = v4;
  v5 = v0[127];
  v6 = v0[124];
  v7 = v0[123];
  result = v0[116];
  v9 = v0[112];
  v10 = v0[73];
  v11 = *(v0[113] + 8);
  return result;
}

uint64_t sub_22C37F564()
{
  v2 = *(v0 - 264);
}

uint64_t sub_22C37F5AC()
{
  v3 = v0[31];
  v2 = v0[32];
  v4 = v0[28];
  v5 = v0[25];
  v6 = v0[23];
  v7 = v0[20];
  v8 = v0[17];
  v9 = v0[14];
}

uint64_t sub_22C37F620()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

_WORD *sub_22C37F644(_WORD *result)
{
  *(v2 - 104) = v1;
  *result = 0;
  return result;
}

uint64_t sub_22C37F668()
{
  result = v0[71];
  v2 = v0[70];
  v3 = v0[69];
  v4 = v0[68];
  return result;
}

uint64_t sub_22C37F67C()
{

  return swift_once();
}

void sub_22C37F69C()
{
  *(v1 - 88) = v0;
  v2 = *(v0 + 24);
  v3 = *(v0 + 16) + 1;
}

void sub_22C37F6F8()
{
  v1 = *(v0 - 208);
  v2 = *(v0 - 112);
  v3 = *(v0 - 104);
  v4 = *(v0 - 184);
}

uint64_t sub_22C37F720()
{

  return sub_22C909E6C();
}

uint64_t sub_22C37F780(uint64_t result)
{
  *(result + 16) = 4;
  *(result + 24) = 1;
  return result;
}

uint64_t sub_22C37F7A8@<X0>(uint64_t a1@<X8>)
{

  return sub_22C36F9F4(0xD000000000000048, (a1 - 32) | 0x8000000000000000, (v1 - 144));
}

uint64_t sub_22C37F7E8(uint64_t a1)
{
  *(v1 + 24) = a1;
  *(v2 + 32) = v1 | 0x8000000000000000;
  *(v2 + 40) = 0;
  v5 = *(v3 - 240);
}

void sub_22C37F818(uint64_t a1@<X8>)
{

  sub_22C3B6B48(0, a1 + 1, 1);
}

void sub_22C37F838()
{
  v3 = v1[20];
  v5 = v1[15];
  v4 = v1[16];
  v6 = v1[14];
  v7 = v1[11];
  v8 = v1[12];
  v9 = v1[7];
}

uint64_t sub_22C37F864()
{

  return sub_22C3A5908(v0, v1);
}

uint64_t sub_22C37F8C4()
{
  result = v0;
  v3 = *(v1 - 184);
  v4 = *(v1 - 128);
  return result;
}

uint64_t sub_22C37F8EC()
{
  v3 = *(v0 + 48);
  v4 = *v1;
  result = *(v2 - 264);
  v6 = *(v2 - 256);
  return result;
}

void sub_22C37F910()
{
  v1 = v0[53];
  v2 = v0[46];
  v3 = v0[44];
  v5 = v0[41];
  v4 = v0[42];
  v7 = v0[39];
  v6 = v0[40];
  v8 = v0[36];
  v0[123] = *(v0[54] + 8);
}

uint64_t sub_22C37F950()
{
  *v0 = *(v2 - 88);
  v3 = *(v1 + 32);
  return *(v2 - 136);
}

uint64_t sub_22C37F984@<X0>(uint64_t a1@<X8>)
{
  result = a1 + v1 * v2;
  v6 = *(v3 - 96);
  v5 = *(v3 - 88);
  v7 = *(v3 - 128);
  return result;
}

uint64_t sub_22C37F998()
{
  v2 = *(v0 - 312);
  v3 = *(v0 - 360);

  return sub_22C72E460(v2, v3);
}

void sub_22C37F9D8()
{
  v0[50] = 0;
  v0[51] = 0xE000000000000000;
  v0[52] = 0;
  v0[53] = 0xE000000000000000;
}

uint64_t sub_22C37FA10(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return MEMORY[0x2821B8B58](v3, v4, a3, 0, 1, 1);
}

uint64_t sub_22C37FA8C()
{
  v2 = v0[50];
  v3 = v0[47];
  v4 = v0[44];
  v5 = v0[41];
}

void sub_22C37FAAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);

  static AppDirectedToolHelper.getAppDirectedApps(spanMatches:toolContext:)(v7, a1, va);
}

void *sub_22C37FACC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 - 256) = a1;
  v4 = *(v2 + 40);

  return sub_22C374168((v2 + 16), v4);
}

uint64_t sub_22C37FAE8@<X0>(uint64_t a1@<X8>)
{

  return sub_22C7D5E18((a1 + 16), a1 + 32, v2, v1);
}

uint64_t sub_22C37FB1C()
{

  return swift_dynamicCast();
}

void sub_22C37FB38()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
}

uint64_t sub_22C37FB44(uint64_t result)
{
  *(v1 + 472) = result;
  *(v1 + 524) = *(result + 32);
  v2 = *(result + 64);
  return result;
}

double sub_22C37FB74(uint64_t a1, float a2)
{
  *a1 = a2;
  *(a1 + 4) = v2;
  *(a1 + 12) = 2048;
  result = v3;
  *(a1 + 14) = v3;
  return result;
}

uint64_t sub_22C37FB94()
{

  return type metadata accessor for ResponseGenerationPreferences();
}

uint64_t sub_22C37FBC4()
{
  v6 = v0[46];
  v3 = v0[41];
  v4 = v0[42];
  *(v1 - 104) = v0[45];
  *(v1 - 96) = v4;
  *(v1 - 88) = v3;
}

uint64_t sub_22C37FC28(uint64_t result)
{
  *(v2 - 88) = result;
  v3 = *(v1 + 16);
  return result;
}

uint64_t sub_22C37FC6C()
{
  v1 = v0[78];
  v2 = v0[77];
  v3 = v0[76];
  v4 = v0[70];
  result = v0[51];
  v6 = v0[48];
  v7 = *(v0[49] + 8);
  return result;
}

void sub_22C37FC8C()
{

  JUMPOUT(0x2318B7850);
}

uint64_t sub_22C37FCC4()
{
  v2 = **(v1 - 136);
  result = v0;
  v4 = *(v1 - 120);
  return result;
}

uint64_t sub_22C37FD8C@<X0>(uint64_t a1@<X8>)
{
  v4 = *(a1 + 130);
  v5 = *(v2 + 280);
  result = v1;
  v7 = *(v3 - 120);
  v9 = *(v3 - 112);
  v8 = *(v3 - 104);
  return result;
}

uint64_t sub_22C37FDC4()
{
  v1 = *(v0 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void sub_22C37FE10()
{
  *(v1 - 128) = v0;
  v2 = *(v0 + 24);
  v3 = *(v0 + 16) + 1;
}

void sub_22C37FE60()
{
  *(v2 - 160) = v1[101];
  v3 = v1[100];
  v4 = v1[57];
  v5 = v1[58];
  *(v2 - 144) = v0;
  *(v2 - 136) = v4;
}

uint64_t sub_22C37FED0()
{
  v9 = v0[25];
  v4 = v0[20];
  v3 = v0[21];
  *(v1 - 136) = v0[24];
  *(v1 - 128) = v3;
  v6 = v0[16];
  v5 = v0[17];
  *(v1 - 120) = v4;
  *(v1 - 112) = v5;
  v7 = v0[15];
  *(v1 - 104) = v6;
  *(v1 - 96) = v7;
  *(v1 - 88) = v0[12];
}

uint64_t sub_22C37FF88()
{
  v1 = *(*(v0 - 240) + 8);
  result = *(v0 - 112);
  v3 = *(v0 - 264);
  return result;
}

uint64_t sub_22C37FFA0(uint64_t result, float a2)
{
  *result = a2;
  *(result + 4) = v2;
  return result;
}

void sub_22C37FFCC()
{
  v2 = v0[75];
  v3 = v0[74];
  v4 = v0[73];
  v5 = v0[72];
  v6 = v0[71];
  v7 = v0[70];
  v8 = v0[67];
  v9 = v0[66];
  v10 = v0[65];
  v11 = v0[64];
  v12 = v0[63];
  v13 = v0[62];
  v14 = v0[61];
  v15 = v0[60];
  v16 = v0[59];
  v17 = v0[58];
  v18 = v0[57];
  v19 = v0[56];
  v1 = v0[51];
  v20 = v0[55];
  v21 = v0[52];
}

uint64_t sub_22C380034()
{
  v3 = *(v1 - 104);
  result = *(v1 - 96);
  *(v1 - 120) = v0;
  v4 = *(v1 - 88);
  return result;
}

uint64_t sub_22C380078(uint64_t a1, uint64_t a2)
{
  *(v2 - 160) = a1;
  *(v2 - 144) = a2;
}

void sub_22C3800A8()
{

  JUMPOUT(0x2318B9880);
}

uint64_t sub_22C3800C4()
{

  return sub_22C90AD4C();
}

uint64_t sub_22C3800E8()
{
  v1 = v0[16];
  sub_22C374168(v0 + 12, v0[15]);

  return sub_22C90880C();
}

uint64_t sub_22C380144()
{
  v3 = *(v0 + 56);
  v4 = *(v2 - 344);
  v5 = v3 + *(v4 + 72) * v1;
  v6 = *(v4 + 16);
  result = *(v2 - 248);
  v8 = *(v2 - 376);
  return result;
}

char *sub_22C380174(__n128 *a1, __n128 a2)
{
  a1[1] = a2;
  v4 = *(v2 + 16);
  return a1 + v3;
}

uint64_t sub_22C3801A8(uint64_t a1)
{
  *(a1 + 8) = sub_22C6EB5A0;
  v2 = v1[77];
  result = v1[47];
  v4 = v1[45];
  return result;
}

uint64_t sub_22C3801EC@<X0>(uint64_t a1@<X8>)
{
  v2 = *(a1 - 256);

  return sub_22C909FFC();
}

uint64_t sub_22C380204()
{
  v2 = v0[18];
  v4 = v0[14];
  v3 = v0[15];
  v5 = v0[11];
}

uint64_t sub_22C380220()
{

  return sub_22C90B47C();
}

uint64_t sub_22C380254()
{
  sub_22C369980();
  v1[46] = v2;
  v1[47] = v0;
  v1[45] = v3;
  v4 = sub_22C3A5908(&qword_27D9BB138, &qword_22C90DB70);
  sub_22C369914(v4);
  v6 = *(v5 + 64);
  v1[48] = sub_22C3699D4();
  v7 = sub_22C9063DC();
  v1[49] = v7;
  sub_22C3699B8(v7);
  v1[50] = v8;
  v10 = *(v9 + 64);
  v1[51] = sub_22C3699D4();
  v11 = sub_22C90077C();
  v1[52] = v11;
  sub_22C3699B8(v11);
  v1[53] = v12;
  v14 = *(v13 + 64);
  v1[54] = sub_22C3856B8();
  v1[55] = swift_task_alloc();
  v1[56] = swift_task_alloc();
  v15 = sub_22C90070C();
  v1[57] = v15;
  sub_22C3699B8(v15);
  v1[58] = v16;
  v18 = *(v17 + 64);
  v1[59] = sub_22C3699D4();
  v19 = sub_22C3A5908(&qword_27D9C1358, &qword_22C92D208);
  sub_22C369914(v19);
  v21 = *(v20 + 64);
  v1[60] = sub_22C3699D4();
  v22 = sub_22C37BB20();

  return MEMORY[0x2822009F8](v22, v23, v24);
}

uint64_t sub_22C380458()
{
  v2 = *(v0 - 104);

  return swift_arrayDestroy();
}

uint64_t sub_22C3804C8@<X0>(uint64_t a1@<X8>)
{

  return sub_22C36F9F4(0xD00000000000003CLL, (a1 - 32) | 0x8000000000000000, (v1 - 136));
}

void sub_22C380500()
{

  sub_22C456CE4(v4, v3, v2, v0, v1, 0);
}

uint64_t sub_22C380640()
{
  v1 = v0[30];
  sub_22C374168(v0 + 26, v0[29]);
  return v1;
}

void sub_22C380694()
{
  v3 = v1[94];
  v4 = v1[72];
  v5 = v1[67];
  v6 = v1[66];
  v7 = v1[38];
}

uint64_t sub_22C3806D0()
{

  return sub_22C90AC5C();
}

void sub_22C38072C()
{
  v1 = v0[100];
  v2 = v0[99];
  v3 = v0[92];
}

void sub_22C380754(uint64_t a1@<X8>)
{
  v3 = *(v2 + 56);
  v4 = (*(v2 + 48) + 16 * (a1 | (v1 << 6)));
  v6 = *v4;
  v5 = v4[1];
}

unint64_t sub_22C380768()
{
  result = qword_281430178;
  if (!qword_281430178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281430178);
  }

  return result;
}

uint64_t *static ResponseGenerationPreferencesDomain.ResponseGenerationPreferences.loadFromOta()()
{
  v0 = sub_22C380820();
  v2 = sub_22C370B9C(v0, v1);

  return v2;
}

uint64_t *sub_22C3807F8@<X0>(uint64_t **a1@<X8>)
{
  result = static ResponseGenerationPreferencesDomain.ResponseGenerationPreferences.loadFromOta()();
  *a1 = result;
  return result;
}

uint64_t sub_22C380820()
{
  v0 = sub_22C9063DC();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2814374F0)
  {
    v5 = qword_2814374E8;
  }

  else
  {
    v5 = 0x53555F6E65;
    sub_22C90405C();
    v6 = sub_22C9063CC();
    v7 = sub_22C90AADC();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v12 = v9;
      *v8 = 136315138;
      *(v8 + 4) = sub_22C36F9F4(0x53555F6E65, 0xE500000000000000, &v12);
      _os_log_impl(&dword_22C366000, v6, v7, "No locale identifier set, falling back to %s", v8, 0xCu);
      sub_22C36FF94(v9);
      MEMORY[0x2318B9880](v9, -1, -1);
      MEMORY[0x2318B9880](v8, -1, -1);
    }

    (*(v1 + 8))(v4, v0);
  }

  return v5;
}

uint64_t sub_22C380A10(uint64_t a1, unint64_t a2)
{
  v4 = sub_22C387760(a1, a2);
  sub_22C3878EC(&unk_283FAE968);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_22C380A80()
{
  v89 = v0;
  v1 = v0;
  v4 = v0 + 472;
  v2 = *(v0 + 472);
  v3 = *(v4 + 8);
  v5 = *(v1 + 456);
  v6 = *(v1 + 464);
  v7 = *(v1 + 424);
  v84 = *(v1 + 440);
  v85 = *(v1 + 432);
  v79 = *(v1 + 416);
  v81 = *(v1 + 448);
  v83 = *(v1 + 408);
  v8 = *(v1 + 376);
  log = v8;
  v73 = *(v1 + 360);
  v76 = sub_22C3A5908(&qword_27D9BB570, &qword_22C92D210);
  sub_22C36A748();
  sub_22C36C640(v9, v10, v11, v12);
  v13 = OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime25ResponseGenerationService_otaPreferencesLock;
  sub_22C79D0C0();
  sub_22C8D4400(v3, v8 + v13, &qword_27D9C1358, &qword_22C92D208);
  swift_endAccess();
  (*(v6 + 104))(v2, *MEMORY[0x277CC9668], v5);
  sub_22C9006BC();
  v14 = sub_22C9006CC();
  v16 = v15;

  (*(v6 + 8))(v2, v5);
  qword_2814374E8 = v14;
  qword_2814374F0 = v16;

  sub_22C380768();
  sub_22C90271C();
  sub_22C36BECC();
  sub_22C36C640(v17, v18, v19, v76);
  sub_22C79D0C0();
  sub_22C8D4400(v3, log + v13, &qword_27D9C1358, &qword_22C92D208);
  swift_endAccess();
  v20 = *(v7 + 16);
  v20(v81, v73, v79);
  sub_22C90405C();
  v20(v84, v73, v79);
  v20(v85, v81, v79);
  v21 = sub_22C9063CC();
  v22 = sub_22C90AABC();
  v23 = sub_22C36FBB4(v22);
  v24 = *(v1 + 440);
  v86 = *(v1 + 432);
  v26 = *(v1 + 416);
  v25 = *(v1 + 424);
  v27 = *(v1 + 400);
  v28 = *(v1 + 408);
  if (v23)
  {
    v82 = *(v1 + 392);
    v29 = swift_slowAlloc();
    v88 = swift_slowAlloc();
    *v29 = 136315394;
    sub_22C38B5F0(&qword_281435838, MEMORY[0x277CC9788]);
    v74 = v27;
    v77 = v28;
    v30 = sub_22C90B47C();
    v31 = v20;
    v33 = v32;
    v69 = v22;
    v34 = *(v25 + 8);
    v35 = sub_22C379FC8();
    v34(v35);
    v36 = sub_22C36F9F4(v30, v33, &v88);
    v20 = v31;

    *(v29 + 4) = v36;
    *(v29 + 12) = 2080;
    sub_22C90B47C();
    sub_22C8D5288();
    (v34)(v86, v26);
    v37 = sub_22C36BBCC();
    sub_22C36F9F4(v37, v38, v39);
    sub_22C37BB14();

    *(v29 + 14) = v86;
    _os_log_impl(&dword_22C366000, v21, v69, "Input locale: %s, locale will be used: %s", v29, 0x16u);
    swift_arrayDestroy();
    sub_22C3699EC();
    sub_22C3699EC();

    (*(v74 + 8))(v77, v82);
  }

  else
  {

    v40 = *(v25 + 8);
    v40(v86, v26);
    v41 = sub_22C379FC8();
    (v40)(v41);
    v42 = *(v27 + 8);
    v43 = sub_22C36CA88();
    v44(v43);
  }

  loga = *(v1 + 480);
  v75 = *(v1 + 472);
  v45 = *(v1 + 448);
  v78 = *(v1 + 440);
  v80 = *(v1 + 432);
  v70 = *(v1 + 424);
  v46 = *(v1 + 416);
  v47 = *(v1 + 376);
  v87 = *(v1 + 384);
  v48 = *(v1 + 368);
  v49 = *(v47 + 112);
  v50 = OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime16ToolboxResources_toolbox;
  v51 = type metadata accessor for DefaultResponseGenerationInputBuilder();
  *(v1 + 40) = v51;
  *(v1 + 48) = &off_283FC2CD0;
  v52 = sub_22C36D548((v1 + 16));
  v53 = sub_22C908AEC();
  sub_22C369A9C(v53);
  (*(v54 + 16))(v52, v49 + v50);
  v20(v52 + *(v51 + 20), v45, v46);
  v55 = *(v51 + 24);
  v56 = sub_22C9021BC();
  sub_22C369A9C(v56);
  (*(v57 + 16))(v52 + v55, v48);
  sub_22C79D0C0();
  sub_22C8D4400(v1 + 16, v47 + 248, &qword_27D9C1360, &qword_22C92D218);
  swift_endAccess();
  type metadata accessor for ResponseGenerationBiomeRoot();
  swift_allocObject();
  sub_22C38B6B4();
  v58 = *(v47 + 376);
  *(v47 + 376) = v59;

  sub_22C381CB4();
  v60 = type metadata accessor for DefaultCATResponseDialogGenerator();
  v61 = *(v60 + 48);
  v62 = *(v60 + 52);
  swift_allocObject();
  v63 = sub_22C3835E0(v87);
  *(v1 + 80) = v60;
  *(v1 + 88) = &off_283FC29B0;
  *(v1 + 56) = v63;
  sub_22C79D0C0();

  sub_22C8D4400(v1 + 56, v47 + 208, &qword_27D9C1368, &qword_22C92D220);
  swift_endAccess();
  *(v1 + 120) = v60;
  *(v1 + 128) = &off_283FC29B0;
  *(v1 + 96) = v63;
  *(v1 + 160) = &type metadata for FallbackDialogGenerator;
  *(v1 + 168) = &off_283FC2B20;
  v64 = swift_allocObject();
  *(v1 + 136) = v64;
  sub_22C38376C(v1 + 96, v64 + 16);
  sub_22C79D0C0();

  sub_22C8D4400(v1 + 136, v47 + 328, &qword_27D9C1370, &qword_22C92D228);
  swift_endAccess();
  *(v1 + 200) = &type metadata for FallbackDialogGenerator;
  *(v1 + 208) = &off_283FC2B20;
  v65 = swift_allocObject();
  *(v1 + 176) = v65;
  v66 = *(v1 + 112);
  *(v65 + 16) = *(v1 + 96);
  *(v65 + 32) = v66;
  *(v65 + 48) = *(v1 + 128);

  (*(v70 + 8))(v45, v46);
  sub_22C79D0C0();
  sub_22C8D4400(v1 + 176, v47 + 288, &qword_27D9C1370, &qword_22C92D228);
  swift_endAccess();

  v67 = *(v1 + 8);

  return v67();
}

uint64_t sub_22C3811F8()
{
  sub_22C36FF94((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

double sub_22C38129C()
{

  return sub_22C505B90(v0, (v1 - 128));
}

uint64_t sub_22C3812C4@<X0>(uint64_t result@<X0>, int a2@<W8>)
{
  *(v4 - 124) = a2;
  *(v4 - 168) = v3 + 96;
  *(v4 - 160) = v3 + 8;
  *(v4 - 144) = result;
  *(v4 - 136) = v2 + 32;
  return result;
}

uint64_t sub_22C3812E0()
{
  v2 = v0[46];
  v3 = v0[44];
  v4 = v0[42];
  v5 = v0[39];
  v6 = v0[40];
  v7 = v0[38];
  v8 = v0[29];
  v9 = v0[23];
  v13 = v0[9];
  v11 = v0[11];
  v12 = v0[8];

  return sub_22C90451C();
}

void sub_22C381330()
{
  v1 = v0[43];
  v2 = v0[40];
  v3 = v0[38];
}

void sub_22C381354(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{
  v8 = *(v6 - 128);
  v9 = *(v6 - 128);

  _os_log_impl(a1, v5, v9, a4, v4, 0x16u);
}

uint64_t sub_22C381388()
{
}

void sub_22C3813E0()
{
  v1 = v0[116];
  v2 = v0[113];
  v3 = v0[112];
}

uint64_t sub_22C381434@<X0>(uint64_t a1@<X8>)
{
  v2 = (v1 + a1);
  result = *v2;
  v4 = v2[1];
  return result;
}

uint64_t sub_22C381440()
{
  result = v0[119];
  v2 = v0[118];
  v3 = v0[117];
  v4 = v0[116];
  v5 = v0[115];
  v6 = v0[112];
  v7 = v0[109];
  v8 = v0[106];
  return result;
}

uint64_t sub_22C381470(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = sub_22C36BB4C(a1, a2, a3, a4);
  sub_22C36985C(v5);
  v7 = *(v6 + 40);
  v8 = sub_22C36BA00();
  v9(v8);
  return v4;
}

uint64_t sub_22C3814BC()
{
  result = v0;
  v3 = *(v1 - 368);
  return result;
}

uint64_t sub_22C38153C()
{

  return swift_beginAccess();
}

uint64_t sub_22C38155C@<X0>(uint64_t (*a1)(void)@<X1>, uint64_t a2@<X8>)
{
  v3 = *(a2 - 256);

  return sub_22C7F4300(v3, a1);
}

uint64_t sub_22C381580()
{
  v2 = v0[42];
  v3 = v0[22];
  v4 = v0[17];
  v5 = v0[18];
  v6 = v0[15];
  v8 = v0[7];
  v7 = v0[8];
}

uint64_t sub_22C3815A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(v4 + 48);
  *(v5 - 240) = v3;
  *(v5 - 232) = a3;
  v7 = *(v3 + 16);
  return *(v5 - 216) + v6;
}

uint64_t sub_22C3815C0()
{
}

uint64_t sub_22C3815EC()
{

  return swift_allocObject();
}

uint64_t sub_22C381624@<X0>(uint64_t a1@<X8>)
{
  v3 = *(a1 + 104);
  result = v1;
  v5 = *(v2 - 332);
  return result;
}

uint64_t sub_22C38163C()
{

  return type metadata accessor for PromptTreeIdentifier(0);
}

__n128 sub_22C381670(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 104);
  result = *(v2 + 88);
  *a2 = *(v2 + 72);
  *(a2 + 16) = result;
  *(a2 + 32) = v3;
  return result;
}

uint64_t sub_22C381688(uint64_t result)
{
  v1 = *(result + 24);
  v2 = *(result + 16) + 1;
  return result;
}

uint64_t sub_22C3816D4(uint64_t a1, uint64_t a2)
{

  return sub_22C36DD28(a2, v2, v3);
}

uint64_t sub_22C381714()
{

  return sub_22C909F0C();
}

uint64_t sub_22C38172C()
{

  return sub_22C6A438C();
}

uint64_t sub_22C381768(uint64_t a1)
{

  return sub_22C36C640(v1, 1, 1, a1);
}

uint64_t sub_22C381798()
{
  v2 = v0[20];
  v3 = v0[8];
  v5 = v0[3];
  v4 = v0[4];

  return MEMORY[0x2821B8A50]();
}

void sub_22C3817B8()
{
  sub_22C36FF94(v0);

  JUMPOUT(0x2318B9880);
}

uint64_t sub_22C3817F8(uint64_t a1)
{
  *(a1 + 8) = sub_22C7B9B58;
  result = *(v1 + 64);
  v3 = *(v1 + 32);
  return result;
}

void sub_22C381838()
{
  v1 = *(v0 - 512);
  v2 = *(v0 - 176);
  v3 = *(v0 - 168);
}

void sub_22C381858()
{

  JUMPOUT(0x2318B7850);
}

uint64_t sub_22C381870()
{
  result = v0;
  v3 = *(v1 - 272);
  return result;
}

uint64_t sub_22C3818D4()
{
  v2 = *(v0 - 192);

  return sub_22C902EBC();
}

uint64_t sub_22C38195C(uint64_t result)
{
  *(result + 8) = sub_22C8D9C84;
  v2 = *(v1 + 408);
  return result;
}

void sub_22C381980()
{

  sub_22C62F094();
}

uint64_t sub_22C381A0C@<X0>(uint64_t a1@<X8>)
{

  return sub_22C36F9F4(0xD000000000000033, a1 | 0x8000000000000000, (v1 - 96));
}

void sub_22C381A2C()
{
  *(v3 + 16) = v1;
  v4 = v3 + 16 * v2;
  *(v4 + 32) = 1;
  *(v4 + 40) = v0;
}

uint64_t sub_22C381A70()
{

  return sub_22C901EDC();
}

__n128 sub_22C381B38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __n128 a10)
{
  v13 = v10 + *(v11 + 20);
  *v13 = v12;
  result = a10;
  *(v13 + 8) = a9;
  return result;
}

uint64_t sub_22C381B7C()
{
  result = v0[191];
  v2 = v0[190];
  v3 = v0[189];
  v4 = v0[188];
  return result;
}

uint64_t sub_22C381BAC(uint64_t result)
{
  *(v2 + 32) = result;
  *(v3 - 264) = v1;
  return result;
}

uint64_t sub_22C381BBC()
{

  return sub_22C906CFC();
}

uint64_t sub_22C381BDC()
{
  v4 = *(v3 - 240) + *(v0 + 72) * v2;
  v5 = *(v0 + 16);
  return v1;
}

void sub_22C381C20()
{
  v3 = v0[34];
  v2 = v0[35];
  v4 = v0[9];
  v5 = v0[10];
  v6 = v0[27];
  v7 = v0[12];

  sub_22C8591E8(v7, v6);
}

uint64_t sub_22C381C48@<X0>(uint64_t a1@<X8>)
{
  *(v6 - 120) = v1;
  v7 = v2 | (a1 << 6);
  v8 = (*(v3 + 48) + 16 * v7);
  v9 = *v8;
  v10 = v8[1];
  v11 = *(v3 + 56) + *(v5 + 72) * v7;
  v12 = *(v5 + 16);
  return v4;
}

uint64_t sub_22C381C90()
{
  v2 = v0[95];
  v3 = v0[88];
  v4 = v0[83];
  v5 = v0[81];
  v6 = v0[52];
}

void sub_22C381CB4()
{
  sub_22C36BA7C();
  v110 = v3;
  v4 = sub_22C9063DC();
  v5 = sub_22C369824(v4);
  v108 = v6;
  v109 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  sub_22C369ABC();
  v11 = v9 - v10;
  MEMORY[0x28223BE20](v12);
  sub_22C36BA64();
  v102 = v13;
  sub_22C36BA0C();
  v14 = sub_22C90035C();
  v15 = sub_22C369824(v14);
  v103 = v16;
  v104 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v15);
  sub_22C369838();
  v21 = v20 - v19;
  v22 = sub_22C3A5908(&qword_27D9BB138, &qword_22C90DB70);
  sub_22C369914(v22);
  v24 = *(v23 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v25);
  v27 = &v94 - v26;
  v113 = sub_22C90046C();
  v28 = sub_22C369824(v113);
  v106 = v29;
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v28);
  sub_22C3698E4();
  v105 = v32;
  MEMORY[0x28223BE20](v33);
  sub_22C37F9FC();
  MEMORY[0x28223BE20](v34);
  sub_22C37B03C();
  MEMORY[0x28223BE20](v35);
  sub_22C36BA64();
  v112 = v36;
  sub_22C36BA0C();
  v37 = type metadata accessor for ResponseGenerationPreferences();
  v38 = sub_22C36985C(v37);
  v40 = *(v39 + 64);
  MEMORY[0x28223BE20](v38);
  sub_22C369838();
  sub_22C3881C0();
  v41 = sub_22C3A5908(&qword_27D9BD698, &qword_22C9187B0);
  sub_22C369914(v41);
  v43 = *(v42 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v44);
  v46 = &v94 - v45;
  v111 = sub_22C902D7C();
  v47 = sub_22C369824(v111);
  v107 = v48;
  v50 = *(v49 + 64);
  MEMORY[0x28223BE20](v47);
  sub_22C369838();
  v53 = v52 - v51;
  if (qword_2814357B8 != -1)
  {
    sub_22C371ED0();
  }

  v54 = sub_22C37AA60(v37, qword_281437588);
  sub_22C3870A4();
  swift_beginAccess();
  sub_22C36C57C();
  sub_22C382BD4(v54, v0, v55);
  v56 = *(v37 + 72);
  sub_22C3A5908(&qword_27D9BE020, &qword_22C91CD10);
  sub_22C901EDC();
  LODWORD(v56) = v114;
  sub_22C38C258();
  sub_22C38B6EC(v0, v57);
  if (v56 == 1)
  {
    sub_22C86D044();
  }

  else
  {
    sub_22C3879D0();
  }

  v58 = v111;
  sub_22C36D0A8(v46, 1, v111);
  v59 = v112;
  if (v63)
  {
    sub_22C36DD28(v46, &qword_27D9BD698, &qword_22C9187B0);
    v62 = v113;
LABEL_12:
    sub_22C90405C();
    v67 = sub_22C9063CC();
    sub_22C90AADC();
    sub_22C375AAC();
    if (os_log_type_enabled(v67, v68))
    {
      sub_22C3720F4();
      v69 = swift_slowAlloc();
      *v69 = 0;
      _os_log_impl(&dword_22C366000, v67, v11, "Can't find catalog asset, which should be required.", v69, 2u);
      sub_22C369B50();
      MEMORY[0x2318B9880]();
    }

    (*(v108 + 8))(v11, v109);
    goto LABEL_15;
  }

  v100 = v1;
  v60 = v53;
  v61 = v107;
  (*(v107 + 32))(v60, v46, v58);
  sub_22C902D5C();
  v62 = v113;
  sub_22C36D0A8(v27, 1, v113);
  if (v63)
  {
    v64 = *(v61 + 8);
    v65 = sub_22C37B9B0();
    v66(v65);
    sub_22C36DD28(v27, &qword_27D9BB138, &qword_22C90DB70);
    goto LABEL_12;
  }

  v98 = v60;
  v101 = v2;
  v72 = *(v106 + 32);
  v96 = v106 + 32;
  v95 = v72;
  v72(v59, v27, v62);
  v114 = 0x676F6C61746163;
  v115 = 0xE700000000000000;
  v75 = v103;
  v74 = v104;
  v76 = *(v103 + 104);
  v99 = *MEMORY[0x277CC91D8];
  v73 = v99;
  v76(v21, v99, v104);
  v97 = sub_22C3858B4();
  v77 = v100;
  sub_22C90044C();
  v78 = *(v75 + 8);
  v78(v21, v74);
  v114 = 0x6574616C706D6554;
  v115 = 0xE900000000000073;
  v76(v21, v73, v74);
  sub_22C90044C();
  v78(v21, v74);
  v106 = *(v106 + 8);
  (v106)(v77, v113);
  v114 = 0x676F6C616964;
  v115 = 0xE600000000000000;
  v76(v21, v99, v74);
  sub_22C90044C();
  v79 = sub_22C36A724();
  (v78)(v79);
  sub_22C3819C0();
  v114 = 0xD00000000000001CLL;
  v115 = v80;
  v76(v21, v99, v74);
  v62 = v113;
  v81 = v105;
  sub_22C90044C();
  v82 = sub_22C36A724();
  (v78)(v82);
  v83 = v106;
  (v106)(v77, v62);
  v84 = [objc_opt_self() defaultManager];
  sub_22C9003EC();
  v85 = sub_22C90A0EC();

  v86 = [v84 fileExistsAtPath_];

  if (v86)
  {
    v83(v81, v62);
    v83(v112, v62);
    (*(v107 + 8))(v98, v111);
    v71 = v110;
    v95(v110, v101, v62);
    v70 = 0;
    goto LABEL_16;
  }

  v88 = v101;
  v87 = v102;
  sub_22C90405C();
  v89 = sub_22C9063CC();
  sub_22C90AADC();
  sub_22C375AAC();
  v91 = os_log_type_enabled(v89, v90);
  v92 = v107;
  if (v91)
  {
    sub_22C3720F4();
    v93 = swift_slowAlloc();
    *v93 = 0;
    _os_log_impl(&dword_22C366000, v89, v87, "Can't find fallback templates inside ResponseCatalog.", v93, 2u);
    sub_22C369B50();
    MEMORY[0x2318B9880]();
  }

  (*(v108 + 8))(v87, v109);
  v83(v81, v62);
  v83(v88, v62);
  v83(v112, v62);
  (*(v92 + 8))(v98, v111);
LABEL_15:
  v70 = 1;
  v71 = v110;
LABEL_16:
  sub_22C36C640(v71, v70, 1, v62);
  sub_22C36CC48();
}

uint64_t sub_22C382590()
{
  v2 = v0[13];
  v3 = v0[10];
  v5 = v0[6];
  v4 = v0[7];
}

uint64_t sub_22C3825AC@<X0>(uint64_t a1@<X8>)
{
  v4 = (v1 + ((v3 << 10) | (16 * a1)));
  result = v4[1];
  *v2 = *v4;
  v2[1] = result;
  return result;
}

uint64_t sub_22C3825F4()
{

  return sub_22C42B564(v0);
}

uint64_t sub_22C382614()
{
  v2 = *(v0 - 304);
}

uint64_t sub_22C382638(unint64_t *a1)
{

  return sub_22C3D32C8(a1, v1, v2);
}

uint64_t sub_22C382688()
{

  return sub_22C36F9F4(v0, v1, (v2 - 96));
}

uint64_t sub_22C3826A4(uint64_t a1)
{
  *(a1 + 16) = 0x6E61747369737361;
  *(a1 + 24) = 0xE900000000000074;
  *(v1 + 40) = a1;

  return swift_allocObject();
}

uint64_t sub_22C3826F0()
{
  result = *(v0 - 256);
  v3 = *(v1 - 208);
  return result;
}

uint64_t sub_22C382704(uint64_t a1)
{
  *(a1 + 8) = v1;
  v3 = *(v2 + 32);
  return v2 + 16;
}

uint64_t sub_22C382724()
{

  return sub_22C901EDC();
}

uint64_t sub_22C382740()
{
  v2 = *(*(v1 - 120) + 8);
  result = v0;
  v4 = *(v1 - 88);
  return result;
}

uint64_t sub_22C382754()
{
  result = v0[35];
  v2 = v0[36];
  v3 = v0[25];
  v4 = v0[23];
  v5 = v0[21];
  return result;
}

uint64_t sub_22C382768()
{

  return swift_slowAlloc();
}

uint64_t sub_22C3827D0()
{

  return sub_22C3DB08C(v2, v3, v0, v1);
}

uint64_t sub_22C382864()
{
  v2 = *(v0 + 16);

  return sub_22C726E8C(v2, type metadata accessor for StructuredQueryConverter);
}

__n128 sub_22C38289C(uint64_t a1)
{
  result = *a1;
  v3 = *(a1 + 16);
  *(v1 - 176) = *a1;
  *(v1 - 160) = v3;
  *(v1 - 144) = *(a1 + 32);
  return result;
}

void sub_22C3828DC(uint64_t a1@<X8>)
{
  *(v5 - 224) = a1;
  v7 = v3[19];
  v6 = v3[20];
  *(v5 - 184) = v4;
  *(v5 - 176) = v6;
  *(v5 - 216) = v3[17];
  *(v5 - 208) = v2;
  v8 = v3[13];
  v9 = *(v1 + 8);
  *(v5 - 200) = v1 + 8;
  *(v5 - 168) = v8;
  *(v5 - 160) = v9;
}

uint64_t sub_22C382904()
{
  result = v0[18];
  v2 = v0[16];
  v3 = v0[12];
  v4 = *(v0[17] + 8);
  return result;
}

uint64_t sub_22C382918()
{
  v3 = v0[17];
  v2 = v0[18];
  v4 = v0[16];
  v6 = v0[12];
  v5 = v0[13];
  v7 = v0[11];
  v8 = v0[8];
}

uint64_t sub_22C382978()
{
  v3 = v0[51];
  v2 = v0[52];
  v5 = v0[49];
  v4 = v0[50];
  v7 = v0[47];
  v6 = v0[48];
  v9 = v0[44];
  v8 = v0[45];
  v10 = v0[43];
  v11 = v0[39];
  v13 = v0[36];
  v14 = v0[35];
  v15 = v0[34];
  v16 = v0[31];
}

void sub_22C3829D0()
{
  v3 = v1[21];
  v4 = v1[18];
  v5 = v1[15];
  v6 = v1[16];
  v7 = v1[14];
  v8 = v1[5];
}

uint64_t sub_22C3829F4(uint64_t a1)
{
  *(v1 + 8) = sub_22C844FD4;
  v7 = v2[23];
  v8 = v2[20];
  v9 = v2[16];
  v10 = v2[14];
  v11 = v2[9];
  v6[4] = v5;
  v6[5] = a1;
  v6[2] = v3;
  v6[3] = v4;
  return v7;
}

uint64_t sub_22C382A58()
{

  return sub_22C90B3CC();
}

uint64_t sub_22C382A94()
{

  return swift_task_alloc();
}

uint64_t sub_22C382AC8()
{

  return sub_22C90B4FC();
}

uint64_t sub_22C382AE4()
{
  result = v0 + 8;
  v3 = *(v0 + 8);
  v4 = *(v1 - 80);
  return result;
}

uint64_t sub_22C382AF4()
{
  sub_22C369980();
  sub_22C369A3C();
  v2 = *(v1 + 16);
  v3 = *v0;
  sub_22C369970();
  *v4 = v3;

  sub_22C369A24();

  return v5();
}

uint64_t sub_22C382BD4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  sub_22C36985C(v4);
  v6 = *(v5 + 16);
  v7 = sub_22C36BA00();
  v8(v7);
  return a2;
}

uint64_t sub_22C382C4C()
{
  v2 = *(v0 - 112);
  *(v0 - 120) = *(v0 - 120);
  *(v0 - 112) = v2;
}

uint64_t sub_22C382C68()
{
  v3 = *(v1 - 280);

  return sub_22C4242E4(v0, v3, 5);
}

void sub_22C382C88(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);

  JUMPOUT(0x2318B8B10);
}

uint64_t sub_22C382CA8()
{
  v2 = *(v0 + 16);
}

uint64_t sub_22C382CC0(uint64_t a1)
{
  *(v2 + 144) = a1;
  *(v2 + 112) = v1;

  return sub_22C9089CC();
}

uint64_t sub_22C382CE4()
{

  return sub_22C90B4FC();
}

void sub_22C382D04(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t sub_22C382D44(uint64_t a1)
{
  *(v1 - 104) = a1;

  return swift_willThrow();
}

uint64_t sub_22C382DC8()
{

  return swift_allocObject();
}

uint64_t sub_22C382DE4()
{
  v3 = *(v1 - 88);
  v4 = *(v1 - 112);

  return sub_22C79CFB4(v0, v3, v4);
}

uint64_t sub_22C382E0C()
{

  return sub_22C36F9F4(v0, v1, (v2 - 168));
}

uint64_t sub_22C382E40()
{

  return swift_beginAccess();
}

uint64_t sub_22C382E60()
{
  result = v0[26];
  v2 = v0[24];
  v3 = v0[18];
  v4 = *(v0[25] + 8);
  return result;
}

void sub_22C382EE0()
{
  v2 = *(v0 + 16) + 1;
  *(v1 - 168) = v0;
  *(v0 + 16) = v2;
}

uint64_t sub_22C382EF8()
{

  return sub_22C9063DC();
}

uint64_t sub_22C382F1C(__n128 *a1, __n128 a2)
{
  a1[1] = a2;
  a1[2].n128_u64[0] = 0x74706D6F7270;
  a1[2].n128_u64[1] = 0xE600000000000000;
  return 0;
}

uint64_t sub_22C382F3C()
{
  result = v0 + 32;
  v2 = *(v0 + 32);
  return result;
}

void sub_22C382FD0(unint64_t a1@<X8>)
{

  sub_22C3B685C(a1 > 1, v1, 1);
}

uint64_t sub_22C382FF4()
{

  return sub_22C901EEC();
}

uint64_t sub_22C38300C()
{
  v1 = *(v0 + 957);
  v2 = *(v0 + 704);
  v3 = *(v0 + 956);
  v4 = *(v0 + 664);
  v5 = *(v0 + 640);
  result = *(v0 + 632);
  v7 = *(v0 + 592);
  v8 = *(v0 + 584);
  return result;
}

uint64_t sub_22C383030(uint64_t a1)
{
  v4 = *(a1 + 20);
  *(v1 + v4) = v2;
  v5 = *(v3 - 144);
  return v1 + v4;
}

uint64_t sub_22C383050()
{

  return swift_slowAlloc();
}

void sub_22C383068(uint64_t a1@<X8>)
{
  v2 = *(a1 - 256);
  v3 = *(v1 - 224);
  v4 = *(v1 - 608);
}

uint64_t sub_22C3830B8()
{

  return swift_once();
}

uint64_t sub_22C3830F4(uint64_t a1, uint64_t a2)
{
  result = a2;
  v4 = *(v2 - 160);
  v5 = *(v2 - 200);
  return result;
}

uint64_t sub_22C383114()
{
  v2 = (*(v1 + 48) + 16 * v0);
  result = *v2;
  v4 = v2[1];
  return result;
}

uint64_t sub_22C383128()
{
  result = type metadata accessor for SegmentedPrompt.Segment(0);
  v1 = *(result + 20);
  return result;
}

uint64_t sub_22C383144(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  *(a1 + 8) = sub_22C584F7C;
  v24[4] = 0;
  v24[5] = 0;
  v24[15] = v23;
  v24[16] = a17;
  v24[13] = v21;
  v24[14] = v22;
  v24[11] = v21;
  v24[12] = v22;
  v24[9] = v19;
  v24[10] = v17;
  v24[7] = v18;
  v24[8] = v19;
  return v20 + 112;
}

uint64_t sub_22C3831A8()
{
  *(v2 - 128) = v1;
  v3 = *(v1 + 16);
  result = v0;
  v5 = *(v2 - 176);
  return result;
}

uint64_t sub_22C3831F8()
{
  v2 = *(v0 - 120);

  return sub_22C90708C();
}

void sub_22C383270()
{
  STACK[0x208] = v0[118];
  STACK[0x210] = v0[117];
  STACK[0x218] = v0[116];
  STACK[0x220] = v0[115];
  STACK[0x228] = v0[114];
  STACK[0x230] = v0[113];
  STACK[0x238] = v0[112];
  STACK[0x240] = v0[111];
  STACK[0x248] = v0[110];
  STACK[0x250] = v0[107];
  STACK[0x258] = v0[106];
  STACK[0x260] = v0[103];
  STACK[0x268] = v0[102];
  STACK[0x270] = v0[101];
  STACK[0x278] = v0[100];
  STACK[0x280] = v0[97];
  STACK[0x288] = v0[94];
  STACK[0x290] = v0[93];
  STACK[0x298] = v0[90];
  STACK[0x2A0] = v0[87];
  STACK[0x2A8] = v0[86];
  STACK[0x2B0] = v0[83];
  STACK[0x2B8] = v0[82];
  STACK[0x2C0] = v0[81];
  STACK[0x2C8] = v0[80];
  STACK[0x2D0] = v0[79];
  STACK[0x2D8] = v0[76];
  STACK[0x2E0] = v0[75];
  STACK[0x2E8] = v0[74];
  STACK[0x2F0] = v0[73];
  STACK[0x2F8] = v0[72];
  STACK[0x300] = v0[69];
  STACK[0x308] = v0[68];
  STACK[0x310] = v0[65];
  STACK[0x318] = v0[62];
  v1 = v0[58];
  STACK[0x320] = v0[59];
  STACK[0x328] = v1;
  v2 = v0[56];
  STACK[0x330] = v0[57];
  STACK[0x338] = v2;
}

uint64_t sub_22C3833C4()
{
  v3 = *(v1 - 136);
  v2 = *(v1 - 128);
  result = v0;
  v5 = *(v1 - 144);
  v6 = *(v1 - 120);
  return result;
}

__n128 sub_22C3833F0@<Q0>(__int128 *a1@<X8>)
{
  v2 = a1[1];
  v1[21] = *a1;
  v1[22] = v2;
  v4 = *a1;
  v3 = a1[1];
  v1[23] = a1[2];
  return *(a1 + 41);
}

__n128 sub_22C383438@<Q0>(__n128 *a1@<X0>, uint64_t a2@<X8>)
{
  result = *(a2 - 256);
  a1[1] = result;
  return result;
}

uint64_t sub_22C383450()
{
  v2 = ((*(v0 + 80) + 32) & ~*(v0 + 80)) + *(v0 + 72);

  return swift_allocObject();
}

uint64_t sub_22C383478@<X0>(uint64_t a1@<X8>)
{

  return sub_22C36F9F4(0xD00000000000006CLL, a1 | 0x8000000000000000, (v1 - 96));
}

uint64_t sub_22C383498()
{
  result = *(v0 - 256);
  v3 = *(v1 - 256);
  return result;
}

uint64_t sub_22C3834B8(uint64_t result)
{
  *(result + 8) = sub_22C7F7B20;
  v2 = *(v1 + 440);
  return result;
}

void sub_22C3834DC()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
}

uint64_t sub_22C383524()
{
  result = *(v2 + 56) + v1 * v0;
  v5 = **(v3 - 128);
  v6 = *(v3 - 104);
  v7 = *(v3 - 96);
  return result;
}

uint64_t sub_22C383580()
{
  result = v0;
  v3 = *(v1 + 8);
  return result;
}

uint64_t type metadata accessor for DefaultCATResponseDialogGenerator()
{
  result = qword_2814305F0;
  if (!qword_2814305F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22C3835E0(uint64_t a1)
{
  v3 = sub_22C90046C();
  v4 = sub_22C369824(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  sub_22C369838();
  v11 = v10 - v9;
  if (sub_22C370B74(a1, 1, v3) == 1)
  {
    sub_22C3770B0(a1, &qword_27D9BB138, &qword_22C90DB70);
    v12 = v1 + OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime33DefaultCATResponseDialogGenerator_defaultTemplateFolder;
    v13 = 1;
  }

  else
  {
    v14 = *(v6 + 32);
    v14(v11, a1, v3);
    v15 = OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime33DefaultCATResponseDialogGenerator_defaultTemplateFolder;
    v14(v1 + OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime33DefaultCATResponseDialogGenerator_defaultTemplateFolder, v11, v3);
    v12 = v1 + v15;
    v13 = 0;
  }

  sub_22C36C640(v12, v13, 1, v3);
  return v1;
}

__n128 sub_22C383710(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_22C383724(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t sub_22C3837D4(uint64_t result)
{
  v3 = (v1 - *(v2 - 128)) >> 6;
  v4 = *(v2 - 96);
  *(v2 - 152) = v4 + 32;
  *(v2 - 144) = v4 + 16;
  *(v2 - 136) = result;
  return result;
}

uint64_t sub_22C383854()
{
  v2 = *(v0 - 96);

  return sub_22C90A0BC();
}

uint64_t sub_22C383884()
{

  return sub_22C3AC228(v0, v1, v2);
}

uint64_t sub_22C3838BC(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;

  return swift_isUniquelyReferenced_nonNull_native();
}

void sub_22C3838DC()
{
  v1 = v0[131];
  v2 = v0[130];
  v3 = v0[129];
}

void sub_22C3838EC(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0x16u);
}

uint64_t sub_22C383940(unint64_t *a1)
{

  return sub_22C38694C(a1, v1);
}

uint64_t sub_22C3839C0()
{

  return sub_22C90AEEC();
}

uint64_t sub_22C3839E4()
{
  v2 = v0[91];
  v3 = v0[90];
  v4 = v0[89];
  v5 = v0[71];
  v6 = v0[70];
  v7 = v0[69];
  v8 = v0[68];
}

uint64_t sub_22C383A10(uint64_t a1)
{
  *(a1 + 16) = v1;
  *(a1 + 24) = v2;
}

uint64_t sub_22C383A28()
{
  sub_22C36D5EC();
  sub_22C386504();
  sub_22C36D994();
  *v4 = v3;
  v5 = v0[27];
  v6 = v0[26];
  v7 = v0[5];
  v8 = v0[4];
  *v4 = *v2;
  *(v3 + 224) = v1;

  sub_22C36DD28(v8, &qword_27D9BB190, qword_22C90DD90);
  sub_22C36DD28(v7, &qword_27D9BB728, &qword_22C911230);
  sub_22C36D1D8();
  v10 = *(v9 + 24);
  if (v1)
  {
    v11 = sub_22C8C7BBC;
  }

  else
  {
    v11 = sub_22C383EC4;
  }

  return MEMORY[0x2822009F8](v11, v10, 0);
}

unint64_t sub_22C383BF0(unint64_t result)
{
  *(v1 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(v2 + 48) + 8 * result) = v3;
  ++*(v2 + 16);
  v5 = *(v4 - 400);
  v6 = *(v4 - 384);
  v7 = *(v4 - 392);
  return result;
}

void sub_22C383C58(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t sub_22C383C78()
{
  v1 = **(v0 - 216);
  v2 = *(v0 - 176);
  return *(v0 - 184);
}

uint64_t sub_22C383C94()
{

  return swift_arrayDestroy();
}

uint64_t sub_22C383CF8()
{
  result = v1;
  v3 = *(v0 + 304);
  return result;
}

void sub_22C383D08(uint64_t a1@<X8>)
{
  v3 = *(v1 - 256);
  v4 = a1 + *(v3 + 72) * v2;
  v5 = *(v3 + 16);
}

uint64_t sub_22C383D1C@<X0>(uint64_t a1@<X8>)
{
  *(v2 - 80) = a1;
  v4 = v1[54];
  v3 = v1[55];
  v5 = v1[51];
  v6 = v1[47];
  v7 = v1[48];
  v9 = v1[45];
  v8 = v1[46];
  v10 = v1[43];
  v11 = v1[44];
  v13 = v1[41];
  v12 = v1[42];
  v17 = v1[39];
  v18 = v1[38];
  v19 = v1[35];
  v20 = v1[34];
  v21 = v1[33];
  v22 = v1[30];
  v23 = v1[29];
  v24 = v1[26];
  v25 = v1[25];
  v14 = v1[24];
  v26 = v1[21];
  v27 = v1[20];
  v28 = v1[17];
  *(v2 - 88) = v1[14];
  v15 = *(v11 + 8);
  return v9;
}

void sub_22C383D8C()
{
  v1 = v0[94];
  v2 = v0[91];
  v3 = v0[90];
  v4 = v0[88];
  v5 = v0[87];
  v6 = v0[85];
  v7 = v0[82];
  v8 = v0[79];
  v9 = v0[78];
  v10 = v0[77];
  v11 = v0[76];
  v12 = v0[73];
  v13 = v0[70];
  v14 = v0[69];
  v15 = v0[68];
  v16 = v0[65];
  v17 = v0[64];
  v18 = v0[63];
  v19 = v0[62];
  v20 = v0[59];
  v21 = v0[58];
  v22 = v0[57];
  v23 = v0[56];
  v24 = v0[54];
}

uint64_t sub_22C383E14@<X0>(uint64_t a1@<X8>)
{
  *(v1 + 1040) = a1;
  v2 = *(v1 + 872);
  v3 = *(v1 + 864);
  result = *(v1 + 704);
  v5 = *(v1 + 664);
  v6 = *(v1 + 1016) + ((*(v1 + 1104) + 32) & ~*(v1 + 1104)) + *(v1 + 1032) * a1;
  return result;
}

uint64_t sub_22C383E48()
{
  v1 = *(v0 - 168);
  v2 = *(*(v0 - 176) + 8);
  return *(v0 - 160);
}

uint64_t sub_22C383E74()
{
  result = v0;
  *(v1 - 304) = *(*(v1 - 264) + 8);
  return result;
}

uint64_t sub_22C383E94()
{
  *(v1 - 132) = v0;

  return sub_22C90B1DC();
}

unint64_t sub_22C383EB0@<X0>(uint64_t a1@<X8>)
{
  *(v2 - 96) = v1;
  result = a1 | (v1 << 32);
  v4 = *(v2 - 120);
  return result;
}

uint64_t sub_22C383EC4()
{
  v1 = v0[24];
  v2 = v0[25];
  v3 = v0[22];
  v4 = v0[20];
  v5 = v0[21];
  v14 = v0[23];
  v15 = v0[19];
  v6 = v0[15];
  v7 = v0[16];
  v8 = v0[14];
  v16 = v0[13];
  v17 = v0[9];
  v18 = v0[6];
  v19 = v0[5];
  v20 = v0[4];
  (*(v0[11] + 8))(v0[12], v0[10]);
  (*(v6 + 8))(v7, v8);
  v9 = *(v5 + 8);
  v10 = sub_22C36FC2C();
  v11(v10);
  (*(v1 + 8))(v2, v14);

  sub_22C369C50();

  return v12();
}

uint64_t default argument 3 of QueryDecorator.init(clientApplicationIdentifier:toolboxResources:selfLoggerFactory:signposter:contextClient:)@<X0>(uint64_t *a1@<X8>)
{
  DecorationSignposter = type metadata accessor for QueryDecorationSignposter(0);
  v3 = *(DecorationSignposter + 48);
  v4 = *(DecorationSignposter + 52);
  v5 = swift_allocObject();
  result = sub_22C90B0FC();
  a1[3] = DecorationSignposter;
  a1[4] = &off_283FC1370;
  *a1 = v5;
  return result;
}

void *sub_22C38407C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v45 = a7;
  v47 = a6;
  v44 = a5;
  v55 = a3;
  v52 = a1;
  v53 = a2;
  v50 = a10;
  v13 = *(a9 - 8);
  v14 = *(v13 + 64);
  v41 = a11;
  MEMORY[0x28223BE20](a1);
  v46 = &v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_22C90B0EC();
  v51 = *(v54 - 8);
  v16 = *(v51 + 64);
  MEMORY[0x28223BE20](v54);
  v42 = &v40 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_22C90B10C();
  v48 = *(v49 - 8);
  v18 = *(v48 + 64);
  v19 = MEMORY[0x28223BE20](v49);
  v21 = &v40 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = a8;
  v22 = *(a8 - 8);
  v23 = *(v22 + 64);
  v24 = MEMORY[0x28223BE20](v19);
  v26 = &v40 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v28 = &v40 - v27;
  v29 = *(v22 + 32);
  v43 = &v40 - v27;
  v29(&v40 - v27, a4, a8);
  v58[3] = a9;
  v58[4] = a11;
  v30 = sub_22C36D548(v58);
  (*(v13 + 32))(v30, v44, a9);
  sub_22C90B0FC();
  sub_22C90B0CC();
  sub_22C377A58(v58);
  v31 = v47;
  sub_22C378A4C(v47, v56);
  v32 = swift_allocObject();
  v33 = v40;
  (*(v22 + 16))(v26, v28, v40);
  v34 = *(v13 + 16);
  v35 = v46;
  v34(v46, v30, a9);
  v36 = v55;

  v37 = sub_22C3844FC(v52, v53, v36, v26, 0, v35, v56, v32, a9, v33, v41, v50);
  v38 = v42;
  sub_22C389A50(v57, v36);

  sub_22C36FF94(v31);
  sub_22C36FF94(v57);
  (*(v51 + 8))(v38, v54);
  (*(v48 + 8))(v21, v49);
  sub_22C36FF94(v58);
  (*(v22 + 8))(v43, v33);
  return v37;
}

void *sub_22C3844FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7, void *a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v79 = a7;
  v74 = a5;
  v81 = a3;
  v77 = a1;
  v16 = sub_22C9063DC();
  v75 = *(v16 - 8);
  v76 = v16;
  v17 = *(v75 + 64);
  v18 = MEMORY[0x28223BE20](v16);
  v71 = &v71 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v73 = (&v71 - v21);
  MEMORY[0x28223BE20](v20);
  v23 = &v71 - v22;
  v94 = a10;
  v95 = a12;
  v24 = sub_22C36D548(&v93);
  (*(*(a10 - 8) + 32))(v24, a4, a10);
  v91 = a9;
  v92 = a11;
  v25 = sub_22C36D548(&v90);
  (*(*(a9 - 8) + 32))(v25, a6, a9);
  type metadata accessor for QueryDecorationContextRegistry();
  v26 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v26 + 112) = MEMORY[0x277D84F90];
  a8[26] = v26;
  type metadata accessor for TrialManager();
  swift_allocObject();
  v27 = sub_22C36E65C(1);
  a8[30] = &type metadata for QueryDecorationFeatureControl;
  a8[31] = &off_283FC14D0;
  v78 = a8;
  a8[27] = v27;
  sub_22C90400C();

  v28 = sub_22C9063CC();
  v29 = sub_22C90AABC();

  v30 = os_log_type_enabled(v28, v29);
  v80 = a2;
  if (v30)
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    *&v87 = v32;
    *v31 = 136315394;
    *(v31 + 4) = sub_22C36F9F4(0xD000000000000065, 0x800000022C937B50, &v87);
    *(v31 + 12) = 2080;
    if (a2)
    {
      v33 = v77;
    }

    else
    {
      v33 = 0x3E6C696E3CLL;
    }

    if (a2)
    {
      v34 = a2;
    }

    else
    {
      v34 = 0xE500000000000000;
    }

    v35 = sub_22C36F9F4(v33, v34, &v87);

    *(v31 + 14) = v35;
    _os_log_impl(&dword_22C366000, v28, v29, "%s QueryDecorator initializer (clientApplicationIdentifier: %s)", v31, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x2318B9880](v32, -1, -1);
    MEMORY[0x2318B9880](v31, -1, -1);
  }

  v36 = *(v75 + 8);
  v36(v23, v76);
  if (qword_281431278 != -1)
  {
    swift_once();
  }

  v37 = sub_22C36FAB8();
  v72 = v36;
  v38 = v37;
  DecorationCache = type metadata accessor for QueryDecorationCache(0);
  v40 = v78;
  v78[21] = v38;
  *(v40 + 192) = DecorationCache;
  *(v40 + 200) = &off_283FC17B8;
  v76 = sub_22C379D54();

  sub_22C378A4C(v79, &v87);
  v41 = type metadata accessor for ContextRetrievalService();
  v42 = swift_allocObject();
  swift_defaultActor_initialize();
  sub_22C36C730(&v87, v42 + 112);
  v88 = v41;
  v89 = &off_283FC1488;
  *&v87 = v42;
  type metadata accessor for ToolContextRetrievalService();
  v43 = swift_allocObject();
  v44 = sub_22C36D1E4(&v87, v41);
  v45 = *(v41 - 8);
  v46 = *(v45 + 64);
  MEMORY[0x28223BE20](v44);
  v75 = (v46 + 15) & 0xFFFFFFFFFFFFFFF0;
  v47 = (&v71 - v75);
  v73 = *(v45 + 16);
  v73(&v71 - v75);
  v48 = *v47;
  v43[5] = v41;
  v43[6] = &off_283FC1488;
  v43[2] = v48;

  sub_22C36FF94(&v87);
  v49 = v78;
  sub_22C379DF8((v78 + 21), &v87, &qword_27D9C01C8, &qword_22C9298B0);
  type metadata accessor for OnScreenContentRetrievalService();
  memset(v85, 0, sizeof(v85));
  v86 = 0;
  v50 = swift_allocObject();
  v51 = sub_22C9043BC();
  v52 = *(v51 + 48);
  v53 = *(v51 + 52);
  swift_allocObject();

  v72 = v42;

  v54 = sub_22C9043AC();
  v50[5] = v51;
  v50[6] = &protocol witness table for ContextRetrieval;
  v50[2] = v54;
  v84 = 0;
  memset(v83, 0, sizeof(v83));
  v82[3] = v41;
  v82[4] = &off_283FC1488;
  v82[0] = v42;
  DecorationServiceCaller = type metadata accessor for QueryDecorationServiceCaller();
  v56 = *(DecorationServiceCaller + 48);
  v57 = *(DecorationServiceCaller + 52);
  v58 = swift_allocObject();
  v59 = sub_22C36D1E4(v82, v41);
  v71 = &v71;
  MEMORY[0x28223BE20](v59);
  v60 = (&v71 - v75);
  v73(&v71 - v75);
  v61 = *v60;

  v69 = v58;
  v68 = v43;
  v62 = v77;
  v63 = v80;
  v64 = v81;
  sub_22C378B10(v77, v80, v81, &v87, v61, v85, v50, v83, v68, v76, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81);
  v66 = v65;
  sub_22C36FF94(v82);
  v88 = DecorationServiceCaller;
  v89 = &off_283FC1C08;

  *&v87 = v66;
  sub_22C36FF94(v79);
  sub_22C36C730(&v87, (v49 + 3));
  sub_22C36C730(&v93, (v49 + 8));
  sub_22C36C730(&v90, (v49 + 13));
  v49[2] = v74;
  v49[18] = v62;
  v49[19] = v63;
  v49[20] = v64;
  return v49;
}

uint64_t sub_22C384F20()
{
  sub_22C369980();
  v1 = *(*v0 + 32);
  v2 = *v0;
  sub_22C369970();
  *v3 = v2;

  sub_22C369A24();

  return v4();
}

uint64_t sub_22C385028@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  Decoration = type metadata accessor for QueryDecorationSignposter.SignpostStateImpl(0);
  v6 = *(Decoration + 48);
  v7 = *(Decoration + 52);
  swift_allocObject();

  result = sub_22C3850EC(v2, a1);
  a2[3] = Decoration;
  a2[4] = &off_283FC1360;
  *a2 = result;
  return result;
}

uint64_t sub_22C3850EC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v46 = sub_22C90B0EC();
  v42 = *(v46 - 8);
  v6 = *(v42 + 64);
  MEMORY[0x28223BE20](v46);
  v44 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22C90634C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v41 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = &v35 - v13;
  v15 = sub_22C90636C();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v35 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v35 - v21;
  v3[2] = a1;
  v3[3] = a2;
  v45 = a1;

  v43 = a2;

  sub_22C90367C();
  v23 = v3[3];
  v40 = *(v23 + 16);
  v39 = *(v23 + 32);
  sub_22C90367C();
  sub_22C90635C();
  sub_22C90631C();
  v24 = *(v16 + 8);
  v24(v20, v15);
  v25 = sub_22C90635C();
  v38 = sub_22C90AB6C();
  result = sub_22C90AC5C();
  if ((result & 1) == 0)
  {
    goto LABEL_10;
  }

  v36 = v24;
  v37 = v9;
  if ((v39 & 1) == 0)
  {
    v27 = v14;
    v14 = v40;
    if (v40)
    {
LABEL_9:
      v28 = swift_slowAlloc();
      *v28 = 0;
      v29 = sub_22C90632C();
      _os_signpost_emit_with_name_impl(&dword_22C366000, v25, v38, v29, v14, "", v28, 2u);
      MEMORY[0x2318B9880](v28, -1, -1);
      v14 = v27;
      v24 = v36;
      v9 = v37;
LABEL_10:

      (*(v9 + 16))(v41, v14, v8);
      v30 = sub_22C9063AC();
      v31 = *(v30 + 48);
      v32 = *(v30 + 52);
      swift_allocObject();
      v33 = sub_22C90639C();
      (*(v9 + 8))(v14, v8);
      v24(v22, v15);
      v3[4] = v33;
      v34 = v44;
      sub_22C90B0CC();

      (*(v42 + 32))(v3 + OBJC_IVAR____TtCC30IntelligenceFlowPlannerRuntime25QueryDecorationSignposterP33_F96CF7C2E9F3A9F34A91CA78F1C7733217SignpostStateImpl_start, v34, v46);
      *(v3 + OBJC_IVAR____TtCC30IntelligenceFlowPlannerRuntime25QueryDecorationSignposterP33_F96CF7C2E9F3A9F34A91CA78F1C7733217SignpostStateImpl_ended) = 0;
      return v3;
    }

    __break(1u);
  }

  if (v40 >> 32)
  {
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if ((v40 & 0xFFFFF800) != 0xD800)
  {
    if (v40 >> 16 <= 0x10)
    {
      v27 = v14;
      v14 = &v47;
      goto LABEL_9;
    }

    goto LABEL_12;
  }

LABEL_13:
  __break(1u);
  return result;
}

void sub_22C385538(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

void sub_22C385564()
{
  v1 = v0[18];
  v2 = v0[15];
  v3 = v0[13];
}

uint64_t sub_22C3855E8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v2[91] = a2;
  v3 = v2[83];
  v4 = v2[82];
  sub_22C36C640(v4, a1, 1, v2[80]);
  return v4;
}

uint64_t sub_22C385620()
{
  result = v0;
  v3 = *(v1 - 304);
  return result;
}

uint64_t sub_22C385658()
{

  return sub_22C9081AC();
}

uint64_t sub_22C3856A0(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 52);

  return swift_allocObject();
}

uint64_t sub_22C3856B8()
{

  return swift_task_alloc();
}

uint64_t sub_22C3856E0(uint64_t result)
{
  if (*(*v1 + 24) > result)
  {
    v2 = *(*v1 + 24);
  }

  return result;
}

uint64_t sub_22C385708@<X0>(uint64_t a1@<X8>)
{
  v7 = *(v6 - 88);
  *(*(v6 - 96) + 8 * a1) = v2 | v1;
  result = *(v4 + 48) + v3 * v5;
  v9 = **(v6 - 152);
  return result;
}

void sub_22C38573C()
{
  v1 = v0[70];
  v2 = v0[69];
  v3 = v0[68];
}

uint64_t sub_22C38574C()
{
  v2 = *(*(v1 - 120) + 48) + v0;
  result = *(v1 - 136);
  v4 = *(v1 - 104);
  return result;
}

void sub_22C385768()
{
  v1 = *(v0 - 72);
  v3 = *(v1 + 16);
  v2 = *(v1 + 24);
}

uint64_t sub_22C3857CC()
{
  v2 = **(v1 - 256);
  result = v0;
  v4 = *(v1 - 216);
  return result;
}

uint64_t sub_22C385814()
{

  return swift_slowAlloc();
}

uint64_t sub_22C385840@<X0>(uint64_t a1@<X8>)
{

  return sub_22C36F9F4(0xD000000000000097, a1 | 0x8000000000000000, (v1 - 168));
}

char *sub_22C385860()
{
  v6 = *(v3 + 32);
  v7 = *(v5 + 48);
  *v2 = v4;
  v2[1] = v0;
  *(v1 + 496) = v6;
  *(v1 + 504) = (v3 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  return v2 + v7;
}

unint64_t sub_22C3858B4()
{
  result = qword_28142FA40;
  if (!qword_28142FA40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28142FA40);
  }

  return result;
}

void *QueryDecorator.__allocating_init(clientApplicationIdentifier:toolboxResources:selfLoggerFactory:signposter:contextClient:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t a6)
{
  v11 = a4[3];
  v10 = a4[4];
  sub_22C36D1E4(a4, v11);
  sub_22C36A948();
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v14);
  sub_22C369838();
  v17 = v16 - v15;
  (*(v18 + 16))(v16 - v15);
  v20 = a5[3];
  v19 = a5[4];
  sub_22C36D1E4(a5, v20);
  sub_22C36A948();
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v23);
  sub_22C369838();
  v26 = v25 - v24;
  (*(v27 + 16))(v25 - v24);
  v28 = sub_22C38407C(a1, a2, a3, v17, v26, a6, v32, v11, v20, v10, v19);
  sub_22C36FF94(a5);
  sub_22C36FF94(a4);
  return v28;
}

uint64_t sub_22C385AE4()
{
  sub_22C369980();
  sub_22C369A3C();
  sub_22C36C158();
  *v3 = v2;
  v5 = *(v4 + 272);
  v6 = *v1;
  sub_22C369970();
  *v7 = v6;
  *(v8 + 280) = v0;

  sub_22C36BB08();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_22C385BDC()
{
  sub_22C3749D8();
  v3 = v0[32];
  v0[36] = v0[33];
  sub_22C903C8C();
  sub_22C903CAC();
  if (v4)
  {
    sub_22C50B5FC();
  }

  else
  {
    v6 = v0[18];
    v5 = v0[19];
    v7 = v0[17];
    sub_22C90068C();
    sub_22C90065C();
    sub_22C50B5FC();
    v8 = *(v6 + 8);
    v9 = sub_22C372164();
    v10(v9);
  }

  sub_22C36D190();
  sub_22C903C6C();
  sub_22C90841C();
  v11 = *(MEMORY[0x277D08420] + 4);

  v12 = swift_task_alloc();
  v0[38] = v12;
  sub_22C84BC94();
  sub_22C38694C(v13, v1);
  sub_22C84BCCC(&qword_28142FAC8);
  sub_22C388444();
  sub_22C38694C(v14, v2);
  v15 = sub_22C383940(&qword_28142FAB8);
  *v12 = v0;
  v16 = sub_22C3829F4(v15);

  return MEMORY[0x28215E6E8](v16);
}

uint64_t sub_22C385D6C(uint64_t a1)
{
  *(v1 + 736) = a1;
}

uint64_t sub_22C385DA8()
{
  result = v0[26];
  v2 = v0[23];
  v3 = v0[22];
  v4 = *(v0[24] + 32);
  return result;
}

uint64_t sub_22C385DD8()
{
  v2 = *(v0 + 8);
  result = *(v1 - 120);
  v4 = *(v1 - 136);
  return result;
}

uint64_t sub_22C385DE8()
{
  v2 = *(v0 - 240);

  return sub_22C907DCC();
}

uint64_t sub_22C385E2C()
{
  v4 = *(v2 - 96);
  v5 = *(v2 - 88);
  *(v2 - 96) = v0;
  *(v2 - 88) = v1;
}

void sub_22C385E88()
{
  v7 = *(v3 + 56);
  *(v6 - 416) = v3 + 56;
  *(v6 - 424) = ((1 << *(v3 + 32)) + 63) >> 6;
  *(v6 - 336) = v2 + 16;
  *(v6 - 344) = v1 + 16;
  *(v6 - 264) = v1 + 32;
  *(v6 - 280) = v2 + 8;
  *(v6 - 288) = v1 + 8;
  *(v6 - 400) = v0 + 56;
  *(v6 - 304) = v1;
  *(v6 - 312) = v2;
  *(v6 - 320) = v4;
  *(v6 - 328) = v5;
  *(v6 - 352) = v2 + 32;
  *(v6 - 384) = v3;
  *(v6 - 392) = v0;
}

void sub_22C385F78()
{
  v1 = v0[214];
  v2 = v0[213];
  v3 = v0[212];
  v4 = v0[211];
  v5 = v0[210];
  v6 = v0[209];
  v7 = v0[208];
  v8 = v0[207];
  v9 = v0[206];
  v10 = v0[205];
}

uint64_t sub_22C385FA4()
{
  v2 = *(v0 - 120);

  return sub_22C90903C();
}

uint64_t sub_22C385FC4()
{
  v2 = *(v0 - 72);

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t sub_22C385FDC()
{

  return swift_storeEnumTagMultiPayload();
}

__n128 sub_22C385FF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, __int128 *a15)
{
  result = a15[1];
  v16 = *a15;
  return result;
}

uint64_t sub_22C386034(uint64_t result, float a2)
{
  *v3 = a2;
  *(v4 - 104) = v2;
  *(v4 - 96) = result;
  v5 = *(v2 + 16);
  return result;
}

uint64_t sub_22C386058()
{
  v2 = *(v0 - 120);
  *(v0 - 96) = *(v0 - 152);
}

uint64_t sub_22C386078()
{
  result = v0[47];
  v3 = v0[43];
  v2 = v0[44];
  v5 = v0[41];
  v4 = v0[42];
  v7 = v0[37];
  v6 = v0[38];
  v9 = v0[33];
  v8 = v0[34];
  v10 = v0[32];
  v12 = v0[31];
  v13 = v0[28];
  v14 = v0[27];
  v15 = v0[24];
  v16 = v0[23];
  v17 = v0[22];
  v11 = v0[17];
  v18 = v0[21];
  v19 = v0[18];
  return result;
}

void sub_22C3860B4()
{

  sub_22C89D150();
}

id sub_22C386118()
{

  return [v0 (v1 + 1272)];
}

uint64_t sub_22C38614C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  v23 = *(v21 - 128);

  return MEMORY[0x2821FBD60](a1, a2, a21, v23);
}

void sub_22C386180()
{

  sub_22C591324();
}

double sub_22C386198()
{
  v1 = *(v0 - 392);
  *(v1 + 32) = 0;
  result = 0.0;
  *v1 = 0u;
  *(v1 + 16) = 0u;
  *(v1 + 40) = 1;
  return result;
}

void sub_22C3861B8()
{
  v2 = v0[11];
  v1 = v0[12];
  v4 = v0[9];
  v3 = v0[10];
  v5 = v0[8];
  v8 = v0[7];
  v7 = v0[5];
  v6 = v0[6];
}

void sub_22C3861D0(uint64_t *a1@<X8>)
{
  v3 = *a1;
  v2 = a1[1];
  *(v1 + 56) = v3;
  *(v1 + 104) = v2;
}

uint64_t sub_22C38620C()
{

  return sub_22C58FF40(v0, type metadata accessor for FullPlannerVersionHandler.GenericInitialisationParameters);
}

uint64_t sub_22C386268()
{
  result = v0;
  v3 = *(v1 - 152);
  v5 = *(v1 - 176);
  v4 = *(v1 - 168);
  return result;
}

void sub_22C3862A8()
{
  v4 = v1[103];
  v5 = v1[102];
  v6 = v1[87];
  *(v2 - 96) = v0;

  sub_22C3B5E2C();
}

void sub_22C386394(uint64_t a1@<X8>)
{
  v3 = *(*(a1 + *(v1 - 256)) + 16);

  JUMPOUT(0x2318B8B10);
}

void sub_22C3863B4(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v4, a3, a4, v5, 0xCu);
}

uint64_t sub_22C3863D0()
{
  result = v0;
  v3 = *(v1 - 312);
  v4 = *(v1 - 304);
  return result;
}

uint64_t sub_22C38642C()
{
  *(v2 - 120) = v1;
  *(v2 - 112) = v0;
}

uint64_t sub_22C386458()
{
  v2 = *(v0 + 496);
  v3 = *(v0 + 472);
  v4 = *(v0 + 280);
  v5 = *(v0 + 264);
  v6 = *(v0 + 959);
  sub_22C374168((v0 + 232), v1);

  return sub_22C9079EC();
}

__n128 sub_22C38649C()
{
  v2 = *(v1 - 160);
  *(v1 - 128) = *(v1 - 176);
  *(v1 - 112) = v2;
  result = *(v1 - 151);
  *(v1 - 103) = result;
  *(v1 - 192) = v0;
  return result;
}

uint64_t sub_22C3864B4@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(a2 - 32) = v3;
  *(a2 - 24) = v2;
  *(a2 - 16) = *(v4 - 552);
  *(a2 - 8) = result;
  return result;
}

uint64_t sub_22C3864EC()
{
  result = v0;
  v3 = *(v1 - 168);
  return result;
}

void sub_22C38652C()
{
  sub_22C36FF94(v0);

  JUMPOUT(0x2318B9880);
}

__n128 sub_22C386560()
{
  v1 = *(v0 - 184);
  *(v0 - 144) = *(v0 - 200);
  *(v0 - 128) = v1;
  result = *(v0 - 175);
  *(v0 - 119) = result;
  return result;
}

uint64_t sub_22C386590(float a1)
{
  *v3 = a1;
  *(v1 + 360) = v2;
  v5 = *(v1 + 96);

  return sub_22C9087FC();
}

uint64_t sub_22C3865B4()
{
  result = v0;
  v2 = *(v0 + 16);
  return result;
}

uint64_t sub_22C38662C@<X0>(uint64_t a1@<X8>)
{
  v3 = *(a1 - 256);
  v4 = *(v1 - 208);

  return sub_22C90B47C();
}

id sub_22C38664C()
{
  v3 = *(v1 - 224);

  return sub_22C5F2214(v0, 65568);
}

uint64_t sub_22C386690()
{
  result = v0;
  v3 = *(v1 - 192);
  v4 = *(v1 - 272);
  return result;
}

uint64_t sub_22C3866CC()
{
  v2 = *(v0 + 40);

  return sub_22C90B62C();
}

uint64_t sub_22C3866EC()
{

  return sub_22C90B4FC();
}

uint64_t sub_22C386708()
{
  result = *(v0 + 920);
  v2 = *(v0 + 904);
  return result;
}

uint64_t sub_22C386714(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{

  return sub_22C3A5908(a5, a6);
}

uint64_t sub_22C38672C@<X0>(uint64_t a1@<X8>)
{
  *v2 = *(v6 - 88);
  v2[1] = v5;
  v2[2] = ~v1;
  v2[3] = a1;
  v2[4] = v4;
  return v3;
}

uint64_t sub_22C386764()
{
}

void sub_22C38679C(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{
  v8 = *(v4 + 360);
  v9 = *(v4 + 360);

  _os_log_impl(a1, v6, v9, a4, v5, 0x16u);
}

void sub_22C3867C0()
{
  *(v1 - 104) = v0;
  v2 = *(v0 + 24);
  v3 = *(v0 + 16) + 1;
}

void sub_22C3867D4()
{
  v1 = v0[79];
  v2 = v0[78];
  v3 = v0[77];
  v4 = v0[76];
  v5 = v0[75];
  v6 = v0[72];
  v7 = v0[71];
  v8 = v0[70];
  v9 = v0[67];
  v10 = v0[66];
  v11 = v0[65];
  v12 = v0[63];
  v13 = v0[64];
}

uint64_t sub_22C386808()
{
  result = v0;
  v3 = *(v1 - 136);
  return result;
}

void sub_22C38681C()
{
  v1 = v0[79];
  v2 = v0[78];
  v3 = v0[77];
  v4 = v0[76];
}

void sub_22C386830(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0xCu);
}

void sub_22C386850()
{
  v1 = *(v0 - 144);
  v2 = *(v1 + 48);
  v3 = *(v1 + 56);
}

uint64_t sub_22C386898()
{

  return swift_unknownObjectRetain_n();
}

void sub_22C3868B4(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0x16u);
}

uint64_t sub_22C3868F0@<X0>(uint64_t a1@<X8>)
{
  v2 = *(a1 - 256);

  return sub_22C90405C();
}

uint64_t sub_22C386908(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_22C903D4C();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_22C38694C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_22C386994()
{
  result = v0;
  v3 = *(v1 - 144);
  return result;
}

uint64_t sub_22C3869A4()
{

  return swift_retain_n();
}

void sub_22C3869BC(uint64_t a1)
{
  *(a1 + 16) = v1;
  *(v2 + 16) = a1;

  sub_22C45A8C4(v2 | 0x6000000000000000, 0);
}

uint64_t sub_22C3869FC(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  *(v14 + 848) = a2;
  *(v14 + 672) = *(v15 + 104);
  *(v14 + 680) = (v15 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  return a14;
}

uint64_t sub_22C386A50()
{

  return sub_22C90882C();
}

uint64_t sub_22C386A68()
{

  return sub_22C90AEEC();
}

uint64_t sub_22C386A98()
{
  v2 = v0[107];
  v4 = v0[51];
  v3 = v0[52];
  v5 = v0[50];

  return swift_slowAlloc();
}

uint64_t sub_22C386ABC()
{
  v1 = **(v0 - 456);
  result = *(v0 - 536);
  v3 = *(v0 - 296);
  return result;
}

uint64_t sub_22C386AE8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = *(v4 - 104);

  return sub_22C79CFB4(v3, v6, a3);
}

void sub_22C386B04()
{
  v3 = v1[123];
  v4 = v1[116];
  v5 = v1[113];
  v6 = v1[112];
  v7 = v1[73];
  *(v2 - 160) = v0;
  *(v2 - 152) = v7;
}

uint64_t sub_22C386B20()
{
  v2 = v0[41];
  v5 = v0[40];
  v6 = v0[39];
  v3 = v0[37];
  v7 = v0[34];
  v8 = v0[31];
}

uint64_t sub_22C386B50()
{

  return swift_beginAccess();
}

uint64_t sub_22C386B70()
{
  *(v4 - 312) = (v0 + 63) >> 6;
  *(v4 - 296) = v1 + 16;
  *(v4 - 304) = v3 + 16;
  *(v4 - 216) = v3 + 32;
  *(v4 - 208) = v1 + 32;
  *(v4 - 264) = v1;
  *(v4 - 256) = v3;
  *(v4 - 248) = v2;
  *(v4 - 240) = v3 + 8;
  *(v4 - 232) = v1 + 8;
}

uint64_t sub_22C386BF4()
{
  v3 = *(v0 + 8);
  result = v1;
  v5 = *(v2 - 312);
  return result;
}

_OWORD *sub_22C386C08()
{

  return sub_22C62F20C();
}

uint64_t sub_22C386C7C()
{
  *(v1 - 120) = v0[40];
  v4 = v0[38];
  *(v1 - 128) = v0[37];

  return swift_slowAlloc();
}

double sub_22C386CA8@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  return result;
}

uint64_t sub_22C386CE8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return sub_22C3A5908(a3, a4);
}

uint64_t sub_22C386D10()
{
  v1 = *(*(v0 - 424) + 8);
  result = *(v0 - 432);
  v3 = *(v0 - 376);
  return result;
}

void sub_22C386D54()
{
  v1 = v0[227];
  v2 = v0[224];
  v3 = v0[223];
}

uint64_t sub_22C386D8C()
{

  return sub_22C90A5EC();
}

void sub_22C386DA4()
{

  JUMPOUT(0x2318B9880);
}

void sub_22C386DE8(uint64_t a1@<X8>)
{
  v2 = *(*(a1 - 256) + 16);

  JUMPOUT(0x2318B8B10);
}

void sub_22C386E04(uint64_t a1, uint64_t a2)
{
  *(v3 - 88) = v2;
  *(v3 - 112) = a2;

  sub_22C3B5E2C();
}

uint64_t sub_22C386E28()
{
  v2 = v0[10];
  v3 = v0[11];
  v4 = v0[9];
  v6 = v0[4];
  v5 = v0[5];
  v7 = v0[3];

  return sub_22C908D2C();
}

uint64_t *sub_22C386E4C()
{
  result = sub_22C374168((*(v0 + 24) + 24), *(*(v0 + 24) + 48));
  v2 = *result;
  return result;
}

void sub_22C386E98(uint64_t a1@<X8>)
{
  v2 = (v1 + a1);
  *v2 = 0;
  v2[1] = 0;
}

uint64_t sub_22C386EA4()
{

  return sub_22C901EDC();
}

uint64_t sub_22C386EBC(__n128 *a1, __n128 a2)
{
  a1[1] = a2;
  v5 = *(v2 + 16);
  result = v3;
  v7 = *(v4 - 128);
  return result;
}

uint64_t sub_22C386EDC@<X0>(void *a1@<X8>)
{
  *a1 = v4;
  a1[1] = v2;
  v7 = (a1 + v1);
  v8 = *(v5 - 104);

  return sub_22C8F0480(v8, v3, v7);
}

uint64_t sub_22C386F58(uint64_t a1)
{

  return sub_22C36C640(v1 + v2, 1, 1, a1);
}

uint64_t sub_22C386F88()
{
  v5 = *(v2 + 100);
  v10 = *(v2 + 104);
  v6 = *(v2 + 92);
  v7 = *(v2 + 96);
  v8 = *(v2 + 88);
  *(v2 + 64) = v1;
  *(v2 + 72) = v0;
  *(v2 + 80) = v3;

  return sub_22C90069C();
}

uint64_t sub_22C386FB4()
{
  v1 = v0[8];
  v2 = *(v0[9] + 8);
  return v0[10];
}

uint64_t sub_22C386FC8@<X0>(uint64_t a1@<X8>, uint64_t a2)
{

  return sub_22C3E8FB4(v2, &a2 - a1, v3, v4);
}

uint64_t sub_22C38701C()
{

  return swift_bridgeObjectRetain_n();
}

void sub_22C387034(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

void *sub_22C387054(void *a1)
{
  result = sub_22C374168(a1, v1);
  v4 = *(v2 + 8);
  return result;
}

uint64_t sub_22C3870C8(uint64_t a1, uint64_t a2)
{

  return sub_22C4B86BC(v2, a2);
}

uint64_t sub_22C3870F0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return sub_22C3E8FB4(v9 + v10, &a9, a3, a4);
}

double sub_22C387108@<D0>(uint64_t a1@<X8>)
{
  v2 = v1 + a1;
  *(v2 + 32) = 0;
  result = 0.0;
  *v2 = 0u;
  *(v2 + 16) = 0u;
  return result;
}

double sub_22C38711C@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t sub_22C38712C()
{

  return sub_22C901F0C();
}

uint64_t sub_22C387168@<X0>(uint64_t a1@<X8>)
{

  return sub_22C378A4C(v3 + a1, v2 + v1);
}

double sub_22C3871A0@<D0>(uint64_t a1@<X8>)
{
  *v1 = a1;
  result = 0.0;
  *(v1 + 8) = 0u;
  *(v1 + 24) = 0u;
  *(v1 + 40) = 1;
  return result;
}

uint64_t sub_22C3871D0()
{
  *(v0 + 88) = &unk_22C91AB18;
  *(v0 + 96) = 0;
}

void sub_22C3871F8()
{

  sub_22C591324();
}

char *sub_22C38721C()
{
  *v3 = v2;
  v4 = *(v1 + 32);
  return v3 + *(v0 + 48);
}

uint64_t sub_22C387250()
{

  return sub_22C90735C();
}

uint64_t sub_22C3872CC()
{
  v6 = *(v2 + 456);

  return sub_22C3DB138(v4, v3, v0, v1);
}

uint64_t sub_22C387310(uint64_t a1)
{

  return sub_22C36C640(a1, 0, 1, v1);
}

uint64_t sub_22C38732C()
{
  *(v1 - 96) = v0;

  return sub_22C909F7C();
}

uint64_t sub_22C387350(uint64_t result)
{
  *(v1 + 4) = result;
  *(v1 + 12) = 2048;
  *(v1 + 14) = v2;
  *(v1 + 22) = 2048;
  return result;
}

void sub_22C387380()
{
  v3 = v0[53];
  v4 = v0[52];
  v5 = v0[51];
  v6 = v0[50];
  v7 = v0[49];
  v8 = v0[48];
  v9 = v0[47];
  v10 = v0[46];
  v11 = v0[45];
  v12 = v0[44];
  v1 = v0[41];
  v2 = v0[38];
  v13 = v0[39];
}

uint64_t sub_22C3873BC@<X0>(uint64_t a1@<X8>)
{
  *(v3 - 256) = v1;
  *(v3 - 248) = a1;
  v5 = v2[48];
  *(v3 - 240) = v2[49];
  *(v3 - 232) = v5;
  v6 = v2[45];
  *(v3 - 224) = v2[46];
  *(v3 - 216) = v6;
  v7 = v2[41];
  *(v3 - 208) = v2[42];
  *(v3 - 200) = v7;
  v8 = v2[39];
  *(v3 - 192) = v2[40];
  *(v3 - 184) = v8;
  v9 = v2[35];
  *(v3 - 176) = v2[36];
  *(v3 - 168) = v9;
  v10 = v2[29];
  *(v3 - 160) = v2[32];
  *(v3 - 152) = v10;
  v11 = v2[25];
  *(v3 - 144) = v2[26];
  *(v3 - 136) = v11;
  v12 = v2[23];
  *(v3 - 128) = v2[24];
  *(v3 - 120) = v12;
  v14 = v2[16];
  v13 = v2[17];
  *(v3 - 112) = v2[20];
  *(v3 - 104) = v13;
  v15 = v2[13];
  *(v3 - 96) = v14;
  *(v3 - 88) = v15;
}

uint64_t sub_22C387440()
{
  v2 = *(v0 - 104);

  return swift_getEnumCaseMultiPayload();
}

uint64_t sub_22C387490()
{

  return swift_allocObject();
}

uint64_t sub_22C3874A8()
{
  v2 = *(v0 + 48);
  v3 = **(v1 - 120);
  result = *(v1 - 168);
  v5 = *(v1 - 104);
  return result;
}

uint64_t sub_22C3874D0()
{
  v3 = v0[35];
  v4 = v0[32];
  v5 = v0[31];
  v6 = v0[28];
  v7 = v0[27];
  v8 = v0[26];
  v9 = v0[25];
}

void sub_22C387500()
{

  sub_22C3B7754();
}

uint64_t sub_22C387564()
{
  result = v0[131];
  v2 = v0[128];
  v3 = v0[127];
  v4 = v0[126];
  v5 = v0[125];
  v6 = v0[122];
  v7 = v0[121];
  return result;
}

void sub_22C387674()
{
}

uint64_t sub_22C38768C()
{
  v2 = *(v0 + 56);
  v3 = *(v1 - 144);
  v4 = *(v3 + 72);
  v5 = *(v3 + 32);
  result = *(v1 - 104);
  v7 = *(v1 - 96);
  v8 = *(v1 - 128);
  return result;
}

uint64_t sub_22C3876D8()
{

  return sub_22C8C5ED8();
}

void sub_22C38773C()
{
  *(v1 - 208) = v0;
  v2 = *(v1 - 128);
  v3 = *(v2 + 72);
  v4 = *(v2 + 80) + 32;
}

uint64_t sub_22C387760(uint64_t a1, unint64_t a2)
{
  v4 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_19;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  for (; v5; v5 = sub_22C90A3BC())
  {
    result = sub_22C387878(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_22C90AF0C();
      if (v11)
      {
        goto LABEL_23;
      }

      v4 = result;
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v13[0] = a1;
        v13[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        if (v5 < v4)
        {
          goto LABEL_23;
        }

        v9 = (result + 32);
        v10 = v13;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v8 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
          v4 = a1 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          result = sub_22C90AFCC();
          v8 = result;
          v4 = v12;
        }

        if (v5 < v4)
        {
LABEL_23:
          __break(1u);
          return result;
        }

        v9 = (v7 + 32);
        v10 = v8;
      }

      memcpy(v9, v10, v4);
    }

    if (v4 == v5)
    {
      return v7;
    }

    __break(1u);
LABEL_19:
    ;
  }

  return MEMORY[0x277D84F90];
}

void *sub_22C387878(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  sub_22C3A5908(&qword_27D9BA9E8, &qword_22C90D030);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

uint64_t sub_22C3878EC(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (!result || v5 > *(v3 + 24) >> 1)
  {
    if (v4 <= v5)
    {
      v8 = v4 + v2;
    }

    else
    {
      v8 = v4;
    }

    result = sub_22C3A880C(result, v8, 1, v3);
    v3 = result;
  }

  if (!*(v6 + 16))
  {

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  v9 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v9 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v9 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v10 = *(v3 + 16);
  v11 = __OFADD__(v10, v2);
  v12 = v10 + v2;
  if (!v11)
  {
    *(v3 + 16) = v12;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_22C3879D0()
{
  v1 = sub_22C901DDC();
  v2 = sub_22C369824(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  sub_22C369838();
  sub_22C37B6BC();
  v7 = sub_22C90210C();
  v8 = sub_22C369824(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v8);
  sub_22C369838();
  v15 = v14 - v13;
  sub_22C9020FC();
  (*(v4 + 104))(v0, *MEMORY[0x277D1C248], v1);
  sub_22C871F7C();
  sub_22C9020EC();
  v16 = *(v4 + 8);
  v17 = sub_22C36A724();
  v18(v17);
  return (*(v10 + 8))(v15, v7);
}

void sub_22C387B80()
{
  v7 = *(v6 - 336);
  *(v6 - 344) = v2;
  *(v6 - 352) = v0;
  *(v6 - 280) = v3;
  *(v6 - 360) = v5;
  *(v6 - 400) = v4;
  *(v6 - 408) = v1;
}

void sub_22C387BBC()
{
  v3 = v0[111];
  v4 = v0[110];
  v5 = v0[109];
  v6 = v0[108];
  v7 = v0[107];
  v8 = v0[106];
  v9 = v0[105];
  v10 = v0[104];
  v11 = v0[103];
  v12 = v0[102];
  v13 = v0[101];
  v14 = v0[100];
  v15 = v0[99];
  v16 = v0[98];
  v17 = v0[97];
  v18 = v0[94];
  v19 = v0[93];
  v20 = v0[92];
  v21 = v0[89];
  v22 = v0[86];
  v23 = v0[83];
  v24 = v0[80];
  v25 = v0[77];
  v26 = v0[74];
  v27 = v0[71];
  v28 = v0[68];
  v29 = v0[65];
  v30 = v0[62];
  v31 = v0[60];
  v32 = v0[59];
  v33 = v0[57];
  v34 = v0[56];
  v35 = v0[53];
  v36 = v0[52];
  v1 = v0[50];
  v2 = v0[51];
}

void sub_22C387CAC()
{
  v2 = *(*v0 + 16);

  JUMPOUT(0x2318B8B10);
}

uint64_t sub_22C387CC4()
{

  return sub_22C90B64C();
}

uint64_t sub_22C387CEC(uint64_t a1)
{
  *(a1 + 8) = v1;
  v4 = v2[4];
  v3 = v2[5];
  return v2[3];
}

unint64_t sub_22C387D14()
{

  return sub_22C575E6C();
}

void sub_22C387D34()
{
  v2 = v0[65];
  v3 = v0[64];
  *(v1 - 104) = v0[63];
  v5 = v0[48];
  v4 = v0[49];
}

id sub_22C387D48()
{

  return [v0 (v1 + 855)];
}

uint64_t sub_22C387D6C()
{

  return sub_22C90AFAC();
}

uint64_t sub_22C387DA8()
{
  *(v2 - 104) = *(*(v1 + 56) + 8 * v0);
}

uint64_t sub_22C387DF4(uint64_t a1)
{
  v2 = sub_22C9061AC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = v25 - v8;
  v10 = sub_22C9063DC();
  v26 = *(v10 - 8);
  v27 = v10;
  v11 = *(v26 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22C90406C();
  v14 = *(v3 + 16);
  v14(v9, a1, v2);
  v15 = sub_22C9063CC();
  v16 = sub_22C90AABC();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v25[1] = a1;
    v18 = v17;
    v25[0] = swift_slowAlloc();
    *&v28 = v25[0];
    *v18 = 136315394;
    *(v18 + 4) = sub_22C36F9F4(0x6E65764574696D65, 0xED0000293A5F2874, &v28);
    *(v18 + 12) = 2080;
    v14(v7, v9, v2);
    v19 = sub_22C90A1AC();
    v21 = v20;
    (*(v3 + 8))(v9, v2);
    v22 = sub_22C36F9F4(v19, v21, &v28);

    *(v18 + 14) = v22;
    _os_log_impl(&dword_22C366000, v15, v16, "[%s] Writing log %s", v18, 0x16u);
    v23 = v25[0];
    swift_arrayDestroy();
    MEMORY[0x2318B9880](v23, -1, -1);
    MEMORY[0x2318B9880](v18, -1, -1);
  }

  else
  {

    (*(v3 + 8))(v9, v2);
  }

  result = (*(v26 + 8))(v13, v27);
  if (qword_281431190 != -1)
  {
    result = swift_once();
  }

  if (qword_2814311B0)
  {
    result = sub_22C378A4C(&xmmword_281431198, &v28);
  }

  else
  {
    v28 = xmmword_281431198;
    v29 = *algn_2814311A8;
    v30 = qword_2814311B8;
  }

  if (*(&v29 + 1))
  {
    sub_22C374168(&v28, *(&v29 + 1));
    sub_22C9062BC();
    return sub_22C36FF94(&v28);
  }

  return result;
}

void sub_22C3881B0()
{
  v2 = *(v0 - 168);
  v1 = *(v0 - 160);
  v3 = *(v0 - 192);
}

uint64_t sub_22C3881CC(uint64_t a1, uint64_t a2)
{

  return sub_22C49C7B0(v2, a2, v3);
}

uint64_t sub_22C3881EC(uint64_t a1)
{
  v3 = *(a1 + 20);
  *(v1 + 952) = v3;
  return v2 + v3;
}

void sub_22C388200()
{
  v1 = *(v0 - 168);
  v2 = *(v0 - 176) & 1;
  v3 = *(v0 - 160);
  v4 = *(v0 - 152);
}

double sub_22C388268()
{
  v1 = *(v0 - 384);
  *(v1 + 32) = 0;
  result = 0.0;
  *v1 = 0u;
  *(v1 + 16) = 0u;
  *(v1 + 40) = 1;
  return result;
}

BOOL sub_22C388294()
{

  return os_log_type_enabled(v0, v1);
}

uint64_t sub_22C3882AC()
{

  return sub_22C90B32C();
}

void sub_22C3882D8()
{
  v5 = *(v1 + 56);
  *(v4 - 168) = v1 + 56;
  v6 = 1 << *(v1 + 32);
  *(v4 - 120) = v2 + 32;
  *(v4 - 104) = v0 + 56;
  *(v4 - 96) = v2 + 16;
  *(v4 - 160) = (v6 + 63) >> 6;
  *(v4 - 152) = v3;
  *(v4 - 144) = v2;
  *(v4 - 136) = v1;
}

uint64_t sub_22C388334()
{
  result = sub_22C36C640(v1, 0, 1, v0);
  v4 = *(v2 - 352);
  return result;
}

uint64_t sub_22C388360@<X0>(uint64_t a1@<X8>)
{
  result = v3 + a1 + *(v2 + 72) * v1;
  v6 = *(v2 + 32);
  v7 = *(v4 - 120);
  return result;
}

uint64_t sub_22C388378()
{
  result = v0;
  v3 = *(v1 - 120);
  v4 = *(v1 - 104);
  return result;
}

uint64_t sub_22C388394()
{
  v1 = *(v0 - 224);
  result = *(v0 - 232);
  v3 = *(v0 - 440);
  v4 = *(v0 - 176);
  return result;
}

void sub_22C3883AC()
{

  JUMPOUT(0x2318B7850);
}

uint64_t sub_22C388400(uint64_t result)
{
  *(v1 + 4) = result;
  *(v1 + 12) = 2080;
  return result;
}

void sub_22C388424(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t sub_22C388498()
{

  return type metadata accessor for ResponseGenerationTriageReport(0);
}

uint64_t sub_22C3884C8()
{
  *(v0 + 16) = 0xD000000000000016;
  *(v0 + 24) = v1;
  return v0;
}

uint64_t sub_22C3884E0()
{
  v1 = *(v0 - 112);
  v2 = *(*(v0 - 120) + 8);
  return *(v0 - 104);
}

uint64_t sub_22C388584()
{
  result = v0[29];
  v2 = v0[27];
  v3 = *(v0[28] + 8);
  return result;
}

uint64_t sub_22C388600()
{
  v4 = *(v0 + v1);
}

uint64_t sub_22C38862C()
{
  v2 = *(v0 - 152);

  return sub_22C90B24C();
}

uint64_t sub_22C38864C@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(result + 16) = 0xD000000000000028;
  *(result + 24) = (a2 - 32) | 0x8000000000000000;
  return result;
}

uint64_t sub_22C3886AC()
{
  result = v0[79];
  v2 = v0[73];
  v3 = *(v0[74] + 8);
  return result;
}

uint64_t sub_22C3886C0()
{
  v1 = *(*(v0 - 584) + 8);
  result = *(v0 - 288);
  v3 = *(v0 - 576);
  return result;
}

uint64_t sub_22C38870C()
{
  v1 = *(v0 - 272);
  *(v0 - 160) = *(v0 - 288);
  *(v0 - 144) = v1;
  v2 = *(v0 - 240);
  *(v0 - 128) = *(v0 - 256);
  *(v0 - 112) = v2;
  return v0 - 160;
}

void sub_22C388730()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
}

uint64_t sub_22C388798()
{

  return sub_22C90B6BC();
}

uint64_t sub_22C3887D4()
{

  return sub_22C36F9F4(v1, v2, (v0 + 216));
}

void sub_22C3887F0()
{
  v1 = v0[118];
  v2 = v0[107];
  v3 = v0[101];
  v4 = v0[100];
}

void sub_22C388810()
{
  if (*(*v0 + 24) > v1)
  {
    v2 = *(*v0 + 24);
  }
}

__n128 sub_22C38884C(__n128 *a1)
{
  result = *(v1 - 96);
  a1[1] = result;
  return result;
}

void sub_22C388858()
{
  *(v2 - 120) = v0;
  *(v2 - 112) = v0 + 56;
  v3 = ~(-1 << *(v0 + 32));
  *(v2 - 104) = v1 + 16;
  *(v2 - 128) = v1 + 8;
}

uint64_t sub_22C388884()
{
  v3 = v0[73];
  *(v1 - 256) = v0[76];
  *(v1 - 248) = v3;
  v4 = v0[71];
  *(v1 - 240) = v0[72];
  *(v1 - 232) = v4;
  v5 = v0[67];
  *(v1 - 224) = v0[70];
  *(v1 - 216) = v5;
  v6 = v0[63];
  *(v1 - 208) = v0[64];
  *(v1 - 200) = v6;
  v7 = v0[59];
  *(v1 - 192) = v0[60];
  *(v1 - 184) = v7;
  v8 = v0[53];
  *(v1 - 176) = v0[56];
  *(v1 - 168) = v8;
  v9 = v0[47];
  *(v1 - 160) = v0[50];
  *(v1 - 152) = v9;
  v10 = v0[43];
  *(v1 - 144) = v0[44];
  *(v1 - 136) = v10;
  v11 = v0[39];
  *(v1 - 128) = v0[40];
  *(v1 - 120) = v11;
  v12 = v0[34];
  v13 = v0[35];
  *(v1 - 112) = v0[38];
  *(v1 - 104) = v13;
  *(v1 - 96) = v12;
}

uint64_t sub_22C388900()
{
  v2 = *(v0 - 104);

  return swift_getEnumCaseMultiPayload();
}

uint64_t sub_22C38891C()
{

  return swift_allocObject();
}

void sub_22C38893C()
{
  *(v4 - 88) = v1;
  *(v4 - 112) = v3;
  *(v4 - 104) = v0;
  v5 = *(v2 + 16);
  *(v4 - 96) = v3 + 32;
}

uint64_t sub_22C38895C(unint64_t *a1)
{

  return sub_22C73940C(a1);
}

unint64_t sub_22C388980()
{

  return sub_22C5F2300();
}

uint64_t sub_22C3889D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_22C36C640(v4, 1, 1, a4);
}

void sub_22C3889EC()
{
  v1 = v0[103];
  v2 = v0[102];
  v3 = v0[101];
  v4 = v0[100];
  v5 = v0[99];
  v6 = v0[98];
  v7 = v0[97];
  v8 = v0[96];
}

void sub_22C388A10()
{
  v1 = v0[101];
  v2 = v0[100];
  v3 = v0[81];
}

void sub_22C388A20()
{
  v1 = v0[21];
  v2 = v0[20];
  v3 = v0[17];
}

void sub_22C388A34()
{
  v2 = v0[50];
  v1 = v0[51];
  v3 = v0[47];
  v5 = v0[43];
  v4 = v0[44];
  v7 = v0[41];
  v8 = v0[40];
  v9 = v0[39];
  v10 = v0[37];
  v6 = v0[34];
  v11 = v0[31];
}

uint64_t sub_22C388AAC()
{

  return swift_beginAccess();
}

uint64_t sub_22C388AD8(uint64_t a1, uint64_t a2)
{
  result = a2;
  v4 = *(v2 + 16);
  return result;
}

uint64_t sub_22C388AEC@<X0>(uint64_t a1@<X8>)
{
  *(v2 - 80) = a1;
  v4 = v1[90];
  v5 = v1[89];
  v6 = v1[88];
  v7 = v1[87];
  v8 = v1[86];
  v9 = v1[85];
  v10 = v1[84];
  v11 = v1[81];
  v12 = v1[78];
  v13 = v1[77];
  v16 = v1[76];
  v17 = v1[73];
  v18 = v1[70];
  v19 = v1[67];
  v20 = v1[64];
  v21 = v1[61];
  v22 = v1[58];
  v23 = v1[55];
  v24 = v1[54];
  v25 = v1[51];
  v26 = v1[50];
  v27 = v1[47];
  v28 = v1[44];
  v14 = v1[41];
  *(v2 - 96) = v1[42];
  *(v2 - 88) = v14;
}

uint64_t sub_22C388BA0()
{
  v6 = v0[69];
  v7 = v0[68];
  v8 = v0[65];
  v9 = v0[64];
  v10 = v0[63];
  v11 = v0[62];
  v12 = v0[61];
  v13 = v0[60];
  v14 = v0[58];
  v15 = v0[55];
  v16 = v0[52];
  v17 = v0[51];
  v18 = v0[49];
  v2 = v0[45];
  *(v1 - 104) = v0[46];
  *(v1 - 96) = v2;
  v3 = v0[41];
  *(v1 - 88) = v0[42];
  *(v1 - 80) = v3;
  sub_22C36FF94(v0 + 12);
  sub_22C36FF94(v0 + 2);
}

uint64_t sub_22C388C60()
{
  v3 = v0[89];
  v4 = v0[86];
  v5 = v0[85];
  *(v1 - 112) = v0[84];
  *(v1 - 104) = v4;
  v6 = v0[79];
  v7 = v0[74];
  *(v1 - 128) = v0[73];
  *(v1 - 120) = v6;
  v8 = v0[61];
  v9 = v0[62];
  v11 = v0[59];
  v10 = v0[60];
}

void sub_22C388CB8()
{
  v1 = *(v0 - 528);
  v2 = *(v0 - 560);
  v3 = *(v0 - 536);
}

void sub_22C388CD4()
{
  v1 = v0[89];
  v2 = v0[73];
  v3 = v0[72];
  v4 = v0[71];
  v5 = v0[70];
  v6 = v0[69];
  v7 = v0[67];
  v8 = v0[64];
}

uint64_t sub_22C388D58()
{

  return swift_slowAlloc();
}

uint64_t sub_22C388DBC(uint64_t a1)
{
  v3 = *(a1 + 48);
  v4 = *(v1 + 32);
  result = *(v2 - 272);
  v6 = *(v2 - 208);
  return result;
}

void sub_22C388DE4()
{
  *(v1 - 88) = v0;
  v2 = *(v0 + 24);
  v3 = *(v0 + 16) + 1;
}

uint64_t sub_22C388DF8()
{
  result = *(v0 + 664);
  v2 = *(v0 + 648);
  return result;
}

void sub_22C388E14()
{

  JUMPOUT(0x2318B7DB0);
}

uint64_t sub_22C388E30()
{

  return swift_arrayInitWithCopy();
}

uint64_t sub_22C388E60()
{

  return sub_22C90B4FC();
}

uint64_t sub_22C388E88()
{
  v1 = *(*(v0 - 384) + 8);
  result = *(v0 - 392);
  v3 = *(v0 - 376);
  return result;
}

void sub_22C388ED4()
{
  v3 = (v1 + *(v0 + 28));
  v4 = *(v2 - 304);
  *v3 = *(v2 - 416);
  v3[1] = v4;
}

double sub_22C388F74@<D0>(uint64_t a1@<X8>)
{
  v2 = v1 + a1;
  *(v2 + 32) = 0;
  result = 0.0;
  *v2 = 0u;
  *(v2 + 16) = 0u;
  return result;
}

void sub_22C388FC0()
{
  v1 = v0[71];
  v2 = v0[70];
  v3 = v0[69];
}

uint64_t sub_22C388FE8()
{
  v3 = *(v1 + *(v0 + 48)) & 0x1FFFFFFFFFFFFFFFLL;
}

uint64_t sub_22C389004()
{
  v2 = **(v1 - 264);
  result = v0;
  v4 = *(v1 - 176);
  return result;
}

uint64_t sub_22C38901C(uint64_t result)
{
  *(result + 16) = v3;
  *(result + 24) = 0;
  *(result + 32) = 1;
  *(v2 + v1) = result;
  return result;
}

uint64_t sub_22C38909C()
{
  v4 = v0 + *(v1 + 24);
  v5 = *(v2 - 144);

  return sub_22C3ECF48(v4, v5);
}

uint64_t sub_22C3890D4()
{
  result = v0 + 56;
  v3 = v1 + 56 + 8 * (((1 << *(v0 + 32)) + 63) >> 6);
  return result;
}

uint64_t sub_22C3890FC(uint64_t a1)
{

  return sub_22C643FB8(a1, type metadata accessor for ValueFormatter);
}

uint64_t sub_22C389144()
{
  v1 = **(v0 - 488);
  result = *(v0 - 400);
  v3 = *(v0 - 376);
  return result;
}

uint64_t sub_22C389170()
{

  return sub_22C7293AC(v1, v0);
}

uint64_t sub_22C389190@<X0>(uint64_t a1@<X8>)
{
  v3 = *(a1 + 96);
  result = v1;
  v5 = *(v2 - 152);
  return result;
}

uint64_t sub_22C3891D4()
{

  return sub_22C633A2C(0, (v0 & 0xC000000000000001) == 0, v0);
}

uint64_t sub_22C3891F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{

  return sub_22C7491A8(a1, a2);
}

uint64_t sub_22C38921C(uint64_t a1)
{
  v3 = *(a1 + 48);
  v4 = *(v1 + 32);
  result = *(v2 - 160);
  v6 = *(v2 - 120);
  return result;
}

uint64_t sub_22C389260(uint64_t result)
{
  *(v1 + 4) = result;
  *(v1 + 12) = 2080;
  return result;
}

void sub_22C38928C()
{
  *(v2 - 136) = *(v1 + 1032);
  *(v2 - 128) = v0;
  *(v2 - 144) = *(v1 + 1016);
}

uint64_t sub_22C3892BC()
{
  result = type metadata accessor for QueryDecorationTuple(0);
  v1 = *(result + 20);
  return result;
}

uint64_t sub_22C389328()
{

  return sub_22C36F9F4(v0, v1, (v2 - 88));
}

uint64_t sub_22C389344()
{
  v1 = v0[3];
  v2 = v0[4];
  return v0[2];
}

uint64_t sub_22C389378()
{
  v6 = v0[85];
  v7 = v0[84];
  v8 = v0[83];
  v9 = v0[82];
  v10 = v0[81];
  v11 = v0[78];
  v12 = v0[77];
  v13 = v0[76];
  v14 = v0[75];
  v15 = v0[74];
  v16 = v0[71];
  v17 = v0[68];
  v18 = v0[67];
  v19 = v0[64];
  v20 = v0[61];
  v21 = v0[58];
  v3 = v0[54];
  *(v1 - 112) = v0[55];
  *(v1 - 104) = v3;
  v4 = v0[51];
  *(v1 - 96) = v0[52];
  *(v1 - 88) = v4;
}

uint64_t sub_22C38940C()
{
  v1 = sub_22C90B0EC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v48[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_22C90B10C();
  v59 = *(v6 - 8);
  v60 = v6;
  v7 = *(v59 + 64);
  MEMORY[0x28223BE20](v6);
  v58 = &v48[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_22C90637C();
  v57 = *(v9 - 8);
  v10 = *(v57 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v48[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = sub_22C90634C();
  v61 = *(v13 - 8);
  DecorationAnalytics = v13;
  v14 = *(v61 + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v48[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = sub_22C90636C();
  v18 = *(*(v17 - 8) + 64);
  result = MEMORY[0x28223BE20](v17);
  v22 = &v48[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (*(v0 + OBJC_IVAR____TtCC30IntelligenceFlowPlannerRuntime25QueryDecorationSignposterP33_F96CF7C2E9F3A9F34A91CA78F1C7733217SignpostStateImpl_ended))
  {
    return result;
  }

  v53 = v20;
  v54 = result;
  v55 = OBJC_IVAR____TtCC30IntelligenceFlowPlannerRuntime25QueryDecorationSignposterP33_F96CF7C2E9F3A9F34A91CA78F1C7733217SignpostStateImpl_ended;
  v50 = v5;
  v51 = v2;
  v52 = v1;
  sub_22C90367C();
  v24 = *(v0 + 24);
  v23 = *(v0 + 32);
  v56 = v0;
  v25 = *(v24 + 16);
  v26 = *(v24 + 32);
  v27 = sub_22C90635C();
  sub_22C90638C();
  v49 = sub_22C90AB5C();
  result = sub_22C90AC5C();
  if (result)
  {
    if ((v26 & 1) == 0)
    {
      if (v25)
      {
LABEL_10:

        sub_22C9063BC();

        v28 = v57;
        if ((*(v57 + 88))(v12, v9) == *MEMORY[0x277D85B00])
        {
          v29 = "[Error] Interval already ended";
        }

        else
        {
          (*(v28 + 8))(v12, v9);
          v29 = "";
        }

        v30 = swift_slowAlloc();
        *v30 = 0;
        v31 = sub_22C90632C();
        _os_signpost_emit_with_name_impl(&dword_22C366000, v27, v49, v31, v25, v29, v30, 2u);
        MEMORY[0x2318B9880](v30, -1, -1);
        goto LABEL_14;
      }

      __break(1u);
    }

    if (v25 >> 32)
    {
      __break(1u);
    }

    else
    {
      if ((v25 & 0xFFFFF800) == 0xD800)
      {
LABEL_20:
        __break(1u);
        return result;
      }

      if (v25 >> 16 <= 0x10)
      {
        v25 = &v63;
        goto LABEL_10;
      }
    }

    __break(1u);
    goto LABEL_20;
  }

LABEL_14:

  (*(v61 + 8))(v16, DecorationAnalytics);
  result = (*(v53 + 8))(v22, v54);
  v32 = *(v24 + 48);
  v33 = v56;
  if (v32)
  {
    v34 = *(v24 + 64);
    v61 = *(v24 + 56);
    v35 = v61;
    v36 = *(v24 + 40);
    DecorationAnalytics = type metadata accessor for QueryDecorationAnalytics();
    sub_22C3A5908(&qword_27D9C01E0, &qword_22C9283C0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_22C90F800;
    *(inited + 32) = v35;
    *(inited + 40) = v34;
    v38 = v58;
    v39 = v59;
    v40 = v60;
    (*(v59 + 16))(v58, *(v33 + 16) + OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime25QueryDecorationSignposter_clock, v60);
    sub_22C4722FC(v36, v32);

    v41 = v50;
    sub_22C90B0CC();
    (*(v39 + 8))(v38, v40);
    sub_22C90B08C();
    (*(v51 + 8))(v41, v52);
    v42 = sub_22C90B72C();
    v44 = v42 * 1000.0 + v43 * 1.0e-15;
    v45 = objc_allocWithZone(MEMORY[0x277CCABB0]);
    *&v46 = v44;
    *(inited + 48) = [v45 initWithFloat_];
    sub_22C389D24();
    v47 = sub_22C909F0C();
    static QueryDecorationAnalytics.sendEventForProduction(eventName:prefix:eventPayload:)(v36, v32, 0, 0, v47);

    result = sub_22C472340(v36, v32);
  }

  *(v33 + v55) = 1;
  return result;
}

void sub_22C389A50(void *a1, uint64_t a2)
{
  v4 = sub_22C90B0EC();
  v5 = sub_22C369824(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  sub_22C369838();
  v12 = v11 - v10;
  v13 = a1[3];
  v14 = a1[4];
  sub_22C374168(a1, v13);
  (*(v14 + 8))(v13, v14);
  type metadata accessor for QueryDecorator();
  sub_22C90B0CC();
  sub_22C90B08C();
  (*(v7 + 8))(v12, v4);
  sub_22C36BA00();
  v15 = sub_22C90B72C();
  v17 = v15 * 1000.0 + v16 * 1.0e-15;
  v18 = objc_allocWithZone(MEMORY[0x277CCABB0]);
  *&v19 = v17;
  v20 = [v18 initWithFloat_];
  sub_22C389BDC(a2 != 0, v20);

  sub_22C37BF60();
}

uint64_t sub_22C389BDC(char a1, void *a2)
{
  type metadata accessor for QueryDecorationAnalytics();
  sub_22C3A5908(&qword_27D9C01E0, &qword_22C9283C0);
  if (a1)
  {
    v4 = "queryDecoratorInit";
  }

  else
  {
    v4 = "ed(toolRetrievalResponse:)";
  }

  if (a1)
  {
    v5 = 0xD000000000000019;
  }

  else
  {
    v5 = 0xD000000000000012;
  }

  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22C90F800;
  strcpy((inited + 32), "qdInitLatency");
  *(inited + 46) = -4864;
  *(inited + 48) = a2;
  sub_22C389D24();
  v7 = a2;
  v8 = sub_22C909F0C();
  static QueryDecorationAnalytics.sendEventForProduction(eventName:prefix:eventPayload:)(v5, v4 | 0x8000000000000000, 0, 0, v8);
}

unint64_t sub_22C389D24()
{
  result = qword_28142F970;
  if (!qword_28142F970)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28142F970);
  }

  return result;
}

void static QueryDecorationAnalytics.sendEventForProduction(eventName:prefix:eventPayload:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v8 = objc_autoreleasePoolPush();
  v9.value._countAndFlagsBits = a3;
  v9.value._object = a4;
  String.fullEventName(prefix:)(v9);
  v10 = sub_22C90A0EC();

  if (a5)
  {
    sub_22C389D24();
    a5 = sub_22C909EAC();
  }

  AnalyticsSendEvent();

  objc_autoreleasePoolPop(v8);
}

Swift::String __swiftcall String.fullEventName(prefix:)(Swift::String_optional prefix)
{
  v3 = v2;
  v4 = v1;
  if (prefix.value._object)
  {
    v8 = prefix;

    MEMORY[0x2318B7850](0x6C7070612E6D6F63, 0xEC00000064712E65);
    MEMORY[0x2318B7850](46, 0xE100000000000000);
  }

  else
  {
    strcpy(&v8, "com.apple.qd.");
    HIWORD(v8.value._object) = -4864;
  }

  MEMORY[0x2318B7850](v4, v3);
  countAndFlagsBits = v8.value._countAndFlagsBits;
  object = v8.value._object;
  result._object = object;
  result._countAndFlagsBits = countAndFlagsBits;
  return result;
}

uint64_t sub_22C389ED4(uint64_t (*a1)(void))
{
  v1 = *a1();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_22C389F44(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_22C389F84(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_22C389FD4()
{
  v2 = *(v0 + 32);
  result = *(v1 - 120);
  v4 = *(v1 - 152);
  return result;
}

uint64_t sub_22C389FF0()
{

  return swift_arrayDestroy();
}

uint64_t sub_22C38A010(uint64_t result)
{
  *(result + 16) = 3;
  *(result + 24) = 1;
  return result;
}

uint64_t sub_22C38A050()
{

  return sub_22C909FFC();
}

void sub_22C38A084(uint64_t a1@<X8>)
{
  v2 = v1[22];
  v3 = v1[17];
  v4 = v1[15];
  v1[72] = *(a1 + 8);
  v1[73] = (a1 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
}

uint64_t sub_22C38A0F4()
{

  return swift_once();
}

void sub_22C38A138()
{
  v1 = v0[18];
  v3 = v0[15];
  v2 = v0[16];
  v5 = v0[13];
  v4 = v0[14];
  v7 = v0[10];
  v6 = v0[11];
}

uint64_t sub_22C38A17C()
{
  result = v0 + v1;
  v4 = *(v2 - 152);
  return result;
}

uint64_t sub_22C38A1A0()
{
  v2 = -1 << *(*(v0 - 408) + 32);
  v3 = *(v0 - 416);

  return sub_22C90AE8C();
}

char *sub_22C38A204()
{
  v1 = *(v0 + 2);

  v2 = *(v0 + 3);

  v3 = *(v0 + 4);

  v4 = OBJC_IVAR____TtCC30IntelligenceFlowPlannerRuntime25QueryDecorationSignposterP33_F96CF7C2E9F3A9F34A91CA78F1C7733217SignpostStateImpl_start;
  v5 = sub_22C90B0EC();
  (*(*(v5 - 8) + 8))(&v0[v4], v5);
  return v0;
}

uint64_t sub_22C38A27C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = ResponseGenerationPreferencesDomain.ResponseGenerationPreferences.__allocating_init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t ResponseGenerationPreferencesDomain.ResponseGenerationPreferences.__allocating_init(from:)(uint64_t *a1)
{
  v2 = swift_allocObject();
  ResponseGenerationPreferencesDomain.ResponseGenerationPreferences.init(from:)(a1);
  return v2;
}

uint64_t *ResponseGenerationPreferencesDomain.ResponseGenerationPreferences.init(from:)(uint64_t *a1)
{
  v3 = v1;
  v5 = *v1;
  v27 = sub_22C3A5908(&qword_27D9C1218, &unk_22C92C6F8);
  sub_22C369824(v27);
  v7 = v6;
  v9 = *(v8 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v10);
  v12 = &v25 - v11;
  v13 = a1[4];
  sub_22C374168(a1, a1[3]);
  sub_22C38A7EC();
  sub_22C90B6BC();
  if (v2)
  {
    swift_deallocPartialClassInstance();
    v24 = a1;
  }

  else
  {
    v25 = v5;
    v26 = a1;
    LOBYTE(v29) = 0;
    sub_22C3777B0();
    v1[2] = sub_22C90B26C();
    v1[3] = v14;
    sub_22C3789A8(1);
    *(v1 + 32) = sub_22C90B27C();
    sub_22C3A5908(&qword_27D9BB5D0, &unk_22C9112A0);
    v28 = 2;
    sub_22C38B01C();
    sub_22C3777B0();
    sub_22C90B32C();
    v1[5] = v29;
    v28 = 3;
    sub_22C3777B0();
    sub_22C90B32C();
    v1[6] = v29;
    sub_22C3789A8(4);
    v1[7] = sub_22C90B26C();
    v1[8] = v16;
    sub_22C3789A8(5);
    v1[13] = sub_22C90B26C();
    v1[14] = v17;
    sub_22C3789A8(6);
    v1[9] = sub_22C90B26C();
    v1[10] = v18;
    sub_22C3789A8(7);
    v1[11] = sub_22C90B26C();
    v1[12] = v19;
    sub_22C3789A8(8);
    v1[15] = sub_22C90B26C();
    v1[16] = v20;
    sub_22C3789A8(9);
    v21 = sub_22C90B29C();
    *(v1 + 34) = v21;
    *(v1 + 140) = BYTE4(v21) & 1;
    LOBYTE(v29) = 10;
    sub_22C3777B0();
    v1[18] = sub_22C90B2AC();
    *(v1 + 152) = v22 & 1;
    LOBYTE(v29) = 11;
    sub_22C3777B0();
    v23 = sub_22C90B27C();
    (*(v7 + 8))(v12, v27);
    *(v3 + 153) = v23;
    v24 = v26;
  }

  sub_22C36FF94(v24);
  return v3;
}

unint64_t sub_22C38A7EC()
{
  result = qword_2814302B8[0];
  if (!qword_2814302B8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2814302B8);
  }

  return result;
}

uint64_t sub_22C38A8A0()
{

  return swift_slowAlloc();
}

void sub_22C38A904()
{
  *(v1 - 104) = *(v0 + 956);
  *(v1 - 112) = *(v0 + 696);
  v2 = *(v0 + 688);
  v3 = *(v0 + 632);
  v4 = *(v0 + 576);
  v5 = *(v0 + 568);
}

uint64_t sub_22C38A928(uint64_t result)
{
  *(result + 16) = 40;
  *(result + 24) = 0xE100000000000000;
  v2 = *(v1 + 24);
  v3 = *(v1 + 16) + 1;
  return result;
}

uint64_t sub_22C38A9E8()
{
}

BOOL sub_22C38AA24@<W0>(unint64_t a1@<X8>)
{
  result = a1 > 1;
  v3 = *(v1 - 72);
  return result;
}

__n128 sub_22C38AA3C()
{
  v1 = *(v0 + 224);
  *(v0 + 400) = *(v0 + 208);
  *(v0 + 416) = v1;
  *(v0 + 432) = *(v0 + 240);
  return *(v0 + 249);
}

void sub_22C38AA74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v20 = (*(v18 + 48) + 16 * v14);
  *v20 = v16;
  v20[1] = v15;
  v21 = (*(v18 + 56) + 16 * v14);
  *v21 = a13;
  v21[1] = a14;
}

__n128 sub_22C38AAA0(__n128 *a1)
{
  result = *(v1 - 352);
  a1[1] = result;
  return result;
}

uint64_t sub_22C38AAC8()
{
  v11 = v0[49];
  v12 = v0[48];
  v13 = v0[47];
  v14 = v0[46];
  v15 = v0[45];
  v16 = v0[44];
  v17 = v0[43];
  v18 = v0[42];
  v19 = v0[41];
  v20 = v0[38];
  v21 = v0[35];
  v22 = v0[34];
  v23 = v0[33];
  v24 = v0[32];
  v25 = v0[31];
  v4 = v0[28];
  v3 = v0[29];
  *(v1 - 176) = v0[30];
  *(v1 - 168) = v3;
  v6 = v0[26];
  v5 = v0[27];
  *(v1 - 160) = v4;
  *(v1 - 152) = v5;
  v7 = v0[25];
  *(v1 - 144) = v6;
  *(v1 - 136) = v7;
  v8 = v0[21];
  *(v1 - 128) = v0[22];
  *(v1 - 120) = v8;
  v9 = v0[17];
  *(v1 - 112) = v0[18];
  *(v1 - 104) = v9;
}

char *sub_22C38AB54(__n128 *a1, __n128 a2)
{
  a1[1] = a2;
  v4 = *(v2 + 16);
  return a1 + v3;
}

uint64_t sub_22C38AC10()
{

  return sub_22C38B6EC(v0, type metadata accessor for ResponseCatalogMatcher);
}

uint64_t sub_22C38AC38()
{
  v1 = v0[39];
  v2 = v0[29];
  v3 = v0[30];
  result = v0[12];
  v5 = v0[10];
  v6 = *(v0[11] + 8);
  return result;
}

uint64_t sub_22C38AC90()
{

  return sub_22C901F0C();
}

uint64_t sub_22C38ACD4()
{

  return sub_22C90B6CC();
}

uint64_t sub_22C38AD04()
{

  return swift_allocObject();
}

uint64_t sub_22C38AD44(char a1)
{
  result = 0x6E6F436C65646F6DLL;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000017;
      break;
    case 2:
      sub_22C380680();
      result = v5 + 7;
      break;
    case 3:
      sub_22C380680();
      result = v6 | 8;
      break;
    case 4:
      sub_22C380680();
      result = v3 + 1;
      break;
    case 5:
      sub_22C380680();
      result = v8 - 2;
      break;
    case 6:
      result = 0x655674706D6F7270;
      break;
    case 7:
      sub_22C380680();
      result = v7 - 6;
      break;
    case 8:
      result = 0x65736E6F70736572;
      break;
    case 9:
      sub_22C380680();
      result = v4 - 1;
      break;
    case 10:
      result = 0x6E656B6F5478616DLL;
      break;
    case 11:
      result = 0xD000000000000017;
      break;
    default:
      return result;
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ResponseGenerationPreferencesDomain.ResponseGenerationPreferences.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 11 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 11) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF5)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF4)
  {
    v6 = ((a2 - 245) >> 8) + 1;
    *result = a2 + 11;
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
        JUMPOUT(0x22C38AFF0);
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
          *result = a2 + 11;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_22C38B01C()
{
  result = qword_28142F9E8;
  if (!qword_28142F9E8)
  {
    sub_22C3AC1A0(&qword_27D9BB5D0, &unk_22C9112A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28142F9E8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ResponseGenerationPreferencesDomain.ResponseGenerationPreferences.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF5)
  {
    if (a2 + 11 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 11) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 12;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xC;
  v5 = v6 - 12;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_22C38B120(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

void sub_22C38B1A0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{
  v8 = *(v6 - 104);
  v9 = *(v6 - 104);

  _os_log_impl(a1, v4, v9, a4, v5, 0xCu);
}

uint64_t sub_22C38B1E8(uint64_t a1)
{
  *(a1 + 8) = sub_22C5DE854;
  result = v1[13];
  v3 = v1[9];
  v4 = v1[10];
  return result;
}

uint64_t sub_22C38B21C()
{
  v1 = *(*(v0 - 296) + 8);
  result = *(v0 - 304);
  v3 = *(v0 - 288);
  return result;
}

void sub_22C38B24C(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 2u);
}

uint64_t sub_22C38B284()
{
  v2 = *(v0 - 144);

  return sub_22C90B24C();
}

void sub_22C38B2B8(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v4, a3, a4, v5, 0x20u);
}

uint64_t sub_22C38B2D4()
{

  return sub_22C90B1DC();
}

uint64_t sub_22C38B304()
{
  v3 = v0[19];
  v2 = v0[20];
  v5 = v0[15];
  v4 = v0[16];
  v7 = v0[13];
  v6 = v0[14];
  v8 = v0[12];
}

uint64_t sub_22C38B324@<X0>(uint64_t a1@<X2>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X8>)
{
  if (*(a1 + 16) && (sub_22C3736B4(), v9 = sub_22C36E5AC(v6, v7, v8, sub_22C36EF04), (v10 & 1) != 0))
  {
    v11 = v9;
    v12 = *(a1 + 56);
    v13 = a2(0);
    sub_22C36985C(v13);
    (*(v14 + 16))(a3, v12 + *(v14 + 72) * v11, v13);
    v15 = sub_22C37049C();
    v18 = v13;
  }

  else
  {
    a2(0);
    v15 = sub_22C37582C();
  }

  return sub_22C36C640(v15, v16, v17, v18);
}

void sub_22C38B3F8()
{
  *(v4 + 16) = v5;
  v7 = (v4 + 32 * v1);
  v7[4] = v2;
  v7[5] = v3;
  v7[6] = v6;
  v7[7] = v0;
}

uint64_t sub_22C38B428()
{
  result = v0[52];
  v2 = v0[50];
  v3 = *(v0[51] + 8);
  return result;
}

uint64_t sub_22C38B438()
{
  *(v1 + 688) = *(v2 + 8);
  *(v1 + 696) = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  return v0;
}

void sub_22C38B45C()
{
  v5 = *(v3 + 56);
  *(v4 - 432) = v3 + 56;
  *(v4 - 440) = ((1 << *(v3 + 32)) + 63) >> 6;
  *(v4 - 368) = v0 + 16;
  *(v4 - 376) = v2 + 16;
  *(v4 - 328) = v0 + 32;
  *(v4 - 272) = v2 + 32;
  *(v4 - 304) = v0 + 8;
  *(v4 - 312) = v2 + 8;
  *(v4 - 416) = v1 + 56;
}

uint64_t sub_22C38B504()
{
  v2 = v0[44];
  v1 = v0[45];
  v3 = v0[39];
  result = v0[37];
  v5 = v0[35];
  v6 = *(v0[36] + 8);
  return result;
}

uint64_t sub_22C38B51C()
{
  v2 = *v0;
  result = *(v1 - 304);
  v4 = *(v1 - 168);
  return result;
}

uint64_t sub_22C38B5B8()
{
  v1 = v0[79];
  v2 = v0[78];
  v3 = v0[77];
  result = v0[75];
  v5 = v0[74];
  v6 = v0[73];
  v7 = v0[67];
  return result;
}

uint64_t sub_22C38B5D8()
{
  result = v0[46];
  v3 = v0[42];
  v2 = v0[43];
  v5 = v0[38];
  v4 = v0[39];
  v6 = v0[35];
  v7 = v0[33];
  return result;
}

uint64_t sub_22C38B5F0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for DefaultResponseGenerationInputBuilder()
{
  result = qword_281430150;
  if (!qword_281430150)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

double sub_22C38B6B4()
{
  result = 0.0;
  v0[3] = 0u;
  v0[4] = 0u;
  v0[1] = 0u;
  v0[2] = 0u;
  v0[5] = 0u;
  v0[6] = xmmword_22C912340;
  return result;
}

uint64_t sub_22C38B6EC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_22C36985C(v3);
  (*(v4 + 8))(a1);
  return a1;
}

void sub_22C38B788()
{
  v3 = *(v1 + 72);
  v4 = (*(*v0 + 24) >> 1) - *(*v0 + 16);
  *(v2 - 152) = (*(v1 + 80) + 32) & ~*(v1 + 80);
}

uint64_t sub_22C38B7B8()
{

  return sub_22C90B4FC();
}

void sub_22C38B840(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, os_log_t log, uint64_t a11, uint64_t a12, os_log_type_t a13)
{

  _os_log_impl(a1, log, a13, a4, v13, 0x20u);
}

uint64_t sub_22C38B868()
{
}

void sub_22C38B88C()
{

  sub_22C46D6C8();
}

void sub_22C38B8E4()
{

  JUMPOUT(0x2318B7EF0);
}

uint64_t sub_22C38B91C(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_22C490F28(a1, a2, a3, 0, 0);
}

uint64_t sub_22C38B994()
{

  return sub_22C4D6B50(v0, type metadata accessor for FullPlannerVersionHandler.GrammarConfiguration);
}

void *sub_22C38B9BC(void *result)
{
  *v1 = result;
  *result = v2;
  return result;
}

uint64_t sub_22C38B9CC()
{
  result = v0[89];
  v2 = v0[86];
  v3 = v0[85];
  v4 = v0[84];
  v5 = v0[79];
  v6 = v0[74];
  v7 = v0[73];
  return result;
}

uint64_t sub_22C38BA6C()
{

  return swift_once();
}

uint64_t sub_22C38BA8C()
{

  return swift_once();
}

uint64_t sub_22C38BAD8()
{
  v1 = *(*(v0 - 328) + 16);
  result = *(v0 - 336);
  v3 = *(v0 - 320);
  return result;
}

void sub_22C38BB14()
{
  v14 = v1[47];
  v4 = v1[44];
  v5 = v1[45];
  v6 = v1[42];
  v7 = v1[30];
  v8 = v1[21];
  v10 = v1[18];
  v9 = v1[19];
  v11 = v1[14];
  *(v2 - 96) = v1[12];
  *(v2 - 88) = v6;
  v12 = v0;
  v13 = v1[7];
}

void sub_22C38BBB0()
{
  v2 = v0[124];
  v3 = v0[123];
  v4 = v0[122];
  v5 = v0[118];
  v6 = v0[107];
  v7 = v0[102];
  *(v1 - 104) = v0[101];
  v8 = v0[100];
}

void sub_22C38BBD8(uint64_t a1@<X8>, uint64_t a2)
{
  *(v4 - 96) = &a2 - ((a1 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(*v2 + 24) > v3)
  {
    v5 = *(*v2 + 24);
  }
}

uint64_t sub_22C38BC18()
{

  return sub_22C90A0BC();
}

uint64_t sub_22C38BC9C()
{
  result = v0[125];
  v2 = v0[124];
  v3 = v0[123];
  v4 = v0[122];
  v5 = v0[121];
  v6 = v0[120];
  v7 = v0[119];
  v8 = v0[118];
  v9 = v0[115];
  v10 = v0[114];
  v13 = v0[111];
  v14 = v0[110];
  v15 = v0[109];
  v16 = v0[108];
  v17 = v0[107];
  v18 = v0[106];
  v19 = v0[105];
  v20 = v0[104];
  v21 = v0[103];
  v22 = v0[102];
  v23 = v0[101];
  v24 = v0[100];
  v25 = v0[99];
  v26 = v0[98];
  v27 = v0[97];
  v28 = v0[94];
  v29 = v0[93];
  v30 = v0[92];
  v31 = v0[89];
  v32 = v0[86];
  v33 = v0[83];
  v34 = v0[80];
  v35 = v0[77];
  v36 = v0[74];
  v37 = v0[71];
  v38 = v0[68];
  v39 = v0[65];
  v40 = v0[62];
  v41 = v0[60];
  v42 = v0[59];
  v43 = v0[57];
  v44 = v0[56];
  v45 = v0[53];
  v46 = v0[52];
  v11 = v0[50];
  v12 = v0[51];
  return result;
}

uint64_t sub_22C38BD98()
{
  result = v0[191];
  v2 = v0[190];
  v3 = v0[189];
  v4 = v0[188];
  v5 = v0[187];
  v6 = v0[186];
  v7 = v0[185];
  v8 = v0[184];
  v9 = v0[183];
  v10 = v0[182];
  v12 = v0[181];
  v13 = v0[178];
  v14 = v0[177];
  v15 = v0[176];
  v16 = v0[173];
  v17 = v0[172];
  v18 = v0[171];
  v19 = v0[170];
  v20 = v0[169];
  v21 = v0[168];
  v22 = v0[167];
  v23 = v0[166];
  v24 = v0[165];
  v25 = v0[164];
  v26 = v0[163];
  v27 = v0[162];
  v28 = v0[161];
  v29 = v0[160];
  v30 = v0[159];
  v31 = v0[158];
  v32 = v0[157];
  v33 = v0[156];
  v34 = v0[155];
  v35 = v0[152];
  v36 = v0[151];
  v37 = v0[150];
  v38 = v0[149];
  v39 = v0[146];
  v40 = v0[143];
  v41 = v0[140];
  v42 = v0[137];
  v43 = v0[134];
  v44 = v0[131];
  v45 = v0[128];
  v46 = v0[125];
  v47 = v0[122];
  v48 = v0[119];
  v49 = v0[116];
  v50 = v0[114];
  v51 = v0[113];
  v52 = v0[111];
  v53 = v0[110];
  v54 = v0[107];
  v55 = v0[106];
  v56 = v0[105];
  v57 = v0[104];
  v58 = v0[103];
  v59 = v0[102];
  v60 = v0[100];
  v61 = v0[99];
  v62 = v0[96];
  v63 = v0[95];
  v64 = v0[94];
  v65 = v0[93];
  v66 = v0[90];
  v67 = v0[89];
  v68 = v0[86];
  v69 = v0[83];
  v70 = v0[80];
  v71 = v0[79];
  v72 = v0[78];
  v73 = v0[77];
  STACK[0x200] = v0[76];
  STACK[0x208] = v0[75];
  STACK[0x210] = v0[74];
  STACK[0x218] = v0[73];
  STACK[0x220] = v0[70];
  STACK[0x228] = v0[69];
  STACK[0x230] = v0[66];
  v11 = v0[62];
  STACK[0x238] = v0[63];
  STACK[0x240] = v11;
  STACK[0x248] = v0[59];
  return result;
}

void sub_22C38BF90()
{
  v1 = v0[50];
  v2 = v0[47];
  v4 = v0[43];
  v3 = v0[44];
  v6 = v0[40];
  v5 = v0[41];
}

void sub_22C38BFCC()
{

  sub_22C3B7754();
}

uint64_t sub_22C38C004()
{
  v2 = *(v0 - 216);

  return sub_22C90328C();
}

uint64_t sub_22C38C02C(uint64_t a1)
{
  *(a1 + 8) = sub_22C76B43C;
  v2 = *(v1 + 160);
  return *(v1 + 32);
}

uint64_t sub_22C38C074@<X0>(uint64_t a1@<X8>)
{
  v17 = v1[55];
  v4 = v1[52];
  v5 = v1[53];
  *(v3 - 256) = v1[54];
  *(v3 - 248) = v5;
  *(v3 - 240) = v4;
  v6 = v1[50];
  *(v3 - 232) = v1[51];
  *(v3 - 224) = v6;
  v7 = v1[44];
  *(v3 - 216) = v1[47];
  *(v3 - 208) = v7;
  v8 = v1[38];
  *(v3 - 200) = v1[41];
  *(v3 - 192) = v8;
  v9 = v1[31];
  v10 = v1[32];
  *(v3 - 184) = v1[35];
  *(v3 - 176) = v10;
  *(v3 - 168) = v9;
  v11 = v1[25];
  *(v3 - 160) = v1[28];
  *(v3 - 152) = v11;
  v12 = v1[19];
  *(v3 - 144) = v1[22];
  *(v3 - 136) = v12;
  v13 = v1[15];
  *(v3 - 128) = v1[16];
  *(v3 - 120) = v13;
  v14 = v1[11];
  *(v3 - 112) = v1[12];
  *(v3 - 104) = v14;
  *(v3 - 96) = v1[8];
  v15 = *(a1 + 8);
  return v2;
}

uint64_t sub_22C38C0F4()
{

  return sub_22C7E6F6C();
}

uint64_t sub_22C38C154()
{
  *(v1 - 184) = v0;

  return swift_slowAlloc();
}

uint64_t sub_22C38C174()
{

  return sub_22C90B15C();
}

void sub_22C38C194()
{

  JUMPOUT(0x2318B7850);
}

uint64_t sub_22C38C1C4()
{
  result = v0[3];
  v2 = v0[4];
  v3 = *(v0[2] + 16);
  return result;
}

uint64_t sub_22C38C1D4()
{

  return swift_beginAccess();
}

uint64_t sub_22C38C1F0(uint64_t result)
{
  *(v2 + 4) = result;
  *(v2 + 12) = 2080;
  v3 = *(v1 + 96);
  return result;
}

uint64_t sub_22C38C204()
{
  v2 = v0[517];
  v3 = v0[487];
  v4 = v0[481];
  v5 = v0[475];
  v6 = v0[463];
  v7 = v0[445];
  v8 = v0[427];
  v9 = v0[421];
  v10 = v0[403];
  v11 = v0[397];
  v13 = v0[385];
}

void sub_22C38C2BC()
{

  JUMPOUT(0x2318B7850);
}

void sub_22C38C2DC()
{
  v1 = v0[76];
  v2 = v0[75];
  v3 = v0[74];
  v4 = v0[73];
  v5 = v0[72];
}

uint64_t sub_22C38C2F4()
{
  result = v0[119];
  v2 = v0[118];
  v3 = v0[117];
  v4 = v0[116];
  v5 = v0[115];
  v6 = v0[112];
  v7 = v0[109];
  v8 = v0[106];
  return result;
}

uint64_t sub_22C38C370(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  v27 = *(a26 + 8);
  v29 = *(v26 - 128);
  return *(v26 - 120);
}

uint64_t sub_22C38C380(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_22C36C640(a1, a2, a3, a4);

  return type metadata accessor for PromptTreeIdentifier.TranscriptReference.Category(0);
}

uint64_t sub_22C38C3A8()
{
  v2 = *(v0 - 176);

  return sub_22C90B24C();
}

void sub_22C38C3C8()
{
  v0[22] = 0;
  *(v1 - 72) = 0;
  v0[15] = 0;
  v0[16] = 0;
  v0[23] = 0;
  v0[18] = 0;
  v0[19] = 0;
}

void sub_22C38C428()
{
  v1 = v0[194];
  v2 = v0[180];
  v3 = v0[178];
  v4 = v0[177];
}

void sub_22C38C43C(void *a1, NSObject *a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, a2, a3, a4, v4, 2u);
}

id sub_22C38C484(uint64_t a1, const char *a2)
{

  return [v2 a2];
}

uint64_t sub_22C38C49C()
{
  result = v0 + 8;
  v3 = *(v0 + 8);
  v4 = *(v1 - 104);
  return result;
}

void sub_22C38C4E4()
{
  *(v4 + 16) = v1;
  v6 = v4 + 16 * v2;
  *(v6 + 32) = v0;
  *(v6 + 40) = v3;
  v7 = *(v5 - 112);
}

uint64_t sub_22C38C50C()
{
  result = *(v0 + 24);
  v2 = *(*(v0 + 16) + 16);
  return result;
}

uint64_t sub_22C38C53C()
{

  return sub_22C909F7C();
}

uint64_t sub_22C38C560()
{
  result = v0;
  v3 = *(v1 - 128);
  return result;
}

uint64_t sub_22C38C57C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(v3 + 384);
  v5 = *(v3 + 392);
  v6 = *(v5 + 16);
  v7 = a1 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v2;
  return a2;
}

uint64_t sub_22C38C660@<X0>(uint64_t *a1@<X8>)
{
  result = sub_22C3A7724();
  *a1 = result;
  return result;
}

uint64_t sub_22C38C68C()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_22C38C798@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22C3C112C(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_22C38C7C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22C3C23B4(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_22C38C7F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22C3C233C(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_22C38C844(uint64_t a1, uint64_t a2)
{
  sub_22C369A48();
  v4 = sub_22C90069C();

  return sub_22C370B74(v2, a2, v4);
}

uint64_t sub_22C38C888()
{
  sub_22C369A48();
  sub_22C90069C();
  v0 = sub_22C370078();

  return sub_22C36C640(v0, v1, v2, v3);
}

uint64_t sub_22C38C8CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22C90069C();
  v7 = sub_22C3699C8(v6);
  if (*(v8 + 84) != a2)
  {
    return sub_22C3725D8(*(a1 + *(a3 + 20) + 8));
  }

  return sub_22C370B74(a1, a2, v7);
}

uint64_t sub_22C38C96C(uint64_t a1, int a2, int a3, uint64_t a4)
{
  sub_22C369A48();
  v8 = sub_22C90069C();
  result = sub_22C3699C8(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = sub_22C370078();

    return sub_22C36C640(v11, v12, v13, v14);
  }

  else
  {
    *(v4 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_22C38CA08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    return sub_22C3725D8(*(a1 + 8));
  }

  v7 = sub_22C90069C();
  v8 = sub_22C3699C8(v7);
  if (*(v9 + 84) == a2)
  {
    v10 = v8;
    v11 = *(a3 + 20);
  }

  else
  {
    v10 = sub_22C902B7C();
    v11 = *(a3 + 24);
  }

  return sub_22C370B74(a1 + v11, a2, v10);
}

uint64_t sub_22C38CAC4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_22C90069C();
    v9 = sub_22C3699C8(v8);
    if (*(v10 + 84) == a3)
    {
      v11 = v9;
      v12 = *(a4 + 20);
    }

    else
    {
      v11 = sub_22C902B7C();
      v12 = *(a4 + 24);
    }

    return sub_22C36C640(v5 + v12, a2, a2, v11);
  }

  return result;
}

uint64_t sub_22C38CC4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22C377B34();
  if (*(*(v6 - 8) + 84) == v3)
  {
    v7 = v6;
    v8 = v4;
  }

  else
  {
    v7 = type metadata accessor for PlanCycleId(0);
    v8 = v4 + *(a3 + 20);
  }

  return sub_22C370B74(v8, v3, v7);
}

uint64_t sub_22C38CCDC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_22C377B34();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = v5;
  }

  else
  {
    v9 = type metadata accessor for PlanCycleId(0);
    v10 = v5 + *(a4 + 20);
  }

  return sub_22C36C640(v10, v4, v4, v9);
}

uint64_t sub_22C38CD74()
{
  v2 = sub_22C377B34();
  v3 = sub_22C370B74(v1, v0, v2);
  if (v3 >= 2)
  {
    return v3 - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_22C38CDB0(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_22C90069C();

  return sub_22C36C640(a1, v5, a3, v6);
}

void *sub_22C38CE0C@<X0>(void *result@<X0>, void *a2@<X8>)
{
  v2 = result[1];
  *a2 = *result;
  a2[1] = v2;
  return result;
}

char *sub_22C38D000(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[24 * a2] <= a3)
  {
    return sub_22C36A714(a3, result);
  }

  return result;
}

char *sub_22C38D024(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[24 * a2] <= a3)
  {
    return sub_22C36A714(a3, result);
  }

  return result;
}

char *sub_22C38D04C(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[40 * a2] <= a3)
  {
    return sub_22C36A714(a3, result);
  }

  return result;
}

char *sub_22C38D074(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[40 * a2] <= a3)
  {
    return sub_22C36A714(a3, result);
  }

  return result;
}

char *sub_22C38D098(char *result, size_t a2, char *a3)
{
  if (a3 != result || &result[a2] <= a3)
  {
    return sub_22C388538(result, a3, a2);
  }

  return result;
}

char *sub_22C38D0B4(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[56 * a2] <= a3)
  {
    return sub_22C36A714(a3, result);
  }

  return result;
}

uint64_t sub_22C38D184()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22C38D1BC()
{
  v1 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_22C38D1F4()
{
  v1 = *(v0 + 16);

  sub_22C369AEC();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_22C38D228()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_22C38D270()
{
  v1 = *(v0 + 16);

  sub_22C369AEC();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_22C38D330(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FullPlannerPreferences();

  return sub_22C370B74(a1, a2, v4);
}

uint64_t sub_22C38D378(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FullPlannerPreferences();

  return sub_22C36C640(a1, a2, a2, v4);
}

uint64_t sub_22C38D414(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FullPlannerPreferences();

  return sub_22C370B74(a1, a2, v4);
}

uint64_t sub_22C38D45C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FullPlannerPreferences();

  return sub_22C36C640(a1, a2, a2, v4);
}

uint64_t sub_22C38D4A8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_22C901E1C();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_22C38D4D4()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_22C38D51C()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22C38D5CC()
{
  sub_22C36986C();
  v2 = sub_22C90880C();

  return sub_22C370B74(v1, v0, v2);
}

uint64_t sub_22C38D610()
{
  sub_22C36986C();
  sub_22C90880C();
  v0 = sub_22C370078();

  return sub_22C36C640(v0, v1, v2, v3);
}

uint64_t sub_22C38D64C()
{
  sub_22C36986C();
  v2 = sub_22C3A5908(&qword_27D9BBAB0, &qword_22C910D10);

  return sub_22C370B74(v1, v0, v2);
}

uint64_t sub_22C38D69C()
{
  sub_22C36986C();
  sub_22C3A5908(&qword_27D9BBAB0, &qword_22C910D10);
  v0 = sub_22C370078();

  return sub_22C36C640(v0, v1, v2, v3);
}

uint64_t sub_22C38D6E4()
{
  v1 = sub_22C9087BC();
  sub_22C369824(v1);
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 80) & ~v4;
  v7 = *(v6 + 64);
  v8 = (type metadata accessor for PlannerServiceContext() - 8);
  v9 = *(*v8 + 80);
  v10 = (v5 + v7 + v9) & ~v9;
  v11 = *(*v8 + 64);
  v12 = v0[2];
  swift_unknownObjectRelease();
  v13 = v0[4];

  sub_22C36FF94(v0 + 5);
  (*(v3 + 8))(v0 + v5, v1);
  v14 = sub_22C90069C();
  v15 = *(*(v14 - 8) + 8);
  v15(v0 + v10, v14);
  v16 = v8[7];
  if (!sub_22C370B74(v0 + v10 + v16, 1, v14))
  {
    v15(v0 + v10 + v16, v14);
  }

  return MEMORY[0x2821FE8E8](v0, v10 + v11, v4 | v9 | 7);
}

uint64_t sub_22C38D8B0(uint64_t a1, uint64_t a2)
{
  v4 = sub_22C3A5908(&qword_27D9BA808, &qword_22C90C6E0);
  v5 = sub_22C370B74(a1, a2, v4);
  if (v5 >= 2)
  {
    return v5 - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_22C38D904(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_22C3A5908(&qword_27D9BA808, &qword_22C90C6E0);

  return sub_22C36C640(a1, v5, a3, v6);
}

uint64_t sub_22C38D96C()
{
  v1 = sub_22C90046C();
  sub_22C369824(v1);
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 32) & ~v4;
  v7 = *(v6 + 64);
  v8 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v3 + 8))(v0 + v5, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + v7, v4 | 7);
}

uint64_t sub_22C38DA24()
{
  v1 = sub_22C3A5908(&qword_27D9BB7A0, &qword_22C9110D0);
  sub_22C3699B8(v1);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v6 = *(v5 + 64);
  v7 = *(v0 + 16);
  swift_unknownObjectRelease();
  v8 = sub_22C90451C();
  if (!sub_22C370B74(v0 + v4, 1, v8))
  {
    (*(*(v8 - 8) + 8))(v0 + v4, v8);
  }

  v9 = (v6 + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v9 + 47) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v10 + 23) & 0xFFFFFFFFFFFFFFF8;
  sub_22C36FF94((v0 + v9));
  v12 = *(v0 + v10 + 8);

  v13 = *(v0 + v11 + 8);

  v14 = *(v0 + v11 + 24);

  return MEMORY[0x2821FE8E8](v0, v11 + 32, v3 | 7);
}

uint64_t sub_22C38DB98()
{
  sub_22C36FF94((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_22C38DBD0()
{
  v1 = *(v0 + 16);

  sub_22C36FF94((v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_22C38DC10()
{
  sub_22C36FF94((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 57, 7);
}

uint64_t sub_22C38DC48()
{
  sub_22C36FF94(v0 + 2);
  v1 = v0[8];

  v2 = v0[10];

  return MEMORY[0x2821FE8E8](v0, 88, 7);
}

uint64_t sub_22C38DC90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22C3A5908(&qword_27D9BB728, &qword_22C911230);
  v7 = sub_22C3699C8(v6);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = a1;
  }

  else
  {
    v11 = sub_22C90077C();
    v12 = sub_22C3699C8(v11);
    if (*(v13 + 84) != a2)
    {
      v15 = *(a1 + *(a3 + 24));
      if (v15 >= 2)
      {
        return ((v15 + 2147483646) & 0x7FFFFFFF) + 1;
      }

      else
      {
        return 0;
      }
    }

    v9 = v12;
    v10 = a1 + *(a3 + 20);
  }

  return sub_22C370B74(v10, a2, v9);
}

uint64_t sub_22C38DD98(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_22C3A5908(&qword_27D9BB728, &qword_22C911230);
  v9 = sub_22C3699C8(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = v9;
    v12 = a1;
  }

  else
  {
    v13 = sub_22C90077C();
    result = sub_22C3699C8(v13);
    if (*(v15 + 84) != a3)
    {
      *(a1 + *(a4 + 24)) = a2 + 1;
      return result;
    }

    v11 = result;
    v12 = a1 + *(a4 + 20);
  }

  return sub_22C36C640(v12, a2, a2, v11);
}

uint64_t sub_22C38DE8C()
{
  sub_22C37ABC4();
  if (v1)
  {
    return sub_22C3725D8(*v0);
  }

  sub_22C374A1C();
  type metadata accessor for FullPlannerPreferences();
  v3 = sub_22C374A0C();

  return sub_22C370B74(v3, v4, v5);
}

void sub_22C38DEF0()
{
  sub_22C3700E0();
  if (v2)
  {
    *v1 = (v0 - 1);
  }

  else
  {
    type metadata accessor for FullPlannerPreferences();
    v3 = sub_22C374A0C();

    sub_22C36C640(v3, v4, v0, v5);
  }
}

uint64_t sub_22C38DF5C()
{
  sub_22C37ABC4();
  if (v3)
  {
    return sub_22C3725D8(*(v1 + 24));
  }

  sub_22C374A1C();
  v5 = sub_22C901B3C();
  v6 = v1 + *(v2 + 36);

  return sub_22C370B74(v6, v0, v5);
}

void sub_22C38DFC8()
{
  sub_22C3700E0();
  if (v3)
  {
    *(v1 + 24) = (v0 - 1);
  }

  else
  {
    v4 = v2;
    v5 = sub_22C901B3C();
    v6 = v1 + *(v4 + 36);

    sub_22C36C640(v6, v0, v0, v5);
  }
}

uint64_t sub_22C38E03C()
{
  sub_22C37ABC4();
  if (v1)
  {
    return sub_22C3725D8(*(v0 + 24));
  }

  sub_22C374A1C();
  sub_22C901B3C();
  v3 = sub_22C374A0C();

  return sub_22C370B74(v3, v4, v5);
}

void sub_22C38E0A0()
{
  sub_22C3700E0();
  if (v2)
  {
    *(v1 + 24) = (v0 - 1);
  }

  else
  {
    sub_22C901B3C();
    v3 = sub_22C374A0C();

    sub_22C36C640(v3, v4, v0, v5);
  }
}

uint64_t sub_22C38E110()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[6];

  v4 = v0[8];

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_22C38E160()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[6];

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_22C38E1D0()
{
  v1 = sub_22C90745C();
  sub_22C369824(v1);
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 32) & ~v4;
  v7 = (*(v6 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v3 + 8))(v0 + v5, v1);
  v9 = *(v0 + v7 + 8);

  return MEMORY[0x2821FE8E8](v0, v7 + 16, v4 | 7);
}

uint64_t sub_22C38E2A0()
{
  sub_22C36FF94((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_22C38E344()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_22C38E478@<X0>(uint64_t *a1@<X8>)
{
  result = sub_22C90653C();
  *a1 = result;
  return result;
}

uint64_t sub_22C38E4B4(unint64_t *a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    return sub_22C3725D8(*a1);
  }

  v7 = sub_22C908AEC();
  v8 = sub_22C3699C8(v7);
  if (*(v9 + 84) == a2)
  {
    v10 = v8;
    v11 = a3[5];
  }

  else
  {
    v12 = sub_22C9087BC();
    v13 = sub_22C3699C8(v12);
    if (*(v14 + 84) == a2)
    {
      v10 = v13;
      v11 = a3[6];
    }

    else
    {
      v10 = type metadata accessor for TranscriptValueFetcher(0);
      v11 = a3[7];
    }
  }

  return sub_22C370B74(a1 + v11, a2, v10);
}

void *sub_22C38E5B0(void *result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = sub_22C908AEC();
    v9 = sub_22C3699C8(v8);
    if (*(v10 + 84) == a3)
    {
      v11 = v9;
      v12 = a4[5];
    }

    else
    {
      v13 = sub_22C9087BC();
      v14 = sub_22C3699C8(v13);
      if (*(v15 + 84) == a3)
      {
        v11 = v14;
        v12 = a4[6];
      }

      else
      {
        v11 = type metadata accessor for TranscriptValueFetcher(0);
        v12 = a4[7];
      }
    }

    return sub_22C36C640(v5 + v12, a2, a2, v11);
  }

  return result;
}

uint64_t sub_22C38E6B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22C3A5908(&qword_27D9BC028, &unk_22C9134B0);
  v7 = sub_22C3699C8(v6);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = a1;
  }

  else
  {
    v11 = sub_22C907D6C();
    v12 = sub_22C3699C8(v11);
    if (*(v13 + 84) != a2)
    {
      return sub_22C3725D8(*(a1 + *(a3 + 28)));
    }

    v9 = v12;
    v10 = a1 + *(a3 + 20);
  }

  return sub_22C370B74(v10, a2, v9);
}

uint64_t sub_22C38E7A0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_22C3A5908(&qword_27D9BC028, &unk_22C9134B0);
  v9 = sub_22C3699C8(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = v9;
    v12 = a1;
  }

  else
  {
    v13 = sub_22C907D6C();
    result = sub_22C3699C8(v13);
    if (*(v15 + 84) != a3)
    {
      *(a1 + *(a4 + 28)) = (a2 - 1);
      return result;
    }

    v11 = result;
    v12 = a1 + *(a4 + 20);
  }

  return sub_22C36C640(v12, a2, a2, v11);
}

uint64_t sub_22C38E8EC()
{
  sub_22C4242E4(*(v0 + 16), *(v0 + 24), *(v0 + 32));

  return MEMORY[0x2821FE8E8](v0, 33, 7);
}

uint64_t sub_22C38E974()
{
  v2 = type metadata accessor for PromptMapperResolver();
  sub_22C374A44(v2);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = *(v5 + 64);
  sub_22C430FA8();
  v7 = v1[22];
  swift_unknownObjectRelease();
  sub_22C36FF94(v1 + 24);
  sub_22C36FF94(v1 + 29);
  if (v1[34])
  {

    v8 = v1[35];

    v9 = v1[36];
  }

  v71 = (v6 + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v72 = (v71 + 63) & 0xFFFFFFFFFFFFFFF8;
  v73 = (v72 + 39) & 0xFFFFFFFFFFFFFFF8;
  sub_22C36FF94(v1 + 38);
  v10 = v1[43];

  v11 = v1[45];

  v12 = v1 + *(v0 + 36);
  v13 = sub_22C3A5908(&qword_27D9BC1C8, &unk_22C918A20);
  sub_22C36985C(v13);
  (*(v14 + 8))(v12);
  v15 = type metadata accessor for FullPlannerPreferences();
  v16 = v15[5];
  v17 = sub_22C3A5908(&qword_27D9BBC18, &unk_22C912380);
  sub_22C36985C(v17);
  v19 = *(v18 + 8);
  v19(&v12[v16], v17);
  v20 = v19;
  v21 = v15[6];
  v22 = sub_22C3A5908(&qword_27D9BB8A8, &unk_22C918750);
  sub_22C36985C(v22);
  v24 = *(v23 + 8);
  v24(&v12[v21], v22);
  v25 = sub_22C37168C(v15[7]);
  (v24)(v25);
  v26 = sub_22C37168C(v15[8]);
  (v24)(v26);
  v27 = sub_22C37168C(v15[9]);
  (v24)(v27);
  v28 = sub_22C37168C(v15[10]);
  (v24)(v28);
  v29 = sub_22C38B804(v15[11]);
  v20(v29);
  v30 = sub_22C38B804(v15[12]);
  v20(v30);
  v31 = sub_22C37168C(v15[13]);
  (v24)(v31);
  v32 = sub_22C38B804(v15[14]);
  v20(v32);
  v70 = v15[15];
  v33 = sub_22C3A5908(&qword_27D9BC1D0, &qword_22C912390);
  sub_22C36985C(v33);
  v35 = *(v34 + 8);
  v36 = sub_22C377BB4(v70);
  v35(v36);
  v37 = sub_22C377BB4(v15[16]);
  v35(v37);
  v38 = sub_22C38B804(v15[17]);
  v20(v38);
  v39 = sub_22C377BB4(v15[18]);
  v35(v39);
  v40 = sub_22C37168C(v15[19]);
  (v24)(v40);
  v41 = v15[20];
  v42 = sub_22C3A5908(&qword_27D9BC1D8, &qword_22C912398);
  sub_22C36985C(v42);
  (*(v43 + 8))(&v12[v41]);
  v44 = sub_22C377BB4(v15[21]);
  v35(v44);
  v45 = sub_22C377BB4(v15[22]);
  v35(v45);
  v46 = sub_22C377BB4(v15[23]);
  v35(v46);
  v47 = sub_22C377BB4(v15[24]);
  v35(v47);
  v48 = sub_22C377BB4(v15[25]);
  v35(v48);
  v49 = sub_22C38B804(v15[26]);
  v20(v49);
  v50 = sub_22C38B804(v15[27]);
  v20(v50);
  v51 = sub_22C38B804(v15[28]);
  v20(v51);
  v52 = sub_22C38B804(v15[29]);
  v20(v52);
  v53 = sub_22C38B804(v15[30]);
  v20(v53);
  v54 = sub_22C38B804(v15[31]);
  v20(v54);
  v55 = sub_22C38B804(v15[32]);
  v20(v55);
  sub_22C37F074(v71);

  v56 = *(v12 + 1);

  v57 = *(v12 + 2);

  v58 = *(v12 + 3);

  v59 = *(v12 + 4);

  v60 = *(v12 + 5);

  v61 = *(v12 + 6);

  sub_22C37F074(v72);

  v62 = *(v12 + 1);

  v63 = *(v12 + 2);

  v64 = *(v74 + v73);

  v65 = *(v74 + ((v73 + 15) & 0xFFFFFFFFFFFFFFF8));

  v66 = sub_22C376614();

  return MEMORY[0x2821FE8E8](v66, v67, v68);
}

uint64_t sub_22C38EE64()
{
  v2 = type metadata accessor for PromptMapperResolver();
  sub_22C374A44(v2);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = *(v5 + 64);
  sub_22C430FA8();
  v7 = v1[22];
  swift_unknownObjectRelease();
  sub_22C36FF94(v1 + 24);
  sub_22C36FF94(v1 + 29);
  if (v1[34])
  {

    v8 = v1[35];

    v9 = v1[36];
  }

  v70 = (v6 + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v71 = (v70 + 63) & 0xFFFFFFFFFFFFFFF8;
  sub_22C36FF94(v1 + 38);
  v10 = v1[43];

  v11 = v1[45];

  v12 = v1 + *(v0 + 36);
  v13 = sub_22C3A5908(&qword_27D9BC1C8, &unk_22C918A20);
  sub_22C36985C(v13);
  (*(v14 + 8))(v12);
  v15 = type metadata accessor for FullPlannerPreferences();
  v16 = v15[5];
  v17 = sub_22C3A5908(&qword_27D9BBC18, &unk_22C912380);
  sub_22C36985C(v17);
  v19 = *(v18 + 8);
  v19(&v12[v16], v17);
  v20 = v19;
  v21 = v15[6];
  v22 = sub_22C3A5908(&qword_27D9BB8A8, &unk_22C918750);
  sub_22C36985C(v22);
  v24 = *(v23 + 8);
  v24(&v12[v21], v22);
  v25 = sub_22C37168C(v15[7]);
  (v24)(v25);
  v26 = sub_22C37168C(v15[8]);
  (v24)(v26);
  v27 = sub_22C37168C(v15[9]);
  (v24)(v27);
  v28 = sub_22C37168C(v15[10]);
  (v24)(v28);
  v29 = sub_22C38B804(v15[11]);
  v20(v29);
  v30 = sub_22C38B804(v15[12]);
  v20(v30);
  v31 = sub_22C37168C(v15[13]);
  (v24)(v31);
  v32 = sub_22C38B804(v15[14]);
  v20(v32);
  v69 = v15[15];
  v33 = sub_22C3A5908(&qword_27D9BC1D0, &qword_22C912390);
  sub_22C36985C(v33);
  v35 = *(v34 + 8);
  v36 = sub_22C377BB4(v69);
  v35(v36);
  v37 = sub_22C377BB4(v15[16]);
  v35(v37);
  v38 = sub_22C38B804(v15[17]);
  v20(v38);
  v39 = sub_22C377BB4(v15[18]);
  v35(v39);
  v40 = sub_22C37168C(v15[19]);
  (v24)(v40);
  v41 = v15[20];
  v42 = sub_22C3A5908(&qword_27D9BC1D8, &qword_22C912398);
  sub_22C36985C(v42);
  (*(v43 + 8))(&v12[v41]);
  v44 = sub_22C377BB4(v15[21]);
  v35(v44);
  v45 = sub_22C377BB4(v15[22]);
  v35(v45);
  v46 = sub_22C377BB4(v15[23]);
  v35(v46);
  v47 = sub_22C377BB4(v15[24]);
  v35(v47);
  v48 = sub_22C377BB4(v15[25]);
  v35(v48);
  v49 = sub_22C38B804(v15[26]);
  v20(v49);
  v50 = sub_22C38B804(v15[27]);
  v20(v50);
  v51 = sub_22C38B804(v15[28]);
  v20(v51);
  v52 = sub_22C38B804(v15[29]);
  v20(v52);
  v53 = sub_22C38B804(v15[30]);
  v20(v53);
  v54 = sub_22C38B804(v15[31]);
  v20(v54);
  v55 = sub_22C38B804(v15[32]);
  v20(v55);
  sub_22C37F074(v70);

  v56 = *(v12 + 1);

  v57 = *(v12 + 2);

  v58 = *(v12 + 3);

  v59 = *(v12 + 4);

  v60 = *(v12 + 5);

  v61 = *(v12 + 6);

  sub_22C37F074(v71);

  v62 = *(v12 + 1);

  v63 = *(v12 + 2);

  v64 = *(v72 + ((v71 + 39) & 0xFFFFFFFFFFFFFFF8));

  v65 = sub_22C376614();

  return MEMORY[0x2821FE8E8](v65, v66, v67);
}

uint64_t sub_22C38F340()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22C38F378()
{
  sub_22C4242E4(*(v0 + 16), *(v0 + 24), *(v0 + 32));

  return MEMORY[0x2821FE8E8](v0, 33, 7);
}

uint64_t sub_22C38F3B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for FullPlannerPreferences();
    v9 = a1 + *(a3 + 36);

    return sub_22C370B74(v9, a2, v8);
  }
}

uint64_t sub_22C38F43C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for FullPlannerPreferences();
    v8 = v5 + *(a4 + 36);

    return sub_22C36C640(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_22C38F4C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22C9036EC();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return sub_22C370B74(a1, a2, v6);
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

uint64_t sub_22C38F56C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_22C9036EC();
  if (*(*(result - 8) + 84) == a3)
  {

    return sub_22C36C640(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_22C38F614()
{
  sub_22C4242E4(*(v0 + 16), *(v0 + 24), *(v0 + 32));
  sub_22C36D6EC();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_22C38F65C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22C38F6AC()
{
  v1 = *(v0 + 24);

  sub_22C36A83C();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_22C38F6E0()
{
  v1 = *(v0 + 16);

  sub_22C369AEC();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_22C38F714()
{
  sub_22C4242E4(*(v0 + 16), *(v0 + 24), *(v0 + 32));

  return MEMORY[0x2821FE8E8](v0, 33, 7);
}

uint64_t sub_22C38F750()
{
  v1 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_22C38F788()
{
  if (*(v0 + 24) >= 3uLL)
  {
  }

  v1 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_22C38F7D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = type metadata accessor for StatefulExpressionParser.ToolData.Argument(0);
    v10 = a1 + *(a3 + 20);

    return sub_22C370B74(v10, a2, v9);
  }
}

uint64_t sub_22C38F864(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v7 = type metadata accessor for StatefulExpressionParser.ToolData.Argument(0);
    v8 = v5 + *(a4 + 20);

    return sub_22C36C640(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_22C38F8E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22C908AEC();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1 + *(a3 + 24);

    return sub_22C370B74(v8, a2, v7);
  }

  else
  {
    v10 = *(a1 + *(a3 + 28) + 24);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_22C38F998(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_22C908AEC();
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = a1 + *(a4 + 24);

    return sub_22C36C640(v10, a2, a2, v9);
  }

  else
  {
    *(a1 + *(a4 + 28) + 24) = (a2 - 1);
  }

  return result;
}

uint64_t sub_22C38FA48()
{
  v1 = *(v0 + 16);

  sub_22C369AEC();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_22C38FA7C(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_22C38FA94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22C908AEC();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return sub_22C370B74(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20) + 24);
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_22C38FB44(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_22C908AEC();
  if (*(*(result - 8) + 84) == a3)
  {

    return sub_22C36C640(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 24) = (a2 - 1);
  }

  return result;
}

uint64_t sub_22C38FBF0()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22C38FC28()
{
  v1 = *(v0 + 32);

  v2 = sub_22C3716D4();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_22C38FC58()
{
  v1 = *(v0 + 16);

  sub_22C369AEC();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_22C38FC8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_22C3716E4();
  v6 = type metadata accessor for RenderableTool();
  v7 = sub_22C3699C8(v6);
  if (*(v8 + 84) == v4)
  {

    return sub_22C370B74(v3, v4, v7);
  }

  else
  {
    v10 = *(v3 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_22C38FD2C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for RenderableTool();
  result = sub_22C3699C8(v8);
  if (*(v10 + 84) == a3)
  {

    return sub_22C36C640(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_22C38FDD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_22C3716E4();
  v6 = sub_22C90981C();
  v7 = sub_22C3699C8(v6);
  if (*(v8 + 84) == v4)
  {

    return sub_22C370B74(v3, v4, v7);
  }

  else
  {
    v10 = *(v3 + *(a3 + 20));
    LODWORD(v10) = ((v10 >> 57) >> 4) | (8 * ((v10 >> 57) & 8 | v10 & 7));
    v11 = v10 ^ 0x7E;
    v12 = 128 - v10;
    if (v11 >= 0x7A)
    {
      return 0;
    }

    else
    {
      return v12;
    }
  }
}

uint64_t sub_22C38FE88(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_22C3716E4();
  v8 = sub_22C90981C();
  result = sub_22C3699C8(v8);
  if (*(v10 + 84) == a3)
  {

    return sub_22C36C640(v4, v5, v5, result);
  }

  else
  {
    v11 = (-v5 >> 3) & 0xF | (16 * (-v5 & 0x7F));
    *(v4 + *(a4 + 20)) = (v11 | (v11 << 57)) & 0xF000000000000007;
  }

  return result;
}

uint64_t sub_22C38FF88()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22C38FFD4()
{
  v1 = *(v0 + 16);

  sub_22C369AEC();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_22C390008()
{
  v1 = *(v0 + 24);

  sub_22C36A83C();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_22C39003C()
{
  v1 = *(v0 + 16);

  sub_22C369AEC();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_22C390120(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22C908EAC();
  v7 = sub_22C3699C8(v6);
  if (*(v8 + 84) != a2)
  {
    return sub_22C3725D8(*(a1 + *(a3 + 20)));
  }

  return sub_22C370B74(a1, a2, v7);
}

uint64_t sub_22C3901BC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_22C908EAC();
  result = sub_22C3699C8(v8);
  if (*(v10 + 84) == a3)
  {

    return sub_22C36C640(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_22C390260(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    return sub_22C3725D8(*(a1 + 8));
  }

  v7 = type metadata accessor for GrammarToolDefinitionBundle(0);
  v8 = sub_22C3699C8(v7);
  if (*(v9 + 84) == a2)
  {
    v10 = v8;
    v11 = *(a3 + 20);
  }

  else
  {
    v10 = type metadata accessor for FullPlannerPreferences();
    v11 = *(a3 + 48);
  }

  return sub_22C370B74(a1 + v11, a2, v10);
}

uint64_t sub_22C39031C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for GrammarToolDefinitionBundle(0);
    v9 = sub_22C3699C8(v8);
    if (*(v10 + 84) == a3)
    {
      v11 = v9;
      v12 = *(a4 + 20);
    }

    else
    {
      v11 = type metadata accessor for FullPlannerPreferences();
      v12 = *(a4 + 48);
    }

    return sub_22C36C640(v5 + v12, a2, a2, v11);
  }

  return result;
}

uint64_t sub_22C3903E0()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22C390418()
{
  v1 = (type metadata accessor for ToolDefinitionGrammarGenerator_v5_0(0) - 8);
  v56 = *(*v1 + 80);
  v53 = (v56 + 16) & ~v56;
  v54 = *(*v1 + 64);
  v2 = *(v0 + v53 + 8);

  v3 = v0 + v53 + v1[7];
  v4 = sub_22C908EAC();
  sub_22C36985C(v4);
  (*(v5 + 8))(v3);
  v6 = *(v3 + *(type metadata accessor for GrammarToolDefinitionBundle(0) + 20));

  sub_22C36FF94((v0 + v53 + v1[8]));
  sub_22C36FF94((v0 + v53 + v1[9]));
  sub_22C36FF94((v0 + v53 + v1[10]));
  sub_22C36FF94((v0 + v53 + v1[11]));
  sub_22C36FF94((v0 + v53 + v1[12]));
  sub_22C36FF94((v0 + v53 + v1[13]));
  v7 = v0 + v53 + v1[14];
  v8 = sub_22C3A5908(&qword_27D9BC1C8, &unk_22C918A20);
  sub_22C36985C(v8);
  (*(v9 + 8))(v7);
  v10 = type metadata accessor for FullPlannerPreferences();
  v11 = v10[5];
  v12 = sub_22C3A5908(&qword_27D9BBC18, &unk_22C912380);
  sub_22C36985C(v12);
  v14 = *(v13 + 8);
  v14(v7 + v11, v12);
  v15 = v14;
  v16 = v10[6];
  v17 = sub_22C3A5908(&qword_27D9BB8A8, &unk_22C918750);
  sub_22C36985C(v17);
  v19 = *(v18 + 8);
  v19(v7 + v16, v17);
  v20 = sub_22C37168C(v10[7]);
  (v19)(v20);
  v21 = sub_22C37168C(v10[8]);
  (v19)(v21);
  v22 = sub_22C37168C(v10[9]);
  (v19)(v22);
  v23 = sub_22C37168C(v10[10]);
  (v19)(v23);
  v24 = sub_22C38B804(v10[11]);
  v15(v24);
  v25 = sub_22C38B804(v10[12]);
  v15(v25);
  v57 = v15;
  v26 = sub_22C37168C(v10[13]);
  (v19)(v26);
  v27 = sub_22C38B804(v10[14]);
  v15(v27);
  v52 = v10[15];
  v28 = sub_22C3A5908(&qword_27D9BC1D0, &qword_22C912390);
  sub_22C36985C(v28);
  v30 = *(v29 + 8);
  v31 = sub_22C377BB4(v52);
  v30(v31);
  v32 = sub_22C377BB4(v10[16]);
  v30(v32);
  v33 = sub_22C38B804(v10[17]);
  v57(v33);
  v34 = sub_22C377BB4(v10[18]);
  v30(v34);
  v35 = sub_22C37168C(v10[19]);
  (v19)(v35);
  v36 = v10[20];
  v37 = sub_22C3A5908(&qword_27D9BC1D8, &qword_22C912398);
  sub_22C36985C(v37);
  (*(v38 + 8))(v7 + v36);
  v39 = sub_22C377BB4(v10[21]);
  v30(v39);
  v40 = sub_22C377BB4(v10[22]);
  v30(v40);
  v41 = sub_22C377BB4(v10[23]);
  v30(v41);
  v42 = sub_22C377BB4(v10[24]);
  v30(v42);
  v43 = sub_22C377BB4(v10[25]);
  v30(v43);
  v44 = sub_22C38B804(v10[26]);
  v57(v44);
  v45 = sub_22C38B804(v10[27]);
  v57(v45);
  v46 = sub_22C38B804(v10[28]);
  v57(v46);
  v47 = sub_22C38B804(v10[29]);
  v57(v47);
  v48 = sub_22C38B804(v10[30]);
  v57(v48);
  v49 = sub_22C38B804(v10[31]);
  v57(v49);
  v50 = sub_22C38B804(v10[32]);
  v57(v50);

  return MEMORY[0x2821FE8E8](v55, v53 + v54, v56 | 7);
}

uint64_t sub_22C3909E0()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22C390A18()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22C390B20()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22C390B58()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22C390C60()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22C390C98()
{
  v1 = *(v0 + 24);

  sub_22C36A83C();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_22C390CFC()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22C390D34()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22C390DA0()
{
  v1 = *(v0 + 24);

  sub_22C36A83C();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_22C390DDC()
{
  v1 = *(v0 + 24);

  v2 = sub_22C36A8CC();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_22C390E0C()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22C390E6C(uint64_t result, uint64_t a2)
{
  *(result + 16) = a2;
  *(result + 24) = 2 * a2;
  return result;
}

uint64_t sub_22C390E7C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22C390EB4()
{
  if (*(v0 + 24) >= 3uLL)
  {
  }

  v1 = *(v0 + 32);

  sub_22C36D2A8();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_22C390EF8()
{
  v1 = *(v0 + 16);

  sub_22C369AEC();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_22C390F2C()
{
  v1 = *(v0 + 32);

  sub_22C36D2A8();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_22C390FF8()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  sub_22C380498();

  return MEMORY[0x2821FE8E8](v3, v4, v5);
}

uint64_t sub_22C391034(uint64_t a1, int a2)
{
  if (a2 == 0x7FFFFFFF)
  {
    return sub_22C3725D8(*(a1 + 16));
  }

  sub_22C374A1C();
  sub_22C90069C();
  v4 = sub_22C36ECCC(*(v2 + 32));

  return sub_22C370B74(v4, v5, v6);
}

void sub_22C3910A4()
{
  sub_22C3700E0();
  if (v3)
  {
    *(v1 + 16) = (v0 - 1);
  }

  else
  {
    v4 = v2;
    sub_22C90069C();
    v5 = sub_22C36ECCC(*(v4 + 32));

    sub_22C36C640(v5, v6, v0, v7);
  }
}

uint64_t sub_22C391114(uint64_t a1, int a2)
{
  if (a2 == 0x7FFFFFFF)
  {
    return sub_22C3725D8(*(a1 + 8));
  }

  sub_22C374A1C();
  sub_22C90963C();
  v4 = sub_22C36ECCC(*(v2 + 24));

  return sub_22C370B74(v4, v5, v6);
}

void sub_22C391184()
{
  sub_22C3700E0();
  if (v3)
  {
    *(v1 + 8) = (v0 - 1);
  }

  else
  {
    v4 = v2;
    sub_22C90963C();
    v5 = sub_22C36ECCC(*(v4 + 24));

    sub_22C36C640(v5, v6, v0, v7);
  }
}

uint64_t sub_22C3911F4(void *a1, int a2)
{
  if (a2 == 122)
  {
    v3 = ((*a1 >> 57) >> 4) | (8 * ((*a1 >> 57) & 8 | *a1 & 7));
    v4 = v3 ^ 0x7E;
    v5 = 128 - v3;
    if (v4 >= 0x7A)
    {
      return 0;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    sub_22C374A1C();
    sub_22C901FAC();
    v7 = sub_22C36ECCC(*(v2 + 20));

    return sub_22C370B74(v7, v8, v9);
  }
}

unint64_t *sub_22C391284(unint64_t *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 122)
  {
    v6 = (-a2 >> 3) & 0xF | (16 * (-a2 & 0x7F));
    *result = (v6 | (v6 << 57)) & 0xF000000000000007;
  }

  else
  {
    v8 = sub_22C901FAC();
    v9 = v5 + *(a4 + 20);

    return sub_22C36C640(v9, a2, a2, v8);
  }

  return result;
}

uint64_t sub_22C39134C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22C371718();
  v7 = type metadata accessor for PromptTreeIdentifier.TranscriptReference.Category(v6);
  v8 = sub_22C3699C8(v7);
  if (*(v9 + 84) == v3)
  {
    v10 = v8;
    v11 = v4;
  }

  else
  {
    v10 = sub_22C902D0C();
    v11 = v4 + *(a3 + 20);
  }

  return sub_22C370B74(v11, v3, v10);
}

uint64_t sub_22C3913DC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_22C371718();
  v9 = type metadata accessor for PromptTreeIdentifier.TranscriptReference.Category(v8);
  v10 = sub_22C3699C8(v9);
  if (*(v11 + 84) == a3)
  {
    v12 = v10;
    v13 = v5;
  }

  else
  {
    v12 = sub_22C902D0C();
    v13 = v5 + *(a4 + 20);
  }

  return sub_22C36C640(v13, v4, v4, v12);
}

uint64_t sub_22C391474()
{
  sub_22C371718();
  v2 = sub_22C902D0C();
  v3 = sub_22C370B74(v1, v0, v2);
  if (v3 >= 4)
  {
    return v3 - 3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_22C3914B4(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 3);
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_22C902D0C();

  return sub_22C36C640(a1, v5, a3, v6);
}

uint64_t sub_22C391624()
{
  sub_22C4242E4(*(v0 + 16), *(v0 + 24), *(v0 + 32));

  return MEMORY[0x2821FE8E8](v0, 33, 7);
}

uint64_t sub_22C391660(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_22C3704C4();
  v6 = sub_22C901FAC();
  v7 = sub_22C3699C8(v6);
  if (*(v8 + 84) == a2)
  {

    return sub_22C370B74(v3, a2, v7);
  }

  else
  {
    v10 = *(v3 + *(a3 + 20));
    if (v10 >= 2)
    {
      return ((v10 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_22C391714(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_22C371718();
  v8 = sub_22C901FAC();
  result = sub_22C3699C8(v8);
  if (*(v10 + 84) == a3)
  {

    return sub_22C36C640(v5, v4, v4, result);
  }

  else
  {
    *(v5 + *(a4 + 20)) = v4 + 1;
  }

  return result;
}

uint64_t sub_22C3917B0()
{
  sub_22C4242E4(*(v0 + 16), *(v0 + 24), *(v0 + 32));

  return MEMORY[0x2821FE8E8](v0, 33, 7);
}

uint64_t sub_22C3917EC()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22C391824()
{
  if (*(v0 + 24) >= 3uLL)
  {
  }

  v1 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_22C39186C()
{
  v1 = *(v0 + 16);

  sub_22C369AEC();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_22C391984()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22C3919BC()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22C3919F4()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22C391A3C()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22C391A74()
{
  if (*(v0 + 24) >= 3uLL)
  {
  }

  v1 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_22C391ABC()
{
  v1 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_22C391AFC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_22C490480();
  *a2 = result;
  return result;
}

uint64_t sub_22C391B2C()
{
  v1 = *(v0 + 24);

  sub_22C36A83C();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_22C391B60()
{
  v1 = *(v0 + 16);

  sub_22C369AEC();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_22C391B94()
{
  v1 = *(v0 + 16);

  sub_22C369AEC();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

__n128 sub_22C391C0C(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_22C391C18()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22C391D10()
{
  v1 = *(v0 + 32);

  sub_22C36D2A8();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_22C391D44()
{
  v1 = *(v0 + 16);

  sub_22C369AEC();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_22C391E68()
{
  v1 = *(v0 + 24);

  sub_22C36A83C();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_22C391E9C()
{
  v1 = *(v0 + 24);

  sub_22C36A83C();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_22C391FFC()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22C392034()
{
  if (*(v0 + 24) >= 3uLL)
  {
  }

  v1 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_22C39207C()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22C3920B4()
{
  sub_22C4242E4(*(v0 + 16), *(v0 + 24), *(v0 + 32));

  return MEMORY[0x2821FE8E8](v0, 33, 7);
}

uint64_t sub_22C3920F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22C3A5908(&qword_27D9BD068, &unk_22C917440);
  if (*(*(v6 - 8) + 84) == a2)
  {

    return sub_22C370B74(a1, a2, v6);
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

uint64_t sub_22C3921A8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_22C3A5908(&qword_27D9BD068, &unk_22C917440);
  if (*(*(result - 8) + 84) == a3)
  {

    return sub_22C36C640(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_22C3922AC()
{
  sub_22C4242E4(*(v0 + 16), *(v0 + 24), *(v0 + 32));

  return MEMORY[0x2821FE8E8](v0, 33, 7);
}

uint64_t sub_22C3922E8()
{
  v1 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_22C392320()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22C392358()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22C392390()
{
  if (*(v0 + 24) >= 3uLL)
  {
  }

  v1 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_22C3923D8()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22C392410(uint64_t a1, uint64_t a2)
{
  sub_22C369A48();
  v4 = sub_22C902D0C();

  return sub_22C370B74(v2, a2, v4);
}

uint64_t sub_22C392454(uint64_t a1, uint64_t a2)
{
  sub_22C369A48();
  v4 = sub_22C902D0C();

  return sub_22C36C640(v2, a2, a2, v4);
}

uint64_t sub_22C3924C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_22C369A48();
  v6 = sub_22C9036EC();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = v3;
  }

  else
  {
    if (a2 == 254)
    {
      v9 = *(v3 + *(a3 + 20));
      if (v9 >= 2)
      {
        return ((v9 + 2147483646) & 0x7FFFFFFF) + 1;
      }

      else
      {
        return 0;
      }
    }

    v7 = sub_22C9037DC();
    v8 = v3 + *(a3 + 24);
  }

  return sub_22C370B74(v8, a2, v7);
}

uint64_t sub_22C3925A0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_22C369A48();
  result = sub_22C9036EC();
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = v4;
  }

  else
  {
    if (a3 == 254)
    {
      *(v4 + *(a4 + 20)) = a2 + 1;
      return result;
    }

    v9 = sub_22C9037DC();
    v10 = v4 + *(a4 + 24);
  }

  return sub_22C36C640(v10, a2, a2, v9);
}

uint64_t sub_22C392664(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_22C908AEC();
    v9 = a1 + *(a3 + 20);

    return sub_22C370B74(v9, a2, v8);
  }
}

uint64_t sub_22C3926EC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_22C908AEC();
    v8 = v5 + *(a4 + 20);

    return sub_22C36C640(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_22C3927E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22C90941C();
  v7 = sub_22C3699C8(v6);
  if (*(v8 + 84) != a2)
  {
    return sub_22C3725D8(*(a1 + *(a3 + 20)));
  }

  return sub_22C370B74(a1, a2, v7);
}

uint64_t sub_22C392884(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_22C371718();
  v8 = sub_22C90941C();
  result = sub_22C3699C8(v8);
  if (*(v10 + 84) == a3)
  {

    return sub_22C36C640(v5, v4, v4, result);
  }

  else
  {
    *(v5 + *(a4 + 20)) = (v4 - 1);
  }

  return result;
}

uint64_t sub_22C392920(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_22C371718();
  v6 = sub_22C90919C();
  v7 = sub_22C3699C8(v6);
  if (*(v8 + 84) == v3)
  {
    v9 = v7;
    v10 = v4;
  }

  else
  {
    v9 = sub_22C901FAC();
    v10 = v4 + *(a3 + 20);
  }

  return sub_22C370B74(v10, v3, v9);
}

uint64_t sub_22C3929B0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_22C371718();
  v8 = sub_22C90919C();
  v9 = sub_22C3699C8(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = v9;
    v12 = v5;
  }

  else
  {
    v11 = sub_22C901FAC();
    v12 = v5 + *(a4 + 20);
  }

  return sub_22C36C640(v12, v4, v4, v11);
}

uint64_t sub_22C392A48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    return sub_22C3725D8(*(a1 + 16));
  }

  v7 = type metadata accessor for _PromptMapper._ToolPromptMap(0);
  v8 = a1 + *(a3 + 32);

  return sub_22C370B74(v8, a2, v7);
}

uint64_t sub_22C392AC4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for _PromptMapper._ToolPromptMap(0);
    v8 = v5 + *(a4 + 32);

    return sub_22C36C640(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_22C392B44(uint64_t a1, uint64_t a2, int *a3)
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
    v8 = sub_22C90077C();
    v9 = sub_22C3699C8(v8);
    if (*(v10 + 84) == a2)
    {
      v11 = v9;
      v12 = a3[5];
    }

    else
    {
      v13 = sub_22C3A5908(&qword_27D9BB730, &unk_22C90FE30);
      v14 = sub_22C3699C8(v13);
      if (*(v15 + 84) == a2)
      {
        v11 = v14;
        v12 = a3[7];
      }

      else
      {
        v16 = sub_22C3A5908(&qword_27D9BB728, &qword_22C911230);
        v17 = sub_22C3699C8(v16);
        if (*(v18 + 84) == a2)
        {
          v11 = v17;
          v12 = a3[8];
        }

        else
        {
          v11 = type metadata accessor for FullPlannerPreferences();
          v12 = a3[10];
        }
      }
    }

    return sub_22C370B74(a1 + v12, a2, v11);
  }
}