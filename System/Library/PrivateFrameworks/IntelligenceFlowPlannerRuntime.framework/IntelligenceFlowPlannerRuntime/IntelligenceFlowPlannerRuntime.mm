uint64_t sub_22C369880()
{
  v2 = v0[14];
  v1 = v0[15];
  result = v0[12];
  v5 = v0[6];
  v4 = v0[7];
  v6 = v0[3];
  v7 = *(v0[11] + 32);
  v8 = v0[21] + *(v0[17] + 48);
  return result;
}

size_t sub_22C36998C(void *a1)
{
  result = j__malloc_size(a1);
  a1[2] = v1;
  a1[3] = 2 * ((result - 32) / 8);
  return result;
}

uint64_t sub_22C3699D4()
{

  return swift_task_alloc();
}

void sub_22C3699EC()
{

  JUMPOUT(0x2318B9880);
}

void sub_22C369A04(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t sub_22C369A24()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

uint64_t sub_22C369ACC(uint64_t a1)
{

  return sub_22C36C640(v1 + v2, 1, 1, a1);
}

uint64_t sub_22C369AF8(uint64_t a1)
{

  return sub_22C36C640(v1 + v2, 1, 1, a1);
}

uint64_t sub_22C369B28(uint64_t result)
{
  *(result + 8) = sub_22C3E3E5C;
  v2 = *(v1 + 224);
  v3 = *(v1 + 208);
  return result;
}

void sub_22C369B78()
{
  v2 = v0[33];
  v3 = v0[30];
  v4 = v0[29];
  v5 = v0[28];
  v6 = v0[27];
  v7 = v0[24];
  v8 = v0[23];
  v9 = v0[22];
  v1 = v0[19];
  v10 = v0[16];
}

uint64_t sub_22C369BC4()
{
  v2 = v0[23];
  v3 = v0[20];
  v4 = v0[17];
  v5 = v0[14];
  v7 = v0[10];
  v6 = v0[11];
}

uint64_t sub_22C369C00@<X0>(uint64_t a1@<X8>)
{
  v3 = *(a1 + 104);
  result = v1;
  v5 = *(v2 - 356);
  return result;
}

void sub_22C369C2C()
{

  sub_22C591324();
}

uint64_t sub_22C369C50()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

uint64_t sub_22C369C70()
{

  return sub_22C90B4FC();
}

uint64_t sub_22C369CA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);

  return sub_22C4760BC(va, a3, v5, a5, v6, a4, v7);
}

void sub_22C369DE4(uint64_t a1@<X8>, __n128 a2@<Q0>)
{
  v3 = (v2 + a1);
  v3[2].n128_u64[0] = 0;
  *v3 = a2;
  v3[1] = a2;
}

uint64_t sub_22C369E3C(uint64_t a1)
{
  *(a1 + 8) = sub_22C4E2F30;
  v3 = v1[86];
  v4 = v1[35];
  result = v1[55];
  v7 = *(v2 - 112);
  v6 = *(v2 - 104);
  return result;
}

BOOL sub_22C369E90(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

void sub_22C369EAC()
{
  v4 = v0[75];
  v5 = v0[72];
  v6 = v0[71];
  v7 = v0[68];
  v8 = v0[67];
  v9 = v0[66];
  v10 = v0[63];
  v11 = v0[60];
  v12 = v0[58];
  v13 = v0[55];
  v1 = v0[52];
  v3 = v0[48];
  v2 = v0[49];
}

uint64_t sub_22C369F1C()
{

  return swift_once();
}

uint64_t sub_22C369F60()
{
  result = *(v0 - 560);
  v2 = *(v0 - 584);
  v3 = *(v0 - 576);
  v4 = *(v0 - 568);
  return result;
}

uint64_t sub_22C369F8C()
{

  return sub_22C909F0C();
}

uint64_t sub_22C369FEC()
{
  v2 = v0[47];
  v3 = v0[45];
  *(v1 - 96) = v0[44];
  *(v1 - 88) = v2;
  v5 = v0[41];
  v4 = v0[42];
  v7 = v0[35];
  result = v0[36];
  v14 = v0[25];
  v8 = v0[23];
  v15 = v0[30];
  v10 = v0[15];
  v9 = v0[16];
  v12 = v0[13];
  v11 = v0[14];
  v13 = v0[7];
  return result;
}

unint64_t sub_22C36A064()
{
  v5 = *(v1 + 456);
  *(v0 + 16) = v2;
  return v0 + ((*(*(v4 - 112) + 80) + 32) & ~*(*(v4 - 112) + 80)) + *(*(v4 - 112) + 72) * v3;
}

uint64_t sub_22C36A08C@<X0>(unint64_t a1@<X8>)
{
  *(v2 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << a1;
  result = *(v1 + 48) + a1 * *(v3 - 120);
  v5 = *(v3 - 96);
  v6 = *(v3 - 88);
  v8 = *(v3 - 112);
  v7 = *(v3 - 104);
  return result;
}

uint64_t sub_22C36A0C0()
{
  v4 = *(*(v3 - 88) + 48) + *(v1 + 72) * v0;
  v5 = *(v1 + 16);
  return v2;
}

uint64_t sub_22C36A158()
{
  v9 = v0[45];
  v10 = v0[44];
  v11 = v0[43];
  v12 = v0[42];
  v13 = v0[41];
  v14 = v0[40];
  v15 = v0[39];
  v16 = v0[38];
  v17 = v0[37];
  v18 = v0[36];
  v19 = v0[35];
  v20 = v0[34];
  v21 = v0[33];
  v22 = v0[31];
  v23 = v0[30];
  v24 = v0[29];
  v25 = v0[28];
  v26 = v0[25];
  v4 = v0[20];
  v3 = v0[21];
  *(v1 - 144) = v0[24];
  *(v1 - 136) = v3;
  v6 = v0[16];
  v5 = v0[17];
  *(v1 - 128) = v4;
  *(v1 - 120) = v5;
  v7 = v0[15];
  *(v1 - 112) = v6;
  *(v1 - 104) = v7;
  *(v1 - 96) = v0[12];
}

void *sub_22C36A21C(uint64_t a1)
{
  *(a1 + 8) = sub_22C728940;
  v2 = v1[35];
  v3 = v1[31];
  v4 = v1[32];
  return v1 + 18;
}

void sub_22C36A274()
{
  v2 = v0[74];
  v4 = v0[73];
  v5 = v0[70];
  v6 = v0[69];
  v7 = v0[68];
  v8 = v0[67];
  v9 = v0[66];
  v10 = v0[64];
  v11 = v0[63];
  v12 = v0[62];
  v13 = v0[61];
  v14 = v0[58];
  v15 = v0[57];
  v3 = v0[55];
  *(v1 - 216) = v0[56];
  *(v1 - 208) = v3;
}

__n128 sub_22C36A2C4(__n128 *a1)
{
  result = v1[12];
  a1[1] = result;
  return result;
}

void sub_22C36A2D4()
{
  v13 = v1[170];
  v3 = v1[168];
  v4 = v1[167];
  v5 = v1[166];
  v6 = v1[153];
  v7 = v0;
  v8 = v1[152];
  v9 = v1[151];
  v12 = v1[146];
  v10 = v1[141];
  v11 = v1[140];
}

void sub_22C36A344(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *(v12 - 112) = v10;
  *(v12 - 104) = &a9 - v9;
  v13 = *(v11 + 16);
  *(v12 - 88) = v10 + 32;
}

uint64_t sub_22C36A368()
{
  v3 = *(v0 + 800);
  result = v1;
  v5 = *(v2 - 152);
  v6 = *(v2 - 168);
  return result;
}

uint64_t sub_22C36A37C()
{

  return sub_22C7AB96C(v0, type metadata accessor for StepResolution);
}

uint64_t sub_22C36A444()
{
  v4 = v0[22];
  v5 = v0[21];
  v6 = v0[20];
  v7 = v0[19];
  v8 = v0[16];
  v9 = v0[15];
  v10 = v0[14];
  v11 = v0[13];
  v2 = v0[12];
  v12 = v0[10];
  v13 = v0[9];
}

uint64_t sub_22C36A49C()
{

  return sub_22C90B3AC();
}

uint64_t sub_22C36A500()
{
  v2 = v0[56];
  result = v0[57];
  v4 = v0[52];
  v3 = v0[53];
  v6 = v0[50];
  v5 = v0[51];
  v7 = v0[47];
  v8 = v0[44];
  v9 = v0[41];
  v10 = v0[38];
  v11 = v0[35];
  return result;
}

uint64_t sub_22C36A524()
{
  v2 = v0[38];
  result = v0[39];
  v4 = v0[36];
  v3 = v0[37];
  v6 = v0[34];
  v5 = v0[35];
  v7 = v0[32];
  v8 = v0[33];
  v9 = v0[31];
  v10 = v0[27];
  v11 = v0[28];
  v13 = v0[25];
  v12 = v0[26];
  return result;
}

uint64_t sub_22C36A544()
{
  *(v1 + ((v0 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v0;
  result = *(v2 + 48) + *(v3 - 112) * v0;
  v5 = **(v3 - 120);
  v6 = *(v3 - 88);
  return result;
}

void sub_22C36A5BC()
{
  v2 = v0[70];
  v3 = v0[69];
  v4 = v0[68];
  v5 = v0[65];
  v6 = v0[64];
  v7 = v0[63];
  v8 = v0[62];
  v9 = v0[61];
  v10 = v0[60];
  v11 = v0[58];
  v1 = v0[55];
  v12 = v0[52];
  v13 = v0[51];
  v14 = v0[49];
}

uint64_t sub_22C36A644()
{

  return sub_22C9062CC();
}

uint64_t sub_22C36A6B0()
{

  return sub_22C90B4FC();
}

uint64_t sub_22C36A7A4@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(a2 - 256) = result;
  v2 = *(result - 8);
  return result;
}

void sub_22C36A7BC()
{
  v2 = *(v0 + 16) + 1;

  sub_22C592574();
}

uint64_t sub_22C36A96C()
{

  return swift_getWitnessTable();
}

__n128 sub_22C36AA20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  v15[24] = a13;
  *&v15[16] = a12;
  *&v15[8] = a11;
  *v15 = a10;
  *v13 = a9;
  v13[1] = *v15;
  result = *&v15[9];
  *(v13 + 25) = *&v15[9];
  return result;
}

void sub_22C36AAA0()
{
  v4 = v0[65];
  v5 = v0[62];
  v6 = v0[59];
  v7 = v0[58];
  v8 = v0[55];
  v9 = v0[52];
  v10 = v0[49];
  v2 = v0[43];
  *(v1 - 128) = v0[46];
  *(v1 - 120) = v2;
  v3 = v0[39];
  *(v1 - 112) = v0[40];
  *(v1 - 104) = v3;
}

uint64_t sub_22C36AB58()
{

  return swift_allocObject();
}

uint64_t sub_22C36AB74()
{
  result = *(v0 - 384);
  v2 = *(v0 - 472);
  v3 = *(v0 - 448);
  v4 = *(v0 - 424);
  v5 = *(v0 - 400);
  return result;
}

uint64_t sub_22C36ABB4()
{

  return sub_22C90AD4C();
}

uint64_t sub_22C36AC08()
{
  v4 = v0[47];
  v3 = v0[48];
  v5 = v0[46];
  v7 = v0[42];
  v6 = v0[43];
  v8 = v0[41];
  v10 = v0[38];
  v9 = v0[39];
  v12 = v0[36];
  v11 = v0[37];
  v15 = v0[35];
  v16 = v0[34];
  v17 = v0[33];
  v18 = v0[30];
  v19 = v0[29];
  v20 = v0[28];
  v21 = v0[27];
  v22 = v0[26];
  v23 = v0[25];
  v24 = v0[22];
  v25 = v0[21];
  v26 = v0[20];
  v27 = v0[17];
  v13 = v0[13];
  *(v1 - 96) = v0[16];
  *(v1 - 88) = v13;
}

uint64_t sub_22C36AC74(uint64_t a1)
{
  *(a1 + 8) = v1;
  v4 = v3 + *v3;
  return v2;
}

uint64_t sub_22C36ACEC(uint64_t result)
{
  *(v3 - 128) = v1;
  v4 = 1 << *(result + 32);
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & *(result + 56);
  *(v3 - 104) = v2 + 16;
  *(v3 - 96) = v2;
  *(v3 - 120) = v2 + 32;
  *(v3 - 112) = result;
  return result;
}

void sub_22C36AD70(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

void sub_22C36ADD0()
{
  v1 = v0[218];
  v2 = v0[217];
  v3 = v0[216];
  v4 = v0[215];
  v5 = v0[214];
  v6 = v0[213];
  v7 = v0[210];
  v8 = v0[209];
  v9 = v0[208];
  v10 = v0[205];
  v11 = v0[204];
  v12 = v0[203];
  v13 = v0[202];
  v14 = v0[201];
  v15 = v0[200];
  v16 = v0[197];
  v17 = v0[196];
  v18 = v0[194];
  v19 = v0[193];
  v20 = v0[192];
  v21 = v0[191];
  v22 = v0[188];
  v23 = v0[187];
  v24 = v0[186];
  v25 = v0[185];
  v26 = v0[182];
  v27 = v0[181];
  v28 = v0[180];
  v29 = v0[179];
  v30 = v0[178];
  v31 = v0[175];
  v32 = v0[172];
  v33 = v0[171];
  v34 = v0[170];
  v35 = v0[169];
  v36 = v0[166];
  v37 = v0[165];
  v38 = v0[164];
  v39 = v0[161];
  v40 = v0[160];
  v41 = v0[157];
  v42 = v0[154];
  v43 = v0[153];
  v44 = v0[152];
  v45 = v0[149];
  v46 = v0[147];
  v47 = v0[146];
  v48 = v0[145];
  v49 = v0[144];
  v50 = v0[143];
  v51 = v0[142];
  v52 = v0[141];
  v53 = v0[140];
  v54 = v0[137];
  v55 = v0[136];
  v56 = v0[135];
  v57 = v0[134];
  v58 = v0[133];
  v59 = v0[132];
  v60 = v0[131];
  v61 = v0[128];
  v62 = v0[125];
  STACK[0x200] = v0[123];
  STACK[0x208] = v0[122];
  STACK[0x210] = v0[121];
  STACK[0x218] = v0[118];
  STACK[0x220] = v0[117];
  STACK[0x228] = v0[116];
  STACK[0x230] = v0[113];
  STACK[0x238] = v0[110];
  STACK[0x240] = v0[109];
  STACK[0x248] = v0[108];
  STACK[0x250] = v0[107];
  STACK[0x258] = v0[104];
  STACK[0x260] = v0[101];
  STACK[0x268] = v0[100];
  STACK[0x270] = v0[97];
  STACK[0x278] = v0[94];
  STACK[0x280] = v0[93];
  STACK[0x288] = v0[90];
  STACK[0x290] = v0[87];
  STACK[0x298] = v0[86];
  STACK[0x2A0] = v0[83];
  STACK[0x2A8] = v0[82];
  STACK[0x2B0] = v0[79];
  STACK[0x2B8] = v0[76];
  STACK[0x2C0] = v0[75];
  STACK[0x2C8] = v0[74];
  STACK[0x2D0] = v0[73];
  STACK[0x2D8] = v0[72];
  STACK[0x2E0] = v0[71];
  STACK[0x2E8] = v0[70];
  STACK[0x2F0] = v0[69];
  STACK[0x2F8] = v0[66];
  STACK[0x300] = v0[65];
}

uint64_t sub_22C36B084()
{
  result = v0[193];
  v2 = v0[192];
  v3 = v0[191];
  v4 = v0[190];
  v5 = v0[189];
  v6 = v0[188];
  v7 = v0[187];
  v8 = v0[186];
  v9 = v0[185];
  v10 = v0[184];
  v11 = v0[183];
  v12 = v0[180];
  v13 = v0[179];
  v14 = v0[176];
  v15 = v0[175];
  v16 = v0[174];
  v17 = v0[173];
  v18 = v0[172];
  v19 = v0[171];
  v20 = v0[170];
  v21 = v0[167];
  v22 = v0[166];
  v23 = v0[165];
  v24 = v0[164];
  v25 = v0[163];
  v26 = v0[162];
  v27 = v0[161];
  v28 = v0[160];
  v29 = v0[157];
  v30 = v0[154];
  v31 = v0[151];
  v32 = v0[148];
  v33 = v0[145];
  v34 = v0[144];
  v35 = v0[143];
  v36 = v0[142];
  v37 = v0[141];
  v38 = v0[140];
  v39 = v0[139];
  v40 = v0[138];
  v41 = v0[137];
  v42 = v0[136];
  v43 = v0[135];
  v44 = v0[134];
  v45 = v0[133];
  v46 = v0[132];
  v47 = v0[130];
  v48 = v0[129];
  v49 = v0[128];
  v50 = v0[127];
  v51 = v0[126];
  v52 = v0[125];
  v53 = v0[124];
  v54 = v0[123];
  v55 = v0[122];
  v56 = v0[121];
  v57 = v0[120];
  v58 = v0[117];
  v59 = v0[116];
  v60 = v0[115];
  v61 = v0[114];
  v62 = v0[113];
  v63 = v0[112];
  v64 = v0[111];
  v65 = v0[110];
  v66 = v0[109];
  v67 = v0[108];
  v68 = v0[107];
  v69 = v0[105];
  v70 = v0[104];
  v71 = v0[103];
  v72 = v0[102];
  STACK[0x200] = v0[98];
  STACK[0x208] = v0[97];
  STACK[0x210] = v0[96];
  STACK[0x218] = v0[95];
  STACK[0x220] = v0[94];
  STACK[0x228] = v0[91];
  STACK[0x230] = v0[90];
  STACK[0x238] = v0[89];
  STACK[0x240] = v0[88];
  STACK[0x248] = v0[87];
  STACK[0x250] = v0[84];
  STACK[0x258] = v0[83];
  STACK[0x260] = v0[82];
  STACK[0x268] = v0[81];
  STACK[0x270] = v0[80];
  STACK[0x278] = v0[79];
  return result;
}

void sub_22C36B2A8()
{
  v4 = v0[181];
  v5 = v0[178];
  v6 = v0[177];
  v7 = v0[176];
  v8 = v0[173];
  v9 = v0[172];
  v10 = v0[171];
  v11 = v0[170];
  v12 = v0[169];
  v13 = v0[168];
  v14 = v0[167];
  v15 = v0[166];
  v16 = v0[165];
  v17 = v0[164];
  v18 = v0[163];
  v19 = v0[162];
  v20 = v0[161];
  v21 = v0[160];
  v22 = v0[159];
  v23 = v0[158];
  v24 = v0[157];
  v25 = v0[156];
  v26 = v0[155];
  v27 = v0[152];
  v28 = v0[151];
  v29 = v0[150];
  v30 = v0[149];
  v31 = v0[146];
  v32 = v0[143];
  v33 = v0[140];
  v34 = v0[137];
  v35 = v0[134];
  v36 = v0[131];
  v37 = v0[128];
  v38 = v0[125];
  v39 = v0[122];
  v40 = v0[119];
  v41 = v0[116];
  v42 = v0[114];
  v43 = v0[113];
  v44 = v0[111];
  v45 = v0[110];
  v46 = v0[107];
  v47 = v0[106];
  v48 = v0[105];
  v49 = v0[104];
  v50 = v0[103];
  v51 = v0[102];
  v52 = v0[100];
  v53 = v0[99];
  v54 = v0[96];
  v55 = v0[95];
  v56 = v0[94];
  v57 = v0[93];
  v58 = v0[90];
  v59 = v0[89];
  v60 = v0[86];
  v61 = v0[83];
  v62 = v0[80];
  v63 = v0[79];
  v64 = v0[78];
  v65 = v0[77];
  STACK[0x200] = v0[75];
  STACK[0x208] = v0[74];
  STACK[0x210] = v0[73];
  STACK[0x218] = v0[70];
  STACK[0x220] = v0[69];
  STACK[0x228] = v0[66];
  v1 = v0[62];
  STACK[0x230] = v0[63];
  STACK[0x238] = v1;
  STACK[0x240] = v0[59];
  STACK[0x248] = v0[56];
  v2 = v0[52];
  v3 = v0[53];
}

uint64_t sub_22C36B49C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return MEMORY[0x28211F310](&a9, a2, a2, v9, v9);
}

void sub_22C36B4F0()
{
  v1 = *(v0 - 264);
  v2 = *(v0 - 288);
  v3 = *(v0 - 296);
  v4 = *(v0 - 304);
}

uint64_t sub_22C36B514()
{

  return sub_22C90B32C();
}

void sub_22C36B588()
{
  v1 = v0[165];
  v2 = v0[164];
  v3 = v0[163];
  v4 = v0[160];
  v5 = v0[159];
  v6 = v0[156];
  v7 = v0[155];
  v8 = v0[154];
  v9 = v0[153];
  v11 = v0[150];
  v12 = v0[149];
  v13 = v0[147];
  v14 = v0[146];
  v15 = v0[145];
  v16 = v0[144];
  v10 = v0[143];
  v17 = v0[142];
}

void sub_22C36B634()
{
  v10 = v0[75];
  v11 = v0[74];
  v12 = v0[73];
  v13 = v0[72];
  v14 = v0[71];
  v15 = v0[70];
  v16 = v0[67];
  v17 = v0[66];
  v18 = v0[65];
  v19 = v0[64];
  v20 = v0[63];
  v21 = v0[62];
  v22 = v0[61];
  v23 = v0[60];
  v24 = v0[59];
  v25 = v0[58];
  v26 = v0[57];
  v27 = v0[56];
  v28 = v0[55];
  v29 = v0[52];
  v30 = v0[51];
  v31 = v0[50];
  v32 = v0[49];
  v2 = v0[47];
  *(v1 - 184) = v0[48];
  *(v1 - 176) = v2;
  v3 = v0[43];
  *(v1 - 168) = v0[44];
  *(v1 - 160) = v3;
  v4 = v0[41];
  *(v1 - 152) = v0[42];
  *(v1 - 144) = v4;
  v6 = v0[36];
  v5 = v0[37];
  *(v1 - 136) = v0[40];
  *(v1 - 128) = v5;
  v7 = v0[33];
  *(v1 - 120) = v6;
  *(v1 - 112) = v7;
  v8 = v0[30];
  v9 = v0[31];
}

unint64_t sub_22C36B6D8()
{
  v3 = *(v2 - 72);
  *(v3 + 16) = v0;
  result = v3 + ((*(*(v2 - 112) + 80) + 32) & ~*(*(v2 - 112) + 80)) + *(*(v2 - 112) + 72) * v1;
  v5 = *(v2 - 96);
  v6 = *(v2 - 88);
  v7 = *(v2 - 120);
  return result;
}

uint64_t sub_22C36B7B8()
{
  v4 = *v0;
  *v0 = 0x8000000000000000;

  return sub_22C36E2BC(v2, v1);
}

uint64_t sub_22C36B7E4@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(result + 16) = a2;
  *(result + 24) = v2;
  *(result + 32) = 2;
  return result;
}

uint64_t sub_22C36B80C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(v2 + 112) = *(a1 + a2);
}

uint64_t sub_22C36B8A8()
{
  v18 = v0[101];
  v19 = v0[100];
  v20 = v0[99];
  v21 = v0[98];
  v22 = v0[95];
  v23 = v0[94];
  v24 = v0[91];
  v25 = v0[90];
  v26 = v0[87];
  v27 = v0[84];
  v28 = v0[83];
  v29 = v0[82];
  v30 = v0[81];
  v31 = v0[80];
  v32 = v0[79];
  v33 = v0[78];
  v34 = v0[77];
  v35 = v0[76];
  v36 = v0[75];
  v37 = v0[74];
  v38 = v0[73];
  v39 = v0[70];
  v40 = v0[69];
  v41 = v0[68];
  v42 = v0[67];
  v43 = v0[66];
  v44 = v0[64];
  v45 = v0[63];
  v46 = v0[60];
  v47 = v0[57];
  v48 = v0[56];
  v49 = v0[53];
  v50 = v0[52];
  v3 = v0[50];
  *(v1 - 256) = v0[51];
  *(v1 - 248) = v3;
  v5 = v0[43];
  v4 = v0[44];
  *(v1 - 240) = v0[47];
  *(v1 - 232) = v4;
  v6 = v0[40];
  *(v1 - 224) = v5;
  *(v1 - 216) = v6;
  v7 = v0[34];
  *(v1 - 208) = v0[37];
  *(v1 - 200) = v7;
  v9 = v0[27];
  v8 = v0[28];
  *(v1 - 192) = v0[31];
  *(v1 - 184) = v8;
  v11 = v0[23];
  v10 = v0[24];
  *(v1 - 176) = v9;
  *(v1 - 168) = v10;
  v13 = v0[21];
  v12 = v0[22];
  *(v1 - 160) = v11;
  *(v1 - 152) = v12;
  v14 = v0[20];
  *(v1 - 144) = v13;
  *(v1 - 136) = v14;
  v15 = v0[16];
  *(v1 - 128) = v0[17];
  *(v1 - 120) = v15;
  v16 = v0[10];
  *(v1 - 112) = v0[13];
  *(v1 - 104) = v16;
}

uint64_t sub_22C36BA34()
{
  v1 = **(v0 - 200);
  result = *(v0 - 104);
  v3 = *(v0 - 144);
  return result;
}

uint64_t sub_22C36BAB8()
{
  v2 = (*(v0 + 80) + 32) & ~*(v0 + 80);

  return swift_allocObject();
}

void sub_22C36BAE0()
{

  JUMPOUT(0x2318B9880);
}

void sub_22C36BB14(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 2u);
}

uint64_t sub_22C36BB4C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return sub_22C3A5908(a3, a4);
}

uint64_t sub_22C36BB6C()
{

  return sub_22C90AE4C();
}

uint64_t sub_22C36BBD8()
{

  return sub_22C3F956C(v0, type metadata accessor for FullPlannerTokenGeneratorConstrainedDecodingInterface);
}

uint64_t sub_22C36BC30()
{
  v2 = *(v0 + 56);
  v4 = *(v0 + 48);

  return swift_slowAlloc();
}

uint64_t sub_22C36BC64()
{
  v2 = *(v0 - 88);

  return sub_22C90B36C();
}

uint64_t sub_22C36BCB0(uint64_t a1, uint64_t a2, ...)
{
  va_start(va, a2);

  return MEMORY[0x2821FC310](va, v2, v2, a1);
}

uint64_t sub_22C36BD04()
{

  return swift_beginAccess();
}

uint64_t sub_22C36BD3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return sub_22C36DD28(&a9, v9, v10);
}

uint64_t sub_22C36BD64()
{

  return sub_22C4D6B50(v0, type metadata accessor for FullPlannerGMSClientConfiguration);
}

uint64_t sub_22C36BD9C@<X0>(int a1@<W8>)
{
  *(v1 + 48) = a1;

  return sub_22C901EEC();
}

uint64_t (*sub_22C36BDBC(void *a1))@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  a1[2] = v1;
  a1[3] = v2;
  a1[4] = v3;
  return sub_22C4E717C;
}

void sub_22C36BDEC()
{

  sub_22C591324();
}

