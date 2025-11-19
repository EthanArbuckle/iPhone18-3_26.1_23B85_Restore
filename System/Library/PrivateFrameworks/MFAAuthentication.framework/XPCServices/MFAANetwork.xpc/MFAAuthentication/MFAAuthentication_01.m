uint64_t sub_10004ABF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, int a19, unsigned int a20, char *a21, int a22)
{
  v24 = 2 * &a19;
  v25 = 742307843 * (((v24 | 0x3713896C) - &a19 + 1685470026) ^ 0x85AB49E3);
  a20 = v25 + 1827786530;
  LODWORD(a21) = 1471728200 - v25;
  HIDWORD(a21) = 1605 - v25;
  a22 = v25 ^ 0x46F03CCA;
  (*(v23 + 19224))(&a19);
  a21 = &a17;
  a22 = 2066391179 * (((v24 | 0x63757F98) - &a19 - 834322380) ^ 0x9E9D3DD4) + 1510;
  v26 = (*(v23 + 18968))(&a19);
  return (*(v23 + 8 * ((3184 * (a19 == 972359704)) ^ v22)))(v26);
}

uint64_t sub_10004AD0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  v24 = 1785193651 * ((v20 & 0xC5AFB940 | ~(v20 | 0xC5AFB940)) ^ 0x298CAA9F);
  *(v23 - 168) = v22;
  *(v23 - 160) = 0;
  *(v23 - 136) = (v18 + 1482) ^ v24;
  *(v23 - 184) = v19;
  *(v23 - 200) = &STACK[0x404];
  *(v23 - 152) = 0;
  *(v23 - 144) = a18;
  *(v23 - 176) = 798124000 - v24;
  v25 = (*(v21 + 8 * (v18 ^ 0x89D)))(v23 - 200);
  v26 = *(v23 - 192);
  LODWORD(STACK[0x564]) = v26;
  return (*(v21 + 8 * ((1351 * (v26 == ((4 * v18) ^ 0x39F5065C) + ((4 * v18) ^ 0x184))) ^ v18)))(v25);
}

uint64_t sub_10004AE14()
{
  v0 = *(&off_100085FF0 + ((-109 * (dword_100089AF0 ^ 0x95 ^ qword_100089928)) ^ byte_100072050[byte_10006E900[(-109 * (dword_100089AF0 ^ 0x95 ^ qword_100089928))] ^ 0xAF]) - 153);
  v1 = *(v0 - 4);
  v2 = *(&off_100085FF0 + (byte_10007205C[(byte_10006E908[(-109 * ((qword_100089928 - v1) ^ 0x95)) - 8] ^ 0x11) - 12] ^ (-109 * ((qword_100089928 - v1) ^ 0x95))) - 81);
  v3 = *(v2 - 4) - v1 - &v5;
  *(v0 - 4) = 665663891 * v3 + 0x12CF57B8DBD63C6BLL;
  *(v2 - 4) = 665663891 * (v3 ^ 0xED30A8472429C395);
  v6 = (2066391179 * (((&v6 | 0x5AB8618B) - (&v6 & 0x5AB8618B)) ^ 0xF59FE393)) ^ 0x1E5;
  v7 = *(&off_100085FF0 + (byte_10006EC04[(byte_1000798E0[(-109 * ((*(v2 - 4) + *(v0 - 4)) ^ 0x95))] ^ 0x2B) - 4] ^ (-109 * ((*(v2 - 4) + *(v0 - 4)) ^ 0x95))) + 61);
  LOBYTE(v0) = -109 * ((*(v2 - 4) - *(v0 - 4)) ^ 0x95);
  return (*(*(&off_100085FF0 + ((-109 * (dword_100089AF0 ^ 0x95 ^ qword_100089928)) ^ byte_10006EC00[byte_1000798E0[(-109 * (dword_100089AF0 ^ 0x95 ^ qword_100089928))] ^ 0x2B]) - 87) + (byte_100076408[(byte_100072150[v0] ^ 0x21) - 8] ^ v0) + 2299))(&v6);
}

void sub_10004B134()
{
  v0 = STACK[0x228];
  *(v0 + 1560) = *STACK[0x308];
  *(v0 + 1552) = *STACK[0x338];
  v1 = STACK[0x220];
  v2 = STACK[0x410];
  *(*STACK[0x410] + 488) = *(STACK[0x220] + 8);
  *(*v2 + 480) = *v1;
  JUMPOUT(0x10004B1DCLL);
}

uint64_t sub_10004B714(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, unsigned int a6, int a7)
{
  v12 = v7 < v9;
  if (v12 == v8 + 1 > (a7 ^ (4 * v10) ^ a6))
  {
    v12 = a5 + v8 + 2 < v7;
  }

  return (*(v11 + 8 * ((7 * v12) ^ v10)))();
}

uint64_t sub_10004B7B0@<X0>(void *a1@<X0>, uint64_t a2@<X8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8, uint64_t a9, char a10, uint64_t a11, char a12, uint64_t a13, char a14, uint64_t a15, char a16, uint64_t a17, char a18, uint64_t a19, char a20, uint64_t a21, char a22, uint64_t a23, char a24)
{
  v34 = a1[4];
  v28 = a1[1];
  v29 = a1[2];
  v30 = v29[1];
  *(v27 - 112) = &a22;
  *(v27 - 104) = v28;
  *(v27 - 136) = a2;
  *(v27 - 128) = v29;
  *(v27 - 120) = (v26 + 225) ^ (((((v27 - 144) | 0x6B8057DD) + (~(v27 - 144) | 0x947FA822)) ^ 0x785CBBFC) * v24);
  *(v27 - 144) = v30;
  (*(v25 + 8 * (v26 + 1175)))(v27 - 144);
  *(v27 - 136) = &a18;
  *(v27 - 128) = v28;
  *(v27 - 144) = (v26 + 705) ^ (1037613739 * (((((v27 - 144) | 0xE7ACBAD2) ^ 0xFFFFFFFE) - (~(v27 - 144) | 0x1853452D)) ^ 0xC9516852));
  *(v27 - 120) = &a22;
  *(v27 - 112) = v29;
  (*(v25 + 8 * (v26 ^ 0xD84)))(v27 - 144);
  *(v27 - 120) = (v26 + 225) ^ (1785193651 * ((2 * ((v27 - 144) & 0x119B3AE0) - (v27 - 144) + 1852097821) ^ 0x7DB8293D));
  *(v27 - 144) = &a22;
  *(v27 - 136) = &a18;
  *(v27 - 128) = v29;
  *(v27 - 112) = &a14;
  *(v27 - 104) = v28;
  (*(v25 + 8 * (v26 ^ 0xD9F)))(v27 - 144);
  *(v27 - 136) = &a18;
  *(v27 - 128) = v29;
  *(v27 - 144) = &a14;
  *(v27 - 120) = (v26 + 225) ^ (1785193651 * ((((v27 - 144) | 0x85AC74C2) - (v27 - 144) + ((v27 - 144) & 0x7A538B38)) ^ 0x967098E2));
  *(v27 - 112) = &a8;
  *(v27 - 104) = v28;
  (*(v25 + 8 * (v26 ^ 0xD9F)))(v27 - 144);
  *(v27 - 144) = &a8;
  *(v27 - 136) = &a18;
  *(v27 - 128) = v29;
  *(v27 - 112) = &a12;
  *(v27 - 104) = v28;
  *(v27 - 120) = (v26 + 225) ^ (1785193651 * ((((v27 - 144) | 0xCA637154) - (v27 - 144) + ((v27 - 144) & 0x359C8EA8)) ^ 0xD9BF9D74));
  (*(v25 + 8 * (v26 + 1175)))(v27 - 144);
  *(v27 - 144) = &a12;
  *(v27 - 136) = &a18;
  *(v27 - 128) = v29;
  *(v27 - 120) = (v26 + 225) ^ (1785193651 * ((((v27 - 144) | 0xF1AEA6C5) + (~(v27 - 144) | 0xE51593A)) ^ 0xE2724AE4));
  *(v27 - 112) = &a20;
  *(v27 - 104) = v28;
  (*(v25 + 8 * (v26 ^ 0xD9F)))(v27 - 144);
  *(v27 - 120) = (v26 + 225) ^ (1785193651 * ((v27 - 144) ^ 0x13DCEC20));
  *(v27 - 112) = &a10;
  *(v27 - 104) = v28;
  *(v27 - 144) = &a20;
  *(v27 - 136) = &a18;
  *(v27 - 128) = v29;
  (*(v25 + 8 * (v26 ^ 0xD9F)))(v27 - 144);
  *(v27 - 112) = &a16;
  *(v27 - 104) = v28;
  *(v27 - 136) = &a18;
  *(v27 - 128) = v29;
  *(v27 - 144) = &a10;
  *(v27 - 120) = (v26 + 225) ^ (1785193651 * ((((v27 - 144) | 0xB38CF121) + (~(v27 - 144) | 0x4C730EDE)) ^ 0xA0501D00));
  (*(v25 + 8 * (v26 + 1175)))(v27 - 144);
  *(v27 - 144) = &a16;
  *(v27 - 136) = &a18;
  *(v27 - 112) = &a18;
  *(v27 - 104) = v28;
  *(v27 - 128) = v29;
  *(v27 - 120) = (v26 + 225) ^ (1785193651 * ((v27 + 669163580 - 2 * ((v27 - 144) & 0x27E2A0CC)) ^ 0x343E4CEC));
  (*(v25 + 8 * (v26 + 1175)))(v27 - 144);
  v31 = *v29;
  *(v27 - 128) = &a24;
  *(v27 - 136) = (v26 - 215) ^ (1785193651 * ((2 * ((v27 - 144) & 0x1F5BA7F8) - (v27 - 144) + 1621383168) ^ 0x7378B420));
  *(v27 - 144) = v31;
  (*(v25 + 8 * (v26 ^ 0xDF2)))(v27 - 144);
  *(v27 - 136) = v34;
  *(v27 - 140) = v26 + 1388665877 * (((v27 - 144) & 0x24FBE4D0 | ~((v27 - 144) | 0x24FBE4D0)) ^ 0x56A979C3) + 93;
  v32 = (*(v25 + 8 * (v26 + 1189)))(v27 - 144);
  return (*(v25 + 8 * ((122 * (*(v27 - 144) + ((v26 - 327407541) & 0x1383D7BE ^ 0xDFCCBE39) < ((v26 - 1063) ^ 0x7FFFFF82u))) ^ v26)))(v32);
}

void sub_10004BC60(uint64_t a1)
{
  v3 = *(*(a1 + 16) + 4) == 1494181296 || *(*a1 + 4) == 1494181296;
  v1 = *(a1 + 8) + 1361651671 * ((a1 - 406323965 - 2 * (a1 & 0xE7C7FD03)) ^ 0x34E50D8F);
  __asm { BRAA            X13, X17 }
}

uint64_t sub_10004BD94(double a1, int8x16_t a2, double a3, double a4, int8x16_t a5, int8x16_t a6, int8x16_t a7, uint64_t a8, int a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, int32x4_t a30)
{
  v34 = (v33 + 908);
  v35 = vld1q_dup_f32(v34);
  a2.i64[0] = *(v33 + 912);
  a2.i32[2] = *(v33 + 920);
  v36 = vextq_s8(v35, a2, 0xCuLL);
  v37 = a2;
  v37.i32[3] = *(v33 + 924);
  v38 = veorq_s8(vshrq_n_u32(vorrq_s8(vandq_s8(v37, a7), vandq_s8(v36, a5)), 1uLL), *v33);
  v36.i32[0] = *(v32 + 4 * (*(v33 + 912) & (((v30 + 1626576426) & 0xB59DBEAD) - 1055)));
  v36.i32[1] = *(v32 + 4 * (*(v33 + 916) & 1));
  v36.i32[2] = *(v32 + 4 * (*(v33 + 920) & 1));
  v36.i32[3] = *(v32 + 4 * (v37.i8[12] & 1));
  *(v33 + 908) = veorq_s8(vaddq_s32(vaddq_s32(v38, a30), vmvnq_s8(vandq_s8(vaddq_s32(v38, v38), a6))), v36);
  return (*(v31 + 8 * (a9 + v30 - 58)))();
}

uint64_t sub_10004BED4@<X0>(uint64_t a1@<X0>, char a2@<W8>)
{
  v7 = v4 - 1;
  *(a1 + v7) = *(v3 + v7);
  return (*(v6 + 8 * ((99 * (((v5 ^ (a2 - 103)) ^ (v7 == 0)) & 1)) ^ (v2 + v5 + 864))))();
}

uint64_t sub_10004BFB4@<X0>(uint64_t a1@<X8>)
{
  v6 = *(a1 + v1 + 72);
  v7 = ((2 * v1) & 0xBDDFFBF8) + (v1 ^ 0xDEEFFDFF) + 554697217;
  *(v3 + v7) = ((v2 + 109) | 8) ^ 0x7B ^ v6;
  *(v3 + v7 + 1) = (BYTE1(v6) ^ 0xB9) - (v4 & (2 * (BYTE1(v6) ^ 0xB9))) - 89;
  *(v3 + v7 + 2) = (BYTE2(v6) ^ 0xC8) - (v4 & (v6 >> 15)) - 89;
  *(v3 + v7 + 3) = (HIBYTE(v6) ^ 0xC) - (v4 & (2 * (HIBYTE(v6) ^ 0xC))) - 89;
  return (*(v5 + 8 * ((210 * (v1 + 4 < *(a1 + 92))) ^ v2)))();
}

uint64_t sub_10004C084(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  *(v19 - 136) = (v18 - 880) ^ (((((2 * (v17 ^ 0xF442DD04)) | 0xD7D0F70E) - (v17 ^ 0xF442DD04) - 1810398087) ^ 0xC3E7F206) * v14);
  *(v19 - 128) = v16;
  *(v19 - 120) = a14;
  v20 = (*(v15 + 8 * (v18 + 493)))(v19 - 136);
  return (*(v15 + 8 * (((*(v19 - 132) == 598934287) * ((v18 - 1752938236) & 0x687BB3B7 ^ 0x3A3)) ^ v18)))(v20);
}

uint64_t sub_10004C138@<X0>(int a1@<W2>, int a2@<W3>, int a3@<W8>, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, unsigned int a40)
{
  v44 = ((*v42 & 0x7FFFFFFE | v42[623] & 0x80000000) >> ((v43 + a3 + 21) & 0xCA ^ (v43 + 1))) ^ v42[396];
  v42[623] = (v44 + a1 - (a2 & (2 * v44))) ^ *(v41 + 4 * (*v42 & 1));
  return (*(v40 + 8 * ((3317 * (a40 > 0x26F)) ^ a3)))();
}

uint64_t sub_10004C490(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v16 = (a11 + v13);
  *(v16 - 1) = v15;
  *v16 = v15;
  return (*(v14 + 8 * ((((v12 & 0xFFFFFFFFFFFFFFF0) == 16) * ((v11 - 481) ^ 0x1C5)) ^ v11)))();
}

void sub_10004C51C(uint64_t a1)
{
  v1 = *(a1 + 4) - 1564307779 * ((1625765565 - (a1 | 0x60E736BD) + (a1 | 0x9F18C942)) ^ 0x8150551);
  v2 = *(a1 + 8);
  v6 = v1 - 2066391179 * ((196997368 - (&v4 | 0xBBDF0F8) + (&v4 | 0xF4420F07)) ^ 0x5B658D1F) - 1398;
  v4 = v2;
  v3 = *(&off_100085FF0 + v1 - 2096) - 8;
  (*&v3[8 * (v1 ^ 0x17D)])(&v4);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_10004C63C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  *(v70 - 200) = (v66 - 1197043147) ^ (1785193651 * ((-131880458 - (v68 | 0xF823A9F6) + (v68 | 0x7DC5609)) ^ 0x1400BA29));
  (*(v69 + 8 * (v66 + 1608)))(v70 - 200);
  LODWORD(STACK[0x210]) += v66 ^ 0x2E0;
  v71 = 1785193651 * (((v68 | 0x4D13BD3F) - (v68 & 0x4D13BD3F)) ^ 0x5ECF511F);
  *(v70 - 200) = 87 - v71;
  *(v70 - 196) = (v66 + 216) ^ v71;
  *(v70 - 184) = a65;
  *(v70 - 176) = a66;
  (*(v69 + 8 * (v66 ^ 0xBAF)))(v70 - 200);
  LODWORD(STACK[0x444]) = *(v70 - 192);
  LODWORD(STACK[0x214]) = 268435459;
  LODWORD(STACK[0x2B4]) = v67;
  return sub_10001988C();
}

uint64_t sub_10004C75C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, int a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char *a23)
{
  LODWORD(a20) = (v24 + 66) ^ ((((&a20 | 0x48D47F5B) - &a20 + (&a20 & 0xB72B80A0)) ^ 0x5CFBE2C0) * v23);
  a23 = &a17;
  a21 = a19;
  (*(v26 + 8 * (v24 + 1427)))(&a20);
  LODWORD(a20) = (v24 + 66) ^ (((682906719 - (&a20 | 0x28B4545F) + (&a20 | 0xD74BABA0)) ^ 0xC364363B) * v23);
  a21 = a19;
  a23 = &a14;
  (*(v26 + 8 * (v24 ^ 0xAAD)))(&a20);
  a20 = a19;
  HIDWORD(a21) = (v24 - 535) ^ ((((&a20 | 0xA24A845E) - (&a20 & 0xA24A845E)) ^ 0x2FE7E6B2) * v25);
  v27 = (*(v26 + 8 * (v24 ^ 0xAFC)))(&a20);
  return (*(v26 + 8 * (((a21 == 972359704) * ((v24 - 1493669242) & 0x13FF ^ 0x920)) ^ v24)))(v27);
}

uint64_t sub_10004CC98(uint64_t a1, uint64_t a2)
{
  v2 = &v7 ^ qword_100089AF8 ^ qword_100089928;
  qword_100089AF8 = 665663891 * v2 + 0x12CF57B8DBD63C6BLL;
  qword_100089928 = 665663891 * (v2 ^ 0xED30A8472429C395);
  v3 = *(a2 + 4);
  v4 = -109 * ((qword_100089928 - (-109 * v2 + 107)) ^ 0x95);
  v5 = *(&off_100085FF0 + (v4 ^ byte_100072050[byte_10006E900[v4] ^ 0xAF]) - 192) - 8;
  if (v3 == 1521934366)
  {
    __asm { BRAA            X1, X17 }
  }

  if (v3 == 1521934373)
  {
    __asm { BRAA            X1, X17 }
  }

  return 4294925278;
}

uint64_t sub_10004CFAC(uint64_t a1, int a2, int a3)
{
  if (v4 >= 0)
  {
    v6 = v4;
  }

  else
  {
    v6 = -v4;
  }

  v7 = v3 + a3 + ((a2 + 857657420) & 0xCCE12FBF);
  v9 = v7 - 1413;
  v8 = (v7 - 1413) < 0;
  v10 = 1413 - v7;
  if (v8)
  {
    v11 = v10;
  }

  else
  {
    v11 = v9;
  }

  return (*(v5 + 8 * (((v6 > v11) * ((a2 + 857657420) ^ 0x331ED83E)) ^ a2)))();
}

uint64_t sub_10004D114(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v73 = (*(v71 + 8 * (v70 ^ 0xC89)))(v72);
  STACK[0x520] = a70 - 1712;
  LODWORD(STACK[0x4AC]) = -972401716;
  return (*(v71 + 8 * ((((v70 - 1245658597) & 0x4A3F3CFD ^ 0x48A) * (STACK[0x4D0] == 0)) ^ (v70 + 517))))(v73);
}

uint64_t sub_10004D19C(uint64_t a1, uint64_t a2, unint64_t a3, int a4)
{
  v8 = v6 < a3;
  if (v8 == ((a4 - 461201948) & 0x1B7D5FD9 ^ 0x3C8uLL) + v5 > 0xFFFFFFFF664C0D6DLL)
  {
    v8 = ((a4 - 432) ^ (v4 + 2250)) + v5 < v6;
  }

  return (*(v7 + 8 * (a4 ^ (16 * !v8))))();
}

void sub_10004D210(uint64_t a1)
{
  v1 = *(a1 + 64) ^ (1785193651 * ((((2 * a1) | 0x96D81652) - a1 + 882111703) ^ 0xD8B0E709));
  __asm { BRAA            X9, X17 }
}

void sub_10004D480(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30)
{
  *(v33 - 120) = (v32 + 1096) ^ (((v33 - 1254109688 - 2 * ((v33 - 144) & 0xB53FCE98)) ^ 0xA6E322B8) * v30);
  *(v33 - 136) = &a16;
  *(v33 - 128) = v31;
  *(v33 - 112) = &a30;
  *(v33 - 104) = a12;
  *(v33 - 144) = &a30;
  JUMPOUT(0x10002A290);
}

uint64_t sub_10004D5AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  *(v18 - 136) = (v17 - 1312) ^ (((v18 + 482914549 - 2 * ((v18 - 136) & 0x1CC8B17D)) ^ 0x4085E5F8) * v15);
  *(v18 - 128) = &a15;
  *(v18 - 120) = a14;
  v19 = (*(v16 + 8 * (v17 ^ 0x4F)))(v18 - 136);
  return (*(v16 + 8 * (((*(v18 - 132) != ((v17 - 20) ^ 0x23B30B8A)) * ((v17 + 753915470) & 0xD31029BE ^ 0x899)) ^ v17)))(v19);
}

void sub_10004D7AC(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41, __int16 a42, char a43)
{
  v45 = *(v44 + 96);
  if (v45 == 1)
  {
    v49 = *(v44 + 64);
    v48 = *(v44 + 68);
    *(v44 + 56) = (8 * (v48 + (a43 & 0xFE ^ (2 * v48) & 0xA ^ 0xF1)) - 80) ^ 0xF;
    *(v44 + 57) = (v48 >> 5) ^ 0xA7;
    *(v44 + 58) = (v48 >> 13) ^ 0xA7;
    *(v44 + 59) = (v48 >> 21) ^ 0xA7;
    *(v44 + 60) = ((__PAIR64__(v49, v48) >> 29) - 2 * ((v48 & 0x20000000) != 0) + 1) ^ 0xA6;
    *(v44 + 61) = (v49 >> 5) ^ 0xA7;
    *(v44 + 62) = (v49 >> 13) ^ 0xA7;
    v47 = a2 ^ (v49 >> 21);
  }

  else
  {
    if (v45 != 2)
    {
      goto LABEL_6;
    }

    v47 = *(v44 + 64);
    v46 = *(v44 + 68);
    *(v44 + 56) = (v47 >> 21) - (v43 & (v47 >> 20)) - 89;
    *(v44 + 57) = (a41 & 0xFE) + (v47 >> 13) - (v43 & (v47 >> 12)) - 71;
    *(v44 + 58) = (v47 >> 5) - (v43 & (v47 >> 4)) - 89;
    *(v44 + 59) = (__PAIR64__(v47, v46) >> 29) - (v43 & (2 * (__PAIR64__(v47, v46) >> 29))) - 89;
    *(v44 + 60) = (v46 >> 21) - (v43 & (v46 >> 20)) - 89;
    *(v44 + 61) = (v46 >> 13) - (v43 & (v46 >> 12)) - 89;
    *(v44 + 62) = (v46 >> 5) - (v43 & (v46 >> 4)) - 89;
    LOBYTE(v47) = (8 * (v46 + (~(2 * v46) | 0xEF)) - 56) ^ 0x67;
  }

  *(v44 + 63) = v47;
LABEL_6:
  JUMPOUT(0x1000432B0);
}

void sub_10004D978(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, int a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38)
{
  if (((a33 - v38) | (v38 - a33)) > v39 + ((v38 - 1607685880) | 0x49420640) - 624)
  {
    v42 = 0x80000000;
  }

  else
  {
    v42 = 0x7FFFFFFF;
  }

  *v41 = v42;
  (*(v40 + 8 * (v38 + 2337)))(a38);
  JUMPOUT(0x10004D9E0);
}

uint64_t sub_10004DA34@<X0>(int a1@<W1>, uint64_t a2@<X8>, int8x16_t a3@<Q0>, int8x16_t a4@<Q1>, int8x16_t a5@<Q4>, int8x16_t a6@<Q5>, int8x16_t a7@<Q6>, int32x4_t a8@<Q7>)
{
  v13 = v12 + 4 * v8;
  a4.i64[0] = *(v13 + 4);
  a4.i32[2] = *(v13 + 12);
  v14 = vextq_s8(a3, a4, 0xCuLL);
  v15 = a4;
  v15.i32[3] = *(v12 + 4 * (v8 + a2) - 1904);
  v16 = veorq_s8(vshrq_n_u32(vorrq_s8(vandq_s8(v15, a7), vandq_s8(v14, a5)), 1uLL), *(v13 + 1588));
  v14.i32[0] = *(v11 + 4 * (*(v13 + 4) & 1));
  v14.i32[1] = *(v11 + 4 * (*(v13 + 8) & 1));
  v14.i32[2] = *(v11 + 4 * (*(v13 + 12) & 1));
  v14.i32[3] = *(v11 + 4 * (v15.i8[12] & 1));
  *v13 = veorq_s8(vaddq_s32(vsubq_s32(v16, vandq_s8(vaddq_s32(v16, v16), a6)), a8), v14);
  return (*(v10 + 8 * ((2016 * (v8 == 220)) ^ (a1 + v9 - 423))))();
}

void sub_10004DBD8(uint64_t a1)
{
  v2 = *(&off_100085FF0 + ((-109 * ((qword_100089928 - dword_100089B48) ^ 0x95)) ^ byte_100072050[byte_10006E900[(-109 * ((qword_100089928 - dword_100089B48) ^ 0x95))] ^ 0xE9]) - 123);
  v3 = *(&off_100085FF0 + (byte_100072050[byte_10006E900[(-109 * ((qword_100089928 + *v2) ^ 0x95))] ^ 0xE9] ^ (-109 * ((qword_100089928 + *v2) ^ 0x95))) - 141);
  v4 = 665663891 * (((*(v3 - 4) ^ *v2) - &v6) ^ 0xED30A8472429C395);
  *v2 = v4;
  *(v3 - 4) = v4;
  LODWORD(v3) = *v2;
  v5 = *(&off_100085FF0 + ((-109 * ((qword_100089928 - dword_100089B48) ^ 0x95)) ^ byte_100076400[byte_100072150[(-109 * ((qword_100089928 - dword_100089B48) ^ 0x95))] ^ 0x7D]) - 26) - 8;
  (*&v5[8 * (byte_10006EC04[(byte_1000798E0[(-109 * (v3 ^ 0x95 ^ v4))] ^ 0xE1) - 4] ^ (-109 * (v3 ^ 0x95 ^ v4))) + 17128])(*(&off_100085FF0 + ((-109 * ((v4 + v3) ^ 0x95)) ^ byte_100072050[byte_10006E900[(-109 * ((v4 + v3) ^ 0x95))] ^ 0xAF]) - 121) - 8, sub_10004AE14);
  __asm { BRAA            X10, X17 }
}

uint64_t sub_10004DE7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  *(v20 - 128) = v16;
  *(v20 - 120) = &a15;
  *(v20 - 136) = (v19 - 493) ^ (((((v20 - 136) ^ 0x85E9580E | 0xCF8C91B7) - ((v20 - 136) ^ 0x85E9580E) + (((v20 - 136) ^ 0x85E9580E) & 0x30736E48)) ^ 0x16289D3C) * v15);
  v21 = (*(v17 + 8 * (v19 ^ 0xDB0)))(v20 - 136);
  return (*(v17 + 8 * (((*(v20 - 132) > ((91 * (v19 ^ 0x56F)) ^ (v18 - 719))) * (v19 ^ 0x672)) ^ v19)))(v21);
}

uint64_t sub_10004DF38()
{
  v3 = (v0 - 1310500425) & 0x64ADF7DF;
  v4 = v1[623] + v3 + ((v0 + 378622759) ^ 0xFFFFFD91);
  if (v2 - (v0 + 378622759) < ~(v0 + 378622759))
  {
    ++v4;
  }

  *v1 = v4 - 222;
  return sub_100054DB8(v3);
}

uint64_t sub_10004E038@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(*(a1 + 96) + 800) = 64;
  *(*(a1 + 96) + 804) = 1494181296;
  *(*(a1 + 96) + 808) = *(a1 + 96) + 816;
  v4 = *(a2 + 8) + (*(a2 + 4) - v3);
  v5 = 1082434553 * ((760791000 - (&v7 | 0x2D58BFD8) + (&v7 | 0xD2A74027)) ^ 0x49E0B6AD);
  v7 = *(a1 + 96) + 800;
  v9 = v4;
  v10 = v5 ^ 0x517;
  v11 = v3 - v5 - 701133053;
  (*(a3 + 19064))(&v7);
  return (-1313399109 * v8 - 454391497);
}

uint64_t sub_10004E148@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v5 = *(a1 + v2 - 1 - 31);
  v6 = a2 + v2 - 1;
  *(v6 - 15) = *(a1 + v2 - 1 - 15);
  *(v6 - 31) = v5;
  return (*(v4 + 8 * ((856 * (((v3 - 1333904717) & 0x4F81BDFB) - 331 == (v2 & 0xFFFFFFE0))) ^ (v3 - 850))))();
}

uint64_t sub_10004E2B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33, void *a34, uint64_t a35, uint64_t a36, _DWORD *a37, uint64_t a38, uint64_t a39, unsigned int a40)
{
  v45 = 1109941777 * ((*(*a34 + (*a37 & 0x79274B08)) ^ (a39 + 4 * (v43 ^ v40 ^ a40))) & 0x7FFFFFFF);
  v46 = v45 ^ HIWORD(v45);
  v47 = 1109941777 * v46;
  v48 = 1578172416 * v46;
  v49 = 4 * (v47 >> (a33 & 0xBB ^ 0x82));
  v50 = *(*(&off_100085FF0 + (v41 ^ (v41 - 30))) + v49 - 4);
  v51 = *(*(&off_100085FF0 + (v41 ^ (v41 - 58))) + v49 - 8);
  if (v44 - (v42 - 620) < ~(v42 - 620))
  {
    v52 = -857024512;
  }

  else
  {
    v52 = -857024511;
  }

  *(a38 + 4 * (v43 ^ v40 ^ a40)) ^= *(a39 + 4 * (v43 ^ v40 ^ a40)) ^ v50 ^ *(*(&off_100085FF0 + v42 - 557) + (v47 >> (a33 & 0xBB ^ 0x82)) + 3) ^ v51 ^ v48 ^ v47 ^ ((v47 >> (a33 & 0xBB ^ 0x82)) * v52);
  return sub_10004E3BC();
}

uint64_t sub_10004E430@<X0>(unsigned int a1@<W8>)
{
  v9 = v7 - 1906 + v1 - 44;
  *(v8 - 228 + a1) = *(v6 + v1) - ((2 * *(v6 + v1)) & 0x4E) - 89;
  v10 = v4 + v1 + 1 < v2;
  if (v2 < v4 != v9 > v3)
  {
    v10 = v2 < v4;
  }

  return (*(v5 + 8 * ((v10 | (v10 << 6)) ^ v7)))();
}

