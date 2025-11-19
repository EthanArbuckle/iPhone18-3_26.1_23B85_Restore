uint64_t OUTLINED_FUNCTION_555()
{
  v2 = *(v0 - 112);
  v3 = *(v0 - 104);
  v4 = *(v0 - 96);
  v5 = *(v0 - 88);

  return sub_24DD763E4(v2, v3);
}

uint64_t OUTLINED_FUNCTION_556(uint64_t result, char a2)
{
  *(v2 + 112) = result;
  *(v2 + 120) = a2 & 1;
  return result;
}

uint64_t OUTLINED_FUNCTION_562@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  *a1 = *v1;
  *(a1 + 8) = *(v1 + 8);
  *(a1 + 24) = v3;
  *(a1 + 32) = v4;
}

uint64_t OUTLINED_FUNCTION_563()
{

  return sub_24DE22AD0();
}

uint64_t OUTLINED_FUNCTION_566()
{
  result = *(v0 + 56);
  v2 = *(v0 + 64);
  return result;
}

void OUTLINED_FUNCTION_567(uint64_t a1@<X8>)
{
  *(a1 + 4) = v2;
  *a1 = v1;
  *(a1 + 5) = v3;
}

void OUTLINED_FUNCTION_579()
{
  *(v1 - 264) = *(v0 + 144);
  v2 = *(v0 + 156);
  *(v1 - 268) = *(v0 + 152);
  *(v1 - 280) = v2;
  *(v1 - 284) = *(v0 + 160);
  *(v1 - 296) = *(v0 + 164);
  *(v1 - 300) = *(v0 + 168);
}

void OUTLINED_FUNCTION_587(__n128 a1)
{
  *(v1 + 200) = a1;
  *(v1 + 184) = a1;
  *(v1 + 168) = a1;
  *(v1 + 152) = a1;
  *(v1 + 136) = a1;
  *(v1 + 120) = a1;
  *(v1 + 104) = a1;
  *(v1 + 88) = a1;
  *(v1 + 72) = a1;
  *(v1 + 56) = a1;
  *(v1 + 40) = a1;
  *(v1 + 24) = a1;
  *(v1 + 8) = a1;
}

uint64_t OUTLINED_FUNCTION_588()
{

  return sub_24DE22CC0();
}

void OUTLINED_FUNCTION_590()
{
  v1 = *(v0 + 160);
  *(v0 + 1888) = *(v0 + 168);
  *(v0 + 1896) = v1;
  v2 = *(v0 + 144);
  *(v0 + 1904) = *(v0 + 152);
  *(v0 + 1912) = v2;
  v3 = *(v0 + 128);
  *(v0 + 1920) = *(v0 + 136);
  *(v0 + 1928) = v3;
  v4 = *(v0 + 112);
  *(v0 + 1936) = *(v0 + 120);
  *(v0 + 1944) = v4;
  *(v0 + 1952) = *(v0 + 104);
  *(v0 + 1960) = *(v0 + 100);
}

void OUTLINED_FUNCTION_591(uint64_t a1@<X8>)
{
  v8 = *(a1 + 104);
  v6 = *(a1 + 112);
  v7 = *(a1 + 120);
  v3 = *(a1 + 128);
  v5 = *(a1 + 136);
  v1 = *(a1 + 140);
  v4 = *(a1 + 144);
  v2 = *(a1 + 152);
}

void OUTLINED_FUNCTION_601()
{
  *(v0 + 224) = 0;
  *(v0 + 232) = 0;
  *(v0 + 240) = 0;
}

__n128 OUTLINED_FUNCTION_605(__n128 *a1)
{
  result = *a1;
  v2 = a1[1].n128_u64[0];
  return result;
}

void OUTLINED_FUNCTION_607()
{
  *(v1 - 72) = 0;
  v0[8] = 0;
  v0[9] = 0;
  v0[13] = 0;
  v0[14] = 0;
  v0[10] = 0;
}

void OUTLINED_FUNCTION_609()
{
  *(v0 + 208) = 0;
  *(v0 + 216) = 0;
  *(v0 + 224) = 0;
}

uint64_t OUTLINED_FUNCTION_611()
{
  *(v3 - 232) = v1;
  *(v3 - 228) = *(v3 - 68);
  v4 = *(v3 - 288);
  *(v3 - 224) = *(v3 - 256);
  *(v3 - 208) = v4;
  v5 = *(v3 - 304);
  *(v3 - 192) = *(v3 - 272);
  *(v3 - 176) = v5;
  *(v3 - 160) = v2;
  return v0;
}

void OUTLINED_FUNCTION_619()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
}

void OUTLINED_FUNCTION_622()
{
  *(v0 + 1040) = *(v0 + 112);
  v2 = *(v0 + 120);
  *(v0 + 1048) = *(v0 + 128);
  *(v0 + 1056) = v2;
  *(v0 + 1064) = *(v0 + 136);
  LODWORD(v2) = *(v0 + 84);
  *(v0 + 1072) = *(v0 + 88);
  *(v0 + 1073) = v2;
  *(v0 + 1074) = *(v0 + 92);
  v3 = *(v1 - 132);
  *(v0 + 1079) = *(v1 - 128);
}

void OUTLINED_FUNCTION_623()
{
  v0[24] = 0;
  v0[25] = 0;
  v0[26] = 0;
  v0[27] = 0;
}

void *OUTLINED_FUNCTION_650()
{
  *(v0 + 576) = *(v0 + 24);
  v6 = *(v4 - 68);
  *(v4 - 72) = v6;
  *(v0 + 580) = v6;
  v7 = *(v0 + 16);
  *(v0 + 584) = *(v0 + 8);
  *(v0 + 592) = v7;
  *(v0 + 600) = *v0;
  *(v0 + 608) = v1;
  *(v0 + 616) = v2;
  *(v0 + 624) = v3;

  return memcpy((v0 + 632), (v0 + 48), 0x101uLL);
}

__n128 OUTLINED_FUNCTION_654()
{
  v2 = v0->n128_u64[1];
  v3 = v0[2].n128_u8[0];
  v4 = v0[2].n128_u32[1];
  v5 = v0[2].n128_u8[8];
  v6 = v0[2].n128_u8[9];
  *(v1 - 64) = v0->n128_u64[0];
  *(v1 - 56) = v2;
  result = v0[1];
  *(v1 - 48) = result;
  *(v1 - 32) = v3;
  *(v1 - 24) = v5;
  *(v1 - 28) = v4;
  *(v1 - 23) = v6;
  return result;
}

__n128 OUTLINED_FUNCTION_665(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, int a20, char a21, unint64_t a22, int a23, char a24, __n128 a25)
{
  v25[12].n128_u8[8] = a21 & 1;
  v25[13].n128_u64[0] = a22;
  v25[13].n128_u8[8] = a24 & 1;
  result = a25;
  v25[14] = a25;
  v28 = *(v26 - 104);
  v25[15].n128_u64[0] = *(v26 - 112);
  v25[15].n128_u64[1] = v28;
  return result;
}

void OUTLINED_FUNCTION_678()
{
  v2 = *(v0 - 152);
  v3 = *(v0 - 80);
  *(v0 - 68) = *(v0 - 148);
  v4 = *(v0 - 128);
  *(v0 - 256) = *(v0 - 144);
  *(v0 - 288) = v4;
  v5 = *(v0 - 96);
  *(v0 - 272) = *(v0 - 112);
  *(v0 - 304) = v5;

  JUMPOUT(0x253039720);
}

__n128 OUTLINED_FUNCTION_687(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  v5 = *(a2 + 24);
  v6 = *(a2 + 40);
  v7 = *(v2 - 8);
  return *(a2 + 72);
}

void OUTLINED_FUNCTION_697(_DWORD *a1@<X8>)
{
  *a1 = v1;
  *(v2 + 2007) = *(v2 + 2159);
  v3 = *(v2 + 216);
  *(v2 + 2008) = *(v2 + 208);
  *(v2 + 2016) = v3;
  v4 = *(v2 + 200);
  *(v2 + 2024) = *(v2 + 192);
  *(v2 + 2032) = v4;
  *(v2 + 2040) = *(v2 + 184);
}

__n128 OUTLINED_FUNCTION_705()
{
  v1 = *(v0 + 176);
  *(v0 - 112) = *(v0 + 168);
  *(v0 - 104) = v1;
  result = *(v0 + 152);
  v6 = *(v0 + 144);
  v5 = *(v0 + 136);
  v4 = *(v0 + 128);
  v3 = *(v0 + 120);
  return result;
}

__n128 OUTLINED_FUNCTION_706()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = *(v0 + 44);
  v5 = *(v0 + 45);
  result = *v0;
  v7 = *(v0 + 16);
  *(v1 - 64) = *v0;
  *(v1 - 48) = v7;
  *(v1 - 32) = v2;
  *(v1 - 20) = v4;
  *(v1 - 24) = v3;
  *(v1 - 19) = v5;
  return result;
}

void OUTLINED_FUNCTION_717()
{
  v1 = *(v0 + 56);
  *(v0 + 365) = *(v0 + 60);
  *(v0 + 366) = v1;
  *(v0 + 367) = *(v0 + 164);
  v2 = *(v0 + 152);
  *(v0 + 368) = *(v0 + 144);
  *(v0 + 376) = v2;
  v3 = *(v0 + 136);
  *(v0 + 384) = *(v0 + 128);
  *(v0 + 392) = v3;
  *(v0 + 400) = *(v0 + 120);
}

uint64_t OUTLINED_FUNCTION_721()
{

  return sub_24DE22B70();
}

void *OUTLINED_FUNCTION_722(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59)
{

  return memcpy(&a59, (v59 + 16), 0x49uLL);
}

void OUTLINED_FUNCTION_730()
{
  v0[115] = v0[32];
  v0[116] = v0[26];
  v1 = v0[23];
  v0[117] = v0[24];
  v0[118] = v1;
  v2 = v0[21];
  v0[119] = v0[22];
  v0[120] = v2;
}

__n128 OUTLINED_FUNCTION_736()
{
  result = *v0;
  v2 = *(v0 + 16);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  v6 = *(v0 + 52);
  v5 = *(v0 + 48);
  return result;
}

void OUTLINED_FUNCTION_737()
{
  v2 = *(v0 + 16);
  *(v1 - 104) = *(v0 + 24);
  *(v1 - 96) = v2;
}

void OUTLINED_FUNCTION_739(uint64_t a1@<X8>)
{
  v2 = (v1 + a1);
  v3 = *v2;
  v4 = *(v2 + 4);
}

uint64_t OUTLINED_FUNCTION_740@<X0>(uint64_t *a1@<X8>)
{
  result = *a1;
  v3 = *v1;
  return result;
}

__n128 OUTLINED_FUNCTION_741()
{
  v2 = *(v1 - 208);
  *(v1 - 304) = *(v1 - 224);
  *(v1 - 288) = v2;
  result = *(v0 + 32);
  v4 = *(v0 + 48);
  *(v1 - 272) = result;
  *(v1 - 256) = v4;
  return result;
}

__n128 OUTLINED_FUNCTION_742()
{
  v1 = *(v0 - 208);
  *(v0 - 288) = *(v0 - 224);
  *(v0 - 272) = v1;
  *(v0 - 256) = *(v0 - 192);
  result = *(v0 - 183);
  *(v0 - 247) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_744()
{
  result = *(v0 + 112);
  v2 = *(v0 + 120);
  return result;
}

uint64_t OUTLINED_FUNCTION_763()
{
  v3 = *(v0 + 8);
  result = v1;
  v5 = *(v2 - 104);
  return result;
}

uint64_t OUTLINED_FUNCTION_766()
{

  return sub_24DE22CA0();
}

void OUTLINED_FUNCTION_768()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v6 = v0[6];
  v5 = v0[7];
  v8 = v0[8];
  v7 = v0[9];
}

void OUTLINED_FUNCTION_769(uint64_t a1@<X8>, __n128 a2@<Q0>)
{
  *a1 = a2;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 73) = 0u;
}

uint64_t OUTLINED_FUNCTION_772@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = result;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  return result;
}

uint64_t OUTLINED_FUNCTION_773@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  *a4 = a1;
  a4[1] = a2;
  a4[2] = a3;
  return sub_24DDE48CC(a1, a2);
}

unint64_t OUTLINED_FUNCTION_776(uint64_t a1, uint64_t a2)
{
  *(v2 - 248) = a1;
  *(v2 - 240) = a2;
  *(v2 - 224) = 2;

  return sub_24DDE1E9C();
}

void OUTLINED_FUNCTION_780()
{
  v2 = v0[8];
  v1 = v0[9];
  v4 = v0[6];
  v3 = v0[7];
}

void OUTLINED_FUNCTION_783()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  v3 = *(v0 + 32);
  v5 = *(v0 + 24);
  v4 = *(v0 + 28);
}

__n128 OUTLINED_FUNCTION_786(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, __int128 a17, __int128 a18, __n128 a19, __int128 a20)
{
  *v20 = a17;
  v20[1] = a18;
  result = a19;
  v20[2] = a19;
  v20[3] = a20;
  return result;
}

uint64_t OUTLINED_FUNCTION_787(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v14[21] = v15;
  v14[22] = v13;
  v14[23] = v11;
  v14[24] = v12;
  return a11;
}

void *OUTLINED_FUNCTION_788()
{

  return memcpy((v0 + 16), v1, 0x98uLL);
}

uint64_t OUTLINED_FUNCTION_795()
{

  return sub_24DE22CE0();
}

uint64_t OUTLINED_FUNCTION_796()
{

  return sub_24DE22CC0();
}

void OUTLINED_FUNCTION_797()
{
  v3 = *(v1 - 68);
  v4 = *(v0 + 24);
  v5 = *(v0 + 40);

  Components.Schemas.Com_apple_gk_data_challenge_ChallengeCreateInviteCode_Response.hash(into:)();
}

uint64_t OUTLINED_FUNCTION_798()
{
}

void *OUTLINED_FUNCTION_799(void *a1)
{

  return memcpy(a1, v1, 0x98uLL);
}

uint64_t OUTLINED_FUNCTION_800@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>, __n128 a3@<Q0>)
{
  *(result + 56) = a3;
  *(result + 40) = a3;
  *(result + 24) = a3;
  *(result + 8) = a3;
  *result = a2;
  return result;
}

void OUTLINED_FUNCTION_804()
{
  v2 = v0[2];
  *(v1 - 112) = v0[3];
  *(v1 - 104) = v2;
  v3 = v0[4];
  *(v1 - 128) = v0[5];
  *(v1 - 120) = v3;
  v4 = v0[6];
  *(v1 - 144) = v0[7];
  *(v1 - 136) = v4;
  v5 = v0[8];
  *(v1 - 160) = v0[9];
  *(v1 - 152) = v5;
}

void OUTLINED_FUNCTION_813()
{
  v2 = v0[16];
  *(v1 - 168) = v0[15];
  *(v1 - 160) = v2;
  v3 = v0[14];
  *(v1 - 152) = v0[13];
  *(v1 - 144) = v3;
  v4 = v0[12];
  *(v1 - 136) = v0[11];
  *(v1 - 128) = v4;
  v5 = v0[18];
  *(v1 - 120) = v0[17];
  *(v1 - 112) = v5;
}

uint64_t OUTLINED_FUNCTION_815(uint64_t result, unsigned int *a2)
{
  v3 = *(result + 56);
  v4 = *(result + 64);
  v5 = *a2;
  v6 = *(a2 + 4);
  v7 = *(a2 + 7);
  v8 = *(a2 + 64);
  *(v2 - 12) = *(result + 4);
  return result;
}

void OUTLINED_FUNCTION_821()
{
  v1 = v0[55];
  v0[221] = v0[54];
  v0[222] = v1;
  v2 = v0[52];
  v0[223] = v0[51];
  v0[224] = v2;
  v0[225] = v0[53];
}

void OUTLINED_FUNCTION_823()
{
  *(v0 + 975) = *(v1 - 96);
  *(v0 + 976) = *(v0 + 200);
  *(v0 + 984) = *(v0 + 216);
  *(v0 + 992) = *(v0 + 160);
}

void OUTLINED_FUNCTION_833()
{
  v3 = *(v1 - 56);
  v4 = *(v0 + 16);
  v5 = *(v0 + 32);

  Components.Schemas.Com_apple_gk_data_challenge_ChallengeLeave_Response.hash(into:)();
}

void OUTLINED_FUNCTION_835(uint64_t a1@<X8>)
{
  *a1 = v1;
  *(a1 + 12) = v3;
  *(a1 + 8) = v2;
  *(a1 + 13) = v4;
}

uint64_t OUTLINED_FUNCTION_838@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = v2;
  a2[1] = a1;
}

void *OUTLINED_FUNCTION_839(void *a1)
{

  return memcpy(a1, v1, 0x98uLL);
}

uint64_t OUTLINED_FUNCTION_840()
{
  v2 = *v0;
  v3 = v0[1];
}

void OUTLINED_FUNCTION_841()
{

  JUMPOUT(0x253039720);
}

void OUTLINED_FUNCTION_846()
{
  v0[15] = 0;
  v0[16] = 0;
  v0[17] = 0;
  v0[18] = 0;
}

__n128 OUTLINED_FUNCTION_852()
{
  v1 = v0;
  v2 = *v0;
  v3 = *(v0 + 4);
  result = *(v1 + 10);
  v5 = *(v1 + 7);
  return result;
}

uint64_t OUTLINED_FUNCTION_855()
{

  return sub_24DE22CC0();
}

void OUTLINED_FUNCTION_866()
{
  v0[111] = v0[33];
  v0[112] = v0[31];
  v1 = v0[28];
  v0[113] = v0[29];
  v0[114] = v1;
}

uint64_t OUTLINED_FUNCTION_872()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
}

uint64_t OUTLINED_FUNCTION_873()
{
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
}

void *OUTLINED_FUNCTION_874(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[119] = v5;
  v6[118] = a5;
  v6[117] = a4;
  v6[116] = a2;
  v6[115] = a1;

  return memcpy(v6 + 77, a2, 0x98uLL);
}

uint64_t OUTLINED_FUNCTION_878()
{

  return sub_24DE22CE0();
}

void OUTLINED_FUNCTION_879()
{

  JUMPOUT(0x253039720);
}

uint64_t OUTLINED_FUNCTION_881()
{
  v5 = *(v3 - 88);
  *v0 = v2;
  v0[1] = v1;
  v0[2] = v5;
}

uint64_t OUTLINED_FUNCTION_883(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = v1[1];
  v6 = v1[3];
  v5 = v1[4];
}

uint64_t OUTLINED_FUNCTION_886@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>, __n128 a3@<Q0>)
{
  *(result + 40) = a3;
  *(result + 24) = a3;
  *(result + 8) = a3;
  *result = a2;
  return result;
}

uint64_t OUTLINED_FUNCTION_887()
{

  return sub_24DE22CE0();
}

uint64_t OUTLINED_FUNCTION_888()
{

  return sub_24DE22CA0();
}

uint64_t OUTLINED_FUNCTION_892(uint64_t result)
{
  *(v1 + 164) = result;
  *(v1 + 168) = BYTE4(result) & 1;
  return result;
}

int8x8_t OUTLINED_FUNCTION_893@<D0>(unsigned __int16 a1@<W8>, __n128 a2@<Q0>, int16x8_t a3@<Q1>)
{
  a3.i16[1] = a3.i16[2];
  a3.i16[2] = a2.n128_u16[0];
  a3.i16[3] = a1;
  return vmovn_s16(a3);
}

uint64_t OUTLINED_FUNCTION_894(uint64_t result)
{
  *(v1 + 156) = result;
  *(v1 + 160) = BYTE4(result) & 1;
  return result;
}

uint64_t OUTLINED_FUNCTION_896()
{
  v2 = *(v0 + 40);
  v3 = *(v0 + 56);
  return v1;
}

uint64_t OUTLINED_FUNCTION_898@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + a1);
  v4 = *v3;
  v5 = v3[1];
}

uint64_t OUTLINED_FUNCTION_899(uint64_t result, char a2)
{
  *(v2 + 104) = result;
  *(v2 + 112) = a2 & 1;
  return result;
}

void OUTLINED_FUNCTION_900(void *a1@<X8>)
{
  v1 = a1[1];
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v5 = a1[5];
  v6 = a1[6];
  v7 = a1[7];
  v8 = a1[8];
  v9 = a1[9];
}

uint64_t OUTLINED_FUNCTION_905(uint64_t result, char a2)
{
  *(v2 + 120) = result;
  *(v2 + 128) = a2 & 1;
  return result;
}

uint64_t OUTLINED_FUNCTION_906(uint64_t result)
{
  *(v1 + 4) = result;
  *(v1 + 8) = BYTE4(result) & 1;
  return result;
}

uint64_t OUTLINED_FUNCTION_909(uint64_t result, char a2)
{
  *(v2 + 96) = result;
  *(v2 + 104) = a2 & 1;
  return result;
}

uint64_t *OUTLINED_FUNCTION_912()
{
  *(v1 - 56) = v0;

  return __swift_allocate_boxed_opaque_existential_0((v1 - 80));
}

uint64_t OUTLINED_FUNCTION_915()
{

  return sub_24DE22CE0();
}

void OUTLINED_FUNCTION_916()
{
  v1 = v0[16];
  v0[246] = v0[15];
  v0[247] = v1;
  v2 = v0[14];
  v0[248] = v0[13];
  v0[249] = v2;
}

uint64_t OUTLINED_FUNCTION_918()
{

  return __swift_destroy_boxed_opaque_existential_1Tm((v0 - 80));
}

void OUTLINED_FUNCTION_926()
{
  *(v1 - 36) = v0;

  JUMPOUT(0x253039720);
}

void OUTLINED_FUNCTION_927()
{
  v1 = *(v0 - 280);
  v2 = *(v0 - 288);
  v3 = *(v0 - 296);
}

uint64_t OUTLINED_FUNCTION_930(uint64_t result, char a2)
{
  *(v2 + 208) = result;
  *(v2 + 216) = a2 & 1;
  return result;
}

uint64_t OUTLINED_FUNCTION_931(uint64_t result)
{
  *(v1 + 140) = result;
  *(v1 + 144) = BYTE4(result) & 1;
  return result;
}

uint64_t OUTLINED_FUNCTION_933(uint64_t result, char a2)
{
  *(v2 + 80) = result;
  *(v2 + 88) = a2 & 1;
  return result;
}

uint64_t OUTLINED_FUNCTION_934(uint64_t result, char a2)
{
  *(v2 + 32) = result;
  *(v2 + 40) = a2 & 1;
  return result;
}

void OUTLINED_FUNCTION_936()
{
  v2 = *(v0 - 240);
  v1 = *(v0 - 232);
  v4 = *(v0 - 256);
  v3 = *(v0 - 248);
}

__n128 OUTLINED_FUNCTION_937()
{
  result = *v0;
  v3 = *(v0 + 16);
  *(v1 - 64) = *v0;
  *(v1 - 48) = v3;
  return result;
}

void OUTLINED_FUNCTION_939()
{
  v3 = *(v1 - 56);
  v4 = *(v0 + 72);
  v5 = *(v0 + 88);

  Components.Schemas.GetLeaderboardEntriesForPlayers_Response.hash(into:)();
}

void *OUTLINED_FUNCTION_940@<X0>(uint64_t a1@<X8>)
{

  return memcpy((a1 + 16), (v1 + 16), 0x49uLL);
}

void *OUTLINED_FUNCTION_941@<X0>(uint64_t a1@<X8>)
{

  return memcpy((a1 + 16), (v1 + 16), 0x49uLL);
}

void *OUTLINED_FUNCTION_942(void *a1)
{

  return memcpy(a1, v1, 0xB8uLL);
}

void OUTLINED_FUNCTION_945()
{
  *(v0 + 1014) = *(v0 + 316);
  *(v0 + 1015) = *(v0 + 312);
  *(v0 + 1016) = *(v0 + 308);
}

void *OUTLINED_FUNCTION_949(void *a1)
{

  return memcpy(a1, v1, 0x59uLL);
}

void *OUTLINED_FUNCTION_950()
{

  return memcpy((v0 + 384), (v0 + 16), 0xB8uLL);
}

void *OUTLINED_FUNCTION_951()
{

  return memcpy((v0 + 200), (v0 + 16), 0xB8uLL);
}

void OUTLINED_FUNCTION_955()
{
  v1 = v0;
  v2 = *v0;
  v3 = *(v0 + 1);
  v4 = v0[8];
  v5 = *(v1 + 6);
  v6 = *(v1 + 7);
}

void OUTLINED_FUNCTION_956()
{
  v1 = v0;
  v2 = *v0;
  v3 = v0[1];
  v4 = *(v0 + 4);
  v5 = *(v0 + 20);
  v6 = v1[7];
  v7 = v1[8];
}

uint64_t OUTLINED_FUNCTION_958()
{

  return sub_24DE22CC0();
}

uint64_t OUTLINED_FUNCTION_962()
{

  return sub_24DE22CE0();
}

uint64_t OUTLINED_FUNCTION_963()
{

  return sub_24DE22CE0();
}

uint64_t OUTLINED_FUNCTION_964()
{

  return sub_24DE22CE0();
}

void OUTLINED_FUNCTION_965()
{

  JUMPOUT(0x253039720);
}

uint64_t OUTLINED_FUNCTION_967()
{
  v2 = *(v0 - 120);
  v3 = *(v0 - 112);
  v4 = *(v0 - 104);
  v5 = *(v0 - 96);

  return sub_24DD763E4(v2, v3);
}

void *OUTLINED_FUNCTION_968(void *a1)
{

  return memcpy(a1, v1, 0x98uLL);
}

__n128 OUTLINED_FUNCTION_971()
{
  result = *v1;
  *(v0 + 40) = *(v1 + 16);
  *(v0 + 24) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_974()
{
  v2 = *(v0 + 56);
  v3 = *(v0 + 64);
}

void OUTLINED_FUNCTION_976()
{
  *(v0 + 112) = 0;
  *(v0 + 176) = 0;
  *(v1 - 72) = 0;
}

__n128 OUTLINED_FUNCTION_977(__n128 *a1)
{
  result = *a1;
  v2 = a1[1].n128_u64[0];
  return result;
}

__n128 OUTLINED_FUNCTION_981(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __n128 a10)
{
  result = a10;
  *(v10 + 88) = a9;
  *(v10 + 104) = a10;
  return result;
}

void OUTLINED_FUNCTION_984()
{
  v0[54] = 0;
  v0[55] = 0;
  v0[56] = 0;
  v0[57] = 0;
  v0[58] = 0;
}

void OUTLINED_FUNCTION_985()
{
  v1 = v0[19];
  v2 = v0[20];
  v3 = v0[21];
  v4 = v0[22];
}

void OUTLINED_FUNCTION_986(__n128 a1)
{
  *v1 = a1;
  *(v1 + 16) = 0u;
  *(v1 + 32) = 0u;
  *(v1 + 48) = 0u;
}

void OUTLINED_FUNCTION_987()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
}

void OUTLINED_FUNCTION_993()
{
  v2 = *(v0 + 64);
  v1 = *(v0 + 72);
  v3 = *(v0 + 80);
}

__n128 OUTLINED_FUNCTION_995()
{
  result = *v0;
  *(v1 + 56) = *(v0 + 16);
  *(v1 + 40) = result;
  return result;
}

__n128 OUTLINED_FUNCTION_996()
{
  result = *v0;
  v4 = *(v0 + 16);
  *v1 = *v0;
  *(v1 + 16) = v4;
  *(v1 + 32) = v2;
  return result;
}

uint64_t OUTLINED_FUNCTION_997(uint64_t result, __n128 a2)
{
  *(result + 56) = a2;
  *(result + 40) = a2;
  *(result + 24) = a2;
  *(result + 8) = a2;
  return result;
}

uint64_t OUTLINED_FUNCTION_998(uint64_t a1, uint64_t a2)
{

  return sub_24DD7639C(a1, a2);
}

uint64_t OUTLINED_FUNCTION_1001()
{

  return sub_24DE22CE0();
}

void *OUTLINED_FUNCTION_1002(void *a1)
{

  return memcpy(a1, (v1 + 16), 0x49uLL);
}

uint64_t OUTLINED_FUNCTION_1003()
{
  v2 = *(v0 + 96);
  v3 = *(v0 + 104);
}

void OUTLINED_FUNCTION_1004()
{

  JUMPOUT(0x253039720);
}

void *OUTLINED_FUNCTION_1008(void *a1)
{

  return memcpy(a1, (v1 + 144), 0x90uLL);
}

uint64_t OUTLINED_FUNCTION_1009()
{
  v2 = *(v0 + 48);
  v3 = *(v0 + 56);
}

void OUTLINED_FUNCTION_1010()
{

  JUMPOUT(0x253039720);
}

void *OUTLINED_FUNCTION_1012(void *a1)
{

  return memcpy(a1, (v1 + 16), 0x49uLL);
}

void OUTLINED_FUNCTION_1017(uint64_t *a1@<X8>)
{
  v1 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v3 = a1[3];
}

void OUTLINED_FUNCTION_1018()
{
  *(v0 + 168) = 1;
  v1 = *(v0 + 152);
  v3 = *(v0 + 128);
  v2 = *(v0 + 136);
  v4 = *(v0 + 64);
}

void OUTLINED_FUNCTION_1019(uint64_t *a1@<X8>)
{
  v2 = v1[1];
  v3 = v1[2];
  v4 = v1[3];
  v5 = *a1;
  v6 = a1[1];
  v7 = a1[2];
  v8 = a1[3];
}

uint64_t OUTLINED_FUNCTION_1020()
{
  result = v0;
  v2 = STACK[0x288];
  v3 = STACK[0x290];
  return result;
}

__n128 OUTLINED_FUNCTION_1032(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  v4 = *(a2 + 24);
  return *(a2 + 40);
}

void *OUTLINED_FUNCTION_1043()
{
  sub_24DDE8A88((v0 + 1640), (v0 + 1000));
  sub_24DDE8A88((v0 + 680), (v0 + 1320));

  return memcpy((v0 + 360), (v0 + 1000), 0x139uLL);
}

void OUTLINED_FUNCTION_1045()
{
  v1 = v0[22];
  v0[86] = v0[23];
  v0[87] = v1;
  v0[88] = v0[24];
}

void OUTLINED_FUNCTION_1048()
{
  v1 = v0[63];
  v0[232] = v0[62];
  v0[233] = v1;
  v0[234] = v0[23];
}

void OUTLINED_FUNCTION_1052(__n128 a1)
{
  *v1 = a1;
  *(v1 + 16) = 0u;
  *(v1 + 32) = 0u;
  *(v1 + 48) = 0u;
  *(v1 + 64) = 0u;
  *(v1 + 73) = 0u;
}

uint64_t OUTLINED_FUNCTION_1057@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[1];
  *v2 = *a1;
  *(v2 + 16) = v3;
  *(v2 + 32) = a2;
  return 1;
}

void OUTLINED_FUNCTION_1066()
{
  v0[20] = 0;
  v0[17] = 0;
  v0[18] = 0;
  v0[15] = 0;
  v0[16] = 0;
  v0[13] = 0;
  v0[14] = 0;
  v0[23] = 0;
  v0[24] = 0;
}

uint64_t OUTLINED_FUNCTION_1070()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  return v0;
}

void OUTLINED_FUNCTION_1071()
{
  v0 = STACK[0x2E0];
  v1 = STACK[0x2D8];
  v2 = STACK[0x2D0];
  v3 = STACK[0x2C8];
  v4 = STACK[0x2C0];
}

uint64_t OUTLINED_FUNCTION_1078(uint64_t a1)
{
  *(a1 + 8) = v1;
  v3 = v2[11];
  v4 = v2[12];
  result = v2[9];
  v6 = v2[10];
  return result;
}

void *OUTLINED_FUNCTION_1088(void *a1)
{

  return memcpy(a1, (v1 - 184), 0x59uLL);
}

uint64_t OUTLINED_FUNCTION_1089()
{
  v2 = *(v0 + 88);
  v3 = *(v0 + 96);
}

uint64_t OUTLINED_FUNCTION_1090()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
}

void *OUTLINED_FUNCTION_1091(void *a1)
{

  return memcpy(a1, (v1 + 184), 0xB0uLL);
}

void *OUTLINED_FUNCTION_1092(void *a1)
{

  return memcpy(a1, (v1 + 184), 0x98uLL);
}

uint64_t OUTLINED_FUNCTION_1093()
{
  v2 = *(v0 + 72);
  v3 = *(v0 + 80);
}

void *OUTLINED_FUNCTION_1094(void *a1)
{

  return memcpy(a1, (v1 + 152), 0xBEuLL);
}

uint64_t OUTLINED_FUNCTION_1095()
{
  v2 = *(v0 + 64);
  v3 = *(v0 + 72);
}

void *OUTLINED_FUNCTION_1096(void *a1)
{

  return memcpy(a1, v1, 0x98uLL);
}

uint64_t OUTLINED_FUNCTION_1097()
{

  return sub_24DE22D30();
}

void *OUTLINED_FUNCTION_1105@<X0>(uint64_t a1@<X8>)
{

  return memcpy((a1 + 24), (v1 + 40), 0x55uLL);
}

uint64_t OUTLINED_FUNCTION_1106()
{
  result = *(v0 + 104);
  v2 = *(v0 + 112);
  return result;
}

uint64_t OUTLINED_FUNCTION_1107()
{
  result = *(v0 + 96);
  v2 = *(v0 + 104);
  return result;
}

uint64_t OUTLINED_FUNCTION_1108()
{
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
}

uint64_t OUTLINED_FUNCTION_1109()
{
  v2 = *(v0 + 128);
  v3 = *(v0 + 136);
}

uint64_t OUTLINED_FUNCTION_1112(uint64_t a1, uint64_t a2)
{
  v4 = *(v2 - 176);
  v5 = *(v2 - 168);

  return sub_24DD7639C(a1, a2);
}

void OUTLINED_FUNCTION_1115(uint64_t a1@<X8>, __n128 a2@<Q0>)
{
  *(a1 + 40) = a2;
  *(a1 + 56) = a2;
  *(a1 + 72) = a2;
  *(a1 + 88) = a2;
}

uint64_t OUTLINED_FUNCTION_1118()
{
  result = *(v0 + 120);
  v2 = *(v0 + 128);
  return result;
}

uint64_t OUTLINED_FUNCTION_1119()
{

  return sub_24DE22CE0();
}

void OUTLINED_FUNCTION_1120()
{
  v2 = *(v0 - 72);

  Components.Schemas.SetProfileSettings_Response.hash(into:)();
}

uint64_t OUTLINED_FUNCTION_1125()
{

  return sub_24DE22D50();
}

uint64_t OUTLINED_FUNCTION_1126()
{

  return sub_24DE22CA0();
}

uint64_t OUTLINED_FUNCTION_1127()
{

  return sub_24DE22AD0();
}

uint64_t OUTLINED_FUNCTION_1128()
{

  return sub_24DE22AD0();
}

uint64_t OUTLINED_FUNCTION_1129()
{
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
}

uint64_t OUTLINED_FUNCTION_1130()
{
  result = *(v0 + 208);
  v2 = *(v0 + 216);
  return result;
}

uint64_t OUTLINED_FUNCTION_1131()
{
  v2 = *(v0 + 80);
  v3 = *(v0 + 88);
}

uint64_t OUTLINED_FUNCTION_1132()
{
  result = *(v0 + 80);
  v2 = *(v0 + 88);
  return result;
}

uint64_t OUTLINED_FUNCTION_1133()
{
  result = *(v0 + 32);
  v2 = *(v0 + 40);
  return result;
}

uint64_t OUTLINED_FUNCTION_1134()
{

  return sub_24DDE73DC();
}

void OUTLINED_FUNCTION_1135()
{

  JUMPOUT(0x253039720);
}

uint64_t OUTLINED_FUNCTION_1136@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __n128 a10@<Q0>, __n128 a11@<Q1>, __n128 a12@<Q2>, __n128 a13@<Q3>, __n128 a14@<Q4>)
{

  return sub_24DDD6934(a1, a2, a3, a4, a5, a6, a7, a8, a9, *&a10, *&a11, *&a12, *&a13, a14.n128_i64[0], a14.n128_i64[1], v14, v15, v16);
}

void *OUTLINED_FUNCTION_1137(void *a1)
{

  return memcpy(a1, v1, 0x98uLL);
}

void *OUTLINED_FUNCTION_1139(void *a1)
{

  return memcpy(a1, v1, 0xB8uLL);
}

void *OUTLINED_FUNCTION_1140@<X0>(const void *a1@<X1>, void *a2@<X8>)
{

  return memcpy(a2, a1, 0x98uLL);
}

uint64_t OUTLINED_FUNCTION_1143()
{

  return sub_24DDE73DC();
}

uint64_t OUTLINED_FUNCTION_1163@<X0>(unsigned int *a1@<X8>)
{
  v2 = *a1;

  return sub_24DE22CE0();
}

uint64_t OUTLINED_FUNCTION_1164()
{
  v2 = *(v0 + 112);
  v3 = *(v0 + 120);
}

uint64_t OUTLINED_FUNCTION_1165()
{

  return sub_24DE22CF0();
}

void *OUTLINED_FUNCTION_1166(void *a1)
{

  return memcpy(a1, &STACK[0x820], 0x118uLL);
}

void *OUTLINED_FUNCTION_1167(void *a1)
{

  return memcpy(a1, &STACK[0x670], 0x101uLL);
}

void *OUTLINED_FUNCTION_1168(void *a1)
{

  return memcpy(a1, (v1 + 144), 0x90uLL);
}

uint64_t OUTLINED_FUNCTION_1169()
{

  return sub_24DE22AD0();
}

void *OUTLINED_FUNCTION_1170(void *a1)
{

  return memcpy(a1, &STACK[0x608], 0x7DuLL);
}

void *OUTLINED_FUNCTION_1171(void *a1)
{

  return memcpy(a1, v1, 0x6DuLL);
}

uint64_t OUTLINED_FUNCTION_1172()
{

  return static Components.Schemas.Friend_GetFriendPlayerIdsYukon_Request.== infix(_:_:)(v0 - 120, v0 - 152);
}