void sub_22C36BE40(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

void sub_22C36BE80()
{
  v2 = v0[16];
  v1 = v0[17];
  v3 = v0[15];
  v5 = v0[11];
  v4 = v0[12];
  v6 = v0[8];
}

size_t sub_22C36BF48(void *a1)
{
  result = j__malloc_size(a1);
  a1[2] = v1;
  a1[3] = 2 * ((result - 32) / v2);
  return result;
}

uint64_t sub_22C36BFA0(uint64_t a1)
{
  *(v1 + 216) = a1;
  *v2 = *(v1 + 144);
}

void sub_22C36BFC0()
{
  v2 = v0[37];
  v3 = v0[36];
  v4 = v0[33];
  v5 = v0[30];
  v6 = v0[29];
  v7 = v0[28];
  v8 = v0[25];
  v9 = v0[24];
  v10 = v0[23];
  v11 = v0[20];
  v12 = v0[17];
  v13 = v0[16];
  v1 = v0[13];
}

uint64_t sub_22C36C014(uint64_t result)
{
  v3 = result & ~(-1 << *(v1 + 32));
  v4 = (-1 << v3) & ~*(v2 + 8 * (v3 >> 6));
  return result;
}

uint64_t sub_22C36C080(uint64_t a1)
{

  return sub_22C370B74(a1, 1, v1);
}

uint64_t sub_22C36C098(void *a1)
{

  return sub_22C5F0048(a1, 15);
}

void sub_22C36C0C0()
{
  v2 = v0[56];
  *(v1 - 128) = v0[57];
  *(v1 - 120) = v2;
  v3 = v0[52];
  *(v1 - 112) = v0[55];
  *(v1 - 104) = v3;
  *(v1 - 96) = v0[49];
}

uint64_t sub_22C36C118()
{
  result = v0[70];
  v2 = v0[69];
  v3 = v0[66];
  v4 = v0[65];
  v5 = v0[63];
  v6 = v0[64];
  v7 = v0[62];
  v8 = v0[60];
  v9 = v0[56];
  v10 = v0[57];
  v11 = v0[54];
  v12 = v0[55];
  return result;
}

uint64_t sub_22C36C168@<X0>(uint64_t a1@<X8>)
{
  *(v3 - 256) = v1;
  *(v3 - 248) = a1;
  v5 = v2[48];
  *(v3 - 240) = v2[49];
  *(v3 - 232) = v5;
  v7 = v2[41];
  v6 = v2[42];
  *(v3 - 224) = v2[45];
  *(v3 - 216) = v6;
  v9 = v2[39];
  v8 = v2[40];
  *(v3 - 208) = v7;
  *(v3 - 200) = v8;
  v11 = v2[37];
  v10 = v2[38];
  *(v3 - 192) = v9;
  *(v3 - 184) = v10;
  v13 = v2[35];
  v12 = v2[36];
  *(v3 - 176) = v11;
  *(v3 - 168) = v12;
  v14 = v2[34];
  *(v3 - 160) = v13;
  *(v3 - 152) = v14;
  v15 = v2[28];
  *(v3 - 144) = v2[31];
  *(v3 - 136) = v15;
  v16 = v2[22];
  *(v3 - 128) = v2[25];
  *(v3 - 120) = v16;
  v17 = v2[16];
  *(v3 - 112) = v2[19];
  *(v3 - 104) = v17;
  *(v3 - 96) = v2[13];
}

void sub_22C36C1EC()
{

  sub_22C71D15C();
}

uint64_t sub_22C36C238()
{
  v2 = *(v0 + 8);
  result = *(v1 - 1064);
  v4 = *(v1 - 152);
  return result;
}

__n128 sub_22C36C270(__n128 *a1)
{
  result = v1[12];
  a1[1] = result;
  return result;
}

uint64_t sub_22C36C27C(uint64_t a1)
{

  return sub_22C75A6D4(a1, v1, type metadata accessor for JointResolution.DeviceContext);
}

uint64_t sub_22C36C2B8()
{
  result = *(v0 - 280);
  v2 = *(v0 - 272);
  return result;
}

void sub_22C36C30C()
{

  JUMPOUT(0x2318B9880);
}

void sub_22C36C334()
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
  v20 = v0[55];
  v21 = v0[52];
  v1 = v0[49];
  v22 = v0[51];
  v23 = v0[50];
}

uint64_t sub_22C36C3A4()
{
  v1 = **(v0 - 88);
  result = *(v0 - 104);
  v3 = *(v0 - 88);
  return result;
}

uint64_t sub_22C36C3C0()
{
  result = v0[131];
  v2 = v0[128];
  v3 = v0[127];
  v4 = v0[126];
  v5 = v0[125];
  v6 = v0[122];
  v7 = v0[121];
  v8 = v0[120];
  v9 = v0[119];
  v10 = v0[116];
  v11 = v0[115];
  v12 = v0[114];
  return result;
}

void sub_22C36C3F4()
{
  v1 = v0[66];
  v2 = v0[65];
  v3 = v0[63];
  v4 = v0[64];
  v5 = v0[62];
  v6 = v0[59];
  v7 = v0[60];
}

uint64_t sub_22C36C434()
{
  result = *(v0 - 256);
  v3 = *(v1 - 304);
  v4 = *(v1 - 352);
  return result;
}

uint64_t sub_22C36C494()
{
  v3 = *(v2 - 120) + 1;
  v4 = *v0;
  return v1;
}

void sub_22C36C4C8()
{
  v2 = *(v0 - 184);

  JUMPOUT(0x2318B9880);
}

uint64_t sub_22C36C4E8()
{

  return swift_beginAccess();
}

uint64_t sub_22C36C530(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v17 = v15[16];
  v16 = v15[17];
  v18 = v15[15];
  v19 = v15[13];
  v20 = (*(a15 + 80) + 32) & ~*(a15 + 80);
  v21 = *(a15 + 72);
  v22 = *(a15 + 16);
  return v15[20];
}

void sub_22C36C594()
{

  sub_22C590270();
}

uint64_t sub_22C36C5F4(uint64_t result)
{
  *(result + 8) = sub_22C8D222C;
  v2 = *(v1 + 648);
  v3 = *(v1 + 488);
  return result;
}

uint64_t ToolboxResources.__allocating_init(toolbox:)(uint64_t a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  v6 = OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime16ToolboxResources_toolbox;
  v7 = sub_22C908AEC();
  sub_22C36985C(v7);
  (*(v8 + 32))(v5 + v6, a1);
  return v5;
}

uint64_t FullPlannerService.init(toolboxResources:toolExecutionSession:identityChain:)(uint64_t a1, __int128 *a2, uint64_t a3)
{
  *(v3 + 16) = 0;
  *(v3 + 24) = 0u;
  *(v3 + 40) = 0u;
  *(v3 + 56) = 0;
  *(v3 + 64) = a1;
  sub_22C36C730(a2, v3 + 72);
  *(v3 + 112) = a3;
  return v3;
}

uint64_t sub_22C36C730(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t FullPlannerService.__allocating_init(toolboxResources:toolExecutionSession:identityChain:)(uint64_t a1, __int128 *a2, uint64_t a3)
{
  v6 = swift_allocObject();
  FullPlannerService.init(toolboxResources:toolExecutionSession:identityChain:)(a1, a2, a3);
  return v6;
}

uint64_t ToolboxResources.toolbox.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime16ToolboxResources_toolbox;
  v4 = sub_22C908AEC();
  v5 = sub_22C36985C(v4);
  v7 = *(v6 + 16);

  return v7(a1, v1 + v3, v5);
}

uint64_t type metadata accessor for ToolboxResources()
{
  result = qword_281434500;
  if (!qword_281434500)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22C36C8C0()
{
  v2 = *(v0 - 136);
  v3 = *(v0 - 128);
  v4 = *(v0 - 112);
}

uint64_t PlanOverridesService.init(toolbox:)()
{
  sub_22C3869F0();
  swift_defaultActor_initialize();
  *(v1 + 112) = MEMORY[0x277D84F98];
  *(v1 + 120) = 0;
  v2 = (v1 + OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime20PlanOverridesService_planOverridesStore);
  v2[1] = 0;
  v2[2] = 0;
  *v2 = 0;
  sub_22C90077C();
  sub_22C36A748();
  sub_22C36C640(v3, v4, v5, v6);
  v7 = (v1 + OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime20PlanOverridesService_assetVersion);
  *v7 = 4271950;
  v7[1] = 0xE300000000000000;
  v8 = OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime20PlanOverridesService_delayDuration;
  swift_getKeyPath();
  sub_22C901F3C();

  *(v1 + v8) = v14;
  v9 = OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime20PlanOverridesService_delayDurationVariation;
  swift_getKeyPath();
  sub_22C901F3C();

  *(v1 + v9) = v14;
  v10 = OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime20PlanOverridesService_toolbox;
  v11 = sub_22C908AEC();
  sub_22C36985C(v11);
  (*(v12 + 32))(v1 + v10, v0);
  return v1;
}

uint64_t sub_22C36CA0C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_22C901E2C();
  *a1 = result;
  return result;
}

uint64_t sub_22C36CA38@<X0>(uint64_t *a1@<X8>)
{
  result = sub_22C901E5C();
  *a1 = result;
  return result;
}

uint64_t sub_22C36CA70()
{

  return swift_beginAccess();
}

uint64_t sub_22C36CA94(uint64_t a1)
{

  return sub_22C4ED860(a1, v2, v1);
}

uint64_t sub_22C36CB04(uint64_t a1)
{

  return sub_22C36DD28(a1, v1, v2);
}

void sub_22C36CB64(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

void sub_22C36CB90()
{
  *(v3 - 272) = v0;
  *(v3 - 280) = v1;
  *(v3 - 288) = v2;
}

uint64_t sub_22C36CBAC()
{
  v3 = v0[40];
  v2 = v0[41];
  v4 = v0[39];
  v6 = v0[35];
  v5 = v0[36];
  v7 = v0[34];
  v9 = v0[30];
  v8 = v0[31];
}

uint64_t sub_22C36CBE0(id a1)
{

  return sub_22C8258C8(0, v1, a1);
}

uint64_t PlanOverridesService.__allocating_init(toolbox:)()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  sub_22C37BB14();
  PlanOverridesService.init(toolbox:)();
  return v0;
}

uint64_t sub_22C36CCB8()
{
  *(v3 - 112) = v2;
  v4 = *(v1 + 8);
  return v0;
}

double sub_22C36CCD8@<D0>(uint64_t a1@<X8>)
{
  *v1 = a1;
  result = 0.0;
  *(v1 + 8) = 0u;
  *(v1 + 24) = 0u;
  return result;
}

void sub_22C36CD54()
{
  v1 = v0[230];
  v2 = v0[225];
  v3 = v0[197];
}

uint64_t sub_22C36CD64()
{
  v2 = *(v0 + 16);
  v3 = *(v1 - 216);
  return *(v1 - 208);
}

void sub_22C36CDAC()
{
  v1 = v0[22];
  v2 = v0[19];
  v3 = v0[16];
}

uint64_t PlanResolverService.init<A, B>(toolboxResources:actionRequirements:toolExecutionSession:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void *a8@<X8>)
{
  *a8 = a1;
  a8[4] = a4;
  a8[5] = a6;
  v14 = sub_22C36D548(a8 + 1);
  v18 = *(a4 - 8);
  (*(v18 + 16))(v14, a2, a4);
  a8[9] = a5;
  a8[10] = a7;
  v15 = sub_22C36D548(a8 + 6);
  (*(*(a5 - 8) + 32))(v15, a3, a5);
  v16 = *(v18 + 8);

  return v16(a2, a4);
}

void *sub_22C36CECC(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v18 = a6;
  v19 = a7;
  v13 = sub_22C36D548(&v17);
  (*(*(a6 - 8) + 32))(v13, a4, a6);
  swift_defaultActor_initialize();
  bzero(a5 + 26, 0xB0uLL);
  v14 = OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime25ResponseGenerationService_otaPreferencesLock;
  v15 = sub_22C3A5908(&qword_27D9BB570, &qword_22C92D210);
  sub_22C36C640(a5 + v14, 1, 1, v15);
  a5[14] = a1;
  sub_22C36C730(a2, (a5 + 15));
  a5[20] = a3;
  sub_22C36C730(&v17, (a5 + 21));
  return a5;
}

uint64_t ResponseGenerationService.__allocating_init(toolboxResources:toolExecutionSession:identityChain:featureStoreService:)()
{
  sub_22C37DAA8();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  v4 = swift_allocObject();
  v5 = *(v0 + 32);
  sub_22C36D1E4(v0, *(v0 + 24));
  sub_22C8D51E8();
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20]();
  sub_22C369838();
  v9 = sub_22C8D51D0(v8);
  v10(v9);
  sub_22C8D5150();
  v11 = sub_22C37BB14();
  sub_22C36FF94(v11);
  return v4;
}

BOOL sub_22C36D08C(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t sub_22C36D0D4()
{

  return swift_task_alloc();
}

uint64_t sub_22C36D148()
{

  return swift_allocError();
}

uint64_t sub_22C36D190()
{
  v1[37] = v0;
  v3 = v1[32];
  v4 = v1[16];
  v5 = v1[9];

  return sub_22C900F8C();
}

uint64_t sub_22C36D1E4(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

uint64_t sub_22C36D240()
{

  return swift_slowAlloc();
}

uint64_t sub_22C36D2B4@<X0>(uint64_t a1@<X8>)
{
  sub_22C374168((a1 + 120), *(a1 + 144));

  return sub_22C90887C();
}

uint64_t sub_22C36D2F4(uint64_t result)
{
  *(v1 + 4) = result;
  *v2 = result;
  return result;
}

uint64_t sub_22C36D300@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(v4 + a2) |= v2;
  *(*(v3 + 48) + 8 * result) = v5;
  ++*(v3 + 16);
  v7 = *(v6 - 384);
  v8 = *(v6 - 368);
  v9 = *(v6 - 376);
  return result;
}

uint64_t sub_22C36D354()
{

  return sub_22C90B64C();
}

void sub_22C36D36C()
{
  v1 = v0[95];
  v2 = v0[94];
  v3 = v0[68];
  v4 = v0[67];
  v5 = v0[66];
}

uint64_t sub_22C36D3C0@<X0>(uint64_t a1@<X8>)
{
  *(v1 + 664) = a1 & 0xFFFFFFFFFFFFLL | 0x7AC4000000000000;
}

void sub_22C36D418(void *a1@<X0>, const char *a2@<X3>, os_log_type_t a3@<W8>)
{

  _os_log_impl(a1, v3, a3, a2, v4, 0xCu);
}

uint64_t sub_22C36D438()
{
  v2 = *(v0 - 1328);
}

void sub_22C36D468()
{

  sub_22C8892F4();
}

uint64_t QueryDecorationService.init(clientApplicationIdentifier:toolboxResources:toolExecutionSession:contextRetrieval:)()
{
  sub_22C38ABF4();
  swift_defaultActor_initialize();
  *(v1 + 112) = 0;
  *(v1 + 120) = v5;
  *(v1 + 128) = v4;
  *(v1 + 136) = v3;
  v6 = *(v2 + 16);
  *(v1 + 144) = *v2;
  *(v1 + 160) = v6;
  *(v1 + 176) = *(v2 + 32);
  sub_22C36C730(v0, v1 + 184);
  return v1;
}

uint64_t QueryDecorationService.__allocating_init(clientApplicationIdentifier:toolboxResources:toolExecutionSession:contextRetrieval:)()
{
  sub_22C38ABF4();
  v0 = swift_allocObject();
  QueryDecorationService.init(clientApplicationIdentifier:toolboxResources:toolExecutionSession:contextRetrieval:)();
  return v0;
}

uint64_t *sub_22C36D548(uint64_t *a1)
{
  v1 = a1;
  if ((*(*(a1[3] - 8) + 82) & 2) != 0)
  {
    *a1 = swift_allocBox();
    return v2;
  }

  return v1;
}

void sub_22C36D614()
{
  v1 = v0[34];
  v2 = v0[35];
  v4 = v0[28];
  v3 = v0[29];
  v6 = v0[25];
  v5 = v0[26];
  v7 = v0[22];
}

uint64_t sub_22C36D628(uint64_t a1)
{
  *(v3 + 40) = a1;
  sub_22C36C640(v2, 1, 1, a1);
  *(v3 + 88) = *(v1 + 20);

  return sub_22C90068C();
}

void sub_22C36D69C()
{

  JUMPOUT(0x2318B9880);
}

uint64_t sub_22C36D704()
{

  return sub_22C90639C();
}

uint64_t sub_22C36D798(uint64_t a1)
{

  return sub_22C36DD28(a1, v1, v2);
}

uint64_t sub_22C36D7B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __int128 a10)
{

  return sub_22C36C730(&a10, v10);
}

void sub_22C36D824()
{
  v1 = *(v0 - 224);
  v2 = *(v0 - 312);
  v3 = *(v0 - 328);
}

void sub_22C36D84C(uint64_t a1@<X8>)
{
  *(a1 - 32) = v1;
  *(a1 - 24) = v2;
  *(a1 - 16) = *(v3 - 280);
}

void *sub_22C36D8D4@<X0>(void *a1@<X8>)
{
  result = a1;
  *a1 = 0;
  a1[1] = 0xE000000000000000;
  return result;
}

uint64_t sub_22C36D8E8()
{
  v3 = *(v1 + 32);
  result = v0;
  *(v2 - 160) = v0;
  return result;
}

uint64_t sub_22C36D928()
{

  return sub_22C90AEFC();
}

void sub_22C36D95C()
{
  v4 = v0[71];
  v5 = v0[70];
  v6 = v0[69];
  v7 = v0[66];
  v8 = v0[63];
  v9 = v0[61];
  v1 = v0[58];
  v10 = v0[60];
  v11 = v0[59];
  v3 = v0[56];
  v2 = v0[57];
}

uint64_t sub_22C36D9A4@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 72);
  v4 = *(v1 + 56);
  v5 = *(a1 + 96);
  return v2;
}

void sub_22C36D9DC()
{
  v3 = *(v1 + 16);
  *(v2 - 160) = v0;
  *(v2 - 152) = v0 + 32;
}

uint64_t sub_22C36D9F4()
{
  v1 = *(*(v0 - 576) + 8);
  result = *(v0 - 584);
  v3 = *(v0 - 568);
  return result;
}

void sub_22C36DA20()
{

  JUMPOUT(0x2318B7850);
}

uint64_t sub_22C36DA48()
{
  result = v0;
  v3 = *(v1 - 216);
  return result;
}

void sub_22C36DA64(uint64_t a1@<X8>)
{
  v4 = v2[50];
  v5 = v2[51];
  *(v3 - 256) = v1;
  *(v3 - 248) = v5;
  *(v3 - 240) = v4;
  v6 = v2[44];
  *(v3 - 232) = v2[47];
  *(v3 - 224) = v6;
  v7 = v2[38];
  *(v3 - 216) = v2[41];
  *(v3 - 208) = v7;
  v8 = v2[31];
  v9 = v2[32];
  *(v3 - 200) = v2[35];
  *(v3 - 192) = v9;
  *(v3 - 184) = v8;
  v10 = v2[25];
  *(v3 - 176) = v2[28];
  *(v3 - 168) = v10;
  v11 = v2[19];
  *(v3 - 160) = v2[22];
  *(v3 - 152) = v11;
  v12 = v2[15];
  *(v3 - 144) = v2[16];
  *(v3 - 136) = v12;
  v13 = v2[11];
  *(v3 - 128) = v2[12];
  *(v3 - 120) = v13;
  *(v3 - 112) = v2[8];
  v14 = *(a1 + 8);
}

void sub_22C36DAD0()
{
  *(v2 - 136) = v1;
  *(v2 - 128) = v0;
  v3 = *(v2 - 72);
}

uint64_t sub_22C36DAF0()
{

  return sub_22C90B4FC();
}

BOOL sub_22C36DB24(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

void sub_22C36DB40(uint64_t a1@<X8>)
{

  sub_22C3B60C0(0, a1 + 1, 1);
}

__n128 sub_22C36DB60()
{
  v1 = *(v0 - 176);
  v2 = *(v0 - 168);
  v3 = *(v0 - 160);
  v5 = *(v0 - 208);
  result = *(v0 - 192);
  *(v0 - 144) = *(v0 - 224);
  *(v0 - 128) = v5;
  *(v0 - 112) = result;
  *(v0 - 96) = v1;
  return result;
}

uint64_t sub_22C36DB90()
{

  return sub_22C90A0BC();
}

uint64_t sub_22C36DBC8()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 120);
  v4 = *(v0 + 80);
  v3 = *(v0 + 88);
  v6 = *(v0 + 64);
  v5 = *(v0 + 72);
  v7 = *(v0 + 48);
  return *(v0 + 16) + *(v0 + 176);
}