uint64_t sub_10004E4A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v19 = ((2 * ((v18 - 144) & 0x69380378) - (v18 - 144) - 1765278592) ^ 0x411C324) * v17;
  *(v18 - 144) = v19 + ((v13 - 540231018) ^ 0xFFF7EA53 ^ (v15 - 791)) + (((v13 - 540231018) << ((v15 - 23) ^ 0x3C)) & 0xFFEFD6DC) + 784129784;
  *(v18 - 136) = v15 - v19 - 958;
  *(v18 - 128) = a13;
  v20 = (*(v14 + 8 * (v15 ^ 0xD73)))(v18 - 144);
  return (*(v14 + 8 * ((14 * (*(v18 - 140) == v16)) ^ v15)))(v20);
}

uint64_t sub_10004E574(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, int a26, int a27)
{
  v29 = LOBYTE(STACK[0x28C]);
  if (v29 == 1)
  {
    v33 = STACK[0x270];
    v34 = STACK[0x26C];
    v32 = HIDWORD(a10) & 0xEF5ACDFB;
    LOBYTE(STACK[0x264]) = (-8 * LOBYTE(STACK[0x270]) + 120) ^ ((BYTE4(a10) & 0xFB) + 108);
    LOBYTE(STACK[0x265]) = v27 ^ (v33 >> 5);
    LOBYTE(STACK[0x266]) = v27 ^ (v33 >> 13);
    LOBYTE(STACK[0x267]) = v27 ^ (v33 >> 21);
    LOBYTE(STACK[0x268]) = ((__PAIR64__(v34, v33) >> 29) - ((2 * (__PAIR64__(v34, v33) >> 29)) & 0xAE) + 87) ^ 0xF0;
    LOBYTE(STACK[0x269]) = v27 ^ (v34 >> 5);
    LOBYTE(STACK[0x26A]) = v27 ^ (v34 >> 13);
  }

  else
  {
    if (v29 != 2)
    {
      JUMPOUT(0x10004E6DCLL);
    }

    v30 = STACK[0x26C];
    v31 = STACK[0x270];
    LOBYTE(STACK[0x264]) = (LODWORD(STACK[0x26C]) >> 21) - (a10 & (2 * (LODWORD(STACK[0x26C]) >> 21))) - 89;
    LOBYTE(STACK[0x265]) = (v30 >> 13) - (a3 & (v30 >> 12)) - 89;
    v32 = v28 ^ 0x56F;
    LOBYTE(STACK[0x266]) = (v30 >> 5) - (a3 & (v30 >> 4)) - 89;
    LOBYTE(STACK[0x267]) = (__PAIR64__(v30, v31) >> 29) - (a3 & (2 * (__PAIR64__(v30, v31) >> 29))) - 89;
    LOBYTE(STACK[0x268]) = (~(v31 >> 20) | 0xB1) + (v31 >> 21) - 88;
    LOBYTE(STACK[0x269]) = (v31 >> 13) - (a3 & (v31 >> 12)) - 89;
    LOBYTE(STACK[0x26A]) = (v31 >> 5) - (a3 & (v31 >> 4)) - 89;
  }

  return sub_10004E6D4(v32, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27);
}

uint64_t sub_10004EB70@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  v8 = v5 - 1;
  *(v6 + v8) = *(v2 + (v8 & 0xF)) ^ *(a2 + v8) ^ *(v4 + (v8 & 0xF)) ^ ((v8 & 0xF) * (((a1 - 76) & 0xEF) + 9)) ^ *(v3 + (v8 & 0xF));
  return (*(v7 + 8 * ((1984 * (v8 != 0)) ^ (a1 + 283))))();
}

uint64_t sub_10004EBDC@<X0>(int a1@<W8>)
{
  v9 = v2 + 1;
  v10 = v1 < v3;
  *(*(v7 + 8) + 4 * v9) = *(*(v7 + 8) + 4 * (v9 + a1));
  if (v10 == v9 + v5 < v3)
  {
    v10 = v9 + v5 < v1;
  }

  return (*(v8 + 8 * ((v10 * v6) ^ v4)))();
}

uint64_t sub_10004ED24(uint64_t a1, int a2, int a3)
{
  v6 = v3 - 100548007 + ((a3 + 1372543377) & 0xAE30A37F);
  v7 = ((a2 + v5) > 0x9998007D) ^ (v6 < 0x6667FF82);
  v8 = a2 + v5 + 1718091650 > v6;
  if (v7)
  {
    v8 = (a2 + v5) > 0x9998007D;
  }

  return (*(v4 + 8 * ((247 * !v8) ^ a3)))();
}

uint64_t sub_10004EDBC()
{
  LODWORD(STACK[0x3F0]) = v0;
  STACK[0x520] -= 432;
  return (STACK[0x450])();
}

uint64_t sub_10004EF14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, int a12)
{
  *(v16 - 120) = v12;
  *(v16 - 128) = (v15 + 389) ^ (1785193651 * ((1994796324 - ((v16 - 136) | 0x76E62D24) + ((v16 - 136) | 0x8919D2DB)) ^ 0x9AC53EFB));
  *(v16 - 136) = v14;
  v17 = (*(v13 + 8 * (v15 ^ 0xB1E)))(v16 - 136);
  return (*(v13 + 8 * ((97 * (a12 < 1)) ^ (v15 + 96))))(v17);
}

uint64_t sub_10004F08C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  *v23 = v21 - 1;
  v26 = (v20 ^ 0x33E) + v21 + ((v20 + 1136) ^ a8);
  return (*(v24 + 8 * ((927 * (*(v25 + 48 * (*(a20 + 24 * v26) + a7) + 36) != v22)) ^ v20)))(a1, a2, a3, a4, *(a20 + 24 * v26 + 4));
}

uint64_t sub_10004F178@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  v8 = v5 - v7 + a2;
  v9 = v3 + v5 - v7;
  v10 = *(v9 - 15);
  *(v8 - 32) = *(v9 - 31);
  *(v8 - 16) = v10;
  return (*(v2 + 8 * (((a1 + v7 == v6) | (16 * (a1 + v7 == v6))) ^ v4)))();
}

uint64_t sub_10004F22C@<X0>(uint64_t result@<X0>, int a2@<W8>)
{
  *(v2 + 24) = a2;
  *(result + 8) = -972401875;
  return result;
}

uint64_t sub_10004F2A4(uint64_t a1)
{
  v7 = *(v5 - 228 + v1 + 72);
  v8 = ((2 * v1) & 0xFE93F9F8) + (v1 ^ 0xFF49FCFF);
  *(a1 + v6 + v3 - 647666871 + v8) = v7 ^ 0xD3;
  v9 = v8 + v2;
  *(a1 + v9) = (BYTE1(v7) ^ 0xB9) - ((2 * (BYTE1(v7) ^ 0xB9)) & 0x4E) - 89;
  *(a1 + v9 + 1) = (BYTE2(v7) ^ 0xC8) - ((v7 >> 15) & 0x4E) - 89;
  *(a1 + v9 + 2) = (HIBYTE(v7) ^ 0xC) - ((2 * (HIBYTE(v7) ^ 0xC)) & 0x4E) - 89;
  return (*(v4 + 8 * ((47 * (v1 + 4 >= *(v5 - 136))) ^ v3)))();
}

uint64_t sub_10004F370()
{
  v4 = STACK[0x480];
  v5 = 1082434553 * (((~(v3 - 200) & 0x48A8A874) - (~(v3 - 200) | 0x48A8A875)) ^ 0xD3EF5EFF);
  *(v3 - 184) = &STACK[0x3FC];
  *(v3 - 188) = v5 + v0 + 296702973 + ((v1 + 1827) ^ 0xDED);
  *(v3 - 160) = &STACK[0x4DC];
  *(v3 - 152) = v4;
  *(v3 - 168) = &STACK[0x3EC];
  *(v3 - 200) = &STACK[0x3A8];
  *(v3 - 176) = v5 + v1 + 583;
  v6 = (*(v2 + 8 * (v1 ^ 0x847)))(v3 - 200);
  return (*(v2 + 8 * ((660 * (*(v3 - 192) == 972359704)) | v1)))(v6);
}

void sub_10004F458(uint64_t a1)
{
  v2 = *(v1 + 8);
  *a1 = 0;
  *(a1 + 8) = 0x2907876429078764;
  *(a1 + 16) = 0xDC2AC81584B741DLL;
  *(a1 + 24) = 972359704;
  *v2 = a1;
  JUMPOUT(0x10004F490);
}

uint64_t sub_10004F4A4@<X0>(uint64_t a1@<X1>, int a2@<W8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, int a56, int a57, int a58)
{
  v64 = STACK[0x2A0];
  v65 = (*(v62 + 8 * (a2 + 1135)))(*STACK[0x2A0], a1, a58 ^ 0xC780F2A4, *(STACK[0x2A0] + 52) + (a2 ^ 0xCDAB1794), &STACK[0x1898], v59, v58, &STACK[0x1888]);
  if (v65 == 268435459)
  {
    return (*(v62 + 8 * (((LODWORD(STACK[0x210]) < (v61 ^ 0x4CEu) - 355) * (a57 - 2044)) ^ (v61 + 143))))(v65, v66);
  }

  if (v65)
  {
    v67 = 843532609 * ((2 * (v60 & 0x2CF2D3D8) - v60 + 1393372198) ^ 0xF4078A3);
    *(v63 - 200) = v61 - v67 + 222;
    LODWORD(STACK[0x214]) = v65;
    *(v63 - 184) = v65 - v67 - ((2 * v65) & 0x73EA1030) + (a56 & 0x686E8B67 ^ 0x39F5097E);
    *(v63 - 192) = &STACK[0x444];
    (*(v62 + 8 * (v61 + 964)))(v63 - 200);
    LODWORD(STACK[0x2B4]) = v58;
    return sub_10001988C();
  }

  else
  {
    (*(v62 + 8 * (v61 ^ 0xCFA)))(*STACK[0x218], v59, v58);
    v69 = *(v64 + 52);
    v70 = STACK[0x460];
    v71 = LODWORD(STACK[0x3D0]) ^ 0x7F75A37D;
    v72 = (2 * LODWORD(STACK[0x3D0])) & 0xFEEB46FA;
    v73 = 1785193651 * ((((2 * (v63 - 200)) | 0xBD93DEFE) - (v63 - 200) + 557191297) ^ 0xCD15035F);
    *(v63 - 168) = v61 - v73 - 1410;
    *(v63 - 184) = (1718997695 * (((a58 & 0x7FFFFFFF ^ 0xAA881D35) + 75701782) ^ ((a58 & 0x7FFFFFFF ^ 0x41AA491A) - 274642373) ^ (((v61 + 748855523) ^ a58 & 0x7FFFFFFF) - 2102811220)) + 2028250745) ^ v73;
    *(v63 - 176) = STACK[0x288];
    *(v63 - 200) = v73 + 1718997695 * v69 + 142419866;
    *(v63 - 148) = v73 + v71 + v72 - 1953570896;
    *(v63 - 160) = &STACK[0x1888];
    *(v63 - 192) = v70;
    v74 = (*(v62 + 8 * (v61 ^ 0xCF2)))(v63 - 200);
    v75 = *(v63 - 152);
    LODWORD(STACK[0x444]) = v75;
    return (*(v62 + 8 * ((58 * (v75 != 972359704)) ^ (v61 - 1165))))(v74);
  }
}

uint64_t sub_10004F534()
{
  v6 = (v3 + v0);
  *v6 = v5;
  v6[1] = v5;
  return (*(v4 + 8 * ((1069 * (((v2 - 1767) | 0x100u) - 804 == (v1 & 0x30))) ^ (v2 - 1455))))();
}

uint64_t sub_10004F5BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, int a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, unsigned int a25, unsigned int a26, uint64_t a27, int a28)
{
  v32 = 2066391179 * (((&a25 | 0x454B74AB) - &a25 + (&a25 & 0xBAB48B50)) ^ 0xEA6CF6B3);
  a27 = v30;
  a28 = v28 - v32 + 1080;
  a25 = v32 + ((2 * (v29 - a13 + 1481339933)) & 0xEBFFBCB6) + (((v28 ^ 0x4B5) + 1979702826) ^ (v29 - a13 + 1481339933)) - 1077084737;
  a26 = ((((v29 & 0xFFFFFFF0) + 16) ^ 0x3CB67FDB) - 951058891 + ((2 * ((v29 & 0xFFFFFFF0) + 16)) & 0x796CFFA0)) ^ v32;
  v35 = v28;
  v33 = (*(v31 + 8 * (v28 ^ 0xDFF)))(&a25);
  return (*(v31 + 8 * ((594 * (*(v30 + 24) == 972359704)) | v35)))(v33);
}

uint64_t sub_10004F7B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int *a6)
{
  v10 = (v6 - 1046) | 1;
  v11 = 41 * (v10 ^ 0x36A);
  *v13 = a1;
  *a6 = (v7 + v10 - 871) ^ v14;
  v17 = v11 - ((&v17 + 1150251821 - 2 * (&v17 & 0x448F732D)) ^ 0xC92211C1) * v8 + 758;
  v18 = v16;
  (*(v9 + 8 * (v11 + 1846)))(&v17);
  v18 = v15;
  v17 = (v11 ^ 0x653) - ((((&v17 | 0x12B62ACA) ^ 0xFFFFFFFE) - (~&v17 | 0xED49D535)) ^ 0x60E4B7D9) * v8 + 197;
  (*(v9 + 8 * (v11 ^ 0xB5E)))(&v17);
  return v7 ^ 0x39F50818u;
}

uint64_t sub_10004F99C@<X0>(uint64_t result@<X0>, int a2@<W8>)
{
  v3 = 199903165 - (((a2 ^ 0x6833F1B2) - 1748234674) ^ ((a2 ^ 0xC98EB216) + 913395178) ^ ((a2 ^ 0x98484BBC) + 1740092137 + v2 - 1249));
  **(result + 8) = v3 ^ ((v3 ^ 0x36E5BF1F) - 1933199650) ^ ((v3 ^ 0x832709FB) + 956760122) ^ ((v3 ^ 0x8EC6BF26) + 887535333) ^ ((v3 ^ 0x7EDBFFFF) - 990120386) ^ 0x7C2AFE25;
  return result;
}

uint64_t sub_10004FB3C(uint64_t a1, uint64_t a2)
{
  *(a1 + 40) = *(a2 + 4);
  *(a1 + 48) = *(a2 + 8);
  return 0;
}

void sub_10004FBA0()
{
  v0 = *(&off_100085FF0 + (byte_10006EC04[(byte_1000798E0[(-109 * ((qword_100089928 - dword_100089AD8) ^ 0x95))] ^ 0xE1) - 4] ^ (-109 * ((qword_100089928 - dword_100089AD8) ^ 0x95))) - 18);
  v1 = *(v0 - 4);
  v2 = *(&off_100085FF0 + (byte_100072050[byte_10006E900[(-109 * ((qword_100089928 - v1) ^ 0x95))] ^ 0xAF] ^ (-109 * ((qword_100089928 - v1) ^ 0x95))) - 201);
  v3 = *(v2 - 4) - v1 - &v8;
  v4 = 665663891 * v3 - 0x6901BB1410C78471;
  v5 = 665663891 * (v3 ^ 0xED30A8472429C395);
  *(v0 - 4) = v4;
  *(v2 - 4) = v5;
  LOBYTE(v5) = -109 * (*(v0 - 4) ^ 0x95 ^ v5);
  **(&off_100085FF0 + (v5 ^ byte_100072050[byte_10006E900[v5] ^ 0x11]) + 63) = 972359704;
  v6 = *(&off_100085FF0 + ((-109 * ((qword_100089928 - dword_100089AD8) ^ 0x95)) ^ byte_100076400[byte_100072150[(-109 * ((qword_100089928 - dword_100089AD8) ^ 0x95))] ^ 0x7D]) - 26) - 8;
  v7 = (*&v6[8 * ((-109 * (*(v0 - 4) ^ 0x95 ^ *(v2 - 4))) ^ byte_100072050[byte_10006E900[(-109 * (*(v0 - 4) ^ 0x95 ^ *(v2 - 4)))] ^ 0x7E]) + 18288])(512);
  *(*(&off_100085FF0 + ((-109 * ((*(v2 - 4) + *(v0 - 4)) ^ 0x95)) ^ byte_100072050[byte_10006E900[(-109 * ((*(v2 - 4) + *(v0 - 4)) ^ 0x95))] ^ 0x11]) + 67) - 4) = v7;
  __asm { BRAA            X8, X17 }
}

uint64_t sub_10004FDD8()
{
  v5 = ((v4 - 1612254548 - 2 * ((v4 - 144) & 0x9FE6F33C)) ^ 0x4A105B6) * v0;
  *(v4 - 128) = v3;
  *(v4 - 144) = v10;
  *(v4 - 136) = v8 - v5 - 140429550 + v2;
  *(v4 - 132) = v2 - v5 + 1426;
  (*(v1 + 8 * (v2 ^ 0xA58)))(v4 - 144);
  *v7 = v8;
  result = v9;
  *(v9 + 8) = 972359704;
  return result;
}

uint64_t sub_10004FEA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v12 = v9 | 0x100;
  v13 = v10 - 1;
  a9 = v13;
  *(a2 + v13) = (&a9 ^ 0xBA) * (&a9 + 17);
  v14 = *(v11 + 8 * (((v13 == ((v12 - 952) ^ 0x153)) | (8 * (v13 == ((v12 - 952) ^ 0x153)))) ^ (v12 - 36)));
  return v14(v14);
}

uint64_t sub_10004FF98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, _DWORD *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, unsigned int a19, int a20)
{
  *a6 = 0;
  *a7 = 0;
  a19 = -542396526 - 1388665877 * (((&a19 | 0xE105652D) + (~&a19 | 0x1EFA9AD2)) ^ 0x6CA807C0);
  v22 = (*(v21 + 17952))(&a19);
  return (*(v21 + 8 * ((731 * (a20 == v20)) ^ 0x446u)))(v22);
}

uint64_t sub_10005006C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30)
{
  *(v35 - 136) = &a30;
  *(v35 - 128) = v32;
  *(v35 - 120) = &a30;
  *(v35 - 112) = v33;
  *(v35 - 144) = (v34 + 695) ^ (1037613739 * ((((v35 - 144) | 0xBFFF5B) - (v35 - 144) + ((v35 - 144) & 0xFF4000A0)) ^ 0xD1BDD224));
  (*(v31 + 8 * (v34 + 1138)))(v35 - 144);
  v36 = 210068311 * ((((v35 - 144) | 0xF48E529) + (~(v35 - 144) | 0xF0B71AD6)) ^ 0x9D9EDA8C);
  *(v35 - 128) = a13;
  *(v35 - 136) = v34 - v36 - 1048;
  *(v35 - 144) = v30 + 243369210 + v36 + 3;
  v37 = (*(v31 + 8 * (v34 + 1145)))(v35 - 144);
  return (*(v31 + 8 * (((*(v35 - 140) == 529483433) * (((v34 - 522) | 0x100) ^ 0x3CD)) ^ v34)))(v37);
}

uint64_t sub_1000501F0@<X0>(unint64_t a1@<X8>)
{
  v5 = v2 < a1;
  if (v5 == (((v3 - 192) | 0x40u) ^ 0x60uLL) + v1 > ((v3 - 192) ^ 0x282u) - 982727174)
  {
    v5 = a1 + v1 + 1 < v2;
  }

  return (*(v4 + 8 * ((511 * !v5) ^ v3)))();
}

uint64_t sub_10005025C(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, int a15)
{
  v22 = (a4 + v15 - 69) ^ (a4 + 1940);
  v18 = 2066391179 * ((((v17 - 160) | 0x430033B5) + (~(v17 - 160) | 0xBCFFCC4A)) ^ 0xEC27B1AC);
  *(v17 - 160) = v15 - v18 + 303;
  *(v17 - 156) = a15 - v18 + 561362060;
  STACK[0x2D8] = &STACK[0x26C];
  v19 = (*(v16 + 8 * (v15 ^ 0x960)))(v17 - 160);
  v20 = STACK[0x2B0] & (v22 - 2093);
  *(&STACK[0x26C] + v20) = 39;
  return (*(v16 + 8 * ((1091 * (v20 > 0x37)) ^ v15)))(v19);
}

uint64_t sub_1000503A0()
{
  v5 = (v2 + v4 - 228);
  *v5 = 0xA7A7A7A7A7A7A7A7;
  v5[1] = 0xA7A7A7A7A7A7A7A7;
  return (*(v3 + 8 * ((((v1 & 0xFFFFFFFFFFFFFFF0) == 16) * ((v0 + 1521) ^ 0x6A7)) ^ v0)))();
}

uint64_t sub_100050490@<X0>(uint64_t a1@<X8>)
{
  v6 = v3 - 1;
  *(a1 + v6) = *(v2 + v6) + (v4 | ~(2 * *(v2 + v6))) - 88;
  return (*(v1 + 8 * (((v6 == 0) * v5) | 0x300u)))(0);
}

uint64_t sub_1000504C4()
{
  v4 = v0 - 210;
  v5 = (*(v2 + 8 * (v0 ^ 0xDBC)))(*v3);
  return (*(v2 + 8 * ((115 * (*v1 == 3 * ((v4 - 908336316) & 0x36241D1F ^ 0x54A) - 1047)) ^ v4)))(v5);
}

uint64_t sub_100050530(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  v17 = 1037613739 * ((((2 * (v16 - 128)) | 0x6B7625E6) - (v16 - 128) + 1246031117) ^ 0x64B93F8C);
  *(v16 - 112) = v17 + v13 - 929;
  *(v16 - 128) = ((v15 ^ 0xFEEBEDEF) + 1765621632 + ((v15 << (41 * (v13 ^ 0xB7) - 103)) & 0xFDD7DBDE)) ^ v17;
  *(v16 - 120) = &a13;
  v18 = (*(v14 + 8 * (v13 + 963)))(v16 - 128);
  return sub_1000505DC(v18);
}

uint64_t sub_1000505DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  *(v19 - 128) = (v15 - 751) ^ ((((v18 | (v19 - 128)) - ((v19 - 128) & v18)) ^ 0x84FA21BE) * v17);
  *(v19 - 120) = &a15;
  *(v19 - 112) = a12;
  v20 = (*(v16 + 8 * (v15 ^ 0xEBE)))(v19 - 128);
  return (*(v16 + 8 * ((((*(v19 - 124) - 598934286) < 0xEF018A15) * ((v15 ^ 0xAE8) + v15 - 1221)) ^ v15)))(v20);
}

uint64_t sub_100050684()
{
  v3 = *(v2 + 8 * (v0 + 2265));

  return v3(v1);
}

uint64_t sub_100050890(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  v23 = LOBYTE(STACK[0x28C]);
  if (v23 == 2)
  {
    return (*(v21 + 8 * ((81 * (LODWORD(STACK[0x288]) != v22 - 28)) ^ (v22 + 915))))(a21);
  }

  if (v23 != 1)
  {
    JUMPOUT(0x100050954);
  }

  return (*(v21 + 8 * ((44 * (LODWORD(STACK[0x288]) == ((41 * (v22 ^ 0xB)) ^ 0x3AF))) ^ (v22 + 959))))();
}

uint64_t sub_1000509F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, int a13, uint64_t a14, _DWORD *a15, uint64_t a16)
{
  v22 = ((((2 * (v21 - 144)) | 0xDCFF799E) - (v21 - 144) - 1853865167) ^ 0xF5384A45) * a10;
  *(v21 - 128) = v18;
  *(v21 - 136) = v16 - v22 - 519531921 + v20;
  *(v21 - 132) = v20 - v22 + 491;
  *(v21 - 144) = v19;
  v23 = (*(v17 + 8 * (v20 + 689)))(v21 - 144);
  return sub_10005C058(v23, v24, v25, v26, v27, v28, v29, v30, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_100050A6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  v23 = *(a19 + 24);
  *(v22 - 192) = 0xA7A7A7A7A7A7A7A7;
  *(v22 - 184) = 0xA7A7A7A7A7A7A7A7;
  v24 = 1037613739 * ((((v22 - 160) | 0x306D1376) - (v22 - 160) + ((v22 - 160) & 0xCF92EC88)) ^ 0xE16F3E09);
  *(v22 - 120) = v22 - 176;
  *(v22 - 160) = v24 + 1337967930;
  *(v22 - 152) = v22 - 192;
  *(v22 - 144) = v23;
  *(v22 - 136) = v22 - 212;
  *(v22 - 128) = (v19 + 1569) ^ v24;
  v25 = (*(v20 + 8 * (v19 ^ 0x90E)))(v22 - 160);
  return (*(v20 + 8 * ((1546 * (*(v22 - 124) == v21 + ((v19 + 624455579) & 0xDAC79026) - 38)) | v19)))(v25);
}

void sub_100050B5C()
{
  STACK[0x418] = 0;
  LODWORD(STACK[0x358]) = 1521934363;
  STACK[0x500] = 0;
  LODWORD(STACK[0x3F4]) = 1521934363;
  JUMPOUT(0x100050BD8);
}

uint64_t sub_100050CB8@<X0>(_DWORD *a1@<X8>, uint8x8_t a2@<D3>)
{
  a2.i32[0] = *v2;
  v5 = vmovl_u8(a2);
  *v5.i8 = veor_s8(vand_s8(vadd_s16(*v5.i8, *v5.i8), 0x4E004E004E004ELL), 0xFF00FF00FF00FFLL);
  *a1 = vuzp1_s8(vadd_s16(*&vaddw_u8(v5, a2), 0xA800A800A800A8), 0x4E004E004E004ELL).u32[0];
  return (*(v4 + 8 * ((4091 * ((v3 ^ 0x7F7) == 4)) ^ v3)))();
}

uint64_t sub_1000511F8()
{
  v4 = (v0 + 110) | 0x66;
  *(*(v2 + 96) + 1428) = 32;
  v5 = 1785193651 * ((-1549367460 - ((v3 - 128) | 0xA3A6875C) + ((v3 - 128) | 0x5C5978A3)) ^ 0x4F859483);
  *(v3 - 124) = v5 - 562359979 + v4;
  *(v3 - 120) = v3 - 228;
  *(v3 - 112) = (2041475054 - ((v4 - 458) & 4 | 2)) ^ v5;
  v6 = (*(v1 + 8 * (v4 ^ 0xD03)))(v3 - 128);
  return (*(v1 + 8 * ((878 * (*v2 - 2073475319 + (*(v3 - 160) & (((v4 + 1193) | 0xA) ^ 0x925u)) < 0xFFFFFFC0)) ^ v4)))(v6, 3635372567);
}

uint64_t sub_1000516E8@<X0>(int a1@<W4>, int a2@<W8>)
{
  v11 = v4 - 4153246548;
  v13 = ((**v3 - (*v2 ^ v7)) ^ v5) + (v10 & (2 * (**v3 - (*v2 ^ v7)))) + v6 != a1 || v11 == 0;
  return (*(v8 + 8 * ((v13 * ((v9 + a2 - 162) ^ (v9 - 2041))) ^ a2)))();
}

uint64_t sub_10005174C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v11 = *(v9 + 48 * v10 + 36);
  v13 = v11 != v7 + v6 - 97 && v11 + a6 < ((v6 + 467) ^ 0x80000237);
  return (*(v8 + 8 * ((1378 * v13) ^ v6)))();
}

uint64_t sub_1000517D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  *(v19 - 120) = &a15;
  *(v19 - 136) = a14;
  *(v19 - 128) = (v17 - 805) ^ (1785193651 * ((v19 - 136) ^ 0x13DCEC20));
  (*(v16 + 8 * (v17 + 612)))(v19 - 136);
  v20 = 1037613739 * ((((v19 - 136) | 0x94ECC203) + (~(v19 - 136) | 0x6B133DFC)) ^ 0x45EEEF7D);
  *(v19 - 128) = v15;
  *(v19 - 120) = v20 + v17 - 1268;
  *(v19 - 136) = v20 ^ 0x68292D70;
  (*(v16 + 8 * (v17 ^ 0xF90)))(v19 - 136);
  *(v19 - 128) = v15;
  *(v19 - 120) = a14;
  *(v19 - 136) = (v17 - 889) ^ (843532609 * ((((v19 - 136) | 0x8EF96A22) - ((v19 - 136) & 0x8EF96A22)) ^ 0xD2B43EA7));
  v21 = (*(v16 + 8 * (v17 + 484)))(v19 - 136);
  return (*(v16 + 8 * ((468 * (*(v19 - 132) > v18 + ((v17 - 1452) | 0x420u) - 1382)) ^ v17)))(v21);
}

uint64_t sub_100051A00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, int a17, char *a18, unsigned int a19)
{
  a19 = v19 + 2066391179 * (((&a17 | 0x54F24D2) - &a17 + (&a17 & 0xFAB0DB28)) ^ 0xAA68A6CA) + 468;
  a18 = &a13;
  v22 = (*(v20 + 8 * (v19 + 1329)))(&a17);
  return (*(v20 + 8 * (((a17 != 972359704) * (((v19 + 719823717) & 0xD5185DFA) + v21 + ((v19 + 4210818) | 0x811D2043))) ^ v19)))(v22);
}

uint64_t sub_100051B7C(uint64_t a1, int a2)
{
  v5 = v3 - 286987903;
  v6 = v5 < -940290255;
  v7 = a2 - 286987903 < v5;
  if (v6 != a2 - 286987903 < (v4 ^ 0x138) - 940292208)
  {
    v7 = v6;
  }

  return (*(v2 + 8 * ((v7 | (4 * v7)) ^ v4)))();
}

uint64_t sub_100051BE4(uint64_t a1, unsigned int a2)
{
  if ((a2 + 653302352) <= ((v3 - 1375) ^ 0xFFFFFDBD))
  {
    v4 = a2;
  }

  else
  {
    v4 = -1306604704 - a2;
  }

  return (*(v2 + 8 * (((v4 - 1494181297 >= 0) * (((v3 - 935537700) & 0x37C327FB) - 884)) ^ (v3 - 1375))))(a1, v4 - 1, (v3 + 201));
}

uint64_t sub_100051D10(uint64_t result)
{
  v1 = 1361651671 * ((~result & 0xF64E4E49F4C8DED6 | result & 0x9B1B1B60B372129) ^ 0x25E33D7027EA2E5ALL);
  v2 = *(result + 32) + v1;
  v3 = *(result + 24) + v1;
  v4 = *(result + 16) + v1;
  v5 = *(result + 28) + v1;
  v6 = *(result + 4) - v1;
  v7 = *result + v1;
  v8 = v2 >= v4;
  v9 = v2 < v4;
  v10 = !v8;
  if (v7)
  {
    v11 = v9;
  }

  else
  {
    v11 = v10;
  }

  if (v11)
  {
    v12 = v5;
  }

  else
  {
    v12 = v6;
  }

  *(result + 8) = v12 ^ v3;
  return result;
}