void OUTLINED_FUNCTION_1178(uint64_t a1@<X8>)
{
  *(v2 - 168) = v1;
  *(v2 - 176) = *(a1 + 64);
  v3 = *(a1 + 72);
}

void OUTLINED_FUNCTION_1180()
{
  v2 = v0[2];
  *(v1 - 136) = v0[3];
  *(v1 - 128) = v2;
  v3 = v0[4];
  *(v1 - 152) = v0[5];
  *(v1 - 144) = v3;
}

uint64_t OUTLINED_FUNCTION_1182@<X0>(uint64_t a1@<X8>)
{
  v2 = (v1 + a1);
  result = *v2;
  v4 = v2[1];
  return result;
}

void OUTLINED_FUNCTION_1197()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = *(v0 + 28);
  v5 = *(v0 + 6);
}

void OUTLINED_FUNCTION_1209(uint64_t a1@<X8>)
{
  v2[82] = v1;
  v2[83] = a1;
  v2[84] = v2[23];
}

void OUTLINED_FUNCTION_1217(uint64_t a1@<X8>)
{
  *(v2 - 84) = BYTE4(a1);
  *(v2 - 88) = a1;
  *(v2 - 83) = v1;
}

__n128 OUTLINED_FUNCTION_1218()
{
  result = *(v0 + 40);
  v2 = *(v0 + 56);
  v3 = *(v0 + 64);
  return result;
}

__n128 OUTLINED_FUNCTION_1227@<Q0>(uint64_t a1@<X8>)
{
  result = *(a1 + 32);
  v2 = *(a1 + 48);
  v3 = *(a1 + 64);
  return result;
}

__n128 OUTLINED_FUNCTION_1229()
{
  v1 = *(v0 + 48);
  *&STACK[0x200] = *(v0 + 32);
  *&STACK[0x210] = v1;
  result = *(v0 + 64);
  *&STACK[0x220] = result;
  return result;
}

void OUTLINED_FUNCTION_1235(uint64_t a1@<X8>)
{
  v2 = *(v1 - 352);
  *(v1 - 248) = *(a1 - 256);
  *(v1 - 240) = v2;
}

__n128 OUTLINED_FUNCTION_1238@<Q0>(char a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, __int128 a6, __n128 a7)
{
  *(v7 + 144) = a1;
  result = a7;
  *(v7 + 152) = a6;
  *(v7 + 168) = a7;
  return result;
}

uint64_t OUTLINED_FUNCTION_1243()
{
  result = v0[5];
  v2 = v0[6];
  v3 = v0[7];
  v4 = v0[8];
  return result;
}

void OUTLINED_FUNCTION_1245()
{
  v7[12] = v6;
  v7[13] = v5;
  v7[14] = v4;
  v7[15] = v3;
  v7[16] = v2;
  v7[17] = v1;
  v7[18] = v0;
}

uint64_t OUTLINED_FUNCTION_1246(uint64_t result)
{
  v1 = *(result + 32);
  v2 = *(result + 40);
  v3 = *(result + 80);
  v4 = *(result + 88);
  return result;
}

void OUTLINED_FUNCTION_1249()
{
  v2 = *(v0 + 56);
  *(v1 - 72) = *(v0 + 64);
  v4 = *(v0 + 72);
  v3 = *(v0 + 80);
}

__n128 OUTLINED_FUNCTION_1251()
{
  result = *(v0 + 16);
  v2 = *(v0 + 32);
  v3 = *(v0 + 48);
  v4 = *(v0 + 64);
  v5 = *(v0 + 80);
  v6 = *(v0 + 96);
  v7 = *(v0 + 104);
  return result;
}

__n128 OUTLINED_FUNCTION_1276()
{
  result = *v0;
  v3 = *(v0 + 16);
  *(v1 + 960) = *v0;
  *(v1 + 976) = v3;
  *(v1 + 992) = *(v0 + 32);
  return result;
}

__n128 OUTLINED_FUNCTION_1277()
{
  result = *v0;
  v3 = *(v0 + 16);
  *(v1 + 912) = *v0;
  *(v1 + 928) = v3;
  return result;
}

void OUTLINED_FUNCTION_1282()
{
  v1 = *(v0 + 4);
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
}

uint64_t OUTLINED_FUNCTION_1284()
{
  v2 = *(v0 - 96);

  return sub_24DE22BF0();
}

void *OUTLINED_FUNCTION_1285()
{

  return memcpy(&STACK[0x328], (v0 + 56), 0x55uLL);
}

void OUTLINED_FUNCTION_1286()
{
  *(v2 - 68) = v0;
  *(v2 - 72) = v1;

  JUMPOUT(0x253039720);
}

uint64_t OUTLINED_FUNCTION_1288()
{

  return MEMORY[0x282197F90](27503, 0xE200000000000000, v0 - 96);
}

void OUTLINED_FUNCTION_1289()
{
  *(v2 - 52) = v0;
  *(v2 - 56) = v1;

  JUMPOUT(0x253039720);
}

uint64_t OUTLINED_FUNCTION_1290()
{
  v2 = *(v0 + 80);

  return sub_24DE22CC0();
}

void *OUTLINED_FUNCTION_1291()
{

  return memcpy(&STACK[0x538], (v0 + 24), 0x55uLL);
}

void *OUTLINED_FUNCTION_1292()
{

  return memcpy((v0 + 192), v1, 0x50uLL);
}

void *OUTLINED_FUNCTION_1293(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{

  return memcpy(&a71, (v71 + 16), 0x60uLL);
}

uint64_t OUTLINED_FUNCTION_1294(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{

  return sub_24DDE3490(a18, 1);
}

uint64_t OUTLINED_FUNCTION_1295(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29)
{

  return sub_24DDE5C90(v29, a29, a28);
}

uint64_t OUTLINED_FUNCTION_1296()
{

  return swift_getWitnessTable();
}

void *OUTLINED_FUNCTION_1297(void *a1)
{

  return memcpy(a1, v1, 0x98uLL);
}

void *OUTLINED_FUNCTION_1298(void *a1)
{

  return memcpy(a1, (v1 - 184), 0x60uLL);
}

void *OUTLINED_FUNCTION_1299(void *a1)
{

  return memcpy(a1, (v1 + 192), 0xC0uLL);
}

uint64_t OUTLINED_FUNCTION_1300()
{

  return sub_24DE22BF0();
}

uint64_t OUTLINED_FUNCTION_1301()
{

  return sub_24DE22CA0();
}

uint64_t OUTLINED_FUNCTION_1302()
{
  v2 = *(v0 + 144);
  v3 = *(v0 + 152);
}

uint64_t OUTLINED_FUNCTION_1303()
{

  return sub_24DE22CC0();
}

void *OUTLINED_FUNCTION_1304(void *a1)
{

  return memcpy(a1, (v1 + 16), 0x49uLL);
}

uint64_t OUTLINED_FUNCTION_1305()
{
}

uint64_t OUTLINED_FUNCTION_1306()
{

  return sub_24DE22CF0();
}

uint64_t OUTLINED_FUNCTION_1307@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 4);
  result = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 4) = v2;
  *(a1 + 8) = result;
  return result;
}

void *OUTLINED_FUNCTION_1308(void *a1)
{

  return memcpy(a1, (v1 + 192), 0xBEuLL);
}

void OUTLINED_FUNCTION_1309()
{

  JUMPOUT(0x253039720);
}

void OUTLINED_FUNCTION_1310()
{

  JUMPOUT(0x253039720);
}

uint64_t OUTLINED_FUNCTION_1311()
{
  v2 = *v0;
}

uint64_t OUTLINED_FUNCTION_1312()
{
  v2 = *(v0 + 104);
}

uint64_t OUTLINED_FUNCTION_1313@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + a1 + 8);
}

void *OUTLINED_FUNCTION_1314(void *a1)
{

  return memcpy(a1, (v1 - 200), 0x6DuLL);
}

void *OUTLINED_FUNCTION_1315(void *a1)
{

  return memcpy(a1, (v1 - 192), 0xB0uLL);
}

void *OUTLINED_FUNCTION_1316(void *a1)
{

  return memcpy(a1, v1, 0x59uLL);
}

void *OUTLINED_FUNCTION_1317(void *a1)
{

  return memcpy(a1, (v1 + 152), 0x98uLL);
}

uint64_t OUTLINED_FUNCTION_1318()
{

  return swift_task_alloc();
}

void *OUTLINED_FUNCTION_1319(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char __dst)
{

  return sub_24DDE8C0C(&a9, &__dst);
}

void *OUTLINED_FUNCTION_1320(void *a1)
{

  return memcpy(a1, (v1 + 176), 0xB0uLL);
}

void *OUTLINED_FUNCTION_1321(void *a1)
{

  return memcpy(a1, (v1 + 16), 0x68uLL);
}

void OUTLINED_FUNCTION_1322()
{

  JUMPOUT(0x253039720);
}

void *OUTLINED_FUNCTION_1323(void *a1)
{

  return memcpy(a1, v1, 0x98uLL);
}

void *OUTLINED_FUNCTION_1324(uint64_t a1, const void *a2)
{

  return memcpy(v2, a2, 0x6DuLL);
}

uint64_t OUTLINED_FUNCTION_1325()
{
}

uint64_t OUTLINED_FUNCTION_1327()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_1329@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>)
{
  *a9 = result;
  a9[1] = a2;
  a9[2] = a3;
  a9[3] = a4;
  a9[4] = a5;
  a9[5] = a6;
  a9[6] = a7;
  a9[7] = a8;
  return result;
}

uint64_t sub_24DE0469C()
{
  v0 = sub_24DE22990();
  v1 = OUTLINED_FUNCTION_443(v0);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_97();
  v9 = 0;
  v7 = 0u;
  v8 = 0u;
  v6[3] = sub_24DE229D0();
  v6[4] = MEMORY[0x277D379F8];
  __swift_allocate_boxed_opaque_existential_0(v6);
  sub_24DE228F0();
  sub_24DE04770();
  v5[3] = sub_24DE22A10();
  v5[4] = MEMORY[0x277D37A10];
  __swift_allocate_boxed_opaque_existential_0(v5);
  sub_24DE229F0();
  return sub_24DE228D0();
}

uint64_t sub_24DE04770()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B4CF0, &qword_24DE38768);
  v0 = *(sub_24DE22990() - 8);
  v1 = *(v0 + 72);
  v2 = (*(v0 + 80) + 32) & ~*(v0 + 80);
  *(swift_allocObject() + 16) = xmmword_24DE38440;
  sub_24DE22970();
  sub_24DE22980();
  sub_24DE206DC(&qword_27F1B4CF8, MEMORY[0x277D379D8]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B4D00, &unk_24DE38770);
  sub_24DE20724();
  return sub_24DE22B20();
}

uint64_t Client.init(serverURL:configuration:transport:middlewares:)(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v6 = sub_24DE228E0();
  v7 = OUTLINED_FUNCTION_27(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_97();
  v14 = v13 - v12;
  v15 = sub_24DE227E0();
  v16 = OUTLINED_FUNCTION_27(v15);
  v18 = v17;
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_97();
  (*(v18 + 16))(v22 - v21, a1, v15);
  (*(v9 + 16))(v14, a2, v6);
  sub_24DE04A88(a3, v27);
  sub_24DE22940();
  __swift_destroy_boxed_opaque_existential_1Tm(a3);
  v23 = *(v9 + 8);
  v24 = OUTLINED_FUNCTION_406();
  v25(v24);
  return (*(v18 + 8))(a1, v15);
}

uint64_t sub_24DE04A88(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t Client.postWebObjectsGKFriendService_woaWaGetFriendPlayerIds(_:)()
{
  OUTLINED_FUNCTION_441();
  OUTLINED_FUNCTION_282_0(v0, v1);
  v2 = OUTLINED_FUNCTION_183();

  return MEMORY[0x2822009F8](v2, v3, v4);
}

uint64_t sub_24DE04B44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_341_0();
  OUTLINED_FUNCTION_1060();
  v10 = *(v9 + 208);
  v11 = sub_24DDC92D8();
  v12 = OUTLINED_FUNCTION_244_0(v11);
  v13 = OUTLINED_FUNCTION_179_0(v12);
  OUTLINED_FUNCTION_178_0(v13);
  v14 = *(MEMORY[0x277D37998] + 4);

  v15 = swift_task_alloc();
  v16 = OUTLINED_FUNCTION_177_0(v15);
  type metadata accessor for Operations.PostWebObjectsGKFriendService_woaWaGetFriendPlayerIds.Output(v16);
  OUTLINED_FUNCTION_167_0();
  *v14 = v17;
  OUTLINED_FUNCTION_176_0(v18);
  OUTLINED_FUNCTION_2_0(v19);
  OUTLINED_FUNCTION_231_0();

  return MEMORY[0x282197F10](v20, v21, v22, v23, v24, v25, v26, v27, a9);
}

uint64_t sub_24DE04C2C()
{
  OUTLINED_FUNCTION_113_0();
  OUTLINED_FUNCTION_552();
  v3 = v2;
  OUTLINED_FUNCTION_167();
  *v4 = v3;
  v6 = *(v5 + 240);
  v7 = *v1;
  OUTLINED_FUNCTION_162();
  *v8 = v7;
  *(v3 + 248) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_535();

    return MEMORY[0x2822009F8](v9, v10, v11);
  }

  else
  {
    OUTLINED_FUNCTION_346_0();

    OUTLINED_FUNCTION_27_0();

    return v12();
  }
}

void sub_24DE04D60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_645();
  a19 = v26;
  a20 = v27;
  v31 = OUTLINED_FUNCTION_166_0(v28, v29, v30);
  v32 = OUTLINED_FUNCTION_443(v31);
  v34 = *(v33 + 64);
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_110_0(v35);
  v36 = sub_24DE22840();
  v37 = OUTLINED_FUNCTION_443(v36);
  v39 = *(v38 + 64);
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_122_0();
  v40 = sub_24DE22A90();
  v144 = OUTLINED_FUNCTION_27(v40);
  v145 = v41;
  v43 = *(v42 + 64);
  MEMORY[0x28223BE20](v144);
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_25_0();
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_25_0();
  v46 = MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_17_0(v46, v47, v48, v49, v50, v51, v52, v53, v137);
  MEMORY[0x28223BE20](v54);
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_25_0();
  MEMORY[0x28223BE20](v55);
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_25_0();
  MEMORY[0x28223BE20](v56);
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_25_0();
  MEMORY[0x28223BE20](v57);
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_25_0();
  MEMORY[0x28223BE20](v58);
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_25_0();
  v60 = MEMORY[0x28223BE20](v59);
  OUTLINED_FUNCTION_63_0(v60, v61, v62, v63, v64, v65, v66, v67, v138);
  MEMORY[0x28223BE20](v68);
  OUTLINED_FUNCTION_46_0();
  v70 = MEMORY[0x28223BE20](v69);
  OUTLINED_FUNCTION_52_0(v70, v71, v72, v73, v74, v75, v76, v77, v139);
  MEMORY[0x28223BE20](v78);
  OUTLINED_FUNCTION_39_0();
  v142 = v79;
  OUTLINED_FUNCTION_4_0();
  v80 = *(v21 + 136);
  OUTLINED_FUNCTION_76_0(*(v21 + 128));
  sub_24DE22930();
  OUTLINED_FUNCTION_75_0();
  sub_24DE22A20();
  if (v143)
  {
    v81 = OUTLINED_FUNCTION_199_0();
    v82(v81);
  }

  else
  {
    OUTLINED_FUNCTION_363_0();
    *(v83 - 256) = v24;
    OUTLINED_FUNCTION_22_0(&v140);
    OUTLINED_FUNCTION_362_0(v84);
    v85();
    OUTLINED_FUNCTION_399_0();
    OUTLINED_FUNCTION_310_0();
    MEMORY[0x253039240]();
    v86 = v141;
    OUTLINED_FUNCTION_83_0();
    sub_24DE22850();
    OUTLINED_FUNCTION_170_0();
    OUTLINED_FUNCTION_274_0();
    OUTLINED_FUNCTION_273_0();
    v87 = OUTLINED_FUNCTION_241_0();
    OUTLINED_FUNCTION_106_0(v87, v88);
    OUTLINED_FUNCTION_12_0();
    OUTLINED_FUNCTION_72_0();
    v89 = v143;
    sub_24DE22A50();
    if (v89)
    {

      OUTLINED_FUNCTION_35_0();
      v90();
      v91 = OUTLINED_FUNCTION_125_0();
      v20(v91);
      OUTLINED_FUNCTION_47_0();
      (*(v92 + 8))(v86, v22);
    }

    else
    {

      OUTLINED_FUNCTION_35_0();
      v93();
      v94 = OUTLINED_FUNCTION_116_0();
      v20(v94);
      OUTLINED_FUNCTION_114_0(&v143);
      sub_24DE22930();
      OUTLINED_FUNCTION_243_0();
      v95 = OUTLINED_FUNCTION_241_0();
      OUTLINED_FUNCTION_106_0(v95, v96);
      OUTLINED_FUNCTION_11_0();
      OUTLINED_FUNCTION_71_0();
      sub_24DE22A50();
      OUTLINED_FUNCTION_213_0();
      v143 = v22;
      OUTLINED_FUNCTION_37_0();

      v97 = OUTLINED_FUNCTION_732();
      v145 = a10;
      v86(v97);
      v98 = OUTLINED_FUNCTION_79_0();
      v20(v98);
      OUTLINED_FUNCTION_269_0();
      OUTLINED_FUNCTION_120_0();
      v99 = OUTLINED_FUNCTION_335_0();
      OUTLINED_FUNCTION_106_0(v99, v100);
      OUTLINED_FUNCTION_57_0();
      OUTLINED_FUNCTION_102_0();
      OUTLINED_FUNCTION_165_0();

      v101 = OUTLINED_FUNCTION_97_0();
      v86(v101);
      v102 = OUTLINED_FUNCTION_79_0();
      v20(v102);
      OUTLINED_FUNCTION_114_0(&a17);
      sub_24DE22930();
      OUTLINED_FUNCTION_90_0();
      v103 = OUTLINED_FUNCTION_173_0();
      OUTLINED_FUNCTION_106_0(v103, v104);
      OUTLINED_FUNCTION_18_0();
      OUTLINED_FUNCTION_175_0();
      OUTLINED_FUNCTION_212_0();

      v105 = OUTLINED_FUNCTION_6_0();
      v106(v105);
      v107 = OUTLINED_FUNCTION_116_0();
      v20(v107);
      OUTLINED_FUNCTION_131_0(&a14);
      OUTLINED_FUNCTION_89_0();
      v108 = OUTLINED_FUNCTION_241_0();
      OUTLINED_FUNCTION_106_0(v108, v109);
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_162_0();
      sub_24DE22A50();
      OUTLINED_FUNCTION_174_0();

      OUTLINED_FUNCTION_8_0();
      v110();
      v111 = OUTLINED_FUNCTION_116_0();
      v20(v111);
      OUTLINED_FUNCTION_114_0(&a11);
      sub_24DE22930();
      OUTLINED_FUNCTION_65_0();
      v112 = OUTLINED_FUNCTION_241_0();
      OUTLINED_FUNCTION_139_0(v112, v113);
      OUTLINED_FUNCTION_40_0();

      v114 = OUTLINED_FUNCTION_6_0();
      v115(v114);
      v116 = OUTLINED_FUNCTION_116_0();
      v23(v116);
      OUTLINED_FUNCTION_114_0(&v149);
      sub_24DE22930();
      OUTLINED_FUNCTION_66_0();
      v117 = OUTLINED_FUNCTION_241_0();
      OUTLINED_FUNCTION_139_0(v117, v118);
      OUTLINED_FUNCTION_40_0();

      v119 = OUTLINED_FUNCTION_6_0();
      v120(v119);
      v121 = OUTLINED_FUNCTION_116_0();
      v23(v121);
      OUTLINED_FUNCTION_131_0(&v148);
      OUTLINED_FUNCTION_88_0();
      v122 = OUTLINED_FUNCTION_241_0();
      OUTLINED_FUNCTION_106_0(v122, v123);
      OUTLINED_FUNCTION_0_0();
      OUTLINED_FUNCTION_162_0();
      sub_24DE22A50();
      OUTLINED_FUNCTION_165_0();

      OUTLINED_FUNCTION_8_0();
      v124();
      v125 = OUTLINED_FUNCTION_116_0();
      v20(v125);
      OUTLINED_FUNCTION_109_0();
      sub_24DE22930();
      OUTLINED_FUNCTION_307_0();
      OUTLINED_FUNCTION_151_0(&v142);
      v126 = OUTLINED_FUNCTION_241_0();
      OUTLINED_FUNCTION_139_0(v126, v127);
      OUTLINED_FUNCTION_36_0();
      OUTLINED_FUNCTION_234_0();

      OUTLINED_FUNCTION_54_0();
      OUTLINED_FUNCTION_211_0(v128);
      v147();
      v129 = OUTLINED_FUNCTION_116_0();
      v20(v129);
      OUTLINED_FUNCTION_131_0(&v145);
      OUTLINED_FUNCTION_241_0();
      OUTLINED_FUNCTION_118_0();
      sub_24DD70F40();
      OUTLINED_FUNCTION_203_0();
      v130 = OUTLINED_FUNCTION_62_0();
      (v147)(v130);
      v131 = OUTLINED_FUNCTION_116_0();
      v20(v131);
      OUTLINED_FUNCTION_311_0();
      if (v132 != 1)
      {
        OUTLINED_FUNCTION_277_0();
        OUTLINED_FUNCTION_322_0(&v141);
        OUTLINED_FUNCTION_184_0(&v146);
        sub_24DE22930();
        OUTLINED_FUNCTION_142_0();
        OUTLINED_FUNCTION_197_0();
        OUTLINED_FUNCTION_118_0();
        sub_24DE20688();
        OUTLINED_FUNCTION_10_0();
        OUTLINED_FUNCTION_191_0();
        sub_24DE22A80();
        v133 = OUTLINED_FUNCTION_218_0();
        sub_24DD763E4(v133, v134);
        v135 = OUTLINED_FUNCTION_73_0();
        v25(v135);
        v136 = OUTLINED_FUNCTION_352_0();
        v20(v136);
      }
    }
  }

  OUTLINED_FUNCTION_80_0();
  OUTLINED_FUNCTION_644();
}

uint64_t sub_24DE056A4()
{
  OUTLINED_FUNCTION_441();
  v5 = OUTLINED_FUNCTION_195_0(v1, v2, v3, v4);
  v0[38] = v5;
  OUTLINED_FUNCTION_26_0(v5);
  v0[39] = v6;
  v8 = *(v7 + 64);
  v9 = OUTLINED_FUNCTION_1318();
  OUTLINED_FUNCTION_232_0(v9);
  v10 = sub_24DE22A90();
  v0[41] = v10;
  OUTLINED_FUNCTION_26_0(v10);
  v0[42] = v11;
  v13 = *(v12 + 64);
  v14 = OUTLINED_FUNCTION_240_0();
  v15 = OUTLINED_FUNCTION_320_0(v14);
  v0[45] = OUTLINED_FUNCTION_319_0(v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B4B50, &unk_24DE38700);
  OUTLINED_FUNCTION_443(v16);
  v18 = *(v17 + 64);
  v19 = OUTLINED_FUNCTION_1318();
  v20 = OUTLINED_FUNCTION_329_0(v19);
  v0[47] = v20;
  OUTLINED_FUNCTION_26_0(v20);
  v0[48] = v21;
  v23 = *(v22 + 64);
  v24 = OUTLINED_FUNCTION_240_0();
  v0[50] = OUTLINED_FUNCTION_328_0(v24);
  v25 = OUTLINED_FUNCTION_183();

  return MEMORY[0x2822009F8](v25, v26, v27);
}

uint64_t sub_24DE05804(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_147_0();
  OUTLINED_FUNCTION_161_0();
  OUTLINED_FUNCTION_127_0();
  MEMORY[0x2530392C0]();
  v18 = OUTLINED_FUNCTION_13_0();
  v17(v18);
  if (v14 != 200)
  {
    OUTLINED_FUNCTION_34_0();
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B3598, &qword_24DE23698);
    OUTLINED_FUNCTION_69_0(v23);
    MEMORY[0x2530392C0]();
    v24 = OUTLINED_FUNCTION_48_0();
    v17(v24);
    OUTLINED_FUNCTION_137_0();

    OUTLINED_FUNCTION_68_0();
    FriendPlayer = type metadata accessor for Operations.PostWebObjectsGKFriendService_woaWaGetFriendPlayerIds.Output(0);
    OUTLINED_FUNCTION_136_0(FriendPlayer);
    OUTLINED_FUNCTION_82_0();

    OUTLINED_FUNCTION_27_0();
    goto LABEL_5;
  }

  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_257_0();
  OUTLINED_FUNCTION_134_0();
  v19 = OUTLINED_FUNCTION_51_0();
  v20(v19);
  v21 = OUTLINED_FUNCTION_20_0();
  (v16)(v21);
  OUTLINED_FUNCTION_138_0();
  OUTLINED_FUNCTION_133_0();
  if (v15)
  {
    v22 = OUTLINED_FUNCTION_112_0();
    (v16)(v22);
    sub_24DE205DC(200, &unk_27F1B4B50);
    OUTLINED_FUNCTION_126_0();

    OUTLINED_FUNCTION_49_0();
LABEL_5:
    OUTLINED_FUNCTION_115_0();

    return v27(v26, v27, v28, v29, v30, v31, v32, v33, a9, a10, a11, a12, a13, a14);
  }

  OUTLINED_FUNCTION_16_0();
  OUTLINED_FUNCTION_182_0();
  OUTLINED_FUNCTION_157_0();
  v16();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_259_0();
  __break(1u);

  OUTLINED_FUNCTION_324_0();
  v35 = *(MEMORY[0x277D37A38] + 4);
  v36 = swift_task_alloc();
  OUTLINED_FUNCTION_255_0(v36);
  sub_24DE20634();
  OUTLINED_FUNCTION_50_0();
  MEMORY[0xC8] = v37;
  OUTLINED_FUNCTION_111_0();
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_115_0();

  return MEMORY[0x282198000](v38, v39, v40, v41, v42, v43, v44, v45, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_24DE05A7C()
{
  OUTLINED_FUNCTION_441();
  OUTLINED_FUNCTION_552();
  v3 = v2;
  OUTLINED_FUNCTION_167();
  *v4 = v3;
  v6 = *(v5 + 424);
  v7 = *v1;
  OUTLINED_FUNCTION_162();
  *v8 = v7;
  *(v3 + 432) = v0;

  v9 = OUTLINED_FUNCTION_59_0();
  v10(v9);
  OUTLINED_FUNCTION_535();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_24DE05B84()
{
  OUTLINED_FUNCTION_330_0();
  OUTLINED_FUNCTION_1060();
  v1 = OUTLINED_FUNCTION_60_0();
  sub_24DDFDC5C(v1, v2);
  v3 = OUTLINED_FUNCTION_252_0();
  sub_24DDFDC5C(v3, v4);
  v5 = OUTLINED_FUNCTION_251_0();
  Operations.PostWebObjectsGKFriendService_woaWaGetFriendPlayerIds.Output.Ok.init(body:)(v5);
  sub_24DE205DC(v0, &unk_27F1B4B50);
  v6 = OUTLINED_FUNCTION_33_0();
  FriendPlayer = type metadata accessor for Operations.PostWebObjectsGKFriendService_woaWaGetFriendPlayerIds.Output(v6);
  OUTLINED_FUNCTION_135_0(FriendPlayer);
  OUTLINED_FUNCTION_82_0();

  OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_302_0();

  return v9(v8, v9, v10, v11, v12, v13, v14, v15);
}

uint64_t sub_24DE05C4C()
{
  OUTLINED_FUNCTION_113_0();
  OUTLINED_FUNCTION_15_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_164(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_3_0(v1);

  return sub_24DE056A4();
}

uint64_t Client.postWebObjectsGKInvitationService_woaWaShareActivity(_:)()
{
  OUTLINED_FUNCTION_441();
  v1[32] = v2;
  v1[33] = v0;
  memcpy(v1 + 2, v3, 0xF0uLL);
  v4 = OUTLINED_FUNCTION_183();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_24DE05D68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_341_0();
  OUTLINED_FUNCTION_1060();
  v10 = v9[33];
  v11 = sub_24DDCA00C();
  v12 = *v11;
  v9[34] = v11[1];
  v13 = swift_task_alloc();
  v9[35] = v13;
  v14 = OUTLINED_FUNCTION_258_0(v13);
  v9[36] = v14;
  *(v14 + 16) = v10;
  v15 = *(MEMORY[0x277D37998] + 4);

  v16 = swift_task_alloc();
  v9[37] = v16;
  type metadata accessor for Operations.PostWebObjectsGKInvitationService_woaWaShareActivity.Output(0);
  OUTLINED_FUNCTION_167_0();
  *v16 = v17;
  v16[1] = sub_24DE05E7C;
  v18 = v9[33];
  OUTLINED_FUNCTION_2_0(v9[32]);
  OUTLINED_FUNCTION_231_0();

  return MEMORY[0x282197F10](v19, v20, v21, v22, v23, v24, v25, v26, a9);
}

uint64_t sub_24DE05E7C()
{
  OUTLINED_FUNCTION_113_0();
  OUTLINED_FUNCTION_552();
  v3 = v2;
  OUTLINED_FUNCTION_167();
  *v4 = v3;
  v6 = *(v5 + 296);
  v7 = *v1;
  OUTLINED_FUNCTION_162();
  *v8 = v7;
  v3[38] = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_535();

    return MEMORY[0x2822009F8](v9, v10, v11);
  }

  else
  {
    v13 = v3[35];
    v12 = v3[36];
    v14 = v3[34];

    OUTLINED_FUNCTION_27_0();

    return v15();
  }
}

uint64_t sub_24DE05FB8()
{
  OUTLINED_FUNCTION_441();
  v1 = v0[35];
  v2 = v0[36];
  v3 = v0[34];

  OUTLINED_FUNCTION_1327();
  v5 = v0[38];

  return v4();
}

void sub_24DE06028(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_645();
  a19 = v24;
  a20 = v25;
  v139 = v22;
  OUTLINED_FUNCTION_371_0();
  v136 = v26;
  v27 = sub_24DE22800();
  v28 = OUTLINED_FUNCTION_443(v27);
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_365_0(v31);
  OUTLINED_FUNCTION_122_0();
  v32 = sub_24DE22840();
  v33 = OUTLINED_FUNCTION_443(v32);
  v35 = *(v34 + 64);
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_7_0();
  v135[3] = v36;
  OUTLINED_FUNCTION_122_0();
  v140 = sub_24DE22A90();
  v37 = OUTLINED_FUNCTION_27(v140);
  v39 = *(v38 + 64);
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_25_0();
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_25_0();
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_25_0();
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_25_0();
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_25_0();
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_25_0();
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_25_0();
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_25_0();
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_25_0();
  v49 = MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_17_0(v49, v50, v51, v52, v53, v54, v55, v56, v113);
  MEMORY[0x28223BE20](v57);
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_25_0();
  MEMORY[0x28223BE20](v58);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_294_0(v59);
  v60 = v21[2];
  OUTLINED_FUNCTION_223_0(v21[3]);
  v133 = v21[4];
  OUTLINED_FUNCTION_362_0(v21[5]);
  v131 = v21[6];
  v132 = v21[7];
  v129 = v21[8];
  v130 = v21[9];
  v127 = v21[10];
  v128 = v21[11];
  v125 = v21[12];
  v126 = v21[13];
  v123 = v21[14];
  v124 = v21[15];
  v121 = v21[16];
  v122 = v21[17];
  v119 = v21[18];
  v120 = v21[19];
  v118 = v21[20];
  v117 = v21[21];
  v116 = v21[22];
  v115 = v21[23];
  v62 = v21[24];
  v61 = v21[25];
  v63 = v21[26];
  v64 = v21[27];
  v66 = v21[28];
  v65 = v21[29];
  v137 = v23;
  sub_24DE22930();
  OUTLINED_FUNCTION_187_0();
  OUTLINED_FUNCTION_200_0();
  sub_24DE22A20();
  if (v22)
  {
    v67 = OUTLINED_FUNCTION_199_0();
    v76(v67, v140);
  }

  else
  {
    v114 = v61;
    v68 = OUTLINED_FUNCTION_295_0();
    v139 = v69;
    (v69)(v68, v140);
    OUTLINED_FUNCTION_132_0(&v146[10]);
    MEMORY[0x253039280]();
    OUTLINED_FUNCTION_114_0(&v147);
    MEMORY[0x253039240]();
    OUTLINED_FUNCTION_83_0();
    sub_24DE22850();
    OUTLINED_FUNCTION_170_0();
    OUTLINED_FUNCTION_312_0(&v146[9]);
    OUTLINED_FUNCTION_249_0();
    OUTLINED_FUNCTION_95_0(&v146[8]);

    v70 = OUTLINED_FUNCTION_303_0();
    OUTLINED_FUNCTION_106_0(v70, v71);
    OUTLINED_FUNCTION_12_0();
    OUTLINED_FUNCTION_72_0();
    sub_24DE22A50();

    v72 = OUTLINED_FUNCTION_158_0();
    v139(v72);
    v73 = OUTLINED_FUNCTION_201_0();
    v20(v73);
    OUTLINED_FUNCTION_91_0(&v146[7]);
    OUTLINED_FUNCTION_95_0(&v146[5]);
    v141[1] = v134;

    v74 = OUTLINED_FUNCTION_303_0();
    OUTLINED_FUNCTION_106_0(v74, v75);
    OUTLINED_FUNCTION_11_0();
    OUTLINED_FUNCTION_71_0();
    sub_24DE22A50();
    OUTLINED_FUNCTION_291_0();
    v138 = v65;
    OUTLINED_FUNCTION_37_0();

    v77 = OUTLINED_FUNCTION_732();
    v136(v77);
    v78 = OUTLINED_FUNCTION_201_0();
    v20(v78);
    OUTLINED_FUNCTION_271_0(&v146[4]);
    OUTLINED_FUNCTION_249_0();
    OUTLINED_FUNCTION_95_0(&v146[2]);
    OUTLINED_FUNCTION_263_0(&v146[3]);
    v79 = sub_24DE22820();
    OUTLINED_FUNCTION_106_0(v79, v80);
    OUTLINED_FUNCTION_57_0();
    OUTLINED_FUNCTION_102_0();
    OUTLINED_FUNCTION_165_0();

    v81 = OUTLINED_FUNCTION_141_0();
    v136(v81);
    v82 = OUTLINED_FUNCTION_201_0();
    v20(v82);
    OUTLINED_FUNCTION_91_0(&v146[1]);
    OUTLINED_FUNCTION_95_0(&v145);
    OUTLINED_FUNCTION_338_0(&a13);
    v83 = sub_24DE22820();
    OUTLINED_FUNCTION_106_0(v83, v84);
    OUTLINED_FUNCTION_18_0();
    OUTLINED_FUNCTION_183_0();
    OUTLINED_FUNCTION_212_0();

    OUTLINED_FUNCTION_38_0();
    v85();
    v86 = OUTLINED_FUNCTION_201_0();
    v20(v86);
    OUTLINED_FUNCTION_132_0(&v144);
    OUTLINED_FUNCTION_249_0();
    OUTLINED_FUNCTION_95_0(&v142);
    OUTLINED_FUNCTION_263_0(&v143);
    v87 = OUTLINED_FUNCTION_303_0();
    OUTLINED_FUNCTION_106_0(v87, v88);
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_162_0();
    sub_24DE22A50();

    OUTLINED_FUNCTION_38_0();
    v89();
    v90 = OUTLINED_FUNCTION_201_0();
    v20(v90);
    OUTLINED_FUNCTION_91_0(&v141[10]);
    OUTLINED_FUNCTION_95_0(&v141[8]);
    OUTLINED_FUNCTION_388_0(&v141[9]);
    v91 = OUTLINED_FUNCTION_303_0();
    OUTLINED_FUNCTION_139_0(v91, v92);
    OUTLINED_FUNCTION_41_0();
    sub_24DE22A50();

    OUTLINED_FUNCTION_38_0();
    v93();
    v94 = OUTLINED_FUNCTION_201_0();
    (v146[0])(v94);
    OUTLINED_FUNCTION_91_0(&v141[7]);
    OUTLINED_FUNCTION_95_0(&v141[5]);
    OUTLINED_FUNCTION_388_0(&v141[6]);
    v95 = OUTLINED_FUNCTION_303_0();
    OUTLINED_FUNCTION_139_0(v95, v96);
    OUTLINED_FUNCTION_41_0();
    sub_24DE22A50();

    OUTLINED_FUNCTION_38_0();
    v97();
    v98 = OUTLINED_FUNCTION_201_0();
    (v146[0])(v98);
    OUTLINED_FUNCTION_132_0(&v141[4]);
    OUTLINED_FUNCTION_249_0();
    OUTLINED_FUNCTION_95_0(&v141[2]);
    OUTLINED_FUNCTION_263_0(&v141[3]);
    v99 = OUTLINED_FUNCTION_303_0();
    OUTLINED_FUNCTION_106_0(v99, v100);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_162_0();
    sub_24DE22A50();
    OUTLINED_FUNCTION_165_0();

    OUTLINED_FUNCTION_38_0();
    v101();
    v102 = OUTLINED_FUNCTION_201_0();
    v20(v102);
    OUTLINED_FUNCTION_91_0(&v141[1]);
    OUTLINED_FUNCTION_268_0(v141);
    v103 = OUTLINED_FUNCTION_303_0();
    OUTLINED_FUNCTION_168_0(v103, v104);
    OUTLINED_FUNCTION_36_0();
    OUTLINED_FUNCTION_234_0();

    v105 = OUTLINED_FUNCTION_732();
    v106 = v139;
    v139(v105);
    v107 = OUTLINED_FUNCTION_201_0();
    (v146[0])(v107);
    OUTLINED_FUNCTION_132_0(&v137);
    OUTLINED_FUNCTION_249_0();
    OUTLINED_FUNCTION_303_0();
    OUTLINED_FUNCTION_118_0();
    sub_24DD71334();
    sub_24DE22A40();
    v108 = OUTLINED_FUNCTION_626();
    v106(v108);
    v109 = OUTLINED_FUNCTION_201_0();
    (v146[0])(v109);
    if (v120)
    {
      OUTLINED_FUNCTION_322_0(v135);
      OUTLINED_FUNCTION_292_0(&v139);

      OUTLINED_FUNCTION_184_0(&v138);
      OUTLINED_FUNCTION_249_0();
      v146[0] = v106;
      v146[1] = v118;
      v146[2] = v117;
      v146[3] = v116;
      v146[4] = v115;
      v146[5] = v62;
      v146[6] = v114;
      v146[7] = v63;
      v146[8] = v64;
      v146[9] = v66;
      v146[10] = v146;
      sub_24DE22820();
      OUTLINED_FUNCTION_118_0();
      sub_24DE20588();
      OUTLINED_FUNCTION_10_0();
      OUTLINED_FUNCTION_191_0();
      sub_24DE22A80();
      memcpy(v141, v146, sizeof(v141));
      sub_24DE205DC(v141, &unk_27F1B4CD8);
      v110 = OUTLINED_FUNCTION_248_0();
      v111(v110);
      v112 = OUTLINED_FUNCTION_192_0();
      (v146[0])(v112);
    }
  }

  OUTLINED_FUNCTION_80_0();
  OUTLINED_FUNCTION_644();
}

uint64_t sub_24DE06D08()
{
  OUTLINED_FUNCTION_441();
  v0[32] = v1;
  v0[33] = v2;
  v0[30] = v3;
  v0[31] = v4;
  v5 = sub_24DE22800();
  v0[34] = v5;
  OUTLINED_FUNCTION_26_0(v5);
  v0[35] = v6;
  v8 = *(v7 + 64);
  v0[36] = OUTLINED_FUNCTION_1318();
  v9 = sub_24DE22A90();
  v0[37] = v9;
  OUTLINED_FUNCTION_26_0(v9);
  v0[38] = v10;
  v12 = *(v11 + 64);
  v0[39] = OUTLINED_FUNCTION_240_0();
  v0[40] = swift_task_alloc();
  v0[41] = swift_task_alloc();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B4B50, &unk_24DE38700);
  OUTLINED_FUNCTION_443(v13);
  v15 = *(v14 + 64);
  v0[42] = OUTLINED_FUNCTION_1318();
  v16 = sub_24DE22880();
  v0[43] = v16;
  OUTLINED_FUNCTION_26_0(v16);
  v0[44] = v17;
  v19 = *(v18 + 64);
  v0[45] = OUTLINED_FUNCTION_240_0();
  v0[46] = swift_task_alloc();
  v20 = OUTLINED_FUNCTION_183();

  return MEMORY[0x2822009F8](v20, v21, v22);
}

uint64_t sub_24DE06E98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_147_0();
  OUTLINED_FUNCTION_161_0();
  v16 = v14[46];
  v17 = v14[43];
  v18 = v14[44];
  v19 = v14[31];
  v20 = MEMORY[0x2530392E0]();
  MEMORY[0x2530392C0](v20);
  v21 = OUTLINED_FUNCTION_13_0();
  v15(v21);
  if (v16 != 200)
  {
    v42 = v14[45];
    v43 = v14[43];
    v44 = v14[36];
    v46 = v14[31];
    v45 = v14[32];
    v47 = v14[30];
    v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B3598, &qword_24DE23698);
    OUTLINED_FUNCTION_69_0(v48);
    MEMORY[0x2530392C0]();
    v49 = OUTLINED_FUNCTION_48_0();
    v15(v49);
    OUTLINED_FUNCTION_137_0();

    OUTLINED_FUNCTION_68_0();
    v50 = type metadata accessor for Operations.PostWebObjectsGKInvitationService_woaWaShareActivity.Output(0);
    OUTLINED_FUNCTION_136_0(v50);
    OUTLINED_FUNCTION_389();

    OUTLINED_FUNCTION_27_0();
    goto LABEL_5;
  }

  v22 = v14[41];
  v23 = v14[42];
  v24 = v14[38];
  a9 = v14[37];
  a10 = v14[40];
  v25 = v14[35];
  v26 = v14[36];
  v28 = v14[33];
  v27 = v14[34];
  v29 = v14[31];
  OUTLINED_FUNCTION_260_0();
  OUTLINED_FUNCTION_257_0();
  OUTLINED_FUNCTION_134_0();
  v30 = OUTLINED_FUNCTION_51_0();
  v31(v30);
  OUTLINED_FUNCTION_61_0();
  v14[47] = v26;
  v14[48] = v32;
  v33 = OUTLINED_FUNCTION_160_0();
  v26(v33);
  OUTLINED_FUNCTION_138_0();
  OUTLINED_FUNCTION_133_0();
  if (v22)
  {
    v34 = v14[42];
    (v26)(v14[40], v14[37]);
    sub_24DE205DC(v34, &qword_27F1B4B50);
    v36 = v14[45];
    v35 = v14[46];
    v38 = v14[41];
    v37 = v14[42];
    v40 = v14[39];
    v39 = v14[40];
    v41 = v14[36];

    OUTLINED_FUNCTION_49_0();
LABEL_5:
    OUTLINED_FUNCTION_115_0();

    return v52(v51, v52, v53, v54, v55, v56, v57, v58, a9, a10, a11, a12, a13, a14);
  }

  OUTLINED_FUNCTION_16_0();
  v60 = v14[40];
  v61 = v14[37];
  OUTLINED_FUNCTION_157_0();
  (v26)();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_259_0();
  if ((v25 & 1) == 0)
  {
    __break(1u);
  }

  v62 = v14[39];
  v63 = v14[33];
  sub_24DE22930();
  v64 = *(MEMORY[0x277D37A38] + 4);
  v65 = swift_task_alloc();
  v14[49] = v65;
  sub_24DE20534();
  OUTLINED_FUNCTION_50_0();
  *v65 = v66;
  v65[1] = sub_24DE07184;
  v67 = v14[39];
  v68 = v14[32];
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_115_0();

  return MEMORY[0x282198000](v69, v70, v71, v72, v73, v74, v75, v76, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_24DE07184()
{
  OUTLINED_FUNCTION_441();
  OUTLINED_FUNCTION_552();
  v3 = v2;
  OUTLINED_FUNCTION_167();
  *v4 = v3;
  v6 = *(v5 + 392);
  v7 = *v1;
  OUTLINED_FUNCTION_162();
  *v8 = v7;
  *(v3 + 400) = v0;

  v9 = *(v3 + 384);
  (*(v3 + 376))(*(v3 + 312), *(v3 + 296));
  OUTLINED_FUNCTION_535();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_24DE0729C()
{
  OUTLINED_FUNCTION_330_0();
  OUTLINED_FUNCTION_1060();
  v1 = *(v0 + 336);
  v2 = *(v0 + 240);
  sub_24DDE7DA0((v0 + 16), v0 + 128);
  sub_24DDE7DA0((v0 + 128), v0 + 184);
  Operations.PostWebObjectsGKInvitationService_woaWaShareActivity.Output.Ok.init(body:)();
  sub_24DE205DC(v1, &qword_27F1B4B50);
  v3 = *(v0 + 88);
  v4 = *(v0 + 104);
  v5 = *(v0 + 72);
  *(v2 + 48) = *(v0 + 120);
  *(v2 + 16) = v3;
  *(v2 + 32) = v4;
  *v2 = v5;
  v6 = type metadata accessor for Operations.PostWebObjectsGKInvitationService_woaWaShareActivity.Output(0);
  OUTLINED_FUNCTION_135_0(v6);
  OUTLINED_FUNCTION_389();

  OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_302_0();

  return v8(v7, v8, v9, v10, v11, v12, v13, v14);
}

uint64_t sub_24DE07394(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_245_0();
  OUTLINED_FUNCTION_496();
  sub_24DE205DC(v10[42], &qword_27F1B4B50);
  v11 = v10[50];
  v13 = v10[45];
  v12 = v10[46];
  v15 = v10[41];
  v14 = v10[42];
  v17 = v10[39];
  v16 = v10[40];
  v18 = v10[36];

  OUTLINED_FUNCTION_1327();
  OUTLINED_FUNCTION_230_0();

  return v20(v19, v20, v21, v22, v23, v24, v25, v26, a9, a10);
}

uint64_t sub_24DE0744C()
{
  OUTLINED_FUNCTION_113_0();
  OUTLINED_FUNCTION_15_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_164(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_3_0(v1);

  return sub_24DE06D08();
}

uint64_t sub_24DE074D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v6 = *(a1 + 32);
  v7 = *(a1 + 48);
  v8[0] = v5[0];
  v8[1] = v2;
  v8[2] = v6;
  v9 = v7;
  sub_24DDE7DA0(v8, a2);
  return sub_24DDE2250(v5, v4);
}

uint64_t Client.postWebObjectsGKProfileService_woaWaAppInit(_:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_23_0();
}

uint64_t sub_24DE0754C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_344_0();
  OUTLINED_FUNCTION_496();
  v10 = *(v9 + 32);
  v11 = sub_24DDCB544();
  v12 = OUTLINED_FUNCTION_332_0(v11);
  *(v9 + 48) = v12;
  v13 = OUTLINED_FUNCTION_258_0(v12);
  OUTLINED_FUNCTION_299_0(v13);
  v14 = *(MEMORY[0x277D37998] + 4);

  v15 = swift_task_alloc();
  v16 = OUTLINED_FUNCTION_297_0(v15);
  type metadata accessor for Operations.PostWebObjectsGKProfileService_woaWaAppInit.Input(v16);
  type metadata accessor for Operations.PostWebObjectsGKProfileService_woaWaAppInit.Output(0);
  OUTLINED_FUNCTION_167_0();
  *v14 = v17;
  OUTLINED_FUNCTION_224_0(v18);
  OUTLINED_FUNCTION_55_0();
  OUTLINED_FUNCTION_230_0();

  return MEMORY[0x282197F10](v19, v20, v21, v22, v23, v24, v25, v26, a9);
}

uint64_t sub_24DE0764C()
{
  OUTLINED_FUNCTION_113_0();
  OUTLINED_FUNCTION_552();
  v3 = v2;
  OUTLINED_FUNCTION_167();
  *v4 = v3;
  v6 = *(v5 + 64);
  v7 = *v1;
  OUTLINED_FUNCTION_162();
  *v8 = v7;
  v3[9] = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_535();

    return MEMORY[0x2822009F8](v9, v10, v11);
  }

  else
  {
    v13 = v3[6];
    v12 = v3[7];
    v14 = v3[5];

    OUTLINED_FUNCTION_27_0();

    return v15();
  }
}