BOOL sub_22C36DBFC(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t sub_22C36DC18@<X0>(unint64_t a1@<X8>)
{
  v3[60] = a1;
  v3[61] = v1;
  v6 = v3[42];
  v5 = v3[43];
  v7 = v3[41];
  v8 = v3[29];
  v9 = v3[30];
  v10 = v3[8];
  v11 = v3[9];
  v12 = v3[6];
  *(v4 - 88) = v3[7];
  v13 = *(v2 + 56);
  v14 = (*(v2 + 48) + 16 * (__clz(__rbit64(a1)) | (v1 << 6)));
  v16 = *v14;
  v15 = v14[1];
  return v11 + *(v12 + 48);
}

uint64_t sub_22C36DC60()
{
  result = v0;
  v3 = *(v1 - 256);
  v4 = *(v1 - 264);
  return result;
}

uint64_t sub_22C36DC78()
{
  v3 = v0[33];
  v2 = v0[34];
  v5 = v0[29];
  v4 = v0[30];
  v6 = v0[26];
  v7 = v0[23];
  v8 = v0[20];
  v11 = v0[19];
  v12 = v0[18];
  v9 = v0[15];
  v13 = v0[12];

  return swift_willThrow();
}

void *FullPlannerService.deinit()
{
  sub_22C36DD28((v0 + 3), &qword_27D9BE070, &qword_22C91CE48);
  v1 = v0[8];

  sub_22C36FF94(v0 + 9);
  v2 = v0[14];

  return v0;
}

uint64_t sub_22C36DD28(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_22C3A5908(a2, a3);
  sub_22C36985C(v4);
  (*(v5 + 8))(a1);
  return a1;
}

uint64_t sub_22C36DD80(uint64_t a1, uint64_t a2)
{
  v3 = sub_22C70C980(a1, a2);
  v5 = sub_22C3A5908(v3, v4);
  sub_22C36985C(v5);
  (*(v6 + 8))(v2);
  return v2;
}

uint64_t *sub_22C36DDD4()
{
  sub_22C376B84((v0 + 2), &qword_27D9C0990, &qword_22C929780);
  sub_22C36FF94(v0 + 7);
  sub_22C36FF94(v0 + 12);
  v1 = v0[17];

  v2 = v0[18];

  v3 = v0[19];

  v4 = v0[20];

  sub_22C36FF94(v0 + 21);
  sub_22C36FF94(v0 + 26);
  v5 = v0[32];

  v6 = OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime28QueryDecorationServiceCaller_clock;
  v7 = sub_22C90B10C();
  sub_22C36BBA8(v7);
  (*(v8 + 8))(v0 + v6);
  return v0;
}

uint64_t sub_22C36DE90(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
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

uint64_t type metadata accessor for FullPlannerHydrationArbiter()
{
  result = qword_281435138;
  if (!qword_281435138)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t FullPlannerService.__deallocating_deinit()
{
  FullPlannerService.deinit();

  return swift_deallocClassInstance();
}

uint64_t PlanOverridesService.__deallocating_deinit()
{
  PlanOverridesService.deinit();

  return MEMORY[0x282200960](v0);
}

uint64_t PlanOverridesService.deinit()
{
  v1 = *(v0 + 112);

  v2 = OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime20PlanOverridesService_toolbox;
  v3 = sub_22C908AEC();
  sub_22C36985C(v3);
  (*(v4 + 8))(v0 + v2);
  sub_22C36E030(*(v0 + OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime20PlanOverridesService_planOverridesStore), *(v0 + OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime20PlanOverridesService_planOverridesStore + 8), *(v0 + OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime20PlanOverridesService_planOverridesStore + 16));
  sub_22C36DD28(v0 + OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime20PlanOverridesService_userLocale, &qword_27D9BD820, &unk_22C9195C0);
  v5 = *(v0 + OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime20PlanOverridesService_assetVersion + 8);

  swift_defaultActor_destroy();
  return v0;
}

void sub_22C36E030(void *a1, void *a2, void *a3)
{
  if (a1)
  {
  }
}

uint64_t QueryDecorationService.__deallocating_deinit()
{
  QueryDecorationService.deinit();

  return MEMORY[0x282200960](v0);
}

void *QueryDecorationService.deinit()
{
  v1 = v0[14];

  v2 = v0[16];

  v3 = v0[17];

  sub_22C36DD28((v0 + 18), &qword_27D9C06A0, &qword_22C929950);
  sub_22C36FF94(v0 + 23);
  swift_defaultActor_destroy();
  return v0;
}

uint64_t *QueryDecorator.deinit()
{
  v1 = v0[2];

  sub_22C36FF94(v0 + 3);
  sub_22C36FF94(v0 + 8);
  sub_22C36FF94(v0 + 13);
  v2 = v0[19];

  v3 = v0[20];

  sub_22C36DD28((v0 + 21), &qword_27D9C01C8, &qword_22C9298B0);
  v4 = v0[26];

  sub_22C36FF94(v0 + 27);
  return v0;
}

uint64_t QueryDecorator.__deallocating_deinit()
{
  QueryDecorator.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_22C36E1A8()
{
  sub_22C36DDD4();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_22C36E200()
{
  v1 = sub_22C90A0EC();
  v2 = [v0 factorLevelsWithNamespaceName_];

  sub_22C36E278(0, &qword_28142F9B8, 0x277D73B08);
  v3 = sub_22C90A5EC();

  return v3;
}

uint64_t sub_22C36E278(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_22C36E2E8()
{
  v1 = v0[7];
  v2 = v0[8];
  sub_22C374168(v0 + 4, v1);
  v3 = (*(v2 + 8))(v0[2], v0[3], v1, v2);
  sub_22C36E278(0, &qword_28142F968, 0x277D73B18);
  v4 = sub_22C909F0C();
  v5 = sub_22C36E2B8(v3);
  v6 = 0;
LABEL_2:
  for (i = v6; ; ++i)
  {
    if (v5 == i)
    {

      return v4;
    }

    if ((v3 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x2318B8460](i, v3);
    }

    else
    {
      if (i >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_24;
      }

      v8 = *(v3 + 8 * i + 32);
    }

    v9 = v8;
    v6 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    v10 = [v8 factor];
    if (!v10)
    {
      goto LABEL_27;
    }

    v11 = sub_22C36EB80(v10);
    if (v12)
    {
      v13 = v11;
      v14 = v12;
      v15 = [v9 level];
      if (v15)
      {
        v29 = v15;
        swift_isUniquelyReferenced_nonNull_native();
        v27 = sub_22C36E2BC(v13, v14);
        if (__OFADD__(v4[2], (v16 & 1) == 0))
        {
          goto LABEL_25;
        }

        v28 = v16;
        sub_22C3A5908(&qword_27D9C1660, &unk_22C92DF58);
        if (sub_22C90B15C())
        {
          v17 = sub_22C36E2BC(v13, v14);
          if ((v28 & 1) != (v18 & 1))
          {
            goto LABEL_28;
          }

          v19 = v17;
          if ((v28 & 1) == 0)
          {
LABEL_18:
            v4[(v19 >> 6) + 8] |= 1 << v19;
            v20 = (v4[6] + 16 * v19);
            *v20 = v13;
            v20[1] = v14;
            *(v4[7] + 8 * v19) = v29;

            v21 = v4[2];
            v22 = __OFADD__(v21, 1);
            v23 = v21 + 1;
            if (!v22)
            {
              v4[2] = v23;
              goto LABEL_2;
            }

            goto LABEL_26;
          }
        }

        else
        {
          v19 = v27;
          if ((v28 & 1) == 0)
          {
            goto LABEL_18;
          }
        }

        v24 = v4[7];
        v25 = *(v24 + 8 * v19);
        *(v24 + 8 * v19) = v29;

        goto LABEL_2;
      }
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  result = sub_22C90B54C();
  __break(1u);
  return result;
}

uint64_t sub_22C36E5AC(uint64_t a1, uint64_t a2, void (*a3)(_BYTE *, uint64_t, uint64_t), uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  sub_22C63443C();
  a3(v10, a1, a2);
  v7 = sub_22C90B66C();

  return a4(a1, a2, v7);
}

uint64_t sub_22C36E65C(char a1)
{
  v2 = v1;
  sub_22C36E278(0, &qword_28142F968, 0x277D73B18);
  *(v2 + 72) = sub_22C909F0C();
  v4 = (v2 + 72);
  v5 = "INTELLIGENCE_FLOW_QUERY_DECORATOR";
  if ((a1 & 1) == 0)
  {
    v5 = "INTELLIGENCE_FLOW_PLAN_RESOLUTION";
  }

  *(v2 + 80) = xmmword_22C9114A0;
  *(v2 + 96) = 0u;
  *(v2 + 112) = 0u;
  *(v2 + 128) = 0u;
  *(v2 + 16) = 0xD000000000000021;
  *(v2 + 24) = (v5 - 32) | 0x8000000000000000;
  v6 = [objc_opt_self() clientWithIdentifier_];
  v7 = sub_22C36E278(0, &qword_28142F960, 0x277D73660);
  *(v2 + 56) = v7;
  *(v2 + 64) = &off_283FC3D68;
  *(v2 + 32) = v6;
  v8 = *sub_22C374168((v2 + 32), v7);
  sub_22C374134();
  v9 = sub_22C36E2E8();
  swift_beginAccess();
  v10 = *v4;
  *v4 = v9;

  sub_22C36E7C4(v9);

  return v2;
}

uint64_t sub_22C36E7C4(uint64_t a1)
{
  v3 = sub_22C9063DC();
  v34 = *(v3 - 8);
  v35 = v3;
  v4 = *(v34 + 64);
  MEMORY[0x28223BE20]();
  v33 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = 0;
  v39 = 0xE000000000000000;
  sub_22C90AF5C();
  MEMORY[0x2318B7850](0xD00000000000002BLL, 0x800000022C93A3D0);
  MEMORY[0x2318B7850](*(v1 + 16), *(v1 + 24));
  MEMORY[0x2318B7850](10272, 0xE200000000000000);
  v36 = *(a1 + 16);
  v6 = sub_22C90B47C();
  MEMORY[0x2318B7850](v6);

  MEMORY[0x2318B7850](670249, 0xE300000000000000);
  v7 = 1 << *(a1 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a1 + 64);
  v10 = (v7 + 63) >> 6;

  v12 = 0;
  if (v9)
  {
    while (1)
    {
      v13 = v12;
LABEL_9:
      v14 = __clz(__rbit64(v9)) | (v13 << 6);
      v15 = (*(a1 + 48) + 16 * v14);
      v16 = *v15;
      v17 = v15[1];
      v18 = *(*(a1 + 56) + 8 * v14);
      v9 &= v9 - 1;
      v36 = 34;
      v37 = 0xE100000000000000;

      v19 = v18;
      MEMORY[0x2318B7850](v16, v17);

      MEMORY[0x2318B7850](2112034, 0xE300000000000000);
      v20 = [v19 description];
      v21 = sub_22C90A11C();
      v23 = v22;

      MEMORY[0x2318B7850](v21, v23);

      MEMORY[0x2318B7850](2570, 0xE200000000000000);
      MEMORY[0x2318B7850](v36, v37);

      if (!v9)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v13 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      __break(1u);
      return result;
    }

    if (v13 >= v10)
    {
      break;
    }

    v9 = *(a1 + 64 + 8 * v13);
    ++v12;
    if (v9)
    {
      v12 = v13;
      goto LABEL_9;
    }
  }

  v24 = v33;
  sub_22C9040BC();
  v26 = v38;
  v25 = v39;

  v27 = sub_22C9063CC();
  v28 = sub_22C90AACC();

  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v36 = v30;
    *v29 = 136315138;
    v31 = sub_22C36F9F4(v26, v25, &v36);

    *(v29 + 4) = v31;
    _os_log_impl(&dword_22C366000, v27, v28, "%s", v29, 0xCu);
    sub_22C36FF94(v30);
    MEMORY[0x2318B9880](v30, -1, -1);
    MEMORY[0x2318B9880](v29, -1, -1);
  }

  else
  {
  }

  return (*(v34 + 8))(v24, v35);
}

uint64_t sub_22C36EB80(void *a1)
{
  v2 = [a1 name];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_22C90A11C();

  return v3;
}

void sub_22C36ECEC()
{
  v2 = v1[62];
  v3 = v1[34];
  v4 = v1[28];
  sub_22C374168(v1 + 24, v0);

  JUMPOUT(0x2318B4EB0);
}

uint64_t sub_22C36ED28(uint64_t result)
{
  *(result + 16) = 0;
  *(result + 24) = 0xE000000000000000;
  v2 = *(v1 + 24);
  return result;
}

uint64_t sub_22C36ED74()
{

  return sub_22C909F7C();
}

__n128 sub_22C36EDDC(__n128 *a1)
{
  result = *(v1 - 176);
  a1[1] = result;
  return result;
}

void sub_22C36EDE8()
{

  JUMPOUT(0x2318B8460);
}

void sub_22C36EE18()
{
  v2 = *(v1 - 536);
  if (*(v0 + *(*(v1 - 464) + 20)) != 6)
  {
    v3 = *(v0 + *(*(v1 - 464) + 20));
  }
}

uint64_t sub_22C36EE98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t *a11)
{
  result = v11[19];
  v13 = v11[20];
  v14 = v11[17];
  v15 = *a11;
  return result;
}

unint64_t sub_22C36EF04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (sub_22C90B4FC() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

void sub_22C36EFB8()
{
  sub_22C36BA7C();
  v1 = v0;
  v75 = v2;
  v4 = v3;
  v72 = v5;
  v77 = v6;
  v8 = v7;
  v10 = v9;
  v11 = sub_22C9063DC();
  v12 = sub_22C369824(v11);
  v78 = v13;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v12);
  sub_22C369ABC();
  v18 = v16 - v17;
  v20 = MEMORY[0x28223BE20](v19);
  v70 = (&v66 - v21);
  MEMORY[0x28223BE20](v20);
  v23 = &v66 - v22;
  v91 = &type metadata for QueryDecorationLoggerBuilder;
  v92 = &protocol witness table for QueryDecorationLoggerBuilder;
  DecorationSignposter = type metadata accessor for QueryDecorationSignposter(0);
  v89 = &off_283FC1370;
  *&v87 = v4;
  type metadata accessor for QueryDecorationContextRegistry();
  v24 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v24 + 112) = MEMORY[0x277D84F90];
  v1[26] = v24;
  type metadata accessor for TrialManager();
  swift_allocObject();
  v25 = sub_22C36E65C(1);
  v1[30] = &type metadata for QueryDecorationFeatureControl;
  v1[31] = &off_283FC14D0;
  v74 = v1;
  v1[27] = v25;
  sub_22C90400C();

  v26 = sub_22C9063CC();
  v27 = sub_22C90AABC();

  v28 = os_log_type_enabled(v26, v27);
  v76 = v8;
  v71 = v10;
  v73 = v11;
  v69 = v18;
  if (v28)
  {
    v29 = swift_slowAlloc();
    *&v84 = swift_slowAlloc();
    *v29 = 136315394;
    *(v29 + 4) = sub_22C37BCF8("igenceflow.iftool");
    *(v29 + 12) = 2080;
    v30 = v8 == 0;
    v31 = v8;
    if (v8)
    {
      v32 = v10;
    }

    else
    {
      v32 = 0x3E6C696E3CLL;
    }

    if (v30)
    {
      v33 = 0xE500000000000000;
    }

    else
    {
      v33 = v31;
    }

    v34 = sub_22C36F9F4(v32, v33, &v84);

    *(v29 + 14) = v34;
    sub_22C3868B4(&dword_22C366000, v35, v36, "%s QueryDecorator initializer (clientApplicationIdentifier: %s)");
    swift_arrayDestroy();
    v11 = v73;
    sub_22C3699EC();
    sub_22C3699EC();
  }

  (*(v78 + 8))(v23, v11);
  if (qword_281431278 != -1)
  {
    swift_once();
  }

  v37 = sub_22C36FAB8();
  DecorationCache = type metadata accessor for QueryDecorationCache(0);
  v39 = v74;
  v74[21] = v37;
  *(v39 + 192) = DecorationCache;
  *(v39 + 200) = &off_283FC17B8;
  v78 = sub_22C379D54();

  sub_22C378AB0(v75, &v84);
  v40 = type metadata accessor for ContextRetrievalService();
  v41 = swift_allocObject();
  swift_defaultActor_initialize();
  sub_22C36C730(&v84, v41 + 112);
  v85 = v40;
  v86 = &off_283FC1488;
  *&v84 = v41;
  type metadata accessor for ToolContextRetrievalService();
  v42 = swift_allocObject();
  v43 = sub_22C36D1E4(&v84, v40);
  v44 = *(v40 - 8);
  v45 = *(v44 + 64);
  MEMORY[0x28223BE20](v43);
  v73 = (v45 + 15) & 0xFFFFFFFFFFFFFFF0;
  v46 = (&v66 - v73);
  v70 = *(v44 + 16);
  v70(&v66 - v73);
  v47 = *v46;
  v69 = v42;
  v42[5] = v40;
  v42[6] = &off_283FC1488;
  v42[2] = v47;

  sub_22C36FF94(&v84);
  v48 = v74;
  sub_22C3E8FB4((v74 + 21), &v84, &qword_27D9C01C8, &qword_22C9298B0);
  type metadata accessor for OnScreenContentRetrievalService();
  memset(v82, 0, sizeof(v82));
  v83 = 0;
  v49 = swift_allocObject();
  v50 = sub_22C9043BC();
  sub_22C3856A0(v50);

  v51 = v76;

  v68 = v41;

  v52 = sub_22C9043AC();
  v49[5] = v50;
  v49[6] = &protocol witness table for ContextRetrieval;
  v49[2] = v52;
  v81 = 0;
  memset(v80, 0, sizeof(v80));
  v79[3] = v40;
  v79[4] = &off_283FC1488;
  v79[0] = v41;
  DecorationServiceCaller = type metadata accessor for QueryDecorationServiceCaller();
  v54 = sub_22C3856A0(DecorationServiceCaller);
  v55 = sub_22C36D1E4(v79, v40);
  v67 = &v66;
  MEMORY[0x28223BE20](v55);
  v56 = (&v66 - v73);
  v70(&v66 - v73);
  v57 = *v56;
  v58 = v69;

  v59 = v71;
  v60 = v51;
  v61 = v77;
  sub_22C378B10(v71, v60, v77, &v84, v57, v82, v49, v80, v58, v78, v54, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76);
  v63 = v62;
  sub_22C36FF94(v79);
  v85 = DecorationServiceCaller;
  v86 = &off_283FC1C08;

  *&v84 = v63;
  sub_22C36FF94(v75);
  sub_22C36C730(&v84, (v48 + 3));
  sub_22C36C730(&v90, (v48 + 8));
  sub_22C36C730(&v87, (v48 + 13));
  v48[2] = v72;
  v64 = v76;
  v48[18] = v59;
  v48[19] = v64;
  v48[20] = v61;
  sub_22C36CC48();
}

unint64_t sub_22C36F898(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v11 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v11)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v11) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_22C380A10(a5, a6);
    *a1 = v9;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    result = sub_22C90AFCC();
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_22C36F998(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_22C36F9F4(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_22C36F898(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (v6)
  {
    v8 = v6;

    ObjectType = swift_getObjectType();
    v11[0] = v8;
  }

  else
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
  }

  v9 = *a3;
  if (*a3)
  {
    sub_22C36F998(v11, *a3);
    *a3 = v9 + 32;
  }

  sub_22C36FF94(v11);
  return v7;
}

uint64_t sub_22C36FB44()
{

  return swift_slowAlloc();
}

uint64_t sub_22C36FB5C@<X0>(int *a1@<X8>)
{
  v2 = a1[1];
  v4 = a1 + *a1;

  return swift_task_alloc();
}

uint64_t sub_22C36FB7C(uint64_t a1, uint64_t a2)
{
  *(v5 - 160) = v3 + 1;

  return sub_22C36C640(v4, a2, 1, v2);
}

BOOL sub_22C36FBB4(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t sub_22C36FBE4()
{

  return swift_allocError();
}

void sub_22C36FC14()
{

  sub_22C591324();
}

void sub_22C36FC38()
{
  v2 = *(v0 + 16);

  JUMPOUT(0x2318B8B10);
}

uint64_t sub_22C36FC80()
{

  return sub_22C90B41C();
}

uint64_t sub_22C36FCE8@<X0>(uint64_t a1@<X8>)
{

  return sub_22C36F9F4(0xD000000000000019, a1 | 0x8000000000000000, (v1 - 128));
}

void sub_22C36FD08()
{
  v1 = *(v0 - 344);
  v2 = *(v0 - 456);
  v3 = *(v0 - 368);
  v4 = *(v0 - 352);
}

void sub_22C36FD2C(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[2];
  v5 = a2[3];
}

float sub_22C36FDAC@<S0>(uint64_t a1@<X8>)
{
  v2 = v1[63];
  v4 = v1[48];
  v3 = v1[49];
  v5 = v1[46];
  return *(a1 + 56);
}

uint64_t sub_22C36FDF8()
{
  v1 = *(*(v0 - 304) + 104);
  result = *(v0 - 312);
  v3 = *(v0 - 296);
  return result;
}

uint64_t sub_22C36FE1C(uint64_t a1)
{
  *(v1 + 40) = a1;

  return sub_22C90ABEC();
}

uint64_t sub_22C36FE4C()
{
  v5 = v1[43];
  v4 = v1[44];
  *(v2 - 176) = v0;
  *(v2 - 168) = v4;
  v7 = v1[41];
  v6 = v1[42];
  *(v2 - 160) = v5;
  *(v2 - 152) = v6;
  v8 = v1[40];
  *(v2 - 144) = v7;
  *(v2 - 136) = v8;
  v9 = v1[36];
  *(v2 - 128) = v1[37];
  *(v2 - 120) = v9;
  v10 = v1[30];
  v11 = v1[31];
  *(v2 - 112) = v1[33];
  *(v2 - 104) = v11;
  *(v2 - 96) = v10;
}

void sub_22C36FEC0()
{
  v2 = *(v0 - 112);
  *(v0 - 120) = *(v0 - 120);
  *(v0 - 112) = v2;

  JUMPOUT(0x2318B7850);
}

void sub_22C36FEF0(uint64_t a1@<X8>)
{
  v3 = v1[12];
  v4 = v1[11];
  v5 = v1[8];
  v2 = *(a1 + 8);
}

uint64_t sub_22C36FF20()
{
  v2 = *(v0 - 264);

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t sub_22C36FF50@<X0>(char a1@<W8>)
{
  *(v1 - 128) = a1;
  v3 = *(v1 - 184);

  return sub_22C90B26C();
}

uint64_t sub_22C36FF80()
{
  result = *(v0 - 256);
  v3 = *(v1 - 256);
  return result;
}

uint64_t sub_22C36FF94(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

BOOL sub_22C370048(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t sub_22C370060()
{

  return swift_slowAlloc();
}

uint64_t sub_22C3700B4()
{

  return swift_allocError();
}

uint64_t sub_22C37012C()
{
  result = v0 + 16;
  v2 = *(v0 + 16);
  return result;
}

uint64_t sub_22C370148(uint64_t a1)
{

  return sub_22C472480(a1, v2, v1);
}

uint64_t sub_22C37019C()
{
  result = v0[86];
  v2 = v0[83];
  v3 = v0[82];
  v4 = v0[81];
  v5 = v0[79];
  v6 = v0[78];
  v7 = v0[77];
  v8 = v0[76];
  v9 = v0[75];
  v10 = v0[72];
  return result;
}

uint64_t sub_22C3701C8(uint64_t result)
{
  *(result + 16) = 4;
  *(result + 24) = 1;
  return result;
}

BOOL sub_22C37026C(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t sub_22C370288()
{
  result = v0;
  v3 = *(v1 - 160);
  v4 = *(v1 - 112);
  v5 = *(v1 - 128);
  return result;
}

uint64_t sub_22C3702BC@<X0>(uint64_t a1@<X8>)
{
  v4 = *(v2 + 536);
  v5 = v1 + ((*(*(v2 + 544) + 80) + 32) & ~*(*(v2 + 544) + 80)) + *(*(v2 + 544) + 72) * a1;

  return swift_arrayInitWithCopy();
}

uint64_t sub_22C370304@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = a2 + *(v2 + 72) * result;
  v4 = *(v2 + 16);
  return result;
}

uint64_t sub_22C370314()
{
  v1 = **(v0 - 664);
  result = *(v0 - 496);
  v3 = *(v0 - 344);
  return result;
}

uint64_t sub_22C37034C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  v19 = (*(a17 + 56) + 16 * v17);
  v20 = v19[1];
  *v19 = a14;
  v19[1] = a15;
}

unint64_t sub_22C370374@<X0>(uint64_t a1@<X8>)
{
  v3 = *(a1 - 256);
  result = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v2;
  v5 = *(v3 + 32);
  return result;
}

uint64_t sub_22C3703C0()
{
  v1 = *(v0 - 104);
  v2 = *(v0 - 96);
  sub_22C374168((v0 - 128), v1);
  v3 = *(v2 + 8);
  return v1;
}

void sub_22C370424()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
}

uint64_t sub_22C370430()
{
  *(v2 + ((v1 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v1;
  result = *(v0 + 48) + v1 * *(v3 - 136);
  v6 = *(v3 - 112);
  v5 = *(v3 - 104);
  v7 = *(v3 - 152);
  return result;
}

uint64_t sub_22C370468()
{
  v1 = v0[93];
  v2 = v0[92];
  v3 = v0[90];
  v4 = v0[82];
  result = v0[55];
  v6 = v0[52];
  v7 = *(v0[53] + 8);
  return result;
}

uint64_t sub_22C3704D0()
{

  return swift_arrayInitWithCopy();
}

void sub_22C370510()
{

  JUMPOUT(0x2318B9880);
}

double sub_22C37055C()
{
  v3 = (v2 + v0);
  v4 = *v3;
  v5 = *(v3 + 1);
  v6 = *(v3 + 2);
  result = v3[3];
  v8 = *(v2 + v1);
  return result;
}

__n128 sub_22C370574()
{
  v1 = *(v0 - 136);
  *(v0 - 224) = *(v0 - 152);
  *(v0 - 208) = v1;
  result = *(v0 - 120);
  v3 = *(v0 - 104);
  *(v0 - 192) = result;
  *(v0 - 176) = v3;
  v4 = *(v0 - 184);
  return result;
}

void sub_22C370594()
{

  JUMPOUT(0x2318B7850);
}

void sub_22C370600()
{

  sub_22C57ADA4();
}

uint64_t sub_22C370620()
{

  return swift_allocError();
}

__n128 sub_22C370678()
{
  v2 = *v0;
  v3 = v0[1];
  return *(v0 + 25);
}

uint64_t sub_22C37068C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return sub_22C379DF8(v9 + v10, &a9, a3, a4);
}

void sub_22C3706A4()
{
  v1 = v0[72];
  v2 = v0[70];
  v3 = v0[69];
}

uint64_t sub_22C370704()
{
}

void sub_22C370730()
{
  *(v1 + 16) = v2;
  *(v1 + 8 * v0 + 32) = v3;
  v4 = *(v1 + 24);
}

uint64_t sub_22C370744(uint64_t a1)
{

  return sub_22C370B74(a1, 1, v1);
}

uint64_t sub_22C3707E8()
{
  result = *(v0 - 320);
  v2 = *(v0 - 312);
  v3 = *(v0 - 384);
  v4 = *(v0 - 400);
  return result;
}

uint64_t sub_22C370828()
{
  v3 = *(v1 + 104);
  *(v2 - 112) = v1 + 104;
  result = v0;
  v5 = *(v2 - 104);
  return result;
}

void sub_22C370854()
{
  if (*(*v0 + 24) > v1)
  {
    v2 = *(*v0 + 24);
  }
}

void sub_22C370868()
{
  *(v2 - 96) = v1 + 56;
  v3 = *(v2 - 120);
  v4 = *(v3 + 80);
  *(v2 - 144) = v0;
  *(v2 - 136) = v0 + ((v4 + 32) & ~v4);
  *(v2 - 104) = v3 + 16;
  *(v2 - 152) = v3 + 32;
}

uint64_t sub_22C370944()
{
  result = *(v0 - 88);
  *(v0 - 128) = **(v0 - 96);
  return result;
}

uint64_t sub_22C37095C()
{
  v2 = v0[39];
  v4 = v0[38];
  v5 = v0[35];
}

__n128 *sub_22C37097C(__n128 *result, __n128 a2)
{
  *(v2 - 136) = result;
  result[1] = a2;
  return result;
}

void sub_22C3709A0()
{

  JUMPOUT(0x2318B7850);
}

uint64_t sub_22C370A04()
{
  v2 = v0[20];
  v3 = v0[18];
  v5 = v0[14];
  v4 = v0[15];
  v6 = v0[11];
  v8 = v0[8];
  v7 = v0[9];
  v10 = v0[4];
  v9 = v0[5];
}

void sub_22C370A2C()
{
  v1 = v0[85];
  v2 = v0[84];
  v3 = v0[83];
  v4 = v0[82];
}

uint64_t sub_22C370A8C@<X0>(uint64_t a1@<X8>)
{

  return sub_22C36F9F4(0xD000000000000032, (a1 - 32) | 0x8000000000000000, (v1 - 80));
}

uint64_t sub_22C370AFC()
{
  result = v0;
  v3 = *(v1 - 376);
  return result;
}

uint64_t sub_22C370B14()
{

  return sub_22C901F0C();
}

uint64_t sub_22C370B38()
{

  return sub_22C8D4D04(v0, type metadata accessor for DialogOutput);
}

uint64_t *sub_22C370B9C(uint64_t a1, unint64_t a2)
{
  v123 = a1;
  v103 = sub_22C90035C();
  v3 = sub_22C369824(v103);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  sub_22C369838();
  v119 = v9 - v8;
  v10 = *(*(sub_22C3A5908(&qword_27D9BB138, &qword_22C90DB70) - 8) + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v11);
  v106 = &v101 - v12;
  sub_22C36BA0C();
  v112 = sub_22C90046C();
  v13 = sub_22C369824(v112);
  v120 = v14;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v13);
  sub_22C3698E4();
  v102 = v17;
  v19 = MEMORY[0x28223BE20](v18);
  v104 = &v101 - v20;
  MEMORY[0x28223BE20](v19);
  v118 = &v101 - v21;
  sub_22C36BA0C();
  v22 = sub_22C901DDC();
  v23 = sub_22C369824(v22);
  v116 = v24;
  v117 = v23;
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v23);
  sub_22C369838();
  v113 = v28 - v27;
  sub_22C36BA0C();
  v29 = sub_22C90210C();
  v30 = sub_22C369824(v29);
  v114 = v31;
  v115 = v30;
  v33 = *(v32 + 64);
  MEMORY[0x28223BE20](v30);
  sub_22C369838();
  v36 = v35 - v34;
  v37 = *(*(sub_22C3A5908(&qword_27D9BD698, &qword_22C9187B0) - 8) + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v38);
  v40 = &v101 - v39;
  v121 = sub_22C902D7C();
  v41 = sub_22C369824(v121);
  v111 = v42;
  v44 = *(v43 + 64);
  MEMORY[0x28223BE20](v41);
  sub_22C369838();
  v110 = v46 - v45;
  sub_22C36BA0C();
  v47 = sub_22C9063DC();
  v48 = sub_22C369958(v47);
  v50 = v49;
  v52 = *(v51 + 64);
  MEMORY[0x28223BE20](v48);
  sub_22C3698E4();
  v108 = v53;
  MEMORY[0x28223BE20](v54);
  sub_22C90405C();

  v55 = sub_22C9063CC();
  v56 = sub_22C90AABC();
  v122 = a2;

  v57 = os_log_type_enabled(v55, v56);
  v105 = v5;
  v109 = v50;
  if (v57)
  {
    v58 = v50;
    v50 = swift_slowAlloc();
    v59 = swift_slowAlloc();
    v124 = v59;
    *v50 = 136315138;
    *(v50 + 4) = sub_22C36F9F4(v123, v122, &v124);
    _os_log_impl(&dword_22C366000, v55, v56, "Getting OTA preferences for locale %s", v50, 0xCu);
    sub_22C36FF94(v59);
    sub_22C3699EC();
    sub_22C3699EC();

    v60 = *(v58 + 8);
  }

  else
  {

    v63 = *(v50 + 8);
  }

  v61 = sub_22C8B3AC0();
  v62(v61);
  sub_22C9020FC();
  v65 = v116;
  v64 = v117;
  v66 = v113;
  (*(v116 + 104))(v113, *MEMORY[0x277D1C250], v117);
  sub_22C9020EC();
  (*(v65 + 8))(v66, v64);
  (*(v114 + 8))(v36, v115);
  v67 = v121;
  v68 = sub_22C370B74(v40, 1, v121);
  v69 = v119;
  v70 = v120;
  v71 = v118;
  if (v68 == 1)
  {
    v72 = &qword_27D9BD698;
    v73 = &qword_22C9187B0;
    v74 = v40;
LABEL_8:
    sub_22C3770B0(v74, v72, v73);
    v79 = v108;
    sub_22C90405C();
    v80 = sub_22C9063CC();
    v81 = sub_22C90AABC();
    if (os_log_type_enabled(v80, v81))
    {
      v82 = swift_slowAlloc();
      v83 = swift_slowAlloc();
      v124 = v83;
      *v82 = 136315138;
      *(v82 + 4) = sub_22C36F9F4(0xD00000000000001DLL, 0x800000022C92C780, &v124);
      _os_log_impl(&dword_22C366000, v80, v81, "%s MobileAssets not available", v82, 0xCu);
      sub_22C36FF94(v83);
      sub_22C3699EC();
      sub_22C3699EC();
    }

    v107(v79, v50);
    return 0;
  }

  v75 = v110;
  v76 = v111;
  (*(v111 + 32))(v110, v40, v67);
  v77 = v106;
  sub_22C902D5C();
  v78 = v112;
  if (sub_22C370B74(v77, 1, v112) == 1)
  {
    (*(v76 + 8))(v75, v67);
    v72 = &qword_27D9BB138;
    v73 = &qword_22C90DB70;
    v74 = v77;
    goto LABEL_8;
  }

  (*(v70 + 32))(v71, v77, v78);
  v123 = 0x800000022C939730;
  v124 = 0xD000000000000023;
  v125 = 0x800000022C939730;
  v86 = v105;
  v87 = *(v105 + 104);
  LODWORD(v122) = *MEMORY[0x277CC91D8];
  v88 = v103;
  v117 = v87;
  v87(v69);
  v89 = sub_22C3858B4();
  v90 = v70;
  v91 = v104;
  v116 = v89;
  sub_22C90043C();
  v115 = *(v86 + 8);
  v115(v69, v88);
  v92 = v88;
  v93 = [objc_opt_self() defaultManager];
  sub_22C9003FC();
  v94 = sub_22C90A0EC();

  v95 = [v93 fileExistsAtPath_];

  if (v95)
  {
    v124 = 0xD000000000000023;
    v125 = v123;
    v117(v69, v122, v92);
    v96 = v102;
    sub_22C90043C();
    v115(v69, v92);
    v84 = sub_22C37A508(v96);
    v97 = *(v90 + 8);
    v98 = v112;
    v97(v96, v112);
    v97(v91, v98);
    v97(v71, v98);
    (*(v111 + 8))(v110, v121);
    return v84;
  }

  v99 = *(v90 + 8);
  v100 = v112;
  v99(v91, v112);
  v99(v71, v100);
  (*(v111 + 8))(v110, v121);
  return 0;
}

uint64_t sub_22C37153C()
{
  result = v0;
  v3 = *(v1 - 288);
  return result;
}

uint64_t sub_22C371568()
{
  v2 = v0[35];
  result = v0[36];
  v3 = v0[31];
  v4 = v0[28];
  v6 = v0[24];
  v5 = v0[25];
  v8 = v0[20];
  v7 = v0[21];
  v10 = v0[16];
  v9 = v0[17];
  v11 = v0[15];
  return result;
}

uint64_t sub_22C3715C4()
{
  v2 = v0[76];
  v3 = v0[75];
  v4 = v0[74];
  v5 = v0[73];
  v6 = v0[72];
  v7 = v0[69];
  v8 = v0[66];
  v9 = v0[63];
  v10 = v0[60];
  v11 = v0[57];
  v14 = v0[54];
  v15 = v0[51];
  v16 = v0[50];
  v17 = v0[47];
  v18 = v0[46];
  v19 = v0[43];
  v12 = v0[40];
  v20 = v0[38];
  v21 = v0[37];
}

uint64_t sub_22C37162C()
{

  return sub_22C90AD4C();
}

uint64_t sub_22C371664()
{

  return sub_22C4207B0(v0, type metadata accessor for PlanPostProcessor);
}

uint64_t sub_22C371728(uint64_t a1)
{
  v3 = *(a1 + 20);
  v4 = *(v2 + v3);
  return *(v1 + v3);
}

void sub_22C371758()
{
  v2 = v0[14];
  v1 = v0[15];
  v3 = v0[13];
  v5 = v0[9];
  v4 = v0[10];
}

uint64_t sub_22C3717CC()
{

  return sub_22C36DD28(v0 + v3, v1, v2);
}

uint64_t sub_22C3717E8()
{

  return sub_22C4D0CC0(v0, type metadata accessor for FullPlannerVersionHandler.GrammarConfiguration);
}

uint64_t sub_22C371840()
{
  v1 = **(v0 - 160);
  result = *(v0 - 128);
  v3 = *(v0 - 112);
  return result;
}

uint64_t sub_22C37185C()
{
  v1 = *(v0 - 184);
  v2 = *(*(v0 - 192) + 8);
  return *(v0 - 176);
}

uint64_t sub_22C37188C()
{
  v6 = v0[46];
  v7 = v0[43];
  v3 = v0[37];
  *(v1 - 112) = v0[40];
  *(v1 - 104) = v3;
  v4 = v0[31];
  *(v1 - 96) = v0[34];
  *(v1 - 88) = v4;
}

uint64_t sub_22C371958()
{
  v1 = *(*(v0 - 304) + 16);
  result = *(v0 - 312);
  v3 = *(v0 - 296);
  return result;
}

void sub_22C371988(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t sub_22C3719D8()
{

  return sub_22C588FBC(v0, v1);
}

uint64_t sub_22C371A38()
{
  v4 = (v2 + 2 * v1);
  v5 = *(v0 + 56);
  *v4 = 0x72656E74726170;
  v4[1] = 0xE700000000000000;
  result = *(v3 - 160);
  v7 = *(v3 - 136);
  return result;
}

uint64_t sub_22C371A68@<X0>(uint64_t a1@<X8>)
{
  v4 = *(v2 + 72);
  v5 = *(v1 + 48) + v4 * a1;
  v6 = *(v2 + 32);
  v7 = *(v3 - 88);
  result = *(v3 - 96);
  v9 = *(v3 - 104);
  *(v3 - 120) = v4;
  *(v3 - 112) = v6;
  return result;
}

void sub_22C371AD0()
{
  v3 = v0[84];
  v4 = v0[83];
  v5 = v0[81];
  v6 = v0[80];
  v7 = v0[77];
  v8 = v0[76];
  v1 = v0[75];
  v2 = v0[74];
}

uint64_t sub_22C371B00()
{
  v3 = v0[61];
  STACK[0x308] = v0[62];
  v4 = v0[60];
  *(v1 - 256) = v3;
  *(v1 - 248) = v4;
  v5 = v0[57];
  *(v1 - 240) = v0[58];
  *(v1 - 232) = v5;
  v7 = v0[50];
  v6 = v0[51];
  *(v1 - 224) = v0[54];
  *(v1 - 216) = v6;
  v8 = v0[49];
  *(v1 - 208) = v7;
  *(v1 - 200) = v8;
  v10 = v0[43];
  v9 = v0[44];
  *(v1 - 192) = v0[47];
  *(v1 - 184) = v9;
  v12 = v0[41];
  v11 = v0[42];
  *(v1 - 176) = v10;
  *(v1 - 168) = v11;
  v14 = v0[37];
  v13 = v0[38];
  *(v1 - 160) = v12;
  *(v1 - 152) = v13;
  v16 = v0[33];
  v15 = v0[34];
  *(v1 - 144) = v14;
  *(v1 - 136) = v15;
  v18 = v0[31];
  v17 = v0[32];
  *(v1 - 128) = v16;
  *(v1 - 120) = v17;
  v19 = v0[29];
  v20 = v0[30];
  *(v1 - 112) = v18;
  *(v1 - 104) = v20;
  *(v1 - 96) = v19;
}

uint64_t sub_22C371BC4()
{
  v2 = *(v0 - 328);
  v3 = *(v2 + 72);
  v4 = (*(v2 + 80) + 32) & ~*(v2 + 80);

  return swift_allocObject();
}

uint64_t sub_22C371C08()
{
  v2 = v0[21];
  v3 = v0[19];
  v4 = v0[16];
  v6 = v0[12];
  v5 = v0[13];
  v7 = v0[11];
}

void sub_22C371C50()
{
  v5 = v0[46];
  v6 = v0[45];
  v7 = v0[42];
  v8 = v0[39];
  v9 = v0[36];
  v10 = v0[35];
  v2 = v0[32];
  *(v1 - 224) = v0[33];
  *(v1 - 216) = v2;
  v3 = v0[28];
  *(v1 - 208) = v0[29];
  *(v1 - 200) = v3;
  v4 = v0[24];
  *(v1 - 192) = v0[25];
  *(v1 - 184) = v4;
  *(v1 - 176) = v0[23];
}

uint64_t sub_22C371CB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_22C36C640(a1, 1, 1, a4);

  return sub_22C90083C();
}

void sub_22C371CE4()
{
  v2 = v0[30];
  v1 = v0[31];
  v3 = v0[29];
  v5 = v0[25];
  v4 = v0[26];
  v6 = v0[21];
  v7 = v0[22];
  v9 = v0[17];
  v8 = v0[18];
  v10 = v0[16];
  v11 = v0[13];
  v12 = v0[12];
  v13 = v0[9];
  v14 = v0[8];
  v15 = v0[5];
  v16 = v0[4];
}

uint64_t sub_22C371D50()
{
  v3 = *(v1 + 8);
  result = v0;
  v5 = *(v2 - 264);
  return result;
}

void sub_22C371D64()
{
  v1 = v0[34];
  v3 = v0[30];
  v2 = v0[31];
  v5 = v0[26];
  v4 = v0[27];
}

void sub_22C371D74()
{
  v3 = v0[60];
  v4 = v0[59];
  v5 = v0[58];
  v6 = v0[57];
  v7 = v0[56];
  v8 = v0[55];
  v9 = v0[52];
  v10 = v0[51];
  v11 = v0[50];
  v12 = v0[47];
  v13 = v0[46];
  v14 = v0[45];
  v15 = v0[44];
  v16 = v0[43];
  v17 = v0[42];
  v18 = v0[39];
  v1 = v0[35];
  v2 = v0[36];
}

uint64_t sub_22C371E18(uint64_t a1)
{

  return sub_22C7FB5AC(a1, type metadata accessor for LooselyComparableRetrievedTool);
}

uint64_t sub_22C371E3C()
{

  return sub_22C909F0C();
}

uint64_t sub_22C371E6C()
{

  return swift_beginAccess();
}

uint64_t sub_22C371E88()
{

  return swift_beginAccess();
}

uint64_t sub_22C371ED0()
{

  return swift_once();
}

uint64_t sub_22C371F08()
{
  v4 = v0[24];
  v5 = v0[23];
  v6 = v0[20];
  v7 = v0[19];
  v8 = v0[18];
  v9 = v0[15];
  v10 = v0[12];
  v11 = v0[9];
  v12 = v0[8];
  v13 = v0[7];
  *(v1 - 88) = v0[5];
}

void sub_22C371F58(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t sub_22C371F78(uint64_t a1, uint64_t a2)
{
  result = a2;
  v4 = *(v2 + 16);
  return result;
}

void sub_22C371F90()
{
  v1 = v0[83];
  v2 = v0[81];
  v3 = v0[80];
  v4 = v0[77];
  v5 = v0[76];
  v6 = v0[75];
  v7 = v0[74];
  v8 = v0[73];
  v9 = v0[72];
  v10 = v0[71];
  v11 = v0[70];
}

uint64_t sub_22C371FC0()
{
  *(v1 + 16) = v4;
  v5 = v1 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v0;
  return v3;
}

uint64_t sub_22C371FE4()
{

  return sub_22C90B4FC();
}

uint64_t sub_22C372000()
{
  v2 = *(*(v1 - 160) + 96);
  result = v0;
  v4 = *(v1 - 216);
  return result;
}

uint64_t sub_22C372014()
{

  return swift_slowAlloc();
}

void sub_22C372074(uint64_t a1@<X8>)
{
  if (a1 <= *(v1 + 16))
  {
    v2 = *(v1 + 16);
  }
}

uint64_t sub_22C372084(uint64_t a1)
{
  *(v1 + 32) = a1;
  v3 = *(a1 - 8);
  return a1 - 8;
}

uint64_t sub_22C372098()
{
  v4 = *(v3 - 200);
  v5 = *(v3 - 216);
  v6 = *(v3 - 248);
  sub_22C36A674();

  return sub_22C3AC228(v2, v0, v1);
}

uint64_t sub_22C372124()
{
  result = v0;
  v3 = *(v1 - 248);
  return result;
}

uint64_t sub_22C372138()
{

  return type metadata accessor for PromptMapperResolver();
}

uint64_t sub_22C372170()
{
  *(v0 + 16) = v3;
  *(v0 + 8 * v1 + 32) = v2;

  return sub_22C3DB9B0(v0);
}

void sub_22C3721A8(void *a1, uint64_t a2, uint64_t a3, os_signpost_id_t a4, const char *a5, const char *a6)
{

  _os_signpost_emit_with_name_impl(a1, v6, v7, a4, a5, a6, v8, 2u);
}

uint64_t sub_22C372220(uint64_t a1, uint64_t a2)
{
  result = a2;
  v4 = *(*(v2 - 344) + 16);
  return result;
}

void sub_22C372238()
{
  v1 = v0[73];
  v2 = v0[72];
  v3 = v0[71];
}

uint64_t sub_22C37228C()
{

  return type metadata accessor for PromptTreeIdentifier(0);
}

void sub_22C3722AC(uint64_t a1@<X8>)
{
  v2 = *(v1 + 128);
  v3 = *(v1 + 136);
  v4 = *(v1 + 120);
  v6 = *(v1 + 88);
  v5 = *(v1 + 96);
  v7 = *(v1 + 64);
  **(v1 + 24) = a1;
}

uint64_t sub_22C372300()
{
  v3 = v0[73];
  v4 = v0[72];
  v5 = v0[71];
  v6 = v0[67];
  v7 = v0[64];
  v8 = v0[61];
  v10 = v0[57];
  v9 = v0[58];
  v12 = v0[55];
  v11 = v0[56];
  v14 = v0[52];
  v15 = v0[51];
  v16 = v0[50];
  v17 = v0[49];
  v18 = v0[46];
  v19 = v0[45];
  v20 = v0[44];
  v21 = v0[41];
  v22 = v0[38];
  v23 = v0[35];
  v24 = v0[32];
  v25 = v0[31];
  v26 = v0[28];
  *(v1 - 88) = v0[27];
}

uint64_t sub_22C3723A8()
{
  result = v0;
  *(v3 - 152) = v2;
  *(v3 - 168) = v1;
  return result;
}

uint64_t sub_22C3723D4()
{
  result = *(v0 + 560);
  v2 = *(v0 + 536);
  return result;
}

uint64_t sub_22C3723E0()
{
  v3 = *(v1 + 16);
  result = v0;
  v5 = *(v2 - 104);
  v6 = *(v2 - 96);
  return result;
}

uint64_t sub_22C3724F4(unint64_t *a1)
{

  return sub_22C386908(a1);
}

uint64_t sub_22C372518()
{
  v6 = *(v3 + 152);
  v7 = *(v3 + 136);
  *(v1 + 16) = v5;
  return v1 + v4 + v2 * v0;
}

uint64_t sub_22C372538()
{

  return sub_22C901F0C();
}

uint64_t sub_22C3725D8@<X0>(unint64_t a1@<X8>)
{
  if (a1 >= 0xFFFFFFFF)
  {
    LODWORD(a1) = -1;
  }

  return (a1 + 1);
}

double sub_22C372600()
{
  result = 0.0;
  *v0 = 0u;
  *(v0 + 16) = 0u;
  *(v0 + 32) = -1;
  return result;
}

uint64_t sub_22C372614(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  *(v12 + 376) = a11;
  result = v11 + 24;
  v14 = *(v11 + 24);
  return result;
}

unint64_t sub_22C372678()
{
  *(v0 - 112) = 10;
  *(v0 - 104) = 0xE100000000000000;
  *(v0 - 128) = 4091452;
  *(v0 - 120) = 0xE300000000000000;

  return sub_22C3858B4();
}

uint64_t sub_22C37272C()
{

  return sub_22C472434(v1, v2, v0);
}

double sub_22C37274C()
{
  result = 0.0;
  *(v0 + 8) = 0u;
  *(v0 + 24) = 0u;
  return result;
}

void *sub_22C372768@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  result[2] = v3;
  result[3] = a2;
  result[4] = v2;
  result[5] = (v4 - 32) | 0x8000000000000000;
  *v5 = result;
  return result;
}

uint64_t sub_22C372818()
{

  return swift_once();
}

void sub_22C37285C()
{
  v2 = *(v0 + 16) + 1;

  sub_22C591F6C();
}

uint64_t sub_22C372880()
{
  v1 = *(*(v0 - 568) + 8);
  result = *(v0 - 280);
  v3 = *(v0 - 560);
  return result;
}

void sub_22C3728C8()
{
  v1 = v0[90];
  v2 = v0[86];
  v3 = v0[82];
  v4 = v0[78];
}

__n128 sub_22C3728DC()
{
  v1 = *(v0 - 208);
  *(v0 - 288) = *(v0 - 224);
  *(v0 - 272) = v1;
  result = *(v0 - 192);
  v3 = *(v0 - 176);
  *(v0 - 256) = result;
  *(v0 - 240) = v3;
  return result;
}

uint64_t sub_22C372900@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(result + 16) = a2;
  *(result + 24) = v2;
  return result;
}

void sub_22C372934()
{

  sub_22C591324();
}

uint64_t sub_22C37299C()
{
  v2 = *(v0 - 120);

  return sub_22C9062CC();
}

void sub_22C3729C4(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t sub_22C3729F0()
{

  return sub_22C9003BC();
}

char *sub_22C372A18(__n128 *a1, __n128 a2)
{
  a1[1] = a2;
  *(v4 - 120) = a1;
  v5 = *(v3 + 16);
  return a1 + v2;
}

uint64_t sub_22C372A38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v4 - 96);
  v6 = *(v4 - 88);
  v7 = *(a1 + 48) + *(v5 + 72) * (a2 | (v3 << 6));
  v8 = *(v5 + 16);
  result = v2;
  v10 = *(v4 - 104);
  return result;
}

void sub_22C372A84()
{

  JUMPOUT(0x2318B9880);
}

void sub_22C372AB0()
{
  v1 = v0[90];
  v2 = v0[89];
  v3 = v0[88];
  v4 = v0[85];
  v5 = v0[84];
  v6 = v0[83];
}

uint64_t sub_22C372AFC()
{
  v21 = v0[51];
  v4 = v0[48];
  v3 = v0[49];
  *(v1 - 256) = v0[50];
  *(v1 - 248) = v3;
  v6 = v0[45];
  v5 = v0[46];
  *(v1 - 240) = v4;
  *(v1 - 232) = v5;
  v8 = v0[41];
  v7 = v0[42];
  *(v1 - 224) = v6;
  *(v1 - 216) = v7;
  v10 = v0[39];
  v9 = v0[40];
  *(v1 - 208) = v8;
  *(v1 - 200) = v9;
  v12 = v0[35];
  v11 = v0[36];
  *(v1 - 192) = v10;
  *(v1 - 184) = v11;
  v13 = v0[32];
  *(v1 - 176) = v12;
  *(v1 - 168) = v13;
  v15 = v0[25];
  v14 = v0[26];
  *(v1 - 160) = v0[29];
  *(v1 - 152) = v14;
  v17 = v0[23];
  v16 = v0[24];
  *(v1 - 144) = v15;
  *(v1 - 136) = v16;
  v18 = v0[20];
  *(v1 - 128) = v17;
  *(v1 - 120) = v18;
  v19 = v0[16];
  *(v1 - 112) = v0[17];
  *(v1 - 104) = v19;
  *(v1 - 96) = v0[13];
}

uint64_t sub_22C372B70()
{
  v4 = v0[52];
  v3 = v0[53];
  *(v1 - 256) = v0[56];
  *(v1 - 248) = v3;
  v6 = v0[48];
  v5 = v0[49];
  *(v1 - 240) = v4;
  *(v1 - 232) = v5;
  v7 = v0[45];
  *(v1 - 224) = v6;
  *(v1 - 216) = v7;
  v8 = v0[41];
  *(v1 - 208) = v0[42];
  *(v1 - 200) = v8;
  v9 = v0[39];
  *(v1 - 192) = v0[40];
  *(v1 - 184) = v9;
  v10 = v0[37];
  *(v1 - 176) = v0[38];
  *(v1 - 168) = v10;
  v11 = v0[35];
  *(v1 - 160) = v0[36];
  *(v1 - 152) = v11;
  v12 = v0[31];
  *(v1 - 144) = v0[34];
  *(v1 - 136) = v12;
  v13 = v0[25];
  *(v1 - 128) = v0[28];
  *(v1 - 120) = v13;
  v14 = v0[19];
  *(v1 - 112) = v0[22];
  *(v1 - 104) = v14;
  v15 = v0[13];
  *(v1 - 96) = v0[16];
  *(v1 - 88) = v15;
}

uint64_t sub_22C372BFC(uint64_t a1, uint64_t a2)
{
  v4 = *(v2 - 96);
  v5 = *(v2 - 112);
  *a2 = *(v2 - 128);
  *(a2 + 16) = v5;
  *(a2 + 32) = v4;

  return swift_willThrow();
}

void sub_22C372C24()
{

  JUMPOUT(0x2318B7850);
}

id sub_22C372C44()
{

  return sub_22C5F2214(v0, 65568);
}

id sub_22C372C6C()
{

  return [v2 (v3 + 2040)];
}

void sub_22C372C8C()
{
  *(v2 - 248) = (v0 + 63) >> 6;
  *(v2 - 240) = v1;
  v3 = *(v2 - 176);
  *(v2 - 232) = v3 + 16;
  v4 = *(v2 - 96);
  *(v2 - 120) = v3 + 32;
  *(v2 - 136) = v4 + 16;
  *(v2 - 128) = v4 + 32;
  *(v2 - 216) = v3 + 8;
  *(v2 - 208) = v4 + 8;
}

uint64_t sub_22C372D24()
{

  return sub_22C76C7B4(v0, type metadata accessor for DateComponentsResolver);
}

uint64_t sub_22C372D7C()
{
  v1 = v0[99];
  v2 = v0[97];
  v3 = v0[96];
  v4 = v0[81];
  v5 = v0[80];
  v6 = v0[75];
  v7 = v0[74];
  result = v0[73];
  v10 = v0[21];
  v9 = v0[22];
  return result;
}

uint64_t sub_22C372DA4@<X0>(uint64_t a1@<X8>)
{

  return sub_22C36F9F4(0xD000000000000035, (a1 - 32) | 0x8000000000000000, (v1 - 112));
}

uint64_t sub_22C372DC8()
{
  result = v0;
  v3 = *(v1 - 240);
  return result;
}

void sub_22C372E08()
{
  v3 = *(v1 - 96);
  v2 = *(v1 - 88);
  v4 = v2 + ((*(v0 + 80) + 32) & ~*(v0 + 80));
  v5 = *(v2 + 16);
}

uint64_t sub_22C372E3C@<X0>(uint64_t a1@<X8>)
{

  return sub_22C36F9F4(0xD00000000000001FLL, a1 | 0x8000000000000000, (v1 - 72));
}

uint64_t sub_22C372E5C()
{

  return sub_22C90AD7C();
}

uint64_t sub_22C372EA8()
{
  sub_22C372F94(&unk_22C929B28);
}

uint64_t sub_22C372F38(uint64_t result)
{
  *(result + 8) = sub_22C8D1F88;
  v2 = *(v1 + 648);
  v3 = *(v1 + 496);
  return result;
}

void sub_22C372F60()
{
  v1 = v0[120];
  v2 = v0[119];
  v3 = v0[114];
  v4 = v0[113];
}

uint64_t sub_22C372F78()
{
  result = *(v0 - 104);
  v2 = *(*(v0 - 112) + 8);
  v3 = *(v0 - 96);
  return result;
}

uint64_t sub_22C372F94(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

void sub_22C372FB0()
{

  JUMPOUT(0x2318B9880);
}

uint64_t sub_22C373010@<X0>(uint64_t a1@<X8>)
{
  v9 = v1[62];
  v10 = v1[61];
  v11 = v1[60];
  v12 = v1[59];
  v13 = v1[58];
  v14 = v1[57];
  v15 = v1[56];
  v16 = v1[53];
  v17 = v1[50];
  v18 = v1[49];
  v19 = v1[48];
  v20 = v1[47];
  v21 = v1[46];
  v22 = v1[45];
  v23 = v1[44];
  v4 = v1[40];
  *(v3 - 128) = v1[41];
  *(v3 - 120) = v4;
  v5 = v1[34];
  *(v3 - 112) = v1[37];
  *(v3 - 104) = v5;
  v6 = v1[29];
  *(v3 - 96) = v1[32];
  *(v3 - 88) = v6;
  v7 = *(a1 + 8);
  return v2;
}

uint64_t sub_22C373084@<X0>(uint64_t a1@<X0>, __n128 *a2@<X1>, unint64_t a3@<X8>, __n128 a4@<Q0>, __n128 a5@<Q1>)
{
  *a2 = a5;
  a2[1] = a4;
  a2[2].n128_u64[0] = a3;
  *(v5 - 120) = a1;

  return swift_willThrow();
}

uint64_t sub_22C3730BC()
{
  v3 = v0[35];
  v2 = v0[36];
  v4 = v0[34];
  v6 = v0[30];
  v5 = v0[31];
}

uint64_t sub_22C3730D8()
{
  v2 = v0[24];
  v3 = v0[20];
  v4 = v0[21];
  v5 = v0[17];
  v6 = v0[14];
}

uint64_t sub_22C3730F8(uint64_t result)
{
  v1 = *(result + 24);
  v2 = *(result + 16) + 1;
  return result;
}

uint64_t sub_22C37310C(uint64_t a1)
{
  *(a1 + 8) = sub_22C3A7E1C;
  v2 = v1[12];
  result = v1[10];
  v4 = v1[4];
  return result;
}

void sub_22C373140()
{
  v4 = *(v1 + 16);
  v3 = v1 + 16;
  v5 = *(v3 + 64);
  *(v2 - 96) = v0;
  v6 = *(v3 + 56);
}

uint64_t sub_22C3731C0(uint64_t a1)
{

  return sub_22C3DA7AC(a1, type metadata accessor for FullPlannerVersionHandler.GenericInitialisationParameters);
}

uint64_t sub_22C3731E4()
{

  return sub_22C3E0180(v0, type metadata accessor for RenderableTool);
}

uint64_t sub_22C37321C(uint64_t a1)
{
  *(a1 + 8) = sub_22C3E7668;
  v2 = v1[33];
  v3 = v1[34];
  return v1[32];
}

uint64_t sub_22C3732B8()
{

  return sub_22C45B5A8(v0, type metadata accessor for RenderableTool);
}

uint64_t sub_22C373368()
{

  return swift_getWitnessTable();
}

void sub_22C373428(uint64_t a1@<X8>, __n128 a2@<Q0>)
{
  v3 = (v2 + a1);
  v3[2].n128_u64[0] = 0;
  *v3 = a2;
  v3[1] = a2;
}

uint64_t sub_22C373438(uint64_t result)
{
  *(v1 + 8) = result;
  v2 = *(result - 8);
  return result;
}

void *sub_22C37346C(void *result)
{
  result[4] = 0x794D646E6946;
  result[5] = 0xE600000000000000;
  result[6] = 0x74694B656D6F48;
  result[7] = 0xE700000000000000;
  return result;
}

void sub_22C3734D0(uint64_t a1, char a2)
{
  sub_22C50AF74(*(v2 - 552), a2);
  v3 = *(v2 - 672) & 1;
  v4 = *(v2 - 600);
  v5 = *(v2 - 544);
  v6 = *(v2 - 536);
  v7 = *(v2 - 520);
  v8 = *(v2 - 664);

  sub_22C456CE4(v4, v5, v6, v7, v8, v3);
}

uint64_t sub_22C373570@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 440);
  v3 = *(v1 + 352);
  return *(v1 + 336) + a1;
}

void sub_22C3735C4()
{
  v1 = *(v0 - 544);
  v2 = *(v0 - 344);
  v3 = *(v0 - 376);
}

void sub_22C373608()
{
  *(v3 - 136) = v0;
  *(v3 - 128) = v1;
  v4 = 1 << *(v1 + 32);
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & *(v1 + 56);
  *(v3 - 104) = v2 + 32;
}

void sub_22C3736E4()
{
  v1 = v0[111];
  v2 = v0[110];
  v3 = v0[109];
  v4 = v0[108];
  v5 = v0[107];
  v6 = v0[106];
  v7 = v0[105];
  v8 = v0[104];
  v9 = v0[103];
  v10 = v0[102];
  v11 = v0[101];
  v12 = v0[100];
  v13 = v0[99];
  v14 = v0[98];
  v15 = v0[97];
  v16 = v0[94];
  v17 = v0[93];
  v18 = v0[92];
  v19 = v0[89];
  v20 = v0[86];
  v21 = v0[83];
  v22 = v0[80];
  v23 = v0[77];
  v24 = v0[74];
  v25 = v0[71];
  v26 = v0[68];
  v27 = v0[65];
  v28 = v0[62];
  v29 = v0[60];
  v30 = v0[59];
  v31 = v0[57];
  v32 = v0[56];
  v33 = v0[53];
  v34 = v0[52];
}

uint64_t sub_22C3737A8()
{
  v2 = *(v0 + 8);
  result = *(v1 - 96);
  v4 = *(v1 - 152);
  return result;
}

char *sub_22C3737D0(__n128 *a1, __n128 a2)
{
  a1[1] = a2;
  v4 = *(v3 + 16);
  return a1 + v2;
}

uint64_t sub_22C373854()
{

  return sub_22C90B41C();
}

uint64_t sub_22C373880()
{

  return swift_allocObject();
}

uint64_t sub_22C3738DC()
{

  return swift_beginAccess();
}

uint64_t sub_22C3739A0()
{
  v4 = v0[53];
  v3 = v0[54];
  *(v1 - 256) = v0[57];
  *(v1 - 248) = v3;
  v6 = v0[49];
  v5 = v0[50];
  *(v1 - 240) = v4;
  *(v1 - 232) = v5;
  v8 = v0[45];
  v7 = v0[46];
  *(v1 - 224) = v6;
  *(v1 - 216) = v7;
  v10 = v0[43];
  v9 = v0[44];
  *(v1 - 208) = v8;
  *(v1 - 200) = v9;
  v12 = v0[39];
  v11 = v0[40];
  *(v1 - 192) = v10;
  *(v1 - 184) = v11;
  v13 = v0[38];
  *(v1 - 176) = v12;
  *(v1 - 168) = v13;
  v15 = v0[32];
  v14 = v0[33];
  *(v1 - 160) = v0[36];
  *(v1 - 152) = v14;
  v16 = v0[31];
  *(v1 - 144) = v15;
  *(v1 - 136) = v16;
  v18 = v0[24];
  v17 = v0[25];
  *(v1 - 128) = v0[28];
  *(v1 - 120) = v17;
  v19 = v0[22];
  *(v1 - 112) = v18;
  *(v1 - 104) = v19;
  *(v1 - 96) = v0[19];
}

uint64_t sub_22C373A14()
{
  result = *(v0 - 168);
  v2 = **(v0 - 160);
  return result;
}

uint64_t sub_22C373A94()
{
  v1 = v0[68];
  v2 = v0[64];
  v3 = *(v0[69] + 8);
  return v0[70];
}

uint64_t sub_22C373AB0()
{
  v2 = v0[35];
  v4 = v0[31];
  v3 = v0[32];
  v5 = v0[28];
  v7 = v0[25];
  v6 = v0[26];
  v8 = v0[24];
  v9 = v0[21];
}

void *sub_22C373AF4@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = a2 & 0xFFFFFFFFFFFFLL | 0xD000000000000000;
  result[5] = v3;
  result[6] = v2;
  result[7] = v3;
  result[8] = v2;
  return result;
}

uint64_t sub_22C373B30@<X0>(uint64_t a1@<X8>)
{
  *(v2 - 80) = a1;
  v4 = v1[38];
  v6 = v1[34];
  v5 = v1[35];
  v8 = v1[32];
  v7 = v1[33];
  v10 = v1[30];
  v9 = v1[31];
  v11 = v1[27];
  v13 = v1[23];
  v12 = v1[24];
  v16 = v1[22];
  v17 = v1[21];
  v18 = v1[20];
  v19 = v1[19];
  v20 = v1[16];
  v21 = v1[15];
  v22 = v1[14];
  v23 = v1[13];
  v14 = v1[12];
  v24 = v1[10];
  v25 = v1[9];
}

void sub_22C373B8C()
{
  v3 = v0[401];
  v4 = v0[398];
  v5 = v0[397];
  v6 = v0[391];
  v7 = v0[379];
  v8 = v0[373];
  v1 = v0[355];
  v9 = v0[349];
  v10 = v0[331];
  v2 = v0[313];
}

uint64_t sub_22C373BCC()
{

  return sub_22C90B4FC();
}

uint64_t sub_22C373C0C()
{

  return MEMORY[0x282176F80]();
}

void sub_22C373C4C()
{
  v5 = 1 << *(v1 + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(v1 + 64);
  *(v4 - 168) = v3 + 16;
  *(v4 - 160) = v3;
  *(v4 - 184) = v0;
  *(v4 - 176) = v2 + 16;
  *(v4 - 152) = v1;
  *(v4 - 144) = v2;
  *(v4 - 128) = v2 + 32;
  *(v4 - 120) = v3 + 32;
}

uint64_t sub_22C373CC0()
{

  return sub_22C900F8C();
}

void sub_22C373CFC()
{

  JUMPOUT(0x2318B7850);
}

uint64_t sub_22C373D34()
{
  v1 = *(v0 + 1264);
  v2 = *(v0 + 992);
  v3 = *(v0 + 984);
  v4 = *(v0 + 976);
  v5 = *(v0 + 968);
  v6 = *(v0 + 952);
  v7 = *(v0 + 904);
  return *(v0 + 920);
}

uint64_t sub_22C373D68()
{
  sub_22C373D9C();

  return swift_deallocClassInstance();
}

void *sub_22C373D9C()
{
  v1 = v0[3];

  sub_22C36FF94(v0 + 4);
  v2 = v0[9];

  v3 = v0[12];
  v4 = v0[13];
  v5 = v0[14];
  v6 = v0[15];
  v7 = v0[16];
  v8 = v0[17];
  sub_22C373DE0(v0[10], v0[11]);
  return v0;
}

uint64_t sub_22C373DE0(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t sub_22C373E78(void (*a1)(void), unint64_t *a2, void (*a3)(uint64_t))
{
  a1(0);
  sub_22C373F18(a2, 255, a3);
  sub_22C3870A4();
  return sub_22C90411C();
}

uint64_t sub_22C373F18(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_22C373F90(uint64_t a1, void *a2)
{
  result = sub_22C373FC0(a1);
  if (v2)
  {
    *a2 = v2;
  }

  return result;
}

uint64_t sub_22C373FC0(uint64_t a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  sub_22C374010(a1);
  return v5;
}

void *sub_22C374010(uint64_t a1)
{
  swift_defaultActor_initialize();
  v3 = MEMORY[0x277D84F98];
  v1[14] = MEMORY[0x277D84F98];
  type metadata accessor for TrialManager();
  swift_allocObject();
  sub_22C36E65C(1);
  sub_22C37931C();
  v5 = v4;

  v6 = sub_22C9040FC();
  sub_22C36985C(v6);
  (*(v7 + 8))(a1);
  v1[15] = v5;
  v1[16] = v3;
  type metadata accessor for CacheKeyHashableRepresentation(0);
  sub_22C36A748();
  sub_22C36C640(v8, v9, v10, v11);
  return v1;
}

void *sub_22C374168(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_22C3741B4()
{
  type metadata accessor for PlanOverridesService(0);
  sub_22C3A5908(&qword_27D9C1428, &qword_22C92D608);
  sub_22C3A5908(&qword_27D9C1430, &qword_22C92D610);
  return sub_22C8D520C();
}

uint64_t sub_22C37420C()
{
  sub_22C3A5908(&qword_27D9C13F8, &qword_22C92D5D8);
  sub_22C3A5908(&qword_27D9C1400, &qword_22C92D5E0);
  return sub_22C8D520C();
}

uint64_t sub_22C37425C()
{
  type metadata accessor for QueryDecorationService();
  sub_22C3A5908(&qword_27D9C13D8, &qword_22C92D5B8);
  sub_22C3A5908(&qword_27D9C13E0, &qword_22C92D5C0);
  return sub_22C8D520C();
}

uint64_t sub_22C3742B4()
{
  type metadata accessor for ResponseGenerationService();
  sub_22C3A5908(&qword_27D9C13C0, &qword_22C92D5A8);
  sub_22C3A5908(&qword_27D9C13C8, &qword_22C92D5B0);
  return sub_22C90A1AC();
}

uint64_t type metadata accessor for ResponseGenerationService()
{
  result = qword_2814320D0;
  if (!qword_2814320D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22C374360()
{
  type metadata accessor for FullPlannerService();
  sub_22C3A5908(&qword_27D9C1438, &qword_22C92D618);
  sub_22C3A5908(&qword_27D9C1440, &unk_22C92D620);
  return sub_22C8D520C();
}

uint64_t sub_22C3743B4()
{
}

void sub_22C37441C(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0xCu);
}

uint64_t sub_22C374458()
{
  v3 = v0[15];
  v2 = v0[16];
  v4 = v0[13];
  v5 = v0[14];
  v6 = v0[12];

  return sub_22C90364C();
}

uint64_t sub_22C374478()
{

  return sub_22C3A5908(v0, v1);
}

uint64_t sub_22C3744D4()
{

  return sub_22C90AEEC();
}

uint64_t sub_22C374514(uint64_t a1, uint64_t a2)
{

  return sub_22C763800(a1, a2, v2, v6, v5, v4, v3);
}

uint64_t sub_22C374574()
{
  *(v1 - 208) = *(v1 - 96);
  v2 = *(v0 + 8);
  result = *(v1 - 152);
  v4 = *(v1 - 144);
  return result;
}

uint64_t sub_22C374588()
{
  v1 = v0[12];
  v3 = v0[5];
  result = v0[6];
  v4 = v0[4];
  return result;
}

id sub_22C3745A8(void *a1)
{

  return [a1 (v1 + 120)];
}

void sub_22C3745DC()
{
  *(v2 - 128) = v1 + 32;
  *(v2 - 120) = v1 + 16;
  *(v2 - 136) = v0;
}

uint64_t sub_22C3745F8()
{

  return swift_unknownObjectRetain_n();
}

_OWORD *sub_22C374614()
{

  return sub_22C456E34((v0 - 120), (v0 - 160));
}

void sub_22C37462C()
{
  v2 = *(v0 + 48);
  *(v1 - 96) = *(*(v1 - 128) + 72);
  v3 = *(v1 - 116);
}

void sub_22C37464C()
{
  v1 = v0[65];
  v2 = v0[64];
  v4 = v0[60];
  v3 = v0[61];
  v5 = v0[58];
  v6 = v0[59];
}

uint64_t static PlanOverridesService.isEnabled()()
{
  v0 = sub_22C90363C();
  v1 = sub_22C369824(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v1);
  sub_22C369838();
  (*(v3 + 104))(v7 - v6, *MEMORY[0x277D1EB98], v0);
  v8 = sub_22C90362C();
  v9 = *(v3 + 8);
  v10 = sub_22C36BBCC();
  v11(v10);
  return v8 & 1;
}

uint64_t sub_22C3747A0()
{
  if (MEMORY[0x277D85020])
  {
    return sub_22C3A5908(&qword_27D9BE160, &qword_22C91D088);
  }

  else
  {
    return MEMORY[0x277D84F78] + 8;
  }
}

uint64_t sub_22C374800@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D1D8E0];
  v3 = sub_22C90645C();
  v4 = sub_22C36985C(v3);
  v6 = *(v5 + 104);

  return v6(a1, v2, v4);
}

uint64_t sub_22C37486C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_22C37524C;

  return PlanResolverService.setup(sessionState:)();
}

uint64_t sub_22C374948()
{

  return sub_22C3AFE44();
}

void sub_22C374980()
{
  v2 = *(v0 + 16);
  v3 = *(v1 - 120);
  *(v1 - 200) = *(v1 - 128);
  v4 = *(v1 - 112);
  v5 = *(v1 - 104);
  v6 = *(v1 - 96);
  *(v1 - 216) = v3;
  *(v1 - 248) = v4;
}

uint64_t sub_22C3749A0()
{
  result = v0 + v1;
  v4 = *(v2 - 104);
  return result;
}

uint64_t sub_22C3749B0()
{
  v2 = ((*(v0 + 80) + 32) & ~*(v0 + 80)) + *(v0 + 72);

  return swift_allocObject();
}

uint64_t sub_22C3749E4()
{
  v7 = *(v1 + 248);
  v6 = *(v0 + 48);
  v4 = *(v3 + 32);
  return v2;
}

void sub_22C374A68(uint64_t a1@<X8>)
{
  v2 = *(a1 - 256);
  v3 = *(v1 - 176);
  v4 = *(v1 - 208);
}

uint64_t sub_22C374A78@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);

  return sub_22C36F9F4(0xD000000000000023, (a1 - 32) | 0x8000000000000000, va);
}

uint64_t sub_22C374AAC(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  v3 = *(a2 + 16);
  return result;
}

uint64_t sub_22C374AE8()
{

  return swift_retain_n();
}

uint64_t sub_22C374B18()
{

  return swift_beginAccess();
}

uint64_t sub_22C374B64()
{

  return sub_22C4AEBD0(v0, type metadata accessor for PromptTreeIdentifier.TranscriptReference.Category.Local);
}

uint64_t sub_22C374B8C()
{
  v3 = *(v1 + 8);
  result = v0;
  v5 = *(v2 - 88);
  return result;
}

uint64_t sub_22C374BAC()
{

  return sub_22C901EFC();
}

uint64_t sub_22C374BC8(uint64_t a1)
{
  *(v1 + 40) = a1;

  return type metadata accessor for FullPlannerPreferences();
}

uint64_t sub_22C374BE4()
{
  v4 = v0 == v1;
  v5 = *(v3 - 104) | v4;
  v6 = v2[69];
  v8 = v2[54];
  v7 = v2[55];
  v9 = v2[53];
  v10 = v2[36];
  v11 = *(v2[70] + 96);
  return v2[72];
}

void sub_22C374C24()
{
  *v0 = v1;
  *(v0 + 8) = v2;
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  *(v0 + 32) = 0;
}

uint64_t sub_22C374CB8()
{
}

uint64_t sub_22C374D38()
{
  v2 = (*(v0 + 80) + 32) & ~*(v0 + 80);

  return swift_allocObject();
}

uint64_t sub_22C374D84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_22C36C640(a1, 1, 1, a4);
}

void sub_22C374D9C()
{
  *(v4 - 392) = v1 + 32;
  v5 = *(v4 - 344);
  *(v4 - 360) = v5 + 16;
  v6 = *(v4 - 336);
  *(v4 - 368) = v6 + 16;
  *(v4 - 272) = v6 + 32;
  *(v4 - 304) = v5 + 8;
  *(v4 - 312) = v6 + 8;
  *(v4 - 352) = v3;
  *(v4 - 328) = v5 + 32;
  *(v4 - 424) = v1;
  *(v4 - 288) = v2;
  *(v4 - 408) = v0;
  *(v4 - 416) = v0 + 56;
}

void *sub_22C374E44(uint64_t a1)
{
  *(a1 + 8) = sub_22C5FF1EC;
  v2 = v1[49];
  v3 = v1[37];
  v4 = v1[38];
  v5 = v1[34];
  v6 = v1[35];
  return v1 + 18;
}

uint64_t sub_22C374E7C()
{
  result = v0[230];
  v2 = v0[229];
  v3 = v0[228];
  v4 = v0[227];
  v5 = v0[224];
  v6 = v0[223];
  v7 = v0[222];
  return result;
}

void sub_22C374F10(uint64_t a1@<X8>)
{
  v3 = v2 + a1;
  *v3 = 0;
  *(v3 + 8) = 0;
  *(v3 + 16) = v1;
}

uint64_t sub_22C374F24()
{
  result = *(v0 - 1064);
  v2 = *(v0 - 152);
  return result;
}

uint64_t sub_22C374F34()
{
  v3 = *(v0 + 8);
  result = v1;
  v5 = *(v2 - 304);
  return result;
}

uint64_t sub_22C374F48()
{
  v3 = *(v0 + 56);
  v4 = *(v2 - 96);
  v5 = v3 + *(v4 + 72) * v1;
  v6 = *(v4 + 16);
  result = *(v2 - 112);
  v8 = *(v2 - 136);
  return result;
}

void sub_22C374F70()
{
  v4 = v0[172];
  v2 = v0[170];
  v3 = v0[153];

  sub_22C75BAC0();
}

uint64_t sub_22C374FAC()
{

  return sub_22C90184C();
}

uint64_t sub_22C375018()
{
  v3 = v0[131];
  v4 = v0[130];
  *(v1 - 112) = v0[132];
  *(v1 - 104) = v4;
  *(v1 - 96) = v0[129];
  v5 = v0[127];
  v6 = v0[124];
  *(v1 - 144) = v0[123];
  *(v1 - 136) = v5;
  v7 = v0[117];
  *(v1 - 160) = v0[116];
  *(v1 - 152) = v6;
  v8 = v0[112];
  *(v1 - 176) = v0[113];
  *(v1 - 168) = v8;
  v9 = v0[98];
  *(v1 - 192) = v0[99];
  *(v1 - 184) = v9;
  v10 = v0[96];
  *(v1 - 208) = v0[97];
  *(v1 - 200) = v10;
  v11 = v0[80];
  v12 = v0[75];
  v17 = v0[74];
  *(v1 - 128) = v0[73];
  v13 = v0[45];
  *(v1 - 224) = v0[46];
  v14 = v0[43];
  *(v1 - 240) = v0[44];
  v15 = v0[42];
  v18 = v0[41];
  *(v1 - 256) = v0[40];
  *(v1 - 232) = v0[17];
  *(v1 - 216) = v0[13];

  return sub_22C90069C();
}

void sub_22C3750D0(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v4, a3, a4, v5, 0xCu);
}

uint64_t sub_22C37512C()
{
  result = v0;
  v3 = *(v1 - 112);
  return result;
}

void sub_22C3751A8()
{
  sub_22C36FF94(*(v0 - 112));

  JUMPOUT(0x2318B9880);
}

uint64_t sub_22C3751E0(uint64_t result)
{
  if (*(*v1 + 24) > result)
  {
    v2 = *(*v1 + 24);
  }

  return result;
}

void sub_22C3751FC()
{
  v1 = v0[51];
  v3 = v0[47];
  v2 = v0[48];
  v4 = v0[45];
}

uint64_t sub_22C37524C()
{
  sub_22C369980();
  v1 = *(*v0 + 16);
  v2 = *v0;
  sub_22C369970();
  *v3 = v2;

  v4 = *(v2 + 8);

  return v4();
}

uint64_t PlanResolverService.telemetryTarget.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D1D8C8];
  v3 = sub_22C90645C();
  v4 = sub_22C36985C(v3);
  v6 = *(v5 + 104);

  return v6(a1, v2, v4);
}