uint64_t sub_100051E3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  v20 = 1037613739 * ((2 * ((v19 - 136) & 0x7E43E3C8) - (v19 - 136) + 29105205) ^ 0xD0BE314A);
  *(v19 - 128) = &a15;
  *(v19 - 136) = ((v15 ^ 0xEBAB2DFF) + ((2 * v15) & 0xD7565BFE) + (v18 ^ 0x7C7DF7D6)) ^ v20;
  *(v19 - 120) = v20 + v18 - 1704;
  (*(v16 + 8 * (v18 + 188)))(v19 - 136);
  *(v19 - 136) = ((v18 ^ 0x23) - 1292) ^ (843532609 * ((((v19 - 136) | 0x7836F61D) - (v19 - 136) + ((v19 - 136) & 0x87C909E0)) ^ 0x247BA298));
  *(v19 - 128) = v17;
  *(v19 - 120) = a14;
  v21 = (*(v16 + 8 * (v18 ^ 0x70)))(v19 - 136);
  v22 = *(v19 - 132) <= (((v18 ^ 0x23) + 114640762) & 0xF92AB657 ^ 0x23B30692) + (((v18 ^ 0x23) - 1988542860) & 0x7686BB4E);
  return (*(v16 + 8 * (((4 * v22) | (8 * v22)) ^ v18 ^ 0x23)))(v21);
}

uint64_t sub_100051FB4(uint64_t a1)
{
  v1 = *a1 ^ (1082434553 * ((a1 - 587035644 - 2 * (a1 & 0xDD028C04)) ^ 0x46457A8E));
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v6 = v2;
  v5 = v1 + 875955546 - 1361651671 * ((&v4 & 0x5FE76E6B | ~(&v4 | 0x5FE76E6B)) ^ 0x733A6118);
  return (*(*(&off_100085FF0 + (v1 ^ 0xCBCA0078)) + v1 + 875956441))(&v4);
}

uint64_t sub_1000521D0@<X0>(int a1@<W5>, uint64_t a2@<X8>)
{
  v4 = (a1 ^ 0x601) + *(a2 + 4) + ((a1 + 759972352) & 0xD2B3BFFE) + 744510457;
  v5 = (v2 + 744513521 < 91211169) ^ (v4 < 91211169);
  v6 = v2 + 744513521 > v4;
  if (v5)
  {
    v6 = v2 + 744513521 < 91211169;
  }

  return (*(v3 + 8 * ((3016 * v6) ^ a1)))();
}

void sub_100052290(uint64_t a1)
{
  v1 = *(a1 + 16) ^ (843532609 * ((a1 - 2 * (a1 & 0x7582E3B9) + 1971512249) ^ 0x29CFB73C));
  __asm { BRAA            X10, X17 }
}

uint64_t sub_1000524D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  v34 = *(v32 - 132);
  if (v34 == 1)
  {
    v40 = *(v32 - 164);
    v39 = *(v32 - 160);
    v37 = a2 + v33 + 850;
    *(v32 - 172) = (((v39 - ((2 * v39) & 0x12) + 12) << ((a2 + v33 + 82) ^ 0x40)) - 24) ^ 0xEF;
    *(v32 - 171) = (v39 >> 5) ^ 0xA7;
    *(v32 - 170) = (v39 >> 13) ^ 0xA7;
    *(v32 - 169) = (v39 >> 21) ^ 0xA7;
    *(v32 - 168) = ((__PAIR64__(v40, v39) >> 29) - ((2 * (__PAIR64__(v40, v39) >> 29)) & 0xA) - 123) ^ 0x22;
    *(v32 - 167) = (v40 >> 5) ^ 0xA7;
    *(v32 - 166) = (v40 >> 13) ^ 0xA7;
    v38 = (v40 >> 21) ^ 0xFFFFFFA7;
    goto LABEL_5;
  }

  v35 = 659594970;
  if (v34 == 2)
  {
    v38 = *(v32 - 164);
    v36 = *(v32 - 160);
    *(v32 - 172) = (v38 >> 21) - ((v38 >> 20) & 0x4E) - 89;
    *(v32 - 171) = (v38 >> 13) - ((v38 >> 12) & 0x4E) - 89;
    v37 = 1091;
    *(v32 - 170) = (v38 >> 5) - ((v38 >> 4) & 0x4E) - 89;
    *(v32 - 169) = (__PAIR64__(v38, v36) >> 29) - ((2 * (__PAIR64__(v38, v36) >> 29)) & 0x4E) - 89;
    *(v32 - 168) = (v36 >> 21) - ((v36 >> 20) & 0x4E) - 89;
    *(v32 - 167) = (v36 >> 13) - ((v36 >> 12) & 0x4E) - 89;
    *(v32 - 166) = (~(v36 >> 4) | 0xB1) + (v36 >> 5) - 88;
    LOBYTE(v38) = (8 * (v36 - ((2 * v36) & 8)) + 32) ^ 0x87;
LABEL_5:
    v35 = v37 - a2 - 850;
    *(v32 - 165) = v38;
  }

  return sub_100057894(a2, a2 + v35 - 165, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32);
}

uint64_t sub_100052640@<X0>(int a1@<W8>)
{
  result = (*(v3 + 8 * (a1 + 1314)))(*v4);
  *v2 = 0;
  *v1 = 0;
  *(v1 + 344) = 0;
  *(v1 + 352) = 0;
  *(v1 + 360) = 0;
  *(v1 + 56) = 1991861430;
  return result;
}

uint64_t sub_100052688(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *a32, uint64_t a33, unint64_t a34, uint64_t a35, _DWORD *a36)
{
  *a36 = v37 + 1;
  v42 = ((((v39 + v41 - 859259343) | 0x30001516) - 324675182) ^ 0x7442F9C8) & ((((((v39 + v41 - 624) ^ (v39 + v41 + 4496) ^ v37) & (v39 + v41 + 4496 - v37) | (-4497 - (v39 + v41)) & v37) >> 31) ^ v36 ^ (v36 >> 11)) << 7) ^ v36 ^ (v36 >> 11);
  *(*a32 + a34) ^= v42 ^ v40 & (v42 << 15) ^ ((v42 ^ v40 & (v42 << 15)) >> 18);
  return (*(v38 + 8 * ((63 * (a34 > 0x1FB)) ^ (v39 + v41 - 622) ^ 0x49B)))();
}

uint64_t sub_100052774(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, int a21, char a22, uint64_t a23, char a24, __int16 a25, char a26, __int16 a27, char a28)
{
  v33 = 1082434553 * ((v32 - 160) ^ 0x9B47F68A);
  STACK[0x2D0] = &a28;
  STACK[0x2E0] = &a24;
  STACK[0x2F0] = &a26;
  STACK[0x2F8] = &a22;
  STACK[0x300] = v30;
  *(v32 - 136) = v33 + v28 + 198;
  *(v32 - 148) = a5 + v33 + ((34 * (v28 ^ 0x2BD) + 614171646) & 0xDB647FBE ^ 0x11AF5E1F);
  v34 = (*(v29 + 8 * (v28 + 1730)))(v32 - 160);
  return (*(v29 + 8 * ((1094 * (*(v32 - 152) == v31)) ^ v28)))(v34);
}

uint64_t sub_10005287C()
{
  v5 = (v4 - 666431525) & 0x2A6F;
  v12 = v10;
  v13 = &v8;
  LODWORD(v11) = (v4 - 1107) ^ (50899313 * (((&v11 | 0xBFBC113E) - (&v11 & 0xBFBC113E)) ^ 0xAB938CA5));
  (*(v2 + 8 * (v4 + 254)))(&v11);
  HIDWORD(v12) = (v4 - 1708) ^ (((&v11 & 0xC5217FB6 | ~(&v11 | 0xC5217FB6)) ^ 0xB773E2A5) * v3);
  v11 = v10;
  (*(v2 + 8 * (v4 ^ 0x157u)))(&v11);
  if (v12 == (v5 ^ v0))
  {
    v6 = v8;
  }

  else
  {
    v6 = v12;
  }

  LODWORD(v11) = v4 - (((&v11 | 0x6CAC7474) - &v11 + (&v11 & 0x93538B88)) ^ 0xE1011698) * v3 - 793;
  v12 = v10;
  (*(v2 + 8 * (v4 ^ 0x16Fu)))(&v11);
  v12 = v9;
  LODWORD(v11) = v5 - (((&v11 | 0xB8F10F86) - &v11 + (&v11 & 0x470EF078)) ^ 0x355C6D6A) * v3 + 668;
  (*(v2 + 8 * (v5 ^ 0xB24)))(&v11);
  return v6 ^ v1;
}

uint64_t sub_100052AC4@<X0>(uint64_t a1@<X8>)
{
  v6 = ((((v3 + 826) | 0x44u) - 1093) ^ v2) + v1;
  *(v4 - 7 + v6) = *(a1 - 7 + v6);
  return (*(v5 + 8 * ((51 * ((v1 & 0xFFFFFFF8) - 8 == v2)) ^ v3)))(v2 + 8);
}

uint64_t sub_100052BEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  v33 = 7 * (v32 ^ (v32 + 83));
  (*(v30 + 8 * (v32 ^ (v32 - 2249))))(a20 + 0x5208802A0402E071);
  v34 = (*(v30 + 8 * (v32 ^ (v32 - 2367))))();
  *v31 = v34;
  v35 = (((v34 ^ (v34 >> 30) ^ 0x9AFCAF2E) - 592739369) ^ ((v34 ^ (v34 >> 30) ^ 0xF80FB749) - 1101489230) ^ ((v34 ^ (v34 >> 30) ^ 0x62F31867) + 614741152)) * (((v33 - 1761814278) & 0x690325D7) + 1812432078) + 1371209924;
  v31[1] = v35;
  return (*(v30 + 8 * v33))(v35, 3193478066, 1660098663, 614741152, 1371209923, v36, v37, v38, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30);
}

void sub_100052FB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30)
{
  *(v33 - 120) = (v32 - 748) ^ (((((v33 - 144) | 0x1BAFF740) - (v33 - 144) + ((v33 - 144) & 0xE45008B8)) ^ 0x8731B60) * v30);
  *(v33 - 144) = &a30;
  *(v33 - 136) = &a24;
  *(v33 - 128) = v31;
  *(v33 - 112) = &a30;
  *(v33 - 104) = a12;
  JUMPOUT(0x10002A28CLL);
}

uint64_t sub_100053014(double a1)
{
  *(v4 - 1) = a1;
  *v4 = a1;
  return (*(v5 + 8 * (((v3 == 0) * v2) ^ v1)))();
}

uint64_t sub_100053044@<X0>(uint64_t a1@<X1>, int a2@<W8>)
{
  v8 = v3 - 1;
  STACK[0x388] = v8;
  *(a1 + v8) = (v2 + 1 + v5) * ((v2 + 1) ^ v4);
  return (*(v7 + 8 * (((v8 == 0) * v6) ^ a2)))();
}

uint64_t sub_1000530A0(uint64_t result)
{
  v1 = 143681137 * ((((2 * result) | 0x3AFF216F41EC697CLL) - result - 0x1D7F90B7A0F634BELL) ^ 0xACF6A203C1AEBF6ELL);
  v2 = *(result + 32) + v1;
  v3 = *(result + 16) - v1;
  v4 = v3 > v2;
  v5 = v3 == v2;
  v6 = v4;
  if ((*(result + 40) - 143681137 * ((((2 * result) | 0x41EC697C) - result + 1594477378) ^ 0xC1AEBF6E)))
  {
    v7 = v6;
  }

  else
  {
    v7 = v5;
  }

  if (v7)
  {
    v8 = *(result + 12) + 143681137 * ((((2 * result) | 0x41EC697C) - result + 1594477378) ^ 0xC1AEBF6E);
  }

  else
  {
    v8 = *(result + 4) - 143681137 * ((((2 * result) | 0x41EC697C) - result + 1594477378) ^ 0xC1AEBF6E);
  }

  *(result + 24) = *result ^ (143681137 * ((((2 * result) | 0x41EC697C) - result + 1594477378) ^ 0xC1AEBF6E)) ^ v8;
  return result;
}

uint64_t sub_100053140@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  v18 = ((((v17 - 144) | 0xC00B0EC0) - (v17 - 144) + ((v17 - 144) & 0x3FF4F138)) ^ 0x5B4CF84A) * v13;
  *(v17 - 140) = v14 + v18 - 1067983006 + 9 * (a1 ^ 0x792);
  *(v17 - 120) = (a1 - 841) ^ v18;
  *(v17 - 136) = v16;
  *(v17 - 128) = &a13;
  v19 = (*(v15 + 8 * (a1 ^ 0xE84)))(v17 - 144);
  return sub_1000531C8(v19);
}

uint64_t sub_1000531C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, char a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, char *a25, char *a26, uint64_t a27, char a28)
{
  a25 = &a22;
  a26 = &a28;
  *(v32 - 144) = v31 - 50899313 * (((v32 - 144) & 0x6842FB | ~((v32 - 144) | 0x6842FB)) ^ 0xEBB8209F) + 377;
  *(v32 - 136) = v29;
  *(v32 - 128) = &a25;
  (*(v28 + 8 * (v31 ^ 0x983)))(v32 - 144);
  *(v32 - 120) = &a20;
  *(v32 - 112) = &a25;
  *(v32 - 104) = v29;
  *(v32 - 144) = v31 - 1388665877 * ((((v32 - 144) | 0x5361841A) - (v32 - 144) + ((v32 - 144) & 0xAC9E7BE0)) ^ 0xDECCE6F6) + 386;
  *(v32 - 136) = a13;
  *(v32 - 128) = &a18;
  v33 = (*(v28 + 8 * (v31 ^ 0x9BF)))(v32 - 144);
  return (*(v28 + 8 * (((((v30 == 0) ^ (3 * (v31 ^ 0x8C))) & 1) * ((v31 ^ 0x606) - 1268)) ^ v31)))(v33);
}

void sub_1000532E8(uint64_t a1)
{
  v1 = *(a1 + 24) ^ (1785193651 * ((2 * (a1 & 0x60B1747C) - a1 + 525241219) ^ 0xC9267A3));
  __asm { BRAA            X10, X17 }
}

uint64_t sub_100053508(uint64_t a1)
{
  v5 = v4 + 723;
  v6 = *(v3 + 352);
  v7 = *(a1 + 8) + v1 + ((v5 - 368) ^ 0x89DC5551);
  v8 = (v6 > 0x1E6AE2A3) ^ (v7 < 0xE1951D5C);
  v9 = (((v5 - 1837) | 0x403) ^ 0xE19519D7) + v6 > v7;
  if (v8)
  {
    v9 = v6 > 0x1E6AE2A3;
  }

  return (*(v2 + 8 * ((93 * !v9) ^ v5)))();
}

uint64_t sub_100053598@<X0>(uint64_t a1@<X0>, int a2@<W6>, int a3@<W8>)
{
  v7 = v4 - 1;
  *(a1 + v7) = *(v3 + v7);
  return (*(v6 + 8 * ((992 * ((((479 * (v5 ^ (a3 + 1098))) ^ (v7 == 0)) & 1) == 0)) ^ (a2 + v5 + 1019))))();
}

uint64_t sub_1000537E8()
{
  v6 = 1010 * (v4 ^ 0x7F7);
  *(v0 - 7 + ~v3 + v2) = veor_s8(*(v1 - 7 + ~v3 + v2), 0xA7A7A7A7A7A7A7A7);
  v7 = ((829 * (v6 ^ 0x7E6u)) ^ 0x672) + v3 != (v2 & 0xFFFFFFF8);
  return (*(v5 + 8 * (v7 | (16 * v7) | v6)))();
}

uint64_t sub_100053894@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57)
{
  STACK[0x2E0] = a57 + 2353;
  STACK[0x2D8] = v57 + 49;
  STACK[0x2C8] = a57 + 2333;
  STACK[0x2C0] = v57 + 29;
  STACK[0x2B8] = a57 + 2313;
  STACK[0x2A8] = v57 + 9;
  return sub_10003D2C4(a1);
}

void sub_1000538D4()
{
  v3 = STACK[0x390];
  v4 = 1785193651 * ((2 * ((v2 - 200) & 0x49747680) - (v2 - 200) + 915114363) ^ 0x2557655B);
  *(v2 - 184) = v4 ^ 0x79AE6FE9;
  *(v2 - 192) = v3;
  *(v2 - 196) = v0 - 562358948 + v4 + 26;
  (*(v1 + 8 * (v0 + 2334)))(v2 - 200);
  JUMPOUT(0x10002014CLL);
}

uint64_t sub_100053960(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, char a16, int a17)
{
  a17 = (v19 ^ 0x4E87C054) + v17;
  *(v20 - 104) = &a14;
  *(v20 - 120) = a13;
  *(v20 - 112) = (v19 - 354) ^ (1785193651 * ((2 * (((v20 - 120) ^ 0xF140C0FE) & 0x36AAB074) - ((v20 - 120) ^ 0xF140C0FE) + 1230327691) ^ 0xABC96355));
  (*(v18 + 8 * (v19 + 1063)))(v20 - 120);
  *(v20 - 112) = &a16;
  *(v20 - 104) = a13;
  *(v20 - 120) = (v19 - 438) ^ (843532609 * ((((v20 - 120) | 0x353C1C85) - (v20 - 120) + ((v20 - 120) & 0xCAC3E378)) ^ 0x69714800));
  v21 = (*(v18 + 8 * (v19 ^ 0xDF9)))(v20 - 120);
  return (*(v18 + 8 * ((31 * (*(v20 - 116) > ((v19 - 1074) ^ 0x23B303F0u))) ^ v19)))(v21);
}

uint64_t sub_100053DC4@<X0>(int a1@<W8>)
{
  v4 = v1 + a1;
  if (v4 >= 0)
  {
    v5 = v4;
  }

  else
  {
    v5 = -v4;
  }

  return (*(v3 + 8 * ((44 * (v5 > ((v2 + 1013) | 0x111) - 1303)) | v2)))();
}

uint64_t sub_100053DFC(uint64_t a1, int a2)
{
  v10 = (v7 + v6 + v2);
  *v10 = v9;
  v10[1] = v9;
  return (*(v8 + 8 * (((v6 + v4 - 804 == v5) * a2) ^ v3)))();
}

uint64_t sub_100053E2C@<X0>(uint64_t a1@<X8>)
{
  v7 = 19 * (v6 ^ 0x21D);
  *(*(v1 + 8) + 4 * ((v7 ^ (v2 + 2000)) + v4)) = v5 ^ (v3 + 1345);
  v8 = 253 * (v7 ^ 0x77A);
  *(v1 + 4) = v4 + 1;
  v9 = v4 + 1 + v2 + v8;
  if (v9 < 0)
  {
    v9 = -v9;
  }

  return (*(a1 + 8 * (((((v8 + 1736131275) & 0x9884BC7F ^ 0xFFFFFF2D) + ((v8 + 1821948685) & 0x936744FD)) * (((v9 ^ 0x5B5FF7B7) + ((2 * v9) & 0xB6BFEF6E) - 1533015992) >> 31)) ^ v8)))();
}

void sub_100053F34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, int a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39)
{
  *v41 = (((a25 - v39) | (v39 - a25)) >> ((v39 + 72) ^ 0x57)) | 0x80000000;
  (*(v40 + 8 * (v39 ^ 0x921u)))(a39);
  JUMPOUT(0x100053F9CLL);
}

uint64_t sub_10005411C()
{
  v4 = STACK[0x218];
  (*(v3 + 8 * (v0 + 2181)))(*STACK[0x218], v2, 2048);
  v5 = *(v3 + 8 * ((((*(v3 + 8 * (v0 + 2191)))(*v4, &STACK[0x538], (LODWORD(STACK[0x31C]) + v1), 1) == ((17 * (v0 ^ 0x9E)) ^ 0x583)) * (((v0 + 851) | 0x188) ^ 0xDCC)) ^ v0));
  return v5();
}

uint64_t sub_1000541C4@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  *(*(a2 + 96) + 468) = *(*(a1 + 8) + 12) + (~(2 * *(*(a1 + 8) + 12)) | 0xB1) - 88;
  if (v2)
  {
    v4 = 1;
  }

  else
  {
    v4 = 0;
  }

  return (*(v3 + 8 * ((39 * v4) | 0x300u)))(0);
}

uint64_t sub_1000542B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, __int16 a12, char a13, char *a14, int a15, unsigned int a16, char *a17, uint64_t a18)
{
  v22 = 742307843 * (&a14 ^ 0x1E228D55);
  a14 = &a13;
  a17 = &a11;
  a18 = v19;
  a15 = v22 + v21 - 832;
  a16 = v22 + 418895126;
  v23 = (*(v20 + 8 * (v21 + 1371)))(&a14);
  return (*(v20 + 8 * (((*(v19 + 24) == v18) * ((v21 + 683) ^ 0x2AE)) ^ v21)))(v23);
}

uint64_t sub_100054380(__n128 a1, __n128 a2, __n128 a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, unsigned int a15, uint64_t a16, int a17, int a18, unsigned int a19, uint64_t a20, int a21, unsigned int a22)
{
  v23.n128_u64[0] = 0x4E4E4E4E4E4E4E4ELL;
  v23.n128_u64[1] = 0x4E4E4E4E4E4E4E4ELL;
  v24.n128_u64[0] = 0xA7A7A7A7A7A7A7A7;
  v24.n128_u64[1] = 0xA7A7A7A7A7A7A7A7;
  return (*(v22 + 8 * ((((((a18 + 1793975494) & 0x95121F8C) + 231) ^ (a18 + 1107)) * (a15 < 0xFFFFFFFE)) ^ a18)))(2748300126, 1546667174, a19, 1161408273, a22, a9, 0xAAB63E95B0B86B60, 69, a1, a2, a3, v23, v24);
}

uint64_t sub_100054410(double a1, int8x16_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, int32x4_t a27, int8x16_t a28, int8x16_t a29)
{
  v29 = vld1q_dup_f32(v32);
  v30.i64[0] = 0x8000000080000000;
  v30.i64[1] = 0x8000000080000000;
  return sub_10004DA34(378622759, 480, v29, a2, v30, a29, a28, a27);
}

uint64_t sub_1000549C8@<X0>(int a1@<W4>, int a2@<W5>, int a3@<W8>)
{
  v7 = *(v5 + v3 * v4 + 36);
  v8 = (a3 ^ 0x350FA81A) + v7;
  v10 = v8 > 189657972 || v8 < a2;
  v11 = !v10;
  if (v7 == a1)
  {
    v11 = 1;
  }

  return (*(v6 + 8 * ((480 * v11) ^ a3)))();
}

uint64_t sub_100054A58(uint64_t a1, uint64_t a2)
{
  *(a1 + 56) = *(a2 + 4);
  *(a1 + 64) = *(a2 + 8);
  return 0;
}

void zxcm2Qme0x(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(&off_100085FF0 + (byte_10006EB0C[(byte_1000797E8[(-109 * ((qword_100089928 + dword_100089B38) ^ 0x95)) - 8] ^ 0x16) - 12] ^ (-109 * ((qword_100089928 + dword_100089B38) ^ 0x95))) - 172);
  v5 = *(v4 - 4);
  v6 = *(&off_100085FF0 + (byte_10006EC04[(byte_1000798E0[(-109 * ((qword_100089928 - v5) ^ 0x95))] ^ 0x2B) - 4] ^ (-109 * ((qword_100089928 - v5) ^ 0x95))) - 96);
  v7 = 665663891 * (v5 ^ &v11 ^ 0xED30A8472429C395 ^ *(v6 - 4));
  *(v4 - 4) = v7;
  *(v6 - 4) = v7;
  v9 = 0;
  v12 = &v9;
  v13 = 210068311 * (((&v12 | 0xA03034F) - (&v12 & 0xA03034F)) ^ 0x98D53CEB) - 1224077185;
  LOBYTE(v7) = -109 * ((*(v6 - 4) + *(v4 - 4)) ^ 0x95);
  v8 = *(&off_100085FF0 + ((-109 * ((qword_100089928 + dword_100089B38) ^ 0x95)) ^ byte_10006EB00[byte_1000797E0[(-109 * ((qword_100089928 + dword_100089B38) ^ 0x95))] ^ 0x15]) - 117) - 8;
  (*&v8[8 * (byte_10007205C[(byte_10006E908[v7 - 8] ^ 0xAF) - 12] ^ v7) + 17256])(&v12);
  v10 = 0;
  v13 = 210068311 * ((2 * (&v12 & 0x732A3048) - &v12 - 1932144718) ^ 0x1E03F016) - 1224077185;
  v12 = &v10;
  (*&v8[8 * (byte_100076408[(byte_100072150[(-109 * (*(v4 - 4) ^ 0x95 ^ *(v6 - 4)))] ^ 0x7D) - 8] ^ (-109 * (*(v4 - 4) ^ 0x95 ^ *(v6 - 4)))) + 18584])(&v12);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_100054E14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, int a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, char a47)
{
  v51 = v47 + v48 + v50 + 552 + v49 - 1174;
  *(&a47 + v51) ^= a37 ^ v48 ^ (((v47 | ~(v50 - 620)) & (v50 - 620 - v47) | v47 & ~(v50 - 620)) >= 0);
  return sub_100054E64();
}

uint64_t sub_100054ED0(uint64_t a1, uint64_t a2, int a3)
{
  v8 = 143681137 * ((2 * ((v7 - 152) & 0x55E6B838B2072BB8) - (v7 - 152) - 0x55E6B838B2072BB9) ^ 0x1B9075732CA05F97);
  *(v6 + 1072) = *v5 - v8;
  *(v7 - 112) = 143681137 * ((2 * ((v7 - 152) & 0xB2072BB8) - (v7 - 152) + 1308152903) ^ 0x2CA05F97);
  *(v6 + 1056) = v8;
  *(v7 - 152) = (143681137 * ((2 * ((v7 - 152) & 0xB2072BB8) - (v7 - 152) + 1308152903) ^ 0x2CA05F97)) ^ (v3 - 1070701613) ^ 0x3B;
  *(v7 - 148) = 143681137 * ((2 * ((v7 - 152) & 0xB2072BB8) - (v7 - 152) + 1308152903) ^ 0x2CA05F97) + v3 - 1070701613 + 54;
  *(v7 - 144) = (v3 + 2078544719) ^ (143681137 * ((2 * ((v7 - 152) & 0xB2072BB8) - (v7 - 152) + 1308152903) ^ 0x2CA05F97));
  *(v7 - 140) = v3 - 1070701613 - 143681137 * ((2 * ((v7 - 152) & 0xB2072BB8) - (v7 - 152) + 1308152903) ^ 0x2CA05F97);
  v9 = (*(v4 + 8 * (a3 + v3 + 1752)))(v7 - 152);
  return (*(v4 + 8 * *(v7 - 128)))(v9);
}

uint64_t sub_1000550F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v12 = ((5 * (a8 ^ 0x601)) ^ (v9 - 833)) - v10;
  if (v8 > v12)
  {
    v12 = v8;
  }

  return (*(v11 + 8 * ((((v12 + 1) > 0x23) * (((a8 - 529) | 4) ^ 0x58E)) ^ a8)))();
}

void sub_100055144(uint64_t a1)
{
  v1 = 1037613739 * (((a1 | 0x27A6E) - a1 + (a1 & 0xFFFD8591)) ^ 0xD1005711);
  __asm { BRAA            X15, X17 }
}

uint64_t sub_100055220(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, int a31, int a32)
{
  *v32 = STACK[0x4C8];
  v32[85] = STACK[0x400];
  v32[86] = STACK[0x35C];
  v32[87] = STACK[0x408];
  v32[88] = STACK[0x3D4];
  return (*(v33 + 8 * ((((((a32 + 811) | 0x80) - 1245658597) & 0x4A3F3CFD ^ 0x48A) * (STACK[0x4D0] == 0)) ^ (((a32 + 811) | 0x80) + 517))))();
}

uint64_t sub_100055414(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30)
{
  *(v35 - 136) = &a30;
  *(v35 - 128) = a12;
  *(v35 - 120) = &a30;
  *(v35 - 112) = v33;
  *(v35 - 144) = (v34 + 1576) ^ (1037613739 * ((v35 - 1219840718 - 2 * ((v35 - 144) & 0xB74AB5C2)) ^ 0x664898BD));
  (*(v32 + 8 * (v34 ^ 0x81D)))(v35 - 144);
  *(v35 - 120) = (v34 + 1096) ^ (1785193651 * ((((2 * (v35 - 144)) | 0xE3FA83E2) - (v35 - 144) + 235060751) ^ 0xE221ADD1));
  *(v35 - 144) = &a30;
  *(v35 - 136) = &a20;
  *(v35 - 112) = &a30;
  *(v35 - 104) = a12;
  *(v35 - 128) = v33;
  v36 = (*(v32 + 8 * (v34 + 2046)))(v35 - 144);
  return (*(v32 + 8 * ((122 * (v31 + v34 + 1844 - 540233180 < ((v34 - 192) ^ 0x7FFFFB2C ^ (599 * ((v34 + 1844) ^ 0x873u))))) ^ (v34 + 871))))(v36);
}

uint64_t sub_100055630(uint64_t result)
{
  v1 = 1785193651 * (((result | 0xED81C447D9FA58CLL) - result + (result & 0xF127E3BB82605A73)) ^ 0x1AEC6A6A6E4349ACLL);
  v2 = *(result + 4) ^ v1;
  v3 = *(result + 40) - v1;
  v5 = *(result + 16);
  v4 = *(result + 24);
  v6 = v4 ^ v1;
  v7 = v5 ^ v1;
  v8 = *(result + 36) + v1;
  v9 = *(result + 8) - v1;
  v10 = v7 >= v6;
  v11 = v5 != v4;
  if ((v8 & 1) == 0)
  {
    v10 = v11;
  }

  if (v10)
  {
    v9 = v2;
  }

  *(result + 32) = v9 ^ v3;
  return result;
}

void sub_1000556D0()
{
  v0 = __chkstk_darwin();
  if (*(v0 + 24))
  {
    v2 = *(v0 + 8) == 0;
  }

  else
  {
    v2 = 1;
  }

  v3 = v2;
  v1 = *(v0 + 20) ^ (2066391179 * ((-2 - ((~v0 | 0xD86E0A28) + (v0 | 0x2791F5D7))) ^ 0x77498830));
  __asm { BRAA            X8, X17 }
}

void sub_100055810()
{
  v4 = *(v0 + 12) + v2;
  *v5 = ((((v3 - 108) | 0x46) - 61) ^ HIBYTE(v4)) + (~(2 * ((((v3 - 108) | 0x46) - 61) ^ HIBYTE(v4))) | 0xB1) - 88;
  v5[1] = (BYTE2(v4) ^ 0xBB) - ((2 * (BYTE2(v4) ^ 0xBB)) & 0x4E) - 89;
  v5[2] = (BYTE1(v4) ^ 0xB7) - ((2 * (BYTE1(v4) ^ 0xB7)) & 0x4E) - 89;
  v5[3] = v4 ^ 6;
  *(v0 + 8) = *(v1 + 24);
}