void sub_24DE07788(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_645();
  a19 = v23;
  a20 = v24;
  v129 = v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B4CB8, &unk_24DE38750);
  OUTLINED_FUNCTION_443(v26);
  v28 = *(v27 + 64);
  OUTLINED_FUNCTION_373();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_384_0();
  v125 = v30;
  v31 = OUTLINED_FUNCTION_122_0();
  inited = type metadata accessor for Components.Schemas.App_AppInit_RequestContent(v31);
  OUTLINED_FUNCTION_104_0(inited);
  v33 = *(v32 + 64);
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_7_0();
  v126 = v35;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B2800, &qword_24DE22FB0);
  OUTLINED_FUNCTION_443(v36);
  v38 = *(v37 + 64);
  OUTLINED_FUNCTION_373();
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_384_0();
  v127 = v40;
  OUTLINED_FUNCTION_122_0();
  v41 = sub_24DE22800();
  v42 = OUTLINED_FUNCTION_443(v41);
  v44 = *(v43 + 64);
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_122_0();
  v45 = sub_24DE22840();
  v46 = OUTLINED_FUNCTION_443(v45);
  v48 = *(v47 + 64);
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_122_0();
  v135 = sub_24DE22A90();
  v49 = OUTLINED_FUNCTION_27(v135);
  v131 = v50;
  v52 = *(v51 + 64);
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_100_0();
  MEMORY[0x28223BE20](v53);
  OUTLINED_FUNCTION_101_0();
  v124 = v54;
  OUTLINED_FUNCTION_100_0();
  v56 = MEMORY[0x28223BE20](v55);
  OUTLINED_FUNCTION_52_0(v56, v57, v58, v59, v60, v61, v62, v63, v121);
  MEMORY[0x28223BE20](v64);
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_100_0();
  MEMORY[0x28223BE20](v65);
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_100_0();
  MEMORY[0x28223BE20](v66);
  OUTLINED_FUNCTION_150_0();
  MEMORY[0x28223BE20](v67);
  OUTLINED_FUNCTION_99_0();
  MEMORY[0x28223BE20](v68);
  OUTLINED_FUNCTION_229_0();
  MEMORY[0x28223BE20](v69);
  OUTLINED_FUNCTION_383_0();
  MEMORY[0x28223BE20](v70);
  OUTLINED_FUNCTION_46_0();
  MEMORY[0x28223BE20](v71);
  OUTLINED_FUNCTION_101_0();
  v130 = v72;
  OUTLINED_FUNCTION_100_0();
  MEMORY[0x28223BE20](v73);
  OUTLINED_FUNCTION_296_0();
  sub_24DE22930();
  sub_24DE22A20();
  if (v20)
  {
    (*(v131 + 8))(v21, v135);
  }

  else
  {
    v122 = *(v131 + 8);
    v74 = (v122)(v21, v135);
    v75 = MEMORY[0x253039280](v74);
    MEMORY[0x253039240](v75);
    OUTLINED_FUNCTION_406();
    sub_24DE22810();
    sub_24DE22850();
    sub_24DE229E0();
    sub_24DE22930();
    v76 = v129[1];
    v133 = *v129;
    v134 = v76;

    v77 = sub_24DE22820();
    OUTLINED_FUNCTION_164_0(v77, v78);
    OUTLINED_FUNCTION_12_0();
    OUTLINED_FUNCTION_155_0();
    sub_24DE22A50();

    (v122)(v130, v135);
    v79 = OUTLINED_FUNCTION_64_0();
    v22(v79);
    OUTLINED_FUNCTION_271_0(&a16);
    sub_24DE22930();
    v80 = v129[3];
    v133 = v129[2];
    v134 = v80;

    v81 = OUTLINED_FUNCTION_288_0();
    OUTLINED_FUNCTION_139_0(v81, v82);
    OUTLINED_FUNCTION_11_0();
    OUTLINED_FUNCTION_154_0();
    sub_24DE22A50();

    (v122)(v22, v135);
    v83 = OUTLINED_FUNCTION_117_0();
    v76(v83);
    OUTLINED_FUNCTION_312_0(&a15);
    sub_24DE22930();
    v84 = v129[5];
    v133 = v129[4];
    v134 = v84;

    v85 = OUTLINED_FUNCTION_288_0();
    OUTLINED_FUNCTION_106_0(v85, v86);
    OUTLINED_FUNCTION_57_0();
    OUTLINED_FUNCTION_96_0();
    sub_24DE22A50();

    (v122)(0, v135);
    v87 = OUTLINED_FUNCTION_117_0();
    v135(v87);
    sub_24DE22930();
    v88 = v129[7];
    v133 = v129[6];
    v134 = v88;

    v89 = OUTLINED_FUNCTION_288_0();
    OUTLINED_FUNCTION_106_0(v89, v90);
    OUTLINED_FUNCTION_18_0();
    OUTLINED_FUNCTION_96_0();
    sub_24DE22A50();

    (v122)(v22, v135);
    v91 = OUTLINED_FUNCTION_117_0();
    v22(v91);
    OUTLINED_FUNCTION_184_0(&a13);
    sub_24DE22930();
    v92 = v129[9];
    OUTLINED_FUNCTION_306_0(v129[8]);
    v93 = OUTLINED_FUNCTION_288_0();
    OUTLINED_FUNCTION_106_0(v93, v94);
    OUTLINED_FUNCTION_1_0();
    sub_24DE22A50();

    v95 = OUTLINED_FUNCTION_318_0();
    v122(v95);
    v96 = OUTLINED_FUNCTION_117_0();
    v22(v96);
    OUTLINED_FUNCTION_114_0(&a12);
    sub_24DE22930();
    v97 = v129[11];
    OUTLINED_FUNCTION_306_0(v129[10]);
    v98 = OUTLINED_FUNCTION_288_0();
    OUTLINED_FUNCTION_106_0(v98, v99);
    OUTLINED_FUNCTION_41_0();
    sub_24DE22A50();

    (v122)(v132, v135);
    v100 = OUTLINED_FUNCTION_64_0();
    v22(v100);
    OUTLINED_FUNCTION_310_0();
    sub_24DE22930();
    v101 = v129[13];
    OUTLINED_FUNCTION_306_0(v129[12]);
    v102 = OUTLINED_FUNCTION_288_0();
    OUTLINED_FUNCTION_106_0(v102, v103);
    OUTLINED_FUNCTION_41_0();
    sub_24DE22A50();

    (v122)(v132, v135);
    v104 = OUTLINED_FUNCTION_64_0();
    v22(v104);
    sub_24DE22930();
    v105 = v129[15];
    OUTLINED_FUNCTION_306_0(v129[14]);
    v106 = OUTLINED_FUNCTION_288_0();
    OUTLINED_FUNCTION_106_0(v106, v107);
    OUTLINED_FUNCTION_0_0();
    sub_24DE22A50();

    v108 = OUTLINED_FUNCTION_318_0();
    v122(v108);
    v109 = OUTLINED_FUNCTION_117_0();
    v22(v109);
    sub_24DE22930();
    v110 = v129[17];
    OUTLINED_FUNCTION_306_0(v129[16]);
    v111 = OUTLINED_FUNCTION_288_0();
    OUTLINED_FUNCTION_168_0(v111, v112);
    OUTLINED_FUNCTION_58_0();
    sub_24DE22A50();

    (v122)(v128, v135);
    v113 = OUTLINED_FUNCTION_64_0();
    MEMORY[0](v113);
    sub_24DE22930();
    v114 = v129[18];
    OUTLINED_FUNCTION_288_0();
    OUTLINED_FUNCTION_186_0();
    sub_24DD718CC();
    sub_24DE22A40();
    (v122)(v124, v135);
    v115 = OUTLINED_FUNCTION_117_0();
    (*"x-gk-host-bundle-id")(v115);
    v116 = type metadata accessor for Operations.PostWebObjectsGKProfileService_woaWaAppInit.Input(0);
    sub_24DE203A0(v129 + *(v116 + 20), v127);
    v117 = type metadata accessor for Operations.PostWebObjectsGKProfileService_woaWaAppInit.Input.Body(0);
    if (__swift_getEnumTagSinglePayload(v127, 1, v117) != 1)
    {
      sub_24DE20410(v127, v126);
      sub_24DE22930();
      sub_24DE20474(v126, v125);
      __swift_storeEnumTagSinglePayload(v125, 0, 1, inited);
      OUTLINED_FUNCTION_288_0();
      OUTLINED_FUNCTION_118_0();
      sub_24DE206DC(&qword_27F1B4CC0, type metadata accessor for Components.Schemas.App_AppInit_RequestContent);
      OUTLINED_FUNCTION_56_0();
      sub_24DE22A80();
      sub_24DE205DC(v125, &qword_27F1B4CB8);
      v118 = OUTLINED_FUNCTION_316_0();
      v119(v118);
      v120 = OUTLINED_FUNCTION_117_0();
      v126(v120);
      sub_24DE204D8(v126);
    }
  }

  OUTLINED_FUNCTION_644();
}

uint64_t sub_24DE08488()
{
  OUTLINED_FUNCTION_441();
  v0[265] = v1;
  v0[264] = v2;
  v0[263] = v3;
  v0[262] = v4;
  v5 = sub_24DE22800();
  v0[266] = v5;
  OUTLINED_FUNCTION_26_0(v5);
  v0[267] = v6;
  v8 = *(v7 + 64);
  v0[268] = OUTLINED_FUNCTION_1318();
  v9 = sub_24DE22A90();
  v0[269] = v9;
  OUTLINED_FUNCTION_26_0(v9);
  v0[270] = v10;
  v12 = *(v11 + 64);
  v0[271] = OUTLINED_FUNCTION_240_0();
  v0[272] = swift_task_alloc();
  v0[273] = swift_task_alloc();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B4B50, &unk_24DE38700);
  OUTLINED_FUNCTION_443(v13);
  v15 = *(v14 + 64);
  v0[274] = OUTLINED_FUNCTION_1318();
  v16 = sub_24DE22880();
  v0[275] = v16;
  OUTLINED_FUNCTION_26_0(v16);
  v0[276] = v17;
  v19 = *(v18 + 64);
  v0[277] = OUTLINED_FUNCTION_240_0();
  v0[278] = swift_task_alloc();
  v20 = OUTLINED_FUNCTION_183();

  return MEMORY[0x2822009F8](v20, v21, v22);
}

uint64_t sub_24DE08620(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_147_0();
  OUTLINED_FUNCTION_161_0();
  v16 = v14[278];
  v17 = v14[276];
  v18 = v14[275];
  v19 = v14[263];
  v20 = MEMORY[0x2530392E0]();
  MEMORY[0x2530392C0](v20);
  v21 = OUTLINED_FUNCTION_13_0();
  v15(v21);
  if (v16 != 200)
  {
    v39 = v14[277];
    v40 = v14[275];
    v41 = v14[268];
    v42 = v14[264];
    v43 = v14[263];
    v44 = v14[262];
    v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B3598, &qword_24DE23698);
    OUTLINED_FUNCTION_69_0(v45);
    MEMORY[0x2530392C0]();
    v46 = OUTLINED_FUNCTION_48_0();
    v15(v46);
    OUTLINED_FUNCTION_137_0();

    OUTLINED_FUNCTION_68_0();
    v47 = type metadata accessor for Operations.PostWebObjectsGKProfileService_woaWaAppInit.Output(0);
    OUTLINED_FUNCTION_136_0(v47);
    OUTLINED_FUNCTION_283_0();

    OUTLINED_FUNCTION_27_0();
    goto LABEL_5;
  }

  v22 = v14[274];
  v23 = v14[273];
  v24 = v14[270];
  a9 = v14[269];
  a10 = v14[272];
  v25 = v14[268];
  v26 = v14[267];
  v27 = v14[266];
  v28 = v14[265];
  v29 = v14[263];
  OUTLINED_FUNCTION_260_0();
  OUTLINED_FUNCTION_257_0();
  OUTLINED_FUNCTION_134_0();
  v30 = OUTLINED_FUNCTION_51_0();
  v31(v30);
  v32 = *(v24 + 8);
  v14[279] = v32;
  OUTLINED_FUNCTION_159_0();
  v14[280] = v33;
  v34 = OUTLINED_FUNCTION_160_0();
  v32(v34);
  OUTLINED_FUNCTION_138_0();
  OUTLINED_FUNCTION_133_0();
  if (v23)
  {
    v35 = v14[274];
    (v32)(v14[272], v14[269]);
    sub_24DE205DC(v35, &qword_27F1B4B50);
    v36 = v14[278];
    v37 = v14[277];
    v38 = v14[274];
    OUTLINED_FUNCTION_392_0();

    OUTLINED_FUNCTION_49_0();
LABEL_5:
    OUTLINED_FUNCTION_115_0();

    return v49(v48, v49, v50, v51, v52, v53, v54, v55, a9, a10, a11, a12, a13, a14);
  }

  OUTLINED_FUNCTION_16_0();
  v57 = v14[272];
  v58 = v14[269];
  OUTLINED_FUNCTION_157_0();
  (v32)();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_259_0();
  if ((v26 & 1) == 0)
  {
    __break(1u);
  }

  v59 = v14[271];
  v60 = v14[265];
  sub_24DE22930();
  v61 = *(MEMORY[0x277D37A38] + 4);
  v62 = swift_task_alloc();
  v14[281] = v62;
  sub_24DE2034C();
  OUTLINED_FUNCTION_50_0();
  *v62 = v63;
  v62[1] = sub_24DE08928;
  v64 = v14[271];
  v65 = v14[264];
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_115_0();

  return MEMORY[0x282198000](v66, v67, v68, v69, v70, v71, v72, v73, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_24DE08928()
{
  OUTLINED_FUNCTION_441();
  OUTLINED_FUNCTION_552();
  v3 = v2;
  OUTLINED_FUNCTION_167();
  *v4 = v3;
  v6 = *(v5 + 2248);
  v7 = *v1;
  OUTLINED_FUNCTION_162();
  *v8 = v7;
  *(v3 + 2256) = v0;

  v9 = OUTLINED_FUNCTION_378_0();
  v10(v9);
  OUTLINED_FUNCTION_535();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_24DE08A30()
{
  OUTLINED_FUNCTION_330_0();
  OUTLINED_FUNCTION_1060();
  v1 = v0[274];
  v2 = v0[262];
  sub_24DDE7E78(v0 + 2, v0 + 132);
  sub_24DDE7E78(v0 + 132, v0 + 197);
  Operations.PostWebObjectsGKProfileService_woaWaAppInit.Output.Ok.init(body:)();
  sub_24DE205DC(v1, &qword_27F1B4B50);
  memcpy(v2, v0 + 67, 0x201uLL);
  v3 = type metadata accessor for Operations.PostWebObjectsGKProfileService_woaWaAppInit.Output(0);
  OUTLINED_FUNCTION_135_0(v3);
  OUTLINED_FUNCTION_283_0();

  OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_302_0();

  return v5(v4, v5, v6, v7, v8, v9, v10, v11);
}

uint64_t sub_24DE08B1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_245_0();
  OUTLINED_FUNCTION_496();
  sub_24DE205DC(v10[274], &qword_27F1B4B50);
  v11 = v10[282];
  v12 = v10[278];
  v13 = v10[277];
  v14 = v10[274];
  OUTLINED_FUNCTION_392_0();

  OUTLINED_FUNCTION_1327();
  OUTLINED_FUNCTION_230_0();

  return v16(v15, v16, v17, v18, v19, v20, v21, v22, a9, a10);
}

uint64_t sub_24DE08BD0()
{
  OUTLINED_FUNCTION_113_0();
  OUTLINED_FUNCTION_15_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_164(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_3_0(v1);

  return sub_24DE08488();
}

uint64_t sub_24DE08C5C()
{
  OUTLINED_FUNCTION_227_0();
  memcpy(__dst, v0, 0x201uLL);
  memcpy(__src, v0, 0x201uLL);
  nullsub_1(__src);
  sub_24DDE7E78(__src, v1);
  return sub_24DDE294C(__dst, v3);
}

uint64_t Client.postWebObjectsGKProfileService_woaWaSetProfileSettings(_:)()
{
  OUTLINED_FUNCTION_441();
  v1[31] = v2;
  v1[32] = v0;
  memcpy(v1 + 2, v3, 0xE8uLL);
  v4 = OUTLINED_FUNCTION_183();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_24DE08D30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_341_0();
  OUTLINED_FUNCTION_1060();
  v10 = v9[32];
  v11 = sub_24DDCCB70();
  v12 = *v11;
  v9[33] = v11[1];
  v13 = swift_task_alloc();
  v9[34] = v13;
  v14 = OUTLINED_FUNCTION_258_0(v13);
  v9[35] = v14;
  *(v14 + 16) = v10;
  v15 = *(MEMORY[0x277D37998] + 4);

  v16 = swift_task_alloc();
  v9[36] = v16;
  type metadata accessor for Operations.PostWebObjectsGKProfileService_woaWaSetProfileSettings.Output(0);
  OUTLINED_FUNCTION_167_0();
  *v16 = v17;
  v16[1] = sub_24DE08E44;
  v18 = v9[32];
  OUTLINED_FUNCTION_2_0(v9[31]);
  OUTLINED_FUNCTION_231_0();

  return MEMORY[0x282197F10](v19, v20, v21, v22, v23, v24, v25, v26, a9);
}

uint64_t sub_24DE08E44()
{
  OUTLINED_FUNCTION_113_0();
  OUTLINED_FUNCTION_552();
  v3 = v2;
  OUTLINED_FUNCTION_167();
  *v4 = v3;
  v6 = *(v5 + 288);
  v7 = *v1;
  OUTLINED_FUNCTION_162();
  *v8 = v7;
  v3[37] = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_535();

    return MEMORY[0x2822009F8](v9, v10, v11);
  }

  else
  {
    v13 = v3[34];
    v12 = v3[35];
    v14 = v3[33];

    OUTLINED_FUNCTION_27_0();

    return v15();
  }
}

uint64_t sub_24DE08F80()
{
  OUTLINED_FUNCTION_441();
  v1 = v0[34];
  v2 = v0[35];
  v3 = v0[33];

  OUTLINED_FUNCTION_1327();
  v5 = v0[37];

  return v4();
}

void sub_24DE08FF0()
{
  OUTLINED_FUNCTION_645();
  OUTLINED_FUNCTION_371_0();
  v5 = sub_24DE22800();
  v6 = OUTLINED_FUNCTION_443(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_7_0();
  v38 = v9;
  OUTLINED_FUNCTION_122_0();
  v10 = sub_24DE22840();
  v11 = OUTLINED_FUNCTION_443(v10);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_122_0();
  v41 = sub_24DE22A90();
  v14 = OUTLINED_FUNCTION_27(v41);
  v52 = v15;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_113();
  OUTLINED_FUNCTION_222_0();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_146_0();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_99_0();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_101_0();
  v39 = v21;
  OUTLINED_FUNCTION_100_0();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_221_0();
  v40 = v23;
  v35 = v0[2];
  v36 = v0[3];
  v37 = v24;
  v25 = v0[4];
  memcpy(v51, v0 + 5, sizeof(v51));
  sub_24DE22930();
  OUTLINED_FUNCTION_339_0();
  if (v1)
  {
    (*(v52 + 8))(v4, v41);
  }

  else
  {
    OUTLINED_FUNCTION_364_0();
    v34 = v3;
    v26 = *(v52 + 8);
    v27 = (v26)(v4, v41);
    v28 = MEMORY[0x253039280](v27);
    MEMORY[0x253039240](v28);
    OUTLINED_FUNCTION_185_0();
    sub_24DE22810();
    sub_24DE22850();
    OUTLINED_FUNCTION_170_0();
    sub_24DE22930();
    v47[0] = v37;
    v47[1] = v40;

    v29 = sub_24DE22820();
    OUTLINED_FUNCTION_168_0(v29, v30);
    OUTLINED_FUNCTION_12_0();
    OUTLINED_FUNCTION_155_0();
    OUTLINED_FUNCTION_191_0();
    sub_24DE22A50();

    (v26)(v39, v41);
    v38(v48, 0);
    sub_24DE22930();
    v49 = v35;
    v50 = v36;

    v31 = sub_24DE22820();
    OUTLINED_FUNCTION_190_0(v31, v32);
    OUTLINED_FUNCTION_11_0();
    OUTLINED_FUNCTION_154_0();
    sub_24DE22A50();

    v33 = OUTLINED_FUNCTION_181_0();
    v26(v33);
    v41(v47, 0);
    sub_24DE22930();
    sub_24DE22820();
    OUTLINED_FUNCTION_186_0();
    sub_24DD71EF4();
    sub_24DE22A40();
    (v26)(v2, v41);
    v41(v47, 0);
    memcpy(v48, v51, sizeof(v48));
    if (sub_24DDE7F28(v48) != 1)
    {
      sub_24DDE7F14(v48, v45);
      memcpy(v46, v51, sizeof(v46));
      sub_24DE2029C(v46, v44);
      sub_24DE22930();
      memcpy(v47, v45, sizeof(v47));
      nullsub_1(v47);
      memcpy(v44, v47, sizeof(v44));
      sub_24DE22820();
      OUTLINED_FUNCTION_186_0();
      sub_24DE202F8();
      OUTLINED_FUNCTION_219_0();
      OUTLINED_FUNCTION_162_0();
      sub_24DE22A80();
      memcpy(v42, v44, sizeof(v42));
      sub_24DE205DC(v42, &unk_27F1B4CA8);
      (v26)(v34, v41);
      v41(&v43, 0);
    }
  }

  OUTLINED_FUNCTION_80_0();
  OUTLINED_FUNCTION_644();
}

uint64_t sub_24DE09648()
{
  OUTLINED_FUNCTION_441();
  v0[48] = v1;
  v0[49] = v2;
  v0[46] = v3;
  v0[47] = v4;
  v5 = sub_24DE22800();
  v0[50] = v5;
  OUTLINED_FUNCTION_26_0(v5);
  v0[51] = v6;
  v8 = *(v7 + 64);
  v0[52] = OUTLINED_FUNCTION_1318();
  v9 = sub_24DE22A90();
  v0[53] = v9;
  OUTLINED_FUNCTION_26_0(v9);
  v0[54] = v10;
  v12 = *(v11 + 64);
  v0[55] = OUTLINED_FUNCTION_240_0();
  v0[56] = swift_task_alloc();
  v0[57] = swift_task_alloc();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B4B50, &unk_24DE38700);
  OUTLINED_FUNCTION_443(v13);
  v15 = *(v14 + 64);
  v0[58] = OUTLINED_FUNCTION_1318();
  v16 = sub_24DE22880();
  v0[59] = v16;
  OUTLINED_FUNCTION_26_0(v16);
  v0[60] = v17;
  v19 = *(v18 + 64);
  v0[61] = OUTLINED_FUNCTION_240_0();
  v0[62] = swift_task_alloc();
  v20 = OUTLINED_FUNCTION_183();

  return MEMORY[0x2822009F8](v20, v21, v22);
}

uint64_t sub_24DE097D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_147_0();
  OUTLINED_FUNCTION_161_0();
  v16 = v14[62];
  v17 = v14[59];
  v18 = v14[60];
  v19 = v14[47];
  v20 = MEMORY[0x2530392E0]();
  MEMORY[0x2530392C0](v20);
  v21 = OUTLINED_FUNCTION_13_0();
  v15(v21);
  if (v16 != 200)
  {
    v42 = v14[61];
    v43 = v14[59];
    v44 = v14[52];
    v46 = v14[47];
    v45 = v14[48];
    v47 = v14[46];
    v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B3598, &qword_24DE23698);
    OUTLINED_FUNCTION_69_0(v48);
    MEMORY[0x2530392C0]();
    v49 = OUTLINED_FUNCTION_48_0();
    v15(v49);
    OUTLINED_FUNCTION_137_0();

    OUTLINED_FUNCTION_68_0();
    v50 = type metadata accessor for Operations.PostWebObjectsGKProfileService_woaWaSetProfileSettings.Output(0);
    OUTLINED_FUNCTION_136_0(v50);
    OUTLINED_FUNCTION_390_0();

    OUTLINED_FUNCTION_27_0();
    goto LABEL_5;
  }

  v22 = v14[57];
  v23 = v14[58];
  v24 = v14[54];
  a9 = v14[53];
  a10 = v14[56];
  v25 = v14[51];
  v26 = v14[52];
  v28 = v14[49];
  v27 = v14[50];
  v29 = v14[47];
  OUTLINED_FUNCTION_260_0();
  OUTLINED_FUNCTION_257_0();
  OUTLINED_FUNCTION_134_0();
  v30 = OUTLINED_FUNCTION_51_0();
  v31(v30);
  OUTLINED_FUNCTION_61_0();
  v14[63] = v26;
  v14[64] = v32;
  v33 = OUTLINED_FUNCTION_160_0();
  v26(v33);
  OUTLINED_FUNCTION_138_0();
  OUTLINED_FUNCTION_133_0();
  if (v22)
  {
    v34 = v14[58];
    (v26)(v14[56], v14[53]);
    sub_24DE205DC(v34, &qword_27F1B4B50);
    v36 = v14[61];
    v35 = v14[62];
    v38 = v14[57];
    v37 = v14[58];
    v40 = v14[55];
    v39 = v14[56];
    v41 = v14[52];

    OUTLINED_FUNCTION_49_0();
LABEL_5:
    OUTLINED_FUNCTION_115_0();

    return v52(v51, v52, v53, v54, v55, v56, v57, v58, a9, a10, a11, a12, a13, a14);
  }

  OUTLINED_FUNCTION_16_0();
  v60 = v14[56];
  v61 = v14[53];
  OUTLINED_FUNCTION_157_0();
  (v26)();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_259_0();
  if ((v25 & 1) == 0)
  {
    __break(1u);
  }

  v62 = v14[55];
  v63 = v14[49];
  sub_24DE22930();
  v64 = *(MEMORY[0x277D37A38] + 4);
  v65 = swift_task_alloc();
  v14[65] = v65;
  sub_24DE20248();
  OUTLINED_FUNCTION_50_0();
  *v65 = v66;
  v65[1] = sub_24DE09AC4;
  v67 = v14[55];
  v68 = v14[48];
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_115_0();

  return MEMORY[0x282198000](v69, v70, v71, v72, v73, v74, v75, v76, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_24DE09AC4()
{
  OUTLINED_FUNCTION_441();
  OUTLINED_FUNCTION_552();
  v3 = v2;
  OUTLINED_FUNCTION_167();
  *v4 = v3;
  v6 = *(v5 + 520);
  v7 = *v1;
  OUTLINED_FUNCTION_162();
  *v8 = v7;
  *(v3 + 528) = v0;

  v9 = *(v3 + 512);
  (*(v3 + 504))(*(v3 + 440), *(v3 + 424));
  OUTLINED_FUNCTION_535();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_24DE09BDC()
{
  OUTLINED_FUNCTION_330_0();
  OUTLINED_FUNCTION_1060();
  v1 = v0[58];
  v2 = v0[46];
  sub_24DDE7F4C(v0 + 2, v0 + 24);
  sub_24DDE7F4C(v0 + 24, v0 + 35);
  Operations.PostWebObjectsGKProfileService_woaWaSetProfileSettings.Output.Ok.init(body:)();
  sub_24DE205DC(v1, &qword_27F1B4B50);
  memcpy(v2, v0 + 13, 0x58uLL);
  v3 = type metadata accessor for Operations.PostWebObjectsGKProfileService_woaWaSetProfileSettings.Output(0);
  OUTLINED_FUNCTION_135_0(v3);
  OUTLINED_FUNCTION_390_0();

  OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_302_0();

  return v5(v4, v5, v6, v7, v8, v9, v10, v11);
}

uint64_t sub_24DE09CC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_245_0();
  OUTLINED_FUNCTION_496();
  sub_24DE205DC(v10[58], &qword_27F1B4B50);
  v11 = v10[66];
  v13 = v10[61];
  v12 = v10[62];
  v15 = v10[57];
  v14 = v10[58];
  v17 = v10[55];
  v16 = v10[56];
  v18 = v10[52];

  OUTLINED_FUNCTION_1327();
  OUTLINED_FUNCTION_230_0();

  return v20(v19, v20, v21, v22, v23, v24, v25, v26, a9, a10);
}

uint64_t sub_24DE09D80()
{
  OUTLINED_FUNCTION_113_0();
  OUTLINED_FUNCTION_15_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_164(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_3_0(v1);

  return sub_24DE09648();
}

uint64_t sub_24DE09E0C()
{
  OUTLINED_FUNCTION_227_0();
  memcpy(__dst, v0, sizeof(__dst));
  memcpy(__src, v0, sizeof(__src));
  sub_24DDE7F4C(__src, v1);
  return sub_24DDE3884(__dst, v3);
}

uint64_t Client.postWebObjectsGKProfileService_woaWaGetProfileInfo(_:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  *(v3 + 88) = *a2;
  *(v3 + 72) = a1;
  *(v3 + 80) = v2;
  *(v3 + 104) = v4;
  v5 = *(a2 + 40);
  *(v3 + 120) = *(a2 + 32);
  *(v3 + 128) = v5;
  v6 = *(a2 + 48);
  *(v3 + 140) = *(a2 + 52);
  *(v3 + 136) = v6;
  return OUTLINED_FUNCTION_23_0();
}

uint64_t sub_24DE09EAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_344_0();
  OUTLINED_FUNCTION_496();
  v10 = *(v9 + 136);
  v11 = *(v9 + 140);
  v13 = *(v9 + 120);
  v12 = *(v9 + 128);
  v14 = *(v9 + 80);
  *(v9 + 16) = *(v9 + 88);
  *(v9 + 32) = *(v9 + 104);
  *(v9 + 48) = v13;
  *(v9 + 56) = v12;
  *(v9 + 68) = v11;
  *(v9 + 64) = v10;
  v15 = sub_24DDCDE68();
  v16 = *v15;
  *(v9 + 144) = v15[1];
  v17 = swift_task_alloc();
  *(v9 + 152) = v17;
  v18 = OUTLINED_FUNCTION_258_0(v17);
  *(v9 + 160) = v18;
  *(v18 + 16) = v14;
  v19 = *(MEMORY[0x277D37998] + 4);

  v20 = swift_task_alloc();
  *(v9 + 168) = v20;
  type metadata accessor for Operations.PostWebObjectsGKProfileService_woaWaGetProfileInfo.Output(0);
  *v20 = v9;
  v20[1] = sub_24DE09FF4;
  v21 = *(v9 + 80);
  OUTLINED_FUNCTION_250_0(*(v9 + 72));
  OUTLINED_FUNCTION_230_0();

  return MEMORY[0x282197F10](v22, v23, v24, v25, v26, v27, v28, v29, a9);
}

uint64_t sub_24DE09FF4()
{
  OUTLINED_FUNCTION_113_0();
  OUTLINED_FUNCTION_552();
  v3 = v2;
  OUTLINED_FUNCTION_167();
  *v4 = v3;
  v6 = *(v5 + 168);
  v7 = *v1;
  OUTLINED_FUNCTION_162();
  *v8 = v7;
  v3[22] = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_535();

    return MEMORY[0x2822009F8](v9, v10, v11);
  }

  else
  {
    v13 = v3[19];
    v12 = v3[20];
    v14 = v3[18];

    OUTLINED_FUNCTION_27_0();

    return v15();
  }
}