uint64_t dispatch thunk of PlannerService.setup(sessionState:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 16);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_22C3B00E8;

  return v11(a1, a2, a3);
}

uint64_t sub_22C3754C8()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_22C382AF4;

  return sub_22C375560();
}

uint64_t sub_22C375560()
{
  sub_22C369980();
  v1[2] = v2;
  v1[3] = v0;
  v3 = sub_22C3A5908(&qword_27D9BB190, qword_22C90DD90);
  sub_22C369914(v3);
  v5 = *(v4 + 64);
  v1[4] = sub_22C3699D4();
  v6 = sub_22C3A5908(&qword_27D9BB728, &qword_22C911230);
  sub_22C369914(v6);
  v8 = *(v7 + 64);
  v1[5] = sub_22C3699D4();
  v9 = sub_22C3A5908(&qword_27D9BE068, &qword_22C91CE40);
  sub_22C369914(v9);
  v11 = *(v10 + 64);
  v1[6] = sub_22C3699D4();
  v12 = sub_22C90880C();
  v1[7] = v12;
  sub_22C3699B8(v12);
  v1[8] = v13;
  v15 = *(v14 + 64);
  v1[9] = sub_22C3699D4();
  v16 = sub_22C90069C();
  v1[10] = v16;
  sub_22C3699B8(v16);
  v1[11] = v17;
  v19 = *(v18 + 64);
  v1[12] = sub_22C3699D4();
  v20 = sub_22C3A5908(&qword_27D9C1350, &qword_22C92D1F0);
  sub_22C369914(v20);
  v22 = *(v21 + 64);
  v1[13] = sub_22C3699D4();
  v23 = sub_22C9021BC();
  v1[14] = v23;
  sub_22C3699B8(v23);
  v1[15] = v24;
  v26 = *(v25 + 64);
  v1[16] = sub_22C3699D4();
  v27 = sub_22C9021DC();
  v1[17] = v27;
  sub_22C3699B8(v27);
  v1[18] = v28;
  v30 = *(v29 + 64);
  v1[19] = sub_22C3699D4();
  v31 = sub_22C90077C();
  v1[20] = v31;
  sub_22C3699B8(v31);
  v1[21] = v32;
  v34 = *(v33 + 64);
  v35 = sub_22C3699D4();
  sub_22C8D525C(v35);
  v36 = sub_22C9068CC();
  v1[23] = v36;
  sub_22C3699B8(v36);
  v1[24] = v37;
  v39 = *(v38 + 64);
  v1[25] = sub_22C3699D4();
  v40 = sub_22C37BB20();

  return MEMORY[0x2822009F8](v40, v41, v42);
}