uint64_t sub_100055908@<X0>(uint64_t result@<X0>, int a2@<W8>)
{
  v9 = a2 - 688359269;
  v10 = a2 - 1;
  v11 = *(v5 + v9);
  if (v11 == 167)
  {
    __asm { BRAA            X10, X17 }
  }

  if (v11 == 39)
  {
    v12 = 972359704;
    v13 = *(v2 + 16);
    v14 = *(v2 + 24) ^ v3;
    *result = v5;
    *(result + 8) = v6;
    *(result + 12) = v10;
    if (v14 == 14)
    {
      v15 = 230861954;
    }

    else
    {
      v15 = 230861955;
    }

    *(result + 16) = 1481339933;
    *(result + 20) = v15;
    *(result + 24) = 972359704;
    *v13 = result;
  }

  else
  {
    result = (*(v8 + 8 * (v7 ^ 0xEF0)))();
    v12 = -972401727;
  }

  *(v2 + 8) = v12;
  return result;
}

uint64_t sub_100055A64@<X0>(unsigned int a1@<W0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X4>, unsigned int a5@<W8>)
{
  v11 = v9 < v8;
  v12 = *(a4 + v5);
  v13 = v5 + 1;
  *(a2 + a5) = v12 - (a3 & (2 * v12)) - 89;
  if (v11 == v13 > ((v6 - 1633) | a1) + v7)
  {
    v11 = v13 + v8 < v9;
  }

  return (*(v10 + 8 * (((2 * !v11) | (16 * !v11)) ^ v6)))();
}

uint64_t sub_100055AD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  v31 = *v29;
  v32 = *(v29 + 48);
  *(v30 - 172) = (v26 - 988) | 0x20B;
  *(v30 - 112) = veorq_s8(*v31, xmmword_100079A10);
  if (v27)
  {
    v33 = v32 == 0;
  }

  else
  {
    v33 = 1;
  }

  v34 = !v33;
  v35 = *(v28 + 8 * (((4 * v34) | (16 * v34)) ^ v26));
  *(v30 - 176) = -42900;
  return v35(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26);
}

uint64_t sub_100055BC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, unsigned int a15, int a16)
{
  a15 = -542396526 - 1388665877 * ((((&a15 | 0xBBADDC7A) ^ 0xFFFFFFFE) - (~&a15 | 0x44522385)) ^ 0xC9FF4169);
  v19 = (*(v17 + 17952))(&a15);
  return (*(v17 + 8 * ((525 * (a16 == v16)) ^ v18)))(v19);
}

uint64_t sub_100055C9C@<X0>(uint64_t a1@<X0>, int a2@<W8>)
{
  if (*(a1 + 24))
  {
    v3 = *(a1 + 48) == 0;
  }

  else
  {
    v3 = 1;
  }

  v4 = v3;
  return (*(v2 + 8 * ((v4 * ((a2 + 158512833) & 0xF68D47EF ^ 0x947)) ^ a2)))();
}

void sub_100055CF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28, uint64_t a29, char a30)
{
  *(v33 - 112) = &a30;
  *(v33 - 104) = v30;
  *(v33 - 120) = (v32 + 1096) ^ (1785193651 * ((((v33 - 144) ^ 0xED92901D) + 1836602743 - 2 * (((v33 - 144) ^ 0xED92901D) & 0x6D785577)) ^ 0x9336294A));
  *(v33 - 136) = &a28;
  *(v33 - 128) = v31;
  *(v33 - 144) = &a30;
  JUMPOUT(0x10002A290);
}

uint64_t sub_100055E14()
{
  v4 = (v0 - 385) | 0x38E;
  v9 = v7;
  v8 = v0 - ((2 * (&v8 & 0x231BF650) - &v8 - 589035096) ^ 0x51496B44) * v1 + 906;
  (*(v2 + 8 * (v0 ^ 0x8CA)))(&v8);
  v8 = v4 - 1388665877 * ((&v8 + 1451077106 - 2 * (&v8 & 0x567DADF2)) ^ 0xDBD0CF1E) + 381;
  v9 = v6;
  (*(v2 + 8 * (v4 + 1469)))(&v8);
  return v3 ^ 0x39F50818u;
}

uint64_t sub_10005611C@<X0>(uint64_t a1@<X0>, unsigned int a2@<W8>)
{
  v6 = *(&STACK[0x278] + (a2 >> (((2 * v3) ^ 0xC8) - 36)) + 18);
  v7 = ((2 * a2) & 0xFC71EDE0) + (a2 ^ 0xFE38F6F2) + v2;
  *(a1 + v7 + 1) = (BYTE2(v6) ^ 0xC8) - ((v6 >> 15) & 0x4E) - 89;
  *(a1 + v7) = (HIBYTE(v6) ^ 0xC) + (~(2 * (HIBYTE(v6) ^ 0xC)) | 0xB1) - 88;
  *(a1 + v7 + 2) = (BYTE1(v6) ^ 0xB9) - ((2 * (BYTE1(v6) ^ 0xB9)) & 0x4E) - 89;
  *(a1 + v7 + 3) = v6 ^ 0xD3;
  return (*(v5 + 8 * (((a2 + 4 >= LODWORD(STACK[0x2D4])) * v4) ^ v3)))();
}

uint64_t sub_1000561E8()
{
  v3 = (((v1 - 2089) | 0x12Eu) ^ 0xFFFFFFFFFFFFFED1) + v0;
  v5 = v3 < 0x10 && (((v1 ^ 6) + v0) & 0xFu) >= (v3 & 0xF);
  return (*(v2 + 8 * ((82 * v5) ^ v1)))();
}

uint64_t sub_100056450@<X0>(int a1@<W8>)
{
  v6 = v1 ^ 0xDBC;
  v7 = (v1 ^ 0xDBC) - v5 + 1494179133;
  if (v4 > v7)
  {
    v7 = v4;
  }

  *(*(v2 + 8) + 4 * (a1 - 1 + v7)) = *(*(v2 + 8) + 4 * v7 - 4);
  return (*(v3 + 8 * (((v7 < 2) * (281 * (v6 ^ 0x870) - 832)) ^ v6)))();
}

uint64_t sub_1000564C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, int a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, int a32, unsigned int a33, unsigned int a34, unsigned int a35, int a36, int a37, int a38, char a39, __int16 a40, char a41)
{
  v47 = vdupq_n_s32(0x39F5081Cu);
  v48.n128_u64[0] = 0xA7A7A7A7A7A7A7A7;
  v48.n128_u64[1] = 0xA7A7A7A7A7A7A7A7;
  v49 = vdupq_n_s32(0x39F50818u);
  v50.n128_u64[0] = 0x4E4E4E4E4E4E4E4ELL;
  v50.n128_u64[1] = 0x4E4E4E4E4E4E4E4ELL;
  v115 = *(v42 + 8 * v41);
  v51 = (&a41 + v46);
  v52 = a35;
  if (a39 == 2)
  {
    v116 = vld4q_s8(&a23);
    v77 = veorq_s8(v116.val[0], v48);
    v78 = vmovl_high_u8(v77);
    v79 = vmovl_u8(*v77.i8);
    v80 = veorq_s8(v116.val[1], v48);
    _Q21 = vmovl_high_u8(v80);
    _Q20 = vmovl_u8(*v80.i8);
    v83 = vshll_n_s16(*_Q20.i8, 0x10uLL);
    __asm { SHLL2           V20.4S, V20.8H, #0x10 }

    v84 = vshll_n_s16(*_Q21.i8, 0x10uLL);
    __asm { SHLL2           V21.4S, V21.8H, #0x10 }

    v85 = veorq_s8(v116.val[2], v48);
    v86 = vmovl_u8(*v85.i8);
    v87 = vmovl_high_u8(v85);
    v116.val[0] = veorq_s8(v116.val[3], v48);
    v116.val[1] = vmovl_u8(*v116.val[0].i8);
    v116.val[2] = vmovl_u16(*v116.val[1].i8);
    v116.val[1] = vmovl_high_u16(v116.val[1]);
    v116.val[0] = vmovl_high_u8(v116.val[0]);
    v116.val[3] = vmovl_u16(*v116.val[0].i8);
    v116.val[0] = vmovl_high_u16(v116.val[0]);
    v88 = vorrq_s8(vorrq_s8(vorrq_s8(_Q21, vshll_high_n_u16(v87, 8uLL)), vshlq_n_s32(vmovl_high_u16(v78), 0x18uLL)), v116.val[0]);
    v89 = vorrq_s8(vorrq_s8(vorrq_s8(v84, vshll_n_u16(*v87.i8, 8uLL)), vshlq_n_s32(vmovl_u16(*v78.i8), 0x18uLL)), v116.val[3]);
    v90 = vorrq_s8(vorrq_s8(vorrq_s8(_Q20, vshll_high_n_u16(v86, 8uLL)), vshlq_n_s32(vmovl_high_u16(v79), 0x18uLL)), v116.val[1]);
    v91 = vorrq_s8(vorrq_s8(vorrq_s8(v83, vshll_n_u16(*v86.i8, 8uLL)), vshlq_n_s32(vmovl_u16(*v79.i8), 0x18uLL)), v116.val[2]);
    v116.val[0] = veorq_s8(vandq_s8(v88, v47), (*v116.val & __PAIR128__(0xFFFFFF04FFFFFF04, 0xFFFFFF04FFFFFF04)));
    v116.val[3] = veorq_s8(vandq_s8(v89, v47), (*&v116.val[3] & __PAIR128__(0xFFFFFF04FFFFFF04, 0xFFFFFF04FFFFFF04)));
    v116.val[1] = veorq_s8(vandq_s8(v90, v47), (*&v116.val[1] & __PAIR128__(0xFFFFFF04FFFFFF04, 0xFFFFFF04FFFFFF04)));
    v116.val[2] = veorq_s8(vandq_s8(v91, v47), (*&v116.val[2] & __PAIR128__(0xFFFFFF04FFFFFF04, 0xFFFFFF04FFFFFF04)));
    *v51 = vaddq_s32(vsubq_s32(v91, vaddq_s32(v116.val[2], v116.val[2])), v49);
    v51[1] = vaddq_s32(vsubq_s32(v90, vaddq_s32(v116.val[1], v116.val[1])), v49);
    v51[2] = vaddq_s32(vsubq_s32(v89, vaddq_s32(v116.val[3], v116.val[3])), v49);
    v51[3] = vaddq_s32(vsubq_s32(v88, vaddq_s32(v116.val[0], v116.val[0])), v49);
    v92 = &v51[180840210].i32[v43 + 3];
    v93 = *(v92 - 16);
    *v92 = v45 ^ __ROR4__(*(v92 - 8) ^ *(v92 - 3) ^ *(v92 - 14) ^ v93, 31);
    return (*(v42 + 8 * ((23 * (v44 != 723360780)) ^ a5 ^ (a5 - 709))))(v93, &a23, a3, v52, a5, (a5 + 916642911) & 0xEDC02F7F, a7, 268080937, a9, a10, a11, a12);
  }

  else
  {
    if (a39 == 1)
    {
      v117 = vld4q_s8(&a23);
      v53 = veorq_s8(v117.val[0], v48);
      v54 = vmovl_high_u8(v53);
      v55 = vmovl_high_u16(v54);
      v56 = vmovl_u16(*v54.i8);
      v57 = vmovl_u8(*v53.i8);
      v58 = vmovl_high_u16(v57);
      v59 = vmovl_u16(*v57.i8);
      v60 = veorq_s8(v117.val[1], v48);
      v61 = vmovl_u8(*v60.i8);
      v62 = vmovl_high_u8(v60);
      v63 = veorq_s8(v117.val[2], v48);
      _Q25 = vmovl_u8(*v63.i8);
      _Q24 = vmovl_high_u8(v63);
      __asm
      {
        SHLL2           V26.4S, V24.8H, #0x10
        SHLL2           V27.4S, V25.8H, #0x10
      }

      v117.val[0] = veorq_s8(v117.val[3], v48);
      v117.val[1] = vmovl_u8(*v117.val[0].i8);
      v117.val[2] = vmovl_u16(*v117.val[1].i8);
      v117.val[0] = vmovl_high_u8(v117.val[0]);
      v117.val[3] = vmovl_u16(*v117.val[0].i8);
      v117.val[0] = vorrq_s8(vorrq_s8(vshlq_n_s32(vmovl_high_u16(v117.val[0]), 0x18uLL), _Q26), vorrq_s8(vshll_high_n_u16(v62, 8uLL), v55));
      v117.val[3] = vorrq_s8(vorrq_s8(vshlq_n_s32(v117.val[3], 0x18uLL), vshll_n_s16(*_Q24.i8, 0x10uLL)), vorrq_s8(vshll_n_u16(*v62.i8, 8uLL), v56));
      v117.val[1] = vorrq_s8(vorrq_s8(vshlq_n_s32(vmovl_high_u16(v117.val[1]), 0x18uLL), _Q27), vorrq_s8(vshll_high_n_u16(v61, 8uLL), v58));
      v117.val[2] = vorrq_s8(vorrq_s8(vshlq_n_s32(v117.val[2], 0x18uLL), vshll_n_s16(*_Q25.i8, 0x10uLL)), vorrq_s8(vshll_n_u16(*v61.i8, 8uLL), v59));
      v72 = vdupq_n_s32(0x39F5081Fu);
      v73 = veorq_s8(vandq_s8(v117.val[0], v72), (*&v55 & __PAIR128__(0xFFFFFF07FFFFFF07, 0xFFFFFF07FFFFFF07)));
      v74 = veorq_s8(vandq_s8(v117.val[3], v72), (*&v56 & __PAIR128__(0xFFFFFF07FFFFFF07, 0xFFFFFF07FFFFFF07)));
      v75 = veorq_s8(vandq_s8(v117.val[1], v72), (*&v58 & __PAIR128__(0xFFFFFF07FFFFFF07, 0xFFFFFF07FFFFFF07)));
      v76 = veorq_s8(vandq_s8(v117.val[2], v72), (*&v59 & __PAIR128__(0xFFFFFF07FFFFFF07, 0xFFFFFF07FFFFFF07)));
      *v51 = vaddq_s32(vsubq_s32(v117.val[2], vaddq_s32(v76, v76)), v49);
      v51[1] = vaddq_s32(vsubq_s32(v117.val[1], vaddq_s32(v75, v75)), v49);
      v51[2] = vaddq_s32(vsubq_s32(v117.val[3], vaddq_s32(v74, v74)), v49);
      v51[3] = vaddq_s32(vsubq_s32(v117.val[0], vaddq_s32(v73, v73)), v49);
      JUMPOUT(0x1000566C4);
    }

    v95 = (((a33 ^ 0x263B88A1) - 641435809) ^ ((a33 ^ 0xC832A380) + 936205440) ^ ((a33 ^ 0xE2C19255) + 490630571)) + (((a33 ^ 0xEF9F9B93) + 274752621) ^ ((a33 ^ 0xB78D3DEB) + 1215480341) ^ ((a33 ^ 0x54DA1F0C) - 1423580940)) - 1846134756;
    v96 = (((a34 ^ 0x1A5CA5F6) - 442279414) ^ ((a34 ^ 0x5BF0B1BD) - 1542500797) ^ ((a34 ^ 0x4D64AD3F) - 1298443583)) + (((a34 ^ 0x5C0E03DD) - 1544422365) ^ ((a34 ^ 0xC6F031A5) + 957337179) ^ ((a34 ^ 0x96368B0C) + 1774810356)) + 839261047;
    v97 = (v96 ^ 0xE76B0661) & (2 * (v96 & 0xE78B5771)) ^ v96 & 0xE78B5771;
    v98 = ((2 * (v96 ^ 0x286BAA81)) ^ 0x9FC1FBE0) & (v96 ^ 0x286BAA81) ^ (2 * (v96 ^ 0x286BAA81)) & 0xCFE0FDF0;
    v99 = v98 ^ 0x40200410;
    v100 = (v98 ^ 0x8E40F9C0) & (4 * v97) ^ v97;
    v101 = ((4 * v99) ^ 0x3F83F7C0) & v99 ^ (4 * v99) & 0xCFE0FDF0;
    v102 = (v101 ^ 0xF80F5C0) & (16 * v100) ^ v100;
    v103 = ((16 * (v101 ^ 0xC0600830)) ^ 0xFE0FDF00) & (v101 ^ 0xC0600830) ^ (16 * (v101 ^ 0xC0600830)) & 0xCFE0FDF0;
    v104 = v102 ^ 0xCFE0FDF0 ^ (v103 ^ 0xCE00DD00) & (v102 << 8);
    a33 = v95 ^ ((v95 ^ 0xD8D36BDE) + 1598574870) ^ ((v95 ^ 0xB572E70B) + 854187457) ^ ((v95 ^ 0x4C3AB63A) - 878605070) ^ ((v95 ^ 0x59FFFFDB) - 563821295) ^ 0x74AC7C40;
    a34 = v96 ^ (2 * ((v104 << 16) & 0x4FE00000 ^ v104 ^ ((v104 << 16) ^ 0x7DF00000) & (((v103 ^ 0x1E020F0) << 8) & 0x4FE00000 ^ (((v103 ^ 0x1E020F0) << 8) ^ 0x60FD0000) & (v103 ^ 0x1E020F0) ^ 0xF000000))) ^ 0xEF4215E5;
    v105 = (((a35 ^ 0x5F61C7D7) - 1600243671) ^ ((a35 ^ 0x20E7C1E0) - 552059360) ^ ((a35 ^ 0x734EBF43) - 1934540611)) + (((a35 ^ 0xB9A00466) + 1180695450) ^ ((a35 ^ 0xE632BD95) + 432882283) ^ ((a35 ^ 0x535A0087) - 1398407303)) + 796538999;
    v106 = (v105 ^ 0xC387B17D) & (2 * (v105 & 0xEA173A71)) ^ v105 & 0xEA173A71;
    v107 = ((2 * (v105 ^ 0xD7AFB1DD)) ^ 0x7B711758) & (v105 ^ 0xD7AFB1DD) ^ (2 * (v105 ^ 0xD7AFB1DD)) & 0x3DB88BAC;
    v108 = v107 ^ 0x48888A4;
    v109 = (v107 ^ 0x38300308) & (4 * v106) ^ v106;
    v110 = ((4 * v108) ^ 0xF6E22EB0) & v108 ^ (4 * v108) & 0x3DB88BAC;
    v111 = (v110 ^ 0x34A00AA0) & (16 * v109) ^ v109;
    v112 = ((16 * (v110 ^ 0x918810C)) ^ 0xDB88BAC0) & (v110 ^ 0x918810C) ^ (16 * (v110 ^ 0x918810C)) & 0x3DB88BA0;
    v113 = v111 ^ 0x3DB88BAC ^ (v112 ^ 0x19888A00) & (v111 << 8);
    v114 = (((a36 ^ 0xE2D2D48F) + 489499505) ^ ((a36 ^ 0xD47781BB) + 730365509) ^ ((a36 ^ 0x3A6DEC40) - 980282432)) + (((a36 ^ 0xEBBC1919) + 339994343) ^ ((a36 ^ 0x3D0D07B4) - 1024264116) ^ ((a36 ^ 0xDA79A7D9) + 629561383)) - 2036397621;
    a35 = v105 ^ (2 * (((v113 << 16) ^ 0xBAC0000) & (((v112 ^ 0x2430012C) << 8) & 0x3DB80000 ^ 0x5300000 ^ (((v112 ^ 0x2430012C) << 8) ^ 0xB88B0000) & (v112 ^ 0x2430012C)) ^ v113 ^ ((v113 << 16) & 0x3DB80000 | 0x8108))) ^ 0x8EFF964D;
    a36 = v114 ^ ((v114 ^ 0x2C8BD069) - 1099318922) ^ ((v114 ^ 0x3A1FC33A) - 1460819417) ^ ((v114 ^ 0x46E7E5E) - 1768155325) ^ ((v114 ^ 0x7FF7FBEE) - 318401805) ^ 0x61C52F97;
    return v115(v47, v48, v49, v50);
  }
}

uint64_t sub_1000573EC()
{
  v5 = v2 + 571 * (v3 ^ 0x53Eu) - 2285;
  *(v0 + v5) = *(v1 + v5) ^ 0xA7;
  return (*(v4 + 8 * ((116 * (v5 == 0)) ^ v3)))();
}

void sub_100057430(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, int a16, int a17)
{
  v21 = 210068311 * ((-1798561425 - ((v20 - 144) | 0x94CC216F) + ((v20 - 144) | 0x6B33DE90)) ^ 0xF9E5E134);
  *(v20 - 136) = v19;
  *(v20 - 128) = a10;
  *(v20 - 116) = a17 + v21 + (v18 ^ 0xD3D49976);
  *(v20 - 144) = v21 + v18 - 583;
  (*(v17 + 8 * (v18 ^ 0xA27)))(v20 - 144);
  JUMPOUT(0x10004FE50);
}

uint64_t sub_100057554@<X0>(uint64_t a1@<X1>, char a2@<W2>, unsigned int a3@<W8>, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, int a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, unsigned int a30)
{
  v34 = *(&a18 + a3 + 72);
  v35 = ((2 * a3) & 0xBD37F9F8) + (a3 ^ 0x5E9BFCFF) + v30;
  *(a1 + v35) = v34 ^ 0xD3;
  *(a1 + v35 + 1) = ((v31 - a2 + 106) ^ BYTE1(v34)) - ((2 * ((v31 - a2 + 106) ^ BYTE1(v34))) & 0x4E) - 89;
  *(a1 + v35 + 2) = (BYTE2(v34) ^ 0xC8) - ((v34 >> 15) & 0x4E) - 89;
  *(a1 + v35 + 3) = (HIBYTE(v34) ^ 0xC) - ((2 * (HIBYTE(v34) ^ 0xC)) & 0x4E) - 89;
  return (*(v33 + 8 * (((a3 + 4 >= a30) * v32) ^ v31)))();
}

uint64_t sub_100057710(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, int a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, int a17, int a18, unsigned int a19, char *a20, unsigned int a21)
{
  if ((a10 - 1894498476) >= 0x9F1A1CE)
  {
    v24 = 1908478089;
  }

  else
  {
    v24 = 1908478090;
  }

  v25 = 1564307779 * ((((2 * &a16) | 0xF5E6F2BA) - &a16 - 2062776669) ^ 0xEDFEB54E);
  a16 = a11;
  a20 = &a14;
  a21 = v24 - v25;
  a18 = v23 - v25 - 2013067009;
  a19 = 1404235743 - v25;
  v26 = (*(v22 + 8 * (v23 ^ 0x8C8)))(&a16);
  return (*(v22 + 8 * ((((a17 == v21 + ((v23 - 333) | 0x26) + 47 - 221) << 6) | ((a17 == v21 + ((v23 - 333) | 0x26) + 47 - 221) << 10)) ^ v23)))(v26);
}

uint64_t sub_100057894@<X0>(uint64_t a1@<X1>, int a2@<W8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  HIDWORD(v30) = HIDWORD(a6) - 1098369485;
  LODWORD(v30) = 975105770;
  v28.i64[0] = 0xA7A7A7A7A7A7A7A7;
  v28.i64[1] = 0xA7A7A7A7A7A7A7A7;
  return sub_100021F00(a1, (v27 - 228), 78, 2848, 1100480512, a2, v28, vdupq_n_s32(0x39F5081Cu), vdupq_n_s32(0x39F50818u), a3, a4, a5, a6, a7, a8, v30, a10, v26 - 16, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26);
}

uint64_t sub_100057A20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, int a16, uint64_t a17, unsigned int a18, uint64_t a19, uint64_t a20, int *a21)
{
  a18 = (v21 - 789) ^ (50899313 * (((&a18 | 0x3E816A11) - &a18 + (&a18 & 0xC17E95E8)) ^ 0x2AAEF78A));
  a19 = a14;
  a21 = &a16;
  v24 = (*(v22 + 8 * (v21 ^ 0xFC4)))(&a18);
  return (*(v22 + 8 * ((271 * (a16 == (v21 ^ (v23 + 359) ^ 0xB8A86CCF))) ^ v21)))(v24);
}

uint64_t sub_100057AC8@<X0>(uint64_t a1@<X0>, int a2@<W1>, void *a3@<X8>)
{
  v7 = *(*a3 + (v5 - 1481339930)) ^ 0xA7;
  v8 = ((*(*a3 + v5 - 1481340603 + ((a2 - 2146) ^ 0x20Fu)) ^ 0xA7) << 24) | ((*(*a3 + (v5 - 1481339932)) ^ 0xA7) << 16) | ((*(*a3 + (v5 - 1481339931)) ^ 0xA7) << 8) | v7;
  return (*(v4 + 8 * ((13 * (v6 - *(a1 + 12) + ((v8 + v3 - 2 * (v8 & (v3 + 4) ^ v7 & 4)) & 0xFFFFFF ^ 0xF50818) != -402439102)) ^ a2)))();
}

uint64_t sub_100057B84@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, _DWORD *a12, uint64_t a13, int a14, int a15, uint64_t a16, int a17, int a18, unint64_t a19)
{
  v26 = 43 * (v19 ^ 0x28D);
  *a12 = a1;
  LODWORD(STACK[0x21C]) = a18;
  STACK[0x220] = a19;
  LODWORD(STACK[0x228]) = (v19 ^ 0x70E) - v24 + a15 + 2073473802;
  STACK[0x230] = v22 + (v24 - 1745916841);
  v27 = v19;
  v28 = (*(v21 + 48 * v23 + 8))(a6);
  return (*(v20 + 8 * (((v28 + v25 - ((2 * v28) & 0x73EA1030) == v25) * (v26 ^ 0x7B2)) | v27)))();
}

uint64_t sub_100057C6C@<X0>(int a1@<W0>, int a2@<W6>, unsigned int a3@<W8>, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v17 = (a2 - 222511992) & 0xD433FD0;
  v18 = HIDWORD(v15) + v11 * (*(*(a8 + 8) + 4) ^ a3) + (v14[1] ^ a3) + HIDWORD(v10) + v16 * ((v17 - 346) ^ v12 ^ *(*(a7 + 8) + 4));
  *v14 = v18 + a3 - (a1 & (2 * v18));
  return (*(v13 + 8 * (((v8 != 2) * v9) ^ v17)))();
}

uint64_t sub_100057D5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16)
{
  *(v20 - 112) = &a16;
  *(v20 - 104) = a15;
  *(v20 - 120) = (v16 + 423) ^ (((2 * ((v20 - 120) & 0x1E23C890) - (v20 - 120) - 505661585) ^ 0xBD9163EA) * v18);
  v21 = (*(v17 + 8 * (v16 ^ 0x904)))(v20 - 120);
  return (*(v17 + 8 * ((1284 * (*(v20 - 116) == ((v16 - 2024610413) & 0x78AD1BBF ^ (v19 - 739)))) ^ v16)))(v21);
}

uint64_t sub_100057EB8@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, int a4)
{
  v10 = ((2 * ((v9 - 144) & 0x6E429208) - (v9 - 144) + 297627122) ^ 0x836B5256) * v8;
  *(v9 - 128) = v6;
  *(v9 - 144) = v10 + (v4 ^ 0xAFBFFAE6) + (a1 & 0x5F7FF5CC) + a4 + 37 + 2129970959;
  *(v9 - 136) = a4 - v10 - 1974;
  v11 = (*(v5 + 8 * (a4 ^ 0x16B)))(v9 - 144);
  return (*(v5 + 8 * (((*(v9 - 140) != v7) * (a4 - 2107)) | a4)))(v11);
}

uint64_t sub_10005869C@<X0>(uint64_t a1@<X8>)
{
  v7 = v6 - 1;
  *(a1 + v7) = *(v2 + v7) + (v5 | ~(2 * *(v2 + v7))) - 88;
  return (*(v1 + 8 * (((v7 != 0) * v3) ^ v4)))();
}

uint64_t sub_10005876C@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, char a56)
{
  v61 = (v60 + 4 * v56);
  v62 = v57 & 0x80000000;
  v63 = v56 + 1;
  v64 = *(v60 + 4 * v63);
  v65 = v61[397] ^ ((v64 & 0x7FFFFFFE | v62) >> 1);
  *v61 = (v65 + v58 - (((a1 ^ 0x7B5) + 2143621977) & (2 * v65))) ^ *(&a56 + (v64 & 1));
  return (*(v59 + 8 * ((13 * (v63 == 227)) | a1)))();
}

uint64_t sub_100058A8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42)
{
  *(v46 - 124) = ((v43 + 378622137) ^ 0x46827971) - v42;
  *(v46 - 136) = v42 + 1;
  *(v46 - 132) = (v43 - 1652122536) ^ v42;
  *(v46 - 152) = (v43 + 1561578011) ^ v42;
  STACK[0x5D8] = v42 + 3;
  STACK[0x5C0] = v42 + (v44 + 1);
  *(v46 - 128) = ((v43 + 378622137) ^ 0x46827909) + v42;
  v47 = (*(a42 + 8 * (v43 ^ v45)))(v46 - 152);
  return (*(a42 + 8 * *(v46 - 112)))(v47);
}

void sub_100058FF4(int a1@<W8>)
{
  v3 = *(v2 + 4);
  if (((v1 - 531) ^ 0x26F0994F) + v3 >= 0)
  {
    v4 = a1;
  }

  else
  {
    v4 = -a1;
  }

  *(v2 + 4) = v4 + v3;
  JUMPOUT(0x100059040);
}

void sub_10005908C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unsigned __int8 *a11)
{
  v13 = a11[3] ^ 0xA7;
  v14 = ((*a11 ^ 0xA7) << 24) | ((a11[1] ^ 0xA7) << 16) | ((a11[2] ^ 0xA7) << 8) | v13;
  **(v11 + 24) = v14 + v12 - 2 * (v14 & (v12 + 4) ^ v13 & 4);
  JUMPOUT(0x1000357E0);
}

uint64_t sub_1000590EC(__n128 *a1, uint64_t a2, __n128 a3)
{
  a1[-1] = a3;
  *a1 = a3;
  return (*(v5 + 8 * (((a2 == 0) * v4) ^ v3)))(a1 + 2, a2 - 8);
}

uint64_t sub_100059250(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  v11 = v8 - v9;
  if (v7 > v8 - v9)
  {
    v11 = v7;
  }

  return (*(v10 + 8 * ((((a7 + 366389246) & 0xEA2955A7 ^ 0xA6E) * (v11 < 0x7FFFFFFF)) ^ a7)))();
}

uint64_t sub_1000592A8@<X0>(uint64_t a1@<X8>)
{
  v5 = v2 - 1;
  *(a1 + v5) = *(v1 + v5) + ~(((v3 + 115) ^ 0xC4) & (2 * *(v1 + v5))) - 88;
  return (*(v4 + 8 * ((4024 * (v5 == 0)) ^ v3)))();
}