uint64_t sub_24DE0A130()
{
  OUTLINED_FUNCTION_441();
  v1 = v0[19];
  v2 = v0[20];
  v3 = v0[18];

  OUTLINED_FUNCTION_1327();
  v5 = v0[22];

  return v4();
}

void sub_24DE0A1A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_645();
  a19 = v22;
  a20 = v23;
  v25 = v24;
  v26 = sub_24DE22800();
  v27 = OUTLINED_FUNCTION_443(v26);
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_122_0();
  v30 = sub_24DE22840();
  v31 = OUTLINED_FUNCTION_443(v30);
  v33 = *(v32 + 64);
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_110_0(v34);
  v65 = sub_24DE22A90();
  v35 = OUTLINED_FUNCTION_27(v65);
  v66 = v36;
  v38 = *(v37 + 64);
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_113();
  OUTLINED_FUNCTION_146_0();
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_149_0();
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_150_0();
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_100_0();
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_296_0();
  v43 = *v25;
  OUTLINED_FUNCTION_355_0(v25[1]);
  v45 = v25[4];
  v44 = v25[5];
  v46 = *(v25 + 52);
  v47 = *(v25 + 12);
  sub_24DE22930();
  sub_24DE22A20();
  if (v20)
  {
    (*(v66 + 8))(v21, v65);
  }

  else
  {
    v48 = *(v66 + 8);
    v49 = v48(v21, v65);
    v50 = MEMORY[0x253039280](v49);
    MEMORY[0x253039240](v50);
    sub_24DE22810();
    sub_24DE22850();
    sub_24DE229E0();
    sub_24DE22930();

    v51 = sub_24DE22820();
    OUTLINED_FUNCTION_168_0(v51, v52);
    OUTLINED_FUNCTION_12_0();
    OUTLINED_FUNCTION_155_0();
    sub_24DE22A50();

    v53 = OUTLINED_FUNCTION_361_0();
    (v48)(v53);
    v54 = OUTLINED_FUNCTION_117_0();
    v64(v54);
    sub_24DE22930();
    OUTLINED_FUNCTION_306_0(v63);
    v55 = OUTLINED_FUNCTION_321_0();
    OUTLINED_FUNCTION_106_0(v55, v56);
    OUTLINED_FUNCTION_11_0();
    OUTLINED_FUNCTION_154_0();
    OUTLINED_FUNCTION_405();
    sub_24DE22A50();

    v57 = OUTLINED_FUNCTION_384();
    (v48)(v57);
    v58 = OUTLINED_FUNCTION_117_0();
    v65(v58);
    sub_24DE22930();
    OUTLINED_FUNCTION_321_0();
    OUTLINED_FUNCTION_118_0();
    sub_24DD72438();
    sub_24DE22A40();
    v59 = OUTLINED_FUNCTION_384();
    (v48)(v59);
    v60 = OUTLINED_FUNCTION_117_0();
    v65(v60);
    if (v44 != 1)
    {

      OUTLINED_FUNCTION_367_0(&a18);
      sub_24DE22930();
      OUTLINED_FUNCTION_321_0();
      OUTLINED_FUNCTION_118_0();
      sub_24DE201F4();
      OUTLINED_FUNCTION_219_0();
      OUTLINED_FUNCTION_405();
      sub_24DE22A80();
      sub_24DD72878(v44);
      v61 = OUTLINED_FUNCTION_384();
      (v48)(v61);
      v62 = OUTLINED_FUNCTION_64_0();
      ((v47 | (v46 << 32)))(v62);
    }
  }

  OUTLINED_FUNCTION_225_0();
  OUTLINED_FUNCTION_644();
}

uint64_t sub_24DE0A738()
{
  OUTLINED_FUNCTION_441();
  v5 = OUTLINED_FUNCTION_195_0(v1, v2, v3, v4);
  v0[38] = v5;
  OUTLINED_FUNCTION_26_0(v5);
  v0[39] = v6;
  v8 = *(v7 + 64);
  v9 = OUTLINED_FUNCTION_1318();
  OUTLINED_FUNCTION_232_0(v9);
  v10 = sub_24DE22A90();
  v0[41] = v10;
  OUTLINED_FUNCTION_26_0(v10);
  v0[42] = v11;
  v13 = *(v12 + 64);
  v14 = OUTLINED_FUNCTION_240_0();
  v15 = OUTLINED_FUNCTION_320_0(v14);
  v0[45] = OUTLINED_FUNCTION_319_0(v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B4B50, &unk_24DE38700);
  OUTLINED_FUNCTION_443(v16);
  v18 = *(v17 + 64);
  v19 = OUTLINED_FUNCTION_1318();
  v20 = OUTLINED_FUNCTION_329_0(v19);
  v0[47] = v20;
  OUTLINED_FUNCTION_26_0(v20);
  v0[48] = v21;
  v23 = *(v22 + 64);
  v24 = OUTLINED_FUNCTION_240_0();
  v0[50] = OUTLINED_FUNCTION_328_0(v24);
  v25 = OUTLINED_FUNCTION_183();

  return MEMORY[0x2822009F8](v25, v26, v27);
}

uint64_t sub_24DE0A898(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_147_0();
  OUTLINED_FUNCTION_161_0();
  OUTLINED_FUNCTION_127_0();
  MEMORY[0x2530392C0]();
  v18 = OUTLINED_FUNCTION_13_0();
  v17(v18);
  if (v14 != 200)
  {
    OUTLINED_FUNCTION_34_0();
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B3598, &qword_24DE23698);
    OUTLINED_FUNCTION_69_0(v23);
    MEMORY[0x2530392C0]();
    v24 = OUTLINED_FUNCTION_48_0();
    v17(v24);
    OUTLINED_FUNCTION_137_0();

    OUTLINED_FUNCTION_68_0();
    Profile = type metadata accessor for Operations.PostWebObjectsGKProfileService_woaWaGetProfileInfo.Output(0);
    OUTLINED_FUNCTION_136_0(Profile);
    OUTLINED_FUNCTION_82_0();

    OUTLINED_FUNCTION_27_0();
    goto LABEL_5;
  }

  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_257_0();
  OUTLINED_FUNCTION_134_0();
  v19 = OUTLINED_FUNCTION_51_0();
  v20(v19);
  v21 = OUTLINED_FUNCTION_20_0();
  (v16)(v21);
  OUTLINED_FUNCTION_138_0();
  OUTLINED_FUNCTION_133_0();
  if (v15)
  {
    v22 = OUTLINED_FUNCTION_112_0();
    (v16)(v22);
    sub_24DE205DC(200, &qword_27F1B4B50);
    OUTLINED_FUNCTION_126_0();

    OUTLINED_FUNCTION_49_0();
LABEL_5:
    OUTLINED_FUNCTION_115_0();

    return v27(v26, v27, v28, v29, v30, v31, v32, v33, a9, a10, a11, a12, a13, a14);
  }

  OUTLINED_FUNCTION_16_0();
  OUTLINED_FUNCTION_182_0();
  OUTLINED_FUNCTION_157_0();
  v16();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_259_0();
  __break(1u);

  OUTLINED_FUNCTION_324_0();
  v35 = *(MEMORY[0x277D37A38] + 4);
  v36 = swift_task_alloc();
  OUTLINED_FUNCTION_255_0(v36);
  sub_24DE201A0();
  OUTLINED_FUNCTION_50_0();
  MEMORY[0xC8] = v37;
  OUTLINED_FUNCTION_111_0();
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_115_0();

  return MEMORY[0x282198000](v38, v39, v40, v41, v42, v43, v44, v45, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_24DE0AB10()
{
  OUTLINED_FUNCTION_441();
  OUTLINED_FUNCTION_552();
  v3 = v2;
  OUTLINED_FUNCTION_167();
  *v4 = v3;
  v6 = *(v5 + 424);
  v7 = *v1;
  OUTLINED_FUNCTION_162();
  *v8 = v7;
  *(v3 + 432) = v0;

  v9 = OUTLINED_FUNCTION_59_0();
  v10(v9);
  OUTLINED_FUNCTION_535();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_24DE0AC18()
{
  OUTLINED_FUNCTION_330_0();
  OUTLINED_FUNCTION_1060();
  v1 = OUTLINED_FUNCTION_60_0();
  sub_24DDFDC5C(v1, v2);
  v3 = OUTLINED_FUNCTION_252_0();
  sub_24DDFDC5C(v3, v4);
  v5 = OUTLINED_FUNCTION_251_0();
  Operations.PostWebObjectsGKProfileService_woaWaGetProfileInfo.Output.Ok.init(body:)(v5);
  sub_24DE205DC(v0, &qword_27F1B4B50);
  v6 = OUTLINED_FUNCTION_33_0();
  Profile = type metadata accessor for Operations.PostWebObjectsGKProfileService_woaWaGetProfileInfo.Output(v6);
  OUTLINED_FUNCTION_135_0(Profile);
  OUTLINED_FUNCTION_82_0();

  OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_302_0();

  return v9(v8, v9, v10, v11, v12, v13, v14, v15);
}

uint64_t sub_24DE0ACE0()
{
  OUTLINED_FUNCTION_113_0();
  OUTLINED_FUNCTION_15_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_164(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_3_0(v1);

  return sub_24DE0A738();
}

uint64_t Client.postWebObjectsGKProfileService_woaWaGetScopedIDs(_:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  *(v3 + 88) = *a2;
  *(v3 + 72) = a1;
  *(v3 + 80) = v2;
  *(v3 + 104) = v4;
  *(v3 + 120) = *(a2 + 32);
  *(v3 + 128) = *(a2 + 40);
  return OUTLINED_FUNCTION_23_0();
}

uint64_t sub_24DE0ADC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_344_0();
  OUTLINED_FUNCTION_496();
  v10 = *(v9 + 120);
  *(v9 + 16) = *(v9 + 88);
  v11 = *(v9 + 80);
  *(v9 + 32) = *(v9 + 104);
  *(v9 + 48) = v10;
  *(v9 + 56) = *(v9 + 128);
  v12 = sub_24DDCEB84();
  v13 = *v12;
  *(v9 + 144) = v12[1];
  v14 = swift_task_alloc();
  *(v9 + 152) = v14;
  v15 = OUTLINED_FUNCTION_258_0(v14);
  *(v9 + 160) = v15;
  *(v15 + 16) = v11;
  v16 = *(MEMORY[0x277D37998] + 4);

  v17 = swift_task_alloc();
  *(v9 + 168) = v17;
  type metadata accessor for Operations.PostWebObjectsGKProfileService_woaWaGetScopedIDs.Output(0);
  *v17 = v9;
  v17[1] = sub_24DE09FF4;
  v18 = *(v9 + 80);
  OUTLINED_FUNCTION_250_0(*(v9 + 72));
  OUTLINED_FUNCTION_230_0();

  return MEMORY[0x282197F10](v19, v20, v21, v22, v23, v24, v25, v26, a9);
}

void sub_24DE0AF08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_645();
  a19 = v23;
  a20 = v24;
  OUTLINED_FUNCTION_239_0(v25, v26, v27);
  v28 = sub_24DE22800();
  v29 = OUTLINED_FUNCTION_443(v28);
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_122_0();
  v32 = sub_24DE22840();
  v33 = OUTLINED_FUNCTION_443(v32);
  v35 = *(v34 + 64);
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_110_0(v36);
  v37 = sub_24DE22A90();
  v38 = OUTLINED_FUNCTION_27(v37);
  v73 = v39;
  v74 = v38;
  v41 = *(v40 + 64);
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_113();
  OUTLINED_FUNCTION_146_0();
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_99_0();
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_149_0();
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_101_0();
  v72 = v45;
  OUTLINED_FUNCTION_100_0();
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_296_0();
  v71 = v20[1];
  v47 = v20[3];
  v69 = v20[2];
  v70 = *v20;
  v49 = v20[4];
  v48 = v20[5];
  v50 = v20[6];
  sub_24DE22930();
  sub_24DE22A20();
  if (v21)
  {
    (*(v73 + 8))(v22, v74);
  }

  else
  {
    v68 = v48;
    v52 = (v73 + 8);
    v53 = *(v73 + 8);
    v54 = v51;
    v55 = v53(v22, v74);
    v56 = MEMORY[0x253039280](v55);
    MEMORY[0x253039240](v56);
    sub_24DE22810();
    sub_24DE22850();
    sub_24DE229E0();
    sub_24DE22930();

    v57 = OUTLINED_FUNCTION_321_0();
    OUTLINED_FUNCTION_168_0(v57, v58);
    OUTLINED_FUNCTION_12_0();
    OUTLINED_FUNCTION_155_0();
    sub_24DE22A50();

    v53(v72, v74);
    v59 = OUTLINED_FUNCTION_117_0();
    v54(v59);
    sub_24DE22930();
    OUTLINED_FUNCTION_306_0(v69);
    v60 = OUTLINED_FUNCTION_321_0();
    OUTLINED_FUNCTION_106_0(v60, v61);
    OUTLINED_FUNCTION_11_0();
    OUTLINED_FUNCTION_154_0();
    OUTLINED_FUNCTION_405();
    sub_24DE22A50();

    v62 = OUTLINED_FUNCTION_747();
    (v53)(v62);
    v63 = OUTLINED_FUNCTION_117_0();
    v52(v63);
    sub_24DE22930();
    OUTLINED_FUNCTION_321_0();
    OUTLINED_FUNCTION_118_0();
    sub_24DD728F4();
    sub_24DE22A40();
    v64 = OUTLINED_FUNCTION_747();
    (v53)(v64);
    v65 = OUTLINED_FUNCTION_117_0();
    v52(v65);
    if (v68 != 1)
    {

      OUTLINED_FUNCTION_367_0(&a18);
      sub_24DE22930();
      OUTLINED_FUNCTION_321_0();
      OUTLINED_FUNCTION_118_0();
      sub_24DE2014C();
      OUTLINED_FUNCTION_219_0();
      OUTLINED_FUNCTION_405();
      sub_24DE22A80();
      sub_24DD72D4C(v68);
      v66 = OUTLINED_FUNCTION_747();
      (v53)(v66);
      v67 = OUTLINED_FUNCTION_64_0();
      v68(v67);
    }
  }

  OUTLINED_FUNCTION_225_0();
  OUTLINED_FUNCTION_644();
}

uint64_t sub_24DE0B460()
{
  OUTLINED_FUNCTION_441();
  v0[6] = v1;
  v0[7] = v2;
  v0[4] = v3;
  v0[5] = v4;
  v5 = sub_24DE22800();
  v0[8] = v5;
  OUTLINED_FUNCTION_26_0(v5);
  v0[9] = v6;
  v8 = *(v7 + 64);
  v0[10] = OUTLINED_FUNCTION_1318();
  v9 = sub_24DE22A90();
  v0[11] = v9;
  OUTLINED_FUNCTION_26_0(v9);
  v0[12] = v10;
  v12 = *(v11 + 64);
  v0[13] = OUTLINED_FUNCTION_240_0();
  v0[14] = swift_task_alloc();
  v0[15] = swift_task_alloc();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B4B50, &unk_24DE38700);
  OUTLINED_FUNCTION_443(v13);
  v15 = *(v14 + 64);
  v0[16] = OUTLINED_FUNCTION_1318();
  v16 = sub_24DE22880();
  v0[17] = v16;
  OUTLINED_FUNCTION_26_0(v16);
  v0[18] = v17;
  v19 = *(v18 + 64);
  v0[19] = OUTLINED_FUNCTION_240_0();
  v0[20] = swift_task_alloc();
  v20 = OUTLINED_FUNCTION_183();

  return MEMORY[0x2822009F8](v20, v21, v22);
}

uint64_t sub_24DE0B5F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_147_0();
  OUTLINED_FUNCTION_161_0();
  v16 = v14[20];
  v17 = v14[17];
  v18 = v14[18];
  v19 = v14[5];
  v20 = MEMORY[0x2530392E0]();
  MEMORY[0x2530392C0](v20);
  v21 = OUTLINED_FUNCTION_13_0();
  v15(v21);
  if (v16 != 200)
  {
    v42 = v14[19];
    v43 = v14[17];
    v44 = v14[10];
    v46 = v14[5];
    v45 = v14[6];
    v47 = v14[4];
    v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B3598, &qword_24DE23698);
    OUTLINED_FUNCTION_69_0(v48);
    MEMORY[0x2530392C0]();
    v49 = OUTLINED_FUNCTION_48_0();
    v15(v49);
    OUTLINED_FUNCTION_137_0();

    OUTLINED_FUNCTION_68_0();
    Scoped = type metadata accessor for Operations.PostWebObjectsGKProfileService_woaWaGetScopedIDs.Output(0);
    OUTLINED_FUNCTION_136_0(Scoped);
    OUTLINED_FUNCTION_393_0();

    OUTLINED_FUNCTION_27_0();
    goto LABEL_5;
  }

  v22 = v14[15];
  v23 = v14[16];
  v24 = v14[12];
  a9 = v14[11];
  a10 = v14[14];
  v25 = v14[9];
  v26 = v14[10];
  v28 = v14[7];
  v27 = v14[8];
  v29 = v14[5];
  OUTLINED_FUNCTION_260_0();
  OUTLINED_FUNCTION_257_0();
  OUTLINED_FUNCTION_134_0();
  v30 = OUTLINED_FUNCTION_51_0();
  v31(v30);
  OUTLINED_FUNCTION_61_0();
  v14[21] = v26;
  v14[22] = v32;
  v33 = OUTLINED_FUNCTION_160_0();
  v26(v33);
  OUTLINED_FUNCTION_138_0();
  OUTLINED_FUNCTION_133_0();
  if (v22)
  {
    v34 = v14[16];
    (v26)(v14[14], v14[11]);
    sub_24DE205DC(v34, &qword_27F1B4B50);
    v36 = v14[19];
    v35 = v14[20];
    v38 = v14[15];
    v37 = v14[16];
    v40 = v14[13];
    v39 = v14[14];
    v41 = v14[10];

    OUTLINED_FUNCTION_49_0();
LABEL_5:
    OUTLINED_FUNCTION_115_0();

    return v52(v51, v52, v53, v54, v55, v56, v57, v58, a9, a10, a11, a12, a13, a14);
  }

  OUTLINED_FUNCTION_16_0();
  v60 = v14[14];
  v61 = v14[11];
  OUTLINED_FUNCTION_157_0();
  (v26)();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_259_0();
  if ((v25 & 1) == 0)
  {
    __break(1u);
  }

  v62 = v14[13];
  v63 = v14[7];
  sub_24DE22930();
  v64 = *(MEMORY[0x277D37A38] + 4);
  v65 = swift_task_alloc();
  v14[23] = v65;
  sub_24DE200F8();
  OUTLINED_FUNCTION_50_0();
  *v65 = v66;
  v65[1] = sub_24DE0B8DC;
  v67 = v14[13];
  v68 = v14[6];
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_115_0();

  return MEMORY[0x282198000](v69, v70, v71, v72, v73, v74, v75, v76, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_24DE0B8DC()
{
  OUTLINED_FUNCTION_113_0();
  v2 = *v1;
  OUTLINED_FUNCTION_167();
  *v4 = v3;
  v5 = *(v2 + 184);
  *v4 = *v1;
  *(v3 + 192) = v0;

  v6 = *(v2 + 176);
  (*(v2 + 168))(*(v2 + 104), *(v2 + 88));
  OUTLINED_FUNCTION_535();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_24DE0BA3C()
{
  v16 = v0;
  v1 = *(v0 + 128);
  v2 = *(v0 + 20);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v13 = *(v0 + 16);
  v14 = v2;
  v15 = v3;
  Operations.PostWebObjectsGKProfileService_woaWaGetScopedIDs.Output.Ok.init(body:)(&v13, &v10);
  sub_24DE205DC(v1, &qword_27F1B4B50);
  v5 = v11;
  v6 = v12;
  *v4 = v10;
  *(v4 + 4) = v5;
  *(v4 + 8) = v6;
  Scoped = type metadata accessor for Operations.PostWebObjectsGKProfileService_woaWaGetScopedIDs.Output(0);
  OUTLINED_FUNCTION_135_0(Scoped);
  OUTLINED_FUNCTION_393_0();

  OUTLINED_FUNCTION_27_0();

  return v8();
}

uint64_t sub_24DE0BB40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_245_0();
  OUTLINED_FUNCTION_496();
  sub_24DE205DC(v10[16], &qword_27F1B4B50);
  v11 = v10[24];
  v13 = v10[19];
  v12 = v10[20];
  v15 = v10[15];
  v14 = v10[16];
  v17 = v10[13];
  v16 = v10[14];
  v18 = v10[10];

  OUTLINED_FUNCTION_1327();
  OUTLINED_FUNCTION_230_0();

  return v20(v19, v20, v21, v22, v23, v24, v25, v26, a9, a10);
}

uint64_t sub_24DE0BBF8()
{
  OUTLINED_FUNCTION_113_0();
  OUTLINED_FUNCTION_15_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_164(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_3_0(v1);

  return sub_24DE0B460();
}

uint64_t sub_24DE0BC84@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v3 = *(a1 + 4);
  v4 = *(a1 + 1);
  *a2 = v2;
  *(a2 + 4) = v3;
  *(a2 + 8) = v4;
}

uint64_t Client.postWebObjectsGKProfileService_woaWaGetSuggestedPlayerNickname(_:)()
{
  OUTLINED_FUNCTION_441();
  v1[22] = v2;
  v1[23] = v0;
  memcpy(v1 + 2, v3, 0x9EuLL);
  v4 = OUTLINED_FUNCTION_183();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_24DE0BD04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_341_0();
  OUTLINED_FUNCTION_1060();
  v10 = v9[23];
  v11 = sub_24DDD0040();
  v12 = *v11;
  v9[24] = v11[1];
  v13 = swift_task_alloc();
  v9[25] = v13;
  v14 = OUTLINED_FUNCTION_258_0(v13);
  v9[26] = v14;
  *(v14 + 16) = v10;
  v15 = *(MEMORY[0x277D37998] + 4);

  v16 = swift_task_alloc();
  v9[27] = v16;
  type metadata accessor for Operations.PostWebObjectsGKProfileService_woaWaGetSuggestedPlayerNickname.Output(0);
  OUTLINED_FUNCTION_167_0();
  *v16 = v17;
  v16[1] = sub_24DE0BE18;
  v18 = v9[23];
  OUTLINED_FUNCTION_2_0(v9[22]);
  OUTLINED_FUNCTION_231_0();

  return MEMORY[0x282197F10](v19, v20, v21, v22, v23, v24, v25, v26, a9);
}

uint64_t sub_24DE0BE18()
{
  OUTLINED_FUNCTION_113_0();
  OUTLINED_FUNCTION_552();
  v3 = v2;
  OUTLINED_FUNCTION_167();
  *v4 = v3;
  v6 = *(v5 + 216);
  v7 = *v1;
  OUTLINED_FUNCTION_162();
  *v8 = v7;
  v3[28] = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_535();

    return MEMORY[0x2822009F8](v9, v10, v11);
  }

  else
  {
    v13 = v3[25];
    v12 = v3[26];
    v14 = v3[24];

    OUTLINED_FUNCTION_27_0();

    return v15();
  }
}

uint64_t sub_24DE0BF54()
{
  OUTLINED_FUNCTION_441();
  v1 = v0[25];
  v2 = v0[26];
  v3 = v0[24];

  OUTLINED_FUNCTION_1327();
  v5 = v0[28];

  return v4();
}

void sub_24DE0BFC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_645();
  a19 = v23;
  a20 = v24;
  OUTLINED_FUNCTION_239_0(v25, v26, v27);
  v28 = sub_24DE22800();
  v29 = OUTLINED_FUNCTION_443(v28);
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_7_0();
  v133 = v32;
  OUTLINED_FUNCTION_122_0();
  v33 = sub_24DE22840();
  v34 = OUTLINED_FUNCTION_443(v33);
  v36 = *(v35 + 64);
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_122_0();
  v37 = sub_24DE22A90();
  v135 = OUTLINED_FUNCTION_27(v37);
  v136 = v38;
  v40 = *(v39 + 64);
  MEMORY[0x28223BE20](v135);
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_25_0();
  v42 = MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_17_0(v42, v43, v44, v45, v46, v47, v48, v49, v119);
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_25_0();
  MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_25_0();
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_25_0();
  MEMORY[0x28223BE20](v53);
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_25_0();
  MEMORY[0x28223BE20](v54);
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_25_0();
  MEMORY[0x28223BE20](v55);
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_100_0();
  MEMORY[0x28223BE20](v56);
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_100_0();
  MEMORY[0x28223BE20](v57);
  OUTLINED_FUNCTION_99_0();
  MEMORY[0x28223BE20](v58);
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_100_0();
  MEMORY[0x28223BE20](v59);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_355_0(v60);
  v128 = *(v21 + 32);
  v129 = *(v21 + 40);
  v61 = *(v21 + 48);
  OUTLINED_FUNCTION_349_0(*(v21 + 56));
  v62 = *(v21 + 64);
  OUTLINED_FUNCTION_374_0(*(v21 + 72));
  v63 = *(v21 + 80);
  OUTLINED_FUNCTION_368_0(*(v21 + 88));
  v64 = *(v21 + 96);
  OUTLINED_FUNCTION_294_0(*(v21 + 104));
  v122 = *(v21 + 112);
  OUTLINED_FUNCTION_365_0(*(v21 + 120));
  v65 = *(v21 + 128);
  v66 = *(v21 + 136);
  v67 = *(v21 + 144);
  v68 = *(v21 + 156);
  v69 = *(v21 + 152);
  v70 = *(v21 + 157);
  OUTLINED_FUNCTION_327_0();
  OUTLINED_FUNCTION_187_0();
  OUTLINED_FUNCTION_200_0();
  sub_24DE22A20();
  if (v22)
  {
    v71 = OUTLINED_FUNCTION_199_0();
    v72(v71);
  }

  else
  {
    v120 = v69;
    v73 = v135;
    v74 = v136 + 8;
    v121 = *(v136 + 8);
    v75 = v121(v20, v135);
    v76 = MEMORY[0x253039280](v75);
    MEMORY[0x253039240](v76);
    OUTLINED_FUNCTION_185_0();
    OUTLINED_FUNCTION_336_0();
    sub_24DE22850();
    OUTLINED_FUNCTION_170_0();
    sub_24DE22930();
    v140 = v132;
    v141[0] = v134;

    v77 = OUTLINED_FUNCTION_247_0();
    OUTLINED_FUNCTION_106_0(v77, v78);
    OUTLINED_FUNCTION_12_0();
    OUTLINED_FUNCTION_72_0();
    sub_24DE22A50();

    v79 = OUTLINED_FUNCTION_158_0();
    (v121)(v79);
    v80 = OUTLINED_FUNCTION_117_0();
    v133(v80);
    OUTLINED_FUNCTION_114_0(&v135);
    sub_24DE22930();
    v140 = v130;
    v141[0] = v131;

    v81 = OUTLINED_FUNCTION_247_0();
    OUTLINED_FUNCTION_106_0(v81, v82);
    OUTLINED_FUNCTION_11_0();
    OUTLINED_FUNCTION_71_0();
    sub_24DE22A50();
    OUTLINED_FUNCTION_98_0();

    v83 = OUTLINED_FUNCTION_732();
    v136 = v74;
    (v121)(v83);
    v84 = OUTLINED_FUNCTION_64_0();
    v133(v84);
    sub_24DE22930();
    v140 = v128;
    v141[0] = v129;

    v85 = sub_24DE22820();
    OUTLINED_FUNCTION_106_0(v85, v86);
    OUTLINED_FUNCTION_57_0();
    OUTLINED_FUNCTION_342_0();
    OUTLINED_FUNCTION_372_0();

    v87 = OUTLINED_FUNCTION_408();
    (v121)(v87);
    v88 = OUTLINED_FUNCTION_64_0();
    v133(v88);
    sub_24DE22930();
    v140 = v126;
    v141[0] = v127;

    v89 = sub_24DE22820();
    OUTLINED_FUNCTION_106_0(v89, v90);
    OUTLINED_FUNCTION_18_0();
    sub_24DE22A50();

    OUTLINED_FUNCTION_44_0();
    v91();
    v92 = OUTLINED_FUNCTION_117_0();
    v133(v92);
    OUTLINED_FUNCTION_131_0(&a16);
    v140 = v124;
    v141[0] = v125;

    v93 = OUTLINED_FUNCTION_247_0();
    OUTLINED_FUNCTION_106_0(v93, v94);
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_261_0();

    OUTLINED_FUNCTION_44_0();
    v95();
    v96 = OUTLINED_FUNCTION_117_0();
    v133(v96);
    OUTLINED_FUNCTION_114_0(&a13);
    sub_24DE22930();
    OUTLINED_FUNCTION_356_0();
    OUTLINED_FUNCTION_268_0(&a12);
    v97 = OUTLINED_FUNCTION_247_0();
    OUTLINED_FUNCTION_313_0(v97, v98);
    OUTLINED_FUNCTION_41_0();
    sub_24DE22A50();

    OUTLINED_FUNCTION_44_0();
    v99();
    v100 = OUTLINED_FUNCTION_117_0();
    v137(v100);
    OUTLINED_FUNCTION_114_0(&a10);
    sub_24DE22930();
    OUTLINED_FUNCTION_268_0(&a9);
    v101 = OUTLINED_FUNCTION_247_0();
    OUTLINED_FUNCTION_313_0(v101, v102);
    OUTLINED_FUNCTION_41_0();
    sub_24DE22A50();

    OUTLINED_FUNCTION_44_0();
    v103();
    v104 = OUTLINED_FUNCTION_117_0();
    v137(v104);
    OUTLINED_FUNCTION_131_0(v141);
    v140 = v122;
    v141[0] = v123;

    v105 = OUTLINED_FUNCTION_247_0();
    OUTLINED_FUNCTION_106_0(v105, v106);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_261_0();
    OUTLINED_FUNCTION_372_0();

    OUTLINED_FUNCTION_44_0();
    v107();
    v108 = OUTLINED_FUNCTION_117_0();
    v133(v108);
    OUTLINED_FUNCTION_114_0(&v139);
    sub_24DE22930();
    OUTLINED_FUNCTION_172_0();
    v140 = v109;
    v141[0] = v133;

    v110 = OUTLINED_FUNCTION_247_0();
    OUTLINED_FUNCTION_313_0(v110, v111);
    OUTLINED_FUNCTION_36_0();
    sub_24DE22A50();

    v112 = OUTLINED_FUNCTION_732();
    (v121)(v112);
    v113 = OUTLINED_FUNCTION_117_0();
    v137(v113);
    OUTLINED_FUNCTION_131_0(&v137);
    OUTLINED_FUNCTION_247_0();
    OUTLINED_FUNCTION_118_0();
    sub_24DD72E00();
    sub_24DE22A40();
    OUTLINED_FUNCTION_84_0();
    (v121)();
    v114 = OUTLINED_FUNCTION_117_0();
    v137(v114);
    if ((v70 & 1) == 0)
    {
      OUTLINED_FUNCTION_311_0();
      v116 = (v120 | (v115 << 32));
      OUTLINED_FUNCTION_367_0(&v138);
      sub_24DE22930();
      WORD2(v140) = BYTE4(v116) & 1;
      LODWORD(v140) = v116;
      sub_24DE22820();
      OUTLINED_FUNCTION_118_0();
      sub_24DE200A4();
      OUTLINED_FUNCTION_10_0();
      sub_24DE22A80();
      v117 = OUTLINED_FUNCTION_153_0(&v138);
      v73(v117);
      v118 = OUTLINED_FUNCTION_117_0();
      v116(v118);
    }
  }

  OUTLINED_FUNCTION_300_0();
  OUTLINED_FUNCTION_644();
}

uint64_t sub_24DE0CB34()
{
  OUTLINED_FUNCTION_441();
  v5 = OUTLINED_FUNCTION_195_0(v1, v2, v3, v4);
  v0[38] = v5;
  OUTLINED_FUNCTION_26_0(v5);
  v0[39] = v6;
  v8 = *(v7 + 64);
  v9 = OUTLINED_FUNCTION_1318();
  OUTLINED_FUNCTION_232_0(v9);
  v10 = sub_24DE22A90();
  v0[41] = v10;
  OUTLINED_FUNCTION_26_0(v10);
  v0[42] = v11;
  v13 = *(v12 + 64);
  v14 = OUTLINED_FUNCTION_240_0();
  v15 = OUTLINED_FUNCTION_320_0(v14);
  v0[45] = OUTLINED_FUNCTION_319_0(v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B4B50, &unk_24DE38700);
  OUTLINED_FUNCTION_443(v16);
  v18 = *(v17 + 64);
  v19 = OUTLINED_FUNCTION_1318();
  v20 = OUTLINED_FUNCTION_329_0(v19);
  v0[47] = v20;
  OUTLINED_FUNCTION_26_0(v20);
  v0[48] = v21;
  v23 = *(v22 + 64);
  v24 = OUTLINED_FUNCTION_240_0();
  v0[50] = OUTLINED_FUNCTION_328_0(v24);
  v25 = OUTLINED_FUNCTION_183();

  return MEMORY[0x2822009F8](v25, v26, v27);
}