uint64_t sub_22C375840()
{

  return swift_allocObject();
}

uint64_t sub_22C375868()
{
  v2 = *(v0 + 48);
  v4 = *(v1 - 104);
  v3 = *(v1 - 96);
  v5 = *(v3 + 72);
  v6 = *(v3 + 16);
  result = *(v1 - 112);
  v8 = *(v1 - 144);
  return result;
}

void sub_22C3758A8()
{
  v1[2] = v0 + 1;
  v3 = *(v2 - 248);
  v1[4] = *(v2 - 240);
  v1[5] = v3;
}

uint64_t sub_22C3758BC()
{
  v3 = *(v0 - 104);
  v2 = *(v0 - 96);

  return sub_22C9062EC();
}

uint64_t sub_22C375924(uint64_t a1)
{
  *(a1 + 16) = v2;
  *(v3 + 16) = a1;
  *(v1 + 32) = v3 | 0x6000000000000000;

  return type metadata accessor for PromptTreeIdentifier.Label(0);
}

uint64_t sub_22C375948(uint64_t a1, uint64_t a2)
{

  return sub_22C4F59C4(a1, a2, 2112800, 0xE300000000000000, 0, 0xE000000000000000);
}

uint64_t sub_22C37596C()
{
  result = v0 + 8;
  v3 = *(v0 + 8);
  *(v1 - 152) = v0 + 8;
  return result;
}

uint64_t sub_22C3759A0(uint64_t result)
{
  v4 = *(v2 + 152);
  *(result + 16) = v1;
  *(result + 24) = v4;
  *(v3 + 32) = result | 0x4000000000000000;
  return result;
}

uint64_t sub_22C3759F4@<X0>(uint64_t a1@<X8>)
{
  result = *(a1 - 256);
  v3 = *(v1 - 280);
  return result;
}

uint64_t sub_22C375A18@<X0>(uint64_t a1@<X8>)
{
  *(v2 - 120) = a1;
  *(v2 - 104) = *(v1 + 456);
  v4 = *(v1 + 96);

  return sub_22C9087AC();
}

uint64_t sub_22C375A48()
{
  v5 = *(v2 + 48) + v1 * v3;
  result = v0;
  v7 = *(v4 - 104);
  return result;
}

uint64_t sub_22C375A84()
{
  v3 = *(v1 + 8);
  result = v0;
  v5 = *(v2 - 128);
  return result;
}

uint64_t sub_22C375A9C()
{
  result = v0 + 8;
  v3 = *(v0 + 8);
  v4 = *(v1 - 88);
  return result;
}

uint64_t sub_22C375AFC()
{
  *(v0 - 216) = 0;
  result = v1;
  v3 = *(v0 - 312);
  return result;
}

uint64_t sub_22C375B18()
{
  v3 = v0[19];
  v2 = v0[20];
  v5 = v0[15];
  v4 = v0[16];
  v6 = v0[12];
  v7 = v0[9];
}

uint64_t sub_22C375B58(uint64_t a1)
{
  *(a1 + 8) = sub_22C7B9638;
  result = *(v1 + 56);
  v3 = *(v1 + 24);
  return result;
}

uint64_t sub_22C375BB4(uint64_t a1, uint64_t a2)
{

  return sub_22C36C640(a1, a2, 1, v2);
}

uint64_t sub_22C375BDC()
{
  v2 = *(v0 + 48);
  v3 = *(v1 - 128);
  *(v1 - 136) = *(v3 + 72);
  v4 = *(v3 + 16);
  result = *(v1 - 176);
  v6 = *(v1 - 200);
  return result;
}

void sub_22C375C38()
{
  v1 = v0[16];
  v3 = v0[12];
  v2 = v0[13];
}

uint64_t sub_22C375C44()
{
  v2 = *(v1 - 216) + 8;
  result = v0;
  v4 = *(v1 - 128);
  return result;
}

uint64_t sub_22C375C88(uint64_t result)
{
  *(result + 8) = sub_22C8D8DE8;
  v2 = *(v1 + 424);
  return result;
}

void *sub_22C375CAC@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  result[4] = a2;
  result[5] = v2;
  result[6] = 8202;
  result[7] = 0xE200000000000000;
  return result;
}

void *sub_22C375CEC()
{

  return memcpy((v0 + 944), (v0 + 1152), 0xD0uLL);
}

uint64_t sub_22C375D08()
{
  v2 = *(v0 + 40);

  return sub_22C90B62C();
}

void sub_22C375D20()
{

  sub_22C62917C();
}

void sub_22C375D4C()
{
  v13 = v0[51];
  v14 = v0[50];
  v2 = v0[46];
  *(v1 - 208) = v0[47];
  *(v1 - 200) = v2;
  v3 = v0[44];
  *(v1 - 192) = v0[45];
  *(v1 - 184) = v3;
  v5 = v0[37];
  v4 = v0[38];
  *(v1 - 176) = v0[41];
  *(v1 - 168) = v4;
  v7 = v0[33];
  v6 = v0[34];
  *(v1 - 160) = v5;
  *(v1 - 152) = v6;
  v9 = v0[31];
  v8 = v0[32];
  *(v1 - 144) = v7;
  *(v1 - 136) = v8;
  v11 = v0[27];
  v10 = v0[28];
  *(v1 - 128) = v9;
  *(v1 - 120) = v10;
  v12 = v0[24];
  *(v1 - 112) = v11;
  *(v1 - 104) = v12;
}

uint64_t sub_22C375DD4()
{

  return swift_arrayDestroy();
}

uint64_t sub_22C375E20(unsigned __int8 *a1)
{
  v3 = *a1;
  v4 = &a1[*(v2 + 48)];
  return v1;
}

uint64_t sub_22C375E54()
{
}

uint64_t sub_22C375E94()
{

  return swift_allocObject();
}

id sub_22C375ED4(float a1)
{
  *v2 = a1;

  return v1;
}

uint64_t sub_22C375EEC()
{

  return swift_slowAlloc();
}

uint64_t sub_22C375F34()
{

  return sub_22C3A5908(v0, v1);
}

uint64_t sub_22C375FC8(uint64_t a1)
{
  result = sub_22C36C640(v1, 1, 1, a1);
  *(v2 - 104) = 0;
  return result;
}

void sub_22C376034(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t sub_22C37607C@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + a1);
  v4 = *v3;
  v5 = v3[1];
}

void sub_22C3760A4()
{

  sub_22C5975CC();
}

uint64_t sub_22C3760D4()
{
  v1 = v0[25];
  v2 = v0[2];
  sub_22C90877C();
  v3 = v0[25];
  v4 = v0[22];
  v5 = v0[19];
  v6 = v0[17];
  v7 = v0[18];
  v9 = v0[13];
  v8 = v0[14];
  sub_22C9068BC();
  sub_22C9021CC();
  (*(v7 + 8))(v5, v6);
  sub_22C90689C();
  if (sub_22C370B74(v9, 1, v8) == 1)
  {
    v10 = v0[13];
    v11 = v0[14];
    v12 = v0[16];
    _s30IntelligenceFlowPlannerRuntime25ResponseGenerationServiceC5setup14responseLocale20sessionIdentityToken13interactionId0K26WideOriginatingDeviceIDSId14genderSettingsy10Foundation0J0V_0abC7Support7SessionO0xlM0VSgAJ4UUIDVSgSSSg0aB006GenderU0VtYaKFfA3__0();
    v13 = sub_22C36CCF8();
    sub_22C36D0A8(v13, v14, v11);
    if (!v15)
    {
      sub_22C36DD28(v0[13], &qword_27D9C1350, &qword_22C92D1F0);
    }
  }

  else
  {
    (*(v0[15] + 32))(v0[16], v0[13], v0[14]);
  }

  v16 = v0[25];
  v17 = v0[12];
  v19 = v0[8];
  v18 = v0[9];
  v21 = v0[6];
  v20 = v0[7];
  v22 = v0[2];
  sub_22C90878C();
  sub_22C9087FC();
  v23 = *(v19 + 8);
  v24 = sub_22C36ECB4();
  v25(v24);
  sub_22C9068AC();
  v26 = sub_22C90212C();
  if (sub_22C370B74(v21, 1, v26) == 1)
  {
    sub_22C36DD28(v0[6], &qword_27D9BE068, &qword_22C91CE40);
    v27 = 0;
  }

  else
  {
    sub_22C90211C();
    v27 = v28;
    sub_22C36BBA8(v26);
    v30 = *(v29 + 8);
    v31 = sub_22C36BBCC();
    v32(v31);
  }

  v0[26] = v27;
  v34 = v0[11];
  v33 = v0[12];
  v35 = v0[10];
  v36 = v0[4];
  sub_22C37FBF8(*(v0[3] + 160), v0[5]);
  v37 = *(v34 + 16);
  v38 = sub_22C8D51C0();
  v39(v38);
  sub_22C36BECC();
  sub_22C36C640(v40, v41, v42, v35);
  v43 = swift_task_alloc();
  v0[27] = v43;
  *v43 = v0;
  v43[1] = sub_22C383A28;
  v44 = v0[22];
  v45 = v0[16];
  v46 = v0[3];

  return sub_22C380254();
}

uint64_t sub_22C37640C()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_22C382AF4;

  return sub_22C37649C();
}

uint64_t sub_22C37649C()
{
  sub_22C369980();
  v1[22] = v0;
  v2 = sub_22C90B0EC();
  v1[23] = v2;
  sub_22C3699B8(v2);
  v1[24] = v3;
  v5 = *(v4 + 64);
  v1[25] = sub_22C3699D4();
  v6 = sub_22C90B10C();
  v1[26] = v6;
  sub_22C3699B8(v6);
  v1[27] = v7;
  v9 = *(v8 + 64);
  v1[28] = sub_22C3699D4();

  return MEMORY[0x2822009F8](sub_22C377848, v0, 0);
}

void sub_22C3765C4(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t sub_22C3765E4()
{
  v2 = *(v0 - 152);
  v3 = *(v0 - 144);
  v4 = *(v0 - 88);

  return sub_22C90320C();
}

uint64_t sub_22C376628()
{
  v2 = *(v0 + 8);
  result = *(v1 - 352);
  v4 = *(v1 - 344);
  return result;
}

uint64_t sub_22C376688()
{

  return sub_22C901EDC();
}

void sub_22C3766C4()
{
  v1 = *(v0 - 312);
  v2 = *(v0 - 360);
  v3 = *(v0 - 384);
}

uint64_t sub_22C3766F8(unint64_t *a1)
{

  return sub_22C3D32C8(a1, v1, v2);
}

void sub_22C376758(__n128 *a1@<X8>, __n128 a2@<Q0>, __n128 a3@<Q1>)
{
  a1[2] = a2;
  a1[3] = a3;
  a1[4].n128_u64[0] = v3;
  a1[4].n128_u8[8] = v4;
}

uint64_t sub_22C3767CC()
{
  v3 = *(v0 + 56);
  v4 = *(v2 - 336);
  v5 = v3 + *(v4 + 72) * v1;
  v6 = *(v4 + 16);
  result = *(v2 - 248);
  v8 = *(v2 - 368);
  return result;
}

void sub_22C3767FC()
{
  v2 = v0[87];
  v3 = v0[86];
  v4 = v0[66];
  v5 = v0[65];
  *(v1 - 104) = v0[64];
  *(v1 - 96) = v4;
  *(v1 - 120) = v0[63];
  *(v1 - 112) = v5;
  v6 = v0[49];
  *(v1 - 136) = v3;
  *(v1 - 128) = v6;
}

void sub_22C376864(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t sub_22C376884@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a2 - 256);

  return sub_22C716438(a1, v3);
}

uint64_t sub_22C3768B4()
{
  result = *(v0 - 256);
  v3 = *(v1 - 376);
  return result;
}

uint64_t sub_22C3768C8()
{
}

void sub_22C3768E0()
{
  v1 = *(v0 - 88);
  *(v0 - 120) = v1 + 16;
  *(v0 - 112) = v1 + 32;
}