uint64_t sub_100059770(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, __int16 a15, char a16, uint64_t a17, int a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char *a25)
{
  LODWORD(a22) = (v26 + 656) ^ ((((&a22 | 0xD1A370E9) + (~&a22 | 0x2E5C8F16)) ^ 0xC58CED73) * v25);
  a25 = &a16;
  a23 = a21;
  v28 = (*(v27 + 8 * (v26 ^ 0x863u)))(&a22);
  return sub_10004C75C(v28, v29, v30, v31, v32, v33, v34, v35, a9, a10, a11, a12, a13, a14, a17, a18, a19, a20, a21, a22, a23, a24, a25);
}

uint64_t sub_100059840(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, unsigned int a16, char *a17, int a18)
{
  v21 = 2 * &a15;
  v22 = 742307843 * (((v21 | 0xFF036ADC) - &a15 + 8276626) ^ 0xE1A3383B);
  a16 = v22 + 1827786530;
  LODWORD(a17) = 1471728200 - v22;
  HIDWORD(a17) = 1605 - v22;
  a18 = v22 ^ 0x46F03CCA;
  (*(v19 + 19224))(&a15);
  a18 = 2066391179 * (((v21 | 0xB2BA601E) - &a15 - 1499279375) ^ 0xF67AB217) + 1510;
  a17 = &a10;
  v23 = (*(v19 + 18968))(&a15);
  return (*(v19 + 8 * ((1913 * (a15 == v18)) ^ v20)))(v23);
}

uint64_t sub_10005993C@<X0>(int a1@<W2>, uint64_t a2@<X8>, __n128 a3@<Q0>)
{
  v6.n128_u64[0] = (v3 + 13) & 0xF;
  v6.n128_u64[1] = (v3 + 12) & 0xF;
  v7.n128_u64[0] = (v3 + 11) & 0xF;
  v7.n128_u64[1] = (v3 + 10) & 0xF;
  v8.n128_u64[0] = (v3 + 9) & 0xF;
  v8.n128_u64[1] = v4 & 0xF ^ 4;
  v11.val[0].i64[0] = (v3 + 7) & 0xF;
  v11.val[0].i64[1] = (v3 + 6) & 0xF;
  v11.val[1].i64[0] = (v3 + 5) & 0xF;
  v11.val[1].i64[1] = (v3 + 4) & 0xF;
  v11.val[2].i64[0] = (v3 + 3) & 0xF;
  v11.val[2].i64[1] = (v3 + 2) & 0xF;
  v11.val[3].i64[0] = (v3 + 1) & 0xF;
  v11.val[3].i64[1] = v3 & 0xF;
  v9.n128_u64[0] = 0x7575757575757575;
  v9.n128_u64[1] = 0x7575757575757575;
  return sub_100059A38(a2 - 15, (v3 + 14) & 0xF, *(v5 - 184) - 15, (a1 - 744203145) & 0x2C5BA9D9 ^ 0x859, 4077, a3, v6, v7, v8, xmmword_1000799E0, vqtbl4q_s8(v11, xmmword_1000799E0), v9);
}

uint64_t sub_100059A38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, double a6, __n128 a7, __n128 a8, __n128 a9, int8x16_t a10, double a11, int8x16_t a12)
{
  v20 = ~v17 + v15;
  v21 = v20 & 0xF;
  v23.i64[0] = vqtbl4q_s8(*(&a7 - 1), a10).u64[0];
  *&v23.i64[1] = a11;
  v24 = vrev64q_s8(vmulq_s8(v23, a12));
  *(a3 + v20) = veorq_s8(veorq_s8(veorq_s8(*(v12 + v21 - 15), *(a1 + v20)), veorq_s8(*(v14 + v21 - 15), *(v13 + v21 - 15))), vextq_s8(v24, v24, 8uLL));
  return (*(v19 + 8 * (((a4 + v17 == v16) * a5) ^ v18)))();
}

uint64_t sub_100059DB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, int a9@<W8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, unsigned int a17, int a18, unsigned int a19)
{
  v26 = &a19 + 6 * v21;
  v26[2] = v23;
  v26[3] = v22;
  *(v26 + 2) = a13;
  v26[6] = a17;
  a19 = v20 + ((a9 + 1749040544) & 0x97BFC5DB) - 1426;
  return (*(v24 + 8 * ((1086 * (v19 + a7 + ((a9 - 1040187783) | 0x1114202u) < v25)) ^ a9)))(a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t sub_100059E40@<X0>(int a1@<W8>)
{
  *v2 = a1 ^ v1;
  v5 = (a1 ^ v1) - ((2 * (a1 ^ v1)) & 0x8317D6E8) + 1099688820 == ((1142 * ((v4 - 370) ^ 0x1C8) - 2196) | 0x622) + 1099687162;
  return (*(v3 + 8 * (v5 | (32 * v5) | (v4 - 370))))();
}

uint64_t sub_100059FC8@<X0>(int a1@<W8>, uint64_t a2, unsigned int a3, uint64_t a4, uint64_t *a5, int a6, int a7)
{
  v12 = ((&a3 & 0x9F7841A1 | ~(&a3 | 0x9F7841A1)) ^ 0xB1859321) * a1;
  a4 = v7;
  a5 = &a2;
  a3 = v12 + 799454522;
  a6 = (v11 - 580) ^ v12;
  a7 = v9 - v12 + (((v11 - 1397) | 0x131) ^ 0xE97AB61);
  v13 = (*(v8 + 8 * (v11 ^ 0xC2A)))(&a3);
  return (*(v8 + 8 * ((820 * (*(v7 + 24) == (v11 ^ 0x671 ^ (v10 + 772)))) ^ v11)))(v13);
}

uint64_t sub_10005A088(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, int a17, int a18, char a19, int a20, char a21, char *a22, int a23, unsigned int a24, char *a25, int a26, char *a27, int *a28, uint64_t a29)
{
  a20 = 1745916841;
  v31 = *(a2 + 4);
  v32 = 1082434553 * ((2 * (&a22 & 0x130E9758) - &a22 - 319723354) ^ 0x77B69E2C);
  a29 = *(a2 + 8);
  a27 = &a21;
  a28 = &a20;
  a22 = &a16;
  a25 = &a19;
  a24 = v32 + v31 + 296704421;
  a26 = v32 + v29 + 446;
  v34 = (*(v30 + 8 * (v29 ^ 0x8CE)))(&a22);
  return (*(v30 + 8 * ((939 * (a23 == (v29 ^ 0x39F509B3))) ^ v29)))(v34, a2);
}

uint64_t sub_10005A1C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  *(v19 - 136) = ((v18 ^ 0x196) + 69) ^ (210068311 * ((2 * ((v19 - 136) & 0x32136DE8) - (v19 - 136) + 1307349522) ^ 0xDF3AADB6));
  *(v19 - 128) = v15;
  *(v19 - 120) = &a15;
  v20 = (*(v16 + 8 * (v18 ^ 0xD91)))(v19 - 136);
  return (*(v16 + 8 * (((v17 != ((((v18 ^ 0x196) - 957) | 0x200) ^ 0x332)) * (v18 ^ 0x4F0)) ^ v18 ^ 0x196)))(v20);
}

uint64_t sub_10005A2B4()
{
  v5 = v3 + 346 + *(v2 + 7) - 860;
  v6 = (v1 & (2 * v5)) + (v5 ^ v0) == v0;
  return (*(v4 + 8 * (((8 * v6) | (v6 << 7)) ^ v3)))();
}

uint64_t sub_10005A34C(double a1, double a2, double a3, double a4, int8x16_t a5, double a6, int8x16_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v17 = (a12 + (v14 + v12));
  v18 = *v17;
  v19 = v17[1];
  v20 = (&STACK[0x22C] + v14);
  *v20 = vaddq_s8(vsubq_s8(v18, vandq_s8(vaddq_s8(v18, v18), a5)), a7);
  v20[1] = vaddq_s8(vsubq_s8(v19, vandq_s8(vaddq_s8(v19, v19), a5)), a7);
  return (*(v16 + 8 * (((v14 + 32 == ((v13 - 1513) | 0xAu) + 38) * v15) ^ v13)))();
}

uint64_t sub_10005A3B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, unsigned int a12)
{
  v15 = a12 < 0x544E9A16;
  if (v15 == v12 > 0xABB165E9)
  {
    LOBYTE(v15) = v12 + 1414437398 < a12;
  }

  return (*(v14 + 8 * (((2 * ((((v13 ^ 0x49) + 1) ^ v15) & 1)) & 0xEF | (16 * ((((v13 ^ 0x49) + 1) ^ v15) & 1))) ^ v13)))(40);
}

void sub_10005A5B8()
{
  v4 = *(v1 + 16);
  **(v1 + 24) = v0;
  *v4 = v3;
  *v1 = *(v2 + 24);
}

uint64_t sub_10005A650@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19, int a20)
{
  v27 = *(v22 + 8 * a1);
  v29 = STACK[0x27C];
  v30 = STACK[0x280];
  v31 = LOBYTE(STACK[0x28C]);
  if (v31 == 2)
  {
    v35 = LODWORD(STACK[0x284]);
    v36 = (v20 + v23 + 498245050);
    v37 = ((*v36 ^ v24) << 24) | ((v36[1] ^ v24) << 16) | ((v36[a20 + 10 - 268] ^ v24) << 8);
    *v21 = (v37 | v36[3] ^ v24) + v25 - 2 * ((v37 | v36[3] ^ v24) & (v25 + 4) ^ (v36[3] ^ v24) & 4);
    return (*(v22 + 8 * (((2 * ((v23 + 498245054) > 0x3F)) | (8 * ((v23 + 498245054) > 0x3F))) ^ a20)))(v35);
  }

  else if (v31 == 1)
  {
    v32 = (v20 + v23 + 498245050);
    v33 = (v26 + 21) ^ 0x96 ^ *v32;
    LODWORD(v32) = ((v32[2] ^ v24) << 16) | ((v32[3] ^ v24) << 24) | v33 | ((v32[1] ^ v24) << 8);
    *v21 = v32 + v25 - 2 * (v32 & (v25 + 7) ^ v33 & 7);
    return (*(v22 + 8 * (((2 * ((v23 + 498245054) > 0x3F)) | (16 * ((v23 + 498245054) > 0x3F))) ^ (v26 + 1799))))();
  }

  else
  {
    v28 = STACK[0x274];
    v38 = (((v28 ^ 0x40EC0545) - 1089209669) ^ ((v28 ^ 0x81266FCB) + 2128187445) ^ ((v28 ^ 0xCD02D3FA) + 855452678)) + (((v28 ^ 0x2A205549) - 706762057) ^ ((v28 ^ 0x16772EC4) - 376909508) ^ ((v28 ^ 0x309FC2F9) - 815776505)) + 1481242296;
    v39 = (v38 ^ 0xE4477FBB) & (2 * (v38 & 0xC1477C30)) ^ v38 & 0xC1477C30;
    v40 = ((2 * (v38 ^ 0x664FEFBB)) ^ 0x4E112716) & (v38 ^ 0x664FEFBB) ^ (2 * (v38 ^ 0x664FEFBB)) & 0xA708938A;
    v41 = v40 ^ 0xA1089089;
    v42 = (v40 ^ 0x6000100) & (4 * v39) ^ v39;
    v43 = ((4 * v41) ^ 0x9C224E2C) & v41 ^ (4 * v41) & 0xA7089388;
    v44 = (v43 ^ 0x84000200) & (16 * v42) ^ v42;
    v45 = ((16 * (v43 ^ 0x23089183)) ^ 0x708938B0) & (v43 ^ 0x23089183) ^ (16 * (v43 ^ 0x23089183)) & 0xA7089380;
    v46 = v44 ^ 0xA708938B ^ (v45 ^ 0x20081000) & (v44 << 8);
    v47 = v38 ^ (2 * ((v46 << 16) & 0x27080000 ^ v46 ^ ((v46 << 16) ^ 0x138B0000) & (((v45 ^ 0x8700830B) << 8) & 0x27080000 ^ 0x27080000 ^ (((v45 ^ 0x8700830B) << 8) ^ 0x8930000) & (v45 ^ 0x8700830B))));
    v48 = (((LODWORD(STACK[0x278]) ^ 0xA2406D36) + 1572836042) ^ ((LODWORD(STACK[0x278]) ^ 0x1979D0E0) - 427413728) ^ ((LODWORD(STACK[0x278]) ^ 0xB7F104A2) + 1208941406)) + (((LODWORD(STACK[0x278]) ^ 0x5B18CDD7) - 1528352215) ^ ((LODWORD(STACK[0x278]) ^ 0x5E21287A) - 1579231354) ^ ((LODWORD(STACK[0x278]) ^ 0x9F15CD9) - 166812889)) + 1960788244;
    v49 = v48 & 0xA4B231D4 ^ 0xFEC2CF07 ^ (v48 ^ 0x1230BDD3) & (2 * (v48 & 0xA4B231D4));
    v50 = ((2 * (v48 ^ 0x5A70FED3)) ^ 0xFD859E0E) & (v48 ^ 0x5A70FED3) ^ (2 * (v48 ^ 0x5A70FED3)) & 0xFEC2CF06;
    v51 = v50 & 0xD83D18D2 ^ v49 ^ ((4 * v49) ^ 0x233624CE) & (v50 ^ 0xFC808E07);
    v52 = ((4 * v50) ^ 0x2A3F20CA) & (v50 ^ 0xFC808E07) ^ v50 & 0xD83D18D2;
    v53 = v52 & 0xD83D18D2 ^ v51 ^ ((16 * v51) ^ 0xB4116882) & (v52 ^ 0xD8000807);
    v54 = ((16 * v52) ^ 0x583D98F2) & (v52 ^ 0xD8000807) ^ v52 & 0xD83D18D2;
    v55 = v53 ^ v54 & 0xD83D18D2 ^ ((v53 << 8) ^ 0x1AF21FD2) & (v54 ^ 0xD8000807);
    v56 = ((v54 << 8) ^ 0xD8351AD2) & (v54 ^ 0xD8000807) ^ v54 & 0xD83D18D2;
    LODWORD(STACK[0x274]) = v47 ^ 0x858EE252;
    LODWORD(STACK[0x278]) = v48 ^ (2 * (v55 ^ v56 & 0x583D18D2 ^ ((v55 << 16) ^ 0x1F3818D2) & (v56 ^ 0x26C20000) ^ ((v55 << 16) ^ 0x1F3818D2) & 0x7EC20802)) ^ 0x55FF16AE;
    v57 = (((v29 ^ 0xDA5C66AA) + 631478614) ^ ((v29 ^ 0xE6EE6DD2) + 420581934) ^ ((v29 ^ 0x307AB20C) - 813347340)) + (((LODWORD(STACK[0x27C]) ^ 0x4338566E) - 1127765614) ^ ((LODWORD(STACK[0x27C]) ^ 0xDD310953) + 583988909) ^ ((LODWORD(STACK[0x27C]) ^ 0x92C1E649) + 1832786359)) - 1981159481;
    v58 = (v57 ^ 0x8F97C2BC) & (2 * (v57 & 0x8FA78B21)) ^ v57 & 0x8FA78B21;
    v59 = ((2 * (v57 ^ 0x9D9DD2BC)) ^ 0x2474B33A) & (v57 ^ 0x9D9DD2BC) ^ (2 * (v57 ^ 0x9D9DD2BC)) & 0x123A599C;
    v60 = v59 ^ 0x120A4885;
    v61 = (v59 ^ 0x301108) & (4 * v58) ^ v58;
    v62 = ((4 * v60) ^ 0x48E96674) & v60 ^ (4 * v60) & 0x123A599C;
    v63 = (v62 ^ 0x284010) & (16 * v61) ^ v61;
    v64 = ((16 * (v62 ^ 0x12121989)) ^ 0x23A599D0) & (v62 ^ 0x12121989) ^ (16 * (v62 ^ 0x12121989)) & 0x123A5990;
    v65 = v63 ^ 0x123A599D ^ (v64 ^ 0x2201900) & (v63 << 8);
    v66 = v57 ^ (2 * ((v65 << 16) & 0x123A0000 ^ v65 ^ ((v65 << 16) ^ 0x599D0000) & (((v64 ^ 0x101A400D) << 8) & 0x123A0000 ^ 0x220000 ^ (((v64 ^ 0x101A400D) << 8) ^ 0x3A590000) & (v64 ^ 0x101A400D)))) ^ 0x872B816F;
    v67 = (((v30 ^ 0xEB5571C5) + 346721851) ^ ((v30 ^ 0xC06A5418) + 1066773480) ^ ((v30 ^ 0x27F79CA9) - 670538921)) + (((LODWORD(STACK[0x280]) ^ 0x982A6DAF) + 1742049873) ^ ((LODWORD(STACK[0x280]) ^ 0x95047D5B) + 1794867877) ^ ((LODWORD(STACK[0x280]) ^ 0x1E6A980) - 31893888)) + 1566131471;
    v68 = (v67 ^ 0xBE392D98) & (2 * (v67 & 0xBC382DD9)) ^ v67 & 0xBC382DD9;
    v69 = (2 * (v67 ^ 0xA659251A)) & 0x1A6108C2 ^ 0xA210841 ^ ((2 * (v67 ^ 0xA659251A)) ^ 0x34C21186) & (v67 ^ 0xA659251A);
    v70 = (4 * v68) & v69 ^ v68 ^ ((4 * v68) & 0x106108C0 | 0x8000000);
    v71 = ((4 * v69) ^ 0x6984230C) & v69 ^ (4 * v69) & 0x1A6108C0;
    v72 = v71 ^ 0x126108C3;
    v73 = v70 ^ 0x126108C3 ^ (v71 ^ 0x8000003) & (16 * v70);
    v74 = (16 * v72) & 0x1A6108C0 ^ 0x186100C3 ^ ((16 * v72) ^ 0xA6108C30) & v72;
    v75 = (v73 << 8) & 0x1A610800 ^ v73 ^ ((v73 << 8) ^ 0x6108C300) & v74;
    LODWORD(STACK[0x27C]) = v66;
    LODWORD(STACK[0x280]) = v67 ^ (2 * ((v75 << 16) & 0x1A610000 ^ v75 ^ ((v75 << 16) ^ 0x8C30000) & ((v74 << 8) & 0x1A610000 ^ 0x1A610000 ^ ((v74 << 8) ^ 0x61080000) & v74))) ^ 0x94B0852B;
    return v27();
  }
}

uint64_t sub_10005B5CC@<X0>(uint64_t a1@<X0>, int a2@<W1>, int a3@<W4>, uint64_t a4@<X5>, int a5@<W8>)
{
  v11 = HIDWORD(v6) + HIDWORD(v7) + (((v8 - 434) | 0x608) ^ (v5 + 524) ^ *(v10 + 4 * a5));
  *(v10 + 4 * a3) = v5 + v8 - 61 + v11 - (a2 & (2 * v11)) - 393;
  *(v10 + 4 * a5) = HIDWORD(v11) + v5 - 2 * HIDWORD(v11);
  return (*(v9 + 8 * (v8 ^ (1701 * (a1 + 1 == a4)))))();
}

uint64_t sub_10005B75C(int a1, int a2, int a3, uint64_t a4, int a5, int a6, int a7, unint64_t a8)
{
  v13 = *(v11 + 8);
  v14 = *(v13 + 4 * (a8 + v9 - 374)) ^ v8;
  *(v13 + 4 * (a6 - 1)) = ((v14 >> v10) & a3 | (a7 ^ a1) & ~(v14 >> v10)) ^ a1;
  return (*(v12 + 8 * (((a8 > 1) * a5) ^ a2)))();
}

uint64_t sub_10005B8D4(uint64_t a1)
{
  v6 = (v3 ^ 0xFFFFFFFFFFFFF93FLL ^ (2 * v4) ^ 0xFACu) + v2;
  *(a1 - 7 + v6) = *(v1 - 7 + v6);
  return (*(v5 + 8 * ((107 * ((v2 & 0xFFFFFFF8) - 8 == v3)) ^ v4)))();
}

uint64_t sub_10005BC70()
{
  *(v6 - 136) = (v5 - 218) ^ (210068311 * ((2 * (v4 & 0x179DB700) - v4 - 396211971) ^ 0x7AB47759));
  *(v6 - 128) = v1;
  *(v6 - 120) = v2;
  v7 = (*(v0 + 8 * (v5 + 744)))(v6 - 136);
  return (*(v0 + 8 * (((v5 + 218 + ((v5 + 25) | 0xC1) - 3508) * (v3 == 1)) ^ v5)))(v7);
}

uint64_t sub_10005BD2C@<X0>(uint64_t a1@<X8>)
{
  v5 = *(v2 + v3);
  v6 = v3 - 1;
  *(a1 + v6) = v5;
  return (*(v1 + 8 * ((415 * (v6 == ((v4 - 828420023) & 0x3160ABB4) - 164)) ^ v4)))();
}

uint64_t sub_10005BD74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, char a13, uint64_t a14, int a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, char *a20)
{
  LODWORD(a17) = (v20 + 208) ^ (50899313 * ((-1263744358 - (&a17 | 0xB4ACCA9A) + (&a17 | 0x4B533565)) ^ 0x5F7CA8FE));
  a20 = &a16;
  a18 = a14;
  (*(v22 + 8 * (v20 ^ 0xA23)))(&a17);
  LODWORD(a17) = (v20 + 208) ^ (50899313 * ((&a17 & 0x5E91FA15 | ~(&a17 | 0x5E91FA15)) ^ 0xB5419871));
  a18 = a14;
  a20 = &a13;
  (*(v22 + 8 * (v20 ^ 0xA23)))(&a17);
  a17 = a14;
  HIDWORD(a18) = (v20 - 393) ^ (((((2 * &a17) | 0x2C8B08C6) - &a17 + 1773829021) ^ 0x1BE8E68F) * v24);
  v25 = (*(v22 + 8 * (v20 ^ 0xA72)))(&a17);
  return (*(v22 + 8 * ((31 * ((((v23 + v20 + 29) ^ (a18 == v21 + 14 * (v20 ^ 0x338) - 798)) & 1) == 0)) ^ v20)))(v25);
}

uint64_t sub_10005BFDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v16 = 210068311 * (((v15 - 144) & 0x41F07CE9 | ~((v15 - 144) | 0x41F07CE9)) ^ 0x2CD9BCB2);
  *(v15 - 116) = v16 + v11 + (v14 ^ 0xBD3BFF91);
  *(v15 - 144) = v16 + v14 - 1518;
  *(v15 - 136) = v13;
  *(v15 - 128) = a11;
  v17 = (*(v12 + 8 * (v14 ^ 0xFCC)))(v15 - 144);
  return sub_10005C058(v17);
}

void sub_10005C0AC()
{
  v1 = (v0 + 908);
  vld1q_dup_f32(v1);
  JUMPOUT(0x10005C0F0);
}

uint64_t sub_10005C2D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, int a13)
{
  v16 = ((v15 + 1666378462) & 0x9CAD0DAF ^ 0xC56F6932) + a13;
  v17 = v13 + 1090920918 < v16;
  if (v13 > 0xBEF9DE29 != v16 < 0x410621D6)
  {
    v17 = v16 < 0x410621D6;
  }

  return (*(v14 + 8 * ((v17 | (v17 << 6)) ^ v15)))();
}

uint64_t sub_10005C378@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35)
{
  *(v37 - 112) = 1212455568 - a33;
  *(v37 - 128) = -1330086771 - a33 + a1 - 378622758;
  *(v37 - 124) = ((a1 - 378622758) | 0xB0B87CC6) - a33;
  *(v36 + 1072) = a32;
  *(v36 + 1056) = (v35 + 1) - a33;
  *(v37 - 152) = -a33;
  *(v37 - 148) = ((a1 - 378622758) ^ 0xB0B87CED) + a33;
  v38 = (*(a35 + 8 * (a1 - 378620385)))(v37 - 152);
  return (*(a35 + 8 * *(v37 - 144)))(v38);
}

uint64_t sub_10005C410@<X0>(uint64_t a1@<X8>)
{
  v4 = (&STACK[0x248] + 4 * v2 + 16);
  v5 = vdupq_n_s32(0x98437BEB);
  v4[-1] = v5;
  *v4 = v5;
  return (*(v3 + 8 * ((((a1 & 0xFFFFFFFFFFFFFFF8) == 8) * ((v1 + 757) ^ 0xEB8)) ^ (v1 + 153))))();
}

uint64_t sub_10005C8E0(double a1)
{
  *(v4 - 1) = a1;
  *v4 = a1;
  return (*(v5 + 8 * (((v3 == 0) * v2) ^ v1)))();
}

uint64_t sub_10005C968(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, int a21)
{
  a21 = v23 - 1785193651 * ((&a17 + 442697754 - 2 * (&a17 & 0x1A63081A)) ^ 0x9BFE43A) + v21 + 2893;
  a19 = a14;
  a20 = v24;
  a17 = 0;
  (*(v22 + 8 * (v23 + v21 + 3816)))(&a17);
  return sub_100048EFC();
}

uint64_t sub_10005C9D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, int a11, int a12, int a13, int a14, char *a15, char a16, uint64_t a17)
{
  v23 = *(v17 + 20) + v21;
  v24 = 1361651671 * (((&a12 | 0xFB0A76A8) - &a12 + (&a12 & 0x4F58950)) ^ 0x28288624);
  a17 = v20;
  a15 = &a10;
  a12 = v19 + v24 - 1076688452;
  a13 = v22 - v24 + 1824;
  a16 = ((((v23 ^ 0x1F) - 31) ^ ((v23 ^ 0xE4) + 28) ^ (v22 + (v23 ^ 0x10) + v22 + 30 + 112)) - 7) ^ (-41 * (((&a12 | 0xA8) - &a12 + (&a12 & 0x50)) ^ 0x24));
  v25 = (*(v18 + 8 * (v22 ^ 0x926)))(&a12);
  return (*(v18 + 8 * ((103 * (a14 != 972359704)) ^ v22)))(v25);
}

uint64_t sub_10005CB08(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v11 = LOBYTE(STACK[0x2CC]);
  if (v11 == 2)
  {
    return (*(v10 + 8 * ((92 * (LODWORD(STACK[0x2C8]) != ((a5 + a4 + 1042) ^ 0x473))) ^ (a5 + a4 + 1725))))(a10);
  }

  if (v11 != 1)
  {
    JUMPOUT(0x10005CC00);
  }

  return (*(v10 + 8 * ((1921 * (LODWORD(STACK[0x2C8]) == (a4 ^ (a4 - 466) ^ 0x3F2))) ^ (a5 + a4 + 913))))(a1, a10);
}

uint64_t sub_10005CC98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, int a17, unsigned int a18, char *a19, int a20)
{
  v22 = 742307843 * ((((&a17 ^ 0x1B323486) & 0x1BB234FE) + (&a17 ^ 0xE0C00178) - ((&a17 ^ 0xE0C00178) & 0x1BB234FE)) ^ 0xE550B8D3);
  HIDWORD(a19) = 1605 - v22;
  a20 = v22 ^ 0x46F03CCA;
  a18 = v22 + 1827786530;
  LODWORD(a19) = 1471728200 - v22;
  (*(v21 + 19224))(&a17);
  a20 = 2066391179 * ((2 * ((&a17 ^ 0xB8821F0E) & 0x6217D110) - (&a17 ^ 0xB8821F0E) - 1645728017) ^ 0x8A4DB3F9) + 1510;
  a19 = &a14;
  v23 = (*(v21 + 18968))(&a17);
  return (*(v21 + 8 * ((7 * (a17 != v20)) ^ 0x389u)))(v23);
}

uint64_t sub_10005CDC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  *(v16 - 128) = (v14 - 550) ^ ((((((v16 - 128) | 0xFDBE40F6) ^ 0xFFFFFFFE) - (~(v16 - 128) | 0x241BF09)) ^ 0x5E0CEB8C) * v15);
  *(v16 - 120) = &a13;
  *(v16 - 112) = a12;
  v17 = (*(v13 + 8 * (v14 + 823)))(v16 - 128);
  return (*(v13 + 8 * (((*(v16 - 124) == 598934287) * ((v14 + 201) ^ 0x647)) ^ v14)))(v17);
}

uint64_t sub_10005CE98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, char a15, __int16 a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, char *a21, char *a22)
{
  a22 = &a12;
  HIDWORD(a19) = v23 - 143681137 * ((&a19 - 1317672420 - 2 * (&a19 & 0xB175EA1C)) ^ 0xD02D61CC) + 677;
  a20 = a14;
  a21 = &a15;
  (*(v24 + 8 * (v23 ^ 0xA2C)))(&a19);
  LODWORD(a19) = (v23 + 191) ^ (50899313 * ((464303512 - (&a19 | 0x1BACB598) + (&a19 | 0xE4534A67)) ^ 0xF07CD7FC));
  a22 = &a17;
  a20 = a14;
  (*(v24 + 8 * (v23 ^ 0xA30)))(&a19);
  HIDWORD(a20) = (v23 - 410) ^ ((&a19 ^ 0x8DAD62EC) * v22);
  a19 = a14;
  v25 = (*(v24 + 8 * (v23 + 1633)))(&a19);
  return (*(v24 + 8 * ((1736 * (a20 == 39 * (v23 ^ 0x31B) + 972359353)) ^ v23)))(v25);
}

uint64_t sub_10005CFF4@<X0>(int a1@<W8>)
{
  v3 = *(v2 + 8 * (a1 + 1023));

  return v3(v1);
}

uint64_t sub_10005D130()
{
  *(v3 - 1) = v5;
  *v3 = v5;
  return (*(v4 + 8 * (((v2 == 0) * v1) ^ v0)))();
}

uint64_t sub_10005D158(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, int a14, uint64_t a15, char a16)
{
  *(a12 + 16) = -v16;
  v21 = 143681137 * ((((v20 - 136) | 0x58394F17) - (v20 - 136) + ((v20 - 136) & 0xA7C6B0E8)) ^ 0x3961C4C7);
  *(v20 - 136) = v21 ^ 0x22DC9984;
  *(v20 - 128) = v18;
  *(v20 - 120) = v21 + v19 - 877;
  (*(v17 + 8 * (v19 ^ 0x1D0)))(v20 - 136);
  v22 = 1037613739 * ((((v20 - 136) | 0xBBCDEA0D) + (~(v20 - 136) | 0x443215F2)) ^ 0x6ACFC773);
  *(v20 - 120) = v22 + v19 - 1671;
  *(v20 - 136) = (((32 * a14) ^ 0xEC6DBFFF) + 2075880816 + ((a14 << ((((v19 + 90) & 0x77) - 9) ^ v19 ^ 0xCD)) & 0xD8DB7FC0)) ^ v22;
  *(v20 - 128) = v18;
  (*(v17 + 8 * (v19 + 221)))(v20 - 136);
  *(v20 - 120) = &a16;
  *(v20 - 128) = (v19 - 1208) ^ (1785193651 * (((v20 - 136) & 0xEABA4CB | ~((v20 - 136) | 0xEABA4CB)) ^ 0xE288B714));
  *(v20 - 136) = a15;
  (*(v17 + 8 * (v19 ^ 0x1D3)))(v20 - 136);
  *(v20 - 136) = (v19 - 1292) ^ (843532609 * ((((2 * ((v20 - 136) ^ 0x623EA5A1)) | 0x13A8B496) - ((v20 - 136) ^ 0x623EA5A1) - 164911691) ^ 0x37A7AB6F));
  *(v20 - 128) = v18;
  *(v20 - 120) = a15;
  v23 = (*(v17 + 8 * (v19 ^ 0x53)))(v20 - 136);
  return (*(v17 + 8 * (((4 * (*(v20 - 132) <= 0x23B3030Du)) | (8 * (*(v20 - 132) <= 0x23B3030Du))) ^ v19)))(v23);
}