uint64_t sub_24DE0CC94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_147_0();
  OUTLINED_FUNCTION_161_0();
  OUTLINED_FUNCTION_127_0();
  MEMORY[0x2530392C0]();
  v18 = OUTLINED_FUNCTION_13_0();
  v17(v18);
  if (v14 != 200)
  {
    OUTLINED_FUNCTION_34_0();
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B3598, &qword_24DE23698);
    OUTLINED_FUNCTION_69_0(v23);
    MEMORY[0x2530392C0]();
    v24 = OUTLINED_FUNCTION_48_0();
    v17(v24);
    OUTLINED_FUNCTION_137_0();

    OUTLINED_FUNCTION_68_0();
    SuggestedPlayer = type metadata accessor for Operations.PostWebObjectsGKProfileService_woaWaGetSuggestedPlayerNickname.Output(0);
    OUTLINED_FUNCTION_136_0(SuggestedPlayer);
    OUTLINED_FUNCTION_82_0();

    OUTLINED_FUNCTION_27_0();
    goto LABEL_5;
  }

  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_257_0();
  OUTLINED_FUNCTION_134_0();
  v19 = OUTLINED_FUNCTION_51_0();
  v20(v19);
  v21 = OUTLINED_FUNCTION_20_0();
  (v16)(v21);
  OUTLINED_FUNCTION_138_0();
  OUTLINED_FUNCTION_133_0();
  if (v15)
  {
    v22 = OUTLINED_FUNCTION_112_0();
    (v16)(v22);
    sub_24DE205DC(200, &qword_27F1B4B50);
    OUTLINED_FUNCTION_126_0();

    OUTLINED_FUNCTION_49_0();
LABEL_5:
    OUTLINED_FUNCTION_115_0();

    return v27(v26, v27, v28, v29, v30, v31, v32, v33, a9, a10, a11, a12, a13, a14);
  }

  OUTLINED_FUNCTION_16_0();
  OUTLINED_FUNCTION_182_0();
  OUTLINED_FUNCTION_157_0();
  v16();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_259_0();
  __break(1u);

  OUTLINED_FUNCTION_324_0();
  v35 = *(MEMORY[0x277D37A38] + 4);
  v36 = swift_task_alloc();
  OUTLINED_FUNCTION_255_0(v36);
  sub_24DE20050();
  OUTLINED_FUNCTION_50_0();
  MEMORY[0xC8] = v37;
  OUTLINED_FUNCTION_111_0();
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_115_0();

  return MEMORY[0x282198000](v38, v39, v40, v41, v42, v43, v44, v45, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_24DE0CF0C()
{
  OUTLINED_FUNCTION_441();
  OUTLINED_FUNCTION_552();
  v3 = v2;
  OUTLINED_FUNCTION_167();
  *v4 = v3;
  v6 = *(v5 + 424);
  v7 = *v1;
  OUTLINED_FUNCTION_162();
  *v8 = v7;
  *(v3 + 432) = v0;

  v9 = OUTLINED_FUNCTION_59_0();
  v10(v9);
  OUTLINED_FUNCTION_535();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_24DE0D014()
{
  OUTLINED_FUNCTION_330_0();
  OUTLINED_FUNCTION_1060();
  v1 = OUTLINED_FUNCTION_60_0();
  sub_24DDFDC5C(v1, v2);
  v3 = OUTLINED_FUNCTION_252_0();
  sub_24DDFDC5C(v3, v4);
  v5 = OUTLINED_FUNCTION_251_0();
  Operations.PostWebObjectsGKProfileService_woaWaGetSuggestedPlayerNickname.Output.Ok.init(body:)(v5);
  sub_24DE205DC(v0, &qword_27F1B4B50);
  v6 = OUTLINED_FUNCTION_33_0();
  SuggestedPlayer = type metadata accessor for Operations.PostWebObjectsGKProfileService_woaWaGetSuggestedPlayerNickname.Output(v6);
  OUTLINED_FUNCTION_135_0(SuggestedPlayer);
  OUTLINED_FUNCTION_82_0();

  OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_302_0();

  return v9(v8, v9, v10, v11, v12, v13, v14, v15);
}

uint64_t sub_24DE0D0DC()
{
  OUTLINED_FUNCTION_113_0();
  OUTLINED_FUNCTION_15_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_164(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_3_0(v1);

  return sub_24DE0CB34();
}

uint64_t Client.postWebObjectsGKGameStatsService_woaWaGetLeaderboardEntries(_:)()
{
  OUTLINED_FUNCTION_441();
  v1[47] = v2;
  v1[48] = v0;
  memcpy(v1 + 2, v3, 0x168uLL);
  v4 = OUTLINED_FUNCTION_183();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_24DE0D1F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_341_0();
  OUTLINED_FUNCTION_1060();
  v10 = v9[48];
  v11 = sub_24DDD0ADC();
  v12 = *v11;
  v9[49] = v11[1];
  v13 = swift_task_alloc();
  v9[50] = v13;
  v14 = OUTLINED_FUNCTION_258_0(v13);
  v9[51] = v14;
  *(v14 + 16) = v10;
  v15 = *(MEMORY[0x277D37998] + 4);

  v16 = swift_task_alloc();
  v9[52] = v16;
  type metadata accessor for Operations.PostWebObjectsGKGameStatsService_woaWaGetLeaderboardEntries.Output(0);
  OUTLINED_FUNCTION_167_0();
  *v16 = v17;
  v16[1] = sub_24DE0D30C;
  v18 = v9[48];
  OUTLINED_FUNCTION_2_0(v9[47]);
  OUTLINED_FUNCTION_231_0();

  return MEMORY[0x282197F10](v19, v20, v21, v22, v23, v24, v25, v26, a9);
}

uint64_t sub_24DE0D30C()
{
  OUTLINED_FUNCTION_113_0();
  OUTLINED_FUNCTION_552();
  v3 = v2;
  OUTLINED_FUNCTION_167();
  *v4 = v3;
  v6 = *(v5 + 416);
  v7 = *v1;
  OUTLINED_FUNCTION_162();
  *v8 = v7;
  v3[53] = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_535();

    return MEMORY[0x2822009F8](v9, v10, v11);
  }

  else
  {
    v13 = v3[50];
    v12 = v3[51];
    v14 = v3[49];

    OUTLINED_FUNCTION_27_0();

    return v15();
  }
}

uint64_t sub_24DE0D448()
{
  OUTLINED_FUNCTION_441();
  v1 = v0[50];
  v2 = v0[51];
  v3 = v0[49];

  OUTLINED_FUNCTION_1327();
  v5 = v0[53];

  return v4();
}

void sub_24DE0D4B8()
{
  OUTLINED_FUNCTION_645();
  v3 = v2;
  v115 = v4;
  v5 = sub_24DE22800();
  v6 = OUTLINED_FUNCTION_443(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_122_0();
  v9 = sub_24DE22840();
  v10 = OUTLINED_FUNCTION_443(v9);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_122_0();
  v128 = sub_24DE22A90();
  v13 = OUTLINED_FUNCTION_27(v128);
  v117 = v14;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_19_0();
  v92 = v17;
  OUTLINED_FUNCTION_100_0();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_101_0();
  v93 = v19;
  OUTLINED_FUNCTION_100_0();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_101_0();
  v94 = v21;
  OUTLINED_FUNCTION_100_0();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_100_0();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_101_0();
  v99 = v24;
  OUTLINED_FUNCTION_100_0();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_100_0();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_100_0();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_100_0();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_100_0();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_100_0();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_101_0();
  v112 = v31;
  OUTLINED_FUNCTION_100_0();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_146_0();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_101_0();
  v116 = v34;
  OUTLINED_FUNCTION_100_0();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_221_0();
  v113 = v3[2];
  v114 = v3[3];
  v110 = v3[4];
  v111 = v3[5];
  v108 = v3[6];
  v109 = v3[7];
  v106 = v3[8];
  v107 = v3[9];
  v104 = v3[10];
  v105 = v3[11];
  v102 = v3[12];
  v103 = v3[13];
  v100 = v3[14];
  v101 = v3[15];
  v97 = v3[16];
  v98 = v3[17];
  v95 = v3[18];
  v96 = v3[19];
  v36 = v3[20];
  v37 = v3[21];
  v38 = v3[22];
  memcpy(v127, v3 + 23, sizeof(v127));
  sub_24DE22930();
  OUTLINED_FUNCTION_339_0();
  if (v0)
  {
    v39 = *(v117 + 8);
    v40 = OUTLINED_FUNCTION_275_0();
    v53(v40);
  }

  else
  {
    OUTLINED_FUNCTION_364_0();
    v90 = v37;
    v41 = OUTLINED_FUNCTION_350_0();
    v91 = v42;
    v43 = (v42)(v41);
    v44 = MEMORY[0x253039280](v43);
    MEMORY[0x253039240](v44);
    OUTLINED_FUNCTION_343_0();
    sub_24DE22850();
    OUTLINED_FUNCTION_376_0();
    sub_24DE229E0();
    OUTLINED_FUNCTION_325_0();

    v45 = sub_24DE22820();
    OUTLINED_FUNCTION_12_0();
    OUTLINED_FUNCTION_155_0();
    OUTLINED_FUNCTION_261_0();

    v91(v116, v1);
    v46 = OUTLINED_FUNCTION_198_0();
    v45(v46);
    sub_24DE22930();

    v47 = sub_24DE22820();
    OUTLINED_FUNCTION_168_0(v47, v48);
    OUTLINED_FUNCTION_11_0();
    OUTLINED_FUNCTION_154_0();
    sub_24DE22A50();
    OUTLINED_FUNCTION_98_0();

    v49 = OUTLINED_FUNCTION_551();
    (v91)(v49);
    v50 = OUTLINED_FUNCTION_198_0();
    v115(v50);
    sub_24DE22930();

    v51 = sub_24DE22820();
    OUTLINED_FUNCTION_168_0(v51, v52);
    OUTLINED_FUNCTION_57_0();
    OUTLINED_FUNCTION_342_0();
    OUTLINED_FUNCTION_372_0();

    v54 = OUTLINED_FUNCTION_275_0();
    (v91)(v54);
    v55 = OUTLINED_FUNCTION_198_0();
    v115(v55);
    OUTLINED_FUNCTION_325_0();
    OUTLINED_FUNCTION_217_0(v108);
    OUTLINED_FUNCTION_272_0();
    v56 = sub_24DE22820();
    OUTLINED_FUNCTION_168_0(v56, v57);
    OUTLINED_FUNCTION_18_0();
    OUTLINED_FUNCTION_96_0();
    OUTLINED_FUNCTION_261_0();

    v58 = OUTLINED_FUNCTION_93_0();
    v59(v58);
    v60 = OUTLINED_FUNCTION_198_0();
    v115(v60);
    OUTLINED_FUNCTION_325_0();
    OUTLINED_FUNCTION_217_0(v106);
    OUTLINED_FUNCTION_272_0();
    v61 = sub_24DE22820();
    OUTLINED_FUNCTION_164_0(v61, v62);
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_261_0();

    v63 = OUTLINED_FUNCTION_93_0();
    v64(v63);
    v65 = OUTLINED_FUNCTION_198_0();
    v112(v65);
    OUTLINED_FUNCTION_325_0();
    OUTLINED_FUNCTION_360_0();
    OUTLINED_FUNCTION_217_0(v104);
    OUTLINED_FUNCTION_272_0();
    v66 = sub_24DE22820();
    OUTLINED_FUNCTION_164_0(v66, v67);
    OUTLINED_FUNCTION_129_0();
    OUTLINED_FUNCTION_261_0();

    v68 = OUTLINED_FUNCTION_93_0();
    v69(v68);
    v70 = OUTLINED_FUNCTION_198_0();
    v112(v70);
    OUTLINED_FUNCTION_325_0();
    OUTLINED_FUNCTION_217_0(v102);
    OUTLINED_FUNCTION_272_0();
    v71 = sub_24DE22820();
    OUTLINED_FUNCTION_164_0(v71, v72);
    OUTLINED_FUNCTION_129_0();
    OUTLINED_FUNCTION_261_0();

    v73 = OUTLINED_FUNCTION_93_0();
    v74(v73);
    v75 = OUTLINED_FUNCTION_198_0();
    v112(v75);
    OUTLINED_FUNCTION_325_0();
    OUTLINED_FUNCTION_217_0(v100);
    OUTLINED_FUNCTION_272_0();
    v76 = sub_24DE22820();
    OUTLINED_FUNCTION_164_0(v76, v77);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_261_0();

    v78 = OUTLINED_FUNCTION_93_0();
    v79(v78);
    v80 = OUTLINED_FUNCTION_198_0();
    v112(v80);
    OUTLINED_FUNCTION_325_0();
    OUTLINED_FUNCTION_360_0();
    OUTLINED_FUNCTION_217_0(v97);
    OUTLINED_FUNCTION_272_0();
    v81 = sub_24DE22820();
    OUTLINED_FUNCTION_164_0(v81, v82);
    OUTLINED_FUNCTION_58_0();
    OUTLINED_FUNCTION_261_0();

    v91(v99, v128);
    v83 = OUTLINED_FUNCTION_198_0();
    v112(v83);
    sub_24DE22930();
    v123[0] = v95;
    v123[1] = v96;

    v84 = sub_24DE22820();
    OUTLINED_FUNCTION_190_0(v84, v85);
    OUTLINED_FUNCTION_235_0();
    sub_24DE22A50();

    OUTLINED_FUNCTION_289_0();
    v86();
    v87 = OUTLINED_FUNCTION_198_0();
    (v117)(v87);
    sub_24DE22930();
    v125 = v36;
    v126 = v90;

    v88 = sub_24DE22820();
    OUTLINED_FUNCTION_190_0(v88, v89);
    OUTLINED_FUNCTION_124_0();
    sub_24DE22A50();

    v91(v94, v128);
    (v117)(v123, 0);
    sub_24DE22930();
    sub_24DE22820();
    OUTLINED_FUNCTION_186_0();
    sub_24DDE8160();
    sub_24DE22A40();
    v91(v93, v128);
    (v117)(v123, 0);
    memcpy(v124, v127, sizeof(v124));
    if (sub_24DE1FF88(v124) != 1)
    {
      sub_24DDFDC60(v124, v121);
      memcpy(v122, v127, sizeof(v122));
      sub_24DE1FFA0(v122, v120);
      sub_24DE22930();
      memcpy(v123, v121, sizeof(v123));
      nullsub_1(v123);
      memcpy(v120, v123, sizeof(v120));
      sub_24DE22820();
      OUTLINED_FUNCTION_186_0();
      sub_24DE1FFFC();
      OUTLINED_FUNCTION_56_0();
      OUTLINED_FUNCTION_236_0();
      sub_24DE22A80();
      memcpy(v118, v120, sizeof(v118));
      sub_24DE205DC(v118, &unk_27F1B4C60);
      v91(v92, v128);
      (v117)(&v119, 0);
    }
  }

  OUTLINED_FUNCTION_300_0();
  OUTLINED_FUNCTION_644();
}

uint64_t sub_24DE0E1F8()
{
  OUTLINED_FUNCTION_441();
  v0[93] = v1;
  v0[92] = v2;
  v0[91] = v3;
  v0[90] = v4;
  v5 = sub_24DE22800();
  v0[94] = v5;
  OUTLINED_FUNCTION_26_0(v5);
  v0[95] = v6;
  v8 = *(v7 + 64);
  v0[96] = OUTLINED_FUNCTION_1318();
  v9 = sub_24DE22A90();
  v0[97] = v9;
  OUTLINED_FUNCTION_26_0(v9);
  v0[98] = v10;
  v12 = *(v11 + 64);
  v0[99] = OUTLINED_FUNCTION_240_0();
  v0[100] = swift_task_alloc();
  v0[101] = swift_task_alloc();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B4B50, &unk_24DE38700);
  OUTLINED_FUNCTION_443(v13);
  v15 = *(v14 + 64);
  v0[102] = OUTLINED_FUNCTION_1318();
  v16 = sub_24DE22880();
  v0[103] = v16;
  OUTLINED_FUNCTION_26_0(v16);
  v0[104] = v17;
  v19 = *(v18 + 64);
  v0[105] = OUTLINED_FUNCTION_240_0();
  v0[106] = swift_task_alloc();
  v20 = OUTLINED_FUNCTION_183();

  return MEMORY[0x2822009F8](v20, v21, v22);
}

uint64_t sub_24DE0E390(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_147_0();
  OUTLINED_FUNCTION_161_0();
  v16 = v14[106];
  v17 = v14[104];
  v18 = v14[103];
  v19 = v14[91];
  v20 = MEMORY[0x2530392E0]();
  MEMORY[0x2530392C0](v20);
  v21 = OUTLINED_FUNCTION_13_0();
  v15(v21);
  if (v16 != 200)
  {
    v39 = v14[105];
    v40 = v14[103];
    v41 = v14[96];
    v42 = v14[92];
    v43 = v14[91];
    v44 = v14[90];
    v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B3598, &qword_24DE23698);
    OUTLINED_FUNCTION_69_0(v45);
    MEMORY[0x2530392C0]();
    v46 = OUTLINED_FUNCTION_48_0();
    v15(v46);
    OUTLINED_FUNCTION_137_0();

    OUTLINED_FUNCTION_68_0();
    Leaderboard = type metadata accessor for Operations.PostWebObjectsGKGameStatsService_woaWaGetLeaderboardEntries.Output(0);
    OUTLINED_FUNCTION_136_0(Leaderboard);
    OUTLINED_FUNCTION_266_0();

    OUTLINED_FUNCTION_27_0();
    goto LABEL_5;
  }

  v22 = v14[102];
  v23 = v14[101];
  v24 = v14[98];
  a9 = v14[97];
  a10 = v14[100];
  v25 = v14[96];
  v26 = v14[95];
  v27 = v14[94];
  v28 = v14[93];
  v29 = v14[91];
  OUTLINED_FUNCTION_260_0();
  OUTLINED_FUNCTION_257_0();
  OUTLINED_FUNCTION_134_0();
  v30 = OUTLINED_FUNCTION_51_0();
  v31(v30);
  v32 = *(v24 + 8);
  v14[107] = v32;
  OUTLINED_FUNCTION_159_0();
  v14[108] = v33;
  v34 = OUTLINED_FUNCTION_160_0();
  v32(v34);
  OUTLINED_FUNCTION_138_0();
  OUTLINED_FUNCTION_133_0();
  if (v23)
  {
    v35 = v14[102];
    (v32)(v14[100], v14[97]);
    sub_24DE205DC(v35, &qword_27F1B4B50);
    v36 = v14[106];
    v37 = v14[105];
    v38 = v14[102];
    OUTLINED_FUNCTION_387_0();

    OUTLINED_FUNCTION_49_0();
LABEL_5:
    OUTLINED_FUNCTION_115_0();

    return v49(v48, v49, v50, v51, v52, v53, v54, v55, a9, a10, a11, a12, a13, a14);
  }

  OUTLINED_FUNCTION_16_0();
  v57 = v14[100];
  v58 = v14[97];
  OUTLINED_FUNCTION_157_0();
  (v32)();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_259_0();
  if ((v26 & 1) == 0)
  {
    __break(1u);
  }

  v59 = v14[99];
  v60 = v14[93];
  sub_24DE22930();
  v61 = *(MEMORY[0x277D37A38] + 4);
  v62 = swift_task_alloc();
  v14[109] = v62;
  sub_24DE1FF34();
  OUTLINED_FUNCTION_50_0();
  *v62 = v63;
  v62[1] = sub_24DE0E698;
  v64 = v14[99];
  v65 = v14[92];
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_115_0();

  return MEMORY[0x282198000](v66, v67, v68, v69, v70, v71, v72, v73, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_24DE0E698()
{
  OUTLINED_FUNCTION_441();
  OUTLINED_FUNCTION_552();
  v3 = v2;
  OUTLINED_FUNCTION_167();
  *v4 = v3;
  v6 = *(v5 + 872);
  v7 = *v1;
  OUTLINED_FUNCTION_162();
  *v8 = v7;
  *(v3 + 880) = v0;

  v9 = OUTLINED_FUNCTION_353_0();
  v10(v9);
  OUTLINED_FUNCTION_535();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_24DE0E7A0()
{
  OUTLINED_FUNCTION_330_0();
  OUTLINED_FUNCTION_1060();
  v1 = v0[102];
  v2 = v0[90];
  sub_24DDFDC60(v0 + 2, v0 + 46);
  sub_24DDFDC60(v0 + 46, v0 + 68);
  Operations.PostWebObjectsGKGameStatsService_woaWaGetLeaderboardEntries.Output.Ok.init(body:)();
  sub_24DE205DC(v1, &qword_27F1B4B50);
  memcpy(v2, v0 + 24, 0xB0uLL);
  Leaderboard = type metadata accessor for Operations.PostWebObjectsGKGameStatsService_woaWaGetLeaderboardEntries.Output(0);
  OUTLINED_FUNCTION_135_0(Leaderboard);
  OUTLINED_FUNCTION_266_0();

  OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_302_0();

  return v5(v4, v5, v6, v7, v8, v9, v10, v11);
}

uint64_t sub_24DE0E88C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_245_0();
  OUTLINED_FUNCTION_496();
  sub_24DE205DC(v10[102], &qword_27F1B4B50);
  v11 = v10[110];
  v12 = v10[106];
  v13 = v10[105];
  v14 = v10[102];
  OUTLINED_FUNCTION_387_0();

  OUTLINED_FUNCTION_1327();
  OUTLINED_FUNCTION_230_0();

  return v16(v15, v16, v17, v18, v19, v20, v21, v22, a9, a10);
}

uint64_t sub_24DE0E940()
{
  OUTLINED_FUNCTION_113_0();
  OUTLINED_FUNCTION_15_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_164(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_3_0(v1);

  return sub_24DE0E1F8();
}

uint64_t sub_24DE0E9CC()
{
  OUTLINED_FUNCTION_227_0();
  memcpy(__dst, v0, sizeof(__dst));
  memcpy(__src, v0, sizeof(__src));
  nullsub_1(__src);
  sub_24DDFDC60(__src, v1);
  return sub_24DDE4CE0(__dst, &v3);
}

uint64_t Client.postWebObjectsGKGameStatsService_woaWaGetLeaderboardEntriesForPlayers(_:)()
{
  OUTLINED_FUNCTION_441();
  v1[44] = v2;
  v1[45] = v0;
  memcpy(v1 + 2, v3, 0x150uLL);
  v4 = OUTLINED_FUNCTION_183();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_24DE0EAA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_341_0();
  OUTLINED_FUNCTION_1060();
  v10 = v9[45];
  v11 = sub_24DDD21C0();
  v12 = *v11;
  v9[46] = v11[1];
  v13 = swift_task_alloc();
  v9[47] = v13;
  v14 = OUTLINED_FUNCTION_258_0(v13);
  v9[48] = v14;
  *(v14 + 16) = v10;
  v15 = *(MEMORY[0x277D37998] + 4);

  v16 = swift_task_alloc();
  v9[49] = v16;
  type metadata accessor for Operations.PostWebObjectsGKGameStatsService_woaWaGetLeaderboardEntriesForPlayers.Output(0);
  OUTLINED_FUNCTION_167_0();
  *v16 = v17;
  v16[1] = sub_24DE0EBB4;
  v18 = v9[45];
  OUTLINED_FUNCTION_2_0(v9[44]);
  OUTLINED_FUNCTION_231_0();

  return MEMORY[0x282197F10](v19, v20, v21, v22, v23, v24, v25, v26, a9);
}

uint64_t sub_24DE0EBB4()
{
  OUTLINED_FUNCTION_113_0();
  OUTLINED_FUNCTION_552();
  v3 = v2;
  OUTLINED_FUNCTION_167();
  *v4 = v3;
  v6 = *(v5 + 392);
  v7 = *v1;
  OUTLINED_FUNCTION_162();
  *v8 = v7;
  v3[50] = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_535();

    return MEMORY[0x2822009F8](v9, v10, v11);
  }

  else
  {
    v13 = v3[47];
    v12 = v3[48];
    v14 = v3[46];

    OUTLINED_FUNCTION_27_0();

    return v15();
  }
}

uint64_t sub_24DE0ECF0()
{
  OUTLINED_FUNCTION_441();
  v1 = v0[47];
  v2 = v0[48];
  v3 = v0[46];

  OUTLINED_FUNCTION_1327();
  v5 = v0[50];

  return v4();
}

void sub_24DE0ED60()
{
  OUTLINED_FUNCTION_645();
  v3 = v2;
  v115 = v4;
  v5 = sub_24DE22800();
  v6 = OUTLINED_FUNCTION_443(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_122_0();
  v9 = sub_24DE22840();
  v10 = OUTLINED_FUNCTION_443(v9);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_122_0();
  v128 = sub_24DE22A90();
  v13 = OUTLINED_FUNCTION_27(v128);
  v117 = v14;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_19_0();
  v92 = v17;
  OUTLINED_FUNCTION_100_0();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_101_0();
  v93 = v19;
  OUTLINED_FUNCTION_100_0();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_101_0();
  v94 = v21;
  OUTLINED_FUNCTION_100_0();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_100_0();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_101_0();
  v99 = v24;
  OUTLINED_FUNCTION_100_0();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_100_0();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_100_0();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_100_0();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_100_0();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_100_0();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_101_0();
  v112 = v31;
  OUTLINED_FUNCTION_100_0();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_146_0();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_101_0();
  v116 = v34;
  OUTLINED_FUNCTION_100_0();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_221_0();
  v113 = v3[2];
  v114 = v3[3];
  v110 = v3[4];
  v111 = v3[5];
  v108 = v3[6];
  v109 = v3[7];
  v106 = v3[8];
  v107 = v3[9];
  v104 = v3[10];
  v105 = v3[11];
  v102 = v3[12];
  v103 = v3[13];
  v100 = v3[14];
  v101 = v3[15];
  v97 = v3[16];
  v98 = v3[17];
  v95 = v3[18];
  v96 = v3[19];
  v36 = v3[20];
  v37 = v3[21];
  v38 = v3[22];
  memcpy(v127, v3 + 23, sizeof(v127));
  sub_24DE22930();
  OUTLINED_FUNCTION_187_0();
  OUTLINED_FUNCTION_339_0();
  if (v0)
  {
    v39 = *(v117 + 8);
    v40 = OUTLINED_FUNCTION_275_0();
    v53(v40);
  }

  else
  {
    OUTLINED_FUNCTION_364_0();
    v90 = v37;
    v41 = OUTLINED_FUNCTION_350_0();
    v91 = v42;
    v43 = (v42)(v41);
    v44 = MEMORY[0x253039280](v43);
    MEMORY[0x253039240](v44);
    OUTLINED_FUNCTION_343_0();
    sub_24DE22850();
    OUTLINED_FUNCTION_376_0();
    sub_24DE229E0();
    OUTLINED_FUNCTION_326_0();

    v45 = sub_24DE22820();
    OUTLINED_FUNCTION_12_0();
    OUTLINED_FUNCTION_155_0();
    OUTLINED_FUNCTION_261_0();

    v91(v116, v1);
    v46 = OUTLINED_FUNCTION_206_0();
    v45(v46);
    sub_24DE22930();

    v47 = sub_24DE22820();
    OUTLINED_FUNCTION_168_0(v47, v48);
    OUTLINED_FUNCTION_11_0();
    OUTLINED_FUNCTION_154_0();
    sub_24DE22A50();
    OUTLINED_FUNCTION_98_0();

    v49 = OUTLINED_FUNCTION_551();
    (v91)(v49);
    v50 = OUTLINED_FUNCTION_206_0();
    v115(v50);
    sub_24DE22930();

    v51 = sub_24DE22820();
    OUTLINED_FUNCTION_168_0(v51, v52);
    OUTLINED_FUNCTION_57_0();
    OUTLINED_FUNCTION_342_0();
    OUTLINED_FUNCTION_372_0();

    v54 = OUTLINED_FUNCTION_275_0();
    (v91)(v54);
    v55 = OUTLINED_FUNCTION_206_0();
    v115(v55);
    OUTLINED_FUNCTION_326_0();
    OUTLINED_FUNCTION_228_0(v108);
    OUTLINED_FUNCTION_286_0();
    v56 = sub_24DE22820();
    OUTLINED_FUNCTION_168_0(v56, v57);
    OUTLINED_FUNCTION_18_0();
    OUTLINED_FUNCTION_96_0();
    OUTLINED_FUNCTION_261_0();

    v58 = OUTLINED_FUNCTION_92_0();
    v59(v58);
    v60 = OUTLINED_FUNCTION_206_0();
    v115(v60);
    OUTLINED_FUNCTION_326_0();
    OUTLINED_FUNCTION_228_0(v106);
    OUTLINED_FUNCTION_286_0();
    v61 = sub_24DE22820();
    OUTLINED_FUNCTION_164_0(v61, v62);
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_261_0();

    v63 = OUTLINED_FUNCTION_92_0();
    v64(v63);
    v65 = OUTLINED_FUNCTION_206_0();
    v112(v65);
    OUTLINED_FUNCTION_326_0();
    OUTLINED_FUNCTION_360_0();
    OUTLINED_FUNCTION_228_0(v104);
    OUTLINED_FUNCTION_286_0();
    v66 = sub_24DE22820();
    OUTLINED_FUNCTION_164_0(v66, v67);
    OUTLINED_FUNCTION_129_0();
    OUTLINED_FUNCTION_261_0();

    v68 = OUTLINED_FUNCTION_92_0();
    v69(v68);
    v70 = OUTLINED_FUNCTION_206_0();
    v112(v70);
    OUTLINED_FUNCTION_326_0();
    OUTLINED_FUNCTION_228_0(v102);
    OUTLINED_FUNCTION_286_0();
    v71 = sub_24DE22820();
    OUTLINED_FUNCTION_164_0(v71, v72);
    OUTLINED_FUNCTION_129_0();
    OUTLINED_FUNCTION_261_0();

    v73 = OUTLINED_FUNCTION_92_0();
    v74(v73);
    v75 = OUTLINED_FUNCTION_206_0();
    v112(v75);
    OUTLINED_FUNCTION_326_0();
    OUTLINED_FUNCTION_228_0(v100);
    OUTLINED_FUNCTION_286_0();
    v76 = sub_24DE22820();
    OUTLINED_FUNCTION_164_0(v76, v77);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_261_0();

    v78 = OUTLINED_FUNCTION_92_0();
    v79(v78);
    v80 = OUTLINED_FUNCTION_206_0();
    v112(v80);
    OUTLINED_FUNCTION_326_0();
    OUTLINED_FUNCTION_360_0();
    OUTLINED_FUNCTION_228_0(v97);
    OUTLINED_FUNCTION_286_0();
    v81 = sub_24DE22820();
    OUTLINED_FUNCTION_164_0(v81, v82);
    OUTLINED_FUNCTION_58_0();
    OUTLINED_FUNCTION_261_0();

    v91(v99, v128);
    v83 = OUTLINED_FUNCTION_206_0();
    v112(v83);
    sub_24DE22930();
    v123[0] = v95;
    v123[1] = v96;

    v84 = sub_24DE22820();
    OUTLINED_FUNCTION_190_0(v84, v85);
    OUTLINED_FUNCTION_235_0();
    sub_24DE22A50();

    OUTLINED_FUNCTION_290_0();
    v86();
    v87 = OUTLINED_FUNCTION_206_0();
    (v117)(v87);
    sub_24DE22930();
    v125 = v36;
    v126 = v90;

    v88 = sub_24DE22820();
    OUTLINED_FUNCTION_190_0(v88, v89);
    OUTLINED_FUNCTION_124_0();
    sub_24DE22A50();

    v91(v94, v128);
    (v117)(v123, 0);
    sub_24DE22930();
    sub_24DE22820();
    OUTLINED_FUNCTION_186_0();
    sub_24DDE8288();
    sub_24DE22A40();
    v91(v93, v128);
    (v117)(v123, 0);
    memcpy(v124, v127, sizeof(v124));
    if (sub_24DE1FF88(v124) != 1)
    {
      sub_24DDE830C(v124, v121);
      memcpy(v122, v127, sizeof(v122));
      sub_24DE1FE84(v122, v120);
      sub_24DE22930();
      memcpy(v123, v121, sizeof(v123));
      nullsub_1(v123);
      memcpy(v120, v123, sizeof(v120));
      sub_24DE22820();
      OUTLINED_FUNCTION_186_0();
      sub_24DE1FEE0();
      OUTLINED_FUNCTION_56_0();
      OUTLINED_FUNCTION_236_0();
      sub_24DE22A80();
      memcpy(v118, v120, sizeof(v118));
      sub_24DE205DC(v118, &unk_27F1B4C48);
      v91(v92, v128);
      (v117)(&v119, 0);
    }
  }

  OUTLINED_FUNCTION_300_0();
  OUTLINED_FUNCTION_644();
}

uint64_t sub_24DE0FA94()
{
  OUTLINED_FUNCTION_441();
  v0[56] = v1;
  v0[57] = v2;
  v0[54] = v3;
  v0[55] = v4;
  v5 = sub_24DE22800();
  v0[58] = v5;
  OUTLINED_FUNCTION_26_0(v5);
  v0[59] = v6;
  v8 = *(v7 + 64);
  v0[60] = OUTLINED_FUNCTION_1318();
  v9 = sub_24DE22A90();
  v0[61] = v9;
  OUTLINED_FUNCTION_26_0(v9);
  v0[62] = v10;
  v12 = *(v11 + 64);
  v0[63] = OUTLINED_FUNCTION_240_0();
  v0[64] = swift_task_alloc();
  v0[65] = swift_task_alloc();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B4B50, &unk_24DE38700);
  OUTLINED_FUNCTION_443(v13);
  v15 = *(v14 + 64);
  v0[66] = OUTLINED_FUNCTION_1318();
  v16 = sub_24DE22880();
  v0[67] = v16;
  OUTLINED_FUNCTION_26_0(v16);
  v0[68] = v17;
  v19 = *(v18 + 64);
  v0[69] = OUTLINED_FUNCTION_240_0();
  v0[70] = swift_task_alloc();
  v20 = OUTLINED_FUNCTION_183();

  return MEMORY[0x2822009F8](v20, v21, v22);
}

uint64_t sub_24DE0FC24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_147_0();
  OUTLINED_FUNCTION_161_0();
  v16 = v14[70];
  v17 = v14[68];
  v18 = v14[67];
  v19 = v14[55];
  v20 = MEMORY[0x2530392E0]();
  MEMORY[0x2530392C0](v20);
  v21 = OUTLINED_FUNCTION_13_0();
  v15(v21);
  if (v16 != 200)
  {
    v40 = v14[69];
    v41 = v14[67];
    v42 = v14[60];
    v44 = v14[55];
    v43 = v14[56];
    v45 = v14[54];
    v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B3598, &qword_24DE23698);
    OUTLINED_FUNCTION_69_0(v46);
    MEMORY[0x2530392C0]();
    v47 = OUTLINED_FUNCTION_48_0();
    v15(v47);
    OUTLINED_FUNCTION_137_0();

    OUTLINED_FUNCTION_68_0();
    LeaderboardEntriesFor = type metadata accessor for Operations.PostWebObjectsGKGameStatsService_woaWaGetLeaderboardEntriesForPlayers.Output(0);
    OUTLINED_FUNCTION_136_0(LeaderboardEntriesFor);
    OUTLINED_FUNCTION_298_0();
    v49 = v14[65];
    v51 = v14[63];
    v50 = v14[64];
    v52 = v14[60];

    OUTLINED_FUNCTION_27_0();
    goto LABEL_5;
  }

  v22 = v14[66];
  v23 = v14[65];
  v24 = v14[62];
  a9 = v14[61];
  a10 = v14[64];
  v25 = v14[59];
  v26 = v14[60];
  v28 = v14[57];
  v27 = v14[58];
  v29 = v14[55];
  OUTLINED_FUNCTION_260_0();
  OUTLINED_FUNCTION_257_0();
  OUTLINED_FUNCTION_134_0();
  v30 = OUTLINED_FUNCTION_51_0();
  v31(v30);
  v32 = *(v24 + 8);
  v14[71] = v32;
  OUTLINED_FUNCTION_159_0();
  v14[72] = v33;
  v34 = OUTLINED_FUNCTION_160_0();
  v32(v34);
  OUTLINED_FUNCTION_138_0();
  OUTLINED_FUNCTION_133_0();
  if (v23)
  {
    v35 = v14[66];
    (v32)(v14[64], v14[61]);
    sub_24DE205DC(v35, &qword_27F1B4B50);
    OUTLINED_FUNCTION_298_0();
    v36 = v14[65];
    v38 = v14[63];
    v37 = v14[64];
    v39 = v14[60];

    OUTLINED_FUNCTION_49_0();
LABEL_5:
    OUTLINED_FUNCTION_115_0();

    return v54(v53, v54, v55, v56, v57, v58, v59, v60, a9, a10, a11, a12, a13, a14);
  }

  OUTLINED_FUNCTION_16_0();
  v62 = v14[64];
  v63 = v14[61];
  OUTLINED_FUNCTION_157_0();
  (v32)();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_259_0();
  if ((v25 & 1) == 0)
  {
    __break(1u);
  }

  v64 = v14[63];
  v65 = v14[57];
  sub_24DE22930();
  v66 = *(MEMORY[0x277D37A38] + 4);
  v67 = swift_task_alloc();
  v14[73] = v67;
  sub_24DE1FE30();
  OUTLINED_FUNCTION_50_0();
  *v67 = v68;
  v67[1] = sub_24DE0FF30;
  v69 = v14[63];
  v70 = v14[56];
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_115_0();

  return MEMORY[0x282198000](v71, v72, v73, v74, v75, v76, v77, v78, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_24DE0FF30()
{
  OUTLINED_FUNCTION_441();
  OUTLINED_FUNCTION_552();
  v3 = v2;
  OUTLINED_FUNCTION_167();
  *v4 = v3;
  v6 = *(v5 + 584);
  v7 = *v1;
  OUTLINED_FUNCTION_162();
  *v8 = v7;
  *(v3 + 592) = v0;

  v9 = OUTLINED_FUNCTION_373_0();
  v10(v9);
  OUTLINED_FUNCTION_535();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_24DE10038()
{
  OUTLINED_FUNCTION_330_0();
  OUTLINED_FUNCTION_1060();
  v1 = v0[66];
  v2 = v0[54];
  sub_24DDE8320(v0 + 2, v0 + 28);
  sub_24DDE8320(v0 + 28, v0 + 41);
  Operations.PostWebObjectsGKGameStatsService_woaWaGetLeaderboardEntriesForPlayers.Output.Ok.init(body:)();
  sub_24DE205DC(v1, &qword_27F1B4B50);
  memcpy(v2, v0 + 15, 0x68uLL);
  LeaderboardEntriesFor = type metadata accessor for Operations.PostWebObjectsGKGameStatsService_woaWaGetLeaderboardEntriesForPlayers.Output(0);
  OUTLINED_FUNCTION_135_0(LeaderboardEntriesFor);
  OUTLINED_FUNCTION_298_0();
  v4 = v0[65];
  v6 = v0[63];
  v5 = v0[64];
  v7 = v0[60];

  OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_302_0();

  return v9(v8, v9, v10, v11, v12, v13, v14, v15);
}

uint64_t sub_24DE10134(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_245_0();
  OUTLINED_FUNCTION_496();
  sub_24DE205DC(v10[66], &qword_27F1B4B50);
  v11 = v10[74];
  v12 = v10[70];
  v13 = v10[69];
  v14 = v10[66];
  v15 = v10[65];
  v17 = v10[63];
  v16 = v10[64];
  v18 = v10[60];

  OUTLINED_FUNCTION_1327();
  OUTLINED_FUNCTION_230_0();

  return v20(v19, v20, v21, v22, v23, v24, v25, v26, a9, a10);
}

uint64_t sub_24DE101F4()
{
  OUTLINED_FUNCTION_113_0();
  OUTLINED_FUNCTION_15_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_164(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_3_0(v1);

  return sub_24DE0FA94();
}

uint64_t sub_24DE10280()
{
  OUTLINED_FUNCTION_227_0();
  memcpy(__dst, v0, sizeof(__dst));
  memcpy(__src, v0, sizeof(__src));
  sub_24DDE8320(__src, v1);
  return sub_24DDE4D9C(__dst, v3);
}

uint64_t Client.postWebObjectsGKGameStatsService_woaWaGetLeaderboards(_:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_23_0();
}

uint64_t sub_24DE10300(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_344_0();
  OUTLINED_FUNCTION_496();
  v10 = *(v9 + 32);
  v11 = sub_24DDD3EEC();
  v12 = OUTLINED_FUNCTION_332_0(v11);
  *(v9 + 48) = v12;
  v13 = OUTLINED_FUNCTION_258_0(v12);
  OUTLINED_FUNCTION_299_0(v13);
  v14 = *(MEMORY[0x277D37998] + 4);

  v15 = swift_task_alloc();
  v16 = OUTLINED_FUNCTION_297_0(v15);
  type metadata accessor for Operations.PostWebObjectsGKGameStatsService_woaWaGetLeaderboards.Input(v16);
  type metadata accessor for Operations.PostWebObjectsGKGameStatsService_woaWaGetLeaderboards.Output(0);
  OUTLINED_FUNCTION_167_0();
  *v14 = v17;
  OUTLINED_FUNCTION_224_0(v18);
  OUTLINED_FUNCTION_55_0();
  OUTLINED_FUNCTION_230_0();

  return MEMORY[0x282197F10](v19, v20, v21, v22, v23, v24, v25, v26, a9);
}

void sub_24DE10400()
{
  OUTLINED_FUNCTION_645();
  v6 = v5;
  v113 = v7;
  v118 = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B4BE8, &qword_24DE38718);
  OUTLINED_FUNCTION_443(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_373();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_384_0();
  v105 = v13;
  OUTLINED_FUNCTION_122_0();
  v14 = sub_24DE22800();
  v15 = OUTLINED_FUNCTION_443(v14);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_122_0();
  v18 = sub_24DE22840();
  v19 = OUTLINED_FUNCTION_443(v18);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_122_0();
  v22 = sub_24DE22A90();
  v119 = OUTLINED_FUNCTION_27(v22);
  v120 = v23;
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v119);
  OUTLINED_FUNCTION_19_0();
  v102 = v26;
  OUTLINED_FUNCTION_100_0();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_100_0();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_101_0();
  v103 = v29;
  OUTLINED_FUNCTION_100_0();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_100_0();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_100_0();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_100_0();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_229_0();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_149_0();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_46_0();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_222_0();
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_150_0();
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_100_0();
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_369_0();
  sub_24DE22930();
  OUTLINED_FUNCTION_75_0();
  OUTLINED_FUNCTION_439();
  sub_24DE22A20();
  if (v0)
  {
    (*(v120 + 8))(v2, v119);
  }

  else
  {
    v100 = v3;
    v101 = *(v120 + 8);
    v40 = v101(v2, v119);
    v41 = MEMORY[0x253039280](v40);
    MEMORY[0x253039240](v41);
    OUTLINED_FUNCTION_185_0();
    sub_24DE22810();
    v42 = sub_24DE22850();
    sub_24DE229E0();
    sub_24DE22930();
    v43 = *(v113 + 1);
    v121[0] = *v113;
    v121[1] = v43;

    v44 = sub_24DE22820();
    OUTLINED_FUNCTION_164_0(v44, v45);
    OUTLINED_FUNCTION_12_0();
    OUTLINED_FUNCTION_155_0();
    sub_24DE22A50();

    OUTLINED_FUNCTION_214_0();
    v46();
    v47 = OUTLINED_FUNCTION_188_0();
    v118(v47);
    sub_24DE22930();
    v48 = *(v113 + 3);
    v121[0] = *(v113 + 2);
    v121[1] = v48;

    v49 = OUTLINED_FUNCTION_304_0();
    OUTLINED_FUNCTION_313_0(v49, v50);
    OUTLINED_FUNCTION_11_0();
    OUTLINED_FUNCTION_154_0();
    OUTLINED_FUNCTION_439();
    sub_24DE22A50();
    OUTLINED_FUNCTION_37_0();

    v101(v1, v119);
    v51 = OUTLINED_FUNCTION_188_0();
    v43(v51);
    sub_24DE22930();
    v52 = *(v113 + 5);
    v121[0] = *(v113 + 4);
    v121[1] = v52;

    v53 = OUTLINED_FUNCTION_304_0();
    OUTLINED_FUNCTION_168_0(v53, v54);
    OUTLINED_FUNCTION_57_0();
    sub_24DE22A50();

    v101(v100, v119);
    v55 = OUTLINED_FUNCTION_188_0();
    v6(v55);
    sub_24DE22930();
    v56 = *(v113 + 7);
    v121[0] = *(v113 + 6);
    v121[1] = v56;

    v57 = OUTLINED_FUNCTION_304_0();
    OUTLINED_FUNCTION_168_0(v57, v58);
    OUTLINED_FUNCTION_18_0();
    sub_24DE22A50();

    OUTLINED_FUNCTION_214_0();
    v59();
    v60 = OUTLINED_FUNCTION_188_0();
    v6(v60);
    sub_24DE22930();
    v61 = *(v113 + 9);
    OUTLINED_FUNCTION_345_0(*(v113 + 8));
    v62 = OUTLINED_FUNCTION_304_0();
    OUTLINED_FUNCTION_190_0(v62, v63);
    OUTLINED_FUNCTION_1_0();
    sub_24DE22A50();
    OUTLINED_FUNCTION_359_0();

    v64 = OUTLINED_FUNCTION_626();
    (v101)(v64);
    v65 = OUTLINED_FUNCTION_188_0();
    MEMORY[0](v65);
    sub_24DE22930();
    v66 = *(v113 + 11);
    OUTLINED_FUNCTION_345_0(*(v113 + 10));
    v67 = OUTLINED_FUNCTION_304_0();
    OUTLINED_FUNCTION_190_0(v67, v68);
    OUTLINED_FUNCTION_129_0();
    sub_24DE22A50();
    OUTLINED_FUNCTION_359_0();
    if (v56)
    {

      v101(v4, v119);
      v69 = OUTLINED_FUNCTION_202_0();
      v70 = MEMORY[0](v69);
      OUTLINED_FUNCTION_28_0(v70, v42);
      (*(v71 + 8))(v118);
    }

    else
    {

      OUTLINED_FUNCTION_214_0();
      v72();
      v73 = OUTLINED_FUNCTION_188_0();
      MEMORY[0](v73);
      OUTLINED_FUNCTION_398_0();
      v74 = *(v113 + 13);
      OUTLINED_FUNCTION_345_0(*(v113 + 12));
      v115 = OUTLINED_FUNCTION_304_0();
      OUTLINED_FUNCTION_41_0();
      sub_24DE22A50();
      OUTLINED_FUNCTION_359_0();

      v75 = OUTLINED_FUNCTION_732();
      (v101)(v75);
      v76 = OUTLINED_FUNCTION_188_0();
      v115(v76);
      OUTLINED_FUNCTION_398_0();
      v77 = *(v113 + 15);
      OUTLINED_FUNCTION_345_0(*(v113 + 14));
      v116 = sub_24DE22820();
      OUTLINED_FUNCTION_0_0();
      OUTLINED_FUNCTION_234_0();
      OUTLINED_FUNCTION_359_0();

      v78 = OUTLINED_FUNCTION_732();
      (v101)(v78);
      v79 = OUTLINED_FUNCTION_188_0();
      v116(v79);
      OUTLINED_FUNCTION_398_0();
      v80 = *(v113 + 17);
      OUTLINED_FUNCTION_345_0(*(v113 + 16));
      v117 = sub_24DE22820();
      OUTLINED_FUNCTION_124_0();
      OUTLINED_FUNCTION_234_0();

      v81 = OUTLINED_FUNCTION_551();
      (v101)(v81);
      v82 = OUTLINED_FUNCTION_188_0();
      v117(v82);
      OUTLINED_FUNCTION_398_0();
      v110 = type metadata accessor for Operations.PostWebObjectsGKGameStatsService_woaWaGetLeaderboards.Input.Headers(0);
      v83 = *(v110 + 52);
      v84 = sub_24DE228B0();
      OUTLINED_FUNCTION_104_0(v84);
      (*(v85 + 16))(v105, &v113[v83], v84);
      __swift_storeEnumTagSinglePayload(v105, 0, 1, v84);
      v86 = OUTLINED_FUNCTION_304_0();
      OUTLINED_FUNCTION_193_0();
      sub_24DE206DC(v87, v88);
      sub_24DE22A50();
      sub_24DE205DC(v105, &qword_27F1B4BE8);
      v101(v103, v119);
      v89 = OUTLINED_FUNCTION_188_0();
      v86(v89);
      sub_24DE22930();
      v90 = *&v113[*(v110 + 56)];
      v111 = OUTLINED_FUNCTION_304_0();
      sub_24DDE83BC();
      OUTLINED_FUNCTION_406();
      sub_24DE22A40();
      v91 = OUTLINED_FUNCTION_626();
      (v101)(v91);
      v92 = OUTLINED_FUNCTION_188_0();
      v111(v92);
      v93 = &v113[*(type metadata accessor for Operations.PostWebObjectsGKGameStatsService_woaWaGetLeaderboards.Input(0) + 20)];
      v94 = *(v93 + 1);
      if (v94 != 1)
      {
        v95 = *(v93 + 14);
        v114 = *(v93 + 13);
        v96 = *(v93 + 12);
        v97 = *(v93 + 9);
        v112 = *(v93 + 10);
        v98 = *(v93 + 7);
        v109 = *(v93 + 8);
        v108 = *(v93 + 6);
        v99 = *(v93 + 3);
        v107 = *(v93 + 4);
        v104 = *v93;
        v106 = *(v93 + 2);
        v125 = v93[40] & 1;
        v124 = v93[88] & 1;

        sub_24DE22930();
        v123[0] = v104;
        v123[1] = v94;
        v123[2] = v106;
        v123[3] = v99;
        v123[4] = v107;
        LOBYTE(v123[5]) = v125;
        v123[6] = v108;
        v123[7] = v98;
        v123[8] = v109;
        v123[9] = v97;
        v123[10] = v112;
        LOBYTE(v123[11]) = v124;
        v123[12] = v96;
        v123[13] = v114;
        v123[14] = v95;
        sub_24DE22820();
        OUTLINED_FUNCTION_186_0();
        sub_24DE1FDDC();
        OUTLINED_FUNCTION_56_0();
        OUTLINED_FUNCTION_236_0();
        sub_24DE22A80();
        memcpy(v121, v123, sizeof(v121));
        sub_24DE205DC(v121, &unk_27F1B4C30);
        v101(v102, v119);
        v96(&v122, 0);
      }
    }
  }

  OUTLINED_FUNCTION_225_0();
  OUTLINED_FUNCTION_644();
}

uint64_t sub_24DE1128C()
{
  OUTLINED_FUNCTION_441();
  v5 = OUTLINED_FUNCTION_195_0(v1, v2, v3, v4);
  v0[38] = v5;
  OUTLINED_FUNCTION_26_0(v5);
  v0[39] = v6;
  v8 = *(v7 + 64);
  v9 = OUTLINED_FUNCTION_1318();
  OUTLINED_FUNCTION_232_0(v9);
  v10 = sub_24DE22A90();
  v0[41] = v10;
  OUTLINED_FUNCTION_26_0(v10);
  v0[42] = v11;
  v13 = *(v12 + 64);
  v14 = OUTLINED_FUNCTION_240_0();
  v15 = OUTLINED_FUNCTION_320_0(v14);
  v0[45] = OUTLINED_FUNCTION_319_0(v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B4B50, &unk_24DE38700);
  OUTLINED_FUNCTION_443(v16);
  v18 = *(v17 + 64);
  v19 = OUTLINED_FUNCTION_1318();
  v20 = OUTLINED_FUNCTION_329_0(v19);
  v0[47] = v20;
  OUTLINED_FUNCTION_26_0(v20);
  v0[48] = v21;
  v23 = *(v22 + 64);
  v24 = OUTLINED_FUNCTION_240_0();
  v0[50] = OUTLINED_FUNCTION_328_0(v24);
  v25 = OUTLINED_FUNCTION_183();

  return MEMORY[0x2822009F8](v25, v26, v27);
}

uint64_t sub_24DE113EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_147_0();
  OUTLINED_FUNCTION_161_0();
  OUTLINED_FUNCTION_127_0();
  MEMORY[0x2530392C0]();
  v18 = OUTLINED_FUNCTION_13_0();
  v17(v18);
  if (v14 != 200)
  {
    OUTLINED_FUNCTION_34_0();
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B3598, &qword_24DE23698);
    OUTLINED_FUNCTION_69_0(v23);
    MEMORY[0x2530392C0]();
    v24 = OUTLINED_FUNCTION_48_0();
    v17(v24);
    OUTLINED_FUNCTION_137_0();

    OUTLINED_FUNCTION_68_0();
    v25 = type metadata accessor for Operations.PostWebObjectsGKGameStatsService_woaWaGetLeaderboards.Output(0);
    OUTLINED_FUNCTION_136_0(v25);
    OUTLINED_FUNCTION_82_0();

    OUTLINED_FUNCTION_27_0();
    goto LABEL_5;
  }

  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_257_0();
  OUTLINED_FUNCTION_134_0();
  v19 = OUTLINED_FUNCTION_51_0();
  v20(v19);
  v21 = OUTLINED_FUNCTION_20_0();
  (v16)(v21);
  OUTLINED_FUNCTION_138_0();
  OUTLINED_FUNCTION_133_0();
  if (v15)
  {
    v22 = OUTLINED_FUNCTION_112_0();
    (v16)(v22);
    sub_24DE205DC(200, &qword_27F1B4B50);
    OUTLINED_FUNCTION_126_0();

    OUTLINED_FUNCTION_49_0();
LABEL_5:
    OUTLINED_FUNCTION_115_0();

    return v27(v26, v27, v28, v29, v30, v31, v32, v33, a9, a10, a11, a12, a13, a14);
  }

  OUTLINED_FUNCTION_16_0();
  OUTLINED_FUNCTION_182_0();
  OUTLINED_FUNCTION_157_0();
  v16();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_259_0();
  __break(1u);

  OUTLINED_FUNCTION_324_0();
  v35 = *(MEMORY[0x277D37A38] + 4);
  v36 = swift_task_alloc();
  OUTLINED_FUNCTION_255_0(v36);
  sub_24DE1FD88();
  OUTLINED_FUNCTION_50_0();
  MEMORY[0xC8] = v37;
  OUTLINED_FUNCTION_111_0();
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_115_0();

  return MEMORY[0x282198000](v38, v39, v40, v41, v42, v43, v44, v45, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_24DE11664()
{
  OUTLINED_FUNCTION_441();
  OUTLINED_FUNCTION_552();
  v3 = v2;
  OUTLINED_FUNCTION_167();
  *v4 = v3;
  v6 = *(v5 + 424);
  v7 = *v1;
  OUTLINED_FUNCTION_162();
  *v8 = v7;
  *(v3 + 432) = v0;

  v9 = OUTLINED_FUNCTION_59_0();
  v10(v9);
  OUTLINED_FUNCTION_535();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_24DE1176C()
{
  OUTLINED_FUNCTION_330_0();
  OUTLINED_FUNCTION_1060();
  v1 = OUTLINED_FUNCTION_60_0();
  sub_24DDFDC5C(v1, v2);
  v3 = OUTLINED_FUNCTION_252_0();
  sub_24DDFDC5C(v3, v4);
  v5 = OUTLINED_FUNCTION_251_0();
  Operations.PostWebObjectsGKGameStatsService_woaWaGetLeaderboards.Output.Ok.init(body:)(v5);
  sub_24DE205DC(v0, &qword_27F1B4B50);
  v6 = OUTLINED_FUNCTION_33_0();
  v7 = type metadata accessor for Operations.PostWebObjectsGKGameStatsService_woaWaGetLeaderboards.Output(v6);
  OUTLINED_FUNCTION_135_0(v7);
  OUTLINED_FUNCTION_82_0();

  OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_302_0();

  return v9(v8, v9, v10, v11, v12, v13, v14, v15);
}

uint64_t sub_24DE11834()
{
  OUTLINED_FUNCTION_113_0();
  OUTLINED_FUNCTION_15_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_164(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_3_0(v1);

  return sub_24DE1128C();
}

uint64_t Client.postWebObjectsGKGameStatsService_woaWaGetLeaderboardCategories(_:)()
{
  OUTLINED_FUNCTION_441();
  v1[35] = v2;
  v1[36] = v0;
  memcpy(v1 + 2, v3, 0x108uLL);
  v4 = OUTLINED_FUNCTION_183();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_24DE11950(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_341_0();
  OUTLINED_FUNCTION_1060();
  v10 = v9[36];
  v11 = sub_24DDD4FB0();
  v12 = *v11;
  v9[37] = v11[1];
  v13 = swift_task_alloc();
  v9[38] = v13;
  v14 = OUTLINED_FUNCTION_258_0(v13);
  v9[39] = v14;
  *(v14 + 16) = v10;
  v15 = *(MEMORY[0x277D37998] + 4);

  v16 = swift_task_alloc();
  v17 = OUTLINED_FUNCTION_232_0(v16);
  type metadata accessor for Operations.PostWebObjectsGKGameStatsService_woaWaGetLeaderboardCategories.Output(v17);
  OUTLINED_FUNCTION_167_0();
  *v16 = v18;
  v16[1] = sub_24DE11A60;
  v19 = v9[36];
  OUTLINED_FUNCTION_2_0(v9[35]);
  OUTLINED_FUNCTION_231_0();

  return MEMORY[0x282197F10](v20, v21, v22, v23, v24, v25, v26, v27, a9);
}

uint64_t sub_24DE11A60()
{
  OUTLINED_FUNCTION_113_0();
  OUTLINED_FUNCTION_552();
  v3 = v2;
  OUTLINED_FUNCTION_167();
  *v4 = v3;
  v6 = *(v5 + 320);
  v7 = *v1;
  OUTLINED_FUNCTION_162();
  *v8 = v7;
  v3[41] = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_535();

    return MEMORY[0x2822009F8](v9, v10, v11);
  }

  else
  {
    v13 = v3[38];
    v12 = v3[39];
    v14 = v3[37];

    OUTLINED_FUNCTION_27_0();

    return v15();
  }
}

uint64_t sub_24DE11B9C()
{
  OUTLINED_FUNCTION_441();
  v1 = v0[38];
  v2 = v0[39];
  v3 = v0[37];

  OUTLINED_FUNCTION_1327();
  v5 = v0[41];

  return v4();
}

void sub_24DE11C0C()
{
  OUTLINED_FUNCTION_645();
  v110 = v2;
  v4 = v3;
  v5 = sub_24DE22800();
  v6 = OUTLINED_FUNCTION_443(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_122_0();
  v9 = sub_24DE22840();
  v10 = OUTLINED_FUNCTION_443(v9);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_7_0();
  v106 = v13;
  OUTLINED_FUNCTION_122_0();
  v109 = sub_24DE22A90();
  v14 = OUTLINED_FUNCTION_27(v109);
  v111 = v15;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_100_0();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_100_0();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_101_0();
  v89 = v20;
  OUTLINED_FUNCTION_100_0();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_100_0();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_100_0();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_100_0();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_101_0();
  v98 = v25;
  OUTLINED_FUNCTION_100_0();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_100_0();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_101_0();
  v103 = v28;
  OUTLINED_FUNCTION_100_0();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_100_0();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_101_0();
  v107 = v31;
  OUTLINED_FUNCTION_100_0();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_370_0();
  v104 = *(v4 + 16);
  v105 = *(v4 + 24);
  v101 = *(v4 + 32);
  v102 = *(v4 + 40);
  v99 = *(v4 + 48);
  v100 = *(v4 + 56);
  v96 = *(v4 + 64);
  v97 = *(v4 + 72);
  v94 = *(v4 + 80);
  v95 = *(v4 + 88);
  v92 = *(v4 + 96);
  v93 = *(v4 + 104);
  v90 = *(v4 + 112);
  v91 = *(v4 + 120);
  v87 = *(v4 + 128);
  v88 = *(v4 + 136);
  v84 = *(v4 + 152);
  v85 = *(v4 + 144);
  v86 = *(v4 + 160);
  v82 = *(v4 + 176);
  v83 = *(v4 + 168);
  v81 = *(v4 + 184);
  v116 = *(v4 + 192);
  v79 = *(v4 + 208);
  v80 = *(v4 + 200);
  v33 = *(v4 + 216);
  v34 = *(v4 + 224);
  v35 = *(v4 + 232);
  v36 = *(v4 + 240);
  v37 = *(v4 + 248);
  v38 = *(v4 + 256);
  OUTLINED_FUNCTION_347_0();
  OUTLINED_FUNCTION_187_0();
  sub_24DE22A20();
  if (v0)
  {
    v39 = *(v111 + 8);
    v40 = OUTLINED_FUNCTION_285_0();
    v41(v40);
  }

  else
  {
    v78 = v35;
    v42 = *(v111 + 8);
    v43 = v42(v1, v109);
    v44 = MEMORY[0x253039280](v43);
    MEMORY[0x253039240](v44);
    sub_24DE22810();
    sub_24DE22850();
    sub_24DE229E0();
    sub_24DE22930();

    v45 = sub_24DE22820();
    OUTLINED_FUNCTION_139_0(v45, v46);
    OUTLINED_FUNCTION_12_0();
    OUTLINED_FUNCTION_155_0();
    sub_24DE22A50();

    v42(v107, v109);
    v47 = OUTLINED_FUNCTION_143_0();
    v106(v47);
    sub_24DE22930();

    v108 = OUTLINED_FUNCTION_293_0();
    OUTLINED_FUNCTION_11_0();
    OUTLINED_FUNCTION_154_0();
    sub_24DE22A50();
    OUTLINED_FUNCTION_98_0();

    v48 = OUTLINED_FUNCTION_181_0();
    (v42)(v48);
    v49 = OUTLINED_FUNCTION_143_0();
    v108(v49);
    sub_24DE22930();

    v50 = OUTLINED_FUNCTION_293_0();
    OUTLINED_FUNCTION_168_0(v50, v51);
    OUTLINED_FUNCTION_57_0();
    OUTLINED_FUNCTION_439();
    sub_24DE22A50();

    v42(v103, v109);
    v52 = OUTLINED_FUNCTION_192_0();
    (v42)(v52);
    sub_24DE22930();
    OUTLINED_FUNCTION_397_0(v99);
    v53 = OUTLINED_FUNCTION_293_0();
    OUTLINED_FUNCTION_168_0(v53, v54);
    OUTLINED_FUNCTION_18_0();
    OUTLINED_FUNCTION_439();
    sub_24DE22A50();

    v42(v110, v109);
    v55 = OUTLINED_FUNCTION_143_0();
    (v42)(v55);
    sub_24DE22930();
    v112[0] = v96;
    v112[1] = v97;

    v56 = OUTLINED_FUNCTION_293_0();
    OUTLINED_FUNCTION_164_0(v56, v57);
    OUTLINED_FUNCTION_1_0();
    sub_24DE22A50();

    v42(v98, v109);
    v58 = OUTLINED_FUNCTION_192_0();
    v109(v58);
    OUTLINED_FUNCTION_347_0();
    OUTLINED_FUNCTION_397_0(v94);
    v59 = OUTLINED_FUNCTION_293_0();
    OUTLINED_FUNCTION_164_0(v59, v60);
    OUTLINED_FUNCTION_129_0();
    OUTLINED_FUNCTION_405();
    sub_24DE22A50();

    v61 = OUTLINED_FUNCTION_285_0();
    (v42)(v61);
    v62 = OUTLINED_FUNCTION_143_0();
    v109(v62);
    OUTLINED_FUNCTION_347_0();
    OUTLINED_FUNCTION_397_0(v92);
    v63 = OUTLINED_FUNCTION_293_0();
    OUTLINED_FUNCTION_164_0(v63, v64);
    OUTLINED_FUNCTION_129_0();
    OUTLINED_FUNCTION_405();
    sub_24DE22A50();

    v65 = OUTLINED_FUNCTION_285_0();
    (v42)(v65);
    v66 = OUTLINED_FUNCTION_143_0();
    v109(v66);
    OUTLINED_FUNCTION_347_0();
    OUTLINED_FUNCTION_397_0(v90);
    v67 = OUTLINED_FUNCTION_293_0();
    OUTLINED_FUNCTION_164_0(v67, v68);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_405();
    sub_24DE22A50();

    v69 = OUTLINED_FUNCTION_285_0();
    (v42)(v69);
    v70 = OUTLINED_FUNCTION_143_0();
    v109(v70);
    OUTLINED_FUNCTION_347_0();
    OUTLINED_FUNCTION_306_0(v87);
    v71 = OUTLINED_FUNCTION_293_0();
    OUTLINED_FUNCTION_164_0(v71, v72);
    OUTLINED_FUNCTION_58_0();
    OUTLINED_FUNCTION_405();
    sub_24DE22A50();

    v42(v89, v109);
    v73 = OUTLINED_FUNCTION_192_0();
    v109(v73);
    sub_24DE22930();
    OUTLINED_FUNCTION_293_0();
    OUTLINED_FUNCTION_186_0();
    sub_24DD740CC();
    sub_24DE22A40();
    v74 = OUTLINED_FUNCTION_539();
    (v42)(v74);
    v75 = OUTLINED_FUNCTION_192_0();
    MEMORY[0](v75);
    if (v86 != 1)
    {
      v115 = v36 & 1;

      sub_24DE22930();
      v114[0] = v84;
      v114[1] = v86;
      v114[2] = v83;
      v114[3] = v82;
      v114[4] = v81;
      LOBYTE(v114[5]) = v116 & 1;
      v114[6] = v80;
      v114[7] = v79;
      v114[8] = v33;
      v114[9] = v34;
      v114[10] = v78;
      LOBYTE(v114[11]) = v36 & 1;
      v114[12] = v37;
      v114[13] = v38;
      sub_24DE22820();
      OUTLINED_FUNCTION_186_0();
      sub_24DE1FD34();
      OUTLINED_FUNCTION_56_0();
      OUTLINED_FUNCTION_236_0();
      sub_24DE22A80();
      memcpy(v112, v114, sizeof(v112));
      sub_24DE205DC(v112, &unk_27F1B4C18);
      v76 = OUTLINED_FUNCTION_382_0();
      v77(v76);
      v38(&v113, 0);
    }
  }

  OUTLINED_FUNCTION_225_0();
  OUTLINED_FUNCTION_644();
}

uint64_t sub_24DE12848()
{
  OUTLINED_FUNCTION_441();
  v0[44] = v1;
  v0[45] = v2;
  v0[42] = v3;
  v0[43] = v4;
  v5 = sub_24DE22800();
  v0[46] = v5;
  OUTLINED_FUNCTION_26_0(v5);
  v0[47] = v6;
  v8 = *(v7 + 64);
  v0[48] = OUTLINED_FUNCTION_1318();
  v9 = sub_24DE22A90();
  v0[49] = v9;
  OUTLINED_FUNCTION_26_0(v9);
  v0[50] = v10;
  v12 = *(v11 + 64);
  v0[51] = OUTLINED_FUNCTION_240_0();
  v0[52] = swift_task_alloc();
  v0[53] = swift_task_alloc();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B4B50, &unk_24DE38700);
  OUTLINED_FUNCTION_443(v13);
  v15 = *(v14 + 64);
  v0[54] = OUTLINED_FUNCTION_1318();
  v16 = sub_24DE22880();
  v0[55] = v16;
  OUTLINED_FUNCTION_26_0(v16);
  v0[56] = v17;
  v19 = *(v18 + 64);
  v0[57] = OUTLINED_FUNCTION_240_0();
  v0[58] = swift_task_alloc();
  v20 = OUTLINED_FUNCTION_183();

  return MEMORY[0x2822009F8](v20, v21, v22);
}

uint64_t sub_24DE129D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_147_0();
  OUTLINED_FUNCTION_161_0();
  OUTLINED_FUNCTION_396_0();
  MEMORY[0x2530392C0]();
  v19 = OUTLINED_FUNCTION_13_0();
  v18(v19);
  if (v14 != 200)
  {
    OUTLINED_FUNCTION_317_0();
    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B3598, &qword_24DE23698);
    OUTLINED_FUNCTION_69_0(v26);
    MEMORY[0x2530392C0]();
    v27 = OUTLINED_FUNCTION_48_0();
    v18(v27);
    OUTLINED_FUNCTION_137_0();

    OUTLINED_FUNCTION_68_0();
    Leaderboard = type metadata accessor for Operations.PostWebObjectsGKGameStatsService_woaWaGetLeaderboardCategories.Output(0);
    OUTLINED_FUNCTION_136_0(Leaderboard);
    OUTLINED_FUNCTION_205_0();

    OUTLINED_FUNCTION_27_0();
    goto LABEL_5;
  }

  OUTLINED_FUNCTION_246_0();
  OUTLINED_FUNCTION_257_0();
  OUTLINED_FUNCTION_134_0();
  v20 = OUTLINED_FUNCTION_51_0();
  v21(v20);
  OUTLINED_FUNCTION_61_0();
  v16[59] = v17;
  v16[60] = v22;
  v23 = OUTLINED_FUNCTION_160_0();
  (v17)(v23);
  OUTLINED_FUNCTION_138_0();
  OUTLINED_FUNCTION_133_0();
  if (v15)
  {
    v24 = v16[54];
    v25 = OUTLINED_FUNCTION_380_0();
    (v17)(v25);
    sub_24DE205DC(v24, &qword_27F1B4B50);
    OUTLINED_FUNCTION_395_0();

    OUTLINED_FUNCTION_49_0();
LABEL_5:
    OUTLINED_FUNCTION_115_0();

    return v30(v29, v30, v31, v32, v33, v34, v35, v36, a9, a10, a11, a12, a13, a14);
  }

  OUTLINED_FUNCTION_16_0();
  OUTLINED_FUNCTION_380_0();
  OUTLINED_FUNCTION_157_0();
  v17();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_259_0();
  __break(1u);

  v38 = v16[51];
  v39 = v16[45];
  sub_24DE22930();
  v40 = *(MEMORY[0x277D37A38] + 4);
  v41 = swift_task_alloc();
  v16[61] = v41;
  sub_24DE1FCE0();
  OUTLINED_FUNCTION_50_0();
  *v41 = v42;
  v41[1] = sub_24DE12C70;
  v43 = v16[51];
  v44 = v16[44];
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_115_0();

  return MEMORY[0x282198000](v45, v46, v47, v48, v49, v50, v51, v52, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_24DE12C70()
{
  OUTLINED_FUNCTION_441();
  OUTLINED_FUNCTION_552();
  v3 = v2;
  OUTLINED_FUNCTION_167();
  *v4 = v3;
  v6 = *(v5 + 488);
  v7 = *v1;
  OUTLINED_FUNCTION_162();
  *v8 = v7;
  *(v3 + 496) = v0;

  v9 = OUTLINED_FUNCTION_226_0();
  v10(v9);
  OUTLINED_FUNCTION_535();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_24DE12D78()
{
  OUTLINED_FUNCTION_330_0();
  OUTLINED_FUNCTION_1060();
  v3 = OUTLINED_FUNCTION_381_0();
  sub_24DDFDC68(v3, v4);
  sub_24DDFDC68((v2 + 176), (v2 + 256));
  Operations.PostWebObjectsGKGameStatsService_woaWaGetLeaderboardCategories.Output.Ok.init(body:)();
  sub_24DE205DC(v1, &qword_27F1B4B50);
  memcpy(v0, (v2 + 96), 0x50uLL);
  Leaderboard = type metadata accessor for Operations.PostWebObjectsGKGameStatsService_woaWaGetLeaderboardCategories.Output(0);
  OUTLINED_FUNCTION_135_0(Leaderboard);
  OUTLINED_FUNCTION_205_0();

  OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_302_0();

  return v7(v6, v7, v8, v9, v10, v11, v12, v13);
}

uint64_t sub_24DE12E58()
{
  OUTLINED_FUNCTION_113_0();
  OUTLINED_FUNCTION_15_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_164(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_3_0(v1);

  return sub_24DE12848();
}

uint64_t sub_24DE12EE4()
{
  OUTLINED_FUNCTION_227_0();
  OUTLINED_FUNCTION_401_0(v3);
  OUTLINED_FUNCTION_401_0(__src);
  sub_24DDFDC68(__src, v0);
  return sub_24DDE4414(v3, &v2);
}

uint64_t Client.postWebObjectsGKGameStatsService_woaWaGetGameAchievements(_:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_23_0();
}

uint64_t sub_24DE12F54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_344_0();
  OUTLINED_FUNCTION_496();
  v10 = *(v9 + 32);
  v11 = sub_24DDD626C();
  v12 = OUTLINED_FUNCTION_332_0(v11);
  *(v9 + 48) = v12;
  v13 = OUTLINED_FUNCTION_258_0(v12);
  OUTLINED_FUNCTION_299_0(v13);
  v14 = *(MEMORY[0x277D37998] + 4);

  v15 = swift_task_alloc();
  v16 = OUTLINED_FUNCTION_297_0(v15);
  type metadata accessor for Operations.PostWebObjectsGKGameStatsService_woaWaGetGameAchievements.Input(v16);
  type metadata accessor for Operations.PostWebObjectsGKGameStatsService_woaWaGetGameAchievements.Output(0);
  OUTLINED_FUNCTION_167_0();
  *v14 = v17;
  OUTLINED_FUNCTION_224_0(v18);
  OUTLINED_FUNCTION_55_0();
  OUTLINED_FUNCTION_230_0();

  return MEMORY[0x282197F10](v19, v20, v21, v22, v23, v24, v25, v26, a9);
}

uint64_t sub_24DE13054()
{
  OUTLINED_FUNCTION_113_0();
  OUTLINED_FUNCTION_552();
  v3 = v2;
  OUTLINED_FUNCTION_167();
  *v4 = v3;
  v6 = *(v5 + 64);
  v7 = *v1;
  OUTLINED_FUNCTION_162();
  *v8 = v7;
  v3[9] = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_535();

    return MEMORY[0x2822009F8](v9, v10, v11);
  }

  else
  {
    v13 = v3[6];
    v12 = v3[7];
    v14 = v3[5];

    OUTLINED_FUNCTION_27_0();

    return v15();
  }
}

uint64_t sub_24DE13190()
{
  OUTLINED_FUNCTION_441();
  v1 = v0[6];
  v2 = v0[7];
  v3 = v0[5];

  OUTLINED_FUNCTION_1327();
  v5 = v0[9];

  return v4();
}

void sub_24DE13200(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void (*a10)(uint64_t), uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_645();
  a19 = v23;
  a20 = v24;
  v171 = v25;
  v170 = v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B4BE8, &qword_24DE38718);
  OUTLINED_FUNCTION_443(v27);
  v29 = *(v28 + 64);
  OUTLINED_FUNCTION_373();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_384_0();
  v166 = v31;
  OUTLINED_FUNCTION_122_0();
  v32 = sub_24DE22800();
  v33 = OUTLINED_FUNCTION_443(v32);
  v35 = *(v34 + 64);
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_365_0(v36);
  OUTLINED_FUNCTION_122_0();
  v37 = sub_24DE22840();
  v38 = OUTLINED_FUNCTION_443(v37);
  v40 = *(v39 + 64);
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_122_0();
  a10 = sub_24DE22A90();
  v41 = OUTLINED_FUNCTION_27(a10);
  v43 = *(v42 + 64);
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_25_0();
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_25_0();
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_25_0();
  v47 = MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_17_0(v47, v48, v49, v50, v51, v52, v53, v54, v163);
  MEMORY[0x28223BE20](v55);
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_25_0();
  MEMORY[0x28223BE20](v56);
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_25_0();
  MEMORY[0x28223BE20](v57);
  OUTLINED_FUNCTION_149_0();
  MEMORY[0x28223BE20](v58);
  OUTLINED_FUNCTION_46_0();
  MEMORY[0x28223BE20](v59);
  OUTLINED_FUNCTION_222_0();
  MEMORY[0x28223BE20](v60);
  OUTLINED_FUNCTION_383_0();
  MEMORY[0x28223BE20](v61);
  OUTLINED_FUNCTION_229_0();
  MEMORY[0x28223BE20](v62);
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_25_0();
  MEMORY[0x28223BE20](v63);
  OUTLINED_FUNCTION_369_0();
  sub_24DE22930();
  OUTLINED_FUNCTION_439();
  sub_24DE22A20();
  if (v20)
  {
    OUTLINED_FUNCTION_356_0();
    v65 = *(v64 + 8);
    v66 = OUTLINED_FUNCTION_318_0();
    v82(v66, v81);
  }

  else
  {
    OUTLINED_FUNCTION_356_0();
    v68 = a10;
    v164 = *(v67 + 8);
    v164(v21, a10);
    OUTLINED_FUNCTION_367_0(&v178[9]);
    MEMORY[0x253039280]();
    OUTLINED_FUNCTION_184_0(&v178[10]);
    MEMORY[0x253039240]();
    OUTLINED_FUNCTION_185_0();
    sub_24DE22810();
    sub_24DE22850();
    sub_24DE229E0();
    OUTLINED_FUNCTION_91_0(&a10);
    OUTLINED_FUNCTION_180_0();
    v70 = v69[1];
    OUTLINED_FUNCTION_87_0(*v69);
    *(v71 - 256) = v70;

    v72 = sub_24DE22820();
    OUTLINED_FUNCTION_313_0(v72, v73);
    OUTLINED_FUNCTION_12_0();
    OUTLINED_FUNCTION_155_0();
    sub_24DE22A50();

    OUTLINED_FUNCTION_153_0(&a10);
    OUTLINED_FUNCTION_144_0();
    v74();
    v75 = OUTLINED_FUNCTION_194_0();
    v22(v75);
    OUTLINED_FUNCTION_184_0(v178);
    sub_24DE22930();
    OUTLINED_FUNCTION_180_0();
    v77 = *(v76 + 24);
    OUTLINED_FUNCTION_87_0(*(v76 + 16));
    *(v78 - 256) = v77;

    v79 = sub_24DE22820();
    OUTLINED_FUNCTION_168_0(v79, v80);
    OUTLINED_FUNCTION_11_0();
    OUTLINED_FUNCTION_154_0();
    sub_24DE22A50();

    OUTLINED_FUNCTION_144_0();
    v83();
    v84 = OUTLINED_FUNCTION_194_0();
    v68(v84);
    OUTLINED_FUNCTION_312_0(&v177);
    sub_24DE22930();
    OUTLINED_FUNCTION_180_0();
    v86 = *(v85 + 40);
    OUTLINED_FUNCTION_87_0(*(v85 + 32));
    *(v87 - 256) = v86;

    v88 = sub_24DE22820();
    OUTLINED_FUNCTION_164_0(v88, v89);
    OUTLINED_FUNCTION_57_0();
    sub_24DE22A50();

    OUTLINED_FUNCTION_539();
    OUTLINED_FUNCTION_144_0();
    v90();
    v91 = OUTLINED_FUNCTION_194_0();
    v170(v91);
    OUTLINED_FUNCTION_184_0(&v176);
    OUTLINED_FUNCTION_249_0();
    OUTLINED_FUNCTION_180_0();
    v93 = *(v92 + 56);
    OUTLINED_FUNCTION_87_0(*(v92 + 48));
    *(v94 - 256) = v93;

    v95 = OUTLINED_FUNCTION_189_0();
    OUTLINED_FUNCTION_106_0(v95, v96);
    OUTLINED_FUNCTION_18_0();
    OUTLINED_FUNCTION_96_0();
    OUTLINED_FUNCTION_191_0();
    sub_24DE22A50();

    OUTLINED_FUNCTION_144_0();
    v97();
    v98 = OUTLINED_FUNCTION_194_0();
    MEMORY[0x7070612D6B672D78](v98);
    OUTLINED_FUNCTION_91_0(&v175);
    OUTLINED_FUNCTION_180_0();
    v100 = *(v99 + 72);
    OUTLINED_FUNCTION_87_0(*(v99 + 64));
    OUTLINED_FUNCTION_338_0(v101);
    v102 = OUTLINED_FUNCTION_189_0();
    OUTLINED_FUNCTION_106_0(v102, v103);
    OUTLINED_FUNCTION_1_0();
    sub_24DE22A50();

    v104 = OUTLINED_FUNCTION_77_0();
    v105(v104);
    v106 = OUTLINED_FUNCTION_194_0();
    MEMORY[0x7070612D6B672D78](v106);
    OUTLINED_FUNCTION_91_0(&v174);
    OUTLINED_FUNCTION_180_0();
    v108 = *(v107 + 88);
    OUTLINED_FUNCTION_87_0(*(v107 + 80));
    OUTLINED_FUNCTION_338_0(v109);
    v110 = OUTLINED_FUNCTION_189_0();
    OUTLINED_FUNCTION_106_0(v110, v111);
    OUTLINED_FUNCTION_41_0();
    sub_24DE22A50();

    v112 = OUTLINED_FUNCTION_77_0();
    v113(v112);
    v114 = OUTLINED_FUNCTION_194_0();
    MEMORY[0x7070612D6B672D78](v114);
    OUTLINED_FUNCTION_91_0(&v178[8]);
    OUTLINED_FUNCTION_180_0();
    v116 = *(v115 + 104);
    OUTLINED_FUNCTION_87_0(*(v115 + 96));
    OUTLINED_FUNCTION_338_0(v117);
    v118 = OUTLINED_FUNCTION_189_0();
    OUTLINED_FUNCTION_106_0(v118, v119);
    OUTLINED_FUNCTION_41_0();
    sub_24DE22A50();

    v120 = OUTLINED_FUNCTION_77_0();
    v121(v120);
    v122 = OUTLINED_FUNCTION_194_0();
    MEMORY[0x7070612D6B672D78](v122);
    OUTLINED_FUNCTION_91_0(&v178[7]);
    OUTLINED_FUNCTION_180_0();
    v124 = *(v123 + 120);
    OUTLINED_FUNCTION_87_0(*(v123 + 112));
    OUTLINED_FUNCTION_338_0(v125);
    v126 = OUTLINED_FUNCTION_189_0();
    OUTLINED_FUNCTION_106_0(v126, v127);
    OUTLINED_FUNCTION_0_0();
    sub_24DE22A50();

    v128 = OUTLINED_FUNCTION_77_0();
    v129(v128);
    v130 = OUTLINED_FUNCTION_194_0();
    MEMORY[0x7070612D6B672D78](v130);
    OUTLINED_FUNCTION_91_0(&v178[6]);
    OUTLINED_FUNCTION_180_0();
    v132 = *(v131 + 136);
    OUTLINED_FUNCTION_87_0(*(v131 + 128));
    OUTLINED_FUNCTION_338_0(v133);
    v134 = OUTLINED_FUNCTION_189_0();
    OUTLINED_FUNCTION_106_0(v134, v135);
    OUTLINED_FUNCTION_58_0();
    OUTLINED_FUNCTION_234_0();

    OUTLINED_FUNCTION_144_0();
    v136();
    v137 = OUTLINED_FUNCTION_194_0();
    MEMORY[0x7070612D6B672D78](v137);
    OUTLINED_FUNCTION_312_0(&v178[4]);
    OUTLINED_FUNCTION_249_0();
    Game = type metadata accessor for Operations.PostWebObjectsGKGameStatsService_woaWaGetGameAchievements.Input.Headers(0);
    v139 = *(Game + 52);
    v140 = sub_24DE228B0();
    OUTLINED_FUNCTION_104_0(v140);
    (*(v141 + 16))(v166, v171 + v139, v140);
    __swift_storeEnumTagSinglePayload(v166, 0, 1, v140);
    v142 = OUTLINED_FUNCTION_189_0();
    OUTLINED_FUNCTION_193_0();
    sub_24DE206DC(v143, v144);
    OUTLINED_FUNCTION_124_0();
    sub_24DE22A50();
    sub_24DE205DC(v166, &qword_27F1B4BE8);
    v145 = a10;
    v164(v165, a10);
    v146 = OUTLINED_FUNCTION_194_0();
    v142(v146);
    OUTLINED_FUNCTION_312_0(&v178[2]);
    OUTLINED_FUNCTION_249_0();
    v147 = *(v171 + *(Game + 56));
    OUTLINED_FUNCTION_189_0();
    OUTLINED_FUNCTION_186_0();
    sub_24DDE8550();
    sub_24DE22A40();
    v164("x-gk-host-bundle-id", v145);
    v148 = OUTLINED_FUNCTION_194_0();
    v140(v148);
    v149 = (v171 + *(type metadata accessor for Operations.PostWebObjectsGKGameStatsService_woaWaGetGameAchievements.Input(0) + 20));
    v150 = v149[1];
    if (v150 != 2)
    {
      v172 = *(v149 + 88);
      v169 = v149[10];
      v168 = v149[9];
      v151 = v149[7];
      v167 = v149[8];
      v153 = v149[5];
      v152 = v149[6];
      v155 = v149[3];
      v154 = v149[4];
      v156 = v149[2];
      v157 = *v149;
      v158 = OUTLINED_FUNCTION_361_0();
      sub_24DDE8634(v158, v159);
      OUTLINED_FUNCTION_249_0();
      v178[0] = v157;
      v178[1] = v150;
      v178[2] = v156;
      v178[3] = v155;
      v178[4] = v154;
      v178[5] = v153;
      v178[6] = v152;
      v178[7] = v151;
      v178[8] = v167;
      v178[9] = v168;
      v178[10] = v169;
      LOBYTE(v178[11]) = v172;
      sub_24DE22820();
      OUTLINED_FUNCTION_118_0();
      sub_24DE1FC8C();
      OUTLINED_FUNCTION_10_0();
      sub_24DE22A80();
      memcpy(v173, v178, 0x59uLL);
      sub_24DE205DC(v173, &unk_27F1B4C00);
      v160 = OUTLINED_FUNCTION_140_0(&v178[3]);
      v161(v160);
      v162 = OUTLINED_FUNCTION_188_0();
      v150(v162);
    }
  }

  OUTLINED_FUNCTION_644();
}

uint64_t sub_24DE14088()
{
  OUTLINED_FUNCTION_441();
  v5 = OUTLINED_FUNCTION_195_0(v1, v2, v3, v4);
  v0[38] = v5;
  OUTLINED_FUNCTION_26_0(v5);
  v0[39] = v6;
  v8 = *(v7 + 64);
  v9 = OUTLINED_FUNCTION_1318();
  OUTLINED_FUNCTION_232_0(v9);
  v10 = sub_24DE22A90();
  v0[41] = v10;
  OUTLINED_FUNCTION_26_0(v10);
  v0[42] = v11;
  v13 = *(v12 + 64);
  v14 = OUTLINED_FUNCTION_240_0();
  v15 = OUTLINED_FUNCTION_320_0(v14);
  v0[45] = OUTLINED_FUNCTION_319_0(v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B4B50, &unk_24DE38700);
  OUTLINED_FUNCTION_443(v16);
  v18 = *(v17 + 64);
  v19 = OUTLINED_FUNCTION_1318();
  v20 = OUTLINED_FUNCTION_329_0(v19);
  v0[47] = v20;
  OUTLINED_FUNCTION_26_0(v20);
  v0[48] = v21;
  v23 = *(v22 + 64);
  v24 = OUTLINED_FUNCTION_240_0();
  v0[50] = OUTLINED_FUNCTION_328_0(v24);
  v25 = OUTLINED_FUNCTION_183();

  return MEMORY[0x2822009F8](v25, v26, v27);
}

uint64_t sub_24DE141E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_147_0();
  OUTLINED_FUNCTION_161_0();
  OUTLINED_FUNCTION_127_0();
  MEMORY[0x2530392C0]();
  v18 = OUTLINED_FUNCTION_13_0();
  v17(v18);
  if (v14 != 200)
  {
    OUTLINED_FUNCTION_34_0();
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B3598, &qword_24DE23698);
    OUTLINED_FUNCTION_69_0(v23);
    MEMORY[0x2530392C0]();
    v24 = OUTLINED_FUNCTION_48_0();
    v17(v24);
    OUTLINED_FUNCTION_137_0();

    OUTLINED_FUNCTION_68_0();
    Game = type metadata accessor for Operations.PostWebObjectsGKGameStatsService_woaWaGetGameAchievements.Output(0);
    OUTLINED_FUNCTION_136_0(Game);
    OUTLINED_FUNCTION_82_0();

    OUTLINED_FUNCTION_27_0();
    goto LABEL_5;
  }

  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_257_0();
  OUTLINED_FUNCTION_134_0();
  v19 = OUTLINED_FUNCTION_51_0();
  v20(v19);
  v21 = OUTLINED_FUNCTION_20_0();
  (v16)(v21);
  OUTLINED_FUNCTION_138_0();
  OUTLINED_FUNCTION_133_0();
  if (v15)
  {
    v22 = OUTLINED_FUNCTION_112_0();
    (v16)(v22);
    sub_24DE205DC(200, &qword_27F1B4B50);
    OUTLINED_FUNCTION_126_0();

    OUTLINED_FUNCTION_49_0();
LABEL_5:
    OUTLINED_FUNCTION_115_0();

    return v27(v26, v27, v28, v29, v30, v31, v32, v33, a9, a10, a11, a12, a13, a14);
  }

  OUTLINED_FUNCTION_16_0();
  OUTLINED_FUNCTION_182_0();
  OUTLINED_FUNCTION_157_0();
  v16();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_259_0();
  __break(1u);

  OUTLINED_FUNCTION_324_0();
  v35 = *(MEMORY[0x277D37A38] + 4);
  v36 = swift_task_alloc();
  OUTLINED_FUNCTION_255_0(v36);
  sub_24DE1FC38();
  OUTLINED_FUNCTION_50_0();
  MEMORY[0xC8] = v37;
  OUTLINED_FUNCTION_111_0();
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_115_0();

  return MEMORY[0x282198000](v38, v39, v40, v41, v42, v43, v44, v45, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_24DE14460()
{
  OUTLINED_FUNCTION_441();
  OUTLINED_FUNCTION_552();
  v3 = v2;
  OUTLINED_FUNCTION_167();
  *v4 = v3;
  v6 = *(v5 + 424);
  v7 = *v1;
  OUTLINED_FUNCTION_162();
  *v8 = v7;
  *(v3 + 432) = v0;

  v9 = OUTLINED_FUNCTION_59_0();
  v10(v9);
  OUTLINED_FUNCTION_535();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_24DE14568()
{
  OUTLINED_FUNCTION_330_0();
  OUTLINED_FUNCTION_1060();
  v1 = OUTLINED_FUNCTION_60_0();
  sub_24DDFDC5C(v1, v2);
  v3 = OUTLINED_FUNCTION_252_0();
  sub_24DDFDC5C(v3, v4);
  v5 = OUTLINED_FUNCTION_251_0();
  Operations.PostWebObjectsGKGameStatsService_woaWaGetGameAchievements.Output.Ok.init(body:)(v5);
  sub_24DE205DC(v0, &qword_27F1B4B50);
  v6 = OUTLINED_FUNCTION_33_0();
  Game = type metadata accessor for Operations.PostWebObjectsGKGameStatsService_woaWaGetGameAchievements.Output(v6);
  OUTLINED_FUNCTION_135_0(Game);
  OUTLINED_FUNCTION_82_0();

  OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_302_0();

  return v9(v8, v9, v10, v11, v12, v13, v14, v15);
}

uint64_t sub_24DE14630(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_245_0();
  OUTLINED_FUNCTION_496();
  sub_24DE205DC(v10[46], &qword_27F1B4B50);
  v11 = v10[54];
  v13 = v10[49];
  v12 = v10[50];
  v15 = v10[45];
  v14 = v10[46];
  v17 = v10[43];
  v16 = v10[44];
  v18 = v10[40];

  OUTLINED_FUNCTION_1327();
  OUTLINED_FUNCTION_230_0();

  return v20(v19, v20, v21, v22, v23, v24, v25, v26, a9, a10);
}

uint64_t sub_24DE146E8()
{
  OUTLINED_FUNCTION_113_0();
  OUTLINED_FUNCTION_15_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_164(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_3_0(v1);

  return sub_24DE14088();
}

uint64_t Client.postWebObjectsGKChallengeService_woaWaChallengeCreate(_:)()
{
  OUTLINED_FUNCTION_441();
  v1[45] = v2;
  v1[46] = v0;
  memcpy(v1 + 2, v3, 0x156uLL);
  v4 = OUTLINED_FUNCTION_183();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_24DE14804(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_341_0();
  OUTLINED_FUNCTION_1060();
  v10 = v9[46];
  v11 = sub_24DDD7C34();
  v12 = *v11;
  v9[47] = v11[1];
  v13 = swift_task_alloc();
  v9[48] = v13;
  v14 = OUTLINED_FUNCTION_258_0(v13);
  v9[49] = v14;
  *(v14 + 16) = v10;
  v15 = *(MEMORY[0x277D37998] + 4);

  v16 = swift_task_alloc();
  v9[50] = v16;
  type metadata accessor for Operations.PostWebObjectsGKChallengeService_woaWaChallengeCreate.Output(0);
  OUTLINED_FUNCTION_167_0();
  *v16 = v17;
  v16[1] = sub_24DE14918;
  v18 = v9[46];
  OUTLINED_FUNCTION_2_0(v9[45]);
  OUTLINED_FUNCTION_231_0();

  return MEMORY[0x282197F10](v19, v20, v21, v22, v23, v24, v25, v26, a9);
}

uint64_t sub_24DE14918()
{
  OUTLINED_FUNCTION_113_0();
  OUTLINED_FUNCTION_552();
  v3 = v2;
  OUTLINED_FUNCTION_167();
  *v4 = v3;
  v6 = *(v5 + 400);
  v7 = *v1;
  OUTLINED_FUNCTION_162();
  *v8 = v7;
  v3[51] = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_535();

    return MEMORY[0x2822009F8](v9, v10, v11);
  }

  else
  {
    v13 = v3[48];
    v12 = v3[49];
    v14 = v3[47];

    OUTLINED_FUNCTION_27_0();

    return v15();
  }
}

uint64_t sub_24DE14A54()
{
  OUTLINED_FUNCTION_441();
  v1 = v0[48];
  v2 = v0[49];
  v3 = v0[47];

  OUTLINED_FUNCTION_1327();
  v5 = v0[51];

  return v4();
}

void sub_24DE14AC4()
{
  OUTLINED_FUNCTION_645();
  v4 = v3;
  v5 = sub_24DE22800();
  v6 = OUTLINED_FUNCTION_443(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_7_0();
  v88 = v9;
  OUTLINED_FUNCTION_122_0();
  v10 = sub_24DE22840();
  v11 = OUTLINED_FUNCTION_443(v10);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_122_0();
  v91 = sub_24DE22A90();
  v14 = OUTLINED_FUNCTION_27(v91);
  v102 = v15;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_100_0();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_100_0();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_101_0();
  v72 = v20;
  OUTLINED_FUNCTION_100_0();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_100_0();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_100_0();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_100_0();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_101_0();
  v81 = v25;
  OUTLINED_FUNCTION_100_0();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_100_0();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_99_0();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_222_0();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_101_0();
  v89 = v30;
  OUTLINED_FUNCTION_100_0();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_370_0();
  v87 = v4[3];
  v84 = v4[4];
  v85 = v4[5];
  v86 = v4[2];
  v82 = v4[6];
  v83 = v4[7];
  v79 = v4[8];
  v80 = v4[9];
  v77 = v4[10];
  v78 = v4[11];
  v75 = v4[12];
  v76 = v4[13];
  v73 = v4[14];
  v74 = v4[15];
  v32 = v4[17];
  v71 = v4[16];
  v33 = v4[18];
  memcpy(v101, v4 + 19, sizeof(v101));
  sub_24DE22930();
  OUTLINED_FUNCTION_75_0();
  sub_24DE22A20();
  if (v0)
  {
    v34 = *(v102 + 8);
    v35 = OUTLINED_FUNCTION_254_0();
    v46(v35, v45);
  }

  else
  {
    OUTLINED_FUNCTION_364_0();
    v70 = *(v102 + 8);
    v36 = (v70)(v2, v91);
    v37 = MEMORY[0x253039280](v36);
    MEMORY[0x253039240](v37);
    sub_24DE22810();
    sub_24DE22850();
    sub_24DE229E0();
    sub_24DE22930();

    v38 = sub_24DE22820();
    OUTLINED_FUNCTION_139_0(v38, v39);
    OUTLINED_FUNCTION_12_0();
    OUTLINED_FUNCTION_72_0();
    sub_24DE22A50();

    (v70)(v89, v91);
    v40 = OUTLINED_FUNCTION_145_0();
    v88(v40);
    sub_24DE22930();

    v90 = OUTLINED_FUNCTION_323_0();
    OUTLINED_FUNCTION_11_0();
    OUTLINED_FUNCTION_71_0();
    sub_24DE22A50();
    OUTLINED_FUNCTION_98_0();

    v41 = OUTLINED_FUNCTION_551();
    v70(v41);
    v42 = OUTLINED_FUNCTION_145_0();
    v90(v42);
    sub_24DE22930();

    v43 = OUTLINED_FUNCTION_323_0();
    OUTLINED_FUNCTION_168_0(v43, v44);
    OUTLINED_FUNCTION_57_0();
    sub_24DE22A50();

    (v70)(v1, v91);
    (v70)(v98, 0);
    sub_24DE22930();
    OUTLINED_FUNCTION_278_0(v82);
    v47 = OUTLINED_FUNCTION_323_0();
    OUTLINED_FUNCTION_168_0(v47, v48);
    OUTLINED_FUNCTION_18_0();
    sub_24DE22A50();

    v49 = OUTLINED_FUNCTION_406();
    v70(v49);
    v50 = OUTLINED_FUNCTION_145_0();
    v70(v50);
    sub_24DE22930();
    v97[0] = v79;
    v97[1] = v80;

    v51 = OUTLINED_FUNCTION_323_0();
    OUTLINED_FUNCTION_190_0(v51, v52);
    OUTLINED_FUNCTION_1_0();
    sub_24DE22A50();

    (v70)(v81, v91);
    (v91)(v98, 0);
    OUTLINED_FUNCTION_402_0();
    OUTLINED_FUNCTION_278_0(v77);
    v53 = OUTLINED_FUNCTION_323_0();
    OUTLINED_FUNCTION_190_0(v53, v54);
    OUTLINED_FUNCTION_129_0();
    OUTLINED_FUNCTION_400_0();

    v55 = OUTLINED_FUNCTION_254_0();
    v70(v55);
    v56 = OUTLINED_FUNCTION_145_0();
    v91(v56);
    OUTLINED_FUNCTION_402_0();
    OUTLINED_FUNCTION_278_0(v75);
    v57 = OUTLINED_FUNCTION_323_0();
    OUTLINED_FUNCTION_190_0(v57, v58);
    OUTLINED_FUNCTION_129_0();
    OUTLINED_FUNCTION_400_0();

    v59 = OUTLINED_FUNCTION_254_0();
    v70(v59);
    v60 = OUTLINED_FUNCTION_145_0();
    v91(v60);
    OUTLINED_FUNCTION_402_0();
    OUTLINED_FUNCTION_278_0(v73);
    v61 = OUTLINED_FUNCTION_323_0();
    OUTLINED_FUNCTION_190_0(v61, v62);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_400_0();

    v63 = OUTLINED_FUNCTION_254_0();
    v70(v63);
    v64 = OUTLINED_FUNCTION_145_0();
    v91(v64);
    OUTLINED_FUNCTION_402_0();
    v99 = v71;
    v100 = v32;

    v65 = sub_24DE22820();
    OUTLINED_FUNCTION_190_0(v65, v66);
    OUTLINED_FUNCTION_58_0();
    OUTLINED_FUNCTION_400_0();

    (v70)(v72, v91);
    (v91)(v97, 0);
    sub_24DE22930();
    sub_24DE22820();
    OUTLINED_FUNCTION_186_0();
    sub_24DD74BD0();
    sub_24DE22A40();
    v67 = OUTLINED_FUNCTION_539();
    v70(v67);
    (v91)(v97, 0);
    memcpy(v98, v101, 0xBEuLL);
    if (sub_24DDE8768(v98) != 1)
    {
      sub_24DDE8754(v98, v95);
      memcpy(v96, v101, 0xBEuLL);
      sub_24DE1FB88(v96, v94);
      sub_24DE22930();
      memcpy(v97, v95, 0xBEuLL);
      nullsub_1(v97);
      memcpy(v94, v97, 0xBEuLL);
      sub_24DE22820();
      OUTLINED_FUNCTION_186_0();
      sub_24DE1FBE4();
      OUTLINED_FUNCTION_56_0();
      OUTLINED_FUNCTION_236_0();
      sub_24DE22A80();
      memcpy(v92, v94, 0xBEuLL);
      sub_24DE205DC(v92, &unk_27F1B4BD8);
      v68 = OUTLINED_FUNCTION_379_0();
      v69(v68);
      (v91)(&v93, 0);
    }
  }

  OUTLINED_FUNCTION_644();
}

uint64_t sub_24DE156C0()
{
  OUTLINED_FUNCTION_441();
  v5 = OUTLINED_FUNCTION_337_0(v1, v2, v3, v4);
  v0[166] = v5;
  OUTLINED_FUNCTION_26_0(v5);
  v0[167] = v6;
  v8 = *(v7 + 64);
  v0[168] = OUTLINED_FUNCTION_1318();
  v9 = sub_24DE22A90();
  v0[169] = v9;
  OUTLINED_FUNCTION_26_0(v9);
  v0[170] = v10;
  v12 = *(v11 + 64);
  v0[171] = OUTLINED_FUNCTION_240_0();
  v0[172] = swift_task_alloc();
  v0[173] = swift_task_alloc();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B4B50, &unk_24DE38700);
  OUTLINED_FUNCTION_443(v13);
  v15 = *(v14 + 64);
  v0[174] = OUTLINED_FUNCTION_1318();
  v16 = sub_24DE22880();
  v0[175] = v16;
  OUTLINED_FUNCTION_26_0(v16);
  v0[176] = v17;
  v19 = *(v18 + 64);
  v0[177] = OUTLINED_FUNCTION_240_0();
  v0[178] = swift_task_alloc();
  v20 = OUTLINED_FUNCTION_183();

  return MEMORY[0x2822009F8](v20, v21, v22);
}

uint64_t sub_24DE15844(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_147_0();
  OUTLINED_FUNCTION_161_0();
  OUTLINED_FUNCTION_334_0();
  MEMORY[0x2530392C0]();
  v19 = OUTLINED_FUNCTION_13_0();
  v18(v19);
  if (v14 != 200)
  {
    OUTLINED_FUNCTION_270_0();
    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B3598, &qword_24DE23698);
    OUTLINED_FUNCTION_69_0(v30);
    MEMORY[0x2530392C0]();
    v31 = OUTLINED_FUNCTION_48_0();
    v18(v31);
    OUTLINED_FUNCTION_137_0();

    OUTLINED_FUNCTION_68_0();
    v32 = type metadata accessor for Operations.PostWebObjectsGKChallengeService_woaWaChallengeCreate.Output(0);
    OUTLINED_FUNCTION_136_0(v32);
    OUTLINED_FUNCTION_94_0();

    OUTLINED_FUNCTION_27_0();
    goto LABEL_5;
  }

  OUTLINED_FUNCTION_196_0();
  OUTLINED_FUNCTION_257_0();
  OUTLINED_FUNCTION_134_0();
  v20 = OUTLINED_FUNCTION_51_0();
  v21(v20);
  v22 = *(v17 + 8);
  v16[179] = v22;
  OUTLINED_FUNCTION_159_0();
  v16[180] = v23;
  v24 = OUTLINED_FUNCTION_160_0();
  (v22)(v24);
  OUTLINED_FUNCTION_138_0();
  OUTLINED_FUNCTION_133_0();
  if (v15)
  {
    v25 = v16[174];
    v26 = OUTLINED_FUNCTION_357_0();
    (v22)(v26);
    sub_24DE205DC(v25, &qword_27F1B4B50);
    v27 = v16[178];
    v28 = v16[177];
    v29 = v16[174];
    OUTLINED_FUNCTION_262_0();

    OUTLINED_FUNCTION_49_0();
LABEL_5:
    OUTLINED_FUNCTION_115_0();

    return v34(v33, v34, v35, v36, v37, v38, v39, v40, a9, a10, a11, a12, a13, a14);
  }

  OUTLINED_FUNCTION_16_0();
  OUTLINED_FUNCTION_357_0();
  OUTLINED_FUNCTION_157_0();
  v22();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_259_0();
  __break(1u);

  v42 = v16[171];
  v43 = v16[165];
  sub_24DE22930();
  v44 = *(MEMORY[0x277D37A38] + 4);
  v45 = swift_task_alloc();
  v16[181] = v45;
  sub_24DE1FB34();
  OUTLINED_FUNCTION_50_0();
  *v45 = v46;
  v45[1] = sub_24DE15AF0;
  v47 = v16[171];
  v48 = v16[164];
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_115_0();

  return MEMORY[0x282198000](v49, v50, v51, v52, v53, v54, v55, v56, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_24DE15AF0()
{
  OUTLINED_FUNCTION_441();
  OUTLINED_FUNCTION_552();
  v3 = v2;
  OUTLINED_FUNCTION_167();
  *v4 = v3;
  v6 = *(v5 + 1448);
  v7 = *v1;
  OUTLINED_FUNCTION_162();
  *v8 = v7;
  *(v3 + 1456) = v0;

  v9 = OUTLINED_FUNCTION_148_0();
  v10(v9);
  OUTLINED_FUNCTION_535();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_24DE15BF8()
{
  OUTLINED_FUNCTION_330_0();
  OUTLINED_FUNCTION_1060();
  v3 = OUTLINED_FUNCTION_358_0();
  sub_24DDFDC64(v3, v4);
  sub_24DDFDC64((v2 + 656), (v2 + 976));
  Operations.PostWebObjectsGKChallengeService_woaWaChallengeCreate.Output.Ok.init(body:)((v2 + 976), (v2 + 336));
  sub_24DE205DC(v1, &qword_27F1B4B50);
  memcpy(v0, (v2 + 336), 0x139uLL);
  v5 = type metadata accessor for Operations.PostWebObjectsGKChallengeService_woaWaChallengeCreate.Output(0);
  OUTLINED_FUNCTION_135_0(v5);
  OUTLINED_FUNCTION_94_0();

  OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_302_0();

  return v7(v6, v7, v8, v9, v10, v11, v12, v13);
}

uint64_t sub_24DE15CD8()
{
  OUTLINED_FUNCTION_113_0();
  OUTLINED_FUNCTION_15_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_164(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_3_0(v1);

  return sub_24DE156C0();
}

uint64_t Client.postWebObjectsGKChallengeService_woaWaChallengeDetail(_:)()
{
  OUTLINED_FUNCTION_441();
  OUTLINED_FUNCTION_282_0(v0, v1);
  v2 = OUTLINED_FUNCTION_183();

  return MEMORY[0x2822009F8](v2, v3, v4);
}

uint64_t sub_24DE15DFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_341_0();
  OUTLINED_FUNCTION_1060();
  v10 = *(v9 + 208);
  v11 = sub_24DDD8D10();
  v12 = OUTLINED_FUNCTION_244_0(v11);
  v13 = OUTLINED_FUNCTION_179_0(v12);
  OUTLINED_FUNCTION_178_0(v13);
  v14 = *(MEMORY[0x277D37998] + 4);

  v15 = swift_task_alloc();
  v16 = OUTLINED_FUNCTION_177_0(v15);
  type metadata accessor for Operations.PostWebObjectsGKChallengeService_woaWaChallengeDetail.Output(v16);
  OUTLINED_FUNCTION_167_0();
  *v14 = v17;
  OUTLINED_FUNCTION_176_0(v18);
  OUTLINED_FUNCTION_2_0(v19);
  OUTLINED_FUNCTION_231_0();

  return MEMORY[0x282197F10](v20, v21, v22, v23, v24, v25, v26, v27, a9);
}

void sub_24DE15EE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_645();
  a19 = v26;
  a20 = v27;
  v31 = OUTLINED_FUNCTION_166_0(v28, v29, v30);
  v32 = OUTLINED_FUNCTION_443(v31);
  v34 = *(v33 + 64);
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_110_0(v35);
  v36 = sub_24DE22840();
  v37 = OUTLINED_FUNCTION_443(v36);
  v39 = *(v38 + 64);
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_122_0();
  v40 = sub_24DE22A90();
  v144 = OUTLINED_FUNCTION_27(v40);
  v145 = v41;
  v43 = *(v42 + 64);
  MEMORY[0x28223BE20](v144);
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_25_0();
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_25_0();
  v46 = MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_17_0(v46, v47, v48, v49, v50, v51, v52, v53, v137);
  MEMORY[0x28223BE20](v54);
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_25_0();
  MEMORY[0x28223BE20](v55);
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_25_0();
  MEMORY[0x28223BE20](v56);
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_25_0();
  MEMORY[0x28223BE20](v57);
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_25_0();
  MEMORY[0x28223BE20](v58);
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_25_0();
  v60 = MEMORY[0x28223BE20](v59);
  OUTLINED_FUNCTION_63_0(v60, v61, v62, v63, v64, v65, v66, v67, v138);
  MEMORY[0x28223BE20](v68);
  OUTLINED_FUNCTION_46_0();
  v70 = MEMORY[0x28223BE20](v69);
  OUTLINED_FUNCTION_52_0(v70, v71, v72, v73, v74, v75, v76, v77, v139);
  MEMORY[0x28223BE20](v78);
  OUTLINED_FUNCTION_39_0();
  v142 = v79;
  OUTLINED_FUNCTION_4_0();
  v80 = *(v21 + 136);
  OUTLINED_FUNCTION_76_0(*(v21 + 128));
  sub_24DE22930();
  OUTLINED_FUNCTION_75_0();
  sub_24DE22A20();
  if (v143)
  {
    v81 = OUTLINED_FUNCTION_199_0();
    v82(v81);
  }

  else
  {
    OUTLINED_FUNCTION_363_0();
    *(v83 - 256) = v24;
    OUTLINED_FUNCTION_22_0(&v140);
    OUTLINED_FUNCTION_362_0(v84);
    v85();
    OUTLINED_FUNCTION_399_0();
    OUTLINED_FUNCTION_310_0();
    MEMORY[0x253039240]();
    v86 = v141;
    OUTLINED_FUNCTION_83_0();
    sub_24DE22850();
    OUTLINED_FUNCTION_170_0();
    OUTLINED_FUNCTION_274_0();
    OUTLINED_FUNCTION_273_0();
    v87 = OUTLINED_FUNCTION_241_0();
    OUTLINED_FUNCTION_106_0(v87, v88);
    OUTLINED_FUNCTION_12_0();
    OUTLINED_FUNCTION_72_0();
    v89 = v143;
    sub_24DE22A50();
    if (v89)
    {

      OUTLINED_FUNCTION_35_0();
      v90();
      v91 = OUTLINED_FUNCTION_125_0();
      v20(v91);
      OUTLINED_FUNCTION_47_0();
      (*(v92 + 8))(v86, v22);
    }

    else
    {

      OUTLINED_FUNCTION_35_0();
      v93();
      v94 = OUTLINED_FUNCTION_116_0();
      v20(v94);
      OUTLINED_FUNCTION_114_0(&v143);
      sub_24DE22930();
      OUTLINED_FUNCTION_243_0();
      v95 = OUTLINED_FUNCTION_241_0();
      OUTLINED_FUNCTION_106_0(v95, v96);
      OUTLINED_FUNCTION_11_0();
      OUTLINED_FUNCTION_71_0();
      sub_24DE22A50();
      OUTLINED_FUNCTION_213_0();
      v143 = v22;
      OUTLINED_FUNCTION_37_0();

      v97 = OUTLINED_FUNCTION_732();
      v145 = a10;
      v86(v97);
      v98 = OUTLINED_FUNCTION_79_0();
      v20(v98);
      OUTLINED_FUNCTION_269_0();
      OUTLINED_FUNCTION_120_0();
      v99 = OUTLINED_FUNCTION_335_0();
      OUTLINED_FUNCTION_106_0(v99, v100);
      OUTLINED_FUNCTION_57_0();
      OUTLINED_FUNCTION_102_0();
      OUTLINED_FUNCTION_165_0();

      v101 = OUTLINED_FUNCTION_97_0();
      v86(v101);
      v102 = OUTLINED_FUNCTION_79_0();
      v20(v102);
      OUTLINED_FUNCTION_114_0(&a17);
      sub_24DE22930();
      OUTLINED_FUNCTION_90_0();
      v103 = OUTLINED_FUNCTION_173_0();
      OUTLINED_FUNCTION_106_0(v103, v104);
      OUTLINED_FUNCTION_18_0();
      OUTLINED_FUNCTION_175_0();
      OUTLINED_FUNCTION_212_0();

      v105 = OUTLINED_FUNCTION_6_0();
      v106(v105);
      v107 = OUTLINED_FUNCTION_116_0();
      v20(v107);
      OUTLINED_FUNCTION_131_0(&a14);
      OUTLINED_FUNCTION_89_0();
      v108 = OUTLINED_FUNCTION_241_0();
      OUTLINED_FUNCTION_106_0(v108, v109);
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_162_0();
      sub_24DE22A50();
      OUTLINED_FUNCTION_174_0();

      OUTLINED_FUNCTION_8_0();
      v110();
      v111 = OUTLINED_FUNCTION_116_0();
      v20(v111);
      OUTLINED_FUNCTION_114_0(&a11);
      sub_24DE22930();
      OUTLINED_FUNCTION_65_0();
      v112 = OUTLINED_FUNCTION_241_0();
      OUTLINED_FUNCTION_139_0(v112, v113);
      OUTLINED_FUNCTION_40_0();

      v114 = OUTLINED_FUNCTION_6_0();
      v115(v114);
      v116 = OUTLINED_FUNCTION_116_0();
      v23(v116);
      OUTLINED_FUNCTION_114_0(&v149);
      sub_24DE22930();
      OUTLINED_FUNCTION_66_0();
      v117 = OUTLINED_FUNCTION_241_0();
      OUTLINED_FUNCTION_139_0(v117, v118);
      OUTLINED_FUNCTION_40_0();

      v119 = OUTLINED_FUNCTION_6_0();
      v120(v119);
      v121 = OUTLINED_FUNCTION_116_0();
      v23(v121);
      OUTLINED_FUNCTION_131_0(&v148);
      OUTLINED_FUNCTION_88_0();
      v122 = OUTLINED_FUNCTION_241_0();
      OUTLINED_FUNCTION_106_0(v122, v123);
      OUTLINED_FUNCTION_0_0();
      OUTLINED_FUNCTION_162_0();
      sub_24DE22A50();
      OUTLINED_FUNCTION_165_0();

      OUTLINED_FUNCTION_8_0();
      v124();
      v125 = OUTLINED_FUNCTION_116_0();
      v20(v125);
      OUTLINED_FUNCTION_109_0();
      sub_24DE22930();
      OUTLINED_FUNCTION_307_0();
      OUTLINED_FUNCTION_151_0(&v142);
      v126 = OUTLINED_FUNCTION_241_0();
      OUTLINED_FUNCTION_139_0(v126, v127);
      OUTLINED_FUNCTION_36_0();
      OUTLINED_FUNCTION_234_0();

      OUTLINED_FUNCTION_54_0();
      OUTLINED_FUNCTION_211_0(v128);
      v147();
      v129 = OUTLINED_FUNCTION_116_0();
      v20(v129);
      OUTLINED_FUNCTION_131_0(&v145);
      OUTLINED_FUNCTION_241_0();
      OUTLINED_FUNCTION_118_0();
      sub_24DD75108();
      OUTLINED_FUNCTION_203_0();
      v130 = OUTLINED_FUNCTION_62_0();
      (v147)(v130);
      v131 = OUTLINED_FUNCTION_116_0();
      v20(v131);
      OUTLINED_FUNCTION_311_0();
      if (v132)
      {
        OUTLINED_FUNCTION_277_0();
        OUTLINED_FUNCTION_322_0(&v141);
        OUTLINED_FUNCTION_184_0(&v146);
        sub_24DE22930();
        OUTLINED_FUNCTION_142_0();
        OUTLINED_FUNCTION_197_0();
        OUTLINED_FUNCTION_118_0();
        sub_24DE1FAE0();
        OUTLINED_FUNCTION_10_0();
        OUTLINED_FUNCTION_191_0();
        sub_24DE22A80();
        v133 = OUTLINED_FUNCTION_218_0();
        sub_24DD75940(v133, v134);
        v135 = OUTLINED_FUNCTION_73_0();
        v25(v135);
        v136 = OUTLINED_FUNCTION_352_0();
        v20(v136);
      }
    }
  }

  OUTLINED_FUNCTION_80_0();
  OUTLINED_FUNCTION_644();
}

uint64_t sub_24DE16824()
{
  OUTLINED_FUNCTION_441();
  v0[137] = v1;
  v0[136] = v2;
  v0[135] = v3;
  v0[134] = v4;
  v5 = sub_24DE22800();
  v0[138] = v5;
  OUTLINED_FUNCTION_26_0(v5);
  v0[139] = v6;
  v8 = *(v7 + 64);
  v0[140] = OUTLINED_FUNCTION_1318();
  v9 = sub_24DE22A90();
  v0[141] = v9;
  OUTLINED_FUNCTION_26_0(v9);
  v0[142] = v10;
  v12 = *(v11 + 64);
  v0[143] = OUTLINED_FUNCTION_240_0();
  v0[144] = swift_task_alloc();
  v0[145] = swift_task_alloc();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B4B50, &unk_24DE38700);
  OUTLINED_FUNCTION_443(v13);
  v15 = *(v14 + 64);
  v0[146] = OUTLINED_FUNCTION_1318();
  v16 = sub_24DE22880();
  v0[147] = v16;
  OUTLINED_FUNCTION_26_0(v16);
  v0[148] = v17;
  v19 = *(v18 + 64);
  v0[149] = OUTLINED_FUNCTION_240_0();
  v0[150] = swift_task_alloc();
  v20 = OUTLINED_FUNCTION_183();

  return MEMORY[0x2822009F8](v20, v21, v22);
}

uint64_t sub_24DE169BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_147_0();
  OUTLINED_FUNCTION_161_0();
  v16 = v14[150];
  v17 = v14[148];
  v18 = v14[147];
  v19 = v14[135];
  v20 = MEMORY[0x2530392E0]();
  MEMORY[0x2530392C0](v20);
  v21 = OUTLINED_FUNCTION_13_0();
  v15(v21);
  if (v16 != 200)
  {
    v39 = v14[149];
    v40 = v14[147];
    v41 = v14[140];
    v42 = v14[136];
    v43 = v14[135];
    v44 = v14[134];
    v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B3598, &qword_24DE23698);
    OUTLINED_FUNCTION_69_0(v45);
    MEMORY[0x2530392C0]();
    v46 = OUTLINED_FUNCTION_48_0();
    v15(v46);
    OUTLINED_FUNCTION_137_0();

    OUTLINED_FUNCTION_68_0();
    v47 = type metadata accessor for Operations.PostWebObjectsGKChallengeService_woaWaChallengeDetail.Output(0);
    OUTLINED_FUNCTION_136_0(v47);
    OUTLINED_FUNCTION_265_0();

    OUTLINED_FUNCTION_27_0();
    goto LABEL_5;
  }

  v22 = v14[146];
  v23 = v14[145];
  v24 = v14[142];
  a9 = v14[141];
  a10 = v14[144];
  v25 = v14[140];
  v26 = v14[139];
  v27 = v14[138];
  v28 = v14[137];
  v29 = v14[135];
  OUTLINED_FUNCTION_260_0();
  OUTLINED_FUNCTION_257_0();
  OUTLINED_FUNCTION_134_0();
  v30 = OUTLINED_FUNCTION_51_0();
  v31(v30);
  v32 = *(v24 + 8);
  v14[151] = v32;
  OUTLINED_FUNCTION_159_0();
  v14[152] = v33;
  v34 = OUTLINED_FUNCTION_160_0();
  v32(v34);
  OUTLINED_FUNCTION_138_0();
  OUTLINED_FUNCTION_133_0();
  if (v23)
  {
    v35 = v14[146];
    (v32)(v14[144], v14[141]);
    sub_24DE205DC(v35, &qword_27F1B4B50);
    v36 = v14[150];
    v37 = v14[149];
    v38 = v14[146];
    OUTLINED_FUNCTION_385_0();

    OUTLINED_FUNCTION_49_0();
LABEL_5:
    OUTLINED_FUNCTION_115_0();

    return v49(v48, v49, v50, v51, v52, v53, v54, v55, a9, a10, a11, a12, a13, a14);
  }

  OUTLINED_FUNCTION_16_0();
  v57 = v14[144];
  v58 = v14[141];
  OUTLINED_FUNCTION_157_0();
  (v32)();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_259_0();
  if ((v26 & 1) == 0)
  {
    __break(1u);
  }

  v59 = v14[143];
  v60 = v14[137];
  sub_24DE22930();
  v61 = *(MEMORY[0x277D37A38] + 4);
  v62 = swift_task_alloc();
  v14[153] = v62;
  sub_24DE1FA8C();
  OUTLINED_FUNCTION_50_0();
  *v62 = v63;
  v62[1] = sub_24DE16CC4;
  v64 = v14[143];
  v65 = v14[136];
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_115_0();

  return MEMORY[0x282198000](v66, v67, v68, v69, v70, v71, v72, v73, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_24DE16CC4()
{
  OUTLINED_FUNCTION_441();
  OUTLINED_FUNCTION_552();
  v3 = v2;
  OUTLINED_FUNCTION_167();
  *v4 = v3;
  v6 = *(v5 + 1224);
  v7 = *v1;
  OUTLINED_FUNCTION_162();
  *v8 = v7;
  *(v3 + 1232) = v0;

  v9 = OUTLINED_FUNCTION_348_0();
  v10(v9);
  OUTLINED_FUNCTION_535();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_24DE16DCC()
{
  OUTLINED_FUNCTION_330_0();
  OUTLINED_FUNCTION_1060();
  v1 = v0[146];
  v2 = v0[134];
  sub_24DDE8838(v0 + 2, v0 + 68);
  sub_24DDE8838(v0 + 68, v0 + 101);
  Operations.PostWebObjectsGKChallengeService_woaWaChallengeDetail.Output.Ok.init(body:)();
  sub_24DE205DC(v1, &qword_27F1B4B50);
  memcpy(v2, v0 + 35, 0x102uLL);
  v3 = type metadata accessor for Operations.PostWebObjectsGKChallengeService_woaWaChallengeDetail.Output(0);
  OUTLINED_FUNCTION_135_0(v3);
  OUTLINED_FUNCTION_265_0();

  OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_302_0();

  return v5(v4, v5, v6, v7, v8, v9, v10, v11);
}

uint64_t sub_24DE16EB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_245_0();
  OUTLINED_FUNCTION_496();
  sub_24DE205DC(v10[146], &qword_27F1B4B50);
  v11 = v10[154];
  v12 = v10[150];
  v13 = v10[149];
  v14 = v10[146];
  OUTLINED_FUNCTION_385_0();

  OUTLINED_FUNCTION_1327();
  OUTLINED_FUNCTION_230_0();

  return v16(v15, v16, v17, v18, v19, v20, v21, v22, a9, a10);
}

uint64_t sub_24DE16F6C()
{
  OUTLINED_FUNCTION_113_0();
  OUTLINED_FUNCTION_15_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_164(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_3_0(v1);

  return sub_24DE16824();
}

uint64_t sub_24DE16FF8()
{
  OUTLINED_FUNCTION_227_0();
  memcpy(__dst, v0, 0x102uLL);
  memcpy(__src, v0, 0x102uLL);
  nullsub_1(__src);
  sub_24DDE8838(__src, v1);
  return sub_24DDE6F90(__dst, v3);
}

uint64_t Client.postWebObjectsGKChallengeService_woaWaChallengeSummary(_:)()
{
  OUTLINED_FUNCTION_441();
  v1[26] = v2;
  v1[27] = v0;
  memcpy(v1 + 2, v3, 0xB9uLL);
  v4 = OUTLINED_FUNCTION_183();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_24DE170CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_341_0();
  OUTLINED_FUNCTION_1060();
  v10 = v9[27];
  v11 = sub_24DDD9E3C();
  v12 = *v11;
  v9[28] = v11[1];
  v13 = swift_task_alloc();
  v9[29] = v13;
  v14 = OUTLINED_FUNCTION_258_0(v13);
  v9[30] = v14;
  *(v14 + 16) = v10;
  v15 = *(MEMORY[0x277D37998] + 4);

  v16 = swift_task_alloc();
  v9[31] = v16;
  type metadata accessor for Operations.PostWebObjectsGKChallengeService_woaWaChallengeSummary.Output(0);
  OUTLINED_FUNCTION_167_0();
  *v16 = v17;
  v16[1] = sub_24DE171E0;
  v18 = v9[27];
  OUTLINED_FUNCTION_2_0(v9[26]);
  OUTLINED_FUNCTION_231_0();

  return MEMORY[0x282197F10](v19, v20, v21, v22, v23, v24, v25, v26, a9);
}

uint64_t sub_24DE171E0()
{
  OUTLINED_FUNCTION_113_0();
  OUTLINED_FUNCTION_552();
  v3 = v2;
  OUTLINED_FUNCTION_167();
  *v4 = v3;
  v6 = *(v5 + 248);
  v7 = *v1;
  OUTLINED_FUNCTION_162();
  *v8 = v7;
  v3[32] = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_535();

    return MEMORY[0x2822009F8](v9, v10, v11);
  }

  else
  {
    v13 = v3[29];
    v12 = v3[30];
    v14 = v3[28];

    OUTLINED_FUNCTION_27_0();

    return v15();
  }
}

uint64_t sub_24DE1731C()
{
  OUTLINED_FUNCTION_441();
  v1 = v0[29];
  v2 = v0[30];
  v3 = v0[28];

  OUTLINED_FUNCTION_1327();
  v5 = v0[32];

  return v4();
}

void sub_24DE1738C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_645();
  a19 = v23;
  a20 = v24;
  v130 = v22;
  OUTLINED_FUNCTION_239_0(v25, v26, v27);
  v128 = v28;
  v29 = sub_24DE22800();
  v30 = OUTLINED_FUNCTION_443(v29);
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_7_0();
  v127 = v33;
  OUTLINED_FUNCTION_122_0();
  v34 = sub_24DE22840();
  v35 = OUTLINED_FUNCTION_443(v34);
  v37 = *(v36 + 64);
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_7_0();
  v126 = v38;
  OUTLINED_FUNCTION_122_0();
  v39 = sub_24DE22A90();
  v131 = OUTLINED_FUNCTION_27(v39);
  v132 = v40;
  v42 = *(v41 + 64);
  MEMORY[0x28223BE20](v131);
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_25_0();
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_25_0();
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_25_0();
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_25_0();
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_25_0();
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_25_0();
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_25_0();
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_25_0();
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_100_0();
  MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_46_0();
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_101_0();
  v125[1] = v53;
  OUTLINED_FUNCTION_100_0();
  MEMORY[0x28223BE20](v54);
  OUTLINED_FUNCTION_39_0();
  v129 = v55;
  v123 = *(v21 + 16);
  v124 = *(v21 + 24);
  v125[0] = v56;
  v57 = *(v21 + 32);
  OUTLINED_FUNCTION_349_0(*(v21 + 40));
  v58 = *(v21 + 48);
  OUTLINED_FUNCTION_374_0(*(v21 + 56));
  v59 = *(v21 + 64);
  OUTLINED_FUNCTION_368_0(*(v21 + 72));
  v60 = *(v21 + 80);
  OUTLINED_FUNCTION_294_0(*(v21 + 88));
  v120 = *(v21 + 96);
  OUTLINED_FUNCTION_365_0(*(v21 + 104));
  v118 = *(v21 + 112);
  v119 = *(v21 + 120);
  v116 = *(v21 + 128);
  v117 = *(v21 + 136);
  v61 = *(v21 + 144);
  v62 = *(v21 + 152);
  v63 = *(v21 + 160);
  v64 = *(v21 + 168);
  v65 = *(v21 + 176);
  v66 = *(v21 + 184);
  OUTLINED_FUNCTION_327_0();
  OUTLINED_FUNCTION_187_0();
  OUTLINED_FUNCTION_200_0();
  sub_24DE22A20();
  v130 = v22;
  if (v22)
  {
    v67 = OUTLINED_FUNCTION_199_0();
    v68(v67);
  }

  else
  {
    OUTLINED_FUNCTION_366_0();
    v114 = v63;
    v70 = v131;
    v69 = v132;
    v71 = OUTLINED_FUNCTION_74_0();
    v115 = v72;
    v73 = (v72)(v71);
    v74 = MEMORY[0x253039280](v73);
    MEMORY[0x253039240](v74);
    OUTLINED_FUNCTION_83_0();
    sub_24DE22850();
    OUTLINED_FUNCTION_170_0();
    sub_24DE22930();
    v133 = v125[0];
    v134 = v129;

    v75 = OUTLINED_FUNCTION_305_0();
    OUTLINED_FUNCTION_106_0(v75, v76);
    OUTLINED_FUNCTION_12_0();
    OUTLINED_FUNCTION_72_0();
    sub_24DE22A50();

    v77 = OUTLINED_FUNCTION_158_0();
    (v115)(v77);
    v78 = OUTLINED_FUNCTION_204_0();
    v20(v78);
    OUTLINED_FUNCTION_114_0(&v129);
    sub_24DE22930();
    v133 = v123;
    v134 = v124;

    v79 = OUTLINED_FUNCTION_305_0();
    OUTLINED_FUNCTION_106_0(v79, v80);
    OUTLINED_FUNCTION_11_0();
    OUTLINED_FUNCTION_71_0();
    sub_24DE22A50();
    v130 = v126;
    OUTLINED_FUNCTION_37_0();

    v81 = OUTLINED_FUNCTION_732();
    v132 = v69;
    (v115)(v81);
    v82 = OUTLINED_FUNCTION_204_0();
    v20(v82);
    sub_24DE22930();
    OUTLINED_FUNCTION_333_0(&a18);
    v83 = sub_24DE22820();
    OUTLINED_FUNCTION_106_0(v83, v84);
    OUTLINED_FUNCTION_57_0();
    OUTLINED_FUNCTION_102_0();
    OUTLINED_FUNCTION_165_0();

    v85 = OUTLINED_FUNCTION_408();
    (v115)(v85);
    v86 = OUTLINED_FUNCTION_204_0();
    v20(v86);
    OUTLINED_FUNCTION_114_0(&a16);
    sub_24DE22930();
    v133 = v121;
    v134 = v122;

    v87 = sub_24DE22820();
    OUTLINED_FUNCTION_106_0(v87, v88);
    OUTLINED_FUNCTION_18_0();
    OUTLINED_FUNCTION_183_0();
    OUTLINED_FUNCTION_212_0();

    OUTLINED_FUNCTION_45_0();
    v89();
    v90 = OUTLINED_FUNCTION_204_0();
    v20(v90);
    OUTLINED_FUNCTION_131_0(&a13);
    OUTLINED_FUNCTION_356_0();
    OUTLINED_FUNCTION_333_0(&a12);
    v91 = OUTLINED_FUNCTION_305_0();
    OUTLINED_FUNCTION_106_0(v91, v92);
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_162_0();
    sub_24DE22A50();

    OUTLINED_FUNCTION_45_0();
    v93();
    v94 = OUTLINED_FUNCTION_204_0();
    v20(v94);
    OUTLINED_FUNCTION_114_0(&a10);
    sub_24DE22930();
    OUTLINED_FUNCTION_331_0(&a9);
    v95 = OUTLINED_FUNCTION_305_0();
    OUTLINED_FUNCTION_139_0(v95, v96);
    OUTLINED_FUNCTION_41_0();
    sub_24DE22A50();

    OUTLINED_FUNCTION_45_0();
    v97();
    v98 = OUTLINED_FUNCTION_204_0();
    v136(v98);
    OUTLINED_FUNCTION_114_0(v139);
    sub_24DE22930();
    OUTLINED_FUNCTION_331_0(&v138);
    v99 = OUTLINED_FUNCTION_305_0();
    OUTLINED_FUNCTION_139_0(v99, v100);
    OUTLINED_FUNCTION_41_0();
    sub_24DE22A50();

    OUTLINED_FUNCTION_45_0();
    v101();
    v102 = OUTLINED_FUNCTION_204_0();
    v136(v102);
    OUTLINED_FUNCTION_131_0(v137);
    OUTLINED_FUNCTION_333_0(&v136);
    v103 = OUTLINED_FUNCTION_305_0();
    OUTLINED_FUNCTION_106_0(v103, v104);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_162_0();
    sub_24DE22A50();
    OUTLINED_FUNCTION_165_0();

    OUTLINED_FUNCTION_45_0();
    v105();
    v106 = OUTLINED_FUNCTION_204_0();
    v20(v106);
    OUTLINED_FUNCTION_114_0(&v135);
    sub_24DE22930();
    OUTLINED_FUNCTION_331_0(&v134);
    v107 = OUTLINED_FUNCTION_305_0();
    OUTLINED_FUNCTION_139_0(v107, v108);
    OUTLINED_FUNCTION_36_0();
    OUTLINED_FUNCTION_234_0();

    v109 = OUTLINED_FUNCTION_732();
    (v115)(v109);
    v110 = OUTLINED_FUNCTION_204_0();
    v136(v110);
    OUTLINED_FUNCTION_131_0(&v131);
    OUTLINED_FUNCTION_305_0();
    OUTLINED_FUNCTION_118_0();
    sub_24DD75510();
    sub_24DE22A40();
    OUTLINED_FUNCTION_84_0();
    v115();
    v111 = OUTLINED_FUNCTION_204_0();
    v136(v111);
    if (v114)
    {
      OUTLINED_FUNCTION_292_0(v125);
      OUTLINED_FUNCTION_322_0(&v128);
      OUTLINED_FUNCTION_184_0(&v132);
      sub_24DE22930();
      v136 = v62;
      v137[0] = &v136;
      v137[1] = v113;
      v138 = v115;
      v139[0] = v66;
      sub_24DE22820();
      OUTLINED_FUNCTION_118_0();
      sub_24DE1FA38();
      OUTLINED_FUNCTION_10_0();
      OUTLINED_FUNCTION_191_0();
      sub_24DE22A80();
      sub_24DD75940(v136, v137[0]);
      v112 = OUTLINED_FUNCTION_153_0(&v132);
      v70(v112);
      (v136)(&v133, 0);
    }
  }

  OUTLINED_FUNCTION_80_0();
  OUTLINED_FUNCTION_644();
}

uint64_t sub_24DE17F30()
{
  OUTLINED_FUNCTION_441();
  v0[77] = v1;
  v0[76] = v2;
  v0[75] = v3;
  v0[74] = v4;
  v5 = sub_24DE22800();
  v0[78] = v5;
  OUTLINED_FUNCTION_26_0(v5);
  v0[79] = v6;
  v8 = *(v7 + 64);
  v0[80] = OUTLINED_FUNCTION_1318();
  v9 = sub_24DE22A90();
  v0[81] = v9;
  OUTLINED_FUNCTION_26_0(v9);
  v0[82] = v10;
  v12 = *(v11 + 64);
  v0[83] = OUTLINED_FUNCTION_240_0();
  v0[84] = swift_task_alloc();
  v0[85] = swift_task_alloc();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B4B50, &unk_24DE38700);
  OUTLINED_FUNCTION_443(v13);
  v15 = *(v14 + 64);
  v0[86] = OUTLINED_FUNCTION_1318();
  v16 = sub_24DE22880();
  v0[87] = v16;
  OUTLINED_FUNCTION_26_0(v16);
  v0[88] = v17;
  v19 = *(v18 + 64);
  v0[89] = OUTLINED_FUNCTION_240_0();
  v0[90] = swift_task_alloc();
  v20 = OUTLINED_FUNCTION_183();

  return MEMORY[0x2822009F8](v20, v21, v22);
}

uint64_t sub_24DE180C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_147_0();
  OUTLINED_FUNCTION_161_0();
  v16 = v14[90];
  v17 = v14[88];
  v18 = v14[87];
  v19 = v14[75];
  v20 = MEMORY[0x2530392E0]();
  MEMORY[0x2530392C0](v20);
  v21 = OUTLINED_FUNCTION_13_0();
  v15(v21);
  if (v16 != 200)
  {
    v39 = v14[89];
    v40 = v14[87];
    v41 = v14[80];
    v42 = v14[76];
    v43 = v14[75];
    v44 = v14[74];
    v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B3598, &qword_24DE23698);
    OUTLINED_FUNCTION_69_0(v45);
    MEMORY[0x2530392C0]();
    v46 = OUTLINED_FUNCTION_48_0();
    v15(v46);
    OUTLINED_FUNCTION_137_0();

    OUTLINED_FUNCTION_68_0();
    v47 = type metadata accessor for Operations.PostWebObjectsGKChallengeService_woaWaChallengeSummary.Output(0);
    OUTLINED_FUNCTION_136_0(v47);
    OUTLINED_FUNCTION_281_0();

    OUTLINED_FUNCTION_27_0();
    goto LABEL_5;
  }

  v22 = v14[86];
  v23 = v14[85];
  v24 = v14[82];
  a9 = v14[81];
  a10 = v14[84];
  v25 = v14[80];
  v26 = v14[79];
  v27 = v14[78];
  v28 = v14[77];
  v29 = v14[75];
  OUTLINED_FUNCTION_260_0();
  OUTLINED_FUNCTION_257_0();
  OUTLINED_FUNCTION_134_0();
  v30 = OUTLINED_FUNCTION_51_0();
  v31(v30);
  v32 = *(v24 + 8);
  v14[91] = v32;
  OUTLINED_FUNCTION_159_0();
  v14[92] = v33;
  v34 = OUTLINED_FUNCTION_160_0();
  v32(v34);
  OUTLINED_FUNCTION_138_0();
  OUTLINED_FUNCTION_133_0();
  if (v23)
  {
    v35 = v14[86];
    (v32)(v14[84], v14[81]);
    sub_24DE205DC(v35, &qword_27F1B4B50);
    v36 = v14[90];
    v37 = v14[89];
    v38 = v14[86];
    OUTLINED_FUNCTION_391_0();

    OUTLINED_FUNCTION_49_0();
LABEL_5:
    OUTLINED_FUNCTION_115_0();

    return v49(v48, v49, v50, v51, v52, v53, v54, v55, a9, a10, a11, a12, a13, a14);
  }

  OUTLINED_FUNCTION_16_0();
  v57 = v14[84];
  v58 = v14[81];
  OUTLINED_FUNCTION_157_0();
  (v32)();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_259_0();
  if ((v26 & 1) == 0)
  {
    __break(1u);
  }

  v59 = v14[83];
  v60 = v14[77];
  sub_24DE22930();
  v61 = *(MEMORY[0x277D37A38] + 4);
  v62 = swift_task_alloc();
  v14[93] = v62;
  sub_24DE1F9E4();
  OUTLINED_FUNCTION_50_0();
  *v62 = v63;
  v62[1] = sub_24DE183D0;
  v64 = v14[83];
  v65 = v14[76];
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_115_0();

  return MEMORY[0x282198000](v66, v67, v68, v69, v70, v71, v72, v73, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_24DE183D0()
{
  OUTLINED_FUNCTION_441();
  OUTLINED_FUNCTION_552();
  v3 = v2;
  OUTLINED_FUNCTION_167();
  *v4 = v3;
  v6 = *(v5 + 744);
  v7 = *v1;
  OUTLINED_FUNCTION_162();
  *v8 = v7;
  *(v3 + 752) = v0;

  v9 = OUTLINED_FUNCTION_377_0();
  v10(v9);
  OUTLINED_FUNCTION_535();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_24DE184D8()
{
  OUTLINED_FUNCTION_330_0();
  OUTLINED_FUNCTION_1060();
  v1 = v0[86];
  v2 = v0[74];
  sub_24DDE8904(v0 + 2, v0 + 38);
  sub_24DDE8904(v0 + 38, v0 + 56);
  Operations.PostWebObjectsGKChallengeService_woaWaChallengeSummary.Output.Ok.init(body:)();
  sub_24DE205DC(v1, &qword_27F1B4B50);
  memcpy(v2, v0 + 20, 0x90uLL);
  v3 = type metadata accessor for Operations.PostWebObjectsGKChallengeService_woaWaChallengeSummary.Output(0);
  OUTLINED_FUNCTION_135_0(v3);
  OUTLINED_FUNCTION_281_0();

  OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_302_0();

  return v5(v4, v5, v6, v7, v8, v9, v10, v11);
}

uint64_t sub_24DE185C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_245_0();
  OUTLINED_FUNCTION_496();
  sub_24DE205DC(v10[86], &qword_27F1B4B50);
  v11 = v10[94];
  v12 = v10[90];
  v13 = v10[89];
  v14 = v10[86];
  OUTLINED_FUNCTION_391_0();

  OUTLINED_FUNCTION_1327();
  OUTLINED_FUNCTION_230_0();

  return v16(v15, v16, v17, v18, v19, v20, v21, v22, a9, a10);
}

uint64_t sub_24DE18678()
{
  OUTLINED_FUNCTION_113_0();
  OUTLINED_FUNCTION_15_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_164(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_3_0(v1);

  return sub_24DE17F30();
}

uint64_t sub_24DE18704()
{
  OUTLINED_FUNCTION_227_0();
  memcpy(__dst, v0, sizeof(__dst));
  memcpy(__src, v0, sizeof(__src));
  nullsub_1(__src);
  sub_24DDE8904(__src, v1);
  return sub_24DDE5F64(__dst, &v3);
}

uint64_t Client.postWebObjectsGKChallengeService_woaWaChallengeInvite(_:)()
{
  OUTLINED_FUNCTION_441();
  v1[25] = v2;
  v1[26] = v0;
  memcpy(v1 + 2, v3, 0xB6uLL);
  v4 = OUTLINED_FUNCTION_183();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_24DE187D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_341_0();
  OUTLINED_FUNCTION_1060();
  v10 = *(v9 + 208);
  v11 = sub_24DDDAF18();
  v12 = OUTLINED_FUNCTION_244_0(v11);
  v13 = OUTLINED_FUNCTION_179_0(v12);
  OUTLINED_FUNCTION_178_0(v13);
  v14 = *(MEMORY[0x277D37998] + 4);

  v15 = swift_task_alloc();
  v16 = OUTLINED_FUNCTION_177_0(v15);
  type metadata accessor for Operations.PostWebObjectsGKChallengeService_woaWaChallengeInvite.Output(v16);
  OUTLINED_FUNCTION_167_0();
  *v14 = v17;
  OUTLINED_FUNCTION_176_0(v18);
  OUTLINED_FUNCTION_2_0(v19);
  OUTLINED_FUNCTION_231_0();

  return MEMORY[0x282197F10](v20, v21, v22, v23, v24, v25, v26, v27, a9);
}

uint64_t sub_24DE188C0()
{
  OUTLINED_FUNCTION_113_0();
  OUTLINED_FUNCTION_552();
  v3 = v2;
  OUTLINED_FUNCTION_167();
  *v4 = v3;
  v6 = *(v5 + 240);
  v7 = *v1;
  OUTLINED_FUNCTION_162();
  *v8 = v7;
  *(v3 + 248) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_535();

    return MEMORY[0x2822009F8](v9, v10, v11);
  }

  else
  {
    OUTLINED_FUNCTION_346_0();

    OUTLINED_FUNCTION_27_0();

    return v12();
  }
}

uint64_t sub_24DE189F4()
{
  OUTLINED_FUNCTION_441();
  v1 = v0[28];
  v2 = v0[29];
  v3 = v0[27];

  OUTLINED_FUNCTION_1327();
  v5 = v0[31];

  return v4();
}

void sub_24DE18A64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_645();
  a19 = v22;
  a20 = v23;
  v27 = OUTLINED_FUNCTION_166_0(v24, v25, v26);
  v28 = OUTLINED_FUNCTION_443(v27);
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_110_0(v31);
  v32 = sub_24DE22840();
  v33 = OUTLINED_FUNCTION_443(v32);
  v35 = *(v34 + 64);
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_7_0();
  v142[3] = v36;
  OUTLINED_FUNCTION_122_0();
  v37 = sub_24DE22A90();
  v146 = OUTLINED_FUNCTION_27(v37);
  v147[0] = v38;
  v40 = *(v39 + 64);
  MEMORY[0x28223BE20](v146);
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_25_0();
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_25_0();
  v43 = MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_17_0(v43, v44, v45, v46, v47, v48, v49, v50, v135);
  MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_25_0();
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_25_0();
  MEMORY[0x28223BE20](v53);
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_25_0();
  MEMORY[0x28223BE20](v54);
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_25_0();
  MEMORY[0x28223BE20](v55);
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_25_0();
  v57 = MEMORY[0x28223BE20](v56);
  OUTLINED_FUNCTION_63_0(v57, v58, v59, v60, v61, v62, v63, v64, v136);
  MEMORY[0x28223BE20](v65);
  OUTLINED_FUNCTION_46_0();
  v67 = MEMORY[0x28223BE20](v66);
  OUTLINED_FUNCTION_52_0(v67, v68, v69, v70, v71, v72, v73, v74, v137);
  MEMORY[0x28223BE20](v75);
  OUTLINED_FUNCTION_39_0();
  v144 = v76;
  OUTLINED_FUNCTION_4_0();
  v77 = *(v21 + 128);
  OUTLINED_FUNCTION_223_0(*(v21 + 136));
  v78 = *(v21 + 144);
  v79 = *(v21 + 152);
  v80 = *(v21 + 160);
  v81 = *(v21 + 168);
  v82 = *(v21 + 180);
  v83 = *(v21 + 176);
  OUTLINED_FUNCTION_327_0();
  OUTLINED_FUNCTION_75_0();
  sub_24DE22A20();
  if (v145)
  {
    v84 = OUTLINED_FUNCTION_199_0();
    v85(v84);
  }

  else
  {
    v86 = OUTLINED_FUNCTION_22_0(v142);
    v141 = v87;
    v87(v86);
    OUTLINED_FUNCTION_399_0();
    OUTLINED_FUNCTION_310_0();
    MEMORY[0x253039240]();
    v88 = v143;
    OUTLINED_FUNCTION_83_0();
    sub_24DE22850();
    OUTLINED_FUNCTION_170_0();
    OUTLINED_FUNCTION_274_0();
    OUTLINED_FUNCTION_273_0();
    v89 = OUTLINED_FUNCTION_241_0();
    OUTLINED_FUNCTION_106_0(v89, v90);
    OUTLINED_FUNCTION_12_0();
    OUTLINED_FUNCTION_72_0();
    v91 = v145;
    sub_24DE22A50();
    if (v91)
    {

      OUTLINED_FUNCTION_158_0();
      OUTLINED_FUNCTION_144_0();
      v92();
      v93 = OUTLINED_FUNCTION_125_0();
      v20(v93);
      OUTLINED_FUNCTION_47_0();
      (*(v94 + 8))(v88, v79);
    }

    else
    {

      OUTLINED_FUNCTION_158_0();
      OUTLINED_FUNCTION_144_0();
      v95();
      v96 = OUTLINED_FUNCTION_116_0();
      v20(v96);
      OUTLINED_FUNCTION_114_0(&v144);
      sub_24DE22930();
      OUTLINED_FUNCTION_243_0();
      v97 = OUTLINED_FUNCTION_241_0();
      OUTLINED_FUNCTION_106_0(v97, v98);
      OUTLINED_FUNCTION_11_0();
      OUTLINED_FUNCTION_71_0();
      sub_24DE22A50();
      v145 = v79;
      OUTLINED_FUNCTION_37_0();

      v99 = OUTLINED_FUNCTION_732();
      v147[0] = v80;
      v141(v99);
      v100 = OUTLINED_FUNCTION_79_0();
      v20(v100);
      OUTLINED_FUNCTION_269_0();
      OUTLINED_FUNCTION_120_0();
      v101 = OUTLINED_FUNCTION_335_0();
      OUTLINED_FUNCTION_106_0(v101, v102);
      OUTLINED_FUNCTION_57_0();
      OUTLINED_FUNCTION_102_0();
      OUTLINED_FUNCTION_165_0();

      v103 = OUTLINED_FUNCTION_97_0();
      v141(v103);
      v104 = OUTLINED_FUNCTION_79_0();
      v20(v104);
      OUTLINED_FUNCTION_114_0(&a17);
      sub_24DE22930();
      OUTLINED_FUNCTION_90_0();
      v105 = OUTLINED_FUNCTION_173_0();
      OUTLINED_FUNCTION_106_0(v105, v106);
      OUTLINED_FUNCTION_18_0();
      OUTLINED_FUNCTION_175_0();
      OUTLINED_FUNCTION_212_0();

      OUTLINED_FUNCTION_43_0();
      v107();
      v108 = OUTLINED_FUNCTION_116_0();
      v20(v108);
      OUTLINED_FUNCTION_131_0(&a14);
      OUTLINED_FUNCTION_89_0();
      v109 = OUTLINED_FUNCTION_241_0();
      OUTLINED_FUNCTION_106_0(v109, v110);
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_162_0();
      sub_24DE22A50();
      OUTLINED_FUNCTION_174_0();

      OUTLINED_FUNCTION_43_0();
      v111();
      v112 = OUTLINED_FUNCTION_116_0();
      v20(v112);
      OUTLINED_FUNCTION_114_0(&a11);
      sub_24DE22930();
      OUTLINED_FUNCTION_65_0();
      v113 = OUTLINED_FUNCTION_241_0();
      OUTLINED_FUNCTION_139_0(v113, v114);
      OUTLINED_FUNCTION_40_0();

      OUTLINED_FUNCTION_43_0();
      v115();
      v116 = OUTLINED_FUNCTION_116_0();
      v80(v116);
      OUTLINED_FUNCTION_114_0(&v153);
      sub_24DE22930();
      OUTLINED_FUNCTION_66_0();
      v117 = OUTLINED_FUNCTION_241_0();
      OUTLINED_FUNCTION_139_0(v117, v118);
      OUTLINED_FUNCTION_40_0();

      OUTLINED_FUNCTION_43_0();
      v119();
      v120 = OUTLINED_FUNCTION_116_0();
      v80(v120);
      OUTLINED_FUNCTION_131_0(&v152);
      OUTLINED_FUNCTION_88_0();
      v121 = OUTLINED_FUNCTION_241_0();
      OUTLINED_FUNCTION_106_0(v121, v122);
      OUTLINED_FUNCTION_0_0();
      OUTLINED_FUNCTION_162_0();
      sub_24DE22A50();
      OUTLINED_FUNCTION_165_0();

      OUTLINED_FUNCTION_43_0();
      v123();
      v124 = OUTLINED_FUNCTION_116_0();
      v20(v124);
      OUTLINED_FUNCTION_109_0();
      sub_24DE22930();
      OUTLINED_FUNCTION_151_0(v148);
      v125 = OUTLINED_FUNCTION_241_0();
      OUTLINED_FUNCTION_139_0(v125, v126);
      OUTLINED_FUNCTION_36_0();
      OUTLINED_FUNCTION_234_0();

      OUTLINED_FUNCTION_732();
      OUTLINED_FUNCTION_211_0(&v145);
      v151();
      v127 = OUTLINED_FUNCTION_116_0();
      v20(v127);
      OUTLINED_FUNCTION_131_0(&v146);
      OUTLINED_FUNCTION_241_0();
      OUTLINED_FUNCTION_118_0();
      sub_24DD75A24();
      OUTLINED_FUNCTION_203_0();
      v128 = OUTLINED_FUNCTION_62_0();
      (v151)(v128);
      v129 = OUTLINED_FUNCTION_116_0();
      v20(v129);
      OUTLINED_FUNCTION_311_0();
      if (v130)
      {
        v131 = (v138 | (v139 << 32));
        OUTLINED_FUNCTION_292_0(&v143);

        OUTLINED_FUNCTION_184_0(v147);
        sub_24DE22930();
        OUTLINED_FUNCTION_171_0();
        v147[1] = v132;
        v148[0] = &v151;
        v148[1] = v140;
        v150 = WORD2(v131) & 0x1FF;
        v149 = v138;
        OUTLINED_FUNCTION_335_0();
        OUTLINED_FUNCTION_118_0();
        sub_24DE1F990();
        OUTLINED_FUNCTION_10_0();
        OUTLINED_FUNCTION_191_0();
        sub_24DE22A80();
        OUTLINED_FUNCTION_340_0();
        v133 = OUTLINED_FUNCTION_153_0(v147);
        v82(v133);
        v134 = OUTLINED_FUNCTION_116_0();
        v131(v134);
      }
    }
  }

  OUTLINED_FUNCTION_80_0();
  OUTLINED_FUNCTION_644();
}