void sub_22C3768F8(uint64_t a1@<X8>)
{
  v2 = *(a1 - 256);
  *(v1 - 496) = v2 + 16;
  *(v1 - 504) = v2 + 32;
  *(v1 - 512) = v2 + 8;
}

void sub_22C376924(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v4, a3, a4, v5, 0x16u);
}

uint64_t sub_22C376940()
{

  return swift_slowAlloc();
}

uint64_t sub_22C376988()
{
  v2 = *(v0 + 552);

  return sub_22C7A6E8C(v2, type metadata accessor for DateResolver);
}

uint64_t sub_22C3769B0()
{
  v2 = *(v0 + 24);
}

uint64_t sub_22C3769D4()
{

  return sub_22C36F9F4(0xD000000000000059, (v0 - 32) | 0x8000000000000000, (v1 - 112));
}

unint64_t sub_22C3769FC()
{
  *(v1 + 16) = v0;
  v4 = *(v2 + 32);
  return v1 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v3;
}

void sub_22C376A28(uint64_t a1@<X8>)
{
  v2 = *(a1 - 256);
  v3 = *v2;
  v4 = v2[1];
  v5 = v2[2];

  JUMPOUT(0x2318B8B10);
}

unint64_t sub_22C376A64(uint64_t a1, uint64_t a2)
{
  *(v2 - 120) = a1;
  *(v2 - 112) = a2;
  *(v2 - 136) = 32;
  *(v2 - 128) = 0xE100000000000000;

  return sub_22C3858B4();
}

uint64_t sub_22C376A88()
{
  v1 = v0[487];
  v2 = v0[481];
  result = v0[475];
  v4 = v0[463];
  v5 = v0[445];
  v6 = v0[427];
  v7 = v0[421];
  v8 = v0[403];
  v9 = v0[397];
  return result;
}

uint64_t sub_22C376AB0()
{

  return sub_22C90B41C();
}

uint64_t sub_22C376AD4()
{
  v4 = *(v3 + 328);
  v5 = *(v3 + 520);
  v6 = *(v3 + 232);
  v7 = *(v3 + 56);
  v8 = *(v3 + 24);
  v9 = *(*(v3 + 48) + 48);
  *(v0 + 16) = v1;
  return v0 + ((v5 + 32) & ~v5) + v4 * v2;
}

uint64_t sub_22C376B1C()
{
  v3 = v0[27];
  v2 = v0[28];
  v5 = v0[23];
  v4 = v0[24];
  v7 = v0[19];
  v6 = v0[20];
  v9 = v0[15];
  v8 = v0[16];
}

uint64_t sub_22C376B84(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_22C3A5908(a2, a3);
  sub_22C36BBA8(v4);
  (*(v5 + 8))(a1);
  return a1;
}

uint64_t PlannerSpanMatchService.__deallocating_deinit()
{
  v1 = *(v0 + 112);

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t OnScreenContentRetrievalService.__deallocating_deinit()
{
  sub_22C36FF94((v0 + 16));
  sub_22C373A24();

  return swift_deallocClassInstance();
}

uint64_t sub_22C376C48()
{
  sub_22C36FF94((v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t ContextRetrievalService.__deallocating_deinit()
{
  sub_22C36FF94((v0 + 112));
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_22C376CB8()
{
  v1 = OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime25QueryDecorationSignposter_clock;
  v2 = sub_22C90B10C();
  sub_22C36985C(v2);
  (*(v3 + 8))(v0 + v1);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_22C376D4C()
{
  sub_22C376D78();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_22C376D78()
{
  v1 = *(v0 + 112);

  v2 = *(v0 + 128);

  sub_22C36DD28(v0 + OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime20QueryDecorationCache_keyLRU, &qword_27D9C0760, &qword_22C928BD8);
  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_22C376DDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    return sub_22C3725D8(*(a1 + 40));
  }

  v7 = sub_22C3A5908(&qword_27D9C06F8, &qword_22C929520);
  v8 = a1 + *(a3 + 32);

  return sub_22C370B74(v8, a2, v7);
}

void *ResponseGenerationService.deinit()
{
  v1 = v0[14];

  sub_22C36FF94(v0 + 15);
  v2 = v0[20];

  sub_22C36FF94(v0 + 21);
  sub_22C36DD28((v0 + 26), &qword_27D9C1368, &qword_22C92D220);
  sub_22C36DD28((v0 + 31), &qword_27D9C1360, &qword_22C92D218);
  sub_22C37275C();
  sub_22C36DD28(v3, v4, v5);
  sub_22C37275C();
  sub_22C36DD28(v6, v7, v8);
  v9 = v0[46];

  v10 = v0[47];

  sub_22C36DD28(v0 + OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime25ResponseGenerationService_otaPreferencesLock, &qword_27D9C1358, &qword_22C92D208);
  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_22C376F4C@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D1D8D8];
  v3 = sub_22C90645C();
  v4 = sub_22C36985C(v3);
  v6 = *(v5 + 104);

  return v6(a1, v2, v4);
}

uint64_t sub_22C376FB8()
{
  v1 = *(v0 + 112);

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t ResponseGenerationService.__deallocating_deinit()
{
  ResponseGenerationService.deinit();

  return MEMORY[0x282200960](v0);
}

uint64_t ToolboxResources.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime16ToolboxResources_toolbox;
  v2 = sub_22C908AEC();
  sub_22C36985C(v2);
  (*(v3 + 8))(v0 + v1);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_22C3770B0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_22C3A5908(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_22C377110()
{
  sub_22C3770B0(v0 + OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime33DefaultCATResponseDialogGenerator_defaultTemplateFolder, &qword_27D9BB138, &qword_22C90DB70);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t ResponseGenerationBiomeRoot.__deallocating_deinit()
{
  ResponseGenerationBiomeRoot.deinit();

  return swift_deallocClassInstance();
}

void *ResponseGenerationBiomeRoot.deinit()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[5];

  v5 = v0[6];

  v6 = v0[7];

  v7 = v0[8];

  if (v0[12] >= 2uLL)
  {
    sub_22C36FF94(v0 + 9);
  }

  return v0;
}

uint64_t ResponseGenerationPreferencesDomain.ResponseGenerationPreferences.__deallocating_deinit()
{
  ResponseGenerationPreferencesDomain.ResponseGenerationPreferences.deinit();

  return swift_deallocClassInstance();
}

void *ResponseGenerationPreferencesDomain.ResponseGenerationPreferences.deinit()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[6];

  v4 = v0[8];

  v5 = v0[10];

  v6 = v0[12];

  v7 = v0[14];

  v8 = v0[16];

  return v0;
}

uint64_t sub_22C3772A8()
{

  return sub_22C90A0BC();
}

uint64_t sub_22C377328()
{

  return sub_22C90B4FC();
}

uint64_t sub_22C377384()
{
  v3 = *(v0 + 104);
  result = v1;
  v5 = *(v2 - 356);
  v6 = *(v2 - 168);
  return result;
}

uint64_t sub_22C37740C()
{

  return type metadata accessor for FullPlannerPreferences();
}

int32x4_t sub_22C377424@<Q0>(unsigned int a1@<W0>, int32x4_t *a2@<X8>)
{
  result = vdupq_n_s32(a1);
  v3 = vmovn_s16(vuzp1q_s16(vceqq_s32(result, *a2), vceqq_s32(result, a2[1])));
  return result;
}

uint64_t sub_22C377464(uint64_t result)
{
  *(result + 16) = v1;
  *(v3 + 32) = result;
  *(v2 + 32) = v4;
  *(v2 + 40) = v3 | 0xA000000000000002;
  return result;
}

uint64_t sub_22C3774C0(uint64_t a1, uint64_t a2)
{
  v4 = *(v2 - 176);
  v5 = *(v2 - 160);

  return MEMORY[0x2821FBD60](a1, a2, v4, v5);
}

uint64_t sub_22C3774E0()
{
  *(v1 + 168) = *(v2 + 8);
  *(v1 + 176) = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  return v0;
}

uint64_t sub_22C3774FC(uint64_t a1)
{
  *(v1 + 352) = a1;
  v3 = *(*(v1 + 104) + 8);
  return v2;
}

uint64_t sub_22C377534@<X0>(__n128 *a1@<X1>, unint64_t a2@<X8>, __n128 a3@<Q0>, __n128 a4@<Q1>)
{
  *a1 = a4;
  a1[1] = a3;
  a1[2].n128_u64[0] = a2;

  return swift_willThrow();
}

uint64_t sub_22C377550()
{
  v2 = *(v0 + 72);
  v3 = (*(v0 + 80) + 32) & ~*(v0 + 80);

  return swift_allocObject();
}

uint64_t sub_22C377590@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 - 120);
  v3 = *(v2 + 72);
  *(v1 - 112) = a1 + 1;
  v4 = *(v1 - 136) + v3 * a1;
  v5 = *(v2 + 16);
  result = *(v1 - 88);
  v7 = *(v1 - 104);
  return result;
}

uint64_t sub_22C3775C0(uint64_t a1)
{

  return sub_22C601DAC(a1, v1, type metadata accessor for JointResolution.DeviceContext);
}

void sub_22C377600(uint64_t a1@<X8>)
{
  v2 = *(v1 + 232);
  v3 = *(v1 + 96);
  v4 = *(a1 + 80);
  v5 = *(a1 + 72);
}

void sub_22C377620(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t sub_22C377680(uint64_t a1, unint64_t a2)
{

  return sub_22C36F9F4(0xD00000000000001ALL, a2, (v2 - 88));
}

uint64_t sub_22C3776A8(uint64_t a1)
{
  *(a1 + 8) = sub_22C781D78;
  v2 = *(v1 + 40);
  return *(v1 + 704);
}

void sub_22C377700(uint64_t *a1)
{
  v2 = *a1;

  sub_22C37931C();
}

void sub_22C377780()
{
  v3 = *(v1 + 48);
  *(v2 - 112) = *(v0 + 72);
  v4 = *(v2 - 132);
}

uint64_t sub_22C3777BC(uint64_t result)
{
  *(result + 8) = sub_22C8BEFE8;
  v2 = *(v1 + 272);
  v3 = *(v1 + 256);
  return result;
}

uint64_t sub_22C3777E4()
{
  result = v0[101];
  v2 = v0[98];
  v3 = v0[97];
  v4 = v0[96];
  v5 = v0[95];
  v6 = v0[92];
  v7 = v0[91];
  v8 = v0[90];
  v9 = v0[89];
  v10 = v0[86];
  v11 = v0[85];
  v12 = v0[84];
  return result;
}

uint64_t sub_22C377818@<X0>(uint64_t a1@<X8>)
{
  v4 = v1 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * a1;

  return swift_arrayInitWithCopy();
}

uint64_t sub_22C377848()
{
  v1 = v0[28];
  v2 = v0[25];
  v3 = v0[24];
  v18 = v0[23];
  v19 = v0[26];
  v4 = v0[22];
  v5 = v4[16];
  v16 = v0[27];
  v17 = v4[15];
  v6 = v4[17];
  sub_22C378A4C((v4 + 23), (v0 + 2));
  DecorationSignposter = type metadata accessor for QueryDecorationSignposter(0);
  v8 = *(DecorationSignposter + 48);
  v9 = *(DecorationSignposter + 52);
  v10 = swift_allocObject();

  sub_22C90B0FC();
  v0[10] = DecorationSignposter;
  v0[11] = &off_283FC1370;
  v0[7] = v10;

  sub_22C90B0FC();
  sub_22C90B0CC();
  type metadata accessor for QueryDecorator();
  sub_22C377A58(v0 + 7);
  sub_22C378A4C((v0 + 2), (v0 + 17));
  swift_allocObject();

  sub_22C36EFB8();
  v12 = v11;
  sub_22C389A50(v0 + 12, v6);
  sub_22C36FF94(v0 + 12);
  (*(v3 + 8))(v2, v18);
  (*(v16 + 8))(v1, v19);
  sub_22C36FF94(v0 + 2);
  sub_22C36FF94(v0 + 7);
  v13 = v4[14];
  v4[14] = v12;

  sub_22C369A24();

  return v14();
}

uint64_t sub_22C377A58(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  sub_22C374168(a1, v1);
  type metadata accessor for QueryDecorationSignpost();
  inited = swift_initStaticObject();
  return (*(v2 + 8))(inited, v1, v2);
}

uint64_t sub_22C377B20@<X0>(uint64_t a1@<X8>)
{
  result = v1;
  *(v2 - 128) = *(a1 + 8);
  return result;
}

uint64_t sub_22C377B34()
{

  return sub_22C90069C();
}

uint64_t sub_22C377B80()
{
  result = v0[12];
  v2 = v0[14];
  v3 = v0[16];
  return result;
}

void sub_22C377BD4()
{
  v1 = v0[54];
  v2 = v0[33];
  v3 = v0[51];
  v5 = v0[47];
  v4 = v0[48];
  v7 = v0[44];
  v6 = v0[45];
  v8 = v0[42];
}

uint64_t sub_22C377C2C()
{

  return sub_22C456C94(v0, 0);
}

uint64_t sub_22C377CA0()
{

  return swift_beginAccess();
}

uint64_t sub_22C377CF4()
{

  return sub_22C901F0C();
}

char *sub_22C377D1C@<X0>(uint64_t a1@<X8>)
{
  v3 = v2[82];
  v4 = v2[81];
  v5 = v2[74];
  v6 = v2[73];
  v7 = *(v5 + 16);
  v8 = v1 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * a1;
  v9 = *(v2[80] + 48);
  *v4 = a1;
  return v4 + v9;
}

uint64_t sub_22C377D90()
{
  v1 = **(v0 - 400);
  result = *(v0 - 352);
  v3 = *(v0 - 376);
  return result;
}

uint64_t sub_22C377DCC@<X0>(uint64_t a1@<X8>)
{
  *(v2 - 80) = a1;
  result = v1[90];
  v4 = v1[89];
  v5 = v1[88];
  v6 = v1[87];
  v7 = v1[86];
  v8 = v1[85];
  v9 = v1[84];
  v10 = v1[81];
  return result;
}

double sub_22C377E18@<D0>(uint64_t a1@<X8>)
{
  *v1 = a1;
  result = 0.0;
  *(v1 + 8) = 0u;
  *(v1 + 24) = 0u;
  return result;
}

uint64_t sub_22C377E2C(uint64_t result)
{
  *(result + 16) = 0x766E695F6C6F6F74;
  *(result + 24) = 0xEF6E6F697461636FLL;
  return result;
}

void sub_22C377E7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v8 = *(v6 - 720);
  v9 = *(v6 - 712);
  v10 = *(v6 - 704);
  v11 = *(v6 - 696);
  v12 = *(v6 - 680);

  sub_22C456CE4(v8, v9, v10, v11, v12, a6);
}

uint64_t sub_22C377EB4@<X0>(unsigned int *a1@<X8>)
{
  v2 = *a1;
  v3 = *(*(v1 - 280) + 104);
  result = *(v1 - 288);
  v5 = *(v1 - 272);
  return result;
}

uint64_t sub_22C377F0C()
{

  return sub_22C909F0C();
}

uint64_t sub_22C377F60()
{
  v2 = v0[47];
  v3 = v0[44];
  v4 = v0[45];
  v5 = v0[42];
  result = v0[30];
  v7 = v0[27];
  v8 = v0[14];
  *(v1 - 96) = v0[12];
  *(v1 - 88) = v5;
  v9 = v0[7];
  return result;
}

uint64_t sub_22C378064()
{
  result = v0[230];
  v2 = v0[229];
  v3 = v0[228];
  v4 = v0[227];
  v5 = v0[224];
  v6 = v0[223];
  v7 = v0[222];
  v8 = v0[221];
  v9 = v0[220];
  v10 = v0[219];
  v13 = v0[218];
  v14 = v0[217];
  v15 = v0[216];
  v16 = v0[215];
  v17 = v0[214];
  v18 = v0[213];
  v19 = v0[210];
  v20 = v0[209];
  v21 = v0[208];
  v22 = v0[205];
  v23 = v0[204];
  v24 = v0[203];
  v25 = v0[202];
  v26 = v0[201];
  v27 = v0[200];
  v28 = v0[197];
  v29 = v0[196];
  v30 = v0[194];
  v31 = v0[193];
  v32 = v0[192];
  v33 = v0[191];
  v34 = v0[188];
  v35 = v0[187];
  v36 = v0[186];
  v37 = v0[185];
  v38 = v0[182];
  v39 = v0[181];
  v40 = v0[180];
  v41 = v0[179];
  v42 = v0[178];
  v43 = v0[175];
  v44 = v0[172];
  v45 = v0[171];
  v46 = v0[170];
  v47 = v0[169];
  v48 = v0[166];
  v49 = v0[165];
  v50 = v0[164];
  v51 = v0[161];
  v52 = v0[160];
  v53 = v0[157];
  v54 = v0[154];
  v55 = v0[153];
  v56 = v0[152];
  v57 = v0[149];
  v58 = v0[147];
  v59 = v0[146];
  v60 = v0[145];
  v61 = v0[144];
  v62 = v0[143];
  v63 = v0[142];
  v64 = v0[141];
  v65 = v0[140];
  v66 = v0[137];
  v67 = v0[136];
  v68 = v0[135];
  v69 = v0[134];
  v70 = v0[133];
  v71 = v0[132];
  v72 = v0[131];
  v73 = v0[128];
  v74 = v0[125];
  STACK[0x200] = v0[124];
  STACK[0x208] = v0[123];
  STACK[0x210] = v0[122];
  STACK[0x218] = v0[121];
  STACK[0x220] = v0[118];
  STACK[0x228] = v0[117];
  STACK[0x230] = v0[116];
  STACK[0x238] = v0[113];
  STACK[0x240] = v0[110];
  STACK[0x248] = v0[109];
  STACK[0x250] = v0[108];
  STACK[0x258] = v0[107];
  STACK[0x260] = v0[104];
  STACK[0x268] = v0[101];
  STACK[0x270] = v0[100];
  STACK[0x278] = v0[97];
  STACK[0x280] = v0[94];
  STACK[0x288] = v0[93];
  STACK[0x290] = v0[90];
  STACK[0x298] = v0[87];
  STACK[0x2A0] = v0[86];
  STACK[0x2A8] = v0[83];
  STACK[0x2B0] = v0[82];
  STACK[0x2B8] = v0[79];
  STACK[0x2C0] = v0[76];
  STACK[0x2C8] = v0[75];
  STACK[0x2D0] = v0[74];
  STACK[0x2D8] = v0[73];
  STACK[0x2E0] = v0[72];
  STACK[0x2E8] = v0[71];
  STACK[0x2F0] = v0[70];
  STACK[0x2F8] = v0[69];
  STACK[0x300] = v0[66];
  STACK[0x308] = v0[65];
  v11 = v0[61];
  v12 = v0[62];
  return result;
}

uint64_t sub_22C378318()
{
  result = v0[193];
  v2 = v0[192];
  v3 = v0[191];
  v4 = v0[190];
  v5 = v0[189];
  v6 = v0[188];
  v7 = v0[187];
  v8 = v0[186];
  v9 = v0[185];
  v10 = v0[184];
  v12 = v0[183];
  v13 = v0[180];
  v14 = v0[179];
  v15 = v0[176];
  v16 = v0[175];
  v17 = v0[174];
  v18 = v0[173];
  v19 = v0[172];
  v20 = v0[171];
  v21 = v0[170];
  v22 = v0[167];
  v23 = v0[166];
  v24 = v0[165];
  v25 = v0[164];
  v26 = v0[163];
  v27 = v0[162];
  v28 = v0[161];
  v29 = v0[160];
  v30 = v0[157];
  v31 = v0[154];
  v32 = v0[151];
  v33 = v0[148];
  v34 = v0[145];
  v35 = v0[144];
  v36 = v0[143];
  v37 = v0[142];
  v38 = v0[141];
  v39 = v0[140];
  v40 = v0[139];
  v41 = v0[138];
  v42 = v0[137];
  v43 = v0[136];
  v44 = v0[135];
  v45 = v0[134];
  v46 = v0[133];
  v47 = v0[132];
  v48 = v0[130];
  v49 = v0[129];
  v50 = v0[128];
  v51 = v0[127];
  v52 = v0[126];
  v53 = v0[125];
  v54 = v0[124];
  v55 = v0[123];
  v56 = v0[122];
  v57 = v0[121];
  v58 = v0[120];
  v59 = v0[117];
  v60 = v0[116];
  v61 = v0[115];
  v62 = v0[114];
  v63 = v0[113];
  v64 = v0[112];
  v65 = v0[111];
  v66 = v0[110];
  v67 = v0[109];
  v68 = v0[108];
  v69 = v0[107];
  v70 = v0[105];
  v71 = v0[104];
  v11 = v0[103];
  v72 = v0[102];
  STACK[0x200] = v0[101];
  STACK[0x208] = v0[98];
  STACK[0x210] = v0[97];
  STACK[0x218] = v0[96];
  STACK[0x220] = v0[95];
  STACK[0x228] = v0[94];
  STACK[0x230] = v0[91];
  STACK[0x238] = v0[90];
  STACK[0x240] = v0[89];
  STACK[0x248] = v0[88];
  STACK[0x250] = v0[87];
  STACK[0x258] = v0[84];
  STACK[0x260] = v0[83];
  STACK[0x268] = v0[82];
  STACK[0x270] = v0[81];
  STACK[0x278] = v0[80];
  return result;
}

uint64_t sub_22C378550()
{
}

uint64_t sub_22C378568()
{
  v2 = ((*(*(v0 - 104) + 80) + 32) & ~*(*(v0 - 104) + 80)) + *(*(v0 - 104) + 72);

  return swift_allocObject();
}

uint64_t sub_22C378594()
{
  v2 = v0[54];
  v3 = v0[55];
  v4 = v0[49];
  v5 = v0[50];
  v6 = v0[48];
  v7 = v0[44];
  v8 = v0[35];
  v9 = *(v3 + 16);
  v10 = v0[30] + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v1;
  return v0[29];
}

uint64_t sub_22C3785D0()
{
  v1 = *(*(v0 - 536) + 8);
  result = *(v0 - 1064);
  v3 = *(v0 - 152);
  return result;
}

uint64_t sub_22C3785EC(uint64_t a1, void *a2)
{
  *a2 = v2;
  a2[1] = v3;

  return swift_willThrow();
}

__n128 sub_22C378608(__n128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a9)
{
  result = a9;
  a1[1] = a9;
  return result;
}

__n128 sub_22C378620(__n128 *a1)
{
  result = v1[12];
  a1[1] = result;
  return result;
}

uint64_t sub_22C378678@<X0>(uint64_t a1@<X8>)
{

  return sub_22C36F9F4(0xD000000000000025, (a1 - 32) | 0x8000000000000000, (v1 - 104));
}

void sub_22C37869C()
{

  JUMPOUT(0x2318B9880);
}

uint64_t sub_22C3786E8(uint64_t a1)
{
  *(a1 + 8) = sub_22C76E448;
  result = *(v1 + 40);
  v3 = *(v1 + 24);
  return result;
}

uint64_t sub_22C378718()
{
  result = v0[87];
  v2 = v0[86];
  v3 = v0[85];
  v4 = v0[84];
  v5 = v0[83];
  v6 = v0[82];
  v7 = v0[81];
  v8 = v0[80];
  return result;
}

uint64_t sub_22C378774()
{
  v2 = v0[100];
  v3 = v0[81];
  v4 = v0[75];
  v5 = v0[74];
  v6 = *(v0[101] + 96);
  return v1;
}

void *sub_22C3787B0(uint64_t a1)
{
  *(a1 + 8) = sub_22C7C1BC8;
  v2 = v1[39];
  v3 = v1[37];
  v4 = v1[31];
  return v1 + 18;
}

uint64_t sub_22C378808()
{
  result = type metadata accessor for QueryDecorationEntity(0);
  v1 = *(result + 20);
  return result;
}

uint64_t sub_22C378840(uint64_t result)
{
  v1 = *(result + 56);
  *(result + 32);
  return result;
}

uint64_t sub_22C378868()
{
  result = v0;
  *(v1 - 232) = *(*(v1 - 112) + 8);
  return result;
}

void sub_22C378880()
{

  sub_22C590270();
}

uint64_t sub_22C3788C4(uint64_t a1)
{
  *(a1 + 8) = sub_22C8287E8;
  v2 = v1[26];
  result = v1[23];
  v4 = v1[24];
  return result;
}

uint64_t sub_22C37890C(unint64_t *a1)
{

  return sub_22C386908(a1);
}

uint64_t sub_22C378930()
{
  result = v0;
  v3 = *(v1 - 104);
  return result;
}

uint64_t sub_22C378970()
{
  v3 = v0[27];
  v2 = v0[28];
  v5 = v0[23];
  v4 = v0[24];
  v7 = v0[19];
  v6 = v0[20];
  v9 = v0[15];
  v8 = v0[16];
}

uint64_t sub_22C3789D4(uint64_t a1)
{
  sub_22C36C640(v1, 1, 1, a1);
  result = v2 + 8;
  v4 = *(v2 + 8);
  return result;
}

uint64_t sub_22C378A00()
{

  return sub_22C90B4FC();
}

id sub_22C378A34(uint64_t a1, const char *a2)
{

  return [v2 a2];
}

uint64_t sub_22C378A4C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_22C378AB0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  sub_22C36BBA8(v3);
  (*v4)(a2);
  return a2;
}

void sub_22C378B10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  sub_22C36BA7C();
  v100 = v24;
  v101 = v23;
  v98 = v26;
  v99 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v35 = sub_22C9063DC();
  v36 = sub_22C369824(v35);
  v38 = v37;
  v40 = *(v39 + 64);
  MEMORY[0x28223BE20](v36);
  sub_22C369ABC();
  v93 = (v41 - v42);
  v44 = MEMORY[0x28223BE20](v43);
  v94 = &v90 - v45;
  MEMORY[0x28223BE20](v44);
  v47 = &v90 - v46;
  v107[3] = type metadata accessor for ContextRetrievalService();
  v107[4] = &off_283FC1488;
  v107[0] = v28;
  sub_22C90B0FC();
  sub_22C90400C();

  v48 = sub_22C9063CC();
  v49 = sub_22C90AABC();

  if (os_log_type_enabled(v48, v49))
  {
    v50 = swift_slowAlloc();
    v96 = v34;
    v51 = v50;
    v52 = swift_slowAlloc();
    v95 = v30;
    *&v104 = v52;
    *v51 = 136315650;
    *(v51 + 4) = sub_22C385840("contextRetrieval");
    v91 = v38;
    *(v51 + 12) = 2080;
    v92 = v35;
    if (v32)
    {
      v53 = v96;
    }

    else
    {
      v53 = 0x3E6C696E3CLL;
    }

    if (v32)
    {
      v54 = v32;
    }

    else
    {
      v54 = 0xE500000000000000;
    }

    v55 = sub_22C36F9F4(v53, v54, &v104);

    *(v51 + 14) = v55;
    *(v51 + 22) = 2080;
    v56 = [objc_opt_self() callStackSymbols];
    v57 = MEMORY[0x277D837D0];
    v58 = sub_22C90A5EC();

    v59 = MEMORY[0x2318B7B00](v58, v57);
    v61 = v60;

    v62 = v59;
    v35 = v92;
    v63 = sub_22C36F9F4(v62, v61, &v104);
    v34 = v96;

    *(v51 + 24) = v63;
    v38 = v91;
    _os_log_impl(&dword_22C366000, v48, v49, "%s QueryDecorationCollector initializer (clientApplicationId: %s) %s", v51, 0x20u);
    swift_arrayDestroy();
    v30 = v95;
    sub_22C3699EC();
    sub_22C3699EC();
  }

  v97 = *(v38 + 8);
  v97(v47, v35);
  sub_22C378AB0(v107, a23 + 56);
  *(a23 + 152) = v98;
  sub_22C3E8FB4(v100, &v102, &qword_27D9C0A48, &qword_22C929E58);
  if (v103)
  {
    sub_22C36C730(&v102, &v104);
  }

  else
  {
    matched = type metadata accessor for PlannerSpanMatchService();
    v65 = swift_allocObject();

    swift_defaultActor_initialize();
    sub_22C907D8C();
    *(v65 + 112) = sub_22C907D7C();
    v105 = matched;
    v106 = &off_283FC14C0;
    *&v104 = v65;
    if (v103)
    {
      sub_22C36DD28(&v102, &qword_27D9C0A48, &qword_22C929E58);
    }
  }

  v96 = a22;
  sub_22C36C730(&v104, a23 + 96);
  sub_22C3E8FB4(v30, &v102, &qword_27D9C01C8, &qword_22C9298B0);
  if (v103)
  {
    sub_22C36C730(&v102, &v104);
  }

  else
  {
    v105 = &type metadata for QueryDecorationFallbackNoOpCache;
    v106 = &off_283FC1A58;
  }

  sub_22C36C730(&v104, a23 + 208);
  *(a23 + 144) = v99;
  *(a23 + 248) = v34;
  *(a23 + 256) = v32;
  *(a23 + 160) = a21;
  type metadata accessor for TrialManager();
  swift_allocObject();

  v66 = sub_22C36E65C(1);
  *(a23 + 192) = &type metadata for QueryDecorationFeatureControl;
  *(a23 + 200) = &off_283FC14D0;
  *(a23 + 168) = v66;
  if (*(v101 + 24))
  {
    v67 = v94;
    sub_22C90400C();
    v68 = sub_22C9063CC();
    v69 = sub_22C90AACC();
    if (os_log_type_enabled(v68, v69))
    {
      v70 = swift_slowAlloc();
      v95 = v30;
      v71 = v70;
      v72 = v35;
      v73 = swift_slowAlloc();
      *&v104 = v73;
      *v71 = 136315138;
      *(v71 + 4) = sub_22C385840("contextRetrieval");
      _os_log_impl(&dword_22C366000, v68, v69, "%s Running with supplied ToolRetrievalService", v71, 0xCu);
      sub_22C36FF94(v73);
      sub_22C3699EC();
      sub_22C3699EC();

      sub_22C36DD28(v100, &qword_27D9C0A48, &qword_22C929E58);
      sub_22C36DD28(v95, &qword_27D9C01C8, &qword_22C9298B0);
      v74 = v67;
      v75 = v72;
    }

    else
    {

      sub_22C36DD28(v100, &qword_27D9C0A48, &qword_22C929E58);
      sub_22C36DD28(v30, &qword_27D9C01C8, &qword_22C9298B0);
      v74 = v67;
      v75 = v35;
    }

    v97(v74, v75);
    sub_22C36FF94(v107);
    v88 = v101;
    v89 = *(v101 + 16);
    *(a23 + 16) = *v101;
    *(a23 + 32) = v89;
    *(a23 + 48) = *(v88 + 32);
  }

  else
  {
    v76 = v93;
    sub_22C90400C();
    v77 = sub_22C9063CC();
    v78 = sub_22C90AABC();
    if (sub_22C36D08C(v78))
    {
      swift_slowAlloc();
      v79 = v35;
      v80 = sub_22C862E80();
      *&v104 = v80;
      *v32 = 136315138;
      *(v32 + 4) = sub_22C385840("contextRetrieval");
      sub_22C374ED0();
      _os_log_impl(v81, v82, v83, v84, v85, 0xCu);
      sub_22C36FF94(v80);
      sub_22C3699EC();
      sub_22C36BAE0();

      sub_22C36DD28(v100, &qword_27D9C0A48, &qword_22C929E58);
      sub_22C36DD28(v30, &qword_27D9C01C8, &qword_22C9298B0);
      v86 = v76;
      v87 = v79;
    }

    else
    {

      sub_22C36DD28(v100, &qword_27D9C0A48, &qword_22C929E58);
      sub_22C36DD28(v30, &qword_27D9C01C8, &qword_22C9298B0);
      v86 = v76;
      v87 = v35;
    }

    v97(v86, v87);
    sub_22C36FF94(v107);
    sub_22C36DD28(v101, &qword_27D9C0990, &qword_22C929780);
    *(a23 + 16) = 0u;
    *(a23 + 32) = 0u;
    *(a23 + 48) = 0;
  }

  *(a23 + 136) = 0;
  sub_22C36CC48();
}

void sub_22C37931C()
{
  sub_22C36BA7C();
  v50 = v2;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = sub_22C9063DC();
  v12 = sub_22C369824(v11);
  v51 = v13;
  v52 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v12);
  sub_22C36993C();
  MEMORY[0x28223BE20](v16);
  v18 = &v50 - v17;
  v19 = sub_22C3A5908(&qword_27D9BE030, &qword_22C91CD20);
  sub_22C369824(v19);
  v21 = v20;
  v23 = *(v22 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v24);
  sub_22C381AB0();
  v54 = v6;
  sub_22C901E6C();
  swift_bridgeObjectRetain_n();
  sub_22C3806B8();
  sub_22C901F0C();
  sub_22C901F1C();
  (*(v21 + 8))(v0, v19);
  if (v55)
  {
    if (v4)
    {
      v25 = sub_22C5882C8(v50, v10, v8, v6);

      sub_22C90400C();

      v26 = sub_22C9063CC();
      v27 = sub_22C90AACC();

      if (os_log_type_enabled(v26, v27))
      {
        v28 = sub_22C370060();
        v54 = swift_slowAlloc();
        *v28 = 136315650;
        v29 = sub_22C3806B8();
        *(v28 + 4) = sub_22C36F9F4(v29, v30, v31);
        *(v28 + 12) = 2080;
        v53 = v25;
        v50 = v25;
        v32 = sub_22C90A1AC();
        v34 = sub_22C36F9F4(v32, v33, &v54);

        *(v28 + 14) = v34;
        *(v28 + 22) = 2080;
        v53 = v6;
        v35 = sub_22C90A1AC();
        v37 = sub_22C36F9F4(v35, v36, &v54);

        *(v28 + 24) = v37;
        _os_log_impl(&dword_22C366000, v26, v27, "QueryDecorationFactor %s was returned as %s. Default is %s", v28, 0x20u);
        swift_arrayDestroy();
        sub_22C3699EC();
        sub_22C3699EC();
      }

      (*(v51 + 8))(v1, v52);
    }

    else
    {
    }
  }

  else
  {
    v38 = v54;

    sub_22C90400C();

    v39 = sub_22C9063CC();
    v40 = sub_22C90AACC();

    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      *v41 = 136315394;
      v42 = sub_22C3806B8();
      *(v41 + 4) = sub_22C36F9F4(v42, v43, v44);
      *(v41 + 12) = 2080;
      v53 = v38;
      v45 = sub_22C90A1AC();
      v47 = sub_22C36F9F4(v45, v46, &v54);

      *(v41 + 14) = v47;
      sub_22C58AAB8(&dword_22C366000, v48, v49, "QueryDecorationFactor %s was set via UserDefaults to %s");
      swift_arrayDestroy();
      sub_22C3699EC();
      sub_22C3699EC();
    }

    (*(v51 + 8))(v18, v52);
  }

  sub_22C36CC48();
}