uint64_t sub_10005D3F8@<X0>(int a1@<W0>, char a2@<W7>, int a3@<W8>)
{
  v11 = *(v8 + 8 * v3);
  v12 = *v6;
  v13 = v4 + a1;
  *(*v6 + v13 + 1) = (v10 ^ BYTE2(a3)) - (v9 & (2 * (v10 ^ BYTE2(a3)))) - 89;
  *(v12 + v13) = (a2 ^ HIBYTE(a3)) + (~(2 * (a2 ^ HIBYTE(a3))) | 0xB1) - 88;
  *(v12 + v13 + 2) = (v5 ^ BYTE1(a3)) - (v9 & (2 * (v5 ^ BYTE1(a3)))) - 89;
  *(v12 + v13 + 3) = a3 ^ v7;
  return v11();
}

uint64_t sub_10005DB64()
{
  *(v3 - 144) = v0;
  v4 = v2 ^ 0x79F0;
  v5 = *(&off_100085FF0 + (v2 ^ 0x79F0) - 1005) - 4;
  v6 = v5[v1[3] ^ 0xDELL] ^ v1[3];
  v7 = *(&off_100085FF0 + (v2 ^ 0x79F0) - 1095) - 12;
  v8 = *(&off_100085FF0 + (v2 ^ 0x79F0) - 1149);
  v9 = *(v8 + (v1[14] ^ 0x82));
  v10 = (v7[v1[4] ^ 0xF7] << 24) - 1912602624;
  v11 = *(&off_100085FF0 + (v2 ^ 0x7D3D));
  v12 = *(v11 + (v1[5] ^ 0x6DLL)) << 16;
  v13 = ((((*(v8 + v1[6]) << 8) ^ 0xF25249D) & (v10 ^ 0xD965FFBD) | v10 & 0xF0000000) ^ 0xCBF05CA0) & (v12 ^ 0xFFF9FFFD);
  LOBYTE(v10) = v5[v1[15] ^ 0xFDLL] ^ v1[15];
  v14 = ((v7[v1[8] ^ 0x70] - 114) ^ 0x1C) << 24;
  v15 = *(v11 + (v1[13] ^ 0xC7));
  v16 = v5[v1[11] ^ 0xD3] ^ v1[11];
  v17 = ((*(v11 + (v1[1] ^ 0x40)) << 16) ^ 0x3A7E9052) & (v6 ^ 0x7EFF9C54) | v6 & 0xAD;
  v18 = (v7[v1[12] ^ 0xBDLL] - 114) ^ 0x1B;
  LODWORD(v7) = v7[*v1 ^ 9];
  LODWORD(v11) = *(v11 + (v1[9] ^ 0x7CLL)) << 16;
  v51 = (((v7 << 24) - 1912602624) ^ 0x7AFFFFFF) & (v17 & 0x2018027 ^ 0x63487B35 ^ ((*(v8 + (v1[2] ^ 0x87)) << 8) ^ 0xFDFE7DD8) & (v17 ^ 0xC5036F0B)) ^ ((v7 << 24) - 1912602624) & 0x63000000;
  v19 = ((((v15 << 16) ^ 0xE2202DCF) & ~(v18 << 24) | (v18 << 24) & 0x1D000000) ^ 0x8035B6EF) & (((v10 & 6 ^ 0xFFFFFFFD) & ((v9 << 8) ^ 0x1C555D06) | v10 & 0xF9) ^ 0xE3AAB3DB) ^ ((v10 & 6 ^ 0xFFFFFFFD) & ((v9 << 8) ^ 0x1C555D06) & 0x1C4164DF | v10 & 0xD9);
  v50 = (v11 ^ 0xFF30FFFF) & (v16 & 0xA ^ 0x5F05805E ^ ((((*(v8 + (v1[10] ^ 0x48)) << ((v2 ^ 0x92) + 22)) ^ 0xC8C1CC7A) & ~v14 | v14 & 0x37000000) ^ 0x41EC618F) & (v16 ^ 0xFFFDFFA7)) ^ v11 & 0xD70000;
  v52 = (v5[v1[7] ^ 0x2FLL] ^ v1[7]) & 0xC0 | (v12 & 0x2A0000 ^ 0xF4767E02 ^ v13) & ~(v5[v1[7] ^ 0x2FLL] ^ v1[7]);
  v20 = *(&off_100085FF0 + (v2 ^ 0x7D41)) - 4;
  v21 = *(&off_100085FF0 + (v2 ^ 0x7D0C)) - 12;
  v22 = -219980569 * *&v21[4 * (v18 ^ 0xB4)];
  v23 = *(&off_100085FF0 + (v2 ^ 0x7DD5)) - 8;
  v24 = *(&off_100085FF0 + (v2 ^ 0x7D20)) - 8;
  LODWORD(v5) = v51 ^ __ROR4__(*&v20[4 * (v15 ^ 0xA1)], 27) ^ (690312999 * *&v23[4 * (v10 ^ 0x78)]) ^ v22 ^ (-36060539 * *&v24[4 * (v9 ^ 0xC9)]) ^ 0xB32AEFEC;
  v25 = v5 ^ v52 ^ 0x8090F50C;
  *(v3 - 128) = v25;
  v26 = v50 ^ 0x7B71D3F6 ^ v25;
  LODWORD(v9) = (690312999 * *&v23[4 * ((v26 ^ v19) ^ 0xFF)]) ^ __ROR4__(*&v20[4 * (((v26 ^ v19 ^ 0x3E091975) >> 16) ^ 0x74)], 27) ^ (-36060539 * *&v24[4 * (((v26 ^ v19 ^ 0x1975) >> 8) ^ 0x56)]) ^ (-219980569 * *&v21[4 * (((v26 ^ v19) >> 24) ^ 0x28)]) ^ 0xC63E4533;
  LODWORD(v15) = v26 ^ v19 ^ 0x5B7BE197;
  *(v3 - 132) = v26;
  v27 = v9 ^ v52 ^ 0x8090F50C ^ v26;
  v28 = v9 ^ v52 ^ 0x8090F50C;
  *(v3 - 148) = v27;
  v29 = v27 ^ 0x9D0DBC29;
  v30 = v27 ^ 0x9D0DBC29 ^ v15;
  v31 = BYTE1(v30) ^ 0xAB;
  v32 = BYTE2(v30) ^ 0x86;
  *(v3 - 152) = v30;
  v33 = (-219980569 * *&v21[4 * (HIBYTE(v30) ^ 0x9A)]) ^ (690312999 * *&v23[4 * (v30 ^ 0x65)]);
  *(v3 - 124) = v5;
  v34 = v9 ^ v5;
  LODWORD(v9) = -36060539 * *&v24[4 * v31];
  *(v3 - 156) = v34;
  v35 = v33 ^ v9 ^ v34 ^ __ROR4__(*&v20[4 * v32], 27) ^ 0x4C0B7B2F;
  *(v3 - 164) = v35 ^ v28;
  LODWORD(v9) = v35 ^ v28 ^ 0xE259516B;
  LODWORD(v15) = v9 ^ v15;
  v36 = (-36060539 * *&v24[4 * (BYTE1(v15) ^ 0x82)]) ^ (690312999 * *&v23[4 * (v15 ^ 0x10)]) ^ __ROR4__(*&v20[4 * (BYTE2(v15) ^ 0x96)], 27);
  v37 = -219980569 * *&v21[4 * (BYTE3(v15) ^ 0xFC)];
  *(v3 - 160) = v35;
  LODWORD(v5) = v36 ^ v35 ^ v37 ^ 0xB6BBB66B ^ v9;
  *(v3 - 172) = v5;
  *(v3 - 168) = v9 ^ v29;
  v38 = v5 ^ 0x75154943 ^ v9 ^ v29;
  *(v3 - 176) = v38;
  *(v3 - 180) = v38 ^ 0x896711ED ^ v15;
  v39 = *(&off_100085FF0 + (v2 ^ 0x7D70)) - 12;
  v40 = *(&off_100085FF0 + v4 - 1067);
  v41 = *(&off_100085FF0 + v4 - 1047) - 8;
  LODWORD(v5) = *(v40 + (*(v3 - 101) ^ 0xCCLL));
  v42 = (((v41[*(v3 - 102) ^ 0x4ELL] ^ *(v3 - 102)) << 8) ^ 0xCC068B41) & (v5 ^ 0xCC06FFC8) | v5 & 0xBE;
  v43 = *(&off_100085FF0 + v4 - 990);
  v44 = (v41[*(v3 - 110) ^ 0xDELL] ^ *(v3 - 110)) << 8;
  LODWORD(v5) = (v44 ^ 0xFF2446FF) & ((*(v40 + (*(v3 - 109) ^ 0x30)) | ((-28 - *(v43 + (*(v3 - 112) ^ 0xF4))) << 24)) ^ 0x6824D6C6);
  v45 = v42 ^ 0xF3F2BFA7;
  v46 = (*(v43 + (*(v3 - 104) ^ 9)) << 24) + 452984832;
  v47 = v46 & 0xC0000000 ^ 0x48922F5A ^ (v46 ^ 0x25F6FFFF) & v45;
  v48 = v39[*(v3 - 103) ^ 0x1BLL] << 16;
  return sub_10005E918((v5 ^ 0x96DB0048) & ((v39[*(v3 - 111) ^ 0x39] << 16) ^ 0xFE05C2E8) ^ (v5 & 0x1041417 | v44 & 0x2900) ^ 0x2B98D66E, v48 & 0x99999999 ^ 0x664A0901 ^ v47 & (v48 ^ 0xFF15FFFF));
}

uint64_t sub_10005E918(int a1, int a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, int a16, int a17, int a18, int a19, int a20, int a21, int a22, int a23, int a24, int a25, int a26, int a27, int a28, int a29, int a30, int a31, int a32, int a33, int a34, unsigned int a35, int a36, int a37, int a38, int a39, int a40, int a41, int a42, int a43, int a44, int a45, int a46, int a47, int a48)
{
  v54 = (*(v53 - 120) + v48);
  v55 = *(a15 + (v54[13] ^ 0x90)) << (-107 * (v49 ^ 0xF9) - 87);
  v56 = *(a14 + (v54[11] ^ 9));
  v57 = (((*(a12 + (v54[12] ^ 0x80)) << 24) + 452984832) ^ 0xFE57952B) & (v55 ^ 0xFF3AB73F) | v55 & 0xA80000;
  v58 = (*(a13 + (v54[10] ^ 0xA9)) ^ v54[10]) << 8;
  v59 = *(a14 + (v54[3] ^ 0x75));
  v60 = *(a14 + (v54[15] ^ 8));
  v61 = ((*(a12 + (v54[8] ^ 2)) + 27) ^ 0xE2) << 24;
  v62 = (v61 & 0x5C000000 | ((v58 & 0x3500 | (v58 ^ 0xE8FF08FF) & (((v56 ^ 0xFFFFFFF0) & ((*(a15 + (v54[9] ^ 0xD2)) << 16) ^ 0xE00CB715) | v56 & 0xEA) ^ 0x68E17DA1)) ^ 0x2B3DAD4B) & ~v61) ^ 0xA3A367FD;
  v63 = ((*(a12 + (v54[4] ^ 0xC5)) + 27) ^ 0xFFFFFFFB) << 24;
  v64 = (((((*(a13 + (v54[6] ^ 8)) ^ v54[6]) << 8) ^ 0xD5A8CAB3) & ~v63 | v63 & 0x2A000000) ^ 0xD5A8D3B3 | *(a14 + (v54[7] ^ 0xFDLL))) + ((*(a15 + (v54[5] ^ 0xF5)) ^ 0x51) << 16);
  v65 = (*(a15 + (v54[1] ^ 0x93)) ^ 0x9B) << 16;
  v66 = (v62 - ((2 * v62) & 0x6EDADD2) + 58119913) ^ a2;
  v67 = ((v65 | 0xFDA6D8E6) ^ (((v59 ^ 0xFFFC9812) & ((((*(a12 + (*v54 ^ 0xB0)) + 27) ^ 0x25) << 24) ^ 0xA4FC98B6) | v59 & 0x49) ^ 0x6A5A4059) & ~v65) + ((v54[2] ^ 0x5D ^ *(a13 + (v54[2] ^ 0x1CLL))) << 8);
  v68 = (v64 - ((2 * v64) & 0xD3EFB8BE) + 1777851487) ^ a5;
  v69 = v51 ^ (v60 & 9 | 0x2410A400) ^ 0xD7A5F949 ^ (v57 & 0x87D71000 ^ 0xA511AA72 ^ (((*(a13 + (v54[14] ^ 5)) ^ v54[14]) << 8) ^ 0x78287884) & (v57 ^ 0x31986AF7)) & (v60 ^ 0xFFFFFFFE);
  v70 = (v67 + 133683779 - 2 * (v67 & 0x7F7DA5B ^ (((v59 ^ 0x12) & 0xB6 | v59 & 0x49) ^ 0x59) & 0x18)) ^ a1;
  v71 = a34 ^ (v68 - ((2 * v68) & 0x207366C2) - 1875266719);
  v72 = a33 ^ (v70 - ((2 * v70) & 0x7E1737B6) + 1057725403);
  v73 = a32 ^ (v69 - ((2 * v69) & 0x424AAF86) + 556095427);
  v74 = a31 ^ (v66 - ((2 * v66) & 0x513C10AA) - 1466038187);
  v75 = *(&off_100085FF0 + v49 - 1914) - 12;
  v76 = *(&off_100085FF0 + (v49 ^ 0x7A4)) - 12;
  v77 = *(&off_100085FF0 + v49 - 1974) - 8;
  v78 = *&v77[4 * HIBYTE(v71)] ^ *&v76[4 * BYTE2(v74)];
  v79 = *(&off_100085FF0 + v49 - 1876) - 4;
  v80 = *&v77[4 * HIBYTE(v73)] ^ *&v75[4 * BYTE1(v71)] ^ *&v76[4 * BYTE2(v72)] ^ (*&v79[4 * v74] + v50);
  v81 = *&v76[4 * BYTE2(v71)] ^ (*&v79[4 * v73] + v50) ^ *&v77[4 * HIBYTE(v72)];
  v82 = *&v75[4 * BYTE1(v72)] ^ *&v77[4 * HIBYTE(v74)] ^ *&v76[4 * BYTE2(v73)] ^ (*&v79[4 * v71] + v50);
  v83 = v78 ^ (*&v79[4 * v72] + v50) ^ *&v75[4 * BYTE1(v73)];
  v84 = v81 ^ *&v75[4 * BYTE1(v74)];
  v85 = (v84 - ((2 * v84) & 0x5D3A2A78) + 782046524) ^ *(v53 - 124);
  v86 = (v82 - ((2 * v82) & 0x2C755C10) + 372944392) ^ *(v53 - 132);
  v87 = (v83 - ((2 * v83) & 0x7D494CBA) - 1096505763) ^ *(v53 - 128);
  v88 = v87 ^ 0xBF80DD5E;
  v89 = a30 ^ (v80 - ((2 * v80) & 0x4DBFCF44) - 1495275614);
  v90 = *&v76[4 * ((v85 ^ 0xD7674CCB) >> 16)] ^ *&v77[4 * HIBYTE(v89)];
  v91 = (v85 ^ 0xD7674CCB) >> 24;
  v92 = *&v77[4 * ((v86 ^ 0x16B10DD4u) >> 24)] ^ *&v75[4 * ((v85 ^ 0x4CCB) >> 8)];
  v93 = (*&v79[4 * (v85 ^ 0xDD)] + v50) ^ *&v75[4 * BYTE1(v89)];
  v94 = v92 ^ *&v76[4 * BYTE2(v89)];
  v95 = *&v75[4 * ((v86 ^ 0xDD4) >> 8)];
  v96 = (*&v79[4 * (v87 ^ 0x48)] + v50) ^ v94;
  v97 = v93 ^ *&v77[4 * HIBYTE(v88)] ^ *&v76[4 * ((v86 ^ 0x16B10DD4u) >> 16)];
  v98 = v90 ^ *&v75[4 * BYTE1(v88)] ^ (*&v79[4 * (v86 ^ 0xC2)] + v50);
  v99 = (*&v79[4 * (a30 ^ (v80 - ((2 * v80) & 0x44) - 94))] + v50) ^ v95 ^ *&v77[4 * v91] ^ *&v76[4 * BYTE2(v88)] ^ 0xB9AB301;
  v100 = (v96 - ((2 * v96) & 0x807AB0B4) + 1077762138) ^ *(v53 - 148);
  LODWORD(v101) = __ROR4__(v99, 5) ^ 0x50D2ECF9;
  HIDWORD(v101) = v101;
  v102 = ((v101 >> 27) - ((2 * (v101 >> 27)) & 0xD146A01E) - 391950321) ^ *(v53 - 156);
  v103 = (v98 - ((2 * v98) & 0x7472859C) - 1170652466) ^ *(v53 - 152);
  v104 = a29 ^ (v97 - ((2 * v97) & 0xAC0FECA4) + 1443362386);
  v105 = (*&v79[4 * (v100 ^ 0x37)] + v50) ^ *&v75[4 * BYTE1(v104)];
  v106 = *&v75[4 * ((v100 ^ 0xA37) >> 8)] ^ *&v76[4 * BYTE2(v104)];
  v107 = (v100 ^ 0xD62C0A37) >> 24;
  v108 = *&v76[4 * (BYTE2(v100) ^ 0xB3)] ^ *&v77[4 * HIBYTE(v104)];
  v109 = (v102 ^ 0x6EDAF696u) >> 24;
  v110 = v105 ^ *&v77[4 * ((v103 ^ 0xFC47C039) >> 24)] ^ *&v76[4 * (BYTE2(v102) ^ 0x45)];
  v111 = *&v77[4 * v107] ^ *&v76[4 * ((v103 ^ 0xFC47C039) >> 16)] ^ (*&v79[4 * v104] + v50) ^ *&v75[4 * ((((v101 >> 27) - ((2 * (v101 >> 27)) & 0xA01E) + 20495) ^ *(v53 - 156) ^ 0xF696) >> 8)];
  v112 = v106 ^ (*&v79[4 * (v103 ^ 0x39)] + v50) ^ *&v77[4 * v109];
  v113 = v110 - ((2 * v110) & 0x8350B49E) + 1101552207;
  v114 = (v111 - ((2 * v111) & 0xF7223102) - 74377087) ^ *(v53 - 168);
  v115 = a28 ^ v113;
  v116 = (v112 - ((2 * v112) & 0x49505640) - 1532482784) ^ *(v53 - 160);
  v117 = v108 ^ *&v75[4 * (BYTE1(v103) ^ 0x87)] ^ (*&v79[4 * ((((v101 >> 27) - ((2 * (v101 >> 27)) & 0x1E) + 15) ^ *(v53 - 156)) ^ 0x96)] + v50);
  v118 = (v117 - ((2 * v117) & 0xE55FBAE4) - 223355534) ^ *(v53 - 164);
  v119 = (*&v79[4 * (v118 ^ 0x28)] + v50) ^ *&v77[4 * ((v114 ^ 0x7F82DAAB) >> 24)] ^ *&v75[4 * ((((v112 - ((2 * v112) & 0x5640) + 11040) ^ *(v53 - 160) ^ 0x35DF) >> 8) ^ 0x79)] ^ *&v76[4 * BYTE2(v115)];
  v120 = *&v75[4 * BYTE1(v115)] ^ *&v76[4 * ((v114 ^ 0x7F82DAAB) >> 16)] ^ *&v77[4 * ((v118 ^ 0x7D650C28) >> 24)] ^ (*&v79[4 * (((v112 - ((2 * v112) & 0x40) + 32) ^ *(v53 - 160)) ^ 0xDD)] + v50);
  v121 = *&v77[4 * HIBYTE(v115)];
  v122 = *&v77[4 * (HIBYTE(v116) ^ 0xBD)] ^ (*&v79[4 * v115] + v50) ^ *&v76[4 * ((v118 ^ 0x7D650C28) >> 16)];
  v123 = *&v76[4 * (((v116 ^ 0x13FC35DF) >> 16) ^ 0x9B)] ^ *&v75[4 * (BYTE1(v118) ^ 0x4B)] ^ v121 ^ (*&v79[4 * (v114 ^ 0xBD)] + v50);
  v124 = (v120 - ((2 * v120) & 0xEAC8414C) - 177987418) ^ *(v53 - 172);
  v125 = v122 ^ *&v75[4 * ((v114 ^ 0xDAAB) >> 8)];
  v126 = (v119 - ((2 * v119) & 0x4909ADE0) + 612685552) ^ *(v53 - 176);
  BYTE2(v120) = BYTE2(v124) ^ 0x65;
  v127 = (v123 - ((2 * v123) & 0x24DA267E) - 1838345409) ^ *(v53 - 180);
  v128 = v127 ^ 0x59FC0EA1;
  v129 = a27 ^ (v125 - ((2 * v125) & 0x24273A96) + 303275339);
  v130 = HIBYTE(v129);
  v131 = v126 ^ 0xA480DD5E;
  v132 = (*&v79[4 * v129] + v50) ^ *&v75[4 * ((v127 ^ 0xEA1) >> 8)] ^ *&v77[4 * ((v124 ^ 0x66654B3E) >> 24)];
  v133 = *&v75[4 * BYTE1(v129)] ^ *&v76[4 * (BYTE2(v127) ^ 0x63)] ^ (*&v79[4 * (v124 ^ 0x28)] + v50);
  v134 = *&v77[4 * HIBYTE(v128)] ^ *&v75[4 * ((v124 ^ 0x4B3E) >> 8)] ^ 0xCB7D59C5;
  v135 = *&v76[4 * BYTE2(v129)] ^ 0xC0E7EAC4;
  v136 = v135 & v134;
  v137 = v135 + v134;
  v138 = *&v77[4 * ((v126 ^ 0xA480DD5E) >> 24)];
  v139 = (v137 - 2 * v136) ^ (*&v79[4 * (v126 ^ 0x48)] + v50);
  v140 = (*&v79[4 * v128] + v50) ^ *&v76[4 * BYTE2(v120)] ^ *&v77[4 * v130] ^ *&v75[4 * BYTE1(v131)];
  v141 = v132 ^ *&v76[4 * BYTE2(v131)];
  v142 = (v139 - ((2 * v139) & 0x8918459E) + 1150034639) ^ a47;
  v143 = ((v133 ^ v138) - ((2 * (v133 ^ v138)) & 0x6ED4E04A) + 929722405) ^ a45;
  v144 = (v140 + 480764289 + (~(2 * v140) | 0xC6B03CFF)) ^ a48;
  v145 = a26 ^ (v141 - ((2 * v141) & 0x87645FE2) - 1011732495);
  v146 = *&v76[4 * (BYTE2(v144) ^ v52)] ^ (*&v79[4 * (v143 ^ 0x6E)] + v50);
  v147 = HIBYTE(v144) ^ 0x5F;
  v148 = (*&v79[4 * (v144 ^ 0xDD)] + v50) ^ *&v77[4 * HIBYTE(v145)] ^ *&v76[4 * (((v143 ^ 0xD0C9FB6E) >> 16) ^ 0x9F)];
  v149 = *&v76[4 * (BYTE2(v142) ^ 0xEE)] ^ *&v77[4 * ((v143 ^ 0xD0C9FB6E) >> 24)] ^ (*&v79[4 * v145] + v50) ^ *&v75[4 * (BYTE1(v144) ^ 0x4C)];
  v150 = v148 ^ *&v75[4 * (BYTE1(v142) ^ 0xC3)];
  v151 = *&v76[4 * BYTE2(v145)] ^ *&v77[4 * v147] ^ *&v75[4 * (BYTE1(v143) ^ 0xBC)] ^ (*&v79[4 * (v142 ^ 0x7E)] + v50);
  v152 = v146 ^ *&v75[4 * BYTE1(v145)] ^ *&v77[4 * (HIBYTE(v142) ^ 0x30)];
  v153 = (v149 - ((2 * v149) & 0x7992AF92) + 1019828169) ^ a44;
  v154 = (v152 - ((2 * v152) & 0xD01DC69A) + 1745806157) ^ a43;
  v155 = (v151 - ((2 * v151) & 0xF1D118E) - 2020702009) ^ a46;
  v156 = a25 ^ (v150 - ((2 * v150) & 0xB4699172) - 634074951);
  v157 = *&v75[4 * ((v155 ^ 0xDAAB) >> 8)] ^ (*&v79[4 * v156] + v50) ^ *&v76[4 * ((v154 ^ 0xBFC6B6DB) >> 16)] ^ *&v77[4 * (HIBYTE(v153) ^ 0xA6)];
  v158 = *&v75[4 * BYTE1(v156)] ^ *&v77[4 * ((v154 ^ 0xBFC6B6DB) >> 24)] ^ (*&v79[4 * (v153 ^ 0xE)] + v50);
  v159 = *&v75[4 * (BYTE1(v153) ^ 0x2A)];
  v160 = *&v77[4 * HIBYTE(v156)] ^ *&v75[4 * ((v154 ^ 0xB6DB) >> 8)] ^ *&v76[4 * (BYTE2(v153) ^ 0xB3)];
  v161 = v158 ^ *&v76[4 * ((v155 ^ 0x2982DAABu) >> 16)];
  v162 = *&v77[4 * ((v155 ^ 0x2982DAABu) >> 24)] ^ v159 ^ *&v76[4 * BYTE2(v156)] ^ (*&v79[4 * (v154 ^ 0xCD)] + v50);
  v163 = v160 ^ (*&v79[4 * (v155 ^ 0xBD)] + v50);
  v164 = (v161 - ((2 * v161) & 0x2F8A0206) - 1748696829) ^ a42;
  v165 = a24 ^ (v162 - ((2 * v162) & 0x4D025062) + 645998641);
  v166 = a22 ^ (v157 - ((2 * v157) & 0xC39A2CC2) + 1640830561);
  v167 = HIBYTE(v165);
  v168 = a23 ^ (v163 - ((2 * v163) & 0x9A9FAFC6) + 1297078243);
  v169 = (*&v79[4 * v166] + v50) ^ *&v76[4 * BYTE2(v165)] ^ *&v75[4 * BYTE1(v168)] ^ *&v77[4 * ((v164 ^ 0x44E9778Au) >> 24)];
  v170 = *&v77[4 * HIBYTE(v168)] ^ *&v76[4 * BYTE2(v166)] ^ *&v75[4 * (((v161 - ((2 * v161) & 0x206) + 259) ^ a42 ^ 0x778A) >> 8)] ^ (*&v79[4 * v165] + v50);
  v171 = *&v75[4 * BYTE1(v165)] ^ *&v77[4 * HIBYTE(v166)] ^ *&v76[4 * (BYTE2(v164) ^ 0x76)] ^ (*&v79[4 * (v168 ^ 0x16)] + v50);
  v172 = a21 ^ (v171 - ((2 * v171) & 0x6BFFBFA4) + 905961426);
  v173 = *&v77[4 * v167] ^ *&v76[4 * BYTE2(v168)] ^ *&v75[4 * BYTE1(v166)] ^ (*&v79[4 * (v164 ^ 0x8A)] + v50);
  v174 = (v170 + 1547263800 - ((2 * v170) & 0xB872BE70)) ^ a41;
  v175 = (v169 - ((2 * v169) & 0x546290B4) - 1439610790) ^ a40;
  v176 = a20 ^ (v173 - ((2 * v173) & 0x22ED11B6) + 292980955);
  LOBYTE(v170) = (v169 - ((2 * v169) & 0xB4) + 90) ^ a40 ^ 0x58;
  v177 = a16 ^ (v172 + 1547263800 - ((2 * v172) & 0xB872BE70));
  v178 = (v175 ^ 0x4BE2758u) >> 24;
  v179 = *&v75[4 * ((v175 ^ 0x2758) >> 8)] ^ (*&v79[4 * v176] + v50);
  v180 = *&v76[4 * (BYTE2(v175) ^ 0x21)] ^ (*&v79[4 * (v174 ^ 0x49)] + v50);
  v181 = *&v77[4 * HIBYTE(v176)];
  v182 = *&v77[4 * v178];
  v183 = *&v77[4 * HIBYTE(v177)];
  LODWORD(v77) = v179 ^ *&v77[4 * (HIBYTE(v174) ^ 0xEF)] ^ *&v76[4 * BYTE2(v177)];
  v184 = (*&v79[4 * v170] + v50) ^ v181;
  v185 = *&v75[4 * (BYTE1(v174) ^ 0xEB)] ^ v182;
  v186 = *&v75[4 * BYTE1(v177)];
  LODWORD(v79) = *&v79[4 * v177] + v50;
  v187 = BYTE2(v176);
  v188 = v180 ^ *&v75[4 * BYTE1(v176)] ^ v183;
  LODWORD(v75) = v185 ^ *&v76[4 * v187] ^ v79;
  LODWORD(v75) = (v75 - 1368917643 - ((2 * v75) & 0x5CCFF2EA)) ^ a37;
  v189 = v184 ^ *&v76[4 * (BYTE2(v174) ^ 3)] ^ v186;
  v190 = (v188 - ((2 * v188) & 0xAFEB52F4) + 1475717498) ^ a38;
  v191 = (v189 - ((2 * v189) & 0xD5347808) - 358990844) ^ a39;
  v192 = (v77 - ((2 * v77) & 0x12B3DDCC) - 1990594842) ^ a19;
  v193 = *(&off_100085FF0 + (v49 ^ 0x741));
  v194 = *(&off_100085FF0 + (v49 ^ 0x7A9));
  v195 = *(v193 + 4 * (((v77 - ((2 * v77) & 0xCC) - 26) ^ a19) ^ 0xDDu)) - 291191517;
  v196 = *(&off_100085FF0 + v49 - 1957) - 4;
  v197 = *(&off_100085FF0 + (v49 ^ 0x7DC)) - 4;
  v198 = (1909043885 * *&v196[4 * (HIBYTE(v191) ^ 0xDF)]) ^ __ROR4__(*&v197[4 * ((v190 ^ 0xFAB5) >> 8)], 28);
  v199 = (*(v193 + 4 * (v190 ^ 0xB5u)) - 291191517) ^ __ROR4__(*&v197[4 * ((v192 ^ 0xB1DC) >> 8)], 28);
  v191 ^= 0xB0693C07;
  LODWORD(v79) = v198 ^ (*(v193 + 4 * (v75 ^ 0x16u)) - 291191517) ^ *(v194 + 4 * ((v192 ^ 0x8264B1DC) >> 16));
  v200 = (1909043885 * *&v196[4 * (HIBYTE(v192) ^ 0xED)]) ^ *(v194 + 4 * ((v190 ^ 0x422CFAB5) >> 16)) ^ __ROR4__(*&v197[4 * ((v75 ^ 0xF016) >> 8)], 28) ^ (*(v193 + 4 * v191) - 291191517);
  LODWORD(v77) = *(v194 + 4 * (BYTE2(v191) ^ 0xF7u));
  v201 = *(v194 + 4 * ((v75 ^ 0xF6BCF016) >> 16)) ^ v195 ^ (1909043885 * *&v196[4 * (HIBYTE(v190) ^ 0x2D)]) ^ __ROR4__(*&v197[4 * BYTE1(v191)], 28);
  v202 = v199 ^ v77 ^ (1909043885 * *&v196[4 * ((v75 >> 24) ^ 0x99)]);
  LODWORD(v75) = (v79 - ((2 * v79) & 0xEA8509FE) - 180189953) ^ a36;
  LODWORD(v77) = (v200 - ((2 * v200) & 0xC378913C) - 507754338) ^ a18;
  LODWORD(v79) = (v201 - 1181147895 - ((2 * v201) & 0x73323A12)) ^ a17;
  v203 = (v202 - 1181147895 - ((2 * v202) & 0x73323A12)) ^ a17;
  LODWORD(v76) = (v203 - 1368917643 - ((2 * v203) & 0x5CCFF2EA)) ^ a37;
  v204 = *(&off_100085FF0 + v49 - 1937) - 4;
  v54[10] = v204[BYTE1(v79) ^ 0x79] ^ 0x7D;
  v205 = *(&off_100085FF0 + (v49 ^ 0x78F)) - 4;
  v54[13] = v205[BYTE2(v76) ^ 0xF0] ^ 0x63;
  v206 = *(&off_100085FF0 + (v49 ^ 0x7BD)) - 4;
  v54[15] = (v206[((v203 + 117 - ((2 * v203) & 0xEA)) ^ a37) ^ 0x45] - 30) ^ 0x8F;
  v54[6] = v204[(((v200 - ((2 * v200) & 0x913C) + 18590) ^ a18) >> 8) ^ 0x1BLL] ^ 0x81;
  v54[1] = v205[BYTE2(v75) ^ 0x3ELL] ^ 5;
  v207 = *(&off_100085FF0 + (v49 ^ 0x745)) - 12;
  v54[12] = v207[(v76 >> 24) ^ 0x41] ^ 0x1F;
  v54[8] = v207[(v79 >> 24) ^ 0xB6] ^ 0xD9;
  v54[3] = (v206[v75 ^ 0xDFLL] - 30) ^ 0x17;
  v54[14] = v204[BYTE1(v76) ^ 0x5ELL] ^ 0xC0;
  v54[11] = (v206[v79 ^ 0x54] - 30) ^ v52;
  v54[2] = v204[BYTE1(v75) ^ 0x13] ^ 0x8D;
  v54[7] = (v206[((v200 - ((2 * v200) & 0x3C) - 98) ^ a18) ^ 0xDELL] - 30) ^ 0x84;
  v54[5] = v205[BYTE2(v77) ^ 0x7ALL] ^ 0xC2;
  *v54 = v207[(v75 >> 24) ^ 0xB5] ^ 0x39;
  v54[9] = v205[BYTE2(v79) ^ 0x6FLL] ^ 0xB0;
  v54[4] = v207[(v77 >> 24) ^ 0x49] ^ 0x4D;
  v208 = v48 - 174393023 < a35;
  if (a35 < 0xF59AF931 != v48 - 174393023 < 0xF59AF931)
  {
    v208 = a35 < 0xF59AF931;
  }

  return (*(*(v53 - 144) + 8 * ((3849 * v208) ^ v49)))();
}