uint64_t sub_22C3797A8()
{

  return swift_arrayInitWithCopy();
}

void sub_22C379820()
{
  v2 = v0[40];
  v1 = v0[41];
  v4 = v0[38];
  v3 = v0[39];
  v6 = v0[36];
  v5 = v0[37];
  v7 = v0[33];
  v9 = v0[29];
  v8 = v0[30];
}

unint64_t sub_22C379890(unint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4)
{

  return sub_22C4A7FB0(a1, a3, a4);
}

uint64_t sub_22C3798B4()
{

  return sub_22C901EDC();
}

uint64_t sub_22C3798CC()
{
}

uint64_t sub_22C3798E4()
{
  v2 = v0[79];
  v3 = v0[76];
  v4 = v0[75];
  v5 = v0[74];
  v6 = v0[73];
  v7 = v0[39];

  return sub_22C903F7C();
}

uint64_t sub_22C379928()
{

  return swift_slowAlloc();
}

uint64_t sub_22C379944()
{
  v2 = *(v0 - 392);
}

uint64_t sub_22C379968(unint64_t *a1)
{

  return sub_22C5AADDC(a1);
}

uint64_t sub_22C37998C(uint64_t a1, void *a2)
{
  *a2 = v3;
  a2[1] = v2;

  return swift_willThrow();
}

void sub_22C3799BC()
{
  if (*(*v0 + 24) > v1)
  {
    v2 = *(*v0 + 24);
  }
}

uint64_t sub_22C3799D0()
{
  result = v1 + v0;
  v4 = *(v2 - 320);
  v5 = *(v2 - 272);
  return result;
}

void sub_22C3799F0()
{
  v8 = *(v1 + 824);
  *(v0 + 16) = v3;
  v9 = v0 + 16 * v2;
  *(v9 + 32) = v6;
  *(v9 + 40) = v4;
  v10 = v5 + *(v7 - 120);
}

uint64_t sub_22C379A2C()
{
  v3 = v0[46];
  *(v1 - 200) = v0[47];
  *(v1 - 192) = v3;
  v4 = v0[44];
  *(v1 - 184) = v0[45];
  *(v1 - 176) = v4;
  v6 = v0[37];
  v5 = v0[38];
  *(v1 - 168) = v0[41];
  *(v1 - 160) = v5;
  v8 = v0[33];
  v7 = v0[34];
  *(v1 - 152) = v6;
  *(v1 - 144) = v7;
  v10 = v0[31];
  v9 = v0[32];
  *(v1 - 136) = v8;
  *(v1 - 128) = v9;
  v12 = v0[27];
  v11 = v0[28];
  *(v1 - 120) = v10;
  *(v1 - 112) = v11;
  v13 = v0[24];
  *(v1 - 104) = v12;
  *(v1 - 96) = v13;
}

uint64_t sub_22C379A84(unint64_t *a1)
{

  return sub_22C4E9D34(a1);
}

uint64_t sub_22C379ABC(uint64_t a1)
{
  *(v1 + 40) = a1;

  return sub_22C90ABEC();
}

uint64_t sub_22C379AD8()
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

uint64_t sub_22C379B1C()
{
  v10 = v0[48];
  v11 = v0[47];
  v3 = v0[43];
  *(v1 - 184) = v0[44];
  *(v1 - 176) = v3;
  v4 = v0[41];
  *(v1 - 168) = v0[42];
  *(v1 - 160) = v4;
  v6 = v0[36];
  v5 = v0[37];
  *(v1 - 152) = v0[40];
  *(v1 - 144) = v5;
  v7 = v0[33];
  *(v1 - 136) = v6;
  *(v1 - 128) = v7;
  v8 = v0[30];
  *(v1 - 120) = v0[31];
  *(v1 - 112) = v8;
}

uint64_t sub_22C379B94()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

uint64_t sub_22C379BB0(uint64_t a1)
{

  return sub_22C370B74(v1, 1, a1);
}

void sub_22C379BF8()
{
  *(v0 - 96) = 11763938;
  *(v0 - 88) = 0xA300000000000000;
  *(v0 - 112) = 34;
  *(v0 - 104) = 0xE100000000000000;
}

void sub_22C379C68()
{
  v2 = v0[15];
  v1 = v0[16];
  v3 = v0[14];
  v5 = v0[6];
  v4 = v0[7];
  v6 = v0[5];
}

uint64_t sub_22C379CB0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 40) = (a2 - 1);
  }

  else
  {
    v7 = sub_22C3A5908(&qword_27D9C06F8, &qword_22C929520);
    v8 = v5 + *(a4 + 32);

    return sub_22C36C640(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_22C379DF8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = sub_22C3A5908(a3, a4);
  sub_22C36985C(v5);
  v7 = *(v6 + 16);
  v8 = sub_22C36BA00();
  v9(v8);
  return a2;
}

uint64_t type metadata accessor for QueryDecorationServiceCaller()
{
  result = qword_281431530;
  if (!qword_281431530)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22C379F0C(uint64_t a1, uint64_t a2)
{
  *(v4 - 248) = a2;
  *(v4 - 240) = a1;
  v5 = *(v2 + 8);
  result = v3;
  v7 = *(v4 - 120);
  return result;
}

uint64_t sub_22C379F24(uint64_t a1)
{
  sub_22C36C640(v2 + v3, 1, 1, a1);
  *(v4 + 96) = *(v1 + 28);

  return sub_22C90068C();
}

uint64_t sub_22C379F64()
{
  v1 = v0[81];
  v2 = v0[80];
  v3 = v0[78];
  v4 = v0[71];
  result = v0[52];
  v6 = v0[49];
  v7 = *(v0[50] + 8);
  return result;
}

uint64_t sub_22C379FAC()
{
  v1 = *(*(v0 - 248) + 8);
  result = *(v0 - 320);
  v3 = *(v0 - 272);
  return result;
}

uint64_t sub_22C37A040(uint64_t a1)
{
  v3 = *(a1 + 8);
  result = a1 + 8;
  *(v1 - 112) = result;
  return result;
}

void sub_22C37A0D8(__n128 *a1, __n128 a2)
{
  a1[1] = a2;
  *(v2 + 208) = v3;
  *(v2 + 216) = 0xEA00000000007265;

  JUMPOUT(0x2318B7850);
}

__n128 *sub_22C37A10C(__n128 *result, __n128 a2)
{
  result[1] = a2;
  v3 = *(v2 - 292);
  v4 = *(v2 - 292) == 0;
  return result;
}

uint64_t sub_22C37A134(uint64_t a1, uint64_t a2)
{
  v4 = *(v2 + 48);
  v5 = *(v2 + 32);
  *a2 = *(v2 + 16);
  *(a2 + 16) = v5;
  *(a2 + 32) = v4;

  return swift_willThrow();
}

uint64_t sub_22C37A180()
{

  return swift_slowAlloc();
}

uint64_t sub_22C37A1B8()
{
  v2 = *(v0 - 144);

  return sub_22C90708C();
}

void sub_22C37A1E0()
{
  *(v0 + 16) = *(v1 + 16);
  v2 = 1 << *(v1 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(v1 + 56);
}

uint64_t sub_22C37A21C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  return sub_22C36F9F4(0xD00000000000002BLL, a2, a3);
}

void sub_22C37A234(uint64_t a1@<X8>)
{
  v7 = (v1 + v4[8]);
  *v7 = v2;
  v7[1] = v3;
  v8 = v1 + v4[9];
  *v8 = v6;
  *(v8 + 8) = v5;
  *(v8 + 16) = a1;
  *(v1 + v4[10]) = 0;
  v9 = v4[11];
}

void sub_22C37A264()
{
  v1 = v0[221];
  v2 = v0[220];
  v3 = v0[219];
  v4 = v0[218];
  v5 = v0[217];
}

uint64_t sub_22C37A288()
{
  v4 = *(v1 + 104);
  result = v2 + v0;
  v6 = *(v3 - 96);
  return result;
}

uint64_t sub_22C37A298()
{
  result = v0[86];
  v2 = v0[85];
  v3 = v0[84];
  v4 = v0[83];
  v5 = v0[82];
  v6 = v0[81];
  v7 = v0[80];
  v8 = v0[79];
  v9 = v0[78];
  v10 = v0[77];
  v11 = v0[76];
  v12 = v0[75];
  return result;
}

uint64_t sub_22C37A2DC@<X0>(uint64_t a1@<X8>, __n128 a2@<Q1>, __n128 a3@<Q2>)
{
  *(v3 + 208) = a3;
  *(v3 + 224) = a2;
  *(v3 + 240) = *(a1 + 32);
  *(v3 + 249) = *(a1 + 41);

  return sub_22C7428D8(v3 + 336, v3 + 400);
}

uint64_t sub_22C37A324()
{

  return sub_22C36E2BC(v1, v0);
}

uint64_t sub_22C37A368()
{
  v3 = v0[20];
  v2 = v0[21];
  v4 = v0[9];
  v5 = v0[6];
  v6 = v0[7];
  v7 = v0[5];
  v8 = v0[2];
  v9 = v0[3];
}

uint64_t sub_22C37A3B8()
{
  *(v0 + 32) = 0;
  *v0 = 0u;
  *(v0 + 16) = 0u;
  v3 = *(v1 + 160);
  v4 = *(v1 + 144);
}

uint64_t sub_22C37A3F4@<X0>(uint64_t a1@<X8>)
{

  return sub_22C36F9F4(0xD000000000000054, (a1 - 32) | 0x8000000000000000, (v1 - 168));
}

uint64_t sub_22C37A48C(uint64_t result)
{
  *(result + 8) = sub_22C87F16C;
  v2 = *(v1 + 128);
  v3 = *(v1 + 112);
  return result;
}

uint64_t sub_22C37A4D4()
{
  v2 = *(v0 - 96);

  return swift_dynamicCast();
}

uint64_t *sub_22C37A508(uint64_t *a1)
{
  v2 = sub_22C90046C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22C9063DC();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v35 = v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = v33 - v12;
  sub_22C90405C();
  (*(v3 + 16))(v6, a1, v2);
  v14 = sub_22C9063CC();
  v15 = sub_22C90AACC();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v34 = v7;
    v17 = v16;
    v33[0] = swift_slowAlloc();
    v36 = v33[0];
    *v17 = 136315138;
    sub_22C37AA18(&qword_281435848, 255, MEMORY[0x277CC9260]);
    v18 = sub_22C90B47C();
    v33[1] = a1;
    v19 = v8;
    v21 = v20;
    (*(v3 + 8))(v6, v2);
    v22 = sub_22C36F9F4(v18, v21, &v36);
    v8 = v19;

    *(v17 + 4) = v22;
    _os_log_impl(&dword_22C366000, v14, v15, "Loading plist from %s", v17, 0xCu);
    v23 = v33[0];
    sub_22C36FF94(v33[0]);
    MEMORY[0x2318B9880](v23, -1, -1);
    v24 = v17;
    v7 = v34;
    MEMORY[0x2318B9880](v24, -1, -1);
  }

  else
  {

    (*(v3 + 8))(v6, v2);
  }

  (*(v8 + 8))(v13, v7);
  v25 = sub_22C9004AC();
  v27 = v26;
  v28 = sub_22C90029C();
  v29 = *(v28 + 48);
  v30 = *(v28 + 52);
  swift_allocObject();
  sub_22C90028C();
  type metadata accessor for ResponseGenerationPreferencesDomain.ResponseGenerationPreferences();
  sub_22C37AA18(&qword_281430298, v31, type metadata accessor for ResponseGenerationPreferencesDomain.ResponseGenerationPreferences);
  sub_22C90027C();

  sub_22C38B120(v25, v27);
  return v36;
}

uint64_t sub_22C37AA18(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_22C37AA60(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_22C37AA98()
{
  sub_22C36FB38();
  sub_22C388288();
  v0 = swift_task_alloc();
  v1 = sub_22C36D860(v0);
  *v1 = v2;
  v3 = sub_22C36AC74(v1);

  return v4(v3);
}

uint64_t sub_22C37AB28()
{
  sub_22C36FB38();
  sub_22C388288();
  v0 = swift_task_alloc();
  v1 = sub_22C36D860(v0);
  *v1 = v2;
  v3 = sub_22C36AC74(v1);

  return v4(v3);
}

uint64_t sub_22C37ABD4()
{
  *(v1 - 200) = v0;

  return swift_projectBox();
}

uint64_t sub_22C37ABEC()
{

  return swift_bridgeObjectRelease_n();
}

uint64_t sub_22C37AC04()
{
  v2 = *(v0 + 16);
}

uint64_t sub_22C37AC1C()
{

  return swift_allocObject();
}

uint64_t sub_22C37AC38(uint64_t a1)
{
  v4 = *(v2 + 16);
  v5 = v3 + *(a1 + 36);
  return v1;
}

uint64_t sub_22C37AC70()
{
  v2 = *(v0 - 184);

  return sub_22C90882C();
}

uint64_t sub_22C37AC94()
{
  v4 = *(v1 + 856);
  v5 = *(v1 + 584);
  *(v2 - 104) = v0;
}

uint64_t sub_22C37ACD0()
{

  return swift_slowAlloc();
}

uint64_t sub_22C37ACEC(uint64_t a1, uint64_t a2)
{
  *(v8 - 120) = v4;
  v9 = v6[61];
  *(v8 - 160) = v6[60];
  *(v8 - 152) = v2;
  *(v8 - 144) = a2;
  *(v8 - 136) = v5;
  v10 = v6[54];
  v11 = *(*(v8 - 128) + 424);
  v12 = *(v7 + 96);
  return v3;
}

uint64_t sub_22C37AD3C@<X0>(uint64_t a1@<X8>)
{

  return sub_22C36DD28(v2 + a1, v1, v3);
}

uint64_t sub_22C37AD58@<X0>(uint64_t a1@<X8>)
{

  return sub_22C36F9F4(0xD000000000000060, a1 | 0x8000000000000000, (v1 - 80));
}

uint64_t sub_22C37AD78@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v2 - 264);
  v4 = *(*(v2 - 248) + 48) + *(v3 + 72) * (__clz(__rbit64(v1)) | (a1 << 6));
  v5 = *(v3 + 16);
  v6 = *(v2 - 192);
  result = *(v2 - 200);
  v8 = *(v2 - 296);
  return result;
}

void sub_22C37ADC0()
{
  v1 = v0[27];
  v3 = v0[23];
  v2 = v0[24];
  v4 = v0[22];
  v5 = v0[19];
}

uint64_t sub_22C37ADD4@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  *(v5 - 72) = v4;
  *(v5 - 168) = v3;
  *(v5 - 160) = a3;
  *(v5 - 192) = a1;
  *(v5 - 184) = a2;

  return sub_22C9093BC();
}

uint64_t sub_22C37AE04()
{

  return sub_22C8D4CB0(v1, v0);
}

uint64_t sub_22C37AE44()
{
  sub_22C388250();
  sub_22C3743E4();
  v1 = sub_22C37B45C();
  sub_22C3699B8(v1);
  v4 = (*(v3 + 64) + ((*(v2 + 80) + 40) & ~*(v2 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_22C370424();
  v6 = *(v0 + v5);
  v7 = swift_task_alloc();
  v8 = sub_22C36D860(v7);
  *v8 = v9;
  v8[1] = sub_22C82367C;
  sub_22C373AE0();
  sub_22C36EC14();

  return sub_22C37C050(v10, v11, v12, v13, v14, v15);
}

uint64_t sub_22C37AF38()
{
  sub_22C36FB38();
  v1 = v0;
  v8 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  v5 = sub_22C36D860(v4);
  *v5 = v6;
  v5[1] = sub_22C588ED8;

  return v8(v1);
}

uint64_t sub_22C37B060()
{
  v2 = v0[86];
  v3 = v0[58];
  v4 = v0[35];
}

void sub_22C37B09C()
{

  JUMPOUT(0x2318B9880);
}

uint64_t sub_22C37B0CC(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  return sub_22C36F9F4(0xD00000000000001ALL, a2, a3);
}

void sub_22C37B0F0(uint64_t a1@<X8>)
{
  v2 = *(a1 - 256);
  v4 = *v2;
  v3 = v2[1];

  JUMPOUT(0x2318B8B10);
}

uint64_t sub_22C37B150()
{
  v3 = *(v0 + 72);
  *(v1 + 584) = *(v0 + 80);

  return swift_allocObject();
}

uint64_t sub_22C37B180(__n128 *a1, __n128 a2)
{
  a1[1] = a2;
  v4 = *(v2 + 16);
  return v3;
}

uint64_t sub_22C37B1BC()
{

  return swift_arrayInitWithCopy();
}

void *sub_22C37B1D8()
{
  v2 = 16 * v0[2];

  return memmove(v0 + 6, v0 + 4, v2);
}

BOOL sub_22C37B204(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t sub_22C37B238(uint64_t a1, _BYTE *a2)
{
  v5 = *(v3 + 48);
  *a2 = v4;
  return v2;
}

void sub_22C37B250(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t sub_22C37B27C()
{

  return sub_22C901EDC();
}

uint64_t sub_22C37B2A4@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(result + 16) = a2;
  *(result + 24) = 1;
  return result;
}

uint64_t sub_22C37B358()
{
  v1 = v0[87];
  v2 = v0[86];
  return v0[88];
}

uint64_t sub_22C37B39C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_22C36C640(a1, 1, 1, a4);
  *(v4 - 96) = 0;
  return result;
}

uint64_t sub_22C37B3BC()
{
}

uint64_t sub_22C37B3FC(uint64_t result)
{
  *(result + 8) = sub_22C7B9148;
  v2 = *(v1 + 32);
  return result;
}

uint64_t sub_22C37B45C()
{

  return sub_22C90622C();
}

void sub_22C37B490()
{
  v1 = v0[14];
  v3 = v0[10];
  v2 = v0[11];
  v4 = v0[7];
}

uint64_t sub_22C37B4AC()
{
  v5 = v1[38];
  v6 = v1[4];
  v7 = v1[39];

  return sub_22C4E719C(v0, v7, v2, v3);
}

uint64_t sub_22C37B550(uint64_t a1, void *a2)
{
  *a2 = v3;
  a2[1] = v2;

  return swift_willThrow();
}

uint64_t sub_22C37B578()
{

  return sub_22C90B4FC();
}

uint64_t sub_22C37B5C8()
{

  return sub_22C90B62C();
}

uint64_t sub_22C37B600@<X0>(uint64_t a1@<X8>)
{
  v4 = v2[51];
  v3 = v2[52];
  v5 = v2[50];
  v6 = v2[35];
  v7 = v2[36];
  v8 = *(a1 + 96);
  return v1;
}

uint64_t sub_22C37B618@<X0>(uint64_t a1@<X8>)
{

  return sub_22C36F9F4(0xD000000000000037, (a1 - 32) | 0x8000000000000000, (v1 - 160));
}

uint64_t sub_22C37B648()
{

  return swift_once();
}

void sub_22C37B674()
{

  JUMPOUT(0x2318B7850);
}

uint64_t sub_22C37B6CC()
{
  v1 = *(*(v0 - 344) + 8);
  result = *(v0 - 352);
  v3 = *(v0 - 288);
  return result;
}

uint64_t sub_22C37B6EC()
{
  result = v0 + 56;
  v2 = 1 << *(v0 + 32);
  return result;
}

void *sub_22C37B718()
{
  *v0 = v2;
  v4 = *(v1 + 104);
  result = v0;
  v6 = *(v3 - 144);
  return result;
}

uint64_t sub_22C37B748(uint64_t a1)
{
  *(v1 + 32) = a1;

  return sub_22C90ABEC();
}

uint64_t sub_22C37B784()
{
  result = v0[72];
  v2 = v0[68];
  v3 = *(v0[69] + 8);
  return result;
}

uint64_t sub_22C37B7A4(uint64_t a1)
{
  *(a1 + 8) = sub_22C7BA0F0;
  result = *(v1 + 48);
  v3 = *(v1 + 24);
  return result;
}

uint64_t sub_22C37B7E4()
{
  v3 = *(v0 + 48);
  *(v2 - 104) = *(v1 + 72);
  v4 = *(v1 + 16);
  v5 = *(v2 - 88);
  result = *(v2 - 96);
  v7 = *(v2 - 120);
  return result;
}

void sub_22C37B824()
{

  JUMPOUT(0x2318B7850);
}

uint64_t sub_22C37B854(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{

  return sub_22C8719D4(v4, a2, 0, a4, (v5 - 128));
}

uint64_t sub_22C37B890()
{
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
  v4 = v0[54];
  v3 = v0[55];
  *(v1 - 112) = v0[58];
  *(v1 - 104) = v3;
  v5 = v0[51];
  v6 = v0[52];
  *(v1 - 96) = v4;
  *(v1 - 88) = v6;
  *(v1 - 80) = v5;
}

uint64_t sub_22C37B948(float a1)
{
  *v3 = a1;

  return sub_22C36F9F4(v2, v1, (v4 - 88));
}

uint64_t sub_22C37B994(uint64_t a1)
{
  v3 = *(v1 - 104);
  v4 = *(v1 - 112);
  v5 = *(v1 - 120);

  return sub_22C439F24(a1, v4, v3);
}

uint64_t sub_22C37B9BC()
{
  v2 = (*(v1 + 48) + 16 * v0);
  result = *v2;
  v4 = v2[1];
  return result;
}

uint64_t sub_22C37BA04(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  *(v26 - 104) = result;
  *(v26 - 96) = a2;
  *(v26 - 120) = a22;
  *(v26 - 112) = a26;
  return result;
}

void sub_22C37BA74()
{

  JUMPOUT(0x2318B7850);
}

uint64_t sub_22C37BAB4()
{

  return sub_22C90892C();
}

size_t sub_22C37BAD8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return sub_22C597CAC(v4, a2, a3, a4, v5, v6);
}

uint64_t sub_22C37BB30@<X0>(uint64_t a1@<X8>)
{
  *(v3 - 152) = *(v1 + 96);
  v4 = *(a1 + 96);
  return v2;
}

void sub_22C37BB44()
{
  *(v0 + 16) = *(v1 + 16);
  v2 = 1 << *(v1 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(v1 + 56);
}

void sub_22C37BB80(uint64_t a1@<X8>)
{
  *(v4 + 8 * a1) = v2 | v1;
  *(*(v3 + 48) + 8 * v5) = *(v6 - 280);
  v7 = *(v3 + 16);
}

uint64_t sub_22C37BBC4()
{
  v1 = **(v0 - 728);
  result = *(v0 - 432);
  v3 = *(v0 - 408);
  return result;
}

void sub_22C37BC60(uint64_t a1@<X8>)
{
  v3 = *(v1 - 256) + a1;
  v4 = *(v2 + 72);
  v5 = *(v2 + 16);
}

uint64_t sub_22C37BC9C()
{
  v2 = v0[30];
  v1 = v0[31];
  v3 = v0[29];
  v4 = v0[26];
  v6 = v0[22];
  v5 = v0[23];
  v7 = v0[19];
  v8 = v0[16];
  v9 = v0[13];
  v12 = v0[12];
  sub_22C36FF94(v0 + 2);
}

uint64_t sub_22C37BCF8@<X0>(uint64_t a1@<X8>)
{

  return sub_22C36F9F4(0xD000000000000065, a1 | 0x8000000000000000, (v1 - 216));
}

uint64_t sub_22C37BD18@<X0>(char a1@<W8>)
{
  *(v1 - 112) = a1;

  return sub_22C90B37C();
}

uint64_t sub_22C37BD54(unint64_t *a1)
{

  return sub_22C3D32C8(a1, v1, v2);
}

uint64_t sub_22C37BDB0()
{

  return sub_22C90AFCC();
}

uint64_t sub_22C37BDF4()
{
  v2 = *(v0 - 512);

  return sub_22C906BFC();
}

uint64_t sub_22C37BE48@<X0>(int *a1@<X8>)
{
  v3 = a1[1];
  *(v1 - 88) = a1 + *a1;

  return swift_task_alloc();
}

uint64_t sub_22C37BE94()
{
  v2 = *(v0 - 88);

  return sub_22C90A0BC();
}

uint64_t sub_22C37BF28(uint64_t a1)
{

  return sub_22C36DD28(a1, v1, v2);
}

id sub_22C37BF40()
{

  return [v1 (v3 + 2040)];
}

void sub_22C37BF90(void *a1@<X8>)
{
  v2 = *(v1 - 128);
  v3 = *(v1 - 120);
  *a1 = *(v1 - 136);
  a1[1] = v3;
  a1[2] = v2;
  v4 = *(v1 - 144);
  a1[3] = *(v1 - 152);
  a1[4] = v4;
}

uint64_t sub_22C37C014()
{
  v2 = v0[45];
  v1 = v0[46];
  v4 = v0[42];
  v3 = v0[43];
  v5 = v0[39];
  v6 = v0[29];
  return v0[34];
}

uint64_t sub_22C37C034()
{
  v3 = *(v2 - 88);
  result = *(v1 + 48) + *(v2 - 96) * v0;
  v5 = **(v2 - 112);
  return result;
}

uint64_t sub_22C37C050(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return MEMORY[0x2822009F8](sub_22C37C074, 0, 0);
}

uint64_t sub_22C37C074()
{
  sub_22C369980();
  v0 = sub_22C38C1C4();
  sub_22C37C39C(v0, v1);
  sub_22C369A24();

  return v2();
}

uint64_t sub_22C37C0CC(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_22C850594;

  return v6();
}

uint64_t sub_22C37C1B8()
{
  sub_22C369980();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = sub_22C374D1C(v3);
  *v4 = v5;
  v6 = sub_22C37BCE8(v4);

  return sub_22C37C240(v6, v2);
}

uint64_t sub_22C37C240(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_22C85D138;

  return sub_22C37C2DC(a2);
}

uint64_t sub_22C37C2DC(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = sub_22C903E9C();
  v2[5] = v3;
  v4 = *(v3 - 8);
  v2[6] = v4;
  v5 = *(v4 + 64) + 15;
  v2[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22C37DEF0, 0, 0);
}

uint64_t sub_22C37C39C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v74 = a2;
  v70 = a1;
  v4 = sub_22C3A5908(&qword_27D9C0578, &qword_22C927FC0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v77 = (&v66 - v6);
  v7 = sub_22C3A5908(&qword_27D9C0588, &qword_22C927FD0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v66 - v9;
  v11 = sub_22C905D2C();
  v12 = *(v11 - 8);
  v72 = v11;
  v73 = v12;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v69 = &v66 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_22C3A5908(&qword_27D9C0590, &qword_22C927FD8);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = &v66 - v17;
  v19 = sub_22C9061AC();
  v75 = *(v19 - 8);
  v76 = v19;
  v20 = *(v75 + 64);
  v21 = MEMORY[0x28223BE20](v19);
  v71 = &v66 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v66 = &v66 - v23;
  v24 = sub_22C3A5908(&qword_27D9BB190, qword_22C90DD90);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24 - 8);
  v27 = &v66 - v26;
  v28 = sub_22C3A5908(&qword_27D9BE618, &qword_22C9262C0);
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x28223BE20](v28 - 8);
  v31 = &v66 - v30;
  v32 = sub_22C905DFC();
  v68 = *(v32 - 8);
  v33 = v68;
  v34 = *(v68 + 64);
  v35 = MEMORY[0x28223BE20](v32);
  v37 = &v66 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2318B32C0](v35);
  v38 = OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntimeP33_F747242BE1E17047CD31B26B8C3A7DAD29QueryDecorationSELFLoggerSync_contextId;
  sub_22C90624C();
  v39 = sub_22C90069C();
  (*(*(v39 - 8) + 16))(v27, &v3[v38], v39);
  sub_22C36C640(v27, 0, 1, v39);
  sub_22C90623C();
  v40 = sub_22C90625C();
  sub_22C36C640(v31, 0, 1, v40);
  sub_22C905A7C();
  v41 = v66;
  v42 = v70;
  sub_22C37CA7C(v70, v66);
  v43 = *(v33 + 16);
  v67 = v32;
  v43(v18, v37, v32);
  sub_22C36C640(v18, 0, 1, v32);
  sub_22C90593C();
  v44 = *(v3 + 5);
  v45 = *(v3 + 6);
  sub_22C374168(v3 + 2, v44);
  (*(v45 + 8))(v41, v44, v45);
  v46 = v69;
  sub_22C905D1C();
  MEMORY[0x2318B31D0](1);
  sub_22C3A5908(&qword_27D9C0598, &unk_22C927FE0);
  v47 = *(sub_22C90618C() - 8);
  v48 = *(v47 + 72);
  v49 = (*(v47 + 80) + 32) & ~*(v47 + 80);
  v50 = swift_allocObject();
  *(v50 + 16) = xmmword_22C90F800;
  v51 = *(v74 + 96);
  sub_22C903C7C();
  v52 = sub_22C903D4C();
  sub_22C36C640(v10, 0, 1, v52);
  sub_22C8153D4(v10, (v50 + v49));
  sub_22C36DD28(v10, &qword_27D9C0588, &qword_22C927FD0);
  sub_22C905D0C();
  v53 = v71;
  sub_22C37CA7C(v42, v71);
  v54 = v72;
  v55 = swift_allocBox();
  v56 = v73;
  (*(v73 + 16))(v57, v46, v54);
  v58 = v77;
  *v77 = v55;
  v59 = *MEMORY[0x277D200A8];
  v60 = sub_22C905CEC();
  (*(*(v60 - 8) + 104))(v58, v59, v60);
  sub_22C36C640(v58, 0, 1, v60);
  sub_22C905C6C();
  v61 = *(v3 + 5);
  v62 = *(v3 + 6);
  sub_22C374168(v3 + 2, v61);
  (*(v62 + 8))(v53, v61, v62);
  v63 = v76;
  v64 = *(v75 + 8);
  v64(v53, v76);
  (*(v56 + 8))(v46, v54);
  v64(v41, v63);
  return (*(v68 + 8))(v37, v67);
}

uint64_t sub_22C37CA7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  v30 = a1;
  v3 = sub_22C3A5908(&qword_27D9BE660, &qword_22C9254E0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v29 - v5;
  v7 = sub_22C3A5908(&qword_27D9C04C0, &qword_22C927F00);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v29 - v9;
  v11 = sub_22C3A5908(&qword_27D9BB190, qword_22C90DD90);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v29 - v13;
  v15 = sub_22C3A5908(&qword_27D9BE618, &qword_22C9262C0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = &v29 - v17;
  v19 = sub_22C905AAC();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v23 = &v29 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22C905A9C();
  v24 = OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntimeP33_F747242BE1E17047CD31B26B8C3A7DAD29QueryDecorationSELFLoggerSync_componentId;
  sub_22C90624C();
  v25 = sub_22C90069C();
  (*(*(v25 - 8) + 16))(v14, v2 + v24, v25);
  sub_22C36C640(v14, 0, 1, v25);
  sub_22C90623C();
  v26 = sub_22C90625C();
  sub_22C36C640(v18, 0, 1, v26);
  sub_22C905A7C();
  sub_22C90068C();
  sub_22C36C640(v14, 0, 1, v25);
  sub_22C905A8C();
  sub_22C90619C();
  (*(v20 + 16))(v10, v23, v19);
  sub_22C36C640(v10, 0, 1, v19);
  sub_22C905A4C();
  v27 = sub_22C90622C();
  (*(*(v27 - 8) + 16))(v6, v30, v27);
  sub_22C36C640(v6, 0, 1, v27);
  sub_22C905CDC();
  return (*(v20 + 8))(v23, v19);
}

uint64_t sub_22C37CDF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v53 = a3;
  v49 = a1;
  v50 = a2;
  v3 = sub_22C3A5908(&qword_27D9C04D0, &qword_22C927F10);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v52 = &v47 - v5;
  v6 = sub_22C9061AC();
  v55 = *(v6 - 8);
  v56 = v6;
  v7 = *(v55 + 64);
  MEMORY[0x28223BE20](v6);
  v51 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22C3A5908(&qword_27D9C04E8, &qword_22C927F28);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v47 - v11;
  v13 = sub_22C3A5908(&qword_27D9BB190, qword_22C90DD90);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v47 - v15;
  v17 = sub_22C3A5908(&qword_27D9BE618, &qword_22C9262C0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v20 = &v47 - v19;
  v48 = sub_22C905F9C();
  v21 = *(v48 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v48);
  v24 = &v47 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_22C3A5908(&qword_27D9C04F0, &qword_22C927F30);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x28223BE20](v25 - 8);
  v28 = &v47 - v27;
  v29 = sub_22C905FCC();
  v30 = *(v29 - 8);
  v31 = *(v30 + 64);
  v32 = MEMORY[0x28223BE20](v29);
  v34 = &v47 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2318B3490](v32);
  v35 = sub_22C905A5C();
  (*(*(v35 - 8) + 16))(v28, v49, v35);
  sub_22C36C640(v28, 0, 1, v35);
  sub_22C905FAC();
  sub_22C905F8C();
  sub_22C90624C();
  v36 = sub_22C90069C();
  (*(*(v36 - 8) + 16))(v16, v50, v36);
  sub_22C36C640(v16, 0, 1, v36);
  sub_22C90623C();
  v37 = sub_22C90625C();
  sub_22C36C640(v20, 0, 1, v37);
  sub_22C905F7C();
  (*(v30 + 16))(v12, v34, v29);
  sub_22C36C640(v12, 0, 1, v29);
  sub_22C905F4C();
  v38 = v51;
  v39 = v54;
  sub_22C37CA7C(v53, v51);
  v40 = v52;
  v41 = v48;
  (*(v21 + 16))(v52, v24, v48);
  sub_22C36C640(v40, 0, 1, v41);
  v42 = v38;
  sub_22C905EAC();
  v43 = v39;
  v44 = *(v39 + 40);
  v45 = *(v43 + 48);
  sub_22C374168((v43 + 16), v44);
  (*(v45 + 8))(v42, v44, v45);
  (*(v55 + 8))(v42, v56);
  (*(v21 + 8))(v24, v41);
  return (*(v30 + 8))(v34, v29);
}

uint64_t sub_22C37D378(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v4[6] = *v3;
  v5 = sub_22C90363C();
  v4[7] = v5;
  v6 = *(v5 - 8);
  v4[8] = v6;
  v7 = *(v6 + 64) + 15;
  v4[9] = swift_task_alloc();
  v8 = sub_22C9063DC();
  v4[10] = v8;
  v9 = *(v8 - 8);
  v4[11] = v9;
  v10 = *(v9 + 64) + 15;
  v4[12] = swift_task_alloc();
  v11 = sub_22C903E9C();
  v4[13] = v11;
  v12 = *(v11 - 8);
  v4[14] = v12;
  v13 = *(v12 + 64) + 15;
  v4[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22C37D614, 0, 0);
}

uint64_t sub_22C37D51C()
{
  sub_22C36FB38();
  v1[493] = v0;
  if (v0)
  {

    return MEMORY[0x2822009F8](sub_22C85626C, 0, 0);
  }

  else
  {
    v2 = v1[355];
    v1[499] = v2;

    swift_task_alloc();
    sub_22C36CC90();
    v1[505] = v3;
    *v3 = v4;
    v3[1] = sub_22C855784;
    v5 = v1[427];
    v6 = v1[367];
    v7 = v1[361];

    return sub_22C37D378(v5, v7, v2);
  }
}

uint64_t sub_22C37D614()
{
  sub_22C36D5EC();
  v2 = v0[14];
  v1 = v0[15];
  v3 = v0[13];
  v4 = v0[6];
  v5 = v0[3];
  v6 = *MEMORY[0x277D1F198];
  v7 = sub_22C375194();
  v8(v7);
  sub_22C85D4B4();
  v9 = sub_22C38ABE0();
  v10(v9);
  if (v4)
  {
    v12 = v0[4];
    v11 = v0[5];
    v13 = v0[3];
    v0[16] = *(v13 + 96);
    sub_22C903C8C();
    sub_22C36D2A8();
    v14 = swift_allocObject();
    v0[17] = v14;
    v14[2] = v11;
    v14[3] = v13;
    v14[4] = v12;
    v15 = *(MEMORY[0x277D61CC0] + 4);

    v16 = swift_task_alloc();
    v0[18] = v16;
    sub_22C3A5908(&qword_27D9C09E0, &qword_22C929868);
    sub_22C85D2E4();
    *v16 = v17;
    sub_22C85D57C();
    v21.n128_f64[0] = sub_22C37C000();

    return MEMORY[0x2821C8618](v18, v19, v20, v21);
  }

  else
  {
    v22 = v0[12];
    sub_22C90400C();
    v23 = sub_22C9063CC();
    v24 = sub_22C90AABC();
    if (sub_22C37B204(v24))
    {
      v25 = sub_22C36D240();
      sub_22C36C890(v25);
      sub_22C36BB14(&dword_22C366000, v26, v27, "Foreground Tool context retrieval skiped as not enabled.");
      sub_22C372FB0();
    }

    v29 = v0[11];
    v28 = v0[12];
    v30 = v0[10];
    v31 = v0[2];

    v32 = *(v29 + 8);
    v33 = sub_22C36BAFC();
    v34(v33);
    v35 = type metadata accessor for RetrievedToolContext();
    v36 = *(v35 + 24);
    sub_22C903E3C();
    *v31 = 0;
    v31[1] = 0;
    sub_22C36BECC();
    sub_22C36C640(v37, v38, v39, v35);
    sub_22C85D498();

    sub_22C369C50();

    return v40();
  }
}

uint64_t sub_22C37D850()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  sub_22C36D2A8();

  return MEMORY[0x2821FE8E8](v4, v5, v6);
}

BOOL sub_22C37D894(uint64_t a1, uint64_t a2)
{
  if (sub_22C37DABC(a2))
  {
    v4 = *(a1 + 96);
    v5 = *(sub_22C903C3C() + 16);

    if (v5)
    {
      v6 = sub_22C903C3C();
      MEMORY[0x28223BE20](v6);
      v9[2] = a2;
      v7 = sub_22C37D348(sub_22C85C774, v9, v6);
    }

    else
    {
      return 1;
    }
  }

  else
  {
    return 0;
  }

  return v7;
}

uint64_t sub_22C37D95C()
{
  v3 = v0[57];
  v2 = v0[58];
  v4 = v0[56];
}

double sub_22C37D980()
{
  *(v0 + 32) = 0;
  result = 0.0;
  *v0 = 0u;
  *(v0 + 16) = 0u;
  *(v0 + 40) = 1;
  return result;
}

uint64_t sub_22C37D9B0()
{
  v3 = *(v1 + 56);
  v4 = *(v3 + 8 * v2);
  *(v3 + 8 * v2) = v0;
  return v4 & 0x1FFFFFFFFFFFFFFFLL;
}

uint64_t sub_22C37D9E4(uint64_t a1)
{
  *(a1 + 8) = sub_22C6EBCF4;
  v2 = v1[76];
  result = v1[46];
  v4 = v1[44];
  return result;
}

uint64_t sub_22C37DA38@<X0>(uint64_t a1@<X8>)
{
  v2 = *(a1 - 256);

  return sub_22C909F8C();
}

uint64_t sub_22C37DA50()
{
  v3 = v0[12];
  v2 = v0[13];
  v5 = v0[9];
  v4 = v0[10];
  v7 = v0[7];
  v6 = v0[8];
}

void sub_22C37DA6C(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, os_log_type_t a13)
{

  _os_log_impl(a1, v13, a13, a4, v14, 0x20u);
}

uint64_t sub_22C37DABC(uint64_t a1)
{
  v2 = sub_22C9063DC();
  v3 = sub_22C369824(v2);
  v58 = v4;
  v59 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  sub_22C369838();
  v60 = v8 - v7;
  v9 = sub_22C90363C();
  v10 = sub_22C369824(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v10);
  sub_22C369838();
  v17 = v16 - v15;
  v18 = sub_22C903E9C();
  v19 = sub_22C369824(v18);
  v21 = v20;
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v19);
  sub_22C369ABC();
  v26 = (v24 - v25);
  v28 = MEMORY[0x28223BE20](v27);
  v57 = &v54[-v29];
  MEMORY[0x28223BE20](v28);
  v31 = &v54[-v30];
  v32 = *(v21 + 16);
  v32(&v54[-v30], a1, v18);
  v33 = (*(v21 + 88))(v31, v18);
  if (v33 == *MEMORY[0x277D1F170])
  {
    v34 = MEMORY[0x277D1EBE0];
LABEL_5:
    (*(v12 + 104))(v17, *v34, v9);
    v35 = sub_22C90362C();
    v36 = *(v12 + 8);
    v37 = sub_22C372158();
    v38(v37);
    return v35 & 1;
  }

  if (v33 == *MEMORY[0x277D1F188])
  {
    v34 = MEMORY[0x277D1EBB0];
    goto LABEL_5;
  }

  if (v33 == *MEMORY[0x277D1F180] || v33 == *MEMORY[0x277D1F198] || v33 == *MEMORY[0x277D1F178])
  {
    v35 = 0;
  }

  else
  {
    if (v33 != *MEMORY[0x277D1F1A0] && v33 != *MEMORY[0x277D1F190])
    {
      v43 = v60;
      sub_22C90400C();
      v44 = v57;
      v32(v57, a1, v18);
      v45 = sub_22C9063CC();
      v46 = sub_22C90AADC();
      if (os_log_type_enabled(v45, v46))
      {
        v47 = sub_22C36FB44();
        v56 = sub_22C370060();
        v61 = v56;
        *v47 = 136315138;
        v32(v26, v44, v18);
        sub_22C90A1AC();
        v55 = v46;
        v48 = sub_22C85D468();
        v46(v48);
        v49 = sub_22C36CA88();
        v52 = sub_22C36F9F4(v49, v50, v51);

        *(v47 + 4) = v52;
        _os_log_impl(&dword_22C366000, v45, v55, "QueryDecorator isServiceEnabled called with unknown service %s", v47, 0xCu);
        sub_22C36FF94(v56);
        sub_22C3699EC();
        sub_22C37B09C();

        (*(v58 + 8))(v60, v59);
      }

      else
      {

        v53 = sub_22C85D468();
        v46(v53);
        (*(v58 + 8))(v43, v59);
      }

      (v46)(v31, v18);
    }

    v35 = 1;
  }

  return v35 & 1;
}

uint64_t sub_22C37DEF0()
{
  sub_22C3749D8();
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];
  v4 = *(v0[3] + 96);
  v5 = sub_22C903C3C();
  (*(v2 + 104))(v1, *MEMORY[0x277D1F1A0], v3);
  v6 = swift_task_alloc();
  *(v6 + 16) = v1;
  v7 = sub_22C37D348(sub_22C85D0F8, v6, v5);

  v8 = *(v2 + 8);
  v9 = sub_22C36D39C();
  v10(v9);
  if (v7)
  {
    v12 = v0[3];
    v11 = v0[4];
    sub_22C903C8C();
    v14 = v13;
    sub_22C36A83C();
    v15 = swift_allocObject();
    v0[8] = v15;
    *(v15 + 16) = v11;
    *(v15 + 24) = v12;
    v16 = *(MEMORY[0x277D61CC0] + 4);

    v17 = swift_task_alloc();
    v0[9] = v17;
    sub_22C3A5908(&qword_27D9BFAA8, &qword_22C9297F0);
    sub_22C85D2E4();
    *v17 = v18;
    v17[1] = sub_22C859B80;
    v19.n128_u64[0] = v14;

    return MEMORY[0x2821C8618](v0 + 2, &unk_22C929B90, v15, v19);
  }

  else
  {
    v20 = v0[7];

    sub_22C36D5E0();

    return v21(0);
  }
}

uint64_t sub_22C37E100()
{
  v2 = *(v0 - 120);
  v3 = *(*(v0 - 112) + 72);
  v4 = *(v0 - 104);

  return sub_22C3D33B8();
}

void sub_22C37E124()
{

  JUMPOUT(0x2318B9880);
}

uint64_t sub_22C37E140()
{

  return sub_22C9063DC();
}

uint64_t sub_22C37E178()
{
  v3 = *(v1 + 16);
  result = v0;
  v5 = *(v2 - 112);
  return result;
}

uint64_t sub_22C37E1A8(uint64_t result)
{
  *(result + 8) = sub_22C77763C;
  v2 = *(v1 + 32);
  return result;
}

uint64_t sub_22C37E1E8(uint64_t a1)
{
  *(a1 + 8) = v1;
  v4 = *(v3 + 32);
  return v2;
}

uint64_t sub_22C37E200()
{

  return swift_beginAccess();
}

uint64_t sub_22C37E22C()
{

  return swift_getErrorValue();
}

uint64_t sub_22C37E248@<X0>(_BYTE *a1@<X1>, char a2@<W8>)
{
  *a1 = a2;

  return swift_willThrow();
}

uint64_t sub_22C37E284()
{
  v4 = *(v3 - 128);
  v5 = *(v3 - 136) + *(v2 + 72) * (v0 - 1);
  v6 = *(v2 + 16);
  result = *(v3 - 96) + *(v1 + 48);
  v8 = *(v3 - 144);
  return result;
}

void sub_22C37E2B0()
{
  v2 = *(v0 + 8);
  v3 = *(v1 - 176) & 1;
  v4 = *(v1 - 152);
  v5 = *(v1 - 144);
}

double sub_22C37E2E0()
{
  *(v0 - 160) = 0;
  result = 0.0;
  *(v0 - 192) = 0u;
  *(v0 - 176) = 0u;
  *(v0 - 152) = -1;
  return result;
}

uint64_t sub_22C37E320()
{
  v2 = *(v0 - 144);

  return swift_arrayDestroy();
}

void sub_22C37E340()
{
  v3 = v0[216];
  v4 = v0[215];
  v5 = v0[214];
  v6 = v0[213];
  v7 = v0[210];
  v8 = v0[209];
  v9 = v0[208];
  v10 = v0[205];
  v11 = v0[204];
  v12 = v0[203];
  v13 = v0[202];
  v14 = v0[201];
  v15 = v0[200];
  v16 = v0[197];
  v17 = v0[196];
  v18 = v0[194];
  v19 = v0[193];
  v20 = v0[192];
  v21 = v0[191];
  v22 = v0[188];
  v23 = v0[187];
  v24 = v0[186];
  v25 = v0[185];
  v26 = v0[182];
  v27 = v0[181];
  v28 = v0[180];
  v29 = v0[179];
  v30 = v0[178];
  v31 = v0[175];
  v32 = v0[172];
  v33 = v0[171];
  v34 = v0[170];
  v35 = v0[169];
  v36 = v0[166];
  v37 = v0[165];
  v38 = v0[164];
  v39 = v0[161];
  v40 = v0[160];
  v41 = v0[157];
  v42 = v0[154];
  v43 = v0[153];
  v44 = v0[152];
  v45 = v0[149];
  v46 = v0[147];
  v47 = v0[146];
  v48 = v0[145];
  v49 = v0[144];
  v50 = v0[143];
  v51 = v0[142];
  v52 = v0[141];
  v53 = v0[140];
  v54 = v0[137];
  v55 = v0[136];
  v56 = v0[135];
  v57 = v0[134];
  v58 = v0[133];
  v59 = v0[132];
  v60 = v0[131];
  v61 = v0[128];
  v62 = v0[125];
  v63 = v0[124];
  v64 = v0[123];
  STACK[0x200] = v0[122];
  STACK[0x208] = v0[121];
  STACK[0x210] = v0[118];
  STACK[0x218] = v0[117];
  STACK[0x220] = v0[116];
  STACK[0x228] = v0[113];
  STACK[0x230] = v0[110];
  STACK[0x238] = v0[109];
  STACK[0x240] = v0[108];
  STACK[0x248] = v0[107];
  STACK[0x250] = v0[104];
  STACK[0x258] = v0[101];
  STACK[0x260] = v0[100];
  STACK[0x268] = v0[97];
  STACK[0x270] = v0[94];
  STACK[0x278] = v0[93];
  STACK[0x280] = v0[90];
  STACK[0x288] = v0[87];
  STACK[0x290] = v0[86];
  STACK[0x298] = v0[83];
  STACK[0x2A0] = v0[82];
  STACK[0x2A8] = v0[79];
  STACK[0x2B0] = v0[76];
  STACK[0x2B8] = v0[75];
  STACK[0x2C0] = v0[74];
  STACK[0x2C8] = v0[73];
  STACK[0x2D0] = v0[72];
  STACK[0x2D8] = v0[71];
  STACK[0x2E0] = v0[70];
  STACK[0x2E8] = v0[69];
  STACK[0x2F0] = v0[66];
  STACK[0x2F8] = v0[65];
  v1 = v0[61];
  v2 = v0[62];
}

uint64_t sub_22C37E5C0()
{
  result = *(v0 - 96);
  v2 = *(v0 - 128);
  return result;
}

void sub_22C37E5E0()
{
  v2 = v0[181];
  v3 = v0[178];
  v4 = v0[177];
  v5 = v0[176];
  v6 = v0[173];
  v7 = v0[172];
  v8 = v0[171];
  v9 = v0[170];
  v10 = v0[169];
  v11 = v0[168];
  v12 = v0[167];
  v13 = v0[166];
  v14 = v0[165];
  v15 = v0[164];
  v16 = v0[163];
  v17 = v0[162];
  v18 = v0[161];
  v19 = v0[160];
  v20 = v0[159];
  v21 = v0[158];
  v22 = v0[157];
  v23 = v0[156];
  v24 = v0[155];
  v25 = v0[152];
  v26 = v0[151];
  v27 = v0[150];
  v28 = v0[149];
  v29 = v0[146];
  v30 = v0[143];
  v31 = v0[140];
  v32 = v0[137];
  v33 = v0[134];
  v34 = v0[131];
  v35 = v0[128];
  v36 = v0[125];
  v37 = v0[122];
  v38 = v0[119];
  v39 = v0[116];
  v40 = v0[114];
  v41 = v0[113];
  v42 = v0[111];
  v43 = v0[110];
  v44 = v0[107];
  v45 = v0[106];
  v46 = v0[105];
  v47 = v0[104];
  v48 = v0[103];
  v49 = v0[102];
  v50 = v0[100];
  v51 = v0[99];
  v52 = v0[96];
  v53 = v0[95];
  v54 = v0[94];
  v55 = v0[93];
  v56 = v0[90];
  v57 = v0[89];
  v58 = v0[86];
  v59 = v0[83];
  v60 = v0[80];
  v61 = v0[79];
  v62 = v0[78];
  v63 = v0[77];
  v64 = v0[76];
  v65 = v0[75];
  STACK[0x200] = v0[74];
  STACK[0x208] = v0[73];
  STACK[0x210] = v0[70];
  STACK[0x218] = v0[69];
  STACK[0x220] = v0[66];
  v1 = v0[62];
  STACK[0x228] = v0[63];
  STACK[0x230] = v1;
  STACK[0x238] = v0[59];
}