uint64_t sub_10005FF9C@<X0>(unint64_t a1@<X8>)
{
  v7 = a1 + v5;
  v8 = (v5 - 1) & 0xF;
  v9 = v8 + 1 - v5;
  v10 = v3 + v9;
  v11 = v3 + v8 + 1;
  v12 = v4 + v9;
  v13 = v4 + v8 + 1;
  v14 = v2 - v5 + v8 + 2;
  v15 = v2 + v8 + (((v6 ^ 0x5Du) + 316) ^ 0x687);
  v17 = v11 > a1 && v10 < v7;
  v19 = v13 > a1 && v12 < v7 || v17;
  if (v14 < v7 && v15 > a1)
  {
    v21 = 1;
  }

  else
  {
    v21 = v19;
  }

  return (*(v1 + 8 * (((32 * v21) | (v21 << 6)) ^ v6)))(v5);
}

uint64_t sub_10006002C@<X0>(int a1@<W5>, int a2@<W8>)
{
  v6 = *(v5 + 48 * v2 + 36);
  v8 = v6 == v3 || (v6 + a1) > 0x80000002;
  return (*(v4 + 8 * ((v8 * (((a2 ^ 0x236) - 470) ^ 0x5FA)) ^ a2)))();
}

void sub_1000600BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  *(v18 - 120) = (v17 + 1096) ^ (1785193651 * (((v18 - 144) & 0x9465A38E | ~((v18 - 144) | 0x9465A38E)) ^ 0x7846B051));
  *(v18 - 144) = v14;
  *(v18 - 136) = &a14;
  *(v18 - 128) = v16;
  *(v18 - 112) = v14;
  *(v18 - 104) = v15;
  JUMPOUT(0x10001B27CLL);
}

uint64_t sub_10006016C@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, unsigned int a4, int a5)
{
  v9 = (v6 ^ 0xA2A684B0) & (2 * (v6 & (v8 + 1))) ^ v6 & (v8 + 1);
  v10 = (v6 ^ 0x82EE8CF2) << ((v7 + 106) & 0xBA ^ 0xA3);
  v11 = (v10 ^ 0x6C90B386) & (v6 ^ 0x82EE8CF2) ^ v10 & 0x364859C2;
  v12 = (v11 ^ 0x24401180) & (4 * v9) ^ v9;
  v13 = ((4 * (v11 ^ 0x12484841)) ^ 0xD921670C) & (v11 ^ 0x12484841) ^ (4 * (v11 ^ 0x12484841)) & 0x364859C0;
  v14 = (v13 ^ 0x10004100) & (16 * v12) ^ v12;
  v15 = ((16 * (v13 ^ 0x264818C3)) ^ 0x64859C30) & (v13 ^ 0x264818C3) ^ (16 * (v13 ^ 0x264818C3)) & 0x364859C0;
  v16 = v14 ^ 0x364859C3 ^ (v15 ^ 0x24001800) & (v14 << 8);
  v17 = (v16 << 16) & 0x36480000 ^ v16 ^ ((v16 << 16) ^ 0x59C30000) & (((v15 ^ 0x124841C3) << 8) & 0x36480000 ^ 0x36000000 ^ (((v15 ^ 0x124841C3) << 8) ^ 0x48590000) & (v15 ^ 0x124841C3));
  v18 = 50899313 * (((&a3 | 0x4E7B2B8) - &a3 + (&a3 & 0xFB184D40)) ^ 0x10C82F23);
  a4 = v6 ^ v18 ^ (2 * v17) ^ 0xCA6ECFF1;
  a5 = v18 + v7 + 418;
  a3 = v5;
  v19 = (*(a1 + 8 * (v7 ^ 0x835)))(&a3);
  return sub_100060330(v19);
}

uint64_t sub_100060424(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v8 = a5 - 80;
  if (v7 > -666039073 != v5 + 1319341424 < ((a5 - 1475033070) & 0x57EB37ED ^ 0x27B2F28D))
  {
    v9 = v7 > -666039073;
  }

  else
  {
    v9 = v5 + 1319341424 < v7 - 1481444925 + v8;
  }

  return (*(v6 + 8 * ((1568 * v9) | v8)))();
}

uint64_t sub_10006078C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49)
{
  v51 = (*(v50 + 8 * (v49 + 1178)))(&a49, 0);
  (*(v50 + 8 * (v49 + 1194)))(v51);
  v52 = (*(v50 + 8 * (v49 ^ 0xDD6u)))();
  LODWORD(a37) = a38 + 1;
  return sub_10006086C(v52, v53, v54, v55, v56, v57, v58, v59, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40);
}

uint64_t sub_10006086C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, char a47)
{
  v54 = *(v51 + 4 * (v48 - 1));
  v55 = 1664525 * (((v54 ^ (v54 >> 30) ^ 0xF428859C) + 1367872965) ^ ((v54 ^ (v54 >> 30) ^ 0xB30A761) - 1366280390) ^ ((v54 ^ (v54 >> 30) ^ 0xFF1822FD) + 1522053798)) - 1630690088;
  v56 = (v55 ^ 0xC1C6023B) & (2 * (v55 & 0xE5D690A3)) ^ v55 & 0xE5D690A3;
  v57 = ((2 * (v55 ^ 0x1620279)) ^ 0xC96925B4) & (v55 ^ 0x1620279) ^ (2 * (v55 ^ 0x1620279)) & 0xE4B492DA;
  v58 = v57 ^ 0x2494924A;
  v59 = (v57 ^ 0x80200090) & (4 * v56) ^ v56;
  v60 = ((4 * v58) ^ 0x92D24B68) & v58 ^ (4 * v58) & 0xE4B492D8;
  v61 = (v60 ^ 0x80900240) & (16 * v59) ^ v59;
  v62 = ((16 * (v60 ^ 0x64249092)) ^ 0x4B492DA0) & (v60 ^ 0x64249092) ^ (16 * (v60 ^ 0x64249092)) & 0xE4B492D0;
  v63 = v61 ^ 0xE4B492DA ^ (v62 ^ 0x40000000) & (v61 << 8);
  *(v51 + 4 * v48) = (*(&a47 + v50) ^ 0xEDC3E916) + v50 + ((*(v51 + 4 * v48) - ((2 * *(v51 + 4 * v48)) & 0x801437AE) + 1074404311) ^ v55 ^ (2 * ((v63 << 16) & 0x64B40000 ^ v63 ^ ((v63 << 16) ^ 0x12DA0000) & (((v62 ^ 0xA4B4925A) << 8) & 0x64B40000 ^ 0x40240000 ^ (((v62 ^ 0xA4B4925A) << 8) ^ 0x34920000) & (v62 ^ 0xA4B4925A)))) ^ 0x6D95AEC0);
  *(v52 + 1072) = a41 + 623;
  *(v53 - 136) = a41 + 1;
  *(v53 - 152) = a41 ^ (v49 - 1274377870) ^ 0x81;
  *(v52 + 1048) = v48 + 1 + a41;
  *(v53 - 132) = (v49 - 1652122536) ^ a41;
  *(v53 - 128) = v49 - 1274377870 + a41;
  *(v53 - 124) = v49 - 1274377870 - a41 - 99;
  v64 = (*(a42 + 8 * (v47 + v49 + 1791)))(v53 - 152);
  return (*(a42 + 8 * *(v53 - 112)))(v64);
}

uint64_t sub_100060C1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  *(v19 - 136) = (v18 - 282) ^ (210068311 * ((((v19 - 136) | 0xB3D36D3A) - ((v19 - 136) & 0xB3D36D3A)) ^ 0x2105529E));
  *(v19 - 128) = v16;
  *(v19 - 120) = &a15;
  v20 = (*(v15 + 8 * (v18 ^ 0xEB8)))(v19 - 136);
  return (*(v15 + 8 * (((((v17 == 1) ^ (v18 + 74)) & 1) * (v18 - 1591)) ^ v18)))(v20);
}

uint64_t sub_100060CB8(uint64_t a1, uint64_t a2)
{
  *(a1 + 24) = *(a2 + 4);
  *(a1 + 32) = *(a2 + 8);
  return 0;
}

uint64_t sub_100060CD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = v8[396] ^ ((*v8 & 0x7FFFFFFE | v8[623] & 0x80000000) >> 1);
  v8[623] = (v11 + v9 - ((2 * v11) & 0xC7D3EC62)) ^ *(a7 + 4 * ((((v7 - 741354486) & 0x2C302FB9 ^ 0xFFFFFFF1) + ((v7 - 32949287) & 0x1F6C7EA)) & *v8));
  return (*(v10 + 8 * ((708 * (LODWORD(STACK[0x49C]) > 0x26F)) ^ v7)))();
}

uint64_t sub_100060E28(unint64_t a1)
{
  STACK[0x520] = v2 - 64;
  v5 = *(v4 + 8 * (((((v1 - 1562) | 0x2A2) - 617) * (v3 <= a1)) ^ v1));
  STACK[0x428] = a1;
  return v5();
}

uint64_t sub_100060EAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unsigned int a10, uint64_t a11, uint64_t *a12, int a13, unsigned int a14)
{
  v17 = v14 ^ 0x52A;
  v18 = 1037613739 * ((2 * (&a10 & 0x549237D8) - &a10 + 728614945) ^ 0xFA6FE55E);
  a10 = v18 + 788688106;
  a11 = v15;
  a12 = &a9;
  a13 = (v17 + 580) ^ v18;
  a14 = 486628554 - v18;
  v19 = (*(v16 + 8 * (v17 ^ 0x9B2)))(&a10);
  return (*(v16 + 8 * ((25 * ((v17 ^ (*(v15 + 24) == v17 + 972359467)) & 1)) ^ v17)))(v19);
}

uint64_t sub_100061000(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unsigned int a10, uint64_t a11, uint64_t *a12, int a13, unsigned int a14)
{
  v18 = 1037613739 * (&a10 ^ 0xD1022D7F);
  a11 = v14;
  a12 = &a9;
  a10 = v18 + 795968246;
  a13 = (v17 + 683) ^ v18;
  a14 = (v16 ^ 0xBF635EF7) - v18 + ((2 * v16) & 0x2E) + 1570635215;
  v19 = (*(v15 + 8 * (v17 + 2265)))(&a10);
  return (*(v15 + 8 * (((*(v14 + 24) != 972359704) | (16 * (*(v14 + 24) != 972359704))) ^ v17)))(v19);
}

void sub_1000610A8()
{
  v3 = v1[623];
  if (v2 - (v0 + 378622759) >= ~(v0 + 378622759))
  {
    ++v3;
  }

  *v1 = v3;
  JUMPOUT(0x100058ABCLL);
}

uint64_t sub_1000610DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, char a18, int a19)
{
  a19 = v19 + 1449660092;
  *(v22 - 112) = (v21 + 168) ^ (1785193651 * ((((v22 - 120) | 0xE978C9BE) - ((v22 - 120) & 0xE978C9BE)) ^ 0xFAA4259E));
  *(v22 - 104) = &a16;
  *(v22 - 120) = a15;
  (*(v20 + 8 * (v21 ^ 0xA73)))(v22 - 120);
  *(v22 - 120) = (v21 + 84) ^ (843532609 * ((((v22 - 120) | 0x75957541) + (~(v22 - 120) | 0x8A6A8ABE)) ^ 0x29D821C5));
  *(v22 - 112) = &a18;
  *(v22 - 104) = a15;
  v23 = (*(v20 + 8 * (v21 ^ 0xBF3)))(v22 - 120);
  return (*(v20 + 8 * (((*(v22 - 116) > 0x23B3030Du) * ((13 * (v21 ^ 0x361) + 688735353) & 0xD6F2B89F ^ 0xDD)) | v21)))(v23);
}

uint64_t sub_100061214@<X0>(int a1@<W8>)
{
  STACK[0x2E8] = v1;
  v4 = a1 - 167;
  v5 = 1388665877 * ((((v3 - 200) ^ 0xC45F8901 | 0x302C4A0E) - ((v3 - 200) ^ 0xC45F8901) + (((v3 - 200) ^ 0xC45F8901) & 0xCFD3B5F1)) ^ 0x79DEA1E3);
  *(v3 - 168) = 0;
  *(v3 - 192) = &STACK[0x358];
  *(v3 - 200) = &STACK[0x418];
  *(v3 - 184) = v5 + v4 + 185;
  *(v3 - 180) = v5 - 1742635053;
  v6 = (*(v2 + 8 * (v4 ^ 0x9E6)))(v3 - 200);
  return (*(v2 + 8 * ((91 * (*(v3 - 176) == ((5 * (v4 ^ 0x9D) - 64) | 0x40) + 972359639)) ^ v4)))(v6);
}

void sub_1000612F8(int a1@<W8>, uint64_t a2, unsigned int a3, uint64_t a4, uint64_t a5, int a6, unsigned int a7)
{
  v8 = 1037613739 * (&a3 ^ 0xD1022D7F);
  a6 = (a1 - 601) ^ v8;
  a7 = 486628550 - v8;
  a3 = v8 + 795968246;
  a5 = 0;
  (*(v7 + 8 * (a1 ^ 0xCD5)))(&a3);
  JUMPOUT(0x1000454ECLL);
}

uint64_t sub_10006135C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W8>)
{
  v9 = (v3 + v4) & v5;
  v10 = a3 + v9 - 1449;
  *(a1 + v10) = *(a2 + v10);
  return (*(v8 + 8 * (((v10 != ((v9 - 1365) ^ v6)) * ((v9 ^ v7) - 34)) ^ (v9 - 222))))();
}

uint64_t sub_1000613B4(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 56);
  *(v2 + 56) = v5 + ((v3 - 972555240) | 0x25202) + 972401727;
  return (*(v4 + 8 * ((1066 * ((v5 - 1991861435) < 0xFFFFFFFA)) ^ (v3 - 1369))))(a1, a2, 0);
}

uint64_t sub_10006141C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16)
{
  *(v18 - 112) = (v16 + 782) ^ (1785193651 * (((v18 - 120) & 0x9A5E7DC | ~((v18 - 120) | 0x9A5E7DC)) ^ 0xE586F403));
  *(v18 - 120) = &a16;
  *(v18 - 104) = a11;
  v19 = (*(v17 + 8 * (v16 ^ 0x9E9)))(v18 - 120);
  return sub_100061488(v19);
}

void sub_1000614C4(int a1@<W2>, int a2@<W8>)
{
  LODWORD(STACK[0x4CC]) = a1;
  LODWORD(STACK[0x514]) = v3;
  LODWORD(STACK[0x47C]) = v6 + 80;
  v7 = STACK[0x578];
  v8 = (((v4 - 845118501) & 0x325F7FBA) + 517665285 + (*(STACK[0x578] + 88) ^ 0xE1250853)) ^ ((*(STACK[0x578] + 88) ^ 0x6BEE4E79) - 1810779769) ^ ((*(STACK[0x578] + 88) ^ 0x8603FF5E) + 2046558370);
  LODWORD(STACK[0x424]) = v2;
  v9 = (((v2 ^ 0x3CA49E9D) - 1017421469) ^ ((v2 ^ 0x5443B500) - 1413723392) ^ ((v2 ^ 0x642F92E9) - 1680839401)) + 1728713027 + v8;
  *(v7 + 88) = v9 ^ ((v9 ^ 0x792DEE20) - 878014587) ^ ((v9 ^ 0xB66560FA) + 81920351) ^ ((v9 ^ 0x6DCFCE6E) - 548884533) ^ ((v9 ^ 0xEFFFDEEF) + 1568194380) ^ 0x41B0272F;
  LODWORD(STACK[0x40C]) = a2;
  LODWORD(STACK[0x48C]) = v5;
  JUMPOUT(0x100061650);
}

uint64_t sub_100061660@<X0>(int a1@<W8>)
{
  v3 = (((a1 ^ 0x125E0A6A) - 308152938) ^ ((a1 ^ 0xFFC1CEBA) + 4075846) ^ ((a1 ^ 0xE1577DA4) + 514359900)) + (((*(v2 + 72) ^ 0x4C9C4D5A) - 1285311834) ^ ((*(v2 + 72) ^ 0x281358D7) - 672356567) ^ ((*(v2 + 72) ^ 0x6847ACF9) - 1749527801)) + 1933638364;
  v4 = (v3 ^ 0x371E7508) & (2 * (v3 & 0xA650780C)) ^ v3 & 0xA650780C;
  v5 = ((2 * (v3 ^ 0x3BBEA508)) ^ 0x3BDDBA08) & (v3 ^ 0x3BBEA508) ^ (2 * (v3 ^ 0x3BBEA508)) & 0x9DEEDD04;
  v6 = v5 ^ 0x84224504;
  v7 = (v5 ^ 0x19C08000) & (4 * v4) ^ v4;
  v8 = ((4 * v6) ^ 0x77BB7410) & v6 ^ (4 * v6) & 0x9DEEDD04;
  v9 = (v8 ^ 0x15AA5400) & (16 * v7) ^ v7;
  v10 = ((16 * (v8 ^ 0x88448904)) ^ 0xDEEDD040) & (v8 ^ 0x88448904) ^ (16 * (v8 ^ 0x88448904)) & 0x9DEEDD00;
  v11 = v9 ^ 0x9DEEDD04 ^ (v10 ^ 0x9CECD000) & (v9 << 8);
  v12 = v3 ^ (2 * ((v11 << 16) & 0x1DEE0000 ^ v11 ^ ((v11 << 16) ^ 0x5D040000) & (((v10 ^ 0x1020D04) << 8) & 0x1DEE0000 ^ 0x11220000 ^ (((v10 ^ 0x1020D04) << 8) ^ 0x6EDD0000) & (v10 ^ 0x1020D04)))) ^ 0xAB4D7B70;
  v13 = (((v1 ^ 0x8E559C94) + 1906991980) ^ ((v1 ^ 0xDEF663D2) + 554277934) ^ ((v1 ^ 0x5C6B4632) - 1550534194)) + (((*(v2 + 76) ^ 0x1462167A) - 341972602) ^ ((*(v2 + 76) ^ 0xFA1348FF) + 99399425) ^ ((*(v2 + 76) ^ 0xE2B9E7F1) + 491132943)) + 1654647815;
  *(v2 + 72) = v12;
  *(v2 + 76) = v13 ^ ((v13 ^ 0x94C6DD15) + 574053366) ^ ((v13 ^ 0x308B268F) - 2038783888) ^ ((v13 ^ 0xEBCFD7E) - 1202881633) ^ ((v13 ^ 0xE3FF7FFB) + 1427044636) ^ 0x45C6C06B;
  v14 = STACK[0x578];
  v15 = (((LODWORD(STACK[0x4CC]) ^ 0xA84C6AB9) + 1471386951) ^ ((LODWORD(STACK[0x4CC]) ^ 0xDF11E286) + 552476026) ^ ((LODWORD(STACK[0x4CC]) ^ 0x7B95314B) - 2073375051)) + 2029123827 + (((*(STACK[0x578] + 80) ^ 0x9808A4E8) + 1744263960) ^ ((*(STACK[0x578] + 80) ^ 0x36B390CC) - 917737676) ^ ((*(STACK[0x578] + 80) ^ 0xA2738D50) + 1569485488));
  v16 = (v15 ^ 0x145E75F4) & (2 * (v15 & 0xA09F79F5)) ^ v15 & 0xA09F79F5;
  v17 = ((2 * (v15 ^ 0x1576555E)) ^ 0x6BD25956) & (v15 ^ 0x1576555E) ^ (2 * (v15 ^ 0x1576555E)) & 0xB5E92CAA;
  v18 = v17 ^ 0x942924A9;
  v19 = (v17 ^ 0xC00800) & (4 * v16) ^ v16;
  v20 = ((4 * v18) ^ 0xD7A4B2AC) & v18 ^ (4 * v18) & 0xB5E92CA8;
  v21 = (v20 ^ 0x95A020A0) & (16 * v19) ^ v19;
  v22 = ((16 * (v20 ^ 0x20490C03)) ^ 0x5E92CAB0) & (v20 ^ 0x20490C03) ^ (16 * (v20 ^ 0x20490C03)) & 0xB5E92CA0;
  v23 = v21 ^ 0xB5E92CAB ^ (v22 ^ 0x14800800) & (v21 << 8);
  v24 = v15 ^ (2 * ((v23 << 16) & 0x35E90000 ^ v23 ^ ((v23 << 16) ^ 0x2CAB0000) & (((v22 ^ 0xA169240B) << 8) & 0x35E90000 ^ 0x14C10000 ^ (((v22 ^ 0xA169240B) << 8) ^ 0x692C0000) & (v22 ^ 0xA169240B))));
  v25 = (((LODWORD(STACK[0x514]) ^ 0x7816D0A) - 125922570) ^ ((LODWORD(STACK[0x514]) ^ 0xB0CFFAB3) + 1328547149) ^ ((LODWORD(STACK[0x514]) ^ 0xBB862ECD) + 1148834099)) + 1144054609 + (((*(STACK[0x578] + 84) ^ 0xE2027CFF) + 503153409) ^ ((*(STACK[0x578] + 84) ^ 0x13E077B) - 20842363) ^ ((*(STACK[0x578] + 84) ^ 0xEFF4C2F0) + 269171984));
  v26 = (v25 ^ 0xD46C2FC6) & (2 * (v25 & 0xD5608F97)) ^ v25 & 0xD5608F97;
  v27 = ((2 * (v25 ^ 0xF62D2DEC)) ^ 0x469B44F6) & (v25 ^ 0xF62D2DEC) ^ (2 * (v25 ^ 0xF62D2DEC)) & 0x234DA27A;
  v28 = v27 ^ 0x2144A209;
  v29 = (v27 ^ 0x2000070) & (4 * v26) ^ v26;
  v30 = ((4 * v28) ^ 0x8D3689EC) & v28 ^ (4 * v28) & 0x234DA278;
  v31 = (v30 ^ 0x1048060) & (16 * v29) ^ v29;
  v32 = ((16 * (v30 ^ 0x22492213)) ^ 0x34DA27B0) & (v30 ^ 0x22492213) ^ (16 * (v30 ^ 0x22492213)) & 0x234DA270;
  v33 = v31 ^ 0x234DA27B ^ (v32 ^ 0x20482200) & (v31 << 8);
  *(v14 + 80) = v24 ^ 0x8ED799D7;
  *(v14 + 84) = v25 ^ (2 * ((v33 << 16) & 0x234D0000 ^ v33 ^ ((v33 << 16) ^ 0x227B0000) & (((v32 ^ 0x305804B) << 8) & 0x234D0000 ^ 0x224D0000 ^ (((v32 ^ 0x305804B) << 8) ^ 0x4DA20000) & (v32 ^ 0x305804B)))) ^ 0xDBA17215;
  STACK[0x520] -= 320;
  return (STACK[0x3A0])();
}

void sub_100061E4C(uint64_t a1)
{
  v1 = *(a1 + 8) + 1388665877 * ((-2 - ((a1 | 0xD3DFA21E) + (~a1 | 0x2C205DE1))) ^ 0xA18D3F0D);
  v2 = *(&off_100085FF0 + (v1 ^ 0x800)) - 8;
  v3 = *a1;
  (*&v2[8 * v1 + 2040])(*(&off_100085FF0 + (v1 ^ 0x847)) - 8, sub_10004AE14);
  __asm { BRAA            X10, X17 }
}

void sub_1000621B8(uint64_t a1)
{
  v2 = *(&off_100085FF0 + ((-109 * ((qword_100089928 + dword_1000898E8) ^ 0x95)) ^ byte_10006EC00[byte_1000798E0[(-109 * ((qword_100089928 + dword_1000898E8) ^ 0x95))] ^ 0x2B]) + 21);
  v3 = *(v2 - 4);
  v4 = *(&off_100085FF0 + (byte_100072050[byte_10006E900[(-109 * ((qword_100089928 - v3) ^ 0x95))] ^ 0x11] ^ (-109 * ((qword_100089928 - v3) ^ 0x95))) - 81);
  v5 = v3 - &v9 + *(v4 - 4);
  v6 = (665663891 * v5) ^ 0xED30A8472429C395;
  v7 = 665663891 * (v5 ^ 0xED30A8472429C395);
  *(v2 - 4) = v6;
  *(v4 - 4) = v7;
  LODWORD(v4) = *(v2 - 4);
  v8 = *(&off_100085FF0 + ((-109 * ((qword_100089928 + dword_1000898E8) ^ 0x95)) ^ byte_10006EB00[byte_1000797E0[(-109 * ((qword_100089928 + dword_1000898E8) ^ 0x95))] ^ 0x16]) - 147) - 8;
  (*&v8[8 * ((-109 * ((v7 - v4) ^ 0x95)) ^ byte_100072050[byte_10006E900[(-109 * ((v7 - v4) ^ 0x95))] ^ 0xE9]) + 17368])(*(&off_100085FF0 + (byte_10006EC04[(byte_1000798E0[(-109 * (v4 ^ 0x95 ^ v7))] ^ 0xE1) - 4] ^ (-109 * (v4 ^ 0x95 ^ v7))) - 91) - 8, sub_10004AE14);
  __asm { BRAA            X10, X17 }
}

uint64_t sub_1000623AC@<X0>(uint64_t a1@<X0>, int a2@<W8>)
{
  v7 = v4 - 1;
  *(a1 + v7) = *(v2 + v7);
  return (*(v6 + 8 * ((67 * (((v5 ^ (a2 + 2405) ^ (v7 == 0)) & 1) == 0)) ^ (v3 + v5 + 1101))))();
}

void sub_10006242C(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  a4 = (v7 + 410) ^ (1785193651 * ((&a3 - 2021369887 - 2 * (&a3 & 0x878457E1)) ^ 0x9458BBC1));
  a3 = a1;
  a5 = v6;
  (*(v5 + 8 * (v7 ^ 0xB65u)))(&a3);
  JUMPOUT(0x10001A5DCLL);
}

uint64_t sub_100062494@<X0>(uint64_t a1@<X8>)
{
  v5 = v3 - 1;
  *(a1 + v5) = *(v1 + v5) + 26 * (v2 ^ 0xC3) + (~(2 * *(v1 + v5)) | 0xB1) + 116;
  return (*(v4 + 8 * (((v5 == 0) | (8 * (v5 == 0))) ^ v2)))();
}

uint64_t sub_1000624E4(uint64_t a1)
{
  v1 = 1082434553 * ((2 * (a1 & 0x82F5123) - a1 + 2010164956) ^ 0xEC975856);
  v2 = *(a1 + 12) + v1;
  v3 = *(a1 + 8) + v1;
  v4 = *(*(a1 + 16) + 4);
  v6 = v4 - 1494181296;
  v5 = v4 - 1494181296 < 0;
  v7 = 1494181296 - v4;
  if (!v5)
  {
    v7 = v6;
  }

  return (*(*(&off_100085FF0 + (v2 ^ 0x894)) + ((((v3 - 657695124) >= (4 * v7)) * ((v2 ^ 0x837) - 58)) ^ v2) - 1))();
}

uint64_t sub_10006262C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  *(v19 - 128) = v17;
  *(v19 - 120) = &a15;
  *(v19 - 136) = (v18 - 734) ^ (((~((v19 - 136) | 0xE929DDCB) + ((v19 - 136) & 0xE929DDCB)) ^ 0x4A9B76B1) * v15);
  v20 = (*(v16 + 8 * (v18 ^ 0xE81)))(v19 - 136);
  return (*(v16 + 8 * (((*(v19 - 132) > ((v18 - 1557244506) & 0x5CD1AC9Bu) + 598932084) * (((v18 - 79) | 0x47) - 1386)) ^ v18)))(v20);
}

uint64_t sub_100062878(double a1)
{
  *(v4 - 1) = a1;
  *v4 = a1;
  return (*(v5 + 8 * (((v3 == 0) * v2) ^ v1)))();
}

uint64_t sub_1000628B4@<X0>(uint64_t a1@<X8>)
{
  v7 = v5 - 1;
  *(v1 + v7) = *(a1 + v7) + (v3 | ~(2 * *(a1 + v7))) - 88;
  return (*(v6 + 8 * (((4 * (v7 != v4)) | (16 * (v7 != v4))) ^ v2)))();
}

uint64_t sub_100062A04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v18 = v13 + 1395;
  v19 = ((((v17 - 144) | 0x241951C7) - (v17 - 144) + ((v17 - 144) & 0xDBE6AE38)) ^ 0xB6CF6E63) * v16;
  *(v17 - 144) = v19 + v14 + 243369210;
  *(v17 - 136) = v13 + 1395 - v19 - 1734;
  *(v17 - 128) = a13;
  v20 = (*(v15 + 8 * (v13 + 1854)))(v17 - 144);
  return (*(v15 + 8 * ((50 * (*(v17 - 140) != 529483433)) ^ v18)))(v20);
}

uint64_t sub_100062AEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, int a19, unsigned int a20, char *a21, unsigned int a22)
{
  v25 = 1564307779 * ((((&a17 | 0xF1E63F96) ^ 0xFFFFFFFE) - (~&a17 | 0xE19C069)) ^ 0x99140C7A);
  a17 = a13;
  a19 = v23 - v25 - 2013066891;
  a20 = 509736436 - v25;
  a21 = &a14;
  a22 = 1908478090 - v25;
  v26 = (*(v24 + 8 * (v23 ^ 0x842u)))(&a17);
  return (*(v24 + 8 * (((a18 == v22) * (((v23 - 689623396) & 0x291AD42F) + ((v23 + 419) | 0x10) - 499)) ^ v23)))(v26);
}

uint64_t sub_100062C0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10)
{
  *(v10 + 31) = (&a10 ^ 0xBA) * (&a10 + 17);
  *(v10 + 30) = (&a10 ^ 0xBB) * (&a10 + 18);
  return (*(v11 + 8 * ((463 * (((((v12 + 163139013) & 0xF646B1FF) + 67) ^ 0x12DLL) != 2)) ^ (v12 + 163139013) & 0xF646B1FF)))();
}

uint64_t sub_100062C80(uint64_t a1, int a2)
{
  *(v6 + ((v5 - 1093) ^ a1) + v2) = *(v4 + ((v5 - 1093) ^ a1) + v2);
  v9 = v7 == a1;
  v10 = a1 + 8;
  v11 = v9;
  return (*(v8 + 8 * ((v11 * a2) ^ v3)))(v10);
}

uint64_t sub_100062D18(int a1, int a2, int a3)
{
  v8 = v5 > a1;
  if (v8 == v3 + a2 < v7 + a3)
  {
    v8 = v3 + a2 < v6;
  }

  return (*(v4 + 8 * ((63 * v8) ^ v7)))();
}

uint64_t sub_100062DB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, int a17)
{
  v20 = 2066391179 * ((~((v19 - 160) | 0x2EEF5A1B) + ((v19 - 160) & 0x2EEF5A1B)) ^ 0x7E3727FC);
  *(v19 - 152) = a2;
  *(v19 - 160) = v17 - v20 + 357;
  *(v19 - 156) = a17 - v20;
  v21 = (*(v18 + 8 * (v17 + 2326)))(v19 - 160);
  v22 = STACK[0x2BC];
  *(&STACK[0x278] + (v22 & 0x3F)) = 39;
  return (*(v18 + 8 * ((((v22 & 0x3Fu) > 0x37) * ((19 * (v17 ^ 0xD)) ^ 0xB5)) ^ v17)))(v21);
}

_BYTE *sub_100063038(_BYTE *result, unsigned int a2, unint64_t a3)
{
  v3 = -result & 7;
  if (v3 > a3)
  {
    LODWORD(v3) = a3;
  }

  if (v3 > 3)
  {
    if (v3 > 5)
    {
      if (v3 != 6)
      {
        if (v3 != 7)
        {
          goto LABEL_20;
        }

        *result++ = a2;
      }

      *result++ = a2;
    }

    else if (v3 == 4)
    {
LABEL_16:
      *result++ = a2;
      goto LABEL_17;
    }

    *result++ = a2;
    goto LABEL_16;
  }

  switch(v3)
  {
    case 1:
LABEL_19:
      *result++ = a2;
      break;
    case 2:
LABEL_18:
      *result++ = a2;
      goto LABEL_19;
    case 3:
LABEL_17:
      *result++ = a2;
      goto LABEL_18;
  }

LABEL_20:
  v4 = a3 - v3;
  if (v4 >= 8)
  {
    v5 = 0x101010101010101 * a2;
    v6 = ((v4 >> 3) + 7) >> 3;
    v7 = (v4 >> 3) & 7;
    if (v7 > 3)
    {
      if (((v4 >> 3) & 7) <= 5)
      {
        if (v7 == 4)
        {
          goto LABEL_36;
        }

        goto LABEL_35;
      }

      if (v7 == 6)
      {
        goto LABEL_34;
      }

      goto LABEL_33;
    }

    if (((v4 >> 3) & 7) > 1)
    {
      if (v7 == 2)
      {
        goto LABEL_38;
      }

      goto LABEL_37;
    }

    if (!v7)
    {
      goto LABEL_32;
    }

    while (1)
    {
      *result = v5;
      result += 8;
      if (!--v6)
      {
        break;
      }

LABEL_32:
      *result = v5;
      result += 8;
LABEL_33:
      *result = v5;
      result += 8;
LABEL_34:
      *result = v5;
      result += 8;
LABEL_35:
      *result = v5;
      result += 8;
LABEL_36:
      *result = v5;
      result += 8;
LABEL_37:
      *result = v5;
      result += 8;
LABEL_38:
      *result = v5;
      result += 8;
    }
  }

  v8 = v4 & 7;
  if (v8 > 3)
  {
    if (v8 > 5)
    {
      if (v8 != 6)
      {
        *result++ = a2;
      }

      *result++ = a2;
    }

    else if (v8 == 4)
    {
      goto LABEL_53;
    }

    *result++ = a2;
LABEL_53:
    *result++ = a2;
LABEL_54:
    *result++ = a2;
LABEL_55:
    *result++ = a2;
    goto LABEL_56;
  }

  if (v8 > 1)
  {
    if (v8 == 2)
    {
      goto LABEL_55;
    }

    goto LABEL_54;
  }

  if (v8)
  {
LABEL_56:
    *result = a2;
  }

  return result;
}

uint64_t DERDecodeItemPartialBufferGetLength(uint64_t result, unint64_t *a2, unint64_t *a3)
{
  v3 = *(result + 8);
  if (v3 < 2)
  {
    return 3;
  }

  v4 = *result;
  if (*result == -1)
  {
    goto LABEL_68;
  }

  v5 = &v4[v3];
  v6 = v4 + 1;
  v7 = v3 - 1;
  v8 = *v4 & 0x1F;
  if ((*v4 & 0x1F) != 0x1F)
  {
    v12 = v4 + 1;
LABEL_20:
    *a2 = v8 | ((*v4 & 0xE0) << 56);
    if (v12 != -1)
    {
      if (v12 >= v5 || v12 < v4)
      {
        goto LABEL_69;
      }

      v14 = v12 + 1;
      v15 = *v12;
      v16 = v7 - 1;
      if ((*v12 & 0x80000000) == 0)
      {
        if (a3 || v16 >= v15)
        {
          if (v16 >= v15)
          {
            v17 = *v12;
          }

          else
          {
            v17 = v7 - 1;
          }

          v10 = v5 >= v14;
          v18 = v5 - v14;
          if (v10 && v4 <= v14 && v17 <= v18)
          {
            a2[1] = v14;
            a2[2] = v17;
            if (!a3)
            {
              return 0;
            }

LABEL_34:
            result = 0;
            *a3 = v15;
            return result;
          }

LABEL_69:
          __break(0x5519u);
LABEL_70:
          __break(0x5515u);
          return result;
        }

        return 3;
      }

      v19 = v15 & 0x7F;
      if ((v15 & 0x7F) > 8)
      {
        return 3;
      }

      if ((v15 & 0x7F) == 0 || v16 < v19)
      {
        return 3;
      }

      if (v14 >= v5 || v14 < v4)
      {
        goto LABEL_69;
      }

      if (!*v14)
      {
        return 3;
      }

      v15 = 0;
      v21 = (v19 - 1);
      v22 = v7 - v21 - 2;
      v23 = &v12[v21 + 2];
      while (v14 != -1)
      {
        if (v14 >= v5)
        {
          goto LABEL_69;
        }

        v10 = v16-- != 0;
        if (!v10)
        {
          goto LABEL_70;
        }

        v24 = *v14++;
        v15 = (v15 << 8) | v24;
        LODWORD(v19) = v19 - 1;
        if (!v19)
        {
          if (a3)
          {
            v25 = 0;
          }

          else
          {
            v25 = v15 > v22;
          }

          v26 = v25;
          result = 3;
          if (v15 < 0x80 || (v26 & 1) != 0)
          {
            return result;
          }

          if (v15 >= v22)
          {
            v27 = v22;
          }

          else
          {
            v27 = v15;
          }

          v10 = v5 >= v23;
          v28 = &v5[-v23];
          if (!v10 || v4 > v23 || v27 > v28)
          {
            goto LABEL_69;
          }

          a2[1] = v23;
          a2[2] = v27;
          if (a3)
          {
            goto LABEL_34;
          }

          return 0;
        }
      }
    }

LABEL_68:
    __break(0x5513u);
    goto LABEL_69;
  }

  v9 = *v6;
  v10 = v9 != 128 && v9 >= 0x1F;
  if (!v10)
  {
    return 3;
  }

  v8 = 0;
  result = 3;
  while (v7 >= 2)
  {
    v11 = v8;
    if (v8 >> 57)
    {
      break;
    }

    if (v6 == -1)
    {
      goto LABEL_68;
    }

    if (v6 >= v5 || v6 < v4)
    {
      goto LABEL_69;
    }

    v12 = (v6 + 1);
    --v7;
    v13 = *v6;
    v8 = *v6++ & 0x7F | (v8 << 7);
    if ((v13 & 0x80) == 0)
    {
      if (v11 >> 54)
      {
        return 3;
      }

      goto LABEL_20;
    }
  }

  return result;
}

uint64_t DERDecodeItemPartialBuffer(uint64_t result, unint64_t *a2, int a3)
{
  v3 = *(result + 8);
  if (v3 < 2)
  {
    return 3;
  }

  v4 = *result;
  if (*result == -1)
  {
    goto LABEL_54;
  }

  v5 = &v4[v3];
  v6 = v4 + 1;
  v7 = v3 - 1;
  v8 = *v4 & 0x1F;
  if ((*v4 & 0x1F) != 0x1F)
  {
    v12 = v4 + 1;
LABEL_20:
    *a2 = v8 | ((*v4 & 0xE0) << 56);
    if (v12 != -1)
    {
      if (v12 >= v5 || v12 < v4)
      {
        goto LABEL_55;
      }

      v14 = v12 + 1;
      v15 = *v12;
      v16 = v7 - 1;
      if ((*v12 & 0x80000000) == 0)
      {
        v17 = v16 < v15 && a3 == 0;
        v18 = (v12 + 1);
        if (v17)
        {
          return 3;
        }

LABEL_28:
        if (v15 > (~v18 & 0x7FFFFFFFFFFFFFFFLL))
        {
          return 7;
        }

        if (v18 <= v18 + v15)
        {
          result = 0;
          a2[1] = v18;
          a2[2] = v15;
          return result;
        }

        goto LABEL_55;
      }

      v19 = v15 & 0x7F;
      if ((v15 & 0x7F) > 8)
      {
        return 3;
      }

      if ((v15 & 0x7F) == 0 || v16 < v19)
      {
        return 3;
      }

      if (v14 >= v5 || v14 < v4)
      {
LABEL_55:
        __break(0x5519u);
LABEL_56:
        __break(0x5515u);
        return result;
      }

      if (!*v14)
      {
        return 3;
      }

      v15 = 0;
      v21 = (v19 - 1);
      v22 = v7 - v21 - 2;
      v18 = &v12[v21 + 2];
      while (v14 != -1)
      {
        if (v14 >= v5)
        {
          goto LABEL_55;
        }

        v10 = v16-- != 0;
        if (!v10)
        {
          goto LABEL_56;
        }

        v23 = *v14++;
        v15 = (v15 << 8) | v23;
        LODWORD(v19) = v19 - 1;
        if (!v19)
        {
          if (v15 <= v22)
          {
            v24 = 1;
          }

          else
          {
            v24 = a3;
          }

          result = 3;
          if (v15 >= 0x80 && (v24 & 1) != 0)
          {
            goto LABEL_28;
          }

          return result;
        }
      }
    }

LABEL_54:
    __break(0x5513u);
    goto LABEL_55;
  }

  v9 = *v6;
  v10 = v9 != 128 && v9 >= 0x1F;
  if (!v10)
  {
    return 3;
  }

  v8 = 0;
  result = 3;
  while (v7 >= 2)
  {
    v11 = v8;
    if (v8 >> 57)
    {
      break;
    }

    if (v6 == -1)
    {
      goto LABEL_54;
    }

    if (v6 >= v5 || v6 < v4)
    {
      goto LABEL_55;
    }

    v12 = (v6 + 1);
    --v7;
    v13 = *v6;
    v8 = *v6++ & 0x7F | (v8 << 7);
    if ((v13 & 0x80) == 0)
    {
      if (v11 >> 54)
      {
        return 3;
      }

      goto LABEL_20;
    }
  }

  return result;
}

uint64_t DERParseBitString(uint64_t result, unint64_t *a2, _BYTE *a3)
{
  *a3 = 0;
  *a2 = 0;
  a2[1] = 0;
  if (!*(result + 8))
  {
    return 3;
  }

  v3 = **result;
  *a3 = v3;
  v4 = *(result + 8);
  if (v4 != 1)
  {
    if (v3 <= 7)
    {
      v5 = v4 - 1;
      if (!v4)
      {
LABEL_20:
        __break(0x5515u);
        goto LABEL_21;
      }

      v6 = *result;
      v7 = *result + v4;
      v8 = (*result + v5);
      if (v8 >= v7 || v8 < v6)
      {
LABEL_19:
        __break(0x5519u);
        goto LABEL_20;
      }

      if (((0xFFu >> (8 - v3)) & *v8) == 0)
      {
        if (v6 == -1)
        {
LABEL_21:
          __break(0x5513u);
          return result;
        }

        v10 = v6 + 1;
        if (v6 + 1 <= v7 && v6 <= v10)
        {
          result = 0;
          *a2 = v10;
          a2[1] = v5;
          return result;
        }

        goto LABEL_19;
      }
    }

    return 3;
  }

  if (v3)
  {
    return 3;
  }

  else
  {
    return 0;
  }
}

uint64_t DERParseBoolean(unsigned __int8 **a1, BOOL *a2)
{
  if (a1[1] != 1)
  {
    return 3;
  }

  v2 = **a1;
  if (v2 != 255 && v2 != 0)
  {
    return 3;
  }

  result = 0;
  *a2 = v2 != 0;
  return result;
}

uint64_t DERParseBooleanWithDefault(unsigned __int8 **a1, BOOL a2, BOOL *a3)
{
  v3 = a1[1];
  if (!v3)
  {
    goto LABEL_9;
  }

  if (v3 == 1)
  {
    v4 = **a1;
    if (v4 == 255 || v4 == 0)
    {
      a2 = v4 != 0;
LABEL_9:
      result = 0;
      *a3 = a2;
      return result;
    }
  }

  return 3;
}

uint64_t DERParseInteger(uint64_t a1, _DWORD *a2)
{
  v4 = 0xAAAAAAAAAAAAAAAALL;
  result = DERParseInteger64(a1, &v4);
  if (!result)
  {
    if (HIDWORD(v4))
    {
      return 7;
    }

    else
    {
      result = 0;
      *a2 = v4;
    }
  }

  return result;
}

uint64_t DERParseInteger64(uint64_t result, unint64_t *a2)
{
  v2 = *(result + 8);
  if (!v2)
  {
    return 3;
  }

  v3 = *result;
  if (**result < 0)
  {
    return 3;
  }

  if (**result)
  {
    if (v2 > 8)
    {
      return 7;
    }

    goto LABEL_7;
  }

  if (v2 != 1)
  {
    if (v3 + 1 >= &v3[v2])
    {
      __break(0x5519u);
      return result;
    }

    if (v3[1] < 0)
    {
      if (v2 > 9)
      {
        return 7;
      }

      goto LABEL_7;
    }

    return 3;
  }

LABEL_7:
  v4 = 0;
  do
  {
    v5 = *v3++;
    v4 = v5 | (v4 << 8);
    --v2;
  }

  while (v2);
  result = 0;
  *a2 = v4;
  return result;
}

uint64_t DERParseIntegerSigned(uint64_t a1, _DWORD *a2)
{
  v4 = 0xAAAAAAAAAAAAAAAALL;
  result = DERParseInteger64Signed(a1, &v4);
  if (!result)
  {
    if (v4 == v4)
    {
      result = 0;
      *a2 = v4;
    }

    else
    {
      return 7;
    }
  }

  return result;
}

uint64_t DERParseInteger64Signed(uint64_t result, uint64_t *a2)
{
  v2 = *(result + 8);
  if (!v2)
  {
    return 3;
  }

  v3 = *result;
  v4 = *result + v2;
  v5 = **result;
  if (**result)
  {
    if (v5 != 255)
    {
      goto LABEL_7;
    }

    if (v2 != 1)
    {
      if ((v3 + 1) < v4)
      {
        if ((v3[1] & 0x80000000) == 0)
        {
LABEL_7:
          if (v2 > 8)
          {
            return 7;
          }

          goto LABEL_10;
        }

        return 3;
      }

LABEL_21:
      __break(0x5519u);
      return result;
    }
  }

  else if (v2 != 1)
  {
    if ((v3 + 1) >= v4)
    {
      goto LABEL_21;
    }

    if ((v3[1] & 0x80000000) == 0)
    {
      return 3;
    }

    if (v2 > 9)
    {
      return 7;
    }
  }

LABEL_10:
  v6 = v5 >> 7;
  do
  {
    v7 = v6;
    v8 = *v3++;
    v6 = v8 | (v6 << 8);
    --v2;
  }

  while (v2);
  if ((v5 & 0x80000000) == 0 && v7 << 8 < 0)
  {
    return 7;
  }

  result = 0;
  *a2 = v6;
  return result;
}

uint64_t DERDecodeSeqInit(uint64_t a1, void *a2, void *a3)
{
  memset(v8, 170, sizeof(v8));
  result = DERDecodeItemPartialBufferGetLength(a1, v8, 0);
  if (!result)
  {
    v6 = v8[0];
    *a2 = v8[0];
    if (v6 >> 1 == 0x1000000000000008)
    {
      if (__CFADD__(v8[1], v8[2]))
      {
        __break(0x5513u);
      }

      else
      {
        v7 = v8[1] + v8[2];
        if (v8[1] <= v8[1] + v8[2])
        {
          result = 0;
          *a3 = v8[1];
          a3[1] = v7;
          return result;
        }
      }

      __break(0x5519u);
    }

    else
    {
      return 2;
    }
  }

  return result;
}

unint64_t *DERDecodeSeqContentInit(unint64_t *result, unint64_t *a2)
{
  v2 = *result;
  v3 = result[1];
  if (__CFADD__(*result, v3))
  {
    __break(0x5513u);
  }

  else
  {
    v4 = v2 + v3;
    if (v2 <= v4)
    {
      *a2 = v2;
      a2[1] = v4;
      return 0;
    }
  }

  __break(0x5519u);
  return result;
}

uint64_t DERDecodeSeqNext(unint64_t *a1, unint64_t *a2)
{
  v10[0] = 0;
  v2 = *a1;
  v3 = a1[1];
  if (*a1 >= v3)
  {
    return 1;
  }

  v10[0] = *a1;
  v10[1] = v3 - v2;
  result = DERDecodeItemPartialBufferGetLength(v10, a2, 0);
  if (!result)
  {
    v8 = a2[1];
    v7 = a2[2];
    if (!__CFADD__(v8, v7))
    {
      v9 = v8 + v7;
      if (v9 <= a1[1] && *a1 <= v9)
      {
        result = 0;
        *a1 = v9;
        return result;
      }

      __break(0x5519u);
    }

    __break(0x5513u);
  }

  return result;
}

uint64_t DERParseSequenceToObject(uint64_t a1, unsigned int a2, uint64_t a3, unint64_t a4, size_t a5, size_t a6)
{
  memset(v12, 170, sizeof(v12));
  result = DERDecodeItemPartialBufferGetLength(a1, v12, 0);
  if (!result)
  {
    if (v12[0] == 0x2000000000000010)
    {
      return DERParseSequenceContentToObject(&v12[1], a2, a3, a4, a5, a6);
    }

    else
    {
      return 2;
    }
  }

  return result;
}

uint64_t DERParseSequenceContentToObject(unint64_t *a1, unsigned int a2, uint64_t a3, unint64_t a4, size_t a5, size_t a6)
{
  v35 = 0;
  if (a6)
  {
    if (a6 > a5)
    {
      goto LABEL_59;
    }

    bzero(a4, a6);
    if (a4 + a6 < a4)
    {
      goto LABEL_59;
    }
  }

  v11 = *a1;
  v12 = a1[1];
  if (__CFADD__(*a1, v12))
  {
    goto LABEL_58;
  }

  v13 = v11 + v12;
  if (v11 > v13)
  {
LABEL_59:
    __break(0x5519u);
  }

  v35 = *a1;
  v36 = v13;
  if (!a2)
  {
LABEL_48:
    if (v11 == v13)
    {
      return 0;
    }

    else
    {
      return 3;
    }
  }

  v14 = 0;
  while (1)
  {
    memset(v34, 170, sizeof(v34));
    v16 = v35;
    v15 = v36;
    result = DERDecodeSeqNext(&v35, v34);
    if (result)
    {
      if (result == 1)
      {
        if (a2 <= v14)
        {
          return 0;
        }

        else
        {
          v29 = (a3 + 24 * v14 + 16);
          v30 = a2 - v14;
          result = 0;
          while (1)
          {
            v31 = *v29;
            v29 += 12;
            if ((v31 & 1) == 0)
            {
              break;
            }

            if (!--v30)
            {
              return result;
            }
          }

          return 5;
        }
      }

      return result;
    }

    if (a2 <= v14)
    {
      return 2;
    }

    while (1)
    {
      if (24 * v14 > ~a3)
      {
        goto LABEL_58;
      }

      v18 = a3 + 24 * v14;
      v19 = *(v18 + 16);
      if ((v19 & 2) != 0 || v34[0] == *(v18 + 8))
      {
        break;
      }

      result = 2;
      if ((v19 & 1) != 0 && a2 > ++v14)
      {
        continue;
      }

      return result;
    }

    if ((v19 & 4) == 0)
    {
      v20 = *v18;
      v21 = *v18 + 16;
      if (v20 > 0xFFFFFFFFFFFFFFEFLL || v21 > a5)
      {
        return 7;
      }

      if (v20 > ~a4)
      {
        goto LABEL_58;
      }

      v23 = (a4 + v20);
      v24 = v23 + 16;
      if (v23 < a4 || v24 > a4 + a5 || v23 >= v24)
      {
        goto LABEL_59;
      }

      *v23 = *&v34[1];
      if ((v19 & 8) != 0)
      {
        break;
      }
    }

LABEL_35:
    if (a2 == ++v14)
    {
      if (!__CFADD__(v34[1], v34[2]))
      {
        v32 = a1[1];
        if (!__CFADD__(*a1, v32))
        {
          v11 = v34[1] + v34[2];
          v13 = *a1 + v32;
          goto LABEL_48;
        }
      }

LABEL_58:
      __break(0x5513u);
      goto LABEL_59;
    }

    if (a2 <= v14)
    {
      v11 = v35;
      v13 = v36;
      goto LABEL_48;
    }
  }

  if (v16 < v34[1])
  {
    v27 = *(v23 + 1);
    v28 = v27 + v34[1] - v16;
    if (__CFADD__(v27, v34[1] - v16))
    {
      __break(0x5500u);
      return result;
    }

    if (v15 < v16 || v28 > v15 - v16)
    {
      goto LABEL_59;
    }

    *v23 = v16;
    *(v23 + 1) = v28;
    goto LABEL_35;
  }

  if (v15 < v16 || *(v23 + 1) > v15 - v16)
  {
    goto LABEL_59;
  }

  *v23 = v16;
  return 3;
}

uint64_t DERParseSequence(uint64_t result, unsigned int a2, uint64_t a3, unint64_t a4, size_t a5)
{
  if ((a4 | 0x7FFFFFFFFFFFFFFFLL) >= a4)
  {
    return DERParseSequenceToObject(result, a2, a3, a4, ~a4 & 0x7FFFFFFFFFFFFFFFLL, a5);
  }

  __break(0x5519u);
  return result;
}

unint64_t *DERParseSequenceContent(unint64_t *result, unsigned int a2, uint64_t a3, unint64_t a4, size_t a5)
{
  if ((a4 | 0x7FFFFFFFFFFFFFFFLL) >= a4)
  {
    return DERParseSequenceContentToObject(result, a2, a3, a4, ~a4 & 0x7FFFFFFFFFFFFFFFLL, a5);
  }

  __break(0x5519u);
  return result;
}

uint64_t DERDecodeSequenceWithBlock(uint64_t a1, uint64_t a2)
{
  memset(v4, 170, sizeof(v4));
  result = DERDecodeItemPartialBufferGetLength(a1, v4, 0);
  if (!result)
  {
    if (v4[0] - 0x2000000000000012 >= 0xFFFFFFFFFFFFFFFELL)
    {
      return DERDecodeSequenceContentWithBlock(&v4[1], a2);
    }

    else
    {
      return 2;
    }
  }

  return result;
}

uint64_t DERDecodeSequenceContentWithBlock(unint64_t *a1, uint64_t a2)
{
  v9[0] = 0;
  v2 = *a1;
  v3 = a1[1];
  if (__CFADD__(*a1, v3))
  {
    __break(0x5513u);
LABEL_13:
    __break(0x5519u);
  }

  v4 = v2 + v3;
  if (v2 > v4)
  {
    goto LABEL_13;
  }

  v9[0] = *a1;
  v9[1] = v4;
  memset(v8, 170, sizeof(v8));
  v7 = 0;
  do
  {
    if (v7)
    {
      return 0;
    }

    LODWORD(result) = DERDecodeSeqNext(v9, v8);
    if (result)
    {
      break;
    }

    LODWORD(result) = (*(a2 + 16))(a2, v8, &v7);
  }

  while (!result);
  if (result <= 1)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

void __init_logging_modules_block_invoke_cold_1(uint8_t *buf, int a2, _DWORD *a3)
{
  *buf = 67109120;
  *a3 = a2;
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Category missing for logging module %d!\n(Check LoggingModuleEntry_t table)", buf, 8u);
}

char *createHexString(uint64_t a1, unint64_t a2, int a3)
{
  if (a1 && a2)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      if (!a3)
      {
        v5 = (2 * a2) | 1;
LABEL_10:
        v7 = malloc_type_malloc(v5, 0x100004077774924uLL);
        if (v7)
        {
          v8 = 0;
          v9 = v7;
          v14 = v7;
          v10 = v7;
          v11 = v5;
          while (a3)
          {
            if (v8 >= a2 - 1)
            {
              v12 = v10;
              v13 = v11;
              goto LABEL_17;
            }

            snprintf(v10, v11, "%02X ");
LABEL_18:
            ++v8;
            v11 -= 3;
            v10 += 3;
            v9 += 2;
            v5 -= 2;
            if (a2 == v8)
            {
              return v14;
            }
          }

          v12 = v9;
          v13 = v5;
LABEL_17:
          snprintf(v12, v13, "%02X");
          goto LABEL_18;
        }

        goto LABEL_21;
      }

      if (is_mul_ok(a2, 3uLL))
      {
        v5 = 3 * a2;
        goto LABEL_10;
      }
    }

    do
    {
LABEL_21:
      result = malloc_type_malloc(0xEuLL, 0x100004077774924uLL);
    }

    while (!result);
    strcpy(result, "<print error>");
    return result;
  }

  result = malloc_type_malloc(7uLL, 0x100004077774924uLL);
  if (result)
  {
    strcpy(result, "(null)");
  }

  return result;
}

const void *systemInfo_copyProductType()
{
  result = MGCopyAnswer();
  if (result)
  {
    v1 = result;
    v2 = CFGetTypeID(result);
    if (v2 == CFStringGetTypeID())
    {
      return v1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

const void *systemInfo_copyProductVersion()
{
  result = MGCopyAnswer();
  if (result)
  {
    v1 = result;
    v2 = CFGetTypeID(result);
    if (v2 == CFStringGetTypeID())
    {
      return v1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void logObjectForModule_cold_1()
{
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void _splitASN1Tokens_cold_4(void *a1)
{
  [a1 length];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
}

void _splitASN1Tokens_cold_6(uint64_t a1)
{
  obfuscatedPointer(a1);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
}

void _splitASN1Tokens_cold_8(uint64_t a1)
{
  obfuscatedPointer(a1);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
}

void _splitASN1Tokens_cold_9(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_12(a1, a2);
  *v3 = 134217984;
  *v2 = v4;
  OUTLINED_FUNCTION_13(&_mh_execute_header, v5, v6, "pItemBegin: %p");
}

void _splitASN1Tokens_cold_10(uint8_t *buf, _DWORD *a2, os_log_t log)
{
  *buf = 67109120;
  *a2 = 0;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "ret: %d", buf, 8u);
}

void _splitASN1Tokens_cold_11(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_12(a1, a2);
  *v3 = 134217984;
  *v2 = v4;
  OUTLINED_FUNCTION_13(&_mh_execute_header, v5, v6, "pItemEnd: %p");
}

void __init_logging_signpost_modules_block_invoke_cold_1(uint8_t *buf, int a2, _DWORD *a3)
{
  *buf = 67109120;
  *a3 = a2;
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Category missing for logging module %d!\n(Check LoggingSignpostModuleEntry_t table)", buf, 8u);
}